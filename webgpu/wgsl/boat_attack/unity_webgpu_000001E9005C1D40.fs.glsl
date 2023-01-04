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
	vec4 _MainTex_ST;
	vec4 _BaseColor;
	vec4 _SpecColor;
	vec4 _EmissionColor;
	float _Cutoff;
	float _Shininess;
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
layout(set = 0, binding = 0) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 1) uniform mediump texture2D _ScreenSpaceOcclusionTexture;
layout(set = 0, binding = 2) uniform mediump texture2D _MainLightShadowmapTexture;
layout(set = 0, binding = 3) uniform mediump texture2D _MainLightCookieTexture;
layout(set = 0, binding = 4) uniform mediump texture2D _AdditionalLightsCookieAtlasTexture;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 1) in highp vec4 vs_TEXCOORD2;
layout(location = 2) in highp vec3 vs_TEXCOORD3;
layout(location = 3) in highp vec4 vs_TEXCOORD6;
layout(location = 4) in highp vec4 vs_TEXCOORD7;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 5) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 6) uniform mediump  sampler sampler_ScreenSpaceOcclusionTexture;
layout(set = 0, binding = 7) uniform mediump  samplerShadow sampler_MainLightShadowmapTexture;
layout(set = 0, binding = 8) uniform mediump  sampler sampler_MainLightCookieTexture;
layout(set = 0, binding = 9) uniform mediump  sampler sampler_AdditionalLightsCookieAtlasTexture;
void main()
{
vec4 u_xlat0;
uint u_xlatu0;
bool u_xlatb0;
vec4 u_xlat1;
vec4 u_xlat2;
vec3 u_xlat3;
vec4 u_xlat4;
vec3 u_xlat5;
bvec2 u_xlatb5;
vec3 u_xlat6;
vec3 u_xlat7;
vec4 u_xlat8;
vec4 u_xlat9;
vec3 u_xlat10;
float u_xlat11;
float u_xlat22;
bool u_xlatb22;
vec2 u_xlat27;
int u_xlati27;
bvec2 u_xlatb27;
vec2 u_xlat30;
float u_xlat33;
float u_xlat34;
uint u_xlatu34;
float u_xlat35;
uint u_xlatu35;
bool u_xlatb35;
float u_xlat36;
int u_xlati36;
bool u_xlatb36;
float u_xlat37;
int u_xlati37;
uint u_xlatu37;
bool u_xlatb37;
int u_xlati38;
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
    u_xlat2.w = 1.0;
    u_xlat3.x = dot(unity_SHAr, u_xlat2);
    u_xlat3.y = dot(unity_SHAg, u_xlat2);
    u_xlat3.z = dot(unity_SHAb, u_xlat2);
    u_xlat4 = u_xlat2.yzzx * u_xlat2.xyzz;
    u_xlat5.x = dot(unity_SHBr, u_xlat4);
    u_xlat5.y = dot(unity_SHBg, u_xlat4);
    u_xlat5.z = dot(unity_SHBb, u_xlat4);
    u_xlat0.x = u_xlat2.y * u_xlat2.y;
    u_xlat0.x = u_xlat2.x * u_xlat2.x + (-u_xlat0.x);
    u_xlat4.xyz = unity_SHC.xyz * u_xlat0.xxx + u_xlat5.xyz;
    u_xlat3.xyz = u_xlat3.xyz + u_xlat4.xyz;
    u_xlat3.xyz = max(u_xlat3.xyz, vec3(0.0, 0.0, 0.0));
    u_xlat0.xw = vec2(1.0) / vec2(_ScaledScreenParams.xy);
    u_xlat4.xy = u_xlat0.xw * hlslcc_FragCoord.xy;
    u_xlat0.x = u_xlat4.y * _ScaleBiasRt.x + _ScaleBiasRt.y;
    u_xlat4.z = (-u_xlat0.x) + 1.0;
    u_xlat0.x = texture(sampler2D(_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture), u_xlat4.xz, _GlobalMipBias.x).x;
    u_xlat33 = u_xlat0.x + -1.0;
    u_xlat33 = _AmbientOcclusionParam.w * u_xlat33 + 1.0;
    u_xlat0.x = min(u_xlat0.x, 1.0);
    vec3 txVec0 = vec3(vs_TEXCOORD6.xy,vs_TEXCOORD6.z);
    u_xlat34 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec0, 0.0);
    u_xlat35 = (-_MainLightShadowParams.x) + 1.0;
    u_xlat34 = u_xlat34 * _MainLightShadowParams.x + u_xlat35;
    u_xlatb35 = 0.0>=vs_TEXCOORD6.z;
    u_xlatb36 = vs_TEXCOORD6.z>=1.0;
    u_xlatb35 = u_xlatb35 || u_xlatb36;
    u_xlat34 = (u_xlatb35) ? 1.0 : u_xlat34;
    u_xlat4.xyz = vs_TEXCOORD2.xyz + (-_WorldSpaceCameraPos.xyz);
    u_xlat35 = dot(u_xlat4.xyz, u_xlat4.xyz);
    u_xlat35 = u_xlat35 * _MainLightShadowParams.z + _MainLightShadowParams.w;
    u_xlat35 = clamp(u_xlat35, 0.0, 1.0);
    u_xlat36 = (-u_xlat34) + 1.0;
    u_xlat34 = u_xlat35 * u_xlat36 + u_xlat34;
    u_xlatb35 = _MainLightCookieTextureFormat!=-1.0;
    if(u_xlatb35){
        u_xlat4.xy = vs_TEXCOORD2.yy * _MainLightWorldToLight[1].xy;
        u_xlat4.xy = _MainLightWorldToLight[0].xy * vs_TEXCOORD2.xx + u_xlat4.xy;
        u_xlat4.xy = _MainLightWorldToLight[2].xy * vs_TEXCOORD2.zz + u_xlat4.xy;
        u_xlat4.xy = u_xlat4.xy + _MainLightWorldToLight[3].xy;
        u_xlat4.xy = u_xlat4.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
        u_xlat4 = texture(sampler2D(_MainLightCookieTexture, sampler_MainLightCookieTexture), u_xlat4.xy, _GlobalMipBias.x);
        u_xlatb5.xy = equal(vec4(vec4(_MainLightCookieTextureFormat, _MainLightCookieTextureFormat, _MainLightCookieTextureFormat, _MainLightCookieTextureFormat)), vec4(0.0, 1.0, 0.0, 0.0)).xy;
        u_xlat35 = (u_xlatb5.y) ? u_xlat4.w : u_xlat4.x;
        u_xlat4.xyz = (u_xlatb5.x) ? u_xlat4.xyz : vec3(u_xlat35);
    } else {
        u_xlat4.x = float(1.0);
        u_xlat4.y = float(1.0);
        u_xlat4.z = float(1.0);
    }
    u_xlat4.xyz = u_xlat4.xyz * _MainLightColor.xyz;
    u_xlat4.xyz = vec3(u_xlat33) * u_xlat4.xyz;
    u_xlat3.xyz = u_xlat0.xxx * u_xlat3.xyz;
    u_xlat0.x = u_xlat34 * unity_LightData.z;
    u_xlat4.xyz = u_xlat0.xxx * u_xlat4.xyz;
    u_xlat0.x = dot(u_xlat2.xyz, _MainLightPosition.xyz);
    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
    u_xlat4.xyz = u_xlat0.xxx * u_xlat4.xyz;
    u_xlat4.xyz = u_xlat1.xyz * u_xlat4.xyz;
    u_xlat0.x = min(_AdditionalLightsCount.x, unity_LightData.y);
    u_xlatu0 =  uint(int(u_xlat0.x));
    u_xlatb5.xy = equal(vec4(vec4(_AdditionalLightsCookieAtlasTextureFormat, _AdditionalLightsCookieAtlasTextureFormat, _AdditionalLightsCookieAtlasTextureFormat, _AdditionalLightsCookieAtlasTextureFormat)), vec4(0.0, 1.0, 0.0, 0.0)).xy;
    u_xlat6.x = float(0.0);
    u_xlat6.y = float(0.0);
    u_xlat6.z = float(0.0);
    for(uint u_xlatu_loop_1 = 0u ; u_xlatu_loop_1<u_xlatu0 ; u_xlatu_loop_1++)
    {
        u_xlatu35 = u_xlatu_loop_1 >> (2u & uint(0x1F));
        u_xlati36 = int(u_xlatu_loop_1 & 3u);
        u_xlat35 = dot(unity_LightIndices[int(u_xlatu35)], uintBitsToFloat(ImmCB_0[u_xlati36]));
        u_xlatu35 =  uint(int(u_xlat35));
        u_xlat7.xyz = (-vs_TEXCOORD2.xyz) * _AdditionalLightsPosition[int(u_xlatu35)].www + _AdditionalLightsPosition[int(u_xlatu35)].xyz;
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
                u_xlat8.xyz = vs_TEXCOORD2.yyy * _AdditionalLightsWorldToLights[(u_xlati38 + 1) / 4][(u_xlati38 + 1) % 4].xyw;
                u_xlat8.xyz = _AdditionalLightsWorldToLights[u_xlati38 / 4][u_xlati38 % 4].xyw * vs_TEXCOORD2.xxx + u_xlat8.xyz;
                u_xlat8.xyz = _AdditionalLightsWorldToLights[(u_xlati38 + 2) / 4][(u_xlati38 + 2) % 4].xyw * vs_TEXCOORD2.zzz + u_xlat8.xyz;
                u_xlat8.xyz = u_xlat8.xyz + _AdditionalLightsWorldToLights[(u_xlati38 + 3) / 4][(u_xlati38 + 3) % 4].xyw;
                u_xlat8.xy = u_xlat8.xy / u_xlat8.zz;
                u_xlat8.xy = u_xlat8.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
                u_xlat8.xy = clamp(u_xlat8.xy, 0.0, 1.0);
                u_xlat8.xy = _AdditionalLightsCookieAtlasUVRects[int(u_xlatu35)].xy * u_xlat8.xy + _AdditionalLightsCookieAtlasUVRects[int(u_xlatu35)].zw;
            } else {
                u_xlatb37 = u_xlati37==1;
                u_xlati37 = u_xlatb37 ? 1 : int(0);
                if(u_xlati37 != 0) {
                    u_xlat30.xy = vs_TEXCOORD2.yy * _AdditionalLightsWorldToLights[(u_xlati38 + 1) / 4][(u_xlati38 + 1) % 4].xy;
                    u_xlat30.xy = _AdditionalLightsWorldToLights[u_xlati38 / 4][u_xlati38 % 4].xy * vs_TEXCOORD2.xx + u_xlat30.xy;
                    u_xlat30.xy = _AdditionalLightsWorldToLights[(u_xlati38 + 2) / 4][(u_xlati38 + 2) % 4].xy * vs_TEXCOORD2.zz + u_xlat30.xy;
                    u_xlat30.xy = u_xlat30.xy + _AdditionalLightsWorldToLights[(u_xlati38 + 3) / 4][(u_xlati38 + 3) % 4].xy;
                    u_xlat30.xy = u_xlat30.xy * vec2(0.5, 0.5) + vec2(0.5, 0.5);
                    u_xlat30.xy = fract(u_xlat30.xy);
                    u_xlat8.xy = _AdditionalLightsCookieAtlasUVRects[int(u_xlatu35)].xy * u_xlat30.xy + _AdditionalLightsCookieAtlasUVRects[int(u_xlatu35)].zw;
                } else {
                    u_xlat9 = vs_TEXCOORD2.yyyy * _AdditionalLightsWorldToLights[(u_xlati38 + 1) / 4][(u_xlati38 + 1) % 4];
                    u_xlat9 = _AdditionalLightsWorldToLights[u_xlati38 / 4][u_xlati38 % 4] * vs_TEXCOORD2.xxxx + u_xlat9;
                    u_xlat9 = _AdditionalLightsWorldToLights[(u_xlati38 + 2) / 4][(u_xlati38 + 2) % 4] * vs_TEXCOORD2.zzzz + u_xlat9;
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
        u_xlat8.xyz = vec3(u_xlat33) * u_xlat8.xyz;
        u_xlat8.xyz = vec3(u_xlat36) * u_xlat8.xyz;
        u_xlat35 = dot(u_xlat2.xyz, u_xlat7.xyz);
        u_xlat35 = clamp(u_xlat35, 0.0, 1.0);
        u_xlat7.xyz = vec3(u_xlat35) * u_xlat8.xyz;
        u_xlat6.xyz = u_xlat7.xyz * u_xlat1.xyz + u_xlat6.xyz;
    }
    u_xlat1.xyz = u_xlat3.xyz * u_xlat1.xyz + u_xlat4.xyz;
    SV_Target0.xyz = u_xlat6.xyz + u_xlat1.xyz;
    SV_Target0.w = (u_xlatb22) ? u_xlat11 : 1.0;
    return;
}

