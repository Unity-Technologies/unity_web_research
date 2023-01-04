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
	vec4 _ScaledScreenParams;
	vec2 _GlobalMipBias;
	float _AlphaToMaskAvailable;
	vec4 _MainLightPosition;
	vec4 _MainLightColor;
	vec4 _AmbientOcclusionParam;
	vec4 _AdditionalLightsCount;
	uint _RenderingLayerMaxInt;
	float _RenderingLayerRcpMaxInt;
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
layout(set = 1, binding = 6, std140) uniform UnityPerMaterial {
	vec4 Texture2D_B222E8F_TexelSize;
	vec4 Color_C30C7CA3;
	vec4 Texture2D_D9BFD5F1_TexelSize;
};
layout(set = 0, binding = 0) uniform mediump textureCube unity_SpecCube0;
layout(set = 0, binding = 1) uniform mediump texture2D _ScreenSpaceOcclusionTexture;
layout(set = 0, binding = 2) uniform mediump texture2D _MainLightShadowmapTexture;
layout(set = 0, binding = 3) uniform mediump texture2D _MainLightCookieTexture;
layout(set = 0, binding = 4) uniform mediump texture2D _AdditionalLightsCookieAtlasTexture;
layout(set = 0, binding = 5) uniform mediump texture2D Texture2D_B222E8F;
layout(set = 0, binding = 6) uniform mediump texture2D Texture2D_D9BFD5F1;
layout(location = 0) in highp vec3 vs_INTERP0;
layout(location = 1) in highp vec3 vs_INTERP1;
layout(location = 2) in highp vec4 vs_INTERP2;
layout(location = 3) in highp vec4 vs_INTERP3;
layout(location = 4) in highp vec4 vs_INTERP4;
layout(location = 5) in highp vec4 vs_INTERP9;
layout(location = 0) out highp vec4 SV_Target0;
layout(location = 1) out highp vec4 SV_Target1;
layout(set = 0, binding = 7) uniform mediump  sampler samplerunity_SpecCube0;
layout(set = 0, binding = 8) uniform mediump  sampler sampler_ScreenSpaceOcclusionTexture;
layout(set = 0, binding = 9) uniform mediump  samplerShadow sampler_MainLightShadowmapTexture;
layout(set = 0, binding = 10) uniform mediump  sampler sampler_MainLightCookieTexture;
layout(set = 0, binding = 11) uniform mediump  sampler sampler_AdditionalLightsCookieAtlasTexture;
layout(set = 0, binding = 12) uniform mediump  sampler samplerTexture2D_B222E8F;
layout(set = 0, binding = 13) uniform mediump  sampler samplerTexture2D_D9BFD5F1;
void main()
{
vec3 u_xlat0;
uint u_xlatu0;
vec4 u_xlat1;
bvec3 u_xlatb1;
vec3 u_xlat2;
vec4 u_xlat3;
bvec3 u_xlatb3;
vec4 u_xlat4;
bool u_xlatb4;
vec3 u_xlat5;
vec3 u_xlat6;
vec4 u_xlat7;
vec4 u_xlat8;
uint u_xlatu8;
bool u_xlatb8;
vec4 u_xlat9;
vec3 u_xlat10;
vec4 u_xlat11;
vec4 u_xlat12;
vec3 u_xlat13;
vec3 u_xlat14;
float u_xlat15;
bool u_xlatb15;
vec3 u_xlat17;
bool u_xlatb18;
vec3 u_xlat20;
bvec2 u_xlatb20;
vec3 u_xlat22;
int u_xlati22;
float u_xlat23;
float u_xlat29;
float u_xlat31;
float u_xlat34;
bool u_xlatb34;
vec2 u_xlat37;
int u_xlati37;
uint u_xlatu37;
bool u_xlatb37;
vec2 u_xlat39;
bvec2 u_xlatb39;
float u_xlat42;
bool u_xlatb42;
float u_xlat44;
uint u_xlatu44;
float u_xlat45;
float u_xlat46;
float u_xlat47;
float u_xlat49;
uint u_xlatu49;
float u_xlat50;
int u_xlati51;
int u_xlati52;
vec4 hlslcc_FragCoord = vec4(gl_FragCoord.xyz, 1.0/gl_FragCoord.w);
    u_xlat0.x = dot(vs_INTERP1.xyz, vs_INTERP1.xyz);
    u_xlat0.x = sqrt(u_xlat0.x);
    u_xlat0.x = float(1.0) / u_xlat0.x;
    u_xlat0.xyz = u_xlat0.xxx * vs_INTERP1.xyz;
    u_xlat1 = texture(sampler2D(Texture2D_B222E8F, samplerTexture2D_B222E8F), vs_INTERP3.xy, _GlobalMipBias.x);
    u_xlat2.xyz = u_xlat1.xyz * Color_C30C7CA3.xyz;
    u_xlat3 = texture(sampler2D(Texture2D_D9BFD5F1, samplerTexture2D_D9BFD5F1), vs_INTERP3.xy, _GlobalMipBias.x).wxyz;
    u_xlat4 = u_xlat3.yzwx * vec4(2.0, 2.0, 2.0, 2.0) + vec4(-1.0, -1.0, -1.0, -1.0);
    u_xlat42 = dot(u_xlat4, u_xlat4);
    u_xlat42 = inversesqrt(u_xlat42);
    u_xlat17.xyz = vec3(u_xlat42) * u_xlat4.xyz;
    u_xlat42 = vs_INTERP4.y * 200.0;
    u_xlat42 = min(u_xlat42, 1.0);
    u_xlat1.xyz = vec3(u_xlat42) * u_xlat1.xyz;
    u_xlat4.xyz = vs_INTERP0.yyy * _MainLightWorldToShadow[1 / 4][1 % 4].xyz;
    u_xlat4.xyz = _MainLightWorldToShadow[0 / 4][0 % 4].xyz * vs_INTERP0.xxx + u_xlat4.xyz;
    u_xlat4.xyz = _MainLightWorldToShadow[2 / 4][2 % 4].xyz * vs_INTERP0.zzz + u_xlat4.xyz;
    u_xlat4.xyz = u_xlat4.xyz + _MainLightWorldToShadow[3 / 4][3 % 4].xyz;
    vec3 txVec0 = vec3(u_xlat4.xy,u_xlat4.z);
    u_xlat42 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec0, 0.0);
    u_xlat44 = (-_MainLightShadowParams.x) + 1.0;
    u_xlat42 = u_xlat42 * _MainLightShadowParams.x + u_xlat44;
    u_xlatb4 = 0.0>=u_xlat4.z;
    u_xlatb18 = u_xlat4.z>=1.0;
    u_xlatb4 = u_xlatb18 || u_xlatb4;
    u_xlat42 = (u_xlatb4) ? 1.0 : u_xlat42;
    u_xlat0.x = dot(u_xlat0.xyz, (-_MainLightPosition.xyz));
    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
    u_xlat14.xyz = vec3(u_xlat42) * _MainLightColor.xyz;
    u_xlat0.xyz = u_xlat14.xyz * u_xlat0.xxx;
    u_xlat0.xyz = u_xlat0.xyz * u_xlat1.xyz;
    u_xlatb42 = u_xlat1.w>=0.400000006;
    u_xlat42 = u_xlatb42 ? u_xlat1.w : float(0.0);
    u_xlat1.x = u_xlat1.w + -0.400000006;
    u_xlat15 = dFdxCoarse(u_xlat1.w);
    u_xlat29 = dFdyCoarse(u_xlat1.w);
    u_xlat15 = abs(u_xlat29) + abs(u_xlat15);
    u_xlat15 = max(u_xlat15, 9.99999975e-05);
    u_xlat1.x = u_xlat1.x / u_xlat15;
    u_xlat1.x = u_xlat1.x + 0.5;
    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
    u_xlatb15 = _AlphaToMaskAvailable!=0.0;
    u_xlat42 = (u_xlatb15) ? u_xlat1.x : u_xlat42;
    u_xlat1.x = u_xlat42 + -9.99999975e-05;
    u_xlatb1.x = u_xlat1.x<0.0;
    if(((int(u_xlatb1.x) * int(0xffffffffu)))!=0){discard;}
    u_xlatb1.x = 0.0<vs_INTERP2.w;
    u_xlatb1.z = unity_WorldTransformParams.w>=0.0;
    u_xlat1.x = (u_xlatb1.x) ? float(1.0) : float(-1.0);
    u_xlat1.z = (u_xlatb1.z) ? float(1.0) : float(-1.0);
    u_xlat1.x = u_xlat1.z * u_xlat1.x;
    u_xlat4.xyz = vs_INTERP1.zxy * vs_INTERP2.yzx;
    u_xlat4.xyz = vs_INTERP1.yzx * vs_INTERP2.zxy + (-u_xlat4.xyz);
    u_xlat1.xzw = u_xlat1.xxx * u_xlat4.xyz;
    u_xlat1.xzw = u_xlat1.xzw * u_xlat17.yyy;
    u_xlat1.xzw = u_xlat17.xxx * vs_INTERP2.xyz + u_xlat1.xzw;
    u_xlat1.xzw = u_xlat17.zzz * vs_INTERP1.xyz + u_xlat1.xzw;
    u_xlat17.x = dot(u_xlat1.xzw, u_xlat1.xzw);
    u_xlat17.x = inversesqrt(u_xlat17.x);
    u_xlat4.xyz = u_xlat1.xzw * u_xlat17.xxx;
    u_xlatb1.x = unity_OrthoParams.w==0.0;
    u_xlat17.xyz = (-vs_INTERP0.xyz) + _WorldSpaceCameraPos.xyz;
    u_xlat29 = dot(u_xlat17.xyz, u_xlat17.xyz);
    u_xlat29 = inversesqrt(u_xlat29);
    u_xlat17.xyz = vec3(u_xlat29) * u_xlat17.xyz;
    u_xlat5.x = (u_xlatb1.x) ? u_xlat17.x : unity_MatrixV[0].z;
    u_xlat5.y = (u_xlatb1.x) ? u_xlat17.y : unity_MatrixV[1].z;
    u_xlat5.z = (u_xlatb1.x) ? u_xlat17.z : unity_MatrixV[2].z;
    u_xlat4.w = 1.0;
    u_xlat6.x = dot(unity_SHAr, u_xlat4);
    u_xlat6.y = dot(unity_SHAg, u_xlat4);
    u_xlat6.z = dot(unity_SHAb, u_xlat4);
    u_xlat7 = u_xlat4.yzzx * u_xlat4.xyzz;
    u_xlat8.x = dot(unity_SHBr, u_xlat7);
    u_xlat8.y = dot(unity_SHBg, u_xlat7);
    u_xlat8.z = dot(unity_SHBb, u_xlat7);
    u_xlat1.x = u_xlat4.y * u_xlat4.y;
    u_xlat1.x = u_xlat4.x * u_xlat4.x + (-u_xlat1.x);
    u_xlat1.xzw = unity_SHC.xyz * u_xlat1.xxx + u_xlat8.xyz;
    u_xlat1.xzw = u_xlat1.xzw + u_xlat6.xyz;
    u_xlat1.xzw = max(u_xlat1.xzw, vec3(0.0, 0.0, 0.0));
    u_xlat17.xy = vec2(1.0) / vec2(_ScaledScreenParams.xy);
    u_xlat6.xy = u_xlat17.xy * hlslcc_FragCoord.xy;
    u_xlat17.x = u_xlat6.y * _ScaleBiasRt.x + _ScaleBiasRt.y;
    u_xlat6.z = (-u_xlat17.x) + 1.0;
    u_xlat3.x = u_xlat3.x;
    u_xlat3.x = clamp(u_xlat3.x, 0.0, 1.0);
    u_xlat42 = min(u_xlat42, 1.0);
    u_xlat2.xyz = u_xlat2.xyz * vec3(0.959999979, 0.959999979, 0.959999979);
    u_xlat17.x = (-u_xlat3.x) + 1.0;
    u_xlat31 = u_xlat17.x * u_xlat17.x;
    u_xlat31 = max(u_xlat31, 0.0078125);
    u_xlat45 = u_xlat31 * u_xlat31;
    u_xlat3.x = u_xlat3.x + 0.0400000215;
    u_xlat3.x = min(u_xlat3.x, 1.0);
    u_xlat46 = u_xlat31 * 4.0 + 2.0;
    u_xlat47 = texture(sampler2D(_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture), u_xlat6.xz, _GlobalMipBias.x).x;
    u_xlat6.x = u_xlat47 + -1.0;
    u_xlat6.x = _AmbientOcclusionParam.w * u_xlat6.x + 1.0;
    u_xlat47 = min(u_xlat47, vs_INTERP4.w);
    vec3 txVec1 = vec3(vs_INTERP9.xy,vs_INTERP9.z);
    u_xlat20.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec1, 0.0);
    u_xlat44 = u_xlat20.x * _MainLightShadowParams.x + u_xlat44;
    u_xlatb20.x = 0.0>=vs_INTERP9.z;
    u_xlatb34 = vs_INTERP9.z>=1.0;
    u_xlatb20.x = u_xlatb34 || u_xlatb20.x;
    u_xlat44 = (u_xlatb20.x) ? 1.0 : u_xlat44;
    u_xlat20.xyz = vs_INTERP0.xyz + (-_WorldSpaceCameraPos.xyz);
    u_xlat20.x = dot(u_xlat20.xyz, u_xlat20.xyz);
    u_xlat20.x = u_xlat20.x * _MainLightShadowParams.z + _MainLightShadowParams.w;
    u_xlat20.x = clamp(u_xlat20.x, 0.0, 1.0);
    u_xlat34 = (-u_xlat44) + 1.0;
    u_xlat44 = u_xlat20.x * u_xlat34 + u_xlat44;
    u_xlatb20.x = _MainLightCookieTextureFormat!=-1.0;
    if(u_xlatb20.x){
        u_xlat20.xy = vs_INTERP0.yy * _MainLightWorldToLight[1].xy;
        u_xlat20.xy = _MainLightWorldToLight[0].xy * vs_INTERP0.xx + u_xlat20.xy;
        u_xlat20.xy = _MainLightWorldToLight[2].xy * vs_INTERP0.zz + u_xlat20.xy;
        u_xlat20.xy = u_xlat20.xy + _MainLightWorldToLight[3].xy;
        u_xlat20.xy = u_xlat20.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
        u_xlat7 = texture(sampler2D(_MainLightCookieTexture, sampler_MainLightCookieTexture), u_xlat20.xy, _GlobalMipBias.x);
        u_xlatb20.xy = equal(vec4(vec4(_MainLightCookieTextureFormat, _MainLightCookieTextureFormat, _MainLightCookieTextureFormat, _MainLightCookieTextureFormat)), vec4(0.0, 1.0, 0.0, 0.0)).xy;
        u_xlat34 = (u_xlatb20.y) ? u_xlat7.w : u_xlat7.x;
        u_xlat20.xyz = (u_xlatb20.x) ? u_xlat7.xyz : vec3(u_xlat34);
    } else {
        u_xlat20.x = float(1.0);
        u_xlat20.y = float(1.0);
        u_xlat20.z = float(1.0);
    }
    u_xlat20.xyz = u_xlat20.xyz * _MainLightColor.xyz;
    u_xlat20.xyz = u_xlat6.xxx * u_xlat20.xyz;
    u_xlat7.x = dot((-u_xlat5.xyz), u_xlat4.xyz);
    u_xlat7.x = u_xlat7.x + u_xlat7.x;
    u_xlat7.xyz = u_xlat4.xyz * (-u_xlat7.xxx) + (-u_xlat5.xyz);
    u_xlat49 = dot(u_xlat4.xyz, u_xlat5.xyz);
    u_xlat49 = clamp(u_xlat49, 0.0, 1.0);
    u_xlat49 = (-u_xlat49) + 1.0;
    u_xlat49 = u_xlat49 * u_xlat49;
    u_xlat49 = u_xlat49 * u_xlat49;
    u_xlat8.x = (-u_xlat17.x) * 0.699999988 + 1.70000005;
    u_xlat17.x = u_xlat17.x * u_xlat8.x;
    u_xlat17.x = u_xlat17.x * 6.0;
    u_xlat8 = textureLod(samplerCube(unity_SpecCube0, samplerunity_SpecCube0), u_xlat7.xyz, u_xlat17.x);
    u_xlat17.x = u_xlat8.w + -1.0;
    u_xlat17.x = unity_SpecCube0_HDR.w * u_xlat17.x + 1.0;
    u_xlat17.x = max(u_xlat17.x, 0.0);
    u_xlat17.x = log2(u_xlat17.x);
    u_xlat17.x = u_xlat17.x * unity_SpecCube0_HDR.y;
    u_xlat17.x = exp2(u_xlat17.x);
    u_xlat17.x = u_xlat17.x * unity_SpecCube0_HDR.x;
    u_xlat7.xyz = u_xlat8.xyz * u_xlat17.xxx;
    u_xlat17.xy = vec2(u_xlat31) * vec2(u_xlat31) + vec2(-1.0, 1.0);
    u_xlat31 = float(1.0) / u_xlat17.y;
    u_xlat3.x = u_xlat3.x + -0.0399999991;
    u_xlat3.x = u_xlat49 * u_xlat3.x + 0.0399999991;
    u_xlat3.x = u_xlat3.x * u_xlat31;
    u_xlat7.xyz = u_xlat3.xxx * u_xlat7.xyz;
    u_xlat1.xzw = u_xlat1.xzw * u_xlat2.xyz + u_xlat7.xyz;
    u_xlat44 = u_xlat44 * unity_LightData.z;
    u_xlat3.x = dot(u_xlat4.xyz, _MainLightPosition.xyz);
    u_xlat3.x = clamp(u_xlat3.x, 0.0, 1.0);
    u_xlat44 = u_xlat44 * u_xlat3.x;
    u_xlat20.xyz = vec3(u_xlat44) * u_xlat20.xyz;
    u_xlat7.xyz = u_xlat5.xyz + _MainLightPosition.xyz;
    u_xlat44 = dot(u_xlat7.xyz, u_xlat7.xyz);
    u_xlat44 = max(u_xlat44, 1.17549435e-37);
    u_xlat44 = inversesqrt(u_xlat44);
    u_xlat7.xyz = vec3(u_xlat44) * u_xlat7.xyz;
    u_xlat44 = dot(u_xlat4.xyz, u_xlat7.xyz);
    u_xlat44 = clamp(u_xlat44, 0.0, 1.0);
    u_xlat3.x = dot(_MainLightPosition.xyz, u_xlat7.xyz);
    u_xlat3.x = clamp(u_xlat3.x, 0.0, 1.0);
    u_xlat44 = u_xlat44 * u_xlat44;
    u_xlat44 = u_xlat44 * u_xlat17.x + 1.00001001;
    u_xlat3.x = u_xlat3.x * u_xlat3.x;
    u_xlat44 = u_xlat44 * u_xlat44;
    u_xlat3.x = max(u_xlat3.x, 0.100000001);
    u_xlat44 = u_xlat44 * u_xlat3.x;
    u_xlat44 = u_xlat46 * u_xlat44;
    u_xlat44 = u_xlat45 / u_xlat44;
    u_xlat7.xyz = vec3(u_xlat44) * vec3(0.0399999991, 0.0399999991, 0.0399999991) + u_xlat2.xyz;
    u_xlat20.xyz = u_xlat20.xyz * u_xlat7.xyz;
    u_xlat44 = min(_AdditionalLightsCount.x, unity_LightData.y);
    u_xlatu44 =  uint(int(u_xlat44));
    u_xlatb3.xz = equal(vec4(vec4(_AdditionalLightsCookieAtlasTextureFormat, _AdditionalLightsCookieAtlasTextureFormat, _AdditionalLightsCookieAtlasTextureFormat, _AdditionalLightsCookieAtlasTextureFormat)), vec4(0.0, 0.0, 1.0, 0.0)).xz;
    u_xlat7.x = float(0.0);
    u_xlat7.y = float(0.0);
    u_xlat7.z = float(0.0);
    for(uint u_xlatu_loop_1 = uint(0u) ; u_xlatu_loop_1<u_xlatu44 ; u_xlatu_loop_1++)
    {
        u_xlatu8 = u_xlatu_loop_1 >> (2u & uint(0x1F));
        u_xlati22 = int(u_xlatu_loop_1 & 3u);
        u_xlat8.x = dot(unity_LightIndices[int(u_xlatu8)], uintBitsToFloat(ImmCB_0[u_xlati22]));
        u_xlatu8 =  uint(int(u_xlat8.x));
        u_xlat22.xyz = (-vs_INTERP0.xyz) * _AdditionalLightsPosition[int(u_xlatu8)].www + _AdditionalLightsPosition[int(u_xlatu8)].xyz;
        u_xlat9.x = dot(u_xlat22.xyz, u_xlat22.xyz);
        u_xlat9.x = max(u_xlat9.x, 6.10351562e-05);
        u_xlat23 = inversesqrt(u_xlat9.x);
        u_xlat10.xyz = u_xlat22.xyz * vec3(u_xlat23);
        u_xlat37.x = float(1.0) / float(u_xlat9.x);
        u_xlat9.x = u_xlat9.x * _AdditionalLightsAttenuation[int(u_xlatu8)].x;
        u_xlat9.x = (-u_xlat9.x) * u_xlat9.x + 1.0;
        u_xlat9.x = max(u_xlat9.x, 0.0);
        u_xlat9.x = u_xlat9.x * u_xlat9.x;
        u_xlat9.x = u_xlat9.x * u_xlat37.x;
        u_xlat37.x = dot(_AdditionalLightsSpotDir[int(u_xlatu8)].xyz, u_xlat10.xyz);
        u_xlat37.x = u_xlat37.x * _AdditionalLightsAttenuation[int(u_xlatu8)].z + _AdditionalLightsAttenuation[int(u_xlatu8)].w;
        u_xlat37.x = clamp(u_xlat37.x, 0.0, 1.0);
        u_xlat37.x = u_xlat37.x * u_xlat37.x;
        u_xlat9.x = u_xlat37.x * u_xlat9.x;
        u_xlatu37 = u_xlatu8 >> (5u & uint(0x1F));
        u_xlati51 = 1 << (int(u_xlatu8) & int(0x1F));
        u_xlati37 = int(uint(u_xlati51) & floatBitsToUint(_AdditionalLightsCookieEnableBits[int(u_xlatu37)]));
        if(u_xlati37 != 0) {
            u_xlati37 = int(_AdditionalLightsLightTypes[int(u_xlatu8)]);
            u_xlati51 = (u_xlati37 != 0) ? 0 : 1;
            u_xlati52 = int(u_xlatu8) << (2 & int(0x1F));
            if(u_xlati51 != 0) {
                u_xlat11.xyz = vs_INTERP0.yyy * _AdditionalLightsWorldToLights[(u_xlati52 + 1) / 4][(u_xlati52 + 1) % 4].xyw;
                u_xlat11.xyz = _AdditionalLightsWorldToLights[u_xlati52 / 4][u_xlati52 % 4].xyw * vs_INTERP0.xxx + u_xlat11.xyz;
                u_xlat11.xyz = _AdditionalLightsWorldToLights[(u_xlati52 + 2) / 4][(u_xlati52 + 2) % 4].xyw * vs_INTERP0.zzz + u_xlat11.xyz;
                u_xlat11.xyz = u_xlat11.xyz + _AdditionalLightsWorldToLights[(u_xlati52 + 3) / 4][(u_xlati52 + 3) % 4].xyw;
                u_xlat11.xy = u_xlat11.xy / u_xlat11.zz;
                u_xlat11.xy = u_xlat11.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
                u_xlat11.xy = clamp(u_xlat11.xy, 0.0, 1.0);
                u_xlat11.xy = _AdditionalLightsCookieAtlasUVRects[int(u_xlatu8)].xy * u_xlat11.xy + _AdditionalLightsCookieAtlasUVRects[int(u_xlatu8)].zw;
            } else {
                u_xlatb37 = u_xlati37==1;
                u_xlati37 = u_xlatb37 ? 1 : int(0);
                if(u_xlati37 != 0) {
                    u_xlat37.xy = vs_INTERP0.yy * _AdditionalLightsWorldToLights[(u_xlati52 + 1) / 4][(u_xlati52 + 1) % 4].xy;
                    u_xlat37.xy = _AdditionalLightsWorldToLights[u_xlati52 / 4][u_xlati52 % 4].xy * vs_INTERP0.xx + u_xlat37.xy;
                    u_xlat37.xy = _AdditionalLightsWorldToLights[(u_xlati52 + 2) / 4][(u_xlati52 + 2) % 4].xy * vs_INTERP0.zz + u_xlat37.xy;
                    u_xlat37.xy = u_xlat37.xy + _AdditionalLightsWorldToLights[(u_xlati52 + 3) / 4][(u_xlati52 + 3) % 4].xy;
                    u_xlat37.xy = u_xlat37.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
                    u_xlat37.xy = fract(u_xlat37.xy);
                    u_xlat11.xy = _AdditionalLightsCookieAtlasUVRects[int(u_xlatu8)].xy * u_xlat37.xy + _AdditionalLightsCookieAtlasUVRects[int(u_xlatu8)].zw;
                } else {
                    u_xlat12 = vs_INTERP0.yyyy * _AdditionalLightsWorldToLights[(u_xlati52 + 1) / 4][(u_xlati52 + 1) % 4];
                    u_xlat12 = _AdditionalLightsWorldToLights[u_xlati52 / 4][u_xlati52 % 4] * vs_INTERP0.xxxx + u_xlat12;
                    u_xlat12 = _AdditionalLightsWorldToLights[(u_xlati52 + 2) / 4][(u_xlati52 + 2) % 4] * vs_INTERP0.zzzz + u_xlat12;
                    u_xlat12 = u_xlat12 + _AdditionalLightsWorldToLights[(u_xlati52 + 3) / 4][(u_xlati52 + 3) % 4];
                    u_xlat12.xyz = u_xlat12.xyz / u_xlat12.www;
                    u_xlat37.x = dot(u_xlat12.xyz, u_xlat12.xyz);
                    u_xlat37.x = inversesqrt(u_xlat37.x);
                    u_xlat12.xyz = u_xlat37.xxx * u_xlat12.xyz;
                    u_xlat37.x = dot(abs(u_xlat12.xyz), vec3(1.0, 1.0, 1.0));
                    u_xlat37.x = max(u_xlat37.x, 9.99999997e-07);
                    u_xlat37.x = float(1.0) / float(u_xlat37.x);
                    u_xlat13.xyz = u_xlat37.xxx * u_xlat12.zxy;
                    u_xlat13.x = (-u_xlat13.x);
                    u_xlat13.x = clamp(u_xlat13.x, 0.0, 1.0);
                    u_xlatb39.xy = greaterThanEqual(u_xlat13.yzyz, vec4(0.0, 0.0, 0.0, 0.0)).xy;
                    u_xlat39.x = (u_xlatb39.x) ? u_xlat13.x : (-u_xlat13.x);
                    u_xlat39.y = (u_xlatb39.y) ? u_xlat13.x : (-u_xlat13.x);
                    u_xlat37.xy = u_xlat12.xy * u_xlat37.xx + u_xlat39.xy;
                    u_xlat37.xy = u_xlat37.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
                    u_xlat37.xy = clamp(u_xlat37.xy, 0.0, 1.0);
                    u_xlat11.xy = _AdditionalLightsCookieAtlasUVRects[int(u_xlatu8)].xy * u_xlat37.xy + _AdditionalLightsCookieAtlasUVRects[int(u_xlatu8)].zw;
                }
            }
            u_xlat11 = texture(sampler2D(_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture), u_xlat11.xy, _GlobalMipBias.x);
            u_xlat37.x = (u_xlatb3.z) ? u_xlat11.w : u_xlat11.x;
            u_xlat11.xyz = (u_xlatb3.x) ? u_xlat11.xyz : u_xlat37.xxx;
        } else {
            u_xlat11.x = float(1.0);
            u_xlat11.y = float(1.0);
            u_xlat11.z = float(1.0);
        }
        u_xlat11.xyz = u_xlat11.xyz * _AdditionalLightsColor[int(u_xlatu8)].xyz;
        u_xlat11.xyz = u_xlat6.xxx * u_xlat11.xyz;
        u_xlat8.x = dot(u_xlat4.xyz, u_xlat10.xyz);
        u_xlat8.x = clamp(u_xlat8.x, 0.0, 1.0);
        u_xlat8.x = u_xlat8.x * u_xlat9.x;
        u_xlat9.xzw = u_xlat8.xxx * u_xlat11.xyz;
        u_xlat8.xyz = u_xlat22.xyz * vec3(u_xlat23) + u_xlat5.xyz;
        u_xlat50 = dot(u_xlat8.xyz, u_xlat8.xyz);
        u_xlat50 = max(u_xlat50, 1.17549435e-37);
        u_xlat50 = inversesqrt(u_xlat50);
        u_xlat8.xyz = vec3(u_xlat50) * u_xlat8.xyz;
        u_xlat8.w = dot(u_xlat4.xyz, u_xlat8.xyz);
        u_xlat8.w = clamp(u_xlat8.w, 0.0, 1.0);
        u_xlat8.x = dot(u_xlat10.xyz, u_xlat8.xyz);
        u_xlat8.x = clamp(u_xlat8.x, 0.0, 1.0);
        u_xlat8.xy = u_xlat8.xw * u_xlat8.xw;
        u_xlat22.x = u_xlat8.y * u_xlat17.x + 1.00001001;
        u_xlat22.x = u_xlat22.x * u_xlat22.x;
        u_xlat8.x = max(u_xlat8.x, 0.100000001);
        u_xlat8.x = u_xlat8.x * u_xlat22.x;
        u_xlat8.x = u_xlat46 * u_xlat8.x;
        u_xlat8.x = u_xlat45 / u_xlat8.x;
        u_xlat8.xyz = u_xlat8.xxx * vec3(0.0399999991, 0.0399999991, 0.0399999991) + u_xlat2.xyz;
        u_xlat7.xyz = u_xlat8.xyz * u_xlat9.xzw + u_xlat7.xyz;
    }
    u_xlat1.xzw = u_xlat1.xzw * vec3(u_xlat47) + u_xlat20.xyz;
    u_xlat1.xzw = u_xlat7.xyz + u_xlat1.xzw;
    SV_Target0.xyz = vs_INTERP4.www * u_xlat0.xyz + u_xlat1.xzw;
    SV_Target0.w = (u_xlatb15) ? u_xlat42 : 1.0;
    u_xlatu0 = _RenderingLayerMaxInt & floatBitsToUint(unity_RenderingLayer.x);
    u_xlat0.x = float(u_xlatu0);
    SV_Target1.x = u_xlat0.x * _RenderingLayerRcpMaxInt;
    SV_Target1.x = clamp(SV_Target1.x, 0.0, 1.0);
    SV_Target1.yzw = vec3(0.0, 0.0, 0.0);
    return;
}

