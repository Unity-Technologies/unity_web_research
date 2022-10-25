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
layout(set = 0, binding = 0) uniform mediump texture2D _HaloFalloff;
layout(location = 0) in highp vec4 vs_COLOR0;
layout(location = 1) in highp vec2 vs_TEXCOORD0;
layout(location = 2) in highp float vs_TEXCOORD1;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 1) uniform mediump  sampler sampler_HaloFalloff;
void main()
{
float u_xlat0;
vec3 u_xlat1;
float u_xlat2;
    u_xlat0 = vs_TEXCOORD1;
    u_xlat0 = clamp(u_xlat0, 0.0, 1.0);
    u_xlat2 = texture(sampler2D(_HaloFalloff, sampler_HaloFalloff), vs_TEXCOORD0.xy).w;
    u_xlat1.xyz = vec3(u_xlat2) * vs_COLOR0.xyz;
    SV_Target0.w = u_xlat2;
    SV_Target0.xyz = vec3(u_xlat0) * u_xlat1.xyz;
    return;
}

