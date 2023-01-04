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
	float _Cutoff;
	float _EdgeSize;
	vec4 _Color;
	vec4 _EdgeColor1;
	vec4 _Emission;
};
layout(set = 0, binding = 1) uniform mediump texture2D _Noise;
layout(set = 0, binding = 2) uniform mediump texture2D _MetallicSmooth;
layout(set = 0, binding = 3) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 4) uniform mediump texture2D _AO;
layout(set = 0, binding = 5) uniform mediump texture2D _Normal;
layout(set = 0, binding = 6) uniform mediump texture2D _ShadowMapTexture;
layout(set = 0, binding = 7) uniform mediump textureCube unity_SpecCube0;
layout(set = 0, binding = 8) uniform mediump textureCube unity_SpecCube1;
layout(set = 0, binding = 9) uniform highp texture3D unity_ProbeVolumeSH;
layout(location = 0) in highp vec4 vs_TEXCOORD0;
layout(location = 1) in highp vec4 vs_TEXCOORD1;
layout(location = 2) in highp vec4 vs_TEXCOORD2;
layout(location = 3) in highp vec4 vs_TEXCOORD3;
layout(location = 4) in highp vec4 vs_TEXCOORD6;
layout(location = 0) out highp vec4 SV_Target0;
vec4 u_xlat0;
vec3 u_xlat1;
vec4 u_xlat2;
bool u_xlatb2;
vec4 u_xlat3;
vec4 u_xlat4;
vec3 u_xlat5;
vec3 u_xlat6;
vec3 u_xlat7;
vec4 u_xlat8;
vec3 u_xlat9;
vec4 u_xlat10;
vec3 u_xlat11;
vec3 u_xlat12;
vec3 u_xlat13;
bvec3 u_xlatb13;
vec3 u_xlat14;
bvec3 u_xlatb15;
float u_xlat17;
float u_xlat18;
float u_xlat33;
float u_xlat34;
float u_xlat35;
float u_xlat48;
float u_xlat49;
bool u_xlatb49;
float u_xlat50;
bool u_xlatb50;
float u_xlat51;
float u_xlat52;
bool u_xlatb52;
layout(set = 0, binding = 10) uniform mediump  sampler samplerunity_SpecCube0;
layout(set = 0, binding = 11) uniform highp  sampler samplerunity_ProbeVolumeSH;
layout(set = 0, binding = 12) uniform mediump  sampler sampler_ShadowMapTexture;
layout(set = 0, binding = 13) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 14) uniform mediump  sampler sampler_Noise;
layout(set = 0, binding = 15) uniform mediump  sampler sampler_Normal;
layout(set = 0, binding = 16) uniform mediump  sampler sampler_MetallicSmooth;
layout(set = 0, binding = 17) uniform mediump  sampler sampler_AO;
void main()
{
    u_xlat0.x = vs_TEXCOORD1.w;
    u_xlat0.y = vs_TEXCOORD2.w;
    u_xlat0.z = vs_TEXCOORD3.w;
    u_xlat1.xyz = (-u_xlat0.xyz) + _WorldSpaceCameraPos.xyz;
    u_xlat48 = dot(u_xlat1.xyz, u_xlat1.xyz);
    u_xlat48 = inversesqrt(u_xlat48);
    u_xlat2.xyz = vec3(u_xlat48) * u_xlat1.xyz;
    u_xlat49 = texture(sampler2D(_Noise, sampler_Noise), vs_TEXCOORD0.xy).x;
    u_xlat3.xy = texture(sampler2D(_MetallicSmooth, sampler_MetallicSmooth), vs_TEXCOORD0.zw).xw;
    u_xlat49 = (-u_xlat49) + 1.0;
    u_xlat49 = u_xlat49 + (-_Cutoff);
    u_xlat50 = float(1.0) / (-_EdgeSize);
    u_xlat49 = u_xlat49 * u_xlat50;
    u_xlat49 = clamp(u_xlat49, 0.0, 1.0);
    u_xlat50 = u_xlat49 * -2.0 + 3.0;
    u_xlat49 = u_xlat49 * u_xlat49;
    u_xlat35 = u_xlat49 * u_xlat50;
    u_xlat4 = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD0.zw);
    u_xlat5.xyz = u_xlat4.xyz * _Color.xyz;
    u_xlat51 = texture(sampler2D(_AO, sampler_AO), vs_TEXCOORD0.zw).x;
    u_xlat6.xyz = vec3(u_xlat35) * _EdgeColor1.xyz;
    u_xlat6.xyz = u_xlat4.www * _Emission.xyz + u_xlat6.xyz;
    u_xlat7.xyz = texture(sampler2D(_Normal, sampler_Normal), vs_TEXCOORD0.zw).xyw;
    u_xlat7.x = u_xlat7.z * u_xlat7.x;
    u_xlat7.xy = u_xlat7.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat35 = dot(u_xlat7.xy, u_xlat7.xy);
    u_xlat35 = min(u_xlat35, 1.0);
    u_xlat35 = (-u_xlat35) + 1.0;
    u_xlat7.z = sqrt(u_xlat35);
    u_xlat3.x = u_xlat3.x * _Metallic;
    u_xlat49 = (-u_xlat50) * u_xlat49 + (-_Cutoff);
    u_xlat49 = u_xlat49 + 1.0;
    u_xlatb49 = u_xlat49<0.0;
    if(((int(u_xlatb49) * int(0xffffffffu)))!=0){discard;}
    u_xlat8.x = unity_MatrixV[0].z;
    u_xlat8.y = unity_MatrixV[1].z;
    u_xlat8.z = unity_MatrixV[2].z;
    u_xlat49 = dot(u_xlat1.xyz, u_xlat8.xyz);
    u_xlat8.xyz = u_xlat0.xyz + (-unity_ShadowFadeCenterAndType.xyz);
    u_xlat50 = dot(u_xlat8.xyz, u_xlat8.xyz);
    u_xlat50 = sqrt(u_xlat50);
    u_xlat50 = (-u_xlat49) + u_xlat50;
    u_xlat49 = unity_ShadowFadeCenterAndType.w * u_xlat50 + u_xlat49;
    u_xlat49 = u_xlat49 * _LightShadowData.z + _LightShadowData.w;
    u_xlat49 = clamp(u_xlat49, 0.0, 1.0);
    u_xlatb50 = unity_ProbeVolumeParams.x==1.0;
    if(u_xlatb50){
        u_xlatb50 = unity_ProbeVolumeParams.y==1.0;
        u_xlat8.xyz = vs_TEXCOORD2.www * unity_ProbeVolumeWorldToObject[1].xyz;
        u_xlat8.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD1.www + u_xlat8.xyz;
        u_xlat8.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD3.www + u_xlat8.xyz;
        u_xlat8.xyz = u_xlat8.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
        u_xlat8.xyz = (bool(u_xlatb50)) ? u_xlat8.xyz : u_xlat0.xyz;
        u_xlat8.xyz = u_xlat8.xyz + (-unity_ProbeVolumeMin.xyz);
        u_xlat8.yzw = u_xlat8.xyz * unity_ProbeVolumeSizeInv.xyz;
        u_xlat50 = u_xlat8.y * 0.25 + 0.75;
        u_xlat35 = unity_ProbeVolumeParams.z * 0.5 + 0.75;
        u_xlat8.x = max(u_xlat50, u_xlat35);
        u_xlat8 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat8.xzw);
    } else {
        u_xlat8.x = float(1.0);
        u_xlat8.y = float(1.0);
        u_xlat8.z = float(1.0);
        u_xlat8.w = float(1.0);
    }
    u_xlat50 = dot(u_xlat8, unity_OcclusionMaskSelector);
    u_xlat50 = clamp(u_xlat50, 0.0, 1.0);
    u_xlat8.xy = vs_TEXCOORD6.xy / vs_TEXCOORD6.ww;
    u_xlat35 = texture(sampler2D(_ShadowMapTexture, sampler_ShadowMapTexture), u_xlat8.xy).x;
    u_xlat50 = u_xlat50 + (-u_xlat35);
    u_xlat49 = u_xlat49 * u_xlat50 + u_xlat35;
    u_xlat8.x = dot(vs_TEXCOORD1.xyz, u_xlat7.xyz);
    u_xlat8.y = dot(vs_TEXCOORD2.xyz, u_xlat7.xyz);
    u_xlat8.z = dot(vs_TEXCOORD3.xyz, u_xlat7.xyz);
    u_xlat50 = dot(u_xlat8.xyz, u_xlat8.xyz);
    u_xlat50 = inversesqrt(u_xlat50);
    u_xlat7.xyz = vec3(u_xlat50) * u_xlat8.xyz;
    u_xlat50 = (-u_xlat3.y) * _Glossiness + 1.0;
    u_xlat35 = dot((-u_xlat2.xyz), u_xlat7.xyz);
    u_xlat35 = u_xlat35 + u_xlat35;
    u_xlat8.xyz = u_xlat7.xyz * (-vec3(u_xlat35)) + (-u_xlat2.xyz);
    u_xlat9.xyz = vec3(u_xlat49) * _LightColor0.xyz;
    u_xlatb49 = 0.0<unity_SpecCube0_ProbePosition.w;
    if(u_xlatb49){
        u_xlat49 = dot(u_xlat8.xyz, u_xlat8.xyz);
        u_xlat49 = inversesqrt(u_xlat49);
        u_xlat10.xyz = vec3(u_xlat49) * u_xlat8.xyz;
        u_xlat11.xyz = (-u_xlat0.xyz) + unity_SpecCube0_BoxMax.xyz;
        u_xlat11.xyz = u_xlat11.xyz / u_xlat10.xyz;
        u_xlat12.xyz = (-u_xlat0.xyz) + unity_SpecCube0_BoxMin.xyz;
        u_xlat12.xyz = u_xlat12.xyz / u_xlat10.xyz;
        u_xlatb13.xyz = lessThan(vec4(0.0, 0.0, 0.0, 0.0), u_xlat10.xyzx).xyz;
        {
            vec3 hlslcc_movcTemp = u_xlat11;
            hlslcc_movcTemp.x = (u_xlatb13.x) ? u_xlat11.x : u_xlat12.x;
            hlslcc_movcTemp.y = (u_xlatb13.y) ? u_xlat11.y : u_xlat12.y;
            hlslcc_movcTemp.z = (u_xlatb13.z) ? u_xlat11.z : u_xlat12.z;
            u_xlat11 = hlslcc_movcTemp;
        }
        u_xlat49 = min(u_xlat11.y, u_xlat11.x);
        u_xlat49 = min(u_xlat11.z, u_xlat49);
        u_xlat11.xyz = u_xlat0.xyz + (-unity_SpecCube0_ProbePosition.xyz);
        u_xlat10.xyz = u_xlat10.xyz * vec3(u_xlat49) + u_xlat11.xyz;
    } else {
        u_xlat10.xyz = u_xlat8.xyz;
    }
    u_xlat49 = (-u_xlat50) * 0.699999988 + 1.70000005;
    u_xlat49 = u_xlat49 * u_xlat50;
    u_xlat49 = u_xlat49 * 6.0;
    u_xlat10 = textureLod(samplerCube(unity_SpecCube0, samplerunity_SpecCube0), u_xlat10.xyz, u_xlat49);
    u_xlat35 = u_xlat10.w + -1.0;
    u_xlat35 = unity_SpecCube0_HDR.w * u_xlat35 + 1.0;
    u_xlat35 = log2(u_xlat35);
    u_xlat35 = u_xlat35 * unity_SpecCube0_HDR.y;
    u_xlat35 = exp2(u_xlat35);
    u_xlat35 = u_xlat35 * unity_SpecCube0_HDR.x;
    u_xlat11.xyz = u_xlat10.xyz * vec3(u_xlat35);
    u_xlatb52 = unity_SpecCube0_BoxMin.w<0.999989986;
    if(u_xlatb52){
        u_xlatb52 = 0.0<unity_SpecCube1_ProbePosition.w;
        if(u_xlatb52){
            u_xlat52 = dot(u_xlat8.xyz, u_xlat8.xyz);
            u_xlat52 = inversesqrt(u_xlat52);
            u_xlat12.xyz = vec3(u_xlat52) * u_xlat8.xyz;
            u_xlat13.xyz = (-u_xlat0.xyz) + unity_SpecCube1_BoxMax.xyz;
            u_xlat13.xyz = u_xlat13.xyz / u_xlat12.xyz;
            u_xlat14.xyz = (-u_xlat0.xyz) + unity_SpecCube1_BoxMin.xyz;
            u_xlat14.xyz = u_xlat14.xyz / u_xlat12.xyz;
            u_xlatb15.xyz = lessThan(vec4(0.0, 0.0, 0.0, 0.0), u_xlat12.xyzx).xyz;
            {
                vec3 hlslcc_movcTemp = u_xlat13;
                hlslcc_movcTemp.x = (u_xlatb15.x) ? u_xlat13.x : u_xlat14.x;
                hlslcc_movcTemp.y = (u_xlatb15.y) ? u_xlat13.y : u_xlat14.y;
                hlslcc_movcTemp.z = (u_xlatb15.z) ? u_xlat13.z : u_xlat14.z;
                u_xlat13 = hlslcc_movcTemp;
            }
            u_xlat52 = min(u_xlat13.y, u_xlat13.x);
            u_xlat52 = min(u_xlat13.z, u_xlat52);
            u_xlat0.xyz = u_xlat0.xyz + (-unity_SpecCube1_ProbePosition.xyz);
            u_xlat8.xyz = u_xlat12.xyz * vec3(u_xlat52) + u_xlat0.xyz;
        }
        u_xlat8 = textureLod(samplerCube(unity_SpecCube1, samplerunity_SpecCube0), u_xlat8.xyz, u_xlat49);
        u_xlat0.x = u_xlat8.w + -1.0;
        u_xlat0.x = unity_SpecCube1_HDR.w * u_xlat0.x + 1.0;
        u_xlat0.x = log2(u_xlat0.x);
        u_xlat0.x = u_xlat0.x * unity_SpecCube1_HDR.y;
        u_xlat0.x = exp2(u_xlat0.x);
        u_xlat0.x = u_xlat0.x * unity_SpecCube1_HDR.x;
        u_xlat0.xyz = u_xlat8.xyz * u_xlat0.xxx;
        u_xlat8.xyz = vec3(u_xlat35) * u_xlat10.xyz + (-u_xlat0.xyz);
        u_xlat11.xyz = unity_SpecCube0_BoxMin.www * u_xlat8.xyz + u_xlat0.xyz;
    }
    u_xlat0.xyz = vec3(u_xlat51) * u_xlat11.xyz;
    u_xlat4.xyz = u_xlat4.xyz * _Color.xyz + vec3(-0.0399999991, -0.0399999991, -0.0399999991);
    u_xlat4.xyz = u_xlat3.xxx * u_xlat4.xyz + vec3(0.0399999991, 0.0399999991, 0.0399999991);
    u_xlat49 = (-u_xlat3.x) * 0.959999979 + 0.959999979;
    u_xlat3.xzw = vec3(u_xlat49) * u_xlat5.xyz;
    u_xlat1.xyz = u_xlat1.xyz * vec3(u_xlat48) + _WorldSpaceLightPos0.xyz;
    u_xlat48 = dot(u_xlat1.xyz, u_xlat1.xyz);
    u_xlat48 = max(u_xlat48, 0.00100000005);
    u_xlat48 = inversesqrt(u_xlat48);
    u_xlat1.xyz = vec3(u_xlat48) * u_xlat1.xyz;
    u_xlat48 = dot(u_xlat7.xyz, u_xlat2.xyz);
    u_xlat2.x = dot(u_xlat7.xyz, _WorldSpaceLightPos0.xyz);
    u_xlat2.x = clamp(u_xlat2.x, 0.0, 1.0);
    u_xlat18 = dot(u_xlat7.xyz, u_xlat1.xyz);
    u_xlat18 = clamp(u_xlat18, 0.0, 1.0);
    u_xlat1.x = dot(_WorldSpaceLightPos0.xyz, u_xlat1.xyz);
    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
    u_xlat17 = u_xlat1.x * u_xlat1.x;
    u_xlat17 = dot(vec2(u_xlat17), vec2(u_xlat50));
    u_xlat17 = u_xlat17 + -0.5;
    u_xlat33 = (-u_xlat2.x) + 1.0;
    u_xlat34 = u_xlat33 * u_xlat33;
    u_xlat34 = u_xlat34 * u_xlat34;
    u_xlat33 = u_xlat33 * u_xlat34;
    u_xlat33 = u_xlat17 * u_xlat33 + 1.0;
    u_xlat34 = -abs(u_xlat48) + 1.0;
    u_xlat52 = u_xlat34 * u_xlat34;
    u_xlat52 = u_xlat52 * u_xlat52;
    u_xlat34 = u_xlat34 * u_xlat52;
    u_xlat17 = u_xlat17 * u_xlat34 + 1.0;
    u_xlat17 = u_xlat17 * u_xlat33;
    u_xlat17 = u_xlat2.x * u_xlat17;
    u_xlat33 = u_xlat50 * u_xlat50;
    u_xlat33 = max(u_xlat33, 0.00200000009);
    u_xlat50 = (-u_xlat33) + 1.0;
    u_xlat52 = abs(u_xlat48) * u_xlat50 + u_xlat33;
    u_xlat50 = u_xlat2.x * u_xlat50 + u_xlat33;
    u_xlat48 = abs(u_xlat48) * u_xlat50;
    u_xlat48 = u_xlat2.x * u_xlat52 + u_xlat48;
    u_xlat48 = u_xlat48 + 9.99999975e-06;
    u_xlat48 = 0.5 / u_xlat48;
    u_xlat50 = u_xlat33 * u_xlat33;
    u_xlat52 = u_xlat18 * u_xlat50 + (-u_xlat18);
    u_xlat18 = u_xlat52 * u_xlat18 + 1.0;
    u_xlat50 = u_xlat50 * 0.318309873;
    u_xlat18 = u_xlat18 * u_xlat18 + 1.00000001e-07;
    u_xlat18 = u_xlat50 / u_xlat18;
    u_xlat48 = u_xlat48 * u_xlat18;
    u_xlat48 = u_xlat2.x * u_xlat48;
    u_xlat48 = u_xlat48 * 3.14159274;
    u_xlat48 = max(u_xlat48, 0.0);
    u_xlat33 = u_xlat33 * u_xlat33 + 1.0;
    u_xlat1.z = float(1.0) / u_xlat33;
    u_xlat2.x = dot(u_xlat4.xyz, u_xlat4.xyz);
    u_xlatb2 = u_xlat2.x!=0.0;
    u_xlat2.x = u_xlatb2 ? 1.0 : float(0.0);
    u_xlat48 = u_xlat48 * u_xlat2.x;
    u_xlat49 = u_xlat3.y * _Glossiness + (-u_xlat49);
    u_xlat49 = u_xlat49 + 1.0;
    u_xlat49 = clamp(u_xlat49, 0.0, 1.0);
    u_xlat2.xyw = vec3(u_xlat17) * u_xlat9.xyz;
    u_xlat5.xyz = u_xlat9.xyz * vec3(u_xlat48);
    u_xlat0.w = (-u_xlat1.x) + 1.0;
    u_xlat1.x = u_xlat0.w * u_xlat0.w;
    u_xlat1.x = u_xlat1.x * u_xlat1.x;
    u_xlat0 = u_xlat0 * u_xlat1.zzzx;
    u_xlat7.xyz = (-u_xlat4.xyz) + vec3(1.0, 1.0, 1.0);
    u_xlat7.xyz = u_xlat7.xyz * u_xlat0.www + u_xlat4.xyz;
    u_xlat5.xyz = u_xlat5.xyz * u_xlat7.xyz;
    u_xlat2.xyw = u_xlat3.xzw * u_xlat2.xyw + u_xlat5.xyz;
    u_xlat1.xyz = (-u_xlat4.xyz) + vec3(u_xlat49);
    u_xlat1.xyz = vec3(u_xlat34) * u_xlat1.xyz + u_xlat4.xyz;
    u_xlat0.xyz = u_xlat0.xyz * u_xlat1.xyz + u_xlat2.xyw;
    SV_Target0.xyz = u_xlat6.xyz + u_xlat0.xyz;
    SV_Target0.w = 1.0;
    return;
}

