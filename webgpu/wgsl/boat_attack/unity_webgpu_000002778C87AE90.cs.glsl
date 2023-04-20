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
layout(set = 1, binding = 0, std140) uniform name {
	vec4 _Params;
};
 struct _WaveformBuffer_origX0X_type {
	uint[4] value;
};

layout(set = 0, binding = 0, std430) buffer _WaveformBuffer_origX0X {
	_WaveformBuffer_origX0X_type _WaveformBuffer_origX0X_buf[];
};
int u_xlati0;
uvec2 u_xlatu0;
bvec2 u_xlatb1;
layout(local_size_x = 16, local_size_y = 16, local_size_z = 1) in;
void main()
{
    u_xlatu0.xy = uvec2(_Params.xw);
    u_xlatb1.xy = lessThan(gl_GlobalInvocationID.xyxx, u_xlatu0.xyxx).xy;
    u_xlatb1.x = u_xlatb1.y && u_xlatb1.x;
    if(u_xlatb1.x){
        u_xlati0 = int(gl_GlobalInvocationID.y) * int(u_xlatu0.x) + int(gl_GlobalInvocationID.x);
        _WaveformBuffer_origX0X_buf[u_xlati0].value[(0 >> 2)] = uint(0u);
        _WaveformBuffer_origX0X_buf[u_xlati0].value[(0 >> 2) + 1] = uint(0u);
        _WaveformBuffer_origX0X_buf[u_xlati0].value[(0 >> 2) + 2] = uint(0u);
        _WaveformBuffer_origX0X_buf[u_xlati0].value[(0 >> 2) + 3] = uint(0u);
    }
    return;
}

