diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(8) */
  x_AlphaToMaskAvailable : f32,
  /* @offset(16) */
  x_MainLightPosition : vec4<f32>,
  /* @offset(32) */
  x_MainLightColor : vec4<f32>,
  /* @offset(48) */
  x_AdditionalLightsCount : vec4<f32>,
  /* @offset(64) */
  x_WorldSpaceCameraPos : vec3<f32>,
  /* @offset(80) */
  x_ProjectionParams : vec4<f32>,
  /* @offset(96) */
  unity_OrthoParams : vec4<f32>,
  /* @offset(112) */
  unity_FogParams : vec4<f32>,
  /* @offset(128) */
  unity_FogColor : vec4<f32>,
  /* @offset(144) */
  unity_MatrixV : mat4x4<f32>,
}

struct UnityPerMaterial {
  /* @offset(0) */
  Texture2D_B222E8F_TexelSize : vec4<f32>,
  /* @offset(16) */
  Color_C30C7CA3 : vec4<f32>,
  /* @offset(32) */
  Texture2D_D9BFD5F1_TexelSize : vec4<f32>,
}

alias Arr = array<mat4x4<f32>, 5u>;

alias Arr_1 = array<vec4<f32>, 32u>;

alias Arr_2 = array<mat4x4<f32>, 32u>;

alias Arr_3 = array<vec4<f32>, 32u>;

alias Arr_4 = array<mat4x4<f32>, 32u>;

struct LightShadows {
  /* @offset(0) */
  x_MainLightWorldToShadow : Arr,
  /* @offset(320) */
  x_CascadeShadowSplitSpheres0 : vec4<f32>,
  /* @offset(336) */
  x_CascadeShadowSplitSpheres1 : vec4<f32>,
  /* @offset(352) */
  x_CascadeShadowSplitSpheres2 : vec4<f32>,
  /* @offset(368) */
  x_CascadeShadowSplitSpheres3 : vec4<f32>,
  /* @offset(384) */
  x_CascadeShadowSplitSphereRadii : vec4<f32>,
  /* @offset(400) */
  x_MainLightShadowOffset0 : vec4<f32>,
  /* @offset(416) */
  x_MainLightShadowOffset1 : vec4<f32>,
  /* @offset(432) */
  x_MainLightShadowParams : vec4<f32>,
  /* @offset(448) */
  x_MainLightShadowmapSize : vec4<f32>,
  /* @offset(464) */
  x_AdditionalShadowOffset0 : vec4<f32>,
  /* @offset(480) */
  x_AdditionalShadowOffset1 : vec4<f32>,
  /* @offset(496) */
  x_AdditionalShadowFadeParams : vec4<f32>,
  /* @offset(512) */
  x_AdditionalShadowmapSize : vec4<f32>,
  /* @offset(528) */
  x_AdditionalShadowParams : Arr_3,
  /* @offset(1040) */
  x_AdditionalLightsWorldToShadow : Arr_4,
}

alias Arr_5 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  /* @offset(0) */
  unity_ObjectToWorld : mat4x4<f32>,
  /* @offset(64) */
  unity_WorldToObject : mat4x4<f32>,
  /* @offset(128) */
  unity_LODFade : vec4<f32>,
  /* @offset(144) */
  unity_WorldTransformParams : vec4<f32>,
  /* @offset(160) */
  unity_RenderingLayer : vec4<f32>,
  /* @offset(176) */
  unity_LightData : vec4<f32>,
  /* @offset(192) */
  unity_LightIndices : Arr_5,
  /* @offset(224) */
  unity_ProbesOcclusion : vec4<f32>,
  /* @offset(240) */
  unity_SpecCube0_HDR : vec4<f32>,
  /* @offset(256) */
  unity_SpecCube1_HDR : vec4<f32>,
  /* @offset(272) */
  unity_SpecCube0_BoxMax : vec4<f32>,
  /* @offset(288) */
  unity_SpecCube0_BoxMin : vec4<f32>,
  /* @offset(304) */
  unity_SpecCube0_ProbePosition : vec4<f32>,
  /* @offset(320) */
  unity_SpecCube1_BoxMax : vec4<f32>,
  /* @offset(336) */
  unity_SpecCube1_BoxMin : vec4<f32>,
  /* @offset(352) */
  unity_SpecCube1_ProbePosition : vec4<f32>,
  /* @offset(368) */
  unity_LightmapST : vec4<f32>,
  /* @offset(384) */
  unity_DynamicLightmapST : vec4<f32>,
  /* @offset(400) */
  unity_SHAr : vec4<f32>,
  /* @offset(416) */
  unity_SHAg : vec4<f32>,
  /* @offset(432) */
  unity_SHAb : vec4<f32>,
  /* @offset(448) */
  unity_SHBr : vec4<f32>,
  /* @offset(464) */
  unity_SHBg : vec4<f32>,
  /* @offset(480) */
  unity_SHBb : vec4<f32>,
  /* @offset(496) */
  unity_SHC : vec4<f32>,
  /* @offset(512) */
  unity_RendererBounds_Min : vec4<f32>,
  /* @offset(528) */
  unity_RendererBounds_Max : vec4<f32>,
  /* @offset(544) */
  unity_MatrixPreviousM : mat4x4<f32>,
  /* @offset(608) */
  unity_MatrixPreviousMI : mat4x4<f32>,
  /* @offset(672) */
  unity_MotionVectorsParams : vec4<f32>,
  /* @offset(688) */
  unity_SpriteColor : vec4<f32>,
  /* @offset(704) */
  unity_SpriteProps : vec4<f32>,
}

alias Arr_6 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_7 = array<strided_arr, 32u>;

alias Arr_8 = array<strided_arr, 32u>;

struct LightCookies {
  /* @offset(0) */
  x_MainLightWorldToLight : mat4x4<f32>,
  /* @offset(64) */
  x_AdditionalLightsCookieEnableBits : f32,
  /* @offset(68) */
  x_MainLightCookieTextureFormat : f32,
  /* @offset(72) */
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
  /* @offset(80) */
  x_AdditionalLightsWorldToLights : Arr_4,
  /* @offset(2128) */
  x_AdditionalLightsCookieAtlasUVRects : Arr_3,
  /* @offset(2640) */
  x_AdditionalLightsLightTypes : Arr_8,
}

alias Arr_9 = array<vec4<f32>, 32u>;

alias Arr_10 = array<vec4<f32>, 32u>;

alias Arr_11 = array<vec4<f32>, 32u>;

alias Arr_12 = array<vec4<f32>, 32u>;

struct AdditionalLights {
  /* @offset(0) */
  x_AdditionalLightsPosition : Arr_3,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_3,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_3,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_3,
  /* @offset(2048) */
  x_AdditionalLightsOcclusionProbes : Arr_3,
  /* @offset(2560) */
  x_AdditionalLightsLayerMasks : Arr_8,
}

var<private> u_xlat0 : vec3<f32>;

var<private> vs_INTERP9 : vec3<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(7) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(14) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP5 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_53 : PGlobals;

var<private> u_xlat2 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_65 : UnityPerMaterial;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(8) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(15) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat78 : f32;

var<private> u_xlat29 : vec3<f32>;

var<private> vs_INTERP6 : vec4<f32>;

var<private> vs_INTERP8 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_131 : LightShadows;

var<private> u_xlatb78 : bool;

var<private> u_xlatb80 : bool;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat80 : f32;

var<private> u_xlatb82 : bool;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat82 : f32;

var<private> u_xlat31 : f32;

var<private> u_xlat32 : vec3<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat33 : vec2<f32>;

var<private> u_xlat65 : vec2<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlatb30 : bool;

var<private> u_xlatb56 : bool;

var<private> u_xlat30 : vec3<f32>;

var<private> u_xlatb1 : bool;

var<private> u_xlat27 : vec3<f32>;

var<private> u_xlat53 : f32;

var<private> u_xlat79 : f32;

var<private> u_xlatb53 : bool;

var<private> u_xlatb27 : vec3<bool>;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_1585 : UnityPerDraw;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP0 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat83 : f32;

var<private> vs_INTERP3 : vec4<f32>;

var<private> u_xlatb58 : vec2<bool>;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat84 : f32;

var<private> u_xlat34 : vec2<f32>;

var<private> u_xlat62 : vec2<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat86 : f32;

var<private> u_xlatb4 : bool;

@group(1) @binding(4) var<uniform> x_3120 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu78 : u32;

var<private> u_xlatu3 : u32;

var<private> u_xlati4 : i32;

var<private> u_xlati3 : i32;

var<private> u_xlat35 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_3560 : AdditionalLights;

var<private> u_xlat85 : f32;

var<private> u_xlati86 : i32;

var<private> u_xlatb88 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat89 : f32;

var<private> u_xlat37 : vec3<f32>;

var<private> u_xlat88 : f32;

var<private> u_xlatb86 : bool;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat66 : vec2<f32>;

var<private> u_xlat39 : vec3<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat40 : vec2<f32>;

var<private> u_xlat72 : vec2<f32>;

var<private> u_xlat67 : vec2<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlat25 : vec4<f32>;

var<private> u_xlati88 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlati37 : i32;

var<private> u_xlatb37 : vec3<bool>;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb3 : bool;

var<private> u_xlatu80 : u32;

