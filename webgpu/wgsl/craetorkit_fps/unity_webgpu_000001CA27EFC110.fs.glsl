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
	vec4 _ProjectionParams;
	vec4 _WorldSpaceLightPos0;
	vec4 _LightPositionRange;
	vec4 _LightProjectionParams;
	vec4 unity_OcclusionMaskSelector;
	vec4 _LightShadowData;
	vec4 unity_ShadowFadeCenterAndType;
	mat4x4 unity_MatrixV;
	vec4 unity_FogParams;
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
layout(set = 0, binding = 4) uniform highp texture3D unity_ProbeVolumeSH;
layout(set = 0, binding = 5) uniform highp textureCube _ShadowMapTexture;
layout(location = 0) in highp vec3 vs_TEXCOORD0;
layout(location = 1) in highp float vs_TEXCOORD4;
layout(location = 2) in highp vec3 vs_TEXCOORD1;
layout(location = 3) in highp vec4 vs_COLOR0;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 6) uniform highp  sampler samplerunity_ProbeVolumeSH;
layout(set = 0, binding = 7) uniform highp  samplerShadow sampler_ShadowMapTexture;
layout(set = 0, binding = 8) uniform highp  sampler sampler_LightTexture0;
layout(set = 0, binding = 9) uniform mediump  sampler sampler_AlbedoRamp1;
layout(set = 0, binding = 10) uniform mediump  sampler sampler_AlbedoRamp2;
layout(set = 0, binding = 11) uniform mediump  sampler sampler_VolumeNoise;
void main()
{
vec3 u_xlat0;
vec3 u_xlat1;
vec4 u_xlat2;
bool u_xlatb2;
vec3 u_xlat3;
vec4 u_xlat4;
ivec4 u_xlati4;
vec4 u_xlat5;
vec4 u_xlat6;
vec3 u_xlat7;
vec3 u_xlat8;
float u_xlat9;
vec3 u_xlat10;
bool u_xlatb10;
float u_xlat16;
float u_xlat18;
float u_xlat24;
bool u_xlatb24;
float u_xlat25;
float u_xlat26;
float u_xlat27;
    u_xlat0.xyz = (-vs_TEXCOORD1.xyz) + _WorldSpaceLightPos0.xyz;
    u_xlat24 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat24 = inversesqrt(u_xlat24);
    u_xlat1.xyz = vec3(u_xlat24) * u_xlat0.xyz;
    u_xlat2.xyz = (-vs_TEXCOORD1.xyz) + _WorldSpaceCameraPos.xyz;
    u_xlat25 = dot(u_xlat2.xyz, u_xlat2.xyz);
    u_xlat25 = inversesqrt(u_xlat25);
    u_xlat3.xyz = vec3(u_xlat25) * u_xlat2.xyz;
    u_xlati4 = min(_OctaveIndex, ivec4(3, 3, 3, 3));
    u_xlat5.xyz = vs_TEXCOORD1.xyz * vec3(vec3(_Scale, _Scale, _Scale));
    u_xlat6 = texture(sampler3D(_VolumeNoise, sampler_VolumeNoise), u_xlat5.xyz);
    u_xlat25 = dot(u_xlat6, uintBitsToFloat(ImmCB_0[u_xlati4.x]));
    u_xlat6.xyz = u_xlat5.xyz * vec3(4.0, 4.0, 4.0);
    u_xlat6 = texture(sampler3D(_VolumeNoise, sampler_VolumeNoise), u_xlat6.xyz);
    u_xlat26 = dot(u_xlat6, uintBitsToFloat(ImmCB_0[u_xlati4.y]));
    u_xlat6.xyz = u_xlat5.xyz * vec3(16.0, 16.0, 16.0);
    u_xlat6 = texture(sampler3D(_VolumeNoise, sampler_VolumeNoise), u_xlat6.xyz);
    u_xlat27 = dot(u_xlat6, uintBitsToFloat(ImmCB_0[u_xlati4.z]));
    u_xlat4.xyz = u_xlat5.xyz * vec3(256.0, 256.0, 256.0);
    u_xlat5 = texture(sampler3D(_VolumeNoise, sampler_VolumeNoise), u_xlat4.xyz);
    u_xlat4.x = dot(u_xlat5, uintBitsToFloat(ImmCB_0[u_xlati4.w]));
    u_xlat25 = u_xlat26 * 0.5 + u_xlat25;
    u_xlat25 = u_xlat27 * 0.25 + u_xlat25;
    u_xlat25 = u_xlat4.x * 0.125 + u_xlat25;
    u_xlat25 = u_xlat25 * 0.533333361;
    u_xlat4 = texture(sampler2D(_AlbedoRamp1, sampler_AlbedoRamp1), vec2(u_xlat25));
    u_xlat5 = texture(sampler2D(_AlbedoRamp2, sampler_AlbedoRamp2), vec2(u_xlat25));
    u_xlat5 = (-u_xlat4) + u_xlat5;
    u_xlat4 = vs_COLOR0.wwww * u_xlat5 + u_xlat4;
    u_xlat5.xyz = vs_TEXCOORD1.yyy * unity_WorldToLight[1].xyz;
    u_xlat5.xyz = unity_WorldToLight[0].xyz * vs_TEXCOORD1.xxx + u_xlat5.xyz;
    u_xlat5.xyz = unity_WorldToLight[2].xyz * vs_TEXCOORD1.zzz + u_xlat5.xyz;
    u_xlat5.xyz = u_xlat5.xyz + unity_WorldToLight[3].xyz;
    u_xlat6.x = unity_MatrixV[0].z;
    u_xlat6.y = unity_MatrixV[1].z;
    u_xlat6.z = unity_MatrixV[2].z;
    u_xlat25 = dot(u_xlat2.xyz, u_xlat6.xyz);
    u_xlat2.xyz = vs_TEXCOORD1.xyz + (-unity_ShadowFadeCenterAndType.xyz);
    u_xlat2.x = dot(u_xlat2.xyz, u_xlat2.xyz);
    u_xlat2.x = sqrt(u_xlat2.x);
    u_xlat2.x = (-u_xlat25) + u_xlat2.x;
    u_xlat25 = unity_ShadowFadeCenterAndType.w * u_xlat2.x + u_xlat25;
    u_xlat25 = u_xlat25 * _LightShadowData.z + _LightShadowData.w;
    u_xlat25 = clamp(u_xlat25, 0.0, 1.0);
    u_xlatb2 = unity_ProbeVolumeParams.x==1.0;
    if(u_xlatb2){
        u_xlatb2 = unity_ProbeVolumeParams.y==1.0;
        u_xlat10.xyz = vs_TEXCOORD1.yyy * unity_ProbeVolumeWorldToObject[1].xyz;
        u_xlat10.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD1.xxx + u_xlat10.xyz;
        u_xlat10.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD1.zzz + u_xlat10.xyz;
        u_xlat10.xyz = u_xlat10.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
        u_xlat2.xyz = (bool(u_xlatb2)) ? u_xlat10.xyz : vs_TEXCOORD1.xyz;
        u_xlat2.xyz = u_xlat2.xyz + (-unity_ProbeVolumeMin.xyz);
        u_xlat2.yzw = u_xlat2.xyz * unity_ProbeVolumeSizeInv.xyz;
        u_xlat10.x = u_xlat2.y * 0.25 + 0.75;
        u_xlat27 = unity_ProbeVolumeParams.z * 0.5 + 0.75;
        u_xlat2.x = max(u_xlat10.x, u_xlat27);
        u_xlat2 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat2.xzw);
    } else {
        u_xlat2.x = float(1.0);
        u_xlat2.y = float(1.0);
        u_xlat2.z = float(1.0);
        u_xlat2.w = float(1.0);
    }
    u_xlat2.x = dot(u_xlat2, unity_OcclusionMaskSelector);
    u_xlat2.x = clamp(u_xlat2.x, 0.0, 1.0);
    u_xlatb10 = u_xlat25<0.99000001;
    if(u_xlatb10){
        u_xlat10.xyz = vs_TEXCOORD1.xyz + (-_LightPositionRange.xyz);
        u_xlat27 = max(abs(u_xlat10.y), abs(u_xlat10.x));
        u_xlat27 = max(abs(u_xlat10.z), u_xlat27);
        u_xlat27 = u_xlat27 + (-_LightProjectionParams.z);
        u_xlat27 = max(u_xlat27, 9.99999975e-06);
        u_xlat27 = u_xlat27 * _LightProjectionParams.w;
        u_xlat27 = _LightProjectionParams.y / u_xlat27;
        u_xlat27 = u_xlat27 + (-_LightProjectionParams.x);
        u_xlat27 = (-u_xlat27) + 1.0;
        u_xlat6.xyz = u_xlat10.xyz + vec3(0.0078125, 0.0078125, 0.0078125);
        vec4 txVec0 = vec4(u_xlat6.xyz,u_xlat27);
        u_xlat6.x = texture(samplerCubeShadow(_ShadowMapTexture, sampler_ShadowMapTexture), txVec0);
        u_xlat7.xyz = u_xlat10.xyz + vec3(-0.0078125, -0.0078125, 0.0078125);
        vec4 txVec1 = vec4(u_xlat7.xyz,u_xlat27);
        u_xlat6.y = texture(samplerCubeShadow(_ShadowMapTexture, sampler_ShadowMapTexture), txVec1);
        u_xlat7.xyz = u_xlat10.xyz + vec3(-0.0078125, 0.0078125, -0.0078125);
        vec4 txVec2 = vec4(u_xlat7.xyz,u_xlat27);
        u_xlat6.z = texture(samplerCubeShadow(_ShadowMapTexture, sampler_ShadowMapTexture), txVec2);
        u_xlat10.xyz = u_xlat10.xyz + vec3(0.0078125, -0.0078125, -0.0078125);
        vec4 txVec3 = vec4(u_xlat10.xyz,u_xlat27);
        u_xlat6.w = texture(samplerCubeShadow(_ShadowMapTexture, sampler_ShadowMapTexture), txVec3);
        u_xlat10.x = dot(u_xlat6, vec4(0.25, 0.25, 0.25, 0.25));
        u_xlat18 = (-_LightShadowData.x) + 1.0;
        u_xlat10.x = u_xlat10.x * u_xlat18 + _LightShadowData.x;
    } else {
        u_xlat10.x = 1.0;
    }
    u_xlat2.x = (-u_xlat10.x) + u_xlat2.x;
    u_xlat25 = u_xlat25 * u_xlat2.x + u_xlat10.x;
    u_xlat2.x = dot(u_xlat5.xyz, u_xlat5.xyz);
    u_xlat2.x = texture(sampler2D(_LightTexture0, sampler_LightTexture0), u_xlat2.xx).x;
    u_xlat25 = u_xlat25 * u_xlat2.x;
    u_xlat2.xyz = vec3(u_xlat25) * _LightColor0.xyz;
    u_xlat25 = dot(vs_TEXCOORD0.xyz, vs_TEXCOORD0.xyz);
    u_xlat25 = inversesqrt(u_xlat25);
    u_xlat5.xyz = vec3(u_xlat25) * vs_TEXCOORD0.xyz;
    u_xlat6.xyz = u_xlat4.xyz + vec3(-0.0399999991, -0.0399999991, -0.0399999991);
    u_xlat6.xyz = vec3(vec3(_Metallic, _Metallic, _Metallic)) * u_xlat6.xyz + vec3(0.0399999991, 0.0399999991, 0.0399999991);
    u_xlat25 = (-_Metallic) * 0.959999979 + 0.959999979;
    u_xlat4.xyz = vec3(u_xlat25) * u_xlat4.xyz;
    u_xlat25 = (-_Glossiness) * u_xlat4.w + 1.0;
    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat24) + u_xlat3.xyz;
    u_xlat24 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat24 = max(u_xlat24, 0.00100000005);
    u_xlat24 = inversesqrt(u_xlat24);
    u_xlat0.xyz = vec3(u_xlat24) * u_xlat0.xyz;
    u_xlat24 = dot(u_xlat5.xyz, u_xlat3.xyz);
    u_xlat26 = dot(u_xlat5.xyz, u_xlat1.xyz);
    u_xlat26 = clamp(u_xlat26, 0.0, 1.0);
    u_xlat3.x = dot(u_xlat5.xyz, u_xlat0.xyz);
    u_xlat3.x = clamp(u_xlat3.x, 0.0, 1.0);
    u_xlat0.x = dot(u_xlat1.xyz, u_xlat0.xyz);
    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
    u_xlat8.x = u_xlat0.x * u_xlat0.x;
    u_xlat8.x = dot(u_xlat8.xx, vec2(u_xlat25));
    u_xlat8.x = u_xlat8.x + -0.5;
    u_xlat16 = (-u_xlat26) + 1.0;
    u_xlat1.x = u_xlat16 * u_xlat16;
    u_xlat1.x = u_xlat1.x * u_xlat1.x;
    u_xlat16 = u_xlat16 * u_xlat1.x;
    u_xlat16 = u_xlat8.x * u_xlat16 + 1.0;
    u_xlat1.x = -abs(u_xlat24) + 1.0;
    u_xlat9 = u_xlat1.x * u_xlat1.x;
    u_xlat9 = u_xlat9 * u_xlat9;
    u_xlat1.x = u_xlat1.x * u_xlat9;
    u_xlat8.x = u_xlat8.x * u_xlat1.x + 1.0;
    u_xlat8.x = u_xlat8.x * u_xlat16;
    u_xlat16 = u_xlat25 * u_xlat25;
    u_xlat16 = max(u_xlat16, 0.00200000009);
    u_xlat1.x = (-u_xlat16) + 1.0;
    u_xlat9 = abs(u_xlat24) * u_xlat1.x + u_xlat16;
    u_xlat1.x = u_xlat26 * u_xlat1.x + u_xlat16;
    u_xlat24 = abs(u_xlat24) * u_xlat1.x;
    u_xlat24 = u_xlat26 * u_xlat9 + u_xlat24;
    u_xlat24 = u_xlat24 + 9.99999975e-06;
    u_xlat24 = 0.5 / u_xlat24;
    u_xlat16 = u_xlat16 * u_xlat16;
    u_xlat1.x = u_xlat3.x * u_xlat16 + (-u_xlat3.x);
    u_xlat1.x = u_xlat1.x * u_xlat3.x + 1.0;
    u_xlat16 = u_xlat16 * 0.318309873;
    u_xlat1.x = u_xlat1.x * u_xlat1.x + 1.00000001e-07;
    u_xlat16 = u_xlat16 / u_xlat1.x;
    u_xlat8.y = u_xlat16 * u_xlat24;
    u_xlat8.xy = vec2(u_xlat26) * u_xlat8.xy;
    u_xlat16 = u_xlat8.y * 3.14159274;
    u_xlat16 = max(u_xlat16, 0.0);
    u_xlat24 = dot(u_xlat6.xyz, u_xlat6.xyz);
    u_xlatb24 = u_xlat24!=0.0;
    u_xlat24 = u_xlatb24 ? 1.0 : float(0.0);
    u_xlat16 = u_xlat24 * u_xlat16;
    u_xlat1.xyz = u_xlat8.xxx * u_xlat2.xyz;
    u_xlat8.xyz = u_xlat2.xyz * vec3(u_xlat16);
    u_xlat0.x = (-u_xlat0.x) + 1.0;
    u_xlat25 = u_xlat0.x * u_xlat0.x;
    u_xlat25 = u_xlat25 * u_xlat25;
    u_xlat0.x = u_xlat0.x * u_xlat25;
    u_xlat2.xyz = (-u_xlat6.xyz) + vec3(1.0, 1.0, 1.0);
    u_xlat2.xyz = u_xlat2.xyz * u_xlat0.xxx + u_xlat6.xyz;
    u_xlat0.xyz = u_xlat8.xyz * u_xlat2.xyz;
    u_xlat0.xyz = u_xlat4.xyz * u_xlat1.xyz + u_xlat0.xyz;
    u_xlat24 = vs_TEXCOORD4 / _ProjectionParams.y;
    u_xlat24 = (-u_xlat24) + 1.0;
    u_xlat24 = u_xlat24 * _ProjectionParams.z;
    u_xlat24 = max(u_xlat24, 0.0);
    u_xlat24 = u_xlat24 * unity_FogParams.x;
    u_xlat24 = u_xlat24 * (-u_xlat24);
    u_xlat24 = exp2(u_xlat24);
    SV_Target0.xyz = u_xlat0.xyz * vec3(u_xlat24);
    SV_Target0.w = 1.0;
    return;
}

