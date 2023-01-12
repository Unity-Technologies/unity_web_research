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
	mat4x4 unity_MatrixVP;
	float _WallThickness;
};
layout(location = 0) in highp vec4 in_POSITION0;
layout(location = 1) in highp vec4 in_NORMAL0;
void main()
{
vec2 u_xlat0;
vec4 u_xlat1;
vec4 u_xlat2;
vec2 u_xlat6;
bool u_xlatb6;
    u_xlat0.xy = unity_ObjectToWorld[1].yy * unity_MatrixVP[1].xy;
    u_xlat0.xy = unity_MatrixVP[0].xy * unity_ObjectToWorld[1].xx + u_xlat0.xy;
    u_xlat0.xy = unity_MatrixVP[2].xy * unity_ObjectToWorld[1].zz + u_xlat0.xy;
    u_xlat0.xy = unity_MatrixVP[3].xy * unity_ObjectToWorld[1].ww + u_xlat0.xy;
    u_xlat0.xy = u_xlat0.xy * in_NORMAL0.yy;
    u_xlat6.xy = unity_ObjectToWorld[0].yy * unity_MatrixVP[1].xy;
    u_xlat6.xy = unity_MatrixVP[0].xy * unity_ObjectToWorld[0].xx + u_xlat6.xy;
    u_xlat6.xy = unity_MatrixVP[2].xy * unity_ObjectToWorld[0].zz + u_xlat6.xy;
    u_xlat6.xy = unity_MatrixVP[3].xy * unity_ObjectToWorld[0].ww + u_xlat6.xy;
    u_xlat0.xy = u_xlat6.xy * in_NORMAL0.xx + u_xlat0.xy;
    u_xlat6.xy = unity_ObjectToWorld[2].yy * unity_MatrixVP[1].xy;
    u_xlat6.xy = unity_MatrixVP[0].xy * unity_ObjectToWorld[2].xx + u_xlat6.xy;
    u_xlat6.xy = unity_MatrixVP[2].xy * unity_ObjectToWorld[2].zz + u_xlat6.xy;
    u_xlat6.xy = unity_MatrixVP[3].xy * unity_ObjectToWorld[2].ww + u_xlat6.xy;
    u_xlat0.xy = u_xlat6.xy * in_NORMAL0.zz + u_xlat0.xy;
    u_xlat6.x = dot(u_xlat0.xy, u_xlat0.xy);
    u_xlat6.x = inversesqrt(u_xlat6.x);
    u_xlat0.xy = u_xlat6.xx * u_xlat0.xy;
    u_xlat0.xy = u_xlat0.xy * vec2(_WallThickness);
    u_xlat1 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
    u_xlat1 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat1;
    u_xlat1 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat1;
    u_xlat1 = u_xlat1 + unity_ObjectToWorld[3];
    u_xlat2 = u_xlat1.yyyy * unity_MatrixVP[1];
    u_xlat2 = unity_MatrixVP[0] * u_xlat1.xxxx + u_xlat2;
    u_xlat2 = unity_MatrixVP[2] * u_xlat1.zzzz + u_xlat2;
    u_xlat1 = unity_MatrixVP[3] * u_xlat1.wwww + u_xlat2;
    u_xlat6.x = u_xlat1.z / u_xlat1.w;
    u_xlatb6 = u_xlat6.x>=1.0;
    u_xlat6.x = u_xlatb6 ? 1.0 : float(0.0);
    u_xlat6.x = (-u_xlat6.x) * 2.0 + 1.0;
    gl_Position.xy = u_xlat0.xy * u_xlat6.xx + u_xlat1.xy;
    gl_Position.zw = u_xlat1.zw;
    return;
}

