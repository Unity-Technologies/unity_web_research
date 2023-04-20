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

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(2) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MetallicTex : sampler;

var<private> u_xlat13 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_81 : UnityPerDraw;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat38 : f32;

var<private> u_xlat15 : vec3<f32>;

var<private> u_xlat36 : f32;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> u_xlat16 : vec3<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat28 : f32;

@group(1) @binding(3) var<uniform> x_256 : LightShadows;

var<private> u_xlatb28 : bool;

var<private> u_xlatb40 : bool;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat40 : f32;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat41 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat7 : vec2<f32>;

var<private> u_xlat19 : vec3<f32>;

var<private> u_xlat37 : f32;

var<private> u_xlatu36 : u32;

var<private> u_xlatu41 : u32;

var<private> u_xlati42 : i32;

var<private> u_xlati41 : i32;

var<private> u_xlat8 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_663 : AdditionalLights;

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

var<private> u_xlatb41 : bool;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_285 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_800 : f32;
  var x_811 : f32;
  var txVec1 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_35 : f32 = x_28.x_GlobalMipBias.x;
  let x_36 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_23.x, x_23.y), x_35);
  u_xlat0 = x_36;
  let x_44 : vec4<f32> = vs_TEXCOORD0;
  let x_47 : f32 = x_28.x_GlobalMipBias.x;
  let x_48 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_44.x, x_44.y), x_47);
  u_xlat1.x = x_48.x;
  let x_54 : vec4<f32> = vs_TEXCOORD3;
  let x_56 : vec4<f32> = vs_TEXCOORD3;
  u_xlat13.x = dot(vec3<f32>(x_54.x, x_54.y, x_54.z), vec3<f32>(x_56.x, x_56.y, x_56.z));
  let x_61 : f32 = u_xlat13.x;
  u_xlat13.x = inverseSqrt(x_61);
  let x_65 : vec3<f32> = u_xlat13;
  let x_67 : vec4<f32> = vs_TEXCOORD3;
  let x_69 : vec3<f32> = (vec3<f32>(x_65.x, x_65.x, x_65.x) * vec3<f32>(x_67.x, x_67.y, x_67.z));
  let x_70 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_69.x, x_69.y, x_69.z, x_70.w);
  u_xlat2.w = 1.0f;
  let x_85 : vec4<f32> = x_81.unity_SHAr;
  let x_86 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_85, x_86);
  let x_91 : vec4<f32> = x_81.unity_SHAg;
  let x_92 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_91, x_92);
  let x_98 : vec4<f32> = x_81.unity_SHAb;
  let x_99 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_98, x_99);
  let x_103 : vec4<f32> = u_xlat2;
  let x_105 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_103.y, x_103.z, x_103.z, x_103.x) * vec4<f32>(x_105.x, x_105.y, x_105.z, x_105.z));
  let x_111 : vec4<f32> = x_81.unity_SHBr;
  let x_112 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_111, x_112);
  let x_117 : vec4<f32> = x_81.unity_SHBg;
  let x_118 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_117, x_118);
  let x_123 : vec4<f32> = x_81.unity_SHBb;
  let x_124 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_123, x_124);
  let x_128 : f32 = u_xlat2.y;
  let x_130 : f32 = u_xlat2.y;
  u_xlat13.x = (x_128 * x_130);
  let x_134 : f32 = u_xlat2.x;
  let x_136 : f32 = u_xlat2.x;
  let x_139 : f32 = u_xlat13.x;
  u_xlat13.x = ((x_134 * x_136) + -(x_139));
  let x_145 : vec4<f32> = x_81.unity_SHC;
  let x_147 : vec3<f32> = u_xlat13;
  let x_150 : vec3<f32> = u_xlat5;
  u_xlat13 = ((vec3<f32>(x_145.x, x_145.y, x_145.z) * vec3<f32>(x_147.x, x_147.x, x_147.x)) + x_150);
  let x_152 : vec3<f32> = u_xlat13;
  let x_153 : vec3<f32> = u_xlat3;
  u_xlat13 = (x_152 + x_153);
  let x_155 : vec3<f32> = u_xlat13;
  u_xlat13 = max(x_155, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_161 : f32 = u_xlat1.x;
  u_xlat38 = ((-(x_161) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_166 : f32 = u_xlat38;
  u_xlat3.x = (-(x_166) + 1.0f);
  let x_171 : vec4<f32> = u_xlat0;
  let x_173 : f32 = u_xlat38;
  u_xlat15 = (vec3<f32>(x_171.x, x_171.y, x_171.z) * vec3<f32>(x_173, x_173, x_173));
  let x_176 : vec4<f32> = u_xlat0;
  let x_180 : vec3<f32> = (vec3<f32>(x_176.x, x_176.y, x_176.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_181 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_180.x, x_180.y, x_180.z, x_181.w);
  let x_183 : vec3<f32> = u_xlat1;
  let x_185 : vec4<f32> = u_xlat0;
  let x_190 : vec3<f32> = ((vec3<f32>(x_183.x, x_183.x, x_183.x) * vec3<f32>(x_185.x, x_185.y, x_185.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_191 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_190.x, x_190.y, x_190.z, x_191.w);
  let x_194 : f32 = u_xlat0.w;
  u_xlat1.x = (-(x_194) + 1.0f);
  let x_199 : f32 = u_xlat1.x;
  let x_201 : f32 = u_xlat1.x;
  u_xlat38 = (x_199 * x_201);
  let x_203 : f32 = u_xlat38;
  u_xlat38 = max(x_203, 0.0078125f);
  let x_206 : f32 = u_xlat38;
  let x_207 : f32 = u_xlat38;
  u_xlat4.x = (x_206 * x_207);
  let x_212 : f32 = u_xlat0.w;
  let x_214 : f32 = u_xlat3.x;
  u_xlat36 = (x_212 + x_214);
  let x_216 : f32 = u_xlat36;
  u_xlat36 = clamp(x_216, 0.0f, 1.0f);
  let x_218 : f32 = u_xlat38;
  u_xlat3.x = ((x_218 * 4.0f) + 2.0f);
  let x_227 : vec4<f32> = vs_TEXCOORD8;
  let x_228 : vec2<f32> = vec2<f32>(x_227.x, x_227.y);
  let x_231 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_228.x, x_228.y, x_231);
  let x_244 : vec3<f32> = txVec0;
  let x_246 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_244.xy, x_244.z);
  u_xlat16.x = x_246;
  let x_259 : f32 = x_256.x_MainLightShadowParams.x;
  u_xlat28 = (-(x_259) + 1.0f);
  let x_263 : f32 = u_xlat16.x;
  let x_265 : f32 = x_256.x_MainLightShadowParams.x;
  let x_267 : f32 = u_xlat28;
  u_xlat16.x = ((x_263 * x_265) + x_267);
  let x_274 : f32 = vs_TEXCOORD8.z;
  u_xlatb28 = (0.0f >= x_274);
  let x_278 : f32 = vs_TEXCOORD8.z;
  u_xlatb40 = (x_278 >= 1.0f);
  let x_280 : bool = u_xlatb40;
  let x_281 : bool = u_xlatb28;
  u_xlatb28 = (x_280 | x_281);
  let x_283 : bool = u_xlatb28;
  if (x_283) {
    x_285 = 1.0f;
  } else {
    let x_290 : f32 = u_xlat16.x;
    x_285 = x_290;
  }
  let x_291 : f32 = x_285;
  u_xlat16.x = x_291;
  let x_295 : vec3<f32> = vs_TEXCOORD7;
  let x_299 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  u_xlat5 = (x_295 + -(x_299));
  let x_302 : vec3<f32> = u_xlat5;
  let x_303 : vec3<f32> = u_xlat5;
  u_xlat28 = dot(x_302, x_303);
  let x_306 : f32 = u_xlat28;
  let x_308 : f32 = x_256.x_MainLightShadowParams.z;
  let x_311 : f32 = x_256.x_MainLightShadowParams.w;
  u_xlat40 = ((x_306 * x_308) + x_311);
  let x_313 : f32 = u_xlat40;
  u_xlat40 = clamp(x_313, 0.0f, 1.0f);
  let x_316 : f32 = u_xlat16.x;
  u_xlat5.x = (-(x_316) + 1.0f);
  let x_320 : f32 = u_xlat40;
  let x_322 : f32 = u_xlat5.x;
  let x_325 : f32 = u_xlat16.x;
  u_xlat16.x = ((x_320 * x_322) + x_325);
  let x_329 : f32 = vs_TEXCOORD3.w;
  u_xlat5.x = x_329;
  let x_333 : f32 = vs_TEXCOORD4.w;
  u_xlat5.y = x_333;
  let x_337 : f32 = vs_TEXCOORD5.w;
  u_xlat5.z = x_337;
  let x_339 : vec3<f32> = u_xlat5;
  let x_341 : vec4<f32> = u_xlat2;
  u_xlat40 = dot(-(x_339), vec3<f32>(x_341.x, x_341.y, x_341.z));
  let x_344 : f32 = u_xlat40;
  let x_345 : f32 = u_xlat40;
  u_xlat40 = (x_344 + x_345);
  let x_348 : vec4<f32> = u_xlat2;
  let x_350 : f32 = u_xlat40;
  let x_354 : vec3<f32> = u_xlat5;
  let x_356 : vec3<f32> = ((vec3<f32>(x_348.x, x_348.y, x_348.z) * -(vec3<f32>(x_350, x_350, x_350))) + -(x_354));
  let x_357 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_356.x, x_356.y, x_356.z, x_357.w);
  let x_359 : vec4<f32> = u_xlat2;
  let x_361 : vec3<f32> = u_xlat5;
  u_xlat40 = dot(vec3<f32>(x_359.x, x_359.y, x_359.z), x_361);
  let x_363 : f32 = u_xlat40;
  u_xlat40 = clamp(x_363, 0.0f, 1.0f);
  let x_365 : f32 = u_xlat40;
  u_xlat40 = (-(x_365) + 1.0f);
  let x_368 : f32 = u_xlat40;
  let x_369 : f32 = u_xlat40;
  u_xlat40 = (x_368 * x_369);
  let x_371 : f32 = u_xlat40;
  let x_372 : f32 = u_xlat40;
  u_xlat40 = (x_371 * x_372);
  let x_376 : f32 = u_xlat1.x;
  u_xlat41 = ((-(x_376) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_383 : f32 = u_xlat1.x;
  let x_384 : f32 = u_xlat41;
  u_xlat1.x = (x_383 * x_384);
  let x_388 : f32 = u_xlat1.x;
  u_xlat1.x = (x_388 * 6.0f);
  let x_400 : vec4<f32> = u_xlat6;
  let x_403 : f32 = u_xlat1.x;
  let x_404 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_400.x, x_400.y, x_400.z), x_403);
  u_xlat6 = x_404;
  let x_406 : f32 = u_xlat6.w;
  u_xlat1.x = (x_406 + -1.0f);
  let x_411 : f32 = x_81.unity_SpecCube0_HDR.w;
  let x_413 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_411 * x_413) + 1.0f);
  let x_418 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_418, 0.0f);
  let x_422 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_422);
  let x_426 : f32 = u_xlat1.x;
  let x_428 : f32 = x_81.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_426 * x_428);
  let x_432 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_432);
  let x_436 : f32 = u_xlat1.x;
  let x_438 : f32 = x_81.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_436 * x_438);
  let x_441 : vec4<f32> = u_xlat6;
  let x_443 : vec3<f32> = u_xlat1;
  let x_445 : vec3<f32> = (vec3<f32>(x_441.x, x_441.y, x_441.z) * vec3<f32>(x_443.x, x_443.x, x_443.x));
  let x_446 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_445.x, x_445.y, x_445.z, x_446.w);
  let x_450 : f32 = u_xlat38;
  let x_452 : f32 = u_xlat38;
  u_xlat7 = ((vec2<f32>(x_450, x_450) * vec2<f32>(x_452, x_452)) + vec2<f32>(-1.0f, 1.0f));
  let x_458 : f32 = u_xlat7.y;
  u_xlat1.x = (1.0f / x_458);
  let x_462 : vec4<f32> = u_xlat0;
  let x_465 : f32 = u_xlat36;
  u_xlat19 = (-(vec3<f32>(x_462.x, x_462.y, x_462.z)) + vec3<f32>(x_465, x_465, x_465));
  let x_468 : f32 = u_xlat40;
  let x_470 : vec3<f32> = u_xlat19;
  let x_472 : vec4<f32> = u_xlat0;
  u_xlat19 = ((vec3<f32>(x_468, x_468, x_468) * x_470) + vec3<f32>(x_472.x, x_472.y, x_472.z));
  let x_475 : vec3<f32> = u_xlat1;
  let x_477 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_475.x, x_475.x, x_475.x) * x_477);
  let x_479 : vec4<f32> = u_xlat6;
  let x_481 : vec3<f32> = u_xlat19;
  let x_482 : vec3<f32> = (vec3<f32>(x_479.x, x_479.y, x_479.z) * x_481);
  let x_483 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_482.x, x_482.y, x_482.z, x_483.w);
  let x_485 : vec3<f32> = u_xlat13;
  let x_486 : vec3<f32> = u_xlat15;
  let x_488 : vec4<f32> = u_xlat6;
  u_xlat1 = ((x_485 * x_486) + vec3<f32>(x_488.x, x_488.y, x_488.z));
  let x_492 : f32 = u_xlat16.x;
  let x_495 : f32 = x_81.unity_LightData.z;
  u_xlat36 = (x_492 * x_495);
  let x_498 : vec4<f32> = u_xlat2;
  let x_502 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat37 = dot(vec3<f32>(x_498.x, x_498.y, x_498.z), vec3<f32>(x_502.x, x_502.y, x_502.z));
  let x_505 : f32 = u_xlat37;
  u_xlat37 = clamp(x_505, 0.0f, 1.0f);
  let x_507 : f32 = u_xlat36;
  let x_508 : f32 = u_xlat37;
  u_xlat36 = (x_507 * x_508);
  let x_510 : f32 = u_xlat36;
  let x_514 : vec4<f32> = x_28.x_MainLightColor;
  let x_516 : vec3<f32> = (vec3<f32>(x_510, x_510, x_510) * vec3<f32>(x_514.x, x_514.y, x_514.z));
  let x_517 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_516.x, x_516.y, x_516.z, x_517.w);
  let x_519 : vec3<f32> = u_xlat5;
  let x_521 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat19 = (x_519 + vec3<f32>(x_521.x, x_521.y, x_521.z));
  let x_524 : vec3<f32> = u_xlat19;
  let x_525 : vec3<f32> = u_xlat19;
  u_xlat36 = dot(x_524, x_525);
  let x_527 : f32 = u_xlat36;
  u_xlat36 = max(x_527, 1.17549435e-38f);
  let x_530 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_530);
  let x_532 : f32 = u_xlat36;
  let x_534 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_532, x_532, x_532) * x_534);
  let x_536 : vec4<f32> = u_xlat2;
  let x_538 : vec3<f32> = u_xlat19;
  u_xlat36 = dot(vec3<f32>(x_536.x, x_536.y, x_536.z), x_538);
  let x_540 : f32 = u_xlat36;
  u_xlat36 = clamp(x_540, 0.0f, 1.0f);
  let x_543 : vec4<f32> = x_28.x_MainLightPosition;
  let x_545 : vec3<f32> = u_xlat19;
  u_xlat37 = dot(vec3<f32>(x_543.x, x_543.y, x_543.z), x_545);
  let x_547 : f32 = u_xlat37;
  u_xlat37 = clamp(x_547, 0.0f, 1.0f);
  let x_549 : f32 = u_xlat36;
  let x_550 : f32 = u_xlat36;
  u_xlat36 = (x_549 * x_550);
  let x_552 : f32 = u_xlat36;
  let x_554 : f32 = u_xlat7.x;
  u_xlat36 = ((x_552 * x_554) + 1.00001001358032226562f);
  let x_558 : f32 = u_xlat37;
  let x_559 : f32 = u_xlat37;
  u_xlat37 = (x_558 * x_559);
  let x_561 : f32 = u_xlat36;
  let x_562 : f32 = u_xlat36;
  u_xlat36 = (x_561 * x_562);
  let x_564 : f32 = u_xlat37;
  u_xlat37 = max(x_564, 0.10000000149011611938f);
  let x_567 : f32 = u_xlat36;
  let x_568 : f32 = u_xlat37;
  u_xlat36 = (x_567 * x_568);
  let x_571 : f32 = u_xlat3.x;
  let x_572 : f32 = u_xlat36;
  u_xlat36 = (x_571 * x_572);
  let x_575 : f32 = u_xlat4.x;
  let x_576 : f32 = u_xlat36;
  u_xlat36 = (x_575 / x_576);
  let x_578 : vec4<f32> = u_xlat0;
  let x_580 : f32 = u_xlat36;
  let x_583 : vec3<f32> = u_xlat15;
  u_xlat19 = ((vec3<f32>(x_578.x, x_578.y, x_578.z) * vec3<f32>(x_580, x_580, x_580)) + x_583);
  let x_587 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_589 : f32 = x_81.unity_LightData.y;
  u_xlat36 = min(x_587, x_589);
  let x_593 : f32 = u_xlat36;
  u_xlatu36 = bitcast<u32>(i32(x_593));
  let x_596 : f32 = u_xlat28;
  let x_599 : f32 = x_256.x_AdditionalShadowFadeParams.x;
  let x_602 : f32 = x_256.x_AdditionalShadowFadeParams.y;
  u_xlat37 = ((x_596 * x_599) + x_602);
  let x_604 : f32 = u_xlat37;
  u_xlat37 = clamp(x_604, 0.0f, 1.0f);
  u_xlat16.x = 0.0f;
  u_xlat16.y = 0.0f;
  u_xlat16.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_616 : u32 = u_xlatu_loop_1;
    let x_617 : u32 = u_xlatu36;
    if ((x_616 < x_617)) {
    } else {
      break;
    }
    let x_620 : u32 = u_xlatu_loop_1;
    u_xlatu41 = (x_620 >> 2u);
    let x_624 : u32 = u_xlatu_loop_1;
    u_xlati42 = bitcast<i32>((x_624 & 3u));
    let x_628 : u32 = u_xlatu41;
    let x_631 : vec4<f32> = x_81.unity_LightIndices[bitcast<i32>(x_628)];
    let x_641 : i32 = u_xlati42;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_646 : vec4<u32> = indexable[x_641];
    u_xlat41 = dot(x_631, bitcast<vec4<f32>>(x_646));
    let x_650 : f32 = u_xlat41;
    u_xlati41 = i32(x_650);
    let x_653 : vec3<f32> = vs_TEXCOORD7;
    let x_664 : i32 = u_xlati41;
    let x_666 : vec4<f32> = x_663.x_AdditionalLightsPosition[x_664];
    let x_669 : i32 = u_xlati41;
    let x_671 : vec4<f32> = x_663.x_AdditionalLightsPosition[x_669];
    u_xlat8 = ((-(x_653) * vec3<f32>(x_666.w, x_666.w, x_666.w)) + vec3<f32>(x_671.x, x_671.y, x_671.z));
    let x_675 : vec3<f32> = u_xlat8;
    let x_676 : vec3<f32> = u_xlat8;
    u_xlat42 = dot(x_675, x_676);
    let x_678 : f32 = u_xlat42;
    u_xlat42 = max(x_678, 0.00006103515625f);
    let x_682 : f32 = u_xlat42;
    u_xlat44 = inverseSqrt(x_682);
    let x_685 : f32 = u_xlat44;
    let x_687 : vec3<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_685, x_685, x_685) * x_687);
    let x_690 : f32 = u_xlat42;
    u_xlat45 = (1.0f / x_690);
    let x_692 : f32 = u_xlat42;
    let x_693 : i32 = u_xlati41;
    let x_695 : f32 = x_663.x_AdditionalLightsAttenuation[x_693].x;
    u_xlat42 = (x_692 * x_695);
    let x_697 : f32 = u_xlat42;
    let x_699 : f32 = u_xlat42;
    u_xlat42 = ((-(x_697) * x_699) + 1.0f);
    let x_702 : f32 = u_xlat42;
    u_xlat42 = max(x_702, 0.0f);
    let x_704 : f32 = u_xlat42;
    let x_705 : f32 = u_xlat42;
    u_xlat42 = (x_704 * x_705);
    let x_707 : f32 = u_xlat42;
    let x_708 : f32 = u_xlat45;
    u_xlat42 = (x_707 * x_708);
    let x_710 : i32 = u_xlati41;
    let x_712 : vec4<f32> = x_663.x_AdditionalLightsSpotDir[x_710];
    let x_714 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(vec3<f32>(x_712.x, x_712.y, x_712.z), x_714);
    let x_716 : f32 = u_xlat45;
    let x_717 : i32 = u_xlati41;
    let x_719 : f32 = x_663.x_AdditionalLightsAttenuation[x_717].z;
    let x_721 : i32 = u_xlati41;
    let x_723 : f32 = x_663.x_AdditionalLightsAttenuation[x_721].w;
    u_xlat45 = ((x_716 * x_719) + x_723);
    let x_725 : f32 = u_xlat45;
    u_xlat45 = clamp(x_725, 0.0f, 1.0f);
    let x_727 : f32 = u_xlat45;
    let x_728 : f32 = u_xlat45;
    u_xlat45 = (x_727 * x_728);
    let x_730 : f32 = u_xlat42;
    let x_731 : f32 = u_xlat45;
    u_xlat42 = (x_730 * x_731);
    let x_735 : i32 = u_xlati41;
    let x_737 : f32 = x_256.x_AdditionalShadowParams[x_735].w;
    u_xlati45 = i32(x_737);
    let x_742 : i32 = u_xlati45;
    u_xlatb10.x = (x_742 >= 0i);
    let x_746 : bool = u_xlatb10.x;
    if (x_746) {
      let x_750 : i32 = u_xlati41;
      let x_752 : f32 = x_256.x_AdditionalShadowParams[x_750].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_752, x_752, x_752, x_752))));
      let x_759 : bool = u_xlatb10.x;
      if (x_759) {
        let x_762 : vec3<f32> = u_xlat9;
        let x_765 : vec3<f32> = u_xlat9;
        let x_768 : vec4<bool> = (abs(vec4<f32>(x_762.z, x_762.z, x_762.y, x_762.z)) >= abs(vec4<f32>(x_765.x, x_765.y, x_765.x, x_765.x)));
        u_xlatb10 = vec3<bool>(x_768.x, x_768.y, x_768.z);
        let x_771 : bool = u_xlatb10.y;
        let x_773 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_771 & x_773);
        let x_777 : vec3<f32> = u_xlat9;
        let x_780 : vec4<bool> = (-(vec4<f32>(x_777.z, x_777.y, x_777.x, x_777.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_780.x, x_780.y, x_780.z);
        let x_784 : bool = u_xlatb11.x;
        u_xlat22.x = select(4.0f, 5.0f, x_784);
        let x_789 : bool = u_xlatb11.y;
        u_xlat22.z = select(2.0f, 3.0f, x_789);
        let x_795 : bool = u_xlatb11.z;
        u_xlat11 = select(0.0f, 1.0f, x_795);
        let x_799 : bool = u_xlatb10.z;
        if (x_799) {
          let x_804 : f32 = u_xlat22.z;
          x_800 = x_804;
        } else {
          let x_806 : f32 = u_xlat11;
          x_800 = x_806;
        }
        let x_807 : f32 = x_800;
        u_xlat34 = x_807;
        let x_810 : bool = u_xlatb10.x;
        if (x_810) {
          let x_815 : f32 = u_xlat22.x;
          x_811 = x_815;
        } else {
          let x_817 : f32 = u_xlat34;
          x_811 = x_817;
        }
        let x_818 : f32 = x_811;
        u_xlat10.x = x_818;
        let x_820 : i32 = u_xlati41;
        let x_822 : f32 = x_256.x_AdditionalShadowParams[x_820].w;
        u_xlat22.x = trunc(x_822);
        let x_826 : f32 = u_xlat10.x;
        let x_828 : f32 = u_xlat22.x;
        u_xlat10.x = (x_826 + x_828);
        let x_832 : f32 = u_xlat10.x;
        u_xlati45 = i32(x_832);
      }
      let x_834 : i32 = u_xlati45;
      u_xlati45 = (x_834 << bitcast<u32>(2i));
      let x_836 : vec3<f32> = vs_TEXCOORD7;
      let x_839 : i32 = u_xlati45;
      let x_842 : i32 = u_xlati45;
      let x_846 : vec4<f32> = x_256.x_AdditionalLightsWorldToShadow[((x_839 + 1i) / 4i)][((x_842 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_836.y, x_836.y, x_836.y, x_836.y) * x_846);
      let x_848 : i32 = u_xlati45;
      let x_850 : i32 = u_xlati45;
      let x_853 : vec4<f32> = x_256.x_AdditionalLightsWorldToShadow[(x_848 / 4i)][(x_850 % 4i)];
      let x_854 : vec3<f32> = vs_TEXCOORD7;
      let x_857 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_853 * vec4<f32>(x_854.x, x_854.x, x_854.x, x_854.x)) + x_857);
      let x_859 : i32 = u_xlati45;
      let x_862 : i32 = u_xlati45;
      let x_866 : vec4<f32> = x_256.x_AdditionalLightsWorldToShadow[((x_859 + 2i) / 4i)][((x_862 + 2i) % 4i)];
      let x_867 : vec3<f32> = vs_TEXCOORD7;
      let x_870 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_866 * vec4<f32>(x_867.z, x_867.z, x_867.z, x_867.z)) + x_870);
      let x_872 : vec4<f32> = u_xlat10;
      let x_873 : i32 = u_xlati45;
      let x_876 : i32 = u_xlati45;
      let x_880 : vec4<f32> = x_256.x_AdditionalLightsWorldToShadow[((x_873 + 3i) / 4i)][((x_876 + 3i) % 4i)];
      u_xlat10 = (x_872 + x_880);
      let x_882 : vec4<f32> = u_xlat10;
      let x_884 : vec4<f32> = u_xlat10;
      let x_886 : vec3<f32> = (vec3<f32>(x_882.x, x_882.y, x_882.z) / vec3<f32>(x_884.w, x_884.w, x_884.w));
      let x_887 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_886.x, x_886.y, x_886.z, x_887.w);
      let x_890 : vec4<f32> = u_xlat10;
      let x_891 : vec2<f32> = vec2<f32>(x_890.x, x_890.y);
      let x_893 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_891.x, x_891.y, x_893);
      let x_901 : vec3<f32> = txVec1;
      let x_903 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_901.xy, x_901.z);
      u_xlat45 = x_903;
      let x_904 : i32 = u_xlati41;
      let x_906 : f32 = x_256.x_AdditionalShadowParams[x_904].x;
      u_xlat10.x = (1.0f + -(x_906));
      let x_910 : f32 = u_xlat45;
      let x_911 : i32 = u_xlati41;
      let x_913 : f32 = x_256.x_AdditionalShadowParams[x_911].x;
      let x_916 : f32 = u_xlat10.x;
      u_xlat45 = ((x_910 * x_913) + x_916);
      let x_919 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_919);
      let x_924 : f32 = u_xlat10.z;
      u_xlatb22 = (x_924 >= 1.0f);
      let x_926 : bool = u_xlatb22;
      let x_928 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_926 | x_928);
      let x_932 : bool = u_xlatb10.x;
      let x_933 : f32 = u_xlat45;
      u_xlat45 = select(x_933, 1.0f, x_932);
    } else {
      u_xlat45 = 1.0f;
    }
    let x_936 : f32 = u_xlat45;
    u_xlat10.x = (-(x_936) + 1.0f);
    let x_940 : f32 = u_xlat37;
    let x_942 : f32 = u_xlat10.x;
    let x_944 : f32 = u_xlat45;
    u_xlat45 = ((x_940 * x_942) + x_944);
    let x_946 : f32 = u_xlat42;
    let x_947 : f32 = u_xlat45;
    u_xlat42 = (x_946 * x_947);
    let x_949 : vec4<f32> = u_xlat2;
    let x_951 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(vec3<f32>(x_949.x, x_949.y, x_949.z), x_951);
    let x_953 : f32 = u_xlat45;
    u_xlat45 = clamp(x_953, 0.0f, 1.0f);
    let x_955 : f32 = u_xlat42;
    let x_956 : f32 = u_xlat45;
    u_xlat42 = (x_955 * x_956);
    let x_958 : f32 = u_xlat42;
    let x_960 : i32 = u_xlati41;
    let x_962 : vec4<f32> = x_663.x_AdditionalLightsColor[x_960];
    let x_964 : vec3<f32> = (vec3<f32>(x_958, x_958, x_958) * vec3<f32>(x_962.x, x_962.y, x_962.z));
    let x_965 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_964.x, x_964.y, x_964.z, x_965.w);
    let x_967 : vec3<f32> = u_xlat8;
    let x_968 : f32 = u_xlat44;
    let x_971 : vec3<f32> = u_xlat5;
    u_xlat8 = ((x_967 * vec3<f32>(x_968, x_968, x_968)) + x_971);
    let x_973 : vec3<f32> = u_xlat8;
    let x_974 : vec3<f32> = u_xlat8;
    u_xlat41 = dot(x_973, x_974);
    let x_976 : f32 = u_xlat41;
    u_xlat41 = max(x_976, 1.17549435e-38f);
    let x_978 : f32 = u_xlat41;
    u_xlat41 = inverseSqrt(x_978);
    let x_980 : f32 = u_xlat41;
    let x_982 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_980, x_980, x_980) * x_982);
    let x_984 : vec4<f32> = u_xlat2;
    let x_986 : vec3<f32> = u_xlat8;
    u_xlat41 = dot(vec3<f32>(x_984.x, x_984.y, x_984.z), x_986);
    let x_988 : f32 = u_xlat41;
    u_xlat41 = clamp(x_988, 0.0f, 1.0f);
    let x_990 : vec3<f32> = u_xlat9;
    let x_991 : vec3<f32> = u_xlat8;
    u_xlat42 = dot(x_990, x_991);
    let x_993 : f32 = u_xlat42;
    u_xlat42 = clamp(x_993, 0.0f, 1.0f);
    let x_995 : f32 = u_xlat41;
    let x_996 : f32 = u_xlat41;
    u_xlat41 = (x_995 * x_996);
    let x_998 : f32 = u_xlat41;
    let x_1000 : f32 = u_xlat7.x;
    u_xlat41 = ((x_998 * x_1000) + 1.00001001358032226562f);
    let x_1003 : f32 = u_xlat42;
    let x_1004 : f32 = u_xlat42;
    u_xlat42 = (x_1003 * x_1004);
    let x_1006 : f32 = u_xlat41;
    let x_1007 : f32 = u_xlat41;
    u_xlat41 = (x_1006 * x_1007);
    let x_1009 : f32 = u_xlat42;
    u_xlat42 = max(x_1009, 0.10000000149011611938f);
    let x_1011 : f32 = u_xlat41;
    let x_1012 : f32 = u_xlat42;
    u_xlat41 = (x_1011 * x_1012);
    let x_1015 : f32 = u_xlat3.x;
    let x_1016 : f32 = u_xlat41;
    u_xlat41 = (x_1015 * x_1016);
    let x_1019 : f32 = u_xlat4.x;
    let x_1020 : f32 = u_xlat41;
    u_xlat41 = (x_1019 / x_1020);
    let x_1022 : vec4<f32> = u_xlat0;
    let x_1024 : f32 = u_xlat41;
    let x_1027 : vec3<f32> = u_xlat15;
    u_xlat8 = ((vec3<f32>(x_1022.x, x_1022.y, x_1022.z) * vec3<f32>(x_1024, x_1024, x_1024)) + x_1027);
    let x_1029 : vec3<f32> = u_xlat8;
    let x_1030 : vec4<f32> = u_xlat10;
    let x_1033 : vec3<f32> = u_xlat16;
    u_xlat16 = ((x_1029 * vec3<f32>(x_1030.x, x_1030.y, x_1030.z)) + x_1033);

    continuing {
      let x_1035 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1035 + bitcast<u32>(1i));
    }
  }
  let x_1037 : vec3<f32> = u_xlat19;
  let x_1038 : vec4<f32> = u_xlat6;
  let x_1041 : vec3<f32> = u_xlat1;
  let x_1042 : vec3<f32> = ((x_1037 * vec3<f32>(x_1038.x, x_1038.y, x_1038.z)) + x_1041);
  let x_1043 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1042.x, x_1042.y, x_1042.z, x_1043.w);
  let x_1047 : vec3<f32> = u_xlat16;
  let x_1048 : vec4<f32> = u_xlat0;
  let x_1050 : vec3<f32> = (x_1047 + vec3<f32>(x_1048.x, x_1048.y, x_1048.z));
  let x_1051 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1050.x, x_1050.y, x_1050.z, x_1051.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD3_param : vec4<f32>, @location(5) vs_TEXCOORD8_param : vec4<f32>, @location(4) vs_TEXCOORD7_param : vec3<f32>, @location(2) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD5_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


