struct PGlobals {
  x_ScreenParams : vec4<f32>,
  x_Distortion_Amount : vec4<f32>,
  x_Distortion_CenterScale : vec4<f32>,
  x_Dithering_Coords : vec4<f32>,
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

var<private> u_xlat4 : f32;

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

@group(0) @binding(3) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_AutoExposureTex : sampler;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

var<private> u_xlatb15 : bool;

var<private> u_xlat15 : f32;

@group(0) @binding(5) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(10) var sampler_Vignette_Mask : sampler;

var<private> u_xlat6 : f32;

@group(0) @binding(4) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(9) var sampler_Lut2D : sampler;

var<private> u_xlat10 : vec2<f32>;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_DitheringTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_222 : f32;
  var x_379 : f32;
  var x_409 : f32;
  var x_632 : f32;
  var hlslcc_movcTemp : vec4<f32>;
  var x_746 : f32;
  var x_758 : f32;
  var x_770 : f32;
  var x_899 : f32;
  var x_911 : f32;
  var x_923 : f32;
  var x_1010 : f32;
  var x_1022 : f32;
  var x_1034 : f32;
  var x_1081 : f32;
  var x_1094 : f32;
  var x_1106 : f32;
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
    u_xlat4 = cos(x_100);
    let x_103 : f32 = u_xlat3.x;
    let x_104 : f32 = u_xlat4;
    u_xlat12.x = (x_103 / x_104);
    let x_111 : f32 = u_xlat12.y;
    u_xlat17 = (1.0f / x_111);
    let x_114 : f32 = u_xlat12.x;
    let x_115 : f32 = u_xlat17;
    u_xlat12.x = ((x_114 * x_115) + -1.0f);
    let x_120 : vec4<f32> = u_xlat0;
    let x_122 : vec2<f32> = u_xlat12;
    let x_125 : vec4<f32> = u_xlat1;
    u_xlat12 = ((vec2<f32>(x_120.x, x_120.y) * vec2<f32>(x_122.x, x_122.x)) + vec2<f32>(x_125.x, x_125.y));
  } else {
    let x_130 : f32 = u_xlat2.x;
    u_xlat3.x = (1.0f / x_130);
    let x_134 : f32 = u_xlat3.x;
    let x_136 : f32 = x_31.x_Distortion_Amount.x;
    u_xlat3.x = (x_134 * x_136);
    let x_140 : f32 = u_xlat2.x;
    let x_142 : f32 = x_31.x_Distortion_Amount.y;
    u_xlat2.x = (x_140 * x_142);
    let x_147 : f32 = u_xlat2.x;
    u_xlat8 = min(abs(x_147), 1.0f);
    let x_152 : f32 = u_xlat2.x;
    u_xlat13 = max(abs(x_152), 1.0f);
    let x_155 : f32 = u_xlat13;
    u_xlat13 = (1.0f / x_155);
    let x_157 : f32 = u_xlat13;
    let x_158 : f32 = u_xlat8;
    u_xlat8 = (x_157 * x_158);
    let x_160 : f32 = u_xlat8;
    let x_161 : f32 = u_xlat8;
    u_xlat13 = (x_160 * x_161);
    let x_164 : f32 = u_xlat13;
    u_xlat18 = ((x_164 * 0.0208351f) + -0.085133001f);
    let x_169 : f32 = u_xlat13;
    let x_170 : f32 = u_xlat18;
    u_xlat18 = ((x_169 * x_170) + 0.180141002f);
    let x_174 : f32 = u_xlat13;
    let x_175 : f32 = u_xlat18;
    u_xlat18 = ((x_174 * x_175) + -0.330299497f);
    let x_179 : f32 = u_xlat13;
    let x_180 : f32 = u_xlat18;
    u_xlat13 = ((x_179 * x_180) + 0.999866009f);
    let x_184 : f32 = u_xlat13;
    let x_185 : f32 = u_xlat8;
    u_xlat18 = (x_184 * x_185);
    let x_189 : f32 = u_xlat2.x;
    u_xlatb4 = (1.0f < abs(x_189));
    let x_192 : f32 = u_xlat18;
    u_xlat18 = ((x_192 * -2.0f) + 1.570796371f);
    let x_197 : bool = u_xlatb4;
    let x_198 : f32 = u_xlat18;
    u_xlat18 = select(0.0f, x_198, x_197);
    let x_200 : f32 = u_xlat8;
    let x_201 : f32 = u_xlat13;
    let x_203 : f32 = u_xlat18;
    u_xlat8 = ((x_200 * x_201) + x_203);
    let x_206 : f32 = u_xlat2.x;
    u_xlat2.x = min(x_206, 1.0f);
    let x_213 : f32 = u_xlat2.x;
    let x_215 : f32 = u_xlat2.x;
    u_xlatb2.x = (x_213 < -(x_215));
    let x_220 : bool = u_xlatb2.x;
    if (x_220) {
      let x_225 : f32 = u_xlat8;
      x_222 = -(x_225);
    } else {
      let x_228 : f32 = u_xlat8;
      x_222 = x_228;
    }
    let x_229 : f32 = x_222;
    u_xlat2.x = x_229;
    let x_232 : f32 = u_xlat3.x;
    let x_234 : f32 = u_xlat2.x;
    u_xlat2.x = ((x_232 * x_234) + -1.0f);
    let x_238 : vec4<f32> = u_xlat0;
    let x_240 : vec3<f32> = u_xlat2;
    let x_243 : vec4<f32> = u_xlat1;
    u_xlat12 = ((vec2<f32>(x_238.x, x_238.y) * vec2<f32>(x_240.x, x_240.x)) + vec2<f32>(x_243.x, x_243.y));
  }
  let x_246 : vec4<f32> = u_xlat0;
  let x_248 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec2<f32>(x_246.z, x_246.w), vec2<f32>(x_248.z, x_248.w));
  let x_253 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_253);
  let x_256 : bool = u_xlatb7;
  if (x_256) {
    let x_259 : vec4<f32> = u_xlat0;
    let x_262 : vec4<f32> = x_31.x_Distortion_Amount;
    let x_264 : vec2<f32> = (vec2<f32>(x_259.x, x_259.x) * vec2<f32>(x_262.x, x_262.y));
    let x_265 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_264.x, x_264.y, x_265.z, x_265.w);
    let x_268 : f32 = u_xlat1.x;
    u_xlat2.x = cos(x_268);
    let x_272 : f32 = u_xlat1.x;
    u_xlat1.x = sin(x_272);
    let x_277 : f32 = u_xlat1.x;
    let x_279 : f32 = u_xlat2.x;
    u_xlat5.x = (x_277 / x_279);
    let x_283 : f32 = u_xlat1.y;
    u_xlat1.x = (1.0f / x_283);
    let x_287 : f32 = u_xlat5.x;
    let x_289 : f32 = u_xlat1.x;
    u_xlat5.x = ((x_287 * x_289) + -1.0f);
    let x_293 : vec4<f32> = u_xlat0;
    let x_295 : vec3<f32> = u_xlat5;
    let x_298 : vec4<f32> = u_xlat1;
    let x_300 : vec2<f32> = ((vec2<f32>(x_293.z, x_293.w) * vec2<f32>(x_295.x, x_295.x)) + vec2<f32>(x_298.z, x_298.w));
    let x_301 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_300.x, x_300.y, x_301.z, x_301.w);
  } else {
    let x_305 : f32 = u_xlat0.x;
    u_xlat5.x = (1.0f / x_305);
    let x_309 : f32 = u_xlat5.x;
    let x_311 : f32 = x_31.x_Distortion_Amount.x;
    u_xlat5.x = (x_309 * x_311);
    let x_315 : f32 = u_xlat0.x;
    let x_317 : f32 = x_31.x_Distortion_Amount.y;
    u_xlat0.x = (x_315 * x_317);
    let x_321 : f32 = u_xlat0.x;
    u_xlat2.x = min(abs(x_321), 1.0f);
    let x_327 : f32 = u_xlat0.x;
    u_xlat7 = max(abs(x_327), 1.0f);
    let x_330 : f32 = u_xlat7;
    u_xlat7 = (1.0f / x_330);
    let x_332 : f32 = u_xlat7;
    let x_334 : f32 = u_xlat2.x;
    u_xlat2.x = (x_332 * x_334);
    let x_338 : f32 = u_xlat2.x;
    let x_340 : f32 = u_xlat2.x;
    u_xlat7 = (x_338 * x_340);
    let x_342 : f32 = u_xlat7;
    u_xlat3.x = ((x_342 * 0.0208351f) + -0.085133001f);
    let x_346 : f32 = u_xlat7;
    let x_348 : f32 = u_xlat3.x;
    u_xlat3.x = ((x_346 * x_348) + 0.180141002f);
    let x_352 : f32 = u_xlat7;
    let x_354 : f32 = u_xlat3.x;
    u_xlat3.x = ((x_352 * x_354) + -0.330299497f);
    let x_358 : f32 = u_xlat7;
    let x_360 : f32 = u_xlat3.x;
    u_xlat7 = ((x_358 * x_360) + 0.999866009f);
    let x_363 : f32 = u_xlat7;
    let x_365 : f32 = u_xlat2.x;
    u_xlat3.x = (x_363 * x_365);
    let x_370 : f32 = u_xlat0.x;
    u_xlatb8 = (1.0f < abs(x_370));
    let x_374 : f32 = u_xlat3.x;
    u_xlat3.x = ((x_374 * -2.0f) + 1.570796371f);
    let x_378 : bool = u_xlatb8;
    if (x_378) {
      let x_383 : f32 = u_xlat3.x;
      x_379 = x_383;
    } else {
      x_379 = 0.0f;
    }
    let x_385 : f32 = x_379;
    u_xlat3.x = x_385;
    let x_388 : f32 = u_xlat2.x;
    let x_389 : f32 = u_xlat7;
    let x_392 : f32 = u_xlat3.x;
    u_xlat2.x = ((x_388 * x_389) + x_392);
    let x_396 : f32 = u_xlat0.x;
    u_xlat0.x = min(x_396, 1.0f);
    let x_401 : f32 = u_xlat0.x;
    let x_403 : f32 = u_xlat0.x;
    u_xlatb0.x = (x_401 < -(x_403));
    let x_408 : bool = u_xlatb0.x;
    if (x_408) {
      let x_413 : f32 = u_xlat2.x;
      x_409 = -(x_413);
    } else {
      let x_417 : f32 = u_xlat2.x;
      x_409 = x_417;
    }
    let x_418 : f32 = x_409;
    u_xlat0.x = x_418;
    let x_421 : f32 = u_xlat5.x;
    let x_423 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_421 * x_423) + -1.0f);
    let x_427 : vec4<f32> = u_xlat0;
    let x_429 : vec4<f32> = u_xlat0;
    let x_432 : vec4<f32> = u_xlat1;
    let x_434 : vec2<f32> = ((vec2<f32>(x_427.z, x_427.w) * vec2<f32>(x_429.x, x_429.x)) + vec2<f32>(x_432.z, x_432.w));
    let x_435 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_434.x, x_434.y, x_435.z, x_435.w);
  }
  let x_447 : vec4<f32> = phase0_Input0_1;
  let x_449 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, vec2<f32>(x_447.x, x_447.y));
  u_xlat0.x = x_449.x;
  let x_457 : vec4<f32> = u_xlat1;
  let x_459 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_457.x, x_457.y));
  u_xlat1 = x_459;
  let x_460 : vec4<f32> = u_xlat0;
  let x_462 : vec4<f32> = u_xlat1;
  let x_464 : vec3<f32> = (vec3<f32>(x_460.x, x_460.x, x_460.x) * vec3<f32>(x_462.x, x_462.y, x_462.z));
  let x_465 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_464.x, x_464.y, x_464.z, x_465.w);
  let x_470 : f32 = x_31.x_Vignette_Mode;
  u_xlatb15 = (x_470 < 0.5f);
  let x_472 : bool = u_xlatb15;
  if (x_472) {
    let x_475 : vec2<f32> = u_xlat12;
    let x_479 : vec2<f32> = x_31.x_Vignette_Center;
    let x_481 : vec2<f32> = (x_475 + -(x_479));
    let x_482 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_481.x, x_481.y, x_482.z, x_482.w);
    let x_484 : vec4<f32> = u_xlat1;
    let x_489 : vec4<f32> = x_31.x_Vignette_Settings;
    let x_491 : vec2<f32> = (abs(vec2<f32>(x_484.y, x_484.x)) * vec2<f32>(x_489.x, x_489.x));
    let x_492 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_492.x, x_491.x, x_491.y, x_492.w);
    let x_497 : f32 = x_31.x_ScreenParams.x;
    let x_499 : f32 = x_31.x_ScreenParams.y;
    u_xlat15 = (x_497 / x_499);
    let x_501 : f32 = u_xlat15;
    u_xlat15 = (x_501 + -1.0f);
    let x_504 : f32 = x_31.x_Vignette_Settings.w;
    let x_505 : f32 = u_xlat15;
    u_xlat15 = ((x_504 * x_505) + 1.0f);
    let x_508 : f32 = u_xlat15;
    let x_511 : f32 = u_xlat1.z;
    u_xlat1.x = (x_508 * x_511);
    let x_514 : vec4<f32> = u_xlat1;
    let x_515 : vec2<f32> = vec2<f32>(x_514.x, x_514.y);
    let x_516 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_515.x, x_515.y, x_516.z, x_516.w);
    let x_518 : vec4<f32> = u_xlat1;
    let x_522 : vec2<f32> = clamp(vec2<f32>(x_518.x, x_518.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_523 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_522.x, x_522.y, x_523.z, x_523.w);
    let x_525 : vec4<f32> = u_xlat1;
    let x_527 : vec2<f32> = log2(vec2<f32>(x_525.x, x_525.y));
    let x_528 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_527.x, x_527.y, x_528.z, x_528.w);
    let x_530 : vec4<f32> = u_xlat1;
    let x_533 : vec4<f32> = x_31.x_Vignette_Settings;
    let x_535 : vec2<f32> = (vec2<f32>(x_530.x, x_530.y) * vec2<f32>(x_533.z, x_533.z));
    let x_536 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_535.x, x_535.y, x_536.z, x_536.w);
    let x_538 : vec4<f32> = u_xlat1;
    let x_540 : vec2<f32> = exp2(vec2<f32>(x_538.x, x_538.y));
    let x_541 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_540.x, x_540.y, x_541.z, x_541.w);
    let x_543 : vec4<f32> = u_xlat1;
    let x_545 : vec4<f32> = u_xlat1;
    u_xlat15 = dot(vec2<f32>(x_543.x, x_543.y), vec2<f32>(x_545.x, x_545.y));
    let x_548 : f32 = u_xlat15;
    u_xlat15 = (-(x_548) + 1.0f);
    let x_551 : f32 = u_xlat15;
    u_xlat15 = max(x_551, 0.0f);
    let x_553 : f32 = u_xlat15;
    u_xlat15 = log2(x_553);
    let x_555 : f32 = u_xlat15;
    let x_557 : f32 = x_31.x_Vignette_Settings.y;
    u_xlat15 = (x_555 * x_557);
    let x_559 : f32 = u_xlat15;
    u_xlat15 = exp2(x_559);
    let x_564 : vec3<f32> = x_31.x_Vignette_Color;
    let x_567 : vec3<f32> = (-(x_564) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_568 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_567.x, x_567.y, x_567.z, x_568.w);
    let x_570 : f32 = u_xlat15;
    let x_572 : vec4<f32> = u_xlat1;
    let x_576 : vec3<f32> = x_31.x_Vignette_Color;
    let x_577 : vec3<f32> = ((vec3<f32>(x_570, x_570, x_570) * vec3<f32>(x_572.x, x_572.y, x_572.z)) + x_576);
    let x_578 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_577.x, x_577.y, x_577.z, x_578.w);
    let x_580 : vec4<f32> = u_xlat0;
    let x_582 : vec4<f32> = u_xlat1;
    let x_584 : vec3<f32> = (vec3<f32>(x_580.x, x_580.y, x_580.z) * vec3<f32>(x_582.x, x_582.y, x_582.z));
    let x_585 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_584.x, x_584.y, x_584.z, x_585.w);
    let x_588 : f32 = u_xlat1.w;
    u_xlat1.x = (x_588 + -1.0f);
    let x_591 : f32 = u_xlat15;
    let x_593 : f32 = u_xlat1.x;
    u_xlat3.w = ((x_591 * x_593) + 1.0f);
  } else {
    let x_603 : vec2<f32> = u_xlat12;
    let x_604 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_603);
    u_xlat15 = x_604.w;
    let x_606 : f32 = u_xlat15;
    u_xlat1.x = (x_606 * 0.077399381f);
    let x_611 : f32 = u_xlat15;
    u_xlat6 = (x_611 + 0.055f);
    let x_614 : f32 = u_xlat6;
    u_xlat6 = (x_614 * 0.947867334f);
    let x_617 : f32 = u_xlat6;
    u_xlat6 = max(abs(x_617), 1.1920929e-07f);
    let x_621 : f32 = u_xlat6;
    u_xlat6 = log2(x_621);
    let x_623 : f32 = u_xlat6;
    u_xlat6 = (x_623 * 2.400000095f);
    let x_626 : f32 = u_xlat6;
    u_xlat6 = exp2(x_626);
    let x_629 : f32 = u_xlat15;
    u_xlatb15 = (0.040449999f >= x_629);
    let x_631 : bool = u_xlatb15;
    if (x_631) {
      let x_636 : f32 = u_xlat1.x;
      x_632 = x_636;
    } else {
      let x_638 : f32 = u_xlat6;
      x_632 = x_638;
    }
    let x_639 : f32 = x_632;
    u_xlat15 = x_639;
    let x_641 : vec3<f32> = x_31.x_Vignette_Color;
    let x_643 : vec3<f32> = (-(x_641) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_644 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_643.x, x_643.y, x_643.z, x_644.w);
    let x_646 : f32 = u_xlat15;
    let x_648 : vec4<f32> = u_xlat1;
    let x_652 : vec3<f32> = x_31.x_Vignette_Color;
    let x_653 : vec3<f32> = ((vec3<f32>(x_646, x_646, x_646) * vec3<f32>(x_648.x, x_648.y, x_648.z)) + x_652);
    let x_654 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_653.x, x_653.y, x_653.z, x_654.w);
    let x_656 : vec4<f32> = u_xlat0;
    let x_658 : vec4<f32> = u_xlat1;
    let x_661 : vec4<f32> = u_xlat0;
    let x_664 : vec3<f32> = ((vec3<f32>(x_656.x, x_656.y, x_656.z) * vec3<f32>(x_658.x, x_658.y, x_658.z)) + -(vec3<f32>(x_661.x, x_661.y, x_661.z)));
    let x_665 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_664.x, x_664.y, x_664.z, x_665.w);
    let x_669 : f32 = x_31.x_Vignette_Opacity;
    let x_671 : vec4<f32> = u_xlat1;
    let x_674 : vec4<f32> = u_xlat0;
    let x_676 : vec3<f32> = ((vec3<f32>(x_669, x_669, x_669) * vec3<f32>(x_671.x, x_671.y, x_671.z)) + vec3<f32>(x_674.x, x_674.y, x_674.z));
    let x_677 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_676.x, x_676.y, x_676.z, x_677.w);
    let x_680 : f32 = u_xlat1.w;
    u_xlat0.x = (x_680 + -1.0f);
    let x_683 : f32 = u_xlat15;
    let x_685 : f32 = u_xlat0.x;
    u_xlat3.w = ((x_683 * x_685) + 1.0f);
  }
  let x_689 : vec4<f32> = u_xlat3;
  u_xlat3 = x_689;
  let x_690 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_690, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_694 : vec4<f32> = u_xlat3;
  let x_698 : vec3<f32> = (vec3<f32>(x_694.z, x_694.x, x_694.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_699 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_698.x, x_698.y, x_698.z, x_699.w);
  let x_701 : vec4<f32> = u_xlat3;
  let x_704 : vec3<f32> = max(vec3<f32>(x_701.z, x_701.x, x_701.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_705 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_704.x, x_704.y, x_704.z, x_705.w);
  let x_707 : vec4<f32> = u_xlat1;
  let x_709 : vec3<f32> = log2(vec3<f32>(x_707.x, x_707.y, x_707.z));
  let x_710 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_709.x, x_709.y, x_709.z, x_710.w);
  let x_712 : vec4<f32> = u_xlat1;
  let x_716 : vec3<f32> = (vec3<f32>(x_712.x, x_712.y, x_712.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_717 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_716.x, x_716.y, x_716.z, x_717.w);
  let x_719 : vec4<f32> = u_xlat1;
  let x_721 : vec3<f32> = exp2(vec3<f32>(x_719.x, x_719.y, x_719.z));
  let x_722 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_721.x, x_721.y, x_721.z, x_722.w);
  let x_724 : vec4<f32> = u_xlat1;
  let x_731 : vec3<f32> = ((vec3<f32>(x_724.x, x_724.y, x_724.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_732 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_731.x, x_731.y, x_731.z, x_732.w);
  let x_736 : vec4<f32> = u_xlat3;
  let x_739 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_736.z, x_736.x, x_736.y, x_736.z));
  u_xlatb2 = vec3<bool>(x_739.x, x_739.y, x_739.z);
  let x_743 : vec4<f32> = u_xlat0;
  hlslcc_movcTemp = x_743;
  let x_745 : bool = u_xlatb2.x;
  if (x_745) {
    let x_750 : f32 = u_xlat0.x;
    x_746 = x_750;
  } else {
    let x_753 : f32 = u_xlat1.x;
    x_746 = x_753;
  }
  let x_754 : f32 = x_746;
  hlslcc_movcTemp.x = x_754;
  let x_757 : bool = u_xlatb2.y;
  if (x_757) {
    let x_762 : f32 = u_xlat0.y;
    x_758 = x_762;
  } else {
    let x_765 : f32 = u_xlat1.y;
    x_758 = x_765;
  }
  let x_766 : f32 = x_758;
  hlslcc_movcTemp.y = x_766;
  let x_769 : bool = u_xlatb2.z;
  if (x_769) {
    let x_774 : f32 = u_xlat0.z;
    x_770 = x_774;
  } else {
    let x_777 : f32 = u_xlat1.z;
    x_770 = x_777;
  }
  let x_778 : f32 = x_770;
  hlslcc_movcTemp.z = x_778;
  let x_780 : vec4<f32> = hlslcc_movcTemp;
  u_xlat0 = x_780;
  let x_781 : vec4<f32> = u_xlat0;
  let x_785 : vec3<f32> = x_31.x_Lut2D_Params;
  u_xlat5 = (vec3<f32>(x_781.x, x_781.y, x_781.z) * vec3<f32>(x_785.z, x_785.z, x_785.z));
  let x_789 : f32 = u_xlat5.x;
  u_xlat5.x = floor(x_789);
  let x_793 : vec3<f32> = x_31.x_Lut2D_Params;
  let x_796 : vec2<f32> = (vec2<f32>(x_793.x, x_793.y) * vec2<f32>(0.5f, 0.5f));
  let x_797 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_796.x, x_796.y, x_797.z, x_797.w);
  let x_799 : vec3<f32> = u_xlat5;
  let x_802 : vec3<f32> = x_31.x_Lut2D_Params;
  let x_805 : vec4<f32> = u_xlat1;
  let x_807 : vec2<f32> = ((vec2<f32>(x_799.y, x_799.z) * vec2<f32>(x_802.x, x_802.y)) + vec2<f32>(x_805.x, x_805.y));
  let x_808 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_808.x, x_807.x, x_807.y, x_808.w);
  let x_811 : f32 = u_xlat5.x;
  let x_813 : f32 = x_31.x_Lut2D_Params.y;
  let x_816 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_811 * x_813) + x_816);
  let x_824 : vec4<f32> = u_xlat1;
  let x_826 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_824.x, x_824.z));
  u_xlat2 = vec3<f32>(x_826.x, x_826.y, x_826.z);
  let x_829 : f32 = x_31.x_Lut2D_Params.y;
  u_xlat3.x = x_829;
  u_xlat3.y = 0.0f;
  let x_833 : vec4<f32> = u_xlat1;
  let x_835 : vec4<f32> = u_xlat3;
  u_xlat10 = (vec2<f32>(x_833.x, x_833.z) + vec2<f32>(x_835.x, x_835.y));
  let x_841 : vec2<f32> = u_xlat10;
  let x_842 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_841);
  let x_843 : vec3<f32> = vec3<f32>(x_842.x, x_842.y, x_842.z);
  let x_844 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_843.x, x_843.y, x_843.z, x_844.w);
  let x_847 : f32 = u_xlat0.x;
  let x_849 : f32 = x_31.x_Lut2D_Params.z;
  let x_852 : f32 = u_xlat5.x;
  u_xlat0.x = ((x_847 * x_849) + -(x_852));
  let x_856 : vec3<f32> = u_xlat2;
  let x_858 : vec4<f32> = u_xlat1;
  u_xlat5 = (-(x_856) + vec3<f32>(x_858.x, x_858.y, x_858.z));
  let x_861 : vec4<f32> = u_xlat0;
  let x_863 : vec3<f32> = u_xlat5;
  let x_865 : vec3<f32> = u_xlat2;
  let x_866 : vec3<f32> = ((vec3<f32>(x_861.x, x_861.x, x_861.x) * x_863) + x_865);
  let x_867 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_866.x, x_866.y, x_866.z, x_867.w);
  let x_869 : vec4<f32> = u_xlat0;
  let x_872 : vec3<f32> = (vec3<f32>(x_869.x, x_869.y, x_869.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_873 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_872.x, x_872.y, x_872.z, x_873.w);
  let x_875 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_875.x, x_875.y, x_875.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_879 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_879 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_882 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_882), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_885 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_885);
  let x_887 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_887 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_890 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_890);
  let x_893 : vec4<f32> = u_xlat0;
  let x_895 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_893.x, x_893.y, x_893.z, x_893.x));
  u_xlatb0 = vec3<bool>(x_895.x, x_895.y, x_895.z);
  let x_898 : bool = u_xlatb0.x;
  if (x_898) {
    let x_903 : f32 = u_xlat1.x;
    x_899 = x_903;
  } else {
    let x_906 : f32 = u_xlat2.x;
    x_899 = x_906;
  }
  let x_907 : f32 = x_899;
  u_xlat0.x = x_907;
  let x_910 : bool = u_xlatb0.y;
  if (x_910) {
    let x_915 : f32 = u_xlat1.y;
    x_911 = x_915;
  } else {
    let x_918 : f32 = u_xlat2.y;
    x_911 = x_918;
  }
  let x_919 : f32 = x_911;
  u_xlat0.y = x_919;
  let x_922 : bool = u_xlatb0.z;
  if (x_922) {
    let x_927 : f32 = u_xlat1.z;
    x_923 = x_927;
  } else {
    let x_930 : f32 = u_xlat2.z;
    x_923 = x_930;
  }
  let x_931 : f32 = x_923;
  u_xlat0.z = x_931;
  let x_933 : vec4<f32> = phase0_Input0_1;
  let x_937 : vec4<f32> = x_31.x_Dithering_Coords;
  let x_941 : vec4<f32> = x_31.x_Dithering_Coords;
  let x_943 : vec2<f32> = ((vec2<f32>(x_933.x, x_933.y) * vec2<f32>(x_937.x, x_937.y)) + vec2<f32>(x_941.z, x_941.w));
  let x_944 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_943.x, x_943.y, x_944.z, x_944.w);
  let x_951 : vec4<f32> = u_xlat1;
  let x_953 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_951.x, x_951.y));
  u_xlat15 = x_953.w;
  let x_955 : f32 = u_xlat15;
  u_xlat15 = ((x_955 * 2.0f) + -1.0f);
  let x_959 : f32 = u_xlat15;
  u_xlat1.x = ((x_959 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_965 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_965, 0.0f, 1.0f);
  let x_969 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_969 * 2.0f) + -1.0f);
  let x_973 : f32 = u_xlat15;
  u_xlat15 = (-(abs(x_973)) + 1.0f);
  let x_977 : f32 = u_xlat15;
  u_xlat15 = sqrt(x_977);
  let x_979 : f32 = u_xlat15;
  u_xlat15 = (-(x_979) + 1.0f);
  let x_982 : f32 = u_xlat15;
  let x_984 : f32 = u_xlat1.x;
  u_xlat15 = (x_982 * x_984);
  let x_986 : vec4<f32> = u_xlat0;
  let x_988 : vec3<f32> = (vec3<f32>(x_986.x, x_986.y, x_986.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_989 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_988.x, x_988.y, x_988.z, x_989.w);
  let x_991 : vec4<f32> = u_xlat0;
  u_xlat2 = max(abs(vec3<f32>(x_991.x, x_991.y, x_991.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_995 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_995);
  let x_997 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_997 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_999 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_999);
  let x_1001 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_1001 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1004 : vec4<f32> = u_xlat0;
  let x_1006 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1004.x, x_1004.y, x_1004.z, x_1004.x));
  u_xlatb0 = vec3<bool>(x_1006.x, x_1006.y, x_1006.z);
  let x_1009 : bool = u_xlatb0.x;
  if (x_1009) {
    let x_1014 : f32 = u_xlat1.x;
    x_1010 = x_1014;
  } else {
    let x_1017 : f32 = u_xlat2.x;
    x_1010 = x_1017;
  }
  let x_1018 : f32 = x_1010;
  u_xlat0.x = x_1018;
  let x_1021 : bool = u_xlatb0.y;
  if (x_1021) {
    let x_1026 : f32 = u_xlat1.y;
    x_1022 = x_1026;
  } else {
    let x_1029 : f32 = u_xlat2.y;
    x_1022 = x_1029;
  }
  let x_1030 : f32 = x_1022;
  u_xlat0.y = x_1030;
  let x_1033 : bool = u_xlatb0.z;
  if (x_1033) {
    let x_1038 : f32 = u_xlat1.z;
    x_1034 = x_1038;
  } else {
    let x_1041 : f32 = u_xlat2.z;
    x_1034 = x_1041;
  }
  let x_1042 : f32 = x_1034;
  u_xlat0.z = x_1042;
  let x_1044 : f32 = u_xlat15;
  let x_1049 : vec4<f32> = u_xlat0;
  let x_1051 : vec3<f32> = ((vec3<f32>(x_1044, x_1044, x_1044) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_1049.x, x_1049.y, x_1049.z));
  let x_1052 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1051.x, x_1051.y, x_1051.z, x_1052.w);
  let x_1054 : vec4<f32> = u_xlat0;
  let x_1056 : vec3<f32> = (vec3<f32>(x_1054.x, x_1054.y, x_1054.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1057 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1056.x, x_1056.y, x_1056.z, x_1057.w);
  let x_1059 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_1059.x, x_1059.y, x_1059.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1062 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1062 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1064 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_1064), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1067 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_1067);
  let x_1069 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1069 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1071 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_1071);
  let x_1073 : vec4<f32> = u_xlat0;
  let x_1075 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1073.x, x_1073.y, x_1073.z, x_1073.x));
  u_xlatb0 = vec3<bool>(x_1075.x, x_1075.y, x_1075.z);
  let x_1080 : bool = u_xlatb0.x;
  if (x_1080) {
    let x_1085 : f32 = u_xlat1.x;
    x_1081 = x_1085;
  } else {
    let x_1088 : f32 = u_xlat2.x;
    x_1081 = x_1088;
  }
  let x_1089 : f32 = x_1081;
  SV_Target0.x = x_1089;
  let x_1093 : bool = u_xlatb0.y;
  if (x_1093) {
    let x_1098 : f32 = u_xlat1.y;
    x_1094 = x_1098;
  } else {
    let x_1101 : f32 = u_xlat2.y;
    x_1094 = x_1101;
  }
  let x_1102 : f32 = x_1094;
  SV_Target0.y = x_1102;
  let x_1105 : bool = u_xlatb0.z;
  if (x_1105) {
    let x_1110 : f32 = u_xlat1.z;
    x_1106 = x_1110;
  } else {
    let x_1113 : f32 = u_xlat2.z;
    x_1106 = x_1113;
  }
  let x_1114 : f32 = x_1106;
  SV_Target0.z = x_1114;
  let x_1117 : f32 = u_xlat3.w;
  SV_Target0.w = x_1117;
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

