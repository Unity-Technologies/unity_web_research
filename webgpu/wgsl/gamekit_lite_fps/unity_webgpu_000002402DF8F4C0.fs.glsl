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
layout(set = 0, binding = 0, std140) uniform PGlobals {
	vec4 _Params;
	vec4 _ScaleOffsetRes;
};
 struct _HistogramBuffer_type {
	uint[1] value;
};

layout(set = 0, binding = 1, std430) readonly buffer _HistogramBuffer {
	_HistogramBuffer_type _HistogramBuffer_buf[];
};
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 1) in highp float vs_TEXCOORD1;
layout(location = 2) in highp float vs_TEXCOORD2;
layout(location = 0) out highp vec4 SV_Target0;
vec3 u_xlat0;
bool u_xlatb0;
vec3 u_xlat1;
float u_xlat2;
uint u_xlatu2;
bool u_xlatb2;
float u_xlat4;
float u_xlat6;
bool u_xlatb6;
void main()
{
    u_xlat0.xy = log2(_Params.zw);
    u_xlat0.xy = u_xlat0.xy * _ScaleOffsetRes.xx + _ScaleOffsetRes.yy;
    u_xlat0.xy = clamp(u_xlat0.xy, 0.0, 1.0);
    u_xlatb0 = u_xlat0.x<vs_TEXCOORD0.x;
    u_xlatb2 = vs_TEXCOORD0.x<u_xlat0.y;
    u_xlatb0 = u_xlatb2 && u_xlatb0;
    u_xlat2 = vs_TEXCOORD0.x * 128.0;
    u_xlat2 = roundEven(u_xlat2);
    u_xlatu2 = uint(u_xlat2);
    u_xlatu2 = _HistogramBuffer_buf[u_xlatu2].value[(0 >> 2) + 0];
    u_xlat2 = float(u_xlatu2);
    u_xlat2 = u_xlat2 * vs_TEXCOORD1;
    u_xlat2 = clamp(u_xlat2, 0.0, 1.0);
    u_xlatb2 = u_xlat2>=vs_TEXCOORD0.y;
    u_xlat4 = u_xlatb2 ? 0.75 : float(0.0);
    u_xlat1.xyz = (bool(u_xlatb2)) ? vec3(0.100000001, 0.600000024, 0.800000012) : vec3(0.0500000007, 0.300000012, 0.400000006);
    u_xlat0.xyz = (bool(u_xlatb0)) ? u_xlat1.xyz : vec3(u_xlat4);
    u_xlat6 = log2(vs_TEXCOORD2);
    u_xlat6 = u_xlat6 * _ScaleOffsetRes.x + _ScaleOffsetRes.y;
    u_xlat6 = clamp(u_xlat6, 0.0, 1.0);
    u_xlat6 = (-u_xlat6) + vs_TEXCOORD0.x;
    u_xlat1.x = _ScaleOffsetRes.z + _ScaleOffsetRes.z;
    u_xlatb6 = abs(u_xlat6)<u_xlat1.x;
    SV_Target0.xyz = (bool(u_xlatb6)) ? vec3(0.75, 0.100000001, 1.0) : u_xlat0.xyz;
    SV_Target0.w = 1.0;
    return;
}

