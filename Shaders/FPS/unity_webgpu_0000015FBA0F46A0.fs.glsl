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
layout(set = 0, binding = 0, std140) uniform PGlobals {
	int _ForceNoMotion;
};
layout(location = 0) in highp vec4 vs_TEXCOORD0;
layout(location = 1) in highp vec4 vs_TEXCOORD1;
layout(location = 0) out highp vec4 SV_Target0;
vec4 u_xlat0;
vec3 u_xlat1;
vec3 u_xlat2;
void main()
{
    u_xlat0.xy = vs_TEXCOORD0.xy / vs_TEXCOORD0.ww;
    u_xlat0.xy = u_xlat0.xy + vec2(1.0, 1.0);
    u_xlat0.x = u_xlat0.x * 0.5;
    u_xlat0.z = (-u_xlat0.y) * 0.5 + 1.0;
    u_xlat2.xz = vs_TEXCOORD1.xy / vs_TEXCOORD1.ww;
    u_xlat2.xz = u_xlat2.xz + vec2(1.0, 1.0);
    u_xlat1.x = u_xlat2.x * 0.5;
    u_xlat1.z = (-u_xlat2.z) * 0.5 + 1.0;
    u_xlat0.xy = u_xlat0.xz + (-u_xlat1.xz);
    u_xlat1.x = (_ForceNoMotion != 0) ? 1.0 : 0.0;
    u_xlat0.z = float(0.0);
    u_xlat0.w = float(1.0);
    SV_Target0 = u_xlat1.xxxx * (-u_xlat0) + u_xlat0;
    return;
}

