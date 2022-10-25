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
const uvec4 ImmCB_0[] = uvec4[4] (
	uvec4(0x3F800000, 0x0, 0x0, 0x0),
	uvec4(0x0, 0x3F800000, 0x0, 0x0),
	uvec4(0x0, 0x0, 0x3F800000, 0x0),
	uvec4(0x0, 0x0, 0x0, 0x3F800000));
layout(set = 1, binding = 0, std140) uniform PGlobals {
	vec4 _ScaledScreenParams;
	vec2 _GlobalMipBias;
	vec4 _MainLightPosition;
	vec4 _MainLightColor;
	vec4 _AmbientOcclusionParam;
	vec4 _AdditionalLightsCount;
	vec3 _WorldSpaceCameraPos;
	vec4 _ProjectionParams;
	vec4 unity_OrthoParams;
	vec4 _ScaleBiasRt;
	vec4 unity_FogParams;
	vec4 unity_FogColor;
	mat4x4 unity_MatrixV;
	float _DitheringTextureInvSize;
};
layout(set = 1, binding = 1, std140) uniform AdditionalLights {
	vec4 _AdditionalLightsPosition[256];
	vec4 _AdditionalLightsColor[256];
	vec4 _AdditionalLightsAttenuation[256];
	vec4 _AdditionalLightsSpotDir[256];
	vec4 _AdditionalLightsOcclusionProbes[256];
	float _AdditionalLightsLayerMasks[256];
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
layout(set = 1, binding = 3, std140) uniform UnityPerMaterial {
	vec4 _BaseMap_ST;
	vec4 _BaseColor;
	vec4 _SpecColor;
	vec4 _EmissionColor;
	float _Cutoff;
	float _Surface;
};
layout(set = 1, binding = 4, std140) uniform MainLightShadows {
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
};
layout(set = 0, binding = 0) uniform mediump texture2D unity_Lightmap;
layout(set = 0, binding = 1) uniform mediump texture2D unity_LightmapInd;
layout(set = 0, binding = 2) uniform mediump texture2D _BaseMap;
layout(set = 0, binding = 3) uniform mediump texture2D _ScreenSpaceOcclusionTexture;
layout(set = 0, binding = 4) uniform mediump texture2D _MainLightShadowmapTexture;
layout(set = 0, binding = 5) uniform mediump texture2D _DitheringTexture;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 1) in highp vec3 vs_TEXCOORD1;
layout(location = 2) in highp vec3 vs_TEXCOORD2;
layout(location = 3) in highp vec4 vs_TEXCOORD6;
layout(location = 4) in highp vec2 vs_TEXCOORD7;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 6) uniform mediump  sampler samplerunity_Lightmap;
layout(set = 0, binding = 7) uniform mediump  sampler sampler_BaseMap;
layout(set = 0, binding = 8) uniform mediump  sampler sampler_ScreenSpaceOcclusionTexture;
layout(set = 0, binding = 9) uniform mediump  samplerShadow sampler_MainLightShadowmapTexture;
layout(set = 0, binding = 10) uniform mediump  sampler sampler_DitheringTexture;
void main()
{
vec4 u_xlat0;
vec3 u_xlat1;
bool u_xlatb1;
vec3 u_xlat2;
vec4 u_xlat3;
vec3 u_xlat4;
vec3 u_xlat5;
uint u_xlatu5;
vec3 u_xlat6;
uint u_xlatu6;
vec3 u_xlat7;
vec3 u_xlat8;
vec3 u_xlat9;
bool u_xlatb9;
vec3 u_xlat10;
bool u_xlatb10;
vec3 u_xlat13;
vec3 u_xlat14;
vec3 u_xlat15;
int u_xlati15;
uint u_xlatu15;
bool u_xlatb15;
float u_xlat22;
bool u_xlatb22;
float u_xlat24;
int u_xlati24;
float u_xlat28;
float u_xlat29;
float u_xlat30;
float u_xlat31;
bool u_xlatb31;
float u_xlat32;
float u_xlat33;
float u_xlat34;
vec4 hlslcc_FragCoord = vec4(gl_FragCoord.xyz, 1.0/gl_FragCoord.w);
    u_xlat0 = texture(sampler2D(_BaseMap, sampler_BaseMap), vs_TEXCOORD0.xy, _GlobalMipBias.x);
    u_xlat0 = u_xlat0.wxyz * _BaseColor.wxyz;
    u_xlat1.xy = hlslcc_FragCoord.xy * vec2(_DitheringTextureInvSize);
    u_xlat1.x = texture(sampler2D(_DitheringTexture, sampler_DitheringTexture), u_xlat1.xy, _GlobalMipBias.x).w;
    u_xlatb10 = unity_LODFade.x>=0.0;
    u_xlat1.x = (u_xlatb10) ? abs(u_xlat1.x) : -abs(u_xlat1.x);
    u_xlat1.x = (-u_xlat1.x) + unity_LODFade.x;
    u_xlatb1 = u_xlat1.x<0.0;
    if(((int(u_xlatb1) * int(0xffffffffu)))!=0){discard;}
    u_xlatb1 = unity_OrthoParams.w==0.0;
    u_xlat10.xyz = (-vs_TEXCOORD1.xyz) + _WorldSpaceCameraPos.xyz;
    u_xlat2.x = dot(u_xlat10.xyz, u_xlat10.xyz);
    u_xlat2.x = inversesqrt(u_xlat2.x);
    u_xlat10.xyz = u_xlat10.xyz * u_xlat2.xxx;
    u_xlat2.x = unity_MatrixV[0].z;
    u_xlat2.y = unity_MatrixV[1].z;
    u_xlat2.z = unity_MatrixV[2].z;
    u_xlat1.xyz = (bool(u_xlatb1)) ? u_xlat10.xyz : u_xlat2.xyz;
    u_xlat28 = dot(vs_TEXCOORD2.xyz, vs_TEXCOORD2.xyz);
    u_xlat28 = inversesqrt(u_xlat28);
    u_xlat2.xyz = vec3(u_xlat28) * vs_TEXCOORD2.xyz;
    u_xlat28 = dot(u_xlat1.xyz, u_xlat1.xyz);
    u_xlat28 = max(u_xlat28, 1.17549435e-37);
    u_xlat28 = inversesqrt(u_xlat28);
    u_xlat29 = vs_TEXCOORD1.y * unity_MatrixV[1].z;
    u_xlat29 = unity_MatrixV[0].z * vs_TEXCOORD1.x + u_xlat29;
    u_xlat29 = unity_MatrixV[2].z * vs_TEXCOORD1.z + u_xlat29;
    u_xlat29 = u_xlat29 + unity_MatrixV[3].z;
    u_xlat29 = (-u_xlat29) + (-_ProjectionParams.y);
    u_xlat29 = max(u_xlat29, 0.0);
    u_xlat29 = u_xlat29 * unity_FogParams.x;
    u_xlat3 = texture(sampler2D(unity_LightmapInd, samplerunity_Lightmap), vs_TEXCOORD7.xy, _GlobalMipBias.x);
    u_xlat4.xyz = texture(sampler2D(unity_Lightmap, samplerunity_Lightmap), vs_TEXCOORD7.xy, _GlobalMipBias.x).xyz;
    u_xlat3.xyz = u_xlat3.xyz + vec3(-0.5, -0.5, -0.5);
    u_xlat3.x = dot(u_xlat2.xyz, u_xlat3.xyz);
    u_xlat3.x = u_xlat3.x + 0.5;
    u_xlat3.xyz = u_xlat3.xxx * u_xlat4.xyz;
    u_xlat30 = max(u_xlat3.w, 9.99999975e-05);
    u_xlat3.xyz = u_xlat3.xyz / vec3(u_xlat30);
    u_xlat4.xy = vec2(1.0) / vec2(_ScaledScreenParams.xy);
    u_xlat4.xy = u_xlat4.xy * hlslcc_FragCoord.xy;
    u_xlat30 = u_xlat4.y * _ScaleBiasRt.x + _ScaleBiasRt.y;
    u_xlat4.z = (-u_xlat30) + 1.0;
    u_xlat30 = texture(sampler2D(_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture), u_xlat4.xz, _GlobalMipBias.x).x;
    u_xlat4.x = u_xlat30 + -1.0;
    u_xlat4.x = _AmbientOcclusionParam.w * u_xlat4.x + 1.0;
    u_xlat30 = min(u_xlat30, 1.0);
    vec3 txVec0 = vec3(vs_TEXCOORD6.xy,vs_TEXCOORD6.z);
    u_xlat13.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec0, 0.0);
    u_xlat22 = (-_MainLightShadowParams.x) + 1.0;
    u_xlat13.x = u_xlat13.x * _MainLightShadowParams.x + u_xlat22;
    u_xlatb22 = 0.0>=vs_TEXCOORD6.z;
    u_xlatb31 = vs_TEXCOORD6.z>=1.0;
    u_xlatb22 = u_xlatb31 || u_xlatb22;
    u_xlat13.x = (u_xlatb22) ? 1.0 : u_xlat13.x;
    u_xlat5.xyz = vs_TEXCOORD1.xyz + (-_WorldSpaceCameraPos.xyz);
    u_xlat22 = dot(u_xlat5.xyz, u_xlat5.xyz);
    u_xlat22 = u_xlat22 * _MainLightShadowParams.z + _MainLightShadowParams.w;
    u_xlat22 = clamp(u_xlat22, 0.0, 1.0);
    u_xlat31 = (-u_xlat13.x) + 1.0;
    u_xlat13.x = u_xlat22 * u_xlat31 + u_xlat13.x;
    u_xlat5.xyz = u_xlat4.xxx * _MainLightColor.xyz;
    u_xlat3.xyz = vec3(u_xlat30) * u_xlat3.xyz;
    u_xlat30 = u_xlat13.x * unity_LightData.z;
    u_xlat13.xyz = vec3(u_xlat30) * u_xlat5.xyz;
    u_xlat30 = dot(u_xlat2.xyz, _MainLightPosition.xyz);
    u_xlat30 = clamp(u_xlat30, 0.0, 1.0);
    u_xlat5.xyz = vec3(u_xlat30) * u_xlat13.xyz;
    u_xlat30 = u_xlat0.x * 10.0 + 1.0;
    u_xlat30 = exp2(u_xlat30);
    u_xlat6.xyz = u_xlat1.xyz * vec3(u_xlat28) + _MainLightPosition.xyz;
    u_xlat32 = dot(u_xlat6.xyz, u_xlat6.xyz);
    u_xlat32 = max(u_xlat32, 1.17549435e-37);
    u_xlat32 = inversesqrt(u_xlat32);
    u_xlat6.xyz = vec3(u_xlat32) * u_xlat6.xyz;
    u_xlat32 = dot(u_xlat2.xyz, u_xlat6.xyz);
    u_xlat32 = clamp(u_xlat32, 0.0, 1.0);
    u_xlat32 = log2(u_xlat32);
    u_xlat32 = u_xlat30 * u_xlat32;
    u_xlat32 = exp2(u_xlat32);
    u_xlat6.xyz = vec3(u_xlat32) * _SpecColor.xyz;
    u_xlat13.xyz = u_xlat13.xyz * u_xlat6.xyz;
    u_xlat13.xyz = u_xlat5.xyz * u_xlat0.yzw + u_xlat13.xyz;
    u_xlat5.x = min(_AdditionalLightsCount.x, unity_LightData.y);
    u_xlatu5 =  uint(int(u_xlat5.x));
    u_xlat14.x = float(0.0);
    u_xlat14.y = float(0.0);
    u_xlat14.z = float(0.0);
    for(uint u_xlatu_loop_1 = 0u ; u_xlatu_loop_1<u_xlatu5 ; u_xlatu_loop_1++)
    {
        u_xlatu15 = u_xlatu_loop_1 >> (2u & uint(0x1F));
        u_xlati24 = int(u_xlatu_loop_1 & 3u);
        u_xlat15.x = dot(unity_LightIndices[int(u_xlatu15)], uintBitsToFloat(ImmCB_0[u_xlati24]));
        u_xlati15 = int(u_xlat15.x);
        u_xlat7.xyz = (-vs_TEXCOORD1.xyz) * _AdditionalLightsPosition[u_xlati15].www + _AdditionalLightsPosition[u_xlati15].xyz;
        u_xlat24 = dot(u_xlat7.xyz, u_xlat7.xyz);
        u_xlat24 = max(u_xlat24, 6.10351562e-05);
        u_xlat33 = inversesqrt(u_xlat24);
        u_xlat7.xyz = vec3(u_xlat33) * u_xlat7.xyz;
        u_xlat33 = float(1.0) / float(u_xlat24);
        u_xlat24 = u_xlat24 * _AdditionalLightsAttenuation[u_xlati15].x;
        u_xlat24 = (-u_xlat24) * u_xlat24 + 1.0;
        u_xlat24 = max(u_xlat24, 0.0);
        u_xlat24 = u_xlat24 * u_xlat24;
        u_xlat24 = u_xlat24 * u_xlat33;
        u_xlat33 = dot(_AdditionalLightsSpotDir[u_xlati15].xyz, u_xlat7.xyz);
        u_xlat33 = u_xlat33 * _AdditionalLightsAttenuation[u_xlati15].z + _AdditionalLightsAttenuation[u_xlati15].w;
        u_xlat33 = clamp(u_xlat33, 0.0, 1.0);
        u_xlat33 = u_xlat33 * u_xlat33;
        u_xlat24 = u_xlat33 * u_xlat24;
        u_xlat8.xyz = u_xlat4.xxx * _AdditionalLightsColor[u_xlati15].xyz;
        u_xlat15.xyz = vec3(u_xlat24) * u_xlat8.xyz;
        u_xlat34 = dot(u_xlat2.xyz, u_xlat7.xyz);
        u_xlat34 = clamp(u_xlat34, 0.0, 1.0);
        u_xlat8.xyz = u_xlat15.xyz * vec3(u_xlat34);
        u_xlat7.xyz = u_xlat1.xyz * vec3(u_xlat28) + u_xlat7.xyz;
        u_xlat34 = dot(u_xlat7.xyz, u_xlat7.xyz);
        u_xlat34 = max(u_xlat34, 1.17549435e-37);
        u_xlat34 = inversesqrt(u_xlat34);
        u_xlat7.xyz = vec3(u_xlat34) * u_xlat7.xyz;
        u_xlat7.x = dot(u_xlat2.xyz, u_xlat7.xyz);
        u_xlat7.x = clamp(u_xlat7.x, 0.0, 1.0);
        u_xlat7.x = log2(u_xlat7.x);
        u_xlat7.x = u_xlat30 * u_xlat7.x;
        u_xlat7.x = exp2(u_xlat7.x);
        u_xlat7.xyz = u_xlat7.xxx * _SpecColor.xyz;
        u_xlat15.xyz = u_xlat15.xyz * u_xlat7.xyz;
        u_xlat15.xyz = u_xlat8.xyz * u_xlat0.yzw + u_xlat15.xyz;
        u_xlat14.xyz = u_xlat14.xyz + u_xlat15.xyz;
    }
    u_xlat9.xyz = u_xlat3.xyz * u_xlat0.yzw + u_xlat13.xyz;
    u_xlat9.xyz = u_xlat14.xyz + u_xlat9.xyz;
    u_xlat1.x = u_xlat29 * (-u_xlat29);
    u_xlat1.x = exp2(u_xlat1.x);
    u_xlat9.xyz = u_xlat9.xyz + (-unity_FogColor.xyz);
    SV_Target0.xyz = u_xlat1.xxx * u_xlat9.xyz + unity_FogColor.xyz;
    u_xlatb9 = _Surface==1.0;
    SV_Target0.w = (u_xlatb9) ? u_xlat0.x : 1.0;
    return;
}

