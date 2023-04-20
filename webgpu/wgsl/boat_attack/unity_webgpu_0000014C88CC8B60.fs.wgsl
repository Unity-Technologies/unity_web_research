diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_MainLightPosition : vec4<f32>,
  /* @offset(32) */
  x_MainLightColor : vec4<f32>,
  /* @offset(48) */
  x_AdditionalLightsCount : vec4<f32>,
  /* @offset(64) */
  x_WorldSpaceCameraPos : vec3<f32>,
  /* @offset(80) */
  unity_OrthoParams : vec4<f32>,
  /* @offset(96) */
  unity_MatrixV : mat4x4<f32>,
}

struct UnityPerMaterial {
  /* @offset(0) */
  x_BaseMap_ST : vec4<f32>,
  /* @offset(16) */
  x_BaseColor : vec4<f32>,
  /* @offset(32) */
  x_SpecColor : vec4<f32>,
  /* @offset(48) */
  x_EmissionColor : vec4<f32>,
  /* @offset(64) */
  x_Cutoff : f32,
  /* @offset(68) */
  x_Surface : f32,
}

alias Arr = array<mat4x4<f32>, 5u>;

alias Arr_1 = array<vec4<f32>, 32u>;

alias Arr_2 = array<mat4x4<f32>, 32u>;

alias Arr_3 = array<vec4<f32>, 32u>;

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
  x_AdditionalLightsWorldToShadow : Arr_2,
}

alias Arr_4 = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr_4,
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
  x_AdditionalLightsLayerMasks : Arr_9,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

@group(1) @binding(3) var<uniform> x_41 : UnityPerMaterial;

var<private> u_xlatb1 : bool;

var<private> u_xlat10 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat28 : f32;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(5) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

var<private> u_xlat4 : vec3<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat29 : f32;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat30 : f32;

@group(1) @binding(4) var<uniform> x_227 : LightShadows;

var<private> u_xlatb30 : bool;

var<private> u_xlatb4 : bool;

var<private> u_xlat13 : f32;

@group(1) @binding(2) var<uniform> x_288 : UnityPerDraw;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat31 : f32;

var<private> u_xlatu31 : u32;

var<private> u_xlatu6 : u32;

var<private> u_xlati15 : i32;

var<private> u_xlati6 : i32;

var<private> u_xlat15 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_445 : AdditionalLights;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlat16 : vec3<f32>;

var<private> u_xlati16 : i32;

var<private> u_xlatb25 : bool;

var<private> u_xlatb8 : vec4<bool>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat34 : f32;

var<private> u_xlat25 : f32;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb34 : bool;

var<private> u_xlat33 : f32;

var<private> u_xlat9 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb9 : bool;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb6 : bool;

var<private> u_xlatu32 : u32;

