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
layout(set = 1, binding = 1, std140) uniform MainLightShadows {
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
layout(set = 0, binding = 0) uniform mediump texture2D unity_Lightmap;
layout(set = 0, binding = 1) uniform mediump texture2D unity_LightmapInd;
layout(set = 0, binding = 2) uniform mediump texture2D _MainLightShadowmapTexture;
layout(set = 0, binding = 3) uniform mediump texture2D _MainTex;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 1) in highp vec2 vs_TEXCOORD1;
layout(location = 2) in highp vec4 vs_TEXCOORD2;
layout(location = 3) in highp vec4 vs_TEXCOORD3;
layout(location = 4) in highp vec4 vs_TEXCOORD4;
layout(location = 5) in highp vec3 vs_TEXCOORD5;
layout(location = 0) out highp vec4 SV_Target0;
layout(location = 1) out highp vec4 SV_Target1;
layout(location = 2) out highp vec4 SV_Target2;
layout(location = 3) out highp vec4 SV_Target3;
layout(set = 0, binding = 4) uniform mediump  sampler samplerunity_Lightmap;
layout(set = 0, binding = 5) uniform mediump  samplerShadow sampler_MainLightShadowmapTexture;
layout(set = 0, binding = 6) uniform mediump  sampler sampler_MainTex;
void main()
{
vec4 u_xlat0;
vec3 u_xlat1;
bool u_xlatb1;
bool u_xlatb3;
float u_xlat6;
    SV_Target0 = vec4(0.0, 0.0, 0.0, 0.0);
    SV_Target1 = vec4(0.0, 0.0, 0.0, 1.0);
    SV_Target2.xyz = vs_TEXCOORD5.xyz;
    SV_Target2.w = 0.0;
    u_xlat0 = texture(sampler2D(unity_LightmapInd, samplerunity_Lightmap), vs_TEXCOORD1.xy, _GlobalMipBias.x);
    u_xlat0.xyz = u_xlat0.xyz + vec3(-0.5, -0.5, -0.5);
    u_xlat6 = max(u_xlat0.w, 9.99999975e-05);
    u_xlat0.x = dot(vs_TEXCOORD5.xyz, u_xlat0.xyz);
    u_xlat0.x = u_xlat0.x + 0.5;
    u_xlat1.xyz = texture(sampler2D(unity_Lightmap, samplerunity_Lightmap), vs_TEXCOORD1.xy, _GlobalMipBias.x).xyz;
    u_xlat0.xyz = u_xlat0.xxx * u_xlat1.xyz;
    u_xlat0.xyz = u_xlat0.xyz / vec3(u_xlat6);
    vec3 txVec0 = vec3(vs_TEXCOORD4.xy,vs_TEXCOORD4.z);
    u_xlat6 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec0, 0.0);
    u_xlat1.x = (-_MainLightShadowParams.x) + 1.0;
    u_xlat6 = u_xlat6 * _MainLightShadowParams.x + u_xlat1.x;
    u_xlatb1 = 0.0>=vs_TEXCOORD4.z;
    u_xlatb3 = vs_TEXCOORD4.z>=1.0;
    u_xlatb1 = u_xlatb3 || u_xlatb1;
    u_xlat6 = (u_xlatb1) ? 1.0 : u_xlat6;
    u_xlat0.xyz = vs_TEXCOORD3.xyz * vec3(u_xlat6) + u_xlat0.xyz;
    u_xlat1.xyz = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD0.xy, _GlobalMipBias.x).xyz;
    u_xlat1.xyz = u_xlat1.xyz * vs_TEXCOORD2.xyz;
    SV_Target3.xyz = u_xlat0.xyz * u_xlat1.xyz;
    SV_Target3.w = 1.0;
    return;
}

