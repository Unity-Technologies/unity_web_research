#version 440
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shading_language_420pack : require

layout(origin_upper_left) in vec4 gl_FragCoord;
precise vec4 u_xlat_precise_vec4;
precise ivec4 u_xlat_precise_ivec4;
precise bvec4 u_xlat_precise_bvec4;
precise uvec4 u_xlat_precise_uvec4;
layout(location = 0) in highp  float vs_TEXCOORD1;
layout(location = 0) out highp vec4 SV_Target0;
void main()
{
    SV_Target0.xyz = vec3(vs_TEXCOORD1);
    SV_Target0.w = 1.0;
    return;
}

