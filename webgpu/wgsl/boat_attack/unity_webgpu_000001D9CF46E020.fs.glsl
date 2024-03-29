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
	vec4 _ScreenParams;
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
layout(set = 0, binding = 1) uniform mediump texture2D _MainLightShadowmapTexture;
layout(set = 0, binding = 2) uniform mediump texture2D _AdditionalLightsShadowmapTexture;
layout(set = 0, binding = 3) uniform mediump texture2D Texture2D_B222E8F;
layout(set = 0, binding = 4) uniform mediump texture2D Texture2D_D9BFD5F1;
layout(location = 0) in highp  vec4 vs_INTERP4;
layout(location = 1) in highp  vec4 vs_INTERP5;
layout(location = 2) in highp  vec4 vs_INTERP6;
layout(location = 3) in highp  vec3 vs_INTERP8;
layout(location = 4) in highp  vec3 vs_INTERP9;
layout(location = 0) out highp vec4 SV_Target0;
vec3 u_xlat0;
vec3 u_xlat1;
int u_xlati1;
uvec3 u_xlatu1;
vec3 u_xlat2;
vec4 u_xlat3;
uint u_xlatu3;
vec3 u_xlat4;
vec4 u_xlat5;
vec4 u_xlat6;
int u_xlati6;
uint u_xlatu6;
bvec4 u_xlatb6;
vec4 u_xlat7;
vec4 u_xlat8;
vec3 u_xlat9;
vec4 u_xlat10;
bvec3 u_xlatb10;
float u_xlat11;
bvec3 u_xlatb11;
float u_xlat13;
int u_xlati13;
uint u_xlatu13;
bool u_xlatb13;
vec3 u_xlat17;
vec3 u_xlat18;
float u_xlat19;
vec3 u_xlat22;
bool u_xlatb22;
vec2 u_xlat25;
int u_xlati25;
uint u_xlatu25;
bvec2 u_xlatb25;
float u_xlat30;
float u_xlat34;
float u_xlat36;
int u_xlati36;
uint u_xlatu36;
bool u_xlatb36;
float u_xlat37;
bool u_xlatb37;
float u_xlat38;
bool u_xlatb38;
float u_xlat39;
uint u_xlatu39;
float u_xlat40;
float u_xlat43;
int u_xlati43;
float u_xlat44;
float u_xlat45;
int u_xlati45;
layout(set = 0, binding = 5) uniform mediump  sampler samplerunity_SpecCube0;
layout(set = 0, binding = 6) uniform mediump  samplerShadow sampler_LinearClampCompare;
layout(set = 0, binding = 7) uniform mediump  sampler samplerTexture2D_B222E8F;
layout(set = 0, binding = 8) uniform mediump  sampler samplerTexture2D_D9BFD5F1;
int int_bitfieldInsert(int base, int insert, int offset, int bits) {
    uint mask = ~(uint(0xffffffffu) << uint(bits)) << uint(offset);
    return int((uint(base) & ~mask) | ((uint(insert) << uint(offset)) & mask));
}

