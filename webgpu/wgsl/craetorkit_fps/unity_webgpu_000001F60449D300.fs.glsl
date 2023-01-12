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
	vec4 unity_SHAr;
	vec4 unity_SHAg;
	vec4 unity_SHAb;
	vec4 unity_ProbeVolumeParams;
	mat4x4 unity_ProbeVolumeWorldToObject;
	vec3 unity_ProbeVolumeSizeInv;
	vec3 unity_ProbeVolumeMin;
	vec4 _Color;
	float _Metallic;
	float _Glossiness;
	float _OcclusionStrength;
	vec4 _EmissionColor;
};
layout(set = 0, binding = 0) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 1) uniform mediump texture2D _OcclusionMap;
layout(set = 0, binding = 2) uniform mediump texture2D _EmissionMap;
layout(set = 0, binding = 3) uniform highp texture3D unity_ProbeVolumeSH;
layout(location = 0) in highp vec4 vs_TEXCOORD0;
layout(location = 1) in highp vec4 vs_TEXCOORD2;
layout(location = 2) in highp vec4 vs_TEXCOORD3;
layout(location = 3) in highp vec4 vs_TEXCOORD4;
layout(location = 4) in highp vec4 vs_TEXCOORD5;
layout(location = 0) out highp vec4 SV_Target0;
layout(location = 1) out highp vec4 SV_Target1;
layout(location = 2) out highp vec4 SV_Target2;
layout(location = 3) out highp vec4 SV_Target3;
layout(set = 0, binding = 4) uniform highp  sampler samplerunity_ProbeVolumeSH;
layout(set = 0, binding = 5) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 6) uniform mediump  sampler sampler_OcclusionMap;
layout(set = 0, binding = 7) uniform mediump  sampler sampler_EmissionMap;
void main()
{
vec4 u_xlat0;
vec4 u_xlat1;
vec4 u_xlat2;
bool u_xlatb2;
vec4 u_xlat3;
vec4 u_xlat4;
vec3 u_xlat7;
vec3 u_xlat8;
    u_xlat0.xyz = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD0.xy).xyz;
    u_xlat1.xyz = u_xlat0.xyz * _Color.xyz;
    u_xlat0.xyz = _Color.xyz * u_xlat0.xyz + vec3(-0.0399999991, -0.0399999991, -0.0399999991);
    SV_Target1.xyz = vec3(vec3(_Metallic, _Metallic, _Metallic)) * u_xlat0.xyz + vec3(0.0399999991, 0.0399999991, 0.0399999991);
    u_xlat0.x = (-_Metallic) * 0.959999979 + 0.959999979;
    u_xlat0.xyz = u_xlat0.xxx * u_xlat1.xyz;
    u_xlat1.x = dot(vs_TEXCOORD4.xyz, vs_TEXCOORD4.xyz);
    u_xlat1.x = inversesqrt(u_xlat1.x);
    u_xlat1.xyz = u_xlat1.xxx * vs_TEXCOORD4.xyz;
    u_xlat2.x = texture(sampler2D(_OcclusionMap, sampler_OcclusionMap), vs_TEXCOORD0.xy).y;
    u_xlat7.x = (-_OcclusionStrength) + 1.0;
    u_xlat0.w = u_xlat2.x * _OcclusionStrength + u_xlat7.x;
    u_xlatb2 = unity_ProbeVolumeParams.x==1.0;
    if(u_xlatb2){
        u_xlatb2 = unity_ProbeVolumeParams.y==1.0;
        u_xlat7.xyz = vs_TEXCOORD3.www * unity_ProbeVolumeWorldToObject[1].xyz;
        u_xlat7.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD2.www + u_xlat7.xyz;
        u_xlat7.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD4.www + u_xlat7.xyz;
        u_xlat7.xyz = u_xlat7.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
        u_xlat8.x = vs_TEXCOORD2.w;
        u_xlat8.y = vs_TEXCOORD3.w;
        u_xlat8.z = vs_TEXCOORD4.w;
        u_xlat2.xyz = (bool(u_xlatb2)) ? u_xlat7.xyz : u_xlat8.xyz;
        u_xlat2.xyz = u_xlat2.xyz + (-unity_ProbeVolumeMin.xyz);
        u_xlat2.yzw = u_xlat2.xyz * unity_ProbeVolumeSizeInv.xyz;
        u_xlat7.x = u_xlat2.y * 0.25;
        u_xlat3.x = unity_ProbeVolumeParams.z * 0.5;
        u_xlat8.x = (-unity_ProbeVolumeParams.z) * 0.5 + 0.25;
        u_xlat7.x = max(u_xlat7.x, u_xlat3.x);
        u_xlat2.x = min(u_xlat8.x, u_xlat7.x);
        u_xlat3 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat2.xzw);
        u_xlat4.xyz = u_xlat2.xzw + vec3(0.25, 0.0, 0.0);
        u_xlat4 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat4.xyz);
        u_xlat2.xyz = u_xlat2.xzw + vec3(0.5, 0.0, 0.0);
        u_xlat2 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat2.xyz);
        u_xlat1.w = 1.0;
        u_xlat3.x = dot(u_xlat3, u_xlat1);
        u_xlat3.y = dot(u_xlat4, u_xlat1);
        u_xlat3.z = dot(u_xlat2, u_xlat1);
    } else {
        u_xlat1.w = 1.0;
        u_xlat3.x = dot(unity_SHAr, u_xlat1);
        u_xlat3.y = dot(unity_SHAg, u_xlat1);
        u_xlat3.z = dot(unity_SHAb, u_xlat1);
    }
    u_xlat2.xyz = u_xlat3.xyz + vs_TEXCOORD5.xyz;
    u_xlat2.xyz = max(u_xlat2.xyz, vec3(0.0, 0.0, 0.0));
    u_xlat2.xyz = u_xlat0.www * u_xlat2.xyz;
    u_xlat3.xyz = texture(sampler2D(_EmissionMap, sampler_EmissionMap), vs_TEXCOORD0.xy).xyz;
    u_xlat3.xyz = u_xlat3.xyz * _EmissionColor.xyz;
    SV_Target3.xyz = u_xlat0.xyz * u_xlat2.xyz + u_xlat3.xyz;
    SV_Target2.xyz = u_xlat1.xyz * vec3(0.5, 0.5, 0.5) + vec3(0.5, 0.5, 0.5);
    SV_Target0 = u_xlat0;
    SV_Target1.w = _Glossiness;
    SV_Target2.w = 1.0;
    SV_Target3.w = 1.0;
    return;
}

