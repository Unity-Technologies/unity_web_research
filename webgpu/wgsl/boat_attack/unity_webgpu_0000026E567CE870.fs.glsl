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
layout(set = 1, binding = 0, std140) uniform UnityPerDraw {
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
layout(location = 0) in highp  vec4 vs_POSITION_CS_NO_JITTER0;
layout(location = 1) in highp  vec4 vs_PREV_POSITION_CS_NO_JITTER0;
layout(location = 0) out highp vec4 SV_Target0;
vec2 u_xlat0;
float u_xlat2;
bool u_xlatb2;
void main()
{
    u_xlat0.x = float(1.0) / float(vs_PREV_POSITION_CS_NO_JITTER0.w);
    u_xlat0.xy = u_xlat0.xx * vs_PREV_POSITION_CS_NO_JITTER0.xy;
    u_xlat2 = float(1.0) / float(vs_POSITION_CS_NO_JITTER0.w);
    u_xlat0.xy = vs_POSITION_CS_NO_JITTER0.xy * vec2(u_xlat2) + (-u_xlat0.xy);
    u_xlat0.xy = u_xlat0.xy * vec2(0.5, -0.5);
    u_xlatb2 = unity_MotionVectorsParams.y!=0.0;
    SV_Target0.xy = bool(u_xlatb2) ? u_xlat0.xy : vec2(0.0, 0.0);
    SV_Target0.zw = vec2(0.0, 0.0);
    return;
}

