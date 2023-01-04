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
	vec4 _Color;
	float _Metallic;
	float _Glossiness;
	float _OcclusionStrength;
	vec4 _EmissionColor;
};
layout(set = 0, binding = 1) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 2) uniform mediump texture2D _ShadowMapTexture;
layout(set = 0, binding = 3) uniform mediump texture2D _OcclusionMap;
layout(set = 0, binding = 4) uniform mediump texture2D _EmissionMap;
layout(set = 0, binding = 5) uniform mediump textureCube unity_SpecCube0;
layout(set = 0, binding = 6) uniform mediump textureCube unity_SpecCube1;
layout(set = 0, binding = 7) uniform highp texture3D unity_ProbeVolumeSH;
layout(location = 0) in highp vec4 vs_TEXCOORD0;
layout(location = 1) in highp vec4 vs_TEXCOORD1;
layout(location = 2) in highp vec4 vs_TEXCOORD2;
layout(location = 3) in highp vec4 vs_TEXCOORD3;
layout(location = 4) in highp vec4 vs_TEXCOORD4;
layout(location = 5) in highp vec4 vs_TEXCOORD5;
layout(location = 6) in highp vec4 vs_TEXCOORD7;
layout(location = 0) out highp vec4 SV_Target0;
vec4 u_xlat0;
vec3 u_xlat1;
vec4 u_xlat2;
vec4 u_xlat3;
vec4 u_xlat4;
vec4 u_xlat5;
bool u_xlatb5;
vec3 u_xlat6;
vec3 u_xlat7;
vec4 u_xlat8;
vec4 u_xlat9;
vec4 u_xlat10;
vec3 u_xlat11;
vec3 u_xlat12;
bvec3 u_xlatb12;
vec3 u_xlat13;
bvec3 u_xlatb14;
vec3 u_xlat17;
float u_xlat18;
vec3 u_xlat20;
float u_xlat32;
float u_xlat33;
float u_xlat35;
float u_xlat45;
float u_xlat46;
float u_xlat47;
bool u_xlatb47;
float u_xlat48;
bool u_xlatb48;
float u_xlat49;
bool u_xlatb49;
layout(set = 0, binding = 8) uniform mediump  sampler samplerunity_SpecCube0;
layout(set = 0, binding = 9) uniform highp  sampler samplerunity_ProbeVolumeSH;
layout(set = 0, binding = 10) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 11) uniform mediump  sampler sampler_OcclusionMap;
layout(set = 0, binding = 12) uniform mediump  sampler sampler_EmissionMap;
layout(set = 0, binding = 13) uniform mediump  sampler sampler_ShadowMapTexture;
void main()
{
    u_xlat0 = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD0.xy);
    SV_Target0.w = u_xlat0.w * _Color.w;
    u_xlat1.xyz = u_xlat0.xyz * _Color.xyz;
    u_xlat0.xyz = _Color.xyz * u_xlat0.xyz + vec3(-0.0399999991, -0.0399999991, -0.0399999991);
    u_xlat0.xyz = vec3(vec3(_Metallic, _Metallic, _Metallic)) * u_xlat0.xyz + vec3(0.0399999991, 0.0399999991, 0.0399999991);
    u_xlat45 = (-_Metallic) * 0.959999979 + 0.959999979;
    u_xlat1.xyz = vec3(u_xlat45) * u_xlat1.xyz;
    u_xlat46 = dot(vs_TEXCOORD4.xyz, vs_TEXCOORD4.xyz);
    u_xlat46 = inversesqrt(u_xlat46);
    u_xlat2.xyz = vec3(u_xlat46) * vs_TEXCOORD4.xyz;
    u_xlat46 = dot(vs_TEXCOORD1.xyz, vs_TEXCOORD1.xyz);
    u_xlat46 = inversesqrt(u_xlat46);
    u_xlat3.xyz = vec3(u_xlat46) * vs_TEXCOORD1.xyz;
    u_xlat4.x = vs_TEXCOORD2.w;
    u_xlat4.y = vs_TEXCOORD3.w;
    u_xlat4.z = vs_TEXCOORD4.w;
    u_xlat5.xyz = (-u_xlat4.xyz) + _WorldSpaceCameraPos.xyz;
    u_xlat6.x = unity_MatrixV[0].z;
    u_xlat6.y = unity_MatrixV[1].z;
    u_xlat6.z = unity_MatrixV[2].z;
    u_xlat48 = dot(u_xlat5.xyz, u_xlat6.xyz);
    u_xlat5.xyz = u_xlat4.xyz + (-unity_ShadowFadeCenterAndType.xyz);
    u_xlat49 = dot(u_xlat5.xyz, u_xlat5.xyz);
    u_xlat49 = sqrt(u_xlat49);
    u_xlat49 = (-u_xlat48) + u_xlat49;
    u_xlat48 = unity_ShadowFadeCenterAndType.w * u_xlat49 + u_xlat48;
    u_xlat48 = u_xlat48 * _LightShadowData.z + _LightShadowData.w;
    u_xlat48 = clamp(u_xlat48, 0.0, 1.0);
    u_xlatb49 = unity_ProbeVolumeParams.x==1.0;
    if(u_xlatb49){
        u_xlatb5 = unity_ProbeVolumeParams.y==1.0;
        u_xlat20.xyz = vs_TEXCOORD3.www * unity_ProbeVolumeWorldToObject[1].xyz;
        u_xlat20.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD2.www + u_xlat20.xyz;
        u_xlat20.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD4.www + u_xlat20.xyz;
        u_xlat20.xyz = u_xlat20.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
        u_xlat5.xyz = (bool(u_xlatb5)) ? u_xlat20.xyz : u_xlat4.xyz;
        u_xlat5.xyz = u_xlat5.xyz + (-unity_ProbeVolumeMin.xyz);
        u_xlat5.yzw = u_xlat5.xyz * unity_ProbeVolumeSizeInv.xyz;
        u_xlat20.x = u_xlat5.y * 0.25 + 0.75;
        u_xlat6.x = unity_ProbeVolumeParams.z * 0.5 + 0.75;
        u_xlat5.x = max(u_xlat20.x, u_xlat6.x);
        u_xlat5 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat5.xzw);
    } else {
        u_xlat5.x = float(1.0);
        u_xlat5.y = float(1.0);
        u_xlat5.z = float(1.0);
        u_xlat5.w = float(1.0);
    }
    u_xlat5.x = dot(u_xlat5, unity_OcclusionMaskSelector);
    u_xlat5.x = clamp(u_xlat5.x, 0.0, 1.0);
    u_xlat20.xy = vs_TEXCOORD7.xy / vs_TEXCOORD7.ww;
    u_xlat20.x = texture(sampler2D(_ShadowMapTexture, sampler_ShadowMapTexture), u_xlat20.xy).x;
    u_xlat5.x = (-u_xlat20.x) + u_xlat5.x;
    u_xlat48 = u_xlat48 * u_xlat5.x + u_xlat20.x;
    u_xlat5.x = texture(sampler2D(_OcclusionMap, sampler_OcclusionMap), vs_TEXCOORD0.xy).y;
    u_xlat20.x = (-_OcclusionStrength) + 1.0;
    u_xlat5.x = u_xlat5.x * _OcclusionStrength + u_xlat20.x;
    u_xlat20.x = (-_Glossiness) + 1.0;
    u_xlat35 = dot(u_xlat3.xyz, u_xlat2.xyz);
    u_xlat35 = u_xlat35 + u_xlat35;
    u_xlat6.xyz = u_xlat2.xyz * (-vec3(u_xlat35)) + u_xlat3.xyz;
    u_xlat7.xyz = vec3(u_xlat48) * _LightColor0.xyz;
    if(u_xlatb49){
        u_xlatb48 = unity_ProbeVolumeParams.y==1.0;
        u_xlat8.xyz = vs_TEXCOORD3.www * unity_ProbeVolumeWorldToObject[1].xyz;
        u_xlat8.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD2.www + u_xlat8.xyz;
        u_xlat8.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD4.www + u_xlat8.xyz;
        u_xlat8.xyz = u_xlat8.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
        u_xlat8.xyz = (bool(u_xlatb48)) ? u_xlat8.xyz : u_xlat4.xyz;
        u_xlat8.xyz = u_xlat8.xyz + (-unity_ProbeVolumeMin.xyz);
        u_xlat8.yzw = u_xlat8.xyz * unity_ProbeVolumeSizeInv.xyz;
        u_xlat48 = u_xlat8.y * 0.25;
        u_xlat49 = unity_ProbeVolumeParams.z * 0.5;
        u_xlat35 = (-unity_ProbeVolumeParams.z) * 0.5 + 0.25;
        u_xlat48 = max(u_xlat48, u_xlat49);
        u_xlat8.x = min(u_xlat35, u_xlat48);
        u_xlat9 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat8.xzw);
        u_xlat10.xyz = u_xlat8.xzw + vec3(0.25, 0.0, 0.0);
        u_xlat10 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat10.xyz);
        u_xlat8.xyz = u_xlat8.xzw + vec3(0.5, 0.0, 0.0);
        u_xlat8 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat8.xyz);
        u_xlat2.w = 1.0;
        u_xlat9.x = dot(u_xlat9, u_xlat2);
        u_xlat9.y = dot(u_xlat10, u_xlat2);
        u_xlat9.z = dot(u_xlat8, u_xlat2);
    } else {
        u_xlat2.w = 1.0;
        u_xlat9.x = dot(unity_SHAr, u_xlat2);
        u_xlat9.y = dot(unity_SHAg, u_xlat2);
        u_xlat9.z = dot(unity_SHAb, u_xlat2);
    }
    u_xlat8.xyz = u_xlat9.xyz + vs_TEXCOORD5.xyz;
    u_xlat8.xyz = max(u_xlat8.xyz, vec3(0.0, 0.0, 0.0));
    u_xlatb47 = 0.0<unity_SpecCube0_ProbePosition.w;
    if(u_xlatb47){
        u_xlat47 = dot(u_xlat6.xyz, u_xlat6.xyz);
        u_xlat47 = inversesqrt(u_xlat47);
        u_xlat9.xyz = vec3(u_xlat47) * u_xlat6.xyz;
        u_xlat10.xyz = (-u_xlat4.xyz) + unity_SpecCube0_BoxMax.xyz;
        u_xlat10.xyz = u_xlat10.xyz / u_xlat9.xyz;
        u_xlat11.xyz = (-u_xlat4.xyz) + unity_SpecCube0_BoxMin.xyz;
        u_xlat11.xyz = u_xlat11.xyz / u_xlat9.xyz;
        u_xlatb12.xyz = lessThan(vec4(0.0, 0.0, 0.0, 0.0), u_xlat9.xyzx).xyz;
        {
            vec4 hlslcc_movcTemp = u_xlat10;
            hlslcc_movcTemp.x = (u_xlatb12.x) ? u_xlat10.x : u_xlat11.x;
            hlslcc_movcTemp.y = (u_xlatb12.y) ? u_xlat10.y : u_xlat11.y;
            hlslcc_movcTemp.z = (u_xlatb12.z) ? u_xlat10.z : u_xlat11.z;
            u_xlat10 = hlslcc_movcTemp;
        }
        u_xlat47 = min(u_xlat10.y, u_xlat10.x);
        u_xlat47 = min(u_xlat10.z, u_xlat47);
        u_xlat10.xyz = u_xlat4.xyz + (-unity_SpecCube0_ProbePosition.xyz);
        u_xlat9.xyz = u_xlat9.xyz * vec3(u_xlat47) + u_xlat10.xyz;
    } else {
        u_xlat9.xyz = u_xlat6.xyz;
    }
    u_xlat47 = (-u_xlat20.x) * 0.699999988 + 1.70000005;
    u_xlat47 = u_xlat47 * u_xlat20.x;
    u_xlat47 = u_xlat47 * 6.0;
    u_xlat9 = textureLod(samplerCube(unity_SpecCube0, samplerunity_SpecCube0), u_xlat9.xyz, u_xlat47);
    u_xlat48 = u_xlat9.w + -1.0;
    u_xlat48 = unity_SpecCube0_HDR.w * u_xlat48 + 1.0;
    u_xlat48 = log2(u_xlat48);
    u_xlat48 = u_xlat48 * unity_SpecCube0_HDR.y;
    u_xlat48 = exp2(u_xlat48);
    u_xlat48 = u_xlat48 * unity_SpecCube0_HDR.x;
    u_xlat10.xyz = u_xlat9.xyz * vec3(u_xlat48);
    u_xlatb49 = unity_SpecCube0_BoxMin.w<0.999989986;
    if(u_xlatb49){
        u_xlatb49 = 0.0<unity_SpecCube1_ProbePosition.w;
        if(u_xlatb49){
            u_xlat49 = dot(u_xlat6.xyz, u_xlat6.xyz);
            u_xlat49 = inversesqrt(u_xlat49);
            u_xlat11.xyz = vec3(u_xlat49) * u_xlat6.xyz;
            u_xlat12.xyz = (-u_xlat4.xyz) + unity_SpecCube1_BoxMax.xyz;
            u_xlat12.xyz = u_xlat12.xyz / u_xlat11.xyz;
            u_xlat13.xyz = (-u_xlat4.xyz) + unity_SpecCube1_BoxMin.xyz;
            u_xlat13.xyz = u_xlat13.xyz / u_xlat11.xyz;
            u_xlatb14.xyz = lessThan(vec4(0.0, 0.0, 0.0, 0.0), u_xlat11.xyzx).xyz;
            {
                vec3 hlslcc_movcTemp = u_xlat12;
                hlslcc_movcTemp.x = (u_xlatb14.x) ? u_xlat12.x : u_xlat13.x;
                hlslcc_movcTemp.y = (u_xlatb14.y) ? u_xlat12.y : u_xlat13.y;
                hlslcc_movcTemp.z = (u_xlatb14.z) ? u_xlat12.z : u_xlat13.z;
                u_xlat12 = hlslcc_movcTemp;
            }
            u_xlat49 = min(u_xlat12.y, u_xlat12.x);
            u_xlat49 = min(u_xlat12.z, u_xlat49);
            u_xlat4.xyz = u_xlat4.xyz + (-unity_SpecCube1_ProbePosition.xyz);
            u_xlat6.xyz = u_xlat11.xyz * vec3(u_xlat49) + u_xlat4.xyz;
        }
        u_xlat4 = textureLod(samplerCube(unity_SpecCube1, samplerunity_SpecCube0), u_xlat6.xyz, u_xlat47);
        u_xlat47 = u_xlat4.w + -1.0;
        u_xlat47 = unity_SpecCube1_HDR.w * u_xlat47 + 1.0;
        u_xlat47 = log2(u_xlat47);
        u_xlat47 = u_xlat47 * unity_SpecCube1_HDR.y;
        u_xlat47 = exp2(u_xlat47);
        u_xlat47 = u_xlat47 * unity_SpecCube1_HDR.x;
        u_xlat4.xyz = u_xlat4.xyz * vec3(u_xlat47);
        u_xlat6.xyz = vec3(u_xlat48) * u_xlat9.xyz + (-u_xlat4.xyz);
        u_xlat10.xyz = unity_SpecCube0_BoxMin.www * u_xlat6.xyz + u_xlat4.xyz;
    }
    u_xlat4.xyz = u_xlat5.xxx * u_xlat10.xyz;
    u_xlat6.xyz = (-vs_TEXCOORD1.xyz) * vec3(u_xlat46) + _WorldSpaceLightPos0.xyz;
    u_xlat46 = dot(u_xlat6.xyz, u_xlat6.xyz);
    u_xlat46 = max(u_xlat46, 0.00100000005);
    u_xlat46 = inversesqrt(u_xlat46);
    u_xlat6.xyz = vec3(u_xlat46) * u_xlat6.xyz;
    u_xlat46 = dot(u_xlat2.xyz, (-u_xlat3.xyz));
    u_xlat47 = dot(u_xlat2.xyz, _WorldSpaceLightPos0.xyz);
    u_xlat47 = clamp(u_xlat47, 0.0, 1.0);
    u_xlat2.x = dot(u_xlat2.xyz, u_xlat6.xyz);
    u_xlat2.x = clamp(u_xlat2.x, 0.0, 1.0);
    u_xlat17.x = dot(_WorldSpaceLightPos0.xyz, u_xlat6.xyz);
    u_xlat17.x = clamp(u_xlat17.x, 0.0, 1.0);
    u_xlat32 = u_xlat17.x * u_xlat17.x;
    u_xlat32 = dot(vec2(u_xlat32), u_xlat20.xx);
    u_xlat32 = u_xlat32 + -0.5;
    u_xlat3.x = (-u_xlat47) + 1.0;
    u_xlat18 = u_xlat3.x * u_xlat3.x;
    u_xlat18 = u_xlat18 * u_xlat18;
    u_xlat3.x = u_xlat3.x * u_xlat18;
    u_xlat3.x = u_xlat32 * u_xlat3.x + 1.0;
    u_xlat18 = -abs(u_xlat46) + 1.0;
    u_xlat33 = u_xlat18 * u_xlat18;
    u_xlat33 = u_xlat33 * u_xlat33;
    u_xlat18 = u_xlat18 * u_xlat33;
    u_xlat32 = u_xlat32 * u_xlat18 + 1.0;
    u_xlat32 = u_xlat32 * u_xlat3.x;
    u_xlat32 = u_xlat47 * u_xlat32;
    u_xlat3.x = u_xlat20.x * u_xlat20.x;
    u_xlat3.x = max(u_xlat3.x, 0.00200000009);
    u_xlat33 = (-u_xlat3.x) + 1.0;
    u_xlat48 = abs(u_xlat46) * u_xlat33 + u_xlat3.x;
    u_xlat33 = u_xlat47 * u_xlat33 + u_xlat3.x;
    u_xlat46 = abs(u_xlat46) * u_xlat33;
    u_xlat46 = u_xlat47 * u_xlat48 + u_xlat46;
    u_xlat46 = u_xlat46 + 9.99999975e-06;
    u_xlat46 = 0.5 / u_xlat46;
    u_xlat33 = u_xlat3.x * u_xlat3.x;
    u_xlat48 = u_xlat2.x * u_xlat33 + (-u_xlat2.x);
    u_xlat2.x = u_xlat48 * u_xlat2.x + 1.0;
    u_xlat33 = u_xlat33 * 0.318309873;
    u_xlat2.x = u_xlat2.x * u_xlat2.x + 1.00000001e-07;
    u_xlat2.x = u_xlat33 / u_xlat2.x;
    u_xlat46 = u_xlat46 * u_xlat2.x;
    u_xlat46 = u_xlat47 * u_xlat46;
    u_xlat46 = u_xlat46 * 3.14159274;
    u_xlat46 = max(u_xlat46, 0.0);
    u_xlat2.x = u_xlat3.x * u_xlat3.x + 1.0;
    u_xlat2.x = float(1.0) / u_xlat2.x;
    u_xlat47 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlatb47 = u_xlat47!=0.0;
    u_xlat47 = u_xlatb47 ? 1.0 : float(0.0);
    u_xlat46 = u_xlat46 * u_xlat47;
    u_xlat45 = (-u_xlat45) + _Glossiness;
    u_xlat45 = u_xlat45 + 1.0;
    u_xlat45 = clamp(u_xlat45, 0.0, 1.0);
    u_xlat3.xzw = vec3(u_xlat32) * u_xlat7.xyz;
    u_xlat3.xzw = u_xlat8.xyz * u_xlat5.xxx + u_xlat3.xzw;
    u_xlat5.xyz = u_xlat7.xyz * vec3(u_xlat46);
    u_xlat46 = (-u_xlat17.x) + 1.0;
    u_xlat17.x = u_xlat46 * u_xlat46;
    u_xlat17.x = u_xlat17.x * u_xlat17.x;
    u_xlat46 = u_xlat46 * u_xlat17.x;
    u_xlat17.xyz = (-u_xlat0.xyz) + vec3(1.0, 1.0, 1.0);
    u_xlat17.xyz = u_xlat17.xyz * vec3(u_xlat46) + u_xlat0.xyz;
    u_xlat17.xyz = u_xlat17.xyz * u_xlat5.xyz;
    u_xlat1.xyz = u_xlat1.xyz * u_xlat3.xzw + u_xlat17.xyz;
    u_xlat2.xyz = u_xlat4.xyz * u_xlat2.xxx;
    u_xlat3.xzw = (-u_xlat0.xyz) + vec3(u_xlat45);
    u_xlat0.xyz = vec3(u_xlat18) * u_xlat3.xzw + u_xlat0.xyz;
    u_xlat0.xyz = u_xlat2.xyz * u_xlat0.xyz + u_xlat1.xyz;
    u_xlat1.xyz = texture(sampler2D(_EmissionMap, sampler_EmissionMap), vs_TEXCOORD0.xy).xyz;
    SV_Target0.xyz = u_xlat1.xyz * _EmissionColor.xyz + u_xlat0.xyz;
    return;
}

