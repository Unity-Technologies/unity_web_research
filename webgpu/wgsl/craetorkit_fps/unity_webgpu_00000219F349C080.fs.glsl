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
	vec4 _Distortion_Amount;
	vec4 _Distortion_CenterScale;
	vec4 _BloomTex_TexelSize;
	vec4 _Bloom_DirtTileOffset;
	vec3 _Bloom_Settings;
	vec3 _Bloom_Color;
	vec2 _Grain_Params1;
	vec4 _Grain_Params2;
	float _LumaInAlpha;
};
layout(set = 0, binding = 0) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 1) uniform mediump texture2D _AutoExposureTex;
layout(set = 0, binding = 2) uniform mediump texture2D _BloomTex;
layout(set = 0, binding = 3) uniform mediump texture2D _Bloom_DirtTex;
layout(set = 0, binding = 4) uniform mediump texture2D _GrainTex;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
highp vec4 phase0_Input0_1;
layout(location = 1) in highp vec2 vs_TEXCOORD1;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 5) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 6) uniform mediump  sampler sampler_AutoExposureTex;
layout(set = 0, binding = 7) uniform mediump  sampler sampler_BloomTex;
layout(set = 0, binding = 8) uniform mediump  sampler sampler_Bloom_DirtTex;
layout(set = 0, binding = 9) uniform mediump  sampler sampler_GrainTex;
void main()
{
vec4 u_xlat0;
bool u_xlatb0;
vec4 u_xlat1;
bool u_xlatb1;
vec4 u_xlat2;
bool u_xlatb2;
vec4 u_xlat3;
vec4 u_xlat4;
bool u_xlatb4;
float u_xlat5;
float u_xlat7;
bool u_xlatb7;
float u_xlat8;
bool u_xlatb8;
vec2 u_xlat12;
float u_xlat13;
float u_xlat16;
float u_xlat17;
float u_xlat18;
    phase0_Input0_1 = vec4(vs_TEXCOORD0, vs_TEXCOORD1);
    u_xlat0 = phase0_Input0_1 + vec4(-0.5, -0.5, -0.5, -0.5);
    u_xlat1 = u_xlat0 * _Distortion_Amount.zzzz + vec4(0.5, 0.5, 0.5, 0.5);
    u_xlat0 = u_xlat0 * _Distortion_Amount.zzzz + (-_Distortion_CenterScale.xyxy);
    u_xlat0 = u_xlat0 * _Distortion_CenterScale.zwzw;
    u_xlat2.x = dot(u_xlat0.xy, u_xlat0.xy);
    u_xlat2.x = sqrt(u_xlat2.x);
    u_xlatb7 = 0.0<_Distortion_Amount.w;
    if(u_xlatb7){
        u_xlat12.xy = u_xlat2.xx * _Distortion_Amount.xy;
        u_xlat3.x = sin(u_xlat12.x);
        u_xlat4.x = cos(u_xlat12.x);
        u_xlat12.x = u_xlat3.x / u_xlat4.x;
        u_xlat17 = float(1.0) / u_xlat12.y;
        u_xlat12.x = u_xlat12.x * u_xlat17 + -1.0;
        u_xlat12.xy = u_xlat0.xy * u_xlat12.xx + u_xlat1.xy;
    } else {
        u_xlat3.x = float(1.0) / u_xlat2.x;
        u_xlat3.x = u_xlat3.x * _Distortion_Amount.x;
        u_xlat2.x = u_xlat2.x * _Distortion_Amount.y;
        u_xlat8 = min(abs(u_xlat2.x), 1.0);
        u_xlat13 = max(abs(u_xlat2.x), 1.0);
        u_xlat13 = float(1.0) / u_xlat13;
        u_xlat8 = u_xlat13 * u_xlat8;
        u_xlat13 = u_xlat8 * u_xlat8;
        u_xlat18 = u_xlat13 * 0.0208350997 + -0.0851330012;
        u_xlat18 = u_xlat13 * u_xlat18 + 0.180141002;
        u_xlat18 = u_xlat13 * u_xlat18 + -0.330299497;
        u_xlat13 = u_xlat13 * u_xlat18 + 0.999866009;
        u_xlat18 = u_xlat13 * u_xlat8;
        u_xlatb4 = 1.0<abs(u_xlat2.x);
        u_xlat18 = u_xlat18 * -2.0 + 1.57079637;
        u_xlat18 = u_xlatb4 ? u_xlat18 : float(0.0);
        u_xlat8 = u_xlat8 * u_xlat13 + u_xlat18;
        u_xlat2.x = min(u_xlat2.x, 1.0);
        u_xlatb2 = u_xlat2.x<(-u_xlat2.x);
        u_xlat2.x = (u_xlatb2) ? (-u_xlat8) : u_xlat8;
        u_xlat2.x = u_xlat3.x * u_xlat2.x + -1.0;
        u_xlat12.xy = u_xlat0.xy * u_xlat2.xx + u_xlat1.xy;
    }
    u_xlat0.x = dot(u_xlat0.zw, u_xlat0.zw);
    u_xlat0.x = sqrt(u_xlat0.x);
    if(u_xlatb7){
        u_xlat1.xy = u_xlat0.xx * _Distortion_Amount.xy;
        u_xlat2.x = cos(u_xlat1.x);
        u_xlat1.x = sin(u_xlat1.x);
        u_xlat5 = u_xlat1.x / u_xlat2.x;
        u_xlat1.x = float(1.0) / u_xlat1.y;
        u_xlat5 = u_xlat5 * u_xlat1.x + -1.0;
        u_xlat1.xy = u_xlat0.zw * vec2(u_xlat5) + u_xlat1.zw;
    } else {
        u_xlat5 = float(1.0) / u_xlat0.x;
        u_xlat5 = u_xlat5 * _Distortion_Amount.x;
        u_xlat0.x = u_xlat0.x * _Distortion_Amount.y;
        u_xlat2.x = min(abs(u_xlat0.x), 1.0);
        u_xlat7 = max(abs(u_xlat0.x), 1.0);
        u_xlat7 = float(1.0) / u_xlat7;
        u_xlat2.x = u_xlat7 * u_xlat2.x;
        u_xlat7 = u_xlat2.x * u_xlat2.x;
        u_xlat3.x = u_xlat7 * 0.0208350997 + -0.0851330012;
        u_xlat3.x = u_xlat7 * u_xlat3.x + 0.180141002;
        u_xlat3.x = u_xlat7 * u_xlat3.x + -0.330299497;
        u_xlat7 = u_xlat7 * u_xlat3.x + 0.999866009;
        u_xlat3.x = u_xlat7 * u_xlat2.x;
        u_xlatb8 = 1.0<abs(u_xlat0.x);
        u_xlat3.x = u_xlat3.x * -2.0 + 1.57079637;
        u_xlat3.x = u_xlatb8 ? u_xlat3.x : float(0.0);
        u_xlat2.x = u_xlat2.x * u_xlat7 + u_xlat3.x;
        u_xlat0.x = min(u_xlat0.x, 1.0);
        u_xlatb0 = u_xlat0.x<(-u_xlat0.x);
        u_xlat0.x = (u_xlatb0) ? (-u_xlat2.x) : u_xlat2.x;
        u_xlat0.x = u_xlat5 * u_xlat0.x + -1.0;
        u_xlat1.xy = u_xlat0.zw * u_xlat0.xx + u_xlat1.zw;
    }
    u_xlat0.x = texture(sampler2D(_AutoExposureTex, sampler_AutoExposureTex), phase0_Input0_1.xy).x;
    u_xlat1 = texture(sampler2D(_MainTex, sampler_MainTex), u_xlat1.xy);
    u_xlat1.xyz = u_xlat0.xxx * u_xlat1.xyz;
    u_xlat0 = _BloomTex_TexelSize.xyxy * vec4(-1.0, -1.0, 1.0, 1.0);
    u_xlat2.x = _Bloom_Settings.x * 0.5;
    u_xlat3 = u_xlat0.xyzy * u_xlat2.xxxx + u_xlat12.xyxy;
    u_xlat3 = clamp(u_xlat3, 0.0, 1.0);
    u_xlat3 = u_xlat3 * vec4(_RenderViewportScaleFactor);
    u_xlat4 = texture(sampler2D(_BloomTex, sampler_BloomTex), u_xlat3.xy);
    u_xlat3 = texture(sampler2D(_BloomTex, sampler_BloomTex), u_xlat3.zw);
    u_xlat3 = u_xlat3 + u_xlat4;
    u_xlat0 = u_xlat0.xwzw * u_xlat2.xxxx + u_xlat12.xyxy;
    u_xlat0 = clamp(u_xlat0, 0.0, 1.0);
    u_xlat0 = u_xlat0 * vec4(_RenderViewportScaleFactor);
    u_xlat4 = texture(sampler2D(_BloomTex, sampler_BloomTex), u_xlat0.xy);
    u_xlat3 = u_xlat3 + u_xlat4;
    u_xlat0 = texture(sampler2D(_BloomTex, sampler_BloomTex), u_xlat0.zw);
    u_xlat0 = u_xlat0 + u_xlat3;
    u_xlat0 = u_xlat0 * _Bloom_Settings.yyyy;
    u_xlat2.xy = u_xlat12.xy * _Bloom_DirtTileOffset.xy + _Bloom_DirtTileOffset.zw;
    u_xlat2.xyz = texture(sampler2D(_Bloom_DirtTex, sampler_Bloom_DirtTex), u_xlat2.xy).xyz;
    u_xlat3 = u_xlat0 * vec4(0.25, 0.25, 0.25, 0.25);
    u_xlat2.xyz = u_xlat2.xyz * _Bloom_Settings.zzz;
    u_xlat2.w = 0.0;
    u_xlat0 = u_xlat0 * vec4(0.25, 0.25, 0.25, 1.0);
    u_xlat4.xyz = u_xlat0.xyz * _Bloom_Color.xyz;
    u_xlat4.w = u_xlat0.w * 0.25;
    u_xlat0 = u_xlat1 + u_xlat4;
    u_xlat0 = u_xlat2 * u_xlat3 + u_xlat0;
    u_xlat1.xy = phase0_Input0_1.zw * _Grain_Params2.xy + _Grain_Params2.zw;
    u_xlat1.xyz = texture(sampler2D(_GrainTex, sampler_GrainTex), u_xlat1.xy).xyz;
    u_xlat2.xyz = u_xlat0.xyz;
    u_xlat2.xyz = clamp(u_xlat2.xyz, 0.0, 1.0);
    u_xlat16 = dot(u_xlat2.xyz, vec3(0.212672904, 0.715152204, 0.0721750036));
    u_xlat16 = sqrt(u_xlat16);
    u_xlat16 = _Grain_Params1.xxxy.z * (-u_xlat16) + 1.0;
    u_xlat1.xyz = u_xlat0.xyz * u_xlat1.xyz;
    u_xlat1.xyz = u_xlat1.xyz * vec3(_Grain_Params1.y, _Grain_Params1.y, _Grain_Params1.y);
    u_xlat0.xyz = u_xlat1.xyz * vec3(u_xlat16) + u_xlat0.xyz;
    u_xlatb1 = 0.5<_LumaInAlpha;
    if(u_xlatb1){
        u_xlat1.xyz = u_xlat0.xyz;
        u_xlat1.xyz = clamp(u_xlat1.xyz, 0.0, 1.0);
        u_xlat0.w = dot(u_xlat1.xyz, vec3(0.212672904, 0.715152204, 0.0721750036));
    }
    SV_Target0 = u_xlat0;
    return;
}
