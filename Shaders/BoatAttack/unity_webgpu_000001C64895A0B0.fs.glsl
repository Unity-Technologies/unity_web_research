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
layout(set = 0, binding = 1) uniform mediump texture2D _BaseMap;
layout(set = 0, binding = 2) uniform mediump texture2D _BumpMap;
layout(set = 0, binding = 3) uniform mediump texture2D _OcclusionMap;
layout(set = 0, binding = 4) uniform mediump texture2D _MetallicGlossMap;
layout(set = 0, binding = 5) uniform mediump texture2D _ScreenSpaceOcclusionTexture;
layout(set = 0, binding = 6) uniform mediump texture2D _MainLightShadowmapTexture;
layout(set = 0, binding = 7) uniform mediump texture2D _DitheringTexture;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 1) in highp vec3 vs_TEXCOORD1;
layout(location = 2) in highp vec3 vs_TEXCOORD2;
layout(location = 3) in highp vec4 vs_TEXCOORD3;
layout(location = 4) in highp vec4 vs_TEXCOORD6;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 8) uniform mediump  sampler samplerunity_SpecCube0;
layout(set = 0, binding = 9) uniform mediump  sampler sampler_BaseMap;
layout(set = 0, binding = 10) uniform mediump  sampler sampler_BumpMap;
layout(set = 0, binding = 11) uniform mediump  sampler sampler_OcclusionMap;
layout(set = 0, binding = 12) uniform mediump  sampler sampler_MetallicGlossMap;
layout(set = 0, binding = 13) uniform mediump  sampler sampler_ScreenSpaceOcclusionTexture;
layout(set = 0, binding = 14) uniform mediump  samplerShadow sampler_MainLightShadowmapTexture;
layout(set = 0, binding = 15) uniform mediump  sampler sampler_DitheringTexture;
void main()
{
vec4 u_xlat0;
bool u_xlatb0;
vec2 u_xlat1;
vec4 u_xlat2;
vec3 u_xlat3;
vec4 u_xlat4;
vec3 u_xlat5;
vec4 u_xlat6;
vec3 u_xlat7;
vec4 u_xlat8;
vec3 u_xlat9;
vec3 u_xlat10;
vec3 u_xlat12;
uint u_xlatu12;
vec3 u_xlat13;
vec3 u_xlat14;
bool u_xlatb14;
vec3 u_xlat17;
bool u_xlatb17;
vec2 u_xlat23;
float u_xlat25;
bool u_xlatb25;
float u_xlat28;
bool u_xlatb28;
float u_xlat33;
float u_xlat34;
uint u_xlatu34;
float u_xlat37;
float u_xlat38;
int u_xlati38;
uint u_xlatu38;
bool u_xlatb38;
float u_xlat40;
int u_xlati40;
float u_xlat41;
float u_xlat42;
vec4 hlslcc_FragCoord = vec4(gl_FragCoord.xyz, 1.0/gl_FragCoord.w);
    u_xlat0 = texture(sampler2D(_BaseMap, sampler_BaseMap), vs_TEXCOORD0.xy, _GlobalMipBias.x);
    u_xlat1.xy = texture(sampler2D(_MetallicGlossMap, sampler_MetallicGlossMap), vs_TEXCOORD0.xy, _GlobalMipBias.x).xw;
    u_xlat2 = u_xlat0.wxyz * _BaseColor.wxyz;
    u_xlat3.xyz = texture(sampler2D(_BumpMap, sampler_BumpMap), vs_TEXCOORD0.xy, _GlobalMipBias.x).xyw;
    u_xlat3.x = u_xlat3.x * u_xlat3.z;
    u_xlat23.xy = u_xlat3.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat33 = dot(u_xlat23.xy, u_xlat23.xy);
    u_xlat33 = min(u_xlat33, 1.0);
    u_xlat33 = (-u_xlat33) + 1.0;
    u_xlat33 = sqrt(u_xlat33);
    u_xlat33 = max(u_xlat33, 1.00000002e-16);
    u_xlat23.xy = u_xlat23.xy * vec2(vec2(_BumpScale, _BumpScale));
    u_xlat3.x = texture(sampler2D(_OcclusionMap, sampler_OcclusionMap), vs_TEXCOORD0.xy, _GlobalMipBias.x).y;
    u_xlat14.x = (-_OcclusionStrength) + 1.0;
    u_xlat3.x = u_xlat3.x * _OcclusionStrength + u_xlat14.x;
    u_xlat14.xy = hlslcc_FragCoord.xy * vec2(_DitheringTextureInvSize);
    u_xlat14.x = texture(sampler2D(_DitheringTexture, sampler_DitheringTexture), u_xlat14.xy, _GlobalMipBias.x).w;
    u_xlatb25 = unity_LODFade.x>=0.0;
    u_xlat14.x = (u_xlatb25) ? abs(u_xlat14.x) : -abs(u_xlat14.x);
    u_xlat14.x = (-u_xlat14.x) + unity_LODFade.x;
    u_xlatb14 = u_xlat14.x<0.0;
    if(((int(u_xlatb14) * int(0xffffffffu)))!=0){discard;}
    u_xlatb14 = unity_OrthoParams.w==0.0;
    u_xlat4.xyz = (-vs_TEXCOORD1.xyz) + _WorldSpaceCameraPos.xyz;
    u_xlat25 = dot(u_xlat4.xyz, u_xlat4.xyz);
    u_xlat25 = inversesqrt(u_xlat25);
    u_xlat4.xyz = vec3(u_xlat25) * u_xlat4.xyz;
    u_xlat5.x = unity_MatrixV[0].z;
    u_xlat5.y = unity_MatrixV[1].z;
    u_xlat5.z = unity_MatrixV[2].z;
    u_xlat14.xyz = (bool(u_xlatb14)) ? u_xlat4.xyz : u_xlat5.xyz;
    u_xlat4.xyz = vs_TEXCOORD2.zxy * vs_TEXCOORD3.yzx;
    u_xlat4.xyz = vs_TEXCOORD2.yzx * vs_TEXCOORD3.zxy + (-u_xlat4.xyz);
    u_xlat4.xyz = u_xlat4.xyz * vs_TEXCOORD3.www;
    u_xlat4.xyz = u_xlat23.yyy * u_xlat4.xyz;
    u_xlat4.xyz = u_xlat23.xxx * vs_TEXCOORD3.xyz + u_xlat4.xyz;
    u_xlat4.xyz = vec3(u_xlat33) * vs_TEXCOORD2.xyz + u_xlat4.xyz;
    u_xlat33 = dot(u_xlat4.xyz, u_xlat4.xyz);
    u_xlat33 = inversesqrt(u_xlat33);
    u_xlat4.xyz = vec3(u_xlat33) * u_xlat4.xyz;
    u_xlat33 = vs_TEXCOORD1.y * unity_MatrixV[1].z;
    u_xlat33 = unity_MatrixV[0].z * vs_TEXCOORD1.x + u_xlat33;
    u_xlat33 = unity_MatrixV[2].z * vs_TEXCOORD1.z + u_xlat33;
    u_xlat33 = u_xlat33 + unity_MatrixV[3].z;
    u_xlat33 = (-u_xlat33) + (-_ProjectionParams.y);
    u_xlat33 = max(u_xlat33, 0.0);
    u_xlat33 = u_xlat33 * unity_FogParams.x;
    u_xlat4.w = 1.0;
    u_xlat5.x = dot(unity_SHAr, u_xlat4);
    u_xlat5.y = dot(unity_SHAg, u_xlat4);
    u_xlat5.z = dot(unity_SHAb, u_xlat4);
    u_xlat6 = u_xlat4.yzzx * u_xlat4.xyzz;
    u_xlat7.x = dot(unity_SHBr, u_xlat6);
    u_xlat7.y = dot(unity_SHBg, u_xlat6);
    u_xlat7.z = dot(unity_SHBb, u_xlat6);
    u_xlat23.x = u_xlat4.y * u_xlat4.y;
    u_xlat23.x = u_xlat4.x * u_xlat4.x + (-u_xlat23.x);
    u_xlat6.xyz = unity_SHC.xyz * u_xlat23.xxx + u_xlat7.xyz;
    u_xlat5.xyz = u_xlat5.xyz + u_xlat6.xyz;
    u_xlat5.xyz = max(u_xlat5.xyz, vec3(0.0, 0.0, 0.0));
    u_xlat23.xy = vec2(1.0) / vec2(_ScaledScreenParams.xy);
    u_xlat6.xy = u_xlat23.xy * hlslcc_FragCoord.xy;
    u_xlat23.x = u_xlat6.y * _ScaleBiasRt.x + _ScaleBiasRt.y;
    u_xlat6.z = (-u_xlat23.x) + 1.0;
    u_xlat23.x = (-u_xlat1.x) * 0.959999979 + 0.959999979;
    u_xlat34 = u_xlat1.y * _Smoothness + (-u_xlat23.x);
    u_xlat13.xyz = u_xlat23.xxx * u_xlat2.yzw;
    u_xlat0.xyz = u_xlat0.xyz * _BaseColor.xyz + vec3(-0.0399999991, -0.0399999991, -0.0399999991);
    u_xlat0.xyz = u_xlat1.xxx * u_xlat0.xyz + vec3(0.0399999991, 0.0399999991, 0.0399999991);
    u_xlat1.x = (-u_xlat1.y) * _Smoothness + 1.0;
    u_xlat12.x = u_xlat1.x * u_xlat1.x;
    u_xlat12.x = max(u_xlat12.x, 0.0078125);
    u_xlat23.x = u_xlat12.x * u_xlat12.x;
    u_xlat34 = u_xlat34 + 1.0;
    u_xlat34 = clamp(u_xlat34, 0.0, 1.0);
    u_xlat37 = u_xlat12.x * 4.0 + 2.0;
    u_xlat38 = texture(sampler2D(_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture), u_xlat6.xz, _GlobalMipBias.x).x;
    u_xlat6.x = u_xlat38 + -1.0;
    u_xlat6.x = _AmbientOcclusionParam.w * u_xlat6.x + 1.0;
    u_xlat3.x = min(u_xlat3.x, u_xlat38);
    vec3 txVec0 = vec3(vs_TEXCOORD6.xy,vs_TEXCOORD6.z);
    u_xlat38 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec0, 0.0);
    u_xlat17.x = (-_MainLightShadowParams.x) + 1.0;
    u_xlat38 = u_xlat38 * _MainLightShadowParams.x + u_xlat17.x;
    u_xlatb17 = 0.0>=vs_TEXCOORD6.z;
    u_xlatb28 = vs_TEXCOORD6.z>=1.0;
    u_xlatb17 = u_xlatb28 || u_xlatb17;
    u_xlat38 = (u_xlatb17) ? 1.0 : u_xlat38;
    u_xlat17.xyz = vs_TEXCOORD1.xyz + (-_WorldSpaceCameraPos.xyz);
    u_xlat17.x = dot(u_xlat17.xyz, u_xlat17.xyz);
    u_xlat17.x = u_xlat17.x * _MainLightShadowParams.z + _MainLightShadowParams.w;
    u_xlat17.x = clamp(u_xlat17.x, 0.0, 1.0);
    u_xlat28 = (-u_xlat38) + 1.0;
    u_xlat38 = u_xlat17.x * u_xlat28 + u_xlat38;
    u_xlat17.xyz = u_xlat6.xxx * _MainLightColor.xyz;
    u_xlat7.x = dot((-u_xlat14.xyz), u_xlat4.xyz);
    u_xlat7.x = u_xlat7.x + u_xlat7.x;
    u_xlat7.xyz = u_xlat4.xyz * (-u_xlat7.xxx) + (-u_xlat14.xyz);
    u_xlat40 = dot(u_xlat4.xyz, u_xlat14.xyz);
    u_xlat40 = clamp(u_xlat40, 0.0, 1.0);
    u_xlat40 = (-u_xlat40) + 1.0;
    u_xlat40 = u_xlat40 * u_xlat40;
    u_xlat40 = u_xlat40 * u_xlat40;
    u_xlat8.x = (-u_xlat1.x) * 0.699999988 + 1.70000005;
    u_xlat1.x = u_xlat1.x * u_xlat8.x;
    u_xlat1.x = u_xlat1.x * 6.0;
    u_xlat8 = textureLod(samplerCube(unity_SpecCube0, samplerunity_SpecCube0), u_xlat7.xyz, u_xlat1.x);
    u_xlat1.x = u_xlat8.w + -1.0;
    u_xlat1.x = unity_SpecCube0_HDR.w * u_xlat1.x + 1.0;
    u_xlat1.x = max(u_xlat1.x, 0.0);
    u_xlat1.x = log2(u_xlat1.x);
    u_xlat1.x = u_xlat1.x * unity_SpecCube0_HDR.y;
    u_xlat1.x = exp2(u_xlat1.x);
    u_xlat1.x = u_xlat1.x * unity_SpecCube0_HDR.x;
    u_xlat7.xyz = u_xlat8.xyz * u_xlat1.xxx;
    u_xlat1.xy = u_xlat12.xx * u_xlat12.xx + vec2(-1.0, 1.0);
    u_xlat12.x = float(1.0) / u_xlat1.y;
    u_xlat8.xyz = (-u_xlat0.xyz) + vec3(u_xlat34);
    u_xlat8.xyz = vec3(u_xlat40) * u_xlat8.xyz + u_xlat0.xyz;
    u_xlat8.xyz = u_xlat12.xxx * u_xlat8.xyz;
    u_xlat7.xyz = u_xlat7.xyz * u_xlat8.xyz;
    u_xlat5.xyz = u_xlat5.xyz * u_xlat13.xyz + u_xlat7.xyz;
    u_xlat12.x = u_xlat38 * unity_LightData.z;
    u_xlat34 = dot(u_xlat4.xyz, _MainLightPosition.xyz);
    u_xlat34 = clamp(u_xlat34, 0.0, 1.0);
    u_xlat12.x = u_xlat34 * u_xlat12.x;
    u_xlat17.xyz = u_xlat12.xxx * u_xlat17.xyz;
    u_xlat7.xyz = u_xlat14.xyz + _MainLightPosition.xyz;
    u_xlat12.x = dot(u_xlat7.xyz, u_xlat7.xyz);
    u_xlat12.x = max(u_xlat12.x, 1.17549435e-37);
    u_xlat12.x = inversesqrt(u_xlat12.x);
    u_xlat7.xyz = u_xlat12.xxx * u_xlat7.xyz;
    u_xlat12.x = dot(u_xlat4.xyz, u_xlat7.xyz);
    u_xlat12.x = clamp(u_xlat12.x, 0.0, 1.0);
    u_xlat12.z = dot(_MainLightPosition.xyz, u_xlat7.xyz);
    u_xlat12.z = clamp(u_xlat12.z, 0.0, 1.0);
    u_xlat12.xz = u_xlat12.xz * u_xlat12.xz;
    u_xlat12.x = u_xlat12.x * u_xlat1.x + 1.00001001;
    u_xlat12.x = u_xlat12.x * u_xlat12.x;
    u_xlat34 = max(u_xlat12.z, 0.100000001);
    u_xlat12.x = u_xlat34 * u_xlat12.x;
    u_xlat12.x = u_xlat37 * u_xlat12.x;
    u_xlat12.x = u_xlat23.x / u_xlat12.x;
    u_xlat7.xyz = u_xlat0.xyz * u_xlat12.xxx + u_xlat13.xyz;
    u_xlat17.xyz = u_xlat17.xyz * u_xlat7.xyz;
    u_xlat12.x = min(_AdditionalLightsCount.x, unity_LightData.y);
    u_xlatu12 =  uint(int(u_xlat12.x));
    u_xlat7.x = float(0.0);
    u_xlat7.y = float(0.0);
    u_xlat7.z = float(0.0);
    for(uint u_xlatu_loop_1 = 0u ; u_xlatu_loop_1<u_xlatu12 ; u_xlatu_loop_1++)
    {
        u_xlatu38 = u_xlatu_loop_1 >> (2u & uint(0x1F));
        u_xlati40 = int(u_xlatu_loop_1 & 3u);
        u_xlat38 = dot(unity_LightIndices[int(u_xlatu38)], uintBitsToFloat(ImmCB_0[u_xlati40]));
        u_xlati38 = int(u_xlat38);
        u_xlat8.xyz = (-vs_TEXCOORD1.xyz) * _AdditionalLightsPosition[u_xlati38].www + _AdditionalLightsPosition[u_xlati38].xyz;
        u_xlat40 = dot(u_xlat8.xyz, u_xlat8.xyz);
        u_xlat40 = max(u_xlat40, 6.10351562e-05);
        u_xlat41 = inversesqrt(u_xlat40);
        u_xlat9.xyz = vec3(u_xlat41) * u_xlat8.xyz;
        u_xlat42 = float(1.0) / float(u_xlat40);
        u_xlat40 = u_xlat40 * _AdditionalLightsAttenuation[u_xlati38].x;
        u_xlat40 = (-u_xlat40) * u_xlat40 + 1.0;
        u_xlat40 = max(u_xlat40, 0.0);
        u_xlat40 = u_xlat40 * u_xlat40;
        u_xlat40 = u_xlat40 * u_xlat42;
        u_xlat42 = dot(_AdditionalLightsSpotDir[u_xlati38].xyz, u_xlat9.xyz);
        u_xlat42 = u_xlat42 * _AdditionalLightsAttenuation[u_xlati38].z + _AdditionalLightsAttenuation[u_xlati38].w;
        u_xlat42 = clamp(u_xlat42, 0.0, 1.0);
        u_xlat42 = u_xlat42 * u_xlat42;
        u_xlat40 = u_xlat40 * u_xlat42;
        u_xlat10.xyz = u_xlat6.xxx * _AdditionalLightsColor[u_xlati38].xyz;
        u_xlat38 = dot(u_xlat4.xyz, u_xlat9.xyz);
        u_xlat38 = clamp(u_xlat38, 0.0, 1.0);
        u_xlat38 = u_xlat38 * u_xlat40;
        u_xlat10.xyz = vec3(u_xlat38) * u_xlat10.xyz;
        u_xlat8.xyz = u_xlat8.xyz * vec3(u_xlat41) + u_xlat14.xyz;
        u_xlat38 = dot(u_xlat8.xyz, u_xlat8.xyz);
        u_xlat38 = max(u_xlat38, 1.17549435e-37);
        u_xlat38 = inversesqrt(u_xlat38);
        u_xlat8.xyz = vec3(u_xlat38) * u_xlat8.xyz;
        u_xlat38 = dot(u_xlat4.xyz, u_xlat8.xyz);
        u_xlat38 = clamp(u_xlat38, 0.0, 1.0);
        u_xlat40 = dot(u_xlat9.xyz, u_xlat8.xyz);
        u_xlat40 = clamp(u_xlat40, 0.0, 1.0);
        u_xlat38 = u_xlat38 * u_xlat38;
        u_xlat38 = u_xlat38 * u_xlat1.x + 1.00001001;
        u_xlat40 = u_xlat40 * u_xlat40;
        u_xlat38 = u_xlat38 * u_xlat38;
        u_xlat40 = max(u_xlat40, 0.100000001);
        u_xlat38 = u_xlat38 * u_xlat40;
        u_xlat38 = u_xlat37 * u_xlat38;
        u_xlat38 = u_xlat23.x / u_xlat38;
        u_xlat8.xyz = u_xlat0.xyz * vec3(u_xlat38) + u_xlat13.xyz;
        u_xlat7.xyz = u_xlat8.xyz * u_xlat10.xyz + u_xlat7.xyz;
    }
    u_xlat0.xyz = u_xlat5.xyz * u_xlat3.xxx + u_xlat17.xyz;
    u_xlat0.xyz = u_xlat7.xyz + u_xlat0.xyz;
    u_xlat33 = u_xlat33 * (-u_xlat33);
    u_xlat33 = exp2(u_xlat33);
    u_xlat0.xyz = u_xlat0.xyz + (-unity_FogColor.xyz);
    SV_Target0.xyz = vec3(u_xlat33) * u_xlat0.xyz + unity_FogColor.xyz;
    u_xlatb0 = _Surface==1.0;
    SV_Target0.w = (u_xlatb0) ? u_xlat2.x : 1.0;
    return;
}
