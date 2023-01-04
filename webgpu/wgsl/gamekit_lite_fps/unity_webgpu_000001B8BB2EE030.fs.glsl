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
	vec4 _Distortion_Amount;
	vec4 _Distortion_CenterScale;
	vec4 _Dithering_Coords;
	vec4 _BloomTex_TexelSize;
	vec4 _Bloom_DirtTileOffset;
	vec3 _Bloom_Settings;
	vec3 _Bloom_Color;
	float _ChromaticAberration_Amount;
	vec3 _Lut2D_Params;
	float _PostExposure;
	vec2 _Grain_Params1;
	vec4 _Grain_Params2;
};
layout(set = 0, binding = 1) uniform mediump texture2D _DitheringTex;
layout(set = 0, binding = 2) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 3) uniform mediump texture2D _AutoExposureTex;
layout(set = 0, binding = 4) uniform mediump texture2D _BloomTex;
layout(set = 0, binding = 5) uniform mediump texture2D _Bloom_DirtTex;
layout(set = 0, binding = 6) uniform mediump texture2D _ChromaticAberration_SpectralLut;
layout(set = 0, binding = 7) uniform mediump texture2D _Lut2D;
layout(set = 0, binding = 8) uniform mediump texture2D _GrainTex;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 1) in highp vec2 vs_TEXCOORD1;
layout(location = 0) out highp vec4 SV_Target0;
vec4 u_xlat0;
bvec3 u_xlatb0;
vec4 u_xlat1;
bool u_xlatb1;
vec4 u_xlat2;
vec4 u_xlat3;
vec4 u_xlat4;
vec4 u_xlat5;
vec4 u_xlat6;
vec4 u_xlat7;
bool u_xlatb7;
vec4 u_xlat8;
float u_xlat9;
float u_xlat10;
vec3 u_xlat11;
bool u_xlatb11;
vec3 u_xlat12;
bool u_xlatb12;
float u_xlat13;
bool u_xlatb13;
float u_xlat17;
float u_xlat18;
vec2 u_xlat20;
vec2 u_xlat21;
float u_xlat22;
float u_xlat27;
float u_xlat28;
float u_xlat31;
float u_xlat32;
bool u_xlatb37;
bool u_xlatb38;
layout(set = 0, binding = 9) uniform mediump  sampler sampler_DitheringTex;
layout(set = 0, binding = 10) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 11) uniform mediump  sampler sampler_AutoExposureTex;
layout(set = 0, binding = 12) uniform mediump  sampler sampler_BloomTex;
layout(set = 0, binding = 13) uniform mediump  sampler sampler_Bloom_DirtTex;
layout(set = 0, binding = 14) uniform mediump  sampler sampler_ChromaticAberration_SpectralLut;
layout(set = 0, binding = 15) uniform mediump  sampler sampler_Lut2D;
layout(set = 0, binding = 16) uniform mediump  sampler sampler_GrainTex;
void main()
{
    u_xlat0.xy = vs_TEXCOORD0.xy + vec2(-0.5, -0.5);
    u_xlat20.xy = u_xlat0.xy * _Distortion_Amount.zz + vec2(0.5, 0.5);
    u_xlat0.xy = u_xlat0.xy * _Distortion_Amount.zz + (-_Distortion_CenterScale.xy);
    u_xlat0.xy = u_xlat0.xy * _Distortion_CenterScale.zw;
    u_xlat1.x = dot(u_xlat0.xy, u_xlat0.xy);
    u_xlat1.x = sqrt(u_xlat1.x);
    u_xlatb11 = 0.0<_Distortion_Amount.w;
    if(u_xlatb11){
        u_xlat21.xy = u_xlat1.xx * _Distortion_Amount.xy;
        u_xlat2.x = sin(u_xlat21.x);
        u_xlat3.x = cos(u_xlat21.x);
        u_xlat21.x = u_xlat2.x / u_xlat3.x;
        u_xlat31 = float(1.0) / u_xlat21.y;
        u_xlat21.x = u_xlat21.x * u_xlat31 + -1.0;
        u_xlat21.xy = u_xlat0.xy * u_xlat21.xx + u_xlat20.xy;
    } else {
        u_xlat2.x = float(1.0) / u_xlat1.x;
        u_xlat2.x = u_xlat2.x * _Distortion_Amount.x;
        u_xlat12.x = u_xlat1.x * _Distortion_Amount.y;
        u_xlat22 = min(abs(u_xlat12.x), 1.0);
        u_xlat32 = max(abs(u_xlat12.x), 1.0);
        u_xlat32 = float(1.0) / u_xlat32;
        u_xlat22 = u_xlat32 * u_xlat22;
        u_xlat32 = u_xlat22 * u_xlat22;
        u_xlat3.x = u_xlat32 * 0.0208350997 + -0.0851330012;
        u_xlat3.x = u_xlat32 * u_xlat3.x + 0.180141002;
        u_xlat3.x = u_xlat32 * u_xlat3.x + -0.330299497;
        u_xlat32 = u_xlat32 * u_xlat3.x + 0.999866009;
        u_xlat3.x = u_xlat32 * u_xlat22;
        u_xlatb13 = 1.0<abs(u_xlat12.x);
        u_xlat3.x = u_xlat3.x * -2.0 + 1.57079637;
        u_xlat3.x = u_xlatb13 ? u_xlat3.x : float(0.0);
        u_xlat22 = u_xlat22 * u_xlat32 + u_xlat3.x;
        u_xlat12.x = min(u_xlat12.x, 1.0);
        u_xlatb12 = u_xlat12.x<(-u_xlat12.x);
        u_xlat12.x = (u_xlatb12) ? (-u_xlat22) : u_xlat22;
        u_xlat2.x = u_xlat2.x * u_xlat12.x + -1.0;
        u_xlat21.xy = u_xlat0.xy * u_xlat2.xx + u_xlat20.xy;
    }
    u_xlat2.x = texture(sampler2D(_AutoExposureTex, sampler_AutoExposureTex), vs_TEXCOORD0.xy).x;
    u_xlat3 = vs_TEXCOORD0.xyxy * vec4(2.0, 2.0, 2.0, 2.0) + vec4(-1.0, -1.0, -1.0, -1.0);
    u_xlat12.x = dot(u_xlat3.zw, u_xlat3.zw);
    u_xlat3 = u_xlat12.xxxx * u_xlat3;
    u_xlat3 = u_xlat3 * vec4(vec4(_ChromaticAberration_Amount, _ChromaticAberration_Amount, _ChromaticAberration_Amount, _ChromaticAberration_Amount));
    u_xlat4.xyz = textureLod(sampler2D(_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut), vec2(0.166666672, 0.0), 0.0).xyz;
    u_xlat5.xyz = textureLod(sampler2D(_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut), vec2(0.5, 0.0), 0.0).xyz;
    u_xlat6.xyz = textureLod(sampler2D(_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut), vec2(0.833333313, 0.0), 0.0).xyz;
    if(u_xlatb11){
        u_xlat12.xy = u_xlat1.xx * _Distortion_Amount.xy;
        u_xlat7.x = sin(u_xlat12.x);
        u_xlat8.x = cos(u_xlat12.x);
        u_xlat12.x = u_xlat7.x / u_xlat8.x;
        u_xlat22 = float(1.0) / u_xlat12.y;
        u_xlat12.x = u_xlat12.x * u_xlat22 + -1.0;
        u_xlat12.xy = u_xlat0.xy * u_xlat12.xx + u_xlat20.xy;
    } else {
        u_xlat32 = float(1.0) / u_xlat1.x;
        u_xlat32 = u_xlat32 * _Distortion_Amount.x;
        u_xlat1.x = u_xlat1.x * _Distortion_Amount.y;
        u_xlat7.x = min(abs(u_xlat1.x), 1.0);
        u_xlat17 = max(abs(u_xlat1.x), 1.0);
        u_xlat17 = float(1.0) / u_xlat17;
        u_xlat7.x = u_xlat17 * u_xlat7.x;
        u_xlat17 = u_xlat7.x * u_xlat7.x;
        u_xlat27 = u_xlat17 * 0.0208350997 + -0.0851330012;
        u_xlat27 = u_xlat17 * u_xlat27 + 0.180141002;
        u_xlat27 = u_xlat17 * u_xlat27 + -0.330299497;
        u_xlat17 = u_xlat17 * u_xlat27 + 0.999866009;
        u_xlat27 = u_xlat17 * u_xlat7.x;
        u_xlatb37 = 1.0<abs(u_xlat1.x);
        u_xlat27 = u_xlat27 * -2.0 + 1.57079637;
        u_xlat27 = u_xlatb37 ? u_xlat27 : float(0.0);
        u_xlat7.x = u_xlat7.x * u_xlat17 + u_xlat27;
        u_xlat1.x = min(u_xlat1.x, 1.0);
        u_xlatb1 = u_xlat1.x<(-u_xlat1.x);
        u_xlat1.x = (u_xlatb1) ? (-u_xlat7.x) : u_xlat7.x;
        u_xlat1.x = u_xlat32 * u_xlat1.x + -1.0;
        u_xlat12.xy = u_xlat0.xy * u_xlat1.xx + u_xlat20.xy;
    }
    u_xlat12.xy = u_xlat12.xy;
    u_xlat12.xy = clamp(u_xlat12.xy, 0.0, 1.0);
    u_xlat0.xy = u_xlat12.xy * vec2(_RenderViewportScaleFactor);
    u_xlat0 = textureLod(sampler2D(_MainTex, sampler_MainTex), u_xlat0.xy, 0.0);
    u_xlat3 = u_xlat3 * vec4(-0.333333343, -0.333333343, -0.666666687, -0.666666687) + vs_TEXCOORD0.xyxy;
    u_xlat3 = u_xlat3 + vec4(-0.5, -0.5, -0.5, -0.5);
    u_xlat7 = u_xlat3 * _Distortion_Amount.zzzz + vec4(0.5, 0.5, 0.5, 0.5);
    u_xlat3 = u_xlat3 * _Distortion_Amount.zzzz + (-_Distortion_CenterScale.xyxy);
    u_xlat3 = u_xlat3 * _Distortion_CenterScale.zwzw;
    u_xlat1.x = dot(u_xlat3.xy, u_xlat3.xy);
    u_xlat1.x = sqrt(u_xlat1.x);
    if(u_xlatb11){
        u_xlat12.xy = u_xlat1.xx * _Distortion_Amount.xy;
        u_xlat8.x = sin(u_xlat12.x);
        u_xlat9 = cos(u_xlat12.x);
        u_xlat12.x = u_xlat8.x / u_xlat9;
        u_xlat22 = float(1.0) / u_xlat12.y;
        u_xlat12.x = u_xlat12.x * u_xlat22 + -1.0;
        u_xlat12.xy = u_xlat3.xy * u_xlat12.xx + u_xlat7.xy;
    } else {
        u_xlat32 = float(1.0) / u_xlat1.x;
        u_xlat32 = u_xlat32 * _Distortion_Amount.x;
        u_xlat1.x = u_xlat1.x * _Distortion_Amount.y;
        u_xlat8.x = min(abs(u_xlat1.x), 1.0);
        u_xlat18 = max(abs(u_xlat1.x), 1.0);
        u_xlat18 = float(1.0) / u_xlat18;
        u_xlat8.x = u_xlat18 * u_xlat8.x;
        u_xlat18 = u_xlat8.x * u_xlat8.x;
        u_xlat28 = u_xlat18 * 0.0208350997 + -0.0851330012;
        u_xlat28 = u_xlat18 * u_xlat28 + 0.180141002;
        u_xlat28 = u_xlat18 * u_xlat28 + -0.330299497;
        u_xlat18 = u_xlat18 * u_xlat28 + 0.999866009;
        u_xlat28 = u_xlat18 * u_xlat8.x;
        u_xlatb38 = 1.0<abs(u_xlat1.x);
        u_xlat28 = u_xlat28 * -2.0 + 1.57079637;
        u_xlat28 = u_xlatb38 ? u_xlat28 : float(0.0);
        u_xlat8.x = u_xlat8.x * u_xlat18 + u_xlat28;
        u_xlat1.x = min(u_xlat1.x, 1.0);
        u_xlatb1 = u_xlat1.x<(-u_xlat1.x);
        u_xlat1.x = (u_xlatb1) ? (-u_xlat8.x) : u_xlat8.x;
        u_xlat1.x = u_xlat32 * u_xlat1.x + -1.0;
        u_xlat12.xy = u_xlat3.xy * u_xlat1.xx + u_xlat7.xy;
    }
    u_xlat12.xy = u_xlat12.xy;
    u_xlat12.xy = clamp(u_xlat12.xy, 0.0, 1.0);
    u_xlat12.xy = u_xlat12.xy * vec2(_RenderViewportScaleFactor);
    u_xlat8 = textureLod(sampler2D(_MainTex, sampler_MainTex), u_xlat12.xy, 0.0);
    u_xlat1.x = dot(u_xlat3.zw, u_xlat3.zw);
    u_xlat1.x = sqrt(u_xlat1.x);
    if(u_xlatb11){
        u_xlat12.xy = u_xlat1.xx * _Distortion_Amount.xy;
        u_xlat3.x = sin(u_xlat12.x);
        u_xlat7.x = cos(u_xlat12.x);
        u_xlat11.x = u_xlat3.x / u_xlat7.x;
        u_xlat12.x = float(1.0) / u_xlat12.y;
        u_xlat11.x = u_xlat11.x * u_xlat12.x + -1.0;
        u_xlat12.xy = u_xlat3.zw * u_xlat11.xx + u_xlat7.zw;
    } else {
        u_xlat11.x = float(1.0) / u_xlat1.x;
        u_xlat11.x = u_xlat11.x * _Distortion_Amount.x;
        u_xlat1.x = u_xlat1.x * _Distortion_Amount.y;
        u_xlat32 = min(abs(u_xlat1.x), 1.0);
        u_xlat3.x = max(abs(u_xlat1.x), 1.0);
        u_xlat3.x = float(1.0) / u_xlat3.x;
        u_xlat32 = u_xlat32 * u_xlat3.x;
        u_xlat3.x = u_xlat32 * u_xlat32;
        u_xlat13 = u_xlat3.x * 0.0208350997 + -0.0851330012;
        u_xlat13 = u_xlat3.x * u_xlat13 + 0.180141002;
        u_xlat13 = u_xlat3.x * u_xlat13 + -0.330299497;
        u_xlat3.x = u_xlat3.x * u_xlat13 + 0.999866009;
        u_xlat13 = u_xlat32 * u_xlat3.x;
        u_xlatb7 = 1.0<abs(u_xlat1.x);
        u_xlat13 = u_xlat13 * -2.0 + 1.57079637;
        u_xlat13 = u_xlatb7 ? u_xlat13 : float(0.0);
        u_xlat32 = u_xlat32 * u_xlat3.x + u_xlat13;
        u_xlat1.x = min(u_xlat1.x, 1.0);
        u_xlatb1 = u_xlat1.x<(-u_xlat1.x);
        u_xlat1.x = (u_xlatb1) ? (-u_xlat32) : u_xlat32;
        u_xlat1.x = u_xlat11.x * u_xlat1.x + -1.0;
        u_xlat12.xy = u_xlat3.zw * u_xlat1.xx + u_xlat7.zw;
    }
    u_xlat12.xy = u_xlat12.xy;
    u_xlat12.xy = clamp(u_xlat12.xy, 0.0, 1.0);
    u_xlat1.xy = u_xlat12.xy * vec2(_RenderViewportScaleFactor);
    u_xlat3 = textureLod(sampler2D(_MainTex, sampler_MainTex), u_xlat1.xy, 0.0);
    u_xlat4.w = 1.0;
    u_xlat5.w = 1.0;
    u_xlat7 = u_xlat5 * u_xlat8;
    u_xlat0 = u_xlat0 * u_xlat4 + u_xlat7;
    u_xlat6.w = 1.0;
    u_xlat0 = u_xlat3 * u_xlat6 + u_xlat0;
    u_xlat12.xyz = u_xlat4.xyz + u_xlat5.xyz;
    u_xlat3.xyz = u_xlat6.xyz + u_xlat12.xyz;
    u_xlat3.w = 3.0;
    u_xlat0 = u_xlat0 / u_xlat3;
    u_xlat0.xyz = u_xlat2.xxx * u_xlat0.xyz;
    u_xlat2 = _BloomTex_TexelSize.xyxy * vec4(-1.0, -1.0, 1.0, 1.0);
    u_xlat1.x = _Bloom_Settings.x * 0.5;
    u_xlat3 = u_xlat2.xyzy * u_xlat1.xxxx + u_xlat21.xyxy;
    u_xlat3 = clamp(u_xlat3, 0.0, 1.0);
    u_xlat3 = u_xlat3 * vec4(_RenderViewportScaleFactor);
    u_xlat4 = texture(sampler2D(_BloomTex, sampler_BloomTex), u_xlat3.xy);
    u_xlat3 = texture(sampler2D(_BloomTex, sampler_BloomTex), u_xlat3.zw);
    u_xlat3 = u_xlat3 + u_xlat4;
    u_xlat2 = u_xlat2.xwzw * u_xlat1.xxxx + u_xlat21.xyxy;
    u_xlat2 = clamp(u_xlat2, 0.0, 1.0);
    u_xlat2 = u_xlat2 * vec4(_RenderViewportScaleFactor);
    u_xlat4 = texture(sampler2D(_BloomTex, sampler_BloomTex), u_xlat2.xy);
    u_xlat3 = u_xlat3 + u_xlat4;
    u_xlat2 = texture(sampler2D(_BloomTex, sampler_BloomTex), u_xlat2.zw);
    u_xlat2 = u_xlat2 + u_xlat3;
    u_xlat2 = u_xlat2 * _Bloom_Settings.yyyy;
    u_xlat1.xy = u_xlat21.xy * _Bloom_DirtTileOffset.xy + _Bloom_DirtTileOffset.zw;
    u_xlat1.xyz = texture(sampler2D(_Bloom_DirtTex, sampler_Bloom_DirtTex), u_xlat1.xy).xyz;
    u_xlat3 = u_xlat2 * vec4(0.25, 0.25, 0.25, 0.25);
    u_xlat1.xyz = u_xlat1.xyz * _Bloom_Settings.zzz;
    u_xlat1.w = 0.0;
    u_xlat2 = u_xlat2 * vec4(0.25, 0.25, 0.25, 1.0);
    u_xlat4.xyz = u_xlat2.xyz * _Bloom_Color.xyz;
    u_xlat4.w = u_xlat2.w * 0.25;
    u_xlat0 = u_xlat0 + u_xlat4;
    u_xlat0 = u_xlat1 * u_xlat3 + u_xlat0;
    u_xlat1.xy = vs_TEXCOORD1.xy * _Grain_Params2.xy + _Grain_Params2.zw;
    u_xlat1.xyz = texture(sampler2D(_GrainTex, sampler_GrainTex), u_xlat1.xy).xyz;
    u_xlat2.xyz = u_xlat0.xyz;
    u_xlat2.xyz = clamp(u_xlat2.xyz, 0.0, 1.0);
    u_xlat31 = dot(u_xlat2.xyz, vec3(0.212672904, 0.715152204, 0.0721750036));
    u_xlat31 = sqrt(u_xlat31);
    u_xlat31 = _Grain_Params1.xxxy.z * (-u_xlat31) + 1.0;
    u_xlat1.xyz = u_xlat0.xyz * u_xlat1.xyz;
    u_xlat1.xyz = u_xlat1.xyz * vec3(_Grain_Params1.y, _Grain_Params1.y, _Grain_Params1.y);
    u_xlat0.xyz = u_xlat1.xyz * vec3(u_xlat31) + u_xlat0.xyz;
    u_xlat0 = u_xlat0 * vec4(vec4(_PostExposure, _PostExposure, _PostExposure, _PostExposure));
    u_xlat0.xyz = u_xlat0.zxy * vec3(5.55555582, 5.55555582, 5.55555582) + vec3(0.0479959995, 0.0479959995, 0.0479959995);
    u_xlat0.xyz = log2(u_xlat0.xyz);
    u_xlat0.xyz = u_xlat0.xyz * vec3(0.0734997839, 0.0734997839, 0.0734997839) + vec3(0.386036009, 0.386036009, 0.386036009);
    u_xlat0.xyz = clamp(u_xlat0.xyz, 0.0, 1.0);
    u_xlat1.xyz = u_xlat0.xyz * _Lut2D_Params.zzz;
    u_xlat10 = floor(u_xlat1.x);
    u_xlat1.xw = _Lut2D_Params.xy * vec2(0.5, 0.5);
    u_xlat1.yz = u_xlat1.yz * _Lut2D_Params.xy + u_xlat1.xw;
    u_xlat1.x = u_xlat10 * _Lut2D_Params.y + u_xlat1.y;
    u_xlat2.xyz = texture(sampler2D(_Lut2D, sampler_Lut2D), u_xlat1.xz).xyz;
    u_xlat3.x = _Lut2D_Params.y;
    u_xlat3.y = 0.0;
    u_xlat1.xy = u_xlat1.xz + u_xlat3.xy;
    u_xlat1.xyz = texture(sampler2D(_Lut2D, sampler_Lut2D), u_xlat1.xy).xyz;
    u_xlat0.x = u_xlat0.x * _Lut2D_Params.z + (-u_xlat10);
    u_xlat1.xyz = (-u_xlat2.xyz) + u_xlat1.xyz;
    u_xlat0.xyz = u_xlat0.xxx * u_xlat1.xyz + u_xlat2.xyz;
    u_xlat1.xy = vs_TEXCOORD0.xy * _Dithering_Coords.xy + _Dithering_Coords.zw;
    u_xlat1.x = texture(sampler2D(_DitheringTex, sampler_DitheringTex), u_xlat1.xy).w;
    u_xlat1.x = u_xlat1.x * 2.0 + -1.0;
    u_xlat11.x = u_xlat1.x * 3.40282347e+38 + 0.5;
    u_xlat11.x = clamp(u_xlat11.x, 0.0, 1.0);
    u_xlat11.x = u_xlat11.x * 2.0 + -1.0;
    u_xlat1.x = -abs(u_xlat1.x) + 1.0;
    u_xlat1.x = sqrt(u_xlat1.x);
    u_xlat1.x = (-u_xlat1.x) + 1.0;
    u_xlat1.x = u_xlat1.x * u_xlat11.x;
    u_xlat11.xyz = u_xlat0.xyz * vec3(12.9200001, 12.9200001, 12.9200001);
    u_xlat2.xyz = max(abs(u_xlat0.xyz), vec3(1.1920929e-07, 1.1920929e-07, 1.1920929e-07));
    u_xlat2.xyz = log2(u_xlat2.xyz);
    u_xlat2.xyz = u_xlat2.xyz * vec3(0.416666657, 0.416666657, 0.416666657);
    u_xlat2.xyz = exp2(u_xlat2.xyz);
    u_xlat2.xyz = u_xlat2.xyz * vec3(1.05499995, 1.05499995, 1.05499995) + vec3(-0.0549999997, -0.0549999997, -0.0549999997);
    u_xlatb0.xyz = greaterThanEqual(vec4(0.00313080009, 0.00313080009, 0.00313080009, 0.0), u_xlat0.xyzx).xyz;
    u_xlat0.x = (u_xlatb0.x) ? u_xlat11.x : u_xlat2.x;
    u_xlat0.y = (u_xlatb0.y) ? u_xlat11.y : u_xlat2.y;
    u_xlat0.z = (u_xlatb0.z) ? u_xlat11.z : u_xlat2.z;
    u_xlat0.xyz = u_xlat1.xxx * vec3(0.00392156886, 0.00392156886, 0.00392156886) + u_xlat0.xyz;
    u_xlat1.xyz = u_xlat0.xyz * vec3(0.0773993805, 0.0773993805, 0.0773993805);
    u_xlat2.xyz = u_xlat0.xyz + vec3(0.0549999997, 0.0549999997, 0.0549999997);
    u_xlat2.xyz = u_xlat2.xyz * vec3(0.947867334, 0.947867334, 0.947867334);
    u_xlat2.xyz = max(abs(u_xlat2.xyz), vec3(1.1920929e-07, 1.1920929e-07, 1.1920929e-07));
    u_xlat2.xyz = log2(u_xlat2.xyz);
    u_xlat2.xyz = u_xlat2.xyz * vec3(2.4000001, 2.4000001, 2.4000001);
    u_xlat2.xyz = exp2(u_xlat2.xyz);
    u_xlatb0.xyz = greaterThanEqual(vec4(0.0404499993, 0.0404499993, 0.0404499993, 0.0), u_xlat0.xyzx).xyz;
    SV_Target0.x = (u_xlatb0.x) ? u_xlat1.x : u_xlat2.x;
    SV_Target0.y = (u_xlatb0.y) ? u_xlat1.y : u_xlat2.y;
    SV_Target0.z = (u_xlatb0.z) ? u_xlat1.z : u_xlat2.z;
    SV_Target0.w = u_xlat0.w;
    return;
}

