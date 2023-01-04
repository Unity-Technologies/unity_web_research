struct PGlobals {
  x_ScreenParams : vec4<f32>,
  x_Distortion_Amount : vec4<f32>,
  x_Distortion_CenterScale : vec4<f32>,
  x_Dithering_Coords : vec4<f32>,
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

var<private> u_xlat5 : f32;

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

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_DitheringTex : sampler;

var<private> u_xlat6 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_218 : f32;
  var x_369 : f32;
  var x_401 : f32;
  var x_622 : f32;
  var x_985 : f32;
  var x_997 : f32;
  var x_1009 : f32;
  var x_1061 : f32;
  var x_1074 : f32;
  var x_1086 : f32;
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
    let x_302 : f32 = x_31.x_Distortion_Amount.x;
    u_xlat5 = (x_300 * x_302);
    let x_305 : f32 = u_xlat0.x;
    let x_307 : f32 = x_31.x_Distortion_Amount.y;
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
    let x_393 : f32 = u_xlat0.x;
    let x_395 : f32 = u_xlat0.x;
    u_xlatb0.x = (x_393 < -(x_395));
    let x_400 : bool = u_xlatb0.x;
    if (x_400) {
      let x_405 : f32 = u_xlat2.x;
      x_401 = -(x_405);
    } else {
      let x_409 : f32 = u_xlat2.x;
      x_401 = x_409;
    }
    let x_410 : f32 = x_401;
    u_xlat0.x = x_410;
    let x_412 : f32 = u_xlat5;
    let x_414 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_412 * x_414) + -1.0f);
    let x_418 : vec4<f32> = u_xlat0;
    let x_420 : vec4<f32> = u_xlat0;
    let x_423 : vec4<f32> = u_xlat1;
    let x_425 : vec2<f32> = ((vec2<f32>(x_418.z, x_418.w) * vec2<f32>(x_420.x, x_420.x)) + vec2<f32>(x_423.z, x_423.w));
    let x_426 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_425.x, x_425.y, x_426.z, x_426.w);
  }
  let x_438 : vec4<f32> = phase0_Input0_1;
  let x_440 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, vec2<f32>(x_438.x, x_438.y));
  u_xlat0.x = x_440.x;
  let x_448 : vec4<f32> = u_xlat1;
  let x_450 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_448.x, x_448.y));
  u_xlat1 = x_450;
  let x_451 : vec4<f32> = u_xlat0;
  let x_453 : vec4<f32> = u_xlat1;
  let x_455 : vec3<f32> = (vec3<f32>(x_451.x, x_451.x, x_451.x) * vec3<f32>(x_453.x, x_453.y, x_453.z));
  let x_456 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_455.x, x_455.y, x_455.z, x_456.w);
  let x_461 : f32 = x_31.x_Vignette_Mode;
  u_xlatb15 = (x_461 < 0.5f);
  let x_463 : bool = u_xlatb15;
  if (x_463) {
    let x_466 : vec2<f32> = u_xlat12;
    let x_470 : vec2<f32> = x_31.x_Vignette_Center;
    let x_472 : vec2<f32> = (x_466 + -(x_470));
    let x_473 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_472.x, x_472.y, x_473.z, x_473.w);
    let x_475 : vec4<f32> = u_xlat1;
    let x_480 : vec4<f32> = x_31.x_Vignette_Settings;
    let x_482 : vec2<f32> = (abs(vec2<f32>(x_475.y, x_475.x)) * vec2<f32>(x_480.x, x_480.x));
    let x_483 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_483.x, x_482.x, x_482.y, x_483.w);
    let x_488 : f32 = x_31.x_ScreenParams.x;
    let x_490 : f32 = x_31.x_ScreenParams.y;
    u_xlat15 = (x_488 / x_490);
    let x_492 : f32 = u_xlat15;
    u_xlat15 = (x_492 + -1.0f);
    let x_495 : f32 = x_31.x_Vignette_Settings.w;
    let x_496 : f32 = u_xlat15;
    u_xlat15 = ((x_495 * x_496) + 1.0f);
    let x_499 : f32 = u_xlat15;
    let x_502 : f32 = u_xlat1.z;
    u_xlat1.x = (x_499 * x_502);
    let x_505 : vec4<f32> = u_xlat1;
    let x_506 : vec2<f32> = vec2<f32>(x_505.x, x_505.y);
    let x_507 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_506.x, x_506.y, x_507.z, x_507.w);
    let x_509 : vec4<f32> = u_xlat1;
    let x_513 : vec2<f32> = clamp(vec2<f32>(x_509.x, x_509.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_514 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_513.x, x_513.y, x_514.z, x_514.w);
    let x_516 : vec4<f32> = u_xlat1;
    let x_518 : vec2<f32> = log2(vec2<f32>(x_516.x, x_516.y));
    let x_519 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_518.x, x_518.y, x_519.z, x_519.w);
    let x_521 : vec4<f32> = u_xlat1;
    let x_524 : vec4<f32> = x_31.x_Vignette_Settings;
    let x_526 : vec2<f32> = (vec2<f32>(x_521.x, x_521.y) * vec2<f32>(x_524.z, x_524.z));
    let x_527 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_526.x, x_526.y, x_527.z, x_527.w);
    let x_529 : vec4<f32> = u_xlat1;
    let x_531 : vec2<f32> = exp2(vec2<f32>(x_529.x, x_529.y));
    let x_532 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_531.x, x_531.y, x_532.z, x_532.w);
    let x_534 : vec4<f32> = u_xlat1;
    let x_536 : vec4<f32> = u_xlat1;
    u_xlat15 = dot(vec2<f32>(x_534.x, x_534.y), vec2<f32>(x_536.x, x_536.y));
    let x_539 : f32 = u_xlat15;
    u_xlat15 = (-(x_539) + 1.0f);
    let x_542 : f32 = u_xlat15;
    u_xlat15 = max(x_542, 0.0f);
    let x_544 : f32 = u_xlat15;
    u_xlat15 = log2(x_544);
    let x_546 : f32 = u_xlat15;
    let x_548 : f32 = x_31.x_Vignette_Settings.y;
    u_xlat15 = (x_546 * x_548);
    let x_550 : f32 = u_xlat15;
    u_xlat15 = exp2(x_550);
    let x_555 : vec3<f32> = x_31.x_Vignette_Color;
    let x_558 : vec3<f32> = (-(x_555) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_559 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_558.x, x_558.y, x_558.z, x_559.w);
    let x_561 : f32 = u_xlat15;
    let x_563 : vec4<f32> = u_xlat1;
    let x_567 : vec3<f32> = x_31.x_Vignette_Color;
    let x_568 : vec3<f32> = ((vec3<f32>(x_561, x_561, x_561) * vec3<f32>(x_563.x, x_563.y, x_563.z)) + x_567);
    let x_569 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_568.x, x_568.y, x_568.z, x_569.w);
    let x_571 : vec4<f32> = u_xlat0;
    let x_573 : vec4<f32> = u_xlat1;
    let x_575 : vec3<f32> = (vec3<f32>(x_571.x, x_571.y, x_571.z) * vec3<f32>(x_573.x, x_573.y, x_573.z));
    let x_576 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_575.x, x_575.y, x_575.z, x_576.w);
    let x_579 : f32 = u_xlat1.w;
    u_xlat2.x = (x_579 + -1.0f);
    let x_582 : f32 = u_xlat15;
    let x_584 : f32 = u_xlat2.x;
    u_xlat3.w = ((x_582 * x_584) + 1.0f);
  } else {
    let x_594 : vec2<f32> = u_xlat12;
    let x_595 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_594);
    u_xlat15 = x_595.w;
    let x_597 : f32 = u_xlat15;
    u_xlat2.x = (x_597 * 0.077399381f);
    let x_601 : f32 = u_xlat15;
    u_xlat7 = (x_601 + 0.055f);
    let x_604 : f32 = u_xlat7;
    u_xlat7 = (x_604 * 0.947867334f);
    let x_607 : f32 = u_xlat7;
    u_xlat7 = max(abs(x_607), 1.1920929e-07f);
    let x_611 : f32 = u_xlat7;
    u_xlat7 = log2(x_611);
    let x_613 : f32 = u_xlat7;
    u_xlat7 = (x_613 * 2.400000095f);
    let x_616 : f32 = u_xlat7;
    u_xlat7 = exp2(x_616);
    let x_619 : f32 = u_xlat15;
    u_xlatb15 = (0.040449999f >= x_619);
    let x_621 : bool = u_xlatb15;
    if (x_621) {
      let x_626 : f32 = u_xlat2.x;
      x_622 = x_626;
    } else {
      let x_628 : f32 = u_xlat7;
      x_622 = x_628;
    }
    let x_629 : f32 = x_622;
    u_xlat15 = x_629;
    let x_631 : vec3<f32> = x_31.x_Vignette_Color;
    u_xlat2 = (-(x_631) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_634 : f32 = u_xlat15;
    let x_636 : vec3<f32> = u_xlat2;
    let x_639 : vec3<f32> = x_31.x_Vignette_Color;
    u_xlat2 = ((vec3<f32>(x_634, x_634, x_634) * x_636) + x_639);
    let x_641 : vec4<f32> = u_xlat0;
    let x_643 : vec3<f32> = u_xlat2;
    let x_645 : vec4<f32> = u_xlat0;
    u_xlat2 = ((vec3<f32>(x_641.x, x_641.y, x_641.z) * x_643) + -(vec3<f32>(x_645.x, x_645.y, x_645.z)));
    let x_651 : f32 = x_31.x_Vignette_Opacity;
    let x_653 : vec3<f32> = u_xlat2;
    let x_655 : vec4<f32> = u_xlat0;
    let x_657 : vec3<f32> = ((vec3<f32>(x_651, x_651, x_651) * x_653) + vec3<f32>(x_655.x, x_655.y, x_655.z));
    let x_658 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_657.x, x_657.y, x_657.z, x_658.w);
    let x_661 : f32 = u_xlat1.w;
    u_xlat0.x = (x_661 + -1.0f);
    let x_664 : f32 = u_xlat15;
    let x_666 : f32 = u_xlat0.x;
    u_xlat3.w = ((x_664 * x_666) + 1.0f);
  }
  let x_670 : vec4<f32> = phase0_Input0_1;
  let x_674 : vec4<f32> = x_31.x_Grain_Params2;
  let x_678 : vec4<f32> = x_31.x_Grain_Params2;
  let x_680 : vec2<f32> = ((vec2<f32>(x_670.z, x_670.w) * vec2<f32>(x_674.x, x_674.y)) + vec2<f32>(x_678.z, x_678.w));
  let x_681 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_680.x, x_680.y, x_681.z, x_681.w);
  let x_688 : vec4<f32> = u_xlat0;
  let x_690 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_688.x, x_688.y));
  let x_691 : vec3<f32> = vec3<f32>(x_690.x, x_690.y, x_690.z);
  let x_692 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_691.x, x_691.y, x_691.z, x_692.w);
  let x_694 : vec4<f32> = u_xlat1;
  u_xlat2 = vec3<f32>(x_694.x, x_694.y, x_694.z);
  let x_696 : vec3<f32> = u_xlat2;
  u_xlat2 = clamp(x_696, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_700 : vec3<f32> = u_xlat2;
  u_xlat15 = dot(x_700, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_706 : f32 = u_xlat15;
  u_xlat15 = sqrt(x_706);
  let x_710 : f32 = x_31.x_Grain_Params1.x;
  let x_711 : f32 = u_xlat15;
  u_xlat15 = ((x_710 * -(x_711)) + 1.0f);
  let x_715 : vec4<f32> = u_xlat0;
  let x_717 : vec4<f32> = u_xlat1;
  let x_719 : vec3<f32> = (vec3<f32>(x_715.x, x_715.y, x_715.z) * vec3<f32>(x_717.x, x_717.y, x_717.z));
  let x_720 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_719.x, x_719.y, x_719.z, x_720.w);
  let x_722 : vec4<f32> = u_xlat0;
  let x_725 : f32 = x_31.x_Grain_Params1.y;
  let x_727 : f32 = x_31.x_Grain_Params1.y;
  let x_729 : f32 = x_31.x_Grain_Params1.y;
  let x_731 : vec3<f32> = (vec3<f32>(x_722.x, x_722.y, x_722.z) * vec3<f32>(x_725, x_727, x_729));
  let x_732 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_731.x, x_731.y, x_731.z, x_732.w);
  let x_734 : vec4<f32> = u_xlat0;
  let x_736 : f32 = u_xlat15;
  let x_739 : vec4<f32> = u_xlat1;
  let x_741 : vec3<f32> = ((vec3<f32>(x_734.x, x_734.y, x_734.z) * vec3<f32>(x_736, x_736, x_736)) + vec3<f32>(x_739.x, x_739.y, x_739.z));
  let x_742 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_741.x, x_741.y, x_741.z, x_742.w);
  let x_744 : vec4<f32> = u_xlat3;
  let x_747 : f32 = x_31.x_PostExposure;
  let x_749 : f32 = x_31.x_PostExposure;
  let x_751 : f32 = x_31.x_PostExposure;
  let x_753 : f32 = x_31.x_PostExposure;
  let x_754 : vec4<f32> = vec4<f32>(x_747, x_749, x_751, x_753);
  u_xlat0 = (x_744 * vec4<f32>(x_754.x, x_754.y, x_754.z, x_754.w));
  let x_761 : vec4<f32> = u_xlat0;
  let x_768 : vec3<f32> = ((vec3<f32>(x_761.z, x_761.x, x_761.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_769 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_768.x, x_768.y, x_768.z, x_769.w);
  let x_771 : vec4<f32> = u_xlat0;
  let x_773 : vec3<f32> = log2(vec3<f32>(x_771.x, x_771.y, x_771.z));
  let x_774 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_773.x, x_773.y, x_773.z, x_774.w);
  let x_776 : vec4<f32> = u_xlat0;
  let x_783 : vec3<f32> = ((vec3<f32>(x_776.x, x_776.y, x_776.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_784 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_783.x, x_783.y, x_783.z, x_784.w);
  let x_786 : vec4<f32> = u_xlat0;
  let x_790 : vec3<f32> = clamp(vec3<f32>(x_786.x, x_786.y, x_786.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_791 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_790.x, x_790.y, x_790.z, x_791.w);
  let x_793 : vec4<f32> = u_xlat0;
  let x_797 : vec3<f32> = x_31.x_Lut2D_Params;
  let x_799 : vec3<f32> = (vec3<f32>(x_793.x, x_793.y, x_793.z) * vec3<f32>(x_797.z, x_797.z, x_797.z));
  let x_800 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_799.x, x_799.y, x_799.z, x_800.w);
  let x_803 : f32 = u_xlat1.x;
  u_xlat5 = floor(x_803);
  let x_806 : vec3<f32> = x_31.x_Lut2D_Params;
  let x_809 : vec2<f32> = (vec2<f32>(x_806.x, x_806.y) * vec2<f32>(0.5f, 0.5f));
  let x_810 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_809.x, x_810.y, x_810.z, x_809.y);
  let x_812 : vec4<f32> = u_xlat1;
  let x_815 : vec3<f32> = x_31.x_Lut2D_Params;
  let x_818 : vec4<f32> = u_xlat1;
  let x_820 : vec2<f32> = ((vec2<f32>(x_812.y, x_812.z) * vec2<f32>(x_815.x, x_815.y)) + vec2<f32>(x_818.x, x_818.w));
  let x_821 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_821.x, x_820.x, x_820.y, x_821.w);
  let x_823 : f32 = u_xlat5;
  let x_825 : f32 = x_31.x_Lut2D_Params.y;
  let x_828 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_823 * x_825) + x_828);
  let x_836 : vec4<f32> = u_xlat1;
  let x_838 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_836.x, x_836.z));
  u_xlat2 = vec3<f32>(x_838.x, x_838.y, x_838.z);
  let x_841 : f32 = x_31.x_Lut2D_Params.y;
  u_xlat3.x = x_841;
  u_xlat3.y = 0.0f;
  let x_844 : vec4<f32> = u_xlat1;
  let x_846 : vec4<f32> = u_xlat3;
  let x_848 : vec2<f32> = (vec2<f32>(x_844.x, x_844.z) + vec2<f32>(x_846.x, x_846.y));
  let x_849 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_848.x, x_848.y, x_849.z, x_849.w);
  let x_854 : vec4<f32> = u_xlat1;
  let x_856 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_854.x, x_854.y));
  let x_857 : vec3<f32> = vec3<f32>(x_856.x, x_856.y, x_856.z);
  let x_858 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_857.x, x_857.y, x_857.z, x_858.w);
  let x_861 : f32 = u_xlat0.x;
  let x_863 : f32 = x_31.x_Lut2D_Params.z;
  let x_865 : f32 = u_xlat5;
  u_xlat0.x = ((x_861 * x_863) + -(x_865));
  let x_869 : vec3<f32> = u_xlat2;
  let x_871 : vec4<f32> = u_xlat1;
  let x_873 : vec3<f32> = (-(x_869) + vec3<f32>(x_871.x, x_871.y, x_871.z));
  let x_874 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_873.x, x_873.y, x_873.z, x_874.w);
  let x_876 : vec4<f32> = u_xlat0;
  let x_878 : vec4<f32> = u_xlat1;
  let x_881 : vec3<f32> = u_xlat2;
  let x_882 : vec3<f32> = ((vec3<f32>(x_876.x, x_876.x, x_876.x) * vec3<f32>(x_878.x, x_878.y, x_878.z)) + x_881);
  let x_883 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_882.x, x_882.y, x_882.z, x_883.w);
  let x_885 : vec4<f32> = phase0_Input0_1;
  let x_889 : vec4<f32> = x_31.x_Dithering_Coords;
  let x_893 : vec4<f32> = x_31.x_Dithering_Coords;
  let x_895 : vec2<f32> = ((vec2<f32>(x_885.x, x_885.y) * vec2<f32>(x_889.x, x_889.y)) + vec2<f32>(x_893.z, x_893.w));
  let x_896 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_895.x, x_895.y, x_896.z, x_896.w);
  let x_903 : vec4<f32> = u_xlat1;
  let x_905 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_903.x, x_903.y));
  u_xlat1.x = x_905.w;
  let x_909 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_909 * 2.0f) + -1.0f);
  let x_916 : f32 = u_xlat1.x;
  u_xlat6.x = ((x_916 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_922 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_922, 0.0f, 1.0f);
  let x_926 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_926 * 2.0f) + -1.0f);
  let x_931 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_931)) + 1.0f);
  let x_937 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_937);
  let x_941 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_941) + 1.0f);
  let x_946 : f32 = u_xlat1.x;
  let x_948 : f32 = u_xlat6.x;
  u_xlat1.x = (x_946 * x_948);
  let x_951 : vec4<f32> = u_xlat0;
  u_xlat6 = (vec3<f32>(x_951.x, x_951.y, x_951.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_956 : vec4<f32> = u_xlat0;
  u_xlat2 = max(abs(vec3<f32>(x_956.x, x_956.y, x_956.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_961 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_961);
  let x_963 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_963 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_967 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_967);
  let x_969 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_969 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_978 : vec4<f32> = u_xlat0;
  let x_981 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_978.x, x_978.y, x_978.z, x_978.x));
  u_xlatb0 = vec3<bool>(x_981.x, x_981.y, x_981.z);
  let x_984 : bool = u_xlatb0.x;
  if (x_984) {
    let x_989 : f32 = u_xlat6.x;
    x_985 = x_989;
  } else {
    let x_992 : f32 = u_xlat2.x;
    x_985 = x_992;
  }
  let x_993 : f32 = x_985;
  u_xlat0.x = x_993;
  let x_996 : bool = u_xlatb0.y;
  if (x_996) {
    let x_1001 : f32 = u_xlat6.y;
    x_997 = x_1001;
  } else {
    let x_1004 : f32 = u_xlat2.y;
    x_997 = x_1004;
  }
  let x_1005 : f32 = x_997;
  u_xlat0.y = x_1005;
  let x_1008 : bool = u_xlatb0.z;
  if (x_1008) {
    let x_1013 : f32 = u_xlat6.z;
    x_1009 = x_1013;
  } else {
    let x_1016 : f32 = u_xlat2.z;
    x_1009 = x_1016;
  }
  let x_1017 : f32 = x_1009;
  u_xlat0.z = x_1017;
  let x_1019 : vec4<f32> = u_xlat1;
  let x_1024 : vec4<f32> = u_xlat0;
  let x_1026 : vec3<f32> = ((vec3<f32>(x_1019.x, x_1019.x, x_1019.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_1024.x, x_1024.y, x_1024.z));
  let x_1027 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1026.x, x_1026.y, x_1026.z, x_1027.w);
  let x_1029 : vec4<f32> = u_xlat0;
  let x_1032 : vec3<f32> = (vec3<f32>(x_1029.x, x_1029.y, x_1029.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1033 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1032.x, x_1032.y, x_1032.z, x_1033.w);
  let x_1035 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_1035.x, x_1035.y, x_1035.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1039 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1039 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1042 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_1042), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1045 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_1045);
  let x_1047 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1047 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1050 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_1050);
  let x_1053 : vec4<f32> = u_xlat0;
  let x_1055 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1053.x, x_1053.y, x_1053.z, x_1053.x));
  u_xlatb0 = vec3<bool>(x_1055.x, x_1055.y, x_1055.z);
  let x_1060 : bool = u_xlatb0.x;
  if (x_1060) {
    let x_1065 : f32 = u_xlat1.x;
    x_1061 = x_1065;
  } else {
    let x_1068 : f32 = u_xlat2.x;
    x_1061 = x_1068;
  }
  let x_1069 : f32 = x_1061;
  SV_Target0.x = x_1069;
  let x_1073 : bool = u_xlatb0.y;
  if (x_1073) {
    let x_1078 : f32 = u_xlat1.y;
    x_1074 = x_1078;
  } else {
    let x_1081 : f32 = u_xlat2.y;
    x_1074 = x_1081;
  }
  let x_1082 : f32 = x_1074;
  SV_Target0.y = x_1082;
  let x_1085 : bool = u_xlatb0.z;
  if (x_1085) {
    let x_1090 : f32 = u_xlat1.z;
    x_1086 = x_1090;
  } else {
    let x_1093 : f32 = u_xlat2.z;
    x_1086 = x_1093;
  }
  let x_1094 : f32 = x_1086;
  SV_Target0.z = x_1094;
  let x_1097 : f32 = u_xlat0.w;
  SV_Target0.w = x_1097;
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

