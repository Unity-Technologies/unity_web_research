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
layout(set = 0, binding = 1) uniform mediump texture2D _SecondTex;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 2) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 3) uniform mediump  sampler sampler_SecondTex;
void main()
{
vec3 u_xlat0;
    u_xlat0.x = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD0.xy).x;
    u_xlat0.yz = texture(sampler2D(_SecondTex, sampler_SecondTex), vs_TEXCOORD0.xy).xy;
    u_xlat0.xyz = u_xlat0.xyz * vec3(64.0615845, 64.0615845, 64.0615845) + vec3(-0.0625, -0.5, -0.5);
    SV_Target0.x = dot(vec2(1.16439998, 1.79270005), u_xlat0.xz);
    SV_Target0.y = dot(vec3(1.16439998, -0.213300005, -0.532899976), u_xlat0.xyz);
    SV_Target0.z = dot(vec2(1.16439998, 2.11240005), u_xlat0.xy);
    SV_Target0.w = 1.0;
    return;
}

