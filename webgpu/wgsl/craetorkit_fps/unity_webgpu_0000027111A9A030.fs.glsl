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
	vec4 unity_SHAr;
	vec4 unity_SHAg;
	vec4 unity_SHAb;
	vec4 unity_OcclusionMaskSelector;
	vec4 _LightShadowData;
	vec4 unity_ShadowFadeCenterAndType;
	mat4x4 unity_MatrixV;
	vec4 unity_SpecCube0_BoxMax;
	vec4 unity_SpecCube0_BoxMin;
	vec4 unity_SpecCube0_ProbePosition;
	vec4 unity_SpecCube0_HDR;
	vec4 unity_SpecCube1_BoxMax;
	vec4 unity_SpecCube1_BoxMin;
	vec4 unity_SpecCube1_ProbePosition;
	vec4 unity_SpecCube1_HDR;
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
layout(set = 0, binding = 3) uniform mediump texture2D _ShadowMapTexture;
layout(set = 0, binding = 4) uniform mediump textureCube unity_SpecCube0;
layout(set = 0, binding = 5) uniform mediump textureCube unity_SpecCube1;
layout(set = 0, binding = 6) uniform highp texture3D unity_ProbeVolumeSH;
layout(location = 0) in highp vec3 vs_TEXCOORD0;
layout(location = 1) in highp vec3 vs_TEXCOORD1;
layout(location = 2) in highp vec4 vs_COLOR0;
layout(location = 3) in highp vec3 vs_TEXCOORD2;
layout(location = 4) in highp vec4 vs_TEXCOORD4;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 7) uniform mediump  sampler samplerunity_SpecCube0;
layout(set = 0, binding = 8) uniform highp  sampler samplerunity_ProbeVolumeSH;
layout(set = 0, binding = 9) uniform mediump  sampler sampler_ShadowMapTexture;
layout(set = 0, binding = 10) uniform mediump  sampler sampler_AlbedoRamp1;
layout(set = 0, binding = 11) uniform mediump  sampler sampler_AlbedoRamp2;
layout(set = 0, binding = 12) uniform mediump  sampler sampler_VolumeNoise;
void main()
{
vec4 u_xlat0;
vec4 u_xlat1;
bool u_xlatb1;
vec4 u_xlat2;
ivec4 u_xlati2;
vec4 u_xlat3;
bool u_xlatb3;
vec4 u_xlat4;
vec3 u_xlat5;
vec4 u_xlat6;
vec4 u_xlat7;
vec4 u_xlat8;
vec4 u_xlat9;
bvec3 u_xlatb9;
vec3 u_xlat10;
bvec3 u_xlatb11;
vec3 u_xlat12;
float u_xlat13;
float u_xlat14;
vec3 u_xlat15;
bool u_xlatb15;
float u_xlat24;
float u_xlat25;
float u_xlat26;
vec2 u_xlat27;
float u_xlat36;
float u_xlat37;
bool u_xlatb37;
float u_xlat40;
float u_xlat41;
bool u_xlatb41;
    u_xlat0.xyz = (-vs_TEXCOORD1.xyz) + _WorldSpaceCameraPos.xyz;
    u_xlat36 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat36 = inversesqrt(u_xlat36);
    u_xlat1.xyz = vec3(u_xlat36) * u_xlat0.xyz;
    u_xlati2 = min(_OctaveIndex, ivec4(3, 3, 3, 3));
    u_xlat3.xyz = vs_TEXCOORD1.xyz * vec3(vec3(_Scale, _Scale, _Scale));
    u_xlat4 = texture(sampler3D(_VolumeNoise, sampler_VolumeNoise), u_xlat3.xyz);
    u_xlat37 = dot(u_xlat4, uintBitsToFloat(ImmCB_0[u_xlati2.x]));
    u_xlat4.xyz = u_xlat3.xyz * vec3(4.0, 4.0, 4.0);
    u_xlat4 = texture(sampler3D(_VolumeNoise, sampler_VolumeNoise), u_xlat4.xyz);
    u_xlat2.x = dot(u_xlat4, uintBitsToFloat(ImmCB_0[u_xlati2.y]));
    u_xlat4.xyz = u_xlat3.xyz * vec3(16.0, 16.0, 16.0);
    u_xlat4 = texture(sampler3D(_VolumeNoise, sampler_VolumeNoise), u_xlat4.xyz);
    u_xlat14 = dot(u_xlat4, uintBitsToFloat(ImmCB_0[u_xlati2.z]));
    u_xlat3.xyz = u_xlat3.xyz * vec3(256.0, 256.0, 256.0);
    u_xlat3 = texture(sampler3D(_VolumeNoise, sampler_VolumeNoise), u_xlat3.xyz);
    u_xlat26 = dot(u_xlat3, uintBitsToFloat(ImmCB_0[u_xlati2.w]));
    u_xlat37 = u_xlat2.x * 0.5 + u_xlat37;
    u_xlat37 = u_xlat14 * 0.25 + u_xlat37;
    u_xlat37 = u_xlat26 * 0.125 + u_xlat37;
    u_xlat37 = u_xlat37 * 0.533333361;
    u_xlat2 = texture(sampler2D(_AlbedoRamp1, sampler_AlbedoRamp1), vec2(u_xlat37));
    u_xlat3 = texture(sampler2D(_AlbedoRamp2, sampler_AlbedoRamp2), vec2(u_xlat37));
    u_xlat3 = (-u_xlat2) + u_xlat3;
    u_xlat2 = vs_COLOR0.wwww * u_xlat3 + u_xlat2;
    u_xlat3.x = unity_MatrixV[0].z;
    u_xlat3.y = unity_MatrixV[1].z;
    u_xlat3.z = unity_MatrixV[2].z;
    u_xlat37 = dot(u_xlat0.xyz, u_xlat3.xyz);
    u_xlat3.xyz = vs_TEXCOORD1.xyz + (-unity_ShadowFadeCenterAndType.xyz);
    u_xlat3.x = dot(u_xlat3.xyz, u_xlat3.xyz);
    u_xlat3.x = sqrt(u_xlat3.x);
    u_xlat3.x = (-u_xlat37) + u_xlat3.x;
    u_xlat37 = unity_ShadowFadeCenterAndType.w * u_xlat3.x + u_xlat37;
    u_xlat37 = u_xlat37 * _LightShadowData.z + _LightShadowData.w;
    u_xlat37 = clamp(u_xlat37, 0.0, 1.0);
    u_xlatb3 = unity_ProbeVolumeParams.x==1.0;
    if(u_xlatb3){
        u_xlatb15 = unity_ProbeVolumeParams.y==1.0;
        u_xlat4.xyz = vs_TEXCOORD1.yyy * unity_ProbeVolumeWorldToObject[1].xyz;
        u_xlat4.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD1.xxx + u_xlat4.xyz;
        u_xlat4.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD1.zzz + u_xlat4.xyz;
        u_xlat4.xyz = u_xlat4.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
        u_xlat15.xyz = (bool(u_xlatb15)) ? u_xlat4.xyz : vs_TEXCOORD1.xyz;
        u_xlat15.xyz = u_xlat15.xyz + (-unity_ProbeVolumeMin.xyz);
        u_xlat4.yzw = u_xlat15.xyz * unity_ProbeVolumeSizeInv.xyz;
        u_xlat15.x = u_xlat4.y * 0.25 + 0.75;
        u_xlat27.x = unity_ProbeVolumeParams.z * 0.5 + 0.75;
        u_xlat4.x = max(u_xlat27.x, u_xlat15.x);
        u_xlat4 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat4.xzw);
    } else {
        u_xlat4.x = float(1.0);
        u_xlat4.y = float(1.0);
        u_xlat4.z = float(1.0);
        u_xlat4.w = float(1.0);
    }
    u_xlat15.x = dot(u_xlat4, unity_OcclusionMaskSelector);
    u_xlat15.x = clamp(u_xlat15.x, 0.0, 1.0);
    u_xlat27.xy = vs_TEXCOORD4.xy / vs_TEXCOORD4.ww;
    u_xlat27.x = texture(sampler2D(_ShadowMapTexture, sampler_ShadowMapTexture), u_xlat27.xy).x;
    u_xlat15.x = (-u_xlat27.x) + u_xlat15.x;
    u_xlat37 = u_xlat37 * u_xlat15.x + u_xlat27.x;
    u_xlat15.x = (-_Glossiness) * u_xlat2.w + 1.0;
    u_xlat27.x = dot((-u_xlat1.xyz), vs_TEXCOORD0.xyz);
    u_xlat27.x = u_xlat27.x + u_xlat27.x;
    u_xlat4.xyz = vs_TEXCOORD0.xyz * (-u_xlat27.xxx) + (-u_xlat1.xyz);
    u_xlat5.xyz = vec3(u_xlat37) * _LightColor0.xyz;
    if(u_xlatb3){
        u_xlatb37 = unity_ProbeVolumeParams.y==1.0;
        u_xlat3.xzw = vs_TEXCOORD1.yyy * unity_ProbeVolumeWorldToObject[1].xyz;
        u_xlat3.xzw = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD1.xxx + u_xlat3.xzw;
        u_xlat3.xzw = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD1.zzz + u_xlat3.xzw;
        u_xlat3.xzw = u_xlat3.xzw + unity_ProbeVolumeWorldToObject[3].xyz;
        u_xlat3.xzw = (bool(u_xlatb37)) ? u_xlat3.xzw : vs_TEXCOORD1.xyz;
        u_xlat3.xzw = u_xlat3.xzw + (-unity_ProbeVolumeMin.xyz);
        u_xlat6.yzw = u_xlat3.xzw * unity_ProbeVolumeSizeInv.xyz;
        u_xlat37 = u_xlat6.y * 0.25;
        u_xlat3.x = unity_ProbeVolumeParams.z * 0.5;
        u_xlat27.x = (-unity_ProbeVolumeParams.z) * 0.5 + 0.25;
        u_xlat37 = max(u_xlat37, u_xlat3.x);
        u_xlat6.x = min(u_xlat27.x, u_xlat37);
        u_xlat7 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat6.xzw);
        u_xlat3.xzw = u_xlat6.xzw + vec3(0.25, 0.0, 0.0);
        u_xlat8 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat3.xzw);
        u_xlat3.xzw = u_xlat6.xzw + vec3(0.5, 0.0, 0.0);
        u_xlat6 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat3.xzw);
        u_xlat9.xyz = vs_TEXCOORD0.xyz;
        u_xlat9.w = 1.0;
        u_xlat7.x = dot(u_xlat7, u_xlat9);
        u_xlat7.y = dot(u_xlat8, u_xlat9);
        u_xlat7.z = dot(u_xlat6, u_xlat9);
    } else {
        u_xlat6.xyz = vs_TEXCOORD0.xyz;
        u_xlat6.w = 1.0;
        u_xlat7.x = dot(unity_SHAr, u_xlat6);
        u_xlat7.y = dot(unity_SHAg, u_xlat6);
        u_xlat7.z = dot(unity_SHAb, u_xlat6);
    }
    u_xlat3.xzw = u_xlat7.xyz + vs_TEXCOORD2.xyz;
    u_xlat3.xzw = max(u_xlat3.xzw, vec3(0.0, 0.0, 0.0));
    u_xlatb37 = 0.0<unity_SpecCube0_ProbePosition.w;
    if(u_xlatb37){
        u_xlat37 = dot(u_xlat4.xyz, u_xlat4.xyz);
        u_xlat37 = inversesqrt(u_xlat37);
        u_xlat6.xyz = vec3(u_xlat37) * u_xlat4.xyz;
        u_xlat7.xyz = (-vs_TEXCOORD1.xyz) + unity_SpecCube0_BoxMax.xyz;
        u_xlat7.xyz = u_xlat7.xyz / u_xlat6.xyz;
        u_xlat8.xyz = (-vs_TEXCOORD1.xyz) + unity_SpecCube0_BoxMin.xyz;
        u_xlat8.xyz = u_xlat8.xyz / u_xlat6.xyz;
        u_xlatb9.xyz = lessThan(vec4(0.0, 0.0, 0.0, 0.0), u_xlat6.xyzx).xyz;
        {
            vec4 hlslcc_movcTemp = u_xlat7;
            hlslcc_movcTemp.x = (u_xlatb9.x) ? u_xlat7.x : u_xlat8.x;
            hlslcc_movcTemp.y = (u_xlatb9.y) ? u_xlat7.y : u_xlat8.y;
            hlslcc_movcTemp.z = (u_xlatb9.z) ? u_xlat7.z : u_xlat8.z;
            u_xlat7 = hlslcc_movcTemp;
        }
        u_xlat37 = min(u_xlat7.y, u_xlat7.x);
        u_xlat37 = min(u_xlat7.z, u_xlat37);
        u_xlat7.xyz = vs_TEXCOORD1.xyz + (-unity_SpecCube0_ProbePosition.xyz);
        u_xlat6.xyz = u_xlat6.xyz * vec3(u_xlat37) + u_xlat7.xyz;
    } else {
        u_xlat6.xyz = u_xlat4.xyz;
    }
    u_xlat37 = (-u_xlat15.x) * 0.699999988 + 1.70000005;
    u_xlat37 = u_xlat37 * u_xlat15.x;
    u_xlat37 = u_xlat37 * 6.0;
    u_xlat6 = textureLod(samplerCube(unity_SpecCube0, samplerunity_SpecCube0), u_xlat6.xyz, u_xlat37);
    u_xlat40 = u_xlat6.w + -1.0;
    u_xlat40 = unity_SpecCube0_HDR.w * u_xlat40 + 1.0;
    u_xlat40 = log2(u_xlat40);
    u_xlat40 = u_xlat40 * unity_SpecCube0_HDR.y;
    u_xlat40 = exp2(u_xlat40);
    u_xlat40 = u_xlat40 * unity_SpecCube0_HDR.x;
    u_xlat7.xyz = u_xlat6.xyz * vec3(u_xlat40);
    u_xlatb41 = unity_SpecCube0_BoxMin.w<0.999989986;
    if(u_xlatb41){
        u_xlatb41 = 0.0<unity_SpecCube1_ProbePosition.w;
        if(u_xlatb41){
            u_xlat41 = dot(u_xlat4.xyz, u_xlat4.xyz);
            u_xlat41 = inversesqrt(u_xlat41);
            u_xlat8.xyz = u_xlat4.xyz * vec3(u_xlat41);
            u_xlat9.xyz = (-vs_TEXCOORD1.xyz) + unity_SpecCube1_BoxMax.xyz;
            u_xlat9.xyz = u_xlat9.xyz / u_xlat8.xyz;
            u_xlat10.xyz = (-vs_TEXCOORD1.xyz) + unity_SpecCube1_BoxMin.xyz;
            u_xlat10.xyz = u_xlat10.xyz / u_xlat8.xyz;
            u_xlatb11.xyz = lessThan(vec4(0.0, 0.0, 0.0, 0.0), u_xlat8.xyzx).xyz;
            {
                vec4 hlslcc_movcTemp = u_xlat9;
                hlslcc_movcTemp.x = (u_xlatb11.x) ? u_xlat9.x : u_xlat10.x;
                hlslcc_movcTemp.y = (u_xlatb11.y) ? u_xlat9.y : u_xlat10.y;
                hlslcc_movcTemp.z = (u_xlatb11.z) ? u_xlat9.z : u_xlat10.z;
                u_xlat9 = hlslcc_movcTemp;
            }
            u_xlat41 = min(u_xlat9.y, u_xlat9.x);
            u_xlat41 = min(u_xlat9.z, u_xlat41);
            u_xlat9.xyz = vs_TEXCOORD1.xyz + (-unity_SpecCube1_ProbePosition.xyz);
            u_xlat4.xyz = u_xlat8.xyz * vec3(u_xlat41) + u_xlat9.xyz;
        }
        u_xlat8 = textureLod(samplerCube(unity_SpecCube1, samplerunity_SpecCube0), u_xlat4.xyz, u_xlat37);
        u_xlat37 = u_xlat8.w + -1.0;
        u_xlat37 = unity_SpecCube1_HDR.w * u_xlat37 + 1.0;
        u_xlat37 = log2(u_xlat37);
        u_xlat37 = u_xlat37 * unity_SpecCube1_HDR.y;
        u_xlat37 = exp2(u_xlat37);
        u_xlat37 = u_xlat37 * unity_SpecCube1_HDR.x;
        u_xlat4.xyz = u_xlat8.xyz * vec3(u_xlat37);
        u_xlat6.xyz = vec3(u_xlat40) * u_xlat6.xyz + (-u_xlat4.xyz);
        u_xlat7.xyz = unity_SpecCube0_BoxMin.www * u_xlat6.xyz + u_xlat4.xyz;
    }
    u_xlat37 = dot(vs_TEXCOORD0.xyz, vs_TEXCOORD0.xyz);
    u_xlat37 = inversesqrt(u_xlat37);
    u_xlat4.xyz = vec3(u_xlat37) * vs_TEXCOORD0.xyz;
    u_xlat6.xyz = u_xlat2.xyz + vec3(-0.0399999991, -0.0399999991, -0.0399999991);
    u_xlat6.xyz = vec3(vec3(_Metallic, _Metallic, _Metallic)) * u_xlat6.xyz + vec3(0.0399999991, 0.0399999991, 0.0399999991);
    u_xlat37 = (-_Metallic) * 0.959999979 + 0.959999979;
    u_xlat2.xyz = vec3(u_xlat37) * u_xlat2.xyz;
    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat36) + _WorldSpaceLightPos0.xyz;
    u_xlat36 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat36 = max(u_xlat36, 0.00100000005);
    u_xlat36 = inversesqrt(u_xlat36);
    u_xlat0.xyz = vec3(u_xlat36) * u_xlat0.xyz;
    u_xlat36 = dot(u_xlat4.xyz, u_xlat1.xyz);
    u_xlat1.x = dot(u_xlat4.xyz, _WorldSpaceLightPos0.xyz);
    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
    u_xlat13 = dot(u_xlat4.xyz, u_xlat0.xyz);
    u_xlat13 = clamp(u_xlat13, 0.0, 1.0);
    u_xlat0.x = dot(_WorldSpaceLightPos0.xyz, u_xlat0.xyz);
    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
    u_xlat12.x = u_xlat0.x * u_xlat0.x;
    u_xlat12.x = dot(u_xlat12.xx, u_xlat15.xx);
    u_xlat12.x = u_xlat12.x + -0.5;
    u_xlat24 = (-u_xlat1.x) + 1.0;
    u_xlat25 = u_xlat24 * u_xlat24;
    u_xlat25 = u_xlat25 * u_xlat25;
    u_xlat24 = u_xlat24 * u_xlat25;
    u_xlat24 = u_xlat12.x * u_xlat24 + 1.0;
    u_xlat25 = -abs(u_xlat36) + 1.0;
    u_xlat4.x = u_xlat25 * u_xlat25;
    u_xlat4.x = u_xlat4.x * u_xlat4.x;
    u_xlat25 = u_xlat25 * u_xlat4.x;
    u_xlat12.x = u_xlat12.x * u_xlat25 + 1.0;
    u_xlat12.x = u_xlat12.x * u_xlat24;
    u_xlat24 = u_xlat15.x * u_xlat15.x;
    u_xlat24 = max(u_xlat24, 0.00200000009);
    u_xlat15.x = (-u_xlat24) + 1.0;
    u_xlat4.x = abs(u_xlat36) * u_xlat15.x + u_xlat24;
    u_xlat15.x = u_xlat1.x * u_xlat15.x + u_xlat24;
    u_xlat36 = abs(u_xlat36) * u_xlat15.x;
    u_xlat36 = u_xlat1.x * u_xlat4.x + u_xlat36;
    u_xlat36 = u_xlat36 + 9.99999975e-06;
    u_xlat36 = 0.5 / u_xlat36;
    u_xlat15.x = u_xlat24 * u_xlat24;
    u_xlat4.x = u_xlat13 * u_xlat15.x + (-u_xlat13);
    u_xlat13 = u_xlat4.x * u_xlat13 + 1.0;
    u_xlat15.x = u_xlat15.x * 0.318309873;
    u_xlat13 = u_xlat13 * u_xlat13 + 1.00000001e-07;
    u_xlat13 = u_xlat15.x / u_xlat13;
    u_xlat12.z = u_xlat36 * u_xlat13;
    u_xlat12.xz = u_xlat1.xx * u_xlat12.xz;
    u_xlat36 = u_xlat12.z * 3.14159274;
    u_xlat36 = max(u_xlat36, 0.0);
    u_xlat24 = u_xlat24 * u_xlat24 + 1.0;
    u_xlat24 = float(1.0) / u_xlat24;
    u_xlat1.x = dot(u_xlat6.xyz, u_xlat6.xyz);
    u_xlatb1 = u_xlat1.x!=0.0;
    u_xlat1.x = u_xlatb1 ? 1.0 : float(0.0);
    u_xlat36 = u_xlat36 * u_xlat1.x;
    u_xlat1.x = _Glossiness * u_xlat2.w + (-u_xlat37);
    u_xlat1.x = u_xlat1.x + 1.0;
    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
    u_xlat3.xyz = u_xlat5.xyz * u_xlat12.xxx + u_xlat3.xzw;
    u_xlat4.xyz = u_xlat5.xyz * vec3(u_xlat36);
    u_xlat0.x = (-u_xlat0.x) + 1.0;
    u_xlat12.x = u_xlat0.x * u_xlat0.x;
    u_xlat12.x = u_xlat12.x * u_xlat12.x;
    u_xlat0.x = u_xlat0.x * u_xlat12.x;
    u_xlat5.xyz = (-u_xlat6.xyz) + vec3(1.0, 1.0, 1.0);
    u_xlat0.xyw = u_xlat5.xyz * u_xlat0.xxx + u_xlat6.xyz;
    u_xlat0.xyw = u_xlat0.xyw * u_xlat4.xyz;
    u_xlat0.xyw = u_xlat2.xyz * u_xlat3.xyz + u_xlat0.xyw;
    u_xlat2.xyz = u_xlat7.xyz * vec3(u_xlat24);
    u_xlat1.xyw = (-u_xlat6.xyz) + u_xlat1.xxx;
    u_xlat1.xyz = vec3(u_xlat25) * u_xlat1.xyw + u_xlat6.xyz;
    SV_Target0.xyz = u_xlat2.xyz * u_xlat1.xyz + u_xlat0.xyw;
    SV_Target0.w = 1.0;
    return;
}

