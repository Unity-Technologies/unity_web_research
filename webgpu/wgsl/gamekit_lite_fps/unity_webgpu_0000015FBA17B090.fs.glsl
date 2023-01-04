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
	vec4 unity_ProbeVolumeParams;
	mat4x4 unity_ProbeVolumeWorldToObject;
	vec3 unity_ProbeVolumeSizeInv;
	vec3 unity_ProbeVolumeMin;
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
layout(set = 0, binding = 4) uniform highp texture3D unity_ProbeVolumeSH;
layout(location = 0) in highp vec3 vs_TEXCOORD0;
layout(location = 1) in highp vec3 vs_TEXCOORD1;
layout(location = 2) in highp vec4 vs_COLOR0;
layout(location = 3) in highp vec2 vs_TEXCOORD2;
layout(location = 4) in highp vec3 vs_TEXCOORD5;
layout(location = 5) flat in highp uint vs_SV_InstanceID0;
layout(location = 0) out highp vec4 SV_Target0;
layout(location = 1) out highp vec4 SV_Target1;
layout(location = 2) out highp vec4 SV_Target2;
layout(location = 3) out highp vec4 SV_Target3;
vec3 u_xlat0;
vec3 u_xlat1;
vec4 u_xlat2;
vec4 u_xlat3;
vec4 u_xlat4;
vec4 u_xlat5;
float u_xlat8;
float u_xlat18;
int u_xlati18;
bool u_xlatb18;
float u_xlat19;
layout(set = 0, binding = 5) uniform highp  sampler samplerunity_ProbeVolumeSH;
layout(set = 0, binding = 6) uniform mediump  sampler sampler_MainTex;
void main()
{
    u_xlat0.xyz = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD2.xy).xyz;
    u_xlat0.xyz = u_xlat0.xyz * _Color.xyz;
    u_xlat1.xyz = u_xlat0.xyz * vs_COLOR0.xyz;
    u_xlatb18 = unity_ProbeVolumeParams.x==1.0;
    if(u_xlatb18){
        u_xlatb18 = unity_ProbeVolumeParams.y==1.0;
        u_xlat2.xyz = vs_TEXCOORD1.yyy * unity_ProbeVolumeWorldToObject[1].xyz;
        u_xlat2.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD1.xxx + u_xlat2.xyz;
        u_xlat2.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD1.zzz + u_xlat2.xyz;
        u_xlat2.xyz = u_xlat2.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
        u_xlat2.xyz = (bool(u_xlatb18)) ? u_xlat2.xyz : vs_TEXCOORD1.xyz;
        u_xlat2.xyz = u_xlat2.xyz + (-unity_ProbeVolumeMin.xyz);
        u_xlat2.yzw = u_xlat2.xyz * unity_ProbeVolumeSizeInv.xyz;
        u_xlat18 = u_xlat2.y * 0.25;
        u_xlat19 = unity_ProbeVolumeParams.z * 0.5;
        u_xlat8 = (-unity_ProbeVolumeParams.z) * 0.5 + 0.25;
        u_xlat18 = max(u_xlat18, u_xlat19);
        u_xlat2.x = min(u_xlat8, u_xlat18);
        u_xlat3 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat2.xzw);
        u_xlat4.xyz = u_xlat2.xzw + vec3(0.25, 0.0, 0.0);
        u_xlat4 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat4.xyz);
        u_xlat2.xyz = u_xlat2.xzw + vec3(0.5, 0.0, 0.0);
        u_xlat2 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat2.xyz);
        u_xlat5.xyz = vs_TEXCOORD0.xyz;
        u_xlat5.w = 1.0;
        u_xlat3.x = dot(u_xlat3, u_xlat5);
        u_xlat3.y = dot(u_xlat4, u_xlat5);
        u_xlat3.z = dot(u_xlat2, u_xlat5);
    } else {
        u_xlati18 = int(vs_SV_InstanceID0) + unity_BaseInstanceID;
        u_xlati18 = u_xlati18 * 7;
        u_xlat2.xyz = vs_TEXCOORD0.xyz;
        u_xlat2.w = 1.0;
        u_xlat3.x = dot(unity_Builtins2Array[u_xlati18 / 7].unity_SHArArray, u_xlat2);
        u_xlat3.y = dot(unity_Builtins2Array[u_xlati18 / 7].unity_SHAgArray, u_xlat2);
        u_xlat3.z = dot(unity_Builtins2Array[u_xlati18 / 7].unity_SHAbArray, u_xlat2);
    }
    u_xlat2.xyz = u_xlat3.xyz + vs_TEXCOORD5.xyz;
    u_xlat2.xyz = max(u_xlat2.xyz, vec3(0.0, 0.0, 0.0));
    u_xlat0.xyz = u_xlat0.xyz * vs_COLOR0.xyz + vec3(-0.0399999991, -0.0399999991, -0.0399999991);
    SV_Target1.xyz = vec3(_Metallic) * u_xlat0.xyz + vec3(0.0399999991, 0.0399999991, 0.0399999991);
    u_xlat0.x = (-_Metallic) * 0.959999979 + 0.959999979;
    u_xlat0.xyz = u_xlat0.xxx * u_xlat1.xyz;
    u_xlat1.xyz = u_xlat2.xyz * u_xlat0.xyz;
    SV_Target3.xyz = exp2((-u_xlat1.xyz));
    SV_Target0.xyz = u_xlat0.xyz;
    SV_Target0.w = 1.0;
    SV_Target1.w = _Glossiness;
    SV_Target2.xyz = vs_TEXCOORD0.xyz * vec3(0.5, 0.5, 0.5) + vec3(0.5, 0.5, 0.5);
    SV_Target2.w = 1.0;
    SV_Target3.w = 1.0;
    return;
}

