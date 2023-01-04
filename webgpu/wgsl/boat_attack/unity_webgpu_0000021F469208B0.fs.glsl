#version 440
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shading_language_420pack : require

layout(origin_upper_left) in vec4 gl_FragCoord;
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
layout(set = 0, binding = 0) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 1) uniform mediump texture2D _FaceTex;
layout(location = 0) in highp vec4 vs_COLOR0;
layout(location = 1) in highp vec2 vs_TEXCOORD0;
layout(location = 2) in highp vec2 vs_TEXCOORD1;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 2) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 3) uniform mediump  sampler sampler_FaceTex;
void main()
{
vec4 u_xlat0;
bool u_xlatb0;
vec4 u_xlat1;
    u_xlat0 = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD0.xy);
    u_xlat1 = texture(sampler2D(_FaceTex, sampler_FaceTex), vs_TEXCOORD1.xy);
    u_xlat0 = u_xlat0 * u_xlat1;
    u_xlat1.x = u_xlat0.w * vs_COLOR0.w + -0.00100000005;
    u_xlat0 = u_xlat0 * vs_COLOR0;
    SV_Target0 = u_xlat0;
    u_xlatb0 = u_xlat1.x<0.0;
    if(((int(u_xlatb0) * int(0xffffffffu)))!=0){discard;}
    return;
}

