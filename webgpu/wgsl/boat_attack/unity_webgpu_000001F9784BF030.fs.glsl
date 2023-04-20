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
	vec2 _GlobalMipBias;
	vec4 _MainLightPosition;
	vec4 _MainLightColor;
	vec4 _AdditionalLightsCount;
	vec3 _WorldSpaceCameraPos;
	vec4 unity_OrthoParams;
	mat4x4 unity_MatrixV;
};
layout(set = 1, binding = 1, std140) uniform AdditionalLights {
	vec4 _AdditionalLightsPosition[32];
	vec4 _AdditionalLightsColor[32];
	vec4 _AdditionalLightsAttenuation[32];
	vec4 _AdditionalLightsSpotDir[32];
	vec4 _AdditionalLightsOcclusionProbes[32];
	float _AdditionalLightsLayerMasks[32];
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
layout(set = 1, binding = 5, std140) uniform LightCookies {
	mat4x4 _MainLightWorldToLight;
	float _AdditionalLightsCookieEnableBits;
	float _MainLightCookieTextureFormat;
	float _AdditionalLightsCookieAtlasTextureFormat;
	mat4x4 _AdditionalLightsWorldToLights[32];
	vec4 _AdditionalLightsCookieAtlasUVRects[32];
	float _AdditionalLightsLightTypes[32];
};
layout(set = 0, binding = 0) uniform mediump textureCube unity_SpecCube0;
layout(set = 0, binding = 1) uniform mediump texture2D unity_Lightmap;
layout(set = 0, binding = 2) uniform mediump texture2D unity_LightmapInd;
layout(set = 0, binding = 3) uniform mediump texture2D _BaseMap;
layout(set = 0, binding = 4) uniform mediump texture2D _BumpMap;
layout(set = 0, binding = 5) uniform mediump texture2D _OcclusionMap;
layout(set = 0, binding = 6) uniform mediump texture2D _MetallicGlossMap;
layout(set = 0, binding = 7) uniform mediump texture2D _MainLightShadowmapTexture;
layout(set = 0, binding = 8) uniform mediump texture2D _AdditionalLightsShadowmapTexture;
layout(set = 0, binding = 9) uniform mediump texture2D _MainLightCookieTexture;
layout(set = 0, binding = 10) uniform mediump texture2D _AdditionalLightsCookieAtlasTexture;
layout(location = 0) in highp  vec2 vs_TEXCOORD0;
layout(location = 1) in highp  vec3 vs_TEXCOORD1;
layout(location = 2) in highp  vec3 vs_TEXCOORD2;
layout(location = 3) in highp  vec4 vs_TEXCOORD3;
layout(location = 4) in highp  vec2 vs_TEXCOORD8;
layout(location = 0) out highp vec4 SV_Target0;
vec4 u_xlat0;
bool u_xlatb0;
vec2 u_xlat1;
vec4 u_xlat2;
vec3 u_xlat3;
vec4 u_xlat4;
bvec4 u_xlatb4;
vec3 u_xlat5;
vec4 u_xlat6;
vec4 u_xlat7;
bvec2 u_xlatb7;
vec4 u_xlat8;
vec2 u_xlat9;
vec3 u_xlat10;
vec4 u_xlat11;
bvec4 u_xlatb11;
vec4 u_xlat12;
vec3 u_xlat13;
float u_xlat15;
vec3 u_xlat16;
vec3 u_xlat17;
bool u_xlatb17;
vec3 u_xlat18;
int u_xlati18;
uint u_xlatu18;
bool u_xlatb18;
vec3 u_xlat23;
vec2 u_xlat29;
uint u_xlatu29;
float u_xlat31;
vec2 u_xlat32;
bvec2 u_xlatb32;
float u_xlat35;
int u_xlati35;
vec2 u_xlat39;
bvec2 u_xlatb39;
float u_xlat42;
int u_xlati42;
uint u_xlatu42;
float u_xlat43;
float u_xlat46;
float u_xlat47;
int u_xlati47;
float u_xlat48;
float u_xlat49;
int u_xlati49;
bool u_xlatb49;
float u_xlat50;
int u_xlati50;
bool u_xlatb50;
int u_xlati52;
layout(set = 0, binding = 11) uniform mediump  sampler samplerunity_SpecCube0;
layout(set = 0, binding = 12) uniform mediump  sampler samplerunity_Lightmap;
layout(set = 0, binding = 13) uniform mediump  sampler sampler_BaseMap;
layout(set = 0, binding = 14) uniform mediump  sampler sampler_BumpMap;
layout(set = 0, binding = 15) uniform mediump  sampler sampler_OcclusionMap;
layout(set = 0, binding = 16) uniform mediump  sampler sampler_MetallicGlossMap;
layout(set = 0, binding = 17) uniform mediump  sampler sampler_LinearClamp;
layout(set = 0, binding = 18) uniform mediump  samplerShadow sampler_LinearClampCompare;
layout(set = 0, binding = 19) uniform mediump  sampler sampler_MainLightCookieTexture;
void main()
{
    u_xlat0 = texture(sampler2D(_BaseMap, sampler_BaseMap), vs_TEXCOORD0.xy, _GlobalMipBias.x);
    u_xlat1.xy = texture(sampler2D(_MetallicGlossMap, sampler_MetallicGlossMap), vs_TEXCOORD0.xy, _GlobalMipBias.x).xw;
    u_xlat2 = u_xlat0.wxyz * _BaseColor.wxyz;
    u_xlat3.xyz = texture(sampler2D(_BumpMap, sampler_BumpMap), vs_TEXCOORD0.xy, _GlobalMipBias.x).xyw;
    u_xlat3.x = u_xlat3.x * u_xlat3.z;
    u_xlat29.xy = u_xlat3.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat42 = dot(u_xlat29.xy, u_xlat29.xy);
    u_xlat42 = min(u_xlat42, 1.0);
    u_xlat42 = (-u_xlat42) + 1.0;
    u_xlat42 = sqrt(u_xlat42);
    u_xlat42 = max(u_xlat42, 1.00000002e-16);
    u_xlat29.xy = u_xlat29.xy * vec2(vec2(_BumpScale, _BumpScale));
    u_xlat3.x = texture(sampler2D(_OcclusionMap, sampler_OcclusionMap), vs_TEXCOORD0.xy, _GlobalMipBias.x).y;
    u_xlat17.x = (-_OcclusionStrength) + 1.0;
    u_xlat3.x = u_xlat3.x * _OcclusionStrength + u_xlat17.x;
    u_xlatb17 = unity_OrthoParams.w==0.0;
    u_xlat4.xyz = (-vs_TEXCOORD1.xyz) + _WorldSpaceCameraPos.xyz;
    u_xlat31 = dot(u_xlat4.xyz, u_xlat4.xyz);
    u_xlat31 = inversesqrt(u_xlat31);
    u_xlat4.xyz = vec3(u_xlat31) * u_xlat4.xyz;
    u_xlat5.x = (u_xlatb17) ? u_xlat4.x : unity_MatrixV[0].z;
    u_xlat5.y = (u_xlatb17) ? u_xlat4.y : unity_MatrixV[1].z;
    u_xlat5.z = (u_xlatb17) ? u_xlat4.z : unity_MatrixV[2].z;
    u_xlat17.xyz = vs_TEXCOORD2.zxy * vs_TEXCOORD3.yzx;
    u_xlat17.xyz = vs_TEXCOORD2.yzx * vs_TEXCOORD3.zxy + (-u_xlat17.xyz);
    u_xlat17.xyz = u_xlat17.xyz * vs_TEXCOORD3.www;
    u_xlat17.xyz = u_xlat29.yyy * u_xlat17.xyz;
    u_xlat17.xyz = u_xlat29.xxx * vs_TEXCOORD3.xyz + u_xlat17.xyz;
    u_xlat17.xyz = vec3(u_xlat42) * vs_TEXCOORD2.xyz + u_xlat17.xyz;
    u_xlat42 = dot(u_xlat17.xyz, u_xlat17.xyz);
    u_xlat42 = inversesqrt(u_xlat42);
    u_xlat17.xyz = vec3(u_xlat42) * u_xlat17.xyz;
    u_xlat4.xyz = vs_TEXCOORD1.xyz + (-_CascadeShadowSplitSpheres0.xyz);
    u_xlat6.xyz = vs_TEXCOORD1.xyz + (-_CascadeShadowSplitSpheres1.xyz);
    u_xlat7.xyz = vs_TEXCOORD1.xyz + (-_CascadeShadowSplitSpheres2.xyz);
    u_xlat8.xyz = vs_TEXCOORD1.xyz + (-_CascadeShadowSplitSpheres3.xyz);
    u_xlat4.x = dot(u_xlat4.xyz, u_xlat4.xyz);
    u_xlat4.y = dot(u_xlat6.xyz, u_xlat6.xyz);
    u_xlat4.z = dot(u_xlat7.xyz, u_xlat7.xyz);
    u_xlat4.w = dot(u_xlat8.xyz, u_xlat8.xyz);
    u_xlatb4 = lessThan(u_xlat4, _CascadeShadowSplitSphereRadii);
    u_xlat6.x = u_xlatb4.x ? float(1.0) : 0.0;
    u_xlat6.y = u_xlatb4.y ? float(1.0) : 0.0;
    u_xlat6.z = u_xlatb4.z ? float(1.0) : 0.0;
    u_xlat6.w = u_xlatb4.w ? float(1.0) : 0.0;
;
    u_xlat4.x = (u_xlatb4.x) ? float(-1.0) : float(-0.0);
    u_xlat4.y = (u_xlatb4.y) ? float(-1.0) : float(-0.0);
    u_xlat4.z = (u_xlatb4.z) ? float(-1.0) : float(-0.0);
    u_xlat4.xyz = u_xlat4.xyz + u_xlat6.yzw;
    u_xlat6.yzw = max(u_xlat4.xyz, vec3(0.0, 0.0, 0.0));
    u_xlat42 = dot(u_xlat6, vec4(4.0, 3.0, 2.0, 1.0));
    u_xlat42 = (-u_xlat42) + 4.0;
    u_xlatu42 = uint(u_xlat42);
    u_xlati42 = int(u_xlatu42) << (2 & int(0x1F));
    u_xlat4.xyz = vs_TEXCOORD1.yyy * _MainLightWorldToShadow[(u_xlati42 + 1) / 4][(u_xlati42 + 1) % 4].xyz;
    u_xlat4.xyz = _MainLightWorldToShadow[u_xlati42 / 4][u_xlati42 % 4].xyz * vs_TEXCOORD1.xxx + u_xlat4.xyz;
    u_xlat4.xyz = _MainLightWorldToShadow[(u_xlati42 + 2) / 4][(u_xlati42 + 2) % 4].xyz * vs_TEXCOORD1.zzz + u_xlat4.xyz;
    u_xlat4.xyz = u_xlat4.xyz + _MainLightWorldToShadow[(u_xlati42 + 3) / 4][(u_xlati42 + 3) % 4].xyz;
    u_xlat6 = texture(sampler2D(unity_LightmapInd, samplerunity_Lightmap), vs_TEXCOORD8.xy, _GlobalMipBias.x);
    u_xlat7.xyz = texture(sampler2D(unity_Lightmap, samplerunity_Lightmap), vs_TEXCOORD8.xy, _GlobalMipBias.x).xyz;
    u_xlat6.xyz = u_xlat6.xyz + vec3(-0.5, -0.5, -0.5);
    u_xlat42 = dot(u_xlat17.xyz, u_xlat6.xyz);
    u_xlat42 = u_xlat42 + 0.5;
    u_xlat6.xyz = vec3(u_xlat42) * u_xlat7.xyz;
    u_xlat42 = max(u_xlat6.w, 9.99999975e-05);
    u_xlat6.xyz = u_xlat6.xyz / vec3(u_xlat42);
    u_xlat42 = (-u_xlat1.x) * 0.959999979 + 0.959999979;
    u_xlat29.x = u_xlat1.y * _Smoothness + (-u_xlat42);
    u_xlat16.xyz = vec3(u_xlat42) * u_xlat2.yzw;
    u_xlat0.xyz = u_xlat0.xyz * _BaseColor.xyz + vec3(-0.0399999991, -0.0399999991, -0.0399999991);
    u_xlat0.xyz = u_xlat1.xxx * u_xlat0.xyz + vec3(0.0399999991, 0.0399999991, 0.0399999991);
    u_xlat42 = (-u_xlat1.y) * _Smoothness + 1.0;
    u_xlat1.x = u_xlat42 * u_xlat42;
    u_xlat1.x = max(u_xlat1.x, 0.0078125);
    u_xlat15 = u_xlat1.x * u_xlat1.x;
    u_xlat29.x = u_xlat29.x + 1.0;
    u_xlat29.x = clamp(u_xlat29.x, 0.0, 1.0);
    u_xlat43 = u_xlat1.x * 4.0 + 2.0;
    u_xlat3.x = min(u_xlat3.x, 1.0);
    vec3 txVec0 = vec3(u_xlat4.xy,u_xlat4.z);
    u_xlat4.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_LinearClampCompare), txVec0, 0.0);
    u_xlat18.x = (-_MainLightShadowParams.x) + 1.0;
    u_xlat4.x = u_xlat4.x * _MainLightShadowParams.x + u_xlat18.x;
    u_xlatb18 = 0.0>=u_xlat4.z;
    u_xlatb32.x = u_xlat4.z>=1.0;
    u_xlatb18 = u_xlatb32.x || u_xlatb18;
    u_xlat4.x = (u_xlatb18) ? 1.0 : u_xlat4.x;
    u_xlat18.xyz = vs_TEXCOORD1.xyz + (-_WorldSpaceCameraPos.xyz);
    u_xlat18.x = dot(u_xlat18.xyz, u_xlat18.xyz);
    u_xlat32.x = u_xlat18.x * _MainLightShadowParams.z + _MainLightShadowParams.w;
    u_xlat32.x = clamp(u_xlat32.x, 0.0, 1.0);
    u_xlat46 = (-u_xlat4.x) + 1.0;
    u_xlat4.x = u_xlat32.x * u_xlat46 + u_xlat4.x;
    u_xlatb32.x = _MainLightCookieTextureFormat!=-1.0;
    if(u_xlatb32.x){
        u_xlat32.xy = vs_TEXCOORD1.yy * _MainLightWorldToLight[1].xy;
        u_xlat32.xy = _MainLightWorldToLight[0].xy * vs_TEXCOORD1.xx + u_xlat32.xy;
        u_xlat32.xy = _MainLightWorldToLight[2].xy * vs_TEXCOORD1.zz + u_xlat32.xy;
        u_xlat32.xy = u_xlat32.xy + _MainLightWorldToLight[3].xy;
        u_xlat32.xy = u_xlat32.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
        u_xlat7 = texture(sampler2D(_MainLightCookieTexture, sampler_MainLightCookieTexture), u_xlat32.xy, _GlobalMipBias.x);
        u_xlatb32.xy = equal(vec4(vec4(_MainLightCookieTextureFormat, _MainLightCookieTextureFormat, _MainLightCookieTextureFormat, _MainLightCookieTextureFormat)), vec4(0.0, 1.0, 0.0, 1.0)).xy;
        u_xlat46 = (u_xlatb32.y) ? u_xlat7.w : u_xlat7.x;
        u_xlat7.xyz = (u_xlatb32.x) ? u_xlat7.xyz : vec3(u_xlat46);
    } else {
        u_xlat7.x = float(1.0);
        u_xlat7.y = float(1.0);
        u_xlat7.z = float(1.0);
    }
    u_xlat7.xyz = u_xlat7.xyz * _MainLightColor.xyz;
    u_xlat32.x = dot((-u_xlat5.xyz), u_xlat17.xyz);
    u_xlat32.x = u_xlat32.x + u_xlat32.x;
    u_xlat8.xyz = u_xlat17.xyz * (-u_xlat32.xxx) + (-u_xlat5.xyz);
    u_xlat32.x = dot(u_xlat17.xyz, u_xlat5.xyz);
    u_xlat32.x = clamp(u_xlat32.x, 0.0, 1.0);
    u_xlat32.x = (-u_xlat32.x) + 1.0;
    u_xlat32.x = u_xlat32.x * u_xlat32.x;
    u_xlat32.x = u_xlat32.x * u_xlat32.x;
    u_xlat46 = (-u_xlat42) * 0.699999988 + 1.70000005;
    u_xlat42 = u_xlat42 * u_xlat46;
    u_xlat42 = u_xlat42 * 6.0;
    u_xlat8 = textureLod(samplerCube(unity_SpecCube0, samplerunity_SpecCube0), u_xlat8.xyz, u_xlat42);
    u_xlat42 = u_xlat8.w + -1.0;
    u_xlat42 = unity_SpecCube0_HDR.w * u_xlat42 + 1.0;
    u_xlat42 = max(u_xlat42, 0.0);
    u_xlat42 = log2(u_xlat42);
    u_xlat42 = u_xlat42 * unity_SpecCube0_HDR.y;
    u_xlat42 = exp2(u_xlat42);
    u_xlat42 = u_xlat42 * unity_SpecCube0_HDR.x;
    u_xlat8.xyz = u_xlat8.xyz * vec3(u_xlat42);
    u_xlat9.xy = u_xlat1.xx * u_xlat1.xx + vec2(-1.0, 1.0);
    u_xlat42 = float(1.0) / u_xlat9.y;
    u_xlat23.xyz = (-u_xlat0.xyz) + u_xlat29.xxx;
    u_xlat23.xyz = u_xlat32.xxx * u_xlat23.xyz + u_xlat0.xyz;
    u_xlat23.xyz = vec3(u_xlat42) * u_xlat23.xyz;
    u_xlat8.xyz = u_xlat8.xyz * u_xlat23.xyz;
    u_xlat6.xyz = u_xlat6.xyz * u_xlat16.xyz + u_xlat8.xyz;
    u_xlat42 = u_xlat4.x * unity_LightData.z;
    u_xlat1.x = dot(u_xlat17.xyz, _MainLightPosition.xyz);
    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
    u_xlat42 = u_xlat42 * u_xlat1.x;
    u_xlat4.xzw = vec3(u_xlat42) * u_xlat7.xyz;
    u_xlat7.xyz = u_xlat5.xyz + _MainLightPosition.xyz;
    u_xlat42 = dot(u_xlat7.xyz, u_xlat7.xyz);
    u_xlat42 = max(u_xlat42, 1.17549435e-38);
    u_xlat42 = inversesqrt(u_xlat42);
    u_xlat7.xyz = vec3(u_xlat42) * u_xlat7.xyz;
    u_xlat42 = dot(u_xlat17.xyz, u_xlat7.xyz);
    u_xlat42 = clamp(u_xlat42, 0.0, 1.0);
    u_xlat1.x = dot(_MainLightPosition.xyz, u_xlat7.xyz);
    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
    u_xlat42 = u_xlat42 * u_xlat42;
    u_xlat42 = u_xlat42 * u_xlat9.x + 1.00001001;
    u_xlat1.x = u_xlat1.x * u_xlat1.x;
    u_xlat42 = u_xlat42 * u_xlat42;
    u_xlat1.x = max(u_xlat1.x, 0.100000001);
    u_xlat42 = u_xlat42 * u_xlat1.x;
    u_xlat42 = u_xlat43 * u_xlat42;
    u_xlat42 = u_xlat15 / u_xlat42;
    u_xlat7.xyz = u_xlat0.xyz * vec3(u_xlat42) + u_xlat16.xyz;
    u_xlat4.xzw = u_xlat4.xzw * u_xlat7.xyz;
    u_xlat42 = min(_AdditionalLightsCount.x, unity_LightData.y);
    u_xlatu42 =  uint(int(u_xlat42));
    u_xlat1.x = u_xlat18.x * _AdditionalShadowFadeParams.x + _AdditionalShadowFadeParams.y;
    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
    u_xlatb7.xy = equal(vec4(vec4(_AdditionalLightsCookieAtlasTextureFormat, _AdditionalLightsCookieAtlasTextureFormat, _AdditionalLightsCookieAtlasTextureFormat, _AdditionalLightsCookieAtlasTextureFormat)), vec4(0.0, 1.0, 0.0, 0.0)).xy;
    u_xlat8.x = float(0.0);
    u_xlat8.y = float(0.0);
    u_xlat8.z = float(0.0);
    for(uint u_xlatu_loop_1 = 0u ; u_xlatu_loop_1<u_xlatu42 ; u_xlatu_loop_1++)
    {
        u_xlatu18 = u_xlatu_loop_1 >> (2u & uint(0x1F));
        u_xlati47 = int(u_xlatu_loop_1 & 3u);
        u_xlat18.x = dot(unity_LightIndices[int(u_xlatu18)], uintBitsToFloat(ImmCB_0[u_xlati47]));
        u_xlati18 = int(u_xlat18.x);
        u_xlat23.xyz = (-vs_TEXCOORD1.xyz) * _AdditionalLightsPosition[u_xlati18].www + _AdditionalLightsPosition[u_xlati18].xyz;
        u_xlat47 = dot(u_xlat23.xyz, u_xlat23.xyz);
        u_xlat47 = max(u_xlat47, 6.10351562e-05);
        u_xlat48 = inversesqrt(u_xlat47);
        u_xlat10.xyz = vec3(u_xlat48) * u_xlat23.xyz;
        u_xlat35 = float(1.0) / float(u_xlat47);
        u_xlat47 = u_xlat47 * _AdditionalLightsAttenuation[u_xlati18].x;
        u_xlat47 = (-u_xlat47) * u_xlat47 + 1.0;
        u_xlat47 = max(u_xlat47, 0.0);
        u_xlat47 = u_xlat47 * u_xlat47;
        u_xlat47 = u_xlat47 * u_xlat35;
        u_xlat35 = dot(_AdditionalLightsSpotDir[u_xlati18].xyz, u_xlat10.xyz);
        u_xlat35 = u_xlat35 * _AdditionalLightsAttenuation[u_xlati18].z + _AdditionalLightsAttenuation[u_xlati18].w;
        u_xlat35 = clamp(u_xlat35, 0.0, 1.0);
        u_xlat35 = u_xlat35 * u_xlat35;
        u_xlat47 = u_xlat47 * u_xlat35;
        u_xlati35 = int(_AdditionalShadowParams[u_xlati18].w);
        u_xlatb49 = u_xlati35>=0;
        if(u_xlatb49){
            u_xlatb49 = vec4(0.0, 0.0, 0.0, 0.0)!=vec4(_AdditionalShadowParams[u_xlati18].z);
            if(u_xlatb49){
                u_xlatb11.xyz = greaterThanEqual(abs(u_xlat10.zzyz), abs(u_xlat10.xyxx)).xyz;
                u_xlatb49 = u_xlatb11.y && u_xlatb11.x;
                u_xlatb11.xyw = lessThan((-u_xlat10.zyzx), vec4(0.0, 0.0, 0.0, 0.0)).xyw;
                u_xlat11.x = (u_xlatb11.x) ? float(5.0) : float(4.0);
                u_xlat11.y = (u_xlatb11.y) ? float(3.0) : float(2.0);
                u_xlat50 = u_xlatb11.w ? 1.0 : float(0.0);
                u_xlat50 = (u_xlatb11.z) ? u_xlat11.y : u_xlat50;
                u_xlat49 = (u_xlatb49) ? u_xlat11.x : u_xlat50;
                u_xlat50 = trunc(_AdditionalShadowParams[u_xlati18].w);
                u_xlat49 = u_xlat49 + u_xlat50;
                u_xlati35 = int(u_xlat49);
            }
            u_xlati35 = u_xlati35 << (2 & int(0x1F));
            u_xlat11 = vs_TEXCOORD1.yyyy * _AdditionalLightsWorldToShadow[(u_xlati35 + 1) / 4][(u_xlati35 + 1) % 4];
            u_xlat11 = _AdditionalLightsWorldToShadow[u_xlati35 / 4][u_xlati35 % 4] * vs_TEXCOORD1.xxxx + u_xlat11;
            u_xlat11 = _AdditionalLightsWorldToShadow[(u_xlati35 + 2) / 4][(u_xlati35 + 2) % 4] * vs_TEXCOORD1.zzzz + u_xlat11;
            u_xlat11 = u_xlat11 + _AdditionalLightsWorldToShadow[(u_xlati35 + 3) / 4][(u_xlati35 + 3) % 4];
            u_xlat11.xyz = u_xlat11.xyz / u_xlat11.www;
            vec3 txVec1 = vec3(u_xlat11.xy,u_xlat11.z);
            u_xlat35 = textureLod(sampler2DShadow(_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare), txVec1, 0.0);
            u_xlat49 = 1.0 + (-_AdditionalShadowParams[u_xlati18].x);
            u_xlat35 = u_xlat35 * _AdditionalShadowParams[u_xlati18].x + u_xlat49;
            u_xlatb49 = 0.0>=u_xlat11.z;
            u_xlatb50 = u_xlat11.z>=1.0;
            u_xlatb49 = u_xlatb49 || u_xlatb50;
            u_xlat35 = (u_xlatb49) ? 1.0 : u_xlat35;
        } else {
            u_xlat35 = 1.0;
        }
        u_xlat49 = (-u_xlat35) + 1.0;
        u_xlat35 = u_xlat1.x * u_xlat49 + u_xlat35;
        u_xlati49 = 1 << (u_xlati18 & int(0x1F));
        u_xlati49 = int(uint(u_xlati49) & floatBitsToUint(_AdditionalLightsCookieEnableBits));
        if(u_xlati49 != 0) {
            u_xlati49 = int(_AdditionalLightsLightTypes[u_xlati18]);
            u_xlati50 = (u_xlati49 != 0) ? 0 : 1;
            u_xlati52 = u_xlati18 << (2 & int(0x1F));
            if(u_xlati50 != 0) {
                u_xlat11.xyz = vs_TEXCOORD1.yyy * _AdditionalLightsWorldToLights[(u_xlati52 + 1) / 4][(u_xlati52 + 1) % 4].xyw;
                u_xlat11.xyz = _AdditionalLightsWorldToLights[u_xlati52 / 4][u_xlati52 % 4].xyw * vs_TEXCOORD1.xxx + u_xlat11.xyz;
                u_xlat11.xyz = _AdditionalLightsWorldToLights[(u_xlati52 + 2) / 4][(u_xlati52 + 2) % 4].xyw * vs_TEXCOORD1.zzz + u_xlat11.xyz;
                u_xlat11.xyz = u_xlat11.xyz + _AdditionalLightsWorldToLights[(u_xlati52 + 3) / 4][(u_xlati52 + 3) % 4].xyw;
                u_xlat11.xy = u_xlat11.xy / u_xlat11.zz;
                u_xlat11.xy = u_xlat11.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
                u_xlat11.xy = clamp(u_xlat11.xy, 0.0, 1.0);
                u_xlat11.xy = _AdditionalLightsCookieAtlasUVRects[u_xlati18].xy * u_xlat11.xy + _AdditionalLightsCookieAtlasUVRects[u_xlati18].zw;
            } else {
                u_xlatb49 = u_xlati49==1;
                u_xlati49 = u_xlatb49 ? 1 : int(0);
                if(u_xlati49 != 0) {
                    u_xlat39.xy = vs_TEXCOORD1.yy * _AdditionalLightsWorldToLights[(u_xlati52 + 1) / 4][(u_xlati52 + 1) % 4].xy;
                    u_xlat39.xy = _AdditionalLightsWorldToLights[u_xlati52 / 4][u_xlati52 % 4].xy * vs_TEXCOORD1.xx + u_xlat39.xy;
                    u_xlat39.xy = _AdditionalLightsWorldToLights[(u_xlati52 + 2) / 4][(u_xlati52 + 2) % 4].xy * vs_TEXCOORD1.zz + u_xlat39.xy;
                    u_xlat39.xy = u_xlat39.xy + _AdditionalLightsWorldToLights[(u_xlati52 + 3) / 4][(u_xlati52 + 3) % 4].xy;
                    u_xlat39.xy = u_xlat39.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
                    u_xlat39.xy = fract(u_xlat39.xy);
                    u_xlat11.xy = _AdditionalLightsCookieAtlasUVRects[u_xlati18].xy * u_xlat39.xy + _AdditionalLightsCookieAtlasUVRects[u_xlati18].zw;
                } else {
                    u_xlat12 = vs_TEXCOORD1.yyyy * _AdditionalLightsWorldToLights[(u_xlati52 + 1) / 4][(u_xlati52 + 1) % 4];
                    u_xlat12 = _AdditionalLightsWorldToLights[u_xlati52 / 4][u_xlati52 % 4] * vs_TEXCOORD1.xxxx + u_xlat12;
                    u_xlat12 = _AdditionalLightsWorldToLights[(u_xlati52 + 2) / 4][(u_xlati52 + 2) % 4] * vs_TEXCOORD1.zzzz + u_xlat12;
                    u_xlat12 = u_xlat12 + _AdditionalLightsWorldToLights[(u_xlati52 + 3) / 4][(u_xlati52 + 3) % 4];
                    u_xlat12.xyz = u_xlat12.xyz / u_xlat12.www;
                    u_xlat49 = dot(u_xlat12.xyz, u_xlat12.xyz);
                    u_xlat49 = inversesqrt(u_xlat49);
                    u_xlat12.xyz = vec3(u_xlat49) * u_xlat12.xyz;
                    u_xlat49 = dot(abs(u_xlat12.xyz), vec3(1.0, 1.0, 1.0));
                    u_xlat49 = max(u_xlat49, 9.99999997e-07);
                    u_xlat49 = float(1.0) / float(u_xlat49);
                    u_xlat13.xyz = vec3(u_xlat49) * u_xlat12.zxy;
                    u_xlat13.x = (-u_xlat13.x);
                    u_xlat13.x = clamp(u_xlat13.x, 0.0, 1.0);
                    u_xlatb39.xy = greaterThanEqual(u_xlat13.yzyz, vec4(0.0, 0.0, 0.0, 0.0)).xy;
                    u_xlat39.x = (u_xlatb39.x) ? u_xlat13.x : (-u_xlat13.x);
                    u_xlat39.y = (u_xlatb39.y) ? u_xlat13.x : (-u_xlat13.x);
                    u_xlat39.xy = u_xlat12.xy * vec2(u_xlat49) + u_xlat39.xy;
                    u_xlat39.xy = u_xlat39.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
                    u_xlat39.xy = clamp(u_xlat39.xy, 0.0, 1.0);
                    u_xlat11.xy = _AdditionalLightsCookieAtlasUVRects[u_xlati18].xy * u_xlat39.xy + _AdditionalLightsCookieAtlasUVRects[u_xlati18].zw;
                }
            }
            u_xlat11 = textureLod(sampler2D(_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp), u_xlat11.xy, 0.0);
            u_xlat49 = (u_xlatb7.y) ? u_xlat11.w : u_xlat11.x;
            u_xlat11.xyz = (u_xlatb7.x) ? u_xlat11.xyz : vec3(u_xlat49);
        } else {
            u_xlat11.x = float(1.0);
            u_xlat11.y = float(1.0);
            u_xlat11.z = float(1.0);
        }
        u_xlat11.xyz = u_xlat11.xyz * _AdditionalLightsColor[u_xlati18].xyz;
        u_xlat18.x = u_xlat47 * u_xlat35;
        u_xlat47 = dot(u_xlat17.xyz, u_xlat10.xyz);
        u_xlat47 = clamp(u_xlat47, 0.0, 1.0);
        u_xlat18.x = u_xlat18.x * u_xlat47;
        u_xlat11.xyz = u_xlat18.xxx * u_xlat11.xyz;
        u_xlat23.xyz = u_xlat23.xyz * vec3(u_xlat48) + u_xlat5.xyz;
        u_xlat18.x = dot(u_xlat23.xyz, u_xlat23.xyz);
        u_xlat18.x = max(u_xlat18.x, 1.17549435e-38);
        u_xlat18.x = inversesqrt(u_xlat18.x);
        u_xlat23.xyz = u_xlat18.xxx * u_xlat23.xyz;
        u_xlat18.x = dot(u_xlat17.xyz, u_xlat23.xyz);
        u_xlat18.x = clamp(u_xlat18.x, 0.0, 1.0);
        u_xlat47 = dot(u_xlat10.xyz, u_xlat23.xyz);
        u_xlat47 = clamp(u_xlat47, 0.0, 1.0);
        u_xlat18.x = u_xlat18.x * u_xlat18.x;
        u_xlat18.x = u_xlat18.x * u_xlat9.x + 1.00001001;
        u_xlat47 = u_xlat47 * u_xlat47;
        u_xlat18.x = u_xlat18.x * u_xlat18.x;
        u_xlat47 = max(u_xlat47, 0.100000001);
        u_xlat18.x = u_xlat18.x * u_xlat47;
        u_xlat18.x = u_xlat43 * u_xlat18.x;
        u_xlat18.x = u_xlat15 / u_xlat18.x;
        u_xlat23.xyz = u_xlat0.xyz * u_xlat18.xxx + u_xlat16.xyz;
        u_xlat8.xyz = u_xlat23.xyz * u_xlat11.xyz + u_xlat8.xyz;
    }
    u_xlat0.xyz = u_xlat6.xyz * u_xlat3.xxx + u_xlat4.xzw;
    SV_Target0.xyz = u_xlat8.xyz + u_xlat0.xyz;
    u_xlatb0 = _Surface==1.0;
    SV_Target0.w = (u_xlatb0) ? u_xlat2.x : 1.0;
    return;
}

