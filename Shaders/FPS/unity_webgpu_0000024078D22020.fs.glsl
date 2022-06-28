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
	vec4 _MainTex_TexelSize;
	vec4 _BloomTex_TexelSize;
	vec4 _Bloom_DirtTileOffset;
	vec3 _Bloom_Settings;
	vec3 _Bloom_Color;
	float _ChromaticAberration_Amount;
	vec3 _Lut2D_Params;
	float _PostExposure;
	vec3 _Vignette_Color;
	vec2 _Vignette_Center;
	vec4 _Vignette_Settings;
	float _Vignette_Opacity;
	float _Vignette_Mode;
	vec2 _Grain_Params1;
	vec4 _Grain_Params2;
	float _LumaInAlpha;
};
layout(set = 0, binding = 1) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 2) uniform mediump texture2D _AutoExposureTex;
layout(set = 0, binding = 3) uniform mediump texture2D _BloomTex;
layout(set = 0, binding = 4) uniform mediump texture2D _Bloom_DirtTex;
layout(set = 0, binding = 5) uniform mediump texture2D _ChromaticAberration_SpectralLut;
layout(set = 0, binding = 6) uniform mediump texture2D _Lut2D;
layout(set = 0, binding = 7) uniform mediump texture2D _Vignette_Mask;
layout(set = 0, binding = 8) uniform mediump texture2D _GrainTex;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 1) in highp vec2 vs_TEXCOORD1;
layout(location = 0) out highp vec4 SV_Target0;
vec4 u_xlat0;
vec4 u_xlat1;
bool u_xlatb1;
vec3 u_xlat2;
vec4 u_xlat3;
vec4 u_xlat4;
vec4 u_xlat5;
vec4 u_xlat6;
bool u_xlatb6;
vec2 u_xlat7;
vec3 u_xlat8;
float u_xlat9;
vec2 u_xlat15;
vec2 u_xlat16;
float u_xlat21;
int u_xlati21;
float u_xlat22;
int u_xlati22;
layout(set = 0, binding = 9) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 10) uniform mediump  sampler sampler_AutoExposureTex;
layout(set = 0, binding = 11) uniform mediump  sampler sampler_BloomTex;
layout(set = 0, binding = 12) uniform mediump  sampler sampler_Bloom_DirtTex;
layout(set = 0, binding = 13) uniform mediump  sampler sampler_ChromaticAberration_SpectralLut;
layout(set = 0, binding = 14) uniform mediump  sampler sampler_Lut2D;
layout(set = 0, binding = 15) uniform mediump  sampler sampler_Vignette_Mask;
layout(set = 0, binding = 16) uniform mediump  sampler sampler_GrainTex;
void main()
{
    u_xlat0.x = texture(sampler2D(_AutoExposureTex, sampler_AutoExposureTex), vs_TEXCOORD0.xy).x;
    u_xlat7.xy = vs_TEXCOORD0.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat21 = dot(u_xlat7.xy, u_xlat7.xy);
    u_xlat7.xy = vec2(u_xlat21) * u_xlat7.xy;
    u_xlat7.xy = u_xlat7.xy * vec2(vec2(_ChromaticAberration_Amount, _ChromaticAberration_Amount));
    u_xlat1.xy = (-u_xlat7.xy) * _MainTex_TexelSize.zw;
    u_xlat1.xy = u_xlat1.xy * vec2(0.5, 0.5);
    u_xlat21 = dot(u_xlat1.xy, u_xlat1.xy);
    u_xlat21 = sqrt(u_xlat21);
    u_xlati21 = int(u_xlat21);
    u_xlati21 = max(u_xlati21, 3);
    u_xlati21 = min(u_xlati21, 16);
    u_xlat1.x = float(u_xlati21);
    u_xlat7.xy = (-u_xlat7.xy) / u_xlat1.xx;
    u_xlat2.y = float(0.0);
    u_xlat16.y = float(0.0);
    u_xlat3.w = 1.0;
    u_xlat4.x = float(0.0);
    u_xlat4.y = float(0.0);
    u_xlat4.z = float(0.0);
    u_xlat4.w = float(0.0);
    u_xlat5.x = float(0.0);
    u_xlat5.y = float(0.0);
    u_xlat5.z = float(0.0);
    u_xlat5.w = float(0.0);
    u_xlat8.xy = vs_TEXCOORD0.xy;
    for(int u_xlati_loop_1 = 0 ; u_xlati_loop_1<u_xlati21 ; u_xlati_loop_1++)
    {
        u_xlat6.x = float(u_xlati_loop_1);
        u_xlat6.x = u_xlat6.x + 0.5;
        u_xlat2.x = u_xlat6.x / u_xlat1.x;
        u_xlat6.xy = u_xlat8.xy;
        u_xlat6.xy = clamp(u_xlat6.xy, 0.0, 1.0);
        u_xlat6.xy = u_xlat6.xy * vec2(_RenderViewportScaleFactor);
        u_xlat6 = textureLod(sampler2D(_MainTex, sampler_MainTex), u_xlat6.xy, 0.0);
        u_xlat3.xyz = textureLod(sampler2D(_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut), u_xlat2.xy, 0.0).xyz;
        u_xlat4 = u_xlat6 * u_xlat3 + u_xlat4;
        u_xlat5 = u_xlat3 + u_xlat5;
        u_xlat8.xy = u_xlat7.xy + u_xlat8.xy;
    }
    u_xlat1 = u_xlat4 / u_xlat5;
    u_xlat1.xyz = u_xlat0.xxx * u_xlat1.xyz;
    u_xlat0 = _BloomTex_TexelSize.xyxy * vec4(1.0, 1.0, -1.0, 0.0);
    u_xlat3 = (-u_xlat0.xywy) * _Bloom_Settings.xxxx + vs_TEXCOORD0.xyxy;
    u_xlat3 = clamp(u_xlat3, 0.0, 1.0);
    u_xlat3 = u_xlat3 * vec4(_RenderViewportScaleFactor);
    u_xlat4 = texture(sampler2D(_BloomTex, sampler_BloomTex), u_xlat3.xy);
    u_xlat3 = texture(sampler2D(_BloomTex, sampler_BloomTex), u_xlat3.zw);
    u_xlat3 = u_xlat3 * vec4(2.0, 2.0, 2.0, 2.0) + u_xlat4;
    u_xlat2.xy = (-u_xlat0.zy) * _Bloom_Settings.xx + vs_TEXCOORD0.xy;
    u_xlat2.xy = clamp(u_xlat2.xy, 0.0, 1.0);
    u_xlat2.xy = u_xlat2.xy * vec2(_RenderViewportScaleFactor);
    u_xlat4 = texture(sampler2D(_BloomTex, sampler_BloomTex), u_xlat2.xy);
    u_xlat3 = u_xlat3 + u_xlat4;
    u_xlat4 = u_xlat0.zwxw * _Bloom_Settings.xxxx + vs_TEXCOORD0.xyxy;
    u_xlat4 = clamp(u_xlat4, 0.0, 1.0);
    u_xlat4 = u_xlat4 * vec4(_RenderViewportScaleFactor);
    u_xlat5 = texture(sampler2D(_BloomTex, sampler_BloomTex), u_xlat4.xy);
    u_xlat3 = u_xlat5 * vec4(2.0, 2.0, 2.0, 2.0) + u_xlat3;
    u_xlat2.xy = vs_TEXCOORD0.xy;
    u_xlat2.xy = clamp(u_xlat2.xy, 0.0, 1.0);
    u_xlat2.xy = u_xlat2.xy * vec2(_RenderViewportScaleFactor);
    u_xlat5 = texture(sampler2D(_BloomTex, sampler_BloomTex), u_xlat2.xy);
    u_xlat3 = u_xlat5 * vec4(4.0, 4.0, 4.0, 4.0) + u_xlat3;
    u_xlat4 = texture(sampler2D(_BloomTex, sampler_BloomTex), u_xlat4.zw);
    u_xlat3 = u_xlat4 * vec4(2.0, 2.0, 2.0, 2.0) + u_xlat3;
    u_xlat4 = u_xlat0.zywy * _Bloom_Settings.xxxx + vs_TEXCOORD0.xyxy;
    u_xlat4 = clamp(u_xlat4, 0.0, 1.0);
    u_xlat4 = u_xlat4 * vec4(_RenderViewportScaleFactor);
    u_xlat5 = texture(sampler2D(_BloomTex, sampler_BloomTex), u_xlat4.xy);
    u_xlat3 = u_xlat3 + u_xlat5;
    u_xlat4 = texture(sampler2D(_BloomTex, sampler_BloomTex), u_xlat4.zw);
    u_xlat3 = u_xlat4 * vec4(2.0, 2.0, 2.0, 2.0) + u_xlat3;
    u_xlat0.xy = u_xlat0.xy * _Bloom_Settings.xx + vs_TEXCOORD0.xy;
    u_xlat0.xy = clamp(u_xlat0.xy, 0.0, 1.0);
    u_xlat0.xy = u_xlat0.xy * vec2(_RenderViewportScaleFactor);
    u_xlat0 = texture(sampler2D(_BloomTex, sampler_BloomTex), u_xlat0.xy);
    u_xlat0 = u_xlat0 + u_xlat3;
    u_xlat0 = u_xlat0 * _Bloom_Settings.yyyy;
    u_xlat2.xy = vs_TEXCOORD0.xy * _Bloom_DirtTileOffset.xy + _Bloom_DirtTileOffset.zw;
    u_xlat3.xyz = texture(sampler2D(_Bloom_DirtTex, sampler_Bloom_DirtTex), u_xlat2.xy).xyz;
    u_xlat4.xyz = u_xlat0.xyz * vec3(0.0625, 0.0625, 0.0625);
    u_xlat3.xyz = u_xlat3.xyz * _Bloom_Settings.zzz;
    u_xlat0 = u_xlat0 * vec4(0.0625, 0.0625, 0.0625, 1.0);
    u_xlat5.xyz = u_xlat0.xyz * _Bloom_Color.xyz;
    u_xlat5.w = u_xlat0.w * 0.0625;
    u_xlat0 = u_xlat1 + u_xlat5;
    u_xlat1.xyz = u_xlat4.xyz * u_xlat3.xyz;
    u_xlat1.w = 0.0;
    u_xlat0 = u_xlat0 + u_xlat1;
    u_xlatb1 = _Vignette_Mode<0.5;
    if(u_xlatb1){
        u_xlat1.xy = vs_TEXCOORD0.xy + (-_Vignette_Center.xy);
        u_xlat1.yz = abs(u_xlat1.yx) * _Vignette_Settings.xx;
        u_xlat22 = _ScreenParams.x / _ScreenParams.y;
        u_xlat22 = u_xlat22 + -1.0;
        u_xlat22 = _Vignette_Settings.w * u_xlat22 + 1.0;
        u_xlat1.x = u_xlat22 * u_xlat1.z;
        u_xlat1.xy = u_xlat1.xy;
        u_xlat1.xy = clamp(u_xlat1.xy, 0.0, 1.0);
        u_xlat1.xy = log2(u_xlat1.xy);
        u_xlat1.xy = u_xlat1.xy * _Vignette_Settings.zz;
        u_xlat1.xy = exp2(u_xlat1.xy);
        u_xlat1.x = dot(u_xlat1.xy, u_xlat1.xy);
        u_xlat1.x = (-u_xlat1.x) + 1.0;
        u_xlat1.x = max(u_xlat1.x, 0.0);
        u_xlat1.x = log2(u_xlat1.x);
        u_xlat1.x = u_xlat1.x * _Vignette_Settings.y;
        u_xlat1.x = exp2(u_xlat1.x);
        u_xlat8.xyz = (-_Vignette_Color.xyz) + vec3(1.0, 1.0, 1.0);
        u_xlat8.xyz = u_xlat1.xxx * u_xlat8.xyz + _Vignette_Color.xyz;
        u_xlat8.xyz = u_xlat0.xyz * u_xlat8.xyz;
        u_xlat2.x = u_xlat0.w + -1.0;
        u_xlat3.w = u_xlat1.x * u_xlat2.x + 1.0;
    } else {
        u_xlat1.x = texture(sampler2D(_Vignette_Mask, sampler_Vignette_Mask), vs_TEXCOORD0.xy).w;
        u_xlat2.x = u_xlat1.x * 0.0773993805;
        u_xlat9 = u_xlat1.x + 0.0549999997;
        u_xlat9 = u_xlat9 * 0.947867334;
        u_xlat9 = max(abs(u_xlat9), 1.1920929e-07);
        u_xlat9 = log2(u_xlat9);
        u_xlat9 = u_xlat9 * 2.4000001;
        u_xlat9 = exp2(u_xlat9);
        u_xlatb1 = 0.0404499993>=u_xlat1.x;
        u_xlat1.x = (u_xlatb1) ? u_xlat2.x : u_xlat9;
        u_xlat4.xyz = (-_Vignette_Color.xyz) + vec3(1.0, 1.0, 1.0);
        u_xlat4.xyz = u_xlat1.xxx * u_xlat4.xyz + _Vignette_Color.xyz;
        u_xlat4.xyz = u_xlat0.xyz * u_xlat4.xyz + (-u_xlat0.xyz);
        u_xlat8.xyz = vec3(_Vignette_Opacity) * u_xlat4.xyz + u_xlat0.xyz;
        u_xlat0.x = u_xlat0.w + -1.0;
        u_xlat3.w = u_xlat1.x * u_xlat0.x + 1.0;
    }
    u_xlat0.xy = vs_TEXCOORD1.xy * _Grain_Params2.xy + _Grain_Params2.zw;
    u_xlat0.xyz = texture(sampler2D(_GrainTex, sampler_GrainTex), u_xlat0.xy).xyz;
    u_xlat4.xyz = u_xlat8.xyz;
    u_xlat4.xyz = clamp(u_xlat4.xyz, 0.0, 1.0);
    u_xlat21 = dot(u_xlat4.xyz, vec3(0.212672904, 0.715152204, 0.0721750036));
    u_xlat21 = sqrt(u_xlat21);
    u_xlat21 = _Grain_Params1.xxxy.z * (-u_xlat21) + 1.0;
    u_xlat0.xyz = u_xlat0.xyz * u_xlat8.xyz;
    u_xlat0.xyz = u_xlat0.xyz * vec3(_Grain_Params1.y, _Grain_Params1.y, _Grain_Params1.y);
    u_xlat3.xyz = u_xlat0.xyz * vec3(u_xlat21) + u_xlat8.xyz;
    u_xlat0 = u_xlat3 * vec4(vec4(_PostExposure, _PostExposure, _PostExposure, _PostExposure));
    u_xlat1.xyz = u_xlat0.zxy * vec3(5.55555582, 5.55555582, 5.55555582) + vec3(0.0479959995, 0.0479959995, 0.0479959995);
    u_xlat1.xyz = log2(u_xlat1.xyz);
    u_xlat1.xyz = u_xlat1.xyz * vec3(0.0734997839, 0.0734997839, 0.0734997839) + vec3(0.386036009, 0.386036009, 0.386036009);
    u_xlat1.xyz = clamp(u_xlat1.xyz, 0.0, 1.0);
    u_xlat8.xyz = u_xlat1.xyz * _Lut2D_Params.zzz;
    u_xlat8.x = floor(u_xlat8.x);
    u_xlat2.xy = _Lut2D_Params.xy * vec2(0.5, 0.5);
    u_xlat3.yz = u_xlat8.yz * _Lut2D_Params.xy + u_xlat2.xy;
    u_xlat3.x = u_xlat8.x * _Lut2D_Params.y + u_xlat3.y;
    u_xlat4.xyz = texture(sampler2D(_Lut2D, sampler_Lut2D), u_xlat3.xz).xyz;
    u_xlat16.x = _Lut2D_Params.y;
    u_xlat15.xy = u_xlat16.xy + u_xlat3.xz;
    u_xlat2.xyz = texture(sampler2D(_Lut2D, sampler_Lut2D), u_xlat15.xy).xyz;
    u_xlat1.x = u_xlat1.x * _Lut2D_Params.z + (-u_xlat8.x);
    u_xlat8.xyz = (-u_xlat4.xyz) + u_xlat2.xyz;
    u_xlat0.xyz = u_xlat1.xxx * u_xlat8.xyz + u_xlat4.xyz;
    u_xlatb1 = 0.5<_LumaInAlpha;
    if(u_xlatb1){
        u_xlat1.xyz = u_xlat0.xyz;
        u_xlat1.xyz = clamp(u_xlat1.xyz, 0.0, 1.0);
        u_xlat0.w = dot(u_xlat1.xyz, vec3(0.212672904, 0.715152204, 0.0721750036));
    }
    SV_Target0 = u_xlat0;
    return;
}

