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
  /* @offset(256) */
  x_Dithering_Params : vec4<f32>,
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

@group(0) @binding(7) var sampler_LinearClamp : sampler;

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

@group(0) @binding(9) var sampler_LinearRepeat : sampler;

@group(0) @binding(6) var x_BlueNoise_Texture : texture_2d<f32>;

@group(0) @binding(8) var sampler_PointRepeat : sampler;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_232 : f32;
  var hlslcc_movcTemp : vec4<f32>;
  var x_550 : f32;
  var x_562 : f32;
  var x_574 : f32;
  var x_725 : f32;
  var x_737 : f32;
  var x_749 : f32;
  var x_1004 : f32;
  var x_1016 : f32;
  var x_1028 : f32;
  var x_1085 : f32;
  var x_1097 : f32;
  var x_1109 : f32;
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
  let x_493 : vec3<f32> = clamp(vec3<f32>(x_489.x, x_489.y, x_489.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_494 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_493.x, x_493.y, x_493.z, x_494.w);
  let x_498 : f32 = x_25.x_UserLut_Params.w;
  u_xlatb15 = (0.0f < x_498);
  let x_500 : bool = u_xlatb15;
  if (x_500) {
    let x_503 : vec4<f32> = u_xlat0;
    let x_507 : vec3<f32> = (vec3<f32>(x_503.x, x_503.y, x_503.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
    let x_508 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_507.x, x_507.y, x_507.z, x_508.w);
    let x_510 : vec4<f32> = u_xlat0;
    let x_512 : vec3<f32> = log2(vec3<f32>(x_510.x, x_510.y, x_510.z));
    let x_513 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_512.x, x_512.y, x_512.z, x_513.w);
    let x_515 : vec4<f32> = u_xlat2;
    let x_519 : vec3<f32> = (vec3<f32>(x_515.x, x_515.y, x_515.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
    let x_520 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_519.x, x_519.y, x_519.z, x_520.w);
    let x_522 : vec4<f32> = u_xlat2;
    let x_524 : vec3<f32> = exp2(vec3<f32>(x_522.x, x_522.y, x_522.z));
    let x_525 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_524.x, x_524.y, x_524.z, x_525.w);
    let x_527 : vec4<f32> = u_xlat2;
    let x_534 : vec3<f32> = ((vec3<f32>(x_527.x, x_527.y, x_527.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
    let x_535 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_534.x, x_534.y, x_534.z, x_535.w);
    let x_540 : vec4<f32> = u_xlat0;
    let x_543 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_540.x, x_540.y, x_540.z, x_540.x));
    u_xlatb3 = vec3<bool>(x_543.x, x_543.y, x_543.z);
    let x_547 : vec4<f32> = u_xlat1;
    hlslcc_movcTemp = x_547;
    let x_549 : bool = u_xlatb3.x;
    if (x_549) {
      let x_554 : f32 = u_xlat1.x;
      x_550 = x_554;
    } else {
      let x_557 : f32 = u_xlat2.x;
      x_550 = x_557;
    }
    let x_558 : f32 = x_550;
    hlslcc_movcTemp.x = x_558;
    let x_561 : bool = u_xlatb3.y;
    if (x_561) {
      let x_566 : f32 = u_xlat1.y;
      x_562 = x_566;
    } else {
      let x_569 : f32 = u_xlat2.y;
      x_562 = x_569;
    }
    let x_570 : f32 = x_562;
    hlslcc_movcTemp.y = x_570;
    let x_573 : bool = u_xlatb3.z;
    if (x_573) {
      let x_578 : f32 = u_xlat1.z;
      x_574 = x_578;
    } else {
      let x_581 : f32 = u_xlat2.z;
      x_574 = x_581;
    }
    let x_582 : f32 = x_574;
    hlslcc_movcTemp.z = x_582;
    let x_584 : vec4<f32> = hlslcc_movcTemp;
    u_xlat1 = x_584;
    let x_585 : vec4<f32> = u_xlat1;
    let x_588 : vec4<f32> = x_25.x_UserLut_Params;
    let x_590 : vec3<f32> = (vec3<f32>(x_585.z, x_585.x, x_585.y) * vec3<f32>(x_588.z, x_588.z, x_588.z));
    let x_591 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_590.x, x_590.y, x_590.z, x_591.w);
    let x_594 : f32 = u_xlat2.x;
    u_xlat15 = floor(x_594);
    let x_597 : vec4<f32> = x_25.x_UserLut_Params;
    let x_599 : vec2<f32> = (vec2<f32>(x_597.x, x_597.y) * vec2<f32>(0.5f, 0.5f));
    let x_600 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_599.x, x_600.y, x_600.z, x_599.y);
    let x_602 : vec4<f32> = u_xlat2;
    let x_605 : vec4<f32> = x_25.x_UserLut_Params;
    let x_608 : vec4<f32> = u_xlat2;
    let x_610 : vec2<f32> = ((vec2<f32>(x_602.y, x_602.z) * vec2<f32>(x_605.x, x_605.y)) + vec2<f32>(x_608.x, x_608.w));
    let x_611 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_611.x, x_610.x, x_610.y, x_611.w);
    let x_613 : f32 = u_xlat15;
    let x_615 : f32 = x_25.x_UserLut_Params.y;
    let x_618 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_613 * x_615) + x_618);
    let x_625 : vec4<f32> = u_xlat2;
    let x_627 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_625.x, x_625.z), 0.0f);
    u_xlat3 = vec3<f32>(x_627.x, x_627.y, x_627.z);
    let x_631 : f32 = x_25.x_UserLut_Params.y;
    u_xlat4.x = x_631;
    u_xlat4.y = 0.0f;
    let x_634 : vec4<f32> = u_xlat2;
    let x_636 : vec2<f32> = u_xlat4;
    let x_637 : vec2<f32> = (vec2<f32>(x_634.x, x_634.z) + x_636);
    let x_638 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_637.x, x_637.y, x_638.z, x_638.w);
    let x_643 : vec4<f32> = u_xlat2;
    let x_645 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_643.x, x_643.y), 0.0f);
    let x_646 : vec3<f32> = vec3<f32>(x_645.x, x_645.y, x_645.z);
    let x_647 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_646.x, x_646.y, x_646.z, x_647.w);
    let x_650 : f32 = u_xlat1.z;
    let x_652 : f32 = x_25.x_UserLut_Params.z;
    let x_654 : f32 = u_xlat15;
    u_xlat15 = ((x_650 * x_652) + -(x_654));
    let x_657 : vec3<f32> = u_xlat3;
    let x_659 : vec4<f32> = u_xlat2;
    let x_661 : vec3<f32> = (-(x_657) + vec3<f32>(x_659.x, x_659.y, x_659.z));
    let x_662 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_661.x, x_661.y, x_661.z, x_662.w);
    let x_664 : f32 = u_xlat15;
    let x_666 : vec4<f32> = u_xlat2;
    let x_669 : vec3<f32> = u_xlat3;
    let x_670 : vec3<f32> = ((vec3<f32>(x_664, x_664, x_664) * vec3<f32>(x_666.x, x_666.y, x_666.z)) + x_669);
    let x_671 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_670.x, x_670.y, x_670.z, x_671.w);
    let x_673 : vec4<f32> = u_xlat1;
    let x_676 : vec4<f32> = u_xlat2;
    let x_678 : vec3<f32> = (-(vec3<f32>(x_673.x, x_673.y, x_673.z)) + vec3<f32>(x_676.x, x_676.y, x_676.z));
    let x_679 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_678.x, x_678.y, x_678.z, x_679.w);
    let x_682 : vec4<f32> = x_25.x_UserLut_Params;
    let x_684 : vec4<f32> = u_xlat2;
    let x_687 : vec4<f32> = u_xlat1;
    let x_689 : vec3<f32> = ((vec3<f32>(x_682.w, x_682.w, x_682.w) * vec3<f32>(x_684.x, x_684.y, x_684.z)) + vec3<f32>(x_687.x, x_687.y, x_687.z));
    let x_690 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_689.x, x_689.y, x_689.z, x_690.w);
    let x_692 : vec4<f32> = u_xlat1;
    let x_696 : vec3<f32> = (vec3<f32>(x_692.x, x_692.y, x_692.z) * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
    let x_697 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_696.x, x_696.y, x_696.z, x_697.w);
    let x_699 : vec4<f32> = u_xlat1;
    u_xlat3 = (vec3<f32>(x_699.x, x_699.y, x_699.z) + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
    let x_704 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_704 * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
    let x_708 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_708));
    let x_711 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_711 * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
    let x_715 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_715);
    let x_719 : vec4<f32> = u_xlat1;
    let x_721 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_719.x, x_719.y, x_719.z, x_719.x));
    u_xlatb1 = vec3<bool>(x_721.x, x_721.y, x_721.z);
    let x_724 : bool = u_xlatb1.x;
    if (x_724) {
      let x_729 : f32 = u_xlat2.x;
      x_725 = x_729;
    } else {
      let x_732 : f32 = u_xlat3.x;
      x_725 = x_732;
    }
    let x_733 : f32 = x_725;
    u_xlat0.x = x_733;
    let x_736 : bool = u_xlatb1.y;
    if (x_736) {
      let x_741 : f32 = u_xlat2.y;
      x_737 = x_741;
    } else {
      let x_744 : f32 = u_xlat3.y;
      x_737 = x_744;
    }
    let x_745 : f32 = x_737;
    u_xlat0.y = x_745;
    let x_748 : bool = u_xlatb1.z;
    if (x_748) {
      let x_753 : f32 = u_xlat2.z;
      x_749 = x_753;
    } else {
      let x_756 : f32 = u_xlat3.z;
      x_749 = x_756;
    }
    let x_757 : f32 = x_749;
    u_xlat0.z = x_757;
  }
  let x_759 : vec4<f32> = u_xlat0;
  let x_762 : vec4<f32> = x_25.x_Lut_Params;
  let x_764 : vec3<f32> = (vec3<f32>(x_759.x, x_759.y, x_759.z) * vec3<f32>(x_762.z, x_762.z, x_762.z));
  let x_765 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_764.x, x_764.y, x_765.z, x_764.z);
  let x_768 : f32 = u_xlat0.w;
  u_xlat15 = floor(x_768);
  let x_771 : vec4<f32> = x_25.x_Lut_Params;
  let x_773 : vec2<f32> = (vec2<f32>(x_771.x, x_771.y) * vec2<f32>(0.5f, 0.5f));
  let x_774 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_773.x, x_773.y, x_774.z, x_774.w);
  let x_776 : vec4<f32> = u_xlat0;
  let x_779 : vec4<f32> = x_25.x_Lut_Params;
  let x_782 : vec4<f32> = u_xlat1;
  let x_784 : vec2<f32> = ((vec2<f32>(x_776.x, x_776.y) * vec2<f32>(x_779.x, x_779.y)) + vec2<f32>(x_782.x, x_782.y));
  let x_785 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_785.x, x_784.x, x_784.y, x_785.w);
  let x_787 : f32 = u_xlat15;
  let x_789 : f32 = x_25.x_Lut_Params.y;
  let x_792 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_787 * x_789) + x_792);
  let x_799 : vec4<f32> = u_xlat1;
  let x_801 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_799.x, x_799.z), 0.0f);
  let x_802 : vec3<f32> = vec3<f32>(x_801.x, x_801.y, x_801.z);
  let x_803 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_802.x, x_802.y, x_802.z, x_803.w);
  let x_806 : f32 = x_25.x_Lut_Params.y;
  u_xlat0.x = x_806;
  u_xlat0.y = 0.0f;
  let x_809 : vec4<f32> = u_xlat0;
  let x_811 : vec4<f32> = u_xlat1;
  let x_813 : vec2<f32> = (vec2<f32>(x_809.x, x_809.y) + vec2<f32>(x_811.x, x_811.z));
  let x_814 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_813.x, x_813.y, x_814.z, x_814.w);
  let x_819 : vec4<f32> = u_xlat0;
  let x_821 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_819.x, x_819.y), 0.0f);
  let x_822 : vec3<f32> = vec3<f32>(x_821.x, x_821.y, x_821.z);
  let x_823 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_822.x, x_822.y, x_822.z, x_823.w);
  let x_826 : f32 = u_xlat0.z;
  let x_828 : f32 = x_25.x_Lut_Params.z;
  let x_830 : f32 = u_xlat15;
  u_xlat0.x = ((x_826 * x_828) + -(x_830));
  let x_835 : vec4<f32> = u_xlat2;
  let x_838 : vec4<f32> = u_xlat1;
  u_xlat5 = (-(vec3<f32>(x_835.x, x_835.y, x_835.z)) + vec3<f32>(x_838.x, x_838.y, x_838.z));
  let x_841 : vec4<f32> = u_xlat0;
  let x_843 : vec3<f32> = u_xlat5;
  let x_845 : vec4<f32> = u_xlat2;
  let x_847 : vec3<f32> = ((vec3<f32>(x_841.x, x_841.x, x_841.x) * x_843) + vec3<f32>(x_845.x, x_845.y, x_845.z));
  let x_848 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_847.x, x_847.y, x_847.z, x_848.w);
  let x_850 : vec2<f32> = vs_TEXCOORD0;
  let x_853 : vec4<f32> = x_25.x_Grain_TilingParams;
  let x_857 : vec4<f32> = x_25.x_Grain_TilingParams;
  let x_859 : vec2<f32> = ((x_850 * vec2<f32>(x_853.x, x_853.y)) + vec2<f32>(x_857.z, x_857.w));
  let x_860 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_859.x, x_859.y, x_860.z, x_860.w);
  let x_867 : vec4<f32> = u_xlat1;
  let x_870 : f32 = x_25.x_GlobalMipBias.x;
  let x_871 : vec4<f32> = textureSampleBias(x_Grain_Texture, sampler_LinearRepeat, vec2<f32>(x_867.x, x_867.y), x_870);
  u_xlat15 = x_871.w;
  let x_873 : f32 = u_xlat15;
  u_xlat15 = (x_873 + -0.5f);
  let x_875 : f32 = u_xlat15;
  let x_876 : f32 = u_xlat15;
  u_xlat15 = (x_875 + x_876);
  let x_878 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(x_878.x, x_878.y, x_878.z), vec3<f32>(0.21267290413379669189f, 0.71515220403671264648f, 0.07217500358819961548f));
  let x_887 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_887);
  let x_892 : f32 = x_25.x_Grain_Params.y;
  let x_894 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_892 * -(x_894)) + 1.0f);
  let x_899 : f32 = u_xlat15;
  let x_901 : vec4<f32> = u_xlat0;
  u_xlat6 = (vec3<f32>(x_899, x_899, x_899) * vec3<f32>(x_901.x, x_901.y, x_901.z));
  let x_904 : vec3<f32> = u_xlat6;
  let x_907 : vec2<f32> = x_25.x_Grain_Params;
  u_xlat6 = (x_904 * vec3<f32>(x_907.x, x_907.x, x_907.x));
  let x_910 : vec3<f32> = u_xlat6;
  let x_911 : vec4<f32> = u_xlat1;
  let x_914 : vec4<f32> = u_xlat0;
  let x_916 : vec3<f32> = ((x_910 * vec3<f32>(x_911.x, x_911.x, x_911.x)) + vec3<f32>(x_914.x, x_914.y, x_914.z));
  let x_917 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_916.x, x_916.y, x_916.z, x_917.w);
  let x_919 : vec4<f32> = u_xlat0;
  let x_921 : vec3<f32> = sqrt(vec3<f32>(x_919.x, x_919.y, x_919.z));
  let x_922 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_921.x, x_921.y, x_921.z, x_922.w);
  let x_924 : vec2<f32> = vs_TEXCOORD0;
  let x_927 : vec4<f32> = x_25.x_Dithering_Params;
  let x_931 : vec4<f32> = x_25.x_Dithering_Params;
  let x_933 : vec2<f32> = ((x_924 * vec2<f32>(x_927.x, x_927.y)) + vec2<f32>(x_931.z, x_931.w));
  let x_934 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_933.x, x_933.y, x_934.z, x_934.w);
  let x_941 : vec4<f32> = u_xlat1;
  let x_944 : f32 = x_25.x_GlobalMipBias.x;
  let x_945 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_941.x, x_941.y), x_944);
  u_xlat15 = x_945.w;
  let x_947 : f32 = u_xlat15;
  u_xlat15 = ((x_947 * 2.0f) + -1.0f);
  let x_951 : f32 = u_xlat15;
  u_xlatb1.x = (x_951 >= 0.0f);
  let x_955 : bool = u_xlatb1.x;
  u_xlat1.x = select(-1.0f, 1.0f, x_955);
  let x_958 : f32 = u_xlat15;
  u_xlat15 = (-(abs(x_958)) + 1.0f);
  let x_962 : f32 = u_xlat15;
  u_xlat15 = sqrt(x_962);
  let x_964 : f32 = u_xlat15;
  u_xlat15 = (-(x_964) + 1.0f);
  let x_967 : f32 = u_xlat15;
  let x_969 : f32 = u_xlat1.x;
  u_xlat15 = (x_967 * x_969);
  let x_971 : vec4<f32> = u_xlat0;
  let x_973 : vec3<f32> = (vec3<f32>(x_971.x, x_971.y, x_971.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
  let x_974 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_973.x, x_973.y, x_973.z, x_974.w);
  let x_976 : vec4<f32> = u_xlat0;
  let x_978 : vec3<f32> = log2(vec3<f32>(x_976.x, x_976.y, x_976.z));
  let x_979 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_978.x, x_978.y, x_978.z, x_979.w);
  let x_981 : vec4<f32> = u_xlat2;
  let x_983 : vec3<f32> = (vec3<f32>(x_981.x, x_981.y, x_981.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
  let x_984 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_983.x, x_983.y, x_983.z, x_984.w);
  let x_986 : vec4<f32> = u_xlat2;
  let x_988 : vec3<f32> = exp2(vec3<f32>(x_986.x, x_986.y, x_986.z));
  let x_989 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_988.x, x_988.y, x_988.z, x_989.w);
  let x_991 : vec4<f32> = u_xlat2;
  let x_994 : vec3<f32> = ((vec3<f32>(x_991.x, x_991.y, x_991.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
  let x_995 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_994.x, x_994.y, x_994.z, x_995.w);
  let x_998 : vec4<f32> = u_xlat0;
  let x_1000 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_998.x, x_998.y, x_998.z, x_998.x));
  u_xlatb0 = vec3<bool>(x_1000.x, x_1000.y, x_1000.z);
  let x_1003 : bool = u_xlatb0.x;
  if (x_1003) {
    let x_1008 : f32 = u_xlat1.x;
    x_1004 = x_1008;
  } else {
    let x_1011 : f32 = u_xlat2.x;
    x_1004 = x_1011;
  }
  let x_1012 : f32 = x_1004;
  u_xlat0.x = x_1012;
  let x_1015 : bool = u_xlatb0.y;
  if (x_1015) {
    let x_1020 : f32 = u_xlat1.y;
    x_1016 = x_1020;
  } else {
    let x_1023 : f32 = u_xlat2.y;
    x_1016 = x_1023;
  }
  let x_1024 : f32 = x_1016;
  u_xlat0.y = x_1024;
  let x_1027 : bool = u_xlatb0.z;
  if (x_1027) {
    let x_1032 : f32 = u_xlat1.z;
    x_1028 = x_1032;
  } else {
    let x_1035 : f32 = u_xlat2.z;
    x_1028 = x_1035;
  }
  let x_1036 : f32 = x_1028;
  u_xlat0.z = x_1036;
  let x_1038 : f32 = u_xlat15;
  let x_1043 : vec4<f32> = u_xlat0;
  let x_1045 : vec3<f32> = ((vec3<f32>(x_1038, x_1038, x_1038) * vec3<f32>(0.0039215688593685627f, 0.0039215688593685627f, 0.0039215688593685627f)) + vec3<f32>(x_1043.x, x_1043.y, x_1043.z));
  let x_1046 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1045.x, x_1045.y, x_1045.z, x_1046.w);
  let x_1048 : vec4<f32> = u_xlat0;
  let x_1050 : vec3<f32> = (vec3<f32>(x_1048.x, x_1048.y, x_1048.z) * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
  let x_1051 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1050.x, x_1050.y, x_1050.z, x_1051.w);
  let x_1053 : vec4<f32> = u_xlat0;
  let x_1055 : vec3<f32> = (vec3<f32>(x_1053.x, x_1053.y, x_1053.z) + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
  let x_1056 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1055.x, x_1055.y, x_1055.z, x_1056.w);
  let x_1058 : vec4<f32> = u_xlat2;
  let x_1060 : vec3<f32> = (vec3<f32>(x_1058.x, x_1058.y, x_1058.z) * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
  let x_1061 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1060.x, x_1060.y, x_1060.z, x_1061.w);
  let x_1063 : vec4<f32> = u_xlat2;
  let x_1066 : vec3<f32> = log2(abs(vec3<f32>(x_1063.x, x_1063.y, x_1063.z)));
  let x_1067 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1066.x, x_1066.y, x_1066.z, x_1067.w);
  let x_1069 : vec4<f32> = u_xlat2;
  let x_1071 : vec3<f32> = (vec3<f32>(x_1069.x, x_1069.y, x_1069.z) * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
  let x_1072 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1071.x, x_1071.y, x_1071.z, x_1072.w);
  let x_1074 : vec4<f32> = u_xlat2;
  let x_1076 : vec3<f32> = exp2(vec3<f32>(x_1074.x, x_1074.y, x_1074.z));
  let x_1077 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1076.x, x_1076.y, x_1076.z, x_1077.w);
  let x_1079 : vec4<f32> = u_xlat0;
  let x_1081 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_1079.x, x_1079.y, x_1079.z, x_1079.x));
  u_xlatb0 = vec3<bool>(x_1081.x, x_1081.y, x_1081.z);
  let x_1084 : bool = u_xlatb0.x;
  if (x_1084) {
    let x_1089 : f32 = u_xlat1.x;
    x_1085 = x_1089;
  } else {
    let x_1092 : f32 = u_xlat2.x;
    x_1085 = x_1092;
  }
  let x_1093 : f32 = x_1085;
  u_xlat0.x = x_1093;
  let x_1096 : bool = u_xlatb0.y;
  if (x_1096) {
    let x_1101 : f32 = u_xlat1.y;
    x_1097 = x_1101;
  } else {
    let x_1104 : f32 = u_xlat2.y;
    x_1097 = x_1104;
  }
  let x_1105 : f32 = x_1097;
  u_xlat0.y = x_1105;
  let x_1108 : bool = u_xlatb0.z;
  if (x_1108) {
    let x_1113 : f32 = u_xlat1.z;
    x_1109 = x_1113;
  } else {
    let x_1116 : f32 = u_xlat2.z;
    x_1109 = x_1116;
  }
  let x_1117 : f32 = x_1109;
  u_xlat0.z = x_1117;
  let x_1121 : vec4<f32> = u_xlat0;
  let x_1124 : vec3<f32> = max(vec3<f32>(x_1121.x, x_1121.y, x_1121.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1125 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1124.x, x_1124.y, x_1124.z, x_1125.w);
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


