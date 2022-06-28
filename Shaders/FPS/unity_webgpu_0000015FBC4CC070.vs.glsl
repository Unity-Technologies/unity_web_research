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
layout(set = 0, binding = 3, std140) uniform VGlobals {
	vec4 _Time;
	vec4 _ProjectionParams;
	mat4x4 unity_ObjectToWorld;
	mat4x4 unity_WorldToObject;
	mat4x4 unity_MatrixV;
	mat4x4 unity_MatrixInvV;
	mat4x4 unity_MatrixVP;
	vec4 _TreeInstanceScale;
	vec4 _SquashPlaneNormal;
	float _SquashAmount;
	vec4 _Wind;
};
layout(location = 0) in highp vec4 in_POSITION0;
layout(location = 1) in highp vec4 in_TANGENT0;
layout(location = 2) in highp vec3 in_NORMAL0;
layout(location = 3) in highp vec4 in_TEXCOORD0;
layout(location = 4) in highp vec4 in_TEXCOORD1;
layout(location = 5) in highp vec4 in_COLOR0;
layout(location = 0) out highp vec2 vs_TEXCOORD0;
layout(location = 1) out highp vec4 vs_TEXCOORD1;
vec4 u_xlat0;
vec4 u_xlat1;
vec4 u_xlat2;
vec4 u_xlat3;
vec4 u_xlat4;
vec4 u_xlat5;
vec3 u_xlat6;
vec4 u_xlat7;
float u_xlat24;
float u_xlat25;
float u_xlat26;
void main()
{
    u_xlat0 = unity_WorldToObject[1] * unity_MatrixInvV[1].yyyy;
    u_xlat0 = unity_WorldToObject[0] * unity_MatrixInvV[1].xxxx + u_xlat0;
    u_xlat0 = unity_WorldToObject[2] * unity_MatrixInvV[1].zzzz + u_xlat0;
    u_xlat0 = unity_WorldToObject[3] * unity_MatrixInvV[1].wwww + u_xlat0;
    u_xlat1 = u_xlat0 * in_NORMAL0.yyyy;
    u_xlat2 = unity_WorldToObject[1] * unity_MatrixInvV[0].yyyy;
    u_xlat2 = unity_WorldToObject[0] * unity_MatrixInvV[0].xxxx + u_xlat2;
    u_xlat2 = unity_WorldToObject[2] * unity_MatrixInvV[0].zzzz + u_xlat2;
    u_xlat2 = unity_WorldToObject[3] * unity_MatrixInvV[0].wwww + u_xlat2;
    u_xlat1 = in_NORMAL0.xxxx * u_xlat2 + u_xlat1;
    u_xlat24 = -abs(in_TANGENT0.w) + 1.0;
    u_xlat3.xyz = u_xlat1.xyz * vec3(u_xlat24) + in_POSITION0.xyz;
    u_xlat3.xyz = u_xlat3.xyz * _TreeInstanceScale.xyz;
    u_xlat26 = dot(unity_ObjectToWorld[3].xyz, vec3(1.0, 1.0, 1.0));
    u_xlat4.y = u_xlat26 + in_COLOR0.x;
    u_xlat26 = u_xlat4.y + in_COLOR0.y;
    u_xlat4.x = dot(u_xlat3.xyz, vec3(u_xlat26));
    u_xlat4 = u_xlat4.xxyy + _Time.yyyy;
    u_xlat4 = u_xlat4 * vec4(1.97500002, 0.792999983, 0.375, 0.193000004);
    u_xlat4 = fract(u_xlat4);
    u_xlat4 = u_xlat4 * vec4(2.0, 2.0, 2.0, 2.0) + vec4(-0.5, -0.5, -0.5, -0.5);
    u_xlat4 = fract(u_xlat4);
    u_xlat4 = u_xlat4 * vec4(2.0, 2.0, 2.0, 2.0) + vec4(-1.0, -1.0, -1.0, -1.0);
    u_xlat5 = abs(u_xlat4) * abs(u_xlat4);
    u_xlat4 = -abs(u_xlat4) * vec4(2.0, 2.0, 2.0, 2.0) + vec4(3.0, 3.0, 3.0, 3.0);
    u_xlat4 = u_xlat4 * u_xlat5;
    u_xlat4.xy = u_xlat4.yw + u_xlat4.xz;
    u_xlat5.xyz = u_xlat4.yyy * _Wind.xyz;
    u_xlat5.xyz = u_xlat5.xyz * in_TEXCOORD1.yyy;
    u_xlat6.y = u_xlat4.y * in_TEXCOORD1.y;
    u_xlat7 = unity_WorldToObject[1] * unity_MatrixInvV[2].yyyy;
    u_xlat7 = unity_WorldToObject[0] * unity_MatrixInvV[2].xxxx + u_xlat7;
    u_xlat7 = unity_WorldToObject[2] * unity_MatrixInvV[2].zzzz + u_xlat7;
    u_xlat7 = unity_WorldToObject[3] * unity_MatrixInvV[2].wwww + u_xlat7;
    u_xlat1 = in_NORMAL0.zzzz * u_xlat7 + u_xlat1;
    u_xlat25 = dot(u_xlat1, u_xlat1);
    u_xlat25 = inversesqrt(u_xlat25);
    u_xlat1.xyz = u_xlat1.xyz * vec3(u_xlat25) + (-in_NORMAL0.xyz);
    u_xlat1.xyz = vec3(u_xlat24) * u_xlat1.xyz + in_NORMAL0.xyz;
    u_xlat24 = in_COLOR0.y * 0.100000001;
    u_xlat6.xz = u_xlat1.xz * vec2(u_xlat24);
    u_xlat4.z = 0.300000012;
    u_xlat4.xyz = u_xlat4.xzx * u_xlat6.xyz + u_xlat5.xyz;
    u_xlat3.xyz = u_xlat4.xyz * _Wind.www + u_xlat3.xyz;
    u_xlat3.xyz = in_TEXCOORD1.xxx * _Wind.xyz + u_xlat3.xyz;
    u_xlat24 = dot(_SquashPlaneNormal.xyz, u_xlat3.xyz);
    u_xlat24 = u_xlat24 + _SquashPlaneNormal.w;
    u_xlat4.xyz = (-vec3(u_xlat24)) * _SquashPlaneNormal.xyz + u_xlat3.xyz;
    u_xlat3.xyz = u_xlat3.xyz + (-u_xlat4.xyz);
    u_xlat3.xyz = vec3(_SquashAmount) * u_xlat3.xyz + u_xlat4.xyz;
    u_xlat4 = u_xlat3.yyyy * unity_ObjectToWorld[1];
    u_xlat4 = unity_ObjectToWorld[0] * u_xlat3.xxxx + u_xlat4;
    u_xlat3 = unity_ObjectToWorld[2] * u_xlat3.zzzz + u_xlat4;
    u_xlat3 = u_xlat3 + unity_ObjectToWorld[3];
    u_xlat4 = u_xlat3.yyyy * unity_MatrixVP[1];
    u_xlat4 = unity_MatrixVP[0] * u_xlat3.xxxx + u_xlat4;
    u_xlat4 = unity_MatrixVP[2] * u_xlat3.zzzz + u_xlat4;
    gl_Position = unity_MatrixVP[3] * u_xlat3.wwww + u_xlat4;
    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
    u_xlat24 = dot(u_xlat1.xyz, u_xlat1.xyz);
    u_xlat24 = inversesqrt(u_xlat24);
    u_xlat1.xyz = vec3(u_xlat24) * u_xlat1.xyz;
    u_xlat2.x = dot(u_xlat2.xyz, u_xlat1.xyz);
    u_xlat2.y = dot(u_xlat0.xyz, u_xlat1.xyz);
    u_xlat2.z = dot(u_xlat7.xyz, u_xlat1.xyz);
    u_xlat0.x = dot(u_xlat2.xyz, u_xlat2.xyz);
    u_xlat0.x = inversesqrt(u_xlat0.x);
    vs_TEXCOORD1.xyz = u_xlat0.xxx * u_xlat2.xyz;
    u_xlat0.x = u_xlat3.y * unity_MatrixV[1].z;
    u_xlat0.x = unity_MatrixV[0].z * u_xlat3.x + u_xlat0.x;
    u_xlat0.x = unity_MatrixV[2].z * u_xlat3.z + u_xlat0.x;
    u_xlat0.x = unity_MatrixV[3].z * u_xlat3.w + u_xlat0.x;
    u_xlat0.x = u_xlat0.x * _ProjectionParams.w;
    vs_TEXCOORD1.w = (-u_xlat0.x);
    return;
}

