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
layout(set = 0, binding = 0) uniform mediump textureCube _MainTex;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 1) uniform mediump  sampler sampler_MainTex;
void main()
{
vec3 u_xlat0;
vec2 u_xlat1;
    u_xlat0.xy = vs_TEXCOORD0.xy * vec2(6.28318548, 3.14159274) + vec2(-3.14159274, -1.57079637);
    u_xlat1.xy = cos(u_xlat0.xy);
    u_xlat0.xy = sin(u_xlat0.xy);
    u_xlat0.x = u_xlat0.x * u_xlat1.y;
    u_xlat0.z = u_xlat1.y * u_xlat1.x;
    SV_Target0 = texture(samplerCube(_MainTex, sampler_MainTex), u_xlat0.xyz);
    return;
}

