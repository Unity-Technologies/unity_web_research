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
	vec4 unity_FogColor;
	vec4 _TopColor;
	vec4 _RimColor;
	vec4 _FoamColor;
	vec4 _Color;
	float _Rim;
	float _RimPower;
};
layout(location = 0) in highp float vs_TEXCOORD1;
layout(location = 1) in highp float vs_TEXCOORD2;
layout(location = 2) in highp vec3 vs_COLOR0;
layout(location = 3) in highp vec3 vs_COLOR2;
layout(location = 0) out highp vec4 SV_Target0;
void main()
{
float u_xlat0;
vec4 u_xlat1;
bool u_xlatb1;
vec4 u_xlat2;
vec4 u_xlat3;
vec4 u_xlat4;
vec3 u_xlat5;
float u_xlat6;
bool u_xlatb6;
float u_xlat11;
    u_xlat0 = dot(vs_COLOR2.xyz, vs_COLOR0.xyz);
    u_xlat0 = log2(u_xlat0);
    u_xlat0 = u_xlat0 * _RimPower;
    u_xlat0 = exp2(u_xlat0);
    u_xlat0 = (-u_xlat0) + 0.5;
    u_xlat0 = u_xlat0 + u_xlat0;
    u_xlat0 = max(u_xlat0, 0.0);
    u_xlat5.x = u_xlat0 * -2.0 + 3.0;
    u_xlat0 = u_xlat0 * u_xlat0;
    u_xlat0 = u_xlat0 * u_xlat5.x;
    u_xlat5.x = vs_TEXCOORD1;
    u_xlat5.x = clamp(u_xlat5.x, 0.0, 1.0);
    u_xlat1.xyz = (-unity_FogColor.xyz) + _Color.xyz;
    u_xlat5.xyz = u_xlat5.xxx * u_xlat1.xyz + unity_FogColor.xyz;
    u_xlat1.x = (-_Rim) + 0.5;
    u_xlatb1 = u_xlat1.x>=vs_TEXCOORD2;
    u_xlat1.x = (u_xlatb1) ? -1.0 : -0.0;
    u_xlatb6 = 0.5>=vs_TEXCOORD2;
    u_xlat6 = u_xlatb6 ? 1.0 : float(0.0);
    u_xlat1.x = u_xlat1.x + u_xlat6;
    u_xlat11 = (-u_xlat1.x) + u_xlat6;
    u_xlat2 = u_xlat1.xxxx * _FoamColor;
    u_xlat3 = vec4(u_xlat6) * _TopColor;
    u_xlat4.xyz = u_xlat5.xyz * vec3(u_xlat11);
    u_xlat4.w = u_xlat11 * _Color.w;
    u_xlat1 = u_xlat2 * vec4(0.899999976, 0.899999976, 0.899999976, 0.899999976) + u_xlat4;
    u_xlat1.xyz = vec3(u_xlat0) * _RimColor.xyz + u_xlat1.xyz;
    SV_Target0 = (uint((gl_FrontFacing ? 0xffffffffu : uint(0))) != uint(0)) ? u_xlat1 : u_xlat3;
    return;
}
