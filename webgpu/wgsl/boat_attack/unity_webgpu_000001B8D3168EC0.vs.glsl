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
	mat4x4 unity_MatrixVP;
	vec4 _WavingTint;
	vec4 _WaveAndDistance;
	vec4 _CameraPosition;
	vec3 _CameraRight;
	vec3 _CameraUp;
};
layout(location = 0) in highp vec4 in_POSITION0;
layout(location = 1) in highp vec4 in_TANGENT0;
layout(location = 2) in highp vec4 in_TEXCOORD0;
layout(location = 3) in highp vec4 in_COLOR0;
layout(location = 0) out highp vec4 vs_COLOR0;
layout(location = 1) out highp vec2 vs_TEXCOORD0;
layout(location = 2) out highp vec4 vs_TEXCOORD1;
void main()
{
vec4 u_xlat0;
bool u_xlatb0;
vec4 u_xlat1;
vec4 u_xlat2;
vec4 u_xlat3;
float u_xlat4;
float u_xlat12;
    u_xlat0.xyz = in_POSITION0.xyz + (-_CameraPosition.xyz);
    u_xlat0.x = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlatb0 = _WaveAndDistance.w<u_xlat0.x;
    u_xlat0.xy = (bool(u_xlatb0)) ? vec2(0.0, 0.0) : in_TANGENT0.xy;
    u_xlat0.xzw = u_xlat0.xxx * _CameraRight.xyz + in_POSITION0.xyz;
    u_xlat0.xyz = u_xlat0.yyy * _CameraUp.xyz + u_xlat0.xzw;
    u_xlat1.xy = u_xlat0.xz * _WaveAndDistance.yy;
    u_xlat2 = u_xlat1.yyyy * vec4(0.00600000005, 0.0199999996, 0.0199999996, 0.0500000007);
    u_xlat1 = u_xlat1.xxxx * vec4(0.0120000001, 0.0199999996, 0.0599999987, 0.0240000002) + u_xlat2;
    u_xlat1 = _WaveAndDistance.xxxx * vec4(1.20000005, 2.0, 1.60000002, 4.80000019) + u_xlat1;
    u_xlat1 = fract(u_xlat1);
    u_xlat1 = u_xlat1 * vec4(6.40884876, 6.40884876, 6.40884876, 6.40884876) + vec4(-3.14159274, -3.14159274, -3.14159274, -3.14159274);
    u_xlat2 = u_xlat1 * u_xlat1;
    u_xlat3 = u_xlat1 * u_xlat2;
    u_xlat1 = u_xlat3 * vec4(-0.161616161, -0.161616161, -0.161616161, -0.161616161) + u_xlat1;
    u_xlat3 = u_xlat2 * u_xlat3;
    u_xlat2 = u_xlat2 * u_xlat3;
    u_xlat1 = u_xlat3 * vec4(0.00833330024, 0.00833330024, 0.00833330024, 0.00833330024) + u_xlat1;
    u_xlat1 = u_xlat2 * vec4(-0.000198409994, -0.000198409994, -0.000198409994, -0.000198409994) + u_xlat1;
    u_xlat1 = u_xlat1 * u_xlat1;
    u_xlat1 = u_xlat1 * u_xlat1;
    u_xlat2 = u_xlat1 * in_TANGENT0.yyyy;
    u_xlat12 = dot(u_xlat1, vec4(0.674199879, 0.674199879, 0.269679934, 0.134839967));
    u_xlat12 = u_xlat12 * 0.699999988;
    u_xlat1.x = dot(u_xlat2, vec4(0.0240000002, 0.0399999991, -0.119999997, 0.0960000008));
    u_xlat1.z = dot(u_xlat2, vec4(0.00600000005, 0.0199999996, -0.0199999996, 0.100000001));
    u_xlat0.xz = (-u_xlat1.xz) * _WaveAndDistance.zz + u_xlat0.xz;
    u_xlat1 = u_xlat0.yyyy * unity_ObjectToWorld[1];
    u_xlat2.xyz = u_xlat0.xyz + (-_CameraPosition.xyz);
    u_xlat4 = dot(u_xlat2.xyz, u_xlat2.xyz);
    u_xlat4 = (-u_xlat4) + _WaveAndDistance.w;
    vs_COLOR0.w = dot(_CameraPosition.ww, vec2(u_xlat4));
    vs_COLOR0.w = clamp(vs_COLOR0.w, 0.0, 1.0);
    u_xlat1 = unity_ObjectToWorld[0] * u_xlat0.xxxx + u_xlat1;
    u_xlat1 = unity_ObjectToWorld[2] * u_xlat0.zzzz + u_xlat1;
    u_xlat0.xyz = u_xlat1.xyz + unity_ObjectToWorld[3].xyz;
    vs_TEXCOORD1 = unity_ObjectToWorld[3] * in_POSITION0.wwww + u_xlat1;
    u_xlat1 = u_xlat0.yyyy * unity_MatrixVP[1];
    u_xlat1 = unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
    u_xlat1 = unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
    gl_Position = u_xlat1 + unity_MatrixVP[3];
    u_xlat0.xyz = _WavingTint.xyz + vec3(-0.5, -0.5, -0.5);
    u_xlat0.xyz = vec3(u_xlat12) * u_xlat0.xyz + vec3(0.5, 0.5, 0.5);
    u_xlat0.xyz = u_xlat0.xyz * in_COLOR0.xyz;
    vs_COLOR0.xyz = u_xlat0.xyz + u_xlat0.xyz;
    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
    return;
}

