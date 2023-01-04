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
	vec4 _BaseMap_ST;
	vec4 _BaseColor;
	vec4 _SpecColor;
	vec4 _EmissionColor;
	float _Cutoff;
	float _Surface;
};
layout(set = 0, binding = 0) uniform mediump texture2D _BaseMap;
layout(location = 0) in highp vec2 vs_TEXCOORD1;
layout(location = 1) in highp vec3 vs_TEXCOORD2;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 1) uniform mediump  sampler sampler_BaseMap;
void main()
{
float u_xlat0;
bool u_xlatb0;
float u_xlat1;
float u_xlat2;
bool u_xlatb2;
float u_xlat3;
bool u_xlatb3;
    u_xlat0 = texture(sampler2D(_BaseMap, sampler_BaseMap), vs_TEXCOORD1.xy, _GlobalMipBias.x).w;
    u_xlat1 = u_xlat0 * _BaseColor.w;
    u_xlat0 = u_xlat0 * _BaseColor.w + (-_Cutoff);
    u_xlat2 = dFdxCoarse(u_xlat1);
    u_xlat3 = dFdyCoarse(u_xlat1);
    u_xlat2 = abs(u_xlat3) + abs(u_xlat2);
    u_xlat2 = max(u_xlat2, 9.99999975e-05);
    u_xlat0 = u_xlat0 / u_xlat2;
    u_xlat0 = u_xlat0 + 0.5;
    u_xlat0 = clamp(u_xlat0, 0.0, 1.0);
    u_xlatb2 = _AlphaToMaskAvailable!=0.0;
    u_xlatb3 = u_xlat1>=_Cutoff;
    u_xlat1 = u_xlatb3 ? u_xlat1 : float(0.0);
    u_xlat0 = (u_xlatb2) ? u_xlat0 : u_xlat1;
    u_xlat0 = u_xlat0 + -9.99999975e-05;
    u_xlatb0 = u_xlat0<0.0;
    if(((int(u_xlatb0) * int(0xffffffffu)))!=0){discard;}
    u_xlat0 = dot(vs_TEXCOORD2.xyz, vs_TEXCOORD2.xyz);
    u_xlat0 = inversesqrt(u_xlat0);
    SV_Target0.xyz = vec3(u_xlat0) * vs_TEXCOORD2.xyz;
    SV_Target0.w = 0.0;
    return;
}

