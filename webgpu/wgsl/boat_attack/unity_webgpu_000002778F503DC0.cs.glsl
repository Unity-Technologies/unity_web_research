#version 440

precise vec4 u_xlat_precise_vec4;
precise ivec4 u_xlat_precise_ivec4;
precise bvec4 u_xlat_precise_bvec4;
precise uvec4 u_xlat_precise_uvec4;
layout(set = 0, binding = 0, std430) readonly buffer _Input {
	uint _Input_buf[];
};
layout(set = 0, binding = 1, std430) buffer _Output_origX0X {
	uint _Output_origX0X_buf[];
};
float u_xlat0;
int u_xlati0;
layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
void main()
{
    u_xlati0 = int(gl_GlobalInvocationID.x) << (2 & int(0x1F));
    u_xlat0 = uintBitsToFloat(_Input_buf[(u_xlati0 >> 2) + 0]);
    u_xlati0 = (floatBitsToInt(u_xlat0) != 0) ? 0 : 1;
    _Output_origX0X_buf[(0 >> 2)] = uint(u_xlati0);
    return;
}

