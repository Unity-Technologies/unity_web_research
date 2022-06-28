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
  var x_1038 : f32;
  var x_1059 : f32;
  var x_1091 : f32;
  var x_1109 : f32;
  var x_1197 : f32;
  var x_1217 : f32;
  var x_1249 : f32;
  var x_1270 : f32;
  var x_1302 : f32;
  var x_1320 : f32;
  var x_1408 : f32;
  var x_1428 : f32;
  var x_1460 : f32;
  var x_1481 : f32;
  var x_1513 : f32;
  var x_1531 : f32;
  var x_1619 : f32;
  var x_1639 : f32;
  var x_1671 : f32;
  var x_1692 : f32;
  var x_1724 : f32;
  var x_1742 : f32;
  var x_1830 : f32;
  var x_1850 : f32;
  var x_1882 : f32;
  var x_1903 : f32;
  var x_1935 : f32;
  var x_1953 : f32;
  var x_2041 : f32;
  var x_2061 : f32;
  var x_2093 : f32;
  var x_2114 : f32;
  var x_2146 : f32;
  var x_2164 : f32;
  var x_2252 : f32;
  var x_2272 : f32;
  var x_2305 : f32;
  var x_2326 : f32;
  var x_2358 : f32;
  var x_2376 : f32;
  var x_2464 : f32;
  var x_2483 : f32;
  var x_2511 : f32;
  var x_2529 : f32;
  var x_2546 : f32;
  var x_2563 : f32;
  var x_2587 : f32;
  var x_2604 : f32;
  var x_2651 : bool;
  var x_2690 : f32;
  var x_2706 : f32;
  var hlslcc_movcTemp : vec3<f32>;
  var x_2839 : f32;
  var x_2851 : f32;
  var x_2863 : f32;
  var x_2916 : f32;
  var x_2929 : f32;
  var x_2941 : f32;
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
        let x_1032 : f32 = u_xlat4.x;
        u_xlat10.x = ((-(x_1028) * 2.0f) + x_1032);
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
        u_xlat10.x = ((-(x_1049) * 2.0f) + x_1053);
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
        u_xlat22 = ((x_1083 * 2.0f) + x_1086);
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
        u_xlat22 = ((x_1101 * 2.0f) + x_1104);
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
          u_xlat15.x = ((-(x_1207) * 0.5f) + x_1211);
          let x_1215 : i32 = u_xlati15.y;
          if ((x_1215 != 0i)) {
            let x_1221 : f32 = u_xlat3.y;
            x_1217 = x_1221;
          } else {
            let x_1224 : f32 = u_xlat15.x;
            x_1217 = x_1224;
          }
          let x_1225 : f32 = x_1217;
          u_xlat3.y = x_1225;
          let x_1227 : vec2<f32> = u_xlat3;
          let x_1230 : vec3<f32> = u_xlat2;
          let x_1232 : vec4<bool> = (abs(vec4<f32>(x_1227.x, x_1227.y, x_1227.x, x_1227.y)) >= vec4<f32>(x_1230.x, x_1230.x, x_1230.x, x_1230.x));
          u_xlati15 = bitcast<vec2<i32>>((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_1232.x, x_1232.y)) * vec2<u32>(4294967295u, 4294967295u)));
          let x_1239 : f32 = u_xlat14.x;
          let x_1243 : f32 = u_xlat4.x;
          u_xlat10.x = ((-(x_1239) * 2.0f) + x_1243);
          let x_1247 : i32 = u_xlati15.x;
          if ((x_1247 != 0i)) {
            let x_1253 : f32 = u_xlat4.x;
            x_1249 = x_1253;
          } else {
            let x_1256 : f32 = u_xlat10.x;
            x_1249 = x_1256;
          }
          let x_1257 : f32 = x_1249;
          u_xlat4.x = x_1257;
          let x_1260 : f32 = u_xlat14.y;
          let x_1264 : f32 = u_xlat4.z;
          u_xlat10.x = ((-(x_1260) * 2.0f) + x_1264);
          let x_1268 : i32 = u_xlati15.x;
          if ((x_1268 != 0i)) {
            let x_1274 : f32 = u_xlat4.z;
            x_1270 = x_1274;
          } else {
            let x_1277 : f32 = u_xlat10.x;
            x_1270 = x_1277;
          }
          let x_1278 : f32 = x_1270;
          u_xlat4.z = x_1278;
          let x_1280 : vec2<i32> = u_xlati15;
          let x_1281 : vec2<i32> = ~(x_1280);
          let x_1282 : vec3<i32> = u_xlati10;
          u_xlati10 = vec3<i32>(x_1281.x, x_1282.y, x_1281.y);
          let x_1285 : i32 = u_xlati10.z;
          let x_1288 : i32 = u_xlati10.x;
          u_xlati10.x = bitcast<i32>((bitcast<u32>(x_1285) | bitcast<u32>(x_1288)));
          let x_1294 : f32 = u_xlat14.x;
          let x_1297 : f32 = u_xlat5.x;
          u_xlat22 = ((x_1294 * 2.0f) + x_1297);
          let x_1300 : i32 = u_xlati15.y;
          if ((x_1300 != 0i)) {
            let x_1306 : f32 = u_xlat5.x;
            x_1302 = x_1306;
          } else {
            let x_1308 : f32 = u_xlat22;
            x_1302 = x_1308;
          }
          let x_1309 : f32 = x_1302;
          u_xlat5.x = x_1309;
          let x_1312 : f32 = u_xlat14.y;
          let x_1315 : f32 = u_xlat5.z;
          u_xlat22 = ((x_1312 * 2.0f) + x_1315);
          let x_1318 : i32 = u_xlati15.y;
          if ((x_1318 != 0i)) {
            let x_1324 : f32 = u_xlat5.z;
            x_1320 = x_1324;
          } else {
            let x_1326 : f32 = u_xlat22;
            x_1320 = x_1326;
          }
          let x_1327 : f32 = x_1320;
          u_xlat5.z = x_1327;
          let x_1330 : i32 = u_xlati10.x;
          if ((x_1330 != 0i)) {
            let x_1335 : i32 = u_xlati15.x;
            if ((x_1335 == 0i)) {
              let x_1339 : vec3<f32> = u_xlat4;
              let x_1340 : vec2<f32> = vec2<f32>(x_1339.x, x_1339.z);
              let x_1341 : vec3<f32> = u_xlat10;
              u_xlat10 = vec3<f32>(x_1340.x, x_1341.y, x_1340.y);
              let x_1343 : vec3<f32> = u_xlat10;
              let x_1347 : vec2<f32> = clamp(vec2<f32>(x_1343.x, x_1343.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
              let x_1348 : vec3<f32> = u_xlat10;
              u_xlat10 = vec3<f32>(x_1347.x, x_1348.y, x_1347.y);
              let x_1350 : vec3<f32> = u_xlat10;
              let x_1353 : f32 = x_30.x_RenderViewportScaleFactor;
              let x_1355 : vec2<f32> = (vec2<f32>(x_1350.x, x_1350.z) * vec2<f32>(x_1353, x_1353));
              let x_1356 : vec3<f32> = u_xlat10;
              u_xlat10 = vec3<f32>(x_1355.x, x_1356.y, x_1355.y);
              let x_1361 : vec3<f32> = u_xlat10;
              let x_1363 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_1361.x, x_1361.z), 0.0f);
              u_xlat3.x = x_1363.w;
            }
            let x_1367 : i32 = u_xlati15.y;
            if ((x_1367 == 0i)) {
              let x_1371 : vec3<f32> = u_xlat5;
              let x_1372 : vec2<f32> = vec2<f32>(x_1371.x, x_1371.z);
              let x_1373 : vec3<f32> = u_xlat10;
              u_xlat10 = vec3<f32>(x_1372.x, x_1373.y, x_1372.y);
              let x_1375 : vec3<f32> = u_xlat10;
              let x_1379 : vec2<f32> = clamp(vec2<f32>(x_1375.x, x_1375.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
              let x_1380 : vec3<f32> = u_xlat10;
              u_xlat10 = vec3<f32>(x_1379.x, x_1380.y, x_1379.y);
              let x_1382 : vec3<f32> = u_xlat10;
              let x_1385 : f32 = x_30.x_RenderViewportScaleFactor;
              let x_1387 : vec2<f32> = (vec2<f32>(x_1382.x, x_1382.z) * vec2<f32>(x_1385, x_1385));
              let x_1388 : vec3<f32> = u_xlat10;
              u_xlat10 = vec3<f32>(x_1387.x, x_1388.y, x_1387.y);
              let x_1393 : vec3<f32> = u_xlat10;
              let x_1395 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_1393.x, x_1393.z), 0.0f);
              u_xlat3.y = x_1395.w;
            }
            let x_1398 : f32 = u_xlat12;
            let x_1402 : f32 = u_xlat3.x;
            u_xlat10.x = ((-(x_1398) * 0.5f) + x_1402);
            let x_1406 : i32 = u_xlati15.x;
            if ((x_1406 != 0i)) {
              let x_1412 : f32 = u_xlat3.x;
              x_1408 = x_1412;
            } else {
              let x_1415 : f32 = u_xlat10.x;
              x_1408 = x_1415;
            }
            let x_1416 : f32 = x_1408;
            u_xlat3.x = x_1416;
            let x_1418 : f32 = u_xlat12;
            let x_1422 : f32 = u_xlat3.y;
            u_xlat15.x = ((-(x_1418) * 0.5f) + x_1422);
            let x_1426 : i32 = u_xlati15.y;
            if ((x_1426 != 0i)) {
              let x_1432 : f32 = u_xlat3.y;
              x_1428 = x_1432;
            } else {
              let x_1435 : f32 = u_xlat15.x;
              x_1428 = x_1435;
            }
            let x_1436 : f32 = x_1428;
            u_xlat3.y = x_1436;
            let x_1438 : vec2<f32> = u_xlat3;
            let x_1441 : vec3<f32> = u_xlat2;
            let x_1443 : vec4<bool> = (abs(vec4<f32>(x_1438.x, x_1438.y, x_1438.x, x_1438.y)) >= vec4<f32>(x_1441.x, x_1441.x, x_1441.x, x_1441.x));
            u_xlati15 = bitcast<vec2<i32>>((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_1443.x, x_1443.y)) * vec2<u32>(4294967295u, 4294967295u)));
            let x_1450 : f32 = u_xlat14.x;
            let x_1454 : f32 = u_xlat4.x;
            u_xlat10.x = ((-(x_1450) * 2.0f) + x_1454);
            let x_1458 : i32 = u_xlati15.x;
            if ((x_1458 != 0i)) {
              let x_1464 : f32 = u_xlat4.x;
              x_1460 = x_1464;
            } else {
              let x_1467 : f32 = u_xlat10.x;
              x_1460 = x_1467;
            }
            let x_1468 : f32 = x_1460;
            u_xlat4.x = x_1468;
            let x_1471 : f32 = u_xlat14.y;
            let x_1475 : f32 = u_xlat4.z;
            u_xlat10.x = ((-(x_1471) * 2.0f) + x_1475);
            let x_1479 : i32 = u_xlati15.x;
            if ((x_1479 != 0i)) {
              let x_1485 : f32 = u_xlat4.z;
              x_1481 = x_1485;
            } else {
              let x_1488 : f32 = u_xlat10.x;
              x_1481 = x_1488;
            }
            let x_1489 : f32 = x_1481;
            u_xlat4.z = x_1489;
            let x_1491 : vec2<i32> = u_xlati15;
            let x_1492 : vec2<i32> = ~(x_1491);
            let x_1493 : vec3<i32> = u_xlati10;
            u_xlati10 = vec3<i32>(x_1492.x, x_1493.y, x_1492.y);
            let x_1496 : i32 = u_xlati10.z;
            let x_1499 : i32 = u_xlati10.x;
            u_xlati10.x = bitcast<i32>((bitcast<u32>(x_1496) | bitcast<u32>(x_1499)));
            let x_1505 : f32 = u_xlat14.x;
            let x_1508 : f32 = u_xlat5.x;
            u_xlat22 = ((x_1505 * 2.0f) + x_1508);
            let x_1511 : i32 = u_xlati15.y;
            if ((x_1511 != 0i)) {
              let x_1517 : f32 = u_xlat5.x;
              x_1513 = x_1517;
            } else {
              let x_1519 : f32 = u_xlat22;
              x_1513 = x_1519;
            }
            let x_1520 : f32 = x_1513;
            u_xlat5.x = x_1520;
            let x_1523 : f32 = u_xlat14.y;
            let x_1526 : f32 = u_xlat5.z;
            u_xlat22 = ((x_1523 * 2.0f) + x_1526);
            let x_1529 : i32 = u_xlati15.y;
            if ((x_1529 != 0i)) {
              let x_1535 : f32 = u_xlat5.z;
              x_1531 = x_1535;
            } else {
              let x_1537 : f32 = u_xlat22;
              x_1531 = x_1537;
            }
            let x_1538 : f32 = x_1531;
            u_xlat5.z = x_1538;
            let x_1541 : i32 = u_xlati10.x;
            if ((x_1541 != 0i)) {
              let x_1546 : i32 = u_xlati15.x;
              if ((x_1546 == 0i)) {
                let x_1550 : vec3<f32> = u_xlat4;
                let x_1551 : vec2<f32> = vec2<f32>(x_1550.x, x_1550.z);
                let x_1552 : vec3<f32> = u_xlat10;
                u_xlat10 = vec3<f32>(x_1551.x, x_1552.y, x_1551.y);
                let x_1554 : vec3<f32> = u_xlat10;
                let x_1558 : vec2<f32> = clamp(vec2<f32>(x_1554.x, x_1554.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
                let x_1559 : vec3<f32> = u_xlat10;
                u_xlat10 = vec3<f32>(x_1558.x, x_1559.y, x_1558.y);
                let x_1561 : vec3<f32> = u_xlat10;
                let x_1564 : f32 = x_30.x_RenderViewportScaleFactor;
                let x_1566 : vec2<f32> = (vec2<f32>(x_1561.x, x_1561.z) * vec2<f32>(x_1564, x_1564));
                let x_1567 : vec3<f32> = u_xlat10;
                u_xlat10 = vec3<f32>(x_1566.x, x_1567.y, x_1566.y);
                let x_1572 : vec3<f32> = u_xlat10;
                let x_1574 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_1572.x, x_1572.z), 0.0f);
                u_xlat3.x = x_1574.w;
              }
              let x_1578 : i32 = u_xlati15.y;
              if ((x_1578 == 0i)) {
                let x_1582 : vec3<f32> = u_xlat5;
                let x_1583 : vec2<f32> = vec2<f32>(x_1582.x, x_1582.z);
                let x_1584 : vec3<f32> = u_xlat10;
                u_xlat10 = vec3<f32>(x_1583.x, x_1584.y, x_1583.y);
                let x_1586 : vec3<f32> = u_xlat10;
                let x_1590 : vec2<f32> = clamp(vec2<f32>(x_1586.x, x_1586.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
                let x_1591 : vec3<f32> = u_xlat10;
                u_xlat10 = vec3<f32>(x_1590.x, x_1591.y, x_1590.y);
                let x_1593 : vec3<f32> = u_xlat10;
                let x_1596 : f32 = x_30.x_RenderViewportScaleFactor;
                let x_1598 : vec2<f32> = (vec2<f32>(x_1593.x, x_1593.z) * vec2<f32>(x_1596, x_1596));
                let x_1599 : vec3<f32> = u_xlat10;
                u_xlat10 = vec3<f32>(x_1598.x, x_1599.y, x_1598.y);
                let x_1604 : vec3<f32> = u_xlat10;
                let x_1606 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_1604.x, x_1604.z), 0.0f);
                u_xlat3.y = x_1606.w;
              }
              let x_1609 : f32 = u_xlat12;
              let x_1613 : f32 = u_xlat3.x;
              u_xlat10.x = ((-(x_1609) * 0.5f) + x_1613);
              let x_1617 : i32 = u_xlati15.x;
              if ((x_1617 != 0i)) {
                let x_1623 : f32 = u_xlat3.x;
                x_1619 = x_1623;
              } else {
                let x_1626 : f32 = u_xlat10.x;
                x_1619 = x_1626;
              }
              let x_1627 : f32 = x_1619;
              u_xlat3.x = x_1627;
              let x_1629 : f32 = u_xlat12;
              let x_1633 : f32 = u_xlat3.y;
              u_xlat15.x = ((-(x_1629) * 0.5f) + x_1633);
              let x_1637 : i32 = u_xlati15.y;
              if ((x_1637 != 0i)) {
                let x_1643 : f32 = u_xlat3.y;
                x_1639 = x_1643;
              } else {
                let x_1646 : f32 = u_xlat15.x;
                x_1639 = x_1646;
              }
              let x_1647 : f32 = x_1639;
              u_xlat3.y = x_1647;
              let x_1649 : vec2<f32> = u_xlat3;
              let x_1652 : vec3<f32> = u_xlat2;
              let x_1654 : vec4<bool> = (abs(vec4<f32>(x_1649.x, x_1649.y, x_1649.x, x_1649.y)) >= vec4<f32>(x_1652.x, x_1652.x, x_1652.x, x_1652.x));
              u_xlati15 = bitcast<vec2<i32>>((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_1654.x, x_1654.y)) * vec2<u32>(4294967295u, 4294967295u)));
              let x_1661 : f32 = u_xlat14.x;
              let x_1665 : f32 = u_xlat4.x;
              u_xlat10.x = ((-(x_1661) * 2.0f) + x_1665);
              let x_1669 : i32 = u_xlati15.x;
              if ((x_1669 != 0i)) {
                let x_1675 : f32 = u_xlat4.x;
                x_1671 = x_1675;
              } else {
                let x_1678 : f32 = u_xlat10.x;
                x_1671 = x_1678;
              }
              let x_1679 : f32 = x_1671;
              u_xlat4.x = x_1679;
              let x_1682 : f32 = u_xlat14.y;
              let x_1686 : f32 = u_xlat4.z;
              u_xlat10.x = ((-(x_1682) * 2.0f) + x_1686);
              let x_1690 : i32 = u_xlati15.x;
              if ((x_1690 != 0i)) {
                let x_1696 : f32 = u_xlat4.z;
                x_1692 = x_1696;
              } else {
                let x_1699 : f32 = u_xlat10.x;
                x_1692 = x_1699;
              }
              let x_1700 : f32 = x_1692;
              u_xlat4.z = x_1700;
              let x_1702 : vec2<i32> = u_xlati15;
              let x_1703 : vec2<i32> = ~(x_1702);
              let x_1704 : vec3<i32> = u_xlati10;
              u_xlati10 = vec3<i32>(x_1703.x, x_1704.y, x_1703.y);
              let x_1707 : i32 = u_xlati10.z;
              let x_1710 : i32 = u_xlati10.x;
              u_xlati10.x = bitcast<i32>((bitcast<u32>(x_1707) | bitcast<u32>(x_1710)));
              let x_1716 : f32 = u_xlat14.x;
              let x_1719 : f32 = u_xlat5.x;
              u_xlat22 = ((x_1716 * 2.0f) + x_1719);
              let x_1722 : i32 = u_xlati15.y;
              if ((x_1722 != 0i)) {
                let x_1728 : f32 = u_xlat5.x;
                x_1724 = x_1728;
              } else {
                let x_1730 : f32 = u_xlat22;
                x_1724 = x_1730;
              }
              let x_1731 : f32 = x_1724;
              u_xlat5.x = x_1731;
              let x_1734 : f32 = u_xlat14.y;
              let x_1737 : f32 = u_xlat5.z;
              u_xlat22 = ((x_1734 * 2.0f) + x_1737);
              let x_1740 : i32 = u_xlati15.y;
              if ((x_1740 != 0i)) {
                let x_1746 : f32 = u_xlat5.z;
                x_1742 = x_1746;
              } else {
                let x_1748 : f32 = u_xlat22;
                x_1742 = x_1748;
              }
              let x_1749 : f32 = x_1742;
              u_xlat5.z = x_1749;
              let x_1752 : i32 = u_xlati10.x;
              if ((x_1752 != 0i)) {
                let x_1757 : i32 = u_xlati15.x;
                if ((x_1757 == 0i)) {
                  let x_1761 : vec3<f32> = u_xlat4;
                  let x_1762 : vec2<f32> = vec2<f32>(x_1761.x, x_1761.z);
                  let x_1763 : vec3<f32> = u_xlat10;
                  u_xlat10 = vec3<f32>(x_1762.x, x_1763.y, x_1762.y);
                  let x_1765 : vec3<f32> = u_xlat10;
                  let x_1769 : vec2<f32> = clamp(vec2<f32>(x_1765.x, x_1765.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
                  let x_1770 : vec3<f32> = u_xlat10;
                  u_xlat10 = vec3<f32>(x_1769.x, x_1770.y, x_1769.y);
                  let x_1772 : vec3<f32> = u_xlat10;
                  let x_1775 : f32 = x_30.x_RenderViewportScaleFactor;
                  let x_1777 : vec2<f32> = (vec2<f32>(x_1772.x, x_1772.z) * vec2<f32>(x_1775, x_1775));
                  let x_1778 : vec3<f32> = u_xlat10;
                  u_xlat10 = vec3<f32>(x_1777.x, x_1778.y, x_1777.y);
                  let x_1783 : vec3<f32> = u_xlat10;
                  let x_1785 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_1783.x, x_1783.z), 0.0f);
                  u_xlat3.x = x_1785.w;
                }
                let x_1789 : i32 = u_xlati15.y;
                if ((x_1789 == 0i)) {
                  let x_1793 : vec3<f32> = u_xlat5;
                  let x_1794 : vec2<f32> = vec2<f32>(x_1793.x, x_1793.z);
                  let x_1795 : vec3<f32> = u_xlat10;
                  u_xlat10 = vec3<f32>(x_1794.x, x_1795.y, x_1794.y);
                  let x_1797 : vec3<f32> = u_xlat10;
                  let x_1801 : vec2<f32> = clamp(vec2<f32>(x_1797.x, x_1797.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
                  let x_1802 : vec3<f32> = u_xlat10;
                  u_xlat10 = vec3<f32>(x_1801.x, x_1802.y, x_1801.y);
                  let x_1804 : vec3<f32> = u_xlat10;
                  let x_1807 : f32 = x_30.x_RenderViewportScaleFactor;
                  let x_1809 : vec2<f32> = (vec2<f32>(x_1804.x, x_1804.z) * vec2<f32>(x_1807, x_1807));
                  let x_1810 : vec3<f32> = u_xlat10;
                  u_xlat10 = vec3<f32>(x_1809.x, x_1810.y, x_1809.y);
                  let x_1815 : vec3<f32> = u_xlat10;
                  let x_1817 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_1815.x, x_1815.z), 0.0f);
                  u_xlat3.y = x_1817.w;
                }
                let x_1820 : f32 = u_xlat12;
                let x_1824 : f32 = u_xlat3.x;
                u_xlat10.x = ((-(x_1820) * 0.5f) + x_1824);
                let x_1828 : i32 = u_xlati15.x;
                if ((x_1828 != 0i)) {
                  let x_1834 : f32 = u_xlat3.x;
                  x_1830 = x_1834;
                } else {
                  let x_1837 : f32 = u_xlat10.x;
                  x_1830 = x_1837;
                }
                let x_1838 : f32 = x_1830;
                u_xlat3.x = x_1838;
                let x_1840 : f32 = u_xlat12;
                let x_1844 : f32 = u_xlat3.y;
                u_xlat15.x = ((-(x_1840) * 0.5f) + x_1844);
                let x_1848 : i32 = u_xlati15.y;
                if ((x_1848 != 0i)) {
                  let x_1854 : f32 = u_xlat3.y;
                  x_1850 = x_1854;
                } else {
                  let x_1857 : f32 = u_xlat15.x;
                  x_1850 = x_1857;
                }
                let x_1858 : f32 = x_1850;
                u_xlat3.y = x_1858;
                let x_1860 : vec2<f32> = u_xlat3;
                let x_1863 : vec3<f32> = u_xlat2;
                let x_1865 : vec4<bool> = (abs(vec4<f32>(x_1860.x, x_1860.y, x_1860.x, x_1860.y)) >= vec4<f32>(x_1863.x, x_1863.x, x_1863.x, x_1863.x));
                u_xlati15 = bitcast<vec2<i32>>((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_1865.x, x_1865.y)) * vec2<u32>(4294967295u, 4294967295u)));
                let x_1872 : f32 = u_xlat14.x;
                let x_1876 : f32 = u_xlat4.x;
                u_xlat10.x = ((-(x_1872) * 2.0f) + x_1876);
                let x_1880 : i32 = u_xlati15.x;
                if ((x_1880 != 0i)) {
                  let x_1886 : f32 = u_xlat4.x;
                  x_1882 = x_1886;
                } else {
                  let x_1889 : f32 = u_xlat10.x;
                  x_1882 = x_1889;
                }
                let x_1890 : f32 = x_1882;
                u_xlat4.x = x_1890;
                let x_1893 : f32 = u_xlat14.y;
                let x_1897 : f32 = u_xlat4.z;
                u_xlat10.x = ((-(x_1893) * 2.0f) + x_1897);
                let x_1901 : i32 = u_xlati15.x;
                if ((x_1901 != 0i)) {
                  let x_1907 : f32 = u_xlat4.z;
                  x_1903 = x_1907;
                } else {
                  let x_1910 : f32 = u_xlat10.x;
                  x_1903 = x_1910;
                }
                let x_1911 : f32 = x_1903;
                u_xlat4.z = x_1911;
                let x_1913 : vec2<i32> = u_xlati15;
                let x_1914 : vec2<i32> = ~(x_1913);
                let x_1915 : vec3<i32> = u_xlati10;
                u_xlati10 = vec3<i32>(x_1914.x, x_1915.y, x_1914.y);
                let x_1918 : i32 = u_xlati10.z;
                let x_1921 : i32 = u_xlati10.x;
                u_xlati10.x = bitcast<i32>((bitcast<u32>(x_1918) | bitcast<u32>(x_1921)));
                let x_1927 : f32 = u_xlat14.x;
                let x_1930 : f32 = u_xlat5.x;
                u_xlat22 = ((x_1927 * 2.0f) + x_1930);
                let x_1933 : i32 = u_xlati15.y;
                if ((x_1933 != 0i)) {
                  let x_1939 : f32 = u_xlat5.x;
                  x_1935 = x_1939;
                } else {
                  let x_1941 : f32 = u_xlat22;
                  x_1935 = x_1941;
                }
                let x_1942 : f32 = x_1935;
                u_xlat5.x = x_1942;
                let x_1945 : f32 = u_xlat14.y;
                let x_1948 : f32 = u_xlat5.z;
                u_xlat22 = ((x_1945 * 2.0f) + x_1948);
                let x_1951 : i32 = u_xlati15.y;
                if ((x_1951 != 0i)) {
                  let x_1957 : f32 = u_xlat5.z;
                  x_1953 = x_1957;
                } else {
                  let x_1959 : f32 = u_xlat22;
                  x_1953 = x_1959;
                }
                let x_1960 : f32 = x_1953;
                u_xlat5.z = x_1960;
                let x_1963 : i32 = u_xlati10.x;
                if ((x_1963 != 0i)) {
                  let x_1968 : i32 = u_xlati15.x;
                  if ((x_1968 == 0i)) {
                    let x_1972 : vec3<f32> = u_xlat4;
                    let x_1973 : vec2<f32> = vec2<f32>(x_1972.x, x_1972.z);
                    let x_1974 : vec3<f32> = u_xlat10;
                    u_xlat10 = vec3<f32>(x_1973.x, x_1974.y, x_1973.y);
                    let x_1976 : vec3<f32> = u_xlat10;
                    let x_1980 : vec2<f32> = clamp(vec2<f32>(x_1976.x, x_1976.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
                    let x_1981 : vec3<f32> = u_xlat10;
                    u_xlat10 = vec3<f32>(x_1980.x, x_1981.y, x_1980.y);
                    let x_1983 : vec3<f32> = u_xlat10;
                    let x_1986 : f32 = x_30.x_RenderViewportScaleFactor;
                    let x_1988 : vec2<f32> = (vec2<f32>(x_1983.x, x_1983.z) * vec2<f32>(x_1986, x_1986));
                    let x_1989 : vec3<f32> = u_xlat10;
                    u_xlat10 = vec3<f32>(x_1988.x, x_1989.y, x_1988.y);
                    let x_1994 : vec3<f32> = u_xlat10;
                    let x_1996 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_1994.x, x_1994.z), 0.0f);
                    u_xlat3.x = x_1996.w;
                  }
                  let x_2000 : i32 = u_xlati15.y;
                  if ((x_2000 == 0i)) {
                    let x_2004 : vec3<f32> = u_xlat5;
                    let x_2005 : vec2<f32> = vec2<f32>(x_2004.x, x_2004.z);
                    let x_2006 : vec3<f32> = u_xlat10;
                    u_xlat10 = vec3<f32>(x_2005.x, x_2006.y, x_2005.y);
                    let x_2008 : vec3<f32> = u_xlat10;
                    let x_2012 : vec2<f32> = clamp(vec2<f32>(x_2008.x, x_2008.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
                    let x_2013 : vec3<f32> = u_xlat10;
                    u_xlat10 = vec3<f32>(x_2012.x, x_2013.y, x_2012.y);
                    let x_2015 : vec3<f32> = u_xlat10;
                    let x_2018 : f32 = x_30.x_RenderViewportScaleFactor;
                    let x_2020 : vec2<f32> = (vec2<f32>(x_2015.x, x_2015.z) * vec2<f32>(x_2018, x_2018));
                    let x_2021 : vec3<f32> = u_xlat10;
                    u_xlat10 = vec3<f32>(x_2020.x, x_2021.y, x_2020.y);
                    let x_2026 : vec3<f32> = u_xlat10;
                    let x_2028 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_2026.x, x_2026.z), 0.0f);
                    u_xlat3.y = x_2028.w;
                  }
                  let x_2031 : f32 = u_xlat12;
                  let x_2035 : f32 = u_xlat3.x;
                  u_xlat10.x = ((-(x_2031) * 0.5f) + x_2035);
                  let x_2039 : i32 = u_xlati15.x;
                  if ((x_2039 != 0i)) {
                    let x_2045 : f32 = u_xlat3.x;
                    x_2041 = x_2045;
                  } else {
                    let x_2048 : f32 = u_xlat10.x;
                    x_2041 = x_2048;
                  }
                  let x_2049 : f32 = x_2041;
                  u_xlat3.x = x_2049;
                  let x_2051 : f32 = u_xlat12;
                  let x_2055 : f32 = u_xlat3.y;
                  u_xlat15.x = ((-(x_2051) * 0.5f) + x_2055);
                  let x_2059 : i32 = u_xlati15.y;
                  if ((x_2059 != 0i)) {
                    let x_2065 : f32 = u_xlat3.y;
                    x_2061 = x_2065;
                  } else {
                    let x_2068 : f32 = u_xlat15.x;
                    x_2061 = x_2068;
                  }
                  let x_2069 : f32 = x_2061;
                  u_xlat3.y = x_2069;
                  let x_2071 : vec2<f32> = u_xlat3;
                  let x_2074 : vec3<f32> = u_xlat2;
                  let x_2076 : vec4<bool> = (abs(vec4<f32>(x_2071.x, x_2071.y, x_2071.x, x_2071.y)) >= vec4<f32>(x_2074.x, x_2074.x, x_2074.x, x_2074.x));
                  u_xlati15 = bitcast<vec2<i32>>((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_2076.x, x_2076.y)) * vec2<u32>(4294967295u, 4294967295u)));
                  let x_2083 : f32 = u_xlat14.x;
                  let x_2087 : f32 = u_xlat4.x;
                  u_xlat10.x = ((-(x_2083) * 2.0f) + x_2087);
                  let x_2091 : i32 = u_xlati15.x;
                  if ((x_2091 != 0i)) {
                    let x_2097 : f32 = u_xlat4.x;
                    x_2093 = x_2097;
                  } else {
                    let x_2100 : f32 = u_xlat10.x;
                    x_2093 = x_2100;
                  }
                  let x_2101 : f32 = x_2093;
                  u_xlat4.x = x_2101;
                  let x_2104 : f32 = u_xlat14.y;
                  let x_2108 : f32 = u_xlat4.z;
                  u_xlat10.x = ((-(x_2104) * 2.0f) + x_2108);
                  let x_2112 : i32 = u_xlati15.x;
                  if ((x_2112 != 0i)) {
                    let x_2118 : f32 = u_xlat4.z;
                    x_2114 = x_2118;
                  } else {
                    let x_2121 : f32 = u_xlat10.x;
                    x_2114 = x_2121;
                  }
                  let x_2122 : f32 = x_2114;
                  u_xlat4.z = x_2122;
                  let x_2124 : vec2<i32> = u_xlati15;
                  let x_2125 : vec2<i32> = ~(x_2124);
                  let x_2126 : vec3<i32> = u_xlati10;
                  u_xlati10 = vec3<i32>(x_2125.x, x_2126.y, x_2125.y);
                  let x_2129 : i32 = u_xlati10.z;
                  let x_2132 : i32 = u_xlati10.x;
                  u_xlati10.x = bitcast<i32>((bitcast<u32>(x_2129) | bitcast<u32>(x_2132)));
                  let x_2138 : f32 = u_xlat14.x;
                  let x_2141 : f32 = u_xlat5.x;
                  u_xlat22 = ((x_2138 * 2.0f) + x_2141);
                  let x_2144 : i32 = u_xlati15.y;
                  if ((x_2144 != 0i)) {
                    let x_2150 : f32 = u_xlat5.x;
                    x_2146 = x_2150;
                  } else {
                    let x_2152 : f32 = u_xlat22;
                    x_2146 = x_2152;
                  }
                  let x_2153 : f32 = x_2146;
                  u_xlat5.x = x_2153;
                  let x_2156 : f32 = u_xlat14.y;
                  let x_2159 : f32 = u_xlat5.z;
                  u_xlat22 = ((x_2156 * 2.0f) + x_2159);
                  let x_2162 : i32 = u_xlati15.y;
                  if ((x_2162 != 0i)) {
                    let x_2168 : f32 = u_xlat5.z;
                    x_2164 = x_2168;
                  } else {
                    let x_2170 : f32 = u_xlat22;
                    x_2164 = x_2170;
                  }
                  let x_2171 : f32 = x_2164;
                  u_xlat5.z = x_2171;
                  let x_2174 : i32 = u_xlati10.x;
                  if ((x_2174 != 0i)) {
                    let x_2179 : i32 = u_xlati15.x;
                    if ((x_2179 == 0i)) {
                      let x_2183 : vec3<f32> = u_xlat4;
                      let x_2184 : vec2<f32> = vec2<f32>(x_2183.x, x_2183.z);
                      let x_2185 : vec3<f32> = u_xlat10;
                      u_xlat10 = vec3<f32>(x_2184.x, x_2185.y, x_2184.y);
                      let x_2187 : vec3<f32> = u_xlat10;
                      let x_2191 : vec2<f32> = clamp(vec2<f32>(x_2187.x, x_2187.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
                      let x_2192 : vec3<f32> = u_xlat10;
                      u_xlat10 = vec3<f32>(x_2191.x, x_2192.y, x_2191.y);
                      let x_2194 : vec3<f32> = u_xlat10;
                      let x_2197 : f32 = x_30.x_RenderViewportScaleFactor;
                      let x_2199 : vec2<f32> = (vec2<f32>(x_2194.x, x_2194.z) * vec2<f32>(x_2197, x_2197));
                      let x_2200 : vec3<f32> = u_xlat10;
                      u_xlat10 = vec3<f32>(x_2199.x, x_2200.y, x_2199.y);
                      let x_2205 : vec3<f32> = u_xlat10;
                      let x_2207 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_2205.x, x_2205.z), 0.0f);
                      u_xlat3.x = x_2207.w;
                    }
                    let x_2211 : i32 = u_xlati15.y;
                    if ((x_2211 == 0i)) {
                      let x_2215 : vec3<f32> = u_xlat5;
                      let x_2216 : vec2<f32> = vec2<f32>(x_2215.x, x_2215.z);
                      let x_2217 : vec3<f32> = u_xlat10;
                      u_xlat10 = vec3<f32>(x_2216.x, x_2217.y, x_2216.y);
                      let x_2219 : vec3<f32> = u_xlat10;
                      let x_2223 : vec2<f32> = clamp(vec2<f32>(x_2219.x, x_2219.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
                      let x_2224 : vec3<f32> = u_xlat10;
                      u_xlat10 = vec3<f32>(x_2223.x, x_2224.y, x_2223.y);
                      let x_2226 : vec3<f32> = u_xlat10;
                      let x_2229 : f32 = x_30.x_RenderViewportScaleFactor;
                      let x_2231 : vec2<f32> = (vec2<f32>(x_2226.x, x_2226.z) * vec2<f32>(x_2229, x_2229));
                      let x_2232 : vec3<f32> = u_xlat10;
                      u_xlat10 = vec3<f32>(x_2231.x, x_2232.y, x_2231.y);
                      let x_2237 : vec3<f32> = u_xlat10;
                      let x_2239 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_2237.x, x_2237.z), 0.0f);
                      u_xlat3.y = x_2239.w;
                    }
                    let x_2242 : f32 = u_xlat12;
                    let x_2246 : f32 = u_xlat3.x;
                    u_xlat10.x = ((-(x_2242) * 0.5f) + x_2246);
                    let x_2250 : i32 = u_xlati15.x;
                    if ((x_2250 != 0i)) {
                      let x_2256 : f32 = u_xlat3.x;
                      x_2252 = x_2256;
                    } else {
                      let x_2259 : f32 = u_xlat10.x;
                      x_2252 = x_2259;
                    }
                    let x_2260 : f32 = x_2252;
                    u_xlat3.x = x_2260;
                    let x_2262 : f32 = u_xlat12;
                    let x_2266 : f32 = u_xlat3.y;
                    u_xlat15.x = ((-(x_2262) * 0.5f) + x_2266);
                    let x_2270 : i32 = u_xlati15.y;
                    if ((x_2270 != 0i)) {
                      let x_2276 : f32 = u_xlat3.y;
                      x_2272 = x_2276;
                    } else {
                      let x_2279 : f32 = u_xlat15.x;
                      x_2272 = x_2279;
                    }
                    let x_2280 : f32 = x_2272;
                    u_xlat3.y = x_2280;
                    let x_2282 : vec2<f32> = u_xlat3;
                    let x_2285 : vec3<f32> = u_xlat2;
                    let x_2287 : vec4<bool> = (abs(vec4<f32>(x_2282.x, x_2282.y, x_2282.x, x_2282.y)) >= vec4<f32>(x_2285.x, x_2285.x, x_2285.x, x_2285.x));
                    u_xlati15 = bitcast<vec2<i32>>((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_2287.x, x_2287.y)) * vec2<u32>(4294967295u, 4294967295u)));
                    let x_2294 : f32 = u_xlat14.x;
                    let x_2299 : f32 = u_xlat4.x;
                    u_xlat10.x = ((-(x_2294) * 4.0f) + x_2299);
                    let x_2303 : i32 = u_xlati15.x;
                    if ((x_2303 != 0i)) {
                      let x_2309 : f32 = u_xlat4.x;
                      x_2305 = x_2309;
                    } else {
                      let x_2312 : f32 = u_xlat10.x;
                      x_2305 = x_2312;
                    }
                    let x_2313 : f32 = x_2305;
                    u_xlat4.x = x_2313;
                    let x_2316 : f32 = u_xlat14.y;
                    let x_2320 : f32 = u_xlat4.z;
                    u_xlat10.x = ((-(x_2316) * 4.0f) + x_2320);
                    let x_2324 : i32 = u_xlati15.x;
                    if ((x_2324 != 0i)) {
                      let x_2330 : f32 = u_xlat4.z;
                      x_2326 = x_2330;
                    } else {
                      let x_2333 : f32 = u_xlat10.x;
                      x_2326 = x_2333;
                    }
                    let x_2334 : f32 = x_2326;
                    u_xlat4.z = x_2334;
                    let x_2336 : vec2<i32> = u_xlati15;
                    let x_2337 : vec2<i32> = ~(x_2336);
                    let x_2338 : vec3<i32> = u_xlati10;
                    u_xlati10 = vec3<i32>(x_2337.x, x_2338.y, x_2337.y);
                    let x_2341 : i32 = u_xlati10.z;
                    let x_2344 : i32 = u_xlati10.x;
                    u_xlati10.x = bitcast<i32>((bitcast<u32>(x_2341) | bitcast<u32>(x_2344)));
                    let x_2350 : f32 = u_xlat14.x;
                    let x_2353 : f32 = u_xlat5.x;
                    u_xlat22 = ((x_2350 * 4.0f) + x_2353);
                    let x_2356 : i32 = u_xlati15.y;
                    if ((x_2356 != 0i)) {
                      let x_2362 : f32 = u_xlat5.x;
                      x_2358 = x_2362;
                    } else {
                      let x_2364 : f32 = u_xlat22;
                      x_2358 = x_2364;
                    }
                    let x_2365 : f32 = x_2358;
                    u_xlat5.x = x_2365;
                    let x_2368 : f32 = u_xlat14.y;
                    let x_2371 : f32 = u_xlat5.z;
                    u_xlat22 = ((x_2368 * 4.0f) + x_2371);
                    let x_2374 : i32 = u_xlati15.y;
                    if ((x_2374 != 0i)) {
                      let x_2380 : f32 = u_xlat5.z;
                      x_2376 = x_2380;
                    } else {
                      let x_2382 : f32 = u_xlat22;
                      x_2376 = x_2382;
                    }
                    let x_2383 : f32 = x_2376;
                    u_xlat5.z = x_2383;
                    let x_2386 : i32 = u_xlati10.x;
                    if ((x_2386 != 0i)) {
                      let x_2391 : i32 = u_xlati15.x;
                      if ((x_2391 == 0i)) {
                        let x_2395 : vec3<f32> = u_xlat4;
                        let x_2396 : vec2<f32> = vec2<f32>(x_2395.x, x_2395.z);
                        let x_2397 : vec3<f32> = u_xlat10;
                        u_xlat10 = vec3<f32>(x_2396.x, x_2397.y, x_2396.y);
                        let x_2399 : vec3<f32> = u_xlat10;
                        let x_2403 : vec2<f32> = clamp(vec2<f32>(x_2399.x, x_2399.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
                        let x_2404 : vec3<f32> = u_xlat10;
                        u_xlat10 = vec3<f32>(x_2403.x, x_2404.y, x_2403.y);
                        let x_2406 : vec3<f32> = u_xlat10;
                        let x_2409 : f32 = x_30.x_RenderViewportScaleFactor;
                        let x_2411 : vec2<f32> = (vec2<f32>(x_2406.x, x_2406.z) * vec2<f32>(x_2409, x_2409));
                        let x_2412 : vec3<f32> = u_xlat10;
                        u_xlat10 = vec3<f32>(x_2411.x, x_2412.y, x_2411.y);
                        let x_2417 : vec3<f32> = u_xlat10;
                        let x_2419 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_2417.x, x_2417.z), 0.0f);
                        u_xlat3.x = x_2419.w;
                      }
                      let x_2423 : i32 = u_xlati15.y;
                      if ((x_2423 == 0i)) {
                        let x_2427 : vec3<f32> = u_xlat5;
                        let x_2428 : vec2<f32> = vec2<f32>(x_2427.x, x_2427.z);
                        let x_2429 : vec3<f32> = u_xlat10;
                        u_xlat10 = vec3<f32>(x_2428.x, x_2429.y, x_2428.y);
                        let x_2431 : vec3<f32> = u_xlat10;
                        let x_2435 : vec2<f32> = clamp(vec2<f32>(x_2431.x, x_2431.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
                        let x_2436 : vec3<f32> = u_xlat10;
                        u_xlat10 = vec3<f32>(x_2435.x, x_2436.y, x_2435.y);
                        let x_2438 : vec3<f32> = u_xlat10;
                        let x_2441 : f32 = x_30.x_RenderViewportScaleFactor;
                        let x_2443 : vec2<f32> = (vec2<f32>(x_2438.x, x_2438.z) * vec2<f32>(x_2441, x_2441));
                        let x_2444 : vec3<f32> = u_xlat10;
                        u_xlat10 = vec3<f32>(x_2443.x, x_2444.y, x_2443.y);
                        let x_2449 : vec3<f32> = u_xlat10;
                        let x_2451 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_2449.x, x_2449.z), 0.0f);
                        u_xlat3.y = x_2451.w;
                      }
                      let x_2454 : f32 = u_xlat12;
                      let x_2458 : f32 = u_xlat3.x;
                      u_xlat10.x = ((-(x_2454) * 0.5f) + x_2458);
                      let x_2462 : i32 = u_xlati15.x;
                      if ((x_2462 != 0i)) {
                        let x_2468 : f32 = u_xlat3.x;
                        x_2464 = x_2468;
                      } else {
                        let x_2471 : f32 = u_xlat10.x;
                        x_2464 = x_2471;
                      }
                      let x_2472 : f32 = x_2464;
                      u_xlat3.x = x_2472;
                      let x_2474 : f32 = u_xlat12;
                      let x_2478 : f32 = u_xlat3.y;
                      u_xlat12 = ((-(x_2474) * 0.5f) + x_2478);
                      let x_2481 : i32 = u_xlati15.y;
                      if ((x_2481 != 0i)) {
                        let x_2487 : f32 = u_xlat3.y;
                        x_2483 = x_2487;
                      } else {
                        let x_2489 : f32 = u_xlat12;
                        x_2483 = x_2489;
                      }
                      let x_2490 : f32 = x_2483;
                      u_xlat3.y = x_2490;
                      let x_2494 : vec2<f32> = u_xlat3;
                      let x_2497 : vec3<f32> = u_xlat2;
                      let x_2499 : vec4<bool> = (abs(vec4<f32>(x_2494.x, x_2494.y, x_2494.x, x_2494.y)) >= vec4<f32>(x_2497.x, x_2497.x, x_2497.x, x_2497.x));
                      u_xlatb15 = vec2<bool>(x_2499.x, x_2499.y);
                      let x_2502 : f32 = u_xlat14.x;
                      let x_2507 : f32 = u_xlat4.x;
                      u_xlat12 = ((-(x_2502) * 8.0f) + x_2507);
                      let x_2510 : bool = u_xlatb15.x;
                      if (x_2510) {
                        let x_2515 : f32 = u_xlat4.x;
                        x_2511 = x_2515;
                      } else {
                        let x_2517 : f32 = u_xlat12;
                        x_2511 = x_2517;
                      }
                      let x_2518 : f32 = x_2511;
                      u_xlat4.x = x_2518;
                      let x_2521 : f32 = u_xlat14.y;
                      let x_2525 : f32 = u_xlat4.z;
                      u_xlat12 = ((-(x_2521) * 8.0f) + x_2525);
                      let x_2528 : bool = u_xlatb15.x;
                      if (x_2528) {
                        let x_2533 : f32 = u_xlat4.z;
                        x_2529 = x_2533;
                      } else {
                        let x_2535 : f32 = u_xlat12;
                        x_2529 = x_2535;
                      }
                      let x_2536 : f32 = x_2529;
                      u_xlat4.z = x_2536;
                      let x_2539 : f32 = u_xlat14.x;
                      let x_2542 : f32 = u_xlat5.x;
                      u_xlat12 = ((x_2539 * 8.0f) + x_2542);
                      let x_2545 : bool = u_xlatb15.y;
                      if (x_2545) {
                        let x_2550 : f32 = u_xlat5.x;
                        x_2546 = x_2550;
                      } else {
                        let x_2552 : f32 = u_xlat12;
                        x_2546 = x_2552;
                      }
                      let x_2553 : f32 = x_2546;
                      u_xlat5.x = x_2553;
                      let x_2556 : f32 = u_xlat14.y;
                      let x_2559 : f32 = u_xlat5.z;
                      u_xlat12 = ((x_2556 * 8.0f) + x_2559);
                      let x_2562 : bool = u_xlatb15.y;
                      if (x_2562) {
                        let x_2567 : f32 = u_xlat5.z;
                        x_2563 = x_2567;
                      } else {
                        let x_2569 : f32 = u_xlat12;
                        x_2563 = x_2569;
                      }
                      let x_2570 : f32 = x_2563;
                      u_xlat5.z = x_2570;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
    let x_2573 : f32 = u_xlat4.x;
    let x_2576 : f32 = vs_TEXCOORD0.x;
    u_xlat12 = (-(x_2573) + x_2576);
    let x_2579 : f32 = u_xlat4.z;
    let x_2582 : f32 = vs_TEXCOORD0.y;
    u_xlat14.x = (-(x_2579) + x_2582);
    let x_2586 : bool = u_xlatb0.x;
    if (x_2586) {
      let x_2590 : f32 = u_xlat12;
      x_2587 = x_2590;
    } else {
      let x_2593 : f32 = u_xlat14.x;
      x_2587 = x_2593;
    }
    let x_2594 : f32 = x_2587;
    u_xlat12 = x_2594;
    let x_2595 : vec3<f32> = u_xlat5;
    let x_2597 : vec2<f32> = vs_TEXCOORD0;
    let x_2599 : vec2<f32> = (vec2<f32>(x_2595.x, x_2595.z) + -(x_2597));
    let x_2600 : vec3<f32> = u_xlat2;
    u_xlat2 = vec3<f32>(x_2599.x, x_2600.y, x_2599.y);
    let x_2603 : bool = u_xlatb0.x;
    if (x_2603) {
      let x_2608 : f32 = u_xlat2.x;
      x_2604 = x_2608;
    } else {
      let x_2611 : f32 = u_xlat2.z;
      x_2604 = x_2611;
    }
    let x_2612 : f32 = x_2604;
    u_xlat2.x = x_2612;
    let x_2615 : vec2<f32> = u_xlat3;
    let x_2618 : vec4<bool> = (vec4<f32>(x_2615.x, x_2615.y, x_2615.x, x_2615.y) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
    u_xlati14 = bitcast<vec2<i32>>((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_2618.x, x_2618.y)) * vec2<u32>(4294967295u, 4294967295u)));
    let x_2624 : f32 = u_xlat12;
    let x_2626 : f32 = u_xlat2.x;
    u_xlat3.x = (x_2624 + x_2626);
    let x_2630 : i32 = u_xlati8;
    let x_2633 : vec2<i32> = u_xlati14;
    let x_2635 : vec4<bool> = (vec4<i32>(x_2630, x_2630, x_2630, x_2630) != vec4<i32>(x_2633.x, x_2633.y, x_2633.x, x_2633.x));
    u_xlatb8 = vec2<bool>(x_2635.x, x_2635.y);
    let x_2638 : f32 = u_xlat3.x;
    u_xlat20 = (1.0f / x_2638);
    let x_2640 : f32 = u_xlat12;
    let x_2642 : f32 = u_xlat2.x;
    u_xlatb3 = (x_2640 < x_2642);
    let x_2644 : f32 = u_xlat12;
    let x_2646 : f32 = u_xlat2.x;
    u_xlat12 = min(x_2644, x_2646);
    let x_2649 : bool = u_xlatb3;
    if (x_2649) {
      let x_2655 : bool = u_xlatb8.x;
      x_2651 = x_2655;
    } else {
      let x_2658 : bool = u_xlatb8.y;
      x_2651 = x_2658;
    }
    let x_2659 : bool = x_2651;
    u_xlatb2 = x_2659;
    let x_2661 : f32 = u_xlat6.x;
    let x_2663 : f32 = u_xlat6.x;
    u_xlat6.x = (x_2661 * x_2663);
    let x_2666 : f32 = u_xlat12;
    let x_2667 : f32 = u_xlat20;
    u_xlat12 = ((x_2666 * -(x_2667)) + 0.5f);
    let x_2671 : bool = u_xlatb2;
    let x_2672 : f32 = u_xlat12;
    u_xlat12 = select(0.0f, x_2672, x_2671);
    let x_2675 : f32 = u_xlat6.x;
    let x_2676 : f32 = u_xlat12;
    u_xlat6.x = max(x_2675, x_2676);
    let x_2679 : vec3<f32> = u_xlat6;
    let x_2681 : f32 = u_xlat18;
    let x_2684 : vec2<f32> = vs_TEXCOORD0;
    let x_2685 : vec2<f32> = ((vec2<f32>(x_2679.x, x_2679.x) * vec2<f32>(x_2681, x_2681)) + x_2684);
    let x_2686 : vec3<f32> = u_xlat6;
    u_xlat6 = vec3<f32>(x_2685.x, x_2685.y, x_2686.z);
    let x_2689 : bool = u_xlatb0.x;
    if (x_2689) {
      let x_2694 : f32 = vs_TEXCOORD0.x;
      x_2690 = x_2694;
    } else {
      let x_2697 : f32 = u_xlat6.x;
      x_2690 = x_2697;
    }
    let x_2698 : f32 = x_2690;
    u_xlat2.x = x_2698;
    let x_2701 : f32 = u_xlat2.x;
    u_xlat2.x = clamp(x_2701, 0.0f, 1.0f);
    let x_2705 : bool = u_xlatb0.x;
    if (x_2705) {
      let x_2710 : f32 = u_xlat6.y;
      x_2706 = x_2710;
    } else {
      let x_2713 : f32 = vs_TEXCOORD0.y;
      x_2706 = x_2713;
    }
    let x_2714 : f32 = x_2706;
    u_xlat2.y = x_2714;
    let x_2717 : f32 = u_xlat2.y;
    u_xlat2.y = clamp(x_2717, 0.0f, 1.0f);
    let x_2720 : vec3<f32> = u_xlat2;
    let x_2723 : f32 = x_30.x_RenderViewportScaleFactor;
    let x_2725 : vec2<f32> = (vec2<f32>(x_2720.x, x_2720.y) * vec2<f32>(x_2723, x_2723));
    let x_2726 : vec3<f32> = u_xlat0;
    u_xlat0 = vec3<f32>(x_2725.x, x_2725.y, x_2726.z);
    let x_2731 : vec3<f32> = u_xlat0;
    let x_2733 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_2731.x, x_2731.y), 0.0f);
    let x_2734 : vec3<f32> = vec3<f32>(x_2733.x, x_2733.y, x_2733.z);
    let x_2735 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_2734.x, x_2734.y, x_2734.z, x_2735.w);
  }
  let x_2737 : vec2<f32> = vs_TEXCOORD0;
  let x_2740 : vec4<f32> = x_30.x_Dithering_Coords;
  let x_2744 : vec4<f32> = x_30.x_Dithering_Coords;
  let x_2746 : vec2<f32> = ((x_2737 * vec2<f32>(x_2740.x, x_2740.y)) + vec2<f32>(x_2744.z, x_2744.w));
  let x_2747 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_2746.x, x_2746.y, x_2747.z);
  let x_2754 : vec3<f32> = u_xlat0;
  let x_2756 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_2754.x, x_2754.y));
  u_xlat0.x = x_2756.w;
  let x_2760 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2760 * 2.0f) + -1.0f);
  let x_2766 : f32 = u_xlat0.x;
  u_xlat6.x = ((x_2766 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_2772 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_2772, 0.0f, 1.0f);
  let x_2776 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_2776 * 2.0f) + -1.0f);
  let x_2781 : f32 = u_xlat0.x;
  u_xlat0.x = (-(abs(x_2781)) + 1.0f);
  let x_2787 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_2787);
  let x_2791 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_2791) + 1.0f);
  let x_2796 : f32 = u_xlat0.x;
  let x_2798 : f32 = u_xlat6.x;
  u_xlat0.x = (x_2796 * x_2798);
  let x_2801 : vec4<f32> = u_xlat1;
  u_xlat6 = (vec3<f32>(x_2801.x, x_2801.y, x_2801.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_2806 : vec4<f32> = u_xlat1;
  u_xlat2 = max(abs(vec3<f32>(x_2806.x, x_2806.y, x_2806.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_2812 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_2812);
  let x_2814 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_2814 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_2818 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_2818);
  let x_2820 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_2820 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_2830 : vec4<f32> = u_xlat1;
  let x_2832 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_2830.x, x_2830.y, x_2830.z, x_2830.x));
  u_xlatb1 = vec3<bool>(x_2832.x, x_2832.y, x_2832.z);
  let x_2836 : vec3<f32> = u_xlat6;
  hlslcc_movcTemp = x_2836;
  let x_2838 : bool = u_xlatb1.x;
  if (x_2838) {
    let x_2843 : f32 = u_xlat6.x;
    x_2839 = x_2843;
  } else {
    let x_2846 : f32 = u_xlat2.x;
    x_2839 = x_2846;
  }
  let x_2847 : f32 = x_2839;
  hlslcc_movcTemp.x = x_2847;
  let x_2850 : bool = u_xlatb1.y;
  if (x_2850) {
    let x_2855 : f32 = u_xlat6.y;
    x_2851 = x_2855;
  } else {
    let x_2858 : f32 = u_xlat2.y;
    x_2851 = x_2858;
  }
  let x_2859 : f32 = x_2851;
  hlslcc_movcTemp.y = x_2859;
  let x_2862 : bool = u_xlatb1.z;
  if (x_2862) {
    let x_2867 : f32 = u_xlat6.z;
    x_2863 = x_2867;
  } else {
    let x_2870 : f32 = u_xlat2.z;
    x_2863 = x_2870;
  }
  let x_2871 : f32 = x_2863;
  hlslcc_movcTemp.z = x_2871;
  let x_2873 : vec3<f32> = hlslcc_movcTemp;
  u_xlat6 = x_2873;
  let x_2874 : vec3<f32> = u_xlat0;
  let x_2879 : vec3<f32> = u_xlat6;
  u_xlat0 = ((vec3<f32>(x_2874.x, x_2874.x, x_2874.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + x_2879);
  let x_2881 : vec3<f32> = u_xlat0;
  let x_2884 : vec3<f32> = (x_2881 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_2885 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2884.x, x_2884.y, x_2884.z, x_2885.w);
  let x_2887 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_2887 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_2891 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_2891 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_2895 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_2895), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_2898 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_2898);
  let x_2900 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_2900 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_2904 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_2904);
  let x_2908 : vec3<f32> = u_xlat0;
  let x_2910 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_2908.x, x_2908.y, x_2908.z, x_2908.x));
  u_xlatb0 = vec3<bool>(x_2910.x, x_2910.y, x_2910.z);
  let x_2915 : bool = u_xlatb0.x;
  if (x_2915) {
    let x_2920 : f32 = u_xlat1.x;
    x_2916 = x_2920;
  } else {
    let x_2923 : f32 = u_xlat2.x;
    x_2916 = x_2923;
  }
  let x_2924 : f32 = x_2916;
  SV_Target0.x = x_2924;
  let x_2928 : bool = u_xlatb0.y;
  if (x_2928) {
    let x_2933 : f32 = u_xlat1.y;
    x_2929 = x_2933;
  } else {
    let x_2936 : f32 = u_xlat2.y;
    x_2929 = x_2936;
  }
  let x_2937 : f32 = x_2929;
  SV_Target0.y = x_2937;
  let x_2940 : bool = u_xlatb0.z;
  if (x_2940) {
    let x_2945 : f32 = u_xlat1.z;
    x_2941 = x_2945;
  } else {
    let x_2948 : f32 = u_xlat2.z;
    x_2941 = x_2948;
  }
  let x_2949 : f32 = x_2941;
  SV_Target0.z = x_2949;
  let x_2952 : f32 = u_xlat1.w;
  SV_Target0.w = x_2952;
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

