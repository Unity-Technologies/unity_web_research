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
layout(set = 1, binding = 5, std140) uniform VGlobals {
	vec3 _WorldSpaceCameraPos;
	vec4 unity_OrthoParams;
	mat4x4 unity_MatrixV;
	mat4x4 unity_MatrixVP;
};
layout(set = 1, binding = 2, std140) uniform UnityPerDraw {
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
layout(set = 1, binding = 3, std140) uniform _Terrain {
	float _NormalScale0;
	float _NormalScale1;
	float _NormalScale2;
	float _NormalScale3;
	float _Metallic0;
	float _Metallic1;
	float _Metallic2;
	float _Metallic3;
	float _Smoothness0;
	float _Smoothness1;
	float _Smoothness2;
	float _Smoothness3;
	vec4 _DiffuseRemapScale0;
	vec4 _DiffuseRemapScale1;
	vec4 _DiffuseRemapScale2;
	vec4 _DiffuseRemapScale3;
	vec4 _MaskMapRemapOffset0;
	vec4 _MaskMapRemapOffset1;
	vec4 _MaskMapRemapOffset2;
	vec4 _MaskMapRemapOffset3;
	vec4 _MaskMapRemapScale0;
	vec4 _MaskMapRemapScale1;
	vec4 _MaskMapRemapScale2;
	vec4 _MaskMapRemapScale3;
	vec4 _Control_ST;
	vec4 _Control_TexelSize;
	float _DiffuseHasAlpha0;
	float _DiffuseHasAlpha1;
	float _DiffuseHasAlpha2;
	float _DiffuseHasAlpha3;
	float _LayerHasMask0;
	float _LayerHasMask1;
	float _LayerHasMask2;
	float _LayerHasMask3;
	vec4 _Splat0_ST;
	vec4 _Splat1_ST;
	vec4 _Splat2_ST;
	vec4 _Splat3_ST;
	float _HeightTransition;
	float _NumLayersCount;
};
layout(set = 1, binding = 4, std140) uniform LightShadows {
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
	vec4 _AdditionalShadowParams[32];
	mat4x4 _AdditionalLightsWorldToShadow[32];
};
layout(location = 0) in highp vec4 in_POSITION0;
layout(location = 1) in highp vec3 in_NORMAL0;
layout(location = 2) in highp vec2 in_TEXCOORD0;
layout(location = 0) out highp vec4 vs_TEXCOORD0;
layout(location = 1) out highp vec4 vs_TEXCOORD1;
layout(location = 2) out highp vec4 vs_TEXCOORD2;
layout(location = 3) out highp vec4 vs_TEXCOORD3;
layout(location = 4) out highp vec4 vs_TEXCOORD4;
layout(location = 5) out highp vec4 vs_TEXCOORD5;
highp float vs_TEXCOORD6;
layout(location = 6) out highp vec3 vs_TEXCOORD7;
layout(location = 7) out highp vec4 vs_TEXCOORD8;
vec4 u_xlat0;
vec3 u_xlat1;
vec4 u_xlat2;
vec3 u_xlat3;
float u_xlat12;
bool u_xlatb12;
float u_xlat13;
void main()
{
    vs_TEXCOORD0.zw = in_TEXCOORD0.xy * unity_LightmapST.xy + unity_LightmapST.zw;
    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
    vs_TEXCOORD1.xy = in_TEXCOORD0.xy * _Splat0_ST.xy + _Splat0_ST.zw;
    vs_TEXCOORD1.zw = in_TEXCOORD0.xy * _Splat1_ST.xy + _Splat1_ST.zw;
    vs_TEXCOORD2.xy = in_TEXCOORD0.xy * _Splat2_ST.xy + _Splat2_ST.zw;
    vs_TEXCOORD2.zw = in_TEXCOORD0.xy * _Splat3_ST.xy + _Splat3_ST.zw;
    u_xlat0.xyz = in_NORMAL0.yyy * unity_ObjectToWorld[1].xyz;
    u_xlat0.xyz = unity_ObjectToWorld[0].xyz * in_NORMAL0.xxx + u_xlat0.xyz;
    u_xlat0.xyz = unity_ObjectToWorld[2].xyz * in_NORMAL0.zzz + u_xlat0.xyz;
    u_xlat12 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat12 = max(u_xlat12, 1.17549435e-38);
    u_xlat12 = inversesqrt(u_xlat12);
    u_xlat0.xyz = vec3(u_xlat12) * u_xlat0.xyz;
    vs_TEXCOORD3.xyz = u_xlat0.xyz;
    u_xlat1.xyz = in_POSITION0.yyy * unity_ObjectToWorld[1].xyz;
    u_xlat1.xyz = unity_ObjectToWorld[0].xyz * in_POSITION0.xxx + u_xlat1.xyz;
    u_xlat1.xyz = unity_ObjectToWorld[2].xyz * in_POSITION0.zzz + u_xlat1.xyz;
    u_xlat1.xyz = u_xlat1.xyz + unity_ObjectToWorld[3].xyz;
    u_xlat2.xyz = (-u_xlat1.xyz) + _WorldSpaceCameraPos.xyz;
    u_xlat12 = dot(u_xlat2.xyz, u_xlat2.xyz);
    u_xlat12 = inversesqrt(u_xlat12);
    u_xlat2.xyz = vec3(u_xlat12) * u_xlat2.xyz;
    u_xlatb12 = unity_OrthoParams.w==0.0;
    vs_TEXCOORD3.w = (u_xlatb12) ? u_xlat2.x : unity_MatrixV[0].z;
    u_xlat2.xw = in_NORMAL0.yz * vec2(1.0, 0.0);
    u_xlat2.xw = in_NORMAL0.zx * vec2(0.0, 1.0) + (-u_xlat2.xw);
    u_xlat3.xyz = u_xlat2.www * unity_ObjectToWorld[1].xyz;
    u_xlat3.xyz = unity_ObjectToWorld[0].xyz * u_xlat2.xxx + u_xlat3.xyz;
    u_xlat13 = dot(u_xlat3.xyz, u_xlat3.xyz);
    u_xlat13 = max(u_xlat13, 1.17549435e-38);
    u_xlat13 = inversesqrt(u_xlat13);
    u_xlat3.xyz = vec3(u_xlat13) * u_xlat3.xyz;
    vs_TEXCOORD4.xyz = u_xlat3.xyz;
    vs_TEXCOORD4.w = (u_xlatb12) ? u_xlat2.y : unity_MatrixV[1].z;
    vs_TEXCOORD5.w = (u_xlatb12) ? u_xlat2.z : unity_MatrixV[2].z;
    u_xlat2.xyz = u_xlat0.zxy * u_xlat3.yzx;
    u_xlat0.xyz = u_xlat0.yzx * u_xlat3.zxy + (-u_xlat2.xyz);
    u_xlatb12 = unity_WorldTransformParams.w>=0.0;
    u_xlat12 = (u_xlatb12) ? 1.0 : -1.0;
    vs_TEXCOORD5.xyz = vec3(u_xlat12) * u_xlat0.xyz;
    vs_TEXCOORD6 = 0.0;
    vs_TEXCOORD7.xyz = u_xlat1.xyz;
    u_xlat0.xyz = u_xlat1.yyy * _MainLightWorldToShadow[1 / 4][1 % 4].xyz;
    u_xlat0.xyz = _MainLightWorldToShadow[0 / 4][0 % 4].xyz * u_xlat1.xxx + u_xlat0.xyz;
    u_xlat0.xyz = _MainLightWorldToShadow[2 / 4][2 % 4].xyz * u_xlat1.zzz + u_xlat0.xyz;
    vs_TEXCOORD8.xyz = u_xlat0.xyz + _MainLightWorldToShadow[3 / 4][3 % 4].xyz;
    vs_TEXCOORD8.w = 0.0;
    u_xlat0 = u_xlat1.yyyy * unity_MatrixVP[1];
    u_xlat0 = unity_MatrixVP[0] * u_xlat1.xxxx + u_xlat0;
    u_xlat0 = unity_MatrixVP[2] * u_xlat1.zzzz + u_xlat0;
    gl_Position = u_xlat0 + unity_MatrixVP[3];
    return;
}

