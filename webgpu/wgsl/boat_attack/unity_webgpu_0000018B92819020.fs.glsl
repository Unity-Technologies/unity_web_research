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
layout(set = 0, binding = 1) uniform mediump texture2D unity_Lightmap;
layout(set = 0, binding = 2) uniform mediump texture2D unity_LightmapInd;
layout(set = 0, binding = 3) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 4) uniform mediump texture2D _MetallicTex;
layout(set = 0, binding = 5) uniform mediump texture2D _TerrainHolesTexture;
layout(set = 0, binding = 6) uniform mediump texture2D _MainLightShadowmapTexture;
layout(set = 0, binding = 7) uniform mediump texture2D _AdditionalLightsShadowmapTexture;
layout(set = 0, binding = 8) uniform mediump texture2D _MainLightCookieTexture;
layout(set = 0, binding = 9) uniform mediump texture2D _AdditionalLightsCookieAtlasTexture;
layout(location = 0) in highp  vec4 vs_TEXCOORD0;
layout(location = 1) in highp  vec4 vs_TEXCOORD3;
layout(location = 2) in highp  vec4 vs_TEXCOORD4;
layout(location = 3) in highp  vec4 vs_TEXCOORD5;
layout(location = 4) in highp  vec3 vs_TEXCOORD7;
layout(location = 0) out highp vec4 SV_Target0;
vec4 u_xlat0;
bool u_xlatb0;
float u_xlat1;
vec4 u_xlat2;
int u_xlati2;
uint u_xlatu2;
bvec4 u_xlatb2;
vec4 u_xlat3;
vec3 u_xlat4;
vec3 u_xlat5;
vec4 u_xlat6;
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
vec3 u_xlat16;
bool u_xlatb16;
vec3 u_xlat18;
vec3 u_xlat19;
bvec2 u_xlatb19;
vec3 u_xlat22;
vec3 u_xlat25;
int u_xlati25;
bvec3 u_xlatb25;
float u_xlat30;
uint u_xlatu30;
bool u_xlatb30;
float u_xlat42;
uint u_xlatu42;
float u_xlat44;
float u_xlat45;
int u_xlati45;
uint u_xlatu45;
bool u_xlatb45;
float u_xlat48;
int u_xlati48;
float u_xlat49;
float u_xlat51;
int u_xlati51;
float u_xlat52;
int u_xlati52;
bool u_xlatb52;
float u_xlat53;
layout(set = 0, binding = 10) uniform mediump  sampler samplerunity_SpecCube0;
layout(set = 0, binding = 11) uniform mediump  sampler samplerunity_Lightmap;
layout(set = 0, binding = 12) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 13) uniform mediump  sampler sampler_MetallicTex;
layout(set = 0, binding = 14) uniform mediump  sampler sampler_TerrainHolesTexture;
layout(set = 0, binding = 15) uniform mediump  sampler sampler_LinearClamp;
layout(set = 0, binding = 16) uniform mediump  samplerShadow sampler_LinearClampCompare;
layout(set = 0, binding = 17) uniform mediump  sampler sampler_MainLightCookieTexture;
void main()
{
    u_xlat0.x = texture(sampler2D(_TerrainHolesTexture, sampler_TerrainHolesTexture), vs_TEXCOORD0.xy, _GlobalMipBias.x).x;
    u_xlatb0 = u_xlat0.x==0.0;
    if(((int(u_xlatb0) * int(0xffffffffu)))!=0){discard;}
    u_xlat0 = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD0.xy, _GlobalMipBias.x);
    u_xlat1 = texture(sampler2D(_MetallicTex, sampler_MetallicTex), vs_TEXCOORD0.xy, _GlobalMipBias.x).x;
    u_xlat15.x = dot(vs_TEXCOORD3.xyz, vs_TEXCOORD3.xyz);
    u_xlat15.x = inversesqrt(u_xlat15.x);
    u_xlat15.xyz = u_xlat15.xxx * vs_TEXCOORD3.xyz;
    u_xlat2.xyz = vs_TEXCOORD7.xyz + (-_CascadeShadowSplitSpheres0.xyz);
    u_xlat3.xyz = vs_TEXCOORD7.xyz + (-_CascadeShadowSplitSpheres1.xyz);
    u_xlat4.xyz = vs_TEXCOORD7.xyz + (-_CascadeShadowSplitSpheres2.xyz);
    u_xlat5.xyz = vs_TEXCOORD7.xyz + (-_CascadeShadowSplitSpheres3.xyz);
    u_xlat2.x = dot(u_xlat2.xyz, u_xlat2.xyz);
    u_xlat2.y = dot(u_xlat3.xyz, u_xlat3.xyz);
    u_xlat2.z = dot(u_xlat4.xyz, u_xlat4.xyz);
    u_xlat2.w = dot(u_xlat5.xyz, u_xlat5.xyz);
    u_xlatb2 = lessThan(u_xlat2, _CascadeShadowSplitSphereRadii);
    u_xlat3.x = u_xlatb2.x ? float(1.0) : 0.0;
    u_xlat3.y = u_xlatb2.y ? float(1.0) : 0.0;
    u_xlat3.z = u_xlatb2.z ? float(1.0) : 0.0;
    u_xlat3.w = u_xlatb2.w ? float(1.0) : 0.0;
