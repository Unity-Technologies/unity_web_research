struct VGlobals {
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_LightColor0 : vec4<f32>,
  x_Exposure : f32,
  @size(12)
  padding : u32,
  x_GroundColor : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_SkyTint : vec3<f32>,
  x_AtmosphereThickness : f32,
}

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(0) @binding(1) var<uniform> x_18 : VGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat21 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlatb0 : bool;

var<private> u_xlat7 : f32;

var<private> u_xlat14 : f32;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlat22 : f32;

var<private> u_xlat16 : vec2<f32>;

var<private> u_xlat23 : f32;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat9 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec4<f32> = in_POSITION0;
  let x_23 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_12.y, x_12.y, x_12.y, x_12.y) * x_23);
  let x_27 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_28 : vec4<f32> = in_POSITION0;
  let x_31 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_27 * vec4<f32>(x_28.x, x_28.x, x_28.x, x_28.x)) + x_31);
  let x_35 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_36 : vec4<f32> = in_POSITION0;
  let x_39 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_35 * vec4<f32>(x_36.z, x_36.z, x_36.z, x_36.z)) + x_39);
  let x_42 : vec4<f32> = u_xlat0;
  let x_45 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  u_xlat1 = (x_42 + x_45);
  let x_48 : vec4<f32> = u_xlat1;
  let x_51 : vec4<f32> = x_18.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_48.y, x_48.y, x_48.y, x_48.y) * x_51);
  let x_54 : vec4<f32> = x_18.unity_MatrixVP[0i];
  let x_55 : vec4<f32> = u_xlat1;
  let x_58 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_54 * vec4<f32>(x_55.x, x_55.x, x_55.x, x_55.x)) + x_58);
  let x_61 : vec4<f32> = x_18.unity_MatrixVP[2i];
  let x_62 : vec4<f32> = u_xlat1;
  let x_65 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_61 * vec4<f32>(x_62.z, x_62.z, x_62.z, x_62.z)) + x_65);
  let x_74 : vec4<f32> = x_18.unity_MatrixVP[3i];
  let x_75 : vec4<f32> = u_xlat1;
  let x_78 : vec4<f32> = u_xlat2;
  gl_Position = ((x_74 * vec4<f32>(x_75.w, x_75.w, x_75.w, x_75.w)) + x_78);
  let x_86 : f32 = x_18.x_SkyTint.x;
  let x_88 : f32 = x_18.x_SkyTint.y;
  let x_91 : f32 = x_18.x_SkyTint.z;
  let x_94 : f32 = x_18.x_AtmosphereThickness;
  u_xlat1 = log2(vec4<f32>(x_86, x_88, x_91, x_94));
  let x_97 : vec4<f32> = u_xlat1;
  u_xlat1 = (x_97 * vec4<f32>(0.454545468f, 0.454545468f, 0.454545468f, 2.5f));
  let x_102 : vec4<f32> = u_xlat1;
  u_xlat1 = exp2(x_102);
  let x_104 : vec4<f32> = u_xlat1;
  let x_109 : vec3<f32> = (-(vec3<f32>(x_104.x, x_104.y, x_104.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_110 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_109.x, x_109.y, x_109.z, x_110.w);
  let x_112 : vec4<f32> = u_xlat1;
  let x_122 : vec3<f32> = ((vec3<f32>(x_112.x, x_112.y, x_112.z) * vec3<f32>(0.300000012f, 0.300000042f, 0.300000012f)) + vec3<f32>(0.5f, 0.419999987f, 0.324999988f));
  let x_123 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_122.x, x_122.y, x_122.z, x_123.w);
  let x_125 : vec4<f32> = u_xlat1;
  let x_127 : vec4<f32> = u_xlat1;
  let x_129 : vec3<f32> = (vec3<f32>(x_125.x, x_125.y, x_125.z) * vec3<f32>(x_127.x, x_127.y, x_127.z));
  let x_130 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_129.x, x_129.y, x_129.z, x_130.w);
  let x_132 : vec4<f32> = u_xlat1;
  let x_134 : vec4<f32> = u_xlat1;
  let x_136 : vec3<f32> = (vec3<f32>(x_132.x, x_132.y, x_132.z) * vec3<f32>(x_134.x, x_134.y, x_134.z));
  let x_137 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_136.x, x_136.y, x_136.z, x_137.w);
  let x_139 : vec4<f32> = u_xlat1;
  let x_141 : vec3<f32> = (vec3<f32>(1.0f, 1.0f, 1.0f) / vec3<f32>(x_139.x, x_139.y, x_139.z));
  let x_142 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_141.x, x_141.y, x_141.z, x_142.w);
  let x_145 : vec4<f32> = u_xlat1;
  let x_150 : vec2<f32> = (vec2<f32>(x_145.w, x_145.w) * vec2<f32>(0.049999997f, 0.031415928f));
  let x_151 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_150.x, x_150.y, x_151.z, x_151.w);
  let x_155 : vec4<f32> = u_xlat0;
  let x_157 : vec4<f32> = u_xlat0;
  u_xlat21 = dot(vec3<f32>(x_155.x, x_155.y, x_155.z), vec3<f32>(x_157.x, x_157.y, x_157.z));
  let x_160 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_160);
  let x_164 : f32 = u_xlat21;
  let x_166 : vec4<f32> = u_xlat0;
  u_xlat3 = (vec3<f32>(x_164, x_164, x_164) * vec3<f32>(x_166.x, x_166.y, x_166.z));
  let x_173 : f32 = u_xlat3.y;
  u_xlatb0 = (x_173 >= 0.0f);
  let x_176 : bool = u_xlatb0;
  if (x_176) {
    let x_180 : f32 = u_xlat3.y;
    let x_182 : f32 = u_xlat3.y;
    u_xlat0.x = ((x_180 * x_182) + 0.050624967f);
    let x_188 : f32 = u_xlat0.x;
    u_xlat0.x = sqrt(x_188);
    let x_192 : f32 = u_xlat0.y;
    let x_194 : f32 = u_xlat21;
    let x_197 : f32 = u_xlat0.x;
    u_xlat0.x = ((-(x_192) * x_194) + x_197);
    let x_202 : f32 = u_xlat3.y;
    u_xlat7 = ((-(x_202) * 1.0f) + 1.0f);
    let x_207 : f32 = u_xlat7;
    u_xlat14 = ((x_207 * 5.25f) + -6.800000191f);
    let x_212 : f32 = u_xlat7;
    let x_213 : f32 = u_xlat14;
    u_xlat14 = ((x_212 * x_213) + 3.829999924f);
    let x_217 : f32 = u_xlat7;
    let x_218 : f32 = u_xlat14;
    u_xlat14 = ((x_217 * x_218) + 0.458999991f);
    let x_222 : f32 = u_xlat7;
    let x_223 : f32 = u_xlat14;
    u_xlat7 = ((x_222 * x_223) + -0.00287f);
    let x_227 : f32 = u_xlat7;
    u_xlat7 = (x_227 * 1.442695022f);
    let x_230 : f32 = u_xlat7;
    u_xlat0.y = exp2(x_230);
    let x_233 : vec4<f32> = u_xlat0;
    let x_238 : vec3<f32> = (vec3<f32>(x_233.x, x_233.y, x_233.x) * vec3<f32>(0.5f, 0.246031836f, 20.0f));
    let x_239 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_238.x, x_238.y, x_238.z, x_239.w);
    let x_242 : vec4<f32> = u_xlat0;
    let x_244 : vec3<f32> = u_xlat3;
    u_xlat4 = (vec3<f32>(x_242.x, x_242.x, x_242.x) * x_244);
    let x_246 : vec3<f32> = u_xlat4;
    u_xlat4 = ((x_246 * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(0.0f, 1.000100017f, 0.0f));
    let x_252 : vec3<f32> = u_xlat4;
    let x_253 : vec3<f32> = u_xlat4;
    u_xlat21 = dot(x_252, x_253);
    let x_255 : f32 = u_xlat21;
    u_xlat21 = sqrt(x_255);
    let x_258 : f32 = u_xlat21;
    u_xlat22 = (-(x_258) + 1.0f);
    let x_261 : f32 = u_xlat22;
    u_xlat22 = (x_261 * 230.831207275f);
    let x_264 : f32 = u_xlat22;
    u_xlat22 = exp2(x_264);
    let x_269 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
    let x_271 : vec3<f32> = u_xlat4;
    u_xlat16.x = dot(vec3<f32>(x_269.x, x_269.y, x_269.z), x_271);
    let x_275 : f32 = u_xlat16.x;
    let x_276 : f32 = u_xlat21;
    u_xlat16.x = (x_275 / x_276);
    let x_280 : vec3<f32> = u_xlat3;
    let x_281 : vec3<f32> = u_xlat4;
    u_xlat23 = dot(x_280, x_281);
    let x_283 : f32 = u_xlat23;
    let x_284 : f32 = u_xlat21;
    u_xlat21 = (x_283 / x_284);
    let x_287 : f32 = u_xlat16.x;
    u_xlat16.x = (-(x_287) + 1.0f);
    let x_292 : f32 = u_xlat16.x;
    u_xlat23 = ((x_292 * 5.25f) + -6.800000191f);
    let x_296 : f32 = u_xlat16.x;
    let x_297 : f32 = u_xlat23;
    u_xlat23 = ((x_296 * x_297) + 3.829999924f);
    let x_301 : f32 = u_xlat16.x;
    let x_302 : f32 = u_xlat23;
    u_xlat23 = ((x_301 * x_302) + 0.458999991f);
    let x_306 : f32 = u_xlat16.x;
    let x_307 : f32 = u_xlat23;
    u_xlat16.x = ((x_306 * x_307) + -0.00287f);
    let x_312 : f32 = u_xlat16.x;
    u_xlat16.x = (x_312 * 1.442695022f);
    let x_316 : f32 = u_xlat16.x;
    u_xlat16.x = exp2(x_316);
    let x_319 : f32 = u_xlat21;
    u_xlat21 = (-(x_319) + 1.0f);
    let x_322 : f32 = u_xlat21;
    u_xlat23 = ((x_322 * 5.25f) + -6.800000191f);
    let x_325 : f32 = u_xlat21;
    let x_326 : f32 = u_xlat23;
    u_xlat23 = ((x_325 * x_326) + 3.829999924f);
    let x_329 : f32 = u_xlat21;
    let x_330 : f32 = u_xlat23;
    u_xlat23 = ((x_329 * x_330) + 0.458999991f);
    let x_333 : f32 = u_xlat21;
    let x_334 : f32 = u_xlat23;
    u_xlat21 = ((x_333 * x_334) + -0.00287f);
    let x_337 : f32 = u_xlat21;
    u_xlat21 = (x_337 * 1.442695022f);
    let x_339 : f32 = u_xlat21;
    u_xlat21 = exp2(x_339);
    let x_341 : f32 = u_xlat21;
    u_xlat21 = (x_341 * 0.25f);
    let x_345 : f32 = u_xlat16.x;
    let x_347 : f32 = u_xlat21;
    u_xlat21 = ((x_345 * 0.25f) + -(x_347));
    let x_350 : f32 = u_xlat22;
    let x_351 : f32 = u_xlat21;
    let x_354 : f32 = u_xlat0.y;
    u_xlat21 = ((x_350 * x_351) + x_354);
    let x_356 : f32 = u_xlat21;
    u_xlat21 = max(x_356, 0.0f);
    let x_358 : f32 = u_xlat21;
    u_xlat21 = min(x_358, 50.0f);
    let x_362 : vec4<f32> = u_xlat1;
    let x_364 : vec4<f32> = u_xlat2;
    let x_369 : vec3<f32> = ((vec3<f32>(x_362.x, x_362.y, x_362.z) * vec3<f32>(x_364.y, x_364.y, x_364.y)) + vec3<f32>(0.012566371f, 0.012566371f, 0.012566371f));
    let x_370 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_369.x, x_369.y, x_369.z, x_370.w);
    let x_373 : f32 = u_xlat21;
    let x_376 : vec4<f32> = u_xlat5;
    u_xlat6 = (-(vec3<f32>(x_373, x_373, x_373)) * vec3<f32>(x_376.x, x_376.y, x_376.z));
    let x_379 : vec3<f32> = u_xlat6;
    u_xlat6 = (x_379 * vec3<f32>(1.442695022f, 1.442695022f, 1.442695022f));
    let x_382 : vec3<f32> = u_xlat6;
    u_xlat6 = exp2(x_382);
    let x_385 : f32 = u_xlat0.z;
    let x_386 : f32 = u_xlat22;
    u_xlat21 = (x_385 * x_386);
    let x_388 : vec3<f32> = u_xlat3;
    let x_389 : vec4<f32> = u_xlat0;
    let x_392 : vec3<f32> = u_xlat4;
    u_xlat4 = ((x_388 * vec3<f32>(x_389.x, x_389.x, x_389.x)) + x_392);
    let x_394 : vec3<f32> = u_xlat4;
    let x_395 : vec3<f32> = u_xlat4;
    u_xlat0.x = dot(x_394, x_395);
    let x_399 : f32 = u_xlat0.x;
    u_xlat0.x = sqrt(x_399);
    let x_403 : f32 = u_xlat0.x;
    u_xlat22 = (-(x_403) + 1.0f);
    let x_406 : f32 = u_xlat22;
    u_xlat22 = (x_406 * 230.831207275f);
    let x_408 : f32 = u_xlat22;
    u_xlat22 = exp2(x_408);
    let x_411 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
    let x_413 : vec3<f32> = u_xlat4;
    u_xlat16.x = dot(vec3<f32>(x_411.x, x_411.y, x_411.z), x_413);
    let x_417 : f32 = u_xlat16.x;
    let x_419 : f32 = u_xlat0.x;
    u_xlat16.x = (x_417 / x_419);
    let x_422 : vec3<f32> = u_xlat3;
    let x_423 : vec3<f32> = u_xlat4;
    u_xlat23 = dot(x_422, x_423);
    let x_425 : f32 = u_xlat23;
    let x_427 : f32 = u_xlat0.x;
    u_xlat0.x = (x_425 / x_427);
    let x_431 : f32 = u_xlat16.x;
    u_xlat16.x = (-(x_431) + 1.0f);
    let x_436 : f32 = u_xlat16.x;
    u_xlat23 = ((x_436 * 5.25f) + -6.800000191f);
    let x_440 : f32 = u_xlat16.x;
    let x_441 : f32 = u_xlat23;
    u_xlat23 = ((x_440 * x_441) + 3.829999924f);
    let x_445 : f32 = u_xlat16.x;
    let x_446 : f32 = u_xlat23;
    u_xlat23 = ((x_445 * x_446) + 0.458999991f);
    let x_450 : f32 = u_xlat16.x;
    let x_451 : f32 = u_xlat23;
    u_xlat16.x = ((x_450 * x_451) + -0.00287f);
    let x_456 : f32 = u_xlat16.x;
    u_xlat16.x = (x_456 * 1.442695022f);
    let x_460 : f32 = u_xlat16.x;
    u_xlat16.x = exp2(x_460);
    let x_464 : f32 = u_xlat0.x;
    u_xlat0.x = (-(x_464) + 1.0f);
    let x_469 : f32 = u_xlat0.x;
    u_xlat23 = ((x_469 * 5.25f) + -6.800000191f);
    let x_473 : f32 = u_xlat0.x;
    let x_474 : f32 = u_xlat23;
    u_xlat23 = ((x_473 * x_474) + 3.829999924f);
    let x_478 : f32 = u_xlat0.x;
    let x_479 : f32 = u_xlat23;
    u_xlat23 = ((x_478 * x_479) + 0.458999991f);
    let x_483 : f32 = u_xlat0.x;
    let x_484 : f32 = u_xlat23;
    u_xlat0.x = ((x_483 * x_484) + -0.00287f);
    let x_489 : f32 = u_xlat0.x;
    u_xlat0.x = (x_489 * 1.442695022f);
    let x_493 : f32 = u_xlat0.x;
    u_xlat0.x = exp2(x_493);
    let x_497 : f32 = u_xlat0.x;
    u_xlat0.x = (x_497 * 0.25f);
    let x_501 : f32 = u_xlat16.x;
    let x_504 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_501 * 0.25f) + -(x_504));
    let x_508 : f32 = u_xlat22;
    let x_510 : f32 = u_xlat0.x;
    let x_513 : f32 = u_xlat0.y;
    u_xlat0.x = ((x_508 * x_510) + x_513);
    let x_517 : f32 = u_xlat0.x;
    u_xlat0.x = max(x_517, 0.0f);
    let x_521 : f32 = u_xlat0.x;
    u_xlat0.x = min(x_521, 50.0f);
    let x_524 : vec4<f32> = u_xlat5;
    let x_526 : vec4<f32> = u_xlat0;
    u_xlat4 = (vec3<f32>(x_524.x, x_524.y, x_524.z) * -(vec3<f32>(x_526.x, x_526.x, x_526.x)));
    let x_530 : vec3<f32> = u_xlat4;
    u_xlat4 = (x_530 * vec3<f32>(1.442695022f, 1.442695022f, 1.442695022f));
    let x_532 : vec3<f32> = u_xlat4;
    u_xlat4 = exp2(x_532);
    let x_535 : f32 = u_xlat0.z;
    let x_536 : f32 = u_xlat22;
    u_xlat0.x = (x_535 * x_536);
    let x_539 : vec4<f32> = u_xlat0;
    let x_541 : vec3<f32> = u_xlat4;
    let x_542 : vec3<f32> = (vec3<f32>(x_539.x, x_539.x, x_539.x) * x_541);
    let x_543 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_542.x, x_542.y, x_542.z, x_543.w);
    let x_545 : vec3<f32> = u_xlat6;
    let x_546 : f32 = u_xlat21;
    let x_549 : vec4<f32> = u_xlat0;
    let x_551 : vec3<f32> = ((x_545 * vec3<f32>(x_546, x_546, x_546)) + vec3<f32>(x_549.x, x_549.y, x_549.z));
    let x_552 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_551.x, x_551.y, x_551.z, x_552.w);
    let x_554 : vec4<f32> = u_xlat1;
    let x_556 : vec4<f32> = u_xlat2;
    u_xlat4 = (vec3<f32>(x_554.x, x_554.y, x_554.z) * vec3<f32>(x_556.x, x_556.x, x_556.x));
    let x_559 : vec4<f32> = u_xlat0;
    let x_561 : vec3<f32> = u_xlat4;
    u_xlat4 = (vec3<f32>(x_559.x, x_559.y, x_559.z) * x_561);
    let x_563 : vec4<f32> = u_xlat0;
    let x_567 : vec3<f32> = (vec3<f32>(x_563.x, x_563.y, x_563.z) * vec3<f32>(0.02f, 0.02f, 0.02f));
    let x_568 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_567.x, x_567.y, x_567.z, x_568.w);
  } else {
    let x_572 : f32 = u_xlat3.y;
    u_xlat21 = min(x_572, -0.001f);
    let x_576 : f32 = u_xlat21;
    u_xlat21 = (-0.0001f / x_576);
    let x_578 : f32 = u_xlat21;
    let x_580 : vec3<f32> = u_xlat3;
    let x_582 : vec3<f32> = ((vec3<f32>(x_578, x_578, x_578) * x_580) + vec3<f32>(0.0f, 1.000100017f, 0.0f));
    let x_583 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_582.x, x_582.y, x_582.z, x_583.w);
    let x_585 : vec3<f32> = u_xlat3;
    let x_587 : vec4<f32> = u_xlat5;
    u_xlat22 = dot(-(x_585), vec3<f32>(x_587.x, x_587.y, x_587.z));
    let x_591 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
    let x_593 : vec4<f32> = u_xlat5;
    u_xlat16.x = dot(vec3<f32>(x_591.x, x_591.y, x_591.z), vec3<f32>(x_593.x, x_593.y, x_593.z));
    let x_597 : f32 = u_xlat22;
    u_xlat22 = (-(x_597) + 1.0f);
    let x_600 : f32 = u_xlat22;
    u_xlat23 = ((x_600 * 5.25f) + -6.800000191f);
    let x_603 : f32 = u_xlat22;
    let x_604 : f32 = u_xlat23;
    u_xlat23 = ((x_603 * x_604) + 3.829999924f);
    let x_607 : f32 = u_xlat22;
    let x_608 : f32 = u_xlat23;
    u_xlat23 = ((x_607 * x_608) + 0.458999991f);
    let x_611 : f32 = u_xlat22;
    let x_612 : f32 = u_xlat23;
    u_xlat22 = ((x_611 * x_612) + -0.00287f);
    let x_615 : f32 = u_xlat22;
    u_xlat22 = (x_615 * 1.442695022f);
    let x_617 : f32 = u_xlat22;
    u_xlat22 = exp2(x_617);
    let x_620 : f32 = u_xlat16.x;
    u_xlat16.x = (-(x_620) + 1.0f);
    let x_625 : f32 = u_xlat16.x;
    u_xlat23 = ((x_625 * 5.25f) + -6.800000191f);
    let x_629 : f32 = u_xlat16.x;
    let x_630 : f32 = u_xlat23;
    u_xlat23 = ((x_629 * x_630) + 3.829999924f);
    let x_634 : f32 = u_xlat16.x;
    let x_635 : f32 = u_xlat23;
    u_xlat23 = ((x_634 * x_635) + 0.458999991f);
    let x_639 : f32 = u_xlat16.x;
    let x_640 : f32 = u_xlat23;
    u_xlat16.x = ((x_639 * x_640) + -0.00287f);
    let x_645 : f32 = u_xlat16.x;
    u_xlat16.x = (x_645 * 1.442695022f);
    let x_649 : f32 = u_xlat16.x;
    u_xlat16.x = exp2(x_649);
    let x_652 : f32 = u_xlat22;
    let x_656 : vec2<f32> = (vec2<f32>(x_652, x_652) * vec2<f32>(0.25f, 0.249900013f));
    let x_657 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_656.x, x_656.y, x_657.z, x_657.w);
    let x_660 : f32 = u_xlat16.x;
    let x_663 : f32 = u_xlat5.x;
    u_xlat22 = ((x_660 * 0.25f) + x_663);
    let x_665 : f32 = u_xlat21;
    u_xlat16 = (vec2<f32>(x_665, x_665) * vec2<f32>(0.5f, 20.0f));
    let x_669 : vec2<f32> = u_xlat16;
    let x_671 : vec3<f32> = u_xlat3;
    let x_672 : vec3<f32> = (vec3<f32>(x_669.x, x_669.x, x_669.x) * x_671);
    let x_673 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_672.x, x_673.y, x_672.y, x_672.z);
    let x_675 : vec4<f32> = u_xlat5;
    let x_678 : vec3<f32> = ((vec3<f32>(x_675.x, x_675.z, x_675.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(0.0f, 1.000100017f, 0.0f));
    let x_679 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_678.x, x_679.y, x_678.y, x_678.z);
    let x_681 : vec4<f32> = u_xlat5;
    let x_683 : vec4<f32> = u_xlat5;
    u_xlat21 = dot(vec3<f32>(x_681.x, x_681.z, x_681.w), vec3<f32>(x_683.x, x_683.z, x_683.w));
    let x_686 : f32 = u_xlat21;
    u_xlat21 = sqrt(x_686);
    let x_688 : f32 = u_xlat21;
    u_xlat21 = (-(x_688) + 1.0f);
    let x_691 : f32 = u_xlat21;
    u_xlat21 = (x_691 * 230.831207275f);
    let x_693 : f32 = u_xlat21;
    u_xlat21 = exp2(x_693);
    let x_695 : f32 = u_xlat21;
    let x_696 : f32 = u_xlat22;
    let x_699 : f32 = u_xlat5.y;
    u_xlat22 = ((x_695 * x_696) + -(x_699));
    let x_702 : f32 = u_xlat22;
    u_xlat22 = max(x_702, 0.0f);
    let x_704 : f32 = u_xlat22;
    u_xlat22 = min(x_704, 50.0f);
    let x_706 : vec4<f32> = u_xlat1;
    let x_708 : vec4<f32> = u_xlat2;
    let x_711 : vec3<f32> = ((vec3<f32>(x_706.x, x_706.y, x_706.z) * vec3<f32>(x_708.y, x_708.y, x_708.y)) + vec3<f32>(0.012566371f, 0.012566371f, 0.012566371f));
    let x_712 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_711.x, x_711.y, x_711.z, x_712.w);
    let x_714 : f32 = u_xlat22;
    let x_717 : vec4<f32> = u_xlat5;
    let x_719 : vec3<f32> = (-(vec3<f32>(x_714, x_714, x_714)) * vec3<f32>(x_717.x, x_717.y, x_717.z));
    let x_720 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_719.x, x_719.y, x_719.z, x_720.w);
    let x_722 : vec4<f32> = u_xlat5;
    let x_724 : vec3<f32> = (vec3<f32>(x_722.x, x_722.y, x_722.z) * vec3<f32>(1.442695022f, 1.442695022f, 1.442695022f));
    let x_725 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_724.x, x_724.y, x_724.z, x_725.w);
    let x_727 : vec4<f32> = u_xlat5;
    let x_729 : vec3<f32> = exp2(vec3<f32>(x_727.x, x_727.y, x_727.z));
    let x_730 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_729.x, x_729.y, x_729.z, x_730.w);
    let x_733 : f32 = u_xlat16.y;
    let x_734 : f32 = u_xlat21;
    u_xlat21 = (x_733 * x_734);
    let x_737 : f32 = u_xlat21;
    let x_739 : vec4<f32> = u_xlat0;
    u_xlat9 = (vec3<f32>(x_737, x_737, x_737) * vec3<f32>(x_739.x, x_739.y, x_739.z));
    let x_742 : vec4<f32> = u_xlat1;
    let x_744 : vec4<f32> = u_xlat2;
    let x_747 : vec3<f32> = ((vec3<f32>(x_742.x, x_742.y, x_742.z) * vec3<f32>(x_744.x, x_744.x, x_744.x)) + vec3<f32>(0.02f, 0.02f, 0.02f));
    let x_748 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_747.x, x_747.y, x_747.z, x_748.w);
    let x_750 : vec4<f32> = u_xlat1;
    let x_752 : vec3<f32> = u_xlat9;
    u_xlat4 = (vec3<f32>(x_750.x, x_750.y, x_750.z) * x_752);
  }
  let x_756 : f32 = x_18.x_GroundColor.x;
  let x_758 : f32 = x_18.x_GroundColor.y;
  let x_760 : f32 = x_18.x_GroundColor.z;
  let x_762 : vec4<f32> = u_xlat0;
  let x_765 : vec3<f32> = u_xlat4;
  let x_766 : vec3<f32> = ((vec3<f32>(x_756, x_758, x_760) * vec3<f32>(x_762.x, x_762.y, x_762.z)) + x_765);
  let x_767 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_766.x, x_766.y, x_766.z, x_767.w);
  let x_771 : vec4<f32> = u_xlat1;
  let x_775 : f32 = x_18.x_Exposure;
  vs_TEXCOORD1 = (vec3<f32>(x_771.x, x_771.y, x_771.z) * vec3<f32>(x_775, x_775, x_775));
  let x_779 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_781 : vec3<f32> = u_xlat3;
  u_xlat21 = dot(vec3<f32>(x_779.x, x_779.y, x_779.z), -(x_781));
  let x_784 : f32 = u_xlat21;
  let x_785 : f32 = u_xlat21;
  u_xlat21 = (x_784 * x_785);
  let x_787 : f32 = u_xlat21;
  u_xlat21 = ((x_787 * 0.75f) + 0.75f);
  let x_791 : f32 = u_xlat21;
  let x_793 : vec3<f32> = u_xlat4;
  let x_794 : vec3<f32> = (vec3<f32>(x_791, x_791, x_791) * x_793);
  let x_795 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_794.x, x_794.y, x_794.z, x_795.w);
  let x_798 : vec4<f32> = u_xlat1;
  let x_801 : f32 = x_18.x_Exposure;
  vs_TEXCOORD2 = (vec3<f32>(x_798.x, x_798.y, x_798.z) * vec3<f32>(x_801, x_801, x_801));
  let x_805 : vec4<f32> = x_18.x_LightColor0;
  let x_808 : vec4<f32> = x_18.x_LightColor0;
  u_xlat21 = dot(vec3<f32>(x_805.x, x_805.y, x_805.z), vec3<f32>(x_808.x, x_808.y, x_808.z));
  let x_811 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_811);
  let x_813 : f32 = u_xlat21;
  u_xlat21 = max(x_813, 0.25f);
  let x_815 : f32 = u_xlat21;
  u_xlat21 = min(x_815, 1.0f);
  let x_817 : vec4<f32> = u_xlat0;
  let x_818 : vec3<f32> = vec3<f32>(x_817.x, x_817.y, x_817.z);
  let x_819 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_818.x, x_818.y, x_818.z, x_819.w);
  let x_821 : vec4<f32> = u_xlat0;
  let x_825 : vec3<f32> = clamp(vec3<f32>(x_821.x, x_821.y, x_821.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_826 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_825.x, x_825.y, x_825.z, x_826.w);
  let x_828 : vec4<f32> = u_xlat0;
  let x_831 : vec4<f32> = x_18.x_LightColor0;
  let x_833 : vec3<f32> = (vec3<f32>(x_828.x, x_828.y, x_828.z) * vec3<f32>(x_831.x, x_831.y, x_831.z));
  let x_834 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_833.x, x_833.y, x_833.z, x_834.w);
  let x_836 : vec4<f32> = u_xlat0;
  let x_840 : vec3<f32> = (vec3<f32>(x_836.x, x_836.y, x_836.z) * vec3<f32>(15.0f, 15.0f, 15.0f));
  let x_841 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_840.x, x_840.y, x_840.z, x_841.w);
  let x_844 : vec4<f32> = u_xlat0;
  let x_846 : f32 = u_xlat21;
  vs_TEXCOORD3 = (vec3<f32>(x_844.x, x_844.y, x_844.z) / vec3<f32>(x_846, x_846, x_846));
  let x_850 : vec3<f32> = u_xlat3;
  vs_TEXCOORD0 = -(x_850);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec3<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec3<f32>,
  @location(3)
  vs_TEXCOORD3_1 : vec3<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec3<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD0);
}

