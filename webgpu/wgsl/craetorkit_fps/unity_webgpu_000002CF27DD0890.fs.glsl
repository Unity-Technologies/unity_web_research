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
	vec4 unity_OrthoParams;
	vec4 _ZBufferParams;
	vec4 _Params;
};
layout(set = 0, binding = 0) uniform highp texture2D _CameraDepthTexture;
layout(location = 0) in highp vec2 vs_TEXCOORD1;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 1) uniform highp  sampler sampler_CameraDepthTexture;
void main()
{
float u_xlat0;
float u_xlat1;
float u_xlat2;
    u_xlat0 = (-unity_OrthoParams.w) + 1.0;
    u_xlat1 = textureLod(sampler2D(_CameraDepthTexture, sampler_CameraDepthTexture), vs_TEXCOORD1.xy, 0.0).x;
    u_xlat2 = u_xlat1 * _ZBufferParams.x;
    u_xlat0 = u_xlat0 * u_xlat2 + _ZBufferParams.y;
    u_xlat2 = (-unity_OrthoParams.w) * u_xlat2 + 1.0;
    u_xlat0 = u_xlat2 / u_xlat0;
    u_xlat0 = (-u_xlat1) + u_xlat0;
    SV_Target0.xyz = _Params.xxx * vec3(u_xlat0) + vec3(u_xlat1);
    SV_Target0.w = 1.0;
    return;
}

