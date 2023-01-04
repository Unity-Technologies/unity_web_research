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
	vec4 _MainLightPosition;
	float _SunSize;
	float _SunSizeConvergence;
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
layout(location = 0) in highp vec3 vs_TEXCOORD0;
layout(location = 1) in highp vec3 vs_TEXCOORD1;
layout(location = 2) in highp vec3 vs_TEXCOORD2;
layout(location = 3) in highp vec3 vs_TEXCOORD3;
layout(location = 0) out highp vec4 SV_Target0;
void main()
{
vec4 u_xlat0;
vec3 u_xlat1;
vec3 u_xlat2;
bool u_xlatb4;
float u_xlat6;
    u_xlat0.x = log2(_SunSize);
    u_xlat0.x = u_xlat0.x * 0.649999976;
    u_xlat0.x = exp2(u_xlat0.x);
    u_xlat2.xyz = vs_TEXCOORD0.yyy * unity_ObjectToWorld[1].xyz;
    u_xlat2.xyz = unity_ObjectToWorld[0].xyz * vs_TEXCOORD0.xxx + u_xlat2.xyz;
    u_xlat2.xyz = unity_ObjectToWorld[2].xyz * vs_TEXCOORD0.zzz + u_xlat2.xyz;
    u_xlat1.x = dot(u_xlat2.xyz, u_xlat2.xyz);
    u_xlat1.x = inversesqrt(u_xlat1.x);
    u_xlat2.xyz = u_xlat2.xyz * u_xlat1.xxx;
    u_xlat2.x = dot(_MainLightPosition.xyz, (-u_xlat2.xyz));
    u_xlat2.x = clamp(u_xlat2.x, 0.0, 1.0);
    u_xlat2.x = log2(u_xlat2.x);
    u_xlat2.x = u_xlat2.x * _SunSizeConvergence;
    u_xlat2.x = exp2(u_xlat2.x);
    u_xlat6 = (-u_xlat2.x) * 1.98000002 + 1.98010004;
    u_xlat0.y = u_xlat2.x * u_xlat2.x + 1.0;
    u_xlat0.xy = u_xlat0.xy * vec2(10.0, 0.0100164423);
    u_xlat6 = log2(u_xlat6);
    u_xlat0.x = u_xlat6 * u_xlat0.x;
    u_xlat0.x = exp2(u_xlat0.x);
    u_xlat0.x = max(u_xlat0.x, 9.99999975e-05);
    u_xlat0.x = u_xlat0.y / u_xlat0.x;
    u_xlat2.x = u_xlat2.y * 50.0;
    u_xlat2.x = clamp(u_xlat2.x, 0.0, 1.0);
    u_xlatb4 = u_xlat2.y<0.0;
    u_xlat1.xyz = vs_TEXCOORD1.xyz + (-vs_TEXCOORD2.xyz);
    u_xlat1.xyz = u_xlat2.xxx * u_xlat1.xyz + vs_TEXCOORD2.xyz;
    u_xlat0.xyw = vs_TEXCOORD3.xyz * u_xlat0.xxx + u_xlat1.xyz;
    u_xlat0.xyz = (bool(u_xlatb4)) ? u_xlat0.xyw : u_xlat1.xyz;
    u_xlat0.xyz = max(u_xlat0.xyz, vec3(0.0, 0.0, 0.0));
    SV_Target0.xyz = min(u_xlat0.xyz, vec3(25.0, 25.0, 25.0));
    SV_Target0.w = 1.0;
    return;
}

