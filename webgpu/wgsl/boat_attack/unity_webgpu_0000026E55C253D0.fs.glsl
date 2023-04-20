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
layout(location = 0) in highp  vec2 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
vec2 u_xlat0;
float u_xlat1;
float u_xlat2;
layout(set = 0, binding = 3) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 4) uniform mediump  sampler sampler_SecondTex;
layout(set = 0, binding = 5) uniform mediump  sampler sampler_ThirdTex;
void main()
{
    SV_Target0.w = 1.0;
    u_xlat0.x = texture(sampler2D(_SecondTex, sampler_SecondTex), vs_TEXCOORD0.xy).w;
    u_xlat0.xy = u_xlat0.xx * vec2(0.390625, 1.984375);
    u_xlat2 = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD0.xy).w;
    u_xlat0.x = u_xlat2 * 1.15625 + (-u_xlat0.x);
    u_xlat1 = u_xlat2 * 1.15625 + u_xlat0.y;
    SV_Target0.z = u_xlat1 + -1.06861997;
    u_xlat1 = texture(sampler2D(_ThirdTex, sampler_ThirdTex), vs_TEXCOORD0.xy).w;
    u_xlat0.x = (-u_xlat1) * 0.8125 + u_xlat0.x;
    u_xlat1 = u_xlat1 * 1.59375;
    u_xlat0.y = u_xlat2 * 1.15625 + u_xlat1;
    SV_Target0.xy = u_xlat0.yx + vec2(-0.872539997, 0.531369984);
    return;
}

