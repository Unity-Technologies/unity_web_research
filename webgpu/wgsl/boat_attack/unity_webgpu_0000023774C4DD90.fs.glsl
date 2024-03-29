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
	vec4 _MainTex_TexelSize;
	vec4 _MRLL_TexelSize;
	vec4 _BumpMap_TexelSize;
	vec4 _Color1;
	vec4 _Color2;
};
layout(set = 0, binding = 0) uniform mediump textureCube unity_SpecCube0;
layout(set = 0, binding = 1) uniform mediump texture2D _MainLightShadowmapTexture;
layout(set = 0, binding = 2) uniform mediump texture2D _AdditionalLightsShadowmapTexture;
layout(set = 0, binding = 3) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 4) uniform mediump texture2D _MRLL;
layout(set = 0, binding = 5) uniform mediump texture2D _BumpMap;
layout(location = 0) in highp  vec4 vs_INTERP3;
layout(location = 1) in highp  vec4 vs_INTERP4;
layout(location = 2) in highp  vec4 vs_INTERP5;
layout(location = 3) in highp  vec3 vs_INTERP7;
layout(location = 4) in highp  vec3 vs_INTERP8;
layout(location = 0) out highp vec4 SV_Target0;
vec4 u_xlat0;
vec4 u_xlat1;
vec3 u_xlat2;
vec4 u_xlat3;
vec3 u_xlat4;
bvec3 u_xlatb4;
vec3 u_xlat5;
vec4 u_xlat6;
vec3 u_xlat7;
vec3 u_xlat8;
vec3 u_xlat9;
vec4 u_xlat10;
bvec4 u_xlatb10;
vec2 u_xlat11;
uint u_xlatu11;
bool u_xlatb11;
vec3 u_xlat12;
bvec3 u_xlatb12;
float u_xlat22;
float u_xlat23;
float u_xlat33;
float u_xlat35;
float u_xlat36;
uint u_xlatu36;
float u_xlat37;
int u_xlati37;
uint u_xlatu37;
bool u_xlatb37;
float u_xlat38;
int u_xlati38;
bool u_xlatb38;
float u_xlat39;
float u_xlat40;
int u_xlati40;
float u_xlat41;
bool u_xlatb41;
float u_xlat42;
bool u_xlatb42;
layout(set = 0, binding = 6) uniform mediump  sampler samplerunity_SpecCube0;
layout(set = 0, binding = 7) uniform mediump  samplerShadow sampler_LinearClampCompare;
layout(set = 0, binding = 8) uniform mediump  sampler samplerSamplerState_Trilinear_Clamp;
void main()
{
    u_xlat0 = texture(sampler2D(_MainTex, samplerSamplerState_Trilinear_Clamp), vs_INTERP5.xy, _GlobalMipBias.x);
    u_xlat1 = texture(sampler2D(_MRLL, samplerSamplerState_Trilinear_Clamp), vs_INTERP5.xy, _GlobalMipBias.x);
    u_xlat2.xyz = u_xlat1.www * _Color2.xyz;
    u_xlat2.xyz = _Color1.xyz * u_xlat1.zzz + u_xlat2.xyz;
    u_xlat23 = u_xlat1.w + u_xlat1.z;
    u_xlat23 = clamp(u_xlat23, 0.0, 1.0);
    u_xlat3.xyz = (-u_xlat0.xyz) + vec3(1.0, 1.0, 1.0);
    u_xlat3.xyz = u_xlat3.xyz + u_xlat3.xyz;
    u_xlat4.xyz = (-u_xlat2.xyz) + vec3(1.0, 1.0, 1.0);
    u_xlat3.xyz = (-u_xlat3.xyz) * u_xlat4.xyz + vec3(1.0, 1.0, 1.0);
    u_xlat4.xyz = u_xlat0.xyz + u_xlat0.xyz;
    u_xlat2.xyz = u_xlat2.xyz * u_xlat4.xyz;
    u_xlatb4.xyz = greaterThanEqual(vec4(0.5, 0.5, 0.5, 0.0), u_xlat0.xyzx).xyz;
    u_xlat5.x = u_xlatb4.x ? float(1.0) : 0.0;
    u_xlat5.y = u_xlatb4.y ? float(1.0) : 0.0;
    u_xlat5.z = u_xlatb4.z ? float(1.0) : 0.0;
;
    u_xlat4.x = (u_xlatb4.x) ? float(0.0) : float(1.0);
    u_xlat4.y = (u_xlatb4.y) ? float(0.0) : float(1.0);
    u_xlat4.z = (u_xlatb4.z) ? float(0.0) : float(1.0);
    u_xlat3.xyz = u_xlat3.xyz * u_xlat4.xyz;
    u_xlat2.xyz = u_xlat2.xyz * u_xlat5.xyz + u_xlat3.xyz;
    u_xlat2.xyz = (-u_xlat0.xyz) + u_xlat2.xyz;
    u_xlat2.xyz = vec3(u_xlat23) * u_xlat2.xyz + u_xlat0.xyz;
    u_xlat0.x = u_xlat0.x + -0.150000006;
    u_xlat0.x = ceil(u_xlat0.x);
    u_xlat0.x = (-u_xlat0.x) + 1.0;
    u_xlat2.xyz = u_xlat0.xxx * vec3(0.400000006, 0.400000006, 0.400000006) + u_xlat2.xyz;
    u_xlat3.xyz = texture(sampler2D(_BumpMap, samplerSamplerState_Trilinear_Clamp), vs_INTERP5.xy, _GlobalMipBias.x).xyw;
    u_xlat3.x = u_xlat3.x * u_xlat3.z;
    u_xlat11.xy = u_xlat3.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat23 = dot(u_xlat11.xy, u_xlat11.xy);
    u_xlat23 = min(u_xlat23, 1.0);
    u_xlat23 = (-u_xlat23) + 1.0;
    u_xlat23 = sqrt(u_xlat23);
    u_xlat23 = max(u_xlat23, 1.00000002e-16);
    u_xlat0.x = u_xlat1.x + u_xlat0.x;
    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
    u_xlat1.x = max(u_xlat1.y, 0.0);
    u_xlat1.x = min(u_xlat1.x, 0.850000024);
    u_xlatb12.x = 0.0<vs_INTERP4.w;
    u_xlatb12.z = unity_WorldTransformParams.w>=0.0;
    u_xlat12.x = (u_xlatb12.x) ? float(1.0) : float(-1.0);
    u_xlat12.z = (u_xlatb12.z) ? float(1.0) : float(-1.0);
    u_xlat12.x = u_xlat12.z * u_xlat12.x;
    u_xlat3.xyz = vs_INTERP4.yzx * vs_INTERP8.zxy;
    u_xlat3.xyz = vs_INTERP8.yzx * vs_INTERP4.zxy + (-u_xlat3.xyz);
    u_xlat3.xyz = u_xlat12.xxx * u_xlat3.xyz;
    u_xlat3.xyz = u_xlat11.yyy * u_xlat3.xyz;
    u_xlat3.xyz = u_xlat11.xxx * vs_INTERP4.xyz + u_xlat3.xyz;
    u_xlat12.xyz = vec3(u_xlat23) * vs_INTERP8.xyz + u_xlat3.xyz;
    u_xlat11.x = dot(u_xlat12.xyz, u_xlat12.xyz);
    u_xlat11.x = inversesqrt(u_xlat11.x);
    u_xlat3.xyz = u_xlat11.xxx * u_xlat12.xyz;
    u_xlatb11 = unity_OrthoParams.w==0.0;
    u_xlat12.xyz = (-vs_INTERP7.xyz) + _WorldSpaceCameraPos.xyz;
    u_xlat22 = dot(u_xlat12.xyz, u_xlat12.xyz);
    u_xlat22 = inversesqrt(u_xlat22);
    u_xlat12.xyz = vec3(u_xlat22) * u_xlat12.xyz;
    u_xlat4.x = (u_xlatb11) ? u_xlat12.x : unity_MatrixV[0].z;
    u_xlat4.y = (u_xlatb11) ? u_xlat12.y : unity_MatrixV[1].z;
    u_xlat4.z = (u_xlatb11) ? u_xlat12.z : unity_MatrixV[2].z;
    u_xlat3.w = 1.0;
    u_xlat5.x = dot(unity_SHAr, u_xlat3);
    u_xlat5.y = dot(unity_SHAg, u_xlat3);
    u_xlat5.z = dot(unity_SHAb, u_xlat3);
    u_xlat6 = u_xlat3.yzzx * u_xlat3.xyzz;
    u_xlat7.x = dot(unity_SHBr, u_xlat6);
    u_xlat7.y = dot(unity_SHBg, u_xlat6);
    u_xlat7.z = dot(unity_SHBb, u_xlat6);
    u_xlat11.x = u_xlat3.y * u_xlat3.y;
    u_xlat11.x = u_xlat3.x * u_xlat3.x + (-u_xlat11.x);
    u_xlat12.xyz = unity_SHC.xyz * u_xlat11.xxx + u_xlat7.xyz;
    u_xlat12.xyz = u_xlat12.xyz + u_xlat5.xyz;
    u_xlat12.xyz = max(u_xlat12.xyz, vec3(0.0, 0.0, 0.0));
    u_xlat11.x = (-u_xlat0.x) * 0.959999979 + 0.959999979;
    u_xlat22 = (-u_xlat11.x) + u_xlat1.x;
    u_xlat5.xyz = u_xlat11.xxx * u_xlat2.xyz;
    u_xlat2.xyz = u_xlat2.xyz + vec3(-0.0399999991, -0.0399999991, -0.0399999991);
    u_xlat2.xyz = u_xlat0.xxx * u_xlat2.xyz + vec3(0.0399999991, 0.0399999991, 0.0399999991);
    u_xlat0.x = (-u_xlat1.x) + 1.0;
    u_xlat11.x = u_xlat0.x * u_xlat0.x;
    u_xlat1.x = u_xlat11.x * u_xlat11.x;
    u_xlat22 = u_xlat22 + 1.0;
    u_xlat22 = min(u_xlat22, 1.0);
    u_xlat35 = u_xlat11.x * 4.0 + 2.0;
    u_xlat33 = min(u_xlat0.w, 1.0);
    vec3 txVec0 = vec3(vs_INTERP3.xy,vs_INTERP3.z);
    u_xlat36 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_LinearClampCompare), txVec0, 0.0);
    u_xlat37 = (-_MainLightShadowParams.x) + 1.0;
    u_xlat36 = u_xlat36 * _MainLightShadowParams.x + u_xlat37;
    u_xlatb37 = 0.0>=vs_INTERP3.z;
    u_xlatb38 = vs_INTERP3.z>=1.0;
    u_xlatb37 = u_xlatb37 || u_xlatb38;
    u_xlat36 = (u_xlatb37) ? 1.0 : u_xlat36;
    u_xlat6.xyz = vs_INTERP7.xyz + (-_WorldSpaceCameraPos.xyz);
    u_xlat37 = dot(u_xlat6.xyz, u_xlat6.xyz);
    u_xlat38 = u_xlat37 * _MainLightShadowParams.z + _MainLightShadowParams.w;
    u_xlat38 = clamp(u_xlat38, 0.0, 1.0);
    u_xlat6.x = (-u_xlat36) + 1.0;
    u_xlat36 = u_xlat38 * u_xlat6.x + u_xlat36;
    u_xlat38 = dot((-u_xlat4.xyz), u_xlat3.xyz);
    u_xlat38 = u_xlat38 + u_xlat38;
    u_xlat6.xyz = u_xlat3.xyz * (-vec3(u_xlat38)) + (-u_xlat4.xyz);
    u_xlat38 = dot(u_xlat3.xyz, u_xlat4.xyz);
    u_xlat38 = clamp(u_xlat38, 0.0, 1.0);
    u_xlat38 = (-u_xlat38) + 1.0;
    u_xlat38 = u_xlat38 * u_xlat38;
    u_xlat38 = u_xlat38 * u_xlat38;
    u_xlat39 = (-u_xlat0.x) * 0.699999988 + 1.70000005;
    u_xlat0.x = u_xlat0.x * u_xlat39;
    u_xlat0.x = u_xlat0.x * 6.0;
    u_xlat6 = textureLod(samplerCube(unity_SpecCube0, samplerunity_SpecCube0), u_xlat6.xyz, u_xlat0.x);
    u_xlat0.x = u_xlat6.w + -1.0;
    u_xlat0.x = unity_SpecCube0_HDR.w * u_xlat0.x + 1.0;
    u_xlat0.x = max(u_xlat0.x, 0.0);
    u_xlat0.x = log2(u_xlat0.x);
    u_xlat0.x = u_xlat0.x * unity_SpecCube0_HDR.y;
    u_xlat0.x = exp2(u_xlat0.x);
    u_xlat0.x = u_xlat0.x * unity_SpecCube0_HDR.x;
    u_xlat6.xyz = u_xlat6.xyz * u_xlat0.xxx;
    u_xlat0.xy = u_xlat11.xx * u_xlat11.xx + vec2(-1.0, 1.0);
    u_xlat11.x = float(1.0) / u_xlat0.y;
    u_xlat7.xyz = (-u_xlat2.xyz) + vec3(u_xlat22);
    u_xlat7.xyz = vec3(u_xlat38) * u_xlat7.xyz + u_xlat2.xyz;
    u_xlat7.xyz = u_xlat11.xxx * u_xlat7.xyz;
    u_xlat6.xyz = u_xlat6.xyz * u_xlat7.xyz;
    u_xlat12.xyz = u_xlat12.xyz * u_xlat5.xyz + u_xlat6.xyz;
    u_xlat11.x = u_xlat36 * unity_LightData.z;
    u_xlat22 = dot(u_xlat3.xyz, _MainLightPosition.xyz);
    u_xlat22 = clamp(u_xlat22, 0.0, 1.0);
    u_xlat11.x = u_xlat22 * u_xlat11.x;
    u_xlat6.xyz = u_xlat11.xxx * _MainLightColor.xyz;
    u_xlat7.xyz = u_xlat4.xyz + _MainLightPosition.xyz;
    u_xlat11.x = dot(u_xlat7.xyz, u_xlat7.xyz);
    u_xlat11.x = max(u_xlat11.x, 1.17549435e-38);
    u_xlat11.x = inversesqrt(u_xlat11.x);
    u_xlat7.xyz = u_xlat11.xxx * u_xlat7.xyz;
    u_xlat11.x = dot(u_xlat3.xyz, u_xlat7.xyz);
    u_xlat11.x = clamp(u_xlat11.x, 0.0, 1.0);
    u_xlat11.y = dot(_MainLightPosition.xyz, u_xlat7.xyz);
    u_xlat11.y = clamp(u_xlat11.y, 0.0, 1.0);
    u_xlat11.xy = u_xlat11.xy * u_xlat11.xy;
    u_xlat11.x = u_xlat11.x * u_xlat0.x + 1.00001001;
    u_xlat11.x = u_xlat11.x * u_xlat11.x;
    u_xlat22 = max(u_xlat11.y, 0.100000001);
    u_xlat11.x = u_xlat22 * u_xlat11.x;
    u_xlat11.x = u_xlat35 * u_xlat11.x;
    u_xlat11.x = u_xlat1.x / u_xlat11.x;
    u_xlat7.xyz = u_xlat2.xyz * u_xlat11.xxx + u_xlat5.xyz;
    u_xlat6.xyz = u_xlat6.xyz * u_xlat7.xyz;
    u_xlat11.x = min(_AdditionalLightsCount.x, unity_LightData.y);
    u_xlatu11 =  uint(int(u_xlat11.x));
    u_xlat22 = u_xlat37 * _AdditionalShadowFadeParams.x + _AdditionalShadowFadeParams.y;
    u_xlat22 = clamp(u_xlat22, 0.0, 1.0);
    u_xlat7.x = float(0.0);
    u_xlat7.y = float(0.0);
    u_xlat7.z = float(0.0);
    for(uint u_xlatu_loop_1 = 0u ; u_xlatu_loop_1<u_xlatu11 ; u_xlatu_loop_1++)
    {
        u_xlatu37 = u_xlatu_loop_1 >> (2u & uint(0x1F));
        u_xlati38 = int(u_xlatu_loop_1 & 3u);
        u_xlat37 = dot(unity_LightIndices[int(u_xlatu37)], uintBitsToFloat(ImmCB_0[u_xlati38]));
        u_xlati37 = int(u_xlat37);
        u_xlat8.xyz = (-vs_INTERP7.xyz) * _AdditionalLightsPosition[u_xlati37].www + _AdditionalLightsPosition[u_xlati37].xyz;
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
        u_xlati40 = int(_AdditionalShadowParams[u_xlati37].w);
        u_xlatb41 = u_xlati40>=0;
        if(u_xlatb41){
            u_xlatb41 = vec4(0.0, 0.0, 0.0, 0.0)!=vec4(_AdditionalShadowParams[u_xlati37].z);
            if(u_xlatb41){
                u_xlatb10.xyz = greaterThanEqual(abs(u_xlat9.zzyz), abs(u_xlat9.xyxx)).xyz;
                u_xlatb41 = u_xlatb10.y && u_xlatb10.x;
                u_xlatb10.xyw = lessThan((-u_xlat9.zyzx), vec4(0.0, 0.0, 0.0, 0.0)).xyw;
                u_xlat10.x = (u_xlatb10.x) ? float(5.0) : float(4.0);
                u_xlat10.y = (u_xlatb10.y) ? float(3.0) : float(2.0);
                u_xlat42 = u_xlatb10.w ? 1.0 : float(0.0);
                u_xlat42 = (u_xlatb10.z) ? u_xlat10.y : u_xlat42;
                u_xlat41 = (u_xlatb41) ? u_xlat10.x : u_xlat42;
                u_xlat42 = trunc(_AdditionalShadowParams[u_xlati37].w);
                u_xlat41 = u_xlat41 + u_xlat42;
                u_xlati40 = int(u_xlat41);
            }
            u_xlati40 = u_xlati40 << (2 & int(0x1F));
            u_xlat10 = vs_INTERP7.yyyy * _AdditionalLightsWorldToShadow[(u_xlati40 + 1) / 4][(u_xlati40 + 1) % 4];
            u_xlat10 = _AdditionalLightsWorldToShadow[u_xlati40 / 4][u_xlati40 % 4] * vs_INTERP7.xxxx + u_xlat10;
            u_xlat10 = _AdditionalLightsWorldToShadow[(u_xlati40 + 2) / 4][(u_xlati40 + 2) % 4] * vs_INTERP7.zzzz + u_xlat10;
            u_xlat10 = u_xlat10 + _AdditionalLightsWorldToShadow[(u_xlati40 + 3) / 4][(u_xlati40 + 3) % 4];
            u_xlat10.xyz = u_xlat10.xyz / u_xlat10.www;
            vec3 txVec1 = vec3(u_xlat10.xy,u_xlat10.z);
            u_xlat40 = textureLod(sampler2DShadow(_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare), txVec1, 0.0);
            u_xlat41 = 1.0 + (-_AdditionalShadowParams[u_xlati37].x);
            u_xlat40 = u_xlat40 * _AdditionalShadowParams[u_xlati37].x + u_xlat41;
            u_xlatb41 = 0.0>=u_xlat10.z;
            u_xlatb42 = u_xlat10.z>=1.0;
            u_xlatb41 = u_xlatb41 || u_xlatb42;
            u_xlat40 = (u_xlatb41) ? 1.0 : u_xlat40;
        } else {
            u_xlat40 = 1.0;
        }
        u_xlat41 = (-u_xlat40) + 1.0;
        u_xlat40 = u_xlat22 * u_xlat41 + u_xlat40;
        u_xlat38 = u_xlat38 * u_xlat40;
        u_xlat40 = dot(u_xlat3.xyz, u_xlat9.xyz);
        u_xlat40 = clamp(u_xlat40, 0.0, 1.0);
        u_xlat38 = u_xlat38 * u_xlat40;
        u_xlat10.xyz = vec3(u_xlat38) * _AdditionalLightsColor[u_xlati37].xyz;
        u_xlat8.xyz = u_xlat8.xyz * vec3(u_xlat39) + u_xlat4.xyz;
        u_xlat37 = dot(u_xlat8.xyz, u_xlat8.xyz);
        u_xlat37 = max(u_xlat37, 1.17549435e-38);
        u_xlat37 = inversesqrt(u_xlat37);
        u_xlat8.xyz = vec3(u_xlat37) * u_xlat8.xyz;
        u_xlat37 = dot(u_xlat3.xyz, u_xlat8.xyz);
        u_xlat37 = clamp(u_xlat37, 0.0, 1.0);
        u_xlat38 = dot(u_xlat9.xyz, u_xlat8.xyz);
        u_xlat38 = clamp(u_xlat38, 0.0, 1.0);
        u_xlat37 = u_xlat37 * u_xlat37;
        u_xlat37 = u_xlat37 * u_xlat0.x + 1.00001001;
        u_xlat38 = u_xlat38 * u_xlat38;
        u_xlat37 = u_xlat37 * u_xlat37;
        u_xlat38 = max(u_xlat38, 0.100000001);
        u_xlat37 = u_xlat37 * u_xlat38;
        u_xlat37 = u_xlat35 * u_xlat37;
        u_xlat37 = u_xlat1.x / u_xlat37;
        u_xlat8.xyz = u_xlat2.xyz * vec3(u_xlat37) + u_xlat5.xyz;
        u_xlat7.xyz = u_xlat8.xyz * u_xlat10.xyz + u_xlat7.xyz;
    }
    u_xlat0.xyz = u_xlat12.xyz * vec3(u_xlat33) + u_xlat6.xyz;
    SV_Target0.xyz = u_xlat7.xyz + u_xlat0.xyz;
    SV_Target0.w = 1.0;
    return;
}

