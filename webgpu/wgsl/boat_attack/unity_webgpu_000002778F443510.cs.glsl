#version 440

precise vec4 u_xlat_precise_vec4;
precise ivec4 u_xlat_precise_ivec4;
precise bvec4 u_xlat_precise_bvec4;
precise uvec4 u_xlat_precise_uvec4;
layout(set = 0, binding = 0, std430) buffer _Output_origX0X {
	uint _Output_origX0X_buf[];
};
ivec2 u_xlati0;
int u_xlati1;
layout(local_size_x = 128, local_size_y = 1, local_size_z = 1) in;
void main()
{
    u_xlati0.x = int(gl_LocalInvocationIndex & 31u);
    u_xlati0.xy = (u_xlati0.x != 0) ? ivec2(1, 0) : ivec2(0, 1);
    u_xlati0.x = int(uint(u_xlati0.y) ^ uint(u_xlati0.x));
    u_xlati1 = int(gl_LocalInvocationIndex) << (2 & int(0x1F));
    _Output_origX0X_buf[(u_xlati1 >> 2)] = uint(u_xlati0.x);
    return;
}

