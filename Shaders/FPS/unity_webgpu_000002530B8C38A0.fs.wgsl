struct PGlobals {
  x_ScreenParams : vec4<f32>,
  x_Distortion_Amount : vec4<f32>,
  x_Distortion_CenterScale : vec4<f32>,
  x_Lut2D_Params : vec3<f32>,
  x_PostExposure : f32,
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

var<private> u_xlatb2 : bool;

var<private> u_xlat5 : f32;

var<private> u_xlat7 : f32;

var<private> u_xlatb8 : bool;

var<private> u_xlatb0 : bool;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_AutoExposureTex : sampler;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

var<private> u_xlatb15 : bool;

var<private> u_xlat15 : f32;

@group(0) @binding(4) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(9) var sampler_Vignette_Mask : sampler;

@group(0) @binding(5) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_GrainTex : sampler;

var<private> u_xlat6 : vec3<f32>;

@group(0) @binding(3) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(8) var sampler_Lut2D : sampler;

var<private> u_xlat11 : vec2<f32>;

var<private> u_xlatb1 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_220 : f32;
  var x_371 : f32;
  var x_399 : f32;
  var x_620 : f32;
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
    let x_213 : f32 = u_xlat2.x;
    let x_215 : f32 = u_xlat2.x;
    u_xlatb2 = (x_213 < -(x_215));
    let x_218 : bool = u_xlatb2;
    if (x_218) {
      let x_223 : f32 = u_xlat8;
      x_220 = -(x_223);
    } else {
      let x_226 : f32 = u_xlat8;
      x_220 = x_226;
    }
    let x_227 : f32 = x_220;
    u_xlat2.x = x_227;
    let x_230 : f32 = u_xlat3.x;
    let x_232 : f32 = u_xlat2.x;
    u_xlat2.x = ((x_230 * x_232) + -1.0f);
    let x_236 : vec4<f32> = u_xlat0;
    let x_238 : vec3<f32> = u_xlat2;
    let x_241 : vec4<f32> = u_xlat1;
    u_xlat12 = ((vec2<f32>(x_236.x, x_236.y) * vec2<f32>(x_238.x, x_238.x)) + vec2<f32>(x_241.x, x_241.y));
  }
  let x_244 : vec4<f32> = u_xlat0;
  let x_246 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec2<f32>(x_244.z, x_244.w), vec2<f32>(x_246.z, x_246.w));
  let x_251 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_251);
  let x_254 : bool = u_xlatb7;
  if (x_254) {
    let x_257 : vec4<f32> = u_xlat0;
    let x_260 : vec4<f32> = x_31.x_Distortion_Amount;
    let x_262 : vec2<f32> = (vec2<f32>(x_257.x, x_257.x) * vec2<f32>(x_260.x, x_260.y));
    let x_263 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_262.x, x_262.y, x_263.z, x_263.w);
    let x_266 : f32 = u_xlat1.x;
    u_xlat2.x = cos(x_266);
    let x_270 : f32 = u_xlat1.x;
    u_xlat1.x = sin(x_270);
    let x_275 : f32 = u_xlat1.x;
    let x_277 : f32 = u_xlat2.x;
    u_xlat5 = (x_275 / x_277);
    let x_280 : f32 = u_xlat1.y;
    u_xlat1.x = (1.0f / x_280);
    let x_283 : f32 = u_xlat5;
    let x_285 : f32 = u_xlat1.x;
    u_xlat5 = ((x_283 * x_285) + -1.0f);
    let x_288 : vec4<f32> = u_xlat0;
    let x_290 : f32 = u_xlat5;
    let x_293 : vec4<f32> = u_xlat1;
    let x_295 : vec2<f32> = ((vec2<f32>(x_288.z, x_288.w) * vec2<f32>(x_290, x_290)) + vec2<f32>(x_293.z, x_293.w));
    let x_296 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_295.x, x_295.y, x_296.z, x_296.w);
  } else {
    let x_300 : f32 = u_xlat0.x;
    u_xlat5 = (1.0f / x_300);
    let x_302 : f32 = u_xlat5;
    let x_304 : f32 = x_31.x_Distortion_Amount.x;
    u_xlat5 = (x_302 * x_304);
    let x_307 : f32 = u_xlat0.x;
    let x_309 : f32 = x_31.x_Distortion_Amount.y;
    u_xlat0.x = (x_307 * x_309);
    let x_313 : f32 = u_xlat0.x;
    u_xlat2.x = min(abs(x_313), 1.0f);
    let x_319 : f32 = u_xlat0.x;
    u_xlat7 = max(abs(x_319), 1.0f);
    let x_322 : f32 = u_xlat7;
    u_xlat7 = (1.0f / x_322);
    let x_324 : f32 = u_xlat7;
    let x_326 : f32 = u_xlat2.x;
    u_xlat2.x = (x_324 * x_326);
    let x_330 : f32 = u_xlat2.x;
    let x_332 : f32 = u_xlat2.x;
    u_xlat7 = (x_330 * x_332);
    let x_334 : f32 = u_xlat7;
    u_xlat3.x = ((x_334 * 0.0208351f) + -0.085133001f);
    let x_338 : f32 = u_xlat7;
    let x_340 : f32 = u_xlat3.x;
    u_xlat3.x = ((x_338 * x_340) + 0.180141002f);
    let x_344 : f32 = u_xlat7;
    let x_346 : f32 = u_xlat3.x;
    u_xlat3.x = ((x_344 * x_346) + -0.330299497f);
    let x_350 : f32 = u_xlat7;
    let x_352 : f32 = u_xlat3.x;
    u_xlat7 = ((x_350 * x_352) + 0.999866009f);
    let x_355 : f32 = u_xlat7;
    let x_357 : f32 = u_xlat2.x;
    u_xlat3.x = (x_355 * x_357);
    let x_362 : f32 = u_xlat0.x;
    u_xlatb8 = (1.0f < abs(x_362));
    let x_366 : f32 = u_xlat3.x;
    u_xlat3.x = ((x_366 * -2.0f) + 1.570796371f);
    let x_370 : bool = u_xlatb8;
    if (x_370) {
      let x_375 : f32 = u_xlat3.x;
      x_371 = x_375;
    } else {
      x_371 = 0.0f;
    }
    let x_377 : f32 = x_371;
    u_xlat3.x = x_377;
    let x_380 : f32 = u_xlat2.x;
    let x_381 : f32 = u_xlat7;
    let x_384 : f32 = u_xlat3.x;
    u_xlat2.x = ((x_380 * x_381) + x_384);
    let x_388 : f32 = u_xlat0.x;
    u_xlat0.x = min(x_388, 1.0f);
    let x_393 : f32 = u_xlat0.x;
    let x_395 : f32 = u_xlat0.x;
    u_xlatb0 = (x_393 < -(x_395));
    let x_398 : bool = u_xlatb0;
    if (x_398) {
      let x_403 : f32 = u_xlat2.x;
      x_399 = -(x_403);
    } else {
      let x_407 : f32 = u_xlat2.x;
      x_399 = x_407;
    }
    let x_408 : f32 = x_399;
    u_xlat0.x = x_408;
    let x_410 : f32 = u_xlat5;
    let x_412 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_410 * x_412) + -1.0f);
    let x_416 : vec4<f32> = u_xlat0;
    let x_418 : vec4<f32> = u_xlat0;
    let x_421 : vec4<f32> = u_xlat1;
    let x_423 : vec2<f32> = ((vec2<f32>(x_416.z, x_416.w) * vec2<f32>(x_418.x, x_418.x)) + vec2<f32>(x_421.z, x_421.w));
    let x_424 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_423.x, x_423.y, x_424.z, x_424.w);
  }
  let x_436 : vec4<f32> = phase0_Input0_1;
  let x_438 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, vec2<f32>(x_436.x, x_436.y));
  u_xlat0.x = x_438.x;
  let x_446 : vec4<f32> = u_xlat1;
  let x_448 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_446.x, x_446.y));
  u_xlat1 = x_448;
  let x_449 : vec4<f32> = u_xlat0;
  let x_451 : vec4<f32> = u_xlat1;
  let x_453 : vec3<f32> = (vec3<f32>(x_449.x, x_449.x, x_449.x) * vec3<f32>(x_451.x, x_451.y, x_451.z));
  let x_454 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_453.x, x_453.y, x_453.z, x_454.w);
  let x_459 : f32 = x_31.x_Vignette_Mode;
  u_xlatb15 = (x_459 < 0.5f);
  let x_461 : bool = u_xlatb15;
  if (x_461) {
    let x_464 : vec2<f32> = u_xlat12;
    let x_468 : vec2<f32> = x_31.x_Vignette_Center;
    let x_470 : vec2<f32> = (x_464 + -(x_468));
    let x_471 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_470.x, x_470.y, x_471.z, x_471.w);
    let x_473 : vec4<f32> = u_xlat1;
    let x_478 : vec4<f32> = x_31.x_Vignette_Settings;
    let x_480 : vec2<f32> = (abs(vec2<f32>(x_473.y, x_473.x)) * vec2<f32>(x_478.x, x_478.x));
    let x_481 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_481.x, x_480.x, x_480.y, x_481.w);
    let x_486 : f32 = x_31.x_ScreenParams.x;
    let x_488 : f32 = x_31.x_ScreenParams.y;
    u_xlat15 = (x_486 / x_488);
    let x_490 : f32 = u_xlat15;
    u_xlat15 = (x_490 + -1.0f);
    let x_493 : f32 = x_31.x_Vignette_Settings.w;
    let x_494 : f32 = u_xlat15;
    u_xlat15 = ((x_493 * x_494) + 1.0f);
    let x_497 : f32 = u_xlat15;
    let x_500 : f32 = u_xlat1.z;
    u_xlat1.x = (x_497 * x_500);
    let x_503 : vec4<f32> = u_xlat1;
    let x_504 : vec2<f32> = vec2<f32>(x_503.x, x_503.y);
    let x_505 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_504.x, x_504.y, x_505.z, x_505.w);
    let x_507 : vec4<f32> = u_xlat1;
    let x_511 : vec2<f32> = clamp(vec2<f32>(x_507.x, x_507.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_512 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_511.x, x_511.y, x_512.z, x_512.w);
    let x_514 : vec4<f32> = u_xlat1;
    let x_516 : vec2<f32> = log2(vec2<f32>(x_514.x, x_514.y));
    let x_517 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_516.x, x_516.y, x_517.z, x_517.w);
    let x_519 : vec4<f32> = u_xlat1;
    let x_522 : vec4<f32> = x_31.x_Vignette_Settings;
    let x_524 : vec2<f32> = (vec2<f32>(x_519.x, x_519.y) * vec2<f32>(x_522.z, x_522.z));
    let x_525 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_524.x, x_524.y, x_525.z, x_525.w);
    let x_527 : vec4<f32> = u_xlat1;
    let x_529 : vec2<f32> = exp2(vec2<f32>(x_527.x, x_527.y));
    let x_530 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_529.x, x_529.y, x_530.z, x_530.w);
    let x_532 : vec4<f32> = u_xlat1;
    let x_534 : vec4<f32> = u_xlat1;
    u_xlat15 = dot(vec2<f32>(x_532.x, x_532.y), vec2<f32>(x_534.x, x_534.y));
    let x_537 : f32 = u_xlat15;
    u_xlat15 = (-(x_537) + 1.0f);
    let x_540 : f32 = u_xlat15;
    u_xlat15 = max(x_540, 0.0f);
    let x_542 : f32 = u_xlat15;
    u_xlat15 = log2(x_542);
    let x_544 : f32 = u_xlat15;
    let x_546 : f32 = x_31.x_Vignette_Settings.y;
    u_xlat15 = (x_544 * x_546);
    let x_548 : f32 = u_xlat15;
    u_xlat15 = exp2(x_548);
    let x_553 : vec3<f32> = x_31.x_Vignette_Color;
    let x_556 : vec3<f32> = (-(x_553) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_557 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_556.x, x_556.y, x_556.z, x_557.w);
    let x_559 : f32 = u_xlat15;
    let x_561 : vec4<f32> = u_xlat1;
    let x_565 : vec3<f32> = x_31.x_Vignette_Color;
    let x_566 : vec3<f32> = ((vec3<f32>(x_559, x_559, x_559) * vec3<f32>(x_561.x, x_561.y, x_561.z)) + x_565);
    let x_567 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_566.x, x_566.y, x_566.z, x_567.w);
    let x_569 : vec4<f32> = u_xlat0;
    let x_571 : vec4<f32> = u_xlat1;
    let x_573 : vec3<f32> = (vec3<f32>(x_569.x, x_569.y, x_569.z) * vec3<f32>(x_571.x, x_571.y, x_571.z));
    let x_574 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_573.x, x_573.y, x_573.z, x_574.w);
    let x_577 : f32 = u_xlat1.w;
    u_xlat2.x = (x_577 + -1.0f);
    let x_580 : f32 = u_xlat15;
    let x_582 : f32 = u_xlat2.x;
    u_xlat3.w = ((x_580 * x_582) + 1.0f);
  } else {
    let x_592 : vec2<f32> = u_xlat12;
    let x_593 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_592);
    u_xlat15 = x_593.w;
    let x_595 : f32 = u_xlat15;
    u_xlat2.x = (x_595 * 0.077399381f);
    let x_599 : f32 = u_xlat15;
    u_xlat7 = (x_599 + 0.055f);
    let x_602 : f32 = u_xlat7;
    u_xlat7 = (x_602 * 0.947867334f);
    let x_605 : f32 = u_xlat7;
    u_xlat7 = max(abs(x_605), 1.1920929e-07f);
    let x_609 : f32 = u_xlat7;
    u_xlat7 = log2(x_609);
    let x_611 : f32 = u_xlat7;
    u_xlat7 = (x_611 * 2.400000095f);
    let x_614 : f32 = u_xlat7;
    u_xlat7 = exp2(x_614);
    let x_617 : f32 = u_xlat15;
    u_xlatb15 = (0.040449999f >= x_617);
    let x_619 : bool = u_xlatb15;
    if (x_619) {
      let x_624 : f32 = u_xlat2.x;
      x_620 = x_624;
    } else {
      let x_626 : f32 = u_xlat7;
      x_620 = x_626;
    }
    let x_627 : f32 = x_620;
    u_xlat15 = x_627;
    let x_629 : vec3<f32> = x_31.x_Vignette_Color;
    u_xlat2 = (-(x_629) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_632 : f32 = u_xlat15;
    let x_634 : vec3<f32> = u_xlat2;
    let x_637 : vec3<f32> = x_31.x_Vignette_Color;
    u_xlat2 = ((vec3<f32>(x_632, x_632, x_632) * x_634) + x_637);
    let x_639 : vec4<f32> = u_xlat0;
    let x_641 : vec3<f32> = u_xlat2;
    let x_643 : vec4<f32> = u_xlat0;
    u_xlat2 = ((vec3<f32>(x_639.x, x_639.y, x_639.z) * x_641) + -(vec3<f32>(x_643.x, x_643.y, x_643.z)));
    let x_649 : f32 = x_31.x_Vignette_Opacity;
    let x_651 : vec3<f32> = u_xlat2;
    let x_653 : vec4<f32> = u_xlat0;
    let x_655 : vec3<f32> = ((vec3<f32>(x_649, x_649, x_649) * x_651) + vec3<f32>(x_653.x, x_653.y, x_653.z));
    let x_656 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_655.x, x_655.y, x_655.z, x_656.w);
    let x_659 : f32 = u_xlat1.w;
    u_xlat0.x = (x_659 + -1.0f);
    let x_662 : f32 = u_xlat15;
    let x_664 : f32 = u_xlat0.x;
    u_xlat3.w = ((x_662 * x_664) + 1.0f);
  }
  let x_668 : vec4<f32> = phase0_Input0_1;
  let x_672 : vec4<f32> = x_31.x_Grain_Params2;
  let x_676 : vec4<f32> = x_31.x_Grain_Params2;
  let x_678 : vec2<f32> = ((vec2<f32>(x_668.z, x_668.w) * vec2<f32>(x_672.x, x_672.y)) + vec2<f32>(x_676.z, x_676.w));
  let x_679 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_678.x, x_678.y, x_679.z, x_679.w);
  let x_686 : vec4<f32> = u_xlat0;
  let x_688 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_686.x, x_686.y));
  let x_689 : vec3<f32> = vec3<f32>(x_688.x, x_688.y, x_688.z);
  let x_690 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_689.x, x_689.y, x_689.z, x_690.w);
  let x_692 : vec4<f32> = u_xlat1;
  u_xlat2 = vec3<f32>(x_692.x, x_692.y, x_692.z);
  let x_694 : vec3<f32> = u_xlat2;
  u_xlat2 = clamp(x_694, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_698 : vec3<f32> = u_xlat2;
  u_xlat15 = dot(x_698, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_704 : f32 = u_xlat15;
  u_xlat15 = sqrt(x_704);
  let x_708 : f32 = x_31.x_Grain_Params1.x;
  let x_709 : f32 = u_xlat15;
  u_xlat15 = ((x_708 * -(x_709)) + 1.0f);
  let x_713 : vec4<f32> = u_xlat0;
  let x_715 : vec4<f32> = u_xlat1;
  let x_717 : vec3<f32> = (vec3<f32>(x_713.x, x_713.y, x_713.z) * vec3<f32>(x_715.x, x_715.y, x_715.z));
  let x_718 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_717.x, x_717.y, x_717.z, x_718.w);
  let x_720 : vec4<f32> = u_xlat0;
  let x_723 : f32 = x_31.x_Grain_Params1.y;
  let x_725 : f32 = x_31.x_Grain_Params1.y;
  let x_727 : f32 = x_31.x_Grain_Params1.y;
  let x_729 : vec3<f32> = (vec3<f32>(x_720.x, x_720.y, x_720.z) * vec3<f32>(x_723, x_725, x_727));
  let x_730 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_729.x, x_729.y, x_729.z, x_730.w);
  let x_732 : vec4<f32> = u_xlat0;
  let x_734 : f32 = u_xlat15;
  let x_737 : vec4<f32> = u_xlat1;
  let x_739 : vec3<f32> = ((vec3<f32>(x_732.x, x_732.y, x_732.z) * vec3<f32>(x_734, x_734, x_734)) + vec3<f32>(x_737.x, x_737.y, x_737.z));
  let x_740 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_739.x, x_739.y, x_739.z, x_740.w);
  let x_742 : vec4<f32> = u_xlat3;
  let x_745 : f32 = x_31.x_PostExposure;
  let x_747 : f32 = x_31.x_PostExposure;
  let x_749 : f32 = x_31.x_PostExposure;
  let x_751 : f32 = x_31.x_PostExposure;
  let x_752 : vec4<f32> = vec4<f32>(x_745, x_747, x_749, x_751);
  u_xlat0 = (x_742 * vec4<f32>(x_752.x, x_752.y, x_752.z, x_752.w));
  let x_759 : vec4<f32> = u_xlat0;
  let x_766 : vec3<f32> = ((vec3<f32>(x_759.z, x_759.x, x_759.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_767 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_766.x, x_766.y, x_766.z, x_767.w);
  let x_769 : vec4<f32> = u_xlat1;
  let x_771 : vec3<f32> = log2(vec3<f32>(x_769.x, x_769.y, x_769.z));
  let x_772 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_771.x, x_771.y, x_771.z, x_772.w);
  let x_774 : vec4<f32> = u_xlat1;
  let x_781 : vec3<f32> = ((vec3<f32>(x_774.x, x_774.y, x_774.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_782 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_781.x, x_781.y, x_781.z, x_782.w);
  let x_784 : vec4<f32> = u_xlat1;
  let x_788 : vec3<f32> = clamp(vec3<f32>(x_784.x, x_784.y, x_784.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_789 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_788.x, x_788.y, x_788.z, x_789.w);
  let x_792 : vec4<f32> = u_xlat1;
  let x_796 : vec3<f32> = x_31.x_Lut2D_Params;
  u_xlat6 = (vec3<f32>(x_792.x, x_792.y, x_792.z) * vec3<f32>(x_796.z, x_796.z, x_796.z));
  let x_800 : f32 = u_xlat6.x;
  u_xlat6.x = floor(x_800);
  let x_804 : vec3<f32> = x_31.x_Lut2D_Params;
  let x_807 : vec2<f32> = (vec2<f32>(x_804.x, x_804.y) * vec2<f32>(0.5f, 0.5f));
  let x_808 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_807.x, x_807.y, x_808.z);
  let x_810 : vec3<f32> = u_xlat6;
  let x_813 : vec3<f32> = x_31.x_Lut2D_Params;
  let x_816 : vec3<f32> = u_xlat2;
  let x_818 : vec2<f32> = ((vec2<f32>(x_810.y, x_810.z) * vec2<f32>(x_813.x, x_813.y)) + vec2<f32>(x_816.x, x_816.y));
  let x_819 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_819.x, x_818.x, x_818.y);
  let x_822 : f32 = u_xlat6.x;
  let x_824 : f32 = x_31.x_Lut2D_Params.y;
  let x_827 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_822 * x_824) + x_827);
  let x_835 : vec3<f32> = u_xlat2;
  let x_837 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_835.x, x_835.z));
  let x_838 : vec3<f32> = vec3<f32>(x_837.x, x_837.y, x_837.z);
  let x_839 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_838.x, x_838.y, x_838.z, x_839.w);
  let x_842 : f32 = x_31.x_Lut2D_Params.y;
  u_xlat4.x = x_842;
  u_xlat4.y = 0.0f;
  let x_846 : vec3<f32> = u_xlat2;
  let x_848 : vec2<f32> = u_xlat4;
  u_xlat11 = (vec2<f32>(x_846.x, x_846.z) + x_848);
  let x_853 : vec2<f32> = u_xlat11;
  let x_854 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_853);
  u_xlat2 = vec3<f32>(x_854.x, x_854.y, x_854.z);
  let x_857 : f32 = u_xlat1.x;
  let x_859 : f32 = x_31.x_Lut2D_Params.z;
  let x_862 : f32 = u_xlat6.x;
  u_xlat1.x = ((x_857 * x_859) + -(x_862));
  let x_866 : vec4<f32> = u_xlat3;
  let x_869 : vec3<f32> = u_xlat2;
  u_xlat6 = (-(vec3<f32>(x_866.x, x_866.y, x_866.z)) + x_869);
  let x_871 : vec4<f32> = u_xlat1;
  let x_873 : vec3<f32> = u_xlat6;
  let x_875 : vec4<f32> = u_xlat3;
  let x_877 : vec3<f32> = ((vec3<f32>(x_871.x, x_871.x, x_871.x) * x_873) + vec3<f32>(x_875.x, x_875.y, x_875.z));
  let x_878 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_877.x, x_877.y, x_877.z, x_878.w);
  let x_883 : f32 = x_31.x_LumaInAlpha;
  u_xlatb1 = (0.5f < x_883);
  let x_885 : bool = u_xlatb1;
  if (x_885) {
    let x_888 : vec4<f32> = u_xlat0;
    let x_889 : vec3<f32> = vec3<f32>(x_888.x, x_888.y, x_888.z);
    let x_890 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_889.x, x_889.y, x_889.z, x_890.w);
    let x_892 : vec4<f32> = u_xlat1;
    let x_896 : vec3<f32> = clamp(vec3<f32>(x_892.x, x_892.y, x_892.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_897 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_896.x, x_896.y, x_896.z, x_897.w);
    let x_899 : vec4<f32> = u_xlat1;
    u_xlat0.w = dot(vec3<f32>(x_899.x, x_899.y, x_899.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_905 : vec4<f32> = u_xlat0;
  SV_Target0 = x_905;
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

