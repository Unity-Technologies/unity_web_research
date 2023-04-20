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
	vec3 _WorldSpaceCameraPos;
	mat4x4 unity_MatrixVP;
	float _CullDistance;
	int _MaxAllowedSubdiv;
	int _MinAllowedSubdiv;
	float _OffsetSize;
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
layout(set = 1, binding = 2, std140) uniform Props {
	float _Validity;
	float _DilationThreshold;
	float _TouchupedByVolume;
	vec4 _IndexInAtlas;
	vec4 _Offset;
	float _RelativeSize;
};
layout(location = 0) in highp vec4 in_POSITION0;
layout(location = 1) in highp vec3 in_NORMAL0;
highp vec3 vs_TEXCOORD1;
highp vec4 vs_COLOR0;
highp vec2 vs_TEXCOORD0;
highp  vec4 phase0_Output0_3;
highp vec2 vs_TEXCOORD2;
vec4 u_xlat0;
vec4 u_xlat1;
bool u_xlatb1;
float u_xlat3;
int u_xlati3;
bool u_xlatb3;
bool u_xlatb5;
float u_xlat6;
void main()
{
    u_xlat0.xy = in_POSITION0.xy * vec2(vec2(_OffsetSize, _OffsetSize));
    u_xlat1 = u_xlat0.yyyy * unity_ObjectToWorld[1];
    u_xlat0 = unity_ObjectToWorld[0] * u_xlat0.xxxx + u_xlat1;
    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
    u_xlat0 = u_xlat0 + unity_ObjectToWorld[3];
    u_xlat1 = u_xlat0.yyyy * unity_MatrixVP[1];
    u_xlat1 = unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
    u_xlat1 = unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
    u_xlat0 = unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
    u_xlat1.xyz = (-_WorldSpaceCameraPos.xyz) + unity_ObjectToWorld[3].xyz;
    u_xlat1.x = dot(u_xlat1.xyz, u_xlat1.xyz);
    u_xlat1.x = sqrt(u_xlat1.x);
    u_xlatb1 = _CullDistance<u_xlat1.x;
    u_xlati3 = int(_IndexInAtlas.w);
    u_xlatb5 = _MaxAllowedSubdiv<u_xlati3;
    u_xlatb3 = u_xlati3<_MinAllowedSubdiv;
    u_xlatb1 = u_xlatb5 || u_xlatb1;
    u_xlatb1 = u_xlatb3 || u_xlatb1;
    u_xlat3 = dot(_Offset.xyz, _Offset.xyz);
    u_xlatb3 = 9.99999997e-07>=u_xlat3;
    u_xlatb1 = u_xlatb3 || u_xlatb1;
    gl_Position = (bool(u_xlatb1)) ? vec4(0.0, 0.0, 0.0, 0.0) : u_xlat0;
    u_xlat0.x = dot(in_NORMAL0.xyz, unity_ObjectToWorld[0].xyz);
    u_xlat0.y = dot(in_NORMAL0.xyz, unity_ObjectToWorld[1].xyz);
    u_xlat0.z = dot(in_NORMAL0.xyz, unity_ObjectToWorld[2].xyz);
    u_xlat6 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat6 = inversesqrt(u_xlat6);
    u_xlat0.xyz = vec3(u_xlat6) * u_xlat0.xyz;
    vs_TEXCOORD1.xyz = (bool(u_xlatb1)) ? vec3(0.0, 0.0, 0.0) : u_xlat0.xyz;
    vs_COLOR0 = vec4(0.0, 0.0, 0.0, 0.0);
    phase0_Output0_3 = vec4(0.0, 0.0, 0.0, 1.0);
vs_TEXCOORD0 = phase0_Output0_3.xy;
vs_TEXCOORD2 = phase0_Output0_3.zw;
    return;
}

