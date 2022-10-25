#version 440
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shading_language_420pack : require
#ifdef GL_ARB_derivative_control
#extension GL_ARB_derivative_control : enable
#endif

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
	vec2 _GlobalMipBias;
	float _AlphaToMaskAvailable;
};
layout(set = 1, binding = 1, std140) uniform UnityPerMaterial {
	vec4 _MainTex_ST;
	vec4 _BaseColor;
	vec4 _SpecColor;
	vec4 _EmissionColor;
	float _Cutoff;
	float _Shininess;
};
layout(set = 0, binding = 0) uniform mediump texture2D _MainTex;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 1) in highp vec4 vs_TEXCOORD2;
layout(location = 2) in highp vec3 vs_TEXCOORD3;
layout(location = 0) out highp vec4 SV_TARGET0;
layout(set = 0, binding = 1) uniform mediump  sampler sampler_MainTex;
void main()
{
vec3 u_xlat0;
bool u_xlatb0;
vec3 u_xlat1;
vec3 u_xlat2;
float u_xlat3;
float u_xlat6;
bool u_xlatb6;
float u_xlat9;
bool u_xlatb9;
    u_xlat0.x = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD0.xy, _GlobalMipBias.x).w;
    u_xlat3 = u_xlat0.x * vs_TEXCOORD2.w;
    u_xlat0.x = u_xlat0.x * vs_TEXCOORD2.w + (-_Cutoff);
    u_xlat6 = dFdxCoarse(u_xlat3);
    u_xlat9 = dFdyCoarse(u_xlat3);
    u_xlat6 = abs(u_xlat9) + abs(u_xlat6);
    u_xlat6 = max(u_xlat6, 9.99999975e-05);
    u_xlat0.x = u_xlat0.x / u_xlat6;
    u_xlat0.x = u_xlat0.x + 0.5;
    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
    u_xlatb6 = _AlphaToMaskAvailable!=0.0;
    u_xlatb9 = u_xlat3>=_Cutoff;
    u_xlat3 = u_xlatb9 ? u_xlat3 : float(0.0);
    u_xlat0.x = (u_xlatb6) ? u_xlat0.x : u_xlat3;
    u_xlat0.x = u_xlat0.x + -9.99999975e-05;
    u_xlatb0 = u_xlat0.x<0.0;
    if(((int(u_xlatb0) * int(0xffffffffu)))!=0){discard;}
    u_xlat0.xyz = dFdyCoarse(vs_TEXCOORD3.zxy);
    u_xlat1.xyz = dFdxCoarse(vs_TEXCOORD3.yzx);
    u_xlat2.xyz = u_xlat0.xyz * u_xlat1.xyz;
    u_xlat0.xyz = u_xlat0.zxy * u_xlat1.yzx + (-u_xlat2.xyz);
    u_xlat9 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat9 = inversesqrt(u_xlat9);
    SV_TARGET0.xyz = vec3(u_xlat9) * u_xlat0.xyz;
    SV_TARGET0.w = 0.0;
    return;
}

