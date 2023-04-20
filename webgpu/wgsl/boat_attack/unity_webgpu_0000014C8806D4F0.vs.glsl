#version 440
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shading_language_420pack : require

precise vec4 u_xlat_precise_vec4;
precise ivec4 u_xlat_precise_ivec4;
precise bvec4 u_xlat_precise_bvec4;
precise uvec4 u_xlat_precise_uvec4;
layout(location = 0) out highp vec2 vs_TEXCOORD0;
vec3 u_xlat0;
uvec4 u_xlatu0;
int int_bitfieldInsert(int base, int insert, int offset, int bits) {
    uint mask = ~(uint(0xffffffffu) << uint(bits)) << uint(offset);
    return int((uint(base) & ~mask) | ((uint(insert) << uint(offset)) & mask));
}

void main()
{
    u_xlatu0.x =  uint(int(int_bitfieldInsert(0, gl_VertexIndex, 1 & int(0x1F), 1)));
    u_xlatu0.w = uint(gl_VertexIndex) & 2u;
    u_xlat0.xy = vec2(u_xlatu0.xw);
    gl_Position.xy = u_xlat0.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat0.z = (-u_xlat0.y) + 1.0;
    vs_TEXCOORD0.xy = u_xlat0.xz;
    gl_Position.zw = vec2(1.0, 1.0);
    return;
}

