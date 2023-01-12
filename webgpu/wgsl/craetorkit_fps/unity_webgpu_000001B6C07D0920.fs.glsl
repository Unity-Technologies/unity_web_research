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
	vec4 _Tex_HDR;
	vec4 _Tint;
	float _Exposure;
};
layout(set = 0, binding = 0) uniform mediump textureCube _Tex;
layout(location = 0) in highp vec3 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 1) uniform mediump  sampler sampler_Tex;
void main()
{
vec4 u_xlat0;
float u_xlat3;
    u_xlat0 = texture(samplerCube(_Tex, sampler_Tex), vs_TEXCOORD0.xyz);
    u_xlat3 = u_xlat0.w + -1.0;
    u_xlat3 = _Tex_HDR.w * u_xlat3 + 1.0;
    u_xlat3 = log2(u_xlat3);
    u_xlat3 = u_xlat3 * _Tex_HDR.y;
    u_xlat3 = exp2(u_xlat3);
    u_xlat3 = u_xlat3 * _Tex_HDR.x;
    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat3);
    u_xlat0.xyz = u_xlat0.xyz * _Tint.xyz;
    u_xlat0.xyz = u_xlat0.xyz * vec3(_Exposure);
    SV_Target0.xyz = u_xlat0.xyz * vec3(4.5947938, 4.5947938, 4.5947938);
    SV_Target0.w = 1.0;
    return;
}

