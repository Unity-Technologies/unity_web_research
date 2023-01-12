struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_Dithering_Coords : vec4<f32>,
  x_MainTex_TexelSize : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_30 : PGlobals;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_MainTex : sampler;

@group(0) @binding(0) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_DitheringTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat12 : f32;
  var u_xlat18 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlat8 : f32;
  var u_xlat14 : vec2<f32>;
  var u_xlat20 : f32;
  var u_xlat3 : vec2<f32>;
  var u_xlat9 : vec2<f32>;
  var u_xlatb20 : bool;
  var u_xlat6 : vec3<f32>;
  var u_xlat15 : vec2<f32>;
  var u_xlat21 : f32;
  var u_xlat4 : vec3<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlatb0 : vec3<bool>;
  var x_337 : f32;
  var x_353 : f32;
  var u_xlatb3 : bool;
  var x_406 : f32;
  var x_427 : f32;
  var x_437 : f32;
  var x_454 : f32;
  var x_467 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlat16 : vec2<f32>;
  var x_538 : f32;
  var u_xlati8 : i32;
  var u_xlati15 : vec2<i32>;
  var x_612 : f32;
  var u_xlat22 : f32;
  var x_633 : f32;
  var u_xlati10 : vec3<i32>;
  var x_668 : f32;
  var x_686 : f32;
  var x_774 : f32;
  var x_794 : f32;
  var x_826 : f32;
  var x_847 : f32;
  var x_879 : f32;
  var x_897 : f32;
  var x_985 : f32;
  var x_1005 : f32;
  var x_1038 : f32;
  var x_1059 : f32;
  var x_1091 : f32;
  var x_1109 : f32;
  var x_1197 : f32;
  var x_1216 : f32;
  var u_xlatb15 : vec2<bool>;
  var x_1244 : f32;
  var x_1262 : f32;
  var x_1279 : f32;
  var x_1296 : f32;
  var x_1320 : f32;
  var x_1337 : f32;
  var u_xlati14 : vec2<i32>;
  var u_xlatb8 : vec2<bool>;
  var u_xlatb2 : bool;
  var x_1383 : bool;
  var x_1422 : f32;
  var x_1438 : f32;
  var u_xlatb1 : vec3<bool>;
  var hlslcc_movcTemp : vec3<f32>;
  var x_1570 : f32;
  var x_1582 : f32;
  var x_1594 : f32;
  var x_1647 : f32;
  var x_1660 : f32;
  var x_1672 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD0;
  let x_14 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_13.x, x_13.y, x_14.z);
  let x_16 : vec3<f32> = u_xlat0;
  let x_22 : vec2<f32> = clamp(vec2<f32>(x_16.x, x_16.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_23 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_22.x, x_22.y, x_23.z);
  let x_25 : vec3<f32> = u_xlat0;
  let x_35 : f32 = x_30.x_RenderViewportScaleFactor;
  let x_37 : vec2<f32> = (vec2<f32>(x_25.x, x_25.y) * vec2<f32>(x_35, x_35));
  let x_38 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_37.x, x_37.y, x_38.z);
  let x_52 : vec3<f32> = u_xlat0;
  let x_54 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_52.x, x_52.y), 0.0f);
  u_xlat1 = x_54;
  let x_60 : vec3<f32> = u_xlat0;
  let x_65 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_60.x, x_60.y), 0.0f, vec2<i32>(0i, 1i));
  u_xlat12 = x_65.w;
  let x_73 : vec3<f32> = u_xlat0;
  let x_76 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_73.x, x_73.y), 0.0f, vec2<i32>(1i, 0i));
  u_xlat18 = x_76.w;
  let x_82 : vec3<f32> = u_xlat0;
  let x_86 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_82.x, x_82.y), 0.0f, vec2<i32>(0i, -1i));
  u_xlat2.x = x_86.w;
  let x_94 : vec3<f32> = u_xlat0;
  let x_97 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_94.x, x_94.y), 0.0f, vec2<i32>(-1i, 0i));
  u_xlat8 = x_97.w;
  let x_102 : f32 = u_xlat1.w;
  let x_103 : f32 = u_xlat12;
  u_xlat14.x = max(x_102, x_103);
  let x_108 : f32 = u_xlat1.w;
  let x_109 : f32 = u_xlat12;
  u_xlat20 = min(x_108, x_109);
  let x_111 : f32 = u_xlat18;
  let x_113 : f32 = u_xlat14.x;
  u_xlat14.x = max(x_111, x_113);
  let x_116 : f32 = u_xlat18;
  let x_117 : f32 = u_xlat20;
  u_xlat20 = min(x_116, x_117);
  let x_120 : f32 = u_xlat8;
  let x_122 : f32 = u_xlat2.x;
  u_xlat3.x = max(x_120, x_122);
  let x_126 : f32 = u_xlat8;
  let x_128 : f32 = u_xlat2.x;
  u_xlat9.x = min(x_126, x_128);
  let x_132 : f32 = u_xlat14.x;
  let x_134 : f32 = u_xlat3.x;
  u_xlat14.x = max(x_132, x_134);
  let x_137 : f32 = u_xlat20;
  let x_139 : f32 = u_xlat9.x;
  u_xlat20 = min(x_137, x_139);
  let x_142 : f32 = u_xlat14.x;
  u_xlat3.x = (x_142 * 0.165999994f);
  let x_146 : f32 = u_xlat20;
  let x_149 : f32 = u_xlat14.x;
  u_xlat14.x = (-(x_146) + x_149);
  let x_153 : f32 = u_xlat3.x;
  u_xlat20 = max(x_153, 0.0625f);
  let x_160 : f32 = u_xlat14.x;
  let x_161 : f32 = u_xlat20;
  u_xlatb20 = (x_160 >= x_161);
  let x_163 : bool = u_xlatb20;
  if (x_163) {
    let x_169 : vec3<f32> = u_xlat0;
    let x_172 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_169.x, x_169.y), 0.0f, vec2<i32>(-1i, -1i));
    u_xlat20 = x_172.w;
    let x_177 : vec3<f32> = u_xlat0;
    let x_180 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_177.x, x_177.y), 0.0f, vec2<i32>(1i, 1i));
    u_xlat3.x = x_180.w;
    let x_186 : vec3<f32> = u_xlat0;
    let x_189 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_186.x, x_186.y), 0.0f, vec2<i32>(1i, -1i));
    u_xlat9.x = x_189.w;
    let x_195 : vec3<f32> = u_xlat0;
    let x_198 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_195.x, x_195.y), 0.0f, vec2<i32>(-1i, 1i));
    u_xlat0.x = x_198.w;
    let x_202 : f32 = u_xlat12;
    let x_204 : f32 = u_xlat2.x;
    u_xlat6.x = (x_202 + x_204);
    let x_208 : f32 = u_xlat18;
    let x_209 : f32 = u_xlat8;
    u_xlat15.x = (x_208 + x_209);
    let x_213 : f32 = u_xlat14.x;
    u_xlat14.x = (1.0f / x_213);
    let x_218 : f32 = u_xlat6.x;
    let x_220 : f32 = u_xlat15.x;
    u_xlat21 = (x_218 + x_220);
    let x_223 : f32 = u_xlat1.w;
    let x_227 : f32 = u_xlat6.x;
    u_xlat6.x = ((x_223 * -2.0f) + x_227);
    let x_231 : f32 = u_xlat1.w;
    let x_234 : f32 = u_xlat15.x;
    u_xlat15.x = ((x_231 * -2.0f) + x_234);
    let x_239 : f32 = u_xlat3.x;
    let x_241 : f32 = u_xlat9.x;
    u_xlat4.x = (x_239 + x_241);
    let x_244 : f32 = u_xlat20;
    let x_246 : f32 = u_xlat9.x;
    u_xlat9.x = (x_244 + x_246);
    let x_250 : f32 = u_xlat18;
    let x_253 : f32 = u_xlat4.x;
    u_xlat10.x = ((x_250 * -2.0f) + x_253);
    let x_257 : f32 = u_xlat2.x;
    let x_260 : f32 = u_xlat9.x;
    u_xlat9.x = ((x_257 * -2.0f) + x_260);
    let x_264 : f32 = u_xlat0.x;
    let x_265 : f32 = u_xlat20;
    u_xlat20 = (x_264 + x_265);
    let x_268 : f32 = u_xlat3.x;
    let x_270 : f32 = u_xlat0.x;
    u_xlat0.x = (x_268 + x_270);
    let x_274 : f32 = u_xlat6.x;
    let x_279 : f32 = u_xlat10.x;
    u_xlat6.x = ((abs(x_274) * 2.0f) + abs(x_279));
    let x_284 : f32 = u_xlat15.x;
    let x_288 : f32 = u_xlat9.x;
    u_xlat3.x = ((abs(x_284) * 2.0f) + abs(x_288));
    let x_292 : f32 = u_xlat8;
    let x_294 : f32 = u_xlat20;
    u_xlat9.x = ((x_292 * -2.0f) + x_294);
    let x_297 : f32 = u_xlat12;
    let x_300 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_297 * -2.0f) + x_300);
    let x_304 : f32 = u_xlat6.x;
    let x_306 : f32 = u_xlat9.x;
    u_xlat6.x = (x_304 + abs(x_306));
    let x_311 : f32 = u_xlat3.x;
    let x_313 : f32 = u_xlat0.x;
    u_xlat0.x = (x_311 + abs(x_313));
    let x_318 : f32 = u_xlat4.x;
    let x_319 : f32 = u_xlat20;
    u_xlat20 = (x_318 + x_319);
    let x_325 : f32 = u_xlat6.x;
    let x_327 : f32 = u_xlat0.x;
    u_xlatb0.x = (x_325 >= x_327);
    let x_330 : f32 = u_xlat21;
    let x_332 : f32 = u_xlat20;
    u_xlat6.x = ((x_330 * 2.0f) + x_332);
    let x_336 : bool = u_xlatb0.x;
    if (x_336) {
      let x_341 : f32 = u_xlat2.x;
      x_337 = x_341;
    } else {
      let x_343 : f32 = u_xlat8;
      x_337 = x_343;
    }
    let x_344 : f32 = x_337;
    u_xlat2.x = x_344;
    let x_347 : bool = u_xlatb0.x;
    let x_348 : f32 = u_xlat12;
    let x_349 : f32 = u_xlat18;
    u_xlat12 = select(x_349, x_348, x_347);
    let x_352 : bool = u_xlatb0.x;
    if (x_352) {
      let x_359 : f32 = x_30.x_MainTex_TexelSize.y;
      x_353 = x_359;
    } else {
      let x_362 : f32 = x_30.x_MainTex_TexelSize.x;
      x_353 = x_362;
    }
    let x_363 : f32 = x_353;
    u_xlat18 = x_363;
    let x_365 : f32 = u_xlat6.x;
    let x_369 : f32 = u_xlat1.w;
    u_xlat6.x = ((x_365 * 0.083333336f) + -(x_369));
    let x_374 : f32 = u_xlat1.w;
    let x_377 : f32 = u_xlat2.x;
    u_xlat8 = (-(x_374) + x_377);
    let x_380 : f32 = u_xlat1.w;
    let x_382 : f32 = u_xlat12;
    u_xlat20 = (-(x_380) + x_382);
    let x_385 : f32 = u_xlat1.w;
    let x_387 : f32 = u_xlat2.x;
    u_xlat2.x = (x_385 + x_387);
    let x_391 : f32 = u_xlat1.w;
    let x_392 : f32 = u_xlat12;
    u_xlat12 = (x_391 + x_392);
    let x_395 : f32 = u_xlat8;
    let x_397 : f32 = u_xlat20;
    u_xlatb3 = (abs(x_395) >= abs(x_397));
    let x_400 : f32 = u_xlat20;
    let x_402 : f32 = u_xlat8;
    u_xlat8 = max(abs(x_400), abs(x_402));
    let x_405 : bool = u_xlatb3;
    if (x_405) {
      let x_409 : f32 = u_xlat18;
      x_406 = -(x_409);
    } else {
      let x_412 : f32 = u_xlat18;
      x_406 = x_412;
    }
    let x_413 : f32 = x_406;
    u_xlat18 = x_413;
    let x_415 : f32 = u_xlat14.x;
    let x_417 : f32 = u_xlat6.x;
    u_xlat6.x = (x_415 * abs(x_417));
    let x_422 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_422, 0.0f, 1.0f);
    let x_426 : bool = u_xlatb0.x;
    if (x_426) {
      let x_431 : f32 = x_30.x_MainTex_TexelSize.x;
      x_427 = x_431;
    } else {
      x_427 = 0.0f;
    }
    let x_433 : f32 = x_427;
    u_xlat14.x = x_433;
    let x_436 : bool = u_xlatb0.x;
    if (x_436) {
      x_437 = 0.0f;
    } else {
      let x_442 : f32 = x_30.x_MainTex_TexelSize.y;
      x_437 = x_442;
    }
    let x_443 : f32 = x_437;
    u_xlat14.y = x_443;
    let x_445 : f32 = u_xlat18;
    let x_450 : vec2<f32> = vs_TEXCOORD0;
    u_xlat9 = ((vec2<f32>(x_445, x_445) * vec2<f32>(0.5f, 0.5f)) + x_450);
    let x_453 : bool = u_xlatb0.x;
    if (x_453) {
      let x_459 : f32 = vs_TEXCOORD0.x;
      x_454 = x_459;
    } else {
      let x_462 : f32 = u_xlat9.x;
      x_454 = x_462;
    }
    let x_463 : f32 = x_454;
    u_xlat9.x = x_463;
    let x_466 : bool = u_xlatb0.x;
    if (x_466) {
      let x_471 : f32 = u_xlat9.y;
      x_467 = x_471;
    } else {
      let x_474 : f32 = vs_TEXCOORD0.y;
      x_467 = x_474;
    }
    let x_475 : f32 = x_467;
    u_xlat9.y = x_475;
    let x_477 : vec2<f32> = u_xlat14;
    let x_479 : vec2<f32> = u_xlat9;
    let x_480 : vec2<f32> = (-(x_477) + x_479);
    let x_481 : vec3<f32> = u_xlat4;
    u_xlat4 = vec3<f32>(x_480.x, x_480.y, x_481.z);
    let x_484 : vec2<f32> = u_xlat14;
    let x_485 : vec2<f32> = u_xlat9;
    let x_486 : vec2<f32> = (x_484 + x_485);
    let x_487 : vec3<f32> = u_xlat5;
    u_xlat5 = vec3<f32>(x_486.x, x_486.y, x_487.z);
    let x_490 : f32 = u_xlat6.x;
    u_xlat9.x = ((x_490 * -2.0f) + 3.0f);
    let x_495 : vec3<f32> = u_xlat4;
    u_xlat15 = vec2<f32>(x_495.x, x_495.y);
    let x_497 : vec2<f32> = u_xlat15;
    u_xlat15 = clamp(x_497, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_501 : vec2<f32> = u_xlat15;
    let x_503 : f32 = x_30.x_RenderViewportScaleFactor;
    u_xlat15 = (x_501 * vec2<f32>(x_503, x_503));
    let x_509 : vec2<f32> = u_xlat15;
    let x_510 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_509, 0.0f);
    u_xlat15.x = x_510.w;
    let x_514 : f32 = u_xlat6.x;
    let x_516 : f32 = u_xlat6.x;
    u_xlat6.x = (x_514 * x_516);
    let x_520 : vec3<f32> = u_xlat5;
    u_xlat16 = vec2<f32>(x_520.x, x_520.y);
    let x_522 : vec2<f32> = u_xlat16;
    u_xlat16 = clamp(x_522, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_526 : vec2<f32> = u_xlat16;
    let x_528 : f32 = x_30.x_RenderViewportScaleFactor;
    u_xlat16 = (x_526 * vec2<f32>(x_528, x_528));
    let x_534 : vec2<f32> = u_xlat16;
    let x_535 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_534, 0.0f);
    u_xlat21 = x_535.w;
    let x_537 : bool = u_xlatb3;
    if (x_537) {
      let x_542 : f32 = u_xlat2.x;
      x_538 = x_542;
    } else {
      let x_544 : f32 = u_xlat12;
      x_538 = x_544;
    }
    let x_545 : f32 = x_538;
    u_xlat12 = x_545;
    let x_546 : f32 = u_xlat8;
    u_xlat2.x = (x_546 * 0.25f);
    let x_550 : f32 = u_xlat12;
    let x_554 : f32 = u_xlat1.w;
    u_xlat8 = ((-(x_550) * 0.5f) + x_554);
    let x_557 : f32 = u_xlat6.x;
    let x_559 : f32 = u_xlat9.x;
    u_xlat6.x = (x_557 * x_559);
    let x_564 : f32 = u_xlat8;
    u_xlati8 = bitcast<i32>(select(0u, 4294967295u, (x_564 < 0.0f)));
    let x_569 : f32 = u_xlat12;
    let x_573 : f32 = u_xlat15.x;
    u_xlat3.x = ((-(x_569) * 0.5f) + x_573);
    let x_576 : f32 = u_xlat12;
    let x_579 : f32 = u_xlat21;
    u_xlat3.y = ((-(x_576) * 0.5f) + x_579);
    let x_584 : vec2<f32> = u_xlat3;
    let x_587 : vec3<f32> = u_xlat2;
    let x_590 : vec4<bool> = (abs(vec4<f32>(x_584.x, x_584.y, x_584.x, x_584.y)) >= vec4<f32>(x_587.x, x_587.x, x_587.x, x_587.x));
    u_xlati15 = bitcast<vec2<i32>>((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_590.x, x_590.y)) * vec2<u32>(4294967295u, 4294967295u)));
    let x_601 : f32 = u_xlat14.x;
    let x_606 : f32 = u_xlat4.x;
    u_xlat16.x = ((-(x_601) * 1.5f) + x_606);
    let x_610 : i32 = u_xlati15.x;
    if ((x_610 != 0i)) {
      let x_616 : f32 = u_xlat4.x;
      x_612 = x_616;
    } else {
      let x_619 : f32 = u_xlat16.x;
      x_612 = x_619;
    }
    let x_620 : f32 = x_612;
    u_xlat4.x = x_620;
    let x_624 : f32 = u_xlat14.y;
    let x_628 : f32 = u_xlat4.y;
    u_xlat22 = ((-(x_624) * 1.5f) + x_628);
    let x_631 : i32 = u_xlati15.x;
    if ((x_631 != 0i)) {
      let x_637 : f32 = u_xlat4.y;
      x_633 = x_637;
    } else {
      let x_639 : f32 = u_xlat22;
      x_633 = x_639;
    }
    let x_640 : f32 = x_633;
    u_xlat4.z = x_640;
    let x_646 : vec2<i32> = u_xlati15;
    let x_647 : vec2<i32> = ~(x_646);
    let x_648 : vec3<i32> = u_xlati10;
    u_xlati10 = vec3<i32>(x_647.x, x_648.y, x_647.y);
    let x_651 : i32 = u_xlati10.z;
    let x_654 : i32 = u_xlati10.x;
    u_xlati10.x = bitcast<i32>((bitcast<u32>(x_651) | bitcast<u32>(x_654)));
    let x_660 : f32 = u_xlat14.x;
    let x_663 : f32 = u_xlat5.x;
    u_xlat22 = ((x_660 * 1.5f) + x_663);
    let x_666 : i32 = u_xlati15.y;
    if ((x_666 != 0i)) {
      let x_672 : f32 = u_xlat5.x;
      x_668 = x_672;
    } else {
      let x_674 : f32 = u_xlat22;
      x_668 = x_674;
    }
    let x_675 : f32 = x_668;
    u_xlat5.x = x_675;
    let x_678 : f32 = u_xlat14.y;
    let x_681 : f32 = u_xlat5.y;
    u_xlat22 = ((x_678 * 1.5f) + x_681);
    let x_684 : i32 = u_xlati15.y;
    if ((x_684 != 0i)) {
      let x_690 : f32 = u_xlat5.y;
      x_686 = x_690;
    } else {
      let x_692 : f32 = u_xlat22;
      x_686 = x_692;
    }
    let x_693 : f32 = x_686;
    u_xlat5.z = x_693;
    let x_696 : i32 = u_xlati10.x;
    if ((x_696 != 0i)) {
      let x_701 : i32 = u_xlati15.x;
      if ((x_701 == 0i)) {
        let x_705 : vec3<f32> = u_xlat4;
        let x_706 : vec2<f32> = vec2<f32>(x_705.x, x_705.z);
        let x_707 : vec3<f32> = u_xlat10;
        u_xlat10 = vec3<f32>(x_706.x, x_707.y, x_706.y);
        let x_709 : vec3<f32> = u_xlat10;
        let x_713 : vec2<f32> = clamp(vec2<f32>(x_709.x, x_709.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_714 : vec3<f32> = u_xlat10;
        u_xlat10 = vec3<f32>(x_713.x, x_714.y, x_713.y);
        let x_716 : vec3<f32> = u_xlat10;
        let x_719 : f32 = x_30.x_RenderViewportScaleFactor;
        let x_721 : vec2<f32> = (vec2<f32>(x_716.x, x_716.z) * vec2<f32>(x_719, x_719));
        let x_722 : vec3<f32> = u_xlat10;
        u_xlat10 = vec3<f32>(x_721.x, x_722.y, x_721.y);
        let x_727 : vec3<f32> = u_xlat10;
        let x_729 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_727.x, x_727.z), 0.0f);
        u_xlat3.x = x_729.w;
      }
      let x_733 : i32 = u_xlati15.y;
      if ((x_733 == 0i)) {
        let x_737 : vec3<f32> = u_xlat5;
        let x_738 : vec2<f32> = vec2<f32>(x_737.x, x_737.z);
        let x_739 : vec3<f32> = u_xlat10;
        u_xlat10 = vec3<f32>(x_738.x, x_739.y, x_738.y);
        let x_741 : vec3<f32> = u_xlat10;
        let x_745 : vec2<f32> = clamp(vec2<f32>(x_741.x, x_741.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_746 : vec3<f32> = u_xlat10;
        u_xlat10 = vec3<f32>(x_745.x, x_746.y, x_745.y);
        let x_748 : vec3<f32> = u_xlat10;
        let x_751 : f32 = x_30.x_RenderViewportScaleFactor;
        let x_753 : vec2<f32> = (vec2<f32>(x_748.x, x_748.z) * vec2<f32>(x_751, x_751));
        let x_754 : vec3<f32> = u_xlat10;
        u_xlat10 = vec3<f32>(x_753.x, x_754.y, x_753.y);
        let x_759 : vec3<f32> = u_xlat10;
        let x_761 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_759.x, x_759.z), 0.0f);
        u_xlat3.y = x_761.w;
      }
      let x_764 : f32 = u_xlat12;
      let x_768 : f32 = u_xlat3.x;
      u_xlat10.x = ((-(x_764) * 0.5f) + x_768);
      let x_772 : i32 = u_xlati15.x;
      if ((x_772 != 0i)) {
        let x_778 : f32 = u_xlat3.x;
        x_774 = x_778;
      } else {
        let x_781 : f32 = u_xlat10.x;
        x_774 = x_781;
      }
      let x_782 : f32 = x_774;
      u_xlat3.x = x_782;
      let x_784 : f32 = u_xlat12;
      let x_788 : f32 = u_xlat3.y;
      u_xlat15.x = ((-(x_784) * 0.5f) + x_788);
      let x_792 : i32 = u_xlati15.y;
      if ((x_792 != 0i)) {
        let x_798 : f32 = u_xlat3.y;
        x_794 = x_798;
      } else {
        let x_801 : f32 = u_xlat15.x;
        x_794 = x_801;
      }
      let x_802 : f32 = x_794;
      u_xlat3.y = x_802;
      let x_804 : vec2<f32> = u_xlat3;
      let x_807 : vec3<f32> = u_xlat2;
      let x_809 : vec4<bool> = (abs(vec4<f32>(x_804.x, x_804.y, x_804.x, x_804.y)) >= vec4<f32>(x_807.x, x_807.x, x_807.x, x_807.x));
      u_xlati15 = bitcast<vec2<i32>>((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_809.x, x_809.y)) * vec2<u32>(4294967295u, 4294967295u)));
      let x_816 : f32 = u_xlat14.x;
      let x_820 : f32 = u_xlat4.x;
      u_xlat10.x = ((-(x_816) * 2.0f) + x_820);
      let x_824 : i32 = u_xlati15.x;
      if ((x_824 != 0i)) {
        let x_830 : f32 = u_xlat4.x;
        x_826 = x_830;
      } else {
        let x_833 : f32 = u_xlat10.x;
        x_826 = x_833;
      }
      let x_834 : f32 = x_826;
      u_xlat4.x = x_834;
      let x_837 : f32 = u_xlat14.y;
      let x_841 : f32 = u_xlat4.z;
      u_xlat10.x = ((-(x_837) * 2.0f) + x_841);
      let x_845 : i32 = u_xlati15.x;
      if ((x_845 != 0i)) {
        let x_851 : f32 = u_xlat4.z;
        x_847 = x_851;
      } else {
        let x_854 : f32 = u_xlat10.x;
        x_847 = x_854;
      }
      let x_855 : f32 = x_847;
      u_xlat4.z = x_855;
      let x_857 : vec2<i32> = u_xlati15;
      let x_858 : vec2<i32> = ~(x_857);
      let x_859 : vec3<i32> = u_xlati10;
      u_xlati10 = vec3<i32>(x_858.x, x_859.y, x_858.y);
      let x_862 : i32 = u_xlati10.z;
      let x_865 : i32 = u_xlati10.x;
      u_xlati10.x = bitcast<i32>((bitcast<u32>(x_862) | bitcast<u32>(x_865)));
      let x_871 : f32 = u_xlat14.x;
      let x_874 : f32 = u_xlat5.x;
      u_xlat22 = ((x_871 * 2.0f) + x_874);
      let x_877 : i32 = u_xlati15.y;
      if ((x_877 != 0i)) {
        let x_883 : f32 = u_xlat5.x;
        x_879 = x_883;
      } else {
        let x_885 : f32 = u_xlat22;
        x_879 = x_885;
      }
      let x_886 : f32 = x_879;
      u_xlat5.x = x_886;
      let x_889 : f32 = u_xlat14.y;
      let x_892 : f32 = u_xlat5.z;
      u_xlat22 = ((x_889 * 2.0f) + x_892);
      let x_895 : i32 = u_xlati15.y;
      if ((x_895 != 0i)) {
        let x_901 : f32 = u_xlat5.z;
        x_897 = x_901;
      } else {
        let x_903 : f32 = u_xlat22;
        x_897 = x_903;
      }
      let x_904 : f32 = x_897;
      u_xlat5.z = x_904;
      let x_907 : i32 = u_xlati10.x;
      if ((x_907 != 0i)) {
        let x_912 : i32 = u_xlati15.x;
        if ((x_912 == 0i)) {
          let x_916 : vec3<f32> = u_xlat4;
          let x_917 : vec2<f32> = vec2<f32>(x_916.x, x_916.z);
          let x_918 : vec3<f32> = u_xlat10;
          u_xlat10 = vec3<f32>(x_917.x, x_918.y, x_917.y);
          let x_920 : vec3<f32> = u_xlat10;
          let x_924 : vec2<f32> = clamp(vec2<f32>(x_920.x, x_920.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_925 : vec3<f32> = u_xlat10;
          u_xlat10 = vec3<f32>(x_924.x, x_925.y, x_924.y);
          let x_927 : vec3<f32> = u_xlat10;
          let x_930 : f32 = x_30.x_RenderViewportScaleFactor;
          let x_932 : vec2<f32> = (vec2<f32>(x_927.x, x_927.z) * vec2<f32>(x_930, x_930));
          let x_933 : vec3<f32> = u_xlat10;
          u_xlat10 = vec3<f32>(x_932.x, x_933.y, x_932.y);
          let x_938 : vec3<f32> = u_xlat10;
          let x_940 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_938.x, x_938.z), 0.0f);
          u_xlat3.x = x_940.w;
        }
        let x_944 : i32 = u_xlati15.y;
        if ((x_944 == 0i)) {
          let x_948 : vec3<f32> = u_xlat5;
          let x_949 : vec2<f32> = vec2<f32>(x_948.x, x_948.z);
          let x_950 : vec3<f32> = u_xlat10;
          u_xlat10 = vec3<f32>(x_949.x, x_950.y, x_949.y);
          let x_952 : vec3<f32> = u_xlat10;
          let x_956 : vec2<f32> = clamp(vec2<f32>(x_952.x, x_952.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_957 : vec3<f32> = u_xlat10;
          u_xlat10 = vec3<f32>(x_956.x, x_957.y, x_956.y);
          let x_959 : vec3<f32> = u_xlat10;
          let x_962 : f32 = x_30.x_RenderViewportScaleFactor;
          let x_964 : vec2<f32> = (vec2<f32>(x_959.x, x_959.z) * vec2<f32>(x_962, x_962));
          let x_965 : vec3<f32> = u_xlat10;
          u_xlat10 = vec3<f32>(x_964.x, x_965.y, x_964.y);
          let x_970 : vec3<f32> = u_xlat10;
          let x_972 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_970.x, x_970.z), 0.0f);
          u_xlat3.y = x_972.w;
        }
        let x_975 : f32 = u_xlat12;
        let x_979 : f32 = u_xlat3.x;
        u_xlat10.x = ((-(x_975) * 0.5f) + x_979);
        let x_983 : i32 = u_xlati15.x;
        if ((x_983 != 0i)) {
          let x_989 : f32 = u_xlat3.x;
          x_985 = x_989;
        } else {
          let x_992 : f32 = u_xlat10.x;
          x_985 = x_992;
        }
        let x_993 : f32 = x_985;
        u_xlat3.x = x_993;
        let x_995 : f32 = u_xlat12;
        let x_999 : f32 = u_xlat3.y;
        u_xlat15.x = ((-(x_995) * 0.5f) + x_999);
        let x_1003 : i32 = u_xlati15.y;
        if ((x_1003 != 0i)) {
          let x_1009 : f32 = u_xlat3.y;
          x_1005 = x_1009;
        } else {
          let x_1012 : f32 = u_xlat15.x;
          x_1005 = x_1012;
        }
        let x_1013 : f32 = x_1005;
        u_xlat3.y = x_1013;
        let x_1015 : vec2<f32> = u_xlat3;
        let x_1018 : vec3<f32> = u_xlat2;
        let x_1020 : vec4<bool> = (abs(vec4<f32>(x_1015.x, x_1015.y, x_1015.x, x_1015.y)) >= vec4<f32>(x_1018.x, x_1018.x, x_1018.x, x_1018.x));
        u_xlati15 = bitcast<vec2<i32>>((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_1020.x, x_1020.y)) * vec2<u32>(4294967295u, 4294967295u)));
        let x_1027 : f32 = u_xlat14.x;
        let x_1032 : f32 = u_xlat4.x;
        u_xlat10.x = ((-(x_1027) * 4.0f) + x_1032);
        let x_1036 : i32 = u_xlati15.x;
        if ((x_1036 != 0i)) {
          let x_1042 : f32 = u_xlat4.x;
          x_1038 = x_1042;
        } else {
          let x_1045 : f32 = u_xlat10.x;
          x_1038 = x_1045;
        }
        let x_1046 : f32 = x_1038;
        u_xlat4.x = x_1046;
        let x_1049 : f32 = u_xlat14.y;
        let x_1053 : f32 = u_xlat4.z;
        u_xlat10.x = ((-(x_1049) * 4.0f) + x_1053);
        let x_1057 : i32 = u_xlati15.x;
        if ((x_1057 != 0i)) {
          let x_1063 : f32 = u_xlat4.z;
          x_1059 = x_1063;
        } else {
          let x_1066 : f32 = u_xlat10.x;
          x_1059 = x_1066;
        }
        let x_1067 : f32 = x_1059;
        u_xlat4.z = x_1067;
        let x_1069 : vec2<i32> = u_xlati15;
        let x_1070 : vec2<i32> = ~(x_1069);
        let x_1071 : vec3<i32> = u_xlati10;
        u_xlati10 = vec3<i32>(x_1070.x, x_1071.y, x_1070.y);
        let x_1074 : i32 = u_xlati10.z;
        let x_1077 : i32 = u_xlati10.x;
        u_xlati10.x = bitcast<i32>((bitcast<u32>(x_1074) | bitcast<u32>(x_1077)));
        let x_1083 : f32 = u_xlat14.x;
        let x_1086 : f32 = u_xlat5.x;
        u_xlat22 = ((x_1083 * 4.0f) + x_1086);
        let x_1089 : i32 = u_xlati15.y;
        if ((x_1089 != 0i)) {
          let x_1095 : f32 = u_xlat5.x;
          x_1091 = x_1095;
        } else {
          let x_1097 : f32 = u_xlat22;
          x_1091 = x_1097;
        }
        let x_1098 : f32 = x_1091;
        u_xlat5.x = x_1098;
        let x_1101 : f32 = u_xlat14.y;
        let x_1104 : f32 = u_xlat5.z;
        u_xlat22 = ((x_1101 * 4.0f) + x_1104);
        let x_1107 : i32 = u_xlati15.y;
        if ((x_1107 != 0i)) {
          let x_1113 : f32 = u_xlat5.z;
          x_1109 = x_1113;
        } else {
          let x_1115 : f32 = u_xlat22;
          x_1109 = x_1115;
        }
        let x_1116 : f32 = x_1109;
        u_xlat5.z = x_1116;
        let x_1119 : i32 = u_xlati10.x;
        if ((x_1119 != 0i)) {
          let x_1124 : i32 = u_xlati15.x;
          if ((x_1124 == 0i)) {
            let x_1128 : vec3<f32> = u_xlat4;
            let x_1129 : vec2<f32> = vec2<f32>(x_1128.x, x_1128.z);
            let x_1130 : vec3<f32> = u_xlat10;
            u_xlat10 = vec3<f32>(x_1129.x, x_1130.y, x_1129.y);
            let x_1132 : vec3<f32> = u_xlat10;
            let x_1136 : vec2<f32> = clamp(vec2<f32>(x_1132.x, x_1132.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
            let x_1137 : vec3<f32> = u_xlat10;
            u_xlat10 = vec3<f32>(x_1136.x, x_1137.y, x_1136.y);
            let x_1139 : vec3<f32> = u_xlat10;
            let x_1142 : f32 = x_30.x_RenderViewportScaleFactor;
            let x_1144 : vec2<f32> = (vec2<f32>(x_1139.x, x_1139.z) * vec2<f32>(x_1142, x_1142));
            let x_1145 : vec3<f32> = u_xlat10;
            u_xlat10 = vec3<f32>(x_1144.x, x_1145.y, x_1144.y);
            let x_1150 : vec3<f32> = u_xlat10;
            let x_1152 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_1150.x, x_1150.z), 0.0f);
            u_xlat3.x = x_1152.w;
          }
          let x_1156 : i32 = u_xlati15.y;
          if ((x_1156 == 0i)) {
            let x_1160 : vec3<f32> = u_xlat5;
            let x_1161 : vec2<f32> = vec2<f32>(x_1160.x, x_1160.z);
            let x_1162 : vec3<f32> = u_xlat10;
            u_xlat10 = vec3<f32>(x_1161.x, x_1162.y, x_1161.y);
            let x_1164 : vec3<f32> = u_xlat10;
            let x_1168 : vec2<f32> = clamp(vec2<f32>(x_1164.x, x_1164.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
            let x_1169 : vec3<f32> = u_xlat10;
            u_xlat10 = vec3<f32>(x_1168.x, x_1169.y, x_1168.y);
            let x_1171 : vec3<f32> = u_xlat10;
            let x_1174 : f32 = x_30.x_RenderViewportScaleFactor;
            let x_1176 : vec2<f32> = (vec2<f32>(x_1171.x, x_1171.z) * vec2<f32>(x_1174, x_1174));
            let x_1177 : vec3<f32> = u_xlat10;
            u_xlat10 = vec3<f32>(x_1176.x, x_1177.y, x_1176.y);
            let x_1182 : vec3<f32> = u_xlat10;
            let x_1184 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_1182.x, x_1182.z), 0.0f);
            u_xlat3.y = x_1184.w;
          }
          let x_1187 : f32 = u_xlat12;
          let x_1191 : f32 = u_xlat3.x;
          u_xlat10.x = ((-(x_1187) * 0.5f) + x_1191);
          let x_1195 : i32 = u_xlati15.x;
          if ((x_1195 != 0i)) {
            let x_1201 : f32 = u_xlat3.x;
            x_1197 = x_1201;
          } else {
            let x_1204 : f32 = u_xlat10.x;
            x_1197 = x_1204;
          }
          let x_1205 : f32 = x_1197;
          u_xlat3.x = x_1205;
          let x_1207 : f32 = u_xlat12;
          let x_1211 : f32 = u_xlat3.y;
          u_xlat12 = ((-(x_1207) * 0.5f) + x_1211);
          let x_1214 : i32 = u_xlati15.y;
          if ((x_1214 != 0i)) {
            let x_1220 : f32 = u_xlat3.y;
            x_1216 = x_1220;
          } else {
            let x_1222 : f32 = u_xlat12;
            x_1216 = x_1222;
          }
          let x_1223 : f32 = x_1216;
          u_xlat3.y = x_1223;
          let x_1227 : vec2<f32> = u_xlat3;
          let x_1230 : vec3<f32> = u_xlat2;
          let x_1232 : vec4<bool> = (abs(vec4<f32>(x_1227.x, x_1227.y, x_1227.x, x_1227.y)) >= vec4<f32>(x_1230.x, x_1230.x, x_1230.x, x_1230.x));
          u_xlatb15 = vec2<bool>(x_1232.x, x_1232.y);
          let x_1235 : f32 = u_xlat14.x;
          let x_1240 : f32 = u_xlat4.x;
          u_xlat12 = ((-(x_1235) * 12.0f) + x_1240);
          let x_1243 : bool = u_xlatb15.x;
          if (x_1243) {
            let x_1248 : f32 = u_xlat4.x;
            x_1244 = x_1248;
          } else {
            let x_1250 : f32 = u_xlat12;
            x_1244 = x_1250;
          }
          let x_1251 : f32 = x_1244;
          u_xlat4.x = x_1251;
          let x_1254 : f32 = u_xlat14.y;
          let x_1258 : f32 = u_xlat4.z;
          u_xlat12 = ((-(x_1254) * 12.0f) + x_1258);
          let x_1261 : bool = u_xlatb15.x;
          if (x_1261) {
            let x_1266 : f32 = u_xlat4.z;
            x_1262 = x_1266;
          } else {
            let x_1268 : f32 = u_xlat12;
            x_1262 = x_1268;
          }
          let x_1269 : f32 = x_1262;
          u_xlat4.z = x_1269;
          let x_1272 : f32 = u_xlat14.x;
          let x_1275 : f32 = u_xlat5.x;
          u_xlat12 = ((x_1272 * 12.0f) + x_1275);
          let x_1278 : bool = u_xlatb15.y;
          if (x_1278) {
            let x_1283 : f32 = u_xlat5.x;
            x_1279 = x_1283;
          } else {
            let x_1285 : f32 = u_xlat12;
            x_1279 = x_1285;
          }
          let x_1286 : f32 = x_1279;
          u_xlat5.x = x_1286;
          let x_1289 : f32 = u_xlat14.y;
          let x_1292 : f32 = u_xlat5.z;
          u_xlat12 = ((x_1289 * 12.0f) + x_1292);
          let x_1295 : bool = u_xlatb15.y;
          if (x_1295) {
            let x_1300 : f32 = u_xlat5.z;
            x_1296 = x_1300;
          } else {
            let x_1302 : f32 = u_xlat12;
            x_1296 = x_1302;
          }
          let x_1303 : f32 = x_1296;
          u_xlat5.z = x_1303;
        }
      }
    }
    let x_1306 : f32 = u_xlat4.x;
    let x_1309 : f32 = vs_TEXCOORD0.x;
    u_xlat12 = (-(x_1306) + x_1309);
    let x_1312 : f32 = u_xlat4.z;
    let x_1315 : f32 = vs_TEXCOORD0.y;
    u_xlat14.x = (-(x_1312) + x_1315);
    let x_1319 : bool = u_xlatb0.x;
    if (x_1319) {
      let x_1323 : f32 = u_xlat12;
      x_1320 = x_1323;
    } else {
      let x_1326 : f32 = u_xlat14.x;
      x_1320 = x_1326;
    }
    let x_1327 : f32 = x_1320;
    u_xlat12 = x_1327;
    let x_1328 : vec3<f32> = u_xlat5;
    let x_1330 : vec2<f32> = vs_TEXCOORD0;
    let x_1332 : vec2<f32> = (vec2<f32>(x_1328.x, x_1328.z) + -(x_1330));
    let x_1333 : vec3<f32> = u_xlat2;
    u_xlat2 = vec3<f32>(x_1332.x, x_1333.y, x_1332.y);
    let x_1336 : bool = u_xlatb0.x;
    if (x_1336) {
      let x_1341 : f32 = u_xlat2.x;
      x_1337 = x_1341;
    } else {
      let x_1344 : f32 = u_xlat2.z;
      x_1337 = x_1344;
    }
    let x_1345 : f32 = x_1337;
    u_xlat2.x = x_1345;
    let x_1348 : vec2<f32> = u_xlat3;
    let x_1351 : vec4<bool> = (vec4<f32>(x_1348.x, x_1348.y, x_1348.x, x_1348.y) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
    u_xlati14 = bitcast<vec2<i32>>((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_1351.x, x_1351.y)) * vec2<u32>(4294967295u, 4294967295u)));
    let x_1357 : f32 = u_xlat12;
    let x_1359 : f32 = u_xlat2.x;
    u_xlat3.x = (x_1357 + x_1359);
    let x_1363 : i32 = u_xlati8;
    let x_1366 : vec2<i32> = u_xlati14;
    let x_1368 : vec4<bool> = (vec4<i32>(x_1363, x_1363, x_1363, x_1363) != vec4<i32>(x_1366.x, x_1366.y, x_1366.x, x_1366.x));
    u_xlatb8 = vec2<bool>(x_1368.x, x_1368.y);
    let x_1371 : f32 = u_xlat3.x;
    u_xlat20 = (1.0f / x_1371);
    let x_1373 : f32 = u_xlat12;
    let x_1375 : f32 = u_xlat2.x;
    u_xlatb3 = (x_1373 < x_1375);
    let x_1377 : f32 = u_xlat12;
    let x_1379 : f32 = u_xlat2.x;
    u_xlat12 = min(x_1377, x_1379);
    let x_1382 : bool = u_xlatb3;
    if (x_1382) {
      let x_1387 : bool = u_xlatb8.x;
      x_1383 = x_1387;
    } else {
      let x_1390 : bool = u_xlatb8.y;
      x_1383 = x_1390;
    }
    let x_1391 : bool = x_1383;
    u_xlatb2 = x_1391;
    let x_1393 : f32 = u_xlat6.x;
    let x_1395 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1393 * x_1395);
    let x_1398 : f32 = u_xlat12;
    let x_1399 : f32 = u_xlat20;
    u_xlat12 = ((x_1398 * -(x_1399)) + 0.5f);
    let x_1403 : bool = u_xlatb2;
    let x_1404 : f32 = u_xlat12;
    u_xlat12 = select(0.0f, x_1404, x_1403);
    let x_1407 : f32 = u_xlat6.x;
    let x_1408 : f32 = u_xlat12;
    u_xlat6.x = max(x_1407, x_1408);
    let x_1411 : vec3<f32> = u_xlat6;
    let x_1413 : f32 = u_xlat18;
    let x_1416 : vec2<f32> = vs_TEXCOORD0;
    let x_1417 : vec2<f32> = ((vec2<f32>(x_1411.x, x_1411.x) * vec2<f32>(x_1413, x_1413)) + x_1416);
    let x_1418 : vec3<f32> = u_xlat6;
    u_xlat6 = vec3<f32>(x_1417.x, x_1417.y, x_1418.z);
    let x_1421 : bool = u_xlatb0.x;
    if (x_1421) {
      let x_1426 : f32 = vs_TEXCOORD0.x;
      x_1422 = x_1426;
    } else {
      let x_1429 : f32 = u_xlat6.x;
      x_1422 = x_1429;
    }
    let x_1430 : f32 = x_1422;
    u_xlat2.x = x_1430;
    let x_1433 : f32 = u_xlat2.x;
    u_xlat2.x = clamp(x_1433, 0.0f, 1.0f);
    let x_1437 : bool = u_xlatb0.x;
    if (x_1437) {
      let x_1442 : f32 = u_xlat6.y;
      x_1438 = x_1442;
    } else {
      let x_1445 : f32 = vs_TEXCOORD0.y;
      x_1438 = x_1445;
    }
    let x_1446 : f32 = x_1438;
    u_xlat2.y = x_1446;
    let x_1449 : f32 = u_xlat2.y;
    u_xlat2.y = clamp(x_1449, 0.0f, 1.0f);
    let x_1452 : vec3<f32> = u_xlat2;
    let x_1455 : f32 = x_30.x_RenderViewportScaleFactor;
    let x_1457 : vec2<f32> = (vec2<f32>(x_1452.x, x_1452.y) * vec2<f32>(x_1455, x_1455));
    let x_1458 : vec3<f32> = u_xlat0;
    u_xlat0 = vec3<f32>(x_1457.x, x_1457.y, x_1458.z);
    let x_1463 : vec3<f32> = u_xlat0;
    let x_1465 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_1463.x, x_1463.y), 0.0f);
    let x_1466 : vec3<f32> = vec3<f32>(x_1465.x, x_1465.y, x_1465.z);
    let x_1467 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1466.x, x_1466.y, x_1466.z, x_1467.w);
  }
  let x_1469 : vec2<f32> = vs_TEXCOORD0;
  let x_1472 : vec4<f32> = x_30.x_Dithering_Coords;
  let x_1476 : vec4<f32> = x_30.x_Dithering_Coords;
  let x_1478 : vec2<f32> = ((x_1469 * vec2<f32>(x_1472.x, x_1472.y)) + vec2<f32>(x_1476.z, x_1476.w));
  let x_1479 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1478.x, x_1478.y, x_1479.z);
  let x_1486 : vec3<f32> = u_xlat0;
  let x_1488 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_1486.x, x_1486.y));
  u_xlat0.x = x_1488.w;
  let x_1492 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1492 * 2.0f) + -1.0f);
  let x_1498 : f32 = u_xlat0.x;
  u_xlat6.x = ((x_1498 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_1504 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_1504, 0.0f, 1.0f);
  let x_1508 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_1508 * 2.0f) + -1.0f);
  let x_1513 : f32 = u_xlat0.x;
  u_xlat0.x = (-(abs(x_1513)) + 1.0f);
  let x_1519 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_1519);
  let x_1523 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_1523) + 1.0f);
  let x_1528 : f32 = u_xlat0.x;
  let x_1530 : f32 = u_xlat6.x;
  u_xlat0.x = (x_1528 * x_1530);
  let x_1533 : vec4<f32> = u_xlat1;
  u_xlat6 = (vec3<f32>(x_1533.x, x_1533.y, x_1533.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1538 : vec4<f32> = u_xlat1;
  u_xlat2 = max(abs(vec3<f32>(x_1538.x, x_1538.y, x_1538.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1544 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_1544);
  let x_1546 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1546 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1550 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_1550);
  let x_1552 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_1552 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1562 : vec4<f32> = u_xlat1;
  let x_1564 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1562.x, x_1562.y, x_1562.z, x_1562.x));
  u_xlatb1 = vec3<bool>(x_1564.x, x_1564.y, x_1564.z);
  let x_1567 : vec3<f32> = u_xlat6;
  hlslcc_movcTemp = x_1567;
  let x_1569 : bool = u_xlatb1.x;
  if (x_1569) {
    let x_1574 : f32 = u_xlat6.x;
    x_1570 = x_1574;
  } else {
    let x_1577 : f32 = u_xlat2.x;
    x_1570 = x_1577;
  }
  let x_1578 : f32 = x_1570;
  hlslcc_movcTemp.x = x_1578;
  let x_1581 : bool = u_xlatb1.y;
  if (x_1581) {
    let x_1586 : f32 = u_xlat6.y;
    x_1582 = x_1586;
  } else {
    let x_1589 : f32 = u_xlat2.y;
    x_1582 = x_1589;
  }
  let x_1590 : f32 = x_1582;
  hlslcc_movcTemp.y = x_1590;
  let x_1593 : bool = u_xlatb1.z;
  if (x_1593) {
    let x_1598 : f32 = u_xlat6.z;
    x_1594 = x_1598;
  } else {
    let x_1601 : f32 = u_xlat2.z;
    x_1594 = x_1601;
  }
  let x_1602 : f32 = x_1594;
  hlslcc_movcTemp.z = x_1602;
  let x_1604 : vec3<f32> = hlslcc_movcTemp;
  u_xlat6 = x_1604;
  let x_1605 : vec3<f32> = u_xlat0;
  let x_1610 : vec3<f32> = u_xlat6;
  u_xlat0 = ((vec3<f32>(x_1605.x, x_1605.x, x_1605.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + x_1610);
  let x_1612 : vec3<f32> = u_xlat0;
  let x_1615 : vec3<f32> = (x_1612 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1616 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1615.x, x_1615.y, x_1615.z, x_1616.w);
  let x_1618 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_1618 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1622 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1622 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1626 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_1626), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1629 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_1629);
  let x_1631 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1631 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1635 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_1635);
  let x_1639 : vec3<f32> = u_xlat0;
  let x_1641 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1639.x, x_1639.y, x_1639.z, x_1639.x));
  u_xlatb0 = vec3<bool>(x_1641.x, x_1641.y, x_1641.z);
  let x_1646 : bool = u_xlatb0.x;
  if (x_1646) {
    let x_1651 : f32 = u_xlat1.x;
    x_1647 = x_1651;
  } else {
    let x_1654 : f32 = u_xlat2.x;
    x_1647 = x_1654;
  }
  let x_1655 : f32 = x_1647;
  SV_Target0.x = x_1655;
  let x_1659 : bool = u_xlatb0.y;
  if (x_1659) {
    let x_1664 : f32 = u_xlat1.y;
    x_1660 = x_1664;
  } else {
    let x_1667 : f32 = u_xlat2.y;
    x_1660 = x_1667;
  }
  let x_1668 : f32 = x_1660;
  SV_Target0.y = x_1668;
  let x_1671 : bool = u_xlatb0.z;
  if (x_1671) {
    let x_1676 : f32 = u_xlat1.z;
    x_1672 = x_1676;
  } else {
    let x_1679 : f32 = u_xlat2.z;
    x_1672 = x_1679;
  }
  let x_1680 : f32 = x_1672;
  SV_Target0.z = x_1680;
  let x_1683 : f32 = u_xlat1.w;
  SV_Target0.w = x_1683;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

