#version 440
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shading_language_420pack : require

precise vec4 u_xlat_precise_vec4;
precise ivec4 u_xlat_precise_ivec4;
precise bvec4 u_xlat_precise_bvec4;
precise uvec4 u_xlat_precise_uvec4;
layout(location = 0) out highp vec2 vs_TEXCOORD0;
float u_xlat0;
int u_xlati0;
uint u_xlatu0;
vec3 u_xlat1;
uint u_xlatu2;
int u_xlati4;
void main()
{
    u_xlati0 = int(uint(gl_VertexIndex) & 1u);
    u_xlatu2 = uint(gl_VertexIndex) >> (1u & uint(0x1F));
    u_xlati4 = (-u_xlati0) + (-int(u_xlatu2));
    u_xlati0 = u_xlati0 + int(u_xlatu2);
    u_xlat1.x = float(u_xlatu2);
    u_xlatu0 = uint(u_xlati0) & 1u;
    u_xlat0 = float(u_xlatu0);
    u_xlat0 = (-u_xlat0) + 1.0;
    u_xlat1.z = (-u_xlat0) + 1.0;
    vs_TEXCOORD0.xy = u_xlat1.xz;
    u_xlati0 = u_xlati4 + 1;
    u_xlatu0 = uint(u_xlati0) & 1u;
    u_xlat1.y = float(u_xlatu0);
    gl_Position.xy = u_xlat1.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    gl_Position.zw = vec2(1.0, 1.0);
    return;
}

