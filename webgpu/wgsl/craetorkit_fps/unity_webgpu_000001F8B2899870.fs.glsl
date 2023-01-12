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
	float _GlossMapScale;
	mat4x4 unity_WorldToLight;
};
layout(set = 0, binding = 0) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 1) uniform mediump texture2D _MetallicGlossMap;
layout(set = 0, binding = 2) uniform mediump texture2D _BumpMap;
layout(set = 0, binding = 3) uniform highp texture2D _LightTexture0;
layout(set = 0, binding = 4) uniform highp texture2D unity_NHxRoughness;
layout(set = 0, binding = 5) uniform highp texture3D unity_ProbeVolumeSH;
layout(location = 0) in highp vec4 vs_TEXCOORD0;
layout(location = 1) in highp vec4 vs_TEXCOORD1;
layout(location = 2) in highp vec4 vs_TEXCOORD2;
layout(location = 3) in highp vec4 vs_TEXCOORD3;
layout(location = 4) in highp vec4 vs_TEXCOORD4;
layout(location = 5) in highp vec3 vs_TEXCOORD5;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 6) uniform highp  sampler samplerunity_ProbeVolumeSH;
layout(set = 0, binding = 7) uniform highp  sampler samplerunity_NHxRoughness;
layout(set = 0, binding = 8) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 9) uniform mediump  sampler sampler_BumpMap;
layout(set = 0, binding = 10) uniform mediump  sampler sampler_MetallicGlossMap;
layout(set = 0, binding = 11) uniform highp  sampler sampler_LightTexture0;
void main()
{
vec4 u_xlat0;
vec3 u_xlat1;
vec3 u_xlat2;
vec3 u_xlat3;
vec3 u_xlat4;
vec4 u_xlat5;
vec3 u_xlat6;
float u_xlat7;
vec2 u_xlat14;
bool u_xlatb14;
float u_xlat21;
float u_xlat22;
    u_xlat0.xy = texture(sampler2D(_MetallicGlossMap, sampler_MetallicGlossMap), vs_TEXCOORD0.xy).xw;
    u_xlat1.xyz = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD0.xy).xyz;
    u_xlat2.xyz = u_xlat1.xyz * _Color.xyz;
    u_xlat1.xyz = _Color.xyz * u_xlat1.xyz + vec3(-0.0399999991, -0.0399999991, -0.0399999991);
    u_xlat1.xyz = u_xlat0.xxx * u_xlat1.xyz + vec3(0.0399999991, 0.0399999991, 0.0399999991);
    u_xlat0.x = (-u_xlat0.x) * 0.959999979 + 0.959999979;
    u_xlat3.xyz = texture(sampler2D(_BumpMap, sampler_BumpMap), vs_TEXCOORD0.xy).xyw;
    u_xlat3.x = u_xlat3.z * u_xlat3.x;
    u_xlat14.xy = u_xlat3.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat22 = dot(u_xlat14.xy, u_xlat14.xy);
    u_xlat22 = min(u_xlat22, 1.0);
    u_xlat22 = (-u_xlat22) + 1.0;
    u_xlat22 = sqrt(u_xlat22);
    u_xlat3.xyz = u_xlat14.yyy * vs_TEXCOORD3.xyz;
    u_xlat3.xyz = vs_TEXCOORD2.xyz * u_xlat14.xxx + u_xlat3.xyz;
    u_xlat3.xyz = vs_TEXCOORD4.xyz * vec3(u_xlat22) + u_xlat3.xyz;
    u_xlat4.xyz = vs_TEXCOORD5.yyy * unity_WorldToLight[1].xyz;
    u_xlat4.xyz = unity_WorldToLight[0].xyz * vs_TEXCOORD5.xxx + u_xlat4.xyz;
    u_xlat4.xyz = unity_WorldToLight[2].xyz * vs_TEXCOORD5.zzz + u_xlat4.xyz;
    u_xlat4.xyz = u_xlat4.xyz + unity_WorldToLight[3].xyz;
    u_xlatb14 = unity_ProbeVolumeParams.x==1.0;
    if(u_xlatb14){
        u_xlatb14 = unity_ProbeVolumeParams.y==1.0;
        u_xlat5.xyz = vs_TEXCOORD5.yyy * unity_ProbeVolumeWorldToObject[1].xyz;
        u_xlat5.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD5.xxx + u_xlat5.xyz;
        u_xlat5.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD5.zzz + u_xlat5.xyz;
        u_xlat5.xyz = u_xlat5.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
        u_xlat5.xyz = (bool(u_xlatb14)) ? u_xlat5.xyz : vs_TEXCOORD5.xyz;
        u_xlat5.xyz = u_xlat5.xyz + (-unity_ProbeVolumeMin.xyz);
        u_xlat5.yzw = u_xlat5.xyz * unity_ProbeVolumeSizeInv.xyz;
        u_xlat14.x = u_xlat5.y * 0.25 + 0.75;
        u_xlat21 = unity_ProbeVolumeParams.z * 0.5 + 0.75;
        u_xlat5.x = max(u_xlat21, u_xlat14.x);
        u_xlat5 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat5.xzw);
    } else {
        u_xlat5.x = float(1.0);
        u_xlat5.y = float(1.0);
        u_xlat5.z = float(1.0);
        u_xlat5.w = float(1.0);
    }
    u_xlat14.x = dot(u_xlat5, unity_OcclusionMaskSelector);
    u_xlat14.x = clamp(u_xlat14.x, 0.0, 1.0);
    u_xlat21 = dot(u_xlat4.xyz, u_xlat4.xyz);
    u_xlat21 = texture(sampler2D(_LightTexture0, sampler_LightTexture0), vec2(u_xlat21)).x;
    u_xlat14.x = u_xlat14.x * u_xlat21;
    u_xlat4.xyz = u_xlat14.xxx * _LightColor0.xyz;
    u_xlat14.x = dot((-vs_TEXCOORD1.xyz), u_xlat3.xyz);
    u_xlat14.x = u_xlat14.x + u_xlat14.x;
    u_xlat5.xyz = u_xlat3.xyz * (-u_xlat14.xxx) + (-vs_TEXCOORD1.xyz);
    u_xlat6.x = vs_TEXCOORD2.w;
    u_xlat6.y = vs_TEXCOORD3.w;
    u_xlat6.z = vs_TEXCOORD4.w;
    u_xlat14.x = dot(u_xlat3.xyz, u_xlat6.xyz);
    u_xlat14.x = clamp(u_xlat14.x, 0.0, 1.0);
    u_xlat21 = dot(u_xlat5.xyz, u_xlat6.xyz);
    u_xlat21 = u_xlat21 * u_xlat21;
    u_xlat3.x = u_xlat21 * u_xlat21;
    u_xlat3.y = (-u_xlat0.y) * _GlossMapScale + 1.0;
    u_xlat7 = texture(sampler2D(unity_NHxRoughness, samplerunity_NHxRoughness), u_xlat3.xy).x;
    u_xlat7 = u_xlat7 * 16.0;
    u_xlat1.xyz = u_xlat1.xyz * vec3(u_xlat7);
    u_xlat0.xyw = u_xlat2.xyz * u_xlat0.xxx + u_xlat1.xyz;
    u_xlat1.xyz = u_xlat14.xxx * u_xlat4.xyz;
    SV_Target0.xyz = u_xlat0.xyw * u_xlat1.xyz;
    SV_Target0.w = 1.0;
    return;
}

