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
layout(set = 0, binding = 14, std140) uniform VGlobals {
	vec3 _WorldSpaceCameraPos;
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
	mat4x4 unity_MatrixVP;
	vec4 _MainTex_ST;
	vec4 _DetailAlbedoMap_ST;
	float _UVSec;
};
layout(location = 0) in highp vec4 in_POSITION0;
layout(location = 1) in highp vec3 in_NORMAL0;
layout(location = 2) in highp vec2 in_TEXCOORD0;
layout(location = 3) in highp vec2 in_TEXCOORD1;
layout(location = 0) out highp vec4 vs_TEXCOORD0;
layout(location = 1) out highp vec4 vs_TEXCOORD1;
layout(location = 2) out highp vec4 vs_TEXCOORD2;
layout(location = 3) out highp vec4 vs_TEXCOORD3;
layout(location = 4) out highp vec4 vs_TEXCOORD4;
layout(location = 5) out highp vec4 vs_TEXCOORD5;
layout(location = 6) out highp vec4 vs_TEXCOORD7;
vec4 u_xlat0;
vec4 u_xlat1;
bool u_xlatb1;
vec4 u_xlat2;
vec4 u_xlat3;
vec4 u_xlat4;
vec4 u_xlat5;
float u_xlat19;
void main()
{
    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
    u_xlat0 = u_xlat0 + unity_ObjectToWorld[3];
    u_xlat1 = u_xlat0.yyyy * unity_MatrixVP[1];
    u_xlat1 = unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
    u_xlat1 = unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
    u_xlat0 = unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
    gl_Position = u_xlat0;
    u_xlatb1 = _UVSec==0.0;
    u_xlat1.xy = (bool(u_xlatb1)) ? in_TEXCOORD0.xy : in_TEXCOORD1.xy;
    vs_TEXCOORD0.zw = u_xlat1.xy * _DetailAlbedoMap_ST.xy + _DetailAlbedoMap_ST.zw;
    vs_TEXCOORD0.xy = in_TEXCOORD0.xy * _MainTex_ST.xy + _MainTex_ST.zw;
    vs_TEXCOORD1.w = 0.0;
    u_xlat1.xyz = in_POSITION0.yyy * unity_ObjectToWorld[1].xyz;
    u_xlat1.xyz = unity_ObjectToWorld[0].xyz * in_POSITION0.xxx + u_xlat1.xyz;
    u_xlat1.xyz = unity_ObjectToWorld[2].xyz * in_POSITION0.zzz + u_xlat1.xyz;
    u_xlat1.xyz = unity_ObjectToWorld[3].xyz * in_POSITION0.www + u_xlat1.xyz;
    vs_TEXCOORD1.xyz = u_xlat1.xyz + (-_WorldSpaceCameraPos.xyz);
    u_xlat1.w = 0.0;
    vs_TEXCOORD2 = u_xlat1.wwwx;
    vs_TEXCOORD3 = u_xlat1.wwwy;
    vs_TEXCOORD4.w = u_xlat1.z;
    u_xlat2.x = dot(in_NORMAL0.xyz, unity_WorldToObject[0].xyz);
    u_xlat2.y = dot(in_NORMAL0.xyz, unity_WorldToObject[1].xyz);
    u_xlat2.z = dot(in_NORMAL0.xyz, unity_WorldToObject[2].xyz);
    u_xlat19 = dot(u_xlat2.xyz, u_xlat2.xyz);
    u_xlat19 = inversesqrt(u_xlat19);
    u_xlat2.xyz = vec3(u_xlat19) * u_xlat2.xyz;
    vs_TEXCOORD4.xyz = u_xlat2.xyz;
    u_xlat3 = (-u_xlat1.xxxx) + unity_4LightPosX0;
    u_xlat4 = (-u_xlat1.yyyy) + unity_4LightPosY0;
    u_xlat1 = (-u_xlat1.zzzz) + unity_4LightPosZ0;
    u_xlat5 = u_xlat2.yyyy * u_xlat4;
    u_xlat4 = u_xlat4 * u_xlat4;
    u_xlat4 = u_xlat3 * u_xlat3 + u_xlat4;
    u_xlat3 = u_xlat3 * u_xlat2.xxxx + u_xlat5;
    u_xlat3 = u_xlat1 * u_xlat2.zzzz + u_xlat3;
    u_xlat1 = u_xlat1 * u_xlat1 + u_xlat4;
    u_xlat1 = max(u_xlat1, vec4(9.99999997e-07, 9.99999997e-07, 9.99999997e-07, 9.99999997e-07));
    u_xlat4 = inversesqrt(u_xlat1);
    u_xlat1 = u_xlat1 * unity_4LightAtten0 + vec4(1.0, 1.0, 1.0, 1.0);
    u_xlat1 = vec4(1.0, 1.0, 1.0, 1.0) / u_xlat1;
    u_xlat3 = u_xlat3 * u_xlat4;
    u_xlat3 = max(u_xlat3, vec4(0.0, 0.0, 0.0, 0.0));
    u_xlat1 = u_xlat1 * u_xlat3;
    u_xlat3.xyz = u_xlat1.yyy * unity_LightColor[1].xyz;
    u_xlat3.xyz = unity_LightColor[0].xyz * u_xlat1.xxx + u_xlat3.xyz;
    u_xlat1.xyz = unity_LightColor[2].xyz * u_xlat1.zzz + u_xlat3.xyz;
    u_xlat1.xyz = unity_LightColor[3].xyz * u_xlat1.www + u_xlat1.xyz;
    u_xlat19 = u_xlat2.y * u_xlat2.y;
    u_xlat19 = u_xlat2.x * u_xlat2.x + (-u_xlat19);
    u_xlat2 = u_xlat2.yzzx * u_xlat2.xyzz;
    u_xlat3.x = dot(unity_SHBr, u_xlat2);
    u_xlat3.y = dot(unity_SHBg, u_xlat2);
    u_xlat3.z = dot(unity_SHBb, u_xlat2);
    u_xlat2.xyz = unity_SHC.xyz * vec3(u_xlat19) + u_xlat3.xyz;
    vs_TEXCOORD5.xyz = u_xlat1.xyz + u_xlat2.xyz;
    vs_TEXCOORD5.w = 0.0;
    u_xlat0.y = u_xlat0.y * _ProjectionParams.x;
    u_xlat1.xzw = u_xlat0.xwy * vec3(0.5, 0.5, 0.5);
    vs_TEXCOORD7.zw = u_xlat0.zw;
    vs_TEXCOORD7.xy = u_xlat1.zz + u_xlat1.xw;
    return;
}

