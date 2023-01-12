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
	vec4 _ZBufferParams;
	float _Distance;
	float _LensCoeff;
	float _RcpMaxCoC;
};
layout(set = 0, binding = 0) uniform highp texture2D _CameraDepthTexture;
layout(location = 0) in highp vec2 vs_TEXCOORD1;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 1) uniform highp  sampler sampler_CameraDepthTexture;
void main()
{
float u_xlat0;
float u_xlat1;
    u_xlat0 = texture(sampler2D(_CameraDepthTexture, sampler_CameraDepthTexture), vs_TEXCOORD1.xy).x;
    u_xlat0 = _ZBufferParams.z * u_xlat0 + _ZBufferParams.w;
    u_xlat0 = float(1.0) / u_xlat0;
    u_xlat1 = u_xlat0 + (-_Distance);
    u_xlat0 = max(u_xlat0, 9.99999975e-05);
    u_xlat1 = u_xlat1 * _LensCoeff;
    u_xlat0 = u_xlat1 / u_xlat0;
    u_xlat0 = u_xlat0 * 0.5;
    u_xlat0 = u_xlat0 * _RcpMaxCoC + 0.5;
    SV_Target0 = vec4(u_xlat0);
    SV_Target0 = clamp(SV_Target0, 0.0, 1.0);
    return;
}

