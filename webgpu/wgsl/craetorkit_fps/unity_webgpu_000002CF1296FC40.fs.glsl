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
	vec4 _Threshold;
	vec4 _Params;
};
layout(set = 0, binding = 0) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 1) uniform mediump texture2D _AutoExposureTex;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 1) in highp vec2 vs_TEXCOORD1;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 2) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 3) uniform mediump  sampler sampler_AutoExposureTex;
void main()
{
vec3 u_xlat0;
vec2 u_xlat1;
float u_xlat5;
float u_xlat6;
    u_xlat0.xyz = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD1.xy).xyz;
    u_xlat0.xyz = min(u_xlat0.xyz, vec3(65504.0, 65504.0, 65504.0));
    u_xlat6 = texture(sampler2D(_AutoExposureTex, sampler_AutoExposureTex), vs_TEXCOORD0.xy).x;
    u_xlat0.xyz = vec3(u_xlat6) * u_xlat0.xyz;
    u_xlat0.xyz = min(u_xlat0.xyz, _Params.xxx);
    u_xlat6 = max(u_xlat0.y, u_xlat0.x);
    u_xlat6 = max(u_xlat0.z, u_xlat6);
    u_xlat1.xy = vec2(u_xlat6) + (-_Threshold.yx);
    u_xlat6 = max(u_xlat6, 9.99999975e-05);
    u_xlat1.x = max(u_xlat1.x, 0.0);
    u_xlat1.x = min(u_xlat1.x, _Threshold.z);
    u_xlat5 = u_xlat1.x * _Threshold.w;
    u_xlat1.x = u_xlat1.x * u_xlat5;
    u_xlat1.x = max(u_xlat1.y, u_xlat1.x);
    u_xlat6 = u_xlat1.x / u_xlat6;
    SV_Target0.xyz = vec3(u_xlat6) * u_xlat0.xyz;
    SV_Target0.w = 1.0;
    return;
}

