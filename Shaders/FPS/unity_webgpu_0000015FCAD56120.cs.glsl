#version 440
#extension GL_EXT_samplerless_texture_functions : require

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
layout(set = 0, binding = 0) uniform highp texture2D DS4x;
writeonly layout(set = 0, binding = 1, rg32f) highp uniform image2D DS8x_origX0X;
writeonly layout(set = 0, binding = 2, rg32f) highp uniform image2DArray DS8xAtlas_origX1X;
writeonly layout(set = 0, binding = 3, rg32f) highp uniform image2D DS16x_origX2X;
writeonly layout(set = 0, binding = 4, rg32f) highp uniform image2DArray DS16xAtlas_origX3X;
ivec2 u_xlati0;
uvec4 u_xlatu0;
uvec4 u_xlatu1;
uvec4 u_xlatu2;
int u_xlati6;
layout(local_size_x = 8, local_size_y = 8, local_size_z = 1) in;
int int_bitfieldInsert(int base, int insert, int offset, int bits) {
    uint mask = ~(uint(0xffffffffu) << uint(bits)) << uint(offset);
    return int((uint(base) & ~mask) | ((uint(insert) << uint(offset)) & mask));
}

void main()
{
    u_xlatu0.xy = gl_GlobalInvocationID.xy << uvec2(1u, 1u);
    u_xlatu0.z = uint(0u);
    u_xlatu0.w = uint(0u);
    u_xlati0.xy = floatBitsToInt(texelFetch(DS4x, ivec2(u_xlatu0.xy), int(u_xlatu0.w)).xy);
    u_xlatu1.xy = gl_GlobalInvocationID.xy >> uvec2(2u, 2u);
    u_xlati6 = int(int_bitfieldInsert(int(gl_GlobalInvocationID.x), int(gl_GlobalInvocationID.y), 2 & 0x1F, 30));
    u_xlatu1.zw = uvec2(u_xlati6) & uvec2(15u, 15u);
    imageStore(DS8x_origX0X, ivec2(gl_GlobalInvocationID.xy), intBitsToFloat(u_xlati0.xyxx));
    imageStore(DS8xAtlas_origX1X, ivec3(u_xlatu1.xyz), intBitsToFloat(u_xlati0.xyxx));
    u_xlati6 = int(gl_LocalInvocationIndex & 9u);
    if(u_xlati6 == 0) {
        u_xlatu1 = gl_GlobalInvocationID.xyyy >> uvec4(1u, 1u, 1u, 1u);
        u_xlatu2.xy = u_xlatu1.xw >> uvec2(2u, 2u);
        u_xlati6 = int(int_bitfieldInsert(int(u_xlatu1.x), int(u_xlatu1.w), 2 & 0x1F, 30));
        u_xlatu2.zw = uvec2(u_xlati6) & uvec2(15u, 15u);
        imageStore(DS16x_origX2X, ivec2(u_xlatu1.xy), intBitsToFloat(u_xlati0.xyxx));
        imageStore(DS16xAtlas_origX3X, ivec3(u_xlatu2.xyz), intBitsToFloat(u_xlati0.xyxx));
    }
    return;
}
