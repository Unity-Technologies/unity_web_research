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
	vec4 _TexA_HDR;
	vec4 _TexB_HDR;
	float _Level;
	float _value;
};
layout(set = 0, binding = 0) uniform mediump textureCube _TexA;
layout(set = 0, binding = 1) uniform mediump textureCube _TexB;
layout(location = 0) in highp  vec3 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
vec4 u_xlat0;
vec4 u_xlat1;
float u_xlat6;
layout(set = 0, binding = 2) uniform mediump  sampler sampler_TexA;
layout(set = 0, binding = 3) uniform mediump  sampler sampler_TexB;
void main()
{
    u_xlat0 = textureLod(samplerCube(_TexA, sampler_TexA), vs_TEXCOORD0.xyz, _Level);
    u_xlat6 = u_xlat0.w + -1.0;
    u_xlat6 = _TexA_HDR.w * u_xlat6 + 1.0;
    u_xlat6 = log2(u_xlat6);
    u_xlat6 = u_xlat6 * _TexA_HDR.y;
    u_xlat6 = exp2(u_xlat6);
    u_xlat6 = u_xlat6 * _TexA_HDR.x;
    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat6);
    u_xlat1 = textureLod(samplerCube(_TexB, sampler_TexB), vs_TEXCOORD0.xyz, _Level);
    u_xlat6 = u_xlat1.w + -1.0;
    u_xlat6 = _TexB_HDR.w * u_xlat6 + 1.0;
    u_xlat6 = log2(u_xlat6);
    u_xlat6 = u_xlat6 * _TexB_HDR.y;
    u_xlat6 = exp2(u_xlat6);
    u_xlat6 = u_xlat6 * _TexB_HDR.x;
    u_xlat1.xyz = vec3(u_xlat6) * u_xlat1.xyz + (-u_xlat0.xyz);
    SV_Target0.xyz = vec3(vec3(_value, _value, _value)) * u_xlat1.xyz + u_xlat0.xyz;
    SV_Target0.w = 1.0;
    return;
}

