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
const uvec4 ImmCB_0[] = uvec4[4] (
	uvec4(0x3F800000, 0x0, 0x0, 0x0),
	uvec4(0x0, 0x3F800000, 0x0, 0x0),
	uvec4(0x0, 0x0, 0x3F800000, 0x0),
	uvec4(0x0, 0x0, 0x0, 0x3F800000));
layout(set = 1, binding = 0, std140) uniform PGlobals {
	float _Glossiness;
	float _Metallic;
	float _Scale;
	ivec4 _OctaveIndex;
};
layout(set = 0, binding = 0) uniform mediump texture3D _VolumeNoise;
layout(set = 0, binding = 1) uniform mediump texture2D _AlbedoRamp1;
layout(set = 0, binding = 2) uniform mediump texture2D _AlbedoRamp2;
layout(location = 0) in highp vec3 vs_TEXCOORD0;
layout(location = 1) in highp vec3 vs_TEXCOORD1;
layout(location = 2) in highp vec4 vs_COLOR0;
layout(location = 3) in highp vec3 vs_TEXCOORD4;
layout(location = 0) out highp vec4 SV_Target0;
layout(location = 1) out highp vec4 SV_Target1;
layout(location = 2) out highp vec4 SV_Target2;
layout(location = 3) out highp vec4 SV_Target3;
layout(set = 0, binding = 3) uniform mediump  sampler sampler_AlbedoRamp1;
layout(set = 0, binding = 4) uniform mediump  sampler sampler_AlbedoRamp2;
layout(set = 0, binding = 5) uniform mediump  sampler sampler_VolumeNoise;
void main()
{
vec4 u_xlat0;
vec4 u_xlat1;
ivec4 u_xlati2;
vec4 u_xlat3;
float u_xlat4;
float u_xlat12;
    u_xlat0.xyz = vs_TEXCOORD1.xyz * vec3(vec3(_Scale, _Scale, _Scale));
    u_xlat1.xyz = u_xlat0.xyz * vec3(4.0, 4.0, 4.0);
    u_xlat1 = texture(sampler3D(_VolumeNoise, sampler_VolumeNoise), u_xlat1.xyz);
    u_xlati2 = min(_OctaveIndex, ivec4(3, 3, 3, 3));
    u_xlat12 = dot(u_xlat1, uintBitsToFloat(ImmCB_0[u_xlati2.y]));
    u_xlat1 = texture(sampler3D(_VolumeNoise, sampler_VolumeNoise), u_xlat0.xyz);
    u_xlat1.x = dot(u_xlat1, uintBitsToFloat(ImmCB_0[u_xlati2.x]));
    u_xlat12 = u_xlat12 * 0.5 + u_xlat1.x;
    u_xlat1.xyz = u_xlat0.xyz * vec3(16.0, 16.0, 16.0);
    u_xlat0.xyz = u_xlat0.xyz * vec3(256.0, 256.0, 256.0);
    u_xlat3 = texture(sampler3D(_VolumeNoise, sampler_VolumeNoise), u_xlat0.xyz);
    u_xlat0.x = dot(u_xlat3, uintBitsToFloat(ImmCB_0[u_xlati2.w]));
    u_xlat1 = texture(sampler3D(_VolumeNoise, sampler_VolumeNoise), u_xlat1.xyz);
    u_xlat4 = dot(u_xlat1, uintBitsToFloat(ImmCB_0[u_xlati2.z]));
    u_xlat4 = u_xlat4 * 0.25 + u_xlat12;
    u_xlat0.x = u_xlat0.x * 0.125 + u_xlat4;
    u_xlat0.x = u_xlat0.x * 0.533333361;
    u_xlat1 = texture(sampler2D(_AlbedoRamp2, sampler_AlbedoRamp2), u_xlat0.xx);
    u_xlat0 = texture(sampler2D(_AlbedoRamp1, sampler_AlbedoRamp1), u_xlat0.xx);
    u_xlat1 = (-u_xlat0) + u_xlat1;
    u_xlat0 = vs_COLOR0.wwww * u_xlat1 + u_xlat0;
    u_xlat1.x = (-_Metallic) * 0.959999979 + 0.959999979;
    u_xlat1.xyz = u_xlat0.xyz * u_xlat1.xxx;
    SV_Target0.xyz = u_xlat1.xyz;
    u_xlat1.xyz = u_xlat1.xyz * vs_TEXCOORD4.xyz;
    SV_Target3.xyz = exp2((-u_xlat1.xyz));
    SV_Target0.w = 1.0;
    u_xlat0.xyz = u_xlat0.xyz + vec3(-0.0399999991, -0.0399999991, -0.0399999991);
    SV_Target1.w = u_xlat0.w * _Glossiness;
    SV_Target1.xyz = vec3(vec3(_Metallic, _Metallic, _Metallic)) * u_xlat0.xyz + vec3(0.0399999991, 0.0399999991, 0.0399999991);
    SV_Target2.xyz = vs_TEXCOORD0.xyz * vec3(0.5, 0.5, 0.5) + vec3(0.5, 0.5, 0.5);
    SV_Target2.w = 1.0;
    SV_Target3.w = 1.0;
    return;
}

