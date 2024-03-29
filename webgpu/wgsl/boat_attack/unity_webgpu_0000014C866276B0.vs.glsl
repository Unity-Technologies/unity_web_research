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
layout(set = 1, binding = 1, std140) uniform VGlobals {
	mat4x4 unity_ObjectToWorld;
	mat4x4 unity_WorldToObject;
	mat4x4 unity_MatrixInvV;
	mat4x4 unity_MatrixVP;
};
layout(location = 0) in highp vec4 in_POSITION0;
layout(location = 1) in highp vec4 in_TANGENT0;
layout(location = 2) in highp vec3 in_NORMAL0;
layout(location = 3) in highp vec4 in_TEXCOORD0;
layout(location = 4) in highp vec4 in_COLOR0;
layout(location = 0) out highp vec2 vs_TEXCOORD0;
highp vec3 vs_TEXCOORD1;
vec4 u_xlat0;
vec4 u_xlat1;
float u_xlat6;
void main()
{
    u_xlat0.xyz = unity_WorldToObject[1].xyz * unity_MatrixInvV[1].yyy;
    u_xlat0.xyz = unity_WorldToObject[0].xyz * unity_MatrixInvV[1].xxx + u_xlat0.xyz;
    u_xlat0.xyz = unity_WorldToObject[2].xyz * unity_MatrixInvV[1].zzz + u_xlat0.xyz;
    u_xlat0.xyz = unity_WorldToObject[3].xyz * unity_MatrixInvV[1].www + u_xlat0.xyz;
    u_xlat0.xyz = u_xlat0.xyz * in_NORMAL0.yyy;
    u_xlat1.xyz = unity_WorldToObject[1].xyz * unity_MatrixInvV[0].yyy;
    u_xlat1.xyz = unity_WorldToObject[0].xyz * unity_MatrixInvV[0].xxx + u_xlat1.xyz;
    u_xlat1.xyz = unity_WorldToObject[2].xyz * unity_MatrixInvV[0].zzz + u_xlat1.xyz;
    u_xlat1.xyz = unity_WorldToObject[3].xyz * unity_MatrixInvV[0].www + u_xlat1.xyz;
    u_xlat0.xyz = in_NORMAL0.xxx * u_xlat1.xyz + u_xlat0.xyz;
    u_xlat6 = -abs(in_TANGENT0.w) + 1.0;
    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat6) + in_POSITION0.xyz;
    u_xlat1 = u_xlat0.yyyy * unity_ObjectToWorld[1];
    u_xlat1 = unity_ObjectToWorld[0] * u_xlat0.xxxx + u_xlat1;
    u_xlat0 = unity_ObjectToWorld[2] * u_xlat0.zzzz + u_xlat1;
    u_xlat0 = u_xlat0 + unity_ObjectToWorld[3];
    u_xlat1 = u_xlat0.yyyy * unity_MatrixVP[1];
    u_xlat1 = unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
    u_xlat1 = unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
    gl_Position = unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
    vs_TEXCOORD1.xyz = in_COLOR0.www;
    return;
}

