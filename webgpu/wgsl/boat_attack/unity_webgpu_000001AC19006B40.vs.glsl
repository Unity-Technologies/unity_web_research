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
layout(set = 1, binding = 1, std140) uniform VGlobals {
	vec4 _TimeParameters;
	mat4x4 unity_MatrixVP;
	mat4x4 _PrevViewProjMatrix;
	mat4x4 _NonJitteredViewProjMatrix;
};
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
layout(location = 0) in highp vec3 in_POSITION0;
layout(location = 1) in highp vec4 in_TEXCOORD0;
layout(location = 2) in highp vec4 in_COLOR0;
layout(location = 3) in highp vec3 in_TEXCOORD4;
layout(location = 0) out highp vec3 vs_CLIP_POSITION_NO_JITTER0;
layout(location = 1) out highp vec3 vs_PREVIOUS_CLIP_POSITION_NO_JITTER0;
vec4 u_xlat0;
vec4 u_xlat1;
vec4 u_xlat2;
vec3 u_xlat3;
float u_xlat4;
bool u_xlatb8;
void main()
{
    u_xlat0.xy = in_TEXCOORD0.yy + vec2(0.5, 1.0);
    u_xlat4 = floor(u_xlat0.y);
    u_xlat0.x = (-u_xlat4) + u_xlat0.x;
    u_xlat0.x = u_xlat0.x + u_xlat0.x;
    u_xlat0.x = abs(u_xlat0.x) * 2.0 + -1.0;
    u_xlat0.x = u_xlat0.x * 6.28318596;
    u_xlat0.x = _TimeParameters.x * 3.0 + u_xlat0.x;
    u_xlat0.x = sin(u_xlat0.x);
    u_xlat0.x = u_xlat0.x * in_COLOR0.y;
    u_xlat4 = (-u_xlat0.x) * 0.5 + in_POSITION0.z;
    u_xlat1.xyz = in_POSITION0.yyy * unity_ObjectToWorld[1].xyz;
    u_xlat1.xyz = unity_ObjectToWorld[0].xyz * in_POSITION0.xxx + u_xlat1.xyz;
    u_xlat1.xyz = unity_ObjectToWorld[2].xyz * vec3(u_xlat4) + u_xlat1.xyz;
    u_xlat1.xyz = u_xlat1.xyz + unity_ObjectToWorld[3].xyz;
    u_xlat2 = u_xlat1.yyyy * unity_MatrixVP[1];
    u_xlat2 = unity_MatrixVP[0] * u_xlat1.xxxx + u_xlat2;
    u_xlat2 = unity_MatrixVP[2] * u_xlat1.zzzz + u_xlat2;
    u_xlat2 = u_xlat2 + unity_MatrixVP[3];
    gl_Position.z = (-unity_MotionVectorsParams.z) * u_xlat2.w + u_xlat2.z;
    u_xlatb8 = unity_MotionVectorsParams.y!=0.0;
    if(u_xlatb8){
        u_xlatb8 = unity_MotionVectorsParams.x==1.0;
        if(u_xlatb8){
            u_xlat4 = (-u_xlat0.x) * 0.5 + in_TEXCOORD4.z;
            u_xlat0.xz = in_TEXCOORD4.xy;
        } else {
            u_xlat0.xz = in_POSITION0.xy;
        }
        u_xlat3.xyz = u_xlat1.yyy * _NonJitteredViewProjMatrix[1].xyw;
        u_xlat1.xyw = _NonJitteredViewProjMatrix[0].xyw * u_xlat1.xxx + u_xlat3.xyz;
        u_xlat1.xyz = _NonJitteredViewProjMatrix[2].xyw * u_xlat1.zzz + u_xlat1.xyw;
        vs_CLIP_POSITION_NO_JITTER0.xyz = u_xlat1.xyz + _NonJitteredViewProjMatrix[3].xyw;
        u_xlat1 = u_xlat0.zzzz * unity_MatrixPreviousM[1];
        u_xlat1 = unity_MatrixPreviousM[0] * u_xlat0.xxxx + u_xlat1;
        u_xlat0 = unity_MatrixPreviousM[2] * vec4(u_xlat4) + u_xlat1;
        u_xlat0 = u_xlat0 + unity_MatrixPreviousM[3];
        u_xlat1.xyz = u_xlat0.yyy * _PrevViewProjMatrix[1].xyw;
        u_xlat1.xyz = _PrevViewProjMatrix[0].xyw * u_xlat0.xxx + u_xlat1.xyz;
        u_xlat0.xyz = _PrevViewProjMatrix[2].xyw * u_xlat0.zzz + u_xlat1.xyz;
        vs_PREVIOUS_CLIP_POSITION_NO_JITTER0.xyz = _PrevViewProjMatrix[3].xyw * u_xlat0.www + u_xlat0.xyz;
    } else {
        vs_CLIP_POSITION_NO_JITTER0.xyz = vec3(0.0, 0.0, 0.0);
        vs_PREVIOUS_CLIP_POSITION_NO_JITTER0.xyz = vec3(0.0, 0.0, 0.0);
    }
    gl_Position.xyw = u_xlat2.xyw;
    return;
}

