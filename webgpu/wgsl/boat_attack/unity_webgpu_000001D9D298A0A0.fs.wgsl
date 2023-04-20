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

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(5) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

var<private> u_xlatb0 : bool;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat20 : f32;

var<private> u_xlat30 : f32;

var<private> u_xlatb20 : bool;

var<private> u_xlatb10 : bool;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(1) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_BumpMap : sampler;

@group(0) @binding(4) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_PointRepeat : sampler;

var<private> u_xlatb12 : bool;

@group(1) @binding(2) var<uniform> x_239 : UnityPerDraw;

var<private> u_xlatb2 : bool;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(4) var<uniform> x_451 : LightShadows;

var<private> u_xlatb1 : bool;

var<private> u_xlatb32 : bool;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat32 : f32;

var<private> u_xlat33 : f32;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlatu32 : u32;

var<private> u_xlatu34 : u32;

var<private> u_xlati35 : i32;

var<private> u_xlat34 : f32;

var<private> u_xlati34 : i32;

@group(1) @binding(1) var<uniform> x_684 : AdditionalLights;

var<private> u_xlat35 : f32;

var<private> u_xlat36 : f32;

var<private> u_xlati36 : i32;

var<private> u_xlatb37 : bool;

var<private> u_xlatb8 : vec4<bool>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat38 : f32;

var<private> u_xlat18 : f32;

var<private> u_xlat37 : f32;

@group(0) @binding(3) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat9 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatu33 : u32;