;
    u_xlat2.x = (u_xlatb2.x) ? float(-1.0) : float(-0.0);
    u_xlat2.y = (u_xlatb2.y) ? float(-1.0) : float(-0.0);
    u_xlat2.z = (u_xlatb2.z) ? float(-1.0) : float(-0.0);
    u_xlat2.xyz = u_xlat2.xyz + u_xlat3.yzw;
    u_xlat3.yzw = max(u_xlat2.xyz, vec3(0.0, 0.0, 0.0));
    u_xlat2.x = dot(u_xlat3, vec4(4.0, 3.0, 2.0, 1.0));
    u_xlat2.x = (-u_xlat2.x) + 4.0;
    u_xlatu2 = uint(u_xlat2.x);
    u_xlati2 = int(u_xlatu2) << (2 & int(0x1F));
    u_xlat16.xyz = vs_TEXCOORD7.yyy * _MainLightWorldToShadow[(u_xlati2 + 1) / 4][(u_xlati2 + 1) % 4].xyz;
    u_xlat16.xyz = _MainLightWorldToShadow[u_xlati2 / 4][u_xlati2 % 4].xyz * vs_TEXCOORD7.xxx + u_xlat16.xyz;
    u_xlat16.xyz = _MainLightWorldToShadow[(u_xlati2 + 2) / 4][(u_xlati2 + 2) % 4].xyz * vs_TEXCOORD7.zzz + u_xlat16.xyz;
    u_xlat2.xyz = u_xlat16.xyz + _MainLightWorldToShadow[(u_xlati2 + 3) / 4][(u_xlati2 + 3) % 4].xyz;
    u_xlat44 = vs_TEXCOORD7.y * unity_MatrixV[1].z;
    u_xlat44 = unity_MatrixV[0].z * vs_TEXCOORD7.x + u_xlat44;
    u_xlat44 = unity_MatrixV[2].z * vs_TEXCOORD7.z + u_xlat44;
    u_xlat44 = u_xlat44 + unity_MatrixV[3].z;
    u_xlat44 = (-u_xlat44) + (-_ProjectionParams.y);
    u_xlat44 = max(u_xlat44, 0.0);
    u_xlat44 = u_xlat44 * unity_FogParams.x;
    u_xlat3 = texture(sampler2D(unity_LightmapInd, samplerunity_Lightmap), vs_TEXCOORD0.zw, _GlobalMipBias.x);
    u_xlat4.xyz = texture(sampler2D(unity_Lightmap, samplerunity_Lightmap), vs_TEXCOORD0.zw, _GlobalMipBias.x).xyz;
    u_xlat3.xyz = u_xlat3.xyz + vec3(-0.5, -0.5, -0.5);
    u_xlat3.x = dot(u_xlat15.xyz, u_xlat3.xyz);
    u_xlat3.x = u_xlat3.x + 0.5;
    u_xlat3.xyz = u_xlat3.xxx * u_xlat4.xyz;
    u_xlat45 = max(u_xlat3.w, 9.99999975e-05);
    u_xlat3.xyz = u_xlat3.xyz / vec3(u_xlat45);
    u_xlat45 = (-u_xlat1) * 0.959999979 + 0.959999979;
    u_xlat4.x = (-u_xlat45) + 1.0;
    u_xlat18.xyz = u_xlat0.xyz * vec3(u_xlat45);
    u_xlat0.xyz = u_xlat0.xyz + vec3(-0.0399999991, -0.0399999991, -0.0399999991);
    u_xlat0.xyz = vec3(u_xlat1) * u_xlat0.xyz + vec3(0.0399999991, 0.0399999991, 0.0399999991);
    u_xlat1 = (-u_xlat0.w) + 1.0;
    u_xlat45 = u_xlat1 * u_xlat1;
    u_xlat45 = max(u_xlat45, 0.0078125);
    u_xlat5.x = u_xlat45 * u_xlat45;
    u_xlat42 = u_xlat0.w + u_xlat4.x;
    u_xlat42 = clamp(u_xlat42, 0.0, 1.0);
    u_xlat4.x = u_xlat45 * 4.0 + 2.0;
    vec3 txVec0 = vec3(u_xlat2.xy,u_xlat2.z);
    u_xlat2.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_LinearClampCompare), txVec0, 0.0);
    u_xlat16.x = (-_MainLightShadowParams.x) + 1.0;
    u_xlat2.x = u_xlat2.x * _MainLightShadowParams.x + u_xlat16.x;
    u_xlatb16 = 0.0>=u_xlat2.z;
    u_xlatb30 = u_xlat2.z>=1.0;
    u_xlatb16 = u_xlatb30 || u_xlatb16;
    u_xlat2.x = (u_xlatb16) ? 1.0 : u_xlat2.x;
    u_xlat19.xyz = vs_TEXCOORD7.xyz + (-_WorldSpaceCameraPos.xyz);
    u_xlat16.x = dot(u_xlat19.xyz, u_xlat19.xyz);
    u_xlat30 = u_xlat16.x * _MainLightShadowParams.z + _MainLightShadowParams.w;
    u_xlat30 = clamp(u_xlat30, 0.0, 1.0);
    u_xlat19.x = (-u_xlat2.x) + 1.0;
    u_xlat2.x = u_xlat30 * u_xlat19.x + u_xlat2.x;
    u_xlatb30 = _MainLightCookieTextureFormat!=-1.0;
    if(u_xlatb30){
        u_xlat19.xy = vs_TEXCOORD7.yy * _MainLightWorldToLight[1].xy;
        u_xlat19.xy = _MainLightWorldToLight[0].xy * vs_TEXCOORD7.xx + u_xlat19.xy;
        u_xlat19.xy = _MainLightWorldToLight[2].xy * vs_TEXCOORD7.zz + u_xlat19.xy;
        u_xlat19.xy = u_xlat19.xy + _MainLightWorldToLight[3].xy;
        u_xlat19.xy = u_xlat19.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
        u_xlat6 = texture(sampler2D(_MainLightCookieTexture, sampler_MainLightCookieTexture), u_xlat19.xy, _GlobalMipBias.x);
        u_xlatb19.xy = equal(vec4(vec4(_MainLightCookieTextureFormat, _MainLightCookieTextureFormat, _MainLightCookieTextureFormat, _MainLightCookieTextureFormat)), vec4(0.0, 1.0, 0.0, 0.0)).xy;
        u_xlat30 = (u_xlatb19.y) ? u_xlat6.w : u_xlat6.x;
        u_xlat19.xyz = (u_xlatb19.x) ? u_xlat6.xyz : vec3(u_xlat30);
    } else {
        u_xlat19.x = float(1.0);
        u_xlat19.y = float(1.0);
        u_xlat19.z = float(1.0);
    }
    u_xlat19.xyz = u_xlat19.xyz * _MainLightColor.xyz;
    u_xlat6.x = vs_TEXCOORD3.w;
    u_xlat6.y = vs_TEXCOORD4.w;
    u_xlat6.z = vs_TEXCOORD5.w;
    u_xlat30 = dot((-u_xlat6.xyz), u_xlat15.xyz);
    u_xlat30 = u_xlat30 + u_xlat30;
    u_xlat7.xyz = u_xlat15.xyz * (-vec3(u_xlat30)) + (-u_xlat6.xyz);
    u_xlat30 = dot(u_xlat15.xyz, u_xlat6.xyz);
    u_xlat30 = clamp(u_xlat30, 0.0, 1.0);
    u_xlat30 = (-u_xlat30) + 1.0;
    u_xlat30 = u_xlat30 * u_xlat30;
    u_xlat30 = u_xlat30 * u_xlat30;
    u_xlat48 = (-u_xlat1) * 0.699999988 + 1.70000005;
    u_xlat1 = u_xlat1 * u_xlat48;
    u_xlat1 = u_xlat1 * 6.0;
    u_xlat7 = textureLod(samplerCube(unity_SpecCube0, samplerunity_SpecCube0), u_xlat7.xyz, u_xlat1);
    u_xlat1 = u_xlat7.w + -1.0;
    u_xlat1 = unity_SpecCube0_HDR.w * u_xlat1 + 1.0;
    u_xlat1 = max(u_xlat1, 0.0);
    u_xlat1 = log2(u_xlat1);
    u_xlat1 = u_xlat1 * unity_SpecCube0_HDR.y;
    u_xlat1 = exp2(u_xlat1);
    u_xlat1 = u_xlat1 * unity_SpecCube0_HDR.x;
    u_xlat7.xyz = u_xlat7.xyz * vec3(u_xlat1);
    u_xlat8.xy = vec2(u_xlat45) * vec2(u_xlat45) + vec2(-1.0, 1.0);
    u_xlat1 = float(1.0) / u_xlat8.y;
    u_xlat22.xyz = (-u_xlat0.xyz) + vec3(u_xlat42);
    u_xlat22.xyz = vec3(u_xlat30) * u_xlat22.xyz + u_xlat0.xyz;
    u_xlat22.xyz = vec3(u_xlat1) * u_xlat22.xyz;
    u_xlat7.xyz = u_xlat7.xyz * u_xlat22.xyz;
    u_xlat3.xyz = u_xlat3.xyz * u_xlat18.xyz + u_xlat7.xyz;
    u_xlat42 = u_xlat2.x * unity_LightData.z;
    u_xlat1 = dot(u_xlat15.xyz, _MainLightPosition.xyz);
    u_xlat1 = clamp(u_xlat1, 0.0, 1.0);
    u_xlat42 = u_xlat42 * u_xlat1;
    u_xlat19.xyz = vec3(u_xlat42) * u_xlat19.xyz;
    u_xlat7.xyz = u_xlat6.xyz + _MainLightPosition.xyz;
    u_xlat42 = dot(u_xlat7.xyz, u_xlat7.xyz);
    u_xlat42 = max(u_xlat42, 1.17549435e-38);
    u_xlat42 = inversesqrt(u_xlat42);
    u_xlat7.xyz = vec3(u_xlat42) * u_xlat7.xyz;
    u_xlat42 = dot(u_xlat15.xyz, u_xlat7.xyz);
    u_xlat42 = clamp(u_xlat42, 0.0, 1.0);
    u_xlat1 = dot(_MainLightPosition.xyz, u_xlat7.xyz);
    u_xlat1 = clamp(u_xlat1, 0.0, 1.0);
    u_xlat42 = u_xlat42 * u_xlat42;
    u_xlat42 = u_xlat42 * u_xlat8.x + 1.00001001;
    u_xlat1 = u_xlat1 * u_xlat1;
    u_xlat42 = u_xlat42 * u_xlat42;
    u_xlat1 = max(u_xlat1, 0.100000001);
    u_xlat42 = u_xlat42 * u_xlat1;
    u_xlat42 = u_xlat4.x * u_xlat42;
    u_xlat42 = u_xlat5.x / u_xlat42;
    u_xlat7.xyz = u_xlat0.xyz * vec3(u_xlat42) + u_xlat18.xyz;
    u_xlat42 = min(_AdditionalLightsCount.x, unity_LightData.y);
    u_xlatu42 =  uint(int(u_xlat42));
    u_xlat1 = u_xlat16.x * _AdditionalShadowFadeParams.x + _AdditionalShadowFadeParams.y;
    u_xlat1 = clamp(u_xlat1, 0.0, 1.0);
    u_xlatb2.xy = equal(vec4(vec4(_AdditionalLightsCookieAtlasTextureFormat, _AdditionalLightsCookieAtlasTextureFormat, _AdditionalLightsCookieAtlasTextureFormat, _AdditionalLightsCookieAtlasTextureFormat)), vec4(0.0, 1.0, 0.0, 0.0)).xy;
    u_xlat22.x = float(0.0);
    u_xlat22.y = float(0.0);
    u_xlat22.z = float(0.0);
    for(uint u_xlatu_loop_1 = 0u ; u_xlatu_loop_1<u_xlatu42 ; u_xlatu_loop_1++)
    {
        u_xlatu45 = u_xlatu_loop_1 >> (2u & uint(0x1F));
        u_xlati48 = int(u_xlatu_loop_1 & 3u);
        u_xlat45 = dot(unity_LightIndices[int(u_xlatu45)], uintBitsToFloat(ImmCB_0[u_xlati48]));
        u_xlati45 = int(u_xlat45);
        u_xlat9.xyz = (-vs_TEXCOORD7.xyz) * _AdditionalLightsPosition[u_xlati45].www + _AdditionalLightsPosition[u_xlati45].xyz;
        u_xlat48 = dot(u_xlat9.xyz, u_xlat9.xyz);
        u_xlat48 = max(u_xlat48, 6.10351562e-05);
        u_xlat49 = inversesqrt(u_xlat48);
        u_xlat10.xyz = vec3(u_xlat49) * u_xlat9.xyz;
        u_xlat51 = float(1.0) / float(u_xlat48);
        u_xlat48 = u_xlat48 * _AdditionalLightsAttenuation[u_xlati45].x;
        u_xlat48 = (-u_xlat48) * u_xlat48 + 1.0;
        u_xlat48 = max(u_xlat48, 0.0);
        u_xlat48 = u_xlat48 * u_xlat48;
        u_xlat48 = u_xlat48 * u_xlat51;
        u_xlat51 = dot(_AdditionalLightsSpotDir[u_xlati45].xyz, u_xlat10.xyz);
        u_xlat51 = u_xlat51 * _AdditionalLightsAttenuation[u_xlati45].z + _AdditionalLightsAttenuation[u_xlati45].w;
        u_xlat51 = clamp(u_xlat51, 0.0, 1.0);
        u_xlat51 = u_xlat51 * u_xlat51;
        u_xlat48 = u_xlat48 * u_xlat51;
        u_xlati51 = int(_AdditionalShadowParams[u_xlati45].w);
        u_xlatb52 = u_xlati51>=0;
        if(u_xlatb52){
            u_xlatb52 = vec4(0.0, 0.0, 0.0, 0.0)!=vec4(_AdditionalShadowParams[u_xlati45].z);
            if(u_xlatb52){
                u_xlatb11.xyz = greaterThanEqual(abs(u_xlat10.zzyz), abs(u_xlat10.xyxx)).xyz;
                u_xlatb52 = u_xlatb11.y && u_xlatb11.x;
                u_xlatb11.xyw = lessThan((-u_xlat10.zyzx), vec4(0.0, 0.0, 0.0, 0.0)).xyw;
                u_xlat11.x = (u_xlatb11.x) ? float(5.0) : float(4.0);
                u_xlat11.y = (u_xlatb11.y) ? float(3.0) : float(2.0);
                u_xlat53 = u_xlatb11.w ? 1.0 : float(0.0);
                u_xlat25.x = (u_xlatb11.z) ? u_xlat11.y : u_xlat53;
                u_xlat52 = (u_xlatb52) ? u_xlat11.x : u_xlat25.x;
                u_xlat11.x = trunc(_AdditionalShadowParams[u_xlati45].w);
                u_xlat52 = u_xlat52 + u_xlat11.x;
                u_xlati51 = int(u_xlat52);
            }
            u_xlati51 = u_xlati51 << (2 & int(0x1F));
            u_xlat11 = vs_TEXCOORD7.yyyy * _AdditionalLightsWorldToShadow[(u_xlati51 + 1) / 4][(u_xlati51 + 1) % 4];
            u_xlat11 = _AdditionalLightsWorldToShadow[u_xlati51 / 4][u_xlati51 % 4] * vs_TEXCOORD7.xxxx + u_xlat11;
            u_xlat11 = _AdditionalLightsWorldToShadow[(u_xlati51 + 2) / 4][(u_xlati51 + 2) % 4] * vs_TEXCOORD7.zzzz + u_xlat11;
            u_xlat11 = u_xlat11 + _AdditionalLightsWorldToShadow[(u_xlati51 + 3) / 4][(u_xlati51 + 3) % 4];
            u_xlat11.xyz = u_xlat11.xyz / u_xlat11.www;
            vec3 txVec1 = vec3(u_xlat11.xy,u_xlat11.z);
            u_xlat51 = textureLod(sampler2DShadow(_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare), txVec1, 0.0);
            u_xlat52 = 1.0 + (-_AdditionalShadowParams[u_xlati45].x);
            u_xlat51 = u_xlat51 * _AdditionalShadowParams[u_xlati45].x + u_xlat52;
            u_xlatb52 = 0.0>=u_xlat11.z;
            u_xlatb11.x = u_xlat11.z>=1.0;
            u_xlatb52 = u_xlatb52 || u_xlatb11.x;
            u_xlat51 = (u_xlatb52) ? 1.0 : u_xlat51;
        } else {
            u_xlat51 = 1.0;
        }
        u_xlat52 = (-u_xlat51) + 1.0;
        u_xlat51 = u_xlat1 * u_xlat52 + u_xlat51;
        u_xlati52 = 1 << (u_xlati45 & int(0x1F));
        u_xlati52 = int(uint(u_xlati52) & floatBitsToUint(_AdditionalLightsCookieEnableBits));
        if(u_xlati52 != 0) {
            u_xlati52 = int(_AdditionalLightsLightTypes[u_xlati45]);
            u_xlati11 = (u_xlati52 != 0) ? 0 : 1;
            u_xlati25 = u_xlati45 << (2 & int(0x1F));
            if(u_xlati11 != 0) {
                u_xlat11.xzw = vs_TEXCOORD7.yyy * _AdditionalLightsWorldToLights[(u_xlati25 + 1) / 4][(u_xlati25 + 1) % 4].xyw;
                u_xlat11.xzw = _AdditionalLightsWorldToLights[u_xlati25 / 4][u_xlati25 % 4].xyw * vs_TEXCOORD7.xxx + u_xlat11.xzw;
                u_xlat11.xzw = _AdditionalLightsWorldToLights[(u_xlati25 + 2) / 4][(u_xlati25 + 2) % 4].xyw * vs_TEXCOORD7.zzz + u_xlat11.xzw;
                u_xlat11.xzw = u_xlat11.xzw + _AdditionalLightsWorldToLights[(u_xlati25 + 3) / 4][(u_xlati25 + 3) % 4].xyw;
                u_xlat11.xz = u_xlat11.xz / u_xlat11.ww;
                u_xlat11.xz = u_xlat11.xz * vec2(0.5, 0.5) + vec2(0.5, 0.5);
                u_xlat11.xz = clamp(u_xlat11.xz, 0.0, 1.0);
                u_xlat11.xz = _AdditionalLightsCookieAtlasUVRects[u_xlati45].xy * u_xlat11.xz + _AdditionalLightsCookieAtlasUVRects[u_xlati45].zw;
            } else {
                u_xlatb52 = u_xlati52==1;
                u_xlati52 = u_xlatb52 ? 1 : int(0);
                if(u_xlati52 != 0) {
                    u_xlat12.xy = vs_TEXCOORD7.yy * _AdditionalLightsWorldToLights[(u_xlati25 + 1) / 4][(u_xlati25 + 1) % 4].xy;
                    u_xlat12.xy = _AdditionalLightsWorldToLights[u_xlati25 / 4][u_xlati25 % 4].xy * vs_TEXCOORD7.xx + u_xlat12.xy;
                    u_xlat12.xy = _AdditionalLightsWorldToLights[(u_xlati25 + 2) / 4][(u_xlati25 + 2) % 4].xy * vs_TEXCOORD7.zz + u_xlat12.xy;
                    u_xlat12.xy = u_xlat12.xy + _AdditionalLightsWorldToLights[(u_xlati25 + 3) / 4][(u_xlati25 + 3) % 4].xy;
                    u_xlat12.xy = u_xlat12.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
                    u_xlat12.xy = fract(u_xlat12.xy);
                    u_xlat11.xz = _AdditionalLightsCookieAtlasUVRects[u_xlati45].xy * u_xlat12.xy + _AdditionalLightsCookieAtlasUVRects[u_xlati45].zw;
                } else {
                    u_xlat12 = vs_TEXCOORD7.yyyy * _AdditionalLightsWorldToLights[(u_xlati25 + 1) / 4][(u_xlati25 + 1) % 4];
                    u_xlat12 = _AdditionalLightsWorldToLights[u_xlati25 / 4][u_xlati25 % 4] * vs_TEXCOORD7.xxxx + u_xlat12;
                    u_xlat12 = _AdditionalLightsWorldToLights[(u_xlati25 + 2) / 4][(u_xlati25 + 2) % 4] * vs_TEXCOORD7.zzzz + u_xlat12;
                    u_xlat12 = u_xlat12 + _AdditionalLightsWorldToLights[(u_xlati25 + 3) / 4][(u_xlati25 + 3) % 4];
                    u_xlat12.xyz = u_xlat12.xyz / u_xlat12.www;
                    u_xlat52 = dot(u_xlat12.xyz, u_xlat12.xyz);
                    u_xlat52 = inversesqrt(u_xlat52);
                    u_xlat12.xyz = vec3(u_xlat52) * u_xlat12.xyz;
                    u_xlat52 = dot(abs(u_xlat12.xyz), vec3(1.0, 1.0, 1.0));
                    u_xlat52 = max(u_xlat52, 9.99999997e-07);
                    u_xlat52 = float(1.0) / float(u_xlat52);
                    u_xlat13.xyz = vec3(u_xlat52) * u_xlat12.zxy;
                    u_xlat13.x = (-u_xlat13.x);
                    u_xlat13.x = clamp(u_xlat13.x, 0.0, 1.0);
                    u_xlatb25.xz = greaterThanEqual(u_xlat13.yyzz, vec4(0.0, 0.0, 0.0, 0.0)).xz;
                    u_xlat25.x = (u_xlatb25.x) ? u_xlat13.x : (-u_xlat13.x);
                    u_xlat25.z = (u_xlatb25.z) ? u_xlat13.x : (-u_xlat13.x);
                    u_xlat25.xz = u_xlat12.xy * vec2(u_xlat52) + u_xlat25.xz;
                    u_xlat25.xz = u_xlat25.xz * vec2(0.5, 0.5) + vec2(0.5, 0.5);
                    u_xlat25.xz = clamp(u_xlat25.xz, 0.0, 1.0);
                    u_xlat11.xz = _AdditionalLightsCookieAtlasUVRects[u_xlati45].xy * u_xlat25.xz + _AdditionalLightsCookieAtlasUVRects[u_xlati45].zw;
                }
            }
            u_xlat11 = textureLod(sampler2D(_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp), u_xlat11.xz, 0.0);
            u_xlat52 = (u_xlatb2.y) ? u_xlat11.w : u_xlat11.x;
            u_xlat11.xyz = (u_xlatb2.x) ? u_xlat11.xyz : vec3(u_xlat52);
        } else {
            u_xlat11.x = float(1.0);
            u_xlat11.y = float(1.0);
            u_xlat11.z = float(1.0);
        }
        u_xlat11.xyz = u_xlat11.xyz * _AdditionalLightsColor[u_xlati45].xyz;
        u_xlat45 = u_xlat48 * u_xlat51;
        u_xlat48 = dot(u_xlat15.xyz, u_xlat10.xyz);
        u_xlat48 = clamp(u_xlat48, 0.0, 1.0);
        u_xlat45 = u_xlat45 * u_xlat48;
        u_xlat11.xyz = vec3(u_xlat45) * u_xlat11.xyz;
        u_xlat9.xyz = u_xlat9.xyz * vec3(u_xlat49) + u_xlat6.xyz;
        u_xlat45 = dot(u_xlat9.xyz, u_xlat9.xyz);
        u_xlat45 = max(u_xlat45, 1.17549435e-38);
        u_xlat45 = inversesqrt(u_xlat45);
        u_xlat9.xyz = vec3(u_xlat45) * u_xlat9.xyz;
        u_xlat45 = dot(u_xlat15.xyz, u_xlat9.xyz);
        u_xlat45 = clamp(u_xlat45, 0.0, 1.0);
        u_xlat48 = dot(u_xlat10.xyz, u_xlat9.xyz);
        u_xlat48 = clamp(u_xlat48, 0.0, 1.0);
        u_xlat45 = u_xlat45 * u_xlat45;
        u_xlat45 = u_xlat45 * u_xlat8.x + 1.00001001;
        u_xlat48 = u_xlat48 * u_xlat48;
        u_xlat45 = u_xlat45 * u_xlat45;
        u_xlat48 = max(u_xlat48, 0.100000001);
        u_xlat45 = u_xlat45 * u_xlat48;
        u_xlat45 = u_xlat4.x * u_xlat45;
        u_xlat45 = u_xlat5.x / u_xlat45;
        u_xlat9.xyz = u_xlat0.xyz * vec3(u_xlat45) + u_xlat18.xyz;
        u_xlat22.xyz = u_xlat9.xyz * u_xlat11.xyz + u_xlat22.xyz;
    }
    u_xlat0.xyz = u_xlat7.xyz * u_xlat19.xyz + u_xlat3.xyz;
    u_xlat0.xyz = u_xlat22.xyz + u_xlat0.xyz;
    u_xlat42 = u_xlat44 * (-u_xlat44);
    u_xlat42 = exp2(u_xlat42);
    u_xlat0.xyz = u_xlat0.xyz + (-unity_FogColor.xyz);
    SV_Target0.xyz = vec3(u_xlat42) * u_xlat0.xyz + unity_FogColor.xyz;
    SV_Target0.w = 1.0;
    return;
}

