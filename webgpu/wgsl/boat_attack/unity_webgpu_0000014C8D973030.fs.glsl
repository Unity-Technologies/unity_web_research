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
	vec4 _DetailAlbedoMap_ST;
	vec4 _BaseColor;
	vec4 _SpecColor;
	vec4 _EmissionColor;
	float _Cutoff;
	float _Smoothness;
	float _Metallic;
	float _BumpScale;
	float _Parallax;
	float _OcclusionStrength;
	float _ClearCoatMask;
	float _ClearCoatSmoothness;
	float _DetailAlbedoMapScale;
	float _DetailNormalMapScale;
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
layout(set = 0, binding = 0) uniform mediump textureCube unity_SpecCube0;
layout(set = 0, binding = 1) uniform mediump texture2D _BaseMap;
layout(set = 0, binding = 2) uniform mediump texture2D _MainLightShadowmapTexture;
layout(set = 0, binding = 3) uniform mediump texture2D _AdditionalLightsShadowmapTexture;
layout(set = 0, binding = 4) uniform mediump texture2D _DitheringTexture;
layout(location = 0) in highp  vec2 vs_TEXCOORD0;
layout(location = 1) in highp  vec3 vs_TEXCOORD1;
layout(location = 2) in highp  vec3 vs_TEXCOORD2;
layout(location = 3) in highp  vec4 vs_TEXCOORD6;
layout(location = 0) out highp vec4 SV_Target0;
vec4 u_xlat0;
bool u_xlatb0;
vec4 u_xlat1;
vec3 u_xlat2;
bool u_xlatb2;
vec4 u_xlat3;
vec3 u_xlat4;
vec4 u_xlat5;
vec3 u_xlat6;
bool u_xlatb6;
vec4 u_xlat7;
vec3 u_xlat8;
vec3 u_xlat9;
vec3 u_xlat10;
vec4 u_xlat11;
bvec4 u_xlatb11;
vec3 u_xlat13;
float u_xlat17;
float u_xlat18;
vec3 u_xlat19;
vec2 u_xlat29;
int u_xlati29;
uint u_xlatu29;
bool u_xlatb29;
float u_xlat36;
bool u_xlatb36;
float u_xlat38;
uint u_xlatu38;
float u_xlat39;
float u_xlat40;
uint u_xlatu40;
float u_xlat41;
int u_xlati41;
bool u_xlatb41;
float u_xlat42;
float u_xlat44;
int u_xlati44;
float u_xlat45;
bool u_xlatb45;
float u_xlat46;
bool u_xlatb46;
layout(set = 0, binding = 5) uniform mediump  sampler samplerunity_SpecCube0;
layout(set = 0, binding = 6) uniform mediump  sampler sampler_BaseMap;
layout(set = 0, binding = 7) uniform mediump  sampler sampler_PointRepeat;
layout(set = 0, binding = 8) uniform mediump  samplerShadow sampler_LinearClampCompare;
void main()
{
vec4 hlslcc_FragCoord = vec4(gl_FragCoord.xyz, 1.0/gl_FragCoord.w);
    u_xlat0 = texture(sampler2D(_BaseMap, sampler_BaseMap), vs_TEXCOORD0.xy, _GlobalMipBias.x);
    u_xlat1 = u_xlat0.wxyz * _BaseColor.wxyz;
    u_xlat2.xy = hlslcc_FragCoord.xy * vec2(_DitheringTextureInvSize);
    u_xlat36 = texture(sampler2D(_DitheringTexture, sampler_PointRepeat), u_xlat2.xy, _GlobalMipBias.x).w;
    u_xlatb2 = unity_LODFade.x>=0.0;
    u_xlat36 = (u_xlatb2) ? abs(u_xlat36) : -abs(u_xlat36);
    u_xlat36 = (-u_xlat36) + unity_LODFade.x;
    u_xlatb36 = u_xlat36<0.0;
    if(((int(u_xlatb36) * int(0xffffffffu)))!=0){discard;}
    u_xlatb36 = unity_OrthoParams.w==0.0;
    u_xlat2.xyz = (-vs_TEXCOORD1.xyz) + _WorldSpaceCameraPos.xyz;
    u_xlat38 = dot(u_xlat2.xyz, u_xlat2.xyz);
    u_xlat38 = inversesqrt(u_xlat38);
    u_xlat2.xyz = vec3(u_xlat38) * u_xlat2.xyz;
    u_xlat3.x = unity_MatrixV[0].z;
    u_xlat3.y = unity_MatrixV[1].z;
    u_xlat3.z = unity_MatrixV[2].z;
    u_xlat2.xyz = (bool(u_xlatb36)) ? u_xlat2.xyz : u_xlat3.xyz;
    u_xlat36 = dot(vs_TEXCOORD2.xyz, vs_TEXCOORD2.xyz);
    u_xlat36 = inversesqrt(u_xlat36);
    u_xlat3.xyz = vec3(u_xlat36) * vs_TEXCOORD2.xyz;
    u_xlat36 = vs_TEXCOORD1.y * unity_MatrixV[1].z;
    u_xlat36 = unity_MatrixV[0].z * vs_TEXCOORD1.x + u_xlat36;
    u_xlat36 = unity_MatrixV[2].z * vs_TEXCOORD1.z + u_xlat36;
    u_xlat36 = u_xlat36 + unity_MatrixV[3].z;
    u_xlat36 = (-u_xlat36) + (-_ProjectionParams.y);
    u_xlat36 = max(u_xlat36, 0.0);
    u_xlat36 = u_xlat36 * unity_FogParams.x;
    u_xlat3.w = 1.0;
    u_xlat4.x = dot(unity_SHAr, u_xlat3);
    u_xlat4.y = dot(unity_SHAg, u_xlat3);
    u_xlat4.z = dot(unity_SHAb, u_xlat3);
    u_xlat5 = u_xlat3.yzzx * u_xlat3.xyzz;
    u_xlat6.x = dot(unity_SHBr, u_xlat5);
    u_xlat6.y = dot(unity_SHBg, u_xlat5);
    u_xlat6.z = dot(unity_SHBb, u_xlat5);
    u_xlat38 = u_xlat3.y * u_xlat3.y;
    u_xlat38 = u_xlat3.x * u_xlat3.x + (-u_xlat38);
    u_xlat5.xyz = unity_SHC.xyz * vec3(u_xlat38) + u_xlat6.xyz;
    u_xlat4.xyz = u_xlat4.xyz + u_xlat5.xyz;
    u_xlat4.xyz = max(u_xlat4.xyz, vec3(0.0, 0.0, 0.0));
    u_xlat38 = (-_Metallic) * 0.959999979 + 0.959999979;
    u_xlat39 = (-u_xlat38) + _Smoothness;
    u_xlat13.xyz = u_xlat1.yzw * vec3(u_xlat38);
    u_xlat0.xyz = u_xlat0.xyz * _BaseColor.xyz + vec3(-0.0399999991, -0.0399999991, -0.0399999991);
    u_xlat0.xyz = vec3(vec3(_Metallic, _Metallic, _Metallic)) * u_xlat0.xyz + vec3(0.0399999991, 0.0399999991, 0.0399999991);
    u_xlat38 = (-_Smoothness) + 1.0;
    u_xlat40 = u_xlat38 * u_xlat38;
    u_xlat40 = max(u_xlat40, 0.0078125);
    u_xlat5.x = u_xlat40 * u_xlat40;
    u_xlat39 = u_xlat39 + 1.0;
    u_xlat39 = clamp(u_xlat39, 0.0, 1.0);
    u_xlat17 = u_xlat40 * 4.0 + 2.0;
    vec3 txVec0 = vec3(vs_TEXCOORD6.xy,vs_TEXCOORD6.z);
    u_xlat29.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_LinearClampCompare), txVec0, 0.0);
    u_xlat41 = (-_MainLightShadowParams.x) + 1.0;
    u_xlat29.x = u_xlat29.x * _MainLightShadowParams.x + u_xlat41;
    u_xlatb41 = 0.0>=vs_TEXCOORD6.z;
    u_xlatb6 = vs_TEXCOORD6.z>=1.0;
    u_xlatb41 = u_xlatb41 || u_xlatb6;
    u_xlat29.x = (u_xlatb41) ? 1.0 : u_xlat29.x;
    u_xlat6.xyz = vs_TEXCOORD1.xyz + (-_WorldSpaceCameraPos.xyz);
    u_xlat41 = dot(u_xlat6.xyz, u_xlat6.xyz);
    u_xlat6.x = u_xlat41 * _MainLightShadowParams.z + _MainLightShadowParams.w;
    u_xlat6.x = clamp(u_xlat6.x, 0.0, 1.0);
    u_xlat18 = (-u_xlat29.x) + 1.0;
    u_xlat29.x = u_xlat6.x * u_xlat18 + u_xlat29.x;
    u_xlat6.x = dot((-u_xlat2.xyz), u_xlat3.xyz);
    u_xlat6.x = u_xlat6.x + u_xlat6.x;
    u_xlat6.xyz = u_xlat3.xyz * (-u_xlat6.xxx) + (-u_xlat2.xyz);
    u_xlat42 = dot(u_xlat3.xyz, u_xlat2.xyz);
    u_xlat42 = clamp(u_xlat42, 0.0, 1.0);
    u_xlat42 = (-u_xlat42) + 1.0;
    u_xlat42 = u_xlat42 * u_xlat42;
    u_xlat42 = u_xlat42 * u_xlat42;
    u_xlat7.x = (-u_xlat38) * 0.699999988 + 1.70000005;
    u_xlat38 = u_xlat38 * u_xlat7.x;
    u_xlat38 = u_xlat38 * 6.0;
    u_xlat7 = textureLod(samplerCube(unity_SpecCube0, samplerunity_SpecCube0), u_xlat6.xyz, u_xlat38);
    u_xlat38 = u_xlat7.w + -1.0;
    u_xlat38 = unity_SpecCube0_HDR.w * u_xlat38 + 1.0;
    u_xlat38 = max(u_xlat38, 0.0);
    u_xlat38 = log2(u_xlat38);
    u_xlat38 = u_xlat38 * unity_SpecCube0_HDR.y;
    u_xlat38 = exp2(u_xlat38);
    u_xlat38 = u_xlat38 * unity_SpecCube0_HDR.x;
    u_xlat6.xyz = u_xlat7.xyz * vec3(u_xlat38);
    u_xlat7.xy = vec2(u_xlat40) * vec2(u_xlat40) + vec2(-1.0, 1.0);
    u_xlat38 = float(1.0) / u_xlat7.y;
    u_xlat19.xyz = (-u_xlat0.xyz) + vec3(u_xlat39);
    u_xlat19.xyz = vec3(u_xlat42) * u_xlat19.xyz + u_xlat0.xyz;
    u_xlat19.xyz = vec3(u_xlat38) * u_xlat19.xyz;
    u_xlat6.xyz = u_xlat6.xyz * u_xlat19.xyz;
    u_xlat4.xyz = u_xlat4.xyz * u_xlat13.xyz + u_xlat6.xyz;
    u_xlat38 = u_xlat29.x * unity_LightData.z;
    u_xlat39 = dot(u_xlat3.xyz, _MainLightPosition.xyz);
    u_xlat39 = clamp(u_xlat39, 0.0, 1.0);
    u_xlat38 = u_xlat38 * u_xlat39;
    u_xlat6.xyz = vec3(u_xlat38) * _MainLightColor.xyz;
    u_xlat19.xyz = u_xlat2.xyz + _MainLightPosition.xyz;
    u_xlat38 = dot(u_xlat19.xyz, u_xlat19.xyz);
    u_xlat38 = max(u_xlat38, 1.17549435e-38);
    u_xlat38 = inversesqrt(u_xlat38);
    u_xlat19.xyz = vec3(u_xlat38) * u_xlat19.xyz;
    u_xlat38 = dot(u_xlat3.xyz, u_xlat19.xyz);
    u_xlat38 = clamp(u_xlat38, 0.0, 1.0);
    u_xlat39 = dot(_MainLightPosition.xyz, u_xlat19.xyz);
    u_xlat39 = clamp(u_xlat39, 0.0, 1.0);
    u_xlat38 = u_xlat38 * u_xlat38;
    u_xlat38 = u_xlat38 * u_xlat7.x + 1.00001001;
    u_xlat39 = u_xlat39 * u_xlat39;
    u_xlat38 = u_xlat38 * u_xlat38;
    u_xlat39 = max(u_xlat39, 0.100000001);
    u_xlat38 = u_xlat38 * u_xlat39;
    u_xlat38 = u_xlat17 * u_xlat38;
    u_xlat38 = u_xlat5.x / u_xlat38;
    u_xlat19.xyz = u_xlat0.xyz * vec3(u_xlat38) + u_xlat13.xyz;
    u_xlat38 = min(_AdditionalLightsCount.x, unity_LightData.y);
    u_xlatu38 =  uint(int(u_xlat38));
    u_xlat39 = u_xlat41 * _AdditionalShadowFadeParams.x + _AdditionalShadowFadeParams.y;
    u_xlat39 = clamp(u_xlat39, 0.0, 1.0);
    u_xlat8.x = float(0.0);
    u_xlat8.y = float(0.0);
    u_xlat8.z = float(0.0);
    for(uint u_xlatu_loop_1 = 0u ; u_xlatu_loop_1<u_xlatu38 ; u_xlatu_loop_1++)
    {
        u_xlatu29 = u_xlatu_loop_1 >> (2u & uint(0x1F));
        u_xlati41 = int(u_xlatu_loop_1 & 3u);
        u_xlat29.x = dot(unity_LightIndices[int(u_xlatu29)], uintBitsToFloat(ImmCB_0[u_xlati41]));
        u_xlati29 = int(u_xlat29.x);
        u_xlat9.xyz = (-vs_TEXCOORD1.xyz) * _AdditionalLightsPosition[u_xlati29].www + _AdditionalLightsPosition[u_xlati29].xyz;
        u_xlat41 = dot(u_xlat9.xyz, u_xlat9.xyz);
        u_xlat41 = max(u_xlat41, 6.10351562e-05);
        u_xlat42 = inversesqrt(u_xlat41);
        u_xlat10.xyz = vec3(u_xlat42) * u_xlat9.xyz;
        u_xlat44 = float(1.0) / float(u_xlat41);
        u_xlat41 = u_xlat41 * _AdditionalLightsAttenuation[u_xlati29].x;
        u_xlat41 = (-u_xlat41) * u_xlat41 + 1.0;
        u_xlat41 = max(u_xlat41, 0.0);
        u_xlat41 = u_xlat41 * u_xlat41;
        u_xlat41 = u_xlat41 * u_xlat44;
        u_xlat44 = dot(_AdditionalLightsSpotDir[u_xlati29].xyz, u_xlat10.xyz);
        u_xlat44 = u_xlat44 * _AdditionalLightsAttenuation[u_xlati29].z + _AdditionalLightsAttenuation[u_xlati29].w;
        u_xlat44 = clamp(u_xlat44, 0.0, 1.0);
        u_xlat44 = u_xlat44 * u_xlat44;
        u_xlat41 = u_xlat41 * u_xlat44;
        u_xlati44 = int(_AdditionalShadowParams[u_xlati29].w);
        u_xlatb45 = u_xlati44>=0;
        if(u_xlatb45){
            u_xlatb45 = vec4(0.0, 0.0, 0.0, 0.0)!=vec4(_AdditionalShadowParams[u_xlati29].z);
            if(u_xlatb45){
                u_xlatb11.xyz = greaterThanEqual(abs(u_xlat10.zzyz), abs(u_xlat10.xyxx)).xyz;
                u_xlatb45 = u_xlatb11.y && u_xlatb11.x;
                u_xlatb11.xyw = lessThan((-u_xlat10.zyzx), vec4(0.0, 0.0, 0.0, 0.0)).xyw;
                u_xlat11.x = (u_xlatb11.x) ? float(5.0) : float(4.0);
                u_xlat11.y = (u_xlatb11.y) ? float(3.0) : float(2.0);
                u_xlat46 = u_xlatb11.w ? 1.0 : float(0.0);
                u_xlat46 = (u_xlatb11.z) ? u_xlat11.y : u_xlat46;
                u_xlat45 = (u_xlatb45) ? u_xlat11.x : u_xlat46;
                u_xlat46 = trunc(_AdditionalShadowParams[u_xlati29].w);
                u_xlat45 = u_xlat45 + u_xlat46;
                u_xlati44 = int(u_xlat45);
            }
            u_xlati44 = u_xlati44 << (2 & int(0x1F));
            u_xlat11 = vs_TEXCOORD1.yyyy * _AdditionalLightsWorldToShadow[(u_xlati44 + 1) / 4][(u_xlati44 + 1) % 4];
            u_xlat11 = _AdditionalLightsWorldToShadow[u_xlati44 / 4][u_xlati44 % 4] * vs_TEXCOORD1.xxxx + u_xlat11;
            u_xlat11 = _AdditionalLightsWorldToShadow[(u_xlati44 + 2) / 4][(u_xlati44 + 2) % 4] * vs_TEXCOORD1.zzzz + u_xlat11;
            u_xlat11 = u_xlat11 + _AdditionalLightsWorldToShadow[(u_xlati44 + 3) / 4][(u_xlati44 + 3) % 4];
            u_xlat11.xyz = u_xlat11.xyz / u_xlat11.www;
            vec3 txVec1 = vec3(u_xlat11.xy,u_xlat11.z);
            u_xlat44 = textureLod(sampler2DShadow(_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare), txVec1, 0.0);
            u_xlat45 = 1.0 + (-_AdditionalShadowParams[u_xlati29].x);
            u_xlat44 = u_xlat44 * _AdditionalShadowParams[u_xlati29].x + u_xlat45;
            u_xlatb45 = 0.0>=u_xlat11.z;
            u_xlatb46 = u_xlat11.z>=1.0;
            u_xlatb45 = u_xlatb45 || u_xlatb46;
            u_xlat44 = (u_xlatb45) ? 1.0 : u_xlat44;
        } else {
            u_xlat44 = 1.0;
        }
        u_xlat45 = (-u_xlat44) + 1.0;
        u_xlat44 = u_xlat39 * u_xlat45 + u_xlat44;
        u_xlat41 = u_xlat41 * u_xlat44;
        u_xlat44 = dot(u_xlat3.xyz, u_xlat10.xyz);
        u_xlat44 = clamp(u_xlat44, 0.0, 1.0);
        u_xlat41 = u_xlat41 * u_xlat44;
        u_xlat11.xyz = vec3(u_xlat41) * _AdditionalLightsColor[u_xlati29].xyz;
        u_xlat9.xyz = u_xlat9.xyz * vec3(u_xlat42) + u_xlat2.xyz;
        u_xlat29.x = dot(u_xlat9.xyz, u_xlat9.xyz);
        u_xlat29.x = max(u_xlat29.x, 1.17549435e-38);
        u_xlat29.x = inversesqrt(u_xlat29.x);
        u_xlat9.xyz = u_xlat29.xxx * u_xlat9.xyz;
        u_xlat29.x = dot(u_xlat3.xyz, u_xlat9.xyz);
        u_xlat29.x = clamp(u_xlat29.x, 0.0, 1.0);
        u_xlat29.y = dot(u_xlat10.xyz, u_xlat9.xyz);
        u_xlat29.y = clamp(u_xlat29.y, 0.0, 1.0);
        u_xlat29.xy = u_xlat29.xy * u_xlat29.xy;
        u_xlat29.x = u_xlat29.x * u_xlat7.x + 1.00001001;
        u_xlat29.x = u_xlat29.x * u_xlat29.x;
        u_xlat41 = max(u_xlat29.y, 0.100000001);
        u_xlat29.x = u_xlat41 * u_xlat29.x;
        u_xlat29.x = u_xlat17 * u_xlat29.x;
        u_xlat29.x = u_xlat5.x / u_xlat29.x;
        u_xlat9.xyz = u_xlat0.xyz * u_xlat29.xxx + u_xlat13.xyz;
        u_xlat8.xyz = u_xlat9.xyz * u_xlat11.xyz + u_xlat8.xyz;
    }
    u_xlat0.xyz = u_xlat19.xyz * u_xlat6.xyz + u_xlat4.xyz;
    u_xlat0.xyz = u_xlat8.xyz + u_xlat0.xyz;
    u_xlat36 = u_xlat36 * (-u_xlat36);
    u_xlat36 = exp2(u_xlat36);
    u_xlat0.xyz = u_xlat0.xyz + (-unity_FogColor.xyz);
    SV_Target0.xyz = vec3(u_xlat36) * u_xlat0.xyz + unity_FogColor.xyz;
    u_xlatb0 = _Surface==1.0;
    SV_Target0.w = (u_xlatb0) ? u_xlat1.x : 1.0;
    return;
}

