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
	vec3 _WorldSpaceCameraPos;
	vec4 _ProjectionParams;
	mat4x4 unity_ObjectToWorld;
	mat4x4 unity_WorldToObject;
	mat4x4 unity_MatrixVP;
	vec4 unity_FogParams;
	float _FillAmount;
	mat4x4 _LiquidRotation;
};
layout(location = 0) in highp vec4 in_POSITION0;
layout(location = 1) in highp vec2 in_TEXCOORD0;
layout(location = 2) in highp vec3 in_NORMAL0;
highp vec2 vs_TEXCOORD0;
layout(location = 0) out highp float vs_TEXCOORD1;
layout(location = 1) out highp float vs_TEXCOORD2;
layout(location = 2) out highp vec3 vs_COLOR0;
layout(location = 3) out highp vec3 vs_COLOR2;
void main()
{
vec4 u_xlat0;
vec4 u_xlat1;
float u_xlat3;
float u_xlat6;
    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
    u_xlat1.x = u_xlat0.y * _LiquidRotation[1].y;
    u_xlat1.x = _LiquidRotation[0].y * u_xlat0.x + u_xlat1.x;
    u_xlat1.x = _LiquidRotation[2].y * u_xlat0.z + u_xlat1.x;
    u_xlat0 = u_xlat0 + unity_ObjectToWorld[3];
    u_xlat1.x = u_xlat1.x + _LiquidRotation[3].y;
    u_xlat3 = dot(unity_ObjectToWorld[1], unity_ObjectToWorld[1]);
    u_xlat3 = sqrt(u_xlat3);
    vs_TEXCOORD2 = (-_FillAmount) * u_xlat3 + u_xlat1.x;
    u_xlat1 = u_xlat0.yyyy * unity_MatrixVP[1];
    u_xlat1 = unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
    u_xlat1 = unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
    u_xlat0 = unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
    u_xlat1.x = u_xlat0.z / _ProjectionParams.y;
    gl_Position = u_xlat0;
    u_xlat0.x = (-u_xlat1.x) + 1.0;
    u_xlat0.x = u_xlat0.x * _ProjectionParams.z;
    u_xlat0.x = max(u_xlat0.x, 0.0);
    u_xlat0.x = u_xlat0.x * unity_FogParams.x;
    u_xlat0.x = u_xlat0.x * (-u_xlat0.x);
    vs_TEXCOORD1 = exp2(u_xlat0.x);
    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
    u_xlat0.xyz = _WorldSpaceCameraPos.yyy * unity_WorldToObject[1].xyz;
    u_xlat0.xyz = unity_WorldToObject[0].xyz * _WorldSpaceCameraPos.xxx + u_xlat0.xyz;
    u_xlat0.xyz = unity_WorldToObject[2].xyz * _WorldSpaceCameraPos.zzz + u_xlat0.xyz;
    u_xlat0.xyz = u_xlat0.xyz + unity_WorldToObject[3].xyz;
    u_xlat0.xyz = u_xlat0.xyz + (-in_POSITION0.xyz);
    u_xlat6 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat6 = inversesqrt(u_xlat6);
    vs_COLOR0.xyz = vec3(u_xlat6) * u_xlat0.xyz;
    vs_COLOR2.xyz = in_NORMAL0.xyz;
    return;
}

