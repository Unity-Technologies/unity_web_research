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
	mat4x4 unity_MatrixV;
	mat4x4 unity_MatrixVP;
	vec4 _FaceColor;
	float _FaceDilate;
	vec4 _OutlineColor;
	float _OutlineWidth;
	float _WeightNormal;
	float _WeightBold;
	float _ScaleRatioA;
	float _VertexOffsetX;
	float _VertexOffsetY;
	float _GradientScale;
	float _Sharpness;
	mat4x4 unity_GUIClipTextureMatrix;
	vec4 _MainTex_TexelSize;
};
layout(location = 0) in highp vec4 in_POSITION0;
layout(location = 1) in highp vec4 in_COLOR0;
layout(location = 2) in highp vec4 in_TEXCOORD0;
layout(location = 0) out highp vec4 vs_COLOR0;
highp vec4 vs_COLOR1;
layout(location = 1) out highp vec2 vs_TEXCOORD0;
layout(location = 2) out highp vec2 vs_TEXCOORD2;
layout(location = 3) out highp vec4 vs_TEXCOORD1;
void main()
{
vec4 u_xlat0;
bool u_xlatb0;
vec4 u_xlat1;
vec2 u_xlat2;
    u_xlat0.xy = in_POSITION0.xy + vec2(_VertexOffsetX, _VertexOffsetY);
    u_xlat1 = u_xlat0.yyyy * unity_ObjectToWorld[1];
    u_xlat0 = unity_ObjectToWorld[0] * u_xlat0.xxxx + u_xlat1;
    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
    u_xlat0 = u_xlat0 + unity_ObjectToWorld[3];
    u_xlat1 = u_xlat0.yyyy * unity_MatrixVP[1];
    u_xlat1 = unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
    u_xlat1 = unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
    gl_Position = unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
    u_xlat0 = in_COLOR0 * _FaceColor;
    vs_COLOR0.xyz = u_xlat0.www * u_xlat0.xyz;
    vs_COLOR0.w = u_xlat0.w;
    u_xlat0.x = in_COLOR0.w * _OutlineColor.w;
    vs_COLOR1.xyz = u_xlat0.xxx * _OutlineColor.xyz;
    vs_COLOR1.w = u_xlat0.x;
    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
    u_xlat0 = u_xlat0 + unity_ObjectToWorld[3];
    u_xlat1.xy = u_xlat0.yy * unity_MatrixV[1].xy;
    u_xlat0.xy = unity_MatrixV[0].xy * u_xlat0.xx + u_xlat1.xy;
    u_xlat0.xy = unity_MatrixV[2].xy * u_xlat0.zz + u_xlat0.xy;
    u_xlat0.xy = unity_MatrixV[3].xy * u_xlat0.ww + u_xlat0.xy;
    u_xlat2.xy = u_xlat0.yy * unity_GUIClipTextureMatrix[1].xy;
    u_xlat0.xy = unity_GUIClipTextureMatrix[0].xy * u_xlat0.xx + u_xlat2.xy;
    vs_TEXCOORD2.xy = u_xlat0.xy + unity_GUIClipTextureMatrix[3].xy;
    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
    u_xlatb0 = 0.0>=in_TEXCOORD0.w;
    u_xlat0.x = u_xlatb0 ? 1.0 : float(0.0);
    u_xlat2.x = (-_WeightNormal) + _WeightBold;
    u_xlat0.x = u_xlat0.x * u_xlat2.x + _WeightNormal;
    u_xlat0.x = u_xlat0.x * 0.25 + _FaceDilate;
    u_xlat0.x = u_xlat0.x * _ScaleRatioA;
    vs_TEXCOORD1.x = (-u_xlat0.x) * 0.5 + 0.5;
    u_xlat0.x = _GradientScale * 1.33329999;
    u_xlat2.x = _Sharpness + 1.0;
    u_xlat0.x = u_xlat2.x * u_xlat0.x;
    vs_TEXCOORD1.y = u_xlat0.x / _MainTex_TexelSize.z;
    u_xlat0.x = _OutlineWidth * _ScaleRatioA;
    vs_TEXCOORD1.z = u_xlat0.x * 0.5;
    vs_TEXCOORD1.w = 0.0;
    return;
}

