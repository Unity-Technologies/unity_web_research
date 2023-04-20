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
	vec4 unity_FogColor;
};
layout(set = 1, binding = 1, std140) uniform LightShadows {
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
	vec4 _AdditionalShadowOffset0;
	vec4 _AdditionalShadowOffset1;
	vec4 _AdditionalShadowFadeParams;
	vec4 _AdditionalShadowmapSize;
};
layout(set = 0, binding = 0) uniform mediump texture2D unity_Lightmap;
layout(set = 0, binding = 1) uniform mediump texture2D unity_LightmapInd;
layout(set = 0, binding = 2) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 3) uniform mediump texture2D _MainLightShadowmapTexture;
layout(location = 0) in highp  vec2 vs_TEXCOORD0;
layout(location = 1) in highp  vec2 vs_TEXCOORD1;
layout(location = 2) in highp  vec4 vs_TEXCOORD3;
layout(location = 3) in highp  vec4 vs_TEXCOORD5;
layout(location = 4) in highp  vec3 vs_TEXCOORD6;
layout(location = 0) out highp vec4 SV_Target0;
vec4 u_xlat0;
int u_xlati0;
uint u_xlatu0;
bvec4 u_xlatb0;
vec4 u_xlat1;
bool u_xlatb1;
vec3 u_xlat2;
bool u_xlatb2;
vec3 u_xlat3;
float u_xlat4;
float u_xlat6;
bool u_xlatb6;
layout(set = 0, binding = 4) uniform mediump  sampler samplerunity_Lightmap;
layout(set = 0, binding = 5) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 6) uniform mediump  samplerShadow sampler_LinearClampCompare;
void main()
{
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
    u_xlat2.xyz = vs_TEXCOORD6.yyy * _MainLightWorldToShadow[(u_xlati0 + 1) / 4][(u_xlati0 + 1) % 4].xyz;
    u_xlat2.xyz = _MainLightWorldToShadow[u_xlati0 / 4][u_xlati0 % 4].xyz * vs_TEXCOORD6.xxx + u_xlat2.xyz;
    u_xlat2.xyz = _MainLightWorldToShadow[(u_xlati0 + 2) / 4][(u_xlati0 + 2) % 4].xyz * vs_TEXCOORD6.zzz + u_xlat2.xyz;
    u_xlat0.xyz = u_xlat2.xyz + _MainLightWorldToShadow[(u_xlati0 + 3) / 4][(u_xlati0 + 3) % 4].xyz;
    u_xlatb6 = 0.0>=u_xlat0.z;
    u_xlatb1 = u_xlat0.z>=1.0;
    vec3 txVec0 = vec3(u_xlat0.xy,u_xlat0.z);
    u_xlat0.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_LinearClampCompare), txVec0, 0.0);
    u_xlatb2 = u_xlatb6 || u_xlatb1;
    u_xlat4 = (-_MainLightShadowParams.x) + 1.0;
    u_xlat0.x = u_xlat0.x * _MainLightShadowParams.x + u_xlat4;
    u_xlat0.x = (u_xlatb2) ? 1.0 : u_xlat0.x;
    u_xlat1 = texture(sampler2D(unity_LightmapInd, samplerunity_Lightmap), vs_TEXCOORD1.xy, _GlobalMipBias.x);
    u_xlat2.xyz = u_xlat1.xyz + vec3(-0.5, -0.5, -0.5);
    u_xlat1.x = max(u_xlat1.w, 9.99999975e-05);
    u_xlat2.x = dot(vs_TEXCOORD5.xyz, u_xlat2.xyz);
    u_xlat2.x = u_xlat2.x + 0.5;
    u_xlat3.xyz = texture(sampler2D(unity_Lightmap, samplerunity_Lightmap), vs_TEXCOORD1.xy, _GlobalMipBias.x).xyz;
    u_xlat2.xyz = u_xlat2.xxx * u_xlat3.xyz;
    u_xlat2.xyz = u_xlat2.xyz / u_xlat1.xxx;
    u_xlat0.xyz = vs_TEXCOORD3.xyz * u_xlat0.xxx + u_xlat2.xyz;
    u_xlat1 = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD0.xy, _GlobalMipBias.x);
    u_xlat0.xyz = u_xlat1.xyz * u_xlat0.xyz + (-unity_FogColor.xyz);
    SV_Target0.w = u_xlat1.w;
    u_xlat6 = vs_TEXCOORD3.w * (-vs_TEXCOORD3.w);
    u_xlat6 = exp2(u_xlat6);
    SV_Target0.xyz = vec3(u_xlat6) * u_xlat0.xyz + unity_FogColor.xyz;
    return;
}

