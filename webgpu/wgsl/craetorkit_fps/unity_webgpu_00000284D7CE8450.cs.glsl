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
writeonly layout(set = 0, binding = 1, rg32f) highp uniform image2D LinearZ_origX0X;
writeonly layout(set = 0, binding = 2, rg32f) highp uniform image2D DS2x_origX1X;
writeonly layout(set = 0, binding = 3, rg32f) highp uniform image2DArray DS2xAtlas_origX2X;
writeonly layout(set = 0, binding = 4, rg32f) highp uniform image2D DS4x_origX3X;
writeonly layout(set = 0, binding = 5, rg32f) highp uniform image2DArray DS4xAtlas_origX4X;
shared struct {
	uint value[2];
} TGSM0[256];
layout(local_size_x = 8, local_size_y = 8, local_size_z = 1) in;
int int_bitfieldInsert(int base, int insert, int offset, int bits) {
    uint mask = ~(uint(0xffffffffu) << uint(bits)) << uint(offset);
    return int((uint(base) & ~mask) | ((uint(insert) << uint(offset)) & mask));
}

void main()
{
vec2 u_xlat0;
ivec2 u_xlati0;
uvec4 u_xlatu0;
bvec2 u_xlatb0;
vec2 u_xlat1;
int u_xlati1;
uvec4 u_xlatu1;
bvec2 u_xlatb1;
uvec4 u_xlatu2;
uvec4 u_xlatu3;
vec2 u_xlat5;
bvec2 u_xlatb5;
vec2 u_xlat8;
ivec2 u_xlati8;
uvec2 u_xlatu8;
bvec2 u_xlatb8;
vec2 u_xlat9;
vec2 u_xlat11;
    u_xlatu0.xy = gl_WorkGroupID.xy * uvec2(16u, 16u) + gl_LocalInvocationID.xy;
    u_xlati1 = int(gl_LocalInvocationID.y) * 16 + int(gl_LocalInvocationID.x);
    u_xlatu0.z = uint(0u);
    u_xlatu0.w = uint(0u);
    u_xlat8.xy = texelFetch(Depth, ivec2(u_xlatu0.xy), int(u_xlatu0.w)).xy;
    u_xlat5.xy = ZBufferParams.xx * u_xlat8.yx + ZBufferParams.yy;
    u_xlat5.xy = vec2(1.0, 1.0) / u_xlat5.xy;
    u_xlatb8.xy = equal(u_xlat8.yxyx, vec4(0.0, 0.0, 0.0, 0.0)).xy;
    if(u_xlatb8.x){
        u_xlat5.x = 100000.0;
    }
    if(u_xlatb8.y){
        u_xlat5.y = 100000.0;
    }
    imageStore(LinearZ_origX0X, ivec2(u_xlatu0.xy), u_xlat5.xyxx);
    TGSM0[u_xlati1].value[(0 >> 2)] = floatBitsToUint(u_xlat5.x);
    TGSM0[u_xlati1].value[(0 >> 2) + 1] = floatBitsToUint(u_xlat5.y);
    u_xlati8.xy = ivec2(u_xlati1) + ivec2(8, 136);
    u_xlatu2 = u_xlatu0.xyxy + uvec4(0u, 8u, 8u, 0u);
    u_xlatu3.xy = u_xlatu2.zw;
    u_xlatu3.z = uint(0u);
    u_xlatu3.w = uint(0u);
    u_xlat5.xy = texelFetch(Depth, ivec2(u_xlatu3.xy), int(u_xlatu3.w)).xy;
    u_xlat11.xy = ZBufferParams.xx * u_xlat5.yx + ZBufferParams.yy;
    u_xlat11.xy = vec2(1.0, 1.0) / u_xlat11.xy;
    u_xlatb5.xy = equal(u_xlat5.yxyy, vec4(0.0, 0.0, 0.0, 0.0)).xy;
    if(u_xlatb5.x){
        u_xlat11.x = 100000.0;
    }
    if(u_xlatb5.y){
        u_xlat11.y = 100000.0;
    }
    imageStore(LinearZ_origX0X, ivec2(u_xlatu3.xy), u_xlat11.xyxx);
    TGSM0[u_xlati8.x].value[(0 >> 2)] = floatBitsToUint(u_xlat11.x);
    TGSM0[u_xlati8.x].value[(0 >> 2) + 1] = floatBitsToUint(u_xlat11.y);
    u_xlati8.x = u_xlati1 + 128;
    u_xlatu2.z = uint(0u);
    u_xlatu2.w = uint(0u);
    u_xlat1.xy = texelFetch(Depth, ivec2(u_xlatu2.xy), int(u_xlatu2.w)).xy;
    u_xlat9.xy = ZBufferParams.xx * u_xlat1.yx + ZBufferParams.yy;
    u_xlat9.xy = vec2(1.0, 1.0) / u_xlat9.xy;
    u_xlatb1.xy = equal(u_xlat1.yxyy, vec4(0.0, 0.0, 0.0, 0.0)).xy;
    if(u_xlatb1.x){
        u_xlat9.x = 100000.0;
    }
    if(u_xlatb1.y){
        u_xlat9.y = 100000.0;
    }
    imageStore(LinearZ_origX0X, ivec2(u_xlatu2.xy), u_xlat9.xyxx);
    TGSM0[u_xlati8.x].value[(0 >> 2)] = floatBitsToUint(u_xlat9.x);
    TGSM0[u_xlati8.x].value[(0 >> 2) + 1] = floatBitsToUint(u_xlat9.y);
    u_xlatu1.xy = u_xlatu0.xy + uvec2(8u, 8u);
    u_xlatu1.z = uint(0u);
    u_xlatu1.w = uint(0u);
    u_xlat0.xy = texelFetch(Depth, ivec2(u_xlatu1.xy), int(u_xlatu1.w)).xy;
    u_xlat9.xy = ZBufferParams.xx * u_xlat0.yx + ZBufferParams.yy;
    u_xlat9.xy = vec2(1.0, 1.0) / u_xlat9.xy;
    u_xlatb0.xy = equal(u_xlat0.yxyy, vec4(0.0, 0.0, 0.0, 0.0)).xy;
    if(u_xlatb0.x){
        u_xlat9.x = 100000.0;
    }
    if(u_xlatb0.y){
        u_xlat9.y = 100000.0;
    }
    imageStore(LinearZ_origX0X, ivec2(u_xlatu1.xy), u_xlat9.xyxx);
    TGSM0[u_xlati8.y].value[(0 >> 2)] = floatBitsToUint(u_xlat9.x);
    TGSM0[u_xlati8.y].value[(0 >> 2) + 1] = floatBitsToUint(u_xlat9.y);
    //memoryBarrierShared;
    barrier();
    u_xlati0.x = int(gl_LocalInvocationID.x) << (1 & int(0x1F));
    u_xlati0.x = int(gl_LocalInvocationID.y) * 32 + u_xlati0.x;
    u_xlati0.xy = ivec2(int(TGSM0[u_xlati0.x].value[(0 >> 2) + 0]), int(TGSM0[u_xlati0.x].value[(0 >> 2) + 1]));
    u_xlati8.x = int(int_bitfieldInsert(int(gl_GlobalInvocationID.x), int(gl_GlobalInvocationID.y), 2 & int(0x1F), 30));
    u_xlatu1.zw = uvec2(u_xlati8.xx) & uvec2(15u, 15u);
    imageStore(DS2x_origX1X, ivec2(gl_GlobalInvocationID.xy), intBitsToFloat(u_xlati0.xyxx));
    u_xlatu1.xy = gl_GlobalInvocationID.xy >> (uvec2(2u, 2u) & uint(0x1F));
    imageStore(DS2xAtlas_origX2X, ivec3(u_xlatu1.xyz), intBitsToFloat(u_xlati0.xyxx));
    u_xlati8.x = int(gl_LocalInvocationIndex & 9u);
    if(u_xlati8.x == 0) {
        u_xlatu8.xy = gl_GlobalInvocationID.xy >> (uvec2(1u, 1u) & uint(0x1F));
        u_xlati1 = int(int_bitfieldInsert(int(u_xlatu8.x), int(u_xlatu8.y), 2 & int(0x1F), 30));
        u_xlatu1.zw = uvec2(u_xlati1) & uvec2(15u, 15u);
        imageStore(DS4x_origX3X, ivec2(u_xlatu8.xy), intBitsToFloat(u_xlati0.xyxx));
        u_xlatu1.xy = u_xlatu8.xy >> (uvec2(2u, 2u) & uint(0x1F));
        imageStore(DS4xAtlas_origX4X, ivec3(u_xlatu1.xyz), intBitsToFloat(u_xlati0.xyxx));
    }
    return;
}

