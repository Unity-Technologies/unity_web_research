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

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(3) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

@group(1) @binding(3) var<uniform> x_41 : UnityPerMaterial;

var<private> u_xlatb1 : bool;

var<private> u_xlat10 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat29 : f32;

var<private> u_xlat3 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_151 : UnityPerDraw;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat28 : f32;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(4) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat30 : f32;

@group(1) @binding(4) var<uniform> x_258 : LightShadows;

var<private> u_xlatb30 : bool;

var<private> u_xlatb4 : bool;

var<private> u_xlat13 : f32;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat31 : f32;

var<private> u_xlatu31 : u32;

var<private> u_xlatu6 : u32;

var<private> u_xlati15 : i32;

var<private> u_xlati6 : i32;

var<private> u_xlat15 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_485 : AdditionalLights;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlat16 : vec3<f32>;

var<private> u_xlati16 : i32;

var<private> u_xlatb25 : bool;

var<private> u_xlatb8 : vec4<bool>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat34 : f32;

var<private> u_xlat25 : f32;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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
  var x_650 : f32;
  var x_660 : f32;
  var txVec1 : vec3<f32>;
  var x_771 : f32;
  var x_901 : f32;
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
  let x_130 : vec4<f32> = u_xlat1;
  let x_132 : vec3<f32> = vs_TEXCOORD2;
  let x_133 : vec3<f32> = (vec3<f32>(x_130.x, x_130.x, x_130.x) * x_132);
  let x_134 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_133.x, x_133.y, x_133.z, x_134.w);
  let x_137 : vec3<f32> = u_xlat2;
  let x_138 : vec3<f32> = u_xlat2;
  u_xlat29 = dot(x_137, x_138);
  let x_140 : f32 = u_xlat29;
  u_xlat29 = max(x_140, 0.00006103515625f);
  let x_143 : f32 = u_xlat29;
  u_xlat29 = inverseSqrt(x_143);
  u_xlat1.w = 1.0f;
  let x_154 : vec4<f32> = x_151.unity_SHAr;
  let x_155 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_154, x_155);
  let x_160 : vec4<f32> = x_151.unity_SHAg;
  let x_161 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_160, x_161);
  let x_166 : vec4<f32> = x_151.unity_SHAb;
  let x_167 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_166, x_167);
  let x_171 : vec4<f32> = u_xlat1;
  let x_173 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_171.y, x_171.z, x_171.z, x_171.x) * vec4<f32>(x_173.x, x_173.y, x_173.z, x_173.z));
  let x_179 : vec4<f32> = x_151.unity_SHBr;
  let x_180 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_179, x_180);
  let x_185 : vec4<f32> = x_151.unity_SHBg;
  let x_186 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_185, x_186);
  let x_191 : vec4<f32> = x_151.unity_SHBb;
  let x_192 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_191, x_192);
  let x_197 : f32 = u_xlat1.y;
  let x_199 : f32 = u_xlat1.y;
  u_xlat28 = (x_197 * x_199);
  let x_202 : f32 = u_xlat1.x;
  let x_204 : f32 = u_xlat1.x;
  let x_206 : f32 = u_xlat28;
  u_xlat28 = ((x_202 * x_204) + -(x_206));
  let x_211 : vec4<f32> = x_151.unity_SHC;
  let x_213 : f32 = u_xlat28;
  let x_216 : vec3<f32> = u_xlat5;
  let x_217 : vec3<f32> = ((vec3<f32>(x_211.x, x_211.y, x_211.z) * vec3<f32>(x_213, x_213, x_213)) + x_216);
  let x_218 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_217.x, x_217.y, x_217.z, x_218.w);
  let x_220 : vec3<f32> = u_xlat3;
  let x_221 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_220 + vec3<f32>(x_221.x, x_221.y, x_221.z));
  let x_224 : vec3<f32> = u_xlat3;
  u_xlat3 = max(x_224, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_231 : vec4<f32> = vs_TEXCOORD6;
  let x_232 : vec2<f32> = vec2<f32>(x_231.x, x_231.y);
  let x_235 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_232.x, x_232.y, x_235);
  let x_247 : vec3<f32> = txVec0;
  let x_249 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_247.xy, x_247.z);
  u_xlat28 = x_249;
  let x_261 : f32 = x_258.x_MainLightShadowParams.x;
  u_xlat30 = (-(x_261) + 1.0f);
  let x_264 : f32 = u_xlat28;
  let x_266 : f32 = x_258.x_MainLightShadowParams.x;
  let x_268 : f32 = u_xlat30;
  u_xlat28 = ((x_264 * x_266) + x_268);
  let x_272 : f32 = vs_TEXCOORD6.z;
  u_xlatb30 = (0.0f >= x_272);
  let x_276 : f32 = vs_TEXCOORD6.z;
  u_xlatb4 = (x_276 >= 1.0f);
  let x_278 : bool = u_xlatb30;
  let x_279 : bool = u_xlatb4;
  u_xlatb30 = (x_278 | x_279);
  let x_281 : bool = u_xlatb30;
  let x_282 : f32 = u_xlat28;
  u_xlat28 = select(x_282, 1.0f, x_281);
  let x_284 : vec3<f32> = vs_TEXCOORD1;
  let x_286 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_288 : vec3<f32> = (x_284 + -(x_286));
  let x_289 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_288.x, x_288.y, x_288.z, x_289.w);
  let x_291 : vec4<f32> = u_xlat4;
  let x_293 : vec4<f32> = u_xlat4;
  u_xlat30 = dot(vec3<f32>(x_291.x, x_291.y, x_291.z), vec3<f32>(x_293.x, x_293.y, x_293.z));
  let x_296 : f32 = u_xlat30;
  let x_298 : f32 = x_258.x_MainLightShadowParams.z;
  let x_301 : f32 = x_258.x_MainLightShadowParams.w;
  u_xlat4.x = ((x_296 * x_298) + x_301);
  let x_305 : f32 = u_xlat4.x;
  u_xlat4.x = clamp(x_305, 0.0f, 1.0f);
  let x_309 : f32 = u_xlat28;
  u_xlat13 = (-(x_309) + 1.0f);
  let x_313 : f32 = u_xlat4.x;
  let x_314 : f32 = u_xlat13;
  let x_316 : f32 = u_xlat28;
  u_xlat28 = ((x_313 * x_314) + x_316);
  let x_318 : f32 = u_xlat28;
  let x_320 : f32 = x_151.unity_LightData.z;
  u_xlat28 = (x_318 * x_320);
  let x_322 : f32 = u_xlat28;
  let x_325 : vec4<f32> = x_28.x_MainLightColor;
  let x_327 : vec3<f32> = (vec3<f32>(x_322, x_322, x_322) * vec3<f32>(x_325.x, x_325.y, x_325.z));
  let x_328 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_327.x, x_327.y, x_327.z, x_328.w);
  let x_330 : vec4<f32> = u_xlat1;
  let x_333 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat28 = dot(vec3<f32>(x_330.x, x_330.y, x_330.z), vec3<f32>(x_333.x, x_333.y, x_333.z));
  let x_336 : f32 = u_xlat28;
  u_xlat28 = clamp(x_336, 0.0f, 1.0f);
  let x_338 : f32 = u_xlat28;
  let x_340 : vec4<f32> = u_xlat4;
  u_xlat5 = (vec3<f32>(x_338, x_338, x_338) * vec3<f32>(x_340.x, x_340.y, x_340.z));
  let x_344 : f32 = u_xlat0.x;
  u_xlat28 = ((x_344 * 10.0f) + 1.0f);
  let x_348 : f32 = u_xlat28;
  u_xlat28 = exp2(x_348);
  let x_351 : vec3<f32> = u_xlat2;
  let x_352 : f32 = u_xlat29;
  let x_356 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat6 = ((x_351 * vec3<f32>(x_352, x_352, x_352)) + vec3<f32>(x_356.x, x_356.y, x_356.z));
  let x_360 : vec3<f32> = u_xlat6;
  let x_361 : vec3<f32> = u_xlat6;
  u_xlat31 = dot(x_360, x_361);
  let x_363 : f32 = u_xlat31;
  u_xlat31 = max(x_363, 1.17549435e-38f);
  let x_366 : f32 = u_xlat31;
  u_xlat31 = inverseSqrt(x_366);
  let x_368 : f32 = u_xlat31;
  let x_370 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_368, x_368, x_368) * x_370);
  let x_372 : vec4<f32> = u_xlat1;
  let x_374 : vec3<f32> = u_xlat6;
  u_xlat31 = dot(vec3<f32>(x_372.x, x_372.y, x_372.z), x_374);
  let x_376 : f32 = u_xlat31;
  u_xlat31 = clamp(x_376, 0.0f, 1.0f);
  let x_378 : f32 = u_xlat31;
  u_xlat31 = log2(x_378);
  let x_380 : f32 = u_xlat28;
  let x_381 : f32 = u_xlat31;
  u_xlat31 = (x_380 * x_381);
  let x_383 : f32 = u_xlat31;
  u_xlat31 = exp2(x_383);
  let x_385 : f32 = u_xlat31;
  let x_388 : vec4<f32> = x_41.x_SpecColor;
  u_xlat6 = (vec3<f32>(x_385, x_385, x_385) * vec3<f32>(x_388.x, x_388.y, x_388.z));
  let x_391 : vec4<f32> = u_xlat4;
  let x_393 : vec3<f32> = u_xlat6;
  let x_394 : vec3<f32> = (vec3<f32>(x_391.x, x_391.y, x_391.z) * x_393);
  let x_395 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_394.x, x_394.y, x_394.z, x_395.w);
  let x_397 : vec3<f32> = u_xlat5;
  let x_398 : vec4<f32> = u_xlat0;
  let x_401 : vec4<f32> = u_xlat4;
  let x_403 : vec3<f32> = ((x_397 * vec3<f32>(x_398.y, x_398.z, x_398.w)) + vec3<f32>(x_401.x, x_401.y, x_401.z));
  let x_404 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_403.x, x_403.y, x_403.z, x_404.w);
  let x_408 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_410 : f32 = x_151.unity_LightData.y;
  u_xlat31 = min(x_408, x_410);
  let x_414 : f32 = u_xlat31;
  u_xlatu31 = bitcast<u32>(i32(x_414));
  let x_417 : f32 = u_xlat30;
  let x_420 : f32 = x_258.x_AdditionalShadowFadeParams.x;
  let x_423 : f32 = x_258.x_AdditionalShadowFadeParams.y;
  u_xlat30 = ((x_417 * x_420) + x_423);
  let x_425 : f32 = u_xlat30;
  u_xlat30 = clamp(x_425, 0.0f, 1.0f);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_437 : u32 = u_xlatu_loop_1;
    let x_438 : u32 = u_xlatu31;
    if ((x_437 < x_438)) {
    } else {
      break;
    }
    let x_441 : u32 = u_xlatu_loop_1;
    u_xlatu6 = (x_441 >> 2u);
    let x_445 : u32 = u_xlatu_loop_1;
    u_xlati15 = bitcast<i32>((x_445 & 3u));
    let x_448 : u32 = u_xlatu6;
    let x_451 : vec4<f32> = x_151.unity_LightIndices[bitcast<i32>(x_448)];
    let x_461 : i32 = u_xlati15;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_466 : vec4<u32> = indexable[x_461];
    u_xlat6.x = dot(x_451, bitcast<vec4<f32>>(x_466));
    let x_472 : f32 = u_xlat6.x;
    u_xlati6 = i32(x_472);
    let x_475 : vec3<f32> = vs_TEXCOORD1;
    let x_486 : i32 = u_xlati6;
    let x_488 : vec4<f32> = x_485.x_AdditionalLightsPosition[x_486];
    let x_491 : i32 = u_xlati6;
    let x_493 : vec4<f32> = x_485.x_AdditionalLightsPosition[x_491];
    u_xlat15 = ((-(x_475) * vec3<f32>(x_488.w, x_488.w, x_488.w)) + vec3<f32>(x_493.x, x_493.y, x_493.z));
    let x_497 : vec3<f32> = u_xlat15;
    let x_498 : vec3<f32> = u_xlat15;
    u_xlat7.x = dot(x_497, x_498);
    let x_502 : f32 = u_xlat7.x;
    u_xlat7.x = max(x_502, 0.00006103515625f);
    let x_507 : f32 = u_xlat7.x;
    u_xlat16.x = inverseSqrt(x_507);
    let x_510 : vec3<f32> = u_xlat15;
    let x_511 : vec3<f32> = u_xlat16;
    u_xlat15 = (x_510 * vec3<f32>(x_511.x, x_511.x, x_511.x));
    let x_515 : f32 = u_xlat7.x;
    u_xlat16.x = (1.0f / x_515);
    let x_519 : f32 = u_xlat7.x;
    let x_520 : i32 = u_xlati6;
    let x_522 : f32 = x_485.x_AdditionalLightsAttenuation[x_520].x;
    u_xlat7.x = (x_519 * x_522);
    let x_526 : f32 = u_xlat7.x;
    let x_529 : f32 = u_xlat7.x;
    u_xlat7.x = ((-(x_526) * x_529) + 1.0f);
    let x_534 : f32 = u_xlat7.x;
    u_xlat7.x = max(x_534, 0.0f);
    let x_538 : f32 = u_xlat7.x;
    let x_540 : f32 = u_xlat7.x;
    u_xlat7.x = (x_538 * x_540);
    let x_544 : f32 = u_xlat7.x;
    let x_546 : f32 = u_xlat16.x;
    u_xlat7.x = (x_544 * x_546);
    let x_549 : i32 = u_xlati6;
    let x_551 : vec4<f32> = x_485.x_AdditionalLightsSpotDir[x_549];
    let x_553 : vec3<f32> = u_xlat15;
    u_xlat16.x = dot(vec3<f32>(x_551.x, x_551.y, x_551.z), x_553);
    let x_557 : f32 = u_xlat16.x;
    let x_558 : i32 = u_xlati6;
    let x_560 : f32 = x_485.x_AdditionalLightsAttenuation[x_558].z;
    let x_562 : i32 = u_xlati6;
    let x_564 : f32 = x_485.x_AdditionalLightsAttenuation[x_562].w;
    u_xlat16.x = ((x_557 * x_560) + x_564);
    let x_568 : f32 = u_xlat16.x;
    u_xlat16.x = clamp(x_568, 0.0f, 1.0f);
    let x_572 : f32 = u_xlat16.x;
    let x_574 : f32 = u_xlat16.x;
    u_xlat16.x = (x_572 * x_574);
    let x_578 : f32 = u_xlat16.x;
    let x_580 : f32 = u_xlat7.x;
    u_xlat7.x = (x_578 * x_580);
    let x_585 : i32 = u_xlati6;
    let x_587 : f32 = x_258.x_AdditionalShadowParams[x_585].w;
    u_xlati16 = i32(x_587);
    let x_590 : i32 = u_xlati16;
    u_xlatb25 = (x_590 >= 0i);
    let x_592 : bool = u_xlatb25;
    if (x_592) {
      let x_596 : i32 = u_xlati6;
      let x_598 : f32 = x_258.x_AdditionalShadowParams[x_596].z;
      u_xlatb25 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_598, x_598, x_598, x_598))));
      let x_603 : bool = u_xlatb25;
      if (x_603) {
        let x_608 : vec3<f32> = u_xlat15;
        let x_611 : vec3<f32> = u_xlat15;
        let x_614 : vec4<bool> = (abs(vec4<f32>(x_608.z, x_608.z, x_608.y, x_608.z)) >= abs(vec4<f32>(x_611.x, x_611.y, x_611.x, x_611.x)));
        let x_616 : vec3<bool> = vec3<bool>(x_614.x, x_614.y, x_614.z);
        let x_617 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_616.x, x_616.y, x_616.z, x_617.w);
        let x_620 : bool = u_xlatb8.y;
        let x_622 : bool = u_xlatb8.x;
        u_xlatb25 = (x_620 & x_622);
        let x_624 : vec3<f32> = u_xlat15;
        let x_627 : vec4<bool> = (-(vec4<f32>(x_624.z, x_624.y, x_624.z, x_624.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_628 : vec3<bool> = vec3<bool>(x_627.x, x_627.y, x_627.w);
        let x_629 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_628.x, x_628.y, x_629.z, x_628.z);
        let x_633 : bool = u_xlatb8.x;
        u_xlat8.x = select(4.0f, 5.0f, x_633);
        let x_639 : bool = u_xlatb8.y;
        u_xlat8.y = select(2.0f, 3.0f, x_639);
        let x_646 : bool = u_xlatb8.w;
        u_xlat34 = select(0.0f, 1.0f, x_646);
        let x_649 : bool = u_xlatb8.z;
        if (x_649) {
          let x_654 : f32 = u_xlat8.y;
          x_650 = x_654;
        } else {
          let x_656 : f32 = u_xlat34;
          x_650 = x_656;
        }
        let x_657 : f32 = x_650;
        u_xlat34 = x_657;
        let x_659 : bool = u_xlatb25;
        if (x_659) {
          let x_664 : f32 = u_xlat8.x;
          x_660 = x_664;
        } else {
          let x_666 : f32 = u_xlat34;
          x_660 = x_666;
        }
        let x_667 : f32 = x_660;
        u_xlat25 = x_667;
        let x_668 : i32 = u_xlati6;
        let x_670 : f32 = x_258.x_AdditionalShadowParams[x_668].w;
        u_xlat34 = trunc(x_670);
        let x_672 : f32 = u_xlat25;
        let x_673 : f32 = u_xlat34;
        u_xlat25 = (x_672 + x_673);
        let x_675 : f32 = u_xlat25;
        u_xlati16 = i32(x_675);
      }
      let x_677 : i32 = u_xlati16;
      u_xlati16 = (x_677 << bitcast<u32>(2i));
      let x_679 : vec3<f32> = vs_TEXCOORD1;
      let x_682 : i32 = u_xlati16;
      let x_685 : i32 = u_xlati16;
      let x_689 : vec4<f32> = x_258.x_AdditionalLightsWorldToShadow[((x_682 + 1i) / 4i)][((x_685 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_679.y, x_679.y, x_679.y, x_679.y) * x_689);
      let x_691 : i32 = u_xlati16;
      let x_693 : i32 = u_xlati16;
      let x_696 : vec4<f32> = x_258.x_AdditionalLightsWorldToShadow[(x_691 / 4i)][(x_693 % 4i)];
      let x_697 : vec3<f32> = vs_TEXCOORD1;
      let x_700 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_696 * vec4<f32>(x_697.x, x_697.x, x_697.x, x_697.x)) + x_700);
      let x_702 : i32 = u_xlati16;
      let x_705 : i32 = u_xlati16;
      let x_709 : vec4<f32> = x_258.x_AdditionalLightsWorldToShadow[((x_702 + 2i) / 4i)][((x_705 + 2i) % 4i)];
      let x_710 : vec3<f32> = vs_TEXCOORD1;
      let x_713 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_709 * vec4<f32>(x_710.z, x_710.z, x_710.z, x_710.z)) + x_713);
      let x_715 : vec4<f32> = u_xlat8;
      let x_716 : i32 = u_xlati16;
      let x_719 : i32 = u_xlati16;
      let x_723 : vec4<f32> = x_258.x_AdditionalLightsWorldToShadow[((x_716 + 3i) / 4i)][((x_719 + 3i) % 4i)];
      u_xlat8 = (x_715 + x_723);
      let x_725 : vec4<f32> = u_xlat8;
      let x_727 : vec4<f32> = u_xlat8;
      u_xlat16 = (vec3<f32>(x_725.x, x_725.y, x_725.z) / vec3<f32>(x_727.w, x_727.w, x_727.w));
      let x_731 : vec3<f32> = u_xlat16;
      let x_732 : vec2<f32> = vec2<f32>(x_731.x, x_731.y);
      let x_734 : f32 = u_xlat16.z;
      txVec1 = vec3<f32>(x_732.x, x_732.y, x_734);
      let x_742 : vec3<f32> = txVec1;
      let x_744 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_742.xy, x_742.z);
      u_xlat16.x = x_744;
      let x_746 : i32 = u_xlati6;
      let x_748 : f32 = x_258.x_AdditionalShadowParams[x_746].x;
      u_xlat25 = (1.0f + -(x_748));
      let x_752 : f32 = u_xlat16.x;
      let x_753 : i32 = u_xlati6;
      let x_755 : f32 = x_258.x_AdditionalShadowParams[x_753].x;
      let x_757 : f32 = u_xlat25;
      u_xlat16.x = ((x_752 * x_755) + x_757);
      let x_761 : f32 = u_xlat16.z;
      u_xlatb25 = (0.0f >= x_761);
      let x_765 : f32 = u_xlat16.z;
      u_xlatb34 = (x_765 >= 1.0f);
      let x_767 : bool = u_xlatb34;
      let x_768 : bool = u_xlatb25;
      u_xlatb25 = (x_767 | x_768);
      let x_770 : bool = u_xlatb25;
      if (x_770) {
        x_771 = 1.0f;
      } else {
        let x_776 : f32 = u_xlat16.x;
        x_771 = x_776;
      }
      let x_777 : f32 = x_771;
      u_xlat16.x = x_777;
    } else {
      u_xlat16.x = 1.0f;
    }
    let x_782 : f32 = u_xlat16.x;
    u_xlat25 = (-(x_782) + 1.0f);
    let x_785 : f32 = u_xlat30;
    let x_786 : f32 = u_xlat25;
    let x_789 : f32 = u_xlat16.x;
    u_xlat16.x = ((x_785 * x_786) + x_789);
    let x_793 : f32 = u_xlat16.x;
    let x_795 : f32 = u_xlat7.x;
    u_xlat7.x = (x_793 * x_795);
    let x_798 : vec3<f32> = u_xlat7;
    let x_800 : i32 = u_xlati6;
    let x_802 : vec4<f32> = x_485.x_AdditionalLightsColor[x_800];
    u_xlat7 = (vec3<f32>(x_798.x, x_798.x, x_798.x) * vec3<f32>(x_802.x, x_802.y, x_802.z));
    let x_805 : vec4<f32> = u_xlat1;
    let x_807 : vec3<f32> = u_xlat15;
    u_xlat6.x = dot(vec3<f32>(x_805.x, x_805.y, x_805.z), x_807);
    let x_811 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_811, 0.0f, 1.0f);
    let x_814 : vec3<f32> = u_xlat6;
    let x_816 : vec3<f32> = u_xlat7;
    let x_817 : vec3<f32> = (vec3<f32>(x_814.x, x_814.x, x_814.x) * x_816);
    let x_818 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_817.x, x_817.y, x_817.z, x_818.w);
    let x_820 : vec3<f32> = u_xlat2;
    let x_821 : f32 = u_xlat29;
    let x_824 : vec3<f32> = u_xlat15;
    u_xlat6 = ((x_820 * vec3<f32>(x_821, x_821, x_821)) + x_824);
    let x_827 : vec3<f32> = u_xlat6;
    let x_828 : vec3<f32> = u_xlat6;
    u_xlat33 = dot(x_827, x_828);
    let x_830 : f32 = u_xlat33;
    u_xlat33 = max(x_830, 1.17549435e-38f);
    let x_832 : f32 = u_xlat33;
    u_xlat33 = inverseSqrt(x_832);
    let x_834 : f32 = u_xlat33;
    let x_836 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_834, x_834, x_834) * x_836);
    let x_838 : vec4<f32> = u_xlat1;
    let x_840 : vec3<f32> = u_xlat6;
    u_xlat6.x = dot(vec3<f32>(x_838.x, x_838.y, x_838.z), x_840);
    let x_844 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_844, 0.0f, 1.0f);
    let x_848 : f32 = u_xlat6.x;
    u_xlat6.x = log2(x_848);
    let x_851 : f32 = u_xlat28;
    let x_853 : f32 = u_xlat6.x;
    u_xlat6.x = (x_851 * x_853);
    let x_857 : f32 = u_xlat6.x;
    u_xlat6.x = exp2(x_857);
    let x_860 : vec3<f32> = u_xlat6;
    let x_863 : vec4<f32> = x_41.x_SpecColor;
    u_xlat6 = (vec3<f32>(x_860.x, x_860.x, x_860.x) * vec3<f32>(x_863.x, x_863.y, x_863.z));
    let x_866 : vec3<f32> = u_xlat6;
    let x_867 : vec3<f32> = u_xlat7;
    u_xlat6 = (x_866 * x_867);
    let x_869 : vec4<f32> = u_xlat8;
    let x_871 : vec4<f32> = u_xlat0;
    let x_874 : vec3<f32> = u_xlat6;
    u_xlat6 = ((vec3<f32>(x_869.x, x_869.y, x_869.z) * vec3<f32>(x_871.y, x_871.z, x_871.w)) + x_874);
    let x_876 : vec3<f32> = u_xlat5;
    let x_877 : vec3<f32> = u_xlat6;
    u_xlat5 = (x_876 + x_877);

    continuing {
      let x_879 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_879 + bitcast<u32>(1i));
    }
  }
  let x_882 : vec3<f32> = u_xlat3;
  let x_883 : vec4<f32> = u_xlat0;
  let x_886 : vec4<f32> = u_xlat4;
  u_xlat9 = ((x_882 * vec3<f32>(x_883.y, x_883.z, x_883.w)) + vec3<f32>(x_886.x, x_886.y, x_886.z));
  let x_891 : vec3<f32> = u_xlat5;
  let x_892 : vec3<f32> = u_xlat9;
  let x_893 : vec3<f32> = (x_891 + x_892);
  let x_894 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_893.x, x_893.y, x_893.z, x_894.w);
  let x_898 : f32 = x_41.x_Surface;
  u_xlatb9 = (x_898 == 1.0f);
  let x_900 : bool = u_xlatb9;
  if (x_900) {
    let x_905 : f32 = u_xlat0.x;
    x_901 = x_905;
  } else {
    x_901 = 1.0f;
  }
  let x_907 : f32 = x_901;
  SV_Target0.w = x_907;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


