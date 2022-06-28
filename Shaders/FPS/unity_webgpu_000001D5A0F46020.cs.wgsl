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

var<workgroup> TGSM1 : array<S, 256u>;

var<private> u_xlati24 : i32;

var<private> u_xlati17 : vec2<i32>;

var<private> u_xlat2 : vec4<f32>;

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

@group(0) @binding(4) var HiResAO : texture_2d<f32>;

@group(0) @binding(9) var samplerHiResAO : sampler;

@group(0) @binding(2) var HiResDB : texture_2d<f32>;

@group(0) @binding(7) var samplerHiResDB : sampler;

var<private> u_xlati5 : vec4<i32>;

@group(0) @binding(5) var AoResult_origX0X : texture_storage_2d<r32float, write>;

fn main_1() {
  var x_517 : f32;
  var x_527 : f32;
  var x_546 : f32;
  var x_557 : f32;
  var x_568 : f32;
  var x_629 : f32;
  var x_639 : f32;
  var x_651 : f32;
  var x_692 : f32;
  var x_709 : f32;
  var x_1031 : f32;
  var x_1041 : f32;
  var x_1061 : f32;
  var x_1072 : f32;
  var x_1085 : f32;
  var x_1118 : f32;
  var x_1144 : f32;
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
    u_xlat4.x = bitcast<f32>(x_280);
    let x_285 : i32 = u_xlati1.y;
    let x_287 : u32 = TGSM0[x_285].value[0i];
    u_xlat12 = bitcast<f32>(x_287);
    let x_291 : i32 = u_xlati1.z;
    let x_293 : u32 = TGSM0[x_291].value[0i];
    u_xlat17 = bitcast<f32>(x_293);
    let x_297 : i32 = u_xlati1.w;
    let x_299 : u32 = TGSM0[x_297].value[0i];
    u_xlat25 = bitcast<f32>(x_299);
    let x_303 : i32 = u_xlati3.x;
    let x_305 : u32 = TGSM0[x_303].value[0i];
    u_xlat3.x = bitcast<f32>(x_305);
    let x_310 : i32 = u_xlati3.y;
    let x_312 : u32 = TGSM0[x_310].value[0i];
    u_xlat11 = bitcast<f32>(x_312);
    let x_314 : f32 = u_xlat27;
    let x_317 : f32 = u_xlat4.x;
    u_xlat27 = (-(x_314) + x_317);
    let x_320 : f32 = u_xlat4.x;
    let x_322 : f32 = u_xlat12;
    u_xlat4.x = (-(x_320) + x_322);
    let x_325 : f32 = u_xlat12;
    let x_327 : f32 = u_xlat17;
    u_xlat12 = (-(x_325) + x_327);
    let x_329 : f32 = u_xlat17;
    let x_331 : f32 = u_xlat25;
    u_xlat17 = (-(x_329) + x_331);
    let x_333 : f32 = u_xlat25;
    let x_336 : f32 = u_xlat3.x;
    u_xlat25 = (-(x_333) + x_336);
    let x_339 : f32 = u_xlat3.x;
    let x_341 : f32 = u_xlat11;
    u_xlat3.x = (-(x_339) + x_341);
    let x_344 : f32 = u_xlat27;
    let x_345 : f32 = u_xlat27;
    let x_349 : f32 = x_65.AdditionalParams.y;
    u_xlat11 = ((x_344 * x_345) + x_349);
    let x_353 : f32 = u_xlat4.x;
    let x_355 : f32 = u_xlat4.x;
    let x_358 : f32 = x_65.AdditionalParams.y;
    u_xlat20 = ((x_353 * x_355) + x_358);
    let x_361 : f32 = u_xlat12;
    let x_362 : f32 = u_xlat12;
    let x_365 : f32 = x_65.AdditionalParams.y;
    u_xlat28 = ((x_361 * x_362) + x_365);
    let x_368 : f32 = u_xlat17;
    let x_369 : f32 = u_xlat17;
    let x_372 : f32 = x_65.AdditionalParams.y;
    u_xlat5 = ((x_368 * x_369) + x_372);
    let x_375 : f32 = u_xlat25;
    let x_376 : f32 = u_xlat25;
    let x_379 : f32 = x_65.AdditionalParams.y;
    u_xlat13 = ((x_375 * x_376) + x_379);
    let x_383 : f32 = u_xlat3.x;
    let x_385 : f32 = u_xlat3.x;
    let x_388 : f32 = x_65.AdditionalParams.y;
    u_xlat21 = ((x_383 * x_385) + x_388);
    let x_390 : f32 = u_xlat27;
    let x_392 : f32 = u_xlat4.x;
    let x_395 : f32 = x_65.AdditionalParams.y;
    u_xlat27 = ((x_390 * x_392) + x_395);
    let x_397 : f32 = u_xlat27;
    let x_398 : f32 = u_xlat27;
    u_xlat27 = (x_397 * x_398);
    let x_400 : f32 = u_xlat11;
    let x_401 : f32 = u_xlat20;
    u_xlat11 = (x_400 * x_401);
    let x_403 : f32 = u_xlat11;
    let x_405 : f32 = x_65.AdditionalParams.z;
    u_xlat11 = (x_403 * x_405);
    let x_408 : f32 = u_xlat11;
    let x_409 : f32 = u_xlat27;
    u_xlatb11 = (x_408 < x_409);
    let x_412 : f32 = u_xlat4.x;
    let x_413 : f32 = u_xlat12;
    let x_416 : f32 = x_65.AdditionalParams.y;
    u_xlat27 = ((x_412 * x_413) + x_416);
    let x_418 : f32 = u_xlat27;
    let x_419 : f32 = u_xlat27;
    u_xlat27 = (x_418 * x_419);
    let x_421 : f32 = u_xlat28;
    let x_422 : f32 = u_xlat20;
    u_xlat4.x = (x_421 * x_422);
    let x_426 : f32 = u_xlat4.x;
    let x_428 : f32 = x_65.AdditionalParams.z;
    u_xlat4.x = (x_426 * x_428);
    let x_433 : f32 = u_xlat4.x;
    let x_434 : f32 = u_xlat27;
    u_xlatb27 = (x_433 < x_434);
    let x_436 : f32 = u_xlat12;
    let x_437 : f32 = u_xlat17;
    let x_440 : f32 = x_65.AdditionalParams.y;
    u_xlat4.x = ((x_436 * x_437) + x_440);
    let x_444 : f32 = u_xlat4.x;
    let x_446 : f32 = u_xlat4.x;
    u_xlat4.x = (x_444 * x_446);
    let x_449 : f32 = u_xlat28;
    let x_450 : f32 = u_xlat5;
    u_xlat12 = (x_449 * x_450);
    let x_452 : f32 = u_xlat12;
    let x_454 : f32 = x_65.AdditionalParams.z;
    u_xlat12 = (x_452 * x_454);
    let x_457 : f32 = u_xlat12;
    let x_459 : f32 = u_xlat4.x;
    u_xlatb4 = (x_457 < x_459);
    let x_461 : f32 = u_xlat17;
    let x_462 : f32 = u_xlat25;
    let x_465 : f32 = x_65.AdditionalParams.y;
    u_xlat17 = ((x_461 * x_462) + x_465);
    let x_467 : f32 = u_xlat17;
    let x_468 : f32 = u_xlat17;
    u_xlat17 = (x_467 * x_468);
    let x_470 : f32 = u_xlat13;
    let x_471 : f32 = u_xlat5;
    u_xlat12 = (x_470 * x_471);
    let x_473 : f32 = u_xlat12;
    let x_475 : f32 = x_65.AdditionalParams.z;
    u_xlat12 = (x_473 * x_475);
    let x_478 : f32 = u_xlat12;
    let x_479 : f32 = u_xlat17;
    u_xlatb17 = (x_478 < x_479);
    let x_481 : f32 = u_xlat25;
    let x_483 : f32 = u_xlat3.x;
    let x_486 : f32 = x_65.AdditionalParams.y;
    u_xlat25 = ((x_481 * x_483) + x_486);
    let x_488 : f32 = u_xlat25;
    let x_489 : f32 = u_xlat25;
    u_xlat25 = (x_488 * x_489);
    let x_491 : f32 = u_xlat21;
    let x_492 : f32 = u_xlat13;
    u_xlat3.x = (x_491 * x_492);
    let x_496 : f32 = u_xlat3.x;
    let x_498 : f32 = x_65.AdditionalParams.z;
    u_xlat3.x = (x_496 * x_498);
    let x_503 : f32 = u_xlat3.x;
    let x_504 : f32 = u_xlat25;
    u_xlatb25 = (x_503 < x_504);
    let x_507 : bool = u_xlatb27;
    let x_508 : bool = u_xlatb11;
    u_xlatb3 = (x_507 | x_508);
    let x_510 : bool = u_xlatb3;
    u_xlati3.x = select(0i, 1i, x_510);
    let x_514 : i32 = u_xlati3.x;
    if ((x_514 != 0i)) {
      let x_520 : f32 = u_xlat24;
      x_517 = x_520;
    } else {
      let x_523 : f32 = u_xlat2.x;
      x_517 = x_523;
    }
    let x_524 : f32 = x_517;
    u_xlat3.x = x_524;
    let x_526 : bool = u_xlatb11;
    if (x_526) {
      let x_531 : f32 = u_xlat16.x;
      x_527 = x_531;
    } else {
      let x_534 : f32 = u_xlat3.x;
      x_527 = x_534;
    }
    let x_535 : f32 = x_527;
    u_xlat16.x = x_535;
    let x_537 : bool = u_xlatb27;
    let x_538 : bool = u_xlatb4;
    u_xlatb11 = (x_537 | x_538);
    let x_541 : bool = u_xlatb11;
    u_xlati11 = select(0i, 1i, x_541);
    let x_544 : i32 = u_xlati11;
    if ((x_544 != 0i)) {
      let x_550 : f32 = u_xlat2.x;
      x_546 = x_550;
    } else {
      let x_552 : f32 = u_xlat10;
      x_546 = x_552;
    }
    let x_553 : f32 = x_546;
    u_xlat7 = x_553;
    let x_555 : i32 = u_xlati11;
    if ((x_555 != 0i)) {
      let x_560 : f32 = u_xlat10;
      x_557 = x_560;
    } else {
      let x_563 : f32 = u_xlat2.x;
      x_557 = x_563;
    }
    let x_564 : f32 = x_557;
    u_xlat6.x = x_564;
    let x_566 : f32 = u_xlat7;
    u_xlat5 = x_566;
    let x_567 : bool = u_xlatb4;
    if (x_567) {
      let x_572 : f32 = u_xlat18.x;
      x_568 = x_572;
    } else {
      let x_575 : f32 = u_xlat6.x;
      x_568 = x_575;
    }
    let x_576 : f32 = x_568;
    u_xlat11 = x_576;
    let x_578 : f32 = u_xlat16.x;
    let x_579 : f32 = u_xlat11;
    u_xlat16.x = (x_578 + x_579);
    let x_583 : f32 = u_xlat16.x;
    let x_587 : f32 = u_xlat3.x;
    u_xlat16.x = ((x_583 * 0.5f) + x_587);
    let x_591 : f32 = u_xlat2.x;
    let x_593 : f32 = u_xlat16.x;
    u_xlat16.x = (x_591 + x_593);
    let x_597 : f32 = u_xlat6.x;
    let x_599 : f32 = u_xlat16.x;
    u_xlat16.x = (x_597 + x_599);
    let x_603 : f32 = u_xlat16.x;
    u_xlat16.x = (x_603 * 0.25f);
    let x_611 : i32 = u_xlati0;
    let x_613 : f32 = u_xlat16.x;
    TGSM2[x_611].value[0i] = bitcast<u32>(x_613);
    let x_616 : bool = u_xlatb27;
    let x_617 : f32 = u_xlat24;
    let x_618 : f32 = u_xlat5;
    u_xlat16.x = select(x_618, x_617, x_616);
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
    u_xlat6.x = x_646;
    let x_648 : f32 = u_xlat7;
    u_xlat3.x = x_648;
    let x_650 : bool = u_xlatb17;
    if (x_650) {
      let x_654 : f32 = u_xlat26;
      x_651 = x_654;
    } else {
      let x_657 : f32 = u_xlat6.x;
      x_651 = x_657;
    }
    let x_658 : f32 = x_651;
    u_xlat24 = x_658;
    let x_659 : f32 = u_xlat24;
    let x_661 : f32 = u_xlat16.x;
    u_xlat16.x = (x_659 + x_661);
    let x_665 : f32 = u_xlat16.x;
    let x_667 : f32 = u_xlat5;
    u_xlat16.x = ((x_665 * 0.5f) + x_667);
    let x_670 : f32 = u_xlat10;
    let x_672 : f32 = u_xlat16.x;
    u_xlat16.x = (x_670 + x_672);
    let x_676 : f32 = u_xlat6.x;
    let x_678 : f32 = u_xlat16.x;
    u_xlat16.x = (x_676 + x_678);
    let x_682 : f32 = u_xlat16.x;
    u_xlat16.x = (x_682 * 0.25f);
    let x_686 : i32 = u_xlati1.x;
    let x_688 : f32 = u_xlat16.x;
    TGSM2[x_686].value[0i] = bitcast<u32>(x_688);
    let x_691 : bool = u_xlatb4;
    if (x_691) {
      let x_696 : f32 = u_xlat2.x;
      x_692 = x_696;
    } else {
      let x_699 : f32 = u_xlat3.x;
      x_692 = x_699;
    }
    let x_700 : f32 = x_692;
    u_xlat16.x = x_700;
    let x_702 : bool = u_xlatb17;
    let x_703 : bool = u_xlatb25;
    u_xlatb24 = (x_702 | x_703);
    let x_705 : bool = u_xlatb24;
    u_xlati24 = select(0i, 1i, x_705);
    let x_707 : i32 = u_xlati24;
    if ((x_707 != 0i)) {
      let x_712 : f32 = u_xlat26;
      x_709 = x_712;
    } else {
      let x_715 : f32 = u_xlat18.x;
      x_709 = x_715;
    }
    let x_716 : f32 = x_709;
    u_xlat24 = x_716;
    let x_717 : bool = u_xlatb25;
    let x_718 : f32 = u_xlat19;
    let x_719 : f32 = u_xlat24;
    u_xlat1.x = select(x_719, x_718, x_717);
    let x_723 : f32 = u_xlat16.x;
    let x_725 : f32 = u_xlat1.x;
    u_xlat16.x = (x_723 + x_725);
    let x_729 : f32 = u_xlat16.x;
    let x_732 : f32 = u_xlat3.x;
    u_xlat16.x = ((x_729 * 0.5f) + x_732);
    let x_736 : f32 = u_xlat18.x;
    let x_738 : f32 = u_xlat16.x;
    u_xlat16.x = (x_736 + x_738);
    let x_741 : f32 = u_xlat24;
    let x_743 : f32 = u_xlat16.x;
    u_xlat16.x = (x_741 + x_743);
    let x_747 : f32 = u_xlat16.x;
    u_xlat16.x = (x_747 * 0.25f);
    let x_751 : i32 = u_xlati1.y;
    let x_753 : f32 = u_xlat16.x;
    TGSM2[x_751].value[0i] = bitcast<u32>(x_753);
  }
  workgroupBarrier();
  let x_757 : bool = u_xlatb0.y;
  if (x_757) {
    let x_760 : u32 = gl_LocalInvocationIndex;
    u_xlatu0 = (x_760 / 9u);
    let x_763 : u32 = gl_LocalInvocationIndex;
    u_xlatu1 = (x_763 % 9u);
    let x_765 : u32 = u_xlatu0;
    let x_768 : u32 = u_xlatu1;
    u_xlati0 = ((bitcast<i32>(x_765) * 32i) + bitcast<i32>(x_768));
    let x_771 : i32 = u_xlati0;
    let x_773 : u32 = TGSM2[x_771].value[0i];
    u_xlat8.x = bitcast<f32>(x_773);
    let x_776 : i32 = u_xlati0;
    u_xlati16 = (x_776 + 16i);
    let x_778 : i32 = u_xlati16;
    let x_780 : u32 = TGSM2[x_778].value[0i];
    u_xlat24 = bitcast<f32>(x_780);
    let x_782 : i32 = u_xlati0;
    u_xlati1 = (vec4<i32>(x_782, x_782, x_782, x_782) + vec4<i32>(32i, 48i, 64i, 80i));
    let x_790 : i32 = u_xlati1.x;
    let x_792 : u32 = TGSM2[x_790].value[0i];
    u_xlat1.x = bitcast<f32>(x_792);
    let x_797 : i32 = u_xlati1.y;
    let x_799 : u32 = TGSM2[x_797].value[0i];
    u_xlat9 = bitcast<f32>(x_799);
    let x_802 : i32 = u_xlati1.z;
    let x_804 : u32 = TGSM2[x_802].value[0i];
    u_xlat17 = bitcast<f32>(x_804);
    let x_807 : i32 = u_xlati1.w;
    let x_809 : u32 = TGSM2[x_807].value[0i];
    u_xlat25 = bitcast<f32>(x_809);
    let x_812 : i32 = u_xlati0;
    u_xlati2 = (vec4<i32>(x_812, x_812, x_812, x_812) + vec4<i32>(2i, 18i, 34i, 50i));
    let x_820 : i32 = u_xlati2.x;
    let x_822 : u32 = TGSM0[x_820].value[0i];
    u_xlat2.x = bitcast<f32>(x_822);
    let x_826 : i32 = u_xlati2.y;
    let x_828 : u32 = TGSM0[x_826].value[0i];
    u_xlat10 = bitcast<f32>(x_828);
    let x_831 : i32 = u_xlati2.z;
    let x_833 : u32 = TGSM0[x_831].value[0i];
    u_xlat18.x = bitcast<f32>(x_833);
    let x_837 : i32 = u_xlati2.w;
    let x_839 : u32 = TGSM0[x_837].value[0i];
    u_xlat26 = bitcast<f32>(x_839);
    let x_841 : i32 = u_xlati0;
    u_xlati3 = (vec2<i32>(x_841, x_841) + vec2<i32>(66i, 82i));
    let x_848 : i32 = u_xlati3.x;
    let x_850 : u32 = TGSM0[x_848].value[0i];
    u_xlat3.x = bitcast<f32>(x_850);
    let x_854 : i32 = u_xlati3.y;
    let x_856 : u32 = TGSM0[x_854].value[0i];
    u_xlat11 = bitcast<f32>(x_856);
    let x_859 : f32 = u_xlat2.x;
    let x_861 : f32 = u_xlat10;
    u_xlat2.x = (-(x_859) + x_861);
    let x_864 : f32 = u_xlat10;
    let x_867 : f32 = u_xlat18.x;
    u_xlat10 = (-(x_864) + x_867);
    let x_870 : f32 = u_xlat18.x;
    let x_872 : f32 = u_xlat26;
    u_xlat18.x = (-(x_870) + x_872);
    let x_875 : f32 = u_xlat26;
    let x_878 : f32 = u_xlat3.x;
    u_xlat26 = (-(x_875) + x_878);
    let x_881 : f32 = u_xlat3.x;
    let x_883 : f32 = u_xlat11;
    u_xlat3.x = (-(x_881) + x_883);
    let x_887 : f32 = u_xlat2.x;
    let x_889 : f32 = u_xlat2.x;
    let x_892 : f32 = x_65.AdditionalParams.y;
    u_xlat11 = ((x_887 * x_889) + x_892);
    let x_894 : f32 = u_xlat10;
    let x_895 : f32 = u_xlat10;
    let x_898 : f32 = x_65.AdditionalParams.y;
    u_xlat19 = ((x_894 * x_895) + x_898);
    let x_901 : f32 = u_xlat18.x;
    let x_903 : f32 = u_xlat18.x;
    let x_906 : f32 = x_65.AdditionalParams.y;
    u_xlat27 = ((x_901 * x_903) + x_906);
    let x_908 : f32 = u_xlat26;
    let x_909 : f32 = u_xlat26;
    let x_912 : f32 = x_65.AdditionalParams.y;
    u_xlat4.x = ((x_908 * x_909) + x_912);
    let x_916 : f32 = u_xlat3.x;
    let x_918 : f32 = u_xlat3.x;
    let x_921 : f32 = x_65.AdditionalParams.y;
    u_xlat12 = ((x_916 * x_918) + x_921);
    let x_924 : f32 = u_xlat2.x;
    let x_925 : f32 = u_xlat10;
    let x_928 : f32 = x_65.AdditionalParams.y;
    u_xlat2.x = ((x_924 * x_925) + x_928);
    let x_932 : f32 = u_xlat2.x;
    let x_934 : f32 = u_xlat2.x;
    u_xlat2.x = (x_932 * x_934);
    let x_937 : f32 = u_xlat19;
    let x_938 : f32 = u_xlat11;
    u_xlat11 = (x_937 * x_938);
    let x_940 : f32 = u_xlat11;
    let x_942 : f32 = x_65.AdditionalParams.z;
    u_xlat11 = (x_940 * x_942);
    let x_945 : f32 = u_xlat11;
    let x_947 : f32 = u_xlat2.x;
    u_xlatb2 = (x_945 < x_947);
    let x_949 : f32 = u_xlat10;
    let x_951 : f32 = u_xlat18.x;
    let x_954 : f32 = x_65.AdditionalParams.y;
    u_xlat10 = ((x_949 * x_951) + x_954);
    let x_956 : f32 = u_xlat10;
    let x_957 : f32 = u_xlat10;
    u_xlat10 = (x_956 * x_957);
    let x_959 : f32 = u_xlat27;
    let x_960 : f32 = u_xlat19;
    u_xlat11 = (x_959 * x_960);
    let x_962 : f32 = u_xlat11;
    let x_964 : f32 = x_65.AdditionalParams.z;
    u_xlat11 = (x_962 * x_964);
    let x_967 : f32 = u_xlat11;
    let x_968 : f32 = u_xlat10;
    u_xlatb10 = (x_967 < x_968);
    let x_971 : f32 = u_xlat18.x;
    let x_972 : f32 = u_xlat26;
    let x_975 : f32 = x_65.AdditionalParams.y;
    u_xlat18.x = ((x_971 * x_972) + x_975);
    let x_979 : f32 = u_xlat18.x;
    let x_981 : f32 = u_xlat18.x;
    u_xlat18.x = (x_979 * x_981);
    let x_984 : f32 = u_xlat27;
    let x_986 : f32 = u_xlat4.x;
    u_xlat11 = (x_984 * x_986);
    let x_988 : f32 = u_xlat11;
    let x_990 : f32 = x_65.AdditionalParams.z;
    u_xlat3.y = (x_988 * x_990);
    let x_993 : f32 = u_xlat26;
    let x_995 : f32 = u_xlat3.x;
    let x_998 : f32 = x_65.AdditionalParams.y;
    u_xlat26 = ((x_993 * x_995) + x_998);
    let x_1000 : f32 = u_xlat26;
    let x_1001 : f32 = u_xlat26;
    u_xlat18.y = (x_1000 * x_1001);
    let x_1004 : f32 = u_xlat12;
    let x_1006 : f32 = u_xlat4.x;
    u_xlat3.x = (x_1004 * x_1006);
    let x_1010 : f32 = u_xlat3.x;
    let x_1012 : f32 = x_65.AdditionalParams.z;
    u_xlat3.x = (x_1010 * x_1012);
    let x_1016 : vec4<f32> = u_xlat3;
    let x_1018 : vec2<f32> = u_xlat18;
    let x_1020 : vec4<bool> = (vec4<f32>(x_1016.y, x_1016.x, x_1016.y, x_1016.x) < vec4<f32>(x_1018.x, x_1018.y, x_1018.x, x_1018.y));
    u_xlatb18 = vec2<bool>(x_1020.x, x_1020.y);
    let x_1022 : bool = u_xlatb10;
    let x_1023 : bool = u_xlatb2;
    u_xlatb3 = (x_1022 | x_1023);
    let x_1025 : bool = u_xlatb3;
    u_xlati3.x = select(0i, 1i, x_1025);
    let x_1029 : i32 = u_xlati3.x;
    if ((x_1029 != 0i)) {
      let x_1034 : f32 = u_xlat24;
      x_1031 = x_1034;
    } else {
      let x_1037 : f32 = u_xlat1.x;
      x_1031 = x_1037;
    }
    let x_1038 : f32 = x_1031;
    u_xlat3.x = x_1038;
    let x_1040 : bool = u_xlatb2;
    if (x_1040) {
      let x_1045 : f32 = u_xlat8.x;
      x_1041 = x_1045;
    } else {
      let x_1048 : f32 = u_xlat3.x;
      x_1041 = x_1048;
    }
    let x_1049 : f32 = x_1041;
    u_xlat8.x = x_1049;
    let x_1051 : bool = u_xlatb10;
    let x_1053 : bool = u_xlatb18.x;
    u_xlatb2 = (x_1051 | x_1053);
    let x_1055 : bool = u_xlatb2;
    u_xlati2.x = select(0i, 1i, x_1055);
    let x_1059 : i32 = u_xlati2.x;
    if ((x_1059 != 0i)) {
      let x_1065 : f32 = u_xlat1.x;
      x_1061 = x_1065;
    } else {
      let x_1067 : f32 = u_xlat9;
      x_1061 = x_1067;
    }
    let x_1068 : f32 = x_1061;
    u_xlat7 = x_1068;
    let x_1070 : i32 = u_xlati2.x;
    if ((x_1070 != 0i)) {
      let x_1075 : f32 = u_xlat9;
      x_1072 = x_1075;
    } else {
      let x_1078 : f32 = u_xlat1.x;
      x_1072 = x_1078;
    }
    let x_1079 : f32 = x_1072;
    u_xlat4.x = x_1079;
    let x_1081 : f32 = u_xlat7;
    u_xlat2.x = x_1081;
    let x_1084 : bool = u_xlatb18.x;
    if (x_1084) {
      let x_1088 : f32 = u_xlat17;
      x_1085 = x_1088;
    } else {
      let x_1091 : f32 = u_xlat4.x;
      x_1085 = x_1091;
    }
    let x_1092 : f32 = x_1085;
    u_xlat11 = x_1092;
    let x_1094 : f32 = u_xlat8.x;
    let x_1095 : f32 = u_xlat11;
    u_xlat8.x = (x_1094 + x_1095);
    let x_1099 : f32 = u_xlat8.x;
    let x_1102 : f32 = u_xlat3.x;
    u_xlat8.x = ((x_1099 * 0.5f) + x_1102);
    let x_1106 : f32 = u_xlat1.x;
    let x_1108 : f32 = u_xlat8.x;
    u_xlat8.x = (x_1106 + x_1108);
    let x_1112 : f32 = u_xlat4.x;
    let x_1114 : f32 = u_xlat8.x;
    u_xlat8.x = (x_1112 + x_1114);
    let x_1117 : bool = u_xlatb10;
    if (x_1117) {
      let x_1121 : f32 = u_xlat24;
      x_1118 = x_1121;
    } else {
      let x_1124 : f32 = u_xlat2.x;
      x_1118 = x_1124;
    }
    let x_1125 : f32 = x_1118;
    u_xlat24 = x_1125;
    let x_1128 : bool = u_xlatb18.x;
    let x_1130 : bool = u_xlatb18.y;
    u_xlatb1 = (x_1128 | x_1130);
    let x_1132 : bool = u_xlatb1;
    u_xlati1.x = select(0i, 1i, x_1132);
    let x_1136 : i32 = u_xlati1.x;
    let x_1138 : f32 = u_xlat17;
    let x_1139 : f32 = u_xlat9;
    u_xlat1.x = select(x_1139, x_1138, (x_1136 != 0i));
    let x_1143 : bool = u_xlatb18.y;
    if (x_1143) {
      let x_1147 : f32 = u_xlat25;
      x_1144 = x_1147;
    } else {
      let x_1150 : f32 = u_xlat1.x;
      x_1144 = x_1150;
    }
    let x_1151 : f32 = x_1144;
    u_xlat17 = x_1151;
    let x_1152 : f32 = u_xlat24;
    let x_1153 : f32 = u_xlat17;
    u_xlat24 = (x_1152 + x_1153);
    let x_1155 : f32 = u_xlat24;
    let x_1158 : f32 = u_xlat2.x;
    u_xlat24 = ((x_1155 * 0.5f) + x_1158);
    let x_1160 : f32 = u_xlat9;
    let x_1161 : f32 = u_xlat24;
    u_xlat24 = (x_1160 + x_1161);
    let x_1164 : f32 = u_xlat1.x;
    let x_1165 : f32 = u_xlat24;
    u_xlat8.z = (x_1164 + x_1165);
    let x_1168 : vec3<f32> = u_xlat8;
    let x_1171 : vec2<f32> = (vec2<f32>(x_1168.x, x_1168.z) * vec2<f32>(0.25f, 0.25f));
    let x_1172 : vec3<f32> = u_xlat8;
    u_xlat8 = vec3<f32>(x_1171.x, x_1172.y, x_1171.y);
    let x_1174 : i32 = u_xlati0;
    let x_1176 : f32 = u_xlat8.x;
    TGSM1[x_1174].value[0i] = bitcast<u32>(x_1176);
    let x_1179 : i32 = u_xlati16;
    let x_1181 : f32 = u_xlat8.z;
    TGSM1[x_1179].value[0i] = bitcast<u32>(x_1181);
  }
  workgroupBarrier();
  let x_1185 : u32 = gl_LocalInvocationID.y;
  let x_1189 : u32 = gl_LocalInvocationID.x;
  u_xlati0 = ((bitcast<i32>(x_1185) * 16i) + bitcast<i32>(x_1189));
  let x_1192 : i32 = u_xlati0;
  u_xlati8 = (vec3<i32>(x_1192, x_1192, x_1192) + vec3<i32>(16i, 17i, 1i));
  let x_1197 : i32 = u_xlati8.x;
  let x_1199 : u32 = TGSM1[x_1197].value[0i];
  u_xlat1.y = bitcast<f32>(x_1199);
  let x_1203 : i32 = u_xlati8.y;
  let x_1205 : u32 = TGSM1[x_1203].value[0i];
  u_xlat1.z = bitcast<f32>(x_1205);
  let x_1209 : i32 = u_xlati8.z;
  let x_1211 : u32 = TGSM1[x_1209].value[0i];
  u_xlat1.w = bitcast<f32>(x_1211);
  let x_1214 : i32 = u_xlati0;
  let x_1216 : u32 = TGSM1[x_1214].value[0i];
  u_xlat1.x = bitcast<f32>(x_1216);
  let x_1220 : vec3<u32> = gl_GlobalInvocationID;
  let x_1222 : vec2<f32> = vec2<f32>(vec2<u32>(x_1220.x, x_1220.y));
  let x_1223 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1222.x, x_1222.y, x_1223.z, x_1223.w);
  let x_1225 : vec4<f32> = u_xlat0;
  let x_1228 : vec4<f32> = x_65.InvLowResolution;
  let x_1230 : vec2<f32> = (vec2<f32>(x_1225.x, x_1225.y) * vec2<f32>(x_1228.x, x_1228.y));
  let x_1231 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1230.x, x_1230.y, x_1231.z, x_1231.w);
  let x_1235 : vec3<u32> = gl_GlobalInvocationID;
  u_xlatu2 = (vec4<u32>(x_1235.x, x_1235.y, x_1235.y, x_1235.y) << vec4<u32>(1u, 1u, 1u, 1u));
  let x_1239 : vec4<u32> = u_xlatu2;
  u_xlat16 = vec2<f32>(vec2<u32>(x_1239.x, x_1239.w));
  let x_1242 : vec2<f32> = u_xlat16;
  let x_1244 : vec4<f32> = x_65.InvHighResolution;
  u_xlat16 = (x_1242 * vec2<f32>(x_1244.x, x_1244.y));
  let x_1252 : vec2<f32> = u_xlat16;
  let x_1253 : vec4<f32> = textureGather(0i, HiResAO, samplerHiResAO, x_1252);
  u_xlat3 = x_1253;
  let x_1257 : vec4<f32> = u_xlat0;
  let x_1259 : vec4<f32> = textureGather(0i, LoResDB, samplerLoResDB, vec2<f32>(x_1257.x, x_1257.y));
  u_xlat4 = x_1259;
  let x_1265 : vec2<f32> = u_xlat16;
  let x_1266 : vec4<f32> = textureGather(0i, HiResDB, samplerHiResDB, x_1265);
  u_xlat0 = x_1266;
  let x_1268 : vec4<u32> = u_xlatu2;
  u_xlati5 = (bitcast<vec4<i32>>(vec4<u32>(x_1268.x, x_1268.w, x_1268.x, x_1268.w)) + vec4<i32>(-1i, 0i, 0i, -1i));
  let x_1274 : vec4<f32> = u_xlat4;
  let x_1276 : vec4<f32> = u_xlat0;
  u_xlat6 = (-(x_1274) + vec4<f32>(x_1276.x, x_1276.x, x_1276.x, x_1276.x));
  let x_1279 : vec4<f32> = u_xlat6;
  let x_1282 : vec4<f32> = x_65.AdditionalParams;
  u_xlat6 = (abs(x_1279) + vec4<f32>(x_1282.w, x_1282.w, x_1282.w, x_1282.w));
  let x_1288 : vec4<f32> = u_xlat6;
  u_xlat6 = (vec4<f32>(9.0f, 3.0f, 1.0f, 3.0f) / x_1288);
  let x_1290 : vec4<f32> = u_xlat6;
  u_xlat0.x = dot(x_1290, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_1294 : f32 = u_xlat0.x;
  let x_1296 : f32 = x_65.AdditionalParams.x;
  u_xlat0.x = (x_1294 + x_1296);
  let x_1299 : vec4<f32> = u_xlat1;
  let x_1301 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec4<f32>(x_1299.y, x_1299.z, x_1299.w, x_1299.x), x_1301);
  let x_1305 : f32 = u_xlat6.x;
  let x_1307 : f32 = x_65.AdditionalParams.x;
  u_xlat6.x = (x_1305 + x_1307);
  let x_1311 : f32 = u_xlat3.x;
  let x_1313 : f32 = u_xlat6.x;
  u_xlat3.x = (x_1311 * x_1313);
  let x_1317 : f32 = u_xlat3.x;
  let x_1319 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1317 / x_1319);
  let x_1326 : vec4<i32> = u_xlati5;
  let x_1328 : vec4<f32> = u_xlat0;
  textureStore(AoResult_origX0X, vec2<i32>(x_1326.x, x_1326.y), vec4<f32>(x_1328.x, x_1328.x, x_1328.x, x_1328.x));
  let x_1330 : vec4<f32> = u_xlat4;
  let x_1333 : vec4<f32> = u_xlat0;
  u_xlat6 = (-(vec4<f32>(x_1330.y, x_1330.z, x_1330.w, x_1330.x)) + vec4<f32>(x_1333.y, x_1333.y, x_1333.y, x_1333.y));
  let x_1336 : vec4<f32> = u_xlat6;
  let x_1339 : vec4<f32> = x_65.AdditionalParams;
  u_xlat6 = (abs(x_1336) + vec4<f32>(x_1339.w, x_1339.w, x_1339.w, x_1339.w));
  let x_1342 : vec4<f32> = u_xlat6;
  u_xlat6 = (vec4<f32>(9.0f, 3.0f, 1.0f, 3.0f) / x_1342);
  let x_1344 : vec4<f32> = u_xlat6;
  u_xlat0.x = dot(x_1344, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_1347 : vec4<f32> = u_xlat1;
  let x_1349 : vec4<f32> = u_xlat6;
  u_xlat0.y = dot(vec4<f32>(x_1347.z, x_1347.w, x_1347.x, x_1347.y), x_1349);
  let x_1352 : vec4<f32> = u_xlat0;
  let x_1355 : vec4<f32> = x_65.AdditionalParams;
  let x_1357 : vec2<f32> = (vec2<f32>(x_1352.x, x_1352.y) + vec2<f32>(x_1355.x, x_1355.x));
  let x_1358 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1357.x, x_1357.y, x_1358.z, x_1358.w);
  let x_1361 : f32 = u_xlat0.y;
  let x_1363 : f32 = u_xlat3.y;
  u_xlat8.x = (x_1361 * x_1363);
  let x_1367 : f32 = u_xlat8.x;
  let x_1369 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1367 / x_1369);
  let x_1373 : vec4<u32> = u_xlatu2;
  let x_1376 : vec4<f32> = u_xlat0;
  textureStore(AoResult_origX0X, bitcast<vec2<i32>>(vec2<u32>(x_1373.x, x_1373.w)), vec4<f32>(x_1376.x, x_1376.x, x_1376.x, x_1376.x));
  let x_1378 : vec4<f32> = u_xlat4;
  let x_1381 : vec4<f32> = u_xlat0;
  u_xlat6 = (-(vec4<f32>(x_1378.z, x_1378.w, x_1378.x, x_1378.y)) + vec4<f32>(x_1381.z, x_1381.z, x_1381.z, x_1381.z));
  let x_1384 : vec4<f32> = u_xlat6;
  let x_1387 : vec4<f32> = x_65.AdditionalParams;
  u_xlat6 = (abs(x_1384) + vec4<f32>(x_1387.w, x_1387.w, x_1387.w, x_1387.w));
  let x_1390 : vec4<f32> = u_xlat6;
  u_xlat6 = (vec4<f32>(9.0f, 3.0f, 1.0f, 3.0f) / x_1390);
  let x_1392 : vec4<f32> = u_xlat6;
  u_xlat0.x = dot(x_1392, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_1395 : vec4<f32> = u_xlat1;
  let x_1397 : vec4<f32> = u_xlat6;
  u_xlat0.y = dot(vec4<f32>(x_1395.w, x_1395.x, x_1395.y, x_1395.z), x_1397);
  let x_1400 : vec4<f32> = u_xlat0;
  let x_1403 : vec4<f32> = x_65.AdditionalParams;
  let x_1405 : vec2<f32> = (vec2<f32>(x_1400.x, x_1400.y) + vec2<f32>(x_1403.x, x_1403.x));
  let x_1406 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1405.x, x_1405.y, x_1406.z, x_1406.w);
  let x_1409 : f32 = u_xlat0.y;
  let x_1411 : f32 = u_xlat3.z;
  u_xlat8.x = (x_1409 * x_1411);
  let x_1415 : f32 = u_xlat8.x;
  let x_1417 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1415 / x_1417);
  let x_1421 : vec4<i32> = u_xlati5;
  let x_1423 : vec4<f32> = u_xlat0;
  textureStore(AoResult_origX0X, vec2<i32>(x_1421.z, x_1421.w), vec4<f32>(x_1423.x, x_1423.x, x_1423.x, x_1423.x));
  let x_1425 : vec4<u32> = u_xlatu2;
  u_xlati2 = (bitcast<vec4<i32>>(x_1425) + vec4<i32>(-1i, -1i, -1i, -1i));
  let x_1429 : vec4<f32> = u_xlat4;
  let x_1432 : vec4<f32> = u_xlat0;
  u_xlat0 = (-(vec4<f32>(x_1429.w, x_1429.x, x_1429.y, x_1429.z)) + vec4<f32>(x_1432.w, x_1432.w, x_1432.w, x_1432.w));
  let x_1435 : vec4<f32> = u_xlat0;
  let x_1438 : vec4<f32> = x_65.AdditionalParams;
  u_xlat0 = (abs(x_1435) + vec4<f32>(x_1438.w, x_1438.w, x_1438.w, x_1438.w));
  let x_1441 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(9.0f, 3.0f, 1.0f, 3.0f) / x_1441);
  let x_1443 : vec4<f32> = u_xlat0;
  u_xlat3.x = dot(x_1443, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_1447 : f32 = u_xlat3.x;
  let x_1449 : f32 = x_65.AdditionalParams.x;
  u_xlat3.x = (x_1447 + x_1449);
  let x_1452 : vec4<f32> = u_xlat1;
  let x_1453 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(x_1452, x_1453);
  let x_1457 : f32 = u_xlat0.x;
  let x_1459 : f32 = x_65.AdditionalParams.x;
  u_xlat0.x = (x_1457 + x_1459);
  let x_1463 : f32 = u_xlat0.x;
  let x_1465 : f32 = u_xlat3.w;
  u_xlat0.x = (x_1463 * x_1465);
  let x_1469 : f32 = u_xlat0.x;
  let x_1471 : f32 = u_xlat3.x;
  u_xlat0.x = (x_1469 / x_1471);
  let x_1475 : vec4<i32> = u_xlati2;
  let x_1477 : vec4<f32> = u_xlat0;
  textureStore(AoResult_origX0X, vec2<i32>(x_1475.x, x_1475.y), vec4<f32>(x_1477.x, x_1477.x, x_1477.x, x_1477.x));
  return;
}

@compute @workgroup_size(8i, 8i, 1i)
fn main(@builtin(local_invocation_id) gl_LocalInvocationID_param : vec3<u32>, @builtin(global_invocation_id) gl_GlobalInvocationID_param : vec3<u32>, @builtin(local_invocation_index) gl_LocalInvocationIndex_param : u32) {
  gl_LocalInvocationID = gl_LocalInvocationID_param;
  gl_GlobalInvocationID = gl_GlobalInvocationID_param;
  gl_LocalInvocationIndex = gl_LocalInvocationIndex_param;
  main_1();
}

