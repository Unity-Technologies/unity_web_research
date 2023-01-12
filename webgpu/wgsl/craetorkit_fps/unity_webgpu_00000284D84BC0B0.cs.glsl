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
const uvec4 ImmCB_5[] = uvec4[4] (
	uvec4(0x3F800000, 0x0, 0x0, 0x0),
	uvec4(0x0, 0x3F800000, 0x0, 0x0),
	uvec4(0x0, 0x0, 0x3F800000, 0x0),
	uvec4(0x0, 0x0, 0x0, 0x3F800000));
layout(set = 1, binding = 0, std140) uniform Params {
	vec4 _Params;
};
layout(set = 0, binding = 0) uniform highp texture2D _Source;
 struct _HistogramBuffer_origX0X_type {
	uint[1] value;
};

layout(set = 0, binding = 1, std430) buffer _HistogramBuffer_origX0X {
	_HistogramBuffer_origX0X_type _HistogramBuffer_origX0X_buf[];
};
shared struct {
	uint value[1];
} TGSM0[256];
layout(local_size_x = 16, local_size_y = 16, local_size_z = 1) in;
void main()
{
ivec2 u_xlati0;
vec3 u_xlat1;
uvec4 u_xlatu1;
vec3 u_xlat2;
vec3 u_xlat3;
bvec3 u_xlatb4;
float u_xlat10;
int u_xlati10;
uvec2 u_xlatu10;
bvec2 u_xlatb10;
float u_xlat15;
bool u_xlatb15;
    u_xlati0.x = int(gl_LocalInvocationID.y) * 16 + int(gl_LocalInvocationID.x);
    TGSM0[u_xlati0.x].value[(0 >> 2)] = 0u;
    //memoryBarrierShared;
    barrier();
    u_xlatu10.xy = uvec2(_Params.xy);
    u_xlatb10.xy = lessThan(gl_GlobalInvocationID.xyxy, u_xlatu10.xyxy).xy;
    u_xlatb10.x = u_xlatb10.y && u_xlatb10.x;
    if(u_xlatb10.x){
        u_xlatu1.xy = gl_GlobalInvocationID.xy;
        u_xlatu1.z = uint(0u);
        u_xlatu1.w = uint(0u);
        u_xlat1.xyz = texelFetch(_Source, ivec2(u_xlatu1.xy), int(u_xlatu1.w)).xyz;
        u_xlat1.xyz = u_xlat1.xyz;
        u_xlat1.xyz = clamp(u_xlat1.xyz, 0.0, 1.0);
        u_xlatb10.x = 0.0<_Params.z;
        if(u_xlatb10.x){
            u_xlat2.xyz = u_xlat1.xyz * vec3(12.9200001, 12.9200001, 12.9200001);
            u_xlat3.xyz = max(u_xlat1.xyz, vec3(1.1920929e-07, 1.1920929e-07, 1.1920929e-07));
            u_xlat3.xyz = log2(u_xlat3.xyz);
            u_xlat3.xyz = u_xlat3.xyz * vec3(0.416666657, 0.416666657, 0.416666657);
            u_xlat3.xyz = exp2(u_xlat3.xyz);
            u_xlat3.xyz = u_xlat3.xyz * vec3(1.05499995, 1.05499995, 1.05499995) + vec3(-0.0549999997, -0.0549999997, -0.0549999997);
            u_xlatb4.xyz = greaterThanEqual(vec4(0.00313080009, 0.00313080009, 0.00313080009, 0.0), u_xlat1.xyzx).xyz;
            u_xlat1.x = (u_xlatb4.x) ? u_xlat2.x : u_xlat3.x;
            u_xlat1.y = (u_xlatb4.y) ? u_xlat2.y : u_xlat3.y;
            u_xlat1.z = (u_xlatb4.z) ? u_xlat2.z : u_xlat3.z;
        }
        u_xlatu10.x = uint(_Params.w);
        u_xlatb15 = 2u<u_xlatu10.x;
        if(u_xlatb15){
            u_xlat15 = dot(u_xlat1.xyz, vec3(0.212672904, 0.715152204, 0.0721750036));
        } else {
            u_xlat15 = dot(u_xlat1.xyz, uintBitsToFloat(ImmCB_5[int(u_xlatu10.x)].xyz));
        }
        u_xlat10 = u_xlat15 * 255.0;
        u_xlat10 = roundEven(u_xlat10);
        u_xlatu1.x = uint(u_xlat10);
        u_xlatu1.y = 0u;
        atomicAdd(TGSM0[u_xlatu1.x].value[u_xlatu1.y >> 2u], 1u);
    }
    //memoryBarrierShared;
    barrier();
    u_xlati10 = int(TGSM0[u_xlati0.x].value[(0 >> 2) + 0]);
    u_xlati0.y = 0;
    atomicAdd(_HistogramBuffer_origX0X_buf[u_xlati0.x].value[u_xlati0.y >> 2], uint(u_xlati10));
    return;
}

