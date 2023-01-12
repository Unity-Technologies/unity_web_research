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
};
layout(set = 0, binding = 0) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 1) uniform mediump texture2D _OcclusionMap;
layout(set = 0, binding = 2) uniform highp texture3D unity_ProbeVolumeSH;
layout(location = 0) in highp vec4 vs_TEXCOORD0;
layout(location = 1) in highp vec4 vs_TEXCOORD2;
layout(location = 2) in highp vec4 vs_TEXCOORD3;
layout(location = 3) in highp vec4 vs_TEXCOORD4;
layout(location = 4) in highp vec4 vs_TEXCOORD5;
layout(location = 0) out highp vec4 SV_Target0;
layout(location = 1) out highp vec4 SV_Target1;
layout(location = 2) out highp vec4 SV_Target2;
layout(location = 3) out highp vec4 SV_Target3;
layout(set = 0, binding = 3) uniform highp  sampler samplerunity_ProbeVolumeSH;
layout(set = 0, binding = 4) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 5) uniform mediump  sampler sampler_OcclusionMap;
void main()
{
vec4 u_xlat0;
vec4 u_xlat1;
bool u_xlatb1;
vec4 u_xlat2;
vec4 u_xlat3;
vec4 u_xlat4;
vec3 u_xlat6;
vec3 u_xlat8;
float u_xlat15;
    u_xlat0 = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD0.xy);
    u_xlat1 = u_xlat0.wxyz * _Color.wxyz;
    u_xlat0.xyz = u_xlat0.xyz * _Color.xyz + vec3(-0.0399999991, -0.0399999991, -0.0399999991);
    SV_Target1.xyz = vec3(vec3(_Metallic, _Metallic, _Metallic)) * u_xlat0.xyz + vec3(0.0399999991, 0.0399999991, 0.0399999991);
    u_xlat0.x = (-_Metallic) * 0.959999979 + 0.959999979;
    u_xlat0.xyz = u_xlat0.xxx * u_xlat1.yzw;
    u_xlat15 = dot(vs_TEXCOORD4.xyz, vs_TEXCOORD4.xyz);
    u_xlat15 = inversesqrt(u_xlat15);
    u_xlat2.xyz = vec3(u_xlat15) * vs_TEXCOORD4.xyz;
    u_xlat0.xyz = u_xlat1.xxx * u_xlat0.xyz;
    u_xlat1.x = texture(sampler2D(_OcclusionMap, sampler_OcclusionMap), vs_TEXCOORD0.xy).y;
    u_xlat6.x = (-_OcclusionStrength) + 1.0;
    u_xlat0.w = u_xlat1.x * _OcclusionStrength + u_xlat6.x;
    u_xlatb1 = unity_ProbeVolumeParams.x==1.0;
    if(u_xlatb1){
        u_xlatb1 = unity_ProbeVolumeParams.y==1.0;
        u_xlat6.xyz = vs_TEXCOORD3.www * unity_ProbeVolumeWorldToObject[1].xyz;
        u_xlat6.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD2.www + u_xlat6.xyz;
        u_xlat6.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD4.www + u_xlat6.xyz;
        u_xlat6.xyz = u_xlat6.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
        u_xlat8.x = vs_TEXCOORD2.w;
        u_xlat8.y = vs_TEXCOORD3.w;
        u_xlat8.z = vs_TEXCOORD4.w;
        u_xlat1.xyz = (bool(u_xlatb1)) ? u_xlat6.xyz : u_xlat8.xyz;
        u_xlat1.xyz = u_xlat1.xyz + (-unity_ProbeVolumeMin.xyz);
        u_xlat1.yzw = u_xlat1.xyz * unity_ProbeVolumeSizeInv.xyz;
        u_xlat6.x = u_xlat1.y * 0.25;
        u_xlat3.x = unity_ProbeVolumeParams.z * 0.5;
        u_xlat8.x = (-unity_ProbeVolumeParams.z) * 0.5 + 0.25;
        u_xlat6.x = max(u_xlat6.x, u_xlat3.x);
        u_xlat1.x = min(u_xlat8.x, u_xlat6.x);
        u_xlat3 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat1.xzw);
        u_xlat4.xyz = u_xlat1.xzw + vec3(0.25, 0.0, 0.0);
        u_xlat4 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat4.xyz);
        u_xlat1.xyz = u_xlat1.xzw + vec3(0.5, 0.0, 0.0);
        u_xlat1 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat1.xyz);
        u_xlat2.w = 1.0;
        u_xlat3.x = dot(u_xlat3, u_xlat2);
        u_xlat3.y = dot(u_xlat4, u_xlat2);
        u_xlat3.z = dot(u_xlat1, u_xlat2);
    } else {
        u_xlat2.w = 1.0;
        u_xlat3.x = dot(unity_SHAr, u_xlat2);
        u_xlat3.y = dot(unity_SHAg, u_xlat2);
        u_xlat3.z = dot(unity_SHAb, u_xlat2);
    }
    u_xlat1.xyz = u_xlat3.xyz + vs_TEXCOORD5.xyz;
    u_xlat1.xyz = max(u_xlat1.xyz, vec3(0.0, 0.0, 0.0));
    u_xlat1.xyz = u_xlat0.www * u_xlat1.xyz;
    u_xlat1.xyz = u_xlat0.xyz * u_xlat1.xyz;
    SV_Target3.xyz = exp2((-u_xlat1.xyz));
    SV_Target2.xyz = u_xlat2.xyz * vec3(0.5, 0.5, 0.5) + vec3(0.5, 0.5, 0.5);
    SV_Target0 = u_xlat0;
    SV_Target1.w = _Glossiness;
    SV_Target2.w = 1.0;
    SV_Target3.w = 1.0;
    return;
}
