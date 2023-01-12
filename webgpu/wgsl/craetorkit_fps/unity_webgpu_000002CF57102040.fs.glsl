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
	float _Glossiness;
	float _Metallic;
	vec4 _Color;
	vec4 _Color2;
};
layout(set = 0, binding = 0) uniform mediump texture2D _Gradient;
layout(set = 0, binding = 1) uniform highp texture3D unity_ProbeVolumeSH;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 1) in highp float vs_TEXCOORD3;
layout(location = 2) in highp vec3 vs_TEXCOORD1;
layout(location = 3) in highp vec3 vs_TEXCOORD2;
layout(location = 4) in highp vec3 vs_TEXCOORD6;
layout(location = 0) out highp vec4 SV_Target0;
layout(location = 1) out highp vec4 SV_Target1;
layout(location = 2) out highp vec4 SV_Target2;
layout(location = 3) out highp vec4 SV_Target3;
layout(set = 0, binding = 2) uniform highp  sampler samplerunity_ProbeVolumeSH;
layout(set = 0, binding = 3) uniform mediump  sampler sampler_Gradient;
void main()
{
vec4 u_xlat0;
bool u_xlatb0;
vec4 u_xlat1;
vec4 u_xlat2;
vec4 u_xlat3;
vec3 u_xlat4;
float u_xlat5;
float u_xlat12;
    u_xlat0.x = vs_TEXCOORD3 + -1.0;
    u_xlat0.x = u_xlat0.x * -9.99999809;
    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
    u_xlat0.xy = (-u_xlat0.xx) + vs_TEXCOORD0.xy;
    u_xlat0.x = texture(sampler2D(_Gradient, sampler_Gradient), u_xlat0.xy).x;
    u_xlat4.x = texture(sampler2D(_Gradient, sampler_Gradient), vs_TEXCOORD0.xy).z;
    u_xlat0.x = u_xlat0.x * -2.0 + 1.0;
    u_xlat0.x = (-u_xlat4.x) + u_xlat0.x;
    u_xlatb0 = u_xlat0.x<0.0;
    if(((int(u_xlatb0) * int(0xffffffffu)))!=0){discard;}
    u_xlatb0 = unity_ProbeVolumeParams.x==1.0;
    if(u_xlatb0){
        u_xlatb0 = unity_ProbeVolumeParams.y==1.0;
        u_xlat4.xyz = vs_TEXCOORD2.yyy * unity_ProbeVolumeWorldToObject[1].xyz;
        u_xlat4.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD2.xxx + u_xlat4.xyz;
        u_xlat4.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD2.zzz + u_xlat4.xyz;
        u_xlat4.xyz = u_xlat4.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
        u_xlat0.xyz = (bool(u_xlatb0)) ? u_xlat4.xyz : vs_TEXCOORD2.xyz;
        u_xlat0.xyz = u_xlat0.xyz + (-unity_ProbeVolumeMin.xyz);
        u_xlat0.yzw = u_xlat0.xyz * unity_ProbeVolumeSizeInv.xyz;
        u_xlat4.x = u_xlat0.y * 0.25;
        u_xlat1.x = unity_ProbeVolumeParams.z * 0.5;
        u_xlat5 = (-unity_ProbeVolumeParams.z) * 0.5 + 0.25;
        u_xlat4.x = max(u_xlat4.x, u_xlat1.x);
        u_xlat0.x = min(u_xlat5, u_xlat4.x);
        u_xlat1 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat0.xzw);
        u_xlat2.xyz = u_xlat0.xzw + vec3(0.25, 0.0, 0.0);
        u_xlat2 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat2.xyz);
        u_xlat0.xyz = u_xlat0.xzw + vec3(0.5, 0.0, 0.0);
        u_xlat0 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat0.xyz);
        u_xlat3.xyz = vs_TEXCOORD1.xyz;
        u_xlat3.w = 1.0;
        u_xlat1.x = dot(u_xlat1, u_xlat3);
        u_xlat1.y = dot(u_xlat2, u_xlat3);
        u_xlat1.z = dot(u_xlat0, u_xlat3);
    } else {
        u_xlat0.xyz = vs_TEXCOORD1.xyz;
        u_xlat0.w = 1.0;
        u_xlat1.x = dot(unity_SHAr, u_xlat0);
        u_xlat1.y = dot(unity_SHAg, u_xlat0);
        u_xlat1.z = dot(unity_SHAb, u_xlat0);
    }
    u_xlat0.xyz = u_xlat1.xyz + vs_TEXCOORD6.xyz;
    u_xlat0.xyz = max(u_xlat0.xyz, vec3(0.0, 0.0, 0.0));
    u_xlat1.xyz = _Color.xyz + vec3(-0.0399999991, -0.0399999991, -0.0399999991);
    SV_Target1.xyz = vec3(vec3(_Metallic, _Metallic, _Metallic)) * u_xlat1.xyz + vec3(0.0399999991, 0.0399999991, 0.0399999991);
    u_xlat12 = (-_Metallic) * 0.959999979 + 0.959999979;
    u_xlat1.xyz = vec3(u_xlat12) * _Color.xyz;
    SV_Target3.xyz = u_xlat1.xyz * u_xlat0.xyz + _Color2.xyz;
    SV_Target0.xyz = u_xlat1.xyz;
    SV_Target0.w = 1.0;
    SV_Target1.w = _Glossiness;
    SV_Target2.xyz = vs_TEXCOORD1.xyz * vec3(0.5, 0.5, 0.5) + vec3(0.5, 0.5, 0.5);
    SV_Target2.w = 1.0;
    SV_Target3.w = 1.0;
    return;
}

