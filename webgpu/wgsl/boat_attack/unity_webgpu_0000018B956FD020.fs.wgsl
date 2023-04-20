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
  x_ScreenParams : vec4<f32>,
  /* @offset(96) */
  unity_OrthoParams : vec4<f32>,
  /* @offset(112) */
  unity_MatrixV : mat4x4<f32>,
}

alias Arr = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr,
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

struct UnityPerMaterial {
  /* @offset(0) */
  Texture2D_B222E8F_TexelSize : vec4<f32>,
  /* @offset(16) */
  Color_C30C7CA3 : vec4<f32>,
  /* @offset(32) */
  Texture2D_D9BFD5F1_TexelSize : vec4<f32>,
}

alias Arr_1 = array<mat4x4<f32>, 5u>;

alias Arr_2 = array<vec4<f32>, 32u>;

alias Arr_3 = array<mat4x4<f32>, 32u>;

alias Arr_4 = array<vec4<f32>, 32u>;

alias Arr_5 = array<mat4x4<f32>, 32u>;

struct LightShadows {
  /* @offset(0) */
  x_MainLightWorldToShadow : Arr_1,
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
  x_AdditionalShadowParams : Arr_4,
  /* @offset(1040) */
  x_AdditionalLightsWorldToShadow : Arr_5,
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
  x_AdditionalLightsWorldToLights : Arr_5,
  /* @offset(2128) */
  x_AdditionalLightsCookieAtlasUVRects : Arr_4,
  /* @offset(2640) */
  x_AdditionalLightsLightTypes : Arr_8,
}

alias Arr_9 = array<vec4<f32>, 32u>;

alias Arr_10 = array<vec4<f32>, 32u>;

alias Arr_11 = array<vec4<f32>, 32u>;

alias Arr_12 = array<vec4<f32>, 32u>;

struct AdditionalLights {
  /* @offset(0) */
  x_AdditionalLightsPosition : Arr_4,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_4,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_4,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_4,
  /* @offset(2048) */
  x_AdditionalLightsOcclusionProbes : Arr_4,
  /* @offset(2560) */
  x_AdditionalLightsLayerMasks : Arr_8,
}

var<private> u_xlat0 : vec3<f32>;

var<private> vs_INTERP9 : vec3<f32>;

var<private> u_xlatb78 : bool;

@group(1) @binding(0) var<uniform> x_75 : PGlobals;

var<private> u_xlat1 : vec3<f32>;

var<private> vs_INTERP8 : vec3<f32>;

var<private> u_xlat79 : f32;

var<private> u_xlat2 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_148 : UnityPerDraw;

var<private> u_xlat78 : f32;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(7) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(14) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP5 : vec4<f32>;

var<private> u_xlat4 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_204 : UnityPerMaterial;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(8) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(15) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat31 : vec3<f32>;

var<private> vs_INTERP6 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_264 : LightShadows;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlatb6 : vec4<bool>;

var<private> u_xlatu78 : u32;

var<private> u_xlati78 : i32;

var<private> u_xlatb79 : bool;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb80 : bool;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat82 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlat34 : vec3<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat35 : vec2<f32>;

var<private> u_xlat67 : vec2<f32>;

var<private> u_xlat62 : vec2<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlatb82 : bool;

var<private> u_xlatb84 : bool;

var<private> u_xlatb3 : bool;

var<private> u_xlatu1 : vec3<u32>;

var<private> u_xlatu53 : u32;

var<private> u_xlatu29 : u32;

var<private> u_xlati53 : i32;

var<private> u_xlati27 : i32;

var<private> u_xlatu27 : u32;

var<private> u_xlati1 : i32;

var<private> u_xlat27 : f32;

var<private> u_xlatb53 : vec2<bool>;

var<private> u_xlat53 : vec2<f32>;

var<private> u_xlatb27 : bool;

var<private> vs_INTERP4 : vec4<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP0 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat81 : f32;

var<private> u_xlatb33 : vec2<bool>;

var<private> u_xlat33 : vec3<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat85 : f32;

var<private> u_xlat66 : vec2<f32>;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat21 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_3415 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu82 : u32;

var<private> u_xlati83 : i32;

var<private> u_xlati82 : i32;

@group(1) @binding(1) var<uniform> x_3847 : AdditionalLights;

var<private> u_xlat83 : f32;

var<private> u_xlat86 : f32;

var<private> u_xlati86 : i32;

var<private> u_xlatb87 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat88 : f32;

var<private> u_xlat87 : f32;

var<private> u_xlatb86 : bool;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat89 : f32;

var<private> u_xlat39 : vec3<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat40 : vec2<f32>;

var<private> u_xlat72 : vec2<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlat25 : vec4<f32>;

var<private> u_xlatb88 : bool;

var<private> u_xlati87 : i32;

var<private> u_xlati88 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlat37 : vec3<f32>;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu80 : u32;

fn int_bitfieldInsert_i1_i1_i1_i1_(base : ptr<function, i32>, insert : ptr<function, i32>, offset_1 : ptr<function, i32>, bits : ptr<function, i32>) -> i32 {
  var mask : u32;
  let x_19 : i32 = *(bits);
  let x_23 : i32 = *(offset_1);
  mask = (~((4294967295u << bitcast<u32>(x_19))) << bitcast<u32>(x_23));
  let x_26 : i32 = *(base);
  let x_28 : u32 = mask;
  let x_31 : i32 = *(insert);
  let x_33 : i32 = *(offset_1);
  let x_36 : u32 = mask;
  return bitcast<i32>(((bitcast<u32>(x_26) & ~(x_28)) | ((bitcast<u32>(x_31) << bitcast<u32>(x_33)) & x_36)));
}

