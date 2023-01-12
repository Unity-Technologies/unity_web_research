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
  var x_1037 : f32;
  var x_1058 : f32;
  var x_1090 : f32;
  var x_1108 : f32;
  var x_1196 : f32;
  var x_1215 : f32;
  var u_xlatb15 : vec2<bool>;
  var x_1243 : f32;
  var x_1261 : f32;
  var x_1278 : f32;
  var x_1295 : f32;
  var x_1319 : f32;
  var x_1336 : f32;
  var u_xlati14 : vec2<i32>;
  var u_xlatb8 : vec2<bool>;
  var u_xlatb2 : bool;
  var x_1382 : bool;
  var x_1419 : f32;
  var x_1435 : f32;
  var x_1555 : f32;
  var x_1567 : f32;
  var x_1579 : f32;
  var x_1627 : f32;
  var x_1639 : f32;
  var x_1651 : f32;
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
        let x_1031 : f32 = u_xlat4.x;
        u_xlat10.x = ((-(x_1026) * 4.0f) + x_1031);
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
        u_xlat10.x = ((-(x_1048) * 4.0f) + x_1052);
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
        u_xlat22 = ((x_1082 * 4.0f) + x_1085);
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
        u_xlat22 = ((x_1100 * 4.0f) + x_1103);
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
          u_xlat12 = ((-(x_1206) * 0.5f) + x_1210);
          let x_1213 : i32 = u_xlati15.y;
          if ((x_1213 != 0i)) {
            let x_1219 : f32 = u_xlat3.y;
            x_1215 = x_1219;
          } else {
            let x_1221 : f32 = u_xlat12;
            x_1215 = x_1221;
          }
          let x_1222 : f32 = x_1215;
          u_xlat3.y = x_1222;
          let x_1226 : vec3<f32> = u_xlat3;
          let x_1229 : vec3<f32> = u_xlat2;
          let x_1231 : vec4<bool> = (abs(vec4<f32>(x_1226.x, x_1226.y, x_1226.x, x_1226.y)) >= vec4<f32>(x_1229.x, x_1229.x, x_1229.x, x_1229.x));
          u_xlatb15 = vec2<bool>(x_1231.x, x_1231.y);
          let x_1234 : f32 = u_xlat14.x;
          let x_1239 : f32 = u_xlat4.x;
          u_xlat12 = ((-(x_1234) * 12.0f) + x_1239);
          let x_1242 : bool = u_xlatb15.x;
          if (x_1242) {
            let x_1247 : f32 = u_xlat4.x;
            x_1243 = x_1247;
          } else {
            let x_1249 : f32 = u_xlat12;
            x_1243 = x_1249;
          }
          let x_1250 : f32 = x_1243;
          u_xlat4.x = x_1250;
          let x_1253 : f32 = u_xlat14.y;
          let x_1257 : f32 = u_xlat4.z;
          u_xlat12 = ((-(x_1253) * 12.0f) + x_1257);
          let x_1260 : bool = u_xlatb15.x;
          if (x_1260) {
            let x_1265 : f32 = u_xlat4.z;
            x_1261 = x_1265;
          } else {
            let x_1267 : f32 = u_xlat12;
            x_1261 = x_1267;
          }
          let x_1268 : f32 = x_1261;
          u_xlat4.z = x_1268;
          let x_1271 : f32 = u_xlat14.x;
          let x_1274 : f32 = u_xlat5.x;
          u_xlat12 = ((x_1271 * 12.0f) + x_1274);
          let x_1277 : bool = u_xlatb15.y;
          if (x_1277) {
            let x_1282 : f32 = u_xlat5.x;
            x_1278 = x_1282;
          } else {
            let x_1284 : f32 = u_xlat12;
            x_1278 = x_1284;
          }
          let x_1285 : f32 = x_1278;
          u_xlat5.x = x_1285;
          let x_1288 : f32 = u_xlat14.y;
          let x_1291 : f32 = u_xlat5.z;
          u_xlat12 = ((x_1288 * 12.0f) + x_1291);
          let x_1294 : bool = u_xlatb15.y;
          if (x_1294) {
            let x_1299 : f32 = u_xlat5.z;
            x_1295 = x_1299;
          } else {
            let x_1301 : f32 = u_xlat12;
            x_1295 = x_1301;
          }
          let x_1302 : f32 = x_1295;
          u_xlat5.z = x_1302;
        }
      }
    }
    let x_1305 : f32 = u_xlat4.x;
    let x_1308 : f32 = vs_TEXCOORD0.x;
    u_xlat12 = (-(x_1305) + x_1308);
    let x_1311 : f32 = u_xlat4.z;
    let x_1314 : f32 = vs_TEXCOORD0.y;
    u_xlat14.x = (-(x_1311) + x_1314);
    let x_1318 : bool = u_xlatb0.x;
    if (x_1318) {
      let x_1322 : f32 = u_xlat12;
      x_1319 = x_1322;
    } else {
      let x_1325 : f32 = u_xlat14.x;
      x_1319 = x_1325;
    }
    let x_1326 : f32 = x_1319;
    u_xlat12 = x_1326;
    let x_1327 : vec3<f32> = u_xlat5;
    let x_1329 : vec2<f32> = vs_TEXCOORD0;
    let x_1331 : vec2<f32> = (vec2<f32>(x_1327.x, x_1327.z) + -(x_1329));
    let x_1332 : vec3<f32> = u_xlat2;
    u_xlat2 = vec3<f32>(x_1331.x, x_1332.y, x_1331.y);
    let x_1335 : bool = u_xlatb0.x;
    if (x_1335) {
      let x_1340 : f32 = u_xlat2.x;
      x_1336 = x_1340;
    } else {
      let x_1343 : f32 = u_xlat2.z;
      x_1336 = x_1343;
    }
    let x_1344 : f32 = x_1336;
    u_xlat2.x = x_1344;
    let x_1347 : vec3<f32> = u_xlat3;
    let x_1350 : vec4<bool> = (vec4<f32>(x_1347.x, x_1347.y, x_1347.x, x_1347.y) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
    u_xlati14 = bitcast<vec2<i32>>((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_1350.x, x_1350.y)) * vec2<u32>(4294967295u, 4294967295u)));
    let x_1356 : f32 = u_xlat12;
    let x_1358 : f32 = u_xlat2.x;
    u_xlat3.x = (x_1356 + x_1358);
    let x_1362 : i32 = u_xlati8;
    let x_1365 : vec2<i32> = u_xlati14;
    let x_1367 : vec4<bool> = (vec4<i32>(x_1362, x_1362, x_1362, x_1362) != vec4<i32>(x_1365.x, x_1365.y, x_1365.x, x_1365.x));
    u_xlatb8 = vec2<bool>(x_1367.x, x_1367.y);
    let x_1370 : f32 = u_xlat3.x;
    u_xlat20 = (1.0f / x_1370);
    let x_1372 : f32 = u_xlat12;
    let x_1374 : f32 = u_xlat2.x;
    u_xlatb3 = (x_1372 < x_1374);
    let x_1376 : f32 = u_xlat12;
    let x_1378 : f32 = u_xlat2.x;
    u_xlat12 = min(x_1376, x_1378);
    let x_1381 : bool = u_xlatb3;
    if (x_1381) {
      let x_1386 : bool = u_xlatb8.x;
      x_1382 = x_1386;
    } else {
      let x_1389 : bool = u_xlatb8.y;
      x_1382 = x_1389;
    }
    let x_1390 : bool = x_1382;
    u_xlatb2 = x_1390;
    let x_1392 : f32 = u_xlat6.x;
    let x_1394 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1392 * x_1394);
    let x_1397 : f32 = u_xlat12;
    let x_1398 : f32 = u_xlat20;
    u_xlat12 = ((x_1397 * -(x_1398)) + 0.5f);
    let x_1402 : bool = u_xlatb2;
    let x_1403 : f32 = u_xlat12;
    u_xlat12 = select(0.0f, x_1403, x_1402);
    let x_1406 : f32 = u_xlat6.x;
    let x_1407 : f32 = u_xlat12;
    u_xlat6.x = max(x_1406, x_1407);
    let x_1410 : vec2<f32> = u_xlat6;
    let x_1412 : f32 = u_xlat18;
    let x_1415 : vec2<f32> = vs_TEXCOORD0;
    u_xlat6 = ((vec2<f32>(x_1410.x, x_1410.x) * vec2<f32>(x_1412, x_1412)) + x_1415);
    let x_1418 : bool = u_xlatb0.x;
    if (x_1418) {
      let x_1423 : f32 = vs_TEXCOORD0.x;
      x_1419 = x_1423;
    } else {
      let x_1426 : f32 = u_xlat6.x;
      x_1419 = x_1426;
    }
    let x_1427 : f32 = x_1419;
    u_xlat2.x = x_1427;
    let x_1430 : f32 = u_xlat2.x;
    u_xlat2.x = clamp(x_1430, 0.0f, 1.0f);
    let x_1434 : bool = u_xlatb0.x;
    if (x_1434) {
      let x_1439 : f32 = u_xlat6.y;
      x_1435 = x_1439;
    } else {
      let x_1442 : f32 = vs_TEXCOORD0.y;
      x_1435 = x_1442;
    }
    let x_1443 : f32 = x_1435;
    u_xlat2.y = x_1443;
    let x_1446 : f32 = u_xlat2.y;
    u_xlat2.y = clamp(x_1446, 0.0f, 1.0f);
    let x_1449 : vec3<f32> = u_xlat2;
    let x_1452 : f32 = x_30.x_RenderViewportScaleFactor;
    let x_1454 : vec2<f32> = (vec2<f32>(x_1449.x, x_1449.y) * vec2<f32>(x_1452, x_1452));
    let x_1455 : vec3<f32> = u_xlat0;
    u_xlat0 = vec3<f32>(x_1454.x, x_1454.y, x_1455.z);
    let x_1460 : vec3<f32> = u_xlat0;
    let x_1462 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_1460.x, x_1460.y), 0.0f);
    u_xlat0 = vec3<f32>(x_1462.x, x_1462.y, x_1462.z);
    let x_1465 : f32 = u_xlat1.y;
    u_xlat1.w = x_1465;
  } else {
    let x_1469 : vec4<f32> = u_xlat1;
    u_xlat0 = vec3<f32>(x_1469.x, x_1469.y, x_1469.z);
  }
  let x_1471 : vec2<f32> = vs_TEXCOORD0;
  let x_1474 : vec4<f32> = x_30.x_Dithering_Coords;
  let x_1478 : vec4<f32> = x_30.x_Dithering_Coords;
  let x_1480 : vec2<f32> = ((x_1471 * vec2<f32>(x_1474.x, x_1474.y)) + vec2<f32>(x_1478.z, x_1478.w));
  let x_1481 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_1480.x, x_1480.y, x_1481.z);
  let x_1488 : vec3<f32> = u_xlat2;
  let x_1490 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_1488.x, x_1488.y));
  u_xlat18 = x_1490.w;
  let x_1492 : f32 = u_xlat18;
  u_xlat18 = ((x_1492 * 2.0f) + -1.0f);
  let x_1496 : f32 = u_xlat18;
  u_xlat2.x = ((x_1496 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_1502 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1502, 0.0f, 1.0f);
  let x_1506 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1506 * 2.0f) + -1.0f);
  let x_1510 : f32 = u_xlat18;
  u_xlat18 = (-(abs(x_1510)) + 1.0f);
  let x_1514 : f32 = u_xlat18;
  u_xlat18 = sqrt(x_1514);
  let x_1516 : f32 = u_xlat18;
  u_xlat18 = (-(x_1516) + 1.0f);
  let x_1519 : f32 = u_xlat18;
  let x_1521 : f32 = u_xlat2.x;
  u_xlat18 = (x_1519 * x_1521);
  let x_1523 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_1523 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1527 : vec3<f32> = u_xlat0;
  u_xlat3 = max(abs(x_1527), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1532 : vec3<f32> = u_xlat3;
  u_xlat3 = log2(x_1532);
  let x_1534 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_1534 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1538 : vec3<f32> = u_xlat3;
  u_xlat3 = exp2(x_1538);
  let x_1540 : vec3<f32> = u_xlat3;
  u_xlat3 = ((x_1540 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1549 : vec3<f32> = u_xlat0;
  let x_1551 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1549.x, x_1549.y, x_1549.z, x_1549.x));
  u_xlatb0 = vec3<bool>(x_1551.x, x_1551.y, x_1551.z);
  let x_1554 : bool = u_xlatb0.x;
  if (x_1554) {
    let x_1559 : f32 = u_xlat2.x;
    x_1555 = x_1559;
  } else {
    let x_1562 : f32 = u_xlat3.x;
    x_1555 = x_1562;
  }
  let x_1563 : f32 = x_1555;
  u_xlat0.x = x_1563;
  let x_1566 : bool = u_xlatb0.y;
  if (x_1566) {
    let x_1571 : f32 = u_xlat2.y;
    x_1567 = x_1571;
  } else {
    let x_1574 : f32 = u_xlat3.y;
    x_1567 = x_1574;
  }
  let x_1575 : f32 = x_1567;
  u_xlat0.y = x_1575;
  let x_1578 : bool = u_xlatb0.z;
  if (x_1578) {
    let x_1583 : f32 = u_xlat2.z;
    x_1579 = x_1583;
  } else {
    let x_1586 : f32 = u_xlat3.z;
    x_1579 = x_1586;
  }
  let x_1587 : f32 = x_1579;
  u_xlat0.z = x_1587;
  let x_1589 : f32 = u_xlat18;
  let x_1594 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1589, x_1589, x_1589) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + x_1594);
  let x_1596 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_1596 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1600 : vec3<f32> = u_xlat0;
  u_xlat3 = (x_1600 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1604 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_1604 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1608 : vec3<f32> = u_xlat3;
  u_xlat3 = max(abs(x_1608), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1611 : vec3<f32> = u_xlat3;
  u_xlat3 = log2(x_1611);
  let x_1613 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_1613 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1617 : vec3<f32> = u_xlat3;
  u_xlat3 = exp2(x_1617);
  let x_1621 : vec3<f32> = u_xlat0;
  let x_1623 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1621.x, x_1621.y, x_1621.z, x_1621.x));
  u_xlatb0 = vec3<bool>(x_1623.x, x_1623.y, x_1623.z);
  let x_1626 : bool = u_xlatb0.x;
  if (x_1626) {
    let x_1631 : f32 = u_xlat2.x;
    x_1627 = x_1631;
  } else {
    let x_1634 : f32 = u_xlat3.x;
    x_1627 = x_1634;
  }
  let x_1635 : f32 = x_1627;
  u_xlat1.x = x_1635;
  let x_1638 : bool = u_xlatb0.y;
  if (x_1638) {
    let x_1643 : f32 = u_xlat2.y;
    x_1639 = x_1643;
  } else {
    let x_1646 : f32 = u_xlat3.y;
    x_1639 = x_1646;
  }
  let x_1647 : f32 = x_1639;
  u_xlat1.y = x_1647;
  let x_1650 : bool = u_xlatb0.z;
  if (x_1650) {
    let x_1655 : f32 = u_xlat2.z;
    x_1651 = x_1655;
  } else {
    let x_1658 : f32 = u_xlat3.z;
    x_1651 = x_1658;
  }
  let x_1659 : f32 = x_1651;
  u_xlat1.z = x_1659;
  let x_1663 : vec4<f32> = u_xlat1;
  SV_Target0 = x_1663;
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

