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
	mat4x4 unity_ObjectToWorld;
	mat4x4 unity_MatrixVP;
	vec4 unity_FogParams;
	vec4 _TreeBillboardCameraPos;
	vec4 _TreeBillboardDistances;
};
layout(location = 0) in highp vec4 in_POSITION0;
layout(location = 1) in highp vec4 in_COLOR0;
layout(location = 2) in highp vec4 in_TEXCOORD0;
layout(location = 3) in highp vec2 in_TEXCOORD1;
layout(location = 0) out highp vec4 vs_COLOR0;
layout(location = 1) out highp vec3 vs_TEXCOORD0;
layout(location = 2) out highp float vs_TEXCOORD1;
highp vec4 vs_TEXCOORD2;
vec4 u_xlat0;
bool u_xlatb0;
vec4 u_xlat1;
vec4 u_xlat2;
bool u_xlatb3;
vec2 u_xlat4;
float u_xlat9;
bool u_xlatb9;
void main()
{
    u_xlat0.xyz = in_POSITION0.yzx + (-_TreeBillboardCameraPos.yzx);
    u_xlat9 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat1.x = sqrt(u_xlat9);
    u_xlatb9 = _TreeBillboardDistances.x<u_xlat9;
    u_xlat4.xy = (bool(u_xlatb9)) ? vec2(0.0, 0.0) : in_TEXCOORD1.xy;
    u_xlat0.xyz = u_xlat0.xyz / u_xlat1.xxx;
    u_xlat9 = u_xlat1.x + (-_TreeBillboardDistances.z);
    u_xlat2.xyz = u_xlat0.xyz * vec3(0.0, 0.0, 1.0);
    u_xlat0.xyz = u_xlat0.yzx * vec3(1.0, 0.0, 0.0) + (-u_xlat2.xyz);
    u_xlat1.x = dot(u_xlat0.xz, u_xlat0.xz);
    u_xlat1.x = inversesqrt(u_xlat1.x);
    u_xlat0.xyz = u_xlat0.xyz * u_xlat1.xxx;
    u_xlat0.xyz = u_xlat0.xyz * u_xlat4.xxx + in_POSITION0.xyz;
    u_xlat0.xyz = u_xlat4.yyy * vec3(0.0, 1.0, 0.0) + u_xlat0.xyz;
    u_xlat1 = u_xlat0.yyyy * unity_ObjectToWorld[1];
    u_xlat1 = unity_ObjectToWorld[0] * u_xlat0.xxxx + u_xlat1;
    u_xlat1 = unity_ObjectToWorld[2] * u_xlat0.zzzz + u_xlat1;
    u_xlat1 = u_xlat1 + unity_ObjectToWorld[3];
    u_xlat2 = u_xlat1.yyyy * unity_MatrixVP[1];
    u_xlat2 = unity_MatrixVP[0] * u_xlat1.xxxx + u_xlat2;
    u_xlat2 = unity_MatrixVP[2] * u_xlat1.zzzz + u_xlat2;
    u_xlat1 = unity_MatrixVP[3] * u_xlat1.wwww + u_xlat2;
    gl_Position = u_xlat1;
    vs_COLOR0 = in_COLOR0;
    u_xlat0.x = u_xlat9 / _TreeBillboardDistances.w;
    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
    u_xlatb3 = _TreeBillboardDistances.w<u_xlat9;
    vs_TEXCOORD0.z = (u_xlatb3) ? 1.0 : u_xlat0.x;
    u_xlat0.x = u_xlat1.z / _ProjectionParams.y;
    u_xlat0.x = (-u_xlat0.x) + 1.0;
    u_xlat0.x = u_xlat0.x * _ProjectionParams.z;
    u_xlat0.x = max(u_xlat0.x, 0.0);
    u_xlat0.x = u_xlat0.x * unity_FogParams.x;
    u_xlat0.x = u_xlat0.x * (-u_xlat0.x);
    vs_TEXCOORD1 = exp2(u_xlat0.x);
    u_xlatb0 = 0.0<in_TEXCOORD0.y;
    vs_TEXCOORD0.y = u_xlatb0 ? 1.0 : float(0.0);
    vs_TEXCOORD0.x = in_TEXCOORD0.x;
    u_xlat0.x = u_xlat1.y * _ProjectionParams.x;
    u_xlat0.w = u_xlat0.x * 0.5;
    u_xlat0.xz = u_xlat1.xw * vec2(0.5, 0.5);
    vs_TEXCOORD2.zw = u_xlat1.zw;
    vs_TEXCOORD2.xy = u_xlat0.zz + u_xlat0.xw;
    return;
}

