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
layout(set = 0, binding = 0, std140) uniform VGlobals {
	vec4 unity_OrthoParams;
	mat4x4 unity_ObjectToWorld;
	mat4x4 glstate_matrix_projection;
	mat4x4 unity_MatrixV;
};
layout(location = 0) in highp vec4 in_POSITION0;
layout(location = 1) in highp vec4 in_COLOR0;
layout(location = 0) out highp vec4 vs_COLOR0;
vec4 u_xlat0;
vec4 u_xlat1;
float u_xlat4;
void main()
{
    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
    u_xlat0 = u_xlat0 + unity_ObjectToWorld[3];
    u_xlat1.xyz = u_xlat0.yyy * unity_MatrixV[1].xyz;
    u_xlat1.xyz = unity_MatrixV[0].xyz * u_xlat0.xxx + u_xlat1.xyz;
    u_xlat0.xyz = unity_MatrixV[2].xyz * u_xlat0.zzz + u_xlat1.xyz;
    u_xlat0.xyz = unity_MatrixV[3].xyz * u_xlat0.www + u_xlat0.xyz;
    u_xlat1.xy = unity_OrthoParams.ww * vec2(0.00999999046, -0.0500000119) + vec2(0.99000001, 1.0);
    u_xlat0.xyz = u_xlat0.xyz * u_xlat1.xxx;
    u_xlat4 = u_xlat1.y * u_xlat0.z;
    u_xlat1 = u_xlat0.yyyy * glstate_matrix_projection[1];
    u_xlat1 = glstate_matrix_projection[0] * u_xlat0.xxxx + u_xlat1;
    u_xlat0 = glstate_matrix_projection[2] * vec4(u_xlat4) + u_xlat1;
    gl_Position = u_xlat0 + glstate_matrix_projection[3];
    vs_COLOR0 = in_COLOR0;
    return;
}

