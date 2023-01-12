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
layout(set = 0, binding = 2) uniform mediump texture2D _ThirdTex;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 3) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 4) uniform mediump  sampler sampler_SecondTex;
layout(set = 0, binding = 5) uniform mediump  sampler sampler_ThirdTex;
void main()
{
vec3 u_xlat0;
float u_xlat1;
float u_xlat2;
vec2 u_xlat4;
    u_xlat0.xy = vs_TEXCOORD0.xy * vec2(0.5, 1.0) + vec2(0.5, 0.0);
    u_xlat0.x = texture(sampler2D(_MainTex, sampler_MainTex), u_xlat0.xy).w;
    u_xlat0.x = u_xlat0.x + -0.0627449974;
    SV_Target0.w = u_xlat0.x * 1.15625;
    u_xlat0.xy = vs_TEXCOORD0.xy * vec2(0.5, 1.0);
    u_xlat4.x = texture(sampler2D(_SecondTex, sampler_SecondTex), u_xlat0.xy).w;
    u_xlat4.xy = u_xlat4.xx * vec2(0.390625, 1.984375);
    u_xlat1 = texture(sampler2D(_MainTex, sampler_MainTex), u_xlat0.xy).w;
    u_xlat0.x = texture(sampler2D(_ThirdTex, sampler_ThirdTex), u_xlat0.xy).w;
    u_xlat2 = u_xlat1 * 1.15625 + (-u_xlat4.x);
    u_xlat0.z = u_xlat1 * 1.15625 + u_xlat4.y;
    u_xlat0.y = (-u_xlat0.x) * 0.8125 + u_xlat2;
    u_xlat0.x = u_xlat0.x * 1.59375;
    u_xlat0.x = u_xlat1 * 1.15625 + u_xlat0.x;
    SV_Target0.xyz = u_xlat0.xyz + vec3(-0.872539997, 0.531369984, -1.06861997);
    return;
}

