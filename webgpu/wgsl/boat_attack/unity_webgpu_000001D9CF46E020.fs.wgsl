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
  x_AdditionalLightsWorldToShadow : Arr_3,
}

alias Arr_5 = array<vec4<f32>, 32u>;

alias Arr_6 = array<vec4<f32>, 32u>;

alias Arr_7 = array<vec4<f32>, 32u>;

alias Arr_8 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_9 = array<strided_arr, 32u>;

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
  x_AdditionalLightsLayerMasks : Arr_9,
}

var<private> u_xlat0 : vec3<f32>;

var<private> vs_INTERP9 : vec3<f32>;

var<private> u_xlatb36 : bool;

@group(1) @binding(0) var<uniform> x_75 : PGlobals;

var<private> u_xlat1 : vec3<f32>;

var<private> vs_INTERP8 : vec3<f32>;

var<private> u_xlat37 : f32;

var<private> u_xlat2 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_148 : UnityPerDraw;

var<private> u_xlat36 : f32;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(3) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(7) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP5 : vec4<f32>;

var<private> u_xlat4 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_204 : UnityPerMaterial;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(4) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(8) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat17 : vec3<f32>;

var<private> vs_INTERP6 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_264 : LightShadows;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlatb6 : vec4<bool>;

var<private> u_xlatu36 : u32;

var<private> u_xlati36 : i32;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb37 : bool;

var<private> u_xlatb38 : bool;

var<private> u_xlat38 : f32;

var<private> u_xlatu1 : vec3<u32>;

var<private> u_xlatu25 : u32;

var<private> u_xlatu3 : u32;

var<private> u_xlati25 : i32;

var<private> u_xlati13 : i32;

var<private> u_xlatu13 : u32;

var<private> u_xlati1 : i32;

var<private> u_xlat13 : f32;

var<private> u_xlatb25 : vec2<bool>;

var<private> u_xlat25 : vec2<f32>;

var<private> u_xlatb13 : bool;

var<private> vs_INTERP4 : vec4<f32>;

var<private> u_xlat39 : f32;

var<private> u_xlat40 : f32;

var<private> u_xlat18 : vec3<f32>;

var<private> u_xlat30 : f32;

var<private> u_xlat19 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu6 : u32;

var<private> u_xlati43 : i32;

var<private> u_xlati6 : i32;

@group(1) @binding(1) var<uniform> x_1331 : AdditionalLights;

var<private> u_xlat43 : f32;

var<private> u_xlat44 : f32;

var<private> u_xlat45 : f32;

var<private> u_xlati45 : i32;

var<private> u_xlatb10 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat22 : vec3<f32>;

var<private> u_xlat11 : f32;

var<private> u_xlat34 : f32;

