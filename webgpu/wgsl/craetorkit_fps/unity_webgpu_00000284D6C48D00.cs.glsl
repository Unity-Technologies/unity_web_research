#version 440
#extension GL_EXT_samplerless_texture_functions : require

#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
#if HLSLCC_ENABLE_UNIFORM_BUFFERS
#define UNITY_UNIFORM
#else
#define UNITY_UNIFORM uniform
#endif
#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
#if UNITY_SUPPORTS_UNIFORM_LOCATION
#define UNITY_LOCATION(x) layout(location = x)
#define UNITY_BINDING(x) layout(binding = x, std140)
#else
#define UNITY_LOCATION(x)
#define UNITY_BINDING(x) layout(std140)
#endif
precise vec4 u_xlat_precise_vec4;
precise ivec4 u_xlat_precise_ivec4;
precise bvec4 u_xlat_precise_bvec4;
precise uvec4 u_xlat_precise_uvec4;
layout(set = 1, binding = 0, std140) uniform CB0 {
	vec4 ZBufferParams;
};
layout(set = 0, binding = 0) uniform highp texture2D Depth;
writeonly layout(set = 0, binding = 1, r32f) highp uniform image2D LinearZ_origX0X;
writeonly layout(set = 0, binding = 2, r32f) highp uniform image2D DS2x_origX1X;
writeonly layout(set = 0, binding = 3, r32f) highp uniform image2DArray DS2xAtlas_origX2X;
writeonly layout(set = 0, binding = 4, r32f) highp uniform image2D DS4x_origX3X;
writeonly layout(set = 0, binding = 5, r32f) highp uniform image2DArray DS4xAtlas_origX4X;
shared struct {
	uint value[1];
} TGSM0[256];
layout(local_size_x = 8, local_size_y = 8, local_size_z = 1) in;
int int_bitfieldInsert(int base, int insert, int offset, int bits) {
    uint mask = ~(uint(0xffffffffu) << uint(bits)) << uint(offset);
    return int((uint(base) & ~mask) | ((uint(insert) << uint(offset)) & mask));
}

