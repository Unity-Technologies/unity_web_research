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
	vec4 _Dithering_Coords;
	vec3 _Vignette_Color;
	vec2 _Vignette_Center;
	vec4 _Vignette_Settings;
	float _Vignette_Opacity;
	float _Vignette_Mode;
};
layout(set = 0, binding = 1) uniform mediump texture2D _DitheringTex;
layout(set = 0, binding = 2) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 3) uniform mediump texture2D _AutoExposureTex;
layout(set = 0, binding = 4) uniform mediump texture2D _Vignette_Mask;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 1) in highp vec2 vs_TEXCOORD1;
layout(location = 0) out highp vec4 SV_Target0;
vec3 u_xlat0;
bvec3 u_xlatb0;
vec4 u_xlat1;
bvec3 u_xlatb1;
vec4 u_xlat2;
vec3 u_xlat3;
vec3 u_xlat4;
float u_xlat7;
float u_xlat12;
bool u_xlatb12;
layout(set = 0, binding = 5) uniform mediump  sampler sampler_DitheringTex;
layout(set = 0, binding = 6) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 7) uniform mediump  sampler sampler_AutoExposureTex;
layout(set = 0, binding = 8) uniform mediump  sampler sampler_Vignette_Mask;
void main()
{
    u_xlat0.x = texture(sampler2D(_AutoExposureTex, sampler_AutoExposureTex), vs_TEXCOORD0.xy).x;
    u_xlat1 = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD1.xy);
    u_xlat0.xyz = u_xlat0.xxx * u_xlat1.xyz;
    u_xlatb12 = _Vignette_Mode<0.5;
    if(u_xlatb12){
        u_xlat1.xy = vs_TEXCOORD0.xy + (-_Vignette_Center.xy);
        u_xlat1.yz = abs(u_xlat1.yx) * _Vignette_Settings.xx;
        u_xlat12 = _ScreenParams.x / _ScreenParams.y;
        u_xlat12 = u_xlat12 + -1.0;
        u_xlat12 = _Vignette_Settings.w * u_xlat12 + 1.0;
        u_xlat1.x = u_xlat12 * u_xlat1.z;
        u_xlat1.xy = u_xlat1.xy;
        u_xlat1.xy = clamp(u_xlat1.xy, 0.0, 1.0);
        u_xlat1.xy = log2(u_xlat1.xy);
        u_xlat1.xy = u_xlat1.xy * _Vignette_Settings.zz;
        u_xlat1.xy = exp2(u_xlat1.xy);
        u_xlat12 = dot(u_xlat1.xy, u_xlat1.xy);
        u_xlat12 = (-u_xlat12) + 1.0;
        u_xlat12 = max(u_xlat12, 0.0);
        u_xlat12 = log2(u_xlat12);
        u_xlat12 = u_xlat12 * _Vignette_Settings.y;
        u_xlat12 = exp2(u_xlat12);
        u_xlat1.xyz = (-_Vignette_Color.xyz) + vec3(1.0, 1.0, 1.0);
        u_xlat1.xyz = vec3(u_xlat12) * u_xlat1.xyz + _Vignette_Color.xyz;
        u_xlat1.xyz = u_xlat0.xyz * u_xlat1.xyz;
        u_xlat2.x = u_xlat1.w + -1.0;
        u_xlat2.w = u_xlat12 * u_xlat2.x + 1.0;
    } else {
        u_xlat12 = texture(sampler2D(_Vignette_Mask, sampler_Vignette_Mask), vs_TEXCOORD0.xy).w;
        u_xlat3.x = u_xlat12 * 0.0773993805;
        u_xlat7 = u_xlat12 + 0.0549999997;
        u_xlat7 = u_xlat7 * 0.947867334;
        u_xlat7 = max(abs(u_xlat7), 1.1920929e-07);
        u_xlat7 = log2(u_xlat7);
        u_xlat7 = u_xlat7 * 2.4000001;
        u_xlat7 = exp2(u_xlat7);
        u_xlatb12 = 0.0404499993>=u_xlat12;
        u_xlat12 = (u_xlatb12) ? u_xlat3.x : u_xlat7;
        u_xlat3.xyz = (-_Vignette_Color.xyz) + vec3(1.0, 1.0, 1.0);
        u_xlat3.xyz = vec3(u_xlat12) * u_xlat3.xyz + _Vignette_Color.xyz;
        u_xlat3.xyz = u_xlat0.xyz * u_xlat3.xyz + (-u_xlat0.xyz);
        u_xlat1.xyz = vec3(_Vignette_Opacity) * u_xlat3.xyz + u_xlat0.xyz;
        u_xlat0.x = u_xlat1.w + -1.0;
        u_xlat2.w = u_xlat12 * u_xlat0.x + 1.0;
    }
    u_xlat0.xy = vs_TEXCOORD0.xy * _Dithering_Coords.xy + _Dithering_Coords.zw;
    u_xlat0.x = texture(sampler2D(_DitheringTex, sampler_DitheringTex), u_xlat0.xy).w;
    u_xlat0.x = u_xlat0.x * 2.0 + -1.0;
    u_xlat4.x = u_xlat0.x * 3.40282347e+38 + 0.5;
    u_xlat4.x = clamp(u_xlat4.x, 0.0, 1.0);
    u_xlat4.x = u_xlat4.x * 2.0 + -1.0;
    u_xlat0.x = -abs(u_xlat0.x) + 1.0;
    u_xlat0.x = sqrt(u_xlat0.x);
    u_xlat0.x = (-u_xlat0.x) + 1.0;
    u_xlat0.x = u_xlat0.x * u_xlat4.x;
    u_xlat4.xyz = u_xlat1.xyz * vec3(12.9200001, 12.9200001, 12.9200001);
    u_xlat3.xyz = max(abs(u_xlat1.xyz), vec3(1.1920929e-07, 1.1920929e-07, 1.1920929e-07));
    u_xlat3.xyz = log2(u_xlat3.xyz);
    u_xlat3.xyz = u_xlat3.xyz * vec3(0.416666657, 0.416666657, 0.416666657);
    u_xlat3.xyz = exp2(u_xlat3.xyz);
    u_xlat3.xyz = u_xlat3.xyz * vec3(1.05499995, 1.05499995, 1.05499995) + vec3(-0.0549999997, -0.0549999997, -0.0549999997);
    u_xlatb1.xyz = greaterThanEqual(vec4(0.00313080009, 0.00313080009, 0.00313080009, 0.0), u_xlat1.xyzx).xyz;
    {
        vec3 hlslcc_movcTemp = u_xlat4;
        hlslcc_movcTemp.x = (u_xlatb1.x) ? u_xlat4.x : u_xlat3.x;
        hlslcc_movcTemp.y = (u_xlatb1.y) ? u_xlat4.y : u_xlat3.y;
        hlslcc_movcTemp.z = (u_xlatb1.z) ? u_xlat4.z : u_xlat3.z;
        u_xlat4 = hlslcc_movcTemp;
    }
    u_xlat0.xyz = u_xlat0.xxx * vec3(0.00392156886, 0.00392156886, 0.00392156886) + u_xlat4.xyz;
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
    SV_Target0 = u_xlat2;
    return;
}