void main()
{
    u_xlat0.x = dot(vs_INTERP9.xyz, vs_INTERP9.xyz);
    u_xlat0.x = sqrt(u_xlat0.x);
    u_xlat0.x = float(1.0) / u_xlat0.x;
    u_xlat0.xyz = u_xlat0.xxx * vs_INTERP9.xyz;
    u_xlatb36 = unity_OrthoParams.w==0.0;
    u_xlat1.xyz = (-vs_INTERP8.xyz) + _WorldSpaceCameraPos.xyz;
    u_xlat37 = dot(u_xlat1.xyz, u_xlat1.xyz);
    u_xlat37 = inversesqrt(u_xlat37);
    u_xlat1.xyz = vec3(u_xlat37) * u_xlat1.xyz;
    u_xlat2.x = (u_xlatb36) ? u_xlat1.x : unity_MatrixV[0].z;
    u_xlat2.y = (u_xlatb36) ? u_xlat1.y : unity_MatrixV[1].z;
    u_xlat2.z = (u_xlatb36) ? u_xlat1.z : unity_MatrixV[2].z;
    u_xlat1.xyz = u_xlat2.yyy * unity_WorldToObject[1].xyz;
    u_xlat1.xyz = unity_WorldToObject[0].xyz * u_xlat2.xxx + u_xlat1.xyz;
    u_xlat1.xyz = unity_WorldToObject[2].xyz * u_xlat2.zzz + u_xlat1.xyz;
    u_xlat36 = dot(u_xlat1.xyz, u_xlat1.xyz);
    u_xlat36 = inversesqrt(u_xlat36);
    u_xlat1.xyz = vec3(u_xlat36) * u_xlat1.xyz;
    u_xlat3 = texture(sampler2D(Texture2D_B222E8F, samplerTexture2D_B222E8F), vs_INTERP5.xy, _GlobalMipBias.x);
    u_xlat4.xyz = u_xlat3.xyz * Color_C30C7CA3.xyz;
    u_xlat5 = texture(sampler2D(Texture2D_D9BFD5F1, samplerTexture2D_D9BFD5F1), vs_INTERP5.xy, _GlobalMipBias.x).wxyz;
    u_xlat6 = u_xlat5.yzwx * vec4(2.0, 2.0, 2.0, 2.0) + vec4(-1.0, -1.0, -1.0, -1.0);
    u_xlat36 = dot(u_xlat6, u_xlat6);
    u_xlat36 = inversesqrt(u_xlat36);
    u_xlat17.xyz = vec3(u_xlat36) * u_xlat6.xyz;
    u_xlat36 = vs_INTERP6.y * 200.0;
    u_xlat36 = min(u_xlat36, 1.0);
    u_xlat3.xyz = vec3(u_xlat36) * u_xlat3.xyz;
    u_xlat6.xyz = vs_INTERP8.xyz + (-_CascadeShadowSplitSpheres0.xyz);
    u_xlat7.xyz = vs_INTERP8.xyz + (-_CascadeShadowSplitSpheres1.xyz);
    u_xlat8.xyz = vs_INTERP8.xyz + (-_CascadeShadowSplitSpheres2.xyz);
    u_xlat9.xyz = vs_INTERP8.xyz + (-_CascadeShadowSplitSpheres3.xyz);
    u_xlat6.x = dot(u_xlat6.xyz, u_xlat6.xyz);
    u_xlat6.y = dot(u_xlat7.xyz, u_xlat7.xyz);
    u_xlat6.z = dot(u_xlat8.xyz, u_xlat8.xyz);
    u_xlat6.w = dot(u_xlat9.xyz, u_xlat9.xyz);
    u_xlatb6 = lessThan(u_xlat6, _CascadeShadowSplitSphereRadii);
    u_xlat7.x = u_xlatb6.x ? float(1.0) : 0.0;
    u_xlat7.y = u_xlatb6.y ? float(1.0) : 0.0;
    u_xlat7.z = u_xlatb6.z ? float(1.0) : 0.0;
    u_xlat7.w = u_xlatb6.w ? float(1.0) : 0.0;
;
    u_xlat6.x = (u_xlatb6.x) ? float(-1.0) : float(-0.0);
    u_xlat6.y = (u_xlatb6.y) ? float(-1.0) : float(-0.0);
    u_xlat6.z = (u_xlatb6.z) ? float(-1.0) : float(-0.0);
    u_xlat6.xyz = u_xlat6.xyz + u_xlat7.yzw;
    u_xlat7.yzw = max(u_xlat6.xyz, vec3(0.0, 0.0, 0.0));
    u_xlat36 = dot(u_xlat7, vec4(4.0, 3.0, 2.0, 1.0));
    u_xlat36 = (-u_xlat36) + 4.0;
    u_xlatu36 = uint(u_xlat36);
    u_xlati36 = int(u_xlatu36) << (2 & int(0x1F));
    u_xlat6.xyz = vs_INTERP8.yyy * _MainLightWorldToShadow[(u_xlati36 + 1) / 4][(u_xlati36 + 1) % 4].xyz;
    u_xlat6.xyz = _MainLightWorldToShadow[u_xlati36 / 4][u_xlati36 % 4].xyz * vs_INTERP8.xxx + u_xlat6.xyz;
    u_xlat6.xyz = _MainLightWorldToShadow[(u_xlati36 + 2) / 4][(u_xlati36 + 2) % 4].xyz * vs_INTERP8.zzz + u_xlat6.xyz;
    u_xlat6.xyz = u_xlat6.xyz + _MainLightWorldToShadow[(u_xlati36 + 3) / 4][(u_xlati36 + 3) % 4].xyz;
    vec3 txVec0 = vec3(u_xlat6.xy,u_xlat6.z);
    u_xlat36 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_LinearClampCompare), txVec0, 0.0);
    u_xlat37 = (-_MainLightShadowParams.x) + 1.0;
    u_xlat36 = u_xlat36 * _MainLightShadowParams.x + u_xlat37;
    u_xlatb37 = 0.0>=u_xlat6.z;
    u_xlatb38 = u_xlat6.z>=1.0;
    u_xlatb37 = u_xlatb37 || u_xlatb38;
    u_xlat36 = (u_xlatb37) ? 1.0 : u_xlat36;
    u_xlat0.x = dot(u_xlat0.xyz, (-_MainLightPosition.xyz));
    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
    u_xlat6.xyz = vec3(u_xlat36) * _MainLightColor.xyz;
    u_xlat0.xyz = u_xlat0.xxx * u_xlat6.xyz;
    u_xlat0.xyz = u_xlat0.xyz * u_xlat3.xyz;
    u_xlatb37 = unity_LODFade.x<0.0;
    u_xlat38 = unity_LODFade.x + 1.0;
    u_xlat37 = (u_xlatb37) ? u_xlat38 : unity_LODFade.x;
    u_xlatb38 = 0.5>=u_xlat37;
    u_xlat1.xyz = abs(u_xlat1.xyz) * _ScreenParams.xyx;
    u_xlatu1.xyz = uvec3(u_xlat1.xyz);
    u_xlatu25 = u_xlatu1.z * 1025u;
    u_xlatu3 = u_xlatu25 >> (6u & uint(0x1F));
    u_xlati25 = int(u_xlatu25 ^ u_xlatu3);
    u_xlatu25 = uint(u_xlati25) * 9u;
    u_xlatu3 = u_xlatu25 >> (11u & uint(0x1F));
    u_xlati25 = int(u_xlatu25 ^ u_xlatu3);
    u_xlati25 = u_xlati25 * 32769;
    u_xlati13 = int(uint(u_xlati25) ^ u_xlatu1.y);
    u_xlatu13 = uint(u_xlati13) * 1025u;
    u_xlatu25 = u_xlatu13 >> (6u & uint(0x1F));
    u_xlati13 = int(u_xlatu25 ^ u_xlatu13);
    u_xlatu13 = uint(u_xlati13) * 9u;
    u_xlatu25 = u_xlatu13 >> (11u & uint(0x1F));
    u_xlati13 = int(u_xlatu25 ^ u_xlatu13);
    u_xlati13 = u_xlati13 * 32769;
    u_xlati1 = int(uint(u_xlati13) ^ u_xlatu1.x);
    u_xlatu1.x = uint(u_xlati1) * 1025u;
    u_xlatu13 = u_xlatu1.x >> (6u & uint(0x1F));
    u_xlati1 = int(u_xlatu13 ^ u_xlatu1.x);
    u_xlatu1.x = uint(u_xlati1) * 9u;
    u_xlatu13 = u_xlatu1.x >> (11u & uint(0x1F));
    u_xlati1 = int(u_xlatu13 ^ u_xlatu1.x);
    u_xlati1 = u_xlati1 * 32769;
    u_xlat1.x = intBitsToFloat(int(int_bitfieldInsert(1065353216, u_xlati1, 0 & int(0x1F), 23)));
    u_xlat1.x = u_xlat1.x + -1.0;
    u_xlat13 = (-u_xlat1.x) + 1.0;
    u_xlat1.x = (u_xlatb38) ? u_xlat1.x : u_xlat13;
    u_xlat1.x = u_xlat37 * 2.0 + (-u_xlat1.x);
    u_xlat13 = u_xlat1.x * u_xlat3.w;
    u_xlatb25.x = u_xlat13>=0.400000006;
    u_xlat25.x = u_xlatb25.x ? u_xlat13 : float(0.0);
    u_xlat1.x = u_xlat3.w * u_xlat1.x + -0.400000006;
    u_xlat37 = dFdxCoarse(u_xlat13);
    u_xlat13 = dFdyCoarse(u_xlat13);
    u_xlat13 = abs(u_xlat13) + abs(u_xlat37);
    u_xlat13 = max(u_xlat13, 9.99999975e-05);
    u_xlat1.x = u_xlat1.x / u_xlat13;
    u_xlat1.x = u_xlat1.x + 0.5;
    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
    u_xlatb13 = _AlphaToMaskAvailable!=0.0;
    u_xlat1.x = (u_xlatb13) ? u_xlat1.x : u_xlat25.x;
    u_xlat25.x = u_xlat1.x + -9.99999975e-05;
    u_xlatb25.x = u_xlat25.x<0.0;
    if(((int(u_xlatb25.x) * int(0xffffffffu)))!=0){discard;}
    u_xlatb25.x = 0.0<vs_INTERP4.w;
    u_xlatb25.y = unity_WorldTransformParams.w>=0.0;
    u_xlat25.x = (u_xlatb25.x) ? float(1.0) : float(-1.0);
    u_xlat25.y = (u_xlatb25.y) ? float(1.0) : float(-1.0);
    u_xlat25.x = u_xlat25.y * u_xlat25.x;
    u_xlat3.xyz = vs_INTERP4.yzx * vs_INTERP9.zxy;
    u_xlat3.xyz = vs_INTERP9.yzx * vs_INTERP4.zxy + (-u_xlat3.xyz);
    u_xlat3.xyz = u_xlat25.xxx * u_xlat3.xyz;
    u_xlat3.xyz = u_xlat3.xyz * u_xlat17.yyy;
    u_xlat3.xyz = u_xlat17.xxx * vs_INTERP4.xyz + u_xlat3.xyz;
    u_xlat3.xyz = u_xlat17.zzz * vs_INTERP9.xyz + u_xlat3.xyz;
    u_xlat25.x = dot(u_xlat3.xyz, u_xlat3.xyz);
    u_xlat25.x = inversesqrt(u_xlat25.x);
    u_xlat3.xyz = u_xlat25.xxx * u_xlat3.xyz;
    u_xlat3.w = 1.0;
    u_xlat6.x = dot(unity_SHAr, u_xlat3);
    u_xlat6.y = dot(unity_SHAg, u_xlat3);
    u_xlat6.z = dot(unity_SHAb, u_xlat3);
    u_xlat7 = u_xlat3.yzzx * u_xlat3.xyzz;
    u_xlat8.x = dot(unity_SHBr, u_xlat7);
    u_xlat8.y = dot(unity_SHBg, u_xlat7);
    u_xlat8.z = dot(unity_SHBb, u_xlat7);
    u_xlat25.x = u_xlat3.y * u_xlat3.y;
    u_xlat25.x = u_xlat3.x * u_xlat3.x + (-u_xlat25.x);
    u_xlat17.xyz = unity_SHC.xyz * u_xlat25.xxx + u_xlat8.xyz;
    u_xlat17.xyz = u_xlat17.xyz + u_xlat6.xyz;
    u_xlat17.xyz = max(u_xlat17.xyz, vec3(0.0, 0.0, 0.0));
    u_xlat5.x = u_xlat5.x;
    u_xlat5.x = clamp(u_xlat5.x, 0.0, 1.0);
    u_xlat1.x = u_xlat1.x;
    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
    u_xlat4.xyz = u_xlat4.xyz * vec3(0.959999979, 0.959999979, 0.959999979);
    u_xlat25.x = (-u_xlat5.x) + 1.0;
    u_xlat37 = u_xlat25.x * u_xlat25.x;
    u_xlat37 = max(u_xlat37, 0.0078125);
    u_xlat38 = u_xlat37 * u_xlat37;
    u_xlat39 = u_xlat5.x + 0.0400000215;
    u_xlat39 = min(u_xlat39, 1.0);
    u_xlat40 = u_xlat37 * 4.0 + 2.0;
    u_xlat5.x = min(vs_INTERP6.w, 1.0);
    u_xlat6.xyz = vs_INTERP8.xyz + (-_WorldSpaceCameraPos.xyz);
    u_xlat6.x = dot(u_xlat6.xyz, u_xlat6.xyz);
    u_xlat18.x = u_xlat6.x * _MainLightShadowParams.z + _MainLightShadowParams.w;
    u_xlat18.x = clamp(u_xlat18.x, 0.0, 1.0);
    u_xlat30 = (-u_xlat36) + 1.0;
    u_xlat36 = u_xlat18.x * u_xlat30 + u_xlat36;
    u_xlat18.x = dot((-u_xlat2.xyz), u_xlat3.xyz);
    u_xlat18.x = u_xlat18.x + u_xlat18.x;
    u_xlat18.xyz = u_xlat3.xyz * (-u_xlat18.xxx) + (-u_xlat2.xyz);
    u_xlat7.x = dot(u_xlat3.xyz, u_xlat2.xyz);
    u_xlat7.x = clamp(u_xlat7.x, 0.0, 1.0);
    u_xlat7.x = (-u_xlat7.x) + 1.0;
    u_xlat7.x = u_xlat7.x * u_xlat7.x;
    u_xlat7.x = u_xlat7.x * u_xlat7.x;
    u_xlat19 = (-u_xlat25.x) * 0.699999988 + 1.70000005;
    u_xlat25.x = u_xlat25.x * u_xlat19;
    u_xlat25.x = u_xlat25.x * 6.0;
    u_xlat8 = textureLod(samplerCube(unity_SpecCube0, samplerunity_SpecCube0), u_xlat18.xyz, u_xlat25.x);
    u_xlat25.x = u_xlat8.w + -1.0;
    u_xlat25.x = unity_SpecCube0_HDR.w * u_xlat25.x + 1.0;
    u_xlat25.x = max(u_xlat25.x, 0.0);
    u_xlat25.x = log2(u_xlat25.x);
    u_xlat25.x = u_xlat25.x * unity_SpecCube0_HDR.y;
    u_xlat25.x = exp2(u_xlat25.x);
    u_xlat25.x = u_xlat25.x * unity_SpecCube0_HDR.x;
    u_xlat18.xyz = u_xlat8.xyz * u_xlat25.xxx;
    u_xlat25.xy = vec2(u_xlat37) * vec2(u_xlat37) + vec2(-1.0, 1.0);
    u_xlat37 = float(1.0) / u_xlat25.y;
    u_xlat39 = u_xlat39 + -0.0399999991;
    u_xlat39 = u_xlat7.x * u_xlat39 + 0.0399999991;
    u_xlat37 = u_xlat37 * u_xlat39;
    u_xlat18.xyz = vec3(u_xlat37) * u_xlat18.xyz;
    u_xlat17.xyz = u_xlat17.xyz * u_xlat4.xyz + u_xlat18.xyz;
    u_xlat36 = u_xlat36 * unity_LightData.z;
    u_xlat37 = dot(u_xlat3.xyz, _MainLightPosition.xyz);
    u_xlat37 = clamp(u_xlat37, 0.0, 1.0);
    u_xlat36 = u_xlat36 * u_xlat37;
    u_xlat18.xyz = vec3(u_xlat36) * _MainLightColor.xyz;
    u_xlat7.xyz = u_xlat2.xyz + _MainLightPosition.xyz;
    u_xlat36 = dot(u_xlat7.xyz, u_xlat7.xyz);
    u_xlat36 = max(u_xlat36, 1.17549435e-38);
    u_xlat36 = inversesqrt(u_xlat36);
    u_xlat7.xyz = vec3(u_xlat36) * u_xlat7.xyz;
    u_xlat36 = dot(u_xlat3.xyz, u_xlat7.xyz);
    u_xlat36 = clamp(u_xlat36, 0.0, 1.0);
    u_xlat37 = dot(_MainLightPosition.xyz, u_xlat7.xyz);
    u_xlat37 = clamp(u_xlat37, 0.0, 1.0);
    u_xlat36 = u_xlat36 * u_xlat36;
    u_xlat36 = u_xlat36 * u_xlat25.x + 1.00001001;
    u_xlat37 = u_xlat37 * u_xlat37;
    u_xlat36 = u_xlat36 * u_xlat36;
    u_xlat37 = max(u_xlat37, 0.100000001);
    u_xlat36 = u_xlat36 * u_xlat37;
    u_xlat36 = u_xlat40 * u_xlat36;
    u_xlat36 = u_xlat38 / u_xlat36;
    u_xlat7.xyz = vec3(u_xlat36) * vec3(0.0399999991, 0.0399999991, 0.0399999991) + u_xlat4.xyz;
    u_xlat18.xyz = u_xlat18.xyz * u_xlat7.xyz;
    u_xlat36 = min(_AdditionalLightsCount.x, unity_LightData.y);
    u_xlatu36 =  uint(int(u_xlat36));
    u_xlat37 = u_xlat6.x * _AdditionalShadowFadeParams.x + _AdditionalShadowFadeParams.y;
    u_xlat37 = clamp(u_xlat37, 0.0, 1.0);
    u_xlat7.x = float(0.0);
    u_xlat7.y = float(0.0);
    u_xlat7.z = float(0.0);
    for(uint u_xlatu_loop_1 = 0u ; u_xlatu_loop_1<u_xlatu36 ; u_xlatu_loop_1++)
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
            vec3 txVec1 = vec3(u_xlat10.xy,u_xlat10.z);
            u_xlat45 = textureLod(sampler2DShadow(_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare), txVec1, 0.0);
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
        u_xlat45 = u_xlat37 * u_xlat10.x + u_xlat45;
        u_xlat43 = u_xlat43 * u_xlat45;
        u_xlat45 = dot(u_xlat3.xyz, u_xlat9.xyz);
        u_xlat45 = clamp(u_xlat45, 0.0, 1.0);
        u_xlat43 = u_xlat43 * u_xlat45;
        u_xlat10.xyz = vec3(u_xlat43) * _AdditionalLightsColor[u_xlati6].xyz;
        u_xlat8.xyz = u_xlat8.xyz * vec3(u_xlat44) + u_xlat2.xyz;
        u_xlat6.x = dot(u_xlat8.xyz, u_xlat8.xyz);
        u_xlat6.x = max(u_xlat6.x, 1.17549435e-38);
        u_xlat6.x = inversesqrt(u_xlat6.x);
        u_xlat8.xyz = u_xlat6.xxx * u_xlat8.xyz;
        u_xlat6.x = dot(u_xlat3.xyz, u_xlat8.xyz);
        u_xlat6.x = clamp(u_xlat6.x, 0.0, 1.0);
        u_xlat43 = dot(u_xlat9.xyz, u_xlat8.xyz);
        u_xlat43 = clamp(u_xlat43, 0.0, 1.0);
        u_xlat6.x = u_xlat6.x * u_xlat6.x;
        u_xlat6.x = u_xlat6.x * u_xlat25.x + 1.00001001;
        u_xlat43 = u_xlat43 * u_xlat43;
        u_xlat6.x = u_xlat6.x * u_xlat6.x;
        u_xlat43 = max(u_xlat43, 0.100000001);
        u_xlat6.x = u_xlat6.x * u_xlat43;
        u_xlat6.x = u_xlat40 * u_xlat6.x;
        u_xlat6.x = u_xlat38 / u_xlat6.x;
        u_xlat8.xyz = u_xlat6.xxx * vec3(0.0399999991, 0.0399999991, 0.0399999991) + u_xlat4.xyz;
        u_xlat7.xyz = u_xlat8.xyz * u_xlat10.xyz + u_xlat7.xyz;
    }
    u_xlat2.xyz = u_xlat17.xyz * u_xlat5.xxx + u_xlat18.xyz;
    u_xlat2.xyz = u_xlat7.xyz + u_xlat2.xyz;
    SV_Target0.xyz = vs_INTERP6.www * u_xlat0.xyz + u_xlat2.xyz;
    SV_Target0.w = (u_xlatb13) ? u_xlat1.x : 1.0;
    return;
}

