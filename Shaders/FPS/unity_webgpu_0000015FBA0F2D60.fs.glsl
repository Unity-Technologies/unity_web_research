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
layout(location = 0) out highp vec4 SV_Target0;
vec4 u_xlat0;
ivec4 u_xlati1;
bvec4 u_xlatb1;
bvec4 u_xlatb2;
layout(set = 0, binding = 1) uniform mediump  sampler sampler_MainTex;
void main()
{
    u_xlat0 = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD0.xy);
    u_xlatb1 = lessThan(u_xlat0, vec4(0.0, 0.0, 0.0, 0.0));
    u_xlatb2 = lessThan(vec4(0.0, 0.0, 0.0, 0.0), u_xlat0);
    u_xlati1 = ivec4((uvec4(u_xlatb1) * 0xffffffffu) | (uvec4(u_xlatb2) * 0xffffffffu));
    u_xlatb2 = equal(u_xlat0, vec4(0.0, 0.0, 0.0, 0.0));
    u_xlati1 = ivec4(uvec4(u_xlati1) | (uvec4(u_xlatb2) * 0xffffffffu));
    u_xlatb1 = equal(u_xlati1, ivec4(0, 0, 0, 0));
    u_xlatb1.x = u_xlatb1.y || u_xlatb1.x;
    u_xlatb1.x = u_xlatb1.z || u_xlatb1.x;
    u_xlatb1.x = u_xlatb1.w || u_xlatb1.x;
    SV_Target0 = (u_xlatb1.x) ? vec4(0.0, 0.0, 0.0, 0.0) : u_xlat0;
    return;
}

