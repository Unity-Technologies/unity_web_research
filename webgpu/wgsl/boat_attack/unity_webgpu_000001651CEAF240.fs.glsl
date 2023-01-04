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
	vec4 _ScaledScreenParams;
	vec2 _GlobalMipBias;
	vec4 _AmbientOcclusionParam;
	vec4 _ScaleBiasRt;
};
layout(set = 1, binding = 1, std140) uniform UnityPerMaterial {
	vec4 _Color;
};
layout(set = 0, binding = 0) uniform mediump texture2D _ScreenSpaceOcclusionTexture;
layout(location = 0) in highp vec4 vs_INTERP2;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 1) uniform mediump  sampler sampler_ScreenSpaceOcclusionTexture;
void main()
{
vec3 u_xlat0;
vec3 u_xlat1;
float u_xlat2;
vec4 hlslcc_FragCoord = vec4(gl_FragCoord.xyz, 1.0/gl_FragCoord.w);
    u_xlat0.xy = vec2(1.0) / vec2(_ScaledScreenParams.xy);
    u_xlat0.xy = u_xlat0.xy * hlslcc_FragCoord.xy;
    u_xlat1.x = u_xlat0.y * _ScaleBiasRt.x + _ScaleBiasRt.y;
    u_xlat0.z = (-u_xlat1.x) + 1.0;
    u_xlat0.x = texture(sampler2D(_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture), u_xlat0.xz, _GlobalMipBias.x).x;
    u_xlat0.x = u_xlat0.x + -1.0;
    u_xlat0.x = _AmbientOcclusionParam.w * u_xlat0.x + 1.0;
    u_xlat1.x = vs_INTERP2.x + 0.25;
    u_xlat1.x = floor(u_xlat1.x);
    u_xlat2 = (-u_xlat1.x) + 1.0;
    u_xlat1.xyz = u_xlat1.xxx * _Color.xyz + vec3(u_xlat2);
    u_xlat1.xyz = u_xlat1.xyz * vec3(8.0, 8.0, 8.0);
    SV_Target0.xyz = u_xlat0.xxx * u_xlat1.xyz;
    SV_Target0.w = 1.0;
    return;
}