var<private> u_xlatb34 : bool;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_76 : f32;
  var x_132 : f32;
  var x_245 : f32;
  var txVec0 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_818 : f32;
  var x_828 : f32;
  var txVec1 : vec3<f32>;
  var x_1052 : f32;
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
  u_xlat10.x = ((x_88 * x_90) + -(x_93));
  let x_99 : f32 = u_xlat1.x;
  u_xlat20 = dpdxCoarse(x_99);
  let x_103 : f32 = u_xlat1.x;
  u_xlat30 = dpdyCoarse(x_103);
  let x_105 : f32 = u_xlat30;
  let x_107 : f32 = u_xlat20;
  u_xlat20 = (abs(x_105) + abs(x_107));
  let x_110 : f32 = u_xlat20;
  u_xlat20 = max(x_110, 0.00009999999747378752f);
  let x_114 : f32 = u_xlat10.x;
  let x_115 : f32 = u_xlat20;
  u_xlat10.x = (x_114 / x_115);
  let x_119 : f32 = u_xlat10.x;
  u_xlat10.x = (x_119 + 0.5f);
  let x_124 : f32 = u_xlat10.x;
  u_xlat10.x = clamp(x_124, 0.0f, 1.0f);
  let x_129 : f32 = x_44.x_AlphaToMaskAvailable;
  u_xlatb20 = !((x_129 == 0.0f));
  let x_131 : bool = u_xlatb20;
  if (x_131) {
    let x_136 : f32 = u_xlat10.x;
    x_132 = x_136;
  } else {
    let x_139 : f32 = u_xlat0.x;
    x_132 = x_139;
  }
  let x_140 : f32 = x_132;
  u_xlat0.x = x_140;
  let x_143 : f32 = u_xlat0.x;
  u_xlat10.x = (x_143 + -0.00009999999747378752f);
  let x_149 : f32 = u_xlat10.x;
  u_xlatb10 = (x_149 < 0.0f);
  let x_151 : bool = u_xlatb10;
  if (((select(0i, 1i, x_151) * -1i) != 0i)) {
    discard;
  }
  let x_165 : vec2<f32> = vs_TEXCOORD0;
  let x_167 : f32 = x_44.x_GlobalMipBias.x;
  let x_168 : vec4<f32> = textureSampleBias(x_BumpMap, sampler_BumpMap, x_165, x_167);
  let x_169 : vec3<f32> = vec3<f32>(x_168.x, x_168.y, x_168.w);
  let x_170 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_169.x, x_169.y, x_169.z, x_170.w);
  let x_173 : f32 = u_xlat2.x;
  let x_176 : f32 = u_xlat2.z;
  u_xlat2.x = (x_173 * x_176);
  let x_179 : vec4<f32> = u_xlat2;
  let x_186 : vec2<f32> = ((vec2<f32>(x_179.x, x_179.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_187 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_186.x, x_187.y, x_186.y);
  let x_189 : vec3<f32> = u_xlat10;
  let x_191 : vec3<f32> = u_xlat10;
  u_xlat1.x = dot(vec2<f32>(x_189.x, x_189.z), vec2<f32>(x_191.x, x_191.z));
  let x_196 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_196, 1.0f);
  let x_200 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_200) + 1.0f);
  let x_205 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_205);
  let x_209 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_209, 0.0000000000000001f);
  let x_213 : vec4<f32> = hlslcc_FragCoord;
  let x_217 : f32 = x_44.x_DitheringTextureInvSize;
  let x_219 : vec2<f32> = (vec2<f32>(x_213.x, x_213.y) * vec2<f32>(x_217, x_217));
  let x_220 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_219.x, x_219.y, x_220.z, x_220.w);
  let x_227 : vec4<f32> = u_xlat2;
  let x_230 : f32 = x_44.x_GlobalMipBias.x;
  let x_231 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_PointRepeat, vec2<f32>(x_227.x, x_227.y), x_230);
  u_xlat2.x = x_231.w;
  let x_242 : f32 = x_239.unity_LODFade.x;
  u_xlatb12 = (x_242 >= 0.0f);
  let x_244 : bool = u_xlatb12;
  if (x_244) {
    let x_249 : f32 = u_xlat2.x;
    x_245 = abs(x_249);
  } else {
    let x_253 : f32 = u_xlat2.x;
    x_245 = -(abs(x_253));
  }
  let x_256 : f32 = x_245;
  u_xlat2.x = x_256;
  let x_259 : f32 = u_xlat2.x;
  let x_262 : f32 = x_239.unity_LODFade.x;
  u_xlat2.x = (-(x_259) + x_262);
  let x_267 : f32 = u_xlat2.x;
  u_xlatb2 = (x_267 < 0.0f);
  let x_269 : bool = u_xlatb2;
  if (((select(0i, 1i, x_269) * -1i) != 0i)) {
    discard;
  }
  let x_276 : vec3<f32> = u_xlat10;
  let x_279 : vec4<f32> = vs_TEXCOORD4;
  let x_281 : vec3<f32> = (vec3<f32>(x_276.z, x_276.z, x_276.z) * vec3<f32>(x_279.x, x_279.y, x_279.z));
  let x_282 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_281.x, x_281.y, x_281.z, x_282.w);
  let x_284 : vec3<f32> = u_xlat10;
  let x_287 : vec4<f32> = vs_TEXCOORD3;
  let x_290 : vec4<f32> = u_xlat2;
  let x_292 : vec3<f32> = ((vec3<f32>(x_284.x, x_284.x, x_284.x) * vec3<f32>(x_287.x, x_287.y, x_287.z)) + vec3<f32>(x_290.x, x_290.y, x_290.z));
  let x_293 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_292.x, x_292.y, x_292.z, x_293.w);
  let x_295 : vec4<f32> = u_xlat1;
  let x_298 : vec4<f32> = vs_TEXCOORD2;
  let x_301 : vec4<f32> = u_xlat2;
  let x_303 : vec3<f32> = ((vec3<f32>(x_295.x, x_295.x, x_295.x) * vec3<f32>(x_298.x, x_298.y, x_298.z)) + vec3<f32>(x_301.x, x_301.y, x_301.z));
  let x_304 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_303.x, x_303.y, x_303.z, x_304.w);
  let x_306 : vec4<f32> = u_xlat2;
  let x_308 : vec4<f32> = u_xlat2;
  u_xlat10.x = dot(vec3<f32>(x_306.x, x_306.y, x_306.z), vec3<f32>(x_308.x, x_308.y, x_308.z));
  let x_313 : f32 = u_xlat10.x;
  u_xlat10.x = inverseSqrt(x_313);
  let x_316 : vec3<f32> = u_xlat10;
  let x_318 : vec4<f32> = u_xlat2;
  let x_320 : vec3<f32> = (vec3<f32>(x_316.x, x_316.x, x_316.x) * vec3<f32>(x_318.x, x_318.y, x_318.z));
  let x_321 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_320.x, x_320.y, x_320.z, x_321.w);
  let x_325 : f32 = vs_TEXCOORD2.w;
  u_xlat3.x = x_325;
  let x_328 : f32 = vs_TEXCOORD3.w;
  u_xlat3.y = x_328;
  let x_332 : f32 = vs_TEXCOORD4.w;
  u_xlat3.z = x_332;
  let x_334 : vec3<f32> = u_xlat3;
  let x_335 : vec3<f32> = u_xlat3;
  u_xlat10.x = dot(x_334, x_335);
  let x_339 : f32 = u_xlat10.x;
  u_xlat10.x = max(x_339, 0.00006103515625f);
  let x_344 : f32 = u_xlat10.x;
  u_xlat10.x = inverseSqrt(x_344);
  u_xlat2.w = 1.0f;
  let x_351 : vec4<f32> = x_239.unity_SHAr;
  let x_352 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_351, x_352);
  let x_357 : vec4<f32> = x_239.unity_SHAg;
  let x_358 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_357, x_358);
  let x_363 : vec4<f32> = x_239.unity_SHAb;
  let x_364 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_363, x_364);
  let x_368 : vec4<f32> = u_xlat2;
  let x_370 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_368.y, x_368.z, x_368.z, x_368.x) * vec4<f32>(x_370.x, x_370.y, x_370.z, x_370.z));
  let x_376 : vec4<f32> = x_239.unity_SHBr;
  let x_377 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_376, x_377);
  let x_382 : vec4<f32> = x_239.unity_SHBg;
  let x_383 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_382, x_383);
  let x_388 : vec4<f32> = x_239.unity_SHBb;
  let x_389 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_388, x_389);
  let x_393 : f32 = u_xlat2.y;
  let x_395 : f32 = u_xlat2.y;
  u_xlat30 = (x_393 * x_395);
  let x_398 : f32 = u_xlat2.x;
  let x_400 : f32 = u_xlat2.x;
  let x_402 : f32 = u_xlat30;
  u_xlat30 = ((x_398 * x_400) + -(x_402));
  let x_407 : vec4<f32> = x_239.unity_SHC;
  let x_409 : f32 = u_xlat30;
  let x_412 : vec3<f32> = u_xlat6;
  let x_413 : vec3<f32> = ((vec3<f32>(x_407.x, x_407.y, x_407.z) * vec3<f32>(x_409, x_409, x_409)) + x_412);
  let x_414 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_413.x, x_413.y, x_413.z, x_414.w);
  let x_416 : vec3<f32> = u_xlat4;
  let x_417 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_416 + vec3<f32>(x_417.x, x_417.y, x_417.z));
  let x_420 : vec3<f32> = u_xlat4;
  u_xlat4 = max(x_420, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_426 : vec4<f32> = vs_TEXCOORD6;
  let x_427 : vec2<f32> = vec2<f32>(x_426.x, x_426.y);
  let x_429 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_427.x, x_427.y, x_429);
  let x_441 : vec3<f32> = txVec0;
  let x_443 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_441.xy, x_441.z);
  u_xlat30 = x_443;
  let x_454 : f32 = x_451.x_MainLightShadowParams.x;
  u_xlat1.x = (-(x_454) + 1.0f);
  let x_458 : f32 = u_xlat30;
  let x_460 : f32 = x_451.x_MainLightShadowParams.x;
  let x_463 : f32 = u_xlat1.x;
  u_xlat30 = ((x_458 * x_460) + x_463);
  let x_467 : f32 = vs_TEXCOORD6.z;
  u_xlatb1 = (0.0f >= x_467);
  let x_471 : f32 = vs_TEXCOORD6.z;
  u_xlatb32 = (x_471 >= 1.0f);
  let x_473 : bool = u_xlatb1;
  let x_474 : bool = u_xlatb32;
  u_xlatb1 = (x_473 | x_474);
  let x_476 : bool = u_xlatb1;
  let x_477 : f32 = u_xlat30;
  u_xlat30 = select(x_477, 1.0f, x_476);
  let x_481 : vec3<f32> = vs_TEXCOORD1;
  let x_485 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_487 : vec3<f32> = (x_481 + -(x_485));
  let x_488 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_487.x, x_487.y, x_487.z, x_488.w);
  let x_490 : vec4<f32> = u_xlat5;
  let x_492 : vec4<f32> = u_xlat5;
  u_xlat1.x = dot(vec3<f32>(x_490.x, x_490.y, x_490.z), vec3<f32>(x_492.x, x_492.y, x_492.z));
  let x_498 : f32 = u_xlat1.x;
  let x_500 : f32 = x_451.x_MainLightShadowParams.z;
  let x_503 : f32 = x_451.x_MainLightShadowParams.w;
  u_xlat32 = ((x_498 * x_500) + x_503);
  let x_505 : f32 = u_xlat32;
  u_xlat32 = clamp(x_505, 0.0f, 1.0f);
  let x_508 : f32 = u_xlat30;
  u_xlat33 = (-(x_508) + 1.0f);
  let x_511 : f32 = u_xlat32;
  let x_512 : f32 = u_xlat33;
  let x_514 : f32 = u_xlat30;
  u_xlat30 = ((x_511 * x_512) + x_514);
  let x_516 : f32 = u_xlat30;
  let x_518 : f32 = x_239.unity_LightData.z;
  u_xlat30 = (x_516 * x_518);
  let x_520 : f32 = u_xlat30;
  let x_524 : vec4<f32> = x_44.x_MainLightColor;
  let x_526 : vec3<f32> = (vec3<f32>(x_520, x_520, x_520) * vec3<f32>(x_524.x, x_524.y, x_524.z));
  let x_527 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_526.x, x_526.y, x_526.z, x_527.w);
  let x_529 : vec4<f32> = u_xlat2;
  let x_532 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat30 = dot(vec3<f32>(x_529.x, x_529.y, x_529.z), vec3<f32>(x_532.x, x_532.y, x_532.z));
  let x_535 : f32 = u_xlat30;
  u_xlat30 = clamp(x_535, 0.0f, 1.0f);
  let x_537 : f32 = u_xlat30;
  let x_539 : vec4<f32> = u_xlat5;
  u_xlat6 = (vec3<f32>(x_537, x_537, x_537) * vec3<f32>(x_539.x, x_539.y, x_539.z));
  let x_543 : f32 = x_57.x_SpecColor.w;
  u_xlat30 = ((x_543 * 10.0f) + 1.0f);
  let x_547 : f32 = u_xlat30;
  u_xlat30 = exp2(x_547);
  let x_550 : vec3<f32> = u_xlat3;
  let x_551 : vec3<f32> = u_xlat10;
  let x_555 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat7 = ((x_550 * vec3<f32>(x_551.x, x_551.x, x_551.x)) + vec3<f32>(x_555.x, x_555.y, x_555.z));
  let x_558 : vec3<f32> = u_xlat7;
  let x_559 : vec3<f32> = u_xlat7;
  u_xlat32 = dot(x_558, x_559);
  let x_561 : f32 = u_xlat32;
  u_xlat32 = max(x_561, 1.17549435e-38f);
  let x_564 : f32 = u_xlat32;
  u_xlat32 = inverseSqrt(x_564);
  let x_566 : f32 = u_xlat32;
  let x_568 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_566, x_566, x_566) * x_568);
  let x_570 : vec4<f32> = u_xlat2;
  let x_572 : vec3<f32> = u_xlat7;
  u_xlat32 = dot(vec3<f32>(x_570.x, x_570.y, x_570.z), x_572);
  let x_574 : f32 = u_xlat32;
  u_xlat32 = clamp(x_574, 0.0f, 1.0f);
  let x_576 : f32 = u_xlat32;
  u_xlat32 = log2(x_576);
  let x_578 : f32 = u_xlat30;
  let x_579 : f32 = u_xlat32;
  u_xlat32 = (x_578 * x_579);
  let x_581 : f32 = u_xlat32;
  u_xlat32 = exp2(x_581);
  let x_583 : f32 = u_xlat32;
  let x_586 : vec4<f32> = x_57.x_SpecColor;
  u_xlat7 = (vec3<f32>(x_583, x_583, x_583) * vec3<f32>(x_586.x, x_586.y, x_586.z));
  let x_589 : vec4<f32> = u_xlat5;
  let x_591 : vec3<f32> = u_xlat7;
  let x_592 : vec3<f32> = (vec3<f32>(x_589.x, x_589.y, x_589.z) * x_591);
  let x_593 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_592.x, x_592.y, x_592.z, x_593.w);
  let x_595 : vec3<f32> = u_xlat6;
  let x_596 : vec4<f32> = u_xlat1;
  let x_599 : vec4<f32> = u_xlat5;
  let x_601 : vec3<f32> = ((x_595 * vec3<f32>(x_596.y, x_596.z, x_596.w)) + vec3<f32>(x_599.x, x_599.y, x_599.z));
  let x_602 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_601.x, x_601.y, x_601.z, x_602.w);
  let x_605 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_607 : f32 = x_239.unity_LightData.y;
  u_xlat32 = min(x_605, x_607);
  let x_611 : f32 = u_xlat32;
  u_xlatu32 = bitcast<u32>(i32(x_611));
  let x_615 : f32 = u_xlat1.x;
  let x_618 : f32 = x_451.x_AdditionalShadowFadeParams.x;
  let x_621 : f32 = x_451.x_AdditionalShadowFadeParams.y;
  u_xlat1.x = ((x_615 * x_618) + x_621);
  let x_625 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_625, 0.0f, 1.0f);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_638 : u32 = u_xlatu_loop_1;
    let x_639 : u32 = u_xlatu32;
    if ((x_638 < x_639)) {
    } else {
      break;
    }
    let x_642 : u32 = u_xlatu_loop_1;
    u_xlatu34 = (x_642 >> 2u);
    let x_646 : u32 = u_xlatu_loop_1;
    u_xlati35 = bitcast<i32>((x_646 & 3u));
    let x_650 : u32 = u_xlatu34;
    let x_653 : vec4<f32> = x_239.unity_LightIndices[bitcast<i32>(x_650)];
    let x_663 : i32 = u_xlati35;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_668 : vec4<u32> = indexable[x_663];
    u_xlat34 = dot(x_653, bitcast<vec4<f32>>(x_668));
    let x_672 : f32 = u_xlat34;
    u_xlati34 = i32(x_672);
    let x_674 : vec3<f32> = vs_TEXCOORD1;
    let x_685 : i32 = u_xlati34;
    let x_687 : vec4<f32> = x_684.x_AdditionalLightsPosition[x_685];
    let x_690 : i32 = u_xlati34;
    let x_692 : vec4<f32> = x_684.x_AdditionalLightsPosition[x_690];
    u_xlat7 = ((-(x_674) * vec3<f32>(x_687.w, x_687.w, x_687.w)) + vec3<f32>(x_692.x, x_692.y, x_692.z));
    let x_696 : vec3<f32> = u_xlat7;
    let x_697 : vec3<f32> = u_xlat7;
    u_xlat35 = dot(x_696, x_697);
    let x_699 : f32 = u_xlat35;
    u_xlat35 = max(x_699, 0.00006103515625f);
    let x_702 : f32 = u_xlat35;
    u_xlat36 = inverseSqrt(x_702);
    let x_704 : f32 = u_xlat36;
    let x_706 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_704, x_704, x_704) * x_706);
    let x_708 : f32 = u_xlat35;
    u_xlat36 = (1.0f / x_708);
    let x_710 : f32 = u_xlat35;
    let x_711 : i32 = u_xlati34;
    let x_713 : f32 = x_684.x_AdditionalLightsAttenuation[x_711].x;
    u_xlat35 = (x_710 * x_713);
    let x_715 : f32 = u_xlat35;
    let x_717 : f32 = u_xlat35;
    u_xlat35 = ((-(x_715) * x_717) + 1.0f);
    let x_720 : f32 = u_xlat35;
    u_xlat35 = max(x_720, 0.0f);
    let x_722 : f32 = u_xlat35;
    let x_723 : f32 = u_xlat35;
    u_xlat35 = (x_722 * x_723);
    let x_725 : f32 = u_xlat35;
    let x_726 : f32 = u_xlat36;
    u_xlat35 = (x_725 * x_726);
    let x_728 : i32 = u_xlati34;
    let x_730 : vec4<f32> = x_684.x_AdditionalLightsSpotDir[x_728];
    let x_732 : vec3<f32> = u_xlat7;
    u_xlat36 = dot(vec3<f32>(x_730.x, x_730.y, x_730.z), x_732);
    let x_734 : f32 = u_xlat36;
    let x_735 : i32 = u_xlati34;
    let x_737 : f32 = x_684.x_AdditionalLightsAttenuation[x_735].z;
    let x_739 : i32 = u_xlati34;
    let x_741 : f32 = x_684.x_AdditionalLightsAttenuation[x_739].w;
    u_xlat36 = ((x_734 * x_737) + x_741);
    let x_743 : f32 = u_xlat36;
    u_xlat36 = clamp(x_743, 0.0f, 1.0f);
    let x_745 : f32 = u_xlat36;
    let x_746 : f32 = u_xlat36;
    u_xlat36 = (x_745 * x_746);
    let x_748 : f32 = u_xlat35;
    let x_749 : f32 = u_xlat36;
    u_xlat35 = (x_748 * x_749);
    let x_753 : i32 = u_xlati34;
    let x_755 : f32 = x_451.x_AdditionalShadowParams[x_753].w;
    u_xlati36 = i32(x_755);
    let x_758 : i32 = u_xlati36;
    u_xlatb37 = (x_758 >= 0i);
    let x_760 : bool = u_xlatb37;
    if (x_760) {
      let x_764 : i32 = u_xlati34;
      let x_766 : f32 = x_451.x_AdditionalShadowParams[x_764].z;
      u_xlatb37 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_766, x_766, x_766, x_766))));
      let x_771 : bool = u_xlatb37;
      if (x_771) {
        let x_776 : vec3<f32> = u_xlat7;
        let x_779 : vec3<f32> = u_xlat7;
        let x_782 : vec4<bool> = (abs(vec4<f32>(x_776.z, x_776.z, x_776.y, x_776.z)) >= abs(vec4<f32>(x_779.x, x_779.y, x_779.x, x_779.x)));
        let x_784 : vec3<bool> = vec3<bool>(x_782.x, x_782.y, x_782.z);
        let x_785 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_784.x, x_784.y, x_784.z, x_785.w);
        let x_788 : bool = u_xlatb8.y;
        let x_790 : bool = u_xlatb8.x;
        u_xlatb37 = (x_788 & x_790);
        let x_792 : vec3<f32> = u_xlat7;
        let x_795 : vec4<bool> = (-(vec4<f32>(x_792.z, x_792.y, x_792.z, x_792.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_796 : vec3<bool> = vec3<bool>(x_795.x, x_795.y, x_795.w);
        let x_797 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_796.x, x_796.y, x_797.z, x_796.z);
        let x_801 : bool = u_xlatb8.x;
        u_xlat8.x = select(4.0f, 5.0f, x_801);
        let x_807 : bool = u_xlatb8.y;
        u_xlat8.y = select(2.0f, 3.0f, x_807);
        let x_813 : bool = u_xlatb8.w;
        u_xlat38 = select(0.0f, 1.0f, x_813);
        let x_817 : bool = u_xlatb8.z;
        if (x_817) {
          let x_822 : f32 = u_xlat8.y;
          x_818 = x_822;
        } else {
          let x_824 : f32 = u_xlat38;
          x_818 = x_824;
        }
        let x_825 : f32 = x_818;
        u_xlat18 = x_825;
        let x_827 : bool = u_xlatb37;
        if (x_827) {
          let x_832 : f32 = u_xlat8.x;
          x_828 = x_832;
        } else {
          let x_834 : f32 = u_xlat18;
          x_828 = x_834;
        }
        let x_835 : f32 = x_828;
        u_xlat37 = x_835;
        let x_836 : i32 = u_xlati34;
        let x_838 : f32 = x_451.x_AdditionalShadowParams[x_836].w;
        u_xlat8.x = trunc(x_838);
        let x_841 : f32 = u_xlat37;
        let x_843 : f32 = u_xlat8.x;
        u_xlat37 = (x_841 + x_843);
        let x_845 : f32 = u_xlat37;
        u_xlati36 = i32(x_845);
      }
      let x_847 : i32 = u_xlati36;
      u_xlati36 = (x_847 << bitcast<u32>(2i));
      let x_849 : vec3<f32> = vs_TEXCOORD1;
      let x_852 : i32 = u_xlati36;
      let x_855 : i32 = u_xlati36;
      let x_859 : vec4<f32> = x_451.x_AdditionalLightsWorldToShadow[((x_852 + 1i) / 4i)][((x_855 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_849.y, x_849.y, x_849.y, x_849.y) * x_859);
      let x_861 : i32 = u_xlati36;
      let x_863 : i32 = u_xlati36;
      let x_866 : vec4<f32> = x_451.x_AdditionalLightsWorldToShadow[(x_861 / 4i)][(x_863 % 4i)];
      let x_867 : vec3<f32> = vs_TEXCOORD1;
      let x_870 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_866 * vec4<f32>(x_867.x, x_867.x, x_867.x, x_867.x)) + x_870);
      let x_872 : i32 = u_xlati36;
      let x_875 : i32 = u_xlati36;
      let x_879 : vec4<f32> = x_451.x_AdditionalLightsWorldToShadow[((x_872 + 2i) / 4i)][((x_875 + 2i) % 4i)];
      let x_880 : vec3<f32> = vs_TEXCOORD1;
      let x_883 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_879 * vec4<f32>(x_880.z, x_880.z, x_880.z, x_880.z)) + x_883);
      let x_885 : vec4<f32> = u_xlat8;
      let x_886 : i32 = u_xlati36;
      let x_889 : i32 = u_xlati36;
      let x_893 : vec4<f32> = x_451.x_AdditionalLightsWorldToShadow[((x_886 + 3i) / 4i)][((x_889 + 3i) % 4i)];
      u_xlat8 = (x_885 + x_893);
      let x_895 : vec4<f32> = u_xlat8;
      let x_897 : vec4<f32> = u_xlat8;
      let x_899 : vec3<f32> = (vec3<f32>(x_895.x, x_895.y, x_895.z) / vec3<f32>(x_897.w, x_897.w, x_897.w));
      let x_900 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_899.x, x_899.y, x_899.z, x_900.w);
      let x_903 : vec4<f32> = u_xlat8;
      let x_904 : vec2<f32> = vec2<f32>(x_903.x, x_903.y);
      let x_906 : f32 = u_xlat8.z;
      txVec1 = vec3<f32>(x_904.x, x_904.y, x_906);
      let x_914 : vec3<f32> = txVec1;
      let x_916 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_914.xy, x_914.z);
      u_xlat36 = x_916;
      let x_917 : i32 = u_xlati34;
      let x_919 : f32 = x_451.x_AdditionalShadowParams[x_917].x;
      u_xlat37 = (1.0f + -(x_919));
      let x_922 : f32 = u_xlat36;
      let x_923 : i32 = u_xlati34;
      let x_925 : f32 = x_451.x_AdditionalShadowParams[x_923].x;
      let x_927 : f32 = u_xlat37;
      u_xlat36 = ((x_922 * x_925) + x_927);
      let x_930 : f32 = u_xlat8.z;
      u_xlatb37 = (0.0f >= x_930);
      let x_933 : f32 = u_xlat8.z;
      u_xlatb8.x = (x_933 >= 1.0f);
      let x_936 : bool = u_xlatb37;
      let x_938 : bool = u_xlatb8.x;
      u_xlatb37 = (x_936 | x_938);
      let x_940 : bool = u_xlatb37;
      let x_941 : f32 = u_xlat36;
      u_xlat36 = select(x_941, 1.0f, x_940);
    } else {
      u_xlat36 = 1.0f;
    }
    let x_944 : f32 = u_xlat36;
    u_xlat37 = (-(x_944) + 1.0f);
    let x_948 : f32 = u_xlat1.x;
    let x_949 : f32 = u_xlat37;
    let x_951 : f32 = u_xlat36;
    u_xlat36 = ((x_948 * x_949) + x_951);
    let x_953 : f32 = u_xlat35;
    let x_954 : f32 = u_xlat36;
    u_xlat35 = (x_953 * x_954);
    let x_956 : f32 = u_xlat35;
    let x_958 : i32 = u_xlati34;
    let x_960 : vec4<f32> = x_684.x_AdditionalLightsColor[x_958];
    let x_962 : vec3<f32> = (vec3<f32>(x_956, x_956, x_956) * vec3<f32>(x_960.x, x_960.y, x_960.z));
    let x_963 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_962.x, x_962.y, x_962.z, x_963.w);
    let x_965 : vec4<f32> = u_xlat2;
    let x_967 : vec3<f32> = u_xlat7;
    u_xlat34 = dot(vec3<f32>(x_965.x, x_965.y, x_965.z), x_967);
    let x_969 : f32 = u_xlat34;
    u_xlat34 = clamp(x_969, 0.0f, 1.0f);
    let x_972 : f32 = u_xlat34;
    let x_974 : vec4<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_972, x_972, x_972) * vec3<f32>(x_974.x, x_974.y, x_974.z));
    let x_977 : vec3<f32> = u_xlat3;
    let x_978 : vec3<f32> = u_xlat10;
    let x_981 : vec3<f32> = u_xlat7;
    u_xlat7 = ((x_977 * vec3<f32>(x_978.x, x_978.x, x_978.x)) + x_981);
    let x_983 : vec3<f32> = u_xlat7;
    let x_984 : vec3<f32> = u_xlat7;
    u_xlat34 = dot(x_983, x_984);
    let x_986 : f32 = u_xlat34;
    u_xlat34 = max(x_986, 1.17549435e-38f);
    let x_988 : f32 = u_xlat34;
    u_xlat34 = inverseSqrt(x_988);
    let x_990 : f32 = u_xlat34;
    let x_992 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_990, x_990, x_990) * x_992);
    let x_994 : vec4<f32> = u_xlat2;
    let x_996 : vec3<f32> = u_xlat7;
    u_xlat34 = dot(vec3<f32>(x_994.x, x_994.y, x_994.z), x_996);
    let x_998 : f32 = u_xlat34;
    u_xlat34 = clamp(x_998, 0.0f, 1.0f);
    let x_1000 : f32 = u_xlat34;
    u_xlat34 = log2(x_1000);
    let x_1002 : f32 = u_xlat30;
    let x_1003 : f32 = u_xlat34;
    u_xlat34 = (x_1002 * x_1003);
    let x_1005 : f32 = u_xlat34;
    u_xlat34 = exp2(x_1005);
    let x_1007 : f32 = u_xlat34;
    let x_1010 : vec4<f32> = x_57.x_SpecColor;
    u_xlat7 = (vec3<f32>(x_1007, x_1007, x_1007) * vec3<f32>(x_1010.x, x_1010.y, x_1010.z));
    let x_1013 : vec3<f32> = u_xlat7;
    let x_1014 : vec4<f32> = u_xlat8;
    u_xlat7 = (x_1013 * vec3<f32>(x_1014.x, x_1014.y, x_1014.z));
    let x_1017 : vec3<f32> = u_xlat9;
    let x_1018 : vec4<f32> = u_xlat1;
    let x_1021 : vec3<f32> = u_xlat7;
    u_xlat7 = ((x_1017 * vec3<f32>(x_1018.y, x_1018.z, x_1018.w)) + x_1021);
    let x_1023 : vec3<f32> = u_xlat6;
    let x_1024 : vec3<f32> = u_xlat7;
    u_xlat6 = (x_1023 + x_1024);

    continuing {
      let x_1026 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1026 + bitcast<u32>(1i));
    }
  }
  let x_1028 : vec3<f32> = u_xlat4;
  let x_1029 : vec4<f32> = u_xlat1;
  let x_1032 : vec4<f32> = u_xlat5;
  let x_1034 : vec3<f32> = ((x_1028 * vec3<f32>(x_1029.y, x_1029.z, x_1029.w)) + vec3<f32>(x_1032.x, x_1032.y, x_1032.z));
  let x_1035 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1034.x, x_1034.y, x_1034.z, x_1035.w);
  let x_1039 : vec3<f32> = u_xlat6;
  let x_1040 : vec4<f32> = u_xlat1;
  let x_1042 : vec3<f32> = (x_1039 + vec3<f32>(x_1040.x, x_1040.y, x_1040.z));
  let x_1043 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1042.x, x_1042.y, x_1042.z, x_1043.w);
  let x_1046 : f32 = x_57.x_Surface;
  u_xlatb10 = (x_1046 == 1.0f);
  let x_1048 : bool = u_xlatb10;
  let x_1049 : bool = u_xlatb20;
  u_xlatb10 = (x_1048 | x_1049);
  let x_1051 : bool = u_xlatb10;
  if (x_1051) {
    let x_1056 : f32 = u_xlat0.x;
    x_1052 = x_1056;
  } else {
    x_1052 = 1.0f;
  }
  let x_1058 : f32 = x_1052;
  SV_Target0.w = x_1058;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(5) vs_TEXCOORD6_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  main_1();
  return main_out(SV_Target0);
}


