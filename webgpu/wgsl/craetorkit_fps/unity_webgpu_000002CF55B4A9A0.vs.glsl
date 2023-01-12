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
layout(location = 0) out highp vec4 vs_TEXCOORD0;
layout(location = 1) out highp vec4 vs_TEXCOORD1;
layout(location = 2) out highp vec4 vs_TEXCOORD2;
layout(location = 3) out highp vec4 vs_TEXCOORD3;
layout(location = 4) out highp vec4 vs_TEXCOORD4;
highp vec4 vs_TEXCOORD5;
highp vec3 vs_TEXCOORD6;
layout(location = 5) out highp vec3 vs_TEXCOORD7;
void main()
{
vec4 u_xlat0;
vec4 u_xlat1;
vec4 u_xlat2;
vec3 u_xlat3;
vec4 u_xlat4;
vec3 u_xlat5;
float u_xlat18;
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
    vs_TEXCOORD1.w = u_xlat0.x;
    u_xlat3.xyz = in_TANGENT0.yyy * unity_ObjectToWorld[1].yzx;
    u_xlat3.xyz = unity_ObjectToWorld[0].yzx * in_TANGENT0.xxx + u_xlat3.xyz;
    u_xlat3.xyz = unity_ObjectToWorld[2].yzx * in_TANGENT0.zzz + u_xlat3.xyz;
    u_xlat18 = dot(u_xlat3.xyz, u_xlat3.xyz);
    u_xlat18 = inversesqrt(u_xlat18);
    u_xlat3.xyz = vec3(u_xlat18) * u_xlat3.xyz;
    vs_TEXCOORD1.x = u_xlat3.z;
    u_xlat4.x = dot(in_NORMAL0.xyz, unity_WorldToObject[0].xyz);
    u_xlat4.y = dot(in_NORMAL0.xyz, unity_WorldToObject[1].xyz);
    u_xlat4.z = dot(in_NORMAL0.xyz, unity_WorldToObject[2].xyz);
    u_xlat18 = dot(u_xlat4.xyz, u_xlat4.xyz);
    u_xlat18 = inversesqrt(u_xlat18);
    u_xlat4 = vec4(u_xlat18) * u_xlat4.xyzz;
    u_xlat5.xyz = u_xlat3.xyz * u_xlat4.wxy;
    u_xlat5.xyz = u_xlat4.ywx * u_xlat3.yzx + (-u_xlat5.xyz);
    u_xlat18 = in_TANGENT0.w * unity_WorldTransformParams.w;
    u_xlat5.xyz = vec3(u_xlat18) * u_xlat5.xyz;
    vs_TEXCOORD1.y = u_xlat5.x;
    vs_TEXCOORD1.z = u_xlat4.x;
    vs_TEXCOORD2.x = u_xlat3.x;
    vs_TEXCOORD3.x = u_xlat3.y;
    vs_TEXCOORD2.w = u_xlat0.y;
    vs_TEXCOORD2.y = u_xlat5.y;
    vs_TEXCOORD3.y = u_xlat5.z;
    vs_TEXCOORD2.z = u_xlat4.y;
    vs_TEXCOORD3.w = u_xlat0.z;
    u_xlat0.xyz = u_xlat0.xyz + (-_WorldSpaceCameraPos.xyz);
    u_xlat0.x = dot(u_xlat0.xyz, u_xlat0.xyz);
    vs_TEXCOORD6.z = sqrt(u_xlat0.x);
    vs_TEXCOORD3.z = u_xlat4.w;
    u_xlat0.x = u_xlat1.y * unity_MatrixV[1].z;
    u_xlat0.x = unity_MatrixV[0].z * u_xlat1.x + u_xlat0.x;
    u_xlat0.x = unity_MatrixV[2].z * u_xlat1.z + u_xlat0.x;
    u_xlat0.x = unity_MatrixV[3].z * u_xlat1.w + u_xlat0.x;
    vs_TEXCOORD4.z = (-u_xlat0.x);
    u_xlat0.x = u_xlat2.y * _ProjectionParams.x;
    u_xlat0.w = u_xlat0.x * 0.5;
    u_xlat0.xz = u_xlat2.xw * vec2(0.5, 0.5);
    vs_TEXCOORD4.xy = u_xlat0.zz + u_xlat0.xw;
    vs_TEXCOORD5.xy = u_xlat2.xy * vec2(0.5, -0.5) + u_xlat0.zz;
    vs_TEXCOORD4.w = u_xlat2.w;
    vs_TEXCOORD5.zw = u_xlat2.zw;
    vs_TEXCOORD6.xy = in_POSITION0.xz;
    u_xlat0.x = u_xlat4.y * u_xlat4.y;
    u_xlat0.x = u_xlat4.x * u_xlat4.x + (-u_xlat0.x);
    u_xlat1 = u_xlat4.ywzx * u_xlat4;
    u_xlat2.x = dot(unity_SHBr, u_xlat1);
    u_xlat2.y = dot(unity_SHBg, u_xlat1);
    u_xlat2.z = dot(unity_SHBb, u_xlat1);
    vs_TEXCOORD7.xyz = unity_SHC.xyz * u_xlat0.xxx + u_xlat2.xyz;
    return;
}

