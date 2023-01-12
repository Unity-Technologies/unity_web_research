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
  x_LumaInAlpha : f32,
}

var<private> phase0_Input0_1 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_32 : PGlobals;

@group(0) @binding(1) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_AutoExposureTex : sampler;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_MainTex : sampler;

@group(0) @binding(2) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(5) var sampler_Vignette_Mask : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : f32;
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
  var x_204 : f32;
  var u_xlat5 : f32;
  var u_xlat7 : f32;
  var u_xlatb8 : bool;
  var x_344 : f32;
  var u_xlatb0 : bool;
  var x_370 : f32;
  var u_xlatb15 : bool;
  var u_xlat15 : f32;
  var u_xlat6 : f32;
  var x_590 : f32;
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
  u_xlat2 = dot(vec2<f32>(x_61.x, x_61.y), vec2<f32>(x_63.x, x_63.y));
  let x_66 : f32 = u_xlat2;
  u_xlat2 = sqrt(x_66);
  let x_76 : f32 = x_32.x_Distortion_Amount.w;
  u_xlatb7 = (0.0f < x_76);
  let x_78 : bool = u_xlatb7;
  if (x_78) {
    let x_83 : f32 = u_xlat2;
    let x_86 : vec4<f32> = x_32.x_Distortion_Amount;
    u_xlat12 = (vec2<f32>(x_83, x_83) * vec2<f32>(x_86.x, x_86.y));
    let x_92 : f32 = u_xlat12.x;
    u_xlat3.x = sin(x_92);
    let x_97 : f32 = u_xlat12.x;
    u_xlat4 = cos(x_97);
    let x_100 : f32 = u_xlat3.x;
    let x_101 : f32 = u_xlat4;
    u_xlat12.x = (x_100 / x_101);
    let x_108 : f32 = u_xlat12.y;
    u_xlat17 = (1.0f / x_108);
    let x_111 : f32 = u_xlat12.x;
    let x_112 : f32 = u_xlat17;
    u_xlat12.x = ((x_111 * x_112) + -1.0f);
    let x_117 : vec4<f32> = u_xlat0;
    let x_119 : vec2<f32> = u_xlat12;
    let x_122 : vec4<f32> = u_xlat1;
    u_xlat12 = ((vec2<f32>(x_117.x, x_117.y) * vec2<f32>(x_119.x, x_119.x)) + vec2<f32>(x_122.x, x_122.y));
  } else {
    let x_126 : f32 = u_xlat2;
    u_xlat3.x = (1.0f / x_126);
    let x_130 : f32 = u_xlat3.x;
    let x_132 : f32 = x_32.x_Distortion_Amount.x;
    u_xlat3.x = (x_130 * x_132);
    let x_135 : f32 = u_xlat2;
    let x_137 : f32 = x_32.x_Distortion_Amount.y;
    u_xlat2 = (x_135 * x_137);
    let x_140 : f32 = u_xlat2;
    u_xlat8 = min(abs(x_140), 1.0f);
    let x_144 : f32 = u_xlat2;
    u_xlat13 = max(abs(x_144), 1.0f);
    let x_147 : f32 = u_xlat13;
    u_xlat13 = (1.0f / x_147);
    let x_149 : f32 = u_xlat13;
    let x_150 : f32 = u_xlat8;
    u_xlat8 = (x_149 * x_150);
    let x_152 : f32 = u_xlat8;
    let x_153 : f32 = u_xlat8;
    u_xlat13 = (x_152 * x_153);
    let x_156 : f32 = u_xlat13;
    u_xlat18 = ((x_156 * 0.0208351f) + -0.085133001f);
    let x_161 : f32 = u_xlat13;
    let x_162 : f32 = u_xlat18;
    u_xlat18 = ((x_161 * x_162) + 0.180141002f);
    let x_166 : f32 = u_xlat13;
    let x_167 : f32 = u_xlat18;
    u_xlat18 = ((x_166 * x_167) + -0.330299497f);
    let x_171 : f32 = u_xlat13;
    let x_172 : f32 = u_xlat18;
    u_xlat13 = ((x_171 * x_172) + 0.999866009f);
    let x_176 : f32 = u_xlat13;
    let x_177 : f32 = u_xlat8;
    u_xlat18 = (x_176 * x_177);
    let x_180 : f32 = u_xlat2;
    u_xlatb4 = (1.0f < abs(x_180));
    let x_183 : f32 = u_xlat18;
    u_xlat18 = ((x_183 * -2.0f) + 1.570796371f);
    let x_188 : bool = u_xlatb4;
    let x_189 : f32 = u_xlat18;
    u_xlat18 = select(0.0f, x_189, x_188);
    let x_191 : f32 = u_xlat8;
    let x_192 : f32 = u_xlat13;
    let x_194 : f32 = u_xlat18;
    u_xlat8 = ((x_191 * x_192) + x_194);
    let x_196 : f32 = u_xlat2;
    u_xlat2 = min(x_196, 1.0f);
    let x_199 : f32 = u_xlat2;
    let x_200 : f32 = u_xlat2;
    u_xlatb2 = (x_199 < -(x_200));
    let x_203 : bool = u_xlatb2;
    if (x_203) {
      let x_207 : f32 = u_xlat8;
      x_204 = -(x_207);
    } else {
      let x_210 : f32 = u_xlat8;
      x_204 = x_210;
    }
    let x_211 : f32 = x_204;
    u_xlat2 = x_211;
    let x_213 : f32 = u_xlat3.x;
    let x_214 : f32 = u_xlat2;
    u_xlat2 = ((x_213 * x_214) + -1.0f);
    let x_217 : vec4<f32> = u_xlat0;
    let x_219 : f32 = u_xlat2;
    let x_222 : vec4<f32> = u_xlat1;
    u_xlat12 = ((vec2<f32>(x_217.x, x_217.y) * vec2<f32>(x_219, x_219)) + vec2<f32>(x_222.x, x_222.y));
  }
  let x_225 : vec4<f32> = u_xlat0;
  let x_227 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec2<f32>(x_225.z, x_225.w), vec2<f32>(x_227.z, x_227.w));
  let x_232 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_232);
  let x_235 : bool = u_xlatb7;
  if (x_235) {
    let x_238 : vec4<f32> = u_xlat0;
    let x_241 : vec4<f32> = x_32.x_Distortion_Amount;
    let x_243 : vec2<f32> = (vec2<f32>(x_238.x, x_238.x) * vec2<f32>(x_241.x, x_241.y));
    let x_244 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_243.x, x_243.y, x_244.z, x_244.w);
    let x_247 : f32 = u_xlat1.x;
    u_xlat2 = cos(x_247);
    let x_250 : f32 = u_xlat1.x;
    u_xlat1.x = sin(x_250);
    let x_255 : f32 = u_xlat1.x;
    let x_256 : f32 = u_xlat2;
    u_xlat5 = (x_255 / x_256);
    let x_259 : f32 = u_xlat1.y;
    u_xlat1.x = (1.0f / x_259);
    let x_262 : f32 = u_xlat5;
    let x_264 : f32 = u_xlat1.x;
    u_xlat5 = ((x_262 * x_264) + -1.0f);
    let x_267 : vec4<f32> = u_xlat0;
    let x_269 : f32 = u_xlat5;
    let x_272 : vec4<f32> = u_xlat1;
    let x_274 : vec2<f32> = ((vec2<f32>(x_267.z, x_267.w) * vec2<f32>(x_269, x_269)) + vec2<f32>(x_272.z, x_272.w));
    let x_275 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_274.x, x_274.y, x_275.z, x_275.w);
  } else {
    let x_279 : f32 = u_xlat0.x;
    u_xlat5 = (1.0f / x_279);
    let x_281 : f32 = u_xlat5;
    let x_283 : f32 = x_32.x_Distortion_Amount.x;
    u_xlat5 = (x_281 * x_283);
    let x_286 : f32 = u_xlat0.x;
    let x_288 : f32 = x_32.x_Distortion_Amount.y;
    u_xlat0.x = (x_286 * x_288);
    let x_292 : f32 = u_xlat0.x;
    u_xlat2 = min(abs(x_292), 1.0f);
    let x_297 : f32 = u_xlat0.x;
    u_xlat7 = max(abs(x_297), 1.0f);
    let x_300 : f32 = u_xlat7;
    u_xlat7 = (1.0f / x_300);
    let x_302 : f32 = u_xlat7;
    let x_303 : f32 = u_xlat2;
    u_xlat2 = (x_302 * x_303);
    let x_305 : f32 = u_xlat2;
    let x_306 : f32 = u_xlat2;
    u_xlat7 = (x_305 * x_306);
    let x_308 : f32 = u_xlat7;
    u_xlat3.x = ((x_308 * 0.0208351f) + -0.085133001f);
    let x_312 : f32 = u_xlat7;
    let x_314 : f32 = u_xlat3.x;
    u_xlat3.x = ((x_312 * x_314) + 0.180141002f);
    let x_318 : f32 = u_xlat7;
    let x_320 : f32 = u_xlat3.x;
    u_xlat3.x = ((x_318 * x_320) + -0.330299497f);
    let x_324 : f32 = u_xlat7;
    let x_326 : f32 = u_xlat3.x;
    u_xlat7 = ((x_324 * x_326) + 0.999866009f);
    let x_329 : f32 = u_xlat7;
    let x_330 : f32 = u_xlat2;
    u_xlat3.x = (x_329 * x_330);
    let x_335 : f32 = u_xlat0.x;
    u_xlatb8 = (1.0f < abs(x_335));
    let x_339 : f32 = u_xlat3.x;
    u_xlat3.x = ((x_339 * -2.0f) + 1.570796371f);
    let x_343 : bool = u_xlatb8;
    if (x_343) {
      let x_348 : f32 = u_xlat3.x;
      x_344 = x_348;
    } else {
      x_344 = 0.0f;
    }
    let x_350 : f32 = x_344;
    u_xlat3.x = x_350;
    let x_352 : f32 = u_xlat2;
    let x_353 : f32 = u_xlat7;
    let x_356 : f32 = u_xlat3.x;
    u_xlat2 = ((x_352 * x_353) + x_356);
    let x_359 : f32 = u_xlat0.x;
    u_xlat0.x = min(x_359, 1.0f);
    let x_364 : f32 = u_xlat0.x;
    let x_366 : f32 = u_xlat0.x;
    u_xlatb0 = (x_364 < -(x_366));
    let x_369 : bool = u_xlatb0;
    if (x_369) {
      let x_373 : f32 = u_xlat2;
      x_370 = -(x_373);
    } else {
      let x_376 : f32 = u_xlat2;
      x_370 = x_376;
    }
    let x_377 : f32 = x_370;
    u_xlat0.x = x_377;
    let x_379 : f32 = u_xlat5;
    let x_381 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_379 * x_381) + -1.0f);
    let x_385 : vec4<f32> = u_xlat0;
    let x_387 : vec4<f32> = u_xlat0;
    let x_390 : vec4<f32> = u_xlat1;
    let x_392 : vec2<f32> = ((vec2<f32>(x_385.z, x_385.w) * vec2<f32>(x_387.x, x_387.x)) + vec2<f32>(x_390.z, x_390.w));
    let x_393 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_392.x, x_392.y, x_393.z, x_393.w);
  }
  let x_405 : vec4<f32> = phase0_Input0_1;
  let x_407 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, vec2<f32>(x_405.x, x_405.y));
  u_xlat0.x = x_407.x;
  let x_415 : vec4<f32> = u_xlat1;
  let x_417 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_415.x, x_415.y));
  u_xlat1 = x_417;
  let x_418 : vec4<f32> = u_xlat0;
  let x_420 : vec4<f32> = u_xlat1;
  let x_422 : vec3<f32> = (vec3<f32>(x_418.x, x_418.x, x_418.x) * vec3<f32>(x_420.x, x_420.y, x_420.z));
  let x_423 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_422.x, x_422.y, x_422.z, x_423.w);
  let x_428 : f32 = x_32.x_Vignette_Mode;
  u_xlatb15 = (x_428 < 0.5f);
  let x_430 : bool = u_xlatb15;
  if (x_430) {
    let x_433 : vec2<f32> = u_xlat12;
    let x_437 : vec2<f32> = x_32.x_Vignette_Center;
    let x_439 : vec2<f32> = (x_433 + -(x_437));
    let x_440 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_439.x, x_439.y, x_440.z, x_440.w);
    let x_442 : vec4<f32> = u_xlat1;
    let x_447 : vec4<f32> = x_32.x_Vignette_Settings;
    let x_449 : vec2<f32> = (abs(vec2<f32>(x_442.y, x_442.x)) * vec2<f32>(x_447.x, x_447.x));
    let x_450 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_450.x, x_449.x, x_449.y, x_450.w);
    let x_455 : f32 = x_32.x_ScreenParams.x;
    let x_457 : f32 = x_32.x_ScreenParams.y;
    u_xlat15 = (x_455 / x_457);
    let x_459 : f32 = u_xlat15;
    u_xlat15 = (x_459 + -1.0f);
    let x_462 : f32 = x_32.x_Vignette_Settings.w;
    let x_463 : f32 = u_xlat15;
    u_xlat15 = ((x_462 * x_463) + 1.0f);
    let x_466 : f32 = u_xlat15;
    let x_469 : f32 = u_xlat1.z;
    u_xlat1.x = (x_466 * x_469);
    let x_472 : vec4<f32> = u_xlat1;
    let x_473 : vec2<f32> = vec2<f32>(x_472.x, x_472.y);
    let x_474 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_473.x, x_473.y, x_474.z, x_474.w);
    let x_476 : vec4<f32> = u_xlat1;
    let x_480 : vec2<f32> = clamp(vec2<f32>(x_476.x, x_476.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_481 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_480.x, x_480.y, x_481.z, x_481.w);
    let x_483 : vec4<f32> = u_xlat1;
    let x_485 : vec2<f32> = log2(vec2<f32>(x_483.x, x_483.y));
    let x_486 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_485.x, x_485.y, x_486.z, x_486.w);
    let x_488 : vec4<f32> = u_xlat1;
    let x_491 : vec4<f32> = x_32.x_Vignette_Settings;
    let x_493 : vec2<f32> = (vec2<f32>(x_488.x, x_488.y) * vec2<f32>(x_491.z, x_491.z));
    let x_494 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_493.x, x_493.y, x_494.z, x_494.w);
    let x_496 : vec4<f32> = u_xlat1;
    let x_498 : vec2<f32> = exp2(vec2<f32>(x_496.x, x_496.y));
    let x_499 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_498.x, x_498.y, x_499.z, x_499.w);
    let x_501 : vec4<f32> = u_xlat1;
    let x_503 : vec4<f32> = u_xlat1;
    u_xlat15 = dot(vec2<f32>(x_501.x, x_501.y), vec2<f32>(x_503.x, x_503.y));
    let x_506 : f32 = u_xlat15;
    u_xlat15 = (-(x_506) + 1.0f);
    let x_509 : f32 = u_xlat15;
    u_xlat15 = max(x_509, 0.0f);
    let x_511 : f32 = u_xlat15;
    u_xlat15 = log2(x_511);
    let x_513 : f32 = u_xlat15;
    let x_515 : f32 = x_32.x_Vignette_Settings.y;
    u_xlat15 = (x_513 * x_515);
    let x_517 : f32 = u_xlat15;
    u_xlat15 = exp2(x_517);
    let x_522 : vec3<f32> = x_32.x_Vignette_Color;
    let x_525 : vec3<f32> = (-(x_522) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_526 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_525.x, x_525.y, x_525.z, x_526.w);
    let x_528 : f32 = u_xlat15;
    let x_530 : vec4<f32> = u_xlat1;
    let x_534 : vec3<f32> = x_32.x_Vignette_Color;
    let x_535 : vec3<f32> = ((vec3<f32>(x_528, x_528, x_528) * vec3<f32>(x_530.x, x_530.y, x_530.z)) + x_534);
    let x_536 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_535.x, x_535.y, x_535.z, x_536.w);
    let x_538 : vec4<f32> = u_xlat0;
    let x_540 : vec4<f32> = u_xlat1;
    let x_542 : vec3<f32> = (vec3<f32>(x_538.x, x_538.y, x_538.z) * vec3<f32>(x_540.x, x_540.y, x_540.z));
    let x_543 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_542.x, x_542.y, x_542.z, x_543.w);
    let x_546 : f32 = u_xlat1.w;
    u_xlat1.x = (x_546 + -1.0f);
    let x_549 : f32 = u_xlat15;
    let x_551 : f32 = u_xlat1.x;
    u_xlat3.w = ((x_549 * x_551) + 1.0f);
  } else {
    let x_561 : vec2<f32> = u_xlat12;
    let x_562 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_561);
    u_xlat15 = x_562.w;
    let x_564 : f32 = u_xlat15;
    u_xlat1.x = (x_564 * 0.077399381f);
    let x_569 : f32 = u_xlat15;
    u_xlat6 = (x_569 + 0.055f);
    let x_572 : f32 = u_xlat6;
    u_xlat6 = (x_572 * 0.947867334f);
    let x_575 : f32 = u_xlat6;
    u_xlat6 = max(abs(x_575), 1.1920929e-07f);
    let x_579 : f32 = u_xlat6;
    u_xlat6 = log2(x_579);
    let x_581 : f32 = u_xlat6;
    u_xlat6 = (x_581 * 2.400000095f);
    let x_584 : f32 = u_xlat6;
    u_xlat6 = exp2(x_584);
    let x_587 : f32 = u_xlat15;
    u_xlatb15 = (0.040449999f >= x_587);
    let x_589 : bool = u_xlatb15;
    if (x_589) {
      let x_594 : f32 = u_xlat1.x;
      x_590 = x_594;
    } else {
      let x_596 : f32 = u_xlat6;
      x_590 = x_596;
    }
    let x_597 : f32 = x_590;
    u_xlat15 = x_597;
    let x_599 : vec3<f32> = x_32.x_Vignette_Color;
    let x_601 : vec3<f32> = (-(x_599) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_602 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_601.x, x_601.y, x_601.z, x_602.w);
    let x_604 : f32 = u_xlat15;
    let x_606 : vec4<f32> = u_xlat1;
    let x_610 : vec3<f32> = x_32.x_Vignette_Color;
    let x_611 : vec3<f32> = ((vec3<f32>(x_604, x_604, x_604) * vec3<f32>(x_606.x, x_606.y, x_606.z)) + x_610);
    let x_612 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_611.x, x_611.y, x_611.z, x_612.w);
    let x_614 : vec4<f32> = u_xlat0;
    let x_616 : vec4<f32> = u_xlat1;
    let x_619 : vec4<f32> = u_xlat0;
    let x_622 : vec3<f32> = ((vec3<f32>(x_614.x, x_614.y, x_614.z) * vec3<f32>(x_616.x, x_616.y, x_616.z)) + -(vec3<f32>(x_619.x, x_619.y, x_619.z)));
    let x_623 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_622.x, x_622.y, x_622.z, x_623.w);
    let x_627 : f32 = x_32.x_Vignette_Opacity;
    let x_629 : vec4<f32> = u_xlat1;
    let x_632 : vec4<f32> = u_xlat0;
    let x_634 : vec3<f32> = ((vec3<f32>(x_627, x_627, x_627) * vec3<f32>(x_629.x, x_629.y, x_629.z)) + vec3<f32>(x_632.x, x_632.y, x_632.z));
    let x_635 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_634.x, x_634.y, x_634.z, x_635.w);
    let x_638 : f32 = u_xlat1.w;
    u_xlat0.x = (x_638 + -1.0f);
    let x_641 : f32 = u_xlat15;
    let x_643 : f32 = u_xlat0.x;
    u_xlat3.w = ((x_641 * x_643) + 1.0f);
  }
  let x_649 : f32 = x_32.x_LumaInAlpha;
  u_xlatb0 = (0.5f < x_649);
  let x_651 : bool = u_xlatb0;
  if (x_651) {
    let x_654 : vec4<f32> = u_xlat3;
    let x_655 : vec3<f32> = vec3<f32>(x_654.x, x_654.y, x_654.z);
    let x_656 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_655.x, x_655.y, x_655.z, x_656.w);
    let x_658 : vec4<f32> = u_xlat0;
    let x_662 : vec3<f32> = clamp(vec3<f32>(x_658.x, x_658.y, x_658.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_663 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_662.x, x_662.y, x_662.z, x_663.w);
    let x_665 : vec4<f32> = u_xlat0;
    u_xlat3.w = dot(vec3<f32>(x_665.x, x_665.y, x_665.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_675 : vec4<f32> = u_xlat3;
  SV_Target0 = x_675;
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

