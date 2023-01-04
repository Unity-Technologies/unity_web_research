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
	vec2 _GlobalMipBias;
};
layout(set = 0, binding = 0) uniform mediump texture2D Texture2D_B222E8F;
layout(location = 0) in highp vec4 vs_INTERP1;
layout(location = 0) out highp vec4 SV_TARGET0;
layout(set = 0, binding = 1) uniform mediump  sampler samplerTexture2D_B222E8F;
void main()
{
float u_xlat0;
bool u_xlatb0;
vec4 hlslcc_FragCoord = vec4(gl_FragCoord.xyz, 1.0/gl_FragCoord.w);
    u_xlat0 = texture(sampler2D(Texture2D_B222E8F, samplerTexture2D_B222E8F), vs_INTERP1.xy, _GlobalMipBias.x).w;
    u_xlat0 = u_xlat0 + -0.400000006;
    u_xlatb0 = u_xlat0<0.0;
    if(((int(u_xlatb0) * int(0xffffffffu)))!=0){discard;}
    SV_TARGET0 = hlslcc_FragCoord.zzzz;
    return;
}

