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
	vec4 _WorldSpaceLightPos0;
	vec4 unity_OcclusionMaskSelector;
	vec4 unity_FogColor;
	vec4 unity_SpecCube0_HDR;
	vec4 unity_ProbeVolumeParams;
	mat4x4 unity_ProbeVolumeWorldToObject;
	vec3 unity_ProbeVolumeSizeInv;
	vec3 unity_ProbeVolumeMin;
	vec4 _LightColor0;
	vec4 _Color;
	float _GlossMapScale;
	vec4 _EmissionColor;
};
layout(set = 0, binding = 0) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 1) uniform mediump texture2D _MetallicGlossMap;
layout(set = 0, binding = 2) uniform mediump texture2D _BumpMap;
layout(set = 0, binding = 3) uniform mediump texture2D _OcclusionMap;
layout(set = 0, binding = 4) uniform highp texture2D unity_NHxRoughness;
layout(set = 0, binding = 5) uniform mediump texture2D _EmissionMap;
layout(set = 0, binding = 6) uniform mediump textureCube unity_SpecCube0;
layout(set = 0, binding = 7) uniform highp texture3D unity_ProbeVolumeSH;
layout(location = 0) in highp vec4 vs_TEXCOORD0;
layout(location = 1) in highp vec4 vs_TEXCOORD1;
layout(location = 2) in highp vec4 vs_TEXCOORD2;
layout(location = 3) in highp vec4 vs_TEXCOORD3;
layout(location = 4) in highp vec4 vs_TEXCOORD4;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 8) uniform mediump  sampler samplerunity_SpecCube0;
layout(set = 0, binding = 9) uniform highp  sampler samplerunity_ProbeVolumeSH;
layout(set = 0, binding = 10) uniform highp  sampler samplerunity_NHxRoughness;
layout(set = 0, binding = 11) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 12) uniform mediump  sampler sampler_BumpMap;
layout(set = 0, binding = 13) uniform mediump  sampler sampler_MetallicGlossMap;
layout(set = 0, binding = 14) uniform mediump  sampler sampler_OcclusionMap;
layout(set = 0, binding = 15) uniform mediump  sampler sampler_EmissionMap;
void main()
{
vec4 u_xlat0;
vec3 u_xlat1;
vec3 u_xlat2;
vec3 u_xlat3;
vec4 u_xlat4;
vec4 u_xlat5;
vec3 u_xlat6;
vec3 u_xlat7;
float u_xlat8;
vec3 u_xlat13;
vec2 u_xlat16;
bool u_xlatb16;
float u_xlat24;
float u_xlat25;
    u_xlat0.xy = texture(sampler2D(_MetallicGlossMap, sampler_MetallicGlossMap), vs_TEXCOORD0.xy).xw;
    u_xlat1.xyz = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD0.xy).xyz;
    u_xlat2.xyz = u_xlat1.xyz * _Color.xyz;
    u_xlat1.xyz = _Color.xyz * u_xlat1.xyz + vec3(-0.0399999991, -0.0399999991, -0.0399999991);
    u_xlat1.xyz = u_xlat0.xxx * u_xlat1.xyz + vec3(0.0399999991, 0.0399999991, 0.0399999991);
    u_xlat0.x = (-u_xlat0.x) * 0.959999979 + 0.959999979;
    u_xlat3.xyz = texture(sampler2D(_BumpMap, sampler_BumpMap), vs_TEXCOORD0.xy).xyw;
    u_xlat3.x = u_xlat3.z * u_xlat3.x;
    u_xlat16.xy = u_xlat3.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat25 = dot(u_xlat16.xy, u_xlat16.xy);
    u_xlat25 = min(u_xlat25, 1.0);
    u_xlat25 = (-u_xlat25) + 1.0;
    u_xlat25 = sqrt(u_xlat25);
    u_xlat3.xyz = u_xlat16.yyy * vs_TEXCOORD3.xyz;
    u_xlat3.xyz = vs_TEXCOORD2.xyz * u_xlat16.xxx + u_xlat3.xyz;
    u_xlat3.xyz = vs_TEXCOORD4.xyz * vec3(u_xlat25) + u_xlat3.xyz;
    u_xlatb16 = unity_ProbeVolumeParams.x==1.0;
    if(u_xlatb16){
        u_xlatb16 = unity_ProbeVolumeParams.y==1.0;
        u_xlat4.xyz = vs_TEXCOORD3.www * unity_ProbeVolumeWorldToObject[1].xyz;
        u_xlat4.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD2.www + u_xlat4.xyz;
        u_xlat4.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD4.www + u_xlat4.xyz;
        u_xlat4.xyz = u_xlat4.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
        u_xlat13.x = vs_TEXCOORD2.w;
        u_xlat13.y = vs_TEXCOORD3.w;
        u_xlat13.z = vs_TEXCOORD4.w;
        u_xlat4.xyz = (bool(u_xlatb16)) ? u_xlat4.xyz : u_xlat13.xyz;
        u_xlat4.xyz = u_xlat4.xyz + (-unity_ProbeVolumeMin.xyz);
        u_xlat4.yzw = u_xlat4.xyz * unity_ProbeVolumeSizeInv.xyz;
        u_xlat16.x = u_xlat4.y * 0.25 + 0.75;
        u_xlat24 = unity_ProbeVolumeParams.z * 0.5 + 0.75;
        u_xlat4.x = max(u_xlat24, u_xlat16.x);
        u_xlat4 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat4.xzw);
    } else {
        u_xlat4.x = float(1.0);
        u_xlat4.y = float(1.0);
        u_xlat4.z = float(1.0);
        u_xlat4.w = float(1.0);
    }
    u_xlat16.x = dot(u_xlat4, unity_OcclusionMaskSelector);
    u_xlat16.x = clamp(u_xlat16.x, 0.0, 1.0);
    u_xlat24 = texture(sampler2D(_OcclusionMap, sampler_OcclusionMap), vs_TEXCOORD0.xy).y;
    u_xlat4.z = (-u_xlat0.y) * _GlossMapScale + 1.0;
    u_xlat25 = dot(vs_TEXCOORD1.xyz, u_xlat3.xyz);
    u_xlat25 = u_xlat25 + u_xlat25;
    u_xlat5.xyz = u_xlat3.xyz * (-vec3(u_xlat25)) + vs_TEXCOORD1.xyz;
    u_xlat6.xyz = u_xlat16.xxx * _LightColor0.xyz;
    u_xlat16.x = (-u_xlat4.z) * 0.699999988 + 1.70000005;
    u_xlat16.x = u_xlat16.x * u_xlat4.z;
    u_xlat16.x = u_xlat16.x * 6.0;
    u_xlat5 = textureLod(samplerCube(unity_SpecCube0, samplerunity_SpecCube0), u_xlat5.xyz, u_xlat16.x);
    u_xlat16.x = u_xlat5.w + -1.0;
    u_xlat16.x = unity_SpecCube0_HDR.w * u_xlat16.x + 1.0;
    u_xlat16.x = log2(u_xlat16.x);
    u_xlat16.x = u_xlat16.x * unity_SpecCube0_HDR.y;
    u_xlat16.x = exp2(u_xlat16.x);
    u_xlat16.x = u_xlat16.x * unity_SpecCube0_HDR.x;
    u_xlat5.xyz = u_xlat5.xyz * u_xlat16.xxx;
    u_xlat5.xyz = vec3(u_xlat24) * u_xlat5.xyz;
    u_xlat16.x = dot((-vs_TEXCOORD1.xyz), u_xlat3.xyz);
    u_xlat24 = u_xlat16.x + u_xlat16.x;
    u_xlat7.xyz = u_xlat3.xyz * (-vec3(u_xlat24)) + (-vs_TEXCOORD1.xyz);
    u_xlat24 = dot(u_xlat3.xyz, _WorldSpaceLightPos0.xyz);
    u_xlat24 = clamp(u_xlat24, 0.0, 1.0);
    u_xlat16.x = u_xlat16.x;
    u_xlat16.x = clamp(u_xlat16.x, 0.0, 1.0);
    u_xlat3.x = dot(u_xlat7.xyz, _WorldSpaceLightPos0.xyz);
    u_xlat3.y = (-u_xlat16.x) + 1.0;
    u_xlat3.xy = u_xlat3.xy * u_xlat3.xy;
    u_xlat4.xy = u_xlat3.xy * u_xlat3.xy;
    u_xlat8 = u_xlat0.y * _GlossMapScale + (-u_xlat0.x);
    u_xlat8 = u_xlat8 + 1.0;
    u_xlat8 = clamp(u_xlat8, 0.0, 1.0);
    u_xlat16.x = texture(sampler2D(unity_NHxRoughness, samplerunity_NHxRoughness), u_xlat4.xz).x;
    u_xlat16.x = u_xlat16.x * 16.0;
    u_xlat3.xyz = u_xlat1.xyz * u_xlat16.xxx;
    u_xlat2.xyz = u_xlat2.xyz * u_xlat0.xxx + u_xlat3.xyz;
    u_xlat0.xzw = vec3(u_xlat24) * u_xlat6.xyz;
    u_xlat3.xyz = (-u_xlat1.xyz) + vec3(u_xlat8);
    u_xlat1.xyz = u_xlat4.yyy * u_xlat3.xyz + u_xlat1.xyz;
    u_xlat1.xyz = u_xlat1.xyz * u_xlat5.xyz;
    u_xlat0.xyz = u_xlat2.xyz * u_xlat0.xzw + u_xlat1.xyz;
    u_xlat1.xyz = texture(sampler2D(_EmissionMap, sampler_EmissionMap), vs_TEXCOORD0.xy).xyz;
    u_xlat0.xyz = u_xlat1.xyz * _EmissionColor.xyz + u_xlat0.xyz;
    u_xlat24 = vs_TEXCOORD1.w;
    u_xlat24 = clamp(u_xlat24, 0.0, 1.0);
    u_xlat0.xyz = u_xlat0.xyz + (-unity_FogColor.xyz);
    SV_Target0.xyz = vec3(u_xlat24) * u_xlat0.xyz + unity_FogColor.xyz;
    SV_Target0.w = 1.0;
    return;
}

