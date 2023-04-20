#version 440
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shading_language_420pack : require

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
layout(set = 1, binding = 0, std140) uniform VGlobals {
	vec4 _TimeParameters;
	mat4x4 unity_MatrixVP;
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
layout(location = 0) in highp vec3 in_POSITION0;
layout(location = 1) in highp vec4 in_TEXCOORD0;
layout(location = 2) in highp vec4 in_COLOR0;
vec4 u_xlat0;
vec4 u_xlat1;
vec3 u_xlat2;
void main()
{
    u_xlat0.xy = in_TEXCOORD0.yy + vec2(0.5, 1.0);
    u_xlat2.x = floor(u_xlat0.y);
    u_xlat0.x = (-u_xlat2.x) + u_xlat0.x;
    u_xlat0.x = u_xlat0.x + u_xlat0.x;
    u_xlat0.x = abs(u_xlat0.x) * 2.0 + -1.0;
    u_xlat0.x = u_xlat0.x * 6.28318596;
    u_xlat0.x = _TimeParameters.x * 3.0 + u_xlat0.x;
    u_xlat0.x = sin(u_xlat0.x);
    u_xlat0.x = u_xlat0.x * in_COLOR0.y;
    u_xlat0.x = (-u_xlat0.x) * 0.5 + in_POSITION0.z;
    u_xlat2.xyz = in_POSITION0.yyy * unity_ObjectToWorld[1].xyz;
    u_xlat2.xyz = unity_ObjectToWorld[0].xyz * in_POSITION0.xxx + u_xlat2.xyz;
    u_xlat0.xyz = unity_ObjectToWorld[2].xyz * u_xlat0.xxx + u_xlat2.xyz;
    u_xlat0.xyz = u_xlat0.xyz + unity_ObjectToWorld[3].xyz;
    u_xlat1 = u_xlat0.yyyy * unity_MatrixVP[1];
    u_xlat1 = unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
    u_xlat0 = unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
    gl_Position = u_xlat0 + unity_MatrixVP[3];
    return;
}

