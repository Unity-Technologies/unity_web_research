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
	float _RenderViewportScaleFactor;
	vec4 _MainTex_TexelSize;
	float _SampleScale;
	vec4 _ColorIntensity;
};
layout(set = 0, binding = 1) uniform mediump texture2D _MainTex;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
vec4 u_xlat0;
vec4 u_xlat1;
vec4 u_xlat2;
layout(set = 0, binding = 2) uniform mediump  sampler sampler_MainTex;
void main()
{
    u_xlat0 = _MainTex_TexelSize.xyxy * vec4(-1.0, -1.0, 1.0, 1.0);
    u_xlat1.x = _SampleScale * 0.5;
    u_xlat2 = u_xlat0.xyzy * u_xlat1.xxxx + vs_TEXCOORD0.xyxy;
    u_xlat2 = clamp(u_xlat2, 0.0, 1.0);
    u_xlat0 = u_xlat0.xwzw * u_xlat1.xxxx + vs_TEXCOORD0.xyxy;
    u_xlat0 = clamp(u_xlat0, 0.0, 1.0);
    u_xlat0 = u_xlat0 * vec4(_RenderViewportScaleFactor);
    u_xlat1 = u_xlat2 * vec4(_RenderViewportScaleFactor);
    u_xlat2.xyz = texture(sampler2D(_MainTex, sampler_MainTex), u_xlat1.xy).xyz;
    u_xlat1.xyz = texture(sampler2D(_MainTex, sampler_MainTex), u_xlat1.zw).xyz;
    u_xlat1.xyz = u_xlat1.xyz + u_xlat2.xyz;
    u_xlat2.xyz = texture(sampler2D(_MainTex, sampler_MainTex), u_xlat0.xy).xyz;
    u_xlat0.xyz = texture(sampler2D(_MainTex, sampler_MainTex), u_xlat0.zw).xyz;
    u_xlat1.xyz = u_xlat1.xyz + u_xlat2.xyz;
    u_xlat0.xyz = u_xlat0.xyz + u_xlat1.xyz;
    u_xlat0.xyz = u_xlat0.xyz * vec3(0.25, 0.25, 0.25);
    u_xlat0.xyz = u_xlat0.xyz * _ColorIntensity.www;
    SV_Target0.xyz = u_xlat0.xyz * _ColorIntensity.xyz;
    SV_Target0.w = 1.0;
    return;
}

