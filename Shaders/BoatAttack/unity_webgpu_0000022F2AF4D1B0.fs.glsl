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
	mat4x4 unity_MatrixV;
	float _DitheringTextureInvSize;
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
layout(set = 1, binding = 3, std140) uniform UnityPerMaterial {
	vec4 _BaseMap_ST;
	vec4 _BaseColor;
	vec4 _SpecColor;
	vec4 _EmissionColor;
	float _Cutoff;
	float _Surface;
};
layout(set = 1, binding = 4, std140) uniform MainLightShadows {
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
layout(set = 1, binding = 5, std140) uniform LightCookies {
	mat4x4 _MainLightWorldToLight;
	float _AdditionalLightsCookieEnableBits[8];
	float _MainLightCookieTextureFormat;
	float _AdditionalLightsCookieAtlasTextureFormat;
};
layout(set = 1, binding = 6, std140) uniform AdditionalLightsCookies {
	mat4x4 _AdditionalLightsWorldToLights[256];
	vec4 _AdditionalLightsCookieAtlasUVRects[256];
	float _AdditionalLightsLightTypes[256];
};
layout(set = 0, binding = 0) uniform mediump texture2D unity_Lightmap;
layout(set = 0, binding = 1) uniform mediump texture2D _BaseMap;
layout(set = 0, binding = 2) uniform mediump texture2D _MainLightShadowmapTexture;
layout(set = 0, binding = 3) uniform mediump texture2D _MainLightCookieTexture;
layout(set = 0, binding = 4) uniform mediump texture2D _AdditionalLightsCookieAtlasTexture;
layout(set = 0, binding = 5) uniform mediump texture2D _DitheringTexture;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 1) in highp vec3 vs_TEXCOORD1;
layout(location = 2) in highp vec3 vs_TEXCOORD2;
layout(location = 3) in highp vec2 vs_TEXCOORD7;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 6) uniform mediump  sampler samplerunity_Lightmap;
layout(set = 0, binding = 7) uniform mediump  sampler sampler_BaseMap;
layout(set = 0, binding = 8) uniform mediump  samplerShadow sampler_MainLightShadowmapTexture;
layout(set = 0, binding = 9) uniform mediump  sampler sampler_MainLightCookieTexture;
layout(set = 0, binding = 10) uniform mediump  sampler sampler_AdditionalLightsCookieAtlasTexture;
layout(set = 0, binding = 11) uniform mediump  sampler sampler_DitheringTexture;
void main()
{
vec4 u_xlat0;
bool u_xlatb0;
vec4 u_xlat1;
uint u_xlatu1;
bool u_xlatb1;
vec3 u_xlat2;
vec4 u_xlat3;
bvec4 u_xlatb3;
vec4 u_xlat4;
vec3 u_xlat5;
bvec2 u_xlatb5;
vec3 u_xlat6;
vec3 u_xlat7;
vec4 u_xlat8;
vec4 u_xlat9;
vec3 u_xlat10;
vec3 u_xlat11;
int u_xlati11;
uint u_xlatu11;
bool u_xlatb11;
float u_xlat22;
bool u_xlatb22;
vec2 u_xlat27;
int u_xlati27;
bvec2 u_xlatb27;
vec2 u_xlat30;
float u_xlat33;
uint u_xlatu33;
bool u_xlatb33;
float u_xlat35;
uint u_xlatu35;
bool u_xlatb35;
float u_xlat36;
int u_xlati36;
float u_xlat37;
int u_xlati37;
uint u_xlatu37;
bool u_xlatb37;
int u_xlati38;
vec4 hlslcc_FragCoord = vec4(gl_FragCoord.xyz, 1.0/gl_FragCoord.w);
    u_xlat0 = texture(sampler2D(_BaseMap, sampler_BaseMap), vs_TEXCOORD0.xy, _GlobalMipBias.x);
    u_xlat1 = u_xlat0.wxyz * _BaseColor.wxyz;
    u_xlatb0 = u_xlat1.x>=_Cutoff;
    u_xlat0.x = u_xlatb0 ? u_xlat1.x : float(0.0);
    u_xlat11.x = u_xlat0.w * _BaseColor.w + (-_Cutoff);
    u_xlat22 = dFdxCoarse(u_xlat1.x);
    u_xlat33 = dFdyCoarse(u_xlat1.x);
    u_xlat22 = abs(u_xlat33) + abs(u_xlat22);
    u_xlat22 = max(u_xlat22, 9.99999975e-05);
    u_xlat11.x = u_xlat11.x / u_xlat22;
    u_xlat11.x = u_xlat11.x + 0.5;
    u_xlat11.x = clamp(u_xlat11.x, 0.0, 1.0);
    u_xlatb22 = _AlphaToMaskAvailable!=0.0;
    u_xlat0.x = (u_xlatb22) ? u_xlat11.x : u_xlat0.x;
    u_xlat11.x = u_xlat0.x + -9.99999975e-05;
    u_xlatb11 = u_xlat11.x<0.0;
    if(((int(u_xlatb11) * int(0xffffffffu)))!=0){discard;}
    u_xlat11.xz = hlslcc_FragCoord.xy * vec2(_DitheringTextureInvSize);
    u_xlat11.x = texture(sampler2D(_DitheringTexture, sampler_DitheringTexture), u_xlat11.xz, _GlobalMipBias.x).w;
    u_xlatb33 = unity_LODFade.x>=0.0;
    u_xlat11.x = (u_xlatb33) ? abs(u_xlat11.x) : -abs(u_xlat11.x);
    u_xlat11.x = (-u_xlat11.x) + unity_LODFade.x;
    u_xlatb11 = u_xlat11.x<0.0;
    if(((int(u_xlatb11) * int(0xffffffffu)))!=0){discard;}
    u_xlat11.x = dot(vs_TEXCOORD2.xyz, vs_TEXCOORD2.xyz);
    u_xlat11.x = inversesqrt(u_xlat11.x);
    u_xlat2.xyz = u_xlat11.xxx * vs_TEXCOORD2.xyz;
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
    u_xlat11.x = dot(u_xlat4, vec4(4.0, 3.0, 2.0, 1.0));
    u_xlat11.x = (-u_xlat11.x) + 4.0;
    u_xlatu11 = uint(u_xlat11.x);
    u_xlati11 = int(u_xlatu11) << (2 & int(0x1F));
    u_xlat3.xyz = vs_TEXCOORD1.yyy * _MainLightWorldToShadow[(u_xlati11 + 1) / 4][(u_xlati11 + 1) % 4].xyz;
    u_xlat3.xyz = _MainLightWorldToShadow[u_xlati11 / 4][u_xlati11 % 4].xyz * vs_TEXCOORD1.xxx + u_xlat3.xyz;
    u_xlat3.xyz = _MainLightWorldToShadow[(u_xlati11 + 2) / 4][(u_xlati11 + 2) % 4].xyz * vs_TEXCOORD1.zzz + u_xlat3.xyz;
    u_xlat3.xyz = u_xlat3.xyz + _MainLightWorldToShadow[(u_xlati11 + 3) / 4][(u_xlati11 + 3) % 4].xyz;
    u_xlat11.x = vs_TEXCOORD1.y * unity_MatrixV[1].z;
    u_xlat11.x = unity_MatrixV[0].z * vs_TEXCOORD1.x + u_xlat11.x;
    u_xlat11.x = unity_MatrixV[2].z * vs_TEXCOORD1.z + u_xlat11.x;
    u_xlat11.x = u_xlat11.x + unity_MatrixV[3].z;
    u_xlat11.x = (-u_xlat11.x) + (-_ProjectionParams.y);
    u_xlat11.x = max(u_xlat11.x, 0.0);
    u_xlat11.x = u_xlat11.x * unity_FogParams.x;
    u_xlat4.xyz = texture(sampler2D(unity_Lightmap, samplerunity_Lightmap), vs_TEXCOORD7.xy, _GlobalMipBias.x).xyz;
    vec3 txVec0 = vec3(u_xlat3.xy,u_xlat3.z);
    u_xlat33 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec0, 0.0);
    u_xlat1.x = (-_MainLightShadowParams.x) + 1.0;
    u_xlat33 = u_xlat33 * _MainLightShadowParams.x + u_xlat1.x;
    u_xlatb1 = 0.0>=u_xlat3.z;
    u_xlatb35 = u_xlat3.z>=1.0;
    u_xlatb1 = u_xlatb1 || u_xlatb35;
    u_xlat33 = (u_xlatb1) ? 1.0 : u_xlat33;
    u_xlat3.xyz = vs_TEXCOORD1.xyz + (-_WorldSpaceCameraPos.xyz);
    u_xlat1.x = dot(u_xlat3.xyz, u_xlat3.xyz);
    u_xlat1.x = u_xlat1.x * _MainLightShadowParams.z + _MainLightShadowParams.w;
    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
    u_xlat35 = (-u_xlat33) + 1.0;
    u_xlat33 = u_xlat1.x * u_xlat35 + u_xlat33;
    u_xlatb1 = _MainLightCookieTextureFormat!=-1.0;
    if(u_xlatb1){
        u_xlat3.xy = vs_TEXCOORD1.yy * _MainLightWorldToLight[1].xy;
        u_xlat3.xy = _MainLightWorldToLight[0].xy * vs_TEXCOORD1.xx + u_xlat3.xy;
        u_xlat3.xy = _MainLightWorldToLight[2].xy * vs_TEXCOORD1.zz + u_xlat3.xy;
        u_xlat3.xy = u_xlat3.xy + _MainLightWorldToLight[3].xy;
        u_xlat3.xy = u_xlat3.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
        u_xlat3 = texture(sampler2D(_MainLightCookieTexture, sampler_MainLightCookieTexture), u_xlat3.xy, _GlobalMipBias.x);
        u_xlatb5.xy = equal(vec4(vec4(_MainLightCookieTextureFormat, _MainLightCookieTextureFormat, _MainLightCookieTextureFormat, _MainLightCookieTextureFormat)), vec4(0.0, 1.0, 0.0, 0.0)).xy;
        u_xlat1.x = (u_xlatb5.y) ? u_xlat3.w : u_xlat3.x;
        u_xlat3.xyz = (u_xlatb5.x) ? u_xlat3.xyz : u_xlat1.xxx;
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
    u_xlat3.xyz = u_xlat1.yzw * u_xlat3.xyz;
    u_xlat3.xyz = u_xlat0.xxx * u_xlat3.xyz;
    u_xlat33 = min(_AdditionalLightsCount.x, unity_LightData.y);
    u_xlatu33 =  uint(int(u_xlat33));
    u_xlatb5.xy = equal(vec4(vec4(_AdditionalLightsCookieAtlasTextureFormat, _AdditionalLightsCookieAtlasTextureFormat, _AdditionalLightsCookieAtlasTextureFormat, _AdditionalLightsCookieAtlasTextureFormat)), vec4(0.0, 1.0, 0.0, 0.0)).xy;
    u_xlat6.x = float(0.0);
    u_xlat6.y = float(0.0);
    u_xlat6.z = float(0.0);
    for(uint u_xlatu_loop_1 = 0u ; u_xlatu_loop_1<u_xlatu33 ; u_xlatu_loop_1++)
    {
        u_xlatu35 = u_xlatu_loop_1 >> (2u & uint(0x1F));
        u_xlati36 = int(u_xlatu_loop_1 & 3u);
        u_xlat35 = dot(unity_LightIndices[int(u_xlatu35)], uintBitsToFloat(ImmCB_0[u_xlati36]));
        u_xlatu35 =  uint(int(u_xlat35));
        u_xlat7.xyz = (-vs_TEXCOORD1.xyz) * _AdditionalLightsPosition[int(u_xlatu35)].www + _AdditionalLightsPosition[int(u_xlatu35)].xyz;
        u_xlat36 = dot(u_xlat7.xyz, u_xlat7.xyz);
        u_xlat36 = max(u_xlat36, 6.10351562e-05);
        u_xlat37 = inversesqrt(u_xlat36);
        u_xlat7.xyz = vec3(u_xlat37) * u_xlat7.xyz;
        u_xlat37 = float(1.0) / float(u_xlat36);
        u_xlat36 = u_xlat36 * _AdditionalLightsAttenuation[int(u_xlatu35)].x;
        u_xlat36 = (-u_xlat36) * u_xlat36 + 1.0;
        u_xlat36 = max(u_xlat36, 0.0);
        u_xlat36 = u_xlat36 * u_xlat36;
        u_xlat36 = u_xlat36 * u_xlat37;
        u_xlat37 = dot(_AdditionalLightsSpotDir[int(u_xlatu35)].xyz, u_xlat7.xyz);
        u_xlat37 = u_xlat37 * _AdditionalLightsAttenuation[int(u_xlatu35)].z + _AdditionalLightsAttenuation[int(u_xlatu35)].w;
        u_xlat37 = clamp(u_xlat37, 0.0, 1.0);
        u_xlat37 = u_xlat37 * u_xlat37;
        u_xlat36 = u_xlat36 * u_xlat37;
        u_xlatu37 = u_xlatu35 >> (5u & uint(0x1F));
        u_xlati27 = 1 << (int(u_xlatu35) & int(0x1F));
        u_xlati37 = int(uint(u_xlati27) & floatBitsToUint(_AdditionalLightsCookieEnableBits[int(u_xlatu37)]));
        if(u_xlati37 != 0) {
            u_xlati37 = int(_AdditionalLightsLightTypes[int(u_xlatu35)]);
            u_xlati27 = (u_xlati37 != 0) ? 0 : 1;
            u_xlati38 = int(u_xlatu35) << (2 & int(0x1F));
            if(u_xlati27 != 0) {
                u_xlat8.xyz = vs_TEXCOORD1.yyy * _AdditionalLightsWorldToLights[(u_xlati38 + 1) / 4][(u_xlati38 + 1) % 4].xyw;
                u_xlat8.xyz = _AdditionalLightsWorldToLights[u_xlati38 / 4][u_xlati38 % 4].xyw * vs_TEXCOORD1.xxx + u_xlat8.xyz;
                u_xlat8.xyz = _AdditionalLightsWorldToLights[(u_xlati38 + 2) / 4][(u_xlati38 + 2) % 4].xyw * vs_TEXCOORD1.zzz + u_xlat8.xyz;
                u_xlat8.xyz = u_xlat8.xyz + _AdditionalLightsWorldToLights[(u_xlati38 + 3) / 4][(u_xlati38 + 3) % 4].xyw;
                u_xlat8.xy = u_xlat8.xy / u_xlat8.zz;
                u_xlat8.xy = u_xlat8.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
                u_xlat8.xy = clamp(u_xlat8.xy, 0.0, 1.0);
                u_xlat8.xy = _AdditionalLightsCookieAtlasUVRects[int(u_xlatu35)].xy * u_xlat8.xy + _AdditionalLightsCookieAtlasUVRects[int(u_xlatu35)].zw;
            } else {
                u_xlatb37 = u_xlati37==1;
                u_xlati37 = u_xlatb37 ? 1 : int(0);
                if(u_xlati37 != 0) {
                    u_xlat30.xy = vs_TEXCOORD1.yy * _AdditionalLightsWorldToLights[(u_xlati38 + 1) / 4][(u_xlati38 + 1) % 4].xy;
                    u_xlat30.xy = _AdditionalLightsWorldToLights[u_xlati38 / 4][u_xlati38 % 4].xy * vs_TEXCOORD1.xx + u_xlat30.xy;
                    u_xlat30.xy = _AdditionalLightsWorldToLights[(u_xlati38 + 2) / 4][(u_xlati38 + 2) % 4].xy * vs_TEXCOORD1.zz + u_xlat30.xy;
                    u_xlat30.xy = u_xlat30.xy + _AdditionalLightsWorldToLights[(u_xlati38 + 3) / 4][(u_xlati38 + 3) % 4].xy;
                    u_xlat30.xy = u_xlat30.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
                    u_xlat30.xy = fract(u_xlat30.xy);
                    u_xlat8.xy = _AdditionalLightsCookieAtlasUVRects[int(u_xlatu35)].xy * u_xlat30.xy + _AdditionalLightsCookieAtlasUVRects[int(u_xlatu35)].zw;
                } else {
                    u_xlat9 = vs_TEXCOORD1.yyyy * _AdditionalLightsWorldToLights[(u_xlati38 + 1) / 4][(u_xlati38 + 1) % 4];
                    u_xlat9 = _AdditionalLightsWorldToLights[u_xlati38 / 4][u_xlati38 % 4] * vs_TEXCOORD1.xxxx + u_xlat9;
                    u_xlat9 = _AdditionalLightsWorldToLights[(u_xlati38 + 2) / 4][(u_xlati38 + 2) % 4] * vs_TEXCOORD1.zzzz + u_xlat9;
                    u_xlat9 = u_xlat9 + _AdditionalLightsWorldToLights[(u_xlati38 + 3) / 4][(u_xlati38 + 3) % 4];
                    u_xlat9.xyz = u_xlat9.xyz / u_xlat9.www;
                    u_xlat37 = dot(u_xlat9.xyz, u_xlat9.xyz);
                    u_xlat37 = inversesqrt(u_xlat37);
                    u_xlat9.xyz = vec3(u_xlat37) * u_xlat9.xyz;
                    u_xlat37 = dot(abs(u_xlat9.xyz), vec3(1.0, 1.0, 1.0));
                    u_xlat37 = max(u_xlat37, 9.99999997e-07);
                    u_xlat37 = float(1.0) / float(u_xlat37);
                    u_xlat10.xyz = vec3(u_xlat37) * u_xlat9.zxy;
                    u_xlat10.x = (-u_xlat10.x);
                    u_xlat10.x = clamp(u_xlat10.x, 0.0, 1.0);
                    u_xlatb27.xy = greaterThanEqual(u_xlat10.yzyz, vec4(0.0, 0.0, 0.0, 0.0)).xy;
                    u_xlat27.x = (u_xlatb27.x) ? u_xlat10.x : (-u_xlat10.x);
                    u_xlat27.y = (u_xlatb27.y) ? u_xlat10.x : (-u_xlat10.x);
                    u_xlat27.xy = u_xlat9.xy * vec2(u_xlat37) + u_xlat27.xy;
                    u_xlat27.xy = u_xlat27.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
                    u_xlat27.xy = clamp(u_xlat27.xy, 0.0, 1.0);
                    u_xlat8.xy = _AdditionalLightsCookieAtlasUVRects[int(u_xlatu35)].xy * u_xlat27.xy + _AdditionalLightsCookieAtlasUVRects[int(u_xlatu35)].zw;
                }
            }
            u_xlat8 = texture(sampler2D(_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture), u_xlat8.xy, _GlobalMipBias.x);
            u_xlat37 = (u_xlatb5.y) ? u_xlat8.w : u_xlat8.x;
            u_xlat8.xyz = (u_xlatb5.x) ? u_xlat8.xyz : vec3(u_xlat37);
        } else {
            u_xlat8.x = float(1.0);
            u_xlat8.y = float(1.0);
            u_xlat8.z = float(1.0);
        }
        u_xlat8.xyz = u_xlat8.xyz * _AdditionalLightsColor[int(u_xlatu35)].xyz;
        u_xlat8.xyz = vec3(u_xlat36) * u_xlat8.xyz;
        u_xlat35 = dot(u_xlat2.xyz, u_xlat7.xyz);
        u_xlat35 = clamp(u_xlat35, 0.0, 1.0);
        u_xlat7.xyz = vec3(u_xlat35) * u_xlat8.xyz;
        u_xlat7.xyz = u_xlat1.yzw * u_xlat7.xyz;
        u_xlat6.xyz = u_xlat7.xyz * u_xlat0.xxx + u_xlat6.xyz;
    }
    u_xlat1.xyz = u_xlat4.xyz * u_xlat1.yzw + u_xlat3.xyz;
    u_xlat1.xyz = u_xlat6.xyz + u_xlat1.xyz;
    u_xlat11.x = u_xlat11.x * (-u_xlat11.x);
    u_xlat11.x = exp2(u_xlat11.x);
    u_xlat1.xyz = u_xlat1.xyz + (-unity_FogColor.xyz);
    SV_Target0.xyz = u_xlat11.xxx * u_xlat1.xyz + unity_FogColor.xyz;
    u_xlatb11 = _Surface==1.0;
    u_xlatb11 = u_xlatb11 || u_xlatb22;
    SV_Target0.w = (u_xlatb11) ? u_xlat0.x : 1.0;
    return;
}

