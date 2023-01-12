struct PGlobals {
  x_ScreenParams : vec4<f32>,
  x_Distortion_Amount : vec4<f32>,
  x_Distortion_CenterScale : vec4<f32>,
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
  x_LumaInAlpha : f32,
}

var<private> phase0_Input0_1 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_32 : PGlobals;

@group(0) @binding(1) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_AutoExposureTex : sampler;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_MainTex : sampler;

@group(0) @binding(2) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(6) var sampler_Vignette_Mask : sampler;

@group(0) @binding(3) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_GrainTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlatb7 : bool;
  var u_xlat12 : vec2<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : f32;
  var u_xlat17 : f32;
  var u_xlat8 : f32;
  var u_xlat13 : f32;
  var u_xlat18 : f32;
  var u_xlatb4 : bool;
  var u_xlatb2 : bool;
  var x_218 : f32;
  var u_xlat5 : f32;
  var u_xlat7 : f32;
  var u_xlatb8 : bool;
  var x_369 : f32;
  var u_xlatb0 : bool;
  var x_397 : f32;
  var u_xlatb15 : bool;
  var u_xlat15 : f32;
  var x_618 : f32;
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
    u_xlat4 = cos(x_101);
    let x_104 : f32 = u_xlat3.x;
    let x_105 : f32 = u_xlat4;
    u_xlat12.x = (x_104 / x_105);
    let x_112 : f32 = u_xlat12.y;
    u_xlat17 = (1.0f / x_112);
    let x_115 : f32 = u_xlat12.x;
    let x_116 : f32 = u_xlat17;
    u_xlat12.x = ((x_115 * x_116) + -1.0f);
    let x_121 : vec4<f32> = u_xlat0;
    let x_123 : vec2<f32> = u_xlat12;
    let x_126 : vec4<f32> = u_xlat1;
    u_xlat12 = ((vec2<f32>(x_121.x, x_121.y) * vec2<f32>(x_123.x, x_123.x)) + vec2<f32>(x_126.x, x_126.y));
  } else {
    let x_131 : f32 = u_xlat2.x;
    u_xlat3.x = (1.0f / x_131);
    let x_135 : f32 = u_xlat3.x;
    let x_137 : f32 = x_32.x_Distortion_Amount.x;
    u_xlat3.x = (x_135 * x_137);
    let x_141 : f32 = u_xlat2.x;
    let x_143 : f32 = x_32.x_Distortion_Amount.y;
    u_xlat2.x = (x_141 * x_143);
    let x_148 : f32 = u_xlat2.x;
    u_xlat8 = min(abs(x_148), 1.0f);
    let x_153 : f32 = u_xlat2.x;
    u_xlat13 = max(abs(x_153), 1.0f);
    let x_156 : f32 = u_xlat13;
    u_xlat13 = (1.0f / x_156);
    let x_158 : f32 = u_xlat13;
    let x_159 : f32 = u_xlat8;
    u_xlat8 = (x_158 * x_159);
    let x_161 : f32 = u_xlat8;
    let x_162 : f32 = u_xlat8;
    u_xlat13 = (x_161 * x_162);
    let x_165 : f32 = u_xlat13;
    u_xlat18 = ((x_165 * 0.0208351f) + -0.085133001f);
    let x_170 : f32 = u_xlat13;
    let x_171 : f32 = u_xlat18;
    u_xlat18 = ((x_170 * x_171) + 0.180141002f);
    let x_175 : f32 = u_xlat13;
    let x_176 : f32 = u_xlat18;
    u_xlat18 = ((x_175 * x_176) + -0.330299497f);
    let x_180 : f32 = u_xlat13;
    let x_181 : f32 = u_xlat18;
    u_xlat13 = ((x_180 * x_181) + 0.999866009f);
    let x_185 : f32 = u_xlat13;
    let x_186 : f32 = u_xlat8;
    u_xlat18 = (x_185 * x_186);
    let x_190 : f32 = u_xlat2.x;
    u_xlatb4 = (1.0f < abs(x_190));
    let x_193 : f32 = u_xlat18;
    u_xlat18 = ((x_193 * -2.0f) + 1.570796371f);
    let x_198 : bool = u_xlatb4;
    let x_199 : f32 = u_xlat18;
    u_xlat18 = select(0.0f, x_199, x_198);
    let x_201 : f32 = u_xlat8;
    let x_202 : f32 = u_xlat13;
    let x_204 : f32 = u_xlat18;
    u_xlat8 = ((x_201 * x_202) + x_204);
    let x_207 : f32 = u_xlat2.x;
    u_xlat2.x = min(x_207, 1.0f);
    let x_212 : f32 = u_xlat2.x;
    let x_214 : f32 = u_xlat2.x;
    u_xlatb2 = (x_212 < -(x_214));
    let x_217 : bool = u_xlatb2;
    if (x_217) {
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
    let x_258 : vec4<f32> = x_32.x_Distortion_Amount;
    let x_260 : vec2<f32> = (vec2<f32>(x_255.x, x_255.x) * vec2<f32>(x_258.x, x_258.y));
    let x_261 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_260.x, x_260.y, x_261.z, x_261.w);
    let x_264 : f32 = u_xlat1.x;
    u_xlat2.x = cos(x_264);
    let x_268 : f32 = u_xlat1.x;
    u_xlat1.x = sin(x_268);
    let x_273 : f32 = u_xlat1.x;
    let x_275 : f32 = u_xlat2.x;
    u_xlat5 = (x_273 / x_275);
    let x_278 : f32 = u_xlat1.y;
    u_xlat1.x = (1.0f / x_278);
    let x_281 : f32 = u_xlat5;
    let x_283 : f32 = u_xlat1.x;
    u_xlat5 = ((x_281 * x_283) + -1.0f);
    let x_286 : vec4<f32> = u_xlat0;
    let x_288 : f32 = u_xlat5;
    let x_291 : vec4<f32> = u_xlat1;
    let x_293 : vec2<f32> = ((vec2<f32>(x_286.z, x_286.w) * vec2<f32>(x_288, x_288)) + vec2<f32>(x_291.z, x_291.w));
    let x_294 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_293.x, x_293.y, x_294.z, x_294.w);
  } else {
    let x_298 : f32 = u_xlat0.x;
    u_xlat5 = (1.0f / x_298);
    let x_300 : f32 = u_xlat5;
    let x_302 : f32 = x_32.x_Distortion_Amount.x;
    u_xlat5 = (x_300 * x_302);
    let x_305 : f32 = u_xlat0.x;
    let x_307 : f32 = x_32.x_Distortion_Amount.y;
    u_xlat0.x = (x_305 * x_307);
    let x_311 : f32 = u_xlat0.x;
    u_xlat2.x = min(abs(x_311), 1.0f);
    let x_317 : f32 = u_xlat0.x;
    u_xlat7 = max(abs(x_317), 1.0f);
    let x_320 : f32 = u_xlat7;
    u_xlat7 = (1.0f / x_320);
    let x_322 : f32 = u_xlat7;
    let x_324 : f32 = u_xlat2.x;
    u_xlat2.x = (x_322 * x_324);
    let x_328 : f32 = u_xlat2.x;
    let x_330 : f32 = u_xlat2.x;
    u_xlat7 = (x_328 * x_330);
    let x_332 : f32 = u_xlat7;
    u_xlat3.x = ((x_332 * 0.0208351f) + -0.085133001f);
    let x_336 : f32 = u_xlat7;
    let x_338 : f32 = u_xlat3.x;
    u_xlat3.x = ((x_336 * x_338) + 0.180141002f);
    let x_342 : f32 = u_xlat7;
    let x_344 : f32 = u_xlat3.x;
    u_xlat3.x = ((x_342 * x_344) + -0.330299497f);
    let x_348 : f32 = u_xlat7;
    let x_350 : f32 = u_xlat3.x;
    u_xlat7 = ((x_348 * x_350) + 0.999866009f);
    let x_353 : f32 = u_xlat7;
    let x_355 : f32 = u_xlat2.x;
    u_xlat3.x = (x_353 * x_355);
    let x_360 : f32 = u_xlat0.x;
    u_xlatb8 = (1.0f < abs(x_360));
    let x_364 : f32 = u_xlat3.x;
    u_xlat3.x = ((x_364 * -2.0f) + 1.570796371f);
    let x_368 : bool = u_xlatb8;
    if (x_368) {
      let x_373 : f32 = u_xlat3.x;
      x_369 = x_373;
    } else {
      x_369 = 0.0f;
    }
    let x_375 : f32 = x_369;
    u_xlat3.x = x_375;
    let x_378 : f32 = u_xlat2.x;
    let x_379 : f32 = u_xlat7;
    let x_382 : f32 = u_xlat3.x;
    u_xlat2.x = ((x_378 * x_379) + x_382);
    let x_386 : f32 = u_xlat0.x;
    u_xlat0.x = min(x_386, 1.0f);
    let x_391 : f32 = u_xlat0.x;
    let x_393 : f32 = u_xlat0.x;
    u_xlatb0 = (x_391 < -(x_393));
    let x_396 : bool = u_xlatb0;
    if (x_396) {
      let x_401 : f32 = u_xlat2.x;
      x_397 = -(x_401);
    } else {
      let x_405 : f32 = u_xlat2.x;
      x_397 = x_405;
    }
    let x_406 : f32 = x_397;
    u_xlat0.x = x_406;
    let x_408 : f32 = u_xlat5;
    let x_410 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_408 * x_410) + -1.0f);
    let x_414 : vec4<f32> = u_xlat0;
    let x_416 : vec4<f32> = u_xlat0;
    let x_419 : vec4<f32> = u_xlat1;
    let x_421 : vec2<f32> = ((vec2<f32>(x_414.z, x_414.w) * vec2<f32>(x_416.x, x_416.x)) + vec2<f32>(x_419.z, x_419.w));
    let x_422 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_421.x, x_421.y, x_422.z, x_422.w);
  }
  let x_434 : vec4<f32> = phase0_Input0_1;
  let x_436 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, vec2<f32>(x_434.x, x_434.y));
  u_xlat0.x = x_436.x;
  let x_444 : vec4<f32> = u_xlat1;
  let x_446 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_444.x, x_444.y));
  u_xlat1 = x_446;
  let x_447 : vec4<f32> = u_xlat0;
  let x_449 : vec4<f32> = u_xlat1;
  let x_451 : vec3<f32> = (vec3<f32>(x_447.x, x_447.x, x_447.x) * vec3<f32>(x_449.x, x_449.y, x_449.z));
  let x_452 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_451.x, x_451.y, x_451.z, x_452.w);
  let x_457 : f32 = x_32.x_Vignette_Mode;
  u_xlatb15 = (x_457 < 0.5f);
  let x_459 : bool = u_xlatb15;
  if (x_459) {
    let x_462 : vec2<f32> = u_xlat12;
    let x_466 : vec2<f32> = x_32.x_Vignette_Center;
    let x_468 : vec2<f32> = (x_462 + -(x_466));
    let x_469 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_468.x, x_468.y, x_469.z, x_469.w);
    let x_471 : vec4<f32> = u_xlat1;
    let x_476 : vec4<f32> = x_32.x_Vignette_Settings;
    let x_478 : vec2<f32> = (abs(vec2<f32>(x_471.y, x_471.x)) * vec2<f32>(x_476.x, x_476.x));
    let x_479 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_479.x, x_478.x, x_478.y, x_479.w);
    let x_484 : f32 = x_32.x_ScreenParams.x;
    let x_486 : f32 = x_32.x_ScreenParams.y;
    u_xlat15 = (x_484 / x_486);
    let x_488 : f32 = u_xlat15;
    u_xlat15 = (x_488 + -1.0f);
    let x_491 : f32 = x_32.x_Vignette_Settings.w;
    let x_492 : f32 = u_xlat15;
    u_xlat15 = ((x_491 * x_492) + 1.0f);
    let x_495 : f32 = u_xlat15;
    let x_498 : f32 = u_xlat1.z;
    u_xlat1.x = (x_495 * x_498);
    let x_501 : vec4<f32> = u_xlat1;
    let x_502 : vec2<f32> = vec2<f32>(x_501.x, x_501.y);
    let x_503 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_502.x, x_502.y, x_503.z, x_503.w);
    let x_505 : vec4<f32> = u_xlat1;
    let x_509 : vec2<f32> = clamp(vec2<f32>(x_505.x, x_505.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_510 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_509.x, x_509.y, x_510.z, x_510.w);
    let x_512 : vec4<f32> = u_xlat1;
    let x_514 : vec2<f32> = log2(vec2<f32>(x_512.x, x_512.y));
    let x_515 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_514.x, x_514.y, x_515.z, x_515.w);
    let x_517 : vec4<f32> = u_xlat1;
    let x_520 : vec4<f32> = x_32.x_Vignette_Settings;
    let x_522 : vec2<f32> = (vec2<f32>(x_517.x, x_517.y) * vec2<f32>(x_520.z, x_520.z));
    let x_523 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_522.x, x_522.y, x_523.z, x_523.w);
    let x_525 : vec4<f32> = u_xlat1;
    let x_527 : vec2<f32> = exp2(vec2<f32>(x_525.x, x_525.y));
    let x_528 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_527.x, x_527.y, x_528.z, x_528.w);
    let x_530 : vec4<f32> = u_xlat1;
    let x_532 : vec4<f32> = u_xlat1;
    u_xlat15 = dot(vec2<f32>(x_530.x, x_530.y), vec2<f32>(x_532.x, x_532.y));
    let x_535 : f32 = u_xlat15;
    u_xlat15 = (-(x_535) + 1.0f);
    let x_538 : f32 = u_xlat15;
    u_xlat15 = max(x_538, 0.0f);
    let x_540 : f32 = u_xlat15;
    u_xlat15 = log2(x_540);
    let x_542 : f32 = u_xlat15;
    let x_544 : f32 = x_32.x_Vignette_Settings.y;
    u_xlat15 = (x_542 * x_544);
    let x_546 : f32 = u_xlat15;
    u_xlat15 = exp2(x_546);
    let x_551 : vec3<f32> = x_32.x_Vignette_Color;
    let x_554 : vec3<f32> = (-(x_551) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_555 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_554.x, x_554.y, x_554.z, x_555.w);
    let x_557 : f32 = u_xlat15;
    let x_559 : vec4<f32> = u_xlat1;
    let x_563 : vec3<f32> = x_32.x_Vignette_Color;
    let x_564 : vec3<f32> = ((vec3<f32>(x_557, x_557, x_557) * vec3<f32>(x_559.x, x_559.y, x_559.z)) + x_563);
    let x_565 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_564.x, x_564.y, x_564.z, x_565.w);
    let x_567 : vec4<f32> = u_xlat0;
    let x_569 : vec4<f32> = u_xlat1;
    let x_571 : vec3<f32> = (vec3<f32>(x_567.x, x_567.y, x_567.z) * vec3<f32>(x_569.x, x_569.y, x_569.z));
    let x_572 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_571.x, x_571.y, x_571.z, x_572.w);
    let x_575 : f32 = u_xlat1.w;
    u_xlat2.x = (x_575 + -1.0f);
    let x_578 : f32 = u_xlat15;
    let x_580 : f32 = u_xlat2.x;
    u_xlat3.w = ((x_578 * x_580) + 1.0f);
  } else {
    let x_590 : vec2<f32> = u_xlat12;
    let x_591 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_590);
    u_xlat15 = x_591.w;
    let x_593 : f32 = u_xlat15;
    u_xlat2.x = (x_593 * 0.077399381f);
    let x_597 : f32 = u_xlat15;
    u_xlat7 = (x_597 + 0.055f);
    let x_600 : f32 = u_xlat7;
    u_xlat7 = (x_600 * 0.947867334f);
    let x_603 : f32 = u_xlat7;
    u_xlat7 = max(abs(x_603), 1.1920929e-07f);
    let x_607 : f32 = u_xlat7;
    u_xlat7 = log2(x_607);
    let x_609 : f32 = u_xlat7;
    u_xlat7 = (x_609 * 2.400000095f);
    let x_612 : f32 = u_xlat7;
    u_xlat7 = exp2(x_612);
    let x_615 : f32 = u_xlat15;
    u_xlatb15 = (0.040449999f >= x_615);
    let x_617 : bool = u_xlatb15;
    if (x_617) {
      let x_622 : f32 = u_xlat2.x;
      x_618 = x_622;
    } else {
      let x_624 : f32 = u_xlat7;
      x_618 = x_624;
    }
    let x_625 : f32 = x_618;
    u_xlat15 = x_625;
    let x_627 : vec3<f32> = x_32.x_Vignette_Color;
    u_xlat2 = (-(x_627) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_630 : f32 = u_xlat15;
    let x_632 : vec3<f32> = u_xlat2;
    let x_635 : vec3<f32> = x_32.x_Vignette_Color;
    u_xlat2 = ((vec3<f32>(x_630, x_630, x_630) * x_632) + x_635);
    let x_637 : vec4<f32> = u_xlat0;
    let x_639 : vec3<f32> = u_xlat2;
    let x_641 : vec4<f32> = u_xlat0;
    u_xlat2 = ((vec3<f32>(x_637.x, x_637.y, x_637.z) * x_639) + -(vec3<f32>(x_641.x, x_641.y, x_641.z)));
    let x_647 : f32 = x_32.x_Vignette_Opacity;
    let x_649 : vec3<f32> = u_xlat2;
    let x_651 : vec4<f32> = u_xlat0;
    let x_653 : vec3<f32> = ((vec3<f32>(x_647, x_647, x_647) * x_649) + vec3<f32>(x_651.x, x_651.y, x_651.z));
    let x_654 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_653.x, x_653.y, x_653.z, x_654.w);
    let x_657 : f32 = u_xlat1.w;
    u_xlat0.x = (x_657 + -1.0f);
    let x_660 : f32 = u_xlat15;
    let x_662 : f32 = u_xlat0.x;
    u_xlat3.w = ((x_660 * x_662) + 1.0f);
  }
  let x_666 : vec4<f32> = phase0_Input0_1;
  let x_670 : vec4<f32> = x_32.x_Grain_Params2;
  let x_674 : vec4<f32> = x_32.x_Grain_Params2;
  let x_676 : vec2<f32> = ((vec2<f32>(x_666.z, x_666.w) * vec2<f32>(x_670.x, x_670.y)) + vec2<f32>(x_674.z, x_674.w));
  let x_677 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_676.x, x_676.y, x_677.z, x_677.w);
  let x_684 : vec4<f32> = u_xlat0;
  let x_686 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_684.x, x_684.y));
  let x_687 : vec3<f32> = vec3<f32>(x_686.x, x_686.y, x_686.z);
  let x_688 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_687.x, x_687.y, x_687.z, x_688.w);
  let x_690 : vec4<f32> = u_xlat1;
  u_xlat2 = vec3<f32>(x_690.x, x_690.y, x_690.z);
  let x_692 : vec3<f32> = u_xlat2;
  u_xlat2 = clamp(x_692, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_696 : vec3<f32> = u_xlat2;
  u_xlat15 = dot(x_696, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_702 : f32 = u_xlat15;
  u_xlat15 = sqrt(x_702);
  let x_706 : f32 = x_32.x_Grain_Params1.x;
  let x_707 : f32 = u_xlat15;
  u_xlat15 = ((x_706 * -(x_707)) + 1.0f);
  let x_711 : vec4<f32> = u_xlat0;
  let x_713 : vec4<f32> = u_xlat1;
  let x_715 : vec3<f32> = (vec3<f32>(x_711.x, x_711.y, x_711.z) * vec3<f32>(x_713.x, x_713.y, x_713.z));
  let x_716 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_715.x, x_715.y, x_715.z, x_716.w);
  let x_718 : vec4<f32> = u_xlat0;
  let x_721 : f32 = x_32.x_Grain_Params1.y;
  let x_723 : f32 = x_32.x_Grain_Params1.y;
  let x_725 : f32 = x_32.x_Grain_Params1.y;
  let x_727 : vec3<f32> = (vec3<f32>(x_718.x, x_718.y, x_718.z) * vec3<f32>(x_721, x_723, x_725));
  let x_728 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_727.x, x_727.y, x_727.z, x_728.w);
  let x_730 : vec4<f32> = u_xlat0;
  let x_732 : f32 = u_xlat15;
  let x_735 : vec4<f32> = u_xlat1;
  let x_737 : vec3<f32> = ((vec3<f32>(x_730.x, x_730.y, x_730.z) * vec3<f32>(x_732, x_732, x_732)) + vec3<f32>(x_735.x, x_735.y, x_735.z));
  let x_738 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_737.x, x_737.y, x_737.z, x_738.w);
  let x_742 : f32 = x_32.x_LumaInAlpha;
  u_xlatb0 = (0.5f < x_742);
  let x_744 : bool = u_xlatb0;
  if (x_744) {
    let x_747 : vec4<f32> = u_xlat3;
    let x_748 : vec3<f32> = vec3<f32>(x_747.x, x_747.y, x_747.z);
    let x_749 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_748.x, x_748.y, x_748.z, x_749.w);
    let x_751 : vec4<f32> = u_xlat0;
    let x_755 : vec3<f32> = clamp(vec3<f32>(x_751.x, x_751.y, x_751.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_756 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_755.x, x_755.y, x_755.z, x_756.w);
    let x_758 : vec4<f32> = u_xlat0;
    u_xlat3.w = dot(vec3<f32>(x_758.x, x_758.y, x_758.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_764 : vec4<f32> = u_xlat3;
  SV_Target0 = x_764;
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

