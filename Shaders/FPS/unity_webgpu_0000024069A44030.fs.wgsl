struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_Dithering_Coords : vec4<f32>,
  x_MainTex_TexelSize : vec4<f32>,
}

var<private> u_xlat0 : vec2<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var<uniform> x_23 : PGlobals;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_MainTex : sampler;

var<private> u_xlat12 : f32;

var<private> u_xlat18 : f32;

var<private> u_xlat19 : f32;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat8 : vec2<f32>;

var<private> u_xlat14 : f32;

var<private> u_xlat20 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlatb14 : bool;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat9 : vec2<f32>;

var<private> u_xlat15 : vec2<f32>;

var<private> u_xlat21 : f32;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlatb0 : bool;

var<private> u_xlatb20 : bool;

var<private> u_xlat5 : vec2<f32>;

var<private> u_xlati2 : i32;

var<private> u_xlati15 : vec2<i32>;

var<private> u_xlati10 : vec3<i32>;

var<private> u_xlati20 : i32;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlati5 : vec2<i32>;

var<private> u_xlatb15 : vec2<bool>;

var<private> u_xlati8 : vec2<i32>;

var<private> u_xlatb2 : vec2<bool>;

var<private> u_xlatb19 : bool;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_DitheringTex : sampler;

var<private> u_xlatb1 : vec3<bool>;

