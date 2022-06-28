struct PGlobals {
  x_Distortion_Amount : vec4<f32>,
  x_Distortion_CenterScale : vec4<f32>,
  x_Dithering_Coords : vec4<f32>,
  x_Lut2D_Params : vec3<f32>,
}

var<private> u_xlat0 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> u_xlat8 : vec2<f32>;

@group(0) @binding(0) var<uniform> x_26 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlatb5 : bool;

var<private> u_xlat5 : vec2<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec2<f32>;

var<private> u_xlat9 : f32;

var<private> u_xlat13 : f32;

var<private> u_xlat6 : f32;

var<private> u_xlat10 : f32;

var<private> u_xlatb14 : bool;

var<private> u_xlatb1 : bool;

@group(0) @binding(3) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

var<private> u_xlatb0 : vec3<bool>;

var<private> u_xlat4 : vec3<f32>;

@group(0) @binding(4) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(8) var sampler_Lut2D : sampler;

var<private> u_xlat12 : f32;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_DitheringTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_224 : f32;
  var x_322 : f32;
  var x_334 : f32;
  var x_347 : f32;
  var x_474 : f32;
  var x_486 : f32;
  var x_498 : f32;
  var x_583 : f32;
  var x_595 : f32;
  var x_607 : f32;
  var x_649 : f32;
  var x_662 : f32;
  var x_674 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD1;
  let x_16 : vec2<f32> = (x_13 + vec2<f32>(-0.5f, -0.5f));
  let x_17 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_16.x, x_16.y, x_17.z);
  let x_21 : vec3<f32> = u_xlat0;
  let x_31 : vec4<f32> = x_26.x_Distortion_Amount;
  u_xlat8 = ((vec2<f32>(x_21.x, x_21.y) * vec2<f32>(x_31.z, x_31.z)) + vec2<f32>(0.5f, 0.5f));
  let x_37 : vec3<f32> = u_xlat0;
  let x_40 : vec4<f32> = x_26.x_Distortion_Amount;
  let x_45 : vec4<f32> = x_26.x_Distortion_CenterScale;
  let x_48 : vec2<f32> = ((vec2<f32>(x_37.x, x_37.y) * vec2<f32>(x_40.z, x_40.z)) + -(vec2<f32>(x_45.x, x_45.y)));
  let x_49 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_48.x, x_48.y, x_49.z);
  let x_51 : vec3<f32> = u_xlat0;
  let x_54 : vec4<f32> = x_26.x_Distortion_CenterScale;
  let x_56 : vec2<f32> = (vec2<f32>(x_51.x, x_51.y) * vec2<f32>(x_54.z, x_54.w));
  let x_57 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_56.x, x_56.y, x_57.z);
  let x_61 : vec3<f32> = u_xlat0;
  let x_63 : vec3<f32> = u_xlat0;
  u_xlat1.x = dot(vec2<f32>(x_61.x, x_61.y), vec2<f32>(x_63.x, x_63.y));
  let x_71 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_71);
  let x_81 : f32 = x_26.x_Distortion_Amount.w;
  u_xlatb5 = (0.0f < x_81);
  let x_83 : bool = u_xlatb5;
  if (x_83) {
    let x_87 : vec4<f32> = u_xlat1;
    let x_90 : vec4<f32> = x_26.x_Distortion_Amount;
    u_xlat5 = (vec2<f32>(x_87.x, x_87.x) * vec2<f32>(x_90.x, x_90.y));
    let x_95 : f32 = u_xlat5.x;
    u_xlat2.x = sin(x_95);
    let x_100 : f32 = u_xlat5.x;
    u_xlat3.x = cos(x_100);
    let x_104 : f32 = u_xlat2.x;
    let x_106 : f32 = u_xlat3.x;
    u_xlat5.x = (x_104 / x_106);
    let x_113 : f32 = u_xlat5.y;
    u_xlat9 = (1.0f / x_113);
    let x_116 : f32 = u_xlat5.x;
    let x_117 : f32 = u_xlat9;
    u_xlat5.x = ((x_116 * x_117) + -1.0f);
    let x_122 : vec3<f32> = u_xlat0;
    let x_124 : vec2<f32> = u_xlat5;
    let x_127 : vec2<f32> = u_xlat8;
    u_xlat5 = ((vec2<f32>(x_122.x, x_122.y) * vec2<f32>(x_124.x, x_124.x)) + x_127);
  } else {
    let x_132 : f32 = u_xlat1.x;
    u_xlat13 = (1.0f / x_132);
    let x_134 : f32 = u_xlat13;
    let x_136 : f32 = x_26.x_Distortion_Amount.x;
    u_xlat13 = (x_134 * x_136);
    let x_139 : f32 = u_xlat1.x;
    let x_141 : f32 = x_26.x_Distortion_Amount.y;
    u_xlat1.x = (x_139 * x_141);
    let x_145 : f32 = u_xlat1.x;
    u_xlat2.x = min(abs(x_145), 1.0f);
    let x_151 : f32 = u_xlat1.x;
    u_xlat6 = max(abs(x_151), 1.0f);
    let x_154 : f32 = u_xlat6;
    u_xlat6 = (1.0f / x_154);
    let x_156 : f32 = u_xlat6;
    let x_158 : f32 = u_xlat2.x;
    u_xlat2.x = (x_156 * x_158);
    let x_162 : f32 = u_xlat2.x;
    let x_164 : f32 = u_xlat2.x;
    u_xlat6 = (x_162 * x_164);
    let x_167 : f32 = u_xlat6;
    u_xlat10 = ((x_167 * 0.0208351f) + -0.085133001f);
    let x_172 : f32 = u_xlat6;
    let x_173 : f32 = u_xlat10;
    u_xlat10 = ((x_172 * x_173) + 0.180141002f);
    let x_177 : f32 = u_xlat6;
    let x_178 : f32 = u_xlat10;
    u_xlat10 = ((x_177 * x_178) + -0.330299497f);
    let x_182 : f32 = u_xlat6;
    let x_183 : f32 = u_xlat10;
    u_xlat6 = ((x_182 * x_183) + 0.999866009f);
    let x_187 : f32 = u_xlat6;
    let x_189 : f32 = u_xlat2.x;
    u_xlat10 = (x_187 * x_189);
    let x_193 : f32 = u_xlat1.x;
    u_xlatb14 = (1.0f < abs(x_193));
    let x_196 : f32 = u_xlat10;
    u_xlat10 = ((x_196 * -2.0f) + 1.570796371f);
    let x_201 : bool = u_xlatb14;
    let x_202 : f32 = u_xlat10;
    u_xlat10 = select(0.0f, x_202, x_201);
    let x_205 : f32 = u_xlat2.x;
    let x_206 : f32 = u_xlat6;
    let x_208 : f32 = u_xlat10;
    u_xlat2.x = ((x_205 * x_206) + x_208);
    let x_212 : f32 = u_xlat1.x;
    u_xlat1.x = min(x_212, 1.0f);
    let x_217 : f32 = u_xlat1.x;
    let x_219 : f32 = u_xlat1.x;
    u_xlatb1 = (x_217 < -(x_219));
    let x_222 : bool = u_xlatb1;
    if (x_222) {
      let x_228 : f32 = u_xlat2.x;
      x_224 = -(x_228);
    } else {
      let x_232 : f32 = u_xlat2.x;
      x_224 = x_232;
    }
    let x_233 : f32 = x_224;
    u_xlat1.x = x_233;
    let x_235 : f32 = u_xlat13;
    let x_237 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_235 * x_237) + -1.0f);
    let x_241 : vec3<f32> = u_xlat0;
    let x_243 : vec4<f32> = u_xlat1;
    let x_246 : vec2<f32> = u_xlat8;
    u_xlat5 = ((vec2<f32>(x_241.x, x_241.y) * vec2<f32>(x_243.x, x_243.x)) + x_246);
  }
  let x_259 : vec2<f32> = vs_TEXCOORD0;
  let x_260 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_259);
  u_xlat0.x = x_260.x;
  let x_268 : vec2<f32> = u_xlat5;
  let x_269 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_268);
  u_xlat1 = x_269;
  let x_270 : vec3<f32> = u_xlat0;
  let x_272 : vec4<f32> = u_xlat1;
  u_xlat0 = (vec3<f32>(x_270.x, x_270.x, x_270.x) * vec3<f32>(x_272.x, x_272.y, x_272.z));
  let x_275 : vec3<f32> = u_xlat0;
  u_xlat0 = clamp(x_275, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_280 : f32 = u_xlat1.w;
  u_xlat13 = x_280;
  let x_281 : f32 = u_xlat13;
  u_xlat13 = clamp(x_281, 0.0f, 1.0f);
  let x_283 : vec3<f32> = u_xlat0;
  let x_287 : vec3<f32> = (vec3<f32>(x_283.z, x_283.x, x_283.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_288 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_287.x, x_287.y, x_287.z, x_288.w);
  let x_290 : vec3<f32> = u_xlat0;
  u_xlat2 = max(vec3<f32>(x_290.z, x_290.x, x_290.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_295 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_295);
  let x_297 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_297 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_301 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_301);
  let x_303 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_303 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_315 : vec3<f32> = u_xlat0;
  let x_318 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_315.z, x_315.x, x_315.y, x_315.z));
  u_xlatb0 = vec3<bool>(x_318.x, x_318.y, x_318.z);
  let x_321 : bool = u_xlatb0.x;
  if (x_321) {
    let x_326 : f32 = u_xlat1.x;
    x_322 = x_326;
  } else {
    let x_329 : f32 = u_xlat2.x;
    x_322 = x_329;
  }
  let x_330 : f32 = x_322;
  u_xlat0.x = x_330;
  let x_333 : bool = u_xlatb0.y;
  if (x_333) {
    let x_338 : f32 = u_xlat1.y;
    x_334 = x_338;
  } else {
    let x_341 : f32 = u_xlat2.y;
    x_334 = x_341;
  }
  let x_342 : f32 = x_334;
  u_xlat0.y = x_342;
  let x_346 : bool = u_xlatb0.z;
  if (x_346) {
    let x_351 : f32 = u_xlat1.z;
    x_347 = x_351;
  } else {
    let x_354 : f32 = u_xlat2.z;
    x_347 = x_354;
  }
  let x_355 : f32 = x_347;
  u_xlat0.z = x_355;
  let x_358 : vec3<f32> = u_xlat0;
  let x_362 : vec3<f32> = x_26.x_Lut2D_Params;
  u_xlat4 = (x_358 * vec3<f32>(x_362.z, x_362.z, x_362.z));
  let x_366 : f32 = u_xlat4.x;
  u_xlat4.x = floor(x_366);
  let x_370 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_372 : vec2<f32> = (vec2<f32>(x_370.x, x_370.y) * vec2<f32>(0.5f, 0.5f));
  let x_373 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_372.x, x_372.y, x_373.z, x_373.w);
  let x_375 : vec3<f32> = u_xlat4;
  let x_378 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_381 : vec4<f32> = u_xlat1;
  let x_383 : vec2<f32> = ((vec2<f32>(x_375.y, x_375.z) * vec2<f32>(x_378.x, x_378.y)) + vec2<f32>(x_381.x, x_381.y));
  let x_384 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_384.x, x_383.x, x_383.y, x_384.w);
  let x_387 : f32 = u_xlat4.x;
  let x_389 : f32 = x_26.x_Lut2D_Params.y;
  let x_392 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_387 * x_389) + x_392);
  let x_400 : vec4<f32> = u_xlat1;
  let x_402 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_400.x, x_400.z));
  u_xlat2 = vec3<f32>(x_402.x, x_402.y, x_402.z);
  let x_405 : f32 = x_26.x_Lut2D_Params.y;
  u_xlat3.x = x_405;
  u_xlat3.y = 0.0f;
  let x_408 : vec4<f32> = u_xlat1;
  let x_410 : vec2<f32> = u_xlat3;
  u_xlat8 = (vec2<f32>(x_408.x, x_408.z) + x_410);
  let x_415 : vec2<f32> = u_xlat8;
  let x_416 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_415);
  let x_417 : vec3<f32> = vec3<f32>(x_416.x, x_416.y, x_416.z);
  let x_418 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_417.x, x_417.y, x_417.z, x_418.w);
  let x_421 : f32 = u_xlat0.x;
  let x_423 : f32 = x_26.x_Lut2D_Params.z;
  let x_426 : f32 = u_xlat4.x;
  u_xlat0.x = ((x_421 * x_423) + -(x_426));
  let x_430 : vec3<f32> = u_xlat2;
  let x_432 : vec4<f32> = u_xlat1;
  u_xlat4 = (-(x_430) + vec3<f32>(x_432.x, x_432.y, x_432.z));
  let x_435 : vec3<f32> = u_xlat0;
  let x_437 : vec3<f32> = u_xlat4;
  let x_439 : vec3<f32> = u_xlat2;
  u_xlat0 = ((vec3<f32>(x_435.x, x_435.x, x_435.x) * x_437) + x_439);
  let x_441 : vec3<f32> = u_xlat0;
  let x_444 : vec3<f32> = (x_441 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_445 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_444.x, x_444.y, x_444.z, x_445.w);
  let x_447 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_447 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_451 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_451 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_455 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_455), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_458 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_458);
  let x_460 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_460 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_464 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_464);
  let x_468 : vec3<f32> = u_xlat0;
  let x_470 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_468.x, x_468.y, x_468.z, x_468.x));
  u_xlatb0 = vec3<bool>(x_470.x, x_470.y, x_470.z);
  let x_473 : bool = u_xlatb0.x;
  if (x_473) {
    let x_478 : f32 = u_xlat1.x;
    x_474 = x_478;
  } else {
    let x_481 : f32 = u_xlat2.x;
    x_474 = x_481;
  }
  let x_482 : f32 = x_474;
  u_xlat0.x = x_482;
  let x_485 : bool = u_xlatb0.y;
  if (x_485) {
    let x_490 : f32 = u_xlat1.y;
    x_486 = x_490;
  } else {
    let x_493 : f32 = u_xlat2.y;
    x_486 = x_493;
  }
  let x_494 : f32 = x_486;
  u_xlat0.y = x_494;
  let x_497 : bool = u_xlatb0.z;
  if (x_497) {
    let x_502 : f32 = u_xlat1.z;
    x_498 = x_502;
  } else {
    let x_505 : f32 = u_xlat2.z;
    x_498 = x_505;
  }
  let x_506 : f32 = x_498;
  u_xlat0.z = x_506;
  let x_508 : vec2<f32> = vs_TEXCOORD0;
  let x_511 : vec4<f32> = x_26.x_Dithering_Coords;
  let x_515 : vec4<f32> = x_26.x_Dithering_Coords;
  let x_517 : vec2<f32> = ((x_508 * vec2<f32>(x_511.x, x_511.y)) + vec2<f32>(x_515.z, x_515.w));
  let x_518 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_517.x, x_517.y, x_518.z, x_518.w);
  let x_526 : vec4<f32> = u_xlat1;
  let x_528 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_526.x, x_526.y));
  u_xlat12 = x_528.w;
  let x_530 : f32 = u_xlat12;
  u_xlat12 = ((x_530 * 2.0f) + -1.0f);
  let x_534 : f32 = u_xlat12;
  u_xlat1.x = ((x_534 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_540 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_540, 0.0f, 1.0f);
  let x_544 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_544 * 2.0f) + -1.0f);
  let x_548 : f32 = u_xlat12;
  u_xlat12 = (-(abs(x_548)) + 1.0f);
  let x_552 : f32 = u_xlat12;
  u_xlat12 = sqrt(x_552);
  let x_554 : f32 = u_xlat12;
  u_xlat12 = (-(x_554) + 1.0f);
  let x_557 : f32 = u_xlat12;
  let x_559 : f32 = u_xlat1.x;
  u_xlat12 = (x_557 * x_559);
  let x_561 : vec3<f32> = u_xlat0;
  let x_562 : vec3<f32> = (x_561 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_563 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_562.x, x_562.y, x_562.z, x_563.w);
  let x_565 : vec3<f32> = u_xlat0;
  u_xlat2 = max(abs(x_565), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_568 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_568);
  let x_570 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_570 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_572 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_572);
  let x_574 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_574 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_577 : vec3<f32> = u_xlat0;
  let x_579 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_577.x, x_577.y, x_577.z, x_577.x));
  u_xlatb0 = vec3<bool>(x_579.x, x_579.y, x_579.z);
  let x_582 : bool = u_xlatb0.x;
  if (x_582) {
    let x_587 : f32 = u_xlat1.x;
    x_583 = x_587;
  } else {
    let x_590 : f32 = u_xlat2.x;
    x_583 = x_590;
  }
  let x_591 : f32 = x_583;
  u_xlat0.x = x_591;
  let x_594 : bool = u_xlatb0.y;
  if (x_594) {
    let x_599 : f32 = u_xlat1.y;
    x_595 = x_599;
  } else {
    let x_602 : f32 = u_xlat2.y;
    x_595 = x_602;
  }
  let x_603 : f32 = x_595;
  u_xlat0.y = x_603;
  let x_606 : bool = u_xlatb0.z;
  if (x_606) {
    let x_611 : f32 = u_xlat1.z;
    x_607 = x_611;
  } else {
    let x_614 : f32 = u_xlat2.z;
    x_607 = x_614;
  }
  let x_615 : f32 = x_607;
  u_xlat0.z = x_615;
  let x_617 : f32 = u_xlat12;
  let x_622 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_617, x_617, x_617) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + x_622);
  let x_624 : vec3<f32> = u_xlat0;
  let x_625 : vec3<f32> = (x_624 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_626 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_625.x, x_625.y, x_625.z, x_626.w);
  let x_628 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_628 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_630 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_630 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_632 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_632), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_635 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_635);
  let x_637 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_637 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_639 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_639);
  let x_641 : vec3<f32> = u_xlat0;
  let x_643 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_641.x, x_641.y, x_641.z, x_641.x));
  u_xlatb0 = vec3<bool>(x_643.x, x_643.y, x_643.z);
  let x_648 : bool = u_xlatb0.x;
  if (x_648) {
    let x_653 : f32 = u_xlat1.x;
    x_649 = x_653;
  } else {
    let x_656 : f32 = u_xlat2.x;
    x_649 = x_656;
  }
  let x_657 : f32 = x_649;
  SV_Target0.x = x_657;
  let x_661 : bool = u_xlatb0.y;
  if (x_661) {
    let x_666 : f32 = u_xlat1.y;
    x_662 = x_666;
  } else {
    let x_669 : f32 = u_xlat2.y;
    x_662 = x_669;
  }
  let x_670 : f32 = x_662;
  SV_Target0.y = x_670;
  let x_673 : bool = u_xlatb0.z;
  if (x_673) {
    let x_678 : f32 = u_xlat1.z;
    x_674 = x_678;
  } else {
    let x_681 : f32 = u_xlat2.z;
    x_674 = x_681;
  }
  let x_682 : f32 = x_674;
  SV_Target0.z = x_682;
  let x_684 : f32 = u_xlat13;
  SV_Target0.w = x_684;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec2<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

