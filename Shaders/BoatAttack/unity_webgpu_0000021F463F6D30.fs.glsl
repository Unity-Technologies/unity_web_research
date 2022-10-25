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
layout(set = 0, binding = 0) uniform mediump textureCube unity_SpecCube0;
layout(set = 0, binding = 1) uniform mediump texture2D unity_Lightmap;
layout(set = 0, binding = 2) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 3) uniform mediump texture2D _MetallicTex;
layout(set = 0, binding = 4) uniform mediump texture2D _ScreenSpaceOcclusionTexture;
layout(set = 0, binding = 5) uniform mediump texture2D _MainLightShadowmapTexture;
layout(location = 0) in highp vec4 vs_TEXCOORD0;
layout(location = 1) in highp vec4 vs_TEXCOORD3;
layout(location = 2) in highp vec4 vs_TEXCOORD4;
layout(location = 3) in highp vec4 vs_TEXCOORD5;
layout(location = 4) in highp vec3 vs_TEXCOORD7;
layout(location = 5) in highp vec4 vs_TEXCOORD8;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 6) uniform mediump  sampler samplerunity_SpecCube0;
layout(set = 0, binding = 7) uniform mediump  sampler samplerunity_Lightmap;
layout(set = 0, binding = 8) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 9) uniform mediump  sampler sampler_MetallicTex;
layout(set = 0, binding = 10) uniform mediump  sampler sampler_ScreenSpaceOcclusionTexture;
layout(set = 0, binding = 11) uniform mediump  samplerShadow sampler_MainLightShadowmapTexture;
void main()
{
vec4 u_xlat0;
float u_xlat1;
uint u_xlatu1;
float u_xlat2;
vec3 u_xlat3;
vec3 u_xlat4;
vec3 u_xlat5;
vec3 u_xlat6;
vec4 u_xlat7;
vec2 u_xlat8;
vec3 u_xlat9;
vec3 u_xlat10;
vec3 u_xlat12;
vec3 u_xlat13;
float u_xlat14;
int u_xlati14;
uint u_xlatu14;
bool u_xlatb14;
vec3 u_xlat16;
bool u_xlatb16;
vec3 u_xlat19;
float u_xlat25;
float u_xlat27;
bool u_xlatb27;
float u_xlat33;
uint u_xlatu33;
float u_xlat36;
float u_xlat37;
float u_xlat38;
int u_xlati38;
float u_xlat39;
float u_xlat40;
vec4 hlslcc_FragCoord = vec4(gl_FragCoord.xyz, 1.0/gl_FragCoord.w);
    u_xlat0 = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD0.xy, _GlobalMipBias.x);
    u_xlat1 = texture(sampler2D(_MetallicTex, sampler_MetallicTex), vs_TEXCOORD0.xy, _GlobalMipBias.x).x;
    u_xlat12.x = dot(vs_TEXCOORD3.xyz, vs_TEXCOORD3.xyz);
    u_xlat12.x = inversesqrt(u_xlat12.x);
    u_xlat12.xyz = u_xlat12.xxx * vs_TEXCOORD3.xyz;
    u_xlat2 = vs_TEXCOORD7.y * unity_MatrixV[1].z;
    u_xlat2 = unity_MatrixV[0].z * vs_TEXCOORD7.x + u_xlat2;
    u_xlat2 = unity_MatrixV[2].z * vs_TEXCOORD7.z + u_xlat2;
    u_xlat2 = u_xlat2 + unity_MatrixV[3].z;
    u_xlat2 = (-u_xlat2) + (-_ProjectionParams.y);
    u_xlat2 = max(u_xlat2, 0.0);
    u_xlat2 = u_xlat2 * unity_FogParams.x;
    u_xlat13.xyz = texture(sampler2D(unity_Lightmap, samplerunity_Lightmap), vs_TEXCOORD0.zw, _GlobalMipBias.x).xyz;
    u_xlat3.xy = vec2(1.0) / vec2(_ScaledScreenParams.xy);
    u_xlat3.xy = u_xlat3.xy * hlslcc_FragCoord.xy;
    u_xlat14 = u_xlat3.y * _ScaleBiasRt.x + _ScaleBiasRt.y;
    u_xlat3.z = (-u_xlat14) + 1.0;
    u_xlat14 = (-u_xlat1) * 0.959999979 + 0.959999979;
    u_xlat36 = (-u_xlat14) + 1.0;
    u_xlat4.xyz = u_xlat0.xyz * vec3(u_xlat14);
    u_xlat0.xyz = u_xlat0.xyz + vec3(-0.0399999991, -0.0399999991, -0.0399999991);
    u_xlat0.xyz = vec3(u_xlat1) * u_xlat0.xyz + vec3(0.0399999991, 0.0399999991, 0.0399999991);
    u_xlat1 = (-u_xlat0.w) + 1.0;
    u_xlat14 = u_xlat1 * u_xlat1;
    u_xlat14 = max(u_xlat14, 0.0078125);
    u_xlat37 = u_xlat14 * u_xlat14;
    u_xlat33 = u_xlat0.w + u_xlat36;
    u_xlat33 = clamp(u_xlat33, 0.0, 1.0);
    u_xlat36 = u_xlat14 * 4.0 + 2.0;
    u_xlat3.x = texture(sampler2D(_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture), u_xlat3.xz, _GlobalMipBias.x).x;
    u_xlat25 = u_xlat3.x + -1.0;
    u_xlat25 = _AmbientOcclusionParam.w * u_xlat25 + 1.0;
    u_xlat3.x = min(u_xlat3.x, 1.0);
    vec3 txVec0 = vec3(vs_TEXCOORD8.xy,vs_TEXCOORD8.z);
    u_xlat5.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec0, 0.0);
    u_xlat16.x = (-_MainLightShadowParams.x) + 1.0;
    u_xlat5.x = u_xlat5.x * _MainLightShadowParams.x + u_xlat16.x;
    u_xlatb16 = 0.0>=vs_TEXCOORD8.z;
    u_xlatb27 = vs_TEXCOORD8.z>=1.0;
    u_xlatb16 = u_xlatb27 || u_xlatb16;
    u_xlat5.x = (u_xlatb16) ? 1.0 : u_xlat5.x;
    u_xlat16.xyz = vs_TEXCOORD7.xyz + (-_WorldSpaceCameraPos.xyz);
    u_xlat16.x = dot(u_xlat16.xyz, u_xlat16.xyz);
    u_xlat16.x = u_xlat16.x * _MainLightShadowParams.z + _MainLightShadowParams.w;
    u_xlat16.x = clamp(u_xlat16.x, 0.0, 1.0);
    u_xlat27 = (-u_xlat5.x) + 1.0;
    u_xlat5.x = u_xlat16.x * u_xlat27 + u_xlat5.x;
    u_xlat16.xyz = vec3(u_xlat25) * _MainLightColor.xyz;
    u_xlat6.x = vs_TEXCOORD3.w;
    u_xlat6.y = vs_TEXCOORD4.w;
    u_xlat6.z = vs_TEXCOORD5.w;
    u_xlat39 = dot((-u_xlat6.xyz), u_xlat12.xyz);
    u_xlat39 = u_xlat39 + u_xlat39;
    u_xlat7.xyz = u_xlat12.xyz * (-vec3(u_xlat39)) + (-u_xlat6.xyz);
    u_xlat39 = dot(u_xlat12.xyz, u_xlat6.xyz);
    u_xlat39 = clamp(u_xlat39, 0.0, 1.0);
    u_xlat39 = (-u_xlat39) + 1.0;
    u_xlat39 = u_xlat39 * u_xlat39;
    u_xlat39 = u_xlat39 * u_xlat39;
    u_xlat40 = (-u_xlat1) * 0.699999988 + 1.70000005;
    u_xlat1 = u_xlat1 * u_xlat40;
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
    u_xlat8.xy = vec2(u_xlat14) * vec2(u_xlat14) + vec2(-1.0, 1.0);
    u_xlat1 = float(1.0) / u_xlat8.y;
    u_xlat19.xyz = (-u_xlat0.xyz) + vec3(u_xlat33);
    u_xlat19.xyz = vec3(u_xlat39) * u_xlat19.xyz + u_xlat0.xyz;
    u_xlat19.xyz = vec3(u_xlat1) * u_xlat19.xyz;
    u_xlat7.xyz = u_xlat7.xyz * u_xlat19.xyz;
    u_xlat13.xyz = u_xlat13.xyz * u_xlat4.xyz + u_xlat7.xyz;
    u_xlat33 = u_xlat5.x * unity_LightData.z;
    u_xlat1 = dot(u_xlat12.xyz, _MainLightPosition.xyz);
    u_xlat1 = clamp(u_xlat1, 0.0, 1.0);
    u_xlat33 = u_xlat33 * u_xlat1;
    u_xlat5.xyz = vec3(u_xlat33) * u_xlat16.xyz;
    u_xlat7.xyz = u_xlat6.xyz + _MainLightPosition.xyz;
    u_xlat33 = dot(u_xlat7.xyz, u_xlat7.xyz);
    u_xlat33 = max(u_xlat33, 1.17549435e-37);
    u_xlat33 = inversesqrt(u_xlat33);
    u_xlat7.xyz = vec3(u_xlat33) * u_xlat7.xyz;
    u_xlat33 = dot(u_xlat12.xyz, u_xlat7.xyz);
    u_xlat33 = clamp(u_xlat33, 0.0, 1.0);
    u_xlat1 = dot(_MainLightPosition.xyz, u_xlat7.xyz);
    u_xlat1 = clamp(u_xlat1, 0.0, 1.0);
    u_xlat33 = u_xlat33 * u_xlat33;
    u_xlat33 = u_xlat33 * u_xlat8.x + 1.00001001;
    u_xlat1 = u_xlat1 * u_xlat1;
    u_xlat33 = u_xlat33 * u_xlat33;
    u_xlat1 = max(u_xlat1, 0.100000001);
    u_xlat33 = u_xlat33 * u_xlat1;
    u_xlat33 = u_xlat36 * u_xlat33;
    u_xlat33 = u_xlat37 / u_xlat33;
    u_xlat7.xyz = u_xlat0.xyz * vec3(u_xlat33) + u_xlat4.xyz;
    u_xlat5.xyz = u_xlat5.xyz * u_xlat7.xyz;
    u_xlat33 = min(_AdditionalLightsCount.x, unity_LightData.y);
    u_xlatu33 =  uint(int(u_xlat33));
    u_xlat7.x = float(0.0);
    u_xlat7.y = float(0.0);
    u_xlat7.z = float(0.0);
    for(uint u_xlatu_loop_1 = 0u ; u_xlatu_loop_1<u_xlatu33 ; u_xlatu_loop_1++)
    {
        u_xlatu14 = u_xlatu_loop_1 >> (2u & uint(0x1F));
        u_xlati38 = int(u_xlatu_loop_1 & 3u);
        u_xlat14 = dot(unity_LightIndices[int(u_xlatu14)], uintBitsToFloat(ImmCB_0[u_xlati38]));
        u_xlati14 = int(u_xlat14);
        u_xlat19.xyz = (-vs_TEXCOORD7.xyz) * _AdditionalLightsPosition[u_xlati14].www + _AdditionalLightsPosition[u_xlati14].xyz;
        u_xlat38 = dot(u_xlat19.xyz, u_xlat19.xyz);
        u_xlat38 = max(u_xlat38, 6.10351562e-05);
        u_xlat39 = inversesqrt(u_xlat38);
        u_xlat9.xyz = vec3(u_xlat39) * u_xlat19.xyz;
        u_xlat40 = float(1.0) / float(u_xlat38);
        u_xlat38 = u_xlat38 * _AdditionalLightsAttenuation[u_xlati14].x;
        u_xlat38 = (-u_xlat38) * u_xlat38 + 1.0;
        u_xlat38 = max(u_xlat38, 0.0);
        u_xlat38 = u_xlat38 * u_xlat38;
        u_xlat38 = u_xlat38 * u_xlat40;
        u_xlat40 = dot(_AdditionalLightsSpotDir[u_xlati14].xyz, u_xlat9.xyz);
        u_xlat40 = u_xlat40 * _AdditionalLightsAttenuation[u_xlati14].z + _AdditionalLightsAttenuation[u_xlati14].w;
        u_xlat40 = clamp(u_xlat40, 0.0, 1.0);
        u_xlat40 = u_xlat40 * u_xlat40;
        u_xlat38 = u_xlat38 * u_xlat40;
        u_xlat10.xyz = vec3(u_xlat25) * _AdditionalLightsColor[u_xlati14].xyz;
        u_xlat14 = dot(u_xlat12.xyz, u_xlat9.xyz);
        u_xlat14 = clamp(u_xlat14, 0.0, 1.0);
        u_xlat14 = u_xlat14 * u_xlat38;
        u_xlat10.xyz = vec3(u_xlat14) * u_xlat10.xyz;
        u_xlat19.xyz = u_xlat19.xyz * vec3(u_xlat39) + u_xlat6.xyz;
        u_xlat14 = dot(u_xlat19.xyz, u_xlat19.xyz);
        u_xlat14 = max(u_xlat14, 1.17549435e-37);
        u_xlat14 = inversesqrt(u_xlat14);
        u_xlat19.xyz = vec3(u_xlat14) * u_xlat19.xyz;
        u_xlat14 = dot(u_xlat12.xyz, u_xlat19.xyz);
        u_xlat14 = clamp(u_xlat14, 0.0, 1.0);
        u_xlat38 = dot(u_xlat9.xyz, u_xlat19.xyz);
        u_xlat38 = clamp(u_xlat38, 0.0, 1.0);
        u_xlat14 = u_xlat14 * u_xlat14;
        u_xlat14 = u_xlat14 * u_xlat8.x + 1.00001001;
        u_xlat38 = u_xlat38 * u_xlat38;
        u_xlat14 = u_xlat14 * u_xlat14;
        u_xlat38 = max(u_xlat38, 0.100000001);
        u_xlat14 = u_xlat14 * u_xlat38;
        u_xlat14 = u_xlat36 * u_xlat14;
        u_xlat14 = u_xlat37 / u_xlat14;
        u_xlat19.xyz = u_xlat0.xyz * vec3(u_xlat14) + u_xlat4.xyz;
        u_xlat7.xyz = u_xlat19.xyz * u_xlat10.xyz + u_xlat7.xyz;
    }
    u_xlat0.xyz = u_xlat13.xyz * u_xlat3.xxx + u_xlat5.xyz;
    u_xlat0.xyz = u_xlat7.xyz + u_xlat0.xyz;
    u_xlat33 = u_xlat2 * (-u_xlat2);
    u_xlat33 = exp2(u_xlat33);
    u_xlat0.xyz = u_xlat0.xyz + (-unity_FogColor.xyz);
    SV_Target0.xyz = vec3(u_xlat33) * u_xlat0.xyz + unity_FogColor.xyz;
    SV_Target0.w = 1.0;
    return;
}

