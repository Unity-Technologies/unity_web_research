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
layout(set = 0, binding = 0, std140) uniform Params {
	vec4 _Params;
};
layout(set = 0, binding = 1) uniform highp texture2D _Source;
 struct _WaveformBuffer_origX0X_type {
	uint[4] value;
};

layout(set = 0, binding = 2, std430) buffer _WaveformBuffer_origX0X {
	_WaveformBuffer_origX0X_type _WaveformBuffer_origX0X_buf[];
};
vec3 u_xlat0;
uvec4 u_xlatu0;
bvec2 u_xlatb0;
vec3 u_xlat1;
vec3 u_xlat2;
bvec3 u_xlatb3;
float u_xlat12;
bool u_xlatb12;
layout(local_size_x = 1, local_size_y = 256, local_size_z = 1) in;
void main()
{
    u_xlatu0.xy = uvec2(_Params.xy);
    u_xlatb0.xy = lessThan(gl_GlobalInvocationID.xyxx, u_xlatu0.xyxx).xy;
    u_xlatb0.x = u_xlatb0.y && u_xlatb0.x;
    if(u_xlatb0.x){
        u_xlatu0.xy = gl_GlobalInvocationID.xy;
        u_xlatu0.z = uint(0u);
        u_xlatu0.w = uint(0u);
        u_xlat0.xyz = texelFetch(_Source, ivec2(u_xlatu0.xy), int(u_xlatu0.w)).xyz;
        u_xlat0.xyz = u_xlat0.xyz;
        u_xlat0.xyz = clamp(u_xlat0.xyz, 0.0, 1.0);
        u_xlatb12 = 0.0<_Params.z;
        if(u_xlatb12){
            u_xlat1.xyz = u_xlat0.xyz * vec3(12.9200001, 12.9200001, 12.9200001);
            u_xlat2.xyz = max(u_xlat0.xyz, vec3(1.1920929e-07, 1.1920929e-07, 1.1920929e-07));
            u_xlat2.xyz = log2(u_xlat2.xyz);
            u_xlat2.xyz = u_xlat2.xyz * vec3(0.416666657, 0.416666657, 0.416666657);
            u_xlat2.xyz = exp2(u_xlat2.xyz);
            u_xlat2.xyz = u_xlat2.xyz * vec3(1.05499995, 1.05499995, 1.05499995) + vec3(-0.0549999997, -0.0549999997, -0.0549999997);
            u_xlatb3.xyz = greaterThanEqual(vec4(0.00313080009, 0.00313080009, 0.00313080009, 0.0), u_xlat0.xyzx).xyz;
            u_xlat0.x = (u_xlatb3.x) ? u_xlat1.x : u_xlat2.x;
            u_xlat0.y = (u_xlatb3.y) ? u_xlat1.y : u_xlat2.y;
            u_xlat0.z = (u_xlatb3.z) ? u_xlat1.z : u_xlat2.z;
        }
        u_xlat12 = _Params.y + -1.0;
        u_xlat0.xyz = vec3(u_xlat12) * u_xlat0.xyz;
        u_xlat0.xyz = roundEven(u_xlat0.xyz);
        u_xlatu0.xyz = uvec3(u_xlat0.xyz);
        u_xlat12 = float(gl_GlobalInvocationID.x);
        u_xlat0.xyz = vec3(u_xlatu0.xyz);
        u_xlat0.xyz = vec3(u_xlat12) * _Params.yyy + u_xlat0.xyz;
        u_xlatu0.xyz = uvec3(u_xlat0.yxz);
        if(u_xlatu0.y != uint(0)) {
            u_xlatu0.w = 0u;
            atomicAdd(_WaveformBuffer_origX0X_buf[u_xlatu0.y].value[u_xlatu0.w >> 2u], 1u);
        }
        if(u_xlatu0.x != uint(0)) {
            u_xlatu0.y = 4u;
            atomicAdd(_WaveformBuffer_origX0X_buf[u_xlatu0.x].value[u_xlatu0.y >> 2u], 1u);
        }
        if(u_xlatu0.z != uint(0)) {
            u_xlatu0.y = 8u;
            atomicAdd(_WaveformBuffer_origX0X_buf[u_xlatu0.z].value[u_xlatu0.y >> 2u], 1u);
        }
    }
    return;
}

