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
	vec2 _GlobalMipBias;
};
layout(set = 1, binding = 1, std140) uniform UnityPerMaterial {
	vec4 _BaseMap_ST;
	vec4 _DetailAlbedoMap_ST;
	vec4 _BaseColor;
	vec4 _SpecColor;
	vec4 _EmissionColor;
	float _Cutoff;
	float _Smoothness;
	float _Metallic;
	float _BumpScale;
	float _Parallax;
	float _OcclusionStrength;
	float _ClearCoatMask;
	float _ClearCoatSmoothness;
	float _DetailAlbedoMapScale;
	float _DetailNormalMapScale;
	float _Surface;
};
layout(set = 0, binding = 0) uniform mediump texture2D _BumpMap;
layout(location = 0) in highp vec2 vs_TEXCOORD1;
layout(location = 1) in highp vec3 vs_TEXCOORD2;
layout(location = 2) in highp vec4 vs_TEXCOORD4;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 1) uniform mediump  sampler sampler_BumpMap;
void main()
{
vec3 u_xlat0;
vec3 u_xlat1;
vec2 u_xlat5;
float u_xlat6;
    u_xlat0.xyz = vs_TEXCOORD2.zxy * vs_TEXCOORD4.yzx;
    u_xlat0.xyz = vs_TEXCOORD2.yzx * vs_TEXCOORD4.zxy + (-u_xlat0.xyz);
    u_xlat0.xyz = u_xlat0.xyz * vs_TEXCOORD4.www;
    u_xlat1.xyz = texture(sampler2D(_BumpMap, sampler_BumpMap), vs_TEXCOORD1.xy, _GlobalMipBias.x).xyw;
    u_xlat1.x = u_xlat1.x * u_xlat1.z;
    u_xlat1.xy = u_xlat1.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat5.xy = u_xlat1.xy * vec2(vec2(_BumpScale, _BumpScale));
    u_xlat6 = dot(u_xlat1.xy, u_xlat1.xy);
    u_xlat6 = min(u_xlat6, 1.0);
    u_xlat6 = (-u_xlat6) + 1.0;
    u_xlat6 = sqrt(u_xlat6);
    u_xlat6 = max(u_xlat6, 1.00000002e-16);
    u_xlat0.xyz = u_xlat0.xyz * u_xlat5.yyy;
    u_xlat0.xyz = u_xlat5.xxx * vs_TEXCOORD4.xyz + u_xlat0.xyz;
    u_xlat0.xyz = vec3(u_xlat6) * vs_TEXCOORD2.xyz + u_xlat0.xyz;
    u_xlat6 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat6 = inversesqrt(u_xlat6);
    SV_Target0.xyz = vec3(u_xlat6) * u_xlat0.xyz;
    SV_Target0.w = 0.0;
    return;
}

