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
	vec4 _ProjectionParams;
	vec4 _WorldSpaceLightPos0;
	vec4 unity_OcclusionMaskSelector;
	vec4 unity_FogColor;
	vec4 unity_FogParams;
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
layout(set = 0, binding = 0) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 1) uniform mediump texture2D _OcclusionMap;
layout(set = 0, binding = 2) uniform mediump texture2D _EmissionMap;
layout(set = 0, binding = 3) uniform mediump textureCube unity_SpecCube0;
layout(set = 0, binding = 4) uniform mediump textureCube unity_SpecCube1;
layout(set = 0, binding = 5) uniform highp texture3D unity_ProbeVolumeSH;
layout(location = 0) in highp vec4 vs_TEXCOORD0;
layout(location = 1) in highp vec4 vs_TEXCOORD1;
layout(location = 2) in highp vec4 vs_TEXCOORD2;
layout(location = 3) in highp vec4 vs_TEXCOORD3;
layout(location = 4) in highp vec4 vs_TEXCOORD4;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 6) uniform mediump  sampler samplerunity_SpecCube0;
layout(set = 0, binding = 7) uniform highp  sampler samplerunity_ProbeVolumeSH;
layout(set = 0, binding = 8) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 9) uniform mediump  sampler sampler_OcclusionMap;
layout(set = 0, binding = 10) uniform mediump  sampler sampler_EmissionMap;
void main()
{
vec3 u_xlat0;
vec3 u_xlat1;
vec3 u_xlat2;
vec4 u_xlat3;
vec4 u_xlat4;
vec3 u_xlat5;
vec4 u_xlat6;
vec3 u_xlat7;
vec4 u_xlat8;
vec3 u_xlat9;
vec3 u_xlat10;
bvec3 u_xlatb10;
vec3 u_xlat11;
bvec3 u_xlatb12;
vec3 u_xlat15;
float u_xlat16;
vec3 u_xlat17;
vec3 u_xlat18;
float u_xlat28;
float u_xlat29;
float u_xlat39;
float u_xlat40;
float u_xlat41;
bool u_xlatb41;
float u_xlat42;
float u_xlat44;
float u_xlat45;
bool u_xlatb45;
    u_xlat0.xyz = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD0.xy).xyz;
    u_xlat1.xyz = u_xlat0.xyz * _Color.xyz;
    u_xlat0.xyz = _Color.xyz * u_xlat0.xyz + vec3(-0.0399999991, -0.0399999991, -0.0399999991);
    u_xlat0.xyz = vec3(vec3(_Metallic, _Metallic, _Metallic)) * u_xlat0.xyz + vec3(0.0399999991, 0.0399999991, 0.0399999991);
    u_xlat39 = (-_Metallic) * 0.959999979 + 0.959999979;
    u_xlat1.xyz = vec3(u_xlat39) * u_xlat1.xyz;
    u_xlat40 = dot(vs_TEXCOORD4.xyz, vs_TEXCOORD4.xyz);
    u_xlat40 = inversesqrt(u_xlat40);
    u_xlat2.xyz = vec3(u_xlat40) * vs_TEXCOORD4.xyz;
    u_xlat40 = dot(vs_TEXCOORD1.xyz, vs_TEXCOORD1.xyz);
    u_xlat40 = inversesqrt(u_xlat40);
    u_xlat3.xyz = vec3(u_xlat40) * vs_TEXCOORD1.xyz;
    u_xlatb41 = unity_ProbeVolumeParams.x==1.0;
    if(u_xlatb41){
        u_xlatb41 = unity_ProbeVolumeParams.y==1.0;
        u_xlat4.xyz = vs_TEXCOORD3.www * unity_ProbeVolumeWorldToObject[1].xyz;
        u_xlat4.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD2.www + u_xlat4.xyz;
        u_xlat4.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD4.www + u_xlat4.xyz;
        u_xlat4.xyz = u_xlat4.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
        u_xlat18.x = vs_TEXCOORD2.w;
        u_xlat18.y = vs_TEXCOORD3.w;
        u_xlat18.z = vs_TEXCOORD4.w;
        u_xlat4.xyz = (bool(u_xlatb41)) ? u_xlat4.xyz : u_xlat18.xyz;
        u_xlat4.xyz = u_xlat4.xyz + (-unity_ProbeVolumeMin.xyz);
        u_xlat4.yzw = u_xlat4.xyz * unity_ProbeVolumeSizeInv.xyz;
        u_xlat41 = u_xlat4.y * 0.25 + 0.75;
        u_xlat42 = unity_ProbeVolumeParams.z * 0.5 + 0.75;
        u_xlat4.x = max(u_xlat41, u_xlat42);
        u_xlat4 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat4.xzw);
    } else {
        u_xlat4.x = float(1.0);
        u_xlat4.y = float(1.0);
        u_xlat4.z = float(1.0);
        u_xlat4.w = float(1.0);
    }
    u_xlat41 = dot(u_xlat4, unity_OcclusionMaskSelector);
    u_xlat41 = clamp(u_xlat41, 0.0, 1.0);
    u_xlat42 = texture(sampler2D(_OcclusionMap, sampler_OcclusionMap), vs_TEXCOORD0.xy).y;
    u_xlat4.x = (-_OcclusionStrength) + 1.0;
    u_xlat42 = u_xlat42 * _OcclusionStrength + u_xlat4.x;
    u_xlat4.x = (-_Glossiness) + 1.0;
    u_xlat17.x = dot(u_xlat3.xyz, u_xlat2.xyz);
    u_xlat17.x = u_xlat17.x + u_xlat17.x;
    u_xlat17.xyz = u_xlat2.xyz * (-u_xlat17.xxx) + u_xlat3.xyz;
    u_xlat5.xyz = vec3(u_xlat41) * _LightColor0.xyz;
    u_xlatb41 = 0.0<unity_SpecCube0_ProbePosition.w;
    if(u_xlatb41){
        u_xlat41 = dot(u_xlat17.xyz, u_xlat17.xyz);
        u_xlat41 = inversesqrt(u_xlat41);
        u_xlat6.xyz = vec3(u_xlat41) * u_xlat17.xyz;
        u_xlat7.x = vs_TEXCOORD2.w;
        u_xlat7.y = vs_TEXCOORD3.w;
        u_xlat7.z = vs_TEXCOORD4.w;
        u_xlat8.xyz = (-u_xlat7.xyz) + unity_SpecCube0_BoxMax.xyz;
        u_xlat8.xyz = u_xlat8.xyz / u_xlat6.xyz;
        u_xlat9.xyz = (-u_xlat7.xyz) + unity_SpecCube0_BoxMin.xyz;
        u_xlat9.xyz = u_xlat9.xyz / u_xlat6.xyz;
        u_xlatb10.xyz = lessThan(vec4(0.0, 0.0, 0.0, 0.0), u_xlat6.xyzx).xyz;
        {
            vec4 hlslcc_movcTemp = u_xlat8;
            hlslcc_movcTemp.x = (u_xlatb10.x) ? u_xlat8.x : u_xlat9.x;
            hlslcc_movcTemp.y = (u_xlatb10.y) ? u_xlat8.y : u_xlat9.y;
            hlslcc_movcTemp.z = (u_xlatb10.z) ? u_xlat8.z : u_xlat9.z;
            u_xlat8 = hlslcc_movcTemp;
        }
        u_xlat41 = min(u_xlat8.y, u_xlat8.x);
        u_xlat41 = min(u_xlat8.z, u_xlat41);
        u_xlat7.xyz = u_xlat7.xyz + (-unity_SpecCube0_ProbePosition.xyz);
        u_xlat6.xyz = u_xlat6.xyz * vec3(u_xlat41) + u_xlat7.xyz;
    } else {
        u_xlat6.xyz = u_xlat17.xyz;
    }
    u_xlat41 = (-u_xlat4.x) * 0.699999988 + 1.70000005;
    u_xlat41 = u_xlat41 * u_xlat4.x;
    u_xlat41 = u_xlat41 * 6.0;
    u_xlat6 = textureLod(samplerCube(unity_SpecCube0, samplerunity_SpecCube0), u_xlat6.xyz, u_xlat41);
    u_xlat44 = u_xlat6.w + -1.0;
    u_xlat44 = unity_SpecCube0_HDR.w * u_xlat44 + 1.0;
    u_xlat44 = log2(u_xlat44);
    u_xlat44 = u_xlat44 * unity_SpecCube0_HDR.y;
    u_xlat44 = exp2(u_xlat44);
    u_xlat44 = u_xlat44 * unity_SpecCube0_HDR.x;
    u_xlat7.xyz = u_xlat6.xyz * vec3(u_xlat44);
    u_xlatb45 = unity_SpecCube0_BoxMin.w<0.999989986;
    if(u_xlatb45){
        u_xlatb45 = 0.0<unity_SpecCube1_ProbePosition.w;
        if(u_xlatb45){
            u_xlat45 = dot(u_xlat17.xyz, u_xlat17.xyz);
            u_xlat45 = inversesqrt(u_xlat45);
            u_xlat8.xyz = u_xlat17.xyz * vec3(u_xlat45);
            u_xlat9.x = vs_TEXCOORD2.w;
            u_xlat9.y = vs_TEXCOORD3.w;
            u_xlat9.z = vs_TEXCOORD4.w;
            u_xlat10.xyz = (-u_xlat9.xyz) + unity_SpecCube1_BoxMax.xyz;
            u_xlat10.xyz = u_xlat10.xyz / u_xlat8.xyz;
            u_xlat11.xyz = (-u_xlat9.xyz) + unity_SpecCube1_BoxMin.xyz;
            u_xlat11.xyz = u_xlat11.xyz / u_xlat8.xyz;
            u_xlatb12.xyz = lessThan(vec4(0.0, 0.0, 0.0, 0.0), u_xlat8.xyzx).xyz;
            {
                vec3 hlslcc_movcTemp = u_xlat10;
                hlslcc_movcTemp.x = (u_xlatb12.x) ? u_xlat10.x : u_xlat11.x;
                hlslcc_movcTemp.y = (u_xlatb12.y) ? u_xlat10.y : u_xlat11.y;
                hlslcc_movcTemp.z = (u_xlatb12.z) ? u_xlat10.z : u_xlat11.z;
                u_xlat10 = hlslcc_movcTemp;
            }
            u_xlat45 = min(u_xlat10.y, u_xlat10.x);
            u_xlat45 = min(u_xlat10.z, u_xlat45);
            u_xlat9.xyz = u_xlat9.xyz + (-unity_SpecCube1_ProbePosition.xyz);
            u_xlat17.xyz = u_xlat8.xyz * vec3(u_xlat45) + u_xlat9.xyz;
        }
        u_xlat8 = textureLod(samplerCube(unity_SpecCube1, samplerunity_SpecCube0), u_xlat17.xyz, u_xlat41);
        u_xlat41 = u_xlat8.w + -1.0;
        u_xlat41 = unity_SpecCube1_HDR.w * u_xlat41 + 1.0;
        u_xlat41 = log2(u_xlat41);
        u_xlat41 = u_xlat41 * unity_SpecCube1_HDR.y;
        u_xlat41 = exp2(u_xlat41);
        u_xlat41 = u_xlat41 * unity_SpecCube1_HDR.x;
        u_xlat17.xyz = u_xlat8.xyz * vec3(u_xlat41);
        u_xlat6.xyz = vec3(u_xlat44) * u_xlat6.xyz + (-u_xlat17.xyz);
        u_xlat7.xyz = unity_SpecCube0_BoxMin.www * u_xlat6.xyz + u_xlat17.xyz;
    }
    u_xlat17.xyz = vec3(u_xlat42) * u_xlat7.xyz;
    u_xlat6.xyz = (-vs_TEXCOORD1.xyz) * vec3(u_xlat40) + _WorldSpaceLightPos0.xyz;
    u_xlat40 = dot(u_xlat6.xyz, u_xlat6.xyz);
    u_xlat40 = max(u_xlat40, 0.00100000005);
    u_xlat40 = inversesqrt(u_xlat40);
    u_xlat6.xyz = vec3(u_xlat40) * u_xlat6.xyz;
    u_xlat40 = dot(u_xlat2.xyz, (-u_xlat3.xyz));
    u_xlat41 = dot(u_xlat2.xyz, _WorldSpaceLightPos0.xyz);
    u_xlat41 = clamp(u_xlat41, 0.0, 1.0);
    u_xlat2.x = dot(u_xlat2.xyz, u_xlat6.xyz);
    u_xlat2.x = clamp(u_xlat2.x, 0.0, 1.0);
    u_xlat15.x = dot(_WorldSpaceLightPos0.xyz, u_xlat6.xyz);
    u_xlat15.x = clamp(u_xlat15.x, 0.0, 1.0);
    u_xlat28 = u_xlat15.x * u_xlat15.x;
    u_xlat28 = dot(vec2(u_xlat28), u_xlat4.xx);
    u_xlat28 = u_xlat28 + -0.5;
    u_xlat3.x = (-u_xlat41) + 1.0;
    u_xlat16 = u_xlat3.x * u_xlat3.x;
    u_xlat16 = u_xlat16 * u_xlat16;
    u_xlat3.x = u_xlat3.x * u_xlat16;
    u_xlat3.x = u_xlat28 * u_xlat3.x + 1.0;
    u_xlat16 = -abs(u_xlat40) + 1.0;
    u_xlat29 = u_xlat16 * u_xlat16;
    u_xlat29 = u_xlat29 * u_xlat29;
    u_xlat16 = u_xlat16 * u_xlat29;
    u_xlat28 = u_xlat28 * u_xlat16 + 1.0;
    u_xlat28 = u_xlat28 * u_xlat3.x;
    u_xlat28 = u_xlat41 * u_xlat28;
    u_xlat3.x = u_xlat4.x * u_xlat4.x;
    u_xlat3.x = max(u_xlat3.x, 0.00200000009);
    u_xlat29 = (-u_xlat3.x) + 1.0;
    u_xlat42 = abs(u_xlat40) * u_xlat29 + u_xlat3.x;
    u_xlat29 = u_xlat41 * u_xlat29 + u_xlat3.x;
    u_xlat40 = abs(u_xlat40) * u_xlat29;
    u_xlat40 = u_xlat41 * u_xlat42 + u_xlat40;
    u_xlat40 = u_xlat40 + 9.99999975e-06;
    u_xlat40 = 0.5 / u_xlat40;
    u_xlat29 = u_xlat3.x * u_xlat3.x;
    u_xlat42 = u_xlat2.x * u_xlat29 + (-u_xlat2.x);
    u_xlat2.x = u_xlat42 * u_xlat2.x + 1.0;
    u_xlat29 = u_xlat29 * 0.318309873;
    u_xlat2.x = u_xlat2.x * u_xlat2.x + 1.00000001e-07;
    u_xlat2.x = u_xlat29 / u_xlat2.x;
    u_xlat40 = u_xlat40 * u_xlat2.x;
    u_xlat40 = u_xlat41 * u_xlat40;
    u_xlat40 = u_xlat40 * 3.14159274;
    u_xlat40 = max(u_xlat40, 0.0);
    u_xlat2.x = u_xlat3.x * u_xlat3.x + 1.0;
    u_xlat2.x = float(1.0) / u_xlat2.x;
    u_xlat41 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlatb41 = u_xlat41!=0.0;
    u_xlat41 = u_xlatb41 ? 1.0 : float(0.0);
    u_xlat40 = u_xlat40 * u_xlat41;
    u_xlat39 = (-u_xlat39) + _Glossiness;
    u_xlat39 = u_xlat39 + 1.0;
    u_xlat39 = clamp(u_xlat39, 0.0, 1.0);
    u_xlat3.xzw = vec3(u_xlat28) * u_xlat5.xyz;
    u_xlat5.xyz = u_xlat5.xyz * vec3(u_xlat40);
    u_xlat40 = (-u_xlat15.x) + 1.0;
    u_xlat15.x = u_xlat40 * u_xlat40;
    u_xlat15.x = u_xlat15.x * u_xlat15.x;
    u_xlat40 = u_xlat40 * u_xlat15.x;
    u_xlat15.xyz = (-u_xlat0.xyz) + vec3(1.0, 1.0, 1.0);
    u_xlat15.xyz = u_xlat15.xyz * vec3(u_xlat40) + u_xlat0.xyz;
    u_xlat15.xyz = u_xlat15.xyz * u_xlat5.xyz;
    u_xlat1.xyz = u_xlat1.xyz * u_xlat3.xzw + u_xlat15.xyz;
    u_xlat2.xyz = u_xlat17.xyz * u_xlat2.xxx;
    u_xlat3.xzw = (-u_xlat0.xyz) + vec3(u_xlat39);
    u_xlat0.xyz = vec3(u_xlat16) * u_xlat3.xzw + u_xlat0.xyz;
    u_xlat0.xyz = u_xlat2.xyz * u_xlat0.xyz + u_xlat1.xyz;
    u_xlat1.xyz = texture(sampler2D(_EmissionMap, sampler_EmissionMap), vs_TEXCOORD0.xy).xyz;
    u_xlat0.xyz = u_xlat1.xyz * _EmissionColor.xyz + u_xlat0.xyz;
    u_xlat39 = vs_TEXCOORD1.w / _ProjectionParams.y;
    u_xlat39 = (-u_xlat39) + 1.0;
    u_xlat39 = u_xlat39 * _ProjectionParams.z;
    u_xlat39 = max(u_xlat39, 0.0);
    u_xlat39 = u_xlat39 * unity_FogParams.x;
    u_xlat39 = u_xlat39 * (-u_xlat39);
    u_xlat39 = exp2(u_xlat39);
    u_xlat0.xyz = u_xlat0.xyz + (-unity_FogColor.xyz);
    SV_Target0.xyz = vec3(u_xlat39) * u_xlat0.xyz + unity_FogColor.xyz;
    SV_Target0.w = 1.0;
    return;
}

