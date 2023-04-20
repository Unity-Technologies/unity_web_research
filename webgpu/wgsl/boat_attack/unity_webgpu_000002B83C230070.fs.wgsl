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

@group(1) @binding(1) var<uniform> x_574 : AdditionalLights;

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
  var x_710 : f32;
  var x_720 : f32;
  var txVec1 : vec3<f32>;
  var x_931 : f32;
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
  let x_495 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_497 : f32 = x_186.unity_LightData.y;
  u_xlat24 = min(x_495, x_497);
  let x_501 : f32 = u_xlat24;
  u_xlatu24 = bitcast<u32>(i32(x_501));
  let x_505 : f32 = u_xlat1.x;
  let x_508 : f32 = x_397.x_AdditionalShadowFadeParams.x;
  let x_511 : f32 = x_397.x_AdditionalShadowFadeParams.y;
  u_xlat1.x = ((x_505 * x_508) + x_511);
  let x_515 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_515, 0.0f, 1.0f);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_528 : u32 = u_xlatu_loop_1;
    let x_529 : u32 = u_xlatu24;
    if ((x_528 < x_529)) {
    } else {
      break;
    }
    let x_532 : u32 = u_xlatu_loop_1;
    u_xlatu27 = (x_532 >> 2u);
    let x_536 : u32 = u_xlatu_loop_1;
    u_xlati28 = bitcast<i32>((x_536 & 3u));
    let x_539 : u32 = u_xlatu27;
    let x_542 : vec4<f32> = x_186.unity_LightIndices[bitcast<i32>(x_539)];
    let x_552 : i32 = u_xlati28;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_557 : vec4<u32> = indexable[x_552];
    u_xlat27 = dot(x_542, bitcast<vec4<f32>>(x_557));
    let x_561 : f32 = u_xlat27;
    u_xlati27 = i32(x_561);
    let x_564 : vec3<f32> = vs_TEXCOORD1;
    let x_575 : i32 = u_xlati27;
    let x_577 : vec4<f32> = x_574.x_AdditionalLightsPosition[x_575];
    let x_580 : i32 = u_xlati27;
    let x_582 : vec4<f32> = x_574.x_AdditionalLightsPosition[x_580];
    u_xlat6 = ((-(x_564) * vec3<f32>(x_577.w, x_577.w, x_577.w)) + vec3<f32>(x_582.x, x_582.y, x_582.z));
    let x_586 : vec3<f32> = u_xlat6;
    let x_587 : vec3<f32> = u_xlat6;
    u_xlat28 = dot(x_586, x_587);
    let x_589 : f32 = u_xlat28;
    u_xlat28 = max(x_589, 0.00006103515625f);
    let x_593 : f32 = u_xlat28;
    u_xlat29 = inverseSqrt(x_593);
    let x_595 : f32 = u_xlat29;
    let x_597 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_595, x_595, x_595) * x_597);
    let x_599 : f32 = u_xlat28;
    u_xlat29 = (1.0f / x_599);
    let x_601 : f32 = u_xlat28;
    let x_602 : i32 = u_xlati27;
    let x_604 : f32 = x_574.x_AdditionalLightsAttenuation[x_602].x;
    u_xlat28 = (x_601 * x_604);
    let x_606 : f32 = u_xlat28;
    let x_608 : f32 = u_xlat28;
    u_xlat28 = ((-(x_606) * x_608) + 1.0f);
    let x_611 : f32 = u_xlat28;
    u_xlat28 = max(x_611, 0.0f);
    let x_613 : f32 = u_xlat28;
    let x_614 : f32 = u_xlat28;
    u_xlat28 = (x_613 * x_614);
    let x_616 : f32 = u_xlat28;
    let x_617 : f32 = u_xlat29;
    u_xlat28 = (x_616 * x_617);
    let x_619 : i32 = u_xlati27;
    let x_621 : vec4<f32> = x_574.x_AdditionalLightsSpotDir[x_619];
    let x_623 : vec3<f32> = u_xlat6;
    u_xlat29 = dot(vec3<f32>(x_621.x, x_621.y, x_621.z), x_623);
    let x_625 : f32 = u_xlat29;
    let x_626 : i32 = u_xlati27;
    let x_628 : f32 = x_574.x_AdditionalLightsAttenuation[x_626].z;
    let x_630 : i32 = u_xlati27;
    let x_632 : f32 = x_574.x_AdditionalLightsAttenuation[x_630].w;
    u_xlat29 = ((x_625 * x_628) + x_632);
    let x_634 : f32 = u_xlat29;
    u_xlat29 = clamp(x_634, 0.0f, 1.0f);
    let x_636 : f32 = u_xlat29;
    let x_637 : f32 = u_xlat29;
    u_xlat29 = (x_636 * x_637);
    let x_639 : f32 = u_xlat28;
    let x_640 : f32 = u_xlat29;
    u_xlat28 = (x_639 * x_640);
    let x_644 : i32 = u_xlati27;
    let x_646 : f32 = x_397.x_AdditionalShadowParams[x_644].w;
    u_xlati29 = i32(x_646);
    let x_649 : i32 = u_xlati29;
    u_xlatb30 = (x_649 >= 0i);
    let x_651 : bool = u_xlatb30;
    if (x_651) {
      let x_655 : i32 = u_xlati27;
      let x_657 : f32 = x_397.x_AdditionalShadowParams[x_655].z;
      u_xlatb30 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_657, x_657, x_657, x_657))));
      let x_662 : bool = u_xlatb30;
      if (x_662) {
        let x_667 : vec3<f32> = u_xlat6;
        let x_670 : vec3<f32> = u_xlat6;
        let x_673 : vec4<bool> = (abs(vec4<f32>(x_667.z, x_667.z, x_667.y, x_667.z)) >= abs(vec4<f32>(x_670.x, x_670.y, x_670.x, x_670.x)));
        let x_675 : vec3<bool> = vec3<bool>(x_673.x, x_673.y, x_673.z);
        let x_676 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_675.x, x_675.y, x_675.z, x_676.w);
        let x_679 : bool = u_xlatb7.y;
        let x_681 : bool = u_xlatb7.x;
        u_xlatb30 = (x_679 & x_681);
        let x_683 : vec3<f32> = u_xlat6;
        let x_686 : vec4<bool> = (-(vec4<f32>(x_683.z, x_683.y, x_683.z, x_683.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_687 : vec3<bool> = vec3<bool>(x_686.x, x_686.y, x_686.w);
        let x_688 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_687.x, x_687.y, x_688.z, x_687.z);
        let x_692 : bool = u_xlatb7.x;
        u_xlat7.x = select(4.0f, 5.0f, x_692);
        let x_698 : bool = u_xlatb7.y;
        u_xlat7.y = select(2.0f, 3.0f, x_698);
        let x_705 : bool = u_xlatb7.w;
        u_xlat31 = select(0.0f, 1.0f, x_705);
        let x_709 : bool = u_xlatb7.z;
        if (x_709) {
          let x_714 : f32 = u_xlat7.y;
          x_710 = x_714;
        } else {
          let x_716 : f32 = u_xlat31;
          x_710 = x_716;
        }
        let x_717 : f32 = x_710;
        u_xlat15 = x_717;
        let x_719 : bool = u_xlatb30;
        if (x_719) {
          let x_724 : f32 = u_xlat7.x;
          x_720 = x_724;
        } else {
          let x_726 : f32 = u_xlat15;
          x_720 = x_726;
        }
        let x_727 : f32 = x_720;
        u_xlat30 = x_727;
        let x_728 : i32 = u_xlati27;
        let x_730 : f32 = x_397.x_AdditionalShadowParams[x_728].w;
        u_xlat7.x = trunc(x_730);
        let x_733 : f32 = u_xlat30;
        let x_735 : f32 = u_xlat7.x;
        u_xlat30 = (x_733 + x_735);
        let x_737 : f32 = u_xlat30;
        u_xlati29 = i32(x_737);
      }
      let x_739 : i32 = u_xlati29;
      u_xlati29 = (x_739 << bitcast<u32>(2i));
      let x_741 : vec3<f32> = vs_TEXCOORD1;
      let x_744 : i32 = u_xlati29;
      let x_747 : i32 = u_xlati29;
      let x_751 : vec4<f32> = x_397.x_AdditionalLightsWorldToShadow[((x_744 + 1i) / 4i)][((x_747 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_741.y, x_741.y, x_741.y, x_741.y) * x_751);
      let x_753 : i32 = u_xlati29;
      let x_755 : i32 = u_xlati29;
      let x_758 : vec4<f32> = x_397.x_AdditionalLightsWorldToShadow[(x_753 / 4i)][(x_755 % 4i)];
      let x_759 : vec3<f32> = vs_TEXCOORD1;
      let x_762 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_758 * vec4<f32>(x_759.x, x_759.x, x_759.x, x_759.x)) + x_762);
      let x_764 : i32 = u_xlati29;
      let x_767 : i32 = u_xlati29;
      let x_771 : vec4<f32> = x_397.x_AdditionalLightsWorldToShadow[((x_764 + 2i) / 4i)][((x_767 + 2i) % 4i)];
      let x_772 : vec3<f32> = vs_TEXCOORD1;
      let x_775 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_771 * vec4<f32>(x_772.z, x_772.z, x_772.z, x_772.z)) + x_775);
      let x_777 : vec4<f32> = u_xlat7;
      let x_778 : i32 = u_xlati29;
      let x_781 : i32 = u_xlati29;
      let x_785 : vec4<f32> = x_397.x_AdditionalLightsWorldToShadow[((x_778 + 3i) / 4i)][((x_781 + 3i) % 4i)];
      u_xlat7 = (x_777 + x_785);
      let x_787 : vec4<f32> = u_xlat7;
      let x_789 : vec4<f32> = u_xlat7;
      let x_791 : vec3<f32> = (vec3<f32>(x_787.x, x_787.y, x_787.z) / vec3<f32>(x_789.w, x_789.w, x_789.w));
      let x_792 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_791.x, x_791.y, x_791.z, x_792.w);
      let x_795 : vec4<f32> = u_xlat7;
      let x_796 : vec2<f32> = vec2<f32>(x_795.x, x_795.y);
      let x_798 : f32 = u_xlat7.z;
      txVec1 = vec3<f32>(x_796.x, x_796.y, x_798);
      let x_806 : vec3<f32> = txVec1;
      let x_808 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_806.xy, x_806.z);
      u_xlat29 = x_808;
      let x_809 : i32 = u_xlati27;
      let x_811 : f32 = x_397.x_AdditionalShadowParams[x_809].x;
      u_xlat30 = (1.0f + -(x_811));
      let x_814 : f32 = u_xlat29;
      let x_815 : i32 = u_xlati27;
      let x_817 : f32 = x_397.x_AdditionalShadowParams[x_815].x;
      let x_819 : f32 = u_xlat30;
      u_xlat29 = ((x_814 * x_817) + x_819);
      let x_822 : f32 = u_xlat7.z;
      u_xlatb30 = (0.0f >= x_822);
      let x_825 : f32 = u_xlat7.z;
      u_xlatb7.x = (x_825 >= 1.0f);
      let x_828 : bool = u_xlatb30;
      let x_830 : bool = u_xlatb7.x;
      u_xlatb30 = (x_828 | x_830);
      let x_832 : bool = u_xlatb30;
      let x_833 : f32 = u_xlat29;
      u_xlat29 = select(x_833, 1.0f, x_832);
    } else {
      u_xlat29 = 1.0f;
    }
    let x_836 : f32 = u_xlat29;
    u_xlat30 = (-(x_836) + 1.0f);
    let x_840 : f32 = u_xlat1.x;
    let x_841 : f32 = u_xlat30;
    let x_843 : f32 = u_xlat29;
    u_xlat29 = ((x_840 * x_841) + x_843);
    let x_845 : f32 = u_xlat28;
    let x_846 : f32 = u_xlat29;
    u_xlat28 = (x_845 * x_846);
    let x_848 : f32 = u_xlat28;
    let x_850 : i32 = u_xlati27;
    let x_852 : vec4<f32> = x_574.x_AdditionalLightsColor[x_850];
    let x_854 : vec3<f32> = (vec3<f32>(x_848, x_848, x_848) * vec3<f32>(x_852.x, x_852.y, x_852.z));
    let x_855 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_854.x, x_854.y, x_854.z, x_855.w);
    let x_857 : vec4<f32> = u_xlat2;
    let x_859 : vec3<f32> = u_xlat6;
    u_xlat27 = dot(vec3<f32>(x_857.x, x_857.y, x_857.z), x_859);
    let x_861 : f32 = u_xlat27;
    u_xlat27 = clamp(x_861, 0.0f, 1.0f);
    let x_863 : f32 = u_xlat27;
    let x_865 : vec4<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_863, x_863, x_863) * vec3<f32>(x_865.x, x_865.y, x_865.z));
    let x_868 : vec3<f32> = u_xlat6;
    let x_869 : vec4<f32> = u_xlat1;
    let x_872 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_868 * vec3<f32>(x_869.y, x_869.z, x_869.w)) + x_872);

    continuing {
      let x_874 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_874 + bitcast<u32>(1i));
    }
  }
  let x_876 : vec3<f32> = u_xlat3;
  let x_877 : vec4<f32> = u_xlat1;
  let x_880 : vec4<f32> = u_xlat4;
  let x_882 : vec3<f32> = ((x_876 * vec3<f32>(x_877.y, x_877.z, x_877.w)) + vec3<f32>(x_880.x, x_880.y, x_880.z));
  let x_883 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_882.x, x_882.y, x_882.z, x_883.w);
  let x_885 : vec3<f32> = u_xlat5;
  let x_886 : vec4<f32> = u_xlat1;
  let x_888 : vec3<f32> = (x_885 + vec3<f32>(x_886.x, x_886.y, x_886.z));
  let x_889 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_888.x, x_888.y, x_888.z, x_889.w);
  let x_892 : f32 = u_xlat8.x;
  let x_894 : f32 = u_xlat8.x;
  u_xlat8.x = (x_892 * -(x_894));
  let x_899 : f32 = u_xlat8.x;
  u_xlat8.x = exp2(x_899);
  let x_902 : vec4<f32> = u_xlat1;
  let x_905 : vec4<f32> = x_45.unity_FogColor;
  let x_908 : vec3<f32> = (vec3<f32>(x_902.x, x_902.y, x_902.z) + -(vec3<f32>(x_905.x, x_905.y, x_905.z)));
  let x_909 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_908.x, x_908.y, x_908.z, x_909.w);
  let x_913 : vec3<f32> = u_xlat8;
  let x_915 : vec4<f32> = u_xlat1;
  let x_919 : vec4<f32> = x_45.unity_FogColor;
  let x_921 : vec3<f32> = ((vec3<f32>(x_913.x, x_913.x, x_913.x) * vec3<f32>(x_915.x, x_915.y, x_915.z)) + vec3<f32>(x_919.x, x_919.y, x_919.z));
  let x_922 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_921.x, x_921.y, x_921.z, x_922.w);
  let x_925 : f32 = x_58.x_Surface;
  u_xlatb8 = (x_925 == 1.0f);
  let x_927 : bool = u_xlatb8;
  let x_928 : bool = u_xlatb16;
  u_xlatb8 = (x_927 | x_928);
  let x_930 : bool = u_xlatb8;
  if (x_930) {
    let x_935 : f32 = u_xlat0.x;
    x_931 = x_935;
  } else {
    x_931 = 1.0f;
  }
  let x_937 : f32 = x_931;
  SV_Target0.w = x_937;
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


