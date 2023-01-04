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
	vec4 _ClipRect;
};
layout(set = 0, binding = 0) uniform mediump texture2D _MainTex;
layout(location = 0) in highp vec4 vs_COLOR0;
layout(location = 1) in highp vec4 vs_TEXCOORD0;
layout(location = 2) in highp vec4 vs_TEXCOORD1;
layout(location = 3) in highp vec4 vs_TEXCOORD2;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 1) uniform mediump  sampler sampler_MainTex;
void main()
{
vec2 u_xlat0;
vec4 u_xlat1;
float u_xlat2;
    u_xlat0.xy = (-_ClipRect.xy) + _ClipRect.zw;
    u_xlat0.xy = u_xlat0.xy + -abs(vs_TEXCOORD2.xy);
    u_xlat0.xy = u_xlat0.xy * vs_TEXCOORD2.zw;
    u_xlat0.xy = clamp(u_xlat0.xy, 0.0, 1.0);
    u_xlat0.x = u_xlat0.y * u_xlat0.x;
    u_xlat2 = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD0.xy).w;
    u_xlat2 = u_xlat2 * vs_TEXCOORD1.x + (-vs_TEXCOORD1.w);
    u_xlat2 = clamp(u_xlat2, 0.0, 1.0);
    u_xlat1 = vec4(u_xlat2) * vs_COLOR0;
    SV_Target0 = u_xlat0.xxxx * u_xlat1;
    return;
}

