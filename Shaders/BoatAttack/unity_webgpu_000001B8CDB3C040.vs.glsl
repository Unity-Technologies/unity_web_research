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
	vec4 _ProjectionParams;
	mat4x4 unity_ObjectToWorld;
	mat4x4 unity_WorldToObject;
	mat4x4 unity_MatrixV;
	mat4x4 unity_MatrixInvV;
	mat4x4 unity_MatrixVP;
	vec4 _TreeInstanceScale;
	mat4x4 _TerrainEngineBendTree;
	vec4 _SquashPlaneNormal;
	float _SquashAmount;
};
layout(location = 0) in highp vec4 in_POSITION0;
layout(location = 1) in highp vec3 in_NORMAL0;
layout(location = 2) in highp vec4 in_COLOR0;
layout(location = 3) in highp vec4 in_TEXCOORD0;
layout(location = 0) out highp vec2 vs_TEXCOORD0;
layout(location = 1) out highp vec4 vs_TEXCOORD1;
void main()
{
vec4 u_xlat0;
vec4 u_xlat1;
float u_xlat2;
float u_xlat6;
    u_xlat0.xyz = in_POSITION0.xyz * _TreeInstanceScale.xyz;
    u_xlat1.xyz = u_xlat0.yyy * _TerrainEngineBendTree[1].xyz;
    u_xlat1.xyz = _TerrainEngineBendTree[0].xyz * u_xlat0.xxx + u_xlat1.xyz;
    u_xlat1.xyz = _TerrainEngineBendTree[2].xyz * u_xlat0.zzz + u_xlat1.xyz;
    u_xlat1.xyz = (-in_POSITION0.xyz) * _TreeInstanceScale.xyz + u_xlat1.xyz;
    u_xlat0.xyz = in_COLOR0.www * u_xlat1.xyz + u_xlat0.xyz;
    u_xlat6 = dot(_SquashPlaneNormal.xyz, u_xlat0.xyz);
    u_xlat6 = u_xlat6 + _SquashPlaneNormal.w;
    u_xlat1.xyz = (-vec3(u_xlat6)) * _SquashPlaneNormal.xyz + u_xlat0.xyz;
    u_xlat0.xyz = u_xlat0.xyz + (-u_xlat1.xyz);
    u_xlat0.xyz = vec3(_SquashAmount) * u_xlat0.xyz + u_xlat1.xyz;
    u_xlat1 = u_xlat0.yyyy * unity_ObjectToWorld[1];
    u_xlat1 = unity_ObjectToWorld[0] * u_xlat0.xxxx + u_xlat1;
    u_xlat0 = unity_ObjectToWorld[2] * u_xlat0.zzzz + u_xlat1;
    u_xlat0 = u_xlat0 + unity_ObjectToWorld[3];
    u_xlat1 = u_xlat0.yyyy * unity_MatrixVP[1];
    u_xlat1 = unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
    u_xlat1 = unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
    gl_Position = unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
    u_xlat2 = u_xlat0.y * unity_MatrixV[1].z;
    u_xlat0.x = unity_MatrixV[0].z * u_xlat0.x + u_xlat2;
    u_xlat0.x = unity_MatrixV[2].z * u_xlat0.z + u_xlat0.x;
    u_xlat0.x = unity_MatrixV[3].z * u_xlat0.w + u_xlat0.x;
    u_xlat0.x = u_xlat0.x * _ProjectionParams.w;
    vs_TEXCOORD1.w = (-u_xlat0.x);
    u_xlat0.xyz = unity_WorldToObject[1].xyz * unity_MatrixInvV[0].yyy;
    u_xlat0.xyz = unity_WorldToObject[0].xyz * unity_MatrixInvV[0].xxx + u_xlat0.xyz;
    u_xlat0.xyz = unity_WorldToObject[2].xyz * unity_MatrixInvV[0].zzz + u_xlat0.xyz;
    u_xlat0.xyz = unity_WorldToObject[3].xyz * unity_MatrixInvV[0].www + u_xlat0.xyz;
    u_xlat0.x = dot(u_xlat0.xyz, in_NORMAL0.xyz);
    u_xlat1.xyz = unity_WorldToObject[1].xyz * unity_MatrixInvV[1].yyy;
    u_xlat1.xyz = unity_WorldToObject[0].xyz * unity_MatrixInvV[1].xxx + u_xlat1.xyz;
    u_xlat1.xyz = unity_WorldToObject[2].xyz * unity_MatrixInvV[1].zzz + u_xlat1.xyz;
    u_xlat1.xyz = unity_WorldToObject[3].xyz * unity_MatrixInvV[1].www + u_xlat1.xyz;
    u_xlat0.y = dot(u_xlat1.xyz, in_NORMAL0.xyz);
    u_xlat1.xyz = unity_WorldToObject[1].xyz * unity_MatrixInvV[2].yyy;
    u_xlat1.xyz = unity_WorldToObject[0].xyz * unity_MatrixInvV[2].xxx + u_xlat1.xyz;
    u_xlat1.xyz = unity_WorldToObject[2].xyz * unity_MatrixInvV[2].zzz + u_xlat1.xyz;
    u_xlat1.xyz = unity_WorldToObject[3].xyz * unity_MatrixInvV[2].www + u_xlat1.xyz;
    u_xlat0.z = dot(u_xlat1.xyz, in_NORMAL0.xyz);
    u_xlat6 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat6 = inversesqrt(u_xlat6);
    u_xlat0.xyz = vec3(u_xlat6) * u_xlat0.xyz;
    vs_TEXCOORD1.xyz = (-u_xlat0.xyz);
    return;
}

