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
	vec3 _Lut2D_Params;
	vec3 _Vignette_Color;
	vec2 _Vignette_Center;
	vec4 _Vignette_Settings;
	float _Vignette_Opacity;
	float _Vignette_Mode;
	float _LumaInAlpha;
};
layout(set = 0, binding = 0) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 1) uniform mediump texture2D _AutoExposureTex;
layout(set = 0, binding = 2) uniform mediump texture2D _Lut2D;
layout(set = 0, binding = 3) uniform mediump texture2D _Vignette_Mask;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 1) in highp vec2 vs_TEXCOORD1;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 4) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 5) uniform mediump  sampler sampler_AutoExposureTex;
layout(set = 0, binding = 6) uniform mediump  sampler sampler_Lut2D;
layout(set = 0, binding = 7) uniform mediump  sampler sampler_Vignette_Mask;
void main()
{
vec3 u_xlat0;
bvec3 u_xlatb0;
vec4 u_xlat1;
vec4 u_xlat2;
vec3 u_xlat3;
bvec3 u_xlatb3;
vec2 u_xlat4;
vec3 u_xlat5;
float u_xlat6;
vec2 u_xlat10;
float u_xlat15;
bool u_xlatb15;
    u_xlat0.x = texture(sampler2D(_AutoExposureTex, sampler_AutoExposureTex), vs_TEXCOORD0.xy).x;
    u_xlat1 = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD1.xy);
    u_xlat0.xyz = u_xlat0.xxx * u_xlat1.xyz;
    u_xlatb15 = _Vignette_Mode<0.5;
    if(u_xlatb15){
        u_xlat1.xy = vs_TEXCOORD0.xy + (-_Vignette_Center.xy);
        u_xlat1.yz = abs(u_xlat1.yx) * _Vignette_Settings.xx;
        u_xlat15 = _ScreenParams.x / _ScreenParams.y;
        u_xlat15 = u_xlat15 + -1.0;
        u_xlat15 = _Vignette_Settings.w * u_xlat15 + 1.0;
        u_xlat1.x = u_xlat15 * u_xlat1.z;
        u_xlat1.xy = u_xlat1.xy;
        u_xlat1.xy = clamp(u_xlat1.xy, 0.0, 1.0);
        u_xlat1.xy = log2(u_xlat1.xy);
        u_xlat1.xy = u_xlat1.xy * _Vignette_Settings.zz;
        u_xlat1.xy = exp2(u_xlat1.xy);
        u_xlat15 = dot(u_xlat1.xy, u_xlat1.xy);
        u_xlat15 = (-u_xlat15) + 1.0;
        u_xlat15 = max(u_xlat15, 0.0);
        u_xlat15 = log2(u_xlat15);
        u_xlat15 = u_xlat15 * _Vignette_Settings.y;
        u_xlat15 = exp2(u_xlat15);
        u_xlat1.xyz = (-_Vignette_Color.xyz) + vec3(1.0, 1.0, 1.0);
        u_xlat1.xyz = vec3(u_xlat15) * u_xlat1.xyz + _Vignette_Color.xyz;
        u_xlat2.xyz = u_xlat0.xyz * u_xlat1.xyz;
        u_xlat1.x = u_xlat1.w + -1.0;
        u_xlat2.w = u_xlat15 * u_xlat1.x + 1.0;
    } else {
        u_xlat15 = texture(sampler2D(_Vignette_Mask, sampler_Vignette_Mask), vs_TEXCOORD0.xy).w;
        u_xlat1.x = u_xlat15 * 0.0773993805;
        u_xlat6 = u_xlat15 + 0.0549999997;
        u_xlat6 = u_xlat6 * 0.947867334;
        u_xlat6 = max(abs(u_xlat6), 1.1920929e-07);
        u_xlat6 = log2(u_xlat6);
        u_xlat6 = u_xlat6 * 2.4000001;
        u_xlat6 = exp2(u_xlat6);
        u_xlatb15 = 0.0404499993>=u_xlat15;
        u_xlat15 = (u_xlatb15) ? u_xlat1.x : u_xlat6;
        u_xlat1.xyz = (-_Vignette_Color.xyz) + vec3(1.0, 1.0, 1.0);
        u_xlat1.xyz = vec3(u_xlat15) * u_xlat1.xyz + _Vignette_Color.xyz;
        u_xlat1.xyz = u_xlat0.xyz * u_xlat1.xyz + (-u_xlat0.xyz);
        u_xlat2.xyz = vec3(_Vignette_Opacity) * u_xlat1.xyz + u_xlat0.xyz;
        u_xlat0.x = u_xlat1.w + -1.0;
        u_xlat2.w = u_xlat15 * u_xlat0.x + 1.0;
    }
    u_xlat2 = u_xlat2;
    u_xlat2 = clamp(u_xlat2, 0.0, 1.0);
    u_xlat0.xyz = u_xlat2.zxy * vec3(12.9200001, 12.9200001, 12.9200001);
    u_xlat1.xyz = max(u_xlat2.zxy, vec3(1.1920929e-07, 1.1920929e-07, 1.1920929e-07));
    u_xlat1.xyz = log2(u_xlat1.xyz);
    u_xlat1.xyz = u_xlat1.xyz * vec3(0.416666657, 0.416666657, 0.416666657);
    u_xlat1.xyz = exp2(u_xlat1.xyz);
    u_xlat1.xyz = u_xlat1.xyz * vec3(1.05499995, 1.05499995, 1.05499995) + vec3(-0.0549999997, -0.0549999997, -0.0549999997);
    u_xlatb3.xyz = greaterThanEqual(vec4(0.00313080009, 0.00313080009, 0.00313080009, 0.0), u_xlat2.zxyz).xyz;
    {
        vec3 hlslcc_movcTemp = u_xlat0;
        hlslcc_movcTemp.x = (u_xlatb3.x) ? u_xlat0.x : u_xlat1.x;
        hlslcc_movcTemp.y = (u_xlatb3.y) ? u_xlat0.y : u_xlat1.y;
        hlslcc_movcTemp.z = (u_xlatb3.z) ? u_xlat0.z : u_xlat1.z;
        u_xlat0 = hlslcc_movcTemp;
    }
    u_xlat5.xyz = u_xlat0.xyz * _Lut2D_Params.zzz;
    u_xlat5.x = floor(u_xlat5.x);
    u_xlat1.xy = _Lut2D_Params.xy * vec2(0.5, 0.5);
    u_xlat1.yz = u_xlat5.yz * _Lut2D_Params.xy + u_xlat1.xy;
    u_xlat1.x = u_xlat5.x * _Lut2D_Params.y + u_xlat1.y;
    u_xlat3.xyz = texture(sampler2D(_Lut2D, sampler_Lut2D), u_xlat1.xz).xyz;
    u_xlat4.x = _Lut2D_Params.y;
    u_xlat4.y = 0.0;
    u_xlat10.xy = u_xlat1.xz + u_xlat4.xy;
    u_xlat1.xyz = texture(sampler2D(_Lut2D, sampler_Lut2D), u_xlat10.xy).xyz;
    u_xlat0.x = u_xlat0.x * _Lut2D_Params.z + (-u_xlat5.x);
    u_xlat5.xyz = (-u_xlat3.xyz) + u_xlat1.xyz;
    u_xlat0.xyz = u_xlat0.xxx * u_xlat5.xyz + u_xlat3.xyz;
    u_xlat1.xyz = u_xlat0.xyz * vec3(0.0773993805, 0.0773993805, 0.0773993805);
    u_xlat3.xyz = u_xlat0.xyz + vec3(0.0549999997, 0.0549999997, 0.0549999997);
    u_xlat3.xyz = u_xlat3.xyz * vec3(0.947867334, 0.947867334, 0.947867334);
    u_xlat3.xyz = max(abs(u_xlat3.xyz), vec3(1.1920929e-07, 1.1920929e-07, 1.1920929e-07));
    u_xlat3.xyz = log2(u_xlat3.xyz);
    u_xlat3.xyz = u_xlat3.xyz * vec3(2.4000001, 2.4000001, 2.4000001);
    u_xlat3.xyz = exp2(u_xlat3.xyz);
    u_xlatb0.xyz = greaterThanEqual(vec4(0.0404499993, 0.0404499993, 0.0404499993, 0.0), u_xlat0.xyzx).xyz;
    u_xlat2.x = (u_xlatb0.x) ? u_xlat1.x : u_xlat3.x;
    u_xlat2.y = (u_xlatb0.y) ? u_xlat1.y : u_xlat3.y;
    u_xlat2.z = (u_xlatb0.z) ? u_xlat1.z : u_xlat3.z;
    u_xlatb0.x = 0.5<_LumaInAlpha;
    if(u_xlatb0.x){
        u_xlat0.xyz = u_xlat2.xyz;
        u_xlat0.xyz = clamp(u_xlat0.xyz, 0.0, 1.0);
        u_xlat2.w = dot(u_xlat0.xyz, vec3(0.212672904, 0.715152204, 0.0721750036));
    }
    SV_Target0 = u_xlat2;
    return;
}

