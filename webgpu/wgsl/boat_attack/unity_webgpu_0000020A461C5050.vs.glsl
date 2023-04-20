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
	vec4 _ScreenParams;
	mat4x4 unity_ObjectToWorld;
	mat4x4 unity_WorldToObject;
	mat4x4 glstate_matrix_projection;
	mat4x4 unity_MatrixVP;
	vec4 _FaceColor;
	float _FaceDilate;
	float _OutlineSoftness;
	vec4 _OutlineColor;
	float _OutlineWidth;
	float _UnderlayOffsetX;
	float _UnderlayOffsetY;
	float _UnderlayDilate;
	float _UnderlaySoftness;
	float _WeightNormal;
	float _WeightBold;
	float _ScaleRatioA;
	float _ScaleRatioC;
	float _VertexOffsetX;
	float _VertexOffsetY;
	vec4 _ClipRect;
	float _MaskSoftnessX;
	float _MaskSoftnessY;
	float _TextureWidth;
	float _TextureHeight;
	float _GradientScale;
	float _ScaleX;
	float _ScaleY;
	float _PerspectiveFilter;
	float _Sharpness;
};
layout(location = 0) in highp vec4 in_POSITION0;
layout(location = 1) in highp vec3 in_NORMAL0;
layout(location = 2) in highp vec4 in_COLOR0;
layout(location = 3) in highp vec2 in_TEXCOORD0;
layout(location = 4) in highp vec2 in_TEXCOORD1;
layout(location = 0) out highp vec4 vs_COLOR0;
highp vec4 vs_COLOR1;
layout(location = 1) out highp vec4 vs_TEXCOORD0;
layout(location = 2) out highp vec4 vs_TEXCOORD1;
layout(location = 3) out highp vec4 vs_TEXCOORD2;
layout(location = 4) out highp vec4 vs_TEXCOORD3;
layout(location = 5) out highp vec2 vs_TEXCOORD4;
vec2 u_xlat0;
bool u_xlatb0;
vec4 u_xlat1;
vec4 u_xlat2;
vec4 u_xlat3;
vec4 u_xlat4;
vec4 u_xlat5;
vec4 u_xlat6;
vec3 u_xlat7;
vec2 u_xlat8;
float u_xlat14;
float u_xlat15;
float u_xlat21;
bool u_xlatb21;
void main()
{
    u_xlat0.xy = in_POSITION0.xy + vec2(_VertexOffsetX, _VertexOffsetY);
    u_xlat1 = u_xlat0.yyyy * unity_ObjectToWorld[1];
    u_xlat1 = unity_ObjectToWorld[0] * u_xlat0.xxxx + u_xlat1;
    u_xlat1 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat1;
    u_xlat2 = u_xlat1 + unity_ObjectToWorld[3];
    u_xlat1.xyz = unity_ObjectToWorld[3].xyz * in_POSITION0.www + u_xlat1.xyz;
    u_xlat1.xyz = (-u_xlat1.xyz) + _WorldSpaceCameraPos.xyz;
    u_xlat3 = u_xlat2.yyyy * unity_MatrixVP[1];
    u_xlat3 = unity_MatrixVP[0] * u_xlat2.xxxx + u_xlat3;
    u_xlat3 = unity_MatrixVP[2] * u_xlat2.zzzz + u_xlat3;
    u_xlat2 = unity_MatrixVP[3] * u_xlat2.wwww + u_xlat3;
    gl_Position = u_xlat2;
    vs_COLOR0.w = _FaceColor.w;
    u_xlat3.xyz = in_COLOR0.xyz;
    u_xlat3.w = 1.0;
    u_xlat4 = u_xlat3 * _FaceColor;
    u_xlat2.xyz = u_xlat4.www * u_xlat4.xyz;
    vs_COLOR0.xyz = u_xlat2.xyz;
    u_xlat5.xyz = (-u_xlat2.xyz);
    u_xlat5.w = (-u_xlat4.w);
    u_xlat6.xyz = _OutlineColor.www * _OutlineColor.xyz;
    u_xlat6.w = _OutlineColor.w;
    u_xlat5 = u_xlat5 + u_xlat6;
    u_xlat14 = dot(u_xlat1.xyz, u_xlat1.xyz);
    u_xlat14 = inversesqrt(u_xlat14);
    u_xlat1.xyz = vec3(u_xlat14) * u_xlat1.xyz;
    u_xlat2.x = dot(in_NORMAL0.xyz, unity_WorldToObject[0].xyz);
    u_xlat2.y = dot(in_NORMAL0.xyz, unity_WorldToObject[1].xyz);
    u_xlat2.z = dot(in_NORMAL0.xyz, unity_WorldToObject[2].xyz);
    u_xlat14 = dot(u_xlat2.xyz, u_xlat2.xyz);
    u_xlat14 = inversesqrt(u_xlat14);
    u_xlat2.xyz = vec3(u_xlat14) * u_xlat2.xyz;
    u_xlat14 = dot(u_xlat2.xyz, u_xlat1.xyz);
    u_xlat1.xy = _ScreenParams.yy * glstate_matrix_projection[1].xy;
    u_xlat1.xy = glstate_matrix_projection[0].xy * _ScreenParams.xx + u_xlat1.xy;
    u_xlat1.xy = abs(u_xlat1.xy) * vec2(_ScaleX, _ScaleY);
    u_xlat1.xy = u_xlat2.ww / u_xlat1.xy;
    u_xlat21 = dot(u_xlat1.xy, u_xlat1.xy);
    u_xlat1.xy = vec2(_MaskSoftnessX, _MaskSoftnessY) * vec2(0.25, 0.25) + u_xlat1.xy;
    vs_TEXCOORD2.zw = vec2(0.25, 0.25) / u_xlat1.xy;
    u_xlat21 = inversesqrt(u_xlat21);
    u_xlat1.x = abs(in_TEXCOORD1.y) * _GradientScale;
    u_xlat8.x = _Sharpness + 1.0;
    u_xlat1.x = u_xlat8.x * u_xlat1.x;
    u_xlat8.x = u_xlat21 * u_xlat1.x;
    u_xlat15 = (-_PerspectiveFilter) + 1.0;
    u_xlat15 = u_xlat15 * abs(u_xlat8.x);
    u_xlat21 = u_xlat21 * u_xlat1.x + (-u_xlat15);
    u_xlat14 = abs(u_xlat14) * u_xlat21 + u_xlat15;
    u_xlatb21 = glstate_matrix_projection[3].w==0.0;
    u_xlat14 = (u_xlatb21) ? u_xlat14 : u_xlat8.x;
    u_xlat21 = _OutlineSoftness * _ScaleRatioA;
    u_xlat21 = u_xlat21 * u_xlat14 + 1.0;
    u_xlat1.x = u_xlat14 / u_xlat21;
    u_xlat21 = _OutlineWidth * _ScaleRatioA;
    u_xlat21 = u_xlat1.x * u_xlat21;
    u_xlat8.x = min(u_xlat21, 1.0);
    u_xlat8.x = sqrt(u_xlat8.x);
    u_xlat2 = u_xlat5 * u_xlat8.xxxx;
    vs_COLOR1.xyz = u_xlat4.xyz * u_xlat4.www + u_xlat2.xyz;
    vs_COLOR1.w = u_xlat3.w * _FaceColor.w + u_xlat2.w;
    u_xlat2 = max(_ClipRect, vec4(-2e+10, -2e+10, -2e+10, -2e+10));
    u_xlat2 = min(u_xlat2, vec4(2e+10, 2e+10, 2e+10, 2e+10));
    u_xlat8.xy = u_xlat0.xy + (-u_xlat2.xy);
    u_xlat0.xy = u_xlat0.xy * vec2(2.0, 2.0) + (-u_xlat2.xy);
    vs_TEXCOORD2.xy = (-u_xlat2.zw) + u_xlat0.xy;
    u_xlat0.xy = (-u_xlat2.xy) + u_xlat2.zw;
    vs_TEXCOORD0.zw = u_xlat8.xy / u_xlat0.xy;
    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
    u_xlatb0 = 0.0>=in_TEXCOORD1.y;
    u_xlat0.x = u_xlatb0 ? 1.0 : float(0.0);
    u_xlat7.x = (-_WeightNormal) + _WeightBold;
    u_xlat0.x = u_xlat0.x * u_xlat7.x + _WeightNormal;
    u_xlat0.x = u_xlat0.x * 0.25 + _FaceDilate;
    u_xlat0.x = u_xlat0.x * _ScaleRatioA;
    u_xlat0.x = (-u_xlat0.x) * 0.5 + 0.5;
    u_xlat1.w = u_xlat0.x * u_xlat1.x + -0.5;
    vs_TEXCOORD1.xw = u_xlat1.xw;
    vs_TEXCOORD1.y = (-u_xlat21) * 0.5 + u_xlat1.w;
    vs_TEXCOORD1.z = u_xlat21 * 0.5 + u_xlat1.w;
    vs_TEXCOORD3.z = in_COLOR0.w;
    vs_TEXCOORD3.w = 0.0;
    u_xlat1 = vec4(_UnderlaySoftness, _UnderlayDilate, _UnderlayOffsetX, _UnderlayOffsetY) * vec4(vec4(_ScaleRatioC, _ScaleRatioC, _ScaleRatioC, _ScaleRatioC));
    u_xlat7.xz = (-u_xlat1.zw) * vec2(_GradientScale);
    u_xlat7.xz = u_xlat7.xz / vec2(_TextureWidth, _TextureHeight);
    vs_TEXCOORD3.xy = u_xlat7.xz + in_TEXCOORD0.xy;
    u_xlat7.x = u_xlat1.x * u_xlat14 + 1.0;
    u_xlat7.x = u_xlat14 / u_xlat7.x;
    u_xlat14 = u_xlat7.x * u_xlat1.y;
    u_xlat0.x = u_xlat0.x * u_xlat7.x + -0.5;
    vs_TEXCOORD4.x = u_xlat7.x;
    vs_TEXCOORD4.y = (-u_xlat14) * 0.5 + u_xlat0.x;
    return;
}

