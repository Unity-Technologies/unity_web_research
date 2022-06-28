#version 440
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shading_language_420pack : require

layout(origin_upper_left) in vec4 gl_FragCoord;
precise vec4 u_xlat_precise_vec4;
precise ivec4 u_xlat_precise_ivec4;
precise bvec4 u_xlat_precise_bvec4;
precise uvec4 u_xlat_precise_uvec4;
layout(location = 0) in highp float vs_TEXCOORD0;
layout(location = 1) in highp vec3 vs_TEXCOORD1;
layout(location = 2) in highp vec3 vs_TEXCOORD2;
layout(location = 0) out highp vec4 SV_Target0;
float u_xlat0;
vec3 u_xlat1;
void main()
{
    u_xlat0 = vs_TEXCOORD0;
    u_xlat0 = clamp(u_xlat0, 0.0, 1.0);
    u_xlat1.xyz = vs_TEXCOORD1.xyz + (-vs_TEXCOORD2.xyz);
    SV_Target0.xyz = vec3(u_xlat0) * u_xlat1.xyz + vs_TEXCOORD2.xyz;
    SV_Target0.w = 1.0;
    return;
}

