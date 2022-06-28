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
	vec4 _Time;
	float _Glossiness;
	float _Metallic;
	vec4 _Color;
};
layout(location = 0) in highp vec3 vs_TEXCOORD0;
layout(location = 1) in highp vec3 vs_TEXCOORD2;
layout(location = 0) out highp vec4 SV_Target0;
layout(location = 1) out highp vec4 SV_Target1;
layout(location = 2) out highp vec4 SV_Target2;
layout(location = 3) out highp vec4 SV_Target3;
vec3 u_xlat0;
vec3 u_xlat1;
float u_xlat6;
void main()
{
    u_xlat0.x = dot(vs_TEXCOORD2.xyz, vs_TEXCOORD2.xyz);
    u_xlat0.x = inversesqrt(u_xlat0.x);
    u_xlat0.xyz = u_xlat0.xxx * vs_TEXCOORD2.xyz;
    u_xlat0.x = dot(vs_TEXCOORD0.xyz, u_xlat0.xyz);
    u_xlat0.x = log2(u_xlat0.x);
    u_xlat0.x = u_xlat0.x * 0.100000001;
    u_xlat0.x = exp2(u_xlat0.x);
    u_xlat0.x = (-u_xlat0.x) + 1.0;
    u_xlat0.x = max(u_xlat0.x, 0.0);
    u_xlat0.xyz = u_xlat0.xxx * _Color.xyz;
    u_xlat6 = _Time.x * 200.0;
    u_xlat6 = sin(u_xlat6);
    u_xlat6 = u_xlat6 + 1.0;
    u_xlat6 = u_xlat6 * 0.5;
    u_xlat1.xyz = vec3(u_xlat6) * u_xlat0.xyz;
    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat6) + vec3(-0.0399999991, -0.0399999991, -0.0399999991);
    SV_Target1.xyz = vec3(vec3(_Metallic, _Metallic, _Metallic)) * u_xlat0.xyz + vec3(0.0399999991, 0.0399999991, 0.0399999991);
    u_xlat0.x = (-_Metallic) * 0.959999979 + 0.959999979;
    SV_Target0.xyz = u_xlat0.xxx * u_xlat1.xyz;
    SV_Target0.w = 1.0;
    SV_Target1.w = _Glossiness;
    SV_Target2.xyz = vs_TEXCOORD0.xyz * vec3(0.5, 0.5, 0.5) + vec3(0.5, 0.5, 0.5);
    SV_Target2.w = 1.0;
    SV_Target3 = vec4(0.0, 0.0, 0.0, 1.0);
    return;
}

