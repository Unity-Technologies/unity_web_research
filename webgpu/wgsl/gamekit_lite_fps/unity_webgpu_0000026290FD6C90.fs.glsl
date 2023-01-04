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
layout(set = 0, binding = 6) uniform highp texture3D unity_ProbeVolumeSH;
layout(location = 0) in highp vec4 vs_TEXCOORD0;
layout(location = 1) in highp vec4 vs_TEXCOORD1;
layout(location = 2) in highp vec4 vs_TEXCOORD2;
layout(location = 3) in highp vec4 vs_COLOR0;
layout(location = 4) in highp vec2 vs_TEXCOORD3;
layout(location = 5) in highp vec3 vs_TEXCOORD6;
layout(location = 6) flat in highp uint vs_SV_InstanceID0;
layout(location = 0) out highp vec4 SV_Target0;
layout(location = 1) out highp vec4 SV_Target1;
layout(location = 2) out highp vec4 SV_Target2;
layout(location = 3) out highp vec4 SV_Target3;
vec4 u_xlat0;
vec3 u_xlat1;
vec4 u_xlat2;
vec3 u_xlat3;
vec4 u_xlat4;
vec4 u_xlat5;
vec4 u_xlat6;
vec3 u_xlat12;
float u_xlat21;
int u_xlati21;
bool u_xlatb21;
float u_xlat22;
float u_xlat24;
layout(set = 0, binding = 7) uniform highp  sampler samplerunity_ProbeVolumeSH;
layout(set = 0, binding = 8) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 9) uniform mediump  sampler sampler_BumpMap;
layout(set = 0, binding = 10) uniform mediump  sampler sampler_EmissionMap;
void main()
{
    u_xlat0 = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD3.xy);
    u_xlat0 = u_xlat0 * _Color;
    u_xlat1.xyz = u_xlat0.xyz * vs_COLOR0.xyz;
    u_xlat2.xyz = texture(sampler2D(_BumpMap, sampler_BumpMap), vs_TEXCOORD3.xy).xyw;
    u_xlat2.x = u_xlat2.z * u_xlat2.x;
    u_xlat2.xy = u_xlat2.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat2.xy = u_xlat2.xy * vec2(_BumpScale);
    u_xlat22 = dot(u_xlat2.xy, u_xlat2.xy);
    u_xlat22 = min(u_xlat22, 1.0);
    u_xlat22 = (-u_xlat22) + 1.0;
    u_xlat2.z = sqrt(u_xlat22);
    u_xlat22 = dot(u_xlat2.xyz, u_xlat2.xyz);
    u_xlat22 = inversesqrt(u_xlat22);
    u_xlat2.xyz = vec3(u_xlat22) * u_xlat2.xyz;
    u_xlat3.xyz = texture(sampler2D(_EmissionMap, sampler_EmissionMap), vs_TEXCOORD3.xy).xyz;
    u_xlat21 = u_xlat0.w * vs_COLOR0.w + (-_Cutoff);
    u_xlat21 = u_xlat21 + 9.99999975e-05;
    u_xlatb21 = u_xlat21<0.0;
    if(((int(u_xlatb21) * int(0xffffffffu)))!=0){discard;}
    u_xlat4.x = dot(vs_TEXCOORD0.xyz, u_xlat2.xyz);
    u_xlat4.y = dot(vs_TEXCOORD1.xyz, u_xlat2.xyz);
    u_xlat4.z = dot(vs_TEXCOORD2.xyz, u_xlat2.xyz);
    u_xlat21 = dot(u_xlat4.xyz, u_xlat4.xyz);
    u_xlat21 = inversesqrt(u_xlat21);
    u_xlat2.xyz = vec3(u_xlat21) * u_xlat4.xyz;
    u_xlatb21 = unity_ProbeVolumeParams.x==1.0;
    if(u_xlatb21){
        u_xlatb21 = unity_ProbeVolumeParams.y==1.0;
        u_xlat4.xyz = vs_TEXCOORD1.www * unity_ProbeVolumeWorldToObject[1].xyz;
        u_xlat4.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD0.www + u_xlat4.xyz;
        u_xlat4.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD2.www + u_xlat4.xyz;
        u_xlat4.xyz = u_xlat4.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
        u_xlat12.x = vs_TEXCOORD0.w;
        u_xlat12.y = vs_TEXCOORD1.w;
        u_xlat12.z = vs_TEXCOORD2.w;
        u_xlat4.xyz = (bool(u_xlatb21)) ? u_xlat4.xyz : u_xlat12.xyz;
        u_xlat4.xyz = u_xlat4.xyz + (-unity_ProbeVolumeMin.xyz);
        u_xlat4.yzw = u_xlat4.xyz * unity_ProbeVolumeSizeInv.xyz;
        u_xlat21 = u_xlat4.y * 0.25;
        u_xlat22 = unity_ProbeVolumeParams.z * 0.5;
        u_xlat24 = (-unity_ProbeVolumeParams.z) * 0.5 + 0.25;
        u_xlat21 = max(u_xlat21, u_xlat22);
        u_xlat4.x = min(u_xlat24, u_xlat21);
        u_xlat5 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat4.xzw);
        u_xlat6.xyz = u_xlat4.xzw + vec3(0.25, 0.0, 0.0);
        u_xlat6 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat6.xyz);
        u_xlat4.xyz = u_xlat4.xzw + vec3(0.5, 0.0, 0.0);
        u_xlat4 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat4.xyz);
        u_xlat2.w = 1.0;
        u_xlat5.x = dot(u_xlat5, u_xlat2);
        u_xlat5.y = dot(u_xlat6, u_xlat2);
        u_xlat5.z = dot(u_xlat4, u_xlat2);
    } else {
        u_xlati21 = int(vs_SV_InstanceID0) + unity_BaseInstanceID;
        u_xlati21 = u_xlati21 * 7;
        u_xlat2.w = 1.0;
        u_xlat5.x = dot(unity_Builtins2Array[u_xlati21 / 7].unity_SHArArray, u_xlat2);
        u_xlat5.y = dot(unity_Builtins2Array[u_xlati21 / 7].unity_SHAgArray, u_xlat2);
        u_xlat5.z = dot(unity_Builtins2Array[u_xlati21 / 7].unity_SHAbArray, u_xlat2);
    }
    u_xlat4.xyz = u_xlat5.xyz + vs_TEXCOORD6.xyz;
    u_xlat4.xyz = max(u_xlat4.xyz, vec3(0.0, 0.0, 0.0));
    u_xlat0.xyz = u_xlat0.xyz * vs_COLOR0.xyz + vec3(-0.0399999991, -0.0399999991, -0.0399999991);
    SV_Target1.xyz = vec3(_Metallic) * u_xlat0.xyz + vec3(0.0399999991, 0.0399999991, 0.0399999991);
    u_xlat0.x = (-_Metallic) * 0.959999979 + 0.959999979;
    u_xlat0.xyz = u_xlat0.xxx * u_xlat1.xyz;
    u_xlat1.xyz = u_xlat4.xyz * u_xlat0.xyz;
    SV_Target2.xyz = u_xlat2.xyz * vec3(0.5, 0.5, 0.5) + vec3(0.5, 0.5, 0.5);
    u_xlat1.xyz = u_xlat3.xyz * vec3(_EmissionColor.x, _EmissionColor.y, _EmissionColor.z) + u_xlat1.xyz;
    SV_Target3.xyz = exp2((-u_xlat1.xyz));
    SV_Target0.xyz = u_xlat0.xyz;
    SV_Target0.w = 1.0;
    SV_Target1.w = _Glossiness;
    SV_Target2.w = 1.0;
    SV_Target3.w = 1.0;
    return;
}

