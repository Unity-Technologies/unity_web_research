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
	vec2 _GlobalMipBias;
	vec4 _MainLightPosition;
	vec4 _MainLightColor;
	vec4 _AdditionalLightsCount;
	vec3 _WorldSpaceCameraPos;
	vec4 _ProjectionParams;
	vec4 unity_FogParams;
	vec4 unity_FogColor;
	mat4x4 unity_MatrixV;
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
layout(location = 0) in highp  vec2 vs_TEXCOORD0;
layout(location = 1) in highp  vec3 vs_TEXCOORD1;
layout(location = 2) in highp  vec3 vs_TEXCOORD2;
layout(location = 3) in highp  vec2 vs_TEXCOORD7;
layout(location = 0) out highp vec4 SV_Target0;
vec4 u_xlat0;
vec3 u_xlat1;
vec4 u_xlat2;
bvec4 u_xlatb2;
vec4 u_xlat3;
vec3 u_xlat4;
vec3 u_xlat5;
int u_xlati5;
uint u_xlatu5;
bool u_xlatb5;
vec3 u_xlat6;
vec4 u_xlat7;
bvec4 u_xlatb7;
vec3 u_xlat8;
bool u_xlatb8;
vec3 u_xlat10;
bool u_xlatb10;
vec3 u_xlat13;
int u_xlati13;
vec3 u_xlat14;
int u_xlati14;
float u_xlat18;
bool u_xlatb18;
float u_xlat22;
bool u_xlatb22;
float u_xlat25;
int u_xlati25;
uint u_xlatu25;
float u_xlat26;
float u_xlat27;
uint u_xlatu27;
uint u_xlatu28;
float u_xlat30;
bool u_xlatb30;
layout(set = 0, binding = 5) uniform mediump  sampler samplerunity_Lightmap;
layout(set = 0, binding = 6) uniform mediump  sampler sampler_BaseMap;
layout(set = 0, binding = 7) uniform mediump  samplerShadow sampler_LinearClampCompare;
void main()
{
    u_xlat0 = texture(sampler2D(_BaseMap, sampler_BaseMap), vs_TEXCOORD0.xy, _GlobalMipBias.x);
    u_xlat0 = u_xlat0.wxyz * _BaseColor.wxyz;
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
    u_xlat25 = dot(u_xlat3, vec4(4.0, 3.0, 2.0, 1.0));
    u_xlat25 = (-u_xlat25) + 4.0;
    u_xlatu25 = uint(u_xlat25);
    u_xlati25 = int(u_xlatu25) << (2 & int(0x1F));
    u_xlat2.xyz = vs_TEXCOORD1.yyy * _MainLightWorldToShadow[(u_xlati25 + 1) / 4][(u_xlati25 + 1) % 4].xyz;
    u_xlat2.xyz = _MainLightWorldToShadow[u_xlati25 / 4][u_xlati25 % 4].xyz * vs_TEXCOORD1.xxx + u_xlat2.xyz;
    u_xlat2.xyz = _MainLightWorldToShadow[(u_xlati25 + 2) / 4][(u_xlati25 + 2) % 4].xyz * vs_TEXCOORD1.zzz + u_xlat2.xyz;
    u_xlat2.xyz = u_xlat2.xyz + _MainLightWorldToShadow[(u_xlati25 + 3) / 4][(u_xlati25 + 3) % 4].xyz;
    u_xlat25 = vs_TEXCOORD1.y * unity_MatrixV[1].z;
    u_xlat25 = unity_MatrixV[0].z * vs_TEXCOORD1.x + u_xlat25;
    u_xlat25 = unity_MatrixV[2].z * vs_TEXCOORD1.z + u_xlat25;
    u_xlat25 = u_xlat25 + unity_MatrixV[3].z;
    u_xlat25 = (-u_xlat25) + (-_ProjectionParams.y);
    u_xlat25 = max(u_xlat25, 0.0);
    u_xlat25 = u_xlat25 * unity_FogParams.x;
    u_xlat3 = texture(sampler2D(unity_LightmapInd, samplerunity_Lightmap), vs_TEXCOORD7.xy, _GlobalMipBias.x);
    u_xlat4.xyz = texture(sampler2D(unity_Lightmap, samplerunity_Lightmap), vs_TEXCOORD7.xy, _GlobalMipBias.x).xyz;
    u_xlat3.xyz = u_xlat3.xyz + vec3(-0.5, -0.5, -0.5);
    u_xlat26 = dot(u_xlat1.xyz, u_xlat3.xyz);
    u_xlat26 = u_xlat26 + 0.5;
    u_xlat3.xyz = vec3(u_xlat26) * u_xlat4.xyz;
    u_xlat26 = max(u_xlat3.w, 9.99999975e-05);
    u_xlat3.xyz = u_xlat3.xyz / vec3(u_xlat26);
    vec3 txVec0 = vec3(u_xlat2.xy,u_xlat2.z);
    u_xlat2.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_LinearClampCompare), txVec0, 0.0);
    u_xlat10.x = (-_MainLightShadowParams.x) + 1.0;
    u_xlat2.x = u_xlat2.x * _MainLightShadowParams.x + u_xlat10.x;
    u_xlatb10 = 0.0>=u_xlat2.z;
    u_xlatb18 = u_xlat2.z>=1.0;
    u_xlatb10 = u_xlatb18 || u_xlatb10;
    u_xlat2.x = (u_xlatb10) ? 1.0 : u_xlat2.x;
    u_xlat10.xyz = vs_TEXCOORD1.xyz + (-_WorldSpaceCameraPos.xyz);
    u_xlat10.x = dot(u_xlat10.xyz, u_xlat10.xyz);
    u_xlat18 = u_xlat10.x * _MainLightShadowParams.z + _MainLightShadowParams.w;
    u_xlat18 = clamp(u_xlat18, 0.0, 1.0);
    u_xlat26 = (-u_xlat2.x) + 1.0;
    u_xlat2.x = u_xlat18 * u_xlat26 + u_xlat2.x;
    u_xlat2.x = u_xlat2.x * unity_LightData.z;
    u_xlat2.xzw = u_xlat2.xxx * _MainLightColor.xyz;
    u_xlat27 = dot(u_xlat1.xyz, _MainLightPosition.xyz);
    u_xlat27 = clamp(u_xlat27, 0.0, 1.0);
    u_xlat2.xzw = u_xlat2.xzw * vec3(u_xlat27);
    u_xlat2.xzw = u_xlat0.yzw * u_xlat2.xzw;
    u_xlat27 = min(_AdditionalLightsCount.x, unity_LightData.y);
    u_xlatu27 =  uint(int(u_xlat27));
    u_xlat10.x = u_xlat10.x * _AdditionalShadowFadeParams.x + _AdditionalShadowFadeParams.y;
    u_xlat10.x = clamp(u_xlat10.x, 0.0, 1.0);
    u_xlat4.x = float(0.0);
    u_xlat4.y = float(0.0);
    u_xlat4.z = float(0.0);
    for(uint u_xlatu_loop_1 = uint(0u) ; u_xlatu_loop_1<u_xlatu27 ; u_xlatu_loop_1++)
    {
        u_xlatu5 = u_xlatu_loop_1 >> (2u & uint(0x1F));
        u_xlati13 = int(u_xlatu_loop_1 & 3u);
        u_xlat5.x = dot(unity_LightIndices[int(u_xlatu5)], uintBitsToFloat(ImmCB_0[u_xlati13]));
        u_xlati5 = int(u_xlat5.x);
        u_xlat13.xyz = (-vs_TEXCOORD1.xyz) * _AdditionalLightsPosition[u_xlati5].www + _AdditionalLightsPosition[u_xlati5].xyz;
        u_xlat6.x = dot(u_xlat13.xyz, u_xlat13.xyz);
        u_xlat6.x = max(u_xlat6.x, 6.10351562e-05);
        u_xlat14.x = inversesqrt(u_xlat6.x);
        u_xlat13.xyz = u_xlat13.xyz * u_xlat14.xxx;
        u_xlat14.x = float(1.0) / float(u_xlat6.x);
        u_xlat6.x = u_xlat6.x * _AdditionalLightsAttenuation[u_xlati5].x;
        u_xlat6.x = (-u_xlat6.x) * u_xlat6.x + 1.0;
        u_xlat6.x = max(u_xlat6.x, 0.0);
        u_xlat6.x = u_xlat6.x * u_xlat6.x;
        u_xlat6.x = u_xlat6.x * u_xlat14.x;
        u_xlat14.x = dot(_AdditionalLightsSpotDir[u_xlati5].xyz, u_xlat13.xyz);
        u_xlat14.x = u_xlat14.x * _AdditionalLightsAttenuation[u_xlati5].z + _AdditionalLightsAttenuation[u_xlati5].w;
        u_xlat14.x = clamp(u_xlat14.x, 0.0, 1.0);
        u_xlat14.x = u_xlat14.x * u_xlat14.x;
        u_xlat6.x = u_xlat14.x * u_xlat6.x;
        u_xlati14 = int(_AdditionalShadowParams[u_xlati5].w);
        u_xlatb22 = u_xlati14>=0;
        if(u_xlatb22){
            u_xlatb22 = vec4(0.0, 0.0, 0.0, 0.0)!=vec4(_AdditionalShadowParams[u_xlati5].z);
            if(u_xlatb22){
                u_xlatb7.xyz = greaterThanEqual(abs(u_xlat13.zzyz), abs(u_xlat13.xyxx)).xyz;
                u_xlatb22 = u_xlatb7.y && u_xlatb7.x;
                u_xlatb7.xyw = lessThan((-u_xlat13.zyzx), vec4(0.0, 0.0, 0.0, 0.0)).xyw;
                u_xlat7.x = (u_xlatb7.x) ? float(5.0) : float(4.0);
                u_xlat7.y = (u_xlatb7.y) ? float(3.0) : float(2.0);
                u_xlat30 = u_xlatb7.w ? 1.0 : float(0.0);
                u_xlat30 = (u_xlatb7.z) ? u_xlat7.y : u_xlat30;
                u_xlat22 = (u_xlatb22) ? u_xlat7.x : u_xlat30;
                u_xlat30 = trunc(_AdditionalShadowParams[u_xlati5].w);
                u_xlat22 = u_xlat22 + u_xlat30;
                u_xlati14 = int(u_xlat22);
            }
            u_xlati14 = u_xlati14 << (2 & int(0x1F));
            u_xlat7 = vs_TEXCOORD1.yyyy * _AdditionalLightsWorldToShadow[(u_xlati14 + 1) / 4][(u_xlati14 + 1) % 4];
            u_xlat7 = _AdditionalLightsWorldToShadow[u_xlati14 / 4][u_xlati14 % 4] * vs_TEXCOORD1.xxxx + u_xlat7;
            u_xlat7 = _AdditionalLightsWorldToShadow[(u_xlati14 + 2) / 4][(u_xlati14 + 2) % 4] * vs_TEXCOORD1.zzzz + u_xlat7;
            u_xlat7 = u_xlat7 + _AdditionalLightsWorldToShadow[(u_xlati14 + 3) / 4][(u_xlati14 + 3) % 4];
            u_xlat14.xyz = u_xlat7.xyz / u_xlat7.www;
            vec3 txVec1 = vec3(u_xlat14.xy,u_xlat14.z);
            u_xlat14.x = textureLod(sampler2DShadow(_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare), txVec1, 0.0);
            u_xlat22 = 1.0 + (-_AdditionalShadowParams[u_xlati5].x);
            u_xlat14.x = u_xlat14.x * _AdditionalShadowParams[u_xlati5].x + u_xlat22;
            u_xlatb22 = 0.0>=u_xlat14.z;
            u_xlatb30 = u_xlat14.z>=1.0;
            u_xlatb22 = u_xlatb30 || u_xlatb22;
            u_xlat14.x = (u_xlatb22) ? 1.0 : u_xlat14.x;
        } else {
            u_xlat14.x = 1.0;
        }
        u_xlat22 = (-u_xlat14.x) + 1.0;
        u_xlat14.x = u_xlat10.x * u_xlat22 + u_xlat14.x;
        u_xlat6.x = u_xlat14.x * u_xlat6.x;
        u_xlat6.xyz = u_xlat6.xxx * _AdditionalLightsColor[u_xlati5].xyz;
        u_xlat5.x = dot(u_xlat1.xyz, u_xlat13.xyz);
        u_xlat5.x = clamp(u_xlat5.x, 0.0, 1.0);
        u_xlat5.xyz = u_xlat5.xxx * u_xlat6.xyz;
        u_xlat4.xyz = u_xlat5.xyz * u_xlat0.yzw + u_xlat4.xyz;
    }
    u_xlat8.xyz = u_xlat3.xyz * u_xlat0.yzw + u_xlat2.xzw;
    u_xlat8.xyz = u_xlat4.xyz + u_xlat8.xyz;
    u_xlat1.x = u_xlat25 * (-u_xlat25);
    u_xlat1.x = exp2(u_xlat1.x);
    u_xlat8.xyz = u_xlat8.xyz + (-unity_FogColor.xyz);
    SV_Target0.xyz = u_xlat1.xxx * u_xlat8.xyz + unity_FogColor.xyz;
    u_xlatb8 = _Surface==1.0;
    SV_Target0.w = (u_xlatb8) ? u_xlat0.x : 1.0;
    return;
}

