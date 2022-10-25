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
layout(set = 0, binding = 0) uniform mediump textureCube unity_SpecCube0;
layout(set = 0, binding = 1) uniform mediump texture2D unity_Lightmap;
layout(set = 0, binding = 2) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 3) uniform mediump texture2D _MetallicTex;
layout(set = 0, binding = 4) uniform mediump texture2D _ScreenSpaceOcclusionTexture;
layout(set = 0, binding = 5) uniform mediump texture2D _MainLightShadowmapTexture;
layout(set = 0, binding = 6) uniform mediump texture2D _MainLightCookieTexture;
layout(set = 0, binding = 7) uniform mediump texture2D _AdditionalLightsCookieAtlasTexture;
layout(location = 0) in highp vec4 vs_TEXCOORD0;
layout(location = 1) in highp vec3 vs_TEXCOORD3;
layout(location = 2) in highp vec3 vs_TEXCOORD7;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 8) uniform mediump  sampler samplerunity_SpecCube0;
layout(set = 0, binding = 9) uniform mediump  sampler samplerunity_Lightmap;
layout(set = 0, binding = 10) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 11) uniform mediump  sampler sampler_MetallicTex;
layout(set = 0, binding = 12) uniform mediump  sampler sampler_ScreenSpaceOcclusionTexture;
layout(set = 0, binding = 13) uniform mediump  samplerShadow sampler_MainLightShadowmapTexture;
layout(set = 0, binding = 14) uniform mediump  sampler sampler_MainLightCookieTexture;
layout(set = 0, binding = 15) uniform mediump  sampler sampler_AdditionalLightsCookieAtlasTexture;
void main()
{
vec4 u_xlat0;
float u_xlat1;
uint u_xlatu1;
vec4 u_xlat2;
int u_xlati2;
uint u_xlatu2;
bvec4 u_xlatb2;
vec3 u_xlat3;
vec4 u_xlat4;
vec3 u_xlat5;
vec3 u_xlat6;
vec4 u_xlat7;
vec4 u_xlat8;
vec3 u_xlat9;
vec4 u_xlat10;
int u_xlati10;
vec4 u_xlat11;
vec3 u_xlat12;
vec3 u_xlat14;
bool u_xlatb14;
vec3 u_xlat15;
bvec2 u_xlatb15;
float u_xlat18;
vec3 u_xlat23;
int u_xlati23;
bvec3 u_xlatb23;
float u_xlat27;
vec2 u_xlat28;
bool u_xlatb28;
bvec2 u_xlatb31;
float u_xlat39;
uint u_xlatu39;
float u_xlat41;
float u_xlat42;
float u_xlat43;
float u_xlat45;
uint u_xlatu45;
bool u_xlatb45;
float u_xlat46;
int u_xlati46;
float u_xlat47;
float u_xlat48;
int u_xlati48;
uint u_xlatu48;
bool u_xlatb48;
vec4 hlslcc_FragCoord = vec4(gl_FragCoord.xyz, 1.0/gl_FragCoord.w);
    u_xlat0 = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD0.xy, _GlobalMipBias.x);
    u_xlat1 = texture(sampler2D(_MetallicTex, sampler_MetallicTex), vs_TEXCOORD0.xy, _GlobalMipBias.x).x;
    u_xlatb14 = unity_OrthoParams.w==0.0;
    u_xlat2.xyz = (-vs_TEXCOORD7.xyz) + _WorldSpaceCameraPos.xyz;
    u_xlat27 = dot(u_xlat2.xyz, u_xlat2.xyz);
    u_xlat27 = inversesqrt(u_xlat27);
    u_xlat2.xyz = vec3(u_xlat27) * u_xlat2.xyz;
    u_xlat3.x = (u_xlatb14) ? u_xlat2.x : unity_MatrixV[0].z;
    u_xlat3.y = (u_xlatb14) ? u_xlat2.y : unity_MatrixV[1].z;
    u_xlat3.z = (u_xlatb14) ? u_xlat2.z : unity_MatrixV[2].z;
    u_xlat14.x = dot(vs_TEXCOORD3.xyz, vs_TEXCOORD3.xyz);
    u_xlat14.x = inversesqrt(u_xlat14.x);
    u_xlat14.xyz = u_xlat14.xxx * vs_TEXCOORD3.xyz;
    u_xlat2.xyz = vs_TEXCOORD7.xyz + (-_CascadeShadowSplitSpheres0.xyz);
    u_xlat4.xyz = vs_TEXCOORD7.xyz + (-_CascadeShadowSplitSpheres1.xyz);
    u_xlat5.xyz = vs_TEXCOORD7.xyz + (-_CascadeShadowSplitSpheres2.xyz);
    u_xlat6.xyz = vs_TEXCOORD7.xyz + (-_CascadeShadowSplitSpheres3.xyz);
    u_xlat2.x = dot(u_xlat2.xyz, u_xlat2.xyz);
    u_xlat2.y = dot(u_xlat4.xyz, u_xlat4.xyz);
    u_xlat2.z = dot(u_xlat5.xyz, u_xlat5.xyz);
    u_xlat2.w = dot(u_xlat6.xyz, u_xlat6.xyz);
    u_xlatb2 = lessThan(u_xlat2, _CascadeShadowSplitSphereRadii);
    u_xlat4.x = u_xlatb2.x ? float(1.0) : 0.0;
    u_xlat4.y = u_xlatb2.y ? float(1.0) : 0.0;
    u_xlat4.z = u_xlatb2.z ? float(1.0) : 0.0;
    u_xlat4.w = u_xlatb2.w ? float(1.0) : 0.0;
