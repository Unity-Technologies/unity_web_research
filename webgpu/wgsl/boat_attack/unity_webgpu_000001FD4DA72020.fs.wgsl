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
  x_Dithering_Params : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat10 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_25 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlatb6 : bool;

var<private> u_xlat6 : vec2<f32>;

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

@group(0) @binding(4) var x_UserLut : texture_2d<f32>;

var<private> u_xlat4 : vec2<f32>;

@group(0) @binding(3) var x_InternalLut : texture_2d<f32>;

var<private> u_xlat5 : vec3<f32>;

@group(0) @binding(5) var x_BlueNoise_Texture : texture_2d<f32>;

@group(0) @binding(7) var sampler_PointRepeat : sampler;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_228 : f32;
  var hlslcc_movcTemp : vec4<f32>;
  var x_604 : f32;
  var x_616 : f32;
  var x_628 : f32;
  var x_779 : f32;
  var x_791 : f32;
  var x_803 : f32;
  var x_985 : f32;
  var x_997 : f32;
  var x_1009 : f32;
  var x_1066 : f32;
  var x_1078 : f32;
  var x_1090 : f32;
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
    let x_85 : vec4<f32> = u_xlat1;
    let x_88 : vec4<f32> = x_25.x_Distortion_Params2;
    u_xlat6 = (vec2<f32>(x_85.x, x_85.x) * vec2<f32>(x_88.x, x_88.y));
    let x_93 : f32 = u_xlat6.x;
    u_xlat2.x = sin(x_93);
    let x_100 : f32 = u_xlat6.x;
    u_xlat3.x = cos(x_100);
    let x_104 : f32 = u_xlat2.x;
    let x_106 : f32 = u_xlat3.x;
    u_xlat6.x = (x_104 / x_106);
    let x_113 : f32 = u_xlat6.y;
    u_xlat11 = (1.0f / x_113);
    let x_116 : f32 = u_xlat6.x;
    let x_117 : f32 = u_xlat11;
    u_xlat6.x = ((x_116 * x_117) + -1.0f);
    let x_122 : vec4<f32> = u_xlat0;
    let x_124 : vec2<f32> = u_xlat6;
    let x_127 : vec2<f32> = u_xlat10;
    u_xlat6 = ((vec2<f32>(x_122.x, x_122.y) * vec2<f32>(x_124.x, x_124.x)) + x_127);
  } else {
    let x_132 : f32 = u_xlat1.x;
    u_xlat16 = (1.0f / x_132);
    let x_134 : f32 = u_xlat16;
    let x_136 : f32 = x_25.x_Distortion_Params2.x;
    u_xlat16 = (x_134 * x_136);
    let x_139 : f32 = u_xlat1.x;
    let x_141 : f32 = x_25.x_Distortion_Params2.y;
    u_xlat1.x = (x_139 * x_141);
    let x_145 : f32 = u_xlat1.x;
    u_xlat2.x = min(abs(x_145), 1.0f);
    let x_151 : f32 = u_xlat1.x;
    u_xlat7 = max(abs(x_151), 1.0f);
    let x_154 : f32 = u_xlat7;
    u_xlat7 = (1.0f / x_154);
    let x_156 : f32 = u_xlat7;
    let x_158 : f32 = u_xlat2.x;
    u_xlat2.x = (x_156 * x_158);
    let x_162 : f32 = u_xlat2.x;
    let x_164 : f32 = u_xlat2.x;
    u_xlat7 = (x_162 * x_164);
    let x_167 : f32 = u_xlat7;
    u_xlat12 = ((x_167 * 0.02083509974181652069f) + -0.08513300120830535889f);
    let x_172 : f32 = u_xlat7;
    let x_173 : f32 = u_xlat12;
    u_xlat12 = ((x_172 * x_173) + 0.18014100193977355957f);
    let x_177 : f32 = u_xlat7;
    let x_178 : f32 = u_xlat12;
    u_xlat12 = ((x_177 * x_178) + -0.33029949665069580078f);
    let x_182 : f32 = u_xlat7;
    let x_183 : f32 = u_xlat12;
    u_xlat7 = ((x_182 * x_183) + 0.99986600875854492188f);
    let x_187 : f32 = u_xlat7;
    let x_189 : f32 = u_xlat2.x;
    u_xlat12 = (x_187 * x_189);
    let x_193 : f32 = u_xlat1.x;
    u_xlatb17 = (1.0f < abs(x_193));
    let x_196 : f32 = u_xlat12;
    u_xlat12 = ((x_196 * -2.0f) + 1.57079637050628662109f);
    let x_201 : bool = u_xlatb17;
    let x_202 : f32 = u_xlat12;
    u_xlat12 = select(0.0f, x_202, x_201);
    let x_205 : f32 = u_xlat2.x;
    let x_206 : f32 = u_xlat7;
    let x_208 : f32 = u_xlat12;
    u_xlat2.x = ((x_205 * x_206) + x_208);
    let x_212 : f32 = u_xlat1.x;
    u_xlat1.x = min(x_212, 1.0f);
    let x_219 : f32 = u_xlat1.x;
    let x_221 : f32 = u_xlat1.x;
    u_xlatb1.x = (x_219 < -(x_221));
    let x_226 : bool = u_xlatb1.x;
    if (x_226) {
      let x_232 : f32 = u_xlat2.x;
      x_228 = -(x_232);
    } else {
      let x_236 : f32 = u_xlat2.x;
      x_228 = x_236;
    }
    let x_237 : f32 = x_228;
    u_xlat1.x = x_237;
    let x_239 : f32 = u_xlat16;
    let x_241 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_239 * x_241) + -1.0f);
    let x_245 : vec4<f32> = u_xlat0;
    let x_247 : vec4<f32> = u_xlat1;
    let x_250 : vec2<f32> = u_xlat10;
    u_xlat6 = ((vec2<f32>(x_245.x, x_245.y) * vec2<f32>(x_247.x, x_247.x)) + x_250);
  }
  let x_254 : vec4<f32> = x_25.x_BlitTexture_TexelSize;
  let x_260 : vec4<f32> = x_25.x_RTHandleScale;
  let x_262 : vec2<f32> = ((-(vec2<f32>(x_254.x, x_254.y)) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_260.x, x_260.y));
  let x_263 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_262.x, x_262.y, x_263.z, x_263.w);
  let x_265 : vec4<f32> = u_xlat0;
  let x_267 : vec2<f32> = u_xlat6;
  let x_268 : vec2<f32> = min(vec2<f32>(x_265.x, x_265.y), x_267);
  let x_269 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_268.x, x_268.y, x_269.z, x_269.w);
  let x_281 : vec4<f32> = u_xlat0;
  let x_285 : f32 = x_25.x_GlobalMipBias.x;
  let x_286 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_281.x, x_281.y), x_285);
  let x_287 : vec3<f32> = vec3<f32>(x_286.x, x_286.y, x_286.z);
  let x_288 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_287.x, x_287.y, x_287.z, x_288.w);
  let x_292 : vec4<f32> = x_25.x_BloomTexture_TexelSize;
  let x_297 : vec4<f32> = x_25.x_RTHandleScale;
  let x_299 : vec2<f32> = ((-(vec2<f32>(x_292.x, x_292.y)) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_297.x, x_297.y));
  let x_300 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_299.x, x_300.y, x_300.z, x_299.y);
  let x_302 : vec4<f32> = u_xlat1;
  let x_304 : vec2<f32> = u_xlat6;
  let x_305 : vec2<f32> = min(vec2<f32>(x_302.x, x_302.w), x_304);
  let x_306 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_305.x, x_306.y, x_306.z, x_305.y);
  let x_312 : vec4<f32> = u_xlat1;
  let x_315 : f32 = x_25.x_GlobalMipBias.x;
  let x_316 : vec4<f32> = textureSampleBias(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_312.x, x_312.w), x_315);
  u_xlat2 = x_316;
  let x_320 : f32 = x_25.x_Bloom_RGBM;
  u_xlatb15 = (0.0f < x_320);
  let x_322 : bool = u_xlatb15;
  if (x_322) {
    let x_325 : vec4<f32> = u_xlat2;
    let x_327 : vec4<f32> = u_xlat2;
    u_xlat3 = (vec3<f32>(x_325.w, x_325.w, x_325.w) * vec3<f32>(x_327.x, x_327.y, x_327.z));
    let x_330 : vec3<f32> = u_xlat3;
    let x_333 : vec3<f32> = (x_330 * vec3<f32>(8.0f, 8.0f, 8.0f));
    let x_334 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
  }
  let x_336 : vec4<f32> = u_xlat2;
  let x_340 : vec4<f32> = x_25.x_Bloom_Params;
  let x_342 : vec3<f32> = (vec3<f32>(x_336.x, x_336.y, x_336.z) * vec3<f32>(x_340.x, x_340.x, x_340.x));
  let x_343 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_342.x, x_342.y, x_342.z, x_343.w);
  let x_345 : vec4<f32> = u_xlat2;
  let x_348 : vec4<f32> = x_25.x_Bloom_Params;
  let x_351 : vec4<f32> = u_xlat0;
  let x_353 : vec3<f32> = ((vec3<f32>(x_345.x, x_345.y, x_345.z) * vec3<f32>(x_348.y, x_348.z, x_348.w)) + vec3<f32>(x_351.x, x_351.y, x_351.z));
  let x_354 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_353.x, x_353.y, x_353.z, x_354.w);
  let x_356 : vec2<f32> = u_xlat6;
  let x_359 : vec4<f32> = x_25.x_LensDirt_Params;
  let x_363 : vec4<f32> = x_25.x_LensDirt_Params;
  let x_365 : vec2<f32> = ((x_356 * vec2<f32>(x_359.x, x_359.y)) + vec2<f32>(x_363.z, x_363.w));
  let x_366 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_365.x, x_366.y, x_366.z, x_365.y);
  let x_372 : vec4<f32> = u_xlat1;
  let x_375 : f32 = x_25.x_GlobalMipBias.x;
  let x_376 : vec4<f32> = textureSampleBias(x_LensDirt_Texture, sampler_LinearClamp, vec2<f32>(x_372.x, x_372.w), x_375);
  u_xlat3 = vec3<f32>(x_376.x, x_376.y, x_376.z);
  let x_378 : vec3<f32> = u_xlat3;
  let x_381 : f32 = x_25.x_LensDirt_Intensity;
  u_xlat3 = (x_378 * vec3<f32>(x_381, x_381, x_381));
  let x_384 : vec3<f32> = u_xlat3;
  let x_385 : vec4<f32> = u_xlat2;
  let x_388 : vec4<f32> = u_xlat0;
  let x_390 : vec3<f32> = ((x_384 * vec3<f32>(x_385.x, x_385.y, x_385.z)) + vec3<f32>(x_388.x, x_388.y, x_388.z));
  let x_391 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_390.x, x_390.y, x_390.z, x_391.w);
  let x_396 : f32 = x_25.x_Vignette_Params2.z;
  u_xlatb15 = (0.0f < x_396);
  let x_398 : bool = u_xlatb15;
  if (x_398) {
    let x_401 : vec2<f32> = u_xlat6;
    let x_403 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_406 : vec2<f32> = (x_401 + -(vec2<f32>(x_403.x, x_403.y)));
    let x_407 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_406.x, x_406.y, x_407.z, x_407.w);
    let x_409 : vec4<f32> = u_xlat1;
    let x_413 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_415 : vec2<f32> = (abs(vec2<f32>(x_409.x, x_409.y)) * vec2<f32>(x_413.z, x_413.z));
    let x_416 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_416.x, x_415.x, x_415.y, x_416.w);
    let x_419 : f32 = u_xlat1.y;
    let x_422 : f32 = x_25.x_Vignette_Params1.w;
    u_xlat1.x = (x_419 * x_422);
    let x_426 : vec4<f32> = u_xlat1;
    let x_428 : vec4<f32> = u_xlat1;
    u_xlat15 = dot(vec2<f32>(x_426.x, x_426.z), vec2<f32>(x_428.x, x_428.z));
    let x_431 : f32 = u_xlat15;
    u_xlat15 = (-(x_431) + 1.0f);
    let x_434 : f32 = u_xlat15;
    u_xlat15 = max(x_434, 0.0f);
    let x_436 : f32 = u_xlat15;
    u_xlat15 = log2(x_436);
    let x_438 : f32 = u_xlat15;
    let x_440 : f32 = x_25.x_Vignette_Params2.w;
    u_xlat15 = (x_438 * x_440);
    let x_442 : f32 = u_xlat15;
    u_xlat15 = exp2(x_442);
    let x_445 : vec4<f32> = x_25.x_Vignette_Params1;
    let x_449 : vec3<f32> = (-(vec3<f32>(x_445.x, x_445.y, x_445.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_450 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_449.x, x_449.y, x_449.z, x_450.w);
    let x_452 : f32 = u_xlat15;
    let x_454 : vec4<f32> = u_xlat1;
    let x_458 : vec4<f32> = x_25.x_Vignette_Params1;
    let x_460 : vec3<f32> = ((vec3<f32>(x_452, x_452, x_452) * vec3<f32>(x_454.x, x_454.y, x_454.z)) + vec3<f32>(x_458.x, x_458.y, x_458.z));
    let x_461 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_460.x, x_460.y, x_460.z, x_461.w);
    let x_463 : vec4<f32> = u_xlat0;
    let x_465 : vec4<f32> = u_xlat1;
    let x_467 : vec3<f32> = (vec3<f32>(x_463.x, x_463.y, x_463.z) * vec3<f32>(x_465.x, x_465.y, x_465.z));
    let x_468 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_467.x, x_467.y, x_467.z, x_468.w);
  }
  let x_470 : vec4<f32> = u_xlat0;
  let x_474 : vec4<f32> = x_25.x_Lut_Params;
  let x_476 : vec3<f32> = (vec3<f32>(x_470.x, x_470.y, x_470.z) * vec3<f32>(x_474.w, x_474.w, x_474.w));
  let x_477 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_476.x, x_476.y, x_476.z, x_477.w);
  let x_479 : vec4<f32> = u_xlat0;
  let x_483 : vec3<f32> = (vec3<f32>(x_479.x, x_479.y, x_479.z) * vec3<f32>(1.31338608264923095703f, 1.31338608264923095703f, 1.31338608264923095703f));
  let x_484 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_483.x, x_483.y, x_483.z, x_484.w);
  let x_486 : vec4<f32> = u_xlat0;
  let x_493 : vec3<f32> = ((vec3<f32>(x_486.x, x_486.y, x_486.z) * vec3<f32>(0.26267722249031066895f, 0.26267722249031066895f, 0.26267722249031066895f)) + vec3<f32>(0.06959999352693557739f, 0.06959999352693557739f, 0.06959999352693557739f));
  let x_494 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_493.x, x_493.y, x_493.z, x_494.w);
  let x_496 : vec4<f32> = u_xlat1;
  let x_498 : vec4<f32> = u_xlat2;
  let x_503 : vec3<f32> = ((vec3<f32>(x_496.x, x_496.y, x_496.z) * vec3<f32>(x_498.x, x_498.y, x_498.z)) + vec3<f32>(0.00543999997898936272f, 0.00543999997898936272f, 0.00543999997898936272f));
  let x_504 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_503.x, x_503.y, x_503.z, x_504.w);
  let x_506 : vec4<f32> = u_xlat0;
  let x_511 : vec3<f32> = ((vec3<f32>(x_506.x, x_506.y, x_506.z) * vec3<f32>(0.26267722249031066895f, 0.26267722249031066895f, 0.26267722249031066895f)) + vec3<f32>(0.28999999165534973145f, 0.28999999165534973145f, 0.28999999165534973145f));
  let x_512 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_511.x, x_511.y, x_511.z, x_512.w);
  let x_514 : vec4<f32> = u_xlat1;
  let x_516 : vec4<f32> = u_xlat0;
  let x_521 : vec3<f32> = ((vec3<f32>(x_514.x, x_514.y, x_514.z) * vec3<f32>(x_516.x, x_516.y, x_516.z)) + vec3<f32>(0.08160001039505004883f, 0.08160001039505004883f, 0.08160001039505004883f));
  let x_522 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_521.x, x_521.y, x_521.z, x_522.w);
  let x_524 : vec4<f32> = u_xlat2;
  let x_526 : vec4<f32> = u_xlat0;
  let x_528 : vec3<f32> = (vec3<f32>(x_524.x, x_524.y, x_524.z) / vec3<f32>(x_526.x, x_526.y, x_526.z));
  let x_529 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_528.x, x_528.y, x_528.z, x_529.w);
  let x_531 : vec4<f32> = u_xlat0;
  let x_535 : vec3<f32> = (vec3<f32>(x_531.x, x_531.y, x_531.z) + vec3<f32>(-0.06666666269302368164f, -0.06666666269302368164f, -0.06666666269302368164f));
  let x_536 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_535.x, x_535.y, x_535.z, x_536.w);
  let x_538 : vec4<f32> = u_xlat0;
  let x_540 : vec3<f32> = (vec3<f32>(x_538.x, x_538.y, x_538.z) * vec3<f32>(1.31338608264923095703f, 1.31338608264923095703f, 1.31338608264923095703f));
  let x_541 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_540.x, x_540.y, x_540.z, x_541.w);
  let x_543 : vec4<f32> = u_xlat0;
  let x_547 : vec3<f32> = clamp(vec3<f32>(x_543.x, x_543.y, x_543.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_548 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_547.x, x_547.y, x_547.z, x_548.w);
  let x_552 : f32 = x_25.x_UserLut_Params.w;
  u_xlatb15 = (0.0f < x_552);
  let x_554 : bool = u_xlatb15;
  if (x_554) {
    let x_557 : vec4<f32> = u_xlat0;
    let x_561 : vec3<f32> = (vec3<f32>(x_557.x, x_557.y, x_557.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
    let x_562 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_561.x, x_561.y, x_561.z, x_562.w);
    let x_564 : vec4<f32> = u_xlat0;
    let x_566 : vec3<f32> = log2(vec3<f32>(x_564.x, x_564.y, x_564.z));
    let x_567 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_566.x, x_566.y, x_566.z, x_567.w);
    let x_569 : vec4<f32> = u_xlat2;
    let x_573 : vec3<f32> = (vec3<f32>(x_569.x, x_569.y, x_569.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
    let x_574 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_573.x, x_573.y, x_573.z, x_574.w);
    let x_576 : vec4<f32> = u_xlat2;
    let x_578 : vec3<f32> = exp2(vec3<f32>(x_576.x, x_576.y, x_576.z));
    let x_579 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_578.x, x_578.y, x_578.z, x_579.w);
    let x_581 : vec4<f32> = u_xlat2;
    let x_588 : vec3<f32> = ((vec3<f32>(x_581.x, x_581.y, x_581.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
    let x_589 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_588.x, x_588.y, x_588.z, x_589.w);
    let x_594 : vec4<f32> = u_xlat0;
    let x_597 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_594.x, x_594.y, x_594.z, x_594.x));
    u_xlatb3 = vec3<bool>(x_597.x, x_597.y, x_597.z);
    let x_601 : vec4<f32> = u_xlat1;
    hlslcc_movcTemp = x_601;
    let x_603 : bool = u_xlatb3.x;
    if (x_603) {
      let x_608 : f32 = u_xlat1.x;
      x_604 = x_608;
    } else {
      let x_611 : f32 = u_xlat2.x;
      x_604 = x_611;
    }
    let x_612 : f32 = x_604;
    hlslcc_movcTemp.x = x_612;
    let x_615 : bool = u_xlatb3.y;
    if (x_615) {
      let x_620 : f32 = u_xlat1.y;
      x_616 = x_620;
    } else {
      let x_623 : f32 = u_xlat2.y;
      x_616 = x_623;
    }
    let x_624 : f32 = x_616;
    hlslcc_movcTemp.y = x_624;
    let x_627 : bool = u_xlatb3.z;
    if (x_627) {
      let x_632 : f32 = u_xlat1.z;
      x_628 = x_632;
    } else {
      let x_635 : f32 = u_xlat2.z;
      x_628 = x_635;
    }
    let x_636 : f32 = x_628;
    hlslcc_movcTemp.z = x_636;
    let x_638 : vec4<f32> = hlslcc_movcTemp;
    u_xlat1 = x_638;
    let x_639 : vec4<f32> = u_xlat1;
    let x_642 : vec4<f32> = x_25.x_UserLut_Params;
    let x_644 : vec3<f32> = (vec3<f32>(x_639.z, x_639.x, x_639.y) * vec3<f32>(x_642.z, x_642.z, x_642.z));
    let x_645 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_644.x, x_644.y, x_644.z, x_645.w);
    let x_648 : f32 = u_xlat2.x;
    u_xlat15 = floor(x_648);
    let x_651 : vec4<f32> = x_25.x_UserLut_Params;
    let x_653 : vec2<f32> = (vec2<f32>(x_651.x, x_651.y) * vec2<f32>(0.5f, 0.5f));
    let x_654 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_653.x, x_654.y, x_654.z, x_653.y);
    let x_656 : vec4<f32> = u_xlat2;
    let x_659 : vec4<f32> = x_25.x_UserLut_Params;
    let x_662 : vec4<f32> = u_xlat2;
    let x_664 : vec2<f32> = ((vec2<f32>(x_656.y, x_656.z) * vec2<f32>(x_659.x, x_659.y)) + vec2<f32>(x_662.x, x_662.w));
    let x_665 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_665.x, x_664.x, x_664.y, x_665.w);
    let x_667 : f32 = u_xlat15;
    let x_669 : f32 = x_25.x_UserLut_Params.y;
    let x_672 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_667 * x_669) + x_672);
    let x_679 : vec4<f32> = u_xlat2;
    let x_681 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_679.x, x_679.z), 0.0f);
    u_xlat3 = vec3<f32>(x_681.x, x_681.y, x_681.z);
    let x_685 : f32 = x_25.x_UserLut_Params.y;
    u_xlat4.x = x_685;
    u_xlat4.y = 0.0f;
    let x_688 : vec4<f32> = u_xlat2;
    let x_690 : vec2<f32> = u_xlat4;
    let x_691 : vec2<f32> = (vec2<f32>(x_688.x, x_688.z) + x_690);
    let x_692 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_691.x, x_691.y, x_692.z, x_692.w);
    let x_697 : vec4<f32> = u_xlat2;
    let x_699 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_697.x, x_697.y), 0.0f);
    let x_700 : vec3<f32> = vec3<f32>(x_699.x, x_699.y, x_699.z);
    let x_701 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_700.x, x_700.y, x_700.z, x_701.w);
    let x_704 : f32 = u_xlat1.z;
    let x_706 : f32 = x_25.x_UserLut_Params.z;
    let x_708 : f32 = u_xlat15;
    u_xlat15 = ((x_704 * x_706) + -(x_708));
    let x_711 : vec3<f32> = u_xlat3;
    let x_713 : vec4<f32> = u_xlat2;
    let x_715 : vec3<f32> = (-(x_711) + vec3<f32>(x_713.x, x_713.y, x_713.z));
    let x_716 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_715.x, x_715.y, x_715.z, x_716.w);
    let x_718 : f32 = u_xlat15;
    let x_720 : vec4<f32> = u_xlat2;
    let x_723 : vec3<f32> = u_xlat3;
    let x_724 : vec3<f32> = ((vec3<f32>(x_718, x_718, x_718) * vec3<f32>(x_720.x, x_720.y, x_720.z)) + x_723);
    let x_725 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_724.x, x_724.y, x_724.z, x_725.w);
    let x_727 : vec4<f32> = u_xlat1;
    let x_730 : vec4<f32> = u_xlat2;
    let x_732 : vec3<f32> = (-(vec3<f32>(x_727.x, x_727.y, x_727.z)) + vec3<f32>(x_730.x, x_730.y, x_730.z));
    let x_733 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_732.x, x_732.y, x_732.z, x_733.w);
    let x_736 : vec4<f32> = x_25.x_UserLut_Params;
    let x_738 : vec4<f32> = u_xlat2;
    let x_741 : vec4<f32> = u_xlat1;
    let x_743 : vec3<f32> = ((vec3<f32>(x_736.w, x_736.w, x_736.w) * vec3<f32>(x_738.x, x_738.y, x_738.z)) + vec3<f32>(x_741.x, x_741.y, x_741.z));
    let x_744 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_743.x, x_743.y, x_743.z, x_744.w);
    let x_746 : vec4<f32> = u_xlat1;
    let x_750 : vec3<f32> = (vec3<f32>(x_746.x, x_746.y, x_746.z) * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
    let x_751 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_750.x, x_750.y, x_750.z, x_751.w);
    let x_753 : vec4<f32> = u_xlat1;
    u_xlat3 = (vec3<f32>(x_753.x, x_753.y, x_753.z) + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
    let x_758 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_758 * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
    let x_762 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_762));
    let x_765 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_765 * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
    let x_769 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_769);
    let x_773 : vec4<f32> = u_xlat1;
    let x_775 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_773.x, x_773.y, x_773.z, x_773.x));
    u_xlatb1 = vec3<bool>(x_775.x, x_775.y, x_775.z);
    let x_778 : bool = u_xlatb1.x;
    if (x_778) {
      let x_783 : f32 = u_xlat2.x;
      x_779 = x_783;
    } else {
      let x_786 : f32 = u_xlat3.x;
      x_779 = x_786;
    }
    let x_787 : f32 = x_779;
    u_xlat0.x = x_787;
    let x_790 : bool = u_xlatb1.y;
    if (x_790) {
      let x_795 : f32 = u_xlat2.y;
      x_791 = x_795;
    } else {
      let x_798 : f32 = u_xlat3.y;
      x_791 = x_798;
    }
    let x_799 : f32 = x_791;
    u_xlat0.y = x_799;
    let x_802 : bool = u_xlatb1.z;
    if (x_802) {
      let x_807 : f32 = u_xlat2.z;
      x_803 = x_807;
    } else {
      let x_810 : f32 = u_xlat3.z;
      x_803 = x_810;
    }
    let x_811 : f32 = x_803;
    u_xlat0.z = x_811;
  }
  let x_813 : vec4<f32> = u_xlat0;
  let x_816 : vec4<f32> = x_25.x_Lut_Params;
  let x_818 : vec3<f32> = (vec3<f32>(x_813.x, x_813.y, x_813.z) * vec3<f32>(x_816.z, x_816.z, x_816.z));
  let x_819 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_818.x, x_818.y, x_819.z, x_818.z);
  let x_822 : f32 = u_xlat0.w;
  u_xlat15 = floor(x_822);
  let x_825 : vec4<f32> = x_25.x_Lut_Params;
  let x_827 : vec2<f32> = (vec2<f32>(x_825.x, x_825.y) * vec2<f32>(0.5f, 0.5f));
  let x_828 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_827.x, x_827.y, x_828.z, x_828.w);
  let x_830 : vec4<f32> = u_xlat0;
  let x_833 : vec4<f32> = x_25.x_Lut_Params;
  let x_836 : vec4<f32> = u_xlat1;
  let x_838 : vec2<f32> = ((vec2<f32>(x_830.x, x_830.y) * vec2<f32>(x_833.x, x_833.y)) + vec2<f32>(x_836.x, x_836.y));
  let x_839 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_839.x, x_838.x, x_838.y, x_839.w);
  let x_841 : f32 = u_xlat15;
  let x_843 : f32 = x_25.x_Lut_Params.y;
  let x_846 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_841 * x_843) + x_846);
  let x_853 : vec4<f32> = u_xlat1;
  let x_855 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_853.x, x_853.z), 0.0f);
  let x_856 : vec3<f32> = vec3<f32>(x_855.x, x_855.y, x_855.z);
  let x_857 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_856.x, x_856.y, x_856.z, x_857.w);
  let x_860 : f32 = x_25.x_Lut_Params.y;
  u_xlat0.x = x_860;
  u_xlat0.y = 0.0f;
  let x_863 : vec4<f32> = u_xlat0;
  let x_865 : vec4<f32> = u_xlat1;
  let x_867 : vec2<f32> = (vec2<f32>(x_863.x, x_863.y) + vec2<f32>(x_865.x, x_865.z));
  let x_868 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_867.x, x_867.y, x_868.z, x_868.w);
  let x_873 : vec4<f32> = u_xlat0;
  let x_875 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_873.x, x_873.y), 0.0f);
  let x_876 : vec3<f32> = vec3<f32>(x_875.x, x_875.y, x_875.z);
  let x_877 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_876.x, x_876.y, x_876.z, x_877.w);
  let x_880 : f32 = u_xlat0.z;
  let x_882 : f32 = x_25.x_Lut_Params.z;
  let x_884 : f32 = u_xlat15;
  u_xlat0.x = ((x_880 * x_882) + -(x_884));
  let x_889 : vec4<f32> = u_xlat2;
  let x_892 : vec4<f32> = u_xlat1;
  u_xlat5 = (-(vec3<f32>(x_889.x, x_889.y, x_889.z)) + vec3<f32>(x_892.x, x_892.y, x_892.z));
  let x_895 : vec4<f32> = u_xlat0;
  let x_897 : vec3<f32> = u_xlat5;
  let x_899 : vec4<f32> = u_xlat2;
  let x_901 : vec3<f32> = ((vec3<f32>(x_895.x, x_895.x, x_895.x) * x_897) + vec3<f32>(x_899.x, x_899.y, x_899.z));
  let x_902 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_901.x, x_901.y, x_901.z, x_902.w);
  let x_904 : vec2<f32> = vs_TEXCOORD0;
  let x_907 : vec4<f32> = x_25.x_Dithering_Params;
  let x_911 : vec4<f32> = x_25.x_Dithering_Params;
  let x_913 : vec2<f32> = ((x_904 * vec2<f32>(x_907.x, x_907.y)) + vec2<f32>(x_911.z, x_911.w));
  let x_914 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_913.x, x_913.y, x_914.z, x_914.w);
  let x_921 : vec4<f32> = u_xlat1;
  let x_924 : f32 = x_25.x_GlobalMipBias.x;
  let x_925 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_921.x, x_921.y), x_924);
  u_xlat15 = x_925.w;
  let x_927 : f32 = u_xlat15;
  u_xlat15 = ((x_927 * 2.0f) + -1.0f);
  let x_931 : f32 = u_xlat15;
  u_xlatb1.x = (x_931 >= 0.0f);
  let x_935 : bool = u_xlatb1.x;
  u_xlat1.x = select(-1.0f, 1.0f, x_935);
  let x_938 : f32 = u_xlat15;
  u_xlat15 = (-(abs(x_938)) + 1.0f);
  let x_942 : f32 = u_xlat15;
  u_xlat15 = sqrt(x_942);
  let x_944 : f32 = u_xlat15;
  u_xlat15 = (-(x_944) + 1.0f);
  let x_947 : f32 = u_xlat15;
  let x_949 : f32 = u_xlat1.x;
  u_xlat15 = (x_947 * x_949);
  let x_951 : vec4<f32> = u_xlat0;
  let x_953 : vec3<f32> = (vec3<f32>(x_951.x, x_951.y, x_951.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
  let x_954 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_953.x, x_953.y, x_953.z, x_954.w);
  let x_956 : vec4<f32> = u_xlat0;
  let x_959 : vec3<f32> = log2(abs(vec3<f32>(x_956.x, x_956.y, x_956.z)));
  let x_960 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_959.x, x_959.y, x_959.z, x_960.w);
  let x_962 : vec4<f32> = u_xlat2;
  let x_964 : vec3<f32> = (vec3<f32>(x_962.x, x_962.y, x_962.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
  let x_965 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_964.x, x_964.y, x_964.z, x_965.w);
  let x_967 : vec4<f32> = u_xlat2;
  let x_969 : vec3<f32> = exp2(vec3<f32>(x_967.x, x_967.y, x_967.z));
  let x_970 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_969.x, x_969.y, x_969.z, x_970.w);
  let x_972 : vec4<f32> = u_xlat2;
  let x_975 : vec3<f32> = ((vec3<f32>(x_972.x, x_972.y, x_972.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
  let x_976 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_975.x, x_975.y, x_975.z, x_976.w);
  let x_979 : vec4<f32> = u_xlat0;
  let x_981 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_979.x, x_979.y, x_979.z, x_979.x));
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
  let x_1019 : f32 = u_xlat15;
  let x_1024 : vec4<f32> = u_xlat0;
  let x_1026 : vec3<f32> = ((vec3<f32>(x_1019, x_1019, x_1019) * vec3<f32>(0.0039215688593685627f, 0.0039215688593685627f, 0.0039215688593685627f)) + vec3<f32>(x_1024.x, x_1024.y, x_1024.z));
  let x_1027 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1026.x, x_1026.y, x_1026.z, x_1027.w);
  let x_1029 : vec4<f32> = u_xlat0;
  let x_1031 : vec3<f32> = (vec3<f32>(x_1029.x, x_1029.y, x_1029.z) * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
  let x_1032 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1031.x, x_1031.y, x_1031.z, x_1032.w);
  let x_1034 : vec4<f32> = u_xlat0;
  let x_1036 : vec3<f32> = (vec3<f32>(x_1034.x, x_1034.y, x_1034.z) + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
  let x_1037 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1036.x, x_1036.y, x_1036.z, x_1037.w);
  let x_1039 : vec4<f32> = u_xlat2;
  let x_1041 : vec3<f32> = (vec3<f32>(x_1039.x, x_1039.y, x_1039.z) * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
  let x_1042 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1041.x, x_1041.y, x_1041.z, x_1042.w);
  let x_1044 : vec4<f32> = u_xlat2;
  let x_1047 : vec3<f32> = log2(abs(vec3<f32>(x_1044.x, x_1044.y, x_1044.z)));
  let x_1048 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1047.x, x_1047.y, x_1047.z, x_1048.w);
  let x_1050 : vec4<f32> = u_xlat2;
  let x_1052 : vec3<f32> = (vec3<f32>(x_1050.x, x_1050.y, x_1050.z) * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
  let x_1053 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1052.x, x_1052.y, x_1052.z, x_1053.w);
  let x_1055 : vec4<f32> = u_xlat2;
  let x_1057 : vec3<f32> = exp2(vec3<f32>(x_1055.x, x_1055.y, x_1055.z));
  let x_1058 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1057.x, x_1057.y, x_1057.z, x_1058.w);
  let x_1060 : vec4<f32> = u_xlat0;
  let x_1062 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_1060.x, x_1060.y, x_1060.z, x_1060.x));
  u_xlatb0 = vec3<bool>(x_1062.x, x_1062.y, x_1062.z);
  let x_1065 : bool = u_xlatb0.x;
  if (x_1065) {
    let x_1070 : f32 = u_xlat1.x;
    x_1066 = x_1070;
  } else {
    let x_1073 : f32 = u_xlat2.x;
    x_1066 = x_1073;
  }
  let x_1074 : f32 = x_1066;
  u_xlat0.x = x_1074;
  let x_1077 : bool = u_xlatb0.y;
  if (x_1077) {
    let x_1082 : f32 = u_xlat1.y;
    x_1078 = x_1082;
  } else {
    let x_1085 : f32 = u_xlat2.y;
    x_1078 = x_1085;
  }
  let x_1086 : f32 = x_1078;
  u_xlat0.y = x_1086;
  let x_1089 : bool = u_xlatb0.z;
  if (x_1089) {
    let x_1094 : f32 = u_xlat1.z;
    x_1090 = x_1094;
  } else {
    let x_1097 : f32 = u_xlat2.z;
    x_1090 = x_1097;
  }
  let x_1098 : f32 = x_1090;
  u_xlat0.z = x_1098;
  let x_1102 : vec4<f32> = u_xlat0;
  let x_1105 : vec3<f32> = max(vec3<f32>(x_1102.x, x_1102.y, x_1102.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1106 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1105.x, x_1105.y, x_1105.z, x_1106.w);
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


