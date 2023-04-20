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
layout(set = 0, binding = 1) uniform mediump texture2D _BumpMap;
layout(set = 0, binding = 2) uniform mediump texture2D _MainLightShadowmapTexture;
layout(set = 0, binding = 3) uniform mediump texture2D _AdditionalLightsShadowmapTexture;
layout(location = 0) in highp  vec2 vs_TEXCOORD0;
layout(location = 1) in highp  vec3 vs_TEXCOORD1;
layout(location = 2) in highp  vec4 vs_TEXCOORD2;
layout(location = 3) in highp  vec4 vs_TEXCOORD3;
layout(location = 4) in highp  vec4 vs_TEXCOORD4;
layout(location = 0) out highp vec4 SV_Target0;
vec4 u_xlat0;
bool u_xlatb0;
vec4 u_xlat1;
vec4 u_xlat2;
vec3 u_xlat3;
vec4 u_xlat4;
bvec4 u_xlatb4;
vec4 u_xlat5;
vec4 u_xlat6;
vec3 u_xlat7;
vec4 u_xlat8;
bvec3 u_xlatb8;
vec3 u_xlat9;
bvec3 u_xlatb9;
vec3 u_xlat10;
bool u_xlatb10;
vec3 u_xlat18;
bool u_xlatb18;
float u_xlat20;
bool u_xlatb20;
float u_xlat28;
float u_xlat30;
int u_xlati30;
uint u_xlatu30;
float u_xlat32;
bool u_xlatb32;
float u_xlat33;
uint u_xlatu33;
bool u_xlatb33;
uint u_xlatu34;
float u_xlat35;
int u_xlati35;
uint u_xlatu35;
bool u_xlatb35;
float u_xlat36;
int u_xlati36;
float u_xlat37;
int u_xlati37;
layout(set = 0, binding = 4) uniform mediump  sampler sampler_BaseMap;
layout(set = 0, binding = 5) uniform mediump  sampler sampler_BumpMap;
layout(set = 0, binding = 6) uniform mediump  samplerShadow sampler_LinearClampCompare;
void main()
{
    u_xlat0 = texture(sampler2D(_BaseMap, sampler_BaseMap), vs_TEXCOORD0.xy, _GlobalMipBias.x);
    u_xlat1 = u_xlat0.wxyz * _BaseColor.wxyz;
    u_xlatb0 = u_xlat1.x>=_Cutoff;
    u_xlat0.x = u_xlatb0 ? u_xlat1.x : float(0.0);
    u_xlat10.x = u_xlat0.w * _BaseColor.w + (-_Cutoff);
    u_xlat20 = dFdxCoarse(u_xlat1.x);
    u_xlat30 = dFdyCoarse(u_xlat1.x);
    u_xlat20 = abs(u_xlat30) + abs(u_xlat20);
    u_xlat20 = max(u_xlat20, 9.99999975e-05);
    u_xlat10.x = u_xlat10.x / u_xlat20;
    u_xlat10.x = u_xlat10.x + 0.5;
    u_xlat10.x = clamp(u_xlat10.x, 0.0, 1.0);
    u_xlatb20 = _AlphaToMaskAvailable!=0.0;
    u_xlat0.x = (u_xlatb20) ? u_xlat10.x : u_xlat0.x;
    u_xlat10.x = u_xlat0.x + -9.99999975e-05;
    u_xlatb10 = u_xlat10.x<0.0;
    if(((int(u_xlatb10) * int(0xffffffffu)))!=0){discard;}
    u_xlat2.xyz = texture(sampler2D(_BumpMap, sampler_BumpMap), vs_TEXCOORD0.xy, _GlobalMipBias.x).xyw;
    u_xlat2.x = u_xlat2.x * u_xlat2.z;
    u_xlat10.xz = u_xlat2.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat1.x = dot(u_xlat10.xz, u_xlat10.xz);
    u_xlat1.x = min(u_xlat1.x, 1.0);
    u_xlat1.x = (-u_xlat1.x) + 1.0;
    u_xlat1.x = sqrt(u_xlat1.x);
    u_xlat1.x = max(u_xlat1.x, 1.00000002e-16);
    u_xlat2.xyz = u_xlat10.zzz * vs_TEXCOORD4.xyz;
    u_xlat2.xyz = u_xlat10.xxx * vs_TEXCOORD3.xyz + u_xlat2.xyz;
    u_xlat2.xyz = u_xlat1.xxx * vs_TEXCOORD2.xyz + u_xlat2.xyz;
    u_xlat10.x = dot(u_xlat2.xyz, u_xlat2.xyz);
    u_xlat10.x = inversesqrt(u_xlat10.x);
    u_xlat2.xyz = u_xlat10.xxx * u_xlat2.xyz;
    u_xlat3.x = vs_TEXCOORD2.w;
    u_xlat3.y = vs_TEXCOORD3.w;
    u_xlat3.z = vs_TEXCOORD4.w;
    u_xlat10.x = dot(u_xlat3.xyz, u_xlat3.xyz);
    u_xlat10.x = max(u_xlat10.x, 6.10351562e-05);
    u_xlat10.x = inversesqrt(u_xlat10.x);
    u_xlat4.xyz = vs_TEXCOORD1.xyz + (-_CascadeShadowSplitSpheres0.xyz);
    u_xlat5.xyz = vs_TEXCOORD1.xyz + (-_CascadeShadowSplitSpheres1.xyz);
    u_xlat6.xyz = vs_TEXCOORD1.xyz + (-_CascadeShadowSplitSpheres2.xyz);
    u_xlat7.xyz = vs_TEXCOORD1.xyz + (-_CascadeShadowSplitSpheres3.xyz);
    u_xlat4.x = dot(u_xlat4.xyz, u_xlat4.xyz);
    u_xlat4.y = dot(u_xlat5.xyz, u_xlat5.xyz);
    u_xlat4.z = dot(u_xlat6.xyz, u_xlat6.xyz);
    u_xlat4.w = dot(u_xlat7.xyz, u_xlat7.xyz);
    u_xlatb4 = lessThan(u_xlat4, _CascadeShadowSplitSphereRadii);
    u_xlat5.x = u_xlatb4.x ? float(1.0) : 0.0;
    u_xlat5.y = u_xlatb4.y ? float(1.0) : 0.0;
    u_xlat5.z = u_xlatb4.z ? float(1.0) : 0.0;
    u_xlat5.w = u_xlatb4.w ? float(1.0) : 0.0;
;
    u_xlat4.x = (u_xlatb4.x) ? float(-1.0) : float(-0.0);
    u_xlat4.y = (u_xlatb4.y) ? float(-1.0) : float(-0.0);
    u_xlat4.z = (u_xlatb4.z) ? float(-1.0) : float(-0.0);
    u_xlat4.xyz = u_xlat4.xyz + u_xlat5.yzw;
    u_xlat5.yzw = max(u_xlat4.xyz, vec3(0.0, 0.0, 0.0));
    u_xlat30 = dot(u_xlat5, vec4(4.0, 3.0, 2.0, 1.0));
    u_xlat30 = (-u_xlat30) + 4.0;
    u_xlatu30 = uint(u_xlat30);
    u_xlati30 = int(u_xlatu30) << (2 & int(0x1F));
    u_xlat4.xyz = vs_TEXCOORD1.yyy * _MainLightWorldToShadow[(u_xlati30 + 1) / 4][(u_xlati30 + 1) % 4].xyz;
    u_xlat4.xyz = _MainLightWorldToShadow[u_xlati30 / 4][u_xlati30 % 4].xyz * vs_TEXCOORD1.xxx + u_xlat4.xyz;
    u_xlat4.xyz = _MainLightWorldToShadow[(u_xlati30 + 2) / 4][(u_xlati30 + 2) % 4].xyz * vs_TEXCOORD1.zzz + u_xlat4.xyz;
    u_xlat4.xyz = u_xlat4.xyz + _MainLightWorldToShadow[(u_xlati30 + 3) / 4][(u_xlati30 + 3) % 4].xyz;
    u_xlat30 = vs_TEXCOORD1.y * unity_MatrixV[1].z;
    u_xlat30 = unity_MatrixV[0].z * vs_TEXCOORD1.x + u_xlat30;
    u_xlat30 = unity_MatrixV[2].z * vs_TEXCOORD1.z + u_xlat30;
    u_xlat30 = u_xlat30 + unity_MatrixV[3].z;
    u_xlat30 = (-u_xlat30) + (-_ProjectionParams.y);
    u_xlat30 = max(u_xlat30, 0.0);
    u_xlat30 = u_xlat30 * unity_FogParams.x;
    u_xlat2.w = 1.0;
    u_xlat5.x = dot(unity_SHAr, u_xlat2);
    u_xlat5.y = dot(unity_SHAg, u_xlat2);
    u_xlat5.z = dot(unity_SHAb, u_xlat2);
    u_xlat6 = u_xlat2.yzzx * u_xlat2.xyzz;
    u_xlat7.x = dot(unity_SHBr, u_xlat6);
    u_xlat7.y = dot(unity_SHBg, u_xlat6);
    u_xlat7.z = dot(unity_SHBb, u_xlat6);
    u_xlat1.x = u_xlat2.y * u_xlat2.y;
    u_xlat1.x = u_xlat2.x * u_xlat2.x + (-u_xlat1.x);
    u_xlat6.xyz = unity_SHC.xyz * u_xlat1.xxx + u_xlat7.xyz;
    u_xlat5.xyz = u_xlat5.xyz + u_xlat6.xyz;
    u_xlat5.xyz = max(u_xlat5.xyz, vec3(0.0, 0.0, 0.0));
    vec3 txVec0 = vec3(u_xlat4.xy,u_xlat4.z);
    u_xlat1.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_LinearClampCompare), txVec0, 0.0);
    u_xlat32 = (-_MainLightShadowParams.x) + 1.0;
    u_xlat1.x = u_xlat1.x * _MainLightShadowParams.x + u_xlat32;
    u_xlatb32 = 0.0>=u_xlat4.z;
    u_xlatb33 = u_xlat4.z>=1.0;
    u_xlatb32 = u_xlatb32 || u_xlatb33;
    u_xlat1.x = (u_xlatb32) ? 1.0 : u_xlat1.x;
    u_xlat4.xyz = vs_TEXCOORD1.xyz + (-_WorldSpaceCameraPos.xyz);
    u_xlat32 = dot(u_xlat4.xyz, u_xlat4.xyz);
    u_xlat33 = u_xlat32 * _MainLightShadowParams.z + _MainLightShadowParams.w;
    u_xlat33 = clamp(u_xlat33, 0.0, 1.0);
    u_xlat4.x = (-u_xlat1.x) + 1.0;
    u_xlat1.x = u_xlat33 * u_xlat4.x + u_xlat1.x;
    u_xlat1.x = u_xlat1.x * unity_LightData.z;
    u_xlat4.xyz = u_xlat1.xxx * _MainLightColor.xyz;
    u_xlat1.x = dot(u_xlat2.xyz, _MainLightPosition.xyz);
    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
    u_xlat6.xyz = u_xlat1.xxx * u_xlat4.xyz;
    u_xlat1.x = _SpecColor.w * 10.0 + 1.0;
    u_xlat1.x = exp2(u_xlat1.x);
    u_xlat7.xyz = u_xlat3.xyz * u_xlat10.xxx + _MainLightPosition.xyz;
    u_xlat33 = dot(u_xlat7.xyz, u_xlat7.xyz);
    u_xlat33 = max(u_xlat33, 1.17549435e-38);
    u_xlat33 = inversesqrt(u_xlat33);
    u_xlat7.xyz = vec3(u_xlat33) * u_xlat7.xyz;
    u_xlat33 = dot(u_xlat2.xyz, u_xlat7.xyz);
    u_xlat33 = clamp(u_xlat33, 0.0, 1.0);
    u_xlat33 = log2(u_xlat33);
    u_xlat33 = u_xlat1.x * u_xlat33;
    u_xlat33 = exp2(u_xlat33);
    u_xlat7.xyz = vec3(u_xlat33) * _SpecColor.xyz;
    u_xlat4.xyz = u_xlat4.xyz * u_xlat7.xyz;
    u_xlat4.xyz = u_xlat6.xyz * u_xlat1.yzw + u_xlat4.xyz;
    u_xlat33 = min(_AdditionalLightsCount.x, unity_LightData.y);
    u_xlatu33 =  uint(int(u_xlat33));
    u_xlat32 = u_xlat32 * _AdditionalShadowFadeParams.x + _AdditionalShadowFadeParams.y;
    u_xlat32 = clamp(u_xlat32, 0.0, 1.0);
    u_xlat6.x = float(0.0);
    u_xlat6.y = float(0.0);
    u_xlat6.z = float(0.0);
    for(uint u_xlatu_loop_1 = 0u ; u_xlatu_loop_1<u_xlatu33 ; u_xlatu_loop_1++)
    {
        u_xlatu35 = u_xlatu_loop_1 >> (2u & uint(0x1F));
        u_xlati36 = int(u_xlatu_loop_1 & 3u);
        u_xlat35 = dot(unity_LightIndices[int(u_xlatu35)], uintBitsToFloat(ImmCB_0[u_xlati36]));
        u_xlati35 = int(u_xlat35);
        u_xlat7.xyz = (-vs_TEXCOORD1.xyz) * _AdditionalLightsPosition[u_xlati35].www + _AdditionalLightsPosition[u_xlati35].xyz;
        u_xlat36 = dot(u_xlat7.xyz, u_xlat7.xyz);
        u_xlat36 = max(u_xlat36, 6.10351562e-05);
        u_xlat37 = inversesqrt(u_xlat36);
        u_xlat7.xyz = vec3(u_xlat37) * u_xlat7.xyz;
        u_xlat37 = float(1.0) / float(u_xlat36);
        u_xlat36 = u_xlat36 * _AdditionalLightsAttenuation[u_xlati35].x;
        u_xlat36 = (-u_xlat36) * u_xlat36 + 1.0;
        u_xlat36 = max(u_xlat36, 0.0);
        u_xlat36 = u_xlat36 * u_xlat36;
        u_xlat36 = u_xlat36 * u_xlat37;
        u_xlat37 = dot(_AdditionalLightsSpotDir[u_xlati35].xyz, u_xlat7.xyz);
        u_xlat37 = u_xlat37 * _AdditionalLightsAttenuation[u_xlati35].z + _AdditionalLightsAttenuation[u_xlati35].w;
        u_xlat37 = clamp(u_xlat37, 0.0, 1.0);
        u_xlat37 = u_xlat37 * u_xlat37;
        u_xlat36 = u_xlat36 * u_xlat37;
        u_xlati37 = int(_AdditionalShadowParams[u_xlati35].w);
        u_xlatb8.x = u_xlati37>=0;
        if(u_xlatb8.x){
            u_xlatb8.x = vec4(0.0, 0.0, 0.0, 0.0)!=vec4(_AdditionalShadowParams[u_xlati35].z);
            if(u_xlatb8.x){
                u_xlatb8.xyz = greaterThanEqual(abs(u_xlat7.zzyz), abs(u_xlat7.xyxx)).xyz;
                u_xlatb8.x = u_xlatb8.y && u_xlatb8.x;
                u_xlatb9.xyz = lessThan((-u_xlat7.zyxz), vec4(0.0, 0.0, 0.0, 0.0)).xyz;
                u_xlat18.x = (u_xlatb9.x) ? float(5.0) : float(4.0);
                u_xlat18.z = (u_xlatb9.y) ? float(3.0) : float(2.0);
                u_xlat9.x = u_xlatb9.z ? 1.0 : float(0.0);
                u_xlat28 = (u_xlatb8.z) ? u_xlat18.z : u_xlat9.x;
                u_xlat8.x = (u_xlatb8.x) ? u_xlat18.x : u_xlat28;
                u_xlat18.x = trunc(_AdditionalShadowParams[u_xlati35].w);
                u_xlat8.x = u_xlat8.x + u_xlat18.x;
                u_xlati37 = int(u_xlat8.x);
            }
            u_xlati37 = u_xlati37 << (2 & int(0x1F));
            u_xlat8 = vs_TEXCOORD1.yyyy * _AdditionalLightsWorldToShadow[(u_xlati37 + 1) / 4][(u_xlati37 + 1) % 4];
            u_xlat8 = _AdditionalLightsWorldToShadow[u_xlati37 / 4][u_xlati37 % 4] * vs_TEXCOORD1.xxxx + u_xlat8;
            u_xlat8 = _AdditionalLightsWorldToShadow[(u_xlati37 + 2) / 4][(u_xlati37 + 2) % 4] * vs_TEXCOORD1.zzzz + u_xlat8;
            u_xlat8 = u_xlat8 + _AdditionalLightsWorldToShadow[(u_xlati37 + 3) / 4][(u_xlati37 + 3) % 4];
            u_xlat8.xyz = u_xlat8.xyz / u_xlat8.www;
            vec3 txVec1 = vec3(u_xlat8.xy,u_xlat8.z);
            u_xlat37 = textureLod(sampler2DShadow(_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare), txVec1, 0.0);
            u_xlat8.x = 1.0 + (-_AdditionalShadowParams[u_xlati35].x);
            u_xlat37 = u_xlat37 * _AdditionalShadowParams[u_xlati35].x + u_xlat8.x;
            u_xlatb8.x = 0.0>=u_xlat8.z;
            u_xlatb18 = u_xlat8.z>=1.0;
            u_xlatb8.x = u_xlatb18 || u_xlatb8.x;
            u_xlat37 = (u_xlatb8.x) ? 1.0 : u_xlat37;
        } else {
            u_xlat37 = 1.0;
        }
        u_xlat8.x = (-u_xlat37) + 1.0;
        u_xlat37 = u_xlat32 * u_xlat8.x + u_xlat37;
        u_xlat36 = u_xlat36 * u_xlat37;
        u_xlat8.xyz = vec3(u_xlat36) * _AdditionalLightsColor[u_xlati35].xyz;
        u_xlat35 = dot(u_xlat2.xyz, u_xlat7.xyz);
        u_xlat35 = clamp(u_xlat35, 0.0, 1.0);
        u_xlat9.xyz = vec3(u_xlat35) * u_xlat8.xyz;
        u_xlat7.xyz = u_xlat3.xyz * u_xlat10.xxx + u_xlat7.xyz;
        u_xlat35 = dot(u_xlat7.xyz, u_xlat7.xyz);
        u_xlat35 = max(u_xlat35, 1.17549435e-38);
        u_xlat35 = inversesqrt(u_xlat35);
        u_xlat7.xyz = vec3(u_xlat35) * u_xlat7.xyz;
        u_xlat35 = dot(u_xlat2.xyz, u_xlat7.xyz);
        u_xlat35 = clamp(u_xlat35, 0.0, 1.0);
        u_xlat35 = log2(u_xlat35);
        u_xlat35 = u_xlat1.x * u_xlat35;
        u_xlat35 = exp2(u_xlat35);
        u_xlat7.xyz = vec3(u_xlat35) * _SpecColor.xyz;
        u_xlat7.xyz = u_xlat7.xyz * u_xlat8.xyz;
        u_xlat7.xyz = u_xlat9.xyz * u_xlat1.yzw + u_xlat7.xyz;
        u_xlat6.xyz = u_xlat6.xyz + u_xlat7.xyz;
    }
    u_xlat1.xyz = u_xlat5.xyz * u_xlat1.yzw + u_xlat4.xyz;
    u_xlat1.xyz = u_xlat6.xyz + u_xlat1.xyz;
    u_xlat10.x = u_xlat30 * (-u_xlat30);
    u_xlat10.x = exp2(u_xlat10.x);
    u_xlat1.xyz = u_xlat1.xyz + (-unity_FogColor.xyz);
    SV_Target0.xyz = u_xlat10.xxx * u_xlat1.xyz + unity_FogColor.xyz;
    u_xlatb10 = _Surface==1.0;
    u_xlatb10 = u_xlatb10 || u_xlatb20;
    SV_Target0.w = (u_xlatb10) ? u_xlat0.x : 1.0;
    return;
}

