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
	vec3 _Params;
};
 struct _VectorscopeBuffer_type {
	uint[1] value;
};

layout(set = 0, binding = 0, std430) readonly buffer _VectorscopeBuffer {
	_VectorscopeBuffer_type _VectorscopeBuffer_buf[];
};
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
void main()
{
vec4 u_xlat0;
vec3 u_xlat1;
vec2 u_xlat4;
uvec2 u_xlatu4;
float u_xlat6;
    u_xlat0 = vs_TEXCOORD0.xyxy * vec4(-1.0, 1.0, -1.0, 1.0) + vec4(0.5, -0.5, 1.0, 0.0);
    u_xlat4.xy = u_xlat0.zw * _Params.xy;
    u_xlatu4.xy = uvec2(u_xlat4.xy);
    u_xlat4.xy = vec2(u_xlatu4.xy);
    u_xlat4.x = u_xlat4.y * _Params.x + u_xlat4.x;
    u_xlatu4.x = uint(u_xlat4.x);
    u_xlatu4.x = _VectorscopeBuffer_buf[u_xlatu4.x].value[(0 >> 2) + 0];
    u_xlat4.x = float(u_xlatu4.x);
    u_xlat4.x = u_xlat4.x * _Params.z + -0.00400000019;
    u_xlat4.x = max(u_xlat4.x, 0.0);
    u_xlat1.xy = u_xlat4.xx * vec2(6.19999981, 6.19999981) + vec2(0.5, 1.70000005);
    u_xlat6 = u_xlat4.x * u_xlat1.x;
    u_xlat4.x = u_xlat4.x * u_xlat1.y + 0.0599999987;
    u_xlat4.x = u_xlat6 / u_xlat4.x;
    u_xlat4.x = u_xlat4.x * u_xlat4.x;
    u_xlat4.x = min(u_xlat4.x, 1.0);
    u_xlat0.x = (-u_xlat0.x) * 0.344000012 + 0.5;
    u_xlat1.y = (-u_xlat0.y) * 0.713999987 + u_xlat0.x;
    u_xlat1.xz = vs_TEXCOORD0.yx * vec2(1.403, 1.773) + vec2(-0.201499999, -0.386500001);
    SV_Target0.xyz = u_xlat4.xxx * (-u_xlat1.xyz) + u_xlat1.xyz;
    SV_Target0.w = 1.0;
    return;
}

