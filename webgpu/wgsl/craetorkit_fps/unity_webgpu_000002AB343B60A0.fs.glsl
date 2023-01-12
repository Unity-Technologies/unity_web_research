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
	mat4x4 unity_WorldToLight;
};
layout(set = 0, binding = 0) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 1) uniform mediump texture2D _BumpMap;
layout(set = 0, binding = 2) uniform highp texture2D _LightTexture0;
layout(set = 0, binding = 3) uniform highp texture2D unity_NHxRoughness;
layout(set = 0, binding = 4) uniform highp texture3D unity_ProbeVolumeSH;
layout(location = 0) in highp vec4 vs_TEXCOORD0;
layout(location = 1) in highp vec4 vs_TEXCOORD1;
layout(location = 2) in highp vec4 vs_TEXCOORD2;
layout(location = 3) in highp vec4 vs_TEXCOORD3;
layout(location = 4) in highp vec4 vs_TEXCOORD4;
layout(location = 5) in highp vec3 vs_TEXCOORD5;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 5) uniform highp  sampler samplerunity_ProbeVolumeSH;
layout(set = 0, binding = 6) uniform highp  sampler samplerunity_NHxRoughness;
layout(set = 0, binding = 7) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 8) uniform mediump  sampler sampler_BumpMap;
layout(set = 0, binding = 9) uniform highp  sampler sampler_LightTexture0;
void main()
{
vec3 u_xlat0;
vec3 u_xlat1;
vec3 u_xlat2;
vec3 u_xlat3;
vec4 u_xlat4;
vec3 u_xlat5;
vec3 u_xlat8;
float u_xlat18;
float u_xlat19;
bool u_xlatb19;
float u_xlat20;
    u_xlat0.xyz = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD0.xy).xyz;
    u_xlat1.xyz = u_xlat0.xyz * _Color.xyz;
    u_xlat0.xyz = _Color.xyz * u_xlat0.xyz + vec3(-0.0399999991, -0.0399999991, -0.0399999991);
    u_xlat0.xyz = vec3(vec3(_Metallic, _Metallic, _Metallic)) * u_xlat0.xyz + vec3(0.0399999991, 0.0399999991, 0.0399999991);
    u_xlat18 = (-_Metallic) * 0.959999979 + 0.959999979;
    u_xlat2.xyz = texture(sampler2D(_BumpMap, sampler_BumpMap), vs_TEXCOORD0.xy).xyw;
    u_xlat2.x = u_xlat2.z * u_xlat2.x;
    u_xlat2.xy = u_xlat2.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat19 = dot(u_xlat2.xy, u_xlat2.xy);
    u_xlat19 = min(u_xlat19, 1.0);
    u_xlat19 = (-u_xlat19) + 1.0;
    u_xlat19 = sqrt(u_xlat19);
    u_xlat8.xyz = u_xlat2.yyy * vs_TEXCOORD3.xyz;
    u_xlat2.xyz = vs_TEXCOORD2.xyz * u_xlat2.xxx + u_xlat8.xyz;
    u_xlat2.xyz = vs_TEXCOORD4.xyz * vec3(u_xlat19) + u_xlat2.xyz;
    u_xlat3.xy = vs_TEXCOORD5.yy * unity_WorldToLight[1].xy;
    u_xlat3.xy = unity_WorldToLight[0].xy * vs_TEXCOORD5.xx + u_xlat3.xy;
    u_xlat3.xy = unity_WorldToLight[2].xy * vs_TEXCOORD5.zz + u_xlat3.xy;
    u_xlat3.xy = u_xlat3.xy + unity_WorldToLight[3].xy;
    u_xlatb19 = unity_ProbeVolumeParams.x==1.0;
    if(u_xlatb19){
        u_xlatb19 = unity_ProbeVolumeParams.y==1.0;
        u_xlat4.xyz = vs_TEXCOORD5.yyy * unity_ProbeVolumeWorldToObject[1].xyz;
        u_xlat4.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD5.xxx + u_xlat4.xyz;
        u_xlat4.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD5.zzz + u_xlat4.xyz;
        u_xlat4.xyz = u_xlat4.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
        u_xlat4.xyz = (bool(u_xlatb19)) ? u_xlat4.xyz : vs_TEXCOORD5.xyz;
        u_xlat4.xyz = u_xlat4.xyz + (-unity_ProbeVolumeMin.xyz);
        u_xlat4.yzw = u_xlat4.xyz * unity_ProbeVolumeSizeInv.xyz;
        u_xlat19 = u_xlat4.y * 0.25 + 0.75;
        u_xlat20 = unity_ProbeVolumeParams.z * 0.5 + 0.75;
        u_xlat4.x = max(u_xlat19, u_xlat20);
        u_xlat4 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat4.xzw);
    } else {
        u_xlat4.x = float(1.0);
        u_xlat4.y = float(1.0);
        u_xlat4.z = float(1.0);
        u_xlat4.w = float(1.0);
    }
    u_xlat19 = dot(u_xlat4, unity_OcclusionMaskSelector);
    u_xlat19 = clamp(u_xlat19, 0.0, 1.0);
    u_xlat20 = texture(sampler2D(_LightTexture0, sampler_LightTexture0), u_xlat3.xy).w;
    u_xlat19 = u_xlat19 * u_xlat20;
    u_xlat3.xyz = vec3(u_xlat19) * _LightColor0.xyz;
    u_xlat19 = dot((-vs_TEXCOORD1.xyz), u_xlat2.xyz);
    u_xlat19 = u_xlat19 + u_xlat19;
    u_xlat4.xyz = u_xlat2.xyz * (-vec3(u_xlat19)) + (-vs_TEXCOORD1.xyz);
    u_xlat5.x = vs_TEXCOORD2.w;
    u_xlat5.y = vs_TEXCOORD3.w;
    u_xlat5.z = vs_TEXCOORD4.w;
    u_xlat19 = dot(u_xlat2.xyz, u_xlat5.xyz);
    u_xlat19 = clamp(u_xlat19, 0.0, 1.0);
    u_xlat2.x = dot(u_xlat4.xyz, u_xlat5.xyz);
    u_xlat2.x = u_xlat2.x * u_xlat2.x;
    u_xlat2.x = u_xlat2.x * u_xlat2.x;
    u_xlat2.y = (-_Glossiness) + 1.0;
    u_xlat2.x = texture(sampler2D(unity_NHxRoughness, samplerunity_NHxRoughness), u_xlat2.xy).x;
    u_xlat2.x = u_xlat2.x * 16.0;
    u_xlat0.xyz = u_xlat0.xyz * u_xlat2.xxx;
    u_xlat0.xyz = u_xlat1.xyz * vec3(u_xlat18) + u_xlat0.xyz;
    u_xlat1.xyz = vec3(u_xlat19) * u_xlat3.xyz;
    u_xlat0.xyz = u_xlat0.xyz * u_xlat1.xyz;
    u_xlat18 = vs_TEXCOORD1.w;
    u_xlat18 = clamp(u_xlat18, 0.0, 1.0);
    SV_Target0.xyz = u_xlat0.xyz * vec3(u_xlat18);
    SV_Target0.w = 1.0;
    return;
}

