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
const uvec4 ImmCB_1[] = uvec4[4] (
	uvec4(0x3F800000, 0x0, 0x0, 0x0),
	uvec4(0x0, 0x3F800000, 0x0, 0x0),
	uvec4(0x0, 0x0, 0x3F800000, 0x0),
	uvec4(0x0, 0x0, 0x0, 0x3F800000));
layout(set = 1, binding = 1, std140) uniform VGlobals {
	vec4 _SinTime;
	mat4x4 unity_ObjectToWorld;
	mat4x4 unity_WorldToObject;
	mat4x4 unity_MatrixVP;
	mat4x4 unity_WorldToLight;
	float _Displacement;
	float _DisplacementScale;
	float _DisplacementSpeed;
	int _DisplacementIndex;
};
layout(set = 0, binding = 12) uniform mediump texture3D _DisplacementNoise;
layout(set = 0, binding = 13) uniform mediump texture2D _DisplacementRamp;
layout(location = 0) in highp vec4 in_POSITION0;
layout(location = 1) in highp vec3 in_NORMAL0;
layout(location = 2) in highp vec4 in_COLOR0;
layout(location = 0) out highp vec3 vs_TEXCOORD0;
layout(location = 1) out highp vec3 vs_TEXCOORD1;
layout(location = 2) out highp vec4 vs_COLOR0;
highp vec2 vs_TEXCOORD2;
highp vec4 vs_TEXCOORD3;
layout(set = 0, binding = 14) uniform mediump  sampler sampler_DisplacementNoise;
layout(set = 0, binding = 15) uniform mediump  sampler sampler_DisplacementRamp;
void main()
{
vec4 u_xlat0;
vec4 u_xlat1;
int u_xlati1;
vec4 u_xlat2;
float u_xlat10;
    u_xlat0.xyz = in_POSITION0.xyz * vec3(vec3(_DisplacementScale, _DisplacementScale, _DisplacementScale));
    u_xlat0.xyz = u_xlat0.xyz * in_COLOR0.zzz;
    u_xlat1.y = _SinTime.y * _DisplacementSpeed;
    u_xlat1.x = float(0.0);
    u_xlat1.z = float(0.0);
    u_xlat0.xyz = u_xlat1.xyz * in_COLOR0.yyy + u_xlat0.xyz;
    u_xlat0 = textureLod(sampler3D(_DisplacementNoise, sampler_DisplacementNoise), u_xlat0.xyz, 0.0);
    u_xlati1 = _DisplacementIndex;
    u_xlat0.x = dot(u_xlat0, uintBitsToFloat(ImmCB_1[u_xlati1]));
    u_xlat0.x = textureLod(sampler2D(_DisplacementRamp, sampler_DisplacementRamp), u_xlat0.xx, 0.0).x;
    u_xlat0.x = u_xlat0.x * _Displacement;
    u_xlat0.x = u_xlat0.x * in_COLOR0.x;
    u_xlat0.xyz = in_NORMAL0.xyz * u_xlat0.xxx + in_POSITION0.xyz;
    u_xlat1 = u_xlat0.yyyy * unity_ObjectToWorld[1];
    u_xlat1 = unity_ObjectToWorld[0] * u_xlat0.xxxx + u_xlat1;
    u_xlat0 = unity_ObjectToWorld[2] * u_xlat0.zzzz + u_xlat1;
    u_xlat1 = u_xlat0 + unity_ObjectToWorld[3];
    u_xlat2 = u_xlat1.yyyy * unity_MatrixVP[1];
    u_xlat2 = unity_MatrixVP[0] * u_xlat1.xxxx + u_xlat2;
    u_xlat2 = unity_MatrixVP[2] * u_xlat1.zzzz + u_xlat2;
    gl_Position = unity_MatrixVP[3] * u_xlat1.wwww + u_xlat2;
    u_xlat1.x = dot(in_NORMAL0.xyz, unity_WorldToObject[0].xyz);
    u_xlat1.y = dot(in_NORMAL0.xyz, unity_WorldToObject[1].xyz);
    u_xlat1.z = dot(in_NORMAL0.xyz, unity_WorldToObject[2].xyz);
    u_xlat10 = dot(u_xlat1.xyz, u_xlat1.xyz);
    u_xlat10 = inversesqrt(u_xlat10);
    vs_TEXCOORD0.xyz = vec3(u_xlat10) * u_xlat1.xyz;
    vs_TEXCOORD1.xyz = unity_ObjectToWorld[3].xyz * in_POSITION0.www + u_xlat0.xyz;
    u_xlat0 = unity_ObjectToWorld[3] * in_POSITION0.wwww + u_xlat0;
    vs_COLOR0 = in_COLOR0;
    u_xlat1.xy = u_xlat0.yy * unity_WorldToLight[1].xy;
    u_xlat0.xy = unity_WorldToLight[0].xy * u_xlat0.xx + u_xlat1.xy;
    u_xlat0.xy = unity_WorldToLight[2].xy * u_xlat0.zz + u_xlat0.xy;
    vs_TEXCOORD2.xy = unity_WorldToLight[3].xy * u_xlat0.ww + u_xlat0.xy;
    vs_TEXCOORD3 = vec4(0.0, 0.0, 0.0, 0.0);
    return;
}

