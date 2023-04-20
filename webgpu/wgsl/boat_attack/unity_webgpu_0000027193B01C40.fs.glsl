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
	vec4 _ProjectionParams;
	vec4 unity_OrthoParams;
	vec4 unity_FogParams;
	vec4 unity_FogColor;
	mat4x4 unity_MatrixV;
	float _NightFade;
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
layout(set = 0, binding = 0) uniform mediump textureCube unity_SpecCube0;
layout(set = 0, binding = 1) uniform mediump texture2D _MainLightShadowmapTexture;
layout(set = 0, binding = 2) uniform mediump texture2D _AdditionalLightsShadowmapTexture;
layout(set = 0, binding = 3) uniform mediump texture2D _MainLightCookieTexture;
layout(set = 0, binding = 4) uniform mediump texture2D _AdditionalLightsCookieAtlasTexture;
layout(set = 0, binding = 5) uniform mediump texture2D Texture2D_52571568;
layout(set = 0, binding = 6) uniform mediump texture2D Texture2D_F0A81025;
layout(set = 0, binding = 7) uniform mediump texture2D Texture2D_8BA53EED;
layout(set = 0, binding = 8) uniform mediump texture2D Texture2D_AB84E4D0;
layout(location = 0) in highp  vec4 vs_INTERP3;
layout(location = 1) in highp  vec4 vs_INTERP4;
layout(location = 2) in highp  vec4 vs_INTERP5;
layout(location = 3) in highp  vec3 vs_INTERP7;
layout(location = 4) in highp  vec3 vs_INTERP8;
layout(location = 0) out highp vec4 SV_Target0;
vec3 u_xlat0;
vec4 u_xlat1;
vec4 u_xlat2;
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
bvec4 u_xlatb12;
vec4 u_xlat13;
vec3 u_xlat14;
float u_xlat18;
float u_xlat22;
vec3 u_xlat24;
float u_xlat31;
bool u_xlatb31;
float u_xlat33;
float u_xlat38;
int u_xlati38;
vec2 u_xlat42;
bvec2 u_xlatb42;
float u_xlat45;
bool u_xlatb45;
float u_xlat46;
bool u_xlatb46;
float u_xlat47;
uint u_xlatu47;
bool u_xlatb47;
float u_xlat48;
uint u_xlatu48;
float u_xlat49;
float u_xlat50;
int u_xlati50;
uint u_xlatu50;
bool u_xlatb50;
float u_xlat51;
int u_xlati51;
bool u_xlatb51;
float u_xlat52;
float u_xlat53;
int u_xlati53;
bool u_xlatb53;
float u_xlat55;
int u_xlati55;
bool u_xlatb55;
int u_xlati56;
layout(set = 0, binding = 9) uniform mediump  sampler samplerunity_SpecCube0;
layout(set = 0, binding = 10) uniform mediump  sampler sampler_LinearClamp;
layout(set = 0, binding = 11) uniform mediump  samplerShadow sampler_LinearClampCompare;
layout(set = 0, binding = 12) uniform mediump  sampler sampler_MainLightCookieTexture;
layout(set = 0, binding = 13) uniform mediump  sampler samplerTexture2D_52571568;
layout(set = 0, binding = 14) uniform mediump  sampler samplerTexture2D_F0A81025;
layout(set = 0, binding = 15) uniform mediump  sampler samplerTexture2D_8BA53EED;
layout(set = 0, binding = 16) uniform mediump  sampler samplerTexture2D_AB84E4D0;
void main()
{
    u_xlat0.xyz = texture(sampler2D(Texture2D_52571568, samplerTexture2D_52571568), vs_INTERP5.xy, _GlobalMipBias.x).xyz;
    u_xlat1.xyz = texture(sampler2D(Texture2D_8BA53EED, samplerTexture2D_8BA53EED), vs_INTERP5.xy, _GlobalMipBias.x).xyw;
    u_xlat1.x = u_xlat1.x * u_xlat1.z;
    u_xlat1.xy = u_xlat1.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat45 = dot(u_xlat1.xy, u_xlat1.xy);
    u_xlat45 = min(u_xlat45, 1.0);
    u_xlat45 = (-u_xlat45) + 1.0;
    u_xlat45 = sqrt(u_xlat45);
    u_xlat45 = max(u_xlat45, 1.00000002e-16);
    u_xlat2.xyz = texture(sampler2D(Texture2D_AB84E4D0, samplerTexture2D_AB84E4D0), vs_INTERP5.xy, _GlobalMipBias.x).xyz;
    u_xlat31 = dot(unity_ObjectToWorld[3].xyz, unity_ObjectToWorld[3].xyz);
    u_xlat31 = sqrt(u_xlat31);
    u_xlat31 = fract(u_xlat31);
    u_xlat31 = u_xlat31 + _NightFade;
    u_xlatb31 = u_xlat31>=1.0;
    u_xlat31 = u_xlatb31 ? 1.0 : float(0.0);
    u_xlat3.xyz = texture(sampler2D(Texture2D_F0A81025, samplerTexture2D_F0A81025), vs_INTERP5.xy, _GlobalMipBias.x).xwy;
    u_xlatb46 = 0.0<vs_INTERP4.w;
    u_xlat46 = (u_xlatb46) ? 1.0 : -1.0;
    u_xlatb47 = unity_WorldTransformParams.w>=0.0;
    u_xlat47 = (u_xlatb47) ? 1.0 : -1.0;
    u_xlat46 = u_xlat46 * u_xlat47;
    u_xlat4.xyz = vs_INTERP4.yzx * vs_INTERP8.zxy;
    u_xlat4.xyz = vs_INTERP8.yzx * vs_INTERP4.zxy + (-u_xlat4.xyz);
    u_xlat4.xyz = vec3(u_xlat46) * u_xlat4.xyz;
    u_xlat4.xyz = u_xlat1.yyy * u_xlat4.xyz;
    u_xlat1.xyw = u_xlat1.xxx * vs_INTERP4.xyz + u_xlat4.xyz;
    u_xlat1.xyw = vec3(u_xlat45) * vs_INTERP8.xyz + u_xlat1.xyw;
    u_xlat45 = dot(u_xlat1.xyw, u_xlat1.xyw);
    u_xlat45 = inversesqrt(u_xlat45);
    u_xlat4.xyz = vec3(u_xlat45) * u_xlat1.xyw;
    u_xlatb45 = unity_OrthoParams.w==0.0;
    u_xlat1.xyw = (-vs_INTERP7.xyz) + _WorldSpaceCameraPos.xyz;
    u_xlat47 = dot(u_xlat1.xyw, u_xlat1.xyw);
    u_xlat47 = inversesqrt(u_xlat47);
    u_xlat1.xyw = u_xlat1.xyw * vec3(u_xlat47);
    u_xlat5.x = unity_MatrixV[0].z;
    u_xlat5.y = unity_MatrixV[1].z;
    u_xlat5.z = unity_MatrixV[2].z;
    u_xlat1.xyw = (bool(u_xlatb45)) ? u_xlat1.xyw : u_xlat5.xyz;
    u_xlat45 = vs_INTERP7.y * unity_MatrixV[1].z;
    u_xlat45 = unity_MatrixV[0].z * vs_INTERP7.x + u_xlat45;
    u_xlat45 = unity_MatrixV[2].z * vs_INTERP7.z + u_xlat45;
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
    u_xlat3.xy = u_xlat3.xy;
    u_xlat3.xy = clamp(u_xlat3.xy, 0.0, 1.0);
    u_xlat47 = (-u_xlat3.x) * 0.959999979 + 0.959999979;
    u_xlat48 = (-u_xlat47) + u_xlat3.y;
    u_xlat6.xyz = u_xlat0.xyz * vec3(u_xlat47);
    u_xlat0.xyz = u_xlat0.xyz + vec3(-0.0399999991, -0.0399999991, -0.0399999991);
    u_xlat0.xyz = u_xlat3.xxx * u_xlat0.xyz + vec3(0.0399999991, 0.0399999991, 0.0399999991);
    u_xlat47 = (-u_xlat3.y) + 1.0;
    u_xlat3.x = u_xlat47 * u_xlat47;
    u_xlat3.x = max(u_xlat3.x, 0.0078125);
    u_xlat18 = u_xlat3.x * u_xlat3.x;
    u_xlat48 = u_xlat48 + 1.0;
    u_xlat48 = min(u_xlat48, 1.0);
    u_xlat49 = u_xlat3.x * 4.0 + 2.0;
    u_xlat33 = min(u_xlat3.z, 1.0);
    vec3 txVec0 = vec3(vs_INTERP3.xy,vs_INTERP3.z);
    u_xlat50 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_LinearClampCompare), txVec0, 0.0);
    u_xlat51 = (-_MainLightShadowParams.x) + 1.0;
    u_xlat50 = u_xlat50 * _MainLightShadowParams.x + u_xlat51;
    u_xlatb51 = 0.0>=vs_INTERP3.z;
    u_xlatb7 = vs_INTERP3.z>=1.0;
    u_xlatb51 = u_xlatb51 || u_xlatb7;
    u_xlat50 = (u_xlatb51) ? 1.0 : u_xlat50;
    u_xlat7.xyz = vs_INTERP7.xyz + (-_WorldSpaceCameraPos.xyz);
    u_xlat51 = dot(u_xlat7.xyz, u_xlat7.xyz);
    u_xlat7.x = u_xlat51 * _MainLightShadowParams.z + _MainLightShadowParams.w;
    u_xlat7.x = clamp(u_xlat7.x, 0.0, 1.0);
    u_xlat22 = (-u_xlat50) + 1.0;
    u_xlat50 = u_xlat7.x * u_xlat22 + u_xlat50;
    u_xlatb7 = _MainLightCookieTextureFormat!=-1.0;
    if(u_xlatb7){
        u_xlat7.xy = vs_INTERP7.yy * _MainLightWorldToLight[1].xy;
        u_xlat7.xy = _MainLightWorldToLight[0].xy * vs_INTERP7.xx + u_xlat7.xy;
        u_xlat7.xy = _MainLightWorldToLight[2].xy * vs_INTERP7.zz + u_xlat7.xy;
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
    u_xlat52 = dot((-u_xlat1.xyw), u_xlat4.xyz);
    u_xlat52 = u_xlat52 + u_xlat52;
    u_xlat8.xyz = u_xlat4.xyz * (-vec3(u_xlat52)) + (-u_xlat1.xyw);
    u_xlat52 = dot(u_xlat4.xyz, u_xlat1.xyw);
    u_xlat52 = clamp(u_xlat52, 0.0, 1.0);
    u_xlat52 = (-u_xlat52) + 1.0;
    u_xlat52 = u_xlat52 * u_xlat52;
    u_xlat52 = u_xlat52 * u_xlat52;
    u_xlat53 = (-u_xlat47) * 0.699999988 + 1.70000005;
    u_xlat2.w = u_xlat47 * u_xlat53;
    u_xlat2 = u_xlat2 * vec4(14.0, 14.0, 14.0, 6.0);
    u_xlat8 = textureLod(samplerCube(unity_SpecCube0, samplerunity_SpecCube0), u_xlat8.xyz, u_xlat2.w);
    u_xlat47 = u_xlat8.w + -1.0;
    u_xlat47 = unity_SpecCube0_HDR.w * u_xlat47 + 1.0;
    u_xlat47 = max(u_xlat47, 0.0);
    u_xlat47 = log2(u_xlat47);
    u_xlat47 = u_xlat47 * unity_SpecCube0_HDR.y;
    u_xlat47 = exp2(u_xlat47);
    u_xlat47 = u_xlat47 * unity_SpecCube0_HDR.x;
    u_xlat8.xyz = u_xlat8.xyz * vec3(u_xlat47);
    u_xlat9.xy = u_xlat3.xx * u_xlat3.xx + vec2(-1.0, 1.0);
    u_xlat47 = float(1.0) / u_xlat9.y;
    u_xlat24.xyz = (-u_xlat0.xyz) + vec3(u_xlat48);
    u_xlat24.xyz = vec3(u_xlat52) * u_xlat24.xyz + u_xlat0.xyz;
    u_xlat24.xyz = vec3(u_xlat47) * u_xlat24.xyz;
    u_xlat8.xyz = u_xlat8.xyz * u_xlat24.xyz;
    u_xlat5.xyz = u_xlat5.xyz * u_xlat6.xyz + u_xlat8.xyz;
    u_xlat47 = u_xlat50 * unity_LightData.z;
    u_xlat3.x = dot(u_xlat4.xyz, _MainLightPosition.xyz);
    u_xlat3.x = clamp(u_xlat3.x, 0.0, 1.0);
    u_xlat47 = u_xlat47 * u_xlat3.x;
    u_xlat7.xyz = vec3(u_xlat47) * u_xlat7.xyz;
    u_xlat8.xyz = u_xlat1.xyw + _MainLightPosition.xyz;
    u_xlat47 = dot(u_xlat8.xyz, u_xlat8.xyz);
    u_xlat47 = max(u_xlat47, 1.17549435e-38);
    u_xlat47 = inversesqrt(u_xlat47);
    u_xlat8.xyz = vec3(u_xlat47) * u_xlat8.xyz;
    u_xlat47 = dot(u_xlat4.xyz, u_xlat8.xyz);
    u_xlat47 = clamp(u_xlat47, 0.0, 1.0);
    u_xlat3.x = dot(_MainLightPosition.xyz, u_xlat8.xyz);
    u_xlat3.x = clamp(u_xlat3.x, 0.0, 1.0);
    u_xlat47 = u_xlat47 * u_xlat47;
    u_xlat47 = u_xlat47 * u_xlat9.x + 1.00001001;
    u_xlat3.x = u_xlat3.x * u_xlat3.x;
    u_xlat47 = u_xlat47 * u_xlat47;
    u_xlat3.x = max(u_xlat3.x, 0.100000001);
    u_xlat47 = u_xlat47 * u_xlat3.x;
    u_xlat47 = u_xlat49 * u_xlat47;
    u_xlat47 = u_xlat18 / u_xlat47;
    u_xlat8.xyz = u_xlat0.xyz * vec3(u_xlat47) + u_xlat6.xyz;
    u_xlat7.xyz = u_xlat7.xyz * u_xlat8.xyz;
    u_xlat47 = min(_AdditionalLightsCount.x, unity_LightData.y);
    u_xlatu47 =  uint(int(u_xlat47));
    u_xlat3.x = u_xlat51 * _AdditionalShadowFadeParams.x + _AdditionalShadowFadeParams.y;
    u_xlat3.x = clamp(u_xlat3.x, 0.0, 1.0);
    u_xlatb8.xy = equal(vec4(vec4(_AdditionalLightsCookieAtlasTextureFormat, _AdditionalLightsCookieAtlasTextureFormat, _AdditionalLightsCookieAtlasTextureFormat, _AdditionalLightsCookieAtlasTextureFormat)), vec4(0.0, 1.0, 0.0, 0.0)).xy;
    u_xlat24.x = float(0.0);
    u_xlat24.y = float(0.0);
    u_xlat24.z = float(0.0);
    for(uint u_xlatu_loop_1 = 0u ; u_xlatu_loop_1<u_xlatu47 ; u_xlatu_loop_1++)
    {
        u_xlatu50 = u_xlatu_loop_1 >> (2u & uint(0x1F));
        u_xlati51 = int(u_xlatu_loop_1 & 3u);
        u_xlat50 = dot(unity_LightIndices[int(u_xlatu50)], uintBitsToFloat(ImmCB_0[u_xlati51]));
        u_xlati50 = int(u_xlat50);
        u_xlat10.xyz = (-vs_INTERP7.xyz) * _AdditionalLightsPosition[u_xlati50].www + _AdditionalLightsPosition[u_xlati50].xyz;
        u_xlat51 = dot(u_xlat10.xyz, u_xlat10.xyz);
        u_xlat51 = max(u_xlat51, 6.10351562e-05);
        u_xlat52 = inversesqrt(u_xlat51);
        u_xlat11.xyz = vec3(u_xlat52) * u_xlat10.xyz;
        u_xlat38 = float(1.0) / float(u_xlat51);
        u_xlat51 = u_xlat51 * _AdditionalLightsAttenuation[u_xlati50].x;
        u_xlat51 = (-u_xlat51) * u_xlat51 + 1.0;
        u_xlat51 = max(u_xlat51, 0.0);
        u_xlat51 = u_xlat51 * u_xlat51;
        u_xlat51 = u_xlat51 * u_xlat38;
        u_xlat38 = dot(_AdditionalLightsSpotDir[u_xlati50].xyz, u_xlat11.xyz);
        u_xlat38 = u_xlat38 * _AdditionalLightsAttenuation[u_xlati50].z + _AdditionalLightsAttenuation[u_xlati50].w;
        u_xlat38 = clamp(u_xlat38, 0.0, 1.0);
        u_xlat38 = u_xlat38 * u_xlat38;
        u_xlat51 = u_xlat51 * u_xlat38;
        u_xlati38 = int(_AdditionalShadowParams[u_xlati50].w);
        u_xlatb53 = u_xlati38>=0;
        if(u_xlatb53){
            u_xlatb53 = vec4(0.0, 0.0, 0.0, 0.0)!=vec4(_AdditionalShadowParams[u_xlati50].z);
            if(u_xlatb53){
                u_xlatb12.xyz = greaterThanEqual(abs(u_xlat11.zzyz), abs(u_xlat11.xyxx)).xyz;
                u_xlatb53 = u_xlatb12.y && u_xlatb12.x;
                u_xlatb12.xyw = lessThan((-u_xlat11.zyzx), vec4(0.0, 0.0, 0.0, 0.0)).xyw;
                u_xlat12.x = (u_xlatb12.x) ? float(5.0) : float(4.0);
                u_xlat12.y = (u_xlatb12.y) ? float(3.0) : float(2.0);
                u_xlat55 = u_xlatb12.w ? 1.0 : float(0.0);
                u_xlat55 = (u_xlatb12.z) ? u_xlat12.y : u_xlat55;
                u_xlat53 = (u_xlatb53) ? u_xlat12.x : u_xlat55;
                u_xlat55 = trunc(_AdditionalShadowParams[u_xlati50].w);
                u_xlat53 = u_xlat53 + u_xlat55;
                u_xlati38 = int(u_xlat53);
            }
            u_xlati38 = u_xlati38 << (2 & int(0x1F));
            u_xlat12 = vs_INTERP7.yyyy * _AdditionalLightsWorldToShadow[(u_xlati38 + 1) / 4][(u_xlati38 + 1) % 4];
            u_xlat12 = _AdditionalLightsWorldToShadow[u_xlati38 / 4][u_xlati38 % 4] * vs_INTERP7.xxxx + u_xlat12;
            u_xlat12 = _AdditionalLightsWorldToShadow[(u_xlati38 + 2) / 4][(u_xlati38 + 2) % 4] * vs_INTERP7.zzzz + u_xlat12;
            u_xlat12 = u_xlat12 + _AdditionalLightsWorldToShadow[(u_xlati38 + 3) / 4][(u_xlati38 + 3) % 4];
            u_xlat12.xyz = u_xlat12.xyz / u_xlat12.www;
            vec3 txVec1 = vec3(u_xlat12.xy,u_xlat12.z);
            u_xlat38 = textureLod(sampler2DShadow(_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare), txVec1, 0.0);
            u_xlat53 = 1.0 + (-_AdditionalShadowParams[u_xlati50].x);
            u_xlat38 = u_xlat38 * _AdditionalShadowParams[u_xlati50].x + u_xlat53;
            u_xlatb53 = 0.0>=u_xlat12.z;
            u_xlatb55 = u_xlat12.z>=1.0;
            u_xlatb53 = u_xlatb53 || u_xlatb55;
            u_xlat38 = (u_xlatb53) ? 1.0 : u_xlat38;
        } else {
            u_xlat38 = 1.0;
        }
        u_xlat53 = (-u_xlat38) + 1.0;
        u_xlat38 = u_xlat3.x * u_xlat53 + u_xlat38;
        u_xlati53 = 1 << (u_xlati50 & int(0x1F));
        u_xlati53 = int(uint(u_xlati53) & floatBitsToUint(_AdditionalLightsCookieEnableBits));
        if(u_xlati53 != 0) {
            u_xlati53 = int(_AdditionalLightsLightTypes[u_xlati50]);
            u_xlati55 = (u_xlati53 != 0) ? 0 : 1;
            u_xlati56 = u_xlati50 << (2 & int(0x1F));
            if(u_xlati55 != 0) {
                u_xlat12.xyz = vs_INTERP7.yyy * _AdditionalLightsWorldToLights[(u_xlati56 + 1) / 4][(u_xlati56 + 1) % 4].xyw;
                u_xlat12.xyz = _AdditionalLightsWorldToLights[u_xlati56 / 4][u_xlati56 % 4].xyw * vs_INTERP7.xxx + u_xlat12.xyz;
                u_xlat12.xyz = _AdditionalLightsWorldToLights[(u_xlati56 + 2) / 4][(u_xlati56 + 2) % 4].xyw * vs_INTERP7.zzz + u_xlat12.xyz;
                u_xlat12.xyz = u_xlat12.xyz + _AdditionalLightsWorldToLights[(u_xlati56 + 3) / 4][(u_xlati56 + 3) % 4].xyw;
                u_xlat12.xy = u_xlat12.xy / u_xlat12.zz;
                u_xlat12.xy = u_xlat12.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
                u_xlat12.xy = clamp(u_xlat12.xy, 0.0, 1.0);
                u_xlat12.xy = _AdditionalLightsCookieAtlasUVRects[u_xlati50].xy * u_xlat12.xy + _AdditionalLightsCookieAtlasUVRects[u_xlati50].zw;
            } else {
                u_xlatb53 = u_xlati53==1;
                u_xlati53 = u_xlatb53 ? 1 : int(0);
                if(u_xlati53 != 0) {
                    u_xlat42.xy = vs_INTERP7.yy * _AdditionalLightsWorldToLights[(u_xlati56 + 1) / 4][(u_xlati56 + 1) % 4].xy;
                    u_xlat42.xy = _AdditionalLightsWorldToLights[u_xlati56 / 4][u_xlati56 % 4].xy * vs_INTERP7.xx + u_xlat42.xy;
                    u_xlat42.xy = _AdditionalLightsWorldToLights[(u_xlati56 + 2) / 4][(u_xlati56 + 2) % 4].xy * vs_INTERP7.zz + u_xlat42.xy;
                    u_xlat42.xy = u_xlat42.xy + _AdditionalLightsWorldToLights[(u_xlati56 + 3) / 4][(u_xlati56 + 3) % 4].xy;
                    u_xlat42.xy = u_xlat42.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
                    u_xlat42.xy = fract(u_xlat42.xy);
                    u_xlat12.xy = _AdditionalLightsCookieAtlasUVRects[u_xlati50].xy * u_xlat42.xy + _AdditionalLightsCookieAtlasUVRects[u_xlati50].zw;
                } else {
                    u_xlat13 = vs_INTERP7.yyyy * _AdditionalLightsWorldToLights[(u_xlati56 + 1) / 4][(u_xlati56 + 1) % 4];
                    u_xlat13 = _AdditionalLightsWorldToLights[u_xlati56 / 4][u_xlati56 % 4] * vs_INTERP7.xxxx + u_xlat13;
                    u_xlat13 = _AdditionalLightsWorldToLights[(u_xlati56 + 2) / 4][(u_xlati56 + 2) % 4] * vs_INTERP7.zzzz + u_xlat13;
                    u_xlat13 = u_xlat13 + _AdditionalLightsWorldToLights[(u_xlati56 + 3) / 4][(u_xlati56 + 3) % 4];
                    u_xlat13.xyz = u_xlat13.xyz / u_xlat13.www;
                    u_xlat53 = dot(u_xlat13.xyz, u_xlat13.xyz);
                    u_xlat53 = inversesqrt(u_xlat53);
                    u_xlat13.xyz = vec3(u_xlat53) * u_xlat13.xyz;
                    u_xlat53 = dot(abs(u_xlat13.xyz), vec3(1.0, 1.0, 1.0));
                    u_xlat53 = max(u_xlat53, 9.99999997e-07);
                    u_xlat53 = float(1.0) / float(u_xlat53);
                    u_xlat14.xyz = vec3(u_xlat53) * u_xlat13.zxy;
                    u_xlat14.x = (-u_xlat14.x);
                    u_xlat14.x = clamp(u_xlat14.x, 0.0, 1.0);
                    u_xlatb42.xy = greaterThanEqual(u_xlat14.yzyz, vec4(0.0, 0.0, 0.0, 0.0)).xy;
                    u_xlat42.x = (u_xlatb42.x) ? u_xlat14.x : (-u_xlat14.x);
                    u_xlat42.y = (u_xlatb42.y) ? u_xlat14.x : (-u_xlat14.x);
                    u_xlat42.xy = u_xlat13.xy * vec2(u_xlat53) + u_xlat42.xy;
                    u_xlat42.xy = u_xlat42.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
                    u_xlat42.xy = clamp(u_xlat42.xy, 0.0, 1.0);
                    u_xlat12.xy = _AdditionalLightsCookieAtlasUVRects[u_xlati50].xy * u_xlat42.xy + _AdditionalLightsCookieAtlasUVRects[u_xlati50].zw;
                }
            }
            u_xlat12 = textureLod(sampler2D(_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp), u_xlat12.xy, 0.0);
            u_xlat53 = (u_xlatb8.y) ? u_xlat12.w : u_xlat12.x;
            u_xlat12.xyz = (u_xlatb8.x) ? u_xlat12.xyz : vec3(u_xlat53);
        } else {
            u_xlat12.x = float(1.0);
            u_xlat12.y = float(1.0);
            u_xlat12.z = float(1.0);
        }
        u_xlat12.xyz = u_xlat12.xyz * _AdditionalLightsColor[u_xlati50].xyz;
        u_xlat50 = u_xlat51 * u_xlat38;
        u_xlat51 = dot(u_xlat4.xyz, u_xlat11.xyz);
        u_xlat51 = clamp(u_xlat51, 0.0, 1.0);
        u_xlat50 = u_xlat50 * u_xlat51;
        u_xlat12.xyz = vec3(u_xlat50) * u_xlat12.xyz;
        u_xlat10.xyz = u_xlat10.xyz * vec3(u_xlat52) + u_xlat1.xyw;
        u_xlat50 = dot(u_xlat10.xyz, u_xlat10.xyz);
        u_xlat50 = max(u_xlat50, 1.17549435e-38);
        u_xlat50 = inversesqrt(u_xlat50);
        u_xlat10.xyz = vec3(u_xlat50) * u_xlat10.xyz;
        u_xlat50 = dot(u_xlat4.xyz, u_xlat10.xyz);
        u_xlat50 = clamp(u_xlat50, 0.0, 1.0);
        u_xlat51 = dot(u_xlat11.xyz, u_xlat10.xyz);
        u_xlat51 = clamp(u_xlat51, 0.0, 1.0);
        u_xlat50 = u_xlat50 * u_xlat50;
        u_xlat50 = u_xlat50 * u_xlat9.x + 1.00001001;
        u_xlat51 = u_xlat51 * u_xlat51;
        u_xlat50 = u_xlat50 * u_xlat50;
        u_xlat51 = max(u_xlat51, 0.100000001);
        u_xlat50 = u_xlat50 * u_xlat51;
        u_xlat50 = u_xlat49 * u_xlat50;
        u_xlat50 = u_xlat18 / u_xlat50;
        u_xlat10.xyz = u_xlat0.xyz * vec3(u_xlat50) + u_xlat6.xyz;
        u_xlat24.xyz = u_xlat10.xyz * u_xlat12.xyz + u_xlat24.xyz;
    }
    u_xlat0.xyz = u_xlat5.xyz * vec3(u_xlat33) + u_xlat7.xyz;
    u_xlat0.xyz = u_xlat24.xyz + u_xlat0.xyz;
    u_xlat0.xyz = u_xlat2.xyz * vec3(u_xlat31) + u_xlat0.xyz;
    u_xlat45 = u_xlat45 * (-u_xlat45);
    u_xlat45 = exp2(u_xlat45);
    u_xlat0.xyz = u_xlat0.xyz + (-unity_FogColor.xyz);
    SV_Target0.xyz = vec3(u_xlat45) * u_xlat0.xyz + unity_FogColor.xyz;
    SV_Target0.w = 1.0;
    return;
}

