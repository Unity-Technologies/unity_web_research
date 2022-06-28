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
	vec3 _Params;
};
 struct _WaveformBuffer_type {
	uint[4] value;
};

layout(set = 0, binding = 1, std430) readonly buffer _WaveformBuffer {
	_WaveformBuffer_type _WaveformBuffer_buf[];
};
layout(location = 0) out highp vec4 SV_Target0;
vec4 u_xlat0;
uvec3 u_xlatu0;
vec3 u_xlat1;
vec3 u_xlat2;
void main()
{
vec4 hlslcc_FragCoord = vec4(gl_FragCoord.xyz, 1.0/gl_FragCoord.w);
    u_xlatu0.xy = uvec2(hlslcc_FragCoord.xy);
    u_xlat0.xy = vec2(u_xlatu0.xy);
    u_xlat0.x = u_xlat0.x * _Params.y + u_xlat0.y;
    u_xlatu0.x = uint(u_xlat0.x);
    u_xlatu0.xyz = uvec3(_WaveformBuffer_buf[u_xlatu0.x].value[(0 >> 2) + 0], _WaveformBuffer_buf[u_xlatu0.x].value[(0 >> 2) + 1], _WaveformBuffer_buf[u_xlatu0.x].value[(0 >> 2) + 2]);
    u_xlat0.xyz = vec3(u_xlatu0.xyz);
    u_xlat1.xyz = u_xlat0.yyy * vec3(0.0199999996, 1.10000002, 0.0500000007);
    u_xlat0.xyw = u_xlat0.xxx * vec3(1.39999998, 0.0299999993, 0.0199999996) + u_xlat1.xyz;
    u_xlat0.xyz = u_xlat0.zzz * vec3(0.0, 0.25, 1.5) + u_xlat0.xyw;
    u_xlat0.xyz = u_xlat0.xyz * _Params.zzz + vec3(-0.00400000019, -0.00400000019, -0.00400000019);
    u_xlat0.xyz = max(u_xlat0.xyz, vec3(0.0, 0.0, 0.0));
    u_xlat1.xyz = u_xlat0.xyz * vec3(6.19999981, 6.19999981, 6.19999981) + vec3(0.5, 0.5, 0.5);
    u_xlat1.xyz = u_xlat0.xyz * u_xlat1.xyz;
    u_xlat2.xyz = u_xlat0.xyz * vec3(6.19999981, 6.19999981, 6.19999981) + vec3(1.70000005, 1.70000005, 1.70000005);
    u_xlat0.xyz = u_xlat0.xyz * u_xlat2.xyz + vec3(0.0599999987, 0.0599999987, 0.0599999987);
    u_xlat0.xyz = u_xlat1.xyz / u_xlat0.xyz;
    u_xlat0.xyz = u_xlat0.xyz * u_xlat0.xyz;
    SV_Target0.xyz = min(u_xlat0.xyz, vec3(1.0, 1.0, 1.0));
    SV_Target0.w = 1.0;
    return;
}

