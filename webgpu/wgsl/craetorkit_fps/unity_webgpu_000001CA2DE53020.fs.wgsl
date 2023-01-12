struct PGlobals {
  x_ScreenParams : vec4<f32>,
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_Distortion_Amount : vec4<f32>,
  x_Distortion_CenterScale : vec4<f32>,
  x_Dithering_Coords : vec4<f32>,
  x_BloomTex_TexelSize : vec4<f32>,
  x_Bloom_DirtTileOffset : vec4<f32>,
  x_Bloom_Settings : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_Bloom_Color : vec3<f32>,
  x_ChromaticAberration_Amount : f32,
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
  x_Grain_Params1 : vec2<f32>,
  x_Grain_Params2 : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_26 : PGlobals;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_AutoExposureTex : sampler;

@group(0) @binding(5) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(14) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainTex : sampler;

@group(0) @binding(3) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_BloomTex : sampler;

@group(0) @binding(4) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(13) var sampler_Bloom_DirtTex : sampler;

@group(0) @binding(7) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(16) var sampler_Vignette_Mask : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(8) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(17) var sampler_GrainTex : sampler;

@group(0) @binding(6) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(15) var sampler_Lut2D : sampler;

@group(0) @binding(0) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_DitheringTex : sampler;

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
  var x_1319 : f32;
  var u_xlat30 : f32;
  var u_xlatb2 : vec3<bool>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_1490 : f32;
  var x_1502 : f32;
  var x_1514 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlatb0 : vec3<bool>;
  var x_1659 : f32;
  var x_1671 : f32;
  var x_1683 : f32;
  var x_1780 : f32;
  var x_1792 : f32;
  var x_1804 : f32;
  var x_1866 : f32;
  var x_1879 : f32;
  var x_1891 : f32;
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
  let x_984 : vec4<f32> = x_26.x_BloomTex_TexelSize;
  u_xlat2 = (vec4<f32>(x_984.x, x_984.y, x_984.x, x_984.y) * vec4<f32>(-1.0f, -1.0f, 1.0f, 1.0f));
  let x_990 : f32 = x_26.x_Bloom_Settings.x;
  u_xlat1.x = (x_990 * 0.5f);
  let x_993 : vec4<f32> = u_xlat2;
  let x_995 : vec3<f32> = u_xlat1;
  let x_998 : vec2<f32> = u_xlat21;
  u_xlat3 = ((vec4<f32>(x_993.x, x_993.y, x_993.z, x_993.y) * vec4<f32>(x_995.x, x_995.x, x_995.x, x_995.x)) + vec4<f32>(x_998.x, x_998.y, x_998.x, x_998.y));
  let x_1001 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_1001, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_1005 : vec4<f32> = u_xlat3;
  let x_1007 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat3 = (x_1005 * vec4<f32>(x_1007, x_1007, x_1007, x_1007));
  let x_1015 : vec4<f32> = u_xlat3;
  let x_1017 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_1015.x, x_1015.y));
  u_xlat4 = x_1017;
  let x_1021 : vec4<f32> = u_xlat3;
  let x_1023 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_1021.z, x_1021.w));
  u_xlat3 = x_1023;
  let x_1024 : vec4<f32> = u_xlat3;
  let x_1025 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_1024 + x_1025);
  let x_1027 : vec4<f32> = u_xlat2;
  let x_1029 : vec3<f32> = u_xlat1;
  let x_1032 : vec2<f32> = u_xlat21;
  u_xlat2 = ((vec4<f32>(x_1027.x, x_1027.w, x_1027.z, x_1027.w) * vec4<f32>(x_1029.x, x_1029.x, x_1029.x, x_1029.x)) + vec4<f32>(x_1032.x, x_1032.y, x_1032.x, x_1032.y));
  let x_1035 : vec4<f32> = u_xlat2;
  u_xlat2 = clamp(x_1035, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_1039 : vec4<f32> = u_xlat2;
  let x_1041 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat2 = (x_1039 * vec4<f32>(x_1041, x_1041, x_1041, x_1041));
  let x_1047 : vec4<f32> = u_xlat2;
  let x_1049 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_1047.x, x_1047.y));
  u_xlat4 = x_1049;
  let x_1050 : vec4<f32> = u_xlat3;
  let x_1051 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_1050 + x_1051);
  let x_1056 : vec4<f32> = u_xlat2;
  let x_1058 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_1056.z, x_1056.w));
  u_xlat2 = x_1058;
  let x_1059 : vec4<f32> = u_xlat2;
  let x_1060 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_1059 + x_1060);
  let x_1062 : vec4<f32> = u_xlat2;
  let x_1065 : vec3<f32> = x_26.x_Bloom_Settings;
  u_xlat2 = (x_1062 * vec4<f32>(x_1065.y, x_1065.y, x_1065.y, x_1065.y));
  let x_1068 : vec2<f32> = u_xlat21;
  let x_1071 : vec4<f32> = x_26.x_Bloom_DirtTileOffset;
  let x_1075 : vec4<f32> = x_26.x_Bloom_DirtTileOffset;
  let x_1077 : vec2<f32> = ((x_1068 * vec2<f32>(x_1071.x, x_1071.y)) + vec2<f32>(x_1075.z, x_1075.w));
  let x_1078 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1077.x, x_1077.y, x_1078.z);
  let x_1085 : vec3<f32> = u_xlat1;
  let x_1087 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_1085.x, x_1085.y));
  let x_1088 : vec3<f32> = vec3<f32>(x_1087.x, x_1087.y, x_1087.z);
  let x_1089 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1088.x, x_1088.y, x_1088.z, x_1089.w);
  let x_1091 : vec4<f32> = u_xlat2;
  u_xlat4 = (x_1091 * vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
  let x_1095 : vec4<f32> = u_xlat3;
  let x_1098 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_1100 : vec3<f32> = (vec3<f32>(x_1095.x, x_1095.y, x_1095.z) * vec3<f32>(x_1098.z, x_1098.z, x_1098.z));
  let x_1101 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1100.x, x_1100.y, x_1100.z, x_1101.w);
  u_xlat3.w = 0.0f;
  let x_1104 : vec4<f32> = u_xlat2;
  u_xlat2 = (x_1104 * vec4<f32>(0.25f, 0.25f, 0.25f, 1.0f));
  let x_1107 : vec4<f32> = u_xlat2;
  let x_1111 : vec3<f32> = x_26.x_Bloom_Color;
  let x_1112 : vec3<f32> = (vec3<f32>(x_1107.x, x_1107.y, x_1107.z) * x_1111);
  let x_1113 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1112.x, x_1112.y, x_1112.z, x_1113.w);
  let x_1116 : f32 = u_xlat2.w;
  u_xlat5.w = (x_1116 * 0.25f);
  let x_1119 : vec4<f32> = u_xlat0;
  let x_1120 : vec4<f32> = u_xlat5;
  u_xlat0 = (x_1119 + x_1120);
  let x_1122 : vec4<f32> = u_xlat3;
  let x_1123 : vec4<f32> = u_xlat4;
  let x_1125 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_1122 * x_1123) + x_1125);
  let x_1129 : f32 = x_26.x_Vignette_Mode;
  u_xlatb1 = (x_1129 < 0.5f);
  let x_1131 : bool = u_xlatb1;
  if (x_1131) {
    let x_1134 : vec2<f32> = u_xlat21;
    let x_1138 : vec2<f32> = x_26.x_Vignette_Center;
    let x_1140 : vec2<f32> = (x_1134 + -(x_1138));
    let x_1141 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_1140.x, x_1140.y, x_1141.z);
    let x_1143 : vec3<f32> = u_xlat1;
    let x_1148 : vec4<f32> = x_26.x_Vignette_Settings;
    let x_1150 : vec2<f32> = (abs(vec2<f32>(x_1143.y, x_1143.x)) * vec2<f32>(x_1148.x, x_1148.x));
    let x_1151 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1151.x, x_1150.x, x_1150.y, x_1151.w);
    let x_1155 : f32 = x_26.x_ScreenParams.x;
    let x_1157 : f32 = x_26.x_ScreenParams.y;
    u_xlat1.x = (x_1155 / x_1157);
    let x_1161 : f32 = u_xlat1.x;
    u_xlat1.x = (x_1161 + -1.0f);
    let x_1165 : f32 = x_26.x_Vignette_Settings.w;
    let x_1167 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_1165 * x_1167) + 1.0f);
    let x_1172 : f32 = u_xlat1.x;
    let x_1175 : f32 = u_xlat2.z;
    u_xlat2.x = (x_1172 * x_1175);
    let x_1178 : vec4<f32> = u_xlat2;
    let x_1179 : vec2<f32> = vec2<f32>(x_1178.x, x_1178.y);
    let x_1180 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1179.x, x_1179.y, x_1180.z, x_1180.w);
    let x_1182 : vec4<f32> = u_xlat2;
    let x_1186 : vec2<f32> = clamp(vec2<f32>(x_1182.x, x_1182.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_1187 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1186.x, x_1186.y, x_1187.z, x_1187.w);
    let x_1189 : vec4<f32> = u_xlat2;
    let x_1191 : vec2<f32> = log2(vec2<f32>(x_1189.x, x_1189.y));
    let x_1192 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_1191.x, x_1191.y, x_1192.z);
    let x_1194 : vec3<f32> = u_xlat1;
    let x_1197 : vec4<f32> = x_26.x_Vignette_Settings;
    let x_1199 : vec2<f32> = (vec2<f32>(x_1194.x, x_1194.y) * vec2<f32>(x_1197.z, x_1197.z));
    let x_1200 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_1199.x, x_1199.y, x_1200.z);
    let x_1202 : vec3<f32> = u_xlat1;
    let x_1204 : vec2<f32> = exp2(vec2<f32>(x_1202.x, x_1202.y));
    let x_1205 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_1204.x, x_1204.y, x_1205.z);
    let x_1207 : vec3<f32> = u_xlat1;
    let x_1209 : vec3<f32> = u_xlat1;
    u_xlat1.x = dot(vec2<f32>(x_1207.x, x_1207.y), vec2<f32>(x_1209.x, x_1209.y));
    let x_1214 : f32 = u_xlat1.x;
    u_xlat1.x = (-(x_1214) + 1.0f);
    let x_1219 : f32 = u_xlat1.x;
    u_xlat1.x = max(x_1219, 0.0f);
    let x_1223 : f32 = u_xlat1.x;
    u_xlat1.x = log2(x_1223);
    let x_1227 : f32 = u_xlat1.x;
    let x_1229 : f32 = x_26.x_Vignette_Settings.y;
    u_xlat1.x = (x_1227 * x_1229);
    let x_1233 : f32 = u_xlat1.x;
    u_xlat1.x = exp2(x_1233);
    let x_1238 : vec3<f32> = x_26.x_Vignette_Color;
    let x_1241 : vec3<f32> = (-(x_1238) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_1242 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1241.x, x_1241.y, x_1241.z, x_1242.w);
    let x_1244 : vec3<f32> = u_xlat1;
    let x_1246 : vec4<f32> = u_xlat2;
    let x_1250 : vec3<f32> = x_26.x_Vignette_Color;
    let x_1251 : vec3<f32> = ((vec3<f32>(x_1244.x, x_1244.x, x_1244.x) * vec3<f32>(x_1246.x, x_1246.y, x_1246.z)) + x_1250);
    let x_1252 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1251.x, x_1251.y, x_1251.z, x_1252.w);
    let x_1254 : vec4<f32> = u_xlat0;
    let x_1256 : vec4<f32> = u_xlat2;
    let x_1258 : vec3<f32> = (vec3<f32>(x_1254.x, x_1254.y, x_1254.z) * vec3<f32>(x_1256.x, x_1256.y, x_1256.z));
    let x_1259 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1258.x, x_1258.y, x_1258.z, x_1259.w);
    let x_1262 : f32 = u_xlat0.w;
    u_xlat11.x = (x_1262 + -1.0f);
    let x_1266 : f32 = u_xlat1.x;
    let x_1268 : f32 = u_xlat11.x;
    u_xlat3.w = ((x_1266 * x_1268) + 1.0f);
  } else {
    let x_1278 : vec2<f32> = u_xlat21;
    let x_1279 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_1278);
    u_xlat1.x = x_1279.w;
    let x_1283 : f32 = u_xlat1.x;
    u_xlat1.z = (x_1283 + 0.055f);
    let x_1287 : vec3<f32> = u_xlat1;
    let x_1292 : vec2<f32> = (vec2<f32>(x_1287.x, x_1287.z) * vec2<f32>(0.077399381f, 0.947867334f));
    let x_1293 : vec3<f32> = u_xlat11;
    u_xlat11 = vec3<f32>(x_1292.x, x_1292.y, x_1293.z);
    let x_1296 : f32 = u_xlat11.y;
    u_xlat21.x = max(abs(x_1296), 1.1920929e-07f);
    let x_1302 : f32 = u_xlat21.x;
    u_xlat21.x = log2(x_1302);
    let x_1306 : f32 = u_xlat21.x;
    u_xlat21.x = (x_1306 * 2.400000095f);
    let x_1311 : f32 = u_xlat21.x;
    u_xlat21.x = exp2(x_1311);
    let x_1316 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_1316);
    let x_1318 : bool = u_xlatb1;
    if (x_1318) {
      let x_1323 : f32 = u_xlat11.x;
      x_1319 = x_1323;
    } else {
      let x_1326 : f32 = u_xlat21.x;
      x_1319 = x_1326;
    }
    let x_1327 : f32 = x_1319;
    u_xlat1.x = x_1327;
    let x_1330 : vec3<f32> = x_26.x_Vignette_Color;
    u_xlat11 = (-(x_1330) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_1333 : vec3<f32> = u_xlat1;
    let x_1335 : vec3<f32> = u_xlat11;
    let x_1338 : vec3<f32> = x_26.x_Vignette_Color;
    u_xlat11 = ((vec3<f32>(x_1333.x, x_1333.x, x_1333.x) * x_1335) + x_1338);
    let x_1340 : vec4<f32> = u_xlat0;
    let x_1342 : vec3<f32> = u_xlat11;
    let x_1344 : vec4<f32> = u_xlat0;
    u_xlat11 = ((vec3<f32>(x_1340.x, x_1340.y, x_1340.z) * x_1342) + -(vec3<f32>(x_1344.x, x_1344.y, x_1344.z)));
    let x_1350 : f32 = x_26.x_Vignette_Opacity;
    let x_1352 : vec3<f32> = u_xlat11;
    let x_1354 : vec4<f32> = u_xlat0;
    let x_1356 : vec3<f32> = ((vec3<f32>(x_1350, x_1350, x_1350) * x_1352) + vec3<f32>(x_1354.x, x_1354.y, x_1354.z));
    let x_1357 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1356.x, x_1356.y, x_1356.z, x_1357.w);
    let x_1360 : f32 = u_xlat0.w;
    u_xlat0.x = (x_1360 + -1.0f);
    let x_1364 : f32 = u_xlat1.x;
    let x_1366 : f32 = u_xlat0.x;
    u_xlat3.w = ((x_1364 * x_1366) + 1.0f);
  }
  let x_1371 : vec2<f32> = vs_TEXCOORD1;
  let x_1374 : vec4<f32> = x_26.x_Grain_Params2;
  let x_1378 : vec4<f32> = x_26.x_Grain_Params2;
  let x_1380 : vec2<f32> = ((x_1371 * vec2<f32>(x_1374.x, x_1374.y)) + vec2<f32>(x_1378.z, x_1378.w));
  let x_1381 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1380.x, x_1380.y, x_1381.z, x_1381.w);
  let x_1388 : vec4<f32> = u_xlat0;
  let x_1390 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_1388.x, x_1388.y));
  let x_1391 : vec3<f32> = vec3<f32>(x_1390.x, x_1390.y, x_1390.z);
  let x_1392 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1391.x, x_1391.y, x_1391.z, x_1392.w);
  let x_1394 : vec4<f32> = u_xlat2;
  u_xlat1 = vec3<f32>(x_1394.x, x_1394.y, x_1394.z);
  let x_1396 : vec3<f32> = u_xlat1;
  u_xlat1 = clamp(x_1396, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1401 : vec3<f32> = u_xlat1;
  u_xlat30 = dot(x_1401, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_1407 : f32 = u_xlat30;
  u_xlat30 = sqrt(x_1407);
  let x_1411 : f32 = x_26.x_Grain_Params1.x;
  let x_1412 : f32 = u_xlat30;
  u_xlat30 = ((x_1411 * -(x_1412)) + 1.0f);
  let x_1416 : vec4<f32> = u_xlat0;
  let x_1418 : vec4<f32> = u_xlat2;
  let x_1420 : vec3<f32> = (vec3<f32>(x_1416.x, x_1416.y, x_1416.z) * vec3<f32>(x_1418.x, x_1418.y, x_1418.z));
  let x_1421 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1420.x, x_1420.y, x_1420.z, x_1421.w);
  let x_1423 : vec4<f32> = u_xlat0;
  let x_1426 : f32 = x_26.x_Grain_Params1.y;
  let x_1428 : f32 = x_26.x_Grain_Params1.y;
  let x_1430 : f32 = x_26.x_Grain_Params1.y;
  let x_1432 : vec3<f32> = (vec3<f32>(x_1423.x, x_1423.y, x_1423.z) * vec3<f32>(x_1426, x_1428, x_1430));
  let x_1433 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1432.x, x_1432.y, x_1432.z, x_1433.w);
  let x_1435 : vec4<f32> = u_xlat0;
  let x_1437 : f32 = u_xlat30;
  let x_1440 : vec4<f32> = u_xlat2;
  let x_1442 : vec3<f32> = ((vec3<f32>(x_1435.x, x_1435.y, x_1435.z) * vec3<f32>(x_1437, x_1437, x_1437)) + vec3<f32>(x_1440.x, x_1440.y, x_1440.z));
  let x_1443 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1442.x, x_1442.y, x_1442.z, x_1443.w);
  let x_1445 : vec4<f32> = u_xlat3;
  u_xlat3 = x_1445;
  let x_1446 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_1446, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_1450 : vec4<f32> = u_xlat3;
  let x_1454 : vec3<f32> = (vec3<f32>(x_1450.z, x_1450.x, x_1450.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1455 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1454.x, x_1454.y, x_1454.z, x_1455.w);
  let x_1457 : vec4<f32> = u_xlat3;
  u_xlat1 = max(vec3<f32>(x_1457.z, x_1457.x, x_1457.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1461 : vec3<f32> = u_xlat1;
  u_xlat1 = log2(x_1461);
  let x_1463 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_1463 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1467 : vec3<f32> = u_xlat1;
  u_xlat1 = exp2(x_1467);
  let x_1469 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_1469 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1481 : vec4<f32> = u_xlat3;
  let x_1484 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1481.z, x_1481.x, x_1481.y, x_1481.z));
  u_xlatb2 = vec3<bool>(x_1484.x, x_1484.y, x_1484.z);
  let x_1487 : vec4<f32> = u_xlat0;
  hlslcc_movcTemp = x_1487;
  let x_1489 : bool = u_xlatb2.x;
  if (x_1489) {
    let x_1494 : f32 = u_xlat0.x;
    x_1490 = x_1494;
  } else {
    let x_1497 : f32 = u_xlat1.x;
    x_1490 = x_1497;
  }
  let x_1498 : f32 = x_1490;
  hlslcc_movcTemp.x = x_1498;
  let x_1501 : bool = u_xlatb2.y;
  if (x_1501) {
    let x_1506 : f32 = u_xlat0.y;
    x_1502 = x_1506;
  } else {
    let x_1509 : f32 = u_xlat1.y;
    x_1502 = x_1509;
  }
  let x_1510 : f32 = x_1502;
  hlslcc_movcTemp.y = x_1510;
  let x_1513 : bool = u_xlatb2.z;
  if (x_1513) {
    let x_1518 : f32 = u_xlat0.z;
    x_1514 = x_1518;
  } else {
    let x_1521 : f32 = u_xlat1.z;
    x_1514 = x_1521;
  }
  let x_1522 : f32 = x_1514;
  hlslcc_movcTemp.z = x_1522;
  let x_1524 : vec4<f32> = hlslcc_movcTemp;
  u_xlat0 = x_1524;
  let x_1526 : vec4<f32> = u_xlat0;
  let x_1530 : vec3<f32> = x_26.x_Lut2D_Params;
  u_xlat10 = (vec3<f32>(x_1526.x, x_1526.y, x_1526.z) * vec3<f32>(x_1530.z, x_1530.z, x_1530.z));
  let x_1534 : f32 = u_xlat10.x;
  u_xlat10.x = floor(x_1534);
  let x_1538 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_1540 : vec2<f32> = (vec2<f32>(x_1538.x, x_1538.y) * vec2<f32>(0.5f, 0.5f));
  let x_1541 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1540.x, x_1540.y, x_1541.z);
  let x_1543 : vec3<f32> = u_xlat10;
  let x_1546 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_1549 : vec3<f32> = u_xlat1;
  let x_1551 : vec2<f32> = ((vec2<f32>(x_1543.y, x_1543.z) * vec2<f32>(x_1546.x, x_1546.y)) + vec2<f32>(x_1549.x, x_1549.y));
  let x_1552 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1552.x, x_1551.x, x_1551.y);
  let x_1555 : f32 = u_xlat10.x;
  let x_1557 : f32 = x_26.x_Lut2D_Params.y;
  let x_1560 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_1555 * x_1557) + x_1560);
  let x_1568 : vec3<f32> = u_xlat1;
  let x_1570 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_1568.x, x_1568.z));
  let x_1571 : vec3<f32> = vec3<f32>(x_1570.x, x_1570.y, x_1570.z);
  let x_1572 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1571.x, x_1571.y, x_1571.z, x_1572.w);
  let x_1575 : f32 = x_26.x_Lut2D_Params.y;
  u_xlat3.x = x_1575;
  u_xlat3.y = 0.0f;
  let x_1578 : vec3<f32> = u_xlat1;
  let x_1580 : vec4<f32> = u_xlat3;
  u_xlat20 = (vec2<f32>(x_1578.x, x_1578.z) + vec2<f32>(x_1580.x, x_1580.y));
  let x_1586 : vec2<f32> = u_xlat20;
  let x_1587 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_1586);
  u_xlat1 = vec3<f32>(x_1587.x, x_1587.y, x_1587.z);
  let x_1590 : f32 = u_xlat0.x;
  let x_1592 : f32 = x_26.x_Lut2D_Params.z;
  let x_1595 : f32 = u_xlat10.x;
  u_xlat0.x = ((x_1590 * x_1592) + -(x_1595));
  let x_1599 : vec4<f32> = u_xlat2;
  let x_1602 : vec3<f32> = u_xlat1;
  u_xlat10 = (-(vec3<f32>(x_1599.x, x_1599.y, x_1599.z)) + x_1602);
  let x_1604 : vec4<f32> = u_xlat0;
  let x_1606 : vec3<f32> = u_xlat10;
  let x_1608 : vec4<f32> = u_xlat2;
  let x_1610 : vec3<f32> = ((vec3<f32>(x_1604.x, x_1604.x, x_1604.x) * x_1606) + vec3<f32>(x_1608.x, x_1608.y, x_1608.z));
  let x_1611 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1610.x, x_1610.y, x_1610.z, x_1611.w);
  let x_1613 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_1613.x, x_1613.y, x_1613.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1617 : vec4<f32> = u_xlat0;
  let x_1620 : vec3<f32> = (vec3<f32>(x_1617.x, x_1617.y, x_1617.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1621 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1620.x, x_1620.y, x_1620.z, x_1621.w);
  let x_1623 : vec4<f32> = u_xlat2;
  let x_1626 : vec3<f32> = (vec3<f32>(x_1623.x, x_1623.y, x_1623.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1627 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1626.x, x_1626.y, x_1626.z, x_1627.w);
  let x_1629 : vec4<f32> = u_xlat2;
  let x_1632 : vec3<f32> = max(abs(vec3<f32>(x_1629.x, x_1629.y, x_1629.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1633 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1632.x, x_1632.y, x_1632.z, x_1633.w);
  let x_1635 : vec4<f32> = u_xlat2;
  let x_1637 : vec3<f32> = log2(vec3<f32>(x_1635.x, x_1635.y, x_1635.z));
  let x_1638 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1637.x, x_1637.y, x_1637.z, x_1638.w);
  let x_1640 : vec4<f32> = u_xlat2;
  let x_1643 : vec3<f32> = (vec3<f32>(x_1640.x, x_1640.y, x_1640.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1644 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1643.x, x_1643.y, x_1643.z, x_1644.w);
  let x_1646 : vec4<f32> = u_xlat2;
  let x_1648 : vec3<f32> = exp2(vec3<f32>(x_1646.x, x_1646.y, x_1646.z));
  let x_1649 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1648.x, x_1648.y, x_1648.z, x_1649.w);
  let x_1653 : vec4<f32> = u_xlat0;
  let x_1655 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1653.x, x_1653.y, x_1653.z, x_1653.x));
  u_xlatb0 = vec3<bool>(x_1655.x, x_1655.y, x_1655.z);
  let x_1658 : bool = u_xlatb0.x;
  if (x_1658) {
    let x_1663 : f32 = u_xlat1.x;
    x_1659 = x_1663;
  } else {
    let x_1666 : f32 = u_xlat2.x;
    x_1659 = x_1666;
  }
  let x_1667 : f32 = x_1659;
  u_xlat0.x = x_1667;
  let x_1670 : bool = u_xlatb0.y;
  if (x_1670) {
    let x_1675 : f32 = u_xlat1.y;
    x_1671 = x_1675;
  } else {
    let x_1678 : f32 = u_xlat2.y;
    x_1671 = x_1678;
  }
  let x_1679 : f32 = x_1671;
  u_xlat0.y = x_1679;
  let x_1682 : bool = u_xlatb0.z;
  if (x_1682) {
    let x_1687 : f32 = u_xlat1.z;
    x_1683 = x_1687;
  } else {
    let x_1690 : f32 = u_xlat2.z;
    x_1683 = x_1690;
  }
  let x_1691 : f32 = x_1683;
  u_xlat0.z = x_1691;
  let x_1693 : vec2<f32> = vs_TEXCOORD0;
  let x_1696 : vec4<f32> = x_26.x_Dithering_Coords;
  let x_1700 : vec4<f32> = x_26.x_Dithering_Coords;
  let x_1702 : vec2<f32> = ((x_1693 * vec2<f32>(x_1696.x, x_1696.y)) + vec2<f32>(x_1700.z, x_1700.w));
  let x_1703 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1702.x, x_1702.y, x_1703.z);
  let x_1710 : vec3<f32> = u_xlat1;
  let x_1712 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_1710.x, x_1710.y));
  u_xlat30 = x_1712.w;
  let x_1714 : f32 = u_xlat30;
  u_xlat30 = ((x_1714 * 2.0f) + -1.0f);
  let x_1717 : f32 = u_xlat30;
  u_xlat1.x = ((x_1717 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_1723 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1723, 0.0f, 1.0f);
  let x_1727 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1727 * 2.0f) + -1.0f);
  let x_1731 : f32 = u_xlat30;
  u_xlat30 = (-(abs(x_1731)) + 1.0f);
  let x_1735 : f32 = u_xlat30;
  u_xlat30 = sqrt(x_1735);
  let x_1737 : f32 = u_xlat30;
  u_xlat30 = (-(x_1737) + 1.0f);
  let x_1740 : f32 = u_xlat30;
  let x_1742 : f32 = u_xlat1.x;
  u_xlat30 = (x_1740 * x_1742);
  let x_1744 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_1744.x, x_1744.y, x_1744.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1747 : vec4<f32> = u_xlat0;
  let x_1750 : vec3<f32> = max(abs(vec3<f32>(x_1747.x, x_1747.y, x_1747.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1751 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1750.x, x_1750.y, x_1750.z, x_1751.w);
  let x_1753 : vec4<f32> = u_xlat2;
  let x_1755 : vec3<f32> = log2(vec3<f32>(x_1753.x, x_1753.y, x_1753.z));
  let x_1756 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1755.x, x_1755.y, x_1755.z, x_1756.w);
  let x_1758 : vec4<f32> = u_xlat2;
  let x_1760 : vec3<f32> = (vec3<f32>(x_1758.x, x_1758.y, x_1758.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1761 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1760.x, x_1760.y, x_1760.z, x_1761.w);
  let x_1763 : vec4<f32> = u_xlat2;
  let x_1765 : vec3<f32> = exp2(vec3<f32>(x_1763.x, x_1763.y, x_1763.z));
  let x_1766 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1765.x, x_1765.y, x_1765.z, x_1766.w);
  let x_1768 : vec4<f32> = u_xlat2;
  let x_1771 : vec3<f32> = ((vec3<f32>(x_1768.x, x_1768.y, x_1768.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1772 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1771.x, x_1771.y, x_1771.z, x_1772.w);
  let x_1774 : vec4<f32> = u_xlat0;
  let x_1776 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1774.x, x_1774.y, x_1774.z, x_1774.x));
  u_xlatb0 = vec3<bool>(x_1776.x, x_1776.y, x_1776.z);
  let x_1779 : bool = u_xlatb0.x;
  if (x_1779) {
    let x_1784 : f32 = u_xlat1.x;
    x_1780 = x_1784;
  } else {
    let x_1787 : f32 = u_xlat2.x;
    x_1780 = x_1787;
  }
  let x_1788 : f32 = x_1780;
  u_xlat0.x = x_1788;
  let x_1791 : bool = u_xlatb0.y;
  if (x_1791) {
    let x_1796 : f32 = u_xlat1.y;
    x_1792 = x_1796;
  } else {
    let x_1799 : f32 = u_xlat2.y;
    x_1792 = x_1799;
  }
  let x_1800 : f32 = x_1792;
  u_xlat0.y = x_1800;
  let x_1803 : bool = u_xlatb0.z;
  if (x_1803) {
    let x_1808 : f32 = u_xlat1.z;
    x_1804 = x_1808;
  } else {
    let x_1811 : f32 = u_xlat2.z;
    x_1804 = x_1811;
  }
  let x_1812 : f32 = x_1804;
  u_xlat0.z = x_1812;
  let x_1814 : f32 = u_xlat30;
  let x_1819 : vec4<f32> = u_xlat0;
  let x_1821 : vec3<f32> = ((vec3<f32>(x_1814, x_1814, x_1814) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_1819.x, x_1819.y, x_1819.z));
  let x_1822 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1821.x, x_1821.y, x_1821.z, x_1822.w);
  let x_1824 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_1824.x, x_1824.y, x_1824.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1827 : vec4<f32> = u_xlat0;
  let x_1829 : vec3<f32> = (vec3<f32>(x_1827.x, x_1827.y, x_1827.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1830 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1829.x, x_1829.y, x_1829.z, x_1830.w);
  let x_1832 : vec4<f32> = u_xlat2;
  let x_1834 : vec3<f32> = (vec3<f32>(x_1832.x, x_1832.y, x_1832.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1835 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1834.x, x_1834.y, x_1834.z, x_1835.w);
  let x_1837 : vec4<f32> = u_xlat2;
  let x_1840 : vec3<f32> = max(abs(vec3<f32>(x_1837.x, x_1837.y, x_1837.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1841 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1840.x, x_1840.y, x_1840.z, x_1841.w);
  let x_1843 : vec4<f32> = u_xlat2;
  let x_1845 : vec3<f32> = log2(vec3<f32>(x_1843.x, x_1843.y, x_1843.z));
  let x_1846 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1845.x, x_1845.y, x_1845.z, x_1846.w);
  let x_1848 : vec4<f32> = u_xlat2;
  let x_1850 : vec3<f32> = (vec3<f32>(x_1848.x, x_1848.y, x_1848.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1851 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1850.x, x_1850.y, x_1850.z, x_1851.w);
  let x_1853 : vec4<f32> = u_xlat2;
  let x_1855 : vec3<f32> = exp2(vec3<f32>(x_1853.x, x_1853.y, x_1853.z));
  let x_1856 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1855.x, x_1855.y, x_1855.z, x_1856.w);
  let x_1858 : vec4<f32> = u_xlat0;
  let x_1860 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1858.x, x_1858.y, x_1858.z, x_1858.x));
  u_xlatb0 = vec3<bool>(x_1860.x, x_1860.y, x_1860.z);
  let x_1865 : bool = u_xlatb0.x;
  if (x_1865) {
    let x_1870 : f32 = u_xlat1.x;
    x_1866 = x_1870;
  } else {
    let x_1873 : f32 = u_xlat2.x;
    x_1866 = x_1873;
  }
  let x_1874 : f32 = x_1866;
  SV_Target0.x = x_1874;
  let x_1878 : bool = u_xlatb0.y;
  if (x_1878) {
    let x_1883 : f32 = u_xlat1.y;
    x_1879 = x_1883;
  } else {
    let x_1886 : f32 = u_xlat2.y;
    x_1879 = x_1886;
  }
  let x_1887 : f32 = x_1879;
  SV_Target0.y = x_1887;
  let x_1890 : bool = u_xlatb0.z;
  if (x_1890) {
    let x_1895 : f32 = u_xlat1.z;
    x_1891 = x_1895;
  } else {
    let x_1898 : f32 = u_xlat2.z;
    x_1891 = x_1898;
  }
  let x_1899 : f32 = x_1891;
  SV_Target0.z = x_1899;
  let x_1902 : f32 = u_xlat3.w;
  SV_Target0.w = x_1902;
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

