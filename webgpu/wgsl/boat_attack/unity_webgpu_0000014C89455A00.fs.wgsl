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

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(2) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MetallicTex : sampler;

var<private> u_xlatb13 : bool;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat25 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat13 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> u_xlat4 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_151 : UnityPerDraw;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat38 : f32;

var<private> u_xlat39 : f32;

var<private> u_xlat40 : f32;

var<private> u_xlat36 : f32;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat17 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_321 : LightShadows;

var<private> u_xlatb17 : bool;

var<private> u_xlatb29 : bool;

var<private> u_xlat29 : f32;

var<private> u_xlat41 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat7 : vec2<f32>;

var<private> u_xlat19 : vec3<f32>;

var<private> u_xlat37 : f32;

var<private> u_xlatu36 : u32;

var<private> u_xlatu17 : u32;

var<private> u_xlati42 : i32;

var<private> u_xlati17 : i32;

var<private> u_xlat8 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_719 : AdditionalLights;

var<private> u_xlat42 : f32;

var<private> u_xlat44 : f32;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlat45 : f32;

var<private> u_xlati45 : i32;

var<private> u_xlatb10 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat22 : vec3<f32>;

var<private> u_xlat11 : f32;

var<private> u_xlat34 : f32;

var<private> u_xlat10 : vec4<f32>;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb22 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu38 : u32;

