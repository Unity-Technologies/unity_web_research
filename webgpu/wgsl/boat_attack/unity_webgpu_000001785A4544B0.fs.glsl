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
	vec4 _ProjectionParams;
	vec4 _ScaleBiasRt;
	vec4 unity_FogParams;
	vec4 unity_FogColor;
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
layout(set = 0, binding = 0) uniform mediump texture2D _BaseMap;
layout(set = 0, binding = 1) uniform mediump texture2D _ScreenSpaceOcclusionTexture;
layout(set = 0, binding = 2) uniform mediump texture2D _MainLightShadowmapTexture;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 1) in highp vec3 vs_TEXCOORD1;
layout(location = 2) in highp vec3 vs_TEXCOORD2;
layout(location = 3) in highp vec4 vs_TEXCOORD6;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 3) uniform mediump  sampler sampler_BaseMap;
layout(set = 0, binding = 4) uniform mediump  sampler sampler_ScreenSpaceOcclusionTexture;
layout(set = 0, binding = 5) uniform mediump  samplerShadow sampler_MainLightShadowmapTexture;
void main()
{
vec4 u_xlat0;
vec4 u_xlat1;
float u_xlat2;
vec3 u_xlat3;
vec4 u_xlat4;
vec3 u_xlat5;
int u_xlati5;
uint u_xlatu5;
bool u_xlatb5;
vec3 u_xlat6;
vec3 u_xlat7;
bool u_xlatb7;
vec3 u_xlat9;
vec3 u_xlat10;
vec3 u_xlat12;
int u_xlati12;
vec3 u_xlat13;
float u_xlat17;
bool u_xlatb17;
float u_xlat22;
uint u_xlatu22;
float u_xlat24;
bool u_xlatb24;
uint u_xlatu25;
vec4 hlslcc_FragCoord = vec4(gl_FragCoord.xyz, 1.0/gl_FragCoord.w);
    u_xlat0 = texture(sampler2D(_BaseMap, sampler_BaseMap), vs_TEXCOORD0.xy, _GlobalMipBias.x);
    u_xlat0 = u_xlat0.wxyz * _BaseColor.wxyz;
    u_xlat1.x = dot(vs_TEXCOORD2.xyz, vs_TEXCOORD2.xyz);
    u_xlat1.x = inversesqrt(u_xlat1.x);
    u_xlat1.xyz = u_xlat1.xxx * vs_TEXCOORD2.xyz;
    u_xlat2 = vs_TEXCOORD1.y * unity_MatrixV[1].z;
    u_xlat2 = unity_MatrixV[0].z * vs_TEXCOORD1.x + u_xlat2;
    u_xlat2 = unity_MatrixV[2].z * vs_TEXCOORD1.z + u_xlat2;
    u_xlat2 = u_xlat2 + unity_MatrixV[3].z;
    u_xlat2 = (-u_xlat2) + (-_ProjectionParams.y);
    u_xlat2 = max(u_xlat2, 0.0);
    u_xlat2 = u_xlat2 * unity_FogParams.x;
    u_xlat1.w = 1.0;
    u_xlat3.x = dot(unity_SHAr, u_xlat1);
    u_xlat3.y = dot(unity_SHAg, u_xlat1);
    u_xlat3.z = dot(unity_SHAb, u_xlat1);
    u_xlat4 = u_xlat1.yzzx * u_xlat1.xyzz;
    u_xlat5.x = dot(unity_SHBr, u_xlat4);
    u_xlat5.y = dot(unity_SHBg, u_xlat4);
    u_xlat5.z = dot(unity_SHBb, u_xlat4);
    u_xlat22 = u_xlat1.y * u_xlat1.y;
    u_xlat22 = u_xlat1.x * u_xlat1.x + (-u_xlat22);
    u_xlat9.xyz = unity_SHC.xyz * vec3(u_xlat22) + u_xlat5.xyz;
    u_xlat9.xyz = u_xlat9.xyz + u_xlat3.xyz;
    u_xlat9.xyz = max(u_xlat9.xyz, vec3(0.0, 0.0, 0.0));
    u_xlat3.xy = vec2(1.0) / vec2(_ScaledScreenParams.xy);
    u_xlat3.xy = u_xlat3.xy * hlslcc_FragCoord.xy;
    u_xlat22 = u_xlat3.y * _ScaleBiasRt.x + _ScaleBiasRt.y;
    u_xlat3.z = (-u_xlat22) + 1.0;
    u_xlat22 = texture(sampler2D(_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture), u_xlat3.xz, _GlobalMipBias.x).x;
    u_xlat3.x = u_xlat22 + -1.0;
    u_xlat3.x = _AmbientOcclusionParam.w * u_xlat3.x + 1.0;
    u_xlat22 = min(u_xlat22, 1.0);
    vec3 txVec0 = vec3(vs_TEXCOORD6.xy,vs_TEXCOORD6.z);
    u_xlat10.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec0, 0.0);
    u_xlat17 = (-_MainLightShadowParams.x) + 1.0;
    u_xlat10.x = u_xlat10.x * _MainLightShadowParams.x + u_xlat17;
    u_xlatb17 = 0.0>=vs_TEXCOORD6.z;
    u_xlatb24 = vs_TEXCOORD6.z>=1.0;
    u_xlatb17 = u_xlatb24 || u_xlatb17;
    u_xlat10.x = (u_xlatb17) ? 1.0 : u_xlat10.x;
    u_xlat4.xyz = vs_TEXCOORD1.xyz + (-_WorldSpaceCameraPos.xyz);
    u_xlat17 = dot(u_xlat4.xyz, u_xlat4.xyz);
    u_xlat17 = u_xlat17 * _MainLightShadowParams.z + _MainLightShadowParams.w;
    u_xlat17 = clamp(u_xlat17, 0.0, 1.0);
    u_xlat24 = (-u_xlat10.x) + 1.0;
    u_xlat10.x = u_xlat17 * u_xlat24 + u_xlat10.x;
    u_xlat4.xyz = u_xlat3.xxx * _MainLightColor.xyz;
    u_xlat9.xyz = vec3(u_xlat22) * u_xlat9.xyz;
    u_xlat22 = u_xlat10.x * unity_LightData.z;
    u_xlat10.xyz = vec3(u_xlat22) * u_xlat4.xyz;
    u_xlat22 = dot(u_xlat1.xyz, _MainLightPosition.xyz);
    u_xlat22 = clamp(u_xlat22, 0.0, 1.0);
    u_xlat10.xyz = vec3(u_xlat22) * u_xlat10.xyz;
    u_xlat10.xyz = u_xlat0.yzw * u_xlat10.xyz;
    u_xlat22 = min(_AdditionalLightsCount.x, unity_LightData.y);
    u_xlatu22 =  uint(int(u_xlat22));
    u_xlat4.x = float(0.0);
    u_xlat4.y = float(0.0);
    u_xlat4.z = float(0.0);
    for(uint u_xlatu_loop_1 = uint(0u) ; u_xlatu_loop_1<u_xlatu22 ; u_xlatu_loop_1++)
    {
        u_xlatu5 = u_xlatu_loop_1 >> (2u & uint(0x1F));
        u_xlati12 = int(u_xlatu_loop_1 & 3u);
        u_xlat5.x = dot(unity_LightIndices[int(u_xlatu5)], uintBitsToFloat(ImmCB_0[u_xlati12]));
        u_xlati5 = int(u_xlat5.x);
        u_xlat12.xyz = (-vs_TEXCOORD1.xyz) * _AdditionalLightsPosition[u_xlati5].www + _AdditionalLightsPosition[u_xlati5].xyz;
        u_xlat6.x = dot(u_xlat12.xyz, u_xlat12.xyz);
        u_xlat6.x = max(u_xlat6.x, 6.10351562e-05);
        u_xlat13.x = inversesqrt(u_xlat6.x);
        u_xlat12.xyz = u_xlat12.xyz * u_xlat13.xxx;
        u_xlat13.x = float(1.0) / float(u_xlat6.x);
        u_xlat6.x = u_xlat6.x * _AdditionalLightsAttenuation[u_xlati5].x;
        u_xlat6.x = (-u_xlat6.x) * u_xlat6.x + 1.0;
        u_xlat6.x = max(u_xlat6.x, 0.0);
        u_xlat6.x = u_xlat6.x * u_xlat6.x;
        u_xlat6.x = u_xlat6.x * u_xlat13.x;
        u_xlat13.x = dot(_AdditionalLightsSpotDir[u_xlati5].xyz, u_xlat12.xyz);
        u_xlat13.x = u_xlat13.x * _AdditionalLightsAttenuation[u_xlati5].z + _AdditionalLightsAttenuation[u_xlati5].w;
        u_xlat13.x = clamp(u_xlat13.x, 0.0, 1.0);
        u_xlat13.x = u_xlat13.x * u_xlat13.x;
        u_xlat6.x = u_xlat13.x * u_xlat6.x;
        u_xlat13.xyz = u_xlat3.xxx * _AdditionalLightsColor[u_xlati5].xyz;
        u_xlat6.xyz = u_xlat6.xxx * u_xlat13.xyz;
        u_xlat5.x = dot(u_xlat1.xyz, u_xlat12.xyz);
        u_xlat5.x = clamp(u_xlat5.x, 0.0, 1.0);
        u_xlat5.xyz = u_xlat5.xxx * u_xlat6.xyz;
        u_xlat4.xyz = u_xlat5.xyz * u_xlat0.yzw + u_xlat4.xyz;
    }
    u_xlat7.xyz = u_xlat9.xyz * u_xlat0.yzw + u_xlat10.xyz;
    u_xlat7.xyz = u_xlat4.xyz + u_xlat7.xyz;
    u_xlat1.x = u_xlat2 * (-u_xlat2);
    u_xlat1.x = exp2(u_xlat1.x);
    u_xlat7.xyz = u_xlat7.xyz + (-unity_FogColor.xyz);
    SV_Target0.xyz = u_xlat1.xxx * u_xlat7.xyz + unity_FogColor.xyz;
    u_xlatb7 = _Surface==1.0;
    SV_Target0.w = (u_xlatb7) ? u_xlat0.x : 1.0;
    return;
}

