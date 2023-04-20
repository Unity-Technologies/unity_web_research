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
layout(set = 1, binding = 0, std140) uniform CGlobals {
	mat4x4 unity_MatrixInvVP;
	vec4 _ScreenSize;
	vec4 _positionSS;
};
layout(set = 0, binding = 0) uniform highp texture2D _CameraDepthTexture;
layout(set = 0, binding = 1) uniform highp texture2D _CameraNormalsTexture;
 struct _ResultBuffer_origX0X_type {
	uint[4] value;
};

layout(set = 0, binding = 2, std430) buffer _ResultBuffer_origX0X {
	_ResultBuffer_origX0X_type _ResultBuffer_origX0X_buf[];
};
vec4 u_xlat0;
ivec4 u_xlati0;
uvec4 u_xlatu0;
vec4 u_xlat1;
uvec4 u_xlatu1;
layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
void main()
{
    u_xlat0.xy = _ScreenSize.zw * vec2(0.5, 0.5);
    u_xlat0.xy = _positionSS.xy * _ScreenSize.zw + u_xlat0.xy;
    u_xlat0.xy = u_xlat0.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat1 = (-u_xlat0.yyyy) * unity_MatrixInvVP[1];
    u_xlat0 = unity_MatrixInvVP[0] * u_xlat0.xxxx + u_xlat1;
    u_xlatu1.xy =  uvec2(ivec2(_positionSS.xy));
    u_xlatu1.z = uint(0u);
    u_xlatu1.w = uint(0u);
    u_xlat1.x = texelFetch(_CameraDepthTexture, ivec2(u_xlatu1.xy), int(u_xlatu1.w)).x;
    u_xlat0 = unity_MatrixInvVP[2] * u_xlat1.xxxx + u_xlat0;
    u_xlat0 = u_xlat0 + unity_MatrixInvVP[3];
    u_xlat0.xyz = u_xlat0.xyz / u_xlat0.www;
    u_xlat0.w = 1.0;
    _ResultBuffer_origX0X_buf[0].value[(0 >> 2)] = floatBitsToUint(u_xlat0.x);
    _ResultBuffer_origX0X_buf[0].value[(0 >> 2) + 1] = floatBitsToUint(u_xlat0.y);
    _ResultBuffer_origX0X_buf[0].value[(0 >> 2) + 2] = floatBitsToUint(u_xlat0.z);
    _ResultBuffer_origX0X_buf[0].value[(0 >> 2) + 3] = floatBitsToUint(u_xlat0.w);
    u_xlatu0.xy = uvec2(_positionSS.xy);
    u_xlatu0.z = uint(0u);
    u_xlatu0.w = uint(0u);
    u_xlati0.xyz = floatBitsToInt(texelFetch(_CameraNormalsTexture, ivec2(u_xlatu0.xy), int(u_xlatu0.w)).xyz);
    u_xlati0.w = 0;
    _ResultBuffer_origX0X_buf[1].value[(0 >> 2)] = uint(u_xlati0.x);
    _ResultBuffer_origX0X_buf[1].value[(0 >> 2) + 1] = uint(u_xlati0.y);
    _ResultBuffer_origX0X_buf[1].value[(0 >> 2) + 2] = uint(u_xlati0.z);
    _ResultBuffer_origX0X_buf[1].value[(0 >> 2) + 3] = uint(u_xlati0.w);
    return;
}

