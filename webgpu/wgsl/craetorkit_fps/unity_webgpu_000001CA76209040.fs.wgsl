struct PGlobals {
  x_ScreenParams : vec4<f32>,
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_Distortion_Amount : vec4<f32>,
  x_Distortion_CenterScale : vec4<f32>,
  x_Dithering_Coords : vec4<f32>,
  x_ChromaticAberration_Amount : f32,
  @size(12)
  padding_1 : u32,
  x_Lut2D_Params : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_Vignette_Color : vec3<f32>,
  @size(4)
  padding_3 : u32,
  x_Vignette_Center : vec2<f32>,
  @size(8)
  padding_4 : u32,
  x_Vignette_Settings : vec4<f32>,
  x_Vignette_Opacity : f32,
  x_Vignette_Mode : f32,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_26 : PGlobals;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_AutoExposureTex : sampler;

@group(0) @binding(3) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(9) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

@group(0) @binding(5) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(11) var sampler_Vignette_Mask : sampler;

@group(0) @binding(4) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(10) var sampler_Lut2D : sampler;

@group(0) @binding(0) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_DitheringTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat20 : vec2<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlatb11 : bool;
  var u_xlat21 : vec2<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat31 : f32;
  var u_xlat12 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlat32 : f32;
  var u_xlatb13 : bool;
  var x_208 : f32;
  var u_xlatb12 : bool;
  var x_234 : f32;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat17 : f32;
  var u_xlat27 : f32;
  var u_xlatb37 : bool;
  var u_xlatb1 : bool;
  var x_467 : f32;
  var u_xlat9 : f32;
  var u_xlat18 : f32;
  var u_xlat28 : f32;
  var u_xlatb38 : bool;
  var x_692 : f32;
  var u_xlat11 : vec3<f32>;
  var u_xlat13 : f32;
  var u_xlatb7 : bool;
  var x_892 : f32;
  var x_1175 : f32;
  var u_xlatb2 : vec3<bool>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_1271 : f32;
  var x_1283 : f32;
  var x_1295 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlatb0 : vec3<bool>;
  var x_1440 : f32;
  var x_1452 : f32;
  var x_1464 : f32;
  var u_xlat30 : f32;
  var x_1562 : f32;
  var x_1574 : f32;
  var x_1586 : f32;
  var x_1648 : f32;
  var x_1661 : f32;
  var x_1673 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD0;
  let x_16 : vec2<f32> = (x_13 + vec2<f32>(-0.5f, -0.5f));
  let x_17 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_16.x, x_16.y, x_17.z, x_17.w);
  let x_21 : vec4<f32> = u_xlat0;
  let x_31 : vec4<f32> = x_26.x_Distortion_Amount;
  u_xlat20 = ((vec2<f32>(x_21.x, x_21.y) * vec2<f32>(x_31.z, x_31.z)) + vec2<f32>(0.5f, 0.5f));
  let x_37 : vec4<f32> = u_xlat0;
  let x_40 : vec4<f32> = x_26.x_Distortion_Amount;
  let x_45 : vec4<f32> = x_26.x_Distortion_CenterScale;
  let x_48 : vec2<f32> = ((vec2<f32>(x_37.x, x_37.y) * vec2<f32>(x_40.z, x_40.z)) + -(vec2<f32>(x_45.x, x_45.y)));
  let x_49 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_48.x, x_48.y, x_49.z, x_49.w);
  let x_51 : vec4<f32> = u_xlat0;
  let x_54 : vec4<f32> = x_26.x_Distortion_CenterScale;
  let x_56 : vec2<f32> = (vec2<f32>(x_51.x, x_51.y) * vec2<f32>(x_54.z, x_54.w));
  let x_57 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_56.x, x_56.y, x_57.z, x_57.w);
  let x_61 : vec4<f32> = u_xlat0;
  let x_63 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec2<f32>(x_61.x, x_61.y), vec2<f32>(x_63.x, x_63.y));
  let x_71 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_71);
  let x_81 : f32 = x_26.x_Distortion_Amount.w;
  u_xlatb11 = (0.0f < x_81);
  let x_83 : bool = u_xlatb11;
  if (x_83) {
    let x_87 : vec3<f32> = u_xlat1;
    let x_90 : vec4<f32> = x_26.x_Distortion_Amount;
    u_xlat21 = (vec2<f32>(x_87.x, x_87.x) * vec2<f32>(x_90.x, x_90.y));
    let x_95 : f32 = u_xlat21.x;
    u_xlat2.x = sin(x_95);
    let x_100 : f32 = u_xlat21.x;
    u_xlat3.x = cos(x_100);
    let x_104 : f32 = u_xlat2.x;
    let x_106 : f32 = u_xlat3.x;
    u_xlat21.x = (x_104 / x_106);
    let x_113 : f32 = u_xlat21.y;
    u_xlat31 = (1.0f / x_113);
    let x_116 : f32 = u_xlat21.x;
    let x_117 : f32 = u_xlat31;
    u_xlat21.x = ((x_116 * x_117) + -1.0f);
    let x_122 : vec4<f32> = u_xlat0;
    let x_124 : vec2<f32> = u_xlat21;
    let x_127 : vec2<f32> = u_xlat20;
    u_xlat21 = ((vec2<f32>(x_122.x, x_122.y) * vec2<f32>(x_124.x, x_124.x)) + x_127);
  } else {
    let x_131 : f32 = u_xlat1.x;
    u_xlat2.x = (1.0f / x_131);
    let x_135 : f32 = u_xlat2.x;
    let x_137 : f32 = x_26.x_Distortion_Amount.x;
    u_xlat2.x = (x_135 * x_137);
    let x_142 : f32 = u_xlat1.x;
    let x_144 : f32 = x_26.x_Distortion_Amount.y;
    u_xlat12.x = (x_142 * x_144);
    let x_149 : f32 = u_xlat12.x;
    u_xlat22 = min(abs(x_149), 1.0f);
    let x_154 : f32 = u_xlat12.x;
    u_xlat32 = max(abs(x_154), 1.0f);
    let x_157 : f32 = u_xlat32;
    u_xlat32 = (1.0f / x_157);
    let x_159 : f32 = u_xlat32;
    let x_160 : f32 = u_xlat22;
    u_xlat22 = (x_159 * x_160);
    let x_162 : f32 = u_xlat22;
    let x_163 : f32 = u_xlat22;
    u_xlat32 = (x_162 * x_163);
    let x_165 : f32 = u_xlat32;
    u_xlat3.x = ((x_165 * 0.0208351f) + -0.085133001f);
    let x_171 : f32 = u_xlat32;
    let x_173 : f32 = u_xlat3.x;
    u_xlat3.x = ((x_171 * x_173) + 0.180141002f);
    let x_178 : f32 = u_xlat32;
    let x_180 : f32 = u_xlat3.x;
    u_xlat3.x = ((x_178 * x_180) + -0.330299497f);
    let x_185 : f32 = u_xlat32;
    let x_187 : f32 = u_xlat3.x;
    u_xlat32 = ((x_185 * x_187) + 0.999866009f);
    let x_191 : f32 = u_xlat32;
    let x_192 : f32 = u_xlat22;
    u_xlat3.x = (x_191 * x_192);
    let x_197 : f32 = u_xlat12.x;
    u_xlatb13 = (1.0f < abs(x_197));
    let x_201 : f32 = u_xlat3.x;
    u_xlat3.x = ((x_201 * -2.0f) + 1.570796371f);
    let x_207 : bool = u_xlatb13;
    if (x_207) {
      let x_212 : f32 = u_xlat3.x;
      x_208 = x_212;
    } else {
      x_208 = 0.0f;
    }
    let x_214 : f32 = x_208;
    u_xlat3.x = x_214;
    let x_216 : f32 = u_xlat22;
    let x_217 : f32 = u_xlat32;
    let x_220 : f32 = u_xlat3.x;
    u_xlat22 = ((x_216 * x_217) + x_220);
    let x_223 : f32 = u_xlat12.x;
    u_xlat12.x = min(x_223, 1.0f);
    let x_228 : f32 = u_xlat12.x;
    let x_230 : f32 = u_xlat12.x;
    u_xlatb12 = (x_228 < -(x_230));
    let x_233 : bool = u_xlatb12;
    if (x_233) {
      let x_237 : f32 = u_xlat22;
      x_234 = -(x_237);
    } else {
      let x_240 : f32 = u_xlat22;
      x_234 = x_240;
    }
    let x_241 : f32 = x_234;
    u_xlat12.x = x_241;
    let x_244 : f32 = u_xlat2.x;
    let x_246 : f32 = u_xlat12.x;
    u_xlat2.x = ((x_244 * x_246) + -1.0f);
    let x_250 : vec4<f32> = u_xlat0;
    let x_252 : vec4<f32> = u_xlat2;
    let x_255 : vec2<f32> = u_xlat20;
    u_xlat21 = ((vec2<f32>(x_250.x, x_250.y) * vec2<f32>(x_252.x, x_252.x)) + x_255);
  }
  let x_267 : vec2<f32> = vs_TEXCOORD0;
  let x_268 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_267);
  u_xlat2.x = x_268.x;
  let x_271 : vec2<f32> = vs_TEXCOORD0;
  u_xlat3 = ((vec4<f32>(x_271.x, x_271.y, x_271.x, x_271.y) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_278 : vec4<f32> = u_xlat3;
  let x_280 : vec4<f32> = u_xlat3;
  u_xlat12.x = dot(vec2<f32>(x_278.z, x_278.w), vec2<f32>(x_280.z, x_280.w));
  let x_284 : vec3<f32> = u_xlat12;
  let x_286 : vec4<f32> = u_xlat3;
  u_xlat3 = (vec4<f32>(x_284.x, x_284.x, x_284.x, x_284.x) * x_286);
  let x_288 : vec4<f32> = u_xlat3;
  let x_291 : f32 = x_26.x_ChromaticAberration_Amount;
  let x_293 : f32 = x_26.x_ChromaticAberration_Amount;
  let x_295 : f32 = x_26.x_ChromaticAberration_Amount;
  let x_297 : f32 = x_26.x_ChromaticAberration_Amount;
  let x_298 : vec4<f32> = vec4<f32>(x_291, x_293, x_295, x_297);
  u_xlat3 = (x_288 * vec4<f32>(x_298.x, x_298.y, x_298.z, x_298.w));
  let x_313 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(0.166666672f, 0.0f), 0.0f);
  let x_314 : vec3<f32> = vec3<f32>(x_313.x, x_313.y, x_313.z);
  let x_315 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_314.x, x_314.y, x_314.z, x_315.w);
  let x_322 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(0.5f, 0.0f), 0.0f);
  let x_323 : vec3<f32> = vec3<f32>(x_322.x, x_322.y, x_322.z);
  let x_324 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_323.x, x_323.y, x_323.z, x_324.w);
  let x_332 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(0.833333313f, 0.0f), 0.0f);
  let x_333 : vec3<f32> = vec3<f32>(x_332.x, x_332.y, x_332.z);
  let x_334 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
  let x_336 : bool = u_xlatb11;
  if (x_336) {
    let x_339 : vec3<f32> = u_xlat1;
    let x_342 : vec4<f32> = x_26.x_Distortion_Amount;
    let x_344 : vec2<f32> = (vec2<f32>(x_339.x, x_339.x) * vec2<f32>(x_342.x, x_342.y));
    let x_345 : vec3<f32> = u_xlat12;
    u_xlat12 = vec3<f32>(x_344.x, x_344.y, x_345.z);
    let x_349 : f32 = u_xlat12.x;
    u_xlat7.x = sin(x_349);
    let x_354 : f32 = u_xlat12.x;
    u_xlat8.x = cos(x_354);
    let x_358 : f32 = u_xlat7.x;
    let x_360 : f32 = u_xlat8.x;
    u_xlat12.x = (x_358 / x_360);
    let x_364 : f32 = u_xlat12.y;
    u_xlat22 = (1.0f / x_364);
    let x_367 : f32 = u_xlat12.x;
    let x_368 : f32 = u_xlat22;
    u_xlat12.x = ((x_367 * x_368) + -1.0f);
    let x_372 : vec4<f32> = u_xlat0;
    let x_374 : vec3<f32> = u_xlat12;
    let x_377 : vec2<f32> = u_xlat20;
    let x_378 : vec2<f32> = ((vec2<f32>(x_372.x, x_372.y) * vec2<f32>(x_374.x, x_374.x)) + x_377);
    let x_379 : vec3<f32> = u_xlat12;
    u_xlat12 = vec3<f32>(x_378.x, x_378.y, x_379.z);
  } else {
    let x_383 : f32 = u_xlat1.x;
    u_xlat32 = (1.0f / x_383);
    let x_385 : f32 = u_xlat32;
    let x_387 : f32 = x_26.x_Distortion_Amount.x;
    u_xlat32 = (x_385 * x_387);
    let x_390 : f32 = u_xlat1.x;
    let x_392 : f32 = x_26.x_Distortion_Amount.y;
    u_xlat1.x = (x_390 * x_392);
    let x_396 : f32 = u_xlat1.x;
    u_xlat7.x = min(abs(x_396), 1.0f);
    let x_402 : f32 = u_xlat1.x;
    u_xlat17 = max(abs(x_402), 1.0f);
    let x_405 : f32 = u_xlat17;
    u_xlat17 = (1.0f / x_405);
    let x_407 : f32 = u_xlat17;
    let x_409 : f32 = u_xlat7.x;
    u_xlat7.x = (x_407 * x_409);
    let x_413 : f32 = u_xlat7.x;
    let x_415 : f32 = u_xlat7.x;
    u_xlat17 = (x_413 * x_415);
    let x_418 : f32 = u_xlat17;
    u_xlat27 = ((x_418 * 0.0208351f) + -0.085133001f);
    let x_421 : f32 = u_xlat17;
    let x_422 : f32 = u_xlat27;
    u_xlat27 = ((x_421 * x_422) + 0.180141002f);
    let x_425 : f32 = u_xlat17;
    let x_426 : f32 = u_xlat27;
    u_xlat27 = ((x_425 * x_426) + -0.330299497f);
    let x_429 : f32 = u_xlat17;
    let x_430 : f32 = u_xlat27;
    u_xlat17 = ((x_429 * x_430) + 0.999866009f);
    let x_433 : f32 = u_xlat17;
    let x_435 : f32 = u_xlat7.x;
    u_xlat27 = (x_433 * x_435);
    let x_439 : f32 = u_xlat1.x;
    u_xlatb37 = (1.0f < abs(x_439));
    let x_442 : f32 = u_xlat27;
    u_xlat27 = ((x_442 * -2.0f) + 1.570796371f);
    let x_445 : bool = u_xlatb37;
    let x_446 : f32 = u_xlat27;
    u_xlat27 = select(0.0f, x_446, x_445);
    let x_449 : f32 = u_xlat7.x;
    let x_450 : f32 = u_xlat17;
    let x_452 : f32 = u_xlat27;
    u_xlat7.x = ((x_449 * x_450) + x_452);
    let x_456 : f32 = u_xlat1.x;
    u_xlat1.x = min(x_456, 1.0f);
    let x_461 : f32 = u_xlat1.x;
    let x_463 : f32 = u_xlat1.x;
    u_xlatb1 = (x_461 < -(x_463));
    let x_466 : bool = u_xlatb1;
    if (x_466) {
      let x_471 : f32 = u_xlat7.x;
      x_467 = -(x_471);
    } else {
      let x_475 : f32 = u_xlat7.x;
      x_467 = x_475;
    }
    let x_476 : f32 = x_467;
    u_xlat1.x = x_476;
    let x_478 : f32 = u_xlat32;
    let x_480 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_478 * x_480) + -1.0f);
    let x_484 : vec4<f32> = u_xlat0;
    let x_486 : vec3<f32> = u_xlat1;
    let x_489 : vec2<f32> = u_xlat20;
    let x_490 : vec2<f32> = ((vec2<f32>(x_484.x, x_484.y) * vec2<f32>(x_486.x, x_486.x)) + x_489);
    let x_491 : vec3<f32> = u_xlat12;
    u_xlat12 = vec3<f32>(x_490.x, x_490.y, x_491.z);
  }
  let x_493 : vec3<f32> = u_xlat12;
  let x_494 : vec2<f32> = vec2<f32>(x_493.x, x_493.y);
  let x_495 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_494.x, x_494.y, x_495.z);
  let x_497 : vec3<f32> = u_xlat12;
  let x_501 : vec2<f32> = clamp(vec2<f32>(x_497.x, x_497.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_502 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_501.x, x_501.y, x_502.z);
  let x_504 : vec3<f32> = u_xlat12;
  let x_508 : f32 = x_26.x_RenderViewportScaleFactor;
  let x_510 : vec2<f32> = (vec2<f32>(x_504.x, x_504.y) * vec2<f32>(x_508, x_508));
  let x_511 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_510.x, x_510.y, x_511.z, x_511.w);
  let x_518 : vec4<f32> = u_xlat0;
  let x_520 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_518.x, x_518.y), 0.0f);
  u_xlat0 = x_520;
  let x_521 : vec4<f32> = u_xlat3;
  let x_526 : vec2<f32> = vs_TEXCOORD0;
  u_xlat3 = ((x_521 * vec4<f32>(-0.333333343f, -0.333333343f, -0.666666687f, -0.666666687f)) + vec4<f32>(x_526.x, x_526.y, x_526.x, x_526.y));
  let x_529 : vec4<f32> = u_xlat3;
  u_xlat3 = (x_529 + vec4<f32>(-0.5f, -0.5f, -0.5f, -0.5f));
  let x_532 : vec4<f32> = u_xlat3;
  let x_534 : vec4<f32> = x_26.x_Distortion_Amount;
  u_xlat7 = ((x_532 * vec4<f32>(x_534.z, x_534.z, x_534.z, x_534.z)) + vec4<f32>(0.5f, 0.5f, 0.5f, 0.5f));
  let x_539 : vec4<f32> = u_xlat3;
  let x_541 : vec4<f32> = x_26.x_Distortion_Amount;
  let x_545 : vec4<f32> = x_26.x_Distortion_CenterScale;
  u_xlat3 = ((x_539 * vec4<f32>(x_541.z, x_541.z, x_541.z, x_541.z)) + -(vec4<f32>(x_545.x, x_545.y, x_545.x, x_545.y)));
  let x_549 : vec4<f32> = u_xlat3;
  let x_551 : vec4<f32> = x_26.x_Distortion_CenterScale;
  u_xlat3 = (x_549 * vec4<f32>(x_551.z, x_551.w, x_551.z, x_551.w));
  let x_554 : vec4<f32> = u_xlat3;
  let x_556 : vec4<f32> = u_xlat3;
  u_xlat1.x = dot(vec2<f32>(x_554.x, x_554.y), vec2<f32>(x_556.x, x_556.y));
  let x_561 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_561);
  let x_564 : bool = u_xlatb11;
  if (x_564) {
    let x_567 : vec3<f32> = u_xlat1;
    let x_570 : vec4<f32> = x_26.x_Distortion_Amount;
    let x_572 : vec2<f32> = (vec2<f32>(x_567.x, x_567.x) * vec2<f32>(x_570.x, x_570.y));
    let x_573 : vec3<f32> = u_xlat12;
    u_xlat12 = vec3<f32>(x_572.x, x_572.y, x_573.z);
    let x_576 : f32 = u_xlat12.x;
    u_xlat8.x = sin(x_576);
    let x_581 : f32 = u_xlat12.x;
    u_xlat9 = cos(x_581);
    let x_584 : f32 = u_xlat8.x;
    let x_585 : f32 = u_xlat9;
    u_xlat12.x = (x_584 / x_585);
    let x_589 : f32 = u_xlat12.y;
    u_xlat22 = (1.0f / x_589);
    let x_592 : f32 = u_xlat12.x;
    let x_593 : f32 = u_xlat22;
    u_xlat12.x = ((x_592 * x_593) + -1.0f);
    let x_597 : vec4<f32> = u_xlat3;
    let x_599 : vec3<f32> = u_xlat12;
    let x_602 : vec4<f32> = u_xlat7;
    let x_604 : vec2<f32> = ((vec2<f32>(x_597.x, x_597.y) * vec2<f32>(x_599.x, x_599.x)) + vec2<f32>(x_602.x, x_602.y));
    let x_605 : vec3<f32> = u_xlat12;
    u_xlat12 = vec3<f32>(x_604.x, x_604.y, x_605.z);
  } else {
    let x_609 : f32 = u_xlat1.x;
    u_xlat32 = (1.0f / x_609);
    let x_611 : f32 = u_xlat32;
    let x_613 : f32 = x_26.x_Distortion_Amount.x;
    u_xlat32 = (x_611 * x_613);
    let x_616 : f32 = u_xlat1.x;
    let x_618 : f32 = x_26.x_Distortion_Amount.y;
    u_xlat1.x = (x_616 * x_618);
    let x_622 : f32 = u_xlat1.x;
    u_xlat8.x = min(abs(x_622), 1.0f);
    let x_628 : f32 = u_xlat1.x;
    u_xlat18 = max(abs(x_628), 1.0f);
    let x_631 : f32 = u_xlat18;
    u_xlat18 = (1.0f / x_631);
    let x_633 : f32 = u_xlat18;
    let x_635 : f32 = u_xlat8.x;
    u_xlat8.x = (x_633 * x_635);
    let x_639 : f32 = u_xlat8.x;
    let x_641 : f32 = u_xlat8.x;
    u_xlat18 = (x_639 * x_641);
    let x_644 : f32 = u_xlat18;
    u_xlat28 = ((x_644 * 0.0208351f) + -0.085133001f);
    let x_647 : f32 = u_xlat18;
    let x_648 : f32 = u_xlat28;
    u_xlat28 = ((x_647 * x_648) + 0.180141002f);
    let x_651 : f32 = u_xlat18;
    let x_652 : f32 = u_xlat28;
    u_xlat28 = ((x_651 * x_652) + -0.330299497f);
    let x_655 : f32 = u_xlat18;
    let x_656 : f32 = u_xlat28;
    u_xlat18 = ((x_655 * x_656) + 0.999866009f);
    let x_659 : f32 = u_xlat18;
    let x_661 : f32 = u_xlat8.x;
    u_xlat28 = (x_659 * x_661);
    let x_665 : f32 = u_xlat1.x;
    u_xlatb38 = (1.0f < abs(x_665));
    let x_668 : f32 = u_xlat28;
    u_xlat28 = ((x_668 * -2.0f) + 1.570796371f);
    let x_671 : bool = u_xlatb38;
    let x_672 : f32 = u_xlat28;
    u_xlat28 = select(0.0f, x_672, x_671);
    let x_675 : f32 = u_xlat8.x;
    let x_676 : f32 = u_xlat18;
    let x_678 : f32 = u_xlat28;
    u_xlat8.x = ((x_675 * x_676) + x_678);
    let x_682 : f32 = u_xlat1.x;
    u_xlat1.x = min(x_682, 1.0f);
    let x_686 : f32 = u_xlat1.x;
    let x_688 : f32 = u_xlat1.x;
    u_xlatb1 = (x_686 < -(x_688));
    let x_691 : bool = u_xlatb1;
    if (x_691) {
      let x_696 : f32 = u_xlat8.x;
      x_692 = -(x_696);
    } else {
      let x_700 : f32 = u_xlat8.x;
      x_692 = x_700;
    }
    let x_701 : f32 = x_692;
    u_xlat1.x = x_701;
    let x_703 : f32 = u_xlat32;
    let x_705 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_703 * x_705) + -1.0f);
    let x_709 : vec4<f32> = u_xlat3;
    let x_711 : vec3<f32> = u_xlat1;
    let x_714 : vec4<f32> = u_xlat7;
    let x_716 : vec2<f32> = ((vec2<f32>(x_709.x, x_709.y) * vec2<f32>(x_711.x, x_711.x)) + vec2<f32>(x_714.x, x_714.y));
    let x_717 : vec3<f32> = u_xlat12;
    u_xlat12 = vec3<f32>(x_716.x, x_716.y, x_717.z);
  }
  let x_719 : vec3<f32> = u_xlat12;
  let x_720 : vec2<f32> = vec2<f32>(x_719.x, x_719.y);
  let x_721 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_720.x, x_720.y, x_721.z);
  let x_723 : vec3<f32> = u_xlat12;
  let x_727 : vec2<f32> = clamp(vec2<f32>(x_723.x, x_723.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_728 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_727.x, x_727.y, x_728.z);
  let x_730 : vec3<f32> = u_xlat12;
  let x_733 : f32 = x_26.x_RenderViewportScaleFactor;
  let x_735 : vec2<f32> = (vec2<f32>(x_730.x, x_730.y) * vec2<f32>(x_733, x_733));
  let x_736 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_735.x, x_735.y, x_736.z);
  let x_741 : vec3<f32> = u_xlat12;
  let x_743 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_741.x, x_741.y), 0.0f);
  u_xlat8 = x_743;
  let x_744 : vec4<f32> = u_xlat3;
  let x_746 : vec4<f32> = u_xlat3;
  u_xlat1.x = dot(vec2<f32>(x_744.z, x_744.w), vec2<f32>(x_746.z, x_746.w));
  let x_751 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_751);
  let x_754 : bool = u_xlatb11;
  if (x_754) {
    let x_757 : vec3<f32> = u_xlat1;
    let x_760 : vec4<f32> = x_26.x_Distortion_Amount;
    let x_762 : vec2<f32> = (vec2<f32>(x_757.x, x_757.x) * vec2<f32>(x_760.x, x_760.y));
    let x_763 : vec3<f32> = u_xlat12;
    u_xlat12 = vec3<f32>(x_762.x, x_762.y, x_763.z);
    let x_766 : f32 = u_xlat12.x;
    u_xlat3.x = sin(x_766);
    let x_770 : f32 = u_xlat12.x;
    u_xlat7.x = cos(x_770);
    let x_775 : f32 = u_xlat3.x;
    let x_777 : f32 = u_xlat7.x;
    u_xlat11.x = (x_775 / x_777);
    let x_781 : f32 = u_xlat12.y;
    u_xlat12.x = (1.0f / x_781);
    let x_785 : f32 = u_xlat11.x;
    let x_787 : f32 = u_xlat12.x;
    u_xlat11.x = ((x_785 * x_787) + -1.0f);
    let x_791 : vec4<f32> = u_xlat3;
    let x_793 : vec3<f32> = u_xlat11;
    let x_796 : vec4<f32> = u_xlat7;
    let x_798 : vec2<f32> = ((vec2<f32>(x_791.z, x_791.w) * vec2<f32>(x_793.x, x_793.x)) + vec2<f32>(x_796.z, x_796.w));
    let x_799 : vec3<f32> = u_xlat12;
    u_xlat12 = vec3<f32>(x_798.x, x_798.y, x_799.z);
  } else {
    let x_803 : f32 = u_xlat1.x;
    u_xlat11.x = (1.0f / x_803);
    let x_807 : f32 = u_xlat11.x;
    let x_809 : f32 = x_26.x_Distortion_Amount.x;
    u_xlat11.x = (x_807 * x_809);
    let x_813 : f32 = u_xlat1.x;
    let x_815 : f32 = x_26.x_Distortion_Amount.y;
    u_xlat1.x = (x_813 * x_815);
    let x_819 : f32 = u_xlat1.x;
    u_xlat32 = min(abs(x_819), 1.0f);
    let x_823 : f32 = u_xlat1.x;
    u_xlat3.x = max(abs(x_823), 1.0f);
    let x_828 : f32 = u_xlat3.x;
    u_xlat3.x = (1.0f / x_828);
    let x_831 : f32 = u_xlat32;
    let x_833 : f32 = u_xlat3.x;
    u_xlat32 = (x_831 * x_833);
    let x_835 : f32 = u_xlat32;
    let x_836 : f32 = u_xlat32;
    u_xlat3.x = (x_835 * x_836);
    let x_841 : f32 = u_xlat3.x;
    u_xlat13 = ((x_841 * 0.0208351f) + -0.085133001f);
    let x_845 : f32 = u_xlat3.x;
    let x_846 : f32 = u_xlat13;
    u_xlat13 = ((x_845 * x_846) + 0.180141002f);
    let x_850 : f32 = u_xlat3.x;
    let x_851 : f32 = u_xlat13;
    u_xlat13 = ((x_850 * x_851) + -0.330299497f);
    let x_855 : f32 = u_xlat3.x;
    let x_856 : f32 = u_xlat13;
    u_xlat3.x = ((x_855 * x_856) + 0.999866009f);
    let x_860 : f32 = u_xlat32;
    let x_862 : f32 = u_xlat3.x;
    u_xlat13 = (x_860 * x_862);
    let x_866 : f32 = u_xlat1.x;
    u_xlatb7 = (1.0f < abs(x_866));
    let x_869 : f32 = u_xlat13;
    u_xlat13 = ((x_869 * -2.0f) + 1.570796371f);
    let x_872 : bool = u_xlatb7;
    let x_873 : f32 = u_xlat13;
    u_xlat13 = select(0.0f, x_873, x_872);
    let x_875 : f32 = u_xlat32;
    let x_877 : f32 = u_xlat3.x;
    let x_879 : f32 = u_xlat13;
    u_xlat32 = ((x_875 * x_877) + x_879);
    let x_882 : f32 = u_xlat1.x;
    u_xlat1.x = min(x_882, 1.0f);
    let x_886 : f32 = u_xlat1.x;
    let x_888 : f32 = u_xlat1.x;
    u_xlatb1 = (x_886 < -(x_888));
    let x_891 : bool = u_xlatb1;
    if (x_891) {
      let x_895 : f32 = u_xlat32;
      x_892 = -(x_895);
    } else {
      let x_898 : f32 = u_xlat32;
      x_892 = x_898;
    }
    let x_899 : f32 = x_892;
    u_xlat1.x = x_899;
    let x_902 : f32 = u_xlat11.x;
    let x_904 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_902 * x_904) + -1.0f);
    let x_908 : vec4<f32> = u_xlat3;
    let x_910 : vec3<f32> = u_xlat1;
    let x_913 : vec4<f32> = u_xlat7;
    let x_915 : vec2<f32> = ((vec2<f32>(x_908.z, x_908.w) * vec2<f32>(x_910.x, x_910.x)) + vec2<f32>(x_913.z, x_913.w));
    let x_916 : vec3<f32> = u_xlat12;
    u_xlat12 = vec3<f32>(x_915.x, x_915.y, x_916.z);
  }
  let x_918 : vec3<f32> = u_xlat12;
  let x_919 : vec2<f32> = vec2<f32>(x_918.x, x_918.y);
  let x_920 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_919.x, x_919.y, x_920.z);
  let x_922 : vec3<f32> = u_xlat12;
  let x_926 : vec2<f32> = clamp(vec2<f32>(x_922.x, x_922.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_927 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_926.x, x_926.y, x_927.z);
  let x_929 : vec3<f32> = u_xlat12;
  let x_932 : f32 = x_26.x_RenderViewportScaleFactor;
  let x_934 : vec2<f32> = (vec2<f32>(x_929.x, x_929.y) * vec2<f32>(x_932, x_932));
  let x_935 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_934.x, x_934.y, x_935.z);
  let x_940 : vec3<f32> = u_xlat1;
  let x_942 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_940.x, x_940.y), 0.0f);
  u_xlat3 = x_942;
  u_xlat4.w = 1.0f;
  u_xlat5.w = 1.0f;
  let x_945 : vec4<f32> = u_xlat5;
  let x_946 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_945 * x_946);
  let x_948 : vec4<f32> = u_xlat0;
  let x_949 : vec4<f32> = u_xlat4;
  let x_951 : vec4<f32> = u_xlat7;
  u_xlat0 = ((x_948 * x_949) + x_951);
  u_xlat6.w = 1.0f;
  let x_954 : vec4<f32> = u_xlat3;
  let x_955 : vec4<f32> = u_xlat6;
  let x_957 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_954 * x_955) + x_957);
  let x_959 : vec4<f32> = u_xlat4;
  let x_961 : vec4<f32> = u_xlat5;
  u_xlat12 = (vec3<f32>(x_959.x, x_959.y, x_959.z) + vec3<f32>(x_961.x, x_961.y, x_961.z));
  let x_964 : vec4<f32> = u_xlat6;
  let x_966 : vec3<f32> = u_xlat12;
  let x_967 : vec3<f32> = (vec3<f32>(x_964.x, x_964.y, x_964.z) + x_966);
  let x_968 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_967.x, x_967.y, x_967.z, x_968.w);
  u_xlat3.w = 3.0f;
  let x_972 : vec4<f32> = u_xlat0;
  let x_973 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_972 / x_973);
  let x_975 : vec4<f32> = u_xlat2;
  let x_977 : vec4<f32> = u_xlat0;
  let x_979 : vec3<f32> = (vec3<f32>(x_975.x, x_975.x, x_975.x) * vec3<f32>(x_977.x, x_977.y, x_977.z));
  let x_980 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_979.x, x_979.y, x_979.z, x_980.w);
  let x_984 : f32 = x_26.x_Vignette_Mode;
  u_xlatb1 = (x_984 < 0.5f);
  let x_986 : bool = u_xlatb1;
  if (x_986) {
    let x_989 : vec2<f32> = u_xlat21;
    let x_993 : vec2<f32> = x_26.x_Vignette_Center;
    let x_995 : vec2<f32> = (x_989 + -(x_993));
    let x_996 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_995.x, x_995.y, x_996.z);
    let x_998 : vec3<f32> = u_xlat1;
    let x_1003 : vec4<f32> = x_26.x_Vignette_Settings;
    let x_1005 : vec2<f32> = (abs(vec2<f32>(x_998.y, x_998.x)) * vec2<f32>(x_1003.x, x_1003.x));
    let x_1006 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1006.x, x_1005.x, x_1005.y, x_1006.w);
    let x_1010 : f32 = x_26.x_ScreenParams.x;
    let x_1012 : f32 = x_26.x_ScreenParams.y;
    u_xlat1.x = (x_1010 / x_1012);
    let x_1016 : f32 = u_xlat1.x;
    u_xlat1.x = (x_1016 + -1.0f);
    let x_1020 : f32 = x_26.x_Vignette_Settings.w;
    let x_1022 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_1020 * x_1022) + 1.0f);
    let x_1027 : f32 = u_xlat1.x;
    let x_1030 : f32 = u_xlat2.z;
    u_xlat2.x = (x_1027 * x_1030);
    let x_1033 : vec4<f32> = u_xlat2;
    let x_1034 : vec2<f32> = vec2<f32>(x_1033.x, x_1033.y);
    let x_1035 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1034.x, x_1034.y, x_1035.z, x_1035.w);
    let x_1037 : vec4<f32> = u_xlat2;
    let x_1041 : vec2<f32> = clamp(vec2<f32>(x_1037.x, x_1037.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_1042 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1041.x, x_1041.y, x_1042.z, x_1042.w);
    let x_1044 : vec4<f32> = u_xlat2;
    let x_1046 : vec2<f32> = log2(vec2<f32>(x_1044.x, x_1044.y));
    let x_1047 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_1046.x, x_1046.y, x_1047.z);
    let x_1049 : vec3<f32> = u_xlat1;
    let x_1052 : vec4<f32> = x_26.x_Vignette_Settings;
    let x_1054 : vec2<f32> = (vec2<f32>(x_1049.x, x_1049.y) * vec2<f32>(x_1052.z, x_1052.z));
    let x_1055 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_1054.x, x_1054.y, x_1055.z);
    let x_1057 : vec3<f32> = u_xlat1;
    let x_1059 : vec2<f32> = exp2(vec2<f32>(x_1057.x, x_1057.y));
    let x_1060 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_1059.x, x_1059.y, x_1060.z);
    let x_1062 : vec3<f32> = u_xlat1;
    let x_1064 : vec3<f32> = u_xlat1;
    u_xlat1.x = dot(vec2<f32>(x_1062.x, x_1062.y), vec2<f32>(x_1064.x, x_1064.y));
    let x_1069 : f32 = u_xlat1.x;
    u_xlat1.x = (-(x_1069) + 1.0f);
    let x_1074 : f32 = u_xlat1.x;
    u_xlat1.x = max(x_1074, 0.0f);
    let x_1078 : f32 = u_xlat1.x;
    u_xlat1.x = log2(x_1078);
    let x_1082 : f32 = u_xlat1.x;
    let x_1084 : f32 = x_26.x_Vignette_Settings.y;
    u_xlat1.x = (x_1082 * x_1084);
    let x_1088 : f32 = u_xlat1.x;
    u_xlat1.x = exp2(x_1088);
    let x_1094 : vec3<f32> = x_26.x_Vignette_Color;
    let x_1097 : vec3<f32> = (-(x_1094) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_1098 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1097.x, x_1097.y, x_1097.z, x_1098.w);
    let x_1100 : vec3<f32> = u_xlat1;
    let x_1102 : vec4<f32> = u_xlat2;
    let x_1106 : vec3<f32> = x_26.x_Vignette_Color;
    let x_1107 : vec3<f32> = ((vec3<f32>(x_1100.x, x_1100.x, x_1100.x) * vec3<f32>(x_1102.x, x_1102.y, x_1102.z)) + x_1106);
    let x_1108 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1107.x, x_1107.y, x_1107.z, x_1108.w);
    let x_1110 : vec4<f32> = u_xlat0;
    let x_1112 : vec4<f32> = u_xlat2;
    let x_1114 : vec3<f32> = (vec3<f32>(x_1110.x, x_1110.y, x_1110.z) * vec3<f32>(x_1112.x, x_1112.y, x_1112.z));
    let x_1115 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1114.x, x_1114.y, x_1114.z, x_1115.w);
    let x_1118 : f32 = u_xlat0.w;
    u_xlat11.x = (x_1118 + -1.0f);
    let x_1122 : f32 = u_xlat1.x;
    let x_1124 : f32 = u_xlat11.x;
    u_xlat2.w = ((x_1122 * x_1124) + 1.0f);
  } else {
    let x_1134 : vec2<f32> = u_xlat21;
    let x_1135 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_1134);
    u_xlat1.x = x_1135.w;
    let x_1139 : f32 = u_xlat1.x;
    u_xlat1.z = (x_1139 + 0.055f);
    let x_1143 : vec3<f32> = u_xlat1;
    let x_1148 : vec2<f32> = (vec2<f32>(x_1143.x, x_1143.z) * vec2<f32>(0.077399381f, 0.947867334f));
    let x_1149 : vec3<f32> = u_xlat11;
    u_xlat11 = vec3<f32>(x_1148.x, x_1148.y, x_1149.z);
    let x_1152 : f32 = u_xlat11.y;
    u_xlat21.x = max(abs(x_1152), 1.1920929e-07f);
    let x_1158 : f32 = u_xlat21.x;
    u_xlat21.x = log2(x_1158);
    let x_1162 : f32 = u_xlat21.x;
    u_xlat21.x = (x_1162 * 2.400000095f);
    let x_1167 : f32 = u_xlat21.x;
    u_xlat21.x = exp2(x_1167);
    let x_1172 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_1172);
    let x_1174 : bool = u_xlatb1;
    if (x_1174) {
      let x_1179 : f32 = u_xlat11.x;
      x_1175 = x_1179;
    } else {
      let x_1182 : f32 = u_xlat21.x;
      x_1175 = x_1182;
    }
    let x_1183 : f32 = x_1175;
    u_xlat1.x = x_1183;
    let x_1186 : vec3<f32> = x_26.x_Vignette_Color;
    u_xlat11 = (-(x_1186) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_1189 : vec3<f32> = u_xlat1;
    let x_1191 : vec3<f32> = u_xlat11;
    let x_1194 : vec3<f32> = x_26.x_Vignette_Color;
    u_xlat11 = ((vec3<f32>(x_1189.x, x_1189.x, x_1189.x) * x_1191) + x_1194);
    let x_1196 : vec4<f32> = u_xlat0;
    let x_1198 : vec3<f32> = u_xlat11;
    let x_1200 : vec4<f32> = u_xlat0;
    u_xlat11 = ((vec3<f32>(x_1196.x, x_1196.y, x_1196.z) * x_1198) + -(vec3<f32>(x_1200.x, x_1200.y, x_1200.z)));
    let x_1206 : f32 = x_26.x_Vignette_Opacity;
    let x_1208 : vec3<f32> = u_xlat11;
    let x_1210 : vec4<f32> = u_xlat0;
    let x_1212 : vec3<f32> = ((vec3<f32>(x_1206, x_1206, x_1206) * x_1208) + vec3<f32>(x_1210.x, x_1210.y, x_1210.z));
    let x_1213 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1212.x, x_1212.y, x_1212.z, x_1213.w);
    let x_1216 : f32 = u_xlat0.w;
    u_xlat0.x = (x_1216 + -1.0f);
    let x_1220 : f32 = u_xlat1.x;
    let x_1222 : f32 = u_xlat0.x;
    u_xlat2.w = ((x_1220 * x_1222) + 1.0f);
  }
  let x_1226 : vec4<f32> = u_xlat2;
  u_xlat2 = x_1226;
  let x_1227 : vec4<f32> = u_xlat2;
  u_xlat2 = clamp(x_1227, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_1231 : vec4<f32> = u_xlat2;
  let x_1235 : vec3<f32> = (vec3<f32>(x_1231.z, x_1231.x, x_1231.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1236 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1235.x, x_1235.y, x_1235.z, x_1236.w);
  let x_1238 : vec4<f32> = u_xlat2;
  u_xlat1 = max(vec3<f32>(x_1238.z, x_1238.x, x_1238.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1242 : vec3<f32> = u_xlat1;
  u_xlat1 = log2(x_1242);
  let x_1244 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_1244 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1248 : vec3<f32> = u_xlat1;
  u_xlat1 = exp2(x_1248);
  let x_1250 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_1250 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1262 : vec4<f32> = u_xlat2;
  let x_1265 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1262.z, x_1262.x, x_1262.y, x_1262.z));
  u_xlatb2 = vec3<bool>(x_1265.x, x_1265.y, x_1265.z);
  let x_1268 : vec4<f32> = u_xlat0;
  hlslcc_movcTemp = x_1268;
  let x_1270 : bool = u_xlatb2.x;
  if (x_1270) {
    let x_1275 : f32 = u_xlat0.x;
    x_1271 = x_1275;
  } else {
    let x_1278 : f32 = u_xlat1.x;
    x_1271 = x_1278;
  }
  let x_1279 : f32 = x_1271;
  hlslcc_movcTemp.x = x_1279;
  let x_1282 : bool = u_xlatb2.y;
  if (x_1282) {
    let x_1287 : f32 = u_xlat0.y;
    x_1283 = x_1287;
  } else {
    let x_1290 : f32 = u_xlat1.y;
    x_1283 = x_1290;
  }
  let x_1291 : f32 = x_1283;
  hlslcc_movcTemp.y = x_1291;
  let x_1294 : bool = u_xlatb2.z;
  if (x_1294) {
    let x_1299 : f32 = u_xlat0.z;
    x_1295 = x_1299;
  } else {
    let x_1302 : f32 = u_xlat1.z;
    x_1295 = x_1302;
  }
  let x_1303 : f32 = x_1295;
  hlslcc_movcTemp.z = x_1303;
  let x_1305 : vec4<f32> = hlslcc_movcTemp;
  u_xlat0 = x_1305;
  let x_1307 : vec4<f32> = u_xlat0;
  let x_1311 : vec3<f32> = x_26.x_Lut2D_Params;
  u_xlat10 = (vec3<f32>(x_1307.x, x_1307.y, x_1307.z) * vec3<f32>(x_1311.z, x_1311.z, x_1311.z));
  let x_1315 : f32 = u_xlat10.x;
  u_xlat10.x = floor(x_1315);
  let x_1319 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_1321 : vec2<f32> = (vec2<f32>(x_1319.x, x_1319.y) * vec2<f32>(0.5f, 0.5f));
  let x_1322 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1321.x, x_1321.y, x_1322.z);
  let x_1324 : vec3<f32> = u_xlat10;
  let x_1327 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_1330 : vec3<f32> = u_xlat1;
  let x_1332 : vec2<f32> = ((vec2<f32>(x_1324.y, x_1324.z) * vec2<f32>(x_1327.x, x_1327.y)) + vec2<f32>(x_1330.x, x_1330.y));
  let x_1333 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1333.x, x_1332.x, x_1332.y);
  let x_1336 : f32 = u_xlat10.x;
  let x_1338 : f32 = x_26.x_Lut2D_Params.y;
  let x_1341 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_1336 * x_1338) + x_1341);
  let x_1349 : vec3<f32> = u_xlat1;
  let x_1351 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_1349.x, x_1349.z));
  let x_1352 : vec3<f32> = vec3<f32>(x_1351.x, x_1351.y, x_1351.z);
  let x_1353 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1352.x, x_1352.y, x_1352.z, x_1353.w);
  let x_1356 : f32 = x_26.x_Lut2D_Params.y;
  u_xlat3.x = x_1356;
  u_xlat3.y = 0.0f;
  let x_1359 : vec3<f32> = u_xlat1;
  let x_1361 : vec4<f32> = u_xlat3;
  u_xlat20 = (vec2<f32>(x_1359.x, x_1359.z) + vec2<f32>(x_1361.x, x_1361.y));
  let x_1367 : vec2<f32> = u_xlat20;
  let x_1368 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_1367);
  u_xlat1 = vec3<f32>(x_1368.x, x_1368.y, x_1368.z);
  let x_1371 : f32 = u_xlat0.x;
  let x_1373 : f32 = x_26.x_Lut2D_Params.z;
  let x_1376 : f32 = u_xlat10.x;
  u_xlat0.x = ((x_1371 * x_1373) + -(x_1376));
  let x_1380 : vec4<f32> = u_xlat2;
  let x_1383 : vec3<f32> = u_xlat1;
  u_xlat10 = (-(vec3<f32>(x_1380.x, x_1380.y, x_1380.z)) + x_1383);
  let x_1385 : vec4<f32> = u_xlat0;
  let x_1387 : vec3<f32> = u_xlat10;
  let x_1389 : vec4<f32> = u_xlat2;
  let x_1391 : vec3<f32> = ((vec3<f32>(x_1385.x, x_1385.x, x_1385.x) * x_1387) + vec3<f32>(x_1389.x, x_1389.y, x_1389.z));
  let x_1392 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1391.x, x_1391.y, x_1391.z, x_1392.w);
  let x_1394 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_1394.x, x_1394.y, x_1394.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1398 : vec4<f32> = u_xlat0;
  let x_1401 : vec3<f32> = (vec3<f32>(x_1398.x, x_1398.y, x_1398.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1402 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1401.x, x_1401.y, x_1401.z, x_1402.w);
  let x_1404 : vec4<f32> = u_xlat2;
  let x_1407 : vec3<f32> = (vec3<f32>(x_1404.x, x_1404.y, x_1404.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1408 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1407.x, x_1407.y, x_1407.z, x_1408.w);
  let x_1410 : vec4<f32> = u_xlat2;
  let x_1413 : vec3<f32> = max(abs(vec3<f32>(x_1410.x, x_1410.y, x_1410.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1414 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1413.x, x_1413.y, x_1413.z, x_1414.w);
  let x_1416 : vec4<f32> = u_xlat2;
  let x_1418 : vec3<f32> = log2(vec3<f32>(x_1416.x, x_1416.y, x_1416.z));
  let x_1419 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1418.x, x_1418.y, x_1418.z, x_1419.w);
  let x_1421 : vec4<f32> = u_xlat2;
  let x_1424 : vec3<f32> = (vec3<f32>(x_1421.x, x_1421.y, x_1421.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1425 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1424.x, x_1424.y, x_1424.z, x_1425.w);
  let x_1427 : vec4<f32> = u_xlat2;
  let x_1429 : vec3<f32> = exp2(vec3<f32>(x_1427.x, x_1427.y, x_1427.z));
  let x_1430 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1429.x, x_1429.y, x_1429.z, x_1430.w);
  let x_1434 : vec4<f32> = u_xlat0;
  let x_1436 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1434.x, x_1434.y, x_1434.z, x_1434.x));
  u_xlatb0 = vec3<bool>(x_1436.x, x_1436.y, x_1436.z);
  let x_1439 : bool = u_xlatb0.x;
  if (x_1439) {
    let x_1444 : f32 = u_xlat1.x;
    x_1440 = x_1444;
  } else {
    let x_1447 : f32 = u_xlat2.x;
    x_1440 = x_1447;
  }
  let x_1448 : f32 = x_1440;
  u_xlat0.x = x_1448;
  let x_1451 : bool = u_xlatb0.y;
  if (x_1451) {
    let x_1456 : f32 = u_xlat1.y;
    x_1452 = x_1456;
  } else {
    let x_1459 : f32 = u_xlat2.y;
    x_1452 = x_1459;
  }
  let x_1460 : f32 = x_1452;
  u_xlat0.y = x_1460;
  let x_1463 : bool = u_xlatb0.z;
  if (x_1463) {
    let x_1468 : f32 = u_xlat1.z;
    x_1464 = x_1468;
  } else {
    let x_1471 : f32 = u_xlat2.z;
    x_1464 = x_1471;
  }
  let x_1472 : f32 = x_1464;
  u_xlat0.z = x_1472;
  let x_1474 : vec2<f32> = vs_TEXCOORD0;
  let x_1477 : vec4<f32> = x_26.x_Dithering_Coords;
  let x_1481 : vec4<f32> = x_26.x_Dithering_Coords;
  let x_1483 : vec2<f32> = ((x_1474 * vec2<f32>(x_1477.x, x_1477.y)) + vec2<f32>(x_1481.z, x_1481.w));
  let x_1484 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1483.x, x_1483.y, x_1484.z);
  let x_1492 : vec3<f32> = u_xlat1;
  let x_1494 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_1492.x, x_1492.y));
  u_xlat30 = x_1494.w;
  let x_1496 : f32 = u_xlat30;
  u_xlat30 = ((x_1496 * 2.0f) + -1.0f);
  let x_1499 : f32 = u_xlat30;
  u_xlat1.x = ((x_1499 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_1505 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1505, 0.0f, 1.0f);
  let x_1509 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1509 * 2.0f) + -1.0f);
  let x_1513 : f32 = u_xlat30;
  u_xlat30 = (-(abs(x_1513)) + 1.0f);
  let x_1517 : f32 = u_xlat30;
  u_xlat30 = sqrt(x_1517);
  let x_1519 : f32 = u_xlat30;
  u_xlat30 = (-(x_1519) + 1.0f);
  let x_1522 : f32 = u_xlat30;
  let x_1524 : f32 = u_xlat1.x;
  u_xlat30 = (x_1522 * x_1524);
  let x_1526 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_1526.x, x_1526.y, x_1526.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1529 : vec4<f32> = u_xlat0;
  let x_1532 : vec3<f32> = max(abs(vec3<f32>(x_1529.x, x_1529.y, x_1529.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1533 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1532.x, x_1532.y, x_1532.z, x_1533.w);
  let x_1535 : vec4<f32> = u_xlat2;
  let x_1537 : vec3<f32> = log2(vec3<f32>(x_1535.x, x_1535.y, x_1535.z));
  let x_1538 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1537.x, x_1537.y, x_1537.z, x_1538.w);
  let x_1540 : vec4<f32> = u_xlat2;
  let x_1542 : vec3<f32> = (vec3<f32>(x_1540.x, x_1540.y, x_1540.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1543 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1542.x, x_1542.y, x_1542.z, x_1543.w);
  let x_1545 : vec4<f32> = u_xlat2;
  let x_1547 : vec3<f32> = exp2(vec3<f32>(x_1545.x, x_1545.y, x_1545.z));
  let x_1548 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1547.x, x_1547.y, x_1547.z, x_1548.w);
  let x_1550 : vec4<f32> = u_xlat2;
  let x_1553 : vec3<f32> = ((vec3<f32>(x_1550.x, x_1550.y, x_1550.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1554 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1553.x, x_1553.y, x_1553.z, x_1554.w);
  let x_1556 : vec4<f32> = u_xlat0;
  let x_1558 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1556.x, x_1556.y, x_1556.z, x_1556.x));
  u_xlatb0 = vec3<bool>(x_1558.x, x_1558.y, x_1558.z);
  let x_1561 : bool = u_xlatb0.x;
  if (x_1561) {
    let x_1566 : f32 = u_xlat1.x;
    x_1562 = x_1566;
  } else {
    let x_1569 : f32 = u_xlat2.x;
    x_1562 = x_1569;
  }
  let x_1570 : f32 = x_1562;
  u_xlat0.x = x_1570;
  let x_1573 : bool = u_xlatb0.y;
  if (x_1573) {
    let x_1578 : f32 = u_xlat1.y;
    x_1574 = x_1578;
  } else {
    let x_1581 : f32 = u_xlat2.y;
    x_1574 = x_1581;
  }
  let x_1582 : f32 = x_1574;
  u_xlat0.y = x_1582;
  let x_1585 : bool = u_xlatb0.z;
  if (x_1585) {
    let x_1590 : f32 = u_xlat1.z;
    x_1586 = x_1590;
  } else {
    let x_1593 : f32 = u_xlat2.z;
    x_1586 = x_1593;
  }
  let x_1594 : f32 = x_1586;
  u_xlat0.z = x_1594;
  let x_1596 : f32 = u_xlat30;
  let x_1601 : vec4<f32> = u_xlat0;
  let x_1603 : vec3<f32> = ((vec3<f32>(x_1596, x_1596, x_1596) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_1601.x, x_1601.y, x_1601.z));
  let x_1604 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1603.x, x_1603.y, x_1603.z, x_1604.w);
  let x_1606 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_1606.x, x_1606.y, x_1606.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1609 : vec4<f32> = u_xlat0;
  let x_1611 : vec3<f32> = (vec3<f32>(x_1609.x, x_1609.y, x_1609.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1612 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1611.x, x_1611.y, x_1611.z, x_1612.w);
  let x_1614 : vec4<f32> = u_xlat2;
  let x_1616 : vec3<f32> = (vec3<f32>(x_1614.x, x_1614.y, x_1614.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1617 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1616.x, x_1616.y, x_1616.z, x_1617.w);
  let x_1619 : vec4<f32> = u_xlat2;
  let x_1622 : vec3<f32> = max(abs(vec3<f32>(x_1619.x, x_1619.y, x_1619.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1623 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1622.x, x_1622.y, x_1622.z, x_1623.w);
  let x_1625 : vec4<f32> = u_xlat2;
  let x_1627 : vec3<f32> = log2(vec3<f32>(x_1625.x, x_1625.y, x_1625.z));
  let x_1628 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1627.x, x_1627.y, x_1627.z, x_1628.w);
  let x_1630 : vec4<f32> = u_xlat2;
  let x_1632 : vec3<f32> = (vec3<f32>(x_1630.x, x_1630.y, x_1630.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1633 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1632.x, x_1632.y, x_1632.z, x_1633.w);
  let x_1635 : vec4<f32> = u_xlat2;
  let x_1637 : vec3<f32> = exp2(vec3<f32>(x_1635.x, x_1635.y, x_1635.z));
  let x_1638 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1637.x, x_1637.y, x_1637.z, x_1638.w);
  let x_1640 : vec4<f32> = u_xlat0;
  let x_1642 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1640.x, x_1640.y, x_1640.z, x_1640.x));
  u_xlatb0 = vec3<bool>(x_1642.x, x_1642.y, x_1642.z);
  let x_1647 : bool = u_xlatb0.x;
  if (x_1647) {
    let x_1652 : f32 = u_xlat1.x;
    x_1648 = x_1652;
  } else {
    let x_1655 : f32 = u_xlat2.x;
    x_1648 = x_1655;
  }
  let x_1656 : f32 = x_1648;
  SV_Target0.x = x_1656;
  let x_1660 : bool = u_xlatb0.y;
  if (x_1660) {
    let x_1665 : f32 = u_xlat1.y;
    x_1661 = x_1665;
  } else {
    let x_1668 : f32 = u_xlat2.y;
    x_1661 = x_1668;
  }
  let x_1669 : f32 = x_1661;
  SV_Target0.y = x_1669;
  let x_1672 : bool = u_xlatb0.z;
  if (x_1672) {
    let x_1677 : f32 = u_xlat1.z;
    x_1673 = x_1677;
  } else {
    let x_1680 : f32 = u_xlat2.z;
    x_1673 = x_1680;
  }
  let x_1681 : f32 = x_1673;
  SV_Target0.z = x_1681;
  let x_1684 : f32 = u_xlat2.w;
  SV_Target0.w = x_1684;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}
