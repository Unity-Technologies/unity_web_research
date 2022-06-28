#version 440

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
 struct _HistogramBuffer_origX0X_type {
	uint[1] value;
};

layout(set = 0, binding = 0, std430) buffer _HistogramBuffer_origX0X {
	_HistogramBuffer_origX0X_type _HistogramBuffer_origX0X_buf[];
};
bool u_xlatb0;
layout(local_size_x = 16, local_size_y = 1, local_size_z = 1) in;
void main()
{
    u_xlatb0 = gl_GlobalInvocationID.x<128u;
    if(u_xlatb0){
        _HistogramBuffer_origX0X_buf[gl_GlobalInvocationID.x].value[(0 >> 2)] = 0u;
    }
    return;
}

