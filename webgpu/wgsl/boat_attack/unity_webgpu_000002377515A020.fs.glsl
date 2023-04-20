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
	vec4 unity_FogParams;
	vec4 unity_FogColor;
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
layout(set = 0, binding = 0) uniform mediump textureCube unity_SpecCube0;
layout(set = 0, binding = 1) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 2) uniform mediump texture2D _MetallicTex;
layout(set = 0, binding = 3) uniform mediump texture2D _TerrainHolesTexture;
layout(set = 0, binding = 4) uniform mediump texture2D _MainLightShadowmapTexture;
layout(set = 0, binding = 5) uniform mediump texture2D _AdditionalLightsShadowmapTexture;
layout(set = 0, binding = 6) uniform mediump texture2D _MainLightCookieTexture;
layout(set = 0, binding = 7) uniform mediump texture2D _AdditionalLightsCookieAtlasTexture;
layout(location = 0) in highp  vec4 vs_TEXCOORD0;
layout(location = 1) in highp  vec4 vs_TEXCOORD3;
layout(location = 2) in highp  vec4 vs_TEXCOORD4;
layout(location = 3) in highp  vec4 vs_TEXCOORD5;
layout(location = 4) in highp  vec3 vs_TEXCOORD7;
layout(location = 5) in highp  vec4 vs_TEXCOORD8;
layout(location = 0) out highp vec4 SV_Target0;
vec4 u_xlat0;
bool u_xlatb0;
vec3 u_xlat1;
vec4 u_xlat2;
vec3 u_xlat3;
vec4 u_xlat4;
vec4 u_xlat5;
bool u_xlatb5;
vec3 u_xlat6;
bvec2 u_xlatb6;
vec4 u_xlat7;
vec3 u_xlat8;
bvec2 u_xlatb8;
vec3 u_xlat9;
vec3 u_xlat10;
vec3 u_xlat11;
vec4 u_xlat12;
bvec4 u_xlatb12;
vec4 u_xlat13;
vec3 u_xlat14;
float u_xlat16;
float u_xlat20;
float u_xlat31;
vec2 u_xlat38;
int u_xlati38;
bool u_xlatb38;
vec2 u_xlat42;
bvec2 u_xlatb42;
float u_xlat45;
uint u_xlatu45;
float u_xlat46;
float u_xlat47;
float u_xlat48;
uint u_xlatu48;
float u_xlat49;
int u_xlati49;
uint u_xlatu49;
bool u_xlatb49;
float u_xlat50;
int u_xlati50;
float u_xlat51;
float u_xlat52;
int u_xlati52;
float u_xlat53;
int u_xlati53;
bool u_xlatb53;
int u_xlati54;
layout(set = 0, binding = 8) uniform mediump  sampler samplerunity_SpecCube0;
layout(set = 0, binding = 9) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 10) uniform mediump  sampler sampler_MetallicTex;
layout(set = 0, binding = 11) uniform mediump  sampler sampler_TerrainHolesTexture;
layout(set = 0, binding = 12) uniform mediump  sampler sampler_LinearClamp;
layout(set = 0, binding = 13) uniform mediump  samplerShadow sampler_LinearClampCompare;
layout(set = 0, binding = 14) uniform mediump  sampler sampler_MainLightCookieTexture;
void main()
{
    u_xlat0.x = texture(sampler2D(_TerrainHolesTexture, sampler_TerrainHolesTexture), vs_TEXCOORD0.xy, _GlobalMipBias.x).x;
    u_xlatb0 = u_xlat0.x==0.0;
    if(((int(u_xlatb0) * int(0xffffffffu)))!=0){discard;}
    u_xlat0 = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD0.xy, _GlobalMipBias.x);
    u_xlat1.x = texture(sampler2D(_MetallicTex, sampler_MetallicTex), vs_TEXCOORD0.xy, _GlobalMipBias.x).x;
    u_xlat16 = dot(vs_TEXCOORD3.xyz, vs_TEXCOORD3.xyz);
    u_xlat16 = inversesqrt(u_xlat16);
    u_xlat2.xyz = vec3(u_xlat16) * vs_TEXCOORD3.xyz;
    u_xlat16 = vs_TEXCOORD7.y * unity_MatrixV[1].z;
    u_xlat16 = unity_MatrixV[0].z * vs_TEXCOORD7.x + u_xlat16;
    u_xlat16 = unity_MatrixV[2].z * vs_TEXCOORD7.z + u_xlat16;
    u_xlat16 = u_xlat16 + unity_MatrixV[3].z;
    u_xlat16 = (-u_xlat16) + (-_ProjectionParams.y);
    u_xlat16 = max(u_xlat16, 0.0);
    u_xlat16 = u_xlat16 * unity_FogParams.x;
    u_xlat2.w = 1.0;
    u_xlat3.x = dot(unity_SHAr, u_xlat2);
    u_xlat3.y = dot(unity_SHAg, u_xlat2);
    u_xlat3.z = dot(unity_SHAb, u_xlat2);
    u_xlat4 = u_xlat2.yzzx * u_xlat2.xyzz;
    u_xlat5.x = dot(unity_SHBr, u_xlat4);
    u_xlat5.y = dot(unity_SHBg, u_xlat4);
    u_xlat5.z = dot(unity_SHBb, u_xlat4);
    u_xlat31 = u_xlat2.y * u_xlat2.y;
    u_xlat31 = u_xlat2.x * u_xlat2.x + (-u_xlat31);
    u_xlat4.xyz = unity_SHC.xyz * vec3(u_xlat31) + u_xlat5.xyz;
    u_xlat3.xyz = u_xlat3.xyz + u_xlat4.xyz;
    u_xlat3.xyz = max(u_xlat3.xyz, vec3(0.0, 0.0, 0.0));
    u_xlat31 = (-u_xlat1.x) * 0.959999979 + 0.959999979;
    u_xlat46 = (-u_xlat31) + 1.0;
    u_xlat4.xyz = u_xlat0.xyz * vec3(u_xlat31);
    u_xlat0.xyz = u_xlat0.xyz + vec3(-0.0399999991, -0.0399999991, -0.0399999991);
    u_xlat0.xyz = u_xlat1.xxx * u_xlat0.xyz + vec3(0.0399999991, 0.0399999991, 0.0399999991);
    u_xlat1.x = (-u_xlat0.w) + 1.0;
    u_xlat31 = u_xlat1.x * u_xlat1.x;
    u_xlat31 = max(u_xlat31, 0.0078125);
    u_xlat47 = u_xlat31 * u_xlat31;
    u_xlat45 = u_xlat0.w + u_xlat46;
    u_xlat45 = clamp(u_xlat45, 0.0, 1.0);
    u_xlat46 = u_xlat31 * 4.0 + 2.0;
    vec3 txVec0 = vec3(vs_TEXCOORD8.xy,vs_TEXCOORD8.z);
    u_xlat48 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_LinearClampCompare), txVec0, 0.0);
    u_xlat49 = (-_MainLightShadowParams.x) + 1.0;
    u_xlat48 = u_xlat48 * _MainLightShadowParams.x + u_xlat49;
    u_xlatb49 = 0.0>=vs_TEXCOORD8.z;
    u_xlatb5 = vs_TEXCOORD8.z>=1.0;
    u_xlatb49 = u_xlatb49 || u_xlatb5;
    u_xlat48 = (u_xlatb49) ? 1.0 : u_xlat48;
    u_xlat5.xyz = vs_TEXCOORD7.xyz + (-_WorldSpaceCameraPos.xyz);
    u_xlat49 = dot(u_xlat5.xyz, u_xlat5.xyz);
    u_xlat5.x = u_xlat49 * _MainLightShadowParams.z + _MainLightShadowParams.w;
    u_xlat5.x = clamp(u_xlat5.x, 0.0, 1.0);
    u_xlat20 = (-u_xlat48) + 1.0;
    u_xlat48 = u_xlat5.x * u_xlat20 + u_xlat48;
    u_xlatb5 = _MainLightCookieTextureFormat!=-1.0;
    if(u_xlatb5){
        u_xlat5.xy = vs_TEXCOORD7.yy * _MainLightWorldToLight[1].xy;
        u_xlat5.xy = _MainLightWorldToLight[0].xy * vs_TEXCOORD7.xx + u_xlat5.xy;
        u_xlat5.xy = _MainLightWorldToLight[2].xy * vs_TEXCOORD7.zz + u_xlat5.xy;
        u_xlat5.xy = u_xlat5.xy + _MainLightWorldToLight[3].xy;
        u_xlat5.xy = u_xlat5.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
        u_xlat5 = texture(sampler2D(_MainLightCookieTexture, sampler_MainLightCookieTexture), u_xlat5.xy, _GlobalMipBias.x);
        u_xlatb6.xy = equal(vec4(vec4(_MainLightCookieTextureFormat, _MainLightCookieTextureFormat, _MainLightCookieTextureFormat, _MainLightCookieTextureFormat)), vec4(0.0, 1.0, 0.0, 0.0)).xy;
        u_xlat50 = (u_xlatb6.y) ? u_xlat5.w : u_xlat5.x;
        u_xlat5.xyz = (u_xlatb6.x) ? u_xlat5.xyz : vec3(u_xlat50);
    } else {
        u_xlat5.x = float(1.0);
        u_xlat5.y = float(1.0);
        u_xlat5.z = float(1.0);
    }
    u_xlat5.xyz = u_xlat5.xyz * _MainLightColor.xyz;
    u_xlat6.x = vs_TEXCOORD3.w;
    u_xlat6.y = vs_TEXCOORD4.w;
    u_xlat6.z = vs_TEXCOORD5.w;
    u_xlat50 = dot((-u_xlat6.xyz), u_xlat2.xyz);
    u_xlat50 = u_xlat50 + u_xlat50;
    u_xlat7.xyz = u_xlat2.xyz * (-vec3(u_xlat50)) + (-u_xlat6.xyz);
    u_xlat50 = dot(u_xlat2.xyz, u_xlat6.xyz);
    u_xlat50 = clamp(u_xlat50, 0.0, 1.0);
    u_xlat50 = (-u_xlat50) + 1.0;
    u_xlat50 = u_xlat50 * u_xlat50;
    u_xlat50 = u_xlat50 * u_xlat50;
    u_xlat51 = (-u_xlat1.x) * 0.699999988 + 1.70000005;
    u_xlat1.x = u_xlat1.x * u_xlat51;
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
    u_xlat1.xz = vec2(u_xlat31) * vec2(u_xlat31) + vec2(-1.0, 1.0);
    u_xlat31 = float(1.0) / u_xlat1.z;
    u_xlat8.xyz = (-u_xlat0.xyz) + vec3(u_xlat45);
    u_xlat8.xyz = vec3(u_xlat50) * u_xlat8.xyz + u_xlat0.xyz;
    u_xlat8.xyz = vec3(u_xlat31) * u_xlat8.xyz;
    u_xlat7.xyz = u_xlat7.xyz * u_xlat8.xyz;
    u_xlat3.xyz = u_xlat3.xyz * u_xlat4.xyz + u_xlat7.xyz;
    u_xlat45 = u_xlat48 * unity_LightData.z;
    u_xlat31 = dot(u_xlat2.xyz, _MainLightPosition.xyz);
    u_xlat31 = clamp(u_xlat31, 0.0, 1.0);
    u_xlat45 = u_xlat45 * u_xlat31;
    u_xlat5.xyz = vec3(u_xlat45) * u_xlat5.xyz;
    u_xlat7.xyz = u_xlat6.xyz + _MainLightPosition.xyz;
    u_xlat45 = dot(u_xlat7.xyz, u_xlat7.xyz);
    u_xlat45 = max(u_xlat45, 1.17549435e-38);
    u_xlat45 = inversesqrt(u_xlat45);
    u_xlat7.xyz = vec3(u_xlat45) * u_xlat7.xyz;
    u_xlat45 = dot(u_xlat2.xyz, u_xlat7.xyz);
    u_xlat45 = clamp(u_xlat45, 0.0, 1.0);
    u_xlat31 = dot(_MainLightPosition.xyz, u_xlat7.xyz);
    u_xlat31 = clamp(u_xlat31, 0.0, 1.0);
    u_xlat45 = u_xlat45 * u_xlat45;
    u_xlat45 = u_xlat45 * u_xlat1.x + 1.00001001;
    u_xlat31 = u_xlat31 * u_xlat31;
    u_xlat45 = u_xlat45 * u_xlat45;
    u_xlat31 = max(u_xlat31, 0.100000001);
    u_xlat45 = u_xlat45 * u_xlat31;
    u_xlat45 = u_xlat46 * u_xlat45;
    u_xlat45 = u_xlat47 / u_xlat45;
    u_xlat7.xyz = u_xlat0.xyz * vec3(u_xlat45) + u_xlat4.xyz;
    u_xlat45 = min(_AdditionalLightsCount.x, unity_LightData.y);
    u_xlatu45 =  uint(int(u_xlat45));
    u_xlat31 = u_xlat49 * _AdditionalShadowFadeParams.x + _AdditionalShadowFadeParams.y;
    u_xlat31 = clamp(u_xlat31, 0.0, 1.0);
    u_xlatb8.xy = equal(vec4(vec4(_AdditionalLightsCookieAtlasTextureFormat, _AdditionalLightsCookieAtlasTextureFormat, _AdditionalLightsCookieAtlasTextureFormat, _AdditionalLightsCookieAtlasTextureFormat)), vec4(0.0, 1.0, 0.0, 0.0)).xy;
    u_xlat9.x = float(0.0);
    u_xlat9.y = float(0.0);
    u_xlat9.z = float(0.0);
    for(uint u_xlatu_loop_1 = 0u ; u_xlatu_loop_1<u_xlatu45 ; u_xlatu_loop_1++)
    {
        u_xlatu49 = u_xlatu_loop_1 >> (2u & uint(0x1F));
        u_xlati50 = int(u_xlatu_loop_1 & 3u);
        u_xlat49 = dot(unity_LightIndices[int(u_xlatu49)], uintBitsToFloat(ImmCB_0[u_xlati50]));
        u_xlati49 = int(u_xlat49);
        u_xlat10.xyz = (-vs_TEXCOORD7.xyz) * _AdditionalLightsPosition[u_xlati49].www + _AdditionalLightsPosition[u_xlati49].xyz;
        u_xlat50 = dot(u_xlat10.xyz, u_xlat10.xyz);
        u_xlat50 = max(u_xlat50, 6.10351562e-05);
        u_xlat51 = inversesqrt(u_xlat50);
        u_xlat11.xyz = vec3(u_xlat51) * u_xlat10.xyz;
        u_xlat52 = float(1.0) / float(u_xlat50);
        u_xlat50 = u_xlat50 * _AdditionalLightsAttenuation[u_xlati49].x;
        u_xlat50 = (-u_xlat50) * u_xlat50 + 1.0;
        u_xlat50 = max(u_xlat50, 0.0);
        u_xlat50 = u_xlat50 * u_xlat50;
        u_xlat50 = u_xlat50 * u_xlat52;
        u_xlat52 = dot(_AdditionalLightsSpotDir[u_xlati49].xyz, u_xlat11.xyz);
        u_xlat52 = u_xlat52 * _AdditionalLightsAttenuation[u_xlati49].z + _AdditionalLightsAttenuation[u_xlati49].w;
        u_xlat52 = clamp(u_xlat52, 0.0, 1.0);
        u_xlat52 = u_xlat52 * u_xlat52;
        u_xlat50 = u_xlat50 * u_xlat52;
        u_xlati52 = int(_AdditionalShadowParams[u_xlati49].w);
        u_xlatb38 = u_xlati52>=0;
        if(u_xlatb38){
            u_xlatb38 = vec4(0.0, 0.0, 0.0, 0.0)!=vec4(_AdditionalShadowParams[u_xlati49].z);
            if(u_xlatb38){
                u_xlatb12.xyz = greaterThanEqual(abs(u_xlat11.zzyz), abs(u_xlat11.xyxx)).xyz;
                u_xlatb38 = u_xlatb12.y && u_xlatb12.x;
                u_xlatb12.xyw = lessThan((-u_xlat11.zyzx), vec4(0.0, 0.0, 0.0, 0.0)).xyw;
                u_xlat12.x = (u_xlatb12.x) ? float(5.0) : float(4.0);
                u_xlat12.y = (u_xlatb12.y) ? float(3.0) : float(2.0);
                u_xlat53 = u_xlatb12.w ? 1.0 : float(0.0);
                u_xlat53 = (u_xlatb12.z) ? u_xlat12.y : u_xlat53;
                u_xlat38.x = (u_xlatb38) ? u_xlat12.x : u_xlat53;
                u_xlat53 = trunc(_AdditionalShadowParams[u_xlati49].w);
                u_xlat38.x = u_xlat38.x + u_xlat53;
                u_xlati52 = int(u_xlat38.x);
            }
            u_xlati52 = u_xlati52 << (2 & int(0x1F));
            u_xlat12 = vs_TEXCOORD7.yyyy * _AdditionalLightsWorldToShadow[(u_xlati52 + 1) / 4][(u_xlati52 + 1) % 4];
            u_xlat12 = _AdditionalLightsWorldToShadow[u_xlati52 / 4][u_xlati52 % 4] * vs_TEXCOORD7.xxxx + u_xlat12;
            u_xlat12 = _AdditionalLightsWorldToShadow[(u_xlati52 + 2) / 4][(u_xlati52 + 2) % 4] * vs_TEXCOORD7.zzzz + u_xlat12;
            u_xlat12 = u_xlat12 + _AdditionalLightsWorldToShadow[(u_xlati52 + 3) / 4][(u_xlati52 + 3) % 4];
            u_xlat12.xyz = u_xlat12.xyz / u_xlat12.www;
            vec3 txVec1 = vec3(u_xlat12.xy,u_xlat12.z);
            u_xlat52 = textureLod(sampler2DShadow(_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare), txVec1, 0.0);
            u_xlat38.x = 1.0 + (-_AdditionalShadowParams[u_xlati49].x);
            u_xlat52 = u_xlat52 * _AdditionalShadowParams[u_xlati49].x + u_xlat38.x;
            u_xlatb38 = 0.0>=u_xlat12.z;
            u_xlatb53 = u_xlat12.z>=1.0;
            u_xlatb38 = u_xlatb53 || u_xlatb38;
            u_xlat52 = (u_xlatb38) ? 1.0 : u_xlat52;
        } else {
            u_xlat52 = 1.0;
        }
        u_xlat38.x = (-u_xlat52) + 1.0;
        u_xlat52 = u_xlat31 * u_xlat38.x + u_xlat52;
        u_xlati38 = 1 << (u_xlati49 & int(0x1F));
        u_xlati38 = int(uint(u_xlati38) & floatBitsToUint(_AdditionalLightsCookieEnableBits));
        if(u_xlati38 != 0) {
            u_xlati38 = int(_AdditionalLightsLightTypes[u_xlati49]);
            u_xlati53 = (u_xlati38 != 0) ? 0 : 1;
            u_xlati54 = u_xlati49 << (2 & int(0x1F));
            if(u_xlati53 != 0) {
                u_xlat12.xyz = vs_TEXCOORD7.yyy * _AdditionalLightsWorldToLights[(u_xlati54 + 1) / 4][(u_xlati54 + 1) % 4].xyw;
                u_xlat12.xyz = _AdditionalLightsWorldToLights[u_xlati54 / 4][u_xlati54 % 4].xyw * vs_TEXCOORD7.xxx + u_xlat12.xyz;
                u_xlat12.xyz = _AdditionalLightsWorldToLights[(u_xlati54 + 2) / 4][(u_xlati54 + 2) % 4].xyw * vs_TEXCOORD7.zzz + u_xlat12.xyz;
                u_xlat12.xyz = u_xlat12.xyz + _AdditionalLightsWorldToLights[(u_xlati54 + 3) / 4][(u_xlati54 + 3) % 4].xyw;
                u_xlat12.xy = u_xlat12.xy / u_xlat12.zz;
                u_xlat12.xy = u_xlat12.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
                u_xlat12.xy = clamp(u_xlat12.xy, 0.0, 1.0);
                u_xlat12.xy = _AdditionalLightsCookieAtlasUVRects[u_xlati49].xy * u_xlat12.xy + _AdditionalLightsCookieAtlasUVRects[u_xlati49].zw;
            } else {
                u_xlatb38 = u_xlati38==1;
                u_xlati38 = u_xlatb38 ? 1 : int(0);
                if(u_xlati38 != 0) {
                    u_xlat38.xy = vs_TEXCOORD7.yy * _AdditionalLightsWorldToLights[(u_xlati54 + 1) / 4][(u_xlati54 + 1) % 4].xy;
                    u_xlat38.xy = _AdditionalLightsWorldToLights[u_xlati54 / 4][u_xlati54 % 4].xy * vs_TEXCOORD7.xx + u_xlat38.xy;
                    u_xlat38.xy = _AdditionalLightsWorldToLights[(u_xlati54 + 2) / 4][(u_xlati54 + 2) % 4].xy * vs_TEXCOORD7.zz + u_xlat38.xy;
                    u_xlat38.xy = u_xlat38.xy + _AdditionalLightsWorldToLights[(u_xlati54 + 3) / 4][(u_xlati54 + 3) % 4].xy;
                    u_xlat38.xy = u_xlat38.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
                    u_xlat38.xy = fract(u_xlat38.xy);
                    u_xlat12.xy = _AdditionalLightsCookieAtlasUVRects[u_xlati49].xy * u_xlat38.xy + _AdditionalLightsCookieAtlasUVRects[u_xlati49].zw;
                } else {
                    u_xlat13 = vs_TEXCOORD7.yyyy * _AdditionalLightsWorldToLights[(u_xlati54 + 1) / 4][(u_xlati54 + 1) % 4];
                    u_xlat13 = _AdditionalLightsWorldToLights[u_xlati54 / 4][u_xlati54 % 4] * vs_TEXCOORD7.xxxx + u_xlat13;
                    u_xlat13 = _AdditionalLightsWorldToLights[(u_xlati54 + 2) / 4][(u_xlati54 + 2) % 4] * vs_TEXCOORD7.zzzz + u_xlat13;
                    u_xlat13 = u_xlat13 + _AdditionalLightsWorldToLights[(u_xlati54 + 3) / 4][(u_xlati54 + 3) % 4];
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
                    u_xlat12.xy = _AdditionalLightsCookieAtlasUVRects[u_xlati49].xy * u_xlat38.xy + _AdditionalLightsCookieAtlasUVRects[u_xlati49].zw;
                }
            }
            u_xlat12 = textureLod(sampler2D(_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp), u_xlat12.xy, 0.0);
            u_xlat38.x = (u_xlatb8.y) ? u_xlat12.w : u_xlat12.x;
            u_xlat12.xyz = (u_xlatb8.x) ? u_xlat12.xyz : u_xlat38.xxx;
        } else {
            u_xlat12.x = float(1.0);
            u_xlat12.y = float(1.0);
            u_xlat12.z = float(1.0);
        }
        u_xlat12.xyz = u_xlat12.xyz * _AdditionalLightsColor[u_xlati49].xyz;
        u_xlat49 = u_xlat50 * u_xlat52;
        u_xlat50 = dot(u_xlat2.xyz, u_xlat11.xyz);
        u_xlat50 = clamp(u_xlat50, 0.0, 1.0);
        u_xlat49 = u_xlat49 * u_xlat50;
        u_xlat12.xyz = vec3(u_xlat49) * u_xlat12.xyz;
        u_xlat10.xyz = u_xlat10.xyz * vec3(u_xlat51) + u_xlat6.xyz;
        u_xlat49 = dot(u_xlat10.xyz, u_xlat10.xyz);
        u_xlat49 = max(u_xlat49, 1.17549435e-38);
        u_xlat49 = inversesqrt(u_xlat49);
        u_xlat10.xyz = vec3(u_xlat49) * u_xlat10.xyz;
        u_xlat49 = dot(u_xlat2.xyz, u_xlat10.xyz);
        u_xlat49 = clamp(u_xlat49, 0.0, 1.0);
        u_xlat50 = dot(u_xlat11.xyz, u_xlat10.xyz);
        u_xlat50 = clamp(u_xlat50, 0.0, 1.0);
        u_xlat49 = u_xlat49 * u_xlat49;
        u_xlat49 = u_xlat49 * u_xlat1.x + 1.00001001;
        u_xlat50 = u_xlat50 * u_xlat50;
        u_xlat49 = u_xlat49 * u_xlat49;
        u_xlat50 = max(u_xlat50, 0.100000001);
        u_xlat49 = u_xlat49 * u_xlat50;
        u_xlat49 = u_xlat46 * u_xlat49;
        u_xlat49 = u_xlat47 / u_xlat49;
        u_xlat10.xyz = u_xlat0.xyz * vec3(u_xlat49) + u_xlat4.xyz;
        u_xlat9.xyz = u_xlat10.xyz * u_xlat12.xyz + u_xlat9.xyz;
    }
    u_xlat0.xyz = u_xlat7.xyz * u_xlat5.xyz + u_xlat3.xyz;
    u_xlat0.xyz = u_xlat9.xyz + u_xlat0.xyz;
    u_xlat45 = u_xlat16 * (-u_xlat16);
    u_xlat45 = exp2(u_xlat45);
    u_xlat0.xyz = u_xlat0.xyz + (-unity_FogColor.xyz);
    SV_Target0.xyz = vec3(u_xlat45) * u_xlat0.xyz + unity_FogColor.xyz;
    SV_Target0.w = 1.0;
    return;
}