var<private> u_xlat10 : vec4<f32>;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb22 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu39 : u32;

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
  var x_527 : f32;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var x_659 : f32;
  var x_732 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1470 : f32;
  var x_1481 : f32;
  var txVec1 : vec3<f32>;
  var x_1762 : f32;
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
  u_xlatb36 = (x_80 == 0.0f);
  let x_85 : vec3<f32> = vs_INTERP8;
  let x_90 : vec3<f32> = x_75.x_WorldSpaceCameraPos;
  u_xlat1 = (-(x_85) + x_90);
  let x_93 : vec3<f32> = u_xlat1;
  let x_94 : vec3<f32> = u_xlat1;
  u_xlat37 = dot(x_93, x_94);
  let x_96 : f32 = u_xlat37;
  u_xlat37 = inverseSqrt(x_96);
  let x_98 : f32 = u_xlat37;
  let x_100 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_98, x_98, x_98) * x_100);
  let x_103 : bool = u_xlatb36;
  if (x_103) {
    let x_109 : f32 = u_xlat1.x;
    x_105 = x_109;
  } else {
    let x_115 : f32 = x_75.unity_MatrixV[0i].z;
    x_105 = x_115;
  }
  let x_116 : f32 = x_105;
  u_xlat2.x = x_116;
  let x_118 : bool = u_xlatb36;
  if (x_118) {
    let x_124 : f32 = u_xlat1.y;
    x_119 = x_124;
  } else {
    let x_128 : f32 = x_75.unity_MatrixV[1i].z;
    x_119 = x_128;
  }
  let x_129 : f32 = x_119;
  u_xlat2.y = x_129;
  let x_131 : bool = u_xlatb36;
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
  u_xlat36 = dot(x_171, x_172);
  let x_174 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_174);
  let x_176 : f32 = u_xlat36;
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
  u_xlat36 = dot(x_230, x_231);
  let x_233 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_233);
  let x_236 : f32 = u_xlat36;
  let x_238 : vec4<f32> = u_xlat6;
  u_xlat17 = (vec3<f32>(x_236, x_236, x_236) * vec3<f32>(x_238.x, x_238.y, x_238.z));
  let x_244 : f32 = vs_INTERP6.y;
  u_xlat36 = (x_244 * 200.0f);
  let x_247 : f32 = u_xlat36;
  u_xlat36 = min(x_247, 1.0f);
  let x_249 : f32 = u_xlat36;
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
  u_xlat9 = (x_292 + -(vec3<f32>(x_295.x, x_295.y, x_295.z)));
  let x_299 : vec4<f32> = u_xlat6;
  let x_301 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_299.x, x_299.y, x_299.z), vec3<f32>(x_301.x, x_301.y, x_301.z));
  let x_305 : vec4<f32> = u_xlat7;
  let x_307 : vec4<f32> = u_xlat7;
  u_xlat6.y = dot(vec3<f32>(x_305.x, x_305.y, x_305.z), vec3<f32>(x_307.x, x_307.y, x_307.z));
  let x_311 : vec4<f32> = u_xlat8;
  let x_313 : vec4<f32> = u_xlat8;
  u_xlat6.z = dot(vec3<f32>(x_311.x, x_311.y, x_311.z), vec3<f32>(x_313.x, x_313.y, x_313.z));
  let x_317 : vec3<f32> = u_xlat9;
  let x_318 : vec3<f32> = u_xlat9;
  u_xlat6.w = dot(x_317, x_318);
  let x_324 : vec4<f32> = u_xlat6;
  let x_326 : vec4<f32> = x_264.x_CascadeShadowSplitSphereRadii;
  u_xlatb6 = (x_324 < x_326);
  let x_329 : bool = u_xlatb6.x;
  u_xlat7.x = select(0.0f, 1.0f, x_329);
  let x_333 : bool = u_xlatb6.y;
  u_xlat7.y = select(0.0f, 1.0f, x_333);
  let x_337 : bool = u_xlatb6.z;
  u_xlat7.z = select(0.0f, 1.0f, x_337);
  let x_341 : bool = u_xlatb6.w;
  u_xlat7.w = select(0.0f, 1.0f, x_341);
  let x_345 : bool = u_xlatb6.x;
  u_xlat6.x = select(-0.0f, -1.0f, x_345);
  let x_350 : bool = u_xlatb6.y;
  u_xlat6.y = select(-0.0f, -1.0f, x_350);
  let x_354 : bool = u_xlatb6.z;
  u_xlat6.z = select(-0.0f, -1.0f, x_354);
  let x_357 : vec4<f32> = u_xlat6;
  let x_359 : vec4<f32> = u_xlat7;
  let x_361 : vec3<f32> = (vec3<f32>(x_357.x, x_357.y, x_357.z) + vec3<f32>(x_359.y, x_359.z, x_359.w));
  let x_362 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_361.x, x_361.y, x_361.z, x_362.w);
  let x_364 : vec4<f32> = u_xlat6;
  let x_367 : vec3<f32> = max(vec3<f32>(x_364.x, x_364.y, x_364.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_368 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_368.x, x_367.x, x_367.y, x_367.z);
  let x_370 : vec4<f32> = u_xlat7;
  u_xlat36 = dot(x_370, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_375 : f32 = u_xlat36;
  u_xlat36 = (-(x_375) + 4.0f);
  let x_380 : f32 = u_xlat36;
  u_xlatu36 = u32(x_380);
  let x_384 : u32 = u_xlatu36;
  u_xlati36 = (bitcast<i32>(x_384) << bitcast<u32>(2i));
  let x_387 : vec3<f32> = vs_INTERP8;
  let x_389 : i32 = u_xlati36;
  let x_392 : i32 = u_xlati36;
  let x_396 : vec4<f32> = x_264.x_MainLightWorldToShadow[((x_389 + 1i) / 4i)][((x_392 + 1i) % 4i)];
  let x_398 : vec3<f32> = (vec3<f32>(x_387.y, x_387.y, x_387.y) * vec3<f32>(x_396.x, x_396.y, x_396.z));
  let x_399 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_398.x, x_398.y, x_398.z, x_399.w);
  let x_401 : i32 = u_xlati36;
  let x_403 : i32 = u_xlati36;
  let x_406 : vec4<f32> = x_264.x_MainLightWorldToShadow[(x_401 / 4i)][(x_403 % 4i)];
  let x_408 : vec3<f32> = vs_INTERP8;
  let x_411 : vec4<f32> = u_xlat6;
  let x_413 : vec3<f32> = ((vec3<f32>(x_406.x, x_406.y, x_406.z) * vec3<f32>(x_408.x, x_408.x, x_408.x)) + vec3<f32>(x_411.x, x_411.y, x_411.z));
  let x_414 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_413.x, x_413.y, x_413.z, x_414.w);
  let x_416 : i32 = u_xlati36;
  let x_419 : i32 = u_xlati36;
  let x_423 : vec4<f32> = x_264.x_MainLightWorldToShadow[((x_416 + 2i) / 4i)][((x_419 + 2i) % 4i)];
  let x_425 : vec3<f32> = vs_INTERP8;
  let x_428 : vec4<f32> = u_xlat6;
  let x_430 : vec3<f32> = ((vec3<f32>(x_423.x, x_423.y, x_423.z) * vec3<f32>(x_425.z, x_425.z, x_425.z)) + vec3<f32>(x_428.x, x_428.y, x_428.z));
  let x_431 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_430.x, x_430.y, x_430.z, x_431.w);
  let x_433 : vec4<f32> = u_xlat6;
  let x_435 : i32 = u_xlati36;
  let x_438 : i32 = u_xlati36;
  let x_442 : vec4<f32> = x_264.x_MainLightWorldToShadow[((x_435 + 3i) / 4i)][((x_438 + 3i) % 4i)];
  let x_444 : vec3<f32> = (vec3<f32>(x_433.x, x_433.y, x_433.z) + vec3<f32>(x_442.x, x_442.y, x_442.z));
  let x_445 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_444.x, x_444.y, x_444.z, x_445.w);
  let x_449 : vec4<f32> = u_xlat6;
  let x_450 : vec2<f32> = vec2<f32>(x_449.x, x_449.y);
  let x_452 : f32 = u_xlat6.z;
  txVec0 = vec3<f32>(x_450.x, x_450.y, x_452);
  let x_464 : vec3<f32> = txVec0;
  let x_466 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_464.xy, x_464.z);
  u_xlat36 = x_466;
  let x_468 : f32 = x_264.x_MainLightShadowParams.x;
  u_xlat37 = (-(x_468) + 1.0f);
  let x_471 : f32 = u_xlat36;
  let x_473 : f32 = x_264.x_MainLightShadowParams.x;
  let x_475 : f32 = u_xlat37;
  u_xlat36 = ((x_471 * x_473) + x_475);
  let x_479 : f32 = u_xlat6.z;
  u_xlatb37 = (0.0f >= x_479);
  let x_483 : f32 = u_xlat6.z;
  u_xlatb38 = (x_483 >= 1.0f);
  let x_485 : bool = u_xlatb37;
  let x_486 : bool = u_xlatb38;
  u_xlatb37 = (x_485 | x_486);
  let x_488 : bool = u_xlatb37;
  let x_489 : f32 = u_xlat36;
  u_xlat36 = select(x_489, 1.0f, x_488);
  let x_491 : vec3<f32> = u_xlat0;
  let x_493 : vec4<f32> = x_75.x_MainLightPosition;
  u_xlat0.x = dot(x_491, -(vec3<f32>(x_493.x, x_493.y, x_493.z)));
  let x_499 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_499, 0.0f, 1.0f);
  let x_502 : f32 = u_xlat36;
  let x_505 : vec4<f32> = x_75.x_MainLightColor;
  let x_507 : vec3<f32> = (vec3<f32>(x_502, x_502, x_502) * vec3<f32>(x_505.x, x_505.y, x_505.z));
  let x_508 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_507.x, x_507.y, x_507.z, x_508.w);
  let x_510 : vec3<f32> = u_xlat0;
  let x_512 : vec4<f32> = u_xlat6;
  u_xlat0 = (vec3<f32>(x_510.x, x_510.x, x_510.x) * vec3<f32>(x_512.x, x_512.y, x_512.z));
  let x_515 : vec3<f32> = u_xlat0;
  let x_516 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_515 * vec3<f32>(x_516.x, x_516.y, x_516.z));
  let x_520 : f32 = x_148.unity_LODFade.x;
  u_xlatb37 = (x_520 < 0.0f);
  let x_524 : f32 = x_148.unity_LODFade.x;
  u_xlat38 = (x_524 + 1.0f);
  let x_526 : bool = u_xlatb37;
  if (x_526) {
    let x_530 : f32 = u_xlat38;
    x_527 = x_530;
  } else {
    let x_533 : f32 = x_148.unity_LODFade.x;
    x_527 = x_533;
  }
  let x_534 : f32 = x_527;
  u_xlat37 = x_534;
  let x_536 : f32 = u_xlat37;
  u_xlatb38 = (0.5f >= x_536);
  let x_538 : vec3<f32> = u_xlat1;
  let x_542 : vec4<f32> = x_75.x_ScreenParams;
  u_xlat1 = (abs(x_538) * vec3<f32>(x_542.x, x_542.y, x_542.x));
  let x_548 : vec3<f32> = u_xlat1;
  u_xlatu1 = vec3<u32>(x_548);
  let x_552 : u32 = u_xlatu1.z;
  u_xlatu25 = (x_552 * 1025u);
  let x_556 : u32 = u_xlatu25;
  u_xlatu3 = (x_556 >> 6u);
  let x_560 : u32 = u_xlatu25;
  let x_561 : u32 = u_xlatu3;
  u_xlati25 = bitcast<i32>((x_560 ^ x_561));
  let x_564 : i32 = u_xlati25;
  u_xlatu25 = (bitcast<u32>(x_564) * 9u);
  let x_568 : u32 = u_xlatu25;
  u_xlatu3 = (x_568 >> 11u);
  let x_571 : u32 = u_xlatu25;
  let x_572 : u32 = u_xlatu3;
  u_xlati25 = bitcast<i32>((x_571 ^ x_572));
  let x_575 : i32 = u_xlati25;
  u_xlati25 = (x_575 * 32769i);
  let x_579 : i32 = u_xlati25;
  let x_582 : u32 = u_xlatu1.y;
  u_xlati13 = bitcast<i32>((bitcast<u32>(x_579) ^ x_582));
  let x_586 : i32 = u_xlati13;
  u_xlatu13 = (bitcast<u32>(x_586) * 1025u);
  let x_589 : u32 = u_xlatu13;
  u_xlatu25 = (x_589 >> 6u);
  let x_591 : u32 = u_xlatu25;
  let x_592 : u32 = u_xlatu13;
  u_xlati13 = bitcast<i32>((x_591 ^ x_592));
  let x_595 : i32 = u_xlati13;
  u_xlatu13 = (bitcast<u32>(x_595) * 9u);
  let x_598 : u32 = u_xlatu13;
  u_xlatu25 = (x_598 >> 11u);
  let x_600 : u32 = u_xlatu25;
  let x_601 : u32 = u_xlatu13;
  u_xlati13 = bitcast<i32>((x_600 ^ x_601));
  let x_604 : i32 = u_xlati13;
  u_xlati13 = (x_604 * 32769i);
  let x_607 : i32 = u_xlati13;
  let x_610 : u32 = u_xlatu1.x;
  u_xlati1 = bitcast<i32>((bitcast<u32>(x_607) ^ x_610));
  let x_613 : i32 = u_xlati1;
  u_xlatu1.x = (bitcast<u32>(x_613) * 1025u);
  let x_618 : u32 = u_xlatu1.x;
  u_xlatu13 = (x_618 >> 6u);
  let x_620 : u32 = u_xlatu13;
  let x_622 : u32 = u_xlatu1.x;
  u_xlati1 = bitcast<i32>((x_620 ^ x_622));
  let x_625 : i32 = u_xlati1;
  u_xlatu1.x = (bitcast<u32>(x_625) * 9u);
  let x_630 : u32 = u_xlatu1.x;
  u_xlatu13 = (x_630 >> 11u);
  let x_632 : u32 = u_xlatu13;
  let x_634 : u32 = u_xlatu1.x;
  u_xlati1 = bitcast<i32>((x_632 ^ x_634));
  let x_637 : i32 = u_xlati1;
  u_xlati1 = (x_637 * 32769i);
  param = 1065353216i;
  let x_643 : i32 = u_xlati1;
  param_1 = x_643;
  param_2 = 0i;
  param_3 = 23i;
  let x_646 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlat1.x = bitcast<f32>(x_646);
  let x_650 : f32 = u_xlat1.x;
  u_xlat1.x = (x_650 + -1.0f);
  let x_655 : f32 = u_xlat1.x;
  u_xlat13 = (-(x_655) + 1.0f);
  let x_658 : bool = u_xlatb38;
  if (x_658) {
    let x_663 : f32 = u_xlat1.x;
    x_659 = x_663;
  } else {
    let x_665 : f32 = u_xlat13;
    x_659 = x_665;
  }
  let x_666 : f32 = x_659;
  u_xlat1.x = x_666;
  let x_668 : f32 = u_xlat37;
  let x_671 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_668 * 2.0f) + -(x_671));
  let x_676 : f32 = u_xlat1.x;
  let x_678 : f32 = u_xlat3.w;
  u_xlat13 = (x_676 * x_678);
  let x_683 : f32 = u_xlat13;
  u_xlatb25.x = (x_683 >= 0.40000000596046447754f);
  let x_690 : bool = u_xlatb25.x;
  let x_691 : f32 = u_xlat13;
  u_xlat25.x = select(0.0f, x_691, x_690);
  let x_695 : f32 = u_xlat3.w;
  let x_697 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_695 * x_697) + -0.40000000596046447754f);
  let x_702 : f32 = u_xlat13;
  u_xlat37 = dpdxCoarse(x_702);
  let x_704 : f32 = u_xlat13;
  u_xlat13 = dpdyCoarse(x_704);
  let x_706 : f32 = u_xlat13;
  let x_708 : f32 = u_xlat37;
  u_xlat13 = (abs(x_706) + abs(x_708));
  let x_711 : f32 = u_xlat13;
  u_xlat13 = max(x_711, 0.00009999999747378752f);
  let x_715 : f32 = u_xlat1.x;
  let x_716 : f32 = u_xlat13;
  u_xlat1.x = (x_715 / x_716);
  let x_720 : f32 = u_xlat1.x;
  u_xlat1.x = (x_720 + 0.5f);
  let x_724 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_724, 0.0f, 1.0f);
  let x_729 : f32 = x_75.x_AlphaToMaskAvailable;
  u_xlatb13 = !((x_729 == 0.0f));
  let x_731 : bool = u_xlatb13;
  if (x_731) {
    let x_736 : f32 = u_xlat1.x;
    x_732 = x_736;
  } else {
    let x_739 : f32 = u_xlat25.x;
    x_732 = x_739;
  }
  let x_740 : f32 = x_732;
  u_xlat1.x = x_740;
  let x_743 : f32 = u_xlat1.x;
  u_xlat25.x = (x_743 + -0.00009999999747378752f);
  let x_748 : f32 = u_xlat25.x;
  u_xlatb25.x = (x_748 < 0.0f);
  let x_752 : bool = u_xlatb25.x;
  if (((select(0i, 1i, x_752) * -1i) != 0i)) {
    discard;
  }
  let x_762 : f32 = vs_INTERP4.w;
  u_xlatb25.x = (0.0f < x_762);
  let x_766 : f32 = x_148.unity_WorldTransformParams.w;
  u_xlatb25.y = (x_766 >= 0.0f);
  let x_770 : bool = u_xlatb25.x;
  u_xlat25.x = select(-1.0f, 1.0f, x_770);
  let x_774 : bool = u_xlatb25.y;
  u_xlat25.y = select(-1.0f, 1.0f, x_774);
  let x_778 : f32 = u_xlat25.y;
  let x_780 : f32 = u_xlat25.x;
  u_xlat25.x = (x_778 * x_780);
  let x_783 : vec4<f32> = vs_INTERP4;
  let x_785 : vec3<f32> = vs_INTERP9;
  let x_787 : vec3<f32> = (vec3<f32>(x_783.y, x_783.z, x_783.x) * vec3<f32>(x_785.z, x_785.x, x_785.y));
  let x_788 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_787.x, x_787.y, x_787.z, x_788.w);
  let x_790 : vec3<f32> = vs_INTERP9;
  let x_792 : vec4<f32> = vs_INTERP4;
  let x_795 : vec4<f32> = u_xlat3;
  let x_798 : vec3<f32> = ((vec3<f32>(x_790.y, x_790.z, x_790.x) * vec3<f32>(x_792.z, x_792.x, x_792.y)) + -(vec3<f32>(x_795.x, x_795.y, x_795.z)));
  let x_799 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_798.x, x_798.y, x_798.z, x_799.w);
  let x_801 : vec2<f32> = u_xlat25;
  let x_803 : vec4<f32> = u_xlat3;
  let x_805 : vec3<f32> = (vec3<f32>(x_801.x, x_801.x, x_801.x) * vec3<f32>(x_803.x, x_803.y, x_803.z));
  let x_806 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_805.x, x_805.y, x_805.z, x_806.w);
  let x_808 : vec4<f32> = u_xlat3;
  let x_810 : vec3<f32> = u_xlat17;
  let x_812 : vec3<f32> = (vec3<f32>(x_808.x, x_808.y, x_808.z) * vec3<f32>(x_810.y, x_810.y, x_810.y));
  let x_813 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_812.x, x_812.y, x_812.z, x_813.w);
  let x_815 : vec3<f32> = u_xlat17;
  let x_817 : vec4<f32> = vs_INTERP4;
  let x_820 : vec4<f32> = u_xlat3;
  let x_822 : vec3<f32> = ((vec3<f32>(x_815.x, x_815.x, x_815.x) * vec3<f32>(x_817.x, x_817.y, x_817.z)) + vec3<f32>(x_820.x, x_820.y, x_820.z));
  let x_823 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_822.x, x_822.y, x_822.z, x_823.w);
  let x_825 : vec3<f32> = u_xlat17;
  let x_827 : vec3<f32> = vs_INTERP9;
  let x_829 : vec4<f32> = u_xlat3;
  let x_831 : vec3<f32> = ((vec3<f32>(x_825.z, x_825.z, x_825.z) * x_827) + vec3<f32>(x_829.x, x_829.y, x_829.z));
  let x_832 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_831.x, x_831.y, x_831.z, x_832.w);
  let x_834 : vec4<f32> = u_xlat3;
  let x_836 : vec4<f32> = u_xlat3;
  u_xlat25.x = dot(vec3<f32>(x_834.x, x_834.y, x_834.z), vec3<f32>(x_836.x, x_836.y, x_836.z));
  let x_841 : f32 = u_xlat25.x;
  u_xlat25.x = inverseSqrt(x_841);
  let x_844 : vec2<f32> = u_xlat25;
  let x_846 : vec4<f32> = u_xlat3;
  let x_848 : vec3<f32> = (vec3<f32>(x_844.x, x_844.x, x_844.x) * vec3<f32>(x_846.x, x_846.y, x_846.z));
  let x_849 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_848.x, x_848.y, x_848.z, x_849.w);
  u_xlat3.w = 1.0f;
  let x_854 : vec4<f32> = x_148.unity_SHAr;
  let x_855 : vec4<f32> = u_xlat3;
  u_xlat6.x = dot(x_854, x_855);
  let x_860 : vec4<f32> = x_148.unity_SHAg;
  let x_861 : vec4<f32> = u_xlat3;
  u_xlat6.y = dot(x_860, x_861);
  let x_866 : vec4<f32> = x_148.unity_SHAb;
  let x_867 : vec4<f32> = u_xlat3;
  u_xlat6.z = dot(x_866, x_867);
  let x_870 : vec4<f32> = u_xlat3;
  let x_872 : vec4<f32> = u_xlat3;
  u_xlat7 = (vec4<f32>(x_870.y, x_870.z, x_870.z, x_870.x) * vec4<f32>(x_872.x, x_872.y, x_872.z, x_872.z));
  let x_877 : vec4<f32> = x_148.unity_SHBr;
  let x_878 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_877, x_878);
  let x_883 : vec4<f32> = x_148.unity_SHBg;
  let x_884 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_883, x_884);
  let x_888 : vec4<f32> = x_148.unity_SHBb;
  let x_889 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_888, x_889);
  let x_893 : f32 = u_xlat3.y;
  let x_895 : f32 = u_xlat3.y;
  u_xlat25.x = (x_893 * x_895);
  let x_899 : f32 = u_xlat3.x;
  let x_901 : f32 = u_xlat3.x;
  let x_904 : f32 = u_xlat25.x;
  u_xlat25.x = ((x_899 * x_901) + -(x_904));
  let x_910 : vec4<f32> = x_148.unity_SHC;
  let x_912 : vec2<f32> = u_xlat25;
  let x_915 : vec4<f32> = u_xlat8;
  u_xlat17 = ((vec3<f32>(x_910.x, x_910.y, x_910.z) * vec3<f32>(x_912.x, x_912.x, x_912.x)) + vec3<f32>(x_915.x, x_915.y, x_915.z));
  let x_918 : vec3<f32> = u_xlat17;
  let x_919 : vec4<f32> = u_xlat6;
  u_xlat17 = (x_918 + vec3<f32>(x_919.x, x_919.y, x_919.z));
  let x_922 : vec3<f32> = u_xlat17;
  u_xlat17 = max(x_922, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_925 : f32 = u_xlat5.x;
  u_xlat5.x = x_925;
  let x_928 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_928, 0.0f, 1.0f);
  let x_932 : f32 = u_xlat1.x;
  u_xlat1.x = x_932;
  let x_935 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_935, 0.0f, 1.0f);
  let x_938 : vec3<f32> = u_xlat4;
  u_xlat4 = (x_938 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_943 : f32 = u_xlat5.x;
  u_xlat25.x = (-(x_943) + 1.0f);
  let x_948 : f32 = u_xlat25.x;
  let x_950 : f32 = u_xlat25.x;
  u_xlat37 = (x_948 * x_950);
  let x_952 : f32 = u_xlat37;
  u_xlat37 = max(x_952, 0.0078125f);
  let x_955 : f32 = u_xlat37;
  let x_956 : f32 = u_xlat37;
  u_xlat38 = (x_955 * x_956);
  let x_960 : f32 = u_xlat5.x;
  u_xlat39 = (x_960 + 0.04000002145767211914f);
  let x_963 : f32 = u_xlat39;
  u_xlat39 = min(x_963, 1.0f);
  let x_966 : f32 = u_xlat37;
  u_xlat40 = ((x_966 * 4.0f) + 2.0f);
  let x_970 : f32 = vs_INTERP6.w;
  u_xlat5.x = min(x_970, 1.0f);
  let x_973 : vec3<f32> = vs_INTERP8;
  let x_975 : vec3<f32> = x_75.x_WorldSpaceCameraPos;
  let x_977 : vec3<f32> = (x_973 + -(x_975));
  let x_978 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_977.x, x_977.y, x_977.z, x_978.w);
  let x_980 : vec4<f32> = u_xlat6;
  let x_982 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_980.x, x_980.y, x_980.z), vec3<f32>(x_982.x, x_982.y, x_982.z));
  let x_988 : f32 = u_xlat6.x;
  let x_990 : f32 = x_264.x_MainLightShadowParams.z;
  let x_993 : f32 = x_264.x_MainLightShadowParams.w;
  u_xlat18.x = ((x_988 * x_990) + x_993);
  let x_997 : f32 = u_xlat18.x;
  u_xlat18.x = clamp(x_997, 0.0f, 1.0f);
  let x_1001 : f32 = u_xlat36;
  u_xlat30 = (-(x_1001) + 1.0f);
  let x_1005 : f32 = u_xlat18.x;
  let x_1006 : f32 = u_xlat30;
  let x_1008 : f32 = u_xlat36;
  u_xlat36 = ((x_1005 * x_1006) + x_1008);
  let x_1010 : vec3<f32> = u_xlat2;
  let x_1012 : vec4<f32> = u_xlat3;
  u_xlat18.x = dot(-(x_1010), vec3<f32>(x_1012.x, x_1012.y, x_1012.z));
  let x_1017 : f32 = u_xlat18.x;
  let x_1019 : f32 = u_xlat18.x;
  u_xlat18.x = (x_1017 + x_1019);
  let x_1022 : vec4<f32> = u_xlat3;
  let x_1024 : vec3<f32> = u_xlat18;
  let x_1028 : vec3<f32> = u_xlat2;
  u_xlat18 = ((vec3<f32>(x_1022.x, x_1022.y, x_1022.z) * -(vec3<f32>(x_1024.x, x_1024.x, x_1024.x))) + -(x_1028));
  let x_1031 : vec4<f32> = u_xlat3;
  let x_1033 : vec3<f32> = u_xlat2;
  u_xlat7.x = dot(vec3<f32>(x_1031.x, x_1031.y, x_1031.z), x_1033);
  let x_1037 : f32 = u_xlat7.x;
  u_xlat7.x = clamp(x_1037, 0.0f, 1.0f);
  let x_1041 : f32 = u_xlat7.x;
  u_xlat7.x = (-(x_1041) + 1.0f);
  let x_1046 : f32 = u_xlat7.x;
  let x_1048 : f32 = u_xlat7.x;
  u_xlat7.x = (x_1046 * x_1048);
  let x_1052 : f32 = u_xlat7.x;
  let x_1054 : f32 = u_xlat7.x;
  u_xlat7.x = (x_1052 * x_1054);
  let x_1059 : f32 = u_xlat25.x;
  u_xlat19 = ((-(x_1059) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1066 : f32 = u_xlat25.x;
  let x_1067 : f32 = u_xlat19;
  u_xlat25.x = (x_1066 * x_1067);
  let x_1071 : f32 = u_xlat25.x;
  u_xlat25.x = (x_1071 * 6.0f);
  let x_1083 : vec3<f32> = u_xlat18;
  let x_1085 : f32 = u_xlat25.x;
  let x_1086 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_1083, x_1085);
  u_xlat8 = x_1086;
  let x_1088 : f32 = u_xlat8.w;
  u_xlat25.x = (x_1088 + -1.0f);
  let x_1092 : f32 = x_148.unity_SpecCube0_HDR.w;
  let x_1094 : f32 = u_xlat25.x;
  u_xlat25.x = ((x_1092 * x_1094) + 1.0f);
  let x_1099 : f32 = u_xlat25.x;
  u_xlat25.x = max(x_1099, 0.0f);
  let x_1103 : f32 = u_xlat25.x;
  u_xlat25.x = log2(x_1103);
  let x_1107 : f32 = u_xlat25.x;
  let x_1109 : f32 = x_148.unity_SpecCube0_HDR.y;
  u_xlat25.x = (x_1107 * x_1109);
  let x_1113 : f32 = u_xlat25.x;
  u_xlat25.x = exp2(x_1113);
  let x_1117 : f32 = u_xlat25.x;
  let x_1119 : f32 = x_148.unity_SpecCube0_HDR.x;
  u_xlat25.x = (x_1117 * x_1119);
  let x_1122 : vec4<f32> = u_xlat8;
  let x_1124 : vec2<f32> = u_xlat25;
  u_xlat18 = (vec3<f32>(x_1122.x, x_1122.y, x_1122.z) * vec3<f32>(x_1124.x, x_1124.x, x_1124.x));
  let x_1127 : f32 = u_xlat37;
  let x_1129 : f32 = u_xlat37;
  u_xlat25 = ((vec2<f32>(x_1127, x_1127) * vec2<f32>(x_1129, x_1129)) + vec2<f32>(-1.0f, 1.0f));
  let x_1135 : f32 = u_xlat25.y;
  u_xlat37 = (1.0f / x_1135);
  let x_1137 : f32 = u_xlat39;
  u_xlat39 = (x_1137 + -0.03999999910593032837f);
  let x_1141 : f32 = u_xlat7.x;
  let x_1142 : f32 = u_xlat39;
  u_xlat39 = ((x_1141 * x_1142) + 0.03999999910593032837f);
  let x_1146 : f32 = u_xlat37;
  let x_1147 : f32 = u_xlat39;
  u_xlat37 = (x_1146 * x_1147);
  let x_1149 : f32 = u_xlat37;
  let x_1151 : vec3<f32> = u_xlat18;
  u_xlat18 = (vec3<f32>(x_1149, x_1149, x_1149) * x_1151);
  let x_1153 : vec3<f32> = u_xlat17;
  let x_1154 : vec3<f32> = u_xlat4;
  let x_1156 : vec3<f32> = u_xlat18;
  u_xlat17 = ((x_1153 * x_1154) + x_1156);
  let x_1158 : f32 = u_xlat36;
  let x_1160 : f32 = x_148.unity_LightData.z;
  u_xlat36 = (x_1158 * x_1160);
  let x_1162 : vec4<f32> = u_xlat3;
  let x_1165 : vec4<f32> = x_75.x_MainLightPosition;
  u_xlat37 = dot(vec3<f32>(x_1162.x, x_1162.y, x_1162.z), vec3<f32>(x_1165.x, x_1165.y, x_1165.z));
  let x_1168 : f32 = u_xlat37;
  u_xlat37 = clamp(x_1168, 0.0f, 1.0f);
  let x_1170 : f32 = u_xlat36;
  let x_1171 : f32 = u_xlat37;
  u_xlat36 = (x_1170 * x_1171);
  let x_1173 : f32 = u_xlat36;
  let x_1176 : vec4<f32> = x_75.x_MainLightColor;
  u_xlat18 = (vec3<f32>(x_1173, x_1173, x_1173) * vec3<f32>(x_1176.x, x_1176.y, x_1176.z));
  let x_1179 : vec3<f32> = u_xlat2;
  let x_1181 : vec4<f32> = x_75.x_MainLightPosition;
  let x_1183 : vec3<f32> = (x_1179 + vec3<f32>(x_1181.x, x_1181.y, x_1181.z));
  let x_1184 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1183.x, x_1183.y, x_1183.z, x_1184.w);
  let x_1186 : vec4<f32> = u_xlat7;
  let x_1188 : vec4<f32> = u_xlat7;
  u_xlat36 = dot(vec3<f32>(x_1186.x, x_1186.y, x_1186.z), vec3<f32>(x_1188.x, x_1188.y, x_1188.z));
  let x_1191 : f32 = u_xlat36;
  u_xlat36 = max(x_1191, 1.17549435e-38f);
  let x_1194 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_1194);
  let x_1196 : f32 = u_xlat36;
  let x_1198 : vec4<f32> = u_xlat7;
  let x_1200 : vec3<f32> = (vec3<f32>(x_1196, x_1196, x_1196) * vec3<f32>(x_1198.x, x_1198.y, x_1198.z));
  let x_1201 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1200.x, x_1200.y, x_1200.z, x_1201.w);
  let x_1203 : vec4<f32> = u_xlat3;
  let x_1205 : vec4<f32> = u_xlat7;
  u_xlat36 = dot(vec3<f32>(x_1203.x, x_1203.y, x_1203.z), vec3<f32>(x_1205.x, x_1205.y, x_1205.z));
  let x_1208 : f32 = u_xlat36;
  u_xlat36 = clamp(x_1208, 0.0f, 1.0f);
  let x_1211 : vec4<f32> = x_75.x_MainLightPosition;
  let x_1213 : vec4<f32> = u_xlat7;
  u_xlat37 = dot(vec3<f32>(x_1211.x, x_1211.y, x_1211.z), vec3<f32>(x_1213.x, x_1213.y, x_1213.z));
  let x_1216 : f32 = u_xlat37;
  u_xlat37 = clamp(x_1216, 0.0f, 1.0f);
  let x_1218 : f32 = u_xlat36;
  let x_1219 : f32 = u_xlat36;
  u_xlat36 = (x_1218 * x_1219);
  let x_1221 : f32 = u_xlat36;
  let x_1223 : f32 = u_xlat25.x;
  u_xlat36 = ((x_1221 * x_1223) + 1.00001001358032226562f);
  let x_1227 : f32 = u_xlat37;
  let x_1228 : f32 = u_xlat37;
  u_xlat37 = (x_1227 * x_1228);
  let x_1230 : f32 = u_xlat36;
  let x_1231 : f32 = u_xlat36;
  u_xlat36 = (x_1230 * x_1231);
  let x_1233 : f32 = u_xlat37;
  u_xlat37 = max(x_1233, 0.10000000149011611938f);
  let x_1236 : f32 = u_xlat36;
  let x_1237 : f32 = u_xlat37;
  u_xlat36 = (x_1236 * x_1237);
  let x_1239 : f32 = u_xlat40;
  let x_1240 : f32 = u_xlat36;
  u_xlat36 = (x_1239 * x_1240);
  let x_1242 : f32 = u_xlat38;
  let x_1243 : f32 = u_xlat36;
  u_xlat36 = (x_1242 / x_1243);
  let x_1245 : f32 = u_xlat36;
  let x_1249 : vec3<f32> = u_xlat4;
  let x_1250 : vec3<f32> = ((vec3<f32>(x_1245, x_1245, x_1245) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_1249);
  let x_1251 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1250.x, x_1250.y, x_1250.z, x_1251.w);
  let x_1253 : vec3<f32> = u_xlat18;
  let x_1254 : vec4<f32> = u_xlat7;
  u_xlat18 = (x_1253 * vec3<f32>(x_1254.x, x_1254.y, x_1254.z));
  let x_1258 : f32 = x_75.x_AdditionalLightsCount.x;
  let x_1260 : f32 = x_148.unity_LightData.y;
  u_xlat36 = min(x_1258, x_1260);
  let x_1262 : f32 = u_xlat36;
  u_xlatu36 = bitcast<u32>(i32(x_1262));
  let x_1266 : f32 = u_xlat6.x;
  let x_1269 : f32 = x_264.x_AdditionalShadowFadeParams.x;
  let x_1272 : f32 = x_264.x_AdditionalShadowFadeParams.y;
  u_xlat37 = ((x_1266 * x_1269) + x_1272);
  let x_1274 : f32 = u_xlat37;
  u_xlat37 = clamp(x_1274, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1285 : u32 = u_xlatu_loop_1;
    let x_1286 : u32 = u_xlatu36;
    if ((x_1285 < x_1286)) {
    } else {
      break;
    }
    let x_1289 : u32 = u_xlatu_loop_1;
    u_xlatu6 = (x_1289 >> 2u);
    let x_1292 : u32 = u_xlatu_loop_1;
    u_xlati43 = bitcast<i32>((x_1292 & 3u));
    let x_1295 : u32 = u_xlatu6;
    let x_1298 : vec4<f32> = x_148.unity_LightIndices[bitcast<i32>(x_1295)];
    let x_1308 : i32 = u_xlati43;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1313 : vec4<u32> = indexable[x_1308];
    u_xlat6.x = dot(x_1298, bitcast<vec4<f32>>(x_1313));
    let x_1319 : f32 = u_xlat6.x;
    u_xlati6 = i32(x_1319);
    let x_1321 : vec3<f32> = vs_INTERP8;
    let x_1332 : i32 = u_xlati6;
    let x_1334 : vec4<f32> = x_1331.x_AdditionalLightsPosition[x_1332];
    let x_1337 : i32 = u_xlati6;
    let x_1339 : vec4<f32> = x_1331.x_AdditionalLightsPosition[x_1337];
    let x_1341 : vec3<f32> = ((-(x_1321) * vec3<f32>(x_1334.w, x_1334.w, x_1334.w)) + vec3<f32>(x_1339.x, x_1339.y, x_1339.z));
    let x_1342 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1341.x, x_1341.y, x_1341.z, x_1342.w);
    let x_1345 : vec4<f32> = u_xlat8;
    let x_1347 : vec4<f32> = u_xlat8;
    u_xlat43 = dot(vec3<f32>(x_1345.x, x_1345.y, x_1345.z), vec3<f32>(x_1347.x, x_1347.y, x_1347.z));
    let x_1350 : f32 = u_xlat43;
    u_xlat43 = max(x_1350, 0.00006103515625f);
    let x_1354 : f32 = u_xlat43;
    u_xlat44 = inverseSqrt(x_1354);
    let x_1356 : f32 = u_xlat44;
    let x_1358 : vec4<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_1356, x_1356, x_1356) * vec3<f32>(x_1358.x, x_1358.y, x_1358.z));
    let x_1362 : f32 = u_xlat43;
    u_xlat45 = (1.0f / x_1362);
    let x_1364 : f32 = u_xlat43;
    let x_1365 : i32 = u_xlati6;
    let x_1367 : f32 = x_1331.x_AdditionalLightsAttenuation[x_1365].x;
    u_xlat43 = (x_1364 * x_1367);
    let x_1369 : f32 = u_xlat43;
    let x_1371 : f32 = u_xlat43;
    u_xlat43 = ((-(x_1369) * x_1371) + 1.0f);
    let x_1374 : f32 = u_xlat43;
    u_xlat43 = max(x_1374, 0.0f);
    let x_1376 : f32 = u_xlat43;
    let x_1377 : f32 = u_xlat43;
    u_xlat43 = (x_1376 * x_1377);
    let x_1379 : f32 = u_xlat43;
    let x_1380 : f32 = u_xlat45;
    u_xlat43 = (x_1379 * x_1380);
    let x_1382 : i32 = u_xlati6;
    let x_1384 : vec4<f32> = x_1331.x_AdditionalLightsSpotDir[x_1382];
    let x_1386 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(vec3<f32>(x_1384.x, x_1384.y, x_1384.z), x_1386);
    let x_1388 : f32 = u_xlat45;
    let x_1389 : i32 = u_xlati6;
    let x_1391 : f32 = x_1331.x_AdditionalLightsAttenuation[x_1389].z;
    let x_1393 : i32 = u_xlati6;
    let x_1395 : f32 = x_1331.x_AdditionalLightsAttenuation[x_1393].w;
    u_xlat45 = ((x_1388 * x_1391) + x_1395);
    let x_1397 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1397, 0.0f, 1.0f);
    let x_1399 : f32 = u_xlat45;
    let x_1400 : f32 = u_xlat45;
    u_xlat45 = (x_1399 * x_1400);
    let x_1402 : f32 = u_xlat43;
    let x_1403 : f32 = u_xlat45;
    u_xlat43 = (x_1402 * x_1403);
    let x_1407 : i32 = u_xlati6;
    let x_1409 : f32 = x_264.x_AdditionalShadowParams[x_1407].w;
    u_xlati45 = i32(x_1409);
    let x_1414 : i32 = u_xlati45;
    u_xlatb10.x = (x_1414 >= 0i);
    let x_1418 : bool = u_xlatb10.x;
    if (x_1418) {
      let x_1422 : i32 = u_xlati6;
      let x_1424 : f32 = x_264.x_AdditionalShadowParams[x_1422].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1424, x_1424, x_1424, x_1424))));
      let x_1430 : bool = u_xlatb10.x;
      if (x_1430) {
        let x_1433 : vec3<f32> = u_xlat9;
        let x_1436 : vec3<f32> = u_xlat9;
        let x_1439 : vec4<bool> = (abs(vec4<f32>(x_1433.z, x_1433.z, x_1433.y, x_1433.z)) >= abs(vec4<f32>(x_1436.x, x_1436.y, x_1436.x, x_1436.x)));
        u_xlatb10 = vec3<bool>(x_1439.x, x_1439.y, x_1439.z);
        let x_1442 : bool = u_xlatb10.y;
        let x_1444 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_1442 & x_1444);
        let x_1448 : vec3<f32> = u_xlat9;
        let x_1451 : vec4<bool> = (-(vec4<f32>(x_1448.z, x_1448.y, x_1448.x, x_1448.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_1451.x, x_1451.y, x_1451.z);
        let x_1455 : bool = u_xlatb11.x;
        u_xlat22.x = select(4.0f, 5.0f, x_1455);
        let x_1460 : bool = u_xlatb11.y;
        u_xlat22.z = select(2.0f, 3.0f, x_1460);
        let x_1465 : bool = u_xlatb11.z;
        u_xlat11 = select(0.0f, 1.0f, x_1465);
        let x_1469 : bool = u_xlatb10.z;
        if (x_1469) {
          let x_1474 : f32 = u_xlat22.z;
          x_1470 = x_1474;
        } else {
          let x_1476 : f32 = u_xlat11;
          x_1470 = x_1476;
        }
        let x_1477 : f32 = x_1470;
        u_xlat34 = x_1477;
        let x_1480 : bool = u_xlatb10.x;
        if (x_1480) {
          let x_1485 : f32 = u_xlat22.x;
          x_1481 = x_1485;
        } else {
          let x_1487 : f32 = u_xlat34;
          x_1481 = x_1487;
        }
        let x_1488 : f32 = x_1481;
        u_xlat10.x = x_1488;
        let x_1490 : i32 = u_xlati6;
        let x_1492 : f32 = x_264.x_AdditionalShadowParams[x_1490].w;
        u_xlat22.x = trunc(x_1492);
        let x_1496 : f32 = u_xlat10.x;
        let x_1498 : f32 = u_xlat22.x;
        u_xlat10.x = (x_1496 + x_1498);
        let x_1502 : f32 = u_xlat10.x;
        u_xlati45 = i32(x_1502);
      }
      let x_1504 : i32 = u_xlati45;
      u_xlati45 = (x_1504 << bitcast<u32>(2i));
      let x_1506 : vec3<f32> = vs_INTERP8;
      let x_1509 : i32 = u_xlati45;
      let x_1512 : i32 = u_xlati45;
      let x_1516 : vec4<f32> = x_264.x_AdditionalLightsWorldToShadow[((x_1509 + 1i) / 4i)][((x_1512 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_1506.y, x_1506.y, x_1506.y, x_1506.y) * x_1516);
      let x_1518 : i32 = u_xlati45;
      let x_1520 : i32 = u_xlati45;
      let x_1523 : vec4<f32> = x_264.x_AdditionalLightsWorldToShadow[(x_1518 / 4i)][(x_1520 % 4i)];
      let x_1524 : vec3<f32> = vs_INTERP8;
      let x_1527 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1523 * vec4<f32>(x_1524.x, x_1524.x, x_1524.x, x_1524.x)) + x_1527);
      let x_1529 : i32 = u_xlati45;
      let x_1532 : i32 = u_xlati45;
      let x_1536 : vec4<f32> = x_264.x_AdditionalLightsWorldToShadow[((x_1529 + 2i) / 4i)][((x_1532 + 2i) % 4i)];
      let x_1537 : vec3<f32> = vs_INTERP8;
      let x_1540 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1536 * vec4<f32>(x_1537.z, x_1537.z, x_1537.z, x_1537.z)) + x_1540);
      let x_1542 : vec4<f32> = u_xlat10;
      let x_1543 : i32 = u_xlati45;
      let x_1546 : i32 = u_xlati45;
      let x_1550 : vec4<f32> = x_264.x_AdditionalLightsWorldToShadow[((x_1543 + 3i) / 4i)][((x_1546 + 3i) % 4i)];
      u_xlat10 = (x_1542 + x_1550);
      let x_1552 : vec4<f32> = u_xlat10;
      let x_1554 : vec4<f32> = u_xlat10;
      let x_1556 : vec3<f32> = (vec3<f32>(x_1552.x, x_1552.y, x_1552.z) / vec3<f32>(x_1554.w, x_1554.w, x_1554.w));
      let x_1557 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1556.x, x_1556.y, x_1556.z, x_1557.w);
      let x_1560 : vec4<f32> = u_xlat10;
      let x_1561 : vec2<f32> = vec2<f32>(x_1560.x, x_1560.y);
      let x_1563 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1561.x, x_1561.y, x_1563);
      let x_1571 : vec3<f32> = txVec1;
      let x_1573 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1571.xy, x_1571.z);
      u_xlat45 = x_1573;
      let x_1574 : i32 = u_xlati6;
      let x_1576 : f32 = x_264.x_AdditionalShadowParams[x_1574].x;
      u_xlat10.x = (1.0f + -(x_1576));
      let x_1580 : f32 = u_xlat45;
      let x_1581 : i32 = u_xlati6;
      let x_1583 : f32 = x_264.x_AdditionalShadowParams[x_1581].x;
      let x_1586 : f32 = u_xlat10.x;
      u_xlat45 = ((x_1580 * x_1583) + x_1586);
      let x_1589 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_1589);
      let x_1594 : f32 = u_xlat10.z;
      u_xlatb22 = (x_1594 >= 1.0f);
      let x_1596 : bool = u_xlatb22;
      let x_1598 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_1596 | x_1598);
      let x_1602 : bool = u_xlatb10.x;
      let x_1603 : f32 = u_xlat45;
      u_xlat45 = select(x_1603, 1.0f, x_1602);
    } else {
      u_xlat45 = 1.0f;
    }
    let x_1606 : f32 = u_xlat45;
    u_xlat10.x = (-(x_1606) + 1.0f);
    let x_1610 : f32 = u_xlat37;
    let x_1612 : f32 = u_xlat10.x;
    let x_1614 : f32 = u_xlat45;
    u_xlat45 = ((x_1610 * x_1612) + x_1614);
    let x_1616 : f32 = u_xlat43;
    let x_1617 : f32 = u_xlat45;
    u_xlat43 = (x_1616 * x_1617);
    let x_1619 : vec4<f32> = u_xlat3;
    let x_1621 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(vec3<f32>(x_1619.x, x_1619.y, x_1619.z), x_1621);
    let x_1623 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1623, 0.0f, 1.0f);
    let x_1625 : f32 = u_xlat43;
    let x_1626 : f32 = u_xlat45;
    u_xlat43 = (x_1625 * x_1626);
    let x_1628 : f32 = u_xlat43;
    let x_1630 : i32 = u_xlati6;
    let x_1632 : vec4<f32> = x_1331.x_AdditionalLightsColor[x_1630];
    let x_1634 : vec3<f32> = (vec3<f32>(x_1628, x_1628, x_1628) * vec3<f32>(x_1632.x, x_1632.y, x_1632.z));
    let x_1635 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1634.x, x_1634.y, x_1634.z, x_1635.w);
    let x_1637 : vec4<f32> = u_xlat8;
    let x_1639 : f32 = u_xlat44;
    let x_1642 : vec3<f32> = u_xlat2;
    let x_1643 : vec3<f32> = ((vec3<f32>(x_1637.x, x_1637.y, x_1637.z) * vec3<f32>(x_1639, x_1639, x_1639)) + x_1642);
    let x_1644 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1643.x, x_1643.y, x_1643.z, x_1644.w);
    let x_1646 : vec4<f32> = u_xlat8;
    let x_1648 : vec4<f32> = u_xlat8;
    u_xlat6.x = dot(vec3<f32>(x_1646.x, x_1646.y, x_1646.z), vec3<f32>(x_1648.x, x_1648.y, x_1648.z));
    let x_1653 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_1653, 1.17549435e-38f);
    let x_1657 : f32 = u_xlat6.x;
    u_xlat6.x = inverseSqrt(x_1657);
    let x_1660 : vec4<f32> = u_xlat6;
    let x_1662 : vec4<f32> = u_xlat8;
    let x_1664 : vec3<f32> = (vec3<f32>(x_1660.x, x_1660.x, x_1660.x) * vec3<f32>(x_1662.x, x_1662.y, x_1662.z));
    let x_1665 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1664.x, x_1664.y, x_1664.z, x_1665.w);
    let x_1667 : vec4<f32> = u_xlat3;
    let x_1669 : vec4<f32> = u_xlat8;
    u_xlat6.x = dot(vec3<f32>(x_1667.x, x_1667.y, x_1667.z), vec3<f32>(x_1669.x, x_1669.y, x_1669.z));
    let x_1674 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_1674, 0.0f, 1.0f);
    let x_1677 : vec3<f32> = u_xlat9;
    let x_1678 : vec4<f32> = u_xlat8;
    u_xlat43 = dot(x_1677, vec3<f32>(x_1678.x, x_1678.y, x_1678.z));
    let x_1681 : f32 = u_xlat43;
    u_xlat43 = clamp(x_1681, 0.0f, 1.0f);
    let x_1684 : f32 = u_xlat6.x;
    let x_1686 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1684 * x_1686);
    let x_1690 : f32 = u_xlat6.x;
    let x_1692 : f32 = u_xlat25.x;
    u_xlat6.x = ((x_1690 * x_1692) + 1.00001001358032226562f);
    let x_1696 : f32 = u_xlat43;
    let x_1697 : f32 = u_xlat43;
    u_xlat43 = (x_1696 * x_1697);
    let x_1700 : f32 = u_xlat6.x;
    let x_1702 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1700 * x_1702);
    let x_1705 : f32 = u_xlat43;
    u_xlat43 = max(x_1705, 0.10000000149011611938f);
    let x_1708 : f32 = u_xlat6.x;
    let x_1709 : f32 = u_xlat43;
    u_xlat6.x = (x_1708 * x_1709);
    let x_1712 : f32 = u_xlat40;
    let x_1714 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1712 * x_1714);
    let x_1717 : f32 = u_xlat38;
    let x_1719 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1717 / x_1719);
    let x_1722 : vec4<f32> = u_xlat6;
    let x_1725 : vec3<f32> = u_xlat4;
    let x_1726 : vec3<f32> = ((vec3<f32>(x_1722.x, x_1722.x, x_1722.x) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_1725);
    let x_1727 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1726.x, x_1726.y, x_1726.z, x_1727.w);
    let x_1729 : vec4<f32> = u_xlat8;
    let x_1731 : vec4<f32> = u_xlat10;
    let x_1734 : vec4<f32> = u_xlat7;
    let x_1736 : vec3<f32> = ((vec3<f32>(x_1729.x, x_1729.y, x_1729.z) * vec3<f32>(x_1731.x, x_1731.y, x_1731.z)) + vec3<f32>(x_1734.x, x_1734.y, x_1734.z));
    let x_1737 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1736.x, x_1736.y, x_1736.z, x_1737.w);

    continuing {
      let x_1739 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1739 + bitcast<u32>(1i));
    }
  }
  let x_1741 : vec3<f32> = u_xlat17;
  let x_1742 : vec4<f32> = u_xlat5;
  let x_1745 : vec3<f32> = u_xlat18;
  u_xlat2 = ((x_1741 * vec3<f32>(x_1742.x, x_1742.x, x_1742.x)) + x_1745);
  let x_1747 : vec4<f32> = u_xlat7;
  let x_1749 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_1747.x, x_1747.y, x_1747.z) + x_1749);
  let x_1753 : vec4<f32> = vs_INTERP6;
  let x_1755 : vec3<f32> = u_xlat0;
  let x_1757 : vec3<f32> = u_xlat2;
  let x_1758 : vec3<f32> = ((vec3<f32>(x_1753.w, x_1753.w, x_1753.w) * x_1755) + x_1757);
  let x_1759 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1758.x, x_1758.y, x_1758.z, x_1759.w);
  let x_1761 : bool = u_xlatb13;
  if (x_1761) {
    let x_1766 : f32 = u_xlat1.x;
    x_1762 = x_1766;
  } else {
    x_1762 = 1.0f;
  }
  let x_1768 : f32 = x_1762;
  SV_Target0.w = x_1768;
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


