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
	vec4 _Color;
	float _BumpScale;
	float _GlossMapScale;
	float _OcclusionStrength;
	vec4 _EmissionColor;
};
layout(set = 0, binding = 1) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 2) uniform mediump texture2D _MetallicGlossMap;
layout(set = 0, binding = 3) uniform mediump texture2D _BumpMap;
layout(set = 0, binding = 4) uniform mediump texture2D _OcclusionMap;
layout(set = 0, binding = 5) uniform mediump texture2D _EmissionMap;
layout(location = 0) in highp vec4 vs_TEXCOORD0;
layout(location = 1) in highp vec4 vs_TEXCOORD2;
layout(location = 2) in highp vec4 vs_TEXCOORD3;
layout(location = 3) in highp vec4 vs_TEXCOORD4;
layout(location = 0) out highp vec4 SV_Target0;
layout(location = 1) out highp vec4 SV_Target1;
layout(location = 2) out highp vec4 SV_Target2;
layout(location = 3) out highp vec4 SV_Target3;
vec3 u_xlat0;
vec3 u_xlat1;
vec2 u_xlat2;
float u_xlat3;
float u_xlat9;
layout(set = 0, binding = 6) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 7) uniform mediump  sampler sampler_BumpMap;
layout(set = 0, binding = 8) uniform mediump  sampler sampler_MetallicGlossMap;
layout(set = 0, binding = 9) uniform mediump  sampler sampler_OcclusionMap;
layout(set = 0, binding = 10) uniform mediump  sampler sampler_EmissionMap;
void main()
{
    u_xlat0.x = texture(sampler2D(_OcclusionMap, sampler_OcclusionMap), vs_TEXCOORD0.xy).y;
    u_xlat3 = (-_OcclusionStrength) + 1.0;
    SV_Target0.w = u_xlat0.x * _OcclusionStrength + u_xlat3;
    u_xlat0.xyz = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD0.xy).xyz;
    u_xlat1.xyz = u_xlat0.xyz * _Color.xyz;
    u_xlat0.xyz = _Color.xyz * u_xlat0.xyz + vec3(-0.0399999991, -0.0399999991, -0.0399999991);
    u_xlat2.xy = texture(sampler2D(_MetallicGlossMap, sampler_MetallicGlossMap), vs_TEXCOORD0.xy).xw;
    u_xlat9 = (-u_xlat2.x) * 0.959999979 + 0.959999979;
    SV_Target0.xyz = vec3(u_xlat9) * u_xlat1.xyz;
    SV_Target1.xyz = u_xlat2.xxx * u_xlat0.xyz + vec3(0.0399999991, 0.0399999991, 0.0399999991);
    SV_Target1.w = u_xlat2.y * _GlossMapScale;
    u_xlat0.xyz = texture(sampler2D(_BumpMap, sampler_BumpMap), vs_TEXCOORD0.xy).xyw;
    u_xlat0.x = u_xlat0.z * u_xlat0.x;
    u_xlat0.xy = u_xlat0.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat0.xy = u_xlat0.xy * vec2(_BumpScale);
    u_xlat1.xyz = u_xlat0.yyy * vs_TEXCOORD3.xyz;
    u_xlat1.xyz = vs_TEXCOORD2.xyz * u_xlat0.xxx + u_xlat1.xyz;
    u_xlat0.x = dot(u_xlat0.xy, u_xlat0.xy);
    u_xlat0.x = min(u_xlat0.x, 1.0);
    u_xlat0.x = (-u_xlat0.x) + 1.0;
    u_xlat0.x = sqrt(u_xlat0.x);
    u_xlat0.xyz = vs_TEXCOORD4.xyz * u_xlat0.xxx + u_xlat1.xyz;
    u_xlat9 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat9 = inversesqrt(u_xlat9);
    u_xlat0.xyz = vec3(u_xlat9) * u_xlat0.xyz;
    SV_Target2.xyz = u_xlat0.xyz * vec3(0.5, 0.5, 0.5) + vec3(0.5, 0.5, 0.5);
    SV_Target2.w = 1.0;
    u_xlat0.xyz = texture(sampler2D(_EmissionMap, sampler_EmissionMap), vs_TEXCOORD0.xy).xyz;
    SV_Target3.xyz = u_xlat0.xyz * _EmissionColor.xyz;
    SV_Target3.w = 1.0;
    return;
}

