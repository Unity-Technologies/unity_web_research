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

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_41 : UnityPerMaterial;

var<private> u_xlatb0 : bool;

var<private> u_xlat8 : f32;

var<private> u_xlat16 : f32;

var<private> u_xlat24 : f32;

var<private> u_xlatb16 : bool;

var<private> u_xlatb8 : bool;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_156 : UnityPerDraw;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(4) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(4) var<uniform> x_262 : LightShadows;

var<private> u_xlatb24 : bool;

var<private> u_xlatb1 : bool;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat26 : f32;

var<private> u_xlatu8 : u32;

var<private> u_xlatu26 : u32;

var<private> u_xlati27 : i32;

var<private> u_xlati26 : i32;

var<private> u_xlat6 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_445 : AdditionalLights;

var<private> u_xlat27 : f32;

var<private> u_xlat28 : f32;

var<private> u_xlati28 : i32;

var<private> u_xlatb29 : bool;

var<private> u_xlatb7 : vec4<bool>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat30 : f32;

var<private> u_xlat29 : f32;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb30 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu1 : u32;

var<private> u_xlatb26 : bool;

fn main_1() {
  var x_60 : f32;
  var x_110 : f32;
  var txVec0 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_580 : f32;
  var x_590 : f32;
  var txVec1 : vec3<f32>;
  var x_770 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_34 : f32 = x_27.x_GlobalMipBias.x;
  let x_35 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_34);
  u_xlat0 = x_35;
  let x_37 : vec4<f32> = u_xlat0;
  let x_45 : vec4<f32> = x_41.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_37.w, x_37.x, x_37.y, x_37.z) * vec4<f32>(x_45.w, x_45.x, x_45.y, x_45.z));
  let x_53 : f32 = u_xlat1.x;
  let x_56 : f32 = x_41.x_Cutoff;
  u_xlatb0 = (x_53 >= x_56);
  let x_58 : bool = u_xlatb0;
  if (x_58) {
    let x_64 : f32 = u_xlat1.x;
    x_60 = x_64;
  } else {
    x_60 = 0.0f;
  }
  let x_67 : f32 = x_60;
  u_xlat0.x = x_67;
  let x_72 : f32 = u_xlat0.w;
  let x_74 : f32 = x_41.x_BaseColor.w;
  let x_77 : f32 = x_41.x_Cutoff;
  u_xlat8 = ((x_72 * x_74) + -(x_77));
  let x_82 : f32 = u_xlat1.x;
  u_xlat16 = dpdxCoarse(x_82);
  let x_86 : f32 = u_xlat1.x;
  u_xlat24 = dpdyCoarse(x_86);
  let x_88 : f32 = u_xlat24;
  let x_90 : f32 = u_xlat16;
  u_xlat16 = (abs(x_88) + abs(x_90));
  let x_93 : f32 = u_xlat16;
  u_xlat16 = max(x_93, 0.00009999999747378752f);
  let x_96 : f32 = u_xlat8;
  let x_97 : f32 = u_xlat16;
  u_xlat8 = (x_96 / x_97);
  let x_99 : f32 = u_xlat8;
  u_xlat8 = (x_99 + 0.5f);
  let x_102 : f32 = u_xlat8;
  u_xlat8 = clamp(x_102, 0.0f, 1.0f);
  let x_107 : f32 = x_27.x_AlphaToMaskAvailable;
  u_xlatb16 = !((x_107 == 0.0f));
  let x_109 : bool = u_xlatb16;
  if (x_109) {
    let x_113 : f32 = u_xlat8;
    x_110 = x_113;
  } else {
    let x_116 : f32 = u_xlat0.x;
    x_110 = x_116;
  }
  let x_117 : f32 = x_110;
  u_xlat0.x = x_117;
  let x_120 : f32 = u_xlat0.x;
  u_xlat8 = (x_120 + -0.00009999999747378752f);
  let x_124 : f32 = u_xlat8;
  u_xlatb8 = (x_124 < 0.0f);
  let x_126 : bool = u_xlatb8;
  if (((select(0i, 1i, x_126) * -1i) != 0i)) {
    discard;
  }
  let x_136 : vec3<f32> = vs_TEXCOORD2;
  let x_137 : vec3<f32> = vs_TEXCOORD2;
  u_xlat8 = dot(x_136, x_137);
  let x_139 : f32 = u_xlat8;
  u_xlat8 = inverseSqrt(x_139);
  let x_142 : f32 = u_xlat8;
  let x_144 : vec3<f32> = vs_TEXCOORD2;
  let x_145 : vec3<f32> = (vec3<f32>(x_142, x_142, x_142) * x_144);
  let x_146 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_145.x, x_145.y, x_145.z, x_146.w);
  u_xlat2.w = 1.0f;
  let x_159 : vec4<f32> = x_156.unity_SHAr;
  let x_160 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_159, x_160);
  let x_165 : vec4<f32> = x_156.unity_SHAg;
  let x_166 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_165, x_166);
  let x_172 : vec4<f32> = x_156.unity_SHAb;
  let x_173 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_172, x_173);
  let x_177 : vec4<f32> = u_xlat2;
  let x_179 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_177.y, x_177.z, x_177.z, x_177.x) * vec4<f32>(x_179.x, x_179.y, x_179.z, x_179.z));
  let x_185 : vec4<f32> = x_156.unity_SHBr;
  let x_186 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_185, x_186);
  let x_191 : vec4<f32> = x_156.unity_SHBg;
  let x_192 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_191, x_192);
  let x_197 : vec4<f32> = x_156.unity_SHBb;
  let x_198 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_197, x_198);
  let x_202 : f32 = u_xlat2.y;
  let x_204 : f32 = u_xlat2.y;
  u_xlat8 = (x_202 * x_204);
  let x_207 : f32 = u_xlat2.x;
  let x_209 : f32 = u_xlat2.x;
  let x_211 : f32 = u_xlat8;
  u_xlat8 = ((x_207 * x_209) + -(x_211));
  let x_216 : vec4<f32> = x_156.unity_SHC;
  let x_218 : f32 = u_xlat8;
  let x_221 : vec3<f32> = u_xlat5;
  let x_222 : vec3<f32> = ((vec3<f32>(x_216.x, x_216.y, x_216.z) * vec3<f32>(x_218, x_218, x_218)) + x_221);
  let x_223 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_222.x, x_222.y, x_222.z, x_223.w);
  let x_225 : vec3<f32> = u_xlat3;
  let x_226 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_225 + vec3<f32>(x_226.x, x_226.y, x_226.z));
  let x_229 : vec3<f32> = u_xlat3;
  u_xlat3 = max(x_229, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_236 : vec4<f32> = vs_TEXCOORD6;
  let x_237 : vec2<f32> = vec2<f32>(x_236.x, x_236.y);
  let x_240 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_237.x, x_237.y, x_240);
  let x_252 : vec3<f32> = txVec0;
  let x_254 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_252.xy, x_252.z);
  u_xlat8 = x_254;
  let x_265 : f32 = x_262.x_MainLightShadowParams.x;
  u_xlat24 = (-(x_265) + 1.0f);
  let x_268 : f32 = u_xlat8;
  let x_270 : f32 = x_262.x_MainLightShadowParams.x;
  let x_272 : f32 = u_xlat24;
  u_xlat8 = ((x_268 * x_270) + x_272);
  let x_276 : f32 = vs_TEXCOORD6.z;
  u_xlatb24 = (0.0f >= x_276);
  let x_280 : f32 = vs_TEXCOORD6.z;
  u_xlatb1 = (x_280 >= 1.0f);
  let x_282 : bool = u_xlatb24;
  let x_283 : bool = u_xlatb1;
  u_xlatb24 = (x_282 | x_283);
  let x_285 : bool = u_xlatb24;
  let x_286 : f32 = u_xlat8;
  u_xlat8 = select(x_286, 1.0f, x_285);
  let x_289 : vec3<f32> = vs_TEXCOORD1;
  let x_293 : vec3<f32> = x_27.x_WorldSpaceCameraPos;
  let x_295 : vec3<f32> = (x_289 + -(x_293));
  let x_296 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_295.x, x_295.y, x_295.z, x_296.w);
  let x_298 : vec4<f32> = u_xlat4;
  let x_300 : vec4<f32> = u_xlat4;
  u_xlat24 = dot(vec3<f32>(x_298.x, x_298.y, x_298.z), vec3<f32>(x_300.x, x_300.y, x_300.z));
  let x_303 : f32 = u_xlat24;
  let x_305 : f32 = x_262.x_MainLightShadowParams.z;
  let x_308 : f32 = x_262.x_MainLightShadowParams.w;
  u_xlat1.x = ((x_303 * x_305) + x_308);
  let x_312 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_312, 0.0f, 1.0f);
  let x_316 : f32 = u_xlat8;
  u_xlat26 = (-(x_316) + 1.0f);
  let x_320 : f32 = u_xlat1.x;
  let x_321 : f32 = u_xlat26;
  let x_323 : f32 = u_xlat8;
  u_xlat8 = ((x_320 * x_321) + x_323);
  let x_325 : f32 = u_xlat8;
  let x_327 : f32 = x_156.unity_LightData.z;
  u_xlat8 = (x_325 * x_327);
  let x_329 : f32 = u_xlat8;
  let x_333 : vec4<f32> = x_27.x_MainLightColor;
  let x_335 : vec3<f32> = (vec3<f32>(x_329, x_329, x_329) * vec3<f32>(x_333.x, x_333.y, x_333.z));
  let x_336 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_335.x, x_335.y, x_335.z, x_336.w);
  let x_338 : vec4<f32> = u_xlat2;
  let x_342 : vec4<f32> = x_27.x_MainLightPosition;
  u_xlat8 = dot(vec3<f32>(x_338.x, x_338.y, x_338.z), vec3<f32>(x_342.x, x_342.y, x_342.z));
  let x_345 : f32 = u_xlat8;
  u_xlat8 = clamp(x_345, 0.0f, 1.0f);
  let x_347 : f32 = u_xlat8;
  let x_349 : vec4<f32> = u_xlat4;
  let x_351 : vec3<f32> = (vec3<f32>(x_347, x_347, x_347) * vec3<f32>(x_349.x, x_349.y, x_349.z));
  let x_352 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_351.x, x_351.y, x_351.z, x_352.w);
  let x_354 : vec4<f32> = u_xlat1;
  let x_356 : vec4<f32> = u_xlat4;
  let x_358 : vec3<f32> = (vec3<f32>(x_354.y, x_354.z, x_354.w) * vec3<f32>(x_356.x, x_356.y, x_356.z));
  let x_359 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_358.x, x_358.y, x_358.z, x_359.w);
  let x_361 : vec4<f32> = u_xlat0;
  let x_363 : vec4<f32> = u_xlat4;
  let x_365 : vec3<f32> = (vec3<f32>(x_361.x, x_361.x, x_361.x) * vec3<f32>(x_363.x, x_363.y, x_363.z));
  let x_366 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_365.x, x_365.y, x_365.z, x_366.w);
  let x_369 : f32 = x_27.x_AdditionalLightsCount.x;
  let x_371 : f32 = x_156.unity_LightData.y;
  u_xlat8 = min(x_369, x_371);
  let x_375 : f32 = u_xlat8;
  u_xlatu8 = bitcast<u32>(i32(x_375));
  let x_378 : f32 = u_xlat24;
  let x_381 : f32 = x_262.x_AdditionalShadowFadeParams.x;
  let x_384 : f32 = x_262.x_AdditionalShadowFadeParams.y;
  u_xlat24 = ((x_378 * x_381) + x_384);
  let x_386 : f32 = u_xlat24;
  u_xlat24 = clamp(x_386, 0.0f, 1.0f);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_398 : u32 = u_xlatu_loop_1;
    let x_399 : u32 = u_xlatu8;
    if ((x_398 < x_399)) {
    } else {
      break;
    }
    let x_402 : u32 = u_xlatu_loop_1;
    u_xlatu26 = (x_402 >> 2u);
    let x_406 : u32 = u_xlatu_loop_1;
    u_xlati27 = bitcast<i32>((x_406 & 3u));
    let x_410 : u32 = u_xlatu26;
    let x_413 : vec4<f32> = x_156.unity_LightIndices[bitcast<i32>(x_410)];
    let x_423 : i32 = u_xlati27;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_428 : vec4<u32> = indexable[x_423];
    u_xlat26 = dot(x_413, bitcast<vec4<f32>>(x_428));
    let x_432 : f32 = u_xlat26;
    u_xlati26 = i32(x_432);
    let x_435 : vec3<f32> = vs_TEXCOORD1;
    let x_446 : i32 = u_xlati26;
    let x_448 : vec4<f32> = x_445.x_AdditionalLightsPosition[x_446];
    let x_451 : i32 = u_xlati26;
    let x_453 : vec4<f32> = x_445.x_AdditionalLightsPosition[x_451];
    u_xlat6 = ((-(x_435) * vec3<f32>(x_448.w, x_448.w, x_448.w)) + vec3<f32>(x_453.x, x_453.y, x_453.z));
    let x_457 : vec3<f32> = u_xlat6;
    let x_458 : vec3<f32> = u_xlat6;
    u_xlat27 = dot(x_457, x_458);
    let x_460 : f32 = u_xlat27;
    u_xlat27 = max(x_460, 0.00006103515625f);
    let x_464 : f32 = u_xlat27;
    u_xlat28 = inverseSqrt(x_464);
    let x_466 : f32 = u_xlat28;
    let x_468 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_466, x_466, x_466) * x_468);
    let x_470 : f32 = u_xlat27;
    u_xlat28 = (1.0f / x_470);
    let x_472 : f32 = u_xlat27;
    let x_473 : i32 = u_xlati26;
    let x_475 : f32 = x_445.x_AdditionalLightsAttenuation[x_473].x;
    u_xlat27 = (x_472 * x_475);
    let x_477 : f32 = u_xlat27;
    let x_479 : f32 = u_xlat27;
    u_xlat27 = ((-(x_477) * x_479) + 1.0f);
    let x_482 : f32 = u_xlat27;
    u_xlat27 = max(x_482, 0.0f);
    let x_484 : f32 = u_xlat27;
    let x_485 : f32 = u_xlat27;
    u_xlat27 = (x_484 * x_485);
    let x_487 : f32 = u_xlat27;
    let x_488 : f32 = u_xlat28;
    u_xlat27 = (x_487 * x_488);
    let x_490 : i32 = u_xlati26;
    let x_492 : vec4<f32> = x_445.x_AdditionalLightsSpotDir[x_490];
    let x_494 : vec3<f32> = u_xlat6;
    u_xlat28 = dot(vec3<f32>(x_492.x, x_492.y, x_492.z), x_494);
    let x_496 : f32 = u_xlat28;
    let x_497 : i32 = u_xlati26;
    let x_499 : f32 = x_445.x_AdditionalLightsAttenuation[x_497].z;
    let x_501 : i32 = u_xlati26;
    let x_503 : f32 = x_445.x_AdditionalLightsAttenuation[x_501].w;
    u_xlat28 = ((x_496 * x_499) + x_503);
    let x_505 : f32 = u_xlat28;
    u_xlat28 = clamp(x_505, 0.0f, 1.0f);
    let x_507 : f32 = u_xlat28;
    let x_508 : f32 = u_xlat28;
    u_xlat28 = (x_507 * x_508);
    let x_510 : f32 = u_xlat27;
    let x_511 : f32 = u_xlat28;
    u_xlat27 = (x_510 * x_511);
    let x_515 : i32 = u_xlati26;
    let x_517 : f32 = x_262.x_AdditionalShadowParams[x_515].w;
    u_xlati28 = i32(x_517);
    let x_520 : i32 = u_xlati28;
    u_xlatb29 = (x_520 >= 0i);
    let x_522 : bool = u_xlatb29;
    if (x_522) {
      let x_526 : i32 = u_xlati26;
      let x_528 : f32 = x_262.x_AdditionalShadowParams[x_526].z;
      u_xlatb29 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_528, x_528, x_528, x_528))));
      let x_533 : bool = u_xlatb29;
      if (x_533) {
        let x_538 : vec3<f32> = u_xlat6;
        let x_541 : vec3<f32> = u_xlat6;
        let x_544 : vec4<bool> = (abs(vec4<f32>(x_538.z, x_538.z, x_538.y, x_538.z)) >= abs(vec4<f32>(x_541.x, x_541.y, x_541.x, x_541.x)));
        let x_546 : vec3<bool> = vec3<bool>(x_544.x, x_544.y, x_544.z);
        let x_547 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_546.x, x_546.y, x_546.z, x_547.w);
        let x_550 : bool = u_xlatb7.y;
        let x_552 : bool = u_xlatb7.x;
        u_xlatb29 = (x_550 & x_552);
        let x_554 : vec3<f32> = u_xlat6;
        let x_557 : vec4<bool> = (-(vec4<f32>(x_554.z, x_554.y, x_554.z, x_554.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_558 : vec3<bool> = vec3<bool>(x_557.x, x_557.y, x_557.w);
        let x_559 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_558.x, x_558.y, x_559.z, x_558.z);
        let x_563 : bool = u_xlatb7.x;
        u_xlat7.x = select(4.0f, 5.0f, x_563);
        let x_569 : bool = u_xlatb7.y;
        u_xlat7.y = select(2.0f, 3.0f, x_569);
        let x_576 : bool = u_xlatb7.w;
        u_xlat30 = select(0.0f, 1.0f, x_576);
        let x_579 : bool = u_xlatb7.z;
        if (x_579) {
          let x_584 : f32 = u_xlat7.y;
          x_580 = x_584;
        } else {
          let x_586 : f32 = u_xlat30;
          x_580 = x_586;
        }
        let x_587 : f32 = x_580;
        u_xlat30 = x_587;
        let x_589 : bool = u_xlatb29;
        if (x_589) {
          let x_594 : f32 = u_xlat7.x;
          x_590 = x_594;
        } else {
          let x_596 : f32 = u_xlat30;
          x_590 = x_596;
        }
        let x_597 : f32 = x_590;
        u_xlat29 = x_597;
        let x_598 : i32 = u_xlati26;
        let x_600 : f32 = x_262.x_AdditionalShadowParams[x_598].w;
        u_xlat30 = trunc(x_600);
        let x_602 : f32 = u_xlat29;
        let x_603 : f32 = u_xlat30;
        u_xlat29 = (x_602 + x_603);
        let x_605 : f32 = u_xlat29;
        u_xlati28 = i32(x_605);
      }
      let x_607 : i32 = u_xlati28;
      u_xlati28 = (x_607 << bitcast<u32>(2i));
      let x_609 : vec3<f32> = vs_TEXCOORD1;
      let x_612 : i32 = u_xlati28;
      let x_615 : i32 = u_xlati28;
      let x_619 : vec4<f32> = x_262.x_AdditionalLightsWorldToShadow[((x_612 + 1i) / 4i)][((x_615 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_609.y, x_609.y, x_609.y, x_609.y) * x_619);
      let x_621 : i32 = u_xlati28;
      let x_623 : i32 = u_xlati28;
      let x_626 : vec4<f32> = x_262.x_AdditionalLightsWorldToShadow[(x_621 / 4i)][(x_623 % 4i)];
      let x_627 : vec3<f32> = vs_TEXCOORD1;
      let x_630 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_626 * vec4<f32>(x_627.x, x_627.x, x_627.x, x_627.x)) + x_630);
      let x_632 : i32 = u_xlati28;
      let x_635 : i32 = u_xlati28;
      let x_639 : vec4<f32> = x_262.x_AdditionalLightsWorldToShadow[((x_632 + 2i) / 4i)][((x_635 + 2i) % 4i)];
      let x_640 : vec3<f32> = vs_TEXCOORD1;
      let x_643 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_639 * vec4<f32>(x_640.z, x_640.z, x_640.z, x_640.z)) + x_643);
      let x_645 : vec4<f32> = u_xlat7;
      let x_646 : i32 = u_xlati28;
      let x_649 : i32 = u_xlati28;
      let x_653 : vec4<f32> = x_262.x_AdditionalLightsWorldToShadow[((x_646 + 3i) / 4i)][((x_649 + 3i) % 4i)];
      u_xlat7 = (x_645 + x_653);
      let x_655 : vec4<f32> = u_xlat7;
      let x_657 : vec4<f32> = u_xlat7;
      let x_659 : vec3<f32> = (vec3<f32>(x_655.x, x_655.y, x_655.z) / vec3<f32>(x_657.w, x_657.w, x_657.w));
      let x_660 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_659.x, x_659.y, x_659.z, x_660.w);
      let x_663 : vec4<f32> = u_xlat7;
      let x_664 : vec2<f32> = vec2<f32>(x_663.x, x_663.y);
      let x_666 : f32 = u_xlat7.z;
      txVec1 = vec3<f32>(x_664.x, x_664.y, x_666);
      let x_674 : vec3<f32> = txVec1;
      let x_676 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_674.xy, x_674.z);
      u_xlat28 = x_676;
      let x_677 : i32 = u_xlati26;
      let x_679 : f32 = x_262.x_AdditionalShadowParams[x_677].x;
      u_xlat29 = (1.0f + -(x_679));
      let x_682 : f32 = u_xlat28;
      let x_683 : i32 = u_xlati26;
      let x_685 : f32 = x_262.x_AdditionalShadowParams[x_683].x;
      let x_687 : f32 = u_xlat29;
      u_xlat28 = ((x_682 * x_685) + x_687);
      let x_690 : f32 = u_xlat7.z;
      u_xlatb29 = (0.0f >= x_690);
      let x_694 : f32 = u_xlat7.z;
      u_xlatb30 = (x_694 >= 1.0f);
      let x_696 : bool = u_xlatb29;
      let x_697 : bool = u_xlatb30;
      u_xlatb29 = (x_696 | x_697);
      let x_699 : bool = u_xlatb29;
      let x_700 : f32 = u_xlat28;
      u_xlat28 = select(x_700, 1.0f, x_699);
    } else {
      u_xlat28 = 1.0f;
    }
    let x_703 : f32 = u_xlat28;
    u_xlat29 = (-(x_703) + 1.0f);
    let x_706 : f32 = u_xlat24;
    let x_707 : f32 = u_xlat29;
    let x_709 : f32 = u_xlat28;
    u_xlat28 = ((x_706 * x_707) + x_709);
    let x_711 : f32 = u_xlat27;
    let x_712 : f32 = u_xlat28;
    u_xlat27 = (x_711 * x_712);
    let x_714 : f32 = u_xlat27;
    let x_716 : i32 = u_xlati26;
    let x_718 : vec4<f32> = x_445.x_AdditionalLightsColor[x_716];
    let x_720 : vec3<f32> = (vec3<f32>(x_714, x_714, x_714) * vec3<f32>(x_718.x, x_718.y, x_718.z));
    let x_721 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_720.x, x_720.y, x_720.z, x_721.w);
    let x_723 : vec4<f32> = u_xlat2;
    let x_725 : vec3<f32> = u_xlat6;
    u_xlat26 = dot(vec3<f32>(x_723.x, x_723.y, x_723.z), x_725);
    let x_727 : f32 = u_xlat26;
    u_xlat26 = clamp(x_727, 0.0f, 1.0f);
    let x_729 : f32 = u_xlat26;
    let x_731 : vec4<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_729, x_729, x_729) * vec3<f32>(x_731.x, x_731.y, x_731.z));
    let x_734 : vec4<f32> = u_xlat1;
    let x_736 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_734.y, x_734.z, x_734.w) * x_736);
    let x_738 : vec3<f32> = u_xlat6;
    let x_739 : vec4<f32> = u_xlat0;
    let x_742 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_738 * vec3<f32>(x_739.x, x_739.x, x_739.x)) + x_742);

    continuing {
      let x_744 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_744 + bitcast<u32>(1i));
    }
  }
  let x_746 : vec3<f32> = u_xlat3;
  let x_747 : vec4<f32> = u_xlat1;
  let x_750 : vec4<f32> = u_xlat4;
  let x_752 : vec3<f32> = ((x_746 * vec3<f32>(x_747.y, x_747.z, x_747.w)) + vec3<f32>(x_750.x, x_750.y, x_750.z));
  let x_753 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_752.x, x_752.y, x_752.z, x_753.w);
  let x_757 : vec3<f32> = u_xlat5;
  let x_758 : vec4<f32> = u_xlat1;
  let x_760 : vec3<f32> = (x_757 + vec3<f32>(x_758.x, x_758.y, x_758.z));
  let x_761 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_760.x, x_760.y, x_760.z, x_761.w);
  let x_764 : f32 = x_41.x_Surface;
  u_xlatb8 = (x_764 == 1.0f);
  let x_766 : bool = u_xlatb8;
  let x_767 : bool = u_xlatb16;
  u_xlatb8 = (x_766 | x_767);
  let x_769 : bool = u_xlatb8;
  if (x_769) {
    let x_774 : f32 = u_xlat0.x;
    x_770 = x_774;
  } else {
    x_770 = 1.0f;
  }
  let x_776 : f32 = x_770;
  SV_Target0.w = x_776;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


