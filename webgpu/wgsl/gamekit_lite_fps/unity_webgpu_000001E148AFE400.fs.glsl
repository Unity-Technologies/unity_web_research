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
	vec4 _WorldSpaceLightPos0;
	vec4 unity_SHAr;
	vec4 unity_SHAg;
	vec4 unity_SHAb;
	vec4 unity_OcclusionMaskSelector;
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
};
layout(set = 0, binding = 1) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 2) uniform mediump texture2D _OcclusionMap;
layout(set = 0, binding = 3) uniform mediump textureCube unity_SpecCube0;
layout(set = 0, binding = 4) uniform mediump textureCube unity_SpecCube1;
layout(set = 0, binding = 5) uniform highp texture3D unity_ProbeVolumeSH;
layout(location = 0) in highp vec4 vs_TEXCOORD0;
layout(location = 1) in highp vec4 vs_TEXCOORD1;
layout(location = 2) in highp vec4 vs_TEXCOORD2;
layout(location = 3) in highp vec4 vs_TEXCOORD3;
layout(location = 4) in highp vec4 vs_TEXCOORD4;
layout(location = 5) in highp vec4 vs_TEXCOORD5;
layout(location = 0) out highp vec4 SV_Target0;
vec3 u_xlat0;
vec3 u_xlat1;
vec4 u_xlat2;
vec4 u_xlat3;
vec4 u_xlat4;
bool u_xlatb4;
vec4 u_xlat5;
vec3 u_xlat6;
vec4 u_xlat7;
vec4 u_xlat8;
vec4 u_xlat9;
vec3 u_xlat10;
vec3 u_xlat11;
vec3 u_xlat12;
bvec3 u_xlatb12;
vec3 u_xlat13;
bvec3 u_xlatb14;
vec3 u_xlat17;
float u_xlat18;
vec3 u_xlat19;
vec3 u_xlat20;
vec3 u_xlat23;
float u_xlat32;
float u_xlat33;
float u_xlat34;
float u_xlat45;
float u_xlat46;
float u_xlat47;
bool u_xlatb47;
float u_xlat48;
bool u_xlatb48;
float u_xlat49;
layout(set = 0, binding = 6) uniform mediump  sampler samplerunity_SpecCube0;
layout(set = 0, binding = 7) uniform highp  sampler samplerunity_ProbeVolumeSH;
layout(set = 0, binding = 8) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 9) uniform mediump  sampler sampler_OcclusionMap;
void main()
{
    u_xlat0.xyz = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD0.xy).xyz;
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
    u_xlatb48 = unity_ProbeVolumeParams.x==1.0;
    if(u_xlatb48){
        u_xlatb4 = unity_ProbeVolumeParams.y==1.0;
        u_xlat19.xyz = vs_TEXCOORD3.www * unity_ProbeVolumeWorldToObject[1].xyz;
        u_xlat19.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD2.www + u_xlat19.xyz;
        u_xlat19.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD4.www + u_xlat19.xyz;
        u_xlat19.xyz = u_xlat19.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
        u_xlat20.x = vs_TEXCOORD2.w;
        u_xlat20.y = vs_TEXCOORD3.w;
        u_xlat20.z = vs_TEXCOORD4.w;
        u_xlat4.xyz = (bool(u_xlatb4)) ? u_xlat19.xyz : u_xlat20.xyz;
        u_xlat4.xyz = u_xlat4.xyz + (-unity_ProbeVolumeMin.xyz);
        u_xlat4.yzw = u_xlat4.xyz * unity_ProbeVolumeSizeInv.xyz;
        u_xlat19.x = u_xlat4.y * 0.25 + 0.75;
        u_xlat5.x = unity_ProbeVolumeParams.z * 0.5 + 0.75;
        u_xlat4.x = max(u_xlat19.x, u_xlat5.x);
        u_xlat4 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat4.xzw);
    } else {
        u_xlat4.x = float(1.0);
        u_xlat4.y = float(1.0);
        u_xlat4.z = float(1.0);
        u_xlat4.w = float(1.0);
    }
    u_xlat4.x = dot(u_xlat4, unity_OcclusionMaskSelector);
    u_xlat4.x = clamp(u_xlat4.x, 0.0, 1.0);
    u_xlat19.x = texture(sampler2D(_OcclusionMap, sampler_OcclusionMap), vs_TEXCOORD0.xy).y;
    u_xlat34 = (-_OcclusionStrength) + 1.0;
    u_xlat19.x = u_xlat19.x * _OcclusionStrength + u_xlat34;
    u_xlat34 = (-_Glossiness) + 1.0;
    u_xlat49 = dot(u_xlat3.xyz, u_xlat2.xyz);
    u_xlat49 = u_xlat49 + u_xlat49;
    u_xlat5.xyz = u_xlat2.xyz * (-vec3(u_xlat49)) + u_xlat3.xyz;
    u_xlat6.xyz = u_xlat4.xxx * _LightColor0.xyz;
    if(u_xlatb48){
        u_xlatb48 = unity_ProbeVolumeParams.y==1.0;
        u_xlat7.xyz = vs_TEXCOORD3.www * unity_ProbeVolumeWorldToObject[1].xyz;
        u_xlat7.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD2.www + u_xlat7.xyz;
        u_xlat7.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD4.www + u_xlat7.xyz;
        u_xlat7.xyz = u_xlat7.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
        u_xlat23.x = vs_TEXCOORD2.w;
        u_xlat23.y = vs_TEXCOORD3.w;
        u_xlat23.z = vs_TEXCOORD4.w;
        u_xlat7.xyz = (bool(u_xlatb48)) ? u_xlat7.xyz : u_xlat23.xyz;
        u_xlat7.xyz = u_xlat7.xyz + (-unity_ProbeVolumeMin.xyz);
        u_xlat7.yzw = u_xlat7.xyz * unity_ProbeVolumeSizeInv.xyz;
        u_xlat48 = u_xlat7.y * 0.25;
        u_xlat4.x = unity_ProbeVolumeParams.z * 0.5;
        u_xlat49 = (-unity_ProbeVolumeParams.z) * 0.5 + 0.25;
        u_xlat48 = max(u_xlat48, u_xlat4.x);
        u_xlat7.x = min(u_xlat49, u_xlat48);
        u_xlat8 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat7.xzw);
        u_xlat9.xyz = u_xlat7.xzw + vec3(0.25, 0.0, 0.0);
        u_xlat9 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat9.xyz);
        u_xlat7.xyz = u_xlat7.xzw + vec3(0.5, 0.0, 0.0);
        u_xlat7 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat7.xyz);
        u_xlat2.w = 1.0;
        u_xlat8.x = dot(u_xlat8, u_xlat2);
        u_xlat8.y = dot(u_xlat9, u_xlat2);
        u_xlat8.z = dot(u_xlat7, u_xlat2);
    } else {
        u_xlat2.w = 1.0;
        u_xlat8.x = dot(unity_SHAr, u_xlat2);
        u_xlat8.y = dot(unity_SHAg, u_xlat2);
        u_xlat8.z = dot(unity_SHAb, u_xlat2);
    }
    u_xlat7.xyz = u_xlat8.xyz + vs_TEXCOORD5.xyz;
    u_xlat7.xyz = max(u_xlat7.xyz, vec3(0.0, 0.0, 0.0));
    u_xlatb47 = 0.0<unity_SpecCube0_ProbePosition.w;
    if(u_xlatb47){
        u_xlat47 = dot(u_xlat5.xyz, u_xlat5.xyz);
        u_xlat47 = inversesqrt(u_xlat47);
        u_xlat8.xyz = vec3(u_xlat47) * u_xlat5.xyz;
        u_xlat9.x = vs_TEXCOORD2.w;
        u_xlat9.y = vs_TEXCOORD3.w;
        u_xlat9.z = vs_TEXCOORD4.w;
        u_xlat10.xyz = (-u_xlat9.xyz) + unity_SpecCube0_BoxMax.xyz;
        u_xlat10.xyz = u_xlat10.xyz / u_xlat8.xyz;
        u_xlat11.xyz = (-u_xlat9.xyz) + unity_SpecCube0_BoxMin.xyz;
        u_xlat11.xyz = u_xlat11.xyz / u_xlat8.xyz;
        u_xlatb12.xyz = lessThan(vec4(0.0, 0.0, 0.0, 0.0), u_xlat8.xyzx).xyz;
        {
            vec3 hlslcc_movcTemp = u_xlat10;
            hlslcc_movcTemp.x = (u_xlatb12.x) ? u_xlat10.x : u_xlat11.x;
            hlslcc_movcTemp.y = (u_xlatb12.y) ? u_xlat10.y : u_xlat11.y;
            hlslcc_movcTemp.z = (u_xlatb12.z) ? u_xlat10.z : u_xlat11.z;
            u_xlat10 = hlslcc_movcTemp;
        }
        u_xlat47 = min(u_xlat10.y, u_xlat10.x);
        u_xlat47 = min(u_xlat10.z, u_xlat47);
        u_xlat9.xyz = u_xlat9.xyz + (-unity_SpecCube0_ProbePosition.xyz);
        u_xlat8.xyz = u_xlat8.xyz * vec3(u_xlat47) + u_xlat9.xyz;
    } else {
        u_xlat8.xyz = u_xlat5.xyz;
    }
    u_xlat47 = (-u_xlat34) * 0.699999988 + 1.70000005;
    u_xlat47 = u_xlat47 * u_xlat34;
    u_xlat47 = u_xlat47 * 6.0;
    u_xlat8 = textureLod(samplerCube(unity_SpecCube0, samplerunity_SpecCube0), u_xlat8.xyz, u_xlat47);
    u_xlat48 = u_xlat8.w + -1.0;
    u_xlat48 = unity_SpecCube0_HDR.w * u_xlat48 + 1.0;
    u_xlat48 = log2(u_xlat48);
    u_xlat48 = u_xlat48 * unity_SpecCube0_HDR.y;
    u_xlat48 = exp2(u_xlat48);
    u_xlat48 = u_xlat48 * unity_SpecCube0_HDR.x;
    u_xlat9.xyz = u_xlat8.xyz * vec3(u_xlat48);
    u_xlatb4 = unity_SpecCube0_BoxMin.w<0.999989986;
    if(u_xlatb4){
        u_xlatb4 = 0.0<unity_SpecCube1_ProbePosition.w;
        if(u_xlatb4){
            u_xlat4.x = dot(u_xlat5.xyz, u_xlat5.xyz);
            u_xlat4.x = inversesqrt(u_xlat4.x);
            u_xlat10.xyz = u_xlat4.xxx * u_xlat5.xyz;
            u_xlat11.x = vs_TEXCOORD2.w;
            u_xlat11.y = vs_TEXCOORD3.w;
            u_xlat11.z = vs_TEXCOORD4.w;
            u_xlat12.xyz = (-u_xlat11.xyz) + unity_SpecCube1_BoxMax.xyz;
            u_xlat12.xyz = u_xlat12.xyz / u_xlat10.xyz;
            u_xlat13.xyz = (-u_xlat11.xyz) + unity_SpecCube1_BoxMin.xyz;
            u_xlat13.xyz = u_xlat13.xyz / u_xlat10.xyz;
            u_xlatb14.xyz = lessThan(vec4(0.0, 0.0, 0.0, 0.0), u_xlat10.xyzx).xyz;
            {
                vec3 hlslcc_movcTemp = u_xlat12;
                hlslcc_movcTemp.x = (u_xlatb14.x) ? u_xlat12.x : u_xlat13.x;
                hlslcc_movcTemp.y = (u_xlatb14.y) ? u_xlat12.y : u_xlat13.y;
                hlslcc_movcTemp.z = (u_xlatb14.z) ? u_xlat12.z : u_xlat13.z;
                u_xlat12 = hlslcc_movcTemp;
            }
            u_xlat4.x = min(u_xlat12.y, u_xlat12.x);
            u_xlat4.x = min(u_xlat12.z, u_xlat4.x);
            u_xlat11.xyz = u_xlat11.xyz + (-unity_SpecCube1_ProbePosition.xyz);
            u_xlat5.xyz = u_xlat10.xyz * u_xlat4.xxx + u_xlat11.xyz;
        }
        u_xlat5 = textureLod(samplerCube(unity_SpecCube1, samplerunity_SpecCube0), u_xlat5.xyz, u_xlat47);
        u_xlat47 = u_xlat5.w + -1.0;
        u_xlat47 = unity_SpecCube1_HDR.w * u_xlat47 + 1.0;
        u_xlat47 = log2(u_xlat47);
        u_xlat47 = u_xlat47 * unity_SpecCube1_HDR.y;
        u_xlat47 = exp2(u_xlat47);
        u_xlat47 = u_xlat47 * unity_SpecCube1_HDR.x;
        u_xlat5.xyz = u_xlat5.xyz * vec3(u_xlat47);
        u_xlat8.xyz = vec3(u_xlat48) * u_xlat8.xyz + (-u_xlat5.xyz);
        u_xlat9.xyz = unity_SpecCube0_BoxMin.www * u_xlat8.xyz + u_xlat5.xyz;
    }
    u_xlat5.xyz = u_xlat19.xxx * u_xlat9.xyz;
    u_xlat8.xyz = (-vs_TEXCOORD1.xyz) * vec3(u_xlat46) + _WorldSpaceLightPos0.xyz;
    u_xlat46 = dot(u_xlat8.xyz, u_xlat8.xyz);
    u_xlat46 = max(u_xlat46, 0.00100000005);
    u_xlat46 = inversesqrt(u_xlat46);
    u_xlat8.xyz = vec3(u_xlat46) * u_xlat8.xyz;
    u_xlat46 = dot(u_xlat2.xyz, (-u_xlat3.xyz));
    u_xlat47 = dot(u_xlat2.xyz, _WorldSpaceLightPos0.xyz);
    u_xlat47 = clamp(u_xlat47, 0.0, 1.0);
    u_xlat2.x = dot(u_xlat2.xyz, u_xlat8.xyz);
    u_xlat2.x = clamp(u_xlat2.x, 0.0, 1.0);
    u_xlat17.x = dot(_WorldSpaceLightPos0.xyz, u_xlat8.xyz);
    u_xlat17.x = clamp(u_xlat17.x, 0.0, 1.0);
    u_xlat32 = u_xlat17.x * u_xlat17.x;
    u_xlat32 = dot(vec2(u_xlat32), vec2(u_xlat34));
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
    u_xlat3.x = u_xlat34 * u_xlat34;
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
    u_xlat3.xzw = vec3(u_xlat32) * u_xlat6.xyz;
    u_xlat3.xzw = u_xlat7.xyz * u_xlat19.xxx + u_xlat3.xzw;
    u_xlat4.xyz = u_xlat6.xyz * vec3(u_xlat46);
    u_xlat46 = (-u_xlat17.x) + 1.0;
    u_xlat17.x = u_xlat46 * u_xlat46;
    u_xlat17.x = u_xlat17.x * u_xlat17.x;
    u_xlat46 = u_xlat46 * u_xlat17.x;
    u_xlat17.xyz = (-u_xlat0.xyz) + vec3(1.0, 1.0, 1.0);
    u_xlat17.xyz = u_xlat17.xyz * vec3(u_xlat46) + u_xlat0.xyz;
    u_xlat17.xyz = u_xlat17.xyz * u_xlat4.xyz;
    u_xlat1.xyz = u_xlat1.xyz * u_xlat3.xzw + u_xlat17.xyz;
    u_xlat2.xyz = u_xlat5.xyz * u_xlat2.xxx;
    u_xlat3.xzw = (-u_xlat0.xyz) + vec3(u_xlat45);
    u_xlat0.xyz = vec3(u_xlat18) * u_xlat3.xzw + u_xlat0.xyz;
    SV_Target0.xyz = u_xlat2.xyz * u_xlat0.xyz + u_xlat1.xyz;
    SV_Target0.w = 1.0;
    return;
}

