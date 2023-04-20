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
	int _ChunkCount;
};
 struct _DebugFragmentation_type {
	uint[1] value;
};

layout(set = 0, binding = 0, std430) readonly buffer _DebugFragmentation {
	_DebugFragmentation_type _DebugFragmentation_buf[];
};
layout(location = 0) in highp  vec2 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
vec3 u_xlat0;
ivec3 u_xlati0;
bool u_xlatb0;
int u_xlati1;
bool u_xlatb1;
void main()
{
    u_xlat0.x = float(_ChunkCount);
    u_xlat0.x = sqrt(u_xlat0.x);
    u_xlat0.x = ceil(u_xlat0.x);
    u_xlat0.yz = u_xlat0.xx * vs_TEXCOORD0.xy;
    u_xlati0.xyz = ivec3(u_xlat0.xyz);
    u_xlati0.x = u_xlati0.z * u_xlati0.x + u_xlati0.y;
    u_xlati1 = int(_DebugFragmentation_buf[u_xlati0.x].value[(0 >> 2) + 0]);
    u_xlatb0 = u_xlati0.x<_ChunkCount;
    u_xlatb1 = u_xlati1!=int(0xFFFFFFFFu);
    u_xlatb0 = u_xlatb1 && u_xlatb0;
    SV_Target0 = bool(u_xlatb0) ? vec4(0.0, 1.0, 0.0, 1.0) : vec4(0.0, 0.0, 0.0, 0.0);
    return;
}

