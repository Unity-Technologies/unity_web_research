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
  x_Grain_Params1 : vec2<f32>,
  x_Grain_Params2 : vec4<f32>,
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

@group(0) @binding(9) var sampler_AutoExposureTex : sampler;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> u_xlatb15 : bool;

var<private> u_xlat15 : f32;

@group(0) @binding(5) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(11) var sampler_Vignette_Mask : sampler;

@group(0) @binding(6) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_GrainTex : sampler;

@group(0) @binding(4) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(10) var sampler_Lut2D : sampler;

var<private> u_xlat10 : vec2<f32>;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_DitheringTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_222 : f32;
  var x_379 : f32;
  var x_409 : f32;
  var x_631 : f32;
  var hlslcc_movcTemp : vec4<f32>;
  var x_810 : f32;
  var x_822 : f32;
  var x_834 : f32;
  var x_963 : f32;
  var x_975 : f32;
  var x_987 : f32;
  var x_1074 : f32;
  var x_1086 : f32;
  var x_1098 : f32;
  var x_1145 : f32;
  var x_1158 : f32;
  var x_1170 : f32;
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
    let x_585 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_584.x, x_584.y, x_584.z, x_585.w);
    let x_588 : f32 = u_xlat1.w;
    u_xlat2.x = (x_588 + -1.0f);
    let x_591 : f32 = u_xlat15;
    let x_593 : f32 = u_xlat2.x;
    u_xlat3.w = ((x_591 * x_593) + 1.0f);
  } else {
    let x_603 : vec2<f32> = u_xlat12;
    let x_604 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_603);
    u_xlat15 = x_604.w;
    let x_606 : f32 = u_xlat15;
    u_xlat2.x = (x_606 * 0.077399381f);
    let x_610 : f32 = u_xlat15;
    u_xlat7 = (x_610 + 0.055f);
    let x_613 : f32 = u_xlat7;
    u_xlat7 = (x_613 * 0.947867334f);
    let x_616 : f32 = u_xlat7;
    u_xlat7 = max(abs(x_616), 1.1920929e-07f);
    let x_620 : f32 = u_xlat7;
    u_xlat7 = log2(x_620);
    let x_622 : f32 = u_xlat7;
    u_xlat7 = (x_622 * 2.400000095f);
    let x_625 : f32 = u_xlat7;
    u_xlat7 = exp2(x_625);
    let x_628 : f32 = u_xlat15;
    u_xlatb15 = (0.040449999f >= x_628);
    let x_630 : bool = u_xlatb15;
    if (x_630) {
      let x_635 : f32 = u_xlat2.x;
      x_631 = x_635;
    } else {
      let x_637 : f32 = u_xlat7;
      x_631 = x_637;
    }
    let x_638 : f32 = x_631;
    u_xlat15 = x_638;
    let x_640 : vec3<f32> = x_31.x_Vignette_Color;
    u_xlat2 = (-(x_640) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_643 : f32 = u_xlat15;
    let x_645 : vec3<f32> = u_xlat2;
    let x_648 : vec3<f32> = x_31.x_Vignette_Color;
    u_xlat2 = ((vec3<f32>(x_643, x_643, x_643) * x_645) + x_648);
    let x_650 : vec4<f32> = u_xlat0;
    let x_652 : vec3<f32> = u_xlat2;
    let x_654 : vec4<f32> = u_xlat0;
    u_xlat2 = ((vec3<f32>(x_650.x, x_650.y, x_650.z) * x_652) + -(vec3<f32>(x_654.x, x_654.y, x_654.z)));
    let x_660 : f32 = x_31.x_Vignette_Opacity;
    let x_662 : vec3<f32> = u_xlat2;
    let x_664 : vec4<f32> = u_xlat0;
    let x_666 : vec3<f32> = ((vec3<f32>(x_660, x_660, x_660) * x_662) + vec3<f32>(x_664.x, x_664.y, x_664.z));
    let x_667 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_666.x, x_666.y, x_666.z, x_667.w);
    let x_670 : f32 = u_xlat1.w;
    u_xlat0.x = (x_670 + -1.0f);
    let x_673 : f32 = u_xlat15;
    let x_675 : f32 = u_xlat0.x;
    u_xlat3.w = ((x_673 * x_675) + 1.0f);
  }
  let x_679 : vec4<f32> = phase0_Input0_1;
  let x_683 : vec4<f32> = x_31.x_Grain_Params2;
  let x_687 : vec4<f32> = x_31.x_Grain_Params2;
  let x_689 : vec2<f32> = ((vec2<f32>(x_679.z, x_679.w) * vec2<f32>(x_683.x, x_683.y)) + vec2<f32>(x_687.z, x_687.w));
  let x_690 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_689.x, x_689.y, x_690.z, x_690.w);
  let x_697 : vec4<f32> = u_xlat0;
  let x_699 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_697.x, x_697.y));
  let x_700 : vec3<f32> = vec3<f32>(x_699.x, x_699.y, x_699.z);
  let x_701 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_700.x, x_700.y, x_700.z, x_701.w);
  let x_703 : vec4<f32> = u_xlat1;
  u_xlat2 = vec3<f32>(x_703.x, x_703.y, x_703.z);
  let x_705 : vec3<f32> = u_xlat2;
  u_xlat2 = clamp(x_705, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_709 : vec3<f32> = u_xlat2;
  u_xlat15 = dot(x_709, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_715 : f32 = u_xlat15;
  u_xlat15 = sqrt(x_715);
  let x_719 : f32 = x_31.x_Grain_Params1.x;
  let x_720 : f32 = u_xlat15;
  u_xlat15 = ((x_719 * -(x_720)) + 1.0f);
  let x_724 : vec4<f32> = u_xlat0;
  let x_726 : vec4<f32> = u_xlat1;
  let x_728 : vec3<f32> = (vec3<f32>(x_724.x, x_724.y, x_724.z) * vec3<f32>(x_726.x, x_726.y, x_726.z));
  let x_729 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_728.x, x_728.y, x_728.z, x_729.w);
  let x_731 : vec4<f32> = u_xlat0;
  let x_734 : f32 = x_31.x_Grain_Params1.y;
  let x_736 : f32 = x_31.x_Grain_Params1.y;
  let x_738 : f32 = x_31.x_Grain_Params1.y;
  let x_740 : vec3<f32> = (vec3<f32>(x_731.x, x_731.y, x_731.z) * vec3<f32>(x_734, x_736, x_738));
  let x_741 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_740.x, x_740.y, x_740.z, x_741.w);
  let x_743 : vec4<f32> = u_xlat0;
  let x_745 : f32 = u_xlat15;
  let x_748 : vec4<f32> = u_xlat1;
  let x_750 : vec3<f32> = ((vec3<f32>(x_743.x, x_743.y, x_743.z) * vec3<f32>(x_745, x_745, x_745)) + vec3<f32>(x_748.x, x_748.y, x_748.z));
  let x_751 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_750.x, x_750.y, x_750.z, x_751.w);
  let x_753 : vec4<f32> = u_xlat3;
  u_xlat3 = x_753;
  let x_754 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_754, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_758 : vec4<f32> = u_xlat3;
  let x_762 : vec3<f32> = (vec3<f32>(x_758.z, x_758.x, x_758.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_763 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_762.x, x_762.y, x_762.z, x_763.w);
  let x_765 : vec4<f32> = u_xlat3;
  let x_768 : vec3<f32> = max(vec3<f32>(x_765.z, x_765.x, x_765.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_769 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_768.x, x_768.y, x_768.z, x_769.w);
  let x_771 : vec4<f32> = u_xlat1;
  let x_773 : vec3<f32> = log2(vec3<f32>(x_771.x, x_771.y, x_771.z));
  let x_774 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_773.x, x_773.y, x_773.z, x_774.w);
  let x_776 : vec4<f32> = u_xlat1;
  let x_780 : vec3<f32> = (vec3<f32>(x_776.x, x_776.y, x_776.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_781 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_780.x, x_780.y, x_780.z, x_781.w);
  let x_783 : vec4<f32> = u_xlat1;
  let x_785 : vec3<f32> = exp2(vec3<f32>(x_783.x, x_783.y, x_783.z));
  let x_786 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_785.x, x_785.y, x_785.z, x_786.w);
  let x_788 : vec4<f32> = u_xlat1;
  let x_795 : vec3<f32> = ((vec3<f32>(x_788.x, x_788.y, x_788.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_796 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_795.x, x_795.y, x_795.z, x_796.w);
  let x_800 : vec4<f32> = u_xlat3;
  let x_803 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_800.z, x_800.x, x_800.y, x_800.z));
  u_xlatb2 = vec3<bool>(x_803.x, x_803.y, x_803.z);
  let x_807 : vec4<f32> = u_xlat0;
  hlslcc_movcTemp = x_807;
  let x_809 : bool = u_xlatb2.x;
  if (x_809) {
    let x_814 : f32 = u_xlat0.x;
    x_810 = x_814;
  } else {
    let x_817 : f32 = u_xlat1.x;
    x_810 = x_817;
  }
  let x_818 : f32 = x_810;
  hlslcc_movcTemp.x = x_818;
  let x_821 : bool = u_xlatb2.y;
  if (x_821) {
    let x_826 : f32 = u_xlat0.y;
    x_822 = x_826;
  } else {
    let x_829 : f32 = u_xlat1.y;
    x_822 = x_829;
  }
  let x_830 : f32 = x_822;
  hlslcc_movcTemp.y = x_830;
  let x_833 : bool = u_xlatb2.z;
  if (x_833) {
    let x_838 : f32 = u_xlat0.z;
    x_834 = x_838;
  } else {
    let x_841 : f32 = u_xlat1.z;
    x_834 = x_841;
  }
  let x_842 : f32 = x_834;
  hlslcc_movcTemp.z = x_842;
  let x_844 : vec4<f32> = hlslcc_movcTemp;
  u_xlat0 = x_844;
  let x_845 : vec4<f32> = u_xlat0;
  let x_849 : vec3<f32> = x_31.x_Lut2D_Params;
  u_xlat5 = (vec3<f32>(x_845.x, x_845.y, x_845.z) * vec3<f32>(x_849.z, x_849.z, x_849.z));
  let x_853 : f32 = u_xlat5.x;
  u_xlat5.x = floor(x_853);
  let x_857 : vec3<f32> = x_31.x_Lut2D_Params;
  let x_860 : vec2<f32> = (vec2<f32>(x_857.x, x_857.y) * vec2<f32>(0.5f, 0.5f));
  let x_861 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_860.x, x_860.y, x_861.z, x_861.w);
  let x_863 : vec3<f32> = u_xlat5;
  let x_866 : vec3<f32> = x_31.x_Lut2D_Params;
  let x_869 : vec4<f32> = u_xlat1;
  let x_871 : vec2<f32> = ((vec2<f32>(x_863.y, x_863.z) * vec2<f32>(x_866.x, x_866.y)) + vec2<f32>(x_869.x, x_869.y));
  let x_872 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_872.x, x_871.x, x_871.y, x_872.w);
  let x_875 : f32 = u_xlat5.x;
  let x_877 : f32 = x_31.x_Lut2D_Params.y;
  let x_880 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_875 * x_877) + x_880);
  let x_888 : vec4<f32> = u_xlat1;
  let x_890 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_888.x, x_888.z));
  u_xlat2 = vec3<f32>(x_890.x, x_890.y, x_890.z);
  let x_893 : f32 = x_31.x_Lut2D_Params.y;
  u_xlat3.x = x_893;
  u_xlat3.y = 0.0f;
  let x_897 : vec4<f32> = u_xlat1;
  let x_899 : vec4<f32> = u_xlat3;
  u_xlat10 = (vec2<f32>(x_897.x, x_897.z) + vec2<f32>(x_899.x, x_899.y));
  let x_905 : vec2<f32> = u_xlat10;
  let x_906 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_905);
  let x_907 : vec3<f32> = vec3<f32>(x_906.x, x_906.y, x_906.z);
  let x_908 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_907.x, x_907.y, x_907.z, x_908.w);
  let x_911 : f32 = u_xlat0.x;
  let x_913 : f32 = x_31.x_Lut2D_Params.z;
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
  u_xlat0.x = x_971;
  let x_974 : bool = u_xlatb0.y;
  if (x_974) {
    let x_979 : f32 = u_xlat1.y;
    x_975 = x_979;
  } else {
    let x_982 : f32 = u_xlat2.y;
    x_975 = x_982;
  }
  let x_983 : f32 = x_975;
  u_xlat0.y = x_983;
  let x_986 : bool = u_xlatb0.z;
  if (x_986) {
    let x_991 : f32 = u_xlat1.z;
    x_987 = x_991;
  } else {
    let x_994 : f32 = u_xlat2.z;
    x_987 = x_994;
  }
  let x_995 : f32 = x_987;
  u_xlat0.z = x_995;
  let x_997 : vec4<f32> = phase0_Input0_1;
  let x_1001 : vec4<f32> = x_31.x_Dithering_Coords;
  let x_1005 : vec4<f32> = x_31.x_Dithering_Coords;
  let x_1007 : vec2<f32> = ((vec2<f32>(x_997.x, x_997.y) * vec2<f32>(x_1001.x, x_1001.y)) + vec2<f32>(x_1005.z, x_1005.w));
  let x_1008 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1007.x, x_1007.y, x_1008.z, x_1008.w);
  let x_1015 : vec4<f32> = u_xlat1;
  let x_1017 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_1015.x, x_1015.y));
  u_xlat15 = x_1017.w;
  let x_1019 : f32 = u_xlat15;
  u_xlat15 = ((x_1019 * 2.0f) + -1.0f);
  let x_1023 : f32 = u_xlat15;
  u_xlat1.x = ((x_1023 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_1029 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1029, 0.0f, 1.0f);
  let x_1033 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1033 * 2.0f) + -1.0f);
  let x_1037 : f32 = u_xlat15;
  u_xlat15 = (-(abs(x_1037)) + 1.0f);
  let x_1041 : f32 = u_xlat15;
  u_xlat15 = sqrt(x_1041);
  let x_1043 : f32 = u_xlat15;
  u_xlat15 = (-(x_1043) + 1.0f);
  let x_1046 : f32 = u_xlat15;
  let x_1048 : f32 = u_xlat1.x;
  u_xlat15 = (x_1046 * x_1048);
  let x_1050 : vec4<f32> = u_xlat0;
  let x_1052 : vec3<f32> = (vec3<f32>(x_1050.x, x_1050.y, x_1050.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1053 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1052.x, x_1052.y, x_1052.z, x_1053.w);
  let x_1055 : vec4<f32> = u_xlat0;
  u_xlat2 = max(abs(vec3<f32>(x_1055.x, x_1055.y, x_1055.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1059 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_1059);
  let x_1061 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1061 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1063 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_1063);
  let x_1065 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_1065 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1068 : vec4<f32> = u_xlat0;
  let x_1070 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1068.x, x_1068.y, x_1068.z, x_1068.x));
  u_xlatb0 = vec3<bool>(x_1070.x, x_1070.y, x_1070.z);
  let x_1073 : bool = u_xlatb0.x;
  if (x_1073) {
    let x_1078 : f32 = u_xlat1.x;
    x_1074 = x_1078;
  } else {
    let x_1081 : f32 = u_xlat2.x;
    x_1074 = x_1081;
  }
  let x_1082 : f32 = x_1074;
  u_xlat0.x = x_1082;
  let x_1085 : bool = u_xlatb0.y;
  if (x_1085) {
    let x_1090 : f32 = u_xlat1.y;
    x_1086 = x_1090;
  } else {
    let x_1093 : f32 = u_xlat2.y;
    x_1086 = x_1093;
  }
  let x_1094 : f32 = x_1086;
  u_xlat0.y = x_1094;
  let x_1097 : bool = u_xlatb0.z;
  if (x_1097) {
    let x_1102 : f32 = u_xlat1.z;
    x_1098 = x_1102;
  } else {
    let x_1105 : f32 = u_xlat2.z;
    x_1098 = x_1105;
  }
  let x_1106 : f32 = x_1098;
  u_xlat0.z = x_1106;
  let x_1108 : f32 = u_xlat15;
  let x_1113 : vec4<f32> = u_xlat0;
  let x_1115 : vec3<f32> = ((vec3<f32>(x_1108, x_1108, x_1108) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_1113.x, x_1113.y, x_1113.z));
  let x_1116 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1115.x, x_1115.y, x_1115.z, x_1116.w);
  let x_1118 : vec4<f32> = u_xlat0;
  let x_1120 : vec3<f32> = (vec3<f32>(x_1118.x, x_1118.y, x_1118.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1121 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1120.x, x_1120.y, x_1120.z, x_1121.w);
  let x_1123 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_1123.x, x_1123.y, x_1123.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1126 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1126 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1128 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_1128), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1131 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_1131);
  let x_1133 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1133 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1135 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_1135);
  let x_1137 : vec4<f32> = u_xlat0;
  let x_1139 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1137.x, x_1137.y, x_1137.z, x_1137.x));
  u_xlatb0 = vec3<bool>(x_1139.x, x_1139.y, x_1139.z);
  let x_1144 : bool = u_xlatb0.x;
  if (x_1144) {
    let x_1149 : f32 = u_xlat1.x;
    x_1145 = x_1149;
  } else {
    let x_1152 : f32 = u_xlat2.x;
    x_1145 = x_1152;
  }
  let x_1153 : f32 = x_1145;
  SV_Target0.x = x_1153;
  let x_1157 : bool = u_xlatb0.y;
  if (x_1157) {
    let x_1162 : f32 = u_xlat1.y;
    x_1158 = x_1162;
  } else {
    let x_1165 : f32 = u_xlat2.y;
    x_1158 = x_1165;
  }
  let x_1166 : f32 = x_1158;
  SV_Target0.y = x_1166;
  let x_1169 : bool = u_xlatb0.z;
  if (x_1169) {
    let x_1174 : f32 = u_xlat1.z;
    x_1170 = x_1174;
  } else {
    let x_1177 : f32 = u_xlat2.z;
    x_1170 = x_1177;
  }
  let x_1178 : f32 = x_1170;
  SV_Target0.z = x_1178;
  let x_1181 : f32 = u_xlat3.w;
  SV_Target0.w = x_1181;
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

