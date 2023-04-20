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
	vec4 _MainTex_ST;
	vec4 _BaseColor;
	vec4 _SpecColor;
	vec4 _EmissionColor;
	float _Cutoff;
	float _Shininess;
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
layout(set = 0, binding = 0) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 1) uniform mediump texture2D _MainLightShadowmapTexture;
layout(set = 0, binding = 2) uniform mediump texture2D _AdditionalLightsShadowmapTexture;
layout(set = 0, binding = 3) uniform mediump texture2D _MainLightCookieTexture;
layout(set = 0, binding = 4) uniform mediump texture2D _AdditionalLightsCookieAtlasTexture;
layout(location = 0) in highp  vec2 vs_TEXCOORD0;
layout(location = 1) in highp  vec4 vs_TEXCOORD2;
layout(location = 2) in highp  vec3 vs_TEXCOORD3;
layout(location = 3) in highp  vec4 vs_TEXCOORD7;
layout(location = 0) out highp vec4 SV_Target0;
vec4 u_xlat0;
int u_xlati0;
uint u_xlatu0;
bool u_xlatb0;
vec4 u_xlat1;
vec4 u_xlat2;
vec4 u_xlat3;
bvec4 u_xlatb3;
vec4 u_xlat4;
vec4 u_xlat5;
bvec2 u_xlatb5;
vec3 u_xlat6;
vec3 u_xlat7;
vec4 u_xlat8;
bvec4 u_xlatb8;
vec4 u_xlat9;
vec3 u_xlat10;
float u_xlat11;
float u_xlat22;
bool u_xlatb22;
float u_xlat27;
int u_xlati27;
vec2 u_xlat30;
bvec2 u_xlatb30;
float u_xlat33;
uint u_xlatu33;
float u_xlat34;
bool u_xlatb34;
float u_xlat35;
uint u_xlatu35;
bool u_xlatb35;
float u_xlat36;
int u_xlati36;
uint u_xlatu36;
bool u_xlatb36;
float u_xlat37;
int u_xlati37;
float u_xlat38;
int u_xlati38;
bool u_xlatb38;
float u_xlat39;
int u_xlati39;
bool u_xlatb39;
int u_xlati40;
layout(set = 0, binding = 5) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 6) uniform mediump  sampler sampler_LinearClamp;
layout(set = 0, binding = 7) uniform mediump  samplerShadow sampler_LinearClampCompare;
layout(set = 0, binding = 8) uniform mediump  sampler sampler_MainLightCookieTexture;
void main()
{
vec4 hlslcc_FragCoord = vec4(gl_FragCoord.xyz, 1.0/gl_FragCoord.w);
    u_xlat0 = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD0.xy, _GlobalMipBias.x);
    u_xlat1 = u_xlat0 * vs_TEXCOORD7;
    u_xlatb0 = u_xlat1.w>=_Cutoff;
    u_xlat0.x = u_xlatb0 ? u_xlat1.w : float(0.0);
    u_xlat11 = u_xlat0.w * vs_TEXCOORD7.w + (-_Cutoff);
    u_xlat22 = dFdxCoarse(u_xlat1.w);
    u_xlat33 = dFdyCoarse(u_xlat1.w);
    u_xlat22 = abs(u_xlat33) + abs(u_xlat22);
    u_xlat22 = max(u_xlat22, 9.99999975e-05);
    u_xlat11 = u_xlat11 / u_xlat22;
    u_xlat11 = u_xlat11 + 0.5;
    u_xlat11 = clamp(u_xlat11, 0.0, 1.0);
    u_xlatb22 = _AlphaToMaskAvailable!=0.0;
    u_xlat0.x = (u_xlatb22) ? u_xlat11 : u_xlat0.x;
    u_xlat0.x = u_xlat0.x + -9.99999975e-05;
    u_xlatb0 = u_xlat0.x<0.0;
    if(((int(u_xlatb0) * int(0xffffffffu)))!=0){discard;}
    u_xlat0.x = dot(vs_TEXCOORD3.xyz, vs_TEXCOORD3.xyz);
    u_xlat0.x = inversesqrt(u_xlat0.x);
    u_xlat2.xyz = u_xlat0.xxx * vs_TEXCOORD3.xyz;
    u_xlat3.xyz = vs_TEXCOORD2.xyz + (-_CascadeShadowSplitSpheres0.xyz);
    u_xlat4.xyz = vs_TEXCOORD2.xyz + (-_CascadeShadowSplitSpheres1.xyz);
    u_xlat5.xyz = vs_TEXCOORD2.xyz + (-_CascadeShadowSplitSpheres2.xyz);
    u_xlat6.xyz = vs_TEXCOORD2.xyz + (-_CascadeShadowSplitSpheres3.xyz);
    u_xlat3.x = dot(u_xlat3.xyz, u_xlat3.xyz);
    u_xlat3.y = dot(u_xlat4.xyz, u_xlat4.xyz);
    u_xlat3.z = dot(u_xlat5.xyz, u_xlat5.xyz);
    u_xlat3.w = dot(u_xlat6.xyz, u_xlat6.xyz);
    u_xlatb3 = lessThan(u_xlat3, _CascadeShadowSplitSphereRadii);
    u_xlat4.x = u_xlatb3.x ? float(1.0) : 0.0;
    u_xlat4.y = u_xlatb3.y ? float(1.0) : 0.0;
    u_xlat4.z = u_xlatb3.z ? float(1.0) : 0.0;
    u_xlat4.w = u_xlatb3.w ? float(1.0) : 0.0;
