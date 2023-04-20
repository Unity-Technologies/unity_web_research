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
layout(set = 1, binding = 0, std140) uniform VGlobals {
	vec4 _ScreenParams;
	mat4x4 unity_ObjectToWorld;
	mat4x4 unity_MatrixVP;
	vec4 _Color;
	float _DiffusePower;
	float _VertexOffsetX;
	float _VertexOffsetY;
	vec4 _ClipRect;
	float _MaskSoftnessX;
	float _MaskSoftnessY;
};
layout(location = 0) in highp vec4 in_POSITION0;
layout(location = 1) in highp vec4 in_COLOR0;
layout(location = 2) in highp vec2 in_TEXCOORD0;
layout(location = 0) out highp vec4 vs_COLOR0;
layout(location = 1) out highp vec2 vs_TEXCOORD0;
highp vec4 vs_TEXCOORD2;
vec2 u_xlat0;
vec4 u_xlat1;
vec4 u_xlat2;
vec2 u_xlat6;
void main()
{
    u_xlat0.x = in_POSITION0.w * 0.5;
    u_xlat0.xy = u_xlat0.xx / _ScreenParams.xy;
    u_xlat6.xy = in_POSITION0.xy + vec2(_VertexOffsetX, _VertexOffsetY);
    u_xlat0.xy = u_xlat0.xy + u_xlat6.xy;
    u_xlat1 = u_xlat0.yyyy * unity_ObjectToWorld[1];
    u_xlat1 = unity_ObjectToWorld[0] * u_xlat0.xxxx + u_xlat1;
    u_xlat1 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat1;
    u_xlat1 = u_xlat1 + unity_ObjectToWorld[3];
    u_xlat2 = u_xlat1.yyyy * unity_MatrixVP[1];
    u_xlat2 = unity_MatrixVP[0] * u_xlat1.xxxx + u_xlat2;
    u_xlat2 = unity_MatrixVP[2] * u_xlat1.zzzz + u_xlat2;
    u_xlat1 = unity_MatrixVP[3] * u_xlat1.wwww + u_xlat2;
    u_xlat6.xy = u_xlat1.xy / u_xlat1.ww;
    u_xlat1.xy = _ScreenParams.xy * vec2(0.5, 0.5);
    u_xlat6.xy = u_xlat6.xy * u_xlat1.xy;
    u_xlat6.xy = roundEven(u_xlat6.xy);
    u_xlat6.xy = u_xlat6.xy / u_xlat1.xy;
    gl_Position.xy = u_xlat1.ww * u_xlat6.xy;
    gl_Position.zw = u_xlat1.zw;
    u_xlat6.xy = vec2(_MaskSoftnessX, _MaskSoftnessY) * vec2(0.25, 0.25) + u_xlat1.ww;
    vs_TEXCOORD2.zw = vec2(0.25, 0.25) / u_xlat6.xy;
    u_xlat1 = in_COLOR0 * _Color;
    vs_COLOR0.xyz = u_xlat1.xyz * vec3(_DiffusePower);
    vs_COLOR0.w = u_xlat1.w;
    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
    u_xlat1 = max(_ClipRect, vec4(-2e+10, -2e+10, -2e+10, -2e+10));
    u_xlat1 = min(u_xlat1, vec4(2e+10, 2e+10, 2e+10, 2e+10));
    u_xlat0.xy = u_xlat0.xy * vec2(2.0, 2.0) + (-u_xlat1.xy);
    vs_TEXCOORD2.xy = (-u_xlat1.zw) + u_xlat0.xy;
    return;
}

