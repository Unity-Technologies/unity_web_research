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
	vec3 _WorldSpaceCameraPos;
	vec4 _WorldSpaceLightPos0;
	vec4 unity_OcclusionMaskSelector;
	vec4 unity_SpecCube0_HDR;
	vec4 unity_ProbeVolumeParams;
	mat4x4 unity_ProbeVolumeWorldToObject;
	vec3 unity_ProbeVolumeSizeInv;
	vec3 unity_ProbeVolumeMin;
	vec4 _LightColor0;
	float _Glossiness;
	float _Metallic;
	float _Scale;
	ivec4 _OctaveIndex;
};
layout(set = 0, binding = 0) uniform mediump texture3D _VolumeNoise;
layout(set = 0, binding = 1) uniform mediump texture2D _AlbedoRamp1;
layout(set = 0, binding = 2) uniform mediump texture2D _AlbedoRamp2;
layout(set = 0, binding = 3) uniform highp texture2D unity_NHxRoughness;
layout(set = 0, binding = 4) uniform mediump textureCube unity_SpecCube0;
layout(set = 0, binding = 5) uniform highp texture3D unity_ProbeVolumeSH;
layout(location = 0) in highp vec3 vs_TEXCOORD0;
layout(location = 1) in highp vec3 vs_TEXCOORD1;
layout(location = 2) in highp vec4 vs_COLOR0;
layout(location = 3) in highp vec3 vs_TEXCOORD2;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 6) uniform mediump  sampler samplerunity_SpecCube0;
layout(set = 0, binding = 7) uniform highp  sampler samplerunity_ProbeVolumeSH;
layout(set = 0, binding = 8) uniform highp  sampler samplerunity_NHxRoughness;
layout(set = 0, binding = 9) uniform mediump  sampler sampler_AlbedoRamp1;
layout(set = 0, binding = 10) uniform mediump  sampler sampler_AlbedoRamp2;
layout(set = 0, binding = 11) uniform mediump  sampler sampler_VolumeNoise;
void main()
{
vec3 u_xlat0;
vec4 u_xlat1;
ivec4 u_xlati1;
vec4 u_xlat2;
vec4 u_xlat3;
vec3 u_xlat4;
vec3 u_xlat5;
vec3 u_xlat6;
vec3 u_xlat7;
float u_xlat8;
float u_xlat9;
float u_xlat15;
float u_xlat21;
bool u_xlatb21;
float u_xlat23;
float u_xlat24;
    u_xlat0.xyz = (-vs_TEXCOORD1.xyz) + _WorldSpaceCameraPos.xyz;
    u_xlat21 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat21 = inversesqrt(u_xlat21);
    u_xlat0.xyz = vec3(u_xlat21) * u_xlat0.xyz;
    u_xlati1 = min(_OctaveIndex, ivec4(3, 3, 3, 3));
    u_xlat2.xyz = vs_TEXCOORD1.xyz * vec3(vec3(_Scale, _Scale, _Scale));
    u_xlat3 = texture(sampler3D(_VolumeNoise, sampler_VolumeNoise), u_xlat2.xyz);
    u_xlat21 = dot(u_xlat3, uintBitsToFloat(ImmCB_0[u_xlati1.x]));
    u_xlat3.xyz = u_xlat2.xyz * vec3(4.0, 4.0, 4.0);
    u_xlat3 = texture(sampler3D(_VolumeNoise, sampler_VolumeNoise), u_xlat3.xyz);
    u_xlat1.x = dot(u_xlat3, uintBitsToFloat(ImmCB_0[u_xlati1.y]));
    u_xlat3.xyz = u_xlat2.xyz * vec3(16.0, 16.0, 16.0);
    u_xlat3 = texture(sampler3D(_VolumeNoise, sampler_VolumeNoise), u_xlat3.xyz);
    u_xlat8 = dot(u_xlat3, uintBitsToFloat(ImmCB_0[u_xlati1.z]));
    u_xlat2.xyz = u_xlat2.xyz * vec3(256.0, 256.0, 256.0);
    u_xlat2 = texture(sampler3D(_VolumeNoise, sampler_VolumeNoise), u_xlat2.xyz);
    u_xlat15 = dot(u_xlat2, uintBitsToFloat(ImmCB_0[u_xlati1.w]));
    u_xlat21 = u_xlat1.x * 0.5 + u_xlat21;
    u_xlat21 = u_xlat8 * 0.25 + u_xlat21;
    u_xlat21 = u_xlat15 * 0.125 + u_xlat21;
    u_xlat21 = u_xlat21 * 0.533333361;
    u_xlat1 = texture(sampler2D(_AlbedoRamp1, sampler_AlbedoRamp1), vec2(u_xlat21));
    u_xlat2 = texture(sampler2D(_AlbedoRamp2, sampler_AlbedoRamp2), vec2(u_xlat21));
    u_xlat2 = (-u_xlat1) + u_xlat2;
    u_xlat1 = vs_COLOR0.wwww * u_xlat2 + u_xlat1;
    u_xlatb21 = unity_ProbeVolumeParams.x==1.0;
    if(u_xlatb21){
        u_xlatb21 = unity_ProbeVolumeParams.y==1.0;
        u_xlat2.xyz = vs_TEXCOORD1.yyy * unity_ProbeVolumeWorldToObject[1].xyz;
        u_xlat2.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD1.xxx + u_xlat2.xyz;
        u_xlat2.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD1.zzz + u_xlat2.xyz;
        u_xlat2.xyz = u_xlat2.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
        u_xlat2.xyz = (bool(u_xlatb21)) ? u_xlat2.xyz : vs_TEXCOORD1.xyz;
        u_xlat2.xyz = u_xlat2.xyz + (-unity_ProbeVolumeMin.xyz);
        u_xlat2.yzw = u_xlat2.xyz * unity_ProbeVolumeSizeInv.xyz;
        u_xlat21 = u_xlat2.y * 0.25 + 0.75;
        u_xlat9 = unity_ProbeVolumeParams.z * 0.5 + 0.75;
        u_xlat2.x = max(u_xlat21, u_xlat9);
        u_xlat2 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat2.xzw);
    } else {
        u_xlat2.x = float(1.0);
        u_xlat2.y = float(1.0);
        u_xlat2.z = float(1.0);
        u_xlat2.w = float(1.0);
    }
    u_xlat21 = dot(u_xlat2, unity_OcclusionMaskSelector);
    u_xlat21 = clamp(u_xlat21, 0.0, 1.0);
    u_xlat2.z = (-_Glossiness) * u_xlat1.w + 1.0;
    u_xlat23 = dot((-u_xlat0.xyz), vs_TEXCOORD0.xyz);
    u_xlat23 = u_xlat23 + u_xlat23;
    u_xlat3.xyz = vs_TEXCOORD0.xyz * (-vec3(u_xlat23)) + (-u_xlat0.xyz);
    u_xlat4.xyz = vec3(u_xlat21) * _LightColor0.xyz;
    u_xlat21 = (-u_xlat2.z) * 0.699999988 + 1.70000005;
    u_xlat21 = u_xlat21 * u_xlat2.z;
    u_xlat21 = u_xlat21 * 6.0;
    u_xlat3 = textureLod(samplerCube(unity_SpecCube0, samplerunity_SpecCube0), u_xlat3.xyz, u_xlat21);
    u_xlat21 = u_xlat3.w + -1.0;
    u_xlat21 = unity_SpecCube0_HDR.w * u_xlat21 + 1.0;
    u_xlat21 = log2(u_xlat21);
    u_xlat21 = u_xlat21 * unity_SpecCube0_HDR.y;
    u_xlat21 = exp2(u_xlat21);
    u_xlat21 = u_xlat21 * unity_SpecCube0_HDR.x;
    u_xlat3.xyz = u_xlat3.xyz * vec3(u_xlat21);
    u_xlat21 = dot(vs_TEXCOORD0.xyz, vs_TEXCOORD0.xyz);
    u_xlat21 = inversesqrt(u_xlat21);
    u_xlat5.xyz = vec3(u_xlat21) * vs_TEXCOORD0.xyz;
    u_xlat6.xyz = u_xlat1.xyz + vec3(-0.0399999991, -0.0399999991, -0.0399999991);
    u_xlat6.xyz = vec3(vec3(_Metallic, _Metallic, _Metallic)) * u_xlat6.xyz + vec3(0.0399999991, 0.0399999991, 0.0399999991);
    u_xlat21 = (-_Metallic) * 0.959999979 + 0.959999979;
    u_xlat1.xyz = vec3(u_xlat21) * u_xlat1.xyz;
    u_xlat23 = dot(u_xlat0.xyz, u_xlat5.xyz);
    u_xlat24 = u_xlat23 + u_xlat23;
    u_xlat0.xyz = u_xlat5.xyz * (-vec3(u_xlat24)) + u_xlat0.xyz;
    u_xlat24 = dot(u_xlat5.xyz, _WorldSpaceLightPos0.xyz);
    u_xlat24 = clamp(u_xlat24, 0.0, 1.0);
    u_xlat23 = u_xlat23;
    u_xlat23 = clamp(u_xlat23, 0.0, 1.0);
    u_xlat0.x = dot(u_xlat0.xyz, _WorldSpaceLightPos0.xyz);
    u_xlat0.y = (-u_xlat23) + 1.0;
    u_xlat0.xy = u_xlat0.xy * u_xlat0.xy;
    u_xlat2.xy = u_xlat0.xy * u_xlat0.xy;
    u_xlat0.x = _Glossiness * u_xlat1.w + (-u_xlat21);
    u_xlat0.x = u_xlat0.x + 1.0;
    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
    u_xlat7.x = texture(sampler2D(unity_NHxRoughness, samplerunity_NHxRoughness), u_xlat2.xz).x;
    u_xlat7.x = u_xlat7.x * 16.0;
    u_xlat7.xyz = u_xlat7.xxx * u_xlat6.xyz + u_xlat1.xyz;
    u_xlat2.xzw = vec3(u_xlat24) * u_xlat4.xyz;
    u_xlat4.xyz = (-u_xlat6.xyz) + u_xlat0.xxx;
    u_xlat4.xyz = u_xlat2.yyy * u_xlat4.xyz + u_xlat6.xyz;
    u_xlat3.xyz = u_xlat3.xyz * u_xlat4.xyz;
    u_xlat1.xyz = vs_TEXCOORD2.xyz * u_xlat1.xyz + u_xlat3.xyz;
    SV_Target0.xyz = u_xlat7.xyz * u_xlat2.xzw + u_xlat1.xyz;
    SV_Target0.w = 1.0;
    return;
}

