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
  unity_FogParams : vec4<f32>,
  /* @offset(112) */
  unity_FogColor : vec4<f32>,
  /* @offset(128) */
  unity_MatrixV : mat4x4<f32>,
  /* @offset(192) */
  x_DitheringTextureInvSize : f32,
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

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(4) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_45 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_58 : UnityPerMaterial;

var<private> u_xlatb0 : bool;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlat16 : f32;

var<private> u_xlat24 : f32;

var<private> u_xlatb16 : bool;

var<private> u_xlatb8 : bool;

@group(0) @binding(3) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_PointRepeat : sampler;

var<private> u_xlatb24 : bool;

@group(1) @binding(2) var<uniform> x_186 : UnityPerDraw;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(4) var<uniform> x_397 : LightShadows;

var<private> u_xlatb1 : bool;

var<private> u_xlatb26 : bool;

var<private> u_xlat26 : f32;

var<private> u_xlat27 : f32;

var<private> u_xlatu24 : u32;

var<private> u_xlatu27 : u32;

var<private> u_xlati28 : i32;

var<private> u_xlati27 : i32;

var<private> u_xlat6 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_581 : AdditionalLights;

var<private> u_xlat28 : f32;

var<private> u_xlat29 : f32;

var<private> u_xlati29 : i32;

var<private> u_xlatb30 : bool;

var<private> u_xlatb7 : vec4<bool>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat31 : f32;

var<private> u_xlat15 : f32;

var<private> u_xlat30 : f32;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatu26 : u32;

