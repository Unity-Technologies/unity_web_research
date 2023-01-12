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
	float _RenderViewportScaleFactor;
	vec4 _MainTex_TexelSize;
	vec4 _Threshold;
	vec4 _Params;
};
layout(set = 0, binding = 0) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 1) uniform mediump texture2D _AutoExposureTex;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 2) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 3) uniform mediump  sampler sampler_AutoExposureTex;
void main()
{
vec4 u_xlat0;
vec4 u_xlat1;
vec4 u_xlat2;
float u_xlat4;
float u_xlat10;
    u_xlat0 = _MainTex_TexelSize.xyxy * vec4(-1.0, -1.0, 1.0, -1.0) + vs_TEXCOORD0.xyxy;
    u_xlat0 = clamp(u_xlat0, 0.0, 1.0);
    u_xlat0 = u_xlat0 * vec4(_RenderViewportScaleFactor);
    u_xlat1 = texture(sampler2D(_MainTex, sampler_MainTex), u_xlat0.xy);
    u_xlat0 = texture(sampler2D(_MainTex, sampler_MainTex), u_xlat0.zw);
    u_xlat0 = u_xlat0 + u_xlat1;
    u_xlat1 = _MainTex_TexelSize.xyxy * vec4(-1.0, 1.0, 1.0, 1.0) + vs_TEXCOORD0.xyxy;
    u_xlat1 = clamp(u_xlat1, 0.0, 1.0);
    u_xlat1 = u_xlat1 * vec4(_RenderViewportScaleFactor);
    u_xlat2 = texture(sampler2D(_MainTex, sampler_MainTex), u_xlat1.xy);
    u_xlat1 = texture(sampler2D(_MainTex, sampler_MainTex), u_xlat1.zw);
    u_xlat0 = u_xlat0 + u_xlat2;
    u_xlat0 = u_xlat1 + u_xlat0;
    u_xlat0 = u_xlat0 * vec4(0.25, 0.25, 0.25, 0.25);
    u_xlat0 = min(u_xlat0, vec4(65504.0, 65504.0, 65504.0, 65504.0));
    u_xlat1.x = texture(sampler2D(_AutoExposureTex, sampler_AutoExposureTex), vs_TEXCOORD0.xy).x;
    u_xlat0 = u_xlat0 * u_xlat1.xxxx;
    u_xlat0 = min(u_xlat0, _Params.xxxx);
    u_xlat1.x = max(u_xlat0.y, u_xlat0.x);
    u_xlat1.x = max(u_xlat0.z, u_xlat1.x);
    u_xlat1.yz = u_xlat1.xx + (-_Threshold.yx);
    u_xlat1.xy = max(u_xlat1.xy, vec2(9.99999975e-05, 0.0));
    u_xlat4 = min(u_xlat1.y, _Threshold.z);
    u_xlat10 = u_xlat4 * _Threshold.w;
    u_xlat4 = u_xlat4 * u_xlat10;
    u_xlat4 = max(u_xlat1.z, u_xlat4);
    u_xlat1.x = u_xlat4 / u_xlat1.x;
    SV_Target0 = u_xlat0 * u_xlat1.xxxx;
    return;
}

