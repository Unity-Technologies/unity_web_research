#version 440

precise vec4 u_xlat_precise_vec4;
precise ivec4 u_xlat_precise_ivec4;
precise bvec4 u_xlat_precise_bvec4;
precise uvec4 u_xlat_precise_uvec4;
layout(set = 0, binding = 0, std430) buffer _Output_origX0X {
	uint _Output_origX0X_buf[];
};
int u_xlati0;
layout(local_size_x = 128, local_size_y = 1, local_size_z = 1) in;
void main()
{
    u_xlati0 = int(gl_LocalInvocationIndex) << (2 & int(0x1F));
    _Output_origX0X_buf[(u_xlati0 >> 2)] = 1u;
    return;
}

