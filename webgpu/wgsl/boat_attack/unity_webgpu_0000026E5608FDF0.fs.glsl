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
layout(set = 0, binding = 0) uniform mediump texture2D _BaseMap;
layout(set = 0, binding = 1) uniform mediump texture2D _MainLightShadowmapTexture;
layout(set = 0, binding = 2) uniform mediump texture2D _AdditionalLightsShadowmapTexture;
layout(location = 0) in highp  vec2 vs_TEXCOORD0;
layout(location = 1) in highp  vec3 vs_TEXCOORD1;
layout(location = 2) in highp  vec3 vs_TEXCOORD2;
layout(location = 3) in highp  vec4 vs_TEXCOORD6;
layout(location = 0) out highp vec4 SV_Target0;
vec4 u_xlat0;
vec4 u_xlat1;
float u_xlat2;
vec3 u_xlat3;
bool u_xlatb3;
vec4 u_xlat4;
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
vec3 u_xlat11;
bool u_xlatb11;
vec3 u_xlat13;
int u_xlati13;
vec3 u_xlat14;
int u_xlati14;
float u_xlat19;
float u_xlat22;
bool u_xlatb22;
float u_xlat25;
uint u_xlatu25;
uint u_xlatu28;
float u_xlat30;
bool u_xlatb30;
layout(set = 0, binding = 3) uniform mediump  sampler sampler_BaseMap;
layout(set = 0, binding = 4) uniform mediump  samplerShadow sampler_LinearClampCompare;
void main()
{
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
    u_xlat25 = u_xlat1.y * u_xlat1.y;
    u_xlat25 = u_xlat1.x * u_xlat1.x + (-u_xlat25);
    u_xlat10.xyz = unity_SHC.xyz * vec3(u_xlat25) + u_xlat5.xyz;
    u_xlat10.xyz = u_xlat10.xyz + u_xlat3.xyz;
    u_xlat10.xyz = max(u_xlat10.xyz, vec3(0.0, 0.0, 0.0));
    vec3 txVec0 = vec3(vs_TEXCOORD6.xy,vs_TEXCOORD6.z);
    u_xlat25 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_LinearClampCompare), txVec0, 0.0);
    u_xlat3.x = (-_MainLightShadowParams.x) + 1.0;
    u_xlat25 = u_xlat25 * _MainLightShadowParams.x + u_xlat3.x;
    u_xlatb3 = 0.0>=vs_TEXCOORD6.z;
    u_xlatb11 = vs_TEXCOORD6.z>=1.0;
    u_xlatb3 = u_xlatb11 || u_xlatb3;
    u_xlat25 = (u_xlatb3) ? 1.0 : u_xlat25;
    u_xlat3.xyz = vs_TEXCOORD1.xyz + (-_WorldSpaceCameraPos.xyz);
    u_xlat3.x = dot(u_xlat3.xyz, u_xlat3.xyz);
    u_xlat11.x = u_xlat3.x * _MainLightShadowParams.z + _MainLightShadowParams.w;
    u_xlat11.x = clamp(u_xlat11.x, 0.0, 1.0);
    u_xlat19 = (-u_xlat25) + 1.0;
    u_xlat25 = u_xlat11.x * u_xlat19 + u_xlat25;
    u_xlat25 = u_xlat25 * unity_LightData.z;
    u_xlat11.xyz = vec3(u_xlat25) * _MainLightColor.xyz;
    u_xlat25 = dot(u_xlat1.xyz, _MainLightPosition.xyz);
    u_xlat25 = clamp(u_xlat25, 0.0, 1.0);
    u_xlat11.xyz = vec3(u_xlat25) * u_xlat11.xyz;
    u_xlat11.xyz = u_xlat0.yzw * u_xlat11.xyz;
    u_xlat25 = min(_AdditionalLightsCount.x, unity_LightData.y);
    u_xlatu25 =  uint(int(u_xlat25));
    u_xlat3.x = u_xlat3.x * _AdditionalShadowFadeParams.x + _AdditionalShadowFadeParams.y;
    u_xlat3.x = clamp(u_xlat3.x, 0.0, 1.0);
    u_xlat4.x = float(0.0);
    u_xlat4.y = float(0.0);
    u_xlat4.z = float(0.0);
    for(uint u_xlatu_loop_1 = uint(0u) ; u_xlatu_loop_1<u_xlatu25 ; u_xlatu_loop_1++)
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
        u_xlat14.x = u_xlat3.x * u_xlat22 + u_xlat14.x;
        u_xlat6.x = u_xlat14.x * u_xlat6.x;
        u_xlat6.xyz = u_xlat6.xxx * _AdditionalLightsColor[u_xlati5].xyz;
        u_xlat5.x = dot(u_xlat1.xyz, u_xlat13.xyz);
        u_xlat5.x = clamp(u_xlat5.x, 0.0, 1.0);
        u_xlat5.xyz = u_xlat5.xxx * u_xlat6.xyz;
        u_xlat4.xyz = u_xlat5.xyz * u_xlat0.yzw + u_xlat4.xyz;
    }
    u_xlat8.xyz = u_xlat10.xyz * u_xlat0.yzw + u_xlat11.xyz;
    u_xlat8.xyz = u_xlat4.xyz + u_xlat8.xyz;
    u_xlat1.x = u_xlat2 * (-u_xlat2);
    u_xlat1.x = exp2(u_xlat1.x);
    u_xlat8.xyz = u_xlat8.xyz + (-unity_FogColor.xyz);
    SV_Target0.xyz = u_xlat1.xxx * u_xlat8.xyz + unity_FogColor.xyz;
    u_xlatb8 = _Surface==1.0;
    SV_Target0.w = (u_xlatb8) ? u_xlat0.x : 1.0;
    return;
}

