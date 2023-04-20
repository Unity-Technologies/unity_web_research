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
layout(location = 0) in highp  vec2 vs_TEXCOORD0;
float u_xlat0;
bool u_xlatb1;
layout(set = 0, binding = 1) uniform mediump  sampler sampler_MainTex;
void main()
{
    u_xlat0 = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD0.xy).x;
    u_xlatb1 = u_xlat0<0.5;
    gl_FragDepth = u_xlat0;
    if(((int(u_xlatb1) * int(0xffffffffu)))!=0){discard;}
    return;
}

