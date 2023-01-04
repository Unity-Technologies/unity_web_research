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
	float _Cutoff;
	float _EdgeSize;
	float _NoiseStrength;
};
layout(set = 0, binding = 1) uniform mediump texture2D _Noise;
layout(set = 0, binding = 2) uniform mediump texture2D _Gradient;
layout(location = 0) in highp vec4 vs_TEXCOORD1;
layout(location = 0) out highp vec4 SV_Target0;
float u_xlat0;
bool u_xlatb0;
float u_xlat1;
float u_xlat2;
layout(set = 0, binding = 3) uniform mediump  sampler sampler_Noise;
layout(set = 0, binding = 4) uniform mediump  sampler sampler_Gradient;
void main()
{
    u_xlat0 = texture(sampler2D(_Noise, sampler_Noise), vs_TEXCOORD1.xy).x;
    u_xlat1 = texture(sampler2D(_Gradient, sampler_Gradient), vs_TEXCOORD1.zw).x;
    u_xlat2 = (-u_xlat1) + 1.0;
    u_xlat0 = u_xlat2 * u_xlat0;
    u_xlat0 = u_xlat0 * _NoiseStrength + u_xlat1;
    u_xlat0 = (-u_xlat0) + 1.0;
    u_xlat0 = u_xlat0 + (-_Cutoff);
    u_xlat1 = float(1.0) / (-_EdgeSize);
    u_xlat0 = u_xlat1 * u_xlat0;
    u_xlat0 = clamp(u_xlat0, 0.0, 1.0);
    u_xlat1 = u_xlat0 * -2.0 + 3.0;
    u_xlat0 = u_xlat0 * u_xlat0;
    u_xlat0 = (-u_xlat1) * u_xlat0 + (-_Cutoff);
    u_xlat0 = u_xlat0 + 1.0;
    u_xlatb0 = u_xlat0<0.0;
    if(((int(u_xlatb0) * int(0xffffffffu)))!=0){discard;}
    SV_Target0 = vec4(0.0, 0.0, 0.0, 0.0);
    return;
}
