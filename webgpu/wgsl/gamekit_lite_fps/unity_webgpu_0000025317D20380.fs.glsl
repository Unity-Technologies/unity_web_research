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
	mat4x4 unity_ObjectToWorld;
	float _Glossiness;
	float _Metallic;
	float _Cutoff;
	float _Cutoff2;
	float _EdgeSizeBot;
	float _EdgeSizeTop;
	vec4 _Color;
	vec4 _EdgeColor1;
	vec4 _EdgeColor2;
	vec4 _bounds;
};
layout(set = 0, binding = 1) uniform mediump texture2D _MetallicSmooth;
layout(set = 0, binding = 2) uniform mediump texture2D _Noise;
layout(set = 0, binding = 3) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 4) uniform mediump texture2D _Normal;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 1) in highp vec4 vs_TEXCOORD1;
layout(location = 2) in highp vec4 vs_TEXCOORD2;
layout(location = 3) in highp vec4 vs_TEXCOORD3;
layout(location = 0) out highp vec4 SV_Target0;
layout(location = 1) out highp vec4 SV_Target1;
layout(location = 2) out highp vec4 SV_Target2;
layout(location = 3) out highp vec4 SV_Target3;
vec4 u_xlat0;
bool u_xlatb0;
vec4 u_xlat1;
vec4 u_xlat2;
vec3 u_xlat3;
vec3 u_xlat4;
float u_xlat5;
float u_xlat6;
float u_xlat10;
float u_xlat15;
bool u_xlatb15;
layout(set = 0, binding = 5) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 6) uniform mediump  sampler sampler_Noise;
layout(set = 0, binding = 7) uniform mediump  sampler sampler_Normal;
layout(set = 0, binding = 8) uniform mediump  sampler sampler_MetallicSmooth;
void main()
{
    u_xlat0.x = _Cutoff + _Cutoff;
    u_xlat1.z = vs_TEXCOORD1.w;
    u_xlat1.yw = vs_TEXCOORD2.ww;
    u_xlat1.x = vs_TEXCOORD3.w;
    u_xlat1 = u_xlat1 + (-unity_ObjectToWorld[3].zyxy);
    u_xlat0.x = u_xlat1.w * 2.0 + u_xlat0.x;
    u_xlat2.xyw = u_xlat1.wxz * vec3(6.0, 0.200000003, 0.200000003);
    u_xlat0.yw = u_xlat2.yw;
    u_xlat0.x = texture(sampler2D(_Noise, sampler_Noise), u_xlat0.xy).x;
    u_xlat0.z = u_xlat1.y * 4.0 + _Cutoff;
    u_xlat5 = texture(sampler2D(_Noise, sampler_Noise), u_xlat0.zw).x;
    u_xlat0.x = dot(u_xlat0.xx, vec2(u_xlat5));
    u_xlat5 = _bounds.y + 0.200000003;
    u_xlat10 = u_xlat5 * 0.5;
    u_xlat5 = _Cutoff * u_xlat5 + (-u_xlat10);
    u_xlat10 = u_xlat5 + _EdgeSizeTop;
    u_xlat15 = (-u_xlat10) + u_xlat1.w;
    u_xlat10 = (-u_xlat10) + u_xlat5;
    u_xlat10 = float(1.0) / u_xlat10;
    u_xlat10 = u_xlat10 * u_xlat15;
    u_xlat10 = clamp(u_xlat10, 0.0, 1.0);
    u_xlat15 = u_xlat10 * -2.0 + 3.0;
    u_xlat10 = u_xlat10 * u_xlat10;
    u_xlat10 = u_xlat10 * u_xlat15;
    u_xlatb15 = u_xlat1.w>=u_xlat5;
    u_xlat1.x = (u_xlatb15) ? 0.0 : 1.0;
    u_xlat15 = u_xlatb15 ? 1.0 : float(0.0);
    u_xlat0.x = u_xlat0.x * u_xlat10 + u_xlat1.x;
    u_xlat0.x = u_xlat0.x + (-_Cutoff);
    u_xlat0.x = u_xlat0.x + (-_Cutoff2);
    u_xlatb0 = u_xlat0.x<0.0;
    if(((int(u_xlatb0) * int(0xffffffffu)))!=0){discard;}
    u_xlat0.x = u_xlat5 + (-_EdgeSizeBot);
    u_xlat5 = (-u_xlat0.x) + u_xlat5;
    u_xlat0.x = (-u_xlat0.x) + u_xlat1.w;
    u_xlat5 = float(1.0) / u_xlat5;
    u_xlat0.x = u_xlat5 * u_xlat0.x;
    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
    u_xlat5 = u_xlat0.x * -2.0 + 3.0;
    u_xlat0.x = u_xlat0.x * u_xlat0.x;
    u_xlat6 = (-u_xlat5) * u_xlat0.x + 1.0;
    u_xlat0.x = u_xlat0.x * u_xlat5;
    u_xlat3.xyz = u_xlat0.xxx * _EdgeColor1.xyz;
    u_xlat1.xzw = u_xlat1.xxx * u_xlat3.xyz;
    u_xlat0.xy = texture(sampler2D(_MetallicSmooth, sampler_MetallicSmooth), vs_TEXCOORD0.xy).xw;
    u_xlat0.xy = u_xlat0.xy * vec2(_Metallic, _Glossiness);
    u_xlat0.x = u_xlat6 * u_xlat0.x;
    SV_Target1.w = u_xlat6 * u_xlat0.y;
    u_xlat5 = (-u_xlat0.x) * 0.959999979 + 0.959999979;
    u_xlat3.xyz = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD0.xy).xyz;
    u_xlat4.xyz = u_xlat3.xyz * _Color.xyz;
    u_xlat3.xyz = u_xlat3.xyz * _Color.xyz + vec3(-0.0399999991, -0.0399999991, -0.0399999991);
    SV_Target1.xyz = u_xlat0.xxx * u_xlat3.xyz + vec3(0.0399999991, 0.0399999991, 0.0399999991);
    SV_Target0.xyz = vec3(u_xlat5) * u_xlat4.xyz;
    SV_Target0.w = 1.0;
    u_xlat3.xyz = texture(sampler2D(_Normal, sampler_Normal), vs_TEXCOORD0.xy).xyw;
    u_xlat3.x = u_xlat3.z * u_xlat3.x;
    u_xlat3.xy = u_xlat3.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat0.x = dot(u_xlat3.xy, u_xlat3.xy);
    u_xlat0.x = min(u_xlat0.x, 1.0);
    u_xlat0.x = (-u_xlat0.x) + 1.0;
    u_xlat3.z = sqrt(u_xlat0.x);
    u_xlat4.x = dot(vs_TEXCOORD1.xyz, u_xlat3.xyz);
    u_xlat4.y = dot(vs_TEXCOORD2.xyz, u_xlat3.xyz);
    u_xlat4.z = dot(vs_TEXCOORD3.xyz, u_xlat3.xyz);
    u_xlat0.x = dot(u_xlat4.xyz, u_xlat4.xyz);
    u_xlat0.x = inversesqrt(u_xlat0.x);
    u_xlat3.xyz = u_xlat0.xxx * u_xlat4.xyz;
    SV_Target2.xyz = u_xlat3.xyz * vec3(0.5, 0.5, 0.5) + vec3(0.5, 0.5, 0.5);
    SV_Target2.w = 1.0;
    u_xlat2.y = 0.0;
    u_xlat0.x = texture(sampler2D(_Noise, sampler_Noise), u_xlat2.xy).x;
    u_xlat2.xyz = u_xlat1.xzw * vec3(0.5, 0.5, 0.5);
    u_xlat1.xyz = u_xlat1.xzw * u_xlat0.xxx + u_xlat2.xyz;
    u_xlat2.xyz = _EdgeColor1.xyz + (-_EdgeColor2.xyz);
    u_xlat0.xyz = vec3(u_xlat10) * u_xlat2.xyz + _EdgeColor2.xyz;
    SV_Target3.xyz = u_xlat0.xyz * vec3(u_xlat15) + u_xlat1.xyz;
    SV_Target3.w = 1.0;
    return;
}

