struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_Distortion_Amount : vec4<f32>,
  x_Distortion_CenterScale : vec4<f32>,
  x_BloomTex_TexelSize : vec4<f32>,
  x_Bloom_DirtTileOffset : vec4<f32>,
  x_Bloom_Settings : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_Bloom_Color : vec3<f32>,
  x_ChromaticAberration_Amount : f32,
  x_Lut2D_Params : vec3<f32>,
  x_LumaInAlpha : f32,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_26 : PGlobals;

@group(0) @binding(1) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_AutoExposureTex : sampler;

@group(0) @binding(4) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(10) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

@group(0) @binding(2) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_BloomTex : sampler;

@group(0) @binding(3) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_Bloom_DirtTex : sampler;

@group(0) @binding(5) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(11) var sampler_Lut2D : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat20 : vec2<f32>;
  var u_xlat1 : vec4<f32>;
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
  var u_xlatb1 : vec3<bool>;
  var x_471 : f32;
  var u_xlat9 : f32;
  var u_xlat18 : f32;
  var u_xlat28 : f32;
  var u_xlatb38 : bool;
  var x_698 : f32;
  var u_xlat11 : vec3<f32>;
  var u_xlat13 : f32;
  var u_xlatb7 : bool;
  var x_900 : f32;
  var u_xlatb3 : vec3<bool>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_1192 : f32;
  var x_1204 : f32;
  var x_1217 : f32;
  var x_1370 : f32;
  var x_1382 : f32;
  var x_1394 : f32;
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
  let x_60 : vec4<f32> = u_xlat0;
  let x_62 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec2<f32>(x_60.x, x_60.y), vec2<f32>(x_62.x, x_62.y));
  let x_70 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_70);
  let x_80 : f32 = x_26.x_Distortion_Amount.w;
  u_xlatb11 = (0.0f < x_80);
  let x_82 : bool = u_xlatb11;
  if (x_82) {
    let x_86 : vec4<f32> = u_xlat1;
    let x_89 : vec4<f32> = x_26.x_Distortion_Amount;
    u_xlat21 = (vec2<f32>(x_86.x, x_86.x) * vec2<f32>(x_89.x, x_89.y));
    let x_94 : f32 = u_xlat21.x;
    u_xlat2.x = sin(x_94);
    let x_99 : f32 = u_xlat21.x;
    u_xlat3.x = cos(x_99);
    let x_103 : f32 = u_xlat2.x;
    let x_105 : f32 = u_xlat3.x;
    u_xlat21.x = (x_103 / x_105);
    let x_112 : f32 = u_xlat21.y;
    u_xlat31 = (1.0f / x_112);
    let x_115 : f32 = u_xlat21.x;
    let x_116 : f32 = u_xlat31;
    u_xlat21.x = ((x_115 * x_116) + -1.0f);
    let x_121 : vec4<f32> = u_xlat0;
    let x_123 : vec2<f32> = u_xlat21;
    let x_126 : vec2<f32> = u_xlat20;
    u_xlat21 = ((vec2<f32>(x_121.x, x_121.y) * vec2<f32>(x_123.x, x_123.x)) + x_126);
  } else {
    let x_130 : f32 = u_xlat1.x;
    u_xlat2.x = (1.0f / x_130);
    let x_134 : f32 = u_xlat2.x;
    let x_136 : f32 = x_26.x_Distortion_Amount.x;
    u_xlat2.x = (x_134 * x_136);
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
    let x_339 : vec4<f32> = u_xlat1;
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
    let x_463 : f32 = u_xlat1.x;
    let x_465 : f32 = u_xlat1.x;
    u_xlatb1.x = (x_463 < -(x_465));
    let x_470 : bool = u_xlatb1.x;
    if (x_470) {
      let x_475 : f32 = u_xlat7.x;
      x_471 = -(x_475);
    } else {
      let x_479 : f32 = u_xlat7.x;
      x_471 = x_479;
    }
    let x_480 : f32 = x_471;
    u_xlat1.x = x_480;
    let x_482 : f32 = u_xlat32;
    let x_484 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_482 * x_484) + -1.0f);
    let x_488 : vec4<f32> = u_xlat0;
    let x_490 : vec4<f32> = u_xlat1;
    let x_493 : vec2<f32> = u_xlat20;
    let x_494 : vec2<f32> = ((vec2<f32>(x_488.x, x_488.y) * vec2<f32>(x_490.x, x_490.x)) + x_493);
    let x_495 : vec3<f32> = u_xlat12;
    u_xlat12 = vec3<f32>(x_494.x, x_494.y, x_495.z);
  }
  let x_497 : vec3<f32> = u_xlat12;
  let x_498 : vec2<f32> = vec2<f32>(x_497.x, x_497.y);
  let x_499 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_498.x, x_498.y, x_499.z);
  let x_501 : vec3<f32> = u_xlat12;
  let x_505 : vec2<f32> = clamp(vec2<f32>(x_501.x, x_501.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_506 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_505.x, x_505.y, x_506.z);
  let x_508 : vec3<f32> = u_xlat12;
  let x_512 : f32 = x_26.x_RenderViewportScaleFactor;
  let x_514 : vec2<f32> = (vec2<f32>(x_508.x, x_508.y) * vec2<f32>(x_512, x_512));
  let x_515 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_514.x, x_514.y, x_515.z, x_515.w);
  let x_522 : vec4<f32> = u_xlat0;
  let x_524 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_522.x, x_522.y), 0.0f);
  u_xlat0 = x_524;
  let x_525 : vec4<f32> = u_xlat3;
  let x_530 : vec2<f32> = vs_TEXCOORD0;
  u_xlat3 = ((x_525 * vec4<f32>(-0.333333343f, -0.333333343f, -0.666666687f, -0.666666687f)) + vec4<f32>(x_530.x, x_530.y, x_530.x, x_530.y));
  let x_533 : vec4<f32> = u_xlat3;
  u_xlat3 = (x_533 + vec4<f32>(-0.5f, -0.5f, -0.5f, -0.5f));
  let x_536 : vec4<f32> = u_xlat3;
  let x_538 : vec4<f32> = x_26.x_Distortion_Amount;
  u_xlat7 = ((x_536 * vec4<f32>(x_538.z, x_538.z, x_538.z, x_538.z)) + vec4<f32>(0.5f, 0.5f, 0.5f, 0.5f));
  let x_543 : vec4<f32> = u_xlat3;
  let x_545 : vec4<f32> = x_26.x_Distortion_Amount;
  let x_549 : vec4<f32> = x_26.x_Distortion_CenterScale;
  u_xlat3 = ((x_543 * vec4<f32>(x_545.z, x_545.z, x_545.z, x_545.z)) + -(vec4<f32>(x_549.x, x_549.y, x_549.x, x_549.y)));
  let x_553 : vec4<f32> = u_xlat3;
  let x_555 : vec4<f32> = x_26.x_Distortion_CenterScale;
  u_xlat3 = (x_553 * vec4<f32>(x_555.z, x_555.w, x_555.z, x_555.w));
  let x_558 : vec4<f32> = u_xlat3;
  let x_560 : vec4<f32> = u_xlat3;
  u_xlat1.x = dot(vec2<f32>(x_558.x, x_558.y), vec2<f32>(x_560.x, x_560.y));
  let x_565 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_565);
  let x_568 : bool = u_xlatb11;
  if (x_568) {
    let x_571 : vec4<f32> = u_xlat1;
    let x_574 : vec4<f32> = x_26.x_Distortion_Amount;
    let x_576 : vec2<f32> = (vec2<f32>(x_571.x, x_571.x) * vec2<f32>(x_574.x, x_574.y));
    let x_577 : vec3<f32> = u_xlat12;
    u_xlat12 = vec3<f32>(x_576.x, x_576.y, x_577.z);
    let x_580 : f32 = u_xlat12.x;
    u_xlat8.x = sin(x_580);
    let x_585 : f32 = u_xlat12.x;
    u_xlat9 = cos(x_585);
    let x_588 : f32 = u_xlat8.x;
    let x_589 : f32 = u_xlat9;
    u_xlat12.x = (x_588 / x_589);
    let x_593 : f32 = u_xlat12.y;
    u_xlat22 = (1.0f / x_593);
    let x_596 : f32 = u_xlat12.x;
    let x_597 : f32 = u_xlat22;
    u_xlat12.x = ((x_596 * x_597) + -1.0f);
    let x_601 : vec4<f32> = u_xlat3;
    let x_603 : vec3<f32> = u_xlat12;
    let x_606 : vec4<f32> = u_xlat7;
    let x_608 : vec2<f32> = ((vec2<f32>(x_601.x, x_601.y) * vec2<f32>(x_603.x, x_603.x)) + vec2<f32>(x_606.x, x_606.y));
    let x_609 : vec3<f32> = u_xlat12;
    u_xlat12 = vec3<f32>(x_608.x, x_608.y, x_609.z);
  } else {
    let x_613 : f32 = u_xlat1.x;
    u_xlat32 = (1.0f / x_613);
    let x_615 : f32 = u_xlat32;
    let x_617 : f32 = x_26.x_Distortion_Amount.x;
    u_xlat32 = (x_615 * x_617);
    let x_620 : f32 = u_xlat1.x;
    let x_622 : f32 = x_26.x_Distortion_Amount.y;
    u_xlat1.x = (x_620 * x_622);
    let x_626 : f32 = u_xlat1.x;
    u_xlat8.x = min(abs(x_626), 1.0f);
    let x_632 : f32 = u_xlat1.x;
    u_xlat18 = max(abs(x_632), 1.0f);
    let x_635 : f32 = u_xlat18;
    u_xlat18 = (1.0f / x_635);
    let x_637 : f32 = u_xlat18;
    let x_639 : f32 = u_xlat8.x;
    u_xlat8.x = (x_637 * x_639);
    let x_643 : f32 = u_xlat8.x;
    let x_645 : f32 = u_xlat8.x;
    u_xlat18 = (x_643 * x_645);
    let x_648 : f32 = u_xlat18;
    u_xlat28 = ((x_648 * 0.0208351f) + -0.085133001f);
    let x_651 : f32 = u_xlat18;
    let x_652 : f32 = u_xlat28;
    u_xlat28 = ((x_651 * x_652) + 0.180141002f);
    let x_655 : f32 = u_xlat18;
    let x_656 : f32 = u_xlat28;
    u_xlat28 = ((x_655 * x_656) + -0.330299497f);
    let x_659 : f32 = u_xlat18;
    let x_660 : f32 = u_xlat28;
    u_xlat18 = ((x_659 * x_660) + 0.999866009f);
    let x_663 : f32 = u_xlat18;
    let x_665 : f32 = u_xlat8.x;
    u_xlat28 = (x_663 * x_665);
    let x_669 : f32 = u_xlat1.x;
    u_xlatb38 = (1.0f < abs(x_669));
    let x_672 : f32 = u_xlat28;
    u_xlat28 = ((x_672 * -2.0f) + 1.570796371f);
    let x_675 : bool = u_xlatb38;
    let x_676 : f32 = u_xlat28;
    u_xlat28 = select(0.0f, x_676, x_675);
    let x_679 : f32 = u_xlat8.x;
    let x_680 : f32 = u_xlat18;
    let x_682 : f32 = u_xlat28;
    u_xlat8.x = ((x_679 * x_680) + x_682);
    let x_686 : f32 = u_xlat1.x;
    u_xlat1.x = min(x_686, 1.0f);
    let x_690 : f32 = u_xlat1.x;
    let x_692 : f32 = u_xlat1.x;
    u_xlatb1.x = (x_690 < -(x_692));
    let x_697 : bool = u_xlatb1.x;
    if (x_697) {
      let x_702 : f32 = u_xlat8.x;
      x_698 = -(x_702);
    } else {
      let x_706 : f32 = u_xlat8.x;
      x_698 = x_706;
    }
    let x_707 : f32 = x_698;
    u_xlat1.x = x_707;
    let x_709 : f32 = u_xlat32;
    let x_711 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_709 * x_711) + -1.0f);
    let x_715 : vec4<f32> = u_xlat3;
    let x_717 : vec4<f32> = u_xlat1;
    let x_720 : vec4<f32> = u_xlat7;
    let x_722 : vec2<f32> = ((vec2<f32>(x_715.x, x_715.y) * vec2<f32>(x_717.x, x_717.x)) + vec2<f32>(x_720.x, x_720.y));
    let x_723 : vec3<f32> = u_xlat12;
    u_xlat12 = vec3<f32>(x_722.x, x_722.y, x_723.z);
  }
  let x_725 : vec3<f32> = u_xlat12;
  let x_726 : vec2<f32> = vec2<f32>(x_725.x, x_725.y);
  let x_727 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_726.x, x_726.y, x_727.z);
  let x_729 : vec3<f32> = u_xlat12;
  let x_733 : vec2<f32> = clamp(vec2<f32>(x_729.x, x_729.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_734 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_733.x, x_733.y, x_734.z);
  let x_736 : vec3<f32> = u_xlat12;
  let x_739 : f32 = x_26.x_RenderViewportScaleFactor;
  let x_741 : vec2<f32> = (vec2<f32>(x_736.x, x_736.y) * vec2<f32>(x_739, x_739));
  let x_742 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_741.x, x_741.y, x_742.z);
  let x_747 : vec3<f32> = u_xlat12;
  let x_749 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_747.x, x_747.y), 0.0f);
  u_xlat8 = x_749;
  let x_750 : vec4<f32> = u_xlat3;
  let x_752 : vec4<f32> = u_xlat3;
  u_xlat1.x = dot(vec2<f32>(x_750.z, x_750.w), vec2<f32>(x_752.z, x_752.w));
  let x_757 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_757);
  let x_760 : bool = u_xlatb11;
  if (x_760) {
    let x_763 : vec4<f32> = u_xlat1;
    let x_766 : vec4<f32> = x_26.x_Distortion_Amount;
    let x_768 : vec2<f32> = (vec2<f32>(x_763.x, x_763.x) * vec2<f32>(x_766.x, x_766.y));
    let x_769 : vec3<f32> = u_xlat12;
    u_xlat12 = vec3<f32>(x_768.x, x_768.y, x_769.z);
    let x_772 : f32 = u_xlat12.x;
    u_xlat3.x = sin(x_772);
    let x_776 : f32 = u_xlat12.x;
    u_xlat7.x = cos(x_776);
    let x_781 : f32 = u_xlat3.x;
    let x_783 : f32 = u_xlat7.x;
    u_xlat11.x = (x_781 / x_783);
    let x_787 : f32 = u_xlat12.y;
    u_xlat12.x = (1.0f / x_787);
    let x_791 : f32 = u_xlat11.x;
    let x_793 : f32 = u_xlat12.x;
    u_xlat11.x = ((x_791 * x_793) + -1.0f);
    let x_797 : vec4<f32> = u_xlat3;
    let x_799 : vec3<f32> = u_xlat11;
    let x_802 : vec4<f32> = u_xlat7;
    let x_804 : vec2<f32> = ((vec2<f32>(x_797.z, x_797.w) * vec2<f32>(x_799.x, x_799.x)) + vec2<f32>(x_802.z, x_802.w));
    let x_805 : vec3<f32> = u_xlat12;
    u_xlat12 = vec3<f32>(x_804.x, x_804.y, x_805.z);
  } else {
    let x_809 : f32 = u_xlat1.x;
    u_xlat11.x = (1.0f / x_809);
    let x_813 : f32 = u_xlat11.x;
    let x_815 : f32 = x_26.x_Distortion_Amount.x;
    u_xlat11.x = (x_813 * x_815);
    let x_819 : f32 = u_xlat1.x;
    let x_821 : f32 = x_26.x_Distortion_Amount.y;
    u_xlat1.x = (x_819 * x_821);
    let x_825 : f32 = u_xlat1.x;
    u_xlat32 = min(abs(x_825), 1.0f);
    let x_829 : f32 = u_xlat1.x;
    u_xlat3.x = max(abs(x_829), 1.0f);
    let x_834 : f32 = u_xlat3.x;
    u_xlat3.x = (1.0f / x_834);
    let x_837 : f32 = u_xlat32;
    let x_839 : f32 = u_xlat3.x;
    u_xlat32 = (x_837 * x_839);
    let x_841 : f32 = u_xlat32;
    let x_842 : f32 = u_xlat32;
    u_xlat3.x = (x_841 * x_842);
    let x_847 : f32 = u_xlat3.x;
    u_xlat13 = ((x_847 * 0.0208351f) + -0.085133001f);
    let x_851 : f32 = u_xlat3.x;
    let x_852 : f32 = u_xlat13;
    u_xlat13 = ((x_851 * x_852) + 0.180141002f);
    let x_856 : f32 = u_xlat3.x;
    let x_857 : f32 = u_xlat13;
    u_xlat13 = ((x_856 * x_857) + -0.330299497f);
    let x_861 : f32 = u_xlat3.x;
    let x_862 : f32 = u_xlat13;
    u_xlat3.x = ((x_861 * x_862) + 0.999866009f);
    let x_866 : f32 = u_xlat32;
    let x_868 : f32 = u_xlat3.x;
    u_xlat13 = (x_866 * x_868);
    let x_872 : f32 = u_xlat1.x;
    u_xlatb7 = (1.0f < abs(x_872));
    let x_875 : f32 = u_xlat13;
    u_xlat13 = ((x_875 * -2.0f) + 1.570796371f);
    let x_878 : bool = u_xlatb7;
    let x_879 : f32 = u_xlat13;
    u_xlat13 = select(0.0f, x_879, x_878);
    let x_881 : f32 = u_xlat32;
    let x_883 : f32 = u_xlat3.x;
    let x_885 : f32 = u_xlat13;
    u_xlat32 = ((x_881 * x_883) + x_885);
    let x_888 : f32 = u_xlat1.x;
    u_xlat1.x = min(x_888, 1.0f);
    let x_892 : f32 = u_xlat1.x;
    let x_894 : f32 = u_xlat1.x;
    u_xlatb1.x = (x_892 < -(x_894));
    let x_899 : bool = u_xlatb1.x;
    if (x_899) {
      let x_903 : f32 = u_xlat32;
      x_900 = -(x_903);
    } else {
      let x_906 : f32 = u_xlat32;
      x_900 = x_906;
    }
    let x_907 : f32 = x_900;
    u_xlat1.x = x_907;
    let x_910 : f32 = u_xlat11.x;
    let x_912 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_910 * x_912) + -1.0f);
    let x_916 : vec4<f32> = u_xlat3;
    let x_918 : vec4<f32> = u_xlat1;
    let x_921 : vec4<f32> = u_xlat7;
    let x_923 : vec2<f32> = ((vec2<f32>(x_916.z, x_916.w) * vec2<f32>(x_918.x, x_918.x)) + vec2<f32>(x_921.z, x_921.w));
    let x_924 : vec3<f32> = u_xlat12;
    u_xlat12 = vec3<f32>(x_923.x, x_923.y, x_924.z);
  }
  let x_926 : vec3<f32> = u_xlat12;
  let x_927 : vec2<f32> = vec2<f32>(x_926.x, x_926.y);
  let x_928 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_927.x, x_927.y, x_928.z);
  let x_930 : vec3<f32> = u_xlat12;
  let x_934 : vec2<f32> = clamp(vec2<f32>(x_930.x, x_930.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_935 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_934.x, x_934.y, x_935.z);
  let x_937 : vec3<f32> = u_xlat12;
  let x_940 : f32 = x_26.x_RenderViewportScaleFactor;
  let x_942 : vec2<f32> = (vec2<f32>(x_937.x, x_937.y) * vec2<f32>(x_940, x_940));
  let x_943 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_942.x, x_942.y, x_943.z, x_943.w);
  let x_948 : vec4<f32> = u_xlat1;
  let x_950 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_948.x, x_948.y), 0.0f);
  u_xlat3 = x_950;
  u_xlat4.w = 1.0f;
  u_xlat5.w = 1.0f;
  let x_953 : vec4<f32> = u_xlat5;
  let x_954 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_953 * x_954);
  let x_956 : vec4<f32> = u_xlat0;
  let x_957 : vec4<f32> = u_xlat4;
  let x_959 : vec4<f32> = u_xlat7;
  u_xlat0 = ((x_956 * x_957) + x_959);
  u_xlat6.w = 1.0f;
  let x_962 : vec4<f32> = u_xlat3;
  let x_963 : vec4<f32> = u_xlat6;
  let x_965 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_962 * x_963) + x_965);
  let x_967 : vec4<f32> = u_xlat4;
  let x_969 : vec4<f32> = u_xlat5;
  u_xlat12 = (vec3<f32>(x_967.x, x_967.y, x_967.z) + vec3<f32>(x_969.x, x_969.y, x_969.z));
  let x_972 : vec4<f32> = u_xlat6;
  let x_974 : vec3<f32> = u_xlat12;
  let x_975 : vec3<f32> = (vec3<f32>(x_972.x, x_972.y, x_972.z) + x_974);
  let x_976 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_975.x, x_975.y, x_975.z, x_976.w);
  u_xlat3.w = 3.0f;
  let x_980 : vec4<f32> = u_xlat0;
  let x_981 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_980 / x_981);
  let x_983 : vec4<f32> = u_xlat2;
  let x_985 : vec4<f32> = u_xlat0;
  let x_987 : vec3<f32> = (vec3<f32>(x_983.x, x_983.x, x_983.x) * vec3<f32>(x_985.x, x_985.y, x_985.z));
  let x_988 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_987.x, x_987.y, x_987.z, x_988.w);
  let x_992 : vec4<f32> = x_26.x_BloomTex_TexelSize;
  u_xlat2 = (vec4<f32>(x_992.x, x_992.y, x_992.x, x_992.y) * vec4<f32>(-1.0f, -1.0f, 1.0f, 1.0f));
  let x_998 : f32 = x_26.x_Bloom_Settings.x;
  u_xlat1.x = (x_998 * 0.5f);
  let x_1001 : vec4<f32> = u_xlat2;
  let x_1003 : vec4<f32> = u_xlat1;
  let x_1006 : vec2<f32> = u_xlat21;
  u_xlat3 = ((vec4<f32>(x_1001.x, x_1001.y, x_1001.z, x_1001.y) * vec4<f32>(x_1003.x, x_1003.x, x_1003.x, x_1003.x)) + vec4<f32>(x_1006.x, x_1006.y, x_1006.x, x_1006.y));
  let x_1009 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_1009, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_1013 : vec4<f32> = u_xlat3;
  let x_1015 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat3 = (x_1013 * vec4<f32>(x_1015, x_1015, x_1015, x_1015));
  let x_1023 : vec4<f32> = u_xlat3;
  let x_1025 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_1023.x, x_1023.y));
  u_xlat4 = x_1025;
  let x_1029 : vec4<f32> = u_xlat3;
  let x_1031 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_1029.z, x_1029.w));
  u_xlat3 = x_1031;
  let x_1032 : vec4<f32> = u_xlat3;
  let x_1033 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_1032 + x_1033);
  let x_1035 : vec4<f32> = u_xlat2;
  let x_1037 : vec4<f32> = u_xlat1;
  let x_1040 : vec2<f32> = u_xlat21;
  u_xlat2 = ((vec4<f32>(x_1035.x, x_1035.w, x_1035.z, x_1035.w) * vec4<f32>(x_1037.x, x_1037.x, x_1037.x, x_1037.x)) + vec4<f32>(x_1040.x, x_1040.y, x_1040.x, x_1040.y));
  let x_1043 : vec4<f32> = u_xlat2;
  u_xlat2 = clamp(x_1043, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_1047 : vec4<f32> = u_xlat2;
  let x_1049 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat2 = (x_1047 * vec4<f32>(x_1049, x_1049, x_1049, x_1049));
  let x_1055 : vec4<f32> = u_xlat2;
  let x_1057 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_1055.x, x_1055.y));
  u_xlat4 = x_1057;
  let x_1058 : vec4<f32> = u_xlat3;
  let x_1059 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_1058 + x_1059);
  let x_1064 : vec4<f32> = u_xlat2;
  let x_1066 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_1064.z, x_1064.w));
  u_xlat2 = x_1066;
  let x_1067 : vec4<f32> = u_xlat2;
  let x_1068 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_1067 + x_1068);
  let x_1070 : vec4<f32> = u_xlat2;
  let x_1073 : vec3<f32> = x_26.x_Bloom_Settings;
  u_xlat2 = (x_1070 * vec4<f32>(x_1073.y, x_1073.y, x_1073.y, x_1073.y));
  let x_1076 : vec2<f32> = u_xlat21;
  let x_1079 : vec4<f32> = x_26.x_Bloom_DirtTileOffset;
  let x_1083 : vec4<f32> = x_26.x_Bloom_DirtTileOffset;
  let x_1085 : vec2<f32> = ((x_1076 * vec2<f32>(x_1079.x, x_1079.y)) + vec2<f32>(x_1083.z, x_1083.w));
  let x_1086 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1085.x, x_1085.y, x_1086.z, x_1086.w);
  let x_1093 : vec4<f32> = u_xlat1;
  let x_1095 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_1093.x, x_1093.y));
  let x_1096 : vec3<f32> = vec3<f32>(x_1095.x, x_1095.y, x_1095.z);
  let x_1097 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1096.x, x_1096.y, x_1096.z, x_1097.w);
  let x_1099 : vec4<f32> = u_xlat2;
  u_xlat3 = (x_1099 * vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
  let x_1103 : vec4<f32> = u_xlat1;
  let x_1106 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_1108 : vec3<f32> = (vec3<f32>(x_1103.x, x_1103.y, x_1103.z) * vec3<f32>(x_1106.z, x_1106.z, x_1106.z));
  let x_1109 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1108.x, x_1108.y, x_1108.z, x_1109.w);
  u_xlat1.w = 0.0f;
  let x_1112 : vec4<f32> = u_xlat2;
  u_xlat2 = (x_1112 * vec4<f32>(0.25f, 0.25f, 0.25f, 1.0f));
  let x_1115 : vec4<f32> = u_xlat2;
  let x_1119 : vec3<f32> = x_26.x_Bloom_Color;
  let x_1120 : vec3<f32> = (vec3<f32>(x_1115.x, x_1115.y, x_1115.z) * x_1119);
  let x_1121 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1120.x, x_1120.y, x_1120.z, x_1121.w);
  let x_1124 : f32 = u_xlat2.w;
  u_xlat4.w = (x_1124 * 0.25f);
  let x_1127 : vec4<f32> = u_xlat0;
  let x_1128 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_1127 + x_1128);
  let x_1130 : vec4<f32> = u_xlat1;
  let x_1131 : vec4<f32> = u_xlat3;
  let x_1133 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_1130 * x_1131) + x_1133);
  let x_1135 : vec4<f32> = u_xlat0;
  u_xlat0 = clamp(x_1135, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_1139 : vec4<f32> = u_xlat0;
  let x_1143 : vec3<f32> = (vec3<f32>(x_1139.z, x_1139.x, x_1139.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1144 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1143.x, x_1143.y, x_1143.z, x_1144.w);
  let x_1146 : vec4<f32> = u_xlat0;
  let x_1150 : vec3<f32> = max(vec3<f32>(x_1146.z, x_1146.x, x_1146.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1151 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1150.x, x_1150.y, x_1150.z, x_1151.w);
  let x_1153 : vec4<f32> = u_xlat2;
  let x_1155 : vec3<f32> = log2(vec3<f32>(x_1153.x, x_1153.y, x_1153.z));
  let x_1156 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1155.x, x_1155.y, x_1155.z, x_1156.w);
  let x_1158 : vec4<f32> = u_xlat2;
  let x_1162 : vec3<f32> = (vec3<f32>(x_1158.x, x_1158.y, x_1158.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1163 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1162.x, x_1162.y, x_1162.z, x_1163.w);
  let x_1165 : vec4<f32> = u_xlat2;
  let x_1167 : vec3<f32> = exp2(vec3<f32>(x_1165.x, x_1165.y, x_1165.z));
  let x_1168 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1167.x, x_1167.y, x_1167.z, x_1168.w);
  let x_1170 : vec4<f32> = u_xlat2;
  let x_1177 : vec3<f32> = ((vec3<f32>(x_1170.x, x_1170.y, x_1170.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1178 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1177.x, x_1177.y, x_1177.z, x_1178.w);
  let x_1183 : vec4<f32> = u_xlat0;
  let x_1186 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1183.z, x_1183.x, x_1183.y, x_1183.z));
  u_xlatb3 = vec3<bool>(x_1186.x, x_1186.y, x_1186.z);
  let x_1189 : vec4<f32> = u_xlat1;
  hlslcc_movcTemp = x_1189;
  let x_1191 : bool = u_xlatb3.x;
  if (x_1191) {
    let x_1196 : f32 = u_xlat1.x;
    x_1192 = x_1196;
  } else {
    let x_1199 : f32 = u_xlat2.x;
    x_1192 = x_1199;
  }
  let x_1200 : f32 = x_1192;
  hlslcc_movcTemp.x = x_1200;
  let x_1203 : bool = u_xlatb3.y;
  if (x_1203) {
    let x_1208 : f32 = u_xlat1.y;
    x_1204 = x_1208;
  } else {
    let x_1211 : f32 = u_xlat2.y;
    x_1204 = x_1211;
  }
  let x_1212 : f32 = x_1204;
  hlslcc_movcTemp.y = x_1212;
  let x_1216 : bool = u_xlatb3.z;
  if (x_1216) {
    let x_1221 : f32 = u_xlat1.z;
    x_1217 = x_1221;
  } else {
    let x_1224 : f32 = u_xlat2.z;
    x_1217 = x_1224;
  }
  let x_1225 : f32 = x_1217;
  hlslcc_movcTemp.z = x_1225;
  let x_1227 : vec4<f32> = hlslcc_movcTemp;
  u_xlat1 = x_1227;
  let x_1228 : vec4<f32> = u_xlat1;
  let x_1232 : vec3<f32> = x_26.x_Lut2D_Params;
  u_xlat11 = (vec3<f32>(x_1228.x, x_1228.y, x_1228.z) * vec3<f32>(x_1232.z, x_1232.z, x_1232.z));
  let x_1236 : f32 = u_xlat11.x;
  u_xlat11.x = floor(x_1236);
  let x_1240 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_1242 : vec2<f32> = (vec2<f32>(x_1240.x, x_1240.y) * vec2<f32>(0.5f, 0.5f));
  let x_1243 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1242.x, x_1242.y, x_1243.z, x_1243.w);
  let x_1245 : vec3<f32> = u_xlat11;
  let x_1248 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_1251 : vec4<f32> = u_xlat2;
  let x_1253 : vec2<f32> = ((vec2<f32>(x_1245.y, x_1245.z) * vec2<f32>(x_1248.x, x_1248.y)) + vec2<f32>(x_1251.x, x_1251.y));
  let x_1254 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1254.x, x_1253.x, x_1253.y, x_1254.w);
  let x_1257 : f32 = u_xlat11.x;
  let x_1259 : f32 = x_26.x_Lut2D_Params.y;
  let x_1262 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_1257 * x_1259) + x_1262);
  let x_1270 : vec4<f32> = u_xlat2;
  let x_1272 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_1270.x, x_1270.z));
  let x_1273 : vec3<f32> = vec3<f32>(x_1272.x, x_1272.y, x_1272.z);
  let x_1274 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1273.x, x_1273.y, x_1273.z, x_1274.w);
  let x_1277 : f32 = x_26.x_Lut2D_Params.y;
  u_xlat4.x = x_1277;
  u_xlat4.y = 0.0f;
  let x_1280 : vec4<f32> = u_xlat2;
  let x_1282 : vec4<f32> = u_xlat4;
  u_xlat21 = (vec2<f32>(x_1280.x, x_1280.z) + vec2<f32>(x_1282.x, x_1282.y));
  let x_1288 : vec2<f32> = u_xlat21;
  let x_1289 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_1288);
  let x_1290 : vec3<f32> = vec3<f32>(x_1289.x, x_1289.y, x_1289.z);
  let x_1291 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1290.x, x_1290.y, x_1290.z, x_1291.w);
  let x_1294 : f32 = u_xlat1.x;
  let x_1296 : f32 = x_26.x_Lut2D_Params.z;
  let x_1299 : f32 = u_xlat11.x;
  u_xlat1.x = ((x_1294 * x_1296) + -(x_1299));
  let x_1303 : vec4<f32> = u_xlat3;
  let x_1306 : vec4<f32> = u_xlat2;
  u_xlat11 = (-(vec3<f32>(x_1303.x, x_1303.y, x_1303.z)) + vec3<f32>(x_1306.x, x_1306.y, x_1306.z));
  let x_1309 : vec4<f32> = u_xlat1;
  let x_1311 : vec3<f32> = u_xlat11;
  let x_1313 : vec4<f32> = u_xlat3;
  let x_1315 : vec3<f32> = ((vec3<f32>(x_1309.x, x_1309.x, x_1309.x) * x_1311) + vec3<f32>(x_1313.x, x_1313.y, x_1313.z));
  let x_1316 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1315.x, x_1315.y, x_1315.z, x_1316.w);
  let x_1318 : vec4<f32> = u_xlat1;
  let x_1322 : vec3<f32> = (vec3<f32>(x_1318.x, x_1318.y, x_1318.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1323 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1322.x, x_1322.y, x_1322.z, x_1323.w);
  let x_1325 : vec4<f32> = u_xlat1;
  let x_1329 : vec3<f32> = (vec3<f32>(x_1325.x, x_1325.y, x_1325.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1330 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1329.x, x_1329.y, x_1329.z, x_1330.w);
  let x_1332 : vec4<f32> = u_xlat3;
  let x_1336 : vec3<f32> = (vec3<f32>(x_1332.x, x_1332.y, x_1332.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1337 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1336.x, x_1336.y, x_1336.z, x_1337.w);
  let x_1339 : vec4<f32> = u_xlat3;
  let x_1342 : vec3<f32> = max(abs(vec3<f32>(x_1339.x, x_1339.y, x_1339.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1343 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1342.x, x_1342.y, x_1342.z, x_1343.w);
  let x_1345 : vec4<f32> = u_xlat3;
  let x_1347 : vec3<f32> = log2(vec3<f32>(x_1345.x, x_1345.y, x_1345.z));
  let x_1348 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1347.x, x_1347.y, x_1347.z, x_1348.w);
  let x_1350 : vec4<f32> = u_xlat3;
  let x_1354 : vec3<f32> = (vec3<f32>(x_1350.x, x_1350.y, x_1350.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1355 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1354.x, x_1354.y, x_1354.z, x_1355.w);
  let x_1357 : vec4<f32> = u_xlat3;
  let x_1359 : vec3<f32> = exp2(vec3<f32>(x_1357.x, x_1357.y, x_1357.z));
  let x_1360 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1359.x, x_1359.y, x_1359.z, x_1360.w);
  let x_1364 : vec4<f32> = u_xlat1;
  let x_1366 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1364.x, x_1364.y, x_1364.z, x_1364.x));
  u_xlatb1 = vec3<bool>(x_1366.x, x_1366.y, x_1366.z);
  let x_1369 : bool = u_xlatb1.x;
  if (x_1369) {
    let x_1374 : f32 = u_xlat2.x;
    x_1370 = x_1374;
  } else {
    let x_1377 : f32 = u_xlat3.x;
    x_1370 = x_1377;
  }
  let x_1378 : f32 = x_1370;
  u_xlat0.x = x_1378;
  let x_1381 : bool = u_xlatb1.y;
  if (x_1381) {
    let x_1386 : f32 = u_xlat2.y;
    x_1382 = x_1386;
  } else {
    let x_1389 : f32 = u_xlat3.y;
    x_1382 = x_1389;
  }
  let x_1390 : f32 = x_1382;
  u_xlat0.y = x_1390;
  let x_1393 : bool = u_xlatb1.z;
  if (x_1393) {
    let x_1398 : f32 = u_xlat2.z;
    x_1394 = x_1398;
  } else {
    let x_1401 : f32 = u_xlat3.z;
    x_1394 = x_1401;
  }
  let x_1402 : f32 = x_1394;
  u_xlat0.z = x_1402;
  let x_1406 : f32 = x_26.x_LumaInAlpha;
  u_xlatb1.x = (0.5f < x_1406);
  let x_1410 : bool = u_xlatb1.x;
  if (x_1410) {
    let x_1413 : vec4<f32> = u_xlat0;
    let x_1414 : vec3<f32> = vec3<f32>(x_1413.x, x_1413.y, x_1413.z);
    let x_1415 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1414.x, x_1414.y, x_1414.z, x_1415.w);
    let x_1417 : vec4<f32> = u_xlat1;
    let x_1421 : vec3<f32> = clamp(vec3<f32>(x_1417.x, x_1417.y, x_1417.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_1422 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1421.x, x_1421.y, x_1421.z, x_1422.w);
    let x_1424 : vec4<f32> = u_xlat1;
    u_xlat0.w = dot(vec3<f32>(x_1424.x, x_1424.y, x_1424.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_1434 : vec4<f32> = u_xlat0;
  SV_Target0 = x_1434;
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