void main()
{
float u_xlat0;
int u_xlati0;
uvec4 u_xlatu0;
float u_xlat1;
int u_xlati1;
uvec4 u_xlatu1;
uvec4 u_xlatu2;
uvec4 u_xlatu3;
float u_xlat4;
int u_xlati4;
uvec2 u_xlatu4;
bool u_xlatb4;
float u_xlat5;
bool u_xlatb5;
float u_xlat8;
ivec2 u_xlati8;
float u_xlat9;
bool u_xlatb9;
float u_xlat12;
int u_xlati12;
bool u_xlatb12;
    u_xlatu0.xy = gl_WorkGroupID.xy * uvec2(16u, 16u) + gl_LocalInvocationID.xy;
    u_xlati1 = int(gl_LocalInvocationID.y) * 16 + int(gl_LocalInvocationID.x);
    u_xlatu0.z = uint(0u);
    u_xlatu0.w = uint(0u);
    u_xlat8 = texelFetch(Depth, ivec2(u_xlatu0.xy), int(u_xlatu0.w)).x;
    u_xlatb12 = u_xlat8==0.0;
    if(u_xlatb12){
        u_xlat12 = 100000.0;
    } else {
        u_xlat8 = ZBufferParams.x * u_xlat8 + ZBufferParams.y;
        u_xlat12 = float(1.0) / u_xlat8;
    }
    imageStore(LinearZ_origX0X, ivec2(u_xlatu0.xy), vec4(u_xlat12));
    TGSM0[u_xlati1].value[(0 >> 2)] = floatBitsToUint(u_xlat12);
    u_xlati8.xy = ivec2(u_xlati1) + ivec2(8, 136);
    u_xlatu2 = u_xlatu0.xyxy + uvec4(0u, 8u, 8u, 0u);
    u_xlatu3.xy = u_xlatu2.zw;
    u_xlatu3.z = uint(0u);
    u_xlatu3.w = uint(0u);
    u_xlat5 = texelFetch(Depth, ivec2(u_xlatu3.xy), int(u_xlatu3.w)).x;
    u_xlatb9 = u_xlat5==0.0;
    if(u_xlatb9){
        u_xlat9 = 100000.0;
    } else {
        u_xlat5 = ZBufferParams.x * u_xlat5 + ZBufferParams.y;
        u_xlat9 = float(1.0) / u_xlat5;
    }
    imageStore(LinearZ_origX0X, ivec2(u_xlatu3.xy), vec4(u_xlat9));
    TGSM0[u_xlati8.x].value[(0 >> 2)] = floatBitsToUint(u_xlat9);
    u_xlati8.x = u_xlati1 + 128;
    u_xlatu2.z = uint(0u);
    u_xlatu2.w = uint(0u);
    u_xlat1 = texelFetch(Depth, ivec2(u_xlatu2.xy), int(u_xlatu2.w)).x;
    u_xlatb5 = u_xlat1==0.0;
    if(u_xlatb5){
        u_xlat5 = 100000.0;
    } else {
        u_xlat1 = ZBufferParams.x * u_xlat1 + ZBufferParams.y;
        u_xlat5 = float(1.0) / u_xlat1;
    }
    imageStore(LinearZ_origX0X, ivec2(u_xlatu2.xy), vec4(u_xlat5));
    TGSM0[u_xlati8.x].value[(0 >> 2)] = floatBitsToUint(u_xlat5);
    u_xlatu1.xy = u_xlatu0.xy + uvec2(8u, 8u);
    u_xlatu1.z = uint(0u);
    u_xlatu1.w = uint(0u);
    u_xlat0 = texelFetch(Depth, ivec2(u_xlatu1.xy), int(u_xlatu1.w)).x;
    u_xlatb4 = u_xlat0==0.0;
    if(u_xlatb4){
        u_xlat4 = 100000.0;
    } else {
        u_xlat0 = ZBufferParams.x * u_xlat0 + ZBufferParams.y;
        u_xlat4 = float(1.0) / u_xlat0;
    }
    imageStore(LinearZ_origX0X, ivec2(u_xlatu1.xy), vec4(u_xlat4));
    TGSM0[u_xlati8.y].value[(0 >> 2)] = floatBitsToUint(u_xlat4);
    //memoryBarrierShared;
    barrier();
    u_xlati0 = int(gl_LocalInvocationID.x) << (1 & int(0x1F));
    u_xlati0 = int(gl_LocalInvocationID.y) * 32 + u_xlati0;
    u_xlati0 = int(TGSM0[u_xlati0].value[(0 >> 2) + 0]);
    u_xlati4 = int(int_bitfieldInsert(int(gl_GlobalInvocationID.x), int(gl_GlobalInvocationID.y), 2 & int(0x1F), 30));
    u_xlatu1.zw = uvec2(u_xlati4) & uvec2(15u, 15u);
    imageStore(DS2x_origX1X, ivec2(gl_GlobalInvocationID.xy), intBitsToFloat(ivec4(u_xlati0)));
    u_xlatu1.xy = gl_GlobalInvocationID.xy >> (uvec2(2u, 2u) & uint(0x1F));
    imageStore(DS2xAtlas_origX2X, ivec3(u_xlatu1.xyz), intBitsToFloat(ivec4(u_xlati0)));
    u_xlati4 = int(gl_LocalInvocationIndex & 9u);
    if(u_xlati4 == 0) {
        u_xlatu4.xy = gl_GlobalInvocationID.xy >> (uvec2(1u, 1u) & uint(0x1F));
        u_xlati12 = int(int_bitfieldInsert(int(u_xlatu4.x), int(u_xlatu4.y), 2 & int(0x1F), 30));
        u_xlatu1.zw = uvec2(u_xlati12) & uvec2(15u, 15u);
        imageStore(DS4x_origX3X, ivec2(u_xlatu4.xy), intBitsToFloat(ivec4(u_xlati0)));
        u_xlatu1.xy = u_xlatu4.xy >> (uvec2(2u, 2u) & uint(0x1F));
        imageStore(DS4xAtlas_origX4X, ivec3(u_xlatu1.xyz), intBitsToFloat(ivec4(u_xlati0)));
    }
    return;
}

