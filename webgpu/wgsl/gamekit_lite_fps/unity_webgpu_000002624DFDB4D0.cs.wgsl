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

@group(0) @binding(7) var samplerLoResAO1 : sampler;

var<workgroup> TGSM1 : array<S, 256u>;

var<private> u_xlati24 : i32;

var<private> u_xlati17 : vec2<i32>;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(1) var LoResDB : texture_2d<f32>;

@group(0) @binding(5) var samplerLoResDB : sampler;

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

@group(0) @binding(6) var samplerHiResDB : sampler;

var<private> u_xlati4 : vec4<i32>;

@group(0) @binding(4) var AoResult_origX0X : texture_storage_2d<r32float, write>;

fn main_1() {
  var x_503 : f32;
  var x_513 : f32;
  var x_532 : f32;
  var x_543 : f32;
  var x_554 : f32;
  var x_601 : f32;
  var x_618 : f32;
  var x_628 : f32;
  var x_675 : f32;
  var x_692 : f32;
  var x_1011 : f32;
  var x_1021 : f32;
  var x_1041 : f32;
  var x_1052 : f32;
  var x_1091 : f32;
  var x_1117 : f32;
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
  let x_95 : i32 = u_xlati0;
  let x_99 : f32 = u_xlat1.w;
  TGSM1[x_95].value[0i] = bitcast<u32>(x_99);
  let x_104 : i32 = u_xlati0;
  u_xlati24 = (x_104 + 1i);
  let x_106 : i32 = u_xlati24;
  let x_109 : f32 = u_xlat1.z;
  TGSM1[x_106].value[0i] = bitcast<u32>(x_109);
  let x_114 : i32 = u_xlati0;
  u_xlati17 = (vec2<i32>(x_114, x_114) + vec2<i32>(16i, 17i));
  let x_121 : i32 = u_xlati17.x;
  let x_123 : f32 = u_xlat1.x;
  TGSM1[x_121].value[0i] = bitcast<u32>(x_123);
  let x_127 : i32 = u_xlati17.y;
  let x_129 : f32 = u_xlat1.y;
  TGSM1[x_127].value[0i] = bitcast<u32>(x_129);
  let x_138 : vec3<f32> = u_xlat8;
  let x_140 : vec4<f32> = textureGather(0i, LoResDB, samplerLoResDB, vec2<f32>(x_138.x, x_138.y));
  u_xlat2 = x_140;
  let x_143 : vec4<f32> = u_xlat2;
  u_xlat2 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_143);
  let x_149 : i32 = u_xlati0;
  let x_151 : f32 = u_xlat2.w;
  TGSM0[x_149].value[0i] = bitcast<u32>(x_151);
  let x_154 : i32 = u_xlati24;
  let x_156 : f32 = u_xlat2.z;
  TGSM0[x_154].value[0i] = bitcast<u32>(x_156);
  let x_160 : i32 = u_xlati17.x;
  let x_162 : f32 = u_xlat2.x;
  TGSM0[x_160].value[0i] = bitcast<u32>(x_162);
  let x_166 : i32 = u_xlati17.y;
  let x_168 : f32 = u_xlat2.y;
  TGSM0[x_166].value[0i] = bitcast<u32>(x_168);
  workgroupBarrier();
  let x_177 : u32 = gl_LocalInvocationIndex;
  let x_178 : u32 = gl_LocalInvocationIndex;
  let x_179 : u32 = gl_LocalInvocationIndex;
  let x_180 : u32 = gl_LocalInvocationIndex;
  let x_187 : vec4<bool> = (vec4<u32>(x_177, x_178, x_179, x_180) < vec4<u32>(39u, 45u, 0u, 0u));
  u_xlatb0 = vec2<bool>(x_187.x, x_187.y);
  let x_191 : bool = u_xlatb0.x;
  if (x_191) {
    let x_196 : u32 = gl_LocalInvocationIndex;
    u_xlatu0 = (x_196 / 3u);
    let x_199 : u32 = gl_LocalInvocationIndex;
    u_xlatu1 = (x_199 % 3u);
    let x_202 : u32 = u_xlatu1;
    u_xlati16 = (bitcast<i32>(x_202) * 3i);
    let x_206 : u32 = u_xlatu0;
    let x_209 : i32 = u_xlati16;
    u_xlati0 = ((bitcast<i32>(x_206) * 16i) + x_209);
    let x_213 : i32 = u_xlati0;
    let x_215 : u32 = TGSM1[x_213].value[0i];
    u_xlat16.x = bitcast<f32>(x_215);
    let x_221 : i32 = u_xlati0;
    u_xlati1 = (vec4<i32>(x_221, x_221, x_221, x_221) + vec4<i32>(1i, 2i, 3i, 4i));
    let x_229 : i32 = u_xlati1.x;
    let x_231 : u32 = TGSM1[x_229].value[0i];
    u_xlat24 = bitcast<f32>(x_231);
    let x_234 : i32 = u_xlati1.y;
    let x_236 : u32 = TGSM1[x_234].value[0i];
    u_xlat2.x = bitcast<f32>(x_236);
    let x_241 : i32 = u_xlati1.z;
    let x_243 : u32 = TGSM1[x_241].value[0i];
    u_xlat10 = bitcast<f32>(x_243);
    let x_247 : i32 = u_xlati1.w;
    let x_249 : u32 = TGSM1[x_247].value[0i];
    u_xlat18.x = bitcast<f32>(x_249);
    let x_253 : i32 = u_xlati0;
    u_xlati3 = (vec2<i32>(x_253, x_253) + vec2<i32>(5i, 6i));
    let x_261 : i32 = u_xlati3.x;
    let x_263 : u32 = TGSM1[x_261].value[0i];
    u_xlat26 = bitcast<f32>(x_263);
    let x_267 : i32 = u_xlati3.y;
    let x_269 : u32 = TGSM1[x_267].value[0i];
    u_xlat19 = bitcast<f32>(x_269);
    let x_272 : i32 = u_xlati0;
    let x_274 : u32 = TGSM0[x_272].value[0i];
    u_xlat27 = bitcast<f32>(x_274);
    let x_278 : i32 = u_xlati1.x;
    let x_280 : u32 = TGSM0[x_278].value[0i];
    u_xlat4 = bitcast<f32>(x_280);
    let x_284 : i32 = u_xlati1.y;
    let x_286 : u32 = TGSM0[x_284].value[0i];
    u_xlat12 = bitcast<f32>(x_286);
    let x_290 : i32 = u_xlati1.z;
    let x_292 : u32 = TGSM0[x_290].value[0i];
    u_xlat17 = bitcast<f32>(x_292);
    let x_296 : i32 = u_xlati1.w;
    let x_298 : u32 = TGSM0[x_296].value[0i];
    u_xlat25 = bitcast<f32>(x_298);
    let x_302 : i32 = u_xlati3.x;
    let x_304 : u32 = TGSM0[x_302].value[0i];
    u_xlat3.x = bitcast<f32>(x_304);
    let x_309 : i32 = u_xlati3.y;
    let x_311 : u32 = TGSM0[x_309].value[0i];
    u_xlat11 = bitcast<f32>(x_311);
    let x_313 : f32 = u_xlat27;
    let x_315 : f32 = u_xlat4;
    u_xlat27 = (-(x_313) + x_315);
    let x_317 : f32 = u_xlat4;
    let x_319 : f32 = u_xlat12;
    u_xlat4 = (-(x_317) + x_319);
    let x_321 : f32 = u_xlat12;
    let x_323 : f32 = u_xlat17;
    u_xlat12 = (-(x_321) + x_323);
    let x_325 : f32 = u_xlat17;
    let x_327 : f32 = u_xlat25;
    u_xlat17 = (-(x_325) + x_327);
    let x_329 : f32 = u_xlat25;
    let x_332 : f32 = u_xlat3.x;
    u_xlat25 = (-(x_329) + x_332);
    let x_335 : f32 = u_xlat3.x;
    let x_337 : f32 = u_xlat11;
    u_xlat3.x = (-(x_335) + x_337);
    let x_340 : f32 = u_xlat27;
    let x_341 : f32 = u_xlat27;
    let x_345 : f32 = x_65.AdditionalParams.y;
    u_xlat11 = ((x_340 * x_341) + x_345);
    let x_348 : f32 = u_xlat4;
    let x_349 : f32 = u_xlat4;
    let x_352 : f32 = x_65.AdditionalParams.y;
    u_xlat20 = ((x_348 * x_349) + x_352);
    let x_355 : f32 = u_xlat12;
    let x_356 : f32 = u_xlat12;
    let x_359 : f32 = x_65.AdditionalParams.y;
    u_xlat28 = ((x_355 * x_356) + x_359);
    let x_362 : f32 = u_xlat17;
    let x_363 : f32 = u_xlat17;
    let x_366 : f32 = x_65.AdditionalParams.y;
    u_xlat5.x = ((x_362 * x_363) + x_366);
    let x_370 : f32 = u_xlat25;
    let x_371 : f32 = u_xlat25;
    let x_374 : f32 = x_65.AdditionalParams.y;
    u_xlat13 = ((x_370 * x_371) + x_374);
    let x_378 : f32 = u_xlat3.x;
    let x_380 : f32 = u_xlat3.x;
    let x_383 : f32 = x_65.AdditionalParams.y;
    u_xlat21 = ((x_378 * x_380) + x_383);
    let x_385 : f32 = u_xlat27;
    let x_386 : f32 = u_xlat4;
    let x_389 : f32 = x_65.AdditionalParams.y;
    u_xlat27 = ((x_385 * x_386) + x_389);
    let x_391 : f32 = u_xlat27;
    let x_392 : f32 = u_xlat27;
    u_xlat27 = (x_391 * x_392);
    let x_394 : f32 = u_xlat11;
    let x_395 : f32 = u_xlat20;
    u_xlat11 = (x_394 * x_395);
    let x_397 : f32 = u_xlat11;
    let x_399 : f32 = x_65.AdditionalParams.z;
    u_xlat11 = (x_397 * x_399);
    let x_402 : f32 = u_xlat11;
    let x_403 : f32 = u_xlat27;
    u_xlatb11 = (x_402 < x_403);
    let x_405 : f32 = u_xlat4;
    let x_406 : f32 = u_xlat12;
    let x_409 : f32 = x_65.AdditionalParams.y;
    u_xlat27 = ((x_405 * x_406) + x_409);
    let x_411 : f32 = u_xlat27;
    let x_412 : f32 = u_xlat27;
    u_xlat27 = (x_411 * x_412);
    let x_414 : f32 = u_xlat28;
    let x_415 : f32 = u_xlat20;
    u_xlat4 = (x_414 * x_415);
    let x_417 : f32 = u_xlat4;
    let x_419 : f32 = x_65.AdditionalParams.z;
    u_xlat4 = (x_417 * x_419);
    let x_422 : f32 = u_xlat4;
    let x_423 : f32 = u_xlat27;
    u_xlatb27 = (x_422 < x_423);
    let x_425 : f32 = u_xlat12;
    let x_426 : f32 = u_xlat17;
    let x_429 : f32 = x_65.AdditionalParams.y;
    u_xlat4 = ((x_425 * x_426) + x_429);
    let x_431 : f32 = u_xlat4;
    let x_432 : f32 = u_xlat4;
    u_xlat4 = (x_431 * x_432);
    let x_434 : f32 = u_xlat28;
    let x_436 : f32 = u_xlat5.x;
    u_xlat12 = (x_434 * x_436);
    let x_438 : f32 = u_xlat12;
    let x_440 : f32 = x_65.AdditionalParams.z;
    u_xlat12 = (x_438 * x_440);
    let x_443 : f32 = u_xlat12;
    let x_444 : f32 = u_xlat4;
    u_xlatb4 = (x_443 < x_444);
    let x_446 : f32 = u_xlat17;
    let x_447 : f32 = u_xlat25;
    let x_450 : f32 = x_65.AdditionalParams.y;
    u_xlat17 = ((x_446 * x_447) + x_450);
    let x_452 : f32 = u_xlat17;
    let x_453 : f32 = u_xlat17;
    u_xlat17 = (x_452 * x_453);
    let x_455 : f32 = u_xlat13;
    let x_457 : f32 = u_xlat5.x;
    u_xlat12 = (x_455 * x_457);
    let x_459 : f32 = u_xlat12;
    let x_461 : f32 = x_65.AdditionalParams.z;
    u_xlat12 = (x_459 * x_461);
    let x_464 : f32 = u_xlat12;
    let x_465 : f32 = u_xlat17;
    u_xlatb17 = (x_464 < x_465);
    let x_467 : f32 = u_xlat25;
    let x_469 : f32 = u_xlat3.x;
    let x_472 : f32 = x_65.AdditionalParams.y;
    u_xlat25 = ((x_467 * x_469) + x_472);
    let x_474 : f32 = u_xlat25;
    let x_475 : f32 = u_xlat25;
    u_xlat25 = (x_474 * x_475);
    let x_477 : f32 = u_xlat21;
    let x_478 : f32 = u_xlat13;
    u_xlat3.x = (x_477 * x_478);
    let x_482 : f32 = u_xlat3.x;
    let x_484 : f32 = x_65.AdditionalParams.z;
    u_xlat3.x = (x_482 * x_484);
    let x_489 : f32 = u_xlat3.x;
    let x_490 : f32 = u_xlat25;
    u_xlatb25 = (x_489 < x_490);
    let x_493 : bool = u_xlatb27;
    let x_494 : bool = u_xlatb11;
    u_xlatb3 = (x_493 | x_494);
    let x_496 : bool = u_xlatb3;
    u_xlati3.x = select(0i, 1i, x_496);
    let x_500 : i32 = u_xlati3.x;
    if ((x_500 != 0i)) {
      let x_506 : f32 = u_xlat24;
      x_503 = x_506;
    } else {
      let x_509 : f32 = u_xlat2.x;
      x_503 = x_509;
    }
    let x_510 : f32 = x_503;
    u_xlat3.x = x_510;
    let x_512 : bool = u_xlatb11;
    if (x_512) {
      let x_517 : f32 = u_xlat16.x;
      x_513 = x_517;
    } else {
      let x_520 : f32 = u_xlat3.x;
      x_513 = x_520;
    }
    let x_521 : f32 = x_513;
    u_xlat16.x = x_521;
    let x_523 : bool = u_xlatb27;
    let x_524 : bool = u_xlatb4;
    u_xlatb11 = (x_523 | x_524);
    let x_527 : bool = u_xlatb11;
    u_xlati11 = select(0i, 1i, x_527);
    let x_530 : i32 = u_xlati11;
    if ((x_530 != 0i)) {
      let x_536 : f32 = u_xlat2.x;
      x_532 = x_536;
    } else {
      let x_538 : f32 = u_xlat10;
      x_532 = x_538;
    }
    let x_539 : f32 = x_532;
    u_xlat7 = x_539;
    let x_541 : i32 = u_xlati11;
    if ((x_541 != 0i)) {
      let x_546 : f32 = u_xlat10;
      x_543 = x_546;
    } else {
      let x_549 : f32 = u_xlat2.x;
      x_543 = x_549;
    }
    let x_550 : f32 = x_543;
    u_xlat6 = x_550;
    let x_551 : f32 = u_xlat7;
    u_xlat5.x = x_551;
    let x_553 : bool = u_xlatb4;
    if (x_553) {
      let x_558 : f32 = u_xlat18.x;
      x_554 = x_558;
    } else {
      let x_560 : f32 = u_xlat6;
      x_554 = x_560;
    }
    let x_561 : f32 = x_554;
    u_xlat11 = x_561;
    let x_563 : f32 = u_xlat16.x;
    let x_564 : f32 = u_xlat11;
    u_xlat16.x = (x_563 + x_564);
    let x_568 : f32 = u_xlat16.x;
    let x_572 : f32 = u_xlat3.x;
    u_xlat16.x = ((x_568 * 0.5f) + x_572);
    let x_576 : f32 = u_xlat2.x;
    let x_578 : f32 = u_xlat16.x;
    u_xlat16.x = (x_576 + x_578);
    let x_581 : f32 = u_xlat6;
    let x_583 : f32 = u_xlat16.x;
    u_xlat16.x = (x_581 + x_583);
    let x_587 : f32 = u_xlat16.x;
    u_xlat16.x = (x_587 * 0.25f);
    let x_595 : i32 = u_xlati0;
    let x_597 : f32 = u_xlat16.x;
    TGSM2[x_595].value[0i] = bitcast<u32>(x_597);
    let x_600 : bool = u_xlatb27;
    if (x_600) {
      let x_604 : f32 = u_xlat24;
      x_601 = x_604;
    } else {
      let x_607 : f32 = u_xlat5.x;
      x_601 = x_607;
    }
    let x_608 : f32 = x_601;
    u_xlat16.x = x_608;
    let x_611 : bool = u_xlatb4;
    let x_612 : bool = u_xlatb17;
    u_xlatb24 = (x_611 | x_612);
    let x_614 : bool = u_xlatb24;
    u_xlati24 = select(0i, 1i, x_614);
    let x_616 : i32 = u_xlati24;
    if ((x_616 != 0i)) {
      let x_621 : f32 = u_xlat10;
      x_618 = x_621;
    } else {
      let x_624 : f32 = u_xlat18.x;
      x_618 = x_624;
    }
    let x_625 : f32 = x_618;
    u_xlat7 = x_625;
    let x_626 : i32 = u_xlati24;
    if ((x_626 != 0i)) {
      let x_632 : f32 = u_xlat18.x;
      x_628 = x_632;
    } else {
      let x_634 : f32 = u_xlat10;
      x_628 = x_634;
    }
    let x_635 : f32 = x_628;
    u_xlat6 = x_635;
    let x_636 : f32 = u_xlat7;
    u_xlat3.x = x_636;
    let x_638 : bool = u_xlatb17;
    let x_639 : f32 = u_xlat26;
    let x_640 : f32 = u_xlat6;
    u_xlat24 = select(x_640, x_639, x_638);
    let x_642 : f32 = u_xlat24;
    let x_644 : f32 = u_xlat16.x;
    u_xlat16.x = (x_642 + x_644);
    let x_648 : f32 = u_xlat16.x;
    let x_651 : f32 = u_xlat5.x;
    u_xlat16.x = ((x_648 * 0.5f) + x_651);
    let x_654 : f32 = u_xlat10;
    let x_656 : f32 = u_xlat16.x;
    u_xlat16.x = (x_654 + x_656);
    let x_659 : f32 = u_xlat6;
    let x_661 : f32 = u_xlat16.x;
    u_xlat16.x = (x_659 + x_661);
    let x_665 : f32 = u_xlat16.x;
    u_xlat16.x = (x_665 * 0.25f);
    let x_669 : i32 = u_xlati1.x;
    let x_671 : f32 = u_xlat16.x;
    TGSM2[x_669].value[0i] = bitcast<u32>(x_671);
    let x_674 : bool = u_xlatb4;
    if (x_674) {
      let x_679 : f32 = u_xlat2.x;
      x_675 = x_679;
    } else {
      let x_682 : f32 = u_xlat3.x;
      x_675 = x_682;
    }
    let x_683 : f32 = x_675;
    u_xlat16.x = x_683;
    let x_685 : bool = u_xlatb17;
    let x_686 : bool = u_xlatb25;
    u_xlatb24 = (x_685 | x_686);
    let x_688 : bool = u_xlatb24;
    u_xlati24 = select(0i, 1i, x_688);
    let x_690 : i32 = u_xlati24;
    if ((x_690 != 0i)) {
      let x_695 : f32 = u_xlat26;
      x_692 = x_695;
    } else {
      let x_698 : f32 = u_xlat18.x;
      x_692 = x_698;
    }
    let x_699 : f32 = x_692;
    u_xlat24 = x_699;
    let x_700 : bool = u_xlatb25;
    let x_701 : f32 = u_xlat19;
    let x_702 : f32 = u_xlat24;
    u_xlat1.x = select(x_702, x_701, x_700);
    let x_706 : f32 = u_xlat16.x;
    let x_708 : f32 = u_xlat1.x;
    u_xlat16.x = (x_706 + x_708);
    let x_712 : f32 = u_xlat16.x;
    let x_715 : f32 = u_xlat3.x;
    u_xlat16.x = ((x_712 * 0.5f) + x_715);
    let x_719 : f32 = u_xlat18.x;
    let x_721 : f32 = u_xlat16.x;
    u_xlat16.x = (x_719 + x_721);
    let x_724 : f32 = u_xlat24;
    let x_726 : f32 = u_xlat16.x;
    u_xlat16.x = (x_724 + x_726);
    let x_730 : f32 = u_xlat16.x;
    u_xlat16.x = (x_730 * 0.25f);
    let x_734 : i32 = u_xlati1.y;
    let x_736 : f32 = u_xlat16.x;
    TGSM2[x_734].value[0i] = bitcast<u32>(x_736);
  }
  workgroupBarrier();
  let x_740 : bool = u_xlatb0.y;
  if (x_740) {
    let x_743 : u32 = gl_LocalInvocationIndex;
    u_xlatu0 = (x_743 / 9u);
    let x_746 : u32 = gl_LocalInvocationIndex;
    u_xlatu1 = (x_746 % 9u);
    let x_748 : u32 = u_xlatu0;
    let x_751 : u32 = u_xlatu1;
    u_xlati0 = ((bitcast<i32>(x_748) * 32i) + bitcast<i32>(x_751));
    let x_754 : i32 = u_xlati0;
    let x_756 : u32 = TGSM2[x_754].value[0i];
    u_xlat8.x = bitcast<f32>(x_756);
    let x_759 : i32 = u_xlati0;
    u_xlati16 = (x_759 + 16i);
    let x_761 : i32 = u_xlati16;
    let x_763 : u32 = TGSM2[x_761].value[0i];
    u_xlat24 = bitcast<f32>(x_763);
    let x_765 : i32 = u_xlati0;
    u_xlati1 = (vec4<i32>(x_765, x_765, x_765, x_765) + vec4<i32>(32i, 48i, 64i, 80i));
    let x_773 : i32 = u_xlati1.x;
    let x_775 : u32 = TGSM2[x_773].value[0i];
    u_xlat1.x = bitcast<f32>(x_775);
    let x_780 : i32 = u_xlati1.y;
    let x_782 : u32 = TGSM2[x_780].value[0i];
    u_xlat9 = bitcast<f32>(x_782);
    let x_785 : i32 = u_xlati1.z;
    let x_787 : u32 = TGSM2[x_785].value[0i];
    u_xlat17 = bitcast<f32>(x_787);
    let x_790 : i32 = u_xlati1.w;
    let x_792 : u32 = TGSM2[x_790].value[0i];
    u_xlat25 = bitcast<f32>(x_792);
    let x_795 : i32 = u_xlati0;
    u_xlati2 = (vec4<i32>(x_795, x_795, x_795, x_795) + vec4<i32>(2i, 18i, 34i, 50i));
    let x_803 : i32 = u_xlati2.x;
    let x_805 : u32 = TGSM0[x_803].value[0i];
    u_xlat2.x = bitcast<f32>(x_805);
    let x_809 : i32 = u_xlati2.y;
    let x_811 : u32 = TGSM0[x_809].value[0i];
    u_xlat10 = bitcast<f32>(x_811);
    let x_814 : i32 = u_xlati2.z;
    let x_816 : u32 = TGSM0[x_814].value[0i];
    u_xlat18.x = bitcast<f32>(x_816);
    let x_820 : i32 = u_xlati2.w;
    let x_822 : u32 = TGSM0[x_820].value[0i];
    u_xlat26 = bitcast<f32>(x_822);
    let x_824 : i32 = u_xlati0;
    u_xlati3 = (vec2<i32>(x_824, x_824) + vec2<i32>(66i, 82i));
    let x_831 : i32 = u_xlati3.x;
    let x_833 : u32 = TGSM0[x_831].value[0i];
    u_xlat3.x = bitcast<f32>(x_833);
    let x_837 : i32 = u_xlati3.y;
    let x_839 : u32 = TGSM0[x_837].value[0i];
    u_xlat11 = bitcast<f32>(x_839);
    let x_842 : f32 = u_xlat2.x;
    let x_844 : f32 = u_xlat10;
    u_xlat2.x = (-(x_842) + x_844);
    let x_847 : f32 = u_xlat10;
    let x_850 : f32 = u_xlat18.x;
    u_xlat10 = (-(x_847) + x_850);
    let x_853 : f32 = u_xlat18.x;
    let x_855 : f32 = u_xlat26;
    u_xlat18.x = (-(x_853) + x_855);
    let x_858 : f32 = u_xlat26;
    let x_861 : f32 = u_xlat3.x;
    u_xlat26 = (-(x_858) + x_861);
    let x_864 : f32 = u_xlat3.x;
    let x_866 : f32 = u_xlat11;
    u_xlat3.x = (-(x_864) + x_866);
    let x_870 : f32 = u_xlat2.x;
    let x_872 : f32 = u_xlat2.x;
    let x_875 : f32 = x_65.AdditionalParams.y;
    u_xlat11 = ((x_870 * x_872) + x_875);
    let x_877 : f32 = u_xlat10;
    let x_878 : f32 = u_xlat10;
    let x_881 : f32 = x_65.AdditionalParams.y;
    u_xlat19 = ((x_877 * x_878) + x_881);
    let x_884 : f32 = u_xlat18.x;
    let x_886 : f32 = u_xlat18.x;
    let x_889 : f32 = x_65.AdditionalParams.y;
    u_xlat27 = ((x_884 * x_886) + x_889);
    let x_891 : f32 = u_xlat26;
    let x_892 : f32 = u_xlat26;
    let x_895 : f32 = x_65.AdditionalParams.y;
    u_xlat4 = ((x_891 * x_892) + x_895);
    let x_898 : f32 = u_xlat3.x;
    let x_900 : f32 = u_xlat3.x;
    let x_903 : f32 = x_65.AdditionalParams.y;
    u_xlat12 = ((x_898 * x_900) + x_903);
    let x_906 : f32 = u_xlat2.x;
    let x_907 : f32 = u_xlat10;
    let x_910 : f32 = x_65.AdditionalParams.y;
    u_xlat2.x = ((x_906 * x_907) + x_910);
    let x_914 : f32 = u_xlat2.x;
    let x_916 : f32 = u_xlat2.x;
    u_xlat2.x = (x_914 * x_916);
    let x_919 : f32 = u_xlat19;
    let x_920 : f32 = u_xlat11;
    u_xlat11 = (x_919 * x_920);
    let x_922 : f32 = u_xlat11;
    let x_924 : f32 = x_65.AdditionalParams.z;
    u_xlat11 = (x_922 * x_924);
    let x_927 : f32 = u_xlat11;
    let x_929 : f32 = u_xlat2.x;
    u_xlatb2 = (x_927 < x_929);
    let x_931 : f32 = u_xlat10;
    let x_933 : f32 = u_xlat18.x;
    let x_936 : f32 = x_65.AdditionalParams.y;
    u_xlat10 = ((x_931 * x_933) + x_936);
    let x_938 : f32 = u_xlat10;
    let x_939 : f32 = u_xlat10;
    u_xlat10 = (x_938 * x_939);
    let x_941 : f32 = u_xlat27;
    let x_942 : f32 = u_xlat19;
    u_xlat11 = (x_941 * x_942);
    let x_944 : f32 = u_xlat11;
    let x_946 : f32 = x_65.AdditionalParams.z;
    u_xlat11 = (x_944 * x_946);
    let x_949 : f32 = u_xlat11;
    let x_950 : f32 = u_xlat10;
    u_xlatb10 = (x_949 < x_950);
    let x_953 : f32 = u_xlat18.x;
    let x_954 : f32 = u_xlat26;
    let x_957 : f32 = x_65.AdditionalParams.y;
    u_xlat18.x = ((x_953 * x_954) + x_957);
    let x_961 : f32 = u_xlat18.x;
    let x_963 : f32 = u_xlat18.x;
    u_xlat18.x = (x_961 * x_963);
    let x_966 : f32 = u_xlat27;
    let x_967 : f32 = u_xlat4;
    u_xlat11 = (x_966 * x_967);
    let x_969 : f32 = u_xlat11;
    let x_971 : f32 = x_65.AdditionalParams.z;
    u_xlat3.y = (x_969 * x_971);
    let x_974 : f32 = u_xlat26;
    let x_976 : f32 = u_xlat3.x;
    let x_979 : f32 = x_65.AdditionalParams.y;
    u_xlat26 = ((x_974 * x_976) + x_979);
    let x_981 : f32 = u_xlat26;
    let x_982 : f32 = u_xlat26;
    u_xlat18.y = (x_981 * x_982);
    let x_985 : f32 = u_xlat12;
    let x_986 : f32 = u_xlat4;
    u_xlat3.x = (x_985 * x_986);
    let x_990 : f32 = u_xlat3.x;
    let x_992 : f32 = x_65.AdditionalParams.z;
    u_xlat3.x = (x_990 * x_992);
    let x_996 : vec4<f32> = u_xlat3;
    let x_998 : vec2<f32> = u_xlat18;
    let x_1000 : vec4<bool> = (vec4<f32>(x_996.y, x_996.x, x_996.y, x_996.x) < vec4<f32>(x_998.x, x_998.y, x_998.x, x_998.y));
    u_xlatb18 = vec2<bool>(x_1000.x, x_1000.y);
    let x_1002 : bool = u_xlatb10;
    let x_1003 : bool = u_xlatb2;
    u_xlatb3 = (x_1002 | x_1003);
    let x_1005 : bool = u_xlatb3;
    u_xlati3.x = select(0i, 1i, x_1005);
    let x_1009 : i32 = u_xlati3.x;
    if ((x_1009 != 0i)) {
      let x_1014 : f32 = u_xlat24;
      x_1011 = x_1014;
    } else {
      let x_1017 : f32 = u_xlat1.x;
      x_1011 = x_1017;
    }
    let x_1018 : f32 = x_1011;
    u_xlat3.x = x_1018;
    let x_1020 : bool = u_xlatb2;
    if (x_1020) {
      let x_1025 : f32 = u_xlat8.x;
      x_1021 = x_1025;
    } else {
      let x_1028 : f32 = u_xlat3.x;
      x_1021 = x_1028;
    }
    let x_1029 : f32 = x_1021;
    u_xlat8.x = x_1029;
    let x_1031 : bool = u_xlatb10;
    let x_1033 : bool = u_xlatb18.x;
    u_xlatb2 = (x_1031 | x_1033);
    let x_1035 : bool = u_xlatb2;
    u_xlati2.x = select(0i, 1i, x_1035);
    let x_1039 : i32 = u_xlati2.x;
    if ((x_1039 != 0i)) {
      let x_1045 : f32 = u_xlat1.x;
      x_1041 = x_1045;
    } else {
      let x_1047 : f32 = u_xlat9;
      x_1041 = x_1047;
    }
    let x_1048 : f32 = x_1041;
    u_xlat7 = x_1048;
    let x_1050 : i32 = u_xlati2.x;
    if ((x_1050 != 0i)) {
      let x_1055 : f32 = u_xlat9;
      x_1052 = x_1055;
    } else {
      let x_1058 : f32 = u_xlat1.x;
      x_1052 = x_1058;
    }
    let x_1059 : f32 = x_1052;
    u_xlat4 = x_1059;
    let x_1060 : f32 = u_xlat7;
    u_xlat2.x = x_1060;
    let x_1063 : bool = u_xlatb18.x;
    let x_1064 : f32 = u_xlat17;
    let x_1065 : f32 = u_xlat4;
    u_xlat11 = select(x_1065, x_1064, x_1063);
    let x_1068 : f32 = u_xlat8.x;
    let x_1069 : f32 = u_xlat11;
    u_xlat8.x = (x_1068 + x_1069);
    let x_1073 : f32 = u_xlat8.x;
    let x_1076 : f32 = u_xlat3.x;
    u_xlat8.x = ((x_1073 * 0.5f) + x_1076);
    let x_1080 : f32 = u_xlat1.x;
    let x_1082 : f32 = u_xlat8.x;
    u_xlat8.x = (x_1080 + x_1082);
    let x_1085 : f32 = u_xlat4;
    let x_1087 : f32 = u_xlat8.x;
    u_xlat8.x = (x_1085 + x_1087);
    let x_1090 : bool = u_xlatb10;
    if (x_1090) {
      let x_1094 : f32 = u_xlat24;
      x_1091 = x_1094;
    } else {
      let x_1097 : f32 = u_xlat2.x;
      x_1091 = x_1097;
    }
    let x_1098 : f32 = x_1091;
    u_xlat24 = x_1098;
    let x_1101 : bool = u_xlatb18.x;
    let x_1103 : bool = u_xlatb18.y;
    u_xlatb1 = (x_1101 | x_1103);
    let x_1105 : bool = u_xlatb1;
    u_xlati1.x = select(0i, 1i, x_1105);
    let x_1109 : i32 = u_xlati1.x;
    let x_1111 : f32 = u_xlat17;
    let x_1112 : f32 = u_xlat9;
    u_xlat1.x = select(x_1112, x_1111, (x_1109 != 0i));
    let x_1116 : bool = u_xlatb18.y;
    if (x_1116) {
      let x_1120 : f32 = u_xlat25;
      x_1117 = x_1120;
    } else {
      let x_1123 : f32 = u_xlat1.x;
      x_1117 = x_1123;
    }
    let x_1124 : f32 = x_1117;
    u_xlat17 = x_1124;
    let x_1125 : f32 = u_xlat24;
    let x_1126 : f32 = u_xlat17;
    u_xlat24 = (x_1125 + x_1126);
    let x_1128 : f32 = u_xlat24;
    let x_1131 : f32 = u_xlat2.x;
    u_xlat24 = ((x_1128 * 0.5f) + x_1131);
    let x_1133 : f32 = u_xlat9;
    let x_1134 : f32 = u_xlat24;
    u_xlat24 = (x_1133 + x_1134);
    let x_1137 : f32 = u_xlat1.x;
    let x_1138 : f32 = u_xlat24;
    u_xlat8.z = (x_1137 + x_1138);
    let x_1141 : vec3<f32> = u_xlat8;
    let x_1144 : vec2<f32> = (vec2<f32>(x_1141.x, x_1141.z) * vec2<f32>(0.25f, 0.25f));
    let x_1145 : vec3<f32> = u_xlat8;
    u_xlat8 = vec3<f32>(x_1144.x, x_1145.y, x_1144.y);
    let x_1147 : i32 = u_xlati0;
    let x_1149 : f32 = u_xlat8.x;
    TGSM1[x_1147].value[0i] = bitcast<u32>(x_1149);
    let x_1152 : i32 = u_xlati16;
    let x_1154 : f32 = u_xlat8.z;
    TGSM1[x_1152].value[0i] = bitcast<u32>(x_1154);
  }
  workgroupBarrier();
  let x_1158 : u32 = gl_LocalInvocationID.y;
  let x_1162 : u32 = gl_LocalInvocationID.x;
  u_xlati0 = ((bitcast<i32>(x_1158) * 16i) + bitcast<i32>(x_1162));
  let x_1165 : i32 = u_xlati0;
  u_xlati8 = (vec3<i32>(x_1165, x_1165, x_1165) + vec3<i32>(16i, 17i, 1i));
  let x_1170 : i32 = u_xlati8.x;
  let x_1172 : u32 = TGSM1[x_1170].value[0i];
  u_xlat1.y = bitcast<f32>(x_1172);
  let x_1176 : i32 = u_xlati8.y;
  let x_1178 : u32 = TGSM1[x_1176].value[0i];
  u_xlat1.z = bitcast<f32>(x_1178);
  let x_1182 : i32 = u_xlati8.z;
  let x_1184 : u32 = TGSM1[x_1182].value[0i];
  u_xlat1.w = bitcast<f32>(x_1184);
  let x_1187 : i32 = u_xlati0;
  let x_1189 : u32 = TGSM1[x_1187].value[0i];
  u_xlat1.x = bitcast<f32>(x_1189);
  let x_1193 : vec3<u32> = gl_GlobalInvocationID;
  let x_1195 : vec2<f32> = vec2<f32>(vec2<u32>(x_1193.x, x_1193.y));
  let x_1196 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1195.x, x_1195.y, x_1196.z, x_1196.w);
  let x_1198 : vec4<f32> = u_xlat0;
  let x_1201 : vec4<f32> = x_65.InvLowResolution;
  let x_1203 : vec2<f32> = (vec2<f32>(x_1198.x, x_1198.y) * vec2<f32>(x_1201.x, x_1201.y));
  let x_1204 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1203.x, x_1203.y, x_1204.z, x_1204.w);
  let x_1208 : vec3<u32> = gl_GlobalInvocationID;
  u_xlatu2 = (vec4<u32>(x_1208.x, x_1208.y, x_1208.y, x_1208.y) << vec4<u32>(1u, 1u, 1u, 1u));
  let x_1212 : vec4<u32> = u_xlatu2;
  u_xlat16 = vec2<f32>(vec2<u32>(x_1212.x, x_1212.w));
  let x_1215 : vec2<f32> = u_xlat16;
  let x_1217 : vec4<f32> = x_65.InvHighResolution;
  u_xlat16 = (x_1215 * vec2<f32>(x_1217.x, x_1217.y));
  let x_1223 : vec4<f32> = u_xlat0;
  let x_1225 : vec4<f32> = textureGather(0i, LoResDB, samplerLoResDB, vec2<f32>(x_1223.x, x_1223.y));
  u_xlat3 = x_1225;
  let x_1231 : vec2<f32> = u_xlat16;
  let x_1232 : vec4<f32> = textureGather(0i, HiResDB, samplerHiResDB, x_1231);
  u_xlat0 = x_1232;
  let x_1234 : vec4<u32> = u_xlatu2;
  u_xlati4 = (bitcast<vec4<i32>>(vec4<u32>(x_1234.x, x_1234.w, x_1234.x, x_1234.w)) + vec4<i32>(-1i, 0i, 0i, -1i));
  let x_1240 : vec4<f32> = u_xlat3;
  let x_1242 : vec4<f32> = u_xlat0;
  u_xlat5 = (-(x_1240) + vec4<f32>(x_1242.x, x_1242.x, x_1242.x, x_1242.x));
  let x_1245 : vec4<f32> = u_xlat5;
  let x_1248 : vec4<f32> = x_65.AdditionalParams;
  u_xlat5 = (abs(x_1245) + vec4<f32>(x_1248.w, x_1248.w, x_1248.w, x_1248.w));
  let x_1254 : vec4<f32> = u_xlat5;
  u_xlat5 = (vec4<f32>(9.0f, 3.0f, 1.0f, 3.0f) / x_1254);
  let x_1256 : vec4<f32> = u_xlat5;
  u_xlat0.x = dot(x_1256, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_1260 : f32 = u_xlat0.x;
  let x_1262 : f32 = x_65.AdditionalParams.x;
  u_xlat0.x = (x_1260 + x_1262);
  let x_1265 : vec4<f32> = u_xlat1;
  let x_1267 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec4<f32>(x_1265.y, x_1265.z, x_1265.w, x_1265.x), x_1267);
  let x_1271 : f32 = u_xlat5.x;
  let x_1273 : f32 = x_65.AdditionalParams.x;
  u_xlat5.x = (x_1271 + x_1273);
  let x_1277 : f32 = u_xlat5.x;
  let x_1279 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1277 / x_1279);
  let x_1283 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_1283) + 1.0f);
  let x_1291 : vec4<i32> = u_xlati4;
  let x_1293 : vec4<f32> = u_xlat0;
  textureStore(AoResult_origX0X, vec2<i32>(x_1291.x, x_1291.y), vec4<f32>(x_1293.x, x_1293.x, x_1293.x, x_1293.x));
  let x_1295 : vec4<f32> = u_xlat3;
  let x_1298 : vec4<f32> = u_xlat0;
  u_xlat5 = (-(vec4<f32>(x_1295.y, x_1295.z, x_1295.w, x_1295.x)) + vec4<f32>(x_1298.y, x_1298.y, x_1298.y, x_1298.y));
  let x_1301 : vec4<f32> = u_xlat5;
  let x_1304 : vec4<f32> = x_65.AdditionalParams;
  u_xlat5 = (abs(x_1301) + vec4<f32>(x_1304.w, x_1304.w, x_1304.w, x_1304.w));
  let x_1307 : vec4<f32> = u_xlat5;
  u_xlat5 = (vec4<f32>(9.0f, 3.0f, 1.0f, 3.0f) / x_1307);
  let x_1309 : vec4<f32> = u_xlat5;
  u_xlat0.x = dot(x_1309, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_1312 : vec4<f32> = u_xlat1;
  let x_1314 : vec4<f32> = u_xlat5;
  u_xlat0.y = dot(vec4<f32>(x_1312.z, x_1312.w, x_1312.x, x_1312.y), x_1314);
  let x_1317 : vec4<f32> = u_xlat0;
  let x_1320 : vec4<f32> = x_65.AdditionalParams;
  let x_1322 : vec2<f32> = (vec2<f32>(x_1317.x, x_1317.y) + vec2<f32>(x_1320.x, x_1320.x));
  let x_1323 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1322.x, x_1322.y, x_1323.z, x_1323.w);
  let x_1326 : f32 = u_xlat0.y;
  let x_1328 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1326 / x_1328);
  let x_1332 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_1332) + 1.0f);
  let x_1337 : vec4<u32> = u_xlatu2;
  let x_1340 : vec4<f32> = u_xlat0;
  textureStore(AoResult_origX0X, bitcast<vec2<i32>>(vec2<u32>(x_1337.x, x_1337.w)), vec4<f32>(x_1340.x, x_1340.x, x_1340.x, x_1340.x));
  let x_1342 : vec4<f32> = u_xlat3;
  let x_1345 : vec4<f32> = u_xlat0;
  u_xlat5 = (-(vec4<f32>(x_1342.z, x_1342.w, x_1342.x, x_1342.y)) + vec4<f32>(x_1345.z, x_1345.z, x_1345.z, x_1345.z));
  let x_1348 : vec4<f32> = u_xlat5;
  let x_1351 : vec4<f32> = x_65.AdditionalParams;
  u_xlat5 = (abs(x_1348) + vec4<f32>(x_1351.w, x_1351.w, x_1351.w, x_1351.w));
  let x_1354 : vec4<f32> = u_xlat5;
  u_xlat5 = (vec4<f32>(9.0f, 3.0f, 1.0f, 3.0f) / x_1354);
  let x_1356 : vec4<f32> = u_xlat5;
  u_xlat0.x = dot(x_1356, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_1359 : vec4<f32> = u_xlat1;
  let x_1361 : vec4<f32> = u_xlat5;
  u_xlat0.y = dot(vec4<f32>(x_1359.w, x_1359.x, x_1359.y, x_1359.z), x_1361);
  let x_1364 : vec4<f32> = u_xlat0;
  let x_1367 : vec4<f32> = x_65.AdditionalParams;
  let x_1369 : vec2<f32> = (vec2<f32>(x_1364.x, x_1364.y) + vec2<f32>(x_1367.x, x_1367.x));
  let x_1370 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1369.x, x_1369.y, x_1370.z, x_1370.w);
  let x_1373 : f32 = u_xlat0.y;
  let x_1375 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1373 / x_1375);
  let x_1379 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_1379) + 1.0f);
  let x_1384 : vec4<i32> = u_xlati4;
  let x_1386 : vec4<f32> = u_xlat0;
  textureStore(AoResult_origX0X, vec2<i32>(x_1384.z, x_1384.w), vec4<f32>(x_1386.x, x_1386.x, x_1386.x, x_1386.x));
  let x_1388 : vec4<u32> = u_xlatu2;
  u_xlati2 = (bitcast<vec4<i32>>(x_1388) + vec4<i32>(-1i, -1i, -1i, -1i));
  let x_1392 : vec4<f32> = u_xlat3;
  let x_1395 : vec4<f32> = u_xlat0;
  u_xlat0 = (-(vec4<f32>(x_1392.w, x_1392.x, x_1392.y, x_1392.z)) + vec4<f32>(x_1395.w, x_1395.w, x_1395.w, x_1395.w));
  let x_1398 : vec4<f32> = u_xlat0;
  let x_1401 : vec4<f32> = x_65.AdditionalParams;
  u_xlat0 = (abs(x_1398) + vec4<f32>(x_1401.w, x_1401.w, x_1401.w, x_1401.w));
  let x_1404 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(9.0f, 3.0f, 1.0f, 3.0f) / x_1404);
  let x_1406 : vec4<f32> = u_xlat0;
  u_xlat3.x = dot(x_1406, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_1410 : f32 = u_xlat3.x;
  let x_1412 : f32 = x_65.AdditionalParams.x;
  u_xlat3.x = (x_1410 + x_1412);
  let x_1415 : vec4<f32> = u_xlat1;
  let x_1416 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(x_1415, x_1416);
  let x_1420 : f32 = u_xlat0.x;
  let x_1422 : f32 = x_65.AdditionalParams.x;
  u_xlat0.x = (x_1420 + x_1422);
  let x_1426 : f32 = u_xlat0.x;
  let x_1428 : f32 = u_xlat3.x;
  u_xlat0.x = (x_1426 / x_1428);
  let x_1432 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_1432) + 1.0f);
  let x_1437 : vec4<i32> = u_xlati2;
  let x_1439 : vec4<f32> = u_xlat0;
  textureStore(AoResult_origX0X, vec2<i32>(x_1437.x, x_1437.y), vec4<f32>(x_1439.x, x_1439.x, x_1439.x, x_1439.x));
  return;
}

@compute @workgroup_size(8i, 8i, 1i)
fn main(@builtin(local_invocation_id) gl_LocalInvocationID_param : vec3<u32>, @builtin(global_invocation_id) gl_GlobalInvocationID_param : vec3<u32>, @builtin(local_invocation_index) gl_LocalInvocationIndex_param : u32) {
  gl_LocalInvocationID = gl_LocalInvocationID_param;
  gl_GlobalInvocationID = gl_GlobalInvocationID_param;
  gl_LocalInvocationIndex = gl_LocalInvocationIndex_param;
  main_1();
}

