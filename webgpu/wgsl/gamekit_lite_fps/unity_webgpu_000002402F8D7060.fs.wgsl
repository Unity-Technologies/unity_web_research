struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_Dithering_Coords : vec4<f32>,
  x_MainTex_TexelSize : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var<uniform> x_30 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_MainTex : sampler;

var<private> u_xlat12 : f32;

var<private> u_xlat18 : f32;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat8 : f32;

var<private> u_xlat14 : vec2<f32>;

var<private> u_xlat20 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat9 : vec2<f32>;

var<private> u_xlatb20 : bool;

var<private> u_xlat6 : vec2<f32>;

var<private> u_xlat15 : vec2<f32>;

var<private> u_xlat21 : f32;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlatb0 : vec3<bool>;

var<private> u_xlatb3 : bool;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat16 : vec2<f32>;

var<private> u_xlati8 : i32;

var<private> u_xlati15 : vec2<i32>;

var<private> u_xlat22 : f32;

var<private> u_xlati10 : vec3<i32>;

var<private> u_xlatb15 : vec2<bool>;

var<private> u_xlati14 : vec2<i32>;

var<private> u_xlatb8 : vec2<bool>;

var<private> u_xlatb2 : bool;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_DitheringTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_338 : f32;
  var x_354 : f32;
  var x_406 : f32;
  var x_427 : f32;
  var x_437 : f32;
  var x_454 : f32;
  var x_467 : f32;
  var x_538 : f32;
  var x_612 : f32;
  var x_633 : f32;
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
  var x_1037 : f32;
  var x_1058 : f32;
  var x_1090 : f32;
  var x_1108 : f32;
  var x_1196 : f32;
  var x_1216 : f32;
  var x_1248 : f32;
  var x_1269 : f32;
  var x_1301 : f32;
  var x_1319 : f32;
  var x_1407 : f32;
  var x_1427 : f32;
  var x_1459 : f32;
  var x_1480 : f32;
  var x_1512 : f32;
  var x_1530 : f32;
  var x_1618 : f32;
  var x_1638 : f32;
  var x_1670 : f32;
  var x_1691 : f32;
  var x_1723 : f32;
  var x_1741 : f32;
  var x_1829 : f32;
  var x_1849 : f32;
  var x_1881 : f32;
  var x_1902 : f32;
  var x_1934 : f32;
  var x_1952 : f32;
  var x_2040 : f32;
  var x_2060 : f32;
  var x_2092 : f32;
  var x_2113 : f32;
  var x_2145 : f32;
  var x_2163 : f32;
  var x_2251 : f32;
  var x_2271 : f32;
  var x_2304 : f32;
  var x_2325 : f32;
  var x_2357 : f32;
  var x_2375 : f32;
  var x_2463 : f32;
  var x_2482 : f32;
  var x_2510 : f32;
  var x_2528 : f32;
  var x_2545 : f32;
  var x_2562 : f32;
  var x_2586 : f32;
  var x_2603 : f32;
  var x_2650 : bool;
  var x_2687 : f32;
  var x_2703 : f32;
  var x_2823 : f32;
  var x_2835 : f32;
  var x_2847 : f32;
  var x_2895 : f32;
  var x_2907 : f32;
  var x_2919 : f32;
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
  u_xlat12 = x_65.y;
  let x_73 : vec3<f32> = u_xlat0;
  let x_76 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_73.x, x_73.y), 0.0f, vec2<i32>(1i, 0i));
  u_xlat18 = x_76.y;
  let x_82 : vec3<f32> = u_xlat0;
  let x_86 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_82.x, x_82.y), 0.0f, vec2<i32>(0i, -1i));
  u_xlat2.x = x_86.y;
  let x_94 : vec3<f32> = u_xlat0;
  let x_97 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_94.x, x_94.y), 0.0f, vec2<i32>(-1i, 0i));
  u_xlat8 = x_97.y;
  let x_102 : f32 = u_xlat1.y;
  let x_103 : f32 = u_xlat12;
  u_xlat14.x = max(x_102, x_103);
  let x_108 : f32 = u_xlat1.y;
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
  u_xlat3.x = (x_142 * 0.063000001f);
  let x_146 : f32 = u_xlat20;
  let x_149 : f32 = u_xlat14.x;
  u_xlat14.x = (-(x_146) + x_149);
  let x_153 : f32 = u_xlat3.x;
  u_xlat20 = max(x_153, 0.031199999f);
  let x_160 : f32 = u_xlat14.x;
  let x_161 : f32 = u_xlat20;
  u_xlatb20 = (x_160 >= x_161);
  let x_163 : bool = u_xlatb20;
  if (x_163) {
    let x_169 : vec3<f32> = u_xlat0;
    let x_172 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_169.x, x_169.y), 0.0f, vec2<i32>(-1i, -1i));
    u_xlat20 = x_172.y;
    let x_177 : vec3<f32> = u_xlat0;
    let x_180 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_177.x, x_177.y), 0.0f, vec2<i32>(1i, 1i));
    u_xlat3.x = x_180.y;
    let x_186 : vec3<f32> = u_xlat0;
    let x_189 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_186.x, x_186.y), 0.0f, vec2<i32>(1i, -1i));
    u_xlat9.x = x_189.y;
    let x_195 : vec3<f32> = u_xlat0;
    let x_198 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_195.x, x_195.y), 0.0f, vec2<i32>(-1i, 1i));
    u_xlat0.x = x_198.y;
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
    let x_223 : f32 = u_xlat1.y;
    let x_227 : f32 = u_xlat6.x;
    u_xlat6.x = ((x_223 * -2.0f) + x_227);
    let x_231 : f32 = u_xlat1.y;
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
      let x_342 : f32 = u_xlat2.x;
      x_338 = x_342;
    } else {
      let x_344 : f32 = u_xlat8;
      x_338 = x_344;
    }
    let x_345 : f32 = x_338;
    u_xlat2.x = x_345;
    let x_348 : bool = u_xlatb0.x;
    let x_349 : f32 = u_xlat12;
    let x_350 : f32 = u_xlat18;
    u_xlat12 = select(x_350, x_349, x_348);
    let x_353 : bool = u_xlatb0.x;
    if (x_353) {
      let x_359 : f32 = x_30.x_MainTex_TexelSize.y;
      x_354 = x_359;
    } else {
      let x_362 : f32 = x_30.x_MainTex_TexelSize.x;
      x_354 = x_362;
    }
    let x_363 : f32 = x_354;
    u_xlat18 = x_363;
    let x_365 : f32 = u_xlat6.x;
    let x_369 : f32 = u_xlat1.y;
    u_xlat6.x = ((x_365 * 0.083333336f) + -(x_369));
    let x_374 : f32 = u_xlat1.y;
    let x_377 : f32 = u_xlat2.x;
    u_xlat8 = (-(x_374) + x_377);
    let x_380 : f32 = u_xlat1.y;
    let x_382 : f32 = u_xlat12;
    u_xlat20 = (-(x_380) + x_382);
    let x_385 : f32 = u_xlat1.y;
    let x_387 : f32 = u_xlat2.x;
    u_xlat2.x = (x_385 + x_387);
    let x_391 : f32 = u_xlat1.y;
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
    u_xlat15.x = x_510.y;
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
    u_xlat21 = x_535.y;
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
    let x_554 : f32 = u_xlat1.y;
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
    let x_584 : vec3<f32> = u_xlat3;
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
        u_xlat3.x = x_729.y;
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
        u_xlat3.y = x_761.y;
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
      let x_804 : vec3<f32> = u_xlat3;
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
          u_xlat3.x = x_940.y;
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
          u_xlat3.y = x_972.y;
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
        let x_1015 : vec3<f32> = u_xlat3;
        let x_1018 : vec3<f32> = u_xlat2;
        let x_1020 : vec4<bool> = (abs(vec4<f32>(x_1015.x, x_1015.y, x_1015.x, x_1015.y)) >= vec4<f32>(x_1018.x, x_1018.x, x_1018.x, x_1018.x));
        u_xlati15 = bitcast<vec2<i32>>((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_1020.x, x_1020.y)) * vec2<u32>(4294967295u, 4294967295u)));
        let x_1027 : f32 = u_xlat14.x;
        let x_1031 : f32 = u_xlat4.x;
        u_xlat10.x = ((-(x_1027) * 2.0f) + x_1031);
        let x_1035 : i32 = u_xlati15.x;
        if ((x_1035 != 0i)) {
          let x_1041 : f32 = u_xlat4.x;
          x_1037 = x_1041;
        } else {
          let x_1044 : f32 = u_xlat10.x;
          x_1037 = x_1044;
        }
        let x_1045 : f32 = x_1037;
        u_xlat4.x = x_1045;
        let x_1048 : f32 = u_xlat14.y;
        let x_1052 : f32 = u_xlat4.z;
        u_xlat10.x = ((-(x_1048) * 2.0f) + x_1052);
        let x_1056 : i32 = u_xlati15.x;
        if ((x_1056 != 0i)) {
          let x_1062 : f32 = u_xlat4.z;
          x_1058 = x_1062;
        } else {
          let x_1065 : f32 = u_xlat10.x;
          x_1058 = x_1065;
        }
        let x_1066 : f32 = x_1058;
        u_xlat4.z = x_1066;
        let x_1068 : vec2<i32> = u_xlati15;
        let x_1069 : vec2<i32> = ~(x_1068);
        let x_1070 : vec3<i32> = u_xlati10;
        u_xlati10 = vec3<i32>(x_1069.x, x_1070.y, x_1069.y);
        let x_1073 : i32 = u_xlati10.z;
        let x_1076 : i32 = u_xlati10.x;
        u_xlati10.x = bitcast<i32>((bitcast<u32>(x_1073) | bitcast<u32>(x_1076)));
        let x_1082 : f32 = u_xlat14.x;
        let x_1085 : f32 = u_xlat5.x;
        u_xlat22 = ((x_1082 * 2.0f) + x_1085);
        let x_1088 : i32 = u_xlati15.y;
        if ((x_1088 != 0i)) {
          let x_1094 : f32 = u_xlat5.x;
          x_1090 = x_1094;
        } else {
          let x_1096 : f32 = u_xlat22;
          x_1090 = x_1096;
        }
        let x_1097 : f32 = x_1090;
        u_xlat5.x = x_1097;
        let x_1100 : f32 = u_xlat14.y;
        let x_1103 : f32 = u_xlat5.z;
        u_xlat22 = ((x_1100 * 2.0f) + x_1103);
        let x_1106 : i32 = u_xlati15.y;
        if ((x_1106 != 0i)) {
          let x_1112 : f32 = u_xlat5.z;
          x_1108 = x_1112;
        } else {
          let x_1114 : f32 = u_xlat22;
          x_1108 = x_1114;
        }
        let x_1115 : f32 = x_1108;
        u_xlat5.z = x_1115;
        let x_1118 : i32 = u_xlati10.x;
        if ((x_1118 != 0i)) {
          let x_1123 : i32 = u_xlati15.x;
          if ((x_1123 == 0i)) {
            let x_1127 : vec3<f32> = u_xlat4;
            let x_1128 : vec2<f32> = vec2<f32>(x_1127.x, x_1127.z);
            let x_1129 : vec3<f32> = u_xlat10;
            u_xlat10 = vec3<f32>(x_1128.x, x_1129.y, x_1128.y);
            let x_1131 : vec3<f32> = u_xlat10;
            let x_1135 : vec2<f32> = clamp(vec2<f32>(x_1131.x, x_1131.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
            let x_1136 : vec3<f32> = u_xlat10;
            u_xlat10 = vec3<f32>(x_1135.x, x_1136.y, x_1135.y);
            let x_1138 : vec3<f32> = u_xlat10;
            let x_1141 : f32 = x_30.x_RenderViewportScaleFactor;
            let x_1143 : vec2<f32> = (vec2<f32>(x_1138.x, x_1138.z) * vec2<f32>(x_1141, x_1141));
            let x_1144 : vec3<f32> = u_xlat10;
            u_xlat10 = vec3<f32>(x_1143.x, x_1144.y, x_1143.y);
            let x_1149 : vec3<f32> = u_xlat10;
            let x_1151 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_1149.x, x_1149.z), 0.0f);
            u_xlat3.x = x_1151.y;
          }
          let x_1155 : i32 = u_xlati15.y;
          if ((x_1155 == 0i)) {
            let x_1159 : vec3<f32> = u_xlat5;
            let x_1160 : vec2<f32> = vec2<f32>(x_1159.x, x_1159.z);
            let x_1161 : vec3<f32> = u_xlat10;
            u_xlat10 = vec3<f32>(x_1160.x, x_1161.y, x_1160.y);
            let x_1163 : vec3<f32> = u_xlat10;
            let x_1167 : vec2<f32> = clamp(vec2<f32>(x_1163.x, x_1163.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
            let x_1168 : vec3<f32> = u_xlat10;
            u_xlat10 = vec3<f32>(x_1167.x, x_1168.y, x_1167.y);
            let x_1170 : vec3<f32> = u_xlat10;
            let x_1173 : f32 = x_30.x_RenderViewportScaleFactor;
            let x_1175 : vec2<f32> = (vec2<f32>(x_1170.x, x_1170.z) * vec2<f32>(x_1173, x_1173));
            let x_1176 : vec3<f32> = u_xlat10;
            u_xlat10 = vec3<f32>(x_1175.x, x_1176.y, x_1175.y);
            let x_1181 : vec3<f32> = u_xlat10;
            let x_1183 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_1181.x, x_1181.z), 0.0f);
            u_xlat3.y = x_1183.y;
          }
          let x_1186 : f32 = u_xlat12;
          let x_1190 : f32 = u_xlat3.x;
          u_xlat10.x = ((-(x_1186) * 0.5f) + x_1190);
          let x_1194 : i32 = u_xlati15.x;
          if ((x_1194 != 0i)) {
            let x_1200 : f32 = u_xlat3.x;
            x_1196 = x_1200;
          } else {
            let x_1203 : f32 = u_xlat10.x;
            x_1196 = x_1203;
          }
          let x_1204 : f32 = x_1196;
          u_xlat3.x = x_1204;
          let x_1206 : f32 = u_xlat12;
          let x_1210 : f32 = u_xlat3.y;
          u_xlat15.x = ((-(x_1206) * 0.5f) + x_1210);
          let x_1214 : i32 = u_xlati15.y;
          if ((x_1214 != 0i)) {
            let x_1220 : f32 = u_xlat3.y;
            x_1216 = x_1220;
          } else {
            let x_1223 : f32 = u_xlat15.x;
            x_1216 = x_1223;
          }
          let x_1224 : f32 = x_1216;
          u_xlat3.y = x_1224;
          let x_1226 : vec3<f32> = u_xlat3;
          let x_1229 : vec3<f32> = u_xlat2;
          let x_1231 : vec4<bool> = (abs(vec4<f32>(x_1226.x, x_1226.y, x_1226.x, x_1226.y)) >= vec4<f32>(x_1229.x, x_1229.x, x_1229.x, x_1229.x));
          u_xlati15 = bitcast<vec2<i32>>((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_1231.x, x_1231.y)) * vec2<u32>(4294967295u, 4294967295u)));
          let x_1238 : f32 = u_xlat14.x;
          let x_1242 : f32 = u_xlat4.x;
          u_xlat10.x = ((-(x_1238) * 2.0f) + x_1242);
          let x_1246 : i32 = u_xlati15.x;
          if ((x_1246 != 0i)) {
            let x_1252 : f32 = u_xlat4.x;
            x_1248 = x_1252;
          } else {
            let x_1255 : f32 = u_xlat10.x;
            x_1248 = x_1255;
          }
          let x_1256 : f32 = x_1248;
          u_xlat4.x = x_1256;
          let x_1259 : f32 = u_xlat14.y;
          let x_1263 : f32 = u_xlat4.z;
          u_xlat10.x = ((-(x_1259) * 2.0f) + x_1263);
          let x_1267 : i32 = u_xlati15.x;
          if ((x_1267 != 0i)) {
            let x_1273 : f32 = u_xlat4.z;
            x_1269 = x_1273;
          } else {
            let x_1276 : f32 = u_xlat10.x;
            x_1269 = x_1276;
          }
          let x_1277 : f32 = x_1269;
          u_xlat4.z = x_1277;
          let x_1279 : vec2<i32> = u_xlati15;
          let x_1280 : vec2<i32> = ~(x_1279);
          let x_1281 : vec3<i32> = u_xlati10;
          u_xlati10 = vec3<i32>(x_1280.x, x_1281.y, x_1280.y);
          let x_1284 : i32 = u_xlati10.z;
          let x_1287 : i32 = u_xlati10.x;
          u_xlati10.x = bitcast<i32>((bitcast<u32>(x_1284) | bitcast<u32>(x_1287)));
          let x_1293 : f32 = u_xlat14.x;
          let x_1296 : f32 = u_xlat5.x;
          u_xlat22 = ((x_1293 * 2.0f) + x_1296);
          let x_1299 : i32 = u_xlati15.y;
          if ((x_1299 != 0i)) {
            let x_1305 : f32 = u_xlat5.x;
            x_1301 = x_1305;
          } else {
            let x_1307 : f32 = u_xlat22;
            x_1301 = x_1307;
          }
          let x_1308 : f32 = x_1301;
          u_xlat5.x = x_1308;
          let x_1311 : f32 = u_xlat14.y;
          let x_1314 : f32 = u_xlat5.z;
          u_xlat22 = ((x_1311 * 2.0f) + x_1314);
          let x_1317 : i32 = u_xlati15.y;
          if ((x_1317 != 0i)) {
            let x_1323 : f32 = u_xlat5.z;
            x_1319 = x_1323;
          } else {
            let x_1325 : f32 = u_xlat22;
            x_1319 = x_1325;
          }
          let x_1326 : f32 = x_1319;
          u_xlat5.z = x_1326;
          let x_1329 : i32 = u_xlati10.x;
          if ((x_1329 != 0i)) {
            let x_1334 : i32 = u_xlati15.x;
            if ((x_1334 == 0i)) {
              let x_1338 : vec3<f32> = u_xlat4;
              let x_1339 : vec2<f32> = vec2<f32>(x_1338.x, x_1338.z);
              let x_1340 : vec3<f32> = u_xlat10;
              u_xlat10 = vec3<f32>(x_1339.x, x_1340.y, x_1339.y);
              let x_1342 : vec3<f32> = u_xlat10;
              let x_1346 : vec2<f32> = clamp(vec2<f32>(x_1342.x, x_1342.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
              let x_1347 : vec3<f32> = u_xlat10;
              u_xlat10 = vec3<f32>(x_1346.x, x_1347.y, x_1346.y);
              let x_1349 : vec3<f32> = u_xlat10;
              let x_1352 : f32 = x_30.x_RenderViewportScaleFactor;
              let x_1354 : vec2<f32> = (vec2<f32>(x_1349.x, x_1349.z) * vec2<f32>(x_1352, x_1352));
              let x_1355 : vec3<f32> = u_xlat10;
              u_xlat10 = vec3<f32>(x_1354.x, x_1355.y, x_1354.y);
              let x_1360 : vec3<f32> = u_xlat10;
              let x_1362 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_1360.x, x_1360.z), 0.0f);
              u_xlat3.x = x_1362.y;
            }
            let x_1366 : i32 = u_xlati15.y;
            if ((x_1366 == 0i)) {
              let x_1370 : vec3<f32> = u_xlat5;
              let x_1371 : vec2<f32> = vec2<f32>(x_1370.x, x_1370.z);
              let x_1372 : vec3<f32> = u_xlat10;
              u_xlat10 = vec3<f32>(x_1371.x, x_1372.y, x_1371.y);
              let x_1374 : vec3<f32> = u_xlat10;
              let x_1378 : vec2<f32> = clamp(vec2<f32>(x_1374.x, x_1374.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
              let x_1379 : vec3<f32> = u_xlat10;
              u_xlat10 = vec3<f32>(x_1378.x, x_1379.y, x_1378.y);
              let x_1381 : vec3<f32> = u_xlat10;
              let x_1384 : f32 = x_30.x_RenderViewportScaleFactor;
              let x_1386 : vec2<f32> = (vec2<f32>(x_1381.x, x_1381.z) * vec2<f32>(x_1384, x_1384));
              let x_1387 : vec3<f32> = u_xlat10;
              u_xlat10 = vec3<f32>(x_1386.x, x_1387.y, x_1386.y);
              let x_1392 : vec3<f32> = u_xlat10;
              let x_1394 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_1392.x, x_1392.z), 0.0f);
              u_xlat3.y = x_1394.y;
            }
            let x_1397 : f32 = u_xlat12;
            let x_1401 : f32 = u_xlat3.x;
            u_xlat10.x = ((-(x_1397) * 0.5f) + x_1401);
            let x_1405 : i32 = u_xlati15.x;
            if ((x_1405 != 0i)) {
              let x_1411 : f32 = u_xlat3.x;
              x_1407 = x_1411;
            } else {
              let x_1414 : f32 = u_xlat10.x;
              x_1407 = x_1414;
            }
            let x_1415 : f32 = x_1407;
            u_xlat3.x = x_1415;
            let x_1417 : f32 = u_xlat12;
            let x_1421 : f32 = u_xlat3.y;
            u_xlat15.x = ((-(x_1417) * 0.5f) + x_1421);
            let x_1425 : i32 = u_xlati15.y;
            if ((x_1425 != 0i)) {
              let x_1431 : f32 = u_xlat3.y;
              x_1427 = x_1431;
            } else {
              let x_1434 : f32 = u_xlat15.x;
              x_1427 = x_1434;
            }
            let x_1435 : f32 = x_1427;
            u_xlat3.y = x_1435;
            let x_1437 : vec3<f32> = u_xlat3;
            let x_1440 : vec3<f32> = u_xlat2;
            let x_1442 : vec4<bool> = (abs(vec4<f32>(x_1437.x, x_1437.y, x_1437.x, x_1437.y)) >= vec4<f32>(x_1440.x, x_1440.x, x_1440.x, x_1440.x));
            u_xlati15 = bitcast<vec2<i32>>((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_1442.x, x_1442.y)) * vec2<u32>(4294967295u, 4294967295u)));
            let x_1449 : f32 = u_xlat14.x;
            let x_1453 : f32 = u_xlat4.x;
            u_xlat10.x = ((-(x_1449) * 2.0f) + x_1453);
            let x_1457 : i32 = u_xlati15.x;
            if ((x_1457 != 0i)) {
              let x_1463 : f32 = u_xlat4.x;
              x_1459 = x_1463;
            } else {
              let x_1466 : f32 = u_xlat10.x;
              x_1459 = x_1466;
            }
            let x_1467 : f32 = x_1459;
            u_xlat4.x = x_1467;
            let x_1470 : f32 = u_xlat14.y;
            let x_1474 : f32 = u_xlat4.z;
            u_xlat10.x = ((-(x_1470) * 2.0f) + x_1474);
            let x_1478 : i32 = u_xlati15.x;
            if ((x_1478 != 0i)) {
              let x_1484 : f32 = u_xlat4.z;
              x_1480 = x_1484;
            } else {
              let x_1487 : f32 = u_xlat10.x;
              x_1480 = x_1487;
            }
            let x_1488 : f32 = x_1480;
            u_xlat4.z = x_1488;
            let x_1490 : vec2<i32> = u_xlati15;
            let x_1491 : vec2<i32> = ~(x_1490);
            let x_1492 : vec3<i32> = u_xlati10;
            u_xlati10 = vec3<i32>(x_1491.x, x_1492.y, x_1491.y);
            let x_1495 : i32 = u_xlati10.z;
            let x_1498 : i32 = u_xlati10.x;
            u_xlati10.x = bitcast<i32>((bitcast<u32>(x_1495) | bitcast<u32>(x_1498)));
            let x_1504 : f32 = u_xlat14.x;
            let x_1507 : f32 = u_xlat5.x;
            u_xlat22 = ((x_1504 * 2.0f) + x_1507);
            let x_1510 : i32 = u_xlati15.y;
            if ((x_1510 != 0i)) {
              let x_1516 : f32 = u_xlat5.x;
              x_1512 = x_1516;
            } else {
              let x_1518 : f32 = u_xlat22;
              x_1512 = x_1518;
            }
            let x_1519 : f32 = x_1512;
            u_xlat5.x = x_1519;
            let x_1522 : f32 = u_xlat14.y;
            let x_1525 : f32 = u_xlat5.z;
            u_xlat22 = ((x_1522 * 2.0f) + x_1525);
            let x_1528 : i32 = u_xlati15.y;
            if ((x_1528 != 0i)) {
              let x_1534 : f32 = u_xlat5.z;
              x_1530 = x_1534;
            } else {
              let x_1536 : f32 = u_xlat22;
              x_1530 = x_1536;
            }
            let x_1537 : f32 = x_1530;
            u_xlat5.z = x_1537;
            let x_1540 : i32 = u_xlati10.x;
            if ((x_1540 != 0i)) {
              let x_1545 : i32 = u_xlati15.x;
              if ((x_1545 == 0i)) {
                let x_1549 : vec3<f32> = u_xlat4;
                let x_1550 : vec2<f32> = vec2<f32>(x_1549.x, x_1549.z);
                let x_1551 : vec3<f32> = u_xlat10;
                u_xlat10 = vec3<f32>(x_1550.x, x_1551.y, x_1550.y);
                let x_1553 : vec3<f32> = u_xlat10;
                let x_1557 : vec2<f32> = clamp(vec2<f32>(x_1553.x, x_1553.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
                let x_1558 : vec3<f32> = u_xlat10;
                u_xlat10 = vec3<f32>(x_1557.x, x_1558.y, x_1557.y);
                let x_1560 : vec3<f32> = u_xlat10;
                let x_1563 : f32 = x_30.x_RenderViewportScaleFactor;
                let x_1565 : vec2<f32> = (vec2<f32>(x_1560.x, x_1560.z) * vec2<f32>(x_1563, x_1563));
                let x_1566 : vec3<f32> = u_xlat10;
                u_xlat10 = vec3<f32>(x_1565.x, x_1566.y, x_1565.y);
                let x_1571 : vec3<f32> = u_xlat10;
                let x_1573 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_1571.x, x_1571.z), 0.0f);
                u_xlat3.x = x_1573.y;
              }
              let x_1577 : i32 = u_xlati15.y;
              if ((x_1577 == 0i)) {
                let x_1581 : vec3<f32> = u_xlat5;
                let x_1582 : vec2<f32> = vec2<f32>(x_1581.x, x_1581.z);
                let x_1583 : vec3<f32> = u_xlat10;
                u_xlat10 = vec3<f32>(x_1582.x, x_1583.y, x_1582.y);
                let x_1585 : vec3<f32> = u_xlat10;
                let x_1589 : vec2<f32> = clamp(vec2<f32>(x_1585.x, x_1585.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
                let x_1590 : vec3<f32> = u_xlat10;
                u_xlat10 = vec3<f32>(x_1589.x, x_1590.y, x_1589.y);
                let x_1592 : vec3<f32> = u_xlat10;
                let x_1595 : f32 = x_30.x_RenderViewportScaleFactor;
                let x_1597 : vec2<f32> = (vec2<f32>(x_1592.x, x_1592.z) * vec2<f32>(x_1595, x_1595));
                let x_1598 : vec3<f32> = u_xlat10;
                u_xlat10 = vec3<f32>(x_1597.x, x_1598.y, x_1597.y);
                let x_1603 : vec3<f32> = u_xlat10;
                let x_1605 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_1603.x, x_1603.z), 0.0f);
                u_xlat3.y = x_1605.y;
              }
              let x_1608 : f32 = u_xlat12;
              let x_1612 : f32 = u_xlat3.x;
              u_xlat10.x = ((-(x_1608) * 0.5f) + x_1612);
              let x_1616 : i32 = u_xlati15.x;
              if ((x_1616 != 0i)) {
                let x_1622 : f32 = u_xlat3.x;
                x_1618 = x_1622;
              } else {
                let x_1625 : f32 = u_xlat10.x;
                x_1618 = x_1625;
              }
              let x_1626 : f32 = x_1618;
              u_xlat3.x = x_1626;
              let x_1628 : f32 = u_xlat12;
              let x_1632 : f32 = u_xlat3.y;
              u_xlat15.x = ((-(x_1628) * 0.5f) + x_1632);
              let x_1636 : i32 = u_xlati15.y;
              if ((x_1636 != 0i)) {
                let x_1642 : f32 = u_xlat3.y;
                x_1638 = x_1642;
              } else {
                let x_1645 : f32 = u_xlat15.x;
                x_1638 = x_1645;
              }
              let x_1646 : f32 = x_1638;
              u_xlat3.y = x_1646;
              let x_1648 : vec3<f32> = u_xlat3;
              let x_1651 : vec3<f32> = u_xlat2;
              let x_1653 : vec4<bool> = (abs(vec4<f32>(x_1648.x, x_1648.y, x_1648.x, x_1648.y)) >= vec4<f32>(x_1651.x, x_1651.x, x_1651.x, x_1651.x));
              u_xlati15 = bitcast<vec2<i32>>((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_1653.x, x_1653.y)) * vec2<u32>(4294967295u, 4294967295u)));
              let x_1660 : f32 = u_xlat14.x;
              let x_1664 : f32 = u_xlat4.x;
              u_xlat10.x = ((-(x_1660) * 2.0f) + x_1664);
              let x_1668 : i32 = u_xlati15.x;
              if ((x_1668 != 0i)) {
                let x_1674 : f32 = u_xlat4.x;
                x_1670 = x_1674;
              } else {
                let x_1677 : f32 = u_xlat10.x;
                x_1670 = x_1677;
              }
              let x_1678 : f32 = x_1670;
              u_xlat4.x = x_1678;
              let x_1681 : f32 = u_xlat14.y;
              let x_1685 : f32 = u_xlat4.z;
              u_xlat10.x = ((-(x_1681) * 2.0f) + x_1685);
              let x_1689 : i32 = u_xlati15.x;
              if ((x_1689 != 0i)) {
                let x_1695 : f32 = u_xlat4.z;
                x_1691 = x_1695;
              } else {
                let x_1698 : f32 = u_xlat10.x;
                x_1691 = x_1698;
              }
              let x_1699 : f32 = x_1691;
              u_xlat4.z = x_1699;
              let x_1701 : vec2<i32> = u_xlati15;
              let x_1702 : vec2<i32> = ~(x_1701);
              let x_1703 : vec3<i32> = u_xlati10;
              u_xlati10 = vec3<i32>(x_1702.x, x_1703.y, x_1702.y);
              let x_1706 : i32 = u_xlati10.z;
              let x_1709 : i32 = u_xlati10.x;
              u_xlati10.x = bitcast<i32>((bitcast<u32>(x_1706) | bitcast<u32>(x_1709)));
              let x_1715 : f32 = u_xlat14.x;
              let x_1718 : f32 = u_xlat5.x;
              u_xlat22 = ((x_1715 * 2.0f) + x_1718);
              let x_1721 : i32 = u_xlati15.y;
              if ((x_1721 != 0i)) {
                let x_1727 : f32 = u_xlat5.x;
                x_1723 = x_1727;
              } else {
                let x_1729 : f32 = u_xlat22;
                x_1723 = x_1729;
              }
              let x_1730 : f32 = x_1723;
              u_xlat5.x = x_1730;
              let x_1733 : f32 = u_xlat14.y;
              let x_1736 : f32 = u_xlat5.z;
              u_xlat22 = ((x_1733 * 2.0f) + x_1736);
              let x_1739 : i32 = u_xlati15.y;
              if ((x_1739 != 0i)) {
                let x_1745 : f32 = u_xlat5.z;
                x_1741 = x_1745;
              } else {
                let x_1747 : f32 = u_xlat22;
                x_1741 = x_1747;
              }
              let x_1748 : f32 = x_1741;
              u_xlat5.z = x_1748;
              let x_1751 : i32 = u_xlati10.x;
              if ((x_1751 != 0i)) {
                let x_1756 : i32 = u_xlati15.x;
                if ((x_1756 == 0i)) {
                  let x_1760 : vec3<f32> = u_xlat4;
                  let x_1761 : vec2<f32> = vec2<f32>(x_1760.x, x_1760.z);
                  let x_1762 : vec3<f32> = u_xlat10;
                  u_xlat10 = vec3<f32>(x_1761.x, x_1762.y, x_1761.y);
                  let x_1764 : vec3<f32> = u_xlat10;
                  let x_1768 : vec2<f32> = clamp(vec2<f32>(x_1764.x, x_1764.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
                  let x_1769 : vec3<f32> = u_xlat10;
                  u_xlat10 = vec3<f32>(x_1768.x, x_1769.y, x_1768.y);
                  let x_1771 : vec3<f32> = u_xlat10;
                  let x_1774 : f32 = x_30.x_RenderViewportScaleFactor;
                  let x_1776 : vec2<f32> = (vec2<f32>(x_1771.x, x_1771.z) * vec2<f32>(x_1774, x_1774));
                  let x_1777 : vec3<f32> = u_xlat10;
                  u_xlat10 = vec3<f32>(x_1776.x, x_1777.y, x_1776.y);
                  let x_1782 : vec3<f32> = u_xlat10;
                  let x_1784 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_1782.x, x_1782.z), 0.0f);
                  u_xlat3.x = x_1784.y;
                }
                let x_1788 : i32 = u_xlati15.y;
                if ((x_1788 == 0i)) {
                  let x_1792 : vec3<f32> = u_xlat5;
                  let x_1793 : vec2<f32> = vec2<f32>(x_1792.x, x_1792.z);
                  let x_1794 : vec3<f32> = u_xlat10;
                  u_xlat10 = vec3<f32>(x_1793.x, x_1794.y, x_1793.y);
                  let x_1796 : vec3<f32> = u_xlat10;
                  let x_1800 : vec2<f32> = clamp(vec2<f32>(x_1796.x, x_1796.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
                  let x_1801 : vec3<f32> = u_xlat10;
                  u_xlat10 = vec3<f32>(x_1800.x, x_1801.y, x_1800.y);
                  let x_1803 : vec3<f32> = u_xlat10;
                  let x_1806 : f32 = x_30.x_RenderViewportScaleFactor;
                  let x_1808 : vec2<f32> = (vec2<f32>(x_1803.x, x_1803.z) * vec2<f32>(x_1806, x_1806));
                  let x_1809 : vec3<f32> = u_xlat10;
                  u_xlat10 = vec3<f32>(x_1808.x, x_1809.y, x_1808.y);
                  let x_1814 : vec3<f32> = u_xlat10;
                  let x_1816 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_1814.x, x_1814.z), 0.0f);
                  u_xlat3.y = x_1816.y;
                }
                let x_1819 : f32 = u_xlat12;
                let x_1823 : f32 = u_xlat3.x;
                u_xlat10.x = ((-(x_1819) * 0.5f) + x_1823);
                let x_1827 : i32 = u_xlati15.x;
                if ((x_1827 != 0i)) {
                  let x_1833 : f32 = u_xlat3.x;
                  x_1829 = x_1833;
                } else {
                  let x_1836 : f32 = u_xlat10.x;
                  x_1829 = x_1836;
                }
                let x_1837 : f32 = x_1829;
                u_xlat3.x = x_1837;
                let x_1839 : f32 = u_xlat12;
                let x_1843 : f32 = u_xlat3.y;
                u_xlat15.x = ((-(x_1839) * 0.5f) + x_1843);
                let x_1847 : i32 = u_xlati15.y;
                if ((x_1847 != 0i)) {
                  let x_1853 : f32 = u_xlat3.y;
                  x_1849 = x_1853;
                } else {
                  let x_1856 : f32 = u_xlat15.x;
                  x_1849 = x_1856;
                }
                let x_1857 : f32 = x_1849;
                u_xlat3.y = x_1857;
                let x_1859 : vec3<f32> = u_xlat3;
                let x_1862 : vec3<f32> = u_xlat2;
                let x_1864 : vec4<bool> = (abs(vec4<f32>(x_1859.x, x_1859.y, x_1859.x, x_1859.y)) >= vec4<f32>(x_1862.x, x_1862.x, x_1862.x, x_1862.x));
                u_xlati15 = bitcast<vec2<i32>>((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_1864.x, x_1864.y)) * vec2<u32>(4294967295u, 4294967295u)));
                let x_1871 : f32 = u_xlat14.x;
                let x_1875 : f32 = u_xlat4.x;
                u_xlat10.x = ((-(x_1871) * 2.0f) + x_1875);
                let x_1879 : i32 = u_xlati15.x;
                if ((x_1879 != 0i)) {
                  let x_1885 : f32 = u_xlat4.x;
                  x_1881 = x_1885;
                } else {
                  let x_1888 : f32 = u_xlat10.x;
                  x_1881 = x_1888;
                }
                let x_1889 : f32 = x_1881;
                u_xlat4.x = x_1889;
                let x_1892 : f32 = u_xlat14.y;
                let x_1896 : f32 = u_xlat4.z;
                u_xlat10.x = ((-(x_1892) * 2.0f) + x_1896);
                let x_1900 : i32 = u_xlati15.x;
                if ((x_1900 != 0i)) {
                  let x_1906 : f32 = u_xlat4.z;
                  x_1902 = x_1906;
                } else {
                  let x_1909 : f32 = u_xlat10.x;
                  x_1902 = x_1909;
                }
                let x_1910 : f32 = x_1902;
                u_xlat4.z = x_1910;
                let x_1912 : vec2<i32> = u_xlati15;
                let x_1913 : vec2<i32> = ~(x_1912);
                let x_1914 : vec3<i32> = u_xlati10;
                u_xlati10 = vec3<i32>(x_1913.x, x_1914.y, x_1913.y);
                let x_1917 : i32 = u_xlati10.z;
                let x_1920 : i32 = u_xlati10.x;
                u_xlati10.x = bitcast<i32>((bitcast<u32>(x_1917) | bitcast<u32>(x_1920)));
                let x_1926 : f32 = u_xlat14.x;
                let x_1929 : f32 = u_xlat5.x;
                u_xlat22 = ((x_1926 * 2.0f) + x_1929);
                let x_1932 : i32 = u_xlati15.y;
                if ((x_1932 != 0i)) {
                  let x_1938 : f32 = u_xlat5.x;
                  x_1934 = x_1938;
                } else {
                  let x_1940 : f32 = u_xlat22;
                  x_1934 = x_1940;
                }
                let x_1941 : f32 = x_1934;
                u_xlat5.x = x_1941;
                let x_1944 : f32 = u_xlat14.y;
                let x_1947 : f32 = u_xlat5.z;
                u_xlat22 = ((x_1944 * 2.0f) + x_1947);
                let x_1950 : i32 = u_xlati15.y;
                if ((x_1950 != 0i)) {
                  let x_1956 : f32 = u_xlat5.z;
                  x_1952 = x_1956;
                } else {
                  let x_1958 : f32 = u_xlat22;
                  x_1952 = x_1958;
                }
                let x_1959 : f32 = x_1952;
                u_xlat5.z = x_1959;
                let x_1962 : i32 = u_xlati10.x;
                if ((x_1962 != 0i)) {
                  let x_1967 : i32 = u_xlati15.x;
                  if ((x_1967 == 0i)) {
                    let x_1971 : vec3<f32> = u_xlat4;
                    let x_1972 : vec2<f32> = vec2<f32>(x_1971.x, x_1971.z);
                    let x_1973 : vec3<f32> = u_xlat10;
                    u_xlat10 = vec3<f32>(x_1972.x, x_1973.y, x_1972.y);
                    let x_1975 : vec3<f32> = u_xlat10;
                    let x_1979 : vec2<f32> = clamp(vec2<f32>(x_1975.x, x_1975.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
                    let x_1980 : vec3<f32> = u_xlat10;
                    u_xlat10 = vec3<f32>(x_1979.x, x_1980.y, x_1979.y);
                    let x_1982 : vec3<f32> = u_xlat10;
                    let x_1985 : f32 = x_30.x_RenderViewportScaleFactor;
                    let x_1987 : vec2<f32> = (vec2<f32>(x_1982.x, x_1982.z) * vec2<f32>(x_1985, x_1985));
                    let x_1988 : vec3<f32> = u_xlat10;
                    u_xlat10 = vec3<f32>(x_1987.x, x_1988.y, x_1987.y);
                    let x_1993 : vec3<f32> = u_xlat10;
                    let x_1995 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_1993.x, x_1993.z), 0.0f);
                    u_xlat3.x = x_1995.y;
                  }
                  let x_1999 : i32 = u_xlati15.y;
                  if ((x_1999 == 0i)) {
                    let x_2003 : vec3<f32> = u_xlat5;
                    let x_2004 : vec2<f32> = vec2<f32>(x_2003.x, x_2003.z);
                    let x_2005 : vec3<f32> = u_xlat10;
                    u_xlat10 = vec3<f32>(x_2004.x, x_2005.y, x_2004.y);
                    let x_2007 : vec3<f32> = u_xlat10;
                    let x_2011 : vec2<f32> = clamp(vec2<f32>(x_2007.x, x_2007.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
                    let x_2012 : vec3<f32> = u_xlat10;
                    u_xlat10 = vec3<f32>(x_2011.x, x_2012.y, x_2011.y);
                    let x_2014 : vec3<f32> = u_xlat10;
                    let x_2017 : f32 = x_30.x_RenderViewportScaleFactor;
                    let x_2019 : vec2<f32> = (vec2<f32>(x_2014.x, x_2014.z) * vec2<f32>(x_2017, x_2017));
                    let x_2020 : vec3<f32> = u_xlat10;
                    u_xlat10 = vec3<f32>(x_2019.x, x_2020.y, x_2019.y);
                    let x_2025 : vec3<f32> = u_xlat10;
                    let x_2027 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_2025.x, x_2025.z), 0.0f);
                    u_xlat3.y = x_2027.y;
                  }
                  let x_2030 : f32 = u_xlat12;
                  let x_2034 : f32 = u_xlat3.x;
                  u_xlat10.x = ((-(x_2030) * 0.5f) + x_2034);
                  let x_2038 : i32 = u_xlati15.x;
                  if ((x_2038 != 0i)) {
                    let x_2044 : f32 = u_xlat3.x;
                    x_2040 = x_2044;
                  } else {
                    let x_2047 : f32 = u_xlat10.x;
                    x_2040 = x_2047;
                  }
                  let x_2048 : f32 = x_2040;
                  u_xlat3.x = x_2048;
                  let x_2050 : f32 = u_xlat12;
                  let x_2054 : f32 = u_xlat3.y;
                  u_xlat15.x = ((-(x_2050) * 0.5f) + x_2054);
                  let x_2058 : i32 = u_xlati15.y;
                  if ((x_2058 != 0i)) {
                    let x_2064 : f32 = u_xlat3.y;
                    x_2060 = x_2064;
                  } else {
                    let x_2067 : f32 = u_xlat15.x;
                    x_2060 = x_2067;
                  }
                  let x_2068 : f32 = x_2060;
                  u_xlat3.y = x_2068;
                  let x_2070 : vec3<f32> = u_xlat3;
                  let x_2073 : vec3<f32> = u_xlat2;
                  let x_2075 : vec4<bool> = (abs(vec4<f32>(x_2070.x, x_2070.y, x_2070.x, x_2070.y)) >= vec4<f32>(x_2073.x, x_2073.x, x_2073.x, x_2073.x));
                  u_xlati15 = bitcast<vec2<i32>>((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_2075.x, x_2075.y)) * vec2<u32>(4294967295u, 4294967295u)));
                  let x_2082 : f32 = u_xlat14.x;
                  let x_2086 : f32 = u_xlat4.x;
                  u_xlat10.x = ((-(x_2082) * 2.0f) + x_2086);
                  let x_2090 : i32 = u_xlati15.x;
                  if ((x_2090 != 0i)) {
                    let x_2096 : f32 = u_xlat4.x;
                    x_2092 = x_2096;
                  } else {
                    let x_2099 : f32 = u_xlat10.x;
                    x_2092 = x_2099;
                  }
                  let x_2100 : f32 = x_2092;
                  u_xlat4.x = x_2100;
                  let x_2103 : f32 = u_xlat14.y;
                  let x_2107 : f32 = u_xlat4.z;
                  u_xlat10.x = ((-(x_2103) * 2.0f) + x_2107);
                  let x_2111 : i32 = u_xlati15.x;
                  if ((x_2111 != 0i)) {
                    let x_2117 : f32 = u_xlat4.z;
                    x_2113 = x_2117;
                  } else {
                    let x_2120 : f32 = u_xlat10.x;
                    x_2113 = x_2120;
                  }
                  let x_2121 : f32 = x_2113;
                  u_xlat4.z = x_2121;
                  let x_2123 : vec2<i32> = u_xlati15;
                  let x_2124 : vec2<i32> = ~(x_2123);
                  let x_2125 : vec3<i32> = u_xlati10;
                  u_xlati10 = vec3<i32>(x_2124.x, x_2125.y, x_2124.y);
                  let x_2128 : i32 = u_xlati10.z;
                  let x_2131 : i32 = u_xlati10.x;
                  u_xlati10.x = bitcast<i32>((bitcast<u32>(x_2128) | bitcast<u32>(x_2131)));
                  let x_2137 : f32 = u_xlat14.x;
                  let x_2140 : f32 = u_xlat5.x;
                  u_xlat22 = ((x_2137 * 2.0f) + x_2140);
                  let x_2143 : i32 = u_xlati15.y;
                  if ((x_2143 != 0i)) {
                    let x_2149 : f32 = u_xlat5.x;
                    x_2145 = x_2149;
                  } else {
                    let x_2151 : f32 = u_xlat22;
                    x_2145 = x_2151;
                  }
                  let x_2152 : f32 = x_2145;
                  u_xlat5.x = x_2152;
                  let x_2155 : f32 = u_xlat14.y;
                  let x_2158 : f32 = u_xlat5.z;
                  u_xlat22 = ((x_2155 * 2.0f) + x_2158);
                  let x_2161 : i32 = u_xlati15.y;
                  if ((x_2161 != 0i)) {
                    let x_2167 : f32 = u_xlat5.z;
                    x_2163 = x_2167;
                  } else {
                    let x_2169 : f32 = u_xlat22;
                    x_2163 = x_2169;
                  }
                  let x_2170 : f32 = x_2163;
                  u_xlat5.z = x_2170;
                  let x_2173 : i32 = u_xlati10.x;
                  if ((x_2173 != 0i)) {
                    let x_2178 : i32 = u_xlati15.x;
                    if ((x_2178 == 0i)) {
                      let x_2182 : vec3<f32> = u_xlat4;
                      let x_2183 : vec2<f32> = vec2<f32>(x_2182.x, x_2182.z);
                      let x_2184 : vec3<f32> = u_xlat10;
                      u_xlat10 = vec3<f32>(x_2183.x, x_2184.y, x_2183.y);
                      let x_2186 : vec3<f32> = u_xlat10;
                      let x_2190 : vec2<f32> = clamp(vec2<f32>(x_2186.x, x_2186.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
                      let x_2191 : vec3<f32> = u_xlat10;
                      u_xlat10 = vec3<f32>(x_2190.x, x_2191.y, x_2190.y);
                      let x_2193 : vec3<f32> = u_xlat10;
                      let x_2196 : f32 = x_30.x_RenderViewportScaleFactor;
                      let x_2198 : vec2<f32> = (vec2<f32>(x_2193.x, x_2193.z) * vec2<f32>(x_2196, x_2196));
                      let x_2199 : vec3<f32> = u_xlat10;
                      u_xlat10 = vec3<f32>(x_2198.x, x_2199.y, x_2198.y);
                      let x_2204 : vec3<f32> = u_xlat10;
                      let x_2206 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_2204.x, x_2204.z), 0.0f);
                      u_xlat3.x = x_2206.y;
                    }
                    let x_2210 : i32 = u_xlati15.y;
                    if ((x_2210 == 0i)) {
                      let x_2214 : vec3<f32> = u_xlat5;
                      let x_2215 : vec2<f32> = vec2<f32>(x_2214.x, x_2214.z);
                      let x_2216 : vec3<f32> = u_xlat10;
                      u_xlat10 = vec3<f32>(x_2215.x, x_2216.y, x_2215.y);
                      let x_2218 : vec3<f32> = u_xlat10;
                      let x_2222 : vec2<f32> = clamp(vec2<f32>(x_2218.x, x_2218.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
                      let x_2223 : vec3<f32> = u_xlat10;
                      u_xlat10 = vec3<f32>(x_2222.x, x_2223.y, x_2222.y);
                      let x_2225 : vec3<f32> = u_xlat10;
                      let x_2228 : f32 = x_30.x_RenderViewportScaleFactor;
                      let x_2230 : vec2<f32> = (vec2<f32>(x_2225.x, x_2225.z) * vec2<f32>(x_2228, x_2228));
                      let x_2231 : vec3<f32> = u_xlat10;
                      u_xlat10 = vec3<f32>(x_2230.x, x_2231.y, x_2230.y);
                      let x_2236 : vec3<f32> = u_xlat10;
                      let x_2238 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_2236.x, x_2236.z), 0.0f);
                      u_xlat3.y = x_2238.y;
                    }
                    let x_2241 : f32 = u_xlat12;
                    let x_2245 : f32 = u_xlat3.x;
                    u_xlat10.x = ((-(x_2241) * 0.5f) + x_2245);
                    let x_2249 : i32 = u_xlati15.x;
                    if ((x_2249 != 0i)) {
                      let x_2255 : f32 = u_xlat3.x;
                      x_2251 = x_2255;
                    } else {
                      let x_2258 : f32 = u_xlat10.x;
                      x_2251 = x_2258;
                    }
                    let x_2259 : f32 = x_2251;
                    u_xlat3.x = x_2259;
                    let x_2261 : f32 = u_xlat12;
                    let x_2265 : f32 = u_xlat3.y;
                    u_xlat15.x = ((-(x_2261) * 0.5f) + x_2265);
                    let x_2269 : i32 = u_xlati15.y;
                    if ((x_2269 != 0i)) {
                      let x_2275 : f32 = u_xlat3.y;
                      x_2271 = x_2275;
                    } else {
                      let x_2278 : f32 = u_xlat15.x;
                      x_2271 = x_2278;
                    }
                    let x_2279 : f32 = x_2271;
                    u_xlat3.y = x_2279;
                    let x_2281 : vec3<f32> = u_xlat3;
                    let x_2284 : vec3<f32> = u_xlat2;
                    let x_2286 : vec4<bool> = (abs(vec4<f32>(x_2281.x, x_2281.y, x_2281.x, x_2281.y)) >= vec4<f32>(x_2284.x, x_2284.x, x_2284.x, x_2284.x));
                    u_xlati15 = bitcast<vec2<i32>>((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_2286.x, x_2286.y)) * vec2<u32>(4294967295u, 4294967295u)));
                    let x_2293 : f32 = u_xlat14.x;
                    let x_2298 : f32 = u_xlat4.x;
                    u_xlat10.x = ((-(x_2293) * 4.0f) + x_2298);
                    let x_2302 : i32 = u_xlati15.x;
                    if ((x_2302 != 0i)) {
                      let x_2308 : f32 = u_xlat4.x;
                      x_2304 = x_2308;
                    } else {
                      let x_2311 : f32 = u_xlat10.x;
                      x_2304 = x_2311;
                    }
                    let x_2312 : f32 = x_2304;
                    u_xlat4.x = x_2312;
                    let x_2315 : f32 = u_xlat14.y;
                    let x_2319 : f32 = u_xlat4.z;
                    u_xlat10.x = ((-(x_2315) * 4.0f) + x_2319);
                    let x_2323 : i32 = u_xlati15.x;
                    if ((x_2323 != 0i)) {
                      let x_2329 : f32 = u_xlat4.z;
                      x_2325 = x_2329;
                    } else {
                      let x_2332 : f32 = u_xlat10.x;
                      x_2325 = x_2332;
                    }
                    let x_2333 : f32 = x_2325;
                    u_xlat4.z = x_2333;
                    let x_2335 : vec2<i32> = u_xlati15;
                    let x_2336 : vec2<i32> = ~(x_2335);
                    let x_2337 : vec3<i32> = u_xlati10;
                    u_xlati10 = vec3<i32>(x_2336.x, x_2337.y, x_2336.y);
                    let x_2340 : i32 = u_xlati10.z;
                    let x_2343 : i32 = u_xlati10.x;
                    u_xlati10.x = bitcast<i32>((bitcast<u32>(x_2340) | bitcast<u32>(x_2343)));
                    let x_2349 : f32 = u_xlat14.x;
                    let x_2352 : f32 = u_xlat5.x;
                    u_xlat22 = ((x_2349 * 4.0f) + x_2352);
                    let x_2355 : i32 = u_xlati15.y;
                    if ((x_2355 != 0i)) {
                      let x_2361 : f32 = u_xlat5.x;
                      x_2357 = x_2361;
                    } else {
                      let x_2363 : f32 = u_xlat22;
                      x_2357 = x_2363;
                    }
                    let x_2364 : f32 = x_2357;
                    u_xlat5.x = x_2364;
                    let x_2367 : f32 = u_xlat14.y;
                    let x_2370 : f32 = u_xlat5.z;
                    u_xlat22 = ((x_2367 * 4.0f) + x_2370);
                    let x_2373 : i32 = u_xlati15.y;
                    if ((x_2373 != 0i)) {
                      let x_2379 : f32 = u_xlat5.z;
                      x_2375 = x_2379;
                    } else {
                      let x_2381 : f32 = u_xlat22;
                      x_2375 = x_2381;
                    }
                    let x_2382 : f32 = x_2375;
                    u_xlat5.z = x_2382;
                    let x_2385 : i32 = u_xlati10.x;
                    if ((x_2385 != 0i)) {
                      let x_2390 : i32 = u_xlati15.x;
                      if ((x_2390 == 0i)) {
                        let x_2394 : vec3<f32> = u_xlat4;
                        let x_2395 : vec2<f32> = vec2<f32>(x_2394.x, x_2394.z);
                        let x_2396 : vec3<f32> = u_xlat10;
                        u_xlat10 = vec3<f32>(x_2395.x, x_2396.y, x_2395.y);
                        let x_2398 : vec3<f32> = u_xlat10;
                        let x_2402 : vec2<f32> = clamp(vec2<f32>(x_2398.x, x_2398.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
                        let x_2403 : vec3<f32> = u_xlat10;
                        u_xlat10 = vec3<f32>(x_2402.x, x_2403.y, x_2402.y);
                        let x_2405 : vec3<f32> = u_xlat10;
                        let x_2408 : f32 = x_30.x_RenderViewportScaleFactor;
                        let x_2410 : vec2<f32> = (vec2<f32>(x_2405.x, x_2405.z) * vec2<f32>(x_2408, x_2408));
                        let x_2411 : vec3<f32> = u_xlat10;
                        u_xlat10 = vec3<f32>(x_2410.x, x_2411.y, x_2410.y);
                        let x_2416 : vec3<f32> = u_xlat10;
                        let x_2418 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_2416.x, x_2416.z), 0.0f);
                        u_xlat3.x = x_2418.y;
                      }
                      let x_2422 : i32 = u_xlati15.y;
                      if ((x_2422 == 0i)) {
                        let x_2426 : vec3<f32> = u_xlat5;
                        let x_2427 : vec2<f32> = vec2<f32>(x_2426.x, x_2426.z);
                        let x_2428 : vec3<f32> = u_xlat10;
                        u_xlat10 = vec3<f32>(x_2427.x, x_2428.y, x_2427.y);
                        let x_2430 : vec3<f32> = u_xlat10;
                        let x_2434 : vec2<f32> = clamp(vec2<f32>(x_2430.x, x_2430.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
                        let x_2435 : vec3<f32> = u_xlat10;
                        u_xlat10 = vec3<f32>(x_2434.x, x_2435.y, x_2434.y);
                        let x_2437 : vec3<f32> = u_xlat10;
                        let x_2440 : f32 = x_30.x_RenderViewportScaleFactor;
                        let x_2442 : vec2<f32> = (vec2<f32>(x_2437.x, x_2437.z) * vec2<f32>(x_2440, x_2440));
                        let x_2443 : vec3<f32> = u_xlat10;
                        u_xlat10 = vec3<f32>(x_2442.x, x_2443.y, x_2442.y);
                        let x_2448 : vec3<f32> = u_xlat10;
                        let x_2450 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_2448.x, x_2448.z), 0.0f);
                        u_xlat3.y = x_2450.y;
                      }
                      let x_2453 : f32 = u_xlat12;
                      let x_2457 : f32 = u_xlat3.x;
                      u_xlat10.x = ((-(x_2453) * 0.5f) + x_2457);
                      let x_2461 : i32 = u_xlati15.x;
                      if ((x_2461 != 0i)) {
                        let x_2467 : f32 = u_xlat3.x;
                        x_2463 = x_2467;
                      } else {
                        let x_2470 : f32 = u_xlat10.x;
                        x_2463 = x_2470;
                      }
                      let x_2471 : f32 = x_2463;
                      u_xlat3.x = x_2471;
                      let x_2473 : f32 = u_xlat12;
                      let x_2477 : f32 = u_xlat3.y;
                      u_xlat12 = ((-(x_2473) * 0.5f) + x_2477);
                      let x_2480 : i32 = u_xlati15.y;
                      if ((x_2480 != 0i)) {
                        let x_2486 : f32 = u_xlat3.y;
                        x_2482 = x_2486;
                      } else {
                        let x_2488 : f32 = u_xlat12;
                        x_2482 = x_2488;
                      }
                      let x_2489 : f32 = x_2482;
                      u_xlat3.y = x_2489;
                      let x_2493 : vec3<f32> = u_xlat3;
                      let x_2496 : vec3<f32> = u_xlat2;
                      let x_2498 : vec4<bool> = (abs(vec4<f32>(x_2493.x, x_2493.y, x_2493.x, x_2493.y)) >= vec4<f32>(x_2496.x, x_2496.x, x_2496.x, x_2496.x));
                      u_xlatb15 = vec2<bool>(x_2498.x, x_2498.y);
                      let x_2501 : f32 = u_xlat14.x;
                      let x_2506 : f32 = u_xlat4.x;
                      u_xlat12 = ((-(x_2501) * 8.0f) + x_2506);
                      let x_2509 : bool = u_xlatb15.x;
                      if (x_2509) {
                        let x_2514 : f32 = u_xlat4.x;
                        x_2510 = x_2514;
                      } else {
                        let x_2516 : f32 = u_xlat12;
                        x_2510 = x_2516;
                      }
                      let x_2517 : f32 = x_2510;
                      u_xlat4.x = x_2517;
                      let x_2520 : f32 = u_xlat14.y;
                      let x_2524 : f32 = u_xlat4.z;
                      u_xlat12 = ((-(x_2520) * 8.0f) + x_2524);
                      let x_2527 : bool = u_xlatb15.x;
                      if (x_2527) {
                        let x_2532 : f32 = u_xlat4.z;
                        x_2528 = x_2532;
                      } else {
                        let x_2534 : f32 = u_xlat12;
                        x_2528 = x_2534;
                      }
                      let x_2535 : f32 = x_2528;
                      u_xlat4.z = x_2535;
                      let x_2538 : f32 = u_xlat14.x;
                      let x_2541 : f32 = u_xlat5.x;
                      u_xlat12 = ((x_2538 * 8.0f) + x_2541);
                      let x_2544 : bool = u_xlatb15.y;
                      if (x_2544) {
                        let x_2549 : f32 = u_xlat5.x;
                        x_2545 = x_2549;
                      } else {
                        let x_2551 : f32 = u_xlat12;
                        x_2545 = x_2551;
                      }
                      let x_2552 : f32 = x_2545;
                      u_xlat5.x = x_2552;
                      let x_2555 : f32 = u_xlat14.y;
                      let x_2558 : f32 = u_xlat5.z;
                      u_xlat12 = ((x_2555 * 8.0f) + x_2558);
                      let x_2561 : bool = u_xlatb15.y;
                      if (x_2561) {
                        let x_2566 : f32 = u_xlat5.z;
                        x_2562 = x_2566;
                      } else {
                        let x_2568 : f32 = u_xlat12;
                        x_2562 = x_2568;
                      }
                      let x_2569 : f32 = x_2562;
                      u_xlat5.z = x_2569;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
    let x_2572 : f32 = u_xlat4.x;
    let x_2575 : f32 = vs_TEXCOORD0.x;
    u_xlat12 = (-(x_2572) + x_2575);
    let x_2578 : f32 = u_xlat4.z;
    let x_2581 : f32 = vs_TEXCOORD0.y;
    u_xlat14.x = (-(x_2578) + x_2581);
    let x_2585 : bool = u_xlatb0.x;
    if (x_2585) {
      let x_2589 : f32 = u_xlat12;
      x_2586 = x_2589;
    } else {
      let x_2592 : f32 = u_xlat14.x;
      x_2586 = x_2592;
    }
    let x_2593 : f32 = x_2586;
    u_xlat12 = x_2593;
    let x_2594 : vec3<f32> = u_xlat5;
    let x_2596 : vec2<f32> = vs_TEXCOORD0;
    let x_2598 : vec2<f32> = (vec2<f32>(x_2594.x, x_2594.z) + -(x_2596));
    let x_2599 : vec3<f32> = u_xlat2;
    u_xlat2 = vec3<f32>(x_2598.x, x_2599.y, x_2598.y);
    let x_2602 : bool = u_xlatb0.x;
    if (x_2602) {
      let x_2607 : f32 = u_xlat2.x;
      x_2603 = x_2607;
    } else {
      let x_2610 : f32 = u_xlat2.z;
      x_2603 = x_2610;
    }
    let x_2611 : f32 = x_2603;
    u_xlat2.x = x_2611;
    let x_2614 : vec3<f32> = u_xlat3;
    let x_2617 : vec4<bool> = (vec4<f32>(x_2614.x, x_2614.y, x_2614.x, x_2614.y) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
    u_xlati14 = bitcast<vec2<i32>>((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_2617.x, x_2617.y)) * vec2<u32>(4294967295u, 4294967295u)));
    let x_2623 : f32 = u_xlat12;
    let x_2625 : f32 = u_xlat2.x;
    u_xlat3.x = (x_2623 + x_2625);
    let x_2629 : i32 = u_xlati8;
    let x_2632 : vec2<i32> = u_xlati14;
    let x_2634 : vec4<bool> = (vec4<i32>(x_2629, x_2629, x_2629, x_2629) != vec4<i32>(x_2632.x, x_2632.y, x_2632.x, x_2632.x));
    u_xlatb8 = vec2<bool>(x_2634.x, x_2634.y);
    let x_2637 : f32 = u_xlat3.x;
    u_xlat20 = (1.0f / x_2637);
    let x_2639 : f32 = u_xlat12;
    let x_2641 : f32 = u_xlat2.x;
    u_xlatb3 = (x_2639 < x_2641);
    let x_2643 : f32 = u_xlat12;
    let x_2645 : f32 = u_xlat2.x;
    u_xlat12 = min(x_2643, x_2645);
    let x_2648 : bool = u_xlatb3;
    if (x_2648) {
      let x_2654 : bool = u_xlatb8.x;
      x_2650 = x_2654;
    } else {
      let x_2657 : bool = u_xlatb8.y;
      x_2650 = x_2657;
    }
    let x_2658 : bool = x_2650;
    u_xlatb2 = x_2658;
    let x_2660 : f32 = u_xlat6.x;
    let x_2662 : f32 = u_xlat6.x;
    u_xlat6.x = (x_2660 * x_2662);
    let x_2665 : f32 = u_xlat12;
    let x_2666 : f32 = u_xlat20;
    u_xlat12 = ((x_2665 * -(x_2666)) + 0.5f);
    let x_2670 : bool = u_xlatb2;
    let x_2671 : f32 = u_xlat12;
    u_xlat12 = select(0.0f, x_2671, x_2670);
    let x_2674 : f32 = u_xlat6.x;
    let x_2675 : f32 = u_xlat12;
    u_xlat6.x = max(x_2674, x_2675);
    let x_2678 : vec2<f32> = u_xlat6;
    let x_2680 : f32 = u_xlat18;
    let x_2683 : vec2<f32> = vs_TEXCOORD0;
    u_xlat6 = ((vec2<f32>(x_2678.x, x_2678.x) * vec2<f32>(x_2680, x_2680)) + x_2683);
    let x_2686 : bool = u_xlatb0.x;
    if (x_2686) {
      let x_2691 : f32 = vs_TEXCOORD0.x;
      x_2687 = x_2691;
    } else {
      let x_2694 : f32 = u_xlat6.x;
      x_2687 = x_2694;
    }
    let x_2695 : f32 = x_2687;
    u_xlat2.x = x_2695;
    let x_2698 : f32 = u_xlat2.x;
    u_xlat2.x = clamp(x_2698, 0.0f, 1.0f);
    let x_2702 : bool = u_xlatb0.x;
    if (x_2702) {
      let x_2707 : f32 = u_xlat6.y;
      x_2703 = x_2707;
    } else {
      let x_2710 : f32 = vs_TEXCOORD0.y;
      x_2703 = x_2710;
    }
    let x_2711 : f32 = x_2703;
    u_xlat2.y = x_2711;
    let x_2714 : f32 = u_xlat2.y;
    u_xlat2.y = clamp(x_2714, 0.0f, 1.0f);
    let x_2717 : vec3<f32> = u_xlat2;
    let x_2720 : f32 = x_30.x_RenderViewportScaleFactor;
    let x_2722 : vec2<f32> = (vec2<f32>(x_2717.x, x_2717.y) * vec2<f32>(x_2720, x_2720));
    let x_2723 : vec3<f32> = u_xlat0;
    u_xlat0 = vec3<f32>(x_2722.x, x_2722.y, x_2723.z);
    let x_2728 : vec3<f32> = u_xlat0;
    let x_2730 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_2728.x, x_2728.y), 0.0f);
    u_xlat0 = vec3<f32>(x_2730.x, x_2730.y, x_2730.z);
    let x_2733 : f32 = u_xlat1.y;
    u_xlat1.w = x_2733;
  } else {
    let x_2737 : vec4<f32> = u_xlat1;
    u_xlat0 = vec3<f32>(x_2737.x, x_2737.y, x_2737.z);
  }
  let x_2739 : vec2<f32> = vs_TEXCOORD0;
  let x_2742 : vec4<f32> = x_30.x_Dithering_Coords;
  let x_2746 : vec4<f32> = x_30.x_Dithering_Coords;
  let x_2748 : vec2<f32> = ((x_2739 * vec2<f32>(x_2742.x, x_2742.y)) + vec2<f32>(x_2746.z, x_2746.w));
  let x_2749 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_2748.x, x_2748.y, x_2749.z);
  let x_2756 : vec3<f32> = u_xlat2;
  let x_2758 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_2756.x, x_2756.y));
  u_xlat18 = x_2758.w;
  let x_2760 : f32 = u_xlat18;
  u_xlat18 = ((x_2760 * 2.0f) + -1.0f);
  let x_2764 : f32 = u_xlat18;
  u_xlat2.x = ((x_2764 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_2770 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_2770, 0.0f, 1.0f);
  let x_2774 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_2774 * 2.0f) + -1.0f);
  let x_2778 : f32 = u_xlat18;
  u_xlat18 = (-(abs(x_2778)) + 1.0f);
  let x_2782 : f32 = u_xlat18;
  u_xlat18 = sqrt(x_2782);
  let x_2784 : f32 = u_xlat18;
  u_xlat18 = (-(x_2784) + 1.0f);
  let x_2787 : f32 = u_xlat18;
  let x_2789 : f32 = u_xlat2.x;
  u_xlat18 = (x_2787 * x_2789);
  let x_2791 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_2791 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_2795 : vec3<f32> = u_xlat0;
  u_xlat3 = max(abs(x_2795), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_2800 : vec3<f32> = u_xlat3;
  u_xlat3 = log2(x_2800);
  let x_2802 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_2802 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_2806 : vec3<f32> = u_xlat3;
  u_xlat3 = exp2(x_2806);
  let x_2808 : vec3<f32> = u_xlat3;
  u_xlat3 = ((x_2808 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_2817 : vec3<f32> = u_xlat0;
  let x_2819 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_2817.x, x_2817.y, x_2817.z, x_2817.x));
  u_xlatb0 = vec3<bool>(x_2819.x, x_2819.y, x_2819.z);
  let x_2822 : bool = u_xlatb0.x;
  if (x_2822) {
    let x_2827 : f32 = u_xlat2.x;
    x_2823 = x_2827;
  } else {
    let x_2830 : f32 = u_xlat3.x;
    x_2823 = x_2830;
  }
  let x_2831 : f32 = x_2823;
  u_xlat0.x = x_2831;
  let x_2834 : bool = u_xlatb0.y;
  if (x_2834) {
    let x_2839 : f32 = u_xlat2.y;
    x_2835 = x_2839;
  } else {
    let x_2842 : f32 = u_xlat3.y;
    x_2835 = x_2842;
  }
  let x_2843 : f32 = x_2835;
  u_xlat0.y = x_2843;
  let x_2846 : bool = u_xlatb0.z;
  if (x_2846) {
    let x_2851 : f32 = u_xlat2.z;
    x_2847 = x_2851;
  } else {
    let x_2854 : f32 = u_xlat3.z;
    x_2847 = x_2854;
  }
  let x_2855 : f32 = x_2847;
  u_xlat0.z = x_2855;
  let x_2857 : f32 = u_xlat18;
  let x_2862 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_2857, x_2857, x_2857) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + x_2862);
  let x_2864 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_2864 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_2868 : vec3<f32> = u_xlat0;
  u_xlat3 = (x_2868 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_2872 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_2872 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_2876 : vec3<f32> = u_xlat3;
  u_xlat3 = max(abs(x_2876), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_2879 : vec3<f32> = u_xlat3;
  u_xlat3 = log2(x_2879);
  let x_2881 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_2881 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_2885 : vec3<f32> = u_xlat3;
  u_xlat3 = exp2(x_2885);
  let x_2889 : vec3<f32> = u_xlat0;
  let x_2891 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_2889.x, x_2889.y, x_2889.z, x_2889.x));
  u_xlatb0 = vec3<bool>(x_2891.x, x_2891.y, x_2891.z);
  let x_2894 : bool = u_xlatb0.x;
  if (x_2894) {
    let x_2899 : f32 = u_xlat2.x;
    x_2895 = x_2899;
  } else {
    let x_2902 : f32 = u_xlat3.x;
    x_2895 = x_2902;
  }
  let x_2903 : f32 = x_2895;
  u_xlat1.x = x_2903;
  let x_2906 : bool = u_xlatb0.y;
  if (x_2906) {
    let x_2911 : f32 = u_xlat2.y;
    x_2907 = x_2911;
  } else {
    let x_2914 : f32 = u_xlat3.y;
    x_2907 = x_2914;
  }
  let x_2915 : f32 = x_2907;
  u_xlat1.y = x_2915;
  let x_2918 : bool = u_xlatb0.z;
  if (x_2918) {
    let x_2923 : f32 = u_xlat2.z;
    x_2919 = x_2923;
  } else {
    let x_2926 : f32 = u_xlat3.z;
    x_2919 = x_2926;
  }
  let x_2927 : f32 = x_2919;
  u_xlat1.z = x_2927;
  let x_2931 : vec4<f32> = u_xlat1;
  SV_Target0 = x_2931;
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

