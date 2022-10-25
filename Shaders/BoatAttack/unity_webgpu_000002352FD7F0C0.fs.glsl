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
layout(set = 1, binding = 5, std140) uniform LightCookies {
	mat4x4 _MainLightWorldToLight;
	float _AdditionalLightsCookieEnableBits[8];
	float _MainLightCookieTextureFormat;
	float _AdditionalLightsCookieAtlasTextureFormat;
};
layout(set = 1, binding = 6, std140) uniform AdditionalLightsCookies {
	mat4x4 _AdditionalLightsWorldToLights[256];
	vec4 _AdditionalLightsCookieAtlasUVRects[256];
	float _AdditionalLightsLightTypes[256];
};
layout(set = 0, binding = 0) uniform mediump textureCube unity_SpecCube0;
layout(set = 0, binding = 1) uniform mediump texture2D unity_Lightmap;
layout(set = 0, binding = 2) uniform mediump texture2D _BaseMap;
layout(set = 0, binding = 3) uniform mediump texture2D _ScreenSpaceOcclusionTexture;
layout(set = 0, binding = 4) uniform mediump texture2D _MainLightShadowmapTexture;
layout(set = 0, binding = 5) uniform mediump texture2D _MainLightCookieTexture;
layout(set = 0, binding = 6) uniform mediump texture2D _AdditionalLightsCookieAtlasTexture;
layout(set = 0, binding = 7) uniform mediump texture2D _DitheringTexture;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 1) in highp vec3 vs_TEXCOORD1;
layout(location = 2) in highp vec3 vs_TEXCOORD2;
layout(location = 3) in highp vec2 vs_TEXCOORD8;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 8) uniform mediump  sampler samplerunity_SpecCube0;
layout(set = 0, binding = 9) uniform mediump  sampler samplerunity_Lightmap;
layout(set = 0, binding = 10) uniform mediump  sampler sampler_BaseMap;
layout(set = 0, binding = 11) uniform mediump  sampler sampler_ScreenSpaceOcclusionTexture;
layout(set = 0, binding = 12) uniform mediump  samplerShadow sampler_MainLightShadowmapTexture;
layout(set = 0, binding = 13) uniform mediump  sampler sampler_MainLightCookieTexture;
layout(set = 0, binding = 14) uniform mediump  sampler sampler_AdditionalLightsCookieAtlasTexture;
layout(set = 0, binding = 15) uniform mediump  sampler sampler_DitheringTexture;
void main()
{
vec4 u_xlat0;
bool u_xlatb0;
vec4 u_xlat1;
vec3 u_xlat2;
bool u_xlatb2;
vec3 u_xlat3;
vec4 u_xlat4;
bvec4 u_xlatb4;
vec4 u_xlat5;
vec3 u_xlat6;
vec4 u_xlat7;
bvec2 u_xlatb7;
vec4 u_xlat8;
vec3 u_xlat9;
vec3 u_xlat10;
vec4 u_xlat11;
vec4 u_xlat12;
vec3 u_xlat13;
vec3 u_xlat15;
vec2 u_xlat18;
bvec2 u_xlatb18;
float u_xlat20;
vec2 u_xlat32;
bool u_xlatb32;
float u_xlat34;
float u_xlat35;
int u_xlati35;
vec2 u_xlat39;
bvec2 u_xlatb39;
float u_xlat42;
int u_xlati42;
uint u_xlatu42;
bool u_xlatb42;
float u_xlat44;
uint u_xlatu44;
float u_xlat45;
uint u_xlatu45;
float u_xlat46;
float u_xlat47;
float u_xlat48;
uint u_xlatu48;
bool u_xlatb48;
float u_xlat49;
float u_xlat50;
int u_xlati50;
uint u_xlatu50;
bool u_xlatb50;
int u_xlati51;
int u_xlati52;
vec4 hlslcc_FragCoord = vec4(gl_FragCoord.xyz, 1.0/gl_FragCoord.w);
    u_xlat0 = texture(sampler2D(_BaseMap, sampler_BaseMap), vs_TEXCOORD0.xy, _GlobalMipBias.x);
    u_xlat1 = u_xlat0.wxyz * _BaseColor.wxyz;
    u_xlat2.xy = hlslcc_FragCoord.xy * vec2(_DitheringTextureInvSize);
    u_xlat42 = texture(sampler2D(_DitheringTexture, sampler_DitheringTexture), u_xlat2.xy, _GlobalMipBias.x).w;
    u_xlatb2 = unity_LODFade.x>=0.0;
    u_xlat42 = (u_xlatb2) ? abs(u_xlat42) : -abs(u_xlat42);
    u_xlat42 = (-u_xlat42) + unity_LODFade.x;
    u_xlatb42 = u_xlat42<0.0;
    if(((int(u_xlatb42) * int(0xffffffffu)))!=0){discard;}
    u_xlatb42 = unity_OrthoParams.w==0.0;
    u_xlat2.xyz = (-vs_TEXCOORD1.xyz) + _WorldSpaceCameraPos.xyz;
    u_xlat44 = dot(u_xlat2.xyz, u_xlat2.xyz);
    u_xlat44 = inversesqrt(u_xlat44);
    u_xlat2.xyz = vec3(u_xlat44) * u_xlat2.xyz;
    u_xlat3.x = unity_MatrixV[0].z;
    u_xlat3.y = unity_MatrixV[1].z;
    u_xlat3.z = unity_MatrixV[2].z;
    u_xlat2.xyz = (bool(u_xlatb42)) ? u_xlat2.xyz : u_xlat3.xyz;
    u_xlat42 = dot(vs_TEXCOORD2.xyz, vs_TEXCOORD2.xyz);
    u_xlat42 = inversesqrt(u_xlat42);
    u_xlat3.xyz = vec3(u_xlat42) * vs_TEXCOORD2.xyz;
    u_xlat4.xyz = vs_TEXCOORD1.xyz + (-_CascadeShadowSplitSpheres0.xyz);
    u_xlat5.xyz = vs_TEXCOORD1.xyz + (-_CascadeShadowSplitSpheres1.xyz);
    u_xlat6.xyz = vs_TEXCOORD1.xyz + (-_CascadeShadowSplitSpheres2.xyz);
    u_xlat7.xyz = vs_TEXCOORD1.xyz + (-_CascadeShadowSplitSpheres3.xyz);
    u_xlat4.x = dot(u_xlat4.xyz, u_xlat4.xyz);
    u_xlat4.y = dot(u_xlat5.xyz, u_xlat5.xyz);
    u_xlat4.z = dot(u_xlat6.xyz, u_xlat6.xyz);
    u_xlat4.w = dot(u_xlat7.xyz, u_xlat7.xyz);
    u_xlatb4 = lessThan(u_xlat4, _CascadeShadowSplitSphereRadii);
    u_xlat5.x = u_xlatb4.x ? float(1.0) : 0.0;
    u_xlat5.y = u_xlatb4.y ? float(1.0) : 0.0;
    u_xlat5.z = u_xlatb4.z ? float(1.0) : 0.0;
    u_xlat5.w = u_xlatb4.w ? float(1.0) : 0.0;
;
    u_xlat4.x = (u_xlatb4.x) ? float(-1.0) : float(-0.0);
    u_xlat4.y = (u_xlatb4.y) ? float(-1.0) : float(-0.0);
    u_xlat4.z = (u_xlatb4.z) ? float(-1.0) : float(-0.0);
    u_xlat4.xyz = u_xlat4.xyz + u_xlat5.yzw;
    u_xlat5.yzw = max(u_xlat4.xyz, vec3(0.0, 0.0, 0.0));
    u_xlat42 = dot(u_xlat5, vec4(4.0, 3.0, 2.0, 1.0));
    u_xlat42 = (-u_xlat42) + 4.0;
    u_xlatu42 = uint(u_xlat42);
    u_xlati42 = int(u_xlatu42) << (2 & int(0x1F));
    u_xlat4.xyz = vs_TEXCOORD1.yyy * _MainLightWorldToShadow[(u_xlati42 + 1) / 4][(u_xlati42 + 1) % 4].xyz;
    u_xlat4.xyz = _MainLightWorldToShadow[u_xlati42 / 4][u_xlati42 % 4].xyz * vs_TEXCOORD1.xxx + u_xlat4.xyz;
    u_xlat4.xyz = _MainLightWorldToShadow[(u_xlati42 + 2) / 4][(u_xlati42 + 2) % 4].xyz * vs_TEXCOORD1.zzz + u_xlat4.xyz;
    u_xlat4.xyz = u_xlat4.xyz + _MainLightWorldToShadow[(u_xlati42 + 3) / 4][(u_xlati42 + 3) % 4].xyz;
    u_xlat42 = vs_TEXCOORD1.y * unity_MatrixV[1].z;
    u_xlat42 = unity_MatrixV[0].z * vs_TEXCOORD1.x + u_xlat42;
    u_xlat42 = unity_MatrixV[2].z * vs_TEXCOORD1.z + u_xlat42;
    u_xlat42 = u_xlat42 + unity_MatrixV[3].z;
    u_xlat42 = (-u_xlat42) + (-_ProjectionParams.y);
    u_xlat42 = max(u_xlat42, 0.0);
    u_xlat42 = u_xlat42 * unity_FogParams.x;
    u_xlat5.xyz = texture(sampler2D(unity_Lightmap, samplerunity_Lightmap), vs_TEXCOORD8.xy, _GlobalMipBias.x).xyz;
    u_xlat6.xy = vec2(1.0) / vec2(_ScaledScreenParams.xy);
    u_xlat6.xy = u_xlat6.xy * hlslcc_FragCoord.xy;
    u_xlat44 = u_xlat6.y * _ScaleBiasRt.x + _ScaleBiasRt.y;
    u_xlat6.z = (-u_xlat44) + 1.0;
    u_xlat44 = (-_Metallic) * 0.959999979 + 0.959999979;
    u_xlat45 = (-u_xlat44) + _Smoothness;
    u_xlat15.xyz = u_xlat1.yzw * vec3(u_xlat44);
    u_xlat0.xyz = u_xlat0.xyz * _BaseColor.xyz + vec3(-0.0399999991, -0.0399999991, -0.0399999991);
    u_xlat0.xyz = vec3(vec3(_Metallic, _Metallic, _Metallic)) * u_xlat0.xyz + vec3(0.0399999991, 0.0399999991, 0.0399999991);
    u_xlat44 = (-_Smoothness) + 1.0;
    u_xlat46 = u_xlat44 * u_xlat44;
    u_xlat46 = max(u_xlat46, 0.0078125);
    u_xlat47 = u_xlat46 * u_xlat46;
    u_xlat45 = u_xlat45 + 1.0;
    u_xlat45 = clamp(u_xlat45, 0.0, 1.0);
    u_xlat20 = u_xlat46 * 4.0 + 2.0;
    u_xlat6.x = texture(sampler2D(_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture), u_xlat6.xz, _GlobalMipBias.x).x;
    u_xlat34 = u_xlat6.x + -1.0;
    u_xlat34 = _AmbientOcclusionParam.w * u_xlat34 + 1.0;
    u_xlat6.x = min(u_xlat6.x, 1.0);
    vec3 txVec0 = vec3(u_xlat4.xy,u_xlat4.z);
    u_xlat4.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec0, 0.0);
    u_xlat18.x = (-_MainLightShadowParams.x) + 1.0;
    u_xlat4.x = u_xlat4.x * _MainLightShadowParams.x + u_xlat18.x;
    u_xlatb18.x = 0.0>=u_xlat4.z;
    u_xlatb32 = u_xlat4.z>=1.0;
    u_xlatb18.x = u_xlatb32 || u_xlatb18.x;
    u_xlat4.x = (u_xlatb18.x) ? 1.0 : u_xlat4.x;
    u_xlat7.xyz = vs_TEXCOORD1.xyz + (-_WorldSpaceCameraPos.xyz);
    u_xlat18.x = dot(u_xlat7.xyz, u_xlat7.xyz);
    u_xlat18.x = u_xlat18.x * _MainLightShadowParams.z + _MainLightShadowParams.w;
    u_xlat18.x = clamp(u_xlat18.x, 0.0, 1.0);
    u_xlat32.x = (-u_xlat4.x) + 1.0;
    u_xlat4.x = u_xlat18.x * u_xlat32.x + u_xlat4.x;
    u_xlatb18.x = _MainLightCookieTextureFormat!=-1.0;
    if(u_xlatb18.x){
        u_xlat18.xy = vs_TEXCOORD1.yy * _MainLightWorldToLight[1].xy;
        u_xlat18.xy = _MainLightWorldToLight[0].xy * vs_TEXCOORD1.xx + u_xlat18.xy;
        u_xlat18.xy = _MainLightWorldToLight[2].xy * vs_TEXCOORD1.zz + u_xlat18.xy;
        u_xlat18.xy = u_xlat18.xy + _MainLightWorldToLight[3].xy;
        u_xlat18.xy = u_xlat18.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
        u_xlat7 = texture(sampler2D(_MainLightCookieTexture, sampler_MainLightCookieTexture), u_xlat18.xy, _GlobalMipBias.x);
        u_xlatb18.xy = equal(vec4(vec4(_MainLightCookieTextureFormat, _MainLightCookieTextureFormat, _MainLightCookieTextureFormat, _MainLightCookieTextureFormat)), vec4(0.0, 1.0, 0.0, 0.0)).xy;
        u_xlat32.x = (u_xlatb18.y) ? u_xlat7.w : u_xlat7.x;
        u_xlat7.xyz = (u_xlatb18.x) ? u_xlat7.xyz : u_xlat32.xxx;
    } else {
        u_xlat7.x = float(1.0);
        u_xlat7.y = float(1.0);
        u_xlat7.z = float(1.0);
    }
    u_xlat7.xyz = u_xlat7.xyz * _MainLightColor.xyz;
    u_xlat7.xyz = vec3(u_xlat34) * u_xlat7.xyz;
    u_xlat18.x = dot((-u_xlat2.xyz), u_xlat3.xyz);
    u_xlat18.x = u_xlat18.x + u_xlat18.x;
    u_xlat8.xyz = u_xlat3.xyz * (-u_xlat18.xxx) + (-u_xlat2.xyz);
    u_xlat18.x = dot(u_xlat3.xyz, u_xlat2.xyz);
    u_xlat18.x = clamp(u_xlat18.x, 0.0, 1.0);
    u_xlat18.x = (-u_xlat18.x) + 1.0;
    u_xlat18.x = u_xlat18.x * u_xlat18.x;
    u_xlat18.x = u_xlat18.x * u_xlat18.x;
    u_xlat32.x = (-u_xlat44) * 0.699999988 + 1.70000005;
    u_xlat44 = u_xlat44 * u_xlat32.x;
    u_xlat44 = u_xlat44 * 6.0;
    u_xlat8 = textureLod(samplerCube(unity_SpecCube0, samplerunity_SpecCube0), u_xlat8.xyz, u_xlat44);
    u_xlat44 = u_xlat8.w + -1.0;
    u_xlat44 = unity_SpecCube0_HDR.w * u_xlat44 + 1.0;
    u_xlat44 = max(u_xlat44, 0.0);
    u_xlat44 = log2(u_xlat44);
    u_xlat44 = u_xlat44 * unity_SpecCube0_HDR.y;
    u_xlat44 = exp2(u_xlat44);
    u_xlat44 = u_xlat44 * unity_SpecCube0_HDR.x;
    u_xlat8.xyz = u_xlat8.xyz * vec3(u_xlat44);
    u_xlat32.xy = vec2(u_xlat46) * vec2(u_xlat46) + vec2(-1.0, 1.0);
    u_xlat44 = float(1.0) / u_xlat32.y;
    u_xlat9.xyz = (-u_xlat0.xyz) + vec3(u_xlat45);
    u_xlat9.xyz = u_xlat18.xxx * u_xlat9.xyz + u_xlat0.xyz;
    u_xlat9.xyz = vec3(u_xlat44) * u_xlat9.xyz;
    u_xlat8.xyz = u_xlat8.xyz * u_xlat9.xyz;
    u_xlat5.xyz = u_xlat5.xyz * u_xlat15.xyz + u_xlat8.xyz;
    u_xlat44 = u_xlat4.x * unity_LightData.z;
    u_xlat45 = dot(u_xlat3.xyz, _MainLightPosition.xyz);
    u_xlat45 = clamp(u_xlat45, 0.0, 1.0);
    u_xlat44 = u_xlat44 * u_xlat45;
    u_xlat4.xyw = vec3(u_xlat44) * u_xlat7.xyz;
    u_xlat7.xyz = u_xlat2.xyz + _MainLightPosition.xyz;
    u_xlat44 = dot(u_xlat7.xyz, u_xlat7.xyz);
    u_xlat44 = max(u_xlat44, 1.17549435e-37);
    u_xlat44 = inversesqrt(u_xlat44);
    u_xlat7.xyz = vec3(u_xlat44) * u_xlat7.xyz;
    u_xlat44 = dot(u_xlat3.xyz, u_xlat7.xyz);
    u_xlat44 = clamp(u_xlat44, 0.0, 1.0);
    u_xlat45 = dot(_MainLightPosition.xyz, u_xlat7.xyz);
    u_xlat45 = clamp(u_xlat45, 0.0, 1.0);
    u_xlat44 = u_xlat44 * u_xlat44;
    u_xlat44 = u_xlat44 * u_xlat32.x + 1.00001001;
    u_xlat45 = u_xlat45 * u_xlat45;
    u_xlat44 = u_xlat44 * u_xlat44;
    u_xlat45 = max(u_xlat45, 0.100000001);
    u_xlat44 = u_xlat44 * u_xlat45;
    u_xlat44 = u_xlat20 * u_xlat44;
    u_xlat44 = u_xlat47 / u_xlat44;
    u_xlat7.xyz = u_xlat0.xyz * vec3(u_xlat44) + u_xlat15.xyz;
    u_xlat4.xyw = u_xlat4.xyw * u_xlat7.xyz;
    u_xlat44 = min(_AdditionalLightsCount.x, unity_LightData.y);
    u_xlatu44 =  uint(int(u_xlat44));
    u_xlatb7.xy = equal(vec4(vec4(_AdditionalLightsCookieAtlasTextureFormat, _AdditionalLightsCookieAtlasTextureFormat, _AdditionalLightsCookieAtlasTextureFormat, _AdditionalLightsCookieAtlasTextureFormat)), vec4(0.0, 1.0, 0.0, 0.0)).xy;
    u_xlat8.x = float(0.0);
    u_xlat8.y = float(0.0);
    u_xlat8.z = float(0.0);
    for(uint u_xlatu_loop_1 = 0u ; u_xlatu_loop_1<u_xlatu44 ; u_xlatu_loop_1++)
    {
        u_xlatu48 = u_xlatu_loop_1 >> (2u & uint(0x1F));
        u_xlati35 = int(u_xlatu_loop_1 & 3u);
        u_xlat48 = dot(unity_LightIndices[int(u_xlatu48)], uintBitsToFloat(ImmCB_0[u_xlati35]));
        u_xlatu48 =  uint(int(u_xlat48));
        u_xlat9.xyz = (-vs_TEXCOORD1.xyz) * _AdditionalLightsPosition[int(u_xlatu48)].www + _AdditionalLightsPosition[int(u_xlatu48)].xyz;
        u_xlat35 = dot(u_xlat9.xyz, u_xlat9.xyz);
        u_xlat35 = max(u_xlat35, 6.10351562e-05);
        u_xlat49 = inversesqrt(u_xlat35);
        u_xlat10.xyz = vec3(u_xlat49) * u_xlat9.xyz;
        u_xlat50 = float(1.0) / float(u_xlat35);
        u_xlat35 = u_xlat35 * _AdditionalLightsAttenuation[int(u_xlatu48)].x;
        u_xlat35 = (-u_xlat35) * u_xlat35 + 1.0;
        u_xlat35 = max(u_xlat35, 0.0);
        u_xlat35 = u_xlat35 * u_xlat35;
        u_xlat35 = u_xlat35 * u_xlat50;
        u_xlat50 = dot(_AdditionalLightsSpotDir[int(u_xlatu48)].xyz, u_xlat10.xyz);
        u_xlat50 = u_xlat50 * _AdditionalLightsAttenuation[int(u_xlatu48)].z + _AdditionalLightsAttenuation[int(u_xlatu48)].w;
        u_xlat50 = clamp(u_xlat50, 0.0, 1.0);
        u_xlat50 = u_xlat50 * u_xlat50;
        u_xlat35 = u_xlat35 * u_xlat50;
        u_xlatu50 = u_xlatu48 >> (5u & uint(0x1F));
        u_xlati51 = 1 << (int(u_xlatu48) & int(0x1F));
        u_xlati50 = int(uint(u_xlati51) & floatBitsToUint(_AdditionalLightsCookieEnableBits[int(u_xlatu50)]));
        if(u_xlati50 != 0) {
            u_xlati50 = int(_AdditionalLightsLightTypes[int(u_xlatu48)]);
            u_xlati51 = (u_xlati50 != 0) ? 0 : 1;
            u_xlati52 = int(u_xlatu48) << (2 & int(0x1F));
            if(u_xlati51 != 0) {
                u_xlat11.xyz = vs_TEXCOORD1.yyy * _AdditionalLightsWorldToLights[(u_xlati52 + 1) / 4][(u_xlati52 + 1) % 4].xyw;
                u_xlat11.xyz = _AdditionalLightsWorldToLights[u_xlati52 / 4][u_xlati52 % 4].xyw * vs_TEXCOORD1.xxx + u_xlat11.xyz;
                u_xlat11.xyz = _AdditionalLightsWorldToLights[(u_xlati52 + 2) / 4][(u_xlati52 + 2) % 4].xyw * vs_TEXCOORD1.zzz + u_xlat11.xyz;
                u_xlat11.xyz = u_xlat11.xyz + _AdditionalLightsWorldToLights[(u_xlati52 + 3) / 4][(u_xlati52 + 3) % 4].xyw;
                u_xlat11.xy = u_xlat11.xy / u_xlat11.zz;
                u_xlat11.xy = u_xlat11.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
                u_xlat11.xy = clamp(u_xlat11.xy, 0.0, 1.0);
                u_xlat11.xy = _AdditionalLightsCookieAtlasUVRects[int(u_xlatu48)].xy * u_xlat11.xy + _AdditionalLightsCookieAtlasUVRects[int(u_xlatu48)].zw;
            } else {
                u_xlatb50 = u_xlati50==1;
                u_xlati50 = u_xlatb50 ? 1 : int(0);
                if(u_xlati50 != 0) {
                    u_xlat39.xy = vs_TEXCOORD1.yy * _AdditionalLightsWorldToLights[(u_xlati52 + 1) / 4][(u_xlati52 + 1) % 4].xy;
                    u_xlat39.xy = _AdditionalLightsWorldToLights[u_xlati52 / 4][u_xlati52 % 4].xy * vs_TEXCOORD1.xx + u_xlat39.xy;
                    u_xlat39.xy = _AdditionalLightsWorldToLights[(u_xlati52 + 2) / 4][(u_xlati52 + 2) % 4].xy * vs_TEXCOORD1.zz + u_xlat39.xy;
                    u_xlat39.xy = u_xlat39.xy + _AdditionalLightsWorldToLights[(u_xlati52 + 3) / 4][(u_xlati52 + 3) % 4].xy;
                    u_xlat39.xy = u_xlat39.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
                    u_xlat39.xy = fract(u_xlat39.xy);
                    u_xlat11.xy = _AdditionalLightsCookieAtlasUVRects[int(u_xlatu48)].xy * u_xlat39.xy + _AdditionalLightsCookieAtlasUVRects[int(u_xlatu48)].zw;
                } else {
                    u_xlat12 = vs_TEXCOORD1.yyyy * _AdditionalLightsWorldToLights[(u_xlati52 + 1) / 4][(u_xlati52 + 1) % 4];
                    u_xlat12 = _AdditionalLightsWorldToLights[u_xlati52 / 4][u_xlati52 % 4] * vs_TEXCOORD1.xxxx + u_xlat12;
                    u_xlat12 = _AdditionalLightsWorldToLights[(u_xlati52 + 2) / 4][(u_xlati52 + 2) % 4] * vs_TEXCOORD1.zzzz + u_xlat12;
                    u_xlat12 = u_xlat12 + _AdditionalLightsWorldToLights[(u_xlati52 + 3) / 4][(u_xlati52 + 3) % 4];
                    u_xlat12.xyz = u_xlat12.xyz / u_xlat12.www;
                    u_xlat50 = dot(u_xlat12.xyz, u_xlat12.xyz);
                    u_xlat50 = inversesqrt(u_xlat50);
                    u_xlat12.xyz = vec3(u_xlat50) * u_xlat12.xyz;
                    u_xlat50 = dot(abs(u_xlat12.xyz), vec3(1.0, 1.0, 1.0));
                    u_xlat50 = max(u_xlat50, 9.99999997e-07);
                    u_xlat50 = float(1.0) / float(u_xlat50);
                    u_xlat13.xyz = vec3(u_xlat50) * u_xlat12.zxy;
                    u_xlat13.x = (-u_xlat13.x);
                    u_xlat13.x = clamp(u_xlat13.x, 0.0, 1.0);
                    u_xlatb39.xy = greaterThanEqual(u_xlat13.yzyz, vec4(0.0, 0.0, 0.0, 0.0)).xy;
                    u_xlat39.x = (u_xlatb39.x) ? u_xlat13.x : (-u_xlat13.x);
                    u_xlat39.y = (u_xlatb39.y) ? u_xlat13.x : (-u_xlat13.x);
                    u_xlat39.xy = u_xlat12.xy * vec2(u_xlat50) + u_xlat39.xy;
                    u_xlat39.xy = u_xlat39.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
                    u_xlat39.xy = clamp(u_xlat39.xy, 0.0, 1.0);
                    u_xlat11.xy = _AdditionalLightsCookieAtlasUVRects[int(u_xlatu48)].xy * u_xlat39.xy + _AdditionalLightsCookieAtlasUVRects[int(u_xlatu48)].zw;
                }
            }
            u_xlat11 = texture(sampler2D(_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture), u_xlat11.xy, _GlobalMipBias.x);
            u_xlat50 = (u_xlatb7.y) ? u_xlat11.w : u_xlat11.x;
            u_xlat11.xyz = (u_xlatb7.x) ? u_xlat11.xyz : vec3(u_xlat50);
        } else {
            u_xlat11.x = float(1.0);
            u_xlat11.y = float(1.0);
            u_xlat11.z = float(1.0);
        }
        u_xlat11.xyz = u_xlat11.xyz * _AdditionalLightsColor[int(u_xlatu48)].xyz;
        u_xlat11.xyz = vec3(u_xlat34) * u_xlat11.xyz;
        u_xlat48 = dot(u_xlat3.xyz, u_xlat10.xyz);
        u_xlat48 = clamp(u_xlat48, 0.0, 1.0);
        u_xlat48 = u_xlat48 * u_xlat35;
        u_xlat11.xyz = vec3(u_xlat48) * u_xlat11.xyz;
        u_xlat9.xyz = u_xlat9.xyz * vec3(u_xlat49) + u_xlat2.xyz;
        u_xlat48 = dot(u_xlat9.xyz, u_xlat9.xyz);
        u_xlat48 = max(u_xlat48, 1.17549435e-37);
        u_xlat48 = inversesqrt(u_xlat48);
        u_xlat9.xyz = vec3(u_xlat48) * u_xlat9.xyz;
        u_xlat48 = dot(u_xlat3.xyz, u_xlat9.xyz);
        u_xlat48 = clamp(u_xlat48, 0.0, 1.0);
        u_xlat35 = dot(u_xlat10.xyz, u_xlat9.xyz);
        u_xlat35 = clamp(u_xlat35, 0.0, 1.0);
        u_xlat48 = u_xlat48 * u_xlat48;
        u_xlat48 = u_xlat48 * u_xlat32.x + 1.00001001;
        u_xlat35 = u_xlat35 * u_xlat35;
        u_xlat48 = u_xlat48 * u_xlat48;
        u_xlat35 = max(u_xlat35, 0.100000001);
        u_xlat48 = u_xlat48 * u_xlat35;
        u_xlat48 = u_xlat20 * u_xlat48;
        u_xlat48 = u_xlat47 / u_xlat48;
        u_xlat9.xyz = u_xlat0.xyz * vec3(u_xlat48) + u_xlat15.xyz;
        u_xlat8.xyz = u_xlat9.xyz * u_xlat11.xyz + u_xlat8.xyz;
    }
    u_xlat0.xyz = u_xlat5.xyz * u_xlat6.xxx + u_xlat4.xyw;
    u_xlat0.xyz = u_xlat8.xyz + u_xlat0.xyz;
    u_xlat42 = u_xlat42 * (-u_xlat42);
    u_xlat42 = exp2(u_xlat42);
    u_xlat0.xyz = u_xlat0.xyz + (-unity_FogColor.xyz);
    SV_Target0.xyz = vec3(u_xlat42) * u_xlat0.xyz + unity_FogColor.xyz;
    u_xlatb0 = _Surface==1.0;
    SV_Target0.w = (u_xlatb0) ? u_xlat1.x : 1.0;
    return;
}
