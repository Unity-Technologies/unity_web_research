#version 440
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shading_language_420pack : require
const int UNITY_RUNTIME_INSTANCING_ARRAY_SIZE = 59495;

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
	vec4 unity_ProbeVolumeParams;
	mat4x4 unity_ProbeVolumeWorldToObject;
	vec3 unity_ProbeVolumeSizeInv;
	vec3 unity_ProbeVolumeMin;
	vec4 _Color;
};
layout(set = 1, binding = 1, std140) uniform UnityDrawCallInfo {
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
layout(set = 1, binding = 2, std140) uniform UnityInstancing_PerDraw2 {
	unity_Builtins2Array_Type unity_Builtins2Array[UNITY_RUNTIME_INSTANCING_ARRAY_SIZE];
};
layout(set = 0, binding = 0) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 1) uniform highp texture3D unity_ProbeVolumeSH;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 1) in highp vec3 vs_TEXCOORD1;
layout(location = 2) in highp vec3 vs_TEXCOORD2;
layout(location = 3) in highp vec3 vs_TEXCOORD4;
layout(location = 4) flat in highp uint vs_SV_InstanceID0;
layout(location = 0) out highp vec4 SV_Target0;
layout(location = 1) out highp vec4 SV_Target1;
layout(location = 2) out highp vec4 SV_Target2;
layout(location = 3) out highp vec4 SV_Target3;
layout(set = 0, binding = 2) uniform highp  sampler samplerunity_ProbeVolumeSH;
layout(set = 0, binding = 3) uniform mediump  sampler sampler_MainTex;
void main()
{
vec3 u_xlat0;
vec4 u_xlat1;
vec4 u_xlat2;
vec4 u_xlat3;
vec4 u_xlat4;
float u_xlat6;
float u_xlat15;
int u_xlati15;
bool u_xlatb15;
    u_xlat0.xyz = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD0.xy).xyz;
    u_xlat0.xyz = u_xlat0.xyz * _Color.xyz;
    u_xlatb15 = unity_ProbeVolumeParams.x==1.0;
    if(u_xlatb15){
        u_xlatb15 = unity_ProbeVolumeParams.y==1.0;
        u_xlat1.xyz = vs_TEXCOORD2.yyy * unity_ProbeVolumeWorldToObject[1].xyz;
        u_xlat1.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD2.xxx + u_xlat1.xyz;
        u_xlat1.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD2.zzz + u_xlat1.xyz;
        u_xlat1.xyz = u_xlat1.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
        u_xlat1.xyz = (bool(u_xlatb15)) ? u_xlat1.xyz : vs_TEXCOORD2.xyz;
        u_xlat1.xyz = u_xlat1.xyz + (-unity_ProbeVolumeMin.xyz);
        u_xlat1.yzw = u_xlat1.xyz * unity_ProbeVolumeSizeInv.xyz;
        u_xlat15 = u_xlat1.y * 0.25;
        u_xlat6 = unity_ProbeVolumeParams.z * 0.5;
        u_xlat2.x = (-unity_ProbeVolumeParams.z) * 0.5 + 0.25;
        u_xlat15 = max(u_xlat15, u_xlat6);
        u_xlat1.x = min(u_xlat2.x, u_xlat15);
        u_xlat2 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat1.xzw);
        u_xlat3.xyz = u_xlat1.xzw + vec3(0.25, 0.0, 0.0);
        u_xlat3 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat3.xyz);
        u_xlat1.xyz = u_xlat1.xzw + vec3(0.5, 0.0, 0.0);
        u_xlat1 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat1.xyz);
        u_xlat4.xyz = vs_TEXCOORD1.xyz;
        u_xlat4.w = 1.0;
        u_xlat2.x = dot(u_xlat2, u_xlat4);
        u_xlat2.y = dot(u_xlat3, u_xlat4);
        u_xlat2.z = dot(u_xlat1, u_xlat4);
    } else {
        u_xlati15 = int(vs_SV_InstanceID0) + unity_BaseInstanceID;
        u_xlati15 = u_xlati15 * 7;
        u_xlat1.xyz = vs_TEXCOORD1.xyz;
        u_xlat1.w = 1.0;
        u_xlat2.x = dot(unity_Builtins2Array[u_xlati15 / 7].unity_SHArArray, u_xlat1);
        u_xlat2.y = dot(unity_Builtins2Array[u_xlati15 / 7].unity_SHAgArray, u_xlat1);
        u_xlat2.z = dot(unity_Builtins2Array[u_xlati15 / 7].unity_SHAbArray, u_xlat1);
    }
    u_xlat1.xyz = u_xlat2.xyz + vs_TEXCOORD4.xyz;
    u_xlat1.xyz = max(u_xlat1.xyz, vec3(0.0, 0.0, 0.0));
    u_xlat1.xyz = u_xlat0.xyz * u_xlat1.xyz;
    SV_Target3.xyz = exp2((-u_xlat1.xyz));
    SV_Target0.xyz = u_xlat0.xyz;
    SV_Target0.w = 1.0;
    SV_Target1 = vec4(0.0, 0.0, 0.0, 0.0);
    SV_Target2.xyz = vs_TEXCOORD1.xyz * vec3(0.5, 0.5, 0.5) + vec3(0.5, 0.5, 0.5);
    SV_Target2.w = 1.0;
    SV_Target3.w = 1.0;
    return;
}

