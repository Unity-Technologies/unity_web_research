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
	mat4x4 unity_WorldToObject;
	mat4x4 unity_MatrixVP;
	mat4x4 unity_WorldToLight;
	vec4 _Gradient_ST;
};
layout(set = 0, binding = 0) uniform mediump texture2D _Gradient;
layout(location = 0) in highp vec4 in_POSITION0;
layout(location = 1) in highp vec4 in_TEXCOORD0;
layout(location = 2) in highp vec3 in_NORMAL0;
layout(location = 0) out highp vec2 vs_TEXCOORD0;
layout(location = 1) out highp float vs_TEXCOORD3;
layout(location = 2) out highp vec3 vs_TEXCOORD1;
layout(location = 3) out highp vec3 vs_TEXCOORD2;
highp vec4 vs_TEXCOORD4;
highp vec4 vs_TEXCOORD5;
layout(set = 0, binding = 7) uniform mediump  sampler sampler_Gradient;
void main()
{
vec4 u_xlat0;
vec4 u_xlat1;
vec4 u_xlat2;
float u_xlat3;
vec2 u_xlat6;
float u_xlat10;
    u_xlat0.x = textureLod(sampler2D(_Gradient, sampler_Gradient), in_TEXCOORD0.xy, 0.0).y;
    u_xlat0.xy = u_xlat0.xx * in_NORMAL0.xz;
    u_xlat0.xy = u_xlat0.xy * vec2(0.0199999996, 0.0199999996);
    u_xlat6.xy = in_TEXCOORD0.zz + vec2(-1.0, -0.300000012);
    u_xlat6.xy = u_xlat6.xy * vec2(-9.99999809, 50.0000496);
    u_xlat6.xy = clamp(u_xlat6.xy, 0.0, 1.0);
    u_xlat1.xz = u_xlat0.xy * u_xlat6.yy + in_POSITION0.xz;
    u_xlat0.y = (-u_xlat6.x) + in_TEXCOORD0.y;
    u_xlat0.x = in_TEXCOORD0.x;
    u_xlat0.x = textureLod(sampler2D(_Gradient, sampler_Gradient), u_xlat0.xy, 0.0).x;
    u_xlat0 = u_xlat0.xxxx * in_NORMAL0.xyzx;
    u_xlat1.y = in_POSITION0.y;
    u_xlat0.xyz = u_xlat0.xyz * vec3(0.449999988, 0.449999988, 0.449999988) + u_xlat1.xyz;
    u_xlat3 = u_xlat0.w * 0.25 + u_xlat0.y;
    u_xlat1 = vec4(u_xlat3) * unity_ObjectToWorld[1];
    u_xlat1 = unity_ObjectToWorld[0] * u_xlat0.xxxx + u_xlat1;
    u_xlat0 = unity_ObjectToWorld[2] * u_xlat0.zzzz + u_xlat1;
    u_xlat1 = u_xlat0 + unity_ObjectToWorld[3];
    u_xlat2 = u_xlat1.yyyy * unity_MatrixVP[1];
    u_xlat2 = unity_MatrixVP[0] * u_xlat1.xxxx + u_xlat2;
    u_xlat2 = unity_MatrixVP[2] * u_xlat1.zzzz + u_xlat2;
    gl_Position = unity_MatrixVP[3] * u_xlat1.wwww + u_xlat2;
    vs_TEXCOORD0.xy = in_TEXCOORD0.xy * _Gradient_ST.xy + _Gradient_ST.zw;
    vs_TEXCOORD3 = in_TEXCOORD0.z;
    u_xlat1.x = dot(in_NORMAL0.xyz, unity_WorldToObject[0].xyz);
    u_xlat1.y = dot(in_NORMAL0.xyz, unity_WorldToObject[1].xyz);
    u_xlat1.z = dot(in_NORMAL0.xyz, unity_WorldToObject[2].xyz);
    u_xlat10 = dot(u_xlat1.xyz, u_xlat1.xyz);
    u_xlat10 = inversesqrt(u_xlat10);
    vs_TEXCOORD1.xyz = vec3(u_xlat10) * u_xlat1.xyz;
    vs_TEXCOORD2.xyz = unity_ObjectToWorld[3].xyz * in_POSITION0.www + u_xlat0.xyz;
    u_xlat0 = unity_ObjectToWorld[3] * in_POSITION0.wwww + u_xlat0;
    u_xlat1 = u_xlat0.yyyy * unity_WorldToLight[1];
    u_xlat1 = unity_WorldToLight[0] * u_xlat0.xxxx + u_xlat1;
    u_xlat1 = unity_WorldToLight[2] * u_xlat0.zzzz + u_xlat1;
    vs_TEXCOORD4 = unity_WorldToLight[3] * u_xlat0.wwww + u_xlat1;
    vs_TEXCOORD5 = vec4(0.0, 0.0, 0.0, 0.0);
    return;
}

