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
	mat4x4 unity_ObjectToWorld;
	vec4 unity_ProbeVolumeParams;
	mat4x4 unity_ProbeVolumeWorldToObject;
	vec3 unity_ProbeVolumeSizeInv;
	vec3 unity_ProbeVolumeMin;
	float _Glossiness;
	float _Metallic;
	float _Cutoff;
	float _Cutoff2;
	float _EdgeSizeBot;
	float _EdgeSizeTop;
	vec4 _Color;
	vec4 _EdgeColor1;
	vec4 _EdgeColor2;
	vec4 _bounds;
};
layout(set = 0, binding = 1) uniform mediump texture2D _MetallicSmooth;
layout(set = 0, binding = 2) uniform mediump texture2D _Noise;
layout(set = 0, binding = 3) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 4) uniform mediump texture2D _Normal;
layout(set = 0, binding = 5) uniform highp texture3D unity_ProbeVolumeSH;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 1) in highp vec4 vs_TEXCOORD1;
layout(location = 2) in highp vec4 vs_TEXCOORD2;
layout(location = 3) in highp vec4 vs_TEXCOORD3;
layout(location = 4) in highp vec3 vs_TEXCOORD6;
layout(location = 0) out highp vec4 SV_Target0;
layout(location = 1) out highp vec4 SV_Target1;
layout(location = 2) out highp vec4 SV_Target2;
layout(location = 3) out highp vec4 SV_Target3;
vec3 u_xlat0;
vec4 u_xlat1;
vec4 u_xlat2;
bool u_xlatb2;
vec4 u_xlat3;
vec4 u_xlat4;
vec3 u_xlat5;
vec3 u_xlat6;
vec4 u_xlat7;
vec3 u_xlat8;
bool u_xlatb8;
vec3 u_xlat9;
float u_xlat10;
vec3 u_xlat11;
float u_xlat16;
float u_xlat18;
float u_xlat19;
float u_xlat24;
float u_xlat26;
layout(set = 0, binding = 6) uniform highp  sampler samplerunity_ProbeVolumeSH;
layout(set = 0, binding = 7) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 8) uniform mediump  sampler sampler_Noise;
layout(set = 0, binding = 9) uniform mediump  sampler sampler_Normal;
layout(set = 0, binding = 10) uniform mediump  sampler sampler_MetallicSmooth;
void main()
{
    u_xlat0.xy = texture(sampler2D(_MetallicSmooth, sampler_MetallicSmooth), vs_TEXCOORD0.xy).xw;
    u_xlat9.x = vs_TEXCOORD1.w;
    u_xlat9.y = vs_TEXCOORD2.w;
    u_xlat9.z = vs_TEXCOORD3.w;
    u_xlat2 = u_xlat9.zyxy + (-unity_ObjectToWorld[3].zyxy);
    u_xlat3.xyw = u_xlat2.wxz * vec3(6.0, 0.200000003, 0.200000003);
    u_xlat16 = _Cutoff + _Cutoff;
    u_xlat4.x = u_xlat2.w * 2.0 + u_xlat16;
    u_xlat4.z = u_xlat2.y * 4.0 + _Cutoff;
    u_xlat16 = _bounds.y + 0.200000003;
    u_xlat4.yw = u_xlat3.yw;
    u_xlat24 = texture(sampler2D(_Noise, sampler_Noise), u_xlat4.xy).x;
    u_xlat1.x = texture(sampler2D(_Noise, sampler_Noise), u_xlat4.zw).x;
    u_xlat24 = dot(vec2(u_xlat24), u_xlat1.xx);
    u_xlat3.y = 0.0;
    u_xlat1.x = texture(sampler2D(_Noise, sampler_Noise), u_xlat3.xy).x;
    u_xlat2.x = u_xlat16 * 0.5;
    u_xlat16 = _Cutoff * u_xlat16 + (-u_xlat2.x);
    u_xlatb2 = u_xlat2.w>=u_xlat16;
    u_xlat10 = u_xlatb2 ? 1.0 : float(0.0);
    u_xlat18 = u_xlat16 + (-_EdgeSizeBot);
    u_xlat3.x = u_xlat16 + (-u_xlat18);
    u_xlat18 = (-u_xlat18) + u_xlat2.w;
    u_xlat3.x = float(1.0) / u_xlat3.x;
    u_xlat18 = u_xlat18 * u_xlat3.x;
    u_xlat18 = clamp(u_xlat18, 0.0, 1.0);
    u_xlat3.x = u_xlat18 * -2.0 + 3.0;
    u_xlat18 = u_xlat18 * u_xlat18;
    u_xlat11.x = u_xlat18 * u_xlat3.x;
    u_xlat19 = u_xlat16 + _EdgeSizeTop;
    u_xlat16 = u_xlat16 + (-u_xlat19);
    u_xlat26 = u_xlat2.w + (-u_xlat19);
    u_xlat16 = float(1.0) / u_xlat16;
    u_xlat16 = u_xlat16 * u_xlat26;
    u_xlat16 = clamp(u_xlat16, 0.0, 1.0);
    u_xlat26 = u_xlat16 * -2.0 + 3.0;
    u_xlat16 = u_xlat16 * u_xlat16;
    u_xlat16 = u_xlat16 * u_xlat26;
    u_xlat11.xyz = u_xlat11.xxx * _EdgeColor1.xyz;
    u_xlat2.x = (u_xlatb2) ? 0.0 : 1.0;
    u_xlat11.xyz = u_xlat2.xxx * u_xlat11.xyz;
    u_xlat4.xyz = _EdgeColor1.xyz + (-_EdgeColor2.xyz);
    u_xlat4.xyz = vec3(u_xlat16) * u_xlat4.xyz + _EdgeColor2.xyz;
    u_xlat5.xyz = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD0.xy).xyz;
    u_xlat6.xyz = u_xlat5.xyz * _Color.xyz;
    u_xlat7.xyz = u_xlat11.xyz * vec3(0.5, 0.5, 0.5);
    u_xlat11.xyz = u_xlat11.xyz * u_xlat1.xxx + u_xlat7.xyz;
    u_xlat11.xyz = u_xlat4.xyz * vec3(u_xlat10) + u_xlat11.xyz;
    u_xlat4.xyz = texture(sampler2D(_Normal, sampler_Normal), vs_TEXCOORD0.xy).xyw;
    u_xlat4.x = u_xlat4.z * u_xlat4.x;
    u_xlat4.xy = u_xlat4.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat1.x = dot(u_xlat4.xy, u_xlat4.xy);
    u_xlat1.x = min(u_xlat1.x, 1.0);
    u_xlat1.x = (-u_xlat1.x) + 1.0;
    u_xlat4.z = sqrt(u_xlat1.x);
    u_xlat0.xy = u_xlat0.xy * vec2(_Metallic, _Glossiness);
    u_xlat1.x = (-u_xlat3.x) * u_xlat18 + 1.0;
    u_xlat0.x = u_xlat0.x * u_xlat1.x;
    SV_Target1.w = u_xlat0.y * u_xlat1.x;
    u_xlat8.x = u_xlat24 * u_xlat16 + u_xlat2.x;
    u_xlat8.x = u_xlat8.x + (-_Cutoff);
    u_xlat8.x = u_xlat8.x + (-_Cutoff2);
    u_xlatb8 = u_xlat8.x<0.0;
    if(((int(u_xlatb8) * int(0xffffffffu)))!=0){discard;}
    u_xlat2.x = dot(vs_TEXCOORD1.xyz, u_xlat4.xyz);
    u_xlat2.y = dot(vs_TEXCOORD2.xyz, u_xlat4.xyz);
    u_xlat2.z = dot(vs_TEXCOORD3.xyz, u_xlat4.xyz);
    u_xlat8.x = dot(u_xlat2.xyz, u_xlat2.xyz);
    u_xlat8.x = inversesqrt(u_xlat8.x);
    u_xlat2.xyz = u_xlat8.xxx * u_xlat2.xyz;
    u_xlatb8 = unity_ProbeVolumeParams.x==1.0;
    if(u_xlatb8){
        u_xlatb8 = unity_ProbeVolumeParams.y==1.0;
        u_xlat4.xyz = vs_TEXCOORD2.www * unity_ProbeVolumeWorldToObject[1].xyz;
        u_xlat4.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD1.www + u_xlat4.xyz;
        u_xlat4.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD3.www + u_xlat4.xyz;
        u_xlat4.xyz = u_xlat4.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
        u_xlat8.xyz = (bool(u_xlatb8)) ? u_xlat4.xyz : u_xlat9.xyz;
        u_xlat8.xyz = u_xlat8.xyz + (-unity_ProbeVolumeMin.xyz);
        u_xlat1.yzw = u_xlat8.xyz * unity_ProbeVolumeSizeInv.xyz;
        u_xlat8.x = u_xlat1.y * 0.25;
        u_xlat16 = unity_ProbeVolumeParams.z * 0.5;
        u_xlat24 = (-unity_ProbeVolumeParams.z) * 0.5 + 0.25;
        u_xlat8.x = max(u_xlat16, u_xlat8.x);
        u_xlat1.x = min(u_xlat24, u_xlat8.x);
        u_xlat4 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat1.xzw);
        u_xlat8.xyz = u_xlat1.xzw + vec3(0.25, 0.0, 0.0);
        u_xlat7 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat8.xyz);
        u_xlat8.xyz = u_xlat1.xzw + vec3(0.5, 0.0, 0.0);
        u_xlat1 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat8.xyz);
        u_xlat2.w = 1.0;
        u_xlat4.x = dot(u_xlat4, u_xlat2);
        u_xlat4.y = dot(u_xlat7, u_xlat2);
        u_xlat4.z = dot(u_xlat1, u_xlat2);
    } else {
        u_xlat2.w = 1.0;
        u_xlat4.x = dot(unity_SHAr, u_xlat2);
        u_xlat4.y = dot(unity_SHAg, u_xlat2);
        u_xlat4.z = dot(unity_SHAb, u_xlat2);
    }
    u_xlat8.xyz = u_xlat4.xyz + vs_TEXCOORD6.xyz;
    u_xlat8.xyz = max(u_xlat8.xyz, vec3(0.0, 0.0, 0.0));
    u_xlat1.xyz = u_xlat5.xyz * _Color.xyz + vec3(-0.0399999991, -0.0399999991, -0.0399999991);
    SV_Target1.xyz = u_xlat0.xxx * u_xlat1.xyz + vec3(0.0399999991, 0.0399999991, 0.0399999991);
    u_xlat0.x = (-u_xlat0.x) * 0.959999979 + 0.959999979;
    u_xlat1.xyz = u_xlat0.xxx * u_xlat6.xyz;
    SV_Target2.xyz = u_xlat2.xyz * vec3(0.5, 0.5, 0.5) + vec3(0.5, 0.5, 0.5);
    u_xlat0.xyz = u_xlat1.xyz * u_xlat8.xyz + u_xlat11.xyz;
    SV_Target3.xyz = exp2((-u_xlat0.xyz));
    SV_Target0.xyz = u_xlat1.xyz;
    SV_Target0.w = 1.0;
    SV_Target2.w = 1.0;
    SV_Target3.w = 1.0;
    return;
}

