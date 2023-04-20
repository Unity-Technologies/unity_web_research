#version 440
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shading_language_420pack : require

precise vec4 u_xlat_precise_vec4;
precise ivec4 u_xlat_precise_ivec4;
precise bvec4 u_xlat_precise_bvec4;
precise uvec4 u_xlat_precise_uvec4;
layout(location = 0) in highp vec4 in_POSITION0;
void main()
{
    gl_Position.xy = in_POSITION0.xy * vec2(2.0, -2.0) + vec2(-1.0, 1.0);
    gl_Position.zw = vec2(1.0, 1.0);
    return;
}

