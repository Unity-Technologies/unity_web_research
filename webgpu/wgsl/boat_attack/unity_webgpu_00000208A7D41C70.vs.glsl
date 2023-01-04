#version 440
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shading_language_420pack : require

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
layout(set = 1, binding = 3, std140) uniform VGlobals {
	vec4 _MainLightPosition;
	vec4 _MainLightColor;
	mat4x4 unity_MatrixVP;
	vec4 _MainTex_ST;
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
layout(location = 0) in highp vec4 in_POSITION0;
layout(location = 1) in highp vec2 in_TEXCOORD0;
layout(location = 2) in highp vec3 in_NORMAL0;
layout(location = 3) in highp vec4 in_COLOR0;
layout(location = 0) out highp vec2 vs_TEXCOORD0;
highp vec3 vs_TEXCOORD1;
layout(location = 1) out highp vec4 vs_TEXCOORD2;
layout(location = 2) out highp vec4 vs_TEXCOORD3;
layout(location = 3) out highp vec4 vs_TEXCOORD4;
layout(location = 4) out highp vec3 vs_TEXCOORD5;
void main()
{
vec4 u_xlat0;
vec4 u_xlat1;
bvec4 u_xlatb1;
vec3 u_xlat2;
float u_xlat9;
int u_xlati9;
uint u_xlatu9;
    vs_TEXCOORD0.xy = in_TEXCOORD0.xy * _MainTex_ST.xy + _MainTex_ST.zw;
    vs_TEXCOORD1.xyz = vec3(0.0, 0.0, 0.0);
    vs_TEXCOORD2 = in_COLOR0;
    u_xlat0.x = dot(in_NORMAL0.xyz, unity_WorldToObject[0].xyz);
    u_xlat0.y = dot(in_NORMAL0.xyz, unity_WorldToObject[1].xyz);
    u_xlat0.z = dot(in_NORMAL0.xyz, unity_WorldToObject[2].xyz);
    u_xlat9 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat9 = max(u_xlat9, 1.17549435e-37);
    u_xlat9 = inversesqrt(u_xlat9);
    u_xlat0.xyz = vec3(u_xlat9) * u_xlat0.xyz;
    u_xlat9 = dot(u_xlat0.xyz, _MainLightPosition.xyz);
    u_xlat9 = clamp(u_xlat9, 0.0, 1.0);
    vs_TEXCOORD5.xyz = u_xlat0.xyz;
    u_xlat0.xyz = _MainLightColor.xyz * unity_LightData.zzz;
    vs_TEXCOORD3.xyz = vec3(u_xlat9) * u_xlat0.xyz;
    vs_TEXCOORD3.w = 0.0;
    u_xlat0.xyz = in_POSITION0.yyy * unity_ObjectToWorld[1].xyz;
    u_xlat0.xyz = unity_ObjectToWorld[0].xyz * in_POSITION0.xxx + u_xlat0.xyz;
    u_xlat0.xyz = unity_ObjectToWorld[2].xyz * in_POSITION0.zzz + u_xlat0.xyz;
    u_xlat0.xyz = u_xlat0.xyz + unity_ObjectToWorld[3].xyz;
    u_xlat1.xyz = u_xlat0.xyz + (-_CascadeShadowSplitSpheres0.xyz);
    u_xlat1.x = dot(u_xlat1.xyz, u_xlat1.xyz);
    u_xlat2.xyz = u_xlat0.xyz + (-_CascadeShadowSplitSpheres1.xyz);
    u_xlat1.y = dot(u_xlat2.xyz, u_xlat2.xyz);
    u_xlat2.xyz = u_xlat0.xyz + (-_CascadeShadowSplitSpheres2.xyz);
    u_xlat1.z = dot(u_xlat2.xyz, u_xlat2.xyz);
    u_xlat2.xyz = u_xlat0.xyz + (-_CascadeShadowSplitSpheres3.xyz);
    u_xlat1.w = dot(u_xlat2.xyz, u_xlat2.xyz);
    u_xlatb1 = lessThan(u_xlat1, _CascadeShadowSplitSphereRadii);
    u_xlat2.x = (u_xlatb1.x) ? float(-1.0) : float(-0.0);
    u_xlat2.y = (u_xlatb1.y) ? float(-1.0) : float(-0.0);
    u_xlat2.z = (u_xlatb1.z) ? float(-1.0) : float(-0.0);
    u_xlat1.x = u_xlatb1.x ? float(1.0) : 0.0;
    u_xlat1.y = u_xlatb1.y ? float(1.0) : 0.0;
    u_xlat1.z = u_xlatb1.z ? float(1.0) : 0.0;
    u_xlat1.w = u_xlatb1.w ? float(1.0) : 0.0;
;
    u_xlat2.xyz = u_xlat2.xyz + u_xlat1.yzw;
    u_xlat1.yzw = max(u_xlat2.xyz, vec3(0.0, 0.0, 0.0));
    u_xlat9 = dot(u_xlat1, vec4(4.0, 3.0, 2.0, 1.0));
    u_xlat9 = (-u_xlat9) + 4.0;
    u_xlatu9 = uint(u_xlat9);
    u_xlati9 = int(u_xlatu9) << (2 & int(0x1F));
    u_xlat1.xyz = u_xlat0.yyy * _MainLightWorldToShadow[(u_xlati9 + 1) / 4][(u_xlati9 + 1) % 4].xyz;
    u_xlat1.xyz = _MainLightWorldToShadow[u_xlati9 / 4][u_xlati9 % 4].xyz * u_xlat0.xxx + u_xlat1.xyz;
    u_xlat1.xyz = _MainLightWorldToShadow[(u_xlati9 + 2) / 4][(u_xlati9 + 2) % 4].xyz * u_xlat0.zzz + u_xlat1.xyz;
    vs_TEXCOORD4.xyz = u_xlat1.xyz + _MainLightWorldToShadow[(u_xlati9 + 3) / 4][(u_xlati9 + 3) % 4].xyz;
    vs_TEXCOORD4.w = 0.0;
    u_xlat1 = u_xlat0.yyyy * unity_MatrixVP[1];
    u_xlat1 = unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
    u_xlat0 = unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
    gl_Position = u_xlat0 + unity_MatrixVP[3];
    return;
}