fn main_1() {
  var x_84 : f32;
  var x_97 : f32;
  var x_109 : f32;
  var txVec0 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_610 : f32;
  var x_620 : f32;
  var txVec1 : vec3<f32>;
  var x_731 : f32;
  var x_859 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_35 : f32 = x_28.x_GlobalMipBias.x;
  let x_36 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_35);
  u_xlat0 = x_36;
  let x_37 : vec4<f32> = u_xlat0;
  let x_45 : vec4<f32> = x_41.x_BaseColor;
  u_xlat0 = (vec4<f32>(x_37.w, x_37.x, x_37.y, x_37.z) * vec4<f32>(x_45.w, x_45.x, x_45.y, x_45.z));
  let x_54 : f32 = x_28.unity_OrthoParams.w;
  u_xlatb1 = (x_54 == 0.0f);
  let x_61 : vec3<f32> = vs_TEXCOORD1;
  let x_66 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  u_xlat10 = (-(x_61) + x_66);
  let x_69 : vec3<f32> = u_xlat10;
  let x_70 : vec3<f32> = u_xlat10;
  u_xlat2.x = dot(x_69, x_70);
  let x_75 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_75);
  let x_78 : vec3<f32> = u_xlat10;
  let x_79 : vec3<f32> = u_xlat2;
  u_xlat10 = (x_78 * vec3<f32>(x_79.x, x_79.x, x_79.x));
  let x_82 : bool = u_xlatb1;
  if (x_82) {
    let x_88 : f32 = u_xlat10.x;
    x_84 = x_88;
  } else {
    let x_93 : f32 = x_28.unity_MatrixV[0i].z;
    x_84 = x_93;
  }
  let x_94 : f32 = x_84;
  u_xlat2.x = x_94;
  let x_96 : bool = u_xlatb1;
  if (x_96) {
    let x_102 : f32 = u_xlat10.y;
    x_97 = x_102;
  } else {
    let x_105 : f32 = x_28.unity_MatrixV[1i].z;
    x_97 = x_105;
  }
  let x_106 : f32 = x_97;
  u_xlat2.y = x_106;
  let x_108 : bool = u_xlatb1;
  if (x_108) {
    let x_113 : f32 = u_xlat10.z;
    x_109 = x_113;
  } else {
    let x_117 : f32 = x_28.unity_MatrixV[2i].z;
    x_109 = x_117;
  }
  let x_118 : f32 = x_109;
  u_xlat2.z = x_118;
  let x_122 : vec3<f32> = vs_TEXCOORD2;
  let x_123 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_122, x_123);
  let x_127 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_127);
  let x_130 : vec3<f32> = u_xlat1;
  let x_132 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1 = (vec3<f32>(x_130.x, x_130.x, x_130.x) * x_132);
  let x_135 : vec3<f32> = u_xlat2;
  let x_136 : vec3<f32> = u_xlat2;
  u_xlat28 = dot(x_135, x_136);
  let x_138 : f32 = u_xlat28;
  u_xlat28 = max(x_138, 0.00006103515625f);
  let x_141 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_141);
  let x_150 : vec2<f32> = vs_TEXCOORD7;
  let x_152 : f32 = x_28.x_GlobalMipBias.x;
  let x_153 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_150, x_152);
  u_xlat3 = x_153;
  let x_159 : vec2<f32> = vs_TEXCOORD7;
  let x_161 : f32 = x_28.x_GlobalMipBias.x;
  let x_162 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_159, x_161);
  u_xlat4 = vec3<f32>(x_162.x, x_162.y, x_162.z);
  let x_164 : vec4<f32> = u_xlat3;
  let x_168 : vec3<f32> = (vec3<f32>(x_164.x, x_164.y, x_164.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_169 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_168.x, x_168.y, x_168.z, x_169.w);
  let x_172 : vec3<f32> = u_xlat1;
  let x_173 : vec4<f32> = u_xlat3;
  u_xlat29 = dot(x_172, vec3<f32>(x_173.x, x_173.y, x_173.z));
  let x_176 : f32 = u_xlat29;
  u_xlat29 = (x_176 + 0.5f);
  let x_179 : f32 = u_xlat29;
  let x_181 : vec3<f32> = u_xlat4;
  let x_182 : vec3<f32> = (vec3<f32>(x_179, x_179, x_179) * x_181);
  let x_183 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_182.x, x_182.y, x_182.z, x_183.w);
  let x_186 : f32 = u_xlat3.w;
  u_xlat29 = max(x_186, 0.00009999999747378752f);
  let x_189 : vec4<f32> = u_xlat3;
  let x_191 : f32 = u_xlat29;
  let x_193 : vec3<f32> = (vec3<f32>(x_189.x, x_189.y, x_189.z) / vec3<f32>(x_191, x_191, x_191));
  let x_194 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_193.x, x_193.y, x_193.z, x_194.w);
  let x_200 : vec4<f32> = vs_TEXCOORD6;
  let x_201 : vec2<f32> = vec2<f32>(x_200.x, x_200.y);
  let x_204 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_201.x, x_201.y, x_204);
  let x_216 : vec3<f32> = txVec0;
  let x_218 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_216.xy, x_216.z);
  u_xlat29 = x_218;
  let x_230 : f32 = x_227.x_MainLightShadowParams.x;
  u_xlat30 = (-(x_230) + 1.0f);
  let x_234 : f32 = u_xlat29;
  let x_236 : f32 = x_227.x_MainLightShadowParams.x;
  let x_238 : f32 = u_xlat30;
  u_xlat29 = ((x_234 * x_236) + x_238);
  let x_242 : f32 = vs_TEXCOORD6.z;
  u_xlatb30 = (0.0f >= x_242);
  let x_246 : f32 = vs_TEXCOORD6.z;
  u_xlatb4 = (x_246 >= 1.0f);
  let x_248 : bool = u_xlatb30;
  let x_249 : bool = u_xlatb4;
  u_xlatb30 = (x_248 | x_249);
  let x_251 : bool = u_xlatb30;
  let x_252 : f32 = u_xlat29;
  u_xlat29 = select(x_252, 1.0f, x_251);
  let x_254 : vec3<f32> = vs_TEXCOORD1;
  let x_256 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  u_xlat4 = (x_254 + -(x_256));
  let x_259 : vec3<f32> = u_xlat4;
  let x_260 : vec3<f32> = u_xlat4;
  u_xlat30 = dot(x_259, x_260);
  let x_262 : f32 = u_xlat30;
  let x_264 : f32 = x_227.x_MainLightShadowParams.z;
  let x_267 : f32 = x_227.x_MainLightShadowParams.w;
  u_xlat4.x = ((x_262 * x_264) + x_267);
  let x_271 : f32 = u_xlat4.x;
  u_xlat4.x = clamp(x_271, 0.0f, 1.0f);
  let x_275 : f32 = u_xlat29;
  u_xlat13 = (-(x_275) + 1.0f);
  let x_279 : f32 = u_xlat4.x;
  let x_280 : f32 = u_xlat13;
  let x_282 : f32 = u_xlat29;
  u_xlat29 = ((x_279 * x_280) + x_282);
  let x_284 : f32 = u_xlat29;
  let x_290 : f32 = x_288.unity_LightData.z;
  u_xlat29 = (x_284 * x_290);
  let x_292 : f32 = u_xlat29;
  let x_295 : vec4<f32> = x_28.x_MainLightColor;
  u_xlat4 = (vec3<f32>(x_292, x_292, x_292) * vec3<f32>(x_295.x, x_295.y, x_295.z));
  let x_298 : vec3<f32> = u_xlat1;
  let x_300 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat29 = dot(x_298, vec3<f32>(x_300.x, x_300.y, x_300.z));
  let x_303 : f32 = u_xlat29;
  u_xlat29 = clamp(x_303, 0.0f, 1.0f);
  let x_306 : f32 = u_xlat29;
  let x_308 : vec3<f32> = u_xlat4;
  u_xlat5 = (vec3<f32>(x_306, x_306, x_306) * x_308);
  let x_311 : f32 = u_xlat0.x;
  u_xlat29 = ((x_311 * 10.0f) + 1.0f);
  let x_315 : f32 = u_xlat29;
  u_xlat29 = exp2(x_315);
  let x_318 : vec3<f32> = u_xlat2;
  let x_319 : f32 = u_xlat28;
  let x_323 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat6 = ((x_318 * vec3<f32>(x_319, x_319, x_319)) + vec3<f32>(x_323.x, x_323.y, x_323.z));
  let x_327 : vec3<f32> = u_xlat6;
  let x_328 : vec3<f32> = u_xlat6;
  u_xlat31 = dot(x_327, x_328);
  let x_330 : f32 = u_xlat31;
  u_xlat31 = max(x_330, 1.17549435e-38f);
  let x_333 : f32 = u_xlat31;
  u_xlat31 = inverseSqrt(x_333);
  let x_335 : f32 = u_xlat31;
  let x_337 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_335, x_335, x_335) * x_337);
  let x_339 : vec3<f32> = u_xlat1;
  let x_340 : vec3<f32> = u_xlat6;
  u_xlat31 = dot(x_339, x_340);
  let x_342 : f32 = u_xlat31;
  u_xlat31 = clamp(x_342, 0.0f, 1.0f);
  let x_344 : f32 = u_xlat31;
  u_xlat31 = log2(x_344);
  let x_346 : f32 = u_xlat29;
  let x_347 : f32 = u_xlat31;
  u_xlat31 = (x_346 * x_347);
  let x_349 : f32 = u_xlat31;
  u_xlat31 = exp2(x_349);
  let x_351 : f32 = u_xlat31;
  let x_354 : vec4<f32> = x_41.x_SpecColor;
  u_xlat6 = (vec3<f32>(x_351, x_351, x_351) * vec3<f32>(x_354.x, x_354.y, x_354.z));
  let x_357 : vec3<f32> = u_xlat4;
  let x_358 : vec3<f32> = u_xlat6;
  u_xlat4 = (x_357 * x_358);
  let x_360 : vec3<f32> = u_xlat5;
  let x_361 : vec4<f32> = u_xlat0;
  let x_364 : vec3<f32> = u_xlat4;
  u_xlat4 = ((x_360 * vec3<f32>(x_361.y, x_361.z, x_361.w)) + x_364);
  let x_368 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_370 : f32 = x_288.unity_LightData.y;
  u_xlat31 = min(x_368, x_370);
  let x_374 : f32 = u_xlat31;
  u_xlatu31 = bitcast<u32>(i32(x_374));
  let x_377 : f32 = u_xlat30;
  let x_380 : f32 = x_227.x_AdditionalShadowFadeParams.x;
  let x_383 : f32 = x_227.x_AdditionalShadowFadeParams.y;
  u_xlat30 = ((x_377 * x_380) + x_383);
  let x_385 : f32 = u_xlat30;
  u_xlat30 = clamp(x_385, 0.0f, 1.0f);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_397 : u32 = u_xlatu_loop_1;
    let x_398 : u32 = u_xlatu31;
    if ((x_397 < x_398)) {
    } else {
      break;
    }
    let x_401 : u32 = u_xlatu_loop_1;
    u_xlatu6 = (x_401 >> 2u);
    let x_405 : u32 = u_xlatu_loop_1;
    u_xlati15 = bitcast<i32>((x_405 & 3u));
    let x_408 : u32 = u_xlatu6;
    let x_411 : vec4<f32> = x_288.unity_LightIndices[bitcast<i32>(x_408)];
    let x_421 : i32 = u_xlati15;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_426 : vec4<u32> = indexable[x_421];
    u_xlat6.x = dot(x_411, bitcast<vec4<f32>>(x_426));
    let x_432 : f32 = u_xlat6.x;
    u_xlati6 = i32(x_432);
    let x_435 : vec3<f32> = vs_TEXCOORD1;
    let x_446 : i32 = u_xlati6;
    let x_448 : vec4<f32> = x_445.x_AdditionalLightsPosition[x_446];
    let x_451 : i32 = u_xlati6;
    let x_453 : vec4<f32> = x_445.x_AdditionalLightsPosition[x_451];
    u_xlat15 = ((-(x_435) * vec3<f32>(x_448.w, x_448.w, x_448.w)) + vec3<f32>(x_453.x, x_453.y, x_453.z));
    let x_457 : vec3<f32> = u_xlat15;
    let x_458 : vec3<f32> = u_xlat15;
    u_xlat7.x = dot(x_457, x_458);
    let x_462 : f32 = u_xlat7.x;
    u_xlat7.x = max(x_462, 0.00006103515625f);
    let x_467 : f32 = u_xlat7.x;
    u_xlat16.x = inverseSqrt(x_467);
    let x_470 : vec3<f32> = u_xlat15;
    let x_471 : vec3<f32> = u_xlat16;
    u_xlat15 = (x_470 * vec3<f32>(x_471.x, x_471.x, x_471.x));
    let x_475 : f32 = u_xlat7.x;
    u_xlat16.x = (1.0f / x_475);
    let x_479 : f32 = u_xlat7.x;
    let x_480 : i32 = u_xlati6;
    let x_482 : f32 = x_445.x_AdditionalLightsAttenuation[x_480].x;
    u_xlat7.x = (x_479 * x_482);
    let x_486 : f32 = u_xlat7.x;
    let x_489 : f32 = u_xlat7.x;
    u_xlat7.x = ((-(x_486) * x_489) + 1.0f);
    let x_494 : f32 = u_xlat7.x;
    u_xlat7.x = max(x_494, 0.0f);
    let x_498 : f32 = u_xlat7.x;
    let x_500 : f32 = u_xlat7.x;
    u_xlat7.x = (x_498 * x_500);
    let x_504 : f32 = u_xlat7.x;
    let x_506 : f32 = u_xlat16.x;
    u_xlat7.x = (x_504 * x_506);
    let x_509 : i32 = u_xlati6;
    let x_511 : vec4<f32> = x_445.x_AdditionalLightsSpotDir[x_509];
    let x_513 : vec3<f32> = u_xlat15;
    u_xlat16.x = dot(vec3<f32>(x_511.x, x_511.y, x_511.z), x_513);
    let x_517 : f32 = u_xlat16.x;
    let x_518 : i32 = u_xlati6;
    let x_520 : f32 = x_445.x_AdditionalLightsAttenuation[x_518].z;
    let x_522 : i32 = u_xlati6;
    let x_524 : f32 = x_445.x_AdditionalLightsAttenuation[x_522].w;
    u_xlat16.x = ((x_517 * x_520) + x_524);
    let x_528 : f32 = u_xlat16.x;
    u_xlat16.x = clamp(x_528, 0.0f, 1.0f);
    let x_532 : f32 = u_xlat16.x;
    let x_534 : f32 = u_xlat16.x;
    u_xlat16.x = (x_532 * x_534);
    let x_538 : f32 = u_xlat16.x;
    let x_540 : f32 = u_xlat7.x;
    u_xlat7.x = (x_538 * x_540);
    let x_545 : i32 = u_xlati6;
    let x_547 : f32 = x_227.x_AdditionalShadowParams[x_545].w;
    u_xlati16 = i32(x_547);
    let x_550 : i32 = u_xlati16;
    u_xlatb25 = (x_550 >= 0i);
    let x_552 : bool = u_xlatb25;
    if (x_552) {
      let x_556 : i32 = u_xlati6;
      let x_558 : f32 = x_227.x_AdditionalShadowParams[x_556].z;
      u_xlatb25 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_558, x_558, x_558, x_558))));
      let x_563 : bool = u_xlatb25;
      if (x_563) {
        let x_568 : vec3<f32> = u_xlat15;
        let x_571 : vec3<f32> = u_xlat15;
        let x_574 : vec4<bool> = (abs(vec4<f32>(x_568.z, x_568.z, x_568.y, x_568.z)) >= abs(vec4<f32>(x_571.x, x_571.y, x_571.x, x_571.x)));
        let x_576 : vec3<bool> = vec3<bool>(x_574.x, x_574.y, x_574.z);
        let x_577 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_576.x, x_576.y, x_576.z, x_577.w);
        let x_580 : bool = u_xlatb8.y;
        let x_582 : bool = u_xlatb8.x;
        u_xlatb25 = (x_580 & x_582);
        let x_584 : vec3<f32> = u_xlat15;
        let x_587 : vec4<bool> = (-(vec4<f32>(x_584.z, x_584.y, x_584.z, x_584.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_588 : vec3<bool> = vec3<bool>(x_587.x, x_587.y, x_587.w);
        let x_589 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_588.x, x_588.y, x_589.z, x_588.z);
        let x_593 : bool = u_xlatb8.x;
        u_xlat8.x = select(4.0f, 5.0f, x_593);
        let x_599 : bool = u_xlatb8.y;
        u_xlat8.y = select(2.0f, 3.0f, x_599);
        let x_606 : bool = u_xlatb8.w;
        u_xlat34 = select(0.0f, 1.0f, x_606);
        let x_609 : bool = u_xlatb8.z;
        if (x_609) {
          let x_614 : f32 = u_xlat8.y;
          x_610 = x_614;
        } else {
          let x_616 : f32 = u_xlat34;
          x_610 = x_616;
        }
        let x_617 : f32 = x_610;
        u_xlat34 = x_617;
        let x_619 : bool = u_xlatb25;
        if (x_619) {
          let x_624 : f32 = u_xlat8.x;
          x_620 = x_624;
        } else {
          let x_626 : f32 = u_xlat34;
          x_620 = x_626;
        }
        let x_627 : f32 = x_620;
        u_xlat25 = x_627;
        let x_628 : i32 = u_xlati6;
        let x_630 : f32 = x_227.x_AdditionalShadowParams[x_628].w;
        u_xlat34 = trunc(x_630);
        let x_632 : f32 = u_xlat25;
        let x_633 : f32 = u_xlat34;
        u_xlat25 = (x_632 + x_633);
        let x_635 : f32 = u_xlat25;
        u_xlati16 = i32(x_635);
      }
      let x_637 : i32 = u_xlati16;
      u_xlati16 = (x_637 << bitcast<u32>(2i));
      let x_639 : vec3<f32> = vs_TEXCOORD1;
      let x_642 : i32 = u_xlati16;
      let x_645 : i32 = u_xlati16;
      let x_649 : vec4<f32> = x_227.x_AdditionalLightsWorldToShadow[((x_642 + 1i) / 4i)][((x_645 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_639.y, x_639.y, x_639.y, x_639.y) * x_649);
      let x_651 : i32 = u_xlati16;
      let x_653 : i32 = u_xlati16;
      let x_656 : vec4<f32> = x_227.x_AdditionalLightsWorldToShadow[(x_651 / 4i)][(x_653 % 4i)];
      let x_657 : vec3<f32> = vs_TEXCOORD1;
      let x_660 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_656 * vec4<f32>(x_657.x, x_657.x, x_657.x, x_657.x)) + x_660);
      let x_662 : i32 = u_xlati16;
      let x_665 : i32 = u_xlati16;
      let x_669 : vec4<f32> = x_227.x_AdditionalLightsWorldToShadow[((x_662 + 2i) / 4i)][((x_665 + 2i) % 4i)];
      let x_670 : vec3<f32> = vs_TEXCOORD1;
      let x_673 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_669 * vec4<f32>(x_670.z, x_670.z, x_670.z, x_670.z)) + x_673);
      let x_675 : vec4<f32> = u_xlat8;
      let x_676 : i32 = u_xlati16;
      let x_679 : i32 = u_xlati16;
      let x_683 : vec4<f32> = x_227.x_AdditionalLightsWorldToShadow[((x_676 + 3i) / 4i)][((x_679 + 3i) % 4i)];
      u_xlat8 = (x_675 + x_683);
      let x_685 : vec4<f32> = u_xlat8;
      let x_687 : vec4<f32> = u_xlat8;
      u_xlat16 = (vec3<f32>(x_685.x, x_685.y, x_685.z) / vec3<f32>(x_687.w, x_687.w, x_687.w));
      let x_691 : vec3<f32> = u_xlat16;
      let x_692 : vec2<f32> = vec2<f32>(x_691.x, x_691.y);
      let x_694 : f32 = u_xlat16.z;
      txVec1 = vec3<f32>(x_692.x, x_692.y, x_694);
      let x_702 : vec3<f32> = txVec1;
      let x_704 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_702.xy, x_702.z);
      u_xlat16.x = x_704;
      let x_706 : i32 = u_xlati6;
      let x_708 : f32 = x_227.x_AdditionalShadowParams[x_706].x;
      u_xlat25 = (1.0f + -(x_708));
      let x_712 : f32 = u_xlat16.x;
      let x_713 : i32 = u_xlati6;
      let x_715 : f32 = x_227.x_AdditionalShadowParams[x_713].x;
      let x_717 : f32 = u_xlat25;
      u_xlat16.x = ((x_712 * x_715) + x_717);
      let x_721 : f32 = u_xlat16.z;
      u_xlatb25 = (0.0f >= x_721);
      let x_725 : f32 = u_xlat16.z;
      u_xlatb34 = (x_725 >= 1.0f);
      let x_727 : bool = u_xlatb34;
      let x_728 : bool = u_xlatb25;
      u_xlatb25 = (x_727 | x_728);
      let x_730 : bool = u_xlatb25;
      if (x_730) {
        x_731 = 1.0f;
      } else {
        let x_736 : f32 = u_xlat16.x;
        x_731 = x_736;
      }
      let x_737 : f32 = x_731;
      u_xlat16.x = x_737;
    } else {
      u_xlat16.x = 1.0f;
    }
    let x_742 : f32 = u_xlat16.x;
    u_xlat25 = (-(x_742) + 1.0f);
    let x_745 : f32 = u_xlat30;
    let x_746 : f32 = u_xlat25;
    let x_749 : f32 = u_xlat16.x;
    u_xlat16.x = ((x_745 * x_746) + x_749);
    let x_753 : f32 = u_xlat16.x;
    let x_755 : f32 = u_xlat7.x;
    u_xlat7.x = (x_753 * x_755);
    let x_758 : vec3<f32> = u_xlat7;
    let x_760 : i32 = u_xlati6;
    let x_762 : vec4<f32> = x_445.x_AdditionalLightsColor[x_760];
    u_xlat7 = (vec3<f32>(x_758.x, x_758.x, x_758.x) * vec3<f32>(x_762.x, x_762.y, x_762.z));
    let x_765 : vec3<f32> = u_xlat1;
    let x_766 : vec3<f32> = u_xlat15;
    u_xlat6.x = dot(x_765, x_766);
    let x_770 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_770, 0.0f, 1.0f);
    let x_773 : vec3<f32> = u_xlat6;
    let x_775 : vec3<f32> = u_xlat7;
    let x_776 : vec3<f32> = (vec3<f32>(x_773.x, x_773.x, x_773.x) * x_775);
    let x_777 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_776.x, x_776.y, x_776.z, x_777.w);
    let x_779 : vec3<f32> = u_xlat2;
    let x_780 : f32 = u_xlat28;
    let x_783 : vec3<f32> = u_xlat15;
    u_xlat6 = ((x_779 * vec3<f32>(x_780, x_780, x_780)) + x_783);
    let x_786 : vec3<f32> = u_xlat6;
    let x_787 : vec3<f32> = u_xlat6;
    u_xlat33 = dot(x_786, x_787);
    let x_789 : f32 = u_xlat33;
    u_xlat33 = max(x_789, 1.17549435e-38f);
    let x_791 : f32 = u_xlat33;
    u_xlat33 = inverseSqrt(x_791);
    let x_793 : f32 = u_xlat33;
    let x_795 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_793, x_793, x_793) * x_795);
    let x_797 : vec3<f32> = u_xlat1;
    let x_798 : vec3<f32> = u_xlat6;
    u_xlat6.x = dot(x_797, x_798);
    let x_802 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_802, 0.0f, 1.0f);
    let x_806 : f32 = u_xlat6.x;
    u_xlat6.x = log2(x_806);
    let x_809 : f32 = u_xlat29;
    let x_811 : f32 = u_xlat6.x;
    u_xlat6.x = (x_809 * x_811);
    let x_815 : f32 = u_xlat6.x;
    u_xlat6.x = exp2(x_815);
    let x_818 : vec3<f32> = u_xlat6;
    let x_821 : vec4<f32> = x_41.x_SpecColor;
    u_xlat6 = (vec3<f32>(x_818.x, x_818.x, x_818.x) * vec3<f32>(x_821.x, x_821.y, x_821.z));
    let x_824 : vec3<f32> = u_xlat6;
    let x_825 : vec3<f32> = u_xlat7;
    u_xlat6 = (x_824 * x_825);
    let x_827 : vec4<f32> = u_xlat8;
    let x_829 : vec4<f32> = u_xlat0;
    let x_832 : vec3<f32> = u_xlat6;
    u_xlat6 = ((vec3<f32>(x_827.x, x_827.y, x_827.z) * vec3<f32>(x_829.y, x_829.z, x_829.w)) + x_832);
    let x_834 : vec3<f32> = u_xlat5;
    let x_835 : vec3<f32> = u_xlat6;
    u_xlat5 = (x_834 + x_835);

    continuing {
      let x_837 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_837 + bitcast<u32>(1i));
    }
  }
  let x_840 : vec4<f32> = u_xlat3;
  let x_842 : vec4<f32> = u_xlat0;
  let x_845 : vec3<f32> = u_xlat4;
  u_xlat9 = ((vec3<f32>(x_840.x, x_840.y, x_840.z) * vec3<f32>(x_842.y, x_842.z, x_842.w)) + x_845);
  let x_849 : vec3<f32> = u_xlat5;
  let x_850 : vec3<f32> = u_xlat9;
  let x_851 : vec3<f32> = (x_849 + x_850);
  let x_852 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_851.x, x_851.y, x_851.z, x_852.w);
  let x_856 : f32 = x_41.x_Surface;
  u_xlatb9 = (x_856 == 1.0f);
  let x_858 : bool = u_xlatb9;
  if (x_858) {
    let x_863 : f32 = u_xlat0.x;
    x_859 = x_863;
  } else {
    x_859 = 1.0f;
  }
  let x_865 : f32 = x_859;
  SV_Target0.w = x_865;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD7_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


