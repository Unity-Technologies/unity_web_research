struct CB1 {
  InvLowResolution : vec4<f32>,
  InvHighResolution : vec4<f32>,
  AdditionalParams : vec4<f32>,
}

struct S {
  value : array<u32, 1u>,
}

struct S_1 {
  value : array<u32, 1u>,
}

struct S_2 {
  value : array<u32, 1u>,
}

var<private> u_xlati0 : i32;

var<private> gl_LocalInvocationID : vec3<u32>;

var<private> u_xlati8 : vec3<i32>;

var<private> gl_GlobalInvocationID : vec3<u32>;

var<private> u_xlat8 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_65 : CB1;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(3) var LoResAO1 : texture_2d<f32>;

@group(0) @binding(8) var samplerLoResAO1 : sampler;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(4) var LoResAO2 : texture_2d<f32>;

@group(0) @binding(9) var samplerLoResAO2 : sampler;

var<workgroup> TGSM1 : array<S, 256u>;

var<private> u_xlati24 : i32;

var<private> u_xlati17 : vec2<i32>;

@group(0) @binding(1) var LoResDB : texture_2d<f32>;

@group(0) @binding(6) var samplerLoResDB : sampler;

var<workgroup> TGSM0 : array<S_1, 256u>;

var<private> u_xlatb0 : vec2<bool>;

var<private> gl_LocalInvocationIndex : u32;

var<private> u_xlatu0 : u32;

var<private> u_xlatu1 : u32;

var<private> u_xlati16 : i32;

var<private> u_xlat16 : vec2<f32>;

var<private> u_xlati1 : vec4<i32>;

var<private> u_xlat24 : f32;

var<private> u_xlat10 : f32;

var<private> u_xlat18 : vec2<f32>;

var<private> u_xlati3 : vec2<i32>;

var<private> u_xlat26 : f32;

var<private> u_xlat19 : f32;

var<private> u_xlat27 : f32;

var<private> u_xlat4 : f32;

var<private> u_xlat12 : f32;

var<private> u_xlat17 : f32;

var<private> u_xlat25 : f32;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat11 : f32;

var<private> u_xlat20 : f32;

var<private> u_xlat28 : f32;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat13 : f32;

var<private> u_xlat21 : f32;

var<private> u_xlatb11 : bool;

var<private> u_xlatb27 : bool;

var<private> u_xlatb4 : bool;

var<private> u_xlatb17 : bool;

var<private> u_xlatb25 : bool;

var<private> u_xlatb3 : bool;

var<private> u_xlati11 : i32;

var<private> u_xlat7 : f32;

var<private> u_xlat6 : f32;

var<workgroup> TGSM2 : array<S_2, 256u>;

var<private> u_xlatb24 : bool;

var<private> u_xlat9 : f32;

var<private> u_xlati2 : vec4<i32>;

var<private> u_xlatb2 : bool;

var<private> u_xlatb10 : bool;

var<private> u_xlatb18 : vec2<bool>;

var<private> u_xlatb1 : bool;

var<private> u_xlat0 : vec4<f32>;

var<private> u_xlatu2 : vec4<u32>;

@group(0) @binding(2) var HiResDB : texture_2d<f32>;

@group(0) @binding(7) var samplerHiResDB : sampler;

var<private> u_xlati4 : vec4<i32>;

@group(0) @binding(5) var AoResult_origX0X : texture_storage_2d<r32float, write>;

