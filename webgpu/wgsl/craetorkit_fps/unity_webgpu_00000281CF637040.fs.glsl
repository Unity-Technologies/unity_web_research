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
	vec4 unity_ProbeVolumeParams;
	mat4x4 unity_ProbeVolumeWorldToObject;
	vec3 unity_ProbeVolumeSizeInv;
	vec3 unity_ProbeVolumeMin;
	vec4 _LightColor0;
	mat4x4 unity_WorldToLight;
	float _Glossiness;
	float _Metallic;
	float _Scale;
	ivec4 _OctaveIndex;
};
layout(set = 0, binding = 0) uniform mediump texture3D _VolumeNoise;
layout(set = 0, binding = 1) uniform mediump texture2D _AlbedoRamp1;
layout(set = 0, binding = 2) uniform mediump texture2D _AlbedoRamp2;
layout(set = 0, binding = 3) uniform highp texture2D _LightTexture0;
layout(set = 0, binding = 4) uniform highp texture2D unity_NHxRoughness;
layout(set = 0, binding = 5) uniform highp texture3D unity_ProbeVolumeSH;
layout(location = 0) in highp vec3 vs_TEXCOORD0;
layout(location = 1) in highp vec3 vs_TEXCOORD1;
layout(location = 2) in highp vec4 vs_COLOR0;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 6) uniform highp  sampler samplerunity_ProbeVolumeSH;
layout(set = 0, binding = 7) uniform highp  sampler samplerunity_NHxRoughness;
layout(set = 0, binding = 8) uniform highp  sampler sampler_LightTexture0;
layout(set = 0, binding = 9) uniform mediump  sampler sampler_AlbedoRamp1;
layout(set = 0, binding = 10) uniform mediump  sampler sampler_AlbedoRamp2;
layout(set = 0, binding = 11) uniform mediump  sampler sampler_VolumeNoise;
void main()
{
vec3 u_xlat0;
vec3 u_xlat1;
vec4 u_xlat2;
ivec4 u_xlati2;
vec4 u_xlat3;
vec4 u_xlat4;
vec3 u_xlat5;
float u_xlat8;
float u_xlat18;
bool u_xlatb18;
float u_xlat19;
    u_xlat0.xyz = (-vs_TEXCOORD1.xyz) + _WorldSpaceLightPos0.xyz;
    u_xlat18 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat18 = inversesqrt(u_xlat18);
    u_xlat0.xyz = vec3(u_xlat18) * u_xlat0.xyz;
    u_xlat1.xyz = (-vs_TEXCOORD1.xyz) + _WorldSpaceCameraPos.xyz;
    u_xlat18 = dot(u_xlat1.xyz, u_xlat1.xyz);
    u_xlat18 = inversesqrt(u_xlat18);
    u_xlat1.xyz = vec3(u_xlat18) * u_xlat1.xyz;
    u_xlati2 = min(_OctaveIndex, ivec4(3, 3, 3, 3));
    u_xlat3.xyz = vs_TEXCOORD1.xyz * vec3(vec3(_Scale, _Scale, _Scale));
    u_xlat4 = texture(sampler3D(_VolumeNoise, sampler_VolumeNoise), u_xlat3.xyz);
    u_xlat18 = dot(u_xlat4, uintBitsToFloat(ImmCB_0[u_xlati2.x]));
    u_xlat4.xyz = u_xlat3.xyz * vec3(4.0, 4.0, 4.0);
    u_xlat4 = texture(sampler3D(_VolumeNoise, sampler_VolumeNoise), u_xlat4.xyz);
    u_xlat19 = dot(u_xlat4, uintBitsToFloat(ImmCB_0[u_xlati2.y]));
    u_xlat4.xyz = u_xlat3.xyz * vec3(16.0, 16.0, 16.0);
    u_xlat4 = texture(sampler3D(_VolumeNoise, sampler_VolumeNoise), u_xlat4.xyz);
    u_xlat2.x = dot(u_xlat4, uintBitsToFloat(ImmCB_0[u_xlati2.z]));
    u_xlat3.xyz = u_xlat3.xyz * vec3(256.0, 256.0, 256.0);
    u_xlat3 = texture(sampler3D(_VolumeNoise, sampler_VolumeNoise), u_xlat3.xyz);
    u_xlat8 = dot(u_xlat3, uintBitsToFloat(ImmCB_0[u_xlati2.w]));
    u_xlat18 = u_xlat19 * 0.5 + u_xlat18;
    u_xlat18 = u_xlat2.x * 0.25 + u_xlat18;
    u_xlat18 = u_xlat8 * 0.125 + u_xlat18;
    u_xlat18 = u_xlat18 * 0.533333361;
    u_xlat2 = texture(sampler2D(_AlbedoRamp1, sampler_AlbedoRamp1), vec2(u_xlat18));
    u_xlat3 = texture(sampler2D(_AlbedoRamp2, sampler_AlbedoRamp2), vec2(u_xlat18));
    u_xlat3 = (-u_xlat2) + u_xlat3;
    u_xlat2 = vs_COLOR0.wwww * u_xlat3 + u_xlat2;
    u_xlat3.xyz = vs_TEXCOORD1.yyy * unity_WorldToLight[1].xyz;
    u_xlat3.xyz = unity_WorldToLight[0].xyz * vs_TEXCOORD1.xxx + u_xlat3.xyz;
    u_xlat3.xyz = unity_WorldToLight[2].xyz * vs_TEXCOORD1.zzz + u_xlat3.xyz;
    u_xlat3.xyz = u_xlat3.xyz + unity_WorldToLight[3].xyz;
    u_xlatb18 = unity_ProbeVolumeParams.x==1.0;
    if(u_xlatb18){
        u_xlatb18 = unity_ProbeVolumeParams.y==1.0;
        u_xlat4.xyz = vs_TEXCOORD1.yyy * unity_ProbeVolumeWorldToObject[1].xyz;
        u_xlat4.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD1.xxx + u_xlat4.xyz;
        u_xlat4.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD1.zzz + u_xlat4.xyz;
        u_xlat4.xyz = u_xlat4.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
        u_xlat4.xyz = (bool(u_xlatb18)) ? u_xlat4.xyz : vs_TEXCOORD1.xyz;
        u_xlat4.xyz = u_xlat4.xyz + (-unity_ProbeVolumeMin.xyz);
        u_xlat4.yzw = u_xlat4.xyz * unity_ProbeVolumeSizeInv.xyz;
        u_xlat18 = u_xlat4.y * 0.25 + 0.75;
        u_xlat19 = unity_ProbeVolumeParams.z * 0.5 + 0.75;
        u_xlat4.x = max(u_xlat18, u_xlat19);
        u_xlat4 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat4.xzw);
    } else {
        u_xlat4.x = float(1.0);
        u_xlat4.y = float(1.0);
        u_xlat4.z = float(1.0);
        u_xlat4.w = float(1.0);
    }
    u_xlat18 = dot(u_xlat4, unity_OcclusionMaskSelector);
    u_xlat18 = clamp(u_xlat18, 0.0, 1.0);
    u_xlat19 = dot(u_xlat3.xyz, u_xlat3.xyz);
    u_xlat19 = texture(sampler2D(_LightTexture0, sampler_LightTexture0), vec2(u_xlat19)).x;
    u_xlat18 = u_xlat18 * u_xlat19;
    u_xlat3.xyz = vec3(u_xlat18) * _LightColor0.xyz;
    u_xlat18 = dot(vs_TEXCOORD0.xyz, vs_TEXCOORD0.xyz);
    u_xlat18 = inversesqrt(u_xlat18);
    u_xlat4.xyz = vec3(u_xlat18) * vs_TEXCOORD0.xyz;
    u_xlat5.xyz = u_xlat2.xyz + vec3(-0.0399999991, -0.0399999991, -0.0399999991);
    u_xlat5.xyz = vec3(vec3(_Metallic, _Metallic, _Metallic)) * u_xlat5.xyz + vec3(0.0399999991, 0.0399999991, 0.0399999991);
    u_xlat18 = (-_Metallic) * 0.959999979 + 0.959999979;
    u_xlat19 = dot(u_xlat1.xyz, u_xlat4.xyz);
    u_xlat19 = u_xlat19 + u_xlat19;
    u_xlat1.xyz = u_xlat4.xyz * (-vec3(u_xlat19)) + u_xlat1.xyz;
    u_xlat19 = dot(u_xlat4.xyz, u_xlat0.xyz);
    u_xlat19 = clamp(u_xlat19, 0.0, 1.0);
    u_xlat0.x = dot(u_xlat1.xyz, u_xlat0.xyz);
    u_xlat0.x = u_xlat0.x * u_xlat0.x;
    u_xlat0.x = u_xlat0.x * u_xlat0.x;
    u_xlat0.y = (-_Glossiness) * u_xlat2.w + 1.0;
    u_xlat0.x = texture(sampler2D(unity_NHxRoughness, samplerunity_NHxRoughness), u_xlat0.xy).x;
    u_xlat0.x = u_xlat0.x * 16.0;
    u_xlat0.xyz = u_xlat5.xyz * u_xlat0.xxx;
    u_xlat0.xyz = u_xlat2.xyz * vec3(u_xlat18) + u_xlat0.xyz;
    u_xlat1.xyz = vec3(u_xlat19) * u_xlat3.xyz;
    SV_Target0.xyz = u_xlat0.xyz * u_xlat1.xyz;
    SV_Target0.w = 1.0;
    return;
}
