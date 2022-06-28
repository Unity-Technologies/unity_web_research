struct PGlobals {
  x_ScreenParams : vec4<f32>,
  x_Distortion_Amount : vec4<f32>,
  x_Distortion_CenterScale : vec4<f32>,
  x_Dithering_Coords : vec4<f32>,
  x_Vignette_Color : vec3<f32>,
  @size(4)
  padding : u32,
  x_Vignette_Center : vec2<f32>,
  @size(8)
  padding_1 : u32,
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

var<private> u_xlat3 : f32;

var<private> u_xlat4 : f32;

var<private> u_xlat17 : f32;

var<private> u_xlat8 : f32;

var<private> u_xlat13 : f32;

var<private> u_xlat18 : f32;

var<private> u_xlatb4 : bool;

var<private> u_xlatb2 : bool;

var<private> u_xlat5 : f32;

var<private> u_xlat7 : f32;

var<private> u_xlatb8 : bool;

var<private> u_xlatb0 : vec3<bool>;

@group(0) @binding(3) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_AutoExposureTex : sampler;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

var<private> u_xlatb15 : bool;

var<private> u_xlat15 : f32;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(4) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(9) var sampler_Vignette_Mask : sampler;

@group(0) @binding(5) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_GrainTex : sampler;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_DitheringTex : sampler;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_213 : f32;
  var x_379 : f32;
  var x_603 : f32;
  var x_814 : f32;
  var x_826 : f32;
  var x_838 : f32;
  var x_888 : f32;
  var x_900 : f32;
  var x_912 : f32;
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
    u_xlat3 = sin(x_95);
    let x_99 : f32 = u_xlat12.x;
    u_xlat4 = cos(x_99);
    let x_101 : f32 = u_xlat3;
    let x_102 : f32 = u_xlat4;
    u_xlat12.x = (x_101 / x_102);
    let x_109 : f32 = u_xlat12.y;
    u_xlat17 = (1.0f / x_109);
    let x_112 : f32 = u_xlat12.x;
    let x_113 : f32 = u_xlat17;
    u_xlat12.x = ((x_112 * x_113) + -1.0f);
    let x_118 : vec4<f32> = u_xlat0;
    let x_120 : vec2<f32> = u_xlat12;
    let x_123 : vec4<f32> = u_xlat1;
    u_xlat12 = ((vec2<f32>(x_118.x, x_118.y) * vec2<f32>(x_120.x, x_120.x)) + vec2<f32>(x_123.x, x_123.y));
  } else {
    let x_128 : f32 = u_xlat2.x;
    u_xlat3 = (1.0f / x_128);
    let x_130 : f32 = u_xlat3;
    let x_132 : f32 = x_31.x_Distortion_Amount.x;
    u_xlat3 = (x_130 * x_132);
    let x_135 : f32 = u_xlat2.x;
    let x_137 : f32 = x_31.x_Distortion_Amount.y;
    u_xlat2.x = (x_135 * x_137);
    let x_142 : f32 = u_xlat2.x;
    u_xlat8 = min(abs(x_142), 1.0f);
    let x_147 : f32 = u_xlat2.x;
    u_xlat13 = max(abs(x_147), 1.0f);
    let x_150 : f32 = u_xlat13;
    u_xlat13 = (1.0f / x_150);
    let x_152 : f32 = u_xlat13;
    let x_153 : f32 = u_xlat8;
    u_xlat8 = (x_152 * x_153);
    let x_155 : f32 = u_xlat8;
    let x_156 : f32 = u_xlat8;
    u_xlat13 = (x_155 * x_156);
    let x_159 : f32 = u_xlat13;
    u_xlat18 = ((x_159 * 0.0208351f) + -0.085133001f);
    let x_164 : f32 = u_xlat13;
    let x_165 : f32 = u_xlat18;
    u_xlat18 = ((x_164 * x_165) + 0.180141002f);
    let x_169 : f32 = u_xlat13;
    let x_170 : f32 = u_xlat18;
    u_xlat18 = ((x_169 * x_170) + -0.330299497f);
    let x_174 : f32 = u_xlat13;
    let x_175 : f32 = u_xlat18;
    u_xlat13 = ((x_174 * x_175) + 0.999866009f);
    let x_179 : f32 = u_xlat13;
    let x_180 : f32 = u_xlat8;
    u_xlat18 = (x_179 * x_180);
    let x_184 : f32 = u_xlat2.x;
    u_xlatb4 = (1.0f < abs(x_184));
    let x_187 : f32 = u_xlat18;
    u_xlat18 = ((x_187 * -2.0f) + 1.570796371f);
    let x_192 : bool = u_xlatb4;
    let x_193 : f32 = u_xlat18;
    u_xlat18 = select(0.0f, x_193, x_192);
    let x_195 : f32 = u_xlat8;
    let x_196 : f32 = u_xlat13;
    let x_198 : f32 = u_xlat18;
    u_xlat8 = ((x_195 * x_196) + x_198);
    let x_201 : f32 = u_xlat2.x;
    u_xlat2.x = min(x_201, 1.0f);
    let x_206 : f32 = u_xlat2.x;
    let x_208 : f32 = u_xlat2.x;
    u_xlatb2 = (x_206 < -(x_208));
    let x_211 : bool = u_xlatb2;
    if (x_211) {
      let x_216 : f32 = u_xlat8;
      x_213 = -(x_216);
    } else {
      let x_219 : f32 = u_xlat8;
      x_213 = x_219;
    }
    let x_220 : f32 = x_213;
    u_xlat2.x = x_220;
    let x_222 : f32 = u_xlat3;
    let x_224 : f32 = u_xlat2.x;
    u_xlat2.x = ((x_222 * x_224) + -1.0f);
    let x_228 : vec4<f32> = u_xlat0;
    let x_230 : vec3<f32> = u_xlat2;
    let x_233 : vec4<f32> = u_xlat1;
    u_xlat12 = ((vec2<f32>(x_228.x, x_228.y) * vec2<f32>(x_230.x, x_230.x)) + vec2<f32>(x_233.x, x_233.y));
  }
  let x_236 : vec4<f32> = u_xlat0;
  let x_238 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec2<f32>(x_236.z, x_236.w), vec2<f32>(x_238.z, x_238.w));
  let x_243 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_243);
  let x_246 : bool = u_xlatb7;
  if (x_246) {
    let x_249 : vec4<f32> = u_xlat0;
    let x_252 : vec4<f32> = x_31.x_Distortion_Amount;
    let x_254 : vec2<f32> = (vec2<f32>(x_249.x, x_249.x) * vec2<f32>(x_252.x, x_252.y));
    let x_255 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_254.x, x_254.y, x_255.z, x_255.w);
    let x_258 : f32 = u_xlat1.x;
    u_xlat2.x = cos(x_258);
    let x_262 : f32 = u_xlat1.x;
    u_xlat1.x = sin(x_262);
    let x_267 : f32 = u_xlat1.x;
    let x_269 : f32 = u_xlat2.x;
    u_xlat5 = (x_267 / x_269);
    let x_272 : f32 = u_xlat1.y;
    u_xlat1.x = (1.0f / x_272);
    let x_275 : f32 = u_xlat5;
    let x_277 : f32 = u_xlat1.x;
    u_xlat5 = ((x_275 * x_277) + -1.0f);
    let x_280 : vec4<f32> = u_xlat0;
    let x_282 : f32 = u_xlat5;
    let x_285 : vec4<f32> = u_xlat1;
    let x_287 : vec2<f32> = ((vec2<f32>(x_280.z, x_280.w) * vec2<f32>(x_282, x_282)) + vec2<f32>(x_285.z, x_285.w));
    let x_288 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_287.x, x_287.y, x_288.z, x_288.w);
  } else {
    let x_292 : f32 = u_xlat0.x;
    u_xlat5 = (1.0f / x_292);
    let x_294 : f32 = u_xlat5;
    let x_296 : f32 = x_31.x_Distortion_Amount.x;
    u_xlat5 = (x_294 * x_296);
    let x_299 : f32 = u_xlat0.x;
    let x_301 : f32 = x_31.x_Distortion_Amount.y;
    u_xlat0.x = (x_299 * x_301);
    let x_305 : f32 = u_xlat0.x;
    u_xlat2.x = min(abs(x_305), 1.0f);
    let x_311 : f32 = u_xlat0.x;
    u_xlat7 = max(abs(x_311), 1.0f);
    let x_314 : f32 = u_xlat7;
    u_xlat7 = (1.0f / x_314);
    let x_316 : f32 = u_xlat7;
    let x_318 : f32 = u_xlat2.x;
    u_xlat2.x = (x_316 * x_318);
    let x_322 : f32 = u_xlat2.x;
    let x_324 : f32 = u_xlat2.x;
    u_xlat7 = (x_322 * x_324);
    let x_326 : f32 = u_xlat7;
    u_xlat3 = ((x_326 * 0.0208351f) + -0.085133001f);
    let x_329 : f32 = u_xlat7;
    let x_330 : f32 = u_xlat3;
    u_xlat3 = ((x_329 * x_330) + 0.180141002f);
    let x_333 : f32 = u_xlat7;
    let x_334 : f32 = u_xlat3;
    u_xlat3 = ((x_333 * x_334) + -0.330299497f);
    let x_337 : f32 = u_xlat7;
    let x_338 : f32 = u_xlat3;
    u_xlat7 = ((x_337 * x_338) + 0.999866009f);
    let x_341 : f32 = u_xlat7;
    let x_343 : f32 = u_xlat2.x;
    u_xlat3 = (x_341 * x_343);
    let x_347 : f32 = u_xlat0.x;
    u_xlatb8 = (1.0f < abs(x_347));
    let x_350 : f32 = u_xlat3;
    u_xlat3 = ((x_350 * -2.0f) + 1.570796371f);
    let x_353 : bool = u_xlatb8;
    let x_354 : f32 = u_xlat3;
    u_xlat3 = select(0.0f, x_354, x_353);
    let x_357 : f32 = u_xlat2.x;
    let x_358 : f32 = u_xlat7;
    let x_360 : f32 = u_xlat3;
    u_xlat2.x = ((x_357 * x_358) + x_360);
    let x_364 : f32 = u_xlat0.x;
    u_xlat0.x = min(x_364, 1.0f);
    let x_371 : f32 = u_xlat0.x;
    let x_373 : f32 = u_xlat0.x;
    u_xlatb0.x = (x_371 < -(x_373));
    let x_378 : bool = u_xlatb0.x;
    if (x_378) {
      let x_383 : f32 = u_xlat2.x;
      x_379 = -(x_383);
    } else {
      let x_387 : f32 = u_xlat2.x;
      x_379 = x_387;
    }
    let x_388 : f32 = x_379;
    u_xlat0.x = x_388;
    let x_390 : f32 = u_xlat5;
    let x_392 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_390 * x_392) + -1.0f);
    let x_396 : vec4<f32> = u_xlat0;
    let x_398 : vec4<f32> = u_xlat0;
    let x_401 : vec4<f32> = u_xlat1;
    let x_403 : vec2<f32> = ((vec2<f32>(x_396.z, x_396.w) * vec2<f32>(x_398.x, x_398.x)) + vec2<f32>(x_401.z, x_401.w));
    let x_404 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_403.x, x_403.y, x_404.z, x_404.w);
  }
  let x_416 : vec4<f32> = phase0_Input0_1;
  let x_418 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, vec2<f32>(x_416.x, x_416.y));
  u_xlat0.x = x_418.x;
  let x_426 : vec4<f32> = u_xlat1;
  let x_428 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_426.x, x_426.y));
  u_xlat1 = x_428;
  let x_429 : vec4<f32> = u_xlat0;
  let x_431 : vec4<f32> = u_xlat1;
  let x_433 : vec3<f32> = (vec3<f32>(x_429.x, x_429.x, x_429.x) * vec3<f32>(x_431.x, x_431.y, x_431.z));
  let x_434 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_433.x, x_433.y, x_433.z, x_434.w);
  let x_439 : f32 = x_31.x_Vignette_Mode;
  u_xlatb15 = (x_439 < 0.5f);
  let x_441 : bool = u_xlatb15;
  if (x_441) {
    let x_444 : vec2<f32> = u_xlat12;
    let x_448 : vec2<f32> = x_31.x_Vignette_Center;
    let x_450 : vec2<f32> = (x_444 + -(x_448));
    let x_451 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_450.x, x_450.y, x_451.z, x_451.w);
    let x_453 : vec4<f32> = u_xlat1;
    let x_458 : vec4<f32> = x_31.x_Vignette_Settings;
    let x_460 : vec2<f32> = (abs(vec2<f32>(x_453.y, x_453.x)) * vec2<f32>(x_458.x, x_458.x));
    let x_461 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_461.x, x_460.x, x_460.y, x_461.w);
    let x_466 : f32 = x_31.x_ScreenParams.x;
    let x_468 : f32 = x_31.x_ScreenParams.y;
    u_xlat15 = (x_466 / x_468);
    let x_470 : f32 = u_xlat15;
    u_xlat15 = (x_470 + -1.0f);
    let x_473 : f32 = x_31.x_Vignette_Settings.w;
    let x_474 : f32 = u_xlat15;
    u_xlat15 = ((x_473 * x_474) + 1.0f);
    let x_477 : f32 = u_xlat15;
    let x_480 : f32 = u_xlat1.z;
    u_xlat1.x = (x_477 * x_480);
    let x_483 : vec4<f32> = u_xlat1;
    let x_484 : vec2<f32> = vec2<f32>(x_483.x, x_483.y);
    let x_485 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_484.x, x_484.y, x_485.z, x_485.w);
    let x_487 : vec4<f32> = u_xlat1;
    let x_491 : vec2<f32> = clamp(vec2<f32>(x_487.x, x_487.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_492 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_491.x, x_491.y, x_492.z, x_492.w);
    let x_494 : vec4<f32> = u_xlat1;
    let x_496 : vec2<f32> = log2(vec2<f32>(x_494.x, x_494.y));
    let x_497 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_496.x, x_496.y, x_497.z, x_497.w);
    let x_499 : vec4<f32> = u_xlat1;
    let x_502 : vec4<f32> = x_31.x_Vignette_Settings;
    let x_504 : vec2<f32> = (vec2<f32>(x_499.x, x_499.y) * vec2<f32>(x_502.z, x_502.z));
    let x_505 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_504.x, x_504.y, x_505.z, x_505.w);
    let x_507 : vec4<f32> = u_xlat1;
    let x_509 : vec2<f32> = exp2(vec2<f32>(x_507.x, x_507.y));
    let x_510 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_509.x, x_509.y, x_510.z, x_510.w);
    let x_512 : vec4<f32> = u_xlat1;
    let x_514 : vec4<f32> = u_xlat1;
    u_xlat15 = dot(vec2<f32>(x_512.x, x_512.y), vec2<f32>(x_514.x, x_514.y));
    let x_517 : f32 = u_xlat15;
    u_xlat15 = (-(x_517) + 1.0f);
    let x_520 : f32 = u_xlat15;
    u_xlat15 = max(x_520, 0.0f);
    let x_522 : f32 = u_xlat15;
    u_xlat15 = log2(x_522);
    let x_524 : f32 = u_xlat15;
    let x_526 : f32 = x_31.x_Vignette_Settings.y;
    u_xlat15 = (x_524 * x_526);
    let x_528 : f32 = u_xlat15;
    u_xlat15 = exp2(x_528);
    let x_533 : vec3<f32> = x_31.x_Vignette_Color;
    let x_536 : vec3<f32> = (-(x_533) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_537 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_536.x, x_536.y, x_536.z, x_537.w);
    let x_539 : f32 = u_xlat15;
    let x_541 : vec4<f32> = u_xlat1;
    let x_545 : vec3<f32> = x_31.x_Vignette_Color;
    let x_546 : vec3<f32> = ((vec3<f32>(x_539, x_539, x_539) * vec3<f32>(x_541.x, x_541.y, x_541.z)) + x_545);
    let x_547 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_546.x, x_546.y, x_546.z, x_547.w);
    let x_549 : vec4<f32> = u_xlat0;
    let x_551 : vec4<f32> = u_xlat1;
    let x_553 : vec3<f32> = (vec3<f32>(x_549.x, x_549.y, x_549.z) * vec3<f32>(x_551.x, x_551.y, x_551.z));
    let x_554 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_553.x, x_553.y, x_553.z, x_554.w);
    let x_557 : f32 = u_xlat1.w;
    u_xlat2.x = (x_557 + -1.0f);
    let x_562 : f32 = u_xlat15;
    let x_564 : f32 = u_xlat2.x;
    SV_Target0.w = ((x_562 * x_564) + 1.0f);
  } else {
    let x_575 : vec2<f32> = u_xlat12;
    let x_576 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_575);
    u_xlat15 = x_576.w;
    let x_578 : f32 = u_xlat15;
    u_xlat2.x = (x_578 * 0.077399381f);
    let x_582 : f32 = u_xlat15;
    u_xlat7 = (x_582 + 0.055f);
    let x_585 : f32 = u_xlat7;
    u_xlat7 = (x_585 * 0.947867334f);
    let x_588 : f32 = u_xlat7;
    u_xlat7 = max(abs(x_588), 1.1920929e-07f);
    let x_592 : f32 = u_xlat7;
    u_xlat7 = log2(x_592);
    let x_594 : f32 = u_xlat7;
    u_xlat7 = (x_594 * 2.400000095f);
    let x_597 : f32 = u_xlat7;
    u_xlat7 = exp2(x_597);
    let x_600 : f32 = u_xlat15;
    u_xlatb15 = (0.040449999f >= x_600);
    let x_602 : bool = u_xlatb15;
    if (x_602) {
      let x_607 : f32 = u_xlat2.x;
      x_603 = x_607;
    } else {
      let x_609 : f32 = u_xlat7;
      x_603 = x_609;
    }
    let x_610 : f32 = x_603;
    u_xlat15 = x_610;
    let x_612 : vec3<f32> = x_31.x_Vignette_Color;
    u_xlat2 = (-(x_612) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_615 : f32 = u_xlat15;
    let x_617 : vec3<f32> = u_xlat2;
    let x_620 : vec3<f32> = x_31.x_Vignette_Color;
    u_xlat2 = ((vec3<f32>(x_615, x_615, x_615) * x_617) + x_620);
    let x_622 : vec4<f32> = u_xlat0;
    let x_624 : vec3<f32> = u_xlat2;
    let x_626 : vec4<f32> = u_xlat0;
    u_xlat2 = ((vec3<f32>(x_622.x, x_622.y, x_622.z) * x_624) + -(vec3<f32>(x_626.x, x_626.y, x_626.z)));
    let x_632 : f32 = x_31.x_Vignette_Opacity;
    let x_634 : vec3<f32> = u_xlat2;
    let x_636 : vec4<f32> = u_xlat0;
    let x_638 : vec3<f32> = ((vec3<f32>(x_632, x_632, x_632) * x_634) + vec3<f32>(x_636.x, x_636.y, x_636.z));
    let x_639 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_638.x, x_638.y, x_638.z, x_639.w);
    let x_642 : f32 = u_xlat1.w;
    u_xlat0.x = (x_642 + -1.0f);
    let x_645 : f32 = u_xlat15;
    let x_647 : f32 = u_xlat0.x;
    SV_Target0.w = ((x_645 * x_647) + 1.0f);
  }
  let x_651 : vec4<f32> = phase0_Input0_1;
  let x_655 : vec4<f32> = x_31.x_Grain_Params2;
  let x_659 : vec4<f32> = x_31.x_Grain_Params2;
  let x_661 : vec2<f32> = ((vec2<f32>(x_651.z, x_651.w) * vec2<f32>(x_655.x, x_655.y)) + vec2<f32>(x_659.z, x_659.w));
  let x_662 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_661.x, x_661.y, x_662.z, x_662.w);
  let x_669 : vec4<f32> = u_xlat0;
  let x_671 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_669.x, x_669.y));
  let x_672 : vec3<f32> = vec3<f32>(x_671.x, x_671.y, x_671.z);
  let x_673 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_672.x, x_672.y, x_672.z, x_673.w);
  let x_675 : vec4<f32> = u_xlat1;
  u_xlat2 = vec3<f32>(x_675.x, x_675.y, x_675.z);
  let x_677 : vec3<f32> = u_xlat2;
  u_xlat2 = clamp(x_677, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_681 : vec3<f32> = u_xlat2;
  u_xlat15 = dot(x_681, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_687 : f32 = u_xlat15;
  u_xlat15 = sqrt(x_687);
  let x_691 : f32 = x_31.x_Grain_Params1.x;
  let x_692 : f32 = u_xlat15;
  u_xlat15 = ((x_691 * -(x_692)) + 1.0f);
  let x_696 : vec4<f32> = u_xlat0;
  let x_698 : vec4<f32> = u_xlat1;
  let x_700 : vec3<f32> = (vec3<f32>(x_696.x, x_696.y, x_696.z) * vec3<f32>(x_698.x, x_698.y, x_698.z));
  let x_701 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_700.x, x_700.y, x_700.z, x_701.w);
  let x_703 : vec4<f32> = u_xlat0;
  let x_706 : f32 = x_31.x_Grain_Params1.y;
  let x_708 : f32 = x_31.x_Grain_Params1.y;
  let x_710 : f32 = x_31.x_Grain_Params1.y;
  let x_712 : vec3<f32> = (vec3<f32>(x_703.x, x_703.y, x_703.z) * vec3<f32>(x_706, x_708, x_710));
  let x_713 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_712.x, x_712.y, x_712.z, x_713.w);
  let x_715 : vec4<f32> = u_xlat0;
  let x_717 : f32 = u_xlat15;
  let x_720 : vec4<f32> = u_xlat1;
  let x_722 : vec3<f32> = ((vec3<f32>(x_715.x, x_715.y, x_715.z) * vec3<f32>(x_717, x_717, x_717)) + vec3<f32>(x_720.x, x_720.y, x_720.z));
  let x_723 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_722.x, x_722.y, x_722.z, x_723.w);
  let x_725 : vec4<f32> = phase0_Input0_1;
  let x_729 : vec4<f32> = x_31.x_Dithering_Coords;
  let x_733 : vec4<f32> = x_31.x_Dithering_Coords;
  let x_735 : vec2<f32> = ((vec2<f32>(x_725.x, x_725.y) * vec2<f32>(x_729.x, x_729.y)) + vec2<f32>(x_733.z, x_733.w));
  let x_736 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_735.x, x_735.y, x_736.z, x_736.w);
  let x_743 : vec4<f32> = u_xlat1;
  let x_745 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_743.x, x_743.y));
  u_xlat15 = x_745.w;
  let x_747 : f32 = u_xlat15;
  u_xlat15 = ((x_747 * 2.0f) + -1.0f);
  let x_751 : f32 = u_xlat15;
  u_xlat1.x = ((x_751 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_757 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_757, 0.0f, 1.0f);
  let x_761 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_761 * 2.0f) + -1.0f);
  let x_765 : f32 = u_xlat15;
  u_xlat15 = (-(abs(x_765)) + 1.0f);
  let x_769 : f32 = u_xlat15;
  u_xlat15 = sqrt(x_769);
  let x_771 : f32 = u_xlat15;
  u_xlat15 = (-(x_771) + 1.0f);
  let x_774 : f32 = u_xlat15;
  let x_776 : f32 = u_xlat1.x;
  u_xlat15 = (x_774 * x_776);
  let x_778 : vec4<f32> = u_xlat0;
  let x_782 : vec3<f32> = (vec3<f32>(x_778.x, x_778.y, x_778.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_783 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_782.x, x_782.y, x_782.z, x_783.w);
  let x_785 : vec4<f32> = u_xlat0;
  u_xlat2 = max(abs(vec3<f32>(x_785.x, x_785.y, x_785.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_790 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_790);
  let x_792 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_792 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_796 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_796);
  let x_798 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_798 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_807 : vec4<f32> = u_xlat0;
  let x_810 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_807.x, x_807.y, x_807.z, x_807.x));
  u_xlatb0 = vec3<bool>(x_810.x, x_810.y, x_810.z);
  let x_813 : bool = u_xlatb0.x;
  if (x_813) {
    let x_818 : f32 = u_xlat1.x;
    x_814 = x_818;
  } else {
    let x_821 : f32 = u_xlat2.x;
    x_814 = x_821;
  }
  let x_822 : f32 = x_814;
  u_xlat0.x = x_822;
  let x_825 : bool = u_xlatb0.y;
  if (x_825) {
    let x_830 : f32 = u_xlat1.y;
    x_826 = x_830;
  } else {
    let x_833 : f32 = u_xlat2.y;
    x_826 = x_833;
  }
  let x_834 : f32 = x_826;
  u_xlat0.y = x_834;
  let x_837 : bool = u_xlatb0.z;
  if (x_837) {
    let x_842 : f32 = u_xlat1.z;
    x_838 = x_842;
  } else {
    let x_845 : f32 = u_xlat2.z;
    x_838 = x_845;
  }
  let x_846 : f32 = x_838;
  u_xlat0.z = x_846;
  let x_848 : f32 = u_xlat15;
  let x_853 : vec4<f32> = u_xlat0;
  let x_855 : vec3<f32> = ((vec3<f32>(x_848, x_848, x_848) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_853.x, x_853.y, x_853.z));
  let x_856 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_855.x, x_855.y, x_855.z, x_856.w);
  let x_858 : vec4<f32> = u_xlat0;
  let x_861 : vec3<f32> = (vec3<f32>(x_858.x, x_858.y, x_858.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_862 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_861.x, x_861.y, x_861.z, x_862.w);
  let x_864 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_864.x, x_864.y, x_864.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_868 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_868 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_871 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_871), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_874 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_874);
  let x_876 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_876 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_879 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_879);
  let x_882 : vec4<f32> = u_xlat0;
  let x_884 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_882.x, x_882.y, x_882.z, x_882.x));
  u_xlatb0 = vec3<bool>(x_884.x, x_884.y, x_884.z);
  let x_887 : bool = u_xlatb0.x;
  if (x_887) {
    let x_892 : f32 = u_xlat1.x;
    x_888 = x_892;
  } else {
    let x_895 : f32 = u_xlat2.x;
    x_888 = x_895;
  }
  let x_896 : f32 = x_888;
  SV_Target0.x = x_896;
  let x_899 : bool = u_xlatb0.y;
  if (x_899) {
    let x_904 : f32 = u_xlat1.y;
    x_900 = x_904;
  } else {
    let x_907 : f32 = u_xlat2.y;
    x_900 = x_907;
  }
  let x_908 : f32 = x_900;
  SV_Target0.y = x_908;
  let x_911 : bool = u_xlatb0.z;
  if (x_911) {
    let x_916 : f32 = u_xlat1.z;
    x_912 = x_916;
  } else {
    let x_919 : f32 = u_xlat2.z;
    x_912 = x_919;
  }
  let x_920 : f32 = x_912;
  SV_Target0.z = x_920;
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

