struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_Lut_Params : vec4<f32>,
  x_UserLut_Params : vec4<f32>,
  x_Bloom_Params : vec4<f32>,
  x_Bloom_RGBM : f32,
  @size(12)
  padding_1 : u32,
  x_Distortion_Params1 : vec4<f32>,
  x_Distortion_Params2 : vec4<f32>,
  x_Vignette_Params1 : vec4<f32>,
  x_Vignette_Params2 : vec4<f32>,
  x_Grain_Params : vec2<f32>,
  @size(8)
  padding_2 : u32,
  x_Grain_TilingParams : vec4<f32>,
  x_Dithering_Params : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_25 : PGlobals;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_LinearClamp : sampler;

@group(0) @binding(1) var x_Bloom_Texture : texture_2d<f32>;

@group(0) @binding(4) var x_UserLut : texture_2d<f32>;

@group(0) @binding(3) var x_InternalLut : texture_2d<f32>;

@group(0) @binding(2) var x_Grain_Texture : texture_2d<f32>;

@group(0) @binding(8) var sampler_LinearRepeat : sampler;

@group(0) @binding(5) var x_BlueNoise_Texture : texture_2d<f32>;

@group(0) @binding(7) var sampler_PointRepeat : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat10 : vec2<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlatb6 : bool;
  var u_xlat6 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat11 : f32;
  var u_xlat16 : f32;
  var u_xlat7 : f32;
  var u_xlat12 : f32;
  var u_xlatb17 : bool;
  var u_xlatb1 : vec3<bool>;
  var x_231 : f32;
  var u_xlatb15 : bool;
  var u_xlat15 : f32;
  var u_xlatb3 : vec3<bool>;
  var hlslcc_movcTemp : vec3<f32>;
  var x_463 : f32;
  var x_475 : f32;
  var x_487 : f32;
  var u_xlat4 : vec2<f32>;
  var x_632 : f32;
  var x_644 : f32;
  var x_656 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlatb0 : vec3<bool>;
  var x_906 : f32;
  var x_918 : f32;
  var x_930 : f32;
  var x_985 : f32;
  var x_997 : f32;
  var x_1009 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD0;
  let x_16 : vec2<f32> = (x_13 + vec2<f32>(-0.5f, -0.5f));
  let x_17 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_16.x, x_16.y, x_17.z, x_17.w);
  let x_21 : vec4<f32> = u_xlat0;
  let x_30 : vec4<f32> = x_25.x_Distortion_Params2;
  u_xlat10 = ((vec2<f32>(x_21.x, x_21.y) * vec2<f32>(x_30.z, x_30.z)) + vec2<f32>(0.5f, 0.5f));
  let x_36 : vec4<f32> = u_xlat0;
  let x_39 : vec4<f32> = x_25.x_Distortion_Params2;
  let x_44 : vec4<f32> = x_25.x_Distortion_Params1;
  let x_47 : vec2<f32> = ((vec2<f32>(x_36.x, x_36.y) * vec2<f32>(x_39.z, x_39.z)) + -(vec2<f32>(x_44.x, x_44.y)));
  let x_48 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_47.x, x_47.y, x_48.z, x_48.w);
  let x_50 : vec4<f32> = u_xlat0;
  let x_53 : vec4<f32> = x_25.x_Distortion_Params1;
  let x_55 : vec2<f32> = (vec2<f32>(x_50.x, x_50.y) * vec2<f32>(x_53.z, x_53.w));
  let x_56 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_55.x, x_55.y, x_56.z, x_56.w);
  let x_61 : vec4<f32> = u_xlat0;
  let x_63 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec2<f32>(x_61.x, x_61.y), vec2<f32>(x_63.x, x_63.y));
  let x_71 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_71);
  let x_81 : f32 = x_25.x_Distortion_Params2.w;
  u_xlatb6 = (0.0f < x_81);
  let x_83 : bool = u_xlatb6;
  if (x_83) {
    let x_87 : vec3<f32> = u_xlat1;
    let x_90 : vec4<f32> = x_25.x_Distortion_Params2;
    let x_92 : vec2<f32> = (vec2<f32>(x_87.x, x_87.x) * vec2<f32>(x_90.x, x_90.y));
    let x_93 : vec3<f32> = u_xlat6;
    u_xlat6 = vec3<f32>(x_92.x, x_92.y, x_93.z);
    let x_97 : f32 = u_xlat6.x;
    u_xlat2.x = sin(x_97);
    let x_102 : f32 = u_xlat6.x;
    u_xlat3.x = cos(x_102);
    let x_106 : f32 = u_xlat2.x;
    let x_108 : f32 = u_xlat3.x;
    u_xlat6.x = (x_106 / x_108);
    let x_115 : f32 = u_xlat6.y;
    u_xlat11 = (1.0f / x_115);
    let x_118 : f32 = u_xlat6.x;
    let x_119 : f32 = u_xlat11;
    u_xlat6.x = ((x_118 * x_119) + -1.0f);
    let x_124 : vec4<f32> = u_xlat0;
    let x_126 : vec3<f32> = u_xlat6;
    let x_129 : vec2<f32> = u_xlat10;
    let x_130 : vec2<f32> = ((vec2<f32>(x_124.x, x_124.y) * vec2<f32>(x_126.x, x_126.x)) + x_129);
    let x_131 : vec3<f32> = u_xlat6;
    u_xlat6 = vec3<f32>(x_130.x, x_130.y, x_131.z);
  } else {
    let x_136 : f32 = u_xlat1.x;
    u_xlat16 = (1.0f / x_136);
    let x_138 : f32 = u_xlat16;
    let x_140 : f32 = x_25.x_Distortion_Params2.x;
    u_xlat16 = (x_138 * x_140);
    let x_143 : f32 = u_xlat1.x;
    let x_145 : f32 = x_25.x_Distortion_Params2.y;
    u_xlat1.x = (x_143 * x_145);
    let x_149 : f32 = u_xlat1.x;
    u_xlat2.x = min(abs(x_149), 1.0f);
    let x_155 : f32 = u_xlat1.x;
    u_xlat7 = max(abs(x_155), 1.0f);
    let x_158 : f32 = u_xlat7;
    u_xlat7 = (1.0f / x_158);
    let x_160 : f32 = u_xlat7;
    let x_162 : f32 = u_xlat2.x;
    u_xlat2.x = (x_160 * x_162);
    let x_166 : f32 = u_xlat2.x;
    let x_168 : f32 = u_xlat2.x;
    u_xlat7 = (x_166 * x_168);
    let x_171 : f32 = u_xlat7;
    u_xlat12 = ((x_171 * 0.0208351f) + -0.085133001f);
    let x_176 : f32 = u_xlat7;
    let x_177 : f32 = u_xlat12;
    u_xlat12 = ((x_176 * x_177) + 0.180141002f);
    let x_181 : f32 = u_xlat7;
    let x_182 : f32 = u_xlat12;
    u_xlat12 = ((x_181 * x_182) + -0.330299497f);
    let x_186 : f32 = u_xlat7;
    let x_187 : f32 = u_xlat12;
    u_xlat7 = ((x_186 * x_187) + 0.999866009f);
    let x_191 : f32 = u_xlat7;
    let x_193 : f32 = u_xlat2.x;
    u_xlat12 = (x_191 * x_193);
    let x_197 : f32 = u_xlat1.x;
    u_xlatb17 = (1.0f < abs(x_197));
    let x_200 : f32 = u_xlat12;
    u_xlat12 = ((x_200 * -2.0f) + 1.570796371f);
    let x_205 : bool = u_xlatb17;
    let x_206 : f32 = u_xlat12;
    u_xlat12 = select(0.0f, x_206, x_205);
    let x_209 : f32 = u_xlat2.x;
    let x_210 : f32 = u_xlat7;
    let x_212 : f32 = u_xlat12;
    u_xlat2.x = ((x_209 * x_210) + x_212);
    let x_216 : f32 = u_xlat1.x;
    u_xlat1.x = min(x_216, 1.0f);
    let x_223 : f32 = u_xlat1.x;
    let x_225 : f32 = u_xlat1.x;
    u_xlatb1.x = (x_223 < -(x_225));
    let x_230 : bool = u_xlatb1.x;
    if (x_230) {
      let x_235 : f32 = u_xlat2.x;
      x_231 = -(x_235);
    } else {
      let x_239 : f32 = u_xlat2.x;
      x_231 = x_239;
    }
    let x_240 : f32 = x_231;
    u_xlat1.x = x_240;
    let x_242 : f32 = u_xlat16;
    let x_244 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_242 * x_244) + -1.0f);
    let x_248 : vec4<f32> = u_xlat0;
    let x_250 : vec3<f32> = u_xlat1;
    let x_253 : vec2<f32> = u_xlat10;
    let x_254 : vec2<f32> = ((vec2<f32>(x_248.x, x_248.y) * vec2<f32>(x_250.x, x_250.x)) + x_253);
    let x_255 : vec3<f32> = u_xlat6;
    u_xlat6 = vec3<f32>(x_254.x, x_254.y, x_255.z);
  }
  let x_267 : vec3<f32> = u_xlat6;
  let x_271 : f32 = x_25.x_GlobalMipBias.x;
  let x_272 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_267.x, x_267.y), x_271);
  let x_273 : vec3<f32> = vec3<f32>(x_272.x, x_272.y, x_272.z);
  let x_274 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_273.x, x_273.y, x_273.z, x_274.w);
  let x_280 : vec3<f32> = u_xlat6;
  let x_283 : f32 = x_25.x_GlobalMipBias.x;
  let x_284 : vec4<f32> = textureSampleBias(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_280.x, x_280.y), x_283);
  u_xlat2 = x_284;
  let x_288 : f32 = x_25.x_Bloom_RGBM;
  u_xlatb15 = (0.0f < x_288);
  let x_290 : bool = u_xlatb15;
  if (x_290) {
    let x_293 : vec4<f32> = u_xlat2;
    let x_295 : vec4<f32> = u_xlat2;
    u_xlat3 = (vec3<f32>(x_293.w, x_293.w, x_293.w) * vec3<f32>(x_295.x, x_295.y, x_295.z));
    let x_298 : vec3<f32> = u_xlat3;
    let x_301 : vec3<f32> = (x_298 * vec3<f32>(8.0f, 8.0f, 8.0f));
    let x_302 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_301.x, x_301.y, x_301.z, x_302.w);
  }
  let x_304 : vec4<f32> = u_xlat2;
  let x_308 : vec4<f32> = x_25.x_Bloom_Params;
  let x_310 : vec3<f32> = (vec3<f32>(x_304.x, x_304.y, x_304.z) * vec3<f32>(x_308.x, x_308.x, x_308.x));
  let x_311 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_310.x, x_310.y, x_310.z, x_311.w);
  let x_313 : vec4<f32> = u_xlat2;
  let x_316 : vec4<f32> = x_25.x_Bloom_Params;
  let x_319 : vec4<f32> = u_xlat0;
  let x_321 : vec3<f32> = ((vec3<f32>(x_313.x, x_313.y, x_313.z) * vec3<f32>(x_316.y, x_316.z, x_316.w)) + vec3<f32>(x_319.x, x_319.y, x_319.z));
  let x_322 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_321.x, x_321.y, x_321.z, x_322.w);
  let x_327 : f32 = x_25.x_Vignette_Params2.z;
  u_xlatb15 = (0.0f < x_327);
  let x_329 : bool = u_xlatb15;
  if (x_329) {
    let x_332 : vec3<f32> = u_xlat6;
    let x_335 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_338 : vec2<f32> = (vec2<f32>(x_332.x, x_332.y) + -(vec2<f32>(x_335.x, x_335.y)));
    let x_339 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_338.x, x_338.y, x_339.z);
    let x_341 : vec3<f32> = u_xlat1;
    let x_345 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_347 : vec2<f32> = (abs(vec2<f32>(x_341.x, x_341.y)) * vec2<f32>(x_345.z, x_345.z));
    let x_348 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_348.x, x_347.x, x_347.y);
    let x_351 : f32 = u_xlat1.y;
    let x_354 : f32 = x_25.x_Vignette_Params1.w;
    u_xlat1.x = (x_351 * x_354);
    let x_358 : vec3<f32> = u_xlat1;
    let x_360 : vec3<f32> = u_xlat1;
    u_xlat15 = dot(vec2<f32>(x_358.x, x_358.z), vec2<f32>(x_360.x, x_360.z));
    let x_363 : f32 = u_xlat15;
    u_xlat15 = (-(x_363) + 1.0f);
    let x_366 : f32 = u_xlat15;
    u_xlat15 = max(x_366, 0.0f);
    let x_368 : f32 = u_xlat15;
    u_xlat15 = log2(x_368);
    let x_370 : f32 = u_xlat15;
    let x_372 : f32 = x_25.x_Vignette_Params2.w;
    u_xlat15 = (x_370 * x_372);
    let x_374 : f32 = u_xlat15;
    u_xlat15 = exp2(x_374);
    let x_377 : vec4<f32> = x_25.x_Vignette_Params1;
    u_xlat1 = (-(vec3<f32>(x_377.x, x_377.y, x_377.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_382 : f32 = u_xlat15;
    let x_384 : vec3<f32> = u_xlat1;
    let x_387 : vec4<f32> = x_25.x_Vignette_Params1;
    u_xlat1 = ((vec3<f32>(x_382, x_382, x_382) * x_384) + vec3<f32>(x_387.x, x_387.y, x_387.z));
    let x_390 : vec4<f32> = u_xlat0;
    let x_392 : vec3<f32> = u_xlat1;
    let x_393 : vec3<f32> = (vec3<f32>(x_390.x, x_390.y, x_390.z) * x_392);
    let x_394 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_393.x, x_393.y, x_393.z, x_394.w);
  }
  let x_396 : vec4<f32> = u_xlat0;
  let x_400 : vec4<f32> = x_25.x_Lut_Params;
  let x_402 : vec3<f32> = (vec3<f32>(x_396.x, x_396.y, x_396.z) * vec3<f32>(x_400.w, x_400.w, x_400.w));
  let x_403 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_402.x, x_402.y, x_402.z, x_403.w);
  let x_405 : vec4<f32> = u_xlat0;
  let x_409 : vec3<f32> = clamp(vec3<f32>(x_405.x, x_405.y, x_405.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_410 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_409.x, x_409.y, x_409.z, x_410.w);
  let x_414 : f32 = x_25.x_UserLut_Params.w;
  u_xlatb15 = (0.0f < x_414);
  let x_416 : bool = u_xlatb15;
  if (x_416) {
    let x_419 : vec4<f32> = u_xlat0;
    u_xlat1 = (vec3<f32>(x_419.x, x_419.y, x_419.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
    let x_424 : vec4<f32> = u_xlat0;
    let x_426 : vec3<f32> = log2(vec3<f32>(x_424.x, x_424.y, x_424.z));
    let x_427 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_426.x, x_426.y, x_426.z, x_427.w);
    let x_429 : vec4<f32> = u_xlat2;
    let x_433 : vec3<f32> = (vec3<f32>(x_429.x, x_429.y, x_429.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
    let x_434 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_433.x, x_433.y, x_433.z, x_434.w);
    let x_436 : vec4<f32> = u_xlat2;
    let x_438 : vec3<f32> = exp2(vec3<f32>(x_436.x, x_436.y, x_436.z));
    let x_439 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_438.x, x_438.y, x_438.z, x_439.w);
    let x_441 : vec4<f32> = u_xlat2;
    let x_448 : vec3<f32> = ((vec3<f32>(x_441.x, x_441.y, x_441.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
    let x_449 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_448.x, x_448.y, x_448.z, x_449.w);
    let x_454 : vec4<f32> = u_xlat0;
    let x_457 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_454.x, x_454.y, x_454.z, x_454.x));
    u_xlatb3 = vec3<bool>(x_457.x, x_457.y, x_457.z);
    let x_460 : vec3<f32> = u_xlat1;
    hlslcc_movcTemp = x_460;
    let x_462 : bool = u_xlatb3.x;
    if (x_462) {
      let x_467 : f32 = u_xlat1.x;
      x_463 = x_467;
    } else {
      let x_470 : f32 = u_xlat2.x;
      x_463 = x_470;
    }
    let x_471 : f32 = x_463;
    hlslcc_movcTemp.x = x_471;
    let x_474 : bool = u_xlatb3.y;
    if (x_474) {
      let x_479 : f32 = u_xlat1.y;
      x_475 = x_479;
    } else {
      let x_482 : f32 = u_xlat2.y;
      x_475 = x_482;
    }
    let x_483 : f32 = x_475;
    hlslcc_movcTemp.y = x_483;
    let x_486 : bool = u_xlatb3.z;
    if (x_486) {
      let x_491 : f32 = u_xlat1.z;
      x_487 = x_491;
    } else {
      let x_494 : f32 = u_xlat2.z;
      x_487 = x_494;
    }
    let x_495 : f32 = x_487;
    hlslcc_movcTemp.z = x_495;
    let x_497 : vec3<f32> = hlslcc_movcTemp;
    u_xlat1 = x_497;
    let x_498 : vec3<f32> = u_xlat1;
    let x_501 : vec4<f32> = x_25.x_UserLut_Params;
    let x_503 : vec3<f32> = (vec3<f32>(x_498.z, x_498.x, x_498.y) * vec3<f32>(x_501.z, x_501.z, x_501.z));
    let x_504 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_503.x, x_503.y, x_503.z, x_504.w);
    let x_507 : f32 = u_xlat2.x;
    u_xlat15 = floor(x_507);
    let x_510 : vec4<f32> = x_25.x_UserLut_Params;
    let x_512 : vec2<f32> = (vec2<f32>(x_510.x, x_510.y) * vec2<f32>(0.5f, 0.5f));
    let x_513 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_512.x, x_513.y, x_513.z, x_512.y);
    let x_515 : vec4<f32> = u_xlat2;
    let x_518 : vec4<f32> = x_25.x_UserLut_Params;
    let x_521 : vec4<f32> = u_xlat2;
    let x_523 : vec2<f32> = ((vec2<f32>(x_515.y, x_515.z) * vec2<f32>(x_518.x, x_518.y)) + vec2<f32>(x_521.x, x_521.w));
    let x_524 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_524.x, x_523.x, x_523.y, x_524.w);
    let x_526 : f32 = u_xlat15;
    let x_528 : f32 = x_25.x_UserLut_Params.y;
    let x_531 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_526 * x_528) + x_531);
    let x_538 : vec4<f32> = u_xlat2;
    let x_540 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_538.x, x_538.z), 0.0f);
    u_xlat3 = vec3<f32>(x_540.x, x_540.y, x_540.z);
    let x_544 : f32 = x_25.x_UserLut_Params.y;
    u_xlat4.x = x_544;
    u_xlat4.y = 0.0f;
    let x_547 : vec4<f32> = u_xlat2;
    let x_549 : vec2<f32> = u_xlat4;
    let x_550 : vec2<f32> = (vec2<f32>(x_547.x, x_547.z) + x_549);
    let x_551 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_550.x, x_550.y, x_551.z, x_551.w);
    let x_556 : vec4<f32> = u_xlat2;
    let x_558 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_556.x, x_556.y), 0.0f);
    let x_559 : vec3<f32> = vec3<f32>(x_558.x, x_558.y, x_558.z);
    let x_560 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_559.x, x_559.y, x_559.z, x_560.w);
    let x_563 : f32 = u_xlat1.z;
    let x_565 : f32 = x_25.x_UserLut_Params.z;
    let x_567 : f32 = u_xlat15;
    u_xlat15 = ((x_563 * x_565) + -(x_567));
    let x_570 : vec3<f32> = u_xlat3;
    let x_572 : vec4<f32> = u_xlat2;
    let x_574 : vec3<f32> = (-(x_570) + vec3<f32>(x_572.x, x_572.y, x_572.z));
    let x_575 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_574.x, x_574.y, x_574.z, x_575.w);
    let x_577 : f32 = u_xlat15;
    let x_579 : vec4<f32> = u_xlat2;
    let x_582 : vec3<f32> = u_xlat3;
    let x_583 : vec3<f32> = ((vec3<f32>(x_577, x_577, x_577) * vec3<f32>(x_579.x, x_579.y, x_579.z)) + x_582);
    let x_584 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_583.x, x_583.y, x_583.z, x_584.w);
    let x_586 : vec3<f32> = u_xlat1;
    let x_588 : vec4<f32> = u_xlat2;
    let x_590 : vec3<f32> = (-(x_586) + vec3<f32>(x_588.x, x_588.y, x_588.z));
    let x_591 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_590.x, x_590.y, x_590.z, x_591.w);
    let x_594 : vec4<f32> = x_25.x_UserLut_Params;
    let x_596 : vec4<f32> = u_xlat2;
    let x_599 : vec3<f32> = u_xlat1;
    u_xlat1 = ((vec3<f32>(x_594.w, x_594.w, x_594.w) * vec3<f32>(x_596.x, x_596.y, x_596.z)) + x_599);
    let x_601 : vec3<f32> = u_xlat1;
    let x_604 : vec3<f32> = (x_601 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
    let x_605 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_604.x, x_604.y, x_604.z, x_605.w);
    let x_607 : vec3<f32> = u_xlat1;
    u_xlat3 = (x_607 + vec3<f32>(0.055f, 0.055f, 0.055f));
    let x_611 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_611 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
    let x_615 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_615));
    let x_618 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_618 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
    let x_622 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_622);
    let x_626 : vec3<f32> = u_xlat1;
    let x_628 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_626.x, x_626.y, x_626.z, x_626.x));
    u_xlatb1 = vec3<bool>(x_628.x, x_628.y, x_628.z);
    let x_631 : bool = u_xlatb1.x;
    if (x_631) {
      let x_636 : f32 = u_xlat2.x;
      x_632 = x_636;
    } else {
      let x_639 : f32 = u_xlat3.x;
      x_632 = x_639;
    }
    let x_640 : f32 = x_632;
    u_xlat0.x = x_640;
    let x_643 : bool = u_xlatb1.y;
    if (x_643) {
      let x_648 : f32 = u_xlat2.y;
      x_644 = x_648;
    } else {
      let x_651 : f32 = u_xlat3.y;
      x_644 = x_651;
    }
    let x_652 : f32 = x_644;
    u_xlat0.y = x_652;
    let x_655 : bool = u_xlatb1.z;
    if (x_655) {
      let x_660 : f32 = u_xlat2.z;
      x_656 = x_660;
    } else {
      let x_663 : f32 = u_xlat3.z;
      x_656 = x_663;
    }
    let x_664 : f32 = x_656;
    u_xlat0.z = x_664;
  }
  let x_666 : vec4<f32> = u_xlat0;
  let x_669 : vec4<f32> = x_25.x_Lut_Params;
  let x_671 : vec3<f32> = (vec3<f32>(x_666.x, x_666.y, x_666.z) * vec3<f32>(x_669.z, x_669.z, x_669.z));
  let x_672 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_671.x, x_671.y, x_672.z, x_671.z);
  let x_675 : f32 = u_xlat0.w;
  u_xlat15 = floor(x_675);
  let x_678 : vec4<f32> = x_25.x_Lut_Params;
  let x_680 : vec2<f32> = (vec2<f32>(x_678.x, x_678.y) * vec2<f32>(0.5f, 0.5f));
  let x_681 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_680.x, x_680.y, x_681.z);
  let x_683 : vec4<f32> = u_xlat0;
  let x_686 : vec4<f32> = x_25.x_Lut_Params;
  let x_689 : vec3<f32> = u_xlat1;
  let x_691 : vec2<f32> = ((vec2<f32>(x_683.x, x_683.y) * vec2<f32>(x_686.x, x_686.y)) + vec2<f32>(x_689.x, x_689.y));
  let x_692 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_692.x, x_691.x, x_691.y);
  let x_694 : f32 = u_xlat15;
  let x_696 : f32 = x_25.x_Lut_Params.y;
  let x_699 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_694 * x_696) + x_699);
  let x_706 : vec3<f32> = u_xlat1;
  let x_708 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_706.x, x_706.z), 0.0f);
  let x_709 : vec3<f32> = vec3<f32>(x_708.x, x_708.y, x_708.z);
  let x_710 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_709.x, x_709.y, x_709.z, x_710.w);
  let x_713 : f32 = x_25.x_Lut_Params.y;
  u_xlat0.x = x_713;
  u_xlat0.y = 0.0f;
  let x_716 : vec4<f32> = u_xlat0;
  let x_718 : vec3<f32> = u_xlat1;
  let x_720 : vec2<f32> = (vec2<f32>(x_716.x, x_716.y) + vec2<f32>(x_718.x, x_718.z));
  let x_721 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_720.x, x_720.y, x_721.z, x_721.w);
  let x_726 : vec4<f32> = u_xlat0;
  let x_728 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_726.x, x_726.y), 0.0f);
  u_xlat1 = vec3<f32>(x_728.x, x_728.y, x_728.z);
  let x_731 : f32 = u_xlat0.z;
  let x_733 : f32 = x_25.x_Lut_Params.z;
  let x_735 : f32 = u_xlat15;
  u_xlat0.x = ((x_731 * x_733) + -(x_735));
  let x_740 : vec4<f32> = u_xlat2;
  let x_743 : vec3<f32> = u_xlat1;
  u_xlat5 = (-(vec3<f32>(x_740.x, x_740.y, x_740.z)) + x_743);
  let x_745 : vec4<f32> = u_xlat0;
  let x_747 : vec3<f32> = u_xlat5;
  let x_749 : vec4<f32> = u_xlat2;
  let x_751 : vec3<f32> = ((vec3<f32>(x_745.x, x_745.x, x_745.x) * x_747) + vec3<f32>(x_749.x, x_749.y, x_749.z));
  let x_752 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_751.x, x_751.y, x_751.z, x_752.w);
  let x_754 : vec2<f32> = vs_TEXCOORD0;
  let x_757 : vec4<f32> = x_25.x_Grain_TilingParams;
  let x_761 : vec4<f32> = x_25.x_Grain_TilingParams;
  let x_763 : vec2<f32> = ((x_754 * vec2<f32>(x_757.x, x_757.y)) + vec2<f32>(x_761.z, x_761.w));
  let x_764 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_763.x, x_763.y, x_764.z);
  let x_771 : vec3<f32> = u_xlat1;
  let x_774 : f32 = x_25.x_GlobalMipBias.x;
  let x_775 : vec4<f32> = textureSampleBias(x_Grain_Texture, sampler_LinearRepeat, vec2<f32>(x_771.x, x_771.y), x_774);
  u_xlat15 = x_775.w;
  let x_777 : f32 = u_xlat15;
  u_xlat15 = (x_777 + -0.5f);
  let x_779 : f32 = u_xlat15;
  let x_780 : f32 = u_xlat15;
  u_xlat15 = (x_779 + x_780);
  let x_782 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(x_782.x, x_782.y, x_782.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_791 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_791);
  let x_796 : f32 = x_25.x_Grain_Params.y;
  let x_798 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_796 * -(x_798)) + 1.0f);
  let x_803 : f32 = u_xlat15;
  let x_805 : vec4<f32> = u_xlat0;
  u_xlat6 = (vec3<f32>(x_803, x_803, x_803) * vec3<f32>(x_805.x, x_805.y, x_805.z));
  let x_808 : vec3<f32> = u_xlat6;
  let x_811 : vec2<f32> = x_25.x_Grain_Params;
  u_xlat6 = (x_808 * vec3<f32>(x_811.x, x_811.x, x_811.x));
  let x_814 : vec3<f32> = u_xlat6;
  let x_815 : vec3<f32> = u_xlat1;
  let x_818 : vec4<f32> = u_xlat0;
  let x_820 : vec3<f32> = ((x_814 * vec3<f32>(x_815.x, x_815.x, x_815.x)) + vec3<f32>(x_818.x, x_818.y, x_818.z));
  let x_821 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_820.x, x_820.y, x_820.z, x_821.w);
  let x_823 : vec4<f32> = u_xlat0;
  let x_825 : vec3<f32> = sqrt(vec3<f32>(x_823.x, x_823.y, x_823.z));
  let x_826 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_825.x, x_825.y, x_825.z, x_826.w);
  let x_828 : vec2<f32> = vs_TEXCOORD0;
  let x_831 : vec4<f32> = x_25.x_Dithering_Params;
  let x_835 : vec4<f32> = x_25.x_Dithering_Params;
  let x_837 : vec2<f32> = ((x_828 * vec2<f32>(x_831.x, x_831.y)) + vec2<f32>(x_835.z, x_835.w));
  let x_838 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_837.x, x_837.y, x_838.z);
  let x_845 : vec3<f32> = u_xlat1;
  let x_848 : f32 = x_25.x_GlobalMipBias.x;
  let x_849 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_845.x, x_845.y), x_848);
  u_xlat15 = x_849.w;
  let x_851 : f32 = u_xlat15;
  u_xlat15 = ((x_851 * 2.0f) + -1.0f);
  let x_855 : f32 = u_xlat15;
  u_xlatb1.x = (x_855 >= 0.0f);
  let x_859 : bool = u_xlatb1.x;
  u_xlat1.x = select(-1.0f, 1.0f, x_859);
  let x_862 : f32 = u_xlat15;
  u_xlat15 = (-(abs(x_862)) + 1.0f);
  let x_866 : f32 = u_xlat15;
  u_xlat15 = sqrt(x_866);
  let x_868 : f32 = u_xlat15;
  u_xlat15 = (-(x_868) + 1.0f);
  let x_871 : f32 = u_xlat15;
  let x_873 : f32 = u_xlat1.x;
  u_xlat15 = (x_871 * x_873);
  let x_875 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_875.x, x_875.y, x_875.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_878 : vec4<f32> = u_xlat0;
  let x_880 : vec3<f32> = log2(vec3<f32>(x_878.x, x_878.y, x_878.z));
  let x_881 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_880.x, x_880.y, x_880.z, x_881.w);
  let x_883 : vec4<f32> = u_xlat2;
  let x_885 : vec3<f32> = (vec3<f32>(x_883.x, x_883.y, x_883.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_886 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_885.x, x_885.y, x_885.z, x_886.w);
  let x_888 : vec4<f32> = u_xlat2;
  let x_890 : vec3<f32> = exp2(vec3<f32>(x_888.x, x_888.y, x_888.z));
  let x_891 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_890.x, x_890.y, x_890.z, x_891.w);
  let x_893 : vec4<f32> = u_xlat2;
  let x_896 : vec3<f32> = ((vec3<f32>(x_893.x, x_893.y, x_893.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_897 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_896.x, x_896.y, x_896.z, x_897.w);
  let x_900 : vec4<f32> = u_xlat0;
  let x_902 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_900.x, x_900.y, x_900.z, x_900.x));
  u_xlatb0 = vec3<bool>(x_902.x, x_902.y, x_902.z);
  let x_905 : bool = u_xlatb0.x;
  if (x_905) {
    let x_910 : f32 = u_xlat1.x;
    x_906 = x_910;
  } else {
    let x_913 : f32 = u_xlat2.x;
    x_906 = x_913;
  }
  let x_914 : f32 = x_906;
  u_xlat0.x = x_914;
  let x_917 : bool = u_xlatb0.y;
  if (x_917) {
    let x_922 : f32 = u_xlat1.y;
    x_918 = x_922;
  } else {
    let x_925 : f32 = u_xlat2.y;
    x_918 = x_925;
  }
  let x_926 : f32 = x_918;
  u_xlat0.y = x_926;
  let x_929 : bool = u_xlatb0.z;
  if (x_929) {
    let x_934 : f32 = u_xlat1.z;
    x_930 = x_934;
  } else {
    let x_937 : f32 = u_xlat2.z;
    x_930 = x_937;
  }
  let x_938 : f32 = x_930;
  u_xlat0.z = x_938;
  let x_940 : f32 = u_xlat15;
  let x_945 : vec4<f32> = u_xlat0;
  let x_947 : vec3<f32> = ((vec3<f32>(x_940, x_940, x_940) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_945.x, x_945.y, x_945.z));
  let x_948 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_947.x, x_947.y, x_947.z, x_948.w);
  let x_950 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_950.x, x_950.y, x_950.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_953 : vec4<f32> = u_xlat0;
  let x_955 : vec3<f32> = (vec3<f32>(x_953.x, x_953.y, x_953.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_956 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_955.x, x_955.y, x_955.z, x_956.w);
  let x_958 : vec4<f32> = u_xlat2;
  let x_960 : vec3<f32> = (vec3<f32>(x_958.x, x_958.y, x_958.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_961 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_960.x, x_960.y, x_960.z, x_961.w);
  let x_963 : vec4<f32> = u_xlat2;
  let x_966 : vec3<f32> = log2(abs(vec3<f32>(x_963.x, x_963.y, x_963.z)));
  let x_967 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_966.x, x_966.y, x_966.z, x_967.w);
  let x_969 : vec4<f32> = u_xlat2;
  let x_971 : vec3<f32> = (vec3<f32>(x_969.x, x_969.y, x_969.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_972 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_971.x, x_971.y, x_971.z, x_972.w);
  let x_974 : vec4<f32> = u_xlat2;
  let x_976 : vec3<f32> = exp2(vec3<f32>(x_974.x, x_974.y, x_974.z));
  let x_977 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_976.x, x_976.y, x_976.z, x_977.w);
  let x_979 : vec4<f32> = u_xlat0;
  let x_981 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_979.x, x_979.y, x_979.z, x_979.x));
  u_xlatb0 = vec3<bool>(x_981.x, x_981.y, x_981.z);
  let x_984 : bool = u_xlatb0.x;
  if (x_984) {
    let x_989 : f32 = u_xlat1.x;
    x_985 = x_989;
  } else {
    let x_992 : f32 = u_xlat2.x;
    x_985 = x_992;
  }
  let x_993 : f32 = x_985;
  u_xlat0.x = x_993;
  let x_996 : bool = u_xlatb0.y;
  if (x_996) {
    let x_1001 : f32 = u_xlat1.y;
    x_997 = x_1001;
  } else {
    let x_1004 : f32 = u_xlat2.y;
    x_997 = x_1004;
  }
  let x_1005 : f32 = x_997;
  u_xlat0.y = x_1005;
  let x_1008 : bool = u_xlatb0.z;
  if (x_1008) {
    let x_1013 : f32 = u_xlat1.z;
    x_1009 = x_1013;
  } else {
    let x_1016 : f32 = u_xlat2.z;
    x_1009 = x_1016;
  }
  let x_1017 : f32 = x_1009;
  u_xlat0.z = x_1017;
  let x_1021 : vec4<f32> = u_xlat0;
  let x_1024 : vec3<f32> = max(vec3<f32>(x_1021.x, x_1021.y, x_1021.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1025 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1024.x, x_1024.y, x_1024.z, x_1025.w);
  SV_Target0.w = 1.0f;
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

