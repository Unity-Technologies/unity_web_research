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
	float _ChromaticAberration_Amount;
	vec3 _Lut2D_Params;
};
layout(set = 0, binding = 1) uniform mediump texture2D _DitheringTex;
layout(set = 0, binding = 2) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 3) uniform mediump texture2D _AutoExposureTex;
layout(set = 0, binding = 4) uniform mediump texture2D _ChromaticAberration_SpectralLut;
layout(set = 0, binding = 5) uniform mediump texture2D _Lut2D;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
vec3 u_xlat0;
bvec3 u_xlatb0;
vec4 u_xlat1;
vec3 u_xlat2;
vec4 u_xlat3;
vec4 u_xlat4;
vec4 u_xlat5;
int u_xlati6;
vec4 u_xlat7;
float u_xlat8;
float u_xlat9;
bool u_xlatb9;
vec3 u_xlat10;
bool u_xlatb11;
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
float u_xlat36;
bool u_xlatb36;
float u_xlat37;
float u_xlat38;
layout(set = 0, binding = 6) uniform mediump  sampler sampler_DitheringTex;
layout(set = 0, binding = 7) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 8) uniform mediump  sampler sampler_AutoExposureTex;
layout(set = 0, binding = 9) uniform mediump  sampler sampler_ChromaticAberration_SpectralLut;
layout(set = 0, binding = 10) uniform mediump  sampler sampler_Lut2D;
void main()
{
    u_xlat0.x = texture(sampler2D(_AutoExposureTex, sampler_AutoExposureTex), vs_TEXCOORD0.xy).x;
    u_xlat10.xy = vs_TEXCOORD0.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat30 = dot(u_xlat10.xy, u_xlat10.xy);
    u_xlat10.xy = vec2(u_xlat30) * u_xlat10.xy;
    u_xlat10.xy = u_xlat10.xy * vec2(vec2(_ChromaticAberration_Amount, _ChromaticAberration_Amount));
    u_xlat1.xy = (-u_xlat10.xy) * _MainTex_TexelSize.zw;
    u_xlat1.xy = u_xlat1.xy * vec2(0.5, 0.5);
    u_xlat30 = dot(u_xlat1.xy, u_xlat1.xy);
    u_xlat30 = sqrt(u_xlat30);
    u_xlati30 = int(u_xlat30);
    u_xlati30 = max(u_xlati30, 3);
    u_xlati30 = min(u_xlati30, 16);
    u_xlat1.x = float(u_xlati30);
    u_xlat10.xy = (-u_xlat10.xy) / u_xlat1.xx;
    u_xlatb11 = 0.0<_Distortion_Amount.w;
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
    u_xlat21.xy = vs_TEXCOORD0.xy;
    for(int u_xlati_loop_1 = 0 ; u_xlati_loop_1<u_xlati30 ; u_xlati_loop_1++)
    {
        u_xlat16.x = float(u_xlati_loop_1);
        u_xlat16.x = u_xlat16.x + 0.5;
        u_xlat2.x = u_xlat16.x / u_xlat1.x;
        u_xlat16.xy = u_xlat21.xy + vec2(-0.5, -0.5);
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
        u_xlat21.xy = u_xlat10.xy + u_xlat21.xy;
    }
    u_xlat1 = u_xlat4 / u_xlat5;
    u_xlat0.xyz = u_xlat0.xxx * u_xlat1.xyz;
    u_xlat0.xyz = clamp(u_xlat0.xyz, 0.0, 1.0);
    u_xlat31 = u_xlat1.w;
    u_xlat31 = clamp(u_xlat31, 0.0, 1.0);
    u_xlat1.xyz = u_xlat0.zxy * vec3(12.9200001, 12.9200001, 12.9200001);
    u_xlat3.xyz = max(u_xlat0.zxy, vec3(1.1920929e-07, 1.1920929e-07, 1.1920929e-07));
    u_xlat3.xyz = log2(u_xlat3.xyz);
    u_xlat3.xyz = u_xlat3.xyz * vec3(0.416666657, 0.416666657, 0.416666657);
    u_xlat3.xyz = exp2(u_xlat3.xyz);
    u_xlat3.xyz = u_xlat3.xyz * vec3(1.05499995, 1.05499995, 1.05499995) + vec3(-0.0549999997, -0.0549999997, -0.0549999997);
    u_xlatb0.xyz = greaterThanEqual(vec4(0.00313080009, 0.00313080009, 0.00313080009, 0.0), u_xlat0.zxyz).xyz;
    u_xlat0.x = (u_xlatb0.x) ? u_xlat1.x : u_xlat3.x;
    u_xlat0.y = (u_xlatb0.y) ? u_xlat1.y : u_xlat3.y;
    u_xlat0.z = (u_xlatb0.z) ? u_xlat1.z : u_xlat3.z;
    u_xlat10.xyz = u_xlat0.xyz * _Lut2D_Params.zzz;
    u_xlat10.x = floor(u_xlat10.x);
    u_xlat1.xy = _Lut2D_Params.xy * vec2(0.5, 0.5);
    u_xlat1.yz = u_xlat10.yz * _Lut2D_Params.xy + u_xlat1.xy;
    u_xlat1.x = u_xlat10.x * _Lut2D_Params.y + u_xlat1.y;
    u_xlat3.xyz = texture(sampler2D(_Lut2D, sampler_Lut2D), u_xlat1.xz).xyz;
    u_xlat22.x = _Lut2D_Params.y;
    u_xlat20.xy = u_xlat22.xy + u_xlat1.xz;
    u_xlat1.xyz = texture(sampler2D(_Lut2D, sampler_Lut2D), u_xlat20.xy).xyz;
    u_xlat0.x = u_xlat0.x * _Lut2D_Params.z + (-u_xlat10.x);
    u_xlat10.xyz = (-u_xlat3.xyz) + u_xlat1.xyz;
    u_xlat0.xyz = u_xlat0.xxx * u_xlat10.xyz + u_xlat3.xyz;
    u_xlat1.xyz = u_xlat0.xyz * vec3(0.0773993805, 0.0773993805, 0.0773993805);
    u_xlat2.xyz = u_xlat0.xyz + vec3(0.0549999997, 0.0549999997, 0.0549999997);
    u_xlat2.xyz = u_xlat2.xyz * vec3(0.947867334, 0.947867334, 0.947867334);
    u_xlat2.xyz = max(abs(u_xlat2.xyz), vec3(1.1920929e-07, 1.1920929e-07, 1.1920929e-07));
    u_xlat2.xyz = log2(u_xlat2.xyz);
    u_xlat2.xyz = u_xlat2.xyz * vec3(2.4000001, 2.4000001, 2.4000001);
    u_xlat2.xyz = exp2(u_xlat2.xyz);
    u_xlatb0.xyz = greaterThanEqual(vec4(0.0404499993, 0.0404499993, 0.0404499993, 0.0), u_xlat0.xyzx).xyz;
    u_xlat0.x = (u_xlatb0.x) ? u_xlat1.x : u_xlat2.x;
    u_xlat0.y = (u_xlatb0.y) ? u_xlat1.y : u_xlat2.y;
    u_xlat0.z = (u_xlatb0.z) ? u_xlat1.z : u_xlat2.z;
    u_xlat1.xy = vs_TEXCOORD0.xy * _Dithering_Coords.xy + _Dithering_Coords.zw;
    u_xlat30 = texture(sampler2D(_DitheringTex, sampler_DitheringTex), u_xlat1.xy).w;
    u_xlat30 = u_xlat30 * 2.0 + -1.0;
    u_xlat1.x = u_xlat30 * 3.40282347e+38 + 0.5;
    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
    u_xlat1.x = u_xlat1.x * 2.0 + -1.0;
    u_xlat30 = -abs(u_xlat30) + 1.0;
    u_xlat30 = sqrt(u_xlat30);
    u_xlat30 = (-u_xlat30) + 1.0;
    u_xlat30 = u_xlat30 * u_xlat1.x;
    u_xlat1.xyz = u_xlat0.xyz * vec3(12.9200001, 12.9200001, 12.9200001);
    u_xlat2.xyz = max(abs(u_xlat0.xyz), vec3(1.1920929e-07, 1.1920929e-07, 1.1920929e-07));
    u_xlat2.xyz = log2(u_xlat2.xyz);
    u_xlat2.xyz = u_xlat2.xyz * vec3(0.416666657, 0.416666657, 0.416666657);
    u_xlat2.xyz = exp2(u_xlat2.xyz);
    u_xlat2.xyz = u_xlat2.xyz * vec3(1.05499995, 1.05499995, 1.05499995) + vec3(-0.0549999997, -0.0549999997, -0.0549999997);
    u_xlatb0.xyz = greaterThanEqual(vec4(0.00313080009, 0.00313080009, 0.00313080009, 0.0), u_xlat0.xyzx).xyz;
    u_xlat0.x = (u_xlatb0.x) ? u_xlat1.x : u_xlat2.x;
    u_xlat0.y = (u_xlatb0.y) ? u_xlat1.y : u_xlat2.y;
    u_xlat0.z = (u_xlatb0.z) ? u_xlat1.z : u_xlat2.z;
    u_xlat0.xyz = vec3(u_xlat30) * vec3(0.00392156886, 0.00392156886, 0.00392156886) + u_xlat0.xyz;
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
    SV_Target0.w = u_xlat31;
    return;
}
