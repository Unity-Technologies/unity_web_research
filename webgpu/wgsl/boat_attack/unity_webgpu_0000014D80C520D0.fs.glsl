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
	vec4 unity_OrthoParams;
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
layout(set = 0, binding = 1) uniform mediump texture2D unity_Lightmap;
layout(set = 0, binding = 2) uniform mediump texture2D unity_LightmapInd;
layout(set = 0, binding = 3) uniform mediump texture2D _BaseMap;
layout(set = 0, binding = 4) uniform mediump texture2D _MainLightShadowmapTexture;
layout(set = 0, binding = 5) uniform mediump texture2D _AdditionalLightsShadowmapTexture;
layout(location = 0) in highp  vec2 vs_TEXCOORD0;
layout(location = 1) in highp  vec3 vs_TEXCOORD1;
layout(location = 2) in highp  vec3 vs_TEXCOORD2;
layout(location = 3) in highp  vec4 vs_TEXCOORD6;
layout(location = 4) in highp  vec2 vs_TEXCOORD8;
layout(location = 0) out highp vec4 SV_Target0;
vec4 u_xlat0;
bool u_xlatb0;
vec4 u_xlat1;
vec3 u_xlat2;
vec3 u_xlat3;
vec4 u_xlat4;
vec3 u_xlat5;
vec4 u_xlat6;
vec2 u_xlat7;
vec3 u_xlat8;
int u_xlati8;
float u_xlat9;
vec4 u_xlat10;
int u_xlati10;
vec4 u_xlat11;
bvec3 u_xlatb11;
vec3 u_xlat13;
vec3 u_xlat17;
vec3 u_xlat19;
vec3 u_xlat21;
float u_xlat22;
bvec3 u_xlatb22;
float u_xlat29;
bool u_xlatb29;
float u_xlat34;
bool u_xlatb34;
float u_xlat36;
uint u_xlatu36;
bool u_xlatb36;
float u_xlat38;
float u_xlat39;
uint u_xlatu39;
float u_xlat40;
float u_xlat41;
bool u_xlatb41;
float u_xlat42;
int u_xlati42;
uint u_xlatu42;
bool u_xlatb42;
float u_xlat44;
layout(set = 0, binding = 6) uniform mediump  sampler samplerunity_SpecCube0;
layout(set = 0, binding = 7) uniform mediump  sampler samplerunity_Lightmap;
layout(set = 0, binding = 8) uniform mediump  sampler sampler_BaseMap;
layout(set = 0, binding = 9) uniform mediump  samplerShadow sampler_LinearClampCompare;
void main()
{
    u_xlat0 = texture(sampler2D(_BaseMap, sampler_BaseMap), vs_TEXCOORD0.xy, _GlobalMipBias.x);
    u_xlat1 = u_xlat0.wxyz * _BaseColor.wxyz;
    u_xlatb36 = unity_OrthoParams.w==0.0;
    u_xlat2.xyz = (-vs_TEXCOORD1.xyz) + _WorldSpaceCameraPos.xyz;
    u_xlat38 = dot(u_xlat2.xyz, u_xlat2.xyz);
    u_xlat38 = inversesqrt(u_xlat38);
    u_xlat2.xyz = vec3(u_xlat38) * u_xlat2.xyz;
    u_xlat3.x = (u_xlatb36) ? u_xlat2.x : unity_MatrixV[0].z;
    u_xlat3.y = (u_xlatb36) ? u_xlat2.y : unity_MatrixV[1].z;
    u_xlat3.z = (u_xlatb36) ? u_xlat2.z : unity_MatrixV[2].z;
    u_xlat36 = dot(vs_TEXCOORD2.xyz, vs_TEXCOORD2.xyz);
    u_xlat36 = inversesqrt(u_xlat36);
    u_xlat2.xyz = vec3(u_xlat36) * vs_TEXCOORD2.xyz;
    u_xlat4 = texture(sampler2D(unity_LightmapInd, samplerunity_Lightmap), vs_TEXCOORD8.xy, _GlobalMipBias.x);
    u_xlat5.xyz = texture(sampler2D(unity_Lightmap, samplerunity_Lightmap), vs_TEXCOORD8.xy, _GlobalMipBias.x).xyz;
    u_xlat4.xyz = u_xlat4.xyz + vec3(-0.5, -0.5, -0.5);
    u_xlat36 = dot(u_xlat2.xyz, u_xlat4.xyz);
    u_xlat36 = u_xlat36 + 0.5;
    u_xlat4.xyz = vec3(u_xlat36) * u_xlat5.xyz;
    u_xlat36 = max(u_xlat4.w, 9.99999975e-05);
    u_xlat4.xyz = u_xlat4.xyz / vec3(u_xlat36);
    u_xlat36 = (-_Metallic) * 0.959999979 + 0.959999979;
    u_xlat38 = (-u_xlat36) + _Smoothness;
    u_xlat13.xyz = vec3(u_xlat36) * u_xlat1.yzw;
    u_xlat0.xyz = u_xlat0.xyz * _BaseColor.xyz + vec3(-0.0399999991, -0.0399999991, -0.0399999991);
    u_xlat0.xyz = vec3(vec3(_Metallic, _Metallic, _Metallic)) * u_xlat0.xyz + vec3(0.0399999991, 0.0399999991, 0.0399999991);
    u_xlat36 = (-_Smoothness) + 1.0;
    u_xlat39 = u_xlat36 * u_xlat36;
    u_xlat39 = max(u_xlat39, 0.0078125);
    u_xlat40 = u_xlat39 * u_xlat39;
    u_xlat38 = u_xlat38 + 1.0;
    u_xlat38 = clamp(u_xlat38, 0.0, 1.0);
    u_xlat5.x = u_xlat39 * 4.0 + 2.0;
    vec3 txVec0 = vec3(vs_TEXCOORD6.xy,vs_TEXCOORD6.z);
    u_xlat17.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_LinearClampCompare), txVec0, 0.0);
    u_xlat29 = (-_MainLightShadowParams.x) + 1.0;
    u_xlat17.x = u_xlat17.x * _MainLightShadowParams.x + u_xlat29;
    u_xlatb29 = 0.0>=vs_TEXCOORD6.z;
    u_xlatb41 = vs_TEXCOORD6.z>=1.0;
    u_xlatb29 = u_xlatb41 || u_xlatb29;
    u_xlat17.x = (u_xlatb29) ? 1.0 : u_xlat17.x;
    u_xlat6.xyz = vs_TEXCOORD1.xyz + (-_WorldSpaceCameraPos.xyz);
    u_xlat29 = dot(u_xlat6.xyz, u_xlat6.xyz);
    u_xlat41 = u_xlat29 * _MainLightShadowParams.z + _MainLightShadowParams.w;
    u_xlat41 = clamp(u_xlat41, 0.0, 1.0);
    u_xlat6.x = (-u_xlat17.x) + 1.0;
    u_xlat17.x = u_xlat41 * u_xlat6.x + u_xlat17.x;
    u_xlat41 = dot((-u_xlat3.xyz), u_xlat2.xyz);
    u_xlat41 = u_xlat41 + u_xlat41;
    u_xlat6.xyz = u_xlat2.xyz * (-vec3(u_xlat41)) + (-u_xlat3.xyz);
    u_xlat41 = dot(u_xlat2.xyz, u_xlat3.xyz);
    u_xlat41 = clamp(u_xlat41, 0.0, 1.0);
    u_xlat41 = (-u_xlat41) + 1.0;
    u_xlat41 = u_xlat41 * u_xlat41;
    u_xlat41 = u_xlat41 * u_xlat41;
    u_xlat42 = (-u_xlat36) * 0.699999988 + 1.70000005;
    u_xlat36 = u_xlat36 * u_xlat42;
    u_xlat36 = u_xlat36 * 6.0;
    u_xlat6 = textureLod(samplerCube(unity_SpecCube0, samplerunity_SpecCube0), u_xlat6.xyz, u_xlat36);
    u_xlat36 = u_xlat6.w + -1.0;
    u_xlat36 = unity_SpecCube0_HDR.w * u_xlat36 + 1.0;
    u_xlat36 = max(u_xlat36, 0.0);
    u_xlat36 = log2(u_xlat36);
    u_xlat36 = u_xlat36 * unity_SpecCube0_HDR.y;
    u_xlat36 = exp2(u_xlat36);
    u_xlat36 = u_xlat36 * unity_SpecCube0_HDR.x;
    u_xlat6.xyz = u_xlat6.xyz * vec3(u_xlat36);
    u_xlat7.xy = vec2(u_xlat39) * vec2(u_xlat39) + vec2(-1.0, 1.0);
    u_xlat36 = float(1.0) / u_xlat7.y;
    u_xlat19.xyz = (-u_xlat0.xyz) + vec3(u_xlat38);
    u_xlat19.xyz = vec3(u_xlat41) * u_xlat19.xyz + u_xlat0.xyz;
    u_xlat19.xyz = vec3(u_xlat36) * u_xlat19.xyz;
    u_xlat6.xyz = u_xlat6.xyz * u_xlat19.xyz;
    u_xlat4.xyz = u_xlat4.xyz * u_xlat13.xyz + u_xlat6.xyz;
    u_xlat36 = u_xlat17.x * unity_LightData.z;
    u_xlat38 = dot(u_xlat2.xyz, _MainLightPosition.xyz);
    u_xlat38 = clamp(u_xlat38, 0.0, 1.0);
    u_xlat36 = u_xlat36 * u_xlat38;
    u_xlat6.xyz = vec3(u_xlat36) * _MainLightColor.xyz;
    u_xlat19.xyz = u_xlat3.xyz + _MainLightPosition.xyz;
    u_xlat36 = dot(u_xlat19.xyz, u_xlat19.xyz);
    u_xlat36 = max(u_xlat36, 1.17549435e-38);
    u_xlat36 = inversesqrt(u_xlat36);
    u_xlat19.xyz = vec3(u_xlat36) * u_xlat19.xyz;
    u_xlat36 = dot(u_xlat2.xyz, u_xlat19.xyz);
    u_xlat36 = clamp(u_xlat36, 0.0, 1.0);
    u_xlat38 = dot(_MainLightPosition.xyz, u_xlat19.xyz);
    u_xlat38 = clamp(u_xlat38, 0.0, 1.0);
    u_xlat36 = u_xlat36 * u_xlat36;
    u_xlat36 = u_xlat36 * u_xlat7.x + 1.00001001;
    u_xlat38 = u_xlat38 * u_xlat38;
    u_xlat36 = u_xlat36 * u_xlat36;
    u_xlat38 = max(u_xlat38, 0.100000001);
    u_xlat36 = u_xlat36 * u_xlat38;
    u_xlat36 = u_xlat5.x * u_xlat36;
    u_xlat36 = u_xlat40 / u_xlat36;
    u_xlat19.xyz = u_xlat0.xyz * vec3(u_xlat36) + u_xlat13.xyz;
    u_xlat36 = min(_AdditionalLightsCount.x, unity_LightData.y);
    u_xlatu36 =  uint(int(u_xlat36));
    u_xlat38 = u_xlat29 * _AdditionalShadowFadeParams.x + _AdditionalShadowFadeParams.y;
    u_xlat38 = clamp(u_xlat38, 0.0, 1.0);
    u_xlat17.x = float(0.0);
    u_xlat17.y = float(0.0);
    u_xlat17.z = float(0.0);
    for(uint u_xlatu_loop_1 = 0u ; u_xlatu_loop_1<u_xlatu36 ; u_xlatu_loop_1++)
    {
        u_xlatu42 = u_xlatu_loop_1 >> (2u & uint(0x1F));
        u_xlati8 = int(u_xlatu_loop_1 & 3u);
        u_xlat42 = dot(unity_LightIndices[int(u_xlatu42)], uintBitsToFloat(ImmCB_0[u_xlati8]));
        u_xlati42 = int(u_xlat42);
        u_xlat8.xyz = (-vs_TEXCOORD1.xyz) * _AdditionalLightsPosition[u_xlati42].www + _AdditionalLightsPosition[u_xlati42].xyz;
        u_xlat44 = dot(u_xlat8.xyz, u_xlat8.xyz);
        u_xlat44 = max(u_xlat44, 6.10351562e-05);
        u_xlat9 = inversesqrt(u_xlat44);
        u_xlat21.xyz = u_xlat8.xyz * vec3(u_xlat9);
        u_xlat10.x = float(1.0) / float(u_xlat44);
        u_xlat44 = u_xlat44 * _AdditionalLightsAttenuation[u_xlati42].x;
        u_xlat44 = (-u_xlat44) * u_xlat44 + 1.0;
        u_xlat44 = max(u_xlat44, 0.0);
        u_xlat44 = u_xlat44 * u_xlat44;
        u_xlat44 = u_xlat44 * u_xlat10.x;
        u_xlat10.x = dot(_AdditionalLightsSpotDir[u_xlati42].xyz, u_xlat21.xyz);
        u_xlat10.x = u_xlat10.x * _AdditionalLightsAttenuation[u_xlati42].z + _AdditionalLightsAttenuation[u_xlati42].w;
        u_xlat10.x = clamp(u_xlat10.x, 0.0, 1.0);
        u_xlat10.x = u_xlat10.x * u_xlat10.x;
        u_xlat44 = u_xlat44 * u_xlat10.x;
        u_xlati10 = int(_AdditionalShadowParams[u_xlati42].w);
        u_xlatb22.x = u_xlati10>=0;
        if(u_xlatb22.x){
            u_xlatb22.x = vec4(0.0, 0.0, 0.0, 0.0)!=vec4(_AdditionalShadowParams[u_xlati42].z);
            if(u_xlatb22.x){
                u_xlatb22.xyz = greaterThanEqual(abs(u_xlat21.zzyy), abs(u_xlat21.xyxx)).xyz;
                u_xlatb22.x = u_xlatb22.y && u_xlatb22.x;
                u_xlatb11.xyz = lessThan((-u_xlat21.zyxz), vec4(0.0, 0.0, 0.0, 0.0)).xyz;
                u_xlat11.x = (u_xlatb11.x) ? float(5.0) : float(4.0);
                u_xlat11.y = (u_xlatb11.y) ? float(3.0) : float(2.0);
                u_xlat34 = u_xlatb11.z ? 1.0 : float(0.0);
                u_xlat34 = (u_xlatb22.z) ? u_xlat11.y : u_xlat34;
                u_xlat22 = (u_xlatb22.x) ? u_xlat11.x : u_xlat34;
                u_xlat34 = trunc(_AdditionalShadowParams[u_xlati42].w);
                u_xlat22 = u_xlat22 + u_xlat34;
                u_xlati10 = int(u_xlat22);
            }
            u_xlati10 = u_xlati10 << (2 & int(0x1F));
            u_xlat11 = vs_TEXCOORD1.yyyy * _AdditionalLightsWorldToShadow[(u_xlati10 + 1) / 4][(u_xlati10 + 1) % 4];
            u_xlat11 = _AdditionalLightsWorldToShadow[u_xlati10 / 4][u_xlati10 % 4] * vs_TEXCOORD1.xxxx + u_xlat11;
            u_xlat11 = _AdditionalLightsWorldToShadow[(u_xlati10 + 2) / 4][(u_xlati10 + 2) % 4] * vs_TEXCOORD1.zzzz + u_xlat11;
            u_xlat10 = u_xlat11 + _AdditionalLightsWorldToShadow[(u_xlati10 + 3) / 4][(u_xlati10 + 3) % 4];
            u_xlat10.xyz = u_xlat10.xyz / u_xlat10.www;
            vec3 txVec1 = vec3(u_xlat10.xy,u_xlat10.z);
            u_xlat10.x = textureLod(sampler2DShadow(_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare), txVec1, 0.0);
            u_xlat22 = 1.0 + (-_AdditionalShadowParams[u_xlati42].x);
            u_xlat10.x = u_xlat10.x * _AdditionalShadowParams[u_xlati42].x + u_xlat22;
            u_xlatb22.x = 0.0>=u_xlat10.z;
            u_xlatb34 = u_xlat10.z>=1.0;
            u_xlatb22.x = u_xlatb34 || u_xlatb22.x;
            u_xlat10.x = (u_xlatb22.x) ? 1.0 : u_xlat10.x;
        } else {
            u_xlat10.x = 1.0;
        }
        u_xlat22 = (-u_xlat10.x) + 1.0;
        u_xlat10.x = u_xlat38 * u_xlat22 + u_xlat10.x;
        u_xlat44 = u_xlat44 * u_xlat10.x;
        u_xlat10.x = dot(u_xlat2.xyz, u_xlat21.xyz);
        u_xlat10.x = clamp(u_xlat10.x, 0.0, 1.0);
        u_xlat44 = u_xlat44 * u_xlat10.x;
        u_xlat10.xyz = vec3(u_xlat44) * _AdditionalLightsColor[u_xlati42].xyz;
        u_xlat8.xyz = u_xlat8.xyz * vec3(u_xlat9) + u_xlat3.xyz;
        u_xlat42 = dot(u_xlat8.xyz, u_xlat8.xyz);
        u_xlat42 = max(u_xlat42, 1.17549435e-38);
        u_xlat42 = inversesqrt(u_xlat42);
        u_xlat8.xyz = vec3(u_xlat42) * u_xlat8.xyz;
        u_xlat42 = dot(u_xlat2.xyz, u_xlat8.xyz);
        u_xlat42 = clamp(u_xlat42, 0.0, 1.0);
        u_xlat8.x = dot(u_xlat21.xyz, u_xlat8.xyz);
        u_xlat8.x = clamp(u_xlat8.x, 0.0, 1.0);
        u_xlat42 = u_xlat42 * u_xlat42;
        u_xlat42 = u_xlat42 * u_xlat7.x + 1.00001001;
        u_xlat8.x = u_xlat8.x * u_xlat8.x;
        u_xlat42 = u_xlat42 * u_xlat42;
        u_xlat8.x = max(u_xlat8.x, 0.100000001);
        u_xlat42 = u_xlat42 * u_xlat8.x;
        u_xlat42 = u_xlat5.x * u_xlat42;
        u_xlat42 = u_xlat40 / u_xlat42;
        u_xlat8.xyz = u_xlat0.xyz * vec3(u_xlat42) + u_xlat13.xyz;
        u_xlat17.xyz = u_xlat8.xyz * u_xlat10.xyz + u_xlat17.xyz;
    }
    u_xlat0.xyz = u_xlat19.xyz * u_xlat6.xyz + u_xlat4.xyz;
    SV_Target0.xyz = u_xlat17.xyz + u_xlat0.xyz;
    u_xlatb0 = _Surface==1.0;
    SV_Target0.w = (u_xlatb0) ? u_xlat1.x : 1.0;
    return;
}

