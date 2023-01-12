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
	vec4 _ScreenParams;
	float _RenderViewportScaleFactor;
	vec4 _Distortion_Amount;
	vec4 _Distortion_CenterScale;
	float _ChromaticAberration_Amount;
	vec3 _Vignette_Color;
	vec2 _Vignette_Center;
	vec4 _Vignette_Settings;
	float _Vignette_Opacity;
	float _Vignette_Mode;
	vec2 _Grain_Params1;
	vec4 _Grain_Params2;
	float _LumaInAlpha;
};
layout(set = 0, binding = 0) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 1) uniform mediump texture2D _AutoExposureTex;
layout(set = 0, binding = 2) uniform mediump texture2D _ChromaticAberration_SpectralLut;
layout(set = 0, binding = 3) uniform mediump texture2D _Vignette_Mask;
layout(set = 0, binding = 4) uniform mediump texture2D _GrainTex;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 1) in highp vec2 vs_TEXCOORD1;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 5) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 6) uniform mediump  sampler sampler_AutoExposureTex;
layout(set = 0, binding = 7) uniform mediump  sampler sampler_ChromaticAberration_SpectralLut;
layout(set = 0, binding = 8) uniform mediump  sampler sampler_Vignette_Mask;
layout(set = 0, binding = 9) uniform mediump  sampler sampler_GrainTex;
void main()
{
vec4 u_xlat0;
bool u_xlatb0;
vec3 u_xlat1;
bool u_xlatb1;
vec3 u_xlat2;
vec4 u_xlat3;
vec4 u_xlat4;
vec4 u_xlat5;
vec4 u_xlat6;
vec4 u_xlat7;
bool u_xlatb7;
vec4 u_xlat8;
float u_xlat9;
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
float u_xlat30;
float u_xlat31;
float u_xlat32;
bool u_xlatb37;
bool u_xlatb38;
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
    u_xlatb1 = _Vignette_Mode<0.5;
    if(u_xlatb1){
        u_xlat1.xy = u_xlat21.xy + (-_Vignette_Center.xy);
        u_xlat2.yz = abs(u_xlat1.yx) * _Vignette_Settings.xx;
        u_xlat1.x = _ScreenParams.x / _ScreenParams.y;
        u_xlat1.x = u_xlat1.x + -1.0;
        u_xlat1.x = _Vignette_Settings.w * u_xlat1.x + 1.0;
        u_xlat2.x = u_xlat1.x * u_xlat2.z;
        u_xlat2.xy = u_xlat2.xy;
        u_xlat2.xy = clamp(u_xlat2.xy, 0.0, 1.0);
        u_xlat1.xy = log2(u_xlat2.xy);
        u_xlat1.xy = u_xlat1.xy * _Vignette_Settings.zz;
        u_xlat1.xy = exp2(u_xlat1.xy);
        u_xlat1.x = dot(u_xlat1.xy, u_xlat1.xy);
        u_xlat1.x = (-u_xlat1.x) + 1.0;
        u_xlat1.x = max(u_xlat1.x, 0.0);
        u_xlat1.x = log2(u_xlat1.x);
        u_xlat1.x = u_xlat1.x * _Vignette_Settings.y;
        u_xlat1.x = exp2(u_xlat1.x);
        u_xlat2.xyz = (-_Vignette_Color.xyz) + vec3(1.0, 1.0, 1.0);
        u_xlat2.xyz = u_xlat1.xxx * u_xlat2.xyz + _Vignette_Color.xyz;
        u_xlat2.xyz = u_xlat0.xyz * u_xlat2.xyz;
        u_xlat11.x = u_xlat0.w + -1.0;
        u_xlat3.w = u_xlat1.x * u_xlat11.x + 1.0;
    } else {
        u_xlat1.x = texture(sampler2D(_Vignette_Mask, sampler_Vignette_Mask), u_xlat21.xy).w;
        u_xlat1.z = u_xlat1.x + 0.0549999997;
        u_xlat11.xy = u_xlat1.xz * vec2(0.0773993805, 0.947867334);
        u_xlat21.x = max(abs(u_xlat11.y), 1.1920929e-07);
        u_xlat21.x = log2(u_xlat21.x);
        u_xlat21.x = u_xlat21.x * 2.4000001;
        u_xlat21.x = exp2(u_xlat21.x);
        u_xlatb1 = 0.0404499993>=u_xlat1.x;
        u_xlat1.x = (u_xlatb1) ? u_xlat11.x : u_xlat21.x;
        u_xlat11.xyz = (-_Vignette_Color.xyz) + vec3(1.0, 1.0, 1.0);
        u_xlat11.xyz = u_xlat1.xxx * u_xlat11.xyz + _Vignette_Color.xyz;
        u_xlat11.xyz = u_xlat0.xyz * u_xlat11.xyz + (-u_xlat0.xyz);
        u_xlat2.xyz = vec3(_Vignette_Opacity) * u_xlat11.xyz + u_xlat0.xyz;
        u_xlat0.x = u_xlat0.w + -1.0;
        u_xlat3.w = u_xlat1.x * u_xlat0.x + 1.0;
    }
    u_xlat0.xy = vs_TEXCOORD1.xy * _Grain_Params2.xy + _Grain_Params2.zw;
    u_xlat0.xyz = texture(sampler2D(_GrainTex, sampler_GrainTex), u_xlat0.xy).xyz;
    u_xlat1.xyz = u_xlat2.xyz;
    u_xlat1.xyz = clamp(u_xlat1.xyz, 0.0, 1.0);
    u_xlat30 = dot(u_xlat1.xyz, vec3(0.212672904, 0.715152204, 0.0721750036));
    u_xlat30 = sqrt(u_xlat30);
    u_xlat30 = _Grain_Params1.xxxy.z * (-u_xlat30) + 1.0;
    u_xlat0.xyz = u_xlat0.xyz * u_xlat2.xyz;
    u_xlat0.xyz = u_xlat0.xyz * vec3(_Grain_Params1.y, _Grain_Params1.y, _Grain_Params1.y);
    u_xlat3.xyz = u_xlat0.xyz * vec3(u_xlat30) + u_xlat2.xyz;
    u_xlatb0 = 0.5<_LumaInAlpha;
    if(u_xlatb0){
        u_xlat0.xyz = u_xlat3.xyz;
        u_xlat0.xyz = clamp(u_xlat0.xyz, 0.0, 1.0);
        u_xlat3.w = dot(u_xlat0.xyz, vec3(0.212672904, 0.715152204, 0.0721750036));
    }
    SV_Target0 = u_xlat3;
    return;
}