fn main_1() {
  var x_514 : f32;
  var x_524 : f32;
  var x_543 : f32;
  var x_554 : f32;
  var x_565 : f32;
  var x_612 : f32;
  var x_629 : f32;
  var x_639 : f32;
  var x_686 : f32;
  var x_703 : f32;
  var x_1022 : f32;
  var x_1032 : f32;
  var x_1052 : f32;
  var x_1063 : f32;
  var x_1102 : f32;
  var x_1128 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_16 : u32 = gl_LocalInvocationID.x;
  u_xlati0 = (bitcast<i32>(x_16) << bitcast<u32>(1i));
  let x_22 : u32 = gl_LocalInvocationID.y;
  let x_26 : i32 = u_xlati0;
  u_xlati0 = ((bitcast<i32>(x_22) * 32i) + x_26);
  let x_32 : vec3<u32> = gl_LocalInvocationID;
  let x_37 : vec3<u32> = gl_GlobalInvocationID;
  let x_40 : vec2<i32> = (bitcast<vec2<i32>>(vec2<u32>(x_32.x, x_32.y)) + bitcast<vec2<i32>>(vec2<u32>(x_37.x, x_37.y)));
  let x_41 : vec3<i32> = u_xlati8;
  u_xlati8 = vec3<i32>(x_40.x, x_40.y, x_41.z);
  let x_43 : vec3<i32> = u_xlati8;
  let x_47 : vec2<i32> = (vec2<i32>(x_43.x, x_43.y) + vec2<i32>(-2i, -2i));
  let x_48 : vec3<i32> = u_xlati8;
  u_xlati8 = vec3<i32>(x_47.x, x_47.y, x_48.z);
  let x_54 : vec3<i32> = u_xlati8;
  let x_57 : vec2<f32> = vec2<f32>(vec2<i32>(x_54.x, x_54.y));
  let x_58 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_57.x, x_57.y, x_58.z);
  let x_60 : vec3<f32> = u_xlat8;
  let x_69 : vec4<f32> = x_65.InvLowResolution;
  let x_71 : vec2<f32> = (vec2<f32>(x_60.x, x_60.y) * vec2<f32>(x_69.x, x_69.y));
  let x_72 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_71.x, x_71.y, x_72.z);
  let x_86 : vec3<f32> = u_xlat8;
  let x_88 : vec4<f32> = textureGather(0i, LoResAO1, samplerLoResAO1, vec2<f32>(x_86.x, x_86.y));
  u_xlat1 = x_88;
  let x_95 : vec3<f32> = u_xlat8;
  let x_97 : vec4<f32> = textureGather(0i, LoResAO2, samplerLoResAO2, vec2<f32>(x_95.x, x_95.y));
  u_xlat2 = x_97;
  let x_98 : vec4<f32> = u_xlat1;
  let x_99 : vec4<f32> = u_xlat2;
  u_xlat1 = min(x_98, x_99);
  let x_107 : i32 = u_xlati0;
  let x_111 : f32 = u_xlat1.w;
  TGSM1[x_107].value[0i] = bitcast<u32>(x_111);
  let x_116 : i32 = u_xlati0;
  u_xlati24 = (x_116 + 1i);
  let x_118 : i32 = u_xlati24;
  let x_121 : f32 = u_xlat1.z;
  TGSM1[x_118].value[0i] = bitcast<u32>(x_121);
  let x_126 : i32 = u_xlati0;
  u_xlati17 = (vec2<i32>(x_126, x_126) + vec2<i32>(16i, 17i));
  let x_133 : i32 = u_xlati17.x;
  let x_135 : f32 = u_xlat1.x;
  TGSM1[x_133].value[0i] = bitcast<u32>(x_135);
  let x_139 : i32 = u_xlati17.y;
  let x_141 : f32 = u_xlat1.y;
  TGSM1[x_139].value[0i] = bitcast<u32>(x_141);
  let x_149 : vec3<f32> = u_xlat8;
  let x_151 : vec4<f32> = textureGather(0i, LoResDB, samplerLoResDB, vec2<f32>(x_149.x, x_149.y));
  u_xlat2 = x_151;
  let x_154 : vec4<f32> = u_xlat2;
  u_xlat2 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_154);
  let x_160 : i32 = u_xlati0;
  let x_162 : f32 = u_xlat2.w;
  TGSM0[x_160].value[0i] = bitcast<u32>(x_162);
  let x_165 : i32 = u_xlati24;
  let x_167 : f32 = u_xlat2.z;
  TGSM0[x_165].value[0i] = bitcast<u32>(x_167);
  let x_171 : i32 = u_xlati17.x;
  let x_173 : f32 = u_xlat2.x;
  TGSM0[x_171].value[0i] = bitcast<u32>(x_173);
  let x_177 : i32 = u_xlati17.y;
  let x_179 : f32 = u_xlat2.y;
  TGSM0[x_177].value[0i] = bitcast<u32>(x_179);
  workgroupBarrier();
  let x_188 : u32 = gl_LocalInvocationIndex;
  let x_189 : u32 = gl_LocalInvocationIndex;
  let x_190 : u32 = gl_LocalInvocationIndex;
  let x_191 : u32 = gl_LocalInvocationIndex;
  let x_198 : vec4<bool> = (vec4<u32>(x_188, x_189, x_190, x_191) < vec4<u32>(39u, 45u, 0u, 0u));
  u_xlatb0 = vec2<bool>(x_198.x, x_198.y);
  let x_202 : bool = u_xlatb0.x;
  if (x_202) {
    let x_207 : u32 = gl_LocalInvocationIndex;
    u_xlatu0 = (x_207 / 3u);
    let x_210 : u32 = gl_LocalInvocationIndex;
    u_xlatu1 = (x_210 % 3u);
    let x_213 : u32 = u_xlatu1;
    u_xlati16 = (bitcast<i32>(x_213) * 3i);
    let x_217 : u32 = u_xlatu0;
    let x_220 : i32 = u_xlati16;
    u_xlati0 = ((bitcast<i32>(x_217) * 16i) + x_220);
    let x_224 : i32 = u_xlati0;
    let x_226 : u32 = TGSM1[x_224].value[0i];
    u_xlat16.x = bitcast<f32>(x_226);
    let x_232 : i32 = u_xlati0;
    u_xlati1 = (vec4<i32>(x_232, x_232, x_232, x_232) + vec4<i32>(1i, 2i, 3i, 4i));
    let x_240 : i32 = u_xlati1.x;
    let x_242 : u32 = TGSM1[x_240].value[0i];
    u_xlat24 = bitcast<f32>(x_242);
    let x_245 : i32 = u_xlati1.y;
    let x_247 : u32 = TGSM1[x_245].value[0i];
    u_xlat2.x = bitcast<f32>(x_247);
    let x_252 : i32 = u_xlati1.z;
    let x_254 : u32 = TGSM1[x_252].value[0i];
    u_xlat10 = bitcast<f32>(x_254);
    let x_258 : i32 = u_xlati1.w;
    let x_260 : u32 = TGSM1[x_258].value[0i];
    u_xlat18.x = bitcast<f32>(x_260);
    let x_264 : i32 = u_xlati0;
    u_xlati3 = (vec2<i32>(x_264, x_264) + vec2<i32>(5i, 6i));
    let x_272 : i32 = u_xlati3.x;
    let x_274 : u32 = TGSM1[x_272].value[0i];
    u_xlat26 = bitcast<f32>(x_274);
    let x_278 : i32 = u_xlati3.y;
    let x_280 : u32 = TGSM1[x_278].value[0i];
    u_xlat19 = bitcast<f32>(x_280);
    let x_283 : i32 = u_xlati0;
    let x_285 : u32 = TGSM0[x_283].value[0i];
    u_xlat27 = bitcast<f32>(x_285);
    let x_289 : i32 = u_xlati1.x;
    let x_291 : u32 = TGSM0[x_289].value[0i];
    u_xlat4 = bitcast<f32>(x_291);
    let x_295 : i32 = u_xlati1.y;
    let x_297 : u32 = TGSM0[x_295].value[0i];
    u_xlat12 = bitcast<f32>(x_297);
    let x_301 : i32 = u_xlati1.z;
    let x_303 : u32 = TGSM0[x_301].value[0i];
    u_xlat17 = bitcast<f32>(x_303);
    let x_307 : i32 = u_xlati1.w;
    let x_309 : u32 = TGSM0[x_307].value[0i];
    u_xlat25 = bitcast<f32>(x_309);
    let x_313 : i32 = u_xlati3.x;
    let x_315 : u32 = TGSM0[x_313].value[0i];
    u_xlat3.x = bitcast<f32>(x_315);
    let x_320 : i32 = u_xlati3.y;
    let x_322 : u32 = TGSM0[x_320].value[0i];
    u_xlat11 = bitcast<f32>(x_322);
    let x_324 : f32 = u_xlat27;
    let x_326 : f32 = u_xlat4;
    u_xlat27 = (-(x_324) + x_326);
    let x_328 : f32 = u_xlat4;
    let x_330 : f32 = u_xlat12;
    u_xlat4 = (-(x_328) + x_330);
    let x_332 : f32 = u_xlat12;
    let x_334 : f32 = u_xlat17;
    u_xlat12 = (-(x_332) + x_334);
    let x_336 : f32 = u_xlat17;
    let x_338 : f32 = u_xlat25;
    u_xlat17 = (-(x_336) + x_338);
    let x_340 : f32 = u_xlat25;
    let x_343 : f32 = u_xlat3.x;
    u_xlat25 = (-(x_340) + x_343);
    let x_346 : f32 = u_xlat3.x;
    let x_348 : f32 = u_xlat11;
    u_xlat3.x = (-(x_346) + x_348);
    let x_351 : f32 = u_xlat27;
    let x_352 : f32 = u_xlat27;
    let x_356 : f32 = x_65.AdditionalParams.y;
    u_xlat11 = ((x_351 * x_352) + x_356);
    let x_359 : f32 = u_xlat4;
    let x_360 : f32 = u_xlat4;
    let x_363 : f32 = x_65.AdditionalParams.y;
    u_xlat20 = ((x_359 * x_360) + x_363);
    let x_366 : f32 = u_xlat12;
    let x_367 : f32 = u_xlat12;
    let x_370 : f32 = x_65.AdditionalParams.y;
    u_xlat28 = ((x_366 * x_367) + x_370);
    let x_373 : f32 = u_xlat17;
    let x_374 : f32 = u_xlat17;
    let x_377 : f32 = x_65.AdditionalParams.y;
    u_xlat5.x = ((x_373 * x_374) + x_377);
    let x_381 : f32 = u_xlat25;
    let x_382 : f32 = u_xlat25;
    let x_385 : f32 = x_65.AdditionalParams.y;
    u_xlat13 = ((x_381 * x_382) + x_385);
    let x_389 : f32 = u_xlat3.x;
    let x_391 : f32 = u_xlat3.x;
    let x_394 : f32 = x_65.AdditionalParams.y;
    u_xlat21 = ((x_389 * x_391) + x_394);
    let x_396 : f32 = u_xlat27;
    let x_397 : f32 = u_xlat4;
    let x_400 : f32 = x_65.AdditionalParams.y;
    u_xlat27 = ((x_396 * x_397) + x_400);
    let x_402 : f32 = u_xlat27;
    let x_403 : f32 = u_xlat27;
    u_xlat27 = (x_402 * x_403);
    let x_405 : f32 = u_xlat11;
    let x_406 : f32 = u_xlat20;
    u_xlat11 = (x_405 * x_406);
    let x_408 : f32 = u_xlat11;
    let x_410 : f32 = x_65.AdditionalParams.z;
    u_xlat11 = (x_408 * x_410);
    let x_413 : f32 = u_xlat11;
    let x_414 : f32 = u_xlat27;
    u_xlatb11 = (x_413 < x_414);
    let x_416 : f32 = u_xlat4;
    let x_417 : f32 = u_xlat12;
    let x_420 : f32 = x_65.AdditionalParams.y;
    u_xlat27 = ((x_416 * x_417) + x_420);
    let x_422 : f32 = u_xlat27;
    let x_423 : f32 = u_xlat27;
    u_xlat27 = (x_422 * x_423);
    let x_425 : f32 = u_xlat28;
    let x_426 : f32 = u_xlat20;
    u_xlat4 = (x_425 * x_426);
    let x_428 : f32 = u_xlat4;
    let x_430 : f32 = x_65.AdditionalParams.z;
    u_xlat4 = (x_428 * x_430);
    let x_433 : f32 = u_xlat4;
    let x_434 : f32 = u_xlat27;
    u_xlatb27 = (x_433 < x_434);
    let x_436 : f32 = u_xlat12;
    let x_437 : f32 = u_xlat17;
    let x_440 : f32 = x_65.AdditionalParams.y;
    u_xlat4 = ((x_436 * x_437) + x_440);
    let x_442 : f32 = u_xlat4;
    let x_443 : f32 = u_xlat4;
    u_xlat4 = (x_442 * x_443);
    let x_445 : f32 = u_xlat28;
    let x_447 : f32 = u_xlat5.x;
    u_xlat12 = (x_445 * x_447);
    let x_449 : f32 = u_xlat12;
    let x_451 : f32 = x_65.AdditionalParams.z;
    u_xlat12 = (x_449 * x_451);
    let x_454 : f32 = u_xlat12;
    let x_455 : f32 = u_xlat4;
    u_xlatb4 = (x_454 < x_455);
    let x_457 : f32 = u_xlat17;
    let x_458 : f32 = u_xlat25;
    let x_461 : f32 = x_65.AdditionalParams.y;
    u_xlat17 = ((x_457 * x_458) + x_461);
    let x_463 : f32 = u_xlat17;
    let x_464 : f32 = u_xlat17;
    u_xlat17 = (x_463 * x_464);
    let x_466 : f32 = u_xlat13;
    let x_468 : f32 = u_xlat5.x;
    u_xlat12 = (x_466 * x_468);
    let x_470 : f32 = u_xlat12;
    let x_472 : f32 = x_65.AdditionalParams.z;
    u_xlat12 = (x_470 * x_472);
    let x_475 : f32 = u_xlat12;
    let x_476 : f32 = u_xlat17;
    u_xlatb17 = (x_475 < x_476);
    let x_478 : f32 = u_xlat25;
    let x_480 : f32 = u_xlat3.x;
    let x_483 : f32 = x_65.AdditionalParams.y;
    u_xlat25 = ((x_478 * x_480) + x_483);
    let x_485 : f32 = u_xlat25;
    let x_486 : f32 = u_xlat25;
    u_xlat25 = (x_485 * x_486);
    let x_488 : f32 = u_xlat21;
    let x_489 : f32 = u_xlat13;
    u_xlat3.x = (x_488 * x_489);
    let x_493 : f32 = u_xlat3.x;
    let x_495 : f32 = x_65.AdditionalParams.z;
    u_xlat3.x = (x_493 * x_495);
    let x_500 : f32 = u_xlat3.x;
    let x_501 : f32 = u_xlat25;
    u_xlatb25 = (x_500 < x_501);
    let x_504 : bool = u_xlatb27;
    let x_505 : bool = u_xlatb11;
    u_xlatb3 = (x_504 | x_505);
    let x_507 : bool = u_xlatb3;
    u_xlati3.x = select(0i, 1i, x_507);
    let x_511 : i32 = u_xlati3.x;
    if ((x_511 != 0i)) {
      let x_517 : f32 = u_xlat24;
      x_514 = x_517;
    } else {
      let x_520 : f32 = u_xlat2.x;
      x_514 = x_520;
    }
    let x_521 : f32 = x_514;
    u_xlat3.x = x_521;
    let x_523 : bool = u_xlatb11;
    if (x_523) {
      let x_528 : f32 = u_xlat16.x;
      x_524 = x_528;
    } else {
      let x_531 : f32 = u_xlat3.x;
      x_524 = x_531;
    }
    let x_532 : f32 = x_524;
    u_xlat16.x = x_532;
    let x_534 : bool = u_xlatb27;
    let x_535 : bool = u_xlatb4;
    u_xlatb11 = (x_534 | x_535);
    let x_538 : bool = u_xlatb11;
    u_xlati11 = select(0i, 1i, x_538);
    let x_541 : i32 = u_xlati11;
    if ((x_541 != 0i)) {
      let x_547 : f32 = u_xlat2.x;
      x_543 = x_547;
    } else {
      let x_549 : f32 = u_xlat10;
      x_543 = x_549;
    }
    let x_550 : f32 = x_543;
    u_xlat7 = x_550;
    let x_552 : i32 = u_xlati11;
    if ((x_552 != 0i)) {
      let x_557 : f32 = u_xlat10;
      x_554 = x_557;
    } else {
      let x_560 : f32 = u_xlat2.x;
      x_554 = x_560;
    }
    let x_561 : f32 = x_554;
    u_xlat6 = x_561;
    let x_562 : f32 = u_xlat7;
    u_xlat5.x = x_562;
    let x_564 : bool = u_xlatb4;
    if (x_564) {
      let x_569 : f32 = u_xlat18.x;
      x_565 = x_569;
    } else {
      let x_571 : f32 = u_xlat6;
      x_565 = x_571;
    }
    let x_572 : f32 = x_565;
    u_xlat11 = x_572;
    let x_574 : f32 = u_xlat16.x;
    let x_575 : f32 = u_xlat11;
    u_xlat16.x = (x_574 + x_575);
    let x_579 : f32 = u_xlat16.x;
    let x_583 : f32 = u_xlat3.x;
    u_xlat16.x = ((x_579 * 0.5f) + x_583);
    let x_587 : f32 = u_xlat2.x;
    let x_589 : f32 = u_xlat16.x;
    u_xlat16.x = (x_587 + x_589);
    let x_592 : f32 = u_xlat6;
    let x_594 : f32 = u_xlat16.x;
    u_xlat16.x = (x_592 + x_594);
    let x_598 : f32 = u_xlat16.x;
    u_xlat16.x = (x_598 * 0.25f);
    let x_606 : i32 = u_xlati0;
    let x_608 : f32 = u_xlat16.x;
    TGSM2[x_606].value[0i] = bitcast<u32>(x_608);
    let x_611 : bool = u_xlatb27;
    if (x_611) {
      let x_615 : f32 = u_xlat24;
      x_612 = x_615;
    } else {
      let x_618 : f32 = u_xlat5.x;
      x_612 = x_618;
    }
    let x_619 : f32 = x_612;
    u_xlat16.x = x_619;
    let x_622 : bool = u_xlatb4;
    let x_623 : bool = u_xlatb17;
    u_xlatb24 = (x_622 | x_623);
    let x_625 : bool = u_xlatb24;
    u_xlati24 = select(0i, 1i, x_625);
    let x_627 : i32 = u_xlati24;
    if ((x_627 != 0i)) {
      let x_632 : f32 = u_xlat10;
      x_629 = x_632;
    } else {
      let x_635 : f32 = u_xlat18.x;
      x_629 = x_635;
    }
    let x_636 : f32 = x_629;
    u_xlat7 = x_636;
    let x_637 : i32 = u_xlati24;
    if ((x_637 != 0i)) {
      let x_643 : f32 = u_xlat18.x;
      x_639 = x_643;
    } else {
      let x_645 : f32 = u_xlat10;
      x_639 = x_645;
    }
    let x_646 : f32 = x_639;
    u_xlat6 = x_646;
    let x_647 : f32 = u_xlat7;
    u_xlat3.x = x_647;
    let x_649 : bool = u_xlatb17;
    let x_650 : f32 = u_xlat26;
    let x_651 : f32 = u_xlat6;
    u_xlat24 = select(x_651, x_650, x_649);
    let x_653 : f32 = u_xlat24;
    let x_655 : f32 = u_xlat16.x;
    u_xlat16.x = (x_653 + x_655);
    let x_659 : f32 = u_xlat16.x;
    let x_662 : f32 = u_xlat5.x;
    u_xlat16.x = ((x_659 * 0.5f) + x_662);
    let x_665 : f32 = u_xlat10;
    let x_667 : f32 = u_xlat16.x;
    u_xlat16.x = (x_665 + x_667);
    let x_670 : f32 = u_xlat6;
    let x_672 : f32 = u_xlat16.x;
    u_xlat16.x = (x_670 + x_672);
    let x_676 : f32 = u_xlat16.x;
    u_xlat16.x = (x_676 * 0.25f);
    let x_680 : i32 = u_xlati1.x;
    let x_682 : f32 = u_xlat16.x;
    TGSM2[x_680].value[0i] = bitcast<u32>(x_682);
    let x_685 : bool = u_xlatb4;
    if (x_685) {
      let x_690 : f32 = u_xlat2.x;
      x_686 = x_690;
    } else {
      let x_693 : f32 = u_xlat3.x;
      x_686 = x_693;
    }
    let x_694 : f32 = x_686;
    u_xlat16.x = x_694;
    let x_696 : bool = u_xlatb17;
    let x_697 : bool = u_xlatb25;
    u_xlatb24 = (x_696 | x_697);
    let x_699 : bool = u_xlatb24;
    u_xlati24 = select(0i, 1i, x_699);
    let x_701 : i32 = u_xlati24;
    if ((x_701 != 0i)) {
      let x_706 : f32 = u_xlat26;
      x_703 = x_706;
    } else {
      let x_709 : f32 = u_xlat18.x;
      x_703 = x_709;
    }
    let x_710 : f32 = x_703;
    u_xlat24 = x_710;
    let x_711 : bool = u_xlatb25;
    let x_712 : f32 = u_xlat19;
    let x_713 : f32 = u_xlat24;
    u_xlat1.x = select(x_713, x_712, x_711);
    let x_717 : f32 = u_xlat16.x;
    let x_719 : f32 = u_xlat1.x;
    u_xlat16.x = (x_717 + x_719);
    let x_723 : f32 = u_xlat16.x;
    let x_726 : f32 = u_xlat3.x;
    u_xlat16.x = ((x_723 * 0.5f) + x_726);
    let x_730 : f32 = u_xlat18.x;
    let x_732 : f32 = u_xlat16.x;
    u_xlat16.x = (x_730 + x_732);
    let x_735 : f32 = u_xlat24;
    let x_737 : f32 = u_xlat16.x;
    u_xlat16.x = (x_735 + x_737);
    let x_741 : f32 = u_xlat16.x;
    u_xlat16.x = (x_741 * 0.25f);
    let x_745 : i32 = u_xlati1.y;
    let x_747 : f32 = u_xlat16.x;
    TGSM2[x_745].value[0i] = bitcast<u32>(x_747);
  }
  workgroupBarrier();
  let x_751 : bool = u_xlatb0.y;
  if (x_751) {
    let x_754 : u32 = gl_LocalInvocationIndex;
    u_xlatu0 = (x_754 / 9u);
    let x_757 : u32 = gl_LocalInvocationIndex;
    u_xlatu1 = (x_757 % 9u);
    let x_759 : u32 = u_xlatu0;
    let x_762 : u32 = u_xlatu1;
    u_xlati0 = ((bitcast<i32>(x_759) * 32i) + bitcast<i32>(x_762));
    let x_765 : i32 = u_xlati0;
    let x_767 : u32 = TGSM2[x_765].value[0i];
    u_xlat8.x = bitcast<f32>(x_767);
    let x_770 : i32 = u_xlati0;
    u_xlati16 = (x_770 + 16i);
    let x_772 : i32 = u_xlati16;
    let x_774 : u32 = TGSM2[x_772].value[0i];
    u_xlat24 = bitcast<f32>(x_774);
    let x_776 : i32 = u_xlati0;
    u_xlati1 = (vec4<i32>(x_776, x_776, x_776, x_776) + vec4<i32>(32i, 48i, 64i, 80i));
    let x_784 : i32 = u_xlati1.x;
    let x_786 : u32 = TGSM2[x_784].value[0i];
    u_xlat1.x = bitcast<f32>(x_786);
    let x_791 : i32 = u_xlati1.y;
    let x_793 : u32 = TGSM2[x_791].value[0i];
    u_xlat9 = bitcast<f32>(x_793);
    let x_796 : i32 = u_xlati1.z;
    let x_798 : u32 = TGSM2[x_796].value[0i];
    u_xlat17 = bitcast<f32>(x_798);
    let x_801 : i32 = u_xlati1.w;
    let x_803 : u32 = TGSM2[x_801].value[0i];
    u_xlat25 = bitcast<f32>(x_803);
    let x_806 : i32 = u_xlati0;
    u_xlati2 = (vec4<i32>(x_806, x_806, x_806, x_806) + vec4<i32>(2i, 18i, 34i, 50i));
    let x_814 : i32 = u_xlati2.x;
    let x_816 : u32 = TGSM0[x_814].value[0i];
    u_xlat2.x = bitcast<f32>(x_816);
    let x_820 : i32 = u_xlati2.y;
    let x_822 : u32 = TGSM0[x_820].value[0i];
    u_xlat10 = bitcast<f32>(x_822);
    let x_825 : i32 = u_xlati2.z;
    let x_827 : u32 = TGSM0[x_825].value[0i];
    u_xlat18.x = bitcast<f32>(x_827);
    let x_831 : i32 = u_xlati2.w;
    let x_833 : u32 = TGSM0[x_831].value[0i];
    u_xlat26 = bitcast<f32>(x_833);
    let x_835 : i32 = u_xlati0;
    u_xlati3 = (vec2<i32>(x_835, x_835) + vec2<i32>(66i, 82i));
    let x_842 : i32 = u_xlati3.x;
    let x_844 : u32 = TGSM0[x_842].value[0i];
    u_xlat3.x = bitcast<f32>(x_844);
    let x_848 : i32 = u_xlati3.y;
    let x_850 : u32 = TGSM0[x_848].value[0i];
    u_xlat11 = bitcast<f32>(x_850);
    let x_853 : f32 = u_xlat2.x;
    let x_855 : f32 = u_xlat10;
    u_xlat2.x = (-(x_853) + x_855);
    let x_858 : f32 = u_xlat10;
    let x_861 : f32 = u_xlat18.x;
    u_xlat10 = (-(x_858) + x_861);
    let x_864 : f32 = u_xlat18.x;
    let x_866 : f32 = u_xlat26;
    u_xlat18.x = (-(x_864) + x_866);
    let x_869 : f32 = u_xlat26;
    let x_872 : f32 = u_xlat3.x;
    u_xlat26 = (-(x_869) + x_872);
    let x_875 : f32 = u_xlat3.x;
    let x_877 : f32 = u_xlat11;
    u_xlat3.x = (-(x_875) + x_877);
    let x_881 : f32 = u_xlat2.x;
    let x_883 : f32 = u_xlat2.x;
    let x_886 : f32 = x_65.AdditionalParams.y;
    u_xlat11 = ((x_881 * x_883) + x_886);
    let x_888 : f32 = u_xlat10;
    let x_889 : f32 = u_xlat10;
    let x_892 : f32 = x_65.AdditionalParams.y;
    u_xlat19 = ((x_888 * x_889) + x_892);
    let x_895 : f32 = u_xlat18.x;
    let x_897 : f32 = u_xlat18.x;
    let x_900 : f32 = x_65.AdditionalParams.y;
    u_xlat27 = ((x_895 * x_897) + x_900);
    let x_902 : f32 = u_xlat26;
    let x_903 : f32 = u_xlat26;
    let x_906 : f32 = x_65.AdditionalParams.y;
    u_xlat4 = ((x_902 * x_903) + x_906);
    let x_909 : f32 = u_xlat3.x;
    let x_911 : f32 = u_xlat3.x;
    let x_914 : f32 = x_65.AdditionalParams.y;
    u_xlat12 = ((x_909 * x_911) + x_914);
    let x_917 : f32 = u_xlat2.x;
    let x_918 : f32 = u_xlat10;
    let x_921 : f32 = x_65.AdditionalParams.y;
    u_xlat2.x = ((x_917 * x_918) + x_921);
    let x_925 : f32 = u_xlat2.x;
    let x_927 : f32 = u_xlat2.x;
    u_xlat2.x = (x_925 * x_927);
    let x_930 : f32 = u_xlat19;
    let x_931 : f32 = u_xlat11;
    u_xlat11 = (x_930 * x_931);
    let x_933 : f32 = u_xlat11;
    let x_935 : f32 = x_65.AdditionalParams.z;
    u_xlat11 = (x_933 * x_935);
    let x_938 : f32 = u_xlat11;
    let x_940 : f32 = u_xlat2.x;
    u_xlatb2 = (x_938 < x_940);
    let x_942 : f32 = u_xlat10;
    let x_944 : f32 = u_xlat18.x;
    let x_947 : f32 = x_65.AdditionalParams.y;
    u_xlat10 = ((x_942 * x_944) + x_947);
    let x_949 : f32 = u_xlat10;
    let x_950 : f32 = u_xlat10;
    u_xlat10 = (x_949 * x_950);
    let x_952 : f32 = u_xlat27;
    let x_953 : f32 = u_xlat19;
    u_xlat11 = (x_952 * x_953);
    let x_955 : f32 = u_xlat11;
    let x_957 : f32 = x_65.AdditionalParams.z;
    u_xlat11 = (x_955 * x_957);
    let x_960 : f32 = u_xlat11;
    let x_961 : f32 = u_xlat10;
    u_xlatb10 = (x_960 < x_961);
    let x_964 : f32 = u_xlat18.x;
    let x_965 : f32 = u_xlat26;
    let x_968 : f32 = x_65.AdditionalParams.y;
    u_xlat18.x = ((x_964 * x_965) + x_968);
    let x_972 : f32 = u_xlat18.x;
    let x_974 : f32 = u_xlat18.x;
    u_xlat18.x = (x_972 * x_974);
    let x_977 : f32 = u_xlat27;
    let x_978 : f32 = u_xlat4;
    u_xlat11 = (x_977 * x_978);
    let x_980 : f32 = u_xlat11;
    let x_982 : f32 = x_65.AdditionalParams.z;
    u_xlat3.y = (x_980 * x_982);
    let x_985 : f32 = u_xlat26;
    let x_987 : f32 = u_xlat3.x;
    let x_990 : f32 = x_65.AdditionalParams.y;
    u_xlat26 = ((x_985 * x_987) + x_990);
    let x_992 : f32 = u_xlat26;
    let x_993 : f32 = u_xlat26;
    u_xlat18.y = (x_992 * x_993);
    let x_996 : f32 = u_xlat12;
    let x_997 : f32 = u_xlat4;
    u_xlat3.x = (x_996 * x_997);
    let x_1001 : f32 = u_xlat3.x;
    let x_1003 : f32 = x_65.AdditionalParams.z;
    u_xlat3.x = (x_1001 * x_1003);
    let x_1007 : vec4<f32> = u_xlat3;
    let x_1009 : vec2<f32> = u_xlat18;
    let x_1011 : vec4<bool> = (vec4<f32>(x_1007.y, x_1007.x, x_1007.y, x_1007.x) < vec4<f32>(x_1009.x, x_1009.y, x_1009.x, x_1009.y));
    u_xlatb18 = vec2<bool>(x_1011.x, x_1011.y);
    let x_1013 : bool = u_xlatb10;
    let x_1014 : bool = u_xlatb2;
    u_xlatb3 = (x_1013 | x_1014);
    let x_1016 : bool = u_xlatb3;
    u_xlati3.x = select(0i, 1i, x_1016);
    let x_1020 : i32 = u_xlati3.x;
    if ((x_1020 != 0i)) {
      let x_1025 : f32 = u_xlat24;
      x_1022 = x_1025;
    } else {
      let x_1028 : f32 = u_xlat1.x;
      x_1022 = x_1028;
    }
    let x_1029 : f32 = x_1022;
    u_xlat3.x = x_1029;
    let x_1031 : bool = u_xlatb2;
    if (x_1031) {
      let x_1036 : f32 = u_xlat8.x;
      x_1032 = x_1036;
    } else {
      let x_1039 : f32 = u_xlat3.x;
      x_1032 = x_1039;
    }
    let x_1040 : f32 = x_1032;
    u_xlat8.x = x_1040;
    let x_1042 : bool = u_xlatb10;
    let x_1044 : bool = u_xlatb18.x;
    u_xlatb2 = (x_1042 | x_1044);
    let x_1046 : bool = u_xlatb2;
    u_xlati2.x = select(0i, 1i, x_1046);
    let x_1050 : i32 = u_xlati2.x;
    if ((x_1050 != 0i)) {
      let x_1056 : f32 = u_xlat1.x;
      x_1052 = x_1056;
    } else {
      let x_1058 : f32 = u_xlat9;
      x_1052 = x_1058;
    }
    let x_1059 : f32 = x_1052;
    u_xlat7 = x_1059;
    let x_1061 : i32 = u_xlati2.x;
    if ((x_1061 != 0i)) {
      let x_1066 : f32 = u_xlat9;
      x_1063 = x_1066;
    } else {
      let x_1069 : f32 = u_xlat1.x;
      x_1063 = x_1069;
    }
    let x_1070 : f32 = x_1063;
    u_xlat4 = x_1070;
    let x_1071 : f32 = u_xlat7;
    u_xlat2.x = x_1071;
    let x_1074 : bool = u_xlatb18.x;
    let x_1075 : f32 = u_xlat17;
    let x_1076 : f32 = u_xlat4;
    u_xlat11 = select(x_1076, x_1075, x_1074);
    let x_1079 : f32 = u_xlat8.x;
    let x_1080 : f32 = u_xlat11;
    u_xlat8.x = (x_1079 + x_1080);
    let x_1084 : f32 = u_xlat8.x;
    let x_1087 : f32 = u_xlat3.x;
    u_xlat8.x = ((x_1084 * 0.5f) + x_1087);
    let x_1091 : f32 = u_xlat1.x;
    let x_1093 : f32 = u_xlat8.x;
    u_xlat8.x = (x_1091 + x_1093);
    let x_1096 : f32 = u_xlat4;
    let x_1098 : f32 = u_xlat8.x;
    u_xlat8.x = (x_1096 + x_1098);
    let x_1101 : bool = u_xlatb10;
    if (x_1101) {
      let x_1105 : f32 = u_xlat24;
      x_1102 = x_1105;
    } else {
      let x_1108 : f32 = u_xlat2.x;
      x_1102 = x_1108;
    }
    let x_1109 : f32 = x_1102;
    u_xlat24 = x_1109;
    let x_1112 : bool = u_xlatb18.x;
    let x_1114 : bool = u_xlatb18.y;
    u_xlatb1 = (x_1112 | x_1114);
    let x_1116 : bool = u_xlatb1;
    u_xlati1.x = select(0i, 1i, x_1116);
    let x_1120 : i32 = u_xlati1.x;
    let x_1122 : f32 = u_xlat17;
    let x_1123 : f32 = u_xlat9;
    u_xlat1.x = select(x_1123, x_1122, (x_1120 != 0i));
    let x_1127 : bool = u_xlatb18.y;
    if (x_1127) {
      let x_1131 : f32 = u_xlat25;
      x_1128 = x_1131;
    } else {
      let x_1134 : f32 = u_xlat1.x;
      x_1128 = x_1134;
    }
    let x_1135 : f32 = x_1128;
    u_xlat17 = x_1135;
    let x_1136 : f32 = u_xlat24;
    let x_1137 : f32 = u_xlat17;
    u_xlat24 = (x_1136 + x_1137);
    let x_1139 : f32 = u_xlat24;
    let x_1142 : f32 = u_xlat2.x;
    u_xlat24 = ((x_1139 * 0.5f) + x_1142);
    let x_1144 : f32 = u_xlat9;
    let x_1145 : f32 = u_xlat24;
    u_xlat24 = (x_1144 + x_1145);
    let x_1148 : f32 = u_xlat1.x;
    let x_1149 : f32 = u_xlat24;
    u_xlat8.z = (x_1148 + x_1149);
    let x_1152 : vec3<f32> = u_xlat8;
    let x_1155 : vec2<f32> = (vec2<f32>(x_1152.x, x_1152.z) * vec2<f32>(0.25f, 0.25f));
    let x_1156 : vec3<f32> = u_xlat8;
    u_xlat8 = vec3<f32>(x_1155.x, x_1156.y, x_1155.y);
    let x_1158 : i32 = u_xlati0;
    let x_1160 : f32 = u_xlat8.x;
    TGSM1[x_1158].value[0i] = bitcast<u32>(x_1160);
    let x_1163 : i32 = u_xlati16;
    let x_1165 : f32 = u_xlat8.z;
    TGSM1[x_1163].value[0i] = bitcast<u32>(x_1165);
  }
  workgroupBarrier();
  let x_1169 : u32 = gl_LocalInvocationID.y;
  let x_1173 : u32 = gl_LocalInvocationID.x;
  u_xlati0 = ((bitcast<i32>(x_1169) * 16i) + bitcast<i32>(x_1173));
  let x_1176 : i32 = u_xlati0;
  u_xlati8 = (vec3<i32>(x_1176, x_1176, x_1176) + vec3<i32>(16i, 17i, 1i));
  let x_1181 : i32 = u_xlati8.x;
  let x_1183 : u32 = TGSM1[x_1181].value[0i];
  u_xlat1.y = bitcast<f32>(x_1183);
  let x_1187 : i32 = u_xlati8.y;
  let x_1189 : u32 = TGSM1[x_1187].value[0i];
  u_xlat1.z = bitcast<f32>(x_1189);
  let x_1193 : i32 = u_xlati8.z;
  let x_1195 : u32 = TGSM1[x_1193].value[0i];
  u_xlat1.w = bitcast<f32>(x_1195);
  let x_1198 : i32 = u_xlati0;
  let x_1200 : u32 = TGSM1[x_1198].value[0i];
  u_xlat1.x = bitcast<f32>(x_1200);
  let x_1204 : vec3<u32> = gl_GlobalInvocationID;
  let x_1206 : vec2<f32> = vec2<f32>(vec2<u32>(x_1204.x, x_1204.y));
  let x_1207 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1206.x, x_1206.y, x_1207.z, x_1207.w);
  let x_1209 : vec4<f32> = u_xlat0;
  let x_1212 : vec4<f32> = x_65.InvLowResolution;
  let x_1214 : vec2<f32> = (vec2<f32>(x_1209.x, x_1209.y) * vec2<f32>(x_1212.x, x_1212.y));
  let x_1215 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1214.x, x_1214.y, x_1215.z, x_1215.w);
  let x_1219 : vec3<u32> = gl_GlobalInvocationID;
  u_xlatu2 = (vec4<u32>(x_1219.x, x_1219.y, x_1219.y, x_1219.y) << vec4<u32>(1u, 1u, 1u, 1u));
  let x_1223 : vec4<u32> = u_xlatu2;
  u_xlat16 = vec2<f32>(vec2<u32>(x_1223.x, x_1223.w));
  let x_1226 : vec2<f32> = u_xlat16;
  let x_1228 : vec4<f32> = x_65.InvHighResolution;
  u_xlat16 = (x_1226 * vec2<f32>(x_1228.x, x_1228.y));
  let x_1234 : vec4<f32> = u_xlat0;
  let x_1236 : vec4<f32> = textureGather(0i, LoResDB, samplerLoResDB, vec2<f32>(x_1234.x, x_1234.y));
  u_xlat3 = x_1236;
  let x_1242 : vec2<f32> = u_xlat16;
  let x_1243 : vec4<f32> = textureGather(0i, HiResDB, samplerHiResDB, x_1242);
  u_xlat0 = x_1243;
  let x_1245 : vec4<u32> = u_xlatu2;
  u_xlati4 = (bitcast<vec4<i32>>(vec4<u32>(x_1245.x, x_1245.w, x_1245.x, x_1245.w)) + vec4<i32>(-1i, 0i, 0i, -1i));
  let x_1251 : vec4<f32> = u_xlat3;
  let x_1253 : vec4<f32> = u_xlat0;
  u_xlat5 = (-(x_1251) + vec4<f32>(x_1253.x, x_1253.x, x_1253.x, x_1253.x));
  let x_1256 : vec4<f32> = u_xlat5;
  let x_1259 : vec4<f32> = x_65.AdditionalParams;
  u_xlat5 = (abs(x_1256) + vec4<f32>(x_1259.w, x_1259.w, x_1259.w, x_1259.w));
  let x_1265 : vec4<f32> = u_xlat5;
  u_xlat5 = (vec4<f32>(9.0f, 3.0f, 1.0f, 3.0f) / x_1265);
  let x_1267 : vec4<f32> = u_xlat5;
  u_xlat0.x = dot(x_1267, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_1271 : f32 = u_xlat0.x;
  let x_1273 : f32 = x_65.AdditionalParams.x;
  u_xlat0.x = (x_1271 + x_1273);
  let x_1276 : vec4<f32> = u_xlat1;
  let x_1278 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec4<f32>(x_1276.y, x_1276.z, x_1276.w, x_1276.x), x_1278);
  let x_1282 : f32 = u_xlat5.x;
  let x_1284 : f32 = x_65.AdditionalParams.x;
  u_xlat5.x = (x_1282 + x_1284);
  let x_1288 : f32 = u_xlat5.x;
  let x_1290 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1288 / x_1290);
  let x_1297 : vec4<i32> = u_xlati4;
  let x_1299 : vec4<f32> = u_xlat0;
  textureStore(AoResult_origX0X, vec2<i32>(x_1297.x, x_1297.y), vec4<f32>(x_1299.x, x_1299.x, x_1299.x, x_1299.x));
  let x_1301 : vec4<f32> = u_xlat3;
  let x_1304 : vec4<f32> = u_xlat0;
  u_xlat5 = (-(vec4<f32>(x_1301.y, x_1301.z, x_1301.w, x_1301.x)) + vec4<f32>(x_1304.y, x_1304.y, x_1304.y, x_1304.y));
  let x_1307 : vec4<f32> = u_xlat5;
  let x_1310 : vec4<f32> = x_65.AdditionalParams;
  u_xlat5 = (abs(x_1307) + vec4<f32>(x_1310.w, x_1310.w, x_1310.w, x_1310.w));
  let x_1313 : vec4<f32> = u_xlat5;
  u_xlat5 = (vec4<f32>(9.0f, 3.0f, 1.0f, 3.0f) / x_1313);
  let x_1315 : vec4<f32> = u_xlat5;
  u_xlat0.x = dot(x_1315, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_1318 : vec4<f32> = u_xlat1;
  let x_1320 : vec4<f32> = u_xlat5;
  u_xlat0.y = dot(vec4<f32>(x_1318.z, x_1318.w, x_1318.x, x_1318.y), x_1320);
  let x_1323 : vec4<f32> = u_xlat0;
  let x_1326 : vec4<f32> = x_65.AdditionalParams;
  let x_1328 : vec2<f32> = (vec2<f32>(x_1323.x, x_1323.y) + vec2<f32>(x_1326.x, x_1326.x));
  let x_1329 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1328.x, x_1328.y, x_1329.z, x_1329.w);
  let x_1332 : f32 = u_xlat0.y;
  let x_1334 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1332 / x_1334);
  let x_1338 : vec4<u32> = u_xlatu2;
  let x_1341 : vec4<f32> = u_xlat0;
  textureStore(AoResult_origX0X, bitcast<vec2<i32>>(vec2<u32>(x_1338.x, x_1338.w)), vec4<f32>(x_1341.x, x_1341.x, x_1341.x, x_1341.x));
  let x_1343 : vec4<f32> = u_xlat3;
  let x_1346 : vec4<f32> = u_xlat0;
  u_xlat5 = (-(vec4<f32>(x_1343.z, x_1343.w, x_1343.x, x_1343.y)) + vec4<f32>(x_1346.z, x_1346.z, x_1346.z, x_1346.z));
  let x_1349 : vec4<f32> = u_xlat5;
  let x_1352 : vec4<f32> = x_65.AdditionalParams;
  u_xlat5 = (abs(x_1349) + vec4<f32>(x_1352.w, x_1352.w, x_1352.w, x_1352.w));
  let x_1355 : vec4<f32> = u_xlat5;
  u_xlat5 = (vec4<f32>(9.0f, 3.0f, 1.0f, 3.0f) / x_1355);
  let x_1357 : vec4<f32> = u_xlat5;
  u_xlat0.x = dot(x_1357, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_1360 : vec4<f32> = u_xlat1;
  let x_1362 : vec4<f32> = u_xlat5;
  u_xlat0.y = dot(vec4<f32>(x_1360.w, x_1360.x, x_1360.y, x_1360.z), x_1362);
  let x_1365 : vec4<f32> = u_xlat0;
  let x_1368 : vec4<f32> = x_65.AdditionalParams;
  let x_1370 : vec2<f32> = (vec2<f32>(x_1365.x, x_1365.y) + vec2<f32>(x_1368.x, x_1368.x));
  let x_1371 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1370.x, x_1370.y, x_1371.z, x_1371.w);
  let x_1374 : f32 = u_xlat0.y;
  let x_1376 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1374 / x_1376);
  let x_1380 : vec4<i32> = u_xlati4;
  let x_1382 : vec4<f32> = u_xlat0;
  textureStore(AoResult_origX0X, vec2<i32>(x_1380.z, x_1380.w), vec4<f32>(x_1382.x, x_1382.x, x_1382.x, x_1382.x));
  let x_1384 : vec4<u32> = u_xlatu2;
  u_xlati2 = (bitcast<vec4<i32>>(x_1384) + vec4<i32>(-1i, -1i, -1i, -1i));
  let x_1388 : vec4<f32> = u_xlat3;
  let x_1391 : vec4<f32> = u_xlat0;
  u_xlat0 = (-(vec4<f32>(x_1388.w, x_1388.x, x_1388.y, x_1388.z)) + vec4<f32>(x_1391.w, x_1391.w, x_1391.w, x_1391.w));
  let x_1394 : vec4<f32> = u_xlat0;
  let x_1397 : vec4<f32> = x_65.AdditionalParams;
  u_xlat0 = (abs(x_1394) + vec4<f32>(x_1397.w, x_1397.w, x_1397.w, x_1397.w));
  let x_1400 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(9.0f, 3.0f, 1.0f, 3.0f) / x_1400);
  let x_1402 : vec4<f32> = u_xlat0;
  u_xlat3.x = dot(x_1402, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_1406 : f32 = u_xlat3.x;
  let x_1408 : f32 = x_65.AdditionalParams.x;
  u_xlat3.x = (x_1406 + x_1408);
  let x_1411 : vec4<f32> = u_xlat1;
  let x_1412 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(x_1411, x_1412);
  let x_1416 : f32 = u_xlat0.x;
  let x_1418 : f32 = x_65.AdditionalParams.x;
  u_xlat0.x = (x_1416 + x_1418);
  let x_1422 : f32 = u_xlat0.x;
  let x_1424 : f32 = u_xlat3.x;
  u_xlat0.x = (x_1422 / x_1424);
  let x_1428 : vec4<i32> = u_xlati2;
  let x_1430 : vec4<f32> = u_xlat0;
  textureStore(AoResult_origX0X, vec2<i32>(x_1428.x, x_1428.y), vec4<f32>(x_1430.x, x_1430.x, x_1430.x, x_1430.x));
  return;
}

@compute @workgroup_size(8i, 8i, 1i)
fn main(@builtin(local_invocation_id) gl_LocalInvocationID_param : vec3<u32>, @builtin(global_invocation_id) gl_GlobalInvocationID_param : vec3<u32>, @builtin(local_invocation_index) gl_LocalInvocationIndex_param : u32) {
  gl_LocalInvocationID = gl_LocalInvocationID_param;
  gl_GlobalInvocationID = gl_GlobalInvocationID_param;
  gl_LocalInvocationIndex = gl_LocalInvocationIndex_param;
  main_1();
}

