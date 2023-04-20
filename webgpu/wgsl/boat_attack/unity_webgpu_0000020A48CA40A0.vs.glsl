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
const uvec4 ImmCB_1[] = uvec4[4] (
	uvec4(0x3F800000, 0x0, 0x0, 0x0),
	uvec4(0x0, 0x3F800000, 0x0, 0x0),
	uvec4(0x0, 0x0, 0x3F800000, 0x0),
	uvec4(0x0, 0x0, 0x0, 0x3F800000));
layout(set = 1, binding = 3, std140) uniform VGlobals {
	vec4 _MainLightPosition;
	vec4 _MainLightColor;
	vec4 _AdditionalLightsCount;
	vec4 _ProjectionParams;
	vec4 unity_FogParams;
	mat4x4 unity_MatrixVP;
	vec4 _MainTex_ST;
};
layout(set = 1, binding = 4, std140) uniform AdditionalLights {
	vec4 _AdditionalLightsPosition[32];
	vec4 _AdditionalLightsColor[32];
	vec4 _AdditionalLightsAttenuation[32];
	vec4 _AdditionalLightsSpotDir[32];
	vec4 _AdditionalLightsOcclusionProbes[32];
	float _AdditionalLightsLayerMasks[32];
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
layout(set = 1, binding = 2, std140) uniform LightShadows {
	mat4x4 _MainLightWorldToShadow[5];
	vec4 _CascadeShadowSplitSpheres0;
	vec4 _CascadeShadowSplitSpheres1;
	vec4 _CascadeShadowSplitSpheres2;
	vec4 _CascadeShadowSplitSpheres3;
	vec4 _CascadeShadowSplitSphereRadii;
	vec4 _MainLightShadowOffset0;
	vec4 _MainLightShadowOffset1;
	vec4 _MainLightShadowParams;
	vec4 _MainLightShadowmapSize;
	vec4 _AdditionalShadowOffset0;
	vec4 _AdditionalShadowOffset1;
	vec4 _AdditionalShadowFadeParams;
	vec4 _AdditionalShadowmapSize;
};
layout(location = 0) in highp vec4 in_POSITION0;
layout(location = 1) in highp vec2 in_TEXCOORD0;
layout(location = 2) in highp vec3 in_NORMAL0;
layout(location = 3) in highp vec4 in_COLOR0;
layout(location = 0) out highp vec2 vs_TEXCOORD0;
highp vec3 vs_TEXCOORD1;
highp vec4 vs_TEXCOORD2;
layout(location = 1) out highp vec4 vs_TEXCOORD3;
layout(location = 2) out highp vec4 vs_TEXCOORD4;
layout(location = 3) out highp vec4 vs_TEXCOORD5;
highp vec3 vs_TEXCOORD6;
vec3 u_xlat0;
vec4 u_xlat1;
vec3 u_xlat2;
vec3 u_xlat3;
vec3 u_xlat4;
int u_xlati4;
vec3 u_xlat5;
float u_xlat18;
int u_xlati18;
uint u_xlatu20;
float u_xlat21;
int u_xlati21;
uint u_xlatu21;
bool u_xlatb21;
float u_xlat22;
void main()
{
    vs_TEXCOORD0.xy = in_TEXCOORD0.xy * _MainTex_ST.xy + _MainTex_ST.zw;
    u_xlat0.xyz = in_POSITION0.yyy * unity_ObjectToWorld[1].xyz;
    u_xlat0.xyz = unity_ObjectToWorld[0].xyz * in_POSITION0.xxx + u_xlat0.xyz;
    u_xlat0.xyz = unity_ObjectToWorld[2].xyz * in_POSITION0.zzz + u_xlat0.xyz;
    u_xlat0.xyz = u_xlat0.xyz + unity_ObjectToWorld[3].xyz;
    u_xlat1 = u_xlat0.yyyy * unity_MatrixVP[1];
    u_xlat1 = unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
    u_xlat1 = unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
    u_xlat1 = u_xlat1 + unity_MatrixVP[3];
    u_xlat2.xyz = u_xlat0.yyy * _MainLightWorldToShadow[1 / 4][1 % 4].xyz;
    u_xlat2.xyz = _MainLightWorldToShadow[0 / 4][0 % 4].xyz * u_xlat0.xxx + u_xlat2.xyz;
    u_xlat2.xyz = _MainLightWorldToShadow[2 / 4][2 % 4].xyz * u_xlat0.zzz + u_xlat2.xyz;
    vs_TEXCOORD4.xyz = u_xlat2.xyz + _MainLightWorldToShadow[3 / 4][3 % 4].xyz;
    u_xlat2.xyz = _MainLightColor.xyz * unity_LightData.zzz;
    u_xlat18 = dot(in_NORMAL0.xyz, _MainLightPosition.xyz);
    u_xlat18 = clamp(u_xlat18, 0.0, 1.0);
    u_xlat2.xyz = vec3(u_xlat18) * u_xlat2.xyz;
    u_xlat18 = min(_AdditionalLightsCount.x, unity_LightData.y);
    u_xlati18 = int(u_xlat18);
    u_xlat3.xyz = u_xlat2.xyz;
    for(uint u_xlatu_loop_1 = 0u ; u_xlatu_loop_1<uint(u_xlati18) ; u_xlatu_loop_1++)
    {
        u_xlatu21 = u_xlatu_loop_1 >> (2u & uint(0x1F));
        u_xlati4 = int(u_xlatu_loop_1 & 3u);
        u_xlat21 = dot(unity_LightIndices[int(u_xlatu21)], uintBitsToFloat(ImmCB_1[u_xlati4]));
        u_xlati21 = int(u_xlat21);
        u_xlat4.xyz = (-u_xlat0.xyz) * _AdditionalLightsPosition[u_xlati21].www + _AdditionalLightsPosition[u_xlati21].xyz;
        u_xlat22 = dot(u_xlat4.xyz, u_xlat4.xyz);
        u_xlat22 = max(u_xlat22, 6.10351562e-05);
        u_xlat5.x = inversesqrt(u_xlat22);
        u_xlat4.xyz = u_xlat4.xyz * u_xlat5.xxx;
        u_xlat5.x = float(1.0) / float(u_xlat22);
        u_xlat22 = u_xlat22 * _AdditionalLightsAttenuation[u_xlati21].x;
        u_xlat22 = (-u_xlat22) * u_xlat22 + 1.0;
        u_xlat22 = max(u_xlat22, 0.0);
        u_xlat22 = u_xlat22 * u_xlat22;
        u_xlat22 = u_xlat22 * u_xlat5.x;
        u_xlat5.x = dot(_AdditionalLightsSpotDir[u_xlati21].xyz, u_xlat4.xyz);
        u_xlat5.x = u_xlat5.x * _AdditionalLightsAttenuation[u_xlati21].z + _AdditionalLightsAttenuation[u_xlati21].w;
        u_xlat5.x = clamp(u_xlat5.x, 0.0, 1.0);
        u_xlat5.x = u_xlat5.x * u_xlat5.x;
        u_xlat22 = u_xlat22 * u_xlat5.x;
        u_xlat5.xyz = vec3(u_xlat22) * _AdditionalLightsColor[u_xlati21].xyz;
        u_xlat21 = dot(in_NORMAL0.xyz, u_xlat4.xyz);
        u_xlat21 = clamp(u_xlat21, 0.0, 1.0);
        u_xlat3.xyz = u_xlat5.xyz * vec3(u_xlat21) + u_xlat3.xyz;
    }
    vs_TEXCOORD3.xyz = u_xlat3.xyz;
    u_xlat18 = u_xlat1.z / _ProjectionParams.y;
    u_xlat18 = (-u_xlat18) + 1.0;
    u_xlat18 = u_xlat18 * _ProjectionParams.z;
    u_xlat18 = max(u_xlat18, 0.0);
    vs_TEXCOORD3.w = u_xlat18 * unity_FogParams.x;
    vs_TEXCOORD2 = in_COLOR0;
    vs_TEXCOORD4.w = 0.0;
    vs_TEXCOORD5.xyz = in_NORMAL0.xyz;
    vs_TEXCOORD5.w = 0.0;
    gl_Position = u_xlat1;
    vs_TEXCOORD1.xyz = vec3(0.0, 0.0, 0.0);
    vs_TEXCOORD6.xyz = u_xlat0.xyz;
    return;
}