fn main_1() {
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var txVec4 : vec3<f32>;
  var txVec5 : vec3<f32>;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var txVec15 : vec3<f32>;
  var txVec16 : vec3<f32>;
  var txVec17 : vec3<f32>;
  var txVec18 : vec3<f32>;
  var txVec19 : vec3<f32>;
  var txVec20 : vec3<f32>;
  var txVec21 : vec3<f32>;
  var txVec22 : vec3<f32>;
  var txVec23 : vec3<f32>;
  var txVec24 : vec3<f32>;
  var txVec25 : vec3<f32>;
  var txVec26 : vec3<f32>;
  var txVec27 : vec3<f32>;
  var txVec28 : vec3<f32>;
  var txVec29 : vec3<f32>;
  var x_1498 : f32;
  var x_1546 : f32;
  var x_1682 : vec3<f32>;
  var txVec30 : vec3<f32>;
  var txVec31 : vec3<f32>;
  var txVec32 : vec3<f32>;
  var txVec33 : vec3<f32>;
  var txVec34 : vec3<f32>;
  var txVec35 : vec3<f32>;
  var txVec36 : vec3<f32>;
  var txVec37 : vec3<f32>;
  var txVec38 : vec3<f32>;
  var txVec39 : vec3<f32>;
  var txVec40 : vec3<f32>;
  var txVec41 : vec3<f32>;
  var txVec42 : vec3<f32>;
  var txVec43 : vec3<f32>;
  var txVec44 : vec3<f32>;
  var txVec45 : vec3<f32>;
  var txVec46 : vec3<f32>;
  var txVec47 : vec3<f32>;
  var txVec48 : vec3<f32>;
  var txVec49 : vec3<f32>;
  var txVec50 : vec3<f32>;
  var txVec51 : vec3<f32>;
  var txVec52 : vec3<f32>;
  var txVec53 : vec3<f32>;
  var txVec54 : vec3<f32>;
  var txVec55 : vec3<f32>;
  var txVec56 : vec3<f32>;
  var txVec57 : vec3<f32>;
  var txVec58 : vec3<f32>;
  var txVec59 : vec3<f32>;
  var x_3188 : f32;
  var x_3199 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_3712 : f32;
  var x_3723 : f32;
  var txVec60 : vec3<f32>;
  var txVec61 : vec3<f32>;
  var txVec62 : vec3<f32>;
  var txVec63 : vec3<f32>;
  var txVec64 : vec3<f32>;
  var txVec65 : vec3<f32>;
  var txVec66 : vec3<f32>;
  var txVec67 : vec3<f32>;
  var txVec68 : vec3<f32>;
  var txVec69 : vec3<f32>;
  var txVec70 : vec3<f32>;
  var txVec71 : vec3<f32>;
  var txVec72 : vec3<f32>;
  var txVec73 : vec3<f32>;
  var txVec74 : vec3<f32>;
  var txVec75 : vec3<f32>;
  var txVec76 : vec3<f32>;
  var txVec77 : vec3<f32>;
  var txVec78 : vec3<f32>;
  var txVec79 : vec3<f32>;
  var txVec80 : vec3<f32>;
  var txVec81 : vec3<f32>;
  var txVec82 : vec3<f32>;
  var txVec83 : vec3<f32>;
  var txVec84 : vec3<f32>;
  var txVec85 : vec3<f32>;
  var txVec86 : vec3<f32>;
  var txVec87 : vec3<f32>;
  var txVec88 : vec3<f32>;
  var txVec89 : vec3<f32>;
  var x_5338 : f32;
  var x_5351 : f32;
  var x_5409 : f32;
  var x_5420 : vec3<f32>;
  var x_5617 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_INTERP9;
  let x_13 : vec3<f32> = vs_INTERP9;
  u_xlat0.x = dot(x_12, x_13);
  let x_20 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_20);
  let x_25 : f32 = u_xlat0.x;
  u_xlat0.x = (1.0f / x_25);
  let x_28 : vec3<f32> = u_xlat0;
  let x_30 : vec3<f32> = vs_INTERP9;
  u_xlat0 = (vec3<f32>(x_28.x, x_28.x, x_28.x) * x_30);
  let x_48 : vec4<f32> = vs_INTERP5;
  let x_58 : f32 = x_53.x_GlobalMipBias.x;
  let x_59 : vec4<f32> = textureSampleBias(Texture2D_B222E8F, samplerTexture2D_B222E8F, vec2<f32>(x_48.x, x_48.y), x_58);
  u_xlat1 = x_59;
  let x_61 : vec4<f32> = u_xlat1;
  let x_69 : vec4<f32> = x_65.Color_C30C7CA3;
  u_xlat2 = (vec3<f32>(x_61.x, x_61.y, x_61.z) * vec3<f32>(x_69.x, x_69.y, x_69.z));
  let x_78 : vec4<f32> = vs_INTERP5;
  let x_81 : f32 = x_53.x_GlobalMipBias.x;
  let x_82 : vec4<f32> = textureSampleBias(Texture2D_D9BFD5F1, samplerTexture2D_D9BFD5F1, vec2<f32>(x_78.x, x_78.y), x_81);
  u_xlat3 = vec4<f32>(x_82.w, x_82.x, x_82.y, x_82.z);
  let x_85 : vec4<f32> = u_xlat3;
  u_xlat4 = ((vec4<f32>(x_85.y, x_85.z, x_85.w, x_85.x) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_94 : vec4<f32> = u_xlat4;
  let x_95 : vec4<f32> = u_xlat4;
  u_xlat78 = dot(x_94, x_95);
  let x_97 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_97);
  let x_100 : f32 = u_xlat78;
  let x_102 : vec4<f32> = u_xlat4;
  u_xlat29 = (vec3<f32>(x_100, x_100, x_100) * vec3<f32>(x_102.x, x_102.y, x_102.z));
  let x_109 : f32 = vs_INTERP6.y;
  u_xlat78 = (x_109 * 200.0f);
  let x_112 : f32 = u_xlat78;
  u_xlat78 = min(x_112, 1.0f);
  let x_114 : f32 = u_xlat78;
  let x_116 : vec4<f32> = u_xlat1;
  let x_118 : vec3<f32> = (vec3<f32>(x_114, x_114, x_114) * vec3<f32>(x_116.x, x_116.y, x_116.z));
  let x_119 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_118.x, x_118.y, x_118.z, x_119.w);
  let x_122 : vec3<f32> = vs_INTERP8;
  let x_133 : vec4<f32> = x_131.x_MainLightWorldToShadow[0i][1i];
  let x_135 : vec3<f32> = (vec3<f32>(x_122.y, x_122.y, x_122.y) * vec3<f32>(x_133.x, x_133.y, x_133.z));
  let x_136 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_135.x, x_135.y, x_135.z, x_136.w);
  let x_139 : vec4<f32> = x_131.x_MainLightWorldToShadow[0i][0i];
  let x_141 : vec3<f32> = vs_INTERP8;
  let x_144 : vec4<f32> = u_xlat4;
  let x_146 : vec3<f32> = ((vec3<f32>(x_139.x, x_139.y, x_139.z) * vec3<f32>(x_141.x, x_141.x, x_141.x)) + vec3<f32>(x_144.x, x_144.y, x_144.z));
  let x_147 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_146.x, x_146.y, x_146.z, x_147.w);
  let x_151 : vec4<f32> = x_131.x_MainLightWorldToShadow[0i][2i];
  let x_153 : vec3<f32> = vs_INTERP8;
  let x_156 : vec4<f32> = u_xlat4;
  let x_158 : vec3<f32> = ((vec3<f32>(x_151.x, x_151.y, x_151.z) * vec3<f32>(x_153.z, x_153.z, x_153.z)) + vec3<f32>(x_156.x, x_156.y, x_156.z));
  let x_159 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_158.x, x_158.y, x_158.z, x_159.w);
  let x_161 : vec4<f32> = u_xlat4;
  let x_165 : vec4<f32> = x_131.x_MainLightWorldToShadow[0i][3i];
  let x_167 : vec3<f32> = (vec3<f32>(x_161.x, x_161.y, x_161.z) + vec3<f32>(x_165.x, x_165.y, x_165.z));
  let x_168 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_167.x, x_167.y, x_167.z, x_168.w);
  let x_176 : f32 = x_131.x_MainLightShadowParams.y;
  u_xlatb78 = (0.0f < x_176);
  let x_178 : bool = u_xlatb78;
  if (x_178) {
    let x_183 : f32 = x_131.x_MainLightShadowParams.y;
    u_xlatb80 = (x_183 == 1.0f);
    let x_185 : bool = u_xlatb80;
    if (x_185) {
      let x_189 : vec4<f32> = u_xlat4;
      let x_193 : vec4<f32> = x_131.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_189.x, x_189.y, x_189.x, x_189.y) + x_193);
      let x_197 : vec4<f32> = u_xlat5;
      let x_198 : vec2<f32> = vec2<f32>(x_197.x, x_197.y);
      let x_201 : f32 = u_xlat4.z;
      txVec0 = vec3<f32>(x_198.x, x_198.y, x_201);
      let x_214 : vec3<f32> = txVec0;
      let x_216 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_214.xy, x_214.z);
      u_xlat6.x = x_216;
      let x_219 : vec4<f32> = u_xlat5;
      let x_220 : vec2<f32> = vec2<f32>(x_219.z, x_219.w);
      let x_222 : f32 = u_xlat4.z;
      txVec1 = vec3<f32>(x_220.x, x_220.y, x_222);
      let x_229 : vec3<f32> = txVec1;
      let x_231 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_229.xy, x_229.z);
      u_xlat6.y = x_231;
      let x_233 : vec4<f32> = u_xlat4;
      let x_237 : vec4<f32> = x_131.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_233.x, x_233.y, x_233.x, x_233.y) + x_237);
      let x_240 : vec4<f32> = u_xlat5;
      let x_241 : vec2<f32> = vec2<f32>(x_240.x, x_240.y);
      let x_243 : f32 = u_xlat4.z;
      txVec2 = vec3<f32>(x_241.x, x_241.y, x_243);
      let x_250 : vec3<f32> = txVec2;
      let x_252 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_250.xy, x_250.z);
      u_xlat6.z = x_252;
      let x_255 : vec4<f32> = u_xlat5;
      let x_256 : vec2<f32> = vec2<f32>(x_255.z, x_255.w);
      let x_258 : f32 = u_xlat4.z;
      txVec3 = vec3<f32>(x_256.x, x_256.y, x_258);
      let x_265 : vec3<f32> = txVec3;
      let x_267 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_265.xy, x_265.z);
      u_xlat6.w = x_267;
      let x_271 : vec4<f32> = u_xlat6;
      u_xlat80 = dot(x_271, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_278 : f32 = x_131.x_MainLightShadowParams.y;
      u_xlatb82 = (x_278 == 2.0f);
      let x_280 : bool = u_xlatb82;
      if (x_280) {
        let x_283 : vec4<f32> = u_xlat4;
        let x_287 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_292 : vec2<f32> = ((vec2<f32>(x_283.x, x_283.y) * vec2<f32>(x_287.z, x_287.w)) + vec2<f32>(0.5f, 0.5f));
        let x_293 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_292.x, x_292.y, x_293.z, x_293.w);
        let x_295 : vec4<f32> = u_xlat5;
        let x_297 : vec2<f32> = floor(vec2<f32>(x_295.x, x_295.y));
        let x_298 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_297.x, x_297.y, x_298.z, x_298.w);
        let x_302 : vec4<f32> = u_xlat4;
        let x_305 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_308 : vec4<f32> = u_xlat5;
        u_xlat57 = ((vec2<f32>(x_302.x, x_302.y) * vec2<f32>(x_305.z, x_305.w)) + -(vec2<f32>(x_308.x, x_308.y)));
        let x_312 : vec2<f32> = u_xlat57;
        u_xlat6 = (vec4<f32>(x_312.x, x_312.x, x_312.y, x_312.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_317 : vec4<f32> = u_xlat6;
        let x_319 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_317.x, x_317.x, x_317.z, x_317.z) * vec4<f32>(x_319.x, x_319.x, x_319.z, x_319.z));
        let x_322 : vec4<f32> = u_xlat7;
        let x_326 : vec2<f32> = (vec2<f32>(x_322.y, x_322.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_327 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_326.x, x_327.y, x_326.y, x_327.w);
        let x_329 : vec4<f32> = u_xlat7;
        let x_332 : vec2<f32> = u_xlat57;
        let x_334 : vec2<f32> = ((vec2<f32>(x_329.x, x_329.z) * vec2<f32>(0.5f, 0.5f)) + -(x_332));
        let x_335 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_334.x, x_334.y, x_335.z, x_335.w);
        let x_338 : vec2<f32> = u_xlat57;
        u_xlat59 = (-(x_338) + vec2<f32>(1.0f, 1.0f));
        let x_343 : vec2<f32> = u_xlat57;
        let x_345 : vec2<f32> = min(x_343, vec2<f32>(0.0f, 0.0f));
        let x_346 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_345.x, x_345.y, x_346.z, x_346.w);
        let x_348 : vec4<f32> = u_xlat8;
        let x_351 : vec4<f32> = u_xlat8;
        let x_354 : vec2<f32> = u_xlat59;
        let x_355 : vec2<f32> = ((-(vec2<f32>(x_348.x, x_348.y)) * vec2<f32>(x_351.x, x_351.y)) + x_354);
        let x_356 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_355.x, x_355.y, x_356.z, x_356.w);
        let x_358 : vec2<f32> = u_xlat57;
        u_xlat57 = max(x_358, vec2<f32>(0.0f, 0.0f));
        let x_360 : vec2<f32> = u_xlat57;
        let x_362 : vec2<f32> = u_xlat57;
        let x_364 : vec4<f32> = u_xlat6;
        u_xlat57 = ((-(x_360) * x_362) + vec2<f32>(x_364.y, x_364.w));
        let x_367 : vec4<f32> = u_xlat8;
        let x_369 : vec2<f32> = (vec2<f32>(x_367.x, x_367.y) + vec2<f32>(1.0f, 1.0f));
        let x_370 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_369.x, x_369.y, x_370.z, x_370.w);
        let x_372 : vec2<f32> = u_xlat57;
        u_xlat57 = (x_372 + vec2<f32>(1.0f, 1.0f));
        let x_375 : vec4<f32> = u_xlat7;
        let x_379 : vec2<f32> = (vec2<f32>(x_375.x, x_375.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_380 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_379.x, x_379.y, x_380.z, x_380.w);
        let x_382 : vec2<f32> = u_xlat59;
        let x_383 : vec2<f32> = (x_382 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_384 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_383.x, x_383.y, x_384.z, x_384.w);
        let x_386 : vec4<f32> = u_xlat8;
        let x_388 : vec2<f32> = (vec2<f32>(x_386.x, x_386.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_389 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_388.x, x_388.y, x_389.z, x_389.w);
        let x_392 : vec2<f32> = u_xlat57;
        let x_393 : vec2<f32> = (x_392 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_394 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_393.x, x_393.y, x_394.z, x_394.w);
        let x_396 : vec4<f32> = u_xlat6;
        u_xlat57 = (vec2<f32>(x_396.y, x_396.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_400 : f32 = u_xlat8.x;
        u_xlat9.z = x_400;
        let x_403 : f32 = u_xlat57.x;
        u_xlat9.w = x_403;
        let x_406 : f32 = u_xlat10.x;
        u_xlat7.z = x_406;
        let x_409 : f32 = u_xlat6.x;
        u_xlat7.w = x_409;
        let x_412 : vec4<f32> = u_xlat7;
        let x_414 : vec4<f32> = u_xlat9;
        u_xlat11 = (vec4<f32>(x_412.z, x_412.w, x_412.x, x_412.z) + vec4<f32>(x_414.z, x_414.w, x_414.x, x_414.z));
        let x_418 : f32 = u_xlat9.y;
        u_xlat8.z = x_418;
        let x_421 : f32 = u_xlat57.y;
        u_xlat8.w = x_421;
        let x_424 : f32 = u_xlat7.y;
        u_xlat10.z = x_424;
        let x_427 : f32 = u_xlat6.z;
        u_xlat10.w = x_427;
        let x_429 : vec4<f32> = u_xlat8;
        let x_431 : vec4<f32> = u_xlat10;
        let x_433 : vec3<f32> = (vec3<f32>(x_429.z, x_429.y, x_429.w) + vec3<f32>(x_431.z, x_431.y, x_431.w));
        let x_434 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_433.x, x_433.y, x_433.z, x_434.w);
        let x_436 : vec4<f32> = u_xlat7;
        let x_438 : vec4<f32> = u_xlat11;
        let x_440 : vec3<f32> = (vec3<f32>(x_436.x, x_436.z, x_436.w) / vec3<f32>(x_438.z, x_438.w, x_438.y));
        let x_441 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_440.x, x_440.y, x_440.z, x_441.w);
        let x_443 : vec4<f32> = u_xlat7;
        let x_449 : vec3<f32> = (vec3<f32>(x_443.x, x_443.y, x_443.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_450 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_449.x, x_449.y, x_449.z, x_450.w);
        let x_452 : vec4<f32> = u_xlat10;
        let x_454 : vec4<f32> = u_xlat6;
        let x_456 : vec3<f32> = (vec3<f32>(x_452.z, x_452.y, x_452.w) / vec3<f32>(x_454.x, x_454.y, x_454.z));
        let x_457 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_456.x, x_456.y, x_456.z, x_457.w);
        let x_459 : vec4<f32> = u_xlat8;
        let x_461 : vec3<f32> = (vec3<f32>(x_459.x, x_459.y, x_459.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_462 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_461.x, x_461.y, x_461.z, x_462.w);
        let x_464 : vec4<f32> = u_xlat7;
        let x_467 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_469 : vec3<f32> = (vec3<f32>(x_464.y, x_464.x, x_464.z) * vec3<f32>(x_467.x, x_467.x, x_467.x));
        let x_470 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_469.x, x_469.y, x_469.z, x_470.w);
        let x_472 : vec4<f32> = u_xlat8;
        let x_475 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_477 : vec3<f32> = (vec3<f32>(x_472.x, x_472.y, x_472.z) * vec3<f32>(x_475.y, x_475.y, x_475.y));
        let x_478 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_477.x, x_477.y, x_477.z, x_478.w);
        let x_481 : f32 = u_xlat8.x;
        u_xlat7.w = x_481;
        let x_483 : vec4<f32> = u_xlat5;
        let x_486 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_489 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_483.x, x_483.y, x_483.x, x_483.y) * vec4<f32>(x_486.x, x_486.y, x_486.x, x_486.y)) + vec4<f32>(x_489.y, x_489.w, x_489.x, x_489.w));
        let x_492 : vec4<f32> = u_xlat5;
        let x_495 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_498 : vec4<f32> = u_xlat7;
        u_xlat57 = ((vec2<f32>(x_492.x, x_492.y) * vec2<f32>(x_495.x, x_495.y)) + vec2<f32>(x_498.z, x_498.w));
        let x_502 : f32 = u_xlat7.y;
        u_xlat8.w = x_502;
        let x_504 : vec4<f32> = u_xlat8;
        let x_505 : vec2<f32> = vec2<f32>(x_504.y, x_504.z);
        let x_506 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_506.x, x_505.x, x_506.z, x_505.y);
        let x_508 : vec4<f32> = u_xlat5;
        let x_511 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_514 : vec4<f32> = u_xlat7;
        u_xlat10 = ((vec4<f32>(x_508.x, x_508.y, x_508.x, x_508.y) * vec4<f32>(x_511.x, x_511.y, x_511.x, x_511.y)) + vec4<f32>(x_514.x, x_514.y, x_514.z, x_514.y));
        let x_517 : vec4<f32> = u_xlat5;
        let x_520 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_523 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_517.x, x_517.y, x_517.x, x_517.y) * vec4<f32>(x_520.x, x_520.y, x_520.x, x_520.y)) + vec4<f32>(x_523.w, x_523.y, x_523.w, x_523.z));
        let x_526 : vec4<f32> = u_xlat5;
        let x_529 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_532 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_526.x, x_526.y, x_526.x, x_526.y) * vec4<f32>(x_529.x, x_529.y, x_529.x, x_529.y)) + vec4<f32>(x_532.x, x_532.w, x_532.z, x_532.w));
        let x_536 : vec4<f32> = u_xlat6;
        let x_538 : vec4<f32> = u_xlat11;
        u_xlat12 = (vec4<f32>(x_536.x, x_536.x, x_536.x, x_536.y) * vec4<f32>(x_538.z, x_538.w, x_538.y, x_538.z));
        let x_542 : vec4<f32> = u_xlat6;
        let x_544 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_542.y, x_542.y, x_542.z, x_542.z) * x_544);
        let x_548 : f32 = u_xlat6.z;
        let x_550 : f32 = u_xlat11.y;
        u_xlat82 = (x_548 * x_550);
        let x_553 : vec4<f32> = u_xlat9;
        let x_554 : vec2<f32> = vec2<f32>(x_553.x, x_553.y);
        let x_556 : f32 = u_xlat4.z;
        txVec4 = vec3<f32>(x_554.x, x_554.y, x_556);
        let x_563 : vec3<f32> = txVec4;
        let x_565 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_563.xy, x_563.z);
        u_xlat5.x = x_565;
        let x_568 : vec4<f32> = u_xlat9;
        let x_569 : vec2<f32> = vec2<f32>(x_568.z, x_568.w);
        let x_571 : f32 = u_xlat4.z;
        txVec5 = vec3<f32>(x_569.x, x_569.y, x_571);
        let x_579 : vec3<f32> = txVec5;
        let x_581 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_579.xy, x_579.z);
        u_xlat31 = x_581;
        let x_582 : f32 = u_xlat31;
        let x_584 : f32 = u_xlat12.y;
        u_xlat31 = (x_582 * x_584);
        let x_587 : f32 = u_xlat12.x;
        let x_589 : f32 = u_xlat5.x;
        let x_591 : f32 = u_xlat31;
        u_xlat5.x = ((x_587 * x_589) + x_591);
        let x_595 : vec2<f32> = u_xlat57;
        let x_597 : f32 = u_xlat4.z;
        txVec6 = vec3<f32>(x_595.x, x_595.y, x_597);
        let x_604 : vec3<f32> = txVec6;
        let x_606 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_604.xy, x_604.z);
        u_xlat31 = x_606;
        let x_608 : f32 = u_xlat12.z;
        let x_609 : f32 = u_xlat31;
        let x_612 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_608 * x_609) + x_612);
        let x_616 : vec4<f32> = u_xlat8;
        let x_617 : vec2<f32> = vec2<f32>(x_616.x, x_616.y);
        let x_619 : f32 = u_xlat4.z;
        txVec7 = vec3<f32>(x_617.x, x_617.y, x_619);
        let x_626 : vec3<f32> = txVec7;
        let x_628 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_626.xy, x_626.z);
        u_xlat31 = x_628;
        let x_630 : f32 = u_xlat12.w;
        let x_631 : f32 = u_xlat31;
        let x_634 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_630 * x_631) + x_634);
        let x_638 : vec4<f32> = u_xlat10;
        let x_639 : vec2<f32> = vec2<f32>(x_638.x, x_638.y);
        let x_641 : f32 = u_xlat4.z;
        txVec8 = vec3<f32>(x_639.x, x_639.y, x_641);
        let x_648 : vec3<f32> = txVec8;
        let x_650 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_648.xy, x_648.z);
        u_xlat31 = x_650;
        let x_652 : f32 = u_xlat13.x;
        let x_653 : f32 = u_xlat31;
        let x_656 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_652 * x_653) + x_656);
        let x_660 : vec4<f32> = u_xlat10;
        let x_661 : vec2<f32> = vec2<f32>(x_660.z, x_660.w);
        let x_663 : f32 = u_xlat4.z;
        txVec9 = vec3<f32>(x_661.x, x_661.y, x_663);
        let x_670 : vec3<f32> = txVec9;
        let x_672 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_670.xy, x_670.z);
        u_xlat31 = x_672;
        let x_674 : f32 = u_xlat13.y;
        let x_675 : f32 = u_xlat31;
        let x_678 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_674 * x_675) + x_678);
        let x_682 : vec4<f32> = u_xlat8;
        let x_683 : vec2<f32> = vec2<f32>(x_682.z, x_682.w);
        let x_685 : f32 = u_xlat4.z;
        txVec10 = vec3<f32>(x_683.x, x_683.y, x_685);
        let x_692 : vec3<f32> = txVec10;
        let x_694 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_692.xy, x_692.z);
        u_xlat31 = x_694;
        let x_696 : f32 = u_xlat13.z;
        let x_697 : f32 = u_xlat31;
        let x_700 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_696 * x_697) + x_700);
        let x_704 : vec4<f32> = u_xlat7;
        let x_705 : vec2<f32> = vec2<f32>(x_704.x, x_704.y);
        let x_707 : f32 = u_xlat4.z;
        txVec11 = vec3<f32>(x_705.x, x_705.y, x_707);
        let x_714 : vec3<f32> = txVec11;
        let x_716 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_714.xy, x_714.z);
        u_xlat31 = x_716;
        let x_718 : f32 = u_xlat13.w;
        let x_719 : f32 = u_xlat31;
        let x_722 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_718 * x_719) + x_722);
        let x_726 : vec4<f32> = u_xlat7;
        let x_727 : vec2<f32> = vec2<f32>(x_726.z, x_726.w);
        let x_729 : f32 = u_xlat4.z;
        txVec12 = vec3<f32>(x_727.x, x_727.y, x_729);
        let x_736 : vec3<f32> = txVec12;
        let x_738 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_736.xy, x_736.z);
        u_xlat31 = x_738;
        let x_739 : f32 = u_xlat82;
        let x_740 : f32 = u_xlat31;
        let x_743 : f32 = u_xlat5.x;
        u_xlat80 = ((x_739 * x_740) + x_743);
      } else {
        let x_746 : vec4<f32> = u_xlat4;
        let x_749 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_752 : vec2<f32> = ((vec2<f32>(x_746.x, x_746.y) * vec2<f32>(x_749.z, x_749.w)) + vec2<f32>(0.5f, 0.5f));
        let x_753 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_752.x, x_752.y, x_753.z, x_753.w);
        let x_755 : vec4<f32> = u_xlat5;
        let x_757 : vec2<f32> = floor(vec2<f32>(x_755.x, x_755.y));
        let x_758 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_757.x, x_757.y, x_758.z, x_758.w);
        let x_760 : vec4<f32> = u_xlat4;
        let x_763 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_766 : vec4<f32> = u_xlat5;
        u_xlat57 = ((vec2<f32>(x_760.x, x_760.y) * vec2<f32>(x_763.z, x_763.w)) + -(vec2<f32>(x_766.x, x_766.y)));
        let x_770 : vec2<f32> = u_xlat57;
        u_xlat6 = (vec4<f32>(x_770.x, x_770.x, x_770.y, x_770.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_773 : vec4<f32> = u_xlat6;
        let x_775 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_773.x, x_773.x, x_773.z, x_773.z) * vec4<f32>(x_775.x, x_775.x, x_775.z, x_775.z));
        let x_778 : vec4<f32> = u_xlat7;
        let x_782 : vec2<f32> = (vec2<f32>(x_778.y, x_778.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_783 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_783.x, x_782.x, x_783.z, x_782.y);
        let x_785 : vec4<f32> = u_xlat7;
        let x_788 : vec2<f32> = u_xlat57;
        let x_790 : vec2<f32> = ((vec2<f32>(x_785.x, x_785.z) * vec2<f32>(0.5f, 0.5f)) + -(x_788));
        let x_791 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_790.x, x_791.y, x_790.y, x_791.w);
        let x_793 : vec2<f32> = u_xlat57;
        let x_795 : vec2<f32> = (-(x_793) + vec2<f32>(1.0f, 1.0f));
        let x_796 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_795.x, x_795.y, x_796.z, x_796.w);
        let x_798 : vec2<f32> = u_xlat57;
        u_xlat59 = min(x_798, vec2<f32>(0.0f, 0.0f));
        let x_800 : vec2<f32> = u_xlat59;
        let x_802 : vec2<f32> = u_xlat59;
        let x_804 : vec4<f32> = u_xlat7;
        let x_806 : vec2<f32> = ((-(x_800) * x_802) + vec2<f32>(x_804.x, x_804.y));
        let x_807 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_806.x, x_806.y, x_807.z, x_807.w);
        let x_809 : vec2<f32> = u_xlat57;
        u_xlat59 = max(x_809, vec2<f32>(0.0f, 0.0f));
        let x_812 : vec2<f32> = u_xlat59;
        let x_814 : vec2<f32> = u_xlat59;
        let x_816 : vec4<f32> = u_xlat6;
        let x_818 : vec2<f32> = ((-(x_812) * x_814) + vec2<f32>(x_816.y, x_816.w));
        let x_819 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_818.x, x_819.y, x_818.y);
        let x_821 : vec4<f32> = u_xlat7;
        let x_824 : vec2<f32> = (vec2<f32>(x_821.x, x_821.y) + vec2<f32>(2.0f, 2.0f));
        let x_825 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_824.x, x_824.y, x_825.z, x_825.w);
        let x_827 : vec3<f32> = u_xlat32;
        let x_829 : vec2<f32> = (vec2<f32>(x_827.x, x_827.z) + vec2<f32>(2.0f, 2.0f));
        let x_830 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_830.x, x_829.x, x_830.z, x_829.y);
        let x_833 : f32 = u_xlat6.y;
        u_xlat9.z = (x_833 * 0.08163200318813323975f);
        let x_837 : vec4<f32> = u_xlat6;
        let x_840 : vec3<f32> = (vec3<f32>(x_837.z, x_837.x, x_837.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_841 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_840.x, x_840.y, x_840.z, x_841.w);
        let x_843 : vec4<f32> = u_xlat7;
        let x_846 : vec2<f32> = (vec2<f32>(x_843.x, x_843.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_847 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_846.x, x_846.y, x_847.z, x_847.w);
        let x_850 : f32 = u_xlat10.y;
        u_xlat9.x = x_850;
        let x_852 : vec2<f32> = u_xlat57;
        let x_859 : vec2<f32> = ((vec2<f32>(x_852.x, x_852.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_860 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_860.x, x_859.x, x_860.z, x_859.y);
        let x_862 : vec2<f32> = u_xlat57;
        let x_866 : vec2<f32> = ((vec2<f32>(x_862.x, x_862.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_867 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_866.x, x_867.y, x_866.y, x_867.w);
        let x_870 : f32 = u_xlat6.x;
        u_xlat7.y = x_870;
        let x_873 : f32 = u_xlat8.y;
        u_xlat7.w = x_873;
        let x_875 : vec4<f32> = u_xlat7;
        let x_876 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_875 + x_876);
        let x_878 : vec2<f32> = u_xlat57;
        let x_881 : vec2<f32> = ((vec2<f32>(x_878.y, x_878.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_882 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_882.x, x_881.x, x_882.z, x_881.y);
        let x_884 : vec2<f32> = u_xlat57;
        let x_887 : vec2<f32> = ((vec2<f32>(x_884.y, x_884.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_888 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_887.x, x_888.y, x_887.y, x_888.w);
        let x_891 : f32 = u_xlat6.y;
        u_xlat8.y = x_891;
        let x_893 : vec4<f32> = u_xlat8;
        let x_894 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_893 + x_894);
        let x_896 : vec4<f32> = u_xlat7;
        let x_897 : vec4<f32> = u_xlat9;
        u_xlat7 = (x_896 / x_897);
        let x_899 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_899 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_905 : vec4<f32> = u_xlat8;
        let x_906 : vec4<f32> = u_xlat6;
        u_xlat8 = (x_905 / x_906);
        let x_908 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_908 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_910 : vec4<f32> = u_xlat7;
        let x_913 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_910.w, x_910.x, x_910.y, x_910.z) * vec4<f32>(x_913.x, x_913.x, x_913.x, x_913.x));
        let x_916 : vec4<f32> = u_xlat8;
        let x_919 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_916.x, x_916.w, x_916.y, x_916.z) * vec4<f32>(x_919.y, x_919.y, x_919.y, x_919.y));
        let x_922 : vec4<f32> = u_xlat7;
        let x_923 : vec3<f32> = vec3<f32>(x_922.y, x_922.z, x_922.w);
        let x_924 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_923.x, x_924.y, x_923.y, x_923.z);
        let x_927 : f32 = u_xlat8.x;
        u_xlat10.y = x_927;
        let x_929 : vec4<f32> = u_xlat5;
        let x_932 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_935 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_929.x, x_929.y, x_929.x, x_929.y) * vec4<f32>(x_932.x, x_932.y, x_932.x, x_932.y)) + vec4<f32>(x_935.x, x_935.y, x_935.z, x_935.y));
        let x_938 : vec4<f32> = u_xlat5;
        let x_941 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_944 : vec4<f32> = u_xlat10;
        u_xlat57 = ((vec2<f32>(x_938.x, x_938.y) * vec2<f32>(x_941.x, x_941.y)) + vec2<f32>(x_944.w, x_944.y));
        let x_948 : f32 = u_xlat10.y;
        u_xlat7.y = x_948;
        let x_951 : f32 = u_xlat8.z;
        u_xlat10.y = x_951;
        let x_953 : vec4<f32> = u_xlat5;
        let x_956 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_959 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_953.x, x_953.y, x_953.x, x_953.y) * vec4<f32>(x_956.x, x_956.y, x_956.x, x_956.y)) + vec4<f32>(x_959.x, x_959.y, x_959.z, x_959.y));
        let x_962 : vec4<f32> = u_xlat5;
        let x_965 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_968 : vec4<f32> = u_xlat10;
        let x_970 : vec2<f32> = ((vec2<f32>(x_962.x, x_962.y) * vec2<f32>(x_965.x, x_965.y)) + vec2<f32>(x_968.w, x_968.y));
        let x_971 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_970.x, x_970.y, x_971.z, x_971.w);
        let x_974 : f32 = u_xlat10.y;
        u_xlat7.z = x_974;
        let x_977 : vec4<f32> = u_xlat5;
        let x_980 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_983 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_977.x, x_977.y, x_977.x, x_977.y) * vec4<f32>(x_980.x, x_980.y, x_980.x, x_980.y)) + vec4<f32>(x_983.x, x_983.y, x_983.x, x_983.z));
        let x_987 : f32 = u_xlat8.w;
        u_xlat10.y = x_987;
        let x_990 : vec4<f32> = u_xlat5;
        let x_993 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_996 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_990.x, x_990.y, x_990.x, x_990.y) * vec4<f32>(x_993.x, x_993.y, x_993.x, x_993.y)) + vec4<f32>(x_996.x, x_996.y, x_996.z, x_996.y));
        let x_1000 : vec4<f32> = u_xlat5;
        let x_1003 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_1006 : vec4<f32> = u_xlat10;
        u_xlat33 = ((vec2<f32>(x_1000.x, x_1000.y) * vec2<f32>(x_1003.x, x_1003.y)) + vec2<f32>(x_1006.w, x_1006.y));
        let x_1010 : f32 = u_xlat10.y;
        u_xlat7.w = x_1010;
        let x_1013 : vec4<f32> = u_xlat5;
        let x_1016 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_1019 : vec4<f32> = u_xlat7;
        u_xlat65 = ((vec2<f32>(x_1013.x, x_1013.y) * vec2<f32>(x_1016.x, x_1016.y)) + vec2<f32>(x_1019.x, x_1019.w));
        let x_1022 : vec4<f32> = u_xlat10;
        let x_1023 : vec3<f32> = vec3<f32>(x_1022.x, x_1022.z, x_1022.w);
        let x_1024 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1023.x, x_1024.y, x_1023.y, x_1023.z);
        let x_1026 : vec4<f32> = u_xlat5;
        let x_1029 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_1032 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1026.x, x_1026.y, x_1026.x, x_1026.y) * vec4<f32>(x_1029.x, x_1029.y, x_1029.x, x_1029.y)) + vec4<f32>(x_1032.x, x_1032.y, x_1032.z, x_1032.y));
        let x_1036 : vec4<f32> = u_xlat5;
        let x_1039 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_1042 : vec4<f32> = u_xlat8;
        u_xlat60 = ((vec2<f32>(x_1036.x, x_1036.y) * vec2<f32>(x_1039.x, x_1039.y)) + vec2<f32>(x_1042.w, x_1042.y));
        let x_1046 : f32 = u_xlat7.x;
        u_xlat8.x = x_1046;
        let x_1048 : vec4<f32> = u_xlat5;
        let x_1051 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_1054 : vec4<f32> = u_xlat8;
        let x_1056 : vec2<f32> = ((vec2<f32>(x_1048.x, x_1048.y) * vec2<f32>(x_1051.x, x_1051.y)) + vec2<f32>(x_1054.x, x_1054.y));
        let x_1057 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1056.x, x_1056.y, x_1057.z, x_1057.w);
        let x_1060 : vec4<f32> = u_xlat6;
        let x_1062 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_1060.x, x_1060.x, x_1060.x, x_1060.x) * x_1062);
        let x_1065 : vec4<f32> = u_xlat6;
        let x_1067 : vec4<f32> = u_xlat9;
        u_xlat17 = (vec4<f32>(x_1065.y, x_1065.y, x_1065.y, x_1065.y) * x_1067);
        let x_1070 : vec4<f32> = u_xlat6;
        let x_1072 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1070.z, x_1070.z, x_1070.z, x_1070.z) * x_1072);
        let x_1074 : vec4<f32> = u_xlat6;
        let x_1076 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_1074.w, x_1074.w, x_1074.w, x_1074.w) * x_1076);
        let x_1079 : vec4<f32> = u_xlat11;
        let x_1080 : vec2<f32> = vec2<f32>(x_1079.x, x_1079.y);
        let x_1082 : f32 = u_xlat4.z;
        txVec13 = vec3<f32>(x_1080.x, x_1080.y, x_1082);
        let x_1089 : vec3<f32> = txVec13;
        let x_1091 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1089.xy, x_1089.z);
        u_xlat82 = x_1091;
        let x_1093 : vec4<f32> = u_xlat11;
        let x_1094 : vec2<f32> = vec2<f32>(x_1093.z, x_1093.w);
        let x_1096 : f32 = u_xlat4.z;
        txVec14 = vec3<f32>(x_1094.x, x_1094.y, x_1096);
        let x_1103 : vec3<f32> = txVec14;
        let x_1105 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1103.xy, x_1103.z);
        u_xlat7.x = x_1105;
        let x_1108 : f32 = u_xlat7.x;
        let x_1110 : f32 = u_xlat16.y;
        u_xlat7.x = (x_1108 * x_1110);
        let x_1114 : f32 = u_xlat16.x;
        let x_1115 : f32 = u_xlat82;
        let x_1118 : f32 = u_xlat7.x;
        u_xlat82 = ((x_1114 * x_1115) + x_1118);
        let x_1121 : vec2<f32> = u_xlat57;
        let x_1123 : f32 = u_xlat4.z;
        txVec15 = vec3<f32>(x_1121.x, x_1121.y, x_1123);
        let x_1130 : vec3<f32> = txVec15;
        let x_1132 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1130.xy, x_1130.z);
        u_xlat57.x = x_1132;
        let x_1135 : f32 = u_xlat16.z;
        let x_1137 : f32 = u_xlat57.x;
        let x_1139 : f32 = u_xlat82;
        u_xlat82 = ((x_1135 * x_1137) + x_1139);
        let x_1142 : vec4<f32> = u_xlat14;
        let x_1143 : vec2<f32> = vec2<f32>(x_1142.x, x_1142.y);
        let x_1145 : f32 = u_xlat4.z;
        txVec16 = vec3<f32>(x_1143.x, x_1143.y, x_1145);
        let x_1152 : vec3<f32> = txVec16;
        let x_1154 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1152.xy, x_1152.z);
        u_xlat57.x = x_1154;
        let x_1157 : f32 = u_xlat16.w;
        let x_1159 : f32 = u_xlat57.x;
        let x_1161 : f32 = u_xlat82;
        u_xlat82 = ((x_1157 * x_1159) + x_1161);
        let x_1164 : vec4<f32> = u_xlat12;
        let x_1165 : vec2<f32> = vec2<f32>(x_1164.x, x_1164.y);
        let x_1167 : f32 = u_xlat4.z;
        txVec17 = vec3<f32>(x_1165.x, x_1165.y, x_1167);
        let x_1174 : vec3<f32> = txVec17;
        let x_1176 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1174.xy, x_1174.z);
        u_xlat57.x = x_1176;
        let x_1179 : f32 = u_xlat17.x;
        let x_1181 : f32 = u_xlat57.x;
        let x_1183 : f32 = u_xlat82;
        u_xlat82 = ((x_1179 * x_1181) + x_1183);
        let x_1186 : vec4<f32> = u_xlat12;
        let x_1187 : vec2<f32> = vec2<f32>(x_1186.z, x_1186.w);
        let x_1189 : f32 = u_xlat4.z;
        txVec18 = vec3<f32>(x_1187.x, x_1187.y, x_1189);
        let x_1196 : vec3<f32> = txVec18;
        let x_1198 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1196.xy, x_1196.z);
        u_xlat57.x = x_1198;
        let x_1201 : f32 = u_xlat17.y;
        let x_1203 : f32 = u_xlat57.x;
        let x_1205 : f32 = u_xlat82;
        u_xlat82 = ((x_1201 * x_1203) + x_1205);
        let x_1208 : vec4<f32> = u_xlat13;
        let x_1209 : vec2<f32> = vec2<f32>(x_1208.x, x_1208.y);
        let x_1211 : f32 = u_xlat4.z;
        txVec19 = vec3<f32>(x_1209.x, x_1209.y, x_1211);
        let x_1218 : vec3<f32> = txVec19;
        let x_1220 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1218.xy, x_1218.z);
        u_xlat57.x = x_1220;
        let x_1223 : f32 = u_xlat17.z;
        let x_1225 : f32 = u_xlat57.x;
        let x_1227 : f32 = u_xlat82;
        u_xlat82 = ((x_1223 * x_1225) + x_1227);
        let x_1230 : vec4<f32> = u_xlat14;
        let x_1231 : vec2<f32> = vec2<f32>(x_1230.z, x_1230.w);
        let x_1233 : f32 = u_xlat4.z;
        txVec20 = vec3<f32>(x_1231.x, x_1231.y, x_1233);
        let x_1240 : vec3<f32> = txVec20;
        let x_1242 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1240.xy, x_1240.z);
        u_xlat57.x = x_1242;
        let x_1245 : f32 = u_xlat17.w;
        let x_1247 : f32 = u_xlat57.x;
        let x_1249 : f32 = u_xlat82;
        u_xlat82 = ((x_1245 * x_1247) + x_1249);
        let x_1252 : vec4<f32> = u_xlat15;
        let x_1253 : vec2<f32> = vec2<f32>(x_1252.x, x_1252.y);
        let x_1255 : f32 = u_xlat4.z;
        txVec21 = vec3<f32>(x_1253.x, x_1253.y, x_1255);
        let x_1262 : vec3<f32> = txVec21;
        let x_1264 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1262.xy, x_1262.z);
        u_xlat57.x = x_1264;
        let x_1267 : f32 = u_xlat18.x;
        let x_1269 : f32 = u_xlat57.x;
        let x_1271 : f32 = u_xlat82;
        u_xlat82 = ((x_1267 * x_1269) + x_1271);
        let x_1274 : vec4<f32> = u_xlat15;
        let x_1275 : vec2<f32> = vec2<f32>(x_1274.z, x_1274.w);
        let x_1277 : f32 = u_xlat4.z;
        txVec22 = vec3<f32>(x_1275.x, x_1275.y, x_1277);
        let x_1284 : vec3<f32> = txVec22;
        let x_1286 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1284.xy, x_1284.z);
        u_xlat57.x = x_1286;
        let x_1289 : f32 = u_xlat18.y;
        let x_1291 : f32 = u_xlat57.x;
        let x_1293 : f32 = u_xlat82;
        u_xlat82 = ((x_1289 * x_1291) + x_1293);
        let x_1296 : vec2<f32> = u_xlat33;
        let x_1298 : f32 = u_xlat4.z;
        txVec23 = vec3<f32>(x_1296.x, x_1296.y, x_1298);
        let x_1305 : vec3<f32> = txVec23;
        let x_1307 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1305.xy, x_1305.z);
        u_xlat57.x = x_1307;
        let x_1310 : f32 = u_xlat18.z;
        let x_1312 : f32 = u_xlat57.x;
        let x_1314 : f32 = u_xlat82;
        u_xlat82 = ((x_1310 * x_1312) + x_1314);
        let x_1317 : vec2<f32> = u_xlat65;
        let x_1319 : f32 = u_xlat4.z;
        txVec24 = vec3<f32>(x_1317.x, x_1317.y, x_1319);
        let x_1326 : vec3<f32> = txVec24;
        let x_1328 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1326.xy, x_1326.z);
        u_xlat57.x = x_1328;
        let x_1331 : f32 = u_xlat18.w;
        let x_1333 : f32 = u_xlat57.x;
        let x_1335 : f32 = u_xlat82;
        u_xlat82 = ((x_1331 * x_1333) + x_1335);
        let x_1338 : vec4<f32> = u_xlat10;
        let x_1339 : vec2<f32> = vec2<f32>(x_1338.x, x_1338.y);
        let x_1341 : f32 = u_xlat4.z;
        txVec25 = vec3<f32>(x_1339.x, x_1339.y, x_1341);
        let x_1348 : vec3<f32> = txVec25;
        let x_1350 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1348.xy, x_1348.z);
        u_xlat57.x = x_1350;
        let x_1353 : f32 = u_xlat6.x;
        let x_1355 : f32 = u_xlat57.x;
        let x_1357 : f32 = u_xlat82;
        u_xlat82 = ((x_1353 * x_1355) + x_1357);
        let x_1360 : vec4<f32> = u_xlat10;
        let x_1361 : vec2<f32> = vec2<f32>(x_1360.z, x_1360.w);
        let x_1363 : f32 = u_xlat4.z;
        txVec26 = vec3<f32>(x_1361.x, x_1361.y, x_1363);
        let x_1370 : vec3<f32> = txVec26;
        let x_1372 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1370.xy, x_1370.z);
        u_xlat57.x = x_1372;
        let x_1375 : f32 = u_xlat6.y;
        let x_1377 : f32 = u_xlat57.x;
        let x_1379 : f32 = u_xlat82;
        u_xlat82 = ((x_1375 * x_1377) + x_1379);
        let x_1382 : vec2<f32> = u_xlat60;
        let x_1384 : f32 = u_xlat4.z;
        txVec27 = vec3<f32>(x_1382.x, x_1382.y, x_1384);
        let x_1391 : vec3<f32> = txVec27;
        let x_1393 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1391.xy, x_1391.z);
        u_xlat57.x = x_1393;
        let x_1396 : f32 = u_xlat6.z;
        let x_1398 : f32 = u_xlat57.x;
        let x_1400 : f32 = u_xlat82;
        u_xlat82 = ((x_1396 * x_1398) + x_1400);
        let x_1403 : vec4<f32> = u_xlat5;
        let x_1404 : vec2<f32> = vec2<f32>(x_1403.x, x_1403.y);
        let x_1406 : f32 = u_xlat4.z;
        txVec28 = vec3<f32>(x_1404.x, x_1404.y, x_1406);
        let x_1413 : vec3<f32> = txVec28;
        let x_1415 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1413.xy, x_1413.z);
        u_xlat5.x = x_1415;
        let x_1418 : f32 = u_xlat6.w;
        let x_1420 : f32 = u_xlat5.x;
        let x_1422 : f32 = u_xlat82;
        u_xlat80 = ((x_1418 * x_1420) + x_1422);
      }
    }
  } else {
    let x_1426 : vec4<f32> = u_xlat4;
    let x_1427 : vec2<f32> = vec2<f32>(x_1426.x, x_1426.y);
    let x_1429 : f32 = u_xlat4.z;
    txVec29 = vec3<f32>(x_1427.x, x_1427.y, x_1429);
    let x_1436 : vec3<f32> = txVec29;
    let x_1438 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1436.xy, x_1436.z);
    u_xlat80 = x_1438;
  }
  let x_1440 : f32 = x_131.x_MainLightShadowParams.x;
  u_xlat4.x = (-(x_1440) + 1.0f);
  let x_1444 : f32 = u_xlat80;
  let x_1446 : f32 = x_131.x_MainLightShadowParams.x;
  let x_1449 : f32 = u_xlat4.x;
  u_xlat80 = ((x_1444 * x_1446) + x_1449);
  let x_1453 : f32 = u_xlat4.z;
  u_xlatb30 = (0.0f >= x_1453);
  let x_1457 : f32 = u_xlat4.z;
  u_xlatb56 = (x_1457 >= 1.0f);
  let x_1459 : bool = u_xlatb56;
  let x_1460 : bool = u_xlatb30;
  u_xlatb30 = (x_1459 | x_1460);
  let x_1462 : bool = u_xlatb30;
  let x_1463 : f32 = u_xlat80;
  u_xlat80 = select(x_1463, 1.0f, x_1462);
  let x_1465 : vec3<f32> = u_xlat0;
  let x_1467 : vec4<f32> = x_53.x_MainLightPosition;
  u_xlat0.x = dot(x_1465, -(vec3<f32>(x_1467.x, x_1467.y, x_1467.z)));
  let x_1473 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1473, 0.0f, 1.0f);
  let x_1477 : f32 = u_xlat80;
  let x_1480 : vec4<f32> = x_53.x_MainLightColor;
  u_xlat30 = (vec3<f32>(x_1477, x_1477, x_1477) * vec3<f32>(x_1480.x, x_1480.y, x_1480.z));
  let x_1483 : vec3<f32> = u_xlat0;
  let x_1485 : vec3<f32> = u_xlat30;
  u_xlat0 = (vec3<f32>(x_1483.x, x_1483.x, x_1483.x) * x_1485);
  let x_1487 : vec3<f32> = u_xlat0;
  let x_1488 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_1487 * vec3<f32>(x_1488.x, x_1488.y, x_1488.z));
  let x_1493 : f32 = u_xlat1.w;
  u_xlatb1 = (x_1493 >= 0.40000000596046447754f);
  let x_1496 : bool = u_xlatb1;
  if (x_1496) {
    let x_1502 : f32 = u_xlat1.w;
    x_1498 = x_1502;
  } else {
    x_1498 = 0.0f;
  }
  let x_1504 : f32 = x_1498;
  u_xlat1.x = x_1504;
  let x_1508 : f32 = u_xlat1.w;
  u_xlat27.x = (x_1508 + -0.40000000596046447754f);
  let x_1514 : f32 = u_xlat1.w;
  u_xlat53 = dpdxCoarse(x_1514);
  let x_1518 : f32 = u_xlat1.w;
  u_xlat79 = dpdyCoarse(x_1518);
  let x_1520 : f32 = u_xlat79;
  let x_1522 : f32 = u_xlat53;
  u_xlat53 = (abs(x_1520) + abs(x_1522));
  let x_1525 : f32 = u_xlat53;
  u_xlat53 = max(x_1525, 0.00009999999747378752f);
  let x_1529 : f32 = u_xlat27.x;
  let x_1530 : f32 = u_xlat53;
  u_xlat27.x = (x_1529 / x_1530);
  let x_1534 : f32 = u_xlat27.x;
  u_xlat27.x = (x_1534 + 0.5f);
  let x_1538 : f32 = u_xlat27.x;
  u_xlat27.x = clamp(x_1538, 0.0f, 1.0f);
  let x_1543 : f32 = x_53.x_AlphaToMaskAvailable;
  u_xlatb53 = !((x_1543 == 0.0f));
  let x_1545 : bool = u_xlatb53;
  if (x_1545) {
    let x_1550 : f32 = u_xlat27.x;
    x_1546 = x_1550;
  } else {
    let x_1553 : f32 = u_xlat1.x;
    x_1546 = x_1553;
  }
  let x_1554 : f32 = x_1546;
  u_xlat1.x = x_1554;
  let x_1557 : f32 = u_xlat1.x;
  u_xlat27.x = (x_1557 + -0.00009999999747378752f);
  let x_1565 : f32 = u_xlat27.x;
  u_xlatb27.x = (x_1565 < 0.0f);
  let x_1569 : bool = u_xlatb27.x;
  if (((select(0i, 1i, x_1569) * -1i) != 0i)) {
    discard;
  }
  let x_1579 : f32 = vs_INTERP4.w;
  u_xlatb27.x = (0.0f < x_1579);
  let x_1587 : f32 = x_1585.unity_WorldTransformParams.w;
  u_xlatb27.z = (x_1587 >= 0.0f);
  let x_1591 : bool = u_xlatb27.x;
  u_xlat27.x = select(-1.0f, 1.0f, x_1591);
  let x_1595 : bool = u_xlatb27.z;
  u_xlat27.z = select(-1.0f, 1.0f, x_1595);
  let x_1599 : f32 = u_xlat27.z;
  let x_1601 : f32 = u_xlat27.x;
  u_xlat27.x = (x_1599 * x_1601);
  let x_1604 : vec4<f32> = vs_INTERP4;
  let x_1606 : vec3<f32> = vs_INTERP9;
  u_xlat30 = (vec3<f32>(x_1604.y, x_1604.z, x_1604.x) * vec3<f32>(x_1606.z, x_1606.x, x_1606.y));
  let x_1609 : vec3<f32> = vs_INTERP9;
  let x_1611 : vec4<f32> = vs_INTERP4;
  let x_1614 : vec3<f32> = u_xlat30;
  u_xlat30 = ((vec3<f32>(x_1609.y, x_1609.z, x_1609.x) * vec3<f32>(x_1611.z, x_1611.x, x_1611.y)) + -(x_1614));
  let x_1617 : vec3<f32> = u_xlat27;
  let x_1619 : vec3<f32> = u_xlat30;
  u_xlat30 = (vec3<f32>(x_1617.x, x_1617.x, x_1617.x) * x_1619);
  let x_1621 : vec3<f32> = u_xlat29;
  let x_1623 : vec3<f32> = u_xlat30;
  u_xlat30 = (vec3<f32>(x_1621.y, x_1621.y, x_1621.y) * x_1623);
  let x_1625 : vec3<f32> = u_xlat29;
  let x_1627 : vec4<f32> = vs_INTERP4;
  let x_1630 : vec3<f32> = u_xlat30;
  u_xlat30 = ((vec3<f32>(x_1625.x, x_1625.x, x_1625.x) * vec3<f32>(x_1627.x, x_1627.y, x_1627.z)) + x_1630);
  let x_1632 : vec3<f32> = u_xlat29;
  let x_1634 : vec3<f32> = vs_INTERP9;
  let x_1636 : vec3<f32> = u_xlat30;
  u_xlat29 = ((vec3<f32>(x_1632.z, x_1632.z, x_1632.z) * x_1634) + x_1636);
  let x_1638 : vec3<f32> = u_xlat29;
  let x_1639 : vec3<f32> = u_xlat29;
  u_xlat27.x = dot(x_1638, x_1639);
  let x_1643 : f32 = u_xlat27.x;
  u_xlat27.x = inverseSqrt(x_1643);
  let x_1646 : vec3<f32> = u_xlat27;
  let x_1648 : vec3<f32> = u_xlat29;
  u_xlat29 = (vec3<f32>(x_1646.x, x_1646.x, x_1646.x) * x_1648);
  let x_1651 : f32 = x_53.unity_OrthoParams.w;
  u_xlatb27.x = (x_1651 == 0.0f);
  let x_1654 : vec3<f32> = vs_INTERP8;
  let x_1659 : vec3<f32> = x_53.x_WorldSpaceCameraPos;
  u_xlat30 = (-(x_1654) + x_1659);
  let x_1661 : vec3<f32> = u_xlat30;
  let x_1662 : vec3<f32> = u_xlat30;
  u_xlat79 = dot(x_1661, x_1662);
  let x_1664 : f32 = u_xlat79;
  u_xlat79 = inverseSqrt(x_1664);
  let x_1666 : f32 = u_xlat79;
  let x_1668 : vec3<f32> = u_xlat30;
  u_xlat30 = (vec3<f32>(x_1666, x_1666, x_1666) * x_1668);
  let x_1672 : f32 = x_53.unity_MatrixV[0i].z;
  u_xlat5.x = x_1672;
  let x_1675 : f32 = x_53.unity_MatrixV[1i].z;
  u_xlat5.y = x_1675;
  let x_1678 : f32 = x_53.unity_MatrixV[2i].z;
  u_xlat5.z = x_1678;
  let x_1681 : bool = u_xlatb27.x;
  if (x_1681) {
    let x_1685 : vec3<f32> = u_xlat30;
    x_1682 = x_1685;
  } else {
    let x_1687 : vec4<f32> = u_xlat5;
    x_1682 = vec3<f32>(x_1687.x, x_1687.y, x_1687.z);
  }
  let x_1689 : vec3<f32> = x_1682;
  u_xlat30 = x_1689;
  let x_1691 : f32 = vs_INTERP8.y;
  let x_1693 : f32 = x_53.unity_MatrixV[1i].z;
  u_xlat27.x = (x_1691 * x_1693);
  let x_1697 : f32 = x_53.unity_MatrixV[0i].z;
  let x_1699 : f32 = vs_INTERP8.x;
  let x_1702 : f32 = u_xlat27.x;
  u_xlat27.x = ((x_1697 * x_1699) + x_1702);
  let x_1706 : f32 = x_53.unity_MatrixV[2i].z;
  let x_1708 : f32 = vs_INTERP8.z;
  let x_1711 : f32 = u_xlat27.x;
  u_xlat27.x = ((x_1706 * x_1708) + x_1711);
  let x_1715 : f32 = u_xlat27.x;
  let x_1717 : f32 = x_53.unity_MatrixV[3i].z;
  u_xlat27.x = (x_1715 + x_1717);
  let x_1721 : f32 = u_xlat27.x;
  let x_1724 : f32 = x_53.x_ProjectionParams.y;
  u_xlat27.x = (-(x_1721) + -(x_1724));
  let x_1729 : f32 = u_xlat27.x;
  u_xlat27.x = max(x_1729, 0.0f);
  let x_1733 : f32 = u_xlat27.x;
  let x_1735 : f32 = x_53.unity_FogParams.x;
  u_xlat27.x = (x_1733 * x_1735);
  let x_1745 : vec2<f32> = vs_INTERP0;
  let x_1747 : f32 = x_53.x_GlobalMipBias.x;
  let x_1748 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_1745, x_1747);
  u_xlat5 = x_1748;
  let x_1753 : vec2<f32> = vs_INTERP0;
  let x_1755 : f32 = x_53.x_GlobalMipBias.x;
  let x_1756 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_1753, x_1755);
  let x_1757 : vec3<f32> = vec3<f32>(x_1756.x, x_1756.y, x_1756.z);
  let x_1758 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1757.x, x_1757.y, x_1757.z, x_1758.w);
  let x_1760 : vec4<f32> = u_xlat5;
  let x_1763 : vec3<f32> = (vec3<f32>(x_1760.x, x_1760.y, x_1760.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_1764 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1763.x, x_1763.y, x_1763.z, x_1764.w);
  let x_1766 : vec3<f32> = u_xlat29;
  let x_1767 : vec4<f32> = u_xlat5;
  u_xlat79 = dot(x_1766, vec3<f32>(x_1767.x, x_1767.y, x_1767.z));
  let x_1770 : f32 = u_xlat79;
  u_xlat79 = (x_1770 + 0.5f);
  let x_1772 : f32 = u_xlat79;
  let x_1774 : vec4<f32> = u_xlat6;
  let x_1776 : vec3<f32> = (vec3<f32>(x_1772, x_1772, x_1772) * vec3<f32>(x_1774.x, x_1774.y, x_1774.z));
  let x_1777 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1776.x, x_1776.y, x_1776.z, x_1777.w);
  let x_1780 : f32 = u_xlat5.w;
  u_xlat79 = max(x_1780, 0.00009999999747378752f);
  let x_1782 : vec4<f32> = u_xlat5;
  let x_1784 : f32 = u_xlat79;
  let x_1786 : vec3<f32> = (vec3<f32>(x_1782.x, x_1782.y, x_1782.z) / vec3<f32>(x_1784, x_1784, x_1784));
  let x_1787 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1786.x, x_1786.y, x_1786.z, x_1787.w);
  let x_1790 : f32 = u_xlat3.x;
  u_xlat3.x = x_1790;
  let x_1793 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1793, 0.0f, 1.0f);
  let x_1797 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_1797, 1.0f);
  let x_1800 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1800 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_1805 : f32 = u_xlat3.x;
  u_xlat79 = (-(x_1805) + 1.0f);
  let x_1808 : f32 = u_xlat79;
  let x_1809 : f32 = u_xlat79;
  u_xlat80 = (x_1808 * x_1809);
  let x_1811 : f32 = u_xlat80;
  u_xlat80 = max(x_1811, 0.0078125f);
  let x_1815 : f32 = u_xlat80;
  let x_1816 : f32 = u_xlat80;
  u_xlat83 = (x_1815 * x_1816);
  let x_1819 : f32 = u_xlat3.x;
  u_xlat3.x = (x_1819 + 0.04000002145767211914f);
  let x_1824 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_1824, 1.0f);
  let x_1827 : f32 = u_xlat80;
  u_xlat6.x = ((x_1827 * 4.0f) + 2.0f);
  let x_1833 : f32 = vs_INTERP6.w;
  u_xlat32.x = min(x_1833, 1.0f);
  let x_1836 : bool = u_xlatb78;
  if (x_1836) {
    let x_1840 : f32 = x_131.x_MainLightShadowParams.y;
    u_xlatb78 = (x_1840 == 1.0f);
    let x_1842 : bool = u_xlatb78;
    if (x_1842) {
      let x_1846 : vec4<f32> = vs_INTERP3;
      let x_1849 : vec4<f32> = x_131.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_1846.x, x_1846.y, x_1846.x, x_1846.y) + x_1849);
      let x_1852 : vec4<f32> = u_xlat7;
      let x_1853 : vec2<f32> = vec2<f32>(x_1852.x, x_1852.y);
      let x_1855 : f32 = vs_INTERP3.z;
      txVec30 = vec3<f32>(x_1853.x, x_1853.y, x_1855);
      let x_1862 : vec3<f32> = txVec30;
      let x_1864 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1862.xy, x_1862.z);
      u_xlat8.x = x_1864;
      let x_1867 : vec4<f32> = u_xlat7;
      let x_1868 : vec2<f32> = vec2<f32>(x_1867.z, x_1867.w);
      let x_1870 : f32 = vs_INTERP3.z;
      txVec31 = vec3<f32>(x_1868.x, x_1868.y, x_1870);
      let x_1877 : vec3<f32> = txVec31;
      let x_1879 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1877.xy, x_1877.z);
      u_xlat8.y = x_1879;
      let x_1881 : vec4<f32> = vs_INTERP3;
      let x_1884 : vec4<f32> = x_131.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_1881.x, x_1881.y, x_1881.x, x_1881.y) + x_1884);
      let x_1887 : vec4<f32> = u_xlat7;
      let x_1888 : vec2<f32> = vec2<f32>(x_1887.x, x_1887.y);
      let x_1890 : f32 = vs_INTERP3.z;
      txVec32 = vec3<f32>(x_1888.x, x_1888.y, x_1890);
      let x_1897 : vec3<f32> = txVec32;
      let x_1899 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1897.xy, x_1897.z);
      u_xlat8.z = x_1899;
      let x_1902 : vec4<f32> = u_xlat7;
      let x_1903 : vec2<f32> = vec2<f32>(x_1902.z, x_1902.w);
      let x_1905 : f32 = vs_INTERP3.z;
      txVec33 = vec3<f32>(x_1903.x, x_1903.y, x_1905);
      let x_1912 : vec3<f32> = txVec33;
      let x_1914 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1912.xy, x_1912.z);
      u_xlat8.w = x_1914;
      let x_1916 : vec4<f32> = u_xlat8;
      u_xlat78 = dot(x_1916, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_1923 : f32 = x_131.x_MainLightShadowParams.y;
      u_xlatb58.x = (x_1923 == 2.0f);
      let x_1927 : bool = u_xlatb58.x;
      if (x_1927) {
        let x_1931 : vec4<f32> = vs_INTERP3;
        let x_1934 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        u_xlat58 = ((vec2<f32>(x_1931.x, x_1931.y) * vec2<f32>(x_1934.z, x_1934.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1938 : vec2<f32> = u_xlat58;
        u_xlat58 = floor(x_1938);
        let x_1940 : vec4<f32> = vs_INTERP3;
        let x_1943 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_1946 : vec2<f32> = u_xlat58;
        let x_1948 : vec2<f32> = ((vec2<f32>(x_1940.x, x_1940.y) * vec2<f32>(x_1943.z, x_1943.w)) + -(x_1946));
        let x_1949 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1948.x, x_1948.y, x_1949.z, x_1949.w);
        let x_1951 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1951.x, x_1951.x, x_1951.y, x_1951.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1954 : vec4<f32> = u_xlat8;
        let x_1956 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1954.x, x_1954.x, x_1954.z, x_1954.z) * vec4<f32>(x_1956.x, x_1956.x, x_1956.z, x_1956.z));
        let x_1959 : vec4<f32> = u_xlat9;
        u_xlat59 = (vec2<f32>(x_1959.y, x_1959.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_1962 : vec4<f32> = u_xlat9;
        let x_1965 : vec4<f32> = u_xlat7;
        let x_1968 : vec2<f32> = ((vec2<f32>(x_1962.x, x_1962.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1965.x, x_1965.y)));
        let x_1969 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1968.x, x_1969.y, x_1968.y, x_1969.w);
        let x_1971 : vec4<f32> = u_xlat7;
        let x_1974 : vec2<f32> = (-(vec2<f32>(x_1971.x, x_1971.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1975 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1974.x, x_1974.y, x_1975.z, x_1975.w);
        let x_1978 : vec4<f32> = u_xlat7;
        u_xlat61 = min(vec2<f32>(x_1978.x, x_1978.y), vec2<f32>(0.0f, 0.0f));
        let x_1981 : vec2<f32> = u_xlat61;
        let x_1983 : vec2<f32> = u_xlat61;
        let x_1985 : vec4<f32> = u_xlat9;
        u_xlat61 = ((-(x_1981) * x_1983) + vec2<f32>(x_1985.x, x_1985.y));
        let x_1988 : vec4<f32> = u_xlat7;
        let x_1990 : vec2<f32> = max(vec2<f32>(x_1988.x, x_1988.y), vec2<f32>(0.0f, 0.0f));
        let x_1991 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1990.x, x_1990.y, x_1991.z, x_1991.w);
        let x_1993 : vec4<f32> = u_xlat7;
        let x_1996 : vec4<f32> = u_xlat7;
        let x_1999 : vec4<f32> = u_xlat8;
        let x_2001 : vec2<f32> = ((-(vec2<f32>(x_1993.x, x_1993.y)) * vec2<f32>(x_1996.x, x_1996.y)) + vec2<f32>(x_1999.y, x_1999.w));
        let x_2002 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2001.x, x_2001.y, x_2002.z, x_2002.w);
        let x_2004 : vec2<f32> = u_xlat61;
        u_xlat61 = (x_2004 + vec2<f32>(1.0f, 1.0f));
        let x_2006 : vec4<f32> = u_xlat7;
        let x_2008 : vec2<f32> = (vec2<f32>(x_2006.x, x_2006.y) + vec2<f32>(1.0f, 1.0f));
        let x_2009 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2008.x, x_2008.y, x_2009.z, x_2009.w);
        let x_2011 : vec4<f32> = u_xlat8;
        let x_2013 : vec2<f32> = (vec2<f32>(x_2011.x, x_2011.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2014 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2013.x, x_2013.y, x_2014.z, x_2014.w);
        let x_2016 : vec4<f32> = u_xlat9;
        let x_2018 : vec2<f32> = (vec2<f32>(x_2016.x, x_2016.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2019 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2018.x, x_2018.y, x_2019.z, x_2019.w);
        let x_2021 : vec2<f32> = u_xlat61;
        let x_2022 : vec2<f32> = (x_2021 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2023 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2022.x, x_2022.y, x_2023.z, x_2023.w);
        let x_2025 : vec4<f32> = u_xlat7;
        let x_2027 : vec2<f32> = (vec2<f32>(x_2025.x, x_2025.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2028 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2027.x, x_2027.y, x_2028.z, x_2028.w);
        let x_2030 : vec4<f32> = u_xlat8;
        let x_2032 : vec2<f32> = (vec2<f32>(x_2030.y, x_2030.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2033 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2032.x, x_2032.y, x_2033.z, x_2033.w);
        let x_2036 : f32 = u_xlat9.x;
        u_xlat10.z = x_2036;
        let x_2039 : f32 = u_xlat7.x;
        u_xlat10.w = x_2039;
        let x_2042 : f32 = u_xlat12.x;
        u_xlat11.z = x_2042;
        let x_2045 : f32 = u_xlat59.x;
        u_xlat11.w = x_2045;
        let x_2047 : vec4<f32> = u_xlat10;
        let x_2049 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_2047.z, x_2047.w, x_2047.x, x_2047.z) + vec4<f32>(x_2049.z, x_2049.w, x_2049.x, x_2049.z));
        let x_2053 : f32 = u_xlat10.y;
        u_xlat9.z = x_2053;
        let x_2056 : f32 = u_xlat7.y;
        u_xlat9.w = x_2056;
        let x_2059 : f32 = u_xlat11.y;
        u_xlat12.z = x_2059;
        let x_2062 : f32 = u_xlat59.y;
        u_xlat12.w = x_2062;
        let x_2064 : vec4<f32> = u_xlat9;
        let x_2066 : vec4<f32> = u_xlat12;
        let x_2068 : vec3<f32> = (vec3<f32>(x_2064.z, x_2064.y, x_2064.w) + vec3<f32>(x_2066.z, x_2066.y, x_2066.w));
        let x_2069 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2068.x, x_2068.y, x_2068.z, x_2069.w);
        let x_2071 : vec4<f32> = u_xlat11;
        let x_2073 : vec4<f32> = u_xlat8;
        let x_2075 : vec3<f32> = (vec3<f32>(x_2071.x, x_2071.z, x_2071.w) / vec3<f32>(x_2073.z, x_2073.w, x_2073.y));
        let x_2076 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2075.x, x_2075.y, x_2075.z, x_2076.w);
        let x_2078 : vec4<f32> = u_xlat9;
        let x_2080 : vec3<f32> = (vec3<f32>(x_2078.x, x_2078.y, x_2078.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2081 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2080.x, x_2080.y, x_2080.z, x_2081.w);
        let x_2083 : vec4<f32> = u_xlat12;
        let x_2085 : vec4<f32> = u_xlat7;
        let x_2087 : vec3<f32> = (vec3<f32>(x_2083.z, x_2083.y, x_2083.w) / vec3<f32>(x_2085.x, x_2085.y, x_2085.z));
        let x_2088 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2087.x, x_2087.y, x_2087.z, x_2088.w);
        let x_2090 : vec4<f32> = u_xlat10;
        let x_2092 : vec3<f32> = (vec3<f32>(x_2090.x, x_2090.y, x_2090.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2093 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2092.x, x_2092.y, x_2092.z, x_2093.w);
        let x_2095 : vec4<f32> = u_xlat9;
        let x_2098 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2100 : vec3<f32> = (vec3<f32>(x_2095.y, x_2095.x, x_2095.z) * vec3<f32>(x_2098.x, x_2098.x, x_2098.x));
        let x_2101 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2100.x, x_2100.y, x_2100.z, x_2101.w);
        let x_2103 : vec4<f32> = u_xlat10;
        let x_2106 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2108 : vec3<f32> = (vec3<f32>(x_2103.x, x_2103.y, x_2103.z) * vec3<f32>(x_2106.y, x_2106.y, x_2106.y));
        let x_2109 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2108.x, x_2108.y, x_2108.z, x_2109.w);
        let x_2112 : f32 = u_xlat10.x;
        u_xlat9.w = x_2112;
        let x_2114 : vec2<f32> = u_xlat58;
        let x_2117 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2120 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_2114.x, x_2114.y, x_2114.x, x_2114.y) * vec4<f32>(x_2117.x, x_2117.y, x_2117.x, x_2117.y)) + vec4<f32>(x_2120.y, x_2120.w, x_2120.x, x_2120.w));
        let x_2123 : vec2<f32> = u_xlat58;
        let x_2125 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2128 : vec4<f32> = u_xlat9;
        let x_2130 : vec2<f32> = ((x_2123 * vec2<f32>(x_2125.x, x_2125.y)) + vec2<f32>(x_2128.z, x_2128.w));
        let x_2131 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2130.x, x_2130.y, x_2131.z, x_2131.w);
        let x_2134 : f32 = u_xlat9.y;
        u_xlat10.w = x_2134;
        let x_2136 : vec4<f32> = u_xlat10;
        let x_2137 : vec2<f32> = vec2<f32>(x_2136.y, x_2136.z);
        let x_2138 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2138.x, x_2137.x, x_2138.z, x_2137.y);
        let x_2140 : vec2<f32> = u_xlat58;
        let x_2143 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2146 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_2140.x, x_2140.y, x_2140.x, x_2140.y) * vec4<f32>(x_2143.x, x_2143.y, x_2143.x, x_2143.y)) + vec4<f32>(x_2146.x, x_2146.y, x_2146.z, x_2146.y));
        let x_2149 : vec2<f32> = u_xlat58;
        let x_2152 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2155 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_2149.x, x_2149.y, x_2149.x, x_2149.y) * vec4<f32>(x_2152.x, x_2152.y, x_2152.x, x_2152.y)) + vec4<f32>(x_2155.w, x_2155.y, x_2155.w, x_2155.z));
        let x_2158 : vec2<f32> = u_xlat58;
        let x_2161 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2164 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_2158.x, x_2158.y, x_2158.x, x_2158.y) * vec4<f32>(x_2161.x, x_2161.y, x_2161.x, x_2161.y)) + vec4<f32>(x_2164.x, x_2164.w, x_2164.z, x_2164.w));
        let x_2167 : vec4<f32> = u_xlat7;
        let x_2169 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_2167.x, x_2167.x, x_2167.x, x_2167.y) * vec4<f32>(x_2169.z, x_2169.w, x_2169.y, x_2169.z));
        let x_2172 : vec4<f32> = u_xlat7;
        let x_2174 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_2172.y, x_2172.y, x_2172.z, x_2172.z) * x_2174);
        let x_2177 : f32 = u_xlat7.z;
        let x_2179 : f32 = u_xlat8.y;
        u_xlat58.x = (x_2177 * x_2179);
        let x_2183 : vec4<f32> = u_xlat11;
        let x_2184 : vec2<f32> = vec2<f32>(x_2183.x, x_2183.y);
        let x_2186 : f32 = vs_INTERP3.z;
        txVec34 = vec3<f32>(x_2184.x, x_2184.y, x_2186);
        let x_2194 : vec3<f32> = txVec34;
        let x_2196 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2194.xy, x_2194.z);
        u_xlat84 = x_2196;
        let x_2198 : vec4<f32> = u_xlat11;
        let x_2199 : vec2<f32> = vec2<f32>(x_2198.z, x_2198.w);
        let x_2201 : f32 = vs_INTERP3.z;
        txVec35 = vec3<f32>(x_2199.x, x_2199.y, x_2201);
        let x_2208 : vec3<f32> = txVec35;
        let x_2210 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2208.xy, x_2208.z);
        u_xlat7.x = x_2210;
        let x_2213 : f32 = u_xlat7.x;
        let x_2215 : f32 = u_xlat14.y;
        u_xlat7.x = (x_2213 * x_2215);
        let x_2219 : f32 = u_xlat14.x;
        let x_2220 : f32 = u_xlat84;
        let x_2223 : f32 = u_xlat7.x;
        u_xlat84 = ((x_2219 * x_2220) + x_2223);
        let x_2226 : vec4<f32> = u_xlat12;
        let x_2227 : vec2<f32> = vec2<f32>(x_2226.x, x_2226.y);
        let x_2229 : f32 = vs_INTERP3.z;
        txVec36 = vec3<f32>(x_2227.x, x_2227.y, x_2229);
        let x_2236 : vec3<f32> = txVec36;
        let x_2238 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2236.xy, x_2236.z);
        u_xlat7.x = x_2238;
        let x_2241 : f32 = u_xlat14.z;
        let x_2243 : f32 = u_xlat7.x;
        let x_2245 : f32 = u_xlat84;
        u_xlat84 = ((x_2241 * x_2243) + x_2245);
        let x_2248 : vec4<f32> = u_xlat10;
        let x_2249 : vec2<f32> = vec2<f32>(x_2248.x, x_2248.y);
        let x_2251 : f32 = vs_INTERP3.z;
        txVec37 = vec3<f32>(x_2249.x, x_2249.y, x_2251);
        let x_2258 : vec3<f32> = txVec37;
        let x_2260 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2258.xy, x_2258.z);
        u_xlat7.x = x_2260;
        let x_2263 : f32 = u_xlat14.w;
        let x_2265 : f32 = u_xlat7.x;
        let x_2267 : f32 = u_xlat84;
        u_xlat84 = ((x_2263 * x_2265) + x_2267);
        let x_2270 : vec4<f32> = u_xlat13;
        let x_2271 : vec2<f32> = vec2<f32>(x_2270.x, x_2270.y);
        let x_2273 : f32 = vs_INTERP3.z;
        txVec38 = vec3<f32>(x_2271.x, x_2271.y, x_2273);
        let x_2280 : vec3<f32> = txVec38;
        let x_2282 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2280.xy, x_2280.z);
        u_xlat7.x = x_2282;
        let x_2285 : f32 = u_xlat15.x;
        let x_2287 : f32 = u_xlat7.x;
        let x_2289 : f32 = u_xlat84;
        u_xlat84 = ((x_2285 * x_2287) + x_2289);
        let x_2292 : vec4<f32> = u_xlat13;
        let x_2293 : vec2<f32> = vec2<f32>(x_2292.z, x_2292.w);
        let x_2295 : f32 = vs_INTERP3.z;
        txVec39 = vec3<f32>(x_2293.x, x_2293.y, x_2295);
        let x_2302 : vec3<f32> = txVec39;
        let x_2304 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2302.xy, x_2302.z);
        u_xlat7.x = x_2304;
        let x_2307 : f32 = u_xlat15.y;
        let x_2309 : f32 = u_xlat7.x;
        let x_2311 : f32 = u_xlat84;
        u_xlat84 = ((x_2307 * x_2309) + x_2311);
        let x_2314 : vec4<f32> = u_xlat10;
        let x_2315 : vec2<f32> = vec2<f32>(x_2314.z, x_2314.w);
        let x_2317 : f32 = vs_INTERP3.z;
        txVec40 = vec3<f32>(x_2315.x, x_2315.y, x_2317);
        let x_2324 : vec3<f32> = txVec40;
        let x_2326 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2324.xy, x_2324.z);
        u_xlat7.x = x_2326;
        let x_2329 : f32 = u_xlat15.z;
        let x_2331 : f32 = u_xlat7.x;
        let x_2333 : f32 = u_xlat84;
        u_xlat84 = ((x_2329 * x_2331) + x_2333);
        let x_2336 : vec4<f32> = u_xlat9;
        let x_2337 : vec2<f32> = vec2<f32>(x_2336.x, x_2336.y);
        let x_2339 : f32 = vs_INTERP3.z;
        txVec41 = vec3<f32>(x_2337.x, x_2337.y, x_2339);
        let x_2346 : vec3<f32> = txVec41;
        let x_2348 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2346.xy, x_2346.z);
        u_xlat7.x = x_2348;
        let x_2351 : f32 = u_xlat15.w;
        let x_2353 : f32 = u_xlat7.x;
        let x_2355 : f32 = u_xlat84;
        u_xlat84 = ((x_2351 * x_2353) + x_2355);
        let x_2358 : vec4<f32> = u_xlat9;
        let x_2359 : vec2<f32> = vec2<f32>(x_2358.z, x_2358.w);
        let x_2361 : f32 = vs_INTERP3.z;
        txVec42 = vec3<f32>(x_2359.x, x_2359.y, x_2361);
        let x_2368 : vec3<f32> = txVec42;
        let x_2370 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2368.xy, x_2368.z);
        u_xlat7.x = x_2370;
        let x_2373 : f32 = u_xlat58.x;
        let x_2375 : f32 = u_xlat7.x;
        let x_2377 : f32 = u_xlat84;
        u_xlat78 = ((x_2373 * x_2375) + x_2377);
      } else {
        let x_2380 : vec4<f32> = vs_INTERP3;
        let x_2383 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        u_xlat58 = ((vec2<f32>(x_2380.x, x_2380.y) * vec2<f32>(x_2383.z, x_2383.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2387 : vec2<f32> = u_xlat58;
        u_xlat58 = floor(x_2387);
        let x_2389 : vec4<f32> = vs_INTERP3;
        let x_2392 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2395 : vec2<f32> = u_xlat58;
        let x_2397 : vec2<f32> = ((vec2<f32>(x_2389.x, x_2389.y) * vec2<f32>(x_2392.z, x_2392.w)) + -(x_2395));
        let x_2398 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2397.x, x_2397.y, x_2398.z, x_2398.w);
        let x_2400 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_2400.x, x_2400.x, x_2400.y, x_2400.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2403 : vec4<f32> = u_xlat8;
        let x_2405 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_2403.x, x_2403.x, x_2403.z, x_2403.z) * vec4<f32>(x_2405.x, x_2405.x, x_2405.z, x_2405.z));
        let x_2408 : vec4<f32> = u_xlat9;
        let x_2410 : vec2<f32> = (vec2<f32>(x_2408.y, x_2408.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_2411 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2411.x, x_2410.x, x_2411.z, x_2410.y);
        let x_2413 : vec4<f32> = u_xlat9;
        let x_2416 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_2413.x, x_2413.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2416.x, x_2416.y)));
        let x_2420 : vec4<f32> = u_xlat7;
        let x_2423 : vec2<f32> = (-(vec2<f32>(x_2420.x, x_2420.y)) + vec2<f32>(1.0f, 1.0f));
        let x_2424 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2423.x, x_2424.y, x_2423.y, x_2424.w);
        let x_2426 : vec4<f32> = u_xlat7;
        let x_2428 : vec2<f32> = min(vec2<f32>(x_2426.x, x_2426.y), vec2<f32>(0.0f, 0.0f));
        let x_2429 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2428.x, x_2428.y, x_2429.z, x_2429.w);
        let x_2431 : vec4<f32> = u_xlat9;
        let x_2434 : vec4<f32> = u_xlat9;
        let x_2437 : vec4<f32> = u_xlat8;
        let x_2439 : vec2<f32> = ((-(vec2<f32>(x_2431.x, x_2431.y)) * vec2<f32>(x_2434.x, x_2434.y)) + vec2<f32>(x_2437.x, x_2437.z));
        let x_2440 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2439.x, x_2440.y, x_2439.y, x_2440.w);
        let x_2442 : vec4<f32> = u_xlat7;
        let x_2444 : vec2<f32> = max(vec2<f32>(x_2442.x, x_2442.y), vec2<f32>(0.0f, 0.0f));
        let x_2445 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2444.x, x_2444.y, x_2445.z, x_2445.w);
        let x_2447 : vec4<f32> = u_xlat9;
        let x_2450 : vec4<f32> = u_xlat9;
        let x_2453 : vec4<f32> = u_xlat8;
        let x_2455 : vec2<f32> = ((-(vec2<f32>(x_2447.x, x_2447.y)) * vec2<f32>(x_2450.x, x_2450.y)) + vec2<f32>(x_2453.y, x_2453.w));
        let x_2456 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2456.x, x_2455.x, x_2456.z, x_2455.y);
        let x_2458 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_2458 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_2461 : f32 = u_xlat8.y;
        u_xlat9.z = (x_2461 * 0.08163200318813323975f);
        let x_2464 : vec2<f32> = u_xlat59;
        let x_2466 : vec2<f32> = (vec2<f32>(x_2464.y, x_2464.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2467 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2466.x, x_2466.y, x_2467.z, x_2467.w);
        let x_2469 : vec4<f32> = u_xlat8;
        u_xlat59 = (vec2<f32>(x_2469.x, x_2469.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2473 : f32 = u_xlat8.w;
        u_xlat11.z = (x_2473 * 0.08163200318813323975f);
        let x_2477 : f32 = u_xlat11.y;
        u_xlat9.x = x_2477;
        let x_2479 : vec4<f32> = u_xlat7;
        let x_2482 : vec2<f32> = ((vec2<f32>(x_2479.x, x_2479.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2483 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2483.x, x_2482.x, x_2483.z, x_2482.y);
        let x_2485 : vec4<f32> = u_xlat7;
        let x_2488 : vec2<f32> = ((vec2<f32>(x_2485.x, x_2485.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2489 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2488.x, x_2489.y, x_2488.y, x_2489.w);
        let x_2492 : f32 = u_xlat59.x;
        u_xlat8.y = x_2492;
        let x_2495 : f32 = u_xlat10.y;
        u_xlat8.w = x_2495;
        let x_2497 : vec4<f32> = u_xlat8;
        let x_2498 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_2497 + x_2498);
        let x_2500 : vec4<f32> = u_xlat7;
        let x_2503 : vec2<f32> = ((vec2<f32>(x_2500.y, x_2500.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2504 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2504.x, x_2503.x, x_2504.z, x_2503.y);
        let x_2506 : vec4<f32> = u_xlat7;
        let x_2509 : vec2<f32> = ((vec2<f32>(x_2506.y, x_2506.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2510 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2509.x, x_2510.y, x_2509.y, x_2510.w);
        let x_2513 : f32 = u_xlat59.y;
        u_xlat10.y = x_2513;
        let x_2515 : vec4<f32> = u_xlat10;
        let x_2516 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_2515 + x_2516);
        let x_2518 : vec4<f32> = u_xlat8;
        let x_2519 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_2518 / x_2519);
        let x_2521 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_2521 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2523 : vec4<f32> = u_xlat10;
        let x_2524 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_2523 / x_2524);
        let x_2526 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_2526 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2528 : vec4<f32> = u_xlat8;
        let x_2531 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_2528.w, x_2528.x, x_2528.y, x_2528.z) * vec4<f32>(x_2531.x, x_2531.x, x_2531.x, x_2531.x));
        let x_2534 : vec4<f32> = u_xlat10;
        let x_2537 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_2534.x, x_2534.w, x_2534.y, x_2534.z) * vec4<f32>(x_2537.y, x_2537.y, x_2537.y, x_2537.y));
        let x_2540 : vec4<f32> = u_xlat8;
        let x_2541 : vec3<f32> = vec3<f32>(x_2540.y, x_2540.z, x_2540.w);
        let x_2542 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2541.x, x_2542.y, x_2541.y, x_2541.z);
        let x_2545 : f32 = u_xlat10.x;
        u_xlat11.y = x_2545;
        let x_2547 : vec2<f32> = u_xlat58;
        let x_2550 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2553 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_2547.x, x_2547.y, x_2547.x, x_2547.y) * vec4<f32>(x_2550.x, x_2550.y, x_2550.x, x_2550.y)) + vec4<f32>(x_2553.x, x_2553.y, x_2553.z, x_2553.y));
        let x_2556 : vec2<f32> = u_xlat58;
        let x_2558 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2561 : vec4<f32> = u_xlat11;
        let x_2563 : vec2<f32> = ((x_2556 * vec2<f32>(x_2558.x, x_2558.y)) + vec2<f32>(x_2561.w, x_2561.y));
        let x_2564 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_2563.x, x_2563.y, x_2564.z, x_2564.w);
        let x_2567 : f32 = u_xlat11.y;
        u_xlat8.y = x_2567;
        let x_2570 : f32 = u_xlat10.z;
        u_xlat11.y = x_2570;
        let x_2572 : vec2<f32> = u_xlat58;
        let x_2575 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2578 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_2572.x, x_2572.y, x_2572.x, x_2572.y) * vec4<f32>(x_2575.x, x_2575.y, x_2575.x, x_2575.y)) + vec4<f32>(x_2578.x, x_2578.y, x_2578.z, x_2578.y));
        let x_2581 : vec2<f32> = u_xlat58;
        let x_2583 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2586 : vec4<f32> = u_xlat11;
        u_xlat65 = ((x_2581 * vec2<f32>(x_2583.x, x_2583.y)) + vec2<f32>(x_2586.w, x_2586.y));
        let x_2590 : f32 = u_xlat11.y;
        u_xlat8.z = x_2590;
        let x_2592 : vec2<f32> = u_xlat58;
        let x_2595 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2598 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_2592.x, x_2592.y, x_2592.x, x_2592.y) * vec4<f32>(x_2595.x, x_2595.y, x_2595.x, x_2595.y)) + vec4<f32>(x_2598.x, x_2598.y, x_2598.x, x_2598.z));
        let x_2602 : f32 = u_xlat10.w;
        u_xlat11.y = x_2602;
        let x_2604 : vec2<f32> = u_xlat58;
        let x_2607 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2610 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_2604.x, x_2604.y, x_2604.x, x_2604.y) * vec4<f32>(x_2607.x, x_2607.y, x_2607.x, x_2607.y)) + vec4<f32>(x_2610.x, x_2610.y, x_2610.z, x_2610.y));
        let x_2614 : vec2<f32> = u_xlat58;
        let x_2616 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2619 : vec4<f32> = u_xlat11;
        u_xlat34 = ((x_2614 * vec2<f32>(x_2616.x, x_2616.y)) + vec2<f32>(x_2619.w, x_2619.y));
        let x_2623 : f32 = u_xlat11.y;
        u_xlat8.w = x_2623;
        let x_2625 : vec2<f32> = u_xlat58;
        let x_2627 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2630 : vec4<f32> = u_xlat8;
        let x_2632 : vec2<f32> = ((x_2625 * vec2<f32>(x_2627.x, x_2627.y)) + vec2<f32>(x_2630.x, x_2630.w));
        let x_2633 : vec4<f32> = u_xlat17;
        u_xlat17 = vec4<f32>(x_2632.x, x_2632.y, x_2633.z, x_2633.w);
        let x_2635 : vec4<f32> = u_xlat11;
        let x_2636 : vec3<f32> = vec3<f32>(x_2635.x, x_2635.z, x_2635.w);
        let x_2637 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2636.x, x_2637.y, x_2636.y, x_2636.z);
        let x_2639 : vec2<f32> = u_xlat58;
        let x_2642 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2645 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_2639.x, x_2639.y, x_2639.x, x_2639.y) * vec4<f32>(x_2642.x, x_2642.y, x_2642.x, x_2642.y)) + vec4<f32>(x_2645.x, x_2645.y, x_2645.z, x_2645.y));
        let x_2649 : vec2<f32> = u_xlat58;
        let x_2651 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2654 : vec4<f32> = u_xlat10;
        u_xlat62 = ((x_2649 * vec2<f32>(x_2651.x, x_2651.y)) + vec2<f32>(x_2654.w, x_2654.y));
        let x_2658 : f32 = u_xlat8.x;
        u_xlat10.x = x_2658;
        let x_2660 : vec2<f32> = u_xlat58;
        let x_2662 : vec4<f32> = x_131.x_MainLightShadowmapSize;
        let x_2665 : vec4<f32> = u_xlat10;
        u_xlat58 = ((x_2660 * vec2<f32>(x_2662.x, x_2662.y)) + vec2<f32>(x_2665.x, x_2665.y));
        let x_2668 : vec4<f32> = u_xlat7;
        let x_2670 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_2668.x, x_2668.x, x_2668.x, x_2668.x) * x_2670);
        let x_2673 : vec4<f32> = u_xlat7;
        let x_2675 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_2673.y, x_2673.y, x_2673.y, x_2673.y) * x_2675);
        let x_2678 : vec4<f32> = u_xlat7;
        let x_2680 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_2678.z, x_2678.z, x_2678.z, x_2678.z) * x_2680);
        let x_2682 : vec4<f32> = u_xlat7;
        let x_2684 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_2682.w, x_2682.w, x_2682.w, x_2682.w) * x_2684);
        let x_2687 : vec4<f32> = u_xlat12;
        let x_2688 : vec2<f32> = vec2<f32>(x_2687.x, x_2687.y);
        let x_2690 : f32 = vs_INTERP3.z;
        txVec43 = vec3<f32>(x_2688.x, x_2688.y, x_2690);
        let x_2697 : vec3<f32> = txVec43;
        let x_2699 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2697.xy, x_2697.z);
        u_xlat8.x = x_2699;
        let x_2702 : vec4<f32> = u_xlat12;
        let x_2703 : vec2<f32> = vec2<f32>(x_2702.z, x_2702.w);
        let x_2705 : f32 = vs_INTERP3.z;
        txVec44 = vec3<f32>(x_2703.x, x_2703.y, x_2705);
        let x_2713 : vec3<f32> = txVec44;
        let x_2715 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2713.xy, x_2713.z);
        u_xlat86 = x_2715;
        let x_2716 : f32 = u_xlat86;
        let x_2718 : f32 = u_xlat18.y;
        u_xlat86 = (x_2716 * x_2718);
        let x_2721 : f32 = u_xlat18.x;
        let x_2723 : f32 = u_xlat8.x;
        let x_2725 : f32 = u_xlat86;
        u_xlat8.x = ((x_2721 * x_2723) + x_2725);
        let x_2729 : vec4<f32> = u_xlat13;
        let x_2730 : vec2<f32> = vec2<f32>(x_2729.x, x_2729.y);
        let x_2732 : f32 = vs_INTERP3.z;
        txVec45 = vec3<f32>(x_2730.x, x_2730.y, x_2732);
        let x_2739 : vec3<f32> = txVec45;
        let x_2741 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2739.xy, x_2739.z);
        u_xlat86 = x_2741;
        let x_2743 : f32 = u_xlat18.z;
        let x_2744 : f32 = u_xlat86;
        let x_2747 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2743 * x_2744) + x_2747);
        let x_2751 : vec4<f32> = u_xlat15;
        let x_2752 : vec2<f32> = vec2<f32>(x_2751.x, x_2751.y);
        let x_2754 : f32 = vs_INTERP3.z;
        txVec46 = vec3<f32>(x_2752.x, x_2752.y, x_2754);
        let x_2761 : vec3<f32> = txVec46;
        let x_2763 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2761.xy, x_2761.z);
        u_xlat86 = x_2763;
        let x_2765 : f32 = u_xlat18.w;
        let x_2766 : f32 = u_xlat86;
        let x_2769 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2765 * x_2766) + x_2769);
        let x_2773 : vec4<f32> = u_xlat14;
        let x_2774 : vec2<f32> = vec2<f32>(x_2773.x, x_2773.y);
        let x_2776 : f32 = vs_INTERP3.z;
        txVec47 = vec3<f32>(x_2774.x, x_2774.y, x_2776);
        let x_2783 : vec3<f32> = txVec47;
        let x_2785 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2783.xy, x_2783.z);
        u_xlat86 = x_2785;
        let x_2787 : f32 = u_xlat19.x;
        let x_2788 : f32 = u_xlat86;
        let x_2791 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2787 * x_2788) + x_2791);
        let x_2795 : vec4<f32> = u_xlat14;
        let x_2796 : vec2<f32> = vec2<f32>(x_2795.z, x_2795.w);
        let x_2798 : f32 = vs_INTERP3.z;
        txVec48 = vec3<f32>(x_2796.x, x_2796.y, x_2798);
        let x_2805 : vec3<f32> = txVec48;
        let x_2807 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2805.xy, x_2805.z);
        u_xlat86 = x_2807;
        let x_2809 : f32 = u_xlat19.y;
        let x_2810 : f32 = u_xlat86;
        let x_2813 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2809 * x_2810) + x_2813);
        let x_2817 : vec2<f32> = u_xlat65;
        let x_2819 : f32 = vs_INTERP3.z;
        txVec49 = vec3<f32>(x_2817.x, x_2817.y, x_2819);
        let x_2826 : vec3<f32> = txVec49;
        let x_2828 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2826.xy, x_2826.z);
        u_xlat86 = x_2828;
        let x_2830 : f32 = u_xlat19.z;
        let x_2831 : f32 = u_xlat86;
        let x_2834 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2830 * x_2831) + x_2834);
        let x_2838 : vec4<f32> = u_xlat15;
        let x_2839 : vec2<f32> = vec2<f32>(x_2838.z, x_2838.w);
        let x_2841 : f32 = vs_INTERP3.z;
        txVec50 = vec3<f32>(x_2839.x, x_2839.y, x_2841);
        let x_2848 : vec3<f32> = txVec50;
        let x_2850 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2848.xy, x_2848.z);
        u_xlat86 = x_2850;
        let x_2852 : f32 = u_xlat19.w;
        let x_2853 : f32 = u_xlat86;
        let x_2856 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2852 * x_2853) + x_2856);
        let x_2860 : vec4<f32> = u_xlat16;
        let x_2861 : vec2<f32> = vec2<f32>(x_2860.x, x_2860.y);
        let x_2863 : f32 = vs_INTERP3.z;
        txVec51 = vec3<f32>(x_2861.x, x_2861.y, x_2863);
        let x_2870 : vec3<f32> = txVec51;
        let x_2872 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2870.xy, x_2870.z);
        u_xlat86 = x_2872;
        let x_2874 : f32 = u_xlat20.x;
        let x_2875 : f32 = u_xlat86;
        let x_2878 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2874 * x_2875) + x_2878);
        let x_2882 : vec4<f32> = u_xlat16;
        let x_2883 : vec2<f32> = vec2<f32>(x_2882.z, x_2882.w);
        let x_2885 : f32 = vs_INTERP3.z;
        txVec52 = vec3<f32>(x_2883.x, x_2883.y, x_2885);
        let x_2892 : vec3<f32> = txVec52;
        let x_2894 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2892.xy, x_2892.z);
        u_xlat86 = x_2894;
        let x_2896 : f32 = u_xlat20.y;
        let x_2897 : f32 = u_xlat86;
        let x_2900 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2896 * x_2897) + x_2900);
        let x_2904 : vec2<f32> = u_xlat34;
        let x_2906 : f32 = vs_INTERP3.z;
        txVec53 = vec3<f32>(x_2904.x, x_2904.y, x_2906);
        let x_2913 : vec3<f32> = txVec53;
        let x_2915 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2913.xy, x_2913.z);
        u_xlat34.x = x_2915;
        let x_2918 : f32 = u_xlat20.z;
        let x_2920 : f32 = u_xlat34.x;
        let x_2923 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2918 * x_2920) + x_2923);
        let x_2927 : vec4<f32> = u_xlat17;
        let x_2928 : vec2<f32> = vec2<f32>(x_2927.x, x_2927.y);
        let x_2930 : f32 = vs_INTERP3.z;
        txVec54 = vec3<f32>(x_2928.x, x_2928.y, x_2930);
        let x_2937 : vec3<f32> = txVec54;
        let x_2939 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2937.xy, x_2937.z);
        u_xlat34.x = x_2939;
        let x_2942 : f32 = u_xlat20.w;
        let x_2944 : f32 = u_xlat34.x;
        let x_2947 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_2942 * x_2944) + x_2947);
        let x_2951 : vec4<f32> = u_xlat11;
        let x_2952 : vec2<f32> = vec2<f32>(x_2951.x, x_2951.y);
        let x_2954 : f32 = vs_INTERP3.z;
        txVec55 = vec3<f32>(x_2952.x, x_2952.y, x_2954);
        let x_2961 : vec3<f32> = txVec55;
        let x_2963 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2961.xy, x_2961.z);
        u_xlat34.x = x_2963;
        let x_2966 : f32 = u_xlat7.x;
        let x_2968 : f32 = u_xlat34.x;
        let x_2971 : f32 = u_xlat8.x;
        u_xlat7.x = ((x_2966 * x_2968) + x_2971);
        let x_2975 : vec4<f32> = u_xlat11;
        let x_2976 : vec2<f32> = vec2<f32>(x_2975.z, x_2975.w);
        let x_2978 : f32 = vs_INTERP3.z;
        txVec56 = vec3<f32>(x_2976.x, x_2976.y, x_2978);
        let x_2985 : vec3<f32> = txVec56;
        let x_2987 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2985.xy, x_2985.z);
        u_xlat8.x = x_2987;
        let x_2990 : f32 = u_xlat7.y;
        let x_2992 : f32 = u_xlat8.x;
        let x_2995 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_2990 * x_2992) + x_2995);
        let x_2999 : vec2<f32> = u_xlat62;
        let x_3001 : f32 = vs_INTERP3.z;
        txVec57 = vec3<f32>(x_2999.x, x_2999.y, x_3001);
        let x_3008 : vec3<f32> = txVec57;
        let x_3010 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3008.xy, x_3008.z);
        u_xlat33.x = x_3010;
        let x_3013 : f32 = u_xlat7.z;
        let x_3015 : f32 = u_xlat33.x;
        let x_3018 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_3013 * x_3015) + x_3018);
        let x_3022 : vec2<f32> = u_xlat58;
        let x_3024 : f32 = vs_INTERP3.z;
        txVec58 = vec3<f32>(x_3022.x, x_3022.y, x_3024);
        let x_3031 : vec3<f32> = txVec58;
        let x_3033 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3031.xy, x_3031.z);
        u_xlat58.x = x_3033;
        let x_3036 : f32 = u_xlat7.w;
        let x_3038 : f32 = u_xlat58.x;
        let x_3041 : f32 = u_xlat7.x;
        u_xlat78 = ((x_3036 * x_3038) + x_3041);
      }
    }
  } else {
    let x_3045 : vec4<f32> = vs_INTERP3;
    let x_3046 : vec2<f32> = vec2<f32>(x_3045.x, x_3045.y);
    let x_3048 : f32 = vs_INTERP3.z;
    txVec59 = vec3<f32>(x_3046.x, x_3046.y, x_3048);
    let x_3055 : vec3<f32> = txVec59;
    let x_3057 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3055.xy, x_3055.z);
    u_xlat78 = x_3057;
  }
  let x_3058 : f32 = u_xlat78;
  let x_3060 : f32 = x_131.x_MainLightShadowParams.x;
  let x_3063 : f32 = u_xlat4.x;
  u_xlat78 = ((x_3058 * x_3060) + x_3063);
  let x_3067 : f32 = vs_INTERP3.z;
  u_xlatb4 = (0.0f >= x_3067);
  let x_3070 : f32 = vs_INTERP3.z;
  u_xlatb58.x = (x_3070 >= 1.0f);
  let x_3073 : bool = u_xlatb4;
  let x_3075 : bool = u_xlatb58.x;
  u_xlatb4 = (x_3073 | x_3075);
  let x_3077 : bool = u_xlatb4;
  let x_3078 : f32 = u_xlat78;
  u_xlat78 = select(x_3078, 1.0f, x_3077);
  let x_3080 : vec3<f32> = vs_INTERP8;
  let x_3082 : vec3<f32> = x_53.x_WorldSpaceCameraPos;
  let x_3084 : vec3<f32> = (x_3080 + -(x_3082));
  let x_3085 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3084.x, x_3084.y, x_3084.z, x_3085.w);
  let x_3087 : vec4<f32> = u_xlat7;
  let x_3089 : vec4<f32> = u_xlat7;
  u_xlat4.x = dot(vec3<f32>(x_3087.x, x_3087.y, x_3087.z), vec3<f32>(x_3089.x, x_3089.y, x_3089.z));
  let x_3094 : f32 = u_xlat4.x;
  let x_3096 : f32 = x_131.x_MainLightShadowParams.z;
  let x_3099 : f32 = x_131.x_MainLightShadowParams.w;
  u_xlat58.x = ((x_3094 * x_3096) + x_3099);
  let x_3103 : f32 = u_xlat58.x;
  u_xlat58.x = clamp(x_3103, 0.0f, 1.0f);
  let x_3106 : f32 = u_xlat78;
  u_xlat84 = (-(x_3106) + 1.0f);
  let x_3110 : f32 = u_xlat58.x;
  let x_3111 : f32 = u_xlat84;
  let x_3113 : f32 = u_xlat78;
  u_xlat78 = ((x_3110 * x_3111) + x_3113);
  let x_3122 : f32 = x_3120.x_MainLightCookieTextureFormat;
  u_xlatb58.x = !((x_3122 == -1.0f));
  let x_3126 : bool = u_xlatb58.x;
  if (x_3126) {
    let x_3129 : vec3<f32> = vs_INTERP8;
    let x_3132 : vec4<f32> = x_3120.x_MainLightWorldToLight[1i];
    u_xlat58 = (vec2<f32>(x_3129.y, x_3129.y) * vec2<f32>(x_3132.x, x_3132.y));
    let x_3136 : vec4<f32> = x_3120.x_MainLightWorldToLight[0i];
    let x_3138 : vec3<f32> = vs_INTERP8;
    let x_3141 : vec2<f32> = u_xlat58;
    u_xlat58 = ((vec2<f32>(x_3136.x, x_3136.y) * vec2<f32>(x_3138.x, x_3138.x)) + x_3141);
    let x_3144 : vec4<f32> = x_3120.x_MainLightWorldToLight[2i];
    let x_3146 : vec3<f32> = vs_INTERP8;
    let x_3149 : vec2<f32> = u_xlat58;
    u_xlat58 = ((vec2<f32>(x_3144.x, x_3144.y) * vec2<f32>(x_3146.z, x_3146.z)) + x_3149);
    let x_3151 : vec2<f32> = u_xlat58;
    let x_3153 : vec4<f32> = x_3120.x_MainLightWorldToLight[3i];
    u_xlat58 = (x_3151 + vec2<f32>(x_3153.x, x_3153.y));
    let x_3156 : vec2<f32> = u_xlat58;
    u_xlat58 = ((x_3156 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_3164 : vec2<f32> = u_xlat58;
    let x_3166 : f32 = x_53.x_GlobalMipBias.x;
    let x_3167 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_3164, x_3166);
    u_xlat7 = x_3167;
    let x_3169 : f32 = x_3120.x_MainLightCookieTextureFormat;
    let x_3171 : f32 = x_3120.x_MainLightCookieTextureFormat;
    let x_3173 : f32 = x_3120.x_MainLightCookieTextureFormat;
    let x_3175 : f32 = x_3120.x_MainLightCookieTextureFormat;
    let x_3176 : vec4<f32> = vec4<f32>(x_3169, x_3171, x_3173, x_3175);
    let x_3184 : vec4<bool> = (vec4<f32>(x_3176.x, x_3176.y, x_3176.z, x_3176.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb58 = vec2<bool>(x_3184.x, x_3184.y);
    let x_3187 : bool = u_xlatb58.y;
    if (x_3187) {
      let x_3192 : f32 = u_xlat7.w;
      x_3188 = x_3192;
    } else {
      let x_3195 : f32 = u_xlat7.x;
      x_3188 = x_3195;
    }
    let x_3196 : f32 = x_3188;
    u_xlat84 = x_3196;
    let x_3198 : bool = u_xlatb58.x;
    if (x_3198) {
      let x_3202 : vec4<f32> = u_xlat7;
      x_3199 = vec3<f32>(x_3202.x, x_3202.y, x_3202.z);
    } else {
      let x_3205 : f32 = u_xlat84;
      x_3199 = vec3<f32>(x_3205, x_3205, x_3205);
    }
    let x_3207 : vec3<f32> = x_3199;
    let x_3208 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3207.x, x_3207.y, x_3207.z, x_3208.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_3214 : vec4<f32> = u_xlat7;
  let x_3217 : vec4<f32> = x_53.x_MainLightColor;
  let x_3219 : vec3<f32> = (vec3<f32>(x_3214.x, x_3214.y, x_3214.z) * vec3<f32>(x_3217.x, x_3217.y, x_3217.z));
  let x_3220 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3219.x, x_3219.y, x_3219.z, x_3220.w);
  let x_3222 : vec3<f32> = u_xlat30;
  let x_3224 : vec3<f32> = u_xlat29;
  u_xlat58.x = dot(-(x_3222), x_3224);
  let x_3228 : f32 = u_xlat58.x;
  let x_3230 : f32 = u_xlat58.x;
  u_xlat58.x = (x_3228 + x_3230);
  let x_3233 : vec3<f32> = u_xlat29;
  let x_3234 : vec2<f32> = u_xlat58;
  let x_3238 : vec3<f32> = u_xlat30;
  let x_3240 : vec3<f32> = ((x_3233 * -(vec3<f32>(x_3234.x, x_3234.x, x_3234.x))) + -(x_3238));
  let x_3241 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3240.x, x_3240.y, x_3240.z, x_3241.w);
  let x_3243 : vec3<f32> = u_xlat29;
  let x_3244 : vec3<f32> = u_xlat30;
  u_xlat58.x = dot(x_3243, x_3244);
  let x_3248 : f32 = u_xlat58.x;
  u_xlat58.x = clamp(x_3248, 0.0f, 1.0f);
  let x_3252 : f32 = u_xlat58.x;
  u_xlat58.x = (-(x_3252) + 1.0f);
  let x_3257 : f32 = u_xlat58.x;
  let x_3259 : f32 = u_xlat58.x;
  u_xlat58.x = (x_3257 * x_3259);
  let x_3263 : f32 = u_xlat58.x;
  let x_3265 : f32 = u_xlat58.x;
  u_xlat58.x = (x_3263 * x_3265);
  let x_3268 : f32 = u_xlat79;
  u_xlat84 = ((-(x_3268) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_3274 : f32 = u_xlat79;
  let x_3275 : f32 = u_xlat84;
  u_xlat79 = (x_3274 * x_3275);
  let x_3277 : f32 = u_xlat79;
  u_xlat79 = (x_3277 * 6.0f);
  let x_3288 : vec4<f32> = u_xlat8;
  let x_3290 : f32 = u_xlat79;
  let x_3291 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_3288.x, x_3288.y, x_3288.z), x_3290);
  u_xlat8 = x_3291;
  let x_3293 : f32 = u_xlat8.w;
  u_xlat79 = (x_3293 + -1.0f);
  let x_3296 : f32 = x_1585.unity_SpecCube0_HDR.w;
  let x_3297 : f32 = u_xlat79;
  u_xlat79 = ((x_3296 * x_3297) + 1.0f);
  let x_3300 : f32 = u_xlat79;
  u_xlat79 = max(x_3300, 0.0f);
  let x_3302 : f32 = u_xlat79;
  u_xlat79 = log2(x_3302);
  let x_3304 : f32 = u_xlat79;
  let x_3306 : f32 = x_1585.unity_SpecCube0_HDR.y;
  u_xlat79 = (x_3304 * x_3306);
  let x_3308 : f32 = u_xlat79;
  u_xlat79 = exp2(x_3308);
  let x_3310 : f32 = u_xlat79;
  let x_3312 : f32 = x_1585.unity_SpecCube0_HDR.x;
  u_xlat79 = (x_3310 * x_3312);
  let x_3314 : vec4<f32> = u_xlat8;
  let x_3316 : f32 = u_xlat79;
  let x_3318 : vec3<f32> = (vec3<f32>(x_3314.x, x_3314.y, x_3314.z) * vec3<f32>(x_3316, x_3316, x_3316));
  let x_3319 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3318.x, x_3318.y, x_3318.z, x_3319.w);
  let x_3321 : f32 = u_xlat80;
  let x_3323 : f32 = u_xlat80;
  let x_3327 : vec2<f32> = ((vec2<f32>(x_3321, x_3321) * vec2<f32>(x_3323, x_3323)) + vec2<f32>(-1.0f, 1.0f));
  let x_3328 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_3327.x, x_3327.y, x_3328.z, x_3328.w);
  let x_3331 : f32 = u_xlat9.y;
  u_xlat79 = (1.0f / x_3331);
  let x_3334 : f32 = u_xlat3.x;
  u_xlat80 = (x_3334 + -0.03999999910593032837f);
  let x_3338 : f32 = u_xlat58.x;
  let x_3339 : f32 = u_xlat80;
  u_xlat80 = ((x_3338 * x_3339) + 0.03999999910593032837f);
  let x_3343 : f32 = u_xlat79;
  let x_3344 : f32 = u_xlat80;
  u_xlat79 = (x_3343 * x_3344);
  let x_3346 : f32 = u_xlat79;
  let x_3348 : vec4<f32> = u_xlat8;
  let x_3350 : vec3<f32> = (vec3<f32>(x_3346, x_3346, x_3346) * vec3<f32>(x_3348.x, x_3348.y, x_3348.z));
  let x_3351 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3350.x, x_3350.y, x_3350.z, x_3351.w);
  let x_3353 : vec4<f32> = u_xlat5;
  let x_3355 : vec3<f32> = u_xlat2;
  let x_3357 : vec4<f32> = u_xlat8;
  let x_3359 : vec3<f32> = ((vec3<f32>(x_3353.x, x_3353.y, x_3353.z) * x_3355) + vec3<f32>(x_3357.x, x_3357.y, x_3357.z));
  let x_3360 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_3359.x, x_3359.y, x_3359.z, x_3360.w);
  let x_3362 : f32 = u_xlat78;
  let x_3364 : f32 = x_1585.unity_LightData.z;
  u_xlat78 = (x_3362 * x_3364);
  let x_3366 : vec3<f32> = u_xlat29;
  let x_3368 : vec4<f32> = x_53.x_MainLightPosition;
  u_xlat79 = dot(x_3366, vec3<f32>(x_3368.x, x_3368.y, x_3368.z));
  let x_3371 : f32 = u_xlat79;
  u_xlat79 = clamp(x_3371, 0.0f, 1.0f);
  let x_3373 : f32 = u_xlat78;
  let x_3374 : f32 = u_xlat79;
  u_xlat78 = (x_3373 * x_3374);
  let x_3376 : f32 = u_xlat78;
  let x_3378 : vec4<f32> = u_xlat7;
  let x_3380 : vec3<f32> = (vec3<f32>(x_3376, x_3376, x_3376) * vec3<f32>(x_3378.x, x_3378.y, x_3378.z));
  let x_3381 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3380.x, x_3380.y, x_3380.z, x_3381.w);
  let x_3383 : vec3<f32> = u_xlat30;
  let x_3385 : vec4<f32> = x_53.x_MainLightPosition;
  let x_3387 : vec3<f32> = (x_3383 + vec3<f32>(x_3385.x, x_3385.y, x_3385.z));
  let x_3388 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3387.x, x_3387.y, x_3387.z, x_3388.w);
  let x_3390 : vec4<f32> = u_xlat8;
  let x_3392 : vec4<f32> = u_xlat8;
  u_xlat78 = dot(vec3<f32>(x_3390.x, x_3390.y, x_3390.z), vec3<f32>(x_3392.x, x_3392.y, x_3392.z));
  let x_3395 : f32 = u_xlat78;
  u_xlat78 = max(x_3395, 1.17549435e-38f);
  let x_3398 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_3398);
  let x_3400 : f32 = u_xlat78;
  let x_3402 : vec4<f32> = u_xlat8;
  let x_3404 : vec3<f32> = (vec3<f32>(x_3400, x_3400, x_3400) * vec3<f32>(x_3402.x, x_3402.y, x_3402.z));
  let x_3405 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3404.x, x_3404.y, x_3404.z, x_3405.w);
  let x_3407 : vec3<f32> = u_xlat29;
  let x_3408 : vec4<f32> = u_xlat8;
  u_xlat78 = dot(x_3407, vec3<f32>(x_3408.x, x_3408.y, x_3408.z));
  let x_3411 : f32 = u_xlat78;
  u_xlat78 = clamp(x_3411, 0.0f, 1.0f);
  let x_3414 : vec4<f32> = x_53.x_MainLightPosition;
  let x_3416 : vec4<f32> = u_xlat8;
  u_xlat79 = dot(vec3<f32>(x_3414.x, x_3414.y, x_3414.z), vec3<f32>(x_3416.x, x_3416.y, x_3416.z));
  let x_3419 : f32 = u_xlat79;
  u_xlat79 = clamp(x_3419, 0.0f, 1.0f);
  let x_3421 : f32 = u_xlat78;
  let x_3422 : f32 = u_xlat78;
  u_xlat78 = (x_3421 * x_3422);
  let x_3424 : f32 = u_xlat78;
  let x_3426 : f32 = u_xlat9.x;
  u_xlat78 = ((x_3424 * x_3426) + 1.00001001358032226562f);
  let x_3430 : f32 = u_xlat79;
  let x_3431 : f32 = u_xlat79;
  u_xlat79 = (x_3430 * x_3431);
  let x_3433 : f32 = u_xlat78;
  let x_3434 : f32 = u_xlat78;
  u_xlat78 = (x_3433 * x_3434);
  let x_3436 : f32 = u_xlat79;
  u_xlat79 = max(x_3436, 0.10000000149011611938f);
  let x_3439 : f32 = u_xlat78;
  let x_3440 : f32 = u_xlat79;
  u_xlat78 = (x_3439 * x_3440);
  let x_3443 : f32 = u_xlat6.x;
  let x_3444 : f32 = u_xlat78;
  u_xlat78 = (x_3443 * x_3444);
  let x_3446 : f32 = u_xlat83;
  let x_3447 : f32 = u_xlat78;
  u_xlat78 = (x_3446 / x_3447);
  let x_3449 : f32 = u_xlat78;
  let x_3453 : vec3<f32> = u_xlat2;
  let x_3454 : vec3<f32> = ((vec3<f32>(x_3449, x_3449, x_3449) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_3453);
  let x_3455 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_3454.x, x_3454.y, x_3454.z, x_3455.w);
  let x_3457 : vec4<f32> = u_xlat7;
  let x_3459 : vec4<f32> = u_xlat8;
  let x_3461 : vec3<f32> = (vec3<f32>(x_3457.x, x_3457.y, x_3457.z) * vec3<f32>(x_3459.x, x_3459.y, x_3459.z));
  let x_3462 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3461.x, x_3461.y, x_3461.z, x_3462.w);
  let x_3466 : f32 = x_53.x_AdditionalLightsCount.x;
  let x_3468 : f32 = x_1585.unity_LightData.y;
  u_xlat78 = min(x_3466, x_3468);
  let x_3472 : f32 = u_xlat78;
  u_xlatu78 = bitcast<u32>(i32(x_3472));
  let x_3476 : f32 = u_xlat4.x;
  let x_3479 : f32 = x_131.x_AdditionalShadowFadeParams.x;
  let x_3482 : f32 = x_131.x_AdditionalShadowFadeParams.y;
  u_xlat79 = ((x_3476 * x_3479) + x_3482);
  let x_3484 : f32 = u_xlat79;
  u_xlat79 = clamp(x_3484, 0.0f, 1.0f);
  let x_3487 : f32 = x_3120.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3489 : f32 = x_3120.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3491 : f32 = x_3120.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3493 : f32 = x_3120.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3494 : vec4<f32> = vec4<f32>(x_3487, x_3489, x_3491, x_3493);
  let x_3500 : vec4<bool> = (vec4<f32>(x_3494.x, x_3494.y, x_3494.z, x_3494.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
  u_xlatb58 = vec2<bool>(x_3500.x, x_3500.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_3512 : u32 = u_xlatu_loop_1;
    let x_3513 : u32 = u_xlatu78;
    if ((x_3512 < x_3513)) {
    } else {
      break;
    }
    let x_3516 : u32 = u_xlatu_loop_1;
    u_xlatu3 = (x_3516 >> 2u);
    let x_3520 : u32 = u_xlatu_loop_1;
    u_xlati4 = bitcast<i32>((x_3520 & 3u));
    let x_3523 : u32 = u_xlatu3;
    let x_3526 : vec4<f32> = x_1585.unity_LightIndices[bitcast<i32>(x_3523)];
    let x_3536 : i32 = u_xlati4;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_3541 : vec4<u32> = indexable[x_3536];
    u_xlat3.x = dot(x_3526, bitcast<vec4<f32>>(x_3541));
    let x_3547 : f32 = u_xlat3.x;
    u_xlati3 = i32(x_3547);
    let x_3550 : vec3<f32> = vs_INTERP8;
    let x_3561 : i32 = u_xlati3;
    let x_3563 : vec4<f32> = x_3560.x_AdditionalLightsPosition[x_3561];
    let x_3566 : i32 = u_xlati3;
    let x_3568 : vec4<f32> = x_3560.x_AdditionalLightsPosition[x_3566];
    u_xlat35 = ((-(x_3550) * vec3<f32>(x_3563.w, x_3563.w, x_3563.w)) + vec3<f32>(x_3568.x, x_3568.y, x_3568.z));
    let x_3571 : vec3<f32> = u_xlat35;
    let x_3572 : vec3<f32> = u_xlat35;
    u_xlat4.x = dot(x_3571, x_3572);
    let x_3576 : f32 = u_xlat4.x;
    u_xlat4.x = max(x_3576, 0.00006103515625f);
    let x_3582 : f32 = u_xlat4.x;
    u_xlat85 = inverseSqrt(x_3582);
    let x_3584 : f32 = u_xlat85;
    let x_3586 : vec3<f32> = u_xlat35;
    let x_3587 : vec3<f32> = (vec3<f32>(x_3584, x_3584, x_3584) * x_3586);
    let x_3588 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3587.x, x_3587.y, x_3587.z, x_3588.w);
    let x_3591 : f32 = u_xlat4.x;
    u_xlat86 = (1.0f / x_3591);
    let x_3594 : f32 = u_xlat4.x;
    let x_3595 : i32 = u_xlati3;
    let x_3597 : f32 = x_3560.x_AdditionalLightsAttenuation[x_3595].x;
    u_xlat4.x = (x_3594 * x_3597);
    let x_3601 : f32 = u_xlat4.x;
    let x_3604 : f32 = u_xlat4.x;
    u_xlat4.x = ((-(x_3601) * x_3604) + 1.0f);
    let x_3609 : f32 = u_xlat4.x;
    u_xlat4.x = max(x_3609, 0.0f);
    let x_3613 : f32 = u_xlat4.x;
    let x_3615 : f32 = u_xlat4.x;
    u_xlat4.x = (x_3613 * x_3615);
    let x_3619 : f32 = u_xlat4.x;
    let x_3620 : f32 = u_xlat86;
    u_xlat4.x = (x_3619 * x_3620);
    let x_3623 : i32 = u_xlati3;
    let x_3625 : vec4<f32> = x_3560.x_AdditionalLightsSpotDir[x_3623];
    let x_3627 : vec4<f32> = u_xlat10;
    u_xlat86 = dot(vec3<f32>(x_3625.x, x_3625.y, x_3625.z), vec3<f32>(x_3627.x, x_3627.y, x_3627.z));
    let x_3630 : f32 = u_xlat86;
    let x_3631 : i32 = u_xlati3;
    let x_3633 : f32 = x_3560.x_AdditionalLightsAttenuation[x_3631].z;
    let x_3635 : i32 = u_xlati3;
    let x_3637 : f32 = x_3560.x_AdditionalLightsAttenuation[x_3635].w;
    u_xlat86 = ((x_3630 * x_3633) + x_3637);
    let x_3639 : f32 = u_xlat86;
    u_xlat86 = clamp(x_3639, 0.0f, 1.0f);
    let x_3641 : f32 = u_xlat86;
    let x_3642 : f32 = u_xlat86;
    u_xlat86 = (x_3641 * x_3642);
    let x_3645 : f32 = u_xlat4.x;
    let x_3646 : f32 = u_xlat86;
    u_xlat4.x = (x_3645 * x_3646);
    let x_3651 : i32 = u_xlati3;
    let x_3653 : f32 = x_131.x_AdditionalShadowParams[x_3651].w;
    u_xlati86 = i32(x_3653);
    let x_3656 : i32 = u_xlati86;
    u_xlatb88 = (x_3656 >= 0i);
    let x_3658 : bool = u_xlatb88;
    if (x_3658) {
      let x_3662 : i32 = u_xlati3;
      let x_3664 : f32 = x_131.x_AdditionalShadowParams[x_3662].z;
      u_xlatb88 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_3664, x_3664, x_3664, x_3664))));
      let x_3668 : bool = u_xlatb88;
      if (x_3668) {
        let x_3673 : vec4<f32> = u_xlat10;
        let x_3676 : vec4<f32> = u_xlat10;
        let x_3679 : vec4<bool> = (abs(vec4<f32>(x_3673.z, x_3673.z, x_3673.y, x_3673.z)) >= abs(vec4<f32>(x_3676.x, x_3676.y, x_3676.x, x_3676.x)));
        let x_3680 : vec3<bool> = vec3<bool>(x_3679.x, x_3679.y, x_3679.z);
        let x_3681 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3680.x, x_3680.y, x_3680.z, x_3681.w);
        let x_3684 : bool = u_xlatb11.y;
        let x_3686 : bool = u_xlatb11.x;
        u_xlatb88 = (x_3684 & x_3686);
        let x_3688 : vec4<f32> = u_xlat10;
        let x_3691 : vec4<bool> = (-(vec4<f32>(x_3688.z, x_3688.y, x_3688.z, x_3688.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_3692 : vec3<bool> = vec3<bool>(x_3691.x, x_3691.y, x_3691.w);
        let x_3693 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3692.x, x_3692.y, x_3693.z, x_3692.z);
        let x_3696 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_3696);
        let x_3701 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_3701);
        let x_3707 : bool = u_xlatb11.w;
        u_xlat89 = select(0.0f, 1.0f, x_3707);
        let x_3711 : bool = u_xlatb11.z;
        if (x_3711) {
          let x_3716 : f32 = u_xlat11.y;
          x_3712 = x_3716;
        } else {
          let x_3718 : f32 = u_xlat89;
          x_3712 = x_3718;
        }
        let x_3719 : f32 = x_3712;
        u_xlat37.x = x_3719;
        let x_3722 : bool = u_xlatb88;
        if (x_3722) {
          let x_3727 : f32 = u_xlat11.x;
          x_3723 = x_3727;
        } else {
          let x_3730 : f32 = u_xlat37.x;
          x_3723 = x_3730;
        }
        let x_3731 : f32 = x_3723;
        u_xlat88 = x_3731;
        let x_3732 : i32 = u_xlati3;
        let x_3734 : f32 = x_131.x_AdditionalShadowParams[x_3732].w;
        u_xlat11.x = trunc(x_3734);
        let x_3737 : f32 = u_xlat88;
        let x_3739 : f32 = u_xlat11.x;
        u_xlat88 = (x_3737 + x_3739);
        let x_3741 : f32 = u_xlat88;
        u_xlati86 = i32(x_3741);
      }
      let x_3743 : i32 = u_xlati86;
      u_xlati86 = (x_3743 << bitcast<u32>(2i));
      let x_3745 : vec3<f32> = vs_INTERP8;
      let x_3748 : i32 = u_xlati86;
      let x_3751 : i32 = u_xlati86;
      let x_3755 : vec4<f32> = x_131.x_AdditionalLightsWorldToShadow[((x_3748 + 1i) / 4i)][((x_3751 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_3745.y, x_3745.y, x_3745.y, x_3745.y) * x_3755);
      let x_3757 : i32 = u_xlati86;
      let x_3759 : i32 = u_xlati86;
      let x_3762 : vec4<f32> = x_131.x_AdditionalLightsWorldToShadow[(x_3757 / 4i)][(x_3759 % 4i)];
      let x_3763 : vec3<f32> = vs_INTERP8;
      let x_3766 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3762 * vec4<f32>(x_3763.x, x_3763.x, x_3763.x, x_3763.x)) + x_3766);
      let x_3768 : i32 = u_xlati86;
      let x_3771 : i32 = u_xlati86;
      let x_3775 : vec4<f32> = x_131.x_AdditionalLightsWorldToShadow[((x_3768 + 2i) / 4i)][((x_3771 + 2i) % 4i)];
      let x_3776 : vec3<f32> = vs_INTERP8;
      let x_3779 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3775 * vec4<f32>(x_3776.z, x_3776.z, x_3776.z, x_3776.z)) + x_3779);
      let x_3781 : vec4<f32> = u_xlat11;
      let x_3782 : i32 = u_xlati86;
      let x_3785 : i32 = u_xlati86;
      let x_3789 : vec4<f32> = x_131.x_AdditionalLightsWorldToShadow[((x_3782 + 3i) / 4i)][((x_3785 + 3i) % 4i)];
      u_xlat11 = (x_3781 + x_3789);
      let x_3791 : vec4<f32> = u_xlat11;
      let x_3793 : vec4<f32> = u_xlat11;
      let x_3795 : vec3<f32> = (vec3<f32>(x_3791.x, x_3791.y, x_3791.z) / vec3<f32>(x_3793.w, x_3793.w, x_3793.w));
      let x_3796 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3795.x, x_3795.y, x_3795.z, x_3796.w);
      let x_3799 : i32 = u_xlati3;
      let x_3801 : f32 = x_131.x_AdditionalShadowParams[x_3799].y;
      u_xlatb86 = (0.0f < x_3801);
      let x_3803 : bool = u_xlatb86;
      if (x_3803) {
        let x_3806 : i32 = u_xlati3;
        let x_3808 : f32 = x_131.x_AdditionalShadowParams[x_3806].y;
        u_xlatb86 = (1.0f == x_3808);
        let x_3810 : bool = u_xlatb86;
        if (x_3810) {
          let x_3813 : vec4<f32> = u_xlat11;
          let x_3816 : vec4<f32> = x_131.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_3813.x, x_3813.y, x_3813.x, x_3813.y) + x_3816);
          let x_3819 : vec4<f32> = u_xlat12;
          let x_3820 : vec2<f32> = vec2<f32>(x_3819.x, x_3819.y);
          let x_3822 : f32 = u_xlat11.z;
          txVec60 = vec3<f32>(x_3820.x, x_3820.y, x_3822);
          let x_3830 : vec3<f32> = txVec60;
          let x_3832 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3830.xy, x_3830.z);
          u_xlat13.x = x_3832;
          let x_3835 : vec4<f32> = u_xlat12;
          let x_3836 : vec2<f32> = vec2<f32>(x_3835.z, x_3835.w);
          let x_3838 : f32 = u_xlat11.z;
          txVec61 = vec3<f32>(x_3836.x, x_3836.y, x_3838);
          let x_3845 : vec3<f32> = txVec61;
          let x_3847 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3845.xy, x_3845.z);
          u_xlat13.y = x_3847;
          let x_3849 : vec4<f32> = u_xlat11;
          let x_3853 : vec4<f32> = x_131.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_3849.x, x_3849.y, x_3849.x, x_3849.y) + x_3853);
          let x_3856 : vec4<f32> = u_xlat12;
          let x_3857 : vec2<f32> = vec2<f32>(x_3856.x, x_3856.y);
          let x_3859 : f32 = u_xlat11.z;
          txVec62 = vec3<f32>(x_3857.x, x_3857.y, x_3859);
          let x_3866 : vec3<f32> = txVec62;
          let x_3868 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3866.xy, x_3866.z);
          u_xlat13.z = x_3868;
          let x_3871 : vec4<f32> = u_xlat12;
          let x_3872 : vec2<f32> = vec2<f32>(x_3871.z, x_3871.w);
          let x_3874 : f32 = u_xlat11.z;
          txVec63 = vec3<f32>(x_3872.x, x_3872.y, x_3874);
          let x_3881 : vec3<f32> = txVec63;
          let x_3883 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3881.xy, x_3881.z);
          u_xlat13.w = x_3883;
          let x_3885 : vec4<f32> = u_xlat13;
          u_xlat86 = dot(x_3885, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_3888 : i32 = u_xlati3;
          let x_3890 : f32 = x_131.x_AdditionalShadowParams[x_3888].y;
          u_xlatb88 = (2.0f == x_3890);
          let x_3892 : bool = u_xlatb88;
          if (x_3892) {
            let x_3895 : vec4<f32> = u_xlat11;
            let x_3899 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_3902 : vec2<f32> = ((vec2<f32>(x_3895.x, x_3895.y) * vec2<f32>(x_3899.z, x_3899.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3903 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3902.x, x_3902.y, x_3903.z, x_3903.w);
            let x_3905 : vec4<f32> = u_xlat12;
            let x_3907 : vec2<f32> = floor(vec2<f32>(x_3905.x, x_3905.y));
            let x_3908 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3907.x, x_3907.y, x_3908.z, x_3908.w);
            let x_3911 : vec4<f32> = u_xlat11;
            let x_3914 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_3917 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3911.x, x_3911.y) * vec2<f32>(x_3914.z, x_3914.w)) + -(vec2<f32>(x_3917.x, x_3917.y)));
            let x_3921 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3921.x, x_3921.x, x_3921.y, x_3921.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3924 : vec4<f32> = u_xlat13;
            let x_3926 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3924.x, x_3924.x, x_3924.z, x_3924.z) * vec4<f32>(x_3926.x, x_3926.x, x_3926.z, x_3926.z));
            let x_3929 : vec4<f32> = u_xlat14;
            let x_3931 : vec2<f32> = (vec2<f32>(x_3929.y, x_3929.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_3932 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3931.x, x_3932.y, x_3931.y, x_3932.w);
            let x_3934 : vec4<f32> = u_xlat14;
            let x_3937 : vec2<f32> = u_xlat64;
            let x_3939 : vec2<f32> = ((vec2<f32>(x_3934.x, x_3934.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3937));
            let x_3940 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3939.x, x_3939.y, x_3940.z, x_3940.w);
            let x_3943 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_3943) + vec2<f32>(1.0f, 1.0f));
            let x_3946 : vec2<f32> = u_xlat64;
            let x_3947 : vec2<f32> = min(x_3946, vec2<f32>(0.0f, 0.0f));
            let x_3948 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3947.x, x_3947.y, x_3948.z, x_3948.w);
            let x_3950 : vec4<f32> = u_xlat15;
            let x_3953 : vec4<f32> = u_xlat15;
            let x_3956 : vec2<f32> = u_xlat66;
            let x_3957 : vec2<f32> = ((-(vec2<f32>(x_3950.x, x_3950.y)) * vec2<f32>(x_3953.x, x_3953.y)) + x_3956);
            let x_3958 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3957.x, x_3957.y, x_3958.z, x_3958.w);
            let x_3960 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_3960, vec2<f32>(0.0f, 0.0f));
            let x_3962 : vec2<f32> = u_xlat64;
            let x_3964 : vec2<f32> = u_xlat64;
            let x_3966 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_3962) * x_3964) + vec2<f32>(x_3966.y, x_3966.w));
            let x_3969 : vec4<f32> = u_xlat15;
            let x_3971 : vec2<f32> = (vec2<f32>(x_3969.x, x_3969.y) + vec2<f32>(1.0f, 1.0f));
            let x_3972 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3971.x, x_3971.y, x_3972.z, x_3972.w);
            let x_3974 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_3974 + vec2<f32>(1.0f, 1.0f));
            let x_3976 : vec4<f32> = u_xlat14;
            let x_3978 : vec2<f32> = (vec2<f32>(x_3976.x, x_3976.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3979 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3978.x, x_3978.y, x_3979.z, x_3979.w);
            let x_3981 : vec2<f32> = u_xlat66;
            let x_3982 : vec2<f32> = (x_3981 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3983 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3982.x, x_3982.y, x_3983.z, x_3983.w);
            let x_3985 : vec4<f32> = u_xlat15;
            let x_3987 : vec2<f32> = (vec2<f32>(x_3985.x, x_3985.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3988 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3987.x, x_3987.y, x_3988.z, x_3988.w);
            let x_3990 : vec2<f32> = u_xlat64;
            let x_3991 : vec2<f32> = (x_3990 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3992 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3991.x, x_3991.y, x_3992.z, x_3992.w);
            let x_3994 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_3994.y, x_3994.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3998 : f32 = u_xlat15.x;
            u_xlat16.z = x_3998;
            let x_4001 : f32 = u_xlat64.x;
            u_xlat16.w = x_4001;
            let x_4004 : f32 = u_xlat17.x;
            u_xlat14.z = x_4004;
            let x_4007 : f32 = u_xlat13.x;
            u_xlat14.w = x_4007;
            let x_4009 : vec4<f32> = u_xlat14;
            let x_4011 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_4009.z, x_4009.w, x_4009.x, x_4009.z) + vec4<f32>(x_4011.z, x_4011.w, x_4011.x, x_4011.z));
            let x_4015 : f32 = u_xlat16.y;
            u_xlat15.z = x_4015;
            let x_4018 : f32 = u_xlat64.y;
            u_xlat15.w = x_4018;
            let x_4021 : f32 = u_xlat14.y;
            u_xlat17.z = x_4021;
            let x_4024 : f32 = u_xlat13.z;
            u_xlat17.w = x_4024;
            let x_4026 : vec4<f32> = u_xlat15;
            let x_4028 : vec4<f32> = u_xlat17;
            let x_4030 : vec3<f32> = (vec3<f32>(x_4026.z, x_4026.y, x_4026.w) + vec3<f32>(x_4028.z, x_4028.y, x_4028.w));
            let x_4031 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4030.x, x_4030.y, x_4030.z, x_4031.w);
            let x_4033 : vec4<f32> = u_xlat14;
            let x_4035 : vec4<f32> = u_xlat18;
            let x_4037 : vec3<f32> = (vec3<f32>(x_4033.x, x_4033.z, x_4033.w) / vec3<f32>(x_4035.z, x_4035.w, x_4035.y));
            let x_4038 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4037.x, x_4037.y, x_4037.z, x_4038.w);
            let x_4040 : vec4<f32> = u_xlat14;
            let x_4042 : vec3<f32> = (vec3<f32>(x_4040.x, x_4040.y, x_4040.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4043 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4042.x, x_4042.y, x_4042.z, x_4043.w);
            let x_4045 : vec4<f32> = u_xlat17;
            let x_4047 : vec4<f32> = u_xlat13;
            let x_4049 : vec3<f32> = (vec3<f32>(x_4045.z, x_4045.y, x_4045.w) / vec3<f32>(x_4047.x, x_4047.y, x_4047.z));
            let x_4050 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4049.x, x_4049.y, x_4049.z, x_4050.w);
            let x_4052 : vec4<f32> = u_xlat15;
            let x_4054 : vec3<f32> = (vec3<f32>(x_4052.x, x_4052.y, x_4052.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4055 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4054.x, x_4054.y, x_4054.z, x_4055.w);
            let x_4057 : vec4<f32> = u_xlat14;
            let x_4060 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4062 : vec3<f32> = (vec3<f32>(x_4057.y, x_4057.x, x_4057.z) * vec3<f32>(x_4060.x, x_4060.x, x_4060.x));
            let x_4063 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4062.x, x_4062.y, x_4062.z, x_4063.w);
            let x_4065 : vec4<f32> = u_xlat15;
            let x_4068 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4070 : vec3<f32> = (vec3<f32>(x_4065.x, x_4065.y, x_4065.z) * vec3<f32>(x_4068.y, x_4068.y, x_4068.y));
            let x_4071 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4070.x, x_4070.y, x_4070.z, x_4071.w);
            let x_4074 : f32 = u_xlat15.x;
            u_xlat14.w = x_4074;
            let x_4076 : vec4<f32> = u_xlat12;
            let x_4079 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4082 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_4076.x, x_4076.y, x_4076.x, x_4076.y) * vec4<f32>(x_4079.x, x_4079.y, x_4079.x, x_4079.y)) + vec4<f32>(x_4082.y, x_4082.w, x_4082.x, x_4082.w));
            let x_4085 : vec4<f32> = u_xlat12;
            let x_4088 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4091 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_4085.x, x_4085.y) * vec2<f32>(x_4088.x, x_4088.y)) + vec2<f32>(x_4091.z, x_4091.w));
            let x_4095 : f32 = u_xlat14.y;
            u_xlat15.w = x_4095;
            let x_4097 : vec4<f32> = u_xlat15;
            let x_4098 : vec2<f32> = vec2<f32>(x_4097.y, x_4097.z);
            let x_4099 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4099.x, x_4098.x, x_4099.z, x_4098.y);
            let x_4101 : vec4<f32> = u_xlat12;
            let x_4104 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4107 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_4101.x, x_4101.y, x_4101.x, x_4101.y) * vec4<f32>(x_4104.x, x_4104.y, x_4104.x, x_4104.y)) + vec4<f32>(x_4107.x, x_4107.y, x_4107.z, x_4107.y));
            let x_4110 : vec4<f32> = u_xlat12;
            let x_4113 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4116 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_4110.x, x_4110.y, x_4110.x, x_4110.y) * vec4<f32>(x_4113.x, x_4113.y, x_4113.x, x_4113.y)) + vec4<f32>(x_4116.w, x_4116.y, x_4116.w, x_4116.z));
            let x_4119 : vec4<f32> = u_xlat12;
            let x_4122 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4125 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_4119.x, x_4119.y, x_4119.x, x_4119.y) * vec4<f32>(x_4122.x, x_4122.y, x_4122.x, x_4122.y)) + vec4<f32>(x_4125.x, x_4125.w, x_4125.z, x_4125.w));
            let x_4128 : vec4<f32> = u_xlat13;
            let x_4130 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_4128.x, x_4128.x, x_4128.x, x_4128.y) * vec4<f32>(x_4130.z, x_4130.w, x_4130.y, x_4130.z));
            let x_4133 : vec4<f32> = u_xlat13;
            let x_4135 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_4133.y, x_4133.y, x_4133.z, x_4133.z) * x_4135);
            let x_4138 : f32 = u_xlat13.z;
            let x_4140 : f32 = u_xlat18.y;
            u_xlat88 = (x_4138 * x_4140);
            let x_4143 : vec4<f32> = u_xlat16;
            let x_4144 : vec2<f32> = vec2<f32>(x_4143.x, x_4143.y);
            let x_4146 : f32 = u_xlat11.z;
            txVec64 = vec3<f32>(x_4144.x, x_4144.y, x_4146);
            let x_4153 : vec3<f32> = txVec64;
            let x_4155 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4153.xy, x_4153.z);
            u_xlat89 = x_4155;
            let x_4157 : vec4<f32> = u_xlat16;
            let x_4158 : vec2<f32> = vec2<f32>(x_4157.z, x_4157.w);
            let x_4160 : f32 = u_xlat11.z;
            txVec65 = vec3<f32>(x_4158.x, x_4158.y, x_4160);
            let x_4167 : vec3<f32> = txVec65;
            let x_4169 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4167.xy, x_4167.z);
            u_xlat12.x = x_4169;
            let x_4172 : f32 = u_xlat12.x;
            let x_4174 : f32 = u_xlat19.y;
            u_xlat12.x = (x_4172 * x_4174);
            let x_4178 : f32 = u_xlat19.x;
            let x_4179 : f32 = u_xlat89;
            let x_4182 : f32 = u_xlat12.x;
            u_xlat89 = ((x_4178 * x_4179) + x_4182);
            let x_4185 : vec2<f32> = u_xlat64;
            let x_4187 : f32 = u_xlat11.z;
            txVec66 = vec3<f32>(x_4185.x, x_4185.y, x_4187);
            let x_4194 : vec3<f32> = txVec66;
            let x_4196 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4194.xy, x_4194.z);
            u_xlat12.x = x_4196;
            let x_4199 : f32 = u_xlat19.z;
            let x_4201 : f32 = u_xlat12.x;
            let x_4203 : f32 = u_xlat89;
            u_xlat89 = ((x_4199 * x_4201) + x_4203);
            let x_4206 : vec4<f32> = u_xlat15;
            let x_4207 : vec2<f32> = vec2<f32>(x_4206.x, x_4206.y);
            let x_4209 : f32 = u_xlat11.z;
            txVec67 = vec3<f32>(x_4207.x, x_4207.y, x_4209);
            let x_4216 : vec3<f32> = txVec67;
            let x_4218 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4216.xy, x_4216.z);
            u_xlat12.x = x_4218;
            let x_4221 : f32 = u_xlat19.w;
            let x_4223 : f32 = u_xlat12.x;
            let x_4225 : f32 = u_xlat89;
            u_xlat89 = ((x_4221 * x_4223) + x_4225);
            let x_4228 : vec4<f32> = u_xlat17;
            let x_4229 : vec2<f32> = vec2<f32>(x_4228.x, x_4228.y);
            let x_4231 : f32 = u_xlat11.z;
            txVec68 = vec3<f32>(x_4229.x, x_4229.y, x_4231);
            let x_4238 : vec3<f32> = txVec68;
            let x_4240 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4238.xy, x_4238.z);
            u_xlat12.x = x_4240;
            let x_4243 : f32 = u_xlat20.x;
            let x_4245 : f32 = u_xlat12.x;
            let x_4247 : f32 = u_xlat89;
            u_xlat89 = ((x_4243 * x_4245) + x_4247);
            let x_4250 : vec4<f32> = u_xlat17;
            let x_4251 : vec2<f32> = vec2<f32>(x_4250.z, x_4250.w);
            let x_4253 : f32 = u_xlat11.z;
            txVec69 = vec3<f32>(x_4251.x, x_4251.y, x_4253);
            let x_4260 : vec3<f32> = txVec69;
            let x_4262 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4260.xy, x_4260.z);
            u_xlat12.x = x_4262;
            let x_4265 : f32 = u_xlat20.y;
            let x_4267 : f32 = u_xlat12.x;
            let x_4269 : f32 = u_xlat89;
            u_xlat89 = ((x_4265 * x_4267) + x_4269);
            let x_4272 : vec4<f32> = u_xlat15;
            let x_4273 : vec2<f32> = vec2<f32>(x_4272.z, x_4272.w);
            let x_4275 : f32 = u_xlat11.z;
            txVec70 = vec3<f32>(x_4273.x, x_4273.y, x_4275);
            let x_4282 : vec3<f32> = txVec70;
            let x_4284 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4282.xy, x_4282.z);
            u_xlat12.x = x_4284;
            let x_4287 : f32 = u_xlat20.z;
            let x_4289 : f32 = u_xlat12.x;
            let x_4291 : f32 = u_xlat89;
            u_xlat89 = ((x_4287 * x_4289) + x_4291);
            let x_4294 : vec4<f32> = u_xlat14;
            let x_4295 : vec2<f32> = vec2<f32>(x_4294.x, x_4294.y);
            let x_4297 : f32 = u_xlat11.z;
            txVec71 = vec3<f32>(x_4295.x, x_4295.y, x_4297);
            let x_4304 : vec3<f32> = txVec71;
            let x_4306 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4304.xy, x_4304.z);
            u_xlat12.x = x_4306;
            let x_4309 : f32 = u_xlat20.w;
            let x_4311 : f32 = u_xlat12.x;
            let x_4313 : f32 = u_xlat89;
            u_xlat89 = ((x_4309 * x_4311) + x_4313);
            let x_4316 : vec4<f32> = u_xlat14;
            let x_4317 : vec2<f32> = vec2<f32>(x_4316.z, x_4316.w);
            let x_4319 : f32 = u_xlat11.z;
            txVec72 = vec3<f32>(x_4317.x, x_4317.y, x_4319);
            let x_4326 : vec3<f32> = txVec72;
            let x_4328 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4326.xy, x_4326.z);
            u_xlat12.x = x_4328;
            let x_4330 : f32 = u_xlat88;
            let x_4332 : f32 = u_xlat12.x;
            let x_4334 : f32 = u_xlat89;
            u_xlat86 = ((x_4330 * x_4332) + x_4334);
          } else {
            let x_4337 : vec4<f32> = u_xlat11;
            let x_4340 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4343 : vec2<f32> = ((vec2<f32>(x_4337.x, x_4337.y) * vec2<f32>(x_4340.z, x_4340.w)) + vec2<f32>(0.5f, 0.5f));
            let x_4344 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4343.x, x_4343.y, x_4344.z, x_4344.w);
            let x_4346 : vec4<f32> = u_xlat12;
            let x_4348 : vec2<f32> = floor(vec2<f32>(x_4346.x, x_4346.y));
            let x_4349 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4348.x, x_4348.y, x_4349.z, x_4349.w);
            let x_4351 : vec4<f32> = u_xlat11;
            let x_4354 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4357 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_4351.x, x_4351.y) * vec2<f32>(x_4354.z, x_4354.w)) + -(vec2<f32>(x_4357.x, x_4357.y)));
            let x_4361 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_4361.x, x_4361.x, x_4361.y, x_4361.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_4364 : vec4<f32> = u_xlat13;
            let x_4366 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_4364.x, x_4364.x, x_4364.z, x_4364.z) * vec4<f32>(x_4366.x, x_4366.x, x_4366.z, x_4366.z));
            let x_4369 : vec4<f32> = u_xlat14;
            let x_4371 : vec2<f32> = (vec2<f32>(x_4369.y, x_4369.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_4372 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4372.x, x_4371.x, x_4372.z, x_4371.y);
            let x_4374 : vec4<f32> = u_xlat14;
            let x_4377 : vec2<f32> = u_xlat64;
            let x_4379 : vec2<f32> = ((vec2<f32>(x_4374.x, x_4374.z) * vec2<f32>(0.5f, 0.5f)) + -(x_4377));
            let x_4380 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4379.x, x_4380.y, x_4379.y, x_4380.w);
            let x_4382 : vec2<f32> = u_xlat64;
            let x_4384 : vec2<f32> = (-(x_4382) + vec2<f32>(1.0f, 1.0f));
            let x_4385 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4384.x, x_4384.y, x_4385.z, x_4385.w);
            let x_4387 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_4387, vec2<f32>(0.0f, 0.0f));
            let x_4389 : vec2<f32> = u_xlat66;
            let x_4391 : vec2<f32> = u_xlat66;
            let x_4393 : vec4<f32> = u_xlat14;
            let x_4395 : vec2<f32> = ((-(x_4389) * x_4391) + vec2<f32>(x_4393.x, x_4393.y));
            let x_4396 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4395.x, x_4395.y, x_4396.z, x_4396.w);
            let x_4398 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_4398, vec2<f32>(0.0f, 0.0f));
            let x_4401 : vec2<f32> = u_xlat66;
            let x_4403 : vec2<f32> = u_xlat66;
            let x_4405 : vec4<f32> = u_xlat13;
            let x_4407 : vec2<f32> = ((-(x_4401) * x_4403) + vec2<f32>(x_4405.y, x_4405.w));
            let x_4408 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_4407.x, x_4408.y, x_4407.y);
            let x_4410 : vec4<f32> = u_xlat14;
            let x_4412 : vec2<f32> = (vec2<f32>(x_4410.x, x_4410.y) + vec2<f32>(2.0f, 2.0f));
            let x_4413 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4412.x, x_4412.y, x_4413.z, x_4413.w);
            let x_4415 : vec3<f32> = u_xlat39;
            let x_4417 : vec2<f32> = (vec2<f32>(x_4415.x, x_4415.z) + vec2<f32>(2.0f, 2.0f));
            let x_4418 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4418.x, x_4417.x, x_4418.z, x_4417.y);
            let x_4421 : f32 = u_xlat13.y;
            u_xlat16.z = (x_4421 * 0.08163200318813323975f);
            let x_4424 : vec4<f32> = u_xlat13;
            let x_4426 : vec3<f32> = (vec3<f32>(x_4424.z, x_4424.x, x_4424.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_4427 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4426.x, x_4426.y, x_4426.z, x_4427.w);
            let x_4429 : vec4<f32> = u_xlat14;
            let x_4431 : vec2<f32> = (vec2<f32>(x_4429.x, x_4429.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_4432 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4431.x, x_4431.y, x_4432.z, x_4432.w);
            let x_4435 : f32 = u_xlat17.y;
            u_xlat16.x = x_4435;
            let x_4437 : vec2<f32> = u_xlat64;
            let x_4440 : vec2<f32> = ((vec2<f32>(x_4437.x, x_4437.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4441 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4441.x, x_4440.x, x_4441.z, x_4440.y);
            let x_4443 : vec2<f32> = u_xlat64;
            let x_4446 : vec2<f32> = ((vec2<f32>(x_4443.x, x_4443.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4447 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4446.x, x_4447.y, x_4446.y, x_4447.w);
            let x_4450 : f32 = u_xlat13.x;
            u_xlat14.y = x_4450;
            let x_4453 : f32 = u_xlat15.y;
            u_xlat14.w = x_4453;
            let x_4455 : vec4<f32> = u_xlat14;
            let x_4456 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_4455 + x_4456);
            let x_4458 : vec2<f32> = u_xlat64;
            let x_4461 : vec2<f32> = ((vec2<f32>(x_4458.y, x_4458.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4462 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4462.x, x_4461.x, x_4462.z, x_4461.y);
            let x_4464 : vec2<f32> = u_xlat64;
            let x_4467 : vec2<f32> = ((vec2<f32>(x_4464.y, x_4464.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4468 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4467.x, x_4468.y, x_4467.y, x_4468.w);
            let x_4471 : f32 = u_xlat13.y;
            u_xlat15.y = x_4471;
            let x_4473 : vec4<f32> = u_xlat15;
            let x_4474 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_4473 + x_4474);
            let x_4476 : vec4<f32> = u_xlat14;
            let x_4477 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_4476 / x_4477);
            let x_4479 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_4479 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4481 : vec4<f32> = u_xlat15;
            let x_4482 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_4481 / x_4482);
            let x_4484 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_4484 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4486 : vec4<f32> = u_xlat14;
            let x_4489 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_4486.w, x_4486.x, x_4486.y, x_4486.z) * vec4<f32>(x_4489.x, x_4489.x, x_4489.x, x_4489.x));
            let x_4492 : vec4<f32> = u_xlat15;
            let x_4495 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_4492.x, x_4492.w, x_4492.y, x_4492.z) * vec4<f32>(x_4495.y, x_4495.y, x_4495.y, x_4495.y));
            let x_4498 : vec4<f32> = u_xlat14;
            let x_4499 : vec3<f32> = vec3<f32>(x_4498.y, x_4498.z, x_4498.w);
            let x_4500 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4499.x, x_4500.y, x_4499.y, x_4499.z);
            let x_4503 : f32 = u_xlat15.x;
            u_xlat17.y = x_4503;
            let x_4505 : vec4<f32> = u_xlat12;
            let x_4508 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4511 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_4505.x, x_4505.y, x_4505.x, x_4505.y) * vec4<f32>(x_4508.x, x_4508.y, x_4508.x, x_4508.y)) + vec4<f32>(x_4511.x, x_4511.y, x_4511.z, x_4511.y));
            let x_4514 : vec4<f32> = u_xlat12;
            let x_4517 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4520 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_4514.x, x_4514.y) * vec2<f32>(x_4517.x, x_4517.y)) + vec2<f32>(x_4520.w, x_4520.y));
            let x_4524 : f32 = u_xlat17.y;
            u_xlat14.y = x_4524;
            let x_4527 : f32 = u_xlat15.z;
            u_xlat17.y = x_4527;
            let x_4529 : vec4<f32> = u_xlat12;
            let x_4532 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4535 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_4529.x, x_4529.y, x_4529.x, x_4529.y) * vec4<f32>(x_4532.x, x_4532.y, x_4532.x, x_4532.y)) + vec4<f32>(x_4535.x, x_4535.y, x_4535.z, x_4535.y));
            let x_4538 : vec4<f32> = u_xlat12;
            let x_4541 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4544 : vec4<f32> = u_xlat17;
            let x_4546 : vec2<f32> = ((vec2<f32>(x_4538.x, x_4538.y) * vec2<f32>(x_4541.x, x_4541.y)) + vec2<f32>(x_4544.w, x_4544.y));
            let x_4547 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_4546.x, x_4546.y, x_4547.z, x_4547.w);
            let x_4550 : f32 = u_xlat17.y;
            u_xlat14.z = x_4550;
            let x_4553 : vec4<f32> = u_xlat12;
            let x_4556 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4559 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_4553.x, x_4553.y, x_4553.x, x_4553.y) * vec4<f32>(x_4556.x, x_4556.y, x_4556.x, x_4556.y)) + vec4<f32>(x_4559.x, x_4559.y, x_4559.x, x_4559.z));
            let x_4563 : f32 = u_xlat15.w;
            u_xlat17.y = x_4563;
            let x_4566 : vec4<f32> = u_xlat12;
            let x_4569 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4572 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_4566.x, x_4566.y, x_4566.x, x_4566.y) * vec4<f32>(x_4569.x, x_4569.y, x_4569.x, x_4569.y)) + vec4<f32>(x_4572.x, x_4572.y, x_4572.z, x_4572.y));
            let x_4576 : vec4<f32> = u_xlat12;
            let x_4579 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4582 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_4576.x, x_4576.y) * vec2<f32>(x_4579.x, x_4579.y)) + vec2<f32>(x_4582.w, x_4582.y));
            let x_4586 : f32 = u_xlat17.y;
            u_xlat14.w = x_4586;
            let x_4589 : vec4<f32> = u_xlat12;
            let x_4592 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4595 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_4589.x, x_4589.y) * vec2<f32>(x_4592.x, x_4592.y)) + vec2<f32>(x_4595.x, x_4595.w));
            let x_4598 : vec4<f32> = u_xlat17;
            let x_4599 : vec3<f32> = vec3<f32>(x_4598.x, x_4598.z, x_4598.w);
            let x_4600 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4599.x, x_4600.y, x_4599.y, x_4599.z);
            let x_4602 : vec4<f32> = u_xlat12;
            let x_4605 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4608 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_4602.x, x_4602.y, x_4602.x, x_4602.y) * vec4<f32>(x_4605.x, x_4605.y, x_4605.x, x_4605.y)) + vec4<f32>(x_4608.x, x_4608.y, x_4608.z, x_4608.y));
            let x_4612 : vec4<f32> = u_xlat12;
            let x_4615 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4618 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_4612.x, x_4612.y) * vec2<f32>(x_4615.x, x_4615.y)) + vec2<f32>(x_4618.w, x_4618.y));
            let x_4622 : f32 = u_xlat14.x;
            u_xlat15.x = x_4622;
            let x_4624 : vec4<f32> = u_xlat12;
            let x_4627 : vec4<f32> = x_131.x_AdditionalShadowmapSize;
            let x_4630 : vec4<f32> = u_xlat15;
            let x_4632 : vec2<f32> = ((vec2<f32>(x_4624.x, x_4624.y) * vec2<f32>(x_4627.x, x_4627.y)) + vec2<f32>(x_4630.x, x_4630.y));
            let x_4633 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4632.x, x_4632.y, x_4633.z, x_4633.w);
            let x_4636 : vec4<f32> = u_xlat13;
            let x_4638 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_4636.x, x_4636.x, x_4636.x, x_4636.x) * x_4638);
            let x_4641 : vec4<f32> = u_xlat13;
            let x_4643 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_4641.y, x_4641.y, x_4641.y, x_4641.y) * x_4643);
            let x_4646 : vec4<f32> = u_xlat13;
            let x_4648 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_4646.z, x_4646.z, x_4646.z, x_4646.z) * x_4648);
            let x_4650 : vec4<f32> = u_xlat13;
            let x_4652 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_4650.w, x_4650.w, x_4650.w, x_4650.w) * x_4652);
            let x_4655 : vec4<f32> = u_xlat18;
            let x_4656 : vec2<f32> = vec2<f32>(x_4655.x, x_4655.y);
            let x_4658 : f32 = u_xlat11.z;
            txVec73 = vec3<f32>(x_4656.x, x_4656.y, x_4658);
            let x_4665 : vec3<f32> = txVec73;
            let x_4667 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4665.xy, x_4665.z);
            u_xlat88 = x_4667;
            let x_4669 : vec4<f32> = u_xlat18;
            let x_4670 : vec2<f32> = vec2<f32>(x_4669.z, x_4669.w);
            let x_4672 : f32 = u_xlat11.z;
            txVec74 = vec3<f32>(x_4670.x, x_4670.y, x_4672);
            let x_4679 : vec3<f32> = txVec74;
            let x_4681 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4679.xy, x_4679.z);
            u_xlat89 = x_4681;
            let x_4682 : f32 = u_xlat89;
            let x_4684 : f32 = u_xlat23.y;
            u_xlat89 = (x_4682 * x_4684);
            let x_4687 : f32 = u_xlat23.x;
            let x_4688 : f32 = u_xlat88;
            let x_4690 : f32 = u_xlat89;
            u_xlat88 = ((x_4687 * x_4688) + x_4690);
            let x_4693 : vec2<f32> = u_xlat64;
            let x_4695 : f32 = u_xlat11.z;
            txVec75 = vec3<f32>(x_4693.x, x_4693.y, x_4695);
            let x_4702 : vec3<f32> = txVec75;
            let x_4704 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4702.xy, x_4702.z);
            u_xlat89 = x_4704;
            let x_4706 : f32 = u_xlat23.z;
            let x_4707 : f32 = u_xlat89;
            let x_4709 : f32 = u_xlat88;
            u_xlat88 = ((x_4706 * x_4707) + x_4709);
            let x_4712 : vec4<f32> = u_xlat21;
            let x_4713 : vec2<f32> = vec2<f32>(x_4712.x, x_4712.y);
            let x_4715 : f32 = u_xlat11.z;
            txVec76 = vec3<f32>(x_4713.x, x_4713.y, x_4715);
            let x_4722 : vec3<f32> = txVec76;
            let x_4724 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4722.xy, x_4722.z);
            u_xlat89 = x_4724;
            let x_4726 : f32 = u_xlat23.w;
            let x_4727 : f32 = u_xlat89;
            let x_4729 : f32 = u_xlat88;
            u_xlat88 = ((x_4726 * x_4727) + x_4729);
            let x_4732 : vec4<f32> = u_xlat19;
            let x_4733 : vec2<f32> = vec2<f32>(x_4732.x, x_4732.y);
            let x_4735 : f32 = u_xlat11.z;
            txVec77 = vec3<f32>(x_4733.x, x_4733.y, x_4735);
            let x_4742 : vec3<f32> = txVec77;
            let x_4744 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4742.xy, x_4742.z);
            u_xlat89 = x_4744;
            let x_4746 : f32 = u_xlat24.x;
            let x_4747 : f32 = u_xlat89;
            let x_4749 : f32 = u_xlat88;
            u_xlat88 = ((x_4746 * x_4747) + x_4749);
            let x_4752 : vec4<f32> = u_xlat19;
            let x_4753 : vec2<f32> = vec2<f32>(x_4752.z, x_4752.w);
            let x_4755 : f32 = u_xlat11.z;
            txVec78 = vec3<f32>(x_4753.x, x_4753.y, x_4755);
            let x_4762 : vec3<f32> = txVec78;
            let x_4764 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4762.xy, x_4762.z);
            u_xlat89 = x_4764;
            let x_4766 : f32 = u_xlat24.y;
            let x_4767 : f32 = u_xlat89;
            let x_4769 : f32 = u_xlat88;
            u_xlat88 = ((x_4766 * x_4767) + x_4769);
            let x_4772 : vec4<f32> = u_xlat20;
            let x_4773 : vec2<f32> = vec2<f32>(x_4772.x, x_4772.y);
            let x_4775 : f32 = u_xlat11.z;
            txVec79 = vec3<f32>(x_4773.x, x_4773.y, x_4775);
            let x_4782 : vec3<f32> = txVec79;
            let x_4784 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4782.xy, x_4782.z);
            u_xlat89 = x_4784;
            let x_4786 : f32 = u_xlat24.z;
            let x_4787 : f32 = u_xlat89;
            let x_4789 : f32 = u_xlat88;
            u_xlat88 = ((x_4786 * x_4787) + x_4789);
            let x_4792 : vec4<f32> = u_xlat21;
            let x_4793 : vec2<f32> = vec2<f32>(x_4792.z, x_4792.w);
            let x_4795 : f32 = u_xlat11.z;
            txVec80 = vec3<f32>(x_4793.x, x_4793.y, x_4795);
            let x_4802 : vec3<f32> = txVec80;
            let x_4804 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4802.xy, x_4802.z);
            u_xlat89 = x_4804;
            let x_4806 : f32 = u_xlat24.w;
            let x_4807 : f32 = u_xlat89;
            let x_4809 : f32 = u_xlat88;
            u_xlat88 = ((x_4806 * x_4807) + x_4809);
            let x_4812 : vec4<f32> = u_xlat22;
            let x_4813 : vec2<f32> = vec2<f32>(x_4812.x, x_4812.y);
            let x_4815 : f32 = u_xlat11.z;
            txVec81 = vec3<f32>(x_4813.x, x_4813.y, x_4815);
            let x_4822 : vec3<f32> = txVec81;
            let x_4824 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4822.xy, x_4822.z);
            u_xlat89 = x_4824;
            let x_4826 : f32 = u_xlat25.x;
            let x_4827 : f32 = u_xlat89;
            let x_4829 : f32 = u_xlat88;
            u_xlat88 = ((x_4826 * x_4827) + x_4829);
            let x_4832 : vec4<f32> = u_xlat22;
            let x_4833 : vec2<f32> = vec2<f32>(x_4832.z, x_4832.w);
            let x_4835 : f32 = u_xlat11.z;
            txVec82 = vec3<f32>(x_4833.x, x_4833.y, x_4835);
            let x_4842 : vec3<f32> = txVec82;
            let x_4844 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4842.xy, x_4842.z);
            u_xlat89 = x_4844;
            let x_4846 : f32 = u_xlat25.y;
            let x_4847 : f32 = u_xlat89;
            let x_4849 : f32 = u_xlat88;
            u_xlat88 = ((x_4846 * x_4847) + x_4849);
            let x_4852 : vec2<f32> = u_xlat40;
            let x_4854 : f32 = u_xlat11.z;
            txVec83 = vec3<f32>(x_4852.x, x_4852.y, x_4854);
            let x_4861 : vec3<f32> = txVec83;
            let x_4863 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4861.xy, x_4861.z);
            u_xlat89 = x_4863;
            let x_4865 : f32 = u_xlat25.z;
            let x_4866 : f32 = u_xlat89;
            let x_4868 : f32 = u_xlat88;
            u_xlat88 = ((x_4865 * x_4866) + x_4868);
            let x_4871 : vec2<f32> = u_xlat72;
            let x_4873 : f32 = u_xlat11.z;
            txVec84 = vec3<f32>(x_4871.x, x_4871.y, x_4873);
            let x_4880 : vec3<f32> = txVec84;
            let x_4882 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4880.xy, x_4880.z);
            u_xlat89 = x_4882;
            let x_4884 : f32 = u_xlat25.w;
            let x_4885 : f32 = u_xlat89;
            let x_4887 : f32 = u_xlat88;
            u_xlat88 = ((x_4884 * x_4885) + x_4887);
            let x_4890 : vec4<f32> = u_xlat17;
            let x_4891 : vec2<f32> = vec2<f32>(x_4890.x, x_4890.y);
            let x_4893 : f32 = u_xlat11.z;
            txVec85 = vec3<f32>(x_4891.x, x_4891.y, x_4893);
            let x_4900 : vec3<f32> = txVec85;
            let x_4902 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4900.xy, x_4900.z);
            u_xlat89 = x_4902;
            let x_4904 : f32 = u_xlat13.x;
            let x_4905 : f32 = u_xlat89;
            let x_4907 : f32 = u_xlat88;
            u_xlat88 = ((x_4904 * x_4905) + x_4907);
            let x_4910 : vec4<f32> = u_xlat17;
            let x_4911 : vec2<f32> = vec2<f32>(x_4910.z, x_4910.w);
            let x_4913 : f32 = u_xlat11.z;
            txVec86 = vec3<f32>(x_4911.x, x_4911.y, x_4913);
            let x_4920 : vec3<f32> = txVec86;
            let x_4922 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4920.xy, x_4920.z);
            u_xlat89 = x_4922;
            let x_4924 : f32 = u_xlat13.y;
            let x_4925 : f32 = u_xlat89;
            let x_4927 : f32 = u_xlat88;
            u_xlat88 = ((x_4924 * x_4925) + x_4927);
            let x_4930 : vec2<f32> = u_xlat67;
            let x_4932 : f32 = u_xlat11.z;
            txVec87 = vec3<f32>(x_4930.x, x_4930.y, x_4932);
            let x_4939 : vec3<f32> = txVec87;
            let x_4941 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4939.xy, x_4939.z);
            u_xlat89 = x_4941;
            let x_4943 : f32 = u_xlat13.z;
            let x_4944 : f32 = u_xlat89;
            let x_4946 : f32 = u_xlat88;
            u_xlat88 = ((x_4943 * x_4944) + x_4946);
            let x_4949 : vec4<f32> = u_xlat12;
            let x_4950 : vec2<f32> = vec2<f32>(x_4949.x, x_4949.y);
            let x_4952 : f32 = u_xlat11.z;
            txVec88 = vec3<f32>(x_4950.x, x_4950.y, x_4952);
            let x_4959 : vec3<f32> = txVec88;
            let x_4961 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4959.xy, x_4959.z);
            u_xlat89 = x_4961;
            let x_4963 : f32 = u_xlat13.w;
            let x_4964 : f32 = u_xlat89;
            let x_4966 : f32 = u_xlat88;
            u_xlat86 = ((x_4963 * x_4964) + x_4966);
          }
        }
      } else {
        let x_4970 : vec4<f32> = u_xlat11;
        let x_4971 : vec2<f32> = vec2<f32>(x_4970.x, x_4970.y);
        let x_4973 : f32 = u_xlat11.z;
        txVec89 = vec3<f32>(x_4971.x, x_4971.y, x_4973);
        let x_4980 : vec3<f32> = txVec89;
        let x_4982 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4980.xy, x_4980.z);
        u_xlat86 = x_4982;
      }
      let x_4983 : i32 = u_xlati3;
      let x_4985 : f32 = x_131.x_AdditionalShadowParams[x_4983].x;
      u_xlat88 = (1.0f + -(x_4985));
      let x_4988 : f32 = u_xlat86;
      let x_4989 : i32 = u_xlati3;
      let x_4991 : f32 = x_131.x_AdditionalShadowParams[x_4989].x;
      let x_4993 : f32 = u_xlat88;
      u_xlat86 = ((x_4988 * x_4991) + x_4993);
      let x_4996 : f32 = u_xlat11.z;
      u_xlatb88 = (0.0f >= x_4996);
      let x_4999 : f32 = u_xlat11.z;
      u_xlatb11.x = (x_4999 >= 1.0f);
      let x_5002 : bool = u_xlatb88;
      let x_5004 : bool = u_xlatb11.x;
      u_xlatb88 = (x_5002 | x_5004);
      let x_5006 : bool = u_xlatb88;
      let x_5007 : f32 = u_xlat86;
      u_xlat86 = select(x_5007, 1.0f, x_5006);
    } else {
      u_xlat86 = 1.0f;
    }
    let x_5010 : f32 = u_xlat86;
    u_xlat88 = (-(x_5010) + 1.0f);
    let x_5013 : f32 = u_xlat79;
    let x_5014 : f32 = u_xlat88;
    let x_5016 : f32 = u_xlat86;
    u_xlat86 = ((x_5013 * x_5014) + x_5016);
    let x_5019 : i32 = u_xlati3;
    u_xlati88 = (1i << bitcast<u32>((x_5019 & 31i)));
    let x_5023 : i32 = u_xlati88;
    let x_5026 : f32 = x_3120.x_AdditionalLightsCookieEnableBits;
    u_xlati88 = bitcast<i32>((bitcast<u32>(x_5023) & bitcast<u32>(x_5026)));
    let x_5030 : i32 = u_xlati88;
    if ((x_5030 != 0i)) {
      let x_5034 : i32 = u_xlati3;
      let x_5036 : f32 = x_3120.x_AdditionalLightsLightTypes[x_5034].el;
      u_xlati88 = i32(x_5036);
      let x_5039 : i32 = u_xlati88;
      u_xlati11 = select(1i, 0i, (x_5039 != 0i));
      let x_5043 : i32 = u_xlati3;
      u_xlati37 = (x_5043 << bitcast<u32>(2i));
      let x_5045 : i32 = u_xlati11;
      if ((x_5045 != 0i)) {
        let x_5049 : vec3<f32> = vs_INTERP8;
        let x_5051 : i32 = u_xlati37;
        let x_5054 : i32 = u_xlati37;
        let x_5058 : vec4<f32> = x_3120.x_AdditionalLightsWorldToLights[((x_5051 + 1i) / 4i)][((x_5054 + 1i) % 4i)];
        let x_5060 : vec3<f32> = (vec3<f32>(x_5049.y, x_5049.y, x_5049.y) * vec3<f32>(x_5058.x, x_5058.y, x_5058.w));
        let x_5061 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_5060.x, x_5061.y, x_5060.y, x_5060.z);
        let x_5063 : i32 = u_xlati37;
        let x_5065 : i32 = u_xlati37;
        let x_5068 : vec4<f32> = x_3120.x_AdditionalLightsWorldToLights[(x_5063 / 4i)][(x_5065 % 4i)];
        let x_5070 : vec3<f32> = vs_INTERP8;
        let x_5073 : vec4<f32> = u_xlat11;
        let x_5075 : vec3<f32> = ((vec3<f32>(x_5068.x, x_5068.y, x_5068.w) * vec3<f32>(x_5070.x, x_5070.x, x_5070.x)) + vec3<f32>(x_5073.x, x_5073.z, x_5073.w));
        let x_5076 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_5075.x, x_5076.y, x_5075.y, x_5075.z);
        let x_5078 : i32 = u_xlati37;
        let x_5081 : i32 = u_xlati37;
        let x_5085 : vec4<f32> = x_3120.x_AdditionalLightsWorldToLights[((x_5078 + 2i) / 4i)][((x_5081 + 2i) % 4i)];
        let x_5087 : vec3<f32> = vs_INTERP8;
        let x_5090 : vec4<f32> = u_xlat11;
        let x_5092 : vec3<f32> = ((vec3<f32>(x_5085.x, x_5085.y, x_5085.w) * vec3<f32>(x_5087.z, x_5087.z, x_5087.z)) + vec3<f32>(x_5090.x, x_5090.z, x_5090.w));
        let x_5093 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_5092.x, x_5093.y, x_5092.y, x_5092.z);
        let x_5095 : vec4<f32> = u_xlat11;
        let x_5097 : i32 = u_xlati37;
        let x_5100 : i32 = u_xlati37;
        let x_5104 : vec4<f32> = x_3120.x_AdditionalLightsWorldToLights[((x_5097 + 3i) / 4i)][((x_5100 + 3i) % 4i)];
        let x_5106 : vec3<f32> = (vec3<f32>(x_5095.x, x_5095.z, x_5095.w) + vec3<f32>(x_5104.x, x_5104.y, x_5104.w));
        let x_5107 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_5106.x, x_5107.y, x_5106.y, x_5106.z);
        let x_5109 : vec4<f32> = u_xlat11;
        let x_5111 : vec4<f32> = u_xlat11;
        let x_5113 : vec2<f32> = (vec2<f32>(x_5109.x, x_5109.z) / vec2<f32>(x_5111.w, x_5111.w));
        let x_5114 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_5113.x, x_5114.y, x_5113.y, x_5114.w);
        let x_5116 : vec4<f32> = u_xlat11;
        let x_5119 : vec2<f32> = ((vec2<f32>(x_5116.x, x_5116.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_5120 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_5119.x, x_5120.y, x_5119.y, x_5120.w);
        let x_5122 : vec4<f32> = u_xlat11;
        let x_5126 : vec2<f32> = clamp(vec2<f32>(x_5122.x, x_5122.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_5127 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_5126.x, x_5127.y, x_5126.y, x_5127.w);
        let x_5129 : i32 = u_xlati3;
        let x_5131 : vec4<f32> = x_3120.x_AdditionalLightsCookieAtlasUVRects[x_5129];
        let x_5133 : vec4<f32> = u_xlat11;
        let x_5136 : i32 = u_xlati3;
        let x_5138 : vec4<f32> = x_3120.x_AdditionalLightsCookieAtlasUVRects[x_5136];
        let x_5140 : vec2<f32> = ((vec2<f32>(x_5131.x, x_5131.y) * vec2<f32>(x_5133.x, x_5133.z)) + vec2<f32>(x_5138.z, x_5138.w));
        let x_5141 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_5140.x, x_5141.y, x_5140.y, x_5141.w);
      } else {
        let x_5144 : i32 = u_xlati88;
        u_xlatb88 = (x_5144 == 1i);
        let x_5146 : bool = u_xlatb88;
        u_xlati88 = select(0i, 1i, x_5146);
        let x_5148 : i32 = u_xlati88;
        if ((x_5148 != 0i)) {
          let x_5152 : vec3<f32> = vs_INTERP8;
          let x_5154 : i32 = u_xlati37;
          let x_5157 : i32 = u_xlati37;
          let x_5161 : vec4<f32> = x_3120.x_AdditionalLightsWorldToLights[((x_5154 + 1i) / 4i)][((x_5157 + 1i) % 4i)];
          let x_5163 : vec2<f32> = (vec2<f32>(x_5152.y, x_5152.y) * vec2<f32>(x_5161.x, x_5161.y));
          let x_5164 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5163.x, x_5163.y, x_5164.z, x_5164.w);
          let x_5166 : i32 = u_xlati37;
          let x_5168 : i32 = u_xlati37;
          let x_5171 : vec4<f32> = x_3120.x_AdditionalLightsWorldToLights[(x_5166 / 4i)][(x_5168 % 4i)];
          let x_5173 : vec3<f32> = vs_INTERP8;
          let x_5176 : vec4<f32> = u_xlat12;
          let x_5178 : vec2<f32> = ((vec2<f32>(x_5171.x, x_5171.y) * vec2<f32>(x_5173.x, x_5173.x)) + vec2<f32>(x_5176.x, x_5176.y));
          let x_5179 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5178.x, x_5178.y, x_5179.z, x_5179.w);
          let x_5181 : i32 = u_xlati37;
          let x_5184 : i32 = u_xlati37;
          let x_5188 : vec4<f32> = x_3120.x_AdditionalLightsWorldToLights[((x_5181 + 2i) / 4i)][((x_5184 + 2i) % 4i)];
          let x_5190 : vec3<f32> = vs_INTERP8;
          let x_5193 : vec4<f32> = u_xlat12;
          let x_5195 : vec2<f32> = ((vec2<f32>(x_5188.x, x_5188.y) * vec2<f32>(x_5190.z, x_5190.z)) + vec2<f32>(x_5193.x, x_5193.y));
          let x_5196 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5195.x, x_5195.y, x_5196.z, x_5196.w);
          let x_5198 : vec4<f32> = u_xlat12;
          let x_5200 : i32 = u_xlati37;
          let x_5203 : i32 = u_xlati37;
          let x_5207 : vec4<f32> = x_3120.x_AdditionalLightsWorldToLights[((x_5200 + 3i) / 4i)][((x_5203 + 3i) % 4i)];
          let x_5209 : vec2<f32> = (vec2<f32>(x_5198.x, x_5198.y) + vec2<f32>(x_5207.x, x_5207.y));
          let x_5210 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5209.x, x_5209.y, x_5210.z, x_5210.w);
          let x_5212 : vec4<f32> = u_xlat12;
          let x_5215 : vec2<f32> = ((vec2<f32>(x_5212.x, x_5212.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_5216 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5215.x, x_5215.y, x_5216.z, x_5216.w);
          let x_5218 : vec4<f32> = u_xlat12;
          let x_5220 : vec2<f32> = fract(vec2<f32>(x_5218.x, x_5218.y));
          let x_5221 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5220.x, x_5220.y, x_5221.z, x_5221.w);
          let x_5223 : i32 = u_xlati3;
          let x_5225 : vec4<f32> = x_3120.x_AdditionalLightsCookieAtlasUVRects[x_5223];
          let x_5227 : vec4<f32> = u_xlat12;
          let x_5230 : i32 = u_xlati3;
          let x_5232 : vec4<f32> = x_3120.x_AdditionalLightsCookieAtlasUVRects[x_5230];
          let x_5234 : vec2<f32> = ((vec2<f32>(x_5225.x, x_5225.y) * vec2<f32>(x_5227.x, x_5227.y)) + vec2<f32>(x_5232.z, x_5232.w));
          let x_5235 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_5234.x, x_5235.y, x_5234.y, x_5235.w);
        } else {
          let x_5238 : vec3<f32> = vs_INTERP8;
          let x_5240 : i32 = u_xlati37;
          let x_5243 : i32 = u_xlati37;
          let x_5247 : vec4<f32> = x_3120.x_AdditionalLightsWorldToLights[((x_5240 + 1i) / 4i)][((x_5243 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_5238.y, x_5238.y, x_5238.y, x_5238.y) * x_5247);
          let x_5249 : i32 = u_xlati37;
          let x_5251 : i32 = u_xlati37;
          let x_5254 : vec4<f32> = x_3120.x_AdditionalLightsWorldToLights[(x_5249 / 4i)][(x_5251 % 4i)];
          let x_5255 : vec3<f32> = vs_INTERP8;
          let x_5258 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_5254 * vec4<f32>(x_5255.x, x_5255.x, x_5255.x, x_5255.x)) + x_5258);
          let x_5260 : i32 = u_xlati37;
          let x_5263 : i32 = u_xlati37;
          let x_5267 : vec4<f32> = x_3120.x_AdditionalLightsWorldToLights[((x_5260 + 2i) / 4i)][((x_5263 + 2i) % 4i)];
          let x_5268 : vec3<f32> = vs_INTERP8;
          let x_5271 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_5267 * vec4<f32>(x_5268.z, x_5268.z, x_5268.z, x_5268.z)) + x_5271);
          let x_5273 : vec4<f32> = u_xlat12;
          let x_5274 : i32 = u_xlati37;
          let x_5277 : i32 = u_xlati37;
          let x_5281 : vec4<f32> = x_3120.x_AdditionalLightsWorldToLights[((x_5274 + 3i) / 4i)][((x_5277 + 3i) % 4i)];
          u_xlat12 = (x_5273 + x_5281);
          let x_5283 : vec4<f32> = u_xlat12;
          let x_5285 : vec4<f32> = u_xlat12;
          let x_5287 : vec3<f32> = (vec3<f32>(x_5283.x, x_5283.y, x_5283.z) / vec3<f32>(x_5285.w, x_5285.w, x_5285.w));
          let x_5288 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5287.x, x_5287.y, x_5287.z, x_5288.w);
          let x_5290 : vec4<f32> = u_xlat12;
          let x_5292 : vec4<f32> = u_xlat12;
          u_xlat88 = dot(vec3<f32>(x_5290.x, x_5290.y, x_5290.z), vec3<f32>(x_5292.x, x_5292.y, x_5292.z));
          let x_5295 : f32 = u_xlat88;
          u_xlat88 = inverseSqrt(x_5295);
          let x_5297 : f32 = u_xlat88;
          let x_5299 : vec4<f32> = u_xlat12;
          let x_5301 : vec3<f32> = (vec3<f32>(x_5297, x_5297, x_5297) * vec3<f32>(x_5299.x, x_5299.y, x_5299.z));
          let x_5302 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5301.x, x_5301.y, x_5301.z, x_5302.w);
          let x_5304 : vec4<f32> = u_xlat12;
          u_xlat88 = dot(abs(vec3<f32>(x_5304.x, x_5304.y, x_5304.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_5309 : f32 = u_xlat88;
          u_xlat88 = max(x_5309, 0.00000099999999747524f);
          let x_5312 : f32 = u_xlat88;
          u_xlat88 = (1.0f / x_5312);
          let x_5314 : f32 = u_xlat88;
          let x_5316 : vec4<f32> = u_xlat12;
          let x_5318 : vec3<f32> = (vec3<f32>(x_5314, x_5314, x_5314) * vec3<f32>(x_5316.z, x_5316.x, x_5316.y));
          let x_5319 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_5318.x, x_5318.y, x_5318.z, x_5319.w);
          let x_5322 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_5322);
          let x_5326 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_5326, 0.0f, 1.0f);
          let x_5330 : vec4<f32> = u_xlat13;
          let x_5332 : vec4<bool> = (vec4<f32>(x_5330.y, x_5330.y, x_5330.z, x_5330.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_5333 : vec2<bool> = vec2<bool>(x_5332.x, x_5332.z);
          let x_5334 : vec3<bool> = u_xlatb37;
          u_xlatb37 = vec3<bool>(x_5333.x, x_5334.y, x_5333.y);
          let x_5337 : bool = u_xlatb37.x;
          if (x_5337) {
            let x_5342 : f32 = u_xlat13.x;
            x_5338 = x_5342;
          } else {
            let x_5345 : f32 = u_xlat13.x;
            x_5338 = -(x_5345);
          }
          let x_5347 : f32 = x_5338;
          u_xlat37.x = x_5347;
          let x_5350 : bool = u_xlatb37.z;
          if (x_5350) {
            let x_5355 : f32 = u_xlat13.x;
            x_5351 = x_5355;
          } else {
            let x_5358 : f32 = u_xlat13.x;
            x_5351 = -(x_5358);
          }
          let x_5360 : f32 = x_5351;
          u_xlat37.z = x_5360;
          let x_5362 : vec4<f32> = u_xlat12;
          let x_5364 : f32 = u_xlat88;
          let x_5367 : vec3<f32> = u_xlat37;
          let x_5369 : vec2<f32> = ((vec2<f32>(x_5362.x, x_5362.y) * vec2<f32>(x_5364, x_5364)) + vec2<f32>(x_5367.x, x_5367.z));
          let x_5370 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_5369.x, x_5370.y, x_5369.y);
          let x_5372 : vec3<f32> = u_xlat37;
          let x_5375 : vec2<f32> = ((vec2<f32>(x_5372.x, x_5372.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_5376 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_5375.x, x_5376.y, x_5375.y);
          let x_5378 : vec3<f32> = u_xlat37;
          let x_5382 : vec2<f32> = clamp(vec2<f32>(x_5378.x, x_5378.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_5383 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_5382.x, x_5383.y, x_5382.y);
          let x_5385 : i32 = u_xlati3;
          let x_5387 : vec4<f32> = x_3120.x_AdditionalLightsCookieAtlasUVRects[x_5385];
          let x_5389 : vec3<f32> = u_xlat37;
          let x_5392 : i32 = u_xlati3;
          let x_5394 : vec4<f32> = x_3120.x_AdditionalLightsCookieAtlasUVRects[x_5392];
          let x_5396 : vec2<f32> = ((vec2<f32>(x_5387.x, x_5387.y) * vec2<f32>(x_5389.x, x_5389.z)) + vec2<f32>(x_5394.z, x_5394.w));
          let x_5397 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_5396.x, x_5397.y, x_5396.y, x_5397.w);
        }
      }
      let x_5404 : vec4<f32> = u_xlat11;
      let x_5406 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_5404.x, x_5404.z), 0.0f);
      u_xlat11 = x_5406;
      let x_5408 : bool = u_xlatb58.y;
      if (x_5408) {
        let x_5413 : f32 = u_xlat11.w;
        x_5409 = x_5413;
      } else {
        let x_5416 : f32 = u_xlat11.x;
        x_5409 = x_5416;
      }
      let x_5417 : f32 = x_5409;
      u_xlat88 = x_5417;
      let x_5419 : bool = u_xlatb58.x;
      if (x_5419) {
        let x_5423 : vec4<f32> = u_xlat11;
        x_5420 = vec3<f32>(x_5423.x, x_5423.y, x_5423.z);
      } else {
        let x_5426 : f32 = u_xlat88;
        x_5420 = vec3<f32>(x_5426, x_5426, x_5426);
      }
      let x_5428 : vec3<f32> = x_5420;
      let x_5429 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_5428.x, x_5428.y, x_5428.z, x_5429.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_5435 : vec4<f32> = u_xlat11;
    let x_5437 : i32 = u_xlati3;
    let x_5439 : vec4<f32> = x_3560.x_AdditionalLightsColor[x_5437];
    let x_5441 : vec3<f32> = (vec3<f32>(x_5435.x, x_5435.y, x_5435.z) * vec3<f32>(x_5439.x, x_5439.y, x_5439.z));
    let x_5442 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_5441.x, x_5441.y, x_5441.z, x_5442.w);
    let x_5445 : f32 = u_xlat4.x;
    let x_5446 : f32 = u_xlat86;
    u_xlat3.x = (x_5445 * x_5446);
    let x_5449 : vec3<f32> = u_xlat29;
    let x_5450 : vec4<f32> = u_xlat10;
    u_xlat4.x = dot(x_5449, vec3<f32>(x_5450.x, x_5450.y, x_5450.z));
    let x_5455 : f32 = u_xlat4.x;
    u_xlat4.x = clamp(x_5455, 0.0f, 1.0f);
    let x_5459 : f32 = u_xlat3.x;
    let x_5461 : f32 = u_xlat4.x;
    u_xlat3.x = (x_5459 * x_5461);
    let x_5464 : vec4<f32> = u_xlat3;
    let x_5466 : vec4<f32> = u_xlat11;
    let x_5468 : vec3<f32> = (vec3<f32>(x_5464.x, x_5464.x, x_5464.x) * vec3<f32>(x_5466.x, x_5466.y, x_5466.z));
    let x_5469 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_5468.x, x_5468.y, x_5468.z, x_5469.w);
    let x_5471 : vec3<f32> = u_xlat35;
    let x_5472 : f32 = u_xlat85;
    let x_5475 : vec3<f32> = u_xlat30;
    u_xlat35 = ((x_5471 * vec3<f32>(x_5472, x_5472, x_5472)) + x_5475);
    let x_5477 : vec3<f32> = u_xlat35;
    let x_5478 : vec3<f32> = u_xlat35;
    u_xlat3.x = dot(x_5477, x_5478);
    let x_5482 : f32 = u_xlat3.x;
    u_xlat3.x = max(x_5482, 1.17549435e-38f);
    let x_5486 : f32 = u_xlat3.x;
    u_xlat3.x = inverseSqrt(x_5486);
    let x_5489 : vec4<f32> = u_xlat3;
    let x_5491 : vec3<f32> = u_xlat35;
    u_xlat35 = (vec3<f32>(x_5489.x, x_5489.x, x_5489.x) * x_5491);
    let x_5493 : vec3<f32> = u_xlat29;
    let x_5494 : vec3<f32> = u_xlat35;
    u_xlat3.x = dot(x_5493, x_5494);
    let x_5498 : f32 = u_xlat3.x;
    u_xlat3.x = clamp(x_5498, 0.0f, 1.0f);
    let x_5501 : vec4<f32> = u_xlat10;
    let x_5503 : vec3<f32> = u_xlat35;
    u_xlat4.x = dot(vec3<f32>(x_5501.x, x_5501.y, x_5501.z), x_5503);
    let x_5507 : f32 = u_xlat4.x;
    u_xlat4.x = clamp(x_5507, 0.0f, 1.0f);
    let x_5511 : f32 = u_xlat3.x;
    let x_5513 : f32 = u_xlat3.x;
    u_xlat3.x = (x_5511 * x_5513);
    let x_5517 : f32 = u_xlat3.x;
    let x_5519 : f32 = u_xlat9.x;
    u_xlat3.x = ((x_5517 * x_5519) + 1.00001001358032226562f);
    let x_5524 : f32 = u_xlat4.x;
    let x_5526 : f32 = u_xlat4.x;
    u_xlat4.x = (x_5524 * x_5526);
    let x_5530 : f32 = u_xlat3.x;
    let x_5532 : f32 = u_xlat3.x;
    u_xlat3.x = (x_5530 * x_5532);
    let x_5536 : f32 = u_xlat4.x;
    u_xlat4.x = max(x_5536, 0.10000000149011611938f);
    let x_5540 : f32 = u_xlat3.x;
    let x_5542 : f32 = u_xlat4.x;
    u_xlat3.x = (x_5540 * x_5542);
    let x_5546 : f32 = u_xlat6.x;
    let x_5548 : f32 = u_xlat3.x;
    u_xlat3.x = (x_5546 * x_5548);
    let x_5551 : f32 = u_xlat83;
    let x_5553 : f32 = u_xlat3.x;
    u_xlat3.x = (x_5551 / x_5553);
    let x_5556 : vec4<f32> = u_xlat3;
    let x_5559 : vec3<f32> = u_xlat2;
    u_xlat35 = ((vec3<f32>(x_5556.x, x_5556.x, x_5556.x) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_5559);
    let x_5561 : vec3<f32> = u_xlat35;
    let x_5562 : vec4<f32> = u_xlat11;
    let x_5565 : vec4<f32> = u_xlat8;
    let x_5567 : vec3<f32> = ((x_5561 * vec3<f32>(x_5562.x, x_5562.y, x_5562.z)) + vec3<f32>(x_5565.x, x_5565.y, x_5565.z));
    let x_5568 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_5567.x, x_5567.y, x_5567.z, x_5568.w);

    continuing {
      let x_5570 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_5570 + bitcast<u32>(1i));
    }
  }
  let x_5572 : vec4<f32> = u_xlat5;
  let x_5574 : vec3<f32> = u_xlat32;
  let x_5577 : vec4<f32> = u_xlat7;
  u_xlat2 = ((vec3<f32>(x_5572.x, x_5572.y, x_5572.z) * vec3<f32>(x_5574.x, x_5574.x, x_5574.x)) + vec3<f32>(x_5577.x, x_5577.y, x_5577.z));
  let x_5580 : vec4<f32> = u_xlat8;
  let x_5582 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_5580.x, x_5580.y, x_5580.z) + x_5582);
  let x_5584 : vec4<f32> = vs_INTERP6;
  let x_5586 : vec3<f32> = u_xlat0;
  let x_5588 : vec3<f32> = u_xlat2;
  u_xlat0 = ((vec3<f32>(x_5584.w, x_5584.w, x_5584.w) * x_5586) + x_5588);
  let x_5591 : f32 = u_xlat27.x;
  let x_5593 : f32 = u_xlat27.x;
  u_xlat78 = (x_5591 * -(x_5593));
  let x_5596 : f32 = u_xlat78;
  u_xlat78 = exp2(x_5596);
  let x_5598 : vec3<f32> = u_xlat0;
  let x_5600 : vec4<f32> = x_53.unity_FogColor;
  u_xlat0 = (x_5598 + -(vec3<f32>(x_5600.x, x_5600.y, x_5600.z)));
  let x_5606 : f32 = u_xlat78;
  let x_5608 : vec3<f32> = u_xlat0;
  let x_5611 : vec4<f32> = x_53.unity_FogColor;
  let x_5613 : vec3<f32> = ((vec3<f32>(x_5606, x_5606, x_5606) * x_5608) + vec3<f32>(x_5611.x, x_5611.y, x_5611.z));
  let x_5614 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_5613.x, x_5613.y, x_5613.z, x_5614.w);
  let x_5616 : bool = u_xlatb53;
  if (x_5616) {
    let x_5621 : f32 = u_xlat1.x;
    x_5617 = x_5621;
  } else {
    x_5617 = 1.0f;
  }
  let x_5623 : f32 = x_5617;
  SV_Target0.w = x_5623;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(6) vs_INTERP9_param : vec3<f32>, @location(3) vs_INTERP5_param : vec4<f32>, @location(4) vs_INTERP6_param : vec4<f32>, @location(5) vs_INTERP8_param : vec3<f32>, @location(2) vs_INTERP4_param : vec4<f32>, @location(0) vs_INTERP0_param : vec2<f32>, @location(1) vs_INTERP3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP9 = vs_INTERP9_param;
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP6 = vs_INTERP6_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP3 = vs_INTERP3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


