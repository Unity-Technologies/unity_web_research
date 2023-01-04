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
layout(set = 0, binding = 2) uniform mediump texture2D unity_LightmapInd;
layout(set = 0, binding = 3) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 4) uniform mediump texture2D _MetallicTex;
layout(set = 0, binding = 5) uniform mediump texture2D _ScreenSpaceOcclusionTexture;
layout(set = 0, binding = 6) uniform mediump texture2D _MainLightShadowmapTexture;
layout(location = 0) in highp vec4 vs_TEXCOORD0;
layout(location = 1) in highp vec4 vs_TEXCOORD3;
layout(location = 2) in highp vec4 vs_TEXCOORD4;
layout(location = 3) in highp vec4 vs_TEXCOORD5;
layout(location = 4) in highp vec3 vs_TEXCOORD7;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 7) uniform mediump  sampler samplerunity_SpecCube0;
layout(set = 0, binding = 8) uniform mediump  sampler samplerunity_Lightmap;
layout(set = 0, binding = 9) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 10) uniform mediump  sampler sampler_MetallicTex;
layout(set = 0, binding = 11) uniform mediump  sampler sampler_ScreenSpaceOcclusionTexture;
layout(set = 0, binding = 12) uniform mediump  samplerShadow sampler_MainLightShadowmapTexture;
void main()
{
vec4 u_xlat0;
float u_xlat1;
uint u_xlatu1;
vec4 u_xlat2;
int u_xlati2;
uint u_xlatu2;
bvec4 u_xlatb2;
vec4 u_xlat3;
vec3 u_xlat4;
vec3 u_xlat5;
vec3 u_xlat6;
vec3 u_xlat7;
vec4 u_xlat8;
vec3 u_xlat9;
vec3 u_xlat10;
vec3 u_xlat12;
vec3 u_xlat13;
bool u_xlatb13;
float u_xlat15;
vec2 u_xlat24;
bool u_xlatb24;
float u_xlat26;
float u_xlat33;
uint u_xlatu33;
float u_xlat35;
float u_xlat36;
float u_xlat37;
int u_xlati37;
uint u_xlatu37;
bool u_xlatb37;
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
    u_xlat2.xyz = vs_TEXCOORD7.xyz + (-_CascadeShadowSplitSpheres0.xyz);
    u_xlat3.xyz = vs_TEXCOORD7.xyz + (-_CascadeShadowSplitSpheres1.xyz);
    u_xlat4.xyz = vs_TEXCOORD7.xyz + (-_CascadeShadowSplitSpheres2.xyz);
    u_xlat5.xyz = vs_TEXCOORD7.xyz + (-_CascadeShadowSplitSpheres3.xyz);
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
    u_xlat13.xyz = vs_TEXCOORD7.yyy * _MainLightWorldToShadow[(u_xlati2 + 1) / 4][(u_xlati2 + 1) % 4].xyz;
    u_xlat13.xyz = _MainLightWorldToShadow[u_xlati2 / 4][u_xlati2 % 4].xyz * vs_TEXCOORD7.xxx + u_xlat13.xyz;
    u_xlat13.xyz = _MainLightWorldToShadow[(u_xlati2 + 2) / 4][(u_xlati2 + 2) % 4].xyz * vs_TEXCOORD7.zzz + u_xlat13.xyz;
    u_xlat2.xyz = u_xlat13.xyz + _MainLightWorldToShadow[(u_xlati2 + 3) / 4][(u_xlati2 + 3) % 4].xyz;
    u_xlat3 = texture(sampler2D(unity_LightmapInd, samplerunity_Lightmap), vs_TEXCOORD0.zw, _GlobalMipBias.x);
    u_xlat4.xyz = texture(sampler2D(unity_Lightmap, samplerunity_Lightmap), vs_TEXCOORD0.zw, _GlobalMipBias.x).xyz;
    u_xlat3.xyz = u_xlat3.xyz + vec3(-0.5, -0.5, -0.5);
    u_xlat35 = dot(u_xlat12.xyz, u_xlat3.xyz);
    u_xlat35 = u_xlat35 + 0.5;
    u_xlat3.xyz = vec3(u_xlat35) * u_xlat4.xyz;
    u_xlat35 = max(u_xlat3.w, 9.99999975e-05);
    u_xlat3.xyz = u_xlat3.xyz / vec3(u_xlat35);
    u_xlat4.xy = vec2(1.0) / vec2(_ScaledScreenParams.xy);
    u_xlat4.xy = u_xlat4.xy * hlslcc_FragCoord.xy;
    u_xlat35 = u_xlat4.y * _ScaleBiasRt.x + _ScaleBiasRt.y;
    u_xlat4.z = (-u_xlat35) + 1.0;
    u_xlat35 = (-u_xlat1) * 0.959999979 + 0.959999979;
    u_xlat36 = (-u_xlat35) + 1.0;
    u_xlat5.xyz = u_xlat0.xyz * vec3(u_xlat35);
    u_xlat0.xyz = u_xlat0.xyz + vec3(-0.0399999991, -0.0399999991, -0.0399999991);
    u_xlat0.xyz = vec3(u_xlat1) * u_xlat0.xyz + vec3(0.0399999991, 0.0399999991, 0.0399999991);
    u_xlat1 = (-u_xlat0.w) + 1.0;
    u_xlat35 = u_xlat1 * u_xlat1;
    u_xlat35 = max(u_xlat35, 0.0078125);
    u_xlat15 = u_xlat35 * u_xlat35;
    u_xlat33 = u_xlat0.w + u_xlat36;
    u_xlat33 = clamp(u_xlat33, 0.0, 1.0);
    u_xlat36 = u_xlat35 * 4.0 + 2.0;
    u_xlat4.x = texture(sampler2D(_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture), u_xlat4.xz, _GlobalMipBias.x).x;
    u_xlat26 = u_xlat4.x + -1.0;
    u_xlat26 = _AmbientOcclusionParam.w * u_xlat26 + 1.0;
    u_xlat4.x = min(u_xlat4.x, 1.0);
    vec3 txVec0 = vec3(u_xlat2.xy,u_xlat2.z);
    u_xlat2.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec0, 0.0);
    u_xlat13.x = (-_MainLightShadowParams.x) + 1.0;
    u_xlat2.x = u_xlat2.x * _MainLightShadowParams.x + u_xlat13.x;
    u_xlatb13 = 0.0>=u_xlat2.z;
    u_xlatb24 = u_xlat2.z>=1.0;
    u_xlatb13 = u_xlatb24 || u_xlatb13;
    u_xlat2.x = (u_xlatb13) ? 1.0 : u_xlat2.x;
    u_xlat6.xyz = vs_TEXCOORD7.xyz + (-_WorldSpaceCameraPos.xyz);
    u_xlat13.x = dot(u_xlat6.xyz, u_xlat6.xyz);
    u_xlat13.x = u_xlat13.x * _MainLightShadowParams.z + _MainLightShadowParams.w;
    u_xlat13.x = clamp(u_xlat13.x, 0.0, 1.0);
    u_xlat24.x = (-u_xlat2.x) + 1.0;
    u_xlat2.x = u_xlat13.x * u_xlat24.x + u_xlat2.x;
    u_xlat6.xyz = vec3(u_xlat26) * _MainLightColor.xyz;
    u_xlat7.x = vs_TEXCOORD3.w;
    u_xlat7.y = vs_TEXCOORD4.w;
    u_xlat7.z = vs_TEXCOORD5.w;
    u_xlat13.x = dot((-u_xlat7.xyz), u_xlat12.xyz);
    u_xlat13.x = u_xlat13.x + u_xlat13.x;
    u_xlat8.xyz = u_xlat12.xyz * (-u_xlat13.xxx) + (-u_xlat7.xyz);
    u_xlat13.x = dot(u_xlat12.xyz, u_xlat7.xyz);
    u_xlat13.x = clamp(u_xlat13.x, 0.0, 1.0);
    u_xlat13.x = (-u_xlat13.x) + 1.0;
    u_xlat13.x = u_xlat13.x * u_xlat13.x;
    u_xlat13.x = u_xlat13.x * u_xlat13.x;
    u_xlat24.x = (-u_xlat1) * 0.699999988 + 1.70000005;
    u_xlat1 = u_xlat1 * u_xlat24.x;
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
    u_xlat24.xy = vec2(u_xlat35) * vec2(u_xlat35) + vec2(-1.0, 1.0);
    u_xlat1 = float(1.0) / u_xlat24.y;
    u_xlat9.xyz = (-u_xlat0.xyz) + vec3(u_xlat33);
    u_xlat9.xyz = u_xlat13.xxx * u_xlat9.xyz + u_xlat0.xyz;
    u_xlat9.xyz = vec3(u_xlat1) * u_xlat9.xyz;
    u_xlat8.xyz = u_xlat8.xyz * u_xlat9.xyz;
    u_xlat3.xyz = u_xlat3.xyz * u_xlat5.xyz + u_xlat8.xyz;
    u_xlat33 = u_xlat2.x * unity_LightData.z;
    u_xlat1 = dot(u_xlat12.xyz, _MainLightPosition.xyz);
    u_xlat1 = clamp(u_xlat1, 0.0, 1.0);
    u_xlat33 = u_xlat33 * u_xlat1;
    u_xlat2.xyw = vec3(u_xlat33) * u_xlat6.xyz;
    u_xlat6.xyz = u_xlat7.xyz + _MainLightPosition.xyz;
    u_xlat33 = dot(u_xlat6.xyz, u_xlat6.xyz);
    u_xlat33 = max(u_xlat33, 1.17549435e-37);
    u_xlat33 = inversesqrt(u_xlat33);
    u_xlat6.xyz = vec3(u_xlat33) * u_xlat6.xyz;
    u_xlat33 = dot(u_xlat12.xyz, u_xlat6.xyz);
    u_xlat33 = clamp(u_xlat33, 0.0, 1.0);
    u_xlat1 = dot(_MainLightPosition.xyz, u_xlat6.xyz);
    u_xlat1 = clamp(u_xlat1, 0.0, 1.0);
    u_xlat33 = u_xlat33 * u_xlat33;
    u_xlat33 = u_xlat33 * u_xlat24.x + 1.00001001;
    u_xlat1 = u_xlat1 * u_xlat1;
    u_xlat33 = u_xlat33 * u_xlat33;
    u_xlat1 = max(u_xlat1, 0.100000001);
    u_xlat33 = u_xlat33 * u_xlat1;
    u_xlat33 = u_xlat36 * u_xlat33;
    u_xlat33 = u_xlat15 / u_xlat33;
    u_xlat6.xyz = u_xlat0.xyz * vec3(u_xlat33) + u_xlat5.xyz;
    u_xlat2.xyw = u_xlat2.xyw * u_xlat6.xyz;
    u_xlat33 = min(_AdditionalLightsCount.x, unity_LightData.y);
    u_xlatu33 =  uint(int(u_xlat33));
    u_xlat6.x = float(0.0);
    u_xlat6.y = float(0.0);
    u_xlat6.z = float(0.0);
    for(uint u_xlatu_loop_1 = 0u ; u_xlatu_loop_1<u_xlatu33 ; u_xlatu_loop_1++)
    {
        u_xlatu37 = u_xlatu_loop_1 >> (2u & uint(0x1F));
        u_xlati38 = int(u_xlatu_loop_1 & 3u);
        u_xlat37 = dot(unity_LightIndices[int(u_xlatu37)], uintBitsToFloat(ImmCB_0[u_xlati38]));
        u_xlati37 = int(u_xlat37);
        u_xlat8.xyz = (-vs_TEXCOORD7.xyz) * _AdditionalLightsPosition[u_xlati37].www + _AdditionalLightsPosition[u_xlati37].xyz;
        u_xlat38 = dot(u_xlat8.xyz, u_xlat8.xyz);
        u_xlat38 = max(u_xlat38, 6.10351562e-05);
        u_xlat39 = inversesqrt(u_xlat38);
        u_xlat9.xyz = vec3(u_xlat39) * u_xlat8.xyz;
        u_xlat40 = float(1.0) / float(u_xlat38);
        u_xlat38 = u_xlat38 * _AdditionalLightsAttenuation[u_xlati37].x;
        u_xlat38 = (-u_xlat38) * u_xlat38 + 1.0;
        u_xlat38 = max(u_xlat38, 0.0);
        u_xlat38 = u_xlat38 * u_xlat38;
        u_xlat38 = u_xlat38 * u_xlat40;
        u_xlat40 = dot(_AdditionalLightsSpotDir[u_xlati37].xyz, u_xlat9.xyz);
        u_xlat40 = u_xlat40 * _AdditionalLightsAttenuation[u_xlati37].z + _AdditionalLightsAttenuation[u_xlati37].w;
        u_xlat40 = clamp(u_xlat40, 0.0, 1.0);
        u_xlat40 = u_xlat40 * u_xlat40;
        u_xlat38 = u_xlat38 * u_xlat40;
        u_xlat10.xyz = vec3(u_xlat26) * _AdditionalLightsColor[u_xlati37].xyz;
        u_xlat37 = dot(u_xlat12.xyz, u_xlat9.xyz);
        u_xlat37 = clamp(u_xlat37, 0.0, 1.0);
        u_xlat37 = u_xlat37 * u_xlat38;
        u_xlat10.xyz = vec3(u_xlat37) * u_xlat10.xyz;
        u_xlat8.xyz = u_xlat8.xyz * vec3(u_xlat39) + u_xlat7.xyz;
        u_xlat37 = dot(u_xlat8.xyz, u_xlat8.xyz);
        u_xlat37 = max(u_xlat37, 1.17549435e-37);
        u_xlat37 = inversesqrt(u_xlat37);
        u_xlat8.xyz = vec3(u_xlat37) * u_xlat8.xyz;
        u_xlat37 = dot(u_xlat12.xyz, u_xlat8.xyz);
        u_xlat37 = clamp(u_xlat37, 0.0, 1.0);
        u_xlat38 = dot(u_xlat9.xyz, u_xlat8.xyz);
        u_xlat38 = clamp(u_xlat38, 0.0, 1.0);
        u_xlat37 = u_xlat37 * u_xlat37;
        u_xlat37 = u_xlat37 * u_xlat24.x + 1.00001001;
        u_xlat38 = u_xlat38 * u_xlat38;
        u_xlat37 = u_xlat37 * u_xlat37;
        u_xlat38 = max(u_xlat38, 0.100000001);
        u_xlat37 = u_xlat37 * u_xlat38;
        u_xlat37 = u_xlat36 * u_xlat37;
        u_xlat37 = u_xlat15 / u_xlat37;
        u_xlat8.xyz = u_xlat0.xyz * vec3(u_xlat37) + u_xlat5.xyz;
        u_xlat6.xyz = u_xlat8.xyz * u_xlat10.xyz + u_xlat6.xyz;
    }
    u_xlat0.xyz = u_xlat3.xyz * u_xlat4.xxx + u_xlat2.xyw;
    SV_Target0.xyz = u_xlat6.xyz + u_xlat0.xyz;
    SV_Target0.w = 1.0;
    return;
}

