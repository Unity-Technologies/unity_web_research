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
	vec4 unity_OrthoParams;
	vec4 _ScaleBiasRt;
	mat4x4 unity_MatrixV;
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
layout(set = 0, binding = 0) uniform mediump textureCube unity_SpecCube0;
layout(set = 0, binding = 1) uniform mediump texture2D unity_Lightmap;
layout(set = 0, binding = 2) uniform mediump texture2D unity_LightmapInd;
layout(set = 0, binding = 3) uniform mediump texture2D _BaseMap;
layout(set = 0, binding = 4) uniform mediump texture2D _EmissionMap;
layout(set = 0, binding = 5) uniform mediump texture2D _ScreenSpaceOcclusionTexture;
layout(set = 0, binding = 6) uniform mediump texture2D _MainLightShadowmapTexture;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 1) in highp vec3 vs_TEXCOORD1;
layout(location = 2) in highp vec3 vs_TEXCOORD2;
layout(location = 3) in highp vec4 vs_TEXCOORD6;
layout(location = 4) in highp vec2 vs_TEXCOORD8;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 7) uniform mediump  sampler samplerunity_SpecCube0;
layout(set = 0, binding = 8) uniform mediump  sampler samplerunity_Lightmap;
layout(set = 0, binding = 9) uniform mediump  sampler sampler_BaseMap;
layout(set = 0, binding = 10) uniform mediump  sampler sampler_EmissionMap;
layout(set = 0, binding = 11) uniform mediump  sampler sampler_ScreenSpaceOcclusionTexture;
layout(set = 0, binding = 12) uniform mediump  samplerShadow sampler_MainLightShadowmapTexture;
void main()
{
vec4 u_xlat0;
bool u_xlatb0;
vec4 u_xlat1;
vec3 u_xlat2;
vec3 u_xlat3;
vec3 u_xlat4;
vec4 u_xlat5;
vec3 u_xlat6;
vec3 u_xlat7;
bool u_xlatb7;
vec4 u_xlat8;
vec2 u_xlat9;
vec3 u_xlat10;
vec3 u_xlat11;
vec3 u_xlat13;
float u_xlat18;
vec3 u_xlat21;
float u_xlat30;
int u_xlati30;
float u_xlat36;
uint u_xlatu36;
bool u_xlatb36;
float u_xlat38;
uint u_xlatu38;
float u_xlat39;
int u_xlati39;
uint u_xlatu39;
bool u_xlatb39;
float u_xlat40;
float u_xlat41;
float u_xlat42;
bool u_xlatb42;
float u_xlat43;
vec4 hlslcc_FragCoord = vec4(gl_FragCoord.xyz, 1.0/gl_FragCoord.w);
    u_xlat0 = texture(sampler2D(_BaseMap, sampler_BaseMap), vs_TEXCOORD0.xy, _GlobalMipBias.x);
    u_xlat1 = u_xlat0.wxyz * _BaseColor.wxyz;
    u_xlat2.xyz = texture(sampler2D(_EmissionMap, sampler_EmissionMap), vs_TEXCOORD0.xy, _GlobalMipBias.x).xyz;
    u_xlatb36 = unity_OrthoParams.w==0.0;
    u_xlat3.xyz = (-vs_TEXCOORD1.xyz) + _WorldSpaceCameraPos.xyz;
    u_xlat38 = dot(u_xlat3.xyz, u_xlat3.xyz);
    u_xlat38 = inversesqrt(u_xlat38);
    u_xlat3.xyz = vec3(u_xlat38) * u_xlat3.xyz;
    u_xlat4.x = (u_xlatb36) ? u_xlat3.x : unity_MatrixV[0].z;
    u_xlat4.y = (u_xlatb36) ? u_xlat3.y : unity_MatrixV[1].z;
    u_xlat4.z = (u_xlatb36) ? u_xlat3.z : unity_MatrixV[2].z;
    u_xlat36 = dot(vs_TEXCOORD2.xyz, vs_TEXCOORD2.xyz);
    u_xlat36 = inversesqrt(u_xlat36);
    u_xlat3.xyz = vec3(u_xlat36) * vs_TEXCOORD2.xyz;
    u_xlat5 = texture(sampler2D(unity_LightmapInd, samplerunity_Lightmap), vs_TEXCOORD8.xy, _GlobalMipBias.x);
    u_xlat6.xyz = texture(sampler2D(unity_Lightmap, samplerunity_Lightmap), vs_TEXCOORD8.xy, _GlobalMipBias.x).xyz;
    u_xlat5.xyz = u_xlat5.xyz + vec3(-0.5, -0.5, -0.5);
    u_xlat36 = dot(u_xlat3.xyz, u_xlat5.xyz);
    u_xlat36 = u_xlat36 + 0.5;
    u_xlat5.xyz = vec3(u_xlat36) * u_xlat6.xyz;
    u_xlat36 = max(u_xlat5.w, 9.99999975e-05);
    u_xlat5.xyz = u_xlat5.xyz / vec3(u_xlat36);
    u_xlat6.xy = vec2(1.0) / vec2(_ScaledScreenParams.xy);
    u_xlat6.xy = u_xlat6.xy * hlslcc_FragCoord.xy;
    u_xlat36 = u_xlat6.y * _ScaleBiasRt.x + _ScaleBiasRt.y;
    u_xlat6.z = (-u_xlat36) + 1.0;
    u_xlat36 = (-_Metallic) * 0.959999979 + 0.959999979;
    u_xlat38 = (-u_xlat36) + _Smoothness;
    u_xlat13.xyz = vec3(u_xlat36) * u_xlat1.yzw;
    u_xlat0.xyz = u_xlat0.xyz * _BaseColor.xyz + vec3(-0.0399999991, -0.0399999991, -0.0399999991);
    u_xlat0.xyz = vec3(vec3(_Metallic, _Metallic, _Metallic)) * u_xlat0.xyz + vec3(0.0399999991, 0.0399999991, 0.0399999991);
    u_xlat36 = (-_Smoothness) + 1.0;
    u_xlat39 = u_xlat36 * u_xlat36;
    u_xlat39 = max(u_xlat39, 0.0078125);
    u_xlat40 = u_xlat39 * u_xlat39;
    u_xlat38 = u_xlat38 + 1.0;
    u_xlat38 = clamp(u_xlat38, 0.0, 1.0);
    u_xlat41 = u_xlat39 * 4.0 + 2.0;
    u_xlat6.x = texture(sampler2D(_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture), u_xlat6.xz, _GlobalMipBias.x).x;
    u_xlat18 = u_xlat6.x + -1.0;
    u_xlat18 = _AmbientOcclusionParam.w * u_xlat18 + 1.0;
    u_xlat6.x = min(u_xlat6.x, 1.0);
    vec3 txVec0 = vec3(vs_TEXCOORD6.xy,vs_TEXCOORD6.z);
    u_xlat30 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec0, 0.0);
    u_xlat42 = (-_MainLightShadowParams.x) + 1.0;
    u_xlat30 = u_xlat30 * _MainLightShadowParams.x + u_xlat42;
    u_xlatb42 = 0.0>=vs_TEXCOORD6.z;
    u_xlatb7 = vs_TEXCOORD6.z>=1.0;
    u_xlatb42 = u_xlatb42 || u_xlatb7;
    u_xlat30 = (u_xlatb42) ? 1.0 : u_xlat30;
    u_xlat7.xyz = vs_TEXCOORD1.xyz + (-_WorldSpaceCameraPos.xyz);
    u_xlat42 = dot(u_xlat7.xyz, u_xlat7.xyz);
    u_xlat42 = u_xlat42 * _MainLightShadowParams.z + _MainLightShadowParams.w;
    u_xlat42 = clamp(u_xlat42, 0.0, 1.0);
    u_xlat7.x = (-u_xlat30) + 1.0;
    u_xlat30 = u_xlat42 * u_xlat7.x + u_xlat30;
    u_xlat7.xyz = vec3(u_xlat18) * _MainLightColor.xyz;
    u_xlat42 = dot((-u_xlat4.xyz), u_xlat3.xyz);
    u_xlat42 = u_xlat42 + u_xlat42;
    u_xlat8.xyz = u_xlat3.xyz * (-vec3(u_xlat42)) + (-u_xlat4.xyz);
    u_xlat42 = dot(u_xlat3.xyz, u_xlat4.xyz);
    u_xlat42 = clamp(u_xlat42, 0.0, 1.0);
    u_xlat42 = (-u_xlat42) + 1.0;
    u_xlat42 = u_xlat42 * u_xlat42;
    u_xlat42 = u_xlat42 * u_xlat42;
    u_xlat43 = (-u_xlat36) * 0.699999988 + 1.70000005;
    u_xlat36 = u_xlat36 * u_xlat43;
    u_xlat36 = u_xlat36 * 6.0;
    u_xlat8 = textureLod(samplerCube(unity_SpecCube0, samplerunity_SpecCube0), u_xlat8.xyz, u_xlat36);
    u_xlat36 = u_xlat8.w + -1.0;
    u_xlat36 = unity_SpecCube0_HDR.w * u_xlat36 + 1.0;
    u_xlat36 = max(u_xlat36, 0.0);
    u_xlat36 = log2(u_xlat36);
    u_xlat36 = u_xlat36 * unity_SpecCube0_HDR.y;
    u_xlat36 = exp2(u_xlat36);
    u_xlat36 = u_xlat36 * unity_SpecCube0_HDR.x;
    u_xlat8.xyz = u_xlat8.xyz * vec3(u_xlat36);
    u_xlat9.xy = vec2(u_xlat39) * vec2(u_xlat39) + vec2(-1.0, 1.0);
    u_xlat36 = float(1.0) / u_xlat9.y;
    u_xlat21.xyz = (-u_xlat0.xyz) + vec3(u_xlat38);
    u_xlat21.xyz = vec3(u_xlat42) * u_xlat21.xyz + u_xlat0.xyz;
    u_xlat21.xyz = vec3(u_xlat36) * u_xlat21.xyz;
    u_xlat8.xyz = u_xlat8.xyz * u_xlat21.xyz;
    u_xlat5.xyz = u_xlat5.xyz * u_xlat13.xyz + u_xlat8.xyz;
    u_xlat36 = u_xlat30 * unity_LightData.z;
    u_xlat38 = dot(u_xlat3.xyz, _MainLightPosition.xyz);
    u_xlat38 = clamp(u_xlat38, 0.0, 1.0);
    u_xlat36 = u_xlat36 * u_xlat38;
    u_xlat7.xyz = vec3(u_xlat36) * u_xlat7.xyz;
    u_xlat8.xyz = u_xlat4.xyz + _MainLightPosition.xyz;
    u_xlat36 = dot(u_xlat8.xyz, u_xlat8.xyz);
    u_xlat36 = max(u_xlat36, 1.17549435e-37);
    u_xlat36 = inversesqrt(u_xlat36);
    u_xlat8.xyz = vec3(u_xlat36) * u_xlat8.xyz;
    u_xlat36 = dot(u_xlat3.xyz, u_xlat8.xyz);
    u_xlat36 = clamp(u_xlat36, 0.0, 1.0);
    u_xlat38 = dot(_MainLightPosition.xyz, u_xlat8.xyz);
    u_xlat38 = clamp(u_xlat38, 0.0, 1.0);
    u_xlat36 = u_xlat36 * u_xlat36;
    u_xlat36 = u_xlat36 * u_xlat9.x + 1.00001001;
    u_xlat38 = u_xlat38 * u_xlat38;
    u_xlat36 = u_xlat36 * u_xlat36;
    u_xlat38 = max(u_xlat38, 0.100000001);
    u_xlat36 = u_xlat36 * u_xlat38;
    u_xlat36 = u_xlat41 * u_xlat36;
    u_xlat36 = u_xlat40 / u_xlat36;
    u_xlat8.xyz = u_xlat0.xyz * vec3(u_xlat36) + u_xlat13.xyz;
    u_xlat7.xyz = u_xlat7.xyz * u_xlat8.xyz;
    u_xlat36 = min(_AdditionalLightsCount.x, unity_LightData.y);
    u_xlatu36 =  uint(int(u_xlat36));
    u_xlat8.x = float(0.0);
    u_xlat8.y = float(0.0);
    u_xlat8.z = float(0.0);
    for(uint u_xlatu_loop_1 = 0u ; u_xlatu_loop_1<u_xlatu36 ; u_xlatu_loop_1++)
    {
        u_xlatu39 = u_xlatu_loop_1 >> (2u & uint(0x1F));
        u_xlati30 = int(u_xlatu_loop_1 & 3u);
        u_xlat39 = dot(unity_LightIndices[int(u_xlatu39)], uintBitsToFloat(ImmCB_0[u_xlati30]));
        u_xlati39 = int(u_xlat39);
        u_xlat21.xyz = (-vs_TEXCOORD1.xyz) * _AdditionalLightsPosition[u_xlati39].www + _AdditionalLightsPosition[u_xlati39].xyz;
        u_xlat30 = dot(u_xlat21.xyz, u_xlat21.xyz);
        u_xlat30 = max(u_xlat30, 6.10351562e-05);
        u_xlat42 = inversesqrt(u_xlat30);
        u_xlat10.xyz = vec3(u_xlat42) * u_xlat21.xyz;
        u_xlat43 = float(1.0) / float(u_xlat30);
        u_xlat30 = u_xlat30 * _AdditionalLightsAttenuation[u_xlati39].x;
        u_xlat30 = (-u_xlat30) * u_xlat30 + 1.0;
        u_xlat30 = max(u_xlat30, 0.0);
        u_xlat30 = u_xlat30 * u_xlat30;
        u_xlat30 = u_xlat30 * u_xlat43;
        u_xlat43 = dot(_AdditionalLightsSpotDir[u_xlati39].xyz, u_xlat10.xyz);
        u_xlat43 = u_xlat43 * _AdditionalLightsAttenuation[u_xlati39].z + _AdditionalLightsAttenuation[u_xlati39].w;
        u_xlat43 = clamp(u_xlat43, 0.0, 1.0);
        u_xlat43 = u_xlat43 * u_xlat43;
        u_xlat30 = u_xlat30 * u_xlat43;
        u_xlat11.xyz = vec3(u_xlat18) * _AdditionalLightsColor[u_xlati39].xyz;
        u_xlat39 = dot(u_xlat3.xyz, u_xlat10.xyz);
        u_xlat39 = clamp(u_xlat39, 0.0, 1.0);
        u_xlat39 = u_xlat39 * u_xlat30;
        u_xlat11.xyz = vec3(u_xlat39) * u_xlat11.xyz;
        u_xlat21.xyz = u_xlat21.xyz * vec3(u_xlat42) + u_xlat4.xyz;
        u_xlat39 = dot(u_xlat21.xyz, u_xlat21.xyz);
        u_xlat39 = max(u_xlat39, 1.17549435e-37);
        u_xlat39 = inversesqrt(u_xlat39);
        u_xlat21.xyz = vec3(u_xlat39) * u_xlat21.xyz;
        u_xlat39 = dot(u_xlat3.xyz, u_xlat21.xyz);
        u_xlat39 = clamp(u_xlat39, 0.0, 1.0);
        u_xlat30 = dot(u_xlat10.xyz, u_xlat21.xyz);
        u_xlat30 = clamp(u_xlat30, 0.0, 1.0);
        u_xlat39 = u_xlat39 * u_xlat39;
        u_xlat39 = u_xlat39 * u_xlat9.x + 1.00001001;
        u_xlat30 = u_xlat30 * u_xlat30;
        u_xlat39 = u_xlat39 * u_xlat39;
        u_xlat30 = max(u_xlat30, 0.100000001);
        u_xlat39 = u_xlat39 * u_xlat30;
        u_xlat39 = u_xlat41 * u_xlat39;
        u_xlat39 = u_xlat40 / u_xlat39;
        u_xlat21.xyz = u_xlat0.xyz * vec3(u_xlat39) + u_xlat13.xyz;
        u_xlat8.xyz = u_xlat21.xyz * u_xlat11.xyz + u_xlat8.xyz;
    }
    u_xlat0.xyz = u_xlat5.xyz * u_xlat6.xxx + u_xlat7.xyz;
    u_xlat0.xyz = u_xlat8.xyz + u_xlat0.xyz;
    SV_Target0.xyz = u_xlat2.xyz * _EmissionColor.xyz + u_xlat0.xyz;
    u_xlatb0 = _Surface==1.0;
    SV_Target0.w = (u_xlatb0) ? u_xlat1.x : 1.0;
    return;
}

