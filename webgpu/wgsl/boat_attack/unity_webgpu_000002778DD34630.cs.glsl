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
int u_xlati0;
uvec2 u_xlatu0;
bool u_xlatb0;
bvec4 u_xlatb1;
int u_xlati2;
float u_xlat4;
int u_xlati4;
bool u_xlatb4;
int u_xlati6;
shared struct {
	uint value[1];
} TGSM0[128];
layout(local_size_x = 128, local_size_y = 1, local_size_z = 1) in;
void main()
{
    u_xlatu0.xy = uvec2(gl_LocalInvocationIndex, gl_LocalInvocationIndex) & uvec2(31u, 96u);
    u_xlati4 = int(gl_GlobalInvocationID.x) << (2 & int(0x1F));
    u_xlat4 = uintBitsToFloat(_Input_buf[(u_xlati4 >> 2) + 0]);
    u_xlatb4 = floatBitsToInt(u_xlat4)==int(gl_LocalInvocationIndex);
    u_xlati4 = u_xlatb4 ? 1 : int(0);
    TGSM0[gl_LocalInvocationIndex].value[(0 >> 2)] = uint(u_xlati4);
    //memoryBarrierShared;
    barrier();
    u_xlatb1 = lessThan(u_xlatu0.xxxx, uvec4(16u, 8u, 4u, 2u));
    if(u_xlatb1.x){
        u_xlati6 = int(gl_LocalInvocationIndex) + 16;
        u_xlati6 = int(TGSM0[u_xlati6].value[(0 >> 2) + 0]);
        u_xlati4 = int(uint(u_xlati6) & uint(u_xlati4));
        TGSM0[gl_LocalInvocationIndex].value[(0 >> 2)] = uint(u_xlati4);
    }
    //memoryBarrierShared;
    barrier();
    if(u_xlatb1.y){
        u_xlati4 = int(TGSM0[gl_LocalInvocationIndex].value[(0 >> 2) + 0]);
        u_xlati6 = int(gl_LocalInvocationIndex) + 8;
        u_xlati6 = int(TGSM0[u_xlati6].value[(0 >> 2) + 0]);
        u_xlati4 = int(uint(u_xlati6) & uint(u_xlati4));
        TGSM0[gl_LocalInvocationIndex].value[(0 >> 2)] = uint(u_xlati4);
    }
    //memoryBarrierShared;
    barrier();
    if(u_xlatb1.z){
        u_xlati4 = int(TGSM0[gl_LocalInvocationIndex].value[(0 >> 2) + 0]);
        u_xlati6 = int(gl_LocalInvocationIndex) + 4;
        u_xlati6 = int(TGSM0[u_xlati6].value[(0 >> 2) + 0]);
        u_xlati4 = int(uint(u_xlati6) & uint(u_xlati4));
        TGSM0[gl_LocalInvocationIndex].value[(0 >> 2)] = uint(u_xlati4);
    }
    //memoryBarrierShared;
    barrier();
    if(u_xlatb1.w){
        u_xlati4 = int(TGSM0[gl_LocalInvocationIndex].value[(0 >> 2) + 0]);
        u_xlati6 = int(gl_LocalInvocationIndex) + 2;
        u_xlati6 = int(TGSM0[u_xlati6].value[(0 >> 2) + 0]);
        u_xlati4 = int(uint(u_xlati6) & uint(u_xlati4));
        TGSM0[gl_LocalInvocationIndex].value[(0 >> 2)] = uint(u_xlati4);
    }
    //memoryBarrierShared;
    barrier();
    u_xlatb0 = u_xlatu0.x<1u;
    if(u_xlatb0){
        u_xlati0 = int(TGSM0[gl_LocalInvocationIndex].value[(0 >> 2) + 0]);
        u_xlati4 = int(gl_LocalInvocationIndex) + 1;
        u_xlati4 = int(TGSM0[u_xlati4].value[(0 >> 2) + 0]);
        u_xlati0 = int(uint(u_xlati4) & uint(u_xlati0));
        TGSM0[gl_LocalInvocationIndex].value[(0 >> 2)] = uint(u_xlati0);
    }
    //memoryBarrierShared;
    barrier();
    u_xlati0 = int(TGSM0[u_xlatu0.y].value[(0 >> 2) + 0]);
    u_xlati0 = (u_xlati0 != 0) ? 1 : 0;
    u_xlati2 = int(gl_LocalInvocationIndex) << (2 & int(0x1F));
    _Output_origX0X_buf[(u_xlati2 >> 2)] = uint(u_xlati0);
    return;
}

