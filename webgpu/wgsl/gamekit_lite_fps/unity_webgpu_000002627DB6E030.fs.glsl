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
	vec4 _ScreenParams;
	float _RenderViewportScaleFactor;
	vec4 _Distortion_Amount;
	vec4 _Distortion_CenterScale;
	vec4 _MainTex_TexelSize;
	vec4 _BloomTex_TexelSize;
	vec4 _Bloom_DirtTileOffset;
	vec3 _Bloom_Settings;
	vec3 _Bloom_Color;
	float _ChromaticAberration_Amount;
	vec3 _Vignette_Color;
	vec2 _Vignette_Center;
	vec4 _Vignette_Settings;
	float _Vignette_Opacity;
	float _Vignette_Mode;
	float _LumaInAlpha;
};
layout(set = 0, binding = 1) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 2) uniform mediump texture2D _AutoExposureTex;
layout(set = 0, binding = 3) uniform mediump texture2D _BloomTex;
layout(set = 0, binding = 4) uniform mediump texture2D _Bloom_DirtTex;
layout(set = 0, binding = 5) uniform mediump texture2D _ChromaticAberration_SpectralLut;
layout(set = 0, binding = 6) uniform mediump texture2D _Vignette_Mask;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
vec4 u_xlat0;
bool u_xlatb0;
vec3 u_xlat1;
bool u_xlatb1;
vec4 u_xlat2;
vec4 u_xlat3;
bool u_xlatb3;
vec4 u_xlat4;
vec4 u_xlat5;
int u_xlati6;
vec4 u_xlat7;
float u_xlat8;
float u_xlat9;
bool u_xlatb9;
vec2 u_xlat10;
vec3 u_xlat11;
bool u_xlatb11;
float u_xlat12;
vec2 u_xlat16;
bool u_xlatb16;
float u_xlat18;
vec2 u_xlat20;
vec2 u_xlat21;
vec2 u_xlat22;
vec2 u_xlat27;
float u_xlat28;
float u_xlat30;
int u_xlati30;
float u_xlat31;
float u_xlat32;
float u_xlat36;
bool u_xlatb36;
float u_xlat37;
float u_xlat38;
layout(set = 0, binding = 7) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 8) uniform mediump  sampler sampler_AutoExposureTex;
layout(set = 0, binding = 9) uniform mediump  sampler sampler_BloomTex;
layout(set = 0, binding = 10) uniform mediump  sampler sampler_Bloom_DirtTex;
layout(set = 0, binding = 11) uniform mediump  sampler sampler_ChromaticAberration_SpectralLut;
layout(set = 0, binding = 12) uniform mediump  sampler sampler_Vignette_Mask;
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
        u_xlat1.x = u_xlat1.x * _Distortion_Amount.y;
        u_xlat12 = min(abs(u_xlat1.x), 1.0);
        u_xlat22.x = max(abs(u_xlat1.x), 1.0);
        u_xlat22.x = float(1.0) / u_xlat22.x;
        u_xlat12 = u_xlat22.x * u_xlat12;
        u_xlat22.x = u_xlat12 * u_xlat12;
        u_xlat32 = u_xlat22.x * 0.0208350997 + -0.0851330012;
        u_xlat32 = u_xlat22.x * u_xlat32 + 0.180141002;
        u_xlat32 = u_xlat22.x * u_xlat32 + -0.330299497;
        u_xlat22.x = u_xlat22.x * u_xlat32 + 0.999866009;
        u_xlat32 = u_xlat22.x * u_xlat12;
        u_xlatb3 = 1.0<abs(u_xlat1.x);
        u_xlat32 = u_xlat32 * -2.0 + 1.57079637;
        u_xlat32 = u_xlatb3 ? u_xlat32 : float(0.0);
        u_xlat12 = u_xlat12 * u_xlat22.x + u_xlat32;
        u_xlat1.x = min(u_xlat1.x, 1.0);
        u_xlatb1 = u_xlat1.x<(-u_xlat1.x);
        u_xlat1.x = (u_xlatb1) ? (-u_xlat12) : u_xlat12;
        u_xlat1.x = u_xlat2.x * u_xlat1.x + -1.0;
        u_xlat21.xy = u_xlat0.xy * u_xlat1.xx + u_xlat20.xy;
    }
    u_xlat0.x = texture(sampler2D(_AutoExposureTex, sampler_AutoExposureTex), vs_TEXCOORD0.xy).x;
    u_xlat10.xy = vs_TEXCOORD0.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat30 = dot(u_xlat10.xy, u_xlat10.xy);
    u_xlat10.xy = vec2(u_xlat30) * u_xlat10.xy;
    u_xlat10.xy = u_xlat10.xy * vec2(vec2(_ChromaticAberration_Amount, _ChromaticAberration_Amount));
    u_xlat2.xy = (-u_xlat10.xy) * _MainTex_TexelSize.zw;
    u_xlat2.xy = u_xlat2.xy * vec2(0.5, 0.5);
    u_xlat30 = dot(u_xlat2.xy, u_xlat2.xy);
    u_xlat30 = sqrt(u_xlat30);
    u_xlati30 = int(u_xlat30);
    u_xlati30 = max(u_xlati30, 3);
    u_xlati30 = min(u_xlati30, 16);
    u_xlat1.x = float(u_xlati30);
    u_xlat10.xy = (-u_xlat10.xy) / u_xlat1.xx;
    u_xlat2.y = 0.0;
    u_xlat3.w = 1.0;
    u_xlat4.x = float(0.0);
    u_xlat4.y = float(0.0);
    u_xlat4.z = float(0.0);
    u_xlat4.w = float(0.0);
    u_xlat5.x = float(0.0);
    u_xlat5.y = float(0.0);
    u_xlat5.z = float(0.0);
    u_xlat5.w = float(0.0);
    u_xlat22.xy = vs_TEXCOORD0.xy;
    for(int u_xlati_loop_1 = 0 ; u_xlati_loop_1<u_xlati30 ; u_xlati_loop_1++)
    {
        u_xlat16.x = float(u_xlati_loop_1);
        u_xlat16.x = u_xlat16.x + 0.5;
        u_xlat2.x = u_xlat16.x / u_xlat1.x;
        u_xlat16.xy = u_xlat22.xy + vec2(-0.5, -0.5);
        u_xlat7.xy = u_xlat16.xy * _Distortion_Amount.zz + vec2(0.5, 0.5);
        u_xlat16.xy = u_xlat16.xy * _Distortion_Amount.zz + (-_Distortion_CenterScale.xy);
        u_xlat16.xy = u_xlat16.xy * _Distortion_CenterScale.zw;
        u_xlat36 = dot(u_xlat16.xy, u_xlat16.xy);
        u_xlat36 = sqrt(u_xlat36);
        if(u_xlatb11){
            u_xlat27.xy = vec2(u_xlat36) * _Distortion_Amount.xy;
            u_xlat8 = sin(u_xlat27.x);
            u_xlat9 = cos(u_xlat27.x);
            u_xlat27.x = u_xlat8 / u_xlat9;
            u_xlat37 = float(1.0) / u_xlat27.y;
            u_xlat27.x = u_xlat27.x * u_xlat37 + -1.0;
            u_xlat27.xy = u_xlat16.xy * u_xlat27.xx + u_xlat7.xy;
        } else {
            u_xlat8 = float(1.0) / u_xlat36;
            u_xlat8 = u_xlat8 * _Distortion_Amount.x;
            u_xlat36 = u_xlat36 * _Distortion_Amount.y;
            u_xlat18 = min(abs(u_xlat36), 1.0);
            u_xlat28 = max(abs(u_xlat36), 1.0);
            u_xlat28 = float(1.0) / u_xlat28;
            u_xlat18 = u_xlat28 * u_xlat18;
            u_xlat28 = u_xlat18 * u_xlat18;
            u_xlat38 = u_xlat28 * 0.0208350997 + -0.0851330012;
            u_xlat38 = u_xlat28 * u_xlat38 + 0.180141002;
            u_xlat38 = u_xlat28 * u_xlat38 + -0.330299497;
            u_xlat28 = u_xlat28 * u_xlat38 + 0.999866009;
            u_xlat38 = u_xlat28 * u_xlat18;
            u_xlatb9 = 1.0<abs(u_xlat36);
            u_xlat38 = u_xlat38 * -2.0 + 1.57079637;
            u_xlat38 = u_xlatb9 ? u_xlat38 : float(0.0);
            u_xlat18 = u_xlat18 * u_xlat28 + u_xlat38;
            u_xlat36 = min(u_xlat36, 1.0);
            u_xlatb36 = u_xlat36<(-u_xlat36);
            u_xlat36 = (u_xlatb36) ? (-u_xlat18) : u_xlat18;
            u_xlat36 = u_xlat8 * u_xlat36 + -1.0;
            u_xlat27.xy = u_xlat16.xy * vec2(u_xlat36) + u_xlat7.xy;
        }
        u_xlat27.xy = u_xlat27.xy;
        u_xlat27.xy = clamp(u_xlat27.xy, 0.0, 1.0);
        u_xlat16.xy = u_xlat27.xy * vec2(_RenderViewportScaleFactor);
        u_xlat7 = textureLod(sampler2D(_MainTex, sampler_MainTex), u_xlat16.xy, 0.0);
        u_xlat3.xyz = textureLod(sampler2D(_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut), u_xlat2.xy, 0.0).xyz;
        u_xlat4 = u_xlat7 * u_xlat3 + u_xlat4;
        u_xlat5 = u_xlat3 + u_xlat5;
        u_xlat22.xy = u_xlat10.xy + u_xlat22.xy;
    }
    u_xlat2 = u_xlat4 / u_xlat5;
    u_xlat2.xyz = u_xlat0.xxx * u_xlat2.xyz;
    u_xlat0 = _BloomTex_TexelSize.xyxy * vec4(-1.0, -1.0, 1.0, 1.0);
    u_xlat1.x = _Bloom_Settings.x * 0.5;
    u_xlat3 = u_xlat0.xyzy * u_xlat1.xxxx + u_xlat21.xyxy;
    u_xlat3 = clamp(u_xlat3, 0.0, 1.0);
    u_xlat3 = u_xlat3 * vec4(_RenderViewportScaleFactor);
    u_xlat4 = texture(sampler2D(_BloomTex, sampler_BloomTex), u_xlat3.xy);
    u_xlat3 = texture(sampler2D(_BloomTex, sampler_BloomTex), u_xlat3.zw);
    u_xlat3 = u_xlat3 + u_xlat4;
    u_xlat0 = u_xlat0.xwzw * u_xlat1.xxxx + u_xlat21.xyxy;
    u_xlat0 = clamp(u_xlat0, 0.0, 1.0);
    u_xlat0 = u_xlat0 * vec4(_RenderViewportScaleFactor);
    u_xlat4 = texture(sampler2D(_BloomTex, sampler_BloomTex), u_xlat0.xy);
    u_xlat3 = u_xlat3 + u_xlat4;
    u_xlat0 = texture(sampler2D(_BloomTex, sampler_BloomTex), u_xlat0.zw);
    u_xlat0 = u_xlat0 + u_xlat3;
    u_xlat0 = u_xlat0 * _Bloom_Settings.yyyy;
    u_xlat1.xy = u_xlat21.xy * _Bloom_DirtTileOffset.xy + _Bloom_DirtTileOffset.zw;
    u_xlat3.xyz = texture(sampler2D(_Bloom_DirtTex, sampler_Bloom_DirtTex), u_xlat1.xy).xyz;
    u_xlat4.xyz = u_xlat0.xyz * vec3(0.25, 0.25, 0.25);
    u_xlat3.xyz = u_xlat3.xyz * _Bloom_Settings.zzz;
    u_xlat0 = u_xlat0 * vec4(0.25, 0.25, 0.25, 1.0);
    u_xlat5.xyz = u_xlat0.xyz * _Bloom_Color.xyz;
    u_xlat5.w = u_xlat0.w * 0.25;
    u_xlat0 = u_xlat2 + u_xlat5;
    u_xlat2.xyz = u_xlat4.xyz * u_xlat3.xyz;
    u_xlat2.w = 0.0;
    u_xlat0 = u_xlat0 + u_xlat2;
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
        u_xlat2.w = u_xlat1.x * u_xlat11.x + 1.0;
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
        u_xlat2.w = u_xlat1.x * u_xlat0.x + 1.0;
    }
    u_xlatb0 = 0.5<_LumaInAlpha;
    if(u_xlatb0){
        u_xlat0.xyz = u_xlat2.xyz;
        u_xlat0.xyz = clamp(u_xlat0.xyz, 0.0, 1.0);
        u_xlat2.w = dot(u_xlat0.xyz, vec3(0.212672904, 0.715152204, 0.0721750036));
    }
    SV_Target0 = u_xlat2;
    return;
}

