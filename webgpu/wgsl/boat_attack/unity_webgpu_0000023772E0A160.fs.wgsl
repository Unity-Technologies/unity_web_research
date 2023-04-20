diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_RTHandleScale : vec4<f32>,
  /* @offset(32) */
  x_BlitTexture_TexelSize : vec4<f32>,
  /* @offset(48) */
  x_BloomTexture_TexelSize : vec4<f32>,
  /* @offset(64) */
  x_Lut_Params : vec4<f32>,
  /* @offset(80) */
  x_UserLut_Params : vec4<f32>,
  /* @offset(96) */
  x_Bloom_Params : vec4<f32>,
  /* @offset(112) */
  x_Bloom_RGBM : f32,
  /* @offset(128) */
  x_LensDirt_Params : vec4<f32>,
  /* @offset(144) */
  x_LensDirt_Intensity : f32,
  /* @offset(160) */
  x_Distortion_Params1 : vec4<f32>,
  /* @offset(176) */
  x_Distortion_Params2 : vec4<f32>,
  /* @offset(192) */
  x_Vignette_Params1 : vec4<f32>,
  /* @offset(208) */
  x_Vignette_Params2 : vec4<f32>,
  /* @offset(224) */
  x_Grain_Params : vec2<f32>,
  /* @offset(240) */
  x_Grain_TilingParams : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat10 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_25 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlatb6 : bool;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat11 : f32;

var<private> u_xlat16 : f32;

var<private> u_xlat7 : f32;

var<private> u_xlat12 : f32;

var<private> u_xlatb17 : bool;

var<private> u_xlatb1 : vec3<bool>;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_LinearClamp : sampler;

@group(0) @binding(1) var x_Bloom_Texture : texture_2d<f32>;

var<private> u_xlatb15 : bool;

@group(0) @binding(2) var x_LensDirt_Texture : texture_2d<f32>;

var<private> u_xlat15 : f32;

var<private> u_xlatb3 : vec3<bool>;

@group(0) @binding(5) var x_UserLut : texture_2d<f32>;

var<private> u_xlat4 : vec2<f32>;

@group(0) @binding(4) var x_InternalLut : texture_2d<f32>;

var<private> u_xlat5 : vec3<f32>;

@group(0) @binding(3) var x_Grain_Texture : texture_2d<f32>;

