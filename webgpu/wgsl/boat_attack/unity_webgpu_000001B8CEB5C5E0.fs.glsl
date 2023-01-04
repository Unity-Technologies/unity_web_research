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
	mat4x4 unity_MatrixInvVP;
	mat4x4 _PrevViewProjMatrix;
	mat4x4 _NonJitteredViewProjMatrix;
};
layout(set = 0, binding = 0) uniform highp texture2D _CameraDepthTexture;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 1) uniform highp  sampler sampler_CameraDepthTexture;
void main()
{
vec4 u_xlat0;
vec4 u_xlat1;
vec3 u_xlat2;
vec2 u_xlat6;
float u_xlat9;
vec4 hlslcc_FragCoord = vec4(gl_FragCoord.xyz, 1.0/gl_FragCoord.w);
    u_xlat0.xy = hlslcc_FragCoord.xy / _ScaledScreenParams.xy;
    u_xlat6.xy = u_xlat0.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat0.x = texture(sampler2D(_CameraDepthTexture, sampler_CameraDepthTexture), u_xlat0.xy, _GlobalMipBias.x).x;
    u_xlat1 = (-u_xlat6.yyyy) * unity_MatrixInvVP[1];
    u_xlat1 = unity_MatrixInvVP[0] * u_xlat6.xxxx + u_xlat1;
    u_xlat1 = unity_MatrixInvVP[2] * u_xlat0.xxxx + u_xlat1;
    gl_FragDepth = u_xlat0.x;
    u_xlat0 = u_xlat1 + unity_MatrixInvVP[3];
    u_xlat0.xyz = u_xlat0.xyz / u_xlat0.www;
    u_xlat1.xyz = u_xlat0.yyy * _PrevViewProjMatrix[1].xyw;
    u_xlat1.xyz = _PrevViewProjMatrix[0].xyw * u_xlat0.xxx + u_xlat1.xyz;
    u_xlat1.xyz = _PrevViewProjMatrix[2].xyw * u_xlat0.zzz + u_xlat1.xyz;
    u_xlat1.xyz = u_xlat1.xyz + _PrevViewProjMatrix[3].xyw;
    u_xlat9 = float(1.0) / float(u_xlat1.z);
    u_xlat1.xy = vec2(u_xlat9) * u_xlat1.xy;
    u_xlat2.xyz = u_xlat0.yyy * _NonJitteredViewProjMatrix[1].xyw;
    u_xlat0.xyw = _NonJitteredViewProjMatrix[0].xyw * u_xlat0.xxx + u_xlat2.xyz;
    u_xlat0.xyz = _NonJitteredViewProjMatrix[2].xyw * u_xlat0.zzz + u_xlat0.xyw;
    u_xlat0.xyz = u_xlat0.xyz + _NonJitteredViewProjMatrix[3].xyw;
    u_xlat6.x = float(1.0) / float(u_xlat0.z);
    u_xlat0.xy = u_xlat0.xy * u_xlat6.xx + (-u_xlat1.xy);
    SV_Target0.xy = u_xlat0.xy * vec2(0.5, -0.5);
    SV_Target0.zw = vec2(0.0, 0.0);
    return;
}

