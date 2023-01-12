#version 440
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shading_language_420pack : require
const int UNITY_RUNTIME_INSTANCING_ARRAY_SIZE = 59495;

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
	vec4 unity_WorldTransformParams;
	mat4x4 unity_MatrixV;
	mat4x4 unity_MatrixVP;
	vec4 _MainTex_ST;
	vec4 _Normal_ST;
};
layout(set = 1, binding = 2, std140) uniform UnityDrawCallInfo {
	int unity_BaseInstanceID;
	int unity_InstanceCount;
};
struct unity_Builtins0Array_Type {
	mat4x4 unity_ObjectToWorldArray;
	mat4x4 unity_WorldToObjectArray;
};
layout(set = 1, binding = 3, std140) uniform UnityInstancing_PerDraw0 {
	unity_Builtins0Array_Type unity_Builtins0Array[UNITY_RUNTIME_INSTANCING_ARRAY_SIZE];
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
layout(location = 5) out highp vec4 vs_TEXCOORD7;
highp vec4 vs_TEXCOORD8;
highp uint vs_SV_InstanceID0;
void main()
{
vec4 u_xlat0;
int u_xlati0;
vec4 u_xlat1;
vec4 u_xlat2;
vec3 u_xlat3;
vec3 u_xlat4;
vec3 u_xlat5;
vec3 u_xlat6;
float u_xlat21;
    u_xlati0 = gl_InstanceIndex + unity_BaseInstanceID;
    u_xlati0 = u_xlati0 << (3 & int(0x1F));
    u_xlat1 = in_POSITION0.yyyy * unity_Builtins0Array[u_xlati0 / 8].unity_ObjectToWorldArray[1];
    u_xlat1 = unity_Builtins0Array[u_xlati0 / 8].unity_ObjectToWorldArray[0] * in_POSITION0.xxxx + u_xlat1;
    u_xlat1 = unity_Builtins0Array[u_xlati0 / 8].unity_ObjectToWorldArray[2] * in_POSITION0.zzzz + u_xlat1;
    u_xlat2 = u_xlat1 + unity_Builtins0Array[u_xlati0 / 8].unity_ObjectToWorldArray[3];
    u_xlat6.xyz = unity_Builtins0Array[u_xlati0 / 8].unity_ObjectToWorldArray[3].xyz * in_POSITION0.www + u_xlat1.xyz;
    u_xlat1 = u_xlat2.yyyy * unity_MatrixVP[1];
    u_xlat1 = unity_MatrixVP[0] * u_xlat2.xxxx + u_xlat1;
    u_xlat1 = unity_MatrixVP[2] * u_xlat2.zzzz + u_xlat1;
    u_xlat1 = unity_MatrixVP[3] * u_xlat2.wwww + u_xlat1;
    gl_Position = u_xlat1;
    vs_TEXCOORD0.xy = in_TEXCOORD0.xy * _MainTex_ST.xy + _MainTex_ST.zw;
    vs_TEXCOORD0.zw = in_TEXCOORD0.xy * _Normal_ST.xy + _Normal_ST.zw;
    u_xlat3.y = dot(in_NORMAL0.xyz, unity_Builtins0Array[u_xlati0 / 8].unity_WorldToObjectArray[0].xyz);
    u_xlat3.z = dot(in_NORMAL0.xyz, unity_Builtins0Array[u_xlati0 / 8].unity_WorldToObjectArray[1].xyz);
    u_xlat3.x = dot(in_NORMAL0.xyz, unity_Builtins0Array[u_xlati0 / 8].unity_WorldToObjectArray[2].xyz);
    u_xlat21 = dot(u_xlat3.xyz, u_xlat3.xyz);
    u_xlat21 = inversesqrt(u_xlat21);
    u_xlat3.xyz = vec3(u_xlat21) * u_xlat3.xyz;
    u_xlat4.xyz = in_TANGENT0.yyy * unity_Builtins0Array[u_xlati0 / 8].unity_ObjectToWorldArray[1].yzx;
    u_xlat4.xyz = unity_Builtins0Array[u_xlati0 / 8].unity_ObjectToWorldArray[0].yzx * in_TANGENT0.xxx + u_xlat4.xyz;
    u_xlat4.xyz = unity_Builtins0Array[u_xlati0 / 8].unity_ObjectToWorldArray[2].yzx * in_TANGENT0.zzz + u_xlat4.xyz;
    u_xlat0.x = dot(u_xlat4.xyz, u_xlat4.xyz);
    u_xlat0.x = inversesqrt(u_xlat0.x);
    u_xlat4.xyz = u_xlat0.xxx * u_xlat4.xyz;
    u_xlat5.xyz = u_xlat3.xyz * u_xlat4.xyz;
    u_xlat5.xyz = u_xlat3.zxy * u_xlat4.yzx + (-u_xlat5.xyz);
    u_xlat0.x = in_TANGENT0.w * unity_WorldTransformParams.w;
    u_xlat5.xyz = u_xlat0.xxx * u_xlat5.xyz;
    vs_TEXCOORD1.y = u_xlat5.x;
    vs_TEXCOORD1.x = u_xlat4.z;
    vs_TEXCOORD1.z = u_xlat3.y;
    vs_TEXCOORD1.w = u_xlat6.x;
    vs_TEXCOORD2.x = u_xlat4.x;
    vs_TEXCOORD3.x = u_xlat4.y;
    vs_TEXCOORD2.z = u_xlat3.z;
    vs_TEXCOORD3.z = u_xlat3.x;
    vs_TEXCOORD2.w = u_xlat6.y;
    vs_TEXCOORD3.w = u_xlat6.z;
    vs_TEXCOORD2.y = u_xlat5.y;
    vs_TEXCOORD3.y = u_xlat5.z;
    vs_COLOR0 = in_COLOR0;
    u_xlat0.x = u_xlat2.y * unity_MatrixV[1].z;
    u_xlat0.x = unity_MatrixV[0].z * u_xlat2.x + u_xlat0.x;
    u_xlat0.x = unity_MatrixV[2].z * u_xlat2.z + u_xlat0.x;
    u_xlat0.x = unity_MatrixV[3].z * u_xlat2.w + u_xlat0.x;
    vs_TEXCOORD4.z = (-u_xlat0.x);
    u_xlat0.xyz = u_xlat2.yyy * unity_MatrixVP[1].xyw;
    u_xlat0.xyz = unity_MatrixVP[0].xyw * u_xlat2.xxx + u_xlat0.xyz;
    u_xlat0.xyz = unity_MatrixVP[2].xyw * u_xlat2.zzz + u_xlat0.xyz;
    u_xlat0.xyz = unity_MatrixVP[3].xyw * u_xlat2.www + u_xlat0.xyz;
    vs_TEXCOORD4.w = u_xlat0.z;
    u_xlat2.x = float(0.5);
    u_xlat2.z = float(0.5);
    u_xlat2.y = _ProjectionParams.x;
    u_xlat0.xyz = u_xlat0.xyz * u_xlat2.xyz;
    u_xlat2.xyz = u_xlat1.xyw * u_xlat2.xyz;
    vs_TEXCOORD7.zw = u_xlat1.zw;
    u_xlat0.w = u_xlat0.y * 0.5;
    vs_TEXCOORD4.xy = u_xlat0.zz + u_xlat0.xw;
    u_xlat2.w = u_xlat2.y * 0.5;
    vs_TEXCOORD7.xy = u_xlat2.zz + u_xlat2.xw;
    vs_TEXCOORD8 = vec4(0.0, 0.0, 0.0, 0.0);
    vs_SV_InstanceID0 =  uint(gl_InstanceIndex);
    return;
}

