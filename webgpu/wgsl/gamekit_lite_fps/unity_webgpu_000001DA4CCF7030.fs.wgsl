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
  var x_953 : f32;
  var x_972 : f32;
  var x_1001 : f32;
  var x_1021 : f32;
  var x_1090 : f32;
  var x_1108 : f32;
  var x_1136 : f32;
  var x_1154 : f32;
  var x_1171 : f32;
  var x_1188 : f32;
  var x_1217 : f32;
  var x_1233 : f32;
  var x_1273 : bool;
  var x_1311 : f32;
  var x_1326 : f32;
  var x_1454 : f32;
  var x_1466 : f32;
  var x_1478 : f32;
  var x_1529 : f32;
  var x_1542 : f32;
  var x_1554 : f32;
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
  u_xlat20 = (x_127 * 0.165999994f);
  let x_130 : f32 = u_xlat14;
  let x_133 : f32 = u_xlat8.x;
  u_xlat8.x = (-(x_130) + x_133);
  let x_136 : f32 = u_xlat20;
  u_xlat14 = max(x_136, 0.0625f);
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
        let x_948 : f32 = u_xlat4.x;
        u_xlat20 = ((-(x_943) * 4.0f) + x_948);
        let x_951 : i32 = u_xlati15.x;
        if ((x_951 != 0i)) {
          let x_957 : f32 = u_xlat4.x;
          x_953 = x_957;
        } else {
          let x_959 : f32 = u_xlat20;
          x_953 = x_959;
        }
        let x_960 : f32 = x_953;
        u_xlat4.x = x_960;
        let x_963 : f32 = u_xlat8.y;
        let x_967 : f32 = u_xlat4.z;
        u_xlat20 = ((-(x_963) * 4.0f) + x_967);
        let x_970 : i32 = u_xlati15.x;
        if ((x_970 != 0i)) {
          let x_976 : f32 = u_xlat4.z;
          x_972 = x_976;
        } else {
          let x_978 : f32 = u_xlat20;
          x_972 = x_978;
        }
        let x_979 : f32 = x_972;
        u_xlat4.z = x_979;
        let x_981 : vec2<i32> = u_xlati15;
        u_xlati5 = ~(x_981);
        let x_984 : i32 = u_xlati5.y;
        let x_987 : i32 = u_xlati5.x;
        u_xlati20 = bitcast<i32>((bitcast<u32>(x_984) | bitcast<u32>(x_987)));
        let x_992 : f32 = u_xlat8.x;
        let x_995 : f32 = u_xlat10.x;
        u_xlat5.x = ((x_992 * 4.0f) + x_995);
        let x_999 : i32 = u_xlati15.y;
        if ((x_999 != 0i)) {
          let x_1005 : f32 = u_xlat10.x;
          x_1001 = x_1005;
        } else {
          let x_1008 : f32 = u_xlat5.x;
          x_1001 = x_1008;
        }
        let x_1009 : f32 = x_1001;
        u_xlat10.x = x_1009;
        let x_1012 : f32 = u_xlat8.y;
        let x_1015 : f32 = u_xlat10.z;
        u_xlat5.x = ((x_1012 * 4.0f) + x_1015);
        let x_1019 : i32 = u_xlati15.y;
        if ((x_1019 != 0i)) {
          let x_1025 : f32 = u_xlat10.z;
          x_1021 = x_1025;
        } else {
          let x_1028 : f32 = u_xlat5.x;
          x_1021 = x_1028;
        }
        let x_1029 : f32 = x_1021;
        u_xlat10.z = x_1029;
        let x_1031 : i32 = u_xlati20;
        if ((x_1031 != 0i)) {
          let x_1036 : i32 = u_xlati15.x;
          if ((x_1036 == 0i)) {
            let x_1040 : vec3<f32> = u_xlat4;
            u_xlat5 = vec2<f32>(x_1040.x, x_1040.z);
            let x_1042 : vec2<f32> = u_xlat5;
            u_xlat5 = clamp(x_1042, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
            let x_1046 : vec2<f32> = u_xlat5;
            let x_1048 : f32 = x_23.x_RenderViewportScaleFactor;
            u_xlat5 = (x_1046 * vec2<f32>(x_1048, x_1048));
            let x_1054 : vec2<f32> = u_xlat5;
            let x_1055 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_1054, 0.0f);
            u_xlat3.x = x_1055.y;
          }
          let x_1059 : i32 = u_xlati15.y;
          if ((x_1059 == 0i)) {
            let x_1063 : vec3<f32> = u_xlat10;
            u_xlat5 = vec2<f32>(x_1063.x, x_1063.z);
            let x_1065 : vec2<f32> = u_xlat5;
            u_xlat5 = clamp(x_1065, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
            let x_1069 : vec2<f32> = u_xlat5;
            let x_1071 : f32 = x_23.x_RenderViewportScaleFactor;
            u_xlat5 = (x_1069 * vec2<f32>(x_1071, x_1071));
            let x_1077 : vec2<f32> = u_xlat5;
            let x_1078 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_1077, 0.0f);
            u_xlat3.y = x_1078.y;
          }
          let x_1081 : f32 = u_xlat12;
          let x_1085 : f32 = u_xlat3.x;
          u_xlat20 = ((-(x_1081) * 0.5f) + x_1085);
          let x_1088 : i32 = u_xlati15.x;
          if ((x_1088 != 0i)) {
            let x_1094 : f32 = u_xlat3.x;
            x_1090 = x_1094;
          } else {
            let x_1096 : f32 = u_xlat20;
            x_1090 = x_1096;
          }
          let x_1097 : f32 = x_1090;
          u_xlat3.x = x_1097;
          let x_1099 : f32 = u_xlat12;
          let x_1103 : f32 = u_xlat3.y;
          u_xlat12 = ((-(x_1099) * 0.5f) + x_1103);
          let x_1106 : i32 = u_xlati15.y;
          if ((x_1106 != 0i)) {
            let x_1112 : f32 = u_xlat3.y;
            x_1108 = x_1112;
          } else {
            let x_1114 : f32 = u_xlat12;
            x_1108 = x_1114;
          }
          let x_1115 : f32 = x_1108;
          u_xlat3.y = x_1115;
          let x_1119 : vec3<f32> = u_xlat3;
          let x_1122 : f32 = u_xlat19;
          let x_1124 : vec4<bool> = (abs(vec4<f32>(x_1119.x, x_1119.y, x_1119.x, x_1119.y)) >= vec4<f32>(x_1122, x_1122, x_1122, x_1122));
          u_xlatb15 = vec2<bool>(x_1124.x, x_1124.y);
          let x_1127 : f32 = u_xlat8.x;
          let x_1132 : f32 = u_xlat4.x;
          u_xlat12 = ((-(x_1127) * 12.0f) + x_1132);
          let x_1135 : bool = u_xlatb15.x;
          if (x_1135) {
            let x_1140 : f32 = u_xlat4.x;
            x_1136 = x_1140;
          } else {
            let x_1142 : f32 = u_xlat12;
            x_1136 = x_1142;
          }
          let x_1143 : f32 = x_1136;
          u_xlat4.x = x_1143;
          let x_1146 : f32 = u_xlat8.y;
          let x_1150 : f32 = u_xlat4.z;
          u_xlat12 = ((-(x_1146) * 12.0f) + x_1150);
          let x_1153 : bool = u_xlatb15.x;
          if (x_1153) {
            let x_1158 : f32 = u_xlat4.z;
            x_1154 = x_1158;
          } else {
            let x_1160 : f32 = u_xlat12;
            x_1154 = x_1160;
          }
          let x_1161 : f32 = x_1154;
          u_xlat4.z = x_1161;
          let x_1164 : f32 = u_xlat8.x;
          let x_1167 : f32 = u_xlat10.x;
          u_xlat12 = ((x_1164 * 12.0f) + x_1167);
          let x_1170 : bool = u_xlatb15.y;
          if (x_1170) {
            let x_1175 : f32 = u_xlat10.x;
            x_1171 = x_1175;
          } else {
            let x_1177 : f32 = u_xlat12;
            x_1171 = x_1177;
          }
          let x_1178 : f32 = x_1171;
          u_xlat10.x = x_1178;
          let x_1181 : f32 = u_xlat8.y;
          let x_1184 : f32 = u_xlat10.z;
          u_xlat12 = ((x_1181 * 12.0f) + x_1184);
          let x_1187 : bool = u_xlatb15.y;
          if (x_1187) {
            let x_1192 : f32 = u_xlat10.z;
            x_1188 = x_1192;
          } else {
            let x_1194 : f32 = u_xlat12;
            x_1188 = x_1194;
          }
          let x_1195 : f32 = x_1188;
          u_xlat10.z = x_1195;
        }
      }
    }
    let x_1198 : f32 = u_xlat4.x;
    let x_1201 : f32 = vs_TEXCOORD0.x;
    u_xlat12 = (-(x_1198) + x_1201);
    let x_1204 : f32 = u_xlat10.x;
    let x_1206 : f32 = vs_TEXCOORD0.x;
    u_xlat19 = (x_1204 + -(x_1206));
    let x_1210 : f32 = u_xlat4.z;
    let x_1213 : f32 = vs_TEXCOORD0.y;
    u_xlat8.x = (-(x_1210) + x_1213);
    let x_1216 : bool = u_xlatb0;
    if (x_1216) {
      let x_1220 : f32 = u_xlat12;
      x_1217 = x_1220;
    } else {
      let x_1223 : f32 = u_xlat8.x;
      x_1217 = x_1223;
    }
    let x_1224 : f32 = x_1217;
    u_xlat12 = x_1224;
    let x_1226 : f32 = u_xlat10.z;
    let x_1228 : f32 = vs_TEXCOORD0.y;
    u_xlat8.x = (x_1226 + -(x_1228));
    let x_1232 : bool = u_xlatb0;
    if (x_1232) {
      let x_1236 : f32 = u_xlat19;
      x_1233 = x_1236;
    } else {
      let x_1239 : f32 = u_xlat8.x;
      x_1233 = x_1239;
    }
    let x_1240 : f32 = x_1233;
    u_xlat19 = x_1240;
    let x_1242 : vec3<f32> = u_xlat3;
    let x_1245 : vec4<bool> = (vec4<f32>(x_1242.x, x_1242.y, x_1242.x, x_1242.x) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
    u_xlati8 = bitcast<vec2<i32>>((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_1245.x, x_1245.y)) * vec2<u32>(4294967295u, 4294967295u)));
    let x_1251 : f32 = u_xlat12;
    let x_1252 : f32 = u_xlat19;
    u_xlat20 = (x_1251 + x_1252);
    let x_1255 : i32 = u_xlati2;
    let x_1258 : vec2<i32> = u_xlati8;
    let x_1260 : vec4<bool> = (vec4<i32>(x_1255, x_1255, x_1255, x_1255) != vec4<i32>(x_1258.x, x_1258.y, x_1258.x, x_1258.x));
    u_xlatb2 = vec2<bool>(x_1260.x, x_1260.y);
    let x_1262 : f32 = u_xlat20;
    u_xlat14 = (1.0f / x_1262);
    let x_1264 : f32 = u_xlat12;
    let x_1265 : f32 = u_xlat19;
    u_xlatb20 = (x_1264 < x_1265);
    let x_1267 : f32 = u_xlat12;
    let x_1268 : f32 = u_xlat19;
    u_xlat12 = min(x_1267, x_1268);
    let x_1271 : bool = u_xlatb20;
    if (x_1271) {
      let x_1277 : bool = u_xlatb2.x;
      x_1273 = x_1277;
    } else {
      let x_1280 : bool = u_xlatb2.y;
      x_1273 = x_1280;
    }
    let x_1281 : bool = x_1273;
    u_xlatb19 = x_1281;
    let x_1283 : f32 = u_xlat6.x;
    let x_1285 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1283 * x_1285);
    let x_1288 : f32 = u_xlat12;
    let x_1289 : f32 = u_xlat14;
    u_xlat12 = ((x_1288 * -(x_1289)) + 0.5f);
    let x_1293 : bool = u_xlatb19;
    let x_1294 : f32 = u_xlat12;
    u_xlat12 = select(0.0f, x_1294, x_1293);
    let x_1297 : f32 = u_xlat6.x;
    let x_1298 : f32 = u_xlat12;
    u_xlat6.x = max(x_1297, x_1298);
    let x_1301 : vec3<f32> = u_xlat6;
    let x_1303 : f32 = u_xlat18;
    let x_1306 : vec2<f32> = vs_TEXCOORD0;
    let x_1307 : vec2<f32> = ((vec2<f32>(x_1301.x, x_1301.x) * vec2<f32>(x_1303, x_1303)) + x_1306);
    let x_1308 : vec3<f32> = u_xlat6;
    u_xlat6 = vec3<f32>(x_1307.x, x_1307.y, x_1308.z);
    let x_1310 : bool = u_xlatb0;
    if (x_1310) {
      let x_1315 : f32 = vs_TEXCOORD0.x;
      x_1311 = x_1315;
    } else {
      let x_1318 : f32 = u_xlat6.x;
      x_1311 = x_1318;
    }
    let x_1319 : f32 = x_1311;
    u_xlat2.x = x_1319;
    let x_1322 : f32 = u_xlat2.x;
    u_xlat2.x = clamp(x_1322, 0.0f, 1.0f);
    let x_1325 : bool = u_xlatb0;
    if (x_1325) {
      let x_1330 : f32 = u_xlat6.y;
      x_1326 = x_1330;
    } else {
      let x_1333 : f32 = vs_TEXCOORD0.y;
      x_1326 = x_1333;
    }
    let x_1334 : f32 = x_1326;
    u_xlat2.y = x_1334;
    let x_1337 : f32 = u_xlat2.y;
    u_xlat2.y = clamp(x_1337, 0.0f, 1.0f);
    let x_1340 : vec3<f32> = u_xlat2;
    let x_1343 : f32 = x_23.x_RenderViewportScaleFactor;
    u_xlat0 = (vec2<f32>(x_1340.x, x_1340.y) * vec2<f32>(x_1343, x_1343));
    let x_1349 : vec2<f32> = u_xlat0;
    let x_1350 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_1349, 0.0f);
    u_xlat1 = vec3<f32>(x_1350.x, x_1350.y, x_1350.z);
  }
  let x_1356 : vec2<f32> = vs_TEXCOORD1;
  let x_1357 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_1356);
  u_xlat0.x = x_1357.w;
  let x_1361 : vec2<f32> = vs_TEXCOORD0;
  let x_1364 : vec4<f32> = x_23.x_Dithering_Coords;
  let x_1368 : vec4<f32> = x_23.x_Dithering_Coords;
  let x_1370 : vec2<f32> = ((x_1361 * vec2<f32>(x_1364.x, x_1364.y)) + vec2<f32>(x_1368.z, x_1368.w));
  let x_1371 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_1370.x, x_1370.y, x_1371.z);
  let x_1378 : vec3<f32> = u_xlat6;
  let x_1380 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_1378.x, x_1378.y));
  u_xlat6.x = x_1380.w;
  let x_1384 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_1384 * 2.0f) + -1.0f);
  let x_1390 : f32 = u_xlat6.x;
  u_xlat12 = ((x_1390 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_1394 : f32 = u_xlat12;
  u_xlat12 = clamp(x_1394, 0.0f, 1.0f);
  let x_1396 : f32 = u_xlat12;
  u_xlat12 = ((x_1396 * 2.0f) + -1.0f);
  let x_1400 : f32 = u_xlat6.x;
  u_xlat6.x = (-(abs(x_1400)) + 1.0f);
  let x_1406 : f32 = u_xlat6.x;
  u_xlat6.x = sqrt(x_1406);
  let x_1410 : f32 = u_xlat6.x;
  u_xlat6.x = (-(x_1410) + 1.0f);
  let x_1415 : f32 = u_xlat6.x;
  let x_1416 : f32 = u_xlat12;
  u_xlat6.x = (x_1415 * x_1416);
  let x_1419 : vec3<f32> = u_xlat1;
  u_xlat2 = (x_1419 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1423 : vec3<f32> = u_xlat1;
  u_xlat3 = max(abs(x_1423), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1428 : vec3<f32> = u_xlat3;
  u_xlat3 = log2(x_1428);
  let x_1430 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_1430 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1434 : vec3<f32> = u_xlat3;
  u_xlat3 = exp2(x_1434);
  let x_1436 : vec3<f32> = u_xlat3;
  u_xlat3 = ((x_1436 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1448 : vec3<f32> = u_xlat1;
  let x_1450 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1448.x, x_1448.y, x_1448.z, x_1448.x));
  u_xlatb1 = vec3<bool>(x_1450.x, x_1450.y, x_1450.z);
  let x_1453 : bool = u_xlatb1.x;
  if (x_1453) {
    let x_1458 : f32 = u_xlat2.x;
    x_1454 = x_1458;
  } else {
    let x_1461 : f32 = u_xlat3.x;
    x_1454 = x_1461;
  }
  let x_1462 : f32 = x_1454;
  u_xlat1.x = x_1462;
  let x_1465 : bool = u_xlatb1.y;
  if (x_1465) {
    let x_1470 : f32 = u_xlat2.y;
    x_1466 = x_1470;
  } else {
    let x_1473 : f32 = u_xlat3.y;
    x_1466 = x_1473;
  }
  let x_1474 : f32 = x_1466;
  u_xlat1.y = x_1474;
  let x_1477 : bool = u_xlatb1.z;
  if (x_1477) {
    let x_1482 : f32 = u_xlat2.z;
    x_1478 = x_1482;
  } else {
    let x_1485 : f32 = u_xlat3.z;
    x_1478 = x_1485;
  }
  let x_1486 : f32 = x_1478;
  u_xlat1.z = x_1486;
  let x_1488 : vec3<f32> = u_xlat6;
  let x_1493 : vec3<f32> = u_xlat1;
  u_xlat6 = ((vec3<f32>(x_1488.x, x_1488.x, x_1488.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + x_1493);
  let x_1495 : vec3<f32> = u_xlat6;
  u_xlat1 = (x_1495 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1499 : vec3<f32> = u_xlat6;
  u_xlat2 = (x_1499 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1503 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1503 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1507 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_1507), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1510 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_1510);
  let x_1512 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1512 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1516 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_1516);
  let x_1521 : vec3<f32> = u_xlat6;
  let x_1523 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.040449999f) >= vec4<f32>(x_1521.x, x_1521.y, x_1521.z, x_1521.z));
  u_xlatb6 = vec3<bool>(x_1523.x, x_1523.y, x_1523.z);
  let x_1528 : bool = u_xlatb6.x;
  if (x_1528) {
    let x_1533 : f32 = u_xlat1.x;
    x_1529 = x_1533;
  } else {
    let x_1536 : f32 = u_xlat2.x;
    x_1529 = x_1536;
  }
  let x_1537 : f32 = x_1529;
  SV_Target0.x = x_1537;
  let x_1541 : bool = u_xlatb6.y;
  if (x_1541) {
    let x_1546 : f32 = u_xlat1.y;
    x_1542 = x_1546;
  } else {
    let x_1549 : f32 = u_xlat2.y;
    x_1542 = x_1549;
  }
  let x_1550 : f32 = x_1542;
  SV_Target0.y = x_1550;
  let x_1553 : bool = u_xlatb6.z;
  if (x_1553) {
    let x_1558 : f32 = u_xlat1.z;
    x_1554 = x_1558;
  } else {
    let x_1561 : f32 = u_xlat2.z;
    x_1554 = x_1561;
  }
  let x_1562 : f32 = x_1554;
  SV_Target0.z = x_1562;
  let x_1565 : f32 = u_xlat0.x;
  SV_Target0.w = x_1565;
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

