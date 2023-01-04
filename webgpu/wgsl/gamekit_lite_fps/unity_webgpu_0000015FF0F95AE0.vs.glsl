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
	mat4x4 unity_ObjectToWorld;
	mat4x4 unity_MatrixVP;
	vec4 _WavingTint;
	vec4 _WaveAndDistance;
	vec4 _CameraPosition;
};
layout(location = 0) in highp vec4 in_POSITION0;
layout(location = 1) in highp vec4 in_TEXCOORD0;
layout(location = 2) in highp vec4 in_COLOR0;
layout(location = 0) out highp vec4 vs_COLOR0;
layout(location = 1) out highp vec2 vs_TEXCOORD0;
layout(location = 2) out highp vec4 vs_TEXCOORD1;
vec4 u_xlat0;
vec4 u_xlat1;
vec4 u_xlat2;
vec3 u_xlat3;
void main()
{
    u_xlat0.xy = in_POSITION0.xz * _WaveAndDistance.yy;
    u_xlat1 = u_xlat0.yyyy * vec4(0.00600000005, 0.0199999996, 0.0199999996, 0.0500000007);
    u_xlat0 = u_xlat0.xxxx * vec4(0.0120000001, 0.0199999996, 0.0599999987, 0.0240000002) + u_xlat1;
    u_xlat0 = _WaveAndDistance.xxxx * vec4(1.20000005, 2.0, 1.60000002, 4.80000019) + u_xlat0;
    u_xlat0 = fract(u_xlat0);
    u_xlat0 = u_xlat0 * vec4(6.40884876, 6.40884876, 6.40884876, 6.40884876) + vec4(-3.14159274, -3.14159274, -3.14159274, -3.14159274);
    u_xlat1 = u_xlat0 * u_xlat0;
    u_xlat2 = u_xlat0 * u_xlat1;
    u_xlat0 = u_xlat2 * vec4(-0.161616161, -0.161616161, -0.161616161, -0.161616161) + u_xlat0;
    u_xlat2 = u_xlat1 * u_xlat2;
    u_xlat1 = u_xlat1 * u_xlat2;
    u_xlat0 = u_xlat2 * vec4(0.00833330024, 0.00833330024, 0.00833330024, 0.00833330024) + u_xlat0;
    u_xlat0 = u_xlat1 * vec4(-0.000198409994, -0.000198409994, -0.000198409994, -0.000198409994) + u_xlat0;
    u_xlat0 = u_xlat0 * u_xlat0;
    u_xlat0 = u_xlat0 * u_xlat0;
    u_xlat1.x = in_COLOR0.w * _WaveAndDistance.z;
    u_xlat1 = u_xlat0 * u_xlat1.xxxx;
    u_xlat0.x = dot(u_xlat0, vec4(0.674199879, 0.674199879, 0.269679934, 0.134839967));
    u_xlat0.x = u_xlat0.x * 0.699999988;
    u_xlat2.x = dot(u_xlat1, vec4(0.0240000002, 0.0399999991, -0.119999997, 0.0960000008));
    u_xlat2.z = dot(u_xlat1, vec4(0.00600000005, 0.0199999996, -0.0199999996, 0.100000001));
    u_xlat1.xz = (-u_xlat2.xz) * _WaveAndDistance.zz + in_POSITION0.xz;
    u_xlat2 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
    u_xlat2 = unity_ObjectToWorld[0] * u_xlat1.xxxx + u_xlat2;
    u_xlat2 = unity_ObjectToWorld[2] * u_xlat1.zzzz + u_xlat2;
    u_xlat3.xyz = u_xlat2.xyz + unity_ObjectToWorld[3].xyz;
    vs_TEXCOORD1 = unity_ObjectToWorld[3] * in_POSITION0.wwww + u_xlat2;
    u_xlat2 = u_xlat3.yyyy * unity_MatrixVP[1];
    u_xlat2 = unity_MatrixVP[0] * u_xlat3.xxxx + u_xlat2;
    u_xlat2 = unity_MatrixVP[2] * u_xlat3.zzzz + u_xlat2;
    gl_Position = u_xlat2 + unity_MatrixVP[3];
    u_xlat1.y = in_POSITION0.y;
    u_xlat3.xyz = u_xlat1.xyz + (-_CameraPosition.xyz);
    u_xlat3.x = dot(u_xlat3.xyz, u_xlat3.xyz);
    u_xlat3.x = (-u_xlat3.x) + _WaveAndDistance.w;
    vs_COLOR0.w = dot(_CameraPosition.ww, u_xlat3.xx);
    vs_COLOR0.w = clamp(vs_COLOR0.w, 0.0, 1.0);
    u_xlat3.xyz = _WavingTint.xyz + vec3(-0.5, -0.5, -0.5);
    u_xlat0.xyz = u_xlat0.xxx * u_xlat3.xyz + vec3(0.5, 0.5, 0.5);
    u_xlat0.xyz = u_xlat0.xyz * in_COLOR0.xyz;
    vs_COLOR0.xyz = u_xlat0.xyz + u_xlat0.xyz;
    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
    return;
}

