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
	vec4 _Params;
};
layout(set = 0, binding = 0) uniform mediump texture2D _BlitTexture;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 1) uniform mediump  sampler sampler_LinearClamp;
void main()
{
vec2 u_xlat0;
float u_xlat2;
float u_xlat3;
    u_xlat0.xy = vs_TEXCOORD0.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat0.xy = u_xlat0.xy * _Params.xy;
    u_xlat0.xy = u_xlat0.xy * _Params.ww;
    u_xlat2 = u_xlat0.x * u_xlat0.x;
    u_xlat3 = u_xlat0.x * u_xlat0.x + 4.0;
    u_xlat3 = sqrt(u_xlat3);
    u_xlat2 = u_xlat2 / u_xlat3;
    u_xlat2 = (-u_xlat2) + u_xlat3;
    u_xlat2 = u_xlat2 / u_xlat3;
    u_xlat0.xy = vec2(u_xlat2) * u_xlat0.xy;
    u_xlat2 = u_xlat2 * 2.0 + -1.0;
    u_xlat0.xy = u_xlat0.xy / vec2(u_xlat2);
    u_xlat0.xy = u_xlat0.xy / _Params.xy;
    u_xlat0.xy = u_xlat0.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
    SV_Target0 = texture(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat0.xy, _GlobalMipBias.x);
    return;
}

