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
vec4 u_xlat1;
vec4 u_xlat2;
int u_xlati2;
uint u_xlatu2;
bvec4 u_xlatb2;
vec4 u_xlat3;
vec4 u_xlat4;
vec3 u_xlat5;
vec3 u_xlat6;
vec4 u_xlat7;
int u_xlati7;
bvec3 u_xlatb7;
vec4 u_xlat8;
bvec3 u_xlatb8;
vec3 u_xlat9;
vec3 u_xlat10;
bool u_xlatb10;
vec3 u_xlat12;
bvec2 u_xlatb12;
vec3 u_xlat17;
int u_xlati17;
bool u_xlatb17;
float u_xlat22;
float u_xlat27;
int u_xlati27;
vec2 u_xlat28;
bvec2 u_xlatb28;
float u_xlat31;
uint u_xlatu31;
float u_xlat32;
uint u_xlatu33;
float u_xlat34;
int u_xlati34;
uint u_xlatu34;
bool u_xlatb34;
float u_xlat35;
int u_xlati35;
float u_xlat36;
int u_xlati36;
float u_xlat37;
layout(set = 0, binding = 5) uniform mediump  sampler sampler_BaseMap;
layout(set = 0, binding = 6) uniform mediump  sampler sampler_LinearClamp;
layout(set = 0, binding = 7) uniform mediump  samplerShadow sampler_LinearClampCompare;
layout(set = 0, binding = 8) uniform mediump  sampler sampler_MainLightCookieTexture;
void main()
{
    u_xlat0 = texture(sampler2D(_BaseMap, sampler_BaseMap), vs_TEXCOORD0.xy, _GlobalMipBias.x);
    u_xlat0 = u_xlat0.wxyz * _BaseColor.wxyz;
    u_xlat1.x = dot(vs_TEXCOORD2.xyz, vs_TEXCOORD2.xyz);
    u_xlat1.x = inversesqrt(u_xlat1.x);
    u_xlat1.xyz = u_xlat1.xxx * vs_TEXCOORD2.xyz;
    u_xlat2.xyz = vs_TEXCOORD1.xyz + (-_CascadeShadowSplitSpheres0.xyz);
    u_xlat3.xyz = vs_TEXCOORD1.xyz + (-_CascadeShadowSplitSpheres1.xyz);
    u_xlat4.xyz = vs_TEXCOORD1.xyz + (-_CascadeShadowSplitSpheres2.xyz);
    u_xlat5.xyz = vs_TEXCOORD1.xyz + (-_CascadeShadowSplitSpheres3.xyz);
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
    u_xlat12.xyz = vs_TEXCOORD1.yyy * _MainLightWorldToShadow[(u_xlati2 + 1) / 4][(u_xlati2 + 1) % 4].xyz;
    u_xlat12.xyz = _MainLightWorldToShadow[u_xlati2 / 4][u_xlati2 % 4].xyz * vs_TEXCOORD1.xxx + u_xlat12.xyz;
    u_xlat12.xyz = _MainLightWorldToShadow[(u_xlati2 + 2) / 4][(u_xlati2 + 2) % 4].xyz * vs_TEXCOORD1.zzz + u_xlat12.xyz;
    u_xlat2.xyz = u_xlat12.xyz + _MainLightWorldToShadow[(u_xlati2 + 3) / 4][(u_xlati2 + 3) % 4].xyz;
    u_xlat32 = vs_TEXCOORD1.y * unity_MatrixV[1].z;
    u_xlat32 = unity_MatrixV[0].z * vs_TEXCOORD1.x + u_xlat32;
    u_xlat32 = unity_MatrixV[2].z * vs_TEXCOORD1.z + u_xlat32;
    u_xlat32 = u_xlat32 + unity_MatrixV[3].z;
    u_xlat32 = (-u_xlat32) + (-_ProjectionParams.y);
    u_xlat32 = max(u_xlat32, 0.0);
    u_xlat32 = u_xlat32 * unity_FogParams.x;
    u_xlat1.w = 1.0;
    u_xlat3.x = dot(unity_SHAr, u_xlat1);
    u_xlat3.y = dot(unity_SHAg, u_xlat1);
    u_xlat3.z = dot(unity_SHAb, u_xlat1);
    u_xlat4 = u_xlat1.yzzx * u_xlat1.xyzz;
    u_xlat5.x = dot(unity_SHBr, u_xlat4);
    u_xlat5.y = dot(unity_SHBg, u_xlat4);
    u_xlat5.z = dot(unity_SHBb, u_xlat4);
    u_xlat31 = u_xlat1.y * u_xlat1.y;
    u_xlat31 = u_xlat1.x * u_xlat1.x + (-u_xlat31);
    u_xlat4.xyz = unity_SHC.xyz * vec3(u_xlat31) + u_xlat5.xyz;
    u_xlat3.xyz = u_xlat3.xyz + u_xlat4.xyz;
    u_xlat3.xyz = max(u_xlat3.xyz, vec3(0.0, 0.0, 0.0));
    vec3 txVec0 = vec3(u_xlat2.xy,u_xlat2.z);
    u_xlat31 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_LinearClampCompare), txVec0, 0.0);
    u_xlat2.x = (-_MainLightShadowParams.x) + 1.0;
    u_xlat31 = u_xlat31 * _MainLightShadowParams.x + u_xlat2.x;
    u_xlatb2.x = 0.0>=u_xlat2.z;
    u_xlatb12.x = u_xlat2.z>=1.0;
    u_xlatb2.x = u_xlatb12.x || u_xlatb2.x;
    u_xlat31 = (u_xlatb2.x) ? 1.0 : u_xlat31;
    u_xlat2.xyz = vs_TEXCOORD1.xyz + (-_WorldSpaceCameraPos.xyz);
    u_xlat2.x = dot(u_xlat2.xyz, u_xlat2.xyz);
    u_xlat12.x = u_xlat2.x * _MainLightShadowParams.z + _MainLightShadowParams.w;
    u_xlat12.x = clamp(u_xlat12.x, 0.0, 1.0);
    u_xlat22 = (-u_xlat31) + 1.0;
    u_xlat31 = u_xlat12.x * u_xlat22 + u_xlat31;
    u_xlatb12.x = _MainLightCookieTextureFormat!=-1.0;
    if(u_xlatb12.x){
        u_xlat12.xy = vs_TEXCOORD1.yy * _MainLightWorldToLight[1].xy;
        u_xlat12.xy = _MainLightWorldToLight[0].xy * vs_TEXCOORD1.xx + u_xlat12.xy;
        u_xlat12.xy = _MainLightWorldToLight[2].xy * vs_TEXCOORD1.zz + u_xlat12.xy;
        u_xlat12.xy = u_xlat12.xy + _MainLightWorldToLight[3].xy;
        u_xlat12.xy = u_xlat12.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
        u_xlat4 = texture(sampler2D(_MainLightCookieTexture, sampler_MainLightCookieTexture), u_xlat12.xy, _GlobalMipBias.x);
        u_xlatb12.xy = equal(vec4(vec4(_MainLightCookieTextureFormat, _MainLightCookieTextureFormat, _MainLightCookieTextureFormat, _MainLightCookieTextureFormat)), vec4(0.0, 1.0, 0.0, 0.0)).xy;
        u_xlat22 = (u_xlatb12.y) ? u_xlat4.w : u_xlat4.x;
        u_xlat4.xyz = (u_xlatb12.x) ? u_xlat4.xyz : vec3(u_xlat22);
    } else {
        u_xlat4.x = float(1.0);
        u_xlat4.y = float(1.0);
        u_xlat4.z = float(1.0);
    }
    u_xlat4.xyz = u_xlat4.xyz * _MainLightColor.xyz;
    u_xlat31 = u_xlat31 * unity_LightData.z;
    u_xlat4.xyz = vec3(u_xlat31) * u_xlat4.xyz;
    u_xlat31 = dot(u_xlat1.xyz, _MainLightPosition.xyz);
    u_xlat31 = clamp(u_xlat31, 0.0, 1.0);
    u_xlat4.xyz = vec3(u_xlat31) * u_xlat4.xyz;
    u_xlat4.xyz = u_xlat0.yzw * u_xlat4.xyz;
    u_xlat31 = min(_AdditionalLightsCount.x, unity_LightData.y);
    u_xlatu31 =  uint(int(u_xlat31));
    u_xlat2.x = u_xlat2.x * _AdditionalShadowFadeParams.x + _AdditionalShadowFadeParams.y;
    u_xlat2.x = clamp(u_xlat2.x, 0.0, 1.0);
    u_xlatb12.xy = equal(vec4(vec4(_AdditionalLightsCookieAtlasTextureFormat, _AdditionalLightsCookieAtlasTextureFormat, _AdditionalLightsCookieAtlasTextureFormat, _AdditionalLightsCookieAtlasTextureFormat)), vec4(0.0, 1.0, 0.0, 0.0)).xy;
    u_xlat5.x = float(0.0);
    u_xlat5.y = float(0.0);
    u_xlat5.z = float(0.0);
    for(uint u_xlatu_loop_1 = 0u ; u_xlatu_loop_1<u_xlatu31 ; u_xlatu_loop_1++)
    {
        u_xlatu34 = u_xlatu_loop_1 >> (2u & uint(0x1F));
        u_xlati35 = int(u_xlatu_loop_1 & 3u);
        u_xlat34 = dot(unity_LightIndices[int(u_xlatu34)], uintBitsToFloat(ImmCB_0[u_xlati35]));
        u_xlati34 = int(u_xlat34);
        u_xlat6.xyz = (-vs_TEXCOORD1.xyz) * _AdditionalLightsPosition[u_xlati34].www + _AdditionalLightsPosition[u_xlati34].xyz;
        u_xlat35 = dot(u_xlat6.xyz, u_xlat6.xyz);
        u_xlat35 = max(u_xlat35, 6.10351562e-05);
        u_xlat36 = inversesqrt(u_xlat35);
        u_xlat6.xyz = vec3(u_xlat36) * u_xlat6.xyz;
        u_xlat36 = float(1.0) / float(u_xlat35);
        u_xlat35 = u_xlat35 * _AdditionalLightsAttenuation[u_xlati34].x;
        u_xlat35 = (-u_xlat35) * u_xlat35 + 1.0;
        u_xlat35 = max(u_xlat35, 0.0);
        u_xlat35 = u_xlat35 * u_xlat35;
        u_xlat35 = u_xlat35 * u_xlat36;
        u_xlat36 = dot(_AdditionalLightsSpotDir[u_xlati34].xyz, u_xlat6.xyz);
        u_xlat36 = u_xlat36 * _AdditionalLightsAttenuation[u_xlati34].z + _AdditionalLightsAttenuation[u_xlati34].w;
        u_xlat36 = clamp(u_xlat36, 0.0, 1.0);
        u_xlat36 = u_xlat36 * u_xlat36;
        u_xlat35 = u_xlat35 * u_xlat36;
        u_xlati36 = int(_AdditionalShadowParams[u_xlati34].w);
        u_xlatb7.x = u_xlati36>=0;
        if(u_xlatb7.x){
            u_xlatb7.x = vec4(0.0, 0.0, 0.0, 0.0)!=vec4(_AdditionalShadowParams[u_xlati34].z);
            if(u_xlatb7.x){
                u_xlatb7.xyz = greaterThanEqual(abs(u_xlat6.zzyz), abs(u_xlat6.xyxx)).xyz;
                u_xlatb7.x = u_xlatb7.y && u_xlatb7.x;
                u_xlatb8.xyz = lessThan((-u_xlat6.zyxz), vec4(0.0, 0.0, 0.0, 0.0)).xyz;
                u_xlat17.x = (u_xlatb8.x) ? float(5.0) : float(4.0);
                u_xlat17.z = (u_xlatb8.y) ? float(3.0) : float(2.0);
                u_xlat8.x = u_xlatb8.z ? 1.0 : float(0.0);
                u_xlat27 = (u_xlatb7.z) ? u_xlat17.z : u_xlat8.x;
                u_xlat7.x = (u_xlatb7.x) ? u_xlat17.x : u_xlat27;
                u_xlat17.x = trunc(_AdditionalShadowParams[u_xlati34].w);
                u_xlat7.x = u_xlat7.x + u_xlat17.x;
                u_xlati36 = int(u_xlat7.x);
            }
            u_xlati36 = u_xlati36 << (2 & int(0x1F));
            u_xlat7 = vs_TEXCOORD1.yyyy * _AdditionalLightsWorldToShadow[(u_xlati36 + 1) / 4][(u_xlati36 + 1) % 4];
            u_xlat7 = _AdditionalLightsWorldToShadow[u_xlati36 / 4][u_xlati36 % 4] * vs_TEXCOORD1.xxxx + u_xlat7;
            u_xlat7 = _AdditionalLightsWorldToShadow[(u_xlati36 + 2) / 4][(u_xlati36 + 2) % 4] * vs_TEXCOORD1.zzzz + u_xlat7;
            u_xlat7 = u_xlat7 + _AdditionalLightsWorldToShadow[(u_xlati36 + 3) / 4][(u_xlati36 + 3) % 4];
            u_xlat7.xyz = u_xlat7.xyz / u_xlat7.www;
            vec3 txVec1 = vec3(u_xlat7.xy,u_xlat7.z);
            u_xlat36 = textureLod(sampler2DShadow(_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare), txVec1, 0.0);
            u_xlat7.x = 1.0 + (-_AdditionalShadowParams[u_xlati34].x);
            u_xlat36 = u_xlat36 * _AdditionalShadowParams[u_xlati34].x + u_xlat7.x;
            u_xlatb7.x = 0.0>=u_xlat7.z;
            u_xlatb17 = u_xlat7.z>=1.0;
            u_xlatb7.x = u_xlatb17 || u_xlatb7.x;
            u_xlat36 = (u_xlatb7.x) ? 1.0 : u_xlat36;
        } else {
            u_xlat36 = 1.0;
        }
        u_xlat7.x = (-u_xlat36) + 1.0;
        u_xlat36 = u_xlat2.x * u_xlat7.x + u_xlat36;
        u_xlati7 = 1 << (u_xlati34 & int(0x1F));
        u_xlati7 = int(uint(u_xlati7) & floatBitsToUint(_AdditionalLightsCookieEnableBits));
        if(u_xlati7 != 0) {
            u_xlati7 = int(_AdditionalLightsLightTypes[u_xlati34]);
            u_xlati17 = (u_xlati7 != 0) ? 0 : 1;
            u_xlati27 = u_xlati34 << (2 & int(0x1F));
            if(u_xlati17 != 0) {
                u_xlat8.xyz = vs_TEXCOORD1.yyy * _AdditionalLightsWorldToLights[(u_xlati27 + 1) / 4][(u_xlati27 + 1) % 4].xyw;
                u_xlat8.xyz = _AdditionalLightsWorldToLights[u_xlati27 / 4][u_xlati27 % 4].xyw * vs_TEXCOORD1.xxx + u_xlat8.xyz;
                u_xlat8.xyz = _AdditionalLightsWorldToLights[(u_xlati27 + 2) / 4][(u_xlati27 + 2) % 4].xyw * vs_TEXCOORD1.zzz + u_xlat8.xyz;
                u_xlat8.xyz = u_xlat8.xyz + _AdditionalLightsWorldToLights[(u_xlati27 + 3) / 4][(u_xlati27 + 3) % 4].xyw;
                u_xlat17.xz = u_xlat8.xy / u_xlat8.zz;
                u_xlat17.xz = u_xlat17.xz * vec2(0.5, 0.5) + vec2(0.5, 0.5);
                u_xlat17.xz = clamp(u_xlat17.xz, 0.0, 1.0);
                u_xlat17.xz = _AdditionalLightsCookieAtlasUVRects[u_xlati34].xy * u_xlat17.xz + _AdditionalLightsCookieAtlasUVRects[u_xlati34].zw;
            } else {
                u_xlatb7.x = u_xlati7==1;
                u_xlati7 = u_xlatb7.x ? 1 : int(0);
                if(u_xlati7 != 0) {
                    u_xlat8.xy = vs_TEXCOORD1.yy * _AdditionalLightsWorldToLights[(u_xlati27 + 1) / 4][(u_xlati27 + 1) % 4].xy;
                    u_xlat8.xy = _AdditionalLightsWorldToLights[u_xlati27 / 4][u_xlati27 % 4].xy * vs_TEXCOORD1.xx + u_xlat8.xy;
                    u_xlat8.xy = _AdditionalLightsWorldToLights[(u_xlati27 + 2) / 4][(u_xlati27 + 2) % 4].xy * vs_TEXCOORD1.zz + u_xlat8.xy;
                    u_xlat8.xy = u_xlat8.xy + _AdditionalLightsWorldToLights[(u_xlati27 + 3) / 4][(u_xlati27 + 3) % 4].xy;
                    u_xlat8.xy = u_xlat8.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
                    u_xlat8.xy = fract(u_xlat8.xy);
                    u_xlat17.xz = _AdditionalLightsCookieAtlasUVRects[u_xlati34].xy * u_xlat8.xy + _AdditionalLightsCookieAtlasUVRects[u_xlati34].zw;
                } else {
                    u_xlat8 = vs_TEXCOORD1.yyyy * _AdditionalLightsWorldToLights[(u_xlati27 + 1) / 4][(u_xlati27 + 1) % 4];
                    u_xlat8 = _AdditionalLightsWorldToLights[u_xlati27 / 4][u_xlati27 % 4] * vs_TEXCOORD1.xxxx + u_xlat8;
                    u_xlat8 = _AdditionalLightsWorldToLights[(u_xlati27 + 2) / 4][(u_xlati27 + 2) % 4] * vs_TEXCOORD1.zzzz + u_xlat8;
                    u_xlat8 = u_xlat8 + _AdditionalLightsWorldToLights[(u_xlati27 + 3) / 4][(u_xlati27 + 3) % 4];
                    u_xlat8.xyz = u_xlat8.xyz / u_xlat8.www;
                    u_xlat7.x = dot(u_xlat8.xyz, u_xlat8.xyz);
                    u_xlat7.x = inversesqrt(u_xlat7.x);
                    u_xlat8.xyz = u_xlat7.xxx * u_xlat8.xyz;
                    u_xlat7.x = dot(abs(u_xlat8.xyz), vec3(1.0, 1.0, 1.0));
                    u_xlat7.x = max(u_xlat7.x, 9.99999997e-07);
                    u_xlat7.x = float(1.0) / float(u_xlat7.x);
                    u_xlat9.xyz = u_xlat7.xxx * u_xlat8.zxy;
                    u_xlat9.x = (-u_xlat9.x);
                    u_xlat9.x = clamp(u_xlat9.x, 0.0, 1.0);
                    u_xlatb28.xy = greaterThanEqual(u_xlat9.yzyz, vec4(0.0, 0.0, 0.0, 0.0)).xy;
                    u_xlat28.x = (u_xlatb28.x) ? u_xlat9.x : (-u_xlat9.x);
                    u_xlat28.y = (u_xlatb28.y) ? u_xlat9.x : (-u_xlat9.x);
                    u_xlat7.xz = u_xlat8.xy * u_xlat7.xx + u_xlat28.xy;
                    u_xlat7.xz = u_xlat7.xz * vec2(0.5, 0.5) + vec2(0.5, 0.5);
                    u_xlat7.xz = clamp(u_xlat7.xz, 0.0, 1.0);
                    u_xlat17.xz = _AdditionalLightsCookieAtlasUVRects[u_xlati34].xy * u_xlat7.xz + _AdditionalLightsCookieAtlasUVRects[u_xlati34].zw;
                }
            }
            u_xlat7 = textureLod(sampler2D(_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp), u_xlat17.xz, 0.0);
            u_xlat37 = (u_xlatb12.y) ? u_xlat7.w : u_xlat7.x;
            u_xlat7.xyz = (u_xlatb12.x) ? u_xlat7.xyz : vec3(u_xlat37);
        } else {
            u_xlat7.x = float(1.0);
            u_xlat7.y = float(1.0);
            u_xlat7.z = float(1.0);
        }
        u_xlat7.xyz = u_xlat7.xyz * _AdditionalLightsColor[u_xlati34].xyz;
        u_xlat34 = u_xlat35 * u_xlat36;
        u_xlat7.xyz = vec3(u_xlat34) * u_xlat7.xyz;
        u_xlat34 = dot(u_xlat1.xyz, u_xlat6.xyz);
        u_xlat34 = clamp(u_xlat34, 0.0, 1.0);
        u_xlat6.xyz = vec3(u_xlat34) * u_xlat7.xyz;
        u_xlat5.xyz = u_xlat6.xyz * u_xlat0.yzw + u_xlat5.xyz;
    }
    u_xlat10.xyz = u_xlat3.xyz * u_xlat0.yzw + u_xlat4.xyz;
    u_xlat10.xyz = u_xlat5.xyz + u_xlat10.xyz;
    u_xlat1.x = u_xlat32 * (-u_xlat32);
    u_xlat1.x = exp2(u_xlat1.x);
    u_xlat10.xyz = u_xlat10.xyz + (-unity_FogColor.xyz);
    SV_Target0.xyz = u_xlat1.xxx * u_xlat10.xyz + unity_FogColor.xyz;
    u_xlatb10 = _Surface==1.0;
    SV_Target0.w = (u_xlatb10) ? u_xlat0.x : 1.0;
    return;
}

