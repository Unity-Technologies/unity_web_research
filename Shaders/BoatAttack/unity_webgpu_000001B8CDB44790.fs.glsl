#version 440
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shading_language_420pack : require

layout(origin_upper_left) in vec4 gl_FragCoord;
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
layout(set = 1, binding = 0, std140) uniform PGlobals {
	vec4 _PCUVToBrushUVScales;
	vec2 _PCUVToBrushUVOffset;
	vec4 _BrushParams;
};
layout(set = 0, binding = 0) uniform mediump texture2D _BrushTex;
layout(set = 0, binding = 1) uniform mediump texture2D _MainTex;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 2) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 3) uniform mediump  sampler sampler_BrushTex;
void main()
{
vec4 u_xlat0;
float u_xlat1;
bool u_xlatb1;
vec2 u_xlat2;
bvec2 u_xlatb2;
    u_xlat0 = vs_TEXCOORD0.xxyy * _PCUVToBrushUVScales;
    u_xlat0.xy = u_xlat0.zw + u_xlat0.xy;
    u_xlat0.xy = u_xlat0.xy + _PCUVToBrushUVOffset.xy;
    u_xlat2.xy = u_xlat0.xy;
    u_xlat2.xy = clamp(u_xlat2.xy, 0.0, 1.0);
    u_xlatb2.xy = equal(u_xlat0.xyxy, u_xlat2.xyxy).xy;
    u_xlat0.xy = texture(sampler2D(_BrushTex, sampler_BrushTex), u_xlat0.xy).xy;
    u_xlat0.x = u_xlat0.y * 256.0 + u_xlat0.x;
    u_xlatb1 = u_xlatb2.y && u_xlatb2.x;
    u_xlat1 = u_xlatb1 ? 1.0 : float(0.0);
    u_xlat1 = u_xlat1 * _BrushParams.x;
    u_xlat0.x = u_xlat1 * u_xlat0.x;
    u_xlat1 = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD0.xy).x;
    u_xlat2.x = u_xlat0.x * 0.00389105058 + u_xlat1;
    u_xlat0.x = (-u_xlat0.x) * 0.00389105058 + u_xlat1;
    u_xlatb1 = u_xlat1<_BrushParams.y;
    u_xlat0.x = max(u_xlat0.x, _BrushParams.y);
    u_xlat2.x = min(u_xlat2.x, _BrushParams.y);
    SV_Target0 = (bool(u_xlatb1)) ? u_xlat2.xxxx : u_xlat0.xxxx;
    return;
}

