#version 440
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shading_language_420pack : require

precise vec4 u_xlat_precise_vec4;
precise ivec4 u_xlat_precise_ivec4;
precise bvec4 u_xlat_precise_bvec4;
precise uvec4 u_xlat_precise_uvec4;
layout(location = 0) in highp vec3 in_POSITION0;
layout(location = 0) out highp vec2 vs_TEXCOORD0;
highp  vec4 phase0_Output0_1;
layout(location = 1) out highp vec2 vs_TEXCOORD1;
vec4 u_xlat0;
void main()
{
    gl_Position.xy = in_POSITION0.xy;
    gl_Position.zw = vec2(0.0, 1.0);
    u_xlat0 = in_POSITION0.xyxy + vec4(1.0, 1.0, 1.0, 1.0);
    phase0_Output0_1 = u_xlat0 * vec4(0.5, -0.5, 0.5, -0.5) + vec4(0.0, 1.0, 0.0, 1.0);
vs_TEXCOORD0 = phase0_Output0_1.xy;
vs_TEXCOORD1 = phase0_Output0_1.zw;
    return;
}

