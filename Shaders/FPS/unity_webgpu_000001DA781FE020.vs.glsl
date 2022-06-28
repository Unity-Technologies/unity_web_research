#version 440
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shading_language_420pack : require
const int UNITY_RUNTIME_INSTANCING_ARRAY_SIZE = 2;

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
layout(set = 0, binding = 12, std140) uniform VGlobals {
	vec4 _ProjectionParams;
	vec4 unity_4LightPosX0;
	vec4 unity_4LightPosY0;
	vec4 unity_4LightPosZ0;
	vec4 unity_4LightAtten0;
	vec4 unity_LightColor[8];
	mat4x4 unity_MatrixV;
	mat4x4 unity_MatrixVP;
	vec4 _MainTex_ST;
};
layout(set = 0, binding = 1, std140) uniform UnityDrawCallInfo {
	int unity_BaseInstanceID;
	int unity_InstanceCount;
};
struct unity_Builtins0Array_Type {
	mat4x4 unity_ObjectToWorldArray;
	mat4x4 unity_WorldToObjectArray;
};
layout(set = 0, binding = 13, std140) uniform UnityInstancing_PerDraw0 {
	unity_Builtins0Array_Type unity_Builtins0Array[UNITY_RUNTIME_INSTANCING_ARRAY_SIZE];
};
struct unity_Builtins2Array_Type {
	vec4 unity_SHArArray;
	vec4 unity_SHAgArray;
	vec4 unity_SHAbArray;
	vec4 unity_SHBrArray;
	vec4 unity_SHBgArray;
	vec4 unity_SHBbArray;
	vec4 unity_SHCArray;
};
layout(set = 0, binding = 2, std140) uniform UnityInstancing_PerDraw2 {
	unity_Builtins2Array_Type unity_Builtins2Array[UNITY_RUNTIME_INSTANCING_ARRAY_SIZE];
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
layout(location = 6) flat out highp uint vs_SV_InstanceID0;
vec4 u_xlat0;
int u_xlati0;
vec4 u_xlat1;
vec4 u_xlat2;
vec4 u_xlat3;
vec4 u_xlat4;
vec4 u_xlat5;
vec4 u_xlat6;
vec3 u_xlat7;
int u_xlati7;
float u_xlat22;
void main()
{
    u_xlati0 = gl_InstanceIndex + unity_BaseInstanceID;
    u_xlati7 = u_xlati0 << 3;
    u_xlati0 = u_xlati0 * 7;
    u_xlat1 = in_POSITION0.yyyy * unity_Builtins0Array[u_xlati7 / 8].unity_ObjectToWorldArray[1];
    u_xlat1 = unity_Builtins0Array[u_xlati7 / 8].unity_ObjectToWorldArray[0] * in_POSITION0.xxxx + u_xlat1;
    u_xlat1 = unity_Builtins0Array[u_xlati7 / 8].unity_ObjectToWorldArray[2] * in_POSITION0.zzzz + u_xlat1;
    u_xlat2 = u_xlat1 + unity_Builtins0Array[u_xlati7 / 8].unity_ObjectToWorldArray[3];
    u_xlat1.xyz = unity_Builtins0Array[u_xlati7 / 8].unity_ObjectToWorldArray[3].xyz * in_POSITION0.www + u_xlat1.xyz;
    u_xlat3 = u_xlat2.yyyy * unity_MatrixVP[1];
    u_xlat3 = unity_MatrixVP[0] * u_xlat2.xxxx + u_xlat3;
    u_xlat3 = unity_MatrixVP[2] * u_xlat2.zzzz + u_xlat3;
    u_xlat3 = unity_MatrixVP[3] * u_xlat2.wwww + u_xlat3;
    gl_Position = u_xlat3;
    u_xlat4.x = dot(in_NORMAL0.xyz, unity_Builtins0Array[u_xlati7 / 8].unity_WorldToObjectArray[0].xyz);
    u_xlat4.y = dot(in_NORMAL0.xyz, unity_Builtins0Array[u_xlati7 / 8].unity_WorldToObjectArray[1].xyz);
    u_xlat4.z = dot(in_NORMAL0.xyz, unity_Builtins0Array[u_xlati7 / 8].unity_WorldToObjectArray[2].xyz);
    u_xlat7.x = dot(u_xlat4.xyz, u_xlat4.xyz);
    u_xlat7.x = inversesqrt(u_xlat7.x);
    u_xlat7.xyz = u_xlat7.xxx * u_xlat4.xyz;
    vs_TEXCOORD0.xyz = u_xlat7.xyz;
    vs_TEXCOORD1.xyz = u_xlat1.xyz;
    vs_COLOR0 = in_COLOR0;
    vs_TEXCOORD2.xy = in_TEXCOORD0.xy * _MainTex_ST.xy + _MainTex_ST.zw;
    u_xlat22 = u_xlat2.y * unity_MatrixV[1].z;
    u_xlat22 = unity_MatrixV[0].z * u_xlat2.x + u_xlat22;
    u_xlat22 = unity_MatrixV[2].z * u_xlat2.z + u_xlat22;
    u_xlat22 = unity_MatrixV[3].z * u_xlat2.w + u_xlat22;
    vs_TEXCOORD3.z = (-u_xlat22);
    u_xlat4.xyz = u_xlat2.yyy * unity_MatrixVP[1].xyw;
    u_xlat4.xyz = unity_MatrixVP[0].xyw * u_xlat2.xxx + u_xlat4.xyz;
    u_xlat2.xyz = unity_MatrixVP[2].xyw * u_xlat2.zzz + u_xlat4.xyz;
    u_xlat2.xyz = unity_MatrixVP[3].xyw * u_xlat2.www + u_xlat2.xyz;
    vs_TEXCOORD3.w = u_xlat2.z;
    u_xlat4.x = float(0.5);
    u_xlat4.z = float(0.5);
    u_xlat4.y = _ProjectionParams.x;
    u_xlat2.xyz = u_xlat2.xyz * u_xlat4.xyz;
    u_xlat4.xyz = u_xlat3.xyw * u_xlat4.xyz;
    vs_TEXCOORD6.zw = u_xlat3.zw;
    u_xlat2.w = u_xlat2.y * 0.5;
    vs_TEXCOORD3.xy = u_xlat2.zz + u_xlat2.xw;
    u_xlat22 = u_xlat7.y * u_xlat7.y;
    u_xlat22 = u_xlat7.x * u_xlat7.x + (-u_xlat22);
    u_xlat2 = u_xlat7.yzzx * u_xlat7.xyzz;
    u_xlat3.x = dot(unity_Builtins2Array[u_xlati0 / 7].unity_SHBrArray, u_xlat2);
    u_xlat3.y = dot(unity_Builtins2Array[u_xlati0 / 7].unity_SHBgArray, u_xlat2);
    u_xlat3.z = dot(unity_Builtins2Array[u_xlati0 / 7].unity_SHBbArray, u_xlat2);
    u_xlat2.xyz = unity_Builtins2Array[u_xlati0 / 7].unity_SHCArray.xyz * vec3(u_xlat22) + u_xlat3.xyz;
    u_xlat3 = (-u_xlat1.yyyy) + unity_4LightPosY0;
    u_xlat5 = u_xlat7.yyyy * u_xlat3;
    u_xlat3 = u_xlat3 * u_xlat3;
    u_xlat6 = (-u_xlat1.xxxx) + unity_4LightPosX0;
    u_xlat1 = (-u_xlat1.zzzz) + unity_4LightPosZ0;
    u_xlat5 = u_xlat6 * u_xlat7.xxxx + u_xlat5;
    u_xlat0 = u_xlat1 * u_xlat7.zzzz + u_xlat5;
    u_xlat3 = u_xlat6 * u_xlat6 + u_xlat3;
    u_xlat1 = u_xlat1 * u_xlat1 + u_xlat3;
    u_xlat1 = max(u_xlat1, vec4(9.99999997e-07, 9.99999997e-07, 9.99999997e-07, 9.99999997e-07));
    u_xlat3 = inversesqrt(u_xlat1);
    u_xlat1 = u_xlat1 * unity_4LightAtten0 + vec4(1.0, 1.0, 1.0, 1.0);
    u_xlat1 = vec4(1.0, 1.0, 1.0, 1.0) / u_xlat1;
    u_xlat0 = u_xlat0 * u_xlat3;
    u_xlat0 = max(u_xlat0, vec4(0.0, 0.0, 0.0, 0.0));
    u_xlat0 = u_xlat1 * u_xlat0;
    u_xlat1.xyz = u_xlat0.yyy * unity_LightColor[1].xyz;
    u_xlat1.xyz = unity_LightColor[0].xyz * u_xlat0.xxx + u_xlat1.xyz;
    u_xlat0.xyz = unity_LightColor[2].xyz * u_xlat0.zzz + u_xlat1.xyz;
    u_xlat0.xyz = unity_LightColor[3].xyz * u_xlat0.www + u_xlat0.xyz;
    vs_TEXCOORD4.xyz = u_xlat2.xyz + u_xlat0.xyz;
    u_xlat4.w = u_xlat4.y * 0.5;
    vs_TEXCOORD6.xy = u_xlat4.zz + u_xlat4.xw;
    vs_SV_InstanceID0 =  uint(gl_InstanceIndex);
    return;
}

