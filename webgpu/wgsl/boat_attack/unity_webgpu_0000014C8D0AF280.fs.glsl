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
layout(set = 0, binding = 1) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 2) uniform mediump texture2D _MetallicTex;
layout(set = 0, binding = 3) uniform mediump texture2D _MainLightShadowmapTexture;
layout(set = 0, binding = 4) uniform mediump texture2D _AdditionalLightsShadowmapTexture;
layout(set = 0, binding = 5) uniform mediump texture2D _MainLightCookieTexture;
layout(set = 0, binding = 6) uniform mediump texture2D _AdditionalLightsCookieAtlasTexture;
layout(location = 0) in highp  vec4 vs_TEXCOORD0;
layout(location = 1) in highp  vec4 vs_TEXCOORD3;
layout(location = 2) in highp  vec4 vs_TEXCOORD4;
layout(location = 3) in highp  vec4 vs_TEXCOORD5;
layout(location = 4) in highp  vec3 vs_TEXCOORD7;
layout(location = 5) in highp  vec4 vs_TEXCOORD8;
layout(location = 0) out highp vec4 SV_Target0;
vec4 u_xlat0;
vec3 u_xlat1;
vec4 u_xlat2;
vec3 u_xlat3;
vec4 u_xlat4;
vec4 u_xlat5;
vec3 u_xlat6;
bvec2 u_xlatb6;
vec4 u_xlat7;
vec2 u_xlat8;
vec3 u_xlat9;
vec3 u_xlat10;
vec4 u_xlat11;
int u_xlati11;
bvec4 u_xlatb11;
vec4 u_xlat12;
vec3 u_xlat13;
vec3 u_xlat15;
vec3 u_xlat17;
float u_xlat18;
bvec2 u_xlatb18;
vec3 u_xlat22;
vec3 u_xlat25;
float u_xlat32;
bool u_xlatb32;
float u_xlat42;
uint u_xlatu42;
float u_xlat43;
float u_xlat44;
uint u_xlatu44;
float u_xlat46;
int u_xlati46;
uint u_xlatu46;
bool u_xlatb46;
float u_xlat47;
int u_xlati47;
float u_xlat48;
float u_xlat49;
int u_xlati49;
float u_xlat51;
int u_xlati51;
bool u_xlatb51;
float u_xlat52;
int u_xlati52;
bool u_xlatb52;
layout(set = 0, binding = 7) uniform mediump  sampler samplerunity_SpecCube0;
layout(set = 0, binding = 8) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 9) uniform mediump  sampler sampler_MetallicTex;
layout(set = 0, binding = 10) uniform mediump  sampler sampler_LinearClamp;
layout(set = 0, binding = 11) uniform mediump  samplerShadow sampler_LinearClampCompare;
layout(set = 0, binding = 12) uniform mediump  sampler sampler_MainLightCookieTexture;
void main()
{
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
    u_xlat44 = (-u_xlat1.x) * 0.959999979 + 0.959999979;
    u_xlat3.x = (-u_xlat44) + 1.0;
    u_xlat17.xyz = u_xlat0.xyz * vec3(u_xlat44);
    u_xlat0.xyz = u_xlat0.xyz + vec3(-0.0399999991, -0.0399999991, -0.0399999991);
    u_xlat0.xyz = u_xlat1.xxx * u_xlat0.xyz + vec3(0.0399999991, 0.0399999991, 0.0399999991);
    u_xlat1.x = (-u_xlat0.w) + 1.0;
    u_xlat44 = u_xlat1.x * u_xlat1.x;
    u_xlat44 = max(u_xlat44, 0.0078125);
    u_xlat4.x = u_xlat44 * u_xlat44;
    u_xlat42 = u_xlat0.w + u_xlat3.x;
    u_xlat42 = clamp(u_xlat42, 0.0, 1.0);
    u_xlat3.x = u_xlat44 * 4.0 + 2.0;
    vec3 txVec0 = vec3(vs_TEXCOORD8.xy,vs_TEXCOORD8.z);
    u_xlat18 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_LinearClampCompare), txVec0, 0.0);
    u_xlat32 = (-_MainLightShadowParams.x) + 1.0;
    u_xlat18 = u_xlat18 * _MainLightShadowParams.x + u_xlat32;
    u_xlatb32 = 0.0>=vs_TEXCOORD8.z;
    u_xlatb46 = vs_TEXCOORD8.z>=1.0;
    u_xlatb32 = u_xlatb46 || u_xlatb32;
    u_xlat18 = (u_xlatb32) ? 1.0 : u_xlat18;
    u_xlat5.xyz = vs_TEXCOORD7.xyz + (-_WorldSpaceCameraPos.xyz);
    u_xlat32 = dot(u_xlat5.xyz, u_xlat5.xyz);
    u_xlat46 = u_xlat32 * _MainLightShadowParams.z + _MainLightShadowParams.w;
    u_xlat46 = clamp(u_xlat46, 0.0, 1.0);
    u_xlat5.x = (-u_xlat18) + 1.0;
    u_xlat18 = u_xlat46 * u_xlat5.x + u_xlat18;
    u_xlatb46 = _MainLightCookieTextureFormat!=-1.0;
    if(u_xlatb46){
        u_xlat5.xy = vs_TEXCOORD7.yy * _MainLightWorldToLight[1].xy;
        u_xlat5.xy = _MainLightWorldToLight[0].xy * vs_TEXCOORD7.xx + u_xlat5.xy;
        u_xlat5.xy = _MainLightWorldToLight[2].xy * vs_TEXCOORD7.zz + u_xlat5.xy;
        u_xlat5.xy = u_xlat5.xy + _MainLightWorldToLight[3].xy;
        u_xlat5.xy = u_xlat5.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
        u_xlat5 = texture(sampler2D(_MainLightCookieTexture, sampler_MainLightCookieTexture), u_xlat5.xy, _GlobalMipBias.x);
        u_xlatb6.xy = equal(vec4(vec4(_MainLightCookieTextureFormat, _MainLightCookieTextureFormat, _MainLightCookieTextureFormat, _MainLightCookieTextureFormat)), vec4(0.0, 1.0, 0.0, 0.0)).xy;
        u_xlat46 = (u_xlatb6.y) ? u_xlat5.w : u_xlat5.x;
        u_xlat5.xyz = (u_xlatb6.x) ? u_xlat5.xyz : vec3(u_xlat46);
    } else {
        u_xlat5.x = float(1.0);
        u_xlat5.y = float(1.0);
        u_xlat5.z = float(1.0);
    }
    u_xlat5.xyz = u_xlat5.xyz * _MainLightColor.xyz;
    u_xlat6.x = vs_TEXCOORD3.w;
    u_xlat6.y = vs_TEXCOORD4.w;
    u_xlat6.z = vs_TEXCOORD5.w;
    u_xlat46 = dot((-u_xlat6.xyz), u_xlat2.xyz);
    u_xlat46 = u_xlat46 + u_xlat46;
    u_xlat7.xyz = u_xlat2.xyz * (-vec3(u_xlat46)) + (-u_xlat6.xyz);
    u_xlat46 = dot(u_xlat2.xyz, u_xlat6.xyz);
    u_xlat46 = clamp(u_xlat46, 0.0, 1.0);
    u_xlat46 = (-u_xlat46) + 1.0;
    u_xlat46 = u_xlat46 * u_xlat46;
    u_xlat46 = u_xlat46 * u_xlat46;
    u_xlat47 = (-u_xlat1.x) * 0.699999988 + 1.70000005;
    u_xlat1.x = u_xlat1.x * u_xlat47;
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
    u_xlat22.xyz = vec3(u_xlat46) * u_xlat22.xyz + u_xlat0.xyz;
    u_xlat22.xyz = u_xlat1.xxx * u_xlat22.xyz;
    u_xlat7.xyz = u_xlat7.xyz * u_xlat22.xyz;
    u_xlat1.xyz = u_xlat15.xyz * u_xlat17.xyz + u_xlat7.xyz;
    u_xlat42 = u_xlat18 * unity_LightData.z;
    u_xlat43 = dot(u_xlat2.xyz, _MainLightPosition.xyz);
    u_xlat43 = clamp(u_xlat43, 0.0, 1.0);
    u_xlat42 = u_xlat42 * u_xlat43;
    u_xlat5.xyz = vec3(u_xlat42) * u_xlat5.xyz;
    u_xlat7.xyz = u_xlat6.xyz + _MainLightPosition.xyz;
    u_xlat42 = dot(u_xlat7.xyz, u_xlat7.xyz);
    u_xlat42 = max(u_xlat42, 1.17549435e-38);
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
    u_xlat42 = u_xlat3.x * u_xlat42;
    u_xlat42 = u_xlat4.x / u_xlat42;
    u_xlat7.xyz = u_xlat0.xyz * vec3(u_xlat42) + u_xlat17.xyz;
    u_xlat42 = min(_AdditionalLightsCount.x, unity_LightData.y);
    u_xlatu42 =  uint(int(u_xlat42));
    u_xlat43 = u_xlat32 * _AdditionalShadowFadeParams.x + _AdditionalShadowFadeParams.y;
    u_xlat43 = clamp(u_xlat43, 0.0, 1.0);
    u_xlatb18.xy = equal(vec4(vec4(_AdditionalLightsCookieAtlasTextureFormat, _AdditionalLightsCookieAtlasTextureFormat, _AdditionalLightsCookieAtlasTextureFormat, _AdditionalLightsCookieAtlasTextureFormat)), vec4(0.0, 1.0, 0.0, 0.0)).xy;
    u_xlat22.x = float(0.0);
    u_xlat22.y = float(0.0);
    u_xlat22.z = float(0.0);
    for(uint u_xlatu_loop_1 = 0u ; u_xlatu_loop_1<u_xlatu42 ; u_xlatu_loop_1++)
    {
        u_xlatu46 = u_xlatu_loop_1 >> (2u & uint(0x1F));
        u_xlati47 = int(u_xlatu_loop_1 & 3u);
        u_xlat46 = dot(unity_LightIndices[int(u_xlatu46)], uintBitsToFloat(ImmCB_0[u_xlati47]));
        u_xlati46 = int(u_xlat46);
        u_xlat9.xyz = (-vs_TEXCOORD7.xyz) * _AdditionalLightsPosition[u_xlati46].www + _AdditionalLightsPosition[u_xlati46].xyz;
        u_xlat47 = dot(u_xlat9.xyz, u_xlat9.xyz);
        u_xlat47 = max(u_xlat47, 6.10351562e-05);
        u_xlat48 = inversesqrt(u_xlat47);
        u_xlat10.xyz = vec3(u_xlat48) * u_xlat9.xyz;
        u_xlat49 = float(1.0) / float(u_xlat47);
        u_xlat47 = u_xlat47 * _AdditionalLightsAttenuation[u_xlati46].x;
        u_xlat47 = (-u_xlat47) * u_xlat47 + 1.0;
        u_xlat47 = max(u_xlat47, 0.0);
        u_xlat47 = u_xlat47 * u_xlat47;
        u_xlat47 = u_xlat47 * u_xlat49;
        u_xlat49 = dot(_AdditionalLightsSpotDir[u_xlati46].xyz, u_xlat10.xyz);
        u_xlat49 = u_xlat49 * _AdditionalLightsAttenuation[u_xlati46].z + _AdditionalLightsAttenuation[u_xlati46].w;
        u_xlat49 = clamp(u_xlat49, 0.0, 1.0);
        u_xlat49 = u_xlat49 * u_xlat49;
        u_xlat47 = u_xlat47 * u_xlat49;
        u_xlati49 = int(_AdditionalShadowParams[u_xlati46].w);
        u_xlatb51 = u_xlati49>=0;
        if(u_xlatb51){
            u_xlatb51 = vec4(0.0, 0.0, 0.0, 0.0)!=vec4(_AdditionalShadowParams[u_xlati46].z);
            if(u_xlatb51){
                u_xlatb11.xyz = greaterThanEqual(abs(u_xlat10.zzyz), abs(u_xlat10.xyxx)).xyz;
                u_xlatb51 = u_xlatb11.y && u_xlatb11.x;
                u_xlatb11.xyw = lessThan((-u_xlat10.zyzx), vec4(0.0, 0.0, 0.0, 0.0)).xyw;
                u_xlat11.x = (u_xlatb11.x) ? float(5.0) : float(4.0);
                u_xlat11.y = (u_xlatb11.y) ? float(3.0) : float(2.0);
                u_xlat52 = u_xlatb11.w ? 1.0 : float(0.0);
                u_xlat52 = (u_xlatb11.z) ? u_xlat11.y : u_xlat52;
                u_xlat51 = (u_xlatb51) ? u_xlat11.x : u_xlat52;
                u_xlat52 = trunc(_AdditionalShadowParams[u_xlati46].w);
                u_xlat51 = u_xlat51 + u_xlat52;
                u_xlati49 = int(u_xlat51);
            }
            u_xlati49 = u_xlati49 << (2 & int(0x1F));
            u_xlat11 = vs_TEXCOORD7.yyyy * _AdditionalLightsWorldToShadow[(u_xlati49 + 1) / 4][(u_xlati49 + 1) % 4];
            u_xlat11 = _AdditionalLightsWorldToShadow[u_xlati49 / 4][u_xlati49 % 4] * vs_TEXCOORD7.xxxx + u_xlat11;
            u_xlat11 = _AdditionalLightsWorldToShadow[(u_xlati49 + 2) / 4][(u_xlati49 + 2) % 4] * vs_TEXCOORD7.zzzz + u_xlat11;
            u_xlat11 = u_xlat11 + _AdditionalLightsWorldToShadow[(u_xlati49 + 3) / 4][(u_xlati49 + 3) % 4];
            u_xlat11.xyz = u_xlat11.xyz / u_xlat11.www;
            vec3 txVec1 = vec3(u_xlat11.xy,u_xlat11.z);
            u_xlat49 = textureLod(sampler2DShadow(_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare), txVec1, 0.0);
            u_xlat51 = 1.0 + (-_AdditionalShadowParams[u_xlati46].x);
            u_xlat49 = u_xlat49 * _AdditionalShadowParams[u_xlati46].x + u_xlat51;
            u_xlatb51 = 0.0>=u_xlat11.z;
            u_xlatb52 = u_xlat11.z>=1.0;
            u_xlatb51 = u_xlatb51 || u_xlatb52;
            u_xlat49 = (u_xlatb51) ? 1.0 : u_xlat49;
        } else {
            u_xlat49 = 1.0;
        }
        u_xlat51 = (-u_xlat49) + 1.0;
        u_xlat49 = u_xlat43 * u_xlat51 + u_xlat49;
        u_xlati51 = 1 << (u_xlati46 & int(0x1F));
        u_xlati51 = int(uint(u_xlati51) & floatBitsToUint(_AdditionalLightsCookieEnableBits));
        if(u_xlati51 != 0) {
            u_xlati51 = int(_AdditionalLightsLightTypes[u_xlati46]);
            u_xlati52 = (u_xlati51 != 0) ? 0 : 1;
            u_xlati11 = u_xlati46 << (2 & int(0x1F));
            if(u_xlati52 != 0) {
                u_xlat25.xyz = vs_TEXCOORD7.yyy * _AdditionalLightsWorldToLights[(u_xlati11 + 1) / 4][(u_xlati11 + 1) % 4].xyw;
                u_xlat25.xyz = _AdditionalLightsWorldToLights[u_xlati11 / 4][u_xlati11 % 4].xyw * vs_TEXCOORD7.xxx + u_xlat25.xyz;
                u_xlat25.xyz = _AdditionalLightsWorldToLights[(u_xlati11 + 2) / 4][(u_xlati11 + 2) % 4].xyw * vs_TEXCOORD7.zzz + u_xlat25.xyz;
                u_xlat25.xyz = u_xlat25.xyz + _AdditionalLightsWorldToLights[(u_xlati11 + 3) / 4][(u_xlati11 + 3) % 4].xyw;
                u_xlat25.xy = u_xlat25.xy / u_xlat25.zz;
                u_xlat25.xy = u_xlat25.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
                u_xlat25.xy = clamp(u_xlat25.xy, 0.0, 1.0);
                u_xlat25.xy = _AdditionalLightsCookieAtlasUVRects[u_xlati46].xy * u_xlat25.xy + _AdditionalLightsCookieAtlasUVRects[u_xlati46].zw;
            } else {
                u_xlatb51 = u_xlati51==1;
                u_xlati51 = u_xlatb51 ? 1 : int(0);
                if(u_xlati51 != 0) {
                    u_xlat12.xy = vs_TEXCOORD7.yy * _AdditionalLightsWorldToLights[(u_xlati11 + 1) / 4][(u_xlati11 + 1) % 4].xy;
                    u_xlat12.xy = _AdditionalLightsWorldToLights[u_xlati11 / 4][u_xlati11 % 4].xy * vs_TEXCOORD7.xx + u_xlat12.xy;
                    u_xlat12.xy = _AdditionalLightsWorldToLights[(u_xlati11 + 2) / 4][(u_xlati11 + 2) % 4].xy * vs_TEXCOORD7.zz + u_xlat12.xy;
                    u_xlat12.xy = u_xlat12.xy + _AdditionalLightsWorldToLights[(u_xlati11 + 3) / 4][(u_xlati11 + 3) % 4].xy;
                    u_xlat12.xy = u_xlat12.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
                    u_xlat12.xy = fract(u_xlat12.xy);
                    u_xlat25.xy = _AdditionalLightsCookieAtlasUVRects[u_xlati46].xy * u_xlat12.xy + _AdditionalLightsCookieAtlasUVRects[u_xlati46].zw;
                } else {
                    u_xlat12 = vs_TEXCOORD7.yyyy * _AdditionalLightsWorldToLights[(u_xlati11 + 1) / 4][(u_xlati11 + 1) % 4];
                    u_xlat12 = _AdditionalLightsWorldToLights[u_xlati11 / 4][u_xlati11 % 4] * vs_TEXCOORD7.xxxx + u_xlat12;
                    u_xlat12 = _AdditionalLightsWorldToLights[(u_xlati11 + 2) / 4][(u_xlati11 + 2) % 4] * vs_TEXCOORD7.zzzz + u_xlat12;
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
                    u_xlat25.xy = _AdditionalLightsCookieAtlasUVRects[u_xlati46].xy * u_xlat11.xw + _AdditionalLightsCookieAtlasUVRects[u_xlati46].zw;
                }
            }
            u_xlat11 = textureLod(sampler2D(_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp), u_xlat25.xy, 0.0);
            u_xlat51 = (u_xlatb18.y) ? u_xlat11.w : u_xlat11.x;
            u_xlat11.xyz = (u_xlatb18.x) ? u_xlat11.xyz : vec3(u_xlat51);
        } else {
            u_xlat11.x = float(1.0);
            u_xlat11.y = float(1.0);
            u_xlat11.z = float(1.0);
        }
        u_xlat11.xyz = u_xlat11.xyz * _AdditionalLightsColor[u_xlati46].xyz;
        u_xlat46 = u_xlat47 * u_xlat49;
        u_xlat47 = dot(u_xlat2.xyz, u_xlat10.xyz);
        u_xlat47 = clamp(u_xlat47, 0.0, 1.0);
        u_xlat46 = u_xlat46 * u_xlat47;
        u_xlat11.xyz = vec3(u_xlat46) * u_xlat11.xyz;
        u_xlat9.xyz = u_xlat9.xyz * vec3(u_xlat48) + u_xlat6.xyz;
        u_xlat46 = dot(u_xlat9.xyz, u_xlat9.xyz);
        u_xlat46 = max(u_xlat46, 1.17549435e-38);
        u_xlat46 = inversesqrt(u_xlat46);
        u_xlat9.xyz = vec3(u_xlat46) * u_xlat9.xyz;
        u_xlat46 = dot(u_xlat2.xyz, u_xlat9.xyz);
        u_xlat46 = clamp(u_xlat46, 0.0, 1.0);
        u_xlat47 = dot(u_xlat10.xyz, u_xlat9.xyz);
        u_xlat47 = clamp(u_xlat47, 0.0, 1.0);
        u_xlat46 = u_xlat46 * u_xlat46;
        u_xlat46 = u_xlat46 * u_xlat8.x + 1.00001001;
        u_xlat47 = u_xlat47 * u_xlat47;
        u_xlat46 = u_xlat46 * u_xlat46;
        u_xlat47 = max(u_xlat47, 0.100000001);
        u_xlat46 = u_xlat46 * u_xlat47;
        u_xlat46 = u_xlat3.x * u_xlat46;
        u_xlat46 = u_xlat4.x / u_xlat46;
        u_xlat9.xyz = u_xlat0.xyz * vec3(u_xlat46) + u_xlat17.xyz;
        u_xlat22.xyz = u_xlat9.xyz * u_xlat11.xyz + u_xlat22.xyz;
    }
    u_xlat0.xyz = u_xlat7.xyz * u_xlat5.xyz + u_xlat1.xyz;
    SV_Target0.xyz = u_xlat22.xyz + u_xlat0.xyz;
    SV_Target0.w = 1.0;
    return;
}

