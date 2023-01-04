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

var<private> u_xlatb2 : bool;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat7 : f32;

var<private> u_xlatb8 : bool;

var<private> u_xlatb0 : vec3<bool>;

@group(0) @binding(3) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_AutoExposureTex : sampler;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

var<private> u_xlatb15 : bool;

var<private> u_xlat15 : f32;

@group(0) @binding(4) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(8) var sampler_Vignette_Mask : sampler;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_DitheringTex : sampler;

var<private> u_xlatb1 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_218 : f32;
  var x_375 : f32;
  var x_407 : f32;
  var x_629 : f32;
  var hlslcc_movcTemp : vec3<f32>;
  var x_780 : f32;
  var x_792 : f32;
  var x_804 : f32;
  var x_854 : f32;
  var x_866 : f32;
  var x_878 : f32;
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
    let x_211 : f32 = u_xlat2.x;
    let x_213 : f32 = u_xlat2.x;
    u_xlatb2 = (x_211 < -(x_213));
    let x_216 : bool = u_xlatb2;
    if (x_216) {
      let x_221 : f32 = u_xlat8;
      x_218 = -(x_221);
    } else {
      let x_224 : f32 = u_xlat8;
      x_218 = x_224;
    }
    let x_225 : f32 = x_218;
    u_xlat2.x = x_225;
    let x_228 : f32 = u_xlat3.x;
    let x_230 : f32 = u_xlat2.x;
    u_xlat2.x = ((x_228 * x_230) + -1.0f);
    let x_234 : vec4<f32> = u_xlat0;
    let x_236 : vec3<f32> = u_xlat2;
    let x_239 : vec4<f32> = u_xlat1;
    u_xlat12 = ((vec2<f32>(x_234.x, x_234.y) * vec2<f32>(x_236.x, x_236.x)) + vec2<f32>(x_239.x, x_239.y));
  }
  let x_242 : vec4<f32> = u_xlat0;
  let x_244 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec2<f32>(x_242.z, x_242.w), vec2<f32>(x_244.z, x_244.w));
  let x_249 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_249);
  let x_252 : bool = u_xlatb7;
  if (x_252) {
    let x_255 : vec4<f32> = u_xlat0;
    let x_258 : vec4<f32> = x_31.x_Distortion_Amount;
    let x_260 : vec2<f32> = (vec2<f32>(x_255.x, x_255.x) * vec2<f32>(x_258.x, x_258.y));
    let x_261 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_260.x, x_260.y, x_261.z, x_261.w);
    let x_264 : f32 = u_xlat1.x;
    u_xlat2.x = cos(x_264);
    let x_268 : f32 = u_xlat1.x;
    u_xlat1.x = sin(x_268);
    let x_273 : f32 = u_xlat1.x;
    let x_275 : f32 = u_xlat2.x;
    u_xlat5.x = (x_273 / x_275);
    let x_279 : f32 = u_xlat1.y;
    u_xlat1.x = (1.0f / x_279);
    let x_283 : f32 = u_xlat5.x;
    let x_285 : f32 = u_xlat1.x;
    u_xlat5.x = ((x_283 * x_285) + -1.0f);
    let x_289 : vec4<f32> = u_xlat0;
    let x_291 : vec3<f32> = u_xlat5;
    let x_294 : vec4<f32> = u_xlat1;
    let x_296 : vec2<f32> = ((vec2<f32>(x_289.z, x_289.w) * vec2<f32>(x_291.x, x_291.x)) + vec2<f32>(x_294.z, x_294.w));
    let x_297 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_296.x, x_296.y, x_297.z, x_297.w);
  } else {
    let x_301 : f32 = u_xlat0.x;
    u_xlat5.x = (1.0f / x_301);
    let x_305 : f32 = u_xlat5.x;
    let x_307 : f32 = x_31.x_Distortion_Amount.x;
    u_xlat5.x = (x_305 * x_307);
    let x_311 : f32 = u_xlat0.x;
    let x_313 : f32 = x_31.x_Distortion_Amount.y;
    u_xlat0.x = (x_311 * x_313);
    let x_317 : f32 = u_xlat0.x;
    u_xlat2.x = min(abs(x_317), 1.0f);
    let x_323 : f32 = u_xlat0.x;
    u_xlat7 = max(abs(x_323), 1.0f);
    let x_326 : f32 = u_xlat7;
    u_xlat7 = (1.0f / x_326);
    let x_328 : f32 = u_xlat7;
    let x_330 : f32 = u_xlat2.x;
    u_xlat2.x = (x_328 * x_330);
    let x_334 : f32 = u_xlat2.x;
    let x_336 : f32 = u_xlat2.x;
    u_xlat7 = (x_334 * x_336);
    let x_338 : f32 = u_xlat7;
    u_xlat3.x = ((x_338 * 0.0208351f) + -0.085133001f);
    let x_342 : f32 = u_xlat7;
    let x_344 : f32 = u_xlat3.x;
    u_xlat3.x = ((x_342 * x_344) + 0.180141002f);
    let x_348 : f32 = u_xlat7;
    let x_350 : f32 = u_xlat3.x;
    u_xlat3.x = ((x_348 * x_350) + -0.330299497f);
    let x_354 : f32 = u_xlat7;
    let x_356 : f32 = u_xlat3.x;
    u_xlat7 = ((x_354 * x_356) + 0.999866009f);
    let x_359 : f32 = u_xlat7;
    let x_361 : f32 = u_xlat2.x;
    u_xlat3.x = (x_359 * x_361);
    let x_366 : f32 = u_xlat0.x;
    u_xlatb8 = (1.0f < abs(x_366));
    let x_370 : f32 = u_xlat3.x;
    u_xlat3.x = ((x_370 * -2.0f) + 1.570796371f);
    let x_374 : bool = u_xlatb8;
    if (x_374) {
      let x_379 : f32 = u_xlat3.x;
      x_375 = x_379;
    } else {
      x_375 = 0.0f;
    }
    let x_381 : f32 = x_375;
    u_xlat3.x = x_381;
    let x_384 : f32 = u_xlat2.x;
    let x_385 : f32 = u_xlat7;
    let x_388 : f32 = u_xlat3.x;
    u_xlat2.x = ((x_384 * x_385) + x_388);
    let x_392 : f32 = u_xlat0.x;
    u_xlat0.x = min(x_392, 1.0f);
    let x_399 : f32 = u_xlat0.x;
    let x_401 : f32 = u_xlat0.x;
    u_xlatb0.x = (x_399 < -(x_401));
    let x_406 : bool = u_xlatb0.x;
    if (x_406) {
      let x_411 : f32 = u_xlat2.x;
      x_407 = -(x_411);
    } else {
      let x_415 : f32 = u_xlat2.x;
      x_407 = x_415;
    }
    let x_416 : f32 = x_407;
    u_xlat0.x = x_416;
    let x_419 : f32 = u_xlat5.x;
    let x_421 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_419 * x_421) + -1.0f);
    let x_425 : vec4<f32> = u_xlat0;
    let x_427 : vec4<f32> = u_xlat0;
    let x_430 : vec4<f32> = u_xlat1;
    let x_432 : vec2<f32> = ((vec2<f32>(x_425.z, x_425.w) * vec2<f32>(x_427.x, x_427.x)) + vec2<f32>(x_430.z, x_430.w));
    let x_433 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_432.x, x_432.y, x_433.z, x_433.w);
  }
  let x_445 : vec4<f32> = phase0_Input0_1;
  let x_447 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, vec2<f32>(x_445.x, x_445.y));
  u_xlat0.x = x_447.x;
  let x_455 : vec4<f32> = u_xlat1;
  let x_457 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_455.x, x_455.y));
  u_xlat1 = x_457;
  let x_458 : vec4<f32> = u_xlat0;
  let x_460 : vec4<f32> = u_xlat1;
  let x_462 : vec3<f32> = (vec3<f32>(x_458.x, x_458.x, x_458.x) * vec3<f32>(x_460.x, x_460.y, x_460.z));
  let x_463 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_462.x, x_462.y, x_462.z, x_463.w);
  let x_468 : f32 = x_31.x_Vignette_Mode;
  u_xlatb15 = (x_468 < 0.5f);
  let x_470 : bool = u_xlatb15;
  if (x_470) {
    let x_473 : vec2<f32> = u_xlat12;
    let x_477 : vec2<f32> = x_31.x_Vignette_Center;
    let x_479 : vec2<f32> = (x_473 + -(x_477));
    let x_480 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_479.x, x_479.y, x_480.z, x_480.w);
    let x_482 : vec4<f32> = u_xlat1;
    let x_487 : vec4<f32> = x_31.x_Vignette_Settings;
    let x_489 : vec2<f32> = (abs(vec2<f32>(x_482.y, x_482.x)) * vec2<f32>(x_487.x, x_487.x));
    let x_490 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_490.x, x_489.x, x_489.y, x_490.w);
    let x_495 : f32 = x_31.x_ScreenParams.x;
    let x_497 : f32 = x_31.x_ScreenParams.y;
    u_xlat15 = (x_495 / x_497);
    let x_499 : f32 = u_xlat15;
    u_xlat15 = (x_499 + -1.0f);
    let x_502 : f32 = x_31.x_Vignette_Settings.w;
    let x_503 : f32 = u_xlat15;
    u_xlat15 = ((x_502 * x_503) + 1.0f);
    let x_506 : f32 = u_xlat15;
    let x_509 : f32 = u_xlat1.z;
    u_xlat1.x = (x_506 * x_509);
    let x_512 : vec4<f32> = u_xlat1;
    let x_513 : vec2<f32> = vec2<f32>(x_512.x, x_512.y);
    let x_514 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_513.x, x_513.y, x_514.z, x_514.w);
    let x_516 : vec4<f32> = u_xlat1;
    let x_520 : vec2<f32> = clamp(vec2<f32>(x_516.x, x_516.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_521 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_520.x, x_520.y, x_521.z, x_521.w);
    let x_523 : vec4<f32> = u_xlat1;
    let x_525 : vec2<f32> = log2(vec2<f32>(x_523.x, x_523.y));
    let x_526 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_525.x, x_525.y, x_526.z, x_526.w);
    let x_528 : vec4<f32> = u_xlat1;
    let x_531 : vec4<f32> = x_31.x_Vignette_Settings;
    let x_533 : vec2<f32> = (vec2<f32>(x_528.x, x_528.y) * vec2<f32>(x_531.z, x_531.z));
    let x_534 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_533.x, x_533.y, x_534.z, x_534.w);
    let x_536 : vec4<f32> = u_xlat1;
    let x_538 : vec2<f32> = exp2(vec2<f32>(x_536.x, x_536.y));
    let x_539 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_538.x, x_538.y, x_539.z, x_539.w);
    let x_541 : vec4<f32> = u_xlat1;
    let x_543 : vec4<f32> = u_xlat1;
    u_xlat15 = dot(vec2<f32>(x_541.x, x_541.y), vec2<f32>(x_543.x, x_543.y));
    let x_546 : f32 = u_xlat15;
    u_xlat15 = (-(x_546) + 1.0f);
    let x_549 : f32 = u_xlat15;
    u_xlat15 = max(x_549, 0.0f);
    let x_551 : f32 = u_xlat15;
    u_xlat15 = log2(x_551);
    let x_553 : f32 = u_xlat15;
    let x_555 : f32 = x_31.x_Vignette_Settings.y;
    u_xlat15 = (x_553 * x_555);
    let x_557 : f32 = u_xlat15;
    u_xlat15 = exp2(x_557);
    let x_562 : vec3<f32> = x_31.x_Vignette_Color;
    let x_565 : vec3<f32> = (-(x_562) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_566 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_565.x, x_565.y, x_565.z, x_566.w);
    let x_568 : f32 = u_xlat15;
    let x_570 : vec4<f32> = u_xlat1;
    let x_574 : vec3<f32> = x_31.x_Vignette_Color;
    let x_575 : vec3<f32> = ((vec3<f32>(x_568, x_568, x_568) * vec3<f32>(x_570.x, x_570.y, x_570.z)) + x_574);
    let x_576 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_575.x, x_575.y, x_575.z, x_576.w);
    let x_578 : vec4<f32> = u_xlat0;
    let x_580 : vec4<f32> = u_xlat1;
    let x_582 : vec3<f32> = (vec3<f32>(x_578.x, x_578.y, x_578.z) * vec3<f32>(x_580.x, x_580.y, x_580.z));
    let x_583 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_582.x, x_582.y, x_582.z, x_583.w);
    let x_586 : f32 = u_xlat1.w;
    u_xlat2.x = (x_586 + -1.0f);
    let x_589 : f32 = u_xlat15;
    let x_591 : f32 = u_xlat2.x;
    u_xlat3.w = ((x_589 * x_591) + 1.0f);
  } else {
    let x_601 : vec2<f32> = u_xlat12;
    let x_602 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_601);
    u_xlat15 = x_602.w;
    let x_604 : f32 = u_xlat15;
    u_xlat2.x = (x_604 * 0.077399381f);
    let x_608 : f32 = u_xlat15;
    u_xlat7 = (x_608 + 0.055f);
    let x_611 : f32 = u_xlat7;
    u_xlat7 = (x_611 * 0.947867334f);
    let x_614 : f32 = u_xlat7;
    u_xlat7 = max(abs(x_614), 1.1920929e-07f);
    let x_618 : f32 = u_xlat7;
    u_xlat7 = log2(x_618);
    let x_620 : f32 = u_xlat7;
    u_xlat7 = (x_620 * 2.400000095f);
    let x_623 : f32 = u_xlat7;
    u_xlat7 = exp2(x_623);
    let x_626 : f32 = u_xlat15;
    u_xlatb15 = (0.040449999f >= x_626);
    let x_628 : bool = u_xlatb15;
    if (x_628) {
      let x_633 : f32 = u_xlat2.x;
      x_629 = x_633;
    } else {
      let x_635 : f32 = u_xlat7;
      x_629 = x_635;
    }
    let x_636 : f32 = x_629;
    u_xlat15 = x_636;
    let x_638 : vec3<f32> = x_31.x_Vignette_Color;
    u_xlat2 = (-(x_638) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_641 : f32 = u_xlat15;
    let x_643 : vec3<f32> = u_xlat2;
    let x_646 : vec3<f32> = x_31.x_Vignette_Color;
    u_xlat2 = ((vec3<f32>(x_641, x_641, x_641) * x_643) + x_646);
    let x_648 : vec4<f32> = u_xlat0;
    let x_650 : vec3<f32> = u_xlat2;
    let x_652 : vec4<f32> = u_xlat0;
    u_xlat2 = ((vec3<f32>(x_648.x, x_648.y, x_648.z) * x_650) + -(vec3<f32>(x_652.x, x_652.y, x_652.z)));
    let x_658 : f32 = x_31.x_Vignette_Opacity;
    let x_660 : vec3<f32> = u_xlat2;
    let x_662 : vec4<f32> = u_xlat0;
    let x_664 : vec3<f32> = ((vec3<f32>(x_658, x_658, x_658) * x_660) + vec3<f32>(x_662.x, x_662.y, x_662.z));
    let x_665 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_664.x, x_664.y, x_664.z, x_665.w);
    let x_668 : f32 = u_xlat1.w;
    u_xlat0.x = (x_668 + -1.0f);
    let x_671 : f32 = u_xlat15;
    let x_673 : f32 = u_xlat0.x;
    u_xlat3.w = ((x_671 * x_673) + 1.0f);
  }
  let x_677 : vec4<f32> = phase0_Input0_1;
  let x_681 : vec4<f32> = x_31.x_Dithering_Coords;
  let x_685 : vec4<f32> = x_31.x_Dithering_Coords;
  let x_687 : vec2<f32> = ((vec2<f32>(x_677.x, x_677.y) * vec2<f32>(x_681.x, x_681.y)) + vec2<f32>(x_685.z, x_685.w));
  let x_688 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_687.x, x_687.y, x_688.z, x_688.w);
  let x_695 : vec4<f32> = u_xlat0;
  let x_697 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_695.x, x_695.y));
  u_xlat0.x = x_697.w;
  let x_701 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_701 * 2.0f) + -1.0f);
  let x_707 : f32 = u_xlat0.x;
  u_xlat5.x = ((x_707 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_713 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_713, 0.0f, 1.0f);
  let x_717 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_717 * 2.0f) + -1.0f);
  let x_722 : f32 = u_xlat0.x;
  u_xlat0.x = (-(abs(x_722)) + 1.0f);
  let x_728 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_728);
  let x_732 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_732) + 1.0f);
  let x_737 : f32 = u_xlat0.x;
  let x_739 : f32 = u_xlat5.x;
  u_xlat0.x = (x_737 * x_739);
  let x_742 : vec4<f32> = u_xlat1;
  u_xlat5 = (vec3<f32>(x_742.x, x_742.y, x_742.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_747 : vec4<f32> = u_xlat1;
  u_xlat2 = max(abs(vec3<f32>(x_747.x, x_747.y, x_747.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_752 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_752);
  let x_754 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_754 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_758 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_758);
  let x_760 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_760 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_770 : vec4<f32> = u_xlat1;
  let x_773 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_770.x, x_770.y, x_770.z, x_770.x));
  u_xlatb1 = vec3<bool>(x_773.x, x_773.y, x_773.z);
  let x_777 : vec3<f32> = u_xlat5;
  hlslcc_movcTemp = x_777;
  let x_779 : bool = u_xlatb1.x;
  if (x_779) {
    let x_784 : f32 = u_xlat5.x;
    x_780 = x_784;
  } else {
    let x_787 : f32 = u_xlat2.x;
    x_780 = x_787;
  }
  let x_788 : f32 = x_780;
  hlslcc_movcTemp.x = x_788;
  let x_791 : bool = u_xlatb1.y;
  if (x_791) {
    let x_796 : f32 = u_xlat5.y;
    x_792 = x_796;
  } else {
    let x_799 : f32 = u_xlat2.y;
    x_792 = x_799;
  }
  let x_800 : f32 = x_792;
  hlslcc_movcTemp.y = x_800;
  let x_803 : bool = u_xlatb1.z;
  if (x_803) {
    let x_808 : f32 = u_xlat5.z;
    x_804 = x_808;
  } else {
    let x_811 : f32 = u_xlat2.z;
    x_804 = x_811;
  }
  let x_812 : f32 = x_804;
  hlslcc_movcTemp.z = x_812;
  let x_814 : vec3<f32> = hlslcc_movcTemp;
  u_xlat5 = x_814;
  let x_815 : vec4<f32> = u_xlat0;
  let x_820 : vec3<f32> = u_xlat5;
  let x_821 : vec3<f32> = ((vec3<f32>(x_815.x, x_815.x, x_815.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + x_820);
  let x_822 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_821.x, x_821.y, x_821.z, x_822.w);
  let x_824 : vec4<f32> = u_xlat0;
  let x_827 : vec3<f32> = (vec3<f32>(x_824.x, x_824.y, x_824.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_828 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_827.x, x_827.y, x_827.z, x_828.w);
  let x_830 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_830.x, x_830.y, x_830.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_834 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_834 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_837 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_837), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_840 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_840);
  let x_842 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_842 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_845 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_845);
  let x_848 : vec4<f32> = u_xlat0;
  let x_850 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_848.x, x_848.y, x_848.z, x_848.x));
  u_xlatb0 = vec3<bool>(x_850.x, x_850.y, x_850.z);
  let x_853 : bool = u_xlatb0.x;
  if (x_853) {
    let x_858 : f32 = u_xlat1.x;
    x_854 = x_858;
  } else {
    let x_861 : f32 = u_xlat2.x;
    x_854 = x_861;
  }
  let x_862 : f32 = x_854;
  u_xlat3.x = x_862;
  let x_865 : bool = u_xlatb0.y;
  if (x_865) {
    let x_870 : f32 = u_xlat1.y;
    x_866 = x_870;
  } else {
    let x_873 : f32 = u_xlat2.y;
    x_866 = x_873;
  }
  let x_874 : f32 = x_866;
  u_xlat3.y = x_874;
  let x_877 : bool = u_xlatb0.z;
  if (x_877) {
    let x_882 : f32 = u_xlat1.z;
    x_878 = x_882;
  } else {
    let x_885 : f32 = u_xlat2.z;
    x_878 = x_885;
  }
  let x_886 : f32 = x_878;
  u_xlat3.z = x_886;
  let x_890 : vec4<f32> = u_xlat3;
  SV_Target0 = x_890;
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

