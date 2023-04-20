#version 440
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shading_language_420pack : require

layout(origin_upper_left) in vec4 gl_FragCoord;
precise vec4 u_xlat_precise_vec4;
precise ivec4 u_xlat_precise_ivec4;
precise bvec4 u_xlat_precise_bvec4;
precise uvec4 u_xlat_precise_uvec4;
layout(location = 0) in highp  vec3 vs_TEXCOORD3;
layout(location = 0) out highp vec4 SV_Target0;
float u_xlat0;
void main()
{
    u_xlat0 = dot(vs_TEXCOORD3.xyz, vs_TEXCOORD3.xyz);
    u_xlat0 = inversesqrt(u_xlat0);
    SV_Target0.xyz = vec3(u_xlat0) * vs_TEXCOORD3.xyz;
    SV_Target0.w = 0.0;
    return;
}