;
    u_xlat3.x = (u_xlatb3.x) ? float(-1.0) : float(-0.0);
    u_xlat3.y = (u_xlatb3.y) ? float(-1.0) : float(-0.0);
    u_xlat3.z = (u_xlatb3.z) ? float(-1.0) : float(-0.0);
    u_xlat3.xyz = u_xlat3.xyz + u_xlat4.yzw;
    u_xlat4.yzw = max(u_xlat3.xyz, vec3(0.0, 0.0, 0.0));
    u_xlat0.x = dot(u_xlat4, vec4(4.0, 3.0, 2.0, 1.0));
    u_xlat0.x = (-u_xlat0.x) + 4.0;
    u_xlatu0 = uint(u_xlat0.x);
    u_xlati0 = int(u_xlatu0) << (2 & int(0x1F));
    u_xlat3.xyz = vs_TEXCOORD2.yyy * _MainLightWorldToShadow[(u_xlati0 + 1) / 4][(u_xlati0 + 1) % 4].xyz;
    u_xlat3.xyz = _MainLightWorldToShadow[u_xlati0 / 4][u_xlati0 % 4].xyz * vs_TEXCOORD2.xxx + u_xlat3.xyz;
    u_xlat3.xyz = _MainLightWorldToShadow[(u_xlati0 + 2) / 4][(u_xlati0 + 2) % 4].xyz * vs_TEXCOORD2.zzz + u_xlat3.xyz;
    u_xlat3.xyz = u_xlat3.xyz + _MainLightWorldToShadow[(u_xlati0 + 3) / 4][(u_xlati0 + 3) % 4].xyz;
    u_xlat0.x = hlslcc_FragCoord.w * hlslcc_FragCoord.z;
    u_xlat0.x = u_xlat0.x / _ProjectionParams.y;
    u_xlat0.x = (-u_xlat0.x) + 1.0;
    u_xlat0.x = u_xlat0.x * _ProjectionParams.z;
    u_xlat0.x = max(u_xlat0.x, 0.0);
    u_xlat0.x = u_xlat0.x * unity_FogParams.x;
    u_xlat2.w = 1.0;
    u_xlat4.x = dot(unity_SHAr, u_xlat2);
    u_xlat4.y = dot(unity_SHAg, u_xlat2);
    u_xlat4.z = dot(unity_SHAb, u_xlat2);
    u_xlat5 = u_xlat2.yzzx * u_xlat2.xyzz;
    u_xlat6.x = dot(unity_SHBr, u_xlat5);
    u_xlat6.y = dot(unity_SHBg, u_xlat5);
    u_xlat6.z = dot(unity_SHBb, u_xlat5);
    u_xlat33 = u_xlat2.y * u_xlat2.y;
    u_xlat33 = u_xlat2.x * u_xlat2.x + (-u_xlat33);
    u_xlat5.xyz = unity_SHC.xyz * vec3(u_xlat33) + u_xlat6.xyz;
    u_xlat4.xyz = u_xlat4.xyz + u_xlat5.xyz;
    u_xlat4.xyz = max(u_xlat4.xyz, vec3(0.0, 0.0, 0.0));
    vec3 txVec0 = vec3(u_xlat3.xy,u_xlat3.z);
    u_xlat33 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_LinearClampCompare), txVec0, 0.0);
    u_xlat34 = (-_MainLightShadowParams.x) + 1.0;
    u_xlat33 = u_xlat33 * _MainLightShadowParams.x + u_xlat34;
    u_xlatb34 = 0.0>=u_xlat3.z;
    u_xlatb35 = u_xlat3.z>=1.0;
    u_xlatb34 = u_xlatb34 || u_xlatb35;
    u_xlat33 = (u_xlatb34) ? 1.0 : u_xlat33;
    u_xlat3.xyz = vs_TEXCOORD2.xyz + (-_WorldSpaceCameraPos.xyz);
    u_xlat34 = dot(u_xlat3.xyz, u_xlat3.xyz);
    u_xlat35 = u_xlat34 * _MainLightShadowParams.z + _MainLightShadowParams.w;
    u_xlat35 = clamp(u_xlat35, 0.0, 1.0);
    u_xlat3.x = (-u_xlat33) + 1.0;
    u_xlat33 = u_xlat35 * u_xlat3.x + u_xlat33;
    u_xlatb35 = _MainLightCookieTextureFormat!=-1.0;
    if(u_xlatb35){
        u_xlat3.xy = vs_TEXCOORD2.yy * _MainLightWorldToLight[1].xy;
        u_xlat3.xy = _MainLightWorldToLight[0].xy * vs_TEXCOORD2.xx + u_xlat3.xy;
        u_xlat3.xy = _MainLightWorldToLight[2].xy * vs_TEXCOORD2.zz + u_xlat3.xy;
        u_xlat3.xy = u_xlat3.xy + _MainLightWorldToLight[3].xy;
        u_xlat3.xy = u_xlat3.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
        u_xlat3 = texture(sampler2D(_MainLightCookieTexture, sampler_MainLightCookieTexture), u_xlat3.xy, _GlobalMipBias.x);
        u_xlatb5.xy = equal(vec4(vec4(_MainLightCookieTextureFormat, _MainLightCookieTextureFormat, _MainLightCookieTextureFormat, _MainLightCookieTextureFormat)), vec4(0.0, 1.0, 0.0, 0.0)).xy;
        u_xlat35 = (u_xlatb5.y) ? u_xlat3.w : u_xlat3.x;
        u_xlat3.xyz = (u_xlatb5.x) ? u_xlat3.xyz : vec3(u_xlat35);
    } else {
        u_xlat3.x = float(1.0);
        u_xlat3.y = float(1.0);
        u_xlat3.z = float(1.0);
    }
    u_xlat3.xyz = u_xlat3.xyz * _MainLightColor.xyz;
    u_xlat33 = u_xlat33 * unity_LightData.z;
    u_xlat3.xyz = vec3(u_xlat33) * u_xlat3.xyz;
    u_xlat33 = dot(u_xlat2.xyz, _MainLightPosition.xyz);
    u_xlat33 = clamp(u_xlat33, 0.0, 1.0);
    u_xlat3.xyz = vec3(u_xlat33) * u_xlat3.xyz;
    u_xlat3.xyz = u_xlat1.xyz * u_xlat3.xyz;
    u_xlat33 = min(_AdditionalLightsCount.x, unity_LightData.y);
    u_xlatu33 =  uint(int(u_xlat33));
    u_xlat34 = u_xlat34 * _AdditionalShadowFadeParams.x + _AdditionalShadowFadeParams.y;
    u_xlat34 = clamp(u_xlat34, 0.0, 1.0);
    u_xlatb5.xy = equal(vec4(vec4(_AdditionalLightsCookieAtlasTextureFormat, _AdditionalLightsCookieAtlasTextureFormat, _AdditionalLightsCookieAtlasTextureFormat, _AdditionalLightsCookieAtlasTextureFormat)), vec4(0.0, 1.0, 0.0, 0.0)).xy;
    u_xlat6.x = float(0.0);
    u_xlat6.y = float(0.0);
    u_xlat6.z = float(0.0);
    for(uint u_xlatu_loop_1 = 0u ; u_xlatu_loop_1<u_xlatu33 ; u_xlatu_loop_1++)
    {
        u_xlatu36 = u_xlatu_loop_1 >> (2u & uint(0x1F));
        u_xlati37 = int(u_xlatu_loop_1 & 3u);
        u_xlat36 = dot(unity_LightIndices[int(u_xlatu36)], uintBitsToFloat(ImmCB_0[u_xlati37]));
        u_xlati36 = int(u_xlat36);
        u_xlat7.xyz = (-vs_TEXCOORD2.xyz) * _AdditionalLightsPosition[u_xlati36].www + _AdditionalLightsPosition[u_xlati36].xyz;
        u_xlat37 = dot(u_xlat7.xyz, u_xlat7.xyz);
        u_xlat37 = max(u_xlat37, 6.10351562e-05);
        u_xlat27 = inversesqrt(u_xlat37);
        u_xlat7.xyz = vec3(u_xlat27) * u_xlat7.xyz;
        u_xlat27 = float(1.0) / float(u_xlat37);
        u_xlat37 = u_xlat37 * _AdditionalLightsAttenuation[u_xlati36].x;
        u_xlat37 = (-u_xlat37) * u_xlat37 + 1.0;
        u_xlat37 = max(u_xlat37, 0.0);
        u_xlat37 = u_xlat37 * u_xlat37;
        u_xlat37 = u_xlat37 * u_xlat27;
        u_xlat27 = dot(_AdditionalLightsSpotDir[u_xlati36].xyz, u_xlat7.xyz);
        u_xlat27 = u_xlat27 * _AdditionalLightsAttenuation[u_xlati36].z + _AdditionalLightsAttenuation[u_xlati36].w;
        u_xlat27 = clamp(u_xlat27, 0.0, 1.0);
        u_xlat27 = u_xlat27 * u_xlat27;
        u_xlat37 = u_xlat37 * u_xlat27;
        u_xlati27 = int(_AdditionalShadowParams[u_xlati36].w);
        u_xlatb38 = u_xlati27>=0;
        if(u_xlatb38){
            u_xlatb38 = vec4(0.0, 0.0, 0.0, 0.0)!=vec4(_AdditionalShadowParams[u_xlati36].z);
            if(u_xlatb38){
                u_xlatb8.xyz = greaterThanEqual(abs(u_xlat7.zzyz), abs(u_xlat7.xyxx)).xyz;
                u_xlatb38 = u_xlatb8.y && u_xlatb8.x;
                u_xlatb8.xyw = lessThan((-u_xlat7.zyzx), vec4(0.0, 0.0, 0.0, 0.0)).xyw;
                u_xlat8.x = (u_xlatb8.x) ? float(5.0) : float(4.0);
                u_xlat8.y = (u_xlatb8.y) ? float(3.0) : float(2.0);
                u_xlat39 = u_xlatb8.w ? 1.0 : float(0.0);
                u_xlat39 = (u_xlatb8.z) ? u_xlat8.y : u_xlat39;
                u_xlat38 = (u_xlatb38) ? u_xlat8.x : u_xlat39;
                u_xlat39 = trunc(_AdditionalShadowParams[u_xlati36].w);
                u_xlat38 = u_xlat38 + u_xlat39;
                u_xlati27 = int(u_xlat38);
            }
            u_xlati27 = u_xlati27 << (2 & int(0x1F));
            u_xlat8 = vs_TEXCOORD2.yyyy * _AdditionalLightsWorldToShadow[(u_xlati27 + 1) / 4][(u_xlati27 + 1) % 4];
            u_xlat8 = _AdditionalLightsWorldToShadow[u_xlati27 / 4][u_xlati27 % 4] * vs_TEXCOORD2.xxxx + u_xlat8;
            u_xlat8 = _AdditionalLightsWorldToShadow[(u_xlati27 + 2) / 4][(u_xlati27 + 2) % 4] * vs_TEXCOORD2.zzzz + u_xlat8;
            u_xlat8 = u_xlat8 + _AdditionalLightsWorldToShadow[(u_xlati27 + 3) / 4][(u_xlati27 + 3) % 4];
            u_xlat8.xyz = u_xlat8.xyz / u_xlat8.www;
            vec3 txVec1 = vec3(u_xlat8.xy,u_xlat8.z);
            u_xlat27 = textureLod(sampler2DShadow(_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare), txVec1, 0.0);
            u_xlat38 = 1.0 + (-_AdditionalShadowParams[u_xlati36].x);
            u_xlat27 = u_xlat27 * _AdditionalShadowParams[u_xlati36].x + u_xlat38;
            u_xlatb38 = 0.0>=u_xlat8.z;
            u_xlatb39 = u_xlat8.z>=1.0;
            u_xlatb38 = u_xlatb38 || u_xlatb39;
            u_xlat27 = (u_xlatb38) ? 1.0 : u_xlat27;
        } else {
            u_xlat27 = 1.0;
        }
        u_xlat38 = (-u_xlat27) + 1.0;
        u_xlat27 = u_xlat34 * u_xlat38 + u_xlat27;
        u_xlati38 = 1 << (u_xlati36 & int(0x1F));
        u_xlati38 = int(uint(u_xlati38) & floatBitsToUint(_AdditionalLightsCookieEnableBits));
        if(u_xlati38 != 0) {
            u_xlati38 = int(_AdditionalLightsLightTypes[u_xlati36]);
            u_xlati39 = (u_xlati38 != 0) ? 0 : 1;
            u_xlati40 = u_xlati36 << (2 & int(0x1F));
            if(u_xlati39 != 0) {
                u_xlat8.xyz = vs_TEXCOORD2.yyy * _AdditionalLightsWorldToLights[(u_xlati40 + 1) / 4][(u_xlati40 + 1) % 4].xyw;
                u_xlat8.xyz = _AdditionalLightsWorldToLights[u_xlati40 / 4][u_xlati40 % 4].xyw * vs_TEXCOORD2.xxx + u_xlat8.xyz;
                u_xlat8.xyz = _AdditionalLightsWorldToLights[(u_xlati40 + 2) / 4][(u_xlati40 + 2) % 4].xyw * vs_TEXCOORD2.zzz + u_xlat8.xyz;
                u_xlat8.xyz = u_xlat8.xyz + _AdditionalLightsWorldToLights[(u_xlati40 + 3) / 4][(u_xlati40 + 3) % 4].xyw;
                u_xlat8.xy = u_xlat8.xy / u_xlat8.zz;
                u_xlat8.xy = u_xlat8.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
                u_xlat8.xy = clamp(u_xlat8.xy, 0.0, 1.0);
                u_xlat8.xy = _AdditionalLightsCookieAtlasUVRects[u_xlati36].xy * u_xlat8.xy + _AdditionalLightsCookieAtlasUVRects[u_xlati36].zw;
            } else {
                u_xlatb38 = u_xlati38==1;
                u_xlati38 = u_xlatb38 ? 1 : int(0);
                if(u_xlati38 != 0) {
                    u_xlat30.xy = vs_TEXCOORD2.yy * _AdditionalLightsWorldToLights[(u_xlati40 + 1) / 4][(u_xlati40 + 1) % 4].xy;
                    u_xlat30.xy = _AdditionalLightsWorldToLights[u_xlati40 / 4][u_xlati40 % 4].xy * vs_TEXCOORD2.xx + u_xlat30.xy;
                    u_xlat30.xy = _AdditionalLightsWorldToLights[(u_xlati40 + 2) / 4][(u_xlati40 + 2) % 4].xy * vs_TEXCOORD2.zz + u_xlat30.xy;
                    u_xlat30.xy = u_xlat30.xy + _AdditionalLightsWorldToLights[(u_xlati40 + 3) / 4][(u_xlati40 + 3) % 4].xy;
                    u_xlat30.xy = u_xlat30.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
                    u_xlat30.xy = fract(u_xlat30.xy);
                    u_xlat8.xy = _AdditionalLightsCookieAtlasUVRects[u_xlati36].xy * u_xlat30.xy + _AdditionalLightsCookieAtlasUVRects[u_xlati36].zw;
                } else {
                    u_xlat9 = vs_TEXCOORD2.yyyy * _AdditionalLightsWorldToLights[(u_xlati40 + 1) / 4][(u_xlati40 + 1) % 4];
                    u_xlat9 = _AdditionalLightsWorldToLights[u_xlati40 / 4][u_xlati40 % 4] * vs_TEXCOORD2.xxxx + u_xlat9;
                    u_xlat9 = _AdditionalLightsWorldToLights[(u_xlati40 + 2) / 4][(u_xlati40 + 2) % 4] * vs_TEXCOORD2.zzzz + u_xlat9;
                    u_xlat9 = u_xlat9 + _AdditionalLightsWorldToLights[(u_xlati40 + 3) / 4][(u_xlati40 + 3) % 4];
                    u_xlat9.xyz = u_xlat9.xyz / u_xlat9.www;
                    u_xlat38 = dot(u_xlat9.xyz, u_xlat9.xyz);
                    u_xlat38 = inversesqrt(u_xlat38);
                    u_xlat9.xyz = vec3(u_xlat38) * u_xlat9.xyz;
                    u_xlat38 = dot(abs(u_xlat9.xyz), vec3(1.0, 1.0, 1.0));
                    u_xlat38 = max(u_xlat38, 9.99999997e-07);
                    u_xlat38 = float(1.0) / float(u_xlat38);
                    u_xlat10.xyz = vec3(u_xlat38) * u_xlat9.zxy;
                    u_xlat10.x = (-u_xlat10.x);
                    u_xlat10.x = clamp(u_xlat10.x, 0.0, 1.0);
                    u_xlatb30.xy = greaterThanEqual(u_xlat10.yzyz, vec4(0.0, 0.0, 0.0, 0.0)).xy;
                    u_xlat30.x = (u_xlatb30.x) ? u_xlat10.x : (-u_xlat10.x);
                    u_xlat30.y = (u_xlatb30.y) ? u_xlat10.x : (-u_xlat10.x);
                    u_xlat30.xy = u_xlat9.xy * vec2(u_xlat38) + u_xlat30.xy;
                    u_xlat30.xy = u_xlat30.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
                    u_xlat30.xy = clamp(u_xlat30.xy, 0.0, 1.0);
                    u_xlat8.xy = _AdditionalLightsCookieAtlasUVRects[u_xlati36].xy * u_xlat30.xy + _AdditionalLightsCookieAtlasUVRects[u_xlati36].zw;
                }
            }
            u_xlat8 = textureLod(sampler2D(_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp), u_xlat8.xy, 0.0);
            u_xlat38 = (u_xlatb5.y) ? u_xlat8.w : u_xlat8.x;
            u_xlat8.xyz = (u_xlatb5.x) ? u_xlat8.xyz : vec3(u_xlat38);
        } else {
            u_xlat8.x = float(1.0);
            u_xlat8.y = float(1.0);
            u_xlat8.z = float(1.0);
        }
        u_xlat8.xyz = u_xlat8.xyz * _AdditionalLightsColor[u_xlati36].xyz;
        u_xlat36 = u_xlat37 * u_xlat27;
        u_xlat8.xyz = vec3(u_xlat36) * u_xlat8.xyz;
        u_xlat36 = dot(u_xlat2.xyz, u_xlat7.xyz);
        u_xlat36 = clamp(u_xlat36, 0.0, 1.0);
        u_xlat7.xyz = vec3(u_xlat36) * u_xlat8.xyz;
        u_xlat6.xyz = u_xlat7.xyz * u_xlat1.xyz + u_xlat6.xyz;
    }
    u_xlat1.xyz = u_xlat4.xyz * u_xlat1.xyz + u_xlat3.xyz;
    u_xlat1.xyz = u_xlat6.xyz + u_xlat1.xyz;
    u_xlat0.x = u_xlat0.x * (-u_xlat0.x);
    u_xlat0.x = exp2(u_xlat0.x);
    u_xlat1.xyz = u_xlat1.xyz + (-unity_FogColor.xyz);
    SV_Target0.xyz = u_xlat0.xxx * u_xlat1.xyz + unity_FogColor.xyz;
    SV_Target0.w = (u_xlatb22) ? u_xlat11 : 1.0;
    return;
}

