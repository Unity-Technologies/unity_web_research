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
layout(set = 0, binding = 1) uniform mediump texture2D _BaseMap;
layout(set = 0, binding = 2) uniform mediump texture2D _EmissionMap;
layout(set = 0, binding = 3) uniform mediump texture2D _ScreenSpaceOcclusionTexture;
layout(set = 0, binding = 4) uniform mediump texture2D _MainLightShadowmapTexture;
layout(set = 0, binding = 5) uniform mediump texture2D _MainLightCookieTexture;
layout(set = 0, binding = 6) uniform mediump texture2D _AdditionalLightsCookieAtlasTexture;
layout(set = 0, binding = 7) uniform mediump texture2D _DitheringTexture;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 1) in highp vec3 vs_TEXCOORD1;
layout(location = 2) in highp vec3 vs_TEXCOORD2;
layout(location = 3) in highp vec4 vs_TEXCOORD6;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 8) uniform mediump  sampler samplerunity_SpecCube0;
layout(set = 0, binding = 9) uniform mediump  sampler sampler_BaseMap;
layout(set = 0, binding = 10) uniform mediump  sampler sampler_EmissionMap;
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
vec3 u_xlat3;
vec4 u_xlat4;
vec3 u_xlat5;
vec4 u_xlat6;
vec4 u_xlat7;
bool u_xlatb7;
vec4 u_xlat8;
bvec2 u_xlatb8;
vec2 u_xlat9;
vec3 u_xlat10;
vec3 u_xlat11;
vec4 u_xlat12;
vec4 u_xlat13;
vec3 u_xlat14;
vec3 u_xlat16;
float u_xlat21;
float u_xlat22;
bool u_xlatb22;
vec3 u_xlat24;
float u_xlat36;
vec2 u_xlat38;
int u_xlati38;
uint u_xlatu38;
bool u_xlatb38;
vec2 u_xlat42;
bvec2 u_xlatb42;
float u_xlat45;
bool u_xlatb45;
float u_xlat47;
uint u_xlatu47;
bool u_xlatb47;
float u_xlat48;
uint u_xlatu48;
float u_xlat49;
uint u_xlatu49;
bool u_xlatb49;
float u_xlat50;
float u_xlat51;
int u_xlati51;
float u_xlat52;
float u_xlat53;
int u_xlati53;
int u_xlati55;
vec4 hlslcc_FragCoord = vec4(gl_FragCoord.xyz, 1.0/gl_FragCoord.w);
    u_xlat0 = texture(sampler2D(_BaseMap, sampler_BaseMap), vs_TEXCOORD0.xy, _GlobalMipBias.x);
    u_xlat1 = u_xlat0.wxyz * _BaseColor.wxyz;
    u_xlat2.xyz = texture(sampler2D(_EmissionMap, sampler_EmissionMap), vs_TEXCOORD0.xy, _GlobalMipBias.x).xyz;
    u_xlat3.xy = hlslcc_FragCoord.xy * vec2(_DitheringTextureInvSize);
    u_xlat45 = texture(sampler2D(_DitheringTexture, sampler_DitheringTexture), u_xlat3.xy, _GlobalMipBias.x).w;
    u_xlatb47 = unity_LODFade.x>=0.0;
    u_xlat45 = (u_xlatb47) ? abs(u_xlat45) : -abs(u_xlat45);
    u_xlat45 = (-u_xlat45) + unity_LODFade.x;
    u_xlatb45 = u_xlat45<0.0;
    if(((int(u_xlatb45) * int(0xffffffffu)))!=0){discard;}
    u_xlatb45 = unity_OrthoParams.w==0.0;
    u_xlat3.xyz = (-vs_TEXCOORD1.xyz) + _WorldSpaceCameraPos.xyz;
    u_xlat47 = dot(u_xlat3.xyz, u_xlat3.xyz);
    u_xlat47 = inversesqrt(u_xlat47);
    u_xlat3.xyz = vec3(u_xlat47) * u_xlat3.xyz;
    u_xlat4.x = unity_MatrixV[0].z;
    u_xlat4.y = unity_MatrixV[1].z;
    u_xlat4.z = unity_MatrixV[2].z;
    u_xlat3.xyz = (bool(u_xlatb45)) ? u_xlat3.xyz : u_xlat4.xyz;
    u_xlat45 = dot(vs_TEXCOORD2.xyz, vs_TEXCOORD2.xyz);
    u_xlat45 = inversesqrt(u_xlat45);
    u_xlat4.xyz = vec3(u_xlat45) * vs_TEXCOORD2.xyz;
    u_xlat45 = vs_TEXCOORD1.y * unity_MatrixV[1].z;
    u_xlat45 = unity_MatrixV[0].z * vs_TEXCOORD1.x + u_xlat45;
    u_xlat45 = unity_MatrixV[2].z * vs_TEXCOORD1.z + u_xlat45;
    u_xlat45 = u_xlat45 + unity_MatrixV[3].z;
    u_xlat45 = (-u_xlat45) + (-_ProjectionParams.y);
    u_xlat45 = max(u_xlat45, 0.0);
    u_xlat45 = u_xlat45 * unity_FogParams.x;
    u_xlat4.w = 1.0;
    u_xlat5.x = dot(unity_SHAr, u_xlat4);
    u_xlat5.y = dot(unity_SHAg, u_xlat4);
    u_xlat5.z = dot(unity_SHAb, u_xlat4);
    u_xlat6 = u_xlat4.yzzx * u_xlat4.xyzz;
    u_xlat7.x = dot(unity_SHBr, u_xlat6);
    u_xlat7.y = dot(unity_SHBg, u_xlat6);
    u_xlat7.z = dot(unity_SHBb, u_xlat6);
    u_xlat47 = u_xlat4.y * u_xlat4.y;
    u_xlat47 = u_xlat4.x * u_xlat4.x + (-u_xlat47);
    u_xlat6.xyz = unity_SHC.xyz * vec3(u_xlat47) + u_xlat7.xyz;
    u_xlat5.xyz = u_xlat5.xyz + u_xlat6.xyz;
    u_xlat5.xyz = max(u_xlat5.xyz, vec3(0.0, 0.0, 0.0));
    u_xlat6.xy = vec2(1.0) / vec2(_ScaledScreenParams.xy);
    u_xlat6.xy = u_xlat6.xy * hlslcc_FragCoord.xy;
    u_xlat47 = u_xlat6.y * _ScaleBiasRt.x + _ScaleBiasRt.y;
    u_xlat6.z = (-u_xlat47) + 1.0;
    u_xlat47 = (-_Metallic) * 0.959999979 + 0.959999979;
    u_xlat48 = (-u_xlat47) + _Smoothness;
    u_xlat16.xyz = u_xlat1.yzw * vec3(u_xlat47);
    u_xlat0.xyz = u_xlat0.xyz * _BaseColor.xyz + vec3(-0.0399999991, -0.0399999991, -0.0399999991);
    u_xlat0.xyz = vec3(vec3(_Metallic, _Metallic, _Metallic)) * u_xlat0.xyz + vec3(0.0399999991, 0.0399999991, 0.0399999991);
    u_xlat47 = (-_Smoothness) + 1.0;
    u_xlat49 = u_xlat47 * u_xlat47;
    u_xlat49 = max(u_xlat49, 0.0078125);
    u_xlat50 = u_xlat49 * u_xlat49;
    u_xlat48 = u_xlat48 + 1.0;
    u_xlat48 = clamp(u_xlat48, 0.0, 1.0);
    u_xlat21 = u_xlat49 * 4.0 + 2.0;
    u_xlat6.x = texture(sampler2D(_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture), u_xlat6.xz, _GlobalMipBias.x).x;
    u_xlat36 = u_xlat6.x + -1.0;
    u_xlat36 = _AmbientOcclusionParam.w * u_xlat36 + 1.0;
    u_xlat6.x = min(u_xlat6.x, 1.0);
    vec3 txVec0 = vec3(vs_TEXCOORD6.xy,vs_TEXCOORD6.z);
    u_xlat51 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec0, 0.0);
    u_xlat7.x = (-_MainLightShadowParams.x) + 1.0;
    u_xlat51 = u_xlat51 * _MainLightShadowParams.x + u_xlat7.x;
    u_xlatb7 = 0.0>=vs_TEXCOORD6.z;
    u_xlatb22 = vs_TEXCOORD6.z>=1.0;
    u_xlatb7 = u_xlatb22 || u_xlatb7;
    u_xlat51 = (u_xlatb7) ? 1.0 : u_xlat51;
    u_xlat7.xyz = vs_TEXCOORD1.xyz + (-_WorldSpaceCameraPos.xyz);
    u_xlat7.x = dot(u_xlat7.xyz, u_xlat7.xyz);
    u_xlat7.x = u_xlat7.x * _MainLightShadowParams.z + _MainLightShadowParams.w;
    u_xlat7.x = clamp(u_xlat7.x, 0.0, 1.0);
    u_xlat22 = (-u_xlat51) + 1.0;
    u_xlat51 = u_xlat7.x * u_xlat22 + u_xlat51;
    u_xlatb7 = _MainLightCookieTextureFormat!=-1.0;
    if(u_xlatb7){
        u_xlat7.xy = vs_TEXCOORD1.yy * _MainLightWorldToLight[1].xy;
        u_xlat7.xy = _MainLightWorldToLight[0].xy * vs_TEXCOORD1.xx + u_xlat7.xy;
        u_xlat7.xy = _MainLightWorldToLight[2].xy * vs_TEXCOORD1.zz + u_xlat7.xy;
        u_xlat7.xy = u_xlat7.xy + _MainLightWorldToLight[3].xy;
        u_xlat7.xy = u_xlat7.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
        u_xlat7 = texture(sampler2D(_MainLightCookieTexture, sampler_MainLightCookieTexture), u_xlat7.xy, _GlobalMipBias.x);
        u_xlatb8.xy = equal(vec4(vec4(_MainLightCookieTextureFormat, _MainLightCookieTextureFormat, _MainLightCookieTextureFormat, _MainLightCookieTextureFormat)), vec4(0.0, 1.0, 0.0, 0.0)).xy;
        u_xlat52 = (u_xlatb8.y) ? u_xlat7.w : u_xlat7.x;
        u_xlat7.xyz = (u_xlatb8.x) ? u_xlat7.xyz : vec3(u_xlat52);
    } else {
        u_xlat7.x = float(1.0);
        u_xlat7.y = float(1.0);
        u_xlat7.z = float(1.0);
    }
    u_xlat7.xyz = u_xlat7.xyz * _MainLightColor.xyz;
    u_xlat7.xyz = vec3(u_xlat36) * u_xlat7.xyz;
    u_xlat52 = dot((-u_xlat3.xyz), u_xlat4.xyz);
    u_xlat52 = u_xlat52 + u_xlat52;
    u_xlat8.xyz = u_xlat4.xyz * (-vec3(u_xlat52)) + (-u_xlat3.xyz);
    u_xlat52 = dot(u_xlat4.xyz, u_xlat3.xyz);
    u_xlat52 = clamp(u_xlat52, 0.0, 1.0);
    u_xlat52 = (-u_xlat52) + 1.0;
    u_xlat52 = u_xlat52 * u_xlat52;
    u_xlat52 = u_xlat52 * u_xlat52;
    u_xlat53 = (-u_xlat47) * 0.699999988 + 1.70000005;
    u_xlat47 = u_xlat47 * u_xlat53;
    u_xlat47 = u_xlat47 * 6.0;
    u_xlat8 = textureLod(samplerCube(unity_SpecCube0, samplerunity_SpecCube0), u_xlat8.xyz, u_xlat47);
    u_xlat47 = u_xlat8.w + -1.0;
    u_xlat47 = unity_SpecCube0_HDR.w * u_xlat47 + 1.0;
    u_xlat47 = max(u_xlat47, 0.0);
    u_xlat47 = log2(u_xlat47);
    u_xlat47 = u_xlat47 * unity_SpecCube0_HDR.y;
    u_xlat47 = exp2(u_xlat47);
    u_xlat47 = u_xlat47 * unity_SpecCube0_HDR.x;
    u_xlat8.xyz = u_xlat8.xyz * vec3(u_xlat47);
    u_xlat9.xy = vec2(u_xlat49) * vec2(u_xlat49) + vec2(-1.0, 1.0);
    u_xlat47 = float(1.0) / u_xlat9.y;
    u_xlat24.xyz = (-u_xlat0.xyz) + vec3(u_xlat48);
    u_xlat24.xyz = vec3(u_xlat52) * u_xlat24.xyz + u_xlat0.xyz;
    u_xlat24.xyz = vec3(u_xlat47) * u_xlat24.xyz;
    u_xlat8.xyz = u_xlat8.xyz * u_xlat24.xyz;
    u_xlat5.xyz = u_xlat5.xyz * u_xlat16.xyz + u_xlat8.xyz;
    u_xlat47 = u_xlat51 * unity_LightData.z;
    u_xlat48 = dot(u_xlat4.xyz, _MainLightPosition.xyz);
    u_xlat48 = clamp(u_xlat48, 0.0, 1.0);
    u_xlat47 = u_xlat47 * u_xlat48;
    u_xlat7.xyz = vec3(u_xlat47) * u_xlat7.xyz;
    u_xlat8.xyz = u_xlat3.xyz + _MainLightPosition.xyz;
    u_xlat47 = dot(u_xlat8.xyz, u_xlat8.xyz);
    u_xlat47 = max(u_xlat47, 1.17549435e-37);
    u_xlat47 = inversesqrt(u_xlat47);
    u_xlat8.xyz = vec3(u_xlat47) * u_xlat8.xyz;
    u_xlat47 = dot(u_xlat4.xyz, u_xlat8.xyz);
    u_xlat47 = clamp(u_xlat47, 0.0, 1.0);
    u_xlat48 = dot(_MainLightPosition.xyz, u_xlat8.xyz);
    u_xlat48 = clamp(u_xlat48, 0.0, 1.0);
    u_xlat47 = u_xlat47 * u_xlat47;
    u_xlat47 = u_xlat47 * u_xlat9.x + 1.00001001;
    u_xlat48 = u_xlat48 * u_xlat48;
    u_xlat47 = u_xlat47 * u_xlat47;
    u_xlat48 = max(u_xlat48, 0.100000001);
    u_xlat47 = u_xlat47 * u_xlat48;
    u_xlat47 = u_xlat21 * u_xlat47;
    u_xlat47 = u_xlat50 / u_xlat47;
    u_xlat8.xyz = u_xlat0.xyz * vec3(u_xlat47) + u_xlat16.xyz;
    u_xlat7.xyz = u_xlat7.xyz * u_xlat8.xyz;
    u_xlat47 = min(_AdditionalLightsCount.x, unity_LightData.y);
    u_xlatu47 =  uint(int(u_xlat47));
    u_xlatb8.xy = equal(vec4(vec4(_AdditionalLightsCookieAtlasTextureFormat, _AdditionalLightsCookieAtlasTextureFormat, _AdditionalLightsCookieAtlasTextureFormat, _AdditionalLightsCookieAtlasTextureFormat)), vec4(0.0, 1.0, 0.0, 0.0)).xy;
    u_xlat24.x = float(0.0);
    u_xlat24.y = float(0.0);
    u_xlat24.z = float(0.0);
    for(uint u_xlatu_loop_1 = 0u ; u_xlatu_loop_1<u_xlatu47 ; u_xlatu_loop_1++)
    {
        u_xlatu49 = u_xlatu_loop_1 >> (2u & uint(0x1F));
        u_xlati51 = int(u_xlatu_loop_1 & 3u);
        u_xlat49 = dot(unity_LightIndices[int(u_xlatu49)], uintBitsToFloat(ImmCB_0[u_xlati51]));
        u_xlatu49 =  uint(int(u_xlat49));
        u_xlat10.xyz = (-vs_TEXCOORD1.xyz) * _AdditionalLightsPosition[int(u_xlatu49)].www + _AdditionalLightsPosition[int(u_xlatu49)].xyz;
        u_xlat51 = dot(u_xlat10.xyz, u_xlat10.xyz);
        u_xlat51 = max(u_xlat51, 6.10351562e-05);
        u_xlat52 = inversesqrt(u_xlat51);
        u_xlat11.xyz = vec3(u_xlat52) * u_xlat10.xyz;
        u_xlat38.x = float(1.0) / float(u_xlat51);
        u_xlat51 = u_xlat51 * _AdditionalLightsAttenuation[int(u_xlatu49)].x;
        u_xlat51 = (-u_xlat51) * u_xlat51 + 1.0;
        u_xlat51 = max(u_xlat51, 0.0);
        u_xlat51 = u_xlat51 * u_xlat51;
        u_xlat51 = u_xlat51 * u_xlat38.x;
        u_xlat38.x = dot(_AdditionalLightsSpotDir[int(u_xlatu49)].xyz, u_xlat11.xyz);
        u_xlat38.x = u_xlat38.x * _AdditionalLightsAttenuation[int(u_xlatu49)].z + _AdditionalLightsAttenuation[int(u_xlatu49)].w;
        u_xlat38.x = clamp(u_xlat38.x, 0.0, 1.0);
        u_xlat38.x = u_xlat38.x * u_xlat38.x;
        u_xlat51 = u_xlat51 * u_xlat38.x;
        u_xlatu38 = u_xlatu49 >> (5u & uint(0x1F));
        u_xlati53 = 1 << (int(u_xlatu49) & int(0x1F));
        u_xlati38 = int(uint(u_xlati53) & floatBitsToUint(_AdditionalLightsCookieEnableBits[int(u_xlatu38)]));
        if(u_xlati38 != 0) {
            u_xlati38 = int(_AdditionalLightsLightTypes[int(u_xlatu49)]);
            u_xlati53 = (u_xlati38 != 0) ? 0 : 1;
            u_xlati55 = int(u_xlatu49) << (2 & int(0x1F));
            if(u_xlati53 != 0) {
                u_xlat12.xyz = vs_TEXCOORD1.yyy * _AdditionalLightsWorldToLights[(u_xlati55 + 1) / 4][(u_xlati55 + 1) % 4].xyw;
                u_xlat12.xyz = _AdditionalLightsWorldToLights[u_xlati55 / 4][u_xlati55 % 4].xyw * vs_TEXCOORD1.xxx + u_xlat12.xyz;
                u_xlat12.xyz = _AdditionalLightsWorldToLights[(u_xlati55 + 2) / 4][(u_xlati55 + 2) % 4].xyw * vs_TEXCOORD1.zzz + u_xlat12.xyz;
                u_xlat12.xyz = u_xlat12.xyz + _AdditionalLightsWorldToLights[(u_xlati55 + 3) / 4][(u_xlati55 + 3) % 4].xyw;
                u_xlat12.xy = u_xlat12.xy / u_xlat12.zz;
                u_xlat12.xy = u_xlat12.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
                u_xlat12.xy = clamp(u_xlat12.xy, 0.0, 1.0);
                u_xlat12.xy = _AdditionalLightsCookieAtlasUVRects[int(u_xlatu49)].xy * u_xlat12.xy + _AdditionalLightsCookieAtlasUVRects[int(u_xlatu49)].zw;
            } else {
                u_xlatb38 = u_xlati38==1;
                u_xlati38 = u_xlatb38 ? 1 : int(0);
                if(u_xlati38 != 0) {
                    u_xlat38.xy = vs_TEXCOORD1.yy * _AdditionalLightsWorldToLights[(u_xlati55 + 1) / 4][(u_xlati55 + 1) % 4].xy;
                    u_xlat38.xy = _AdditionalLightsWorldToLights[u_xlati55 / 4][u_xlati55 % 4].xy * vs_TEXCOORD1.xx + u_xlat38.xy;
                    u_xlat38.xy = _AdditionalLightsWorldToLights[(u_xlati55 + 2) / 4][(u_xlati55 + 2) % 4].xy * vs_TEXCOORD1.zz + u_xlat38.xy;
                    u_xlat38.xy = u_xlat38.xy + _AdditionalLightsWorldToLights[(u_xlati55 + 3) / 4][(u_xlati55 + 3) % 4].xy;
                    u_xlat38.xy = u_xlat38.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
                    u_xlat38.xy = fract(u_xlat38.xy);
                    u_xlat12.xy = _AdditionalLightsCookieAtlasUVRects[int(u_xlatu49)].xy * u_xlat38.xy + _AdditionalLightsCookieAtlasUVRects[int(u_xlatu49)].zw;
                } else {
                    u_xlat13 = vs_TEXCOORD1.yyyy * _AdditionalLightsWorldToLights[(u_xlati55 + 1) / 4][(u_xlati55 + 1) % 4];
                    u_xlat13 = _AdditionalLightsWorldToLights[u_xlati55 / 4][u_xlati55 % 4] * vs_TEXCOORD1.xxxx + u_xlat13;
                    u_xlat13 = _AdditionalLightsWorldToLights[(u_xlati55 + 2) / 4][(u_xlati55 + 2) % 4] * vs_TEXCOORD1.zzzz + u_xlat13;
                    u_xlat13 = u_xlat13 + _AdditionalLightsWorldToLights[(u_xlati55 + 3) / 4][(u_xlati55 + 3) % 4];
                    u_xlat13.xyz = u_xlat13.xyz / u_xlat13.www;
                    u_xlat38.x = dot(u_xlat13.xyz, u_xlat13.xyz);
                    u_xlat38.x = inversesqrt(u_xlat38.x);
                    u_xlat13.xyz = u_xlat38.xxx * u_xlat13.xyz;
                    u_xlat38.x = dot(abs(u_xlat13.xyz), vec3(1.0, 1.0, 1.0));
                    u_xlat38.x = max(u_xlat38.x, 9.99999997e-07);
                    u_xlat38.x = float(1.0) / float(u_xlat38.x);
                    u_xlat14.xyz = u_xlat38.xxx * u_xlat13.zxy;
                    u_xlat14.x = (-u_xlat14.x);
                    u_xlat14.x = clamp(u_xlat14.x, 0.0, 1.0);
                    u_xlatb42.xy = greaterThanEqual(u_xlat14.yzyz, vec4(0.0, 0.0, 0.0, 0.0)).xy;
                    u_xlat42.x = (u_xlatb42.x) ? u_xlat14.x : (-u_xlat14.x);
                    u_xlat42.y = (u_xlatb42.y) ? u_xlat14.x : (-u_xlat14.x);
                    u_xlat38.xy = u_xlat13.xy * u_xlat38.xx + u_xlat42.xy;
                    u_xlat38.xy = u_xlat38.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
                    u_xlat38.xy = clamp(u_xlat38.xy, 0.0, 1.0);
                    u_xlat12.xy = _AdditionalLightsCookieAtlasUVRects[int(u_xlatu49)].xy * u_xlat38.xy + _AdditionalLightsCookieAtlasUVRects[int(u_xlatu49)].zw;
                }
            }
            u_xlat12 = texture(sampler2D(_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture), u_xlat12.xy, _GlobalMipBias.x);
            u_xlat38.x = (u_xlatb8.y) ? u_xlat12.w : u_xlat12.x;
            u_xlat12.xyz = (u_xlatb8.x) ? u_xlat12.xyz : u_xlat38.xxx;
        } else {
            u_xlat12.x = float(1.0);
            u_xlat12.y = float(1.0);
            u_xlat12.z = float(1.0);
        }
        u_xlat12.xyz = u_xlat12.xyz * _AdditionalLightsColor[int(u_xlatu49)].xyz;
        u_xlat12.xyz = vec3(u_xlat36) * u_xlat12.xyz;
        u_xlat49 = dot(u_xlat4.xyz, u_xlat11.xyz);
        u_xlat49 = clamp(u_xlat49, 0.0, 1.0);
        u_xlat49 = u_xlat49 * u_xlat51;
        u_xlat12.xyz = vec3(u_xlat49) * u_xlat12.xyz;
        u_xlat10.xyz = u_xlat10.xyz * vec3(u_xlat52) + u_xlat3.xyz;
        u_xlat49 = dot(u_xlat10.xyz, u_xlat10.xyz);
        u_xlat49 = max(u_xlat49, 1.17549435e-37);
        u_xlat49 = inversesqrt(u_xlat49);
        u_xlat10.xyz = vec3(u_xlat49) * u_xlat10.xyz;
        u_xlat49 = dot(u_xlat4.xyz, u_xlat10.xyz);
        u_xlat49 = clamp(u_xlat49, 0.0, 1.0);
        u_xlat51 = dot(u_xlat11.xyz, u_xlat10.xyz);
        u_xlat51 = clamp(u_xlat51, 0.0, 1.0);
        u_xlat49 = u_xlat49 * u_xlat49;
        u_xlat49 = u_xlat49 * u_xlat9.x + 1.00001001;
        u_xlat51 = u_xlat51 * u_xlat51;
        u_xlat49 = u_xlat49 * u_xlat49;
        u_xlat51 = max(u_xlat51, 0.100000001);
        u_xlat49 = u_xlat49 * u_xlat51;
        u_xlat49 = u_xlat21 * u_xlat49;
        u_xlat49 = u_xlat50 / u_xlat49;
        u_xlat10.xyz = u_xlat0.xyz * vec3(u_xlat49) + u_xlat16.xyz;
        u_xlat24.xyz = u_xlat10.xyz * u_xlat12.xyz + u_xlat24.xyz;
    }
    u_xlat0.xyz = u_xlat5.xyz * u_xlat6.xxx + u_xlat7.xyz;
    u_xlat0.xyz = u_xlat24.xyz + u_xlat0.xyz;
    u_xlat0.xyz = u_xlat2.xyz * _EmissionColor.xyz + u_xlat0.xyz;
    u_xlat45 = u_xlat45 * (-u_xlat45);
    u_xlat45 = exp2(u_xlat45);
    u_xlat0.xyz = u_xlat0.xyz + (-unity_FogColor.xyz);
    SV_Target0.xyz = vec3(u_xlat45) * u_xlat0.xyz + unity_FogColor.xyz;
    u_xlatb0 = _Surface==1.0;
    SV_Target0.w = (u_xlatb0) ? u_xlat1.x : 1.0;
    return;
}

