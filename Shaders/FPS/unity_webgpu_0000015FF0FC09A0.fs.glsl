#version 440
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shading_language_420pack : require
#ifdef GL_ARB_derivative_control
#extension GL_ARB_derivative_control : enable
#endif

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
layout(set = 0, binding = 0, std140) uniform PGlobals {
	float _OutlineSoftness;
	float _ScaleRatioA;
};
layout(set = 0, binding = 1) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 2) uniform mediump texture2D _GUIClipTexture;
layout(location = 0) in highp vec4 vs_COLOR0;
layout(location = 1) in highp vec2 vs_TEXCOORD0;
layout(location = 2) in highp vec2 vs_TEXCOORD2;
layout(location = 3) in highp vec4 vs_TEXCOORD1;
layout(location = 0) out highp vec4 SV_Target0;
vec4 u_xlat0;
float u_xlat1;
float u_xlat2;
vec2 u_xlat4;
layout(set = 0, binding = 3) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 4) uniform mediump  sampler sampler_GUIClipTexture;
void main()
{
    u_xlat0.xy = dFdxCoarse(vs_TEXCOORD0.xy);
    u_xlat4.xy = dFdyCoarse(vs_TEXCOORD0.yx);
    u_xlat2 = u_xlat4.y * u_xlat0.y;
    u_xlat0.x = u_xlat0.x * u_xlat4.x + (-u_xlat2);
    u_xlat0.x = inversesqrt(abs(u_xlat0.x));
    u_xlat0.x = u_xlat0.x * vs_TEXCOORD1.y;
    u_xlat2 = _OutlineSoftness * _ScaleRatioA;
    u_xlat2 = u_xlat2 * u_xlat0.x + 1.0;
    u_xlat0.x = u_xlat0.x / u_xlat2;
    u_xlat2 = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD0.xy).w;
    u_xlat2 = u_xlat2 + (-vs_TEXCOORD1.x);
    u_xlat0.x = u_xlat2 * u_xlat0.x + 0.5;
    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
    u_xlat0 = u_xlat0.xxxx * vs_COLOR0;
    u_xlat1 = texture(sampler2D(_GUIClipTexture, sampler_GUIClipTexture), vs_TEXCOORD2.xy).w;
    SV_Target0 = u_xlat0 * vec4(u_xlat1);
    return;
}

