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
	vec4 unity_OrthoParams;
	vec4 _ZBufferParams;
	vec4 _CameraMotionVectorsTexture_TexelSize;
	float _VelocityScale;
	float _RcpMaxBlurRadius;
};
layout(set = 0, binding = 1) uniform highp texture2D _CameraDepthTexture;
layout(set = 0, binding = 2) uniform mediump texture2D _CameraMotionVectorsTexture;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
vec2 u_xlat0;
float u_xlat1;
vec2 u_xlat2;
layout(set = 0, binding = 3) uniform highp  sampler sampler_CameraDepthTexture;
layout(set = 0, binding = 4) uniform mediump  sampler sampler_CameraMotionVectorsTexture;
void main()
{
    u_xlat0.x = _VelocityScale * 0.5;
    u_xlat0.xy = u_xlat0.xx * _CameraMotionVectorsTexture_TexelSize.zw;
    u_xlat2.xy = texture(sampler2D(_CameraMotionVectorsTexture, sampler_CameraMotionVectorsTexture), vs_TEXCOORD0.xy).xy;
    u_xlat0.xy = u_xlat0.xy * u_xlat2.xy;
    u_xlat2.x = dot(u_xlat0.xy, u_xlat0.xy);
    u_xlat2.x = sqrt(u_xlat2.x);
    u_xlat2.x = u_xlat2.x * _RcpMaxBlurRadius;
    u_xlat2.x = max(u_xlat2.x, 1.0);
    u_xlat0.xy = u_xlat0.xy / u_xlat2.xx;
    u_xlat0.xy = u_xlat0.xy * vec2(vec2(_RcpMaxBlurRadius, _RcpMaxBlurRadius)) + vec2(1.0, 1.0);
    SV_Target0.xy = u_xlat0.xy * vec2(0.5, 0.5);
    u_xlat0.x = (-unity_OrthoParams.w) + 1.0;
    u_xlat1 = texture(sampler2D(_CameraDepthTexture, sampler_CameraDepthTexture), vs_TEXCOORD0.xy).x;
    u_xlat1 = u_xlat1 * _ZBufferParams.x;
    u_xlat0.x = u_xlat0.x * u_xlat1 + _ZBufferParams.y;
    u_xlat1 = (-unity_OrthoParams.w) * u_xlat1 + 1.0;
    SV_Target0.z = u_xlat1 / u_xlat0.x;
    SV_Target0.w = 0.0;
    return;
}

