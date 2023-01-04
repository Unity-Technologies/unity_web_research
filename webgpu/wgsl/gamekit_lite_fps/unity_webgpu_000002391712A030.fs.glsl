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
layout(set = 0, binding = 0, std140) uniform PGlobals {
	vec4 unity_SHAr;
	vec4 unity_SHAg;
	vec4 unity_SHAb;
	vec4 unity_ProbeVolumeParams;
	mat4x4 unity_ProbeVolumeWorldToObject;
	vec3 unity_ProbeVolumeSizeInv;
	vec3 unity_ProbeVolumeMin;
	float _Glossiness;
	float _Metallic;
	float _Cutoff;
	float _EdgeSize;
	float _NoiseStrength;
	vec4 _Color;
	vec4 _EdgeColor1;
	vec4 _Emission;
};
layout(set = 0, binding = 1) uniform mediump texture2D _Noise;
layout(set = 0, binding = 2) uniform mediump texture2D _MetallicSmooth;
layout(set = 0, binding = 3) uniform mediump texture2D _Gradient;
layout(set = 0, binding = 4) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 5) uniform mediump texture2D _AO;
layout(set = 0, binding = 6) uniform mediump texture2D _Normal;
layout(set = 0, binding = 7) uniform highp texture3D unity_ProbeVolumeSH;
layout(location = 0) in highp vec4 vs_TEXCOORD0;
layout(location = 1) in highp vec4 vs_TEXCOORD1;
layout(location = 2) in highp vec4 vs_TEXCOORD2;
layout(location = 3) in highp vec4 vs_TEXCOORD3;
layout(location = 4) in highp vec3 vs_TEXCOORD6;
layout(location = 0) out highp vec4 SV_Target0;
layout(location = 1) out highp vec4 SV_Target1;
layout(location = 2) out highp vec4 SV_Target2;
layout(location = 3) out highp vec4 SV_Target3;
vec4 u_xlat0;
bool u_xlatb0;
vec3 u_xlat1;
vec4 u_xlat2;
float u_xlat3;
vec4 u_xlat4;
vec4 u_xlat5;
vec4 u_xlat6;
vec4 u_xlat7;
vec2 u_xlat8;
vec3 u_xlat9;
vec3 u_xlat11;
vec3 u_xlat14;
float u_xlat16;
float u_xlat24;
layout(set = 0, binding = 8) uniform highp  sampler samplerunity_ProbeVolumeSH;
layout(set = 0, binding = 9) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 10) uniform mediump  sampler sampler_Noise;
layout(set = 0, binding = 11) uniform mediump  sampler sampler_Gradient;
layout(set = 0, binding = 12) uniform mediump  sampler sampler_Normal;
layout(set = 0, binding = 13) uniform mediump  sampler sampler_MetallicSmooth;
layout(set = 0, binding = 14) uniform mediump  sampler sampler_AO;
void main()
{
    u_xlat0.x = texture(sampler2D(_Noise, sampler_Noise), vs_TEXCOORD0.xy).x;
    u_xlat8.xy = texture(sampler2D(_MetallicSmooth, sampler_MetallicSmooth), vs_TEXCOORD0.zw).xw;
    u_xlat24 = texture(sampler2D(_Gradient, sampler_Gradient), vs_TEXCOORD0.zw).x;
    u_xlat1.x = (-u_xlat24) + 1.0;
    u_xlat0.x = u_xlat0.x * u_xlat1.x;
    u_xlat0.x = u_xlat0.x * _NoiseStrength + u_xlat24;
    u_xlat0.x = (-u_xlat0.x) + 1.0;
    u_xlat0.x = u_xlat0.x + (-_Cutoff);
    u_xlat24 = float(1.0) / (-_EdgeSize);
    u_xlat0.x = u_xlat24 * u_xlat0.x;
    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
    u_xlat24 = u_xlat0.x * -2.0 + 3.0;
    u_xlat0.x = u_xlat0.x * u_xlat0.x;
    u_xlat1.x = u_xlat0.x * u_xlat24;
    u_xlat2 = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD0.zw);
    u_xlat9.xyz = u_xlat2.xyz * _Color.xyz;
    u_xlat3 = texture(sampler2D(_AO, sampler_AO), vs_TEXCOORD0.zw).x;
    u_xlat11.xyz = u_xlat1.xxx * _EdgeColor1.xyz;
    u_xlat11.xyz = u_xlat2.www * _Emission.xyz + u_xlat11.xyz;
    u_xlat4.xyz = texture(sampler2D(_Normal, sampler_Normal), vs_TEXCOORD0.zw).xyw;
    u_xlat4.x = u_xlat4.z * u_xlat4.x;
    u_xlat4.xy = u_xlat4.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat1.x = dot(u_xlat4.xy, u_xlat4.xy);
    u_xlat1.x = min(u_xlat1.x, 1.0);
    u_xlat1.x = (-u_xlat1.x) + 1.0;
    u_xlat4.z = sqrt(u_xlat1.x);
    u_xlat8.x = u_xlat8.x * _Metallic;
    SV_Target1.w = u_xlat8.y * _Glossiness;
    u_xlat0.x = (-u_xlat24) * u_xlat0.x + (-_Cutoff);
    u_xlat0.x = u_xlat0.x + 1.0;
    u_xlatb0 = u_xlat0.x<0.0;
    if(((int(u_xlatb0) * int(0xffffffffu)))!=0){discard;}
    u_xlat5.x = dot(vs_TEXCOORD1.xyz, u_xlat4.xyz);
    u_xlat5.y = dot(vs_TEXCOORD2.xyz, u_xlat4.xyz);
    u_xlat5.z = dot(vs_TEXCOORD3.xyz, u_xlat4.xyz);
    u_xlat0.x = dot(u_xlat5.xyz, u_xlat5.xyz);
    u_xlat0.x = inversesqrt(u_xlat0.x);
    u_xlat4.xyz = u_xlat0.xxx * u_xlat5.xyz;
    u_xlatb0 = unity_ProbeVolumeParams.x==1.0;
    if(u_xlatb0){
        u_xlatb0 = unity_ProbeVolumeParams.y==1.0;
        u_xlat5.xyz = vs_TEXCOORD2.www * unity_ProbeVolumeWorldToObject[1].xyz;
        u_xlat5.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD1.www + u_xlat5.xyz;
        u_xlat5.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD3.www + u_xlat5.xyz;
        u_xlat5.xyz = u_xlat5.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
        u_xlat14.x = vs_TEXCOORD1.w;
        u_xlat14.y = vs_TEXCOORD2.w;
        u_xlat14.z = vs_TEXCOORD3.w;
        u_xlat0.xzw = (bool(u_xlatb0)) ? u_xlat5.xyz : u_xlat14.xyz;
        u_xlat0.xzw = u_xlat0.xzw + (-unity_ProbeVolumeMin.xyz);
        u_xlat5.yzw = u_xlat0.xzw * unity_ProbeVolumeSizeInv.xyz;
        u_xlat0.x = u_xlat5.y * 0.25;
        u_xlat16 = unity_ProbeVolumeParams.z * 0.5;
        u_xlat24 = (-unity_ProbeVolumeParams.z) * 0.5 + 0.25;
        u_xlat0.x = max(u_xlat16, u_xlat0.x);
        u_xlat5.x = min(u_xlat24, u_xlat0.x);
        u_xlat6 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat5.xzw);
        u_xlat0.xzw = u_xlat5.xzw + vec3(0.25, 0.0, 0.0);
        u_xlat7 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat0.xzw);
        u_xlat0.xzw = u_xlat5.xzw + vec3(0.5, 0.0, 0.0);
        u_xlat5 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat0.xzw);
        u_xlat4.w = 1.0;
        u_xlat6.x = dot(u_xlat6, u_xlat4);
        u_xlat6.y = dot(u_xlat7, u_xlat4);
        u_xlat6.z = dot(u_xlat5, u_xlat4);
    } else {
        u_xlat4.w = 1.0;
        u_xlat6.x = dot(unity_SHAr, u_xlat4);
        u_xlat6.y = dot(unity_SHAg, u_xlat4);
        u_xlat6.z = dot(unity_SHAb, u_xlat4);
    }
    u_xlat0.xzw = u_xlat6.xyz + vs_TEXCOORD6.xyz;
    u_xlat0.xzw = max(u_xlat0.xzw, vec3(0.0, 0.0, 0.0));
    u_xlat0.xzw = vec3(u_xlat3) * u_xlat0.xzw;
    u_xlat2.xyz = u_xlat2.xyz * _Color.xyz + vec3(-0.0399999991, -0.0399999991, -0.0399999991);
    SV_Target1.xyz = u_xlat8.xxx * u_xlat2.xyz + vec3(0.0399999991, 0.0399999991, 0.0399999991);
    u_xlat8.x = (-u_xlat8.x) * 0.959999979 + 0.959999979;
    u_xlat1.xyz = u_xlat8.xxx * u_xlat9.xyz;
    SV_Target2.xyz = u_xlat4.xyz * vec3(0.5, 0.5, 0.5) + vec3(0.5, 0.5, 0.5);
    SV_Target3.xyz = u_xlat1.xyz * u_xlat0.xzw + u_xlat11.xyz;
    SV_Target0.w = u_xlat3;
    SV_Target0.xyz = u_xlat1.xyz;
    SV_Target2.w = 1.0;
    SV_Target3.w = 1.0;
    return;
}

