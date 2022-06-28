struct PGlobals {
  x_ScreenParams : vec4<f32>,
  x_Distortion_Amount : vec4<f32>,
  x_Distortion_CenterScale : vec4<f32>,
  x_Lut2D_Params : vec3<f32>,
  @size(4)
  padding : u32,
  x_Vignette_Color : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_Vignette_Center : vec2<f32>,
  @size(8)
  padding_2 : u32,
  x_Vignette_Settings : vec4<f32>,
  x_Vignette_Opacity : f32,
  x_Vignette_Mode : f32,
  x_LumaInAlpha : f32,
}

var<private> phase0_Input0_1 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> u_xlat0 : vec4<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(0) var<uniform> x_31 : PGlobals;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlatb7 : bool;

var<private> u_xlat12 : vec2<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec2<f32>;

var<private> u_xlat17 : f32;

var<private> u_xlat8 : f32;

var<private> u_xlat13 : f32;

var<private> u_xlat18 : f32;

var<private> u_xlatb4 : bool;

var<private> u_xlatb2 : vec3<bool>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat7 : f32;

var<private> u_xlatb8 : bool;

var<private> u_xlatb0 : vec3<bool>;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_AutoExposureTex : sampler;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

var<private> u_xlatb15 : bool;

var<private> u_xlat15 : f32;

@group(0) @binding(4) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(8) var sampler_Vignette_Mask : sampler;

var<private> u_xlat6 : f32;

@group(0) @binding(3) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(7) var sampler_Lut2D : sampler;

