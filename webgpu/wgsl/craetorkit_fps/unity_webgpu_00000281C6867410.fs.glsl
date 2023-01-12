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
	vec4 _Dithering_Coords;
	vec4 _BloomTex_TexelSize;
	vec4 _Bloom_DirtTileOffset;
	vec3 _Bloom_Settings;
	vec3 _Bloom_Color;
	float _ChromaticAberration_Amount;
	vec2 _Grain_Params1;
	vec4 _Grain_Params2;
};
layout(set = 0, binding = 0) uniform mediump texture2D _DitheringTex;
layout(set = 0, binding = 1) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 2) uniform mediump texture2D _AutoExposureTex;
layout(set = 0, binding = 3) uniform mediump texture2D _BloomTex;
layout(set = 0, binding = 4) uniform mediump texture2D _Bloom_DirtTex;
layout(set = 0, binding = 5) uniform mediump texture2D _ChromaticAberration_SpectralLut;
layout(set = 0, binding = 6) uniform mediump texture2D _GrainTex;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 1) in highp vec2 vs_TEXCOORD1;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 7) uniform mediump  sampler sampler_DitheringTex;
layout(set = 0, binding = 8) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 9) uniform mediump  sampler sampler_AutoExposureTex;
layout(set = 0, binding = 10) uniform mediump  sampler sampler_BloomTex;
layout(set = 0, binding = 11) uniform mediump  sampler sampler_Bloom_DirtTex;
layout(set = 0, binding = 12) uniform mediump  sampler sampler_ChromaticAberration_SpectralLut;
layout(set = 0, binding = 13) uniform mediump  sampler sampler_GrainTex;
void main()
{
vec4 u_xlat0;
bvec3 u_xlatb0;
vec4 u_xlat1;
vec4 u_xlat2;
vec4 u_xlat3;
vec4 u_xlat4;
vec4 u_xlat5;
vec3 u_xlat7;
float u_xlat18;
    u_xlat0 = vs_TEXCOORD0.xyxy * vec4(2.0, 2.0, 2.0, 2.0) + vec4(-1.0, -1.0, -1.0, -1.0);
    u_xlat1.x = dot(u_xlat0.zw, u_xlat0.zw);
    u_xlat0 = u_xlat0 * u_xlat1.xxxx;
    u_xlat0 = u_xlat0 * vec4(vec4(_ChromaticAberration_Amount, _ChromaticAberration_Amount, _ChromaticAberration_Amount, _ChromaticAberration_Amount));
    u_xlat0 = u_xlat0 * vec4(-0.333333343, -0.333333343, -0.666666687, -0.666666687) + vs_TEXCOORD0.xyxy;
    u_xlat0 = clamp(u_xlat0, 0.0, 1.0);
    u_xlat0 = u_xlat0 * vec4(_RenderViewportScaleFactor);
    u_xlat1 = textureLod(sampler2D(_MainTex, sampler_MainTex), u_xlat0.zw, 0.0);
    u_xlat0 = textureLod(sampler2D(_MainTex, sampler_MainTex), u_xlat0.xy, 0.0);
    u_xlat2.w = 1.0;
    u_xlat2.xyz = textureLod(sampler2D(_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut), vec2(0.5, 0.0), 0.0).xyz;
    u_xlat0 = u_xlat0 * u_xlat2;
    u_xlat3.xy = vs_TEXCOORD0.xy;
    u_xlat3.xy = clamp(u_xlat3.xy, 0.0, 1.0);
    u_xlat3.xy = u_xlat3.xy * vec2(_RenderViewportScaleFactor);
    u_xlat4 = textureLod(sampler2D(_MainTex, sampler_MainTex), u_xlat3.xy, 0.0);
    u_xlat3 = texture(sampler2D(_BloomTex, sampler_BloomTex), u_xlat3.xy);
    u_xlat5.w = 1.0;
    u_xlat5.xyz = textureLod(sampler2D(_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut), vec2(0.166666672, 0.0), 0.0).xyz;
    u_xlat2.xyz = u_xlat2.xyz + u_xlat5.xyz;
    u_xlat0 = u_xlat4 * u_xlat5 + u_xlat0;
    u_xlat4.w = 1.0;
    u_xlat4.xyz = textureLod(sampler2D(_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut), vec2(0.833333313, 0.0), 0.0).xyz;
    u_xlat2.xyz = u_xlat2.xyz + u_xlat4.xyz;
    u_xlat0 = u_xlat1 * u_xlat4 + u_xlat0;
    u_xlat2.w = 3.0;
    u_xlat0 = u_xlat0 / u_xlat2;
    u_xlat1.x = texture(sampler2D(_AutoExposureTex, sampler_AutoExposureTex), vs_TEXCOORD0.xy).x;
    u_xlat0.xyz = u_xlat0.xyz * u_xlat1.xxx;
    u_xlat1 = _BloomTex_TexelSize.xyxy * vec4(1.0, 1.0, -1.0, 0.0);
    u_xlat2 = (-u_xlat1.xywy) * _Bloom_Settings.xxxx + vs_TEXCOORD0.xyxy;
    u_xlat2 = clamp(u_xlat2, 0.0, 1.0);
    u_xlat2 = u_xlat2 * vec4(_RenderViewportScaleFactor);
    u_xlat4 = texture(sampler2D(_BloomTex, sampler_BloomTex), u_xlat2.xy);
    u_xlat2 = texture(sampler2D(_BloomTex, sampler_BloomTex), u_xlat2.zw);
    u_xlat2 = u_xlat2 * vec4(2.0, 2.0, 2.0, 2.0) + u_xlat4;
    u_xlat4.xy = (-u_xlat1.zy) * _Bloom_Settings.xx + vs_TEXCOORD0.xy;
    u_xlat4.xy = clamp(u_xlat4.xy, 0.0, 1.0);
    u_xlat4.xy = u_xlat4.xy * vec2(_RenderViewportScaleFactor);
    u_xlat4 = texture(sampler2D(_BloomTex, sampler_BloomTex), u_xlat4.xy);
    u_xlat2 = u_xlat2 + u_xlat4;
    u_xlat4 = u_xlat1.zwxw * _Bloom_Settings.xxxx + vs_TEXCOORD0.xyxy;
    u_xlat4 = clamp(u_xlat4, 0.0, 1.0);
    u_xlat4 = u_xlat4 * vec4(_RenderViewportScaleFactor);
    u_xlat5 = texture(sampler2D(_BloomTex, sampler_BloomTex), u_xlat4.xy);
    u_xlat4 = texture(sampler2D(_BloomTex, sampler_BloomTex), u_xlat4.zw);
    u_xlat2 = u_xlat5 * vec4(2.0, 2.0, 2.0, 2.0) + u_xlat2;
    u_xlat2 = u_xlat3 * vec4(4.0, 4.0, 4.0, 4.0) + u_xlat2;
    u_xlat2 = u_xlat4 * vec4(2.0, 2.0, 2.0, 2.0) + u_xlat2;
    u_xlat3 = u_xlat1.zywy * _Bloom_Settings.xxxx + vs_TEXCOORD0.xyxy;
    u_xlat3 = clamp(u_xlat3, 0.0, 1.0);
    u_xlat1.xy = u_xlat1.xy * _Bloom_Settings.xx + vs_TEXCOORD0.xy;
    u_xlat1.xy = clamp(u_xlat1.xy, 0.0, 1.0);
    u_xlat1.xy = u_xlat1.xy * vec2(_RenderViewportScaleFactor);
    u_xlat1 = texture(sampler2D(_BloomTex, sampler_BloomTex), u_xlat1.xy);
    u_xlat3 = u_xlat3 * vec4(_RenderViewportScaleFactor);
    u_xlat4 = texture(sampler2D(_BloomTex, sampler_BloomTex), u_xlat3.xy);
    u_xlat3 = texture(sampler2D(_BloomTex, sampler_BloomTex), u_xlat3.zw);
    u_xlat2 = u_xlat2 + u_xlat4;
    u_xlat2 = u_xlat3 * vec4(2.0, 2.0, 2.0, 2.0) + u_xlat2;
    u_xlat1 = u_xlat1 + u_xlat2;
    u_xlat1 = u_xlat1 * _Bloom_Settings.yyyy;
    u_xlat2 = u_xlat1 * vec4(0.0625, 0.0625, 0.0625, 1.0);
    u_xlat1 = u_xlat1 * vec4(0.0625, 0.0625, 0.0625, 0.0625);
    u_xlat3.xyz = u_xlat2.xyz * _Bloom_Color.xyz;
    u_xlat3.w = u_xlat2.w * 0.0625;
    u_xlat0 = u_xlat0 + u_xlat3;
    u_xlat2.xy = vs_TEXCOORD0.xy * _Bloom_DirtTileOffset.xy + _Bloom_DirtTileOffset.zw;
    u_xlat2.xyz = texture(sampler2D(_Bloom_DirtTex, sampler_Bloom_DirtTex), u_xlat2.xy).xyz;
    u_xlat2.xyz = u_xlat2.xyz * _Bloom_Settings.zzz;
    u_xlat2.w = 0.0;
    u_xlat0 = u_xlat2 * u_xlat1 + u_xlat0;
    u_xlat1.xyz = u_xlat0.xyz;
    u_xlat1.xyz = clamp(u_xlat1.xyz, 0.0, 1.0);
    u_xlat1.x = dot(u_xlat1.xyz, vec3(0.212672904, 0.715152204, 0.0721750036));
    u_xlat1.x = sqrt(u_xlat1.x);
    u_xlat1.x = _Grain_Params1.xxxy.z * (-u_xlat1.x) + 1.0;
    u_xlat7.xy = vs_TEXCOORD1.xy * _Grain_Params2.xy + _Grain_Params2.zw;
    u_xlat7.xyz = texture(sampler2D(_GrainTex, sampler_GrainTex), u_xlat7.xy).xyz;
    u_xlat7.xyz = u_xlat0.xyz * u_xlat7.xyz;
    u_xlat7.xyz = u_xlat7.xyz * vec3(_Grain_Params1.y, _Grain_Params1.y, _Grain_Params1.y);
    u_xlat0.xyz = u_xlat7.xyz * u_xlat1.xxx + u_xlat0.xyz;
    SV_Target0.w = u_xlat0.w;
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
    u_xlat18 = texture(sampler2D(_DitheringTex, sampler_DitheringTex), u_xlat1.xy).w;
    u_xlat18 = u_xlat18 * 2.0 + -1.0;
    u_xlat1.x = -abs(u_xlat18) + 1.0;
    u_xlat18 = u_xlat18 * 3.40282347e+38 + 0.5;
    u_xlat18 = clamp(u_xlat18, 0.0, 1.0);
    u_xlat18 = u_xlat18 * 2.0 + -1.0;
    u_xlat1.x = sqrt(u_xlat1.x);
    u_xlat1.x = (-u_xlat1.x) + 1.0;
    u_xlat18 = u_xlat18 * u_xlat1.x;
    u_xlat0.xyz = vec3(u_xlat18) * vec3(0.00392156886, 0.00392156886, 0.00392156886) + u_xlat0.xyz;
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

