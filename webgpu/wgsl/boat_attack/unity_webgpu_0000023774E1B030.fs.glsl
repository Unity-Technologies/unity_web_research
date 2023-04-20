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
layout(set = 1, binding = 3, std140) uniform LightShadows {
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
layout(set = 1, binding = 4, std140) uniform UnityPerMaterial {
	vec4 Texture2D_B222E8F_TexelSize;
	vec4 Color_C30C7CA3;
	vec4 Texture2D_D9BFD5F1_TexelSize;
};
layout(set = 0, binding = 0) uniform mediump textureCube unity_SpecCube0;
layout(set = 0, binding = 1) uniform mediump texture2D unity_Lightmap;
layout(set = 0, binding = 2) uniform mediump texture2D unity_LightmapInd;
layout(set = 0, binding = 3) uniform mediump texture2D _MainLightShadowmapTexture;
layout(set = 0, binding = 4) uniform mediump texture2D _AdditionalLightsShadowmapTexture;
layout(set = 0, binding = 5) uniform mediump texture2D Texture2D_B222E8F;
layout(set = 0, binding = 6) uniform mediump texture2D Texture2D_D9BFD5F1;
layout(location = 0) in highp  vec2 vs_INTERP0;
layout(location = 1) in highp  vec4 vs_INTERP3;
layout(location = 2) in highp  vec4 vs_INTERP4;
layout(location = 3) in highp  vec4 vs_INTERP5;
layout(location = 4) in highp  vec4 vs_INTERP6;
layout(location = 5) in highp  vec3 vs_INTERP8;
layout(location = 6) in highp  vec3 vs_INTERP9;
layout(location = 0) out highp vec4 SV_Target0;
vec3 u_xlat0;
vec4 u_xlat1;
bvec3 u_xlatb1;
vec3 u_xlat2;
vec4 u_xlat3;
vec4 u_xlat4;
bool u_xlatb4;
vec3 u_xlat5;
vec3 u_xlat6;
int u_xlati6;
uint u_xlatu6;
bool u_xlatb6;
vec3 u_xlat7;
vec4 u_xlat8;
vec3 u_xlat9;
vec4 u_xlat10;
bvec3 u_xlatb10;
float u_xlat11;
bvec3 u_xlatb11;
vec3 u_xlat12;
float u_xlat13;
bool u_xlatb13;
vec3 u_xlat15;
bool u_xlatb15;
float u_xlat16;
uint u_xlatu16;
bool u_xlatb16;
vec3 u_xlat18;
bool u_xlatb18;
float u_xlat19;
vec3 u_xlat22;
bool u_xlatb22;
float u_xlat25;
float u_xlat27;
float u_xlat28;
float u_xlat30;
float u_xlat34;
float u_xlat36;
bool u_xlatb36;
float u_xlat38;
uint u_xlatu38;
float u_xlat39;
float u_xlat40;
float u_xlat41;
float u_xlat43;
int u_xlati43;
float u_xlat44;
float u_xlat45;
int u_xlati45;
layout(set = 0, binding = 7) uniform mediump  sampler samplerunity_SpecCube0;
layout(set = 0, binding = 8) uniform mediump  sampler samplerunity_Lightmap;
layout(set = 0, binding = 9) uniform mediump  samplerShadow sampler_LinearClampCompare;
layout(set = 0, binding = 10) uniform mediump  sampler samplerTexture2D_B222E8F;
layout(set = 0, binding = 11) uniform mediump  sampler samplerTexture2D_D9BFD5F1;
void main()
{
    u_xlat0.x = dot(vs_INTERP9.xyz, vs_INTERP9.xyz);
    u_xlat0.x = sqrt(u_xlat0.x);
    u_xlat0.x = float(1.0) / u_xlat0.x;
    u_xlat0.xyz = u_xlat0.xxx * vs_INTERP9.xyz;
    u_xlat1 = texture(sampler2D(Texture2D_B222E8F, samplerTexture2D_B222E8F), vs_INTERP5.xy, _GlobalMipBias.x);
    u_xlat2.xyz = u_xlat1.xyz * Color_C30C7CA3.xyz;
    u_xlat3 = texture(sampler2D(Texture2D_D9BFD5F1, samplerTexture2D_D9BFD5F1), vs_INTERP5.xy, _GlobalMipBias.x).wxyz;
    u_xlat4 = u_xlat3.yzwx * vec4(2.0, 2.0, 2.0, 2.0) + vec4(-1.0, -1.0, -1.0, -1.0);
    u_xlat36 = dot(u_xlat4, u_xlat4);
    u_xlat36 = inversesqrt(u_xlat36);
    u_xlat15.xyz = vec3(u_xlat36) * u_xlat4.xyz;
    u_xlat36 = vs_INTERP6.y * 200.0;
    u_xlat36 = min(u_xlat36, 1.0);
    u_xlat1.xyz = vec3(u_xlat36) * u_xlat1.xyz;
    u_xlat4.xyz = vs_INTERP8.yyy * _MainLightWorldToShadow[1 / 4][1 % 4].xyz;
    u_xlat4.xyz = _MainLightWorldToShadow[0 / 4][0 % 4].xyz * vs_INTERP8.xxx + u_xlat4.xyz;
    u_xlat4.xyz = _MainLightWorldToShadow[2 / 4][2 % 4].xyz * vs_INTERP8.zzz + u_xlat4.xyz;
    u_xlat4.xyz = u_xlat4.xyz + _MainLightWorldToShadow[3 / 4][3 % 4].xyz;
    vec3 txVec0 = vec3(u_xlat4.xy,u_xlat4.z);
    u_xlat36 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_LinearClampCompare), txVec0, 0.0);
    u_xlat38 = (-_MainLightShadowParams.x) + 1.0;
    u_xlat36 = u_xlat36 * _MainLightShadowParams.x + u_xlat38;
    u_xlatb4 = 0.0>=u_xlat4.z;
    u_xlatb16 = u_xlat4.z>=1.0;
    u_xlatb4 = u_xlatb16 || u_xlatb4;
    u_xlat36 = (u_xlatb4) ? 1.0 : u_xlat36;
    u_xlat0.x = dot(u_xlat0.xyz, (-_MainLightPosition.xyz));
    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
    u_xlat12.xyz = vec3(u_xlat36) * _MainLightColor.xyz;
    u_xlat0.xyz = u_xlat12.xyz * u_xlat0.xxx;
    u_xlat0.xyz = u_xlat0.xyz * u_xlat1.xyz;
    u_xlatb36 = u_xlat1.w>=0.400000006;
    u_xlat36 = u_xlatb36 ? u_xlat1.w : float(0.0);
    u_xlat1.x = u_xlat1.w + -0.400000006;
    u_xlat13 = dFdxCoarse(u_xlat1.w);
    u_xlat25 = dFdyCoarse(u_xlat1.w);
    u_xlat13 = abs(u_xlat25) + abs(u_xlat13);
    u_xlat13 = max(u_xlat13, 9.99999975e-05);
    u_xlat1.x = u_xlat1.x / u_xlat13;
    u_xlat1.x = u_xlat1.x + 0.5;
    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
    u_xlatb13 = _AlphaToMaskAvailable!=0.0;
    u_xlat36 = (u_xlatb13) ? u_xlat1.x : u_xlat36;
    u_xlat1.x = u_xlat36 + -9.99999975e-05;
    u_xlatb1.x = u_xlat1.x<0.0;
    if(((int(u_xlatb1.x) * int(0xffffffffu)))!=0){discard;}
    u_xlatb1.x = 0.0<vs_INTERP4.w;
    u_xlatb1.z = unity_WorldTransformParams.w>=0.0;
    u_xlat1.x = (u_xlatb1.x) ? float(1.0) : float(-1.0);
    u_xlat1.z = (u_xlatb1.z) ? float(1.0) : float(-1.0);
    u_xlat1.x = u_xlat1.z * u_xlat1.x;
    u_xlat4.xyz = vs_INTERP4.yzx * vs_INTERP9.zxy;
    u_xlat4.xyz = vs_INTERP9.yzx * vs_INTERP4.zxy + (-u_xlat4.xyz);
    u_xlat1.xzw = u_xlat1.xxx * u_xlat4.xyz;
    u_xlat1.xzw = u_xlat1.xzw * u_xlat15.yyy;
    u_xlat1.xzw = u_xlat15.xxx * vs_INTERP4.xyz + u_xlat1.xzw;
    u_xlat1.xzw = u_xlat15.zzz * vs_INTERP9.xyz + u_xlat1.xzw;
    u_xlat15.x = dot(u_xlat1.xzw, u_xlat1.xzw);
    u_xlat15.x = inversesqrt(u_xlat15.x);
    u_xlat1.xzw = u_xlat1.xzw * u_xlat15.xxx;
    u_xlatb15 = unity_OrthoParams.w==0.0;
    u_xlat4.xyz = (-vs_INTERP8.xyz) + _WorldSpaceCameraPos.xyz;
    u_xlat27 = dot(u_xlat4.xyz, u_xlat4.xyz);
    u_xlat27 = inversesqrt(u_xlat27);
    u_xlat4.xyz = vec3(u_xlat27) * u_xlat4.xyz;
    u_xlat5.x = (u_xlatb15) ? u_xlat4.x : unity_MatrixV[0].z;
    u_xlat5.y = (u_xlatb15) ? u_xlat4.y : unity_MatrixV[1].z;
    u_xlat5.z = (u_xlatb15) ? u_xlat4.z : unity_MatrixV[2].z;
    u_xlat4 = texture(sampler2D(unity_LightmapInd, samplerunity_Lightmap), vs_INTERP0.xy, _GlobalMipBias.x);
    u_xlat15.xyz = texture(sampler2D(unity_Lightmap, samplerunity_Lightmap), vs_INTERP0.xy, _GlobalMipBias.x).xyz;
    u_xlat4.xyz = u_xlat4.xyz + vec3(-0.5, -0.5, -0.5);
    u_xlat4.x = dot(u_xlat1.xzw, u_xlat4.xyz);
    u_xlat4.x = u_xlat4.x + 0.5;
    u_xlat15.xyz = u_xlat15.xyz * u_xlat4.xxx;
    u_xlat4.x = max(u_xlat4.w, 9.99999975e-05);
    u_xlat15.xyz = u_xlat15.xyz / u_xlat4.xxx;
    u_xlat3.x = u_xlat3.x;
    u_xlat3.x = clamp(u_xlat3.x, 0.0, 1.0);
    u_xlat36 = min(u_xlat36, 1.0);
    u_xlat2.xyz = u_xlat2.xyz * vec3(0.959999979, 0.959999979, 0.959999979);
    u_xlat4.x = (-u_xlat3.x) + 1.0;
    u_xlat16 = u_xlat4.x * u_xlat4.x;
    u_xlat16 = max(u_xlat16, 0.0078125);
    u_xlat28 = u_xlat16 * u_xlat16;
    u_xlat3.x = u_xlat3.x + 0.0400000215;
    u_xlat3.x = min(u_xlat3.x, 1.0);
    u_xlat40 = u_xlat16 * 4.0 + 2.0;
    u_xlat41 = min(vs_INTERP6.w, 1.0);
    vec3 txVec1 = vec3(vs_INTERP3.xy,vs_INTERP3.z);
    u_xlat6.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_LinearClampCompare), txVec1, 0.0);
    u_xlat38 = u_xlat6.x * _MainLightShadowParams.x + u_xlat38;
    u_xlatb6 = 0.0>=vs_INTERP3.z;
    u_xlatb18 = vs_INTERP3.z>=1.0;
    u_xlatb6 = u_xlatb18 || u_xlatb6;
    u_xlat38 = (u_xlatb6) ? 1.0 : u_xlat38;
    u_xlat6.xyz = vs_INTERP8.xyz + (-_WorldSpaceCameraPos.xyz);
    u_xlat6.x = dot(u_xlat6.xyz, u_xlat6.xyz);
    u_xlat18.x = u_xlat6.x * _MainLightShadowParams.z + _MainLightShadowParams.w;
    u_xlat18.x = clamp(u_xlat18.x, 0.0, 1.0);
    u_xlat30 = (-u_xlat38) + 1.0;
    u_xlat38 = u_xlat18.x * u_xlat30 + u_xlat38;
    u_xlat18.x = dot((-u_xlat5.xyz), u_xlat1.xzw);
    u_xlat18.x = u_xlat18.x + u_xlat18.x;
    u_xlat18.xyz = u_xlat1.xzw * (-u_xlat18.xxx) + (-u_xlat5.xyz);
    u_xlat7.x = dot(u_xlat1.xzw, u_xlat5.xyz);
    u_xlat7.x = clamp(u_xlat7.x, 0.0, 1.0);
    u_xlat7.x = (-u_xlat7.x) + 1.0;
    u_xlat7.x = u_xlat7.x * u_xlat7.x;
    u_xlat7.x = u_xlat7.x * u_xlat7.x;
    u_xlat19 = (-u_xlat4.x) * 0.699999988 + 1.70000005;
    u_xlat4.x = u_xlat4.x * u_xlat19;
    u_xlat4.x = u_xlat4.x * 6.0;
    u_xlat8 = textureLod(samplerCube(unity_SpecCube0, samplerunity_SpecCube0), u_xlat18.xyz, u_xlat4.x);
    u_xlat4.x = u_xlat8.w + -1.0;
    u_xlat4.x = unity_SpecCube0_HDR.w * u_xlat4.x + 1.0;
    u_xlat4.x = max(u_xlat4.x, 0.0);
    u_xlat4.x = log2(u_xlat4.x);
    u_xlat4.x = u_xlat4.x * unity_SpecCube0_HDR.y;
    u_xlat4.x = exp2(u_xlat4.x);
    u_xlat4.x = u_xlat4.x * unity_SpecCube0_HDR.x;
    u_xlat18.xyz = u_xlat8.xyz * u_xlat4.xxx;
    u_xlat4.xy = vec2(u_xlat16) * vec2(u_xlat16) + vec2(-1.0, 1.0);
    u_xlat16 = float(1.0) / u_xlat4.y;
    u_xlat3.x = u_xlat3.x + -0.0399999991;
    u_xlat3.x = u_xlat7.x * u_xlat3.x + 0.0399999991;
    u_xlat3.x = u_xlat3.x * u_xlat16;
    u_xlat18.xyz = u_xlat3.xxx * u_xlat18.xyz;
    u_xlat3.xyz = u_xlat15.xyz * u_xlat2.xyz + u_xlat18.xyz;
    u_xlat38 = u_xlat38 * unity_LightData.z;
    u_xlat39 = dot(u_xlat1.xzw, _MainLightPosition.xyz);
    u_xlat39 = clamp(u_xlat39, 0.0, 1.0);
    u_xlat38 = u_xlat38 * u_xlat39;
    u_xlat18.xyz = vec3(u_xlat38) * _MainLightColor.xyz;
    u_xlat7.xyz = u_xlat5.xyz + _MainLightPosition.xyz;
    u_xlat38 = dot(u_xlat7.xyz, u_xlat7.xyz);
    u_xlat38 = max(u_xlat38, 1.17549435e-38);
    u_xlat38 = inversesqrt(u_xlat38);
    u_xlat7.xyz = vec3(u_xlat38) * u_xlat7.xyz;
    u_xlat38 = dot(u_xlat1.xzw, u_xlat7.xyz);
    u_xlat38 = clamp(u_xlat38, 0.0, 1.0);
    u_xlat39 = dot(_MainLightPosition.xyz, u_xlat7.xyz);
    u_xlat39 = clamp(u_xlat39, 0.0, 1.0);
    u_xlat38 = u_xlat38 * u_xlat38;
    u_xlat38 = u_xlat38 * u_xlat4.x + 1.00001001;
    u_xlat39 = u_xlat39 * u_xlat39;
    u_xlat38 = u_xlat38 * u_xlat38;
    u_xlat39 = max(u_xlat39, 0.100000001);
    u_xlat38 = u_xlat38 * u_xlat39;
    u_xlat38 = u_xlat40 * u_xlat38;
    u_xlat38 = u_xlat28 / u_xlat38;
    u_xlat7.xyz = vec3(u_xlat38) * vec3(0.0399999991, 0.0399999991, 0.0399999991) + u_xlat2.xyz;
    u_xlat18.xyz = u_xlat18.xyz * u_xlat7.xyz;
    u_xlat38 = min(_AdditionalLightsCount.x, unity_LightData.y);
    u_xlatu38 =  uint(int(u_xlat38));
    u_xlat39 = u_xlat6.x * _AdditionalShadowFadeParams.x + _AdditionalShadowFadeParams.y;
    u_xlat39 = clamp(u_xlat39, 0.0, 1.0);
    u_xlat7.x = float(0.0);
    u_xlat7.y = float(0.0);
    u_xlat7.z = float(0.0);
    for(uint u_xlatu_loop_1 = 0u ; u_xlatu_loop_1<u_xlatu38 ; u_xlatu_loop_1++)
    {
        u_xlatu6 = u_xlatu_loop_1 >> (2u & uint(0x1F));
        u_xlati43 = int(u_xlatu_loop_1 & 3u);
        u_xlat6.x = dot(unity_LightIndices[int(u_xlatu6)], uintBitsToFloat(ImmCB_0[u_xlati43]));
        u_xlati6 = int(u_xlat6.x);
        u_xlat8.xyz = (-vs_INTERP8.xyz) * _AdditionalLightsPosition[u_xlati6].www + _AdditionalLightsPosition[u_xlati6].xyz;
        u_xlat43 = dot(u_xlat8.xyz, u_xlat8.xyz);
        u_xlat43 = max(u_xlat43, 6.10351562e-05);
        u_xlat44 = inversesqrt(u_xlat43);
        u_xlat9.xyz = vec3(u_xlat44) * u_xlat8.xyz;
        u_xlat45 = float(1.0) / float(u_xlat43);
        u_xlat43 = u_xlat43 * _AdditionalLightsAttenuation[u_xlati6].x;
        u_xlat43 = (-u_xlat43) * u_xlat43 + 1.0;
        u_xlat43 = max(u_xlat43, 0.0);
        u_xlat43 = u_xlat43 * u_xlat43;
        u_xlat43 = u_xlat43 * u_xlat45;
        u_xlat45 = dot(_AdditionalLightsSpotDir[u_xlati6].xyz, u_xlat9.xyz);
        u_xlat45 = u_xlat45 * _AdditionalLightsAttenuation[u_xlati6].z + _AdditionalLightsAttenuation[u_xlati6].w;
        u_xlat45 = clamp(u_xlat45, 0.0, 1.0);
        u_xlat45 = u_xlat45 * u_xlat45;
        u_xlat43 = u_xlat43 * u_xlat45;
        u_xlati45 = int(_AdditionalShadowParams[u_xlati6].w);
        u_xlatb10.x = u_xlati45>=0;
        if(u_xlatb10.x){
            u_xlatb10.x = vec4(0.0, 0.0, 0.0, 0.0)!=vec4(_AdditionalShadowParams[u_xlati6].z);
            if(u_xlatb10.x){
                u_xlatb10.xyz = greaterThanEqual(abs(u_xlat9.zzyz), abs(u_xlat9.xyxx)).xyz;
                u_xlatb10.x = u_xlatb10.y && u_xlatb10.x;
                u_xlatb11.xyz = lessThan((-u_xlat9.zyxz), vec4(0.0, 0.0, 0.0, 0.0)).xyz;
                u_xlat22.x = (u_xlatb11.x) ? float(5.0) : float(4.0);
                u_xlat22.z = (u_xlatb11.y) ? float(3.0) : float(2.0);
                u_xlat11 = u_xlatb11.z ? 1.0 : float(0.0);
                u_xlat34 = (u_xlatb10.z) ? u_xlat22.z : u_xlat11;
                u_xlat10.x = (u_xlatb10.x) ? u_xlat22.x : u_xlat34;
                u_xlat22.x = trunc(_AdditionalShadowParams[u_xlati6].w);
                u_xlat10.x = u_xlat10.x + u_xlat22.x;
                u_xlati45 = int(u_xlat10.x);
            }
            u_xlati45 = u_xlati45 << (2 & int(0x1F));
            u_xlat10 = vs_INTERP8.yyyy * _AdditionalLightsWorldToShadow[(u_xlati45 + 1) / 4][(u_xlati45 + 1) % 4];
            u_xlat10 = _AdditionalLightsWorldToShadow[u_xlati45 / 4][u_xlati45 % 4] * vs_INTERP8.xxxx + u_xlat10;
            u_xlat10 = _AdditionalLightsWorldToShadow[(u_xlati45 + 2) / 4][(u_xlati45 + 2) % 4] * vs_INTERP8.zzzz + u_xlat10;
            u_xlat10 = u_xlat10 + _AdditionalLightsWorldToShadow[(u_xlati45 + 3) / 4][(u_xlati45 + 3) % 4];
            u_xlat10.xyz = u_xlat10.xyz / u_xlat10.www;
            vec3 txVec2 = vec3(u_xlat10.xy,u_xlat10.z);
            u_xlat45 = textureLod(sampler2DShadow(_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare), txVec2, 0.0);
            u_xlat10.x = 1.0 + (-_AdditionalShadowParams[u_xlati6].x);
            u_xlat45 = u_xlat45 * _AdditionalShadowParams[u_xlati6].x + u_xlat10.x;
            u_xlatb10.x = 0.0>=u_xlat10.z;
            u_xlatb22 = u_xlat10.z>=1.0;
            u_xlatb10.x = u_xlatb22 || u_xlatb10.x;
            u_xlat45 = (u_xlatb10.x) ? 1.0 : u_xlat45;
        } else {
            u_xlat45 = 1.0;
        }
        u_xlat10.x = (-u_xlat45) + 1.0;
        u_xlat45 = u_xlat39 * u_xlat10.x + u_xlat45;
        u_xlat43 = u_xlat43 * u_xlat45;
        u_xlat45 = dot(u_xlat1.xzw, u_xlat9.xyz);
        u_xlat45 = clamp(u_xlat45, 0.0, 1.0);
        u_xlat43 = u_xlat43 * u_xlat45;
        u_xlat10.xyz = vec3(u_xlat43) * _AdditionalLightsColor[u_xlati6].xyz;
        u_xlat8.xyz = u_xlat8.xyz * vec3(u_xlat44) + u_xlat5.xyz;
        u_xlat6.x = dot(u_xlat8.xyz, u_xlat8.xyz);
        u_xlat6.x = max(u_xlat6.x, 1.17549435e-38);
        u_xlat6.x = inversesqrt(u_xlat6.x);
        u_xlat8.xyz = u_xlat6.xxx * u_xlat8.xyz;
        u_xlat6.x = dot(u_xlat1.xzw, u_xlat8.xyz);
        u_xlat6.x = clamp(u_xlat6.x, 0.0, 1.0);
        u_xlat43 = dot(u_xlat9.xyz, u_xlat8.xyz);
        u_xlat43 = clamp(u_xlat43, 0.0, 1.0);
        u_xlat6.x = u_xlat6.x * u_xlat6.x;
        u_xlat6.x = u_xlat6.x * u_xlat4.x + 1.00001001;
        u_xlat43 = u_xlat43 * u_xlat43;
        u_xlat6.x = u_xlat6.x * u_xlat6.x;
        u_xlat43 = max(u_xlat43, 0.100000001);
        u_xlat6.x = u_xlat6.x * u_xlat43;
        u_xlat6.x = u_xlat40 * u_xlat6.x;
        u_xlat6.x = u_xlat28 / u_xlat6.x;
        u_xlat8.xyz = u_xlat6.xxx * vec3(0.0399999991, 0.0399999991, 0.0399999991) + u_xlat2.xyz;
        u_xlat7.xyz = u_xlat8.xyz * u_xlat10.xyz + u_xlat7.xyz;
    }
    u_xlat1.xzw = u_xlat3.xyz * vec3(u_xlat41) + u_xlat18.xyz;
    u_xlat1.xzw = u_xlat7.xyz + u_xlat1.xzw;
    SV_Target0.xyz = vs_INTERP6.www * u_xlat0.xyz + u_xlat1.xzw;
    SV_Target0.w = (u_xlatb13) ? u_xlat36 : 1.0;
    return;
}

