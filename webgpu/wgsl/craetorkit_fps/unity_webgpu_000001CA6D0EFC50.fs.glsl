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
	vec4 unity_OcclusionMaskSelector;
	vec4 unity_ProbeVolumeParams;
	mat4x4 unity_ProbeVolumeWorldToObject;
	vec3 unity_ProbeVolumeSizeInv;
	vec3 unity_ProbeVolumeMin;
	vec4 _LightColor0;
	vec4 _Color;
	float _Metallic;
	float _Glossiness;
};
layout(set = 0, binding = 0) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 1) uniform highp texture2D unity_NHxRoughness;
layout(set = 0, binding = 2) uniform highp texture3D unity_ProbeVolumeSH;
layout(location = 0) in highp vec4 vs_TEXCOORD0;
layout(location = 1) in highp vec4 vs_TEXCOORD1;
layout(location = 2) in highp vec4 vs_TEXCOORD2;
layout(location = 3) in highp vec4 vs_TEXCOORD3;
layout(location = 4) in highp vec4 vs_TEXCOORD4;
layout(location = 5) in highp vec3 vs_TEXCOORD5;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 3) uniform highp  sampler samplerunity_ProbeVolumeSH;
layout(set = 0, binding = 4) uniform highp  sampler samplerunity_NHxRoughness;
layout(set = 0, binding = 5) uniform mediump  sampler sampler_MainTex;
void main()
{
vec4 u_xlat0;
vec4 u_xlat1;
vec3 u_xlat2;
vec4 u_xlat3;
vec3 u_xlat4;
vec3 u_xlat5;
vec3 u_xlat7;
float u_xlat18;
bool u_xlatb18;
float u_xlat20;
    u_xlat0 = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD0.xy);
    u_xlat1 = u_xlat0.wxyz * _Color.wxyz;
    u_xlat0.xyz = u_xlat0.xyz * _Color.xyz + vec3(-0.0399999991, -0.0399999991, -0.0399999991);
    u_xlat0.xyz = vec3(vec3(_Metallic, _Metallic, _Metallic)) * u_xlat0.xyz + vec3(0.0399999991, 0.0399999991, 0.0399999991);
    u_xlat18 = (-_Metallic) * 0.959999979 + 0.959999979;
    u_xlat7.xyz = vec3(u_xlat18) * u_xlat1.yzw;
    u_xlat18 = dot(vs_TEXCOORD4.xyz, vs_TEXCOORD4.xyz);
    u_xlat18 = inversesqrt(u_xlat18);
    u_xlat2.xyz = vec3(u_xlat18) * vs_TEXCOORD4.xyz;
    u_xlatb18 = unity_ProbeVolumeParams.x==1.0;
    if(u_xlatb18){
        u_xlatb18 = unity_ProbeVolumeParams.y==1.0;
        u_xlat3.xyz = vs_TEXCOORD5.yyy * unity_ProbeVolumeWorldToObject[1].xyz;
        u_xlat3.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD5.xxx + u_xlat3.xyz;
        u_xlat3.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD5.zzz + u_xlat3.xyz;
        u_xlat3.xyz = u_xlat3.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
        u_xlat3.xyz = (bool(u_xlatb18)) ? u_xlat3.xyz : vs_TEXCOORD5.xyz;
        u_xlat3.xyz = u_xlat3.xyz + (-unity_ProbeVolumeMin.xyz);
        u_xlat3.yzw = u_xlat3.xyz * unity_ProbeVolumeSizeInv.xyz;
        u_xlat18 = u_xlat3.y * 0.25 + 0.75;
        u_xlat20 = unity_ProbeVolumeParams.z * 0.5 + 0.75;
        u_xlat3.x = max(u_xlat18, u_xlat20);
        u_xlat3 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat3.xzw);
    } else {
        u_xlat3.x = float(1.0);
        u_xlat3.y = float(1.0);
        u_xlat3.z = float(1.0);
        u_xlat3.w = float(1.0);
    }
    u_xlat18 = dot(u_xlat3, unity_OcclusionMaskSelector);
    u_xlat18 = clamp(u_xlat18, 0.0, 1.0);
    u_xlat3.xyz = vec3(u_xlat18) * _LightColor0.xyz;
    u_xlat18 = dot((-vs_TEXCOORD1.xyz), u_xlat2.xyz);
    u_xlat18 = u_xlat18 + u_xlat18;
    u_xlat4.xyz = u_xlat2.xyz * (-vec3(u_xlat18)) + (-vs_TEXCOORD1.xyz);
    u_xlat5.x = vs_TEXCOORD2.w;
    u_xlat5.y = vs_TEXCOORD3.w;
    u_xlat5.z = vs_TEXCOORD4.w;
    u_xlat18 = dot(u_xlat2.xyz, u_xlat5.xyz);
    u_xlat18 = clamp(u_xlat18, 0.0, 1.0);
    u_xlat2.x = dot(u_xlat4.xyz, u_xlat5.xyz);
    u_xlat2.x = u_xlat2.x * u_xlat2.x;
    u_xlat2.x = u_xlat2.x * u_xlat2.x;
    u_xlat2.y = (-_Glossiness) + 1.0;
    u_xlat2.x = texture(sampler2D(unity_NHxRoughness, samplerunity_NHxRoughness), u_xlat2.xy).x;
    u_xlat2.x = u_xlat2.x * 16.0;
    u_xlat0.xyz = u_xlat0.xyz * u_xlat2.xxx;
    u_xlat0.xyz = u_xlat7.xyz * u_xlat1.xxx + u_xlat0.xyz;
    u_xlat7.xyz = vec3(u_xlat18) * u_xlat3.xyz;
    SV_Target0.xyz = u_xlat0.xyz * u_xlat7.xyz;
    SV_Target0.w = u_xlat1.x;
    return;
}

