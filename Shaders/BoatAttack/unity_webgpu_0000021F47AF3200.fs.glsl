#version 440
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shading_language_420pack : require

layout(origin_upper_left) in vec4 gl_FragCoord;
#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
#if HLSLCC_ENABLE_UNIFORM_BUFFERS
#define UNITY_UNIFORM
#else
#define UNITY_UNIFORM uniform
#endif
#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
#if UNITY_SUPPORTS_UNIFORM_LOCATION
#define UNITY_LOCATION(x) layout(location = x)
#define UNITY_BINDING(x) layout(binding = x, std140)
#else
#define UNITY_LOCATION(x)
#define UNITY_BINDING(x) layout(std140)
#endif
precise vec4 u_xlat_precise_vec4;
precise ivec4 u_xlat_precise_ivec4;
precise bvec4 u_xlat_precise_bvec4;
precise uvec4 u_xlat_precise_uvec4;
layout(set = 1, binding = 0, std140) uniform PGlobals {
	vec2 _GlobalMipBias;
};
layout(set = 1, binding = 1, std140) uniform UnityPerDraw {
	mat4x4 unity_ObjectToWorld;
	mat4x4 unity_WorldToObject;
	vec4 unity_LODFade;
	vec4 unity_WorldTransformParams;
	vec4 unity_RenderingLayer;
	vec4 unity_LightData;
	vec4 unity_LightIndices[2];
	vec4 unity_ProbesOcclusion;
	vec4 unity_SpecCube0_HDR;
	vec4 unity_SpecCube1_HDR;
	vec4 unity_SpecCube0_BoxMax;
	vec4 unity_SpecCube0_BoxMin;
	vec4 unity_SpecCube0_ProbePosition;
	vec4 unity_SpecCube1_BoxMax;
	vec4 unity_SpecCube1_BoxMin;
	vec4 unity_SpecCube1_ProbePosition;
	vec4 unity_LightmapST;
	vec4 unity_DynamicLightmapST;
	vec4 unity_SHAr;
	vec4 unity_SHAg;
	vec4 unity_SHAb;
	vec4 unity_SHBr;
	vec4 unity_SHBg;
	vec4 unity_SHBb;
	vec4 unity_SHC;
	vec4 unity_RendererBounds_Min;
	vec4 unity_RendererBounds_Max;
	mat4x4 unity_MatrixPreviousM;
	mat4x4 unity_MatrixPreviousMI;
	vec4 unity_MotionVectorsParams;
	vec4 unity_SpriteColor;
	vec4 unity_SpriteProps;
};
layout(set = 1, binding = 2, std140) uniform MainLightShadows {
	mat4x4 _MainLightWorldToShadow[5];
	vec4 _CascadeShadowSplitSpheres0;
	vec4 _CascadeShadowSplitSpheres1;
	vec4 _CascadeShadowSplitSpheres2;
	vec4 _CascadeShadowSplitSpheres3;
	vec4 _CascadeShadowSplitSphereRadii;
	vec4 _MainLightShadowOffset0;
	vec4 _MainLightShadowOffset1;
	vec4 _MainLightShadowParams;
	vec4 _MainLightShadowmapSize;
};
layout(set = 0, binding = 0) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 1) uniform mediump texture2D _MainLightShadowmapTexture;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 1) in highp vec4 vs_TEXCOORD3;
layout(location = 2) in highp vec4 vs_TEXCOORD5;
layout(location = 3) in highp vec3 vs_TEXCOORD6;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 2) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 3) uniform mediump  samplerShadow sampler_MainLightShadowmapTexture;
void main()
{
vec4 u_xlat0;
int u_xlati0;
uint u_xlatu0;
bvec4 u_xlatb0;
vec4 u_xlat1;
bool u_xlatb1;
vec3 u_xlat2;
vec3 u_xlat3;
bool u_xlatb3;
float u_xlat6;
bool u_xlatb9;
    u_xlat0.xyz = vs_TEXCOORD6.xyz + (-_CascadeShadowSplitSpheres0.xyz);
    u_xlat0.x = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat1.xyz = vs_TEXCOORD6.xyz + (-_CascadeShadowSplitSpheres1.xyz);
    u_xlat0.y = dot(u_xlat1.xyz, u_xlat1.xyz);
    u_xlat1.xyz = vs_TEXCOORD6.xyz + (-_CascadeShadowSplitSpheres2.xyz);
    u_xlat0.z = dot(u_xlat1.xyz, u_xlat1.xyz);
    u_xlat1.xyz = vs_TEXCOORD6.xyz + (-_CascadeShadowSplitSpheres3.xyz);
    u_xlat0.w = dot(u_xlat1.xyz, u_xlat1.xyz);
    u_xlatb0 = lessThan(u_xlat0, _CascadeShadowSplitSphereRadii);
    u_xlat1.x = (u_xlatb0.x) ? float(-1.0) : float(-0.0);
    u_xlat1.y = (u_xlatb0.y) ? float(-1.0) : float(-0.0);
    u_xlat1.z = (u_xlatb0.z) ? float(-1.0) : float(-0.0);
    u_xlat0.x = u_xlatb0.x ? float(1.0) : 0.0;
    u_xlat0.y = u_xlatb0.y ? float(1.0) : 0.0;
    u_xlat0.z = u_xlatb0.z ? float(1.0) : 0.0;
    u_xlat0.w = u_xlatb0.w ? float(1.0) : 0.0;
;
    u_xlat1.xyz = u_xlat1.xyz + u_xlat0.yzw;
    u_xlat0.yzw = max(u_xlat1.xyz, vec3(0.0, 0.0, 0.0));
    u_xlat0.x = dot(u_xlat0, vec4(4.0, 3.0, 2.0, 1.0));
    u_xlat0.x = (-u_xlat0.x) + 4.0;
    u_xlatu0 = uint(u_xlat0.x);
    u_xlati0 = int(u_xlatu0) << (2 & int(0x1F));
    u_xlat3.xyz = vs_TEXCOORD6.yyy * _MainLightWorldToShadow[(u_xlati0 + 1) / 4][(u_xlati0 + 1) % 4].xyz;
    u_xlat3.xyz = _MainLightWorldToShadow[u_xlati0 / 4][u_xlati0 % 4].xyz * vs_TEXCOORD6.xxx + u_xlat3.xyz;
    u_xlat3.xyz = _MainLightWorldToShadow[(u_xlati0 + 2) / 4][(u_xlati0 + 2) % 4].xyz * vs_TEXCOORD6.zzz + u_xlat3.xyz;
    u_xlat0.xyz = u_xlat3.xyz + _MainLightWorldToShadow[(u_xlati0 + 3) / 4][(u_xlati0 + 3) % 4].xyz;
    u_xlatb9 = 0.0>=u_xlat0.z;
    u_xlatb1 = u_xlat0.z>=1.0;
    vec3 txVec0 = vec3(u_xlat0.xy,u_xlat0.z);
    u_xlat0.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec0, 0.0);
    u_xlatb3 = u_xlatb9 || u_xlatb1;
    u_xlat6 = (-_MainLightShadowParams.x) + 1.0;
    u_xlat0.x = u_xlat0.x * _MainLightShadowParams.x + u_xlat6;
    u_xlat0.x = (u_xlatb3) ? 1.0 : u_xlat0.x;
    u_xlat3.x = vs_TEXCOORD5.y * vs_TEXCOORD5.y;
    u_xlat3.x = vs_TEXCOORD5.x * vs_TEXCOORD5.x + (-u_xlat3.x);
    u_xlat1 = vs_TEXCOORD5.yzzx * vs_TEXCOORD5.xyzz;
    u_xlat2.x = dot(unity_SHBr, u_xlat1);
    u_xlat2.y = dot(unity_SHBg, u_xlat1);
    u_xlat2.z = dot(unity_SHBb, u_xlat1);
    u_xlat3.xyz = unity_SHC.xyz * u_xlat3.xxx + u_xlat2.xyz;
    u_xlat1.xyz = vs_TEXCOORD5.xyz;
    u_xlat1.w = 1.0;
    u_xlat2.x = dot(unity_SHAr, u_xlat1);
    u_xlat2.y = dot(unity_SHAg, u_xlat1);
    u_xlat2.z = dot(unity_SHAb, u_xlat1);
    u_xlat3.xyz = u_xlat3.xyz + u_xlat2.xyz;
    u_xlat3.xyz = max(u_xlat3.xyz, vec3(0.0, 0.0, 0.0));
    u_xlat0.xyz = vs_TEXCOORD3.xyz * u_xlat0.xxx + u_xlat3.xyz;
    u_xlat1 = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD0.xy, _GlobalMipBias.x);
    SV_Target0.xyz = u_xlat0.xyz * u_xlat1.xyz;
    SV_Target0.w = u_xlat1.w;
    return;
}