@group(0) @binding(7) var sampler_LinearRepeat : sampler;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_232 : f32;
  var hlslcc_movcTemp : vec4<f32>;
  var x_614 : f32;
  var x_626 : f32;
  var x_638 : f32;
  var x_789 : f32;
  var x_801 : f32;
  var x_813 : f32;
  var x_1019 : f32;
  var x_1032 : f32;
  var x_1044 : f32;
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
  let x_59 : vec4<f32> = u_xlat0;
  let x_61 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec2<f32>(x_59.x, x_59.y), vec2<f32>(x_61.x, x_61.y));
  let x_69 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_69);
  let x_79 : f32 = x_25.x_Distortion_Params2.w;
  u_xlatb6 = (0.0f < x_79);
  let x_81 : bool = u_xlatb6;
  if (x_81) {
    let x_87 : vec4<f32> = u_xlat1;
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
    u_xlat12 = ((x_171 * 0.02083509974181652069f) + -0.08513300120830535889f);
    let x_176 : f32 = u_xlat7;
    let x_177 : f32 = u_xlat12;
    u_xlat12 = ((x_176 * x_177) + 0.18014100193977355957f);
    let x_181 : f32 = u_xlat7;
    let x_182 : f32 = u_xlat12;
    u_xlat12 = ((x_181 * x_182) + -0.33029949665069580078f);
    let x_186 : f32 = u_xlat7;
    let x_187 : f32 = u_xlat12;
    u_xlat7 = ((x_186 * x_187) + 0.99986600875854492188f);
    let x_191 : f32 = u_xlat7;
    let x_193 : f32 = u_xlat2.x;
    u_xlat12 = (x_191 * x_193);
    let x_197 : f32 = u_xlat1.x;
    u_xlatb17 = (1.0f < abs(x_197));
    let x_200 : f32 = u_xlat12;
    u_xlat12 = ((x_200 * -2.0f) + 1.57079637050628662109f);
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
      let x_236 : f32 = u_xlat2.x;
      x_232 = -(x_236);
    } else {
      let x_240 : f32 = u_xlat2.x;
      x_232 = x_240;
    }
    let x_241 : f32 = x_232;
    u_xlat1.x = x_241;
    let x_243 : f32 = u_xlat16;
    let x_245 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_243 * x_245) + -1.0f);
    let x_249 : vec4<f32> = u_xlat0;
    let x_251 : vec4<f32> = u_xlat1;
    let x_254 : vec2<f32> = u_xlat10;
    let x_255 : vec2<f32> = ((vec2<f32>(x_249.x, x_249.y) * vec2<f32>(x_251.x, x_251.x)) + x_254);
    let x_256 : vec3<f32> = u_xlat6;
    u_xlat6 = vec3<f32>(x_255.x, x_255.y, x_256.z);
  }
  let x_260 : vec4<f32> = x_25.x_BlitTexture_TexelSize;
  let x_266 : vec4<f32> = x_25.x_RTHandleScale;
  let x_268 : vec2<f32> = ((-(vec2<f32>(x_260.x, x_260.y)) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_266.x, x_266.y));
  let x_269 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_268.x, x_268.y, x_269.z, x_269.w);
  let x_271 : vec4<f32> = u_xlat0;
  let x_273 : vec3<f32> = u_xlat6;
  let x_275 : vec2<f32> = min(vec2<f32>(x_271.x, x_271.y), vec2<f32>(x_273.x, x_273.y));
  let x_276 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_275.x, x_275.y, x_276.z, x_276.w);
  let x_288 : vec4<f32> = u_xlat0;
  let x_292 : f32 = x_25.x_GlobalMipBias.x;
  let x_293 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_288.x, x_288.y), x_292);
  let x_294 : vec3<f32> = vec3<f32>(x_293.x, x_293.y, x_293.z);
  let x_295 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_294.x, x_294.y, x_294.z, x_295.w);
  let x_299 : vec4<f32> = x_25.x_BloomTexture_TexelSize;
  let x_304 : vec4<f32> = x_25.x_RTHandleScale;
  let x_306 : vec2<f32> = ((-(vec2<f32>(x_299.x, x_299.y)) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_304.x, x_304.y));
  let x_307 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_306.x, x_307.y, x_307.z, x_306.y);
  let x_309 : vec4<f32> = u_xlat1;
  let x_311 : vec3<f32> = u_xlat6;
  let x_313 : vec2<f32> = min(vec2<f32>(x_309.x, x_309.w), vec2<f32>(x_311.x, x_311.y));
  let x_314 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_313.x, x_314.y, x_314.z, x_313.y);
  let x_320 : vec4<f32> = u_xlat1;
  let x_323 : f32 = x_25.x_GlobalMipBias.x;
  let x_324 : vec4<f32> = textureSampleBias(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_320.x, x_320.w), x_323);
  u_xlat2 = x_324;
  let x_328 : f32 = x_25.x_Bloom_RGBM;
  u_xlatb15 = (0.0f < x_328);
  let x_330 : bool = u_xlatb15;
  if (x_330) {
    let x_333 : vec4<f32> = u_xlat2;
    let x_335 : vec4<f32> = u_xlat2;
    u_xlat3 = (vec3<f32>(x_333.w, x_333.w, x_333.w) * vec3<f32>(x_335.x, x_335.y, x_335.z));
    let x_338 : vec3<f32> = u_xlat3;
    let x_341 : vec3<f32> = (x_338 * vec3<f32>(8.0f, 8.0f, 8.0f));
    let x_342 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_341.x, x_341.y, x_341.z, x_342.w);
  }
  let x_344 : vec4<f32> = u_xlat2;
  let x_348 : vec4<f32> = x_25.x_Bloom_Params;
  let x_350 : vec3<f32> = (vec3<f32>(x_344.x, x_344.y, x_344.z) * vec3<f32>(x_348.x, x_348.x, x_348.x));
  let x_351 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_350.x, x_350.y, x_350.z, x_351.w);
  let x_353 : vec4<f32> = u_xlat2;
  let x_356 : vec4<f32> = x_25.x_Bloom_Params;
  let x_359 : vec4<f32> = u_xlat0;
  let x_361 : vec3<f32> = ((vec3<f32>(x_353.x, x_353.y, x_353.z) * vec3<f32>(x_356.y, x_356.z, x_356.w)) + vec3<f32>(x_359.x, x_359.y, x_359.z));
  let x_362 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_361.x, x_361.y, x_361.z, x_362.w);
  let x_364 : vec3<f32> = u_xlat6;
  let x_368 : vec4<f32> = x_25.x_LensDirt_Params;
  let x_372 : vec4<f32> = x_25.x_LensDirt_Params;
  let x_374 : vec2<f32> = ((vec2<f32>(x_364.x, x_364.y) * vec2<f32>(x_368.x, x_368.y)) + vec2<f32>(x_372.z, x_372.w));
  let x_375 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_374.x, x_375.y, x_375.z, x_374.y);
  let x_381 : vec4<f32> = u_xlat1;
  let x_384 : f32 = x_25.x_GlobalMipBias.x;
  let x_385 : vec4<f32> = textureSampleBias(x_LensDirt_Texture, sampler_LinearClamp, vec2<f32>(x_381.x, x_381.w), x_384);
  u_xlat3 = vec3<f32>(x_385.x, x_385.y, x_385.z);
  let x_387 : vec3<f32> = u_xlat3;
  let x_390 : f32 = x_25.x_LensDirt_Intensity;
  u_xlat3 = (x_387 * vec3<f32>(x_390, x_390, x_390));
  let x_393 : vec3<f32> = u_xlat3;
  let x_394 : vec4<f32> = u_xlat2;
  let x_397 : vec4<f32> = u_xlat0;
  let x_399 : vec3<f32> = ((x_393 * vec3<f32>(x_394.x, x_394.y, x_394.z)) + vec3<f32>(x_397.x, x_397.y, x_397.z));
  let x_400 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_399.x, x_399.y, x_399.z, x_400.w);
  let x_405 : f32 = x_25.x_Vignette_Params2.z;
  u_xlatb15 = (0.0f < x_405);
  let x_407 : bool = u_xlatb15;
  if (x_407) {
    let x_410 : vec3<f32> = u_xlat6;
    let x_413 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_416 : vec2<f32> = (vec2<f32>(x_410.x, x_410.y) + -(vec2<f32>(x_413.x, x_413.y)));
    let x_417 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_416.x, x_416.y, x_417.z, x_417.w);
    let x_419 : vec4<f32> = u_xlat1;
    let x_423 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_425 : vec2<f32> = (abs(vec2<f32>(x_419.x, x_419.y)) * vec2<f32>(x_423.z, x_423.z));
    let x_426 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_426.x, x_425.x, x_425.y, x_426.w);
    let x_429 : f32 = u_xlat1.y;
    let x_432 : f32 = x_25.x_Vignette_Params1.w;
    u_xlat1.x = (x_429 * x_432);
    let x_436 : vec4<f32> = u_xlat1;
    let x_438 : vec4<f32> = u_xlat1;
    u_xlat15 = dot(vec2<f32>(x_436.x, x_436.z), vec2<f32>(x_438.x, x_438.z));
    let x_441 : f32 = u_xlat15;
    u_xlat15 = (-(x_441) + 1.0f);
    let x_444 : f32 = u_xlat15;
    u_xlat15 = max(x_444, 0.0f);
    let x_446 : f32 = u_xlat15;
    u_xlat15 = log2(x_446);
    let x_448 : f32 = u_xlat15;
    let x_450 : f32 = x_25.x_Vignette_Params2.w;
    u_xlat15 = (x_448 * x_450);
    let x_452 : f32 = u_xlat15;
    u_xlat15 = exp2(x_452);
    let x_455 : vec4<f32> = x_25.x_Vignette_Params1;
    let x_459 : vec3<f32> = (-(vec3<f32>(x_455.x, x_455.y, x_455.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_460 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_459.x, x_459.y, x_459.z, x_460.w);
    let x_462 : f32 = u_xlat15;
    let x_464 : vec4<f32> = u_xlat1;
    let x_468 : vec4<f32> = x_25.x_Vignette_Params1;
    let x_470 : vec3<f32> = ((vec3<f32>(x_462, x_462, x_462) * vec3<f32>(x_464.x, x_464.y, x_464.z)) + vec3<f32>(x_468.x, x_468.y, x_468.z));
    let x_471 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_470.x, x_470.y, x_470.z, x_471.w);
    let x_473 : vec4<f32> = u_xlat0;
    let x_475 : vec4<f32> = u_xlat1;
    let x_477 : vec3<f32> = (vec3<f32>(x_473.x, x_473.y, x_473.z) * vec3<f32>(x_475.x, x_475.y, x_475.z));
    let x_478 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_477.x, x_477.y, x_477.z, x_478.w);
  }
  let x_480 : vec4<f32> = u_xlat0;
  let x_484 : vec4<f32> = x_25.x_Lut_Params;
  let x_486 : vec3<f32> = (vec3<f32>(x_480.x, x_480.y, x_480.z) * vec3<f32>(x_484.w, x_484.w, x_484.w));
  let x_487 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_486.x, x_486.y, x_486.z, x_487.w);
  let x_489 : vec4<f32> = u_xlat0;
  let x_493 : vec3<f32> = (vec3<f32>(x_489.x, x_489.y, x_489.z) * vec3<f32>(1.31338608264923095703f, 1.31338608264923095703f, 1.31338608264923095703f));
  let x_494 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_493.x, x_493.y, x_493.z, x_494.w);
  let x_496 : vec4<f32> = u_xlat0;
  let x_503 : vec3<f32> = ((vec3<f32>(x_496.x, x_496.y, x_496.z) * vec3<f32>(0.26267722249031066895f, 0.26267722249031066895f, 0.26267722249031066895f)) + vec3<f32>(0.06959999352693557739f, 0.06959999352693557739f, 0.06959999352693557739f));
  let x_504 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_503.x, x_503.y, x_503.z, x_504.w);
  let x_506 : vec4<f32> = u_xlat1;
  let x_508 : vec4<f32> = u_xlat2;
  let x_513 : vec3<f32> = ((vec3<f32>(x_506.x, x_506.y, x_506.z) * vec3<f32>(x_508.x, x_508.y, x_508.z)) + vec3<f32>(0.00543999997898936272f, 0.00543999997898936272f, 0.00543999997898936272f));
  let x_514 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_513.x, x_513.y, x_513.z, x_514.w);
  let x_516 : vec4<f32> = u_xlat0;
  let x_521 : vec3<f32> = ((vec3<f32>(x_516.x, x_516.y, x_516.z) * vec3<f32>(0.26267722249031066895f, 0.26267722249031066895f, 0.26267722249031066895f)) + vec3<f32>(0.28999999165534973145f, 0.28999999165534973145f, 0.28999999165534973145f));
  let x_522 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_521.x, x_521.y, x_521.z, x_522.w);
  let x_524 : vec4<f32> = u_xlat1;
  let x_526 : vec4<f32> = u_xlat0;
  let x_531 : vec3<f32> = ((vec3<f32>(x_524.x, x_524.y, x_524.z) * vec3<f32>(x_526.x, x_526.y, x_526.z)) + vec3<f32>(0.08160001039505004883f, 0.08160001039505004883f, 0.08160001039505004883f));
  let x_532 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_531.x, x_531.y, x_531.z, x_532.w);
  let x_534 : vec4<f32> = u_xlat2;
  let x_536 : vec4<f32> = u_xlat0;
  let x_538 : vec3<f32> = (vec3<f32>(x_534.x, x_534.y, x_534.z) / vec3<f32>(x_536.x, x_536.y, x_536.z));
  let x_539 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_538.x, x_538.y, x_538.z, x_539.w);
  let x_541 : vec4<f32> = u_xlat0;
  let x_545 : vec3<f32> = (vec3<f32>(x_541.x, x_541.y, x_541.z) + vec3<f32>(-0.06666666269302368164f, -0.06666666269302368164f, -0.06666666269302368164f));
  let x_546 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_545.x, x_545.y, x_545.z, x_546.w);
  let x_548 : vec4<f32> = u_xlat0;
  let x_550 : vec3<f32> = (vec3<f32>(x_548.x, x_548.y, x_548.z) * vec3<f32>(1.31338608264923095703f, 1.31338608264923095703f, 1.31338608264923095703f));
  let x_551 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_550.x, x_550.y, x_550.z, x_551.w);
  let x_553 : vec4<f32> = u_xlat0;
  let x_557 : vec3<f32> = clamp(vec3<f32>(x_553.x, x_553.y, x_553.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_558 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_557.x, x_557.y, x_557.z, x_558.w);
  let x_562 : f32 = x_25.x_UserLut_Params.w;
  u_xlatb15 = (0.0f < x_562);
  let x_564 : bool = u_xlatb15;
  if (x_564) {
    let x_567 : vec4<f32> = u_xlat0;
    let x_571 : vec3<f32> = (vec3<f32>(x_567.x, x_567.y, x_567.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
    let x_572 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_571.x, x_571.y, x_571.z, x_572.w);
    let x_574 : vec4<f32> = u_xlat0;
    let x_576 : vec3<f32> = log2(vec3<f32>(x_574.x, x_574.y, x_574.z));
    let x_577 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_576.x, x_576.y, x_576.z, x_577.w);
    let x_579 : vec4<f32> = u_xlat2;
    let x_583 : vec3<f32> = (vec3<f32>(x_579.x, x_579.y, x_579.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
    let x_584 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_583.x, x_583.y, x_583.z, x_584.w);
    let x_586 : vec4<f32> = u_xlat2;
    let x_588 : vec3<f32> = exp2(vec3<f32>(x_586.x, x_586.y, x_586.z));
    let x_589 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_588.x, x_588.y, x_588.z, x_589.w);
    let x_591 : vec4<f32> = u_xlat2;
    let x_598 : vec3<f32> = ((vec3<f32>(x_591.x, x_591.y, x_591.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
    let x_599 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_598.x, x_598.y, x_598.z, x_599.w);
    let x_604 : vec4<f32> = u_xlat0;
    let x_607 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_604.x, x_604.y, x_604.z, x_604.x));
    u_xlatb3 = vec3<bool>(x_607.x, x_607.y, x_607.z);
    let x_611 : vec4<f32> = u_xlat1;
    hlslcc_movcTemp = x_611;
    let x_613 : bool = u_xlatb3.x;
    if (x_613) {
      let x_618 : f32 = u_xlat1.x;
      x_614 = x_618;
    } else {
      let x_621 : f32 = u_xlat2.x;
      x_614 = x_621;
    }
    let x_622 : f32 = x_614;
    hlslcc_movcTemp.x = x_622;
    let x_625 : bool = u_xlatb3.y;
    if (x_625) {
      let x_630 : f32 = u_xlat1.y;
      x_626 = x_630;
    } else {
      let x_633 : f32 = u_xlat2.y;
      x_626 = x_633;
    }
    let x_634 : f32 = x_626;
    hlslcc_movcTemp.y = x_634;
    let x_637 : bool = u_xlatb3.z;
    if (x_637) {
      let x_642 : f32 = u_xlat1.z;
      x_638 = x_642;
    } else {
      let x_645 : f32 = u_xlat2.z;
      x_638 = x_645;
    }
    let x_646 : f32 = x_638;
    hlslcc_movcTemp.z = x_646;
    let x_648 : vec4<f32> = hlslcc_movcTemp;
    u_xlat1 = x_648;
    let x_649 : vec4<f32> = u_xlat1;
    let x_652 : vec4<f32> = x_25.x_UserLut_Params;
    let x_654 : vec3<f32> = (vec3<f32>(x_649.z, x_649.x, x_649.y) * vec3<f32>(x_652.z, x_652.z, x_652.z));
    let x_655 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_654.x, x_654.y, x_654.z, x_655.w);
    let x_658 : f32 = u_xlat2.x;
    u_xlat15 = floor(x_658);
    let x_661 : vec4<f32> = x_25.x_UserLut_Params;
    let x_663 : vec2<f32> = (vec2<f32>(x_661.x, x_661.y) * vec2<f32>(0.5f, 0.5f));
    let x_664 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_663.x, x_664.y, x_664.z, x_663.y);
    let x_666 : vec4<f32> = u_xlat2;
    let x_669 : vec4<f32> = x_25.x_UserLut_Params;
    let x_672 : vec4<f32> = u_xlat2;
    let x_674 : vec2<f32> = ((vec2<f32>(x_666.y, x_666.z) * vec2<f32>(x_669.x, x_669.y)) + vec2<f32>(x_672.x, x_672.w));
    let x_675 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_675.x, x_674.x, x_674.y, x_675.w);
    let x_677 : f32 = u_xlat15;
    let x_679 : f32 = x_25.x_UserLut_Params.y;
    let x_682 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_677 * x_679) + x_682);
    let x_689 : vec4<f32> = u_xlat2;
    let x_691 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_689.x, x_689.z), 0.0f);
    u_xlat3 = vec3<f32>(x_691.x, x_691.y, x_691.z);
    let x_695 : f32 = x_25.x_UserLut_Params.y;
    u_xlat4.x = x_695;
    u_xlat4.y = 0.0f;
    let x_698 : vec4<f32> = u_xlat2;
    let x_700 : vec2<f32> = u_xlat4;
    let x_701 : vec2<f32> = (vec2<f32>(x_698.x, x_698.z) + x_700);
    let x_702 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_701.x, x_701.y, x_702.z, x_702.w);
    let x_707 : vec4<f32> = u_xlat2;
    let x_709 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_707.x, x_707.y), 0.0f);
    let x_710 : vec3<f32> = vec3<f32>(x_709.x, x_709.y, x_709.z);
    let x_711 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_710.x, x_710.y, x_710.z, x_711.w);
    let x_714 : f32 = u_xlat1.z;
    let x_716 : f32 = x_25.x_UserLut_Params.z;
    let x_718 : f32 = u_xlat15;
    u_xlat15 = ((x_714 * x_716) + -(x_718));
    let x_721 : vec3<f32> = u_xlat3;
    let x_723 : vec4<f32> = u_xlat2;
    let x_725 : vec3<f32> = (-(x_721) + vec3<f32>(x_723.x, x_723.y, x_723.z));
    let x_726 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_725.x, x_725.y, x_725.z, x_726.w);
    let x_728 : f32 = u_xlat15;
    let x_730 : vec4<f32> = u_xlat2;
    let x_733 : vec3<f32> = u_xlat3;
    let x_734 : vec3<f32> = ((vec3<f32>(x_728, x_728, x_728) * vec3<f32>(x_730.x, x_730.y, x_730.z)) + x_733);
    let x_735 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_734.x, x_734.y, x_734.z, x_735.w);
    let x_737 : vec4<f32> = u_xlat1;
    let x_740 : vec4<f32> = u_xlat2;
    let x_742 : vec3<f32> = (-(vec3<f32>(x_737.x, x_737.y, x_737.z)) + vec3<f32>(x_740.x, x_740.y, x_740.z));
    let x_743 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_742.x, x_742.y, x_742.z, x_743.w);
    let x_746 : vec4<f32> = x_25.x_UserLut_Params;
    let x_748 : vec4<f32> = u_xlat2;
    let x_751 : vec4<f32> = u_xlat1;
    let x_753 : vec3<f32> = ((vec3<f32>(x_746.w, x_746.w, x_746.w) * vec3<f32>(x_748.x, x_748.y, x_748.z)) + vec3<f32>(x_751.x, x_751.y, x_751.z));
    let x_754 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_753.x, x_753.y, x_753.z, x_754.w);
    let x_756 : vec4<f32> = u_xlat1;
    let x_760 : vec3<f32> = (vec3<f32>(x_756.x, x_756.y, x_756.z) * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
    let x_761 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_760.x, x_760.y, x_760.z, x_761.w);
    let x_763 : vec4<f32> = u_xlat1;
    u_xlat3 = (vec3<f32>(x_763.x, x_763.y, x_763.z) + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
    let x_768 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_768 * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
    let x_772 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_772));
    let x_775 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_775 * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
    let x_779 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_779);
    let x_783 : vec4<f32> = u_xlat1;
    let x_785 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_783.x, x_783.y, x_783.z, x_783.x));
    u_xlatb1 = vec3<bool>(x_785.x, x_785.y, x_785.z);
    let x_788 : bool = u_xlatb1.x;
    if (x_788) {
      let x_793 : f32 = u_xlat2.x;
      x_789 = x_793;
    } else {
      let x_796 : f32 = u_xlat3.x;
      x_789 = x_796;
    }
    let x_797 : f32 = x_789;
    u_xlat0.x = x_797;
    let x_800 : bool = u_xlatb1.y;
    if (x_800) {
      let x_805 : f32 = u_xlat2.y;
      x_801 = x_805;
    } else {
      let x_808 : f32 = u_xlat3.y;
      x_801 = x_808;
    }
    let x_809 : f32 = x_801;
    u_xlat0.y = x_809;
    let x_812 : bool = u_xlatb1.z;
    if (x_812) {
      let x_817 : f32 = u_xlat2.z;
      x_813 = x_817;
    } else {
      let x_820 : f32 = u_xlat3.z;
      x_813 = x_820;
    }
    let x_821 : f32 = x_813;
    u_xlat0.z = x_821;
  }
  let x_823 : vec4<f32> = u_xlat0;
  let x_826 : vec4<f32> = x_25.x_Lut_Params;
  let x_828 : vec3<f32> = (vec3<f32>(x_823.x, x_823.y, x_823.z) * vec3<f32>(x_826.z, x_826.z, x_826.z));
  let x_829 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_828.x, x_828.y, x_829.z, x_828.z);
  let x_832 : f32 = u_xlat0.w;
  u_xlat15 = floor(x_832);
  let x_835 : vec4<f32> = x_25.x_Lut_Params;
  let x_837 : vec2<f32> = (vec2<f32>(x_835.x, x_835.y) * vec2<f32>(0.5f, 0.5f));
  let x_838 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_837.x, x_837.y, x_838.z, x_838.w);
  let x_840 : vec4<f32> = u_xlat0;
  let x_843 : vec4<f32> = x_25.x_Lut_Params;
  let x_846 : vec4<f32> = u_xlat1;
  let x_848 : vec2<f32> = ((vec2<f32>(x_840.x, x_840.y) * vec2<f32>(x_843.x, x_843.y)) + vec2<f32>(x_846.x, x_846.y));
  let x_849 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_849.x, x_848.x, x_848.y, x_849.w);
  let x_851 : f32 = u_xlat15;
  let x_853 : f32 = x_25.x_Lut_Params.y;
  let x_856 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_851 * x_853) + x_856);
  let x_863 : vec4<f32> = u_xlat1;
  let x_865 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_863.x, x_863.z), 0.0f);
  let x_866 : vec3<f32> = vec3<f32>(x_865.x, x_865.y, x_865.z);
  let x_867 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_866.x, x_866.y, x_866.z, x_867.w);
  let x_870 : f32 = x_25.x_Lut_Params.y;
  u_xlat0.x = x_870;
  u_xlat0.y = 0.0f;
  let x_873 : vec4<f32> = u_xlat0;
  let x_875 : vec4<f32> = u_xlat1;
  let x_877 : vec2<f32> = (vec2<f32>(x_873.x, x_873.y) + vec2<f32>(x_875.x, x_875.z));
  let x_878 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_877.x, x_877.y, x_878.z, x_878.w);
  let x_883 : vec4<f32> = u_xlat0;
  let x_885 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_883.x, x_883.y), 0.0f);
  let x_886 : vec3<f32> = vec3<f32>(x_885.x, x_885.y, x_885.z);
  let x_887 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_886.x, x_886.y, x_886.z, x_887.w);
  let x_890 : f32 = u_xlat0.z;
  let x_892 : f32 = x_25.x_Lut_Params.z;
  let x_894 : f32 = u_xlat15;
  u_xlat0.x = ((x_890 * x_892) + -(x_894));
  let x_899 : vec4<f32> = u_xlat2;
  let x_902 : vec4<f32> = u_xlat1;
  u_xlat5 = (-(vec3<f32>(x_899.x, x_899.y, x_899.z)) + vec3<f32>(x_902.x, x_902.y, x_902.z));
  let x_905 : vec4<f32> = u_xlat0;
  let x_907 : vec3<f32> = u_xlat5;
  let x_909 : vec4<f32> = u_xlat2;
  let x_911 : vec3<f32> = ((vec3<f32>(x_905.x, x_905.x, x_905.x) * x_907) + vec3<f32>(x_909.x, x_909.y, x_909.z));
  let x_912 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_911.x, x_911.y, x_911.z, x_912.w);
  let x_914 : vec2<f32> = vs_TEXCOORD0;
  let x_917 : vec4<f32> = x_25.x_Grain_TilingParams;
  let x_921 : vec4<f32> = x_25.x_Grain_TilingParams;
  let x_923 : vec2<f32> = ((x_914 * vec2<f32>(x_917.x, x_917.y)) + vec2<f32>(x_921.z, x_921.w));
  let x_924 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_923.x, x_923.y, x_924.z, x_924.w);
  let x_931 : vec4<f32> = u_xlat1;
  let x_934 : f32 = x_25.x_GlobalMipBias.x;
  let x_935 : vec4<f32> = textureSampleBias(x_Grain_Texture, sampler_LinearRepeat, vec2<f32>(x_931.x, x_931.y), x_934);
  u_xlat15 = x_935.w;
  let x_937 : f32 = u_xlat15;
  u_xlat15 = (x_937 + -0.5f);
  let x_939 : f32 = u_xlat15;
  let x_940 : f32 = u_xlat15;
  u_xlat15 = (x_939 + x_940);
  let x_942 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(x_942.x, x_942.y, x_942.z), vec3<f32>(0.21267290413379669189f, 0.71515220403671264648f, 0.07217500358819961548f));
  let x_951 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_951);
  let x_956 : f32 = x_25.x_Grain_Params.y;
  let x_958 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_956 * -(x_958)) + 1.0f);
  let x_963 : f32 = u_xlat15;
  let x_965 : vec4<f32> = u_xlat0;
  u_xlat6 = (vec3<f32>(x_963, x_963, x_963) * vec3<f32>(x_965.x, x_965.y, x_965.z));
  let x_968 : vec3<f32> = u_xlat6;
  let x_971 : vec2<f32> = x_25.x_Grain_Params;
  u_xlat6 = (x_968 * vec3<f32>(x_971.x, x_971.x, x_971.x));
  let x_974 : vec3<f32> = u_xlat6;
  let x_975 : vec4<f32> = u_xlat1;
  let x_978 : vec4<f32> = u_xlat0;
  let x_980 : vec3<f32> = ((x_974 * vec3<f32>(x_975.x, x_975.x, x_975.x)) + vec3<f32>(x_978.x, x_978.y, x_978.z));
  let x_981 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_980.x, x_980.y, x_980.z, x_981.w);
  let x_983 : vec4<f32> = u_xlat0;
  let x_985 : vec3<f32> = (vec3<f32>(x_983.x, x_983.y, x_983.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
  let x_986 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_985.x, x_985.y, x_985.z, x_986.w);
  let x_988 : vec4<f32> = u_xlat0;
  let x_991 : vec3<f32> = log2(abs(vec3<f32>(x_988.x, x_988.y, x_988.z)));
  let x_992 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_991.x, x_991.y, x_991.z, x_992.w);
  let x_994 : vec4<f32> = u_xlat2;
  let x_996 : vec3<f32> = (vec3<f32>(x_994.x, x_994.y, x_994.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
  let x_997 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_996.x, x_996.y, x_996.z, x_997.w);
  let x_999 : vec4<f32> = u_xlat2;
  let x_1001 : vec3<f32> = exp2(vec3<f32>(x_999.x, x_999.y, x_999.z));
  let x_1002 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1001.x, x_1001.y, x_1001.z, x_1002.w);
  let x_1004 : vec4<f32> = u_xlat2;
  let x_1007 : vec3<f32> = ((vec3<f32>(x_1004.x, x_1004.y, x_1004.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
  let x_1008 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1007.x, x_1007.y, x_1007.z, x_1008.w);
  let x_1011 : vec4<f32> = u_xlat0;
  let x_1013 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_1011.x, x_1011.y, x_1011.z, x_1011.x));
  u_xlatb0 = vec3<bool>(x_1013.x, x_1013.y, x_1013.z);
  let x_1018 : bool = u_xlatb0.x;
  if (x_1018) {
    let x_1023 : f32 = u_xlat1.x;
    x_1019 = x_1023;
  } else {
    let x_1026 : f32 = u_xlat2.x;
    x_1019 = x_1026;
  }
  let x_1027 : f32 = x_1019;
  SV_Target0.x = x_1027;
  let x_1031 : bool = u_xlatb0.y;
  if (x_1031) {
    let x_1036 : f32 = u_xlat1.y;
    x_1032 = x_1036;
  } else {
    let x_1039 : f32 = u_xlat2.y;
    x_1032 = x_1039;
  }
  let x_1040 : f32 = x_1032;
  SV_Target0.y = x_1040;
  let x_1043 : bool = u_xlatb0.z;
  if (x_1043) {
    let x_1048 : f32 = u_xlat1.z;
    x_1044 = x_1048;
  } else {
    let x_1051 : f32 = u_xlat2.z;
    x_1044 = x_1051;
  }
  let x_1052 : f32 = x_1044;
  SV_Target0.z = x_1052;
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


