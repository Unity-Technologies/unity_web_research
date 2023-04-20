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
layout(set = 0, binding = 0) uniform mediump texture2D unity_Lightmap;
layout(set = 0, binding = 1) uniform mediump texture2D unity_LightmapInd;
layout(set = 0, binding = 2) uniform mediump texture2D _BaseMap;
layout(set = 0, binding = 3) uniform mediump texture2D _MainLightShadowmapTexture;
layout(set = 0, binding = 4) uniform mediump texture2D _AdditionalLightsShadowmapTexture;
layout(set = 0, binding = 5) uniform mediump texture2D _DitheringTexture;
layout(location = 0) in highp  vec2 vs_TEXCOORD0;
layout(location = 1) in highp  vec3 vs_TEXCOORD1;
layout(location = 2) in highp  vec3 vs_TEXCOORD2;
layout(location = 3) in highp  vec2 vs_TEXCOORD7;
layout(location = 0) out highp vec4 SV_Target0;
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
vec3 u_xlat6;
vec4 u_xlat7;
bvec4 u_xlatb7;
vec3 u_xlat8;
int u_xlati8;
uint u_xlatu8;
bool u_xlatb8;
float u_xlat16;
bool u_xlatb16;
float u_xlat24;
bool u_xlatb24;
float u_xlat26;
int u_xlati26;
uint u_xlatu26;
bool u_xlatb26;
float u_xlat27;
int u_xlati27;
float u_xlat28;
int u_xlati28;
float u_xlat29;
bool u_xlatb29;
float u_xlat30;
bool u_xlatb30;
layout(set = 0, binding = 6) uniform mediump  sampler samplerunity_Lightmap;
layout(set = 0, binding = 7) uniform mediump  sampler sampler_BaseMap;
layout(set = 0, binding = 8) uniform mediump  sampler sampler_PointRepeat;
layout(set = 0, binding = 9) uniform mediump  samplerShadow sampler_LinearClampCompare;
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
    u_xlat4 = texture(sampler2D(unity_LightmapInd, samplerunity_Lightmap), vs_TEXCOORD7.xy, _GlobalMipBias.x);
    u_xlat5.xyz = texture(sampler2D(unity_Lightmap, samplerunity_Lightmap), vs_TEXCOORD7.xy, _GlobalMipBias.x).xyz;
    u_xlat4.xyz = u_xlat4.xyz + vec3(-0.5, -0.5, -0.5);
    u_xlat8.x = dot(u_xlat2.xyz, u_xlat4.xyz);
    u_xlat8.x = u_xlat8.x + 0.5;
    u_xlat4.xyz = u_xlat8.xxx * u_xlat5.xyz;
    u_xlat8.x = max(u_xlat4.w, 9.99999975e-05);
    u_xlat4.xyz = u_xlat4.xyz / u_xlat8.xxx;
    vec3 txVec0 = vec3(u_xlat3.xy,u_xlat3.z);
    u_xlat8.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_LinearClampCompare), txVec0, 0.0);
    u_xlat24 = (-_MainLightShadowParams.x) + 1.0;
    u_xlat8.x = u_xlat8.x * _MainLightShadowParams.x + u_xlat24;
    u_xlatb24 = 0.0>=u_xlat3.z;
    u_xlatb1 = u_xlat3.z>=1.0;
    u_xlatb24 = u_xlatb24 || u_xlatb1;
    u_xlat8.x = (u_xlatb24) ? 1.0 : u_xlat8.x;
    u_xlat3.xyz = vs_TEXCOORD1.xyz + (-_WorldSpaceCameraPos.xyz);
    u_xlat24 = dot(u_xlat3.xyz, u_xlat3.xyz);
    u_xlat1.x = u_xlat24 * _MainLightShadowParams.z + _MainLightShadowParams.w;
    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
    u_xlat26 = (-u_xlat8.x) + 1.0;
    u_xlat8.x = u_xlat1.x * u_xlat26 + u_xlat8.x;
    u_xlat8.x = u_xlat8.x * unity_LightData.z;
    u_xlat3.xyz = u_xlat8.xxx * _MainLightColor.xyz;
    u_xlat8.x = dot(u_xlat2.xyz, _MainLightPosition.xyz);
    u_xlat8.x = clamp(u_xlat8.x, 0.0, 1.0);
    u_xlat3.xyz = u_xlat8.xxx * u_xlat3.xyz;
    u_xlat3.xyz = u_xlat1.yzw * u_xlat3.xyz;
    u_xlat8.x = min(_AdditionalLightsCount.x, unity_LightData.y);
    u_xlatu8 =  uint(int(u_xlat8.x));
    u_xlat24 = u_xlat24 * _AdditionalShadowFadeParams.x + _AdditionalShadowFadeParams.y;
    u_xlat24 = clamp(u_xlat24, 0.0, 1.0);
    u_xlat5.x = float(0.0);
    u_xlat5.y = float(0.0);
    u_xlat5.z = float(0.0);
    for(uint u_xlatu_loop_1 = 0u ; u_xlatu_loop_1<u_xlatu8 ; u_xlatu_loop_1++)
    {
        u_xlatu26 = u_xlatu_loop_1 >> (2u & uint(0x1F));
        u_xlati27 = int(u_xlatu_loop_1 & 3u);
        u_xlat26 = dot(unity_LightIndices[int(u_xlatu26)], uintBitsToFloat(ImmCB_0[u_xlati27]));
        u_xlati26 = int(u_xlat26);
        u_xlat6.xyz = (-vs_TEXCOORD1.xyz) * _AdditionalLightsPosition[u_xlati26].www + _AdditionalLightsPosition[u_xlati26].xyz;
        u_xlat27 = dot(u_xlat6.xyz, u_xlat6.xyz);
        u_xlat27 = max(u_xlat27, 6.10351562e-05);
        u_xlat28 = inversesqrt(u_xlat27);
        u_xlat6.xyz = vec3(u_xlat28) * u_xlat6.xyz;
        u_xlat28 = float(1.0) / float(u_xlat27);
        u_xlat27 = u_xlat27 * _AdditionalLightsAttenuation[u_xlati26].x;
        u_xlat27 = (-u_xlat27) * u_xlat27 + 1.0;
        u_xlat27 = max(u_xlat27, 0.0);
        u_xlat27 = u_xlat27 * u_xlat27;
        u_xlat27 = u_xlat27 * u_xlat28;
        u_xlat28 = dot(_AdditionalLightsSpotDir[u_xlati26].xyz, u_xlat6.xyz);
        u_xlat28 = u_xlat28 * _AdditionalLightsAttenuation[u_xlati26].z + _AdditionalLightsAttenuation[u_xlati26].w;
        u_xlat28 = clamp(u_xlat28, 0.0, 1.0);
        u_xlat28 = u_xlat28 * u_xlat28;
        u_xlat27 = u_xlat27 * u_xlat28;
        u_xlati28 = int(_AdditionalShadowParams[u_xlati26].w);
        u_xlatb29 = u_xlati28>=0;
        if(u_xlatb29){
            u_xlatb29 = vec4(0.0, 0.0, 0.0, 0.0)!=vec4(_AdditionalShadowParams[u_xlati26].z);
            if(u_xlatb29){
                u_xlatb7.xyz = greaterThanEqual(abs(u_xlat6.zzyz), abs(u_xlat6.xyxx)).xyz;
                u_xlatb29 = u_xlatb7.y && u_xlatb7.x;
                u_xlatb7.xyw = lessThan((-u_xlat6.zyzx), vec4(0.0, 0.0, 0.0, 0.0)).xyw;
                u_xlat7.x = (u_xlatb7.x) ? float(5.0) : float(4.0);
                u_xlat7.y = (u_xlatb7.y) ? float(3.0) : float(2.0);
                u_xlat30 = u_xlatb7.w ? 1.0 : float(0.0);
                u_xlat30 = (u_xlatb7.z) ? u_xlat7.y : u_xlat30;
                u_xlat29 = (u_xlatb29) ? u_xlat7.x : u_xlat30;
                u_xlat30 = trunc(_AdditionalShadowParams[u_xlati26].w);
                u_xlat29 = u_xlat29 + u_xlat30;
                u_xlati28 = int(u_xlat29);
            }
            u_xlati28 = u_xlati28 << (2 & int(0x1F));
            u_xlat7 = vs_TEXCOORD1.yyyy * _AdditionalLightsWorldToShadow[(u_xlati28 + 1) / 4][(u_xlati28 + 1) % 4];
            u_xlat7 = _AdditionalLightsWorldToShadow[u_xlati28 / 4][u_xlati28 % 4] * vs_TEXCOORD1.xxxx + u_xlat7;
            u_xlat7 = _AdditionalLightsWorldToShadow[(u_xlati28 + 2) / 4][(u_xlati28 + 2) % 4] * vs_TEXCOORD1.zzzz + u_xlat7;
            u_xlat7 = u_xlat7 + _AdditionalLightsWorldToShadow[(u_xlati28 + 3) / 4][(u_xlati28 + 3) % 4];
            u_xlat7.xyz = u_xlat7.xyz / u_xlat7.www;
            vec3 txVec1 = vec3(u_xlat7.xy,u_xlat7.z);
            u_xlat28 = textureLod(sampler2DShadow(_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare), txVec1, 0.0);
            u_xlat29 = 1.0 + (-_AdditionalShadowParams[u_xlati26].x);
            u_xlat28 = u_xlat28 * _AdditionalShadowParams[u_xlati26].x + u_xlat29;
            u_xlatb29 = 0.0>=u_xlat7.z;
            u_xlatb30 = u_xlat7.z>=1.0;
            u_xlatb29 = u_xlatb29 || u_xlatb30;
            u_xlat28 = (u_xlatb29) ? 1.0 : u_xlat28;
        } else {
            u_xlat28 = 1.0;
        }
        u_xlat29 = (-u_xlat28) + 1.0;
        u_xlat28 = u_xlat24 * u_xlat29 + u_xlat28;
        u_xlat27 = u_xlat27 * u_xlat28;
        u_xlat7.xyz = vec3(u_xlat27) * _AdditionalLightsColor[u_xlati26].xyz;
        u_xlat26 = dot(u_xlat2.xyz, u_xlat6.xyz);
        u_xlat26 = clamp(u_xlat26, 0.0, 1.0);
        u_xlat6.xyz = vec3(u_xlat26) * u_xlat7.xyz;
        u_xlat5.xyz = u_xlat6.xyz * u_xlat1.yzw + u_xlat5.xyz;
    }
    u_xlat1.xyz = u_xlat4.xyz * u_xlat1.yzw + u_xlat3.xyz;
    SV_Target0.xyz = u_xlat5.xyz + u_xlat1.xyz;
    u_xlatb8 = _Surface==1.0;
    u_xlatb8 = u_xlatb8 || u_xlatb16;
    SV_Target0.w = (u_xlatb8) ? u_xlat0.x : 1.0;
    return;
}

