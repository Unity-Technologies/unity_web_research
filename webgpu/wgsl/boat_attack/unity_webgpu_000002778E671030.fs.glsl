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
layout(set = 0, binding = 0) uniform mediump texture2D _BaseMap;
layout(set = 0, binding = 1) uniform mediump texture2D _MainLightShadowmapTexture;
layout(set = 0, binding = 2) uniform mediump texture2D _AdditionalLightsShadowmapTexture;
layout(set = 0, binding = 3) uniform mediump texture2D _MainLightCookieTexture;
layout(set = 0, binding = 4) uniform mediump texture2D _AdditionalLightsCookieAtlasTexture;
layout(location = 0) in highp  vec2 vs_TEXCOORD0;
layout(location = 1) in highp  vec3 vs_TEXCOORD1;
layout(location = 2) in highp  vec3 vs_TEXCOORD2;
layout(location = 0) out highp vec4 SV_Target0;
vec4 u_xlat0;
vec3 u_xlat1;
bool u_xlatb1;
vec4 u_xlat2;
vec4 u_xlat3;
int u_xlati3;
uint u_xlatu3;
bvec4 u_xlatb3;
vec4 u_xlat4;
vec4 u_xlat5;
vec3 u_xlat6;
bvec2 u_xlatb6;
vec3 u_xlat7;
vec3 u_xlat8;
vec4 u_xlat9;
bvec4 u_xlatb9;
vec4 u_xlat10;
vec3 u_xlat11;
vec3 u_xlat12;
bool u_xlatb12;
vec3 u_xlat13;
vec3 u_xlat15;
uint u_xlatu15;
bvec2 u_xlatb15;
float u_xlat27;
uint u_xlatu27;
float u_xlat30;
int u_xlati30;
vec2 u_xlat33;
bvec2 u_xlatb33;
float u_xlat37;
float u_xlat38;
float u_xlat39;
float u_xlat40;
int u_xlati40;
uint u_xlatu40;
bool u_xlatb40;
float u_xlat41;
int u_xlati41;
float u_xlat42;
int u_xlati42;
bool u_xlatb42;
float u_xlat43;
int u_xlati43;
bool u_xlatb43;
int u_xlati44;
layout(set = 0, binding = 5) uniform mediump  sampler sampler_BaseMap;
layout(set = 0, binding = 6) uniform mediump  sampler sampler_LinearClamp;
layout(set = 0, binding = 7) uniform mediump  samplerShadow sampler_LinearClampCompare;
layout(set = 0, binding = 8) uniform mediump  sampler sampler_MainLightCookieTexture;
void main()
{
    u_xlat0 = texture(sampler2D(_BaseMap, sampler_BaseMap), vs_TEXCOORD0.xy, _GlobalMipBias.x);
    u_xlat0 = u_xlat0.wxyz * _BaseColor.wxyz;
    u_xlatb1 = unity_OrthoParams.w==0.0;
    u_xlat13.xyz = (-vs_TEXCOORD1.xyz) + _WorldSpaceCameraPos.xyz;
    u_xlat2.x = dot(u_xlat13.xyz, u_xlat13.xyz);
    u_xlat2.x = inversesqrt(u_xlat2.x);
    u_xlat13.xyz = u_xlat13.xyz * u_xlat2.xxx;
    u_xlat2.x = unity_MatrixV[0].z;
    u_xlat2.y = unity_MatrixV[1].z;
    u_xlat2.z = unity_MatrixV[2].z;
    u_xlat1.xyz = (bool(u_xlatb1)) ? u_xlat13.xyz : u_xlat2.xyz;
    u_xlat37 = dot(vs_TEXCOORD2.xyz, vs_TEXCOORD2.xyz);
    u_xlat37 = inversesqrt(u_xlat37);
    u_xlat2.xyz = vec3(u_xlat37) * vs_TEXCOORD2.xyz;
    u_xlat37 = dot(u_xlat1.xyz, u_xlat1.xyz);
    u_xlat37 = max(u_xlat37, 6.10351562e-05);
    u_xlat37 = inversesqrt(u_xlat37);
    u_xlat3.xyz = vs_TEXCOORD1.xyz + (-_CascadeShadowSplitSpheres0.xyz);
    u_xlat4.xyz = vs_TEXCOORD1.xyz + (-_CascadeShadowSplitSpheres1.xyz);
    u_xlat5.xyz = vs_TEXCOORD1.xyz + (-_CascadeShadowSplitSpheres2.xyz);
    u_xlat6.xyz = vs_TEXCOORD1.xyz + (-_CascadeShadowSplitSpheres3.xyz);
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
    u_xlat3.x = dot(u_xlat4, vec4(4.0, 3.0, 2.0, 1.0));
    u_xlat3.x = (-u_xlat3.x) + 4.0;
    u_xlatu3 = uint(u_xlat3.x);
    u_xlati3 = int(u_xlatu3) << (2 & int(0x1F));
    u_xlat15.xyz = vs_TEXCOORD1.yyy * _MainLightWorldToShadow[(u_xlati3 + 1) / 4][(u_xlati3 + 1) % 4].xyz;
    u_xlat15.xyz = _MainLightWorldToShadow[u_xlati3 / 4][u_xlati3 % 4].xyz * vs_TEXCOORD1.xxx + u_xlat15.xyz;
    u_xlat15.xyz = _MainLightWorldToShadow[(u_xlati3 + 2) / 4][(u_xlati3 + 2) % 4].xyz * vs_TEXCOORD1.zzz + u_xlat15.xyz;
    u_xlat3.xyz = u_xlat15.xyz + _MainLightWorldToShadow[(u_xlati3 + 3) / 4][(u_xlati3 + 3) % 4].xyz;
    u_xlat39 = vs_TEXCOORD1.y * unity_MatrixV[1].z;
    u_xlat39 = unity_MatrixV[0].z * vs_TEXCOORD1.x + u_xlat39;
    u_xlat39 = unity_MatrixV[2].z * vs_TEXCOORD1.z + u_xlat39;
    u_xlat39 = u_xlat39 + unity_MatrixV[3].z;
    u_xlat39 = (-u_xlat39) + (-_ProjectionParams.y);
    u_xlat39 = max(u_xlat39, 0.0);
    u_xlat39 = u_xlat39 * unity_FogParams.x;
    u_xlat2.w = 1.0;
    u_xlat4.x = dot(unity_SHAr, u_xlat2);
    u_xlat4.y = dot(unity_SHAg, u_xlat2);
    u_xlat4.z = dot(unity_SHAb, u_xlat2);
    u_xlat5 = u_xlat2.yzzx * u_xlat2.xyzz;
    u_xlat6.x = dot(unity_SHBr, u_xlat5);
    u_xlat6.y = dot(unity_SHBg, u_xlat5);
    u_xlat6.z = dot(unity_SHBb, u_xlat5);
    u_xlat38 = u_xlat2.y * u_xlat2.y;
    u_xlat38 = u_xlat2.x * u_xlat2.x + (-u_xlat38);
    u_xlat5.xyz = unity_SHC.xyz * vec3(u_xlat38) + u_xlat6.xyz;
    u_xlat4.xyz = u_xlat4.xyz + u_xlat5.xyz;
    u_xlat4.xyz = max(u_xlat4.xyz, vec3(0.0, 0.0, 0.0));
    vec3 txVec0 = vec3(u_xlat3.xy,u_xlat3.z);
    u_xlat38 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_LinearClampCompare), txVec0, 0.0);
    u_xlat3.x = (-_MainLightShadowParams.x) + 1.0;
    u_xlat38 = u_xlat38 * _MainLightShadowParams.x + u_xlat3.x;
    u_xlatb3.x = 0.0>=u_xlat3.z;
    u_xlatb15.x = u_xlat3.z>=1.0;
    u_xlatb3.x = u_xlatb15.x || u_xlatb3.x;
    u_xlat38 = (u_xlatb3.x) ? 1.0 : u_xlat38;
    u_xlat3.xyz = vs_TEXCOORD1.xyz + (-_WorldSpaceCameraPos.xyz);
    u_xlat3.x = dot(u_xlat3.xyz, u_xlat3.xyz);
    u_xlat15.x = u_xlat3.x * _MainLightShadowParams.z + _MainLightShadowParams.w;
    u_xlat15.x = clamp(u_xlat15.x, 0.0, 1.0);
    u_xlat27 = (-u_xlat38) + 1.0;
    u_xlat38 = u_xlat15.x * u_xlat27 + u_xlat38;
    u_xlatb15.x = _MainLightCookieTextureFormat!=-1.0;
    if(u_xlatb15.x){
        u_xlat15.xy = vs_TEXCOORD1.yy * _MainLightWorldToLight[1].xy;
        u_xlat15.xy = _MainLightWorldToLight[0].xy * vs_TEXCOORD1.xx + u_xlat15.xy;
        u_xlat15.xy = _MainLightWorldToLight[2].xy * vs_TEXCOORD1.zz + u_xlat15.xy;
        u_xlat15.xy = u_xlat15.xy + _MainLightWorldToLight[3].xy;
        u_xlat15.xy = u_xlat15.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
        u_xlat5 = texture(sampler2D(_MainLightCookieTexture, sampler_MainLightCookieTexture), u_xlat15.xy, _GlobalMipBias.x);
        u_xlatb15.xy = equal(vec4(vec4(_MainLightCookieTextureFormat, _MainLightCookieTextureFormat, _MainLightCookieTextureFormat, _MainLightCookieTextureFormat)), vec4(0.0, 1.0, 0.0, 0.0)).xy;
        u_xlat27 = (u_xlatb15.y) ? u_xlat5.w : u_xlat5.x;
        u_xlat5.xyz = (u_xlatb15.x) ? u_xlat5.xyz : vec3(u_xlat27);
    } else {
        u_xlat5.x = float(1.0);
        u_xlat5.y = float(1.0);
        u_xlat5.z = float(1.0);
    }
    u_xlat5.xyz = u_xlat5.xyz * _MainLightColor.xyz;
    u_xlat38 = u_xlat38 * unity_LightData.z;
    u_xlat5.xyz = vec3(u_xlat38) * u_xlat5.xyz;
    u_xlat38 = dot(u_xlat2.xyz, _MainLightPosition.xyz);
    u_xlat38 = clamp(u_xlat38, 0.0, 1.0);
    u_xlat6.xyz = vec3(u_xlat38) * u_xlat5.xyz;
    u_xlat38 = u_xlat0.x * 10.0 + 1.0;
    u_xlat38 = exp2(u_xlat38);
    u_xlat7.xyz = u_xlat1.xyz * vec3(u_xlat37) + _MainLightPosition.xyz;
    u_xlat15.x = dot(u_xlat7.xyz, u_xlat7.xyz);
    u_xlat15.x = max(u_xlat15.x, 1.17549435e-38);
    u_xlat15.x = inversesqrt(u_xlat15.x);
    u_xlat7.xyz = u_xlat15.xxx * u_xlat7.xyz;
    u_xlat15.x = dot(u_xlat2.xyz, u_xlat7.xyz);
    u_xlat15.x = clamp(u_xlat15.x, 0.0, 1.0);
    u_xlat15.x = log2(u_xlat15.x);
    u_xlat15.x = u_xlat38 * u_xlat15.x;
    u_xlat15.x = exp2(u_xlat15.x);
    u_xlat7.xyz = u_xlat15.xxx * _SpecColor.xyz;
    u_xlat5.xyz = u_xlat5.xyz * u_xlat7.xyz;
    u_xlat5.xyz = u_xlat6.xyz * u_xlat0.yzw + u_xlat5.xyz;
    u_xlat15.x = min(_AdditionalLightsCount.x, unity_LightData.y);
    u_xlatu15 =  uint(int(u_xlat15.x));
    u_xlat3.x = u_xlat3.x * _AdditionalShadowFadeParams.x + _AdditionalShadowFadeParams.y;
    u_xlat3.x = clamp(u_xlat3.x, 0.0, 1.0);
    u_xlatb6.xy = equal(vec4(vec4(_AdditionalLightsCookieAtlasTextureFormat, _AdditionalLightsCookieAtlasTextureFormat, _AdditionalLightsCookieAtlasTextureFormat, _AdditionalLightsCookieAtlasTextureFormat)), vec4(0.0, 1.0, 0.0, 0.0)).xy;
    u_xlat7.x = float(0.0);
    u_xlat7.y = float(0.0);
    u_xlat7.z = float(0.0);
    for(uint u_xlatu_loop_1 = 0u ; u_xlatu_loop_1<u_xlatu15 ; u_xlatu_loop_1++)
    {
        u_xlatu40 = u_xlatu_loop_1 >> (2u & uint(0x1F));
        u_xlati41 = int(u_xlatu_loop_1 & 3u);
        u_xlat40 = dot(unity_LightIndices[int(u_xlatu40)], uintBitsToFloat(ImmCB_0[u_xlati41]));
        u_xlati40 = int(u_xlat40);
        u_xlat8.xyz = (-vs_TEXCOORD1.xyz) * _AdditionalLightsPosition[u_xlati40].www + _AdditionalLightsPosition[u_xlati40].xyz;
        u_xlat41 = dot(u_xlat8.xyz, u_xlat8.xyz);
        u_xlat41 = max(u_xlat41, 6.10351562e-05);
        u_xlat30 = inversesqrt(u_xlat41);
        u_xlat8.xyz = vec3(u_xlat30) * u_xlat8.xyz;
        u_xlat30 = float(1.0) / float(u_xlat41);
        u_xlat41 = u_xlat41 * _AdditionalLightsAttenuation[u_xlati40].x;
        u_xlat41 = (-u_xlat41) * u_xlat41 + 1.0;
        u_xlat41 = max(u_xlat41, 0.0);
        u_xlat41 = u_xlat41 * u_xlat41;
        u_xlat41 = u_xlat41 * u_xlat30;
        u_xlat30 = dot(_AdditionalLightsSpotDir[u_xlati40].xyz, u_xlat8.xyz);
        u_xlat30 = u_xlat30 * _AdditionalLightsAttenuation[u_xlati40].z + _AdditionalLightsAttenuation[u_xlati40].w;
        u_xlat30 = clamp(u_xlat30, 0.0, 1.0);
        u_xlat30 = u_xlat30 * u_xlat30;
        u_xlat41 = u_xlat41 * u_xlat30;
        u_xlati30 = int(_AdditionalShadowParams[u_xlati40].w);
        u_xlatb42 = u_xlati30>=0;
        if(u_xlatb42){
            u_xlatb42 = vec4(0.0, 0.0, 0.0, 0.0)!=vec4(_AdditionalShadowParams[u_xlati40].z);
            if(u_xlatb42){
                u_xlatb9.xyz = greaterThanEqual(abs(u_xlat8.zzyz), abs(u_xlat8.xyxx)).xyz;
                u_xlatb42 = u_xlatb9.y && u_xlatb9.x;
                u_xlatb9.xyw = lessThan((-u_xlat8.zyzx), vec4(0.0, 0.0, 0.0, 0.0)).xyw;
                u_xlat9.x = (u_xlatb9.x) ? float(5.0) : float(4.0);
                u_xlat9.y = (u_xlatb9.y) ? float(3.0) : float(2.0);
                u_xlat43 = u_xlatb9.w ? 1.0 : float(0.0);
                u_xlat43 = (u_xlatb9.z) ? u_xlat9.y : u_xlat43;
                u_xlat42 = (u_xlatb42) ? u_xlat9.x : u_xlat43;
                u_xlat43 = trunc(_AdditionalShadowParams[u_xlati40].w);
                u_xlat42 = u_xlat42 + u_xlat43;
                u_xlati30 = int(u_xlat42);
            }
            u_xlati30 = u_xlati30 << (2 & int(0x1F));
            u_xlat9 = vs_TEXCOORD1.yyyy * _AdditionalLightsWorldToShadow[(u_xlati30 + 1) / 4][(u_xlati30 + 1) % 4];
            u_xlat9 = _AdditionalLightsWorldToShadow[u_xlati30 / 4][u_xlati30 % 4] * vs_TEXCOORD1.xxxx + u_xlat9;
            u_xlat9 = _AdditionalLightsWorldToShadow[(u_xlati30 + 2) / 4][(u_xlati30 + 2) % 4] * vs_TEXCOORD1.zzzz + u_xlat9;
            u_xlat9 = u_xlat9 + _AdditionalLightsWorldToShadow[(u_xlati30 + 3) / 4][(u_xlati30 + 3) % 4];
            u_xlat9.xyz = u_xlat9.xyz / u_xlat9.www;
            vec3 txVec1 = vec3(u_xlat9.xy,u_xlat9.z);
            u_xlat30 = textureLod(sampler2DShadow(_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare), txVec1, 0.0);
            u_xlat42 = 1.0 + (-_AdditionalShadowParams[u_xlati40].x);
            u_xlat30 = u_xlat30 * _AdditionalShadowParams[u_xlati40].x + u_xlat42;
            u_xlatb42 = 0.0>=u_xlat9.z;
            u_xlatb43 = u_xlat9.z>=1.0;
            u_xlatb42 = u_xlatb42 || u_xlatb43;
            u_xlat30 = (u_xlatb42) ? 1.0 : u_xlat30;
        } else {
            u_xlat30 = 1.0;
        }
        u_xlat42 = (-u_xlat30) + 1.0;
        u_xlat30 = u_xlat3.x * u_xlat42 + u_xlat30;
        u_xlati42 = 1 << (u_xlati40 & int(0x1F));
        u_xlati42 = int(uint(u_xlati42) & floatBitsToUint(_AdditionalLightsCookieEnableBits));
        if(u_xlati42 != 0) {
            u_xlati42 = int(_AdditionalLightsLightTypes[u_xlati40]);
            u_xlati43 = (u_xlati42 != 0) ? 0 : 1;
            u_xlati44 = u_xlati40 << (2 & int(0x1F));
            if(u_xlati43 != 0) {
                u_xlat9.xyz = vs_TEXCOORD1.yyy * _AdditionalLightsWorldToLights[(u_xlati44 + 1) / 4][(u_xlati44 + 1) % 4].xyw;
                u_xlat9.xyz = _AdditionalLightsWorldToLights[u_xlati44 / 4][u_xlati44 % 4].xyw * vs_TEXCOORD1.xxx + u_xlat9.xyz;
                u_xlat9.xyz = _AdditionalLightsWorldToLights[(u_xlati44 + 2) / 4][(u_xlati44 + 2) % 4].xyw * vs_TEXCOORD1.zzz + u_xlat9.xyz;
                u_xlat9.xyz = u_xlat9.xyz + _AdditionalLightsWorldToLights[(u_xlati44 + 3) / 4][(u_xlati44 + 3) % 4].xyw;
                u_xlat9.xy = u_xlat9.xy / u_xlat9.zz;
                u_xlat9.xy = u_xlat9.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
                u_xlat9.xy = clamp(u_xlat9.xy, 0.0, 1.0);
                u_xlat9.xy = _AdditionalLightsCookieAtlasUVRects[u_xlati40].xy * u_xlat9.xy + _AdditionalLightsCookieAtlasUVRects[u_xlati40].zw;
            } else {
                u_xlatb42 = u_xlati42==1;
                u_xlati42 = u_xlatb42 ? 1 : int(0);
                if(u_xlati42 != 0) {
                    u_xlat33.xy = vs_TEXCOORD1.yy * _AdditionalLightsWorldToLights[(u_xlati44 + 1) / 4][(u_xlati44 + 1) % 4].xy;
                    u_xlat33.xy = _AdditionalLightsWorldToLights[u_xlati44 / 4][u_xlati44 % 4].xy * vs_TEXCOORD1.xx + u_xlat33.xy;
                    u_xlat33.xy = _AdditionalLightsWorldToLights[(u_xlati44 + 2) / 4][(u_xlati44 + 2) % 4].xy * vs_TEXCOORD1.zz + u_xlat33.xy;
                    u_xlat33.xy = u_xlat33.xy + _AdditionalLightsWorldToLights[(u_xlati44 + 3) / 4][(u_xlati44 + 3) % 4].xy;
                    u_xlat33.xy = u_xlat33.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
                    u_xlat33.xy = fract(u_xlat33.xy);
                    u_xlat9.xy = _AdditionalLightsCookieAtlasUVRects[u_xlati40].xy * u_xlat33.xy + _AdditionalLightsCookieAtlasUVRects[u_xlati40].zw;
                } else {
                    u_xlat10 = vs_TEXCOORD1.yyyy * _AdditionalLightsWorldToLights[(u_xlati44 + 1) / 4][(u_xlati44 + 1) % 4];
                    u_xlat10 = _AdditionalLightsWorldToLights[u_xlati44 / 4][u_xlati44 % 4] * vs_TEXCOORD1.xxxx + u_xlat10;
                    u_xlat10 = _AdditionalLightsWorldToLights[(u_xlati44 + 2) / 4][(u_xlati44 + 2) % 4] * vs_TEXCOORD1.zzzz + u_xlat10;
                    u_xlat10 = u_xlat10 + _AdditionalLightsWorldToLights[(u_xlati44 + 3) / 4][(u_xlati44 + 3) % 4];
                    u_xlat10.xyz = u_xlat10.xyz / u_xlat10.www;
                    u_xlat42 = dot(u_xlat10.xyz, u_xlat10.xyz);
                    u_xlat42 = inversesqrt(u_xlat42);
                    u_xlat10.xyz = vec3(u_xlat42) * u_xlat10.xyz;
                    u_xlat42 = dot(abs(u_xlat10.xyz), vec3(1.0, 1.0, 1.0));
                    u_xlat42 = max(u_xlat42, 9.99999997e-07);
                    u_xlat42 = float(1.0) / float(u_xlat42);
                    u_xlat11.xyz = vec3(u_xlat42) * u_xlat10.zxy;
                    u_xlat11.x = (-u_xlat11.x);
                    u_xlat11.x = clamp(u_xlat11.x, 0.0, 1.0);
                    u_xlatb33.xy = greaterThanEqual(u_xlat11.yzyz, vec4(0.0, 0.0, 0.0, 0.0)).xy;
                    u_xlat33.x = (u_xlatb33.x) ? u_xlat11.x : (-u_xlat11.x);
                    u_xlat33.y = (u_xlatb33.y) ? u_xlat11.x : (-u_xlat11.x);
                    u_xlat33.xy = u_xlat10.xy * vec2(u_xlat42) + u_xlat33.xy;
                    u_xlat33.xy = u_xlat33.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
                    u_xlat33.xy = clamp(u_xlat33.xy, 0.0, 1.0);
                    u_xlat9.xy = _AdditionalLightsCookieAtlasUVRects[u_xlati40].xy * u_xlat33.xy + _AdditionalLightsCookieAtlasUVRects[u_xlati40].zw;
                }
            }
            u_xlat9 = textureLod(sampler2D(_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp), u_xlat9.xy, 0.0);
            u_xlat42 = (u_xlatb6.y) ? u_xlat9.w : u_xlat9.x;
            u_xlat9.xyz = (u_xlatb6.x) ? u_xlat9.xyz : vec3(u_xlat42);
        } else {
            u_xlat9.x = float(1.0);
            u_xlat9.y = float(1.0);
            u_xlat9.z = float(1.0);
        }
        u_xlat9.xyz = u_xlat9.xyz * _AdditionalLightsColor[u_xlati40].xyz;
        u_xlat40 = u_xlat41 * u_xlat30;
        u_xlat9.xyz = vec3(u_xlat40) * u_xlat9.xyz;
        u_xlat40 = dot(u_xlat2.xyz, u_xlat8.xyz);
        u_xlat40 = clamp(u_xlat40, 0.0, 1.0);
        u_xlat10.xyz = vec3(u_xlat40) * u_xlat9.xyz;
        u_xlat8.xyz = u_xlat1.xyz * vec3(u_xlat37) + u_xlat8.xyz;
        u_xlat40 = dot(u_xlat8.xyz, u_xlat8.xyz);
        u_xlat40 = max(u_xlat40, 1.17549435e-38);
        u_xlat40 = inversesqrt(u_xlat40);
        u_xlat8.xyz = vec3(u_xlat40) * u_xlat8.xyz;
        u_xlat40 = dot(u_xlat2.xyz, u_xlat8.xyz);
        u_xlat40 = clamp(u_xlat40, 0.0, 1.0);
        u_xlat40 = log2(u_xlat40);
        u_xlat40 = u_xlat38 * u_xlat40;
        u_xlat40 = exp2(u_xlat40);
        u_xlat8.xyz = vec3(u_xlat40) * _SpecColor.xyz;
        u_xlat8.xyz = u_xlat8.xyz * u_xlat9.xyz;
        u_xlat8.xyz = u_xlat10.xyz * u_xlat0.yzw + u_xlat8.xyz;
        u_xlat7.xyz = u_xlat7.xyz + u_xlat8.xyz;
    }
    u_xlat12.xyz = u_xlat4.xyz * u_xlat0.yzw + u_xlat5.xyz;
    u_xlat12.xyz = u_xlat7.xyz + u_xlat12.xyz;
    u_xlat1.x = u_xlat39 * (-u_xlat39);
    u_xlat1.x = exp2(u_xlat1.x);
    u_xlat12.xyz = u_xlat12.xyz + (-unity_FogColor.xyz);
    SV_Target0.xyz = u_xlat1.xxx * u_xlat12.xyz + unity_FogColor.xyz;
    u_xlatb12 = _Surface==1.0;
    SV_Target0.w = (u_xlatb12) ? u_xlat0.x : 1.0;
    return;
}

