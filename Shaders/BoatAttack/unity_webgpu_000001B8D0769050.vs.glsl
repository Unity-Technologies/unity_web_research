#version 440
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shading_language_420pack : require

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
const uvec4 ImmCB_1[] = uvec4[10] (
	uvec4(0x0, 0x0, 0xBF800000, 0x0),
	uvec4(0x0, 0x0, 0x3F800000, 0x0),
	uvec4(0x3F800000, 0x0, 0x0, 0x0),
	uvec4(0x3F800000, 0x0, 0x0, 0x0),
	uvec4(0x3F800000, 0x0, 0x0, 0xBF800000),
	uvec4(0xBF800000, 0x0, 0x0, 0xBF800000),
	uvec4(0x0, 0x0, 0x3F800000, 0x0),
	uvec4(0x0, 0x0, 0xBF800000, 0x0),
	uvec4(0x0, 0x0, 0x0, 0xBF800000),
	uvec4(0x0, 0x0, 0x0, 0xBF800000));
layout(set = 1, binding = 0, std140) uniform VGlobals {
	mat4x4 unity_ObjectToWorld;
	mat4x4 unity_MatrixVP;
	vec4 _MainTex_ST;
	float _faceIndex;
};
layout(location = 0) in highp vec4 in_POSITION0;
layout(location = 1) in highp vec2 in_TEXCOORD0;
layout(location = 0) out highp vec3 vs_TEXCOORD0;
void main()
{
vec4 u_xlat0;
vec4 u_xlat1;
vec3 u_xlat2;
vec3 u_xlat3;
int u_xlati4;
    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
    u_xlat0 = u_xlat0 + unity_ObjectToWorld[3];
    u_xlat1 = u_xlat0.yyyy * unity_MatrixVP[1];
    u_xlat1 = unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
    u_xlat1 = unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
    gl_Position = unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
    u_xlat0.x = 0.0;
    u_xlat1.z = 0.0;
    u_xlati4 = int(_faceIndex);
    u_xlat1.xy = uintBitsToFloat(ImmCB_1[u_xlati4].zx) * uintBitsToFloat(ImmCB_1[u_xlati4 + 4].wz);
    u_xlat2.xz = uintBitsToFloat(ImmCB_1[u_xlati4 + 4].zw);
    u_xlat2.y = uintBitsToFloat(ImmCB_1[u_xlati4].z);
    u_xlat0.z = uintBitsToFloat(ImmCB_1[u_xlati4].x);
    u_xlat0.xzw = (-u_xlat2.xyz) * u_xlat0.xxz + u_xlat1.xyz;
    u_xlat1.y = 0.0;
    u_xlat2.xy = in_TEXCOORD0.xy * _MainTex_ST.xy + _MainTex_ST.zw;
    u_xlat2.xy = u_xlat2.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat1.xz = uintBitsToFloat(ImmCB_1[u_xlati4].xz);
    u_xlat3.yz = uintBitsToFloat(ImmCB_1[u_xlati4 + 4].wz);
    u_xlat0.xyz = u_xlat2.xxx * u_xlat1.xyz + u_xlat0.xzw;
    u_xlat3.x = 0.0;
    vs_TEXCOORD0.xyz = u_xlat2.yyy * u_xlat3.xyz + u_xlat0.xyz;
    return;
}

