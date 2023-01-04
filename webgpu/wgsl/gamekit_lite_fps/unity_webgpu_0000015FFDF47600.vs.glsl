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
layout(set = 0, binding = 1, std140) uniform VGlobals {
	mat4x4 unity_ObjectToWorld;
	mat4x4 unity_MatrixVP;
	mat4x4 _NonJitteredVP;
	mat4x4 _PreviousVP;
	mat4x4 _PreviousM;
	int _HasLastPositionData;
	float _MotionVectorDepthBias;
};
layout(location = 0) in highp vec4 in_POSITION0;
layout(location = 1) in highp vec3 in_TEXCOORD4;
layout(location = 0) out highp vec4 vs_TEXCOORD0;
layout(location = 1) out highp vec4 vs_TEXCOORD1;
vec4 u_xlat0;
vec4 u_xlat1;
vec4 u_xlat2;
void main()
{
    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
    u_xlat1 = unity_ObjectToWorld[3] * in_POSITION0.wwww + u_xlat0;
    u_xlat0 = u_xlat0 + unity_ObjectToWorld[3];
    u_xlat2 = u_xlat1.yyyy * _NonJitteredVP[1];
    u_xlat2 = _NonJitteredVP[0] * u_xlat1.xxxx + u_xlat2;
    u_xlat2 = _NonJitteredVP[2] * u_xlat1.zzzz + u_xlat2;
    vs_TEXCOORD0 = _NonJitteredVP[3] * u_xlat1.wwww + u_xlat2;
    u_xlat1.xyz = in_TEXCOORD4.xyz;
    u_xlat1.w = 1.0;
    u_xlat1 = (_HasLastPositionData != 0) ? u_xlat1 : in_POSITION0;
    u_xlat2 = u_xlat1.yyyy * _PreviousM[1];
    u_xlat2 = _PreviousM[0] * u_xlat1.xxxx + u_xlat2;
    u_xlat2 = _PreviousM[2] * u_xlat1.zzzz + u_xlat2;
    u_xlat1 = _PreviousM[3] * u_xlat1.wwww + u_xlat2;
    u_xlat2 = u_xlat1.yyyy * _PreviousVP[1];
    u_xlat2 = _PreviousVP[0] * u_xlat1.xxxx + u_xlat2;
    u_xlat2 = _PreviousVP[2] * u_xlat1.zzzz + u_xlat2;
    vs_TEXCOORD1 = _PreviousVP[3] * u_xlat1.wwww + u_xlat2;
    u_xlat1 = u_xlat0.yyyy * unity_MatrixVP[1];
    u_xlat1 = unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
    u_xlat1 = unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
    u_xlat0 = unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
    gl_Position.z = (-_MotionVectorDepthBias) * u_xlat0.w + u_xlat0.z;
    gl_Position.xyw = u_xlat0.xyw;
    return;
}