fn main_1() {
  var x_92 : f32;
  var x_105 : f32;
  var x_118 : f32;
  var txVec0 : vec3<f32>;
  var x_349 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_856 : f32;
  var x_867 : f32;
  var txVec1 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_36 : f32 = x_29.x_GlobalMipBias.x;
  let x_37 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_23.x, x_23.y), x_36);
  u_xlat0 = x_37;
  let x_45 : vec4<f32> = vs_TEXCOORD0;
  let x_48 : f32 = x_29.x_GlobalMipBias.x;
  let x_49 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_45.x, x_45.y), x_48);
  u_xlat1.x = x_49.x;
  let x_59 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb13 = (x_59 == 0.0f);
  let x_65 : vec3<f32> = vs_TEXCOORD7;
  let x_70 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_71 : vec3<f32> = (-(x_65) + x_70);
  let x_72 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_71.x, x_71.y, x_71.z, x_72.w);
  let x_75 : vec4<f32> = u_xlat2;
  let x_77 : vec4<f32> = u_xlat2;
  u_xlat25 = dot(vec3<f32>(x_75.x, x_75.y, x_75.z), vec3<f32>(x_77.x, x_77.y, x_77.z));
  let x_80 : f32 = u_xlat25;
  u_xlat25 = inverseSqrt(x_80);
  let x_82 : f32 = u_xlat25;
  let x_84 : vec4<f32> = u_xlat2;
  let x_86 : vec3<f32> = (vec3<f32>(x_82, x_82, x_82) * vec3<f32>(x_84.x, x_84.y, x_84.z));
  let x_87 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_86.x, x_86.y, x_86.z, x_87.w);
  let x_90 : bool = u_xlatb13;
  if (x_90) {
    let x_96 : f32 = u_xlat2.x;
    x_92 = x_96;
  } else {
    let x_101 : f32 = x_29.unity_MatrixV[0i].z;
    x_92 = x_101;
  }
  let x_102 : f32 = x_92;
  u_xlat3.x = x_102;
  let x_104 : bool = u_xlatb13;
  if (x_104) {
    let x_110 : f32 = u_xlat2.y;
    x_105 = x_110;
  } else {
    let x_114 : f32 = x_29.unity_MatrixV[1i].z;
    x_105 = x_114;
  }
  let x_115 : f32 = x_105;
  u_xlat3.y = x_115;
  let x_117 : bool = u_xlatb13;
  if (x_117) {
    let x_122 : f32 = u_xlat2.z;
    x_118 = x_122;
  } else {
    let x_126 : f32 = x_29.unity_MatrixV[2i].z;
    x_118 = x_126;
  }
  let x_127 : f32 = x_118;
  u_xlat3.z = x_127;
  let x_131 : vec3<f32> = vs_TEXCOORD3;
  let x_132 : vec3<f32> = vs_TEXCOORD3;
  u_xlat13.x = dot(x_131, x_132);
  let x_136 : f32 = u_xlat13.x;
  u_xlat13.x = inverseSqrt(x_136);
  let x_139 : vec3<f32> = u_xlat13;
  let x_141 : vec3<f32> = vs_TEXCOORD3;
  let x_142 : vec3<f32> = (vec3<f32>(x_139.x, x_139.x, x_139.x) * x_141);
  let x_143 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_142.x, x_142.y, x_142.z, x_143.w);
  u_xlat2.w = 1.0f;
  let x_155 : vec4<f32> = x_151.unity_SHAr;
  let x_156 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_155, x_156);
  let x_161 : vec4<f32> = x_151.unity_SHAg;
  let x_162 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_161, x_162);
  let x_167 : vec4<f32> = x_151.unity_SHAb;
  let x_168 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_167, x_168);
  let x_172 : vec4<f32> = u_xlat2;
  let x_174 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_172.y, x_172.z, x_172.z, x_172.x) * vec4<f32>(x_174.x, x_174.y, x_174.z, x_174.z));
  let x_180 : vec4<f32> = x_151.unity_SHBr;
  let x_181 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_180, x_181);
  let x_186 : vec4<f32> = x_151.unity_SHBg;
  let x_187 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_186, x_187);
  let x_192 : vec4<f32> = x_151.unity_SHBb;
  let x_193 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_192, x_193);
  let x_197 : f32 = u_xlat2.y;
  let x_199 : f32 = u_xlat2.y;
  u_xlat13.x = (x_197 * x_199);
  let x_203 : f32 = u_xlat2.x;
  let x_205 : f32 = u_xlat2.x;
  let x_208 : f32 = u_xlat13.x;
  u_xlat13.x = ((x_203 * x_205) + -(x_208));
  let x_214 : vec4<f32> = x_151.unity_SHC;
  let x_216 : vec3<f32> = u_xlat13;
  let x_219 : vec4<f32> = u_xlat6;
  u_xlat13 = ((vec3<f32>(x_214.x, x_214.y, x_214.z) * vec3<f32>(x_216.x, x_216.x, x_216.x)) + vec3<f32>(x_219.x, x_219.y, x_219.z));
  let x_222 : vec3<f32> = u_xlat13;
  let x_223 : vec3<f32> = u_xlat4;
  u_xlat13 = (x_222 + x_223);
  let x_225 : vec3<f32> = u_xlat13;
  u_xlat13 = max(x_225, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_230 : f32 = u_xlat1.x;
  u_xlat38 = ((-(x_230) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_236 : f32 = u_xlat38;
  u_xlat39 = (-(x_236) + 1.0f);
  let x_239 : vec4<f32> = u_xlat0;
  let x_241 : f32 = u_xlat38;
  u_xlat4 = (vec3<f32>(x_239.x, x_239.y, x_239.z) * vec3<f32>(x_241, x_241, x_241));
  let x_244 : vec4<f32> = u_xlat0;
  let x_248 : vec3<f32> = (vec3<f32>(x_244.x, x_244.y, x_244.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_249 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_248.x, x_248.y, x_248.z, x_249.w);
  let x_251 : vec3<f32> = u_xlat1;
  let x_253 : vec4<f32> = u_xlat0;
  let x_258 : vec3<f32> = ((vec3<f32>(x_251.x, x_251.x, x_251.x) * vec3<f32>(x_253.x, x_253.y, x_253.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_259 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_258.x, x_258.y, x_258.z, x_259.w);
  let x_262 : f32 = u_xlat0.w;
  u_xlat1.x = (-(x_262) + 1.0f);
  let x_267 : f32 = u_xlat1.x;
  let x_269 : f32 = u_xlat1.x;
  u_xlat38 = (x_267 * x_269);
  let x_271 : f32 = u_xlat38;
  u_xlat38 = max(x_271, 0.0078125f);
  let x_275 : f32 = u_xlat38;
  let x_276 : f32 = u_xlat38;
  u_xlat40 = (x_275 * x_276);
  let x_280 : f32 = u_xlat0.w;
  let x_281 : f32 = u_xlat39;
  u_xlat36 = (x_280 + x_281);
  let x_283 : f32 = u_xlat36;
  u_xlat36 = clamp(x_283, 0.0f, 1.0f);
  let x_285 : f32 = u_xlat38;
  u_xlat39 = ((x_285 * 4.0f) + 2.0f);
  let x_293 : vec4<f32> = vs_TEXCOORD8;
  let x_294 : vec2<f32> = vec2<f32>(x_293.x, x_293.y);
  let x_297 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_294.x, x_294.y, x_297);
  let x_309 : vec3<f32> = txVec0;
  let x_311 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_309.xy, x_309.z);
  u_xlat5.x = x_311;
  let x_324 : f32 = x_321.x_MainLightShadowParams.x;
  u_xlat17.x = (-(x_324) + 1.0f);
  let x_329 : f32 = u_xlat5.x;
  let x_331 : f32 = x_321.x_MainLightShadowParams.x;
  let x_334 : f32 = u_xlat17.x;
  u_xlat5.x = ((x_329 * x_331) + x_334);
  let x_339 : f32 = vs_TEXCOORD8.z;
  u_xlatb17 = (0.0f >= x_339);
  let x_343 : f32 = vs_TEXCOORD8.z;
  u_xlatb29 = (x_343 >= 1.0f);
  let x_345 : bool = u_xlatb29;
  let x_346 : bool = u_xlatb17;
  u_xlatb17 = (x_345 | x_346);
  let x_348 : bool = u_xlatb17;
  if (x_348) {
    x_349 = 1.0f;
  } else {
    let x_354 : f32 = u_xlat5.x;
    x_349 = x_354;
  }
  let x_355 : f32 = x_349;
  u_xlat5.x = x_355;
  let x_357 : vec3<f32> = vs_TEXCOORD7;
  let x_359 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat17 = (x_357 + -(x_359));
  let x_362 : vec3<f32> = u_xlat17;
  let x_363 : vec3<f32> = u_xlat17;
  u_xlat17.x = dot(x_362, x_363);
  let x_368 : f32 = u_xlat17.x;
  let x_370 : f32 = x_321.x_MainLightShadowParams.z;
  let x_373 : f32 = x_321.x_MainLightShadowParams.w;
  u_xlat29 = ((x_368 * x_370) + x_373);
  let x_375 : f32 = u_xlat29;
  u_xlat29 = clamp(x_375, 0.0f, 1.0f);
  let x_379 : f32 = u_xlat5.x;
  u_xlat41 = (-(x_379) + 1.0f);
  let x_382 : f32 = u_xlat29;
  let x_383 : f32 = u_xlat41;
  let x_386 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_382 * x_383) + x_386);
  let x_389 : vec3<f32> = u_xlat3;
  let x_391 : vec4<f32> = u_xlat2;
  u_xlat29 = dot(-(x_389), vec3<f32>(x_391.x, x_391.y, x_391.z));
  let x_394 : f32 = u_xlat29;
  let x_395 : f32 = u_xlat29;
  u_xlat29 = (x_394 + x_395);
  let x_397 : vec4<f32> = u_xlat2;
  let x_399 : f32 = u_xlat29;
  let x_403 : vec3<f32> = u_xlat3;
  let x_405 : vec3<f32> = ((vec3<f32>(x_397.x, x_397.y, x_397.z) * -(vec3<f32>(x_399, x_399, x_399))) + -(x_403));
  let x_406 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_405.x, x_405.y, x_405.z, x_406.w);
  let x_408 : vec4<f32> = u_xlat2;
  let x_410 : vec3<f32> = u_xlat3;
  u_xlat29 = dot(vec3<f32>(x_408.x, x_408.y, x_408.z), x_410);
  let x_412 : f32 = u_xlat29;
  u_xlat29 = clamp(x_412, 0.0f, 1.0f);
  let x_414 : f32 = u_xlat29;
  u_xlat29 = (-(x_414) + 1.0f);
  let x_417 : f32 = u_xlat29;
  let x_418 : f32 = u_xlat29;
  u_xlat29 = (x_417 * x_418);
  let x_420 : f32 = u_xlat29;
  let x_421 : f32 = u_xlat29;
  u_xlat29 = (x_420 * x_421);
  let x_424 : f32 = u_xlat1.x;
  u_xlat41 = ((-(x_424) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_431 : f32 = u_xlat1.x;
  let x_432 : f32 = u_xlat41;
  u_xlat1.x = (x_431 * x_432);
  let x_436 : f32 = u_xlat1.x;
  u_xlat1.x = (x_436 * 6.0f);
  let x_448 : vec4<f32> = u_xlat6;
  let x_451 : f32 = u_xlat1.x;
  let x_452 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_448.x, x_448.y, x_448.z), x_451);
  u_xlat6 = x_452;
  let x_454 : f32 = u_xlat6.w;
  u_xlat1.x = (x_454 + -1.0f);
  let x_459 : f32 = x_151.unity_SpecCube0_HDR.w;
  let x_461 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_459 * x_461) + 1.0f);
  let x_466 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_466, 0.0f);
  let x_470 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_470);
  let x_474 : f32 = u_xlat1.x;
  let x_476 : f32 = x_151.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_474 * x_476);
  let x_480 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_480);
  let x_484 : f32 = u_xlat1.x;
  let x_486 : f32 = x_151.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_484 * x_486);
  let x_489 : vec4<f32> = u_xlat6;
  let x_491 : vec3<f32> = u_xlat1;
  let x_493 : vec3<f32> = (vec3<f32>(x_489.x, x_489.y, x_489.z) * vec3<f32>(x_491.x, x_491.x, x_491.x));
  let x_494 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_493.x, x_493.y, x_493.z, x_494.w);
  let x_498 : f32 = u_xlat38;
  let x_500 : f32 = u_xlat38;
  u_xlat7 = ((vec2<f32>(x_498, x_498) * vec2<f32>(x_500, x_500)) + vec2<f32>(-1.0f, 1.0f));
  let x_506 : f32 = u_xlat7.y;
  u_xlat1.x = (1.0f / x_506);
  let x_510 : vec4<f32> = u_xlat0;
  let x_513 : f32 = u_xlat36;
  u_xlat19 = (-(vec3<f32>(x_510.x, x_510.y, x_510.z)) + vec3<f32>(x_513, x_513, x_513));
  let x_516 : f32 = u_xlat29;
  let x_518 : vec3<f32> = u_xlat19;
  let x_520 : vec4<f32> = u_xlat0;
  u_xlat19 = ((vec3<f32>(x_516, x_516, x_516) * x_518) + vec3<f32>(x_520.x, x_520.y, x_520.z));
  let x_523 : vec3<f32> = u_xlat1;
  let x_525 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_523.x, x_523.x, x_523.x) * x_525);
  let x_527 : vec4<f32> = u_xlat6;
  let x_529 : vec3<f32> = u_xlat19;
  let x_530 : vec3<f32> = (vec3<f32>(x_527.x, x_527.y, x_527.z) * x_529);
  let x_531 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_530.x, x_530.y, x_530.z, x_531.w);
  let x_533 : vec3<f32> = u_xlat13;
  let x_534 : vec3<f32> = u_xlat4;
  let x_536 : vec4<f32> = u_xlat6;
  u_xlat1 = ((x_533 * x_534) + vec3<f32>(x_536.x, x_536.y, x_536.z));
  let x_540 : f32 = u_xlat5.x;
  let x_542 : f32 = x_151.unity_LightData.z;
  u_xlat36 = (x_540 * x_542);
  let x_545 : vec4<f32> = u_xlat2;
  let x_548 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat37 = dot(vec3<f32>(x_545.x, x_545.y, x_545.z), vec3<f32>(x_548.x, x_548.y, x_548.z));
  let x_551 : f32 = u_xlat37;
  u_xlat37 = clamp(x_551, 0.0f, 1.0f);
  let x_553 : f32 = u_xlat36;
  let x_554 : f32 = u_xlat37;
  u_xlat36 = (x_553 * x_554);
  let x_556 : f32 = u_xlat36;
  let x_559 : vec4<f32> = x_29.x_MainLightColor;
  let x_561 : vec3<f32> = (vec3<f32>(x_556, x_556, x_556) * vec3<f32>(x_559.x, x_559.y, x_559.z));
  let x_562 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_561.x, x_562.y, x_561.y, x_561.z);
  let x_564 : vec3<f32> = u_xlat3;
  let x_566 : vec4<f32> = x_29.x_MainLightPosition;
  let x_568 : vec3<f32> = (x_564 + vec3<f32>(x_566.x, x_566.y, x_566.z));
  let x_569 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_568.x, x_568.y, x_568.z, x_569.w);
  let x_571 : vec4<f32> = u_xlat6;
  let x_573 : vec4<f32> = u_xlat6;
  u_xlat36 = dot(vec3<f32>(x_571.x, x_571.y, x_571.z), vec3<f32>(x_573.x, x_573.y, x_573.z));
  let x_576 : f32 = u_xlat36;
  u_xlat36 = max(x_576, 1.17549435e-38f);
  let x_579 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_579);
  let x_581 : f32 = u_xlat36;
  let x_583 : vec4<f32> = u_xlat6;
  let x_585 : vec3<f32> = (vec3<f32>(x_581, x_581, x_581) * vec3<f32>(x_583.x, x_583.y, x_583.z));
  let x_586 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_585.x, x_585.y, x_585.z, x_586.w);
  let x_588 : vec4<f32> = u_xlat2;
  let x_590 : vec4<f32> = u_xlat6;
  u_xlat36 = dot(vec3<f32>(x_588.x, x_588.y, x_588.z), vec3<f32>(x_590.x, x_590.y, x_590.z));
  let x_593 : f32 = u_xlat36;
  u_xlat36 = clamp(x_593, 0.0f, 1.0f);
  let x_596 : vec4<f32> = x_29.x_MainLightPosition;
  let x_598 : vec4<f32> = u_xlat6;
  u_xlat37 = dot(vec3<f32>(x_596.x, x_596.y, x_596.z), vec3<f32>(x_598.x, x_598.y, x_598.z));
  let x_601 : f32 = u_xlat37;
  u_xlat37 = clamp(x_601, 0.0f, 1.0f);
  let x_603 : f32 = u_xlat36;
  let x_604 : f32 = u_xlat36;
  u_xlat36 = (x_603 * x_604);
  let x_606 : f32 = u_xlat36;
  let x_608 : f32 = u_xlat7.x;
  u_xlat36 = ((x_606 * x_608) + 1.00001001358032226562f);
  let x_612 : f32 = u_xlat37;
  let x_613 : f32 = u_xlat37;
  u_xlat37 = (x_612 * x_613);
  let x_615 : f32 = u_xlat36;
  let x_616 : f32 = u_xlat36;
  u_xlat36 = (x_615 * x_616);
  let x_618 : f32 = u_xlat37;
  u_xlat37 = max(x_618, 0.10000000149011611938f);
  let x_621 : f32 = u_xlat36;
  let x_622 : f32 = u_xlat37;
  u_xlat36 = (x_621 * x_622);
  let x_624 : f32 = u_xlat39;
  let x_625 : f32 = u_xlat36;
  u_xlat36 = (x_624 * x_625);
  let x_627 : f32 = u_xlat40;
  let x_628 : f32 = u_xlat36;
  u_xlat36 = (x_627 / x_628);
  let x_630 : vec4<f32> = u_xlat0;
  let x_632 : f32 = u_xlat36;
  let x_635 : vec3<f32> = u_xlat4;
  let x_636 : vec3<f32> = ((vec3<f32>(x_630.x, x_630.y, x_630.z) * vec3<f32>(x_632, x_632, x_632)) + x_635);
  let x_637 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_636.x, x_636.y, x_636.z, x_637.w);
  let x_641 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_643 : f32 = x_151.unity_LightData.y;
  u_xlat36 = min(x_641, x_643);
  let x_647 : f32 = u_xlat36;
  u_xlatu36 = bitcast<u32>(i32(x_647));
  let x_651 : f32 = u_xlat17.x;
  let x_654 : f32 = x_321.x_AdditionalShadowFadeParams.x;
  let x_657 : f32 = x_321.x_AdditionalShadowFadeParams.y;
  u_xlat37 = ((x_651 * x_654) + x_657);
  let x_659 : f32 = u_xlat37;
  u_xlat37 = clamp(x_659, 0.0f, 1.0f);
  u_xlat19.x = 0.0f;
  u_xlat19.y = 0.0f;
  u_xlat19.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_671 : u32 = u_xlatu_loop_1;
    let x_672 : u32 = u_xlatu36;
    if ((x_671 < x_672)) {
    } else {
      break;
    }
    let x_675 : u32 = u_xlatu_loop_1;
    u_xlatu17 = (x_675 >> 2u);
    let x_679 : u32 = u_xlatu_loop_1;
    u_xlati42 = bitcast<i32>((x_679 & 3u));
    let x_682 : u32 = u_xlatu17;
    let x_685 : vec4<f32> = x_151.unity_LightIndices[bitcast<i32>(x_682)];
    let x_695 : i32 = u_xlati42;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_700 : vec4<u32> = indexable[x_695];
    u_xlat17.x = dot(x_685, bitcast<vec4<f32>>(x_700));
    let x_706 : f32 = u_xlat17.x;
    u_xlati17 = i32(x_706);
    let x_709 : vec3<f32> = vs_TEXCOORD7;
    let x_720 : i32 = u_xlati17;
    let x_722 : vec4<f32> = x_719.x_AdditionalLightsPosition[x_720];
    let x_725 : i32 = u_xlati17;
    let x_727 : vec4<f32> = x_719.x_AdditionalLightsPosition[x_725];
    u_xlat8 = ((-(x_709) * vec3<f32>(x_722.w, x_722.w, x_722.w)) + vec3<f32>(x_727.x, x_727.y, x_727.z));
    let x_731 : vec3<f32> = u_xlat8;
    let x_732 : vec3<f32> = u_xlat8;
    u_xlat42 = dot(x_731, x_732);
    let x_734 : f32 = u_xlat42;
    u_xlat42 = max(x_734, 0.00006103515625f);
    let x_738 : f32 = u_xlat42;
    u_xlat44 = inverseSqrt(x_738);
    let x_741 : f32 = u_xlat44;
    let x_743 : vec3<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_741, x_741, x_741) * x_743);
    let x_746 : f32 = u_xlat42;
    u_xlat45 = (1.0f / x_746);
    let x_748 : f32 = u_xlat42;
    let x_749 : i32 = u_xlati17;
    let x_751 : f32 = x_719.x_AdditionalLightsAttenuation[x_749].x;
    u_xlat42 = (x_748 * x_751);
    let x_753 : f32 = u_xlat42;
    let x_755 : f32 = u_xlat42;
    u_xlat42 = ((-(x_753) * x_755) + 1.0f);
    let x_758 : f32 = u_xlat42;
    u_xlat42 = max(x_758, 0.0f);
    let x_760 : f32 = u_xlat42;
    let x_761 : f32 = u_xlat42;
    u_xlat42 = (x_760 * x_761);
    let x_763 : f32 = u_xlat42;
    let x_764 : f32 = u_xlat45;
    u_xlat42 = (x_763 * x_764);
    let x_766 : i32 = u_xlati17;
    let x_768 : vec4<f32> = x_719.x_AdditionalLightsSpotDir[x_766];
    let x_770 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(vec3<f32>(x_768.x, x_768.y, x_768.z), x_770);
    let x_772 : f32 = u_xlat45;
    let x_773 : i32 = u_xlati17;
    let x_775 : f32 = x_719.x_AdditionalLightsAttenuation[x_773].z;
    let x_777 : i32 = u_xlati17;
    let x_779 : f32 = x_719.x_AdditionalLightsAttenuation[x_777].w;
    u_xlat45 = ((x_772 * x_775) + x_779);
    let x_781 : f32 = u_xlat45;
    u_xlat45 = clamp(x_781, 0.0f, 1.0f);
    let x_783 : f32 = u_xlat45;
    let x_784 : f32 = u_xlat45;
    u_xlat45 = (x_783 * x_784);
    let x_786 : f32 = u_xlat42;
    let x_787 : f32 = u_xlat45;
    u_xlat42 = (x_786 * x_787);
    let x_791 : i32 = u_xlati17;
    let x_793 : f32 = x_321.x_AdditionalShadowParams[x_791].w;
    u_xlati45 = i32(x_793);
    let x_798 : i32 = u_xlati45;
    u_xlatb10.x = (x_798 >= 0i);
    let x_802 : bool = u_xlatb10.x;
    if (x_802) {
      let x_806 : i32 = u_xlati17;
      let x_808 : f32 = x_321.x_AdditionalShadowParams[x_806].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_808, x_808, x_808, x_808))));
      let x_815 : bool = u_xlatb10.x;
      if (x_815) {
        let x_818 : vec3<f32> = u_xlat9;
        let x_821 : vec3<f32> = u_xlat9;
        let x_824 : vec4<bool> = (abs(vec4<f32>(x_818.z, x_818.z, x_818.y, x_818.z)) >= abs(vec4<f32>(x_821.x, x_821.y, x_821.x, x_821.x)));
        u_xlatb10 = vec3<bool>(x_824.x, x_824.y, x_824.z);
        let x_827 : bool = u_xlatb10.y;
        let x_829 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_827 & x_829);
        let x_833 : vec3<f32> = u_xlat9;
        let x_836 : vec4<bool> = (-(vec4<f32>(x_833.z, x_833.y, x_833.x, x_833.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_836.x, x_836.y, x_836.z);
        let x_840 : bool = u_xlatb11.x;
        u_xlat22.x = select(4.0f, 5.0f, x_840);
        let x_845 : bool = u_xlatb11.y;
        u_xlat22.z = select(2.0f, 3.0f, x_845);
        let x_851 : bool = u_xlatb11.z;
        u_xlat11 = select(0.0f, 1.0f, x_851);
        let x_855 : bool = u_xlatb10.z;
        if (x_855) {
          let x_860 : f32 = u_xlat22.z;
          x_856 = x_860;
        } else {
          let x_862 : f32 = u_xlat11;
          x_856 = x_862;
        }
        let x_863 : f32 = x_856;
        u_xlat34 = x_863;
        let x_866 : bool = u_xlatb10.x;
        if (x_866) {
          let x_871 : f32 = u_xlat22.x;
          x_867 = x_871;
        } else {
          let x_873 : f32 = u_xlat34;
          x_867 = x_873;
        }
        let x_874 : f32 = x_867;
        u_xlat10.x = x_874;
        let x_876 : i32 = u_xlati17;
        let x_878 : f32 = x_321.x_AdditionalShadowParams[x_876].w;
        u_xlat22.x = trunc(x_878);
        let x_882 : f32 = u_xlat10.x;
        let x_884 : f32 = u_xlat22.x;
        u_xlat10.x = (x_882 + x_884);
        let x_888 : f32 = u_xlat10.x;
        u_xlati45 = i32(x_888);
      }
      let x_890 : i32 = u_xlati45;
      u_xlati45 = (x_890 << bitcast<u32>(2i));
      let x_892 : vec3<f32> = vs_TEXCOORD7;
      let x_895 : i32 = u_xlati45;
      let x_898 : i32 = u_xlati45;
      let x_902 : vec4<f32> = x_321.x_AdditionalLightsWorldToShadow[((x_895 + 1i) / 4i)][((x_898 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_892.y, x_892.y, x_892.y, x_892.y) * x_902);
      let x_904 : i32 = u_xlati45;
      let x_906 : i32 = u_xlati45;
      let x_909 : vec4<f32> = x_321.x_AdditionalLightsWorldToShadow[(x_904 / 4i)][(x_906 % 4i)];
      let x_910 : vec3<f32> = vs_TEXCOORD7;
      let x_913 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_909 * vec4<f32>(x_910.x, x_910.x, x_910.x, x_910.x)) + x_913);
      let x_915 : i32 = u_xlati45;
      let x_918 : i32 = u_xlati45;
      let x_922 : vec4<f32> = x_321.x_AdditionalLightsWorldToShadow[((x_915 + 2i) / 4i)][((x_918 + 2i) % 4i)];
      let x_923 : vec3<f32> = vs_TEXCOORD7;
      let x_926 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_922 * vec4<f32>(x_923.z, x_923.z, x_923.z, x_923.z)) + x_926);
      let x_928 : vec4<f32> = u_xlat10;
      let x_929 : i32 = u_xlati45;
      let x_932 : i32 = u_xlati45;
      let x_936 : vec4<f32> = x_321.x_AdditionalLightsWorldToShadow[((x_929 + 3i) / 4i)][((x_932 + 3i) % 4i)];
      u_xlat10 = (x_928 + x_936);
      let x_938 : vec4<f32> = u_xlat10;
      let x_940 : vec4<f32> = u_xlat10;
      let x_942 : vec3<f32> = (vec3<f32>(x_938.x, x_938.y, x_938.z) / vec3<f32>(x_940.w, x_940.w, x_940.w));
      let x_943 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_942.x, x_942.y, x_942.z, x_943.w);
      let x_946 : vec4<f32> = u_xlat10;
      let x_947 : vec2<f32> = vec2<f32>(x_946.x, x_946.y);
      let x_949 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_947.x, x_947.y, x_949);
      let x_957 : vec3<f32> = txVec1;
      let x_959 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_957.xy, x_957.z);
      u_xlat45 = x_959;
      let x_960 : i32 = u_xlati17;
      let x_962 : f32 = x_321.x_AdditionalShadowParams[x_960].x;
      u_xlat10.x = (1.0f + -(x_962));
      let x_966 : f32 = u_xlat45;
      let x_967 : i32 = u_xlati17;
      let x_969 : f32 = x_321.x_AdditionalShadowParams[x_967].x;
      let x_972 : f32 = u_xlat10.x;
      u_xlat45 = ((x_966 * x_969) + x_972);
      let x_975 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_975);
      let x_980 : f32 = u_xlat10.z;
      u_xlatb22 = (x_980 >= 1.0f);
      let x_982 : bool = u_xlatb22;
      let x_984 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_982 | x_984);
      let x_988 : bool = u_xlatb10.x;
      let x_989 : f32 = u_xlat45;
      u_xlat45 = select(x_989, 1.0f, x_988);
    } else {
      u_xlat45 = 1.0f;
    }
    let x_992 : f32 = u_xlat45;
    u_xlat10.x = (-(x_992) + 1.0f);
    let x_996 : f32 = u_xlat37;
    let x_998 : f32 = u_xlat10.x;
    let x_1000 : f32 = u_xlat45;
    u_xlat45 = ((x_996 * x_998) + x_1000);
    let x_1002 : f32 = u_xlat42;
    let x_1003 : f32 = u_xlat45;
    u_xlat42 = (x_1002 * x_1003);
    let x_1005 : vec4<f32> = u_xlat2;
    let x_1007 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(vec3<f32>(x_1005.x, x_1005.y, x_1005.z), x_1007);
    let x_1009 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1009, 0.0f, 1.0f);
    let x_1011 : f32 = u_xlat42;
    let x_1012 : f32 = u_xlat45;
    u_xlat42 = (x_1011 * x_1012);
    let x_1014 : f32 = u_xlat42;
    let x_1016 : i32 = u_xlati17;
    let x_1018 : vec4<f32> = x_719.x_AdditionalLightsColor[x_1016];
    let x_1020 : vec3<f32> = (vec3<f32>(x_1014, x_1014, x_1014) * vec3<f32>(x_1018.x, x_1018.y, x_1018.z));
    let x_1021 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1020.x, x_1020.y, x_1020.z, x_1021.w);
    let x_1023 : vec3<f32> = u_xlat8;
    let x_1024 : f32 = u_xlat44;
    let x_1027 : vec3<f32> = u_xlat3;
    u_xlat8 = ((x_1023 * vec3<f32>(x_1024, x_1024, x_1024)) + x_1027);
    let x_1029 : vec3<f32> = u_xlat8;
    let x_1030 : vec3<f32> = u_xlat8;
    u_xlat17.x = dot(x_1029, x_1030);
    let x_1034 : f32 = u_xlat17.x;
    u_xlat17.x = max(x_1034, 1.17549435e-38f);
    let x_1038 : f32 = u_xlat17.x;
    u_xlat17.x = inverseSqrt(x_1038);
    let x_1041 : vec3<f32> = u_xlat17;
    let x_1043 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_1041.x, x_1041.x, x_1041.x) * x_1043);
    let x_1045 : vec4<f32> = u_xlat2;
    let x_1047 : vec3<f32> = u_xlat8;
    u_xlat17.x = dot(vec3<f32>(x_1045.x, x_1045.y, x_1045.z), x_1047);
    let x_1051 : f32 = u_xlat17.x;
    u_xlat17.x = clamp(x_1051, 0.0f, 1.0f);
    let x_1054 : vec3<f32> = u_xlat9;
    let x_1055 : vec3<f32> = u_xlat8;
    u_xlat42 = dot(x_1054, x_1055);
    let x_1057 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1057, 0.0f, 1.0f);
    let x_1060 : f32 = u_xlat17.x;
    let x_1062 : f32 = u_xlat17.x;
    u_xlat17.x = (x_1060 * x_1062);
    let x_1066 : f32 = u_xlat17.x;
    let x_1068 : f32 = u_xlat7.x;
    u_xlat17.x = ((x_1066 * x_1068) + 1.00001001358032226562f);
    let x_1072 : f32 = u_xlat42;
    let x_1073 : f32 = u_xlat42;
    u_xlat42 = (x_1072 * x_1073);
    let x_1076 : f32 = u_xlat17.x;
    let x_1078 : f32 = u_xlat17.x;
    u_xlat17.x = (x_1076 * x_1078);
    let x_1081 : f32 = u_xlat42;
    u_xlat42 = max(x_1081, 0.10000000149011611938f);
    let x_1084 : f32 = u_xlat17.x;
    let x_1085 : f32 = u_xlat42;
    u_xlat17.x = (x_1084 * x_1085);
    let x_1088 : f32 = u_xlat39;
    let x_1090 : f32 = u_xlat17.x;
    u_xlat17.x = (x_1088 * x_1090);
    let x_1093 : f32 = u_xlat40;
    let x_1095 : f32 = u_xlat17.x;
    u_xlat17.x = (x_1093 / x_1095);
    let x_1098 : vec4<f32> = u_xlat0;
    let x_1100 : vec3<f32> = u_xlat17;
    let x_1103 : vec3<f32> = u_xlat4;
    u_xlat8 = ((vec3<f32>(x_1098.x, x_1098.y, x_1098.z) * vec3<f32>(x_1100.x, x_1100.x, x_1100.x)) + x_1103);
    let x_1105 : vec3<f32> = u_xlat8;
    let x_1106 : vec4<f32> = u_xlat10;
    let x_1109 : vec3<f32> = u_xlat19;
    u_xlat19 = ((x_1105 * vec3<f32>(x_1106.x, x_1106.y, x_1106.z)) + x_1109);

    continuing {
      let x_1111 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1111 + bitcast<u32>(1i));
    }
  }
  let x_1113 : vec4<f32> = u_xlat6;
  let x_1115 : vec4<f32> = u_xlat5;
  let x_1118 : vec3<f32> = u_xlat1;
  let x_1119 : vec3<f32> = ((vec3<f32>(x_1113.x, x_1113.y, x_1113.z) * vec3<f32>(x_1115.x, x_1115.z, x_1115.w)) + x_1118);
  let x_1120 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1119.x, x_1119.y, x_1119.z, x_1120.w);
  let x_1124 : vec3<f32> = u_xlat19;
  let x_1125 : vec4<f32> = u_xlat0;
  let x_1127 : vec3<f32> = (x_1124 + vec3<f32>(x_1125.x, x_1125.y, x_1125.z));
  let x_1128 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1127.x, x_1127.y, x_1127.z, x_1128.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(2) vs_TEXCOORD7_param : vec3<f32>, @location(1) vs_TEXCOORD3_param : vec3<f32>, @location(3) vs_TEXCOORD8_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


