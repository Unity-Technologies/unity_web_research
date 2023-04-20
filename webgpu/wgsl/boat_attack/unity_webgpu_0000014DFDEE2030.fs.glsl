#version 440
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shading_language_420pack : require
#ifdef GL_ARB_derivative_control
#extension GL_ARB_derivative_control : enable
#endif

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
	float _AlphaToMaskAvailable;
	vec4 _MainLightPosition;
	vec4 _MainLightColor;
	vec4 _AdditionalLightsCount;
	vec3 _WorldSpaceCameraPos;
	vec4 _ProjectionParams;
	vec4 unity_FogParams;
	vec4 unity_FogColor;
	mat4x4 unity_MatrixV;
	float _DitheringTextureInvSize;
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
	vec4 _BaseColor;
	vec4 _SpecColor;
	vec4 _EmissionColor;
	float _Cutoff;
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
layout(set = 0, binding = 0) uniform mediump texture2D unity_Lightmap;
layout(set = 0, binding = 1) uniform mediump texture2D unity_LightmapInd;
layout(set = 0, binding = 2) uniform mediump texture2D _BaseMap;
layout(set = 0, binding = 3) uniform mediump texture2D _BumpMap;
layout(set = 0, binding = 4) uniform mediump texture2D _MainLightShadowmapTexture;
layout(set = 0, binding = 5) uniform mediump texture2D _AdditionalLightsShadowmapTexture;
layout(set = 0, binding = 6) uniform mediump texture2D _MainLightCookieTexture;
layout(set = 0, binding = 7) uniform mediump texture2D _AdditionalLightsCookieAtlasTexture;
layout(set = 0, binding = 8) uniform mediump texture2D _DitheringTexture;
layout(location = 0) in highp  vec2 vs_TEXCOORD0;
layout(location = 1) in highp  vec3 vs_TEXCOORD1;
layout(location = 2) in highp  vec4 vs_TEXCOORD2;
layout(location = 3) in highp  vec4 vs_TEXCOORD3;
layout(location = 4) in highp  vec4 vs_TEXCOORD4;
layout(location = 5) in highp  vec2 vs_TEXCOORD7;
layout(location = 0) out highp vec4 SV_Target0;
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
bvec2 u_xlatb6;
vec3 u_xlat7;
vec3 u_xlat8;
vec4 u_xlat9;
int u_xlati9;
bvec4 u_xlatb9;
vec4 u_xlat10;
vec3 u_xlat11;
vec3 u_xlat12;
bool u_xlatb12;
bool u_xlatb14;
vec3 u_xlat21;
float u_xlat24;
bool u_xlatb24;
float u_xlat30;
int u_xlati30;
float u_xlat36;
int u_xlati36;
uint u_xlatu36;
float u_xlat38;
bool u_xlatb38;
float u_xlat39;
uint u_xlatu39;
bool u_xlatb39;
uint u_xlatu40;
float u_xlat41;
int u_xlati41;
uint u_xlatu41;
bool u_xlatb41;
float u_xlat42;
int u_xlati42;
float u_xlat43;
int u_xlati43;
bool u_xlatb43;
float u_xlat44;
int u_xlati44;
bool u_xlatb44;
layout(set = 0, binding = 9) uniform mediump  sampler samplerunity_Lightmap;
layout(set = 0, binding = 10) uniform mediump  sampler sampler_BaseMap;
layout(set = 0, binding = 11) uniform mediump  sampler sampler_BumpMap;
layout(set = 0, binding = 12) uniform mediump  sampler sampler_LinearClamp;
layout(set = 0, binding = 13) uniform mediump  sampler sampler_PointRepeat;
layout(set = 0, binding = 14) uniform mediump  samplerShadow sampler_LinearClampCompare;
layout(set = 0, binding = 15) uniform mediump  sampler sampler_MainLightCookieTexture;
void main()
{
vec4 hlslcc_FragCoord = vec4(gl_FragCoord.xyz, 1.0/gl_FragCoord.w);
    u_xlat0 = texture(sampler2D(_BaseMap, sampler_BaseMap), vs_TEXCOORD0.xy, _GlobalMipBias.x);
    u_xlat1 = u_xlat0.wxyz * _BaseColor.wxyz;
    u_xlatb0 = u_xlat1.x>=_Cutoff;
    u_xlat0.x = u_xlatb0 ? u_xlat1.x : float(0.0);
    u_xlat12.x = u_xlat0.w * _BaseColor.w + (-_Cutoff);
    u_xlat24 = dFdxCoarse(u_xlat1.x);
    u_xlat36 = dFdyCoarse(u_xlat1.x);
    u_xlat24 = abs(u_xlat36) + abs(u_xlat24);
    u_xlat24 = max(u_xlat24, 9.99999975e-05);
    u_xlat12.x = u_xlat12.x / u_xlat24;
    u_xlat12.x = u_xlat12.x + 0.5;
    u_xlat12.x = clamp(u_xlat12.x, 0.0, 1.0);
    u_xlatb24 = _AlphaToMaskAvailable!=0.0;
    u_xlat0.x = (u_xlatb24) ? u_xlat12.x : u_xlat0.x;
    u_xlat12.x = u_xlat0.x + -9.99999975e-05;
    u_xlatb12 = u_xlat12.x<0.0;
    if(((int(u_xlatb12) * int(0xffffffffu)))!=0){discard;}
    u_xlat2.xyz = texture(sampler2D(_BumpMap, sampler_BumpMap), vs_TEXCOORD0.xy, _GlobalMipBias.x).xyw;
    u_xlat2.x = u_xlat2.x * u_xlat2.z;
    u_xlat12.xz = u_xlat2.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat1.x = dot(u_xlat12.xz, u_xlat12.xz);
    u_xlat1.x = min(u_xlat1.x, 1.0);
    u_xlat1.x = (-u_xlat1.x) + 1.0;
    u_xlat1.x = sqrt(u_xlat1.x);
    u_xlat1.x = max(u_xlat1.x, 1.00000002e-16);
    u_xlat2.xy = hlslcc_FragCoord.xy * vec2(_DitheringTextureInvSize);
    u_xlat2.x = texture(sampler2D(_DitheringTexture, sampler_PointRepeat), u_xlat2.xy, _GlobalMipBias.x).w;
    u_xlatb14 = unity_LODFade.x>=0.0;
    u_xlat2.x = (u_xlatb14) ? abs(u_xlat2.x) : -abs(u_xlat2.x);
    u_xlat2.x = (-u_xlat2.x) + unity_LODFade.x;
    u_xlatb2 = u_xlat2.x<0.0;
    if(((int(u_xlatb2) * int(0xffffffffu)))!=0){discard;}
    u_xlat2.xyz = u_xlat12.zzz * vs_TEXCOORD4.xyz;
    u_xlat2.xyz = u_xlat12.xxx * vs_TEXCOORD3.xyz + u_xlat2.xyz;
    u_xlat2.xyz = u_xlat1.xxx * vs_TEXCOORD2.xyz + u_xlat2.xyz;
    u_xlat12.x = dot(u_xlat2.xyz, u_xlat2.xyz);
    u_xlat12.x = inversesqrt(u_xlat12.x);
    u_xlat2.xyz = u_xlat12.xxx * u_xlat2.xyz;
    u_xlat3.x = vs_TEXCOORD2.w;
    u_xlat3.y = vs_TEXCOORD3.w;
    u_xlat3.z = vs_TEXCOORD4.w;
    u_xlat12.x = dot(u_xlat3.xyz, u_xlat3.xyz);
    u_xlat12.x = max(u_xlat12.x, 6.10351562e-05);
    u_xlat12.x = inversesqrt(u_xlat12.x);
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
    u_xlat36 = dot(u_xlat5, vec4(4.0, 3.0, 2.0, 1.0));
    u_xlat36 = (-u_xlat36) + 4.0;
    u_xlatu36 = uint(u_xlat36);
    u_xlati36 = int(u_xlatu36) << (2 & int(0x1F));
    u_xlat4.xyz = vs_TEXCOORD1.yyy * _MainLightWorldToShadow[(u_xlati36 + 1) / 4][(u_xlati36 + 1) % 4].xyz;
    u_xlat4.xyz = _MainLightWorldToShadow[u_xlati36 / 4][u_xlati36 % 4].xyz * vs_TEXCOORD1.xxx + u_xlat4.xyz;
    u_xlat4.xyz = _MainLightWorldToShadow[(u_xlati36 + 2) / 4][(u_xlati36 + 2) % 4].xyz * vs_TEXCOORD1.zzz + u_xlat4.xyz;
    u_xlat4.xyz = u_xlat4.xyz + _MainLightWorldToShadow[(u_xlati36 + 3) / 4][(u_xlati36 + 3) % 4].xyz;
    u_xlat36 = vs_TEXCOORD1.y * unity_MatrixV[1].z;
    u_xlat36 = unity_MatrixV[0].z * vs_TEXCOORD1.x + u_xlat36;
    u_xlat36 = unity_MatrixV[2].z * vs_TEXCOORD1.z + u_xlat36;
    u_xlat36 = u_xlat36 + unity_MatrixV[3].z;
    u_xlat36 = (-u_xlat36) + (-_ProjectionParams.y);
    u_xlat36 = max(u_xlat36, 0.0);
    u_xlat36 = u_xlat36 * unity_FogParams.x;
    u_xlat5 = texture(sampler2D(unity_LightmapInd, samplerunity_Lightmap), vs_TEXCOORD7.xy, _GlobalMipBias.x);
    u_xlat6.xyz = texture(sampler2D(unity_Lightmap, samplerunity_Lightmap), vs_TEXCOORD7.xy, _GlobalMipBias.x).xyz;
    u_xlat5.xyz = u_xlat5.xyz + vec3(-0.5, -0.5, -0.5);
    u_xlat1.x = dot(u_xlat2.xyz, u_xlat5.xyz);
    u_xlat1.x = u_xlat1.x + 0.5;
    u_xlat5.xyz = u_xlat1.xxx * u_xlat6.xyz;
    u_xlat1.x = max(u_xlat5.w, 9.99999975e-05);
    u_xlat5.xyz = u_xlat5.xyz / u_xlat1.xxx;
    vec3 txVec0 = vec3(u_xlat4.xy,u_xlat4.z);
    u_xlat1.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_LinearClampCompare), txVec0, 0.0);
    u_xlat38 = (-_MainLightShadowParams.x) + 1.0;
    u_xlat1.x = u_xlat1.x * _MainLightShadowParams.x + u_xlat38;
    u_xlatb38 = 0.0>=u_xlat4.z;
    u_xlatb39 = u_xlat4.z>=1.0;
    u_xlatb38 = u_xlatb38 || u_xlatb39;
    u_xlat1.x = (u_xlatb38) ? 1.0 : u_xlat1.x;
    u_xlat4.xyz = vs_TEXCOORD1.xyz + (-_WorldSpaceCameraPos.xyz);
    u_xlat38 = dot(u_xlat4.xyz, u_xlat4.xyz);
    u_xlat39 = u_xlat38 * _MainLightShadowParams.z + _MainLightShadowParams.w;
    u_xlat39 = clamp(u_xlat39, 0.0, 1.0);
    u_xlat4.x = (-u_xlat1.x) + 1.0;
    u_xlat1.x = u_xlat39 * u_xlat4.x + u_xlat1.x;
    u_xlatb39 = _MainLightCookieTextureFormat!=-1.0;
    if(u_xlatb39){
        u_xlat4.xy = vs_TEXCOORD1.yy * _MainLightWorldToLight[1].xy;
        u_xlat4.xy = _MainLightWorldToLight[0].xy * vs_TEXCOORD1.xx + u_xlat4.xy;
        u_xlat4.xy = _MainLightWorldToLight[2].xy * vs_TEXCOORD1.zz + u_xlat4.xy;
        u_xlat4.xy = u_xlat4.xy + _MainLightWorldToLight[3].xy;
        u_xlat4.xy = u_xlat4.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
        u_xlat4 = texture(sampler2D(_MainLightCookieTexture, sampler_MainLightCookieTexture), u_xlat4.xy, _GlobalMipBias.x);
        u_xlatb6.xy = equal(vec4(vec4(_MainLightCookieTextureFormat, _MainLightCookieTextureFormat, _MainLightCookieTextureFormat, _MainLightCookieTextureFormat)), vec4(0.0, 1.0, 0.0, 0.0)).xy;
        u_xlat39 = (u_xlatb6.y) ? u_xlat4.w : u_xlat4.x;
        u_xlat4.xyz = (u_xlatb6.x) ? u_xlat4.xyz : vec3(u_xlat39);
    } else {
        u_xlat4.x = float(1.0);
        u_xlat4.y = float(1.0);
        u_xlat4.z = float(1.0);
    }
    u_xlat4.xyz = u_xlat4.xyz * _MainLightColor.xyz;
    u_xlat1.x = u_xlat1.x * unity_LightData.z;
    u_xlat4.xyz = u_xlat1.xxx * u_xlat4.xyz;
    u_xlat1.x = dot(u_xlat2.xyz, _MainLightPosition.xyz);
    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
    u_xlat6.xyz = u_xlat1.xxx * u_xlat4.xyz;
    u_xlat1.x = _SpecColor.w * 10.0 + 1.0;
    u_xlat1.x = exp2(u_xlat1.x);
    u_xlat7.xyz = u_xlat3.xyz * u_xlat12.xxx + _MainLightPosition.xyz;
    u_xlat39 = dot(u_xlat7.xyz, u_xlat7.xyz);
    u_xlat39 = max(u_xlat39, 1.17549435e-38);
    u_xlat39 = inversesqrt(u_xlat39);
    u_xlat7.xyz = vec3(u_xlat39) * u_xlat7.xyz;
    u_xlat39 = dot(u_xlat2.xyz, u_xlat7.xyz);
    u_xlat39 = clamp(u_xlat39, 0.0, 1.0);
    u_xlat39 = log2(u_xlat39);
    u_xlat39 = u_xlat1.x * u_xlat39;
    u_xlat39 = exp2(u_xlat39);
    u_xlat7.xyz = vec3(u_xlat39) * _SpecColor.xyz;
    u_xlat4.xyz = u_xlat4.xyz * u_xlat7.xyz;
    u_xlat4.xyz = u_xlat6.xyz * u_xlat1.yzw + u_xlat4.xyz;
    u_xlat39 = min(_AdditionalLightsCount.x, unity_LightData.y);
    u_xlatu39 =  uint(int(u_xlat39));
    u_xlat38 = u_xlat38 * _AdditionalShadowFadeParams.x + _AdditionalShadowFadeParams.y;
    u_xlat38 = clamp(u_xlat38, 0.0, 1.0);
    u_xlatb6.xy = equal(vec4(vec4(_AdditionalLightsCookieAtlasTextureFormat, _AdditionalLightsCookieAtlasTextureFormat, _AdditionalLightsCookieAtlasTextureFormat, _AdditionalLightsCookieAtlasTextureFormat)), vec4(0.0, 1.0, 0.0, 0.0)).xy;
    u_xlat7.x = float(0.0);
    u_xlat7.y = float(0.0);
    u_xlat7.z = float(0.0);
    for(uint u_xlatu_loop_1 = 0u ; u_xlatu_loop_1<u_xlatu39 ; u_xlatu_loop_1++)
    {
        u_xlatu41 = u_xlatu_loop_1 >> (2u & uint(0x1F));
        u_xlati30 = int(u_xlatu_loop_1 & 3u);
        u_xlat41 = dot(unity_LightIndices[int(u_xlatu41)], uintBitsToFloat(ImmCB_0[u_xlati30]));
        u_xlati41 = int(u_xlat41);
        u_xlat8.xyz = (-vs_TEXCOORD1.xyz) * _AdditionalLightsPosition[u_xlati41].www + _AdditionalLightsPosition[u_xlati41].xyz;
        u_xlat30 = dot(u_xlat8.xyz, u_xlat8.xyz);
        u_xlat30 = max(u_xlat30, 6.10351562e-05);
        u_xlat42 = inversesqrt(u_xlat30);
        u_xlat8.xyz = vec3(u_xlat42) * u_xlat8.xyz;
        u_xlat42 = float(1.0) / float(u_xlat30);
        u_xlat30 = u_xlat30 * _AdditionalLightsAttenuation[u_xlati41].x;
        u_xlat30 = (-u_xlat30) * u_xlat30 + 1.0;
        u_xlat30 = max(u_xlat30, 0.0);
        u_xlat30 = u_xlat30 * u_xlat30;
        u_xlat30 = u_xlat30 * u_xlat42;
        u_xlat42 = dot(_AdditionalLightsSpotDir[u_xlati41].xyz, u_xlat8.xyz);
        u_xlat42 = u_xlat42 * _AdditionalLightsAttenuation[u_xlati41].z + _AdditionalLightsAttenuation[u_xlati41].w;
        u_xlat42 = clamp(u_xlat42, 0.0, 1.0);
        u_xlat42 = u_xlat42 * u_xlat42;
        u_xlat30 = u_xlat42 * u_xlat30;
        u_xlati42 = int(_AdditionalShadowParams[u_xlati41].w);
        u_xlatb43 = u_xlati42>=0;
        if(u_xlatb43){
            u_xlatb43 = vec4(0.0, 0.0, 0.0, 0.0)!=vec4(_AdditionalShadowParams[u_xlati41].z);
            if(u_xlatb43){
                u_xlatb9.xyz = greaterThanEqual(abs(u_xlat8.zzyz), abs(u_xlat8.xyxx)).xyz;
                u_xlatb43 = u_xlatb9.y && u_xlatb9.x;
                u_xlatb9.xyw = lessThan((-u_xlat8.zyzx), vec4(0.0, 0.0, 0.0, 0.0)).xyw;
                u_xlat9.x = (u_xlatb9.x) ? float(5.0) : float(4.0);
                u_xlat9.y = (u_xlatb9.y) ? float(3.0) : float(2.0);
                u_xlat44 = u_xlatb9.w ? 1.0 : float(0.0);
                u_xlat44 = (u_xlatb9.z) ? u_xlat9.y : u_xlat44;
                u_xlat43 = (u_xlatb43) ? u_xlat9.x : u_xlat44;
                u_xlat44 = trunc(_AdditionalShadowParams[u_xlati41].w);
                u_xlat43 = u_xlat43 + u_xlat44;
                u_xlati42 = int(u_xlat43);
            }
            u_xlati42 = u_xlati42 << (2 & int(0x1F));
            u_xlat9 = vs_TEXCOORD1.yyyy * _AdditionalLightsWorldToShadow[(u_xlati42 + 1) / 4][(u_xlati42 + 1) % 4];
            u_xlat9 = _AdditionalLightsWorldToShadow[u_xlati42 / 4][u_xlati42 % 4] * vs_TEXCOORD1.xxxx + u_xlat9;
            u_xlat9 = _AdditionalLightsWorldToShadow[(u_xlati42 + 2) / 4][(u_xlati42 + 2) % 4] * vs_TEXCOORD1.zzzz + u_xlat9;
            u_xlat9 = u_xlat9 + _AdditionalLightsWorldToShadow[(u_xlati42 + 3) / 4][(u_xlati42 + 3) % 4];
            u_xlat9.xyz = u_xlat9.xyz / u_xlat9.www;
            vec3 txVec1 = vec3(u_xlat9.xy,u_xlat9.z);
            u_xlat42 = textureLod(sampler2DShadow(_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare), txVec1, 0.0);
            u_xlat43 = 1.0 + (-_AdditionalShadowParams[u_xlati41].x);
            u_xlat42 = u_xlat42 * _AdditionalShadowParams[u_xlati41].x + u_xlat43;
            u_xlatb43 = 0.0>=u_xlat9.z;
            u_xlatb44 = u_xlat9.z>=1.0;
            u_xlatb43 = u_xlatb43 || u_xlatb44;
            u_xlat42 = (u_xlatb43) ? 1.0 : u_xlat42;
        } else {
            u_xlat42 = 1.0;
        }
        u_xlat43 = (-u_xlat42) + 1.0;
        u_xlat42 = u_xlat38 * u_xlat43 + u_xlat42;
        u_xlati43 = 1 << (u_xlati41 & int(0x1F));
        u_xlati43 = int(uint(u_xlati43) & floatBitsToUint(_AdditionalLightsCookieEnableBits));
        if(u_xlati43 != 0) {
            u_xlati43 = int(_AdditionalLightsLightTypes[u_xlati41]);
            u_xlati44 = (u_xlati43 != 0) ? 0 : 1;
            u_xlati9 = u_xlati41 << (2 & int(0x1F));
            if(u_xlati44 != 0) {
                u_xlat21.xyz = vs_TEXCOORD1.yyy * _AdditionalLightsWorldToLights[(u_xlati9 + 1) / 4][(u_xlati9 + 1) % 4].xyw;
                u_xlat21.xyz = _AdditionalLightsWorldToLights[u_xlati9 / 4][u_xlati9 % 4].xyw * vs_TEXCOORD1.xxx + u_xlat21.xyz;
                u_xlat21.xyz = _AdditionalLightsWorldToLights[(u_xlati9 + 2) / 4][(u_xlati9 + 2) % 4].xyw * vs_TEXCOORD1.zzz + u_xlat21.xyz;
                u_xlat21.xyz = u_xlat21.xyz + _AdditionalLightsWorldToLights[(u_xlati9 + 3) / 4][(u_xlati9 + 3) % 4].xyw;
                u_xlat21.xy = u_xlat21.xy / u_xlat21.zz;
                u_xlat21.xy = u_xlat21.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
                u_xlat21.xy = clamp(u_xlat21.xy, 0.0, 1.0);
                u_xlat21.xy = _AdditionalLightsCookieAtlasUVRects[u_xlati41].xy * u_xlat21.xy + _AdditionalLightsCookieAtlasUVRects[u_xlati41].zw;
            } else {
                u_xlatb43 = u_xlati43==1;
                u_xlati43 = u_xlatb43 ? 1 : int(0);
                if(u_xlati43 != 0) {
                    u_xlat10.xy = vs_TEXCOORD1.yy * _AdditionalLightsWorldToLights[(u_xlati9 + 1) / 4][(u_xlati9 + 1) % 4].xy;
                    u_xlat10.xy = _AdditionalLightsWorldToLights[u_xlati9 / 4][u_xlati9 % 4].xy * vs_TEXCOORD1.xx + u_xlat10.xy;
                    u_xlat10.xy = _AdditionalLightsWorldToLights[(u_xlati9 + 2) / 4][(u_xlati9 + 2) % 4].xy * vs_TEXCOORD1.zz + u_xlat10.xy;
                    u_xlat10.xy = u_xlat10.xy + _AdditionalLightsWorldToLights[(u_xlati9 + 3) / 4][(u_xlati9 + 3) % 4].xy;
                    u_xlat10.xy = u_xlat10.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
                    u_xlat10.xy = fract(u_xlat10.xy);
                    u_xlat21.xy = _AdditionalLightsCookieAtlasUVRects[u_xlati41].xy * u_xlat10.xy + _AdditionalLightsCookieAtlasUVRects[u_xlati41].zw;
                } else {
                    u_xlat10 = vs_TEXCOORD1.yyyy * _AdditionalLightsWorldToLights[(u_xlati9 + 1) / 4][(u_xlati9 + 1) % 4];
                    u_xlat10 = _AdditionalLightsWorldToLights[u_xlati9 / 4][u_xlati9 % 4] * vs_TEXCOORD1.xxxx + u_xlat10;
                    u_xlat10 = _AdditionalLightsWorldToLights[(u_xlati9 + 2) / 4][(u_xlati9 + 2) % 4] * vs_TEXCOORD1.zzzz + u_xlat10;
                    u_xlat10 = u_xlat10 + _AdditionalLightsWorldToLights[(u_xlati9 + 3) / 4][(u_xlati9 + 3) % 4];
                    u_xlat10.xyz = u_xlat10.xyz / u_xlat10.www;
                    u_xlat43 = dot(u_xlat10.xyz, u_xlat10.xyz);
                    u_xlat43 = inversesqrt(u_xlat43);
                    u_xlat10.xyz = vec3(u_xlat43) * u_xlat10.xyz;
                    u_xlat43 = dot(abs(u_xlat10.xyz), vec3(1.0, 1.0, 1.0));
                    u_xlat43 = max(u_xlat43, 9.99999997e-07);
                    u_xlat43 = float(1.0) / float(u_xlat43);
                    u_xlat11.xyz = vec3(u_xlat43) * u_xlat10.zxy;
                    u_xlat11.x = (-u_xlat11.x);
                    u_xlat11.x = clamp(u_xlat11.x, 0.0, 1.0);
                    u_xlatb9.xw = greaterThanEqual(u_xlat11.yyyz, vec4(0.0, 0.0, 0.0, 0.0)).xw;
                    u_xlat9.x = (u_xlatb9.x) ? u_xlat11.x : (-u_xlat11.x);
                    u_xlat9.w = (u_xlatb9.w) ? u_xlat11.x : (-u_xlat11.x);
                    u_xlat9.xw = u_xlat10.xy * vec2(u_xlat43) + u_xlat9.xw;
                    u_xlat9.xw = u_xlat9.xw * vec2(0.5, 0.5) + vec2(0.5, 0.5);
                    u_xlat9.xw = clamp(u_xlat9.xw, 0.0, 1.0);
                    u_xlat21.xy = _AdditionalLightsCookieAtlasUVRects[u_xlati41].xy * u_xlat9.xw + _AdditionalLightsCookieAtlasUVRects[u_xlati41].zw;
                }
            }
            u_xlat9 = textureLod(sampler2D(_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp), u_xlat21.xy, 0.0);
            u_xlat43 = (u_xlatb6.y) ? u_xlat9.w : u_xlat9.x;
            u_xlat9.xyz = (u_xlatb6.x) ? u_xlat9.xyz : vec3(u_xlat43);
        } else {
            u_xlat9.x = float(1.0);
            u_xlat9.y = float(1.0);
            u_xlat9.z = float(1.0);
        }
        u_xlat9.xyz = u_xlat9.xyz * _AdditionalLightsColor[u_xlati41].xyz;
        u_xlat41 = u_xlat42 * u_xlat30;
        u_xlat9.xyz = vec3(u_xlat41) * u_xlat9.xyz;
        u_xlat41 = dot(u_xlat2.xyz, u_xlat8.xyz);
        u_xlat41 = clamp(u_xlat41, 0.0, 1.0);
        u_xlat10.xyz = vec3(u_xlat41) * u_xlat9.xyz;
        u_xlat8.xyz = u_xlat3.xyz * u_xlat12.xxx + u_xlat8.xyz;
        u_xlat41 = dot(u_xlat8.xyz, u_xlat8.xyz);
        u_xlat41 = max(u_xlat41, 1.17549435e-38);
        u_xlat41 = inversesqrt(u_xlat41);
        u_xlat8.xyz = vec3(u_xlat41) * u_xlat8.xyz;
        u_xlat41 = dot(u_xlat2.xyz, u_xlat8.xyz);
        u_xlat41 = clamp(u_xlat41, 0.0, 1.0);
        u_xlat41 = log2(u_xlat41);
        u_xlat41 = u_xlat1.x * u_xlat41;
        u_xlat41 = exp2(u_xlat41);
        u_xlat8.xyz = vec3(u_xlat41) * _SpecColor.xyz;
        u_xlat8.xyz = u_xlat8.xyz * u_xlat9.xyz;
        u_xlat8.xyz = u_xlat10.xyz * u_xlat1.yzw + u_xlat8.xyz;
        u_xlat7.xyz = u_xlat7.xyz + u_xlat8.xyz;
    }
    u_xlat1.xyz = u_xlat5.xyz * u_xlat1.yzw + u_xlat4.xyz;
    u_xlat1.xyz = u_xlat7.xyz + u_xlat1.xyz;
    u_xlat12.x = u_xlat36 * (-u_xlat36);
    u_xlat12.x = exp2(u_xlat12.x);
    u_xlat1.xyz = u_xlat1.xyz + (-unity_FogColor.xyz);
    SV_Target0.xyz = u_xlat12.xxx * u_xlat1.xyz + unity_FogColor.xyz;
    u_xlatb12 = _Surface==1.0;
    u_xlatb12 = u_xlatb12 || u_xlatb24;
    SV_Target0.w = (u_xlatb12) ? u_xlat0.x : 1.0;
    return;
}

