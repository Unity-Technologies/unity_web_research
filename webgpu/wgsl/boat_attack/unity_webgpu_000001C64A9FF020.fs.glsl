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
	vec4 _ScaleBiasRt;
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
layout(set = 1, binding = 3, std140) uniform MainLightShadows {
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
layout(set = 1, binding = 4, std140) uniform LightCookies {
	mat4x4 _MainLightWorldToLight;
	float _AdditionalLightsCookieEnableBits[8];
	float _MainLightCookieTextureFormat;
	float _AdditionalLightsCookieAtlasTextureFormat;
};
layout(set = 1, binding = 5, std140) uniform AdditionalLightsCookies {
	mat4x4 _AdditionalLightsWorldToLights[256];
	vec4 _AdditionalLightsCookieAtlasUVRects[256];
	float _AdditionalLightsLightTypes[256];
};
layout(set = 0, binding = 0) uniform mediump textureCube unity_SpecCube0;
layout(set = 0, binding = 1) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 2) uniform mediump texture2D _MetallicTex;
layout(set = 0, binding = 3) uniform mediump texture2D _ScreenSpaceOcclusionTexture;
layout(set = 0, binding = 4) uniform mediump texture2D _MainLightShadowmapTexture;
layout(set = 0, binding = 5) uniform mediump texture2D _MainLightCookieTexture;
layout(set = 0, binding = 6) uniform mediump texture2D _AdditionalLightsCookieAtlasTexture;
layout(location = 0) in highp vec4 vs_TEXCOORD0;
layout(location = 1) in highp vec4 vs_TEXCOORD3;
layout(location = 2) in highp vec4 vs_TEXCOORD4;
layout(location = 3) in highp vec4 vs_TEXCOORD5;
layout(location = 4) in highp vec3 vs_TEXCOORD7;
layout(location = 5) in highp vec4 vs_TEXCOORD8;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 7) uniform mediump  sampler samplerunity_SpecCube0;
layout(set = 0, binding = 8) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 9) uniform mediump  sampler sampler_MetallicTex;
layout(set = 0, binding = 10) uniform mediump  sampler sampler_ScreenSpaceOcclusionTexture;
layout(set = 0, binding = 11) uniform mediump  samplerShadow sampler_MainLightShadowmapTexture;
layout(set = 0, binding = 12) uniform mediump  sampler sampler_MainLightCookieTexture;
layout(set = 0, binding = 13) uniform mediump  sampler sampler_AdditionalLightsCookieAtlasTexture;
void main()
{
vec4 u_xlat0;
vec3 u_xlat1;
vec4 u_xlat2;
vec3 u_xlat3;
vec4 u_xlat4;
vec4 u_xlat5;
bool u_xlatb5;
vec3 u_xlat6;
bvec2 u_xlatb6;
vec4 u_xlat7;
bvec2 u_xlatb7;
vec2 u_xlat8;
vec3 u_xlat9;
vec3 u_xlat10;
vec4 u_xlat11;
vec4 u_xlat12;
vec3 u_xlat13;
vec3 u_xlat15;
float u_xlat17;
float u_xlat19;
bool u_xlatb19;
vec3 u_xlat22;
float u_xlat31;
vec2 u_xlat35;
int u_xlati35;
bvec2 u_xlatb35;
vec2 u_xlat39;
float u_xlat42;
uint u_xlatu42;
float u_xlat43;
uint u_xlatu43;
float u_xlat44;
uint u_xlatu44;
bool u_xlatb44;
float u_xlat45;
float u_xlat46;
int u_xlati46;
float u_xlat47;
float u_xlat48;
int u_xlati48;
uint u_xlatu48;
bool u_xlatb48;
int u_xlati49;
vec4 hlslcc_FragCoord = vec4(gl_FragCoord.xyz, 1.0/gl_FragCoord.w);
    u_xlat0 = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD0.xy, _GlobalMipBias.x);
    u_xlat1.x = texture(sampler2D(_MetallicTex, sampler_MetallicTex), vs_TEXCOORD0.xy, _GlobalMipBias.x).x;
    u_xlat15.x = dot(vs_TEXCOORD3.xyz, vs_TEXCOORD3.xyz);
    u_xlat15.x = inversesqrt(u_xlat15.x);
    u_xlat2.xyz = u_xlat15.xxx * vs_TEXCOORD3.xyz;
    u_xlat2.w = 1.0;
    u_xlat3.x = dot(unity_SHAr, u_xlat2);
    u_xlat3.y = dot(unity_SHAg, u_xlat2);
    u_xlat3.z = dot(unity_SHAb, u_xlat2);
    u_xlat4 = u_xlat2.yzzx * u_xlat2.xyzz;
    u_xlat5.x = dot(unity_SHBr, u_xlat4);
    u_xlat5.y = dot(unity_SHBg, u_xlat4);
    u_xlat5.z = dot(unity_SHBb, u_xlat4);
    u_xlat15.x = u_xlat2.y * u_xlat2.y;
    u_xlat15.x = u_xlat2.x * u_xlat2.x + (-u_xlat15.x);
    u_xlat15.xyz = unity_SHC.xyz * u_xlat15.xxx + u_xlat5.xyz;
    u_xlat15.xyz = u_xlat15.xyz + u_xlat3.xyz;
    u_xlat15.xyz = max(u_xlat15.xyz, vec3(0.0, 0.0, 0.0));
    u_xlat3.xy = vec2(1.0) / vec2(_ScaledScreenParams.xy);
    u_xlat3.xy = u_xlat3.xy * hlslcc_FragCoord.xy;
    u_xlat44 = u_xlat3.y * _ScaleBiasRt.x + _ScaleBiasRt.y;
    u_xlat3.z = (-u_xlat44) + 1.0;
    u_xlat44 = (-u_xlat1.x) * 0.959999979 + 0.959999979;
    u_xlat17 = (-u_xlat44) + 1.0;
    u_xlat4.xyz = u_xlat0.xyz * vec3(u_xlat44);
    u_xlat0.xyz = u_xlat0.xyz + vec3(-0.0399999991, -0.0399999991, -0.0399999991);
    u_xlat0.xyz = u_xlat1.xxx * u_xlat0.xyz + vec3(0.0399999991, 0.0399999991, 0.0399999991);
    u_xlat1.x = (-u_xlat0.w) + 1.0;
    u_xlat44 = u_xlat1.x * u_xlat1.x;
    u_xlat44 = max(u_xlat44, 0.0078125);
    u_xlat45 = u_xlat44 * u_xlat44;
    u_xlat42 = u_xlat0.w + u_xlat17;
    u_xlat42 = clamp(u_xlat42, 0.0, 1.0);
    u_xlat17 = u_xlat44 * 4.0 + 2.0;
    u_xlat3.x = texture(sampler2D(_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture), u_xlat3.xz, _GlobalMipBias.x).x;
    u_xlat31 = u_xlat3.x + -1.0;
    u_xlat31 = _AmbientOcclusionParam.w * u_xlat31 + 1.0;
    u_xlat3.x = min(u_xlat3.x, 1.0);
    vec3 txVec0 = vec3(vs_TEXCOORD8.xy,vs_TEXCOORD8.z);
    u_xlat46 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec0, 0.0);
    u_xlat5.x = (-_MainLightShadowParams.x) + 1.0;
    u_xlat46 = u_xlat46 * _MainLightShadowParams.x + u_xlat5.x;
    u_xlatb5 = 0.0>=vs_TEXCOORD8.z;
    u_xlatb19 = vs_TEXCOORD8.z>=1.0;
    u_xlatb5 = u_xlatb19 || u_xlatb5;
    u_xlat46 = (u_xlatb5) ? 1.0 : u_xlat46;
    u_xlat5.xyz = vs_TEXCOORD7.xyz + (-_WorldSpaceCameraPos.xyz);
    u_xlat5.x = dot(u_xlat5.xyz, u_xlat5.xyz);
    u_xlat5.x = u_xlat5.x * _MainLightShadowParams.z + _MainLightShadowParams.w;
    u_xlat5.x = clamp(u_xlat5.x, 0.0, 1.0);
    u_xlat19 = (-u_xlat46) + 1.0;
    u_xlat46 = u_xlat5.x * u_xlat19 + u_xlat46;
    u_xlatb5 = _MainLightCookieTextureFormat!=-1.0;
    if(u_xlatb5){
        u_xlat5.xy = vs_TEXCOORD7.yy * _MainLightWorldToLight[1].xy;
        u_xlat5.xy = _MainLightWorldToLight[0].xy * vs_TEXCOORD7.xx + u_xlat5.xy;
        u_xlat5.xy = _MainLightWorldToLight[2].xy * vs_TEXCOORD7.zz + u_xlat5.xy;
        u_xlat5.xy = u_xlat5.xy + _MainLightWorldToLight[3].xy;
        u_xlat5.xy = u_xlat5.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
        u_xlat5 = texture(sampler2D(_MainLightCookieTexture, sampler_MainLightCookieTexture), u_xlat5.xy, _GlobalMipBias.x);
        u_xlatb6.xy = equal(vec4(vec4(_MainLightCookieTextureFormat, _MainLightCookieTextureFormat, _MainLightCookieTextureFormat, _MainLightCookieTextureFormat)), vec4(0.0, 1.0, 0.0, 0.0)).xy;
        u_xlat47 = (u_xlatb6.y) ? u_xlat5.w : u_xlat5.x;
        u_xlat5.xyz = (u_xlatb6.x) ? u_xlat5.xyz : vec3(u_xlat47);
    } else {
        u_xlat5.x = float(1.0);
        u_xlat5.y = float(1.0);
        u_xlat5.z = float(1.0);
    }
    u_xlat5.xyz = u_xlat5.xyz * _MainLightColor.xyz;
    u_xlat5.xyz = vec3(u_xlat31) * u_xlat5.xyz;
    u_xlat6.x = vs_TEXCOORD3.w;
    u_xlat6.y = vs_TEXCOORD4.w;
    u_xlat6.z = vs_TEXCOORD5.w;
    u_xlat47 = dot((-u_xlat6.xyz), u_xlat2.xyz);
    u_xlat47 = u_xlat47 + u_xlat47;
    u_xlat7.xyz = u_xlat2.xyz * (-vec3(u_xlat47)) + (-u_xlat6.xyz);
    u_xlat47 = dot(u_xlat2.xyz, u_xlat6.xyz);
    u_xlat47 = clamp(u_xlat47, 0.0, 1.0);
    u_xlat47 = (-u_xlat47) + 1.0;
    u_xlat47 = u_xlat47 * u_xlat47;
    u_xlat47 = u_xlat47 * u_xlat47;
    u_xlat48 = (-u_xlat1.x) * 0.699999988 + 1.70000005;
    u_xlat1.x = u_xlat1.x * u_xlat48;
    u_xlat1.x = u_xlat1.x * 6.0;
    u_xlat7 = textureLod(samplerCube(unity_SpecCube0, samplerunity_SpecCube0), u_xlat7.xyz, u_xlat1.x);
    u_xlat1.x = u_xlat7.w + -1.0;
    u_xlat1.x = unity_SpecCube0_HDR.w * u_xlat1.x + 1.0;
    u_xlat1.x = max(u_xlat1.x, 0.0);
    u_xlat1.x = log2(u_xlat1.x);
    u_xlat1.x = u_xlat1.x * unity_SpecCube0_HDR.y;
    u_xlat1.x = exp2(u_xlat1.x);
    u_xlat1.x = u_xlat1.x * unity_SpecCube0_HDR.x;
    u_xlat7.xyz = u_xlat7.xyz * u_xlat1.xxx;
    u_xlat8.xy = vec2(u_xlat44) * vec2(u_xlat44) + vec2(-1.0, 1.0);
    u_xlat1.x = float(1.0) / u_xlat8.y;
    u_xlat22.xyz = (-u_xlat0.xyz) + vec3(u_xlat42);
    u_xlat22.xyz = vec3(u_xlat47) * u_xlat22.xyz + u_xlat0.xyz;
    u_xlat22.xyz = u_xlat1.xxx * u_xlat22.xyz;
    u_xlat7.xyz = u_xlat7.xyz * u_xlat22.xyz;
    u_xlat1.xyz = u_xlat15.xyz * u_xlat4.xyz + u_xlat7.xyz;
    u_xlat42 = u_xlat46 * unity_LightData.z;
    u_xlat43 = dot(u_xlat2.xyz, _MainLightPosition.xyz);
    u_xlat43 = clamp(u_xlat43, 0.0, 1.0);
    u_xlat42 = u_xlat42 * u_xlat43;
    u_xlat5.xyz = vec3(u_xlat42) * u_xlat5.xyz;
    u_xlat7.xyz = u_xlat6.xyz + _MainLightPosition.xyz;
    u_xlat42 = dot(u_xlat7.xyz, u_xlat7.xyz);
    u_xlat42 = max(u_xlat42, 1.17549435e-37);
    u_xlat42 = inversesqrt(u_xlat42);
    u_xlat7.xyz = vec3(u_xlat42) * u_xlat7.xyz;
    u_xlat42 = dot(u_xlat2.xyz, u_xlat7.xyz);
    u_xlat42 = clamp(u_xlat42, 0.0, 1.0);
    u_xlat43 = dot(_MainLightPosition.xyz, u_xlat7.xyz);
    u_xlat43 = clamp(u_xlat43, 0.0, 1.0);
    u_xlat42 = u_xlat42 * u_xlat42;
    u_xlat42 = u_xlat42 * u_xlat8.x + 1.00001001;
    u_xlat43 = u_xlat43 * u_xlat43;
    u_xlat42 = u_xlat42 * u_xlat42;
    u_xlat43 = max(u_xlat43, 0.100000001);
    u_xlat42 = u_xlat42 * u_xlat43;
    u_xlat42 = u_xlat17 * u_xlat42;
    u_xlat42 = u_xlat45 / u_xlat42;
    u_xlat7.xyz = u_xlat0.xyz * vec3(u_xlat42) + u_xlat4.xyz;
    u_xlat5.xyz = u_xlat5.xyz * u_xlat7.xyz;
    u_xlat42 = min(_AdditionalLightsCount.x, unity_LightData.y);
    u_xlatu42 =  uint(int(u_xlat42));
    u_xlatb7.xy = equal(vec4(vec4(_AdditionalLightsCookieAtlasTextureFormat, _AdditionalLightsCookieAtlasTextureFormat, _AdditionalLightsCookieAtlasTextureFormat, _AdditionalLightsCookieAtlasTextureFormat)), vec4(0.0, 1.0, 0.0, 0.0)).xy;
    u_xlat22.x = float(0.0);
    u_xlat22.y = float(0.0);
    u_xlat22.z = float(0.0);
    for(uint u_xlatu_loop_1 = 0u ; u_xlatu_loop_1<u_xlatu42 ; u_xlatu_loop_1++)
    {
        u_xlatu44 = u_xlatu_loop_1 >> (2u & uint(0x1F));
        u_xlati46 = int(u_xlatu_loop_1 & 3u);
        u_xlat44 = dot(unity_LightIndices[int(u_xlatu44)], uintBitsToFloat(ImmCB_0[u_xlati46]));
        u_xlatu44 =  uint(int(u_xlat44));
        u_xlat9.xyz = (-vs_TEXCOORD7.xyz) * _AdditionalLightsPosition[int(u_xlatu44)].www + _AdditionalLightsPosition[int(u_xlatu44)].xyz;
        u_xlat46 = dot(u_xlat9.xyz, u_xlat9.xyz);
        u_xlat46 = max(u_xlat46, 6.10351562e-05);
        u_xlat47 = inversesqrt(u_xlat46);
        u_xlat10.xyz = vec3(u_xlat47) * u_xlat9.xyz;
        u_xlat48 = float(1.0) / float(u_xlat46);
        u_xlat46 = u_xlat46 * _AdditionalLightsAttenuation[int(u_xlatu44)].x;
        u_xlat46 = (-u_xlat46) * u_xlat46 + 1.0;
        u_xlat46 = max(u_xlat46, 0.0);
        u_xlat46 = u_xlat46 * u_xlat46;
        u_xlat46 = u_xlat46 * u_xlat48;
        u_xlat48 = dot(_AdditionalLightsSpotDir[int(u_xlatu44)].xyz, u_xlat10.xyz);
        u_xlat48 = u_xlat48 * _AdditionalLightsAttenuation[int(u_xlatu44)].z + _AdditionalLightsAttenuation[int(u_xlatu44)].w;
        u_xlat48 = clamp(u_xlat48, 0.0, 1.0);
        u_xlat48 = u_xlat48 * u_xlat48;
        u_xlat46 = u_xlat46 * u_xlat48;
        u_xlatu48 = u_xlatu44 >> (5u & uint(0x1F));
        u_xlati35 = 1 << (int(u_xlatu44) & int(0x1F));
        u_xlati48 = int(uint(u_xlati35) & floatBitsToUint(_AdditionalLightsCookieEnableBits[int(u_xlatu48)]));
        if(u_xlati48 != 0) {
            u_xlati48 = int(_AdditionalLightsLightTypes[int(u_xlatu44)]);
            u_xlati35 = (u_xlati48 != 0) ? 0 : 1;
            u_xlati49 = int(u_xlatu44) << (2 & int(0x1F));
            if(u_xlati35 != 0) {
                u_xlat11.xyz = vs_TEXCOORD7.yyy * _AdditionalLightsWorldToLights[(u_xlati49 + 1) / 4][(u_xlati49 + 1) % 4].xyw;
                u_xlat11.xyz = _AdditionalLightsWorldToLights[u_xlati49 / 4][u_xlati49 % 4].xyw * vs_TEXCOORD7.xxx + u_xlat11.xyz;
                u_xlat11.xyz = _AdditionalLightsWorldToLights[(u_xlati49 + 2) / 4][(u_xlati49 + 2) % 4].xyw * vs_TEXCOORD7.zzz + u_xlat11.xyz;
                u_xlat11.xyz = u_xlat11.xyz + _AdditionalLightsWorldToLights[(u_xlati49 + 3) / 4][(u_xlati49 + 3) % 4].xyw;
                u_xlat11.xy = u_xlat11.xy / u_xlat11.zz;
                u_xlat11.xy = u_xlat11.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
                u_xlat11.xy = clamp(u_xlat11.xy, 0.0, 1.0);
                u_xlat11.xy = _AdditionalLightsCookieAtlasUVRects[int(u_xlatu44)].xy * u_xlat11.xy + _AdditionalLightsCookieAtlasUVRects[int(u_xlatu44)].zw;
            } else {
                u_xlatb48 = u_xlati48==1;
                u_xlati48 = u_xlatb48 ? 1 : int(0);
                if(u_xlati48 != 0) {
                    u_xlat39.xy = vs_TEXCOORD7.yy * _AdditionalLightsWorldToLights[(u_xlati49 + 1) / 4][(u_xlati49 + 1) % 4].xy;
                    u_xlat39.xy = _AdditionalLightsWorldToLights[u_xlati49 / 4][u_xlati49 % 4].xy * vs_TEXCOORD7.xx + u_xlat39.xy;
                    u_xlat39.xy = _AdditionalLightsWorldToLights[(u_xlati49 + 2) / 4][(u_xlati49 + 2) % 4].xy * vs_TEXCOORD7.zz + u_xlat39.xy;
                    u_xlat39.xy = u_xlat39.xy + _AdditionalLightsWorldToLights[(u_xlati49 + 3) / 4][(u_xlati49 + 3) % 4].xy;
                    u_xlat39.xy = u_xlat39.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
                    u_xlat39.xy = fract(u_xlat39.xy);
                    u_xlat11.xy = _AdditionalLightsCookieAtlasUVRects[int(u_xlatu44)].xy * u_xlat39.xy + _AdditionalLightsCookieAtlasUVRects[int(u_xlatu44)].zw;
                } else {
                    u_xlat12 = vs_TEXCOORD7.yyyy * _AdditionalLightsWorldToLights[(u_xlati49 + 1) / 4][(u_xlati49 + 1) % 4];
                    u_xlat12 = _AdditionalLightsWorldToLights[u_xlati49 / 4][u_xlati49 % 4] * vs_TEXCOORD7.xxxx + u_xlat12;
                    u_xlat12 = _AdditionalLightsWorldToLights[(u_xlati49 + 2) / 4][(u_xlati49 + 2) % 4] * vs_TEXCOORD7.zzzz + u_xlat12;
                    u_xlat12 = u_xlat12 + _AdditionalLightsWorldToLights[(u_xlati49 + 3) / 4][(u_xlati49 + 3) % 4];
                    u_xlat12.xyz = u_xlat12.xyz / u_xlat12.www;
                    u_xlat48 = dot(u_xlat12.xyz, u_xlat12.xyz);
                    u_xlat48 = inversesqrt(u_xlat48);
                    u_xlat12.xyz = vec3(u_xlat48) * u_xlat12.xyz;
                    u_xlat48 = dot(abs(u_xlat12.xyz), vec3(1.0, 1.0, 1.0));
                    u_xlat48 = max(u_xlat48, 9.99999997e-07);
                    u_xlat48 = float(1.0) / float(u_xlat48);
                    u_xlat13.xyz = vec3(u_xlat48) * u_xlat12.zxy;
                    u_xlat13.x = (-u_xlat13.x);
                    u_xlat13.x = clamp(u_xlat13.x, 0.0, 1.0);
                    u_xlatb35.xy = greaterThanEqual(u_xlat13.yzyz, vec4(0.0, 0.0, 0.0, 0.0)).xy;
                    u_xlat35.x = (u_xlatb35.x) ? u_xlat13.x : (-u_xlat13.x);
                    u_xlat35.y = (u_xlatb35.y) ? u_xlat13.x : (-u_xlat13.x);
                    u_xlat35.xy = u_xlat12.xy * vec2(u_xlat48) + u_xlat35.xy;
                    u_xlat35.xy = u_xlat35.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
                    u_xlat35.xy = clamp(u_xlat35.xy, 0.0, 1.0);
                    u_xlat11.xy = _AdditionalLightsCookieAtlasUVRects[int(u_xlatu44)].xy * u_xlat35.xy + _AdditionalLightsCookieAtlasUVRects[int(u_xlatu44)].zw;
                }
            }
            u_xlat11 = texture(sampler2D(_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture), u_xlat11.xy, _GlobalMipBias.x);
            u_xlat48 = (u_xlatb7.y) ? u_xlat11.w : u_xlat11.x;
            u_xlat11.xyz = (u_xlatb7.x) ? u_xlat11.xyz : vec3(u_xlat48);
        } else {
            u_xlat11.x = float(1.0);
            u_xlat11.y = float(1.0);
            u_xlat11.z = float(1.0);
        }
        u_xlat11.xyz = u_xlat11.xyz * _AdditionalLightsColor[int(u_xlatu44)].xyz;
        u_xlat11.xyz = vec3(u_xlat31) * u_xlat11.xyz;
        u_xlat44 = dot(u_xlat2.xyz, u_xlat10.xyz);
        u_xlat44 = clamp(u_xlat44, 0.0, 1.0);
        u_xlat44 = u_xlat44 * u_xlat46;
        u_xlat11.xyz = vec3(u_xlat44) * u_xlat11.xyz;
        u_xlat9.xyz = u_xlat9.xyz * vec3(u_xlat47) + u_xlat6.xyz;
        u_xlat44 = dot(u_xlat9.xyz, u_xlat9.xyz);
        u_xlat44 = max(u_xlat44, 1.17549435e-37);
        u_xlat44 = inversesqrt(u_xlat44);
        u_xlat9.xyz = vec3(u_xlat44) * u_xlat9.xyz;
        u_xlat44 = dot(u_xlat2.xyz, u_xlat9.xyz);
        u_xlat44 = clamp(u_xlat44, 0.0, 1.0);
        u_xlat46 = dot(u_xlat10.xyz, u_xlat9.xyz);
        u_xlat46 = clamp(u_xlat46, 0.0, 1.0);
        u_xlat44 = u_xlat44 * u_xlat44;
        u_xlat44 = u_xlat44 * u_xlat8.x + 1.00001001;
        u_xlat46 = u_xlat46 * u_xlat46;
        u_xlat44 = u_xlat44 * u_xlat44;
        u_xlat46 = max(u_xlat46, 0.100000001);
        u_xlat44 = u_xlat44 * u_xlat46;
        u_xlat44 = u_xlat17 * u_xlat44;
        u_xlat44 = u_xlat45 / u_xlat44;
        u_xlat9.xyz = u_xlat0.xyz * vec3(u_xlat44) + u_xlat4.xyz;
        u_xlat22.xyz = u_xlat9.xyz * u_xlat11.xyz + u_xlat22.xyz;
    }
    u_xlat0.xyz = u_xlat1.xyz * u_xlat3.xxx + u_xlat5.xyz;
    SV_Target0.xyz = u_xlat22.xyz + u_xlat0.xyz;
    SV_Target0.w = 1.0;
    return;
}

