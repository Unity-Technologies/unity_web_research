#version 440
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shading_language_420pack : require

layout(origin_upper_left) in vec4 gl_FragCoord;
precise vec4 u_xlat_precise_vec4;
precise ivec4 u_xlat_precise_ivec4;
precise bvec4 u_xlat_precise_bvec4;
precise uvec4 u_xlat_precise_uvec4;
layout(location = 0) in highp vec4 vs_TEXCOORD1;
layout(location = 0) out highp vec4 SV_Target0;
vec2 u_xlat0;
void main()
{
    u_xlat0.x = vs_TEXCOORD1.z + 1.0;
    u_xlat0.xy = vs_TEXCOORD1.xy / u_xlat0.xx;
    SV_Target0.xy = u_xlat0.xy * vec2(0.281262308, 0.281262308) + vec2(0.5, 0.5);
    u_xlat0.xy = vs_TEXCOORD1.ww * vec2(1.0, 255.0);
    u_xlat0.xy = fract(u_xlat0.xy);
    SV_Target0.z = (-u_xlat0.y) * 0.00392156886 + u_xlat0.x;
    SV_Target0.w = u_xlat0.y;
    return;
}

