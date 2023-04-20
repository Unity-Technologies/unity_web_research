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
	float _NightFade;
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
layout(set = 0, binding = 0) uniform mediump textureCube unity_SpecCube0;
layout(set = 0, binding = 1) uniform mediump texture2D _MainLightShadowmapTexture;
layout(set = 0, binding = 2) uniform mediump texture2D _AdditionalLightsShadowmapTexture;
layout(set = 0, binding = 3) uniform mediump texture2D Texture2D_52571568;
layout(set = 0, binding = 4) uniform mediump texture2D Texture2D_F0A81025;
layout(set = 0, binding = 5) uniform mediump texture2D Texture2D_8BA53EED;
layout(set = 0, binding = 6) uniform mediump texture2D Texture2D_AB84E4D0;
layout(location = 0) in highp  vec4 vs_INTERP4;
layout(location = 1) in highp  vec4 vs_INTERP5;
layout(location = 2) in highp  vec3 vs_INTERP7;
layout(location = 3) in highp  vec3 vs_INTERP8;
layout(location = 0) out highp vec4 SV_Target0;
vec3 u_xlat0;
vec4 u_xlat1;
vec4 u_xlat2;
vec3 u_xlat3;
vec4 u_xlat4;
vec4 u_xlat5;
bvec4 u_xlatb5;
vec4 u_xlat6;
vec4 u_xlat7;
vec4 u_xlat8;
vec2 u_xlat9;
vec3 u_xlat10;
vec4 u_xlat11;
bvec4 u_xlatb11;
float u_xlat15;
uint u_xlatu15;
vec3 u_xlat17;
int u_xlati17;
uint u_xlatu17;
bool u_xlatb17;
vec3 u_xlat21;
float u_xlat23;
float u_xlat25;
bool u_xlatb25;
float u_xlat27;
float u_xlat29;
bool u_xlatb29;
float u_xlat36;
int u_xlati36;
uint u_xlatu36;
bool u_xlatb36;
float u_xlat37;
bool u_xlatb37;
float u_xlat38;
uint u_xlatu38;
bool u_xlatb38;
float u_xlat39;
float u_xlat40;
float u_xlat41;
float u_xlat42;
int u_xlati42;
float u_xlat43;
float u_xlat44;
int u_xlati44;
float u_xlat46;
bool u_xlatb46;
float u_xlat47;
layout(set = 0, binding = 7) uniform mediump  sampler samplerunity_SpecCube0;
layout(set = 0, binding = 8) uniform mediump  samplerShadow sampler_LinearClampCompare;
layout(set = 0, binding = 9) uniform mediump  sampler samplerTexture2D_52571568;
layout(set = 0, binding = 10) uniform mediump  sampler samplerTexture2D_F0A81025;
layout(set = 0, binding = 11) uniform mediump  sampler samplerTexture2D_8BA53EED;
layout(set = 0, binding = 12) uniform mediump  sampler samplerTexture2D_AB84E4D0;
void main()
{
    u_xlat0.xyz = texture(sampler2D(Texture2D_52571568, samplerTexture2D_52571568), vs_INTERP5.xy, _GlobalMipBias.x).xyz;
    u_xlat1.xyz = texture(sampler2D(Texture2D_8BA53EED, samplerTexture2D_8BA53EED), vs_INTERP5.xy, _GlobalMipBias.x).xyw;
    u_xlat1.x = u_xlat1.x * u_xlat1.z;
    u_xlat1.xy = u_xlat1.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat36 = dot(u_xlat1.xy, u_xlat1.xy);
    u_xlat36 = min(u_xlat36, 1.0);
    u_xlat36 = (-u_xlat36) + 1.0;
    u_xlat36 = sqrt(u_xlat36);
    u_xlat36 = max(u_xlat36, 1.00000002e-16);
    u_xlat2.xyz = texture(sampler2D(Texture2D_AB84E4D0, samplerTexture2D_AB84E4D0), vs_INTERP5.xy, _GlobalMipBias.x).xyz;
    u_xlat25 = dot(unity_ObjectToWorld[3].xyz, unity_ObjectToWorld[3].xyz);
    u_xlat25 = sqrt(u_xlat25);
    u_xlat25 = fract(u_xlat25);
    u_xlat25 = u_xlat25 + _NightFade;
    u_xlatb25 = u_xlat25>=1.0;
    u_xlat25 = u_xlatb25 ? 1.0 : float(0.0);
    u_xlat3.xyz = texture(sampler2D(Texture2D_F0A81025, samplerTexture2D_F0A81025), vs_INTERP5.xy, _GlobalMipBias.x).xwy;
    u_xlatb37 = 0.0<vs_INTERP4.w;
    u_xlat37 = (u_xlatb37) ? 1.0 : -1.0;
    u_xlatb38 = unity_WorldTransformParams.w>=0.0;
    u_xlat38 = (u_xlatb38) ? 1.0 : -1.0;
    u_xlat37 = u_xlat37 * u_xlat38;
    u_xlat4.xyz = vs_INTERP4.yzx * vs_INTERP8.zxy;
    u_xlat4.xyz = vs_INTERP8.yzx * vs_INTERP4.zxy + (-u_xlat4.xyz);
    u_xlat4.xyz = vec3(u_xlat37) * u_xlat4.xyz;
    u_xlat4.xyz = u_xlat1.yyy * u_xlat4.xyz;
    u_xlat1.xyw = u_xlat1.xxx * vs_INTERP4.xyz + u_xlat4.xyz;
    u_xlat1.xyw = vec3(u_xlat36) * vs_INTERP8.xyz + u_xlat1.xyw;
    u_xlat36 = dot(u_xlat1.xyw, u_xlat1.xyw);
    u_xlat36 = inversesqrt(u_xlat36);
    u_xlat4.xyz = vec3(u_xlat36) * u_xlat1.xyw;
    u_xlatb36 = unity_OrthoParams.w==0.0;
    u_xlat1.xyw = (-vs_INTERP7.xyz) + _WorldSpaceCameraPos.xyz;
    u_xlat38 = dot(u_xlat1.xyw, u_xlat1.xyw);
    u_xlat38 = inversesqrt(u_xlat38);
    u_xlat1.xyw = u_xlat1.xyw * vec3(u_xlat38);
    u_xlat5.x = unity_MatrixV[0].z;
    u_xlat5.y = unity_MatrixV[1].z;
    u_xlat5.z = unity_MatrixV[2].z;
    u_xlat1.xyw = (bool(u_xlatb36)) ? u_xlat1.xyw : u_xlat5.xyz;
    u_xlat5.xyz = vs_INTERP7.xyz + (-_CascadeShadowSplitSpheres0.xyz);
    u_xlat6.xyz = vs_INTERP7.xyz + (-_CascadeShadowSplitSpheres1.xyz);
    u_xlat7.xyz = vs_INTERP7.xyz + (-_CascadeShadowSplitSpheres2.xyz);
    u_xlat8.xyz = vs_INTERP7.xyz + (-_CascadeShadowSplitSpheres3.xyz);
    u_xlat5.x = dot(u_xlat5.xyz, u_xlat5.xyz);
    u_xlat5.y = dot(u_xlat6.xyz, u_xlat6.xyz);
    u_xlat5.z = dot(u_xlat7.xyz, u_xlat7.xyz);
    u_xlat5.w = dot(u_xlat8.xyz, u_xlat8.xyz);
    u_xlatb5 = lessThan(u_xlat5, _CascadeShadowSplitSphereRadii);
    u_xlat6.x = u_xlatb5.x ? float(1.0) : 0.0;
    u_xlat6.y = u_xlatb5.y ? float(1.0) : 0.0;
    u_xlat6.z = u_xlatb5.z ? float(1.0) : 0.0;
    u_xlat6.w = u_xlatb5.w ? float(1.0) : 0.0;
;
    u_xlat5.x = (u_xlatb5.x) ? float(-1.0) : float(-0.0);
    u_xlat5.y = (u_xlatb5.y) ? float(-1.0) : float(-0.0);
    u_xlat5.z = (u_xlatb5.z) ? float(-1.0) : float(-0.0);
    u_xlat5.xyz = u_xlat5.xyz + u_xlat6.yzw;
    u_xlat6.yzw = max(u_xlat5.xyz, vec3(0.0, 0.0, 0.0));
    u_xlat36 = dot(u_xlat6, vec4(4.0, 3.0, 2.0, 1.0));
    u_xlat36 = (-u_xlat36) + 4.0;
    u_xlatu36 = uint(u_xlat36);
    u_xlati36 = int(u_xlatu36) << (2 & int(0x1F));
    u_xlat5.xyz = vs_INTERP7.yyy * _MainLightWorldToShadow[(u_xlati36 + 1) / 4][(u_xlati36 + 1) % 4].xyz;
    u_xlat5.xyz = _MainLightWorldToShadow[u_xlati36 / 4][u_xlati36 % 4].xyz * vs_INTERP7.xxx + u_xlat5.xyz;
    u_xlat5.xyz = _MainLightWorldToShadow[(u_xlati36 + 2) / 4][(u_xlati36 + 2) % 4].xyz * vs_INTERP7.zzz + u_xlat5.xyz;
    u_xlat5.xyz = u_xlat5.xyz + _MainLightWorldToShadow[(u_xlati36 + 3) / 4][(u_xlati36 + 3) % 4].xyz;
    u_xlat36 = vs_INTERP7.y * unity_MatrixV[1].z;
    u_xlat36 = unity_MatrixV[0].z * vs_INTERP7.x + u_xlat36;
    u_xlat36 = unity_MatrixV[2].z * vs_INTERP7.z + u_xlat36;
    u_xlat36 = u_xlat36 + unity_MatrixV[3].z;
    u_xlat36 = (-u_xlat36) + (-_ProjectionParams.y);
    u_xlat36 = max(u_xlat36, 0.0);
    u_xlat36 = u_xlat36 * unity_FogParams.x;
    u_xlat4.w = 1.0;
    u_xlat6.x = dot(unity_SHAr, u_xlat4);
    u_xlat6.y = dot(unity_SHAg, u_xlat4);
    u_xlat6.z = dot(unity_SHAb, u_xlat4);
    u_xlat7 = u_xlat4.yzzx * u_xlat4.xyzz;
    u_xlat8.x = dot(unity_SHBr, u_xlat7);
    u_xlat8.y = dot(unity_SHBg, u_xlat7);
    u_xlat8.z = dot(unity_SHBb, u_xlat7);
    u_xlat38 = u_xlat4.y * u_xlat4.y;
    u_xlat38 = u_xlat4.x * u_xlat4.x + (-u_xlat38);
    u_xlat7.xyz = unity_SHC.xyz * vec3(u_xlat38) + u_xlat8.xyz;
    u_xlat6.xyz = u_xlat6.xyz + u_xlat7.xyz;
    u_xlat6.xyz = max(u_xlat6.xyz, vec3(0.0, 0.0, 0.0));
    u_xlat3.xy = u_xlat3.xy;
    u_xlat3.xy = clamp(u_xlat3.xy, 0.0, 1.0);
    u_xlat38 = (-u_xlat3.x) * 0.959999979 + 0.959999979;
    u_xlat39 = (-u_xlat38) + 1.0;
    u_xlat7.xyz = u_xlat0.xyz * vec3(u_xlat38);
    u_xlat0.xyz = u_xlat0.xyz + vec3(-0.0399999991, -0.0399999991, -0.0399999991);
    u_xlat0.xyz = u_xlat3.xxx * u_xlat0.xyz + vec3(0.0399999991, 0.0399999991, 0.0399999991);
    u_xlat38 = (-u_xlat3.y) + 1.0;
    u_xlat3.x = u_xlat38 * u_xlat38;
    u_xlat3.x = max(u_xlat3.x, 0.0078125);
    u_xlat40 = u_xlat3.x * u_xlat3.x;
    u_xlat15 = u_xlat39 + u_xlat3.y;
    u_xlat15 = min(u_xlat15, 1.0);
    u_xlat39 = u_xlat3.x * 4.0 + 2.0;
    u_xlat27 = min(u_xlat3.z, 1.0);
    vec3 txVec0 = vec3(u_xlat5.xy,u_xlat5.z);
    u_xlat5.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_LinearClampCompare), txVec0, 0.0);
    u_xlat17.x = (-_MainLightShadowParams.x) + 1.0;
    u_xlat5.x = u_xlat5.x * _MainLightShadowParams.x + u_xlat17.x;
    u_xlatb17 = 0.0>=u_xlat5.z;
    u_xlatb29 = u_xlat5.z>=1.0;
    u_xlatb17 = u_xlatb29 || u_xlatb17;
    u_xlat5.x = (u_xlatb17) ? 1.0 : u_xlat5.x;
    u_xlat17.xyz = vs_INTERP7.xyz + (-_WorldSpaceCameraPos.xyz);
    u_xlat17.x = dot(u_xlat17.xyz, u_xlat17.xyz);
    u_xlat29 = u_xlat17.x * _MainLightShadowParams.z + _MainLightShadowParams.w;
    u_xlat29 = clamp(u_xlat29, 0.0, 1.0);
    u_xlat41 = (-u_xlat5.x) + 1.0;
    u_xlat5.x = u_xlat29 * u_xlat41 + u_xlat5.x;
    u_xlat29 = dot((-u_xlat1.xyw), u_xlat4.xyz);
    u_xlat29 = u_xlat29 + u_xlat29;
    u_xlat8.xyz = u_xlat4.xyz * (-vec3(u_xlat29)) + (-u_xlat1.xyw);
    u_xlat29 = dot(u_xlat4.xyz, u_xlat1.xyw);
    u_xlat29 = clamp(u_xlat29, 0.0, 1.0);
    u_xlat29 = (-u_xlat29) + 1.0;
    u_xlat29 = u_xlat29 * u_xlat29;
    u_xlat29 = u_xlat29 * u_xlat29;
    u_xlat41 = (-u_xlat38) * 0.699999988 + 1.70000005;
    u_xlat2.w = u_xlat38 * u_xlat41;
    u_xlat2 = u_xlat2 * vec4(14.0, 14.0, 14.0, 6.0);
    u_xlat8 = textureLod(samplerCube(unity_SpecCube0, samplerunity_SpecCube0), u_xlat8.xyz, u_xlat2.w);
    u_xlat38 = u_xlat8.w + -1.0;
    u_xlat38 = unity_SpecCube0_HDR.w * u_xlat38 + 1.0;
    u_xlat38 = max(u_xlat38, 0.0);
    u_xlat38 = log2(u_xlat38);
    u_xlat38 = u_xlat38 * unity_SpecCube0_HDR.y;
    u_xlat38 = exp2(u_xlat38);
    u_xlat38 = u_xlat38 * unity_SpecCube0_HDR.x;
    u_xlat8.xyz = u_xlat8.xyz * vec3(u_xlat38);
    u_xlat9.xy = u_xlat3.xx * u_xlat3.xx + vec2(-1.0, 1.0);
    u_xlat38 = float(1.0) / u_xlat9.y;
    u_xlat21.xyz = (-u_xlat0.xyz) + vec3(u_xlat15);
    u_xlat21.xyz = vec3(u_xlat29) * u_xlat21.xyz + u_xlat0.xyz;
    u_xlat21.xyz = vec3(u_xlat38) * u_xlat21.xyz;
    u_xlat8.xyz = u_xlat8.xyz * u_xlat21.xyz;
    u_xlat6.xyz = u_xlat6.xyz * u_xlat7.xyz + u_xlat8.xyz;
    u_xlat38 = u_xlat5.x * unity_LightData.z;
    u_xlat3.x = dot(u_xlat4.xyz, _MainLightPosition.xyz);
    u_xlat3.x = clamp(u_xlat3.x, 0.0, 1.0);
    u_xlat38 = u_xlat38 * u_xlat3.x;
    u_xlat5.xzw = vec3(u_xlat38) * _MainLightColor.xyz;
    u_xlat8.xyz = u_xlat1.xyw + _MainLightPosition.xyz;
    u_xlat38 = dot(u_xlat8.xyz, u_xlat8.xyz);
    u_xlat38 = max(u_xlat38, 1.17549435e-38);
    u_xlat38 = inversesqrt(u_xlat38);
    u_xlat8.xyz = vec3(u_xlat38) * u_xlat8.xyz;
    u_xlat38 = dot(u_xlat4.xyz, u_xlat8.xyz);
    u_xlat38 = clamp(u_xlat38, 0.0, 1.0);
    u_xlat3.x = dot(_MainLightPosition.xyz, u_xlat8.xyz);
    u_xlat3.x = clamp(u_xlat3.x, 0.0, 1.0);
    u_xlat38 = u_xlat38 * u_xlat38;
    u_xlat38 = u_xlat38 * u_xlat9.x + 1.00001001;
    u_xlat3.x = u_xlat3.x * u_xlat3.x;
    u_xlat38 = u_xlat38 * u_xlat38;
    u_xlat3.x = max(u_xlat3.x, 0.100000001);
    u_xlat38 = u_xlat38 * u_xlat3.x;
    u_xlat38 = u_xlat39 * u_xlat38;
    u_xlat38 = u_xlat40 / u_xlat38;
    u_xlat8.xyz = u_xlat0.xyz * vec3(u_xlat38) + u_xlat7.xyz;
    u_xlat5.xzw = u_xlat5.xzw * u_xlat8.xyz;
    u_xlat38 = min(_AdditionalLightsCount.x, unity_LightData.y);
    u_xlatu38 =  uint(int(u_xlat38));
    u_xlat3.x = u_xlat17.x * _AdditionalShadowFadeParams.x + _AdditionalShadowFadeParams.y;
    u_xlat3.x = clamp(u_xlat3.x, 0.0, 1.0);
    u_xlat8.x = float(0.0);
    u_xlat8.y = float(0.0);
    u_xlat8.z = float(0.0);
    for(uint u_xlatu_loop_1 = 0u ; u_xlatu_loop_1<u_xlatu38 ; u_xlatu_loop_1++)
    {
        u_xlatu17 = u_xlatu_loop_1 >> (2u & uint(0x1F));
        u_xlati42 = int(u_xlatu_loop_1 & 3u);
        u_xlat17.x = dot(unity_LightIndices[int(u_xlatu17)], uintBitsToFloat(ImmCB_0[u_xlati42]));
        u_xlati17 = int(u_xlat17.x);
        u_xlat21.xyz = (-vs_INTERP7.xyz) * _AdditionalLightsPosition[u_xlati17].www + _AdditionalLightsPosition[u_xlati17].xyz;
        u_xlat42 = dot(u_xlat21.xyz, u_xlat21.xyz);
        u_xlat42 = max(u_xlat42, 6.10351562e-05);
        u_xlat43 = inversesqrt(u_xlat42);
        u_xlat10.xyz = vec3(u_xlat43) * u_xlat21.xyz;
        u_xlat44 = float(1.0) / float(u_xlat42);
        u_xlat42 = u_xlat42 * _AdditionalLightsAttenuation[u_xlati17].x;
        u_xlat42 = (-u_xlat42) * u_xlat42 + 1.0;
        u_xlat42 = max(u_xlat42, 0.0);
        u_xlat42 = u_xlat42 * u_xlat42;
        u_xlat42 = u_xlat42 * u_xlat44;
        u_xlat44 = dot(_AdditionalLightsSpotDir[u_xlati17].xyz, u_xlat10.xyz);
        u_xlat44 = u_xlat44 * _AdditionalLightsAttenuation[u_xlati17].z + _AdditionalLightsAttenuation[u_xlati17].w;
        u_xlat44 = clamp(u_xlat44, 0.0, 1.0);
        u_xlat44 = u_xlat44 * u_xlat44;
        u_xlat42 = u_xlat42 * u_xlat44;
        u_xlati44 = int(_AdditionalShadowParams[u_xlati17].w);
        u_xlatb46 = u_xlati44>=0;
        if(u_xlatb46){
            u_xlatb46 = vec4(0.0, 0.0, 0.0, 0.0)!=vec4(_AdditionalShadowParams[u_xlati17].z);
            if(u_xlatb46){
                u_xlatb11.xyz = greaterThanEqual(abs(u_xlat10.zzyz), abs(u_xlat10.xyxx)).xyz;
                u_xlatb46 = u_xlatb11.y && u_xlatb11.x;
                u_xlatb11.xyw = lessThan((-u_xlat10.zyzx), vec4(0.0, 0.0, 0.0, 0.0)).xyw;
                u_xlat11.x = (u_xlatb11.x) ? float(5.0) : float(4.0);
                u_xlat11.y = (u_xlatb11.y) ? float(3.0) : float(2.0);
                u_xlat47 = u_xlatb11.w ? 1.0 : float(0.0);
                u_xlat23 = (u_xlatb11.z) ? u_xlat11.y : u_xlat47;
                u_xlat46 = (u_xlatb46) ? u_xlat11.x : u_xlat23;
                u_xlat11.x = trunc(_AdditionalShadowParams[u_xlati17].w);
                u_xlat46 = u_xlat46 + u_xlat11.x;
                u_xlati44 = int(u_xlat46);
            }
            u_xlati44 = u_xlati44 << (2 & int(0x1F));
            u_xlat11 = vs_INTERP7.yyyy * _AdditionalLightsWorldToShadow[(u_xlati44 + 1) / 4][(u_xlati44 + 1) % 4];
            u_xlat11 = _AdditionalLightsWorldToShadow[u_xlati44 / 4][u_xlati44 % 4] * vs_INTERP7.xxxx + u_xlat11;
            u_xlat11 = _AdditionalLightsWorldToShadow[(u_xlati44 + 2) / 4][(u_xlati44 + 2) % 4] * vs_INTERP7.zzzz + u_xlat11;
            u_xlat11 = u_xlat11 + _AdditionalLightsWorldToShadow[(u_xlati44 + 3) / 4][(u_xlati44 + 3) % 4];
            u_xlat11.xyz = u_xlat11.xyz / u_xlat11.www;
            vec3 txVec1 = vec3(u_xlat11.xy,u_xlat11.z);
            u_xlat44 = textureLod(sampler2DShadow(_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare), txVec1, 0.0);
            u_xlat46 = 1.0 + (-_AdditionalShadowParams[u_xlati17].x);
            u_xlat44 = u_xlat44 * _AdditionalShadowParams[u_xlati17].x + u_xlat46;
            u_xlatb46 = 0.0>=u_xlat11.z;
            u_xlatb11.x = u_xlat11.z>=1.0;
            u_xlatb46 = u_xlatb46 || u_xlatb11.x;
            u_xlat44 = (u_xlatb46) ? 1.0 : u_xlat44;
        } else {
            u_xlat44 = 1.0;
        }
        u_xlat46 = (-u_xlat44) + 1.0;
        u_xlat44 = u_xlat3.x * u_xlat46 + u_xlat44;
        u_xlat42 = u_xlat42 * u_xlat44;
        u_xlat44 = dot(u_xlat4.xyz, u_xlat10.xyz);
        u_xlat44 = clamp(u_xlat44, 0.0, 1.0);
        u_xlat42 = u_xlat42 * u_xlat44;
        u_xlat11.xyz = vec3(u_xlat42) * _AdditionalLightsColor[u_xlati17].xyz;
        u_xlat21.xyz = u_xlat21.xyz * vec3(u_xlat43) + u_xlat1.xyw;
        u_xlat17.x = dot(u_xlat21.xyz, u_xlat21.xyz);
        u_xlat17.x = max(u_xlat17.x, 1.17549435e-38);
        u_xlat17.x = inversesqrt(u_xlat17.x);
        u_xlat21.xyz = u_xlat17.xxx * u_xlat21.xyz;
        u_xlat17.x = dot(u_xlat4.xyz, u_xlat21.xyz);
        u_xlat17.x = clamp(u_xlat17.x, 0.0, 1.0);
        u_xlat42 = dot(u_xlat10.xyz, u_xlat21.xyz);
        u_xlat42 = clamp(u_xlat42, 0.0, 1.0);
        u_xlat17.x = u_xlat17.x * u_xlat17.x;
        u_xlat17.x = u_xlat17.x * u_xlat9.x + 1.00001001;
        u_xlat42 = u_xlat42 * u_xlat42;
        u_xlat17.x = u_xlat17.x * u_xlat17.x;
        u_xlat42 = max(u_xlat42, 0.100000001);
        u_xlat17.x = u_xlat17.x * u_xlat42;
        u_xlat17.x = u_xlat39 * u_xlat17.x;
        u_xlat17.x = u_xlat40 / u_xlat17.x;
        u_xlat21.xyz = u_xlat0.xyz * u_xlat17.xxx + u_xlat7.xyz;
        u_xlat8.xyz = u_xlat21.xyz * u_xlat11.xyz + u_xlat8.xyz;
    }
    u_xlat0.xyz = u_xlat6.xyz * vec3(u_xlat27) + u_xlat5.xzw;
    u_xlat0.xyz = u_xlat8.xyz + u_xlat0.xyz;
    u_xlat0.xyz = u_xlat2.xyz * vec3(u_xlat25) + u_xlat0.xyz;
    u_xlat36 = u_xlat36 * (-u_xlat36);
    u_xlat36 = exp2(u_xlat36);
    u_xlat0.xyz = u_xlat0.xyz + (-unity_FogColor.xyz);
    SV_Target0.xyz = vec3(u_xlat36) * u_xlat0.xyz + unity_FogColor.xyz;
    SV_Target0.w = 1.0;
    return;
}