var<private> u_xlatb6 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_307 : f32;
  var x_320 : f32;
  var x_373 : f32;
  var x_393 : f32;
  var x_402 : f32;
  var x_420 : f32;
  var x_432 : f32;
  var x_573 : f32;
  var x_592 : f32;
  var x_629 : f32;
  var x_649 : f32;
  var x_718 : f32;
  var x_736 : f32;
  var x_766 : f32;
  var x_785 : f32;
  var x_815 : f32;
  var x_835 : f32;
  var x_904 : f32;
  var x_922 : f32;
  var x_952 : f32;
  var x_971 : f32;
  var x_1000 : f32;
  var x_1020 : f32;
  var x_1089 : f32;
  var x_1107 : f32;
  var x_1137 : f32;
  var x_1156 : f32;
  var x_1185 : f32;
  var x_1205 : f32;
  var x_1274 : f32;
  var x_1292 : f32;
  var x_1322 : f32;
  var x_1341 : f32;
  var x_1370 : f32;
  var x_1390 : f32;
  var x_1459 : f32;
  var x_1477 : f32;
  var x_1507 : f32;
  var x_1526 : f32;
  var x_1555 : f32;
  var x_1575 : f32;
  var x_1644 : f32;
  var x_1662 : f32;
  var x_1692 : f32;
  var x_1711 : f32;
  var x_1740 : f32;
  var x_1760 : f32;
  var x_1829 : f32;
  var x_1847 : f32;
  var x_1877 : f32;
  var x_1896 : f32;
  var x_1925 : f32;
  var x_1945 : f32;
  var x_2014 : f32;
  var x_2032 : f32;
  var x_2063 : f32;
  var x_2082 : f32;
  var x_2111 : f32;
  var x_2131 : f32;
  var x_2200 : f32;
  var x_2218 : f32;
  var x_2246 : f32;
  var x_2264 : f32;
  var x_2281 : f32;
  var x_2298 : f32;
  var x_2327 : f32;
  var x_2343 : f32;
  var x_2383 : bool;
  var x_2421 : f32;
  var x_2436 : f32;
  var x_2564 : f32;
  var x_2576 : f32;
  var x_2588 : f32;
  var x_2639 : f32;
  var x_2652 : f32;
  var x_2664 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = x_12;
  let x_13 : vec2<f32> = u_xlat0;
  u_xlat0 = clamp(x_13, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_19 : vec2<f32> = u_xlat0;
  let x_28 : f32 = x_23.x_RenderViewportScaleFactor;
  u_xlat0 = (x_19 * vec2<f32>(x_28, x_28));
  let x_44 : vec2<f32> = u_xlat0;
  let x_45 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_44, 0.0f);
  u_xlat1 = vec3<f32>(x_45.x, x_45.y, x_45.z);
  let x_52 : vec2<f32> = u_xlat0;
  let x_56 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_52, 0.0f, vec2<i32>(0i, 1i));
  u_xlat12 = x_56.y;
  let x_64 : vec2<f32> = u_xlat0;
  let x_66 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_64, 0.0f, vec2<i32>(1i, 0i));
  u_xlat18 = x_66.y;
  let x_72 : vec2<f32> = u_xlat0;
  let x_75 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_72, 0.0f, vec2<i32>(0i, -1i));
  u_xlat19 = x_75.y;
  let x_81 : vec2<f32> = u_xlat0;
  let x_83 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_81, 0.0f, vec2<i32>(-1i, 0i));
  u_xlat2.x = x_83.y;
  let x_89 : f32 = u_xlat1.y;
  let x_90 : f32 = u_xlat12;
  u_xlat8.x = max(x_89, x_90);
  let x_95 : f32 = u_xlat1.y;
  let x_96 : f32 = u_xlat12;
  u_xlat14 = min(x_95, x_96);
  let x_98 : f32 = u_xlat18;
  let x_100 : f32 = u_xlat8.x;
  u_xlat8.x = max(x_98, x_100);
  let x_103 : f32 = u_xlat18;
  let x_104 : f32 = u_xlat14;
  u_xlat14 = min(x_103, x_104);
  let x_107 : f32 = u_xlat19;
  let x_109 : f32 = u_xlat2.x;
  u_xlat20 = max(x_107, x_109);
  let x_112 : f32 = u_xlat19;
  let x_114 : f32 = u_xlat2.x;
  u_xlat3.x = min(x_112, x_114);
  let x_118 : f32 = u_xlat8.x;
  let x_119 : f32 = u_xlat20;
  u_xlat8.x = max(x_118, x_119);
  let x_122 : f32 = u_xlat14;
  let x_124 : f32 = u_xlat3.x;
  u_xlat14 = min(x_122, x_124);
  let x_127 : f32 = u_xlat8.x;
  u_xlat20 = (x_127 * 0.063000001f);
  let x_130 : f32 = u_xlat14;
  let x_133 : f32 = u_xlat8.x;
  u_xlat8.x = (-(x_130) + x_133);
  let x_136 : f32 = u_xlat20;
  u_xlat14 = max(x_136, 0.031199999f);
  let x_143 : f32 = u_xlat8.x;
  let x_144 : f32 = u_xlat14;
  u_xlatb14 = (x_143 >= x_144);
  let x_146 : bool = u_xlatb14;
  if (x_146) {
    let x_152 : vec2<f32> = u_xlat0;
    let x_154 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_152, 0.0f, vec2<i32>(-1i, -1i));
    u_xlat14 = x_154.y;
    let x_159 : vec2<f32> = u_xlat0;
    let x_161 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_159, 0.0f, vec2<i32>(1i, 1i));
    u_xlat20 = x_161.y;
    let x_166 : vec2<f32> = u_xlat0;
    let x_168 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_166, 0.0f, vec2<i32>(1i, -1i));
    u_xlat3.x = x_168.y;
    let x_174 : vec2<f32> = u_xlat0;
    let x_176 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_174, 0.0f, vec2<i32>(-1i, 1i));
    u_xlat0.x = x_176.y;
    let x_180 : f32 = u_xlat12;
    let x_181 : f32 = u_xlat19;
    u_xlat6.x = (x_180 + x_181);
    let x_185 : f32 = u_xlat18;
    let x_187 : f32 = u_xlat2.x;
    u_xlat9.x = (x_185 + x_187);
    let x_191 : f32 = u_xlat8.x;
    u_xlat8.x = (1.0f / x_191);
    let x_196 : f32 = u_xlat6.x;
    let x_198 : f32 = u_xlat9.x;
    u_xlat15.x = (x_196 + x_198);
    let x_202 : f32 = u_xlat1.y;
    let x_206 : f32 = u_xlat6.x;
    u_xlat6.x = ((x_202 * -2.0f) + x_206);
    let x_210 : f32 = u_xlat1.y;
    let x_213 : f32 = u_xlat9.x;
    u_xlat9.x = ((x_210 * -2.0f) + x_213);
    let x_217 : f32 = u_xlat20;
    let x_219 : f32 = u_xlat3.x;
    u_xlat21 = (x_217 + x_219);
    let x_221 : f32 = u_xlat14;
    let x_223 : f32 = u_xlat3.x;
    u_xlat3.x = (x_221 + x_223);
    let x_227 : f32 = u_xlat18;
    let x_229 : f32 = u_xlat21;
    u_xlat4.x = ((x_227 * -2.0f) + x_229);
    let x_232 : f32 = u_xlat19;
    let x_235 : f32 = u_xlat3.x;
    u_xlat3.x = ((x_232 * -2.0f) + x_235);
    let x_239 : f32 = u_xlat0.x;
    let x_240 : f32 = u_xlat14;
    u_xlat14 = (x_239 + x_240);
    let x_242 : f32 = u_xlat20;
    let x_244 : f32 = u_xlat0.x;
    u_xlat0.x = (x_242 + x_244);
    let x_248 : f32 = u_xlat6.x;
    let x_253 : f32 = u_xlat4.x;
    u_xlat6.x = ((abs(x_248) * 2.0f) + abs(x_253));
    let x_258 : f32 = u_xlat9.x;
    let x_262 : f32 = u_xlat3.x;
    u_xlat20 = ((abs(x_258) * 2.0f) + abs(x_262));
    let x_266 : f32 = u_xlat2.x;
    let x_268 : f32 = u_xlat14;
    u_xlat3.x = ((x_266 * -2.0f) + x_268);
    let x_271 : f32 = u_xlat12;
    let x_274 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_271 * -2.0f) + x_274);
    let x_278 : f32 = u_xlat6.x;
    let x_280 : f32 = u_xlat3.x;
    u_xlat6.x = (x_278 + abs(x_280));
    let x_284 : f32 = u_xlat20;
    let x_286 : f32 = u_xlat0.x;
    u_xlat0.x = (x_284 + abs(x_286));
    let x_290 : f32 = u_xlat21;
    let x_291 : f32 = u_xlat14;
    u_xlat14 = (x_290 + x_291);
    let x_295 : f32 = u_xlat6.x;
    let x_297 : f32 = u_xlat0.x;
    u_xlatb0 = (x_295 >= x_297);
    let x_300 : f32 = u_xlat15.x;
    let x_302 : f32 = u_xlat14;
    u_xlat6.x = ((x_300 * 2.0f) + x_302);
    let x_305 : bool = u_xlatb0;
    if (x_305) {
      let x_310 : f32 = u_xlat19;
      x_307 = x_310;
    } else {
      let x_313 : f32 = u_xlat2.x;
      x_307 = x_313;
    }
    let x_314 : f32 = x_307;
    u_xlat19 = x_314;
    let x_315 : bool = u_xlatb0;
    let x_316 : f32 = u_xlat12;
    let x_317 : f32 = u_xlat18;
    u_xlat12 = select(x_317, x_316, x_315);
    let x_319 : bool = u_xlatb0;
    if (x_319) {
      let x_325 : f32 = x_23.x_MainTex_TexelSize.y;
      x_320 = x_325;
    } else {
      let x_328 : f32 = x_23.x_MainTex_TexelSize.x;
      x_320 = x_328;
    }
    let x_329 : f32 = x_320;
    u_xlat18 = x_329;
    let x_331 : f32 = u_xlat6.x;
    let x_335 : f32 = u_xlat1.y;
    u_xlat6.x = ((x_331 * 0.083333336f) + -(x_335));
    let x_340 : f32 = u_xlat1.y;
    let x_342 : f32 = u_xlat19;
    u_xlat2.x = (-(x_340) + x_342);
    let x_346 : f32 = u_xlat1.y;
    let x_348 : f32 = u_xlat12;
    u_xlat14 = (-(x_346) + x_348);
    let x_351 : f32 = u_xlat1.y;
    let x_352 : f32 = u_xlat19;
    u_xlat19 = (x_351 + x_352);
    let x_355 : f32 = u_xlat1.y;
    let x_356 : f32 = u_xlat12;
    u_xlat12 = (x_355 + x_356);
    let x_360 : f32 = u_xlat2.x;
    let x_362 : f32 = u_xlat14;
    u_xlatb20 = (abs(x_360) >= abs(x_362));
    let x_365 : f32 = u_xlat14;
    let x_368 : f32 = u_xlat2.x;
    u_xlat2.x = max(abs(x_365), abs(x_368));
    let x_372 : bool = u_xlatb20;
    if (x_372) {
      let x_376 : f32 = u_xlat18;
      x_373 = -(x_376);
    } else {
      let x_379 : f32 = u_xlat18;
      x_373 = x_379;
    }
    let x_380 : f32 = x_373;
    u_xlat18 = x_380;
    let x_382 : f32 = u_xlat8.x;
    let x_384 : f32 = u_xlat6.x;
    u_xlat6.x = (x_382 * abs(x_384));
    let x_389 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_389, 0.0f, 1.0f);
    let x_392 : bool = u_xlatb0;
    if (x_392) {
      let x_397 : f32 = x_23.x_MainTex_TexelSize.x;
      x_393 = x_397;
    } else {
      x_393 = 0.0f;
    }
    let x_399 : f32 = x_393;
    u_xlat8.x = x_399;
    let x_401 : bool = u_xlatb0;
    if (x_401) {
      x_402 = 0.0f;
    } else {
      let x_407 : f32 = x_23.x_MainTex_TexelSize.y;
      x_402 = x_407;
    }
    let x_408 : f32 = x_402;
    u_xlat8.y = x_408;
    let x_410 : f32 = u_xlat18;
    let x_415 : vec2<f32> = vs_TEXCOORD0;
    let x_416 : vec2<f32> = ((vec2<f32>(x_410, x_410) * vec2<f32>(0.5f, 0.5f)) + x_415);
    let x_417 : vec3<f32> = u_xlat3;
    u_xlat3 = vec3<f32>(x_416.x, x_416.y, x_417.z);
    let x_419 : bool = u_xlatb0;
    if (x_419) {
      let x_425 : f32 = vs_TEXCOORD0.x;
      x_420 = x_425;
    } else {
      let x_428 : f32 = u_xlat3.x;
      x_420 = x_428;
    }
    let x_429 : f32 = x_420;
    u_xlat3.x = x_429;
    let x_431 : bool = u_xlatb0;
    if (x_431) {
      let x_436 : f32 = u_xlat3.y;
      x_432 = x_436;
    } else {
      let x_439 : f32 = vs_TEXCOORD0.y;
      x_432 = x_439;
    }
    let x_440 : f32 = x_432;
    u_xlat3.y = x_440;
    let x_442 : vec2<f32> = u_xlat8;
    let x_444 : vec3<f32> = u_xlat3;
    let x_446 : vec2<f32> = (-(x_442) + vec2<f32>(x_444.x, x_444.y));
    let x_447 : vec3<f32> = u_xlat4;
    u_xlat4 = vec3<f32>(x_446.x, x_446.y, x_447.z);
    let x_450 : vec2<f32> = u_xlat8;
    let x_451 : vec3<f32> = u_xlat3;
    u_xlat5 = (x_450 + vec2<f32>(x_451.x, x_451.y));
    let x_455 : f32 = u_xlat6.x;
    u_xlat3.x = ((x_455 * -2.0f) + 3.0f);
    let x_460 : vec3<f32> = u_xlat4;
    u_xlat9 = vec2<f32>(x_460.x, x_460.y);
    let x_462 : vec2<f32> = u_xlat9;
    u_xlat9 = clamp(x_462, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_466 : vec2<f32> = u_xlat9;
    let x_468 : f32 = x_23.x_RenderViewportScaleFactor;
    u_xlat9 = (x_466 * vec2<f32>(x_468, x_468));
    let x_474 : vec2<f32> = u_xlat9;
    let x_475 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_474, 0.0f);
    u_xlat9.x = x_475.y;
    let x_479 : f32 = u_xlat6.x;
    let x_481 : f32 = u_xlat6.x;
    u_xlat6.x = (x_479 * x_481);
    let x_484 : vec2<f32> = u_xlat5;
    u_xlat15 = x_484;
    let x_485 : vec2<f32> = u_xlat15;
    u_xlat15 = clamp(x_485, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_489 : vec2<f32> = u_xlat15;
    let x_491 : f32 = x_23.x_RenderViewportScaleFactor;
    u_xlat15 = (x_489 * vec2<f32>(x_491, x_491));
    let x_497 : vec2<f32> = u_xlat15;
    let x_498 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_497, 0.0f);
    u_xlat15.x = x_498.y;
    let x_501 : bool = u_xlatb20;
    let x_502 : f32 = u_xlat19;
    let x_503 : f32 = u_xlat12;
    u_xlat12 = select(x_503, x_502, x_501);
    let x_506 : f32 = u_xlat2.x;
    u_xlat19 = (x_506 * 0.25f);
    let x_509 : f32 = u_xlat12;
    let x_513 : f32 = u_xlat1.y;
    u_xlat2.x = ((-(x_509) * 0.5f) + x_513);
    let x_517 : f32 = u_xlat6.x;
    let x_519 : f32 = u_xlat3.x;
    u_xlat6.x = (x_517 * x_519);
    let x_525 : f32 = u_xlat2.x;
    u_xlati2 = bitcast<i32>(select(0u, 4294967295u, (x_525 < 0.0f)));
    let x_530 : f32 = u_xlat12;
    let x_534 : f32 = u_xlat9.x;
    u_xlat3.x = ((-(x_530) * 0.5f) + x_534);
    let x_537 : f32 = u_xlat12;
    let x_541 : f32 = u_xlat15.x;
    u_xlat3.y = ((-(x_537) * 0.5f) + x_541);
    let x_546 : vec3<f32> = u_xlat3;
    let x_549 : f32 = u_xlat19;
    let x_552 : vec4<bool> = (abs(vec4<f32>(x_546.x, x_546.y, x_546.x, x_546.y)) >= vec4<f32>(x_549, x_549, x_549, x_549));
    u_xlati15 = bitcast<vec2<i32>>((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_552.x, x_552.y)) * vec2<u32>(4294967295u, 4294967295u)));
    let x_563 : f32 = u_xlat8.x;
    let x_568 : f32 = u_xlat4.x;
    u_xlat20 = ((-(x_563) * 1.5f) + x_568);
    let x_571 : i32 = u_xlati15.x;
    if ((x_571 != 0i)) {
      let x_577 : f32 = u_xlat4.x;
      x_573 = x_577;
    } else {
      let x_579 : f32 = u_xlat20;
      x_573 = x_579;
    }
    let x_580 : f32 = x_573;
    u_xlat4.x = x_580;
    let x_583 : f32 = u_xlat8.y;
    let x_587 : f32 = u_xlat4.y;
    u_xlat20 = ((-(x_583) * 1.5f) + x_587);
    let x_590 : i32 = u_xlati15.x;
    if ((x_590 != 0i)) {
      let x_596 : f32 = u_xlat4.y;
      x_592 = x_596;
    } else {
      let x_598 : f32 = u_xlat20;
      x_592 = x_598;
    }
    let x_599 : f32 = x_592;
    u_xlat4.z = x_599;
    let x_605 : vec2<i32> = u_xlati15;
    let x_606 : vec2<i32> = ~(x_605);
    let x_607 : vec3<i32> = u_xlati10;
    u_xlati10 = vec3<i32>(x_606.x, x_607.y, x_606.y);
    let x_611 : i32 = u_xlati10.z;
    let x_614 : i32 = u_xlati10.x;
    u_xlati20 = bitcast<i32>((bitcast<u32>(x_611) | bitcast<u32>(x_614)));
    let x_620 : f32 = u_xlat8.x;
    let x_623 : f32 = u_xlat5.x;
    u_xlat10.x = ((x_620 * 1.5f) + x_623);
    let x_627 : i32 = u_xlati15.y;
    if ((x_627 != 0i)) {
      let x_633 : f32 = u_xlat5.x;
      x_629 = x_633;
    } else {
      let x_636 : f32 = u_xlat10.x;
      x_629 = x_636;
    }
    let x_637 : f32 = x_629;
    u_xlat10.x = x_637;
    let x_640 : f32 = u_xlat8.y;
    let x_643 : f32 = u_xlat5.y;
    u_xlat5.x = ((x_640 * 1.5f) + x_643);
    let x_647 : i32 = u_xlati15.y;
    if ((x_647 != 0i)) {
      let x_653 : f32 = u_xlat5.y;
      x_649 = x_653;
    } else {
      let x_656 : f32 = u_xlat5.x;
      x_649 = x_656;
    }
    let x_657 : f32 = x_649;
    u_xlat10.z = x_657;
    let x_659 : i32 = u_xlati20;
    if ((x_659 != 0i)) {
      let x_664 : i32 = u_xlati15.x;
      if ((x_664 == 0i)) {
        let x_668 : vec3<f32> = u_xlat4;
        u_xlat5 = vec2<f32>(x_668.x, x_668.z);
        let x_670 : vec2<f32> = u_xlat5;
        u_xlat5 = clamp(x_670, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_674 : vec2<f32> = u_xlat5;
        let x_676 : f32 = x_23.x_RenderViewportScaleFactor;
        u_xlat5 = (x_674 * vec2<f32>(x_676, x_676));
        let x_682 : vec2<f32> = u_xlat5;
        let x_683 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_682, 0.0f);
        u_xlat3.x = x_683.y;
      }
      let x_687 : i32 = u_xlati15.y;
      if ((x_687 == 0i)) {
        let x_691 : vec3<f32> = u_xlat10;
        u_xlat5 = vec2<f32>(x_691.x, x_691.z);
        let x_693 : vec2<f32> = u_xlat5;
        u_xlat5 = clamp(x_693, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_697 : vec2<f32> = u_xlat5;
        let x_699 : f32 = x_23.x_RenderViewportScaleFactor;
        u_xlat5 = (x_697 * vec2<f32>(x_699, x_699));
        let x_705 : vec2<f32> = u_xlat5;
        let x_706 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_705, 0.0f);
        u_xlat3.y = x_706.y;
      }
      let x_709 : f32 = u_xlat12;
      let x_713 : f32 = u_xlat3.x;
      u_xlat20 = ((-(x_709) * 0.5f) + x_713);
      let x_716 : i32 = u_xlati15.x;
      if ((x_716 != 0i)) {
        let x_722 : f32 = u_xlat3.x;
        x_718 = x_722;
      } else {
        let x_724 : f32 = u_xlat20;
        x_718 = x_724;
      }
      let x_725 : f32 = x_718;
      u_xlat3.x = x_725;
      let x_727 : f32 = u_xlat12;
      let x_731 : f32 = u_xlat3.y;
      u_xlat20 = ((-(x_727) * 0.5f) + x_731);
      let x_734 : i32 = u_xlati15.y;
      if ((x_734 != 0i)) {
        let x_740 : f32 = u_xlat3.y;
        x_736 = x_740;
      } else {
        let x_742 : f32 = u_xlat20;
        x_736 = x_742;
      }
      let x_743 : f32 = x_736;
      u_xlat3.y = x_743;
      let x_745 : vec3<f32> = u_xlat3;
      let x_748 : f32 = u_xlat19;
      let x_750 : vec4<bool> = (abs(vec4<f32>(x_745.x, x_745.y, x_745.x, x_745.y)) >= vec4<f32>(x_748, x_748, x_748, x_748));
      u_xlati15 = bitcast<vec2<i32>>((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_750.x, x_750.y)) * vec2<u32>(4294967295u, 4294967295u)));
      let x_757 : f32 = u_xlat8.x;
      let x_761 : f32 = u_xlat4.x;
      u_xlat20 = ((-(x_757) * 2.0f) + x_761);
      let x_764 : i32 = u_xlati15.x;
      if ((x_764 != 0i)) {
        let x_770 : f32 = u_xlat4.x;
        x_766 = x_770;
      } else {
        let x_772 : f32 = u_xlat20;
        x_766 = x_772;
      }
      let x_773 : f32 = x_766;
      u_xlat4.x = x_773;
      let x_776 : f32 = u_xlat8.y;
      let x_780 : f32 = u_xlat4.z;
      u_xlat20 = ((-(x_776) * 2.0f) + x_780);
      let x_783 : i32 = u_xlati15.x;
      if ((x_783 != 0i)) {
        let x_789 : f32 = u_xlat4.z;
        x_785 = x_789;
      } else {
        let x_791 : f32 = u_xlat20;
        x_785 = x_791;
      }
      let x_792 : f32 = x_785;
      u_xlat4.z = x_792;
      let x_795 : vec2<i32> = u_xlati15;
      u_xlati5 = ~(x_795);
      let x_798 : i32 = u_xlati5.y;
      let x_801 : i32 = u_xlati5.x;
      u_xlati20 = bitcast<i32>((bitcast<u32>(x_798) | bitcast<u32>(x_801)));
      let x_806 : f32 = u_xlat8.x;
      let x_809 : f32 = u_xlat10.x;
      u_xlat5.x = ((x_806 * 2.0f) + x_809);
      let x_813 : i32 = u_xlati15.y;
      if ((x_813 != 0i)) {
        let x_819 : f32 = u_xlat10.x;
        x_815 = x_819;
      } else {
        let x_822 : f32 = u_xlat5.x;
        x_815 = x_822;
      }
      let x_823 : f32 = x_815;
      u_xlat10.x = x_823;
      let x_826 : f32 = u_xlat8.y;
      let x_829 : f32 = u_xlat10.z;
      u_xlat5.x = ((x_826 * 2.0f) + x_829);
      let x_833 : i32 = u_xlati15.y;
      if ((x_833 != 0i)) {
        let x_839 : f32 = u_xlat10.z;
        x_835 = x_839;
      } else {
        let x_842 : f32 = u_xlat5.x;
        x_835 = x_842;
      }
      let x_843 : f32 = x_835;
      u_xlat10.z = x_843;
      let x_845 : i32 = u_xlati20;
      if ((x_845 != 0i)) {
        let x_850 : i32 = u_xlati15.x;
        if ((x_850 == 0i)) {
          let x_854 : vec3<f32> = u_xlat4;
          u_xlat5 = vec2<f32>(x_854.x, x_854.z);
          let x_856 : vec2<f32> = u_xlat5;
          u_xlat5 = clamp(x_856, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_860 : vec2<f32> = u_xlat5;
          let x_862 : f32 = x_23.x_RenderViewportScaleFactor;
          u_xlat5 = (x_860 * vec2<f32>(x_862, x_862));
          let x_868 : vec2<f32> = u_xlat5;
          let x_869 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_868, 0.0f);
          u_xlat3.x = x_869.y;
        }
        let x_873 : i32 = u_xlati15.y;
        if ((x_873 == 0i)) {
          let x_877 : vec3<f32> = u_xlat10;
          u_xlat5 = vec2<f32>(x_877.x, x_877.z);
          let x_879 : vec2<f32> = u_xlat5;
          u_xlat5 = clamp(x_879, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_883 : vec2<f32> = u_xlat5;
          let x_885 : f32 = x_23.x_RenderViewportScaleFactor;
          u_xlat5 = (x_883 * vec2<f32>(x_885, x_885));
          let x_891 : vec2<f32> = u_xlat5;
          let x_892 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_891, 0.0f);
          u_xlat3.y = x_892.y;
        }
        let x_895 : f32 = u_xlat12;
        let x_899 : f32 = u_xlat3.x;
        u_xlat20 = ((-(x_895) * 0.5f) + x_899);
        let x_902 : i32 = u_xlati15.x;
        if ((x_902 != 0i)) {
          let x_908 : f32 = u_xlat3.x;
          x_904 = x_908;
        } else {
          let x_910 : f32 = u_xlat20;
          x_904 = x_910;
        }
        let x_911 : f32 = x_904;
        u_xlat3.x = x_911;
        let x_913 : f32 = u_xlat12;
        let x_917 : f32 = u_xlat3.y;
        u_xlat20 = ((-(x_913) * 0.5f) + x_917);
        let x_920 : i32 = u_xlati15.y;
        if ((x_920 != 0i)) {
          let x_926 : f32 = u_xlat3.y;
          x_922 = x_926;
        } else {
          let x_928 : f32 = u_xlat20;
          x_922 = x_928;
        }
        let x_929 : f32 = x_922;
        u_xlat3.y = x_929;
        let x_931 : vec3<f32> = u_xlat3;
        let x_934 : f32 = u_xlat19;
        let x_936 : vec4<bool> = (abs(vec4<f32>(x_931.x, x_931.y, x_931.x, x_931.y)) >= vec4<f32>(x_934, x_934, x_934, x_934));
        u_xlati15 = bitcast<vec2<i32>>((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_936.x, x_936.y)) * vec2<u32>(4294967295u, 4294967295u)));
        let x_943 : f32 = u_xlat8.x;
        let x_947 : f32 = u_xlat4.x;
        u_xlat20 = ((-(x_943) * 2.0f) + x_947);
        let x_950 : i32 = u_xlati15.x;
        if ((x_950 != 0i)) {
          let x_956 : f32 = u_xlat4.x;
          x_952 = x_956;
        } else {
          let x_958 : f32 = u_xlat20;
          x_952 = x_958;
        }
        let x_959 : f32 = x_952;
        u_xlat4.x = x_959;
        let x_962 : f32 = u_xlat8.y;
        let x_966 : f32 = u_xlat4.z;
        u_xlat20 = ((-(x_962) * 2.0f) + x_966);
        let x_969 : i32 = u_xlati15.x;
        if ((x_969 != 0i)) {
          let x_975 : f32 = u_xlat4.z;
          x_971 = x_975;
        } else {
          let x_977 : f32 = u_xlat20;
          x_971 = x_977;
        }
        let x_978 : f32 = x_971;
        u_xlat4.z = x_978;
        let x_980 : vec2<i32> = u_xlati15;
        u_xlati5 = ~(x_980);
        let x_983 : i32 = u_xlati5.y;
        let x_986 : i32 = u_xlati5.x;
        u_xlati20 = bitcast<i32>((bitcast<u32>(x_983) | bitcast<u32>(x_986)));
        let x_991 : f32 = u_xlat8.x;
        let x_994 : f32 = u_xlat10.x;
        u_xlat5.x = ((x_991 * 2.0f) + x_994);
        let x_998 : i32 = u_xlati15.y;
        if ((x_998 != 0i)) {
          let x_1004 : f32 = u_xlat10.x;
          x_1000 = x_1004;
        } else {
          let x_1007 : f32 = u_xlat5.x;
          x_1000 = x_1007;
        }
        let x_1008 : f32 = x_1000;
        u_xlat10.x = x_1008;
        let x_1011 : f32 = u_xlat8.y;
        let x_1014 : f32 = u_xlat10.z;
        u_xlat5.x = ((x_1011 * 2.0f) + x_1014);
        let x_1018 : i32 = u_xlati15.y;
        if ((x_1018 != 0i)) {
          let x_1024 : f32 = u_xlat10.z;
          x_1020 = x_1024;
        } else {
          let x_1027 : f32 = u_xlat5.x;
          x_1020 = x_1027;
        }
        let x_1028 : f32 = x_1020;
        u_xlat10.z = x_1028;
        let x_1030 : i32 = u_xlati20;
        if ((x_1030 != 0i)) {
          let x_1035 : i32 = u_xlati15.x;
          if ((x_1035 == 0i)) {
            let x_1039 : vec3<f32> = u_xlat4;
            u_xlat5 = vec2<f32>(x_1039.x, x_1039.z);
            let x_1041 : vec2<f32> = u_xlat5;
            u_xlat5 = clamp(x_1041, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
            let x_1045 : vec2<f32> = u_xlat5;
            let x_1047 : f32 = x_23.x_RenderViewportScaleFactor;
            u_xlat5 = (x_1045 * vec2<f32>(x_1047, x_1047));
            let x_1053 : vec2<f32> = u_xlat5;
            let x_1054 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_1053, 0.0f);
            u_xlat3.x = x_1054.y;
          }
          let x_1058 : i32 = u_xlati15.y;
          if ((x_1058 == 0i)) {
            let x_1062 : vec3<f32> = u_xlat10;
            u_xlat5 = vec2<f32>(x_1062.x, x_1062.z);
            let x_1064 : vec2<f32> = u_xlat5;
            u_xlat5 = clamp(x_1064, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
            let x_1068 : vec2<f32> = u_xlat5;
            let x_1070 : f32 = x_23.x_RenderViewportScaleFactor;
            u_xlat5 = (x_1068 * vec2<f32>(x_1070, x_1070));
            let x_1076 : vec2<f32> = u_xlat5;
            let x_1077 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_1076, 0.0f);
            u_xlat3.y = x_1077.y;
          }
          let x_1080 : f32 = u_xlat12;
          let x_1084 : f32 = u_xlat3.x;
          u_xlat20 = ((-(x_1080) * 0.5f) + x_1084);
          let x_1087 : i32 = u_xlati15.x;
          if ((x_1087 != 0i)) {
            let x_1093 : f32 = u_xlat3.x;
            x_1089 = x_1093;
          } else {
            let x_1095 : f32 = u_xlat20;
            x_1089 = x_1095;
          }
          let x_1096 : f32 = x_1089;
          u_xlat3.x = x_1096;
          let x_1098 : f32 = u_xlat12;
          let x_1102 : f32 = u_xlat3.y;
          u_xlat20 = ((-(x_1098) * 0.5f) + x_1102);
          let x_1105 : i32 = u_xlati15.y;
          if ((x_1105 != 0i)) {
            let x_1111 : f32 = u_xlat3.y;
            x_1107 = x_1111;
          } else {
            let x_1113 : f32 = u_xlat20;
            x_1107 = x_1113;
          }
          let x_1114 : f32 = x_1107;
          u_xlat3.y = x_1114;
          let x_1116 : vec3<f32> = u_xlat3;
          let x_1119 : f32 = u_xlat19;
          let x_1121 : vec4<bool> = (abs(vec4<f32>(x_1116.x, x_1116.y, x_1116.x, x_1116.y)) >= vec4<f32>(x_1119, x_1119, x_1119, x_1119));
          u_xlati15 = bitcast<vec2<i32>>((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_1121.x, x_1121.y)) * vec2<u32>(4294967295u, 4294967295u)));
          let x_1128 : f32 = u_xlat8.x;
          let x_1132 : f32 = u_xlat4.x;
          u_xlat20 = ((-(x_1128) * 2.0f) + x_1132);
          let x_1135 : i32 = u_xlati15.x;
          if ((x_1135 != 0i)) {
            let x_1141 : f32 = u_xlat4.x;
            x_1137 = x_1141;
          } else {
            let x_1143 : f32 = u_xlat20;
            x_1137 = x_1143;
          }
          let x_1144 : f32 = x_1137;
          u_xlat4.x = x_1144;
          let x_1147 : f32 = u_xlat8.y;
          let x_1151 : f32 = u_xlat4.z;
          u_xlat20 = ((-(x_1147) * 2.0f) + x_1151);
          let x_1154 : i32 = u_xlati15.x;
          if ((x_1154 != 0i)) {
            let x_1160 : f32 = u_xlat4.z;
            x_1156 = x_1160;
          } else {
            let x_1162 : f32 = u_xlat20;
            x_1156 = x_1162;
          }
          let x_1163 : f32 = x_1156;
          u_xlat4.z = x_1163;
          let x_1165 : vec2<i32> = u_xlati15;
          u_xlati5 = ~(x_1165);
          let x_1168 : i32 = u_xlati5.y;
          let x_1171 : i32 = u_xlati5.x;
          u_xlati20 = bitcast<i32>((bitcast<u32>(x_1168) | bitcast<u32>(x_1171)));
          let x_1176 : f32 = u_xlat8.x;
          let x_1179 : f32 = u_xlat10.x;
          u_xlat5.x = ((x_1176 * 2.0f) + x_1179);
          let x_1183 : i32 = u_xlati15.y;
          if ((x_1183 != 0i)) {
            let x_1189 : f32 = u_xlat10.x;
            x_1185 = x_1189;
          } else {
            let x_1192 : f32 = u_xlat5.x;
            x_1185 = x_1192;
          }
          let x_1193 : f32 = x_1185;
          u_xlat10.x = x_1193;
          let x_1196 : f32 = u_xlat8.y;
          let x_1199 : f32 = u_xlat10.z;
          u_xlat5.x = ((x_1196 * 2.0f) + x_1199);
          let x_1203 : i32 = u_xlati15.y;
          if ((x_1203 != 0i)) {
            let x_1209 : f32 = u_xlat10.z;
            x_1205 = x_1209;
          } else {
            let x_1212 : f32 = u_xlat5.x;
            x_1205 = x_1212;
          }
          let x_1213 : f32 = x_1205;
          u_xlat10.z = x_1213;
          let x_1215 : i32 = u_xlati20;
          if ((x_1215 != 0i)) {
            let x_1220 : i32 = u_xlati15.x;
            if ((x_1220 == 0i)) {
              let x_1224 : vec3<f32> = u_xlat4;
              u_xlat5 = vec2<f32>(x_1224.x, x_1224.z);
              let x_1226 : vec2<f32> = u_xlat5;
              u_xlat5 = clamp(x_1226, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
              let x_1230 : vec2<f32> = u_xlat5;
              let x_1232 : f32 = x_23.x_RenderViewportScaleFactor;
              u_xlat5 = (x_1230 * vec2<f32>(x_1232, x_1232));
              let x_1238 : vec2<f32> = u_xlat5;
              let x_1239 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_1238, 0.0f);
              u_xlat3.x = x_1239.y;
            }
            let x_1243 : i32 = u_xlati15.y;
            if ((x_1243 == 0i)) {
              let x_1247 : vec3<f32> = u_xlat10;
              u_xlat5 = vec2<f32>(x_1247.x, x_1247.z);
              let x_1249 : vec2<f32> = u_xlat5;
              u_xlat5 = clamp(x_1249, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
              let x_1253 : vec2<f32> = u_xlat5;
              let x_1255 : f32 = x_23.x_RenderViewportScaleFactor;
              u_xlat5 = (x_1253 * vec2<f32>(x_1255, x_1255));
              let x_1261 : vec2<f32> = u_xlat5;
              let x_1262 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_1261, 0.0f);
              u_xlat3.y = x_1262.y;
            }
            let x_1265 : f32 = u_xlat12;
            let x_1269 : f32 = u_xlat3.x;
            u_xlat20 = ((-(x_1265) * 0.5f) + x_1269);
            let x_1272 : i32 = u_xlati15.x;
            if ((x_1272 != 0i)) {
              let x_1278 : f32 = u_xlat3.x;
              x_1274 = x_1278;
            } else {
              let x_1280 : f32 = u_xlat20;
              x_1274 = x_1280;
            }
            let x_1281 : f32 = x_1274;
            u_xlat3.x = x_1281;
            let x_1283 : f32 = u_xlat12;
            let x_1287 : f32 = u_xlat3.y;
            u_xlat20 = ((-(x_1283) * 0.5f) + x_1287);
            let x_1290 : i32 = u_xlati15.y;
            if ((x_1290 != 0i)) {
              let x_1296 : f32 = u_xlat3.y;
              x_1292 = x_1296;
            } else {
              let x_1298 : f32 = u_xlat20;
              x_1292 = x_1298;
            }
            let x_1299 : f32 = x_1292;
            u_xlat3.y = x_1299;
            let x_1301 : vec3<f32> = u_xlat3;
            let x_1304 : f32 = u_xlat19;
            let x_1306 : vec4<bool> = (abs(vec4<f32>(x_1301.x, x_1301.y, x_1301.x, x_1301.y)) >= vec4<f32>(x_1304, x_1304, x_1304, x_1304));
            u_xlati15 = bitcast<vec2<i32>>((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_1306.x, x_1306.y)) * vec2<u32>(4294967295u, 4294967295u)));
            let x_1313 : f32 = u_xlat8.x;
            let x_1317 : f32 = u_xlat4.x;
            u_xlat20 = ((-(x_1313) * 2.0f) + x_1317);
            let x_1320 : i32 = u_xlati15.x;
            if ((x_1320 != 0i)) {
              let x_1326 : f32 = u_xlat4.x;
              x_1322 = x_1326;
            } else {
              let x_1328 : f32 = u_xlat20;
              x_1322 = x_1328;
            }
            let x_1329 : f32 = x_1322;
            u_xlat4.x = x_1329;
            let x_1332 : f32 = u_xlat8.y;
            let x_1336 : f32 = u_xlat4.z;
            u_xlat20 = ((-(x_1332) * 2.0f) + x_1336);
            let x_1339 : i32 = u_xlati15.x;
            if ((x_1339 != 0i)) {
              let x_1345 : f32 = u_xlat4.z;
              x_1341 = x_1345;
            } else {
              let x_1347 : f32 = u_xlat20;
              x_1341 = x_1347;
            }
            let x_1348 : f32 = x_1341;
            u_xlat4.z = x_1348;
            let x_1350 : vec2<i32> = u_xlati15;
            u_xlati5 = ~(x_1350);
            let x_1353 : i32 = u_xlati5.y;
            let x_1356 : i32 = u_xlati5.x;
            u_xlati20 = bitcast<i32>((bitcast<u32>(x_1353) | bitcast<u32>(x_1356)));
            let x_1361 : f32 = u_xlat8.x;
            let x_1364 : f32 = u_xlat10.x;
            u_xlat5.x = ((x_1361 * 2.0f) + x_1364);
            let x_1368 : i32 = u_xlati15.y;
            if ((x_1368 != 0i)) {
              let x_1374 : f32 = u_xlat10.x;
              x_1370 = x_1374;
            } else {
              let x_1377 : f32 = u_xlat5.x;
              x_1370 = x_1377;
            }
            let x_1378 : f32 = x_1370;
            u_xlat10.x = x_1378;
            let x_1381 : f32 = u_xlat8.y;
            let x_1384 : f32 = u_xlat10.z;
            u_xlat5.x = ((x_1381 * 2.0f) + x_1384);
            let x_1388 : i32 = u_xlati15.y;
            if ((x_1388 != 0i)) {
              let x_1394 : f32 = u_xlat10.z;
              x_1390 = x_1394;
            } else {
              let x_1397 : f32 = u_xlat5.x;
              x_1390 = x_1397;
            }
            let x_1398 : f32 = x_1390;
            u_xlat10.z = x_1398;
            let x_1400 : i32 = u_xlati20;
            if ((x_1400 != 0i)) {
              let x_1405 : i32 = u_xlati15.x;
              if ((x_1405 == 0i)) {
                let x_1409 : vec3<f32> = u_xlat4;
                u_xlat5 = vec2<f32>(x_1409.x, x_1409.z);
                let x_1411 : vec2<f32> = u_xlat5;
                u_xlat5 = clamp(x_1411, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
                let x_1415 : vec2<f32> = u_xlat5;
                let x_1417 : f32 = x_23.x_RenderViewportScaleFactor;
                u_xlat5 = (x_1415 * vec2<f32>(x_1417, x_1417));
                let x_1423 : vec2<f32> = u_xlat5;
                let x_1424 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_1423, 0.0f);
                u_xlat3.x = x_1424.y;
              }
              let x_1428 : i32 = u_xlati15.y;
              if ((x_1428 == 0i)) {
                let x_1432 : vec3<f32> = u_xlat10;
                u_xlat5 = vec2<f32>(x_1432.x, x_1432.z);
                let x_1434 : vec2<f32> = u_xlat5;
                u_xlat5 = clamp(x_1434, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
                let x_1438 : vec2<f32> = u_xlat5;
                let x_1440 : f32 = x_23.x_RenderViewportScaleFactor;
                u_xlat5 = (x_1438 * vec2<f32>(x_1440, x_1440));
                let x_1446 : vec2<f32> = u_xlat5;
                let x_1447 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_1446, 0.0f);
                u_xlat3.y = x_1447.y;
              }
              let x_1450 : f32 = u_xlat12;
              let x_1454 : f32 = u_xlat3.x;
              u_xlat20 = ((-(x_1450) * 0.5f) + x_1454);
              let x_1457 : i32 = u_xlati15.x;
              if ((x_1457 != 0i)) {
                let x_1463 : f32 = u_xlat3.x;
                x_1459 = x_1463;
              } else {
                let x_1465 : f32 = u_xlat20;
                x_1459 = x_1465;
              }
              let x_1466 : f32 = x_1459;
              u_xlat3.x = x_1466;
              let x_1468 : f32 = u_xlat12;
              let x_1472 : f32 = u_xlat3.y;
              u_xlat20 = ((-(x_1468) * 0.5f) + x_1472);
              let x_1475 : i32 = u_xlati15.y;
              if ((x_1475 != 0i)) {
                let x_1481 : f32 = u_xlat3.y;
                x_1477 = x_1481;
              } else {
                let x_1483 : f32 = u_xlat20;
                x_1477 = x_1483;
              }
              let x_1484 : f32 = x_1477;
              u_xlat3.y = x_1484;
              let x_1486 : vec3<f32> = u_xlat3;
              let x_1489 : f32 = u_xlat19;
              let x_1491 : vec4<bool> = (abs(vec4<f32>(x_1486.x, x_1486.y, x_1486.x, x_1486.y)) >= vec4<f32>(x_1489, x_1489, x_1489, x_1489));
              u_xlati15 = bitcast<vec2<i32>>((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_1491.x, x_1491.y)) * vec2<u32>(4294967295u, 4294967295u)));
              let x_1498 : f32 = u_xlat8.x;
              let x_1502 : f32 = u_xlat4.x;
              u_xlat20 = ((-(x_1498) * 2.0f) + x_1502);
              let x_1505 : i32 = u_xlati15.x;
              if ((x_1505 != 0i)) {
                let x_1511 : f32 = u_xlat4.x;
                x_1507 = x_1511;
              } else {
                let x_1513 : f32 = u_xlat20;
                x_1507 = x_1513;
              }
              let x_1514 : f32 = x_1507;
              u_xlat4.x = x_1514;
              let x_1517 : f32 = u_xlat8.y;
              let x_1521 : f32 = u_xlat4.z;
              u_xlat20 = ((-(x_1517) * 2.0f) + x_1521);
              let x_1524 : i32 = u_xlati15.x;
              if ((x_1524 != 0i)) {
                let x_1530 : f32 = u_xlat4.z;
                x_1526 = x_1530;
              } else {
                let x_1532 : f32 = u_xlat20;
                x_1526 = x_1532;
              }
              let x_1533 : f32 = x_1526;
              u_xlat4.z = x_1533;
              let x_1535 : vec2<i32> = u_xlati15;
              u_xlati5 = ~(x_1535);
              let x_1538 : i32 = u_xlati5.y;
              let x_1541 : i32 = u_xlati5.x;
              u_xlati20 = bitcast<i32>((bitcast<u32>(x_1538) | bitcast<u32>(x_1541)));
              let x_1546 : f32 = u_xlat8.x;
              let x_1549 : f32 = u_xlat10.x;
              u_xlat5.x = ((x_1546 * 2.0f) + x_1549);
              let x_1553 : i32 = u_xlati15.y;
              if ((x_1553 != 0i)) {
                let x_1559 : f32 = u_xlat10.x;
                x_1555 = x_1559;
              } else {
                let x_1562 : f32 = u_xlat5.x;
                x_1555 = x_1562;
              }
              let x_1563 : f32 = x_1555;
              u_xlat10.x = x_1563;
              let x_1566 : f32 = u_xlat8.y;
              let x_1569 : f32 = u_xlat10.z;
              u_xlat5.x = ((x_1566 * 2.0f) + x_1569);
              let x_1573 : i32 = u_xlati15.y;
              if ((x_1573 != 0i)) {
                let x_1579 : f32 = u_xlat10.z;
                x_1575 = x_1579;
              } else {
                let x_1582 : f32 = u_xlat5.x;
                x_1575 = x_1582;
              }
              let x_1583 : f32 = x_1575;
              u_xlat10.z = x_1583;
              let x_1585 : i32 = u_xlati20;
              if ((x_1585 != 0i)) {
                let x_1590 : i32 = u_xlati15.x;
                if ((x_1590 == 0i)) {
                  let x_1594 : vec3<f32> = u_xlat4;
                  u_xlat5 = vec2<f32>(x_1594.x, x_1594.z);
                  let x_1596 : vec2<f32> = u_xlat5;
                  u_xlat5 = clamp(x_1596, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
                  let x_1600 : vec2<f32> = u_xlat5;
                  let x_1602 : f32 = x_23.x_RenderViewportScaleFactor;
                  u_xlat5 = (x_1600 * vec2<f32>(x_1602, x_1602));
                  let x_1608 : vec2<f32> = u_xlat5;
                  let x_1609 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_1608, 0.0f);
                  u_xlat3.x = x_1609.y;
                }
                let x_1613 : i32 = u_xlati15.y;
                if ((x_1613 == 0i)) {
                  let x_1617 : vec3<f32> = u_xlat10;
                  u_xlat5 = vec2<f32>(x_1617.x, x_1617.z);
                  let x_1619 : vec2<f32> = u_xlat5;
                  u_xlat5 = clamp(x_1619, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
                  let x_1623 : vec2<f32> = u_xlat5;
                  let x_1625 : f32 = x_23.x_RenderViewportScaleFactor;
                  u_xlat5 = (x_1623 * vec2<f32>(x_1625, x_1625));
                  let x_1631 : vec2<f32> = u_xlat5;
                  let x_1632 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_1631, 0.0f);
                  u_xlat3.y = x_1632.y;
                }
                let x_1635 : f32 = u_xlat12;
                let x_1639 : f32 = u_xlat3.x;
                u_xlat20 = ((-(x_1635) * 0.5f) + x_1639);
                let x_1642 : i32 = u_xlati15.x;
                if ((x_1642 != 0i)) {
                  let x_1648 : f32 = u_xlat3.x;
                  x_1644 = x_1648;
                } else {
                  let x_1650 : f32 = u_xlat20;
                  x_1644 = x_1650;
                }
                let x_1651 : f32 = x_1644;
                u_xlat3.x = x_1651;
                let x_1653 : f32 = u_xlat12;
                let x_1657 : f32 = u_xlat3.y;
                u_xlat20 = ((-(x_1653) * 0.5f) + x_1657);
                let x_1660 : i32 = u_xlati15.y;
                if ((x_1660 != 0i)) {
                  let x_1666 : f32 = u_xlat3.y;
                  x_1662 = x_1666;
                } else {
                  let x_1668 : f32 = u_xlat20;
                  x_1662 = x_1668;
                }
                let x_1669 : f32 = x_1662;
                u_xlat3.y = x_1669;
                let x_1671 : vec3<f32> = u_xlat3;
                let x_1674 : f32 = u_xlat19;
                let x_1676 : vec4<bool> = (abs(vec4<f32>(x_1671.x, x_1671.y, x_1671.x, x_1671.y)) >= vec4<f32>(x_1674, x_1674, x_1674, x_1674));
                u_xlati15 = bitcast<vec2<i32>>((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_1676.x, x_1676.y)) * vec2<u32>(4294967295u, 4294967295u)));
                let x_1683 : f32 = u_xlat8.x;
                let x_1687 : f32 = u_xlat4.x;
                u_xlat20 = ((-(x_1683) * 2.0f) + x_1687);
                let x_1690 : i32 = u_xlati15.x;
                if ((x_1690 != 0i)) {
                  let x_1696 : f32 = u_xlat4.x;
                  x_1692 = x_1696;
                } else {
                  let x_1698 : f32 = u_xlat20;
                  x_1692 = x_1698;
                }
                let x_1699 : f32 = x_1692;
                u_xlat4.x = x_1699;
                let x_1702 : f32 = u_xlat8.y;
                let x_1706 : f32 = u_xlat4.z;
                u_xlat20 = ((-(x_1702) * 2.0f) + x_1706);
                let x_1709 : i32 = u_xlati15.x;
                if ((x_1709 != 0i)) {
                  let x_1715 : f32 = u_xlat4.z;
                  x_1711 = x_1715;
                } else {
                  let x_1717 : f32 = u_xlat20;
                  x_1711 = x_1717;
                }
                let x_1718 : f32 = x_1711;
                u_xlat4.z = x_1718;
                let x_1720 : vec2<i32> = u_xlati15;
                u_xlati5 = ~(x_1720);
                let x_1723 : i32 = u_xlati5.y;
                let x_1726 : i32 = u_xlati5.x;
                u_xlati20 = bitcast<i32>((bitcast<u32>(x_1723) | bitcast<u32>(x_1726)));
                let x_1731 : f32 = u_xlat8.x;
                let x_1734 : f32 = u_xlat10.x;
                u_xlat5.x = ((x_1731 * 2.0f) + x_1734);
                let x_1738 : i32 = u_xlati15.y;
                if ((x_1738 != 0i)) {
                  let x_1744 : f32 = u_xlat10.x;
                  x_1740 = x_1744;
                } else {
                  let x_1747 : f32 = u_xlat5.x;
                  x_1740 = x_1747;
                }
                let x_1748 : f32 = x_1740;
                u_xlat10.x = x_1748;
                let x_1751 : f32 = u_xlat8.y;
                let x_1754 : f32 = u_xlat10.z;
                u_xlat5.x = ((x_1751 * 2.0f) + x_1754);
                let x_1758 : i32 = u_xlati15.y;
                if ((x_1758 != 0i)) {
                  let x_1764 : f32 = u_xlat10.z;
                  x_1760 = x_1764;
                } else {
                  let x_1767 : f32 = u_xlat5.x;
                  x_1760 = x_1767;
                }
                let x_1768 : f32 = x_1760;
                u_xlat10.z = x_1768;
                let x_1770 : i32 = u_xlati20;
                if ((x_1770 != 0i)) {
                  let x_1775 : i32 = u_xlati15.x;
                  if ((x_1775 == 0i)) {
                    let x_1779 : vec3<f32> = u_xlat4;
                    u_xlat5 = vec2<f32>(x_1779.x, x_1779.z);
                    let x_1781 : vec2<f32> = u_xlat5;
                    u_xlat5 = clamp(x_1781, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
                    let x_1785 : vec2<f32> = u_xlat5;
                    let x_1787 : f32 = x_23.x_RenderViewportScaleFactor;
                    u_xlat5 = (x_1785 * vec2<f32>(x_1787, x_1787));
                    let x_1793 : vec2<f32> = u_xlat5;
                    let x_1794 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_1793, 0.0f);
                    u_xlat3.x = x_1794.y;
                  }
                  let x_1798 : i32 = u_xlati15.y;
                  if ((x_1798 == 0i)) {
                    let x_1802 : vec3<f32> = u_xlat10;
                    u_xlat5 = vec2<f32>(x_1802.x, x_1802.z);
                    let x_1804 : vec2<f32> = u_xlat5;
                    u_xlat5 = clamp(x_1804, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
                    let x_1808 : vec2<f32> = u_xlat5;
                    let x_1810 : f32 = x_23.x_RenderViewportScaleFactor;
                    u_xlat5 = (x_1808 * vec2<f32>(x_1810, x_1810));
                    let x_1816 : vec2<f32> = u_xlat5;
                    let x_1817 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_1816, 0.0f);
                    u_xlat3.y = x_1817.y;
                  }
                  let x_1820 : f32 = u_xlat12;
                  let x_1824 : f32 = u_xlat3.x;
                  u_xlat20 = ((-(x_1820) * 0.5f) + x_1824);
                  let x_1827 : i32 = u_xlati15.x;
                  if ((x_1827 != 0i)) {
                    let x_1833 : f32 = u_xlat3.x;
                    x_1829 = x_1833;
                  } else {
                    let x_1835 : f32 = u_xlat20;
                    x_1829 = x_1835;
                  }
                  let x_1836 : f32 = x_1829;
                  u_xlat3.x = x_1836;
                  let x_1838 : f32 = u_xlat12;
                  let x_1842 : f32 = u_xlat3.y;
                  u_xlat20 = ((-(x_1838) * 0.5f) + x_1842);
                  let x_1845 : i32 = u_xlati15.y;
                  if ((x_1845 != 0i)) {
                    let x_1851 : f32 = u_xlat3.y;
                    x_1847 = x_1851;
                  } else {
                    let x_1853 : f32 = u_xlat20;
                    x_1847 = x_1853;
                  }
                  let x_1854 : f32 = x_1847;
                  u_xlat3.y = x_1854;
                  let x_1856 : vec3<f32> = u_xlat3;
                  let x_1859 : f32 = u_xlat19;
                  let x_1861 : vec4<bool> = (abs(vec4<f32>(x_1856.x, x_1856.y, x_1856.x, x_1856.y)) >= vec4<f32>(x_1859, x_1859, x_1859, x_1859));
                  u_xlati15 = bitcast<vec2<i32>>((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_1861.x, x_1861.y)) * vec2<u32>(4294967295u, 4294967295u)));
                  let x_1868 : f32 = u_xlat8.x;
                  let x_1872 : f32 = u_xlat4.x;
                  u_xlat20 = ((-(x_1868) * 2.0f) + x_1872);
                  let x_1875 : i32 = u_xlati15.x;
                  if ((x_1875 != 0i)) {
                    let x_1881 : f32 = u_xlat4.x;
                    x_1877 = x_1881;
                  } else {
                    let x_1883 : f32 = u_xlat20;
                    x_1877 = x_1883;
                  }
                  let x_1884 : f32 = x_1877;
                  u_xlat4.x = x_1884;
                  let x_1887 : f32 = u_xlat8.y;
                  let x_1891 : f32 = u_xlat4.z;
                  u_xlat20 = ((-(x_1887) * 2.0f) + x_1891);
                  let x_1894 : i32 = u_xlati15.x;
                  if ((x_1894 != 0i)) {
                    let x_1900 : f32 = u_xlat4.z;
                    x_1896 = x_1900;
                  } else {
                    let x_1902 : f32 = u_xlat20;
                    x_1896 = x_1902;
                  }
                  let x_1903 : f32 = x_1896;
                  u_xlat4.z = x_1903;
                  let x_1905 : vec2<i32> = u_xlati15;
                  u_xlati5 = ~(x_1905);
                  let x_1908 : i32 = u_xlati5.y;
                  let x_1911 : i32 = u_xlati5.x;
                  u_xlati20 = bitcast<i32>((bitcast<u32>(x_1908) | bitcast<u32>(x_1911)));
                  let x_1916 : f32 = u_xlat8.x;
                  let x_1919 : f32 = u_xlat10.x;
                  u_xlat5.x = ((x_1916 * 2.0f) + x_1919);
                  let x_1923 : i32 = u_xlati15.y;
                  if ((x_1923 != 0i)) {
                    let x_1929 : f32 = u_xlat10.x;
                    x_1925 = x_1929;
                  } else {
                    let x_1932 : f32 = u_xlat5.x;
                    x_1925 = x_1932;
                  }
                  let x_1933 : f32 = x_1925;
                  u_xlat10.x = x_1933;
                  let x_1936 : f32 = u_xlat8.y;
                  let x_1939 : f32 = u_xlat10.z;
                  u_xlat5.x = ((x_1936 * 2.0f) + x_1939);
                  let x_1943 : i32 = u_xlati15.y;
                  if ((x_1943 != 0i)) {
                    let x_1949 : f32 = u_xlat10.z;
                    x_1945 = x_1949;
                  } else {
                    let x_1952 : f32 = u_xlat5.x;
                    x_1945 = x_1952;
                  }
                  let x_1953 : f32 = x_1945;
                  u_xlat10.z = x_1953;
                  let x_1955 : i32 = u_xlati20;
                  if ((x_1955 != 0i)) {
                    let x_1960 : i32 = u_xlati15.x;
                    if ((x_1960 == 0i)) {
                      let x_1964 : vec3<f32> = u_xlat4;
                      u_xlat5 = vec2<f32>(x_1964.x, x_1964.z);
                      let x_1966 : vec2<f32> = u_xlat5;
                      u_xlat5 = clamp(x_1966, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
                      let x_1970 : vec2<f32> = u_xlat5;
                      let x_1972 : f32 = x_23.x_RenderViewportScaleFactor;
                      u_xlat5 = (x_1970 * vec2<f32>(x_1972, x_1972));
                      let x_1978 : vec2<f32> = u_xlat5;
                      let x_1979 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_1978, 0.0f);
                      u_xlat3.x = x_1979.y;
                    }
                    let x_1983 : i32 = u_xlati15.y;
                    if ((x_1983 == 0i)) {
                      let x_1987 : vec3<f32> = u_xlat10;
                      u_xlat5 = vec2<f32>(x_1987.x, x_1987.z);
                      let x_1989 : vec2<f32> = u_xlat5;
                      u_xlat5 = clamp(x_1989, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
                      let x_1993 : vec2<f32> = u_xlat5;
                      let x_1995 : f32 = x_23.x_RenderViewportScaleFactor;
                      u_xlat5 = (x_1993 * vec2<f32>(x_1995, x_1995));
                      let x_2001 : vec2<f32> = u_xlat5;
                      let x_2002 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_2001, 0.0f);
                      u_xlat3.y = x_2002.y;
                    }
                    let x_2005 : f32 = u_xlat12;
                    let x_2009 : f32 = u_xlat3.x;
                    u_xlat20 = ((-(x_2005) * 0.5f) + x_2009);
                    let x_2012 : i32 = u_xlati15.x;
                    if ((x_2012 != 0i)) {
                      let x_2018 : f32 = u_xlat3.x;
                      x_2014 = x_2018;
                    } else {
                      let x_2020 : f32 = u_xlat20;
                      x_2014 = x_2020;
                    }
                    let x_2021 : f32 = x_2014;
                    u_xlat3.x = x_2021;
                    let x_2023 : f32 = u_xlat12;
                    let x_2027 : f32 = u_xlat3.y;
                    u_xlat20 = ((-(x_2023) * 0.5f) + x_2027);
                    let x_2030 : i32 = u_xlati15.y;
                    if ((x_2030 != 0i)) {
                      let x_2036 : f32 = u_xlat3.y;
                      x_2032 = x_2036;
                    } else {
                      let x_2038 : f32 = u_xlat20;
                      x_2032 = x_2038;
                    }
                    let x_2039 : f32 = x_2032;
                    u_xlat3.y = x_2039;
                    let x_2041 : vec3<f32> = u_xlat3;
                    let x_2044 : f32 = u_xlat19;
                    let x_2046 : vec4<bool> = (abs(vec4<f32>(x_2041.x, x_2041.y, x_2041.x, x_2041.y)) >= vec4<f32>(x_2044, x_2044, x_2044, x_2044));
                    u_xlati15 = bitcast<vec2<i32>>((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_2046.x, x_2046.y)) * vec2<u32>(4294967295u, 4294967295u)));
                    let x_2053 : f32 = u_xlat8.x;
                    let x_2058 : f32 = u_xlat4.x;
                    u_xlat20 = ((-(x_2053) * 4.0f) + x_2058);
                    let x_2061 : i32 = u_xlati15.x;
                    if ((x_2061 != 0i)) {
                      let x_2067 : f32 = u_xlat4.x;
                      x_2063 = x_2067;
                    } else {
                      let x_2069 : f32 = u_xlat20;
                      x_2063 = x_2069;
                    }
                    let x_2070 : f32 = x_2063;
                    u_xlat4.x = x_2070;
                    let x_2073 : f32 = u_xlat8.y;
                    let x_2077 : f32 = u_xlat4.z;
                    u_xlat20 = ((-(x_2073) * 4.0f) + x_2077);
                    let x_2080 : i32 = u_xlati15.x;
                    if ((x_2080 != 0i)) {
                      let x_2086 : f32 = u_xlat4.z;
                      x_2082 = x_2086;
                    } else {
                      let x_2088 : f32 = u_xlat20;
                      x_2082 = x_2088;
                    }
                    let x_2089 : f32 = x_2082;
                    u_xlat4.z = x_2089;
                    let x_2091 : vec2<i32> = u_xlati15;
                    u_xlati5 = ~(x_2091);
                    let x_2094 : i32 = u_xlati5.y;
                    let x_2097 : i32 = u_xlati5.x;
                    u_xlati20 = bitcast<i32>((bitcast<u32>(x_2094) | bitcast<u32>(x_2097)));
                    let x_2102 : f32 = u_xlat8.x;
                    let x_2105 : f32 = u_xlat10.x;
                    u_xlat5.x = ((x_2102 * 4.0f) + x_2105);
                    let x_2109 : i32 = u_xlati15.y;
                    if ((x_2109 != 0i)) {
                      let x_2115 : f32 = u_xlat10.x;
                      x_2111 = x_2115;
                    } else {
                      let x_2118 : f32 = u_xlat5.x;
                      x_2111 = x_2118;
                    }
                    let x_2119 : f32 = x_2111;
                    u_xlat10.x = x_2119;
                    let x_2122 : f32 = u_xlat8.y;
                    let x_2125 : f32 = u_xlat10.z;
                    u_xlat5.x = ((x_2122 * 4.0f) + x_2125);
                    let x_2129 : i32 = u_xlati15.y;
                    if ((x_2129 != 0i)) {
                      let x_2135 : f32 = u_xlat10.z;
                      x_2131 = x_2135;
                    } else {
                      let x_2138 : f32 = u_xlat5.x;
                      x_2131 = x_2138;
                    }
                    let x_2139 : f32 = x_2131;
                    u_xlat10.z = x_2139;
                    let x_2141 : i32 = u_xlati20;
                    if ((x_2141 != 0i)) {
                      let x_2146 : i32 = u_xlati15.x;
                      if ((x_2146 == 0i)) {
                        let x_2150 : vec3<f32> = u_xlat4;
                        u_xlat5 = vec2<f32>(x_2150.x, x_2150.z);
                        let x_2152 : vec2<f32> = u_xlat5;
                        u_xlat5 = clamp(x_2152, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
                        let x_2156 : vec2<f32> = u_xlat5;
                        let x_2158 : f32 = x_23.x_RenderViewportScaleFactor;
                        u_xlat5 = (x_2156 * vec2<f32>(x_2158, x_2158));
                        let x_2164 : vec2<f32> = u_xlat5;
                        let x_2165 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_2164, 0.0f);
                        u_xlat3.x = x_2165.y;
                      }
                      let x_2169 : i32 = u_xlati15.y;
                      if ((x_2169 == 0i)) {
                        let x_2173 : vec3<f32> = u_xlat10;
                        u_xlat5 = vec2<f32>(x_2173.x, x_2173.z);
                        let x_2175 : vec2<f32> = u_xlat5;
                        u_xlat5 = clamp(x_2175, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
                        let x_2179 : vec2<f32> = u_xlat5;
                        let x_2181 : f32 = x_23.x_RenderViewportScaleFactor;
                        u_xlat5 = (x_2179 * vec2<f32>(x_2181, x_2181));
                        let x_2187 : vec2<f32> = u_xlat5;
                        let x_2188 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_2187, 0.0f);
                        u_xlat3.y = x_2188.y;
                      }
                      let x_2191 : f32 = u_xlat12;
                      let x_2195 : f32 = u_xlat3.x;
                      u_xlat20 = ((-(x_2191) * 0.5f) + x_2195);
                      let x_2198 : i32 = u_xlati15.x;
                      if ((x_2198 != 0i)) {
                        let x_2204 : f32 = u_xlat3.x;
                        x_2200 = x_2204;
                      } else {
                        let x_2206 : f32 = u_xlat20;
                        x_2200 = x_2206;
                      }
                      let x_2207 : f32 = x_2200;
                      u_xlat3.x = x_2207;
                      let x_2209 : f32 = u_xlat12;
                      let x_2213 : f32 = u_xlat3.y;
                      u_xlat12 = ((-(x_2209) * 0.5f) + x_2213);
                      let x_2216 : i32 = u_xlati15.y;
                      if ((x_2216 != 0i)) {
                        let x_2222 : f32 = u_xlat3.y;
                        x_2218 = x_2222;
                      } else {
                        let x_2224 : f32 = u_xlat12;
                        x_2218 = x_2224;
                      }
                      let x_2225 : f32 = x_2218;
                      u_xlat3.y = x_2225;
                      let x_2229 : vec3<f32> = u_xlat3;
                      let x_2232 : f32 = u_xlat19;
                      let x_2234 : vec4<bool> = (abs(vec4<f32>(x_2229.x, x_2229.y, x_2229.x, x_2229.y)) >= vec4<f32>(x_2232, x_2232, x_2232, x_2232));
                      u_xlatb15 = vec2<bool>(x_2234.x, x_2234.y);
                      let x_2237 : f32 = u_xlat8.x;
                      let x_2242 : f32 = u_xlat4.x;
                      u_xlat12 = ((-(x_2237) * 8.0f) + x_2242);
                      let x_2245 : bool = u_xlatb15.x;
                      if (x_2245) {
                        let x_2250 : f32 = u_xlat4.x;
                        x_2246 = x_2250;
                      } else {
                        let x_2252 : f32 = u_xlat12;
                        x_2246 = x_2252;
                      }
                      let x_2253 : f32 = x_2246;
                      u_xlat4.x = x_2253;
                      let x_2256 : f32 = u_xlat8.y;
                      let x_2260 : f32 = u_xlat4.z;
                      u_xlat12 = ((-(x_2256) * 8.0f) + x_2260);
                      let x_2263 : bool = u_xlatb15.x;
                      if (x_2263) {
                        let x_2268 : f32 = u_xlat4.z;
                        x_2264 = x_2268;
                      } else {
                        let x_2270 : f32 = u_xlat12;
                        x_2264 = x_2270;
                      }
                      let x_2271 : f32 = x_2264;
                      u_xlat4.z = x_2271;
                      let x_2274 : f32 = u_xlat8.x;
                      let x_2277 : f32 = u_xlat10.x;
                      u_xlat12 = ((x_2274 * 8.0f) + x_2277);
                      let x_2280 : bool = u_xlatb15.y;
                      if (x_2280) {
                        let x_2285 : f32 = u_xlat10.x;
                        x_2281 = x_2285;
                      } else {
                        let x_2287 : f32 = u_xlat12;
                        x_2281 = x_2287;
                      }
                      let x_2288 : f32 = x_2281;
                      u_xlat10.x = x_2288;
                      let x_2291 : f32 = u_xlat8.y;
                      let x_2294 : f32 = u_xlat10.z;
                      u_xlat12 = ((x_2291 * 8.0f) + x_2294);
                      let x_2297 : bool = u_xlatb15.y;
                      if (x_2297) {
                        let x_2302 : f32 = u_xlat10.z;
                        x_2298 = x_2302;
                      } else {
                        let x_2304 : f32 = u_xlat12;
                        x_2298 = x_2304;
                      }
                      let x_2305 : f32 = x_2298;
                      u_xlat10.z = x_2305;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
    let x_2308 : f32 = u_xlat4.x;
    let x_2311 : f32 = vs_TEXCOORD0.x;
    u_xlat12 = (-(x_2308) + x_2311);
    let x_2314 : f32 = u_xlat10.x;
    let x_2316 : f32 = vs_TEXCOORD0.x;
    u_xlat19 = (x_2314 + -(x_2316));
    let x_2320 : f32 = u_xlat4.z;
    let x_2323 : f32 = vs_TEXCOORD0.y;
    u_xlat8.x = (-(x_2320) + x_2323);
    let x_2326 : bool = u_xlatb0;
    if (x_2326) {
      let x_2330 : f32 = u_xlat12;
      x_2327 = x_2330;
    } else {
      let x_2333 : f32 = u_xlat8.x;
      x_2327 = x_2333;
    }
    let x_2334 : f32 = x_2327;
    u_xlat12 = x_2334;
    let x_2336 : f32 = u_xlat10.z;
    let x_2338 : f32 = vs_TEXCOORD0.y;
    u_xlat8.x = (x_2336 + -(x_2338));
    let x_2342 : bool = u_xlatb0;
    if (x_2342) {
      let x_2346 : f32 = u_xlat19;
      x_2343 = x_2346;
    } else {
      let x_2349 : f32 = u_xlat8.x;
      x_2343 = x_2349;
    }
    let x_2350 : f32 = x_2343;
    u_xlat19 = x_2350;
    let x_2352 : vec3<f32> = u_xlat3;
    let x_2355 : vec4<bool> = (vec4<f32>(x_2352.x, x_2352.y, x_2352.x, x_2352.x) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
    u_xlati8 = bitcast<vec2<i32>>((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_2355.x, x_2355.y)) * vec2<u32>(4294967295u, 4294967295u)));
    let x_2361 : f32 = u_xlat12;
    let x_2362 : f32 = u_xlat19;
    u_xlat20 = (x_2361 + x_2362);
    let x_2365 : i32 = u_xlati2;
    let x_2368 : vec2<i32> = u_xlati8;
    let x_2370 : vec4<bool> = (vec4<i32>(x_2365, x_2365, x_2365, x_2365) != vec4<i32>(x_2368.x, x_2368.y, x_2368.x, x_2368.x));
    u_xlatb2 = vec2<bool>(x_2370.x, x_2370.y);
    let x_2372 : f32 = u_xlat20;
    u_xlat14 = (1.0f / x_2372);
    let x_2374 : f32 = u_xlat12;
    let x_2375 : f32 = u_xlat19;
    u_xlatb20 = (x_2374 < x_2375);
    let x_2377 : f32 = u_xlat12;
    let x_2378 : f32 = u_xlat19;
    u_xlat12 = min(x_2377, x_2378);
    let x_2381 : bool = u_xlatb20;
    if (x_2381) {
      let x_2387 : bool = u_xlatb2.x;
      x_2383 = x_2387;
    } else {
      let x_2390 : bool = u_xlatb2.y;
      x_2383 = x_2390;
    }
    let x_2391 : bool = x_2383;
    u_xlatb19 = x_2391;
    let x_2393 : f32 = u_xlat6.x;
    let x_2395 : f32 = u_xlat6.x;
    u_xlat6.x = (x_2393 * x_2395);
    let x_2398 : f32 = u_xlat12;
    let x_2399 : f32 = u_xlat14;
    u_xlat12 = ((x_2398 * -(x_2399)) + 0.5f);
    let x_2403 : bool = u_xlatb19;
    let x_2404 : f32 = u_xlat12;
    u_xlat12 = select(0.0f, x_2404, x_2403);
    let x_2407 : f32 = u_xlat6.x;
    let x_2408 : f32 = u_xlat12;
    u_xlat6.x = max(x_2407, x_2408);
    let x_2411 : vec3<f32> = u_xlat6;
    let x_2413 : f32 = u_xlat18;
    let x_2416 : vec2<f32> = vs_TEXCOORD0;
    let x_2417 : vec2<f32> = ((vec2<f32>(x_2411.x, x_2411.x) * vec2<f32>(x_2413, x_2413)) + x_2416);
    let x_2418 : vec3<f32> = u_xlat6;
    u_xlat6 = vec3<f32>(x_2417.x, x_2417.y, x_2418.z);
    let x_2420 : bool = u_xlatb0;
    if (x_2420) {
      let x_2425 : f32 = vs_TEXCOORD0.x;
      x_2421 = x_2425;
    } else {
      let x_2428 : f32 = u_xlat6.x;
      x_2421 = x_2428;
    }
    let x_2429 : f32 = x_2421;
    u_xlat2.x = x_2429;
    let x_2432 : f32 = u_xlat2.x;
    u_xlat2.x = clamp(x_2432, 0.0f, 1.0f);
    let x_2435 : bool = u_xlatb0;
    if (x_2435) {
      let x_2440 : f32 = u_xlat6.y;
      x_2436 = x_2440;
    } else {
      let x_2443 : f32 = vs_TEXCOORD0.y;
      x_2436 = x_2443;
    }
    let x_2444 : f32 = x_2436;
    u_xlat2.y = x_2444;
    let x_2447 : f32 = u_xlat2.y;
    u_xlat2.y = clamp(x_2447, 0.0f, 1.0f);
    let x_2450 : vec3<f32> = u_xlat2;
    let x_2453 : f32 = x_23.x_RenderViewportScaleFactor;
    u_xlat0 = (vec2<f32>(x_2450.x, x_2450.y) * vec2<f32>(x_2453, x_2453));
    let x_2459 : vec2<f32> = u_xlat0;
    let x_2460 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_2459, 0.0f);
    u_xlat1 = vec3<f32>(x_2460.x, x_2460.y, x_2460.z);
  }
  let x_2466 : vec2<f32> = vs_TEXCOORD1;
  let x_2467 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_2466);
  u_xlat0.x = x_2467.w;
  let x_2471 : vec2<f32> = vs_TEXCOORD0;
  let x_2474 : vec4<f32> = x_23.x_Dithering_Coords;
  let x_2478 : vec4<f32> = x_23.x_Dithering_Coords;
  let x_2480 : vec2<f32> = ((x_2471 * vec2<f32>(x_2474.x, x_2474.y)) + vec2<f32>(x_2478.z, x_2478.w));
  let x_2481 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_2480.x, x_2480.y, x_2481.z);
  let x_2488 : vec3<f32> = u_xlat6;
  let x_2490 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_2488.x, x_2488.y));
  u_xlat6.x = x_2490.w;
  let x_2494 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_2494 * 2.0f) + -1.0f);
  let x_2500 : f32 = u_xlat6.x;
  u_xlat12 = ((x_2500 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_2504 : f32 = u_xlat12;
  u_xlat12 = clamp(x_2504, 0.0f, 1.0f);
  let x_2506 : f32 = u_xlat12;
  u_xlat12 = ((x_2506 * 2.0f) + -1.0f);
  let x_2510 : f32 = u_xlat6.x;
  u_xlat6.x = (-(abs(x_2510)) + 1.0f);
  let x_2516 : f32 = u_xlat6.x;
  u_xlat6.x = sqrt(x_2516);
  let x_2520 : f32 = u_xlat6.x;
  u_xlat6.x = (-(x_2520) + 1.0f);
  let x_2525 : f32 = u_xlat6.x;
  let x_2526 : f32 = u_xlat12;
  u_xlat6.x = (x_2525 * x_2526);
  let x_2529 : vec3<f32> = u_xlat1;
  u_xlat2 = (x_2529 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_2533 : vec3<f32> = u_xlat1;
  u_xlat3 = max(abs(x_2533), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_2538 : vec3<f32> = u_xlat3;
  u_xlat3 = log2(x_2538);
  let x_2540 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_2540 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_2544 : vec3<f32> = u_xlat3;
  u_xlat3 = exp2(x_2544);
  let x_2546 : vec3<f32> = u_xlat3;
  u_xlat3 = ((x_2546 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_2558 : vec3<f32> = u_xlat1;
  let x_2560 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_2558.x, x_2558.y, x_2558.z, x_2558.x));
  u_xlatb1 = vec3<bool>(x_2560.x, x_2560.y, x_2560.z);
  let x_2563 : bool = u_xlatb1.x;
  if (x_2563) {
    let x_2568 : f32 = u_xlat2.x;
    x_2564 = x_2568;
  } else {
    let x_2571 : f32 = u_xlat3.x;
    x_2564 = x_2571;
  }
  let x_2572 : f32 = x_2564;
  u_xlat1.x = x_2572;
  let x_2575 : bool = u_xlatb1.y;
  if (x_2575) {
    let x_2580 : f32 = u_xlat2.y;
    x_2576 = x_2580;
  } else {
    let x_2583 : f32 = u_xlat3.y;
    x_2576 = x_2583;
  }
  let x_2584 : f32 = x_2576;
  u_xlat1.y = x_2584;
  let x_2587 : bool = u_xlatb1.z;
  if (x_2587) {
    let x_2592 : f32 = u_xlat2.z;
    x_2588 = x_2592;
  } else {
    let x_2595 : f32 = u_xlat3.z;
    x_2588 = x_2595;
  }
  let x_2596 : f32 = x_2588;
  u_xlat1.z = x_2596;
  let x_2598 : vec3<f32> = u_xlat6;
  let x_2603 : vec3<f32> = u_xlat1;
  u_xlat6 = ((vec3<f32>(x_2598.x, x_2598.x, x_2598.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + x_2603);
  let x_2605 : vec3<f32> = u_xlat6;
  u_xlat1 = (x_2605 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_2609 : vec3<f32> = u_xlat6;
  u_xlat2 = (x_2609 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_2613 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_2613 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_2617 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_2617), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_2620 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_2620);
  let x_2622 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_2622 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_2626 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_2626);
  let x_2631 : vec3<f32> = u_xlat6;
  let x_2633 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.040449999f) >= vec4<f32>(x_2631.x, x_2631.y, x_2631.z, x_2631.z));
  u_xlatb6 = vec3<bool>(x_2633.x, x_2633.y, x_2633.z);
  let x_2638 : bool = u_xlatb6.x;
  if (x_2638) {
    let x_2643 : f32 = u_xlat1.x;
    x_2639 = x_2643;
  } else {
    let x_2646 : f32 = u_xlat2.x;
    x_2639 = x_2646;
  }
  let x_2647 : f32 = x_2639;
  SV_Target0.x = x_2647;
  let x_2651 : bool = u_xlatb6.y;
  if (x_2651) {
    let x_2656 : f32 = u_xlat1.y;
    x_2652 = x_2656;
  } else {
    let x_2659 : f32 = u_xlat2.y;
    x_2652 = x_2659;
  }
  let x_2660 : f32 = x_2652;
  SV_Target0.y = x_2660;
  let x_2663 : bool = u_xlatb6.z;
  if (x_2663) {
    let x_2668 : f32 = u_xlat1.z;
    x_2664 = x_2668;
  } else {
    let x_2671 : f32 = u_xlat2.z;
    x_2664 = x_2671;
  }
  let x_2672 : f32 = x_2664;
  SV_Target0.z = x_2672;
  let x_2675 : f32 = u_xlat0.x;
  SV_Target0.w = x_2675;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

