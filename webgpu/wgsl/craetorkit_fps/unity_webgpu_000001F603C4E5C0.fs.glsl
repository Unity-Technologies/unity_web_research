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
	vec3 _WorldSpaceCameraPos;
	vec4 _WorldSpaceLightPos0;
	vec4 unity_SHAr;
	vec4 unity_SHAg;
	vec4 unity_SHAb;
	vec4 unity_OcclusionMaskSelector;
	vec4 _LightShadowData;
	vec4 unity_ShadowFadeCenterAndType;
	mat4x4 unity_MatrixV;
	vec4 unity_ProbeVolumeParams;
	mat4x4 unity_ProbeVolumeWorldToObject;
	vec3 unity_ProbeVolumeSizeInv;
	vec3 unity_ProbeVolumeMin;
	vec4 _LightColor0;
	vec4 _Color;
};
layout(set = 0, binding = 0) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 1) uniform mediump texture2D _ShadowMapTexture;
layout(set = 0, binding = 2) uniform highp texture3D unity_ProbeVolumeSH;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 1) in highp vec3 vs_TEXCOORD1;
layout(location = 2) in highp vec3 vs_TEXCOORD2;
layout(location = 3) in highp vec3 vs_TEXCOORD3;
layout(location = 4) in highp vec4 vs_TEXCOORD5;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 3) uniform highp  sampler samplerunity_ProbeVolumeSH;
layout(set = 0, binding = 4) uniform mediump  sampler sampler_ShadowMapTexture;
layout(set = 0, binding = 5) uniform mediump  sampler sampler_MainTex;
void main()
{
vec3 u_xlat0;
vec3 u_xlat1;
bool u_xlatb1;
vec4 u_xlat2;
vec4 u_xlat3;
vec4 u_xlat4;
vec4 u_xlat5;
vec3 u_xlat7;
bool u_xlatb7;
float u_xlat8;
vec2 u_xlat13;
float u_xlat18;
bool u_xlatb18;
    u_xlat0.xyz = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD0.xy).xyz;
    u_xlat0.xyz = u_xlat0.xyz * _Color.xyz;
    u_xlat1.xyz = (-vs_TEXCOORD2.xyz) + _WorldSpaceCameraPos.xyz;
    u_xlat2.x = unity_MatrixV[0].z;
    u_xlat2.y = unity_MatrixV[1].z;
    u_xlat2.z = unity_MatrixV[2].z;
    u_xlat18 = dot(u_xlat1.xyz, u_xlat2.xyz);
    u_xlat1.xyz = vs_TEXCOORD2.xyz + (-unity_ShadowFadeCenterAndType.xyz);
    u_xlat1.x = dot(u_xlat1.xyz, u_xlat1.xyz);
    u_xlat1.x = sqrt(u_xlat1.x);
    u_xlat1.x = (-u_xlat18) + u_xlat1.x;
    u_xlat18 = unity_ShadowFadeCenterAndType.w * u_xlat1.x + u_xlat18;
    u_xlat18 = u_xlat18 * _LightShadowData.z + _LightShadowData.w;
    u_xlat18 = clamp(u_xlat18, 0.0, 1.0);
    u_xlatb1 = unity_ProbeVolumeParams.x==1.0;
    if(u_xlatb1){
        u_xlatb7 = unity_ProbeVolumeParams.y==1.0;
        u_xlat2.xyz = vs_TEXCOORD2.yyy * unity_ProbeVolumeWorldToObject[1].xyz;
        u_xlat2.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD2.xxx + u_xlat2.xyz;
        u_xlat2.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD2.zzz + u_xlat2.xyz;
        u_xlat2.xyz = u_xlat2.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
        u_xlat7.xyz = (bool(u_xlatb7)) ? u_xlat2.xyz : vs_TEXCOORD2.xyz;
        u_xlat7.xyz = u_xlat7.xyz + (-unity_ProbeVolumeMin.xyz);
        u_xlat2.yzw = u_xlat7.xyz * unity_ProbeVolumeSizeInv.xyz;
        u_xlat7.x = u_xlat2.y * 0.25 + 0.75;
        u_xlat13.x = unity_ProbeVolumeParams.z * 0.5 + 0.75;
        u_xlat2.x = max(u_xlat13.x, u_xlat7.x);
        u_xlat2 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat2.xzw);
    } else {
        u_xlat2.x = float(1.0);
        u_xlat2.y = float(1.0);
        u_xlat2.z = float(1.0);
        u_xlat2.w = float(1.0);
    }
    u_xlat7.x = dot(u_xlat2, unity_OcclusionMaskSelector);
    u_xlat7.x = clamp(u_xlat7.x, 0.0, 1.0);
    u_xlat13.xy = vs_TEXCOORD5.xy / vs_TEXCOORD5.ww;
    u_xlat13.x = texture(sampler2D(_ShadowMapTexture, sampler_ShadowMapTexture), u_xlat13.xy).x;
    u_xlat7.x = (-u_xlat13.x) + u_xlat7.x;
    u_xlat18 = u_xlat18 * u_xlat7.x + u_xlat13.x;
    u_xlat7.xyz = vec3(u_xlat18) * _LightColor0.xyz;
    if(u_xlatb1){
        u_xlatb18 = unity_ProbeVolumeParams.y==1.0;
        u_xlat2.xyz = vs_TEXCOORD2.yyy * unity_ProbeVolumeWorldToObject[1].xyz;
        u_xlat2.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD2.xxx + u_xlat2.xyz;
        u_xlat2.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD2.zzz + u_xlat2.xyz;
        u_xlat2.xyz = u_xlat2.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
        u_xlat2.xyz = (bool(u_xlatb18)) ? u_xlat2.xyz : vs_TEXCOORD2.xyz;
        u_xlat2.xyz = u_xlat2.xyz + (-unity_ProbeVolumeMin.xyz);
        u_xlat2.yzw = u_xlat2.xyz * unity_ProbeVolumeSizeInv.xyz;
        u_xlat18 = u_xlat2.y * 0.25;
        u_xlat1.x = unity_ProbeVolumeParams.z * 0.5;
        u_xlat8 = (-unity_ProbeVolumeParams.z) * 0.5 + 0.25;
        u_xlat18 = max(u_xlat18, u_xlat1.x);
        u_xlat2.x = min(u_xlat8, u_xlat18);
        u_xlat3 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat2.xzw);
        u_xlat4.xyz = u_xlat2.xzw + vec3(0.25, 0.0, 0.0);
        u_xlat4 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat4.xyz);
        u_xlat2.xyz = u_xlat2.xzw + vec3(0.5, 0.0, 0.0);
        u_xlat2 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat2.xyz);
        u_xlat5.xyz = vs_TEXCOORD1.xyz;
        u_xlat5.w = 1.0;
        u_xlat3.x = dot(u_xlat3, u_xlat5);
        u_xlat3.y = dot(u_xlat4, u_xlat5);
        u_xlat3.z = dot(u_xlat2, u_xlat5);
    } else {
        u_xlat2.xyz = vs_TEXCOORD1.xyz;
        u_xlat2.w = 1.0;
        u_xlat3.x = dot(unity_SHAr, u_xlat2);
        u_xlat3.y = dot(unity_SHAg, u_xlat2);
        u_xlat3.z = dot(unity_SHAb, u_xlat2);
    }
    u_xlat2.xyz = u_xlat3.xyz + vs_TEXCOORD3.xyz;
    u_xlat2.xyz = max(u_xlat2.xyz, vec3(0.0, 0.0, 0.0));
    u_xlat18 = dot(vs_TEXCOORD1.xyz, _WorldSpaceLightPos0.xyz);
    u_xlat18 = max(u_xlat18, 0.0);
    u_xlat1.xyz = u_xlat0.xyz * u_xlat7.xyz;
    u_xlat0.xyz = u_xlat0.xyz * u_xlat2.xyz;
    SV_Target0.xyz = u_xlat1.xyz * vec3(u_xlat18) + u_xlat0.xyz;
    SV_Target0.w = 1.0;
    return;
}

