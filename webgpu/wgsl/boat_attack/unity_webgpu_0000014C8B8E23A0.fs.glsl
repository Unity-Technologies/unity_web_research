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
	float _DitheringTextureInvSize;
};
layout(set = 1, binding = 1, std140) uniform UnityPerDraw {
	mat4x4 unity_ObjectToWorld;
	mat4x4 unity_WorldToObject;
	vec4 unity_LODFade;
	vec4 unity_WorldTransformParams;
	vec4 unity_RenderingLayer;
	vec4 unity_LightData;
	vec4 unity_LightIndices[2];
	vec4 unity_ProbesOcclusion;
	vec4 unity_SpecCube0_HDR;
	vec4 unity_SpecCube1_HDR;
	vec4 unity_SpecCube0_BoxMax;
	vec4 unity_SpecCube0_BoxMin;
	vec4 unity_SpecCube0_ProbePosition;
	vec4 unity_SpecCube1_BoxMax;
	vec4 unity_SpecCube1_BoxMin;
	vec4 unity_SpecCube1_ProbePosition;
	vec4 unity_LightmapST;
	vec4 unity_DynamicLightmapST;
	vec4 unity_SHAr;
	vec4 unity_SHAg;
	vec4 unity_SHAb;
	vec4 unity_SHBr;
	vec4 unity_SHBg;
	vec4 unity_SHBb;
	vec4 unity_SHC;
	vec4 unity_RendererBounds_Min;
	vec4 unity_RendererBounds_Max;
	mat4x4 unity_MatrixPreviousM;
	mat4x4 unity_MatrixPreviousMI;
	vec4 unity_MotionVectorsParams;
	vec4 unity_SpriteColor;
	vec4 unity_SpriteProps;
};
layout(set = 1, binding = 2, std140) uniform UnityPerMaterial {
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
layout(set = 0, binding = 1) uniform mediump texture2D _DitheringTexture;
layout(location = 0) in highp  vec2 vs_TEXCOORD1;
layout(location = 1) in highp  vec3 vs_TEXCOORD2;
layout(location = 2) in highp  vec4 vs_TEXCOORD4;
layout(location = 0) out highp vec4 SV_Target0;
vec3 u_xlat0;
bool u_xlatb0;
vec3 u_xlat1;
bool u_xlatb2;
vec2 u_xlat5;
float u_xlat6;
layout(set = 0, binding = 2) uniform mediump  sampler sampler_BumpMap;
layout(set = 0, binding = 3) uniform mediump  sampler sampler_PointRepeat;
void main()
{
vec4 hlslcc_FragCoord = vec4(gl_FragCoord.xyz, 1.0/gl_FragCoord.w);
    u_xlat0.xy = hlslcc_FragCoord.xy * vec2(_DitheringTextureInvSize);
    u_xlat0.x = texture(sampler2D(_DitheringTexture, sampler_PointRepeat), u_xlat0.xy, _GlobalMipBias.x).w;
    u_xlatb2 = unity_LODFade.x>=0.0;
    u_xlat0.x = (u_xlatb2) ? abs(u_xlat0.x) : -abs(u_xlat0.x);
    u_xlat0.x = (-u_xlat0.x) + unity_LODFade.x;
    u_xlatb0 = u_xlat0.x<0.0;
    if(((int(u_xlatb0) * int(0xffffffffu)))!=0){discard;}
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

