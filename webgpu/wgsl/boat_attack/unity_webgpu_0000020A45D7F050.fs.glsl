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
layout(set = 1, binding = 3, std140) uniform LightShadows {
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
layout(set = 1, binding = 4, std140) uniform LightCookies {
	mat4x4 _MainLightWorldToLight;
	float _AdditionalLightsCookieEnableBits;
	float _MainLightCookieTextureFormat;
	float _AdditionalLightsCookieAtlasTextureFormat;
	mat4x4 _AdditionalLightsWorldToLights[32];
	vec4 _AdditionalLightsCookieAtlasUVRects[32];
	float _AdditionalLightsLightTypes[32];
};
layout(set = 1, binding = 5, std140) uniform UnityPerMaterial {
	vec4 Texture2D_B222E8F_TexelSize;
	vec4 Color_C30C7CA3;
	vec4 Texture2D_D9BFD5F1_TexelSize;
};
layout(set = 0, binding = 0) uniform mediump textureCube unity_SpecCube0;
layout(set = 0, binding = 1) uniform mediump texture2D unity_Lightmap;
layout(set = 0, binding = 2) uniform mediump texture2D unity_LightmapInd;
layout(set = 0, binding = 3) uniform mediump texture2D _MainLightShadowmapTexture;
layout(set = 0, binding = 4) uniform mediump texture2D _AdditionalLightsShadowmapTexture;
layout(set = 0, binding = 5) uniform mediump texture2D _MainLightCookieTexture;
layout(set = 0, binding = 6) uniform mediump texture2D _AdditionalLightsCookieAtlasTexture;
layout(set = 0, binding = 7) uniform mediump texture2D Texture2D_B222E8F;
layout(set = 0, binding = 8) uniform mediump texture2D Texture2D_D9BFD5F1;
layout(location = 0) in highp  vec2 vs_INTERP0;
layout(location = 1) in highp  vec4 vs_INTERP3;
layout(location = 2) in highp  vec4 vs_INTERP4;
layout(location = 3) in highp  vec4 vs_INTERP5;
layout(location = 4) in highp  vec4 vs_INTERP6;
layout(location = 5) in highp  vec3 vs_INTERP8;
layout(location = 6) in highp  vec3 vs_INTERP9;
layout(location = 0) out highp vec4 SV_Target0;
float u_xlat0;
bool u_xlatb0;
vec3 u_xlat1;
vec4 u_xlat2;
bool u_xlatb2;
vec4 u_xlat3;
vec4 u_xlat4;
vec3 u_xlat5;
vec4 u_xlat6;
int u_xlati6;
bool u_xlatb6;
vec4 u_xlat7;
bvec2 u_xlatb7;
vec4 u_xlat8;
vec3 u_xlat9;
vec3 u_xlat10;
vec4 u_xlat11;
int u_xlati11;
bvec4 u_xlatb11;
vec4 u_xlat12;
vec3 u_xlat13;
vec3 u_xlat14;
bvec2 u_xlatb14;
float u_xlat16;
bool u_xlatb16;
float u_xlat19;
int u_xlati19;
uint u_xlatu19;
bool u_xlatb19;
vec3 u_xlat20;
bvec2 u_xlatb20;
vec3 u_xlat22;
vec3 u_xlat25;
float u_xlat30;
float u_xlat33;
float u_xlat34;
float u_xlat35;
float u_xlat43;
uint u_xlatu43;
float u_xlat45;
float u_xlat46;
uint u_xlatu46;
float u_xlat47;
float u_xlat49;
int u_xlati49;
float u_xlat51;
int u_xlati51;
bool u_xlatb51;
float u_xlat52;
int u_xlati52;
bool u_xlatb52;
layout(set = 0, binding = 9) uniform mediump  sampler samplerunity_SpecCube0;
layout(set = 0, binding = 10) uniform mediump  sampler samplerunity_Lightmap;
layout(set = 0, binding = 11) uniform mediump  sampler sampler_LinearClamp;
layout(set = 0, binding = 12) uniform mediump  samplerShadow sampler_LinearClampCompare;
layout(set = 0, binding = 13) uniform mediump  sampler sampler_MainLightCookieTexture;
layout(set = 0, binding = 14) uniform mediump  sampler samplerTexture2D_B222E8F;
layout(set = 0, binding = 15) uniform mediump  sampler samplerTexture2D_D9BFD5F1;
void main()
{
    u_xlat0 = dot(vs_INTERP9.xyz, vs_INTERP9.xyz);
    u_xlat0 = sqrt(u_xlat0);
    u_xlat0 = float(1.0) / u_xlat0;
    u_xlatb14.x = 0.0<vs_INTERP4.w;
    u_xlatb14.y = unity_WorldTransformParams.w>=0.0;
    u_xlat14.x = (u_xlatb14.x) ? float(1.0) : float(-1.0);
    u_xlat14.y = (u_xlatb14.y) ? float(1.0) : float(-1.0);
    u_xlat14.x = u_xlat14.y * u_xlat14.x;
    u_xlat1.xyz = vs_INTERP4.yzx * vs_INTERP9.zxy;
    u_xlat1.xyz = vs_INTERP9.yzx * vs_INTERP4.zxy + (-u_xlat1.xyz);
    u_xlat14.xyz = u_xlat14.xxx * u_xlat1.xyz;
    u_xlat1.xyz = vec3(u_xlat0) * vs_INTERP9.xyz;
    u_xlat2.xyz = vec3(u_xlat0) * vs_INTERP4.xyz;
    u_xlat3.xyz = u_xlat14.xyz * vec3(u_xlat0);
    u_xlat4 = texture(sampler2D(Texture2D_B222E8F, samplerTexture2D_B222E8F), vs_INTERP5.xy, _GlobalMipBias.x);
    u_xlat5.xyz = u_xlat4.xyz * Color_C30C7CA3.xyz;
    u_xlat6 = texture(sampler2D(Texture2D_D9BFD5F1, samplerTexture2D_D9BFD5F1), vs_INTERP5.xy, _GlobalMipBias.x).wxyz;
    u_xlat7 = u_xlat6.yzwx * vec4(2.0, 2.0, 2.0, 2.0) + vec4(-1.0, -1.0, -1.0, -1.0);
    u_xlat0 = dot(u_xlat7, u_xlat7);
    u_xlat0 = inversesqrt(u_xlat0);
    u_xlat20.xyz = vec3(u_xlat0) * u_xlat7.xyz;
    u_xlat0 = vs_INTERP6.y * 200.0;
    u_xlat0 = min(u_xlat0, 1.0);
    u_xlat4.xyz = vec3(u_xlat0) * u_xlat4.xyz;
    u_xlat3.xyz = u_xlat3.xyz * u_xlat20.yyy;
    u_xlat2.xyz = u_xlat20.xxx * u_xlat2.xyz + u_xlat3.xyz;
    u_xlat1.xyz = u_xlat20.zzz * u_xlat1.xyz + u_xlat2.xyz;
    u_xlat0 = dot(u_xlat1.xyz, u_xlat1.xyz);
    u_xlat0 = max(u_xlat0, 1.17549435e-38);
    u_xlat0 = inversesqrt(u_xlat0);
    u_xlat1.xyz = vec3(u_xlat0) * u_xlat1.xyz;
    u_xlat2.xyz = vs_INTERP8.yyy * _MainLightWorldToShadow[1 / 4][1 % 4].xyz;
    u_xlat2.xyz = _MainLightWorldToShadow[0 / 4][0 % 4].xyz * vs_INTERP8.xxx + u_xlat2.xyz;
    u_xlat2.xyz = _MainLightWorldToShadow[2 / 4][2 % 4].xyz * vs_INTERP8.zzz + u_xlat2.xyz;
    u_xlat2.xyz = u_xlat2.xyz + _MainLightWorldToShadow[3 / 4][3 % 4].xyz;
    vec3 txVec0 = vec3(u_xlat2.xy,u_xlat2.z);
    u_xlat0 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_LinearClampCompare), txVec0, 0.0);
    u_xlat43 = (-_MainLightShadowParams.x) + 1.0;
    u_xlat0 = u_xlat0 * _MainLightShadowParams.x + u_xlat43;
    u_xlatb2 = 0.0>=u_xlat2.z;
    u_xlatb16 = u_xlat2.z>=1.0;
    u_xlatb2 = u_xlatb16 || u_xlatb2;
    u_xlat0 = (u_xlatb2) ? 1.0 : u_xlat0;
    u_xlat1.x = dot(u_xlat1.xyz, (-_MainLightPosition.xyz));
    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
    u_xlat2.xyz = vec3(u_xlat0) * _MainLightColor.xyz;
    u_xlat1.xyz = u_xlat1.xxx * u_xlat2.xyz;
    u_xlat1.xyz = u_xlat1.xyz * u_xlat4.xyz;
    u_xlatb0 = u_xlat4.w>=0.400000006;
    u_xlat0 = u_xlatb0 ? u_xlat4.w : float(0.0);
    u_xlat2.x = u_xlat4.w + -0.400000006;
    u_xlat16 = dFdxCoarse(u_xlat4.w);
    u_xlat30 = dFdyCoarse(u_xlat4.w);
    u_xlat16 = abs(u_xlat30) + abs(u_xlat16);
    u_xlat16 = max(u_xlat16, 9.99999975e-05);
    u_xlat2.x = u_xlat2.x / u_xlat16;
    u_xlat2.x = u_xlat2.x + 0.5;
    u_xlat2.x = clamp(u_xlat2.x, 0.0, 1.0);
    u_xlatb16 = _AlphaToMaskAvailable!=0.0;
    u_xlat0 = (u_xlatb16) ? u_xlat2.x : u_xlat0;
    u_xlat2.x = u_xlat0 + -9.99999975e-05;
    u_xlatb2 = u_xlat2.x<0.0;
    if(((int(u_xlatb2) * int(0xffffffffu)))!=0){discard;}
    u_xlat14.xyz = u_xlat14.xyz * u_xlat20.yyy;
    u_xlat14.xyz = u_xlat20.xxx * vs_INTERP4.xyz + u_xlat14.xyz;
    u_xlat14.xyz = u_xlat20.zzz * vs_INTERP9.xyz + u_xlat14.xyz;
    u_xlat2.x = dot(u_xlat14.xyz, u_xlat14.xyz);
    u_xlat2.x = inversesqrt(u_xlat2.x);
    u_xlat14.xyz = u_xlat14.xyz * u_xlat2.xxx;
    u_xlatb2 = unity_OrthoParams.w==0.0;
    u_xlat3.xyz = (-vs_INTERP8.xyz) + _WorldSpaceCameraPos.xyz;
    u_xlat30 = dot(u_xlat3.xyz, u_xlat3.xyz);
    u_xlat30 = inversesqrt(u_xlat30);
    u_xlat3.xyz = vec3(u_xlat30) * u_xlat3.xyz;
    u_xlat4.x = (u_xlatb2) ? u_xlat3.x : unity_MatrixV[0].z;
    u_xlat4.y = (u_xlatb2) ? u_xlat3.y : unity_MatrixV[1].z;
    u_xlat4.z = (u_xlatb2) ? u_xlat3.z : unity_MatrixV[2].z;
    u_xlat3 = texture(sampler2D(unity_LightmapInd, samplerunity_Lightmap), vs_INTERP0.xy, _GlobalMipBias.x);
    u_xlat2.xzw = texture(sampler2D(unity_Lightmap, samplerunity_Lightmap), vs_INTERP0.xy, _GlobalMipBias.x).xyz;
    u_xlat3.xyz = u_xlat3.xyz + vec3(-0.5, -0.5, -0.5);
    u_xlat3.x = dot(u_xlat14.xyz, u_xlat3.xyz);
    u_xlat3.x = u_xlat3.x + 0.5;
    u_xlat2.xzw = u_xlat2.xzw * u_xlat3.xxx;
    u_xlat3.x = max(u_xlat3.w, 9.99999975e-05);
    u_xlat2.xzw = u_xlat2.xzw / u_xlat3.xxx;
    u_xlat6.x = u_xlat6.x;
    u_xlat6.x = clamp(u_xlat6.x, 0.0, 1.0);
    u_xlat0 = min(u_xlat0, 1.0);
    u_xlat3.xyz = u_xlat5.xyz * vec3(0.959999979, 0.959999979, 0.959999979);
    u_xlat45 = (-u_xlat6.x) + 1.0;
    u_xlat46 = u_xlat45 * u_xlat45;
    u_xlat46 = max(u_xlat46, 0.0078125);
    u_xlat5.x = u_xlat46 * u_xlat46;
    u_xlat19 = u_xlat6.x + 0.0400000215;
    u_xlat19 = min(u_xlat19, 1.0);
    u_xlat33 = u_xlat46 * 4.0 + 2.0;
    u_xlat47 = min(vs_INTERP6.w, 1.0);
    vec3 txVec1 = vec3(vs_INTERP3.xy,vs_INTERP3.z);
    u_xlat6.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_LinearClampCompare), txVec1, 0.0);
    u_xlat43 = u_xlat6.x * _MainLightShadowParams.x + u_xlat43;
    u_xlatb6 = 0.0>=vs_INTERP3.z;
    u_xlatb20.x = vs_INTERP3.z>=1.0;
    u_xlatb6 = u_xlatb20.x || u_xlatb6;
    u_xlat43 = (u_xlatb6) ? 1.0 : u_xlat43;
    u_xlat6.xyz = vs_INTERP8.xyz + (-_WorldSpaceCameraPos.xyz);
    u_xlat6.x = dot(u_xlat6.xyz, u_xlat6.xyz);
    u_xlat20.x = u_xlat6.x * _MainLightShadowParams.z + _MainLightShadowParams.w;
    u_xlat20.x = clamp(u_xlat20.x, 0.0, 1.0);
    u_xlat34 = (-u_xlat43) + 1.0;
    u_xlat43 = u_xlat20.x * u_xlat34 + u_xlat43;
    u_xlatb20.x = _MainLightCookieTextureFormat!=-1.0;
    if(u_xlatb20.x){
        u_xlat20.xy = vs_INTERP8.yy * _MainLightWorldToLight[1].xy;
        u_xlat20.xy = _MainLightWorldToLight[0].xy * vs_INTERP8.xx + u_xlat20.xy;
        u_xlat20.xy = _MainLightWorldToLight[2].xy * vs_INTERP8.zz + u_xlat20.xy;
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
    u_xlat7.x = dot((-u_xlat4.xyz), u_xlat14.xyz);
    u_xlat7.x = u_xlat7.x + u_xlat7.x;
    u_xlat7.xyz = u_xlat14.xyz * (-u_xlat7.xxx) + (-u_xlat4.xyz);
    u_xlat49 = dot(u_xlat14.xyz, u_xlat4.xyz);
    u_xlat49 = clamp(u_xlat49, 0.0, 1.0);
    u_xlat49 = (-u_xlat49) + 1.0;
    u_xlat49 = u_xlat49 * u_xlat49;
    u_xlat49 = u_xlat49 * u_xlat49;
    u_xlat8.x = (-u_xlat45) * 0.699999988 + 1.70000005;
    u_xlat45 = u_xlat45 * u_xlat8.x;
    u_xlat45 = u_xlat45 * 6.0;
    u_xlat8 = textureLod(samplerCube(unity_SpecCube0, samplerunity_SpecCube0), u_xlat7.xyz, u_xlat45);
    u_xlat45 = u_xlat8.w + -1.0;
    u_xlat45 = unity_SpecCube0_HDR.w * u_xlat45 + 1.0;
    u_xlat45 = max(u_xlat45, 0.0);
    u_xlat45 = log2(u_xlat45);
    u_xlat45 = u_xlat45 * unity_SpecCube0_HDR.y;
    u_xlat45 = exp2(u_xlat45);
    u_xlat45 = u_xlat45 * unity_SpecCube0_HDR.x;
    u_xlat7.xyz = u_xlat8.xyz * vec3(u_xlat45);
    u_xlat8.xy = vec2(u_xlat46) * vec2(u_xlat46) + vec2(-1.0, 1.0);
    u_xlat45 = float(1.0) / u_xlat8.y;
    u_xlat46 = u_xlat19 + -0.0399999991;
    u_xlat46 = u_xlat49 * u_xlat46 + 0.0399999991;
    u_xlat45 = u_xlat45 * u_xlat46;
    u_xlat7.xyz = vec3(u_xlat45) * u_xlat7.xyz;
    u_xlat2.xzw = u_xlat2.xzw * u_xlat3.xyz + u_xlat7.xyz;
    u_xlat43 = u_xlat43 * unity_LightData.z;
    u_xlat45 = dot(u_xlat14.xyz, _MainLightPosition.xyz);
    u_xlat45 = clamp(u_xlat45, 0.0, 1.0);
    u_xlat43 = u_xlat43 * u_xlat45;
    u_xlat20.xyz = vec3(u_xlat43) * u_xlat20.xyz;
    u_xlat7.xyz = u_xlat4.xyz + _MainLightPosition.xyz;
    u_xlat43 = dot(u_xlat7.xyz, u_xlat7.xyz);
    u_xlat43 = max(u_xlat43, 1.17549435e-38);
    u_xlat43 = inversesqrt(u_xlat43);
    u_xlat7.xyz = vec3(u_xlat43) * u_xlat7.xyz;
    u_xlat43 = dot(u_xlat14.xyz, u_xlat7.xyz);
    u_xlat43 = clamp(u_xlat43, 0.0, 1.0);
    u_xlat45 = dot(_MainLightPosition.xyz, u_xlat7.xyz);
    u_xlat45 = clamp(u_xlat45, 0.0, 1.0);
    u_xlat43 = u_xlat43 * u_xlat43;
    u_xlat43 = u_xlat43 * u_xlat8.x + 1.00001001;
    u_xlat45 = u_xlat45 * u_xlat45;
    u_xlat43 = u_xlat43 * u_xlat43;
    u_xlat45 = max(u_xlat45, 0.100000001);
    u_xlat43 = u_xlat43 * u_xlat45;
    u_xlat43 = u_xlat33 * u_xlat43;
    u_xlat43 = u_xlat5.x / u_xlat43;
    u_xlat7.xyz = vec3(u_xlat43) * vec3(0.0399999991, 0.0399999991, 0.0399999991) + u_xlat3.xyz;
    u_xlat20.xyz = u_xlat20.xyz * u_xlat7.xyz;
    u_xlat43 = min(_AdditionalLightsCount.x, unity_LightData.y);
    u_xlatu43 =  uint(int(u_xlat43));
    u_xlat45 = u_xlat6.x * _AdditionalShadowFadeParams.x + _AdditionalShadowFadeParams.y;
    u_xlat45 = clamp(u_xlat45, 0.0, 1.0);
    u_xlatb7.xy = equal(vec4(vec4(_AdditionalLightsCookieAtlasTextureFormat, _AdditionalLightsCookieAtlasTextureFormat, _AdditionalLightsCookieAtlasTextureFormat, _AdditionalLightsCookieAtlasTextureFormat)), vec4(0.0, 1.0, 0.0, 0.0)).xy;
    u_xlat22.x = float(0.0);
    u_xlat22.y = float(0.0);
    u_xlat22.z = float(0.0);
    for(uint u_xlatu_loop_1 = 0u ; u_xlatu_loop_1<u_xlatu43 ; u_xlatu_loop_1++)
    {
        u_xlatu19 = u_xlatu_loop_1 >> (2u & uint(0x1F));
        u_xlati6 = int(u_xlatu_loop_1 & 3u);
        u_xlat19 = dot(unity_LightIndices[int(u_xlatu19)], uintBitsToFloat(ImmCB_0[u_xlati6]));
        u_xlati19 = int(u_xlat19);
        u_xlat9.xyz = (-vs_INTERP8.xyz) * _AdditionalLightsPosition[u_xlati19].www + _AdditionalLightsPosition[u_xlati19].xyz;
        u_xlat6.x = dot(u_xlat9.xyz, u_xlat9.xyz);
        u_xlat6.x = max(u_xlat6.x, 6.10351562e-05);
        u_xlat35 = inversesqrt(u_xlat6.x);
        u_xlat10.xyz = vec3(u_xlat35) * u_xlat9.xyz;
        u_xlat49 = float(1.0) / float(u_xlat6.x);
        u_xlat6.x = u_xlat6.x * _AdditionalLightsAttenuation[u_xlati19].x;
        u_xlat6.x = (-u_xlat6.x) * u_xlat6.x + 1.0;
        u_xlat6.x = max(u_xlat6.x, 0.0);
        u_xlat6.x = u_xlat6.x * u_xlat6.x;
        u_xlat6.x = u_xlat6.x * u_xlat49;
        u_xlat49 = dot(_AdditionalLightsSpotDir[u_xlati19].xyz, u_xlat10.xyz);
        u_xlat49 = u_xlat49 * _AdditionalLightsAttenuation[u_xlati19].z + _AdditionalLightsAttenuation[u_xlati19].w;
        u_xlat49 = clamp(u_xlat49, 0.0, 1.0);
        u_xlat49 = u_xlat49 * u_xlat49;
        u_xlat6.x = u_xlat6.x * u_xlat49;
        u_xlati49 = int(_AdditionalShadowParams[u_xlati19].w);
        u_xlatb51 = u_xlati49>=0;
        if(u_xlatb51){
            u_xlatb51 = vec4(0.0, 0.0, 0.0, 0.0)!=vec4(_AdditionalShadowParams[u_xlati19].z);
            if(u_xlatb51){
                u_xlatb11.xyz = greaterThanEqual(abs(u_xlat10.zzyz), abs(u_xlat10.xyxx)).xyz;
                u_xlatb51 = u_xlatb11.y && u_xlatb11.x;
                u_xlatb11.xyw = lessThan((-u_xlat10.zyzx), vec4(0.0, 0.0, 0.0, 0.0)).xyw;
                u_xlat11.x = (u_xlatb11.x) ? float(5.0) : float(4.0);
                u_xlat11.y = (u_xlatb11.y) ? float(3.0) : float(2.0);
                u_xlat52 = u_xlatb11.w ? 1.0 : float(0.0);
                u_xlat52 = (u_xlatb11.z) ? u_xlat11.y : u_xlat52;
                u_xlat51 = (u_xlatb51) ? u_xlat11.x : u_xlat52;
                u_xlat52 = trunc(_AdditionalShadowParams[u_xlati19].w);
                u_xlat51 = u_xlat51 + u_xlat52;
                u_xlati49 = int(u_xlat51);
            }
            u_xlati49 = u_xlati49 << (2 & int(0x1F));
            u_xlat11 = vs_INTERP8.yyyy * _AdditionalLightsWorldToShadow[(u_xlati49 + 1) / 4][(u_xlati49 + 1) % 4];
            u_xlat11 = _AdditionalLightsWorldToShadow[u_xlati49 / 4][u_xlati49 % 4] * vs_INTERP8.xxxx + u_xlat11;
            u_xlat11 = _AdditionalLightsWorldToShadow[(u_xlati49 + 2) / 4][(u_xlati49 + 2) % 4] * vs_INTERP8.zzzz + u_xlat11;
            u_xlat11 = u_xlat11 + _AdditionalLightsWorldToShadow[(u_xlati49 + 3) / 4][(u_xlati49 + 3) % 4];
            u_xlat11.xyz = u_xlat11.xyz / u_xlat11.www;
            vec3 txVec2 = vec3(u_xlat11.xy,u_xlat11.z);
            u_xlat49 = textureLod(sampler2DShadow(_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare), txVec2, 0.0);
            u_xlat51 = 1.0 + (-_AdditionalShadowParams[u_xlati19].x);
            u_xlat49 = u_xlat49 * _AdditionalShadowParams[u_xlati19].x + u_xlat51;
            u_xlatb51 = 0.0>=u_xlat11.z;
            u_xlatb52 = u_xlat11.z>=1.0;
            u_xlatb51 = u_xlatb51 || u_xlatb52;
            u_xlat49 = (u_xlatb51) ? 1.0 : u_xlat49;
        } else {
            u_xlat49 = 1.0;
        }
        u_xlat51 = (-u_xlat49) + 1.0;
        u_xlat49 = u_xlat45 * u_xlat51 + u_xlat49;
        u_xlati51 = 1 << (u_xlati19 & int(0x1F));
        u_xlati51 = int(uint(u_xlati51) & floatBitsToUint(_AdditionalLightsCookieEnableBits));
        if(u_xlati51 != 0) {
            u_xlati51 = int(_AdditionalLightsLightTypes[u_xlati19]);
            u_xlati52 = (u_xlati51 != 0) ? 0 : 1;
            u_xlati11 = u_xlati19 << (2 & int(0x1F));
            if(u_xlati52 != 0) {
                u_xlat25.xyz = vs_INTERP8.yyy * _AdditionalLightsWorldToLights[(u_xlati11 + 1) / 4][(u_xlati11 + 1) % 4].xyw;
                u_xlat25.xyz = _AdditionalLightsWorldToLights[u_xlati11 / 4][u_xlati11 % 4].xyw * vs_INTERP8.xxx + u_xlat25.xyz;
                u_xlat25.xyz = _AdditionalLightsWorldToLights[(u_xlati11 + 2) / 4][(u_xlati11 + 2) % 4].xyw * vs_INTERP8.zzz + u_xlat25.xyz;
                u_xlat25.xyz = u_xlat25.xyz + _AdditionalLightsWorldToLights[(u_xlati11 + 3) / 4][(u_xlati11 + 3) % 4].xyw;
                u_xlat25.xy = u_xlat25.xy / u_xlat25.zz;
                u_xlat25.xy = u_xlat25.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
                u_xlat25.xy = clamp(u_xlat25.xy, 0.0, 1.0);
                u_xlat25.xy = _AdditionalLightsCookieAtlasUVRects[u_xlati19].xy * u_xlat25.xy + _AdditionalLightsCookieAtlasUVRects[u_xlati19].zw;
            } else {
                u_xlatb51 = u_xlati51==1;
                u_xlati51 = u_xlatb51 ? 1 : int(0);
                if(u_xlati51 != 0) {
                    u_xlat12.xy = vs_INTERP8.yy * _AdditionalLightsWorldToLights[(u_xlati11 + 1) / 4][(u_xlati11 + 1) % 4].xy;
                    u_xlat12.xy = _AdditionalLightsWorldToLights[u_xlati11 / 4][u_xlati11 % 4].xy * vs_INTERP8.xx + u_xlat12.xy;
                    u_xlat12.xy = _AdditionalLightsWorldToLights[(u_xlati11 + 2) / 4][(u_xlati11 + 2) % 4].xy * vs_INTERP8.zz + u_xlat12.xy;
                    u_xlat12.xy = u_xlat12.xy + _AdditionalLightsWorldToLights[(u_xlati11 + 3) / 4][(u_xlati11 + 3) % 4].xy;
                    u_xlat12.xy = u_xlat12.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
                    u_xlat12.xy = fract(u_xlat12.xy);
                    u_xlat25.xy = _AdditionalLightsCookieAtlasUVRects[u_xlati19].xy * u_xlat12.xy + _AdditionalLightsCookieAtlasUVRects[u_xlati19].zw;
                } else {
                    u_xlat12 = vs_INTERP8.yyyy * _AdditionalLightsWorldToLights[(u_xlati11 + 1) / 4][(u_xlati11 + 1) % 4];
                    u_xlat12 = _AdditionalLightsWorldToLights[u_xlati11 / 4][u_xlati11 % 4] * vs_INTERP8.xxxx + u_xlat12;
                    u_xlat12 = _AdditionalLightsWorldToLights[(u_xlati11 + 2) / 4][(u_xlati11 + 2) % 4] * vs_INTERP8.zzzz + u_xlat12;
                    u_xlat12 = u_xlat12 + _AdditionalLightsWorldToLights[(u_xlati11 + 3) / 4][(u_xlati11 + 3) % 4];
                    u_xlat12.xyz = u_xlat12.xyz / u_xlat12.www;
                    u_xlat51 = dot(u_xlat12.xyz, u_xlat12.xyz);
                    u_xlat51 = inversesqrt(u_xlat51);
                    u_xlat12.xyz = vec3(u_xlat51) * u_xlat12.xyz;
                    u_xlat51 = dot(abs(u_xlat12.xyz), vec3(1.0, 1.0, 1.0));
                    u_xlat51 = max(u_xlat51, 9.99999997e-07);
                    u_xlat51 = float(1.0) / float(u_xlat51);
                    u_xlat13.xyz = vec3(u_xlat51) * u_xlat12.zxy;
                    u_xlat13.x = (-u_xlat13.x);
                    u_xlat13.x = clamp(u_xlat13.x, 0.0, 1.0);
                    u_xlatb11.xw = greaterThanEqual(u_xlat13.yyyz, vec4(0.0, 0.0, 0.0, 0.0)).xw;
                    u_xlat11.x = (u_xlatb11.x) ? u_xlat13.x : (-u_xlat13.x);
                    u_xlat11.w = (u_xlatb11.w) ? u_xlat13.x : (-u_xlat13.x);
                    u_xlat11.xw = u_xlat12.xy * vec2(u_xlat51) + u_xlat11.xw;
                    u_xlat11.xw = u_xlat11.xw * vec2(0.5, 0.5) + vec2(0.5, 0.5);
                    u_xlat11.xw = clamp(u_xlat11.xw, 0.0, 1.0);
                    u_xlat25.xy = _AdditionalLightsCookieAtlasUVRects[u_xlati19].xy * u_xlat11.xw + _AdditionalLightsCookieAtlasUVRects[u_xlati19].zw;
                }
            }
            u_xlat11 = textureLod(sampler2D(_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp), u_xlat25.xy, 0.0);
            u_xlat51 = (u_xlatb7.y) ? u_xlat11.w : u_xlat11.x;
            u_xlat11.xyz = (u_xlatb7.x) ? u_xlat11.xyz : vec3(u_xlat51);
        } else {
            u_xlat11.x = float(1.0);
            u_xlat11.y = float(1.0);
            u_xlat11.z = float(1.0);
        }
        u_xlat11.xyz = u_xlat11.xyz * _AdditionalLightsColor[u_xlati19].xyz;
        u_xlat19 = u_xlat6.x * u_xlat49;
        u_xlat6.x = dot(u_xlat14.xyz, u_xlat10.xyz);
        u_xlat6.x = clamp(u_xlat6.x, 0.0, 1.0);
        u_xlat19 = u_xlat19 * u_xlat6.x;
        u_xlat11.xyz = vec3(u_xlat19) * u_xlat11.xyz;
        u_xlat9.xyz = u_xlat9.xyz * vec3(u_xlat35) + u_xlat4.xyz;
        u_xlat19 = dot(u_xlat9.xyz, u_xlat9.xyz);
        u_xlat19 = max(u_xlat19, 1.17549435e-38);
        u_xlat19 = inversesqrt(u_xlat19);
        u_xlat9.xyz = vec3(u_xlat19) * u_xlat9.xyz;
        u_xlat19 = dot(u_xlat14.xyz, u_xlat9.xyz);
        u_xlat19 = clamp(u_xlat19, 0.0, 1.0);
        u_xlat6.x = dot(u_xlat10.xyz, u_xlat9.xyz);
        u_xlat6.x = clamp(u_xlat6.x, 0.0, 1.0);
        u_xlat19 = u_xlat19 * u_xlat19;
        u_xlat19 = u_xlat19 * u_xlat8.x + 1.00001001;
        u_xlat6.x = u_xlat6.x * u_xlat6.x;
        u_xlat19 = u_xlat19 * u_xlat19;
        u_xlat6.x = max(u_xlat6.x, 0.100000001);
        u_xlat19 = u_xlat19 * u_xlat6.x;
        u_xlat19 = u_xlat33 * u_xlat19;
        u_xlat19 = u_xlat5.x / u_xlat19;
        u_xlat9.xyz = vec3(u_xlat19) * vec3(0.0399999991, 0.0399999991, 0.0399999991) + u_xlat3.xyz;
        u_xlat22.xyz = u_xlat9.xyz * u_xlat11.xyz + u_xlat22.xyz;
    }
    u_xlat14.xyz = u_xlat2.xzw * vec3(u_xlat47) + u_xlat20.xyz;
    u_xlat14.xyz = u_xlat22.xyz + u_xlat14.xyz;
    SV_Target0.xyz = vs_INTERP6.www * u_xlat1.xyz + u_xlat14.xyz;
    SV_Target0.w = (u_xlatb16) ? u_xlat0 : 1.0;
    return;
}

