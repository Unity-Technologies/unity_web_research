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
  var u_xlat3 : vec3<f32>;
  var u_xlat9 : vec2<f32>;
  var u_xlatb20 : bool;
  var u_xlat6 : vec2<f32>;
  var u_xlat15 : vec2<f32>;
  var u_xlat21 : f32;
  var u_xlat4 : vec3<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlatb0 : vec3<bool>;
  var x_337 : f32;
  var x_353 : f32;
  var u_xlatb3 : bool;
  var x_405 : f32;
  var x_426 : f32;
  var x_436 : f32;
  var x_453 : f32;
  var x_466 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlat16 : vec2<f32>;
  var x_537 : f32;
  var u_xlati8 : i32;
  var u_xlati15 : vec2<i32>;
  var x_611 : f32;
  var u_xlat22 : f32;
  var x_632 : f32;
  var u_xlati10 : vec3<i32>;
  var x_667 : f32;
  var x_685 : f32;
  var x_773 : f32;
  var x_793 : f32;
  var x_825 : f32;
  var x_846 : f32;
  var x_878 : f32;
  var x_896 : f32;
  var x_984 : f32;
  var x_1004 : f32;
  var x_1036 : f32;
  var x_1057 : f32;
  var x_1089 : f32;
  var x_1107 : f32;
  var x_1195 : f32;
  var x_1215 : f32;
  var x_1247 : f32;
  var x_1268 : f32;
  var x_1300 : f32;
  var x_1318 : f32;
  var x_1406 : f32;
  var x_1426 : f32;
  var x_1458 : f32;
  var x_1479 : f32;
  var x_1511 : f32;
  var x_1529 : f32;
  var x_1617 : f32;
  var x_1637 : f32;
  var x_1669 : f32;
  var x_1690 : f32;
  var x_1722 : f32;
  var x_1740 : f32;
  var x_1828 : f32;
  var x_1848 : f32;
  var x_1880 : f32;
  var x_1901 : f32;
  var x_1933 : f32;
  var x_1951 : f32;
  var x_2039 : f32;
  var x_2059 : f32;
  var x_2091 : f32;
  var x_2112 : f32;
  var x_2144 : f32;
  var x_2162 : f32;
  var x_2250 : f32;
  var x_2270 : f32;
  var x_2303 : f32;
  var x_2324 : f32;
  var x_2356 : f32;
  var x_2374 : f32;
  var x_2462 : f32;
  var x_2481 : f32;
  var u_xlatb15 : vec2<bool>;
  var x_2509 : f32;
  var x_2527 : f32;
  var x_2544 : f32;
  var x_2561 : f32;
  var x_2585 : f32;
  var x_2602 : f32;
  var u_xlati14 : vec2<i32>;
  var u_xlatb8 : vec2<bool>;
  var u_xlatb2 : bool;
  var x_2648 : bool;
  var x_2685 : f32;
  var x_2701 : f32;
  var x_2821 : f32;
  var x_2833 : f32;
  var x_2845 : f32;
  var x_2893 : f32;
  var x_2905 : f32;
  var x_2917 : f32;
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
      let x_358 : f32 = x_30.x_MainTex_TexelSize.y;
      x_353 = x_358;
    } else {
      let x_361 : f32 = x_30.x_MainTex_TexelSize.x;
      x_353 = x_361;
    }
    let x_362 : f32 = x_353;
    u_xlat18 = x_362;
    let x_364 : f32 = u_xlat6.x;
    let x_368 : f32 = u_xlat1.y;
    u_xlat6.x = ((x_364 * 0.083333336f) + -(x_368));
    let x_373 : f32 = u_xlat1.y;
    let x_376 : f32 = u_xlat2.x;
    u_xlat8 = (-(x_373) + x_376);
    let x_379 : f32 = u_xlat1.y;
    let x_381 : f32 = u_xlat12;
    u_xlat20 = (-(x_379) + x_381);
    let x_384 : f32 = u_xlat1.y;
    let x_386 : f32 = u_xlat2.x;
    u_xlat2.x = (x_384 + x_386);
    let x_390 : f32 = u_xlat1.y;
    let x_391 : f32 = u_xlat12;
    u_xlat12 = (x_390 + x_391);
    let x_394 : f32 = u_xlat8;
    let x_396 : f32 = u_xlat20;
    u_xlatb3 = (abs(x_394) >= abs(x_396));
    let x_399 : f32 = u_xlat20;
    let x_401 : f32 = u_xlat8;
    u_xlat8 = max(abs(x_399), abs(x_401));
    let x_404 : bool = u_xlatb3;
    if (x_404) {
      let x_408 : f32 = u_xlat18;
      x_405 = -(x_408);
    } else {
      let x_411 : f32 = u_xlat18;
      x_405 = x_411;
    }
    let x_412 : f32 = x_405;
    u_xlat18 = x_412;
    let x_414 : f32 = u_xlat14.x;
    let x_416 : f32 = u_xlat6.x;
    u_xlat6.x = (x_414 * abs(x_416));
    let x_421 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_421, 0.0f, 1.0f);
    let x_425 : bool = u_xlatb0.x;
    if (x_425) {
      let x_430 : f32 = x_30.x_MainTex_TexelSize.x;
      x_426 = x_430;
    } else {
      x_426 = 0.0f;
    }
    let x_432 : f32 = x_426;
    u_xlat14.x = x_432;
    let x_435 : bool = u_xlatb0.x;
    if (x_435) {
      x_436 = 0.0f;
    } else {
      let x_441 : f32 = x_30.x_MainTex_TexelSize.y;
      x_436 = x_441;
    }
    let x_442 : f32 = x_436;
    u_xlat14.y = x_442;
    let x_444 : f32 = u_xlat18;
    let x_449 : vec2<f32> = vs_TEXCOORD0;
    u_xlat9 = ((vec2<f32>(x_444, x_444) * vec2<f32>(0.5f, 0.5f)) + x_449);
    let x_452 : bool = u_xlatb0.x;
    if (x_452) {
      let x_458 : f32 = vs_TEXCOORD0.x;
      x_453 = x_458;
    } else {
      let x_461 : f32 = u_xlat9.x;
      x_453 = x_461;
    }
    let x_462 : f32 = x_453;
    u_xlat9.x = x_462;
    let x_465 : bool = u_xlatb0.x;
    if (x_465) {
      let x_470 : f32 = u_xlat9.y;
      x_466 = x_470;
    } else {
      let x_473 : f32 = vs_TEXCOORD0.y;
      x_466 = x_473;
    }
    let x_474 : f32 = x_466;
    u_xlat9.y = x_474;
    let x_476 : vec2<f32> = u_xlat14;
    let x_478 : vec2<f32> = u_xlat9;
    let x_479 : vec2<f32> = (-(x_476) + x_478);
    let x_480 : vec3<f32> = u_xlat4;
    u_xlat4 = vec3<f32>(x_479.x, x_479.y, x_480.z);
    let x_483 : vec2<f32> = u_xlat14;
    let x_484 : vec2<f32> = u_xlat9;
    let x_485 : vec2<f32> = (x_483 + x_484);
    let x_486 : vec3<f32> = u_xlat5;
    u_xlat5 = vec3<f32>(x_485.x, x_485.y, x_486.z);
    let x_489 : f32 = u_xlat6.x;
    u_xlat9.x = ((x_489 * -2.0f) + 3.0f);
    let x_494 : vec3<f32> = u_xlat4;
    u_xlat15 = vec2<f32>(x_494.x, x_494.y);
    let x_496 : vec2<f32> = u_xlat15;
    u_xlat15 = clamp(x_496, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_500 : vec2<f32> = u_xlat15;
    let x_502 : f32 = x_30.x_RenderViewportScaleFactor;
    u_xlat15 = (x_500 * vec2<f32>(x_502, x_502));
    let x_508 : vec2<f32> = u_xlat15;
    let x_509 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_508, 0.0f);
    u_xlat15.x = x_509.y;
    let x_513 : f32 = u_xlat6.x;
    let x_515 : f32 = u_xlat6.x;
    u_xlat6.x = (x_513 * x_515);
    let x_519 : vec3<f32> = u_xlat5;
    u_xlat16 = vec2<f32>(x_519.x, x_519.y);
    let x_521 : vec2<f32> = u_xlat16;
    u_xlat16 = clamp(x_521, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_525 : vec2<f32> = u_xlat16;
    let x_527 : f32 = x_30.x_RenderViewportScaleFactor;
    u_xlat16 = (x_525 * vec2<f32>(x_527, x_527));
    let x_533 : vec2<f32> = u_xlat16;
    let x_534 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_533, 0.0f);
    u_xlat21 = x_534.y;
    let x_536 : bool = u_xlatb3;
    if (x_536) {
      let x_541 : f32 = u_xlat2.x;
      x_537 = x_541;
    } else {
      let x_543 : f32 = u_xlat12;
      x_537 = x_543;
    }
    let x_544 : f32 = x_537;
    u_xlat12 = x_544;
    let x_545 : f32 = u_xlat8;
    u_xlat2.x = (x_545 * 0.25f);
    let x_549 : f32 = u_xlat12;
    let x_553 : f32 = u_xlat1.y;
    u_xlat8 = ((-(x_549) * 0.5f) + x_553);
    let x_556 : f32 = u_xlat6.x;
    let x_558 : f32 = u_xlat9.x;
    u_xlat6.x = (x_556 * x_558);
    let x_563 : f32 = u_xlat8;
    u_xlati8 = bitcast<i32>(select(0u, 4294967295u, (x_563 < 0.0f)));
    let x_568 : f32 = u_xlat12;
    let x_572 : f32 = u_xlat15.x;
    u_xlat3.x = ((-(x_568) * 0.5f) + x_572);
    let x_575 : f32 = u_xlat12;
    let x_578 : f32 = u_xlat21;
    u_xlat3.y = ((-(x_575) * 0.5f) + x_578);
    let x_583 : vec3<f32> = u_xlat3;
    let x_586 : vec3<f32> = u_xlat2;
    let x_589 : vec4<bool> = (abs(vec4<f32>(x_583.x, x_583.y, x_583.x, x_583.y)) >= vec4<f32>(x_586.x, x_586.x, x_586.x, x_586.x));
    u_xlati15 = bitcast<vec2<i32>>((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_589.x, x_589.y)) * vec2<u32>(4294967295u, 4294967295u)));
    let x_600 : f32 = u_xlat14.x;
    let x_605 : f32 = u_xlat4.x;
    u_xlat16.x = ((-(x_600) * 1.5f) + x_605);
    let x_609 : i32 = u_xlati15.x;
    if ((x_609 != 0i)) {
      let x_615 : f32 = u_xlat4.x;
      x_611 = x_615;
    } else {
      let x_618 : f32 = u_xlat16.x;
      x_611 = x_618;
    }
    let x_619 : f32 = x_611;
    u_xlat4.x = x_619;
    let x_623 : f32 = u_xlat14.y;
    let x_627 : f32 = u_xlat4.y;
    u_xlat22 = ((-(x_623) * 1.5f) + x_627);
    let x_630 : i32 = u_xlati15.x;
    if ((x_630 != 0i)) {
      let x_636 : f32 = u_xlat4.y;
      x_632 = x_636;
    } else {
      let x_638 : f32 = u_xlat22;
      x_632 = x_638;
    }
    let x_639 : f32 = x_632;
    u_xlat4.z = x_639;
    let x_645 : vec2<i32> = u_xlati15;
    let x_646 : vec2<i32> = ~(x_645);
    let x_647 : vec3<i32> = u_xlati10;
    u_xlati10 = vec3<i32>(x_646.x, x_647.y, x_646.y);
    let x_650 : i32 = u_xlati10.z;
    let x_653 : i32 = u_xlati10.x;
    u_xlati10.x = bitcast<i32>((bitcast<u32>(x_650) | bitcast<u32>(x_653)));
    let x_659 : f32 = u_xlat14.x;
    let x_662 : f32 = u_xlat5.x;
    u_xlat22 = ((x_659 * 1.5f) + x_662);
    let x_665 : i32 = u_xlati15.y;
    if ((x_665 != 0i)) {
      let x_671 : f32 = u_xlat5.x;
      x_667 = x_671;
    } else {
      let x_673 : f32 = u_xlat22;
      x_667 = x_673;
    }
    let x_674 : f32 = x_667;
    u_xlat5.x = x_674;
    let x_677 : f32 = u_xlat14.y;
    let x_680 : f32 = u_xlat5.y;
    u_xlat22 = ((x_677 * 1.5f) + x_680);
    let x_683 : i32 = u_xlati15.y;
    if ((x_683 != 0i)) {
      let x_689 : f32 = u_xlat5.y;
      x_685 = x_689;
    } else {
      let x_691 : f32 = u_xlat22;
      x_685 = x_691;
    }
    let x_692 : f32 = x_685;
    u_xlat5.z = x_692;
    let x_695 : i32 = u_xlati10.x;
    if ((x_695 != 0i)) {
      let x_700 : i32 = u_xlati15.x;
      if ((x_700 == 0i)) {
        let x_704 : vec3<f32> = u_xlat4;
        let x_705 : vec2<f32> = vec2<f32>(x_704.x, x_704.z);
        let x_706 : vec3<f32> = u_xlat10;
        u_xlat10 = vec3<f32>(x_705.x, x_706.y, x_705.y);
        let x_708 : vec3<f32> = u_xlat10;
        let x_712 : vec2<f32> = clamp(vec2<f32>(x_708.x, x_708.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_713 : vec3<f32> = u_xlat10;
        u_xlat10 = vec3<f32>(x_712.x, x_713.y, x_712.y);
        let x_715 : vec3<f32> = u_xlat10;
        let x_718 : f32 = x_30.x_RenderViewportScaleFactor;
        let x_720 : vec2<f32> = (vec2<f32>(x_715.x, x_715.z) * vec2<f32>(x_718, x_718));
        let x_721 : vec3<f32> = u_xlat10;
        u_xlat10 = vec3<f32>(x_720.x, x_721.y, x_720.y);
        let x_726 : vec3<f32> = u_xlat10;
        let x_728 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_726.x, x_726.z), 0.0f);
        u_xlat3.x = x_728.y;
      }
      let x_732 : i32 = u_xlati15.y;
      if ((x_732 == 0i)) {
        let x_736 : vec3<f32> = u_xlat5;
        let x_737 : vec2<f32> = vec2<f32>(x_736.x, x_736.z);
        let x_738 : vec3<f32> = u_xlat10;
        u_xlat10 = vec3<f32>(x_737.x, x_738.y, x_737.y);
        let x_740 : vec3<f32> = u_xlat10;
        let x_744 : vec2<f32> = clamp(vec2<f32>(x_740.x, x_740.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_745 : vec3<f32> = u_xlat10;
        u_xlat10 = vec3<f32>(x_744.x, x_745.y, x_744.y);
        let x_747 : vec3<f32> = u_xlat10;
        let x_750 : f32 = x_30.x_RenderViewportScaleFactor;
        let x_752 : vec2<f32> = (vec2<f32>(x_747.x, x_747.z) * vec2<f32>(x_750, x_750));
        let x_753 : vec3<f32> = u_xlat10;
        u_xlat10 = vec3<f32>(x_752.x, x_753.y, x_752.y);
        let x_758 : vec3<f32> = u_xlat10;
        let x_760 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_758.x, x_758.z), 0.0f);
        u_xlat3.y = x_760.y;
      }
      let x_763 : f32 = u_xlat12;
      let x_767 : f32 = u_xlat3.x;
      u_xlat10.x = ((-(x_763) * 0.5f) + x_767);
      let x_771 : i32 = u_xlati15.x;
      if ((x_771 != 0i)) {
        let x_777 : f32 = u_xlat3.x;
        x_773 = x_777;
      } else {
        let x_780 : f32 = u_xlat10.x;
        x_773 = x_780;
      }
      let x_781 : f32 = x_773;
      u_xlat3.x = x_781;
      let x_783 : f32 = u_xlat12;
      let x_787 : f32 = u_xlat3.y;
      u_xlat15.x = ((-(x_783) * 0.5f) + x_787);
      let x_791 : i32 = u_xlati15.y;
      if ((x_791 != 0i)) {
        let x_797 : f32 = u_xlat3.y;
        x_793 = x_797;
      } else {
        let x_800 : f32 = u_xlat15.x;
        x_793 = x_800;
      }
      let x_801 : f32 = x_793;
      u_xlat3.y = x_801;
      let x_803 : vec3<f32> = u_xlat3;
      let x_806 : vec3<f32> = u_xlat2;
      let x_808 : vec4<bool> = (abs(vec4<f32>(x_803.x, x_803.y, x_803.x, x_803.y)) >= vec4<f32>(x_806.x, x_806.x, x_806.x, x_806.x));
      u_xlati15 = bitcast<vec2<i32>>((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_808.x, x_808.y)) * vec2<u32>(4294967295u, 4294967295u)));
      let x_815 : f32 = u_xlat14.x;
      let x_819 : f32 = u_xlat4.x;
      u_xlat10.x = ((-(x_815) * 2.0f) + x_819);
      let x_823 : i32 = u_xlati15.x;
      if ((x_823 != 0i)) {
        let x_829 : f32 = u_xlat4.x;
        x_825 = x_829;
      } else {
        let x_832 : f32 = u_xlat10.x;
        x_825 = x_832;
      }
      let x_833 : f32 = x_825;
      u_xlat4.x = x_833;
      let x_836 : f32 = u_xlat14.y;
      let x_840 : f32 = u_xlat4.z;
      u_xlat10.x = ((-(x_836) * 2.0f) + x_840);
      let x_844 : i32 = u_xlati15.x;
      if ((x_844 != 0i)) {
        let x_850 : f32 = u_xlat4.z;
        x_846 = x_850;
      } else {
        let x_853 : f32 = u_xlat10.x;
        x_846 = x_853;
      }
      let x_854 : f32 = x_846;
      u_xlat4.z = x_854;
      let x_856 : vec2<i32> = u_xlati15;
      let x_857 : vec2<i32> = ~(x_856);
      let x_858 : vec3<i32> = u_xlati10;
      u_xlati10 = vec3<i32>(x_857.x, x_858.y, x_857.y);
      let x_861 : i32 = u_xlati10.z;
      let x_864 : i32 = u_xlati10.x;
      u_xlati10.x = bitcast<i32>((bitcast<u32>(x_861) | bitcast<u32>(x_864)));
      let x_870 : f32 = u_xlat14.x;
      let x_873 : f32 = u_xlat5.x;
      u_xlat22 = ((x_870 * 2.0f) + x_873);
      let x_876 : i32 = u_xlati15.y;
      if ((x_876 != 0i)) {
        let x_882 : f32 = u_xlat5.x;
        x_878 = x_882;
      } else {
        let x_884 : f32 = u_xlat22;
        x_878 = x_884;
      }
      let x_885 : f32 = x_878;
      u_xlat5.x = x_885;
      let x_888 : f32 = u_xlat14.y;
      let x_891 : f32 = u_xlat5.z;
      u_xlat22 = ((x_888 * 2.0f) + x_891);
      let x_894 : i32 = u_xlati15.y;
      if ((x_894 != 0i)) {
        let x_900 : f32 = u_xlat5.z;
        x_896 = x_900;
      } else {
        let x_902 : f32 = u_xlat22;
        x_896 = x_902;
      }
      let x_903 : f32 = x_896;
      u_xlat5.z = x_903;
      let x_906 : i32 = u_xlati10.x;
      if ((x_906 != 0i)) {
        let x_911 : i32 = u_xlati15.x;
        if ((x_911 == 0i)) {
          let x_915 : vec3<f32> = u_xlat4;
          let x_916 : vec2<f32> = vec2<f32>(x_915.x, x_915.z);
          let x_917 : vec3<f32> = u_xlat10;
          u_xlat10 = vec3<f32>(x_916.x, x_917.y, x_916.y);
          let x_919 : vec3<f32> = u_xlat10;
          let x_923 : vec2<f32> = clamp(vec2<f32>(x_919.x, x_919.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_924 : vec3<f32> = u_xlat10;
          u_xlat10 = vec3<f32>(x_923.x, x_924.y, x_923.y);
          let x_926 : vec3<f32> = u_xlat10;
          let x_929 : f32 = x_30.x_RenderViewportScaleFactor;
          let x_931 : vec2<f32> = (vec2<f32>(x_926.x, x_926.z) * vec2<f32>(x_929, x_929));
          let x_932 : vec3<f32> = u_xlat10;
          u_xlat10 = vec3<f32>(x_931.x, x_932.y, x_931.y);
          let x_937 : vec3<f32> = u_xlat10;
          let x_939 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_937.x, x_937.z), 0.0f);
          u_xlat3.x = x_939.y;
        }
        let x_943 : i32 = u_xlati15.y;
        if ((x_943 == 0i)) {
          let x_947 : vec3<f32> = u_xlat5;
          let x_948 : vec2<f32> = vec2<f32>(x_947.x, x_947.z);
          let x_949 : vec3<f32> = u_xlat10;
          u_xlat10 = vec3<f32>(x_948.x, x_949.y, x_948.y);
          let x_951 : vec3<f32> = u_xlat10;
          let x_955 : vec2<f32> = clamp(vec2<f32>(x_951.x, x_951.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_956 : vec3<f32> = u_xlat10;
          u_xlat10 = vec3<f32>(x_955.x, x_956.y, x_955.y);
          let x_958 : vec3<f32> = u_xlat10;
          let x_961 : f32 = x_30.x_RenderViewportScaleFactor;
          let x_963 : vec2<f32> = (vec2<f32>(x_958.x, x_958.z) * vec2<f32>(x_961, x_961));
          let x_964 : vec3<f32> = u_xlat10;
          u_xlat10 = vec3<f32>(x_963.x, x_964.y, x_963.y);
          let x_969 : vec3<f32> = u_xlat10;
          let x_971 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_969.x, x_969.z), 0.0f);
          u_xlat3.y = x_971.y;
        }
        let x_974 : f32 = u_xlat12;
        let x_978 : f32 = u_xlat3.x;
        u_xlat10.x = ((-(x_974) * 0.5f) + x_978);
        let x_982 : i32 = u_xlati15.x;
        if ((x_982 != 0i)) {
          let x_988 : f32 = u_xlat3.x;
          x_984 = x_988;
        } else {
          let x_991 : f32 = u_xlat10.x;
          x_984 = x_991;
        }
        let x_992 : f32 = x_984;
        u_xlat3.x = x_992;
        let x_994 : f32 = u_xlat12;
        let x_998 : f32 = u_xlat3.y;
        u_xlat15.x = ((-(x_994) * 0.5f) + x_998);
        let x_1002 : i32 = u_xlati15.y;
        if ((x_1002 != 0i)) {
          let x_1008 : f32 = u_xlat3.y;
          x_1004 = x_1008;
        } else {
          let x_1011 : f32 = u_xlat15.x;
          x_1004 = x_1011;
        }
        let x_1012 : f32 = x_1004;
        u_xlat3.y = x_1012;
        let x_1014 : vec3<f32> = u_xlat3;
        let x_1017 : vec3<f32> = u_xlat2;
        let x_1019 : vec4<bool> = (abs(vec4<f32>(x_1014.x, x_1014.y, x_1014.x, x_1014.y)) >= vec4<f32>(x_1017.x, x_1017.x, x_1017.x, x_1017.x));
        u_xlati15 = bitcast<vec2<i32>>((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_1019.x, x_1019.y)) * vec2<u32>(4294967295u, 4294967295u)));
        let x_1026 : f32 = u_xlat14.x;
        let x_1030 : f32 = u_xlat4.x;
        u_xlat10.x = ((-(x_1026) * 2.0f) + x_1030);
        let x_1034 : i32 = u_xlati15.x;
        if ((x_1034 != 0i)) {
          let x_1040 : f32 = u_xlat4.x;
          x_1036 = x_1040;
        } else {
          let x_1043 : f32 = u_xlat10.x;
          x_1036 = x_1043;
        }
        let x_1044 : f32 = x_1036;
        u_xlat4.x = x_1044;
        let x_1047 : f32 = u_xlat14.y;
        let x_1051 : f32 = u_xlat4.z;
        u_xlat10.x = ((-(x_1047) * 2.0f) + x_1051);
        let x_1055 : i32 = u_xlati15.x;
        if ((x_1055 != 0i)) {
          let x_1061 : f32 = u_xlat4.z;
          x_1057 = x_1061;
        } else {
          let x_1064 : f32 = u_xlat10.x;
          x_1057 = x_1064;
        }
        let x_1065 : f32 = x_1057;
        u_xlat4.z = x_1065;
        let x_1067 : vec2<i32> = u_xlati15;
        let x_1068 : vec2<i32> = ~(x_1067);
        let x_1069 : vec3<i32> = u_xlati10;
        u_xlati10 = vec3<i32>(x_1068.x, x_1069.y, x_1068.y);
        let x_1072 : i32 = u_xlati10.z;
        let x_1075 : i32 = u_xlati10.x;
        u_xlati10.x = bitcast<i32>((bitcast<u32>(x_1072) | bitcast<u32>(x_1075)));
        let x_1081 : f32 = u_xlat14.x;
        let x_1084 : f32 = u_xlat5.x;
        u_xlat22 = ((x_1081 * 2.0f) + x_1084);
        let x_1087 : i32 = u_xlati15.y;
        if ((x_1087 != 0i)) {
          let x_1093 : f32 = u_xlat5.x;
          x_1089 = x_1093;
        } else {
          let x_1095 : f32 = u_xlat22;
          x_1089 = x_1095;
        }
        let x_1096 : f32 = x_1089;
        u_xlat5.x = x_1096;
        let x_1099 : f32 = u_xlat14.y;
        let x_1102 : f32 = u_xlat5.z;
        u_xlat22 = ((x_1099 * 2.0f) + x_1102);
        let x_1105 : i32 = u_xlati15.y;
        if ((x_1105 != 0i)) {
          let x_1111 : f32 = u_xlat5.z;
          x_1107 = x_1111;
        } else {
          let x_1113 : f32 = u_xlat22;
          x_1107 = x_1113;
        }
        let x_1114 : f32 = x_1107;
        u_xlat5.z = x_1114;
        let x_1117 : i32 = u_xlati10.x;
        if ((x_1117 != 0i)) {
          let x_1122 : i32 = u_xlati15.x;
          if ((x_1122 == 0i)) {
            let x_1126 : vec3<f32> = u_xlat4;
            let x_1127 : vec2<f32> = vec2<f32>(x_1126.x, x_1126.z);
            let x_1128 : vec3<f32> = u_xlat10;
            u_xlat10 = vec3<f32>(x_1127.x, x_1128.y, x_1127.y);
            let x_1130 : vec3<f32> = u_xlat10;
            let x_1134 : vec2<f32> = clamp(vec2<f32>(x_1130.x, x_1130.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
            let x_1135 : vec3<f32> = u_xlat10;
            u_xlat10 = vec3<f32>(x_1134.x, x_1135.y, x_1134.y);
            let x_1137 : vec3<f32> = u_xlat10;
            let x_1140 : f32 = x_30.x_RenderViewportScaleFactor;
            let x_1142 : vec2<f32> = (vec2<f32>(x_1137.x, x_1137.z) * vec2<f32>(x_1140, x_1140));
            let x_1143 : vec3<f32> = u_xlat10;
            u_xlat10 = vec3<f32>(x_1142.x, x_1143.y, x_1142.y);
            let x_1148 : vec3<f32> = u_xlat10;
            let x_1150 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_1148.x, x_1148.z), 0.0f);
            u_xlat3.x = x_1150.y;
          }
          let x_1154 : i32 = u_xlati15.y;
          if ((x_1154 == 0i)) {
            let x_1158 : vec3<f32> = u_xlat5;
            let x_1159 : vec2<f32> = vec2<f32>(x_1158.x, x_1158.z);
            let x_1160 : vec3<f32> = u_xlat10;
            u_xlat10 = vec3<f32>(x_1159.x, x_1160.y, x_1159.y);
            let x_1162 : vec3<f32> = u_xlat10;
            let x_1166 : vec2<f32> = clamp(vec2<f32>(x_1162.x, x_1162.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
            let x_1167 : vec3<f32> = u_xlat10;
            u_xlat10 = vec3<f32>(x_1166.x, x_1167.y, x_1166.y);
            let x_1169 : vec3<f32> = u_xlat10;
            let x_1172 : f32 = x_30.x_RenderViewportScaleFactor;
            let x_1174 : vec2<f32> = (vec2<f32>(x_1169.x, x_1169.z) * vec2<f32>(x_1172, x_1172));
            let x_1175 : vec3<f32> = u_xlat10;
            u_xlat10 = vec3<f32>(x_1174.x, x_1175.y, x_1174.y);
            let x_1180 : vec3<f32> = u_xlat10;
            let x_1182 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_1180.x, x_1180.z), 0.0f);
            u_xlat3.y = x_1182.y;
          }
          let x_1185 : f32 = u_xlat12;
          let x_1189 : f32 = u_xlat3.x;
          u_xlat10.x = ((-(x_1185) * 0.5f) + x_1189);
          let x_1193 : i32 = u_xlati15.x;
          if ((x_1193 != 0i)) {
            let x_1199 : f32 = u_xlat3.x;
            x_1195 = x_1199;
          } else {
            let x_1202 : f32 = u_xlat10.x;
            x_1195 = x_1202;
          }
          let x_1203 : f32 = x_1195;
          u_xlat3.x = x_1203;
          let x_1205 : f32 = u_xlat12;
          let x_1209 : f32 = u_xlat3.y;
          u_xlat15.x = ((-(x_1205) * 0.5f) + x_1209);
          let x_1213 : i32 = u_xlati15.y;
          if ((x_1213 != 0i)) {
            let x_1219 : f32 = u_xlat3.y;
            x_1215 = x_1219;
          } else {
            let x_1222 : f32 = u_xlat15.x;
            x_1215 = x_1222;
          }
          let x_1223 : f32 = x_1215;
          u_xlat3.y = x_1223;
          let x_1225 : vec3<f32> = u_xlat3;
          let x_1228 : vec3<f32> = u_xlat2;
          let x_1230 : vec4<bool> = (abs(vec4<f32>(x_1225.x, x_1225.y, x_1225.x, x_1225.y)) >= vec4<f32>(x_1228.x, x_1228.x, x_1228.x, x_1228.x));
          u_xlati15 = bitcast<vec2<i32>>((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_1230.x, x_1230.y)) * vec2<u32>(4294967295u, 4294967295u)));
          let x_1237 : f32 = u_xlat14.x;
          let x_1241 : f32 = u_xlat4.x;
          u_xlat10.x = ((-(x_1237) * 2.0f) + x_1241);
          let x_1245 : i32 = u_xlati15.x;
          if ((x_1245 != 0i)) {
            let x_1251 : f32 = u_xlat4.x;
            x_1247 = x_1251;
          } else {
            let x_1254 : f32 = u_xlat10.x;
            x_1247 = x_1254;
          }
          let x_1255 : f32 = x_1247;
          u_xlat4.x = x_1255;
          let x_1258 : f32 = u_xlat14.y;
          let x_1262 : f32 = u_xlat4.z;
          u_xlat10.x = ((-(x_1258) * 2.0f) + x_1262);
          let x_1266 : i32 = u_xlati15.x;
          if ((x_1266 != 0i)) {
            let x_1272 : f32 = u_xlat4.z;
            x_1268 = x_1272;
          } else {
            let x_1275 : f32 = u_xlat10.x;
            x_1268 = x_1275;
          }
          let x_1276 : f32 = x_1268;
          u_xlat4.z = x_1276;
          let x_1278 : vec2<i32> = u_xlati15;
          let x_1279 : vec2<i32> = ~(x_1278);
          let x_1280 : vec3<i32> = u_xlati10;
          u_xlati10 = vec3<i32>(x_1279.x, x_1280.y, x_1279.y);
          let x_1283 : i32 = u_xlati10.z;
          let x_1286 : i32 = u_xlati10.x;
          u_xlati10.x = bitcast<i32>((bitcast<u32>(x_1283) | bitcast<u32>(x_1286)));
          let x_1292 : f32 = u_xlat14.x;
          let x_1295 : f32 = u_xlat5.x;
          u_xlat22 = ((x_1292 * 2.0f) + x_1295);
          let x_1298 : i32 = u_xlati15.y;
          if ((x_1298 != 0i)) {
            let x_1304 : f32 = u_xlat5.x;
            x_1300 = x_1304;
          } else {
            let x_1306 : f32 = u_xlat22;
            x_1300 = x_1306;
          }
          let x_1307 : f32 = x_1300;
          u_xlat5.x = x_1307;
          let x_1310 : f32 = u_xlat14.y;
          let x_1313 : f32 = u_xlat5.z;
          u_xlat22 = ((x_1310 * 2.0f) + x_1313);
          let x_1316 : i32 = u_xlati15.y;
          if ((x_1316 != 0i)) {
            let x_1322 : f32 = u_xlat5.z;
            x_1318 = x_1322;
          } else {
            let x_1324 : f32 = u_xlat22;
            x_1318 = x_1324;
          }
          let x_1325 : f32 = x_1318;
          u_xlat5.z = x_1325;
          let x_1328 : i32 = u_xlati10.x;
          if ((x_1328 != 0i)) {
            let x_1333 : i32 = u_xlati15.x;
            if ((x_1333 == 0i)) {
              let x_1337 : vec3<f32> = u_xlat4;
              let x_1338 : vec2<f32> = vec2<f32>(x_1337.x, x_1337.z);
              let x_1339 : vec3<f32> = u_xlat10;
              u_xlat10 = vec3<f32>(x_1338.x, x_1339.y, x_1338.y);
              let x_1341 : vec3<f32> = u_xlat10;
              let x_1345 : vec2<f32> = clamp(vec2<f32>(x_1341.x, x_1341.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
              let x_1346 : vec3<f32> = u_xlat10;
              u_xlat10 = vec3<f32>(x_1345.x, x_1346.y, x_1345.y);
              let x_1348 : vec3<f32> = u_xlat10;
              let x_1351 : f32 = x_30.x_RenderViewportScaleFactor;
              let x_1353 : vec2<f32> = (vec2<f32>(x_1348.x, x_1348.z) * vec2<f32>(x_1351, x_1351));
              let x_1354 : vec3<f32> = u_xlat10;
              u_xlat10 = vec3<f32>(x_1353.x, x_1354.y, x_1353.y);
              let x_1359 : vec3<f32> = u_xlat10;
              let x_1361 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_1359.x, x_1359.z), 0.0f);
              u_xlat3.x = x_1361.y;
            }
            let x_1365 : i32 = u_xlati15.y;
            if ((x_1365 == 0i)) {
              let x_1369 : vec3<f32> = u_xlat5;
              let x_1370 : vec2<f32> = vec2<f32>(x_1369.x, x_1369.z);
              let x_1371 : vec3<f32> = u_xlat10;
              u_xlat10 = vec3<f32>(x_1370.x, x_1371.y, x_1370.y);
              let x_1373 : vec3<f32> = u_xlat10;
              let x_1377 : vec2<f32> = clamp(vec2<f32>(x_1373.x, x_1373.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
              let x_1378 : vec3<f32> = u_xlat10;
              u_xlat10 = vec3<f32>(x_1377.x, x_1378.y, x_1377.y);
              let x_1380 : vec3<f32> = u_xlat10;
              let x_1383 : f32 = x_30.x_RenderViewportScaleFactor;
              let x_1385 : vec2<f32> = (vec2<f32>(x_1380.x, x_1380.z) * vec2<f32>(x_1383, x_1383));
              let x_1386 : vec3<f32> = u_xlat10;
              u_xlat10 = vec3<f32>(x_1385.x, x_1386.y, x_1385.y);
              let x_1391 : vec3<f32> = u_xlat10;
              let x_1393 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_1391.x, x_1391.z), 0.0f);
              u_xlat3.y = x_1393.y;
            }
            let x_1396 : f32 = u_xlat12;
            let x_1400 : f32 = u_xlat3.x;
            u_xlat10.x = ((-(x_1396) * 0.5f) + x_1400);
            let x_1404 : i32 = u_xlati15.x;
            if ((x_1404 != 0i)) {
              let x_1410 : f32 = u_xlat3.x;
              x_1406 = x_1410;
            } else {
              let x_1413 : f32 = u_xlat10.x;
              x_1406 = x_1413;
            }
            let x_1414 : f32 = x_1406;
            u_xlat3.x = x_1414;
            let x_1416 : f32 = u_xlat12;
            let x_1420 : f32 = u_xlat3.y;
            u_xlat15.x = ((-(x_1416) * 0.5f) + x_1420);
            let x_1424 : i32 = u_xlati15.y;
            if ((x_1424 != 0i)) {
              let x_1430 : f32 = u_xlat3.y;
              x_1426 = x_1430;
            } else {
              let x_1433 : f32 = u_xlat15.x;
              x_1426 = x_1433;
            }
            let x_1434 : f32 = x_1426;
            u_xlat3.y = x_1434;
            let x_1436 : vec3<f32> = u_xlat3;
            let x_1439 : vec3<f32> = u_xlat2;
            let x_1441 : vec4<bool> = (abs(vec4<f32>(x_1436.x, x_1436.y, x_1436.x, x_1436.y)) >= vec4<f32>(x_1439.x, x_1439.x, x_1439.x, x_1439.x));
            u_xlati15 = bitcast<vec2<i32>>((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_1441.x, x_1441.y)) * vec2<u32>(4294967295u, 4294967295u)));
            let x_1448 : f32 = u_xlat14.x;
            let x_1452 : f32 = u_xlat4.x;
            u_xlat10.x = ((-(x_1448) * 2.0f) + x_1452);
            let x_1456 : i32 = u_xlati15.x;
            if ((x_1456 != 0i)) {
              let x_1462 : f32 = u_xlat4.x;
              x_1458 = x_1462;
            } else {
              let x_1465 : f32 = u_xlat10.x;
              x_1458 = x_1465;
            }
            let x_1466 : f32 = x_1458;
            u_xlat4.x = x_1466;
            let x_1469 : f32 = u_xlat14.y;
            let x_1473 : f32 = u_xlat4.z;
            u_xlat10.x = ((-(x_1469) * 2.0f) + x_1473);
            let x_1477 : i32 = u_xlati15.x;
            if ((x_1477 != 0i)) {
              let x_1483 : f32 = u_xlat4.z;
              x_1479 = x_1483;
            } else {
              let x_1486 : f32 = u_xlat10.x;
              x_1479 = x_1486;
            }
            let x_1487 : f32 = x_1479;
            u_xlat4.z = x_1487;
            let x_1489 : vec2<i32> = u_xlati15;
            let x_1490 : vec2<i32> = ~(x_1489);
            let x_1491 : vec3<i32> = u_xlati10;
            u_xlati10 = vec3<i32>(x_1490.x, x_1491.y, x_1490.y);
            let x_1494 : i32 = u_xlati10.z;
            let x_1497 : i32 = u_xlati10.x;
            u_xlati10.x = bitcast<i32>((bitcast<u32>(x_1494) | bitcast<u32>(x_1497)));
            let x_1503 : f32 = u_xlat14.x;
            let x_1506 : f32 = u_xlat5.x;
            u_xlat22 = ((x_1503 * 2.0f) + x_1506);
            let x_1509 : i32 = u_xlati15.y;
            if ((x_1509 != 0i)) {
              let x_1515 : f32 = u_xlat5.x;
              x_1511 = x_1515;
            } else {
              let x_1517 : f32 = u_xlat22;
              x_1511 = x_1517;
            }
            let x_1518 : f32 = x_1511;
            u_xlat5.x = x_1518;
            let x_1521 : f32 = u_xlat14.y;
            let x_1524 : f32 = u_xlat5.z;
            u_xlat22 = ((x_1521 * 2.0f) + x_1524);
            let x_1527 : i32 = u_xlati15.y;
            if ((x_1527 != 0i)) {
              let x_1533 : f32 = u_xlat5.z;
              x_1529 = x_1533;
            } else {
              let x_1535 : f32 = u_xlat22;
              x_1529 = x_1535;
            }
            let x_1536 : f32 = x_1529;
            u_xlat5.z = x_1536;
            let x_1539 : i32 = u_xlati10.x;
            if ((x_1539 != 0i)) {
              let x_1544 : i32 = u_xlati15.x;
              if ((x_1544 == 0i)) {
                let x_1548 : vec3<f32> = u_xlat4;
                let x_1549 : vec2<f32> = vec2<f32>(x_1548.x, x_1548.z);
                let x_1550 : vec3<f32> = u_xlat10;
                u_xlat10 = vec3<f32>(x_1549.x, x_1550.y, x_1549.y);
                let x_1552 : vec3<f32> = u_xlat10;
                let x_1556 : vec2<f32> = clamp(vec2<f32>(x_1552.x, x_1552.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
                let x_1557 : vec3<f32> = u_xlat10;
                u_xlat10 = vec3<f32>(x_1556.x, x_1557.y, x_1556.y);
                let x_1559 : vec3<f32> = u_xlat10;
                let x_1562 : f32 = x_30.x_RenderViewportScaleFactor;
                let x_1564 : vec2<f32> = (vec2<f32>(x_1559.x, x_1559.z) * vec2<f32>(x_1562, x_1562));
                let x_1565 : vec3<f32> = u_xlat10;
                u_xlat10 = vec3<f32>(x_1564.x, x_1565.y, x_1564.y);
                let x_1570 : vec3<f32> = u_xlat10;
                let x_1572 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_1570.x, x_1570.z), 0.0f);
                u_xlat3.x = x_1572.y;
              }
              let x_1576 : i32 = u_xlati15.y;
              if ((x_1576 == 0i)) {
                let x_1580 : vec3<f32> = u_xlat5;
                let x_1581 : vec2<f32> = vec2<f32>(x_1580.x, x_1580.z);
                let x_1582 : vec3<f32> = u_xlat10;
                u_xlat10 = vec3<f32>(x_1581.x, x_1582.y, x_1581.y);
                let x_1584 : vec3<f32> = u_xlat10;
                let x_1588 : vec2<f32> = clamp(vec2<f32>(x_1584.x, x_1584.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
                let x_1589 : vec3<f32> = u_xlat10;
                u_xlat10 = vec3<f32>(x_1588.x, x_1589.y, x_1588.y);
                let x_1591 : vec3<f32> = u_xlat10;
                let x_1594 : f32 = x_30.x_RenderViewportScaleFactor;
                let x_1596 : vec2<f32> = (vec2<f32>(x_1591.x, x_1591.z) * vec2<f32>(x_1594, x_1594));
                let x_1597 : vec3<f32> = u_xlat10;
                u_xlat10 = vec3<f32>(x_1596.x, x_1597.y, x_1596.y);
                let x_1602 : vec3<f32> = u_xlat10;
                let x_1604 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_1602.x, x_1602.z), 0.0f);
                u_xlat3.y = x_1604.y;
              }
              let x_1607 : f32 = u_xlat12;
              let x_1611 : f32 = u_xlat3.x;
              u_xlat10.x = ((-(x_1607) * 0.5f) + x_1611);
              let x_1615 : i32 = u_xlati15.x;
              if ((x_1615 != 0i)) {
                let x_1621 : f32 = u_xlat3.x;
                x_1617 = x_1621;
              } else {
                let x_1624 : f32 = u_xlat10.x;
                x_1617 = x_1624;
              }
              let x_1625 : f32 = x_1617;
              u_xlat3.x = x_1625;
              let x_1627 : f32 = u_xlat12;
              let x_1631 : f32 = u_xlat3.y;
              u_xlat15.x = ((-(x_1627) * 0.5f) + x_1631);
              let x_1635 : i32 = u_xlati15.y;
              if ((x_1635 != 0i)) {
                let x_1641 : f32 = u_xlat3.y;
                x_1637 = x_1641;
              } else {
                let x_1644 : f32 = u_xlat15.x;
                x_1637 = x_1644;
              }
              let x_1645 : f32 = x_1637;
              u_xlat3.y = x_1645;
              let x_1647 : vec3<f32> = u_xlat3;
              let x_1650 : vec3<f32> = u_xlat2;
              let x_1652 : vec4<bool> = (abs(vec4<f32>(x_1647.x, x_1647.y, x_1647.x, x_1647.y)) >= vec4<f32>(x_1650.x, x_1650.x, x_1650.x, x_1650.x));
              u_xlati15 = bitcast<vec2<i32>>((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_1652.x, x_1652.y)) * vec2<u32>(4294967295u, 4294967295u)));
              let x_1659 : f32 = u_xlat14.x;
              let x_1663 : f32 = u_xlat4.x;
              u_xlat10.x = ((-(x_1659) * 2.0f) + x_1663);
              let x_1667 : i32 = u_xlati15.x;
              if ((x_1667 != 0i)) {
                let x_1673 : f32 = u_xlat4.x;
                x_1669 = x_1673;
              } else {
                let x_1676 : f32 = u_xlat10.x;
                x_1669 = x_1676;
              }
              let x_1677 : f32 = x_1669;
              u_xlat4.x = x_1677;
              let x_1680 : f32 = u_xlat14.y;
              let x_1684 : f32 = u_xlat4.z;
              u_xlat10.x = ((-(x_1680) * 2.0f) + x_1684);
              let x_1688 : i32 = u_xlati15.x;
              if ((x_1688 != 0i)) {
                let x_1694 : f32 = u_xlat4.z;
                x_1690 = x_1694;
              } else {
                let x_1697 : f32 = u_xlat10.x;
                x_1690 = x_1697;
              }
              let x_1698 : f32 = x_1690;
              u_xlat4.z = x_1698;
              let x_1700 : vec2<i32> = u_xlati15;
              let x_1701 : vec2<i32> = ~(x_1700);
              let x_1702 : vec3<i32> = u_xlati10;
              u_xlati10 = vec3<i32>(x_1701.x, x_1702.y, x_1701.y);
              let x_1705 : i32 = u_xlati10.z;
              let x_1708 : i32 = u_xlati10.x;
              u_xlati10.x = bitcast<i32>((bitcast<u32>(x_1705) | bitcast<u32>(x_1708)));
              let x_1714 : f32 = u_xlat14.x;
              let x_1717 : f32 = u_xlat5.x;
              u_xlat22 = ((x_1714 * 2.0f) + x_1717);
              let x_1720 : i32 = u_xlati15.y;
              if ((x_1720 != 0i)) {
                let x_1726 : f32 = u_xlat5.x;
                x_1722 = x_1726;
              } else {
                let x_1728 : f32 = u_xlat22;
                x_1722 = x_1728;
              }
              let x_1729 : f32 = x_1722;
              u_xlat5.x = x_1729;
              let x_1732 : f32 = u_xlat14.y;
              let x_1735 : f32 = u_xlat5.z;
              u_xlat22 = ((x_1732 * 2.0f) + x_1735);
              let x_1738 : i32 = u_xlati15.y;
              if ((x_1738 != 0i)) {
                let x_1744 : f32 = u_xlat5.z;
                x_1740 = x_1744;
              } else {
                let x_1746 : f32 = u_xlat22;
                x_1740 = x_1746;
              }
              let x_1747 : f32 = x_1740;
              u_xlat5.z = x_1747;
              let x_1750 : i32 = u_xlati10.x;
              if ((x_1750 != 0i)) {
                let x_1755 : i32 = u_xlati15.x;
                if ((x_1755 == 0i)) {
                  let x_1759 : vec3<f32> = u_xlat4;
                  let x_1760 : vec2<f32> = vec2<f32>(x_1759.x, x_1759.z);
                  let x_1761 : vec3<f32> = u_xlat10;
                  u_xlat10 = vec3<f32>(x_1760.x, x_1761.y, x_1760.y);
                  let x_1763 : vec3<f32> = u_xlat10;
                  let x_1767 : vec2<f32> = clamp(vec2<f32>(x_1763.x, x_1763.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
                  let x_1768 : vec3<f32> = u_xlat10;
                  u_xlat10 = vec3<f32>(x_1767.x, x_1768.y, x_1767.y);
                  let x_1770 : vec3<f32> = u_xlat10;
                  let x_1773 : f32 = x_30.x_RenderViewportScaleFactor;
                  let x_1775 : vec2<f32> = (vec2<f32>(x_1770.x, x_1770.z) * vec2<f32>(x_1773, x_1773));
                  let x_1776 : vec3<f32> = u_xlat10;
                  u_xlat10 = vec3<f32>(x_1775.x, x_1776.y, x_1775.y);
                  let x_1781 : vec3<f32> = u_xlat10;
                  let x_1783 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_1781.x, x_1781.z), 0.0f);
                  u_xlat3.x = x_1783.y;
                }
                let x_1787 : i32 = u_xlati15.y;
                if ((x_1787 == 0i)) {
                  let x_1791 : vec3<f32> = u_xlat5;
                  let x_1792 : vec2<f32> = vec2<f32>(x_1791.x, x_1791.z);
                  let x_1793 : vec3<f32> = u_xlat10;
                  u_xlat10 = vec3<f32>(x_1792.x, x_1793.y, x_1792.y);
                  let x_1795 : vec3<f32> = u_xlat10;
                  let x_1799 : vec2<f32> = clamp(vec2<f32>(x_1795.x, x_1795.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
                  let x_1800 : vec3<f32> = u_xlat10;
                  u_xlat10 = vec3<f32>(x_1799.x, x_1800.y, x_1799.y);
                  let x_1802 : vec3<f32> = u_xlat10;
                  let x_1805 : f32 = x_30.x_RenderViewportScaleFactor;
                  let x_1807 : vec2<f32> = (vec2<f32>(x_1802.x, x_1802.z) * vec2<f32>(x_1805, x_1805));
                  let x_1808 : vec3<f32> = u_xlat10;
                  u_xlat10 = vec3<f32>(x_1807.x, x_1808.y, x_1807.y);
                  let x_1813 : vec3<f32> = u_xlat10;
                  let x_1815 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_1813.x, x_1813.z), 0.0f);
                  u_xlat3.y = x_1815.y;
                }
                let x_1818 : f32 = u_xlat12;
                let x_1822 : f32 = u_xlat3.x;
                u_xlat10.x = ((-(x_1818) * 0.5f) + x_1822);
                let x_1826 : i32 = u_xlati15.x;
                if ((x_1826 != 0i)) {
                  let x_1832 : f32 = u_xlat3.x;
                  x_1828 = x_1832;
                } else {
                  let x_1835 : f32 = u_xlat10.x;
                  x_1828 = x_1835;
                }
                let x_1836 : f32 = x_1828;
                u_xlat3.x = x_1836;
                let x_1838 : f32 = u_xlat12;
                let x_1842 : f32 = u_xlat3.y;
                u_xlat15.x = ((-(x_1838) * 0.5f) + x_1842);
                let x_1846 : i32 = u_xlati15.y;
                if ((x_1846 != 0i)) {
                  let x_1852 : f32 = u_xlat3.y;
                  x_1848 = x_1852;
                } else {
                  let x_1855 : f32 = u_xlat15.x;
                  x_1848 = x_1855;
                }
                let x_1856 : f32 = x_1848;
                u_xlat3.y = x_1856;
                let x_1858 : vec3<f32> = u_xlat3;
                let x_1861 : vec3<f32> = u_xlat2;
                let x_1863 : vec4<bool> = (abs(vec4<f32>(x_1858.x, x_1858.y, x_1858.x, x_1858.y)) >= vec4<f32>(x_1861.x, x_1861.x, x_1861.x, x_1861.x));
                u_xlati15 = bitcast<vec2<i32>>((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_1863.x, x_1863.y)) * vec2<u32>(4294967295u, 4294967295u)));
                let x_1870 : f32 = u_xlat14.x;
                let x_1874 : f32 = u_xlat4.x;
                u_xlat10.x = ((-(x_1870) * 2.0f) + x_1874);
                let x_1878 : i32 = u_xlati15.x;
                if ((x_1878 != 0i)) {
                  let x_1884 : f32 = u_xlat4.x;
                  x_1880 = x_1884;
                } else {
                  let x_1887 : f32 = u_xlat10.x;
                  x_1880 = x_1887;
                }
                let x_1888 : f32 = x_1880;
                u_xlat4.x = x_1888;
                let x_1891 : f32 = u_xlat14.y;
                let x_1895 : f32 = u_xlat4.z;
                u_xlat10.x = ((-(x_1891) * 2.0f) + x_1895);
                let x_1899 : i32 = u_xlati15.x;
                if ((x_1899 != 0i)) {
                  let x_1905 : f32 = u_xlat4.z;
                  x_1901 = x_1905;
                } else {
                  let x_1908 : f32 = u_xlat10.x;
                  x_1901 = x_1908;
                }
                let x_1909 : f32 = x_1901;
                u_xlat4.z = x_1909;
                let x_1911 : vec2<i32> = u_xlati15;
                let x_1912 : vec2<i32> = ~(x_1911);
                let x_1913 : vec3<i32> = u_xlati10;
                u_xlati10 = vec3<i32>(x_1912.x, x_1913.y, x_1912.y);
                let x_1916 : i32 = u_xlati10.z;
                let x_1919 : i32 = u_xlati10.x;
                u_xlati10.x = bitcast<i32>((bitcast<u32>(x_1916) | bitcast<u32>(x_1919)));
                let x_1925 : f32 = u_xlat14.x;
                let x_1928 : f32 = u_xlat5.x;
                u_xlat22 = ((x_1925 * 2.0f) + x_1928);
                let x_1931 : i32 = u_xlati15.y;
                if ((x_1931 != 0i)) {
                  let x_1937 : f32 = u_xlat5.x;
                  x_1933 = x_1937;
                } else {
                  let x_1939 : f32 = u_xlat22;
                  x_1933 = x_1939;
                }
                let x_1940 : f32 = x_1933;
                u_xlat5.x = x_1940;
                let x_1943 : f32 = u_xlat14.y;
                let x_1946 : f32 = u_xlat5.z;
                u_xlat22 = ((x_1943 * 2.0f) + x_1946);
                let x_1949 : i32 = u_xlati15.y;
                if ((x_1949 != 0i)) {
                  let x_1955 : f32 = u_xlat5.z;
                  x_1951 = x_1955;
                } else {
                  let x_1957 : f32 = u_xlat22;
                  x_1951 = x_1957;
                }
                let x_1958 : f32 = x_1951;
                u_xlat5.z = x_1958;
                let x_1961 : i32 = u_xlati10.x;
                if ((x_1961 != 0i)) {
                  let x_1966 : i32 = u_xlati15.x;
                  if ((x_1966 == 0i)) {
                    let x_1970 : vec3<f32> = u_xlat4;
                    let x_1971 : vec2<f32> = vec2<f32>(x_1970.x, x_1970.z);
                    let x_1972 : vec3<f32> = u_xlat10;
                    u_xlat10 = vec3<f32>(x_1971.x, x_1972.y, x_1971.y);
                    let x_1974 : vec3<f32> = u_xlat10;
                    let x_1978 : vec2<f32> = clamp(vec2<f32>(x_1974.x, x_1974.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
                    let x_1979 : vec3<f32> = u_xlat10;
                    u_xlat10 = vec3<f32>(x_1978.x, x_1979.y, x_1978.y);
                    let x_1981 : vec3<f32> = u_xlat10;
                    let x_1984 : f32 = x_30.x_RenderViewportScaleFactor;
                    let x_1986 : vec2<f32> = (vec2<f32>(x_1981.x, x_1981.z) * vec2<f32>(x_1984, x_1984));
                    let x_1987 : vec3<f32> = u_xlat10;
                    u_xlat10 = vec3<f32>(x_1986.x, x_1987.y, x_1986.y);
                    let x_1992 : vec3<f32> = u_xlat10;
                    let x_1994 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_1992.x, x_1992.z), 0.0f);
                    u_xlat3.x = x_1994.y;
                  }
                  let x_1998 : i32 = u_xlati15.y;
                  if ((x_1998 == 0i)) {
                    let x_2002 : vec3<f32> = u_xlat5;
                    let x_2003 : vec2<f32> = vec2<f32>(x_2002.x, x_2002.z);
                    let x_2004 : vec3<f32> = u_xlat10;
                    u_xlat10 = vec3<f32>(x_2003.x, x_2004.y, x_2003.y);
                    let x_2006 : vec3<f32> = u_xlat10;
                    let x_2010 : vec2<f32> = clamp(vec2<f32>(x_2006.x, x_2006.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
                    let x_2011 : vec3<f32> = u_xlat10;
                    u_xlat10 = vec3<f32>(x_2010.x, x_2011.y, x_2010.y);
                    let x_2013 : vec3<f32> = u_xlat10;
                    let x_2016 : f32 = x_30.x_RenderViewportScaleFactor;
                    let x_2018 : vec2<f32> = (vec2<f32>(x_2013.x, x_2013.z) * vec2<f32>(x_2016, x_2016));
                    let x_2019 : vec3<f32> = u_xlat10;
                    u_xlat10 = vec3<f32>(x_2018.x, x_2019.y, x_2018.y);
                    let x_2024 : vec3<f32> = u_xlat10;
                    let x_2026 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_2024.x, x_2024.z), 0.0f);
                    u_xlat3.y = x_2026.y;
                  }
                  let x_2029 : f32 = u_xlat12;
                  let x_2033 : f32 = u_xlat3.x;
                  u_xlat10.x = ((-(x_2029) * 0.5f) + x_2033);
                  let x_2037 : i32 = u_xlati15.x;
                  if ((x_2037 != 0i)) {
                    let x_2043 : f32 = u_xlat3.x;
                    x_2039 = x_2043;
                  } else {
                    let x_2046 : f32 = u_xlat10.x;
                    x_2039 = x_2046;
                  }
                  let x_2047 : f32 = x_2039;
                  u_xlat3.x = x_2047;
                  let x_2049 : f32 = u_xlat12;
                  let x_2053 : f32 = u_xlat3.y;
                  u_xlat15.x = ((-(x_2049) * 0.5f) + x_2053);
                  let x_2057 : i32 = u_xlati15.y;
                  if ((x_2057 != 0i)) {
                    let x_2063 : f32 = u_xlat3.y;
                    x_2059 = x_2063;
                  } else {
                    let x_2066 : f32 = u_xlat15.x;
                    x_2059 = x_2066;
                  }
                  let x_2067 : f32 = x_2059;
                  u_xlat3.y = x_2067;
                  let x_2069 : vec3<f32> = u_xlat3;
                  let x_2072 : vec3<f32> = u_xlat2;
                  let x_2074 : vec4<bool> = (abs(vec4<f32>(x_2069.x, x_2069.y, x_2069.x, x_2069.y)) >= vec4<f32>(x_2072.x, x_2072.x, x_2072.x, x_2072.x));
                  u_xlati15 = bitcast<vec2<i32>>((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_2074.x, x_2074.y)) * vec2<u32>(4294967295u, 4294967295u)));
                  let x_2081 : f32 = u_xlat14.x;
                  let x_2085 : f32 = u_xlat4.x;
                  u_xlat10.x = ((-(x_2081) * 2.0f) + x_2085);
                  let x_2089 : i32 = u_xlati15.x;
                  if ((x_2089 != 0i)) {
                    let x_2095 : f32 = u_xlat4.x;
                    x_2091 = x_2095;
                  } else {
                    let x_2098 : f32 = u_xlat10.x;
                    x_2091 = x_2098;
                  }
                  let x_2099 : f32 = x_2091;
                  u_xlat4.x = x_2099;
                  let x_2102 : f32 = u_xlat14.y;
                  let x_2106 : f32 = u_xlat4.z;
                  u_xlat10.x = ((-(x_2102) * 2.0f) + x_2106);
                  let x_2110 : i32 = u_xlati15.x;
                  if ((x_2110 != 0i)) {
                    let x_2116 : f32 = u_xlat4.z;
                    x_2112 = x_2116;
                  } else {
                    let x_2119 : f32 = u_xlat10.x;
                    x_2112 = x_2119;
                  }
                  let x_2120 : f32 = x_2112;
                  u_xlat4.z = x_2120;
                  let x_2122 : vec2<i32> = u_xlati15;
                  let x_2123 : vec2<i32> = ~(x_2122);
                  let x_2124 : vec3<i32> = u_xlati10;
                  u_xlati10 = vec3<i32>(x_2123.x, x_2124.y, x_2123.y);
                  let x_2127 : i32 = u_xlati10.z;
                  let x_2130 : i32 = u_xlati10.x;
                  u_xlati10.x = bitcast<i32>((bitcast<u32>(x_2127) | bitcast<u32>(x_2130)));
                  let x_2136 : f32 = u_xlat14.x;
                  let x_2139 : f32 = u_xlat5.x;
                  u_xlat22 = ((x_2136 * 2.0f) + x_2139);
                  let x_2142 : i32 = u_xlati15.y;
                  if ((x_2142 != 0i)) {
                    let x_2148 : f32 = u_xlat5.x;
                    x_2144 = x_2148;
                  } else {
                    let x_2150 : f32 = u_xlat22;
                    x_2144 = x_2150;
                  }
                  let x_2151 : f32 = x_2144;
                  u_xlat5.x = x_2151;
                  let x_2154 : f32 = u_xlat14.y;
                  let x_2157 : f32 = u_xlat5.z;
                  u_xlat22 = ((x_2154 * 2.0f) + x_2157);
                  let x_2160 : i32 = u_xlati15.y;
                  if ((x_2160 != 0i)) {
                    let x_2166 : f32 = u_xlat5.z;
                    x_2162 = x_2166;
                  } else {
                    let x_2168 : f32 = u_xlat22;
                    x_2162 = x_2168;
                  }
                  let x_2169 : f32 = x_2162;
                  u_xlat5.z = x_2169;
                  let x_2172 : i32 = u_xlati10.x;
                  if ((x_2172 != 0i)) {
                    let x_2177 : i32 = u_xlati15.x;
                    if ((x_2177 == 0i)) {
                      let x_2181 : vec3<f32> = u_xlat4;
                      let x_2182 : vec2<f32> = vec2<f32>(x_2181.x, x_2181.z);
                      let x_2183 : vec3<f32> = u_xlat10;
                      u_xlat10 = vec3<f32>(x_2182.x, x_2183.y, x_2182.y);
                      let x_2185 : vec3<f32> = u_xlat10;
                      let x_2189 : vec2<f32> = clamp(vec2<f32>(x_2185.x, x_2185.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
                      let x_2190 : vec3<f32> = u_xlat10;
                      u_xlat10 = vec3<f32>(x_2189.x, x_2190.y, x_2189.y);
                      let x_2192 : vec3<f32> = u_xlat10;
                      let x_2195 : f32 = x_30.x_RenderViewportScaleFactor;
                      let x_2197 : vec2<f32> = (vec2<f32>(x_2192.x, x_2192.z) * vec2<f32>(x_2195, x_2195));
                      let x_2198 : vec3<f32> = u_xlat10;
                      u_xlat10 = vec3<f32>(x_2197.x, x_2198.y, x_2197.y);
                      let x_2203 : vec3<f32> = u_xlat10;
                      let x_2205 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_2203.x, x_2203.z), 0.0f);
                      u_xlat3.x = x_2205.y;
                    }
                    let x_2209 : i32 = u_xlati15.y;
                    if ((x_2209 == 0i)) {
                      let x_2213 : vec3<f32> = u_xlat5;
                      let x_2214 : vec2<f32> = vec2<f32>(x_2213.x, x_2213.z);
                      let x_2215 : vec3<f32> = u_xlat10;
                      u_xlat10 = vec3<f32>(x_2214.x, x_2215.y, x_2214.y);
                      let x_2217 : vec3<f32> = u_xlat10;
                      let x_2221 : vec2<f32> = clamp(vec2<f32>(x_2217.x, x_2217.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
                      let x_2222 : vec3<f32> = u_xlat10;
                      u_xlat10 = vec3<f32>(x_2221.x, x_2222.y, x_2221.y);
                      let x_2224 : vec3<f32> = u_xlat10;
                      let x_2227 : f32 = x_30.x_RenderViewportScaleFactor;
                      let x_2229 : vec2<f32> = (vec2<f32>(x_2224.x, x_2224.z) * vec2<f32>(x_2227, x_2227));
                      let x_2230 : vec3<f32> = u_xlat10;
                      u_xlat10 = vec3<f32>(x_2229.x, x_2230.y, x_2229.y);
                      let x_2235 : vec3<f32> = u_xlat10;
                      let x_2237 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_2235.x, x_2235.z), 0.0f);
                      u_xlat3.y = x_2237.y;
                    }
                    let x_2240 : f32 = u_xlat12;
                    let x_2244 : f32 = u_xlat3.x;
                    u_xlat10.x = ((-(x_2240) * 0.5f) + x_2244);
                    let x_2248 : i32 = u_xlati15.x;
                    if ((x_2248 != 0i)) {
                      let x_2254 : f32 = u_xlat3.x;
                      x_2250 = x_2254;
                    } else {
                      let x_2257 : f32 = u_xlat10.x;
                      x_2250 = x_2257;
                    }
                    let x_2258 : f32 = x_2250;
                    u_xlat3.x = x_2258;
                    let x_2260 : f32 = u_xlat12;
                    let x_2264 : f32 = u_xlat3.y;
                    u_xlat15.x = ((-(x_2260) * 0.5f) + x_2264);
                    let x_2268 : i32 = u_xlati15.y;
                    if ((x_2268 != 0i)) {
                      let x_2274 : f32 = u_xlat3.y;
                      x_2270 = x_2274;
                    } else {
                      let x_2277 : f32 = u_xlat15.x;
                      x_2270 = x_2277;
                    }
                    let x_2278 : f32 = x_2270;
                    u_xlat3.y = x_2278;
                    let x_2280 : vec3<f32> = u_xlat3;
                    let x_2283 : vec3<f32> = u_xlat2;
                    let x_2285 : vec4<bool> = (abs(vec4<f32>(x_2280.x, x_2280.y, x_2280.x, x_2280.y)) >= vec4<f32>(x_2283.x, x_2283.x, x_2283.x, x_2283.x));
                    u_xlati15 = bitcast<vec2<i32>>((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_2285.x, x_2285.y)) * vec2<u32>(4294967295u, 4294967295u)));
                    let x_2292 : f32 = u_xlat14.x;
                    let x_2297 : f32 = u_xlat4.x;
                    u_xlat10.x = ((-(x_2292) * 4.0f) + x_2297);
                    let x_2301 : i32 = u_xlati15.x;
                    if ((x_2301 != 0i)) {
                      let x_2307 : f32 = u_xlat4.x;
                      x_2303 = x_2307;
                    } else {
                      let x_2310 : f32 = u_xlat10.x;
                      x_2303 = x_2310;
                    }
                    let x_2311 : f32 = x_2303;
                    u_xlat4.x = x_2311;
                    let x_2314 : f32 = u_xlat14.y;
                    let x_2318 : f32 = u_xlat4.z;
                    u_xlat10.x = ((-(x_2314) * 4.0f) + x_2318);
                    let x_2322 : i32 = u_xlati15.x;
                    if ((x_2322 != 0i)) {
                      let x_2328 : f32 = u_xlat4.z;
                      x_2324 = x_2328;
                    } else {
                      let x_2331 : f32 = u_xlat10.x;
                      x_2324 = x_2331;
                    }
                    let x_2332 : f32 = x_2324;
                    u_xlat4.z = x_2332;
                    let x_2334 : vec2<i32> = u_xlati15;
                    let x_2335 : vec2<i32> = ~(x_2334);
                    let x_2336 : vec3<i32> = u_xlati10;
                    u_xlati10 = vec3<i32>(x_2335.x, x_2336.y, x_2335.y);
                    let x_2339 : i32 = u_xlati10.z;
                    let x_2342 : i32 = u_xlati10.x;
                    u_xlati10.x = bitcast<i32>((bitcast<u32>(x_2339) | bitcast<u32>(x_2342)));
                    let x_2348 : f32 = u_xlat14.x;
                    let x_2351 : f32 = u_xlat5.x;
                    u_xlat22 = ((x_2348 * 4.0f) + x_2351);
                    let x_2354 : i32 = u_xlati15.y;
                    if ((x_2354 != 0i)) {
                      let x_2360 : f32 = u_xlat5.x;
                      x_2356 = x_2360;
                    } else {
                      let x_2362 : f32 = u_xlat22;
                      x_2356 = x_2362;
                    }
                    let x_2363 : f32 = x_2356;
                    u_xlat5.x = x_2363;
                    let x_2366 : f32 = u_xlat14.y;
                    let x_2369 : f32 = u_xlat5.z;
                    u_xlat22 = ((x_2366 * 4.0f) + x_2369);
                    let x_2372 : i32 = u_xlati15.y;
                    if ((x_2372 != 0i)) {
                      let x_2378 : f32 = u_xlat5.z;
                      x_2374 = x_2378;
                    } else {
                      let x_2380 : f32 = u_xlat22;
                      x_2374 = x_2380;
                    }
                    let x_2381 : f32 = x_2374;
                    u_xlat5.z = x_2381;
                    let x_2384 : i32 = u_xlati10.x;
                    if ((x_2384 != 0i)) {
                      let x_2389 : i32 = u_xlati15.x;
                      if ((x_2389 == 0i)) {
                        let x_2393 : vec3<f32> = u_xlat4;
                        let x_2394 : vec2<f32> = vec2<f32>(x_2393.x, x_2393.z);
                        let x_2395 : vec3<f32> = u_xlat10;
                        u_xlat10 = vec3<f32>(x_2394.x, x_2395.y, x_2394.y);
                        let x_2397 : vec3<f32> = u_xlat10;
                        let x_2401 : vec2<f32> = clamp(vec2<f32>(x_2397.x, x_2397.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
                        let x_2402 : vec3<f32> = u_xlat10;
                        u_xlat10 = vec3<f32>(x_2401.x, x_2402.y, x_2401.y);
                        let x_2404 : vec3<f32> = u_xlat10;
                        let x_2407 : f32 = x_30.x_RenderViewportScaleFactor;
                        let x_2409 : vec2<f32> = (vec2<f32>(x_2404.x, x_2404.z) * vec2<f32>(x_2407, x_2407));
                        let x_2410 : vec3<f32> = u_xlat10;
                        u_xlat10 = vec3<f32>(x_2409.x, x_2410.y, x_2409.y);
                        let x_2415 : vec3<f32> = u_xlat10;
                        let x_2417 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_2415.x, x_2415.z), 0.0f);
                        u_xlat3.x = x_2417.y;
                      }
                      let x_2421 : i32 = u_xlati15.y;
                      if ((x_2421 == 0i)) {
                        let x_2425 : vec3<f32> = u_xlat5;
                        let x_2426 : vec2<f32> = vec2<f32>(x_2425.x, x_2425.z);
                        let x_2427 : vec3<f32> = u_xlat10;
                        u_xlat10 = vec3<f32>(x_2426.x, x_2427.y, x_2426.y);
                        let x_2429 : vec3<f32> = u_xlat10;
                        let x_2433 : vec2<f32> = clamp(vec2<f32>(x_2429.x, x_2429.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
                        let x_2434 : vec3<f32> = u_xlat10;
                        u_xlat10 = vec3<f32>(x_2433.x, x_2434.y, x_2433.y);
                        let x_2436 : vec3<f32> = u_xlat10;
                        let x_2439 : f32 = x_30.x_RenderViewportScaleFactor;
                        let x_2441 : vec2<f32> = (vec2<f32>(x_2436.x, x_2436.z) * vec2<f32>(x_2439, x_2439));
                        let x_2442 : vec3<f32> = u_xlat10;
                        u_xlat10 = vec3<f32>(x_2441.x, x_2442.y, x_2441.y);
                        let x_2447 : vec3<f32> = u_xlat10;
                        let x_2449 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_2447.x, x_2447.z), 0.0f);
                        u_xlat3.y = x_2449.y;
                      }
                      let x_2452 : f32 = u_xlat12;
                      let x_2456 : f32 = u_xlat3.x;
                      u_xlat10.x = ((-(x_2452) * 0.5f) + x_2456);
                      let x_2460 : i32 = u_xlati15.x;
                      if ((x_2460 != 0i)) {
                        let x_2466 : f32 = u_xlat3.x;
                        x_2462 = x_2466;
                      } else {
                        let x_2469 : f32 = u_xlat10.x;
                        x_2462 = x_2469;
                      }
                      let x_2470 : f32 = x_2462;
                      u_xlat3.x = x_2470;
                      let x_2472 : f32 = u_xlat12;
                      let x_2476 : f32 = u_xlat3.y;
                      u_xlat12 = ((-(x_2472) * 0.5f) + x_2476);
                      let x_2479 : i32 = u_xlati15.y;
                      if ((x_2479 != 0i)) {
                        let x_2485 : f32 = u_xlat3.y;
                        x_2481 = x_2485;
                      } else {
                        let x_2487 : f32 = u_xlat12;
                        x_2481 = x_2487;
                      }
                      let x_2488 : f32 = x_2481;
                      u_xlat3.y = x_2488;
                      let x_2492 : vec3<f32> = u_xlat3;
                      let x_2495 : vec3<f32> = u_xlat2;
                      let x_2497 : vec4<bool> = (abs(vec4<f32>(x_2492.x, x_2492.y, x_2492.x, x_2492.y)) >= vec4<f32>(x_2495.x, x_2495.x, x_2495.x, x_2495.x));
                      u_xlatb15 = vec2<bool>(x_2497.x, x_2497.y);
                      let x_2500 : f32 = u_xlat14.x;
                      let x_2505 : f32 = u_xlat4.x;
                      u_xlat12 = ((-(x_2500) * 8.0f) + x_2505);
                      let x_2508 : bool = u_xlatb15.x;
                      if (x_2508) {
                        let x_2513 : f32 = u_xlat4.x;
                        x_2509 = x_2513;
                      } else {
                        let x_2515 : f32 = u_xlat12;
                        x_2509 = x_2515;
                      }
                      let x_2516 : f32 = x_2509;
                      u_xlat4.x = x_2516;
                      let x_2519 : f32 = u_xlat14.y;
                      let x_2523 : f32 = u_xlat4.z;
                      u_xlat12 = ((-(x_2519) * 8.0f) + x_2523);
                      let x_2526 : bool = u_xlatb15.x;
                      if (x_2526) {
                        let x_2531 : f32 = u_xlat4.z;
                        x_2527 = x_2531;
                      } else {
                        let x_2533 : f32 = u_xlat12;
                        x_2527 = x_2533;
                      }
                      let x_2534 : f32 = x_2527;
                      u_xlat4.z = x_2534;
                      let x_2537 : f32 = u_xlat14.x;
                      let x_2540 : f32 = u_xlat5.x;
                      u_xlat12 = ((x_2537 * 8.0f) + x_2540);
                      let x_2543 : bool = u_xlatb15.y;
                      if (x_2543) {
                        let x_2548 : f32 = u_xlat5.x;
                        x_2544 = x_2548;
                      } else {
                        let x_2550 : f32 = u_xlat12;
                        x_2544 = x_2550;
                      }
                      let x_2551 : f32 = x_2544;
                      u_xlat5.x = x_2551;
                      let x_2554 : f32 = u_xlat14.y;
                      let x_2557 : f32 = u_xlat5.z;
                      u_xlat12 = ((x_2554 * 8.0f) + x_2557);
                      let x_2560 : bool = u_xlatb15.y;
                      if (x_2560) {
                        let x_2565 : f32 = u_xlat5.z;
                        x_2561 = x_2565;
                      } else {
                        let x_2567 : f32 = u_xlat12;
                        x_2561 = x_2567;
                      }
                      let x_2568 : f32 = x_2561;
                      u_xlat5.z = x_2568;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
    let x_2571 : f32 = u_xlat4.x;
    let x_2574 : f32 = vs_TEXCOORD0.x;
    u_xlat12 = (-(x_2571) + x_2574);
    let x_2577 : f32 = u_xlat4.z;
    let x_2580 : f32 = vs_TEXCOORD0.y;
    u_xlat14.x = (-(x_2577) + x_2580);
    let x_2584 : bool = u_xlatb0.x;
    if (x_2584) {
      let x_2588 : f32 = u_xlat12;
      x_2585 = x_2588;
    } else {
      let x_2591 : f32 = u_xlat14.x;
      x_2585 = x_2591;
    }
    let x_2592 : f32 = x_2585;
    u_xlat12 = x_2592;
    let x_2593 : vec3<f32> = u_xlat5;
    let x_2595 : vec2<f32> = vs_TEXCOORD0;
    let x_2597 : vec2<f32> = (vec2<f32>(x_2593.x, x_2593.z) + -(x_2595));
    let x_2598 : vec3<f32> = u_xlat2;
    u_xlat2 = vec3<f32>(x_2597.x, x_2598.y, x_2597.y);
    let x_2601 : bool = u_xlatb0.x;
    if (x_2601) {
      let x_2606 : f32 = u_xlat2.x;
      x_2602 = x_2606;
    } else {
      let x_2609 : f32 = u_xlat2.z;
      x_2602 = x_2609;
    }
    let x_2610 : f32 = x_2602;
    u_xlat2.x = x_2610;
    let x_2613 : vec3<f32> = u_xlat3;
    let x_2616 : vec4<bool> = (vec4<f32>(x_2613.x, x_2613.y, x_2613.x, x_2613.y) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
    u_xlati14 = bitcast<vec2<i32>>((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_2616.x, x_2616.y)) * vec2<u32>(4294967295u, 4294967295u)));
    let x_2622 : f32 = u_xlat12;
    let x_2624 : f32 = u_xlat2.x;
    u_xlat3.x = (x_2622 + x_2624);
    let x_2628 : i32 = u_xlati8;
    let x_2631 : vec2<i32> = u_xlati14;
    let x_2633 : vec4<bool> = (vec4<i32>(x_2628, x_2628, x_2628, x_2628) != vec4<i32>(x_2631.x, x_2631.y, x_2631.x, x_2631.x));
    u_xlatb8 = vec2<bool>(x_2633.x, x_2633.y);
    let x_2636 : f32 = u_xlat3.x;
    u_xlat20 = (1.0f / x_2636);
    let x_2638 : f32 = u_xlat12;
    let x_2640 : f32 = u_xlat2.x;
    u_xlatb3 = (x_2638 < x_2640);
    let x_2642 : f32 = u_xlat12;
    let x_2644 : f32 = u_xlat2.x;
    u_xlat12 = min(x_2642, x_2644);
    let x_2647 : bool = u_xlatb3;
    if (x_2647) {
      let x_2652 : bool = u_xlatb8.x;
      x_2648 = x_2652;
    } else {
      let x_2655 : bool = u_xlatb8.y;
      x_2648 = x_2655;
    }
    let x_2656 : bool = x_2648;
    u_xlatb2 = x_2656;
    let x_2658 : f32 = u_xlat6.x;
    let x_2660 : f32 = u_xlat6.x;
    u_xlat6.x = (x_2658 * x_2660);
    let x_2663 : f32 = u_xlat12;
    let x_2664 : f32 = u_xlat20;
    u_xlat12 = ((x_2663 * -(x_2664)) + 0.5f);
    let x_2668 : bool = u_xlatb2;
    let x_2669 : f32 = u_xlat12;
    u_xlat12 = select(0.0f, x_2669, x_2668);
    let x_2672 : f32 = u_xlat6.x;
    let x_2673 : f32 = u_xlat12;
    u_xlat6.x = max(x_2672, x_2673);
    let x_2676 : vec2<f32> = u_xlat6;
    let x_2678 : f32 = u_xlat18;
    let x_2681 : vec2<f32> = vs_TEXCOORD0;
    u_xlat6 = ((vec2<f32>(x_2676.x, x_2676.x) * vec2<f32>(x_2678, x_2678)) + x_2681);
    let x_2684 : bool = u_xlatb0.x;
    if (x_2684) {
      let x_2689 : f32 = vs_TEXCOORD0.x;
      x_2685 = x_2689;
    } else {
      let x_2692 : f32 = u_xlat6.x;
      x_2685 = x_2692;
    }
    let x_2693 : f32 = x_2685;
    u_xlat2.x = x_2693;
    let x_2696 : f32 = u_xlat2.x;
    u_xlat2.x = clamp(x_2696, 0.0f, 1.0f);
    let x_2700 : bool = u_xlatb0.x;
    if (x_2700) {
      let x_2705 : f32 = u_xlat6.y;
      x_2701 = x_2705;
    } else {
      let x_2708 : f32 = vs_TEXCOORD0.y;
      x_2701 = x_2708;
    }
    let x_2709 : f32 = x_2701;
    u_xlat2.y = x_2709;
    let x_2712 : f32 = u_xlat2.y;
    u_xlat2.y = clamp(x_2712, 0.0f, 1.0f);
    let x_2715 : vec3<f32> = u_xlat2;
    let x_2718 : f32 = x_30.x_RenderViewportScaleFactor;
    let x_2720 : vec2<f32> = (vec2<f32>(x_2715.x, x_2715.y) * vec2<f32>(x_2718, x_2718));
    let x_2721 : vec3<f32> = u_xlat0;
    u_xlat0 = vec3<f32>(x_2720.x, x_2720.y, x_2721.z);
    let x_2726 : vec3<f32> = u_xlat0;
    let x_2728 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_2726.x, x_2726.y), 0.0f);
    u_xlat0 = vec3<f32>(x_2728.x, x_2728.y, x_2728.z);
    let x_2731 : f32 = u_xlat1.y;
    u_xlat1.w = x_2731;
  } else {
    let x_2735 : vec4<f32> = u_xlat1;
    u_xlat0 = vec3<f32>(x_2735.x, x_2735.y, x_2735.z);
  }
  let x_2737 : vec2<f32> = vs_TEXCOORD0;
  let x_2740 : vec4<f32> = x_30.x_Dithering_Coords;
  let x_2744 : vec4<f32> = x_30.x_Dithering_Coords;
  let x_2746 : vec2<f32> = ((x_2737 * vec2<f32>(x_2740.x, x_2740.y)) + vec2<f32>(x_2744.z, x_2744.w));
  let x_2747 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_2746.x, x_2746.y, x_2747.z);
  let x_2754 : vec3<f32> = u_xlat2;
  let x_2756 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_2754.x, x_2754.y));
  u_xlat18 = x_2756.w;
  let x_2758 : f32 = u_xlat18;
  u_xlat18 = ((x_2758 * 2.0f) + -1.0f);
  let x_2762 : f32 = u_xlat18;
  u_xlat2.x = ((x_2762 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_2768 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_2768, 0.0f, 1.0f);
  let x_2772 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_2772 * 2.0f) + -1.0f);
  let x_2776 : f32 = u_xlat18;
  u_xlat18 = (-(abs(x_2776)) + 1.0f);
  let x_2780 : f32 = u_xlat18;
  u_xlat18 = sqrt(x_2780);
  let x_2782 : f32 = u_xlat18;
  u_xlat18 = (-(x_2782) + 1.0f);
  let x_2785 : f32 = u_xlat18;
  let x_2787 : f32 = u_xlat2.x;
  u_xlat18 = (x_2785 * x_2787);
  let x_2789 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_2789 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_2793 : vec3<f32> = u_xlat0;
  u_xlat3 = max(abs(x_2793), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_2798 : vec3<f32> = u_xlat3;
  u_xlat3 = log2(x_2798);
  let x_2800 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_2800 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_2804 : vec3<f32> = u_xlat3;
  u_xlat3 = exp2(x_2804);
  let x_2806 : vec3<f32> = u_xlat3;
  u_xlat3 = ((x_2806 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_2815 : vec3<f32> = u_xlat0;
  let x_2817 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_2815.x, x_2815.y, x_2815.z, x_2815.x));
  u_xlatb0 = vec3<bool>(x_2817.x, x_2817.y, x_2817.z);
  let x_2820 : bool = u_xlatb0.x;
  if (x_2820) {
    let x_2825 : f32 = u_xlat2.x;
    x_2821 = x_2825;
  } else {
    let x_2828 : f32 = u_xlat3.x;
    x_2821 = x_2828;
  }
  let x_2829 : f32 = x_2821;
  u_xlat0.x = x_2829;
  let x_2832 : bool = u_xlatb0.y;
  if (x_2832) {
    let x_2837 : f32 = u_xlat2.y;
    x_2833 = x_2837;
  } else {
    let x_2840 : f32 = u_xlat3.y;
    x_2833 = x_2840;
  }
  let x_2841 : f32 = x_2833;
  u_xlat0.y = x_2841;
  let x_2844 : bool = u_xlatb0.z;
  if (x_2844) {
    let x_2849 : f32 = u_xlat2.z;
    x_2845 = x_2849;
  } else {
    let x_2852 : f32 = u_xlat3.z;
    x_2845 = x_2852;
  }
  let x_2853 : f32 = x_2845;
  u_xlat0.z = x_2853;
  let x_2855 : f32 = u_xlat18;
  let x_2860 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_2855, x_2855, x_2855) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + x_2860);
  let x_2862 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_2862 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_2866 : vec3<f32> = u_xlat0;
  u_xlat3 = (x_2866 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_2870 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_2870 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_2874 : vec3<f32> = u_xlat3;
  u_xlat3 = max(abs(x_2874), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_2877 : vec3<f32> = u_xlat3;
  u_xlat3 = log2(x_2877);
  let x_2879 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_2879 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_2883 : vec3<f32> = u_xlat3;
  u_xlat3 = exp2(x_2883);
  let x_2887 : vec3<f32> = u_xlat0;
  let x_2889 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_2887.x, x_2887.y, x_2887.z, x_2887.x));
  u_xlatb0 = vec3<bool>(x_2889.x, x_2889.y, x_2889.z);
  let x_2892 : bool = u_xlatb0.x;
  if (x_2892) {
    let x_2897 : f32 = u_xlat2.x;
    x_2893 = x_2897;
  } else {
    let x_2900 : f32 = u_xlat3.x;
    x_2893 = x_2900;
  }
  let x_2901 : f32 = x_2893;
  u_xlat1.x = x_2901;
  let x_2904 : bool = u_xlatb0.y;
  if (x_2904) {
    let x_2909 : f32 = u_xlat2.y;
    x_2905 = x_2909;
  } else {
    let x_2912 : f32 = u_xlat3.y;
    x_2905 = x_2912;
  }
  let x_2913 : f32 = x_2905;
  u_xlat1.y = x_2913;
  let x_2916 : bool = u_xlatb0.z;
  if (x_2916) {
    let x_2921 : f32 = u_xlat2.z;
    x_2917 = x_2921;
  } else {
    let x_2924 : f32 = u_xlat3.z;
    x_2917 = x_2924;
  }
  let x_2925 : f32 = x_2917;
  u_xlat1.z = x_2925;
  let x_2929 : vec4<f32> = u_xlat1;
  SV_Target0 = x_2929;
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

