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
	vec4 _Dithering_Coords;
	vec4 _BloomTex_TexelSize;
	vec4 _Bloom_DirtTileOffset;
	vec3 _Bloom_Settings;
	vec3 _Bloom_Color;
	vec3 _Lut2D_Params;
	float _PostExposure;
};
layout(set = 0, binding = 1) uniform mediump texture2D _DitheringTex;
layout(set = 0, binding = 2) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 3) uniform mediump texture2D _AutoExposureTex;
layout(set = 0, binding = 4) uniform mediump texture2D _BloomTex;
layout(set = 0, binding = 5) uniform mediump texture2D _Bloom_DirtTex;
layout(set = 0, binding = 6) uniform mediump texture2D _Lut2D;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 1) in highp vec2 vs_TEXCOORD1;
layout(location = 0) out highp vec4 SV_Target0;
vec4 u_xlat0;
bvec3 u_xlatb0;
vec4 u_xlat1;
vec4 u_xlat2;
vec4 u_xlat3;
vec3 u_xlat4;
float u_xlat12;
layout(set = 0, binding = 7) uniform mediump  sampler sampler_DitheringTex;
layout(set = 0, binding = 8) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 9) uniform mediump  sampler sampler_AutoExposureTex;
layout(set = 0, binding = 10) uniform mediump  sampler sampler_BloomTex;
layout(set = 0, binding = 11) uniform mediump  sampler sampler_Bloom_DirtTex;
layout(set = 0, binding = 12) uniform mediump  sampler sampler_Lut2D;
void main()
{
    u_xlat0 = _BloomTex_TexelSize.xyxy * vec4(-1.0, -1.0, 1.0, 1.0);
    u_xlat1.x = _Bloom_Settings.x * 0.5;
    u_xlat2 = u_xlat0.xyzy * u_xlat1.xxxx + vs_TEXCOORD0.xyxy;
    u_xlat2 = clamp(u_xlat2, 0.0, 1.0);
    u_xlat0 = u_xlat0.xwzw * u_xlat1.xxxx + vs_TEXCOORD0.xyxy;
    u_xlat0 = clamp(u_xlat0, 0.0, 1.0);
    u_xlat0 = u_xlat0 * vec4(_RenderViewportScaleFactor);
    u_xlat1 = u_xlat2 * vec4(_RenderViewportScaleFactor);
    u_xlat2 = texture(sampler2D(_BloomTex, sampler_BloomTex), u_xlat1.xy);
    u_xlat1 = texture(sampler2D(_BloomTex, sampler_BloomTex), u_xlat1.zw);
    u_xlat1 = u_xlat1 + u_xlat2;
    u_xlat2 = texture(sampler2D(_BloomTex, sampler_BloomTex), u_xlat0.xy);
    u_xlat0 = texture(sampler2D(_BloomTex, sampler_BloomTex), u_xlat0.zw);
    u_xlat1 = u_xlat1 + u_xlat2;
    u_xlat0 = u_xlat0 + u_xlat1;
    u_xlat0 = u_xlat0 * _Bloom_Settings.yyyy;
    u_xlat1 = u_xlat0 * vec4(0.25, 0.25, 0.25, 1.0);
    u_xlat0 = u_xlat0 * vec4(0.25, 0.25, 0.25, 0.25);
    u_xlat2.xyz = u_xlat1.xyz * _Bloom_Color.xyz;
    u_xlat2.w = u_xlat1.w * 0.25;
    u_xlat1.x = texture(sampler2D(_AutoExposureTex, sampler_AutoExposureTex), vs_TEXCOORD0.xy).x;
    u_xlat3 = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD1.xy);
    u_xlat3.xyz = u_xlat1.xxx * u_xlat3.xyz;
    u_xlat1 = u_xlat2 + u_xlat3;
    u_xlat2.xy = vs_TEXCOORD0.xy * _Bloom_DirtTileOffset.xy + _Bloom_DirtTileOffset.zw;
    u_xlat2.xyz = texture(sampler2D(_Bloom_DirtTex, sampler_Bloom_DirtTex), u_xlat2.xy).xyz;
    u_xlat2.xyz = u_xlat2.xyz * _Bloom_Settings.zzz;
    u_xlat2.w = 0.0;
    u_xlat0 = u_xlat2 * u_xlat0 + u_xlat1;
    u_xlat0 = u_xlat0 * vec4(vec4(_PostExposure, _PostExposure, _PostExposure, _PostExposure));
    u_xlat0.xyz = u_xlat0.zxy * vec3(5.55555582, 5.55555582, 5.55555582) + vec3(0.0479959995, 0.0479959995, 0.0479959995);
    SV_Target0.w = u_xlat0.w;
    u_xlat0.xyz = log2(u_xlat0.xyz);
    u_xlat0.xyz = u_xlat0.xyz * vec3(0.0734997839, 0.0734997839, 0.0734997839) + vec3(0.386036009, 0.386036009, 0.386036009);
    u_xlat0.xyz = clamp(u_xlat0.xyz, 0.0, 1.0);
    u_xlat4.xyz = u_xlat0.xyz * _Lut2D_Params.zzz;
    u_xlat4.x = floor(u_xlat4.x);
    u_xlat0.x = u_xlat0.x * _Lut2D_Params.z + (-u_xlat4.x);
    u_xlat1.xy = _Lut2D_Params.xy * vec2(0.5, 0.5);
    u_xlat1.yz = u_xlat4.yz * _Lut2D_Params.xy + u_xlat1.xy;
    u_xlat1.x = u_xlat4.x * _Lut2D_Params.y + u_xlat1.y;
    u_xlat2.x = _Lut2D_Params.y;
    u_xlat2.y = 0.0;
    u_xlat4.xy = u_xlat1.xz + u_xlat2.xy;
    u_xlat1.xyz = texture(sampler2D(_Lut2D, sampler_Lut2D), u_xlat1.xz).xyz;
    u_xlat4.xyz = texture(sampler2D(_Lut2D, sampler_Lut2D), u_xlat4.xy).xyz;
    u_xlat4.xyz = (-u_xlat1.xyz) + u_xlat4.xyz;
    u_xlat0.xyz = u_xlat0.xxx * u_xlat4.xyz + u_xlat1.xyz;
    u_xlat1.xyz = max(abs(u_xlat0.xyz), vec3(1.1920929e-07, 1.1920929e-07, 1.1920929e-07));
    u_xlat1.xyz = log2(u_xlat1.xyz);
    u_xlat1.xyz = u_xlat1.xyz * vec3(0.416666657, 0.416666657, 0.416666657);
    u_xlat1.xyz = exp2(u_xlat1.xyz);
    u_xlat1.xyz = u_xlat1.xyz * vec3(1.05499995, 1.05499995, 1.05499995) + vec3(-0.0549999997, -0.0549999997, -0.0549999997);
    u_xlat2.xyz = u_xlat0.xyz * vec3(12.9200001, 12.9200001, 12.9200001);
    u_xlatb0.xyz = greaterThanEqual(vec4(0.00313080009, 0.00313080009, 0.00313080009, 0.0), u_xlat0.xyzx).xyz;
    u_xlat0.x = (u_xlatb0.x) ? u_xlat2.x : u_xlat1.x;
    u_xlat0.y = (u_xlatb0.y) ? u_xlat2.y : u_xlat1.y;
    u_xlat0.z = (u_xlatb0.z) ? u_xlat2.z : u_xlat1.z;
    u_xlat1.xy = vs_TEXCOORD0.xy * _Dithering_Coords.xy + _Dithering_Coords.zw;
    u_xlat12 = texture(sampler2D(_DitheringTex, sampler_DitheringTex), u_xlat1.xy).w;
    u_xlat12 = u_xlat12 * 2.0 + -1.0;
    u_xlat1.x = -abs(u_xlat12) + 1.0;
    u_xlat12 = u_xlat12 * 3.40282347e+38 + 0.5;
    u_xlat12 = clamp(u_xlat12, 0.0, 1.0);
    u_xlat12 = u_xlat12 * 2.0 + -1.0;
    u_xlat1.x = sqrt(u_xlat1.x);
    u_xlat1.x = (-u_xlat1.x) + 1.0;
    u_xlat12 = u_xlat12 * u_xlat1.x;
    u_xlat0.xyz = vec3(u_xlat12) * vec3(0.00392156886, 0.00392156886, 0.00392156886) + u_xlat0.xyz;
    u_xlat1.xyz = u_xlat0.xyz + vec3(0.0549999997, 0.0549999997, 0.0549999997);
    u_xlat1.xyz = u_xlat1.xyz * vec3(0.947867334, 0.947867334, 0.947867334);
    u_xlat1.xyz = max(abs(u_xlat1.xyz), vec3(1.1920929e-07, 1.1920929e-07, 1.1920929e-07));
    u_xlat1.xyz = log2(u_xlat1.xyz);
    u_xlat1.xyz = u_xlat1.xyz * vec3(2.4000001, 2.4000001, 2.4000001);
    u_xlat1.xyz = exp2(u_xlat1.xyz);
    u_xlat2.xyz = u_xlat0.xyz * vec3(0.0773993805, 0.0773993805, 0.0773993805);
    u_xlatb0.xyz = greaterThanEqual(vec4(0.0404499993, 0.0404499993, 0.0404499993, 0.0), u_xlat0.xyzx).xyz;
    SV_Target0.x = (u_xlatb0.x) ? u_xlat2.x : u_xlat1.x;
    SV_Target0.y = (u_xlatb0.y) ? u_xlat2.y : u_xlat1.y;
    SV_Target0.z = (u_xlatb0.z) ? u_xlat2.z : u_xlat1.z;
    return;
}

