type Arr = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr,
  unity_ProbesOcclusion : vec4<f32>,
  unity_SpecCube0_HDR : vec4<f32>,
  unity_SpecCube1_HDR : vec4<f32>,
  unity_SpecCube0_BoxMax : vec4<f32>,
  unity_SpecCube0_BoxMin : vec4<f32>,
  unity_SpecCube0_ProbePosition : vec4<f32>,
  unity_SpecCube1_BoxMax : vec4<f32>,
  unity_SpecCube1_BoxMin : vec4<f32>,
  unity_SpecCube1_ProbePosition : vec4<f32>,
  unity_LightmapST : vec4<f32>,
  unity_DynamicLightmapST : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_RendererBounds_Min : vec4<f32>,
  unity_RendererBounds_Max : vec4<f32>,
  unity_MatrixPreviousM : mat4x4<f32>,
  unity_MatrixPreviousMI : mat4x4<f32>,
  unity_MotionVectorsParams : vec4<f32>,
  unity_SpriteColor : vec4<f32>,
  unity_SpriteProps : vec4<f32>,
}

struct VGlobals {
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_Exposure : f32,
  @size(12)
  padding : u32,
  x_GroundColor : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_SkyTint : vec3<f32>,
  x_AtmosphereThickness : f32,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_21 : UnityPerDraw;

@group(1) @binding(2) var<uniform> x_62 : VGlobals;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat21 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlatb0 : bool;
  var u_xlat7 : f32;
  var u_xlat14 : f32;
  var u_xlat4 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlat16 : vec2<f32>;
  var u_xlat23 : f32;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = in_POSITION0;
  let x_27 : vec4<f32> = x_21.unity_ObjectToWorld[1i];
  u_xlat0 = (vec3<f32>(x_13.y, x_13.y, x_13.y) * vec3<f32>(x_27.x, x_27.y, x_27.z));
  let x_31 : vec4<f32> = x_21.unity_ObjectToWorld[0i];
  let x_33 : vec4<f32> = in_POSITION0;
  let x_36 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_31.x, x_31.y, x_31.z) * vec3<f32>(x_33.x, x_33.x, x_33.x)) + x_36);
  let x_40 : vec4<f32> = x_21.unity_ObjectToWorld[2i];
  let x_42 : vec4<f32> = in_POSITION0;
  let x_45 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_40.x, x_40.y, x_40.z) * vec3<f32>(x_42.z, x_42.z, x_42.z)) + x_45);
  let x_49 : vec3<f32> = u_xlat0;
  let x_52 : vec4<f32> = x_21.unity_ObjectToWorld[3i];
  let x_54 : vec3<f32> = (x_49 + vec3<f32>(x_52.x, x_52.y, x_52.z));
  let x_55 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_54.x, x_54.y, x_54.z, x_55.w);
  let x_58 : vec4<f32> = u_xlat1;
  let x_64 : vec4<f32> = x_62.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_58.y, x_58.y, x_58.y, x_58.y) * x_64);
  let x_67 : vec4<f32> = x_62.unity_MatrixVP[0i];
  let x_68 : vec4<f32> = u_xlat1;
  let x_71 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_67 * vec4<f32>(x_68.x, x_68.x, x_68.x, x_68.x)) + x_71);
  let x_74 : vec4<f32> = x_62.unity_MatrixVP[2i];
  let x_75 : vec4<f32> = u_xlat1;
  let x_78 : vec4<f32> = u_xlat2;
  u_xlat1 = ((x_74 * vec4<f32>(x_75.z, x_75.z, x_75.z, x_75.z)) + x_78);
  let x_85 : vec4<f32> = u_xlat1;
  let x_87 : vec4<f32> = x_62.unity_MatrixVP[3i];
  gl_Position = (x_85 + x_87);
  let x_95 : f32 = x_62.x_SkyTint.x;
  let x_97 : f32 = x_62.x_SkyTint.y;
  let x_99 : f32 = x_62.x_SkyTint.z;
  let x_102 : f32 = x_62.x_AtmosphereThickness;
  u_xlat1 = log2(abs(vec4<f32>(x_95, x_97, x_99, x_102)));
  let x_106 : vec4<f32> = u_xlat1;
  u_xlat1 = (x_106 * vec4<f32>(0.454545468f, 0.454545468f, 0.454545468f, 2.5f));
  let x_111 : vec4<f32> = u_xlat1;
  u_xlat1 = exp2(x_111);
  let x_113 : vec4<f32> = u_xlat1;
  let x_118 : vec3<f32> = (-(vec3<f32>(x_113.x, x_113.y, x_113.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_119 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_118.x, x_118.y, x_118.z, x_119.w);
  let x_121 : vec4<f32> = u_xlat1;
  let x_131 : vec3<f32> = ((vec3<f32>(x_121.x, x_121.y, x_121.z) * vec3<f32>(0.300000012f, 0.300000042f, 0.300000012f)) + vec3<f32>(0.5f, 0.419999987f, 0.324999988f));
  let x_132 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_131.x, x_131.y, x_131.z, x_132.w);
  let x_134 : vec4<f32> = u_xlat1;
  let x_136 : vec4<f32> = u_xlat1;
  let x_138 : vec3<f32> = (vec3<f32>(x_134.x, x_134.y, x_134.z) * vec3<f32>(x_136.x, x_136.y, x_136.z));
  let x_139 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_138.x, x_138.y, x_138.z, x_139.w);
  let x_141 : vec4<f32> = u_xlat1;
  let x_143 : vec4<f32> = u_xlat1;
  let x_145 : vec3<f32> = (vec3<f32>(x_141.x, x_141.y, x_141.z) * vec3<f32>(x_143.x, x_143.y, x_143.z));
  let x_146 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_145.x, x_145.y, x_145.z, x_146.w);
  let x_148 : vec4<f32> = u_xlat1;
  let x_150 : vec3<f32> = (vec3<f32>(1.0f, 1.0f, 1.0f) / vec3<f32>(x_148.x, x_148.y, x_148.z));
  let x_151 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_150.x, x_150.y, x_150.z, x_151.w);
  let x_154 : vec4<f32> = u_xlat1;
  let x_159 : vec2<f32> = (vec2<f32>(x_154.w, x_154.w) * vec2<f32>(0.049999997f, 0.031415928f));
  let x_160 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_159.x, x_159.y, x_160.z, x_160.w);
  let x_164 : vec3<f32> = u_xlat0;
  let x_165 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_164, x_165);
  let x_167 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_167);
  let x_170 : f32 = u_xlat21;
  let x_172 : vec3<f32> = u_xlat0;
  u_xlat3 = (vec3<f32>(x_170, x_170, x_170) * x_172);
  let x_178 : f32 = u_xlat3.y;
  u_xlatb0 = (x_178 >= 0.0f);
  let x_181 : bool = u_xlatb0;
  if (x_181) {
    let x_185 : f32 = u_xlat3.y;
    let x_187 : f32 = u_xlat3.y;
    u_xlat0.x = ((x_185 * x_187) + 0.050624967f);
    let x_193 : f32 = u_xlat0.x;
    u_xlat0.x = sqrt(x_193);
    let x_197 : f32 = u_xlat0.y;
    let x_199 : f32 = u_xlat21;
    let x_202 : f32 = u_xlat0.x;
    u_xlat0.x = ((-(x_197) * x_199) + x_202);
    let x_207 : f32 = u_xlat3.y;
    u_xlat7 = ((-(x_207) * 1.0f) + 1.0f);
    let x_212 : f32 = u_xlat7;
    u_xlat14 = ((x_212 * 5.25f) + -6.800000191f);
    let x_217 : f32 = u_xlat7;
    let x_218 : f32 = u_xlat14;
    u_xlat14 = ((x_217 * x_218) + 3.829999924f);
    let x_222 : f32 = u_xlat7;
    let x_223 : f32 = u_xlat14;
    u_xlat14 = ((x_222 * x_223) + 0.458999991f);
    let x_227 : f32 = u_xlat7;
    let x_228 : f32 = u_xlat14;
    u_xlat7 = ((x_227 * x_228) + -0.00287f);
    let x_232 : f32 = u_xlat7;
    u_xlat7 = (x_232 * 1.442695022f);
    let x_235 : f32 = u_xlat7;
    u_xlat0.y = exp2(x_235);
    let x_238 : vec3<f32> = u_xlat0;
    u_xlat0 = (vec3<f32>(x_238.x, x_238.y, x_238.x) * vec3<f32>(0.5f, 0.246031836f, 20.0f));
    let x_245 : vec3<f32> = u_xlat0;
    let x_247 : vec3<f32> = u_xlat3;
    u_xlat4 = (vec3<f32>(x_245.x, x_245.x, x_245.x) * x_247);
    let x_249 : vec3<f32> = u_xlat4;
    u_xlat4 = ((x_249 * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(0.0f, 1.000100017f, 0.0f));
    let x_255 : vec3<f32> = u_xlat4;
    let x_256 : vec3<f32> = u_xlat4;
    u_xlat21 = dot(x_255, x_256);
    let x_258 : f32 = u_xlat21;
    u_xlat21 = sqrt(x_258);
    let x_261 : f32 = u_xlat21;
    u_xlat22 = (-(x_261) + 1.0f);
    let x_264 : f32 = u_xlat22;
    u_xlat22 = (x_264 * 230.831207275f);
    let x_267 : f32 = u_xlat22;
    u_xlat22 = exp2(x_267);
    let x_272 : vec4<f32> = x_62.x_MainLightPosition;
    let x_274 : vec3<f32> = u_xlat4;
    u_xlat16.x = dot(vec3<f32>(x_272.x, x_272.y, x_272.z), x_274);
    let x_278 : f32 = u_xlat16.x;
    let x_279 : f32 = u_xlat21;
    u_xlat16.x = (x_278 / x_279);
    let x_283 : vec3<f32> = u_xlat3;
    let x_284 : vec3<f32> = u_xlat4;
    u_xlat23 = dot(x_283, x_284);
    let x_286 : f32 = u_xlat23;
    let x_287 : f32 = u_xlat21;
    u_xlat21 = (x_286 / x_287);
    let x_290 : f32 = u_xlat16.x;
    u_xlat16.x = (-(x_290) + 1.0f);
    let x_295 : f32 = u_xlat16.x;
    u_xlat23 = ((x_295 * 5.25f) + -6.800000191f);
    let x_299 : f32 = u_xlat16.x;
    let x_300 : f32 = u_xlat23;
    u_xlat23 = ((x_299 * x_300) + 3.829999924f);
    let x_304 : f32 = u_xlat16.x;
    let x_305 : f32 = u_xlat23;
    u_xlat23 = ((x_304 * x_305) + 0.458999991f);
    let x_309 : f32 = u_xlat16.x;
    let x_310 : f32 = u_xlat23;
    u_xlat16.x = ((x_309 * x_310) + -0.00287f);
    let x_315 : f32 = u_xlat16.x;
    u_xlat16.x = (x_315 * 1.442695022f);
    let x_319 : f32 = u_xlat16.x;
    u_xlat16.x = exp2(x_319);
    let x_322 : f32 = u_xlat21;
    u_xlat21 = (-(x_322) + 1.0f);
    let x_325 : f32 = u_xlat21;
    u_xlat23 = ((x_325 * 5.25f) + -6.800000191f);
    let x_328 : f32 = u_xlat21;
    let x_329 : f32 = u_xlat23;
    u_xlat23 = ((x_328 * x_329) + 3.829999924f);
    let x_332 : f32 = u_xlat21;
    let x_333 : f32 = u_xlat23;
    u_xlat23 = ((x_332 * x_333) + 0.458999991f);
    let x_336 : f32 = u_xlat21;
    let x_337 : f32 = u_xlat23;
    u_xlat21 = ((x_336 * x_337) + -0.00287f);
    let x_340 : f32 = u_xlat21;
    u_xlat21 = (x_340 * 1.442695022f);
    let x_342 : f32 = u_xlat21;
    u_xlat21 = exp2(x_342);
    let x_344 : f32 = u_xlat21;
    u_xlat21 = (x_344 * 0.25f);
    let x_348 : f32 = u_xlat16.x;
    let x_350 : f32 = u_xlat21;
    u_xlat21 = ((x_348 * 0.25f) + -(x_350));
    let x_353 : f32 = u_xlat22;
    let x_354 : f32 = u_xlat21;
    let x_357 : f32 = u_xlat0.y;
    u_xlat21 = ((x_353 * x_354) + x_357);
    let x_359 : f32 = u_xlat21;
    u_xlat21 = max(x_359, 0.0f);
    let x_361 : f32 = u_xlat21;
    u_xlat21 = min(x_361, 50.0f);
    let x_365 : vec4<f32> = u_xlat1;
    let x_367 : vec4<f32> = u_xlat2;
    let x_372 : vec3<f32> = ((vec3<f32>(x_365.x, x_365.y, x_365.z) * vec3<f32>(x_367.y, x_367.y, x_367.y)) + vec3<f32>(0.012566371f, 0.012566371f, 0.012566371f));
    let x_373 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_372.x, x_372.y, x_372.z, x_373.w);
    let x_376 : f32 = u_xlat21;
    let x_379 : vec4<f32> = u_xlat5;
    u_xlat6 = (-(vec3<f32>(x_376, x_376, x_376)) * vec3<f32>(x_379.x, x_379.y, x_379.z));
    let x_382 : vec3<f32> = u_xlat6;
    u_xlat6 = (x_382 * vec3<f32>(1.442695022f, 1.442695022f, 1.442695022f));
    let x_385 : vec3<f32> = u_xlat6;
    u_xlat6 = exp2(x_385);
    let x_388 : f32 = u_xlat0.z;
    let x_389 : f32 = u_xlat22;
    u_xlat21 = (x_388 * x_389);
    let x_391 : vec3<f32> = u_xlat3;
    let x_392 : vec3<f32> = u_xlat0;
    let x_395 : vec3<f32> = u_xlat4;
    u_xlat4 = ((x_391 * vec3<f32>(x_392.x, x_392.x, x_392.x)) + x_395);
    let x_397 : vec3<f32> = u_xlat4;
    let x_398 : vec3<f32> = u_xlat4;
    u_xlat0.x = dot(x_397, x_398);
    let x_402 : f32 = u_xlat0.x;
    u_xlat0.x = sqrt(x_402);
    let x_406 : f32 = u_xlat0.x;
    u_xlat22 = (-(x_406) + 1.0f);
    let x_409 : f32 = u_xlat22;
    u_xlat22 = (x_409 * 230.831207275f);
    let x_411 : f32 = u_xlat22;
    u_xlat22 = exp2(x_411);
    let x_414 : vec4<f32> = x_62.x_MainLightPosition;
    let x_416 : vec3<f32> = u_xlat4;
    u_xlat16.x = dot(vec3<f32>(x_414.x, x_414.y, x_414.z), x_416);
    let x_420 : f32 = u_xlat16.x;
    let x_422 : f32 = u_xlat0.x;
    u_xlat16.x = (x_420 / x_422);
    let x_425 : vec3<f32> = u_xlat3;
    let x_426 : vec3<f32> = u_xlat4;
    u_xlat23 = dot(x_425, x_426);
    let x_428 : f32 = u_xlat23;
    let x_430 : f32 = u_xlat0.x;
    u_xlat0.x = (x_428 / x_430);
    let x_434 : f32 = u_xlat16.x;
    u_xlat16.x = (-(x_434) + 1.0f);
    let x_439 : f32 = u_xlat16.x;
    u_xlat23 = ((x_439 * 5.25f) + -6.800000191f);
    let x_443 : f32 = u_xlat16.x;
    let x_444 : f32 = u_xlat23;
    u_xlat23 = ((x_443 * x_444) + 3.829999924f);
    let x_448 : f32 = u_xlat16.x;
    let x_449 : f32 = u_xlat23;
    u_xlat23 = ((x_448 * x_449) + 0.458999991f);
    let x_453 : f32 = u_xlat16.x;
    let x_454 : f32 = u_xlat23;
    u_xlat16.x = ((x_453 * x_454) + -0.00287f);
    let x_459 : f32 = u_xlat16.x;
    u_xlat16.x = (x_459 * 1.442695022f);
    let x_463 : f32 = u_xlat16.x;
    u_xlat16.x = exp2(x_463);
    let x_467 : f32 = u_xlat0.x;
    u_xlat0.x = (-(x_467) + 1.0f);
    let x_472 : f32 = u_xlat0.x;
    u_xlat23 = ((x_472 * 5.25f) + -6.800000191f);
    let x_476 : f32 = u_xlat0.x;
    let x_477 : f32 = u_xlat23;
    u_xlat23 = ((x_476 * x_477) + 3.829999924f);
    let x_481 : f32 = u_xlat0.x;
    let x_482 : f32 = u_xlat23;
    u_xlat23 = ((x_481 * x_482) + 0.458999991f);
    let x_486 : f32 = u_xlat0.x;
    let x_487 : f32 = u_xlat23;
    u_xlat0.x = ((x_486 * x_487) + -0.00287f);
    let x_492 : f32 = u_xlat0.x;
    u_xlat0.x = (x_492 * 1.442695022f);
    let x_496 : f32 = u_xlat0.x;
    u_xlat0.x = exp2(x_496);
    let x_500 : f32 = u_xlat0.x;
    u_xlat0.x = (x_500 * 0.25f);
    let x_504 : f32 = u_xlat16.x;
    let x_507 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_504 * 0.25f) + -(x_507));
    let x_511 : f32 = u_xlat22;
    let x_513 : f32 = u_xlat0.x;
    let x_516 : f32 = u_xlat0.y;
    u_xlat0.x = ((x_511 * x_513) + x_516);
    let x_520 : f32 = u_xlat0.x;
    u_xlat0.x = max(x_520, 0.0f);
    let x_524 : f32 = u_xlat0.x;
    u_xlat0.x = min(x_524, 50.0f);
    let x_527 : vec4<f32> = u_xlat5;
    let x_529 : vec3<f32> = u_xlat0;
    u_xlat4 = (vec3<f32>(x_527.x, x_527.y, x_527.z) * -(vec3<f32>(x_529.x, x_529.x, x_529.x)));
    let x_533 : vec3<f32> = u_xlat4;
    u_xlat4 = (x_533 * vec3<f32>(1.442695022f, 1.442695022f, 1.442695022f));
    let x_535 : vec3<f32> = u_xlat4;
    u_xlat4 = exp2(x_535);
    let x_538 : f32 = u_xlat0.z;
    let x_539 : f32 = u_xlat22;
    u_xlat0.x = (x_538 * x_539);
    let x_542 : vec3<f32> = u_xlat0;
    let x_544 : vec3<f32> = u_xlat4;
    u_xlat0 = (vec3<f32>(x_542.x, x_542.x, x_542.x) * x_544);
    let x_546 : vec3<f32> = u_xlat6;
    let x_547 : f32 = u_xlat21;
    let x_550 : vec3<f32> = u_xlat0;
    u_xlat0 = ((x_546 * vec3<f32>(x_547, x_547, x_547)) + x_550);
    let x_552 : vec4<f32> = u_xlat1;
    let x_554 : vec4<f32> = u_xlat2;
    u_xlat4 = (vec3<f32>(x_552.x, x_552.y, x_552.z) * vec3<f32>(x_554.x, x_554.x, x_554.x));
    let x_557 : vec3<f32> = u_xlat0;
    let x_558 : vec3<f32> = u_xlat4;
    u_xlat4 = (x_557 * x_558);
    let x_560 : vec3<f32> = u_xlat0;
    u_xlat0 = (x_560 * vec3<f32>(0.02f, 0.02f, 0.02f));
  } else {
    let x_566 : f32 = u_xlat3.y;
    u_xlat21 = min(x_566, -0.001f);
    let x_570 : f32 = u_xlat21;
    u_xlat21 = (-0.0001f / x_570);
    let x_572 : f32 = u_xlat21;
    let x_574 : vec3<f32> = u_xlat3;
    let x_576 : vec3<f32> = ((vec3<f32>(x_572, x_572, x_572) * x_574) + vec3<f32>(0.0f, 1.000100017f, 0.0f));
    let x_577 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_576.x, x_576.y, x_576.z, x_577.w);
    let x_579 : vec3<f32> = u_xlat3;
    let x_581 : vec4<f32> = u_xlat5;
    u_xlat22 = dot(-(x_579), vec3<f32>(x_581.x, x_581.y, x_581.z));
    let x_585 : vec4<f32> = x_62.x_MainLightPosition;
    let x_587 : vec4<f32> = u_xlat5;
    u_xlat16.x = dot(vec3<f32>(x_585.x, x_585.y, x_585.z), vec3<f32>(x_587.x, x_587.y, x_587.z));
    let x_591 : f32 = u_xlat22;
    u_xlat22 = (-(x_591) + 1.0f);
    let x_594 : f32 = u_xlat22;
    u_xlat23 = ((x_594 * 5.25f) + -6.800000191f);
    let x_597 : f32 = u_xlat22;
    let x_598 : f32 = u_xlat23;
    u_xlat23 = ((x_597 * x_598) + 3.829999924f);
    let x_601 : f32 = u_xlat22;
    let x_602 : f32 = u_xlat23;
    u_xlat23 = ((x_601 * x_602) + 0.458999991f);
    let x_605 : f32 = u_xlat22;
    let x_606 : f32 = u_xlat23;
    u_xlat22 = ((x_605 * x_606) + -0.00287f);
    let x_609 : f32 = u_xlat22;
    u_xlat22 = (x_609 * 1.442695022f);
    let x_611 : f32 = u_xlat22;
    u_xlat22 = exp2(x_611);
    let x_614 : f32 = u_xlat16.x;
    u_xlat16.x = (-(x_614) + 1.0f);
    let x_619 : f32 = u_xlat16.x;
    u_xlat23 = ((x_619 * 5.25f) + -6.800000191f);
    let x_623 : f32 = u_xlat16.x;
    let x_624 : f32 = u_xlat23;
    u_xlat23 = ((x_623 * x_624) + 3.829999924f);
    let x_628 : f32 = u_xlat16.x;
    let x_629 : f32 = u_xlat23;
    u_xlat23 = ((x_628 * x_629) + 0.458999991f);
    let x_633 : f32 = u_xlat16.x;
    let x_634 : f32 = u_xlat23;
    u_xlat16.x = ((x_633 * x_634) + -0.00287f);
    let x_639 : f32 = u_xlat16.x;
    u_xlat16.x = (x_639 * 1.442695022f);
    let x_643 : f32 = u_xlat16.x;
    u_xlat16.x = exp2(x_643);
    let x_646 : f32 = u_xlat22;
    let x_650 : vec2<f32> = (vec2<f32>(x_646, x_646) * vec2<f32>(0.25f, 0.249900013f));
    let x_651 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_650.x, x_650.y, x_651.z, x_651.w);
    let x_654 : f32 = u_xlat16.x;
    let x_657 : f32 = u_xlat5.x;
    u_xlat22 = ((x_654 * 0.25f) + x_657);
    let x_659 : f32 = u_xlat21;
    u_xlat16 = (vec2<f32>(x_659, x_659) * vec2<f32>(0.5f, 20.0f));
    let x_663 : vec2<f32> = u_xlat16;
    let x_665 : vec3<f32> = u_xlat3;
    let x_666 : vec3<f32> = (vec3<f32>(x_663.x, x_663.x, x_663.x) * x_665);
    let x_667 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_666.x, x_667.y, x_666.y, x_666.z);
    let x_669 : vec4<f32> = u_xlat5;
    let x_672 : vec3<f32> = ((vec3<f32>(x_669.x, x_669.z, x_669.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(0.0f, 1.000100017f, 0.0f));
    let x_673 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_672.x, x_673.y, x_672.y, x_672.z);
    let x_675 : vec4<f32> = u_xlat5;
    let x_677 : vec4<f32> = u_xlat5;
    u_xlat21 = dot(vec3<f32>(x_675.x, x_675.z, x_675.w), vec3<f32>(x_677.x, x_677.z, x_677.w));
    let x_680 : f32 = u_xlat21;
    u_xlat21 = sqrt(x_680);
    let x_682 : f32 = u_xlat21;
    u_xlat21 = (-(x_682) + 1.0f);
    let x_685 : f32 = u_xlat21;
    u_xlat21 = (x_685 * 230.831207275f);
    let x_687 : f32 = u_xlat21;
    u_xlat21 = exp2(x_687);
    let x_689 : f32 = u_xlat21;
    let x_690 : f32 = u_xlat22;
    let x_693 : f32 = u_xlat5.y;
    u_xlat22 = ((x_689 * x_690) + -(x_693));
    let x_696 : f32 = u_xlat22;
    u_xlat22 = max(x_696, 0.0f);
    let x_698 : f32 = u_xlat22;
    u_xlat22 = min(x_698, 50.0f);
    let x_700 : vec4<f32> = u_xlat1;
    let x_702 : vec4<f32> = u_xlat2;
    let x_705 : vec3<f32> = ((vec3<f32>(x_700.x, x_700.y, x_700.z) * vec3<f32>(x_702.y, x_702.y, x_702.y)) + vec3<f32>(0.012566371f, 0.012566371f, 0.012566371f));
    let x_706 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_705.x, x_705.y, x_705.z, x_706.w);
    let x_708 : f32 = u_xlat22;
    let x_711 : vec4<f32> = u_xlat5;
    let x_713 : vec3<f32> = (-(vec3<f32>(x_708, x_708, x_708)) * vec3<f32>(x_711.x, x_711.y, x_711.z));
    let x_714 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_713.x, x_713.y, x_713.z, x_714.w);
    let x_716 : vec4<f32> = u_xlat5;
    let x_718 : vec3<f32> = (vec3<f32>(x_716.x, x_716.y, x_716.z) * vec3<f32>(1.442695022f, 1.442695022f, 1.442695022f));
    let x_719 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_718.x, x_718.y, x_718.z, x_719.w);
    let x_721 : vec4<f32> = u_xlat5;
    u_xlat0 = exp2(vec3<f32>(x_721.x, x_721.y, x_721.z));
    let x_725 : f32 = u_xlat16.y;
    let x_726 : f32 = u_xlat21;
    u_xlat21 = (x_725 * x_726);
    let x_729 : f32 = u_xlat21;
    let x_731 : vec3<f32> = u_xlat0;
    u_xlat9 = (vec3<f32>(x_729, x_729, x_729) * x_731);
    let x_733 : vec4<f32> = u_xlat1;
    let x_735 : vec4<f32> = u_xlat2;
    let x_738 : vec3<f32> = ((vec3<f32>(x_733.x, x_733.y, x_733.z) * vec3<f32>(x_735.x, x_735.x, x_735.x)) + vec3<f32>(0.02f, 0.02f, 0.02f));
    let x_739 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_738.x, x_738.y, x_738.z, x_739.w);
    let x_741 : vec4<f32> = u_xlat1;
    let x_743 : vec3<f32> = u_xlat9;
    u_xlat4 = (vec3<f32>(x_741.x, x_741.y, x_741.z) * x_743);
  }
  let x_747 : vec4<f32> = in_POSITION0;
  vs_TEXCOORD0 = -(vec3<f32>(x_747.x, x_747.y, x_747.z));
  let x_752 : f32 = x_62.x_GroundColor.x;
  let x_754 : f32 = x_62.x_GroundColor.y;
  let x_756 : f32 = x_62.x_GroundColor.z;
  let x_758 : vec3<f32> = u_xlat0;
  let x_760 : vec3<f32> = u_xlat4;
  let x_761 : vec3<f32> = ((vec3<f32>(x_752, x_754, x_756) * x_758) + x_760);
  let x_762 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_761.x, x_761.y, x_761.z, x_762.w);
  let x_765 : vec4<f32> = u_xlat1;
  let x_768 : f32 = x_62.x_Exposure;
  vs_TEXCOORD1 = (vec3<f32>(x_765.x, x_765.y, x_765.z) * vec3<f32>(x_768, x_768, x_768));
  let x_772 : vec4<f32> = x_62.x_MainLightPosition;
  let x_774 : vec3<f32> = u_xlat3;
  u_xlat21 = dot(vec3<f32>(x_772.x, x_772.y, x_772.z), -(x_774));
  let x_777 : f32 = u_xlat21;
  let x_778 : f32 = u_xlat21;
  u_xlat21 = (x_777 * x_778);
  let x_780 : f32 = u_xlat21;
  u_xlat21 = ((x_780 * 0.75f) + 0.75f);
  let x_784 : f32 = u_xlat21;
  let x_786 : vec3<f32> = u_xlat4;
  let x_787 : vec3<f32> = (vec3<f32>(x_784, x_784, x_784) * x_786);
  let x_788 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_787.x, x_787.y, x_787.z, x_788.w);
  let x_791 : vec4<f32> = u_xlat1;
  let x_794 : f32 = x_62.x_Exposure;
  vs_TEXCOORD2 = (vec3<f32>(x_791.x, x_791.y, x_791.z) * vec3<f32>(x_794, x_794, x_794));
  let x_798 : vec4<f32> = x_62.x_MainLightColor;
  let x_801 : vec4<f32> = x_62.x_MainLightColor;
  u_xlat21 = dot(vec3<f32>(x_798.x, x_798.y, x_798.z), vec3<f32>(x_801.x, x_801.y, x_801.z));
  let x_804 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_804);
  let x_806 : f32 = u_xlat21;
  u_xlat21 = max(x_806, 0.25f);
  let x_808 : f32 = u_xlat21;
  u_xlat21 = min(x_808, 1.0f);
  let x_810 : vec3<f32> = u_xlat0;
  u_xlat0 = x_810;
  let x_811 : vec3<f32> = u_xlat0;
  u_xlat0 = clamp(x_811, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_815 : vec3<f32> = u_xlat0;
  let x_817 : vec4<f32> = x_62.x_MainLightColor;
  u_xlat0 = (x_815 * vec3<f32>(x_817.x, x_817.y, x_817.z));
  let x_820 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_820 * vec3<f32>(15.0f, 15.0f, 15.0f));
  let x_825 : vec3<f32> = u_xlat0;
  let x_826 : f32 = u_xlat21;
  vs_TEXCOORD3 = (x_825 / vec3<f32>(x_826, x_826, x_826));
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec3<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec3<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec3<f32>,
  @location(3)
  vs_TEXCOORD3_1 : vec3<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3);
}

