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
layout(set = 0, binding = 2, std140) uniform VGlobals {
	vec4 unity_LightColor[8];
	vec4 unity_LightPosition[8];
	vec4 unity_LightAtten[8];
	mat4x4 unity_ObjectToWorld;
	mat4x4 unity_WorldToObject;
	vec4 glstate_lightmodel_ambient;
	mat4x4 unity_MatrixV;
	mat4x4 unity_MatrixInvV;
	mat4x4 unity_MatrixVP;
	vec4 _Color;
	vec4 _SpecColor;
	vec4 _Emission;
	float _Shininess;
	ivec4 unity_VertexLightParams;
	vec4 _MainTex_ST;
};
layout(location = 0) in highp vec3 in_POSITION0;
layout(location = 1) in highp vec3 in_NORMAL0;
layout(location = 2) in highp vec3 in_TEXCOORD0;
layout(location = 0) out highp vec4 vs_COLOR0;
layout(location = 1) out highp vec3 vs_COLOR1;
layout(location = 2) out highp vec2 vs_TEXCOORD0;
vec4 u_xlat0;
vec4 u_xlat1;
vec3 u_xlat2;
vec3 u_xlat3;
vec3 u_xlat4;
vec3 u_xlat5;
vec3 u_xlat6;
bool u_xlatb6;
float u_xlat21;
float u_xlat22;
int u_xlati23;
float u_xlat24;
bool u_xlatb24;
float u_xlat25;
bool u_xlatb25;
bool u_xlatb26;
void main()
{
    u_xlat0.xyz = unity_ObjectToWorld[0].yyy * unity_MatrixV[1].xyz;
    u_xlat0.xyz = unity_MatrixV[0].xyz * unity_ObjectToWorld[0].xxx + u_xlat0.xyz;
    u_xlat0.xyz = unity_MatrixV[2].xyz * unity_ObjectToWorld[0].zzz + u_xlat0.xyz;
    u_xlat0.xyz = unity_MatrixV[3].xyz * unity_ObjectToWorld[0].www + u_xlat0.xyz;
    u_xlat1.xyz = unity_ObjectToWorld[1].yyy * unity_MatrixV[1].xyz;
    u_xlat1.xyz = unity_MatrixV[0].xyz * unity_ObjectToWorld[1].xxx + u_xlat1.xyz;
    u_xlat1.xyz = unity_MatrixV[2].xyz * unity_ObjectToWorld[1].zzz + u_xlat1.xyz;
    u_xlat1.xyz = unity_MatrixV[3].xyz * unity_ObjectToWorld[1].www + u_xlat1.xyz;
    u_xlat2.xyz = unity_ObjectToWorld[2].yyy * unity_MatrixV[1].xyz;
    u_xlat2.xyz = unity_MatrixV[0].xyz * unity_ObjectToWorld[2].xxx + u_xlat2.xyz;
    u_xlat2.xyz = unity_MatrixV[2].xyz * unity_ObjectToWorld[2].zzz + u_xlat2.xyz;
    u_xlat2.xyz = unity_MatrixV[3].xyz * unity_ObjectToWorld[2].www + u_xlat2.xyz;
    u_xlat3.xyz = unity_ObjectToWorld[3].yyy * unity_MatrixV[1].xyz;
    u_xlat3.xyz = unity_MatrixV[0].xyz * unity_ObjectToWorld[3].xxx + u_xlat3.xyz;
    u_xlat3.xyz = unity_MatrixV[2].xyz * unity_ObjectToWorld[3].zzz + u_xlat3.xyz;
    u_xlat3.xyz = unity_MatrixV[3].xyz * unity_ObjectToWorld[3].www + u_xlat3.xyz;
    u_xlat4.xyz = unity_WorldToObject[1].xyz * unity_MatrixInvV[0].yyy;
    u_xlat4.xyz = unity_WorldToObject[0].xyz * unity_MatrixInvV[0].xxx + u_xlat4.xyz;
    u_xlat4.xyz = unity_WorldToObject[2].xyz * unity_MatrixInvV[0].zzz + u_xlat4.xyz;
    u_xlat4.xyz = unity_WorldToObject[3].xyz * unity_MatrixInvV[0].www + u_xlat4.xyz;
    u_xlat5.xyz = unity_WorldToObject[1].xyz * unity_MatrixInvV[1].yyy;
    u_xlat5.xyz = unity_WorldToObject[0].xyz * unity_MatrixInvV[1].xxx + u_xlat5.xyz;
    u_xlat5.xyz = unity_WorldToObject[2].xyz * unity_MatrixInvV[1].zzz + u_xlat5.xyz;
    u_xlat5.xyz = unity_WorldToObject[3].xyz * unity_MatrixInvV[1].www + u_xlat5.xyz;
    u_xlat6.xyz = unity_WorldToObject[1].xyz * unity_MatrixInvV[2].yyy;
    u_xlat6.xyz = unity_WorldToObject[0].xyz * unity_MatrixInvV[2].xxx + u_xlat6.xyz;
    u_xlat6.xyz = unity_WorldToObject[2].xyz * unity_MatrixInvV[2].zzz + u_xlat6.xyz;
    u_xlat6.xyz = unity_WorldToObject[3].xyz * unity_MatrixInvV[2].www + u_xlat6.xyz;
    u_xlat1.xyz = u_xlat1.xyz * in_POSITION0.yyy;
    u_xlat0.xyz = u_xlat0.xyz * in_POSITION0.xxx + u_xlat1.xyz;
    u_xlat0.xyz = u_xlat2.xyz * in_POSITION0.zzz + u_xlat0.xyz;
    u_xlat0.xyz = u_xlat3.xyz + u_xlat0.xyz;
    u_xlat1.x = dot(u_xlat4.xyz, in_NORMAL0.xyz);
    u_xlat1.y = dot(u_xlat5.xyz, in_NORMAL0.xyz);
    u_xlat1.z = dot(u_xlat6.xyz, in_NORMAL0.xyz);
    u_xlat21 = dot(u_xlat1.xyz, u_xlat1.xyz);
    u_xlat21 = inversesqrt(u_xlat21);
    u_xlat1.xyz = vec3(u_xlat21) * u_xlat1.xyz;
    u_xlat21 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat21 = inversesqrt(u_xlat21);
    u_xlat2.xyz = _Color.xyz * glstate_lightmodel_ambient.xyz + _Emission.xyz;
    u_xlat22 = _Shininess * 128.0;
    u_xlat3.xyz = u_xlat2.xyz;
    u_xlat4.x = float(0.0);
    u_xlat4.y = float(0.0);
    u_xlat4.z = float(0.0);
    for(int u_xlati_loop_1 = 0 ; u_xlati_loop_1<unity_VertexLightParams.x ; u_xlati_loop_1++)
    {
        u_xlat5.xyz = (-u_xlat0.xyz) * unity_LightPosition[u_xlati_loop_1].www + unity_LightPosition[u_xlati_loop_1].xyz;
        u_xlat24 = dot(u_xlat5.xyz, u_xlat5.xyz);
        u_xlat25 = unity_LightAtten[u_xlati_loop_1].z * u_xlat24 + 1.0;
        u_xlat25 = float(1.0) / u_xlat25;
        u_xlatb26 = 0.0!=unity_LightPosition[u_xlati_loop_1].w;
        u_xlatb6 = unity_LightAtten[u_xlati_loop_1].w<u_xlat24;
        u_xlatb26 = u_xlatb26 && u_xlatb6;
        u_xlat24 = max(u_xlat24, 9.99999997e-07);
        u_xlat24 = inversesqrt(u_xlat24);
        u_xlat5.xyz = vec3(u_xlat24) * u_xlat5.xyz;
        u_xlat24 = u_xlat25 * 0.5;
        u_xlat24 = (u_xlatb26) ? 0.0 : u_xlat24;
        u_xlat25 = dot(u_xlat1.xyz, u_xlat5.xyz);
        u_xlat25 = max(u_xlat25, 0.0);
        u_xlat6.xyz = vec3(u_xlat25) * _Color.xyz;
        u_xlat6.xyz = u_xlat6.xyz * unity_LightColor[u_xlati_loop_1].xyz;
        u_xlatb25 = 0.0<u_xlat25;
        if(u_xlatb25){
            u_xlat5.xyz = (-u_xlat0.xyz) * vec3(u_xlat21) + u_xlat5.xyz;
            u_xlat25 = dot(u_xlat5.xyz, u_xlat5.xyz);
            u_xlat25 = inversesqrt(u_xlat25);
            u_xlat5.xyz = vec3(u_xlat25) * u_xlat5.xyz;
            u_xlat25 = dot(u_xlat1.xyz, u_xlat5.xyz);
            u_xlat25 = max(u_xlat25, 0.0);
            u_xlat25 = log2(u_xlat25);
            u_xlat25 = u_xlat22 * u_xlat25;
            u_xlat25 = exp2(u_xlat25);
            u_xlat25 = min(u_xlat25, 1.0);
            u_xlat25 = u_xlat24 * u_xlat25;
            u_xlat4.xyz = vec3(u_xlat25) * unity_LightColor[u_xlati_loop_1].xyz + u_xlat4.xyz;
        }
        u_xlat5.xyz = vec3(u_xlat24) * u_xlat6.xyz;
        u_xlat5.xyz = min(u_xlat5.xyz, vec3(1.0, 1.0, 1.0));
        u_xlat3.xyz = u_xlat3.xyz + u_xlat5.xyz;
    }
    vs_COLOR1.xyz = u_xlat4.xyz * _SpecColor.xyz;
    vs_COLOR1.xyz = clamp(vs_COLOR1.xyz, 0.0, 1.0);
    vs_COLOR0.xyz = u_xlat3.xyz;
    vs_COLOR0.xyz = clamp(vs_COLOR0.xyz, 0.0, 1.0);
    vs_COLOR0.w = _Color.w;
    vs_COLOR0.w = clamp(vs_COLOR0.w, 0.0, 1.0);
    vs_TEXCOORD0.xy = in_TEXCOORD0.xy * _MainTex_ST.xy + _MainTex_ST.zw;
    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
    u_xlat0 = u_xlat0 + unity_ObjectToWorld[3];
    u_xlat1 = u_xlat0.yyyy * unity_MatrixVP[1];
    u_xlat1 = unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
    u_xlat1 = unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
    gl_Position = unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
    return;
}

