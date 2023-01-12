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
	vec4 _ProjectionParams;
	vec4 unity_FogColor;
	vec4 unity_FogParams;
	vec4 _Color;
};
layout(set = 0, binding = 0) uniform mediump texture2D _MainTex;
layout(location = 0) in highp vec4 vs_COLOR0;
layout(location = 1) in highp float vs_TEXCOORD0;
layout(location = 2) in highp vec2 vs_TEXCOORD1;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 1) uniform mediump  sampler sampler_MainTex;
void main()
{
float u_xlat0;
vec3 u_xlat1;
    u_xlat0 = vs_TEXCOORD0 / _ProjectionParams.y;
    u_xlat0 = (-u_xlat0) + 1.0;
    u_xlat0 = u_xlat0 * _ProjectionParams.z;
    u_xlat0 = max(u_xlat0, 0.0);
    u_xlat0 = u_xlat0 * unity_FogParams.x;
    u_xlat0 = u_xlat0 * (-u_xlat0);
    u_xlat0 = exp2(u_xlat0);
    u_xlat1.xyz = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD1.xy).xyz;
    u_xlat1.xyz = u_xlat1.xyz * _Color.xyz;
    u_xlat1.xyz = u_xlat1.xyz * vs_COLOR0.xyz + (-unity_FogColor.xyz);
    SV_Target0.xyz = vec3(u_xlat0) * u_xlat1.xyz + unity_FogColor.xyz;
    SV_Target0.w = 1.0;
    return;
}

