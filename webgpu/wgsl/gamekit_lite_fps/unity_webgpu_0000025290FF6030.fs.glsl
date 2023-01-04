#version 440
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shading_language_420pack : require
const int UNITY_RUNTIME_INSTANCING_ARRAY_SIZE = 2;

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
	float _BumpScale;
	vec3 _EmissionColor;
	float _Metallic;
	float _Glossiness;
	float _Cutoff;
};
layout(set = 0, binding = 1, std140) uniform UnityDrawCallInfo {
	int unity_BaseInstanceID;
	int unity_InstanceCount;
};
struct unity_Builtins2Array_Type {
	vec4 unity_SHArArray;
	vec4 unity_SHAgArray;
	vec4 unity_SHAbArray;
	vec4 unity_SHBrArray;
	vec4 unity_SHBgArray;
	vec4 unity_SHBbArray;
	vec4 unity_SHCArray;
};
layout(set = 0, binding = 2, std140) uniform UnityInstancing_PerDraw2 {
	unity_Builtins2Array_Type unity_Builtins2Array[UNITY_RUNTIME_INSTANCING_ARRAY_SIZE];
};
layout(set = 0, binding = 3) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 4) uniform mediump texture2D _BumpMap;
layout(set = 0, binding = 5) uniform mediump texture2D _EmissionMap;
layout(set = 0, binding = 6) uniform mediump textureCube unity_SpecCube0;
layout(set = 0, binding = 7) uniform mediump textureCube unity_SpecCube1;
layout(set = 0, binding = 8) uniform highp texture3D unity_ProbeVolumeSH;
layout(location = 0) in highp vec4 vs_TEXCOORD0;
layout(location = 1) in highp vec4 vs_TEXCOORD1;
layout(location = 2) in highp vec4 vs_TEXCOORD2;
layout(location = 3) in highp vec4 vs_COLOR0;
layout(location = 4) in highp vec2 vs_TEXCOORD3;
layout(location = 5) in highp vec3 vs_TEXCOORD4;
layout(location = 6) flat in highp uint vs_SV_InstanceID0;
layout(location = 0) out highp vec4 SV_Target0;
vec3 u_xlat0;
int u_xlati0;
bool u_xlatb0;
vec3 u_xlat1;
vec4 u_xlat2;
bool u_xlatb2;
vec4 u_xlat3;
vec3 u_xlat4;
vec4 u_xlat5;
vec3 u_xlat6;
vec4 u_xlat7;
vec3 u_xlat8;
vec4 u_xlat9;
vec4 u_xlat10;
vec4 u_xlat11;
vec3 u_xlat12;
vec3 u_xlat13;
bvec3 u_xlatb13;
vec3 u_xlat14;
bvec3 u_xlatb15;
vec3 u_xlat16;
float u_xlat18;
float u_xlat32;
float u_xlat34;
float u_xlat48;
float u_xlat49;
float u_xlat50;
bool u_xlatb50;
float u_xlat51;
bool u_xlatb51;
float u_xlat52;
float u_xlat54;
layout(set = 0, binding = 9) uniform mediump  sampler samplerunity_SpecCube0;
layout(set = 0, binding = 10) uniform highp  sampler samplerunity_ProbeVolumeSH;
layout(set = 0, binding = 11) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 12) uniform mediump  sampler sampler_BumpMap;
layout(set = 0, binding = 13) uniform mediump  sampler sampler_EmissionMap;
void main()
{
    u_xlati0 = int(vs_SV_InstanceID0) + unity_BaseInstanceID;
    u_xlat1.x = vs_TEXCOORD0.w;
    u_xlat1.y = vs_TEXCOORD1.w;
    u_xlat1.z = vs_TEXCOORD2.w;
    u_xlat16.xyz = (-u_xlat1.xyz) + _WorldSpaceCameraPos.xyz;
    u_xlat49 = dot(u_xlat16.xyz, u_xlat16.xyz);
    u_xlat49 = inversesqrt(u_xlat49);
    u_xlat2.xyz = u_xlat16.xyz * vec3(u_xlat49);
    u_xlat3 = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD3.xy);
    u_xlat3 = u_xlat3 * _Color;
    u_xlat4.xyz = u_xlat3.xyz * vs_COLOR0.xyz;
    u_xlat5.xyz = texture(sampler2D(_BumpMap, sampler_BumpMap), vs_TEXCOORD3.xy).xyw;
    u_xlat5.x = u_xlat5.z * u_xlat5.x;
    u_xlat5.xy = u_xlat5.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat5.xy = u_xlat5.xy * vec2(_BumpScale);
    u_xlat50 = dot(u_xlat5.xy, u_xlat5.xy);
    u_xlat50 = min(u_xlat50, 1.0);
    u_xlat50 = (-u_xlat50) + 1.0;
    u_xlat5.z = sqrt(u_xlat50);
    u_xlat50 = dot(u_xlat5.xyz, u_xlat5.xyz);
    u_xlat50 = inversesqrt(u_xlat50);
    u_xlat5.xyz = vec3(u_xlat50) * u_xlat5.xyz;
    u_xlat6.xyz = texture(sampler2D(_EmissionMap, sampler_EmissionMap), vs_TEXCOORD3.xy).xyz;
    u_xlat50 = u_xlat3.w * vs_COLOR0.w + (-_Cutoff);
    u_xlat50 = u_xlat50 + 9.99999975e-05;
    u_xlatb50 = u_xlat50<0.0;
    if(((int(u_xlatb50) * int(0xffffffffu)))!=0){discard;}
    u_xlati0 = u_xlati0 * 7;
    u_xlatb50 = unity_ProbeVolumeParams.x==1.0;
    if(u_xlatb50){
        u_xlatb51 = unity_ProbeVolumeParams.y==1.0;
        u_xlat7.xyz = vs_TEXCOORD1.www * unity_ProbeVolumeWorldToObject[1].xyz;
        u_xlat7.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD0.www + u_xlat7.xyz;
        u_xlat7.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD2.www + u_xlat7.xyz;
        u_xlat7.xyz = u_xlat7.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
        u_xlat7.xyz = (bool(u_xlatb51)) ? u_xlat7.xyz : u_xlat1.xyz;
        u_xlat7.xyz = u_xlat7.xyz + (-unity_ProbeVolumeMin.xyz);
        u_xlat7.yzw = u_xlat7.xyz * unity_ProbeVolumeSizeInv.xyz;
        u_xlat51 = u_xlat7.y * 0.25 + 0.75;
        u_xlat52 = unity_ProbeVolumeParams.z * 0.5 + 0.75;
        u_xlat7.x = max(u_xlat51, u_xlat52);
        u_xlat7 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat7.xzw);
    } else {
        u_xlat7 = unity_Builtins2Array[u_xlati0 / 7].unity_SHCArray.wwww;
    }
    u_xlat51 = dot(u_xlat7, unity_OcclusionMaskSelector);
    u_xlat51 = clamp(u_xlat51, 0.0, 1.0);
    u_xlat7.x = dot(vs_TEXCOORD0.xyz, u_xlat5.xyz);
    u_xlat7.y = dot(vs_TEXCOORD1.xyz, u_xlat5.xyz);
    u_xlat7.z = dot(vs_TEXCOORD2.xyz, u_xlat5.xyz);
    u_xlat52 = dot(u_xlat7.xyz, u_xlat7.xyz);
    u_xlat52 = inversesqrt(u_xlat52);
    u_xlat5.xyz = vec3(u_xlat52) * u_xlat7.xyz;
    u_xlat52 = (-_Glossiness) + 1.0;
    u_xlat54 = dot((-u_xlat2.xyz), u_xlat5.xyz);
    u_xlat54 = u_xlat54 + u_xlat54;
    u_xlat7.xyz = u_xlat5.xyz * (-vec3(u_xlat54)) + (-u_xlat2.xyz);
    u_xlat8.xyz = vec3(u_xlat51) * _LightColor0.xyz;
    if(u_xlatb50){
        u_xlatb50 = unity_ProbeVolumeParams.y==1.0;
        u_xlat9.xyz = vs_TEXCOORD1.www * unity_ProbeVolumeWorldToObject[1].xyz;
        u_xlat9.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD0.www + u_xlat9.xyz;
        u_xlat9.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD2.www + u_xlat9.xyz;
        u_xlat9.xyz = u_xlat9.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
        u_xlat9.xyz = (bool(u_xlatb50)) ? u_xlat9.xyz : u_xlat1.xyz;
        u_xlat9.xyz = u_xlat9.xyz + (-unity_ProbeVolumeMin.xyz);
        u_xlat9.yzw = u_xlat9.xyz * unity_ProbeVolumeSizeInv.xyz;
        u_xlat50 = u_xlat9.y * 0.25;
        u_xlat51 = unity_ProbeVolumeParams.z * 0.5;
        u_xlat54 = (-unity_ProbeVolumeParams.z) * 0.5 + 0.25;
        u_xlat50 = max(u_xlat50, u_xlat51);
        u_xlat9.x = min(u_xlat54, u_xlat50);
        u_xlat10 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat9.xzw);
        u_xlat11.xyz = u_xlat9.xzw + vec3(0.25, 0.0, 0.0);
        u_xlat11 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat11.xyz);
        u_xlat9.xyz = u_xlat9.xzw + vec3(0.5, 0.0, 0.0);
        u_xlat9 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat9.xyz);
        u_xlat5.w = 1.0;
        u_xlat10.x = dot(u_xlat10, u_xlat5);
        u_xlat10.y = dot(u_xlat11, u_xlat5);
        u_xlat10.z = dot(u_xlat9, u_xlat5);
    } else {
        u_xlat5.w = 1.0;
        u_xlat10.x = dot(unity_Builtins2Array[u_xlati0 / 7].unity_SHArArray, u_xlat5);
        u_xlat10.y = dot(unity_Builtins2Array[u_xlati0 / 7].unity_SHAgArray, u_xlat5);
        u_xlat10.z = dot(unity_Builtins2Array[u_xlati0 / 7].unity_SHAbArray, u_xlat5);
    }
    u_xlat9.xyz = u_xlat10.xyz + vs_TEXCOORD4.xyz;
    u_xlat9.xyz = max(u_xlat9.xyz, vec3(0.0, 0.0, 0.0));
    u_xlatb0 = 0.0<unity_SpecCube0_ProbePosition.w;
    if(u_xlatb0){
        u_xlat0.x = dot(u_xlat7.xyz, u_xlat7.xyz);
        u_xlat0.x = inversesqrt(u_xlat0.x);
        u_xlat10.xyz = u_xlat0.xxx * u_xlat7.xyz;
        u_xlat11.xyz = (-u_xlat1.xyz) + unity_SpecCube0_BoxMax.xyz;
        u_xlat11.xyz = u_xlat11.xyz / u_xlat10.xyz;
        u_xlat12.xyz = (-u_xlat1.xyz) + unity_SpecCube0_BoxMin.xyz;
        u_xlat12.xyz = u_xlat12.xyz / u_xlat10.xyz;
        u_xlatb13.xyz = lessThan(vec4(0.0, 0.0, 0.0, 0.0), u_xlat10.xyzx).xyz;
        {
            vec4 hlslcc_movcTemp = u_xlat11;
            hlslcc_movcTemp.x = (u_xlatb13.x) ? u_xlat11.x : u_xlat12.x;
            hlslcc_movcTemp.y = (u_xlatb13.y) ? u_xlat11.y : u_xlat12.y;
            hlslcc_movcTemp.z = (u_xlatb13.z) ? u_xlat11.z : u_xlat12.z;
            u_xlat11 = hlslcc_movcTemp;
        }
        u_xlat0.x = min(u_xlat11.y, u_xlat11.x);
        u_xlat0.x = min(u_xlat11.z, u_xlat0.x);
        u_xlat11.xyz = u_xlat1.xyz + (-unity_SpecCube0_ProbePosition.xyz);
        u_xlat10.xyz = u_xlat10.xyz * u_xlat0.xxx + u_xlat11.xyz;
    } else {
        u_xlat10.xyz = u_xlat7.xyz;
    }
    u_xlat0.x = (-u_xlat52) * 0.699999988 + 1.70000005;
    u_xlat0.x = u_xlat0.x * u_xlat52;
    u_xlat0.x = u_xlat0.x * 6.0;
    u_xlat10 = textureLod(samplerCube(unity_SpecCube0, samplerunity_SpecCube0), u_xlat10.xyz, u_xlat0.x);
    u_xlat50 = u_xlat10.w + -1.0;
    u_xlat50 = unity_SpecCube0_HDR.w * u_xlat50 + 1.0;
    u_xlat50 = log2(u_xlat50);
    u_xlat50 = u_xlat50 * unity_SpecCube0_HDR.y;
    u_xlat50 = exp2(u_xlat50);
    u_xlat50 = u_xlat50 * unity_SpecCube0_HDR.x;
    u_xlat11.xyz = u_xlat10.xyz * vec3(u_xlat50);
    u_xlatb51 = unity_SpecCube0_BoxMin.w<0.999989986;
    if(u_xlatb51){
        u_xlatb51 = 0.0<unity_SpecCube1_ProbePosition.w;
        if(u_xlatb51){
            u_xlat51 = dot(u_xlat7.xyz, u_xlat7.xyz);
            u_xlat51 = inversesqrt(u_xlat51);
            u_xlat12.xyz = vec3(u_xlat51) * u_xlat7.xyz;
            u_xlat13.xyz = (-u_xlat1.xyz) + unity_SpecCube1_BoxMax.xyz;
            u_xlat13.xyz = u_xlat13.xyz / u_xlat12.xyz;
            u_xlat14.xyz = (-u_xlat1.xyz) + unity_SpecCube1_BoxMin.xyz;
            u_xlat14.xyz = u_xlat14.xyz / u_xlat12.xyz;
            u_xlatb15.xyz = lessThan(vec4(0.0, 0.0, 0.0, 0.0), u_xlat12.xyzx).xyz;
            {
                vec3 hlslcc_movcTemp = u_xlat13;
                hlslcc_movcTemp.x = (u_xlatb15.x) ? u_xlat13.x : u_xlat14.x;
                hlslcc_movcTemp.y = (u_xlatb15.y) ? u_xlat13.y : u_xlat14.y;
                hlslcc_movcTemp.z = (u_xlatb15.z) ? u_xlat13.z : u_xlat14.z;
                u_xlat13 = hlslcc_movcTemp;
            }
            u_xlat51 = min(u_xlat13.y, u_xlat13.x);
            u_xlat51 = min(u_xlat13.z, u_xlat51);
            u_xlat1.xyz = u_xlat1.xyz + (-unity_SpecCube1_ProbePosition.xyz);
            u_xlat7.xyz = u_xlat12.xyz * vec3(u_xlat51) + u_xlat1.xyz;
        }
        u_xlat7 = textureLod(samplerCube(unity_SpecCube1, samplerunity_SpecCube0), u_xlat7.xyz, u_xlat0.x);
        u_xlat0.x = u_xlat7.w + -1.0;
        u_xlat0.x = unity_SpecCube1_HDR.w * u_xlat0.x + 1.0;
        u_xlat0.x = log2(u_xlat0.x);
        u_xlat0.x = u_xlat0.x * unity_SpecCube1_HDR.y;
        u_xlat0.x = exp2(u_xlat0.x);
        u_xlat0.x = u_xlat0.x * unity_SpecCube1_HDR.x;
        u_xlat1.xyz = u_xlat7.xyz * u_xlat0.xxx;
        u_xlat7.xyz = vec3(u_xlat50) * u_xlat10.xyz + (-u_xlat1.xyz);
        u_xlat11.xyz = unity_SpecCube0_BoxMin.www * u_xlat7.xyz + u_xlat1.xyz;
    }
    u_xlat1.xyz = u_xlat3.xyz * vs_COLOR0.xyz + vec3(-0.0399999991, -0.0399999991, -0.0399999991);
    u_xlat1.xyz = vec3(_Metallic) * u_xlat1.xyz + vec3(0.0399999991, 0.0399999991, 0.0399999991);
    u_xlat0.x = (-_Metallic) * 0.959999979 + 0.959999979;
    u_xlat3.xyz = u_xlat0.xxx * u_xlat4.xyz;
    u_xlat16.xyz = u_xlat16.xyz * vec3(u_xlat49) + _WorldSpaceLightPos0.xyz;
    u_xlat49 = dot(u_xlat16.xyz, u_xlat16.xyz);
    u_xlat49 = max(u_xlat49, 0.00100000005);
    u_xlat49 = inversesqrt(u_xlat49);
    u_xlat16.xyz = u_xlat16.xyz * vec3(u_xlat49);
    u_xlat49 = dot(u_xlat5.xyz, u_xlat2.xyz);
    u_xlat2.x = dot(u_xlat5.xyz, _WorldSpaceLightPos0.xyz);
    u_xlat2.x = clamp(u_xlat2.x, 0.0, 1.0);
    u_xlat18 = dot(u_xlat5.xyz, u_xlat16.xyz);
    u_xlat18 = clamp(u_xlat18, 0.0, 1.0);
    u_xlat16.x = dot(_WorldSpaceLightPos0.xyz, u_xlat16.xyz);
    u_xlat16.x = clamp(u_xlat16.x, 0.0, 1.0);
    u_xlat32 = u_xlat16.x * u_xlat16.x;
    u_xlat32 = dot(vec2(u_xlat32), vec2(u_xlat52));
    u_xlat32 = u_xlat32 + -0.5;
    u_xlat48 = (-u_xlat2.x) + 1.0;
    u_xlat34 = u_xlat48 * u_xlat48;
    u_xlat34 = u_xlat34 * u_xlat34;
    u_xlat48 = u_xlat48 * u_xlat34;
    u_xlat48 = u_xlat32 * u_xlat48 + 1.0;
    u_xlat34 = -abs(u_xlat49) + 1.0;
    u_xlat50 = u_xlat34 * u_xlat34;
    u_xlat50 = u_xlat50 * u_xlat50;
    u_xlat34 = u_xlat34 * u_xlat50;
    u_xlat32 = u_xlat32 * u_xlat34 + 1.0;
    u_xlat32 = u_xlat32 * u_xlat48;
    u_xlat32 = u_xlat2.x * u_xlat32;
    u_xlat48 = u_xlat52 * u_xlat52;
    u_xlat48 = max(u_xlat48, 0.00200000009);
    u_xlat50 = (-u_xlat48) + 1.0;
    u_xlat51 = abs(u_xlat49) * u_xlat50 + u_xlat48;
    u_xlat50 = u_xlat2.x * u_xlat50 + u_xlat48;
    u_xlat49 = abs(u_xlat49) * u_xlat50;
    u_xlat49 = u_xlat2.x * u_xlat51 + u_xlat49;
    u_xlat49 = u_xlat49 + 9.99999975e-06;
    u_xlat49 = 0.5 / u_xlat49;
    u_xlat50 = u_xlat48 * u_xlat48;
    u_xlat51 = u_xlat18 * u_xlat50 + (-u_xlat18);
    u_xlat18 = u_xlat51 * u_xlat18 + 1.0;
    u_xlat50 = u_xlat50 * 0.318309873;
    u_xlat18 = u_xlat18 * u_xlat18 + 1.00000001e-07;
    u_xlat18 = u_xlat50 / u_xlat18;
    u_xlat49 = u_xlat49 * u_xlat18;
    u_xlat49 = u_xlat2.x * u_xlat49;
    u_xlat49 = u_xlat49 * 3.14159274;
    u_xlat49 = max(u_xlat49, 0.0);
    u_xlat48 = u_xlat48 * u_xlat48 + 1.0;
    u_xlat48 = float(1.0) / u_xlat48;
    u_xlat2.x = dot(u_xlat1.xyz, u_xlat1.xyz);
    u_xlatb2 = u_xlat2.x!=0.0;
    u_xlat2.x = u_xlatb2 ? 1.0 : float(0.0);
    u_xlat49 = u_xlat49 * u_xlat2.x;
    u_xlat0.x = (-u_xlat0.x) + _Glossiness;
    u_xlat0.x = u_xlat0.x + 1.0;
    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
    u_xlat2.xyw = u_xlat8.xyz * vec3(u_xlat32) + u_xlat9.xyz;
    u_xlat4.xyz = u_xlat8.xyz * vec3(u_xlat49);
    u_xlat16.x = (-u_xlat16.x) + 1.0;
    u_xlat32 = u_xlat16.x * u_xlat16.x;
    u_xlat32 = u_xlat32 * u_xlat32;
    u_xlat16.x = u_xlat16.x * u_xlat32;
    u_xlat5.xyz = (-u_xlat1.xyz) + vec3(1.0, 1.0, 1.0);
    u_xlat5.xyz = u_xlat5.xyz * u_xlat16.xxx + u_xlat1.xyz;
    u_xlat4.xyz = u_xlat4.xyz * u_xlat5.xyz;
    u_xlat2.xyw = u_xlat3.xyz * u_xlat2.xyw + u_xlat4.xyz;
    u_xlat16.xyz = u_xlat11.xyz * vec3(u_xlat48);
    u_xlat3.xyz = (-u_xlat1.xyz) + u_xlat0.xxx;
    u_xlat1.xyz = vec3(u_xlat34) * u_xlat3.xyz + u_xlat1.xyz;
    u_xlat0.xyz = u_xlat16.xyz * u_xlat1.xyz + u_xlat2.xyw;
    SV_Target0.xyz = u_xlat6.xyz * vec3(_EmissionColor.x, _EmissionColor.y, _EmissionColor.z) + u_xlat0.xyz;
    SV_Target0.w = 1.0;
    return;
}

