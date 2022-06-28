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
	float _MaxCoC;
};
layout(set = 0, binding = 1) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 2) uniform mediump texture2D _CoCTex;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
vec4 u_xlat0;
vec3 u_xlat1;
vec4 u_xlat2;
vec3 u_xlat3;
float u_xlat4;
float u_xlat8;
bool u_xlatb8;
float u_xlat12;
float u_xlat13;
layout(set = 0, binding = 3) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 4) uniform mediump  sampler sampler_CoCTex;
void main()
{
    u_xlat0 = (-_MainTex_TexelSize.xyxy) * vec4(0.5, 0.5, -0.5, 0.5) + vs_TEXCOORD0.xyxy;
    u_xlat0 = clamp(u_xlat0, 0.0, 1.0);
    u_xlat0 = u_xlat0 * vec4(_RenderViewportScaleFactor);
    u_xlat1.xyz = texture(sampler2D(_MainTex, sampler_MainTex), u_xlat0.zw).xyz;
    u_xlat13 = max(u_xlat1.y, u_xlat1.x);
    u_xlat13 = max(u_xlat1.z, u_xlat13);
    u_xlat13 = u_xlat13 + 1.0;
    u_xlat8 = texture(sampler2D(_CoCTex, sampler_CoCTex), u_xlat0.zw).x;
    u_xlat8 = u_xlat8 * 2.0 + -1.0;
    u_xlat12 = abs(u_xlat8) / u_xlat13;
    u_xlat1.xyz = vec3(u_xlat12) * u_xlat1.xyz;
    u_xlat2.xyz = texture(sampler2D(_MainTex, sampler_MainTex), u_xlat0.xy).xyz;
    u_xlat0.x = texture(sampler2D(_CoCTex, sampler_CoCTex), u_xlat0.xy).x;
    u_xlat0.x = u_xlat0.x * 2.0 + -1.0;
    u_xlat4 = max(u_xlat2.y, u_xlat2.x);
    u_xlat4 = max(u_xlat2.z, u_xlat4);
    u_xlat4 = u_xlat4 + 1.0;
    u_xlat4 = abs(u_xlat0.x) / u_xlat4;
    u_xlat1.xyz = u_xlat2.xyz * vec3(u_xlat4) + u_xlat1.xyz;
    u_xlat4 = u_xlat12 + u_xlat4;
    u_xlat2 = _MainTex_TexelSize.xyxy * vec4(-0.5, 0.5, 0.5, 0.5) + vs_TEXCOORD0.xyxy;
    u_xlat2 = clamp(u_xlat2, 0.0, 1.0);
    u_xlat2 = u_xlat2 * vec4(_RenderViewportScaleFactor);
    u_xlat3.xyz = texture(sampler2D(_MainTex, sampler_MainTex), u_xlat2.xy).xyz;
    u_xlat12 = max(u_xlat3.y, u_xlat3.x);
    u_xlat12 = max(u_xlat3.z, u_xlat12);
    u_xlat12 = u_xlat12 + 1.0;
    u_xlat13 = texture(sampler2D(_CoCTex, sampler_CoCTex), u_xlat2.xy).x;
    u_xlat13 = u_xlat13 * 2.0 + -1.0;
    u_xlat12 = abs(u_xlat13) / u_xlat12;
    u_xlat1.xyz = u_xlat3.xyz * vec3(u_xlat12) + u_xlat1.xyz;
    u_xlat4 = u_xlat12 + u_xlat4;
    u_xlat3.xyz = texture(sampler2D(_MainTex, sampler_MainTex), u_xlat2.zw).xyz;
    u_xlat12 = texture(sampler2D(_CoCTex, sampler_CoCTex), u_xlat2.zw).x;
    u_xlat12 = u_xlat12 * 2.0 + -1.0;
    u_xlat2.x = max(u_xlat3.y, u_xlat3.x);
    u_xlat2.x = max(u_xlat3.z, u_xlat2.x);
    u_xlat2.x = u_xlat2.x + 1.0;
    u_xlat2.x = abs(u_xlat12) / u_xlat2.x;
    u_xlat1.xyz = u_xlat3.xyz * u_xlat2.xxx + u_xlat1.xyz;
    u_xlat4 = u_xlat4 + u_xlat2.x;
    u_xlat4 = max(u_xlat4, 9.99999975e-05);
    u_xlat1.xyz = u_xlat1.xyz / vec3(u_xlat4);
    u_xlat4 = min(u_xlat8, u_xlat13);
    u_xlat8 = max(u_xlat8, u_xlat13);
    u_xlat8 = max(u_xlat12, u_xlat8);
    u_xlat4 = min(u_xlat12, u_xlat4);
    u_xlat4 = min(u_xlat4, u_xlat0.x);
    u_xlat0.x = max(u_xlat8, u_xlat0.x);
    u_xlatb8 = u_xlat0.x<(-u_xlat4);
    u_xlat0.x = (u_xlatb8) ? u_xlat4 : u_xlat0.x;
    u_xlat0.x = u_xlat0.x * _MaxCoC;
    u_xlat4 = _MainTex_TexelSize.y + _MainTex_TexelSize.y;
    u_xlat4 = float(1.0) / u_xlat4;
    u_xlat4 = u_xlat4 * abs(u_xlat0.x);
    u_xlat4 = clamp(u_xlat4, 0.0, 1.0);
    SV_Target0.w = u_xlat0.x;
    u_xlat0.x = u_xlat4 * -2.0 + 3.0;
    u_xlat4 = u_xlat4 * u_xlat4;
    u_xlat0.x = u_xlat4 * u_xlat0.x;
    SV_Target0.xyz = u_xlat0.xxx * u_xlat1.xyz;
    return;
}

