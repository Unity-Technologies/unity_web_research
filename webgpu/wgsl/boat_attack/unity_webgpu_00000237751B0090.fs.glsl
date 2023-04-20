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
layout(set = 0, binding = 0) uniform mediump texture2D _BaseMap;
layout(set = 0, binding = 1) uniform mediump texture2D _MainLightShadowmapTexture;
layout(set = 0, binding = 2) uniform mediump texture2D _AdditionalLightsShadowmapTexture;
layout(set = 0, binding = 3) uniform mediump texture2D _DitheringTexture;
layout(location = 0) in highp  vec2 vs_TEXCOORD0;
layout(location = 1) in highp  vec3 vs_TEXCOORD1;
layout(location = 2) in highp  vec3 vs_TEXCOORD2;
layout(location = 0) out highp vec4 SV_Target0;
vec4 u_xlat0;
bool u_xlatb0;
vec4 u_xlat1;
bool u_xlatb1;
vec4 u_xlat2;
vec4 u_xlat3;
bvec4 u_xlatb3;
vec4 u_xlat4;
vec4 u_xlat5;
vec3 u_xlat6;
vec4 u_xlat7;
bvec4 u_xlatb7;
vec3 u_xlat8;
int u_xlati8;
uint u_xlatu8;
bool u_xlatb8;
float u_xlat15;
float u_xlat16;
bool u_xlatb16;
float u_xlat24;
uint u_xlatu24;
bool u_xlatb24;
float u_xlat26;
uint u_xlatu26;
bool u_xlatb26;
float u_xlat27;
int u_xlati27;
uint u_xlatu27;
bool u_xlatb27;
float u_xlat28;
int u_xlati28;
float u_xlat29;
int u_xlati29;
float u_xlat30;
bool u_xlatb30;
float u_xlat31;
layout(set = 0, binding = 4) uniform mediump  sampler sampler_BaseMap;
layout(set = 0, binding = 5) uniform mediump  sampler sampler_PointRepeat;
layout(set = 0, binding = 6) uniform mediump  samplerShadow sampler_LinearClampCompare;
void main()
{
vec4 hlslcc_FragCoord = vec4(gl_FragCoord.xyz, 1.0/gl_FragCoord.w);
    u_xlat0 = texture(sampler2D(_BaseMap, sampler_BaseMap), vs_TEXCOORD0.xy, _GlobalMipBias.x);
    u_xlat1 = u_xlat0.wxyz * _BaseColor.wxyz;
    u_xlatb0 = u_xlat1.x>=_Cutoff;
    u_xlat0.x = u_xlatb0 ? u_xlat1.x : float(0.0);
    u_xlat8.x = u_xlat0.w * _BaseColor.w + (-_Cutoff);
    u_xlat16 = dFdxCoarse(u_xlat1.x);
    u_xlat24 = dFdyCoarse(u_xlat1.x);
    u_xlat16 = abs(u_xlat24) + abs(u_xlat16);
    u_xlat16 = max(u_xlat16, 9.99999975e-05);
    u_xlat8.x = u_xlat8.x / u_xlat16;
    u_xlat8.x = u_xlat8.x + 0.5;
    u_xlat8.x = clamp(u_xlat8.x, 0.0, 1.0);
    u_xlatb16 = _AlphaToMaskAvailable!=0.0;
    u_xlat0.x = (u_xlatb16) ? u_xlat8.x : u_xlat0.x;
    u_xlat8.x = u_xlat0.x + -9.99999975e-05;
    u_xlatb8 = u_xlat8.x<0.0;
    if(((int(u_xlatb8) * int(0xffffffffu)))!=0){discard;}
    u_xlat8.xz = hlslcc_FragCoord.xy * vec2(_DitheringTextureInvSize);
    u_xlat8.x = texture(sampler2D(_DitheringTexture, sampler_PointRepeat), u_xlat8.xz, _GlobalMipBias.x).w;
    u_xlatb24 = unity_LODFade.x>=0.0;
    u_xlat8.x = (u_xlatb24) ? abs(u_xlat8.x) : -abs(u_xlat8.x);
    u_xlat8.x = (-u_xlat8.x) + unity_LODFade.x;
    u_xlatb8 = u_xlat8.x<0.0;
    if(((int(u_xlatb8) * int(0xffffffffu)))!=0){discard;}
    u_xlat8.x = dot(vs_TEXCOORD2.xyz, vs_TEXCOORD2.xyz);
    u_xlat8.x = inversesqrt(u_xlat8.x);
    u_xlat2.xyz = u_xlat8.xxx * vs_TEXCOORD2.xyz;
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
    u_xlat8.x = dot(u_xlat4, vec4(4.0, 3.0, 2.0, 1.0));
    u_xlat8.x = (-u_xlat8.x) + 4.0;
    u_xlatu8 = uint(u_xlat8.x);
    u_xlati8 = int(u_xlatu8) << (2 & int(0x1F));
    u_xlat3.xyz = vs_TEXCOORD1.yyy * _MainLightWorldToShadow[(u_xlati8 + 1) / 4][(u_xlati8 + 1) % 4].xyz;
    u_xlat3.xyz = _MainLightWorldToShadow[u_xlati8 / 4][u_xlati8 % 4].xyz * vs_TEXCOORD1.xxx + u_xlat3.xyz;
    u_xlat3.xyz = _MainLightWorldToShadow[(u_xlati8 + 2) / 4][(u_xlati8 + 2) % 4].xyz * vs_TEXCOORD1.zzz + u_xlat3.xyz;
    u_xlat3.xyz = u_xlat3.xyz + _MainLightWorldToShadow[(u_xlati8 + 3) / 4][(u_xlati8 + 3) % 4].xyz;
    u_xlat8.x = vs_TEXCOORD1.y * unity_MatrixV[1].z;
    u_xlat8.x = unity_MatrixV[0].z * vs_TEXCOORD1.x + u_xlat8.x;
    u_xlat8.x = unity_MatrixV[2].z * vs_TEXCOORD1.z + u_xlat8.x;
    u_xlat8.x = u_xlat8.x + unity_MatrixV[3].z;
    u_xlat8.x = (-u_xlat8.x) + (-_ProjectionParams.y);
    u_xlat8.x = max(u_xlat8.x, 0.0);
    u_xlat8.x = u_xlat8.x * unity_FogParams.x;
    u_xlat2.w = 1.0;
    u_xlat4.x = dot(unity_SHAr, u_xlat2);
    u_xlat4.y = dot(unity_SHAg, u_xlat2);
    u_xlat4.z = dot(unity_SHAb, u_xlat2);
    u_xlat5 = u_xlat2.yzzx * u_xlat2.xyzz;
    u_xlat6.x = dot(unity_SHBr, u_xlat5);
    u_xlat6.y = dot(unity_SHBg, u_xlat5);
    u_xlat6.z = dot(unity_SHBb, u_xlat5);
    u_xlat24 = u_xlat2.y * u_xlat2.y;
    u_xlat24 = u_xlat2.x * u_xlat2.x + (-u_xlat24);
    u_xlat5.xyz = unity_SHC.xyz * vec3(u_xlat24) + u_xlat6.xyz;
    u_xlat4.xyz = u_xlat4.xyz + u_xlat5.xyz;
    u_xlat4.xyz = max(u_xlat4.xyz, vec3(0.0, 0.0, 0.0));
    vec3 txVec0 = vec3(u_xlat3.xy,u_xlat3.z);
    u_xlat24 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_LinearClampCompare), txVec0, 0.0);
    u_xlat1.x = (-_MainLightShadowParams.x) + 1.0;
    u_xlat24 = u_xlat24 * _MainLightShadowParams.x + u_xlat1.x;
    u_xlatb1 = 0.0>=u_xlat3.z;
    u_xlatb26 = u_xlat3.z>=1.0;
    u_xlatb1 = u_xlatb1 || u_xlatb26;
    u_xlat24 = (u_xlatb1) ? 1.0 : u_xlat24;
    u_xlat3.xyz = vs_TEXCOORD1.xyz + (-_WorldSpaceCameraPos.xyz);
    u_xlat1.x = dot(u_xlat3.xyz, u_xlat3.xyz);
    u_xlat26 = u_xlat1.x * _MainLightShadowParams.z + _MainLightShadowParams.w;
    u_xlat26 = clamp(u_xlat26, 0.0, 1.0);
    u_xlat3.x = (-u_xlat24) + 1.0;
    u_xlat24 = u_xlat26 * u_xlat3.x + u_xlat24;
    u_xlat24 = u_xlat24 * unity_LightData.z;
    u_xlat3.xyz = vec3(u_xlat24) * _MainLightColor.xyz;
    u_xlat24 = dot(u_xlat2.xyz, _MainLightPosition.xyz);
    u_xlat24 = clamp(u_xlat24, 0.0, 1.0);
    u_xlat3.xyz = vec3(u_xlat24) * u_xlat3.xyz;
    u_xlat3.xyz = u_xlat1.yzw * u_xlat3.xyz;
    u_xlat24 = min(_AdditionalLightsCount.x, unity_LightData.y);
    u_xlatu24 =  uint(int(u_xlat24));
    u_xlat1.x = u_xlat1.x * _AdditionalShadowFadeParams.x + _AdditionalShadowFadeParams.y;
    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
    u_xlat5.x = float(0.0);
    u_xlat5.y = float(0.0);
    u_xlat5.z = float(0.0);
    for(uint u_xlatu_loop_1 = 0u ; u_xlatu_loop_1<u_xlatu24 ; u_xlatu_loop_1++)
    {
        u_xlatu27 = u_xlatu_loop_1 >> (2u & uint(0x1F));
        u_xlati28 = int(u_xlatu_loop_1 & 3u);
        u_xlat27 = dot(unity_LightIndices[int(u_xlatu27)], uintBitsToFloat(ImmCB_0[u_xlati28]));
        u_xlati27 = int(u_xlat27);
        u_xlat6.xyz = (-vs_TEXCOORD1.xyz) * _AdditionalLightsPosition[u_xlati27].www + _AdditionalLightsPosition[u_xlati27].xyz;
        u_xlat28 = dot(u_xlat6.xyz, u_xlat6.xyz);
        u_xlat28 = max(u_xlat28, 6.10351562e-05);
        u_xlat29 = inversesqrt(u_xlat28);
        u_xlat6.xyz = vec3(u_xlat29) * u_xlat6.xyz;
        u_xlat29 = float(1.0) / float(u_xlat28);
        u_xlat28 = u_xlat28 * _AdditionalLightsAttenuation[u_xlati27].x;
        u_xlat28 = (-u_xlat28) * u_xlat28 + 1.0;
        u_xlat28 = max(u_xlat28, 0.0);
        u_xlat28 = u_xlat28 * u_xlat28;
        u_xlat28 = u_xlat28 * u_xlat29;
        u_xlat29 = dot(_AdditionalLightsSpotDir[u_xlati27].xyz, u_xlat6.xyz);
        u_xlat29 = u_xlat29 * _AdditionalLightsAttenuation[u_xlati27].z + _AdditionalLightsAttenuation[u_xlati27].w;
        u_xlat29 = clamp(u_xlat29, 0.0, 1.0);
        u_xlat29 = u_xlat29 * u_xlat29;
        u_xlat28 = u_xlat28 * u_xlat29;
        u_xlati29 = int(_AdditionalShadowParams[u_xlati27].w);
        u_xlatb30 = u_xlati29>=0;
        if(u_xlatb30){
            u_xlatb30 = vec4(0.0, 0.0, 0.0, 0.0)!=vec4(_AdditionalShadowParams[u_xlati27].z);
            if(u_xlatb30){
                u_xlatb7.xyz = greaterThanEqual(abs(u_xlat6.zzyz), abs(u_xlat6.xyxx)).xyz;
                u_xlatb30 = u_xlatb7.y && u_xlatb7.x;
                u_xlatb7.xyw = lessThan((-u_xlat6.zyzx), vec4(0.0, 0.0, 0.0, 0.0)).xyw;
                u_xlat7.x = (u_xlatb7.x) ? float(5.0) : float(4.0);
                u_xlat7.y = (u_xlatb7.y) ? float(3.0) : float(2.0);
                u_xlat31 = u_xlatb7.w ? 1.0 : float(0.0);
                u_xlat15 = (u_xlatb7.z) ? u_xlat7.y : u_xlat31;
                u_xlat30 = (u_xlatb30) ? u_xlat7.x : u_xlat15;
                u_xlat7.x = trunc(_AdditionalShadowParams[u_xlati27].w);
                u_xlat30 = u_xlat30 + u_xlat7.x;
                u_xlati29 = int(u_xlat30);
            }
            u_xlati29 = u_xlati29 << (2 & int(0x1F));
            u_xlat7 = vs_TEXCOORD1.yyyy * _AdditionalLightsWorldToShadow[(u_xlati29 + 1) / 4][(u_xlati29 + 1) % 4];
            u_xlat7 = _AdditionalLightsWorldToShadow[u_xlati29 / 4][u_xlati29 % 4] * vs_TEXCOORD1.xxxx + u_xlat7;
            u_xlat7 = _AdditionalLightsWorldToShadow[(u_xlati29 + 2) / 4][(u_xlati29 + 2) % 4] * vs_TEXCOORD1.zzzz + u_xlat7;
            u_xlat7 = u_xlat7 + _AdditionalLightsWorldToShadow[(u_xlati29 + 3) / 4][(u_xlati29 + 3) % 4];
            u_xlat7.xyz = u_xlat7.xyz / u_xlat7.www;
            vec3 txVec1 = vec3(u_xlat7.xy,u_xlat7.z);
            u_xlat29 = textureLod(sampler2DShadow(_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare), txVec1, 0.0);
            u_xlat30 = 1.0 + (-_AdditionalShadowParams[u_xlati27].x);
            u_xlat29 = u_xlat29 * _AdditionalShadowParams[u_xlati27].x + u_xlat30;
            u_xlatb30 = 0.0>=u_xlat7.z;
            u_xlatb7.x = u_xlat7.z>=1.0;
            u_xlatb30 = u_xlatb30 || u_xlatb7.x;
            u_xlat29 = (u_xlatb30) ? 1.0 : u_xlat29;
        } else {
            u_xlat29 = 1.0;
        }
        u_xlat30 = (-u_xlat29) + 1.0;
        u_xlat29 = u_xlat1.x * u_xlat30 + u_xlat29;
        u_xlat28 = u_xlat28 * u_xlat29;
        u_xlat7.xyz = vec3(u_xlat28) * _AdditionalLightsColor[u_xlati27].xyz;
        u_xlat27 = dot(u_xlat2.xyz, u_xlat6.xyz);
        u_xlat27 = clamp(u_xlat27, 0.0, 1.0);
        u_xlat6.xyz = vec3(u_xlat27) * u_xlat7.xyz;
        u_xlat5.xyz = u_xlat6.xyz * u_xlat1.yzw + u_xlat5.xyz;
    }
    u_xlat1.xyz = u_xlat4.xyz * u_xlat1.yzw + u_xlat3.xyz;
    u_xlat1.xyz = u_xlat5.xyz + u_xlat1.xyz;
    u_xlat8.x = u_xlat8.x * (-u_xlat8.x);
    u_xlat8.x = exp2(u_xlat8.x);
    u_xlat1.xyz = u_xlat1.xyz + (-unity_FogColor.xyz);
    SV_Target0.xyz = u_xlat8.xxx * u_xlat1.xyz + unity_FogColor.xyz;
    u_xlatb8 = _Surface==1.0;
    u_xlatb8 = u_xlatb8 || u_xlatb16;
    SV_Target0.w = (u_xlatb8) ? u_xlat0.x : 1.0;
    return;
}

