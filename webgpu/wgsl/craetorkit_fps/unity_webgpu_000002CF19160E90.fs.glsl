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
	vec4 _Params;
	vec4 _ScaleOffsetRes;
};
layout(set = 0, binding = 0) uniform mediump texture3D _Lut3D;
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
layout(set = 0, binding = 2) uniform mediump  sampler sampler_Lut3D;
void main()
{
vec4 u_xlat0;
bool u_xlatb0;
vec4 u_xlat1;
bvec3 u_xlatb1;
vec4 u_xlat2;
float u_xlat5;
uint u_xlatu5;
bool u_xlatb5;
float u_xlat6;
vec3 u_xlat8;
vec3 u_xlat9;
float u_xlat10;
    u_xlat0.xy = log2(_Params.zw);
    u_xlat0.xy = u_xlat0.xy * _ScaleOffsetRes.xx + _ScaleOffsetRes.yy;
    u_xlat0.xy = clamp(u_xlat0.xy, 0.0, 1.0);
    u_xlatb0 = u_xlat0.x<vs_TEXCOORD0.x;
    u_xlatb5 = vs_TEXCOORD0.x<u_xlat0.y;
    u_xlatb0 = u_xlatb5 && u_xlatb0;
    u_xlat5 = vs_TEXCOORD0.x * 128.0;
    u_xlat5 = roundEven(u_xlat5);
    u_xlatu5 = uint(u_xlat5);
    u_xlatu5 = _HistogramBuffer_buf[u_xlatu5].value[(0 >> 2) + 0];
    u_xlat5 = float(u_xlatu5);
    u_xlat5 = u_xlat5 * vs_TEXCOORD1;
    u_xlat5 = clamp(u_xlat5, 0.0, 1.0);
    u_xlatb5 = u_xlat5>=vs_TEXCOORD0.y;
    u_xlat10 = u_xlatb5 ? 0.75 : float(0.0);
    u_xlat1.xyz = (bool(u_xlatb5)) ? vec3(0.100000001, 0.600000024, 0.800000012) : vec3(0.0500000007, 0.300000012, 0.400000006);
    u_xlat0.xyz = (bool(u_xlatb0)) ? u_xlat1.xyz : vec3(u_xlat10);
    u_xlat1.xyz = texture(sampler3D(_Lut3D, sampler_Lut3D), vs_TEXCOORD0.xxx).xyz;
    u_xlat1.xyz = u_xlat1.xyz + (-vs_TEXCOORD0.yyy);
    u_xlatb1.xyz = lessThan(abs(u_xlat1.xyzx), _ScaleOffsetRes.wwww).xyz;
    u_xlat2.x = u_xlatb1.x ? 1.0 : float(0.0);
    u_xlat2.y = float(1.0);
    u_xlat2.z = float(0.0);
    u_xlat1.xw = u_xlat2.yx + vec2(0.0, 1.0);
    u_xlat8.xz = (u_xlatb1.y) ? u_xlat1.xw : u_xlat2.zx;
    u_xlat9.xz = u_xlat8.xz + vec2(0.5, 1.0);
    u_xlat9.y = 1.0;
    u_xlat8.y = 0.0;
    u_xlat2.yzw = (u_xlatb1.z) ? u_xlat9.xyz : u_xlat8.xyz;
    u_xlat1.x = dot(u_xlat2, u_xlat2);
    u_xlatb1.x = u_xlat1.x!=0.0;
    u_xlat0.w = 1.0;
    u_xlat0 = (u_xlatb1.x) ? u_xlat2 : u_xlat0;
    u_xlat1.x = log2(vs_TEXCOORD2);
    u_xlat1.x = u_xlat1.x * _ScaleOffsetRes.x + _ScaleOffsetRes.y;
    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
    u_xlat1.x = (-u_xlat1.x) + vs_TEXCOORD0.x;
    u_xlat6 = _ScaleOffsetRes.z + _ScaleOffsetRes.z;
    u_xlatb1.x = abs(u_xlat1.x)<u_xlat6;
    SV_Target0.xyz = (u_xlatb1.x) ? vec3(0.75, 0.100000001, 1.0) : u_xlat0.xyz;
    SV_Target0.w = u_xlat0.w;
    return;
}

