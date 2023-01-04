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
	float _Metallic;
	float _Glossiness;
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
layout(set = 0, binding = 4) uniform mediump textureCube unity_SpecCube0;
layout(set = 0, binding = 5) uniform mediump textureCube unity_SpecCube1;
layout(set = 0, binding = 6) uniform highp texture3D unity_ProbeVolumeSH;
layout(location = 0) in highp vec3 vs_TEXCOORD0;
layout(location = 1) in highp vec3 vs_TEXCOORD1;
layout(location = 2) in highp vec4 vs_COLOR0;
layout(location = 3) in highp vec2 vs_TEXCOORD2;
layout(location = 4) in highp vec3 vs_TEXCOORD3;
layout(location = 5) flat in highp uint vs_SV_InstanceID0;
layout(location = 0) out highp vec4 SV_Target0;
float u_xlat0;
int u_xlati0;
bool u_xlatb0;
vec3 u_xlat1;
vec3 u_xlat2;
vec3 u_xlat3;
vec4 u_xlat4;
vec3 u_xlat5;
vec4 u_xlat6;
vec4 u_xlat7;
vec4 u_xlat8;
vec4 u_xlat9;
vec3 u_xlat10;
bvec3 u_xlatb10;
vec3 u_xlat11;
bvec3 u_xlatb12;
vec3 u_xlat13;
vec3 u_xlat14;
bool u_xlatb14;
vec3 u_xlat17;
float u_xlat26;
float u_xlat27;
float u_xlat39;
float u_xlat40;
float u_xlat41;
bool u_xlatb41;
float u_xlat42;
bool u_xlatb42;
float u_xlat44;
layout(set = 0, binding = 7) uniform mediump  sampler samplerunity_SpecCube0;
layout(set = 0, binding = 8) uniform highp  sampler samplerunity_ProbeVolumeSH;
layout(set = 0, binding = 9) uniform mediump  sampler sampler_MainTex;
void main()
{
    u_xlati0 = int(vs_SV_InstanceID0) + unity_BaseInstanceID;
    u_xlat13.xyz = (-vs_TEXCOORD1.xyz) + _WorldSpaceCameraPos.xyz;
    u_xlat1.x = dot(u_xlat13.xyz, u_xlat13.xyz);
    u_xlat1.x = inversesqrt(u_xlat1.x);
    u_xlat14.xyz = u_xlat13.xyz * u_xlat1.xxx;
    u_xlat2.xyz = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD2.xy).xyz;
    u_xlat2.xyz = u_xlat2.xyz * _Color.xyz;
    u_xlat3.xyz = u_xlat2.xyz * vs_COLOR0.xyz;
    u_xlati0 = u_xlati0 * 7;
    u_xlatb41 = unity_ProbeVolumeParams.x==1.0;
    if(u_xlatb41){
        u_xlatb42 = unity_ProbeVolumeParams.y==1.0;
        u_xlat4.xyz = vs_TEXCOORD1.yyy * unity_ProbeVolumeWorldToObject[1].xyz;
        u_xlat4.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD1.xxx + u_xlat4.xyz;
        u_xlat4.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD1.zzz + u_xlat4.xyz;
        u_xlat4.xyz = u_xlat4.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
        u_xlat4.xyz = (bool(u_xlatb42)) ? u_xlat4.xyz : vs_TEXCOORD1.xyz;
        u_xlat4.xyz = u_xlat4.xyz + (-unity_ProbeVolumeMin.xyz);
        u_xlat4.yzw = u_xlat4.xyz * unity_ProbeVolumeSizeInv.xyz;
        u_xlat42 = u_xlat4.y * 0.25 + 0.75;
        u_xlat17.x = unity_ProbeVolumeParams.z * 0.5 + 0.75;
        u_xlat4.x = max(u_xlat42, u_xlat17.x);
        u_xlat4 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat4.xzw);
    } else {
        u_xlat4 = unity_Builtins2Array[u_xlati0 / 7].unity_SHCArray.wwww;
    }
    u_xlat42 = dot(u_xlat4, unity_OcclusionMaskSelector);
    u_xlat42 = clamp(u_xlat42, 0.0, 1.0);
    u_xlat4.x = (-_Glossiness) + 1.0;
    u_xlat17.x = dot((-u_xlat14.xyz), vs_TEXCOORD0.xyz);
    u_xlat17.x = u_xlat17.x + u_xlat17.x;
    u_xlat17.xyz = vs_TEXCOORD0.xyz * (-u_xlat17.xxx) + (-u_xlat14.xyz);
    u_xlat5.xyz = vec3(u_xlat42) * _LightColor0.xyz;
    if(u_xlatb41){
        u_xlatb41 = unity_ProbeVolumeParams.y==1.0;
        u_xlat6.xyz = vs_TEXCOORD1.yyy * unity_ProbeVolumeWorldToObject[1].xyz;
        u_xlat6.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD1.xxx + u_xlat6.xyz;
        u_xlat6.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD1.zzz + u_xlat6.xyz;
        u_xlat6.xyz = u_xlat6.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
        u_xlat6.xyz = (bool(u_xlatb41)) ? u_xlat6.xyz : vs_TEXCOORD1.xyz;
        u_xlat6.xyz = u_xlat6.xyz + (-unity_ProbeVolumeMin.xyz);
        u_xlat6.yzw = u_xlat6.xyz * unity_ProbeVolumeSizeInv.xyz;
        u_xlat41 = u_xlat6.y * 0.25;
        u_xlat42 = unity_ProbeVolumeParams.z * 0.5;
        u_xlat44 = (-unity_ProbeVolumeParams.z) * 0.5 + 0.25;
        u_xlat41 = max(u_xlat41, u_xlat42);
        u_xlat6.x = min(u_xlat44, u_xlat41);
        u_xlat7 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat6.xzw);
        u_xlat8.xyz = u_xlat6.xzw + vec3(0.25, 0.0, 0.0);
        u_xlat8 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat8.xyz);
        u_xlat6.xyz = u_xlat6.xzw + vec3(0.5, 0.0, 0.0);
        u_xlat6 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat6.xyz);
        u_xlat9.xyz = vs_TEXCOORD0.xyz;
        u_xlat9.w = 1.0;
        u_xlat7.x = dot(u_xlat7, u_xlat9);
        u_xlat7.y = dot(u_xlat8, u_xlat9);
        u_xlat7.z = dot(u_xlat6, u_xlat9);
    } else {
        u_xlat6.xyz = vs_TEXCOORD0.xyz;
        u_xlat6.w = 1.0;
        u_xlat7.x = dot(unity_Builtins2Array[u_xlati0 / 7].unity_SHArArray, u_xlat6);
        u_xlat7.y = dot(unity_Builtins2Array[u_xlati0 / 7].unity_SHAgArray, u_xlat6);
        u_xlat7.z = dot(unity_Builtins2Array[u_xlati0 / 7].unity_SHAbArray, u_xlat6);
    }
    u_xlat6.xyz = u_xlat7.xyz + vs_TEXCOORD3.xyz;
    u_xlat6.xyz = max(u_xlat6.xyz, vec3(0.0, 0.0, 0.0));
    u_xlatb0 = 0.0<unity_SpecCube0_ProbePosition.w;
    if(u_xlatb0){
        u_xlat0 = dot(u_xlat17.xyz, u_xlat17.xyz);
        u_xlat0 = inversesqrt(u_xlat0);
        u_xlat7.xyz = vec3(u_xlat0) * u_xlat17.xyz;
        u_xlat8.xyz = (-vs_TEXCOORD1.xyz) + unity_SpecCube0_BoxMax.xyz;
        u_xlat8.xyz = u_xlat8.xyz / u_xlat7.xyz;
        u_xlat9.xyz = (-vs_TEXCOORD1.xyz) + unity_SpecCube0_BoxMin.xyz;
        u_xlat9.xyz = u_xlat9.xyz / u_xlat7.xyz;
        u_xlatb10.xyz = lessThan(vec4(0.0, 0.0, 0.0, 0.0), u_xlat7.xyzx).xyz;
        {
            vec4 hlslcc_movcTemp = u_xlat8;
            hlslcc_movcTemp.x = (u_xlatb10.x) ? u_xlat8.x : u_xlat9.x;
            hlslcc_movcTemp.y = (u_xlatb10.y) ? u_xlat8.y : u_xlat9.y;
            hlslcc_movcTemp.z = (u_xlatb10.z) ? u_xlat8.z : u_xlat9.z;
            u_xlat8 = hlslcc_movcTemp;
        }
        u_xlat0 = min(u_xlat8.y, u_xlat8.x);
        u_xlat0 = min(u_xlat8.z, u_xlat0);
        u_xlat8.xyz = vs_TEXCOORD1.xyz + (-unity_SpecCube0_ProbePosition.xyz);
        u_xlat7.xyz = u_xlat7.xyz * vec3(u_xlat0) + u_xlat8.xyz;
    } else {
        u_xlat7.xyz = u_xlat17.xyz;
    }
    u_xlat0 = (-u_xlat4.x) * 0.699999988 + 1.70000005;
    u_xlat0 = u_xlat0 * u_xlat4.x;
    u_xlat0 = u_xlat0 * 6.0;
    u_xlat7 = textureLod(samplerCube(unity_SpecCube0, samplerunity_SpecCube0), u_xlat7.xyz, u_xlat0);
    u_xlat41 = u_xlat7.w + -1.0;
    u_xlat41 = unity_SpecCube0_HDR.w * u_xlat41 + 1.0;
    u_xlat41 = log2(u_xlat41);
    u_xlat41 = u_xlat41 * unity_SpecCube0_HDR.y;
    u_xlat41 = exp2(u_xlat41);
    u_xlat41 = u_xlat41 * unity_SpecCube0_HDR.x;
    u_xlat8.xyz = u_xlat7.xyz * vec3(u_xlat41);
    u_xlatb42 = unity_SpecCube0_BoxMin.w<0.999989986;
    if(u_xlatb42){
        u_xlatb42 = 0.0<unity_SpecCube1_ProbePosition.w;
        if(u_xlatb42){
            u_xlat42 = dot(u_xlat17.xyz, u_xlat17.xyz);
            u_xlat42 = inversesqrt(u_xlat42);
            u_xlat9.xyz = vec3(u_xlat42) * u_xlat17.xyz;
            u_xlat10.xyz = (-vs_TEXCOORD1.xyz) + unity_SpecCube1_BoxMax.xyz;
            u_xlat10.xyz = u_xlat10.xyz / u_xlat9.xyz;
            u_xlat11.xyz = (-vs_TEXCOORD1.xyz) + unity_SpecCube1_BoxMin.xyz;
            u_xlat11.xyz = u_xlat11.xyz / u_xlat9.xyz;
            u_xlatb12.xyz = lessThan(vec4(0.0, 0.0, 0.0, 0.0), u_xlat9.xyzx).xyz;
            {
                vec3 hlslcc_movcTemp = u_xlat10;
                hlslcc_movcTemp.x = (u_xlatb12.x) ? u_xlat10.x : u_xlat11.x;
                hlslcc_movcTemp.y = (u_xlatb12.y) ? u_xlat10.y : u_xlat11.y;
                hlslcc_movcTemp.z = (u_xlatb12.z) ? u_xlat10.z : u_xlat11.z;
                u_xlat10 = hlslcc_movcTemp;
            }
            u_xlat42 = min(u_xlat10.y, u_xlat10.x);
            u_xlat42 = min(u_xlat10.z, u_xlat42);
            u_xlat10.xyz = vs_TEXCOORD1.xyz + (-unity_SpecCube1_ProbePosition.xyz);
            u_xlat17.xyz = u_xlat9.xyz * vec3(u_xlat42) + u_xlat10.xyz;
        }
        u_xlat9 = textureLod(samplerCube(unity_SpecCube1, samplerunity_SpecCube0), u_xlat17.xyz, u_xlat0);
        u_xlat0 = u_xlat9.w + -1.0;
        u_xlat0 = unity_SpecCube1_HDR.w * u_xlat0 + 1.0;
        u_xlat0 = log2(u_xlat0);
        u_xlat0 = u_xlat0 * unity_SpecCube1_HDR.y;
        u_xlat0 = exp2(u_xlat0);
        u_xlat0 = u_xlat0 * unity_SpecCube1_HDR.x;
        u_xlat17.xyz = u_xlat9.xyz * vec3(u_xlat0);
        u_xlat7.xyz = vec3(u_xlat41) * u_xlat7.xyz + (-u_xlat17.xyz);
        u_xlat8.xyz = unity_SpecCube0_BoxMin.www * u_xlat7.xyz + u_xlat17.xyz;
    }
    u_xlat0 = dot(vs_TEXCOORD0.xyz, vs_TEXCOORD0.xyz);
    u_xlat0 = inversesqrt(u_xlat0);
    u_xlat17.xyz = vec3(u_xlat0) * vs_TEXCOORD0.xyz;
    u_xlat2.xyz = u_xlat2.xyz * vs_COLOR0.xyz + vec3(-0.0399999991, -0.0399999991, -0.0399999991);
    u_xlat2.xyz = vec3(_Metallic) * u_xlat2.xyz + vec3(0.0399999991, 0.0399999991, 0.0399999991);
    u_xlat0 = (-_Metallic) * 0.959999979 + 0.959999979;
    u_xlat3.xyz = vec3(u_xlat0) * u_xlat3.xyz;
    u_xlat13.xyz = u_xlat13.xyz * u_xlat1.xxx + _WorldSpaceLightPos0.xyz;
    u_xlat1.x = dot(u_xlat13.xyz, u_xlat13.xyz);
    u_xlat1.x = max(u_xlat1.x, 0.00100000005);
    u_xlat1.x = inversesqrt(u_xlat1.x);
    u_xlat13.xyz = u_xlat13.xyz * u_xlat1.xxx;
    u_xlat1.x = dot(u_xlat17.xyz, u_xlat14.xyz);
    u_xlat14.x = dot(u_xlat17.xyz, _WorldSpaceLightPos0.xyz);
    u_xlat14.x = clamp(u_xlat14.x, 0.0, 1.0);
    u_xlat27 = dot(u_xlat17.xyz, u_xlat13.xyz);
    u_xlat27 = clamp(u_xlat27, 0.0, 1.0);
    u_xlat13.x = dot(_WorldSpaceLightPos0.xyz, u_xlat13.xyz);
    u_xlat13.x = clamp(u_xlat13.x, 0.0, 1.0);
    u_xlat26 = u_xlat13.x * u_xlat13.x;
    u_xlat26 = dot(vec2(u_xlat26), u_xlat4.xx);
    u_xlat26 = u_xlat26 + -0.5;
    u_xlat39 = (-u_xlat14.x) + 1.0;
    u_xlat40 = u_xlat39 * u_xlat39;
    u_xlat40 = u_xlat40 * u_xlat40;
    u_xlat39 = u_xlat39 * u_xlat40;
    u_xlat39 = u_xlat26 * u_xlat39 + 1.0;
    u_xlat40 = -abs(u_xlat1.x) + 1.0;
    u_xlat41 = u_xlat40 * u_xlat40;
    u_xlat41 = u_xlat41 * u_xlat41;
    u_xlat40 = u_xlat40 * u_xlat41;
    u_xlat26 = u_xlat26 * u_xlat40 + 1.0;
    u_xlat26 = u_xlat26 * u_xlat39;
    u_xlat26 = u_xlat14.x * u_xlat26;
    u_xlat39 = u_xlat4.x * u_xlat4.x;
    u_xlat39 = max(u_xlat39, 0.00200000009);
    u_xlat41 = (-u_xlat39) + 1.0;
    u_xlat42 = abs(u_xlat1.x) * u_xlat41 + u_xlat39;
    u_xlat41 = u_xlat14.x * u_xlat41 + u_xlat39;
    u_xlat1.x = abs(u_xlat1.x) * u_xlat41;
    u_xlat1.x = u_xlat14.x * u_xlat42 + u_xlat1.x;
    u_xlat1.x = u_xlat1.x + 9.99999975e-06;
    u_xlat1.x = 0.5 / u_xlat1.x;
    u_xlat41 = u_xlat39 * u_xlat39;
    u_xlat42 = u_xlat27 * u_xlat41 + (-u_xlat27);
    u_xlat27 = u_xlat42 * u_xlat27 + 1.0;
    u_xlat41 = u_xlat41 * 0.318309873;
    u_xlat27 = u_xlat27 * u_xlat27 + 1.00000001e-07;
    u_xlat27 = u_xlat41 / u_xlat27;
    u_xlat1.x = u_xlat27 * u_xlat1.x;
    u_xlat1.x = u_xlat14.x * u_xlat1.x;
    u_xlat1.x = u_xlat1.x * 3.14159274;
    u_xlat1.x = max(u_xlat1.x, 0.0);
    u_xlat39 = u_xlat39 * u_xlat39 + 1.0;
    u_xlat39 = float(1.0) / u_xlat39;
    u_xlat14.x = dot(u_xlat2.xyz, u_xlat2.xyz);
    u_xlatb14 = u_xlat14.x!=0.0;
    u_xlat14.x = u_xlatb14 ? 1.0 : float(0.0);
    u_xlat1.x = u_xlat14.x * u_xlat1.x;
    u_xlat0 = (-u_xlat0) + _Glossiness;
    u_xlat0 = u_xlat0 + 1.0;
    u_xlat0 = clamp(u_xlat0, 0.0, 1.0);
    u_xlat4.xyz = u_xlat5.xyz * vec3(u_xlat26) + u_xlat6.xyz;
    u_xlat1.xyz = u_xlat5.xyz * u_xlat1.xxx;
    u_xlat13.x = (-u_xlat13.x) + 1.0;
    u_xlat26 = u_xlat13.x * u_xlat13.x;
    u_xlat26 = u_xlat26 * u_xlat26;
    u_xlat13.x = u_xlat13.x * u_xlat26;
    u_xlat5.xyz = (-u_xlat2.xyz) + vec3(1.0, 1.0, 1.0);
    u_xlat5.xyz = u_xlat5.xyz * u_xlat13.xxx + u_xlat2.xyz;
    u_xlat1.xyz = u_xlat1.xyz * u_xlat5.xyz;
    u_xlat1.xyz = u_xlat3.xyz * u_xlat4.xyz + u_xlat1.xyz;
    u_xlat13.xyz = u_xlat8.xyz * vec3(u_xlat39);
    u_xlat3.xyz = (-u_xlat2.xyz) + vec3(u_xlat0);
    u_xlat2.xyz = vec3(u_xlat40) * u_xlat3.xyz + u_xlat2.xyz;
    SV_Target0.xyz = u_xlat13.xyz * u_xlat2.xyz + u_xlat1.xyz;
    SV_Target0.w = 1.0;
    return;
}

