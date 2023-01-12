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
layout(set = 1, binding = 0, std140) uniform PGlobals {
	vec2 _Params;
};
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
bool u_xlatb0;
vec2 u_xlat1;
uvec2 u_xlatu1;
float u_xlat2;
uint u_xlatu2;
    u_xlat0 = vs_TEXCOORD0.x * 255.0;
    u_xlat1.x = floor(u_xlat0);
    u_xlat0 = fract(u_xlat0);
    u_xlatu1.x = uint(u_xlat1.x);
    u_xlatu1.y = u_xlatu1.x + 1u;
    u_xlatu1.x = _HistogramBuffer_buf[u_xlatu1.x].value[(0 >> 2) + 0];
    u_xlat1.xy = vec2(u_xlatu1.xy);
    u_xlat2 = min(u_xlat1.y, 255.0);
    u_xlatu2 = uint(u_xlat2);
    u_xlatu2 = _HistogramBuffer_buf[u_xlatu2].value[(0 >> 2) + 0];
    u_xlat1.y = float(u_xlatu2);
    u_xlat1.xy = u_xlat1.xy * vec2(vs_TEXCOORD1);
    u_xlat2 = u_xlat0 * u_xlat1.y;
    u_xlat0 = (-u_xlat0) + 1.0;
    u_xlat0 = u_xlat1.x * u_xlat0 + u_xlat2;
    u_xlat1.x = vs_TEXCOORD0.y * _Params.y;
    u_xlat1.x = roundEven(u_xlat1.x);
    u_xlatu1.x = uint(u_xlat1.x);
    u_xlat1.x = float(u_xlatu1.x);
    u_xlatb0 = u_xlat0>=u_xlat1.x;
    SV_Target0.xyz = bool(u_xlatb0) ? vec3(1.0, 1.0, 1.0) : vec3(0.0, 0.0, 0.0);
    SV_Target0.w = 1.0;
    return;
}

