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
	vec4 _ProjectionParams;
	vec4 _WorldSpaceLightPos0;
	vec4 unity_OcclusionMaskSelector;
	vec4 unity_FogColor;
	vec4 unity_FogParams;
	vec4 unity_ProbeVolumeParams;
	mat4x4 unity_ProbeVolumeWorldToObject;
	vec3 unity_ProbeVolumeSizeInv;
	vec3 unity_ProbeVolumeMin;
	vec4 _LightColor0;
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
layout(location = 1) in highp float vs_TEXCOORD4;
layout(location = 2) in highp vec3 vs_TEXCOORD1;
layout(location = 3) in highp vec3 vs_TEXCOORD2;
layout(location = 4) in highp vec3 vs_TEXCOORD3;
layout(location = 5) flat in highp uint vs_SV_InstanceID0;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 2) uniform highp  sampler samplerunity_ProbeVolumeSH;
layout(set = 0, binding = 3) uniform mediump  sampler sampler_MainTex;
void main()
{
vec3 u_xlat0;
int u_xlati0;
vec3 u_xlat1;
bool u_xlatb1;
vec4 u_xlat2;
vec4 u_xlat3;
vec4 u_xlat4;
vec4 u_xlat5;
vec3 u_xlat6;
vec3 u_xlat7;
bool u_xlatb7;
float u_xlat8;
float u_xlat13;
float u_xlat18;
    u_xlati0 = int(vs_SV_InstanceID0) + unity_BaseInstanceID;
    u_xlat6.xyz = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD0.xy).xyz;
    u_xlat6.xyz = u_xlat6.xyz * _Color.xyz;
    u_xlati0 = u_xlati0 * 7;
    u_xlatb1 = unity_ProbeVolumeParams.x==1.0;
    if(u_xlatb1){
        u_xlatb7 = unity_ProbeVolumeParams.y==1.0;
        u_xlat2.xyz = vs_TEXCOORD2.yyy * unity_ProbeVolumeWorldToObject[1].xyz;
        u_xlat2.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD2.xxx + u_xlat2.xyz;
        u_xlat2.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD2.zzz + u_xlat2.xyz;
        u_xlat2.xyz = u_xlat2.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
        u_xlat7.xyz = (bool(u_xlatb7)) ? u_xlat2.xyz : vs_TEXCOORD2.xyz;
        u_xlat7.xyz = u_xlat7.xyz + (-unity_ProbeVolumeMin.xyz);
        u_xlat2.yzw = u_xlat7.xyz * unity_ProbeVolumeSizeInv.xyz;
        u_xlat7.x = u_xlat2.y * 0.25 + 0.75;
        u_xlat13 = unity_ProbeVolumeParams.z * 0.5 + 0.75;
        u_xlat2.x = max(u_xlat13, u_xlat7.x);
        u_xlat2 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat2.xzw);
    } else {
        u_xlat2 = unity_Builtins2Array[u_xlati0 / 7].unity_SHCArray.wwww;
    }
    u_xlat7.x = dot(u_xlat2, unity_OcclusionMaskSelector);
    u_xlat7.x = clamp(u_xlat7.x, 0.0, 1.0);
    u_xlat7.xyz = u_xlat7.xxx * _LightColor0.xyz;
    if(u_xlatb1){
        u_xlatb1 = unity_ProbeVolumeParams.y==1.0;
        u_xlat2.xyz = vs_TEXCOORD2.yyy * unity_ProbeVolumeWorldToObject[1].xyz;
        u_xlat2.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD2.xxx + u_xlat2.xyz;
        u_xlat2.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD2.zzz + u_xlat2.xyz;
        u_xlat2.xyz = u_xlat2.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
        u_xlat2.xyz = (bool(u_xlatb1)) ? u_xlat2.xyz : vs_TEXCOORD2.xyz;
        u_xlat2.xyz = u_xlat2.xyz + (-unity_ProbeVolumeMin.xyz);
        u_xlat2.yzw = u_xlat2.xyz * unity_ProbeVolumeSizeInv.xyz;
        u_xlat1.x = u_xlat2.y * 0.25;
        u_xlat8 = unity_ProbeVolumeParams.z * 0.5;
        u_xlat3.x = (-unity_ProbeVolumeParams.z) * 0.5 + 0.25;
        u_xlat1.x = max(u_xlat1.x, u_xlat8);
        u_xlat2.x = min(u_xlat3.x, u_xlat1.x);
        u_xlat3 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat2.xzw);
        u_xlat4.xyz = u_xlat2.xzw + vec3(0.25, 0.0, 0.0);
        u_xlat4 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat4.xyz);
        u_xlat2.xyz = u_xlat2.xzw + vec3(0.5, 0.0, 0.0);
        u_xlat2 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat2.xyz);
        u_xlat5.xyz = vs_TEXCOORD1.xyz;
        u_xlat5.w = 1.0;
        u_xlat3.x = dot(u_xlat3, u_xlat5);
        u_xlat3.y = dot(u_xlat4, u_xlat5);
        u_xlat3.z = dot(u_xlat2, u_xlat5);
    } else {
        u_xlat2.xyz = vs_TEXCOORD1.xyz;
        u_xlat2.w = 1.0;
        u_xlat3.x = dot(unity_Builtins2Array[u_xlati0 / 7].unity_SHArArray, u_xlat2);
        u_xlat3.y = dot(unity_Builtins2Array[u_xlati0 / 7].unity_SHAgArray, u_xlat2);
        u_xlat3.z = dot(unity_Builtins2Array[u_xlati0 / 7].unity_SHAbArray, u_xlat2);
    }
    u_xlat2.xyz = u_xlat3.xyz + vs_TEXCOORD3.xyz;
    u_xlat2.xyz = max(u_xlat2.xyz, vec3(0.0, 0.0, 0.0));
    u_xlat0.x = dot(vs_TEXCOORD1.xyz, _WorldSpaceLightPos0.xyz);
    u_xlat0.x = max(u_xlat0.x, 0.0);
    u_xlat1.xyz = u_xlat6.xyz * u_xlat7.xyz;
    u_xlat6.xyz = u_xlat6.xyz * u_xlat2.xyz;
    u_xlat0.xyz = u_xlat1.xyz * u_xlat0.xxx + u_xlat6.xyz;
    u_xlat18 = vs_TEXCOORD4 / _ProjectionParams.y;
    u_xlat18 = (-u_xlat18) + 1.0;
    u_xlat18 = u_xlat18 * _ProjectionParams.z;
    u_xlat18 = max(u_xlat18, 0.0);
    u_xlat18 = u_xlat18 * unity_FogParams.x;
    u_xlat18 = u_xlat18 * (-u_xlat18);
    u_xlat18 = exp2(u_xlat18);
    u_xlat0.xyz = u_xlat0.xyz + (-unity_FogColor.xyz);
    SV_Target0.xyz = vec3(u_xlat18) * u_xlat0.xyz + unity_FogColor.xyz;
    SV_Target0.w = 1.0;
    return;
}

