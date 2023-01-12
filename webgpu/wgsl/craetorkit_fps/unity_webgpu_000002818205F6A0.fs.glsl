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
	float _RenderViewportScaleFactor;
	vec4 _AOParams;
	vec3 _AOColor;
	vec4 _SAOcclusionTexture_TexelSize;
};
layout(set = 0, binding = 0) uniform mediump texture2D _SAOcclusionTexture;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 1) uniform mediump  sampler sampler_SAOcclusionTexture;
void main()
{
vec4 u_xlat0;
vec4 u_xlat1;
vec4 u_xlat2;
vec4 u_xlat3;
vec4 u_xlat4;
vec3 u_xlat5;
vec3 u_xlat6;
vec3 u_xlat7;
float u_xlat10;
float u_xlat12;
float u_xlat15;
float u_xlat17;
    u_xlat0.xy = vs_TEXCOORD0.xy;
    u_xlat0.xy = clamp(u_xlat0.xy, 0.0, 1.0);
    u_xlat0.xy = u_xlat0.xy * vec2(_RenderViewportScaleFactor);
    u_xlat0 = texture(sampler2D(_SAOcclusionTexture, sampler_SAOcclusionTexture), u_xlat0.xy);
    u_xlat5.xyz = u_xlat0.yzw * vec3(2.0, 2.0, 2.0) + vec3(-1.0, -1.0, -1.0);
    u_xlat1.xy = _SAOcclusionTexture_TexelSize.xy / _AOParams.zz;
    u_xlat2.xy = (-u_xlat1.xy) + vs_TEXCOORD0.xy;
    u_xlat2.xy = clamp(u_xlat2.xy, 0.0, 1.0);
    u_xlat2.xy = u_xlat2.xy * vec2(_RenderViewportScaleFactor);
    u_xlat2 = texture(sampler2D(_SAOcclusionTexture, sampler_SAOcclusionTexture), u_xlat2.xy);
    u_xlat7.xyz = u_xlat2.yzw * vec3(2.0, 2.0, 2.0) + vec3(-1.0, -1.0, -1.0);
    u_xlat7.x = dot(u_xlat5.xyz, u_xlat7.xyz);
    u_xlat7.x = u_xlat7.x + -0.800000012;
    u_xlat7.x = u_xlat7.x * 5.00000048;
    u_xlat7.x = clamp(u_xlat7.x, 0.0, 1.0);
    u_xlat12 = u_xlat7.x * -2.0 + 3.0;
    u_xlat7.x = u_xlat7.x * u_xlat7.x;
    u_xlat7.x = u_xlat7.x * u_xlat12;
    u_xlat0.x = u_xlat2.x * u_xlat7.x + u_xlat0.x;
    u_xlat1.zw = (-u_xlat1.yx);
    u_xlat3 = u_xlat1.xzwy + vs_TEXCOORD0.xyxy;
    u_xlat3 = clamp(u_xlat3, 0.0, 1.0);
    u_xlat1.xy = u_xlat1.xy + vs_TEXCOORD0.xy;
    u_xlat1.xy = clamp(u_xlat1.xy, 0.0, 1.0);
    u_xlat1.xy = u_xlat1.xy * vec2(_RenderViewportScaleFactor);
    u_xlat1 = texture(sampler2D(_SAOcclusionTexture, sampler_SAOcclusionTexture), u_xlat1.xy);
    u_xlat3 = u_xlat3 * vec4(_RenderViewportScaleFactor);
    u_xlat4 = texture(sampler2D(_SAOcclusionTexture, sampler_SAOcclusionTexture), u_xlat3.xy);
    u_xlat3 = texture(sampler2D(_SAOcclusionTexture, sampler_SAOcclusionTexture), u_xlat3.zw);
    u_xlat2.xzw = u_xlat4.yzw * vec3(2.0, 2.0, 2.0) + vec3(-1.0, -1.0, -1.0);
    u_xlat2.x = dot(u_xlat5.xyz, u_xlat2.xzw);
    u_xlat2.x = u_xlat2.x + -0.800000012;
    u_xlat2.x = u_xlat2.x * 5.00000048;
    u_xlat2.x = clamp(u_xlat2.x, 0.0, 1.0);
    u_xlat12 = u_xlat2.x * -2.0 + 3.0;
    u_xlat2.x = u_xlat2.x * u_xlat2.x;
    u_xlat17 = u_xlat2.x * u_xlat12;
    u_xlat2.x = u_xlat12 * u_xlat2.x + u_xlat7.x;
    u_xlat0.x = u_xlat4.x * u_xlat17 + u_xlat0.x;
    u_xlat7.xyz = u_xlat3.yzw * vec3(2.0, 2.0, 2.0) + vec3(-1.0, -1.0, -1.0);
    u_xlat7.x = dot(u_xlat5.xyz, u_xlat7.xyz);
    u_xlat7.x = u_xlat7.x + -0.800000012;
    u_xlat7.x = u_xlat7.x * 5.00000048;
    u_xlat7.x = clamp(u_xlat7.x, 0.0, 1.0);
    u_xlat12 = u_xlat7.x * -2.0 + 3.0;
    u_xlat7.x = u_xlat7.x * u_xlat7.x;
    u_xlat17 = u_xlat7.x * u_xlat12;
    u_xlat2.x = u_xlat12 * u_xlat7.x + u_xlat2.x;
    u_xlat0.x = u_xlat3.x * u_xlat17 + u_xlat0.x;
    u_xlat6.xyz = u_xlat1.yzw * vec3(2.0, 2.0, 2.0) + vec3(-1.0, -1.0, -1.0);
    u_xlat5.x = dot(u_xlat5.xyz, u_xlat6.xyz);
    u_xlat5.x = u_xlat5.x + -0.800000012;
    u_xlat5.x = u_xlat5.x * 5.00000048;
    u_xlat5.x = clamp(u_xlat5.x, 0.0, 1.0);
    u_xlat10 = u_xlat5.x * -2.0 + 3.0;
    u_xlat5.x = u_xlat5.x * u_xlat5.x;
    u_xlat15 = u_xlat5.x * u_xlat10;
    u_xlat5.x = u_xlat10 * u_xlat5.x + u_xlat2.x;
    u_xlat5.x = u_xlat5.x + 1.0;
    u_xlat0.x = u_xlat1.x * u_xlat15 + u_xlat0.x;
    u_xlat0.x = u_xlat0.x / u_xlat5.x;
    SV_Target0.xyz = u_xlat0.xxx * _AOColor.xyz;
    SV_Target0.w = u_xlat0.x;
    return;
}

