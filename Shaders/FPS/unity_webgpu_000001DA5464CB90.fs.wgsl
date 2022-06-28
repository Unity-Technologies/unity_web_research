struct PGlobals {
  x_ScreenParams : vec4<f32>,
  x_Distortion_Amount : vec4<f32>,
  x_Distortion_CenterScale : vec4<f32>,
  x_Lut3D_Params : vec2<f32>,
  x_PostExposure : f32,
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

var<private> u_xlat2 : f32;

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

var<private> u_xlat5 : f32;

var<private> u_xlat7 : f32;

var<private> u_xlatb8 : bool;

var<private> u_xlatb0 : bool;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_AutoExposureTex : sampler;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

var<private> u_xlatb15 : bool;

var<private> u_xlat15 : f32;

@group(0) @binding(4) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(8) var sampler_Vignette_Mask : sampler;

var<private> u_xlat6 : f32;

var<private> u_xlat16 : f32;

@group(0) @binding(3) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(7) var sampler_Lut3D : sampler;

var<private> u_xlatb1 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_204 : f32;
  var x_344 : f32;
  var x_370 : f32;
  var x_590 : f32;
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
  u_xlat2 = dot(vec2<f32>(x_60.x, x_60.y), vec2<f32>(x_62.x, x_62.y));
  let x_65 : f32 = u_xlat2;
  u_xlat2 = sqrt(x_65);
  let x_75 : f32 = x_31.x_Distortion_Amount.w;
  u_xlatb7 = (0.0f < x_75);
  let x_77 : bool = u_xlatb7;
  if (x_77) {
    let x_82 : f32 = u_xlat2;
    let x_85 : vec4<f32> = x_31.x_Distortion_Amount;
    u_xlat12 = (vec2<f32>(x_82, x_82) * vec2<f32>(x_85.x, x_85.y));
    let x_91 : f32 = u_xlat12.x;
    u_xlat3.x = sin(x_91);
    let x_96 : f32 = u_xlat12.x;
    u_xlat4 = cos(x_96);
    let x_99 : f32 = u_xlat3.x;
    let x_100 : f32 = u_xlat4;
    u_xlat12.x = (x_99 / x_100);
    let x_107 : f32 = u_xlat12.y;
    u_xlat17 = (1.0f / x_107);
    let x_110 : f32 = u_xlat12.x;
    let x_111 : f32 = u_xlat17;
    u_xlat12.x = ((x_110 * x_111) + -1.0f);
    let x_116 : vec4<f32> = u_xlat0;
    let x_118 : vec2<f32> = u_xlat12;
    let x_121 : vec4<f32> = u_xlat1;
    u_xlat12 = ((vec2<f32>(x_116.x, x_116.y) * vec2<f32>(x_118.x, x_118.x)) + vec2<f32>(x_121.x, x_121.y));
  } else {
    let x_125 : f32 = u_xlat2;
    u_xlat3.x = (1.0f / x_125);
    let x_129 : f32 = u_xlat3.x;
    let x_131 : f32 = x_31.x_Distortion_Amount.x;
    u_xlat3.x = (x_129 * x_131);
    let x_134 : f32 = u_xlat2;
    let x_136 : f32 = x_31.x_Distortion_Amount.y;
    u_xlat2 = (x_134 * x_136);
    let x_139 : f32 = u_xlat2;
    u_xlat8 = min(abs(x_139), 1.0f);
    let x_143 : f32 = u_xlat2;
    u_xlat13 = max(abs(x_143), 1.0f);
    let x_146 : f32 = u_xlat13;
    u_xlat13 = (1.0f / x_146);
    let x_148 : f32 = u_xlat13;
    let x_149 : f32 = u_xlat8;
    u_xlat8 = (x_148 * x_149);
    let x_151 : f32 = u_xlat8;
    let x_152 : f32 = u_xlat8;
    u_xlat13 = (x_151 * x_152);
    let x_155 : f32 = u_xlat13;
    u_xlat18 = ((x_155 * 0.0208351f) + -0.085133001f);
    let x_160 : f32 = u_xlat13;
    let x_161 : f32 = u_xlat18;
    u_xlat18 = ((x_160 * x_161) + 0.180141002f);
    let x_165 : f32 = u_xlat13;
    let x_166 : f32 = u_xlat18;
    u_xlat18 = ((x_165 * x_166) + -0.330299497f);
    let x_170 : f32 = u_xlat13;
    let x_171 : f32 = u_xlat18;
    u_xlat13 = ((x_170 * x_171) + 0.999866009f);
    let x_175 : f32 = u_xlat13;
    let x_176 : f32 = u_xlat8;
    u_xlat18 = (x_175 * x_176);
    let x_179 : f32 = u_xlat2;
    u_xlatb4 = (1.0f < abs(x_179));
    let x_182 : f32 = u_xlat18;
    u_xlat18 = ((x_182 * -2.0f) + 1.570796371f);
    let x_187 : bool = u_xlatb4;
    let x_188 : f32 = u_xlat18;
    u_xlat18 = select(0.0f, x_188, x_187);
    let x_190 : f32 = u_xlat8;
    let x_191 : f32 = u_xlat13;
    let x_193 : f32 = u_xlat18;
    u_xlat8 = ((x_190 * x_191) + x_193);
    let x_195 : f32 = u_xlat2;
    u_xlat2 = min(x_195, 1.0f);
    let x_198 : f32 = u_xlat2;
    let x_199 : f32 = u_xlat2;
    u_xlatb2 = (x_198 < -(x_199));
    let x_202 : bool = u_xlatb2;
    if (x_202) {
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
    let x_241 : vec4<f32> = x_31.x_Distortion_Amount;
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
    let x_283 : f32 = x_31.x_Distortion_Amount.x;
    u_xlat5 = (x_281 * x_283);
    let x_286 : f32 = u_xlat0.x;
    let x_288 : f32 = x_31.x_Distortion_Amount.y;
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
  let x_428 : f32 = x_31.x_Vignette_Mode;
  u_xlatb15 = (x_428 < 0.5f);
  let x_430 : bool = u_xlatb15;
  if (x_430) {
    let x_433 : vec2<f32> = u_xlat12;
    let x_437 : vec2<f32> = x_31.x_Vignette_Center;
    let x_439 : vec2<f32> = (x_433 + -(x_437));
    let x_440 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_439.x, x_439.y, x_440.z, x_440.w);
    let x_442 : vec4<f32> = u_xlat1;
    let x_447 : vec4<f32> = x_31.x_Vignette_Settings;
    let x_449 : vec2<f32> = (abs(vec2<f32>(x_442.y, x_442.x)) * vec2<f32>(x_447.x, x_447.x));
    let x_450 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_450.x, x_449.x, x_449.y, x_450.w);
    let x_455 : f32 = x_31.x_ScreenParams.x;
    let x_457 : f32 = x_31.x_ScreenParams.y;
    u_xlat15 = (x_455 / x_457);
    let x_459 : f32 = u_xlat15;
    u_xlat15 = (x_459 + -1.0f);
    let x_462 : f32 = x_31.x_Vignette_Settings.w;
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
    let x_491 : vec4<f32> = x_31.x_Vignette_Settings;
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
    let x_515 : f32 = x_31.x_Vignette_Settings.y;
    u_xlat15 = (x_513 * x_515);
    let x_517 : f32 = u_xlat15;
    u_xlat15 = exp2(x_517);
    let x_522 : vec3<f32> = x_31.x_Vignette_Color;
    let x_525 : vec3<f32> = (-(x_522) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_526 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_525.x, x_525.y, x_525.z, x_526.w);
    let x_528 : f32 = u_xlat15;
    let x_530 : vec4<f32> = u_xlat1;
    let x_534 : vec3<f32> = x_31.x_Vignette_Color;
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
    let x_599 : vec3<f32> = x_31.x_Vignette_Color;
    let x_601 : vec3<f32> = (-(x_599) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_602 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_601.x, x_601.y, x_601.z, x_602.w);
    let x_604 : f32 = u_xlat15;
    let x_606 : vec4<f32> = u_xlat1;
    let x_610 : vec3<f32> = x_31.x_Vignette_Color;
    let x_611 : vec3<f32> = ((vec3<f32>(x_604, x_604, x_604) * vec3<f32>(x_606.x, x_606.y, x_606.z)) + x_610);
    let x_612 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_611.x, x_611.y, x_611.z, x_612.w);
    let x_614 : vec4<f32> = u_xlat0;
    let x_616 : vec4<f32> = u_xlat1;
    let x_619 : vec4<f32> = u_xlat0;
    let x_622 : vec3<f32> = ((vec3<f32>(x_614.x, x_614.y, x_614.z) * vec3<f32>(x_616.x, x_616.y, x_616.z)) + -(vec3<f32>(x_619.x, x_619.y, x_619.z)));
    let x_623 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_622.x, x_622.y, x_622.z, x_623.w);
    let x_627 : f32 = x_31.x_Vignette_Opacity;
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
  let x_647 : vec4<f32> = u_xlat3;
  let x_651 : f32 = x_31.x_PostExposure;
  let x_653 : f32 = x_31.x_PostExposure;
  let x_655 : f32 = x_31.x_PostExposure;
  let x_657 : f32 = x_31.x_PostExposure;
  let x_658 : vec4<f32> = vec4<f32>(x_651, x_653, x_655, x_657);
  u_xlat0 = (vec4<f32>(x_647.w, x_647.x, x_647.y, x_647.z) * vec4<f32>(x_658.x, x_658.y, x_658.z, x_658.w));
  let x_665 : vec4<f32> = u_xlat0;
  let x_672 : vec3<f32> = ((vec3<f32>(x_665.y, x_665.z, x_665.w) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_673 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_672.x, x_672.y, x_672.z, x_673.w);
  let x_675 : vec4<f32> = u_xlat1;
  let x_677 : vec3<f32> = log2(vec3<f32>(x_675.x, x_675.y, x_675.z));
  let x_678 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_677.x, x_677.y, x_677.z, x_678.w);
  let x_680 : vec4<f32> = u_xlat1;
  let x_687 : vec3<f32> = ((vec3<f32>(x_680.x, x_680.y, x_680.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_688 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_687.x, x_687.y, x_687.z, x_688.w);
  let x_690 : vec4<f32> = u_xlat1;
  let x_694 : vec3<f32> = clamp(vec3<f32>(x_690.x, x_690.y, x_690.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_695 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_694.x, x_694.y, x_694.z, x_695.w);
  let x_697 : vec4<f32> = u_xlat1;
  let x_701 : vec2<f32> = x_31.x_Lut3D_Params;
  let x_703 : vec3<f32> = (vec3<f32>(x_697.x, x_697.y, x_697.z) * vec3<f32>(x_701.y, x_701.y, x_701.y));
  let x_704 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_703.x, x_703.y, x_703.z, x_704.w);
  let x_708 : f32 = x_31.x_Lut3D_Params.x;
  u_xlat16 = (x_708 * 0.5f);
  let x_710 : vec4<f32> = u_xlat1;
  let x_713 : vec2<f32> = x_31.x_Lut3D_Params;
  let x_716 : f32 = u_xlat16;
  let x_718 : vec3<f32> = ((vec3<f32>(x_710.x, x_710.y, x_710.z) * vec3<f32>(x_713.x, x_713.x, x_713.x)) + vec3<f32>(x_716, x_716, x_716));
  let x_719 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_718.x, x_718.y, x_718.z, x_719.w);
  let x_729 : vec4<f32> = u_xlat1;
  let x_731 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, vec3<f32>(x_729.x, x_729.y, x_729.z));
  let x_732 : vec3<f32> = vec3<f32>(x_731.x, x_731.y, x_731.z);
  let x_733 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_733.x, x_732.x, x_732.y, x_732.z);
  let x_738 : f32 = x_31.x_LumaInAlpha;
  u_xlatb1 = (0.5f < x_738);
  let x_740 : bool = u_xlatb1;
  if (x_740) {
    let x_743 : vec4<f32> = u_xlat0;
    let x_744 : vec3<f32> = vec3<f32>(x_743.y, x_743.z, x_743.w);
    let x_745 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_744.x, x_744.y, x_744.z, x_745.w);
    let x_747 : vec4<f32> = u_xlat1;
    let x_751 : vec3<f32> = clamp(vec3<f32>(x_747.x, x_747.y, x_747.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_752 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_751.x, x_751.y, x_751.z, x_752.w);
    let x_754 : vec4<f32> = u_xlat1;
    u_xlat0.x = dot(vec3<f32>(x_754.x, x_754.y, x_754.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_764 : vec4<f32> = u_xlat0;
  SV_Target0 = vec4<f32>(x_764.y, x_764.z, x_764.w, x_764.x);
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

