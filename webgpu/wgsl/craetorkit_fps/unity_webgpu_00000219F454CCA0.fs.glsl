#version 440
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shading_language_420pack : require

layout(origin_upper_left) in vec4 gl_FragCoord;
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
 struct _HistogramBuffer_type {
	uint[1] value;
};

layout(set = 0, binding = 0, std430) readonly buffer _HistogramBuffer {
	_HistogramBuffer_type _HistogramBuffer_buf[];
};
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 1) in highp float vs_TEXCOORD1;
layout(location = 0) out highp vec4 SV_Target0;
void main()
{
float u_xlat0;
uint u_xlatu0;
bool u_xlatb0;
    u_xlat0 = vs_TEXCOORD0.x * 128.0;
    u_xlat0 = roundEven(u_xlat0);
    u_xlatu0 = uint(u_xlat0);
    u_xlatu0 = _HistogramBuffer_buf[u_xlatu0].value[(0 >> 2) + 0];
    u_xlat0 = float(u_xlatu0);
    u_xlat0 = u_xlat0 * vs_TEXCOORD1;
    u_xlat0 = clamp(u_xlat0, 0.0, 1.0);
    u_xlatb0 = u_xlat0>=vs_TEXCOORD0.y;
    SV_Target0.xyz = bool(u_xlatb0) ? vec3(0.75, 0.75, 0.75) : vec3(0.0, 0.0, 0.0);
    SV_Target0.w = 1.0;
    return;
}

