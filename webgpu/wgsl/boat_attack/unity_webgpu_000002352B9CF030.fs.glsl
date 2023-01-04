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
	vec4 _ScaledScreenParams;
	vec2 _GlobalMipBias;
	float _AlphaToMaskAvailable;
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
layout(set = 0, binding = 1) uniform mediump texture2D _BumpMap;
layout(set = 0, binding = 2) uniform mediump texture2D _ScreenSpaceOcclusionTexture;
layout(set = 0, binding = 3) uniform mediump texture2D _MainLightShadowmapTexture;
layout(set = 0, binding = 4) uniform mediump texture2D _MainLightCookieTexture;
layout(set = 0, binding = 5) uniform mediump texture2D _AdditionalLightsCookieAtlasTexture;
layout(set = 0, binding = 6) uniform mediump texture2D _DitheringTexture;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 1) in highp vec3 vs_TEXCOORD1;
layout(location = 2) in highp vec4 vs_TEXCOORD2;
layout(location = 3) in highp vec4 vs_TEXCOORD3;
layout(location = 4) in highp vec4 vs_TEXCOORD4;
layout(location = 5) in highp vec4 vs_TEXCOORD6;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 7) uniform mediump  sampler sampler_BaseMap;
layout(set = 0, binding = 8) uniform mediump  sampler sampler_BumpMap;
layout(set = 0, binding = 9) uniform mediump  sampler sampler_ScreenSpaceOcclusionTexture;
layout(set = 0, binding = 10) uniform mediump  samplerShadow sampler_MainLightShadowmapTexture;
layout(set = 0, binding = 11) uniform mediump  sampler sampler_MainLightCookieTexture;
layout(set = 0, binding = 12) uniform mediump  sampler sampler_AdditionalLightsCookieAtlasTexture;
layout(set = 0, binding = 13) uniform mediump  sampler sampler_DitheringTexture;
void main()
{
vec4 u_xlat0;
bool u_xlatb0;
vec4 u_xlat1;
vec4 u_xlat2;
bool u_xlatb2;
vec3 u_xlat3;
vec3 u_xlat4;
vec4 u_xlat5;
vec4 u_xlat6;
bvec2 u_xlatb6;
vec4 u_xlat7;
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
vec4 u_xlat18;
vec3 u_xlat19;
bool u_xlatb19;
bool u_xlatb21;
vec3 u_xlat25;
vec2 u_xlat26;
float u_xlat38;
bool u_xlatb38;
vec2 u_xlat43;
vec2 u_xlat44;
int u_xlati44;
uint u_xlatu44;
bool u_xlatb44;
vec2 u_xlat45;
vec2 u_xlat46;
vec2 u_xlat47;
bvec2 u_xlatb47;
vec2 u_xlat51;
float u_xlat57;
float u_xlat59;
uint u_xlatu59;
bool u_xlatb59;
float u_xlat60;
uint u_xlatu60;
bool u_xlatb60;
float u_xlat61;
uint u_xlatu61;
bool u_xlatb61;
float u_xlat62;
int u_xlati62;
int u_xlati63;
int u_xlati64;
vec4 hlslcc_FragCoord = vec4(gl_FragCoord.xyz, 1.0/gl_FragCoord.w);
    u_xlat0 = texture(sampler2D(_BaseMap, sampler_BaseMap), vs_TEXCOORD0.xy, _GlobalMipBias.x);
    u_xlat1 = u_xlat0.wxyz * _BaseColor.wxyz;
    u_xlatb0 = u_xlat1.x>=_Cutoff;
    u_xlat0.x = u_xlatb0 ? u_xlat1.x : float(0.0);
    u_xlat19.x = u_xlat0.w * _BaseColor.w + (-_Cutoff);
    u_xlat38 = dFdxCoarse(u_xlat1.x);
    u_xlat57 = dFdyCoarse(u_xlat1.x);
    u_xlat38 = abs(u_xlat57) + abs(u_xlat38);
    u_xlat38 = max(u_xlat38, 9.99999975e-05);
    u_xlat19.x = u_xlat19.x / u_xlat38;
    u_xlat19.x = u_xlat19.x + 0.5;
    u_xlat19.x = clamp(u_xlat19.x, 0.0, 1.0);
    u_xlatb38 = _AlphaToMaskAvailable!=0.0;
    u_xlat0.x = (u_xlatb38) ? u_xlat19.x : u_xlat0.x;
    u_xlat19.x = u_xlat0.x + -9.99999975e-05;
    u_xlatb19 = u_xlat19.x<0.0;
    if(((int(u_xlatb19) * int(0xffffffffu)))!=0){discard;}
    u_xlat2.xyz = texture(sampler2D(_BumpMap, sampler_BumpMap), vs_TEXCOORD0.xy, _GlobalMipBias.x).xyw;
    u_xlat2.x = u_xlat2.x * u_xlat2.z;
    u_xlat19.xz = u_xlat2.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat1.x = dot(u_xlat19.xz, u_xlat19.xz);
    u_xlat1.x = min(u_xlat1.x, 1.0);
    u_xlat1.x = (-u_xlat1.x) + 1.0;
    u_xlat1.x = sqrt(u_xlat1.x);
    u_xlat1.x = max(u_xlat1.x, 1.00000002e-16);
    u_xlat2.xy = hlslcc_FragCoord.xy * vec2(_DitheringTextureInvSize);
    u_xlat2.x = texture(sampler2D(_DitheringTexture, sampler_DitheringTexture), u_xlat2.xy, _GlobalMipBias.x).w;
    u_xlatb21 = unity_LODFade.x>=0.0;
    u_xlat2.x = (u_xlatb21) ? abs(u_xlat2.x) : -abs(u_xlat2.x);
    u_xlat2.x = (-u_xlat2.x) + unity_LODFade.x;
    u_xlatb2 = u_xlat2.x<0.0;
    if(((int(u_xlatb2) * int(0xffffffffu)))!=0){discard;}
    u_xlat2.xyz = u_xlat19.zzz * vs_TEXCOORD4.xyz;
    u_xlat2.xyz = u_xlat19.xxx * vs_TEXCOORD3.xyz + u_xlat2.xyz;
    u_xlat2.xyz = u_xlat1.xxx * vs_TEXCOORD2.xyz + u_xlat2.xyz;
    u_xlat19.x = dot(u_xlat2.xyz, u_xlat2.xyz);
    u_xlat19.x = inversesqrt(u_xlat19.x);
    u_xlat2.xyz = u_xlat19.xxx * u_xlat2.xyz;
    u_xlat3.x = vs_TEXCOORD2.w;
    u_xlat3.y = vs_TEXCOORD3.w;
    u_xlat3.z = vs_TEXCOORD4.w;
    u_xlat19.x = dot(u_xlat3.xyz, u_xlat3.xyz);
    u_xlat19.x = max(u_xlat19.x, 1.17549435e-37);
    u_xlat19.x = inversesqrt(u_xlat19.x);
    u_xlat2.w = 1.0;
    u_xlat4.x = dot(unity_SHAr, u_xlat2);
    u_xlat4.y = dot(unity_SHAg, u_xlat2);
    u_xlat4.z = dot(unity_SHAb, u_xlat2);
    u_xlat5 = u_xlat2.yzzx * u_xlat2.xyzz;
    u_xlat6.x = dot(unity_SHBr, u_xlat5);
    u_xlat6.y = dot(unity_SHBg, u_xlat5);
    u_xlat6.z = dot(unity_SHBb, u_xlat5);
    u_xlat57 = u_xlat2.y * u_xlat2.y;
    u_xlat57 = u_xlat2.x * u_xlat2.x + (-u_xlat57);
    u_xlat5.xyz = unity_SHC.xyz * vec3(u_xlat57) + u_xlat6.xyz;
    u_xlat4.xyz = u_xlat4.xyz + u_xlat5.xyz;
    u_xlat4.xyz = max(u_xlat4.xyz, vec3(0.0, 0.0, 0.0));
    u_xlat5.xy = vec2(1.0) / vec2(_ScaledScreenParams.xy);
    u_xlat5.xy = u_xlat5.xy * hlslcc_FragCoord.xy;
    u_xlat57 = u_xlat5.y * _ScaleBiasRt.x + _ScaleBiasRt.y;
    u_xlat5.z = (-u_xlat57) + 1.0;
    u_xlat57 = texture(sampler2D(_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture), u_xlat5.xz, _GlobalMipBias.x).x;
    u_xlat1.x = u_xlat57 + -1.0;
    u_xlat1.x = _AmbientOcclusionParam.w * u_xlat1.x + 1.0;
    u_xlat57 = min(u_xlat57, 1.0);
    u_xlatb59 = 0.0<_MainLightShadowParams.y;
    if(u_xlatb59){
        u_xlatb59 = _MainLightShadowParams.y==1.0;
        if(u_xlatb59){
            u_xlat5 = vs_TEXCOORD6.xyxy + _MainLightShadowOffset0;
            vec3 txVec0 = vec3(u_xlat5.xy,vs_TEXCOORD6.z);
            u_xlat6.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec0, 0.0);
            vec3 txVec1 = vec3(u_xlat5.zw,vs_TEXCOORD6.z);
            u_xlat6.y = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec1, 0.0);
            u_xlat5 = vs_TEXCOORD6.xyxy + _MainLightShadowOffset1;
            vec3 txVec2 = vec3(u_xlat5.xy,vs_TEXCOORD6.z);
            u_xlat6.z = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec2, 0.0);
            vec3 txVec3 = vec3(u_xlat5.zw,vs_TEXCOORD6.z);
            u_xlat6.w = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec3, 0.0);
            u_xlat59 = dot(u_xlat6, vec4(0.25, 0.25, 0.25, 0.25));
        } else {
            u_xlatb60 = _MainLightShadowParams.y==2.0;
            if(u_xlatb60){
                u_xlat5.xy = vs_TEXCOORD6.xy * _MainLightShadowmapSize.zw + vec2(0.5, 0.5);
                u_xlat5.xy = floor(u_xlat5.xy);
                u_xlat43.xy = vs_TEXCOORD6.xy * _MainLightShadowmapSize.zw + (-u_xlat5.xy);
                u_xlat6 = u_xlat43.xxyy + vec4(0.5, 1.0, 0.5, 1.0);
                u_xlat7 = u_xlat6.xxzz * u_xlat6.xxzz;
                u_xlat6.xz = u_xlat7.yw * vec2(0.0799999982, 0.0799999982);
                u_xlat7.xy = u_xlat7.xz * vec2(0.5, 0.5) + (-u_xlat43.xy);
                u_xlat45.xy = (-u_xlat43.xy) + vec2(1.0, 1.0);
                u_xlat8.xy = min(u_xlat43.xy, vec2(0.0, 0.0));
                u_xlat8.xy = (-u_xlat8.xy) * u_xlat8.xy + u_xlat45.xy;
                u_xlat43.xy = max(u_xlat43.xy, vec2(0.0, 0.0));
                u_xlat43.xy = (-u_xlat43.xy) * u_xlat43.xy + u_xlat6.yw;
                u_xlat8.xy = u_xlat8.xy + vec2(1.0, 1.0);
                u_xlat43.xy = u_xlat43.xy + vec2(1.0, 1.0);
                u_xlat9.xy = u_xlat7.xy * vec2(0.159999996, 0.159999996);
                u_xlat7.xy = u_xlat45.xy * vec2(0.159999996, 0.159999996);
                u_xlat8.xy = u_xlat8.xy * vec2(0.159999996, 0.159999996);
                u_xlat10.xy = u_xlat43.xy * vec2(0.159999996, 0.159999996);
                u_xlat43.xy = u_xlat6.yw * vec2(0.159999996, 0.159999996);
                u_xlat9.z = u_xlat8.x;
                u_xlat9.w = u_xlat43.x;
                u_xlat7.z = u_xlat10.x;
                u_xlat7.w = u_xlat6.x;
                u_xlat11 = u_xlat7.zwxz + u_xlat9.zwxz;
                u_xlat8.z = u_xlat9.y;
                u_xlat8.w = u_xlat43.y;
                u_xlat10.z = u_xlat7.y;
                u_xlat10.w = u_xlat6.z;
                u_xlat6.xyz = u_xlat8.zyw + u_xlat10.zyw;
                u_xlat7.xyz = u_xlat7.xzw / u_xlat11.zwy;
                u_xlat7.xyz = u_xlat7.xyz + vec3(-2.5, -0.5, 1.5);
                u_xlat8.xyz = u_xlat10.zyw / u_xlat6.xyz;
                u_xlat8.xyz = u_xlat8.xyz + vec3(-2.5, -0.5, 1.5);
                u_xlat7.xyz = u_xlat7.yxz * _MainLightShadowmapSize.xxx;
                u_xlat8.xyz = u_xlat8.xyz * _MainLightShadowmapSize.yyy;
                u_xlat7.w = u_xlat8.x;
                u_xlat9 = u_xlat5.xyxy * _MainLightShadowmapSize.xyxy + u_xlat7.ywxw;
                u_xlat43.xy = u_xlat5.xy * _MainLightShadowmapSize.xy + u_xlat7.zw;
                u_xlat8.w = u_xlat7.y;
                u_xlat7.yw = u_xlat8.yz;
                u_xlat10 = u_xlat5.xyxy * _MainLightShadowmapSize.xyxy + u_xlat7.xyzy;
                u_xlat8 = u_xlat5.xyxy * _MainLightShadowmapSize.xyxy + u_xlat8.wywz;
                u_xlat7 = u_xlat5.xyxy * _MainLightShadowmapSize.xyxy + u_xlat7.xwzw;
                u_xlat12 = u_xlat6.xxxy * u_xlat11.zwyz;
                u_xlat13 = u_xlat6.yyzz * u_xlat11;
                u_xlat60 = u_xlat6.z * u_xlat11.y;
                vec3 txVec4 = vec3(u_xlat9.xy,vs_TEXCOORD6.z);
                u_xlat61 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec4, 0.0);
                vec3 txVec5 = vec3(u_xlat9.zw,vs_TEXCOORD6.z);
                u_xlat5.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec5, 0.0);
                u_xlat5.x = u_xlat5.x * u_xlat12.y;
                u_xlat61 = u_xlat12.x * u_xlat61 + u_xlat5.x;
                vec3 txVec6 = vec3(u_xlat43.xy,vs_TEXCOORD6.z);
                u_xlat5.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec6, 0.0);
                u_xlat61 = u_xlat12.z * u_xlat5.x + u_xlat61;
                vec3 txVec7 = vec3(u_xlat8.xy,vs_TEXCOORD6.z);
                u_xlat5.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec7, 0.0);
                u_xlat61 = u_xlat12.w * u_xlat5.x + u_xlat61;
                vec3 txVec8 = vec3(u_xlat10.xy,vs_TEXCOORD6.z);
                u_xlat5.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec8, 0.0);
                u_xlat61 = u_xlat13.x * u_xlat5.x + u_xlat61;
                vec3 txVec9 = vec3(u_xlat10.zw,vs_TEXCOORD6.z);
                u_xlat5.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec9, 0.0);
                u_xlat61 = u_xlat13.y * u_xlat5.x + u_xlat61;
                vec3 txVec10 = vec3(u_xlat8.zw,vs_TEXCOORD6.z);
                u_xlat5.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec10, 0.0);
                u_xlat61 = u_xlat13.z * u_xlat5.x + u_xlat61;
                vec3 txVec11 = vec3(u_xlat7.xy,vs_TEXCOORD6.z);
                u_xlat5.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec11, 0.0);
                u_xlat61 = u_xlat13.w * u_xlat5.x + u_xlat61;
                vec3 txVec12 = vec3(u_xlat7.zw,vs_TEXCOORD6.z);
                u_xlat5.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec12, 0.0);
                u_xlat59 = u_xlat60 * u_xlat5.x + u_xlat61;
            } else {
                u_xlat5.xy = vs_TEXCOORD6.xy * _MainLightShadowmapSize.zw + vec2(0.5, 0.5);
                u_xlat5.xy = floor(u_xlat5.xy);
                u_xlat43.xy = vs_TEXCOORD6.xy * _MainLightShadowmapSize.zw + (-u_xlat5.xy);
                u_xlat6 = u_xlat43.xxyy + vec4(0.5, 1.0, 0.5, 1.0);
                u_xlat7 = u_xlat6.xxzz * u_xlat6.xxzz;
                u_xlat8.yw = u_xlat7.yw * vec2(0.0408160016, 0.0408160016);
                u_xlat6.xz = u_xlat7.xz * vec2(0.5, 0.5) + (-u_xlat43.xy);
                u_xlat7.xy = (-u_xlat43.xy) + vec2(1.0, 1.0);
                u_xlat45.xy = min(u_xlat43.xy, vec2(0.0, 0.0));
                u_xlat7.xy = (-u_xlat45.xy) * u_xlat45.xy + u_xlat7.xy;
                u_xlat45.xy = max(u_xlat43.xy, vec2(0.0, 0.0));
                u_xlat25.xz = (-u_xlat45.xy) * u_xlat45.xy + u_xlat6.yw;
                u_xlat7.xy = u_xlat7.xy + vec2(2.0, 2.0);
                u_xlat6.yw = u_xlat25.xz + vec2(2.0, 2.0);
                u_xlat9.z = u_xlat6.y * 0.0816320032;
                u_xlat10.xyz = u_xlat6.zxw * vec3(0.0816320032, 0.0816320032, 0.0816320032);
                u_xlat6.xy = u_xlat7.xy * vec2(0.0816320032, 0.0816320032);
                u_xlat9.x = u_xlat10.y;
                u_xlat9.yw = u_xlat43.xx * vec2(-0.0816320032, 0.0816320032) + vec2(0.163264006, 0.0816320032);
                u_xlat7.xz = u_xlat43.xx * vec2(-0.0816320032, 0.0816320032) + vec2(0.0816320032, 0.163264006);
                u_xlat7.y = u_xlat6.x;
                u_xlat7.w = u_xlat8.y;
                u_xlat9 = u_xlat7 + u_xlat9;
                u_xlat10.yw = u_xlat43.yy * vec2(-0.0816320032, 0.0816320032) + vec2(0.163264006, 0.0816320032);
                u_xlat8.xz = u_xlat43.yy * vec2(-0.0816320032, 0.0816320032) + vec2(0.0816320032, 0.163264006);
                u_xlat8.y = u_xlat6.y;
                u_xlat6 = u_xlat8 + u_xlat10;
                u_xlat7 = u_xlat7 / u_xlat9;
                u_xlat7 = u_xlat7 + vec4(-3.5, -1.5, 0.5, 2.5);
                u_xlat8 = u_xlat8 / u_xlat6;
                u_xlat8 = u_xlat8 + vec4(-3.5, -1.5, 0.5, 2.5);
                u_xlat7 = u_xlat7.wxyz * _MainLightShadowmapSize.xxxx;
                u_xlat8 = u_xlat8.xwyz * _MainLightShadowmapSize.yyyy;
                u_xlat10.xzw = u_xlat7.yzw;
                u_xlat10.y = u_xlat8.x;
                u_xlat11 = u_xlat5.xyxy * _MainLightShadowmapSize.xyxy + u_xlat10.xyzy;
                u_xlat43.xy = u_xlat5.xy * _MainLightShadowmapSize.xy + u_xlat10.wy;
                u_xlat7.y = u_xlat10.y;
                u_xlat10.y = u_xlat8.z;
                u_xlat12 = u_xlat5.xyxy * _MainLightShadowmapSize.xyxy + u_xlat10.xyzy;
                u_xlat13.xy = u_xlat5.xy * _MainLightShadowmapSize.xy + u_xlat10.wy;
                u_xlat7.z = u_xlat10.y;
                u_xlat14 = u_xlat5.xyxy * _MainLightShadowmapSize.xyxy + u_xlat7.xyxz;
                u_xlat10.y = u_xlat8.w;
                u_xlat15 = u_xlat5.xyxy * _MainLightShadowmapSize.xyxy + u_xlat10.xyzy;
                u_xlat26.xy = u_xlat5.xy * _MainLightShadowmapSize.xy + u_xlat10.wy;
                u_xlat7.w = u_xlat10.y;
                u_xlat51.xy = u_xlat5.xy * _MainLightShadowmapSize.xy + u_xlat7.xw;
                u_xlat8.xzw = u_xlat10.xzw;
                u_xlat10 = u_xlat5.xyxy * _MainLightShadowmapSize.xyxy + u_xlat8.xyzy;
                u_xlat46.xy = u_xlat5.xy * _MainLightShadowmapSize.xy + u_xlat8.wy;
                u_xlat8.x = u_xlat7.x;
                u_xlat5.xy = u_xlat5.xy * _MainLightShadowmapSize.xy + u_xlat8.xy;
                u_xlat16 = u_xlat6.xxxx * u_xlat9;
                u_xlat17 = u_xlat6.yyyy * u_xlat9;
                u_xlat18 = u_xlat6.zzzz * u_xlat9;
                u_xlat6 = u_xlat6.wwww * u_xlat9;
                vec3 txVec13 = vec3(u_xlat11.xy,vs_TEXCOORD6.z);
                u_xlat60 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec13, 0.0);
                vec3 txVec14 = vec3(u_xlat11.zw,vs_TEXCOORD6.z);
                u_xlat61 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec14, 0.0);
                u_xlat61 = u_xlat61 * u_xlat16.y;
                u_xlat60 = u_xlat16.x * u_xlat60 + u_xlat61;
                vec3 txVec15 = vec3(u_xlat43.xy,vs_TEXCOORD6.z);
                u_xlat61 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec15, 0.0);
                u_xlat60 = u_xlat16.z * u_xlat61 + u_xlat60;
                vec3 txVec16 = vec3(u_xlat14.xy,vs_TEXCOORD6.z);
                u_xlat61 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec16, 0.0);
                u_xlat60 = u_xlat16.w * u_xlat61 + u_xlat60;
                vec3 txVec17 = vec3(u_xlat12.xy,vs_TEXCOORD6.z);
                u_xlat61 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec17, 0.0);
                u_xlat60 = u_xlat17.x * u_xlat61 + u_xlat60;
                vec3 txVec18 = vec3(u_xlat12.zw,vs_TEXCOORD6.z);
                u_xlat61 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec18, 0.0);
                u_xlat60 = u_xlat17.y * u_xlat61 + u_xlat60;
                vec3 txVec19 = vec3(u_xlat13.xy,vs_TEXCOORD6.z);
                u_xlat61 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec19, 0.0);
                u_xlat60 = u_xlat17.z * u_xlat61 + u_xlat60;
                vec3 txVec20 = vec3(u_xlat14.zw,vs_TEXCOORD6.z);
                u_xlat61 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec20, 0.0);
                u_xlat60 = u_xlat17.w * u_xlat61 + u_xlat60;
                vec3 txVec21 = vec3(u_xlat15.xy,vs_TEXCOORD6.z);
                u_xlat61 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec21, 0.0);
                u_xlat60 = u_xlat18.x * u_xlat61 + u_xlat60;
                vec3 txVec22 = vec3(u_xlat15.zw,vs_TEXCOORD6.z);
                u_xlat61 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec22, 0.0);
                u_xlat60 = u_xlat18.y * u_xlat61 + u_xlat60;
                vec3 txVec23 = vec3(u_xlat26.xy,vs_TEXCOORD6.z);
                u_xlat61 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec23, 0.0);
                u_xlat60 = u_xlat18.z * u_xlat61 + u_xlat60;
                vec3 txVec24 = vec3(u_xlat51.xy,vs_TEXCOORD6.z);
                u_xlat61 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec24, 0.0);
                u_xlat60 = u_xlat18.w * u_xlat61 + u_xlat60;
                vec3 txVec25 = vec3(u_xlat10.xy,vs_TEXCOORD6.z);
                u_xlat61 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec25, 0.0);
                u_xlat60 = u_xlat6.x * u_xlat61 + u_xlat60;
                vec3 txVec26 = vec3(u_xlat10.zw,vs_TEXCOORD6.z);
                u_xlat61 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec26, 0.0);
                u_xlat60 = u_xlat6.y * u_xlat61 + u_xlat60;
                vec3 txVec27 = vec3(u_xlat46.xy,vs_TEXCOORD6.z);
                u_xlat61 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec27, 0.0);
                u_xlat60 = u_xlat6.z * u_xlat61 + u_xlat60;
                vec3 txVec28 = vec3(u_xlat5.xy,vs_TEXCOORD6.z);
                u_xlat61 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec28, 0.0);
                u_xlat59 = u_xlat6.w * u_xlat61 + u_xlat60;
            }
        }
    } else {
        vec3 txVec29 = vec3(vs_TEXCOORD6.xy,vs_TEXCOORD6.z);
        u_xlat59 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec29, 0.0);
    }
    u_xlat60 = (-_MainLightShadowParams.x) + 1.0;
    u_xlat59 = u_xlat59 * _MainLightShadowParams.x + u_xlat60;
    u_xlatb60 = 0.0>=vs_TEXCOORD6.z;
    u_xlatb61 = vs_TEXCOORD6.z>=1.0;
    u_xlatb60 = u_xlatb60 || u_xlatb61;
    u_xlat59 = (u_xlatb60) ? 1.0 : u_xlat59;
    u_xlat5.xyz = vs_TEXCOORD1.xyz + (-_WorldSpaceCameraPos.xyz);
    u_xlat60 = dot(u_xlat5.xyz, u_xlat5.xyz);
    u_xlat60 = u_xlat60 * _MainLightShadowParams.z + _MainLightShadowParams.w;
    u_xlat60 = clamp(u_xlat60, 0.0, 1.0);
    u_xlat61 = (-u_xlat59) + 1.0;
    u_xlat59 = u_xlat60 * u_xlat61 + u_xlat59;
    u_xlatb60 = _MainLightCookieTextureFormat!=-1.0;
    if(u_xlatb60){
        u_xlat5.xy = vs_TEXCOORD1.yy * _MainLightWorldToLight[1].xy;
        u_xlat5.xy = _MainLightWorldToLight[0].xy * vs_TEXCOORD1.xx + u_xlat5.xy;
        u_xlat5.xy = _MainLightWorldToLight[2].xy * vs_TEXCOORD1.zz + u_xlat5.xy;
        u_xlat5.xy = u_xlat5.xy + _MainLightWorldToLight[3].xy;
        u_xlat5.xy = u_xlat5.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
        u_xlat5 = texture(sampler2D(_MainLightCookieTexture, sampler_MainLightCookieTexture), u_xlat5.xy, _GlobalMipBias.x);
        u_xlatb6.xy = equal(vec4(vec4(_MainLightCookieTextureFormat, _MainLightCookieTextureFormat, _MainLightCookieTextureFormat, _MainLightCookieTextureFormat)), vec4(0.0, 1.0, 0.0, 0.0)).xy;
        u_xlat60 = (u_xlatb6.y) ? u_xlat5.w : u_xlat5.x;
        u_xlat5.xyz = (u_xlatb6.x) ? u_xlat5.xyz : vec3(u_xlat60);
    } else {
        u_xlat5.x = float(1.0);
        u_xlat5.y = float(1.0);
        u_xlat5.z = float(1.0);
    }
    u_xlat5.xyz = u_xlat5.xyz * _MainLightColor.xyz;
    u_xlat5.xyz = u_xlat1.xxx * u_xlat5.xyz;
    u_xlat4.xyz = vec3(u_xlat57) * u_xlat4.xyz;
    u_xlat57 = u_xlat59 * unity_LightData.z;
    u_xlat5.xyz = vec3(u_xlat57) * u_xlat5.xyz;
    u_xlat57 = dot(u_xlat2.xyz, _MainLightPosition.xyz);
    u_xlat57 = clamp(u_xlat57, 0.0, 1.0);
    u_xlat6.xyz = vec3(u_xlat57) * u_xlat5.xyz;
    u_xlat57 = _SpecColor.w * 10.0 + 1.0;
    u_xlat57 = exp2(u_xlat57);
    u_xlat7.xyz = u_xlat3.xyz * u_xlat19.xxx + _MainLightPosition.xyz;
    u_xlat59 = dot(u_xlat7.xyz, u_xlat7.xyz);
    u_xlat59 = max(u_xlat59, 1.17549435e-37);
    u_xlat59 = inversesqrt(u_xlat59);
    u_xlat7.xyz = vec3(u_xlat59) * u_xlat7.xyz;
    u_xlat59 = dot(u_xlat2.xyz, u_xlat7.xyz);
    u_xlat59 = clamp(u_xlat59, 0.0, 1.0);
    u_xlat59 = log2(u_xlat59);
    u_xlat59 = u_xlat57 * u_xlat59;
    u_xlat59 = exp2(u_xlat59);
    u_xlat7.xyz = vec3(u_xlat59) * _SpecColor.xyz;
    u_xlat5.xyz = u_xlat5.xyz * u_xlat7.xyz;
    u_xlat5.xyz = u_xlat6.xyz * u_xlat1.yzw + u_xlat5.xyz;
    u_xlat59 = min(_AdditionalLightsCount.x, unity_LightData.y);
    u_xlatu59 =  uint(int(u_xlat59));
    u_xlatb6.xy = equal(vec4(vec4(_AdditionalLightsCookieAtlasTextureFormat, _AdditionalLightsCookieAtlasTextureFormat, _AdditionalLightsCookieAtlasTextureFormat, _AdditionalLightsCookieAtlasTextureFormat)), vec4(0.0, 1.0, 0.0, 0.0)).xy;
    u_xlat7.x = float(0.0);
    u_xlat7.y = float(0.0);
    u_xlat7.z = float(0.0);
    for(uint u_xlatu_loop_1 = 0u ; u_xlatu_loop_1<u_xlatu59 ; u_xlatu_loop_1++)
    {
        u_xlatu61 = u_xlatu_loop_1 >> (2u & uint(0x1F));
        u_xlati62 = int(u_xlatu_loop_1 & 3u);
        u_xlat61 = dot(unity_LightIndices[int(u_xlatu61)], uintBitsToFloat(ImmCB_0[u_xlati62]));
        u_xlatu61 =  uint(int(u_xlat61));
        u_xlat8.xyz = (-vs_TEXCOORD1.xyz) * _AdditionalLightsPosition[int(u_xlatu61)].www + _AdditionalLightsPosition[int(u_xlatu61)].xyz;
        u_xlat62 = dot(u_xlat8.xyz, u_xlat8.xyz);
        u_xlat62 = max(u_xlat62, 6.10351562e-05);
        u_xlat44.x = inversesqrt(u_xlat62);
        u_xlat8.xyz = u_xlat44.xxx * u_xlat8.xyz;
        u_xlat44.x = float(1.0) / float(u_xlat62);
        u_xlat62 = u_xlat62 * _AdditionalLightsAttenuation[int(u_xlatu61)].x;
        u_xlat62 = (-u_xlat62) * u_xlat62 + 1.0;
        u_xlat62 = max(u_xlat62, 0.0);
        u_xlat62 = u_xlat62 * u_xlat62;
        u_xlat62 = u_xlat62 * u_xlat44.x;
        u_xlat44.x = dot(_AdditionalLightsSpotDir[int(u_xlatu61)].xyz, u_xlat8.xyz);
        u_xlat44.x = u_xlat44.x * _AdditionalLightsAttenuation[int(u_xlatu61)].z + _AdditionalLightsAttenuation[int(u_xlatu61)].w;
        u_xlat44.x = clamp(u_xlat44.x, 0.0, 1.0);
        u_xlat44.x = u_xlat44.x * u_xlat44.x;
        u_xlat62 = u_xlat62 * u_xlat44.x;
        u_xlatu44 = u_xlatu61 >> (5u & uint(0x1F));
        u_xlati63 = 1 << (int(u_xlatu61) & int(0x1F));
        u_xlati44 = int(uint(u_xlati63) & floatBitsToUint(_AdditionalLightsCookieEnableBits[int(u_xlatu44)]));
        if(u_xlati44 != 0) {
            u_xlati44 = int(_AdditionalLightsLightTypes[int(u_xlatu61)]);
            u_xlati63 = (u_xlati44 != 0) ? 0 : 1;
            u_xlati64 = int(u_xlatu61) << (2 & int(0x1F));
            if(u_xlati63 != 0) {
                u_xlat9.xyz = vs_TEXCOORD1.yyy * _AdditionalLightsWorldToLights[(u_xlati64 + 1) / 4][(u_xlati64 + 1) % 4].xyw;
                u_xlat9.xyz = _AdditionalLightsWorldToLights[u_xlati64 / 4][u_xlati64 % 4].xyw * vs_TEXCOORD1.xxx + u_xlat9.xyz;
                u_xlat9.xyz = _AdditionalLightsWorldToLights[(u_xlati64 + 2) / 4][(u_xlati64 + 2) % 4].xyw * vs_TEXCOORD1.zzz + u_xlat9.xyz;
                u_xlat9.xyz = u_xlat9.xyz + _AdditionalLightsWorldToLights[(u_xlati64 + 3) / 4][(u_xlati64 + 3) % 4].xyw;
                u_xlat9.xy = u_xlat9.xy / u_xlat9.zz;
                u_xlat9.xy = u_xlat9.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
                u_xlat9.xy = clamp(u_xlat9.xy, 0.0, 1.0);
                u_xlat9.xy = _AdditionalLightsCookieAtlasUVRects[int(u_xlatu61)].xy * u_xlat9.xy + _AdditionalLightsCookieAtlasUVRects[int(u_xlatu61)].zw;
            } else {
                u_xlatb44 = u_xlati44==1;
                u_xlati44 = u_xlatb44 ? 1 : int(0);
                if(u_xlati44 != 0) {
                    u_xlat44.xy = vs_TEXCOORD1.yy * _AdditionalLightsWorldToLights[(u_xlati64 + 1) / 4][(u_xlati64 + 1) % 4].xy;
                    u_xlat44.xy = _AdditionalLightsWorldToLights[u_xlati64 / 4][u_xlati64 % 4].xy * vs_TEXCOORD1.xx + u_xlat44.xy;
                    u_xlat44.xy = _AdditionalLightsWorldToLights[(u_xlati64 + 2) / 4][(u_xlati64 + 2) % 4].xy * vs_TEXCOORD1.zz + u_xlat44.xy;
                    u_xlat44.xy = u_xlat44.xy + _AdditionalLightsWorldToLights[(u_xlati64 + 3) / 4][(u_xlati64 + 3) % 4].xy;
                    u_xlat44.xy = u_xlat44.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
                    u_xlat44.xy = fract(u_xlat44.xy);
                    u_xlat9.xy = _AdditionalLightsCookieAtlasUVRects[int(u_xlatu61)].xy * u_xlat44.xy + _AdditionalLightsCookieAtlasUVRects[int(u_xlatu61)].zw;
                } else {
                    u_xlat10 = vs_TEXCOORD1.yyyy * _AdditionalLightsWorldToLights[(u_xlati64 + 1) / 4][(u_xlati64 + 1) % 4];
                    u_xlat10 = _AdditionalLightsWorldToLights[u_xlati64 / 4][u_xlati64 % 4] * vs_TEXCOORD1.xxxx + u_xlat10;
                    u_xlat10 = _AdditionalLightsWorldToLights[(u_xlati64 + 2) / 4][(u_xlati64 + 2) % 4] * vs_TEXCOORD1.zzzz + u_xlat10;
                    u_xlat10 = u_xlat10 + _AdditionalLightsWorldToLights[(u_xlati64 + 3) / 4][(u_xlati64 + 3) % 4];
                    u_xlat10.xyz = u_xlat10.xyz / u_xlat10.www;
                    u_xlat44.x = dot(u_xlat10.xyz, u_xlat10.xyz);
                    u_xlat44.x = inversesqrt(u_xlat44.x);
                    u_xlat10.xyz = u_xlat44.xxx * u_xlat10.xyz;
                    u_xlat44.x = dot(abs(u_xlat10.xyz), vec3(1.0, 1.0, 1.0));
                    u_xlat44.x = max(u_xlat44.x, 9.99999997e-07);
                    u_xlat44.x = float(1.0) / float(u_xlat44.x);
                    u_xlat11.xyz = u_xlat44.xxx * u_xlat10.zxy;
                    u_xlat11.x = (-u_xlat11.x);
                    u_xlat11.x = clamp(u_xlat11.x, 0.0, 1.0);
                    u_xlatb47.xy = greaterThanEqual(u_xlat11.yzyz, vec4(0.0, 0.0, 0.0, 0.0)).xy;
                    u_xlat47.x = (u_xlatb47.x) ? u_xlat11.x : (-u_xlat11.x);
                    u_xlat47.y = (u_xlatb47.y) ? u_xlat11.x : (-u_xlat11.x);
                    u_xlat44.xy = u_xlat10.xy * u_xlat44.xx + u_xlat47.xy;
                    u_xlat44.xy = u_xlat44.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
                    u_xlat44.xy = clamp(u_xlat44.xy, 0.0, 1.0);
                    u_xlat9.xy = _AdditionalLightsCookieAtlasUVRects[int(u_xlatu61)].xy * u_xlat44.xy + _AdditionalLightsCookieAtlasUVRects[int(u_xlatu61)].zw;
                }
            }
            u_xlat9 = texture(sampler2D(_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture), u_xlat9.xy, _GlobalMipBias.x);
            u_xlat44.x = (u_xlatb6.y) ? u_xlat9.w : u_xlat9.x;
            u_xlat9.xyz = (u_xlatb6.x) ? u_xlat9.xyz : u_xlat44.xxx;
        } else {
            u_xlat9.x = float(1.0);
            u_xlat9.y = float(1.0);
            u_xlat9.z = float(1.0);
        }
        u_xlat9.xyz = u_xlat9.xyz * _AdditionalLightsColor[int(u_xlatu61)].xyz;
        u_xlat9.xyz = u_xlat1.xxx * u_xlat9.xyz;
        u_xlat9.xyz = vec3(u_xlat62) * u_xlat9.xyz;
        u_xlat61 = dot(u_xlat2.xyz, u_xlat8.xyz);
        u_xlat61 = clamp(u_xlat61, 0.0, 1.0);
        u_xlat10.xyz = vec3(u_xlat61) * u_xlat9.xyz;
        u_xlat8.xyz = u_xlat3.xyz * u_xlat19.xxx + u_xlat8.xyz;
        u_xlat61 = dot(u_xlat8.xyz, u_xlat8.xyz);
        u_xlat61 = max(u_xlat61, 1.17549435e-37);
        u_xlat61 = inversesqrt(u_xlat61);
        u_xlat8.xyz = vec3(u_xlat61) * u_xlat8.xyz;
        u_xlat61 = dot(u_xlat2.xyz, u_xlat8.xyz);
        u_xlat61 = clamp(u_xlat61, 0.0, 1.0);
        u_xlat61 = log2(u_xlat61);
        u_xlat61 = u_xlat57 * u_xlat61;
        u_xlat61 = exp2(u_xlat61);
        u_xlat8.xyz = vec3(u_xlat61) * _SpecColor.xyz;
        u_xlat8.xyz = u_xlat8.xyz * u_xlat9.xyz;
        u_xlat8.xyz = u_xlat10.xyz * u_xlat1.yzw + u_xlat8.xyz;
        u_xlat7.xyz = u_xlat7.xyz + u_xlat8.xyz;
    }
    u_xlat1.xyz = u_xlat4.xyz * u_xlat1.yzw + u_xlat5.xyz;
    SV_Target0.xyz = u_xlat7.xyz + u_xlat1.xyz;
    u_xlatb19 = _Surface==1.0;
    u_xlatb19 = u_xlatb19 || u_xlatb38;
    SV_Target0.w = (u_xlatb19) ? u_xlat0.x : 1.0;
    return;
}

