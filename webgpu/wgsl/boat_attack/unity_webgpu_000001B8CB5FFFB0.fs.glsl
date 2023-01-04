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
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 1) in highp vec4 vs_TEXCOORD1;
layout(location = 2) in highp vec4 vs_TEXCOORD2;
layout(location = 3) in highp vec4 vs_TEXCOORD3;
layout(location = 4) in highp vec4 vs_TEXCOORD4;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 1) uniform mediump  sampler sampler_MainTex;
void main()
{
vec4 u_xlat0;
    u_xlat0 = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD0.xy);
    u_xlat0.yzw = u_xlat0.wzy * vec3(2.0, 2.0, 2.0) + vec3(-1.0, -1.0, -1.0);
    SV_Target0.xw = u_xlat0.xy * vs_TEXCOORD4.xw;
    u_xlat0.xw = u_xlat0.ww * vs_TEXCOORD3.xz;
    u_xlat0.xz = u_xlat0.zz * vs_TEXCOORD2.xz + u_xlat0.xw;
    u_xlat0.xy = u_xlat0.xz + vs_TEXCOORD1.xz;
    SV_Target0.yz = u_xlat0.xy * vs_TEXCOORD4.yy;
    return;
}

