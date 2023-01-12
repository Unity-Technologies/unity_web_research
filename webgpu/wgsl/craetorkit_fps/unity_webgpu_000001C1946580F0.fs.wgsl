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
  var x_1457 : f32;
  var u_xlat30 : f32;
  var u_xlatb2 : vec3<bool>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_1628 : f32;
  var x_1640 : f32;
  var x_1652 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlatb0 : vec3<bool>;
  var x_1797 : f32;
  var x_1809 : f32;
  var x_1821 : f32;
  var x_1918 : f32;
  var x_1930 : f32;
  var x_1942 : f32;
  var x_2004 : f32;
  var x_2017 : f32;
  var x_2029 : f32;
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
  u_xlat2 = (vec4<f32>(x_984.x, x_984.y, x_984.x, x_984.y) * vec4<f32>(1.0f, 1.0f, -1.0f, 0.0f));
  let x_988 : vec4<f32> = u_xlat2;
  let x_994 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_997 : vec2<f32> = u_xlat21;
  u_xlat3 = ((-(vec4<f32>(x_988.x, x_988.y, x_988.w, x_988.y)) * vec4<f32>(x_994.x, x_994.x, x_994.x, x_994.x)) + vec4<f32>(x_997.x, x_997.y, x_997.x, x_997.y));
  let x_1000 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_1000, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_1004 : vec4<f32> = u_xlat3;
  let x_1006 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat3 = (x_1004 * vec4<f32>(x_1006, x_1006, x_1006, x_1006));
  let x_1014 : vec4<f32> = u_xlat3;
  let x_1016 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_1014.x, x_1014.y));
  u_xlat4 = x_1016;
  let x_1020 : vec4<f32> = u_xlat3;
  let x_1022 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_1020.z, x_1020.w));
  u_xlat3 = x_1022;
  let x_1023 : vec4<f32> = u_xlat3;
  let x_1025 : vec4<f32> = u_xlat4;
  u_xlat3 = ((x_1023 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_1025);
  let x_1027 : vec4<f32> = u_xlat2;
  let x_1031 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_1034 : vec2<f32> = u_xlat21;
  let x_1035 : vec2<f32> = ((-(vec2<f32>(x_1027.z, x_1027.y)) * vec2<f32>(x_1031.x, x_1031.x)) + x_1034);
  let x_1036 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1035.x, x_1035.y, x_1036.z);
  let x_1038 : vec3<f32> = u_xlat1;
  let x_1042 : vec2<f32> = clamp(vec2<f32>(x_1038.x, x_1038.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_1043 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1042.x, x_1042.y, x_1043.z);
  let x_1045 : vec3<f32> = u_xlat1;
  let x_1048 : f32 = x_26.x_RenderViewportScaleFactor;
  let x_1050 : vec2<f32> = (vec2<f32>(x_1045.x, x_1045.y) * vec2<f32>(x_1048, x_1048));
  let x_1051 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1050.x, x_1050.y, x_1051.z);
  let x_1056 : vec3<f32> = u_xlat1;
  let x_1058 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_1056.x, x_1056.y));
  u_xlat4 = x_1058;
  let x_1059 : vec4<f32> = u_xlat3;
  let x_1060 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_1059 + x_1060);
  let x_1062 : vec4<f32> = u_xlat2;
  let x_1065 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_1068 : vec2<f32> = u_xlat21;
  u_xlat4 = ((vec4<f32>(x_1062.z, x_1062.w, x_1062.x, x_1062.w) * vec4<f32>(x_1065.x, x_1065.x, x_1065.x, x_1065.x)) + vec4<f32>(x_1068.x, x_1068.y, x_1068.x, x_1068.y));
  let x_1071 : vec4<f32> = u_xlat4;
  u_xlat4 = clamp(x_1071, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_1075 : vec4<f32> = u_xlat4;
  let x_1077 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat4 = (x_1075 * vec4<f32>(x_1077, x_1077, x_1077, x_1077));
  let x_1083 : vec4<f32> = u_xlat4;
  let x_1085 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_1083.x, x_1083.y));
  u_xlat5 = x_1085;
  let x_1086 : vec4<f32> = u_xlat5;
  let x_1088 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_1086 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_1088);
  let x_1090 : vec2<f32> = u_xlat21;
  let x_1091 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1090.x, x_1090.y, x_1091.z);
  let x_1093 : vec3<f32> = u_xlat1;
  let x_1097 : vec2<f32> = clamp(vec2<f32>(x_1093.x, x_1093.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_1098 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1097.x, x_1097.y, x_1098.z);
  let x_1100 : vec3<f32> = u_xlat1;
  let x_1103 : f32 = x_26.x_RenderViewportScaleFactor;
  let x_1105 : vec2<f32> = (vec2<f32>(x_1100.x, x_1100.y) * vec2<f32>(x_1103, x_1103));
  let x_1106 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1105.x, x_1105.y, x_1106.z);
  let x_1111 : vec3<f32> = u_xlat1;
  let x_1113 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_1111.x, x_1111.y));
  u_xlat5 = x_1113;
  let x_1114 : vec4<f32> = u_xlat5;
  let x_1118 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_1114 * vec4<f32>(4.0f, 4.0f, 4.0f, 4.0f)) + x_1118);
  let x_1123 : vec4<f32> = u_xlat4;
  let x_1125 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_1123.z, x_1123.w));
  u_xlat4 = x_1125;
  let x_1126 : vec4<f32> = u_xlat4;
  let x_1128 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_1126 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_1128);
  let x_1130 : vec4<f32> = u_xlat2;
  let x_1133 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_1136 : vec2<f32> = u_xlat21;
  u_xlat4 = ((vec4<f32>(x_1130.z, x_1130.y, x_1130.w, x_1130.y) * vec4<f32>(x_1133.x, x_1133.x, x_1133.x, x_1133.x)) + vec4<f32>(x_1136.x, x_1136.y, x_1136.x, x_1136.y));
  let x_1139 : vec4<f32> = u_xlat4;
  u_xlat4 = clamp(x_1139, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_1143 : vec4<f32> = u_xlat4;
  let x_1145 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat4 = (x_1143 * vec4<f32>(x_1145, x_1145, x_1145, x_1145));
  let x_1151 : vec4<f32> = u_xlat4;
  let x_1153 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_1151.x, x_1151.y));
  u_xlat5 = x_1153;
  let x_1154 : vec4<f32> = u_xlat3;
  let x_1155 : vec4<f32> = u_xlat5;
  u_xlat3 = (x_1154 + x_1155);
  let x_1160 : vec4<f32> = u_xlat4;
  let x_1162 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_1160.z, x_1160.w));
  u_xlat4 = x_1162;
  let x_1163 : vec4<f32> = u_xlat4;
  let x_1165 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_1163 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_1165);
  let x_1167 : vec4<f32> = u_xlat2;
  let x_1170 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_1173 : vec2<f32> = u_xlat21;
  let x_1174 : vec2<f32> = ((vec2<f32>(x_1167.x, x_1167.y) * vec2<f32>(x_1170.x, x_1170.x)) + x_1173);
  let x_1175 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1174.x, x_1174.y, x_1175.z);
  let x_1177 : vec3<f32> = u_xlat1;
  let x_1181 : vec2<f32> = clamp(vec2<f32>(x_1177.x, x_1177.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_1182 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1181.x, x_1181.y, x_1182.z);
  let x_1184 : vec3<f32> = u_xlat1;
  let x_1187 : f32 = x_26.x_RenderViewportScaleFactor;
  let x_1189 : vec2<f32> = (vec2<f32>(x_1184.x, x_1184.y) * vec2<f32>(x_1187, x_1187));
  let x_1190 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1189.x, x_1189.y, x_1190.z);
  let x_1195 : vec3<f32> = u_xlat1;
  let x_1197 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_1195.x, x_1195.y));
  u_xlat2 = x_1197;
  let x_1198 : vec4<f32> = u_xlat2;
  let x_1199 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_1198 + x_1199);
  let x_1201 : vec4<f32> = u_xlat2;
  let x_1203 : vec3<f32> = x_26.x_Bloom_Settings;
  u_xlat2 = (x_1201 * vec4<f32>(x_1203.y, x_1203.y, x_1203.y, x_1203.y));
  let x_1206 : vec2<f32> = u_xlat21;
  let x_1209 : vec4<f32> = x_26.x_Bloom_DirtTileOffset;
  let x_1213 : vec4<f32> = x_26.x_Bloom_DirtTileOffset;
  let x_1215 : vec2<f32> = ((x_1206 * vec2<f32>(x_1209.x, x_1209.y)) + vec2<f32>(x_1213.z, x_1213.w));
  let x_1216 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1215.x, x_1215.y, x_1216.z);
  let x_1223 : vec3<f32> = u_xlat1;
  let x_1225 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_1223.x, x_1223.y));
  let x_1226 : vec3<f32> = vec3<f32>(x_1225.x, x_1225.y, x_1225.z);
  let x_1227 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1226.x, x_1226.y, x_1226.z, x_1227.w);
  let x_1229 : vec4<f32> = u_xlat2;
  u_xlat4 = (x_1229 * vec4<f32>(0.0625f, 0.0625f, 0.0625f, 0.0625f));
  let x_1233 : vec4<f32> = u_xlat3;
  let x_1236 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_1238 : vec3<f32> = (vec3<f32>(x_1233.x, x_1233.y, x_1233.z) * vec3<f32>(x_1236.z, x_1236.z, x_1236.z));
  let x_1239 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1238.x, x_1238.y, x_1238.z, x_1239.w);
  u_xlat3.w = 0.0f;
  let x_1242 : vec4<f32> = u_xlat2;
  u_xlat2 = (x_1242 * vec4<f32>(0.0625f, 0.0625f, 0.0625f, 1.0f));
  let x_1245 : vec4<f32> = u_xlat2;
  let x_1249 : vec3<f32> = x_26.x_Bloom_Color;
  let x_1250 : vec3<f32> = (vec3<f32>(x_1245.x, x_1245.y, x_1245.z) * x_1249);
  let x_1251 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1250.x, x_1250.y, x_1250.z, x_1251.w);
  let x_1254 : f32 = u_xlat2.w;
  u_xlat5.w = (x_1254 * 0.0625f);
  let x_1257 : vec4<f32> = u_xlat0;
  let x_1258 : vec4<f32> = u_xlat5;
  u_xlat0 = (x_1257 + x_1258);
  let x_1260 : vec4<f32> = u_xlat3;
  let x_1261 : vec4<f32> = u_xlat4;
  let x_1263 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_1260 * x_1261) + x_1263);
  let x_1267 : f32 = x_26.x_Vignette_Mode;
  u_xlatb1 = (x_1267 < 0.5f);
  let x_1269 : bool = u_xlatb1;
  if (x_1269) {
    let x_1272 : vec2<f32> = u_xlat21;
    let x_1276 : vec2<f32> = x_26.x_Vignette_Center;
    let x_1278 : vec2<f32> = (x_1272 + -(x_1276));
    let x_1279 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_1278.x, x_1278.y, x_1279.z);
    let x_1281 : vec3<f32> = u_xlat1;
    let x_1286 : vec4<f32> = x_26.x_Vignette_Settings;
    let x_1288 : vec2<f32> = (abs(vec2<f32>(x_1281.y, x_1281.x)) * vec2<f32>(x_1286.x, x_1286.x));
    let x_1289 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1289.x, x_1288.x, x_1288.y, x_1289.w);
    let x_1293 : f32 = x_26.x_ScreenParams.x;
    let x_1295 : f32 = x_26.x_ScreenParams.y;
    u_xlat1.x = (x_1293 / x_1295);
    let x_1299 : f32 = u_xlat1.x;
    u_xlat1.x = (x_1299 + -1.0f);
    let x_1303 : f32 = x_26.x_Vignette_Settings.w;
    let x_1305 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_1303 * x_1305) + 1.0f);
    let x_1310 : f32 = u_xlat1.x;
    let x_1313 : f32 = u_xlat2.z;
    u_xlat2.x = (x_1310 * x_1313);
    let x_1316 : vec4<f32> = u_xlat2;
    let x_1317 : vec2<f32> = vec2<f32>(x_1316.x, x_1316.y);
    let x_1318 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1317.x, x_1317.y, x_1318.z, x_1318.w);
    let x_1320 : vec4<f32> = u_xlat2;
    let x_1324 : vec2<f32> = clamp(vec2<f32>(x_1320.x, x_1320.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_1325 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1324.x, x_1324.y, x_1325.z, x_1325.w);
    let x_1327 : vec4<f32> = u_xlat2;
    let x_1329 : vec2<f32> = log2(vec2<f32>(x_1327.x, x_1327.y));
    let x_1330 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_1329.x, x_1329.y, x_1330.z);
    let x_1332 : vec3<f32> = u_xlat1;
    let x_1335 : vec4<f32> = x_26.x_Vignette_Settings;
    let x_1337 : vec2<f32> = (vec2<f32>(x_1332.x, x_1332.y) * vec2<f32>(x_1335.z, x_1335.z));
    let x_1338 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_1337.x, x_1337.y, x_1338.z);
    let x_1340 : vec3<f32> = u_xlat1;
    let x_1342 : vec2<f32> = exp2(vec2<f32>(x_1340.x, x_1340.y));
    let x_1343 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_1342.x, x_1342.y, x_1343.z);
    let x_1345 : vec3<f32> = u_xlat1;
    let x_1347 : vec3<f32> = u_xlat1;
    u_xlat1.x = dot(vec2<f32>(x_1345.x, x_1345.y), vec2<f32>(x_1347.x, x_1347.y));
    let x_1352 : f32 = u_xlat1.x;
    u_xlat1.x = (-(x_1352) + 1.0f);
    let x_1357 : f32 = u_xlat1.x;
    u_xlat1.x = max(x_1357, 0.0f);
    let x_1361 : f32 = u_xlat1.x;
    u_xlat1.x = log2(x_1361);
    let x_1365 : f32 = u_xlat1.x;
    let x_1367 : f32 = x_26.x_Vignette_Settings.y;
    u_xlat1.x = (x_1365 * x_1367);
    let x_1371 : f32 = u_xlat1.x;
    u_xlat1.x = exp2(x_1371);
    let x_1376 : vec3<f32> = x_26.x_Vignette_Color;
    let x_1379 : vec3<f32> = (-(x_1376) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_1380 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1379.x, x_1379.y, x_1379.z, x_1380.w);
    let x_1382 : vec3<f32> = u_xlat1;
    let x_1384 : vec4<f32> = u_xlat2;
    let x_1388 : vec3<f32> = x_26.x_Vignette_Color;
    let x_1389 : vec3<f32> = ((vec3<f32>(x_1382.x, x_1382.x, x_1382.x) * vec3<f32>(x_1384.x, x_1384.y, x_1384.z)) + x_1388);
    let x_1390 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1389.x, x_1389.y, x_1389.z, x_1390.w);
    let x_1392 : vec4<f32> = u_xlat0;
    let x_1394 : vec4<f32> = u_xlat2;
    let x_1396 : vec3<f32> = (vec3<f32>(x_1392.x, x_1392.y, x_1392.z) * vec3<f32>(x_1394.x, x_1394.y, x_1394.z));
    let x_1397 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1396.x, x_1396.y, x_1396.z, x_1397.w);
    let x_1400 : f32 = u_xlat0.w;
    u_xlat11.x = (x_1400 + -1.0f);
    let x_1404 : f32 = u_xlat1.x;
    let x_1406 : f32 = u_xlat11.x;
    u_xlat3.w = ((x_1404 * x_1406) + 1.0f);
  } else {
    let x_1416 : vec2<f32> = u_xlat21;
    let x_1417 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_1416);
    u_xlat1.x = x_1417.w;
    let x_1421 : f32 = u_xlat1.x;
    u_xlat1.z = (x_1421 + 0.055f);
    let x_1425 : vec3<f32> = u_xlat1;
    let x_1430 : vec2<f32> = (vec2<f32>(x_1425.x, x_1425.z) * vec2<f32>(0.077399381f, 0.947867334f));
    let x_1431 : vec3<f32> = u_xlat11;
    u_xlat11 = vec3<f32>(x_1430.x, x_1430.y, x_1431.z);
    let x_1434 : f32 = u_xlat11.y;
    u_xlat21.x = max(abs(x_1434), 1.1920929e-07f);
    let x_1440 : f32 = u_xlat21.x;
    u_xlat21.x = log2(x_1440);
    let x_1444 : f32 = u_xlat21.x;
    u_xlat21.x = (x_1444 * 2.400000095f);
    let x_1449 : f32 = u_xlat21.x;
    u_xlat21.x = exp2(x_1449);
    let x_1454 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_1454);
    let x_1456 : bool = u_xlatb1;
    if (x_1456) {
      let x_1461 : f32 = u_xlat11.x;
      x_1457 = x_1461;
    } else {
      let x_1464 : f32 = u_xlat21.x;
      x_1457 = x_1464;
    }
    let x_1465 : f32 = x_1457;
    u_xlat1.x = x_1465;
    let x_1468 : vec3<f32> = x_26.x_Vignette_Color;
    u_xlat11 = (-(x_1468) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_1471 : vec3<f32> = u_xlat1;
    let x_1473 : vec3<f32> = u_xlat11;
    let x_1476 : vec3<f32> = x_26.x_Vignette_Color;
    u_xlat11 = ((vec3<f32>(x_1471.x, x_1471.x, x_1471.x) * x_1473) + x_1476);
    let x_1478 : vec4<f32> = u_xlat0;
    let x_1480 : vec3<f32> = u_xlat11;
    let x_1482 : vec4<f32> = u_xlat0;
    u_xlat11 = ((vec3<f32>(x_1478.x, x_1478.y, x_1478.z) * x_1480) + -(vec3<f32>(x_1482.x, x_1482.y, x_1482.z)));
    let x_1488 : f32 = x_26.x_Vignette_Opacity;
    let x_1490 : vec3<f32> = u_xlat11;
    let x_1492 : vec4<f32> = u_xlat0;
    let x_1494 : vec3<f32> = ((vec3<f32>(x_1488, x_1488, x_1488) * x_1490) + vec3<f32>(x_1492.x, x_1492.y, x_1492.z));
    let x_1495 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1494.x, x_1494.y, x_1494.z, x_1495.w);
    let x_1498 : f32 = u_xlat0.w;
    u_xlat0.x = (x_1498 + -1.0f);
    let x_1502 : f32 = u_xlat1.x;
    let x_1504 : f32 = u_xlat0.x;
    u_xlat3.w = ((x_1502 * x_1504) + 1.0f);
  }
  let x_1509 : vec2<f32> = vs_TEXCOORD1;
  let x_1512 : vec4<f32> = x_26.x_Grain_Params2;
  let x_1516 : vec4<f32> = x_26.x_Grain_Params2;
  let x_1518 : vec2<f32> = ((x_1509 * vec2<f32>(x_1512.x, x_1512.y)) + vec2<f32>(x_1516.z, x_1516.w));
  let x_1519 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1518.x, x_1518.y, x_1519.z, x_1519.w);
  let x_1526 : vec4<f32> = u_xlat0;
  let x_1528 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_1526.x, x_1526.y));
  let x_1529 : vec3<f32> = vec3<f32>(x_1528.x, x_1528.y, x_1528.z);
  let x_1530 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1529.x, x_1529.y, x_1529.z, x_1530.w);
  let x_1532 : vec4<f32> = u_xlat2;
  u_xlat1 = vec3<f32>(x_1532.x, x_1532.y, x_1532.z);
  let x_1534 : vec3<f32> = u_xlat1;
  u_xlat1 = clamp(x_1534, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1539 : vec3<f32> = u_xlat1;
  u_xlat30 = dot(x_1539, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_1545 : f32 = u_xlat30;
  u_xlat30 = sqrt(x_1545);
  let x_1549 : f32 = x_26.x_Grain_Params1.x;
  let x_1550 : f32 = u_xlat30;
  u_xlat30 = ((x_1549 * -(x_1550)) + 1.0f);
  let x_1554 : vec4<f32> = u_xlat0;
  let x_1556 : vec4<f32> = u_xlat2;
  let x_1558 : vec3<f32> = (vec3<f32>(x_1554.x, x_1554.y, x_1554.z) * vec3<f32>(x_1556.x, x_1556.y, x_1556.z));
  let x_1559 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1558.x, x_1558.y, x_1558.z, x_1559.w);
  let x_1561 : vec4<f32> = u_xlat0;
  let x_1564 : f32 = x_26.x_Grain_Params1.y;
  let x_1566 : f32 = x_26.x_Grain_Params1.y;
  let x_1568 : f32 = x_26.x_Grain_Params1.y;
  let x_1570 : vec3<f32> = (vec3<f32>(x_1561.x, x_1561.y, x_1561.z) * vec3<f32>(x_1564, x_1566, x_1568));
  let x_1571 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1570.x, x_1570.y, x_1570.z, x_1571.w);
  let x_1573 : vec4<f32> = u_xlat0;
  let x_1575 : f32 = u_xlat30;
  let x_1578 : vec4<f32> = u_xlat2;
  let x_1580 : vec3<f32> = ((vec3<f32>(x_1573.x, x_1573.y, x_1573.z) * vec3<f32>(x_1575, x_1575, x_1575)) + vec3<f32>(x_1578.x, x_1578.y, x_1578.z));
  let x_1581 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1580.x, x_1580.y, x_1580.z, x_1581.w);
  let x_1583 : vec4<f32> = u_xlat3;
  u_xlat3 = x_1583;
  let x_1584 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_1584, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_1588 : vec4<f32> = u_xlat3;
  let x_1592 : vec3<f32> = (vec3<f32>(x_1588.z, x_1588.x, x_1588.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1593 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1592.x, x_1592.y, x_1592.z, x_1593.w);
  let x_1595 : vec4<f32> = u_xlat3;
  u_xlat1 = max(vec3<f32>(x_1595.z, x_1595.x, x_1595.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1599 : vec3<f32> = u_xlat1;
  u_xlat1 = log2(x_1599);
  let x_1601 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_1601 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1605 : vec3<f32> = u_xlat1;
  u_xlat1 = exp2(x_1605);
  let x_1607 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_1607 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1619 : vec4<f32> = u_xlat3;
  let x_1622 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1619.z, x_1619.x, x_1619.y, x_1619.z));
  u_xlatb2 = vec3<bool>(x_1622.x, x_1622.y, x_1622.z);
  let x_1625 : vec4<f32> = u_xlat0;
  hlslcc_movcTemp = x_1625;
  let x_1627 : bool = u_xlatb2.x;
  if (x_1627) {
    let x_1632 : f32 = u_xlat0.x;
    x_1628 = x_1632;
  } else {
    let x_1635 : f32 = u_xlat1.x;
    x_1628 = x_1635;
  }
  let x_1636 : f32 = x_1628;
  hlslcc_movcTemp.x = x_1636;
  let x_1639 : bool = u_xlatb2.y;
  if (x_1639) {
    let x_1644 : f32 = u_xlat0.y;
    x_1640 = x_1644;
  } else {
    let x_1647 : f32 = u_xlat1.y;
    x_1640 = x_1647;
  }
  let x_1648 : f32 = x_1640;
  hlslcc_movcTemp.y = x_1648;
  let x_1651 : bool = u_xlatb2.z;
  if (x_1651) {
    let x_1656 : f32 = u_xlat0.z;
    x_1652 = x_1656;
  } else {
    let x_1659 : f32 = u_xlat1.z;
    x_1652 = x_1659;
  }
  let x_1660 : f32 = x_1652;
  hlslcc_movcTemp.z = x_1660;
  let x_1662 : vec4<f32> = hlslcc_movcTemp;
  u_xlat0 = x_1662;
  let x_1664 : vec4<f32> = u_xlat0;
  let x_1668 : vec3<f32> = x_26.x_Lut2D_Params;
  u_xlat10 = (vec3<f32>(x_1664.x, x_1664.y, x_1664.z) * vec3<f32>(x_1668.z, x_1668.z, x_1668.z));
  let x_1672 : f32 = u_xlat10.x;
  u_xlat10.x = floor(x_1672);
  let x_1676 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_1678 : vec2<f32> = (vec2<f32>(x_1676.x, x_1676.y) * vec2<f32>(0.5f, 0.5f));
  let x_1679 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1678.x, x_1678.y, x_1679.z);
  let x_1681 : vec3<f32> = u_xlat10;
  let x_1684 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_1687 : vec3<f32> = u_xlat1;
  let x_1689 : vec2<f32> = ((vec2<f32>(x_1681.y, x_1681.z) * vec2<f32>(x_1684.x, x_1684.y)) + vec2<f32>(x_1687.x, x_1687.y));
  let x_1690 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1690.x, x_1689.x, x_1689.y);
  let x_1693 : f32 = u_xlat10.x;
  let x_1695 : f32 = x_26.x_Lut2D_Params.y;
  let x_1698 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_1693 * x_1695) + x_1698);
  let x_1706 : vec3<f32> = u_xlat1;
  let x_1708 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_1706.x, x_1706.z));
  let x_1709 : vec3<f32> = vec3<f32>(x_1708.x, x_1708.y, x_1708.z);
  let x_1710 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1709.x, x_1709.y, x_1709.z, x_1710.w);
  let x_1713 : f32 = x_26.x_Lut2D_Params.y;
  u_xlat3.x = x_1713;
  u_xlat3.y = 0.0f;
  let x_1716 : vec3<f32> = u_xlat1;
  let x_1718 : vec4<f32> = u_xlat3;
  u_xlat20 = (vec2<f32>(x_1716.x, x_1716.z) + vec2<f32>(x_1718.x, x_1718.y));
  let x_1724 : vec2<f32> = u_xlat20;
  let x_1725 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_1724);
  u_xlat1 = vec3<f32>(x_1725.x, x_1725.y, x_1725.z);
  let x_1728 : f32 = u_xlat0.x;
  let x_1730 : f32 = x_26.x_Lut2D_Params.z;
  let x_1733 : f32 = u_xlat10.x;
  u_xlat0.x = ((x_1728 * x_1730) + -(x_1733));
  let x_1737 : vec4<f32> = u_xlat2;
  let x_1740 : vec3<f32> = u_xlat1;
  u_xlat10 = (-(vec3<f32>(x_1737.x, x_1737.y, x_1737.z)) + x_1740);
  let x_1742 : vec4<f32> = u_xlat0;
  let x_1744 : vec3<f32> = u_xlat10;
  let x_1746 : vec4<f32> = u_xlat2;
  let x_1748 : vec3<f32> = ((vec3<f32>(x_1742.x, x_1742.x, x_1742.x) * x_1744) + vec3<f32>(x_1746.x, x_1746.y, x_1746.z));
  let x_1749 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1748.x, x_1748.y, x_1748.z, x_1749.w);
  let x_1751 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_1751.x, x_1751.y, x_1751.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1755 : vec4<f32> = u_xlat0;
  let x_1758 : vec3<f32> = (vec3<f32>(x_1755.x, x_1755.y, x_1755.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1759 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1758.x, x_1758.y, x_1758.z, x_1759.w);
  let x_1761 : vec4<f32> = u_xlat2;
  let x_1764 : vec3<f32> = (vec3<f32>(x_1761.x, x_1761.y, x_1761.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1765 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1764.x, x_1764.y, x_1764.z, x_1765.w);
  let x_1767 : vec4<f32> = u_xlat2;
  let x_1770 : vec3<f32> = max(abs(vec3<f32>(x_1767.x, x_1767.y, x_1767.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1771 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1770.x, x_1770.y, x_1770.z, x_1771.w);
  let x_1773 : vec4<f32> = u_xlat2;
  let x_1775 : vec3<f32> = log2(vec3<f32>(x_1773.x, x_1773.y, x_1773.z));
  let x_1776 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1775.x, x_1775.y, x_1775.z, x_1776.w);
  let x_1778 : vec4<f32> = u_xlat2;
  let x_1781 : vec3<f32> = (vec3<f32>(x_1778.x, x_1778.y, x_1778.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1782 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1781.x, x_1781.y, x_1781.z, x_1782.w);
  let x_1784 : vec4<f32> = u_xlat2;
  let x_1786 : vec3<f32> = exp2(vec3<f32>(x_1784.x, x_1784.y, x_1784.z));
  let x_1787 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1786.x, x_1786.y, x_1786.z, x_1787.w);
  let x_1791 : vec4<f32> = u_xlat0;
  let x_1793 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1791.x, x_1791.y, x_1791.z, x_1791.x));
  u_xlatb0 = vec3<bool>(x_1793.x, x_1793.y, x_1793.z);
  let x_1796 : bool = u_xlatb0.x;
  if (x_1796) {
    let x_1801 : f32 = u_xlat1.x;
    x_1797 = x_1801;
  } else {
    let x_1804 : f32 = u_xlat2.x;
    x_1797 = x_1804;
  }
  let x_1805 : f32 = x_1797;
  u_xlat0.x = x_1805;
  let x_1808 : bool = u_xlatb0.y;
  if (x_1808) {
    let x_1813 : f32 = u_xlat1.y;
    x_1809 = x_1813;
  } else {
    let x_1816 : f32 = u_xlat2.y;
    x_1809 = x_1816;
  }
  let x_1817 : f32 = x_1809;
  u_xlat0.y = x_1817;
  let x_1820 : bool = u_xlatb0.z;
  if (x_1820) {
    let x_1825 : f32 = u_xlat1.z;
    x_1821 = x_1825;
  } else {
    let x_1828 : f32 = u_xlat2.z;
    x_1821 = x_1828;
  }
  let x_1829 : f32 = x_1821;
  u_xlat0.z = x_1829;
  let x_1831 : vec2<f32> = vs_TEXCOORD0;
  let x_1834 : vec4<f32> = x_26.x_Dithering_Coords;
  let x_1838 : vec4<f32> = x_26.x_Dithering_Coords;
  let x_1840 : vec2<f32> = ((x_1831 * vec2<f32>(x_1834.x, x_1834.y)) + vec2<f32>(x_1838.z, x_1838.w));
  let x_1841 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1840.x, x_1840.y, x_1841.z);
  let x_1848 : vec3<f32> = u_xlat1;
  let x_1850 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_1848.x, x_1848.y));
  u_xlat30 = x_1850.w;
  let x_1852 : f32 = u_xlat30;
  u_xlat30 = ((x_1852 * 2.0f) + -1.0f);
  let x_1855 : f32 = u_xlat30;
  u_xlat1.x = ((x_1855 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_1861 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1861, 0.0f, 1.0f);
  let x_1865 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1865 * 2.0f) + -1.0f);
  let x_1869 : f32 = u_xlat30;
  u_xlat30 = (-(abs(x_1869)) + 1.0f);
  let x_1873 : f32 = u_xlat30;
  u_xlat30 = sqrt(x_1873);
  let x_1875 : f32 = u_xlat30;
  u_xlat30 = (-(x_1875) + 1.0f);
  let x_1878 : f32 = u_xlat30;
  let x_1880 : f32 = u_xlat1.x;
  u_xlat30 = (x_1878 * x_1880);
  let x_1882 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_1882.x, x_1882.y, x_1882.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1885 : vec4<f32> = u_xlat0;
  let x_1888 : vec3<f32> = max(abs(vec3<f32>(x_1885.x, x_1885.y, x_1885.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1889 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1888.x, x_1888.y, x_1888.z, x_1889.w);
  let x_1891 : vec4<f32> = u_xlat2;
  let x_1893 : vec3<f32> = log2(vec3<f32>(x_1891.x, x_1891.y, x_1891.z));
  let x_1894 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1893.x, x_1893.y, x_1893.z, x_1894.w);
  let x_1896 : vec4<f32> = u_xlat2;
  let x_1898 : vec3<f32> = (vec3<f32>(x_1896.x, x_1896.y, x_1896.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1899 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1898.x, x_1898.y, x_1898.z, x_1899.w);
  let x_1901 : vec4<f32> = u_xlat2;
  let x_1903 : vec3<f32> = exp2(vec3<f32>(x_1901.x, x_1901.y, x_1901.z));
  let x_1904 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1903.x, x_1903.y, x_1903.z, x_1904.w);
  let x_1906 : vec4<f32> = u_xlat2;
  let x_1909 : vec3<f32> = ((vec3<f32>(x_1906.x, x_1906.y, x_1906.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1910 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1909.x, x_1909.y, x_1909.z, x_1910.w);
  let x_1912 : vec4<f32> = u_xlat0;
  let x_1914 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1912.x, x_1912.y, x_1912.z, x_1912.x));
  u_xlatb0 = vec3<bool>(x_1914.x, x_1914.y, x_1914.z);
  let x_1917 : bool = u_xlatb0.x;
  if (x_1917) {
    let x_1922 : f32 = u_xlat1.x;
    x_1918 = x_1922;
  } else {
    let x_1925 : f32 = u_xlat2.x;
    x_1918 = x_1925;
  }
  let x_1926 : f32 = x_1918;
  u_xlat0.x = x_1926;
  let x_1929 : bool = u_xlatb0.y;
  if (x_1929) {
    let x_1934 : f32 = u_xlat1.y;
    x_1930 = x_1934;
  } else {
    let x_1937 : f32 = u_xlat2.y;
    x_1930 = x_1937;
  }
  let x_1938 : f32 = x_1930;
  u_xlat0.y = x_1938;
  let x_1941 : bool = u_xlatb0.z;
  if (x_1941) {
    let x_1946 : f32 = u_xlat1.z;
    x_1942 = x_1946;
  } else {
    let x_1949 : f32 = u_xlat2.z;
    x_1942 = x_1949;
  }
  let x_1950 : f32 = x_1942;
  u_xlat0.z = x_1950;
  let x_1952 : f32 = u_xlat30;
  let x_1957 : vec4<f32> = u_xlat0;
  let x_1959 : vec3<f32> = ((vec3<f32>(x_1952, x_1952, x_1952) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_1957.x, x_1957.y, x_1957.z));
  let x_1960 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1959.x, x_1959.y, x_1959.z, x_1960.w);
  let x_1962 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_1962.x, x_1962.y, x_1962.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1965 : vec4<f32> = u_xlat0;
  let x_1967 : vec3<f32> = (vec3<f32>(x_1965.x, x_1965.y, x_1965.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1968 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1967.x, x_1967.y, x_1967.z, x_1968.w);
  let x_1970 : vec4<f32> = u_xlat2;
  let x_1972 : vec3<f32> = (vec3<f32>(x_1970.x, x_1970.y, x_1970.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1973 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1972.x, x_1972.y, x_1972.z, x_1973.w);
  let x_1975 : vec4<f32> = u_xlat2;
  let x_1978 : vec3<f32> = max(abs(vec3<f32>(x_1975.x, x_1975.y, x_1975.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1979 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1978.x, x_1978.y, x_1978.z, x_1979.w);
  let x_1981 : vec4<f32> = u_xlat2;
  let x_1983 : vec3<f32> = log2(vec3<f32>(x_1981.x, x_1981.y, x_1981.z));
  let x_1984 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1983.x, x_1983.y, x_1983.z, x_1984.w);
  let x_1986 : vec4<f32> = u_xlat2;
  let x_1988 : vec3<f32> = (vec3<f32>(x_1986.x, x_1986.y, x_1986.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1989 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1988.x, x_1988.y, x_1988.z, x_1989.w);
  let x_1991 : vec4<f32> = u_xlat2;
  let x_1993 : vec3<f32> = exp2(vec3<f32>(x_1991.x, x_1991.y, x_1991.z));
  let x_1994 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1993.x, x_1993.y, x_1993.z, x_1994.w);
  let x_1996 : vec4<f32> = u_xlat0;
  let x_1998 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1996.x, x_1996.y, x_1996.z, x_1996.x));
  u_xlatb0 = vec3<bool>(x_1998.x, x_1998.y, x_1998.z);
  let x_2003 : bool = u_xlatb0.x;
  if (x_2003) {
    let x_2008 : f32 = u_xlat1.x;
    x_2004 = x_2008;
  } else {
    let x_2011 : f32 = u_xlat2.x;
    x_2004 = x_2011;
  }
  let x_2012 : f32 = x_2004;
  SV_Target0.x = x_2012;
  let x_2016 : bool = u_xlatb0.y;
  if (x_2016) {
    let x_2021 : f32 = u_xlat1.y;
    x_2017 = x_2021;
  } else {
    let x_2024 : f32 = u_xlat2.y;
    x_2017 = x_2024;
  }
  let x_2025 : f32 = x_2017;
  SV_Target0.y = x_2025;
  let x_2028 : bool = u_xlatb0.z;
  if (x_2028) {
    let x_2033 : f32 = u_xlat1.z;
    x_2029 = x_2033;
  } else {
    let x_2036 : f32 = u_xlat2.z;
    x_2029 = x_2036;
  }
  let x_2037 : f32 = x_2029;
  SV_Target0.z = x_2037;
  let x_2040 : f32 = u_xlat3.w;
  SV_Target0.w = x_2040;
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