fn main_1() {
  var x_105 : f32;
  var x_119 : f32;
  var x_132 : f32;
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
  var x_1721 : f32;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var x_1853 : f32;
  var x_1925 : f32;
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
  var x_3497 : f32;
  var x_3508 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_3984 : f32;
  var x_3994 : f32;
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
  var x_5575 : f32;
  var x_5588 : f32;
  var x_5646 : f32;
  var x_5657 : vec3<f32>;
  var x_5807 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_48 : vec3<f32> = vs_INTERP9;
  let x_49 : vec3<f32> = vs_INTERP9;
  u_xlat0.x = dot(x_48, x_49);
  let x_55 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_55);
  let x_60 : f32 = u_xlat0.x;
  u_xlat0.x = (1.0f / x_60);
  let x_63 : vec3<f32> = u_xlat0;
  let x_65 : vec3<f32> = vs_INTERP9;
  u_xlat0 = (vec3<f32>(x_63.x, x_63.x, x_63.x) * x_65);
  let x_80 : f32 = x_75.unity_OrthoParams.w;
  u_xlatb78 = (x_80 == 0.0f);
  let x_85 : vec3<f32> = vs_INTERP8;
  let x_90 : vec3<f32> = x_75.x_WorldSpaceCameraPos;
  u_xlat1 = (-(x_85) + x_90);
  let x_93 : vec3<f32> = u_xlat1;
  let x_94 : vec3<f32> = u_xlat1;
  u_xlat79 = dot(x_93, x_94);
  let x_96 : f32 = u_xlat79;
  u_xlat79 = inverseSqrt(x_96);
  let x_98 : f32 = u_xlat79;
  let x_100 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_98, x_98, x_98) * x_100);
  let x_103 : bool = u_xlatb78;
  if (x_103) {
    let x_109 : f32 = u_xlat1.x;
    x_105 = x_109;
  } else {
    let x_115 : f32 = x_75.unity_MatrixV[0i].z;
    x_105 = x_115;
  }
  let x_116 : f32 = x_105;
  u_xlat2.x = x_116;
  let x_118 : bool = u_xlatb78;
  if (x_118) {
    let x_124 : f32 = u_xlat1.y;
    x_119 = x_124;
  } else {
    let x_128 : f32 = x_75.unity_MatrixV[1i].z;
    x_119 = x_128;
  }
  let x_129 : f32 = x_119;
  u_xlat2.y = x_129;
  let x_131 : bool = u_xlatb78;
  if (x_131) {
    let x_136 : f32 = u_xlat1.z;
    x_132 = x_136;
  } else {
    let x_140 : f32 = x_75.unity_MatrixV[2i].z;
    x_132 = x_140;
  }
  let x_141 : f32 = x_132;
  u_xlat2.z = x_141;
  let x_143 : vec3<f32> = u_xlat2;
  let x_151 : vec4<f32> = x_148.unity_WorldToObject[1i];
  u_xlat1 = (vec3<f32>(x_143.y, x_143.y, x_143.y) * vec3<f32>(x_151.x, x_151.y, x_151.z));
  let x_155 : vec4<f32> = x_148.unity_WorldToObject[0i];
  let x_157 : vec3<f32> = u_xlat2;
  let x_160 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_155.x, x_155.y, x_155.z) * vec3<f32>(x_157.x, x_157.x, x_157.x)) + x_160);
  let x_163 : vec4<f32> = x_148.unity_WorldToObject[2i];
  let x_165 : vec3<f32> = u_xlat2;
  let x_168 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_163.x, x_163.y, x_163.z) * vec3<f32>(x_165.z, x_165.z, x_165.z)) + x_168);
  let x_171 : vec3<f32> = u_xlat1;
  let x_172 : vec3<f32> = u_xlat1;
  u_xlat78 = dot(x_171, x_172);
  let x_174 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_174);
  let x_176 : f32 = u_xlat78;
  let x_178 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_176, x_176, x_176) * x_178);
  let x_194 : vec4<f32> = vs_INTERP5;
  let x_197 : f32 = x_75.x_GlobalMipBias.x;
  let x_198 : vec4<f32> = textureSampleBias(Texture2D_B222E8F, samplerTexture2D_B222E8F, vec2<f32>(x_194.x, x_194.y), x_197);
  u_xlat3 = x_198;
  let x_200 : vec4<f32> = u_xlat3;
  let x_206 : vec4<f32> = x_204.Color_C30C7CA3;
  u_xlat4 = (vec3<f32>(x_200.x, x_200.y, x_200.z) * vec3<f32>(x_206.x, x_206.y, x_206.z));
  let x_215 : vec4<f32> = vs_INTERP5;
  let x_218 : f32 = x_75.x_GlobalMipBias.x;
  let x_219 : vec4<f32> = textureSampleBias(Texture2D_D9BFD5F1, samplerTexture2D_D9BFD5F1, vec2<f32>(x_215.x, x_215.y), x_218);
  u_xlat5 = vec4<f32>(x_219.w, x_219.x, x_219.y, x_219.z);
  let x_222 : vec4<f32> = u_xlat5;
  u_xlat6 = ((vec4<f32>(x_222.y, x_222.z, x_222.w, x_222.x) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_230 : vec4<f32> = u_xlat6;
  let x_231 : vec4<f32> = u_xlat6;
  u_xlat78 = dot(x_230, x_231);
  let x_233 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_233);
  let x_236 : f32 = u_xlat78;
  let x_238 : vec4<f32> = u_xlat6;
  u_xlat31 = (vec3<f32>(x_236, x_236, x_236) * vec3<f32>(x_238.x, x_238.y, x_238.z));
  let x_244 : f32 = vs_INTERP6.y;
  u_xlat78 = (x_244 * 200.0f);
  let x_247 : f32 = u_xlat78;
  u_xlat78 = min(x_247, 1.0f);
  let x_249 : f32 = u_xlat78;
  let x_251 : vec4<f32> = u_xlat3;
  let x_253 : vec3<f32> = (vec3<f32>(x_249, x_249, x_249) * vec3<f32>(x_251.x, x_251.y, x_251.z));
  let x_254 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_253.x, x_253.y, x_253.z, x_254.w);
  let x_256 : vec3<f32> = vs_INTERP8;
  let x_266 : vec4<f32> = x_264.x_CascadeShadowSplitSpheres0;
  let x_269 : vec3<f32> = (x_256 + -(vec3<f32>(x_266.x, x_266.y, x_266.z)));
  let x_270 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_269.x, x_269.y, x_269.z, x_270.w);
  let x_273 : vec3<f32> = vs_INTERP8;
  let x_275 : vec4<f32> = x_264.x_CascadeShadowSplitSpheres1;
  let x_278 : vec3<f32> = (x_273 + -(vec3<f32>(x_275.x, x_275.y, x_275.z)));
  let x_279 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_278.x, x_278.y, x_278.z, x_279.w);
  let x_282 : vec3<f32> = vs_INTERP8;
  let x_285 : vec4<f32> = x_264.x_CascadeShadowSplitSpheres2;
  let x_288 : vec3<f32> = (x_282 + -(vec3<f32>(x_285.x, x_285.y, x_285.z)));
  let x_289 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_288.x, x_288.y, x_288.z, x_289.w);
  let x_292 : vec3<f32> = vs_INTERP8;
  let x_295 : vec4<f32> = x_264.x_CascadeShadowSplitSpheres3;
  let x_298 : vec3<f32> = (x_292 + -(vec3<f32>(x_295.x, x_295.y, x_295.z)));
  let x_299 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_298.x, x_298.y, x_298.z, x_299.w);
  let x_301 : vec4<f32> = u_xlat6;
  let x_303 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_301.x, x_301.y, x_301.z), vec3<f32>(x_303.x, x_303.y, x_303.z));
  let x_307 : vec4<f32> = u_xlat7;
  let x_309 : vec4<f32> = u_xlat7;
  u_xlat6.y = dot(vec3<f32>(x_307.x, x_307.y, x_307.z), vec3<f32>(x_309.x, x_309.y, x_309.z));
  let x_313 : vec4<f32> = u_xlat8;
  let x_315 : vec4<f32> = u_xlat8;
  u_xlat6.z = dot(vec3<f32>(x_313.x, x_313.y, x_313.z), vec3<f32>(x_315.x, x_315.y, x_315.z));
  let x_319 : vec4<f32> = u_xlat9;
  let x_321 : vec4<f32> = u_xlat9;
  u_xlat6.w = dot(vec3<f32>(x_319.x, x_319.y, x_319.z), vec3<f32>(x_321.x, x_321.y, x_321.z));
  let x_328 : vec4<f32> = u_xlat6;
  let x_330 : vec4<f32> = x_264.x_CascadeShadowSplitSphereRadii;
  u_xlatb6 = (x_328 < x_330);
  let x_333 : bool = u_xlatb6.x;
  u_xlat7.x = select(0.0f, 1.0f, x_333);
  let x_337 : bool = u_xlatb6.y;
  u_xlat7.y = select(0.0f, 1.0f, x_337);
  let x_341 : bool = u_xlatb6.z;
  u_xlat7.z = select(0.0f, 1.0f, x_341);
  let x_345 : bool = u_xlatb6.w;
  u_xlat7.w = select(0.0f, 1.0f, x_345);
  let x_349 : bool = u_xlatb6.x;
  u_xlat6.x = select(-0.0f, -1.0f, x_349);
  let x_354 : bool = u_xlatb6.y;
  u_xlat6.y = select(-0.0f, -1.0f, x_354);
  let x_358 : bool = u_xlatb6.z;
  u_xlat6.z = select(-0.0f, -1.0f, x_358);
  let x_361 : vec4<f32> = u_xlat6;
  let x_363 : vec4<f32> = u_xlat7;
  let x_365 : vec3<f32> = (vec3<f32>(x_361.x, x_361.y, x_361.z) + vec3<f32>(x_363.y, x_363.z, x_363.w));
  let x_366 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_365.x, x_365.y, x_365.z, x_366.w);
  let x_368 : vec4<f32> = u_xlat6;
  let x_371 : vec3<f32> = max(vec3<f32>(x_368.x, x_368.y, x_368.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_372 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_372.x, x_371.x, x_371.y, x_371.z);
  let x_374 : vec4<f32> = u_xlat7;
  u_xlat78 = dot(x_374, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_379 : f32 = u_xlat78;
  u_xlat78 = (-(x_379) + 4.0f);
  let x_384 : f32 = u_xlat78;
  u_xlatu78 = u32(x_384);
  let x_388 : u32 = u_xlatu78;
  u_xlati78 = (bitcast<i32>(x_388) << bitcast<u32>(2i));
  let x_391 : vec3<f32> = vs_INTERP8;
  let x_393 : i32 = u_xlati78;
  let x_396 : i32 = u_xlati78;
  let x_400 : vec4<f32> = x_264.x_MainLightWorldToShadow[((x_393 + 1i) / 4i)][((x_396 + 1i) % 4i)];
  let x_402 : vec3<f32> = (vec3<f32>(x_391.y, x_391.y, x_391.y) * vec3<f32>(x_400.x, x_400.y, x_400.z));
  let x_403 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_402.x, x_402.y, x_402.z, x_403.w);
  let x_405 : i32 = u_xlati78;
  let x_407 : i32 = u_xlati78;
  let x_410 : vec4<f32> = x_264.x_MainLightWorldToShadow[(x_405 / 4i)][(x_407 % 4i)];
  let x_412 : vec3<f32> = vs_INTERP8;
  let x_415 : vec4<f32> = u_xlat6;
  let x_417 : vec3<f32> = ((vec3<f32>(x_410.x, x_410.y, x_410.z) * vec3<f32>(x_412.x, x_412.x, x_412.x)) + vec3<f32>(x_415.x, x_415.y, x_415.z));
  let x_418 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_417.x, x_417.y, x_417.z, x_418.w);
  let x_420 : i32 = u_xlati78;
  let x_423 : i32 = u_xlati78;
  let x_427 : vec4<f32> = x_264.x_MainLightWorldToShadow[((x_420 + 2i) / 4i)][((x_423 + 2i) % 4i)];
  let x_429 : vec3<f32> = vs_INTERP8;
  let x_432 : vec4<f32> = u_xlat6;
  let x_434 : vec3<f32> = ((vec3<f32>(x_427.x, x_427.y, x_427.z) * vec3<f32>(x_429.z, x_429.z, x_429.z)) + vec3<f32>(x_432.x, x_432.y, x_432.z));
  let x_435 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_434.x, x_434.y, x_434.z, x_435.w);
  let x_437 : vec4<f32> = u_xlat6;
  let x_439 : i32 = u_xlati78;
  let x_442 : i32 = u_xlati78;
  let x_446 : vec4<f32> = x_264.x_MainLightWorldToShadow[((x_439 + 3i) / 4i)][((x_442 + 3i) % 4i)];
  let x_448 : vec3<f32> = (vec3<f32>(x_437.x, x_437.y, x_437.z) + vec3<f32>(x_446.x, x_446.y, x_446.z));
  let x_449 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_448.x, x_448.y, x_448.z, x_449.w);
  let x_452 : f32 = x_264.x_MainLightShadowParams.y;
  u_xlatb78 = (0.0f < x_452);
  let x_454 : bool = u_xlatb78;
  if (x_454) {
    let x_459 : f32 = x_264.x_MainLightShadowParams.y;
    u_xlatb79 = (x_459 == 1.0f);
    let x_461 : bool = u_xlatb79;
    if (x_461) {
      let x_464 : vec4<f32> = u_xlat6;
      let x_468 : vec4<f32> = x_264.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_464.x, x_464.y, x_464.x, x_464.y) + x_468);
      let x_472 : vec4<f32> = u_xlat7;
      let x_473 : vec2<f32> = vec2<f32>(x_472.x, x_472.y);
      let x_475 : f32 = u_xlat6.z;
      txVec0 = vec3<f32>(x_473.x, x_473.y, x_475);
      let x_487 : vec3<f32> = txVec0;
      let x_489 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_487.xy, x_487.z);
      u_xlat8.x = x_489;
      let x_492 : vec4<f32> = u_xlat7;
      let x_493 : vec2<f32> = vec2<f32>(x_492.z, x_492.w);
      let x_495 : f32 = u_xlat6.z;
      txVec1 = vec3<f32>(x_493.x, x_493.y, x_495);
      let x_502 : vec3<f32> = txVec1;
      let x_504 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_502.xy, x_502.z);
      u_xlat8.y = x_504;
      let x_506 : vec4<f32> = u_xlat6;
      let x_509 : vec4<f32> = x_264.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_506.x, x_506.y, x_506.x, x_506.y) + x_509);
      let x_512 : vec4<f32> = u_xlat7;
      let x_513 : vec2<f32> = vec2<f32>(x_512.x, x_512.y);
      let x_515 : f32 = u_xlat6.z;
      txVec2 = vec3<f32>(x_513.x, x_513.y, x_515);
      let x_522 : vec3<f32> = txVec2;
      let x_524 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_522.xy, x_522.z);
      u_xlat8.z = x_524;
      let x_527 : vec4<f32> = u_xlat7;
      let x_528 : vec2<f32> = vec2<f32>(x_527.z, x_527.w);
      let x_530 : f32 = u_xlat6.z;
      txVec3 = vec3<f32>(x_528.x, x_528.y, x_530);
      let x_537 : vec3<f32> = txVec3;
      let x_539 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_537.xy, x_537.z);
      u_xlat8.w = x_539;
      let x_541 : vec4<f32> = u_xlat8;
      u_xlat79 = dot(x_541, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_548 : f32 = x_264.x_MainLightShadowParams.y;
      u_xlatb80 = (x_548 == 2.0f);
      let x_550 : bool = u_xlatb80;
      if (x_550) {
        let x_553 : vec4<f32> = u_xlat6;
        let x_557 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_562 : vec2<f32> = ((vec2<f32>(x_553.x, x_553.y) * vec2<f32>(x_557.z, x_557.w)) + vec2<f32>(0.5f, 0.5f));
        let x_563 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_562.x, x_562.y, x_563.z, x_563.w);
        let x_565 : vec4<f32> = u_xlat7;
        let x_567 : vec2<f32> = floor(vec2<f32>(x_565.x, x_565.y));
        let x_568 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_567.x, x_567.y, x_568.z, x_568.w);
        let x_572 : vec4<f32> = u_xlat6;
        let x_575 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_578 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_572.x, x_572.y) * vec2<f32>(x_575.z, x_575.w)) + -(vec2<f32>(x_578.x, x_578.y)));
        let x_582 : vec2<f32> = u_xlat59;
        u_xlat8 = (vec4<f32>(x_582.x, x_582.x, x_582.y, x_582.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_586 : vec4<f32> = u_xlat8;
        let x_588 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_586.x, x_586.x, x_586.z, x_586.z) * vec4<f32>(x_588.x, x_588.x, x_588.z, x_588.z));
        let x_591 : vec4<f32> = u_xlat9;
        let x_595 : vec2<f32> = (vec2<f32>(x_591.y, x_591.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_596 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_595.x, x_596.y, x_595.y, x_596.w);
        let x_598 : vec4<f32> = u_xlat9;
        let x_601 : vec2<f32> = u_xlat59;
        let x_603 : vec2<f32> = ((vec2<f32>(x_598.x, x_598.z) * vec2<f32>(0.5f, 0.5f)) + -(x_601));
        let x_604 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_603.x, x_603.y, x_604.z, x_604.w);
        let x_607 : vec2<f32> = u_xlat59;
        u_xlat61 = (-(x_607) + vec2<f32>(1.0f, 1.0f));
        let x_612 : vec2<f32> = u_xlat59;
        let x_614 : vec2<f32> = min(x_612, vec2<f32>(0.0f, 0.0f));
        let x_615 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_614.x, x_614.y, x_615.z, x_615.w);
        let x_617 : vec4<f32> = u_xlat10;
        let x_620 : vec4<f32> = u_xlat10;
        let x_623 : vec2<f32> = u_xlat61;
        let x_624 : vec2<f32> = ((-(vec2<f32>(x_617.x, x_617.y)) * vec2<f32>(x_620.x, x_620.y)) + x_623);
        let x_625 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_624.x, x_624.y, x_625.z, x_625.w);
        let x_627 : vec2<f32> = u_xlat59;
        u_xlat59 = max(x_627, vec2<f32>(0.0f, 0.0f));
        let x_629 : vec2<f32> = u_xlat59;
        let x_631 : vec2<f32> = u_xlat59;
        let x_633 : vec4<f32> = u_xlat8;
        u_xlat59 = ((-(x_629) * x_631) + vec2<f32>(x_633.y, x_633.w));
        let x_636 : vec4<f32> = u_xlat10;
        let x_638 : vec2<f32> = (vec2<f32>(x_636.x, x_636.y) + vec2<f32>(1.0f, 1.0f));
        let x_639 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_638.x, x_638.y, x_639.z, x_639.w);
        let x_641 : vec2<f32> = u_xlat59;
        u_xlat59 = (x_641 + vec2<f32>(1.0f, 1.0f));
        let x_644 : vec4<f32> = u_xlat9;
        let x_648 : vec2<f32> = (vec2<f32>(x_644.x, x_644.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_649 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_648.x, x_648.y, x_649.z, x_649.w);
        let x_651 : vec2<f32> = u_xlat61;
        let x_652 : vec2<f32> = (x_651 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_653 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_652.x, x_652.y, x_653.z, x_653.w);
        let x_655 : vec4<f32> = u_xlat10;
        let x_657 : vec2<f32> = (vec2<f32>(x_655.x, x_655.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_658 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_657.x, x_657.y, x_658.z, x_658.w);
        let x_661 : vec2<f32> = u_xlat59;
        let x_662 : vec2<f32> = (x_661 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_663 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_662.x, x_662.y, x_663.z, x_663.w);
        let x_665 : vec4<f32> = u_xlat8;
        u_xlat59 = (vec2<f32>(x_665.y, x_665.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_669 : f32 = u_xlat10.x;
        u_xlat11.z = x_669;
        let x_672 : f32 = u_xlat59.x;
        u_xlat11.w = x_672;
        let x_675 : f32 = u_xlat12.x;
        u_xlat9.z = x_675;
        let x_678 : f32 = u_xlat8.x;
        u_xlat9.w = x_678;
        let x_681 : vec4<f32> = u_xlat9;
        let x_683 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_681.z, x_681.w, x_681.x, x_681.z) + vec4<f32>(x_683.z, x_683.w, x_683.x, x_683.z));
        let x_687 : f32 = u_xlat11.y;
        u_xlat10.z = x_687;
        let x_690 : f32 = u_xlat59.y;
        u_xlat10.w = x_690;
        let x_693 : f32 = u_xlat9.y;
        u_xlat12.z = x_693;
        let x_696 : f32 = u_xlat8.z;
        u_xlat12.w = x_696;
        let x_698 : vec4<f32> = u_xlat10;
        let x_700 : vec4<f32> = u_xlat12;
        let x_702 : vec3<f32> = (vec3<f32>(x_698.z, x_698.y, x_698.w) + vec3<f32>(x_700.z, x_700.y, x_700.w));
        let x_703 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_702.x, x_702.y, x_702.z, x_703.w);
        let x_705 : vec4<f32> = u_xlat9;
        let x_707 : vec4<f32> = u_xlat13;
        let x_709 : vec3<f32> = (vec3<f32>(x_705.x, x_705.z, x_705.w) / vec3<f32>(x_707.z, x_707.w, x_707.y));
        let x_710 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_709.x, x_709.y, x_709.z, x_710.w);
        let x_712 : vec4<f32> = u_xlat9;
        let x_718 : vec3<f32> = (vec3<f32>(x_712.x, x_712.y, x_712.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_719 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_718.x, x_718.y, x_718.z, x_719.w);
        let x_721 : vec4<f32> = u_xlat12;
        let x_723 : vec4<f32> = u_xlat8;
        let x_725 : vec3<f32> = (vec3<f32>(x_721.z, x_721.y, x_721.w) / vec3<f32>(x_723.x, x_723.y, x_723.z));
        let x_726 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_725.x, x_725.y, x_725.z, x_726.w);
        let x_728 : vec4<f32> = u_xlat10;
        let x_730 : vec3<f32> = (vec3<f32>(x_728.x, x_728.y, x_728.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_731 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_730.x, x_730.y, x_730.z, x_731.w);
        let x_733 : vec4<f32> = u_xlat9;
        let x_736 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_738 : vec3<f32> = (vec3<f32>(x_733.y, x_733.x, x_733.z) * vec3<f32>(x_736.x, x_736.x, x_736.x));
        let x_739 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_738.x, x_738.y, x_738.z, x_739.w);
        let x_741 : vec4<f32> = u_xlat10;
        let x_744 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_746 : vec3<f32> = (vec3<f32>(x_741.x, x_741.y, x_741.z) * vec3<f32>(x_744.y, x_744.y, x_744.y));
        let x_747 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_746.x, x_746.y, x_746.z, x_747.w);
        let x_750 : f32 = u_xlat10.x;
        u_xlat9.w = x_750;
        let x_752 : vec4<f32> = u_xlat7;
        let x_755 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_758 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_752.x, x_752.y, x_752.x, x_752.y) * vec4<f32>(x_755.x, x_755.y, x_755.x, x_755.y)) + vec4<f32>(x_758.y, x_758.w, x_758.x, x_758.w));
        let x_761 : vec4<f32> = u_xlat7;
        let x_764 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_767 : vec4<f32> = u_xlat9;
        u_xlat59 = ((vec2<f32>(x_761.x, x_761.y) * vec2<f32>(x_764.x, x_764.y)) + vec2<f32>(x_767.z, x_767.w));
        let x_771 : f32 = u_xlat9.y;
        u_xlat10.w = x_771;
        let x_773 : vec4<f32> = u_xlat10;
        let x_774 : vec2<f32> = vec2<f32>(x_773.y, x_773.z);
        let x_775 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_775.x, x_774.x, x_775.z, x_774.y);
        let x_777 : vec4<f32> = u_xlat7;
        let x_780 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_783 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_777.x, x_777.y, x_777.x, x_777.y) * vec4<f32>(x_780.x, x_780.y, x_780.x, x_780.y)) + vec4<f32>(x_783.x, x_783.y, x_783.z, x_783.y));
        let x_786 : vec4<f32> = u_xlat7;
        let x_789 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_792 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_786.x, x_786.y, x_786.x, x_786.y) * vec4<f32>(x_789.x, x_789.y, x_789.x, x_789.y)) + vec4<f32>(x_792.w, x_792.y, x_792.w, x_792.z));
        let x_795 : vec4<f32> = u_xlat7;
        let x_798 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_801 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_795.x, x_795.y, x_795.x, x_795.y) * vec4<f32>(x_798.x, x_798.y, x_798.x, x_798.y)) + vec4<f32>(x_801.x, x_801.w, x_801.z, x_801.w));
        let x_805 : vec4<f32> = u_xlat8;
        let x_807 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_805.x, x_805.x, x_805.x, x_805.y) * vec4<f32>(x_807.z, x_807.w, x_807.y, x_807.z));
        let x_811 : vec4<f32> = u_xlat8;
        let x_813 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_811.y, x_811.y, x_811.z, x_811.z) * x_813);
        let x_817 : f32 = u_xlat8.z;
        let x_819 : f32 = u_xlat13.y;
        u_xlat80 = (x_817 * x_819);
        let x_822 : vec4<f32> = u_xlat11;
        let x_823 : vec2<f32> = vec2<f32>(x_822.x, x_822.y);
        let x_825 : f32 = u_xlat6.z;
        txVec4 = vec3<f32>(x_823.x, x_823.y, x_825);
        let x_833 : vec3<f32> = txVec4;
        let x_835 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_833.xy, x_833.z);
        u_xlat82 = x_835;
        let x_837 : vec4<f32> = u_xlat11;
        let x_838 : vec2<f32> = vec2<f32>(x_837.z, x_837.w);
        let x_840 : f32 = u_xlat6.z;
        txVec5 = vec3<f32>(x_838.x, x_838.y, x_840);
        let x_848 : vec3<f32> = txVec5;
        let x_850 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_848.xy, x_848.z);
        u_xlat84 = x_850;
        let x_851 : f32 = u_xlat84;
        let x_853 : f32 = u_xlat14.y;
        u_xlat84 = (x_851 * x_853);
        let x_856 : f32 = u_xlat14.x;
        let x_857 : f32 = u_xlat82;
        let x_859 : f32 = u_xlat84;
        u_xlat82 = ((x_856 * x_857) + x_859);
        let x_862 : vec2<f32> = u_xlat59;
        let x_864 : f32 = u_xlat6.z;
        txVec6 = vec3<f32>(x_862.x, x_862.y, x_864);
        let x_871 : vec3<f32> = txVec6;
        let x_873 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_871.xy, x_871.z);
        u_xlat84 = x_873;
        let x_875 : f32 = u_xlat14.z;
        let x_876 : f32 = u_xlat84;
        let x_878 : f32 = u_xlat82;
        u_xlat82 = ((x_875 * x_876) + x_878);
        let x_881 : vec4<f32> = u_xlat10;
        let x_882 : vec2<f32> = vec2<f32>(x_881.x, x_881.y);
        let x_884 : f32 = u_xlat6.z;
        txVec7 = vec3<f32>(x_882.x, x_882.y, x_884);
        let x_891 : vec3<f32> = txVec7;
        let x_893 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_891.xy, x_891.z);
        u_xlat84 = x_893;
        let x_895 : f32 = u_xlat14.w;
        let x_896 : f32 = u_xlat84;
        let x_898 : f32 = u_xlat82;
        u_xlat82 = ((x_895 * x_896) + x_898);
        let x_901 : vec4<f32> = u_xlat12;
        let x_902 : vec2<f32> = vec2<f32>(x_901.x, x_901.y);
        let x_904 : f32 = u_xlat6.z;
        txVec8 = vec3<f32>(x_902.x, x_902.y, x_904);
        let x_911 : vec3<f32> = txVec8;
        let x_913 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_911.xy, x_911.z);
        u_xlat84 = x_913;
        let x_915 : f32 = u_xlat15.x;
        let x_916 : f32 = u_xlat84;
        let x_918 : f32 = u_xlat82;
        u_xlat82 = ((x_915 * x_916) + x_918);
        let x_921 : vec4<f32> = u_xlat12;
        let x_922 : vec2<f32> = vec2<f32>(x_921.z, x_921.w);
        let x_924 : f32 = u_xlat6.z;
        txVec9 = vec3<f32>(x_922.x, x_922.y, x_924);
        let x_931 : vec3<f32> = txVec9;
        let x_933 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_931.xy, x_931.z);
        u_xlat84 = x_933;
        let x_935 : f32 = u_xlat15.y;
        let x_936 : f32 = u_xlat84;
        let x_938 : f32 = u_xlat82;
        u_xlat82 = ((x_935 * x_936) + x_938);
        let x_941 : vec4<f32> = u_xlat10;
        let x_942 : vec2<f32> = vec2<f32>(x_941.z, x_941.w);
        let x_944 : f32 = u_xlat6.z;
        txVec10 = vec3<f32>(x_942.x, x_942.y, x_944);
        let x_951 : vec3<f32> = txVec10;
        let x_953 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_951.xy, x_951.z);
        u_xlat84 = x_953;
        let x_955 : f32 = u_xlat15.z;
        let x_956 : f32 = u_xlat84;
        let x_958 : f32 = u_xlat82;
        u_xlat82 = ((x_955 * x_956) + x_958);
        let x_961 : vec4<f32> = u_xlat9;
        let x_962 : vec2<f32> = vec2<f32>(x_961.x, x_961.y);
        let x_964 : f32 = u_xlat6.z;
        txVec11 = vec3<f32>(x_962.x, x_962.y, x_964);
        let x_971 : vec3<f32> = txVec11;
        let x_973 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_971.xy, x_971.z);
        u_xlat84 = x_973;
        let x_975 : f32 = u_xlat15.w;
        let x_976 : f32 = u_xlat84;
        let x_978 : f32 = u_xlat82;
        u_xlat82 = ((x_975 * x_976) + x_978);
        let x_981 : vec4<f32> = u_xlat9;
        let x_982 : vec2<f32> = vec2<f32>(x_981.z, x_981.w);
        let x_984 : f32 = u_xlat6.z;
        txVec12 = vec3<f32>(x_982.x, x_982.y, x_984);
        let x_991 : vec3<f32> = txVec12;
        let x_993 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_991.xy, x_991.z);
        u_xlat84 = x_993;
        let x_994 : f32 = u_xlat80;
        let x_995 : f32 = u_xlat84;
        let x_997 : f32 = u_xlat82;
        u_xlat79 = ((x_994 * x_995) + x_997);
      } else {
        let x_1000 : vec4<f32> = u_xlat6;
        let x_1003 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_1006 : vec2<f32> = ((vec2<f32>(x_1000.x, x_1000.y) * vec2<f32>(x_1003.z, x_1003.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1007 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1006.x, x_1006.y, x_1007.z, x_1007.w);
        let x_1009 : vec4<f32> = u_xlat7;
        let x_1011 : vec2<f32> = floor(vec2<f32>(x_1009.x, x_1009.y));
        let x_1012 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1011.x, x_1011.y, x_1012.z, x_1012.w);
        let x_1014 : vec4<f32> = u_xlat6;
        let x_1017 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_1020 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_1014.x, x_1014.y) * vec2<f32>(x_1017.z, x_1017.w)) + -(vec2<f32>(x_1020.x, x_1020.y)));
        let x_1024 : vec2<f32> = u_xlat59;
        u_xlat8 = (vec4<f32>(x_1024.x, x_1024.x, x_1024.y, x_1024.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1027 : vec4<f32> = u_xlat8;
        let x_1029 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1027.x, x_1027.x, x_1027.z, x_1027.z) * vec4<f32>(x_1029.x, x_1029.x, x_1029.z, x_1029.z));
        let x_1032 : vec4<f32> = u_xlat9;
        let x_1036 : vec2<f32> = (vec2<f32>(x_1032.y, x_1032.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1037 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1037.x, x_1036.x, x_1037.z, x_1036.y);
        let x_1039 : vec4<f32> = u_xlat9;
        let x_1042 : vec2<f32> = u_xlat59;
        let x_1044 : vec2<f32> = ((vec2<f32>(x_1039.x, x_1039.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1042));
        let x_1045 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1044.x, x_1045.y, x_1044.y, x_1045.w);
        let x_1047 : vec2<f32> = u_xlat59;
        let x_1049 : vec2<f32> = (-(x_1047) + vec2<f32>(1.0f, 1.0f));
        let x_1050 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1049.x, x_1049.y, x_1050.z, x_1050.w);
        let x_1052 : vec2<f32> = u_xlat59;
        u_xlat61 = min(x_1052, vec2<f32>(0.0f, 0.0f));
        let x_1054 : vec2<f32> = u_xlat61;
        let x_1056 : vec2<f32> = u_xlat61;
        let x_1058 : vec4<f32> = u_xlat9;
        let x_1060 : vec2<f32> = ((-(x_1054) * x_1056) + vec2<f32>(x_1058.x, x_1058.y));
        let x_1061 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1060.x, x_1060.y, x_1061.z, x_1061.w);
        let x_1063 : vec2<f32> = u_xlat59;
        u_xlat61 = max(x_1063, vec2<f32>(0.0f, 0.0f));
        let x_1066 : vec2<f32> = u_xlat61;
        let x_1068 : vec2<f32> = u_xlat61;
        let x_1070 : vec4<f32> = u_xlat8;
        let x_1072 : vec2<f32> = ((-(x_1066) * x_1068) + vec2<f32>(x_1070.y, x_1070.w));
        let x_1073 : vec3<f32> = u_xlat34;
        u_xlat34 = vec3<f32>(x_1072.x, x_1073.y, x_1072.y);
        let x_1075 : vec4<f32> = u_xlat9;
        let x_1078 : vec2<f32> = (vec2<f32>(x_1075.x, x_1075.y) + vec2<f32>(2.0f, 2.0f));
        let x_1079 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1078.x, x_1078.y, x_1079.z, x_1079.w);
        let x_1081 : vec3<f32> = u_xlat34;
        let x_1083 : vec2<f32> = (vec2<f32>(x_1081.x, x_1081.z) + vec2<f32>(2.0f, 2.0f));
        let x_1084 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1084.x, x_1083.x, x_1084.z, x_1083.y);
        let x_1087 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1087 * 0.08163200318813323975f);
        let x_1091 : vec4<f32> = u_xlat8;
        let x_1094 : vec3<f32> = (vec3<f32>(x_1091.z, x_1091.x, x_1091.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1095 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1094.x, x_1094.y, x_1094.z, x_1095.w);
        let x_1097 : vec4<f32> = u_xlat9;
        let x_1100 : vec2<f32> = (vec2<f32>(x_1097.x, x_1097.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1101 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1100.x, x_1100.y, x_1101.z, x_1101.w);
        let x_1104 : f32 = u_xlat12.y;
        u_xlat11.x = x_1104;
        let x_1106 : vec2<f32> = u_xlat59;
        let x_1113 : vec2<f32> = ((vec2<f32>(x_1106.x, x_1106.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1114 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1114.x, x_1113.x, x_1114.z, x_1113.y);
        let x_1116 : vec2<f32> = u_xlat59;
        let x_1120 : vec2<f32> = ((vec2<f32>(x_1116.x, x_1116.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1121 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1120.x, x_1121.y, x_1120.y, x_1121.w);
        let x_1124 : f32 = u_xlat8.x;
        u_xlat9.y = x_1124;
        let x_1127 : f32 = u_xlat10.y;
        u_xlat9.w = x_1127;
        let x_1129 : vec4<f32> = u_xlat9;
        let x_1130 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1129 + x_1130);
        let x_1132 : vec2<f32> = u_xlat59;
        let x_1135 : vec2<f32> = ((vec2<f32>(x_1132.y, x_1132.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1136 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1136.x, x_1135.x, x_1136.z, x_1135.y);
        let x_1138 : vec2<f32> = u_xlat59;
        let x_1141 : vec2<f32> = ((vec2<f32>(x_1138.y, x_1138.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1142 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1141.x, x_1142.y, x_1141.y, x_1142.w);
        let x_1145 : f32 = u_xlat8.y;
        u_xlat10.y = x_1145;
        let x_1147 : vec4<f32> = u_xlat10;
        let x_1148 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1147 + x_1148);
        let x_1150 : vec4<f32> = u_xlat9;
        let x_1151 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1150 / x_1151);
        let x_1153 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1153 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1159 : vec4<f32> = u_xlat10;
        let x_1160 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1159 / x_1160);
        let x_1162 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1162 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1164 : vec4<f32> = u_xlat9;
        let x_1167 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1164.w, x_1164.x, x_1164.y, x_1164.z) * vec4<f32>(x_1167.x, x_1167.x, x_1167.x, x_1167.x));
        let x_1170 : vec4<f32> = u_xlat10;
        let x_1173 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1170.x, x_1170.w, x_1170.y, x_1170.z) * vec4<f32>(x_1173.y, x_1173.y, x_1173.y, x_1173.y));
        let x_1176 : vec4<f32> = u_xlat9;
        let x_1177 : vec3<f32> = vec3<f32>(x_1176.y, x_1176.z, x_1176.w);
        let x_1178 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1177.x, x_1178.y, x_1177.y, x_1177.z);
        let x_1181 : f32 = u_xlat10.x;
        u_xlat12.y = x_1181;
        let x_1183 : vec4<f32> = u_xlat7;
        let x_1186 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_1189 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1183.x, x_1183.y, x_1183.x, x_1183.y) * vec4<f32>(x_1186.x, x_1186.y, x_1186.x, x_1186.y)) + vec4<f32>(x_1189.x, x_1189.y, x_1189.z, x_1189.y));
        let x_1192 : vec4<f32> = u_xlat7;
        let x_1195 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_1198 : vec4<f32> = u_xlat12;
        u_xlat59 = ((vec2<f32>(x_1192.x, x_1192.y) * vec2<f32>(x_1195.x, x_1195.y)) + vec2<f32>(x_1198.w, x_1198.y));
        let x_1202 : f32 = u_xlat12.y;
        u_xlat9.y = x_1202;
        let x_1205 : f32 = u_xlat10.z;
        u_xlat12.y = x_1205;
        let x_1207 : vec4<f32> = u_xlat7;
        let x_1210 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_1213 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1207.x, x_1207.y, x_1207.x, x_1207.y) * vec4<f32>(x_1210.x, x_1210.y, x_1210.x, x_1210.y)) + vec4<f32>(x_1213.x, x_1213.y, x_1213.z, x_1213.y));
        let x_1216 : vec4<f32> = u_xlat7;
        let x_1219 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_1222 : vec4<f32> = u_xlat12;
        let x_1224 : vec2<f32> = ((vec2<f32>(x_1216.x, x_1216.y) * vec2<f32>(x_1219.x, x_1219.y)) + vec2<f32>(x_1222.w, x_1222.y));
        let x_1225 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1224.x, x_1224.y, x_1225.z, x_1225.w);
        let x_1228 : f32 = u_xlat12.y;
        u_xlat9.z = x_1228;
        let x_1231 : vec4<f32> = u_xlat7;
        let x_1234 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_1237 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1231.x, x_1231.y, x_1231.x, x_1231.y) * vec4<f32>(x_1234.x, x_1234.y, x_1234.x, x_1234.y)) + vec4<f32>(x_1237.x, x_1237.y, x_1237.x, x_1237.z));
        let x_1241 : f32 = u_xlat10.w;
        u_xlat12.y = x_1241;
        let x_1244 : vec4<f32> = u_xlat7;
        let x_1247 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_1250 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1244.x, x_1244.y, x_1244.x, x_1244.y) * vec4<f32>(x_1247.x, x_1247.y, x_1247.x, x_1247.y)) + vec4<f32>(x_1250.x, x_1250.y, x_1250.z, x_1250.y));
        let x_1254 : vec4<f32> = u_xlat7;
        let x_1257 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_1260 : vec4<f32> = u_xlat12;
        u_xlat35 = ((vec2<f32>(x_1254.x, x_1254.y) * vec2<f32>(x_1257.x, x_1257.y)) + vec2<f32>(x_1260.w, x_1260.y));
        let x_1264 : f32 = u_xlat12.y;
        u_xlat9.w = x_1264;
        let x_1267 : vec4<f32> = u_xlat7;
        let x_1270 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_1273 : vec4<f32> = u_xlat9;
        u_xlat67 = ((vec2<f32>(x_1267.x, x_1267.y) * vec2<f32>(x_1270.x, x_1270.y)) + vec2<f32>(x_1273.x, x_1273.w));
        let x_1276 : vec4<f32> = u_xlat12;
        let x_1277 : vec3<f32> = vec3<f32>(x_1276.x, x_1276.z, x_1276.w);
        let x_1278 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1277.x, x_1278.y, x_1277.y, x_1277.z);
        let x_1280 : vec4<f32> = u_xlat7;
        let x_1283 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_1286 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1280.x, x_1280.y, x_1280.x, x_1280.y) * vec4<f32>(x_1283.x, x_1283.y, x_1283.x, x_1283.y)) + vec4<f32>(x_1286.x, x_1286.y, x_1286.z, x_1286.y));
        let x_1290 : vec4<f32> = u_xlat7;
        let x_1293 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_1296 : vec4<f32> = u_xlat10;
        u_xlat62 = ((vec2<f32>(x_1290.x, x_1290.y) * vec2<f32>(x_1293.x, x_1293.y)) + vec2<f32>(x_1296.w, x_1296.y));
        let x_1300 : f32 = u_xlat9.x;
        u_xlat10.x = x_1300;
        let x_1302 : vec4<f32> = u_xlat7;
        let x_1305 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_1308 : vec4<f32> = u_xlat10;
        let x_1310 : vec2<f32> = ((vec2<f32>(x_1302.x, x_1302.y) * vec2<f32>(x_1305.x, x_1305.y)) + vec2<f32>(x_1308.x, x_1308.y));
        let x_1311 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1310.x, x_1310.y, x_1311.z, x_1311.w);
        let x_1314 : vec4<f32> = u_xlat8;
        let x_1316 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1314.x, x_1314.x, x_1314.x, x_1314.x) * x_1316);
        let x_1319 : vec4<f32> = u_xlat8;
        let x_1321 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1319.y, x_1319.y, x_1319.y, x_1319.y) * x_1321);
        let x_1324 : vec4<f32> = u_xlat8;
        let x_1326 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1324.z, x_1324.z, x_1324.z, x_1324.z) * x_1326);
        let x_1328 : vec4<f32> = u_xlat8;
        let x_1330 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1328.w, x_1328.w, x_1328.w, x_1328.w) * x_1330);
        let x_1333 : vec4<f32> = u_xlat13;
        let x_1334 : vec2<f32> = vec2<f32>(x_1333.x, x_1333.y);
        let x_1336 : f32 = u_xlat6.z;
        txVec13 = vec3<f32>(x_1334.x, x_1334.y, x_1336);
        let x_1343 : vec3<f32> = txVec13;
        let x_1345 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1343.xy, x_1343.z);
        u_xlat80 = x_1345;
        let x_1347 : vec4<f32> = u_xlat13;
        let x_1348 : vec2<f32> = vec2<f32>(x_1347.z, x_1347.w);
        let x_1350 : f32 = u_xlat6.z;
        txVec14 = vec3<f32>(x_1348.x, x_1348.y, x_1350);
        let x_1357 : vec3<f32> = txVec14;
        let x_1359 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1357.xy, x_1357.z);
        u_xlat82 = x_1359;
        let x_1360 : f32 = u_xlat82;
        let x_1362 : f32 = u_xlat18.y;
        u_xlat82 = (x_1360 * x_1362);
        let x_1365 : f32 = u_xlat18.x;
        let x_1366 : f32 = u_xlat80;
        let x_1368 : f32 = u_xlat82;
        u_xlat80 = ((x_1365 * x_1366) + x_1368);
        let x_1371 : vec2<f32> = u_xlat59;
        let x_1373 : f32 = u_xlat6.z;
        txVec15 = vec3<f32>(x_1371.x, x_1371.y, x_1373);
        let x_1380 : vec3<f32> = txVec15;
        let x_1382 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1380.xy, x_1380.z);
        u_xlat82 = x_1382;
        let x_1384 : f32 = u_xlat18.z;
        let x_1385 : f32 = u_xlat82;
        let x_1387 : f32 = u_xlat80;
        u_xlat80 = ((x_1384 * x_1385) + x_1387);
        let x_1390 : vec4<f32> = u_xlat16;
        let x_1391 : vec2<f32> = vec2<f32>(x_1390.x, x_1390.y);
        let x_1393 : f32 = u_xlat6.z;
        txVec16 = vec3<f32>(x_1391.x, x_1391.y, x_1393);
        let x_1400 : vec3<f32> = txVec16;
        let x_1402 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1400.xy, x_1400.z);
        u_xlat82 = x_1402;
        let x_1404 : f32 = u_xlat18.w;
        let x_1405 : f32 = u_xlat82;
        let x_1407 : f32 = u_xlat80;
        u_xlat80 = ((x_1404 * x_1405) + x_1407);
        let x_1410 : vec4<f32> = u_xlat14;
        let x_1411 : vec2<f32> = vec2<f32>(x_1410.x, x_1410.y);
        let x_1413 : f32 = u_xlat6.z;
        txVec17 = vec3<f32>(x_1411.x, x_1411.y, x_1413);
        let x_1420 : vec3<f32> = txVec17;
        let x_1422 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1420.xy, x_1420.z);
        u_xlat82 = x_1422;
        let x_1424 : f32 = u_xlat19.x;
        let x_1425 : f32 = u_xlat82;
        let x_1427 : f32 = u_xlat80;
        u_xlat80 = ((x_1424 * x_1425) + x_1427);
        let x_1430 : vec4<f32> = u_xlat14;
        let x_1431 : vec2<f32> = vec2<f32>(x_1430.z, x_1430.w);
        let x_1433 : f32 = u_xlat6.z;
        txVec18 = vec3<f32>(x_1431.x, x_1431.y, x_1433);
        let x_1440 : vec3<f32> = txVec18;
        let x_1442 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1440.xy, x_1440.z);
        u_xlat82 = x_1442;
        let x_1444 : f32 = u_xlat19.y;
        let x_1445 : f32 = u_xlat82;
        let x_1447 : f32 = u_xlat80;
        u_xlat80 = ((x_1444 * x_1445) + x_1447);
        let x_1450 : vec4<f32> = u_xlat15;
        let x_1451 : vec2<f32> = vec2<f32>(x_1450.x, x_1450.y);
        let x_1453 : f32 = u_xlat6.z;
        txVec19 = vec3<f32>(x_1451.x, x_1451.y, x_1453);
        let x_1460 : vec3<f32> = txVec19;
        let x_1462 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1460.xy, x_1460.z);
        u_xlat82 = x_1462;
        let x_1464 : f32 = u_xlat19.z;
        let x_1465 : f32 = u_xlat82;
        let x_1467 : f32 = u_xlat80;
        u_xlat80 = ((x_1464 * x_1465) + x_1467);
        let x_1470 : vec4<f32> = u_xlat16;
        let x_1471 : vec2<f32> = vec2<f32>(x_1470.z, x_1470.w);
        let x_1473 : f32 = u_xlat6.z;
        txVec20 = vec3<f32>(x_1471.x, x_1471.y, x_1473);
        let x_1480 : vec3<f32> = txVec20;
        let x_1482 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1480.xy, x_1480.z);
        u_xlat82 = x_1482;
        let x_1484 : f32 = u_xlat19.w;
        let x_1485 : f32 = u_xlat82;
        let x_1487 : f32 = u_xlat80;
        u_xlat80 = ((x_1484 * x_1485) + x_1487);
        let x_1490 : vec4<f32> = u_xlat17;
        let x_1491 : vec2<f32> = vec2<f32>(x_1490.x, x_1490.y);
        let x_1493 : f32 = u_xlat6.z;
        txVec21 = vec3<f32>(x_1491.x, x_1491.y, x_1493);
        let x_1500 : vec3<f32> = txVec21;
        let x_1502 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1500.xy, x_1500.z);
        u_xlat82 = x_1502;
        let x_1504 : f32 = u_xlat20.x;
        let x_1505 : f32 = u_xlat82;
        let x_1507 : f32 = u_xlat80;
        u_xlat80 = ((x_1504 * x_1505) + x_1507);
        let x_1510 : vec4<f32> = u_xlat17;
        let x_1511 : vec2<f32> = vec2<f32>(x_1510.z, x_1510.w);
        let x_1513 : f32 = u_xlat6.z;
        txVec22 = vec3<f32>(x_1511.x, x_1511.y, x_1513);
        let x_1520 : vec3<f32> = txVec22;
        let x_1522 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1520.xy, x_1520.z);
        u_xlat82 = x_1522;
        let x_1524 : f32 = u_xlat20.y;
        let x_1525 : f32 = u_xlat82;
        let x_1527 : f32 = u_xlat80;
        u_xlat80 = ((x_1524 * x_1525) + x_1527);
        let x_1530 : vec2<f32> = u_xlat35;
        let x_1532 : f32 = u_xlat6.z;
        txVec23 = vec3<f32>(x_1530.x, x_1530.y, x_1532);
        let x_1539 : vec3<f32> = txVec23;
        let x_1541 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1539.xy, x_1539.z);
        u_xlat82 = x_1541;
        let x_1543 : f32 = u_xlat20.z;
        let x_1544 : f32 = u_xlat82;
        let x_1546 : f32 = u_xlat80;
        u_xlat80 = ((x_1543 * x_1544) + x_1546);
        let x_1549 : vec2<f32> = u_xlat67;
        let x_1551 : f32 = u_xlat6.z;
        txVec24 = vec3<f32>(x_1549.x, x_1549.y, x_1551);
        let x_1558 : vec3<f32> = txVec24;
        let x_1560 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1558.xy, x_1558.z);
        u_xlat82 = x_1560;
        let x_1562 : f32 = u_xlat20.w;
        let x_1563 : f32 = u_xlat82;
        let x_1565 : f32 = u_xlat80;
        u_xlat80 = ((x_1562 * x_1563) + x_1565);
        let x_1568 : vec4<f32> = u_xlat12;
        let x_1569 : vec2<f32> = vec2<f32>(x_1568.x, x_1568.y);
        let x_1571 : f32 = u_xlat6.z;
        txVec25 = vec3<f32>(x_1569.x, x_1569.y, x_1571);
        let x_1578 : vec3<f32> = txVec25;
        let x_1580 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1578.xy, x_1578.z);
        u_xlat82 = x_1580;
        let x_1582 : f32 = u_xlat8.x;
        let x_1583 : f32 = u_xlat82;
        let x_1585 : f32 = u_xlat80;
        u_xlat80 = ((x_1582 * x_1583) + x_1585);
        let x_1588 : vec4<f32> = u_xlat12;
        let x_1589 : vec2<f32> = vec2<f32>(x_1588.z, x_1588.w);
        let x_1591 : f32 = u_xlat6.z;
        txVec26 = vec3<f32>(x_1589.x, x_1589.y, x_1591);
        let x_1598 : vec3<f32> = txVec26;
        let x_1600 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1598.xy, x_1598.z);
        u_xlat82 = x_1600;
        let x_1602 : f32 = u_xlat8.y;
        let x_1603 : f32 = u_xlat82;
        let x_1605 : f32 = u_xlat80;
        u_xlat80 = ((x_1602 * x_1603) + x_1605);
        let x_1608 : vec2<f32> = u_xlat62;
        let x_1610 : f32 = u_xlat6.z;
        txVec27 = vec3<f32>(x_1608.x, x_1608.y, x_1610);
        let x_1617 : vec3<f32> = txVec27;
        let x_1619 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1617.xy, x_1617.z);
        u_xlat82 = x_1619;
        let x_1621 : f32 = u_xlat8.z;
        let x_1622 : f32 = u_xlat82;
        let x_1624 : f32 = u_xlat80;
        u_xlat80 = ((x_1621 * x_1622) + x_1624);
        let x_1627 : vec4<f32> = u_xlat7;
        let x_1628 : vec2<f32> = vec2<f32>(x_1627.x, x_1627.y);
        let x_1630 : f32 = u_xlat6.z;
        txVec28 = vec3<f32>(x_1628.x, x_1628.y, x_1630);
        let x_1637 : vec3<f32> = txVec28;
        let x_1639 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1637.xy, x_1637.z);
        u_xlat82 = x_1639;
        let x_1641 : f32 = u_xlat8.w;
        let x_1642 : f32 = u_xlat82;
        let x_1644 : f32 = u_xlat80;
        u_xlat79 = ((x_1641 * x_1642) + x_1644);
      }
    }
  } else {
    let x_1648 : vec4<f32> = u_xlat6;
    let x_1649 : vec2<f32> = vec2<f32>(x_1648.x, x_1648.y);
    let x_1651 : f32 = u_xlat6.z;
    txVec29 = vec3<f32>(x_1649.x, x_1649.y, x_1651);
    let x_1658 : vec3<f32> = txVec29;
    let x_1660 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1658.xy, x_1658.z);
    u_xlat79 = x_1660;
  }
  let x_1662 : f32 = x_264.x_MainLightShadowParams.x;
  u_xlat80 = (-(x_1662) + 1.0f);
  let x_1665 : f32 = u_xlat79;
  let x_1667 : f32 = x_264.x_MainLightShadowParams.x;
  let x_1669 : f32 = u_xlat80;
  u_xlat79 = ((x_1665 * x_1667) + x_1669);
  let x_1673 : f32 = u_xlat6.z;
  u_xlatb82 = (0.0f >= x_1673);
  let x_1677 : f32 = u_xlat6.z;
  u_xlatb84 = (x_1677 >= 1.0f);
  let x_1679 : bool = u_xlatb82;
  let x_1680 : bool = u_xlatb84;
  u_xlatb82 = (x_1679 | x_1680);
  let x_1682 : bool = u_xlatb82;
  let x_1683 : f32 = u_xlat79;
  u_xlat79 = select(x_1683, 1.0f, x_1682);
  let x_1685 : vec3<f32> = u_xlat0;
  let x_1687 : vec4<f32> = x_75.x_MainLightPosition;
  u_xlat0.x = dot(x_1685, -(vec3<f32>(x_1687.x, x_1687.y, x_1687.z)));
  let x_1693 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1693, 0.0f, 1.0f);
  let x_1696 : f32 = u_xlat79;
  let x_1699 : vec4<f32> = x_75.x_MainLightColor;
  let x_1701 : vec3<f32> = (vec3<f32>(x_1696, x_1696, x_1696) * vec3<f32>(x_1699.x, x_1699.y, x_1699.z));
  let x_1702 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1701.x, x_1701.y, x_1701.z, x_1702.w);
  let x_1704 : vec3<f32> = u_xlat0;
  let x_1706 : vec4<f32> = u_xlat7;
  u_xlat0 = (vec3<f32>(x_1704.x, x_1704.x, x_1704.x) * vec3<f32>(x_1706.x, x_1706.y, x_1706.z));
  let x_1709 : vec3<f32> = u_xlat0;
  let x_1710 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_1709 * vec3<f32>(x_1710.x, x_1710.y, x_1710.z));
  let x_1714 : f32 = x_148.unity_LODFade.x;
  u_xlatb79 = (x_1714 < 0.0f);
  let x_1717 : f32 = x_148.unity_LODFade.x;
  u_xlat3.x = (x_1717 + 1.0f);
  let x_1720 : bool = u_xlatb79;
  if (x_1720) {
    let x_1725 : f32 = u_xlat3.x;
    x_1721 = x_1725;
  } else {
    let x_1728 : f32 = x_148.unity_LODFade.x;
    x_1721 = x_1728;
  }
  let x_1729 : f32 = x_1721;
  u_xlat79 = x_1729;
  let x_1731 : f32 = u_xlat79;
  u_xlatb3 = (0.5f >= x_1731);
  let x_1733 : vec3<f32> = u_xlat1;
  let x_1736 : vec4<f32> = x_75.x_ScreenParams;
  u_xlat1 = (abs(x_1733) * vec3<f32>(x_1736.x, x_1736.y, x_1736.x));
  let x_1742 : vec3<f32> = u_xlat1;
  u_xlatu1 = vec3<u32>(x_1742);
  let x_1746 : u32 = u_xlatu1.z;
  u_xlatu53 = (x_1746 * 1025u);
  let x_1750 : u32 = u_xlatu53;
  u_xlatu29 = (x_1750 >> 6u);
  let x_1754 : u32 = u_xlatu53;
  let x_1755 : u32 = u_xlatu29;
  u_xlati53 = bitcast<i32>((x_1754 ^ x_1755));
  let x_1758 : i32 = u_xlati53;
  u_xlatu53 = (bitcast<u32>(x_1758) * 9u);
  let x_1762 : u32 = u_xlatu53;
  u_xlatu29 = (x_1762 >> 11u);
  let x_1765 : u32 = u_xlatu53;
  let x_1766 : u32 = u_xlatu29;
  u_xlati53 = bitcast<i32>((x_1765 ^ x_1766));
  let x_1769 : i32 = u_xlati53;
  u_xlati53 = (x_1769 * 32769i);
  let x_1773 : i32 = u_xlati53;
  let x_1776 : u32 = u_xlatu1.y;
  u_xlati27 = bitcast<i32>((bitcast<u32>(x_1773) ^ x_1776));
  let x_1780 : i32 = u_xlati27;
  u_xlatu27 = (bitcast<u32>(x_1780) * 1025u);
  let x_1783 : u32 = u_xlatu27;
  u_xlatu53 = (x_1783 >> 6u);
  let x_1785 : u32 = u_xlatu53;
  let x_1786 : u32 = u_xlatu27;
  u_xlati27 = bitcast<i32>((x_1785 ^ x_1786));
  let x_1789 : i32 = u_xlati27;
  u_xlatu27 = (bitcast<u32>(x_1789) * 9u);
  let x_1792 : u32 = u_xlatu27;
  u_xlatu53 = (x_1792 >> 11u);
  let x_1794 : u32 = u_xlatu53;
  let x_1795 : u32 = u_xlatu27;
  u_xlati27 = bitcast<i32>((x_1794 ^ x_1795));
  let x_1798 : i32 = u_xlati27;
  u_xlati27 = (x_1798 * 32769i);
  let x_1801 : i32 = u_xlati27;
  let x_1804 : u32 = u_xlatu1.x;
  u_xlati1 = bitcast<i32>((bitcast<u32>(x_1801) ^ x_1804));
  let x_1807 : i32 = u_xlati1;
  u_xlatu1.x = (bitcast<u32>(x_1807) * 1025u);
  let x_1812 : u32 = u_xlatu1.x;
  u_xlatu27 = (x_1812 >> 6u);
  let x_1814 : u32 = u_xlatu27;
  let x_1816 : u32 = u_xlatu1.x;
  u_xlati1 = bitcast<i32>((x_1814 ^ x_1816));
  let x_1819 : i32 = u_xlati1;
  u_xlatu1.x = (bitcast<u32>(x_1819) * 9u);
  let x_1824 : u32 = u_xlatu1.x;
  u_xlatu27 = (x_1824 >> 11u);
  let x_1826 : u32 = u_xlatu27;
  let x_1828 : u32 = u_xlatu1.x;
  u_xlati1 = bitcast<i32>((x_1826 ^ x_1828));
  let x_1831 : i32 = u_xlati1;
  u_xlati1 = (x_1831 * 32769i);
  param = 1065353216i;
  let x_1837 : i32 = u_xlati1;
  param_1 = x_1837;
  param_2 = 0i;
  param_3 = 23i;
  let x_1840 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlat1.x = bitcast<f32>(x_1840);
  let x_1844 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1844 + -1.0f);
  let x_1849 : f32 = u_xlat1.x;
  u_xlat27 = (-(x_1849) + 1.0f);
  let x_1852 : bool = u_xlatb3;
  if (x_1852) {
    let x_1857 : f32 = u_xlat1.x;
    x_1853 = x_1857;
  } else {
    let x_1859 : f32 = u_xlat27;
    x_1853 = x_1859;
  }
  let x_1860 : f32 = x_1853;
  u_xlat1.x = x_1860;
  let x_1862 : f32 = u_xlat79;
  let x_1865 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1862 * 2.0f) + -(x_1865));
  let x_1870 : f32 = u_xlat1.x;
  let x_1872 : f32 = u_xlat3.w;
  u_xlat27 = (x_1870 * x_1872);
  let x_1877 : f32 = u_xlat27;
  u_xlatb53.x = (x_1877 >= 0.40000000596046447754f);
  let x_1883 : bool = u_xlatb53.x;
  let x_1884 : f32 = u_xlat27;
  u_xlat53.x = select(0.0f, x_1884, x_1883);
  let x_1888 : f32 = u_xlat3.w;
  let x_1890 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1888 * x_1890) + -0.40000000596046447754f);
  let x_1895 : f32 = u_xlat27;
  u_xlat79 = dpdxCoarse(x_1895);
  let x_1897 : f32 = u_xlat27;
  u_xlat27 = dpdyCoarse(x_1897);
  let x_1899 : f32 = u_xlat27;
  let x_1901 : f32 = u_xlat79;
  u_xlat27 = (abs(x_1899) + abs(x_1901));
  let x_1904 : f32 = u_xlat27;
  u_xlat27 = max(x_1904, 0.00009999999747378752f);
  let x_1908 : f32 = u_xlat1.x;
  let x_1909 : f32 = u_xlat27;
  u_xlat1.x = (x_1908 / x_1909);
  let x_1913 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1913 + 0.5f);
  let x_1917 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1917, 0.0f, 1.0f);
  let x_1922 : f32 = x_75.x_AlphaToMaskAvailable;
  u_xlatb27 = !((x_1922 == 0.0f));
  let x_1924 : bool = u_xlatb27;
  if (x_1924) {
    let x_1929 : f32 = u_xlat1.x;
    x_1925 = x_1929;
  } else {
    let x_1932 : f32 = u_xlat53.x;
    x_1925 = x_1932;
  }
  let x_1933 : f32 = x_1925;
  u_xlat1.x = x_1933;
  let x_1936 : f32 = u_xlat1.x;
  u_xlat53.x = (x_1936 + -0.00009999999747378752f);
  let x_1941 : f32 = u_xlat53.x;
  u_xlatb53.x = (x_1941 < 0.0f);
  let x_1945 : bool = u_xlatb53.x;
  if (((select(0i, 1i, x_1945) * -1i) != 0i)) {
    discard;
  }
  let x_1955 : f32 = vs_INTERP4.w;
  u_xlatb53.x = (0.0f < x_1955);
  let x_1959 : f32 = x_148.unity_WorldTransformParams.w;
  u_xlatb53.y = (x_1959 >= 0.0f);
  let x_1963 : bool = u_xlatb53.x;
  u_xlat53.x = select(-1.0f, 1.0f, x_1963);
  let x_1967 : bool = u_xlatb53.y;
  u_xlat53.y = select(-1.0f, 1.0f, x_1967);
  let x_1971 : f32 = u_xlat53.y;
  let x_1973 : f32 = u_xlat53.x;
  u_xlat53.x = (x_1971 * x_1973);
  let x_1976 : vec4<f32> = vs_INTERP4;
  let x_1978 : vec3<f32> = vs_INTERP9;
  let x_1980 : vec3<f32> = (vec3<f32>(x_1976.y, x_1976.z, x_1976.x) * vec3<f32>(x_1978.z, x_1978.x, x_1978.y));
  let x_1981 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1980.x, x_1980.y, x_1980.z, x_1981.w);
  let x_1983 : vec3<f32> = vs_INTERP9;
  let x_1985 : vec4<f32> = vs_INTERP4;
  let x_1988 : vec4<f32> = u_xlat3;
  let x_1991 : vec3<f32> = ((vec3<f32>(x_1983.y, x_1983.z, x_1983.x) * vec3<f32>(x_1985.z, x_1985.x, x_1985.y)) + -(vec3<f32>(x_1988.x, x_1988.y, x_1988.z)));
  let x_1992 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1991.x, x_1991.y, x_1991.z, x_1992.w);
  let x_1994 : vec2<f32> = u_xlat53;
  let x_1996 : vec4<f32> = u_xlat3;
  let x_1998 : vec3<f32> = (vec3<f32>(x_1994.x, x_1994.x, x_1994.x) * vec3<f32>(x_1996.x, x_1996.y, x_1996.z));
  let x_1999 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1998.x, x_1998.y, x_1998.z, x_1999.w);
  let x_2001 : vec4<f32> = u_xlat3;
  let x_2003 : vec3<f32> = u_xlat31;
  let x_2005 : vec3<f32> = (vec3<f32>(x_2001.x, x_2001.y, x_2001.z) * vec3<f32>(x_2003.y, x_2003.y, x_2003.y));
  let x_2006 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2005.x, x_2005.y, x_2005.z, x_2006.w);
  let x_2008 : vec3<f32> = u_xlat31;
  let x_2010 : vec4<f32> = vs_INTERP4;
  let x_2013 : vec4<f32> = u_xlat3;
  let x_2015 : vec3<f32> = ((vec3<f32>(x_2008.x, x_2008.x, x_2008.x) * vec3<f32>(x_2010.x, x_2010.y, x_2010.z)) + vec3<f32>(x_2013.x, x_2013.y, x_2013.z));
  let x_2016 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2015.x, x_2015.y, x_2015.z, x_2016.w);
  let x_2018 : vec3<f32> = u_xlat31;
  let x_2020 : vec3<f32> = vs_INTERP9;
  let x_2022 : vec4<f32> = u_xlat3;
  let x_2024 : vec3<f32> = ((vec3<f32>(x_2018.z, x_2018.z, x_2018.z) * x_2020) + vec3<f32>(x_2022.x, x_2022.y, x_2022.z));
  let x_2025 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2024.x, x_2024.y, x_2024.z, x_2025.w);
  let x_2027 : vec4<f32> = u_xlat3;
  let x_2029 : vec4<f32> = u_xlat3;
  u_xlat53.x = dot(vec3<f32>(x_2027.x, x_2027.y, x_2027.z), vec3<f32>(x_2029.x, x_2029.y, x_2029.z));
  let x_2034 : f32 = u_xlat53.x;
  u_xlat53.x = inverseSqrt(x_2034);
  let x_2037 : vec2<f32> = u_xlat53;
  let x_2039 : vec4<f32> = u_xlat3;
  let x_2041 : vec3<f32> = (vec3<f32>(x_2037.x, x_2037.x, x_2037.x) * vec3<f32>(x_2039.x, x_2039.y, x_2039.z));
  let x_2042 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2041.x, x_2041.y, x_2041.z, x_2042.w);
  let x_2051 : vec2<f32> = vs_INTERP0;
  let x_2053 : f32 = x_75.x_GlobalMipBias.x;
  let x_2054 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_2051, x_2053);
  u_xlat7 = x_2054;
  let x_2059 : vec2<f32> = vs_INTERP0;
  let x_2061 : f32 = x_75.x_GlobalMipBias.x;
  let x_2062 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_2059, x_2061);
  u_xlat31 = vec3<f32>(x_2062.x, x_2062.y, x_2062.z);
  let x_2064 : vec4<f32> = u_xlat7;
  let x_2067 : vec3<f32> = (vec3<f32>(x_2064.x, x_2064.y, x_2064.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_2068 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2067.x, x_2067.y, x_2067.z, x_2068.w);
  let x_2070 : vec4<f32> = u_xlat3;
  let x_2072 : vec4<f32> = u_xlat7;
  u_xlat53.x = dot(vec3<f32>(x_2070.x, x_2070.y, x_2070.z), vec3<f32>(x_2072.x, x_2072.y, x_2072.z));
  let x_2077 : f32 = u_xlat53.x;
  u_xlat53.x = (x_2077 + 0.5f);
  let x_2080 : vec2<f32> = u_xlat53;
  let x_2082 : vec3<f32> = u_xlat31;
  u_xlat31 = (vec3<f32>(x_2080.x, x_2080.x, x_2080.x) * x_2082);
  let x_2085 : f32 = u_xlat7.w;
  u_xlat53.x = max(x_2085, 0.00009999999747378752f);
  let x_2088 : vec3<f32> = u_xlat31;
  let x_2089 : vec2<f32> = u_xlat53;
  u_xlat31 = (x_2088 / vec3<f32>(x_2089.x, x_2089.x, x_2089.x));
  let x_2093 : f32 = u_xlat5.x;
  u_xlat5.x = x_2093;
  let x_2096 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_2096, 0.0f, 1.0f);
  let x_2100 : f32 = u_xlat1.x;
  u_xlat1.x = x_2100;
  let x_2103 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_2103, 0.0f, 1.0f);
  let x_2106 : vec3<f32> = u_xlat4;
  u_xlat4 = (x_2106 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_2111 : f32 = u_xlat5.x;
  u_xlat53.x = (-(x_2111) + 1.0f);
  let x_2116 : f32 = u_xlat53.x;
  let x_2118 : f32 = u_xlat53.x;
  u_xlat79 = (x_2116 * x_2118);
  let x_2120 : f32 = u_xlat79;
  u_xlat79 = max(x_2120, 0.0078125f);
  let x_2124 : f32 = u_xlat79;
  let x_2125 : f32 = u_xlat79;
  u_xlat81 = (x_2124 * x_2125);
  let x_2128 : f32 = u_xlat5.x;
  u_xlat5.x = (x_2128 + 0.04000002145767211914f);
  let x_2133 : f32 = u_xlat5.x;
  u_xlat5.x = min(x_2133, 1.0f);
  let x_2136 : f32 = u_xlat79;
  u_xlat84 = ((x_2136 * 4.0f) + 2.0f);
  let x_2140 : f32 = vs_INTERP6.w;
  u_xlat7.x = min(x_2140, 1.0f);
  let x_2143 : bool = u_xlatb78;
  if (x_2143) {
    let x_2147 : f32 = x_264.x_MainLightShadowParams.y;
    u_xlatb78 = (x_2147 == 1.0f);
    let x_2149 : bool = u_xlatb78;
    if (x_2149) {
      let x_2152 : vec4<f32> = u_xlat6;
      let x_2155 : vec4<f32> = x_264.x_MainLightShadowOffset0;
      u_xlat8 = (vec4<f32>(x_2152.x, x_2152.y, x_2152.x, x_2152.y) + x_2155);
      let x_2158 : vec4<f32> = u_xlat8;
      let x_2159 : vec2<f32> = vec2<f32>(x_2158.x, x_2158.y);
      let x_2161 : f32 = u_xlat6.z;
      txVec30 = vec3<f32>(x_2159.x, x_2159.y, x_2161);
      let x_2168 : vec3<f32> = txVec30;
      let x_2170 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2168.xy, x_2168.z);
      u_xlat9.x = x_2170;
      let x_2173 : vec4<f32> = u_xlat8;
      let x_2174 : vec2<f32> = vec2<f32>(x_2173.z, x_2173.w);
      let x_2176 : f32 = u_xlat6.z;
      txVec31 = vec3<f32>(x_2174.x, x_2174.y, x_2176);
      let x_2183 : vec3<f32> = txVec31;
      let x_2185 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2183.xy, x_2183.z);
      u_xlat9.y = x_2185;
      let x_2187 : vec4<f32> = u_xlat6;
      let x_2190 : vec4<f32> = x_264.x_MainLightShadowOffset1;
      u_xlat8 = (vec4<f32>(x_2187.x, x_2187.y, x_2187.x, x_2187.y) + x_2190);
      let x_2193 : vec4<f32> = u_xlat8;
      let x_2194 : vec2<f32> = vec2<f32>(x_2193.x, x_2193.y);
      let x_2196 : f32 = u_xlat6.z;
      txVec32 = vec3<f32>(x_2194.x, x_2194.y, x_2196);
      let x_2203 : vec3<f32> = txVec32;
      let x_2205 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2203.xy, x_2203.z);
      u_xlat9.z = x_2205;
      let x_2208 : vec4<f32> = u_xlat8;
      let x_2209 : vec2<f32> = vec2<f32>(x_2208.z, x_2208.w);
      let x_2211 : f32 = u_xlat6.z;
      txVec33 = vec3<f32>(x_2209.x, x_2209.y, x_2211);
      let x_2218 : vec3<f32> = txVec33;
      let x_2220 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2218.xy, x_2218.z);
      u_xlat9.w = x_2220;
      let x_2222 : vec4<f32> = u_xlat9;
      u_xlat78 = dot(x_2222, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_2227 : f32 = x_264.x_MainLightShadowParams.y;
      u_xlatb33.x = (x_2227 == 2.0f);
      let x_2231 : bool = u_xlatb33.x;
      if (x_2231) {
        let x_2235 : vec4<f32> = u_xlat6;
        let x_2238 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_2241 : vec2<f32> = ((vec2<f32>(x_2235.x, x_2235.y) * vec2<f32>(x_2238.z, x_2238.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2242 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_2241.x, x_2241.y, x_2242.z);
        let x_2244 : vec3<f32> = u_xlat33;
        let x_2246 : vec2<f32> = floor(vec2<f32>(x_2244.x, x_2244.y));
        let x_2247 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_2246.x, x_2246.y, x_2247.z);
        let x_2249 : vec4<f32> = u_xlat6;
        let x_2252 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_2255 : vec3<f32> = u_xlat33;
        let x_2258 : vec2<f32> = ((vec2<f32>(x_2249.x, x_2249.y) * vec2<f32>(x_2252.z, x_2252.w)) + -(vec2<f32>(x_2255.x, x_2255.y)));
        let x_2259 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2258.x, x_2258.y, x_2259.z, x_2259.w);
        let x_2261 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_2261.x, x_2261.x, x_2261.y, x_2261.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2264 : vec4<f32> = u_xlat9;
        let x_2266 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_2264.x, x_2264.x, x_2264.z, x_2264.z) * vec4<f32>(x_2266.x, x_2266.x, x_2266.z, x_2266.z));
        let x_2270 : vec4<f32> = u_xlat10;
        u_xlat60 = (vec2<f32>(x_2270.y, x_2270.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_2273 : vec4<f32> = u_xlat10;
        let x_2276 : vec4<f32> = u_xlat8;
        let x_2279 : vec2<f32> = ((vec2<f32>(x_2273.x, x_2273.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2276.x, x_2276.y)));
        let x_2280 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2279.x, x_2280.y, x_2279.y, x_2280.w);
        let x_2282 : vec4<f32> = u_xlat8;
        let x_2285 : vec2<f32> = (-(vec2<f32>(x_2282.x, x_2282.y)) + vec2<f32>(1.0f, 1.0f));
        let x_2286 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2285.x, x_2285.y, x_2286.z, x_2286.w);
        let x_2288 : vec4<f32> = u_xlat8;
        u_xlat62 = min(vec2<f32>(x_2288.x, x_2288.y), vec2<f32>(0.0f, 0.0f));
        let x_2291 : vec2<f32> = u_xlat62;
        let x_2293 : vec2<f32> = u_xlat62;
        let x_2295 : vec4<f32> = u_xlat10;
        u_xlat62 = ((-(x_2291) * x_2293) + vec2<f32>(x_2295.x, x_2295.y));
        let x_2298 : vec4<f32> = u_xlat8;
        let x_2300 : vec2<f32> = max(vec2<f32>(x_2298.x, x_2298.y), vec2<f32>(0.0f, 0.0f));
        let x_2301 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2300.x, x_2300.y, x_2301.z, x_2301.w);
        let x_2303 : vec4<f32> = u_xlat8;
        let x_2306 : vec4<f32> = u_xlat8;
        let x_2309 : vec4<f32> = u_xlat9;
        let x_2311 : vec2<f32> = ((-(vec2<f32>(x_2303.x, x_2303.y)) * vec2<f32>(x_2306.x, x_2306.y)) + vec2<f32>(x_2309.y, x_2309.w));
        let x_2312 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2311.x, x_2311.y, x_2312.z, x_2312.w);
        let x_2314 : vec2<f32> = u_xlat62;
        u_xlat62 = (x_2314 + vec2<f32>(1.0f, 1.0f));
        let x_2316 : vec4<f32> = u_xlat8;
        let x_2318 : vec2<f32> = (vec2<f32>(x_2316.x, x_2316.y) + vec2<f32>(1.0f, 1.0f));
        let x_2319 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2318.x, x_2318.y, x_2319.z, x_2319.w);
        let x_2321 : vec4<f32> = u_xlat9;
        let x_2323 : vec2<f32> = (vec2<f32>(x_2321.x, x_2321.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2324 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2323.x, x_2323.y, x_2324.z, x_2324.w);
        let x_2326 : vec4<f32> = u_xlat10;
        let x_2328 : vec2<f32> = (vec2<f32>(x_2326.x, x_2326.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2329 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2328.x, x_2328.y, x_2329.z, x_2329.w);
        let x_2331 : vec2<f32> = u_xlat62;
        let x_2332 : vec2<f32> = (x_2331 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2333 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2332.x, x_2332.y, x_2333.z, x_2333.w);
        let x_2335 : vec4<f32> = u_xlat8;
        let x_2337 : vec2<f32> = (vec2<f32>(x_2335.x, x_2335.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2338 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_2337.x, x_2337.y, x_2338.z, x_2338.w);
        let x_2340 : vec4<f32> = u_xlat9;
        let x_2342 : vec2<f32> = (vec2<f32>(x_2340.y, x_2340.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2343 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2342.x, x_2342.y, x_2343.z, x_2343.w);
        let x_2346 : f32 = u_xlat10.x;
        u_xlat11.z = x_2346;
        let x_2349 : f32 = u_xlat8.x;
        u_xlat11.w = x_2349;
        let x_2352 : f32 = u_xlat13.x;
        u_xlat12.z = x_2352;
        let x_2355 : f32 = u_xlat60.x;
        u_xlat12.w = x_2355;
        let x_2357 : vec4<f32> = u_xlat11;
        let x_2359 : vec4<f32> = u_xlat12;
        u_xlat9 = (vec4<f32>(x_2357.z, x_2357.w, x_2357.x, x_2357.z) + vec4<f32>(x_2359.z, x_2359.w, x_2359.x, x_2359.z));
        let x_2363 : f32 = u_xlat11.y;
        u_xlat10.z = x_2363;
        let x_2366 : f32 = u_xlat8.y;
        u_xlat10.w = x_2366;
        let x_2369 : f32 = u_xlat12.y;
        u_xlat13.z = x_2369;
        let x_2372 : f32 = u_xlat60.y;
        u_xlat13.w = x_2372;
        let x_2374 : vec4<f32> = u_xlat10;
        let x_2376 : vec4<f32> = u_xlat13;
        let x_2378 : vec3<f32> = (vec3<f32>(x_2374.z, x_2374.y, x_2374.w) + vec3<f32>(x_2376.z, x_2376.y, x_2376.w));
        let x_2379 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2378.x, x_2378.y, x_2378.z, x_2379.w);
        let x_2381 : vec4<f32> = u_xlat12;
        let x_2383 : vec4<f32> = u_xlat9;
        let x_2385 : vec3<f32> = (vec3<f32>(x_2381.x, x_2381.z, x_2381.w) / vec3<f32>(x_2383.z, x_2383.w, x_2383.y));
        let x_2386 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2385.x, x_2385.y, x_2385.z, x_2386.w);
        let x_2388 : vec4<f32> = u_xlat10;
        let x_2390 : vec3<f32> = (vec3<f32>(x_2388.x, x_2388.y, x_2388.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2391 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2390.x, x_2390.y, x_2390.z, x_2391.w);
        let x_2393 : vec4<f32> = u_xlat13;
        let x_2395 : vec4<f32> = u_xlat8;
        let x_2397 : vec3<f32> = (vec3<f32>(x_2393.z, x_2393.y, x_2393.w) / vec3<f32>(x_2395.x, x_2395.y, x_2395.z));
        let x_2398 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2397.x, x_2397.y, x_2397.z, x_2398.w);
        let x_2400 : vec4<f32> = u_xlat11;
        let x_2402 : vec3<f32> = (vec3<f32>(x_2400.x, x_2400.y, x_2400.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2403 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2402.x, x_2402.y, x_2402.z, x_2403.w);
        let x_2405 : vec4<f32> = u_xlat10;
        let x_2408 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_2410 : vec3<f32> = (vec3<f32>(x_2405.y, x_2405.x, x_2405.z) * vec3<f32>(x_2408.x, x_2408.x, x_2408.x));
        let x_2411 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2410.x, x_2410.y, x_2410.z, x_2411.w);
        let x_2413 : vec4<f32> = u_xlat11;
        let x_2416 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_2418 : vec3<f32> = (vec3<f32>(x_2413.x, x_2413.y, x_2413.z) * vec3<f32>(x_2416.y, x_2416.y, x_2416.y));
        let x_2419 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2418.x, x_2418.y, x_2418.z, x_2419.w);
        let x_2422 : f32 = u_xlat11.x;
        u_xlat10.w = x_2422;
        let x_2424 : vec3<f32> = u_xlat33;
        let x_2427 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_2430 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_2424.x, x_2424.y, x_2424.x, x_2424.y) * vec4<f32>(x_2427.x, x_2427.y, x_2427.x, x_2427.y)) + vec4<f32>(x_2430.y, x_2430.w, x_2430.x, x_2430.w));
        let x_2433 : vec3<f32> = u_xlat33;
        let x_2436 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_2439 : vec4<f32> = u_xlat10;
        let x_2441 : vec2<f32> = ((vec2<f32>(x_2433.x, x_2433.y) * vec2<f32>(x_2436.x, x_2436.y)) + vec2<f32>(x_2439.z, x_2439.w));
        let x_2442 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_2441.x, x_2441.y, x_2442.z, x_2442.w);
        let x_2445 : f32 = u_xlat10.y;
        u_xlat11.w = x_2445;
        let x_2447 : vec4<f32> = u_xlat11;
        let x_2448 : vec2<f32> = vec2<f32>(x_2447.y, x_2447.z);
        let x_2449 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2449.x, x_2448.x, x_2449.z, x_2448.y);
        let x_2451 : vec3<f32> = u_xlat33;
        let x_2454 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_2457 : vec4<f32> = u_xlat10;
        u_xlat14 = ((vec4<f32>(x_2451.x, x_2451.y, x_2451.x, x_2451.y) * vec4<f32>(x_2454.x, x_2454.y, x_2454.x, x_2454.y)) + vec4<f32>(x_2457.x, x_2457.y, x_2457.z, x_2457.y));
        let x_2460 : vec3<f32> = u_xlat33;
        let x_2463 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_2466 : vec4<f32> = u_xlat11;
        u_xlat11 = ((vec4<f32>(x_2460.x, x_2460.y, x_2460.x, x_2460.y) * vec4<f32>(x_2463.x, x_2463.y, x_2463.x, x_2463.y)) + vec4<f32>(x_2466.w, x_2466.y, x_2466.w, x_2466.z));
        let x_2469 : vec3<f32> = u_xlat33;
        let x_2472 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_2475 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_2469.x, x_2469.y, x_2469.x, x_2469.y) * vec4<f32>(x_2472.x, x_2472.y, x_2472.x, x_2472.y)) + vec4<f32>(x_2475.x, x_2475.w, x_2475.z, x_2475.w));
        let x_2478 : vec4<f32> = u_xlat8;
        let x_2480 : vec4<f32> = u_xlat9;
        u_xlat15 = (vec4<f32>(x_2478.x, x_2478.x, x_2478.x, x_2478.y) * vec4<f32>(x_2480.z, x_2480.w, x_2480.y, x_2480.z));
        let x_2483 : vec4<f32> = u_xlat8;
        let x_2485 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_2483.y, x_2483.y, x_2483.z, x_2483.z) * x_2485);
        let x_2488 : f32 = u_xlat8.z;
        let x_2490 : f32 = u_xlat9.y;
        u_xlat33.x = (x_2488 * x_2490);
        let x_2494 : vec4<f32> = u_xlat12;
        let x_2495 : vec2<f32> = vec2<f32>(x_2494.x, x_2494.y);
        let x_2497 : f32 = u_xlat6.z;
        txVec34 = vec3<f32>(x_2495.x, x_2495.y, x_2497);
        let x_2504 : vec3<f32> = txVec34;
        let x_2506 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2504.xy, x_2504.z);
        u_xlat59.x = x_2506;
        let x_2509 : vec4<f32> = u_xlat12;
        let x_2510 : vec2<f32> = vec2<f32>(x_2509.z, x_2509.w);
        let x_2512 : f32 = u_xlat6.z;
        txVec35 = vec3<f32>(x_2510.x, x_2510.y, x_2512);
        let x_2520 : vec3<f32> = txVec35;
        let x_2522 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2520.xy, x_2520.z);
        u_xlat85 = x_2522;
        let x_2523 : f32 = u_xlat85;
        let x_2525 : f32 = u_xlat15.y;
        u_xlat85 = (x_2523 * x_2525);
        let x_2528 : f32 = u_xlat15.x;
        let x_2530 : f32 = u_xlat59.x;
        let x_2532 : f32 = u_xlat85;
        u_xlat59.x = ((x_2528 * x_2530) + x_2532);
        let x_2536 : vec4<f32> = u_xlat13;
        let x_2537 : vec2<f32> = vec2<f32>(x_2536.x, x_2536.y);
        let x_2539 : f32 = u_xlat6.z;
        txVec36 = vec3<f32>(x_2537.x, x_2537.y, x_2539);
        let x_2546 : vec3<f32> = txVec36;
        let x_2548 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2546.xy, x_2546.z);
        u_xlat85 = x_2548;
        let x_2550 : f32 = u_xlat15.z;
        let x_2551 : f32 = u_xlat85;
        let x_2554 : f32 = u_xlat59.x;
        u_xlat59.x = ((x_2550 * x_2551) + x_2554);
        let x_2558 : vec4<f32> = u_xlat11;
        let x_2559 : vec2<f32> = vec2<f32>(x_2558.x, x_2558.y);
        let x_2561 : f32 = u_xlat6.z;
        txVec37 = vec3<f32>(x_2559.x, x_2559.y, x_2561);
        let x_2568 : vec3<f32> = txVec37;
        let x_2570 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2568.xy, x_2568.z);
        u_xlat85 = x_2570;
        let x_2572 : f32 = u_xlat15.w;
        let x_2573 : f32 = u_xlat85;
        let x_2576 : f32 = u_xlat59.x;
        u_xlat59.x = ((x_2572 * x_2573) + x_2576);
        let x_2580 : vec4<f32> = u_xlat14;
        let x_2581 : vec2<f32> = vec2<f32>(x_2580.x, x_2580.y);
        let x_2583 : f32 = u_xlat6.z;
        txVec38 = vec3<f32>(x_2581.x, x_2581.y, x_2583);
        let x_2590 : vec3<f32> = txVec38;
        let x_2592 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2590.xy, x_2590.z);
        u_xlat85 = x_2592;
        let x_2594 : f32 = u_xlat16.x;
        let x_2595 : f32 = u_xlat85;
        let x_2598 : f32 = u_xlat59.x;
        u_xlat59.x = ((x_2594 * x_2595) + x_2598);
        let x_2602 : vec4<f32> = u_xlat14;
        let x_2603 : vec2<f32> = vec2<f32>(x_2602.z, x_2602.w);
        let x_2605 : f32 = u_xlat6.z;
        txVec39 = vec3<f32>(x_2603.x, x_2603.y, x_2605);
        let x_2612 : vec3<f32> = txVec39;
        let x_2614 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2612.xy, x_2612.z);
        u_xlat85 = x_2614;
        let x_2616 : f32 = u_xlat16.y;
        let x_2617 : f32 = u_xlat85;
        let x_2620 : f32 = u_xlat59.x;
        u_xlat59.x = ((x_2616 * x_2617) + x_2620);
        let x_2624 : vec4<f32> = u_xlat11;
        let x_2625 : vec2<f32> = vec2<f32>(x_2624.z, x_2624.w);
        let x_2627 : f32 = u_xlat6.z;
        txVec40 = vec3<f32>(x_2625.x, x_2625.y, x_2627);
        let x_2634 : vec3<f32> = txVec40;
        let x_2636 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2634.xy, x_2634.z);
        u_xlat85 = x_2636;
        let x_2638 : f32 = u_xlat16.z;
        let x_2639 : f32 = u_xlat85;
        let x_2642 : f32 = u_xlat59.x;
        u_xlat59.x = ((x_2638 * x_2639) + x_2642);
        let x_2646 : vec4<f32> = u_xlat10;
        let x_2647 : vec2<f32> = vec2<f32>(x_2646.x, x_2646.y);
        let x_2649 : f32 = u_xlat6.z;
        txVec41 = vec3<f32>(x_2647.x, x_2647.y, x_2649);
        let x_2656 : vec3<f32> = txVec41;
        let x_2658 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2656.xy, x_2656.z);
        u_xlat85 = x_2658;
        let x_2660 : f32 = u_xlat16.w;
        let x_2661 : f32 = u_xlat85;
        let x_2664 : f32 = u_xlat59.x;
        u_xlat59.x = ((x_2660 * x_2661) + x_2664);
        let x_2668 : vec4<f32> = u_xlat10;
        let x_2669 : vec2<f32> = vec2<f32>(x_2668.z, x_2668.w);
        let x_2671 : f32 = u_xlat6.z;
        txVec42 = vec3<f32>(x_2669.x, x_2669.y, x_2671);
        let x_2678 : vec3<f32> = txVec42;
        let x_2680 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2678.xy, x_2678.z);
        u_xlat85 = x_2680;
        let x_2682 : f32 = u_xlat33.x;
        let x_2683 : f32 = u_xlat85;
        let x_2686 : f32 = u_xlat59.x;
        u_xlat78 = ((x_2682 * x_2683) + x_2686);
      } else {
        let x_2689 : vec4<f32> = u_xlat6;
        let x_2692 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_2695 : vec2<f32> = ((vec2<f32>(x_2689.x, x_2689.y) * vec2<f32>(x_2692.z, x_2692.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2696 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_2695.x, x_2695.y, x_2696.z);
        let x_2698 : vec3<f32> = u_xlat33;
        let x_2700 : vec2<f32> = floor(vec2<f32>(x_2698.x, x_2698.y));
        let x_2701 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_2700.x, x_2700.y, x_2701.z);
        let x_2703 : vec4<f32> = u_xlat6;
        let x_2706 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_2709 : vec3<f32> = u_xlat33;
        let x_2712 : vec2<f32> = ((vec2<f32>(x_2703.x, x_2703.y) * vec2<f32>(x_2706.z, x_2706.w)) + -(vec2<f32>(x_2709.x, x_2709.y)));
        let x_2713 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2712.x, x_2712.y, x_2713.z, x_2713.w);
        let x_2715 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_2715.x, x_2715.x, x_2715.y, x_2715.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2718 : vec4<f32> = u_xlat9;
        let x_2720 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_2718.x, x_2718.x, x_2718.z, x_2718.z) * vec4<f32>(x_2720.x, x_2720.x, x_2720.z, x_2720.z));
        let x_2723 : vec4<f32> = u_xlat10;
        let x_2725 : vec2<f32> = (vec2<f32>(x_2723.y, x_2723.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_2726 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2726.x, x_2725.x, x_2726.z, x_2725.y);
        let x_2728 : vec4<f32> = u_xlat10;
        let x_2731 : vec4<f32> = u_xlat8;
        u_xlat60 = ((vec2<f32>(x_2728.x, x_2728.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2731.x, x_2731.y)));
        let x_2735 : vec4<f32> = u_xlat8;
        let x_2738 : vec2<f32> = (-(vec2<f32>(x_2735.x, x_2735.y)) + vec2<f32>(1.0f, 1.0f));
        let x_2739 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2738.x, x_2739.y, x_2738.y, x_2739.w);
        let x_2741 : vec4<f32> = u_xlat8;
        let x_2743 : vec2<f32> = min(vec2<f32>(x_2741.x, x_2741.y), vec2<f32>(0.0f, 0.0f));
        let x_2744 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2743.x, x_2743.y, x_2744.z, x_2744.w);
        let x_2746 : vec4<f32> = u_xlat10;
        let x_2749 : vec4<f32> = u_xlat10;
        let x_2752 : vec4<f32> = u_xlat9;
        let x_2754 : vec2<f32> = ((-(vec2<f32>(x_2746.x, x_2746.y)) * vec2<f32>(x_2749.x, x_2749.y)) + vec2<f32>(x_2752.x, x_2752.z));
        let x_2755 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2754.x, x_2755.y, x_2754.y, x_2755.w);
        let x_2757 : vec4<f32> = u_xlat8;
        let x_2759 : vec2<f32> = max(vec2<f32>(x_2757.x, x_2757.y), vec2<f32>(0.0f, 0.0f));
        let x_2760 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2759.x, x_2759.y, x_2760.z, x_2760.w);
        let x_2762 : vec4<f32> = u_xlat10;
        let x_2765 : vec4<f32> = u_xlat10;
        let x_2768 : vec4<f32> = u_xlat9;
        let x_2770 : vec2<f32> = ((-(vec2<f32>(x_2762.x, x_2762.y)) * vec2<f32>(x_2765.x, x_2765.y)) + vec2<f32>(x_2768.y, x_2768.w));
        let x_2771 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2771.x, x_2770.x, x_2771.z, x_2770.y);
        let x_2773 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_2773 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_2776 : f32 = u_xlat9.y;
        u_xlat10.z = (x_2776 * 0.08163200318813323975f);
        let x_2779 : vec2<f32> = u_xlat60;
        let x_2781 : vec2<f32> = (vec2<f32>(x_2779.y, x_2779.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2782 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2781.x, x_2781.y, x_2782.z, x_2782.w);
        let x_2784 : vec4<f32> = u_xlat9;
        u_xlat60 = (vec2<f32>(x_2784.x, x_2784.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2788 : f32 = u_xlat9.w;
        u_xlat12.z = (x_2788 * 0.08163200318813323975f);
        let x_2792 : f32 = u_xlat12.y;
        u_xlat10.x = x_2792;
        let x_2794 : vec4<f32> = u_xlat8;
        let x_2797 : vec2<f32> = ((vec2<f32>(x_2794.x, x_2794.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2798 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2798.x, x_2797.x, x_2798.z, x_2797.y);
        let x_2800 : vec4<f32> = u_xlat8;
        let x_2803 : vec2<f32> = ((vec2<f32>(x_2800.x, x_2800.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2804 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2803.x, x_2804.y, x_2803.y, x_2804.w);
        let x_2807 : f32 = u_xlat60.x;
        u_xlat9.y = x_2807;
        let x_2810 : f32 = u_xlat11.y;
        u_xlat9.w = x_2810;
        let x_2812 : vec4<f32> = u_xlat9;
        let x_2813 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_2812 + x_2813);
        let x_2815 : vec4<f32> = u_xlat8;
        let x_2818 : vec2<f32> = ((vec2<f32>(x_2815.y, x_2815.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2819 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2819.x, x_2818.x, x_2819.z, x_2818.y);
        let x_2821 : vec4<f32> = u_xlat8;
        let x_2824 : vec2<f32> = ((vec2<f32>(x_2821.y, x_2821.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2825 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2824.x, x_2825.y, x_2824.y, x_2825.w);
        let x_2828 : f32 = u_xlat60.y;
        u_xlat11.y = x_2828;
        let x_2830 : vec4<f32> = u_xlat11;
        let x_2831 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_2830 + x_2831);
        let x_2833 : vec4<f32> = u_xlat9;
        let x_2834 : vec4<f32> = u_xlat10;
        u_xlat9 = (x_2833 / x_2834);
        let x_2836 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_2836 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2838 : vec4<f32> = u_xlat11;
        let x_2839 : vec4<f32> = u_xlat8;
        u_xlat11 = (x_2838 / x_2839);
        let x_2841 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_2841 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2843 : vec4<f32> = u_xlat9;
        let x_2846 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_2843.w, x_2843.x, x_2843.y, x_2843.z) * vec4<f32>(x_2846.x, x_2846.x, x_2846.x, x_2846.x));
        let x_2849 : vec4<f32> = u_xlat11;
        let x_2852 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        u_xlat11 = (vec4<f32>(x_2849.x, x_2849.w, x_2849.y, x_2849.z) * vec4<f32>(x_2852.y, x_2852.y, x_2852.y, x_2852.y));
        let x_2855 : vec4<f32> = u_xlat9;
        let x_2856 : vec3<f32> = vec3<f32>(x_2855.y, x_2855.z, x_2855.w);
        let x_2857 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2856.x, x_2857.y, x_2856.y, x_2856.z);
        let x_2860 : f32 = u_xlat11.x;
        u_xlat12.y = x_2860;
        let x_2862 : vec3<f32> = u_xlat33;
        let x_2865 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_2868 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_2862.x, x_2862.y, x_2862.x, x_2862.y) * vec4<f32>(x_2865.x, x_2865.y, x_2865.x, x_2865.y)) + vec4<f32>(x_2868.x, x_2868.y, x_2868.z, x_2868.y));
        let x_2871 : vec3<f32> = u_xlat33;
        let x_2874 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_2877 : vec4<f32> = u_xlat12;
        let x_2879 : vec2<f32> = ((vec2<f32>(x_2871.x, x_2871.y) * vec2<f32>(x_2874.x, x_2874.y)) + vec2<f32>(x_2877.w, x_2877.y));
        let x_2880 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_2879.x, x_2879.y, x_2880.z, x_2880.w);
        let x_2883 : f32 = u_xlat12.y;
        u_xlat9.y = x_2883;
        let x_2886 : f32 = u_xlat11.z;
        u_xlat12.y = x_2886;
        let x_2888 : vec3<f32> = u_xlat33;
        let x_2891 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_2894 : vec4<f32> = u_xlat12;
        u_xlat15 = ((vec4<f32>(x_2888.x, x_2888.y, x_2888.x, x_2888.y) * vec4<f32>(x_2891.x, x_2891.y, x_2891.x, x_2891.y)) + vec4<f32>(x_2894.x, x_2894.y, x_2894.z, x_2894.y));
        let x_2898 : vec3<f32> = u_xlat33;
        let x_2901 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_2904 : vec4<f32> = u_xlat12;
        u_xlat66 = ((vec2<f32>(x_2898.x, x_2898.y) * vec2<f32>(x_2901.x, x_2901.y)) + vec2<f32>(x_2904.w, x_2904.y));
        let x_2908 : f32 = u_xlat12.y;
        u_xlat9.z = x_2908;
        let x_2910 : vec3<f32> = u_xlat33;
        let x_2913 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_2916 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_2910.x, x_2910.y, x_2910.x, x_2910.y) * vec4<f32>(x_2913.x, x_2913.y, x_2913.x, x_2913.y)) + vec4<f32>(x_2916.x, x_2916.y, x_2916.x, x_2916.z));
        let x_2920 : f32 = u_xlat11.w;
        u_xlat12.y = x_2920;
        let x_2922 : vec3<f32> = u_xlat33;
        let x_2925 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_2928 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_2922.x, x_2922.y, x_2922.x, x_2922.y) * vec4<f32>(x_2925.x, x_2925.y, x_2925.x, x_2925.y)) + vec4<f32>(x_2928.x, x_2928.y, x_2928.z, x_2928.y));
        let x_2931 : vec3<f32> = u_xlat33;
        let x_2934 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_2937 : vec4<f32> = u_xlat12;
        u_xlat35 = ((vec2<f32>(x_2931.x, x_2931.y) * vec2<f32>(x_2934.x, x_2934.y)) + vec2<f32>(x_2937.w, x_2937.y));
        let x_2941 : f32 = u_xlat12.y;
        u_xlat9.w = x_2941;
        let x_2943 : vec3<f32> = u_xlat33;
        let x_2946 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_2949 : vec4<f32> = u_xlat9;
        let x_2951 : vec2<f32> = ((vec2<f32>(x_2943.x, x_2943.y) * vec2<f32>(x_2946.x, x_2946.y)) + vec2<f32>(x_2949.x, x_2949.w));
        let x_2952 : vec4<f32> = u_xlat18;
        u_xlat18 = vec4<f32>(x_2951.x, x_2951.y, x_2952.z, x_2952.w);
        let x_2954 : vec4<f32> = u_xlat12;
        let x_2955 : vec3<f32> = vec3<f32>(x_2954.x, x_2954.z, x_2954.w);
        let x_2956 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2955.x, x_2956.y, x_2955.y, x_2955.z);
        let x_2958 : vec3<f32> = u_xlat33;
        let x_2961 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_2964 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_2958.x, x_2958.y, x_2958.x, x_2958.y) * vec4<f32>(x_2961.x, x_2961.y, x_2961.x, x_2961.y)) + vec4<f32>(x_2964.x, x_2964.y, x_2964.z, x_2964.y));
        let x_2968 : vec3<f32> = u_xlat33;
        let x_2971 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_2974 : vec4<f32> = u_xlat11;
        u_xlat63 = ((vec2<f32>(x_2968.x, x_2968.y) * vec2<f32>(x_2971.x, x_2971.y)) + vec2<f32>(x_2974.w, x_2974.y));
        let x_2978 : f32 = u_xlat9.x;
        u_xlat11.x = x_2978;
        let x_2980 : vec3<f32> = u_xlat33;
        let x_2983 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_2986 : vec4<f32> = u_xlat11;
        let x_2988 : vec2<f32> = ((vec2<f32>(x_2980.x, x_2980.y) * vec2<f32>(x_2983.x, x_2983.y)) + vec2<f32>(x_2986.x, x_2986.y));
        let x_2989 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_2988.x, x_2988.y, x_2989.z);
        let x_2991 : vec4<f32> = u_xlat8;
        let x_2993 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_2991.x, x_2991.x, x_2991.x, x_2991.x) * x_2993);
        let x_2995 : vec4<f32> = u_xlat8;
        let x_2997 : vec4<f32> = u_xlat10;
        u_xlat20 = (vec4<f32>(x_2995.y, x_2995.y, x_2995.y, x_2995.y) * x_2997);
        let x_3000 : vec4<f32> = u_xlat8;
        let x_3002 : vec4<f32> = u_xlat10;
        u_xlat21 = (vec4<f32>(x_3000.z, x_3000.z, x_3000.z, x_3000.z) * x_3002);
        let x_3004 : vec4<f32> = u_xlat8;
        let x_3006 : vec4<f32> = u_xlat10;
        u_xlat8 = (vec4<f32>(x_3004.w, x_3004.w, x_3004.w, x_3004.w) * x_3006);
        let x_3009 : vec4<f32> = u_xlat13;
        let x_3010 : vec2<f32> = vec2<f32>(x_3009.x, x_3009.y);
        let x_3012 : f32 = u_xlat6.z;
        txVec43 = vec3<f32>(x_3010.x, x_3010.y, x_3012);
        let x_3019 : vec3<f32> = txVec43;
        let x_3021 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3019.xy, x_3019.z);
        u_xlat85 = x_3021;
        let x_3023 : vec4<f32> = u_xlat13;
        let x_3024 : vec2<f32> = vec2<f32>(x_3023.z, x_3023.w);
        let x_3026 : f32 = u_xlat6.z;
        txVec44 = vec3<f32>(x_3024.x, x_3024.y, x_3026);
        let x_3033 : vec3<f32> = txVec44;
        let x_3035 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3033.xy, x_3033.z);
        u_xlat9.x = x_3035;
        let x_3038 : f32 = u_xlat9.x;
        let x_3040 : f32 = u_xlat19.y;
        u_xlat9.x = (x_3038 * x_3040);
        let x_3044 : f32 = u_xlat19.x;
        let x_3045 : f32 = u_xlat85;
        let x_3048 : f32 = u_xlat9.x;
        u_xlat85 = ((x_3044 * x_3045) + x_3048);
        let x_3051 : vec4<f32> = u_xlat14;
        let x_3052 : vec2<f32> = vec2<f32>(x_3051.x, x_3051.y);
        let x_3054 : f32 = u_xlat6.z;
        txVec45 = vec3<f32>(x_3052.x, x_3052.y, x_3054);
        let x_3061 : vec3<f32> = txVec45;
        let x_3063 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3061.xy, x_3061.z);
        u_xlat9.x = x_3063;
        let x_3066 : f32 = u_xlat19.z;
        let x_3068 : f32 = u_xlat9.x;
        let x_3070 : f32 = u_xlat85;
        u_xlat85 = ((x_3066 * x_3068) + x_3070);
        let x_3073 : vec4<f32> = u_xlat16;
        let x_3074 : vec2<f32> = vec2<f32>(x_3073.x, x_3073.y);
        let x_3076 : f32 = u_xlat6.z;
        txVec46 = vec3<f32>(x_3074.x, x_3074.y, x_3076);
        let x_3083 : vec3<f32> = txVec46;
        let x_3085 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3083.xy, x_3083.z);
        u_xlat9.x = x_3085;
        let x_3088 : f32 = u_xlat19.w;
        let x_3090 : f32 = u_xlat9.x;
        let x_3092 : f32 = u_xlat85;
        u_xlat85 = ((x_3088 * x_3090) + x_3092);
        let x_3095 : vec4<f32> = u_xlat15;
        let x_3096 : vec2<f32> = vec2<f32>(x_3095.x, x_3095.y);
        let x_3098 : f32 = u_xlat6.z;
        txVec47 = vec3<f32>(x_3096.x, x_3096.y, x_3098);
        let x_3105 : vec3<f32> = txVec47;
        let x_3107 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3105.xy, x_3105.z);
        u_xlat9.x = x_3107;
        let x_3110 : f32 = u_xlat20.x;
        let x_3112 : f32 = u_xlat9.x;
        let x_3114 : f32 = u_xlat85;
        u_xlat85 = ((x_3110 * x_3112) + x_3114);
        let x_3117 : vec4<f32> = u_xlat15;
        let x_3118 : vec2<f32> = vec2<f32>(x_3117.z, x_3117.w);
        let x_3120 : f32 = u_xlat6.z;
        txVec48 = vec3<f32>(x_3118.x, x_3118.y, x_3120);
        let x_3127 : vec3<f32> = txVec48;
        let x_3129 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3127.xy, x_3127.z);
        u_xlat9.x = x_3129;
        let x_3132 : f32 = u_xlat20.y;
        let x_3134 : f32 = u_xlat9.x;
        let x_3136 : f32 = u_xlat85;
        u_xlat85 = ((x_3132 * x_3134) + x_3136);
        let x_3139 : vec2<f32> = u_xlat66;
        let x_3141 : f32 = u_xlat6.z;
        txVec49 = vec3<f32>(x_3139.x, x_3139.y, x_3141);
        let x_3148 : vec3<f32> = txVec49;
        let x_3150 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3148.xy, x_3148.z);
        u_xlat9.x = x_3150;
        let x_3153 : f32 = u_xlat20.z;
        let x_3155 : f32 = u_xlat9.x;
        let x_3157 : f32 = u_xlat85;
        u_xlat85 = ((x_3153 * x_3155) + x_3157);
        let x_3160 : vec4<f32> = u_xlat16;
        let x_3161 : vec2<f32> = vec2<f32>(x_3160.z, x_3160.w);
        let x_3163 : f32 = u_xlat6.z;
        txVec50 = vec3<f32>(x_3161.x, x_3161.y, x_3163);
        let x_3170 : vec3<f32> = txVec50;
        let x_3172 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3170.xy, x_3170.z);
        u_xlat9.x = x_3172;
        let x_3175 : f32 = u_xlat20.w;
        let x_3177 : f32 = u_xlat9.x;
        let x_3179 : f32 = u_xlat85;
        u_xlat85 = ((x_3175 * x_3177) + x_3179);
        let x_3182 : vec4<f32> = u_xlat17;
        let x_3183 : vec2<f32> = vec2<f32>(x_3182.x, x_3182.y);
        let x_3185 : f32 = u_xlat6.z;
        txVec51 = vec3<f32>(x_3183.x, x_3183.y, x_3185);
        let x_3192 : vec3<f32> = txVec51;
        let x_3194 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3192.xy, x_3192.z);
        u_xlat9.x = x_3194;
        let x_3197 : f32 = u_xlat21.x;
        let x_3199 : f32 = u_xlat9.x;
        let x_3201 : f32 = u_xlat85;
        u_xlat85 = ((x_3197 * x_3199) + x_3201);
        let x_3204 : vec4<f32> = u_xlat17;
        let x_3205 : vec2<f32> = vec2<f32>(x_3204.z, x_3204.w);
        let x_3207 : f32 = u_xlat6.z;
        txVec52 = vec3<f32>(x_3205.x, x_3205.y, x_3207);
        let x_3214 : vec3<f32> = txVec52;
        let x_3216 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3214.xy, x_3214.z);
        u_xlat9.x = x_3216;
        let x_3219 : f32 = u_xlat21.y;
        let x_3221 : f32 = u_xlat9.x;
        let x_3223 : f32 = u_xlat85;
        u_xlat85 = ((x_3219 * x_3221) + x_3223);
        let x_3226 : vec2<f32> = u_xlat35;
        let x_3228 : f32 = u_xlat6.z;
        txVec53 = vec3<f32>(x_3226.x, x_3226.y, x_3228);
        let x_3235 : vec3<f32> = txVec53;
        let x_3237 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3235.xy, x_3235.z);
        u_xlat9.x = x_3237;
        let x_3240 : f32 = u_xlat21.z;
        let x_3242 : f32 = u_xlat9.x;
        let x_3244 : f32 = u_xlat85;
        u_xlat85 = ((x_3240 * x_3242) + x_3244);
        let x_3247 : vec4<f32> = u_xlat18;
        let x_3248 : vec2<f32> = vec2<f32>(x_3247.x, x_3247.y);
        let x_3250 : f32 = u_xlat6.z;
        txVec54 = vec3<f32>(x_3248.x, x_3248.y, x_3250);
        let x_3257 : vec3<f32> = txVec54;
        let x_3259 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3257.xy, x_3257.z);
        u_xlat9.x = x_3259;
        let x_3262 : f32 = u_xlat21.w;
        let x_3264 : f32 = u_xlat9.x;
        let x_3266 : f32 = u_xlat85;
        u_xlat85 = ((x_3262 * x_3264) + x_3266);
        let x_3269 : vec4<f32> = u_xlat12;
        let x_3270 : vec2<f32> = vec2<f32>(x_3269.x, x_3269.y);
        let x_3272 : f32 = u_xlat6.z;
        txVec55 = vec3<f32>(x_3270.x, x_3270.y, x_3272);
        let x_3279 : vec3<f32> = txVec55;
        let x_3281 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3279.xy, x_3279.z);
        u_xlat9.x = x_3281;
        let x_3284 : f32 = u_xlat8.x;
        let x_3286 : f32 = u_xlat9.x;
        let x_3288 : f32 = u_xlat85;
        u_xlat85 = ((x_3284 * x_3286) + x_3288);
        let x_3291 : vec4<f32> = u_xlat12;
        let x_3292 : vec2<f32> = vec2<f32>(x_3291.z, x_3291.w);
        let x_3294 : f32 = u_xlat6.z;
        txVec56 = vec3<f32>(x_3292.x, x_3292.y, x_3294);
        let x_3301 : vec3<f32> = txVec56;
        let x_3303 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3301.xy, x_3301.z);
        u_xlat8.x = x_3303;
        let x_3306 : f32 = u_xlat8.y;
        let x_3308 : f32 = u_xlat8.x;
        let x_3310 : f32 = u_xlat85;
        u_xlat85 = ((x_3306 * x_3308) + x_3310);
        let x_3313 : vec2<f32> = u_xlat63;
        let x_3315 : f32 = u_xlat6.z;
        txVec57 = vec3<f32>(x_3313.x, x_3313.y, x_3315);
        let x_3322 : vec3<f32> = txVec57;
        let x_3324 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3322.xy, x_3322.z);
        u_xlat8.x = x_3324;
        let x_3327 : f32 = u_xlat8.z;
        let x_3329 : f32 = u_xlat8.x;
        let x_3331 : f32 = u_xlat85;
        u_xlat85 = ((x_3327 * x_3329) + x_3331);
        let x_3334 : vec3<f32> = u_xlat33;
        let x_3335 : vec2<f32> = vec2<f32>(x_3334.x, x_3334.y);
        let x_3337 : f32 = u_xlat6.z;
        txVec58 = vec3<f32>(x_3335.x, x_3335.y, x_3337);
        let x_3344 : vec3<f32> = txVec58;
        let x_3346 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3344.xy, x_3344.z);
        u_xlat33.x = x_3346;
        let x_3349 : f32 = u_xlat8.w;
        let x_3351 : f32 = u_xlat33.x;
        let x_3353 : f32 = u_xlat85;
        u_xlat78 = ((x_3349 * x_3351) + x_3353);
      }
    }
  } else {
    let x_3357 : vec4<f32> = u_xlat6;
    let x_3358 : vec2<f32> = vec2<f32>(x_3357.x, x_3357.y);
    let x_3360 : f32 = u_xlat6.z;
    txVec59 = vec3<f32>(x_3358.x, x_3358.y, x_3360);
    let x_3367 : vec3<f32> = txVec59;
    let x_3369 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3367.xy, x_3367.z);
    u_xlat78 = x_3369;
  }
  let x_3370 : f32 = u_xlat78;
  let x_3372 : f32 = x_264.x_MainLightShadowParams.x;
  let x_3374 : f32 = u_xlat80;
  u_xlat78 = ((x_3370 * x_3372) + x_3374);
  let x_3376 : bool = u_xlatb82;
  let x_3377 : f32 = u_xlat78;
  u_xlat78 = select(x_3377, 1.0f, x_3376);
  let x_3379 : vec3<f32> = vs_INTERP8;
  let x_3381 : vec3<f32> = x_75.x_WorldSpaceCameraPos;
  let x_3383 : vec3<f32> = (x_3379 + -(x_3381));
  let x_3384 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_3383.x, x_3383.y, x_3383.z, x_3384.w);
  let x_3386 : vec4<f32> = u_xlat6;
  let x_3388 : vec4<f32> = u_xlat6;
  u_xlat80 = dot(vec3<f32>(x_3386.x, x_3386.y, x_3386.z), vec3<f32>(x_3388.x, x_3388.y, x_3388.z));
  let x_3391 : f32 = u_xlat80;
  let x_3393 : f32 = x_264.x_MainLightShadowParams.z;
  let x_3396 : f32 = x_264.x_MainLightShadowParams.w;
  u_xlat82 = ((x_3391 * x_3393) + x_3396);
  let x_3398 : f32 = u_xlat82;
  u_xlat82 = clamp(x_3398, 0.0f, 1.0f);
  let x_3400 : f32 = u_xlat78;
  u_xlat6.x = (-(x_3400) + 1.0f);
  let x_3404 : f32 = u_xlat82;
  let x_3406 : f32 = u_xlat6.x;
  let x_3408 : f32 = u_xlat78;
  u_xlat78 = ((x_3404 * x_3406) + x_3408);
  let x_3417 : f32 = x_3415.x_MainLightCookieTextureFormat;
  u_xlatb82 = !((x_3417 == -1.0f));
  let x_3419 : bool = u_xlatb82;
  if (x_3419) {
    let x_3422 : vec3<f32> = vs_INTERP8;
    let x_3425 : vec4<f32> = x_3415.x_MainLightWorldToLight[1i];
    let x_3427 : vec2<f32> = (vec2<f32>(x_3422.y, x_3422.y) * vec2<f32>(x_3425.x, x_3425.y));
    let x_3428 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3427.x, x_3427.y, x_3428.z, x_3428.w);
    let x_3431 : vec4<f32> = x_3415.x_MainLightWorldToLight[0i];
    let x_3433 : vec3<f32> = vs_INTERP8;
    let x_3436 : vec4<f32> = u_xlat6;
    let x_3438 : vec2<f32> = ((vec2<f32>(x_3431.x, x_3431.y) * vec2<f32>(x_3433.x, x_3433.x)) + vec2<f32>(x_3436.x, x_3436.y));
    let x_3439 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3438.x, x_3438.y, x_3439.z, x_3439.w);
    let x_3442 : vec4<f32> = x_3415.x_MainLightWorldToLight[2i];
    let x_3444 : vec3<f32> = vs_INTERP8;
    let x_3447 : vec4<f32> = u_xlat6;
    let x_3449 : vec2<f32> = ((vec2<f32>(x_3442.x, x_3442.y) * vec2<f32>(x_3444.z, x_3444.z)) + vec2<f32>(x_3447.x, x_3447.y));
    let x_3450 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3449.x, x_3449.y, x_3450.z, x_3450.w);
    let x_3452 : vec4<f32> = u_xlat6;
    let x_3455 : vec4<f32> = x_3415.x_MainLightWorldToLight[3i];
    let x_3457 : vec2<f32> = (vec2<f32>(x_3452.x, x_3452.y) + vec2<f32>(x_3455.x, x_3455.y));
    let x_3458 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3457.x, x_3457.y, x_3458.z, x_3458.w);
    let x_3460 : vec4<f32> = u_xlat6;
    let x_3463 : vec2<f32> = ((vec2<f32>(x_3460.x, x_3460.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_3464 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3463.x, x_3463.y, x_3464.z, x_3464.w);
    let x_3471 : vec4<f32> = u_xlat6;
    let x_3474 : f32 = x_75.x_GlobalMipBias.x;
    let x_3475 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_3471.x, x_3471.y), x_3474);
    u_xlat8 = x_3475;
    let x_3477 : f32 = x_3415.x_MainLightCookieTextureFormat;
    let x_3479 : f32 = x_3415.x_MainLightCookieTextureFormat;
    let x_3481 : f32 = x_3415.x_MainLightCookieTextureFormat;
    let x_3483 : f32 = x_3415.x_MainLightCookieTextureFormat;
    let x_3484 : vec4<f32> = vec4<f32>(x_3477, x_3479, x_3481, x_3483);
    let x_3491 : vec4<bool> = (vec4<f32>(x_3484.x, x_3484.y, x_3484.z, x_3484.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    let x_3492 : vec2<bool> = vec2<bool>(x_3491.x, x_3491.y);
    let x_3493 : vec4<bool> = u_xlatb6;
    u_xlatb6 = vec4<bool>(x_3492.x, x_3492.y, x_3493.z, x_3493.w);
    let x_3496 : bool = u_xlatb6.y;
    if (x_3496) {
      let x_3501 : f32 = u_xlat8.w;
      x_3497 = x_3501;
    } else {
      let x_3504 : f32 = u_xlat8.x;
      x_3497 = x_3504;
    }
    let x_3505 : f32 = x_3497;
    u_xlat82 = x_3505;
    let x_3507 : bool = u_xlatb6.x;
    if (x_3507) {
      let x_3511 : vec4<f32> = u_xlat8;
      x_3508 = vec3<f32>(x_3511.x, x_3511.y, x_3511.z);
    } else {
      let x_3514 : f32 = u_xlat82;
      x_3508 = vec3<f32>(x_3514, x_3514, x_3514);
    }
    let x_3516 : vec3<f32> = x_3508;
    let x_3517 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3516.x, x_3516.y, x_3516.z, x_3517.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_3523 : vec4<f32> = u_xlat6;
  let x_3526 : vec4<f32> = x_75.x_MainLightColor;
  let x_3528 : vec3<f32> = (vec3<f32>(x_3523.x, x_3523.y, x_3523.z) * vec3<f32>(x_3526.x, x_3526.y, x_3526.z));
  let x_3529 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_3528.x, x_3528.y, x_3528.z, x_3529.w);
  let x_3531 : vec3<f32> = u_xlat2;
  let x_3533 : vec4<f32> = u_xlat3;
  u_xlat82 = dot(-(x_3531), vec3<f32>(x_3533.x, x_3533.y, x_3533.z));
  let x_3536 : f32 = u_xlat82;
  let x_3537 : f32 = u_xlat82;
  u_xlat82 = (x_3536 + x_3537);
  let x_3539 : vec4<f32> = u_xlat3;
  let x_3541 : f32 = u_xlat82;
  let x_3545 : vec3<f32> = u_xlat2;
  u_xlat33 = ((vec3<f32>(x_3539.x, x_3539.y, x_3539.z) * -(vec3<f32>(x_3541, x_3541, x_3541))) + -(x_3545));
  let x_3548 : vec4<f32> = u_xlat3;
  let x_3550 : vec3<f32> = u_xlat2;
  u_xlat82 = dot(vec3<f32>(x_3548.x, x_3548.y, x_3548.z), x_3550);
  let x_3552 : f32 = u_xlat82;
  u_xlat82 = clamp(x_3552, 0.0f, 1.0f);
  let x_3554 : f32 = u_xlat82;
  u_xlat82 = (-(x_3554) + 1.0f);
  let x_3557 : f32 = u_xlat82;
  let x_3558 : f32 = u_xlat82;
  u_xlat82 = (x_3557 * x_3558);
  let x_3560 : f32 = u_xlat82;
  let x_3561 : f32 = u_xlat82;
  u_xlat82 = (x_3560 * x_3561);
  let x_3564 : f32 = u_xlat53.x;
  u_xlat8.x = ((-(x_3564) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_3572 : f32 = u_xlat53.x;
  let x_3574 : f32 = u_xlat8.x;
  u_xlat53.x = (x_3572 * x_3574);
  let x_3578 : f32 = u_xlat53.x;
  u_xlat53.x = (x_3578 * 6.0f);
  let x_3590 : vec3<f32> = u_xlat33;
  let x_3592 : f32 = u_xlat53.x;
  let x_3593 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_3590, x_3592);
  u_xlat8 = x_3593;
  let x_3595 : f32 = u_xlat8.w;
  u_xlat53.x = (x_3595 + -1.0f);
  let x_3599 : f32 = x_148.unity_SpecCube0_HDR.w;
  let x_3601 : f32 = u_xlat53.x;
  u_xlat53.x = ((x_3599 * x_3601) + 1.0f);
  let x_3606 : f32 = u_xlat53.x;
  u_xlat53.x = max(x_3606, 0.0f);
  let x_3610 : f32 = u_xlat53.x;
  u_xlat53.x = log2(x_3610);
  let x_3614 : f32 = u_xlat53.x;
  let x_3616 : f32 = x_148.unity_SpecCube0_HDR.y;
  u_xlat53.x = (x_3614 * x_3616);
  let x_3620 : f32 = u_xlat53.x;
  u_xlat53.x = exp2(x_3620);
  let x_3624 : f32 = u_xlat53.x;
  let x_3626 : f32 = x_148.unity_SpecCube0_HDR.x;
  u_xlat53.x = (x_3624 * x_3626);
  let x_3629 : vec4<f32> = u_xlat8;
  let x_3631 : vec2<f32> = u_xlat53;
  u_xlat33 = (vec3<f32>(x_3629.x, x_3629.y, x_3629.z) * vec3<f32>(x_3631.x, x_3631.x, x_3631.x));
  let x_3634 : f32 = u_xlat79;
  let x_3636 : f32 = u_xlat79;
  u_xlat53 = ((vec2<f32>(x_3634, x_3634) * vec2<f32>(x_3636, x_3636)) + vec2<f32>(-1.0f, 1.0f));
  let x_3642 : f32 = u_xlat53.y;
  u_xlat79 = (1.0f / x_3642);
  let x_3645 : f32 = u_xlat5.x;
  u_xlat5.x = (x_3645 + -0.03999999910593032837f);
  let x_3649 : f32 = u_xlat82;
  let x_3651 : f32 = u_xlat5.x;
  u_xlat82 = ((x_3649 * x_3651) + 0.03999999910593032837f);
  let x_3655 : f32 = u_xlat79;
  let x_3656 : f32 = u_xlat82;
  u_xlat79 = (x_3655 * x_3656);
  let x_3658 : f32 = u_xlat79;
  let x_3660 : vec3<f32> = u_xlat33;
  u_xlat33 = (vec3<f32>(x_3658, x_3658, x_3658) * x_3660);
  let x_3662 : vec3<f32> = u_xlat31;
  let x_3663 : vec3<f32> = u_xlat4;
  let x_3665 : vec3<f32> = u_xlat33;
  let x_3666 : vec3<f32> = ((x_3662 * x_3663) + x_3665);
  let x_3667 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_3666.x, x_3666.y, x_3666.z, x_3667.w);
  let x_3669 : f32 = u_xlat78;
  let x_3671 : f32 = x_148.unity_LightData.z;
  u_xlat78 = (x_3669 * x_3671);
  let x_3673 : vec4<f32> = u_xlat3;
  let x_3676 : vec4<f32> = x_75.x_MainLightPosition;
  u_xlat79 = dot(vec3<f32>(x_3673.x, x_3673.y, x_3673.z), vec3<f32>(x_3676.x, x_3676.y, x_3676.z));
  let x_3679 : f32 = u_xlat79;
  u_xlat79 = clamp(x_3679, 0.0f, 1.0f);
  let x_3681 : f32 = u_xlat78;
  let x_3682 : f32 = u_xlat79;
  u_xlat78 = (x_3681 * x_3682);
  let x_3684 : f32 = u_xlat78;
  let x_3686 : vec4<f32> = u_xlat6;
  let x_3688 : vec3<f32> = (vec3<f32>(x_3684, x_3684, x_3684) * vec3<f32>(x_3686.x, x_3686.y, x_3686.z));
  let x_3689 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_3688.x, x_3688.y, x_3688.z, x_3689.w);
  let x_3691 : vec3<f32> = u_xlat2;
  let x_3693 : vec4<f32> = x_75.x_MainLightPosition;
  u_xlat33 = (x_3691 + vec3<f32>(x_3693.x, x_3693.y, x_3693.z));
  let x_3696 : vec3<f32> = u_xlat33;
  let x_3697 : vec3<f32> = u_xlat33;
  u_xlat78 = dot(x_3696, x_3697);
  let x_3699 : f32 = u_xlat78;
  u_xlat78 = max(x_3699, 1.17549435e-38f);
  let x_3702 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_3702);
  let x_3704 : f32 = u_xlat78;
  let x_3706 : vec3<f32> = u_xlat33;
  u_xlat33 = (vec3<f32>(x_3704, x_3704, x_3704) * x_3706);
  let x_3708 : vec4<f32> = u_xlat3;
  let x_3710 : vec3<f32> = u_xlat33;
  u_xlat78 = dot(vec3<f32>(x_3708.x, x_3708.y, x_3708.z), x_3710);
  let x_3712 : f32 = u_xlat78;
  u_xlat78 = clamp(x_3712, 0.0f, 1.0f);
  let x_3715 : vec4<f32> = x_75.x_MainLightPosition;
  let x_3717 : vec3<f32> = u_xlat33;
  u_xlat79 = dot(vec3<f32>(x_3715.x, x_3715.y, x_3715.z), x_3717);
  let x_3719 : f32 = u_xlat79;
  u_xlat79 = clamp(x_3719, 0.0f, 1.0f);
  let x_3721 : f32 = u_xlat78;
  let x_3722 : f32 = u_xlat78;
  u_xlat78 = (x_3721 * x_3722);
  let x_3724 : f32 = u_xlat78;
  let x_3726 : f32 = u_xlat53.x;
  u_xlat78 = ((x_3724 * x_3726) + 1.00001001358032226562f);
  let x_3730 : f32 = u_xlat79;
  let x_3731 : f32 = u_xlat79;
  u_xlat79 = (x_3730 * x_3731);
  let x_3733 : f32 = u_xlat78;
  let x_3734 : f32 = u_xlat78;
  u_xlat78 = (x_3733 * x_3734);
  let x_3736 : f32 = u_xlat79;
  u_xlat79 = max(x_3736, 0.10000000149011611938f);
  let x_3739 : f32 = u_xlat78;
  let x_3740 : f32 = u_xlat79;
  u_xlat78 = (x_3739 * x_3740);
  let x_3742 : f32 = u_xlat84;
  let x_3743 : f32 = u_xlat78;
  u_xlat78 = (x_3742 * x_3743);
  let x_3745 : f32 = u_xlat81;
  let x_3746 : f32 = u_xlat78;
  u_xlat78 = (x_3745 / x_3746);
  let x_3748 : f32 = u_xlat78;
  let x_3752 : vec3<f32> = u_xlat4;
  u_xlat33 = ((vec3<f32>(x_3748, x_3748, x_3748) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_3752);
  let x_3754 : vec4<f32> = u_xlat6;
  let x_3756 : vec3<f32> = u_xlat33;
  let x_3757 : vec3<f32> = (vec3<f32>(x_3754.x, x_3754.y, x_3754.z) * x_3756);
  let x_3758 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_3757.x, x_3757.y, x_3757.z, x_3758.w);
  let x_3761 : f32 = x_75.x_AdditionalLightsCount.x;
  let x_3763 : f32 = x_148.unity_LightData.y;
  u_xlat78 = min(x_3761, x_3763);
  let x_3765 : f32 = u_xlat78;
  u_xlatu78 = bitcast<u32>(i32(x_3765));
  let x_3768 : f32 = u_xlat80;
  let x_3771 : f32 = x_264.x_AdditionalShadowFadeParams.x;
  let x_3774 : f32 = x_264.x_AdditionalShadowFadeParams.y;
  u_xlat79 = ((x_3768 * x_3771) + x_3774);
  let x_3776 : f32 = u_xlat79;
  u_xlat79 = clamp(x_3776, 0.0f, 1.0f);
  let x_3779 : f32 = x_3415.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3781 : f32 = x_3415.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3783 : f32 = x_3415.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3785 : f32 = x_3415.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3786 : vec4<f32> = vec4<f32>(x_3779, x_3781, x_3783, x_3785);
  let x_3792 : vec4<bool> = (vec4<f32>(x_3786.x, x_3786.y, x_3786.z, x_3786.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb33 = vec2<bool>(x_3792.x, x_3792.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_3803 : u32 = u_xlatu_loop_1;
    let x_3804 : u32 = u_xlatu78;
    if ((x_3803 < x_3804)) {
    } else {
      break;
    }
    let x_3807 : u32 = u_xlatu_loop_1;
    u_xlatu82 = (x_3807 >> 2u);
    let x_3810 : u32 = u_xlatu_loop_1;
    u_xlati83 = bitcast<i32>((x_3810 & 3u));
    let x_3813 : u32 = u_xlatu82;
    let x_3816 : vec4<f32> = x_148.unity_LightIndices[bitcast<i32>(x_3813)];
    let x_3826 : i32 = u_xlati83;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_3831 : vec4<u32> = indexable[x_3826];
    u_xlat82 = dot(x_3816, bitcast<vec4<f32>>(x_3831));
    let x_3835 : f32 = u_xlat82;
    u_xlati82 = i32(x_3835);
    let x_3837 : vec3<f32> = vs_INTERP8;
    let x_3848 : i32 = u_xlati82;
    let x_3850 : vec4<f32> = x_3847.x_AdditionalLightsPosition[x_3848];
    let x_3853 : i32 = u_xlati82;
    let x_3855 : vec4<f32> = x_3847.x_AdditionalLightsPosition[x_3853];
    let x_3857 : vec3<f32> = ((-(x_3837) * vec3<f32>(x_3850.w, x_3850.w, x_3850.w)) + vec3<f32>(x_3855.x, x_3855.y, x_3855.z));
    let x_3858 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3857.x, x_3857.y, x_3857.z, x_3858.w);
    let x_3861 : vec4<f32> = u_xlat9;
    let x_3863 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_3861.x, x_3861.y, x_3861.z), vec3<f32>(x_3863.x, x_3863.y, x_3863.z));
    let x_3866 : f32 = u_xlat83;
    u_xlat83 = max(x_3866, 0.00006103515625f);
    let x_3869 : f32 = u_xlat83;
    u_xlat85 = inverseSqrt(x_3869);
    let x_3871 : f32 = u_xlat85;
    let x_3873 : vec4<f32> = u_xlat9;
    let x_3875 : vec3<f32> = (vec3<f32>(x_3871, x_3871, x_3871) * vec3<f32>(x_3873.x, x_3873.y, x_3873.z));
    let x_3876 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3875.x, x_3875.y, x_3875.z, x_3876.w);
    let x_3879 : f32 = u_xlat83;
    u_xlat86 = (1.0f / x_3879);
    let x_3881 : f32 = u_xlat83;
    let x_3882 : i32 = u_xlati82;
    let x_3884 : f32 = x_3847.x_AdditionalLightsAttenuation[x_3882].x;
    u_xlat83 = (x_3881 * x_3884);
    let x_3886 : f32 = u_xlat83;
    let x_3888 : f32 = u_xlat83;
    u_xlat83 = ((-(x_3886) * x_3888) + 1.0f);
    let x_3891 : f32 = u_xlat83;
    u_xlat83 = max(x_3891, 0.0f);
    let x_3893 : f32 = u_xlat83;
    let x_3894 : f32 = u_xlat83;
    u_xlat83 = (x_3893 * x_3894);
    let x_3896 : f32 = u_xlat83;
    let x_3897 : f32 = u_xlat86;
    u_xlat83 = (x_3896 * x_3897);
    let x_3899 : i32 = u_xlati82;
    let x_3901 : vec4<f32> = x_3847.x_AdditionalLightsSpotDir[x_3899];
    let x_3903 : vec4<f32> = u_xlat10;
    u_xlat86 = dot(vec3<f32>(x_3901.x, x_3901.y, x_3901.z), vec3<f32>(x_3903.x, x_3903.y, x_3903.z));
    let x_3906 : f32 = u_xlat86;
    let x_3907 : i32 = u_xlati82;
    let x_3909 : f32 = x_3847.x_AdditionalLightsAttenuation[x_3907].z;
    let x_3911 : i32 = u_xlati82;
    let x_3913 : f32 = x_3847.x_AdditionalLightsAttenuation[x_3911].w;
    u_xlat86 = ((x_3906 * x_3909) + x_3913);
    let x_3915 : f32 = u_xlat86;
    u_xlat86 = clamp(x_3915, 0.0f, 1.0f);
    let x_3917 : f32 = u_xlat86;
    let x_3918 : f32 = u_xlat86;
    u_xlat86 = (x_3917 * x_3918);
    let x_3920 : f32 = u_xlat83;
    let x_3921 : f32 = u_xlat86;
    u_xlat83 = (x_3920 * x_3921);
    let x_3925 : i32 = u_xlati82;
    let x_3927 : f32 = x_264.x_AdditionalShadowParams[x_3925].w;
    u_xlati86 = i32(x_3927);
    let x_3930 : i32 = u_xlati86;
    u_xlatb87 = (x_3930 >= 0i);
    let x_3932 : bool = u_xlatb87;
    if (x_3932) {
      let x_3936 : i32 = u_xlati82;
      let x_3938 : f32 = x_264.x_AdditionalShadowParams[x_3936].z;
      u_xlatb87 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_3938, x_3938, x_3938, x_3938))));
      let x_3942 : bool = u_xlatb87;
      if (x_3942) {
        let x_3946 : vec4<f32> = u_xlat10;
        let x_3949 : vec4<f32> = u_xlat10;
        let x_3952 : vec4<bool> = (abs(vec4<f32>(x_3946.z, x_3946.z, x_3946.y, x_3946.z)) >= abs(vec4<f32>(x_3949.x, x_3949.y, x_3949.x, x_3949.x)));
        let x_3954 : vec3<bool> = vec3<bool>(x_3952.x, x_3952.y, x_3952.z);
        let x_3955 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3954.x, x_3954.y, x_3954.z, x_3955.w);
        let x_3958 : bool = u_xlatb11.y;
        let x_3960 : bool = u_xlatb11.x;
        u_xlatb87 = (x_3958 & x_3960);
        let x_3962 : vec4<f32> = u_xlat10;
        let x_3965 : vec4<bool> = (-(vec4<f32>(x_3962.z, x_3962.y, x_3962.z, x_3962.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_3966 : vec3<bool> = vec3<bool>(x_3965.x, x_3965.y, x_3965.w);
        let x_3967 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3966.x, x_3966.y, x_3967.z, x_3966.z);
        let x_3970 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_3970);
        let x_3975 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_3975);
        let x_3980 : bool = u_xlatb11.w;
        u_xlat88 = select(0.0f, 1.0f, x_3980);
        let x_3983 : bool = u_xlatb11.z;
        if (x_3983) {
          let x_3988 : f32 = u_xlat11.y;
          x_3984 = x_3988;
        } else {
          let x_3990 : f32 = u_xlat88;
          x_3984 = x_3990;
        }
        let x_3991 : f32 = x_3984;
        u_xlat88 = x_3991;
        let x_3993 : bool = u_xlatb87;
        if (x_3993) {
          let x_3998 : f32 = u_xlat11.x;
          x_3994 = x_3998;
        } else {
          let x_4000 : f32 = u_xlat88;
          x_3994 = x_4000;
        }
        let x_4001 : f32 = x_3994;
        u_xlat87 = x_4001;
        let x_4002 : i32 = u_xlati82;
        let x_4004 : f32 = x_264.x_AdditionalShadowParams[x_4002].w;
        u_xlat88 = trunc(x_4004);
        let x_4006 : f32 = u_xlat87;
        let x_4007 : f32 = u_xlat88;
        u_xlat87 = (x_4006 + x_4007);
        let x_4009 : f32 = u_xlat87;
        u_xlati86 = i32(x_4009);
      }
      let x_4011 : i32 = u_xlati86;
      u_xlati86 = (x_4011 << bitcast<u32>(2i));
      let x_4013 : vec3<f32> = vs_INTERP8;
      let x_4016 : i32 = u_xlati86;
      let x_4019 : i32 = u_xlati86;
      let x_4023 : vec4<f32> = x_264.x_AdditionalLightsWorldToShadow[((x_4016 + 1i) / 4i)][((x_4019 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_4013.y, x_4013.y, x_4013.y, x_4013.y) * x_4023);
      let x_4025 : i32 = u_xlati86;
      let x_4027 : i32 = u_xlati86;
      let x_4030 : vec4<f32> = x_264.x_AdditionalLightsWorldToShadow[(x_4025 / 4i)][(x_4027 % 4i)];
      let x_4031 : vec3<f32> = vs_INTERP8;
      let x_4034 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_4030 * vec4<f32>(x_4031.x, x_4031.x, x_4031.x, x_4031.x)) + x_4034);
      let x_4036 : i32 = u_xlati86;
      let x_4039 : i32 = u_xlati86;
      let x_4043 : vec4<f32> = x_264.x_AdditionalLightsWorldToShadow[((x_4036 + 2i) / 4i)][((x_4039 + 2i) % 4i)];
      let x_4044 : vec3<f32> = vs_INTERP8;
      let x_4047 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_4043 * vec4<f32>(x_4044.z, x_4044.z, x_4044.z, x_4044.z)) + x_4047);
      let x_4049 : vec4<f32> = u_xlat11;
      let x_4050 : i32 = u_xlati86;
      let x_4053 : i32 = u_xlati86;
      let x_4057 : vec4<f32> = x_264.x_AdditionalLightsWorldToShadow[((x_4050 + 3i) / 4i)][((x_4053 + 3i) % 4i)];
      u_xlat11 = (x_4049 + x_4057);
      let x_4059 : vec4<f32> = u_xlat11;
      let x_4061 : vec4<f32> = u_xlat11;
      let x_4063 : vec3<f32> = (vec3<f32>(x_4059.x, x_4059.y, x_4059.z) / vec3<f32>(x_4061.w, x_4061.w, x_4061.w));
      let x_4064 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4063.x, x_4063.y, x_4063.z, x_4064.w);
      let x_4067 : i32 = u_xlati82;
      let x_4069 : f32 = x_264.x_AdditionalShadowParams[x_4067].y;
      u_xlatb86 = (0.0f < x_4069);
      let x_4071 : bool = u_xlatb86;
      if (x_4071) {
        let x_4074 : i32 = u_xlati82;
        let x_4076 : f32 = x_264.x_AdditionalShadowParams[x_4074].y;
        u_xlatb86 = (1.0f == x_4076);
        let x_4078 : bool = u_xlatb86;
        if (x_4078) {
          let x_4081 : vec4<f32> = u_xlat11;
          let x_4085 : vec4<f32> = x_264.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_4081.x, x_4081.y, x_4081.x, x_4081.y) + x_4085);
          let x_4088 : vec4<f32> = u_xlat12;
          let x_4089 : vec2<f32> = vec2<f32>(x_4088.x, x_4088.y);
          let x_4091 : f32 = u_xlat11.z;
          txVec60 = vec3<f32>(x_4089.x, x_4089.y, x_4091);
          let x_4099 : vec3<f32> = txVec60;
          let x_4101 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4099.xy, x_4099.z);
          u_xlat13.x = x_4101;
          let x_4104 : vec4<f32> = u_xlat12;
          let x_4105 : vec2<f32> = vec2<f32>(x_4104.z, x_4104.w);
          let x_4107 : f32 = u_xlat11.z;
          txVec61 = vec3<f32>(x_4105.x, x_4105.y, x_4107);
          let x_4114 : vec3<f32> = txVec61;
          let x_4116 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4114.xy, x_4114.z);
          u_xlat13.y = x_4116;
          let x_4118 : vec4<f32> = u_xlat11;
          let x_4122 : vec4<f32> = x_264.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_4118.x, x_4118.y, x_4118.x, x_4118.y) + x_4122);
          let x_4125 : vec4<f32> = u_xlat12;
          let x_4126 : vec2<f32> = vec2<f32>(x_4125.x, x_4125.y);
          let x_4128 : f32 = u_xlat11.z;
          txVec62 = vec3<f32>(x_4126.x, x_4126.y, x_4128);
          let x_4135 : vec3<f32> = txVec62;
          let x_4137 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4135.xy, x_4135.z);
          u_xlat13.z = x_4137;
          let x_4140 : vec4<f32> = u_xlat12;
          let x_4141 : vec2<f32> = vec2<f32>(x_4140.z, x_4140.w);
          let x_4143 : f32 = u_xlat11.z;
          txVec63 = vec3<f32>(x_4141.x, x_4141.y, x_4143);
          let x_4150 : vec3<f32> = txVec63;
          let x_4152 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4150.xy, x_4150.z);
          u_xlat13.w = x_4152;
          let x_4154 : vec4<f32> = u_xlat13;
          u_xlat86 = dot(x_4154, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_4157 : i32 = u_xlati82;
          let x_4159 : f32 = x_264.x_AdditionalShadowParams[x_4157].y;
          u_xlatb87 = (2.0f == x_4159);
          let x_4161 : bool = u_xlatb87;
          if (x_4161) {
            let x_4164 : vec4<f32> = u_xlat11;
            let x_4168 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_4171 : vec2<f32> = ((vec2<f32>(x_4164.x, x_4164.y) * vec2<f32>(x_4168.z, x_4168.w)) + vec2<f32>(0.5f, 0.5f));
            let x_4172 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4171.x, x_4171.y, x_4172.z, x_4172.w);
            let x_4174 : vec4<f32> = u_xlat12;
            let x_4176 : vec2<f32> = floor(vec2<f32>(x_4174.x, x_4174.y));
            let x_4177 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4176.x, x_4176.y, x_4177.z, x_4177.w);
            let x_4180 : vec4<f32> = u_xlat11;
            let x_4183 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_4186 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_4180.x, x_4180.y) * vec2<f32>(x_4183.z, x_4183.w)) + -(vec2<f32>(x_4186.x, x_4186.y)));
            let x_4190 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_4190.x, x_4190.x, x_4190.y, x_4190.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_4193 : vec4<f32> = u_xlat13;
            let x_4195 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_4193.x, x_4193.x, x_4193.z, x_4193.z) * vec4<f32>(x_4195.x, x_4195.x, x_4195.z, x_4195.z));
            let x_4198 : vec4<f32> = u_xlat14;
            let x_4200 : vec2<f32> = (vec2<f32>(x_4198.y, x_4198.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_4201 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4200.x, x_4201.y, x_4200.y, x_4201.w);
            let x_4203 : vec4<f32> = u_xlat14;
            let x_4206 : vec2<f32> = u_xlat64;
            let x_4208 : vec2<f32> = ((vec2<f32>(x_4203.x, x_4203.z) * vec2<f32>(0.5f, 0.5f)) + -(x_4206));
            let x_4209 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4208.x, x_4208.y, x_4209.z, x_4209.w);
            let x_4211 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_4211) + vec2<f32>(1.0f, 1.0f));
            let x_4214 : vec2<f32> = u_xlat64;
            let x_4215 : vec2<f32> = min(x_4214, vec2<f32>(0.0f, 0.0f));
            let x_4216 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4215.x, x_4215.y, x_4216.z, x_4216.w);
            let x_4218 : vec4<f32> = u_xlat15;
            let x_4221 : vec4<f32> = u_xlat15;
            let x_4224 : vec2<f32> = u_xlat66;
            let x_4225 : vec2<f32> = ((-(vec2<f32>(x_4218.x, x_4218.y)) * vec2<f32>(x_4221.x, x_4221.y)) + x_4224);
            let x_4226 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4225.x, x_4225.y, x_4226.z, x_4226.w);
            let x_4228 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_4228, vec2<f32>(0.0f, 0.0f));
            let x_4230 : vec2<f32> = u_xlat64;
            let x_4232 : vec2<f32> = u_xlat64;
            let x_4234 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_4230) * x_4232) + vec2<f32>(x_4234.y, x_4234.w));
            let x_4237 : vec4<f32> = u_xlat15;
            let x_4239 : vec2<f32> = (vec2<f32>(x_4237.x, x_4237.y) + vec2<f32>(1.0f, 1.0f));
            let x_4240 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4239.x, x_4239.y, x_4240.z, x_4240.w);
            let x_4242 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_4242 + vec2<f32>(1.0f, 1.0f));
            let x_4244 : vec4<f32> = u_xlat14;
            let x_4246 : vec2<f32> = (vec2<f32>(x_4244.x, x_4244.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4247 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4246.x, x_4246.y, x_4247.z, x_4247.w);
            let x_4249 : vec2<f32> = u_xlat66;
            let x_4250 : vec2<f32> = (x_4249 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4251 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4250.x, x_4250.y, x_4251.z, x_4251.w);
            let x_4253 : vec4<f32> = u_xlat15;
            let x_4255 : vec2<f32> = (vec2<f32>(x_4253.x, x_4253.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4256 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4255.x, x_4255.y, x_4256.z, x_4256.w);
            let x_4258 : vec2<f32> = u_xlat64;
            let x_4259 : vec2<f32> = (x_4258 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4260 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4259.x, x_4259.y, x_4260.z, x_4260.w);
            let x_4262 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_4262.y, x_4262.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4266 : f32 = u_xlat15.x;
            u_xlat16.z = x_4266;
            let x_4269 : f32 = u_xlat64.x;
            u_xlat16.w = x_4269;
            let x_4272 : f32 = u_xlat17.x;
            u_xlat14.z = x_4272;
            let x_4275 : f32 = u_xlat13.x;
            u_xlat14.w = x_4275;
            let x_4277 : vec4<f32> = u_xlat14;
            let x_4279 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_4277.z, x_4277.w, x_4277.x, x_4277.z) + vec4<f32>(x_4279.z, x_4279.w, x_4279.x, x_4279.z));
            let x_4283 : f32 = u_xlat16.y;
            u_xlat15.z = x_4283;
            let x_4286 : f32 = u_xlat64.y;
            u_xlat15.w = x_4286;
            let x_4289 : f32 = u_xlat14.y;
            u_xlat17.z = x_4289;
            let x_4292 : f32 = u_xlat13.z;
            u_xlat17.w = x_4292;
            let x_4294 : vec4<f32> = u_xlat15;
            let x_4296 : vec4<f32> = u_xlat17;
            let x_4298 : vec3<f32> = (vec3<f32>(x_4294.z, x_4294.y, x_4294.w) + vec3<f32>(x_4296.z, x_4296.y, x_4296.w));
            let x_4299 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4298.x, x_4298.y, x_4298.z, x_4299.w);
            let x_4301 : vec4<f32> = u_xlat14;
            let x_4303 : vec4<f32> = u_xlat18;
            let x_4305 : vec3<f32> = (vec3<f32>(x_4301.x, x_4301.z, x_4301.w) / vec3<f32>(x_4303.z, x_4303.w, x_4303.y));
            let x_4306 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4305.x, x_4305.y, x_4305.z, x_4306.w);
            let x_4308 : vec4<f32> = u_xlat14;
            let x_4310 : vec3<f32> = (vec3<f32>(x_4308.x, x_4308.y, x_4308.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4311 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4310.x, x_4310.y, x_4310.z, x_4311.w);
            let x_4313 : vec4<f32> = u_xlat17;
            let x_4315 : vec4<f32> = u_xlat13;
            let x_4317 : vec3<f32> = (vec3<f32>(x_4313.z, x_4313.y, x_4313.w) / vec3<f32>(x_4315.x, x_4315.y, x_4315.z));
            let x_4318 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4317.x, x_4317.y, x_4317.z, x_4318.w);
            let x_4320 : vec4<f32> = u_xlat15;
            let x_4322 : vec3<f32> = (vec3<f32>(x_4320.x, x_4320.y, x_4320.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4323 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4322.x, x_4322.y, x_4322.z, x_4323.w);
            let x_4325 : vec4<f32> = u_xlat14;
            let x_4328 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_4330 : vec3<f32> = (vec3<f32>(x_4325.y, x_4325.x, x_4325.z) * vec3<f32>(x_4328.x, x_4328.x, x_4328.x));
            let x_4331 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4330.x, x_4330.y, x_4330.z, x_4331.w);
            let x_4333 : vec4<f32> = u_xlat15;
            let x_4336 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_4338 : vec3<f32> = (vec3<f32>(x_4333.x, x_4333.y, x_4333.z) * vec3<f32>(x_4336.y, x_4336.y, x_4336.y));
            let x_4339 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4338.x, x_4338.y, x_4338.z, x_4339.w);
            let x_4342 : f32 = u_xlat15.x;
            u_xlat14.w = x_4342;
            let x_4344 : vec4<f32> = u_xlat12;
            let x_4347 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_4350 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_4344.x, x_4344.y, x_4344.x, x_4344.y) * vec4<f32>(x_4347.x, x_4347.y, x_4347.x, x_4347.y)) + vec4<f32>(x_4350.y, x_4350.w, x_4350.x, x_4350.w));
            let x_4353 : vec4<f32> = u_xlat12;
            let x_4356 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_4359 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_4353.x, x_4353.y) * vec2<f32>(x_4356.x, x_4356.y)) + vec2<f32>(x_4359.z, x_4359.w));
            let x_4363 : f32 = u_xlat14.y;
            u_xlat15.w = x_4363;
            let x_4365 : vec4<f32> = u_xlat15;
            let x_4366 : vec2<f32> = vec2<f32>(x_4365.y, x_4365.z);
            let x_4367 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4367.x, x_4366.x, x_4367.z, x_4366.y);
            let x_4369 : vec4<f32> = u_xlat12;
            let x_4372 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_4375 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_4369.x, x_4369.y, x_4369.x, x_4369.y) * vec4<f32>(x_4372.x, x_4372.y, x_4372.x, x_4372.y)) + vec4<f32>(x_4375.x, x_4375.y, x_4375.z, x_4375.y));
            let x_4378 : vec4<f32> = u_xlat12;
            let x_4381 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_4384 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_4378.x, x_4378.y, x_4378.x, x_4378.y) * vec4<f32>(x_4381.x, x_4381.y, x_4381.x, x_4381.y)) + vec4<f32>(x_4384.w, x_4384.y, x_4384.w, x_4384.z));
            let x_4387 : vec4<f32> = u_xlat12;
            let x_4390 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_4393 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_4387.x, x_4387.y, x_4387.x, x_4387.y) * vec4<f32>(x_4390.x, x_4390.y, x_4390.x, x_4390.y)) + vec4<f32>(x_4393.x, x_4393.w, x_4393.z, x_4393.w));
            let x_4396 : vec4<f32> = u_xlat13;
            let x_4398 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_4396.x, x_4396.x, x_4396.x, x_4396.y) * vec4<f32>(x_4398.z, x_4398.w, x_4398.y, x_4398.z));
            let x_4401 : vec4<f32> = u_xlat13;
            let x_4403 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_4401.y, x_4401.y, x_4401.z, x_4401.z) * x_4403);
            let x_4406 : f32 = u_xlat13.z;
            let x_4408 : f32 = u_xlat18.y;
            u_xlat87 = (x_4406 * x_4408);
            let x_4411 : vec4<f32> = u_xlat16;
            let x_4412 : vec2<f32> = vec2<f32>(x_4411.x, x_4411.y);
            let x_4414 : f32 = u_xlat11.z;
            txVec64 = vec3<f32>(x_4412.x, x_4412.y, x_4414);
            let x_4421 : vec3<f32> = txVec64;
            let x_4423 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4421.xy, x_4421.z);
            u_xlat88 = x_4423;
            let x_4425 : vec4<f32> = u_xlat16;
            let x_4426 : vec2<f32> = vec2<f32>(x_4425.z, x_4425.w);
            let x_4428 : f32 = u_xlat11.z;
            txVec65 = vec3<f32>(x_4426.x, x_4426.y, x_4428);
            let x_4436 : vec3<f32> = txVec65;
            let x_4438 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4436.xy, x_4436.z);
            u_xlat89 = x_4438;
            let x_4439 : f32 = u_xlat89;
            let x_4441 : f32 = u_xlat19.y;
            u_xlat89 = (x_4439 * x_4441);
            let x_4444 : f32 = u_xlat19.x;
            let x_4445 : f32 = u_xlat88;
            let x_4447 : f32 = u_xlat89;
            u_xlat88 = ((x_4444 * x_4445) + x_4447);
            let x_4450 : vec2<f32> = u_xlat64;
            let x_4452 : f32 = u_xlat11.z;
            txVec66 = vec3<f32>(x_4450.x, x_4450.y, x_4452);
            let x_4459 : vec3<f32> = txVec66;
            let x_4461 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4459.xy, x_4459.z);
            u_xlat89 = x_4461;
            let x_4463 : f32 = u_xlat19.z;
            let x_4464 : f32 = u_xlat89;
            let x_4466 : f32 = u_xlat88;
            u_xlat88 = ((x_4463 * x_4464) + x_4466);
            let x_4469 : vec4<f32> = u_xlat15;
            let x_4470 : vec2<f32> = vec2<f32>(x_4469.x, x_4469.y);
            let x_4472 : f32 = u_xlat11.z;
            txVec67 = vec3<f32>(x_4470.x, x_4470.y, x_4472);
            let x_4479 : vec3<f32> = txVec67;
            let x_4481 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4479.xy, x_4479.z);
            u_xlat89 = x_4481;
            let x_4483 : f32 = u_xlat19.w;
            let x_4484 : f32 = u_xlat89;
            let x_4486 : f32 = u_xlat88;
            u_xlat88 = ((x_4483 * x_4484) + x_4486);
            let x_4489 : vec4<f32> = u_xlat17;
            let x_4490 : vec2<f32> = vec2<f32>(x_4489.x, x_4489.y);
            let x_4492 : f32 = u_xlat11.z;
            txVec68 = vec3<f32>(x_4490.x, x_4490.y, x_4492);
            let x_4499 : vec3<f32> = txVec68;
            let x_4501 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4499.xy, x_4499.z);
            u_xlat89 = x_4501;
            let x_4503 : f32 = u_xlat20.x;
            let x_4504 : f32 = u_xlat89;
            let x_4506 : f32 = u_xlat88;
            u_xlat88 = ((x_4503 * x_4504) + x_4506);
            let x_4509 : vec4<f32> = u_xlat17;
            let x_4510 : vec2<f32> = vec2<f32>(x_4509.z, x_4509.w);
            let x_4512 : f32 = u_xlat11.z;
            txVec69 = vec3<f32>(x_4510.x, x_4510.y, x_4512);
            let x_4519 : vec3<f32> = txVec69;
            let x_4521 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4519.xy, x_4519.z);
            u_xlat89 = x_4521;
            let x_4523 : f32 = u_xlat20.y;
            let x_4524 : f32 = u_xlat89;
            let x_4526 : f32 = u_xlat88;
            u_xlat88 = ((x_4523 * x_4524) + x_4526);
            let x_4529 : vec4<f32> = u_xlat15;
            let x_4530 : vec2<f32> = vec2<f32>(x_4529.z, x_4529.w);
            let x_4532 : f32 = u_xlat11.z;
            txVec70 = vec3<f32>(x_4530.x, x_4530.y, x_4532);
            let x_4539 : vec3<f32> = txVec70;
            let x_4541 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4539.xy, x_4539.z);
            u_xlat89 = x_4541;
            let x_4543 : f32 = u_xlat20.z;
            let x_4544 : f32 = u_xlat89;
            let x_4546 : f32 = u_xlat88;
            u_xlat88 = ((x_4543 * x_4544) + x_4546);
            let x_4549 : vec4<f32> = u_xlat14;
            let x_4550 : vec2<f32> = vec2<f32>(x_4549.x, x_4549.y);
            let x_4552 : f32 = u_xlat11.z;
            txVec71 = vec3<f32>(x_4550.x, x_4550.y, x_4552);
            let x_4559 : vec3<f32> = txVec71;
            let x_4561 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4559.xy, x_4559.z);
            u_xlat89 = x_4561;
            let x_4563 : f32 = u_xlat20.w;
            let x_4564 : f32 = u_xlat89;
            let x_4566 : f32 = u_xlat88;
            u_xlat88 = ((x_4563 * x_4564) + x_4566);
            let x_4569 : vec4<f32> = u_xlat14;
            let x_4570 : vec2<f32> = vec2<f32>(x_4569.z, x_4569.w);
            let x_4572 : f32 = u_xlat11.z;
            txVec72 = vec3<f32>(x_4570.x, x_4570.y, x_4572);
            let x_4579 : vec3<f32> = txVec72;
            let x_4581 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4579.xy, x_4579.z);
            u_xlat89 = x_4581;
            let x_4582 : f32 = u_xlat87;
            let x_4583 : f32 = u_xlat89;
            let x_4585 : f32 = u_xlat88;
            u_xlat86 = ((x_4582 * x_4583) + x_4585);
          } else {
            let x_4588 : vec4<f32> = u_xlat11;
            let x_4591 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_4594 : vec2<f32> = ((vec2<f32>(x_4588.x, x_4588.y) * vec2<f32>(x_4591.z, x_4591.w)) + vec2<f32>(0.5f, 0.5f));
            let x_4595 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4594.x, x_4594.y, x_4595.z, x_4595.w);
            let x_4597 : vec4<f32> = u_xlat12;
            let x_4599 : vec2<f32> = floor(vec2<f32>(x_4597.x, x_4597.y));
            let x_4600 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4599.x, x_4599.y, x_4600.z, x_4600.w);
            let x_4602 : vec4<f32> = u_xlat11;
            let x_4605 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_4608 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_4602.x, x_4602.y) * vec2<f32>(x_4605.z, x_4605.w)) + -(vec2<f32>(x_4608.x, x_4608.y)));
            let x_4612 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_4612.x, x_4612.x, x_4612.y, x_4612.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_4615 : vec4<f32> = u_xlat13;
            let x_4617 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_4615.x, x_4615.x, x_4615.z, x_4615.z) * vec4<f32>(x_4617.x, x_4617.x, x_4617.z, x_4617.z));
            let x_4620 : vec4<f32> = u_xlat14;
            let x_4622 : vec2<f32> = (vec2<f32>(x_4620.y, x_4620.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_4623 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4623.x, x_4622.x, x_4623.z, x_4622.y);
            let x_4625 : vec4<f32> = u_xlat14;
            let x_4628 : vec2<f32> = u_xlat64;
            let x_4630 : vec2<f32> = ((vec2<f32>(x_4625.x, x_4625.z) * vec2<f32>(0.5f, 0.5f)) + -(x_4628));
            let x_4631 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4630.x, x_4631.y, x_4630.y, x_4631.w);
            let x_4633 : vec2<f32> = u_xlat64;
            let x_4635 : vec2<f32> = (-(x_4633) + vec2<f32>(1.0f, 1.0f));
            let x_4636 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4635.x, x_4635.y, x_4636.z, x_4636.w);
            let x_4638 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_4638, vec2<f32>(0.0f, 0.0f));
            let x_4640 : vec2<f32> = u_xlat66;
            let x_4642 : vec2<f32> = u_xlat66;
            let x_4644 : vec4<f32> = u_xlat14;
            let x_4646 : vec2<f32> = ((-(x_4640) * x_4642) + vec2<f32>(x_4644.x, x_4644.y));
            let x_4647 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4646.x, x_4646.y, x_4647.z, x_4647.w);
            let x_4649 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_4649, vec2<f32>(0.0f, 0.0f));
            let x_4652 : vec2<f32> = u_xlat66;
            let x_4654 : vec2<f32> = u_xlat66;
            let x_4656 : vec4<f32> = u_xlat13;
            let x_4658 : vec2<f32> = ((-(x_4652) * x_4654) + vec2<f32>(x_4656.y, x_4656.w));
            let x_4659 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_4658.x, x_4659.y, x_4658.y);
            let x_4661 : vec4<f32> = u_xlat14;
            let x_4663 : vec2<f32> = (vec2<f32>(x_4661.x, x_4661.y) + vec2<f32>(2.0f, 2.0f));
            let x_4664 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4663.x, x_4663.y, x_4664.z, x_4664.w);
            let x_4666 : vec3<f32> = u_xlat39;
            let x_4668 : vec2<f32> = (vec2<f32>(x_4666.x, x_4666.z) + vec2<f32>(2.0f, 2.0f));
            let x_4669 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4669.x, x_4668.x, x_4669.z, x_4668.y);
            let x_4672 : f32 = u_xlat13.y;
            u_xlat16.z = (x_4672 * 0.08163200318813323975f);
            let x_4675 : vec4<f32> = u_xlat13;
            let x_4677 : vec3<f32> = (vec3<f32>(x_4675.z, x_4675.x, x_4675.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_4678 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4677.x, x_4677.y, x_4677.z, x_4678.w);
            let x_4680 : vec4<f32> = u_xlat14;
            let x_4682 : vec2<f32> = (vec2<f32>(x_4680.x, x_4680.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_4683 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4682.x, x_4682.y, x_4683.z, x_4683.w);
            let x_4686 : f32 = u_xlat17.y;
            u_xlat16.x = x_4686;
            let x_4688 : vec2<f32> = u_xlat64;
            let x_4691 : vec2<f32> = ((vec2<f32>(x_4688.x, x_4688.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4692 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4692.x, x_4691.x, x_4692.z, x_4691.y);
            let x_4694 : vec2<f32> = u_xlat64;
            let x_4697 : vec2<f32> = ((vec2<f32>(x_4694.x, x_4694.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4698 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4697.x, x_4698.y, x_4697.y, x_4698.w);
            let x_4701 : f32 = u_xlat13.x;
            u_xlat14.y = x_4701;
            let x_4704 : f32 = u_xlat15.y;
            u_xlat14.w = x_4704;
            let x_4706 : vec4<f32> = u_xlat14;
            let x_4707 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_4706 + x_4707);
            let x_4709 : vec2<f32> = u_xlat64;
            let x_4712 : vec2<f32> = ((vec2<f32>(x_4709.y, x_4709.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4713 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4713.x, x_4712.x, x_4713.z, x_4712.y);
            let x_4715 : vec2<f32> = u_xlat64;
            let x_4718 : vec2<f32> = ((vec2<f32>(x_4715.y, x_4715.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4719 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4718.x, x_4719.y, x_4718.y, x_4719.w);
            let x_4722 : f32 = u_xlat13.y;
            u_xlat15.y = x_4722;
            let x_4724 : vec4<f32> = u_xlat15;
            let x_4725 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_4724 + x_4725);
            let x_4727 : vec4<f32> = u_xlat14;
            let x_4728 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_4727 / x_4728);
            let x_4730 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_4730 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4732 : vec4<f32> = u_xlat15;
            let x_4733 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_4732 / x_4733);
            let x_4735 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_4735 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4737 : vec4<f32> = u_xlat14;
            let x_4740 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_4737.w, x_4737.x, x_4737.y, x_4737.z) * vec4<f32>(x_4740.x, x_4740.x, x_4740.x, x_4740.x));
            let x_4743 : vec4<f32> = u_xlat15;
            let x_4746 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_4743.x, x_4743.w, x_4743.y, x_4743.z) * vec4<f32>(x_4746.y, x_4746.y, x_4746.y, x_4746.y));
            let x_4749 : vec4<f32> = u_xlat14;
            let x_4750 : vec3<f32> = vec3<f32>(x_4749.y, x_4749.z, x_4749.w);
            let x_4751 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4750.x, x_4751.y, x_4750.y, x_4750.z);
            let x_4754 : f32 = u_xlat15.x;
            u_xlat17.y = x_4754;
            let x_4756 : vec4<f32> = u_xlat12;
            let x_4759 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_4762 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_4756.x, x_4756.y, x_4756.x, x_4756.y) * vec4<f32>(x_4759.x, x_4759.y, x_4759.x, x_4759.y)) + vec4<f32>(x_4762.x, x_4762.y, x_4762.z, x_4762.y));
            let x_4765 : vec4<f32> = u_xlat12;
            let x_4768 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_4771 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_4765.x, x_4765.y) * vec2<f32>(x_4768.x, x_4768.y)) + vec2<f32>(x_4771.w, x_4771.y));
            let x_4775 : f32 = u_xlat17.y;
            u_xlat14.y = x_4775;
            let x_4778 : f32 = u_xlat15.z;
            u_xlat17.y = x_4778;
            let x_4780 : vec4<f32> = u_xlat12;
            let x_4783 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_4786 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_4780.x, x_4780.y, x_4780.x, x_4780.y) * vec4<f32>(x_4783.x, x_4783.y, x_4783.x, x_4783.y)) + vec4<f32>(x_4786.x, x_4786.y, x_4786.z, x_4786.y));
            let x_4789 : vec4<f32> = u_xlat12;
            let x_4792 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_4795 : vec4<f32> = u_xlat17;
            let x_4797 : vec2<f32> = ((vec2<f32>(x_4789.x, x_4789.y) * vec2<f32>(x_4792.x, x_4792.y)) + vec2<f32>(x_4795.w, x_4795.y));
            let x_4798 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_4797.x, x_4797.y, x_4798.z, x_4798.w);
            let x_4801 : f32 = u_xlat17.y;
            u_xlat14.z = x_4801;
            let x_4803 : vec4<f32> = u_xlat12;
            let x_4806 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_4809 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_4803.x, x_4803.y, x_4803.x, x_4803.y) * vec4<f32>(x_4806.x, x_4806.y, x_4806.x, x_4806.y)) + vec4<f32>(x_4809.x, x_4809.y, x_4809.x, x_4809.z));
            let x_4813 : f32 = u_xlat15.w;
            u_xlat17.y = x_4813;
            let x_4816 : vec4<f32> = u_xlat12;
            let x_4819 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_4822 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_4816.x, x_4816.y, x_4816.x, x_4816.y) * vec4<f32>(x_4819.x, x_4819.y, x_4819.x, x_4819.y)) + vec4<f32>(x_4822.x, x_4822.y, x_4822.z, x_4822.y));
            let x_4826 : vec4<f32> = u_xlat12;
            let x_4829 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_4832 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_4826.x, x_4826.y) * vec2<f32>(x_4829.x, x_4829.y)) + vec2<f32>(x_4832.w, x_4832.y));
            let x_4836 : f32 = u_xlat17.y;
            u_xlat14.w = x_4836;
            let x_4839 : vec4<f32> = u_xlat12;
            let x_4842 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_4845 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_4839.x, x_4839.y) * vec2<f32>(x_4842.x, x_4842.y)) + vec2<f32>(x_4845.x, x_4845.w));
            let x_4848 : vec4<f32> = u_xlat17;
            let x_4849 : vec3<f32> = vec3<f32>(x_4848.x, x_4848.z, x_4848.w);
            let x_4850 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4849.x, x_4850.y, x_4849.y, x_4849.z);
            let x_4852 : vec4<f32> = u_xlat12;
            let x_4855 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_4858 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_4852.x, x_4852.y, x_4852.x, x_4852.y) * vec4<f32>(x_4855.x, x_4855.y, x_4855.x, x_4855.y)) + vec4<f32>(x_4858.x, x_4858.y, x_4858.z, x_4858.y));
            let x_4861 : vec4<f32> = u_xlat12;
            let x_4864 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_4867 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_4861.x, x_4861.y) * vec2<f32>(x_4864.x, x_4864.y)) + vec2<f32>(x_4867.w, x_4867.y));
            let x_4871 : f32 = u_xlat14.x;
            u_xlat15.x = x_4871;
            let x_4873 : vec4<f32> = u_xlat12;
            let x_4876 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_4879 : vec4<f32> = u_xlat15;
            let x_4881 : vec2<f32> = ((vec2<f32>(x_4873.x, x_4873.y) * vec2<f32>(x_4876.x, x_4876.y)) + vec2<f32>(x_4879.x, x_4879.y));
            let x_4882 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4881.x, x_4881.y, x_4882.z, x_4882.w);
            let x_4885 : vec4<f32> = u_xlat13;
            let x_4887 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_4885.x, x_4885.x, x_4885.x, x_4885.x) * x_4887);
            let x_4890 : vec4<f32> = u_xlat13;
            let x_4892 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_4890.y, x_4890.y, x_4890.y, x_4890.y) * x_4892);
            let x_4895 : vec4<f32> = u_xlat13;
            let x_4897 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_4895.z, x_4895.z, x_4895.z, x_4895.z) * x_4897);
            let x_4899 : vec4<f32> = u_xlat13;
            let x_4901 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_4899.w, x_4899.w, x_4899.w, x_4899.w) * x_4901);
            let x_4904 : vec4<f32> = u_xlat18;
            let x_4905 : vec2<f32> = vec2<f32>(x_4904.x, x_4904.y);
            let x_4907 : f32 = u_xlat11.z;
            txVec73 = vec3<f32>(x_4905.x, x_4905.y, x_4907);
            let x_4914 : vec3<f32> = txVec73;
            let x_4916 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4914.xy, x_4914.z);
            u_xlat87 = x_4916;
            let x_4918 : vec4<f32> = u_xlat18;
            let x_4919 : vec2<f32> = vec2<f32>(x_4918.z, x_4918.w);
            let x_4921 : f32 = u_xlat11.z;
            txVec74 = vec3<f32>(x_4919.x, x_4919.y, x_4921);
            let x_4928 : vec3<f32> = txVec74;
            let x_4930 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4928.xy, x_4928.z);
            u_xlat88 = x_4930;
            let x_4931 : f32 = u_xlat88;
            let x_4933 : f32 = u_xlat23.y;
            u_xlat88 = (x_4931 * x_4933);
            let x_4936 : f32 = u_xlat23.x;
            let x_4937 : f32 = u_xlat87;
            let x_4939 : f32 = u_xlat88;
            u_xlat87 = ((x_4936 * x_4937) + x_4939);
            let x_4942 : vec2<f32> = u_xlat64;
            let x_4944 : f32 = u_xlat11.z;
            txVec75 = vec3<f32>(x_4942.x, x_4942.y, x_4944);
            let x_4951 : vec3<f32> = txVec75;
            let x_4953 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4951.xy, x_4951.z);
            u_xlat88 = x_4953;
            let x_4955 : f32 = u_xlat23.z;
            let x_4956 : f32 = u_xlat88;
            let x_4958 : f32 = u_xlat87;
            u_xlat87 = ((x_4955 * x_4956) + x_4958);
            let x_4961 : vec4<f32> = u_xlat21;
            let x_4962 : vec2<f32> = vec2<f32>(x_4961.x, x_4961.y);
            let x_4964 : f32 = u_xlat11.z;
            txVec76 = vec3<f32>(x_4962.x, x_4962.y, x_4964);
            let x_4971 : vec3<f32> = txVec76;
            let x_4973 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4971.xy, x_4971.z);
            u_xlat88 = x_4973;
            let x_4975 : f32 = u_xlat23.w;
            let x_4976 : f32 = u_xlat88;
            let x_4978 : f32 = u_xlat87;
            u_xlat87 = ((x_4975 * x_4976) + x_4978);
            let x_4981 : vec4<f32> = u_xlat19;
            let x_4982 : vec2<f32> = vec2<f32>(x_4981.x, x_4981.y);
            let x_4984 : f32 = u_xlat11.z;
            txVec77 = vec3<f32>(x_4982.x, x_4982.y, x_4984);
            let x_4991 : vec3<f32> = txVec77;
            let x_4993 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4991.xy, x_4991.z);
            u_xlat88 = x_4993;
            let x_4995 : f32 = u_xlat24.x;
            let x_4996 : f32 = u_xlat88;
            let x_4998 : f32 = u_xlat87;
            u_xlat87 = ((x_4995 * x_4996) + x_4998);
            let x_5001 : vec4<f32> = u_xlat19;
            let x_5002 : vec2<f32> = vec2<f32>(x_5001.z, x_5001.w);
            let x_5004 : f32 = u_xlat11.z;
            txVec78 = vec3<f32>(x_5002.x, x_5002.y, x_5004);
            let x_5011 : vec3<f32> = txVec78;
            let x_5013 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5011.xy, x_5011.z);
            u_xlat88 = x_5013;
            let x_5015 : f32 = u_xlat24.y;
            let x_5016 : f32 = u_xlat88;
            let x_5018 : f32 = u_xlat87;
            u_xlat87 = ((x_5015 * x_5016) + x_5018);
            let x_5021 : vec4<f32> = u_xlat20;
            let x_5022 : vec2<f32> = vec2<f32>(x_5021.x, x_5021.y);
            let x_5024 : f32 = u_xlat11.z;
            txVec79 = vec3<f32>(x_5022.x, x_5022.y, x_5024);
            let x_5031 : vec3<f32> = txVec79;
            let x_5033 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5031.xy, x_5031.z);
            u_xlat88 = x_5033;
            let x_5035 : f32 = u_xlat24.z;
            let x_5036 : f32 = u_xlat88;
            let x_5038 : f32 = u_xlat87;
            u_xlat87 = ((x_5035 * x_5036) + x_5038);
            let x_5041 : vec4<f32> = u_xlat21;
            let x_5042 : vec2<f32> = vec2<f32>(x_5041.z, x_5041.w);
            let x_5044 : f32 = u_xlat11.z;
            txVec80 = vec3<f32>(x_5042.x, x_5042.y, x_5044);
            let x_5051 : vec3<f32> = txVec80;
            let x_5053 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5051.xy, x_5051.z);
            u_xlat88 = x_5053;
            let x_5055 : f32 = u_xlat24.w;
            let x_5056 : f32 = u_xlat88;
            let x_5058 : f32 = u_xlat87;
            u_xlat87 = ((x_5055 * x_5056) + x_5058);
            let x_5061 : vec4<f32> = u_xlat22;
            let x_5062 : vec2<f32> = vec2<f32>(x_5061.x, x_5061.y);
            let x_5064 : f32 = u_xlat11.z;
            txVec81 = vec3<f32>(x_5062.x, x_5062.y, x_5064);
            let x_5071 : vec3<f32> = txVec81;
            let x_5073 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5071.xy, x_5071.z);
            u_xlat88 = x_5073;
            let x_5075 : f32 = u_xlat25.x;
            let x_5076 : f32 = u_xlat88;
            let x_5078 : f32 = u_xlat87;
            u_xlat87 = ((x_5075 * x_5076) + x_5078);
            let x_5081 : vec4<f32> = u_xlat22;
            let x_5082 : vec2<f32> = vec2<f32>(x_5081.z, x_5081.w);
            let x_5084 : f32 = u_xlat11.z;
            txVec82 = vec3<f32>(x_5082.x, x_5082.y, x_5084);
            let x_5091 : vec3<f32> = txVec82;
            let x_5093 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5091.xy, x_5091.z);
            u_xlat88 = x_5093;
            let x_5095 : f32 = u_xlat25.y;
            let x_5096 : f32 = u_xlat88;
            let x_5098 : f32 = u_xlat87;
            u_xlat87 = ((x_5095 * x_5096) + x_5098);
            let x_5101 : vec2<f32> = u_xlat40;
            let x_5103 : f32 = u_xlat11.z;
            txVec83 = vec3<f32>(x_5101.x, x_5101.y, x_5103);
            let x_5110 : vec3<f32> = txVec83;
            let x_5112 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5110.xy, x_5110.z);
            u_xlat88 = x_5112;
            let x_5114 : f32 = u_xlat25.z;
            let x_5115 : f32 = u_xlat88;
            let x_5117 : f32 = u_xlat87;
            u_xlat87 = ((x_5114 * x_5115) + x_5117);
            let x_5120 : vec2<f32> = u_xlat72;
            let x_5122 : f32 = u_xlat11.z;
            txVec84 = vec3<f32>(x_5120.x, x_5120.y, x_5122);
            let x_5129 : vec3<f32> = txVec84;
            let x_5131 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5129.xy, x_5129.z);
            u_xlat88 = x_5131;
            let x_5133 : f32 = u_xlat25.w;
            let x_5134 : f32 = u_xlat88;
            let x_5136 : f32 = u_xlat87;
            u_xlat87 = ((x_5133 * x_5134) + x_5136);
            let x_5139 : vec4<f32> = u_xlat17;
            let x_5140 : vec2<f32> = vec2<f32>(x_5139.x, x_5139.y);
            let x_5142 : f32 = u_xlat11.z;
            txVec85 = vec3<f32>(x_5140.x, x_5140.y, x_5142);
            let x_5149 : vec3<f32> = txVec85;
            let x_5151 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5149.xy, x_5149.z);
            u_xlat88 = x_5151;
            let x_5153 : f32 = u_xlat13.x;
            let x_5154 : f32 = u_xlat88;
            let x_5156 : f32 = u_xlat87;
            u_xlat87 = ((x_5153 * x_5154) + x_5156);
            let x_5159 : vec4<f32> = u_xlat17;
            let x_5160 : vec2<f32> = vec2<f32>(x_5159.z, x_5159.w);
            let x_5162 : f32 = u_xlat11.z;
            txVec86 = vec3<f32>(x_5160.x, x_5160.y, x_5162);
            let x_5169 : vec3<f32> = txVec86;
            let x_5171 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5169.xy, x_5169.z);
            u_xlat88 = x_5171;
            let x_5173 : f32 = u_xlat13.y;
            let x_5174 : f32 = u_xlat88;
            let x_5176 : f32 = u_xlat87;
            u_xlat87 = ((x_5173 * x_5174) + x_5176);
            let x_5179 : vec2<f32> = u_xlat67;
            let x_5181 : f32 = u_xlat11.z;
            txVec87 = vec3<f32>(x_5179.x, x_5179.y, x_5181);
            let x_5188 : vec3<f32> = txVec87;
            let x_5190 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5188.xy, x_5188.z);
            u_xlat88 = x_5190;
            let x_5192 : f32 = u_xlat13.z;
            let x_5193 : f32 = u_xlat88;
            let x_5195 : f32 = u_xlat87;
            u_xlat87 = ((x_5192 * x_5193) + x_5195);
            let x_5198 : vec4<f32> = u_xlat12;
            let x_5199 : vec2<f32> = vec2<f32>(x_5198.x, x_5198.y);
            let x_5201 : f32 = u_xlat11.z;
            txVec88 = vec3<f32>(x_5199.x, x_5199.y, x_5201);
            let x_5208 : vec3<f32> = txVec88;
            let x_5210 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5208.xy, x_5208.z);
            u_xlat88 = x_5210;
            let x_5212 : f32 = u_xlat13.w;
            let x_5213 : f32 = u_xlat88;
            let x_5215 : f32 = u_xlat87;
            u_xlat86 = ((x_5212 * x_5213) + x_5215);
          }
        }
      } else {
        let x_5219 : vec4<f32> = u_xlat11;
        let x_5220 : vec2<f32> = vec2<f32>(x_5219.x, x_5219.y);
        let x_5222 : f32 = u_xlat11.z;
        txVec89 = vec3<f32>(x_5220.x, x_5220.y, x_5222);
        let x_5229 : vec3<f32> = txVec89;
        let x_5231 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5229.xy, x_5229.z);
        u_xlat86 = x_5231;
      }
      let x_5232 : i32 = u_xlati82;
      let x_5234 : f32 = x_264.x_AdditionalShadowParams[x_5232].x;
      u_xlat87 = (1.0f + -(x_5234));
      let x_5237 : f32 = u_xlat86;
      let x_5238 : i32 = u_xlati82;
      let x_5240 : f32 = x_264.x_AdditionalShadowParams[x_5238].x;
      let x_5242 : f32 = u_xlat87;
      u_xlat86 = ((x_5237 * x_5240) + x_5242);
      let x_5245 : f32 = u_xlat11.z;
      u_xlatb87 = (0.0f >= x_5245);
      let x_5249 : f32 = u_xlat11.z;
      u_xlatb88 = (x_5249 >= 1.0f);
      let x_5251 : bool = u_xlatb87;
      let x_5252 : bool = u_xlatb88;
      u_xlatb87 = (x_5251 | x_5252);
      let x_5254 : bool = u_xlatb87;
      let x_5255 : f32 = u_xlat86;
      u_xlat86 = select(x_5255, 1.0f, x_5254);
    } else {
      u_xlat86 = 1.0f;
    }
    let x_5258 : f32 = u_xlat86;
    u_xlat87 = (-(x_5258) + 1.0f);
    let x_5261 : f32 = u_xlat79;
    let x_5262 : f32 = u_xlat87;
    let x_5264 : f32 = u_xlat86;
    u_xlat86 = ((x_5261 * x_5262) + x_5264);
    let x_5267 : i32 = u_xlati82;
    u_xlati87 = (1i << bitcast<u32>((x_5267 & 31i)));
    let x_5271 : i32 = u_xlati87;
    let x_5274 : f32 = x_3415.x_AdditionalLightsCookieEnableBits;
    u_xlati87 = bitcast<i32>((bitcast<u32>(x_5271) & bitcast<u32>(x_5274)));
    let x_5278 : i32 = u_xlati87;
    if ((x_5278 != 0i)) {
      let x_5282 : i32 = u_xlati82;
      let x_5284 : f32 = x_3415.x_AdditionalLightsLightTypes[x_5282].el;
      u_xlati87 = i32(x_5284);
      let x_5287 : i32 = u_xlati87;
      u_xlati88 = select(1i, 0i, (x_5287 != 0i));
      let x_5291 : i32 = u_xlati82;
      u_xlati11 = (x_5291 << bitcast<u32>(2i));
      let x_5293 : i32 = u_xlati88;
      if ((x_5293 != 0i)) {
        let x_5298 : vec3<f32> = vs_INTERP8;
        let x_5300 : i32 = u_xlati11;
        let x_5303 : i32 = u_xlati11;
        let x_5307 : vec4<f32> = x_3415.x_AdditionalLightsWorldToLights[((x_5300 + 1i) / 4i)][((x_5303 + 1i) % 4i)];
        u_xlat37 = (vec3<f32>(x_5298.y, x_5298.y, x_5298.y) * vec3<f32>(x_5307.x, x_5307.y, x_5307.w));
        let x_5310 : i32 = u_xlati11;
        let x_5312 : i32 = u_xlati11;
        let x_5315 : vec4<f32> = x_3415.x_AdditionalLightsWorldToLights[(x_5310 / 4i)][(x_5312 % 4i)];
        let x_5317 : vec3<f32> = vs_INTERP8;
        let x_5320 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_5315.x, x_5315.y, x_5315.w) * vec3<f32>(x_5317.x, x_5317.x, x_5317.x)) + x_5320);
        let x_5322 : i32 = u_xlati11;
        let x_5325 : i32 = u_xlati11;
        let x_5329 : vec4<f32> = x_3415.x_AdditionalLightsWorldToLights[((x_5322 + 2i) / 4i)][((x_5325 + 2i) % 4i)];
        let x_5331 : vec3<f32> = vs_INTERP8;
        let x_5334 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_5329.x, x_5329.y, x_5329.w) * vec3<f32>(x_5331.z, x_5331.z, x_5331.z)) + x_5334);
        let x_5336 : vec3<f32> = u_xlat37;
        let x_5337 : i32 = u_xlati11;
        let x_5340 : i32 = u_xlati11;
        let x_5344 : vec4<f32> = x_3415.x_AdditionalLightsWorldToLights[((x_5337 + 3i) / 4i)][((x_5340 + 3i) % 4i)];
        u_xlat37 = (x_5336 + vec3<f32>(x_5344.x, x_5344.y, x_5344.w));
        let x_5347 : vec3<f32> = u_xlat37;
        let x_5349 : vec3<f32> = u_xlat37;
        let x_5351 : vec2<f32> = (vec2<f32>(x_5347.x, x_5347.y) / vec2<f32>(x_5349.z, x_5349.z));
        let x_5352 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_5351.x, x_5351.y, x_5352.z);
        let x_5354 : vec3<f32> = u_xlat37;
        let x_5357 : vec2<f32> = ((vec2<f32>(x_5354.x, x_5354.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_5358 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_5357.x, x_5357.y, x_5358.z);
        let x_5360 : vec3<f32> = u_xlat37;
        let x_5364 : vec2<f32> = clamp(vec2<f32>(x_5360.x, x_5360.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_5365 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_5364.x, x_5364.y, x_5365.z);
        let x_5367 : i32 = u_xlati82;
        let x_5369 : vec4<f32> = x_3415.x_AdditionalLightsCookieAtlasUVRects[x_5367];
        let x_5371 : vec3<f32> = u_xlat37;
        let x_5374 : i32 = u_xlati82;
        let x_5376 : vec4<f32> = x_3415.x_AdditionalLightsCookieAtlasUVRects[x_5374];
        let x_5378 : vec2<f32> = ((vec2<f32>(x_5369.x, x_5369.y) * vec2<f32>(x_5371.x, x_5371.y)) + vec2<f32>(x_5376.z, x_5376.w));
        let x_5379 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_5378.x, x_5378.y, x_5379.z);
      } else {
        let x_5382 : i32 = u_xlati87;
        u_xlatb87 = (x_5382 == 1i);
        let x_5384 : bool = u_xlatb87;
        u_xlati87 = select(0i, 1i, x_5384);
        let x_5386 : i32 = u_xlati87;
        if ((x_5386 != 0i)) {
          let x_5390 : vec3<f32> = vs_INTERP8;
          let x_5392 : i32 = u_xlati11;
          let x_5395 : i32 = u_xlati11;
          let x_5399 : vec4<f32> = x_3415.x_AdditionalLightsWorldToLights[((x_5392 + 1i) / 4i)][((x_5395 + 1i) % 4i)];
          let x_5401 : vec2<f32> = (vec2<f32>(x_5390.y, x_5390.y) * vec2<f32>(x_5399.x, x_5399.y));
          let x_5402 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5401.x, x_5401.y, x_5402.z, x_5402.w);
          let x_5404 : i32 = u_xlati11;
          let x_5406 : i32 = u_xlati11;
          let x_5409 : vec4<f32> = x_3415.x_AdditionalLightsWorldToLights[(x_5404 / 4i)][(x_5406 % 4i)];
          let x_5411 : vec3<f32> = vs_INTERP8;
          let x_5414 : vec4<f32> = u_xlat12;
          let x_5416 : vec2<f32> = ((vec2<f32>(x_5409.x, x_5409.y) * vec2<f32>(x_5411.x, x_5411.x)) + vec2<f32>(x_5414.x, x_5414.y));
          let x_5417 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5416.x, x_5416.y, x_5417.z, x_5417.w);
          let x_5419 : i32 = u_xlati11;
          let x_5422 : i32 = u_xlati11;
          let x_5426 : vec4<f32> = x_3415.x_AdditionalLightsWorldToLights[((x_5419 + 2i) / 4i)][((x_5422 + 2i) % 4i)];
          let x_5428 : vec3<f32> = vs_INTERP8;
          let x_5431 : vec4<f32> = u_xlat12;
          let x_5433 : vec2<f32> = ((vec2<f32>(x_5426.x, x_5426.y) * vec2<f32>(x_5428.z, x_5428.z)) + vec2<f32>(x_5431.x, x_5431.y));
          let x_5434 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5433.x, x_5433.y, x_5434.z, x_5434.w);
          let x_5436 : vec4<f32> = u_xlat12;
          let x_5438 : i32 = u_xlati11;
          let x_5441 : i32 = u_xlati11;
          let x_5445 : vec4<f32> = x_3415.x_AdditionalLightsWorldToLights[((x_5438 + 3i) / 4i)][((x_5441 + 3i) % 4i)];
          let x_5447 : vec2<f32> = (vec2<f32>(x_5436.x, x_5436.y) + vec2<f32>(x_5445.x, x_5445.y));
          let x_5448 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5447.x, x_5447.y, x_5448.z, x_5448.w);
          let x_5450 : vec4<f32> = u_xlat12;
          let x_5453 : vec2<f32> = ((vec2<f32>(x_5450.x, x_5450.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_5454 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5453.x, x_5453.y, x_5454.z, x_5454.w);
          let x_5456 : vec4<f32> = u_xlat12;
          let x_5458 : vec2<f32> = fract(vec2<f32>(x_5456.x, x_5456.y));
          let x_5459 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5458.x, x_5458.y, x_5459.z, x_5459.w);
          let x_5461 : i32 = u_xlati82;
          let x_5463 : vec4<f32> = x_3415.x_AdditionalLightsCookieAtlasUVRects[x_5461];
          let x_5465 : vec4<f32> = u_xlat12;
          let x_5468 : i32 = u_xlati82;
          let x_5470 : vec4<f32> = x_3415.x_AdditionalLightsCookieAtlasUVRects[x_5468];
          let x_5472 : vec2<f32> = ((vec2<f32>(x_5463.x, x_5463.y) * vec2<f32>(x_5465.x, x_5465.y)) + vec2<f32>(x_5470.z, x_5470.w));
          let x_5473 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_5472.x, x_5472.y, x_5473.z);
        } else {
          let x_5476 : vec3<f32> = vs_INTERP8;
          let x_5478 : i32 = u_xlati11;
          let x_5481 : i32 = u_xlati11;
          let x_5485 : vec4<f32> = x_3415.x_AdditionalLightsWorldToLights[((x_5478 + 1i) / 4i)][((x_5481 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_5476.y, x_5476.y, x_5476.y, x_5476.y) * x_5485);
          let x_5487 : i32 = u_xlati11;
          let x_5489 : i32 = u_xlati11;
          let x_5492 : vec4<f32> = x_3415.x_AdditionalLightsWorldToLights[(x_5487 / 4i)][(x_5489 % 4i)];
          let x_5493 : vec3<f32> = vs_INTERP8;
          let x_5496 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_5492 * vec4<f32>(x_5493.x, x_5493.x, x_5493.x, x_5493.x)) + x_5496);
          let x_5498 : i32 = u_xlati11;
          let x_5501 : i32 = u_xlati11;
          let x_5505 : vec4<f32> = x_3415.x_AdditionalLightsWorldToLights[((x_5498 + 2i) / 4i)][((x_5501 + 2i) % 4i)];
          let x_5506 : vec3<f32> = vs_INTERP8;
          let x_5509 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_5505 * vec4<f32>(x_5506.z, x_5506.z, x_5506.z, x_5506.z)) + x_5509);
          let x_5511 : vec4<f32> = u_xlat12;
          let x_5512 : i32 = u_xlati11;
          let x_5515 : i32 = u_xlati11;
          let x_5519 : vec4<f32> = x_3415.x_AdditionalLightsWorldToLights[((x_5512 + 3i) / 4i)][((x_5515 + 3i) % 4i)];
          u_xlat12 = (x_5511 + x_5519);
          let x_5521 : vec4<f32> = u_xlat12;
          let x_5523 : vec4<f32> = u_xlat12;
          let x_5525 : vec3<f32> = (vec3<f32>(x_5521.x, x_5521.y, x_5521.z) / vec3<f32>(x_5523.w, x_5523.w, x_5523.w));
          let x_5526 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5525.x, x_5525.y, x_5525.z, x_5526.w);
          let x_5528 : vec4<f32> = u_xlat12;
          let x_5530 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(vec3<f32>(x_5528.x, x_5528.y, x_5528.z), vec3<f32>(x_5530.x, x_5530.y, x_5530.z));
          let x_5533 : f32 = u_xlat87;
          u_xlat87 = inverseSqrt(x_5533);
          let x_5535 : f32 = u_xlat87;
          let x_5537 : vec4<f32> = u_xlat12;
          let x_5539 : vec3<f32> = (vec3<f32>(x_5535, x_5535, x_5535) * vec3<f32>(x_5537.x, x_5537.y, x_5537.z));
          let x_5540 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5539.x, x_5539.y, x_5539.z, x_5540.w);
          let x_5542 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(abs(vec3<f32>(x_5542.x, x_5542.y, x_5542.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_5547 : f32 = u_xlat87;
          u_xlat87 = max(x_5547, 0.00000099999999747524f);
          let x_5550 : f32 = u_xlat87;
          u_xlat87 = (1.0f / x_5550);
          let x_5552 : f32 = u_xlat87;
          let x_5554 : vec4<f32> = u_xlat12;
          let x_5556 : vec3<f32> = (vec3<f32>(x_5552, x_5552, x_5552) * vec3<f32>(x_5554.z, x_5554.x, x_5554.y));
          let x_5557 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_5556.x, x_5556.y, x_5556.z, x_5557.w);
          let x_5560 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_5560);
          let x_5564 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_5564, 0.0f, 1.0f);
          let x_5567 : vec4<f32> = u_xlat13;
          let x_5569 : vec4<bool> = (vec4<f32>(x_5567.y, x_5567.y, x_5567.y, x_5567.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_5570 : vec2<bool> = vec2<bool>(x_5569.x, x_5569.w);
          let x_5571 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_5570.x, x_5571.y, x_5571.z, x_5570.y);
          let x_5574 : bool = u_xlatb11.x;
          if (x_5574) {
            let x_5579 : f32 = u_xlat13.x;
            x_5575 = x_5579;
          } else {
            let x_5582 : f32 = u_xlat13.x;
            x_5575 = -(x_5582);
          }
          let x_5584 : f32 = x_5575;
          u_xlat11.x = x_5584;
          let x_5587 : bool = u_xlatb11.w;
          if (x_5587) {
            let x_5592 : f32 = u_xlat13.x;
            x_5588 = x_5592;
          } else {
            let x_5595 : f32 = u_xlat13.x;
            x_5588 = -(x_5595);
          }
          let x_5597 : f32 = x_5588;
          u_xlat11.w = x_5597;
          let x_5599 : vec4<f32> = u_xlat12;
          let x_5601 : f32 = u_xlat87;
          let x_5604 : vec4<f32> = u_xlat11;
          let x_5606 : vec2<f32> = ((vec2<f32>(x_5599.x, x_5599.y) * vec2<f32>(x_5601, x_5601)) + vec2<f32>(x_5604.x, x_5604.w));
          let x_5607 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_5606.x, x_5607.y, x_5607.z, x_5606.y);
          let x_5609 : vec4<f32> = u_xlat11;
          let x_5612 : vec2<f32> = ((vec2<f32>(x_5609.x, x_5609.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_5613 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_5612.x, x_5613.y, x_5613.z, x_5612.y);
          let x_5615 : vec4<f32> = u_xlat11;
          let x_5619 : vec2<f32> = clamp(vec2<f32>(x_5615.x, x_5615.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_5620 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_5619.x, x_5620.y, x_5620.z, x_5619.y);
          let x_5622 : i32 = u_xlati82;
          let x_5624 : vec4<f32> = x_3415.x_AdditionalLightsCookieAtlasUVRects[x_5622];
          let x_5626 : vec4<f32> = u_xlat11;
          let x_5629 : i32 = u_xlati82;
          let x_5631 : vec4<f32> = x_3415.x_AdditionalLightsCookieAtlasUVRects[x_5629];
          let x_5633 : vec2<f32> = ((vec2<f32>(x_5624.x, x_5624.y) * vec2<f32>(x_5626.x, x_5626.w)) + vec2<f32>(x_5631.z, x_5631.w));
          let x_5634 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_5633.x, x_5633.y, x_5634.z);
        }
      }
      let x_5641 : vec3<f32> = u_xlat37;
      let x_5643 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_5641.x, x_5641.y), 0.0f);
      u_xlat11 = x_5643;
      let x_5645 : bool = u_xlatb33.y;
      if (x_5645) {
        let x_5650 : f32 = u_xlat11.w;
        x_5646 = x_5650;
      } else {
        let x_5653 : f32 = u_xlat11.x;
        x_5646 = x_5653;
      }
      let x_5654 : f32 = x_5646;
      u_xlat87 = x_5654;
      let x_5656 : bool = u_xlatb33.x;
      if (x_5656) {
        let x_5660 : vec4<f32> = u_xlat11;
        x_5657 = vec3<f32>(x_5660.x, x_5660.y, x_5660.z);
      } else {
        let x_5663 : f32 = u_xlat87;
        x_5657 = vec3<f32>(x_5663, x_5663, x_5663);
      }
      let x_5665 : vec3<f32> = x_5657;
      let x_5666 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_5665.x, x_5665.y, x_5665.z, x_5666.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_5672 : vec4<f32> = u_xlat11;
    let x_5674 : i32 = u_xlati82;
    let x_5676 : vec4<f32> = x_3847.x_AdditionalLightsColor[x_5674];
    let x_5678 : vec3<f32> = (vec3<f32>(x_5672.x, x_5672.y, x_5672.z) * vec3<f32>(x_5676.x, x_5676.y, x_5676.z));
    let x_5679 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_5678.x, x_5678.y, x_5678.z, x_5679.w);
    let x_5681 : f32 = u_xlat83;
    let x_5682 : f32 = u_xlat86;
    u_xlat82 = (x_5681 * x_5682);
    let x_5684 : vec4<f32> = u_xlat3;
    let x_5686 : vec4<f32> = u_xlat10;
    u_xlat83 = dot(vec3<f32>(x_5684.x, x_5684.y, x_5684.z), vec3<f32>(x_5686.x, x_5686.y, x_5686.z));
    let x_5689 : f32 = u_xlat83;
    u_xlat83 = clamp(x_5689, 0.0f, 1.0f);
    let x_5691 : f32 = u_xlat82;
    let x_5692 : f32 = u_xlat83;
    u_xlat82 = (x_5691 * x_5692);
    let x_5694 : f32 = u_xlat82;
    let x_5696 : vec4<f32> = u_xlat11;
    let x_5698 : vec3<f32> = (vec3<f32>(x_5694, x_5694, x_5694) * vec3<f32>(x_5696.x, x_5696.y, x_5696.z));
    let x_5699 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_5698.x, x_5698.y, x_5698.z, x_5699.w);
    let x_5701 : vec4<f32> = u_xlat9;
    let x_5703 : f32 = u_xlat85;
    let x_5706 : vec3<f32> = u_xlat2;
    let x_5707 : vec3<f32> = ((vec3<f32>(x_5701.x, x_5701.y, x_5701.z) * vec3<f32>(x_5703, x_5703, x_5703)) + x_5706);
    let x_5708 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_5707.x, x_5707.y, x_5707.z, x_5708.w);
    let x_5710 : vec4<f32> = u_xlat9;
    let x_5712 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(vec3<f32>(x_5710.x, x_5710.y, x_5710.z), vec3<f32>(x_5712.x, x_5712.y, x_5712.z));
    let x_5715 : f32 = u_xlat82;
    u_xlat82 = max(x_5715, 1.17549435e-38f);
    let x_5717 : f32 = u_xlat82;
    u_xlat82 = inverseSqrt(x_5717);
    let x_5719 : f32 = u_xlat82;
    let x_5721 : vec4<f32> = u_xlat9;
    let x_5723 : vec3<f32> = (vec3<f32>(x_5719, x_5719, x_5719) * vec3<f32>(x_5721.x, x_5721.y, x_5721.z));
    let x_5724 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_5723.x, x_5723.y, x_5723.z, x_5724.w);
    let x_5726 : vec4<f32> = u_xlat3;
    let x_5728 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(vec3<f32>(x_5726.x, x_5726.y, x_5726.z), vec3<f32>(x_5728.x, x_5728.y, x_5728.z));
    let x_5731 : f32 = u_xlat82;
    u_xlat82 = clamp(x_5731, 0.0f, 1.0f);
    let x_5733 : vec4<f32> = u_xlat10;
    let x_5735 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_5733.x, x_5733.y, x_5733.z), vec3<f32>(x_5735.x, x_5735.y, x_5735.z));
    let x_5738 : f32 = u_xlat83;
    u_xlat83 = clamp(x_5738, 0.0f, 1.0f);
    let x_5740 : f32 = u_xlat82;
    let x_5741 : f32 = u_xlat82;
    u_xlat82 = (x_5740 * x_5741);
    let x_5743 : f32 = u_xlat82;
    let x_5745 : f32 = u_xlat53.x;
    u_xlat82 = ((x_5743 * x_5745) + 1.00001001358032226562f);
    let x_5748 : f32 = u_xlat83;
    let x_5749 : f32 = u_xlat83;
    u_xlat83 = (x_5748 * x_5749);
    let x_5751 : f32 = u_xlat82;
    let x_5752 : f32 = u_xlat82;
    u_xlat82 = (x_5751 * x_5752);
    let x_5754 : f32 = u_xlat83;
    u_xlat83 = max(x_5754, 0.10000000149011611938f);
    let x_5756 : f32 = u_xlat82;
    let x_5757 : f32 = u_xlat83;
    u_xlat82 = (x_5756 * x_5757);
    let x_5759 : f32 = u_xlat84;
    let x_5760 : f32 = u_xlat82;
    u_xlat82 = (x_5759 * x_5760);
    let x_5762 : f32 = u_xlat81;
    let x_5763 : f32 = u_xlat82;
    u_xlat82 = (x_5762 / x_5763);
    let x_5765 : f32 = u_xlat82;
    let x_5768 : vec3<f32> = u_xlat4;
    let x_5769 : vec3<f32> = ((vec3<f32>(x_5765, x_5765, x_5765) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_5768);
    let x_5770 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_5769.x, x_5769.y, x_5769.z, x_5770.w);
    let x_5772 : vec4<f32> = u_xlat9;
    let x_5774 : vec4<f32> = u_xlat11;
    let x_5777 : vec4<f32> = u_xlat8;
    let x_5779 : vec3<f32> = ((vec3<f32>(x_5772.x, x_5772.y, x_5772.z) * vec3<f32>(x_5774.x, x_5774.y, x_5774.z)) + vec3<f32>(x_5777.x, x_5777.y, x_5777.z));
    let x_5780 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_5779.x, x_5779.y, x_5779.z, x_5780.w);

    continuing {
      let x_5782 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_5782 + bitcast<u32>(1i));
    }
  }
  let x_5784 : vec4<f32> = u_xlat5;
  let x_5786 : vec4<f32> = u_xlat7;
  let x_5789 : vec4<f32> = u_xlat6;
  u_xlat2 = ((vec3<f32>(x_5784.x, x_5784.y, x_5784.z) * vec3<f32>(x_5786.x, x_5786.x, x_5786.x)) + vec3<f32>(x_5789.x, x_5789.y, x_5789.z));
  let x_5792 : vec4<f32> = u_xlat8;
  let x_5794 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_5792.x, x_5792.y, x_5792.z) + x_5794);
  let x_5798 : vec4<f32> = vs_INTERP6;
  let x_5800 : vec3<f32> = u_xlat0;
  let x_5802 : vec3<f32> = u_xlat2;
  let x_5803 : vec3<f32> = ((vec3<f32>(x_5798.w, x_5798.w, x_5798.w) * x_5800) + x_5802);
  let x_5804 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_5803.x, x_5803.y, x_5803.z, x_5804.w);
  let x_5806 : bool = u_xlatb27;
  if (x_5806) {
    let x_5811 : f32 = u_xlat1.x;
    x_5807 = x_5811;
  } else {
    x_5807 = 1.0f;
  }
  let x_5813 : f32 = x_5807;
  SV_Target0.w = x_5813;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(5) vs_INTERP9_param : vec3<f32>, @location(4) vs_INTERP8_param : vec3<f32>, @location(2) vs_INTERP5_param : vec4<f32>, @location(3) vs_INTERP6_param : vec4<f32>, @location(1) vs_INTERP4_param : vec4<f32>, @location(0) vs_INTERP0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP9 = vs_INTERP9_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP6 = vs_INTERP6_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP0 = vs_INTERP0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


