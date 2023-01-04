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
layout(set = 0, binding = 10, std140) uniform VGlobals {
	vec4 _ProjectionParams;
	vec4 unity_SHBr;
	vec4 unity_SHBg;
	vec4 unity_SHBb;
	vec4 unity_SHC;
	mat4x4 unity_ObjectToWorld;
	mat4x4 unity_WorldToObject;
	mat4x4 unity_MatrixV;
	mat4x4 unity_MatrixVP;
	vec4 _MainTex_ST;
};
layout(location = 0) in highp vec4 in_POSITION0;
layout(location = 1) in highp vec3 in_NORMAL0;
layout(location = 2) in highp vec4 in_COLOR0;
layout(location = 3) in highp vec2 in_TEXCOORD0;
layout(location = 0) out highp vec3 vs_TEXCOORD0;
layout(location = 1) out highp vec3 vs_TEXCOORD1;
layout(location = 2) out highp vec4 vs_COLOR0;
layout(location = 3) out highp vec2 vs_TEXCOORD2;
highp vec4 vs_TEXCOORD3;
layout(location = 4) out highp vec3 vs_TEXCOORD4;
layout(location = 5) out highp vec4 vs_TEXCOORD6;
vec4 u_xlat0;
vec4 u_xlat1;
vec3 u_xlat2;
vec4 u_xlat3;
float u_xlat14;
void main()
{
    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
    u_xlat1 = u_xlat0 + unity_ObjectToWorld[3];
    vs_TEXCOORD1.xyz = unity_ObjectToWorld[3].xyz * in_POSITION0.www + u_xlat0.xyz;
    u_xlat0 = u_xlat1.yyyy * unity_MatrixVP[1];
    u_xlat0 = unity_MatrixVP[0] * u_xlat1.xxxx + u_xlat0;
    u_xlat0 = unity_MatrixVP[2] * u_xlat1.zzzz + u_xlat0;
    u_xlat0 = unity_MatrixVP[3] * u_xlat1.wwww + u_xlat0;
    gl_Position = u_xlat0;
    u_xlat2.x = dot(in_NORMAL0.xyz, unity_WorldToObject[0].xyz);
    u_xlat2.y = dot(in_NORMAL0.xyz, unity_WorldToObject[1].xyz);
    u_xlat2.z = dot(in_NORMAL0.xyz, unity_WorldToObject[2].xyz);
    u_xlat14 = dot(u_xlat2.xyz, u_xlat2.xyz);
    u_xlat14 = inversesqrt(u_xlat14);
    u_xlat2.xyz = vec3(u_xlat14) * u_xlat2.xyz;
    vs_TEXCOORD0.xyz = u_xlat2.xyz;
    vs_COLOR0 = in_COLOR0;
    vs_TEXCOORD2.xy = in_TEXCOORD0.xy * _MainTex_ST.xy + _MainTex_ST.zw;
    u_xlat14 = u_xlat1.y * unity_MatrixV[1].z;
    u_xlat14 = unity_MatrixV[0].z * u_xlat1.x + u_xlat14;
    u_xlat14 = unity_MatrixV[2].z * u_xlat1.z + u_xlat14;
    u_xlat14 = unity_MatrixV[3].z * u_xlat1.w + u_xlat14;
    vs_TEXCOORD3.z = (-u_xlat14);
    u_xlat3.xyz = u_xlat1.yyy * unity_MatrixVP[1].xyw;
    u_xlat3.xyz = unity_MatrixVP[0].xyw * u_xlat1.xxx + u_xlat3.xyz;
    u_xlat1.xyz = unity_MatrixVP[2].xyw * u_xlat1.zzz + u_xlat3.xyz;
    u_xlat1.xyz = unity_MatrixVP[3].xyw * u_xlat1.www + u_xlat1.xyz;
    vs_TEXCOORD3.w = u_xlat1.z;
    u_xlat3.x = float(0.5);
    u_xlat3.z = float(0.5);
    u_xlat3.y = _ProjectionParams.x;
    u_xlat1.xyz = u_xlat1.xyz * u_xlat3.xyz;
    u_xlat3.xyz = u_xlat0.xyw * u_xlat3.xyz;
    vs_TEXCOORD6.zw = u_xlat0.zw;
    u_xlat1.w = u_xlat1.y * 0.5;
    vs_TEXCOORD3.xy = u_xlat1.zz + u_xlat1.xw;
    u_xlat0.x = u_xlat2.y * u_xlat2.y;
    u_xlat0.x = u_xlat2.x * u_xlat2.x + (-u_xlat0.x);
    u_xlat1 = u_xlat2.yzzx * u_xlat2.xyzz;
    u_xlat2.x = dot(unity_SHBr, u_xlat1);
    u_xlat2.y = dot(unity_SHBg, u_xlat1);
    u_xlat2.z = dot(unity_SHBb, u_xlat1);
    vs_TEXCOORD4.xyz = unity_SHC.xyz * u_xlat0.xxx + u_xlat2.xyz;
    u_xlat3.w = u_xlat3.y * 0.5;
    vs_TEXCOORD6.xy = u_xlat3.zz + u_xlat3.xw;
    return;
}

