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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(7) var sampler_BaseMap : sampler;

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

@group(0) @binding(5) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_PointRepeat : sampler;

var<private> u_xlatb24 : bool;

@group(1) @binding(2) var<uniform> x_186 : UnityPerDraw;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_247 : LightShadows;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu8 : u32;

var<private> u_xlati8 : i32;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(6) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb1 : bool;

var<private> u_xlatb26 : bool;

var<private> u_xlat26 : f32;

var<private> u_xlatu24 : u32;

var<private> u_xlatu27 : u32;

var<private> u_xlati28 : i32;

var<private> u_xlat27 : f32;

var<private> u_xlati27 : i32;

@group(1) @binding(1) var<uniform> x_725 : AdditionalLights;

var<private> u_xlat28 : f32;

var<private> u_xlat29 : f32;

var<private> u_xlati29 : i32;

var<private> u_xlatb30 : bool;

var<private> u_xlatb7 : vec4<bool>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat31 : f32;

var<private> u_xlat15 : f32;

var<private> u_xlat30 : f32;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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
  var x_856 : f32;
  var x_866 : f32;
  var txVec1 : vec3<f32>;
  var x_1077 : f32;
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
  u_xlat2 = (vec3<f32>(x_233.x, x_233.x, x_233.x) * x_235);
  let x_239 : vec3<f32> = vs_TEXCOORD1;
  let x_249 : vec4<f32> = x_247.x_CascadeShadowSplitSpheres0;
  let x_252 : vec3<f32> = (x_239 + -(vec3<f32>(x_249.x, x_249.y, x_249.z)));
  let x_253 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_252.x, x_252.y, x_252.z, x_253.w);
  let x_256 : vec3<f32> = vs_TEXCOORD1;
  let x_258 : vec4<f32> = x_247.x_CascadeShadowSplitSpheres1;
  let x_261 : vec3<f32> = (x_256 + -(vec3<f32>(x_258.x, x_258.y, x_258.z)));
  let x_262 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_261.x, x_261.y, x_261.z, x_262.w);
  let x_265 : vec3<f32> = vs_TEXCOORD1;
  let x_268 : vec4<f32> = x_247.x_CascadeShadowSplitSpheres2;
  u_xlat5 = (x_265 + -(vec3<f32>(x_268.x, x_268.y, x_268.z)));
  let x_273 : vec3<f32> = vs_TEXCOORD1;
  let x_275 : vec4<f32> = x_247.x_CascadeShadowSplitSpheres3;
  u_xlat6 = (x_273 + -(vec3<f32>(x_275.x, x_275.y, x_275.z)));
  let x_279 : vec4<f32> = u_xlat3;
  let x_281 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_279.x, x_279.y, x_279.z), vec3<f32>(x_281.x, x_281.y, x_281.z));
  let x_285 : vec4<f32> = u_xlat4;
  let x_287 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_285.x, x_285.y, x_285.z), vec3<f32>(x_287.x, x_287.y, x_287.z));
  let x_292 : vec3<f32> = u_xlat5;
  let x_293 : vec3<f32> = u_xlat5;
  u_xlat3.z = dot(x_292, x_293);
  let x_296 : vec3<f32> = u_xlat6;
  let x_297 : vec3<f32> = u_xlat6;
  u_xlat3.w = dot(x_296, x_297);
  let x_303 : vec4<f32> = u_xlat3;
  let x_306 : vec4<f32> = x_247.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_303 < x_306);
  let x_309 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_309);
  let x_313 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_313);
  let x_317 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_317);
  let x_321 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_321);
  let x_325 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_325);
  let x_331 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_331);
  let x_335 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_335);
  let x_338 : vec4<f32> = u_xlat3;
  let x_340 : vec4<f32> = u_xlat4;
  let x_342 : vec3<f32> = (vec3<f32>(x_338.x, x_338.y, x_338.z) + vec3<f32>(x_340.y, x_340.z, x_340.w));
  let x_343 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_342.x, x_342.y, x_342.z, x_343.w);
  let x_345 : vec4<f32> = u_xlat3;
  let x_348 : vec3<f32> = max(vec3<f32>(x_345.x, x_345.y, x_345.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_349 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_349.x, x_348.x, x_348.y, x_348.z);
  let x_351 : vec4<f32> = u_xlat4;
  u_xlat8.x = dot(x_351, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_359 : f32 = u_xlat8.x;
  u_xlat8.x = (-(x_359) + 4.0f);
  let x_366 : f32 = u_xlat8.x;
  u_xlatu8 = u32(x_366);
  let x_370 : u32 = u_xlatu8;
  u_xlati8 = (bitcast<i32>(x_370) << bitcast<u32>(2i));
  let x_373 : vec3<f32> = vs_TEXCOORD1;
  let x_375 : i32 = u_xlati8;
  let x_378 : i32 = u_xlati8;
  let x_382 : vec4<f32> = x_247.x_MainLightWorldToShadow[((x_375 + 1i) / 4i)][((x_378 + 1i) % 4i)];
  let x_384 : vec3<f32> = (vec3<f32>(x_373.y, x_373.y, x_373.y) * vec3<f32>(x_382.x, x_382.y, x_382.z));
  let x_385 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_384.x, x_384.y, x_384.z, x_385.w);
  let x_387 : i32 = u_xlati8;
  let x_389 : i32 = u_xlati8;
  let x_392 : vec4<f32> = x_247.x_MainLightWorldToShadow[(x_387 / 4i)][(x_389 % 4i)];
  let x_394 : vec3<f32> = vs_TEXCOORD1;
  let x_397 : vec4<f32> = u_xlat3;
  let x_399 : vec3<f32> = ((vec3<f32>(x_392.x, x_392.y, x_392.z) * vec3<f32>(x_394.x, x_394.x, x_394.x)) + vec3<f32>(x_397.x, x_397.y, x_397.z));
  let x_400 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_399.x, x_399.y, x_399.z, x_400.w);
  let x_402 : i32 = u_xlati8;
  let x_405 : i32 = u_xlati8;
  let x_409 : vec4<f32> = x_247.x_MainLightWorldToShadow[((x_402 + 2i) / 4i)][((x_405 + 2i) % 4i)];
  let x_411 : vec3<f32> = vs_TEXCOORD1;
  let x_414 : vec4<f32> = u_xlat3;
  let x_416 : vec3<f32> = ((vec3<f32>(x_409.x, x_409.y, x_409.z) * vec3<f32>(x_411.z, x_411.z, x_411.z)) + vec3<f32>(x_414.x, x_414.y, x_414.z));
  let x_417 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_416.x, x_416.y, x_416.z, x_417.w);
  let x_419 : vec4<f32> = u_xlat3;
  let x_421 : i32 = u_xlati8;
  let x_424 : i32 = u_xlati8;
  let x_428 : vec4<f32> = x_247.x_MainLightWorldToShadow[((x_421 + 3i) / 4i)][((x_424 + 3i) % 4i)];
  let x_430 : vec3<f32> = (vec3<f32>(x_419.x, x_419.y, x_419.z) + vec3<f32>(x_428.x, x_428.y, x_428.z));
  let x_431 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_430.x, x_430.y, x_430.z, x_431.w);
  let x_434 : f32 = vs_TEXCOORD1.y;
  let x_437 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat8.x = (x_434 * x_437);
  let x_441 : f32 = x_45.unity_MatrixV[0i].z;
  let x_443 : f32 = vs_TEXCOORD1.x;
  let x_446 : f32 = u_xlat8.x;
  u_xlat8.x = ((x_441 * x_443) + x_446);
  let x_450 : f32 = x_45.unity_MatrixV[2i].z;
  let x_452 : f32 = vs_TEXCOORD1.z;
  let x_455 : f32 = u_xlat8.x;
  u_xlat8.x = ((x_450 * x_452) + x_455);
  let x_459 : f32 = u_xlat8.x;
  let x_461 : f32 = x_45.unity_MatrixV[3i].z;
  u_xlat8.x = (x_459 + x_461);
  let x_465 : f32 = u_xlat8.x;
  let x_469 : f32 = x_45.x_ProjectionParams.y;
  u_xlat8.x = (-(x_465) + -(x_469));
  let x_474 : f32 = u_xlat8.x;
  u_xlat8.x = max(x_474, 0.0f);
  let x_478 : f32 = u_xlat8.x;
  let x_481 : f32 = x_45.unity_FogParams.x;
  u_xlat8.x = (x_478 * x_481);
  let x_490 : vec2<f32> = vs_TEXCOORD7;
  let x_492 : f32 = x_45.x_GlobalMipBias.x;
  let x_493 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_490, x_492);
  u_xlat4 = x_493;
  let x_498 : vec2<f32> = vs_TEXCOORD7;
  let x_500 : f32 = x_45.x_GlobalMipBias.x;
  let x_501 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_498, x_500);
  u_xlat5 = vec3<f32>(x_501.x, x_501.y, x_501.z);
  let x_503 : vec4<f32> = u_xlat4;
  let x_507 : vec3<f32> = (vec3<f32>(x_503.x, x_503.y, x_503.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_508 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_507.x, x_507.y, x_507.z, x_508.w);
  let x_510 : vec3<f32> = u_xlat2;
  let x_511 : vec4<f32> = u_xlat4;
  u_xlat24 = dot(x_510, vec3<f32>(x_511.x, x_511.y, x_511.z));
  let x_514 : f32 = u_xlat24;
  u_xlat24 = (x_514 + 0.5f);
  let x_516 : f32 = u_xlat24;
  let x_518 : vec3<f32> = u_xlat5;
  let x_519 : vec3<f32> = (vec3<f32>(x_516, x_516, x_516) * x_518);
  let x_520 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_519.x, x_519.y, x_519.z, x_520.w);
  let x_523 : f32 = u_xlat4.w;
  u_xlat24 = max(x_523, 0.00009999999747378752f);
  let x_525 : vec4<f32> = u_xlat4;
  let x_527 : f32 = u_xlat24;
  let x_529 : vec3<f32> = (vec3<f32>(x_525.x, x_525.y, x_525.z) / vec3<f32>(x_527, x_527, x_527));
  let x_530 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_529.x, x_529.y, x_529.z, x_530.w);
  let x_534 : vec4<f32> = u_xlat3;
  let x_535 : vec2<f32> = vec2<f32>(x_534.x, x_534.y);
  let x_537 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_535.x, x_535.y, x_537);
  let x_549 : vec3<f32> = txVec0;
  let x_551 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_549.xy, x_549.z);
  u_xlat24 = x_551;
  let x_554 : f32 = x_247.x_MainLightShadowParams.x;
  u_xlat1.x = (-(x_554) + 1.0f);
  let x_558 : f32 = u_xlat24;
  let x_560 : f32 = x_247.x_MainLightShadowParams.x;
  let x_563 : f32 = u_xlat1.x;
  u_xlat24 = ((x_558 * x_560) + x_563);
  let x_567 : f32 = u_xlat3.z;
  u_xlatb1 = (0.0f >= x_567);
  let x_571 : f32 = u_xlat3.z;
  u_xlatb26 = (x_571 >= 1.0f);
  let x_573 : bool = u_xlatb1;
  let x_574 : bool = u_xlatb26;
  u_xlatb1 = (x_573 | x_574);
  let x_576 : bool = u_xlatb1;
  let x_577 : f32 = u_xlat24;
  u_xlat24 = select(x_577, 1.0f, x_576);
  let x_579 : vec3<f32> = vs_TEXCOORD1;
  let x_582 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_584 : vec3<f32> = (x_579 + -(x_582));
  let x_585 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_584.x, x_584.y, x_584.z, x_585.w);
  let x_587 : vec4<f32> = u_xlat3;
  let x_589 : vec4<f32> = u_xlat3;
  u_xlat1.x = dot(vec3<f32>(x_587.x, x_587.y, x_587.z), vec3<f32>(x_589.x, x_589.y, x_589.z));
  let x_595 : f32 = u_xlat1.x;
  let x_597 : f32 = x_247.x_MainLightShadowParams.z;
  let x_600 : f32 = x_247.x_MainLightShadowParams.w;
  u_xlat26 = ((x_595 * x_597) + x_600);
  let x_602 : f32 = u_xlat26;
  u_xlat26 = clamp(x_602, 0.0f, 1.0f);
  let x_604 : f32 = u_xlat24;
  u_xlat3.x = (-(x_604) + 1.0f);
  let x_608 : f32 = u_xlat26;
  let x_610 : f32 = u_xlat3.x;
  let x_612 : f32 = u_xlat24;
  u_xlat24 = ((x_608 * x_610) + x_612);
  let x_614 : f32 = u_xlat24;
  let x_616 : f32 = x_186.unity_LightData.z;
  u_xlat24 = (x_614 * x_616);
  let x_618 : f32 = u_xlat24;
  let x_621 : vec4<f32> = x_45.x_MainLightColor;
  let x_623 : vec3<f32> = (vec3<f32>(x_618, x_618, x_618) * vec3<f32>(x_621.x, x_621.y, x_621.z));
  let x_624 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_623.x, x_623.y, x_623.z, x_624.w);
  let x_626 : vec3<f32> = u_xlat2;
  let x_628 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat24 = dot(x_626, vec3<f32>(x_628.x, x_628.y, x_628.z));
  let x_631 : f32 = u_xlat24;
  u_xlat24 = clamp(x_631, 0.0f, 1.0f);
  let x_633 : f32 = u_xlat24;
  let x_635 : vec4<f32> = u_xlat3;
  let x_637 : vec3<f32> = (vec3<f32>(x_633, x_633, x_633) * vec3<f32>(x_635.x, x_635.y, x_635.z));
  let x_638 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_637.x, x_637.y, x_637.z, x_638.w);
  let x_640 : vec4<f32> = u_xlat1;
  let x_642 : vec4<f32> = u_xlat3;
  let x_644 : vec3<f32> = (vec3<f32>(x_640.y, x_640.z, x_640.w) * vec3<f32>(x_642.x, x_642.y, x_642.z));
  let x_645 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_644.x, x_644.y, x_644.z, x_645.w);
  let x_648 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_650 : f32 = x_186.unity_LightData.y;
  u_xlat24 = min(x_648, x_650);
  let x_653 : f32 = u_xlat24;
  u_xlatu24 = bitcast<u32>(i32(x_653));
  let x_657 : f32 = u_xlat1.x;
  let x_660 : f32 = x_247.x_AdditionalShadowFadeParams.x;
  let x_663 : f32 = x_247.x_AdditionalShadowFadeParams.y;
  u_xlat1.x = ((x_657 * x_660) + x_663);
  let x_667 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_667, 0.0f, 1.0f);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_680 : u32 = u_xlatu_loop_1;
    let x_681 : u32 = u_xlatu24;
    if ((x_680 < x_681)) {
    } else {
      break;
    }
    let x_684 : u32 = u_xlatu_loop_1;
    u_xlatu27 = (x_684 >> 2u);
    let x_687 : u32 = u_xlatu_loop_1;
    u_xlati28 = bitcast<i32>((x_687 & 3u));
    let x_691 : u32 = u_xlatu27;
    let x_694 : vec4<f32> = x_186.unity_LightIndices[bitcast<i32>(x_691)];
    let x_704 : i32 = u_xlati28;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_709 : vec4<u32> = indexable[x_704];
    u_xlat27 = dot(x_694, bitcast<vec4<f32>>(x_709));
    let x_713 : f32 = u_xlat27;
    u_xlati27 = i32(x_713);
    let x_715 : vec3<f32> = vs_TEXCOORD1;
    let x_726 : i32 = u_xlati27;
    let x_728 : vec4<f32> = x_725.x_AdditionalLightsPosition[x_726];
    let x_731 : i32 = u_xlati27;
    let x_733 : vec4<f32> = x_725.x_AdditionalLightsPosition[x_731];
    u_xlat6 = ((-(x_715) * vec3<f32>(x_728.w, x_728.w, x_728.w)) + vec3<f32>(x_733.x, x_733.y, x_733.z));
    let x_737 : vec3<f32> = u_xlat6;
    let x_738 : vec3<f32> = u_xlat6;
    u_xlat28 = dot(x_737, x_738);
    let x_740 : f32 = u_xlat28;
    u_xlat28 = max(x_740, 0.00006103515625f);
    let x_744 : f32 = u_xlat28;
    u_xlat29 = inverseSqrt(x_744);
    let x_746 : f32 = u_xlat29;
    let x_748 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_746, x_746, x_746) * x_748);
    let x_750 : f32 = u_xlat28;
    u_xlat29 = (1.0f / x_750);
    let x_752 : f32 = u_xlat28;
    let x_753 : i32 = u_xlati27;
    let x_755 : f32 = x_725.x_AdditionalLightsAttenuation[x_753].x;
    u_xlat28 = (x_752 * x_755);
    let x_757 : f32 = u_xlat28;
    let x_759 : f32 = u_xlat28;
    u_xlat28 = ((-(x_757) * x_759) + 1.0f);
    let x_762 : f32 = u_xlat28;
    u_xlat28 = max(x_762, 0.0f);
    let x_764 : f32 = u_xlat28;
    let x_765 : f32 = u_xlat28;
    u_xlat28 = (x_764 * x_765);
    let x_767 : f32 = u_xlat28;
    let x_768 : f32 = u_xlat29;
    u_xlat28 = (x_767 * x_768);
    let x_770 : i32 = u_xlati27;
    let x_772 : vec4<f32> = x_725.x_AdditionalLightsSpotDir[x_770];
    let x_774 : vec3<f32> = u_xlat6;
    u_xlat29 = dot(vec3<f32>(x_772.x, x_772.y, x_772.z), x_774);
    let x_776 : f32 = u_xlat29;
    let x_777 : i32 = u_xlati27;
    let x_779 : f32 = x_725.x_AdditionalLightsAttenuation[x_777].z;
    let x_781 : i32 = u_xlati27;
    let x_783 : f32 = x_725.x_AdditionalLightsAttenuation[x_781].w;
    u_xlat29 = ((x_776 * x_779) + x_783);
    let x_785 : f32 = u_xlat29;
    u_xlat29 = clamp(x_785, 0.0f, 1.0f);
    let x_787 : f32 = u_xlat29;
    let x_788 : f32 = u_xlat29;
    u_xlat29 = (x_787 * x_788);
    let x_790 : f32 = u_xlat28;
    let x_791 : f32 = u_xlat29;
    u_xlat28 = (x_790 * x_791);
    let x_795 : i32 = u_xlati27;
    let x_797 : f32 = x_247.x_AdditionalShadowParams[x_795].w;
    u_xlati29 = i32(x_797);
    let x_800 : i32 = u_xlati29;
    u_xlatb30 = (x_800 >= 0i);
    let x_802 : bool = u_xlatb30;
    if (x_802) {
      let x_806 : i32 = u_xlati27;
      let x_808 : f32 = x_247.x_AdditionalShadowParams[x_806].z;
      u_xlatb30 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_808, x_808, x_808, x_808))));
      let x_812 : bool = u_xlatb30;
      if (x_812) {
        let x_816 : vec3<f32> = u_xlat6;
        let x_819 : vec3<f32> = u_xlat6;
        let x_822 : vec4<bool> = (abs(vec4<f32>(x_816.z, x_816.z, x_816.y, x_816.z)) >= abs(vec4<f32>(x_819.x, x_819.y, x_819.x, x_819.x)));
        let x_824 : vec3<bool> = vec3<bool>(x_822.x, x_822.y, x_822.z);
        let x_825 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_824.x, x_824.y, x_824.z, x_825.w);
        let x_828 : bool = u_xlatb7.y;
        let x_830 : bool = u_xlatb7.x;
        u_xlatb30 = (x_828 & x_830);
        let x_832 : vec3<f32> = u_xlat6;
        let x_835 : vec4<bool> = (-(vec4<f32>(x_832.z, x_832.y, x_832.z, x_832.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_836 : vec3<bool> = vec3<bool>(x_835.x, x_835.y, x_835.w);
        let x_837 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_836.x, x_836.y, x_837.z, x_836.z);
        let x_841 : bool = u_xlatb7.x;
        u_xlat7.x = select(4.0f, 5.0f, x_841);
        let x_846 : bool = u_xlatb7.y;
        u_xlat7.y = select(2.0f, 3.0f, x_846);
        let x_851 : bool = u_xlatb7.w;
        u_xlat31 = select(0.0f, 1.0f, x_851);
        let x_855 : bool = u_xlatb7.z;
        if (x_855) {
          let x_860 : f32 = u_xlat7.y;
          x_856 = x_860;
        } else {
          let x_862 : f32 = u_xlat31;
          x_856 = x_862;
        }
        let x_863 : f32 = x_856;
        u_xlat15 = x_863;
        let x_865 : bool = u_xlatb30;
        if (x_865) {
          let x_870 : f32 = u_xlat7.x;
          x_866 = x_870;
        } else {
          let x_872 : f32 = u_xlat15;
          x_866 = x_872;
        }
        let x_873 : f32 = x_866;
        u_xlat30 = x_873;
        let x_874 : i32 = u_xlati27;
        let x_876 : f32 = x_247.x_AdditionalShadowParams[x_874].w;
        u_xlat7.x = trunc(x_876);
        let x_879 : f32 = u_xlat30;
        let x_881 : f32 = u_xlat7.x;
        u_xlat30 = (x_879 + x_881);
        let x_883 : f32 = u_xlat30;
        u_xlati29 = i32(x_883);
      }
      let x_885 : i32 = u_xlati29;
      u_xlati29 = (x_885 << bitcast<u32>(2i));
      let x_887 : vec3<f32> = vs_TEXCOORD1;
      let x_890 : i32 = u_xlati29;
      let x_893 : i32 = u_xlati29;
      let x_897 : vec4<f32> = x_247.x_AdditionalLightsWorldToShadow[((x_890 + 1i) / 4i)][((x_893 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_887.y, x_887.y, x_887.y, x_887.y) * x_897);
      let x_899 : i32 = u_xlati29;
      let x_901 : i32 = u_xlati29;
      let x_904 : vec4<f32> = x_247.x_AdditionalLightsWorldToShadow[(x_899 / 4i)][(x_901 % 4i)];
      let x_905 : vec3<f32> = vs_TEXCOORD1;
      let x_908 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_904 * vec4<f32>(x_905.x, x_905.x, x_905.x, x_905.x)) + x_908);
      let x_910 : i32 = u_xlati29;
      let x_913 : i32 = u_xlati29;
      let x_917 : vec4<f32> = x_247.x_AdditionalLightsWorldToShadow[((x_910 + 2i) / 4i)][((x_913 + 2i) % 4i)];
      let x_918 : vec3<f32> = vs_TEXCOORD1;
      let x_921 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_917 * vec4<f32>(x_918.z, x_918.z, x_918.z, x_918.z)) + x_921);
      let x_923 : vec4<f32> = u_xlat7;
      let x_924 : i32 = u_xlati29;
      let x_927 : i32 = u_xlati29;
      let x_931 : vec4<f32> = x_247.x_AdditionalLightsWorldToShadow[((x_924 + 3i) / 4i)][((x_927 + 3i) % 4i)];
      u_xlat7 = (x_923 + x_931);
      let x_933 : vec4<f32> = u_xlat7;
      let x_935 : vec4<f32> = u_xlat7;
      let x_937 : vec3<f32> = (vec3<f32>(x_933.x, x_933.y, x_933.z) / vec3<f32>(x_935.w, x_935.w, x_935.w));
      let x_938 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_937.x, x_937.y, x_937.z, x_938.w);
      let x_941 : vec4<f32> = u_xlat7;
      let x_942 : vec2<f32> = vec2<f32>(x_941.x, x_941.y);
      let x_944 : f32 = u_xlat7.z;
      txVec1 = vec3<f32>(x_942.x, x_942.y, x_944);
      let x_952 : vec3<f32> = txVec1;
      let x_954 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_952.xy, x_952.z);
      u_xlat29 = x_954;
      let x_955 : i32 = u_xlati27;
      let x_957 : f32 = x_247.x_AdditionalShadowParams[x_955].x;
      u_xlat30 = (1.0f + -(x_957));
      let x_960 : f32 = u_xlat29;
      let x_961 : i32 = u_xlati27;
      let x_963 : f32 = x_247.x_AdditionalShadowParams[x_961].x;
      let x_965 : f32 = u_xlat30;
      u_xlat29 = ((x_960 * x_963) + x_965);
      let x_968 : f32 = u_xlat7.z;
      u_xlatb30 = (0.0f >= x_968);
      let x_971 : f32 = u_xlat7.z;
      u_xlatb7.x = (x_971 >= 1.0f);
      let x_974 : bool = u_xlatb30;
      let x_976 : bool = u_xlatb7.x;
      u_xlatb30 = (x_974 | x_976);
      let x_978 : bool = u_xlatb30;
      let x_979 : f32 = u_xlat29;
      u_xlat29 = select(x_979, 1.0f, x_978);
    } else {
      u_xlat29 = 1.0f;
    }
    let x_982 : f32 = u_xlat29;
    u_xlat30 = (-(x_982) + 1.0f);
    let x_986 : f32 = u_xlat1.x;
    let x_987 : f32 = u_xlat30;
    let x_989 : f32 = u_xlat29;
    u_xlat29 = ((x_986 * x_987) + x_989);
    let x_991 : f32 = u_xlat28;
    let x_992 : f32 = u_xlat29;
    u_xlat28 = (x_991 * x_992);
    let x_994 : f32 = u_xlat28;
    let x_996 : i32 = u_xlati27;
    let x_998 : vec4<f32> = x_725.x_AdditionalLightsColor[x_996];
    let x_1000 : vec3<f32> = (vec3<f32>(x_994, x_994, x_994) * vec3<f32>(x_998.x, x_998.y, x_998.z));
    let x_1001 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1000.x, x_1000.y, x_1000.z, x_1001.w);
    let x_1003 : vec3<f32> = u_xlat2;
    let x_1004 : vec3<f32> = u_xlat6;
    u_xlat27 = dot(x_1003, x_1004);
    let x_1006 : f32 = u_xlat27;
    u_xlat27 = clamp(x_1006, 0.0f, 1.0f);
    let x_1008 : f32 = u_xlat27;
    let x_1010 : vec4<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_1008, x_1008, x_1008) * vec3<f32>(x_1010.x, x_1010.y, x_1010.z));
    let x_1013 : vec3<f32> = u_xlat6;
    let x_1014 : vec4<f32> = u_xlat1;
    let x_1017 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_1013 * vec3<f32>(x_1014.y, x_1014.z, x_1014.w)) + x_1017);

    continuing {
      let x_1019 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1019 + bitcast<u32>(1i));
    }
  }
  let x_1021 : vec4<f32> = u_xlat4;
  let x_1023 : vec4<f32> = u_xlat1;
  let x_1026 : vec4<f32> = u_xlat3;
  let x_1028 : vec3<f32> = ((vec3<f32>(x_1021.x, x_1021.y, x_1021.z) * vec3<f32>(x_1023.y, x_1023.z, x_1023.w)) + vec3<f32>(x_1026.x, x_1026.y, x_1026.z));
  let x_1029 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1028.x, x_1028.y, x_1028.z, x_1029.w);
  let x_1031 : vec3<f32> = u_xlat5;
  let x_1032 : vec4<f32> = u_xlat1;
  let x_1034 : vec3<f32> = (x_1031 + vec3<f32>(x_1032.x, x_1032.y, x_1032.z));
  let x_1035 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1034.x, x_1034.y, x_1034.z, x_1035.w);
  let x_1038 : f32 = u_xlat8.x;
  let x_1040 : f32 = u_xlat8.x;
  u_xlat8.x = (x_1038 * -(x_1040));
  let x_1045 : f32 = u_xlat8.x;
  u_xlat8.x = exp2(x_1045);
  let x_1048 : vec4<f32> = u_xlat1;
  let x_1051 : vec4<f32> = x_45.unity_FogColor;
  let x_1054 : vec3<f32> = (vec3<f32>(x_1048.x, x_1048.y, x_1048.z) + -(vec3<f32>(x_1051.x, x_1051.y, x_1051.z)));
  let x_1055 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1054.x, x_1054.y, x_1054.z, x_1055.w);
  let x_1059 : vec3<f32> = u_xlat8;
  let x_1061 : vec4<f32> = u_xlat1;
  let x_1065 : vec4<f32> = x_45.unity_FogColor;
  let x_1067 : vec3<f32> = ((vec3<f32>(x_1059.x, x_1059.x, x_1059.x) * vec3<f32>(x_1061.x, x_1061.y, x_1061.z)) + vec3<f32>(x_1065.x, x_1065.y, x_1065.z));
  let x_1068 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1067.x, x_1067.y, x_1067.z, x_1068.w);
  let x_1071 : f32 = x_58.x_Surface;
  u_xlatb8 = (x_1071 == 1.0f);
  let x_1073 : bool = u_xlatb8;
  let x_1074 : bool = u_xlatb16;
  u_xlatb8 = (x_1073 | x_1074);
  let x_1076 : bool = u_xlatb8;
  if (x_1076) {
    let x_1081 : f32 = u_xlat0.x;
    x_1077 = x_1081;
  } else {
    x_1077 = 1.0f;
  }
  let x_1083 : f32 = x_1077;
  SV_Target0.w = x_1083;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_TEXCOORD7_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  main_1();
  return main_out(SV_Target0);
}


