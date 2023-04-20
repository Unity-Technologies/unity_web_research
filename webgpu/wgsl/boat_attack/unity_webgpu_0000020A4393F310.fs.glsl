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
	vec2 _GlobalMipBias;
	vec4 _RTHandleScale;
	vec4 _ScreenSize;
	vec4 _LensFlareScreenSpaceStreakTex_TexelSize;
	vec4 _LensFlareScreenSpaceParams4;
	vec4 _LensFlareScreenSpaceParams5;
	int _LensFlareScreenSpaceMipLevel;
};
layout(set = 0, binding = 0) uniform mediump texture2D _LensFlareScreenSpaceStreakTex;
layout(location = 0) in highp  vec2 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
vec3 u_xlat0;
bool u_xlatb0;
vec4 u_xlat1;
vec3 u_xlat2;
vec4 u_xlat3;
vec2 u_xlat4;
bool u_xlatb4;
vec2 u_xlat8;
float u_xlat12;
layout(set = 0, binding = 1) uniform mediump  sampler sampler_LinearClamp;
void main()
{
    u_xlat0.x = floor(_LensFlareScreenSpaceParams4.z);
    u_xlat4.x = u_xlat0.x + u_xlat0.x;
    u_xlatb4 = u_xlat4.x>=(-u_xlat4.x);
    u_xlat4.xy = (bool(u_xlatb4)) ? vec2(2.0, 0.5) : vec2(-2.0, -0.5);
    u_xlat0.x = u_xlat4.y * u_xlat0.x;
    u_xlat0.x = fract(u_xlat0.x);
    u_xlat0.x = u_xlat0.x * u_xlat4.x;
    u_xlatb0 = u_xlat0.x==0.0;
    u_xlat4.x = fract(_LensFlareScreenSpaceParams4.z);
    u_xlat8.x = (-u_xlat4.x) + 1.0;
    u_xlat4.x = (u_xlatb0) ? u_xlat4.x : (-u_xlat8.x);
    u_xlat0.y = u_xlat4.x * _LensFlareScreenSpaceStreakTex_TexelSize.y;
    u_xlat12 = (-u_xlat8.x) + 1.0;
    u_xlat0.x = (u_xlatb0) ? (-u_xlat8.x) : (-u_xlat12);
    u_xlat0.x = u_xlat0.x * _LensFlareScreenSpaceStreakTex_TexelSize.x;
    u_xlat0.xy = u_xlat0.xy * _LensFlareScreenSpaceParams4.yy;
    u_xlat8.x = float(_LensFlareScreenSpaceMipLevel);
    u_xlat8.x = u_xlat8.x + 1.0;
    u_xlat0.xy = u_xlat8.xx * u_xlat0.xy;
    u_xlat0.xy = u_xlat0.xy / _LensFlareScreenSpaceParams5.xx;
    u_xlat1.xz = (-u_xlat0.xx) * vec2(5.0, 3.0) + vs_TEXCOORD0.xx;
    u_xlat1.xz = clamp(u_xlat1.xz, 0.0, 1.0);
    u_xlat1.yw = (-u_xlat0.yy) * vec2(5.0, 3.0) + vs_TEXCOORD0.yy;
    u_xlat1.yw = clamp(u_xlat1.yw, 0.0, 1.0);
    u_xlat8.xy = (-_ScreenSize.zw) * vec2(0.5, 0.5) + _RTHandleScale.xy;
    u_xlat1 = min(u_xlat8.xyxy, u_xlat1);
    u_xlat2.xyz = texture(sampler2D(_LensFlareScreenSpaceStreakTex, sampler_LinearClamp), u_xlat1.zw, _GlobalMipBias.x).xyz;
    u_xlat1.xyz = texture(sampler2D(_LensFlareScreenSpaceStreakTex, sampler_LinearClamp), u_xlat1.xy, _GlobalMipBias.x).xyz;
    u_xlat2.xyz = u_xlat2.xyz * vec3(0.166666672, 0.166666672, 0.166666672);
    u_xlat1.xyz = u_xlat1.xyz * vec3(0.0833333358, 0.0833333358, 0.0833333358) + u_xlat2.xyz;
    u_xlat2.xy = (-u_xlat0.xy) + vs_TEXCOORD0.xy;
    u_xlat2.xy = clamp(u_xlat2.xy, 0.0, 1.0);
    u_xlat2.xy = min(u_xlat8.xy, u_xlat2.xy);
    u_xlat2.xyz = texture(sampler2D(_LensFlareScreenSpaceStreakTex, sampler_LinearClamp), u_xlat2.xy, _GlobalMipBias.x).xyz;
    u_xlat1.xyz = u_xlat2.xyz * vec3(0.25, 0.25, 0.25) + u_xlat1.xyz;
    u_xlat3.xz = u_xlat0.xx * vec2(3.0, 5.0) + vs_TEXCOORD0.xx;
    u_xlat3.xz = clamp(u_xlat3.xz, 0.0, 1.0);
    u_xlat2.xy = u_xlat0.xy + vs_TEXCOORD0.xy;
    u_xlat2.xy = clamp(u_xlat2.xy, 0.0, 1.0);
    u_xlat3.yw = u_xlat0.yy * vec2(3.0, 5.0) + vs_TEXCOORD0.yy;
    u_xlat3.yw = clamp(u_xlat3.yw, 0.0, 1.0);
    u_xlat3 = min(u_xlat8.xyxy, u_xlat3);
    u_xlat0.xy = min(u_xlat8.xy, u_xlat2.xy);
    u_xlat0.xyz = texture(sampler2D(_LensFlareScreenSpaceStreakTex, sampler_LinearClamp), u_xlat0.xy, _GlobalMipBias.x).xyz;
    u_xlat0.xyz = u_xlat0.xyz * vec3(0.25, 0.25, 0.25) + u_xlat1.xyz;
    u_xlat1.xyz = texture(sampler2D(_LensFlareScreenSpaceStreakTex, sampler_LinearClamp), u_xlat3.xy, _GlobalMipBias.x).xyz;
    u_xlat2.xyz = texture(sampler2D(_LensFlareScreenSpaceStreakTex, sampler_LinearClamp), u_xlat3.zw, _GlobalMipBias.x).xyz;
    u_xlat0.xyz = u_xlat1.xyz * vec3(0.166666672, 0.166666672, 0.166666672) + u_xlat0.xyz;
    SV_Target0.xyz = u_xlat2.xyz * vec3(0.0833333358, 0.0833333358, 0.0833333358) + u_xlat0.xyz;
    SV_Target0.w = 1.0;
    return;
}