var<private> u_xlatb27 : bool;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_77 : f32;
  var x_133 : f32;
  var x_192 : f32;
  var txVec0 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_717 : f32;
  var x_727 : f32;
  var txVec1 : vec3<f32>;
  var x_942 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_41 : vec2<f32> = vs_TEXCOORD0;
  let x_51 : f32 = x_45.x_GlobalMipBias.x;
  let x_52 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_41, x_51);
  u_xlat0 = x_52;
  let x_54 : vec4<f32> = u_xlat0;
  let x_62 : vec4<f32> = x_58.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_54.w, x_54.x, x_54.y, x_54.z) * vec4<f32>(x_62.w, x_62.x, x_62.y, x_62.z));
  let x_70 : f32 = u_xlat1.x;
  let x_73 : f32 = x_58.x_Cutoff;
  u_xlatb0 = (x_70 >= x_73);
  let x_75 : bool = u_xlatb0;
  if (x_75) {
    let x_81 : f32 = u_xlat1.x;
    x_77 = x_81;
  } else {
    x_77 = 0.0f;
  }
  let x_84 : f32 = x_77;
  u_xlat0.x = x_84;
  let x_89 : f32 = u_xlat0.w;
  let x_91 : f32 = x_58.x_BaseColor.w;
  let x_94 : f32 = x_58.x_Cutoff;
  u_xlat8.x = ((x_89 * x_91) + -(x_94));
  let x_100 : f32 = u_xlat1.x;
  u_xlat16 = dpdxCoarse(x_100);
  let x_104 : f32 = u_xlat1.x;
  u_xlat24 = dpdyCoarse(x_104);
  let x_106 : f32 = u_xlat24;
  let x_108 : f32 = u_xlat16;
  u_xlat16 = (abs(x_106) + abs(x_108));
  let x_111 : f32 = u_xlat16;
  u_xlat16 = max(x_111, 0.00009999999747378752f);
  let x_115 : f32 = u_xlat8.x;
  let x_116 : f32 = u_xlat16;
  u_xlat8.x = (x_115 / x_116);
  let x_120 : f32 = u_xlat8.x;
  u_xlat8.x = (x_120 + 0.5f);
  let x_125 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_125, 0.0f, 1.0f);
  let x_130 : f32 = x_45.x_AlphaToMaskAvailable;
  u_xlatb16 = !((x_130 == 0.0f));
  let x_132 : bool = u_xlatb16;
  if (x_132) {
    let x_137 : f32 = u_xlat8.x;
    x_133 = x_137;
  } else {
    let x_140 : f32 = u_xlat0.x;
    x_133 = x_140;
  }
  let x_141 : f32 = x_133;
  u_xlat0.x = x_141;
  let x_144 : f32 = u_xlat0.x;
  u_xlat8.x = (x_144 + -0.00009999999747378752f);
  let x_150 : f32 = u_xlat8.x;
  u_xlatb8 = (x_150 < 0.0f);
  let x_152 : bool = u_xlatb8;
  if (((select(0i, 1i, x_152) * -1i) != 0i)) {
    discard;
  }
  let x_160 : vec4<f32> = hlslcc_FragCoord;
  let x_164 : f32 = x_45.x_DitheringTextureInvSize;
  let x_166 : vec2<f32> = (vec2<f32>(x_160.x, x_160.y) * vec2<f32>(x_164, x_164));
  let x_167 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_166.x, x_167.y, x_166.y);
  let x_174 : vec3<f32> = u_xlat8;
  let x_177 : f32 = x_45.x_GlobalMipBias.x;
  let x_178 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_PointRepeat, vec2<f32>(x_174.x, x_174.z), x_177);
  u_xlat8.x = x_178.w;
  let x_189 : f32 = x_186.unity_LODFade.x;
  u_xlatb24 = (x_189 >= 0.0f);
  let x_191 : bool = u_xlatb24;
  if (x_191) {
    let x_196 : f32 = u_xlat8.x;
    x_192 = abs(x_196);
  } else {
    let x_200 : f32 = u_xlat8.x;
    x_192 = -(abs(x_200));
  }
  let x_203 : f32 = x_192;
  u_xlat8.x = x_203;
  let x_206 : f32 = u_xlat8.x;
  let x_209 : f32 = x_186.unity_LODFade.x;
  u_xlat8.x = (-(x_206) + x_209);
  let x_213 : f32 = u_xlat8.x;
  u_xlatb8 = (x_213 < 0.0f);
  let x_215 : bool = u_xlatb8;
  if (((select(0i, 1i, x_215) * -1i) != 0i)) {
    discard;
  }
  let x_224 : vec3<f32> = vs_TEXCOORD2;
  let x_225 : vec3<f32> = vs_TEXCOORD2;
  u_xlat8.x = dot(x_224, x_225);
  let x_229 : f32 = u_xlat8.x;
  u_xlat8.x = inverseSqrt(x_229);
  let x_233 : vec3<f32> = u_xlat8;
  let x_235 : vec3<f32> = vs_TEXCOORD2;
  let x_236 : vec3<f32> = (vec3<f32>(x_233.x, x_233.x, x_233.x) * x_235);
  let x_237 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_236.x, x_236.y, x_236.z, x_237.w);
  let x_242 : f32 = vs_TEXCOORD1.y;
  let x_245 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat8.x = (x_242 * x_245);
  let x_249 : f32 = x_45.unity_MatrixV[0i].z;
  let x_251 : f32 = vs_TEXCOORD1.x;
  let x_254 : f32 = u_xlat8.x;
  u_xlat8.x = ((x_249 * x_251) + x_254);
  let x_258 : f32 = x_45.unity_MatrixV[2i].z;
  let x_260 : f32 = vs_TEXCOORD1.z;
  let x_263 : f32 = u_xlat8.x;
  u_xlat8.x = ((x_258 * x_260) + x_263);
  let x_267 : f32 = u_xlat8.x;
  let x_270 : f32 = x_45.unity_MatrixV[3i].z;
  u_xlat8.x = (x_267 + x_270);
  let x_274 : f32 = u_xlat8.x;
  let x_278 : f32 = x_45.x_ProjectionParams.y;
  u_xlat8.x = (-(x_274) + -(x_278));
  let x_283 : f32 = u_xlat8.x;
  u_xlat8.x = max(x_283, 0.0f);
  let x_287 : f32 = u_xlat8.x;
  let x_290 : f32 = x_45.unity_FogParams.x;
  u_xlat8.x = (x_287 * x_290);
  u_xlat2.w = 1.0f;
  let x_297 : vec4<f32> = x_186.unity_SHAr;
  let x_298 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_297, x_298);
  let x_303 : vec4<f32> = x_186.unity_SHAg;
  let x_304 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_303, x_304);
  let x_309 : vec4<f32> = x_186.unity_SHAb;
  let x_310 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_309, x_310);
  let x_314 : vec4<f32> = u_xlat2;
  let x_316 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_314.y, x_314.z, x_314.z, x_314.x) * vec4<f32>(x_316.x, x_316.y, x_316.z, x_316.z));
  let x_322 : vec4<f32> = x_186.unity_SHBr;
  let x_323 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_322, x_323);
  let x_328 : vec4<f32> = x_186.unity_SHBg;
  let x_329 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_328, x_329);
  let x_334 : vec4<f32> = x_186.unity_SHBb;
  let x_335 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_334, x_335);
  let x_339 : f32 = u_xlat2.y;
  let x_341 : f32 = u_xlat2.y;
  u_xlat24 = (x_339 * x_341);
  let x_344 : f32 = u_xlat2.x;
  let x_346 : f32 = u_xlat2.x;
  let x_348 : f32 = u_xlat24;
  u_xlat24 = ((x_344 * x_346) + -(x_348));
  let x_353 : vec4<f32> = x_186.unity_SHC;
  let x_355 : f32 = u_xlat24;
  let x_358 : vec3<f32> = u_xlat5;
  let x_359 : vec3<f32> = ((vec3<f32>(x_353.x, x_353.y, x_353.z) * vec3<f32>(x_355, x_355, x_355)) + x_358);
  let x_360 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_359.x, x_359.y, x_359.z, x_360.w);
  let x_362 : vec3<f32> = u_xlat3;
  let x_363 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_362 + vec3<f32>(x_363.x, x_363.y, x_363.z));
  let x_366 : vec3<f32> = u_xlat3;
  u_xlat3 = max(x_366, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_372 : vec4<f32> = vs_TEXCOORD6;
  let x_373 : vec2<f32> = vec2<f32>(x_372.x, x_372.y);
  let x_375 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_373.x, x_373.y, x_375);
  let x_387 : vec3<f32> = txVec0;
  let x_389 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_387.xy, x_387.z);
  u_xlat24 = x_389;
  let x_400 : f32 = x_397.x_MainLightShadowParams.x;
  u_xlat1.x = (-(x_400) + 1.0f);
  let x_404 : f32 = u_xlat24;
  let x_406 : f32 = x_397.x_MainLightShadowParams.x;
  let x_409 : f32 = u_xlat1.x;
  u_xlat24 = ((x_404 * x_406) + x_409);
  let x_413 : f32 = vs_TEXCOORD6.z;
  u_xlatb1 = (0.0f >= x_413);
  let x_417 : f32 = vs_TEXCOORD6.z;
  u_xlatb26 = (x_417 >= 1.0f);
  let x_419 : bool = u_xlatb1;
  let x_420 : bool = u_xlatb26;
  u_xlatb1 = (x_419 | x_420);
  let x_422 : bool = u_xlatb1;
  let x_423 : f32 = u_xlat24;
  u_xlat24 = select(x_423, 1.0f, x_422);
  let x_425 : vec3<f32> = vs_TEXCOORD1;
  let x_429 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_431 : vec3<f32> = (x_425 + -(x_429));
  let x_432 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_431.x, x_431.y, x_431.z, x_432.w);
  let x_434 : vec4<f32> = u_xlat4;
  let x_436 : vec4<f32> = u_xlat4;
  u_xlat1.x = dot(vec3<f32>(x_434.x, x_434.y, x_434.z), vec3<f32>(x_436.x, x_436.y, x_436.z));
  let x_442 : f32 = u_xlat1.x;
  let x_444 : f32 = x_397.x_MainLightShadowParams.z;
  let x_447 : f32 = x_397.x_MainLightShadowParams.w;
  u_xlat26 = ((x_442 * x_444) + x_447);
  let x_449 : f32 = u_xlat26;
  u_xlat26 = clamp(x_449, 0.0f, 1.0f);
  let x_452 : f32 = u_xlat24;
  u_xlat27 = (-(x_452) + 1.0f);
  let x_455 : f32 = u_xlat26;
  let x_456 : f32 = u_xlat27;
  let x_458 : f32 = u_xlat24;
  u_xlat24 = ((x_455 * x_456) + x_458);
  let x_460 : f32 = u_xlat24;
  let x_462 : f32 = x_186.unity_LightData.z;
  u_xlat24 = (x_460 * x_462);
  let x_464 : f32 = u_xlat24;
  let x_467 : vec4<f32> = x_45.x_MainLightColor;
  let x_469 : vec3<f32> = (vec3<f32>(x_464, x_464, x_464) * vec3<f32>(x_467.x, x_467.y, x_467.z));
  let x_470 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_469.x, x_469.y, x_469.z, x_470.w);
  let x_472 : vec4<f32> = u_xlat2;
  let x_475 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat24 = dot(vec3<f32>(x_472.x, x_472.y, x_472.z), vec3<f32>(x_475.x, x_475.y, x_475.z));
  let x_478 : f32 = u_xlat24;
  u_xlat24 = clamp(x_478, 0.0f, 1.0f);
  let x_480 : f32 = u_xlat24;
  let x_482 : vec4<f32> = u_xlat4;
  let x_484 : vec3<f32> = (vec3<f32>(x_480, x_480, x_480) * vec3<f32>(x_482.x, x_482.y, x_482.z));
  let x_485 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_484.x, x_484.y, x_484.z, x_485.w);
  let x_487 : vec4<f32> = u_xlat1;
  let x_489 : vec4<f32> = u_xlat4;
  let x_491 : vec3<f32> = (vec3<f32>(x_487.y, x_487.z, x_487.w) * vec3<f32>(x_489.x, x_489.y, x_489.z));
  let x_492 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_491.x, x_491.y, x_491.z, x_492.w);
  let x_494 : vec4<f32> = u_xlat0;
  let x_496 : vec4<f32> = u_xlat4;
  let x_498 : vec3<f32> = (vec3<f32>(x_494.x, x_494.x, x_494.x) * vec3<f32>(x_496.x, x_496.y, x_496.z));
  let x_499 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_498.x, x_498.y, x_498.z, x_499.w);
  let x_502 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_504 : f32 = x_186.unity_LightData.y;
  u_xlat24 = min(x_502, x_504);
  let x_508 : f32 = u_xlat24;
  u_xlatu24 = bitcast<u32>(i32(x_508));
  let x_512 : f32 = u_xlat1.x;
  let x_515 : f32 = x_397.x_AdditionalShadowFadeParams.x;
  let x_518 : f32 = x_397.x_AdditionalShadowFadeParams.y;
  u_xlat1.x = ((x_512 * x_515) + x_518);
  let x_522 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_522, 0.0f, 1.0f);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_535 : u32 = u_xlatu_loop_1;
    let x_536 : u32 = u_xlatu24;
    if ((x_535 < x_536)) {
    } else {
      break;
    }
    let x_539 : u32 = u_xlatu_loop_1;
    u_xlatu27 = (x_539 >> 2u);
    let x_543 : u32 = u_xlatu_loop_1;
    u_xlati28 = bitcast<i32>((x_543 & 3u));
    let x_546 : u32 = u_xlatu27;
    let x_549 : vec4<f32> = x_186.unity_LightIndices[bitcast<i32>(x_546)];
    let x_559 : i32 = u_xlati28;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_564 : vec4<u32> = indexable[x_559];
    u_xlat27 = dot(x_549, bitcast<vec4<f32>>(x_564));
    let x_568 : f32 = u_xlat27;
    u_xlati27 = i32(x_568);
    let x_571 : vec3<f32> = vs_TEXCOORD1;
    let x_582 : i32 = u_xlati27;
    let x_584 : vec4<f32> = x_581.x_AdditionalLightsPosition[x_582];
    let x_587 : i32 = u_xlati27;
    let x_589 : vec4<f32> = x_581.x_AdditionalLightsPosition[x_587];
    u_xlat6 = ((-(x_571) * vec3<f32>(x_584.w, x_584.w, x_584.w)) + vec3<f32>(x_589.x, x_589.y, x_589.z));
    let x_593 : vec3<f32> = u_xlat6;
    let x_594 : vec3<f32> = u_xlat6;
    u_xlat28 = dot(x_593, x_594);
    let x_596 : f32 = u_xlat28;
    u_xlat28 = max(x_596, 0.00006103515625f);
    let x_600 : f32 = u_xlat28;
    u_xlat29 = inverseSqrt(x_600);
    let x_602 : f32 = u_xlat29;
    let x_604 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_602, x_602, x_602) * x_604);
    let x_606 : f32 = u_xlat28;
    u_xlat29 = (1.0f / x_606);
    let x_608 : f32 = u_xlat28;
    let x_609 : i32 = u_xlati27;
    let x_611 : f32 = x_581.x_AdditionalLightsAttenuation[x_609].x;
    u_xlat28 = (x_608 * x_611);
    let x_613 : f32 = u_xlat28;
    let x_615 : f32 = u_xlat28;
    u_xlat28 = ((-(x_613) * x_615) + 1.0f);
    let x_618 : f32 = u_xlat28;
    u_xlat28 = max(x_618, 0.0f);
    let x_620 : f32 = u_xlat28;
    let x_621 : f32 = u_xlat28;
    u_xlat28 = (x_620 * x_621);
    let x_623 : f32 = u_xlat28;
    let x_624 : f32 = u_xlat29;
    u_xlat28 = (x_623 * x_624);
    let x_626 : i32 = u_xlati27;
    let x_628 : vec4<f32> = x_581.x_AdditionalLightsSpotDir[x_626];
    let x_630 : vec3<f32> = u_xlat6;
    u_xlat29 = dot(vec3<f32>(x_628.x, x_628.y, x_628.z), x_630);
    let x_632 : f32 = u_xlat29;
    let x_633 : i32 = u_xlati27;
    let x_635 : f32 = x_581.x_AdditionalLightsAttenuation[x_633].z;
    let x_637 : i32 = u_xlati27;
    let x_639 : f32 = x_581.x_AdditionalLightsAttenuation[x_637].w;
    u_xlat29 = ((x_632 * x_635) + x_639);
    let x_641 : f32 = u_xlat29;
    u_xlat29 = clamp(x_641, 0.0f, 1.0f);
    let x_643 : f32 = u_xlat29;
    let x_644 : f32 = u_xlat29;
    u_xlat29 = (x_643 * x_644);
    let x_646 : f32 = u_xlat28;
    let x_647 : f32 = u_xlat29;
    u_xlat28 = (x_646 * x_647);
    let x_651 : i32 = u_xlati27;
    let x_653 : f32 = x_397.x_AdditionalShadowParams[x_651].w;
    u_xlati29 = i32(x_653);
    let x_656 : i32 = u_xlati29;
    u_xlatb30 = (x_656 >= 0i);
    let x_658 : bool = u_xlatb30;
    if (x_658) {
      let x_662 : i32 = u_xlati27;
      let x_664 : f32 = x_397.x_AdditionalShadowParams[x_662].z;
      u_xlatb30 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_664, x_664, x_664, x_664))));
      let x_669 : bool = u_xlatb30;
      if (x_669) {
        let x_674 : vec3<f32> = u_xlat6;
        let x_677 : vec3<f32> = u_xlat6;
        let x_680 : vec4<bool> = (abs(vec4<f32>(x_674.z, x_674.z, x_674.y, x_674.z)) >= abs(vec4<f32>(x_677.x, x_677.y, x_677.x, x_677.x)));
        let x_682 : vec3<bool> = vec3<bool>(x_680.x, x_680.y, x_680.z);
        let x_683 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_682.x, x_682.y, x_682.z, x_683.w);
        let x_686 : bool = u_xlatb7.y;
        let x_688 : bool = u_xlatb7.x;
        u_xlatb30 = (x_686 & x_688);
        let x_690 : vec3<f32> = u_xlat6;
        let x_693 : vec4<bool> = (-(vec4<f32>(x_690.z, x_690.y, x_690.z, x_690.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_694 : vec3<bool> = vec3<bool>(x_693.x, x_693.y, x_693.w);
        let x_695 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_694.x, x_694.y, x_695.z, x_694.z);
        let x_699 : bool = u_xlatb7.x;
        u_xlat7.x = select(4.0f, 5.0f, x_699);
        let x_705 : bool = u_xlatb7.y;
        u_xlat7.y = select(2.0f, 3.0f, x_705);
        let x_712 : bool = u_xlatb7.w;
        u_xlat31 = select(0.0f, 1.0f, x_712);
        let x_716 : bool = u_xlatb7.z;
        if (x_716) {
          let x_721 : f32 = u_xlat7.y;
          x_717 = x_721;
        } else {
          let x_723 : f32 = u_xlat31;
          x_717 = x_723;
        }
        let x_724 : f32 = x_717;
        u_xlat15 = x_724;
        let x_726 : bool = u_xlatb30;
        if (x_726) {
          let x_731 : f32 = u_xlat7.x;
          x_727 = x_731;
        } else {
          let x_733 : f32 = u_xlat15;
          x_727 = x_733;
        }
        let x_734 : f32 = x_727;
        u_xlat30 = x_734;
        let x_735 : i32 = u_xlati27;
        let x_737 : f32 = x_397.x_AdditionalShadowParams[x_735].w;
        u_xlat7.x = trunc(x_737);
        let x_740 : f32 = u_xlat30;
        let x_742 : f32 = u_xlat7.x;
        u_xlat30 = (x_740 + x_742);
        let x_744 : f32 = u_xlat30;
        u_xlati29 = i32(x_744);
      }
      let x_746 : i32 = u_xlati29;
      u_xlati29 = (x_746 << bitcast<u32>(2i));
      let x_748 : vec3<f32> = vs_TEXCOORD1;
      let x_751 : i32 = u_xlati29;
      let x_754 : i32 = u_xlati29;
      let x_758 : vec4<f32> = x_397.x_AdditionalLightsWorldToShadow[((x_751 + 1i) / 4i)][((x_754 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_748.y, x_748.y, x_748.y, x_748.y) * x_758);
      let x_760 : i32 = u_xlati29;
      let x_762 : i32 = u_xlati29;
      let x_765 : vec4<f32> = x_397.x_AdditionalLightsWorldToShadow[(x_760 / 4i)][(x_762 % 4i)];
      let x_766 : vec3<f32> = vs_TEXCOORD1;
      let x_769 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_765 * vec4<f32>(x_766.x, x_766.x, x_766.x, x_766.x)) + x_769);
      let x_771 : i32 = u_xlati29;
      let x_774 : i32 = u_xlati29;
      let x_778 : vec4<f32> = x_397.x_AdditionalLightsWorldToShadow[((x_771 + 2i) / 4i)][((x_774 + 2i) % 4i)];
      let x_779 : vec3<f32> = vs_TEXCOORD1;
      let x_782 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_778 * vec4<f32>(x_779.z, x_779.z, x_779.z, x_779.z)) + x_782);
      let x_784 : vec4<f32> = u_xlat7;
      let x_785 : i32 = u_xlati29;
      let x_788 : i32 = u_xlati29;
      let x_792 : vec4<f32> = x_397.x_AdditionalLightsWorldToShadow[((x_785 + 3i) / 4i)][((x_788 + 3i) % 4i)];
      u_xlat7 = (x_784 + x_792);
      let x_794 : vec4<f32> = u_xlat7;
      let x_796 : vec4<f32> = u_xlat7;
      let x_798 : vec3<f32> = (vec3<f32>(x_794.x, x_794.y, x_794.z) / vec3<f32>(x_796.w, x_796.w, x_796.w));
      let x_799 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_798.x, x_798.y, x_798.z, x_799.w);
      let x_802 : vec4<f32> = u_xlat7;
      let x_803 : vec2<f32> = vec2<f32>(x_802.x, x_802.y);
      let x_805 : f32 = u_xlat7.z;
      txVec1 = vec3<f32>(x_803.x, x_803.y, x_805);
      let x_813 : vec3<f32> = txVec1;
      let x_815 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_813.xy, x_813.z);
      u_xlat29 = x_815;
      let x_816 : i32 = u_xlati27;
      let x_818 : f32 = x_397.x_AdditionalShadowParams[x_816].x;
      u_xlat30 = (1.0f + -(x_818));
      let x_821 : f32 = u_xlat29;
      let x_822 : i32 = u_xlati27;
      let x_824 : f32 = x_397.x_AdditionalShadowParams[x_822].x;
      let x_826 : f32 = u_xlat30;
      u_xlat29 = ((x_821 * x_824) + x_826);
      let x_829 : f32 = u_xlat7.z;
      u_xlatb30 = (0.0f >= x_829);
      let x_832 : f32 = u_xlat7.z;
      u_xlatb7.x = (x_832 >= 1.0f);
      let x_835 : bool = u_xlatb30;
      let x_837 : bool = u_xlatb7.x;
      u_xlatb30 = (x_835 | x_837);
      let x_839 : bool = u_xlatb30;
      let x_840 : f32 = u_xlat29;
      u_xlat29 = select(x_840, 1.0f, x_839);
    } else {
      u_xlat29 = 1.0f;
    }
    let x_843 : f32 = u_xlat29;
    u_xlat30 = (-(x_843) + 1.0f);
    let x_847 : f32 = u_xlat1.x;
    let x_848 : f32 = u_xlat30;
    let x_850 : f32 = u_xlat29;
    u_xlat29 = ((x_847 * x_848) + x_850);
    let x_852 : f32 = u_xlat28;
    let x_853 : f32 = u_xlat29;
    u_xlat28 = (x_852 * x_853);
    let x_855 : f32 = u_xlat28;
    let x_857 : i32 = u_xlati27;
    let x_859 : vec4<f32> = x_581.x_AdditionalLightsColor[x_857];
    let x_861 : vec3<f32> = (vec3<f32>(x_855, x_855, x_855) * vec3<f32>(x_859.x, x_859.y, x_859.z));
    let x_862 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_861.x, x_861.y, x_861.z, x_862.w);
    let x_864 : vec4<f32> = u_xlat2;
    let x_866 : vec3<f32> = u_xlat6;
    u_xlat27 = dot(vec3<f32>(x_864.x, x_864.y, x_864.z), x_866);
    let x_868 : f32 = u_xlat27;
    u_xlat27 = clamp(x_868, 0.0f, 1.0f);
    let x_870 : f32 = u_xlat27;
    let x_872 : vec4<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_870, x_870, x_870) * vec3<f32>(x_872.x, x_872.y, x_872.z));
    let x_875 : vec4<f32> = u_xlat1;
    let x_877 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_875.y, x_875.z, x_875.w) * x_877);
    let x_879 : vec3<f32> = u_xlat6;
    let x_880 : vec4<f32> = u_xlat0;
    let x_883 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_879 * vec3<f32>(x_880.x, x_880.x, x_880.x)) + x_883);

    continuing {
      let x_885 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_885 + bitcast<u32>(1i));
    }
  }
  let x_887 : vec3<f32> = u_xlat3;
  let x_888 : vec4<f32> = u_xlat1;
  let x_891 : vec4<f32> = u_xlat4;
  let x_893 : vec3<f32> = ((x_887 * vec3<f32>(x_888.y, x_888.z, x_888.w)) + vec3<f32>(x_891.x, x_891.y, x_891.z));
  let x_894 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_893.x, x_893.y, x_893.z, x_894.w);
  let x_896 : vec3<f32> = u_xlat5;
  let x_897 : vec4<f32> = u_xlat1;
  let x_899 : vec3<f32> = (x_896 + vec3<f32>(x_897.x, x_897.y, x_897.z));
  let x_900 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_899.x, x_899.y, x_899.z, x_900.w);
  let x_903 : f32 = u_xlat8.x;
  let x_905 : f32 = u_xlat8.x;
  u_xlat8.x = (x_903 * -(x_905));
  let x_910 : f32 = u_xlat8.x;
  u_xlat8.x = exp2(x_910);
  let x_913 : vec4<f32> = u_xlat1;
  let x_916 : vec4<f32> = x_45.unity_FogColor;
  let x_919 : vec3<f32> = (vec3<f32>(x_913.x, x_913.y, x_913.z) + -(vec3<f32>(x_916.x, x_916.y, x_916.z)));
  let x_920 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_919.x, x_919.y, x_919.z, x_920.w);
  let x_924 : vec3<f32> = u_xlat8;
  let x_926 : vec4<f32> = u_xlat1;
  let x_930 : vec4<f32> = x_45.unity_FogColor;
  let x_932 : vec3<f32> = ((vec3<f32>(x_924.x, x_924.x, x_924.x) * vec3<f32>(x_926.x, x_926.y, x_926.z)) + vec3<f32>(x_930.x, x_930.y, x_930.z));
  let x_933 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_932.x, x_932.y, x_932.z, x_933.w);
  let x_936 : f32 = x_58.x_Surface;
  u_xlatb8 = (x_936 == 1.0f);
  let x_938 : bool = u_xlatb8;
  let x_939 : bool = u_xlatb16;
  u_xlatb8 = (x_938 | x_939);
  let x_941 : bool = u_xlatb8;
  if (x_941) {
    let x_946 : f32 = u_xlat0.x;
    x_942 = x_946;
  } else {
    x_942 = 1.0f;
  }
  let x_948 : f32 = x_942;
  SV_Target0.w = x_948;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}


