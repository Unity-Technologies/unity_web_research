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
	vec4 _Time;
	vec4 unity_SHAr;
	vec4 unity_SHAg;
	vec4 unity_SHAb;
	vec4 unity_ProbeVolumeParams;
	mat4x4 unity_ProbeVolumeWorldToObject;
	vec3 unity_ProbeVolumeSizeInv;
	vec3 unity_ProbeVolumeMin;
	vec4 _VeinColor;
	vec4 _BrainColor;
};
layout(set = 0, binding = 0) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 1) uniform mediump texture2D _Occlusion;
layout(set = 0, binding = 2) uniform mediump texture2D _Metallic;
layout(set = 0, binding = 3) uniform mediump texture2D _NormalMap;
layout(set = 0, binding = 4) uniform highp texture3D unity_ProbeVolumeSH;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 1) in highp vec4 vs_TEXCOORD1;
layout(location = 2) in highp vec4 vs_TEXCOORD2;
layout(location = 3) in highp vec4 vs_TEXCOORD3;
layout(location = 4) in highp vec3 vs_TEXCOORD6;
layout(location = 0) out highp vec4 SV_Target0;
layout(location = 1) out highp vec4 SV_Target1;
layout(location = 2) out highp vec4 SV_Target2;
layout(location = 3) out highp vec4 SV_Target3;
layout(set = 0, binding = 5) uniform highp  sampler samplerunity_ProbeVolumeSH;
layout(set = 0, binding = 6) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 7) uniform mediump  sampler sampler_Metallic;
layout(set = 0, binding = 8) uniform mediump  sampler sampler_NormalMap;
layout(set = 0, binding = 9) uniform mediump  sampler sampler_Occlusion;
void main()
{
vec4 u_xlat0;
vec4 u_xlat1;
vec4 u_xlat2;
vec3 u_xlat3;
vec4 u_xlat4;
vec4 u_xlat5;
vec4 u_xlat6;
vec2 u_xlat8;
bool u_xlatb8;
vec3 u_xlat10;
vec3 u_xlat12;
float u_xlat15;
float u_xlat23;
float u_xlat24;
    u_xlat0.xyz = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD0.xy).xyz;
    u_xlat0.w = texture(sampler2D(_Occlusion, sampler_Occlusion), vs_TEXCOORD0.xy).x;
    u_xlat1 = texture(sampler2D(_Metallic, sampler_Metallic), vs_TEXCOORD0.xy);
    u_xlat2.xyz = texture(sampler2D(_NormalMap, sampler_NormalMap), vs_TEXCOORD0.xy).xyw;
    u_xlat2.x = u_xlat2.z * u_xlat2.x;
    u_xlat2.xy = u_xlat2.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat23 = dot(u_xlat2.xy, u_xlat2.xy);
    u_xlat23 = min(u_xlat23, 1.0);
    u_xlat23 = (-u_xlat23) + 1.0;
    u_xlat2.z = sqrt(u_xlat23);
    u_xlat23 = fract(_Time.y);
    u_xlat23 = u_xlat23 + -0.0399999991;
    u_xlat23 = (-u_xlat23) + vs_TEXCOORD0.y;
    u_xlat23 = u_xlat23 * 12.5;
    u_xlat23 = clamp(u_xlat23, 0.0, 1.0);
    u_xlat3.x = u_xlat23 * -2.0 + 3.0;
    u_xlat23 = u_xlat23 * u_xlat23;
    u_xlat23 = u_xlat23 * u_xlat3.x;
    u_xlat23 = u_xlat23 * 3.1400001;
    u_xlat23 = sin(u_xlat23);
    u_xlat23 = max(u_xlat23, 0.0);
    u_xlat3.x = _Time.y * 0.200000003;
    u_xlat3.x = fract(u_xlat3.x);
    u_xlat3.x = u_xlat3.x * 3.1400001;
    u_xlat3.x = sin(u_xlat3.x);
    u_xlat8.xy = (-u_xlat1.yz) + vec2(1.0, 1.0);
    u_xlat10.xyz = u_xlat8.xxx * _BrainColor.xyz;
    u_xlat4.xyz = u_xlat8.yyy * _VeinColor.xyz;
    u_xlat4.xyz = vec3(u_xlat23) * u_xlat4.xyz;
    u_xlat3.xyz = u_xlat10.xyz * u_xlat3.xxx + u_xlat4.xyz;
    u_xlat4.x = dot(vs_TEXCOORD1.xyz, u_xlat2.xyz);
    u_xlat4.y = dot(vs_TEXCOORD2.xyz, u_xlat2.xyz);
    u_xlat4.z = dot(vs_TEXCOORD3.xyz, u_xlat2.xyz);
    u_xlat8.x = dot(u_xlat4.xyz, u_xlat4.xyz);
    u_xlat8.x = inversesqrt(u_xlat8.x);
    u_xlat2.xyz = u_xlat8.xxx * u_xlat4.xyz;
    u_xlatb8 = unity_ProbeVolumeParams.x==1.0;
    if(u_xlatb8){
        u_xlatb8 = unity_ProbeVolumeParams.y==1.0;
        u_xlat4.xyz = vs_TEXCOORD2.www * unity_ProbeVolumeWorldToObject[1].xyz;
        u_xlat4.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD1.www + u_xlat4.xyz;
        u_xlat4.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD3.www + u_xlat4.xyz;
        u_xlat4.xyz = u_xlat4.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
        u_xlat12.x = vs_TEXCOORD1.w;
        u_xlat12.y = vs_TEXCOORD2.w;
        u_xlat12.z = vs_TEXCOORD3.w;
        u_xlat4.xyz = (bool(u_xlatb8)) ? u_xlat4.xyz : u_xlat12.xyz;
        u_xlat4.xyz = u_xlat4.xyz + (-unity_ProbeVolumeMin.xyz);
        u_xlat4.yzw = u_xlat4.xyz * unity_ProbeVolumeSizeInv.xyz;
        u_xlat8.x = u_xlat4.y * 0.25;
        u_xlat15 = unity_ProbeVolumeParams.z * 0.5;
        u_xlat24 = (-unity_ProbeVolumeParams.z) * 0.5 + 0.25;
        u_xlat8.x = max(u_xlat15, u_xlat8.x);
        u_xlat4.x = min(u_xlat24, u_xlat8.x);
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
        u_xlat2.w = 1.0;
        u_xlat5.x = dot(unity_SHAr, u_xlat2);
        u_xlat5.y = dot(unity_SHAg, u_xlat2);
        u_xlat5.z = dot(unity_SHAb, u_xlat2);
    }
    u_xlat4.xyz = u_xlat5.xyz + vs_TEXCOORD6.xyz;
    u_xlat4.xyz = max(u_xlat4.xyz, vec3(0.0, 0.0, 0.0));
    u_xlat4.xyz = u_xlat0.www * u_xlat4.xyz;
    u_xlat5.xyz = u_xlat0.xyz + vec3(-0.0399999991, -0.0399999991, -0.0399999991);
    SV_Target1.xyz = u_xlat1.xxx * u_xlat5.xyz + vec3(0.0399999991, 0.0399999991, 0.0399999991);
    u_xlat1.x = (-u_xlat1.x) * 0.959999979 + 0.959999979;
    u_xlat0.xyz = u_xlat0.xyz * u_xlat1.xxx;
    SV_Target2.xyz = u_xlat2.xyz * vec3(0.5, 0.5, 0.5) + vec3(0.5, 0.5, 0.5);
    u_xlat1.xyz = u_xlat0.xyz * u_xlat4.xyz + u_xlat3.xyz;
    SV_Target3.xyz = exp2((-u_xlat1.xyz));
    SV_Target0 = u_xlat0;
    SV_Target1.w = u_xlat1.w;
    SV_Target2.w = 1.0;
    SV_Target3.w = 1.0;
    return;
}

