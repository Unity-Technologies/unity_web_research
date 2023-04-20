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
  /* @offset(76) */
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

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

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

var<private> u_xlat26 : f32;

var<private> u_xlatu26 : u32;

var<private> u_xlati27 : i32;

var<private> u_xlati26 : i32;

@group(1) @binding(1) var<uniform> x_695 : AdditionalLights;

var<private> u_xlat27 : f32;

var<private> u_xlat28 : f32;

var<private> u_xlati28 : i32;

var<private> u_xlatb29 : bool;

var<private> u_xlatb7 : vec4<bool>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat30 : f32;

var<private> u_xlat29 : f32;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb30 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatu1 : u32;

var<private> u_xlatb26 : bool;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_76 : f32;
  var x_132 : f32;
  var x_192 : f32;
  var txVec0 : vec3<f32>;
  var x_530 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_825 : f32;
  var x_835 : f32;
  var txVec1 : vec3<f32>;
  var x_1015 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_41 : vec2<f32> = vs_TEXCOORD0;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_41, x_50);
  u_xlat0 = x_51;
  let x_53 : vec4<f32> = u_xlat0;
  let x_61 : vec4<f32> = x_57.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_53.w, x_53.x, x_53.y, x_53.z) * vec4<f32>(x_61.w, x_61.x, x_61.y, x_61.z));
  let x_69 : f32 = u_xlat1.x;
  let x_72 : f32 = x_57.x_Cutoff;
  u_xlatb0 = (x_69 >= x_72);
  let x_74 : bool = u_xlatb0;
  if (x_74) {
    let x_80 : f32 = u_xlat1.x;
    x_76 = x_80;
  } else {
    x_76 = 0.0f;
  }
  let x_83 : f32 = x_76;
  u_xlat0.x = x_83;
  let x_88 : f32 = u_xlat0.w;
  let x_90 : f32 = x_57.x_BaseColor.w;
  let x_93 : f32 = x_57.x_Cutoff;
  u_xlat8.x = ((x_88 * x_90) + -(x_93));
  let x_99 : f32 = u_xlat1.x;
  u_xlat16 = dpdxCoarse(x_99);
  let x_103 : f32 = u_xlat1.x;
  u_xlat24 = dpdyCoarse(x_103);
  let x_105 : f32 = u_xlat24;
  let x_107 : f32 = u_xlat16;
  u_xlat16 = (abs(x_105) + abs(x_107));
  let x_110 : f32 = u_xlat16;
  u_xlat16 = max(x_110, 0.00009999999747378752f);
  let x_114 : f32 = u_xlat8.x;
  let x_115 : f32 = u_xlat16;
  u_xlat8.x = (x_114 / x_115);
  let x_119 : f32 = u_xlat8.x;
  u_xlat8.x = (x_119 + 0.5f);
  let x_124 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_124, 0.0f, 1.0f);
  let x_129 : f32 = x_44.x_AlphaToMaskAvailable;
  u_xlatb16 = !((x_129 == 0.0f));
  let x_131 : bool = u_xlatb16;
  if (x_131) {
    let x_136 : f32 = u_xlat8.x;
    x_132 = x_136;
  } else {
    let x_139 : f32 = u_xlat0.x;
    x_132 = x_139;
  }
  let x_140 : f32 = x_132;
  u_xlat0.x = x_140;
  let x_143 : f32 = u_xlat0.x;
  u_xlat8.x = (x_143 + -0.00009999999747378752f);
  let x_149 : f32 = u_xlat8.x;
  u_xlatb8 = (x_149 < 0.0f);
  let x_151 : bool = u_xlatb8;
  if (((select(0i, 1i, x_151) * -1i) != 0i)) {
    discard;
  }
  let x_159 : vec4<f32> = hlslcc_FragCoord;
  let x_163 : f32 = x_44.x_DitheringTextureInvSize;
  let x_165 : vec2<f32> = (vec2<f32>(x_159.x, x_159.y) * vec2<f32>(x_163, x_163));
  let x_166 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_165.x, x_166.y, x_165.y);
  let x_173 : vec3<f32> = u_xlat8;
  let x_176 : f32 = x_44.x_GlobalMipBias.x;
  let x_177 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_PointRepeat, vec2<f32>(x_173.x, x_173.z), x_176);
  u_xlat8.x = x_177.w;
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
  let x_439 : vec2<f32> = vs_TEXCOORD7;
  let x_441 : f32 = x_44.x_GlobalMipBias.x;
  let x_442 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_439, x_441);
  u_xlat4 = x_442;
  let x_447 : vec2<f32> = vs_TEXCOORD7;
  let x_449 : f32 = x_44.x_GlobalMipBias.x;
  let x_450 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_447, x_449);
  u_xlat5 = vec3<f32>(x_450.x, x_450.y, x_450.z);
  let x_452 : vec4<f32> = u_xlat4;
  let x_456 : vec3<f32> = (vec3<f32>(x_452.x, x_452.y, x_452.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_457 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_456.x, x_456.y, x_456.z, x_457.w);
  let x_459 : vec3<f32> = u_xlat2;
  let x_460 : vec4<f32> = u_xlat4;
  u_xlat8.x = dot(x_459, vec3<f32>(x_460.x, x_460.y, x_460.z));
  let x_465 : f32 = u_xlat8.x;
  u_xlat8.x = (x_465 + 0.5f);
  let x_468 : vec3<f32> = u_xlat8;
  let x_470 : vec3<f32> = u_xlat5;
  let x_471 : vec3<f32> = (vec3<f32>(x_468.x, x_468.x, x_468.x) * x_470);
  let x_472 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_471.x, x_471.y, x_471.z, x_472.w);
  let x_475 : f32 = u_xlat4.w;
  u_xlat8.x = max(x_475, 0.00009999999747378752f);
  let x_478 : vec4<f32> = u_xlat4;
  let x_480 : vec3<f32> = u_xlat8;
  let x_482 : vec3<f32> = (vec3<f32>(x_478.x, x_478.y, x_478.z) / vec3<f32>(x_480.x, x_480.x, x_480.x));
  let x_483 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_482.x, x_482.y, x_482.z, x_483.w);
  let x_487 : vec4<f32> = u_xlat3;
  let x_488 : vec2<f32> = vec2<f32>(x_487.x, x_487.y);
  let x_490 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_488.x, x_488.y, x_490);
  let x_502 : vec3<f32> = txVec0;
  let x_504 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_502.xy, x_502.z);
  u_xlat8.x = x_504;
  let x_508 : f32 = x_247.x_MainLightShadowParams.x;
  u_xlat24 = (-(x_508) + 1.0f);
  let x_512 : f32 = u_xlat8.x;
  let x_514 : f32 = x_247.x_MainLightShadowParams.x;
  let x_516 : f32 = u_xlat24;
  u_xlat8.x = ((x_512 * x_514) + x_516);
  let x_520 : f32 = u_xlat3.z;
  u_xlatb24 = (0.0f >= x_520);
  let x_524 : f32 = u_xlat3.z;
  u_xlatb1 = (x_524 >= 1.0f);
  let x_526 : bool = u_xlatb24;
  let x_527 : bool = u_xlatb1;
  u_xlatb24 = (x_526 | x_527);
  let x_529 : bool = u_xlatb24;
  if (x_529) {
    x_530 = 1.0f;
  } else {
    let x_535 : f32 = u_xlat8.x;
    x_530 = x_535;
  }
  let x_536 : f32 = x_530;
  u_xlat8.x = x_536;
  let x_538 : vec3<f32> = vs_TEXCOORD1;
  let x_541 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_543 : vec3<f32> = (x_538 + -(x_541));
  let x_544 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_543.x, x_543.y, x_543.z, x_544.w);
  let x_546 : vec4<f32> = u_xlat3;
  let x_548 : vec4<f32> = u_xlat3;
  u_xlat24 = dot(vec3<f32>(x_546.x, x_546.y, x_546.z), vec3<f32>(x_548.x, x_548.y, x_548.z));
  let x_551 : f32 = u_xlat24;
  let x_553 : f32 = x_247.x_MainLightShadowParams.z;
  let x_556 : f32 = x_247.x_MainLightShadowParams.w;
  u_xlat1.x = ((x_551 * x_553) + x_556);
  let x_560 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_560, 0.0f, 1.0f);
  let x_565 : f32 = u_xlat8.x;
  u_xlat26 = (-(x_565) + 1.0f);
  let x_569 : f32 = u_xlat1.x;
  let x_570 : f32 = u_xlat26;
  let x_573 : f32 = u_xlat8.x;
  u_xlat8.x = ((x_569 * x_570) + x_573);
  let x_577 : f32 = u_xlat8.x;
  let x_579 : f32 = x_186.unity_LightData.z;
  u_xlat8.x = (x_577 * x_579);
  let x_582 : vec3<f32> = u_xlat8;
  let x_585 : vec4<f32> = x_44.x_MainLightColor;
  let x_587 : vec3<f32> = (vec3<f32>(x_582.x, x_582.x, x_582.x) * vec3<f32>(x_585.x, x_585.y, x_585.z));
  let x_588 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_587.x, x_587.y, x_587.z, x_588.w);
  let x_590 : vec3<f32> = u_xlat2;
  let x_592 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat8.x = dot(x_590, vec3<f32>(x_592.x, x_592.y, x_592.z));
  let x_597 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_597, 0.0f, 1.0f);
  let x_600 : vec3<f32> = u_xlat8;
  let x_602 : vec4<f32> = u_xlat3;
  let x_604 : vec3<f32> = (vec3<f32>(x_600.x, x_600.x, x_600.x) * vec3<f32>(x_602.x, x_602.y, x_602.z));
  let x_605 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_604.x, x_604.y, x_604.z, x_605.w);
  let x_607 : vec4<f32> = u_xlat1;
  let x_609 : vec4<f32> = u_xlat3;
  let x_611 : vec3<f32> = (vec3<f32>(x_607.y, x_607.z, x_607.w) * vec3<f32>(x_609.x, x_609.y, x_609.z));
  let x_612 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_611.x, x_611.y, x_611.z, x_612.w);
  let x_614 : vec4<f32> = u_xlat0;
  let x_616 : vec4<f32> = u_xlat3;
  let x_618 : vec3<f32> = (vec3<f32>(x_614.x, x_614.x, x_614.x) * vec3<f32>(x_616.x, x_616.y, x_616.z));
  let x_619 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_618.x, x_618.y, x_618.z, x_619.w);
  let x_622 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_624 : f32 = x_186.unity_LightData.y;
  u_xlat8.x = min(x_622, x_624);
  let x_628 : f32 = u_xlat8.x;
  u_xlatu8 = bitcast<u32>(i32(x_628));
  let x_631 : f32 = u_xlat24;
  let x_634 : f32 = x_247.x_AdditionalShadowFadeParams.x;
  let x_637 : f32 = x_247.x_AdditionalShadowFadeParams.y;
  u_xlat24 = ((x_631 * x_634) + x_637);
  let x_639 : f32 = u_xlat24;
  u_xlat24 = clamp(x_639, 0.0f, 1.0f);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_651 : u32 = u_xlatu_loop_1;
    let x_652 : u32 = u_xlatu8;
    if ((x_651 < x_652)) {
    } else {
      break;
    }
    let x_655 : u32 = u_xlatu_loop_1;
    u_xlatu26 = (x_655 >> 2u);
    let x_658 : u32 = u_xlatu_loop_1;
    u_xlati27 = bitcast<i32>((x_658 & 3u));
    let x_661 : u32 = u_xlatu26;
    let x_664 : vec4<f32> = x_186.unity_LightIndices[bitcast<i32>(x_661)];
    let x_674 : i32 = u_xlati27;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_679 : vec4<u32> = indexable[x_674];
    u_xlat26 = dot(x_664, bitcast<vec4<f32>>(x_679));
    let x_683 : f32 = u_xlat26;
    u_xlati26 = i32(x_683);
    let x_685 : vec3<f32> = vs_TEXCOORD1;
    let x_696 : i32 = u_xlati26;
    let x_698 : vec4<f32> = x_695.x_AdditionalLightsPosition[x_696];
    let x_701 : i32 = u_xlati26;
    let x_703 : vec4<f32> = x_695.x_AdditionalLightsPosition[x_701];
    u_xlat6 = ((-(x_685) * vec3<f32>(x_698.w, x_698.w, x_698.w)) + vec3<f32>(x_703.x, x_703.y, x_703.z));
    let x_707 : vec3<f32> = u_xlat6;
    let x_708 : vec3<f32> = u_xlat6;
    u_xlat27 = dot(x_707, x_708);
    let x_710 : f32 = u_xlat27;
    u_xlat27 = max(x_710, 0.00006103515625f);
    let x_714 : f32 = u_xlat27;
    u_xlat28 = inverseSqrt(x_714);
    let x_716 : f32 = u_xlat28;
    let x_718 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_716, x_716, x_716) * x_718);
    let x_720 : f32 = u_xlat27;
    u_xlat28 = (1.0f / x_720);
    let x_722 : f32 = u_xlat27;
    let x_723 : i32 = u_xlati26;
    let x_725 : f32 = x_695.x_AdditionalLightsAttenuation[x_723].x;
    u_xlat27 = (x_722 * x_725);
    let x_727 : f32 = u_xlat27;
    let x_729 : f32 = u_xlat27;
    u_xlat27 = ((-(x_727) * x_729) + 1.0f);
    let x_732 : f32 = u_xlat27;
    u_xlat27 = max(x_732, 0.0f);
    let x_734 : f32 = u_xlat27;
    let x_735 : f32 = u_xlat27;
    u_xlat27 = (x_734 * x_735);
    let x_737 : f32 = u_xlat27;
    let x_738 : f32 = u_xlat28;
    u_xlat27 = (x_737 * x_738);
    let x_740 : i32 = u_xlati26;
    let x_742 : vec4<f32> = x_695.x_AdditionalLightsSpotDir[x_740];
    let x_744 : vec3<f32> = u_xlat6;
    u_xlat28 = dot(vec3<f32>(x_742.x, x_742.y, x_742.z), x_744);
    let x_746 : f32 = u_xlat28;
    let x_747 : i32 = u_xlati26;
    let x_749 : f32 = x_695.x_AdditionalLightsAttenuation[x_747].z;
    let x_751 : i32 = u_xlati26;
    let x_753 : f32 = x_695.x_AdditionalLightsAttenuation[x_751].w;
    u_xlat28 = ((x_746 * x_749) + x_753);
    let x_755 : f32 = u_xlat28;
    u_xlat28 = clamp(x_755, 0.0f, 1.0f);
    let x_757 : f32 = u_xlat28;
    let x_758 : f32 = u_xlat28;
    u_xlat28 = (x_757 * x_758);
    let x_760 : f32 = u_xlat27;
    let x_761 : f32 = u_xlat28;
    u_xlat27 = (x_760 * x_761);
    let x_765 : i32 = u_xlati26;
    let x_767 : f32 = x_247.x_AdditionalShadowParams[x_765].w;
    u_xlati28 = i32(x_767);
    let x_770 : i32 = u_xlati28;
    u_xlatb29 = (x_770 >= 0i);
    let x_772 : bool = u_xlatb29;
    if (x_772) {
      let x_776 : i32 = u_xlati26;
      let x_778 : f32 = x_247.x_AdditionalShadowParams[x_776].z;
      u_xlatb29 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_778, x_778, x_778, x_778))));
      let x_782 : bool = u_xlatb29;
      if (x_782) {
        let x_786 : vec3<f32> = u_xlat6;
        let x_789 : vec3<f32> = u_xlat6;
        let x_792 : vec4<bool> = (abs(vec4<f32>(x_786.z, x_786.z, x_786.y, x_786.z)) >= abs(vec4<f32>(x_789.x, x_789.y, x_789.x, x_789.x)));
        let x_794 : vec3<bool> = vec3<bool>(x_792.x, x_792.y, x_792.z);
        let x_795 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_794.x, x_794.y, x_794.z, x_795.w);
        let x_798 : bool = u_xlatb7.y;
        let x_800 : bool = u_xlatb7.x;
        u_xlatb29 = (x_798 & x_800);
        let x_802 : vec3<f32> = u_xlat6;
        let x_805 : vec4<bool> = (-(vec4<f32>(x_802.z, x_802.y, x_802.z, x_802.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_806 : vec3<bool> = vec3<bool>(x_805.x, x_805.y, x_805.w);
        let x_807 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_806.x, x_806.y, x_807.z, x_806.z);
        let x_811 : bool = u_xlatb7.x;
        u_xlat7.x = select(4.0f, 5.0f, x_811);
        let x_816 : bool = u_xlatb7.y;
        u_xlat7.y = select(2.0f, 3.0f, x_816);
        let x_821 : bool = u_xlatb7.w;
        u_xlat30 = select(0.0f, 1.0f, x_821);
        let x_824 : bool = u_xlatb7.z;
        if (x_824) {
          let x_829 : f32 = u_xlat7.y;
          x_825 = x_829;
        } else {
          let x_831 : f32 = u_xlat30;
          x_825 = x_831;
        }
        let x_832 : f32 = x_825;
        u_xlat30 = x_832;
        let x_834 : bool = u_xlatb29;
        if (x_834) {
          let x_839 : f32 = u_xlat7.x;
          x_835 = x_839;
        } else {
          let x_841 : f32 = u_xlat30;
          x_835 = x_841;
        }
        let x_842 : f32 = x_835;
        u_xlat29 = x_842;
        let x_843 : i32 = u_xlati26;
        let x_845 : f32 = x_247.x_AdditionalShadowParams[x_843].w;
        u_xlat30 = trunc(x_845);
        let x_847 : f32 = u_xlat29;
        let x_848 : f32 = u_xlat30;
        u_xlat29 = (x_847 + x_848);
        let x_850 : f32 = u_xlat29;
        u_xlati28 = i32(x_850);
      }
      let x_852 : i32 = u_xlati28;
      u_xlati28 = (x_852 << bitcast<u32>(2i));
      let x_854 : vec3<f32> = vs_TEXCOORD1;
      let x_857 : i32 = u_xlati28;
      let x_860 : i32 = u_xlati28;
      let x_864 : vec4<f32> = x_247.x_AdditionalLightsWorldToShadow[((x_857 + 1i) / 4i)][((x_860 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_854.y, x_854.y, x_854.y, x_854.y) * x_864);
      let x_866 : i32 = u_xlati28;
      let x_868 : i32 = u_xlati28;
      let x_871 : vec4<f32> = x_247.x_AdditionalLightsWorldToShadow[(x_866 / 4i)][(x_868 % 4i)];
      let x_872 : vec3<f32> = vs_TEXCOORD1;
      let x_875 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_871 * vec4<f32>(x_872.x, x_872.x, x_872.x, x_872.x)) + x_875);
      let x_877 : i32 = u_xlati28;
      let x_880 : i32 = u_xlati28;
      let x_884 : vec4<f32> = x_247.x_AdditionalLightsWorldToShadow[((x_877 + 2i) / 4i)][((x_880 + 2i) % 4i)];
      let x_885 : vec3<f32> = vs_TEXCOORD1;
      let x_888 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_884 * vec4<f32>(x_885.z, x_885.z, x_885.z, x_885.z)) + x_888);
      let x_890 : vec4<f32> = u_xlat7;
      let x_891 : i32 = u_xlati28;
      let x_894 : i32 = u_xlati28;
      let x_898 : vec4<f32> = x_247.x_AdditionalLightsWorldToShadow[((x_891 + 3i) / 4i)][((x_894 + 3i) % 4i)];
      u_xlat7 = (x_890 + x_898);
      let x_900 : vec4<f32> = u_xlat7;
      let x_902 : vec4<f32> = u_xlat7;
      let x_904 : vec3<f32> = (vec3<f32>(x_900.x, x_900.y, x_900.z) / vec3<f32>(x_902.w, x_902.w, x_902.w));
      let x_905 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_904.x, x_904.y, x_904.z, x_905.w);
      let x_908 : vec4<f32> = u_xlat7;
      let x_909 : vec2<f32> = vec2<f32>(x_908.x, x_908.y);
      let x_911 : f32 = u_xlat7.z;
      txVec1 = vec3<f32>(x_909.x, x_909.y, x_911);
      let x_919 : vec3<f32> = txVec1;
      let x_921 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_919.xy, x_919.z);
      u_xlat28 = x_921;
      let x_922 : i32 = u_xlati26;
      let x_924 : f32 = x_247.x_AdditionalShadowParams[x_922].x;
      u_xlat29 = (1.0f + -(x_924));
      let x_927 : f32 = u_xlat28;
      let x_928 : i32 = u_xlati26;
      let x_930 : f32 = x_247.x_AdditionalShadowParams[x_928].x;
      let x_932 : f32 = u_xlat29;
      u_xlat28 = ((x_927 * x_930) + x_932);
      let x_935 : f32 = u_xlat7.z;
      u_xlatb29 = (0.0f >= x_935);
      let x_939 : f32 = u_xlat7.z;
      u_xlatb30 = (x_939 >= 1.0f);
      let x_941 : bool = u_xlatb29;
      let x_942 : bool = u_xlatb30;
      u_xlatb29 = (x_941 | x_942);
      let x_944 : bool = u_xlatb29;
      let x_945 : f32 = u_xlat28;
      u_xlat28 = select(x_945, 1.0f, x_944);
    } else {
      u_xlat28 = 1.0f;
    }
    let x_948 : f32 = u_xlat28;
    u_xlat29 = (-(x_948) + 1.0f);
    let x_951 : f32 = u_xlat24;
    let x_952 : f32 = u_xlat29;
    let x_954 : f32 = u_xlat28;
    u_xlat28 = ((x_951 * x_952) + x_954);
    let x_956 : f32 = u_xlat27;
    let x_957 : f32 = u_xlat28;
    u_xlat27 = (x_956 * x_957);
    let x_959 : f32 = u_xlat27;
    let x_961 : i32 = u_xlati26;
    let x_963 : vec4<f32> = x_695.x_AdditionalLightsColor[x_961];
    let x_965 : vec3<f32> = (vec3<f32>(x_959, x_959, x_959) * vec3<f32>(x_963.x, x_963.y, x_963.z));
    let x_966 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_965.x, x_965.y, x_965.z, x_966.w);
    let x_968 : vec3<f32> = u_xlat2;
    let x_969 : vec3<f32> = u_xlat6;
    u_xlat26 = dot(x_968, x_969);
    let x_971 : f32 = u_xlat26;
    u_xlat26 = clamp(x_971, 0.0f, 1.0f);
    let x_973 : f32 = u_xlat26;
    let x_975 : vec4<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_973, x_973, x_973) * vec3<f32>(x_975.x, x_975.y, x_975.z));
    let x_978 : vec4<f32> = u_xlat1;
    let x_980 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_978.y, x_978.z, x_978.w) * x_980);
    let x_982 : vec3<f32> = u_xlat6;
    let x_983 : vec4<f32> = u_xlat0;
    let x_986 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_982 * vec3<f32>(x_983.x, x_983.x, x_983.x)) + x_986);

    continuing {
      let x_988 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_988 + bitcast<u32>(1i));
    }
  }
  let x_990 : vec4<f32> = u_xlat4;
  let x_992 : vec4<f32> = u_xlat1;
  let x_995 : vec4<f32> = u_xlat3;
  let x_997 : vec3<f32> = ((vec3<f32>(x_990.x, x_990.y, x_990.z) * vec3<f32>(x_992.y, x_992.z, x_992.w)) + vec3<f32>(x_995.x, x_995.y, x_995.z));
  let x_998 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_997.x, x_997.y, x_997.z, x_998.w);
  let x_1002 : vec3<f32> = u_xlat5;
  let x_1003 : vec4<f32> = u_xlat1;
  let x_1005 : vec3<f32> = (x_1002 + vec3<f32>(x_1003.x, x_1003.y, x_1003.z));
  let x_1006 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1005.x, x_1005.y, x_1005.z, x_1006.w);
  let x_1009 : f32 = x_57.x_Surface;
  u_xlatb8 = (x_1009 == 1.0f);
  let x_1011 : bool = u_xlatb8;
  let x_1012 : bool = u_xlatb16;
  u_xlatb8 = (x_1011 | x_1012);
  let x_1014 : bool = u_xlatb8;
  if (x_1014) {
    let x_1019 : f32 = u_xlat0.x;
    x_1015 = x_1019;
  } else {
    x_1015 = 1.0f;
  }
  let x_1021 : f32 = x_1015;
  SV_Target0.w = x_1021;
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


