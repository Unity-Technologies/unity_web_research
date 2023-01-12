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
	vec4 unity_4LightPosX0;
	vec4 unity_4LightPosY0;
	vec4 unity_4LightPosZ0;
	vec4 unity_4LightAtten0;
	vec4 unity_LightColor[8];
	vec4 unity_SHBr;
	vec4 unity_SHBg;
	vec4 unity_SHBb;
	vec4 unity_SHC;
	mat4x4 unity_ObjectToWorld;
	mat4x4 unity_WorldToObject;
	vec4 unity_WorldTransformParams;
	mat4x4 unity_MatrixV;
	mat4x4 unity_MatrixVP;
	vec4 _MainTex_ST;
	vec4 _Normal_ST;
};
layout(location = 0) in highp vec4 in_POSITION0;
layout(location = 1) in highp vec4 in_TANGENT0;
layout(location = 2) in highp vec3 in_NORMAL0;
layout(location = 3) in highp vec4 in_TEXCOORD0;
layout(location = 4) in highp vec4 in_COLOR0;
layout(location = 0) out highp vec4 vs_TEXCOORD0;
layout(location = 1) out highp vec4 vs_TEXCOORD1;
layout(location = 2) out highp vec4 vs_TEXCOORD2;
layout(location = 3) out highp vec4 vs_TEXCOORD3;
layout(location = 4) out highp vec4 vs_COLOR0;
highp vec4 vs_TEXCOORD4;
layout(location = 5) out highp vec3 vs_TEXCOORD5;
layout(location = 6) out highp float vs_TEXCOORD6;
layout(location = 7) out highp vec4 vs_TEXCOORD7;
highp vec4 vs_TEXCOORD8;
void main()
{
vec4 u_xlat0;
vec4 u_xlat1;
vec4 u_xlat2;
vec4 u_xlat3;
vec4 u_xlat4;
vec4 u_xlat5;
vec4 u_xlat6;
float u_xlat21;
float u_xlat24;
    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
    u_xlat1 = u_xlat0 + unity_ObjectToWorld[3];
    u_xlat0.xyz = unity_ObjectToWorld[3].xyz * in_POSITION0.www + u_xlat0.xyz;
    u_xlat2 = u_xlat1.yyyy * unity_MatrixVP[1];
    u_xlat2 = unity_MatrixVP[0] * u_xlat1.xxxx + u_xlat2;
    u_xlat2 = unity_MatrixVP[2] * u_xlat1.zzzz + u_xlat2;
    u_xlat2 = unity_MatrixVP[3] * u_xlat1.wwww + u_xlat2;
    gl_Position = u_xlat2;
    vs_TEXCOORD0.xy = in_TEXCOORD0.xy * _MainTex_ST.xy + _MainTex_ST.zw;
    vs_TEXCOORD0.zw = in_TEXCOORD0.xy * _Normal_ST.xy + _Normal_ST.zw;
    u_xlat3.xyz = in_TANGENT0.yyy * unity_ObjectToWorld[1].yzx;
    u_xlat3.xyz = unity_ObjectToWorld[0].yzx * in_TANGENT0.xxx + u_xlat3.xyz;
    u_xlat3.xyz = unity_ObjectToWorld[2].yzx * in_TANGENT0.zzz + u_xlat3.xyz;
    u_xlat21 = dot(u_xlat3.xyz, u_xlat3.xyz);
    u_xlat21 = inversesqrt(u_xlat21);
    u_xlat3.xyz = vec3(u_xlat21) * u_xlat3.xyz;
    vs_TEXCOORD1.x = u_xlat3.z;
    u_xlat21 = in_TANGENT0.w * unity_WorldTransformParams.w;
    u_xlat4.x = dot(in_NORMAL0.xyz, unity_WorldToObject[0].xyz);
    u_xlat4.y = dot(in_NORMAL0.xyz, unity_WorldToObject[1].xyz);
    u_xlat4.z = dot(in_NORMAL0.xyz, unity_WorldToObject[2].xyz);
    u_xlat24 = dot(u_xlat4.xyz, u_xlat4.xyz);
    u_xlat24 = inversesqrt(u_xlat24);
    u_xlat4 = vec4(u_xlat24) * u_xlat4.xyzz;
    u_xlat5.xyz = u_xlat3.xyz * u_xlat4.wxy;
    u_xlat5.xyz = u_xlat4.ywx * u_xlat3.yzx + (-u_xlat5.xyz);
    u_xlat5.xyz = vec3(u_xlat21) * u_xlat5.xyz;
    vs_TEXCOORD1.y = u_xlat5.x;
    vs_TEXCOORD1.w = u_xlat0.x;
    vs_TEXCOORD1.z = u_xlat4.x;
    vs_TEXCOORD2.x = u_xlat3.x;
    vs_TEXCOORD3.x = u_xlat3.y;
    vs_TEXCOORD2.y = u_xlat5.y;
    vs_TEXCOORD3.y = u_xlat5.z;
    vs_TEXCOORD2.w = u_xlat0.y;
    vs_TEXCOORD2.z = u_xlat4.y;
    vs_TEXCOORD3.w = u_xlat0.z;
    vs_TEXCOORD3.z = u_xlat4.w;
    vs_COLOR0 = in_COLOR0;
    u_xlat21 = u_xlat1.y * unity_MatrixV[1].z;
    u_xlat21 = unity_MatrixV[0].z * u_xlat1.x + u_xlat21;
    u_xlat21 = unity_MatrixV[2].z * u_xlat1.z + u_xlat21;
    u_xlat21 = unity_MatrixV[3].z * u_xlat1.w + u_xlat21;
    vs_TEXCOORD4.z = (-u_xlat21);
    u_xlat3.xyz = u_xlat1.yyy * unity_MatrixVP[1].xyw;
    u_xlat3.xyz = unity_MatrixVP[0].xyw * u_xlat1.xxx + u_xlat3.xyz;
    u_xlat1.xyz = unity_MatrixVP[2].xyw * u_xlat1.zzz + u_xlat3.xyz;
    u_xlat1.xyz = unity_MatrixVP[3].xyw * u_xlat1.www + u_xlat1.xyz;
    vs_TEXCOORD4.w = u_xlat1.z;
    u_xlat3.x = float(0.5);
    u_xlat3.z = float(0.5);
    u_xlat3.y = _ProjectionParams.x;
    u_xlat1.xyz = u_xlat1.xyz * u_xlat3.xyz;
    u_xlat3.xyz = u_xlat2.xyw * u_xlat3.xyz;
    u_xlat1.w = u_xlat1.y * 0.5;
    vs_TEXCOORD4.xy = u_xlat1.zz + u_xlat1.xw;
    u_xlat1 = (-u_xlat0.xxxx) + unity_4LightPosX0;
    u_xlat5 = (-u_xlat0.yyyy) + unity_4LightPosY0;
    u_xlat0 = (-u_xlat0.zzzz) + unity_4LightPosZ0;
    u_xlat6 = u_xlat4.yyyy * u_xlat5;
    u_xlat5 = u_xlat5 * u_xlat5;
    u_xlat5 = u_xlat1 * u_xlat1 + u_xlat5;
    u_xlat1 = u_xlat1 * u_xlat4.xxxx + u_xlat6;
    u_xlat1 = u_xlat0 * u_xlat4.wwzw + u_xlat1;
    u_xlat0 = u_xlat0 * u_xlat0 + u_xlat5;
    u_xlat0 = max(u_xlat0, vec4(9.99999997e-07, 9.99999997e-07, 9.99999997e-07, 9.99999997e-07));
    u_xlat5 = inversesqrt(u_xlat0);
    u_xlat0 = u_xlat0 * unity_4LightAtten0 + vec4(1.0, 1.0, 1.0, 1.0);
    u_xlat0 = vec4(1.0, 1.0, 1.0, 1.0) / u_xlat0;
    u_xlat1 = u_xlat1 * u_xlat5;
    u_xlat1 = max(u_xlat1, vec4(0.0, 0.0, 0.0, 0.0));
    u_xlat0 = u_xlat0 * u_xlat1;
    u_xlat1.xyz = u_xlat0.yyy * unity_LightColor[1].xyz;
    u_xlat1.xyz = unity_LightColor[0].xyz * u_xlat0.xxx + u_xlat1.xyz;
    u_xlat0.xyz = unity_LightColor[2].xyz * u_xlat0.zzz + u_xlat1.xyz;
    u_xlat0.xyz = unity_LightColor[3].xyz * u_xlat0.www + u_xlat0.xyz;
    u_xlat21 = u_xlat4.y * u_xlat4.y;
    u_xlat21 = u_xlat4.x * u_xlat4.x + (-u_xlat21);
    u_xlat1 = u_xlat4.ywzx * u_xlat4;
    u_xlat4.x = dot(unity_SHBr, u_xlat1);
    u_xlat4.y = dot(unity_SHBg, u_xlat1);
    u_xlat4.z = dot(unity_SHBb, u_xlat1);
    u_xlat1.xyz = unity_SHC.xyz * vec3(u_xlat21) + u_xlat4.xyz;
    vs_TEXCOORD5.xyz = u_xlat0.xyz + u_xlat1.xyz;
    vs_TEXCOORD6 = u_xlat2.z;
    vs_TEXCOORD7.zw = u_xlat2.zw;
    u_xlat3.w = u_xlat3.y * 0.5;
    vs_TEXCOORD7.xy = u_xlat3.zz + u_xlat3.xw;
    vs_TEXCOORD8 = vec4(0.0, 0.0, 0.0, 0.0);
    return;
}

