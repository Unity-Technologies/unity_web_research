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
  x_Grain_Params1 : vec2<f32>,
  x_Grain_Params2 : vec4<f32>,
  x_LumaInAlpha : f32,
}

var<private> phase0_Input0_1 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_32 : PGlobals;

@group(0) @binding(1) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_AutoExposureTex : sampler;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

@group(0) @binding(3) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(8) var sampler_Vignette_Mask : sampler;

@group(0) @binding(4) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_GrainTex : sampler;

@group(0) @binding(2) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(7) var sampler_Lut2D : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlatb7 : bool;
  var u_xlat12 : vec2<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec2<f32>;
  var u_xlat17 : f32;
  var u_xlat8 : f32;
  var u_xlat13 : f32;
  var u_xlat18 : f32;
  var u_xlatb4 : bool;
  var u_xlatb2 : vec3<bool>;
  var x_224 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlat7 : f32;
  var u_xlatb8 : bool;
  var x_381 : f32;
  var u_xlatb0 : vec3<bool>;
  var x_411 : f32;
  var u_xlatb15 : bool;
  var u_xlat15 : f32;
  var x_633 : f32;
  var hlslcc_movcTemp : vec4<f32>;
  var x_811 : f32;
  var x_823 : f32;
  var x_835 : f32;
  var u_xlat10 : vec2<f32>;
  var x_963 : f32;
  var x_975 : f32;
  var x_987 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD0;
  let x_15 : vec2<f32> = vs_TEXCOORD1;
  phase0_Input0_1 = vec4<f32>(x_13.x, x_13.y, x_15.x, x_15.y);
  let x_23 : vec4<f32> = phase0_Input0_1;
  u_xlat0 = (x_23 + vec4<f32>(-0.5f, -0.5f, -0.5f, -0.5f));
  let x_28 : vec4<f32> = u_xlat0;
  let x_37 : vec4<f32> = x_32.x_Distortion_Amount;
  u_xlat1 = ((x_28 * vec4<f32>(x_37.z, x_37.z, x_37.z, x_37.z)) + vec4<f32>(0.5f, 0.5f, 0.5f, 0.5f));
  let x_43 : vec4<f32> = u_xlat0;
  let x_45 : vec4<f32> = x_32.x_Distortion_Amount;
  let x_50 : vec4<f32> = x_32.x_Distortion_CenterScale;
  u_xlat0 = ((x_43 * vec4<f32>(x_45.z, x_45.z, x_45.z, x_45.z)) + -(vec4<f32>(x_50.x, x_50.y, x_50.x, x_50.y)));
  let x_54 : vec4<f32> = u_xlat0;
  let x_56 : vec4<f32> = x_32.x_Distortion_CenterScale;
  u_xlat0 = (x_54 * vec4<f32>(x_56.z, x_56.w, x_56.z, x_56.w));
  let x_61 : vec4<f32> = u_xlat0;
  let x_63 : vec4<f32> = u_xlat0;
  u_xlat2.x = dot(vec2<f32>(x_61.x, x_61.y), vec2<f32>(x_63.x, x_63.y));
  let x_71 : f32 = u_xlat2.x;
  u_xlat2.x = sqrt(x_71);
  let x_81 : f32 = x_32.x_Distortion_Amount.w;
  u_xlatb7 = (0.0f < x_81);
  let x_83 : bool = u_xlatb7;
  if (x_83) {
    let x_88 : vec3<f32> = u_xlat2;
    let x_91 : vec4<f32> = x_32.x_Distortion_Amount;
    u_xlat12 = (vec2<f32>(x_88.x, x_88.x) * vec2<f32>(x_91.x, x_91.y));
    let x_96 : f32 = u_xlat12.x;
    u_xlat3.x = sin(x_96);
    let x_101 : f32 = u_xlat12.x;
    u_xlat4.x = cos(x_101);
    let x_105 : f32 = u_xlat3.x;
    let x_107 : f32 = u_xlat4.x;
    u_xlat12.x = (x_105 / x_107);
    let x_114 : f32 = u_xlat12.y;
    u_xlat17 = (1.0f / x_114);
    let x_117 : f32 = u_xlat12.x;
    let x_118 : f32 = u_xlat17;
    u_xlat12.x = ((x_117 * x_118) + -1.0f);
    let x_123 : vec4<f32> = u_xlat0;
    let x_125 : vec2<f32> = u_xlat12;
    let x_128 : vec4<f32> = u_xlat1;
    u_xlat12 = ((vec2<f32>(x_123.x, x_123.y) * vec2<f32>(x_125.x, x_125.x)) + vec2<f32>(x_128.x, x_128.y));
  } else {
    let x_133 : f32 = u_xlat2.x;
    u_xlat3.x = (1.0f / x_133);
    let x_137 : f32 = u_xlat3.x;
    let x_139 : f32 = x_32.x_Distortion_Amount.x;
    u_xlat3.x = (x_137 * x_139);
    let x_143 : f32 = u_xlat2.x;
    let x_145 : f32 = x_32.x_Distortion_Amount.y;
    u_xlat2.x = (x_143 * x_145);
    let x_150 : f32 = u_xlat2.x;
    u_xlat8 = min(abs(x_150), 1.0f);
    let x_155 : f32 = u_xlat2.x;
    u_xlat13 = max(abs(x_155), 1.0f);
    let x_158 : f32 = u_xlat13;
    u_xlat13 = (1.0f / x_158);
    let x_160 : f32 = u_xlat13;
    let x_161 : f32 = u_xlat8;
    u_xlat8 = (x_160 * x_161);
    let x_163 : f32 = u_xlat8;
    let x_164 : f32 = u_xlat8;
    u_xlat13 = (x_163 * x_164);
    let x_167 : f32 = u_xlat13;
    u_xlat18 = ((x_167 * 0.0208351f) + -0.085133001f);
    let x_172 : f32 = u_xlat13;
    let x_173 : f32 = u_xlat18;
    u_xlat18 = ((x_172 * x_173) + 0.180141002f);
    let x_177 : f32 = u_xlat13;
    let x_178 : f32 = u_xlat18;
    u_xlat18 = ((x_177 * x_178) + -0.330299497f);
    let x_182 : f32 = u_xlat13;
    let x_183 : f32 = u_xlat18;
    u_xlat13 = ((x_182 * x_183) + 0.999866009f);
    let x_187 : f32 = u_xlat13;
    let x_188 : f32 = u_xlat8;
    u_xlat18 = (x_187 * x_188);
    let x_192 : f32 = u_xlat2.x;
    u_xlatb4 = (1.0f < abs(x_192));
    let x_195 : f32 = u_xlat18;
    u_xlat18 = ((x_195 * -2.0f) + 1.570796371f);
    let x_200 : bool = u_xlatb4;
    let x_201 : f32 = u_xlat18;
    u_xlat18 = select(0.0f, x_201, x_200);
    let x_203 : f32 = u_xlat8;
    let x_204 : f32 = u_xlat13;
    let x_206 : f32 = u_xlat18;
    u_xlat8 = ((x_203 * x_204) + x_206);
    let x_209 : f32 = u_xlat2.x;
    u_xlat2.x = min(x_209, 1.0f);
    let x_216 : f32 = u_xlat2.x;
    let x_218 : f32 = u_xlat2.x;
    u_xlatb2.x = (x_216 < -(x_218));
    let x_223 : bool = u_xlatb2.x;
    if (x_223) {
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
    let x_264 : vec4<f32> = x_32.x_Distortion_Amount;
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
    let x_313 : f32 = x_32.x_Distortion_Amount.x;
    u_xlat5.x = (x_311 * x_313);
    let x_317 : f32 = u_xlat0.x;
    let x_319 : f32 = x_32.x_Distortion_Amount.y;
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
  let x_472 : f32 = x_32.x_Vignette_Mode;
  u_xlatb15 = (x_472 < 0.5f);
  let x_474 : bool = u_xlatb15;
  if (x_474) {
    let x_477 : vec2<f32> = u_xlat12;
    let x_481 : vec2<f32> = x_32.x_Vignette_Center;
    let x_483 : vec2<f32> = (x_477 + -(x_481));
    let x_484 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_483.x, x_483.y, x_484.z, x_484.w);
    let x_486 : vec4<f32> = u_xlat1;
    let x_491 : vec4<f32> = x_32.x_Vignette_Settings;
    let x_493 : vec2<f32> = (abs(vec2<f32>(x_486.y, x_486.x)) * vec2<f32>(x_491.x, x_491.x));
    let x_494 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_494.x, x_493.x, x_493.y, x_494.w);
    let x_499 : f32 = x_32.x_ScreenParams.x;
    let x_501 : f32 = x_32.x_ScreenParams.y;
    u_xlat15 = (x_499 / x_501);
    let x_503 : f32 = u_xlat15;
    u_xlat15 = (x_503 + -1.0f);
    let x_506 : f32 = x_32.x_Vignette_Settings.w;
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
    let x_535 : vec4<f32> = x_32.x_Vignette_Settings;
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
    let x_559 : f32 = x_32.x_Vignette_Settings.y;
    u_xlat15 = (x_557 * x_559);
    let x_561 : f32 = u_xlat15;
    u_xlat15 = exp2(x_561);
    let x_566 : vec3<f32> = x_32.x_Vignette_Color;
    let x_569 : vec3<f32> = (-(x_566) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_570 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_569.x, x_569.y, x_569.z, x_570.w);
    let x_572 : f32 = u_xlat15;
    let x_574 : vec4<f32> = u_xlat1;
    let x_578 : vec3<f32> = x_32.x_Vignette_Color;
    let x_579 : vec3<f32> = ((vec3<f32>(x_572, x_572, x_572) * vec3<f32>(x_574.x, x_574.y, x_574.z)) + x_578);
    let x_580 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_579.x, x_579.y, x_579.z, x_580.w);
    let x_582 : vec4<f32> = u_xlat0;
    let x_584 : vec4<f32> = u_xlat1;
    let x_586 : vec3<f32> = (vec3<f32>(x_582.x, x_582.y, x_582.z) * vec3<f32>(x_584.x, x_584.y, x_584.z));
    let x_587 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_586.x, x_586.y, x_586.z, x_587.w);
    let x_590 : f32 = u_xlat1.w;
    u_xlat2.x = (x_590 + -1.0f);
    let x_593 : f32 = u_xlat15;
    let x_595 : f32 = u_xlat2.x;
    u_xlat3.w = ((x_593 * x_595) + 1.0f);
  } else {
    let x_605 : vec2<f32> = u_xlat12;
    let x_606 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_605);
    u_xlat15 = x_606.w;
    let x_608 : f32 = u_xlat15;
    u_xlat2.x = (x_608 * 0.077399381f);
    let x_612 : f32 = u_xlat15;
    u_xlat7 = (x_612 + 0.055f);
    let x_615 : f32 = u_xlat7;
    u_xlat7 = (x_615 * 0.947867334f);
    let x_618 : f32 = u_xlat7;
    u_xlat7 = max(abs(x_618), 1.1920929e-07f);
    let x_622 : f32 = u_xlat7;
    u_xlat7 = log2(x_622);
    let x_624 : f32 = u_xlat7;
    u_xlat7 = (x_624 * 2.400000095f);
    let x_627 : f32 = u_xlat7;
    u_xlat7 = exp2(x_627);
    let x_630 : f32 = u_xlat15;
    u_xlatb15 = (0.040449999f >= x_630);
    let x_632 : bool = u_xlatb15;
    if (x_632) {
      let x_637 : f32 = u_xlat2.x;
      x_633 = x_637;
    } else {
      let x_639 : f32 = u_xlat7;
      x_633 = x_639;
    }
    let x_640 : f32 = x_633;
    u_xlat15 = x_640;
    let x_642 : vec3<f32> = x_32.x_Vignette_Color;
    u_xlat2 = (-(x_642) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_645 : f32 = u_xlat15;
    let x_647 : vec3<f32> = u_xlat2;
    let x_650 : vec3<f32> = x_32.x_Vignette_Color;
    u_xlat2 = ((vec3<f32>(x_645, x_645, x_645) * x_647) + x_650);
    let x_652 : vec4<f32> = u_xlat0;
    let x_654 : vec3<f32> = u_xlat2;
    let x_656 : vec4<f32> = u_xlat0;
    u_xlat2 = ((vec3<f32>(x_652.x, x_652.y, x_652.z) * x_654) + -(vec3<f32>(x_656.x, x_656.y, x_656.z)));
    let x_662 : f32 = x_32.x_Vignette_Opacity;
    let x_664 : vec3<f32> = u_xlat2;
    let x_666 : vec4<f32> = u_xlat0;
    let x_668 : vec3<f32> = ((vec3<f32>(x_662, x_662, x_662) * x_664) + vec3<f32>(x_666.x, x_666.y, x_666.z));
    let x_669 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_668.x, x_668.y, x_668.z, x_669.w);
    let x_672 : f32 = u_xlat1.w;
    u_xlat0.x = (x_672 + -1.0f);
    let x_675 : f32 = u_xlat15;
    let x_677 : f32 = u_xlat0.x;
    u_xlat3.w = ((x_675 * x_677) + 1.0f);
  }
  let x_681 : vec4<f32> = phase0_Input0_1;
  let x_685 : vec4<f32> = x_32.x_Grain_Params2;
  let x_689 : vec4<f32> = x_32.x_Grain_Params2;
  let x_691 : vec2<f32> = ((vec2<f32>(x_681.z, x_681.w) * vec2<f32>(x_685.x, x_685.y)) + vec2<f32>(x_689.z, x_689.w));
  let x_692 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_691.x, x_691.y, x_692.z, x_692.w);
  let x_699 : vec4<f32> = u_xlat0;
  let x_701 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_699.x, x_699.y));
  let x_702 : vec3<f32> = vec3<f32>(x_701.x, x_701.y, x_701.z);
  let x_703 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_702.x, x_702.y, x_702.z, x_703.w);
  let x_705 : vec4<f32> = u_xlat1;
  u_xlat2 = vec3<f32>(x_705.x, x_705.y, x_705.z);
  let x_707 : vec3<f32> = u_xlat2;
  u_xlat2 = clamp(x_707, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_711 : vec3<f32> = u_xlat2;
  u_xlat15 = dot(x_711, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_717 : f32 = u_xlat15;
  u_xlat15 = sqrt(x_717);
  let x_721 : f32 = x_32.x_Grain_Params1.x;
  let x_722 : f32 = u_xlat15;
  u_xlat15 = ((x_721 * -(x_722)) + 1.0f);
  let x_726 : vec4<f32> = u_xlat0;
  let x_728 : vec4<f32> = u_xlat1;
  let x_730 : vec3<f32> = (vec3<f32>(x_726.x, x_726.y, x_726.z) * vec3<f32>(x_728.x, x_728.y, x_728.z));
  let x_731 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_730.x, x_730.y, x_730.z, x_731.w);
  let x_733 : vec4<f32> = u_xlat0;
  let x_736 : f32 = x_32.x_Grain_Params1.y;
  let x_738 : f32 = x_32.x_Grain_Params1.y;
  let x_740 : f32 = x_32.x_Grain_Params1.y;
  let x_742 : vec3<f32> = (vec3<f32>(x_733.x, x_733.y, x_733.z) * vec3<f32>(x_736, x_738, x_740));
  let x_743 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_742.x, x_742.y, x_742.z, x_743.w);
  let x_745 : vec4<f32> = u_xlat0;
  let x_747 : f32 = u_xlat15;
  let x_750 : vec4<f32> = u_xlat1;
  let x_752 : vec3<f32> = ((vec3<f32>(x_745.x, x_745.y, x_745.z) * vec3<f32>(x_747, x_747, x_747)) + vec3<f32>(x_750.x, x_750.y, x_750.z));
  let x_753 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_752.x, x_752.y, x_752.z, x_753.w);
  let x_755 : vec4<f32> = u_xlat3;
  u_xlat3 = x_755;
  let x_756 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_756, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_760 : vec4<f32> = u_xlat3;
  let x_764 : vec3<f32> = (vec3<f32>(x_760.z, x_760.x, x_760.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_765 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_764.x, x_764.y, x_764.z, x_765.w);
  let x_767 : vec4<f32> = u_xlat3;
  let x_770 : vec3<f32> = max(vec3<f32>(x_767.z, x_767.x, x_767.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_771 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_770.x, x_770.y, x_770.z, x_771.w);
  let x_773 : vec4<f32> = u_xlat1;
  let x_775 : vec3<f32> = log2(vec3<f32>(x_773.x, x_773.y, x_773.z));
  let x_776 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_775.x, x_775.y, x_775.z, x_776.w);
  let x_778 : vec4<f32> = u_xlat1;
  let x_782 : vec3<f32> = (vec3<f32>(x_778.x, x_778.y, x_778.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_783 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_782.x, x_782.y, x_782.z, x_783.w);
  let x_785 : vec4<f32> = u_xlat1;
  let x_787 : vec3<f32> = exp2(vec3<f32>(x_785.x, x_785.y, x_785.z));
  let x_788 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_787.x, x_787.y, x_787.z, x_788.w);
  let x_790 : vec4<f32> = u_xlat1;
  let x_797 : vec3<f32> = ((vec3<f32>(x_790.x, x_790.y, x_790.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_798 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_797.x, x_797.y, x_797.z, x_798.w);
  let x_802 : vec4<f32> = u_xlat3;
  let x_805 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_802.z, x_802.x, x_802.y, x_802.z));
  u_xlatb2 = vec3<bool>(x_805.x, x_805.y, x_805.z);
  let x_808 : vec4<f32> = u_xlat0;
  hlslcc_movcTemp = x_808;
  let x_810 : bool = u_xlatb2.x;
  if (x_810) {
    let x_815 : f32 = u_xlat0.x;
    x_811 = x_815;
  } else {
    let x_818 : f32 = u_xlat1.x;
    x_811 = x_818;
  }
  let x_819 : f32 = x_811;
  hlslcc_movcTemp.x = x_819;
  let x_822 : bool = u_xlatb2.y;
  if (x_822) {
    let x_827 : f32 = u_xlat0.y;
    x_823 = x_827;
  } else {
    let x_830 : f32 = u_xlat1.y;
    x_823 = x_830;
  }
  let x_831 : f32 = x_823;
  hlslcc_movcTemp.y = x_831;
  let x_834 : bool = u_xlatb2.z;
  if (x_834) {
    let x_839 : f32 = u_xlat0.z;
    x_835 = x_839;
  } else {
    let x_842 : f32 = u_xlat1.z;
    x_835 = x_842;
  }
  let x_843 : f32 = x_835;
  hlslcc_movcTemp.z = x_843;
  let x_845 : vec4<f32> = hlslcc_movcTemp;
  u_xlat0 = x_845;
  let x_846 : vec4<f32> = u_xlat0;
  let x_850 : vec3<f32> = x_32.x_Lut2D_Params;
  u_xlat5 = (vec3<f32>(x_846.x, x_846.y, x_846.z) * vec3<f32>(x_850.z, x_850.z, x_850.z));
  let x_854 : f32 = u_xlat5.x;
  u_xlat5.x = floor(x_854);
  let x_858 : vec3<f32> = x_32.x_Lut2D_Params;
  let x_861 : vec2<f32> = (vec2<f32>(x_858.x, x_858.y) * vec2<f32>(0.5f, 0.5f));
  let x_862 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_861.x, x_861.y, x_862.z, x_862.w);
  let x_864 : vec3<f32> = u_xlat5;
  let x_867 : vec3<f32> = x_32.x_Lut2D_Params;
  let x_870 : vec4<f32> = u_xlat1;
  let x_872 : vec2<f32> = ((vec2<f32>(x_864.y, x_864.z) * vec2<f32>(x_867.x, x_867.y)) + vec2<f32>(x_870.x, x_870.y));
  let x_873 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_873.x, x_872.x, x_872.y, x_873.w);
  let x_876 : f32 = u_xlat5.x;
  let x_878 : f32 = x_32.x_Lut2D_Params.y;
  let x_881 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_876 * x_878) + x_881);
  let x_889 : vec4<f32> = u_xlat1;
  let x_891 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_889.x, x_889.z));
  u_xlat2 = vec3<f32>(x_891.x, x_891.y, x_891.z);
  let x_894 : f32 = x_32.x_Lut2D_Params.y;
  u_xlat4.x = x_894;
  u_xlat4.y = 0.0f;
  let x_898 : vec4<f32> = u_xlat1;
  let x_900 : vec2<f32> = u_xlat4;
  u_xlat10 = (vec2<f32>(x_898.x, x_898.z) + x_900);
  let x_905 : vec2<f32> = u_xlat10;
  let x_906 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_905);
  let x_907 : vec3<f32> = vec3<f32>(x_906.x, x_906.y, x_906.z);
  let x_908 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_907.x, x_907.y, x_907.z, x_908.w);
  let x_911 : f32 = u_xlat0.x;
  let x_913 : f32 = x_32.x_Lut2D_Params.z;
  let x_916 : f32 = u_xlat5.x;
  u_xlat0.x = ((x_911 * x_913) + -(x_916));
  let x_920 : vec3<f32> = u_xlat2;
  let x_922 : vec4<f32> = u_xlat1;
  u_xlat5 = (-(x_920) + vec3<f32>(x_922.x, x_922.y, x_922.z));
  let x_925 : vec4<f32> = u_xlat0;
  let x_927 : vec3<f32> = u_xlat5;
  let x_929 : vec3<f32> = u_xlat2;
  let x_930 : vec3<f32> = ((vec3<f32>(x_925.x, x_925.x, x_925.x) * x_927) + x_929);
  let x_931 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_930.x, x_930.y, x_930.z, x_931.w);
  let x_933 : vec4<f32> = u_xlat0;
  let x_936 : vec3<f32> = (vec3<f32>(x_933.x, x_933.y, x_933.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_937 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_936.x, x_936.y, x_936.z, x_937.w);
  let x_939 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_939.x, x_939.y, x_939.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_943 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_943 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_946 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_946), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_949 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_949);
  let x_951 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_951 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_954 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_954);
  let x_957 : vec4<f32> = u_xlat0;
  let x_959 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_957.x, x_957.y, x_957.z, x_957.x));
  u_xlatb0 = vec3<bool>(x_959.x, x_959.y, x_959.z);
  let x_962 : bool = u_xlatb0.x;
  if (x_962) {
    let x_967 : f32 = u_xlat1.x;
    x_963 = x_967;
  } else {
    let x_970 : f32 = u_xlat2.x;
    x_963 = x_970;
  }
  let x_971 : f32 = x_963;
  u_xlat3.x = x_971;
  let x_974 : bool = u_xlatb0.y;
  if (x_974) {
    let x_979 : f32 = u_xlat1.y;
    x_975 = x_979;
  } else {
    let x_982 : f32 = u_xlat2.y;
    x_975 = x_982;
  }
  let x_983 : f32 = x_975;
  u_xlat3.y = x_983;
  let x_986 : bool = u_xlatb0.z;
  if (x_986) {
    let x_991 : f32 = u_xlat1.z;
    x_987 = x_991;
  } else {
    let x_994 : f32 = u_xlat2.z;
    x_987 = x_994;
  }
  let x_995 : f32 = x_987;
  u_xlat3.z = x_995;
  let x_999 : f32 = x_32.x_LumaInAlpha;
  u_xlatb0.x = (0.5f < x_999);
  let x_1003 : bool = u_xlatb0.x;
  if (x_1003) {
    let x_1006 : vec4<f32> = u_xlat3;
    let x_1007 : vec3<f32> = vec3<f32>(x_1006.x, x_1006.y, x_1006.z);
    let x_1008 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1007.x, x_1007.y, x_1007.z, x_1008.w);
    let x_1010 : vec4<f32> = u_xlat0;
    let x_1014 : vec3<f32> = clamp(vec3<f32>(x_1010.x, x_1010.y, x_1010.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_1015 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1014.x, x_1014.y, x_1014.z, x_1015.w);
    let x_1017 : vec4<f32> = u_xlat0;
    u_xlat3.w = dot(vec3<f32>(x_1017.x, x_1017.y, x_1017.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_1023 : vec4<f32> = u_xlat3;
  SV_Target0 = x_1023;
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

