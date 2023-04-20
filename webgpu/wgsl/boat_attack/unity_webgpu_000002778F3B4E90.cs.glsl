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
int u_xlati1;
shared struct {
	uint value[1];
} TGSM0[128];
layout(local_size_x = 128, local_size_y = 1, local_size_z = 1) in;
void main()
{
    u_xlati0 = int(gl_GlobalInvocationID.x) << (2 & int(0x1F));
    u_xlat0 = uintBitsToFloat(_Input_buf[(u_xlati0 >> 2) + 0]);
    u_xlati0 = int(floatBitsToUint(u_xlat0) & 31u);
    TGSM0[gl_LocalInvocationIndex].value[(0 >> 2)] = uint(u_xlati0);
    //memoryBarrierShared;
    barrier();
    u_xlati0 = int(gl_LocalInvocationIndex & 96u);
    u_xlati0 = int(TGSM0[u_xlati0].value[(0 >> 2) + 0]);
    u_xlati0 = (u_xlati0 != 0) ? 0 : 1;
    u_xlati1 = int(gl_LocalInvocationIndex) << (2 & int(0x1F));
    _Output_origX0X_buf[(u_xlati1 >> 2)] = uint(u_xlati0);
    return;
}

