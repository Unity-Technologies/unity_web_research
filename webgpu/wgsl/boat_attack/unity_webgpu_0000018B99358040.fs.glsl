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
	vec4 unity_OrthoParams;
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
vec3 u_xlat1;
bool u_xlatb1;
vec3 u_xlat2;
vec4 u_xlat3;
bvec4 u_xlatb3;
vec4 u_xlat4;
vec3 u_xlat5;
uint u_xlatu5;
vec3 u_xlat6;
uint u_xlatu6;
vec3 u_xlat7;
vec4 u_xlat8;
bvec4 u_xlatb8;
vec3 u_xlat9;
bool u_xlatb9;
vec3 u_xlat10;
bool u_xlatb10;
vec3 u_xlat12;
bool u_xlatb12;
vec3 u_xlat14;
vec3 u_xlat15;
int u_xlati15;
uint u_xlatu15;
bool u_xlatb15;
float u_xlat17;
float u_xlat21;
bool u_xlatb21;
float u_xlat24;
int u_xlati24;
float u_xlat28;
float u_xlat29;
int u_xlati29;
uint u_xlatu29;
float u_xlat30;
float u_xlat31;
float u_xlat32;
float u_xlat33;
int u_xlati33;
float u_xlat34;
bool u_xlatb34;
float u_xlat35;
layout(set = 0, binding = 6) uniform mediump  sampler samplerunity_Lightmap;
layout(set = 0, binding = 7) uniform mediump  sampler sampler_BaseMap;
layout(set = 0, binding = 8) uniform mediump  sampler sampler_PointRepeat;
layout(set = 0, binding = 9) uniform mediump  samplerShadow sampler_LinearClampCompare;
void main()
{
vec4 hlslcc_FragCoord = vec4(gl_FragCoord.xyz, 1.0/gl_FragCoord.w);
    u_xlat0 = texture(sampler2D(_BaseMap, sampler_BaseMap), vs_TEXCOORD0.xy, _GlobalMipBias.x);
    u_xlat0 = u_xlat0.wxyz * _BaseColor.wxyz;
    u_xlat1.xy = hlslcc_FragCoord.xy * vec2(_DitheringTextureInvSize);
    u_xlat1.x = texture(sampler2D(_DitheringTexture, sampler_PointRepeat), u_xlat1.xy, _GlobalMipBias.x).w;
    u_xlatb10 = unity_LODFade.x>=0.0;
    u_xlat1.x = (u_xlatb10) ? abs(u_xlat1.x) : -abs(u_xlat1.x);
    u_xlat1.x = (-u_xlat1.x) + unity_LODFade.x;
    u_xlatb1 = u_xlat1.x<0.0;
    if(((int(u_xlatb1) * int(0xffffffffu)))!=0){discard;}
    u_xlatb1 = unity_OrthoParams.w==0.0;
    u_xlat10.xyz = (-vs_TEXCOORD1.xyz) + _WorldSpaceCameraPos.xyz;
    u_xlat2.x = dot(u_xlat10.xyz, u_xlat10.xyz);
    u_xlat2.x = inversesqrt(u_xlat2.x);
    u_xlat10.xyz = u_xlat10.xyz * u_xlat2.xxx;
    u_xlat2.x = unity_MatrixV[0].z;
    u_xlat2.y = unity_MatrixV[1].z;
    u_xlat2.z = unity_MatrixV[2].z;
    u_xlat1.xyz = (bool(u_xlatb1)) ? u_xlat10.xyz : u_xlat2.xyz;
    u_xlat28 = dot(vs_TEXCOORD2.xyz, vs_TEXCOORD2.xyz);
    u_xlat28 = inversesqrt(u_xlat28);
    u_xlat2.xyz = vec3(u_xlat28) * vs_TEXCOORD2.xyz;
    u_xlat28 = dot(u_xlat1.xyz, u_xlat1.xyz);
    u_xlat28 = max(u_xlat28, 6.10351562e-05);
    u_xlat28 = inversesqrt(u_xlat28);
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
    u_xlat29 = dot(u_xlat4, vec4(4.0, 3.0, 2.0, 1.0));
    u_xlat29 = (-u_xlat29) + 4.0;
    u_xlatu29 = uint(u_xlat29);
    u_xlati29 = int(u_xlatu29) << (2 & int(0x1F));
    u_xlat3.xyz = vs_TEXCOORD1.yyy * _MainLightWorldToShadow[(u_xlati29 + 1) / 4][(u_xlati29 + 1) % 4].xyz;
    u_xlat3.xyz = _MainLightWorldToShadow[u_xlati29 / 4][u_xlati29 % 4].xyz * vs_TEXCOORD1.xxx + u_xlat3.xyz;
    u_xlat3.xyz = _MainLightWorldToShadow[(u_xlati29 + 2) / 4][(u_xlati29 + 2) % 4].xyz * vs_TEXCOORD1.zzz + u_xlat3.xyz;
    u_xlat3.xyz = u_xlat3.xyz + _MainLightWorldToShadow[(u_xlati29 + 3) / 4][(u_xlati29 + 3) % 4].xyz;
    u_xlat29 = vs_TEXCOORD1.y * unity_MatrixV[1].z;
    u_xlat29 = unity_MatrixV[0].z * vs_TEXCOORD1.x + u_xlat29;
    u_xlat29 = unity_MatrixV[2].z * vs_TEXCOORD1.z + u_xlat29;
    u_xlat29 = u_xlat29 + unity_MatrixV[3].z;
    u_xlat29 = (-u_xlat29) + (-_ProjectionParams.y);
    u_xlat29 = max(u_xlat29, 0.0);
    u_xlat29 = u_xlat29 * unity_FogParams.x;
    u_xlat4 = texture(sampler2D(unity_LightmapInd, samplerunity_Lightmap), vs_TEXCOORD7.xy, _GlobalMipBias.x);
    u_xlat5.xyz = texture(sampler2D(unity_Lightmap, samplerunity_Lightmap), vs_TEXCOORD7.xy, _GlobalMipBias.x).xyz;
    u_xlat4.xyz = u_xlat4.xyz + vec3(-0.5, -0.5, -0.5);
    u_xlat30 = dot(u_xlat2.xyz, u_xlat4.xyz);
    u_xlat30 = u_xlat30 + 0.5;
    u_xlat4.xyz = vec3(u_xlat30) * u_xlat5.xyz;
    u_xlat30 = max(u_xlat4.w, 9.99999975e-05);
    u_xlat4.xyz = u_xlat4.xyz / vec3(u_xlat30);
    vec3 txVec0 = vec3(u_xlat3.xy,u_xlat3.z);
    u_xlat3.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_LinearClampCompare), txVec0, 0.0);
    u_xlat12.x = (-_MainLightShadowParams.x) + 1.0;
    u_xlat3.x = u_xlat3.x * _MainLightShadowParams.x + u_xlat12.x;
    u_xlatb12 = 0.0>=u_xlat3.z;
    u_xlatb21 = u_xlat3.z>=1.0;
    u_xlatb12 = u_xlatb21 || u_xlatb12;
    u_xlat3.x = (u_xlatb12) ? 1.0 : u_xlat3.x;
    u_xlat12.xyz = vs_TEXCOORD1.xyz + (-_WorldSpaceCameraPos.xyz);
    u_xlat12.x = dot(u_xlat12.xyz, u_xlat12.xyz);
    u_xlat21 = u_xlat12.x * _MainLightShadowParams.z + _MainLightShadowParams.w;
    u_xlat21 = clamp(u_xlat21, 0.0, 1.0);
    u_xlat30 = (-u_xlat3.x) + 1.0;
    u_xlat3.x = u_xlat21 * u_xlat30 + u_xlat3.x;
    u_xlat3.x = u_xlat3.x * unity_LightData.z;
    u_xlat3.xzw = u_xlat3.xxx * _MainLightColor.xyz;
    u_xlat31 = dot(u_xlat2.xyz, _MainLightPosition.xyz);
    u_xlat31 = clamp(u_xlat31, 0.0, 1.0);
    u_xlat5.xyz = u_xlat3.xzw * vec3(u_xlat31);
    u_xlat31 = u_xlat0.x * 10.0 + 1.0;
    u_xlat31 = exp2(u_xlat31);
    u_xlat6.xyz = u_xlat1.xyz * vec3(u_xlat28) + _MainLightPosition.xyz;
    u_xlat32 = dot(u_xlat6.xyz, u_xlat6.xyz);
    u_xlat32 = max(u_xlat32, 1.17549435e-38);
    u_xlat32 = inversesqrt(u_xlat32);
    u_xlat6.xyz = vec3(u_xlat32) * u_xlat6.xyz;
    u_xlat32 = dot(u_xlat2.xyz, u_xlat6.xyz);
    u_xlat32 = clamp(u_xlat32, 0.0, 1.0);
    u_xlat32 = log2(u_xlat32);
    u_xlat32 = u_xlat31 * u_xlat32;
    u_xlat32 = exp2(u_xlat32);
    u_xlat6.xyz = vec3(u_xlat32) * _SpecColor.xyz;
    u_xlat3.xzw = u_xlat3.xzw * u_xlat6.xyz;
    u_xlat3.xzw = u_xlat5.xyz * u_xlat0.yzw + u_xlat3.xzw;
    u_xlat5.x = min(_AdditionalLightsCount.x, unity_LightData.y);
    u_xlatu5 =  uint(int(u_xlat5.x));
    u_xlat12.x = u_xlat12.x * _AdditionalShadowFadeParams.x + _AdditionalShadowFadeParams.y;
    u_xlat12.x = clamp(u_xlat12.x, 0.0, 1.0);
    u_xlat14.x = float(0.0);
    u_xlat14.y = float(0.0);
    u_xlat14.z = float(0.0);
    for(uint u_xlatu_loop_1 = 0u ; u_xlatu_loop_1<u_xlatu5 ; u_xlatu_loop_1++)
    {
        u_xlatu15 = u_xlatu_loop_1 >> (2u & uint(0x1F));
        u_xlati24 = int(u_xlatu_loop_1 & 3u);
        u_xlat15.x = dot(unity_LightIndices[int(u_xlatu15)], uintBitsToFloat(ImmCB_0[u_xlati24]));
        u_xlati15 = int(u_xlat15.x);
        u_xlat7.xyz = (-vs_TEXCOORD1.xyz) * _AdditionalLightsPosition[u_xlati15].www + _AdditionalLightsPosition[u_xlati15].xyz;
        u_xlat24 = dot(u_xlat7.xyz, u_xlat7.xyz);
        u_xlat24 = max(u_xlat24, 6.10351562e-05);
        u_xlat33 = inversesqrt(u_xlat24);
        u_xlat7.xyz = vec3(u_xlat33) * u_xlat7.xyz;
        u_xlat33 = float(1.0) / float(u_xlat24);
        u_xlat24 = u_xlat24 * _AdditionalLightsAttenuation[u_xlati15].x;
        u_xlat24 = (-u_xlat24) * u_xlat24 + 1.0;
        u_xlat24 = max(u_xlat24, 0.0);
        u_xlat24 = u_xlat24 * u_xlat24;
        u_xlat24 = u_xlat24 * u_xlat33;
        u_xlat33 = dot(_AdditionalLightsSpotDir[u_xlati15].xyz, u_xlat7.xyz);
        u_xlat33 = u_xlat33 * _AdditionalLightsAttenuation[u_xlati15].z + _AdditionalLightsAttenuation[u_xlati15].w;
        u_xlat33 = clamp(u_xlat33, 0.0, 1.0);
        u_xlat33 = u_xlat33 * u_xlat33;
        u_xlat24 = u_xlat33 * u_xlat24;
        u_xlati33 = int(_AdditionalShadowParams[u_xlati15].w);
        u_xlatb34 = u_xlati33>=0;
        if(u_xlatb34){
            u_xlatb34 = vec4(0.0, 0.0, 0.0, 0.0)!=vec4(_AdditionalShadowParams[u_xlati15].z);
            if(u_xlatb34){
                u_xlatb8.xyz = greaterThanEqual(abs(u_xlat7.zzyz), abs(u_xlat7.xyxx)).xyz;
                u_xlatb34 = u_xlatb8.y && u_xlatb8.x;
                u_xlatb8.xyw = lessThan((-u_xlat7.zyzx), vec4(0.0, 0.0, 0.0, 0.0)).xyw;
                u_xlat8.x = (u_xlatb8.x) ? float(5.0) : float(4.0);
                u_xlat8.y = (u_xlatb8.y) ? float(3.0) : float(2.0);
                u_xlat35 = u_xlatb8.w ? 1.0 : float(0.0);
                u_xlat17 = (u_xlatb8.z) ? u_xlat8.y : u_xlat35;
                u_xlat34 = (u_xlatb34) ? u_xlat8.x : u_xlat17;
                u_xlat8.x = trunc(_AdditionalShadowParams[u_xlati15].w);
                u_xlat34 = u_xlat34 + u_xlat8.x;
                u_xlati33 = int(u_xlat34);
            }
            u_xlati33 = u_xlati33 << (2 & int(0x1F));
            u_xlat8 = vs_TEXCOORD1.yyyy * _AdditionalLightsWorldToShadow[(u_xlati33 + 1) / 4][(u_xlati33 + 1) % 4];
            u_xlat8 = _AdditionalLightsWorldToShadow[u_xlati33 / 4][u_xlati33 % 4] * vs_TEXCOORD1.xxxx + u_xlat8;
            u_xlat8 = _AdditionalLightsWorldToShadow[(u_xlati33 + 2) / 4][(u_xlati33 + 2) % 4] * vs_TEXCOORD1.zzzz + u_xlat8;
            u_xlat8 = u_xlat8 + _AdditionalLightsWorldToShadow[(u_xlati33 + 3) / 4][(u_xlati33 + 3) % 4];
            u_xlat8.xyz = u_xlat8.xyz / u_xlat8.www;
            vec3 txVec1 = vec3(u_xlat8.xy,u_xlat8.z);
            u_xlat33 = textureLod(sampler2DShadow(_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare), txVec1, 0.0);
            u_xlat34 = 1.0 + (-_AdditionalShadowParams[u_xlati15].x);
            u_xlat33 = u_xlat33 * _AdditionalShadowParams[u_xlati15].x + u_xlat34;
            u_xlatb34 = 0.0>=u_xlat8.z;
            u_xlatb8.x = u_xlat8.z>=1.0;
            u_xlatb34 = u_xlatb34 || u_xlatb8.x;
            u_xlat33 = (u_xlatb34) ? 1.0 : u_xlat33;
        } else {
            u_xlat33 = 1.0;
        }
        u_xlat34 = (-u_xlat33) + 1.0;
        u_xlat33 = u_xlat12.x * u_xlat34 + u_xlat33;
        u_xlat24 = u_xlat33 * u_xlat24;
        u_xlat15.xyz = vec3(u_xlat24) * _AdditionalLightsColor[u_xlati15].xyz;
        u_xlat34 = dot(u_xlat2.xyz, u_xlat7.xyz);
        u_xlat34 = clamp(u_xlat34, 0.0, 1.0);
        u_xlat8.xyz = u_xlat15.xyz * vec3(u_xlat34);
        u_xlat7.xyz = u_xlat1.xyz * vec3(u_xlat28) + u_xlat7.xyz;
        u_xlat34 = dot(u_xlat7.xyz, u_xlat7.xyz);
        u_xlat34 = max(u_xlat34, 1.17549435e-38);
        u_xlat34 = inversesqrt(u_xlat34);
        u_xlat7.xyz = vec3(u_xlat34) * u_xlat7.xyz;
        u_xlat7.x = dot(u_xlat2.xyz, u_xlat7.xyz);
        u_xlat7.x = clamp(u_xlat7.x, 0.0, 1.0);
        u_xlat7.x = log2(u_xlat7.x);
        u_xlat7.x = u_xlat31 * u_xlat7.x;
        u_xlat7.x = exp2(u_xlat7.x);
        u_xlat7.xyz = u_xlat7.xxx * _SpecColor.xyz;
        u_xlat15.xyz = u_xlat15.xyz * u_xlat7.xyz;
        u_xlat15.xyz = u_xlat8.xyz * u_xlat0.yzw + u_xlat15.xyz;
        u_xlat14.xyz = u_xlat14.xyz + u_xlat15.xyz;
    }
    u_xlat9.xyz = u_xlat4.xyz * u_xlat0.yzw + u_xlat3.xzw;
    u_xlat9.xyz = u_xlat14.xyz + u_xlat9.xyz;
    u_xlat1.x = u_xlat29 * (-u_xlat29);
    u_xlat1.x = exp2(u_xlat1.x);
    u_xlat9.xyz = u_xlat9.xyz + (-unity_FogColor.xyz);
    SV_Target0.xyz = u_xlat1.xxx * u_xlat9.xyz + unity_FogColor.xyz;
    u_xlatb9 = _Surface==1.0;
    SV_Target0.w = (u_xlatb9) ? u_xlat0.x : 1.0;
    return;
}