var<private> u_xlat10 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_224 : f32;
  var x_381 : f32;
  var x_411 : f32;
  var x_634 : f32;
  var hlslcc_movcTemp : vec4<f32>;
  var x_748 : f32;
  var x_760 : f32;
  var x_772 : f32;
  var x_900 : f32;
  var x_912 : f32;
  var x_924 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD0;
  let x_15 : vec2<f32> = vs_TEXCOORD1;
  phase0_Input0_1 = vec4<f32>(x_13.x, x_13.y, x_15.x, x_15.y);
  let x_22 : vec4<f32> = phase0_Input0_1;
  u_xlat0 = (x_22 + vec4<f32>(-0.5f, -0.5f, -0.5f, -0.5f));
  let x_27 : vec4<f32> = u_xlat0;
  let x_36 : vec4<f32> = x_31.x_Distortion_Amount;
  u_xlat1 = ((x_27 * vec4<f32>(x_36.z, x_36.z, x_36.z, x_36.z)) + vec4<f32>(0.5f, 0.5f, 0.5f, 0.5f));
  let x_42 : vec4<f32> = u_xlat0;
  let x_44 : vec4<f32> = x_31.x_Distortion_Amount;
  let x_49 : vec4<f32> = x_31.x_Distortion_CenterScale;
  u_xlat0 = ((x_42 * vec4<f32>(x_44.z, x_44.z, x_44.z, x_44.z)) + -(vec4<f32>(x_49.x, x_49.y, x_49.x, x_49.y)));
  let x_53 : vec4<f32> = u_xlat0;
  let x_55 : vec4<f32> = x_31.x_Distortion_CenterScale;
  u_xlat0 = (x_53 * vec4<f32>(x_55.z, x_55.w, x_55.z, x_55.w));
  let x_60 : vec4<f32> = u_xlat0;
  let x_62 : vec4<f32> = u_xlat0;
  u_xlat2.x = dot(vec2<f32>(x_60.x, x_60.y), vec2<f32>(x_62.x, x_62.y));
  let x_70 : f32 = u_xlat2.x;
  u_xlat2.x = sqrt(x_70);
  let x_80 : f32 = x_31.x_Distortion_Amount.w;
  u_xlatb7 = (0.0f < x_80);
  let x_82 : bool = u_xlatb7;
  if (x_82) {
    let x_87 : vec3<f32> = u_xlat2;
    let x_90 : vec4<f32> = x_31.x_Distortion_Amount;
    u_xlat12 = (vec2<f32>(x_87.x, x_87.x) * vec2<f32>(x_90.x, x_90.y));
    let x_95 : f32 = u_xlat12.x;
    u_xlat3.x = sin(x_95);
    let x_100 : f32 = u_xlat12.x;
    u_xlat4.x = cos(x_100);
    let x_104 : f32 = u_xlat3.x;
    let x_106 : f32 = u_xlat4.x;
    u_xlat12.x = (x_104 / x_106);
    let x_113 : f32 = u_xlat12.y;
    u_xlat17 = (1.0f / x_113);
    let x_116 : f32 = u_xlat12.x;
    let x_117 : f32 = u_xlat17;
    u_xlat12.x = ((x_116 * x_117) + -1.0f);
    let x_122 : vec4<f32> = u_xlat0;
    let x_124 : vec2<f32> = u_xlat12;
    let x_127 : vec4<f32> = u_xlat1;
    u_xlat12 = ((vec2<f32>(x_122.x, x_122.y) * vec2<f32>(x_124.x, x_124.x)) + vec2<f32>(x_127.x, x_127.y));
  } else {
    let x_132 : f32 = u_xlat2.x;
    u_xlat3.x = (1.0f / x_132);
    let x_136 : f32 = u_xlat3.x;
    let x_138 : f32 = x_31.x_Distortion_Amount.x;
    u_xlat3.x = (x_136 * x_138);
    let x_142 : f32 = u_xlat2.x;
    let x_144 : f32 = x_31.x_Distortion_Amount.y;
    u_xlat2.x = (x_142 * x_144);
    let x_149 : f32 = u_xlat2.x;
    u_xlat8 = min(abs(x_149), 1.0f);
    let x_154 : f32 = u_xlat2.x;
    u_xlat13 = max(abs(x_154), 1.0f);
    let x_157 : f32 = u_xlat13;
    u_xlat13 = (1.0f / x_157);
    let x_159 : f32 = u_xlat13;
    let x_160 : f32 = u_xlat8;
    u_xlat8 = (x_159 * x_160);
    let x_162 : f32 = u_xlat8;
    let x_163 : f32 = u_xlat8;
    u_xlat13 = (x_162 * x_163);
    let x_166 : f32 = u_xlat13;
    u_xlat18 = ((x_166 * 0.0208351f) + -0.085133001f);
    let x_171 : f32 = u_xlat13;
    let x_172 : f32 = u_xlat18;
    u_xlat18 = ((x_171 * x_172) + 0.180141002f);
    let x_176 : f32 = u_xlat13;
    let x_177 : f32 = u_xlat18;
    u_xlat18 = ((x_176 * x_177) + -0.330299497f);
    let x_181 : f32 = u_xlat13;
    let x_182 : f32 = u_xlat18;
    u_xlat13 = ((x_181 * x_182) + 0.999866009f);
    let x_186 : f32 = u_xlat13;
    let x_187 : f32 = u_xlat8;
    u_xlat18 = (x_186 * x_187);
    let x_191 : f32 = u_xlat2.x;
    u_xlatb4 = (1.0f < abs(x_191));
    let x_194 : f32 = u_xlat18;
    u_xlat18 = ((x_194 * -2.0f) + 1.570796371f);
    let x_199 : bool = u_xlatb4;
    let x_200 : f32 = u_xlat18;
    u_xlat18 = select(0.0f, x_200, x_199);
    let x_202 : f32 = u_xlat8;
    let x_203 : f32 = u_xlat13;
    let x_205 : f32 = u_xlat18;
    u_xlat8 = ((x_202 * x_203) + x_205);
    let x_208 : f32 = u_xlat2.x;
    u_xlat2.x = min(x_208, 1.0f);
    let x_215 : f32 = u_xlat2.x;
    let x_217 : f32 = u_xlat2.x;
    u_xlatb2.x = (x_215 < -(x_217));
    let x_222 : bool = u_xlatb2.x;
    if (x_222) {
      let x_227 : f32 = u_xlat8;
      x_224 = -(x_227);
    } else {
      let x_230 : f32 = u_xlat8;
      x_224 = x_230;
    }
    let x_231 : f32 = x_224;
    u_xlat2.x = x_231;
    let x_234 : f32 = u_xlat3.x;
    let x_236 : f32 = u_xlat2.x;
    u_xlat2.x = ((x_234 * x_236) + -1.0f);
    let x_240 : vec4<f32> = u_xlat0;
    let x_242 : vec3<f32> = u_xlat2;
    let x_245 : vec4<f32> = u_xlat1;
    u_xlat12 = ((vec2<f32>(x_240.x, x_240.y) * vec2<f32>(x_242.x, x_242.x)) + vec2<f32>(x_245.x, x_245.y));
  }
  let x_248 : vec4<f32> = u_xlat0;
  let x_250 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec2<f32>(x_248.z, x_248.w), vec2<f32>(x_250.z, x_250.w));
  let x_255 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_255);
  let x_258 : bool = u_xlatb7;
  if (x_258) {
    let x_261 : vec4<f32> = u_xlat0;
    let x_264 : vec4<f32> = x_31.x_Distortion_Amount;
    let x_266 : vec2<f32> = (vec2<f32>(x_261.x, x_261.x) * vec2<f32>(x_264.x, x_264.y));
    let x_267 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_266.x, x_266.y, x_267.z, x_267.w);
    let x_270 : f32 = u_xlat1.x;
    u_xlat2.x = cos(x_270);
    let x_274 : f32 = u_xlat1.x;
    u_xlat1.x = sin(x_274);
    let x_279 : f32 = u_xlat1.x;
    let x_281 : f32 = u_xlat2.x;
    u_xlat5.x = (x_279 / x_281);
    let x_285 : f32 = u_xlat1.y;
    u_xlat1.x = (1.0f / x_285);
    let x_289 : f32 = u_xlat5.x;
    let x_291 : f32 = u_xlat1.x;
    u_xlat5.x = ((x_289 * x_291) + -1.0f);
    let x_295 : vec4<f32> = u_xlat0;
    let x_297 : vec3<f32> = u_xlat5;
    let x_300 : vec4<f32> = u_xlat1;
    let x_302 : vec2<f32> = ((vec2<f32>(x_295.z, x_295.w) * vec2<f32>(x_297.x, x_297.x)) + vec2<f32>(x_300.z, x_300.w));
    let x_303 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_302.x, x_302.y, x_303.z, x_303.w);
  } else {
    let x_307 : f32 = u_xlat0.x;
    u_xlat5.x = (1.0f / x_307);
    let x_311 : f32 = u_xlat5.x;
    let x_313 : f32 = x_31.x_Distortion_Amount.x;
    u_xlat5.x = (x_311 * x_313);
    let x_317 : f32 = u_xlat0.x;
    let x_319 : f32 = x_31.x_Distortion_Amount.y;
    u_xlat0.x = (x_317 * x_319);
    let x_323 : f32 = u_xlat0.x;
    u_xlat2.x = min(abs(x_323), 1.0f);
    let x_329 : f32 = u_xlat0.x;
    u_xlat7 = max(abs(x_329), 1.0f);
    let x_332 : f32 = u_xlat7;
    u_xlat7 = (1.0f / x_332);
    let x_334 : f32 = u_xlat7;
    let x_336 : f32 = u_xlat2.x;
    u_xlat2.x = (x_334 * x_336);
    let x_340 : f32 = u_xlat2.x;
    let x_342 : f32 = u_xlat2.x;
    u_xlat7 = (x_340 * x_342);
    let x_344 : f32 = u_xlat7;
    u_xlat3.x = ((x_344 * 0.0208351f) + -0.085133001f);
    let x_348 : f32 = u_xlat7;
    let x_350 : f32 = u_xlat3.x;
    u_xlat3.x = ((x_348 * x_350) + 0.180141002f);
    let x_354 : f32 = u_xlat7;
    let x_356 : f32 = u_xlat3.x;
    u_xlat3.x = ((x_354 * x_356) + -0.330299497f);
    let x_360 : f32 = u_xlat7;
    let x_362 : f32 = u_xlat3.x;
    u_xlat7 = ((x_360 * x_362) + 0.999866009f);
    let x_365 : f32 = u_xlat7;
    let x_367 : f32 = u_xlat2.x;
    u_xlat3.x = (x_365 * x_367);
    let x_372 : f32 = u_xlat0.x;
    u_xlatb8 = (1.0f < abs(x_372));
    let x_376 : f32 = u_xlat3.x;
    u_xlat3.x = ((x_376 * -2.0f) + 1.570796371f);
    let x_380 : bool = u_xlatb8;
    if (x_380) {
      let x_385 : f32 = u_xlat3.x;
      x_381 = x_385;
    } else {
      x_381 = 0.0f;
    }
    let x_387 : f32 = x_381;
    u_xlat3.x = x_387;
    let x_390 : f32 = u_xlat2.x;
    let x_391 : f32 = u_xlat7;
    let x_394 : f32 = u_xlat3.x;
    u_xlat2.x = ((x_390 * x_391) + x_394);
    let x_398 : f32 = u_xlat0.x;
    u_xlat0.x = min(x_398, 1.0f);
    let x_403 : f32 = u_xlat0.x;
    let x_405 : f32 = u_xlat0.x;
    u_xlatb0.x = (x_403 < -(x_405));
    let x_410 : bool = u_xlatb0.x;
    if (x_410) {
      let x_415 : f32 = u_xlat2.x;
      x_411 = -(x_415);
    } else {
      let x_419 : f32 = u_xlat2.x;
      x_411 = x_419;
    }
    let x_420 : f32 = x_411;
    u_xlat0.x = x_420;
    let x_423 : f32 = u_xlat5.x;
    let x_425 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_423 * x_425) + -1.0f);
    let x_429 : vec4<f32> = u_xlat0;
    let x_431 : vec4<f32> = u_xlat0;
    let x_434 : vec4<f32> = u_xlat1;
    let x_436 : vec2<f32> = ((vec2<f32>(x_429.z, x_429.w) * vec2<f32>(x_431.x, x_431.x)) + vec2<f32>(x_434.z, x_434.w));
    let x_437 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_436.x, x_436.y, x_437.z, x_437.w);
  }
  let x_449 : vec4<f32> = phase0_Input0_1;
  let x_451 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, vec2<f32>(x_449.x, x_449.y));
  u_xlat0.x = x_451.x;
  let x_459 : vec4<f32> = u_xlat1;
  let x_461 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_459.x, x_459.y));
  u_xlat1 = x_461;
  let x_462 : vec4<f32> = u_xlat0;
  let x_464 : vec4<f32> = u_xlat1;
  let x_466 : vec3<f32> = (vec3<f32>(x_462.x, x_462.x, x_462.x) * vec3<f32>(x_464.x, x_464.y, x_464.z));
  let x_467 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_466.x, x_466.y, x_466.z, x_467.w);
  let x_472 : f32 = x_31.x_Vignette_Mode;
  u_xlatb15 = (x_472 < 0.5f);
  let x_474 : bool = u_xlatb15;
  if (x_474) {
    let x_477 : vec2<f32> = u_xlat12;
    let x_481 : vec2<f32> = x_31.x_Vignette_Center;
    let x_483 : vec2<f32> = (x_477 + -(x_481));
    let x_484 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_483.x, x_483.y, x_484.z, x_484.w);
    let x_486 : vec4<f32> = u_xlat1;
    let x_491 : vec4<f32> = x_31.x_Vignette_Settings;
    let x_493 : vec2<f32> = (abs(vec2<f32>(x_486.y, x_486.x)) * vec2<f32>(x_491.x, x_491.x));
    let x_494 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_494.x, x_493.x, x_493.y, x_494.w);
    let x_499 : f32 = x_31.x_ScreenParams.x;
    let x_501 : f32 = x_31.x_ScreenParams.y;
    u_xlat15 = (x_499 / x_501);
    let x_503 : f32 = u_xlat15;
    u_xlat15 = (x_503 + -1.0f);
    let x_506 : f32 = x_31.x_Vignette_Settings.w;
    let x_507 : f32 = u_xlat15;
    u_xlat15 = ((x_506 * x_507) + 1.0f);
    let x_510 : f32 = u_xlat15;
    let x_513 : f32 = u_xlat1.z;
    u_xlat1.x = (x_510 * x_513);
    let x_516 : vec4<f32> = u_xlat1;
    let x_517 : vec2<f32> = vec2<f32>(x_516.x, x_516.y);
    let x_518 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_517.x, x_517.y, x_518.z, x_518.w);
    let x_520 : vec4<f32> = u_xlat1;
    let x_524 : vec2<f32> = clamp(vec2<f32>(x_520.x, x_520.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_525 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_524.x, x_524.y, x_525.z, x_525.w);
    let x_527 : vec4<f32> = u_xlat1;
    let x_529 : vec2<f32> = log2(vec2<f32>(x_527.x, x_527.y));
    let x_530 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_529.x, x_529.y, x_530.z, x_530.w);
    let x_532 : vec4<f32> = u_xlat1;
    let x_535 : vec4<f32> = x_31.x_Vignette_Settings;
    let x_537 : vec2<f32> = (vec2<f32>(x_532.x, x_532.y) * vec2<f32>(x_535.z, x_535.z));
    let x_538 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_537.x, x_537.y, x_538.z, x_538.w);
    let x_540 : vec4<f32> = u_xlat1;
    let x_542 : vec2<f32> = exp2(vec2<f32>(x_540.x, x_540.y));
    let x_543 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_542.x, x_542.y, x_543.z, x_543.w);
    let x_545 : vec4<f32> = u_xlat1;
    let x_547 : vec4<f32> = u_xlat1;
    u_xlat15 = dot(vec2<f32>(x_545.x, x_545.y), vec2<f32>(x_547.x, x_547.y));
    let x_550 : f32 = u_xlat15;
    u_xlat15 = (-(x_550) + 1.0f);
    let x_553 : f32 = u_xlat15;
    u_xlat15 = max(x_553, 0.0f);
    let x_555 : f32 = u_xlat15;
    u_xlat15 = log2(x_555);
    let x_557 : f32 = u_xlat15;
    let x_559 : f32 = x_31.x_Vignette_Settings.y;
    u_xlat15 = (x_557 * x_559);
    let x_561 : f32 = u_xlat15;
    u_xlat15 = exp2(x_561);
    let x_566 : vec3<f32> = x_31.x_Vignette_Color;
    let x_569 : vec3<f32> = (-(x_566) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_570 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_569.x, x_569.y, x_569.z, x_570.w);
    let x_572 : f32 = u_xlat15;
    let x_574 : vec4<f32> = u_xlat1;
    let x_578 : vec3<f32> = x_31.x_Vignette_Color;
    let x_579 : vec3<f32> = ((vec3<f32>(x_572, x_572, x_572) * vec3<f32>(x_574.x, x_574.y, x_574.z)) + x_578);
    let x_580 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_579.x, x_579.y, x_579.z, x_580.w);
    let x_582 : vec4<f32> = u_xlat0;
    let x_584 : vec4<f32> = u_xlat1;
    let x_586 : vec3<f32> = (vec3<f32>(x_582.x, x_582.y, x_582.z) * vec3<f32>(x_584.x, x_584.y, x_584.z));
    let x_587 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_586.x, x_586.y, x_586.z, x_587.w);
    let x_590 : f32 = u_xlat1.w;
    u_xlat1.x = (x_590 + -1.0f);
    let x_593 : f32 = u_xlat15;
    let x_595 : f32 = u_xlat1.x;
    u_xlat3.w = ((x_593 * x_595) + 1.0f);
  } else {
    let x_605 : vec2<f32> = u_xlat12;
    let x_606 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_605);
    u_xlat15 = x_606.w;
    let x_608 : f32 = u_xlat15;
    u_xlat1.x = (x_608 * 0.077399381f);
    let x_613 : f32 = u_xlat15;
    u_xlat6 = (x_613 + 0.055f);
    let x_616 : f32 = u_xlat6;
    u_xlat6 = (x_616 * 0.947867334f);
    let x_619 : f32 = u_xlat6;
    u_xlat6 = max(abs(x_619), 1.1920929e-07f);
    let x_623 : f32 = u_xlat6;
    u_xlat6 = log2(x_623);
    let x_625 : f32 = u_xlat6;
    u_xlat6 = (x_625 * 2.400000095f);
    let x_628 : f32 = u_xlat6;
    u_xlat6 = exp2(x_628);
    let x_631 : f32 = u_xlat15;
    u_xlatb15 = (0.040449999f >= x_631);
    let x_633 : bool = u_xlatb15;
    if (x_633) {
      let x_638 : f32 = u_xlat1.x;
      x_634 = x_638;
    } else {
      let x_640 : f32 = u_xlat6;
      x_634 = x_640;
    }
    let x_641 : f32 = x_634;
    u_xlat15 = x_641;
    let x_643 : vec3<f32> = x_31.x_Vignette_Color;
    let x_645 : vec3<f32> = (-(x_643) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_646 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_645.x, x_645.y, x_645.z, x_646.w);
    let x_648 : f32 = u_xlat15;
    let x_650 : vec4<f32> = u_xlat1;
    let x_654 : vec3<f32> = x_31.x_Vignette_Color;
    let x_655 : vec3<f32> = ((vec3<f32>(x_648, x_648, x_648) * vec3<f32>(x_650.x, x_650.y, x_650.z)) + x_654);
    let x_656 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_655.x, x_655.y, x_655.z, x_656.w);
    let x_658 : vec4<f32> = u_xlat0;
    let x_660 : vec4<f32> = u_xlat1;
    let x_663 : vec4<f32> = u_xlat0;
    let x_666 : vec3<f32> = ((vec3<f32>(x_658.x, x_658.y, x_658.z) * vec3<f32>(x_660.x, x_660.y, x_660.z)) + -(vec3<f32>(x_663.x, x_663.y, x_663.z)));
    let x_667 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_666.x, x_666.y, x_666.z, x_667.w);
    let x_671 : f32 = x_31.x_Vignette_Opacity;
    let x_673 : vec4<f32> = u_xlat1;
    let x_676 : vec4<f32> = u_xlat0;
    let x_678 : vec3<f32> = ((vec3<f32>(x_671, x_671, x_671) * vec3<f32>(x_673.x, x_673.y, x_673.z)) + vec3<f32>(x_676.x, x_676.y, x_676.z));
    let x_679 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_678.x, x_678.y, x_678.z, x_679.w);
    let x_682 : f32 = u_xlat1.w;
    u_xlat0.x = (x_682 + -1.0f);
    let x_685 : f32 = u_xlat15;
    let x_687 : f32 = u_xlat0.x;
    u_xlat3.w = ((x_685 * x_687) + 1.0f);
  }
  let x_691 : vec4<f32> = u_xlat3;
  u_xlat3 = x_691;
  let x_692 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_692, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_696 : vec4<f32> = u_xlat3;
  let x_700 : vec3<f32> = (vec3<f32>(x_696.z, x_696.x, x_696.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_701 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_700.x, x_700.y, x_700.z, x_701.w);
  let x_703 : vec4<f32> = u_xlat3;
  let x_706 : vec3<f32> = max(vec3<f32>(x_703.z, x_703.x, x_703.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_707 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_706.x, x_706.y, x_706.z, x_707.w);
  let x_709 : vec4<f32> = u_xlat1;
  let x_711 : vec3<f32> = log2(vec3<f32>(x_709.x, x_709.y, x_709.z));
  let x_712 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_711.x, x_711.y, x_711.z, x_712.w);
  let x_714 : vec4<f32> = u_xlat1;
  let x_718 : vec3<f32> = (vec3<f32>(x_714.x, x_714.y, x_714.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_719 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_718.x, x_718.y, x_718.z, x_719.w);
  let x_721 : vec4<f32> = u_xlat1;
  let x_723 : vec3<f32> = exp2(vec3<f32>(x_721.x, x_721.y, x_721.z));
  let x_724 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_723.x, x_723.y, x_723.z, x_724.w);
  let x_726 : vec4<f32> = u_xlat1;
  let x_733 : vec3<f32> = ((vec3<f32>(x_726.x, x_726.y, x_726.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_734 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_733.x, x_733.y, x_733.z, x_734.w);
  let x_738 : vec4<f32> = u_xlat3;
  let x_741 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_738.z, x_738.x, x_738.y, x_738.z));
  u_xlatb2 = vec3<bool>(x_741.x, x_741.y, x_741.z);
  let x_745 : vec4<f32> = u_xlat0;
  hlslcc_movcTemp = x_745;
  let x_747 : bool = u_xlatb2.x;
  if (x_747) {
    let x_752 : f32 = u_xlat0.x;
    x_748 = x_752;
  } else {
    let x_755 : f32 = u_xlat1.x;
    x_748 = x_755;
  }
  let x_756 : f32 = x_748;
  hlslcc_movcTemp.x = x_756;
  let x_759 : bool = u_xlatb2.y;
  if (x_759) {
    let x_764 : f32 = u_xlat0.y;
    x_760 = x_764;
  } else {
    let x_767 : f32 = u_xlat1.y;
    x_760 = x_767;
  }
  let x_768 : f32 = x_760;
  hlslcc_movcTemp.y = x_768;
  let x_771 : bool = u_xlatb2.z;
  if (x_771) {
    let x_776 : f32 = u_xlat0.z;
    x_772 = x_776;
  } else {
    let x_779 : f32 = u_xlat1.z;
    x_772 = x_779;
  }
  let x_780 : f32 = x_772;
  hlslcc_movcTemp.z = x_780;
  let x_782 : vec4<f32> = hlslcc_movcTemp;
  u_xlat0 = x_782;
  let x_783 : vec4<f32> = u_xlat0;
  let x_787 : vec3<f32> = x_31.x_Lut2D_Params;
  u_xlat5 = (vec3<f32>(x_783.x, x_783.y, x_783.z) * vec3<f32>(x_787.z, x_787.z, x_787.z));
  let x_791 : f32 = u_xlat5.x;
  u_xlat5.x = floor(x_791);
  let x_795 : vec3<f32> = x_31.x_Lut2D_Params;
  let x_798 : vec2<f32> = (vec2<f32>(x_795.x, x_795.y) * vec2<f32>(0.5f, 0.5f));
  let x_799 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_798.x, x_798.y, x_799.z, x_799.w);
  let x_801 : vec3<f32> = u_xlat5;
  let x_804 : vec3<f32> = x_31.x_Lut2D_Params;
  let x_807 : vec4<f32> = u_xlat1;
  let x_809 : vec2<f32> = ((vec2<f32>(x_801.y, x_801.z) * vec2<f32>(x_804.x, x_804.y)) + vec2<f32>(x_807.x, x_807.y));
  let x_810 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_810.x, x_809.x, x_809.y, x_810.w);
  let x_813 : f32 = u_xlat5.x;
  let x_815 : f32 = x_31.x_Lut2D_Params.y;
  let x_818 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_813 * x_815) + x_818);
  let x_826 : vec4<f32> = u_xlat1;
  let x_828 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_826.x, x_826.z));
  u_xlat2 = vec3<f32>(x_828.x, x_828.y, x_828.z);
  let x_831 : f32 = x_31.x_Lut2D_Params.y;
  u_xlat4.x = x_831;
  u_xlat4.y = 0.0f;
  let x_835 : vec4<f32> = u_xlat1;
  let x_837 : vec2<f32> = u_xlat4;
  u_xlat10 = (vec2<f32>(x_835.x, x_835.z) + x_837);
  let x_842 : vec2<f32> = u_xlat10;
  let x_843 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_842);
  let x_844 : vec3<f32> = vec3<f32>(x_843.x, x_843.y, x_843.z);
  let x_845 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_844.x, x_844.y, x_844.z, x_845.w);
  let x_848 : f32 = u_xlat0.x;
  let x_850 : f32 = x_31.x_Lut2D_Params.z;
  let x_853 : f32 = u_xlat5.x;
  u_xlat0.x = ((x_848 * x_850) + -(x_853));
  let x_857 : vec3<f32> = u_xlat2;
  let x_859 : vec4<f32> = u_xlat1;
  u_xlat5 = (-(x_857) + vec3<f32>(x_859.x, x_859.y, x_859.z));
  let x_862 : vec4<f32> = u_xlat0;
  let x_864 : vec3<f32> = u_xlat5;
  let x_866 : vec3<f32> = u_xlat2;
  let x_867 : vec3<f32> = ((vec3<f32>(x_862.x, x_862.x, x_862.x) * x_864) + x_866);
  let x_868 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_867.x, x_867.y, x_867.z, x_868.w);
  let x_870 : vec4<f32> = u_xlat0;
  let x_873 : vec3<f32> = (vec3<f32>(x_870.x, x_870.y, x_870.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_874 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_873.x, x_873.y, x_873.z, x_874.w);
  let x_876 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_876.x, x_876.y, x_876.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_880 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_880 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_883 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_883), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_886 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_886);
  let x_888 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_888 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_891 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_891);
  let x_894 : vec4<f32> = u_xlat0;
  let x_896 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_894.x, x_894.y, x_894.z, x_894.x));
  u_xlatb0 = vec3<bool>(x_896.x, x_896.y, x_896.z);
  let x_899 : bool = u_xlatb0.x;
  if (x_899) {
    let x_904 : f32 = u_xlat1.x;
    x_900 = x_904;
  } else {
    let x_907 : f32 = u_xlat2.x;
    x_900 = x_907;
  }
  let x_908 : f32 = x_900;
  u_xlat3.x = x_908;
  let x_911 : bool = u_xlatb0.y;
  if (x_911) {
    let x_916 : f32 = u_xlat1.y;
    x_912 = x_916;
  } else {
    let x_919 : f32 = u_xlat2.y;
    x_912 = x_919;
  }
  let x_920 : f32 = x_912;
  u_xlat3.y = x_920;
  let x_923 : bool = u_xlatb0.z;
  if (x_923) {
    let x_928 : f32 = u_xlat1.z;
    x_924 = x_928;
  } else {
    let x_931 : f32 = u_xlat2.z;
    x_924 = x_931;
  }
  let x_932 : f32 = x_924;
  u_xlat3.z = x_932;
  let x_936 : f32 = x_31.x_LumaInAlpha;
  u_xlatb0.x = (0.5f < x_936);
  let x_940 : bool = u_xlatb0.x;
  if (x_940) {
    let x_943 : vec4<f32> = u_xlat3;
    let x_944 : vec3<f32> = vec3<f32>(x_943.x, x_943.y, x_943.z);
    let x_945 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_944.x, x_944.y, x_944.z, x_945.w);
    let x_947 : vec4<f32> = u_xlat0;
    let x_951 : vec3<f32> = clamp(vec3<f32>(x_947.x, x_947.y, x_947.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_952 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_951.x, x_951.y, x_951.z, x_952.w);
    let x_954 : vec4<f32> = u_xlat0;
    u_xlat3.w = dot(vec3<f32>(x_954.x, x_954.y, x_954.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_964 : vec4<f32> = u_xlat3;
  SV_Target0 = x_964;
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

