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
	vec4 _DimensionsAndLerp;
	vec4 _TargetColor;
};
layout(set = 0, binding = 1) uniform mediump texture3D _From;
writeonly layout(set = 0, binding = 2, rgba32f) highp uniform image3D _Output_origX0X;
vec4 u_xlat0;
uvec4 u_xlatu0;
bvec3 u_xlatb0;
vec4 u_xlat1;
layout(local_size_x = 4, local_size_y = 4, local_size_z = 4) in;
void main()
{
    u_xlat0.xyz = vec3(gl_GlobalInvocationID.xyz);
    u_xlatb0.xyz = lessThan(u_xlat0.xyzx, _DimensionsAndLerp.xyzx).xyz;
    u_xlatb0.x = u_xlatb0.y && u_xlatb0.x;
    u_xlatb0.x = u_xlatb0.z && u_xlatb0.x;
    if(u_xlatb0.x){
        u_xlatu0.xyz = gl_GlobalInvocationID.xyz;
        u_xlatu0.w = 0u;
        u_xlat0 = texelFetch(_From, ivec3(u_xlatu0.xyz), int(u_xlatu0.w));
        u_xlat1 = (-u_xlat0) + _TargetColor;
        u_xlat0 = _DimensionsAndLerp.wwww * u_xlat1 + u_xlat0;
        imageStore(_Output_origX0X, ivec3(gl_GlobalInvocationID.xyz), u_xlat0);
    }
    return;
}

