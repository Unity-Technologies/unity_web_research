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
	float _Scale;
	ivec4 _OctaveIndex;
	bvec4 unity_MetaFragmentControl;
	float unity_OneOverOutputBoost;
	float unity_MaxOutputValue;
};
layout(set = 0, binding = 0) uniform mediump texture3D _VolumeNoise;
layout(set = 0, binding = 1) uniform mediump texture2D _AlbedoRamp1;
layout(set = 0, binding = 2) uniform mediump texture2D _AlbedoRamp2;
layout(location = 0) in highp vec3 vs_TEXCOORD0;
layout(location = 1) in highp vec4 vs_COLOR0;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 3) uniform mediump  sampler sampler_AlbedoRamp1;
layout(set = 0, binding = 4) uniform mediump  sampler sampler_AlbedoRamp2;
layout(set = 0, binding = 5) uniform mediump  sampler sampler_VolumeNoise;
void main()
{
vec4 u_xlat0;
vec4 u_xlat1;
ivec4 u_xlati2;
vec4 u_xlat3;
vec3 u_xlat4;
float u_xlat12;
    u_xlat0.xyz = vs_TEXCOORD0.xyz * vec3(vec3(_Scale, _Scale, _Scale));
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
    u_xlat4.x = dot(u_xlat1, uintBitsToFloat(ImmCB_0[u_xlati2.z]));
    u_xlat4.x = u_xlat4.x * 0.25 + u_xlat12;
    u_xlat0.x = u_xlat0.x * 0.125 + u_xlat4.x;
    u_xlat0.x = u_xlat0.x * 0.533333361;
    u_xlat4.xyz = texture(sampler2D(_AlbedoRamp2, sampler_AlbedoRamp2), u_xlat0.xx).xyz;
    u_xlat1.xyz = texture(sampler2D(_AlbedoRamp1, sampler_AlbedoRamp1), u_xlat0.xx).xyz;
    u_xlat0.xyz = u_xlat4.xyz + (-u_xlat1.xyz);
    u_xlat0.xyz = vs_COLOR0.www * u_xlat0.xyz + u_xlat1.xyz;
    u_xlat0.xyz = log2(u_xlat0.xyz);
    u_xlat12 = unity_OneOverOutputBoost;
    u_xlat12 = clamp(u_xlat12, 0.0, 1.0);
    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat12);
    u_xlat0.xyz = exp2(u_xlat0.xyz);
    u_xlat0.xyz = min(u_xlat0.xyz, vec3(vec3(unity_MaxOutputValue, unity_MaxOutputValue, unity_MaxOutputValue)));
    u_xlat0.w = 1.0;
    u_xlat0 = (unity_MetaFragmentControl.x) ? u_xlat0 : vec4(0.0, 0.0, 0.0, 0.0);
    SV_Target0 = (unity_MetaFragmentControl.y) ? vec4(0.0, 0.0, 0.0, 1.0) : u_xlat0;
    return;
}

