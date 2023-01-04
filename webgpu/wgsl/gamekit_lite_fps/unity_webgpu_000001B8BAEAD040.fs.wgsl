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

var<private> u_xlat3 : vec2<f32>;

var<private> u_xlat9 : vec2<f32>;

var<private> u_xlatb20 : bool;

var<private> u_xlat6 : vec3<f32>;

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

var<private> u_xlatb1 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_338 : f32;
  var x_354 : f32;
  var x_407 : f32;
  var x_428 : f32;
  var x_438 : f32;
  var x_455 : f32;
  var x_468 : f32;
  var x_539 : f32;
  var x_613 : f32;
  var x_634 : f32;
  var x_669 : f32;
  var x_687 : f32;
  var x_775 : f32;
  var x_795 : f32;
  var x_827 : f32;
  var x_848 : f32;
  var x_880 : f32;
  var x_898 : f32;
  var x_986 : f32;
  var x_1006 : f32;
  var x_1039 : f32;
  var x_1060 : f32;
  var x_1092 : f32;
  var x_1110 : f32;
  var x_1198 : f32;
  var x_1217 : f32;
  var x_1245 : f32;
  var x_1263 : f32;
  var x_1280 : f32;
  var x_1297 : f32;
  var x_1321 : f32;
  var x_1338 : f32;
  var x_1385 : bool;
  var x_1424 : f32;
  var x_1440 : f32;
  var hlslcc_movcTemp : vec3<f32>;
  var x_1573 : f32;
  var x_1585 : f32;
  var x_1597 : f32;
  var x_1650 : f32;
  var x_1663 : f32;
  var x_1675 : f32;
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
      let x_360 : f32 = x_30.x_MainTex_TexelSize.y;
      x_354 = x_360;
    } else {
      let x_363 : f32 = x_30.x_MainTex_TexelSize.x;
      x_354 = x_363;
    }
    let x_364 : f32 = x_354;
    u_xlat18 = x_364;
    let x_366 : f32 = u_xlat6.x;
    let x_370 : f32 = u_xlat1.w;
    u_xlat6.x = ((x_366 * 0.083333336f) + -(x_370));
    let x_375 : f32 = u_xlat1.w;
    let x_378 : f32 = u_xlat2.x;
    u_xlat8 = (-(x_375) + x_378);
    let x_381 : f32 = u_xlat1.w;
    let x_383 : f32 = u_xlat12;
    u_xlat20 = (-(x_381) + x_383);
    let x_386 : f32 = u_xlat1.w;
    let x_388 : f32 = u_xlat2.x;
    u_xlat2.x = (x_386 + x_388);
    let x_392 : f32 = u_xlat1.w;
    let x_393 : f32 = u_xlat12;
    u_xlat12 = (x_392 + x_393);
    let x_396 : f32 = u_xlat8;
    let x_398 : f32 = u_xlat20;
    u_xlatb3 = (abs(x_396) >= abs(x_398));
    let x_401 : f32 = u_xlat20;
    let x_403 : f32 = u_xlat8;
    u_xlat8 = max(abs(x_401), abs(x_403));
    let x_406 : bool = u_xlatb3;
    if (x_406) {
      let x_410 : f32 = u_xlat18;
      x_407 = -(x_410);
    } else {
      let x_413 : f32 = u_xlat18;
      x_407 = x_413;
    }
    let x_414 : f32 = x_407;
    u_xlat18 = x_414;
    let x_416 : f32 = u_xlat14.x;
    let x_418 : f32 = u_xlat6.x;
    u_xlat6.x = (x_416 * abs(x_418));
    let x_423 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_423, 0.0f, 1.0f);
    let x_427 : bool = u_xlatb0.x;
    if (x_427) {
      let x_432 : f32 = x_30.x_MainTex_TexelSize.x;
      x_428 = x_432;
    } else {
      x_428 = 0.0f;
    }
    let x_434 : f32 = x_428;
    u_xlat14.x = x_434;
    let x_437 : bool = u_xlatb0.x;
    if (x_437) {
      x_438 = 0.0f;
    } else {
      let x_443 : f32 = x_30.x_MainTex_TexelSize.y;
      x_438 = x_443;
    }
    let x_444 : f32 = x_438;
    u_xlat14.y = x_444;
    let x_446 : f32 = u_xlat18;
    let x_451 : vec2<f32> = vs_TEXCOORD0;
    u_xlat9 = ((vec2<f32>(x_446, x_446) * vec2<f32>(0.5f, 0.5f)) + x_451);
    let x_454 : bool = u_xlatb0.x;
    if (x_454) {
      let x_460 : f32 = vs_TEXCOORD0.x;
      x_455 = x_460;
    } else {
      let x_463 : f32 = u_xlat9.x;
      x_455 = x_463;
    }
    let x_464 : f32 = x_455;
    u_xlat9.x = x_464;
    let x_467 : bool = u_xlatb0.x;
    if (x_467) {
      let x_472 : f32 = u_xlat9.y;
      x_468 = x_472;
    } else {
      let x_475 : f32 = vs_TEXCOORD0.y;
      x_468 = x_475;
    }
    let x_476 : f32 = x_468;
    u_xlat9.y = x_476;
    let x_478 : vec2<f32> = u_xlat14;
    let x_480 : vec2<f32> = u_xlat9;
    let x_481 : vec2<f32> = (-(x_478) + x_480);
    let x_482 : vec3<f32> = u_xlat4;
    u_xlat4 = vec3<f32>(x_481.x, x_481.y, x_482.z);
    let x_485 : vec2<f32> = u_xlat14;
    let x_486 : vec2<f32> = u_xlat9;
    let x_487 : vec2<f32> = (x_485 + x_486);
    let x_488 : vec3<f32> = u_xlat5;
    u_xlat5 = vec3<f32>(x_487.x, x_487.y, x_488.z);
    let x_491 : f32 = u_xlat6.x;
    u_xlat9.x = ((x_491 * -2.0f) + 3.0f);
    let x_496 : vec3<f32> = u_xlat4;
    u_xlat15 = vec2<f32>(x_496.x, x_496.y);
    let x_498 : vec2<f32> = u_xlat15;
    u_xlat15 = clamp(x_498, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_502 : vec2<f32> = u_xlat15;
    let x_504 : f32 = x_30.x_RenderViewportScaleFactor;
    u_xlat15 = (x_502 * vec2<f32>(x_504, x_504));
    let x_510 : vec2<f32> = u_xlat15;
    let x_511 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_510, 0.0f);
    u_xlat15.x = x_511.w;
    let x_515 : f32 = u_xlat6.x;
    let x_517 : f32 = u_xlat6.x;
    u_xlat6.x = (x_515 * x_517);
    let x_521 : vec3<f32> = u_xlat5;
    u_xlat16 = vec2<f32>(x_521.x, x_521.y);
    let x_523 : vec2<f32> = u_xlat16;
    u_xlat16 = clamp(x_523, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_527 : vec2<f32> = u_xlat16;
    let x_529 : f32 = x_30.x_RenderViewportScaleFactor;
    u_xlat16 = (x_527 * vec2<f32>(x_529, x_529));
    let x_535 : vec2<f32> = u_xlat16;
    let x_536 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_535, 0.0f);
    u_xlat21 = x_536.w;
    let x_538 : bool = u_xlatb3;
    if (x_538) {
      let x_543 : f32 = u_xlat2.x;
      x_539 = x_543;
    } else {
      let x_545 : f32 = u_xlat12;
      x_539 = x_545;
    }
    let x_546 : f32 = x_539;
    u_xlat12 = x_546;
    let x_547 : f32 = u_xlat8;
    u_xlat2.x = (x_547 * 0.25f);
    let x_551 : f32 = u_xlat12;
    let x_555 : f32 = u_xlat1.w;
    u_xlat8 = ((-(x_551) * 0.5f) + x_555);
    let x_558 : f32 = u_xlat6.x;
    let x_560 : f32 = u_xlat9.x;
    u_xlat6.x = (x_558 * x_560);
    let x_565 : f32 = u_xlat8;
    u_xlati8 = bitcast<i32>(select(0u, 4294967295u, (x_565 < 0.0f)));
    let x_570 : f32 = u_xlat12;
    let x_574 : f32 = u_xlat15.x;
    u_xlat3.x = ((-(x_570) * 0.5f) + x_574);
    let x_577 : f32 = u_xlat12;
    let x_580 : f32 = u_xlat21;
    u_xlat3.y = ((-(x_577) * 0.5f) + x_580);
    let x_585 : vec2<f32> = u_xlat3;
    let x_588 : vec3<f32> = u_xlat2;
    let x_591 : vec4<bool> = (abs(vec4<f32>(x_585.x, x_585.y, x_585.x, x_585.y)) >= vec4<f32>(x_588.x, x_588.x, x_588.x, x_588.x));
    u_xlati15 = bitcast<vec2<i32>>((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_591.x, x_591.y)) * vec2<u32>(4294967295u, 4294967295u)));
    let x_602 : f32 = u_xlat14.x;
    let x_607 : f32 = u_xlat4.x;
    u_xlat16.x = ((-(x_602) * 1.5f) + x_607);
    let x_611 : i32 = u_xlati15.x;
    if ((x_611 != 0i)) {
      let x_617 : f32 = u_xlat4.x;
      x_613 = x_617;
    } else {
      let x_620 : f32 = u_xlat16.x;
      x_613 = x_620;
    }
    let x_621 : f32 = x_613;
    u_xlat4.x = x_621;
    let x_625 : f32 = u_xlat14.y;
    let x_629 : f32 = u_xlat4.y;
    u_xlat22 = ((-(x_625) * 1.5f) + x_629);
    let x_632 : i32 = u_xlati15.x;
    if ((x_632 != 0i)) {
      let x_638 : f32 = u_xlat4.y;
      x_634 = x_638;
    } else {
      let x_640 : f32 = u_xlat22;
      x_634 = x_640;
    }
    let x_641 : f32 = x_634;
    u_xlat4.z = x_641;
    let x_647 : vec2<i32> = u_xlati15;
    let x_648 : vec2<i32> = ~(x_647);
    let x_649 : vec3<i32> = u_xlati10;
    u_xlati10 = vec3<i32>(x_648.x, x_649.y, x_648.y);
    let x_652 : i32 = u_xlati10.z;
    let x_655 : i32 = u_xlati10.x;
    u_xlati10.x = bitcast<i32>((bitcast<u32>(x_652) | bitcast<u32>(x_655)));
    let x_661 : f32 = u_xlat14.x;
    let x_664 : f32 = u_xlat5.x;
    u_xlat22 = ((x_661 * 1.5f) + x_664);
    let x_667 : i32 = u_xlati15.y;
    if ((x_667 != 0i)) {
      let x_673 : f32 = u_xlat5.x;
      x_669 = x_673;
    } else {
      let x_675 : f32 = u_xlat22;
      x_669 = x_675;
    }
    let x_676 : f32 = x_669;
    u_xlat5.x = x_676;
    let x_679 : f32 = u_xlat14.y;
    let x_682 : f32 = u_xlat5.y;
    u_xlat22 = ((x_679 * 1.5f) + x_682);
    let x_685 : i32 = u_xlati15.y;
    if ((x_685 != 0i)) {
      let x_691 : f32 = u_xlat5.y;
      x_687 = x_691;
    } else {
      let x_693 : f32 = u_xlat22;
      x_687 = x_693;
    }
    let x_694 : f32 = x_687;
    u_xlat5.z = x_694;
    let x_697 : i32 = u_xlati10.x;
    if ((x_697 != 0i)) {
      let x_702 : i32 = u_xlati15.x;
      if ((x_702 == 0i)) {
        let x_706 : vec3<f32> = u_xlat4;
        let x_707 : vec2<f32> = vec2<f32>(x_706.x, x_706.z);
        let x_708 : vec3<f32> = u_xlat10;
        u_xlat10 = vec3<f32>(x_707.x, x_708.y, x_707.y);
        let x_710 : vec3<f32> = u_xlat10;
        let x_714 : vec2<f32> = clamp(vec2<f32>(x_710.x, x_710.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_715 : vec3<f32> = u_xlat10;
        u_xlat10 = vec3<f32>(x_714.x, x_715.y, x_714.y);
        let x_717 : vec3<f32> = u_xlat10;
        let x_720 : f32 = x_30.x_RenderViewportScaleFactor;
        let x_722 : vec2<f32> = (vec2<f32>(x_717.x, x_717.z) * vec2<f32>(x_720, x_720));
        let x_723 : vec3<f32> = u_xlat10;
        u_xlat10 = vec3<f32>(x_722.x, x_723.y, x_722.y);
        let x_728 : vec3<f32> = u_xlat10;
        let x_730 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_728.x, x_728.z), 0.0f);
        u_xlat3.x = x_730.w;
      }
      let x_734 : i32 = u_xlati15.y;
      if ((x_734 == 0i)) {
        let x_738 : vec3<f32> = u_xlat5;
        let x_739 : vec2<f32> = vec2<f32>(x_738.x, x_738.z);
        let x_740 : vec3<f32> = u_xlat10;
        u_xlat10 = vec3<f32>(x_739.x, x_740.y, x_739.y);
        let x_742 : vec3<f32> = u_xlat10;
        let x_746 : vec2<f32> = clamp(vec2<f32>(x_742.x, x_742.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_747 : vec3<f32> = u_xlat10;
        u_xlat10 = vec3<f32>(x_746.x, x_747.y, x_746.y);
        let x_749 : vec3<f32> = u_xlat10;
        let x_752 : f32 = x_30.x_RenderViewportScaleFactor;
        let x_754 : vec2<f32> = (vec2<f32>(x_749.x, x_749.z) * vec2<f32>(x_752, x_752));
        let x_755 : vec3<f32> = u_xlat10;
        u_xlat10 = vec3<f32>(x_754.x, x_755.y, x_754.y);
        let x_760 : vec3<f32> = u_xlat10;
        let x_762 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_760.x, x_760.z), 0.0f);
        u_xlat3.y = x_762.w;
      }
      let x_765 : f32 = u_xlat12;
      let x_769 : f32 = u_xlat3.x;
      u_xlat10.x = ((-(x_765) * 0.5f) + x_769);
      let x_773 : i32 = u_xlati15.x;
      if ((x_773 != 0i)) {
        let x_779 : f32 = u_xlat3.x;
        x_775 = x_779;
      } else {
        let x_782 : f32 = u_xlat10.x;
        x_775 = x_782;
      }
      let x_783 : f32 = x_775;
      u_xlat3.x = x_783;
      let x_785 : f32 = u_xlat12;
      let x_789 : f32 = u_xlat3.y;
      u_xlat15.x = ((-(x_785) * 0.5f) + x_789);
      let x_793 : i32 = u_xlati15.y;
      if ((x_793 != 0i)) {
        let x_799 : f32 = u_xlat3.y;
        x_795 = x_799;
      } else {
        let x_802 : f32 = u_xlat15.x;
        x_795 = x_802;
      }
      let x_803 : f32 = x_795;
      u_xlat3.y = x_803;
      let x_805 : vec2<f32> = u_xlat3;
      let x_808 : vec3<f32> = u_xlat2;
      let x_810 : vec4<bool> = (abs(vec4<f32>(x_805.x, x_805.y, x_805.x, x_805.y)) >= vec4<f32>(x_808.x, x_808.x, x_808.x, x_808.x));
      u_xlati15 = bitcast<vec2<i32>>((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_810.x, x_810.y)) * vec2<u32>(4294967295u, 4294967295u)));
      let x_817 : f32 = u_xlat14.x;
      let x_821 : f32 = u_xlat4.x;
      u_xlat10.x = ((-(x_817) * 2.0f) + x_821);
      let x_825 : i32 = u_xlati15.x;
      if ((x_825 != 0i)) {
        let x_831 : f32 = u_xlat4.x;
        x_827 = x_831;
      } else {
        let x_834 : f32 = u_xlat10.x;
        x_827 = x_834;
      }
      let x_835 : f32 = x_827;
      u_xlat4.x = x_835;
      let x_838 : f32 = u_xlat14.y;
      let x_842 : f32 = u_xlat4.z;
      u_xlat10.x = ((-(x_838) * 2.0f) + x_842);
      let x_846 : i32 = u_xlati15.x;
      if ((x_846 != 0i)) {
        let x_852 : f32 = u_xlat4.z;
        x_848 = x_852;
      } else {
        let x_855 : f32 = u_xlat10.x;
        x_848 = x_855;
      }
      let x_856 : f32 = x_848;
      u_xlat4.z = x_856;
      let x_858 : vec2<i32> = u_xlati15;
      let x_859 : vec2<i32> = ~(x_858);
      let x_860 : vec3<i32> = u_xlati10;
      u_xlati10 = vec3<i32>(x_859.x, x_860.y, x_859.y);
      let x_863 : i32 = u_xlati10.z;
      let x_866 : i32 = u_xlati10.x;
      u_xlati10.x = bitcast<i32>((bitcast<u32>(x_863) | bitcast<u32>(x_866)));
      let x_872 : f32 = u_xlat14.x;
      let x_875 : f32 = u_xlat5.x;
      u_xlat22 = ((x_872 * 2.0f) + x_875);
      let x_878 : i32 = u_xlati15.y;
      if ((x_878 != 0i)) {
        let x_884 : f32 = u_xlat5.x;
        x_880 = x_884;
      } else {
        let x_886 : f32 = u_xlat22;
        x_880 = x_886;
      }
      let x_887 : f32 = x_880;
      u_xlat5.x = x_887;
      let x_890 : f32 = u_xlat14.y;
      let x_893 : f32 = u_xlat5.z;
      u_xlat22 = ((x_890 * 2.0f) + x_893);
      let x_896 : i32 = u_xlati15.y;
      if ((x_896 != 0i)) {
        let x_902 : f32 = u_xlat5.z;
        x_898 = x_902;
      } else {
        let x_904 : f32 = u_xlat22;
        x_898 = x_904;
      }
      let x_905 : f32 = x_898;
      u_xlat5.z = x_905;
      let x_908 : i32 = u_xlati10.x;
      if ((x_908 != 0i)) {
        let x_913 : i32 = u_xlati15.x;
        if ((x_913 == 0i)) {
          let x_917 : vec3<f32> = u_xlat4;
          let x_918 : vec2<f32> = vec2<f32>(x_917.x, x_917.z);
          let x_919 : vec3<f32> = u_xlat10;
          u_xlat10 = vec3<f32>(x_918.x, x_919.y, x_918.y);
          let x_921 : vec3<f32> = u_xlat10;
          let x_925 : vec2<f32> = clamp(vec2<f32>(x_921.x, x_921.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_926 : vec3<f32> = u_xlat10;
          u_xlat10 = vec3<f32>(x_925.x, x_926.y, x_925.y);
          let x_928 : vec3<f32> = u_xlat10;
          let x_931 : f32 = x_30.x_RenderViewportScaleFactor;
          let x_933 : vec2<f32> = (vec2<f32>(x_928.x, x_928.z) * vec2<f32>(x_931, x_931));
          let x_934 : vec3<f32> = u_xlat10;
          u_xlat10 = vec3<f32>(x_933.x, x_934.y, x_933.y);
          let x_939 : vec3<f32> = u_xlat10;
          let x_941 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_939.x, x_939.z), 0.0f);
          u_xlat3.x = x_941.w;
        }
        let x_945 : i32 = u_xlati15.y;
        if ((x_945 == 0i)) {
          let x_949 : vec3<f32> = u_xlat5;
          let x_950 : vec2<f32> = vec2<f32>(x_949.x, x_949.z);
          let x_951 : vec3<f32> = u_xlat10;
          u_xlat10 = vec3<f32>(x_950.x, x_951.y, x_950.y);
          let x_953 : vec3<f32> = u_xlat10;
          let x_957 : vec2<f32> = clamp(vec2<f32>(x_953.x, x_953.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_958 : vec3<f32> = u_xlat10;
          u_xlat10 = vec3<f32>(x_957.x, x_958.y, x_957.y);
          let x_960 : vec3<f32> = u_xlat10;
          let x_963 : f32 = x_30.x_RenderViewportScaleFactor;
          let x_965 : vec2<f32> = (vec2<f32>(x_960.x, x_960.z) * vec2<f32>(x_963, x_963));
          let x_966 : vec3<f32> = u_xlat10;
          u_xlat10 = vec3<f32>(x_965.x, x_966.y, x_965.y);
          let x_971 : vec3<f32> = u_xlat10;
          let x_973 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_971.x, x_971.z), 0.0f);
          u_xlat3.y = x_973.w;
        }
        let x_976 : f32 = u_xlat12;
        let x_980 : f32 = u_xlat3.x;
        u_xlat10.x = ((-(x_976) * 0.5f) + x_980);
        let x_984 : i32 = u_xlati15.x;
        if ((x_984 != 0i)) {
          let x_990 : f32 = u_xlat3.x;
          x_986 = x_990;
        } else {
          let x_993 : f32 = u_xlat10.x;
          x_986 = x_993;
        }
        let x_994 : f32 = x_986;
        u_xlat3.x = x_994;
        let x_996 : f32 = u_xlat12;
        let x_1000 : f32 = u_xlat3.y;
        u_xlat15.x = ((-(x_996) * 0.5f) + x_1000);
        let x_1004 : i32 = u_xlati15.y;
        if ((x_1004 != 0i)) {
          let x_1010 : f32 = u_xlat3.y;
          x_1006 = x_1010;
        } else {
          let x_1013 : f32 = u_xlat15.x;
          x_1006 = x_1013;
        }
        let x_1014 : f32 = x_1006;
        u_xlat3.y = x_1014;
        let x_1016 : vec2<f32> = u_xlat3;
        let x_1019 : vec3<f32> = u_xlat2;
        let x_1021 : vec4<bool> = (abs(vec4<f32>(x_1016.x, x_1016.y, x_1016.x, x_1016.y)) >= vec4<f32>(x_1019.x, x_1019.x, x_1019.x, x_1019.x));
        u_xlati15 = bitcast<vec2<i32>>((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_1021.x, x_1021.y)) * vec2<u32>(4294967295u, 4294967295u)));
        let x_1028 : f32 = u_xlat14.x;
        let x_1033 : f32 = u_xlat4.x;
        u_xlat10.x = ((-(x_1028) * 4.0f) + x_1033);
        let x_1037 : i32 = u_xlati15.x;
        if ((x_1037 != 0i)) {
          let x_1043 : f32 = u_xlat4.x;
          x_1039 = x_1043;
        } else {
          let x_1046 : f32 = u_xlat10.x;
          x_1039 = x_1046;
        }
        let x_1047 : f32 = x_1039;
        u_xlat4.x = x_1047;
        let x_1050 : f32 = u_xlat14.y;
        let x_1054 : f32 = u_xlat4.z;
        u_xlat10.x = ((-(x_1050) * 4.0f) + x_1054);
        let x_1058 : i32 = u_xlati15.x;
        if ((x_1058 != 0i)) {
          let x_1064 : f32 = u_xlat4.z;
          x_1060 = x_1064;
        } else {
          let x_1067 : f32 = u_xlat10.x;
          x_1060 = x_1067;
        }
        let x_1068 : f32 = x_1060;
        u_xlat4.z = x_1068;
        let x_1070 : vec2<i32> = u_xlati15;
        let x_1071 : vec2<i32> = ~(x_1070);
        let x_1072 : vec3<i32> = u_xlati10;
        u_xlati10 = vec3<i32>(x_1071.x, x_1072.y, x_1071.y);
        let x_1075 : i32 = u_xlati10.z;
        let x_1078 : i32 = u_xlati10.x;
        u_xlati10.x = bitcast<i32>((bitcast<u32>(x_1075) | bitcast<u32>(x_1078)));
        let x_1084 : f32 = u_xlat14.x;
        let x_1087 : f32 = u_xlat5.x;
        u_xlat22 = ((x_1084 * 4.0f) + x_1087);
        let x_1090 : i32 = u_xlati15.y;
        if ((x_1090 != 0i)) {
          let x_1096 : f32 = u_xlat5.x;
          x_1092 = x_1096;
        } else {
          let x_1098 : f32 = u_xlat22;
          x_1092 = x_1098;
        }
        let x_1099 : f32 = x_1092;
        u_xlat5.x = x_1099;
        let x_1102 : f32 = u_xlat14.y;
        let x_1105 : f32 = u_xlat5.z;
        u_xlat22 = ((x_1102 * 4.0f) + x_1105);
        let x_1108 : i32 = u_xlati15.y;
        if ((x_1108 != 0i)) {
          let x_1114 : f32 = u_xlat5.z;
          x_1110 = x_1114;
        } else {
          let x_1116 : f32 = u_xlat22;
          x_1110 = x_1116;
        }
        let x_1117 : f32 = x_1110;
        u_xlat5.z = x_1117;
        let x_1120 : i32 = u_xlati10.x;
        if ((x_1120 != 0i)) {
          let x_1125 : i32 = u_xlati15.x;
          if ((x_1125 == 0i)) {
            let x_1129 : vec3<f32> = u_xlat4;
            let x_1130 : vec2<f32> = vec2<f32>(x_1129.x, x_1129.z);
            let x_1131 : vec3<f32> = u_xlat10;
            u_xlat10 = vec3<f32>(x_1130.x, x_1131.y, x_1130.y);
            let x_1133 : vec3<f32> = u_xlat10;
            let x_1137 : vec2<f32> = clamp(vec2<f32>(x_1133.x, x_1133.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
            let x_1138 : vec3<f32> = u_xlat10;
            u_xlat10 = vec3<f32>(x_1137.x, x_1138.y, x_1137.y);
            let x_1140 : vec3<f32> = u_xlat10;
            let x_1143 : f32 = x_30.x_RenderViewportScaleFactor;
            let x_1145 : vec2<f32> = (vec2<f32>(x_1140.x, x_1140.z) * vec2<f32>(x_1143, x_1143));
            let x_1146 : vec3<f32> = u_xlat10;
            u_xlat10 = vec3<f32>(x_1145.x, x_1146.y, x_1145.y);
            let x_1151 : vec3<f32> = u_xlat10;
            let x_1153 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_1151.x, x_1151.z), 0.0f);
            u_xlat3.x = x_1153.w;
          }
          let x_1157 : i32 = u_xlati15.y;
          if ((x_1157 == 0i)) {
            let x_1161 : vec3<f32> = u_xlat5;
            let x_1162 : vec2<f32> = vec2<f32>(x_1161.x, x_1161.z);
            let x_1163 : vec3<f32> = u_xlat10;
            u_xlat10 = vec3<f32>(x_1162.x, x_1163.y, x_1162.y);
            let x_1165 : vec3<f32> = u_xlat10;
            let x_1169 : vec2<f32> = clamp(vec2<f32>(x_1165.x, x_1165.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
            let x_1170 : vec3<f32> = u_xlat10;
            u_xlat10 = vec3<f32>(x_1169.x, x_1170.y, x_1169.y);
            let x_1172 : vec3<f32> = u_xlat10;
            let x_1175 : f32 = x_30.x_RenderViewportScaleFactor;
            let x_1177 : vec2<f32> = (vec2<f32>(x_1172.x, x_1172.z) * vec2<f32>(x_1175, x_1175));
            let x_1178 : vec3<f32> = u_xlat10;
            u_xlat10 = vec3<f32>(x_1177.x, x_1178.y, x_1177.y);
            let x_1183 : vec3<f32> = u_xlat10;
            let x_1185 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_1183.x, x_1183.z), 0.0f);
            u_xlat3.y = x_1185.w;
          }
          let x_1188 : f32 = u_xlat12;
          let x_1192 : f32 = u_xlat3.x;
          u_xlat10.x = ((-(x_1188) * 0.5f) + x_1192);
          let x_1196 : i32 = u_xlati15.x;
          if ((x_1196 != 0i)) {
            let x_1202 : f32 = u_xlat3.x;
            x_1198 = x_1202;
          } else {
            let x_1205 : f32 = u_xlat10.x;
            x_1198 = x_1205;
          }
          let x_1206 : f32 = x_1198;
          u_xlat3.x = x_1206;
          let x_1208 : f32 = u_xlat12;
          let x_1212 : f32 = u_xlat3.y;
          u_xlat12 = ((-(x_1208) * 0.5f) + x_1212);
          let x_1215 : i32 = u_xlati15.y;
          if ((x_1215 != 0i)) {
            let x_1221 : f32 = u_xlat3.y;
            x_1217 = x_1221;
          } else {
            let x_1223 : f32 = u_xlat12;
            x_1217 = x_1223;
          }
          let x_1224 : f32 = x_1217;
          u_xlat3.y = x_1224;
          let x_1228 : vec2<f32> = u_xlat3;
          let x_1231 : vec3<f32> = u_xlat2;
          let x_1233 : vec4<bool> = (abs(vec4<f32>(x_1228.x, x_1228.y, x_1228.x, x_1228.y)) >= vec4<f32>(x_1231.x, x_1231.x, x_1231.x, x_1231.x));
          u_xlatb15 = vec2<bool>(x_1233.x, x_1233.y);
          let x_1236 : f32 = u_xlat14.x;
          let x_1241 : f32 = u_xlat4.x;
          u_xlat12 = ((-(x_1236) * 12.0f) + x_1241);
          let x_1244 : bool = u_xlatb15.x;
          if (x_1244) {
            let x_1249 : f32 = u_xlat4.x;
            x_1245 = x_1249;
          } else {
            let x_1251 : f32 = u_xlat12;
            x_1245 = x_1251;
          }
          let x_1252 : f32 = x_1245;
          u_xlat4.x = x_1252;
          let x_1255 : f32 = u_xlat14.y;
          let x_1259 : f32 = u_xlat4.z;
          u_xlat12 = ((-(x_1255) * 12.0f) + x_1259);
          let x_1262 : bool = u_xlatb15.x;
          if (x_1262) {
            let x_1267 : f32 = u_xlat4.z;
            x_1263 = x_1267;
          } else {
            let x_1269 : f32 = u_xlat12;
            x_1263 = x_1269;
          }
          let x_1270 : f32 = x_1263;
          u_xlat4.z = x_1270;
          let x_1273 : f32 = u_xlat14.x;
          let x_1276 : f32 = u_xlat5.x;
          u_xlat12 = ((x_1273 * 12.0f) + x_1276);
          let x_1279 : bool = u_xlatb15.y;
          if (x_1279) {
            let x_1284 : f32 = u_xlat5.x;
            x_1280 = x_1284;
          } else {
            let x_1286 : f32 = u_xlat12;
            x_1280 = x_1286;
          }
          let x_1287 : f32 = x_1280;
          u_xlat5.x = x_1287;
          let x_1290 : f32 = u_xlat14.y;
          let x_1293 : f32 = u_xlat5.z;
          u_xlat12 = ((x_1290 * 12.0f) + x_1293);
          let x_1296 : bool = u_xlatb15.y;
          if (x_1296) {
            let x_1301 : f32 = u_xlat5.z;
            x_1297 = x_1301;
          } else {
            let x_1303 : f32 = u_xlat12;
            x_1297 = x_1303;
          }
          let x_1304 : f32 = x_1297;
          u_xlat5.z = x_1304;
        }
      }
    }
    let x_1307 : f32 = u_xlat4.x;
    let x_1310 : f32 = vs_TEXCOORD0.x;
    u_xlat12 = (-(x_1307) + x_1310);
    let x_1313 : f32 = u_xlat4.z;
    let x_1316 : f32 = vs_TEXCOORD0.y;
    u_xlat14.x = (-(x_1313) + x_1316);
    let x_1320 : bool = u_xlatb0.x;
    if (x_1320) {
      let x_1324 : f32 = u_xlat12;
      x_1321 = x_1324;
    } else {
      let x_1327 : f32 = u_xlat14.x;
      x_1321 = x_1327;
    }
    let x_1328 : f32 = x_1321;
    u_xlat12 = x_1328;
    let x_1329 : vec3<f32> = u_xlat5;
    let x_1331 : vec2<f32> = vs_TEXCOORD0;
    let x_1333 : vec2<f32> = (vec2<f32>(x_1329.x, x_1329.z) + -(x_1331));
    let x_1334 : vec3<f32> = u_xlat2;
    u_xlat2 = vec3<f32>(x_1333.x, x_1334.y, x_1333.y);
    let x_1337 : bool = u_xlatb0.x;
    if (x_1337) {
      let x_1342 : f32 = u_xlat2.x;
      x_1338 = x_1342;
    } else {
      let x_1345 : f32 = u_xlat2.z;
      x_1338 = x_1345;
    }
    let x_1346 : f32 = x_1338;
    u_xlat2.x = x_1346;
    let x_1349 : vec2<f32> = u_xlat3;
    let x_1352 : vec4<bool> = (vec4<f32>(x_1349.x, x_1349.y, x_1349.x, x_1349.y) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
    u_xlati14 = bitcast<vec2<i32>>((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_1352.x, x_1352.y)) * vec2<u32>(4294967295u, 4294967295u)));
    let x_1358 : f32 = u_xlat12;
    let x_1360 : f32 = u_xlat2.x;
    u_xlat3.x = (x_1358 + x_1360);
    let x_1364 : i32 = u_xlati8;
    let x_1367 : vec2<i32> = u_xlati14;
    let x_1369 : vec4<bool> = (vec4<i32>(x_1364, x_1364, x_1364, x_1364) != vec4<i32>(x_1367.x, x_1367.y, x_1367.x, x_1367.x));
    u_xlatb8 = vec2<bool>(x_1369.x, x_1369.y);
    let x_1372 : f32 = u_xlat3.x;
    u_xlat20 = (1.0f / x_1372);
    let x_1374 : f32 = u_xlat12;
    let x_1376 : f32 = u_xlat2.x;
    u_xlatb3 = (x_1374 < x_1376);
    let x_1378 : f32 = u_xlat12;
    let x_1380 : f32 = u_xlat2.x;
    u_xlat12 = min(x_1378, x_1380);
    let x_1383 : bool = u_xlatb3;
    if (x_1383) {
      let x_1389 : bool = u_xlatb8.x;
      x_1385 = x_1389;
    } else {
      let x_1392 : bool = u_xlatb8.y;
      x_1385 = x_1392;
    }
    let x_1393 : bool = x_1385;
    u_xlatb2 = x_1393;
    let x_1395 : f32 = u_xlat6.x;
    let x_1397 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1395 * x_1397);
    let x_1400 : f32 = u_xlat12;
    let x_1401 : f32 = u_xlat20;
    u_xlat12 = ((x_1400 * -(x_1401)) + 0.5f);
    let x_1405 : bool = u_xlatb2;
    let x_1406 : f32 = u_xlat12;
    u_xlat12 = select(0.0f, x_1406, x_1405);
    let x_1409 : f32 = u_xlat6.x;
    let x_1410 : f32 = u_xlat12;
    u_xlat6.x = max(x_1409, x_1410);
    let x_1413 : vec3<f32> = u_xlat6;
    let x_1415 : f32 = u_xlat18;
    let x_1418 : vec2<f32> = vs_TEXCOORD0;
    let x_1419 : vec2<f32> = ((vec2<f32>(x_1413.x, x_1413.x) * vec2<f32>(x_1415, x_1415)) + x_1418);
    let x_1420 : vec3<f32> = u_xlat6;
    u_xlat6 = vec3<f32>(x_1419.x, x_1419.y, x_1420.z);
    let x_1423 : bool = u_xlatb0.x;
    if (x_1423) {
      let x_1428 : f32 = vs_TEXCOORD0.x;
      x_1424 = x_1428;
    } else {
      let x_1431 : f32 = u_xlat6.x;
      x_1424 = x_1431;
    }
    let x_1432 : f32 = x_1424;
    u_xlat2.x = x_1432;
    let x_1435 : f32 = u_xlat2.x;
    u_xlat2.x = clamp(x_1435, 0.0f, 1.0f);
    let x_1439 : bool = u_xlatb0.x;
    if (x_1439) {
      let x_1444 : f32 = u_xlat6.y;
      x_1440 = x_1444;
    } else {
      let x_1447 : f32 = vs_TEXCOORD0.y;
      x_1440 = x_1447;
    }
    let x_1448 : f32 = x_1440;
    u_xlat2.y = x_1448;
    let x_1451 : f32 = u_xlat2.y;
    u_xlat2.y = clamp(x_1451, 0.0f, 1.0f);
    let x_1454 : vec3<f32> = u_xlat2;
    let x_1457 : f32 = x_30.x_RenderViewportScaleFactor;
    let x_1459 : vec2<f32> = (vec2<f32>(x_1454.x, x_1454.y) * vec2<f32>(x_1457, x_1457));
    let x_1460 : vec3<f32> = u_xlat0;
    u_xlat0 = vec3<f32>(x_1459.x, x_1459.y, x_1460.z);
    let x_1465 : vec3<f32> = u_xlat0;
    let x_1467 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_1465.x, x_1465.y), 0.0f);
    let x_1468 : vec3<f32> = vec3<f32>(x_1467.x, x_1467.y, x_1467.z);
    let x_1469 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1468.x, x_1468.y, x_1468.z, x_1469.w);
  }
  let x_1471 : vec2<f32> = vs_TEXCOORD0;
  let x_1474 : vec4<f32> = x_30.x_Dithering_Coords;
  let x_1478 : vec4<f32> = x_30.x_Dithering_Coords;
  let x_1480 : vec2<f32> = ((x_1471 * vec2<f32>(x_1474.x, x_1474.y)) + vec2<f32>(x_1478.z, x_1478.w));
  let x_1481 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1480.x, x_1480.y, x_1481.z);
  let x_1488 : vec3<f32> = u_xlat0;
  let x_1490 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_1488.x, x_1488.y));
  u_xlat0.x = x_1490.w;
  let x_1494 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1494 * 2.0f) + -1.0f);
  let x_1500 : f32 = u_xlat0.x;
  u_xlat6.x = ((x_1500 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_1506 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_1506, 0.0f, 1.0f);
  let x_1510 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_1510 * 2.0f) + -1.0f);
  let x_1515 : f32 = u_xlat0.x;
  u_xlat0.x = (-(abs(x_1515)) + 1.0f);
  let x_1521 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_1521);
  let x_1525 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_1525) + 1.0f);
  let x_1530 : f32 = u_xlat0.x;
  let x_1532 : f32 = u_xlat6.x;
  u_xlat0.x = (x_1530 * x_1532);
  let x_1535 : vec4<f32> = u_xlat1;
  u_xlat6 = (vec3<f32>(x_1535.x, x_1535.y, x_1535.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1540 : vec4<f32> = u_xlat1;
  u_xlat2 = max(abs(vec3<f32>(x_1540.x, x_1540.y, x_1540.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1546 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_1546);
  let x_1548 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1548 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1552 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_1552);
  let x_1554 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_1554 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1564 : vec4<f32> = u_xlat1;
  let x_1566 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1564.x, x_1564.y, x_1564.z, x_1564.x));
  u_xlatb1 = vec3<bool>(x_1566.x, x_1566.y, x_1566.z);
  let x_1570 : vec3<f32> = u_xlat6;
  hlslcc_movcTemp = x_1570;
  let x_1572 : bool = u_xlatb1.x;
  if (x_1572) {
    let x_1577 : f32 = u_xlat6.x;
    x_1573 = x_1577;
  } else {
    let x_1580 : f32 = u_xlat2.x;
    x_1573 = x_1580;
  }
  let x_1581 : f32 = x_1573;
  hlslcc_movcTemp.x = x_1581;
  let x_1584 : bool = u_xlatb1.y;
  if (x_1584) {
    let x_1589 : f32 = u_xlat6.y;
    x_1585 = x_1589;
  } else {
    let x_1592 : f32 = u_xlat2.y;
    x_1585 = x_1592;
  }
  let x_1593 : f32 = x_1585;
  hlslcc_movcTemp.y = x_1593;
  let x_1596 : bool = u_xlatb1.z;
  if (x_1596) {
    let x_1601 : f32 = u_xlat6.z;
    x_1597 = x_1601;
  } else {
    let x_1604 : f32 = u_xlat2.z;
    x_1597 = x_1604;
  }
  let x_1605 : f32 = x_1597;
  hlslcc_movcTemp.z = x_1605;
  let x_1607 : vec3<f32> = hlslcc_movcTemp;
  u_xlat6 = x_1607;
  let x_1608 : vec3<f32> = u_xlat0;
  let x_1613 : vec3<f32> = u_xlat6;
  u_xlat0 = ((vec3<f32>(x_1608.x, x_1608.x, x_1608.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + x_1613);
  let x_1615 : vec3<f32> = u_xlat0;
  let x_1618 : vec3<f32> = (x_1615 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1619 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1618.x, x_1618.y, x_1618.z, x_1619.w);
  let x_1621 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_1621 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1625 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1625 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1629 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_1629), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1632 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_1632);
  let x_1634 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1634 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1638 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_1638);
  let x_1642 : vec3<f32> = u_xlat0;
  let x_1644 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1642.x, x_1642.y, x_1642.z, x_1642.x));
  u_xlatb0 = vec3<bool>(x_1644.x, x_1644.y, x_1644.z);
  let x_1649 : bool = u_xlatb0.x;
  if (x_1649) {
    let x_1654 : f32 = u_xlat1.x;
    x_1650 = x_1654;
  } else {
    let x_1657 : f32 = u_xlat2.x;
    x_1650 = x_1657;
  }
  let x_1658 : f32 = x_1650;
  SV_Target0.x = x_1658;
  let x_1662 : bool = u_xlatb0.y;
  if (x_1662) {
    let x_1667 : f32 = u_xlat1.y;
    x_1663 = x_1667;
  } else {
    let x_1670 : f32 = u_xlat2.y;
    x_1663 = x_1670;
  }
  let x_1671 : f32 = x_1663;
  SV_Target0.y = x_1671;
  let x_1674 : bool = u_xlatb0.z;
  if (x_1674) {
    let x_1679 : f32 = u_xlat1.z;
    x_1675 = x_1679;
  } else {
    let x_1682 : f32 = u_xlat2.z;
    x_1675 = x_1682;
  }
  let x_1683 : f32 = x_1675;
  SV_Target0.z = x_1683;
  let x_1686 : f32 = u_xlat1.w;
  SV_Target0.w = x_1686;
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

