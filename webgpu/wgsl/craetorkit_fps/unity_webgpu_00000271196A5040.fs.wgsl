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
  @size(4)
  padding_2 : u32,
  x_Grain_Params1 : vec2<f32>,
  @size(8)
  padding_3 : u32,
  x_Grain_Params2 : vec4<f32>,
  x_LumaInAlpha : f32,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_26 : PGlobals;

@group(0) @binding(1) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_AutoExposureTex : sampler;

@group(0) @binding(4) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(11) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

@group(0) @binding(2) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_BloomTex : sampler;

@group(0) @binding(3) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_Bloom_DirtTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(6) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(13) var sampler_GrainTex : sampler;

@group(0) @binding(5) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(12) var sampler_Lut2D : sampler;

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
  var x_1279 : f32;
  var x_1291 : f32;
  var x_1304 : f32;
  var x_1456 : f32;
  var x_1468 : f32;
  var x_1480 : f32;
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
  let x_1136 : vec2<f32> = vs_TEXCOORD1;
  let x_1139 : vec4<f32> = x_26.x_Grain_Params2;
  let x_1143 : vec4<f32> = x_26.x_Grain_Params2;
  let x_1145 : vec2<f32> = ((x_1136 * vec2<f32>(x_1139.x, x_1139.y)) + vec2<f32>(x_1143.z, x_1143.w));
  let x_1146 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1145.x, x_1145.y, x_1146.z, x_1146.w);
  let x_1153 : vec4<f32> = u_xlat1;
  let x_1155 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_1153.x, x_1153.y));
  let x_1156 : vec3<f32> = vec3<f32>(x_1155.x, x_1155.y, x_1155.z);
  let x_1157 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1156.x, x_1156.y, x_1156.z, x_1157.w);
  let x_1159 : vec4<f32> = u_xlat0;
  let x_1160 : vec3<f32> = vec3<f32>(x_1159.x, x_1159.y, x_1159.z);
  let x_1161 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1160.x, x_1160.y, x_1160.z, x_1161.w);
  let x_1163 : vec4<f32> = u_xlat2;
  let x_1167 : vec3<f32> = clamp(vec3<f32>(x_1163.x, x_1163.y, x_1163.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1168 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1167.x, x_1167.y, x_1167.z, x_1168.w);
  let x_1170 : vec4<f32> = u_xlat2;
  u_xlat31 = dot(vec3<f32>(x_1170.x, x_1170.y, x_1170.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_1177 : f32 = u_xlat31;
  u_xlat31 = sqrt(x_1177);
  let x_1181 : f32 = x_26.x_Grain_Params1.x;
  let x_1182 : f32 = u_xlat31;
  u_xlat31 = ((x_1181 * -(x_1182)) + 1.0f);
  let x_1186 : vec4<f32> = u_xlat0;
  let x_1188 : vec4<f32> = u_xlat1;
  let x_1190 : vec3<f32> = (vec3<f32>(x_1186.x, x_1186.y, x_1186.z) * vec3<f32>(x_1188.x, x_1188.y, x_1188.z));
  let x_1191 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1190.x, x_1190.y, x_1190.z, x_1191.w);
  let x_1193 : vec4<f32> = u_xlat1;
  let x_1196 : f32 = x_26.x_Grain_Params1.y;
  let x_1198 : f32 = x_26.x_Grain_Params1.y;
  let x_1200 : f32 = x_26.x_Grain_Params1.y;
  let x_1202 : vec3<f32> = (vec3<f32>(x_1193.x, x_1193.y, x_1193.z) * vec3<f32>(x_1196, x_1198, x_1200));
  let x_1203 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1202.x, x_1202.y, x_1202.z, x_1203.w);
  let x_1205 : vec4<f32> = u_xlat1;
  let x_1207 : f32 = u_xlat31;
  let x_1210 : vec4<f32> = u_xlat0;
  let x_1212 : vec3<f32> = ((vec3<f32>(x_1205.x, x_1205.y, x_1205.z) * vec3<f32>(x_1207, x_1207, x_1207)) + vec3<f32>(x_1210.x, x_1210.y, x_1210.z));
  let x_1213 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1212.x, x_1212.y, x_1212.z, x_1213.w);
  let x_1215 : vec4<f32> = u_xlat1;
  let x_1219 : vec3<f32> = clamp(vec3<f32>(x_1215.x, x_1215.y, x_1215.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1220 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1219.x, x_1219.y, x_1219.z, x_1220.w);
  let x_1223 : f32 = u_xlat0.w;
  u_xlat0.w = x_1223;
  let x_1226 : f32 = u_xlat0.w;
  u_xlat0.w = clamp(x_1226, 0.0f, 1.0f);
  let x_1229 : vec4<f32> = u_xlat1;
  let x_1233 : vec3<f32> = (vec3<f32>(x_1229.z, x_1229.x, x_1229.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1234 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1233.x, x_1233.y, x_1233.z, x_1234.w);
  let x_1236 : vec4<f32> = u_xlat1;
  let x_1240 : vec3<f32> = max(vec3<f32>(x_1236.z, x_1236.x, x_1236.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1241 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1240.x, x_1240.y, x_1240.z, x_1241.w);
  let x_1243 : vec4<f32> = u_xlat3;
  let x_1245 : vec3<f32> = log2(vec3<f32>(x_1243.x, x_1243.y, x_1243.z));
  let x_1246 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1245.x, x_1245.y, x_1245.z, x_1246.w);
  let x_1248 : vec4<f32> = u_xlat3;
  let x_1252 : vec3<f32> = (vec3<f32>(x_1248.x, x_1248.y, x_1248.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1253 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1252.x, x_1252.y, x_1252.z, x_1253.w);
  let x_1255 : vec4<f32> = u_xlat3;
  let x_1257 : vec3<f32> = exp2(vec3<f32>(x_1255.x, x_1255.y, x_1255.z));
  let x_1258 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1257.x, x_1257.y, x_1257.z, x_1258.w);
  let x_1260 : vec4<f32> = u_xlat3;
  let x_1267 : vec3<f32> = ((vec3<f32>(x_1260.x, x_1260.y, x_1260.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1268 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1267.x, x_1267.y, x_1267.z, x_1268.w);
  let x_1272 : vec4<f32> = u_xlat1;
  let x_1275 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1272.z, x_1272.x, x_1272.y, x_1272.z));
  u_xlatb1 = vec3<bool>(x_1275.x, x_1275.y, x_1275.z);
  let x_1278 : bool = u_xlatb1.x;
  if (x_1278) {
    let x_1283 : f32 = u_xlat2.x;
    x_1279 = x_1283;
  } else {
    let x_1286 : f32 = u_xlat3.x;
    x_1279 = x_1286;
  }
  let x_1287 : f32 = x_1279;
  u_xlat1.x = x_1287;
  let x_1290 : bool = u_xlatb1.y;
  if (x_1290) {
    let x_1295 : f32 = u_xlat2.y;
    x_1291 = x_1295;
  } else {
    let x_1298 : f32 = u_xlat3.y;
    x_1291 = x_1298;
  }
  let x_1299 : f32 = x_1291;
  u_xlat1.y = x_1299;
  let x_1303 : bool = u_xlatb1.z;
  if (x_1303) {
    let x_1308 : f32 = u_xlat2.z;
    x_1304 = x_1308;
  } else {
    let x_1311 : f32 = u_xlat3.z;
    x_1304 = x_1311;
  }
  let x_1312 : f32 = x_1304;
  u_xlat1.z = x_1312;
  let x_1314 : vec4<f32> = u_xlat1;
  let x_1318 : vec3<f32> = x_26.x_Lut2D_Params;
  u_xlat11 = (vec3<f32>(x_1314.x, x_1314.y, x_1314.z) * vec3<f32>(x_1318.z, x_1318.z, x_1318.z));
  let x_1322 : f32 = u_xlat11.x;
  u_xlat11.x = floor(x_1322);
  let x_1326 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_1328 : vec2<f32> = (vec2<f32>(x_1326.x, x_1326.y) * vec2<f32>(0.5f, 0.5f));
  let x_1329 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1328.x, x_1328.y, x_1329.z, x_1329.w);
  let x_1331 : vec3<f32> = u_xlat11;
  let x_1334 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_1337 : vec4<f32> = u_xlat2;
  let x_1339 : vec2<f32> = ((vec2<f32>(x_1331.y, x_1331.z) * vec2<f32>(x_1334.x, x_1334.y)) + vec2<f32>(x_1337.x, x_1337.y));
  let x_1340 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1340.x, x_1339.x, x_1339.y, x_1340.w);
  let x_1343 : f32 = u_xlat11.x;
  let x_1345 : f32 = x_26.x_Lut2D_Params.y;
  let x_1348 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_1343 * x_1345) + x_1348);
  let x_1356 : vec4<f32> = u_xlat2;
  let x_1358 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_1356.x, x_1356.z));
  let x_1359 : vec3<f32> = vec3<f32>(x_1358.x, x_1358.y, x_1358.z);
  let x_1360 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1359.x, x_1359.y, x_1359.z, x_1360.w);
  let x_1363 : f32 = x_26.x_Lut2D_Params.y;
  u_xlat4.x = x_1363;
  u_xlat4.y = 0.0f;
  let x_1366 : vec4<f32> = u_xlat2;
  let x_1368 : vec4<f32> = u_xlat4;
  u_xlat21 = (vec2<f32>(x_1366.x, x_1366.z) + vec2<f32>(x_1368.x, x_1368.y));
  let x_1374 : vec2<f32> = u_xlat21;
  let x_1375 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_1374);
  let x_1376 : vec3<f32> = vec3<f32>(x_1375.x, x_1375.y, x_1375.z);
  let x_1377 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1376.x, x_1376.y, x_1376.z, x_1377.w);
  let x_1380 : f32 = u_xlat1.x;
  let x_1382 : f32 = x_26.x_Lut2D_Params.z;
  let x_1385 : f32 = u_xlat11.x;
  u_xlat1.x = ((x_1380 * x_1382) + -(x_1385));
  let x_1389 : vec4<f32> = u_xlat3;
  let x_1392 : vec4<f32> = u_xlat2;
  u_xlat11 = (-(vec3<f32>(x_1389.x, x_1389.y, x_1389.z)) + vec3<f32>(x_1392.x, x_1392.y, x_1392.z));
  let x_1395 : vec4<f32> = u_xlat1;
  let x_1397 : vec3<f32> = u_xlat11;
  let x_1399 : vec4<f32> = u_xlat3;
  let x_1401 : vec3<f32> = ((vec3<f32>(x_1395.x, x_1395.x, x_1395.x) * x_1397) + vec3<f32>(x_1399.x, x_1399.y, x_1399.z));
  let x_1402 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1401.x, x_1401.y, x_1401.z, x_1402.w);
  let x_1404 : vec4<f32> = u_xlat1;
  let x_1408 : vec3<f32> = (vec3<f32>(x_1404.x, x_1404.y, x_1404.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1409 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1408.x, x_1408.y, x_1408.z, x_1409.w);
  let x_1411 : vec4<f32> = u_xlat1;
  let x_1415 : vec3<f32> = (vec3<f32>(x_1411.x, x_1411.y, x_1411.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1416 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1415.x, x_1415.y, x_1415.z, x_1416.w);
  let x_1418 : vec4<f32> = u_xlat3;
  let x_1422 : vec3<f32> = (vec3<f32>(x_1418.x, x_1418.y, x_1418.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1423 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1422.x, x_1422.y, x_1422.z, x_1423.w);
  let x_1425 : vec4<f32> = u_xlat3;
  let x_1428 : vec3<f32> = max(abs(vec3<f32>(x_1425.x, x_1425.y, x_1425.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1429 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1428.x, x_1428.y, x_1428.z, x_1429.w);
  let x_1431 : vec4<f32> = u_xlat3;
  let x_1433 : vec3<f32> = log2(vec3<f32>(x_1431.x, x_1431.y, x_1431.z));
  let x_1434 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1433.x, x_1433.y, x_1433.z, x_1434.w);
  let x_1436 : vec4<f32> = u_xlat3;
  let x_1440 : vec3<f32> = (vec3<f32>(x_1436.x, x_1436.y, x_1436.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1441 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1440.x, x_1440.y, x_1440.z, x_1441.w);
  let x_1443 : vec4<f32> = u_xlat3;
  let x_1445 : vec3<f32> = exp2(vec3<f32>(x_1443.x, x_1443.y, x_1443.z));
  let x_1446 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1445.x, x_1445.y, x_1445.z, x_1446.w);
  let x_1450 : vec4<f32> = u_xlat1;
  let x_1452 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1450.x, x_1450.y, x_1450.z, x_1450.x));
  u_xlatb1 = vec3<bool>(x_1452.x, x_1452.y, x_1452.z);
  let x_1455 : bool = u_xlatb1.x;
  if (x_1455) {
    let x_1460 : f32 = u_xlat2.x;
    x_1456 = x_1460;
  } else {
    let x_1463 : f32 = u_xlat3.x;
    x_1456 = x_1463;
  }
  let x_1464 : f32 = x_1456;
  u_xlat0.x = x_1464;
  let x_1467 : bool = u_xlatb1.y;
  if (x_1467) {
    let x_1472 : f32 = u_xlat2.y;
    x_1468 = x_1472;
  } else {
    let x_1475 : f32 = u_xlat3.y;
    x_1468 = x_1475;
  }
  let x_1476 : f32 = x_1468;
  u_xlat0.y = x_1476;
  let x_1479 : bool = u_xlatb1.z;
  if (x_1479) {
    let x_1484 : f32 = u_xlat2.z;
    x_1480 = x_1484;
  } else {
    let x_1487 : f32 = u_xlat3.z;
    x_1480 = x_1487;
  }
  let x_1488 : f32 = x_1480;
  u_xlat0.z = x_1488;
  let x_1492 : f32 = x_26.x_LumaInAlpha;
  u_xlatb1.x = (0.5f < x_1492);
  let x_1496 : bool = u_xlatb1.x;
  if (x_1496) {
    let x_1499 : vec4<f32> = u_xlat0;
    let x_1500 : vec3<f32> = vec3<f32>(x_1499.x, x_1499.y, x_1499.z);
    let x_1501 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1500.x, x_1500.y, x_1500.z, x_1501.w);
    let x_1503 : vec4<f32> = u_xlat1;
    let x_1507 : vec3<f32> = clamp(vec3<f32>(x_1503.x, x_1503.y, x_1503.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_1508 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1507.x, x_1507.y, x_1507.z, x_1508.w);
    let x_1510 : vec4<f32> = u_xlat1;
    u_xlat0.w = dot(vec3<f32>(x_1510.x, x_1510.y, x_1510.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_1516 : vec4<f32> = u_xlat0;
  SV_Target0 = x_1516;
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

