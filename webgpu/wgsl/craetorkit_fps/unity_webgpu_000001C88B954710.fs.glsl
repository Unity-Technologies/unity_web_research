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
	vec4 _Color;
	float _BumpScale;
	vec4 _CameraFadeParams;
	float _DistortionStrengthScaled;
	float _DistortionBlend;
};
layout(set = 0, binding = 0) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 1) uniform mediump texture2D _BumpMap;
layout(set = 0, binding = 2) uniform highp texture2D _GrabTexture;
layout(location = 0) in highp vec4 vs_COLOR0;
layout(location = 1) in highp vec2 vs_TEXCOORD1;
layout(location = 2) in highp vec4 vs_TEXCOORD3;
layout(location = 3) in highp vec4 vs_TEXCOORD4;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 3) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 4) uniform mediump  sampler sampler_BumpMap;
layout(set = 0, binding = 5) uniform highp  sampler sampler_GrabTexture;
void main()
{
vec4 u_xlat0;
vec4 u_xlat1;
float u_xlat4;
float u_xlat6;
float u_xlat7;
    u_xlat0.xyz = texture(sampler2D(_BumpMap, sampler_BumpMap), vs_TEXCOORD1.xy).xyw;
    u_xlat0.x = u_xlat0.z * u_xlat0.x;
    u_xlat0.xy = u_xlat0.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat0.xy = u_xlat0.xy * vec2(_BumpScale);
    u_xlat6 = dot(u_xlat0.xy, u_xlat0.xy);
    u_xlat6 = min(u_xlat6, 1.0);
    u_xlat6 = (-u_xlat6) + 1.0;
    u_xlat0.z = sqrt(u_xlat6);
    u_xlat4 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat4 = inversesqrt(u_xlat4);
    u_xlat0.xy = vec2(u_xlat4) * u_xlat0.xy;
    u_xlat0.xy = u_xlat0.xy * vec2(vec2(_DistortionStrengthScaled, _DistortionStrengthScaled));
    u_xlat4 = vs_TEXCOORD3.z + (-_CameraFadeParams.x);
    u_xlat4 = u_xlat4 * _CameraFadeParams.y;
    u_xlat4 = clamp(u_xlat4, 0.0, 1.0);
    u_xlat1 = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD1.xy);
    u_xlat1 = u_xlat1 * _Color;
    u_xlat6 = u_xlat1.w * vs_COLOR0.w;
    u_xlat7 = u_xlat4 * u_xlat6;
    u_xlat4 = u_xlat6 * u_xlat4 + (-_DistortionBlend);
    u_xlat4 = clamp(u_xlat4, 0.0, 1.0);
    u_xlat0.xy = u_xlat0.xy * vec2(u_xlat7) + vs_TEXCOORD4.xy;
    SV_Target0.w = u_xlat7;
    u_xlat0.xy = u_xlat0.xy / vs_TEXCOORD4.ww;
    u_xlat0.xyw = texture(sampler2D(_GrabTexture, sampler_GrabTexture), u_xlat0.xy).xyz;
    u_xlat1.xyz = u_xlat1.xyz * vs_COLOR0.xyz + (-u_xlat0.xyw);
    SV_Target0.xyz = vec3(u_xlat4) * u_xlat1.xyz + u_xlat0.xyw;
    return;
}

