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
	vec4 _Color;
	vec4 _CameraFadeParams;
	float _DistortionBlend;
};
layout(set = 0, binding = 1) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 2) uniform highp texture2D _GrabTexture;
layout(location = 0) in highp vec4 vs_COLOR0;
layout(location = 1) in highp vec2 vs_TEXCOORD1;
layout(location = 2) in highp vec4 vs_TEXCOORD3;
layout(location = 3) in highp vec4 vs_TEXCOORD4;
layout(location = 0) out highp vec4 SV_Target0;
vec4 u_xlat0;
vec3 u_xlat1;
float u_xlat2;
float u_xlat9;
float u_xlat10;
layout(set = 0, binding = 3) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 4) uniform highp  sampler sampler_GrabTexture;
void main()
{
    u_xlat0 = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD1.xy);
    u_xlat0 = u_xlat0 * _Color;
    u_xlat1.xy = vs_TEXCOORD4.xy / vs_TEXCOORD4.ww;
    u_xlat1.xyz = texture(sampler2D(_GrabTexture, sampler_GrabTexture), u_xlat1.xy).xyz;
    u_xlat0.xyz = u_xlat0.xyz * vs_COLOR0.xyz + (-u_xlat1.xyz);
    u_xlat9 = u_xlat0.w * vs_COLOR0.w;
    u_xlat10 = vs_TEXCOORD3.z + (-_CameraFadeParams.x);
    u_xlat10 = u_xlat10 * _CameraFadeParams.y;
    u_xlat10 = clamp(u_xlat10, 0.0, 1.0);
    u_xlat2 = u_xlat9 * u_xlat10 + (-_DistortionBlend);
    u_xlat2 = clamp(u_xlat2, 0.0, 1.0);
    u_xlat9 = u_xlat9 * u_xlat10;
    SV_Target0.w = u_xlat9;
    SV_Target0.xyz = vec3(u_xlat2) * u_xlat0.xyz + u_xlat1.xyz;
    return;
}

