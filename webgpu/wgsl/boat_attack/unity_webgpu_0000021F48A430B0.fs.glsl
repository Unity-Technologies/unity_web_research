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
layout(set = 0, binding = 0) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 1) uniform mediump texture2D _MainLightShadowmapTexture;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 1) in highp vec4 vs_TEXCOORD2;
layout(location = 2) in highp vec3 vs_TEXCOORD3;
layout(location = 3) in highp vec4 vs_TEXCOORD6;
layout(location = 4) in highp vec4 vs_TEXCOORD7;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 2) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 3) uniform mediump  samplerShadow sampler_MainLightShadowmapTexture;
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
vec3 u_xlat6;
vec3 u_xlat7;
float u_xlat8;
float u_xlat16;
bool u_xlatb16;
float u_xlat24;
uint u_xlatu24;
bool u_xlatb24;
float u_xlat25;
int u_xlati25;
uint u_xlatu25;
bool u_xlatb25;
float u_xlat26;
int u_xlati26;
float u_xlat27;
    u_xlat0 = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD0.xy, _GlobalMipBias.x);
    u_xlat1 = u_xlat0 * vs_TEXCOORD7;
    u_xlatb0 = u_xlat1.w>=_Cutoff;
    u_xlat0.x = u_xlatb0 ? u_xlat1.w : float(0.0);
    u_xlat8 = u_xlat0.w * vs_TEXCOORD7.w + (-_Cutoff);
    u_xlat16 = dFdxCoarse(u_xlat1.w);
    u_xlat24 = dFdyCoarse(u_xlat1.w);
    u_xlat16 = abs(u_xlat24) + abs(u_xlat16);
    u_xlat16 = max(u_xlat16, 9.99999975e-05);
    u_xlat8 = u_xlat8 / u_xlat16;
    u_xlat8 = u_xlat8 + 0.5;
    u_xlat8 = clamp(u_xlat8, 0.0, 1.0);
    u_xlatb16 = _AlphaToMaskAvailable!=0.0;
    u_xlat0.x = (u_xlatb16) ? u_xlat8 : u_xlat0.x;
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
    vec3 txVec0 = vec3(vs_TEXCOORD6.xy,vs_TEXCOORD6.z);
    u_xlat0.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec0, 0.0);
    u_xlat24 = (-_MainLightShadowParams.x) + 1.0;
    u_xlat0.x = u_xlat0.x * _MainLightShadowParams.x + u_xlat24;
    u_xlatb24 = 0.0>=vs_TEXCOORD6.z;
    u_xlatb25 = vs_TEXCOORD6.z>=1.0;
    u_xlatb24 = u_xlatb24 || u_xlatb25;
    u_xlat0.x = (u_xlatb24) ? 1.0 : u_xlat0.x;
    u_xlat4.xyz = vs_TEXCOORD2.xyz + (-_WorldSpaceCameraPos.xyz);
    u_xlat24 = dot(u_xlat4.xyz, u_xlat4.xyz);
    u_xlat24 = u_xlat24 * _MainLightShadowParams.z + _MainLightShadowParams.w;
    u_xlat24 = clamp(u_xlat24, 0.0, 1.0);
    u_xlat25 = (-u_xlat0.x) + 1.0;
    u_xlat0.x = u_xlat24 * u_xlat25 + u_xlat0.x;
    u_xlat0.x = u_xlat0.x * unity_LightData.z;
    u_xlat4.xyz = u_xlat0.xxx * _MainLightColor.xyz;
    u_xlat0.x = dot(u_xlat2.xyz, _MainLightPosition.xyz);
    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
    u_xlat4.xyz = u_xlat0.xxx * u_xlat4.xyz;
    u_xlat4.xyz = u_xlat1.xyz * u_xlat4.xyz;
    u_xlat0.x = min(_AdditionalLightsCount.x, unity_LightData.y);
    u_xlatu0 =  uint(int(u_xlat0.x));
    u_xlat5.x = float(0.0);
    u_xlat5.y = float(0.0);
    u_xlat5.z = float(0.0);
    for(uint u_xlatu_loop_1 = 0u ; u_xlatu_loop_1<u_xlatu0 ; u_xlatu_loop_1++)
    {
        u_xlatu25 = u_xlatu_loop_1 >> (2u & uint(0x1F));
        u_xlati26 = int(u_xlatu_loop_1 & 3u);
        u_xlat25 = dot(unity_LightIndices[int(u_xlatu25)], uintBitsToFloat(ImmCB_0[u_xlati26]));
        u_xlati25 = int(u_xlat25);
        u_xlat6.xyz = (-vs_TEXCOORD2.xyz) * _AdditionalLightsPosition[u_xlati25].www + _AdditionalLightsPosition[u_xlati25].xyz;
        u_xlat26 = dot(u_xlat6.xyz, u_xlat6.xyz);
        u_xlat26 = max(u_xlat26, 6.10351562e-05);
        u_xlat27 = inversesqrt(u_xlat26);
        u_xlat6.xyz = vec3(u_xlat27) * u_xlat6.xyz;
        u_xlat27 = float(1.0) / float(u_xlat26);
        u_xlat26 = u_xlat26 * _AdditionalLightsAttenuation[u_xlati25].x;
        u_xlat26 = (-u_xlat26) * u_xlat26 + 1.0;
        u_xlat26 = max(u_xlat26, 0.0);
        u_xlat26 = u_xlat26 * u_xlat26;
        u_xlat26 = u_xlat26 * u_xlat27;
        u_xlat27 = dot(_AdditionalLightsSpotDir[u_xlati25].xyz, u_xlat6.xyz);
        u_xlat27 = u_xlat27 * _AdditionalLightsAttenuation[u_xlati25].z + _AdditionalLightsAttenuation[u_xlati25].w;
        u_xlat27 = clamp(u_xlat27, 0.0, 1.0);
        u_xlat27 = u_xlat27 * u_xlat27;
        u_xlat26 = u_xlat26 * u_xlat27;
        u_xlat7.xyz = vec3(u_xlat26) * _AdditionalLightsColor[u_xlati25].xyz;
        u_xlat25 = dot(u_xlat2.xyz, u_xlat6.xyz);
        u_xlat25 = clamp(u_xlat25, 0.0, 1.0);
        u_xlat6.xyz = vec3(u_xlat25) * u_xlat7.xyz;
        u_xlat5.xyz = u_xlat6.xyz * u_xlat1.xyz + u_xlat5.xyz;
    }
    u_xlat1.xyz = u_xlat3.xyz * u_xlat1.xyz + u_xlat4.xyz;
    SV_Target0.xyz = u_xlat5.xyz + u_xlat1.xyz;
    SV_Target0.w = (u_xlatb16) ? u_xlat8 : 1.0;
    return;
}
