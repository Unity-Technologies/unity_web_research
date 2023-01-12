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
	vec4 _MainTex_TexelSize;
	float _ChromaticAberration_Amount;
	vec2 _Lut3D_Params;
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
layout(set = 0, binding = 0) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 1) uniform mediump texture2D _AutoExposureTex;
layout(set = 0, binding = 2) uniform mediump texture2D _ChromaticAberration_SpectralLut;
layout(set = 0, binding = 3) uniform mediump texture3D _Lut3D;
layout(set = 0, binding = 4) uniform mediump texture2D _Vignette_Mask;
layout(set = 0, binding = 5) uniform mediump texture2D _GrainTex;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 1) in highp vec2 vs_TEXCOORD1;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 6) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 7) uniform mediump  sampler sampler_AutoExposureTex;
layout(set = 0, binding = 8) uniform mediump  sampler sampler_ChromaticAberration_SpectralLut;
layout(set = 0, binding = 9) uniform mediump  sampler sampler_Lut3D;
layout(set = 0, binding = 10) uniform mediump  sampler sampler_Vignette_Mask;
layout(set = 0, binding = 11) uniform mediump  sampler sampler_GrainTex;
void main()
{
vec4 u_xlat0;
vec4 u_xlat1;
bool u_xlatb1;
vec4 u_xlat2;
vec4 u_xlat3;
vec4 u_xlat4;
vec4 u_xlat5;
vec4 u_xlat6;
vec2 u_xlat7;
vec2 u_xlat8;
float u_xlat10;
vec2 u_xlat16;
bool u_xlatb16;
float u_xlat21;
int u_xlati21;
bool u_xlatb21;
float u_xlat22;
int u_xlati22;
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
    u_xlat8.xy = vs_TEXCOORD0.xy;
    for(int u_xlati_loop_1 = 0 ; u_xlati_loop_1<u_xlati21 ; u_xlati_loop_1++)
    {
        u_xlat16.x = float(u_xlati_loop_1);
        u_xlat16.x = u_xlat16.x + 0.5;
        u_xlat2.x = u_xlat16.x / u_xlat1.x;
        u_xlat16.xy = u_xlat8.xy;
        u_xlat16.xy = clamp(u_xlat16.xy, 0.0, 1.0);
        u_xlat16.xy = u_xlat16.xy * vec2(_RenderViewportScaleFactor);
        u_xlat6 = textureLod(sampler2D(_MainTex, sampler_MainTex), u_xlat16.xy, 0.0);
        u_xlat3.xyz = textureLod(sampler2D(_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut), u_xlat2.xy, 0.0).xyz;
        u_xlat4 = u_xlat6 * u_xlat3 + u_xlat4;
        u_xlat5 = u_xlat3 + u_xlat5;
        u_xlat8.xy = u_xlat7.xy + u_xlat8.xy;
    }
    u_xlat1 = u_xlat4 / u_xlat5;
    u_xlat0.xyz = u_xlat0.xxx * u_xlat1.xyz;
    u_xlatb21 = _Vignette_Mode<0.5;
    if(u_xlatb21){
        u_xlat1.xy = vs_TEXCOORD0.xy + (-_Vignette_Center.xy);
        u_xlat1.yz = abs(u_xlat1.yx) * _Vignette_Settings.xx;
        u_xlat21 = _ScreenParams.x / _ScreenParams.y;
        u_xlat21 = u_xlat21 + -1.0;
        u_xlat21 = _Vignette_Settings.w * u_xlat21 + 1.0;
        u_xlat1.x = u_xlat21 * u_xlat1.z;
        u_xlat1.xy = u_xlat1.xy;
        u_xlat1.xy = clamp(u_xlat1.xy, 0.0, 1.0);
        u_xlat1.xy = log2(u_xlat1.xy);
        u_xlat1.xy = u_xlat1.xy * _Vignette_Settings.zz;
        u_xlat1.xy = exp2(u_xlat1.xy);
        u_xlat21 = dot(u_xlat1.xy, u_xlat1.xy);
        u_xlat21 = (-u_xlat21) + 1.0;
        u_xlat21 = max(u_xlat21, 0.0);
        u_xlat21 = log2(u_xlat21);
        u_xlat21 = u_xlat21 * _Vignette_Settings.y;
        u_xlat21 = exp2(u_xlat21);
        u_xlat1.xyz = (-_Vignette_Color.xyz) + vec3(1.0, 1.0, 1.0);
        u_xlat1.xyz = vec3(u_xlat21) * u_xlat1.xyz + _Vignette_Color.xyz;
        u_xlat1.xyz = u_xlat0.xyz * u_xlat1.xyz;
        u_xlat2.x = u_xlat1.w + -1.0;
        u_xlat2.w = u_xlat21 * u_xlat2.x + 1.0;
    } else {
        u_xlat21 = texture(sampler2D(_Vignette_Mask, sampler_Vignette_Mask), vs_TEXCOORD0.xy).w;
        u_xlat3.x = u_xlat21 * 0.0773993805;
        u_xlat10 = u_xlat21 + 0.0549999997;
        u_xlat10 = u_xlat10 * 0.947867334;
        u_xlat10 = max(abs(u_xlat10), 1.1920929e-07);
        u_xlat10 = log2(u_xlat10);
        u_xlat10 = u_xlat10 * 2.4000001;
        u_xlat10 = exp2(u_xlat10);
        u_xlatb21 = 0.0404499993>=u_xlat21;
        u_xlat21 = (u_xlatb21) ? u_xlat3.x : u_xlat10;
        u_xlat3.xyz = (-_Vignette_Color.xyz) + vec3(1.0, 1.0, 1.0);
        u_xlat3.xyz = vec3(u_xlat21) * u_xlat3.xyz + _Vignette_Color.xyz;
        u_xlat3.xyz = u_xlat0.xyz * u_xlat3.xyz + (-u_xlat0.xyz);
        u_xlat1.xyz = vec3(_Vignette_Opacity) * u_xlat3.xyz + u_xlat0.xyz;
        u_xlat0.x = u_xlat1.w + -1.0;
        u_xlat2.w = u_xlat21 * u_xlat0.x + 1.0;
    }
    u_xlat0.xy = vs_TEXCOORD1.xy * _Grain_Params2.xy + _Grain_Params2.zw;
    u_xlat0.xyz = texture(sampler2D(_GrainTex, sampler_GrainTex), u_xlat0.xy).xyz;
    u_xlat3.xyz = u_xlat1.xyz;
    u_xlat3.xyz = clamp(u_xlat3.xyz, 0.0, 1.0);
    u_xlat21 = dot(u_xlat3.xyz, vec3(0.212672904, 0.715152204, 0.0721750036));
    u_xlat21 = sqrt(u_xlat21);
    u_xlat21 = _Grain_Params1.xxxy.z * (-u_xlat21) + 1.0;
    u_xlat0.xyz = u_xlat0.xyz * u_xlat1.xyz;
    u_xlat0.xyz = u_xlat0.xyz * vec3(_Grain_Params1.y, _Grain_Params1.y, _Grain_Params1.y);
    u_xlat2.xyz = u_xlat0.xyz * vec3(u_xlat21) + u_xlat1.xyz;
    u_xlat0 = u_xlat2.wxyz * vec4(vec4(_PostExposure, _PostExposure, _PostExposure, _PostExposure));
    u_xlat1.xyz = u_xlat0.yzw * vec3(5.55555582, 5.55555582, 5.55555582) + vec3(0.0479959995, 0.0479959995, 0.0479959995);
    u_xlat1.xyz = log2(u_xlat1.xyz);
    u_xlat1.xyz = u_xlat1.xyz * vec3(0.0734997839, 0.0734997839, 0.0734997839) + vec3(0.386036009, 0.386036009, 0.386036009);
    u_xlat1.xyz = clamp(u_xlat1.xyz, 0.0, 1.0);
    u_xlat1.xyz = u_xlat1.xyz * _Lut3D_Params.yyy;
    u_xlat22 = _Lut3D_Params.x * 0.5;
    u_xlat1.xyz = u_xlat1.xyz * _Lut3D_Params.xxx + vec3(u_xlat22);
    u_xlat0.yzw = texture(sampler3D(_Lut3D, sampler_Lut3D), u_xlat1.xyz).xyz;
    u_xlatb1 = 0.5<_LumaInAlpha;
    if(u_xlatb1){
        u_xlat1.xyz = u_xlat0.yzw;
        u_xlat1.xyz = clamp(u_xlat1.xyz, 0.0, 1.0);
        u_xlat0.x = dot(u_xlat1.xyz, vec3(0.212672904, 0.715152204, 0.0721750036));
    }
    SV_Target0 = u_xlat0.yzwx;
    return;
}

