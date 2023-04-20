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
	vec4 _FlareColorValue;
	vec4 _FlareData3;
};
layout(location = 0) in highp  vec2 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
vec2 u_xlat0;
float u_xlat1;
void main()
{
    u_xlat0.xy = vs_TEXCOORD0.xy + vec2(-0.5, -0.5);
    u_xlat0.xy = u_xlat0.xy + u_xlat0.xy;
    u_xlat0.x = dot(u_xlat0.xy, u_xlat0.xy);
    u_xlat0.x = sqrt(u_xlat0.x);
    u_xlat0.x = u_xlat0.x + -1.0;
    u_xlat1 = _FlareData3.y + -1.0;
    u_xlat0.x = u_xlat0.x / u_xlat1;
    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
    u_xlat1 = (-u_xlat0.x) + 1.0;
    u_xlat1 = u_xlat1 * u_xlat0.x;
    u_xlat0.x = u_xlat0.x + 9.99999997e-07;
    u_xlat0.x = u_xlat1 / u_xlat0.x;
    u_xlat0.x = log2(u_xlat0.x);
    u_xlat0.x = u_xlat0.x * _FlareData3.z;
    u_xlat0.x = exp2(u_xlat0.x);
    SV_Target0 = u_xlat0.xxxx * _FlareColorValue;
    return;
}

