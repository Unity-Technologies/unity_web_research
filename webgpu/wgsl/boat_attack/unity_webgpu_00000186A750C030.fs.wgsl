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
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_25 : PGlobals;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_LinearClamp : sampler;

@group(0) @binding(1) var x_Bloom_Texture : texture_2d<f32>;

@group(0) @binding(4) var x_UserLut : texture_2d<f32>;

@group(0) @binding(3) var x_InternalLut : texture_2d<f32>;

@group(0) @binding(2) var x_Grain_Texture : texture_2d<f32>;

@group(0) @binding(6) var sampler_LinearRepeat : sampler;

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
  var x_523 : f32;
  var x_535 : f32;
  var x_547 : f32;
  var u_xlat4 : vec2<f32>;
  var x_692 : f32;
  var x_704 : f32;
  var x_716 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlatb0 : vec3<bool>;
  var x_917 : f32;
  var x_930 : f32;
  var x_942 : f32;
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
  u_xlat1 = (vec3<f32>(x_405.x, x_405.y, x_405.z) * vec3<f32>(1.313386083f, 1.313386083f, 1.313386083f));
  let x_410 : vec4<f32> = u_xlat0;
  let x_417 : vec3<f32> = ((vec3<f32>(x_410.x, x_410.y, x_410.z) * vec3<f32>(0.262677222f, 0.262677222f, 0.262677222f)) + vec3<f32>(0.069599994f, 0.069599994f, 0.069599994f));
  let x_418 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_417.x, x_417.y, x_417.z, x_418.w);
  let x_420 : vec3<f32> = u_xlat1;
  let x_421 : vec4<f32> = u_xlat2;
  let x_426 : vec3<f32> = ((x_420 * vec3<f32>(x_421.x, x_421.y, x_421.z)) + vec3<f32>(0.00544f, 0.00544f, 0.00544f));
  let x_427 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_426.x, x_426.y, x_426.z, x_427.w);
  let x_429 : vec4<f32> = u_xlat0;
  let x_434 : vec3<f32> = ((vec3<f32>(x_429.x, x_429.y, x_429.z) * vec3<f32>(0.262677222f, 0.262677222f, 0.262677222f)) + vec3<f32>(0.289999992f, 0.289999992f, 0.289999992f));
  let x_435 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_434.x, x_434.y, x_434.z, x_435.w);
  let x_437 : vec3<f32> = u_xlat1;
  let x_438 : vec4<f32> = u_xlat0;
  let x_443 : vec3<f32> = ((x_437 * vec3<f32>(x_438.x, x_438.y, x_438.z)) + vec3<f32>(0.08160001f, 0.08160001f, 0.08160001f));
  let x_444 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_443.x, x_443.y, x_443.z, x_444.w);
  let x_446 : vec4<f32> = u_xlat2;
  let x_448 : vec4<f32> = u_xlat0;
  let x_450 : vec3<f32> = (vec3<f32>(x_446.x, x_446.y, x_446.z) / vec3<f32>(x_448.x, x_448.y, x_448.z));
  let x_451 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_450.x, x_450.y, x_450.z, x_451.w);
  let x_453 : vec4<f32> = u_xlat0;
  let x_457 : vec3<f32> = (vec3<f32>(x_453.x, x_453.y, x_453.z) + vec3<f32>(-0.066666663f, -0.066666663f, -0.066666663f));
  let x_458 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_457.x, x_457.y, x_457.z, x_458.w);
  let x_460 : vec4<f32> = u_xlat0;
  let x_462 : vec3<f32> = (vec3<f32>(x_460.x, x_460.y, x_460.z) * vec3<f32>(1.313386083f, 1.313386083f, 1.313386083f));
  let x_463 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_462.x, x_462.y, x_462.z, x_463.w);
  let x_465 : vec4<f32> = u_xlat0;
  let x_469 : vec3<f32> = clamp(vec3<f32>(x_465.x, x_465.y, x_465.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_470 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_469.x, x_469.y, x_469.z, x_470.w);
  let x_474 : f32 = x_25.x_UserLut_Params.w;
  u_xlatb15 = (0.0f < x_474);
  let x_476 : bool = u_xlatb15;
  if (x_476) {
    let x_479 : vec4<f32> = u_xlat0;
    u_xlat1 = (vec3<f32>(x_479.x, x_479.y, x_479.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
    let x_484 : vec4<f32> = u_xlat0;
    let x_486 : vec3<f32> = log2(vec3<f32>(x_484.x, x_484.y, x_484.z));
    let x_487 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_486.x, x_486.y, x_486.z, x_487.w);
    let x_489 : vec4<f32> = u_xlat2;
    let x_493 : vec3<f32> = (vec3<f32>(x_489.x, x_489.y, x_489.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
    let x_494 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_493.x, x_493.y, x_493.z, x_494.w);
    let x_496 : vec4<f32> = u_xlat2;
    let x_498 : vec3<f32> = exp2(vec3<f32>(x_496.x, x_496.y, x_496.z));
    let x_499 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_498.x, x_498.y, x_498.z, x_499.w);
    let x_501 : vec4<f32> = u_xlat2;
    let x_508 : vec3<f32> = ((vec3<f32>(x_501.x, x_501.y, x_501.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
    let x_509 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_508.x, x_508.y, x_508.z, x_509.w);
    let x_514 : vec4<f32> = u_xlat0;
    let x_517 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_514.x, x_514.y, x_514.z, x_514.x));
    u_xlatb3 = vec3<bool>(x_517.x, x_517.y, x_517.z);
    let x_520 : vec3<f32> = u_xlat1;
    hlslcc_movcTemp = x_520;
    let x_522 : bool = u_xlatb3.x;
    if (x_522) {
      let x_527 : f32 = u_xlat1.x;
      x_523 = x_527;
    } else {
      let x_530 : f32 = u_xlat2.x;
      x_523 = x_530;
    }
    let x_531 : f32 = x_523;
    hlslcc_movcTemp.x = x_531;
    let x_534 : bool = u_xlatb3.y;
    if (x_534) {
      let x_539 : f32 = u_xlat1.y;
      x_535 = x_539;
    } else {
      let x_542 : f32 = u_xlat2.y;
      x_535 = x_542;
    }
    let x_543 : f32 = x_535;
    hlslcc_movcTemp.y = x_543;
    let x_546 : bool = u_xlatb3.z;
    if (x_546) {
      let x_551 : f32 = u_xlat1.z;
      x_547 = x_551;
    } else {
      let x_554 : f32 = u_xlat2.z;
      x_547 = x_554;
    }
    let x_555 : f32 = x_547;
    hlslcc_movcTemp.z = x_555;
    let x_557 : vec3<f32> = hlslcc_movcTemp;
    u_xlat1 = x_557;
    let x_558 : vec3<f32> = u_xlat1;
    let x_561 : vec4<f32> = x_25.x_UserLut_Params;
    let x_563 : vec3<f32> = (vec3<f32>(x_558.z, x_558.x, x_558.y) * vec3<f32>(x_561.z, x_561.z, x_561.z));
    let x_564 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_563.x, x_563.y, x_563.z, x_564.w);
    let x_567 : f32 = u_xlat2.x;
    u_xlat15 = floor(x_567);
    let x_570 : vec4<f32> = x_25.x_UserLut_Params;
    let x_572 : vec2<f32> = (vec2<f32>(x_570.x, x_570.y) * vec2<f32>(0.5f, 0.5f));
    let x_573 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_572.x, x_573.y, x_573.z, x_572.y);
    let x_575 : vec4<f32> = u_xlat2;
    let x_578 : vec4<f32> = x_25.x_UserLut_Params;
    let x_581 : vec4<f32> = u_xlat2;
    let x_583 : vec2<f32> = ((vec2<f32>(x_575.y, x_575.z) * vec2<f32>(x_578.x, x_578.y)) + vec2<f32>(x_581.x, x_581.w));
    let x_584 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_584.x, x_583.x, x_583.y, x_584.w);
    let x_586 : f32 = u_xlat15;
    let x_588 : f32 = x_25.x_UserLut_Params.y;
    let x_591 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_586 * x_588) + x_591);
    let x_598 : vec4<f32> = u_xlat2;
    let x_600 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_598.x, x_598.z), 0.0f);
    u_xlat3 = vec3<f32>(x_600.x, x_600.y, x_600.z);
    let x_604 : f32 = x_25.x_UserLut_Params.y;
    u_xlat4.x = x_604;
    u_xlat4.y = 0.0f;
    let x_607 : vec4<f32> = u_xlat2;
    let x_609 : vec2<f32> = u_xlat4;
    let x_610 : vec2<f32> = (vec2<f32>(x_607.x, x_607.z) + x_609);
    let x_611 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_610.x, x_610.y, x_611.z, x_611.w);
    let x_616 : vec4<f32> = u_xlat2;
    let x_618 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_616.x, x_616.y), 0.0f);
    let x_619 : vec3<f32> = vec3<f32>(x_618.x, x_618.y, x_618.z);
    let x_620 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_619.x, x_619.y, x_619.z, x_620.w);
    let x_623 : f32 = u_xlat1.z;
    let x_625 : f32 = x_25.x_UserLut_Params.z;
    let x_627 : f32 = u_xlat15;
    u_xlat15 = ((x_623 * x_625) + -(x_627));
    let x_630 : vec3<f32> = u_xlat3;
    let x_632 : vec4<f32> = u_xlat2;
    let x_634 : vec3<f32> = (-(x_630) + vec3<f32>(x_632.x, x_632.y, x_632.z));
    let x_635 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_634.x, x_634.y, x_634.z, x_635.w);
    let x_637 : f32 = u_xlat15;
    let x_639 : vec4<f32> = u_xlat2;
    let x_642 : vec3<f32> = u_xlat3;
    let x_643 : vec3<f32> = ((vec3<f32>(x_637, x_637, x_637) * vec3<f32>(x_639.x, x_639.y, x_639.z)) + x_642);
    let x_644 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_643.x, x_643.y, x_643.z, x_644.w);
    let x_646 : vec3<f32> = u_xlat1;
    let x_648 : vec4<f32> = u_xlat2;
    let x_650 : vec3<f32> = (-(x_646) + vec3<f32>(x_648.x, x_648.y, x_648.z));
    let x_651 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_650.x, x_650.y, x_650.z, x_651.w);
    let x_654 : vec4<f32> = x_25.x_UserLut_Params;
    let x_656 : vec4<f32> = u_xlat2;
    let x_659 : vec3<f32> = u_xlat1;
    u_xlat1 = ((vec3<f32>(x_654.w, x_654.w, x_654.w) * vec3<f32>(x_656.x, x_656.y, x_656.z)) + x_659);
    let x_661 : vec3<f32> = u_xlat1;
    let x_664 : vec3<f32> = (x_661 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
    let x_665 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_664.x, x_664.y, x_664.z, x_665.w);
    let x_667 : vec3<f32> = u_xlat1;
    u_xlat3 = (x_667 + vec3<f32>(0.055f, 0.055f, 0.055f));
    let x_671 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_671 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
    let x_675 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_675));
    let x_678 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_678 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
    let x_682 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_682);
    let x_686 : vec3<f32> = u_xlat1;
    let x_688 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_686.x, x_686.y, x_686.z, x_686.x));
    u_xlatb1 = vec3<bool>(x_688.x, x_688.y, x_688.z);
    let x_691 : bool = u_xlatb1.x;
    if (x_691) {
      let x_696 : f32 = u_xlat2.x;
      x_692 = x_696;
    } else {
      let x_699 : f32 = u_xlat3.x;
      x_692 = x_699;
    }
    let x_700 : f32 = x_692;
    u_xlat0.x = x_700;
    let x_703 : bool = u_xlatb1.y;
    if (x_703) {
      let x_708 : f32 = u_xlat2.y;
      x_704 = x_708;
    } else {
      let x_711 : f32 = u_xlat3.y;
      x_704 = x_711;
    }
    let x_712 : f32 = x_704;
    u_xlat0.y = x_712;
    let x_715 : bool = u_xlatb1.z;
    if (x_715) {
      let x_720 : f32 = u_xlat2.z;
      x_716 = x_720;
    } else {
      let x_723 : f32 = u_xlat3.z;
      x_716 = x_723;
    }
    let x_724 : f32 = x_716;
    u_xlat0.z = x_724;
  }
  let x_726 : vec4<f32> = u_xlat0;
  let x_729 : vec4<f32> = x_25.x_Lut_Params;
  let x_731 : vec3<f32> = (vec3<f32>(x_726.x, x_726.y, x_726.z) * vec3<f32>(x_729.z, x_729.z, x_729.z));
  let x_732 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_731.x, x_731.y, x_732.z, x_731.z);
  let x_735 : f32 = u_xlat0.w;
  u_xlat15 = floor(x_735);
  let x_738 : vec4<f32> = x_25.x_Lut_Params;
  let x_740 : vec2<f32> = (vec2<f32>(x_738.x, x_738.y) * vec2<f32>(0.5f, 0.5f));
  let x_741 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_740.x, x_740.y, x_741.z);
  let x_743 : vec4<f32> = u_xlat0;
  let x_746 : vec4<f32> = x_25.x_Lut_Params;
  let x_749 : vec3<f32> = u_xlat1;
  let x_751 : vec2<f32> = ((vec2<f32>(x_743.x, x_743.y) * vec2<f32>(x_746.x, x_746.y)) + vec2<f32>(x_749.x, x_749.y));
  let x_752 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_752.x, x_751.x, x_751.y);
  let x_754 : f32 = u_xlat15;
  let x_756 : f32 = x_25.x_Lut_Params.y;
  let x_759 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_754 * x_756) + x_759);
  let x_766 : vec3<f32> = u_xlat1;
  let x_768 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_766.x, x_766.z), 0.0f);
  let x_769 : vec3<f32> = vec3<f32>(x_768.x, x_768.y, x_768.z);
  let x_770 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_769.x, x_769.y, x_769.z, x_770.w);
  let x_773 : f32 = x_25.x_Lut_Params.y;
  u_xlat0.x = x_773;
  u_xlat0.y = 0.0f;
  let x_776 : vec4<f32> = u_xlat0;
  let x_778 : vec3<f32> = u_xlat1;
  let x_780 : vec2<f32> = (vec2<f32>(x_776.x, x_776.y) + vec2<f32>(x_778.x, x_778.z));
  let x_781 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_780.x, x_780.y, x_781.z, x_781.w);
  let x_786 : vec4<f32> = u_xlat0;
  let x_788 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_786.x, x_786.y), 0.0f);
  u_xlat1 = vec3<f32>(x_788.x, x_788.y, x_788.z);
  let x_791 : f32 = u_xlat0.z;
  let x_793 : f32 = x_25.x_Lut_Params.z;
  let x_795 : f32 = u_xlat15;
  u_xlat0.x = ((x_791 * x_793) + -(x_795));
  let x_800 : vec4<f32> = u_xlat2;
  let x_803 : vec3<f32> = u_xlat1;
  u_xlat5 = (-(vec3<f32>(x_800.x, x_800.y, x_800.z)) + x_803);
  let x_805 : vec4<f32> = u_xlat0;
  let x_807 : vec3<f32> = u_xlat5;
  let x_809 : vec4<f32> = u_xlat2;
  let x_811 : vec3<f32> = ((vec3<f32>(x_805.x, x_805.x, x_805.x) * x_807) + vec3<f32>(x_809.x, x_809.y, x_809.z));
  let x_812 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_811.x, x_811.y, x_811.z, x_812.w);
  let x_814 : vec2<f32> = vs_TEXCOORD0;
  let x_817 : vec4<f32> = x_25.x_Grain_TilingParams;
  let x_821 : vec4<f32> = x_25.x_Grain_TilingParams;
  let x_823 : vec2<f32> = ((x_814 * vec2<f32>(x_817.x, x_817.y)) + vec2<f32>(x_821.z, x_821.w));
  let x_824 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_823.x, x_823.y, x_824.z);
  let x_831 : vec3<f32> = u_xlat1;
  let x_834 : f32 = x_25.x_GlobalMipBias.x;
  let x_835 : vec4<f32> = textureSampleBias(x_Grain_Texture, sampler_LinearRepeat, vec2<f32>(x_831.x, x_831.y), x_834);
  u_xlat15 = x_835.w;
  let x_837 : f32 = u_xlat15;
  u_xlat15 = (x_837 + -0.5f);
  let x_839 : f32 = u_xlat15;
  let x_840 : f32 = u_xlat15;
  u_xlat15 = (x_839 + x_840);
  let x_842 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(x_842.x, x_842.y, x_842.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_851 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_851);
  let x_856 : f32 = x_25.x_Grain_Params.y;
  let x_858 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_856 * -(x_858)) + 1.0f);
  let x_863 : f32 = u_xlat15;
  let x_865 : vec4<f32> = u_xlat0;
  u_xlat6 = (vec3<f32>(x_863, x_863, x_863) * vec3<f32>(x_865.x, x_865.y, x_865.z));
  let x_868 : vec3<f32> = u_xlat6;
  let x_871 : vec2<f32> = x_25.x_Grain_Params;
  u_xlat6 = (x_868 * vec3<f32>(x_871.x, x_871.x, x_871.x));
  let x_874 : vec3<f32> = u_xlat6;
  let x_875 : vec3<f32> = u_xlat1;
  let x_878 : vec4<f32> = u_xlat0;
  let x_880 : vec3<f32> = ((x_874 * vec3<f32>(x_875.x, x_875.x, x_875.x)) + vec3<f32>(x_878.x, x_878.y, x_878.z));
  let x_881 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_880.x, x_880.y, x_880.z, x_881.w);
  let x_883 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_883.x, x_883.y, x_883.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_886 : vec4<f32> = u_xlat0;
  let x_889 : vec3<f32> = log2(abs(vec3<f32>(x_886.x, x_886.y, x_886.z)));
  let x_890 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_889.x, x_889.y, x_889.z, x_890.w);
  let x_892 : vec4<f32> = u_xlat2;
  let x_894 : vec3<f32> = (vec3<f32>(x_892.x, x_892.y, x_892.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_895 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_894.x, x_894.y, x_894.z, x_895.w);
  let x_897 : vec4<f32> = u_xlat2;
  let x_899 : vec3<f32> = exp2(vec3<f32>(x_897.x, x_897.y, x_897.z));
  let x_900 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_899.x, x_899.y, x_899.z, x_900.w);
  let x_902 : vec4<f32> = u_xlat2;
  let x_905 : vec3<f32> = ((vec3<f32>(x_902.x, x_902.y, x_902.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_906 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_905.x, x_905.y, x_905.z, x_906.w);
  let x_909 : vec4<f32> = u_xlat0;
  let x_911 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_909.x, x_909.y, x_909.z, x_909.x));
  u_xlatb0 = vec3<bool>(x_911.x, x_911.y, x_911.z);
  let x_916 : bool = u_xlatb0.x;
  if (x_916) {
    let x_921 : f32 = u_xlat1.x;
    x_917 = x_921;
  } else {
    let x_924 : f32 = u_xlat2.x;
    x_917 = x_924;
  }
  let x_925 : f32 = x_917;
  SV_Target0.x = x_925;
  let x_929 : bool = u_xlatb0.y;
  if (x_929) {
    let x_934 : f32 = u_xlat1.y;
    x_930 = x_934;
  } else {
    let x_937 : f32 = u_xlat2.y;
    x_930 = x_937;
  }
  let x_938 : f32 = x_930;
  SV_Target0.y = x_938;
  let x_941 : bool = u_xlatb0.z;
  if (x_941) {
    let x_946 : f32 = u_xlat1.z;
    x_942 = x_946;
  } else {
    let x_949 : f32 = u_xlat2.z;
    x_942 = x_949;
  }
  let x_950 : f32 = x_942;
  SV_Target0.z = x_950;
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

