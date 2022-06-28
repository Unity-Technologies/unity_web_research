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

@group(0) @binding(9) var samplerLoResAO1 : sampler;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(4) var LoResAO2 : texture_2d<f32>;

@group(0) @binding(10) var samplerLoResAO2 : sampler;

var<workgroup> TGSM1 : array<S, 256u>;

var<private> u_xlati24 : i32;

var<private> u_xlati17 : vec2<i32>;

@group(0) @binding(1) var LoResDB : texture_2d<f32>;

@group(0) @binding(7) var samplerLoResDB : sampler;

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

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat12 : f32;

var<private> u_xlat17 : f32;

var<private> u_xlat25 : f32;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat11 : f32;

var<private> u_xlat20 : f32;

var<private> u_xlat28 : f32;

var<private> u_xlat5 : f32;

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

var<private> u_xlat6 : vec4<f32>;

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

@group(0) @binding(5) var HiResAO : texture_2d<f32>;

@group(0) @binding(11) var samplerHiResAO : sampler;

@group(0) @binding(2) var HiResDB : texture_2d<f32>;

@group(0) @binding(8) var samplerHiResDB : sampler;

var<private> u_xlati5 : vec4<i32>;

@group(0) @binding(6) var AoResult_origX0X : texture_storage_2d<r32float, write>;

