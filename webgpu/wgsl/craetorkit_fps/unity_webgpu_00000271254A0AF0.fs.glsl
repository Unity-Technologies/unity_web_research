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
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 2) uniform mediump  sampler sampler_Lut3D;
void main()
{
vec4 u_xlat0;
uint u_xlatu0;
bool u_xlatb0;
vec4 u_xlat1;
bvec3 u_xlatb1;
vec4 u_xlat2;
vec3 u_xlat8;
vec3 u_xlat9;
    u_xlat0.x = vs_TEXCOORD0.x * 128.0;
    u_xlat0.x = roundEven(u_xlat0.x);
    u_xlatu0 = uint(u_xlat0.x);
    u_xlatu0 = _HistogramBuffer_buf[u_xlatu0].value[(0 >> 2) + 0];
    u_xlat0.x = float(u_xlatu0);
    u_xlat0.x = u_xlat0.x * vs_TEXCOORD1;
    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
    u_xlatb0 = u_xlat0.x>=vs_TEXCOORD0.y;
    u_xlat0.xyz = bool(u_xlatb0) ? vec3(0.75, 0.75, 0.75) : vec3(0.0, 0.0, 0.0);
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
    SV_Target0 = (u_xlatb1.x) ? u_xlat2 : u_xlat0;
    return;
}

