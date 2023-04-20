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

@group(0) @binding(5) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(11) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP5 : vec4<f32>;

var<private> u_xlat4 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_204 : UnityPerMaterial;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(6) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(12) var samplerTexture2D_D9BFD5F1 : sampler;

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

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

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

var<private> u_xlat81 : f32;

var<private> u_xlatb33 : vec2<bool>;

var<private> u_xlat33 : vec3<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat85 : f32;

var<private> u_xlat66 : vec2<f32>;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat21 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_3440 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu82 : u32;

var<private> u_xlati83 : i32;

var<private> u_xlati82 : i32;

@group(1) @binding(1) var<uniform> x_3872 : AdditionalLights;

var<private> u_xlat83 : f32;

var<private> u_xlat86 : f32;

var<private> u_xlati86 : i32;

var<private> u_xlatb87 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat88 : f32;

var<private> u_xlat87 : f32;

var<private> u_xlatb86 : bool;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_LinearClamp : sampler;

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
  var x_3522 : f32;
  var x_3533 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_4009 : f32;
  var x_4019 : f32;
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
  var x_5600 : f32;
  var x_5613 : f32;
  var x_5671 : f32;
  var x_5682 : vec3<f32>;
  var x_5832 : f32;
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
  u_xlat3.w = 1.0f;
  let x_2047 : vec4<f32> = x_148.unity_SHAr;
  let x_2048 : vec4<f32> = u_xlat3;
  u_xlat7.x = dot(x_2047, x_2048);
  let x_2053 : vec4<f32> = x_148.unity_SHAg;
  let x_2054 : vec4<f32> = u_xlat3;
  u_xlat7.y = dot(x_2053, x_2054);
  let x_2059 : vec4<f32> = x_148.unity_SHAb;
  let x_2060 : vec4<f32> = u_xlat3;
  u_xlat7.z = dot(x_2059, x_2060);
  let x_2063 : vec4<f32> = u_xlat3;
  let x_2065 : vec4<f32> = u_xlat3;
  u_xlat8 = (vec4<f32>(x_2063.y, x_2063.z, x_2063.z, x_2063.x) * vec4<f32>(x_2065.x, x_2065.y, x_2065.z, x_2065.z));
  let x_2070 : vec4<f32> = x_148.unity_SHBr;
  let x_2071 : vec4<f32> = u_xlat8;
  u_xlat9.x = dot(x_2070, x_2071);
  let x_2076 : vec4<f32> = x_148.unity_SHBg;
  let x_2077 : vec4<f32> = u_xlat8;
  u_xlat9.y = dot(x_2076, x_2077);
  let x_2081 : vec4<f32> = x_148.unity_SHBb;
  let x_2082 : vec4<f32> = u_xlat8;
  u_xlat9.z = dot(x_2081, x_2082);
  let x_2086 : f32 = u_xlat3.y;
  let x_2088 : f32 = u_xlat3.y;
  u_xlat53.x = (x_2086 * x_2088);
  let x_2092 : f32 = u_xlat3.x;
  let x_2094 : f32 = u_xlat3.x;
  let x_2097 : f32 = u_xlat53.x;
  u_xlat53.x = ((x_2092 * x_2094) + -(x_2097));
  let x_2103 : vec4<f32> = x_148.unity_SHC;
  let x_2105 : vec2<f32> = u_xlat53;
  let x_2108 : vec4<f32> = u_xlat9;
  u_xlat31 = ((vec3<f32>(x_2103.x, x_2103.y, x_2103.z) * vec3<f32>(x_2105.x, x_2105.x, x_2105.x)) + vec3<f32>(x_2108.x, x_2108.y, x_2108.z));
  let x_2111 : vec3<f32> = u_xlat31;
  let x_2112 : vec4<f32> = u_xlat7;
  u_xlat31 = (x_2111 + vec3<f32>(x_2112.x, x_2112.y, x_2112.z));
  let x_2115 : vec3<f32> = u_xlat31;
  u_xlat31 = max(x_2115, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_2118 : f32 = u_xlat5.x;
  u_xlat5.x = x_2118;
  let x_2121 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_2121, 0.0f, 1.0f);
  let x_2125 : f32 = u_xlat1.x;
  u_xlat1.x = x_2125;
  let x_2128 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_2128, 0.0f, 1.0f);
  let x_2131 : vec3<f32> = u_xlat4;
  u_xlat4 = (x_2131 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_2136 : f32 = u_xlat5.x;
  u_xlat53.x = (-(x_2136) + 1.0f);
  let x_2141 : f32 = u_xlat53.x;
  let x_2143 : f32 = u_xlat53.x;
  u_xlat79 = (x_2141 * x_2143);
  let x_2145 : f32 = u_xlat79;
  u_xlat79 = max(x_2145, 0.0078125f);
  let x_2149 : f32 = u_xlat79;
  let x_2150 : f32 = u_xlat79;
  u_xlat81 = (x_2149 * x_2150);
  let x_2153 : f32 = u_xlat5.x;
  u_xlat5.x = (x_2153 + 0.04000002145767211914f);
  let x_2158 : f32 = u_xlat5.x;
  u_xlat5.x = min(x_2158, 1.0f);
  let x_2161 : f32 = u_xlat79;
  u_xlat84 = ((x_2161 * 4.0f) + 2.0f);
  let x_2165 : f32 = vs_INTERP6.w;
  u_xlat7.x = min(x_2165, 1.0f);
  let x_2168 : bool = u_xlatb78;
  if (x_2168) {
    let x_2172 : f32 = x_264.x_MainLightShadowParams.y;
    u_xlatb78 = (x_2172 == 1.0f);
    let x_2174 : bool = u_xlatb78;
    if (x_2174) {
      let x_2177 : vec4<f32> = u_xlat6;
      let x_2180 : vec4<f32> = x_264.x_MainLightShadowOffset0;
      u_xlat8 = (vec4<f32>(x_2177.x, x_2177.y, x_2177.x, x_2177.y) + x_2180);
      let x_2183 : vec4<f32> = u_xlat8;
      let x_2184 : vec2<f32> = vec2<f32>(x_2183.x, x_2183.y);
      let x_2186 : f32 = u_xlat6.z;
      txVec30 = vec3<f32>(x_2184.x, x_2184.y, x_2186);
      let x_2193 : vec3<f32> = txVec30;
      let x_2195 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2193.xy, x_2193.z);
      u_xlat9.x = x_2195;
      let x_2198 : vec4<f32> = u_xlat8;
      let x_2199 : vec2<f32> = vec2<f32>(x_2198.z, x_2198.w);
      let x_2201 : f32 = u_xlat6.z;
      txVec31 = vec3<f32>(x_2199.x, x_2199.y, x_2201);
      let x_2208 : vec3<f32> = txVec31;
      let x_2210 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2208.xy, x_2208.z);
      u_xlat9.y = x_2210;
      let x_2212 : vec4<f32> = u_xlat6;
      let x_2215 : vec4<f32> = x_264.x_MainLightShadowOffset1;
      u_xlat8 = (vec4<f32>(x_2212.x, x_2212.y, x_2212.x, x_2212.y) + x_2215);
      let x_2218 : vec4<f32> = u_xlat8;
      let x_2219 : vec2<f32> = vec2<f32>(x_2218.x, x_2218.y);
      let x_2221 : f32 = u_xlat6.z;
      txVec32 = vec3<f32>(x_2219.x, x_2219.y, x_2221);
      let x_2228 : vec3<f32> = txVec32;
      let x_2230 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2228.xy, x_2228.z);
      u_xlat9.z = x_2230;
      let x_2233 : vec4<f32> = u_xlat8;
      let x_2234 : vec2<f32> = vec2<f32>(x_2233.z, x_2233.w);
      let x_2236 : f32 = u_xlat6.z;
      txVec33 = vec3<f32>(x_2234.x, x_2234.y, x_2236);
      let x_2243 : vec3<f32> = txVec33;
      let x_2245 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2243.xy, x_2243.z);
      u_xlat9.w = x_2245;
      let x_2247 : vec4<f32> = u_xlat9;
      u_xlat78 = dot(x_2247, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_2252 : f32 = x_264.x_MainLightShadowParams.y;
      u_xlatb33.x = (x_2252 == 2.0f);
      let x_2256 : bool = u_xlatb33.x;
      if (x_2256) {
        let x_2260 : vec4<f32> = u_xlat6;
        let x_2263 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_2266 : vec2<f32> = ((vec2<f32>(x_2260.x, x_2260.y) * vec2<f32>(x_2263.z, x_2263.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2267 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_2266.x, x_2266.y, x_2267.z);
        let x_2269 : vec3<f32> = u_xlat33;
        let x_2271 : vec2<f32> = floor(vec2<f32>(x_2269.x, x_2269.y));
        let x_2272 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_2271.x, x_2271.y, x_2272.z);
        let x_2274 : vec4<f32> = u_xlat6;
        let x_2277 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_2280 : vec3<f32> = u_xlat33;
        let x_2283 : vec2<f32> = ((vec2<f32>(x_2274.x, x_2274.y) * vec2<f32>(x_2277.z, x_2277.w)) + -(vec2<f32>(x_2280.x, x_2280.y)));
        let x_2284 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2283.x, x_2283.y, x_2284.z, x_2284.w);
        let x_2286 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_2286.x, x_2286.x, x_2286.y, x_2286.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2289 : vec4<f32> = u_xlat9;
        let x_2291 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_2289.x, x_2289.x, x_2289.z, x_2289.z) * vec4<f32>(x_2291.x, x_2291.x, x_2291.z, x_2291.z));
        let x_2295 : vec4<f32> = u_xlat10;
        u_xlat60 = (vec2<f32>(x_2295.y, x_2295.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_2298 : vec4<f32> = u_xlat10;
        let x_2301 : vec4<f32> = u_xlat8;
        let x_2304 : vec2<f32> = ((vec2<f32>(x_2298.x, x_2298.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2301.x, x_2301.y)));
        let x_2305 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2304.x, x_2305.y, x_2304.y, x_2305.w);
        let x_2307 : vec4<f32> = u_xlat8;
        let x_2310 : vec2<f32> = (-(vec2<f32>(x_2307.x, x_2307.y)) + vec2<f32>(1.0f, 1.0f));
        let x_2311 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2310.x, x_2310.y, x_2311.z, x_2311.w);
        let x_2313 : vec4<f32> = u_xlat8;
        u_xlat62 = min(vec2<f32>(x_2313.x, x_2313.y), vec2<f32>(0.0f, 0.0f));
        let x_2316 : vec2<f32> = u_xlat62;
        let x_2318 : vec2<f32> = u_xlat62;
        let x_2320 : vec4<f32> = u_xlat10;
        u_xlat62 = ((-(x_2316) * x_2318) + vec2<f32>(x_2320.x, x_2320.y));
        let x_2323 : vec4<f32> = u_xlat8;
        let x_2325 : vec2<f32> = max(vec2<f32>(x_2323.x, x_2323.y), vec2<f32>(0.0f, 0.0f));
        let x_2326 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2325.x, x_2325.y, x_2326.z, x_2326.w);
        let x_2328 : vec4<f32> = u_xlat8;
        let x_2331 : vec4<f32> = u_xlat8;
        let x_2334 : vec4<f32> = u_xlat9;
        let x_2336 : vec2<f32> = ((-(vec2<f32>(x_2328.x, x_2328.y)) * vec2<f32>(x_2331.x, x_2331.y)) + vec2<f32>(x_2334.y, x_2334.w));
        let x_2337 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2336.x, x_2336.y, x_2337.z, x_2337.w);
        let x_2339 : vec2<f32> = u_xlat62;
        u_xlat62 = (x_2339 + vec2<f32>(1.0f, 1.0f));
        let x_2341 : vec4<f32> = u_xlat8;
        let x_2343 : vec2<f32> = (vec2<f32>(x_2341.x, x_2341.y) + vec2<f32>(1.0f, 1.0f));
        let x_2344 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2343.x, x_2343.y, x_2344.z, x_2344.w);
        let x_2346 : vec4<f32> = u_xlat9;
        let x_2348 : vec2<f32> = (vec2<f32>(x_2346.x, x_2346.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2349 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2348.x, x_2348.y, x_2349.z, x_2349.w);
        let x_2351 : vec4<f32> = u_xlat10;
        let x_2353 : vec2<f32> = (vec2<f32>(x_2351.x, x_2351.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2354 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2353.x, x_2353.y, x_2354.z, x_2354.w);
        let x_2356 : vec2<f32> = u_xlat62;
        let x_2357 : vec2<f32> = (x_2356 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2358 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2357.x, x_2357.y, x_2358.z, x_2358.w);
        let x_2360 : vec4<f32> = u_xlat8;
        let x_2362 : vec2<f32> = (vec2<f32>(x_2360.x, x_2360.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2363 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_2362.x, x_2362.y, x_2363.z, x_2363.w);
        let x_2365 : vec4<f32> = u_xlat9;
        let x_2367 : vec2<f32> = (vec2<f32>(x_2365.y, x_2365.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2368 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2367.x, x_2367.y, x_2368.z, x_2368.w);
        let x_2371 : f32 = u_xlat10.x;
        u_xlat11.z = x_2371;
        let x_2374 : f32 = u_xlat8.x;
        u_xlat11.w = x_2374;
        let x_2377 : f32 = u_xlat13.x;
        u_xlat12.z = x_2377;
        let x_2380 : f32 = u_xlat60.x;
        u_xlat12.w = x_2380;
        let x_2382 : vec4<f32> = u_xlat11;
        let x_2384 : vec4<f32> = u_xlat12;
        u_xlat9 = (vec4<f32>(x_2382.z, x_2382.w, x_2382.x, x_2382.z) + vec4<f32>(x_2384.z, x_2384.w, x_2384.x, x_2384.z));
        let x_2388 : f32 = u_xlat11.y;
        u_xlat10.z = x_2388;
        let x_2391 : f32 = u_xlat8.y;
        u_xlat10.w = x_2391;
        let x_2394 : f32 = u_xlat12.y;
        u_xlat13.z = x_2394;
        let x_2397 : f32 = u_xlat60.y;
        u_xlat13.w = x_2397;
        let x_2399 : vec4<f32> = u_xlat10;
        let x_2401 : vec4<f32> = u_xlat13;
        let x_2403 : vec3<f32> = (vec3<f32>(x_2399.z, x_2399.y, x_2399.w) + vec3<f32>(x_2401.z, x_2401.y, x_2401.w));
        let x_2404 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2403.x, x_2403.y, x_2403.z, x_2404.w);
        let x_2406 : vec4<f32> = u_xlat12;
        let x_2408 : vec4<f32> = u_xlat9;
        let x_2410 : vec3<f32> = (vec3<f32>(x_2406.x, x_2406.z, x_2406.w) / vec3<f32>(x_2408.z, x_2408.w, x_2408.y));
        let x_2411 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2410.x, x_2410.y, x_2410.z, x_2411.w);
        let x_2413 : vec4<f32> = u_xlat10;
        let x_2415 : vec3<f32> = (vec3<f32>(x_2413.x, x_2413.y, x_2413.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2416 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2415.x, x_2415.y, x_2415.z, x_2416.w);
        let x_2418 : vec4<f32> = u_xlat13;
        let x_2420 : vec4<f32> = u_xlat8;
        let x_2422 : vec3<f32> = (vec3<f32>(x_2418.z, x_2418.y, x_2418.w) / vec3<f32>(x_2420.x, x_2420.y, x_2420.z));
        let x_2423 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2422.x, x_2422.y, x_2422.z, x_2423.w);
        let x_2425 : vec4<f32> = u_xlat11;
        let x_2427 : vec3<f32> = (vec3<f32>(x_2425.x, x_2425.y, x_2425.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2428 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2427.x, x_2427.y, x_2427.z, x_2428.w);
        let x_2430 : vec4<f32> = u_xlat10;
        let x_2433 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_2435 : vec3<f32> = (vec3<f32>(x_2430.y, x_2430.x, x_2430.z) * vec3<f32>(x_2433.x, x_2433.x, x_2433.x));
        let x_2436 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2435.x, x_2435.y, x_2435.z, x_2436.w);
        let x_2438 : vec4<f32> = u_xlat11;
        let x_2441 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_2443 : vec3<f32> = (vec3<f32>(x_2438.x, x_2438.y, x_2438.z) * vec3<f32>(x_2441.y, x_2441.y, x_2441.y));
        let x_2444 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2443.x, x_2443.y, x_2443.z, x_2444.w);
        let x_2447 : f32 = u_xlat11.x;
        u_xlat10.w = x_2447;
        let x_2449 : vec3<f32> = u_xlat33;
        let x_2452 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_2455 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_2449.x, x_2449.y, x_2449.x, x_2449.y) * vec4<f32>(x_2452.x, x_2452.y, x_2452.x, x_2452.y)) + vec4<f32>(x_2455.y, x_2455.w, x_2455.x, x_2455.w));
        let x_2458 : vec3<f32> = u_xlat33;
        let x_2461 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_2464 : vec4<f32> = u_xlat10;
        let x_2466 : vec2<f32> = ((vec2<f32>(x_2458.x, x_2458.y) * vec2<f32>(x_2461.x, x_2461.y)) + vec2<f32>(x_2464.z, x_2464.w));
        let x_2467 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_2466.x, x_2466.y, x_2467.z, x_2467.w);
        let x_2470 : f32 = u_xlat10.y;
        u_xlat11.w = x_2470;
        let x_2472 : vec4<f32> = u_xlat11;
        let x_2473 : vec2<f32> = vec2<f32>(x_2472.y, x_2472.z);
        let x_2474 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2474.x, x_2473.x, x_2474.z, x_2473.y);
        let x_2476 : vec3<f32> = u_xlat33;
        let x_2479 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_2482 : vec4<f32> = u_xlat10;
        u_xlat14 = ((vec4<f32>(x_2476.x, x_2476.y, x_2476.x, x_2476.y) * vec4<f32>(x_2479.x, x_2479.y, x_2479.x, x_2479.y)) + vec4<f32>(x_2482.x, x_2482.y, x_2482.z, x_2482.y));
        let x_2485 : vec3<f32> = u_xlat33;
        let x_2488 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_2491 : vec4<f32> = u_xlat11;
        u_xlat11 = ((vec4<f32>(x_2485.x, x_2485.y, x_2485.x, x_2485.y) * vec4<f32>(x_2488.x, x_2488.y, x_2488.x, x_2488.y)) + vec4<f32>(x_2491.w, x_2491.y, x_2491.w, x_2491.z));
        let x_2494 : vec3<f32> = u_xlat33;
        let x_2497 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_2500 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_2494.x, x_2494.y, x_2494.x, x_2494.y) * vec4<f32>(x_2497.x, x_2497.y, x_2497.x, x_2497.y)) + vec4<f32>(x_2500.x, x_2500.w, x_2500.z, x_2500.w));
        let x_2503 : vec4<f32> = u_xlat8;
        let x_2505 : vec4<f32> = u_xlat9;
        u_xlat15 = (vec4<f32>(x_2503.x, x_2503.x, x_2503.x, x_2503.y) * vec4<f32>(x_2505.z, x_2505.w, x_2505.y, x_2505.z));
        let x_2508 : vec4<f32> = u_xlat8;
        let x_2510 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_2508.y, x_2508.y, x_2508.z, x_2508.z) * x_2510);
        let x_2513 : f32 = u_xlat8.z;
        let x_2515 : f32 = u_xlat9.y;
        u_xlat33.x = (x_2513 * x_2515);
        let x_2519 : vec4<f32> = u_xlat12;
        let x_2520 : vec2<f32> = vec2<f32>(x_2519.x, x_2519.y);
        let x_2522 : f32 = u_xlat6.z;
        txVec34 = vec3<f32>(x_2520.x, x_2520.y, x_2522);
        let x_2529 : vec3<f32> = txVec34;
        let x_2531 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2529.xy, x_2529.z);
        u_xlat59.x = x_2531;
        let x_2534 : vec4<f32> = u_xlat12;
        let x_2535 : vec2<f32> = vec2<f32>(x_2534.z, x_2534.w);
        let x_2537 : f32 = u_xlat6.z;
        txVec35 = vec3<f32>(x_2535.x, x_2535.y, x_2537);
        let x_2545 : vec3<f32> = txVec35;
        let x_2547 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2545.xy, x_2545.z);
        u_xlat85 = x_2547;
        let x_2548 : f32 = u_xlat85;
        let x_2550 : f32 = u_xlat15.y;
        u_xlat85 = (x_2548 * x_2550);
        let x_2553 : f32 = u_xlat15.x;
        let x_2555 : f32 = u_xlat59.x;
        let x_2557 : f32 = u_xlat85;
        u_xlat59.x = ((x_2553 * x_2555) + x_2557);
        let x_2561 : vec4<f32> = u_xlat13;
        let x_2562 : vec2<f32> = vec2<f32>(x_2561.x, x_2561.y);
        let x_2564 : f32 = u_xlat6.z;
        txVec36 = vec3<f32>(x_2562.x, x_2562.y, x_2564);
        let x_2571 : vec3<f32> = txVec36;
        let x_2573 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2571.xy, x_2571.z);
        u_xlat85 = x_2573;
        let x_2575 : f32 = u_xlat15.z;
        let x_2576 : f32 = u_xlat85;
        let x_2579 : f32 = u_xlat59.x;
        u_xlat59.x = ((x_2575 * x_2576) + x_2579);
        let x_2583 : vec4<f32> = u_xlat11;
        let x_2584 : vec2<f32> = vec2<f32>(x_2583.x, x_2583.y);
        let x_2586 : f32 = u_xlat6.z;
        txVec37 = vec3<f32>(x_2584.x, x_2584.y, x_2586);
        let x_2593 : vec3<f32> = txVec37;
        let x_2595 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2593.xy, x_2593.z);
        u_xlat85 = x_2595;
        let x_2597 : f32 = u_xlat15.w;
        let x_2598 : f32 = u_xlat85;
        let x_2601 : f32 = u_xlat59.x;
        u_xlat59.x = ((x_2597 * x_2598) + x_2601);
        let x_2605 : vec4<f32> = u_xlat14;
        let x_2606 : vec2<f32> = vec2<f32>(x_2605.x, x_2605.y);
        let x_2608 : f32 = u_xlat6.z;
        txVec38 = vec3<f32>(x_2606.x, x_2606.y, x_2608);
        let x_2615 : vec3<f32> = txVec38;
        let x_2617 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2615.xy, x_2615.z);
        u_xlat85 = x_2617;
        let x_2619 : f32 = u_xlat16.x;
        let x_2620 : f32 = u_xlat85;
        let x_2623 : f32 = u_xlat59.x;
        u_xlat59.x = ((x_2619 * x_2620) + x_2623);
        let x_2627 : vec4<f32> = u_xlat14;
        let x_2628 : vec2<f32> = vec2<f32>(x_2627.z, x_2627.w);
        let x_2630 : f32 = u_xlat6.z;
        txVec39 = vec3<f32>(x_2628.x, x_2628.y, x_2630);
        let x_2637 : vec3<f32> = txVec39;
        let x_2639 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2637.xy, x_2637.z);
        u_xlat85 = x_2639;
        let x_2641 : f32 = u_xlat16.y;
        let x_2642 : f32 = u_xlat85;
        let x_2645 : f32 = u_xlat59.x;
        u_xlat59.x = ((x_2641 * x_2642) + x_2645);
        let x_2649 : vec4<f32> = u_xlat11;
        let x_2650 : vec2<f32> = vec2<f32>(x_2649.z, x_2649.w);
        let x_2652 : f32 = u_xlat6.z;
        txVec40 = vec3<f32>(x_2650.x, x_2650.y, x_2652);
        let x_2659 : vec3<f32> = txVec40;
        let x_2661 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2659.xy, x_2659.z);
        u_xlat85 = x_2661;
        let x_2663 : f32 = u_xlat16.z;
        let x_2664 : f32 = u_xlat85;
        let x_2667 : f32 = u_xlat59.x;
        u_xlat59.x = ((x_2663 * x_2664) + x_2667);
        let x_2671 : vec4<f32> = u_xlat10;
        let x_2672 : vec2<f32> = vec2<f32>(x_2671.x, x_2671.y);
        let x_2674 : f32 = u_xlat6.z;
        txVec41 = vec3<f32>(x_2672.x, x_2672.y, x_2674);
        let x_2681 : vec3<f32> = txVec41;
        let x_2683 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2681.xy, x_2681.z);
        u_xlat85 = x_2683;
        let x_2685 : f32 = u_xlat16.w;
        let x_2686 : f32 = u_xlat85;
        let x_2689 : f32 = u_xlat59.x;
        u_xlat59.x = ((x_2685 * x_2686) + x_2689);
        let x_2693 : vec4<f32> = u_xlat10;
        let x_2694 : vec2<f32> = vec2<f32>(x_2693.z, x_2693.w);
        let x_2696 : f32 = u_xlat6.z;
        txVec42 = vec3<f32>(x_2694.x, x_2694.y, x_2696);
        let x_2703 : vec3<f32> = txVec42;
        let x_2705 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2703.xy, x_2703.z);
        u_xlat85 = x_2705;
        let x_2707 : f32 = u_xlat33.x;
        let x_2708 : f32 = u_xlat85;
        let x_2711 : f32 = u_xlat59.x;
        u_xlat78 = ((x_2707 * x_2708) + x_2711);
      } else {
        let x_2714 : vec4<f32> = u_xlat6;
        let x_2717 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_2720 : vec2<f32> = ((vec2<f32>(x_2714.x, x_2714.y) * vec2<f32>(x_2717.z, x_2717.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2721 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_2720.x, x_2720.y, x_2721.z);
        let x_2723 : vec3<f32> = u_xlat33;
        let x_2725 : vec2<f32> = floor(vec2<f32>(x_2723.x, x_2723.y));
        let x_2726 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_2725.x, x_2725.y, x_2726.z);
        let x_2728 : vec4<f32> = u_xlat6;
        let x_2731 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_2734 : vec3<f32> = u_xlat33;
        let x_2737 : vec2<f32> = ((vec2<f32>(x_2728.x, x_2728.y) * vec2<f32>(x_2731.z, x_2731.w)) + -(vec2<f32>(x_2734.x, x_2734.y)));
        let x_2738 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2737.x, x_2737.y, x_2738.z, x_2738.w);
        let x_2740 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_2740.x, x_2740.x, x_2740.y, x_2740.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2743 : vec4<f32> = u_xlat9;
        let x_2745 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_2743.x, x_2743.x, x_2743.z, x_2743.z) * vec4<f32>(x_2745.x, x_2745.x, x_2745.z, x_2745.z));
        let x_2748 : vec4<f32> = u_xlat10;
        let x_2750 : vec2<f32> = (vec2<f32>(x_2748.y, x_2748.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_2751 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2751.x, x_2750.x, x_2751.z, x_2750.y);
        let x_2753 : vec4<f32> = u_xlat10;
        let x_2756 : vec4<f32> = u_xlat8;
        u_xlat60 = ((vec2<f32>(x_2753.x, x_2753.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2756.x, x_2756.y)));
        let x_2760 : vec4<f32> = u_xlat8;
        let x_2763 : vec2<f32> = (-(vec2<f32>(x_2760.x, x_2760.y)) + vec2<f32>(1.0f, 1.0f));
        let x_2764 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2763.x, x_2764.y, x_2763.y, x_2764.w);
        let x_2766 : vec4<f32> = u_xlat8;
        let x_2768 : vec2<f32> = min(vec2<f32>(x_2766.x, x_2766.y), vec2<f32>(0.0f, 0.0f));
        let x_2769 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2768.x, x_2768.y, x_2769.z, x_2769.w);
        let x_2771 : vec4<f32> = u_xlat10;
        let x_2774 : vec4<f32> = u_xlat10;
        let x_2777 : vec4<f32> = u_xlat9;
        let x_2779 : vec2<f32> = ((-(vec2<f32>(x_2771.x, x_2771.y)) * vec2<f32>(x_2774.x, x_2774.y)) + vec2<f32>(x_2777.x, x_2777.z));
        let x_2780 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2779.x, x_2780.y, x_2779.y, x_2780.w);
        let x_2782 : vec4<f32> = u_xlat8;
        let x_2784 : vec2<f32> = max(vec2<f32>(x_2782.x, x_2782.y), vec2<f32>(0.0f, 0.0f));
        let x_2785 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2784.x, x_2784.y, x_2785.z, x_2785.w);
        let x_2787 : vec4<f32> = u_xlat10;
        let x_2790 : vec4<f32> = u_xlat10;
        let x_2793 : vec4<f32> = u_xlat9;
        let x_2795 : vec2<f32> = ((-(vec2<f32>(x_2787.x, x_2787.y)) * vec2<f32>(x_2790.x, x_2790.y)) + vec2<f32>(x_2793.y, x_2793.w));
        let x_2796 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2796.x, x_2795.x, x_2796.z, x_2795.y);
        let x_2798 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_2798 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_2801 : f32 = u_xlat9.y;
        u_xlat10.z = (x_2801 * 0.08163200318813323975f);
        let x_2804 : vec2<f32> = u_xlat60;
        let x_2806 : vec2<f32> = (vec2<f32>(x_2804.y, x_2804.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2807 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2806.x, x_2806.y, x_2807.z, x_2807.w);
        let x_2809 : vec4<f32> = u_xlat9;
        u_xlat60 = (vec2<f32>(x_2809.x, x_2809.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2813 : f32 = u_xlat9.w;
        u_xlat12.z = (x_2813 * 0.08163200318813323975f);
        let x_2817 : f32 = u_xlat12.y;
        u_xlat10.x = x_2817;
        let x_2819 : vec4<f32> = u_xlat8;
        let x_2822 : vec2<f32> = ((vec2<f32>(x_2819.x, x_2819.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2823 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2823.x, x_2822.x, x_2823.z, x_2822.y);
        let x_2825 : vec4<f32> = u_xlat8;
        let x_2828 : vec2<f32> = ((vec2<f32>(x_2825.x, x_2825.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2829 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2828.x, x_2829.y, x_2828.y, x_2829.w);
        let x_2832 : f32 = u_xlat60.x;
        u_xlat9.y = x_2832;
        let x_2835 : f32 = u_xlat11.y;
        u_xlat9.w = x_2835;
        let x_2837 : vec4<f32> = u_xlat9;
        let x_2838 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_2837 + x_2838);
        let x_2840 : vec4<f32> = u_xlat8;
        let x_2843 : vec2<f32> = ((vec2<f32>(x_2840.y, x_2840.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2844 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2844.x, x_2843.x, x_2844.z, x_2843.y);
        let x_2846 : vec4<f32> = u_xlat8;
        let x_2849 : vec2<f32> = ((vec2<f32>(x_2846.y, x_2846.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2850 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2849.x, x_2850.y, x_2849.y, x_2850.w);
        let x_2853 : f32 = u_xlat60.y;
        u_xlat11.y = x_2853;
        let x_2855 : vec4<f32> = u_xlat11;
        let x_2856 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_2855 + x_2856);
        let x_2858 : vec4<f32> = u_xlat9;
        let x_2859 : vec4<f32> = u_xlat10;
        u_xlat9 = (x_2858 / x_2859);
        let x_2861 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_2861 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2863 : vec4<f32> = u_xlat11;
        let x_2864 : vec4<f32> = u_xlat8;
        u_xlat11 = (x_2863 / x_2864);
        let x_2866 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_2866 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2868 : vec4<f32> = u_xlat9;
        let x_2871 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_2868.w, x_2868.x, x_2868.y, x_2868.z) * vec4<f32>(x_2871.x, x_2871.x, x_2871.x, x_2871.x));
        let x_2874 : vec4<f32> = u_xlat11;
        let x_2877 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        u_xlat11 = (vec4<f32>(x_2874.x, x_2874.w, x_2874.y, x_2874.z) * vec4<f32>(x_2877.y, x_2877.y, x_2877.y, x_2877.y));
        let x_2880 : vec4<f32> = u_xlat9;
        let x_2881 : vec3<f32> = vec3<f32>(x_2880.y, x_2880.z, x_2880.w);
        let x_2882 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2881.x, x_2882.y, x_2881.y, x_2881.z);
        let x_2885 : f32 = u_xlat11.x;
        u_xlat12.y = x_2885;
        let x_2887 : vec3<f32> = u_xlat33;
        let x_2890 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_2893 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_2887.x, x_2887.y, x_2887.x, x_2887.y) * vec4<f32>(x_2890.x, x_2890.y, x_2890.x, x_2890.y)) + vec4<f32>(x_2893.x, x_2893.y, x_2893.z, x_2893.y));
        let x_2896 : vec3<f32> = u_xlat33;
        let x_2899 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_2902 : vec4<f32> = u_xlat12;
        let x_2904 : vec2<f32> = ((vec2<f32>(x_2896.x, x_2896.y) * vec2<f32>(x_2899.x, x_2899.y)) + vec2<f32>(x_2902.w, x_2902.y));
        let x_2905 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_2904.x, x_2904.y, x_2905.z, x_2905.w);
        let x_2908 : f32 = u_xlat12.y;
        u_xlat9.y = x_2908;
        let x_2911 : f32 = u_xlat11.z;
        u_xlat12.y = x_2911;
        let x_2913 : vec3<f32> = u_xlat33;
        let x_2916 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_2919 : vec4<f32> = u_xlat12;
        u_xlat15 = ((vec4<f32>(x_2913.x, x_2913.y, x_2913.x, x_2913.y) * vec4<f32>(x_2916.x, x_2916.y, x_2916.x, x_2916.y)) + vec4<f32>(x_2919.x, x_2919.y, x_2919.z, x_2919.y));
        let x_2923 : vec3<f32> = u_xlat33;
        let x_2926 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_2929 : vec4<f32> = u_xlat12;
        u_xlat66 = ((vec2<f32>(x_2923.x, x_2923.y) * vec2<f32>(x_2926.x, x_2926.y)) + vec2<f32>(x_2929.w, x_2929.y));
        let x_2933 : f32 = u_xlat12.y;
        u_xlat9.z = x_2933;
        let x_2935 : vec3<f32> = u_xlat33;
        let x_2938 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_2941 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_2935.x, x_2935.y, x_2935.x, x_2935.y) * vec4<f32>(x_2938.x, x_2938.y, x_2938.x, x_2938.y)) + vec4<f32>(x_2941.x, x_2941.y, x_2941.x, x_2941.z));
        let x_2945 : f32 = u_xlat11.w;
        u_xlat12.y = x_2945;
        let x_2947 : vec3<f32> = u_xlat33;
        let x_2950 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_2953 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_2947.x, x_2947.y, x_2947.x, x_2947.y) * vec4<f32>(x_2950.x, x_2950.y, x_2950.x, x_2950.y)) + vec4<f32>(x_2953.x, x_2953.y, x_2953.z, x_2953.y));
        let x_2956 : vec3<f32> = u_xlat33;
        let x_2959 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_2962 : vec4<f32> = u_xlat12;
        u_xlat35 = ((vec2<f32>(x_2956.x, x_2956.y) * vec2<f32>(x_2959.x, x_2959.y)) + vec2<f32>(x_2962.w, x_2962.y));
        let x_2966 : f32 = u_xlat12.y;
        u_xlat9.w = x_2966;
        let x_2968 : vec3<f32> = u_xlat33;
        let x_2971 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_2974 : vec4<f32> = u_xlat9;
        let x_2976 : vec2<f32> = ((vec2<f32>(x_2968.x, x_2968.y) * vec2<f32>(x_2971.x, x_2971.y)) + vec2<f32>(x_2974.x, x_2974.w));
        let x_2977 : vec4<f32> = u_xlat18;
        u_xlat18 = vec4<f32>(x_2976.x, x_2976.y, x_2977.z, x_2977.w);
        let x_2979 : vec4<f32> = u_xlat12;
        let x_2980 : vec3<f32> = vec3<f32>(x_2979.x, x_2979.z, x_2979.w);
        let x_2981 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2980.x, x_2981.y, x_2980.y, x_2980.z);
        let x_2983 : vec3<f32> = u_xlat33;
        let x_2986 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_2989 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_2983.x, x_2983.y, x_2983.x, x_2983.y) * vec4<f32>(x_2986.x, x_2986.y, x_2986.x, x_2986.y)) + vec4<f32>(x_2989.x, x_2989.y, x_2989.z, x_2989.y));
        let x_2993 : vec3<f32> = u_xlat33;
        let x_2996 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_2999 : vec4<f32> = u_xlat11;
        u_xlat63 = ((vec2<f32>(x_2993.x, x_2993.y) * vec2<f32>(x_2996.x, x_2996.y)) + vec2<f32>(x_2999.w, x_2999.y));
        let x_3003 : f32 = u_xlat9.x;
        u_xlat11.x = x_3003;
        let x_3005 : vec3<f32> = u_xlat33;
        let x_3008 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_3011 : vec4<f32> = u_xlat11;
        let x_3013 : vec2<f32> = ((vec2<f32>(x_3005.x, x_3005.y) * vec2<f32>(x_3008.x, x_3008.y)) + vec2<f32>(x_3011.x, x_3011.y));
        let x_3014 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_3013.x, x_3013.y, x_3014.z);
        let x_3016 : vec4<f32> = u_xlat8;
        let x_3018 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_3016.x, x_3016.x, x_3016.x, x_3016.x) * x_3018);
        let x_3020 : vec4<f32> = u_xlat8;
        let x_3022 : vec4<f32> = u_xlat10;
        u_xlat20 = (vec4<f32>(x_3020.y, x_3020.y, x_3020.y, x_3020.y) * x_3022);
        let x_3025 : vec4<f32> = u_xlat8;
        let x_3027 : vec4<f32> = u_xlat10;
        u_xlat21 = (vec4<f32>(x_3025.z, x_3025.z, x_3025.z, x_3025.z) * x_3027);
        let x_3029 : vec4<f32> = u_xlat8;
        let x_3031 : vec4<f32> = u_xlat10;
        u_xlat8 = (vec4<f32>(x_3029.w, x_3029.w, x_3029.w, x_3029.w) * x_3031);
        let x_3034 : vec4<f32> = u_xlat13;
        let x_3035 : vec2<f32> = vec2<f32>(x_3034.x, x_3034.y);
        let x_3037 : f32 = u_xlat6.z;
        txVec43 = vec3<f32>(x_3035.x, x_3035.y, x_3037);
        let x_3044 : vec3<f32> = txVec43;
        let x_3046 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3044.xy, x_3044.z);
        u_xlat85 = x_3046;
        let x_3048 : vec4<f32> = u_xlat13;
        let x_3049 : vec2<f32> = vec2<f32>(x_3048.z, x_3048.w);
        let x_3051 : f32 = u_xlat6.z;
        txVec44 = vec3<f32>(x_3049.x, x_3049.y, x_3051);
        let x_3058 : vec3<f32> = txVec44;
        let x_3060 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3058.xy, x_3058.z);
        u_xlat9.x = x_3060;
        let x_3063 : f32 = u_xlat9.x;
        let x_3065 : f32 = u_xlat19.y;
        u_xlat9.x = (x_3063 * x_3065);
        let x_3069 : f32 = u_xlat19.x;
        let x_3070 : f32 = u_xlat85;
        let x_3073 : f32 = u_xlat9.x;
        u_xlat85 = ((x_3069 * x_3070) + x_3073);
        let x_3076 : vec4<f32> = u_xlat14;
        let x_3077 : vec2<f32> = vec2<f32>(x_3076.x, x_3076.y);
        let x_3079 : f32 = u_xlat6.z;
        txVec45 = vec3<f32>(x_3077.x, x_3077.y, x_3079);
        let x_3086 : vec3<f32> = txVec45;
        let x_3088 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3086.xy, x_3086.z);
        u_xlat9.x = x_3088;
        let x_3091 : f32 = u_xlat19.z;
        let x_3093 : f32 = u_xlat9.x;
        let x_3095 : f32 = u_xlat85;
        u_xlat85 = ((x_3091 * x_3093) + x_3095);
        let x_3098 : vec4<f32> = u_xlat16;
        let x_3099 : vec2<f32> = vec2<f32>(x_3098.x, x_3098.y);
        let x_3101 : f32 = u_xlat6.z;
        txVec46 = vec3<f32>(x_3099.x, x_3099.y, x_3101);
        let x_3108 : vec3<f32> = txVec46;
        let x_3110 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3108.xy, x_3108.z);
        u_xlat9.x = x_3110;
        let x_3113 : f32 = u_xlat19.w;
        let x_3115 : f32 = u_xlat9.x;
        let x_3117 : f32 = u_xlat85;
        u_xlat85 = ((x_3113 * x_3115) + x_3117);
        let x_3120 : vec4<f32> = u_xlat15;
        let x_3121 : vec2<f32> = vec2<f32>(x_3120.x, x_3120.y);
        let x_3123 : f32 = u_xlat6.z;
        txVec47 = vec3<f32>(x_3121.x, x_3121.y, x_3123);
        let x_3130 : vec3<f32> = txVec47;
        let x_3132 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3130.xy, x_3130.z);
        u_xlat9.x = x_3132;
        let x_3135 : f32 = u_xlat20.x;
        let x_3137 : f32 = u_xlat9.x;
        let x_3139 : f32 = u_xlat85;
        u_xlat85 = ((x_3135 * x_3137) + x_3139);
        let x_3142 : vec4<f32> = u_xlat15;
        let x_3143 : vec2<f32> = vec2<f32>(x_3142.z, x_3142.w);
        let x_3145 : f32 = u_xlat6.z;
        txVec48 = vec3<f32>(x_3143.x, x_3143.y, x_3145);
        let x_3152 : vec3<f32> = txVec48;
        let x_3154 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3152.xy, x_3152.z);
        u_xlat9.x = x_3154;
        let x_3157 : f32 = u_xlat20.y;
        let x_3159 : f32 = u_xlat9.x;
        let x_3161 : f32 = u_xlat85;
        u_xlat85 = ((x_3157 * x_3159) + x_3161);
        let x_3164 : vec2<f32> = u_xlat66;
        let x_3166 : f32 = u_xlat6.z;
        txVec49 = vec3<f32>(x_3164.x, x_3164.y, x_3166);
        let x_3173 : vec3<f32> = txVec49;
        let x_3175 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3173.xy, x_3173.z);
        u_xlat9.x = x_3175;
        let x_3178 : f32 = u_xlat20.z;
        let x_3180 : f32 = u_xlat9.x;
        let x_3182 : f32 = u_xlat85;
        u_xlat85 = ((x_3178 * x_3180) + x_3182);
        let x_3185 : vec4<f32> = u_xlat16;
        let x_3186 : vec2<f32> = vec2<f32>(x_3185.z, x_3185.w);
        let x_3188 : f32 = u_xlat6.z;
        txVec50 = vec3<f32>(x_3186.x, x_3186.y, x_3188);
        let x_3195 : vec3<f32> = txVec50;
        let x_3197 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3195.xy, x_3195.z);
        u_xlat9.x = x_3197;
        let x_3200 : f32 = u_xlat20.w;
        let x_3202 : f32 = u_xlat9.x;
        let x_3204 : f32 = u_xlat85;
        u_xlat85 = ((x_3200 * x_3202) + x_3204);
        let x_3207 : vec4<f32> = u_xlat17;
        let x_3208 : vec2<f32> = vec2<f32>(x_3207.x, x_3207.y);
        let x_3210 : f32 = u_xlat6.z;
        txVec51 = vec3<f32>(x_3208.x, x_3208.y, x_3210);
        let x_3217 : vec3<f32> = txVec51;
        let x_3219 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3217.xy, x_3217.z);
        u_xlat9.x = x_3219;
        let x_3222 : f32 = u_xlat21.x;
        let x_3224 : f32 = u_xlat9.x;
        let x_3226 : f32 = u_xlat85;
        u_xlat85 = ((x_3222 * x_3224) + x_3226);
        let x_3229 : vec4<f32> = u_xlat17;
        let x_3230 : vec2<f32> = vec2<f32>(x_3229.z, x_3229.w);
        let x_3232 : f32 = u_xlat6.z;
        txVec52 = vec3<f32>(x_3230.x, x_3230.y, x_3232);
        let x_3239 : vec3<f32> = txVec52;
        let x_3241 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3239.xy, x_3239.z);
        u_xlat9.x = x_3241;
        let x_3244 : f32 = u_xlat21.y;
        let x_3246 : f32 = u_xlat9.x;
        let x_3248 : f32 = u_xlat85;
        u_xlat85 = ((x_3244 * x_3246) + x_3248);
        let x_3251 : vec2<f32> = u_xlat35;
        let x_3253 : f32 = u_xlat6.z;
        txVec53 = vec3<f32>(x_3251.x, x_3251.y, x_3253);
        let x_3260 : vec3<f32> = txVec53;
        let x_3262 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3260.xy, x_3260.z);
        u_xlat9.x = x_3262;
        let x_3265 : f32 = u_xlat21.z;
        let x_3267 : f32 = u_xlat9.x;
        let x_3269 : f32 = u_xlat85;
        u_xlat85 = ((x_3265 * x_3267) + x_3269);
        let x_3272 : vec4<f32> = u_xlat18;
        let x_3273 : vec2<f32> = vec2<f32>(x_3272.x, x_3272.y);
        let x_3275 : f32 = u_xlat6.z;
        txVec54 = vec3<f32>(x_3273.x, x_3273.y, x_3275);
        let x_3282 : vec3<f32> = txVec54;
        let x_3284 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3282.xy, x_3282.z);
        u_xlat9.x = x_3284;
        let x_3287 : f32 = u_xlat21.w;
        let x_3289 : f32 = u_xlat9.x;
        let x_3291 : f32 = u_xlat85;
        u_xlat85 = ((x_3287 * x_3289) + x_3291);
        let x_3294 : vec4<f32> = u_xlat12;
        let x_3295 : vec2<f32> = vec2<f32>(x_3294.x, x_3294.y);
        let x_3297 : f32 = u_xlat6.z;
        txVec55 = vec3<f32>(x_3295.x, x_3295.y, x_3297);
        let x_3304 : vec3<f32> = txVec55;
        let x_3306 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3304.xy, x_3304.z);
        u_xlat9.x = x_3306;
        let x_3309 : f32 = u_xlat8.x;
        let x_3311 : f32 = u_xlat9.x;
        let x_3313 : f32 = u_xlat85;
        u_xlat85 = ((x_3309 * x_3311) + x_3313);
        let x_3316 : vec4<f32> = u_xlat12;
        let x_3317 : vec2<f32> = vec2<f32>(x_3316.z, x_3316.w);
        let x_3319 : f32 = u_xlat6.z;
        txVec56 = vec3<f32>(x_3317.x, x_3317.y, x_3319);
        let x_3326 : vec3<f32> = txVec56;
        let x_3328 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3326.xy, x_3326.z);
        u_xlat8.x = x_3328;
        let x_3331 : f32 = u_xlat8.y;
        let x_3333 : f32 = u_xlat8.x;
        let x_3335 : f32 = u_xlat85;
        u_xlat85 = ((x_3331 * x_3333) + x_3335);
        let x_3338 : vec2<f32> = u_xlat63;
        let x_3340 : f32 = u_xlat6.z;
        txVec57 = vec3<f32>(x_3338.x, x_3338.y, x_3340);
        let x_3347 : vec3<f32> = txVec57;
        let x_3349 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3347.xy, x_3347.z);
        u_xlat8.x = x_3349;
        let x_3352 : f32 = u_xlat8.z;
        let x_3354 : f32 = u_xlat8.x;
        let x_3356 : f32 = u_xlat85;
        u_xlat85 = ((x_3352 * x_3354) + x_3356);
        let x_3359 : vec3<f32> = u_xlat33;
        let x_3360 : vec2<f32> = vec2<f32>(x_3359.x, x_3359.y);
        let x_3362 : f32 = u_xlat6.z;
        txVec58 = vec3<f32>(x_3360.x, x_3360.y, x_3362);
        let x_3369 : vec3<f32> = txVec58;
        let x_3371 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3369.xy, x_3369.z);
        u_xlat33.x = x_3371;
        let x_3374 : f32 = u_xlat8.w;
        let x_3376 : f32 = u_xlat33.x;
        let x_3378 : f32 = u_xlat85;
        u_xlat78 = ((x_3374 * x_3376) + x_3378);
      }
    }
  } else {
    let x_3382 : vec4<f32> = u_xlat6;
    let x_3383 : vec2<f32> = vec2<f32>(x_3382.x, x_3382.y);
    let x_3385 : f32 = u_xlat6.z;
    txVec59 = vec3<f32>(x_3383.x, x_3383.y, x_3385);
    let x_3392 : vec3<f32> = txVec59;
    let x_3394 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3392.xy, x_3392.z);
    u_xlat78 = x_3394;
  }
  let x_3395 : f32 = u_xlat78;
  let x_3397 : f32 = x_264.x_MainLightShadowParams.x;
  let x_3399 : f32 = u_xlat80;
  u_xlat78 = ((x_3395 * x_3397) + x_3399);
  let x_3401 : bool = u_xlatb82;
  let x_3402 : f32 = u_xlat78;
  u_xlat78 = select(x_3402, 1.0f, x_3401);
  let x_3404 : vec3<f32> = vs_INTERP8;
  let x_3406 : vec3<f32> = x_75.x_WorldSpaceCameraPos;
  let x_3408 : vec3<f32> = (x_3404 + -(x_3406));
  let x_3409 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_3408.x, x_3408.y, x_3408.z, x_3409.w);
  let x_3411 : vec4<f32> = u_xlat6;
  let x_3413 : vec4<f32> = u_xlat6;
  u_xlat80 = dot(vec3<f32>(x_3411.x, x_3411.y, x_3411.z), vec3<f32>(x_3413.x, x_3413.y, x_3413.z));
  let x_3416 : f32 = u_xlat80;
  let x_3418 : f32 = x_264.x_MainLightShadowParams.z;
  let x_3421 : f32 = x_264.x_MainLightShadowParams.w;
  u_xlat82 = ((x_3416 * x_3418) + x_3421);
  let x_3423 : f32 = u_xlat82;
  u_xlat82 = clamp(x_3423, 0.0f, 1.0f);
  let x_3425 : f32 = u_xlat78;
  u_xlat6.x = (-(x_3425) + 1.0f);
  let x_3429 : f32 = u_xlat82;
  let x_3431 : f32 = u_xlat6.x;
  let x_3433 : f32 = u_xlat78;
  u_xlat78 = ((x_3429 * x_3431) + x_3433);
  let x_3442 : f32 = x_3440.x_MainLightCookieTextureFormat;
  u_xlatb82 = !((x_3442 == -1.0f));
  let x_3444 : bool = u_xlatb82;
  if (x_3444) {
    let x_3447 : vec3<f32> = vs_INTERP8;
    let x_3450 : vec4<f32> = x_3440.x_MainLightWorldToLight[1i];
    let x_3452 : vec2<f32> = (vec2<f32>(x_3447.y, x_3447.y) * vec2<f32>(x_3450.x, x_3450.y));
    let x_3453 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3452.x, x_3452.y, x_3453.z, x_3453.w);
    let x_3456 : vec4<f32> = x_3440.x_MainLightWorldToLight[0i];
    let x_3458 : vec3<f32> = vs_INTERP8;
    let x_3461 : vec4<f32> = u_xlat6;
    let x_3463 : vec2<f32> = ((vec2<f32>(x_3456.x, x_3456.y) * vec2<f32>(x_3458.x, x_3458.x)) + vec2<f32>(x_3461.x, x_3461.y));
    let x_3464 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3463.x, x_3463.y, x_3464.z, x_3464.w);
    let x_3467 : vec4<f32> = x_3440.x_MainLightWorldToLight[2i];
    let x_3469 : vec3<f32> = vs_INTERP8;
    let x_3472 : vec4<f32> = u_xlat6;
    let x_3474 : vec2<f32> = ((vec2<f32>(x_3467.x, x_3467.y) * vec2<f32>(x_3469.z, x_3469.z)) + vec2<f32>(x_3472.x, x_3472.y));
    let x_3475 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3474.x, x_3474.y, x_3475.z, x_3475.w);
    let x_3477 : vec4<f32> = u_xlat6;
    let x_3480 : vec4<f32> = x_3440.x_MainLightWorldToLight[3i];
    let x_3482 : vec2<f32> = (vec2<f32>(x_3477.x, x_3477.y) + vec2<f32>(x_3480.x, x_3480.y));
    let x_3483 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3482.x, x_3482.y, x_3483.z, x_3483.w);
    let x_3485 : vec4<f32> = u_xlat6;
    let x_3488 : vec2<f32> = ((vec2<f32>(x_3485.x, x_3485.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_3489 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3488.x, x_3488.y, x_3489.z, x_3489.w);
    let x_3496 : vec4<f32> = u_xlat6;
    let x_3499 : f32 = x_75.x_GlobalMipBias.x;
    let x_3500 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_3496.x, x_3496.y), x_3499);
    u_xlat8 = x_3500;
    let x_3502 : f32 = x_3440.x_MainLightCookieTextureFormat;
    let x_3504 : f32 = x_3440.x_MainLightCookieTextureFormat;
    let x_3506 : f32 = x_3440.x_MainLightCookieTextureFormat;
    let x_3508 : f32 = x_3440.x_MainLightCookieTextureFormat;
    let x_3509 : vec4<f32> = vec4<f32>(x_3502, x_3504, x_3506, x_3508);
    let x_3516 : vec4<bool> = (vec4<f32>(x_3509.x, x_3509.y, x_3509.z, x_3509.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    let x_3517 : vec2<bool> = vec2<bool>(x_3516.x, x_3516.y);
    let x_3518 : vec4<bool> = u_xlatb6;
    u_xlatb6 = vec4<bool>(x_3517.x, x_3517.y, x_3518.z, x_3518.w);
    let x_3521 : bool = u_xlatb6.y;
    if (x_3521) {
      let x_3526 : f32 = u_xlat8.w;
      x_3522 = x_3526;
    } else {
      let x_3529 : f32 = u_xlat8.x;
      x_3522 = x_3529;
    }
    let x_3530 : f32 = x_3522;
    u_xlat82 = x_3530;
    let x_3532 : bool = u_xlatb6.x;
    if (x_3532) {
      let x_3536 : vec4<f32> = u_xlat8;
      x_3533 = vec3<f32>(x_3536.x, x_3536.y, x_3536.z);
    } else {
      let x_3539 : f32 = u_xlat82;
      x_3533 = vec3<f32>(x_3539, x_3539, x_3539);
    }
    let x_3541 : vec3<f32> = x_3533;
    let x_3542 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3541.x, x_3541.y, x_3541.z, x_3542.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_3548 : vec4<f32> = u_xlat6;
  let x_3551 : vec4<f32> = x_75.x_MainLightColor;
  let x_3553 : vec3<f32> = (vec3<f32>(x_3548.x, x_3548.y, x_3548.z) * vec3<f32>(x_3551.x, x_3551.y, x_3551.z));
  let x_3554 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_3553.x, x_3553.y, x_3553.z, x_3554.w);
  let x_3556 : vec3<f32> = u_xlat2;
  let x_3558 : vec4<f32> = u_xlat3;
  u_xlat82 = dot(-(x_3556), vec3<f32>(x_3558.x, x_3558.y, x_3558.z));
  let x_3561 : f32 = u_xlat82;
  let x_3562 : f32 = u_xlat82;
  u_xlat82 = (x_3561 + x_3562);
  let x_3564 : vec4<f32> = u_xlat3;
  let x_3566 : f32 = u_xlat82;
  let x_3570 : vec3<f32> = u_xlat2;
  u_xlat33 = ((vec3<f32>(x_3564.x, x_3564.y, x_3564.z) * -(vec3<f32>(x_3566, x_3566, x_3566))) + -(x_3570));
  let x_3573 : vec4<f32> = u_xlat3;
  let x_3575 : vec3<f32> = u_xlat2;
  u_xlat82 = dot(vec3<f32>(x_3573.x, x_3573.y, x_3573.z), x_3575);
  let x_3577 : f32 = u_xlat82;
  u_xlat82 = clamp(x_3577, 0.0f, 1.0f);
  let x_3579 : f32 = u_xlat82;
  u_xlat82 = (-(x_3579) + 1.0f);
  let x_3582 : f32 = u_xlat82;
  let x_3583 : f32 = u_xlat82;
  u_xlat82 = (x_3582 * x_3583);
  let x_3585 : f32 = u_xlat82;
  let x_3586 : f32 = u_xlat82;
  u_xlat82 = (x_3585 * x_3586);
  let x_3589 : f32 = u_xlat53.x;
  u_xlat8.x = ((-(x_3589) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_3597 : f32 = u_xlat53.x;
  let x_3599 : f32 = u_xlat8.x;
  u_xlat53.x = (x_3597 * x_3599);
  let x_3603 : f32 = u_xlat53.x;
  u_xlat53.x = (x_3603 * 6.0f);
  let x_3615 : vec3<f32> = u_xlat33;
  let x_3617 : f32 = u_xlat53.x;
  let x_3618 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_3615, x_3617);
  u_xlat8 = x_3618;
  let x_3620 : f32 = u_xlat8.w;
  u_xlat53.x = (x_3620 + -1.0f);
  let x_3624 : f32 = x_148.unity_SpecCube0_HDR.w;
  let x_3626 : f32 = u_xlat53.x;
  u_xlat53.x = ((x_3624 * x_3626) + 1.0f);
  let x_3631 : f32 = u_xlat53.x;
  u_xlat53.x = max(x_3631, 0.0f);
  let x_3635 : f32 = u_xlat53.x;
  u_xlat53.x = log2(x_3635);
  let x_3639 : f32 = u_xlat53.x;
  let x_3641 : f32 = x_148.unity_SpecCube0_HDR.y;
  u_xlat53.x = (x_3639 * x_3641);
  let x_3645 : f32 = u_xlat53.x;
  u_xlat53.x = exp2(x_3645);
  let x_3649 : f32 = u_xlat53.x;
  let x_3651 : f32 = x_148.unity_SpecCube0_HDR.x;
  u_xlat53.x = (x_3649 * x_3651);
  let x_3654 : vec4<f32> = u_xlat8;
  let x_3656 : vec2<f32> = u_xlat53;
  u_xlat33 = (vec3<f32>(x_3654.x, x_3654.y, x_3654.z) * vec3<f32>(x_3656.x, x_3656.x, x_3656.x));
  let x_3659 : f32 = u_xlat79;
  let x_3661 : f32 = u_xlat79;
  u_xlat53 = ((vec2<f32>(x_3659, x_3659) * vec2<f32>(x_3661, x_3661)) + vec2<f32>(-1.0f, 1.0f));
  let x_3667 : f32 = u_xlat53.y;
  u_xlat79 = (1.0f / x_3667);
  let x_3670 : f32 = u_xlat5.x;
  u_xlat5.x = (x_3670 + -0.03999999910593032837f);
  let x_3674 : f32 = u_xlat82;
  let x_3676 : f32 = u_xlat5.x;
  u_xlat82 = ((x_3674 * x_3676) + 0.03999999910593032837f);
  let x_3680 : f32 = u_xlat79;
  let x_3681 : f32 = u_xlat82;
  u_xlat79 = (x_3680 * x_3681);
  let x_3683 : f32 = u_xlat79;
  let x_3685 : vec3<f32> = u_xlat33;
  u_xlat33 = (vec3<f32>(x_3683, x_3683, x_3683) * x_3685);
  let x_3687 : vec3<f32> = u_xlat31;
  let x_3688 : vec3<f32> = u_xlat4;
  let x_3690 : vec3<f32> = u_xlat33;
  let x_3691 : vec3<f32> = ((x_3687 * x_3688) + x_3690);
  let x_3692 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_3691.x, x_3691.y, x_3691.z, x_3692.w);
  let x_3694 : f32 = u_xlat78;
  let x_3696 : f32 = x_148.unity_LightData.z;
  u_xlat78 = (x_3694 * x_3696);
  let x_3698 : vec4<f32> = u_xlat3;
  let x_3701 : vec4<f32> = x_75.x_MainLightPosition;
  u_xlat79 = dot(vec3<f32>(x_3698.x, x_3698.y, x_3698.z), vec3<f32>(x_3701.x, x_3701.y, x_3701.z));
  let x_3704 : f32 = u_xlat79;
  u_xlat79 = clamp(x_3704, 0.0f, 1.0f);
  let x_3706 : f32 = u_xlat78;
  let x_3707 : f32 = u_xlat79;
  u_xlat78 = (x_3706 * x_3707);
  let x_3709 : f32 = u_xlat78;
  let x_3711 : vec4<f32> = u_xlat6;
  let x_3713 : vec3<f32> = (vec3<f32>(x_3709, x_3709, x_3709) * vec3<f32>(x_3711.x, x_3711.y, x_3711.z));
  let x_3714 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_3713.x, x_3713.y, x_3713.z, x_3714.w);
  let x_3716 : vec3<f32> = u_xlat2;
  let x_3718 : vec4<f32> = x_75.x_MainLightPosition;
  u_xlat33 = (x_3716 + vec3<f32>(x_3718.x, x_3718.y, x_3718.z));
  let x_3721 : vec3<f32> = u_xlat33;
  let x_3722 : vec3<f32> = u_xlat33;
  u_xlat78 = dot(x_3721, x_3722);
  let x_3724 : f32 = u_xlat78;
  u_xlat78 = max(x_3724, 1.17549435e-38f);
  let x_3727 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_3727);
  let x_3729 : f32 = u_xlat78;
  let x_3731 : vec3<f32> = u_xlat33;
  u_xlat33 = (vec3<f32>(x_3729, x_3729, x_3729) * x_3731);
  let x_3733 : vec4<f32> = u_xlat3;
  let x_3735 : vec3<f32> = u_xlat33;
  u_xlat78 = dot(vec3<f32>(x_3733.x, x_3733.y, x_3733.z), x_3735);
  let x_3737 : f32 = u_xlat78;
  u_xlat78 = clamp(x_3737, 0.0f, 1.0f);
  let x_3740 : vec4<f32> = x_75.x_MainLightPosition;
  let x_3742 : vec3<f32> = u_xlat33;
  u_xlat79 = dot(vec3<f32>(x_3740.x, x_3740.y, x_3740.z), x_3742);
  let x_3744 : f32 = u_xlat79;
  u_xlat79 = clamp(x_3744, 0.0f, 1.0f);
  let x_3746 : f32 = u_xlat78;
  let x_3747 : f32 = u_xlat78;
  u_xlat78 = (x_3746 * x_3747);
  let x_3749 : f32 = u_xlat78;
  let x_3751 : f32 = u_xlat53.x;
  u_xlat78 = ((x_3749 * x_3751) + 1.00001001358032226562f);
  let x_3755 : f32 = u_xlat79;
  let x_3756 : f32 = u_xlat79;
  u_xlat79 = (x_3755 * x_3756);
  let x_3758 : f32 = u_xlat78;
  let x_3759 : f32 = u_xlat78;
  u_xlat78 = (x_3758 * x_3759);
  let x_3761 : f32 = u_xlat79;
  u_xlat79 = max(x_3761, 0.10000000149011611938f);
  let x_3764 : f32 = u_xlat78;
  let x_3765 : f32 = u_xlat79;
  u_xlat78 = (x_3764 * x_3765);
  let x_3767 : f32 = u_xlat84;
  let x_3768 : f32 = u_xlat78;
  u_xlat78 = (x_3767 * x_3768);
  let x_3770 : f32 = u_xlat81;
  let x_3771 : f32 = u_xlat78;
  u_xlat78 = (x_3770 / x_3771);
  let x_3773 : f32 = u_xlat78;
  let x_3777 : vec3<f32> = u_xlat4;
  u_xlat33 = ((vec3<f32>(x_3773, x_3773, x_3773) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_3777);
  let x_3779 : vec4<f32> = u_xlat6;
  let x_3781 : vec3<f32> = u_xlat33;
  let x_3782 : vec3<f32> = (vec3<f32>(x_3779.x, x_3779.y, x_3779.z) * x_3781);
  let x_3783 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_3782.x, x_3782.y, x_3782.z, x_3783.w);
  let x_3786 : f32 = x_75.x_AdditionalLightsCount.x;
  let x_3788 : f32 = x_148.unity_LightData.y;
  u_xlat78 = min(x_3786, x_3788);
  let x_3790 : f32 = u_xlat78;
  u_xlatu78 = bitcast<u32>(i32(x_3790));
  let x_3793 : f32 = u_xlat80;
  let x_3796 : f32 = x_264.x_AdditionalShadowFadeParams.x;
  let x_3799 : f32 = x_264.x_AdditionalShadowFadeParams.y;
  u_xlat79 = ((x_3793 * x_3796) + x_3799);
  let x_3801 : f32 = u_xlat79;
  u_xlat79 = clamp(x_3801, 0.0f, 1.0f);
  let x_3804 : f32 = x_3440.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3806 : f32 = x_3440.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3808 : f32 = x_3440.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3810 : f32 = x_3440.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3811 : vec4<f32> = vec4<f32>(x_3804, x_3806, x_3808, x_3810);
  let x_3817 : vec4<bool> = (vec4<f32>(x_3811.x, x_3811.y, x_3811.z, x_3811.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb33 = vec2<bool>(x_3817.x, x_3817.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_3828 : u32 = u_xlatu_loop_1;
    let x_3829 : u32 = u_xlatu78;
    if ((x_3828 < x_3829)) {
    } else {
      break;
    }
    let x_3832 : u32 = u_xlatu_loop_1;
    u_xlatu82 = (x_3832 >> 2u);
    let x_3835 : u32 = u_xlatu_loop_1;
    u_xlati83 = bitcast<i32>((x_3835 & 3u));
    let x_3838 : u32 = u_xlatu82;
    let x_3841 : vec4<f32> = x_148.unity_LightIndices[bitcast<i32>(x_3838)];
    let x_3851 : i32 = u_xlati83;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_3856 : vec4<u32> = indexable[x_3851];
    u_xlat82 = dot(x_3841, bitcast<vec4<f32>>(x_3856));
    let x_3860 : f32 = u_xlat82;
    u_xlati82 = i32(x_3860);
    let x_3862 : vec3<f32> = vs_INTERP8;
    let x_3873 : i32 = u_xlati82;
    let x_3875 : vec4<f32> = x_3872.x_AdditionalLightsPosition[x_3873];
    let x_3878 : i32 = u_xlati82;
    let x_3880 : vec4<f32> = x_3872.x_AdditionalLightsPosition[x_3878];
    let x_3882 : vec3<f32> = ((-(x_3862) * vec3<f32>(x_3875.w, x_3875.w, x_3875.w)) + vec3<f32>(x_3880.x, x_3880.y, x_3880.z));
    let x_3883 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3882.x, x_3882.y, x_3882.z, x_3883.w);
    let x_3886 : vec4<f32> = u_xlat9;
    let x_3888 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_3886.x, x_3886.y, x_3886.z), vec3<f32>(x_3888.x, x_3888.y, x_3888.z));
    let x_3891 : f32 = u_xlat83;
    u_xlat83 = max(x_3891, 0.00006103515625f);
    let x_3894 : f32 = u_xlat83;
    u_xlat85 = inverseSqrt(x_3894);
    let x_3896 : f32 = u_xlat85;
    let x_3898 : vec4<f32> = u_xlat9;
    let x_3900 : vec3<f32> = (vec3<f32>(x_3896, x_3896, x_3896) * vec3<f32>(x_3898.x, x_3898.y, x_3898.z));
    let x_3901 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3900.x, x_3900.y, x_3900.z, x_3901.w);
    let x_3904 : f32 = u_xlat83;
    u_xlat86 = (1.0f / x_3904);
    let x_3906 : f32 = u_xlat83;
    let x_3907 : i32 = u_xlati82;
    let x_3909 : f32 = x_3872.x_AdditionalLightsAttenuation[x_3907].x;
    u_xlat83 = (x_3906 * x_3909);
    let x_3911 : f32 = u_xlat83;
    let x_3913 : f32 = u_xlat83;
    u_xlat83 = ((-(x_3911) * x_3913) + 1.0f);
    let x_3916 : f32 = u_xlat83;
    u_xlat83 = max(x_3916, 0.0f);
    let x_3918 : f32 = u_xlat83;
    let x_3919 : f32 = u_xlat83;
    u_xlat83 = (x_3918 * x_3919);
    let x_3921 : f32 = u_xlat83;
    let x_3922 : f32 = u_xlat86;
    u_xlat83 = (x_3921 * x_3922);
    let x_3924 : i32 = u_xlati82;
    let x_3926 : vec4<f32> = x_3872.x_AdditionalLightsSpotDir[x_3924];
    let x_3928 : vec4<f32> = u_xlat10;
    u_xlat86 = dot(vec3<f32>(x_3926.x, x_3926.y, x_3926.z), vec3<f32>(x_3928.x, x_3928.y, x_3928.z));
    let x_3931 : f32 = u_xlat86;
    let x_3932 : i32 = u_xlati82;
    let x_3934 : f32 = x_3872.x_AdditionalLightsAttenuation[x_3932].z;
    let x_3936 : i32 = u_xlati82;
    let x_3938 : f32 = x_3872.x_AdditionalLightsAttenuation[x_3936].w;
    u_xlat86 = ((x_3931 * x_3934) + x_3938);
    let x_3940 : f32 = u_xlat86;
    u_xlat86 = clamp(x_3940, 0.0f, 1.0f);
    let x_3942 : f32 = u_xlat86;
    let x_3943 : f32 = u_xlat86;
    u_xlat86 = (x_3942 * x_3943);
    let x_3945 : f32 = u_xlat83;
    let x_3946 : f32 = u_xlat86;
    u_xlat83 = (x_3945 * x_3946);
    let x_3950 : i32 = u_xlati82;
    let x_3952 : f32 = x_264.x_AdditionalShadowParams[x_3950].w;
    u_xlati86 = i32(x_3952);
    let x_3955 : i32 = u_xlati86;
    u_xlatb87 = (x_3955 >= 0i);
    let x_3957 : bool = u_xlatb87;
    if (x_3957) {
      let x_3961 : i32 = u_xlati82;
      let x_3963 : f32 = x_264.x_AdditionalShadowParams[x_3961].z;
      u_xlatb87 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_3963, x_3963, x_3963, x_3963))));
      let x_3967 : bool = u_xlatb87;
      if (x_3967) {
        let x_3971 : vec4<f32> = u_xlat10;
        let x_3974 : vec4<f32> = u_xlat10;
        let x_3977 : vec4<bool> = (abs(vec4<f32>(x_3971.z, x_3971.z, x_3971.y, x_3971.z)) >= abs(vec4<f32>(x_3974.x, x_3974.y, x_3974.x, x_3974.x)));
        let x_3979 : vec3<bool> = vec3<bool>(x_3977.x, x_3977.y, x_3977.z);
        let x_3980 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3979.x, x_3979.y, x_3979.z, x_3980.w);
        let x_3983 : bool = u_xlatb11.y;
        let x_3985 : bool = u_xlatb11.x;
        u_xlatb87 = (x_3983 & x_3985);
        let x_3987 : vec4<f32> = u_xlat10;
        let x_3990 : vec4<bool> = (-(vec4<f32>(x_3987.z, x_3987.y, x_3987.z, x_3987.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_3991 : vec3<bool> = vec3<bool>(x_3990.x, x_3990.y, x_3990.w);
        let x_3992 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3991.x, x_3991.y, x_3992.z, x_3991.z);
        let x_3995 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_3995);
        let x_4000 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_4000);
        let x_4005 : bool = u_xlatb11.w;
        u_xlat88 = select(0.0f, 1.0f, x_4005);
        let x_4008 : bool = u_xlatb11.z;
        if (x_4008) {
          let x_4013 : f32 = u_xlat11.y;
          x_4009 = x_4013;
        } else {
          let x_4015 : f32 = u_xlat88;
          x_4009 = x_4015;
        }
        let x_4016 : f32 = x_4009;
        u_xlat88 = x_4016;
        let x_4018 : bool = u_xlatb87;
        if (x_4018) {
          let x_4023 : f32 = u_xlat11.x;
          x_4019 = x_4023;
        } else {
          let x_4025 : f32 = u_xlat88;
          x_4019 = x_4025;
        }
        let x_4026 : f32 = x_4019;
        u_xlat87 = x_4026;
        let x_4027 : i32 = u_xlati82;
        let x_4029 : f32 = x_264.x_AdditionalShadowParams[x_4027].w;
        u_xlat88 = trunc(x_4029);
        let x_4031 : f32 = u_xlat87;
        let x_4032 : f32 = u_xlat88;
        u_xlat87 = (x_4031 + x_4032);
        let x_4034 : f32 = u_xlat87;
        u_xlati86 = i32(x_4034);
      }
      let x_4036 : i32 = u_xlati86;
      u_xlati86 = (x_4036 << bitcast<u32>(2i));
      let x_4038 : vec3<f32> = vs_INTERP8;
      let x_4041 : i32 = u_xlati86;
      let x_4044 : i32 = u_xlati86;
      let x_4048 : vec4<f32> = x_264.x_AdditionalLightsWorldToShadow[((x_4041 + 1i) / 4i)][((x_4044 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_4038.y, x_4038.y, x_4038.y, x_4038.y) * x_4048);
      let x_4050 : i32 = u_xlati86;
      let x_4052 : i32 = u_xlati86;
      let x_4055 : vec4<f32> = x_264.x_AdditionalLightsWorldToShadow[(x_4050 / 4i)][(x_4052 % 4i)];
      let x_4056 : vec3<f32> = vs_INTERP8;
      let x_4059 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_4055 * vec4<f32>(x_4056.x, x_4056.x, x_4056.x, x_4056.x)) + x_4059);
      let x_4061 : i32 = u_xlati86;
      let x_4064 : i32 = u_xlati86;
      let x_4068 : vec4<f32> = x_264.x_AdditionalLightsWorldToShadow[((x_4061 + 2i) / 4i)][((x_4064 + 2i) % 4i)];
      let x_4069 : vec3<f32> = vs_INTERP8;
      let x_4072 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_4068 * vec4<f32>(x_4069.z, x_4069.z, x_4069.z, x_4069.z)) + x_4072);
      let x_4074 : vec4<f32> = u_xlat11;
      let x_4075 : i32 = u_xlati86;
      let x_4078 : i32 = u_xlati86;
      let x_4082 : vec4<f32> = x_264.x_AdditionalLightsWorldToShadow[((x_4075 + 3i) / 4i)][((x_4078 + 3i) % 4i)];
      u_xlat11 = (x_4074 + x_4082);
      let x_4084 : vec4<f32> = u_xlat11;
      let x_4086 : vec4<f32> = u_xlat11;
      let x_4088 : vec3<f32> = (vec3<f32>(x_4084.x, x_4084.y, x_4084.z) / vec3<f32>(x_4086.w, x_4086.w, x_4086.w));
      let x_4089 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4088.x, x_4088.y, x_4088.z, x_4089.w);
      let x_4092 : i32 = u_xlati82;
      let x_4094 : f32 = x_264.x_AdditionalShadowParams[x_4092].y;
      u_xlatb86 = (0.0f < x_4094);
      let x_4096 : bool = u_xlatb86;
      if (x_4096) {
        let x_4099 : i32 = u_xlati82;
        let x_4101 : f32 = x_264.x_AdditionalShadowParams[x_4099].y;
        u_xlatb86 = (1.0f == x_4101);
        let x_4103 : bool = u_xlatb86;
        if (x_4103) {
          let x_4106 : vec4<f32> = u_xlat11;
          let x_4110 : vec4<f32> = x_264.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_4106.x, x_4106.y, x_4106.x, x_4106.y) + x_4110);
          let x_4113 : vec4<f32> = u_xlat12;
          let x_4114 : vec2<f32> = vec2<f32>(x_4113.x, x_4113.y);
          let x_4116 : f32 = u_xlat11.z;
          txVec60 = vec3<f32>(x_4114.x, x_4114.y, x_4116);
          let x_4124 : vec3<f32> = txVec60;
          let x_4126 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4124.xy, x_4124.z);
          u_xlat13.x = x_4126;
          let x_4129 : vec4<f32> = u_xlat12;
          let x_4130 : vec2<f32> = vec2<f32>(x_4129.z, x_4129.w);
          let x_4132 : f32 = u_xlat11.z;
          txVec61 = vec3<f32>(x_4130.x, x_4130.y, x_4132);
          let x_4139 : vec3<f32> = txVec61;
          let x_4141 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4139.xy, x_4139.z);
          u_xlat13.y = x_4141;
          let x_4143 : vec4<f32> = u_xlat11;
          let x_4147 : vec4<f32> = x_264.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_4143.x, x_4143.y, x_4143.x, x_4143.y) + x_4147);
          let x_4150 : vec4<f32> = u_xlat12;
          let x_4151 : vec2<f32> = vec2<f32>(x_4150.x, x_4150.y);
          let x_4153 : f32 = u_xlat11.z;
          txVec62 = vec3<f32>(x_4151.x, x_4151.y, x_4153);
          let x_4160 : vec3<f32> = txVec62;
          let x_4162 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4160.xy, x_4160.z);
          u_xlat13.z = x_4162;
          let x_4165 : vec4<f32> = u_xlat12;
          let x_4166 : vec2<f32> = vec2<f32>(x_4165.z, x_4165.w);
          let x_4168 : f32 = u_xlat11.z;
          txVec63 = vec3<f32>(x_4166.x, x_4166.y, x_4168);
          let x_4175 : vec3<f32> = txVec63;
          let x_4177 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4175.xy, x_4175.z);
          u_xlat13.w = x_4177;
          let x_4179 : vec4<f32> = u_xlat13;
          u_xlat86 = dot(x_4179, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_4182 : i32 = u_xlati82;
          let x_4184 : f32 = x_264.x_AdditionalShadowParams[x_4182].y;
          u_xlatb87 = (2.0f == x_4184);
          let x_4186 : bool = u_xlatb87;
          if (x_4186) {
            let x_4189 : vec4<f32> = u_xlat11;
            let x_4193 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_4196 : vec2<f32> = ((vec2<f32>(x_4189.x, x_4189.y) * vec2<f32>(x_4193.z, x_4193.w)) + vec2<f32>(0.5f, 0.5f));
            let x_4197 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4196.x, x_4196.y, x_4197.z, x_4197.w);
            let x_4199 : vec4<f32> = u_xlat12;
            let x_4201 : vec2<f32> = floor(vec2<f32>(x_4199.x, x_4199.y));
            let x_4202 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4201.x, x_4201.y, x_4202.z, x_4202.w);
            let x_4205 : vec4<f32> = u_xlat11;
            let x_4208 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_4211 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_4205.x, x_4205.y) * vec2<f32>(x_4208.z, x_4208.w)) + -(vec2<f32>(x_4211.x, x_4211.y)));
            let x_4215 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_4215.x, x_4215.x, x_4215.y, x_4215.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_4218 : vec4<f32> = u_xlat13;
            let x_4220 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_4218.x, x_4218.x, x_4218.z, x_4218.z) * vec4<f32>(x_4220.x, x_4220.x, x_4220.z, x_4220.z));
            let x_4223 : vec4<f32> = u_xlat14;
            let x_4225 : vec2<f32> = (vec2<f32>(x_4223.y, x_4223.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_4226 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4225.x, x_4226.y, x_4225.y, x_4226.w);
            let x_4228 : vec4<f32> = u_xlat14;
            let x_4231 : vec2<f32> = u_xlat64;
            let x_4233 : vec2<f32> = ((vec2<f32>(x_4228.x, x_4228.z) * vec2<f32>(0.5f, 0.5f)) + -(x_4231));
            let x_4234 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4233.x, x_4233.y, x_4234.z, x_4234.w);
            let x_4236 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_4236) + vec2<f32>(1.0f, 1.0f));
            let x_4239 : vec2<f32> = u_xlat64;
            let x_4240 : vec2<f32> = min(x_4239, vec2<f32>(0.0f, 0.0f));
            let x_4241 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4240.x, x_4240.y, x_4241.z, x_4241.w);
            let x_4243 : vec4<f32> = u_xlat15;
            let x_4246 : vec4<f32> = u_xlat15;
            let x_4249 : vec2<f32> = u_xlat66;
            let x_4250 : vec2<f32> = ((-(vec2<f32>(x_4243.x, x_4243.y)) * vec2<f32>(x_4246.x, x_4246.y)) + x_4249);
            let x_4251 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4250.x, x_4250.y, x_4251.z, x_4251.w);
            let x_4253 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_4253, vec2<f32>(0.0f, 0.0f));
            let x_4255 : vec2<f32> = u_xlat64;
            let x_4257 : vec2<f32> = u_xlat64;
            let x_4259 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_4255) * x_4257) + vec2<f32>(x_4259.y, x_4259.w));
            let x_4262 : vec4<f32> = u_xlat15;
            let x_4264 : vec2<f32> = (vec2<f32>(x_4262.x, x_4262.y) + vec2<f32>(1.0f, 1.0f));
            let x_4265 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4264.x, x_4264.y, x_4265.z, x_4265.w);
            let x_4267 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_4267 + vec2<f32>(1.0f, 1.0f));
            let x_4269 : vec4<f32> = u_xlat14;
            let x_4271 : vec2<f32> = (vec2<f32>(x_4269.x, x_4269.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4272 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4271.x, x_4271.y, x_4272.z, x_4272.w);
            let x_4274 : vec2<f32> = u_xlat66;
            let x_4275 : vec2<f32> = (x_4274 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4276 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4275.x, x_4275.y, x_4276.z, x_4276.w);
            let x_4278 : vec4<f32> = u_xlat15;
            let x_4280 : vec2<f32> = (vec2<f32>(x_4278.x, x_4278.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4281 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4280.x, x_4280.y, x_4281.z, x_4281.w);
            let x_4283 : vec2<f32> = u_xlat64;
            let x_4284 : vec2<f32> = (x_4283 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4285 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4284.x, x_4284.y, x_4285.z, x_4285.w);
            let x_4287 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_4287.y, x_4287.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4291 : f32 = u_xlat15.x;
            u_xlat16.z = x_4291;
            let x_4294 : f32 = u_xlat64.x;
            u_xlat16.w = x_4294;
            let x_4297 : f32 = u_xlat17.x;
            u_xlat14.z = x_4297;
            let x_4300 : f32 = u_xlat13.x;
            u_xlat14.w = x_4300;
            let x_4302 : vec4<f32> = u_xlat14;
            let x_4304 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_4302.z, x_4302.w, x_4302.x, x_4302.z) + vec4<f32>(x_4304.z, x_4304.w, x_4304.x, x_4304.z));
            let x_4308 : f32 = u_xlat16.y;
            u_xlat15.z = x_4308;
            let x_4311 : f32 = u_xlat64.y;
            u_xlat15.w = x_4311;
            let x_4314 : f32 = u_xlat14.y;
            u_xlat17.z = x_4314;
            let x_4317 : f32 = u_xlat13.z;
            u_xlat17.w = x_4317;
            let x_4319 : vec4<f32> = u_xlat15;
            let x_4321 : vec4<f32> = u_xlat17;
            let x_4323 : vec3<f32> = (vec3<f32>(x_4319.z, x_4319.y, x_4319.w) + vec3<f32>(x_4321.z, x_4321.y, x_4321.w));
            let x_4324 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4323.x, x_4323.y, x_4323.z, x_4324.w);
            let x_4326 : vec4<f32> = u_xlat14;
            let x_4328 : vec4<f32> = u_xlat18;
            let x_4330 : vec3<f32> = (vec3<f32>(x_4326.x, x_4326.z, x_4326.w) / vec3<f32>(x_4328.z, x_4328.w, x_4328.y));
            let x_4331 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4330.x, x_4330.y, x_4330.z, x_4331.w);
            let x_4333 : vec4<f32> = u_xlat14;
            let x_4335 : vec3<f32> = (vec3<f32>(x_4333.x, x_4333.y, x_4333.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4336 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4335.x, x_4335.y, x_4335.z, x_4336.w);
            let x_4338 : vec4<f32> = u_xlat17;
            let x_4340 : vec4<f32> = u_xlat13;
            let x_4342 : vec3<f32> = (vec3<f32>(x_4338.z, x_4338.y, x_4338.w) / vec3<f32>(x_4340.x, x_4340.y, x_4340.z));
            let x_4343 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4342.x, x_4342.y, x_4342.z, x_4343.w);
            let x_4345 : vec4<f32> = u_xlat15;
            let x_4347 : vec3<f32> = (vec3<f32>(x_4345.x, x_4345.y, x_4345.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4348 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4347.x, x_4347.y, x_4347.z, x_4348.w);
            let x_4350 : vec4<f32> = u_xlat14;
            let x_4353 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_4355 : vec3<f32> = (vec3<f32>(x_4350.y, x_4350.x, x_4350.z) * vec3<f32>(x_4353.x, x_4353.x, x_4353.x));
            let x_4356 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4355.x, x_4355.y, x_4355.z, x_4356.w);
            let x_4358 : vec4<f32> = u_xlat15;
            let x_4361 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_4363 : vec3<f32> = (vec3<f32>(x_4358.x, x_4358.y, x_4358.z) * vec3<f32>(x_4361.y, x_4361.y, x_4361.y));
            let x_4364 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4363.x, x_4363.y, x_4363.z, x_4364.w);
            let x_4367 : f32 = u_xlat15.x;
            u_xlat14.w = x_4367;
            let x_4369 : vec4<f32> = u_xlat12;
            let x_4372 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_4375 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_4369.x, x_4369.y, x_4369.x, x_4369.y) * vec4<f32>(x_4372.x, x_4372.y, x_4372.x, x_4372.y)) + vec4<f32>(x_4375.y, x_4375.w, x_4375.x, x_4375.w));
            let x_4378 : vec4<f32> = u_xlat12;
            let x_4381 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_4384 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_4378.x, x_4378.y) * vec2<f32>(x_4381.x, x_4381.y)) + vec2<f32>(x_4384.z, x_4384.w));
            let x_4388 : f32 = u_xlat14.y;
            u_xlat15.w = x_4388;
            let x_4390 : vec4<f32> = u_xlat15;
            let x_4391 : vec2<f32> = vec2<f32>(x_4390.y, x_4390.z);
            let x_4392 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4392.x, x_4391.x, x_4392.z, x_4391.y);
            let x_4394 : vec4<f32> = u_xlat12;
            let x_4397 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_4400 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_4394.x, x_4394.y, x_4394.x, x_4394.y) * vec4<f32>(x_4397.x, x_4397.y, x_4397.x, x_4397.y)) + vec4<f32>(x_4400.x, x_4400.y, x_4400.z, x_4400.y));
            let x_4403 : vec4<f32> = u_xlat12;
            let x_4406 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_4409 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_4403.x, x_4403.y, x_4403.x, x_4403.y) * vec4<f32>(x_4406.x, x_4406.y, x_4406.x, x_4406.y)) + vec4<f32>(x_4409.w, x_4409.y, x_4409.w, x_4409.z));
            let x_4412 : vec4<f32> = u_xlat12;
            let x_4415 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_4418 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_4412.x, x_4412.y, x_4412.x, x_4412.y) * vec4<f32>(x_4415.x, x_4415.y, x_4415.x, x_4415.y)) + vec4<f32>(x_4418.x, x_4418.w, x_4418.z, x_4418.w));
            let x_4421 : vec4<f32> = u_xlat13;
            let x_4423 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_4421.x, x_4421.x, x_4421.x, x_4421.y) * vec4<f32>(x_4423.z, x_4423.w, x_4423.y, x_4423.z));
            let x_4426 : vec4<f32> = u_xlat13;
            let x_4428 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_4426.y, x_4426.y, x_4426.z, x_4426.z) * x_4428);
            let x_4431 : f32 = u_xlat13.z;
            let x_4433 : f32 = u_xlat18.y;
            u_xlat87 = (x_4431 * x_4433);
            let x_4436 : vec4<f32> = u_xlat16;
            let x_4437 : vec2<f32> = vec2<f32>(x_4436.x, x_4436.y);
            let x_4439 : f32 = u_xlat11.z;
            txVec64 = vec3<f32>(x_4437.x, x_4437.y, x_4439);
            let x_4446 : vec3<f32> = txVec64;
            let x_4448 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4446.xy, x_4446.z);
            u_xlat88 = x_4448;
            let x_4450 : vec4<f32> = u_xlat16;
            let x_4451 : vec2<f32> = vec2<f32>(x_4450.z, x_4450.w);
            let x_4453 : f32 = u_xlat11.z;
            txVec65 = vec3<f32>(x_4451.x, x_4451.y, x_4453);
            let x_4461 : vec3<f32> = txVec65;
            let x_4463 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4461.xy, x_4461.z);
            u_xlat89 = x_4463;
            let x_4464 : f32 = u_xlat89;
            let x_4466 : f32 = u_xlat19.y;
            u_xlat89 = (x_4464 * x_4466);
            let x_4469 : f32 = u_xlat19.x;
            let x_4470 : f32 = u_xlat88;
            let x_4472 : f32 = u_xlat89;
            u_xlat88 = ((x_4469 * x_4470) + x_4472);
            let x_4475 : vec2<f32> = u_xlat64;
            let x_4477 : f32 = u_xlat11.z;
            txVec66 = vec3<f32>(x_4475.x, x_4475.y, x_4477);
            let x_4484 : vec3<f32> = txVec66;
            let x_4486 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4484.xy, x_4484.z);
            u_xlat89 = x_4486;
            let x_4488 : f32 = u_xlat19.z;
            let x_4489 : f32 = u_xlat89;
            let x_4491 : f32 = u_xlat88;
            u_xlat88 = ((x_4488 * x_4489) + x_4491);
            let x_4494 : vec4<f32> = u_xlat15;
            let x_4495 : vec2<f32> = vec2<f32>(x_4494.x, x_4494.y);
            let x_4497 : f32 = u_xlat11.z;
            txVec67 = vec3<f32>(x_4495.x, x_4495.y, x_4497);
            let x_4504 : vec3<f32> = txVec67;
            let x_4506 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4504.xy, x_4504.z);
            u_xlat89 = x_4506;
            let x_4508 : f32 = u_xlat19.w;
            let x_4509 : f32 = u_xlat89;
            let x_4511 : f32 = u_xlat88;
            u_xlat88 = ((x_4508 * x_4509) + x_4511);
            let x_4514 : vec4<f32> = u_xlat17;
            let x_4515 : vec2<f32> = vec2<f32>(x_4514.x, x_4514.y);
            let x_4517 : f32 = u_xlat11.z;
            txVec68 = vec3<f32>(x_4515.x, x_4515.y, x_4517);
            let x_4524 : vec3<f32> = txVec68;
            let x_4526 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4524.xy, x_4524.z);
            u_xlat89 = x_4526;
            let x_4528 : f32 = u_xlat20.x;
            let x_4529 : f32 = u_xlat89;
            let x_4531 : f32 = u_xlat88;
            u_xlat88 = ((x_4528 * x_4529) + x_4531);
            let x_4534 : vec4<f32> = u_xlat17;
            let x_4535 : vec2<f32> = vec2<f32>(x_4534.z, x_4534.w);
            let x_4537 : f32 = u_xlat11.z;
            txVec69 = vec3<f32>(x_4535.x, x_4535.y, x_4537);
            let x_4544 : vec3<f32> = txVec69;
            let x_4546 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4544.xy, x_4544.z);
            u_xlat89 = x_4546;
            let x_4548 : f32 = u_xlat20.y;
            let x_4549 : f32 = u_xlat89;
            let x_4551 : f32 = u_xlat88;
            u_xlat88 = ((x_4548 * x_4549) + x_4551);
            let x_4554 : vec4<f32> = u_xlat15;
            let x_4555 : vec2<f32> = vec2<f32>(x_4554.z, x_4554.w);
            let x_4557 : f32 = u_xlat11.z;
            txVec70 = vec3<f32>(x_4555.x, x_4555.y, x_4557);
            let x_4564 : vec3<f32> = txVec70;
            let x_4566 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4564.xy, x_4564.z);
            u_xlat89 = x_4566;
            let x_4568 : f32 = u_xlat20.z;
            let x_4569 : f32 = u_xlat89;
            let x_4571 : f32 = u_xlat88;
            u_xlat88 = ((x_4568 * x_4569) + x_4571);
            let x_4574 : vec4<f32> = u_xlat14;
            let x_4575 : vec2<f32> = vec2<f32>(x_4574.x, x_4574.y);
            let x_4577 : f32 = u_xlat11.z;
            txVec71 = vec3<f32>(x_4575.x, x_4575.y, x_4577);
            let x_4584 : vec3<f32> = txVec71;
            let x_4586 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4584.xy, x_4584.z);
            u_xlat89 = x_4586;
            let x_4588 : f32 = u_xlat20.w;
            let x_4589 : f32 = u_xlat89;
            let x_4591 : f32 = u_xlat88;
            u_xlat88 = ((x_4588 * x_4589) + x_4591);
            let x_4594 : vec4<f32> = u_xlat14;
            let x_4595 : vec2<f32> = vec2<f32>(x_4594.z, x_4594.w);
            let x_4597 : f32 = u_xlat11.z;
            txVec72 = vec3<f32>(x_4595.x, x_4595.y, x_4597);
            let x_4604 : vec3<f32> = txVec72;
            let x_4606 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4604.xy, x_4604.z);
            u_xlat89 = x_4606;
            let x_4607 : f32 = u_xlat87;
            let x_4608 : f32 = u_xlat89;
            let x_4610 : f32 = u_xlat88;
            u_xlat86 = ((x_4607 * x_4608) + x_4610);
          } else {
            let x_4613 : vec4<f32> = u_xlat11;
            let x_4616 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_4619 : vec2<f32> = ((vec2<f32>(x_4613.x, x_4613.y) * vec2<f32>(x_4616.z, x_4616.w)) + vec2<f32>(0.5f, 0.5f));
            let x_4620 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4619.x, x_4619.y, x_4620.z, x_4620.w);
            let x_4622 : vec4<f32> = u_xlat12;
            let x_4624 : vec2<f32> = floor(vec2<f32>(x_4622.x, x_4622.y));
            let x_4625 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4624.x, x_4624.y, x_4625.z, x_4625.w);
            let x_4627 : vec4<f32> = u_xlat11;
            let x_4630 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_4633 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_4627.x, x_4627.y) * vec2<f32>(x_4630.z, x_4630.w)) + -(vec2<f32>(x_4633.x, x_4633.y)));
            let x_4637 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_4637.x, x_4637.x, x_4637.y, x_4637.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_4640 : vec4<f32> = u_xlat13;
            let x_4642 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_4640.x, x_4640.x, x_4640.z, x_4640.z) * vec4<f32>(x_4642.x, x_4642.x, x_4642.z, x_4642.z));
            let x_4645 : vec4<f32> = u_xlat14;
            let x_4647 : vec2<f32> = (vec2<f32>(x_4645.y, x_4645.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_4648 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4648.x, x_4647.x, x_4648.z, x_4647.y);
            let x_4650 : vec4<f32> = u_xlat14;
            let x_4653 : vec2<f32> = u_xlat64;
            let x_4655 : vec2<f32> = ((vec2<f32>(x_4650.x, x_4650.z) * vec2<f32>(0.5f, 0.5f)) + -(x_4653));
            let x_4656 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4655.x, x_4656.y, x_4655.y, x_4656.w);
            let x_4658 : vec2<f32> = u_xlat64;
            let x_4660 : vec2<f32> = (-(x_4658) + vec2<f32>(1.0f, 1.0f));
            let x_4661 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4660.x, x_4660.y, x_4661.z, x_4661.w);
            let x_4663 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_4663, vec2<f32>(0.0f, 0.0f));
            let x_4665 : vec2<f32> = u_xlat66;
            let x_4667 : vec2<f32> = u_xlat66;
            let x_4669 : vec4<f32> = u_xlat14;
            let x_4671 : vec2<f32> = ((-(x_4665) * x_4667) + vec2<f32>(x_4669.x, x_4669.y));
            let x_4672 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4671.x, x_4671.y, x_4672.z, x_4672.w);
            let x_4674 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_4674, vec2<f32>(0.0f, 0.0f));
            let x_4677 : vec2<f32> = u_xlat66;
            let x_4679 : vec2<f32> = u_xlat66;
            let x_4681 : vec4<f32> = u_xlat13;
            let x_4683 : vec2<f32> = ((-(x_4677) * x_4679) + vec2<f32>(x_4681.y, x_4681.w));
            let x_4684 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_4683.x, x_4684.y, x_4683.y);
            let x_4686 : vec4<f32> = u_xlat14;
            let x_4688 : vec2<f32> = (vec2<f32>(x_4686.x, x_4686.y) + vec2<f32>(2.0f, 2.0f));
            let x_4689 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4688.x, x_4688.y, x_4689.z, x_4689.w);
            let x_4691 : vec3<f32> = u_xlat39;
            let x_4693 : vec2<f32> = (vec2<f32>(x_4691.x, x_4691.z) + vec2<f32>(2.0f, 2.0f));
            let x_4694 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4694.x, x_4693.x, x_4694.z, x_4693.y);
            let x_4697 : f32 = u_xlat13.y;
            u_xlat16.z = (x_4697 * 0.08163200318813323975f);
            let x_4700 : vec4<f32> = u_xlat13;
            let x_4702 : vec3<f32> = (vec3<f32>(x_4700.z, x_4700.x, x_4700.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_4703 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4702.x, x_4702.y, x_4702.z, x_4703.w);
            let x_4705 : vec4<f32> = u_xlat14;
            let x_4707 : vec2<f32> = (vec2<f32>(x_4705.x, x_4705.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_4708 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4707.x, x_4707.y, x_4708.z, x_4708.w);
            let x_4711 : f32 = u_xlat17.y;
            u_xlat16.x = x_4711;
            let x_4713 : vec2<f32> = u_xlat64;
            let x_4716 : vec2<f32> = ((vec2<f32>(x_4713.x, x_4713.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4717 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4717.x, x_4716.x, x_4717.z, x_4716.y);
            let x_4719 : vec2<f32> = u_xlat64;
            let x_4722 : vec2<f32> = ((vec2<f32>(x_4719.x, x_4719.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4723 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4722.x, x_4723.y, x_4722.y, x_4723.w);
            let x_4726 : f32 = u_xlat13.x;
            u_xlat14.y = x_4726;
            let x_4729 : f32 = u_xlat15.y;
            u_xlat14.w = x_4729;
            let x_4731 : vec4<f32> = u_xlat14;
            let x_4732 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_4731 + x_4732);
            let x_4734 : vec2<f32> = u_xlat64;
            let x_4737 : vec2<f32> = ((vec2<f32>(x_4734.y, x_4734.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4738 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4738.x, x_4737.x, x_4738.z, x_4737.y);
            let x_4740 : vec2<f32> = u_xlat64;
            let x_4743 : vec2<f32> = ((vec2<f32>(x_4740.y, x_4740.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4744 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4743.x, x_4744.y, x_4743.y, x_4744.w);
            let x_4747 : f32 = u_xlat13.y;
            u_xlat15.y = x_4747;
            let x_4749 : vec4<f32> = u_xlat15;
            let x_4750 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_4749 + x_4750);
            let x_4752 : vec4<f32> = u_xlat14;
            let x_4753 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_4752 / x_4753);
            let x_4755 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_4755 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4757 : vec4<f32> = u_xlat15;
            let x_4758 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_4757 / x_4758);
            let x_4760 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_4760 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4762 : vec4<f32> = u_xlat14;
            let x_4765 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_4762.w, x_4762.x, x_4762.y, x_4762.z) * vec4<f32>(x_4765.x, x_4765.x, x_4765.x, x_4765.x));
            let x_4768 : vec4<f32> = u_xlat15;
            let x_4771 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_4768.x, x_4768.w, x_4768.y, x_4768.z) * vec4<f32>(x_4771.y, x_4771.y, x_4771.y, x_4771.y));
            let x_4774 : vec4<f32> = u_xlat14;
            let x_4775 : vec3<f32> = vec3<f32>(x_4774.y, x_4774.z, x_4774.w);
            let x_4776 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4775.x, x_4776.y, x_4775.y, x_4775.z);
            let x_4779 : f32 = u_xlat15.x;
            u_xlat17.y = x_4779;
            let x_4781 : vec4<f32> = u_xlat12;
            let x_4784 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_4787 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_4781.x, x_4781.y, x_4781.x, x_4781.y) * vec4<f32>(x_4784.x, x_4784.y, x_4784.x, x_4784.y)) + vec4<f32>(x_4787.x, x_4787.y, x_4787.z, x_4787.y));
            let x_4790 : vec4<f32> = u_xlat12;
            let x_4793 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_4796 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_4790.x, x_4790.y) * vec2<f32>(x_4793.x, x_4793.y)) + vec2<f32>(x_4796.w, x_4796.y));
            let x_4800 : f32 = u_xlat17.y;
            u_xlat14.y = x_4800;
            let x_4803 : f32 = u_xlat15.z;
            u_xlat17.y = x_4803;
            let x_4805 : vec4<f32> = u_xlat12;
            let x_4808 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_4811 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_4805.x, x_4805.y, x_4805.x, x_4805.y) * vec4<f32>(x_4808.x, x_4808.y, x_4808.x, x_4808.y)) + vec4<f32>(x_4811.x, x_4811.y, x_4811.z, x_4811.y));
            let x_4814 : vec4<f32> = u_xlat12;
            let x_4817 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_4820 : vec4<f32> = u_xlat17;
            let x_4822 : vec2<f32> = ((vec2<f32>(x_4814.x, x_4814.y) * vec2<f32>(x_4817.x, x_4817.y)) + vec2<f32>(x_4820.w, x_4820.y));
            let x_4823 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_4822.x, x_4822.y, x_4823.z, x_4823.w);
            let x_4826 : f32 = u_xlat17.y;
            u_xlat14.z = x_4826;
            let x_4828 : vec4<f32> = u_xlat12;
            let x_4831 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_4834 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_4828.x, x_4828.y, x_4828.x, x_4828.y) * vec4<f32>(x_4831.x, x_4831.y, x_4831.x, x_4831.y)) + vec4<f32>(x_4834.x, x_4834.y, x_4834.x, x_4834.z));
            let x_4838 : f32 = u_xlat15.w;
            u_xlat17.y = x_4838;
            let x_4841 : vec4<f32> = u_xlat12;
            let x_4844 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_4847 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_4841.x, x_4841.y, x_4841.x, x_4841.y) * vec4<f32>(x_4844.x, x_4844.y, x_4844.x, x_4844.y)) + vec4<f32>(x_4847.x, x_4847.y, x_4847.z, x_4847.y));
            let x_4851 : vec4<f32> = u_xlat12;
            let x_4854 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_4857 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_4851.x, x_4851.y) * vec2<f32>(x_4854.x, x_4854.y)) + vec2<f32>(x_4857.w, x_4857.y));
            let x_4861 : f32 = u_xlat17.y;
            u_xlat14.w = x_4861;
            let x_4864 : vec4<f32> = u_xlat12;
            let x_4867 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_4870 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_4864.x, x_4864.y) * vec2<f32>(x_4867.x, x_4867.y)) + vec2<f32>(x_4870.x, x_4870.w));
            let x_4873 : vec4<f32> = u_xlat17;
            let x_4874 : vec3<f32> = vec3<f32>(x_4873.x, x_4873.z, x_4873.w);
            let x_4875 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4874.x, x_4875.y, x_4874.y, x_4874.z);
            let x_4877 : vec4<f32> = u_xlat12;
            let x_4880 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_4883 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_4877.x, x_4877.y, x_4877.x, x_4877.y) * vec4<f32>(x_4880.x, x_4880.y, x_4880.x, x_4880.y)) + vec4<f32>(x_4883.x, x_4883.y, x_4883.z, x_4883.y));
            let x_4886 : vec4<f32> = u_xlat12;
            let x_4889 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_4892 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_4886.x, x_4886.y) * vec2<f32>(x_4889.x, x_4889.y)) + vec2<f32>(x_4892.w, x_4892.y));
            let x_4896 : f32 = u_xlat14.x;
            u_xlat15.x = x_4896;
            let x_4898 : vec4<f32> = u_xlat12;
            let x_4901 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_4904 : vec4<f32> = u_xlat15;
            let x_4906 : vec2<f32> = ((vec2<f32>(x_4898.x, x_4898.y) * vec2<f32>(x_4901.x, x_4901.y)) + vec2<f32>(x_4904.x, x_4904.y));
            let x_4907 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4906.x, x_4906.y, x_4907.z, x_4907.w);
            let x_4910 : vec4<f32> = u_xlat13;
            let x_4912 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_4910.x, x_4910.x, x_4910.x, x_4910.x) * x_4912);
            let x_4915 : vec4<f32> = u_xlat13;
            let x_4917 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_4915.y, x_4915.y, x_4915.y, x_4915.y) * x_4917);
            let x_4920 : vec4<f32> = u_xlat13;
            let x_4922 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_4920.z, x_4920.z, x_4920.z, x_4920.z) * x_4922);
            let x_4924 : vec4<f32> = u_xlat13;
            let x_4926 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_4924.w, x_4924.w, x_4924.w, x_4924.w) * x_4926);
            let x_4929 : vec4<f32> = u_xlat18;
            let x_4930 : vec2<f32> = vec2<f32>(x_4929.x, x_4929.y);
            let x_4932 : f32 = u_xlat11.z;
            txVec73 = vec3<f32>(x_4930.x, x_4930.y, x_4932);
            let x_4939 : vec3<f32> = txVec73;
            let x_4941 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4939.xy, x_4939.z);
            u_xlat87 = x_4941;
            let x_4943 : vec4<f32> = u_xlat18;
            let x_4944 : vec2<f32> = vec2<f32>(x_4943.z, x_4943.w);
            let x_4946 : f32 = u_xlat11.z;
            txVec74 = vec3<f32>(x_4944.x, x_4944.y, x_4946);
            let x_4953 : vec3<f32> = txVec74;
            let x_4955 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4953.xy, x_4953.z);
            u_xlat88 = x_4955;
            let x_4956 : f32 = u_xlat88;
            let x_4958 : f32 = u_xlat23.y;
            u_xlat88 = (x_4956 * x_4958);
            let x_4961 : f32 = u_xlat23.x;
            let x_4962 : f32 = u_xlat87;
            let x_4964 : f32 = u_xlat88;
            u_xlat87 = ((x_4961 * x_4962) + x_4964);
            let x_4967 : vec2<f32> = u_xlat64;
            let x_4969 : f32 = u_xlat11.z;
            txVec75 = vec3<f32>(x_4967.x, x_4967.y, x_4969);
            let x_4976 : vec3<f32> = txVec75;
            let x_4978 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4976.xy, x_4976.z);
            u_xlat88 = x_4978;
            let x_4980 : f32 = u_xlat23.z;
            let x_4981 : f32 = u_xlat88;
            let x_4983 : f32 = u_xlat87;
            u_xlat87 = ((x_4980 * x_4981) + x_4983);
            let x_4986 : vec4<f32> = u_xlat21;
            let x_4987 : vec2<f32> = vec2<f32>(x_4986.x, x_4986.y);
            let x_4989 : f32 = u_xlat11.z;
            txVec76 = vec3<f32>(x_4987.x, x_4987.y, x_4989);
            let x_4996 : vec3<f32> = txVec76;
            let x_4998 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4996.xy, x_4996.z);
            u_xlat88 = x_4998;
            let x_5000 : f32 = u_xlat23.w;
            let x_5001 : f32 = u_xlat88;
            let x_5003 : f32 = u_xlat87;
            u_xlat87 = ((x_5000 * x_5001) + x_5003);
            let x_5006 : vec4<f32> = u_xlat19;
            let x_5007 : vec2<f32> = vec2<f32>(x_5006.x, x_5006.y);
            let x_5009 : f32 = u_xlat11.z;
            txVec77 = vec3<f32>(x_5007.x, x_5007.y, x_5009);
            let x_5016 : vec3<f32> = txVec77;
            let x_5018 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5016.xy, x_5016.z);
            u_xlat88 = x_5018;
            let x_5020 : f32 = u_xlat24.x;
            let x_5021 : f32 = u_xlat88;
            let x_5023 : f32 = u_xlat87;
            u_xlat87 = ((x_5020 * x_5021) + x_5023);
            let x_5026 : vec4<f32> = u_xlat19;
            let x_5027 : vec2<f32> = vec2<f32>(x_5026.z, x_5026.w);
            let x_5029 : f32 = u_xlat11.z;
            txVec78 = vec3<f32>(x_5027.x, x_5027.y, x_5029);
            let x_5036 : vec3<f32> = txVec78;
            let x_5038 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5036.xy, x_5036.z);
            u_xlat88 = x_5038;
            let x_5040 : f32 = u_xlat24.y;
            let x_5041 : f32 = u_xlat88;
            let x_5043 : f32 = u_xlat87;
            u_xlat87 = ((x_5040 * x_5041) + x_5043);
            let x_5046 : vec4<f32> = u_xlat20;
            let x_5047 : vec2<f32> = vec2<f32>(x_5046.x, x_5046.y);
            let x_5049 : f32 = u_xlat11.z;
            txVec79 = vec3<f32>(x_5047.x, x_5047.y, x_5049);
            let x_5056 : vec3<f32> = txVec79;
            let x_5058 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5056.xy, x_5056.z);
            u_xlat88 = x_5058;
            let x_5060 : f32 = u_xlat24.z;
            let x_5061 : f32 = u_xlat88;
            let x_5063 : f32 = u_xlat87;
            u_xlat87 = ((x_5060 * x_5061) + x_5063);
            let x_5066 : vec4<f32> = u_xlat21;
            let x_5067 : vec2<f32> = vec2<f32>(x_5066.z, x_5066.w);
            let x_5069 : f32 = u_xlat11.z;
            txVec80 = vec3<f32>(x_5067.x, x_5067.y, x_5069);
            let x_5076 : vec3<f32> = txVec80;
            let x_5078 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5076.xy, x_5076.z);
            u_xlat88 = x_5078;
            let x_5080 : f32 = u_xlat24.w;
            let x_5081 : f32 = u_xlat88;
            let x_5083 : f32 = u_xlat87;
            u_xlat87 = ((x_5080 * x_5081) + x_5083);
            let x_5086 : vec4<f32> = u_xlat22;
            let x_5087 : vec2<f32> = vec2<f32>(x_5086.x, x_5086.y);
            let x_5089 : f32 = u_xlat11.z;
            txVec81 = vec3<f32>(x_5087.x, x_5087.y, x_5089);
            let x_5096 : vec3<f32> = txVec81;
            let x_5098 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5096.xy, x_5096.z);
            u_xlat88 = x_5098;
            let x_5100 : f32 = u_xlat25.x;
            let x_5101 : f32 = u_xlat88;
            let x_5103 : f32 = u_xlat87;
            u_xlat87 = ((x_5100 * x_5101) + x_5103);
            let x_5106 : vec4<f32> = u_xlat22;
            let x_5107 : vec2<f32> = vec2<f32>(x_5106.z, x_5106.w);
            let x_5109 : f32 = u_xlat11.z;
            txVec82 = vec3<f32>(x_5107.x, x_5107.y, x_5109);
            let x_5116 : vec3<f32> = txVec82;
            let x_5118 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5116.xy, x_5116.z);
            u_xlat88 = x_5118;
            let x_5120 : f32 = u_xlat25.y;
            let x_5121 : f32 = u_xlat88;
            let x_5123 : f32 = u_xlat87;
            u_xlat87 = ((x_5120 * x_5121) + x_5123);
            let x_5126 : vec2<f32> = u_xlat40;
            let x_5128 : f32 = u_xlat11.z;
            txVec83 = vec3<f32>(x_5126.x, x_5126.y, x_5128);
            let x_5135 : vec3<f32> = txVec83;
            let x_5137 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5135.xy, x_5135.z);
            u_xlat88 = x_5137;
            let x_5139 : f32 = u_xlat25.z;
            let x_5140 : f32 = u_xlat88;
            let x_5142 : f32 = u_xlat87;
            u_xlat87 = ((x_5139 * x_5140) + x_5142);
            let x_5145 : vec2<f32> = u_xlat72;
            let x_5147 : f32 = u_xlat11.z;
            txVec84 = vec3<f32>(x_5145.x, x_5145.y, x_5147);
            let x_5154 : vec3<f32> = txVec84;
            let x_5156 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5154.xy, x_5154.z);
            u_xlat88 = x_5156;
            let x_5158 : f32 = u_xlat25.w;
            let x_5159 : f32 = u_xlat88;
            let x_5161 : f32 = u_xlat87;
            u_xlat87 = ((x_5158 * x_5159) + x_5161);
            let x_5164 : vec4<f32> = u_xlat17;
            let x_5165 : vec2<f32> = vec2<f32>(x_5164.x, x_5164.y);
            let x_5167 : f32 = u_xlat11.z;
            txVec85 = vec3<f32>(x_5165.x, x_5165.y, x_5167);
            let x_5174 : vec3<f32> = txVec85;
            let x_5176 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5174.xy, x_5174.z);
            u_xlat88 = x_5176;
            let x_5178 : f32 = u_xlat13.x;
            let x_5179 : f32 = u_xlat88;
            let x_5181 : f32 = u_xlat87;
            u_xlat87 = ((x_5178 * x_5179) + x_5181);
            let x_5184 : vec4<f32> = u_xlat17;
            let x_5185 : vec2<f32> = vec2<f32>(x_5184.z, x_5184.w);
            let x_5187 : f32 = u_xlat11.z;
            txVec86 = vec3<f32>(x_5185.x, x_5185.y, x_5187);
            let x_5194 : vec3<f32> = txVec86;
            let x_5196 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5194.xy, x_5194.z);
            u_xlat88 = x_5196;
            let x_5198 : f32 = u_xlat13.y;
            let x_5199 : f32 = u_xlat88;
            let x_5201 : f32 = u_xlat87;
            u_xlat87 = ((x_5198 * x_5199) + x_5201);
            let x_5204 : vec2<f32> = u_xlat67;
            let x_5206 : f32 = u_xlat11.z;
            txVec87 = vec3<f32>(x_5204.x, x_5204.y, x_5206);
            let x_5213 : vec3<f32> = txVec87;
            let x_5215 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5213.xy, x_5213.z);
            u_xlat88 = x_5215;
            let x_5217 : f32 = u_xlat13.z;
            let x_5218 : f32 = u_xlat88;
            let x_5220 : f32 = u_xlat87;
            u_xlat87 = ((x_5217 * x_5218) + x_5220);
            let x_5223 : vec4<f32> = u_xlat12;
            let x_5224 : vec2<f32> = vec2<f32>(x_5223.x, x_5223.y);
            let x_5226 : f32 = u_xlat11.z;
            txVec88 = vec3<f32>(x_5224.x, x_5224.y, x_5226);
            let x_5233 : vec3<f32> = txVec88;
            let x_5235 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5233.xy, x_5233.z);
            u_xlat88 = x_5235;
            let x_5237 : f32 = u_xlat13.w;
            let x_5238 : f32 = u_xlat88;
            let x_5240 : f32 = u_xlat87;
            u_xlat86 = ((x_5237 * x_5238) + x_5240);
          }
        }
      } else {
        let x_5244 : vec4<f32> = u_xlat11;
        let x_5245 : vec2<f32> = vec2<f32>(x_5244.x, x_5244.y);
        let x_5247 : f32 = u_xlat11.z;
        txVec89 = vec3<f32>(x_5245.x, x_5245.y, x_5247);
        let x_5254 : vec3<f32> = txVec89;
        let x_5256 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5254.xy, x_5254.z);
        u_xlat86 = x_5256;
      }
      let x_5257 : i32 = u_xlati82;
      let x_5259 : f32 = x_264.x_AdditionalShadowParams[x_5257].x;
      u_xlat87 = (1.0f + -(x_5259));
      let x_5262 : f32 = u_xlat86;
      let x_5263 : i32 = u_xlati82;
      let x_5265 : f32 = x_264.x_AdditionalShadowParams[x_5263].x;
      let x_5267 : f32 = u_xlat87;
      u_xlat86 = ((x_5262 * x_5265) + x_5267);
      let x_5270 : f32 = u_xlat11.z;
      u_xlatb87 = (0.0f >= x_5270);
      let x_5274 : f32 = u_xlat11.z;
      u_xlatb88 = (x_5274 >= 1.0f);
      let x_5276 : bool = u_xlatb87;
      let x_5277 : bool = u_xlatb88;
      u_xlatb87 = (x_5276 | x_5277);
      let x_5279 : bool = u_xlatb87;
      let x_5280 : f32 = u_xlat86;
      u_xlat86 = select(x_5280, 1.0f, x_5279);
    } else {
      u_xlat86 = 1.0f;
    }
    let x_5283 : f32 = u_xlat86;
    u_xlat87 = (-(x_5283) + 1.0f);
    let x_5286 : f32 = u_xlat79;
    let x_5287 : f32 = u_xlat87;
    let x_5289 : f32 = u_xlat86;
    u_xlat86 = ((x_5286 * x_5287) + x_5289);
    let x_5292 : i32 = u_xlati82;
    u_xlati87 = (1i << bitcast<u32>((x_5292 & 31i)));
    let x_5296 : i32 = u_xlati87;
    let x_5299 : f32 = x_3440.x_AdditionalLightsCookieEnableBits;
    u_xlati87 = bitcast<i32>((bitcast<u32>(x_5296) & bitcast<u32>(x_5299)));
    let x_5303 : i32 = u_xlati87;
    if ((x_5303 != 0i)) {
      let x_5307 : i32 = u_xlati82;
      let x_5309 : f32 = x_3440.x_AdditionalLightsLightTypes[x_5307].el;
      u_xlati87 = i32(x_5309);
      let x_5312 : i32 = u_xlati87;
      u_xlati88 = select(1i, 0i, (x_5312 != 0i));
      let x_5316 : i32 = u_xlati82;
      u_xlati11 = (x_5316 << bitcast<u32>(2i));
      let x_5318 : i32 = u_xlati88;
      if ((x_5318 != 0i)) {
        let x_5323 : vec3<f32> = vs_INTERP8;
        let x_5325 : i32 = u_xlati11;
        let x_5328 : i32 = u_xlati11;
        let x_5332 : vec4<f32> = x_3440.x_AdditionalLightsWorldToLights[((x_5325 + 1i) / 4i)][((x_5328 + 1i) % 4i)];
        u_xlat37 = (vec3<f32>(x_5323.y, x_5323.y, x_5323.y) * vec3<f32>(x_5332.x, x_5332.y, x_5332.w));
        let x_5335 : i32 = u_xlati11;
        let x_5337 : i32 = u_xlati11;
        let x_5340 : vec4<f32> = x_3440.x_AdditionalLightsWorldToLights[(x_5335 / 4i)][(x_5337 % 4i)];
        let x_5342 : vec3<f32> = vs_INTERP8;
        let x_5345 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_5340.x, x_5340.y, x_5340.w) * vec3<f32>(x_5342.x, x_5342.x, x_5342.x)) + x_5345);
        let x_5347 : i32 = u_xlati11;
        let x_5350 : i32 = u_xlati11;
        let x_5354 : vec4<f32> = x_3440.x_AdditionalLightsWorldToLights[((x_5347 + 2i) / 4i)][((x_5350 + 2i) % 4i)];
        let x_5356 : vec3<f32> = vs_INTERP8;
        let x_5359 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_5354.x, x_5354.y, x_5354.w) * vec3<f32>(x_5356.z, x_5356.z, x_5356.z)) + x_5359);
        let x_5361 : vec3<f32> = u_xlat37;
        let x_5362 : i32 = u_xlati11;
        let x_5365 : i32 = u_xlati11;
        let x_5369 : vec4<f32> = x_3440.x_AdditionalLightsWorldToLights[((x_5362 + 3i) / 4i)][((x_5365 + 3i) % 4i)];
        u_xlat37 = (x_5361 + vec3<f32>(x_5369.x, x_5369.y, x_5369.w));
        let x_5372 : vec3<f32> = u_xlat37;
        let x_5374 : vec3<f32> = u_xlat37;
        let x_5376 : vec2<f32> = (vec2<f32>(x_5372.x, x_5372.y) / vec2<f32>(x_5374.z, x_5374.z));
        let x_5377 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_5376.x, x_5376.y, x_5377.z);
        let x_5379 : vec3<f32> = u_xlat37;
        let x_5382 : vec2<f32> = ((vec2<f32>(x_5379.x, x_5379.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_5383 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_5382.x, x_5382.y, x_5383.z);
        let x_5385 : vec3<f32> = u_xlat37;
        let x_5389 : vec2<f32> = clamp(vec2<f32>(x_5385.x, x_5385.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_5390 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_5389.x, x_5389.y, x_5390.z);
        let x_5392 : i32 = u_xlati82;
        let x_5394 : vec4<f32> = x_3440.x_AdditionalLightsCookieAtlasUVRects[x_5392];
        let x_5396 : vec3<f32> = u_xlat37;
        let x_5399 : i32 = u_xlati82;
        let x_5401 : vec4<f32> = x_3440.x_AdditionalLightsCookieAtlasUVRects[x_5399];
        let x_5403 : vec2<f32> = ((vec2<f32>(x_5394.x, x_5394.y) * vec2<f32>(x_5396.x, x_5396.y)) + vec2<f32>(x_5401.z, x_5401.w));
        let x_5404 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_5403.x, x_5403.y, x_5404.z);
      } else {
        let x_5407 : i32 = u_xlati87;
        u_xlatb87 = (x_5407 == 1i);
        let x_5409 : bool = u_xlatb87;
        u_xlati87 = select(0i, 1i, x_5409);
        let x_5411 : i32 = u_xlati87;
        if ((x_5411 != 0i)) {
          let x_5415 : vec3<f32> = vs_INTERP8;
          let x_5417 : i32 = u_xlati11;
          let x_5420 : i32 = u_xlati11;
          let x_5424 : vec4<f32> = x_3440.x_AdditionalLightsWorldToLights[((x_5417 + 1i) / 4i)][((x_5420 + 1i) % 4i)];
          let x_5426 : vec2<f32> = (vec2<f32>(x_5415.y, x_5415.y) * vec2<f32>(x_5424.x, x_5424.y));
          let x_5427 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5426.x, x_5426.y, x_5427.z, x_5427.w);
          let x_5429 : i32 = u_xlati11;
          let x_5431 : i32 = u_xlati11;
          let x_5434 : vec4<f32> = x_3440.x_AdditionalLightsWorldToLights[(x_5429 / 4i)][(x_5431 % 4i)];
          let x_5436 : vec3<f32> = vs_INTERP8;
          let x_5439 : vec4<f32> = u_xlat12;
          let x_5441 : vec2<f32> = ((vec2<f32>(x_5434.x, x_5434.y) * vec2<f32>(x_5436.x, x_5436.x)) + vec2<f32>(x_5439.x, x_5439.y));
          let x_5442 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5441.x, x_5441.y, x_5442.z, x_5442.w);
          let x_5444 : i32 = u_xlati11;
          let x_5447 : i32 = u_xlati11;
          let x_5451 : vec4<f32> = x_3440.x_AdditionalLightsWorldToLights[((x_5444 + 2i) / 4i)][((x_5447 + 2i) % 4i)];
          let x_5453 : vec3<f32> = vs_INTERP8;
          let x_5456 : vec4<f32> = u_xlat12;
          let x_5458 : vec2<f32> = ((vec2<f32>(x_5451.x, x_5451.y) * vec2<f32>(x_5453.z, x_5453.z)) + vec2<f32>(x_5456.x, x_5456.y));
          let x_5459 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5458.x, x_5458.y, x_5459.z, x_5459.w);
          let x_5461 : vec4<f32> = u_xlat12;
          let x_5463 : i32 = u_xlati11;
          let x_5466 : i32 = u_xlati11;
          let x_5470 : vec4<f32> = x_3440.x_AdditionalLightsWorldToLights[((x_5463 + 3i) / 4i)][((x_5466 + 3i) % 4i)];
          let x_5472 : vec2<f32> = (vec2<f32>(x_5461.x, x_5461.y) + vec2<f32>(x_5470.x, x_5470.y));
          let x_5473 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5472.x, x_5472.y, x_5473.z, x_5473.w);
          let x_5475 : vec4<f32> = u_xlat12;
          let x_5478 : vec2<f32> = ((vec2<f32>(x_5475.x, x_5475.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_5479 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5478.x, x_5478.y, x_5479.z, x_5479.w);
          let x_5481 : vec4<f32> = u_xlat12;
          let x_5483 : vec2<f32> = fract(vec2<f32>(x_5481.x, x_5481.y));
          let x_5484 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5483.x, x_5483.y, x_5484.z, x_5484.w);
          let x_5486 : i32 = u_xlati82;
          let x_5488 : vec4<f32> = x_3440.x_AdditionalLightsCookieAtlasUVRects[x_5486];
          let x_5490 : vec4<f32> = u_xlat12;
          let x_5493 : i32 = u_xlati82;
          let x_5495 : vec4<f32> = x_3440.x_AdditionalLightsCookieAtlasUVRects[x_5493];
          let x_5497 : vec2<f32> = ((vec2<f32>(x_5488.x, x_5488.y) * vec2<f32>(x_5490.x, x_5490.y)) + vec2<f32>(x_5495.z, x_5495.w));
          let x_5498 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_5497.x, x_5497.y, x_5498.z);
        } else {
          let x_5501 : vec3<f32> = vs_INTERP8;
          let x_5503 : i32 = u_xlati11;
          let x_5506 : i32 = u_xlati11;
          let x_5510 : vec4<f32> = x_3440.x_AdditionalLightsWorldToLights[((x_5503 + 1i) / 4i)][((x_5506 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_5501.y, x_5501.y, x_5501.y, x_5501.y) * x_5510);
          let x_5512 : i32 = u_xlati11;
          let x_5514 : i32 = u_xlati11;
          let x_5517 : vec4<f32> = x_3440.x_AdditionalLightsWorldToLights[(x_5512 / 4i)][(x_5514 % 4i)];
          let x_5518 : vec3<f32> = vs_INTERP8;
          let x_5521 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_5517 * vec4<f32>(x_5518.x, x_5518.x, x_5518.x, x_5518.x)) + x_5521);
          let x_5523 : i32 = u_xlati11;
          let x_5526 : i32 = u_xlati11;
          let x_5530 : vec4<f32> = x_3440.x_AdditionalLightsWorldToLights[((x_5523 + 2i) / 4i)][((x_5526 + 2i) % 4i)];
          let x_5531 : vec3<f32> = vs_INTERP8;
          let x_5534 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_5530 * vec4<f32>(x_5531.z, x_5531.z, x_5531.z, x_5531.z)) + x_5534);
          let x_5536 : vec4<f32> = u_xlat12;
          let x_5537 : i32 = u_xlati11;
          let x_5540 : i32 = u_xlati11;
          let x_5544 : vec4<f32> = x_3440.x_AdditionalLightsWorldToLights[((x_5537 + 3i) / 4i)][((x_5540 + 3i) % 4i)];
          u_xlat12 = (x_5536 + x_5544);
          let x_5546 : vec4<f32> = u_xlat12;
          let x_5548 : vec4<f32> = u_xlat12;
          let x_5550 : vec3<f32> = (vec3<f32>(x_5546.x, x_5546.y, x_5546.z) / vec3<f32>(x_5548.w, x_5548.w, x_5548.w));
          let x_5551 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5550.x, x_5550.y, x_5550.z, x_5551.w);
          let x_5553 : vec4<f32> = u_xlat12;
          let x_5555 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(vec3<f32>(x_5553.x, x_5553.y, x_5553.z), vec3<f32>(x_5555.x, x_5555.y, x_5555.z));
          let x_5558 : f32 = u_xlat87;
          u_xlat87 = inverseSqrt(x_5558);
          let x_5560 : f32 = u_xlat87;
          let x_5562 : vec4<f32> = u_xlat12;
          let x_5564 : vec3<f32> = (vec3<f32>(x_5560, x_5560, x_5560) * vec3<f32>(x_5562.x, x_5562.y, x_5562.z));
          let x_5565 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5564.x, x_5564.y, x_5564.z, x_5565.w);
          let x_5567 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(abs(vec3<f32>(x_5567.x, x_5567.y, x_5567.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_5572 : f32 = u_xlat87;
          u_xlat87 = max(x_5572, 0.00000099999999747524f);
          let x_5575 : f32 = u_xlat87;
          u_xlat87 = (1.0f / x_5575);
          let x_5577 : f32 = u_xlat87;
          let x_5579 : vec4<f32> = u_xlat12;
          let x_5581 : vec3<f32> = (vec3<f32>(x_5577, x_5577, x_5577) * vec3<f32>(x_5579.z, x_5579.x, x_5579.y));
          let x_5582 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_5581.x, x_5581.y, x_5581.z, x_5582.w);
          let x_5585 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_5585);
          let x_5589 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_5589, 0.0f, 1.0f);
          let x_5592 : vec4<f32> = u_xlat13;
          let x_5594 : vec4<bool> = (vec4<f32>(x_5592.y, x_5592.y, x_5592.y, x_5592.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_5595 : vec2<bool> = vec2<bool>(x_5594.x, x_5594.w);
          let x_5596 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_5595.x, x_5596.y, x_5596.z, x_5595.y);
          let x_5599 : bool = u_xlatb11.x;
          if (x_5599) {
            let x_5604 : f32 = u_xlat13.x;
            x_5600 = x_5604;
          } else {
            let x_5607 : f32 = u_xlat13.x;
            x_5600 = -(x_5607);
          }
          let x_5609 : f32 = x_5600;
          u_xlat11.x = x_5609;
          let x_5612 : bool = u_xlatb11.w;
          if (x_5612) {
            let x_5617 : f32 = u_xlat13.x;
            x_5613 = x_5617;
          } else {
            let x_5620 : f32 = u_xlat13.x;
            x_5613 = -(x_5620);
          }
          let x_5622 : f32 = x_5613;
          u_xlat11.w = x_5622;
          let x_5624 : vec4<f32> = u_xlat12;
          let x_5626 : f32 = u_xlat87;
          let x_5629 : vec4<f32> = u_xlat11;
          let x_5631 : vec2<f32> = ((vec2<f32>(x_5624.x, x_5624.y) * vec2<f32>(x_5626, x_5626)) + vec2<f32>(x_5629.x, x_5629.w));
          let x_5632 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_5631.x, x_5632.y, x_5632.z, x_5631.y);
          let x_5634 : vec4<f32> = u_xlat11;
          let x_5637 : vec2<f32> = ((vec2<f32>(x_5634.x, x_5634.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_5638 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_5637.x, x_5638.y, x_5638.z, x_5637.y);
          let x_5640 : vec4<f32> = u_xlat11;
          let x_5644 : vec2<f32> = clamp(vec2<f32>(x_5640.x, x_5640.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_5645 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_5644.x, x_5645.y, x_5645.z, x_5644.y);
          let x_5647 : i32 = u_xlati82;
          let x_5649 : vec4<f32> = x_3440.x_AdditionalLightsCookieAtlasUVRects[x_5647];
          let x_5651 : vec4<f32> = u_xlat11;
          let x_5654 : i32 = u_xlati82;
          let x_5656 : vec4<f32> = x_3440.x_AdditionalLightsCookieAtlasUVRects[x_5654];
          let x_5658 : vec2<f32> = ((vec2<f32>(x_5649.x, x_5649.y) * vec2<f32>(x_5651.x, x_5651.w)) + vec2<f32>(x_5656.z, x_5656.w));
          let x_5659 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_5658.x, x_5658.y, x_5659.z);
        }
      }
      let x_5666 : vec3<f32> = u_xlat37;
      let x_5668 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_5666.x, x_5666.y), 0.0f);
      u_xlat11 = x_5668;
      let x_5670 : bool = u_xlatb33.y;
      if (x_5670) {
        let x_5675 : f32 = u_xlat11.w;
        x_5671 = x_5675;
      } else {
        let x_5678 : f32 = u_xlat11.x;
        x_5671 = x_5678;
      }
      let x_5679 : f32 = x_5671;
      u_xlat87 = x_5679;
      let x_5681 : bool = u_xlatb33.x;
      if (x_5681) {
        let x_5685 : vec4<f32> = u_xlat11;
        x_5682 = vec3<f32>(x_5685.x, x_5685.y, x_5685.z);
      } else {
        let x_5688 : f32 = u_xlat87;
        x_5682 = vec3<f32>(x_5688, x_5688, x_5688);
      }
      let x_5690 : vec3<f32> = x_5682;
      let x_5691 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_5690.x, x_5690.y, x_5690.z, x_5691.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_5697 : vec4<f32> = u_xlat11;
    let x_5699 : i32 = u_xlati82;
    let x_5701 : vec4<f32> = x_3872.x_AdditionalLightsColor[x_5699];
    let x_5703 : vec3<f32> = (vec3<f32>(x_5697.x, x_5697.y, x_5697.z) * vec3<f32>(x_5701.x, x_5701.y, x_5701.z));
    let x_5704 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_5703.x, x_5703.y, x_5703.z, x_5704.w);
    let x_5706 : f32 = u_xlat83;
    let x_5707 : f32 = u_xlat86;
    u_xlat82 = (x_5706 * x_5707);
    let x_5709 : vec4<f32> = u_xlat3;
    let x_5711 : vec4<f32> = u_xlat10;
    u_xlat83 = dot(vec3<f32>(x_5709.x, x_5709.y, x_5709.z), vec3<f32>(x_5711.x, x_5711.y, x_5711.z));
    let x_5714 : f32 = u_xlat83;
    u_xlat83 = clamp(x_5714, 0.0f, 1.0f);
    let x_5716 : f32 = u_xlat82;
    let x_5717 : f32 = u_xlat83;
    u_xlat82 = (x_5716 * x_5717);
    let x_5719 : f32 = u_xlat82;
    let x_5721 : vec4<f32> = u_xlat11;
    let x_5723 : vec3<f32> = (vec3<f32>(x_5719, x_5719, x_5719) * vec3<f32>(x_5721.x, x_5721.y, x_5721.z));
    let x_5724 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_5723.x, x_5723.y, x_5723.z, x_5724.w);
    let x_5726 : vec4<f32> = u_xlat9;
    let x_5728 : f32 = u_xlat85;
    let x_5731 : vec3<f32> = u_xlat2;
    let x_5732 : vec3<f32> = ((vec3<f32>(x_5726.x, x_5726.y, x_5726.z) * vec3<f32>(x_5728, x_5728, x_5728)) + x_5731);
    let x_5733 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_5732.x, x_5732.y, x_5732.z, x_5733.w);
    let x_5735 : vec4<f32> = u_xlat9;
    let x_5737 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(vec3<f32>(x_5735.x, x_5735.y, x_5735.z), vec3<f32>(x_5737.x, x_5737.y, x_5737.z));
    let x_5740 : f32 = u_xlat82;
    u_xlat82 = max(x_5740, 1.17549435e-38f);
    let x_5742 : f32 = u_xlat82;
    u_xlat82 = inverseSqrt(x_5742);
    let x_5744 : f32 = u_xlat82;
    let x_5746 : vec4<f32> = u_xlat9;
    let x_5748 : vec3<f32> = (vec3<f32>(x_5744, x_5744, x_5744) * vec3<f32>(x_5746.x, x_5746.y, x_5746.z));
    let x_5749 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_5748.x, x_5748.y, x_5748.z, x_5749.w);
    let x_5751 : vec4<f32> = u_xlat3;
    let x_5753 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(vec3<f32>(x_5751.x, x_5751.y, x_5751.z), vec3<f32>(x_5753.x, x_5753.y, x_5753.z));
    let x_5756 : f32 = u_xlat82;
    u_xlat82 = clamp(x_5756, 0.0f, 1.0f);
    let x_5758 : vec4<f32> = u_xlat10;
    let x_5760 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_5758.x, x_5758.y, x_5758.z), vec3<f32>(x_5760.x, x_5760.y, x_5760.z));
    let x_5763 : f32 = u_xlat83;
    u_xlat83 = clamp(x_5763, 0.0f, 1.0f);
    let x_5765 : f32 = u_xlat82;
    let x_5766 : f32 = u_xlat82;
    u_xlat82 = (x_5765 * x_5766);
    let x_5768 : f32 = u_xlat82;
    let x_5770 : f32 = u_xlat53.x;
    u_xlat82 = ((x_5768 * x_5770) + 1.00001001358032226562f);
    let x_5773 : f32 = u_xlat83;
    let x_5774 : f32 = u_xlat83;
    u_xlat83 = (x_5773 * x_5774);
    let x_5776 : f32 = u_xlat82;
    let x_5777 : f32 = u_xlat82;
    u_xlat82 = (x_5776 * x_5777);
    let x_5779 : f32 = u_xlat83;
    u_xlat83 = max(x_5779, 0.10000000149011611938f);
    let x_5781 : f32 = u_xlat82;
    let x_5782 : f32 = u_xlat83;
    u_xlat82 = (x_5781 * x_5782);
    let x_5784 : f32 = u_xlat84;
    let x_5785 : f32 = u_xlat82;
    u_xlat82 = (x_5784 * x_5785);
    let x_5787 : f32 = u_xlat81;
    let x_5788 : f32 = u_xlat82;
    u_xlat82 = (x_5787 / x_5788);
    let x_5790 : f32 = u_xlat82;
    let x_5793 : vec3<f32> = u_xlat4;
    let x_5794 : vec3<f32> = ((vec3<f32>(x_5790, x_5790, x_5790) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_5793);
    let x_5795 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_5794.x, x_5794.y, x_5794.z, x_5795.w);
    let x_5797 : vec4<f32> = u_xlat9;
    let x_5799 : vec4<f32> = u_xlat11;
    let x_5802 : vec4<f32> = u_xlat8;
    let x_5804 : vec3<f32> = ((vec3<f32>(x_5797.x, x_5797.y, x_5797.z) * vec3<f32>(x_5799.x, x_5799.y, x_5799.z)) + vec3<f32>(x_5802.x, x_5802.y, x_5802.z));
    let x_5805 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_5804.x, x_5804.y, x_5804.z, x_5805.w);

    continuing {
      let x_5807 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_5807 + bitcast<u32>(1i));
    }
  }
  let x_5809 : vec4<f32> = u_xlat5;
  let x_5811 : vec4<f32> = u_xlat7;
  let x_5814 : vec4<f32> = u_xlat6;
  u_xlat2 = ((vec3<f32>(x_5809.x, x_5809.y, x_5809.z) * vec3<f32>(x_5811.x, x_5811.x, x_5811.x)) + vec3<f32>(x_5814.x, x_5814.y, x_5814.z));
  let x_5817 : vec4<f32> = u_xlat8;
  let x_5819 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_5817.x, x_5817.y, x_5817.z) + x_5819);
  let x_5823 : vec4<f32> = vs_INTERP6;
  let x_5825 : vec3<f32> = u_xlat0;
  let x_5827 : vec3<f32> = u_xlat2;
  let x_5828 : vec3<f32> = ((vec3<f32>(x_5823.w, x_5823.w, x_5823.w) * x_5825) + x_5827);
  let x_5829 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_5828.x, x_5828.y, x_5828.z, x_5829.w);
  let x_5831 : bool = u_xlatb27;
  if (x_5831) {
    let x_5836 : f32 = u_xlat1.x;
    x_5832 = x_5836;
  } else {
    x_5832 = 1.0f;
  }
  let x_5838 : f32 = x_5832;
  SV_Target0.w = x_5838;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(4) vs_INTERP9_param : vec3<f32>, @location(3) vs_INTERP8_param : vec3<f32>, @location(1) vs_INTERP5_param : vec4<f32>, @location(2) vs_INTERP6_param : vec4<f32>, @location(0) vs_INTERP4_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP9 = vs_INTERP9_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP6 = vs_INTERP6_param;
  vs_INTERP4 = vs_INTERP4_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