fn main_1() {
  var x_528 : f32;
  var x_538 : f32;
  var x_557 : f32;
  var x_568 : f32;
  var x_579 : f32;
  var x_640 : f32;
  var x_650 : f32;
  var x_662 : f32;
  var x_703 : f32;
  var x_720 : f32;
  var x_1042 : f32;
  var x_1052 : f32;
  var x_1072 : f32;
  var x_1083 : f32;
  var x_1096 : f32;
  var x_1129 : f32;
  var x_1155 : f32;
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
    u_xlat4.x = bitcast<f32>(x_291);
    let x_296 : i32 = u_xlati1.y;
    let x_298 : u32 = TGSM0[x_296].value[0i];
    u_xlat12 = bitcast<f32>(x_298);
    let x_302 : i32 = u_xlati1.z;
    let x_304 : u32 = TGSM0[x_302].value[0i];
    u_xlat17 = bitcast<f32>(x_304);
    let x_308 : i32 = u_xlati1.w;
    let x_310 : u32 = TGSM0[x_308].value[0i];
    u_xlat25 = bitcast<f32>(x_310);
    let x_314 : i32 = u_xlati3.x;
    let x_316 : u32 = TGSM0[x_314].value[0i];
    u_xlat3.x = bitcast<f32>(x_316);
    let x_321 : i32 = u_xlati3.y;
    let x_323 : u32 = TGSM0[x_321].value[0i];
    u_xlat11 = bitcast<f32>(x_323);
    let x_325 : f32 = u_xlat27;
    let x_328 : f32 = u_xlat4.x;
    u_xlat27 = (-(x_325) + x_328);
    let x_331 : f32 = u_xlat4.x;
    let x_333 : f32 = u_xlat12;
    u_xlat4.x = (-(x_331) + x_333);
    let x_336 : f32 = u_xlat12;
    let x_338 : f32 = u_xlat17;
    u_xlat12 = (-(x_336) + x_338);
    let x_340 : f32 = u_xlat17;
    let x_342 : f32 = u_xlat25;
    u_xlat17 = (-(x_340) + x_342);
    let x_344 : f32 = u_xlat25;
    let x_347 : f32 = u_xlat3.x;
    u_xlat25 = (-(x_344) + x_347);
    let x_350 : f32 = u_xlat3.x;
    let x_352 : f32 = u_xlat11;
    u_xlat3.x = (-(x_350) + x_352);
    let x_355 : f32 = u_xlat27;
    let x_356 : f32 = u_xlat27;
    let x_360 : f32 = x_65.AdditionalParams.y;
    u_xlat11 = ((x_355 * x_356) + x_360);
    let x_364 : f32 = u_xlat4.x;
    let x_366 : f32 = u_xlat4.x;
    let x_369 : f32 = x_65.AdditionalParams.y;
    u_xlat20 = ((x_364 * x_366) + x_369);
    let x_372 : f32 = u_xlat12;
    let x_373 : f32 = u_xlat12;
    let x_376 : f32 = x_65.AdditionalParams.y;
    u_xlat28 = ((x_372 * x_373) + x_376);
    let x_379 : f32 = u_xlat17;
    let x_380 : f32 = u_xlat17;
    let x_383 : f32 = x_65.AdditionalParams.y;
    u_xlat5 = ((x_379 * x_380) + x_383);
    let x_386 : f32 = u_xlat25;
    let x_387 : f32 = u_xlat25;
    let x_390 : f32 = x_65.AdditionalParams.y;
    u_xlat13 = ((x_386 * x_387) + x_390);
    let x_394 : f32 = u_xlat3.x;
    let x_396 : f32 = u_xlat3.x;
    let x_399 : f32 = x_65.AdditionalParams.y;
    u_xlat21 = ((x_394 * x_396) + x_399);
    let x_401 : f32 = u_xlat27;
    let x_403 : f32 = u_xlat4.x;
    let x_406 : f32 = x_65.AdditionalParams.y;
    u_xlat27 = ((x_401 * x_403) + x_406);
    let x_408 : f32 = u_xlat27;
    let x_409 : f32 = u_xlat27;
    u_xlat27 = (x_408 * x_409);
    let x_411 : f32 = u_xlat11;
    let x_412 : f32 = u_xlat20;
    u_xlat11 = (x_411 * x_412);
    let x_414 : f32 = u_xlat11;
    let x_416 : f32 = x_65.AdditionalParams.z;
    u_xlat11 = (x_414 * x_416);
    let x_419 : f32 = u_xlat11;
    let x_420 : f32 = u_xlat27;
    u_xlatb11 = (x_419 < x_420);
    let x_423 : f32 = u_xlat4.x;
    let x_424 : f32 = u_xlat12;
    let x_427 : f32 = x_65.AdditionalParams.y;
    u_xlat27 = ((x_423 * x_424) + x_427);
    let x_429 : f32 = u_xlat27;
    let x_430 : f32 = u_xlat27;
    u_xlat27 = (x_429 * x_430);
    let x_432 : f32 = u_xlat28;
    let x_433 : f32 = u_xlat20;
    u_xlat4.x = (x_432 * x_433);
    let x_437 : f32 = u_xlat4.x;
    let x_439 : f32 = x_65.AdditionalParams.z;
    u_xlat4.x = (x_437 * x_439);
    let x_444 : f32 = u_xlat4.x;
    let x_445 : f32 = u_xlat27;
    u_xlatb27 = (x_444 < x_445);
    let x_447 : f32 = u_xlat12;
    let x_448 : f32 = u_xlat17;
    let x_451 : f32 = x_65.AdditionalParams.y;
    u_xlat4.x = ((x_447 * x_448) + x_451);
    let x_455 : f32 = u_xlat4.x;
    let x_457 : f32 = u_xlat4.x;
    u_xlat4.x = (x_455 * x_457);
    let x_460 : f32 = u_xlat28;
    let x_461 : f32 = u_xlat5;
    u_xlat12 = (x_460 * x_461);
    let x_463 : f32 = u_xlat12;
    let x_465 : f32 = x_65.AdditionalParams.z;
    u_xlat12 = (x_463 * x_465);
    let x_468 : f32 = u_xlat12;
    let x_470 : f32 = u_xlat4.x;
    u_xlatb4 = (x_468 < x_470);
    let x_472 : f32 = u_xlat17;
    let x_473 : f32 = u_xlat25;
    let x_476 : f32 = x_65.AdditionalParams.y;
    u_xlat17 = ((x_472 * x_473) + x_476);
    let x_478 : f32 = u_xlat17;
    let x_479 : f32 = u_xlat17;
    u_xlat17 = (x_478 * x_479);
    let x_481 : f32 = u_xlat13;
    let x_482 : f32 = u_xlat5;
    u_xlat12 = (x_481 * x_482);
    let x_484 : f32 = u_xlat12;
    let x_486 : f32 = x_65.AdditionalParams.z;
    u_xlat12 = (x_484 * x_486);
    let x_489 : f32 = u_xlat12;
    let x_490 : f32 = u_xlat17;
    u_xlatb17 = (x_489 < x_490);
    let x_492 : f32 = u_xlat25;
    let x_494 : f32 = u_xlat3.x;
    let x_497 : f32 = x_65.AdditionalParams.y;
    u_xlat25 = ((x_492 * x_494) + x_497);
    let x_499 : f32 = u_xlat25;
    let x_500 : f32 = u_xlat25;
    u_xlat25 = (x_499 * x_500);
    let x_502 : f32 = u_xlat21;
    let x_503 : f32 = u_xlat13;
    u_xlat3.x = (x_502 * x_503);
    let x_507 : f32 = u_xlat3.x;
    let x_509 : f32 = x_65.AdditionalParams.z;
    u_xlat3.x = (x_507 * x_509);
    let x_514 : f32 = u_xlat3.x;
    let x_515 : f32 = u_xlat25;
    u_xlatb25 = (x_514 < x_515);
    let x_518 : bool = u_xlatb27;
    let x_519 : bool = u_xlatb11;
    u_xlatb3 = (x_518 | x_519);
    let x_521 : bool = u_xlatb3;
    u_xlati3.x = select(0i, 1i, x_521);
    let x_525 : i32 = u_xlati3.x;
    if ((x_525 != 0i)) {
      let x_531 : f32 = u_xlat24;
      x_528 = x_531;
    } else {
      let x_534 : f32 = u_xlat2.x;
      x_528 = x_534;
    }
    let x_535 : f32 = x_528;
    u_xlat3.x = x_535;
    let x_537 : bool = u_xlatb11;
    if (x_537) {
      let x_542 : f32 = u_xlat16.x;
      x_538 = x_542;
    } else {
      let x_545 : f32 = u_xlat3.x;
      x_538 = x_545;
    }
    let x_546 : f32 = x_538;
    u_xlat16.x = x_546;
    let x_548 : bool = u_xlatb27;
    let x_549 : bool = u_xlatb4;
    u_xlatb11 = (x_548 | x_549);
    let x_552 : bool = u_xlatb11;
    u_xlati11 = select(0i, 1i, x_552);
    let x_555 : i32 = u_xlati11;
    if ((x_555 != 0i)) {
      let x_561 : f32 = u_xlat2.x;
      x_557 = x_561;
    } else {
      let x_563 : f32 = u_xlat10;
      x_557 = x_563;
    }
    let x_564 : f32 = x_557;
    u_xlat7 = x_564;
    let x_566 : i32 = u_xlati11;
    if ((x_566 != 0i)) {
      let x_571 : f32 = u_xlat10;
      x_568 = x_571;
    } else {
      let x_574 : f32 = u_xlat2.x;
      x_568 = x_574;
    }
    let x_575 : f32 = x_568;
    u_xlat6.x = x_575;
    let x_577 : f32 = u_xlat7;
    u_xlat5 = x_577;
    let x_578 : bool = u_xlatb4;
    if (x_578) {
      let x_583 : f32 = u_xlat18.x;
      x_579 = x_583;
    } else {
      let x_586 : f32 = u_xlat6.x;
      x_579 = x_586;
    }
    let x_587 : f32 = x_579;
    u_xlat11 = x_587;
    let x_589 : f32 = u_xlat16.x;
    let x_590 : f32 = u_xlat11;
    u_xlat16.x = (x_589 + x_590);
    let x_594 : f32 = u_xlat16.x;
    let x_598 : f32 = u_xlat3.x;
    u_xlat16.x = ((x_594 * 0.5f) + x_598);
    let x_602 : f32 = u_xlat2.x;
    let x_604 : f32 = u_xlat16.x;
    u_xlat16.x = (x_602 + x_604);
    let x_608 : f32 = u_xlat6.x;
    let x_610 : f32 = u_xlat16.x;
    u_xlat16.x = (x_608 + x_610);
    let x_614 : f32 = u_xlat16.x;
    u_xlat16.x = (x_614 * 0.25f);
    let x_622 : i32 = u_xlati0;
    let x_624 : f32 = u_xlat16.x;
    TGSM2[x_622].value[0i] = bitcast<u32>(x_624);
    let x_627 : bool = u_xlatb27;
    let x_628 : f32 = u_xlat24;
    let x_629 : f32 = u_xlat5;
    u_xlat16.x = select(x_629, x_628, x_627);
    let x_633 : bool = u_xlatb4;
    let x_634 : bool = u_xlatb17;
    u_xlatb24 = (x_633 | x_634);
    let x_636 : bool = u_xlatb24;
    u_xlati24 = select(0i, 1i, x_636);
    let x_638 : i32 = u_xlati24;
    if ((x_638 != 0i)) {
      let x_643 : f32 = u_xlat10;
      x_640 = x_643;
    } else {
      let x_646 : f32 = u_xlat18.x;
      x_640 = x_646;
    }
    let x_647 : f32 = x_640;
    u_xlat7 = x_647;
    let x_648 : i32 = u_xlati24;
    if ((x_648 != 0i)) {
      let x_654 : f32 = u_xlat18.x;
      x_650 = x_654;
    } else {
      let x_656 : f32 = u_xlat10;
      x_650 = x_656;
    }
    let x_657 : f32 = x_650;
    u_xlat6.x = x_657;
    let x_659 : f32 = u_xlat7;
    u_xlat3.x = x_659;
    let x_661 : bool = u_xlatb17;
    if (x_661) {
      let x_665 : f32 = u_xlat26;
      x_662 = x_665;
    } else {
      let x_668 : f32 = u_xlat6.x;
      x_662 = x_668;
    }
    let x_669 : f32 = x_662;
    u_xlat24 = x_669;
    let x_670 : f32 = u_xlat24;
    let x_672 : f32 = u_xlat16.x;
    u_xlat16.x = (x_670 + x_672);
    let x_676 : f32 = u_xlat16.x;
    let x_678 : f32 = u_xlat5;
    u_xlat16.x = ((x_676 * 0.5f) + x_678);
    let x_681 : f32 = u_xlat10;
    let x_683 : f32 = u_xlat16.x;
    u_xlat16.x = (x_681 + x_683);
    let x_687 : f32 = u_xlat6.x;
    let x_689 : f32 = u_xlat16.x;
    u_xlat16.x = (x_687 + x_689);
    let x_693 : f32 = u_xlat16.x;
    u_xlat16.x = (x_693 * 0.25f);
    let x_697 : i32 = u_xlati1.x;
    let x_699 : f32 = u_xlat16.x;
    TGSM2[x_697].value[0i] = bitcast<u32>(x_699);
    let x_702 : bool = u_xlatb4;
    if (x_702) {
      let x_707 : f32 = u_xlat2.x;
      x_703 = x_707;
    } else {
      let x_710 : f32 = u_xlat3.x;
      x_703 = x_710;
    }
    let x_711 : f32 = x_703;
    u_xlat16.x = x_711;
    let x_713 : bool = u_xlatb17;
    let x_714 : bool = u_xlatb25;
    u_xlatb24 = (x_713 | x_714);
    let x_716 : bool = u_xlatb24;
    u_xlati24 = select(0i, 1i, x_716);
    let x_718 : i32 = u_xlati24;
    if ((x_718 != 0i)) {
      let x_723 : f32 = u_xlat26;
      x_720 = x_723;
    } else {
      let x_726 : f32 = u_xlat18.x;
      x_720 = x_726;
    }
    let x_727 : f32 = x_720;
    u_xlat24 = x_727;
    let x_728 : bool = u_xlatb25;
    let x_729 : f32 = u_xlat19;
    let x_730 : f32 = u_xlat24;
    u_xlat1.x = select(x_730, x_729, x_728);
    let x_734 : f32 = u_xlat16.x;
    let x_736 : f32 = u_xlat1.x;
    u_xlat16.x = (x_734 + x_736);
    let x_740 : f32 = u_xlat16.x;
    let x_743 : f32 = u_xlat3.x;
    u_xlat16.x = ((x_740 * 0.5f) + x_743);
    let x_747 : f32 = u_xlat18.x;
    let x_749 : f32 = u_xlat16.x;
    u_xlat16.x = (x_747 + x_749);
    let x_752 : f32 = u_xlat24;
    let x_754 : f32 = u_xlat16.x;
    u_xlat16.x = (x_752 + x_754);
    let x_758 : f32 = u_xlat16.x;
    u_xlat16.x = (x_758 * 0.25f);
    let x_762 : i32 = u_xlati1.y;
    let x_764 : f32 = u_xlat16.x;
    TGSM2[x_762].value[0i] = bitcast<u32>(x_764);
  }
  workgroupBarrier();
  let x_768 : bool = u_xlatb0.y;
  if (x_768) {
    let x_771 : u32 = gl_LocalInvocationIndex;
    u_xlatu0 = (x_771 / 9u);
    let x_774 : u32 = gl_LocalInvocationIndex;
    u_xlatu1 = (x_774 % 9u);
    let x_776 : u32 = u_xlatu0;
    let x_779 : u32 = u_xlatu1;
    u_xlati0 = ((bitcast<i32>(x_776) * 32i) + bitcast<i32>(x_779));
    let x_782 : i32 = u_xlati0;
    let x_784 : u32 = TGSM2[x_782].value[0i];
    u_xlat8.x = bitcast<f32>(x_784);
    let x_787 : i32 = u_xlati0;
    u_xlati16 = (x_787 + 16i);
    let x_789 : i32 = u_xlati16;
    let x_791 : u32 = TGSM2[x_789].value[0i];
    u_xlat24 = bitcast<f32>(x_791);
    let x_793 : i32 = u_xlati0;
    u_xlati1 = (vec4<i32>(x_793, x_793, x_793, x_793) + vec4<i32>(32i, 48i, 64i, 80i));
    let x_801 : i32 = u_xlati1.x;
    let x_803 : u32 = TGSM2[x_801].value[0i];
    u_xlat1.x = bitcast<f32>(x_803);
    let x_808 : i32 = u_xlati1.y;
    let x_810 : u32 = TGSM2[x_808].value[0i];
    u_xlat9 = bitcast<f32>(x_810);
    let x_813 : i32 = u_xlati1.z;
    let x_815 : u32 = TGSM2[x_813].value[0i];
    u_xlat17 = bitcast<f32>(x_815);
    let x_818 : i32 = u_xlati1.w;
    let x_820 : u32 = TGSM2[x_818].value[0i];
    u_xlat25 = bitcast<f32>(x_820);
    let x_823 : i32 = u_xlati0;
    u_xlati2 = (vec4<i32>(x_823, x_823, x_823, x_823) + vec4<i32>(2i, 18i, 34i, 50i));
    let x_831 : i32 = u_xlati2.x;
    let x_833 : u32 = TGSM0[x_831].value[0i];
    u_xlat2.x = bitcast<f32>(x_833);
    let x_837 : i32 = u_xlati2.y;
    let x_839 : u32 = TGSM0[x_837].value[0i];
    u_xlat10 = bitcast<f32>(x_839);
    let x_842 : i32 = u_xlati2.z;
    let x_844 : u32 = TGSM0[x_842].value[0i];
    u_xlat18.x = bitcast<f32>(x_844);
    let x_848 : i32 = u_xlati2.w;
    let x_850 : u32 = TGSM0[x_848].value[0i];
    u_xlat26 = bitcast<f32>(x_850);
    let x_852 : i32 = u_xlati0;
    u_xlati3 = (vec2<i32>(x_852, x_852) + vec2<i32>(66i, 82i));
    let x_859 : i32 = u_xlati3.x;
    let x_861 : u32 = TGSM0[x_859].value[0i];
    u_xlat3.x = bitcast<f32>(x_861);
    let x_865 : i32 = u_xlati3.y;
    let x_867 : u32 = TGSM0[x_865].value[0i];
    u_xlat11 = bitcast<f32>(x_867);
    let x_870 : f32 = u_xlat2.x;
    let x_872 : f32 = u_xlat10;
    u_xlat2.x = (-(x_870) + x_872);
    let x_875 : f32 = u_xlat10;
    let x_878 : f32 = u_xlat18.x;
    u_xlat10 = (-(x_875) + x_878);
    let x_881 : f32 = u_xlat18.x;
    let x_883 : f32 = u_xlat26;
    u_xlat18.x = (-(x_881) + x_883);
    let x_886 : f32 = u_xlat26;
    let x_889 : f32 = u_xlat3.x;
    u_xlat26 = (-(x_886) + x_889);
    let x_892 : f32 = u_xlat3.x;
    let x_894 : f32 = u_xlat11;
    u_xlat3.x = (-(x_892) + x_894);
    let x_898 : f32 = u_xlat2.x;
    let x_900 : f32 = u_xlat2.x;
    let x_903 : f32 = x_65.AdditionalParams.y;
    u_xlat11 = ((x_898 * x_900) + x_903);
    let x_905 : f32 = u_xlat10;
    let x_906 : f32 = u_xlat10;
    let x_909 : f32 = x_65.AdditionalParams.y;
    u_xlat19 = ((x_905 * x_906) + x_909);
    let x_912 : f32 = u_xlat18.x;
    let x_914 : f32 = u_xlat18.x;
    let x_917 : f32 = x_65.AdditionalParams.y;
    u_xlat27 = ((x_912 * x_914) + x_917);
    let x_919 : f32 = u_xlat26;
    let x_920 : f32 = u_xlat26;
    let x_923 : f32 = x_65.AdditionalParams.y;
    u_xlat4.x = ((x_919 * x_920) + x_923);
    let x_927 : f32 = u_xlat3.x;
    let x_929 : f32 = u_xlat3.x;
    let x_932 : f32 = x_65.AdditionalParams.y;
    u_xlat12 = ((x_927 * x_929) + x_932);
    let x_935 : f32 = u_xlat2.x;
    let x_936 : f32 = u_xlat10;
    let x_939 : f32 = x_65.AdditionalParams.y;
    u_xlat2.x = ((x_935 * x_936) + x_939);
    let x_943 : f32 = u_xlat2.x;
    let x_945 : f32 = u_xlat2.x;
    u_xlat2.x = (x_943 * x_945);
    let x_948 : f32 = u_xlat19;
    let x_949 : f32 = u_xlat11;
    u_xlat11 = (x_948 * x_949);
    let x_951 : f32 = u_xlat11;
    let x_953 : f32 = x_65.AdditionalParams.z;
    u_xlat11 = (x_951 * x_953);
    let x_956 : f32 = u_xlat11;
    let x_958 : f32 = u_xlat2.x;
    u_xlatb2 = (x_956 < x_958);
    let x_960 : f32 = u_xlat10;
    let x_962 : f32 = u_xlat18.x;
    let x_965 : f32 = x_65.AdditionalParams.y;
    u_xlat10 = ((x_960 * x_962) + x_965);
    let x_967 : f32 = u_xlat10;
    let x_968 : f32 = u_xlat10;
    u_xlat10 = (x_967 * x_968);
    let x_970 : f32 = u_xlat27;
    let x_971 : f32 = u_xlat19;
    u_xlat11 = (x_970 * x_971);
    let x_973 : f32 = u_xlat11;
    let x_975 : f32 = x_65.AdditionalParams.z;
    u_xlat11 = (x_973 * x_975);
    let x_978 : f32 = u_xlat11;
    let x_979 : f32 = u_xlat10;
    u_xlatb10 = (x_978 < x_979);
    let x_982 : f32 = u_xlat18.x;
    let x_983 : f32 = u_xlat26;
    let x_986 : f32 = x_65.AdditionalParams.y;
    u_xlat18.x = ((x_982 * x_983) + x_986);
    let x_990 : f32 = u_xlat18.x;
    let x_992 : f32 = u_xlat18.x;
    u_xlat18.x = (x_990 * x_992);
    let x_995 : f32 = u_xlat27;
    let x_997 : f32 = u_xlat4.x;
    u_xlat11 = (x_995 * x_997);
    let x_999 : f32 = u_xlat11;
    let x_1001 : f32 = x_65.AdditionalParams.z;
    u_xlat3.y = (x_999 * x_1001);
    let x_1004 : f32 = u_xlat26;
    let x_1006 : f32 = u_xlat3.x;
    let x_1009 : f32 = x_65.AdditionalParams.y;
    u_xlat26 = ((x_1004 * x_1006) + x_1009);
    let x_1011 : f32 = u_xlat26;
    let x_1012 : f32 = u_xlat26;
    u_xlat18.y = (x_1011 * x_1012);
    let x_1015 : f32 = u_xlat12;
    let x_1017 : f32 = u_xlat4.x;
    u_xlat3.x = (x_1015 * x_1017);
    let x_1021 : f32 = u_xlat3.x;
    let x_1023 : f32 = x_65.AdditionalParams.z;
    u_xlat3.x = (x_1021 * x_1023);
    let x_1027 : vec4<f32> = u_xlat3;
    let x_1029 : vec2<f32> = u_xlat18;
    let x_1031 : vec4<bool> = (vec4<f32>(x_1027.y, x_1027.x, x_1027.y, x_1027.x) < vec4<f32>(x_1029.x, x_1029.y, x_1029.x, x_1029.y));
    u_xlatb18 = vec2<bool>(x_1031.x, x_1031.y);
    let x_1033 : bool = u_xlatb10;
    let x_1034 : bool = u_xlatb2;
    u_xlatb3 = (x_1033 | x_1034);
    let x_1036 : bool = u_xlatb3;
    u_xlati3.x = select(0i, 1i, x_1036);
    let x_1040 : i32 = u_xlati3.x;
    if ((x_1040 != 0i)) {
      let x_1045 : f32 = u_xlat24;
      x_1042 = x_1045;
    } else {
      let x_1048 : f32 = u_xlat1.x;
      x_1042 = x_1048;
    }
    let x_1049 : f32 = x_1042;
    u_xlat3.x = x_1049;
    let x_1051 : bool = u_xlatb2;
    if (x_1051) {
      let x_1056 : f32 = u_xlat8.x;
      x_1052 = x_1056;
    } else {
      let x_1059 : f32 = u_xlat3.x;
      x_1052 = x_1059;
    }
    let x_1060 : f32 = x_1052;
    u_xlat8.x = x_1060;
    let x_1062 : bool = u_xlatb10;
    let x_1064 : bool = u_xlatb18.x;
    u_xlatb2 = (x_1062 | x_1064);
    let x_1066 : bool = u_xlatb2;
    u_xlati2.x = select(0i, 1i, x_1066);
    let x_1070 : i32 = u_xlati2.x;
    if ((x_1070 != 0i)) {
      let x_1076 : f32 = u_xlat1.x;
      x_1072 = x_1076;
    } else {
      let x_1078 : f32 = u_xlat9;
      x_1072 = x_1078;
    }
    let x_1079 : f32 = x_1072;
    u_xlat7 = x_1079;
    let x_1081 : i32 = u_xlati2.x;
    if ((x_1081 != 0i)) {
      let x_1086 : f32 = u_xlat9;
      x_1083 = x_1086;
    } else {
      let x_1089 : f32 = u_xlat1.x;
      x_1083 = x_1089;
    }
    let x_1090 : f32 = x_1083;
    u_xlat4.x = x_1090;
    let x_1092 : f32 = u_xlat7;
    u_xlat2.x = x_1092;
    let x_1095 : bool = u_xlatb18.x;
    if (x_1095) {
      let x_1099 : f32 = u_xlat17;
      x_1096 = x_1099;
    } else {
      let x_1102 : f32 = u_xlat4.x;
      x_1096 = x_1102;
    }
    let x_1103 : f32 = x_1096;
    u_xlat11 = x_1103;
    let x_1105 : f32 = u_xlat8.x;
    let x_1106 : f32 = u_xlat11;
    u_xlat8.x = (x_1105 + x_1106);
    let x_1110 : f32 = u_xlat8.x;
    let x_1113 : f32 = u_xlat3.x;
    u_xlat8.x = ((x_1110 * 0.5f) + x_1113);
    let x_1117 : f32 = u_xlat1.x;
    let x_1119 : f32 = u_xlat8.x;
    u_xlat8.x = (x_1117 + x_1119);
    let x_1123 : f32 = u_xlat4.x;
    let x_1125 : f32 = u_xlat8.x;
    u_xlat8.x = (x_1123 + x_1125);
    let x_1128 : bool = u_xlatb10;
    if (x_1128) {
      let x_1132 : f32 = u_xlat24;
      x_1129 = x_1132;
    } else {
      let x_1135 : f32 = u_xlat2.x;
      x_1129 = x_1135;
    }
    let x_1136 : f32 = x_1129;
    u_xlat24 = x_1136;
    let x_1139 : bool = u_xlatb18.x;
    let x_1141 : bool = u_xlatb18.y;
    u_xlatb1 = (x_1139 | x_1141);
    let x_1143 : bool = u_xlatb1;
    u_xlati1.x = select(0i, 1i, x_1143);
    let x_1147 : i32 = u_xlati1.x;
    let x_1149 : f32 = u_xlat17;
    let x_1150 : f32 = u_xlat9;
    u_xlat1.x = select(x_1150, x_1149, (x_1147 != 0i));
    let x_1154 : bool = u_xlatb18.y;
    if (x_1154) {
      let x_1158 : f32 = u_xlat25;
      x_1155 = x_1158;
    } else {
      let x_1161 : f32 = u_xlat1.x;
      x_1155 = x_1161;
    }
    let x_1162 : f32 = x_1155;
    u_xlat17 = x_1162;
    let x_1163 : f32 = u_xlat24;
    let x_1164 : f32 = u_xlat17;
    u_xlat24 = (x_1163 + x_1164);
    let x_1166 : f32 = u_xlat24;
    let x_1169 : f32 = u_xlat2.x;
    u_xlat24 = ((x_1166 * 0.5f) + x_1169);
    let x_1171 : f32 = u_xlat9;
    let x_1172 : f32 = u_xlat24;
    u_xlat24 = (x_1171 + x_1172);
    let x_1175 : f32 = u_xlat1.x;
    let x_1176 : f32 = u_xlat24;
    u_xlat8.z = (x_1175 + x_1176);
    let x_1179 : vec3<f32> = u_xlat8;
    let x_1182 : vec2<f32> = (vec2<f32>(x_1179.x, x_1179.z) * vec2<f32>(0.25f, 0.25f));
    let x_1183 : vec3<f32> = u_xlat8;
    u_xlat8 = vec3<f32>(x_1182.x, x_1183.y, x_1182.y);
    let x_1185 : i32 = u_xlati0;
    let x_1187 : f32 = u_xlat8.x;
    TGSM1[x_1185].value[0i] = bitcast<u32>(x_1187);
    let x_1190 : i32 = u_xlati16;
    let x_1192 : f32 = u_xlat8.z;
    TGSM1[x_1190].value[0i] = bitcast<u32>(x_1192);
  }
  workgroupBarrier();
  let x_1196 : u32 = gl_LocalInvocationID.y;
  let x_1200 : u32 = gl_LocalInvocationID.x;
  u_xlati0 = ((bitcast<i32>(x_1196) * 16i) + bitcast<i32>(x_1200));
  let x_1203 : i32 = u_xlati0;
  u_xlati8 = (vec3<i32>(x_1203, x_1203, x_1203) + vec3<i32>(16i, 17i, 1i));
  let x_1208 : i32 = u_xlati8.x;
  let x_1210 : u32 = TGSM1[x_1208].value[0i];
  u_xlat1.y = bitcast<f32>(x_1210);
  let x_1214 : i32 = u_xlati8.y;
  let x_1216 : u32 = TGSM1[x_1214].value[0i];
  u_xlat1.z = bitcast<f32>(x_1216);
  let x_1220 : i32 = u_xlati8.z;
  let x_1222 : u32 = TGSM1[x_1220].value[0i];
  u_xlat1.w = bitcast<f32>(x_1222);
  let x_1225 : i32 = u_xlati0;
  let x_1227 : u32 = TGSM1[x_1225].value[0i];
  u_xlat1.x = bitcast<f32>(x_1227);
  let x_1231 : vec3<u32> = gl_GlobalInvocationID;
  let x_1233 : vec2<f32> = vec2<f32>(vec2<u32>(x_1231.x, x_1231.y));
  let x_1234 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1233.x, x_1233.y, x_1234.z, x_1234.w);
  let x_1236 : vec4<f32> = u_xlat0;
  let x_1239 : vec4<f32> = x_65.InvLowResolution;
  let x_1241 : vec2<f32> = (vec2<f32>(x_1236.x, x_1236.y) * vec2<f32>(x_1239.x, x_1239.y));
  let x_1242 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1241.x, x_1241.y, x_1242.z, x_1242.w);
  let x_1246 : vec3<u32> = gl_GlobalInvocationID;
  u_xlatu2 = (vec4<u32>(x_1246.x, x_1246.y, x_1246.y, x_1246.y) << vec4<u32>(1u, 1u, 1u, 1u));
  let x_1250 : vec4<u32> = u_xlatu2;
  u_xlat16 = vec2<f32>(vec2<u32>(x_1250.x, x_1250.w));
  let x_1253 : vec2<f32> = u_xlat16;
  let x_1255 : vec4<f32> = x_65.InvHighResolution;
  u_xlat16 = (x_1253 * vec2<f32>(x_1255.x, x_1255.y));
  let x_1263 : vec2<f32> = u_xlat16;
  let x_1264 : vec4<f32> = textureGather(0i, HiResAO, samplerHiResAO, x_1263);
  u_xlat3 = x_1264;
  let x_1268 : vec4<f32> = u_xlat0;
  let x_1270 : vec4<f32> = textureGather(0i, LoResDB, samplerLoResDB, vec2<f32>(x_1268.x, x_1268.y));
  u_xlat4 = x_1270;
  let x_1276 : vec2<f32> = u_xlat16;
  let x_1277 : vec4<f32> = textureGather(0i, HiResDB, samplerHiResDB, x_1276);
  u_xlat0 = x_1277;
  let x_1279 : vec4<u32> = u_xlatu2;
  u_xlati5 = (bitcast<vec4<i32>>(vec4<u32>(x_1279.x, x_1279.w, x_1279.x, x_1279.w)) + vec4<i32>(-1i, 0i, 0i, -1i));
  let x_1285 : vec4<f32> = u_xlat4;
  let x_1287 : vec4<f32> = u_xlat0;
  u_xlat6 = (-(x_1285) + vec4<f32>(x_1287.x, x_1287.x, x_1287.x, x_1287.x));
  let x_1290 : vec4<f32> = u_xlat6;
  let x_1293 : vec4<f32> = x_65.AdditionalParams;
  u_xlat6 = (abs(x_1290) + vec4<f32>(x_1293.w, x_1293.w, x_1293.w, x_1293.w));
  let x_1299 : vec4<f32> = u_xlat6;
  u_xlat6 = (vec4<f32>(9.0f, 3.0f, 1.0f, 3.0f) / x_1299);
  let x_1301 : vec4<f32> = u_xlat6;
  u_xlat0.x = dot(x_1301, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_1305 : f32 = u_xlat0.x;
  let x_1307 : f32 = x_65.AdditionalParams.x;
  u_xlat0.x = (x_1305 + x_1307);
  let x_1310 : vec4<f32> = u_xlat1;
  let x_1312 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec4<f32>(x_1310.y, x_1310.z, x_1310.w, x_1310.x), x_1312);
  let x_1316 : f32 = u_xlat6.x;
  let x_1318 : f32 = x_65.AdditionalParams.x;
  u_xlat6.x = (x_1316 + x_1318);
  let x_1322 : f32 = u_xlat3.x;
  let x_1324 : f32 = u_xlat6.x;
  u_xlat3.x = (x_1322 * x_1324);
  let x_1328 : f32 = u_xlat3.x;
  let x_1330 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1328 / x_1330);
  let x_1337 : vec4<i32> = u_xlati5;
  let x_1339 : vec4<f32> = u_xlat0;
  textureStore(AoResult_origX0X, vec2<i32>(x_1337.x, x_1337.y), vec4<f32>(x_1339.x, x_1339.x, x_1339.x, x_1339.x));
  let x_1341 : vec4<f32> = u_xlat4;
  let x_1344 : vec4<f32> = u_xlat0;
  u_xlat6 = (-(vec4<f32>(x_1341.y, x_1341.z, x_1341.w, x_1341.x)) + vec4<f32>(x_1344.y, x_1344.y, x_1344.y, x_1344.y));
  let x_1347 : vec4<f32> = u_xlat6;
  let x_1350 : vec4<f32> = x_65.AdditionalParams;
  u_xlat6 = (abs(x_1347) + vec4<f32>(x_1350.w, x_1350.w, x_1350.w, x_1350.w));
  let x_1353 : vec4<f32> = u_xlat6;
  u_xlat6 = (vec4<f32>(9.0f, 3.0f, 1.0f, 3.0f) / x_1353);
  let x_1355 : vec4<f32> = u_xlat6;
  u_xlat0.x = dot(x_1355, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_1358 : vec4<f32> = u_xlat1;
  let x_1360 : vec4<f32> = u_xlat6;
  u_xlat0.y = dot(vec4<f32>(x_1358.z, x_1358.w, x_1358.x, x_1358.y), x_1360);
  let x_1363 : vec4<f32> = u_xlat0;
  let x_1366 : vec4<f32> = x_65.AdditionalParams;
  let x_1368 : vec2<f32> = (vec2<f32>(x_1363.x, x_1363.y) + vec2<f32>(x_1366.x, x_1366.x));
  let x_1369 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1368.x, x_1368.y, x_1369.z, x_1369.w);
  let x_1372 : f32 = u_xlat0.y;
  let x_1374 : f32 = u_xlat3.y;
  u_xlat8.x = (x_1372 * x_1374);
  let x_1378 : f32 = u_xlat8.x;
  let x_1380 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1378 / x_1380);
  let x_1384 : vec4<u32> = u_xlatu2;
  let x_1387 : vec4<f32> = u_xlat0;
  textureStore(AoResult_origX0X, bitcast<vec2<i32>>(vec2<u32>(x_1384.x, x_1384.w)), vec4<f32>(x_1387.x, x_1387.x, x_1387.x, x_1387.x));
  let x_1389 : vec4<f32> = u_xlat4;
  let x_1392 : vec4<f32> = u_xlat0;
  u_xlat6 = (-(vec4<f32>(x_1389.z, x_1389.w, x_1389.x, x_1389.y)) + vec4<f32>(x_1392.z, x_1392.z, x_1392.z, x_1392.z));
  let x_1395 : vec4<f32> = u_xlat6;
  let x_1398 : vec4<f32> = x_65.AdditionalParams;
  u_xlat6 = (abs(x_1395) + vec4<f32>(x_1398.w, x_1398.w, x_1398.w, x_1398.w));
  let x_1401 : vec4<f32> = u_xlat6;
  u_xlat6 = (vec4<f32>(9.0f, 3.0f, 1.0f, 3.0f) / x_1401);
  let x_1403 : vec4<f32> = u_xlat6;
  u_xlat0.x = dot(x_1403, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_1406 : vec4<f32> = u_xlat1;
  let x_1408 : vec4<f32> = u_xlat6;
  u_xlat0.y = dot(vec4<f32>(x_1406.w, x_1406.x, x_1406.y, x_1406.z), x_1408);
  let x_1411 : vec4<f32> = u_xlat0;
  let x_1414 : vec4<f32> = x_65.AdditionalParams;
  let x_1416 : vec2<f32> = (vec2<f32>(x_1411.x, x_1411.y) + vec2<f32>(x_1414.x, x_1414.x));
  let x_1417 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1416.x, x_1416.y, x_1417.z, x_1417.w);
  let x_1420 : f32 = u_xlat0.y;
  let x_1422 : f32 = u_xlat3.z;
  u_xlat8.x = (x_1420 * x_1422);
  let x_1426 : f32 = u_xlat8.x;
  let x_1428 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1426 / x_1428);
  let x_1432 : vec4<i32> = u_xlati5;
  let x_1434 : vec4<f32> = u_xlat0;
  textureStore(AoResult_origX0X, vec2<i32>(x_1432.z, x_1432.w), vec4<f32>(x_1434.x, x_1434.x, x_1434.x, x_1434.x));
  let x_1436 : vec4<u32> = u_xlatu2;
  u_xlati2 = (bitcast<vec4<i32>>(x_1436) + vec4<i32>(-1i, -1i, -1i, -1i));
  let x_1440 : vec4<f32> = u_xlat4;
  let x_1443 : vec4<f32> = u_xlat0;
  u_xlat0 = (-(vec4<f32>(x_1440.w, x_1440.x, x_1440.y, x_1440.z)) + vec4<f32>(x_1443.w, x_1443.w, x_1443.w, x_1443.w));
  let x_1446 : vec4<f32> = u_xlat0;
  let x_1449 : vec4<f32> = x_65.AdditionalParams;
  u_xlat0 = (abs(x_1446) + vec4<f32>(x_1449.w, x_1449.w, x_1449.w, x_1449.w));
  let x_1452 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(9.0f, 3.0f, 1.0f, 3.0f) / x_1452);
  let x_1454 : vec4<f32> = u_xlat0;
  u_xlat3.x = dot(x_1454, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_1458 : f32 = u_xlat3.x;
  let x_1460 : f32 = x_65.AdditionalParams.x;
  u_xlat3.x = (x_1458 + x_1460);
  let x_1463 : vec4<f32> = u_xlat1;
  let x_1464 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(x_1463, x_1464);
  let x_1468 : f32 = u_xlat0.x;
  let x_1470 : f32 = x_65.AdditionalParams.x;
  u_xlat0.x = (x_1468 + x_1470);
  let x_1474 : f32 = u_xlat0.x;
  let x_1476 : f32 = u_xlat3.w;
  u_xlat0.x = (x_1474 * x_1476);
  let x_1480 : f32 = u_xlat0.x;
  let x_1482 : f32 = u_xlat3.x;
  u_xlat0.x = (x_1480 / x_1482);
  let x_1486 : vec4<i32> = u_xlati2;
  let x_1488 : vec4<f32> = u_xlat0;
  textureStore(AoResult_origX0X, vec2<i32>(x_1486.x, x_1486.y), vec4<f32>(x_1488.x, x_1488.x, x_1488.x, x_1488.x));
  return;
}

@compute @workgroup_size(8i, 8i, 1i)
fn main(@builtin(local_invocation_id) gl_LocalInvocationID_param : vec3<u32>, @builtin(global_invocation_id) gl_GlobalInvocationID_param : vec3<u32>, @builtin(local_invocation_index) gl_LocalInvocationIndex_param : u32) {
  gl_LocalInvocationID = gl_LocalInvocationID_param;
  gl_GlobalInvocationID = gl_GlobalInvocationID_param;
  gl_LocalInvocationIndex = gl_LocalInvocationIndex_param;
  main_1();
}

