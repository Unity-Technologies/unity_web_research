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
	mat4x4 unity_WorldToCamera;
	float _RenderViewportScaleFactor;
	vec4 _MainTex_TexelSize;
};
layout(set = 0, binding = 0) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 1) uniform mediump texture2D _CameraGBufferTexture2;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 1) in highp vec2 vs_TEXCOORD1;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 2) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 3) uniform mediump  sampler sampler_CameraGBufferTexture2;
void main()
{
vec4 u_xlat0;
vec4 u_xlat1;
vec4 u_xlat2;
vec4 u_xlat3;
vec4 u_xlat4;
float u_xlat5;
vec3 u_xlat6;
vec3 u_xlat7;
vec3 u_xlat8;
float u_xlat12;
float u_xlat13;
float u_xlat15;
bool u_xlatb15;
    u_xlat0.xyz = texture(sampler2D(_CameraGBufferTexture2, sampler_CameraGBufferTexture2), vs_TEXCOORD1.xy).xyz;
    u_xlat15 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlatb15 = u_xlat15!=0.0;
    u_xlat15 = (u_xlatb15) ? -1.0 : -0.0;
    u_xlat0.xyz = u_xlat0.xyz * vec3(2.0, 2.0, 2.0) + vec3(u_xlat15);
    u_xlat1.xyz = u_xlat0.yyy * unity_WorldToCamera[1].xyz;
    u_xlat0.xyw = unity_WorldToCamera[0].xyz * u_xlat0.xxx + u_xlat1.xyz;
    u_xlat0.xyz = unity_WorldToCamera[2].xyz * u_xlat0.zzz + u_xlat0.xyw;
    u_xlat1.x = _MainTex_TexelSize.x;
    u_xlat1.y = 0.0;
    u_xlat2 = (-u_xlat1.xyxy) * vec4(2.76923084, 1.38461542, 6.46153831, 3.23076916) + vs_TEXCOORD0.xyxy;
    u_xlat2 = clamp(u_xlat2, 0.0, 1.0);
    u_xlat1 = u_xlat1.xyxy * vec4(2.76923084, 1.38461542, 6.46153831, 3.23076916) + vs_TEXCOORD0.xyxy;
    u_xlat1 = clamp(u_xlat1, 0.0, 1.0);
    u_xlat1 = u_xlat1 * vec4(_RenderViewportScaleFactor);
    u_xlat2 = u_xlat2 * vec4(_RenderViewportScaleFactor);
    u_xlat3 = texture(sampler2D(_MainTex, sampler_MainTex), u_xlat2.xy);
    u_xlat2 = texture(sampler2D(_MainTex, sampler_MainTex), u_xlat2.zw);
    u_xlat8.xyz = u_xlat3.yzw * vec3(2.0, 2.0, 2.0) + vec3(-1.0, -1.0, -1.0);
    u_xlat15 = dot(u_xlat0.xyz, u_xlat8.xyz);
    u_xlat15 = u_xlat15 + -0.800000012;
    u_xlat15 = u_xlat15 * 5.00000048;
    u_xlat15 = clamp(u_xlat15, 0.0, 1.0);
    u_xlat8.x = u_xlat15 * -2.0 + 3.0;
    u_xlat15 = u_xlat15 * u_xlat15;
    u_xlat15 = u_xlat15 * u_xlat8.x;
    u_xlat15 = u_xlat15 * 0.31621623;
    u_xlat3.x = u_xlat15 * u_xlat3.x;
    u_xlat8.x = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD1.xy).x;
    u_xlat3.x = u_xlat8.x * 0.227027029 + u_xlat3.x;
    u_xlat4 = texture(sampler2D(_MainTex, sampler_MainTex), u_xlat1.xy);
    u_xlat1 = texture(sampler2D(_MainTex, sampler_MainTex), u_xlat1.zw);
    u_xlat8.xyz = u_xlat4.yzw * vec3(2.0, 2.0, 2.0) + vec3(-1.0, -1.0, -1.0);
    u_xlat8.x = dot(u_xlat0.xyz, u_xlat8.xyz);
    u_xlat8.x = u_xlat8.x + -0.800000012;
    u_xlat8.x = u_xlat8.x * 5.00000048;
    u_xlat8.x = clamp(u_xlat8.x, 0.0, 1.0);
    u_xlat13 = u_xlat8.x * -2.0 + 3.0;
    u_xlat8.x = u_xlat8.x * u_xlat8.x;
    u_xlat8.x = u_xlat8.x * u_xlat13;
    u_xlat13 = u_xlat8.x * 0.31621623;
    u_xlat15 = u_xlat8.x * 0.31621623 + u_xlat15;
    u_xlat3.x = u_xlat4.x * u_xlat13 + u_xlat3.x;
    u_xlat7.xyz = u_xlat2.yzw * vec3(2.0, 2.0, 2.0) + vec3(-1.0, -1.0, -1.0);
    u_xlat7.x = dot(u_xlat0.xyz, u_xlat7.xyz);
    u_xlat7.x = u_xlat7.x + -0.800000012;
    u_xlat7.x = u_xlat7.x * 5.00000048;
    u_xlat7.x = clamp(u_xlat7.x, 0.0, 1.0);
    u_xlat12 = u_xlat7.x * -2.0 + 3.0;
    u_xlat7.x = u_xlat7.x * u_xlat7.x;
    u_xlat7.x = u_xlat7.x * u_xlat12;
    u_xlat12 = u_xlat7.x * 0.0702702701;
    u_xlat15 = u_xlat7.x * 0.0702702701 + u_xlat15;
    u_xlat2.x = u_xlat2.x * u_xlat12 + u_xlat3.x;
    u_xlat6.xyz = u_xlat1.yzw * vec3(2.0, 2.0, 2.0) + vec3(-1.0, -1.0, -1.0);
    u_xlat6.x = dot(u_xlat0.xyz, u_xlat6.xyz);
    SV_Target0.yzw = u_xlat0.xyz * vec3(0.5, 0.5, 0.5) + vec3(0.5, 0.5, 0.5);
    u_xlat0.x = u_xlat6.x + -0.800000012;
    u_xlat0.x = u_xlat0.x * 5.00000048;
    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
    u_xlat5 = u_xlat0.x * -2.0 + 3.0;
    u_xlat0.x = u_xlat0.x * u_xlat0.x;
    u_xlat0.x = u_xlat0.x * u_xlat5;
    u_xlat5 = u_xlat0.x * 0.0702702701;
    u_xlat0.x = u_xlat0.x * 0.0702702701 + u_xlat15;
    u_xlat0.x = u_xlat0.x + 0.227027029;
    u_xlat5 = u_xlat1.x * u_xlat5 + u_xlat2.x;
    SV_Target0.x = u_xlat5 / u_xlat0.x;
    return;
}