;
    u_xlat2.x = (u_xlatb2.x) ? float(-1.0) : float(-0.0);
    u_xlat2.y = (u_xlatb2.y) ? float(-1.0) : float(-0.0);
    u_xlat2.z = (u_xlatb2.z) ? float(-1.0) : float(-0.0);
    u_xlat2.xyz = u_xlat2.xyz + u_xlat4.yzw;
    u_xlat4.yzw = max(u_xlat2.xyz, vec3(0.0, 0.0, 0.0));
    u_xlat2.x = dot(u_xlat4, vec4(4.0, 3.0, 2.0, 1.0));
    u_xlat2.x = (-u_xlat2.x) + 4.0;
    u_xlatu2 = uint(u_xlat2.x);
    u_xlati2 = int(u_xlatu2) << (2 & int(0x1F));
    u_xlat15.xyz = vs_TEXCOORD7.yyy * _MainLightWorldToShadow[(u_xlati2 + 1) / 4][(u_xlati2 + 1) % 4].xyz;
    u_xlat15.xyz = _MainLightWorldToShadow[u_xlati2 / 4][u_xlati2 % 4].xyz * vs_TEXCOORD7.xxx + u_xlat15.xyz;
    u_xlat15.xyz = _MainLightWorldToShadow[(u_xlati2 + 2) / 4][(u_xlati2 + 2) % 4].xyz * vs_TEXCOORD7.zzz + u_xlat15.xyz;
    u_xlat2.xyz = u_xlat15.xyz + _MainLightWorldToShadow[(u_xlati2 + 3) / 4][(u_xlati2 + 3) % 4].xyz;
    u_xlat4.xyz = texture(sampler2D(unity_Lightmap, samplerunity_Lightmap), vs_TEXCOORD0.zw, _GlobalMipBias.x).xyz;
    u_xlat5.xy = vec2(1.0) / vec2(_ScaledScreenParams.xy);
    u_xlat5.xy = u_xlat5.xy * hlslcc_FragCoord.xy;
    u_xlat41 = u_xlat5.y * _ScaleBiasRt.x + _ScaleBiasRt.y;
    u_xlat5.z = (-u_xlat41) + 1.0;
    u_xlat41 = (-u_xlat1) * 0.959999979 + 0.959999979;
    u_xlat42 = (-u_xlat41) + 1.0;
    u_xlat6.xyz = u_xlat0.xyz * vec3(u_xlat41);
    u_xlat0.xyz = u_xlat0.xyz + vec3(-0.0399999991, -0.0399999991, -0.0399999991);
    u_xlat0.xyz = vec3(u_xlat1) * u_xlat0.xyz + vec3(0.0399999991, 0.0399999991, 0.0399999991);
    u_xlat1 = (-u_xlat0.w) + 1.0;
    u_xlat41 = u_xlat1 * u_xlat1;
    u_xlat41 = max(u_xlat41, 0.0078125);
    u_xlat43 = u_xlat41 * u_xlat41;
    u_xlat39 = u_xlat0.w + u_xlat42;
    u_xlat39 = clamp(u_xlat39, 0.0, 1.0);
    u_xlat42 = u_xlat41 * 4.0 + 2.0;
    u_xlat5.x = texture(sampler2D(_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture), u_xlat5.xz, _GlobalMipBias.x).x;
    u_xlat18 = u_xlat5.x + -1.0;
    u_xlat18 = _AmbientOcclusionParam.w * u_xlat18 + 1.0;
    u_xlat5.x = min(u_xlat5.x, 1.0);
    vec3 txVec0 = vec3(u_xlat2.xy,u_xlat2.z);
    u_xlat2.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec0, 0.0);
    u_xlat15.x = (-_MainLightShadowParams.x) + 1.0;
    u_xlat2.x = u_xlat2.x * _MainLightShadowParams.x + u_xlat15.x;
    u_xlatb15.x = 0.0>=u_xlat2.z;
    u_xlatb28 = u_xlat2.z>=1.0;
    u_xlatb15.x = u_xlatb28 || u_xlatb15.x;
    u_xlat2.x = (u_xlatb15.x) ? 1.0 : u_xlat2.x;
    u_xlat7.xyz = vs_TEXCOORD7.xyz + (-_WorldSpaceCameraPos.xyz);
    u_xlat15.x = dot(u_xlat7.xyz, u_xlat7.xyz);
    u_xlat15.x = u_xlat15.x * _MainLightShadowParams.z + _MainLightShadowParams.w;
    u_xlat15.x = clamp(u_xlat15.x, 0.0, 1.0);
    u_xlat28.x = (-u_xlat2.x) + 1.0;
    u_xlat2.x = u_xlat15.x * u_xlat28.x + u_xlat2.x;
    u_xlatb15.x = _MainLightCookieTextureFormat!=-1.0;
    if(u_xlatb15.x){
        u_xlat15.xy = vs_TEXCOORD7.yy * _MainLightWorldToLight[1].xy;
        u_xlat15.xy = _MainLightWorldToLight[0].xy * vs_TEXCOORD7.xx + u_xlat15.xy;
        u_xlat15.xy = _MainLightWorldToLight[2].xy * vs_TEXCOORD7.zz + u_xlat15.xy;
        u_xlat15.xy = u_xlat15.xy + _MainLightWorldToLight[3].xy;
        u_xlat15.xy = u_xlat15.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
        u_xlat7 = texture(sampler2D(_MainLightCookieTexture, sampler_MainLightCookieTexture), u_xlat15.xy, _GlobalMipBias.x);
        u_xlatb15.xy = equal(vec4(vec4(_MainLightCookieTextureFormat, _MainLightCookieTextureFormat, _MainLightCookieTextureFormat, _MainLightCookieTextureFormat)), vec4(0.0, 1.0, 0.0, 0.0)).xy;
        u_xlat28.x = (u_xlatb15.y) ? u_xlat7.w : u_xlat7.x;
        u_xlat7.xyz = (u_xlatb15.x) ? u_xlat7.xyz : u_xlat28.xxx;
    } else {
        u_xlat7.x = float(1.0);
        u_xlat7.y = float(1.0);
        u_xlat7.z = float(1.0);
    }
    u_xlat7.xyz = u_xlat7.xyz * _MainLightColor.xyz;
    u_xlat7.xyz = vec3(u_xlat18) * u_xlat7.xyz;
    u_xlat15.x = dot((-u_xlat3.xyz), u_xlat14.xyz);
    u_xlat15.x = u_xlat15.x + u_xlat15.x;
    u_xlat8.xyz = u_xlat14.xyz * (-u_xlat15.xxx) + (-u_xlat3.xyz);
    u_xlat15.x = dot(u_xlat14.xyz, u_xlat3.xyz);
    u_xlat15.x = clamp(u_xlat15.x, 0.0, 1.0);
    u_xlat15.x = (-u_xlat15.x) + 1.0;
    u_xlat15.x = u_xlat15.x * u_xlat15.x;
    u_xlat15.x = u_xlat15.x * u_xlat15.x;
    u_xlat28.x = (-u_xlat1) * 0.699999988 + 1.70000005;
    u_xlat1 = u_xlat1 * u_xlat28.x;
    u_xlat1 = u_xlat1 * 6.0;
    u_xlat8 = textureLod(samplerCube(unity_SpecCube0, samplerunity_SpecCube0), u_xlat8.xyz, u_xlat1);
    u_xlat1 = u_xlat8.w + -1.0;
    u_xlat1 = unity_SpecCube0_HDR.w * u_xlat1 + 1.0;
    u_xlat1 = max(u_xlat1, 0.0);
    u_xlat1 = log2(u_xlat1);
    u_xlat1 = u_xlat1 * unity_SpecCube0_HDR.y;
    u_xlat1 = exp2(u_xlat1);
    u_xlat1 = u_xlat1 * unity_SpecCube0_HDR.x;
    u_xlat8.xyz = u_xlat8.xyz * vec3(u_xlat1);
    u_xlat28.xy = vec2(u_xlat41) * vec2(u_xlat41) + vec2(-1.0, 1.0);
    u_xlat1 = float(1.0) / u_xlat28.y;
    u_xlat9.xyz = (-u_xlat0.xyz) + vec3(u_xlat39);
    u_xlat9.xyz = u_xlat15.xxx * u_xlat9.xyz + u_xlat0.xyz;
    u_xlat9.xyz = vec3(u_xlat1) * u_xlat9.xyz;
    u_xlat8.xyz = u_xlat8.xyz * u_xlat9.xyz;
    u_xlat4.xyz = u_xlat4.xyz * u_xlat6.xyz + u_xlat8.xyz;
    u_xlat39 = u_xlat2.x * unity_LightData.z;
    u_xlat1 = dot(u_xlat14.xyz, _MainLightPosition.xyz);
    u_xlat1 = clamp(u_xlat1, 0.0, 1.0);
    u_xlat39 = u_xlat39 * u_xlat1;
    u_xlat2.xyw = vec3(u_xlat39) * u_xlat7.xyz;
    u_xlat7.xyz = u_xlat3.xyz + _MainLightPosition.xyz;
    u_xlat39 = dot(u_xlat7.xyz, u_xlat7.xyz);
    u_xlat39 = max(u_xlat39, 1.17549435e-37);
    u_xlat39 = inversesqrt(u_xlat39);
    u_xlat7.xyz = vec3(u_xlat39) * u_xlat7.xyz;
    u_xlat39 = dot(u_xlat14.xyz, u_xlat7.xyz);
    u_xlat39 = clamp(u_xlat39, 0.0, 1.0);
    u_xlat1 = dot(_MainLightPosition.xyz, u_xlat7.xyz);
    u_xlat1 = clamp(u_xlat1, 0.0, 1.0);
    u_xlat39 = u_xlat39 * u_xlat39;
    u_xlat39 = u_xlat39 * u_xlat28.x + 1.00001001;
    u_xlat1 = u_xlat1 * u_xlat1;
    u_xlat39 = u_xlat39 * u_xlat39;
    u_xlat1 = max(u_xlat1, 0.100000001);
    u_xlat39 = u_xlat39 * u_xlat1;
    u_xlat39 = u_xlat42 * u_xlat39;
    u_xlat39 = u_xlat43 / u_xlat39;
    u_xlat7.xyz = u_xlat0.xyz * vec3(u_xlat39) + u_xlat6.xyz;
    u_xlat2.xyw = u_xlat2.xyw * u_xlat7.xyz;
    u_xlat39 = min(_AdditionalLightsCount.x, unity_LightData.y);
    u_xlatu39 =  uint(int(u_xlat39));
    u_xlatb31.xy = equal(vec4(vec4(_AdditionalLightsCookieAtlasTextureFormat, _AdditionalLightsCookieAtlasTextureFormat, _AdditionalLightsCookieAtlasTextureFormat, _AdditionalLightsCookieAtlasTextureFormat)), vec4(0.0, 1.0, 0.0, 1.0)).xy;
    u_xlat7.x = float(0.0);
    u_xlat7.y = float(0.0);
    u_xlat7.z = float(0.0);
    for(uint u_xlatu_loop_1 = 0u ; u_xlatu_loop_1<u_xlatu39 ; u_xlatu_loop_1++)
    {
        u_xlatu45 = u_xlatu_loop_1 >> (2u & uint(0x1F));
        u_xlati46 = int(u_xlatu_loop_1 & 3u);
        u_xlat45 = dot(unity_LightIndices[int(u_xlatu45)], uintBitsToFloat(ImmCB_0[u_xlati46]));
        u_xlatu45 =  uint(int(u_xlat45));
        u_xlat8.xyz = (-vs_TEXCOORD7.xyz) * _AdditionalLightsPosition[int(u_xlatu45)].www + _AdditionalLightsPosition[int(u_xlatu45)].xyz;
        u_xlat46 = dot(u_xlat8.xyz, u_xlat8.xyz);
        u_xlat46 = max(u_xlat46, 6.10351562e-05);
        u_xlat47 = inversesqrt(u_xlat46);
        u_xlat9.xyz = vec3(u_xlat47) * u_xlat8.xyz;
        u_xlat48 = float(1.0) / float(u_xlat46);
        u_xlat46 = u_xlat46 * _AdditionalLightsAttenuation[int(u_xlatu45)].x;
        u_xlat46 = (-u_xlat46) * u_xlat46 + 1.0;
        u_xlat46 = max(u_xlat46, 0.0);
        u_xlat46 = u_xlat46 * u_xlat46;
        u_xlat46 = u_xlat46 * u_xlat48;
        u_xlat48 = dot(_AdditionalLightsSpotDir[int(u_xlatu45)].xyz, u_xlat9.xyz);
        u_xlat48 = u_xlat48 * _AdditionalLightsAttenuation[int(u_xlatu45)].z + _AdditionalLightsAttenuation[int(u_xlatu45)].w;
        u_xlat48 = clamp(u_xlat48, 0.0, 1.0);
        u_xlat48 = u_xlat48 * u_xlat48;
        u_xlat46 = u_xlat46 * u_xlat48;
        u_xlatu48 = u_xlatu45 >> (5u & uint(0x1F));
        u_xlati10 = 1 << (int(u_xlatu45) & int(0x1F));
        u_xlati48 = int(uint(u_xlati10) & floatBitsToUint(_AdditionalLightsCookieEnableBits[int(u_xlatu48)]));
        if(u_xlati48 != 0) {
            u_xlati48 = int(_AdditionalLightsLightTypes[int(u_xlatu45)]);
            u_xlati10 = (u_xlati48 != 0) ? 0 : 1;
            u_xlati23 = int(u_xlatu45) << (2 & int(0x1F));
            if(u_xlati10 != 0) {
                u_xlat10.xzw = vs_TEXCOORD7.yyy * _AdditionalLightsWorldToLights[(u_xlati23 + 1) / 4][(u_xlati23 + 1) % 4].xyw;
                u_xlat10.xzw = _AdditionalLightsWorldToLights[u_xlati23 / 4][u_xlati23 % 4].xyw * vs_TEXCOORD7.xxx + u_xlat10.xzw;
                u_xlat10.xzw = _AdditionalLightsWorldToLights[(u_xlati23 + 2) / 4][(u_xlati23 + 2) % 4].xyw * vs_TEXCOORD7.zzz + u_xlat10.xzw;
                u_xlat10.xzw = u_xlat10.xzw + _AdditionalLightsWorldToLights[(u_xlati23 + 3) / 4][(u_xlati23 + 3) % 4].xyw;
                u_xlat10.xz = u_xlat10.xz / u_xlat10.ww;
                u_xlat10.xz = u_xlat10.xz * vec2(0.5, 0.5) + vec2(0.5, 0.5);
                u_xlat10.xz = clamp(u_xlat10.xz, 0.0, 1.0);
                u_xlat10.xz = _AdditionalLightsCookieAtlasUVRects[int(u_xlatu45)].xy * u_xlat10.xz + _AdditionalLightsCookieAtlasUVRects[int(u_xlatu45)].zw;
            } else {
                u_xlatb48 = u_xlati48==1;
                u_xlati48 = u_xlatb48 ? 1 : int(0);
                if(u_xlati48 != 0) {
                    u_xlat11.xy = vs_TEXCOORD7.yy * _AdditionalLightsWorldToLights[(u_xlati23 + 1) / 4][(u_xlati23 + 1) % 4].xy;
                    u_xlat11.xy = _AdditionalLightsWorldToLights[u_xlati23 / 4][u_xlati23 % 4].xy * vs_TEXCOORD7.xx + u_xlat11.xy;
                    u_xlat11.xy = _AdditionalLightsWorldToLights[(u_xlati23 + 2) / 4][(u_xlati23 + 2) % 4].xy * vs_TEXCOORD7.zz + u_xlat11.xy;
                    u_xlat11.xy = u_xlat11.xy + _AdditionalLightsWorldToLights[(u_xlati23 + 3) / 4][(u_xlati23 + 3) % 4].xy;
                    u_xlat11.xy = u_xlat11.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
                    u_xlat11.xy = fract(u_xlat11.xy);
                    u_xlat10.xz = _AdditionalLightsCookieAtlasUVRects[int(u_xlatu45)].xy * u_xlat11.xy + _AdditionalLightsCookieAtlasUVRects[int(u_xlatu45)].zw;
                } else {
                    u_xlat11 = vs_TEXCOORD7.yyyy * _AdditionalLightsWorldToLights[(u_xlati23 + 1) / 4][(u_xlati23 + 1) % 4];
                    u_xlat11 = _AdditionalLightsWorldToLights[u_xlati23 / 4][u_xlati23 % 4] * vs_TEXCOORD7.xxxx + u_xlat11;
                    u_xlat11 = _AdditionalLightsWorldToLights[(u_xlati23 + 2) / 4][(u_xlati23 + 2) % 4] * vs_TEXCOORD7.zzzz + u_xlat11;
                    u_xlat11 = u_xlat11 + _AdditionalLightsWorldToLights[(u_xlati23 + 3) / 4][(u_xlati23 + 3) % 4];
                    u_xlat11.xyz = u_xlat11.xyz / u_xlat11.www;
                    u_xlat48 = dot(u_xlat11.xyz, u_xlat11.xyz);
                    u_xlat48 = inversesqrt(u_xlat48);
                    u_xlat11.xyz = vec3(u_xlat48) * u_xlat11.xyz;
                    u_xlat48 = dot(abs(u_xlat11.xyz), vec3(1.0, 1.0, 1.0));
                    u_xlat48 = max(u_xlat48, 9.99999997e-07);
                    u_xlat48 = float(1.0) / float(u_xlat48);
                    u_xlat12.xyz = vec3(u_xlat48) * u_xlat11.zxy;
                    u_xlat12.x = (-u_xlat12.x);
                    u_xlat12.x = clamp(u_xlat12.x, 0.0, 1.0);
                    u_xlatb23.xz = greaterThanEqual(u_xlat12.yyzz, vec4(0.0, 0.0, 0.0, 0.0)).xz;
                    u_xlat23.x = (u_xlatb23.x) ? u_xlat12.x : (-u_xlat12.x);
                    u_xlat23.z = (u_xlatb23.z) ? u_xlat12.x : (-u_xlat12.x);
                    u_xlat23.xz = u_xlat11.xy * vec2(u_xlat48) + u_xlat23.xz;
                    u_xlat23.xz = u_xlat23.xz * vec2(0.5, 0.5) + vec2(0.5, 0.5);
                    u_xlat23.xz = clamp(u_xlat23.xz, 0.0, 1.0);
                    u_xlat10.xz = _AdditionalLightsCookieAtlasUVRects[int(u_xlatu45)].xy * u_xlat23.xz + _AdditionalLightsCookieAtlasUVRects[int(u_xlatu45)].zw;
                }
            }
            u_xlat10 = texture(sampler2D(_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture), u_xlat10.xz, _GlobalMipBias.x);
            u_xlat48 = (u_xlatb31.y) ? u_xlat10.w : u_xlat10.x;
            u_xlat10.xyz = (u_xlatb31.x) ? u_xlat10.xyz : vec3(u_xlat48);
        } else {
            u_xlat10.x = float(1.0);
            u_xlat10.y = float(1.0);
            u_xlat10.z = float(1.0);
        }
        u_xlat10.xyz = u_xlat10.xyz * _AdditionalLightsColor[int(u_xlatu45)].xyz;
        u_xlat10.xyz = vec3(u_xlat18) * u_xlat10.xyz;
        u_xlat45 = dot(u_xlat14.xyz, u_xlat9.xyz);
        u_xlat45 = clamp(u_xlat45, 0.0, 1.0);
        u_xlat45 = u_xlat45 * u_xlat46;
        u_xlat10.xyz = vec3(u_xlat45) * u_xlat10.xyz;
        u_xlat8.xyz = u_xlat8.xyz * vec3(u_xlat47) + u_xlat3.xyz;
        u_xlat45 = dot(u_xlat8.xyz, u_xlat8.xyz);
        u_xlat45 = max(u_xlat45, 1.17549435e-37);
        u_xlat45 = inversesqrt(u_xlat45);
        u_xlat8.xyz = vec3(u_xlat45) * u_xlat8.xyz;
        u_xlat45 = dot(u_xlat14.xyz, u_xlat8.xyz);
        u_xlat45 = clamp(u_xlat45, 0.0, 1.0);
        u_xlat46 = dot(u_xlat9.xyz, u_xlat8.xyz);
        u_xlat46 = clamp(u_xlat46, 0.0, 1.0);
        u_xlat45 = u_xlat45 * u_xlat45;
        u_xlat45 = u_xlat45 * u_xlat28.x + 1.00001001;
        u_xlat46 = u_xlat46 * u_xlat46;
        u_xlat45 = u_xlat45 * u_xlat45;
        u_xlat46 = max(u_xlat46, 0.100000001);
        u_xlat45 = u_xlat45 * u_xlat46;
        u_xlat45 = u_xlat42 * u_xlat45;
        u_xlat45 = u_xlat43 / u_xlat45;
        u_xlat8.xyz = u_xlat0.xyz * vec3(u_xlat45) + u_xlat6.xyz;
        u_xlat7.xyz = u_xlat8.xyz * u_xlat10.xyz + u_xlat7.xyz;
    }
    u_xlat0.xyz = u_xlat4.xyz * u_xlat5.xxx + u_xlat2.xyw;
    SV_Target0.xyz = u_xlat7.xyz + u_xlat0.xyz;
    SV_Target0.w = 1.0;
    return;
}

