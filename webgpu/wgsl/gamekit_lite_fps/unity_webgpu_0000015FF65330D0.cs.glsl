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
layout(set = 0, binding = 0, std140) uniform Params {
	vec4 _Params;
};
 struct _VectorscopeBuffer_origX0X_type {
	uint[1] value;
};

layout(set = 0, binding = 1, std430) buffer _VectorscopeBuffer_origX0X {
	_VectorscopeBuffer_origX0X_type _VectorscopeBuffer_origX0X_buf[];
};
vec2 u_xlat0;
uint u_xlatu0;
bvec2 u_xlatb0;
layout(local_size_x = 16, local_size_y = 16, local_size_z = 1) in;
void main()
{
    u_xlatu0 = uint(_Params.z);
    u_xlatb0.xy = lessThan(gl_GlobalInvocationID.xyxx, uvec4(u_xlatu0)).xy;
    u_xlatb0.x = u_xlatb0.y && u_xlatb0.x;
    if(u_xlatb0.x){
        u_xlat0.xy = vec2(gl_GlobalInvocationID.yx);
        u_xlat0.x = u_xlat0.x * _Params.z + u_xlat0.y;
        u_xlatu0 = uint(u_xlat0.x);
        _VectorscopeBuffer_origX0X_buf[u_xlatu0].value[(0 >> 2)] = 0u;
    }
    return;
}

