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
	vec4 _ScaleBiasRt;
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
layout(set = 0, binding = 0) uniform mediump texture2D _BaseMap;
layout(set = 0, binding = 1) uniform mediump texture2D _ScreenSpaceOcclusionTexture;
layout(set = 0, binding = 2) uniform mediump texture2D _MainLightShadowmapTexture;
layout(set = 0, binding = 3) uniform mediump texture2D _MainLightCookieTexture;
layout(set = 0, binding = 4) uniform mediump texture2D _AdditionalLightsCookieAtlasTexture;
layout(set = 0, binding = 5) uniform mediump texture2D _DitheringTexture;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 1) in highp vec3 vs_TEXCOORD1;
layout(location = 2) in highp vec3 vs_TEXCOORD2;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 6) uniform mediump  sampler sampler_BaseMap;
layout(set = 0, binding = 7) uniform mediump  sampler sampler_ScreenSpaceOcclusionTexture;
layout(set = 0, binding = 8) uniform mediump  samplerShadow sampler_MainLightShadowmapTexture;
layout(set = 0, binding = 9) uniform mediump  sampler sampler_MainLightCookieTexture;
layout(set = 0, binding = 10) uniform mediump  sampler sampler_AdditionalLightsCookieAtlasTexture;
layout(set = 0, binding = 11) uniform mediump  sampler sampler_DitheringTexture;
void main()
{
vec4 u_xlat0;
vec4 u_xlat1;
bool u_xlatb1;
vec4 u_xlat2;
int u_xlati2;
uint u_xlatu2;
bvec4 u_xlatb2;
vec4 u_xlat3;
vec4 u_xlat4;
bvec2 u_xlatb4;
vec4 u_xlat5;
vec4 u_xlat6;
vec4 u_xlat7;
int u_xlati7;
bvec4 u_xlatb7;
vec4 u_xlat8;
vec4 u_xlat9;
vec4 u_xlat10;
vec4 u_xlat11;
vec4 u_xlat12;
vec4 u_xlat13;
vec4 u_xlat14;
vec4 u_xlat15;
vec4 u_xlat16;
vec4 u_xlat17;
vec3 u_xlat18;
bool u_xlatb18;
bool u_xlatb19;
vec3 u_xlat20;
bvec2 u_xlatb20;
float u_xlat22;
vec3 u_xlat23;
vec2 u_xlat24;
vec3 u_xlat25;
float u_xlat38;
bool u_xlatb38;
vec2 u_xlat40;
uint u_xlatu40;
bool u_xlatb40;
vec2 u_xlat42;
vec2 u_xlat43;
vec2 u_xlat48;
float u_xlat55;
uint u_xlatu55;
float u_xlat56;
float u_xlat57;
uint u_xlatu57;
bool u_xlatb57;
float u_xlat58;
int u_xlati58;
float u_xlat59;
int u_xlati59;
uint u_xlatu59;
bool u_xlatb59;
float u_xlat60;
int u_xlati60;
vec4 hlslcc_FragCoord = vec4(gl_FragCoord.xyz, 1.0/gl_FragCoord.w);
    u_xlat0 = texture(sampler2D(_BaseMap, sampler_BaseMap), vs_TEXCOORD0.xy, _GlobalMipBias.x);
    u_xlat0 = u_xlat0.wxyz * _BaseColor.wxyz;
    u_xlat1.xy = hlslcc_FragCoord.xy * vec2(_DitheringTextureInvSize);
    u_xlat1.x = texture(sampler2D(_DitheringTexture, sampler_DitheringTexture), u_xlat1.xy, _GlobalMipBias.x).w;
    u_xlatb19 = unity_LODFade.x>=0.0;
    u_xlat1.x = (u_xlatb19) ? abs(u_xlat1.x) : -abs(u_xlat1.x);
    u_xlat1.x = (-u_xlat1.x) + unity_LODFade.x;
    u_xlatb1 = u_xlat1.x<0.0;
    if(((int(u_xlatb1) * int(0xffffffffu)))!=0){discard;}
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
    u_xlat20.xyz = vs_TEXCOORD1.yyy * _MainLightWorldToShadow[(u_xlati2 + 1) / 4][(u_xlati2 + 1) % 4].xyz;
    u_xlat20.xyz = _MainLightWorldToShadow[u_xlati2 / 4][u_xlati2 % 4].xyz * vs_TEXCOORD1.xxx + u_xlat20.xyz;
    u_xlat20.xyz = _MainLightWorldToShadow[(u_xlati2 + 2) / 4][(u_xlati2 + 2) % 4].xyz * vs_TEXCOORD1.zzz + u_xlat20.xyz;
    u_xlat2.xyz = u_xlat20.xyz + _MainLightWorldToShadow[(u_xlati2 + 3) / 4][(u_xlati2 + 3) % 4].xyz;
    u_xlat1.w = 1.0;
    u_xlat3.x = dot(unity_SHAr, u_xlat1);
    u_xlat3.y = dot(unity_SHAg, u_xlat1);
    u_xlat3.z = dot(unity_SHAb, u_xlat1);
    u_xlat4 = u_xlat1.yzzx * u_xlat1.xyzz;
    u_xlat5.x = dot(unity_SHBr, u_xlat4);
    u_xlat5.y = dot(unity_SHBg, u_xlat4);
    u_xlat5.z = dot(unity_SHBb, u_xlat4);
    u_xlat55 = u_xlat1.y * u_xlat1.y;
    u_xlat55 = u_xlat1.x * u_xlat1.x + (-u_xlat55);
    u_xlat4.xyz = unity_SHC.xyz * vec3(u_xlat55) + u_xlat5.xyz;
    u_xlat3.xyz = u_xlat3.xyz + u_xlat4.xyz;
    u_xlat3.xyz = max(u_xlat3.xyz, vec3(0.0, 0.0, 0.0));
    u_xlat4.xy = vec2(1.0) / vec2(_ScaledScreenParams.xy);
    u_xlat4.xy = u_xlat4.xy * hlslcc_FragCoord.xy;
    u_xlat55 = u_xlat4.y * _ScaleBiasRt.x + _ScaleBiasRt.y;
    u_xlat4.z = (-u_xlat55) + 1.0;
    u_xlat55 = texture(sampler2D(_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture), u_xlat4.xz, _GlobalMipBias.x).x;
    u_xlat56 = u_xlat55 + -1.0;
    u_xlat56 = _AmbientOcclusionParam.w * u_xlat56 + 1.0;
    u_xlat55 = min(u_xlat55, 1.0);
    u_xlatb57 = 0.0<_MainLightShadowParams.y;
    if(u_xlatb57){
        u_xlatb57 = _MainLightShadowParams.y==1.0;
        if(u_xlatb57){
            u_xlat4 = u_xlat2.xyxy + _MainLightShadowOffset0;
            vec3 txVec0 = vec3(u_xlat4.xy,u_xlat2.z);
            u_xlat5.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec0, 0.0);
            vec3 txVec1 = vec3(u_xlat4.zw,u_xlat2.z);
            u_xlat5.y = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec1, 0.0);
            u_xlat4 = u_xlat2.xyxy + _MainLightShadowOffset1;
            vec3 txVec2 = vec3(u_xlat4.xy,u_xlat2.z);
            u_xlat5.z = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec2, 0.0);
            vec3 txVec3 = vec3(u_xlat4.zw,u_xlat2.z);
            u_xlat5.w = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec3, 0.0);
            u_xlat57 = dot(u_xlat5, vec4(0.25, 0.25, 0.25, 0.25));
        } else {
            u_xlatb4.x = _MainLightShadowParams.y==2.0;
            if(u_xlatb4.x){
                u_xlat4.xy = u_xlat2.xy * _MainLightShadowmapSize.zw + vec2(0.5, 0.5);
                u_xlat4.xy = floor(u_xlat4.xy);
                u_xlat40.xy = u_xlat2.xy * _MainLightShadowmapSize.zw + (-u_xlat4.xy);
                u_xlat5 = u_xlat40.xxyy + vec4(0.5, 1.0, 0.5, 1.0);
                u_xlat6 = u_xlat5.xxzz * u_xlat5.xxzz;
                u_xlat5.xz = u_xlat6.yw * vec2(0.0799999982, 0.0799999982);
                u_xlat6.xy = u_xlat6.xz * vec2(0.5, 0.5) + (-u_xlat40.xy);
                u_xlat42.xy = (-u_xlat40.xy) + vec2(1.0, 1.0);
                u_xlat7.xy = min(u_xlat40.xy, vec2(0.0, 0.0));
                u_xlat7.xy = (-u_xlat7.xy) * u_xlat7.xy + u_xlat42.xy;
                u_xlat40.xy = max(u_xlat40.xy, vec2(0.0, 0.0));
                u_xlat40.xy = (-u_xlat40.xy) * u_xlat40.xy + u_xlat5.yw;
                u_xlat7.xy = u_xlat7.xy + vec2(1.0, 1.0);
                u_xlat40.xy = u_xlat40.xy + vec2(1.0, 1.0);
                u_xlat8.xy = u_xlat6.xy * vec2(0.159999996, 0.159999996);
                u_xlat6.xy = u_xlat42.xy * vec2(0.159999996, 0.159999996);
                u_xlat7.xy = u_xlat7.xy * vec2(0.159999996, 0.159999996);
                u_xlat9.xy = u_xlat40.xy * vec2(0.159999996, 0.159999996);
                u_xlat40.xy = u_xlat5.yw * vec2(0.159999996, 0.159999996);
                u_xlat8.z = u_xlat7.x;
                u_xlat8.w = u_xlat40.x;
                u_xlat6.z = u_xlat9.x;
                u_xlat6.w = u_xlat5.x;
                u_xlat10 = u_xlat6.zwxz + u_xlat8.zwxz;
                u_xlat7.z = u_xlat8.y;
                u_xlat7.w = u_xlat40.y;
                u_xlat9.z = u_xlat6.y;
                u_xlat9.w = u_xlat5.z;
                u_xlat5.xyz = u_xlat7.zyw + u_xlat9.zyw;
                u_xlat6.xyz = u_xlat6.xzw / u_xlat10.zwy;
                u_xlat6.xyz = u_xlat6.xyz + vec3(-2.5, -0.5, 1.5);
                u_xlat7.xyz = u_xlat9.zyw / u_xlat5.xyz;
                u_xlat7.xyz = u_xlat7.xyz + vec3(-2.5, -0.5, 1.5);
                u_xlat6.xyz = u_xlat6.yxz * _MainLightShadowmapSize.xxx;
                u_xlat7.xyz = u_xlat7.xyz * _MainLightShadowmapSize.yyy;
                u_xlat6.w = u_xlat7.x;
                u_xlat8 = u_xlat4.xyxy * _MainLightShadowmapSize.xyxy + u_xlat6.ywxw;
                u_xlat40.xy = u_xlat4.xy * _MainLightShadowmapSize.xy + u_xlat6.zw;
                u_xlat7.w = u_xlat6.y;
                u_xlat6.yw = u_xlat7.yz;
                u_xlat9 = u_xlat4.xyxy * _MainLightShadowmapSize.xyxy + u_xlat6.xyzy;
                u_xlat7 = u_xlat4.xyxy * _MainLightShadowmapSize.xyxy + u_xlat7.wywz;
                u_xlat6 = u_xlat4.xyxy * _MainLightShadowmapSize.xyxy + u_xlat6.xwzw;
                u_xlat11 = u_xlat5.xxxy * u_xlat10.zwyz;
                u_xlat12 = u_xlat5.yyzz * u_xlat10;
                u_xlat4.x = u_xlat5.z * u_xlat10.y;
                vec3 txVec4 = vec3(u_xlat8.xy,u_xlat2.z);
                u_xlat22 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec4, 0.0);
                vec3 txVec5 = vec3(u_xlat8.zw,u_xlat2.z);
                u_xlat5.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec5, 0.0);
                u_xlat5.x = u_xlat5.x * u_xlat11.y;
                u_xlat22 = u_xlat11.x * u_xlat22 + u_xlat5.x;
                vec3 txVec6 = vec3(u_xlat40.xy,u_xlat2.z);
                u_xlat40.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec6, 0.0);
                u_xlat22 = u_xlat11.z * u_xlat40.x + u_xlat22;
                vec3 txVec7 = vec3(u_xlat7.xy,u_xlat2.z);
                u_xlat40.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec7, 0.0);
                u_xlat22 = u_xlat11.w * u_xlat40.x + u_xlat22;
                vec3 txVec8 = vec3(u_xlat9.xy,u_xlat2.z);
                u_xlat40.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec8, 0.0);
                u_xlat22 = u_xlat12.x * u_xlat40.x + u_xlat22;
                vec3 txVec9 = vec3(u_xlat9.zw,u_xlat2.z);
                u_xlat40.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec9, 0.0);
                u_xlat22 = u_xlat12.y * u_xlat40.x + u_xlat22;
                vec3 txVec10 = vec3(u_xlat7.zw,u_xlat2.z);
                u_xlat40.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec10, 0.0);
                u_xlat22 = u_xlat12.z * u_xlat40.x + u_xlat22;
                vec3 txVec11 = vec3(u_xlat6.xy,u_xlat2.z);
                u_xlat40.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec11, 0.0);
                u_xlat22 = u_xlat12.w * u_xlat40.x + u_xlat22;
                vec3 txVec12 = vec3(u_xlat6.zw,u_xlat2.z);
                u_xlat40.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec12, 0.0);
                u_xlat57 = u_xlat4.x * u_xlat40.x + u_xlat22;
            } else {
                u_xlat4.xy = u_xlat2.xy * _MainLightShadowmapSize.zw + vec2(0.5, 0.5);
                u_xlat4.xy = floor(u_xlat4.xy);
                u_xlat40.xy = u_xlat2.xy * _MainLightShadowmapSize.zw + (-u_xlat4.xy);
                u_xlat5 = u_xlat40.xxyy + vec4(0.5, 1.0, 0.5, 1.0);
                u_xlat6 = u_xlat5.xxzz * u_xlat5.xxzz;
                u_xlat7.yw = u_xlat6.yw * vec2(0.0408160016, 0.0408160016);
                u_xlat5.xz = u_xlat6.xz * vec2(0.5, 0.5) + (-u_xlat40.xy);
                u_xlat6.xy = (-u_xlat40.xy) + vec2(1.0, 1.0);
                u_xlat42.xy = min(u_xlat40.xy, vec2(0.0, 0.0));
                u_xlat6.xy = (-u_xlat42.xy) * u_xlat42.xy + u_xlat6.xy;
                u_xlat42.xy = max(u_xlat40.xy, vec2(0.0, 0.0));
                u_xlat23.xz = (-u_xlat42.xy) * u_xlat42.xy + u_xlat5.yw;
                u_xlat6.xy = u_xlat6.xy + vec2(2.0, 2.0);
                u_xlat5.yw = u_xlat23.xz + vec2(2.0, 2.0);
                u_xlat8.z = u_xlat5.y * 0.0816320032;
                u_xlat9.xyz = u_xlat5.zxw * vec3(0.0816320032, 0.0816320032, 0.0816320032);
                u_xlat5.xy = u_xlat6.xy * vec2(0.0816320032, 0.0816320032);
                u_xlat8.x = u_xlat9.y;
                u_xlat8.yw = u_xlat40.xx * vec2(-0.0816320032, 0.0816320032) + vec2(0.163264006, 0.0816320032);
                u_xlat6.xz = u_xlat40.xx * vec2(-0.0816320032, 0.0816320032) + vec2(0.0816320032, 0.163264006);
                u_xlat6.y = u_xlat5.x;
                u_xlat6.w = u_xlat7.y;
                u_xlat8 = u_xlat6 + u_xlat8;
                u_xlat9.yw = u_xlat40.yy * vec2(-0.0816320032, 0.0816320032) + vec2(0.163264006, 0.0816320032);
                u_xlat7.xz = u_xlat40.yy * vec2(-0.0816320032, 0.0816320032) + vec2(0.0816320032, 0.163264006);
                u_xlat7.y = u_xlat5.y;
                u_xlat5 = u_xlat7 + u_xlat9;
                u_xlat6 = u_xlat6 / u_xlat8;
                u_xlat6 = u_xlat6 + vec4(-3.5, -1.5, 0.5, 2.5);
                u_xlat7 = u_xlat7 / u_xlat5;
                u_xlat7 = u_xlat7 + vec4(-3.5, -1.5, 0.5, 2.5);
                u_xlat6 = u_xlat6.wxyz * _MainLightShadowmapSize.xxxx;
                u_xlat7 = u_xlat7.xwyz * _MainLightShadowmapSize.yyyy;
                u_xlat9.xzw = u_xlat6.yzw;
                u_xlat9.y = u_xlat7.x;
                u_xlat10 = u_xlat4.xyxy * _MainLightShadowmapSize.xyxy + u_xlat9.xyzy;
                u_xlat40.xy = u_xlat4.xy * _MainLightShadowmapSize.xy + u_xlat9.wy;
                u_xlat6.y = u_xlat9.y;
                u_xlat9.y = u_xlat7.z;
                u_xlat11 = u_xlat4.xyxy * _MainLightShadowmapSize.xyxy + u_xlat9.xyzy;
                u_xlat12.xy = u_xlat4.xy * _MainLightShadowmapSize.xy + u_xlat9.wy;
                u_xlat6.z = u_xlat9.y;
                u_xlat13 = u_xlat4.xyxy * _MainLightShadowmapSize.xyxy + u_xlat6.xyxz;
                u_xlat9.y = u_xlat7.w;
                u_xlat14 = u_xlat4.xyxy * _MainLightShadowmapSize.xyxy + u_xlat9.xyzy;
                u_xlat24.xy = u_xlat4.xy * _MainLightShadowmapSize.xy + u_xlat9.wy;
                u_xlat6.w = u_xlat9.y;
                u_xlat48.xy = u_xlat4.xy * _MainLightShadowmapSize.xy + u_xlat6.xw;
                u_xlat7.xzw = u_xlat9.xzw;
                u_xlat9 = u_xlat4.xyxy * _MainLightShadowmapSize.xyxy + u_xlat7.xyzy;
                u_xlat43.xy = u_xlat4.xy * _MainLightShadowmapSize.xy + u_xlat7.wy;
                u_xlat7.x = u_xlat6.x;
                u_xlat4.xy = u_xlat4.xy * _MainLightShadowmapSize.xy + u_xlat7.xy;
                u_xlat15 = u_xlat5.xxxx * u_xlat8;
                u_xlat16 = u_xlat5.yyyy * u_xlat8;
                u_xlat17 = u_xlat5.zzzz * u_xlat8;
                u_xlat5 = u_xlat5.wwww * u_xlat8;
                vec3 txVec13 = vec3(u_xlat10.xy,u_xlat2.z);
                u_xlat6.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec13, 0.0);
                vec3 txVec14 = vec3(u_xlat10.zw,u_xlat2.z);
                u_xlat60 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec14, 0.0);
                u_xlat60 = u_xlat60 * u_xlat15.y;
                u_xlat6.x = u_xlat15.x * u_xlat6.x + u_xlat60;
                vec3 txVec15 = vec3(u_xlat40.xy,u_xlat2.z);
                u_xlat40.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec15, 0.0);
                u_xlat40.x = u_xlat15.z * u_xlat40.x + u_xlat6.x;
                vec3 txVec16 = vec3(u_xlat13.xy,u_xlat2.z);
                u_xlat58 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec16, 0.0);
                u_xlat40.x = u_xlat15.w * u_xlat58 + u_xlat40.x;
                vec3 txVec17 = vec3(u_xlat11.xy,u_xlat2.z);
                u_xlat58 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec17, 0.0);
                u_xlat40.x = u_xlat16.x * u_xlat58 + u_xlat40.x;
                vec3 txVec18 = vec3(u_xlat11.zw,u_xlat2.z);
                u_xlat58 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec18, 0.0);
                u_xlat40.x = u_xlat16.y * u_xlat58 + u_xlat40.x;
                vec3 txVec19 = vec3(u_xlat12.xy,u_xlat2.z);
                u_xlat58 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec19, 0.0);
                u_xlat40.x = u_xlat16.z * u_xlat58 + u_xlat40.x;
                vec3 txVec20 = vec3(u_xlat13.zw,u_xlat2.z);
                u_xlat58 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec20, 0.0);
                u_xlat40.x = u_xlat16.w * u_xlat58 + u_xlat40.x;
                vec3 txVec21 = vec3(u_xlat14.xy,u_xlat2.z);
                u_xlat58 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec21, 0.0);
                u_xlat40.x = u_xlat17.x * u_xlat58 + u_xlat40.x;
                vec3 txVec22 = vec3(u_xlat14.zw,u_xlat2.z);
                u_xlat58 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec22, 0.0);
                u_xlat40.x = u_xlat17.y * u_xlat58 + u_xlat40.x;
                vec3 txVec23 = vec3(u_xlat24.xy,u_xlat2.z);
                u_xlat58 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec23, 0.0);
                u_xlat40.x = u_xlat17.z * u_xlat58 + u_xlat40.x;
                vec3 txVec24 = vec3(u_xlat48.xy,u_xlat2.z);
                u_xlat58 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec24, 0.0);
                u_xlat40.x = u_xlat17.w * u_xlat58 + u_xlat40.x;
                vec3 txVec25 = vec3(u_xlat9.xy,u_xlat2.z);
                u_xlat58 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec25, 0.0);
                u_xlat40.x = u_xlat5.x * u_xlat58 + u_xlat40.x;
                vec3 txVec26 = vec3(u_xlat9.zw,u_xlat2.z);
                u_xlat58 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec26, 0.0);
                u_xlat40.x = u_xlat5.y * u_xlat58 + u_xlat40.x;
                vec3 txVec27 = vec3(u_xlat43.xy,u_xlat2.z);
                u_xlat58 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec27, 0.0);
                u_xlat40.x = u_xlat5.z * u_xlat58 + u_xlat40.x;
                vec3 txVec28 = vec3(u_xlat4.xy,u_xlat2.z);
                u_xlat4.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec28, 0.0);
                u_xlat57 = u_xlat5.w * u_xlat4.x + u_xlat40.x;
            }
        }
    } else {
        vec3 txVec29 = vec3(u_xlat2.xy,u_xlat2.z);
        u_xlat57 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec29, 0.0);
    }
    u_xlat2.x = (-_MainLightShadowParams.x) + 1.0;
    u_xlat2.x = u_xlat57 * _MainLightShadowParams.x + u_xlat2.x;
    u_xlatb20.x = 0.0>=u_xlat2.z;
    u_xlatb38 = u_xlat2.z>=1.0;
    u_xlatb20.x = u_xlatb38 || u_xlatb20.x;
    u_xlat2.x = (u_xlatb20.x) ? 1.0 : u_xlat2.x;
    u_xlat4.xyz = vs_TEXCOORD1.xyz + (-_WorldSpaceCameraPos.xyz);
    u_xlat20.x = dot(u_xlat4.xyz, u_xlat4.xyz);
    u_xlat20.x = u_xlat20.x * _MainLightShadowParams.z + _MainLightShadowParams.w;
    u_xlat20.x = clamp(u_xlat20.x, 0.0, 1.0);
    u_xlat38 = (-u_xlat2.x) + 1.0;
    u_xlat2.x = u_xlat20.x * u_xlat38 + u_xlat2.x;
    u_xlatb20.x = _MainLightCookieTextureFormat!=-1.0;
    if(u_xlatb20.x){
        u_xlat20.xy = vs_TEXCOORD1.yy * _MainLightWorldToLight[1].xy;
        u_xlat20.xy = _MainLightWorldToLight[0].xy * vs_TEXCOORD1.xx + u_xlat20.xy;
        u_xlat20.xy = _MainLightWorldToLight[2].xy * vs_TEXCOORD1.zz + u_xlat20.xy;
        u_xlat20.xy = u_xlat20.xy + _MainLightWorldToLight[3].xy;
        u_xlat20.xy = u_xlat20.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
        u_xlat4 = texture(sampler2D(_MainLightCookieTexture, sampler_MainLightCookieTexture), u_xlat20.xy, _GlobalMipBias.x);
        u_xlatb20.xy = equal(vec4(vec4(_MainLightCookieTextureFormat, _MainLightCookieTextureFormat, _MainLightCookieTextureFormat, _MainLightCookieTextureFormat)), vec4(0.0, 1.0, 0.0, 0.0)).xy;
        u_xlat38 = (u_xlatb20.y) ? u_xlat4.w : u_xlat4.x;
        u_xlat4.xyz = (u_xlatb20.x) ? u_xlat4.xyz : vec3(u_xlat38);
    } else {
        u_xlat4.x = float(1.0);
        u_xlat4.y = float(1.0);
        u_xlat4.z = float(1.0);
    }
    u_xlat4.xyz = u_xlat4.xyz * _MainLightColor.xyz;
    u_xlat4.xyz = vec3(u_xlat56) * u_xlat4.xyz;
    u_xlat3.xyz = vec3(u_xlat55) * u_xlat3.xyz;
    u_xlat55 = u_xlat2.x * unity_LightData.z;
    u_xlat2.xyz = vec3(u_xlat55) * u_xlat4.xyz;
    u_xlat55 = dot(u_xlat1.xyz, _MainLightPosition.xyz);
    u_xlat55 = clamp(u_xlat55, 0.0, 1.0);
    u_xlat2.xyz = vec3(u_xlat55) * u_xlat2.xyz;
    u_xlat2.xyz = u_xlat0.yzw * u_xlat2.xyz;
    u_xlat55 = min(_AdditionalLightsCount.x, unity_LightData.y);
    u_xlatu55 =  uint(int(u_xlat55));
    u_xlatb4.xy = equal(vec4(vec4(_AdditionalLightsCookieAtlasTextureFormat, _AdditionalLightsCookieAtlasTextureFormat, _AdditionalLightsCookieAtlasTextureFormat, _AdditionalLightsCookieAtlasTextureFormat)), vec4(0.0, 1.0, 0.0, 0.0)).xy;
    u_xlat5.x = float(0.0);
    u_xlat5.y = float(0.0);
    u_xlat5.z = float(0.0);
    for(uint u_xlatu_loop_1 = 0u ; u_xlatu_loop_1<u_xlatu55 ; u_xlatu_loop_1++)
    {
        u_xlatu40 = u_xlatu_loop_1 >> (2u & uint(0x1F));
        u_xlati58 = int(u_xlatu_loop_1 & 3u);
        u_xlat40.x = dot(unity_LightIndices[int(u_xlatu40)], uintBitsToFloat(ImmCB_0[u_xlati58]));
        u_xlatu40 =  uint(int(u_xlat40.x));
        u_xlat6.xyz = (-vs_TEXCOORD1.xyz) * _AdditionalLightsPosition[int(u_xlatu40)].www + _AdditionalLightsPosition[int(u_xlatu40)].xyz;
        u_xlat58 = dot(u_xlat6.xyz, u_xlat6.xyz);
        u_xlat58 = max(u_xlat58, 6.10351562e-05);
        u_xlat59 = inversesqrt(u_xlat58);
        u_xlat6.xyz = vec3(u_xlat59) * u_xlat6.xyz;
        u_xlat59 = float(1.0) / float(u_xlat58);
        u_xlat58 = u_xlat58 * _AdditionalLightsAttenuation[int(u_xlatu40)].x;
        u_xlat58 = (-u_xlat58) * u_xlat58 + 1.0;
        u_xlat58 = max(u_xlat58, 0.0);
        u_xlat58 = u_xlat58 * u_xlat58;
        u_xlat58 = u_xlat58 * u_xlat59;
        u_xlat59 = dot(_AdditionalLightsSpotDir[int(u_xlatu40)].xyz, u_xlat6.xyz);
        u_xlat59 = u_xlat59 * _AdditionalLightsAttenuation[int(u_xlatu40)].z + _AdditionalLightsAttenuation[int(u_xlatu40)].w;
        u_xlat59 = clamp(u_xlat59, 0.0, 1.0);
        u_xlat59 = u_xlat59 * u_xlat59;
        u_xlat58 = u_xlat58 * u_xlat59;
        u_xlatu59 = u_xlatu40 >> (5u & uint(0x1F));
        u_xlati60 = 1 << (int(u_xlatu40) & int(0x1F));
        u_xlati59 = int(uint(u_xlati60) & floatBitsToUint(_AdditionalLightsCookieEnableBits[int(u_xlatu59)]));
        if(u_xlati59 != 0) {
            u_xlati59 = int(_AdditionalLightsLightTypes[int(u_xlatu40)]);
            u_xlati60 = (u_xlati59 != 0) ? 0 : 1;
            u_xlati7 = int(u_xlatu40) << (2 & int(0x1F));
            if(u_xlati60 != 0) {
                u_xlat25.xyz = vs_TEXCOORD1.yyy * _AdditionalLightsWorldToLights[(u_xlati7 + 1) / 4][(u_xlati7 + 1) % 4].xyw;
                u_xlat25.xyz = _AdditionalLightsWorldToLights[u_xlati7 / 4][u_xlati7 % 4].xyw * vs_TEXCOORD1.xxx + u_xlat25.xyz;
                u_xlat25.xyz = _AdditionalLightsWorldToLights[(u_xlati7 + 2) / 4][(u_xlati7 + 2) % 4].xyw * vs_TEXCOORD1.zzz + u_xlat25.xyz;
                u_xlat25.xyz = u_xlat25.xyz + _AdditionalLightsWorldToLights[(u_xlati7 + 3) / 4][(u_xlati7 + 3) % 4].xyw;
                u_xlat25.xy = u_xlat25.xy / u_xlat25.zz;
                u_xlat25.xy = u_xlat25.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
                u_xlat25.xy = clamp(u_xlat25.xy, 0.0, 1.0);
                u_xlat25.xy = _AdditionalLightsCookieAtlasUVRects[int(u_xlatu40)].xy * u_xlat25.xy + _AdditionalLightsCookieAtlasUVRects[int(u_xlatu40)].zw;
            } else {
                u_xlatb59 = u_xlati59==1;
                u_xlati59 = u_xlatb59 ? 1 : int(0);
                if(u_xlati59 != 0) {
                    u_xlat8.xy = vs_TEXCOORD1.yy * _AdditionalLightsWorldToLights[(u_xlati7 + 1) / 4][(u_xlati7 + 1) % 4].xy;
                    u_xlat8.xy = _AdditionalLightsWorldToLights[u_xlati7 / 4][u_xlati7 % 4].xy * vs_TEXCOORD1.xx + u_xlat8.xy;
                    u_xlat8.xy = _AdditionalLightsWorldToLights[(u_xlati7 + 2) / 4][(u_xlati7 + 2) % 4].xy * vs_TEXCOORD1.zz + u_xlat8.xy;
                    u_xlat8.xy = u_xlat8.xy + _AdditionalLightsWorldToLights[(u_xlati7 + 3) / 4][(u_xlati7 + 3) % 4].xy;
                    u_xlat8.xy = u_xlat8.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
                    u_xlat8.xy = fract(u_xlat8.xy);
                    u_xlat25.xy = _AdditionalLightsCookieAtlasUVRects[int(u_xlatu40)].xy * u_xlat8.xy + _AdditionalLightsCookieAtlasUVRects[int(u_xlatu40)].zw;
                } else {
                    u_xlat8 = vs_TEXCOORD1.yyyy * _AdditionalLightsWorldToLights[(u_xlati7 + 1) / 4][(u_xlati7 + 1) % 4];
                    u_xlat8 = _AdditionalLightsWorldToLights[u_xlati7 / 4][u_xlati7 % 4] * vs_TEXCOORD1.xxxx + u_xlat8;
                    u_xlat8 = _AdditionalLightsWorldToLights[(u_xlati7 + 2) / 4][(u_xlati7 + 2) % 4] * vs_TEXCOORD1.zzzz + u_xlat8;
                    u_xlat8 = u_xlat8 + _AdditionalLightsWorldToLights[(u_xlati7 + 3) / 4][(u_xlati7 + 3) % 4];
                    u_xlat8.xyz = u_xlat8.xyz / u_xlat8.www;
                    u_xlat59 = dot(u_xlat8.xyz, u_xlat8.xyz);
                    u_xlat59 = inversesqrt(u_xlat59);
                    u_xlat8.xyz = vec3(u_xlat59) * u_xlat8.xyz;
                    u_xlat59 = dot(abs(u_xlat8.xyz), vec3(1.0, 1.0, 1.0));
                    u_xlat59 = max(u_xlat59, 9.99999997e-07);
                    u_xlat59 = float(1.0) / float(u_xlat59);
                    u_xlat9.xyz = vec3(u_xlat59) * u_xlat8.zxy;
                    u_xlat9.x = (-u_xlat9.x);
                    u_xlat9.x = clamp(u_xlat9.x, 0.0, 1.0);
                    u_xlatb7.xw = greaterThanEqual(u_xlat9.yyyz, vec4(0.0, 0.0, 0.0, 0.0)).xw;
                    u_xlat7.x = (u_xlatb7.x) ? u_xlat9.x : (-u_xlat9.x);
                    u_xlat7.w = (u_xlatb7.w) ? u_xlat9.x : (-u_xlat9.x);
                    u_xlat7.xw = u_xlat8.xy * vec2(u_xlat59) + u_xlat7.xw;
                    u_xlat7.xw = u_xlat7.xw * vec2(0.5, 0.5) + vec2(0.5, 0.5);
                    u_xlat7.xw = clamp(u_xlat7.xw, 0.0, 1.0);
                    u_xlat25.xy = _AdditionalLightsCookieAtlasUVRects[int(u_xlatu40)].xy * u_xlat7.xw + _AdditionalLightsCookieAtlasUVRects[int(u_xlatu40)].zw;
                }
            }
            u_xlat7 = texture(sampler2D(_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture), u_xlat25.xy, _GlobalMipBias.x);
            u_xlat59 = (u_xlatb4.y) ? u_xlat7.w : u_xlat7.x;
            u_xlat7.xyz = (u_xlatb4.x) ? u_xlat7.xyz : vec3(u_xlat59);
        } else {
            u_xlat7.x = float(1.0);
            u_xlat7.y = float(1.0);
            u_xlat7.z = float(1.0);
        }
        u_xlat7.xyz = u_xlat7.xyz * _AdditionalLightsColor[int(u_xlatu40)].xyz;
        u_xlat7.xyz = vec3(u_xlat56) * u_xlat7.xyz;
        u_xlat7.xyz = vec3(u_xlat58) * u_xlat7.xyz;
        u_xlat40.x = dot(u_xlat1.xyz, u_xlat6.xyz);
        u_xlat40.x = clamp(u_xlat40.x, 0.0, 1.0);
        u_xlat6.xyz = u_xlat40.xxx * u_xlat7.xyz;
        u_xlat5.xyz = u_xlat6.xyz * u_xlat0.yzw + u_xlat5.xyz;
    }
    u_xlat18.xyz = u_xlat3.xyz * u_xlat0.yzw + u_xlat2.xyz;
    SV_Target0.xyz = u_xlat5.xyz + u_xlat18.xyz;
    u_xlatb18 = _Surface==1.0;
    SV_Target0.w = (u_xlatb18) ? u_xlat0.x : 1.0;
    return;
}

