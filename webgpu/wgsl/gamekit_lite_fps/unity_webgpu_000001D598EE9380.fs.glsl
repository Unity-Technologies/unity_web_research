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
	vec4 _MainTex_TexelSize;
	vec4 _BloomTex_TexelSize;
	vec4 _Bloom_DirtTileOffset;
	vec3 _Bloom_Settings;
	vec3 _Bloom_Color;
	float _ChromaticAberration_Amount;
	vec3 _Lut2D_Params;
	float _PostExposure;
};
layout(set = 0, binding = 1) uniform mediump texture2D _DitheringTex;
layout(set = 0, binding = 2) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 3) uniform mediump texture2D _AutoExposureTex;
layout(set = 0, binding = 4) uniform mediump texture2D _BloomTex;
layout(set = 0, binding = 5) uniform mediump texture2D _Bloom_DirtTex;
layout(set = 0, binding = 6) uniform mediump texture2D _ChromaticAberration_SpectralLut;
layout(set = 0, binding = 7) uniform mediump texture2D _Lut2D;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
vec4 u_xlat0;
bvec3 u_xlatb0;
vec4 u_xlat1;
bool u_xlatb1;
vec3 u_xlat2;
vec4 u_xlat3;
bool u_xlatb3;
vec4 u_xlat4;
vec4 u_xlat5;
vec4 u_xlat6;
vec4 u_xlat7;
vec2 u_xlat8;
float u_xlat9;
vec2 u_xlat10;
vec3 u_xlat11;
bool u_xlatb11;
float u_xlat12;
float u_xlat18;
float u_xlat19;
vec2 u_xlat20;
vec2 u_xlat21;
vec2 u_xlat22;
int u_xlati26;
vec2 u_xlat27;
float u_xlat28;
bool u_xlatb29;
float u_xlat30;
int u_xlati30;
float u_xlat31;
float u_xlat32;
float u_xlat36;
bool u_xlatb36;
float u_xlat38;
layout(set = 0, binding = 8) uniform mediump  sampler sampler_DitheringTex;
layout(set = 0, binding = 9) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 10) uniform mediump  sampler sampler_AutoExposureTex;
layout(set = 0, binding = 11) uniform mediump  sampler sampler_BloomTex;
layout(set = 0, binding = 12) uniform mediump  sampler sampler_Bloom_DirtTex;
layout(set = 0, binding = 13) uniform mediump  sampler sampler_ChromaticAberration_SpectralLut;
layout(set = 0, binding = 14) uniform mediump  sampler sampler_Lut2D;
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
    u_xlat2.y = float(0.0);
    u_xlat22.y = float(0.0);
    u_xlat3.w = 1.0;
    u_xlat4.x = float(0.0);
    u_xlat4.y = float(0.0);
    u_xlat4.z = float(0.0);
    u_xlat4.w = float(0.0);
    u_xlat5.x = float(0.0);
    u_xlat5.y = float(0.0);
    u_xlat5.z = float(0.0);
    u_xlat5.w = float(0.0);
    u_xlat6.xy = vs_TEXCOORD0.xy;
    for(int u_xlati_loop_1 = 0 ; u_xlati_loop_1<u_xlati30 ; u_xlati_loop_1++)
    {
        u_xlat36 = float(u_xlati_loop_1);
        u_xlat36 = u_xlat36 + 0.5;
        u_xlat2.x = u_xlat36 / u_xlat1.x;
        u_xlat7.xy = u_xlat6.xy + vec2(-0.5, -0.5);
        u_xlat27.xy = u_xlat7.xy * _Distortion_Amount.zz + vec2(0.5, 0.5);
        u_xlat7.xy = u_xlat7.xy * _Distortion_Amount.zz + (-_Distortion_CenterScale.xy);
        u_xlat7.xy = u_xlat7.xy * _Distortion_CenterScale.zw;
        u_xlat36 = dot(u_xlat7.xy, u_xlat7.xy);
        u_xlat36 = sqrt(u_xlat36);
        if(u_xlatb11){
            u_xlat8.xy = vec2(u_xlat36) * _Distortion_Amount.xy;
            u_xlat9 = cos(u_xlat8.x);
            u_xlat8.x = sin(u_xlat8.x);
            u_xlat8.x = u_xlat8.x / u_xlat9;
            u_xlat18 = float(1.0) / u_xlat8.y;
            u_xlat8.x = u_xlat8.x * u_xlat18 + -1.0;
            u_xlat8.xy = u_xlat7.xy * u_xlat8.xx + u_xlat27.xy;
        } else {
            u_xlat28 = float(1.0) / u_xlat36;
            u_xlat28 = u_xlat28 * _Distortion_Amount.x;
            u_xlat36 = u_xlat36 * _Distortion_Amount.y;
            u_xlat38 = min(abs(u_xlat36), 1.0);
            u_xlat9 = max(abs(u_xlat36), 1.0);
            u_xlat9 = float(1.0) / u_xlat9;
            u_xlat38 = u_xlat38 * u_xlat9;
            u_xlat9 = u_xlat38 * u_xlat38;
            u_xlat19 = u_xlat9 * 0.0208350997 + -0.0851330012;
            u_xlat19 = u_xlat9 * u_xlat19 + 0.180141002;
            u_xlat19 = u_xlat9 * u_xlat19 + -0.330299497;
            u_xlat9 = u_xlat9 * u_xlat19 + 0.999866009;
            u_xlat19 = u_xlat38 * u_xlat9;
            u_xlatb29 = 1.0<abs(u_xlat36);
            u_xlat19 = u_xlat19 * -2.0 + 1.57079637;
            u_xlat19 = u_xlatb29 ? u_xlat19 : float(0.0);
            u_xlat38 = u_xlat38 * u_xlat9 + u_xlat19;
            u_xlat36 = min(u_xlat36, 1.0);
            u_xlatb36 = u_xlat36<(-u_xlat36);
            u_xlat36 = (u_xlatb36) ? (-u_xlat38) : u_xlat38;
            u_xlat36 = u_xlat28 * u_xlat36 + -1.0;
            u_xlat8.xy = u_xlat7.xy * vec2(u_xlat36) + u_xlat27.xy;
        }
        u_xlat8.xy = u_xlat8.xy;
        u_xlat8.xy = clamp(u_xlat8.xy, 0.0, 1.0);
        u_xlat7.xy = u_xlat8.xy * vec2(_RenderViewportScaleFactor);
        u_xlat7 = textureLod(sampler2D(_MainTex, sampler_MainTex), u_xlat7.xy, 0.0);
        u_xlat3.xyz = textureLod(sampler2D(_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut), u_xlat2.xy, 0.0).xyz;
        u_xlat4 = u_xlat7 * u_xlat3 + u_xlat4;
        u_xlat5 = u_xlat3 + u_xlat5;
        u_xlat6.xy = u_xlat10.xy + u_xlat6.xy;
    }
    u_xlat3 = u_xlat4 / u_xlat5;
    u_xlat3.xyz = u_xlat0.xxx * u_xlat3.xyz;
    u_xlat0 = _BloomTex_TexelSize.xyxy * vec4(1.0, 1.0, -1.0, 0.0);
    u_xlat4 = (-u_xlat0.xywy) * _Bloom_Settings.xxxx + u_xlat21.xyxy;
    u_xlat4 = clamp(u_xlat4, 0.0, 1.0);
    u_xlat4 = u_xlat4 * vec4(_RenderViewportScaleFactor);
    u_xlat5 = texture(sampler2D(_BloomTex, sampler_BloomTex), u_xlat4.xy);
    u_xlat4 = texture(sampler2D(_BloomTex, sampler_BloomTex), u_xlat4.zw);
    u_xlat4 = u_xlat4 * vec4(2.0, 2.0, 2.0, 2.0) + u_xlat5;
    u_xlat1.xy = (-u_xlat0.zy) * _Bloom_Settings.xx + u_xlat21.xy;
    u_xlat1.xy = clamp(u_xlat1.xy, 0.0, 1.0);
    u_xlat1.xy = u_xlat1.xy * vec2(_RenderViewportScaleFactor);
    u_xlat5 = texture(sampler2D(_BloomTex, sampler_BloomTex), u_xlat1.xy);
    u_xlat4 = u_xlat4 + u_xlat5;
    u_xlat5 = u_xlat0.zwxw * _Bloom_Settings.xxxx + u_xlat21.xyxy;
    u_xlat5 = clamp(u_xlat5, 0.0, 1.0);
    u_xlat5 = u_xlat5 * vec4(_RenderViewportScaleFactor);
    u_xlat6 = texture(sampler2D(_BloomTex, sampler_BloomTex), u_xlat5.xy);
    u_xlat4 = u_xlat6 * vec4(2.0, 2.0, 2.0, 2.0) + u_xlat4;
    u_xlat1.xy = u_xlat21.xy;
    u_xlat1.xy = clamp(u_xlat1.xy, 0.0, 1.0);
    u_xlat1.xy = u_xlat1.xy * vec2(_RenderViewportScaleFactor);
    u_xlat6 = texture(sampler2D(_BloomTex, sampler_BloomTex), u_xlat1.xy);
    u_xlat4 = u_xlat6 * vec4(4.0, 4.0, 4.0, 4.0) + u_xlat4;
    u_xlat5 = texture(sampler2D(_BloomTex, sampler_BloomTex), u_xlat5.zw);
    u_xlat4 = u_xlat5 * vec4(2.0, 2.0, 2.0, 2.0) + u_xlat4;
    u_xlat5 = u_xlat0.zywy * _Bloom_Settings.xxxx + u_xlat21.xyxy;
    u_xlat5 = clamp(u_xlat5, 0.0, 1.0);
    u_xlat5 = u_xlat5 * vec4(_RenderViewportScaleFactor);
    u_xlat6 = texture(sampler2D(_BloomTex, sampler_BloomTex), u_xlat5.xy);
    u_xlat4 = u_xlat4 + u_xlat6;
    u_xlat5 = texture(sampler2D(_BloomTex, sampler_BloomTex), u_xlat5.zw);
    u_xlat4 = u_xlat5 * vec4(2.0, 2.0, 2.0, 2.0) + u_xlat4;
    u_xlat0.xy = u_xlat0.xy * _Bloom_Settings.xx + u_xlat21.xy;
    u_xlat0.xy = clamp(u_xlat0.xy, 0.0, 1.0);
    u_xlat0.xy = u_xlat0.xy * vec2(_RenderViewportScaleFactor);
    u_xlat0 = texture(sampler2D(_BloomTex, sampler_BloomTex), u_xlat0.xy);
    u_xlat0 = u_xlat0 + u_xlat4;
    u_xlat0 = u_xlat0 * _Bloom_Settings.yyyy;
    u_xlat1.xy = u_xlat21.xy * _Bloom_DirtTileOffset.xy + _Bloom_DirtTileOffset.zw;
    u_xlat1.xyz = texture(sampler2D(_Bloom_DirtTex, sampler_Bloom_DirtTex), u_xlat1.xy).xyz;
    u_xlat4.xyz = u_xlat0.xyz * vec3(0.0625, 0.0625, 0.0625);
    u_xlat1.xyz = u_xlat1.xyz * _Bloom_Settings.zzz;
    u_xlat0 = u_xlat0 * vec4(0.0625, 0.0625, 0.0625, 1.0);
    u_xlat5.xyz = u_xlat0.xyz * _Bloom_Color.xyz;
    u_xlat5.w = u_xlat0.w * 0.0625;
    u_xlat0 = u_xlat3 + u_xlat5;
    u_xlat1.xyz = u_xlat4.xyz * u_xlat1.xyz;
    u_xlat1.w = 0.0;
    u_xlat0 = u_xlat0 + u_xlat1;
    u_xlat0 = u_xlat0 * vec4(vec4(_PostExposure, _PostExposure, _PostExposure, _PostExposure));
    u_xlat0.xyz = u_xlat0.zxy * vec3(5.55555582, 5.55555582, 5.55555582) + vec3(0.0479959995, 0.0479959995, 0.0479959995);
    u_xlat0.xyz = log2(u_xlat0.xyz);
    u_xlat0.xyz = u_xlat0.xyz * vec3(0.0734997839, 0.0734997839, 0.0734997839) + vec3(0.386036009, 0.386036009, 0.386036009);
    u_xlat0.xyz = clamp(u_xlat0.xyz, 0.0, 1.0);
    u_xlat1.xyz = u_xlat0.xyz * _Lut2D_Params.zzz;
    u_xlat10.x = floor(u_xlat1.x);
    u_xlat1.xw = _Lut2D_Params.xy * vec2(0.5, 0.5);
    u_xlat1.yz = u_xlat1.yz * _Lut2D_Params.xy + u_xlat1.xw;
    u_xlat1.x = u_xlat10.x * _Lut2D_Params.y + u_xlat1.y;
    u_xlat3.xyz = texture(sampler2D(_Lut2D, sampler_Lut2D), u_xlat1.xz).xyz;
    u_xlat22.x = _Lut2D_Params.y;
    u_xlat1.xy = u_xlat22.xy + u_xlat1.xz;
    u_xlat1.xyz = texture(sampler2D(_Lut2D, sampler_Lut2D), u_xlat1.xy).xyz;
    u_xlat0.x = u_xlat0.x * _Lut2D_Params.z + (-u_xlat10.x);
    u_xlat1.xyz = (-u_xlat3.xyz) + u_xlat1.xyz;
    u_xlat0.xyz = u_xlat0.xxx * u_xlat1.xyz + u_xlat3.xyz;
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

