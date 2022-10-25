#version 440
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shading_language_420pack : require

layout(origin_upper_left) in vec4 gl_FragCoord;
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
layout(set = 0, binding = 0) uniform mediump texture2D _MainTex;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 1) uniform mediump  sampler sampler_MainTex;
void main()
{
vec3 u_xlat0;
vec3 u_xlat1;
    u_xlat0.xy = vs_TEXCOORD0.xy * vec2(0.5, 1.0);
    u_xlat0.xyz = texture(sampler2D(_MainTex, sampler_MainTex), u_xlat0.xy).xyz;
    u_xlat1.xyz = u_xlat0.xyz * vec3(0.305306017, 0.305306017, 0.305306017) + vec3(0.682171106, 0.682171106, 0.682171106);
    u_xlat1.xyz = u_xlat0.xyz * u_xlat1.xyz + vec3(0.0125228781, 0.0125228781, 0.0125228781);
    SV_Target0.xyz = u_xlat0.xyz * u_xlat1.xyz;
    u_xlat0.xy = vs_TEXCOORD0.xy * vec2(0.5, 1.0) + vec2(0.5, 0.0);
    u_xlat0.x = texture(sampler2D(_MainTex, sampler_MainTex), u_xlat0.xy).y;
    SV_Target0.w = u_xlat0.x;
    return;
}

