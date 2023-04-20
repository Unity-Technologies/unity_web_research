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
  var x_540 : f32;
  var x_552 : f32;
  var x_564 : f32;
  var x_715 : f32;
  var x_727 : f32;
  var x_739 : f32;
  var x_925 : f32;
  var x_937 : f32;
  var x_949 : f32;
  var x_1006 : f32;
  var x_1018 : f32;
  var x_1030 : f32;
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
  let x_483 : vec3<f32> = clamp(vec3<f32>(x_479.x, x_479.y, x_479.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_484 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_483.x, x_483.y, x_483.z, x_484.w);
  let x_488 : f32 = x_25.x_UserLut_Params.w;
  u_xlatb15 = (0.0f < x_488);
  let x_490 : bool = u_xlatb15;
  if (x_490) {
    let x_493 : vec4<f32> = u_xlat0;
    let x_497 : vec3<f32> = (vec3<f32>(x_493.x, x_493.y, x_493.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
    let x_498 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_497.x, x_497.y, x_497.z, x_498.w);
    let x_500 : vec4<f32> = u_xlat0;
    let x_502 : vec3<f32> = log2(vec3<f32>(x_500.x, x_500.y, x_500.z));
    let x_503 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_502.x, x_502.y, x_502.z, x_503.w);
    let x_505 : vec4<f32> = u_xlat2;
    let x_509 : vec3<f32> = (vec3<f32>(x_505.x, x_505.y, x_505.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
    let x_510 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_509.x, x_509.y, x_509.z, x_510.w);
    let x_512 : vec4<f32> = u_xlat2;
    let x_514 : vec3<f32> = exp2(vec3<f32>(x_512.x, x_512.y, x_512.z));
    let x_515 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_514.x, x_514.y, x_514.z, x_515.w);
    let x_517 : vec4<f32> = u_xlat2;
    let x_524 : vec3<f32> = ((vec3<f32>(x_517.x, x_517.y, x_517.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
    let x_525 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_524.x, x_524.y, x_524.z, x_525.w);
    let x_530 : vec4<f32> = u_xlat0;
    let x_533 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_530.x, x_530.y, x_530.z, x_530.x));
    u_xlatb3 = vec3<bool>(x_533.x, x_533.y, x_533.z);
    let x_537 : vec4<f32> = u_xlat1;
    hlslcc_movcTemp = x_537;
    let x_539 : bool = u_xlatb3.x;
    if (x_539) {
      let x_544 : f32 = u_xlat1.x;
      x_540 = x_544;
    } else {
      let x_547 : f32 = u_xlat2.x;
      x_540 = x_547;
    }
    let x_548 : f32 = x_540;
    hlslcc_movcTemp.x = x_548;
    let x_551 : bool = u_xlatb3.y;
    if (x_551) {
      let x_556 : f32 = u_xlat1.y;
      x_552 = x_556;
    } else {
      let x_559 : f32 = u_xlat2.y;
      x_552 = x_559;
    }
    let x_560 : f32 = x_552;
    hlslcc_movcTemp.y = x_560;
    let x_563 : bool = u_xlatb3.z;
    if (x_563) {
      let x_568 : f32 = u_xlat1.z;
      x_564 = x_568;
    } else {
      let x_571 : f32 = u_xlat2.z;
      x_564 = x_571;
    }
    let x_572 : f32 = x_564;
    hlslcc_movcTemp.z = x_572;
    let x_574 : vec4<f32> = hlslcc_movcTemp;
    u_xlat1 = x_574;
    let x_575 : vec4<f32> = u_xlat1;
    let x_578 : vec4<f32> = x_25.x_UserLut_Params;
    let x_580 : vec3<f32> = (vec3<f32>(x_575.z, x_575.x, x_575.y) * vec3<f32>(x_578.z, x_578.z, x_578.z));
    let x_581 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_580.x, x_580.y, x_580.z, x_581.w);
    let x_584 : f32 = u_xlat2.x;
    u_xlat15 = floor(x_584);
    let x_587 : vec4<f32> = x_25.x_UserLut_Params;
    let x_589 : vec2<f32> = (vec2<f32>(x_587.x, x_587.y) * vec2<f32>(0.5f, 0.5f));
    let x_590 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_589.x, x_590.y, x_590.z, x_589.y);
    let x_592 : vec4<f32> = u_xlat2;
    let x_595 : vec4<f32> = x_25.x_UserLut_Params;
    let x_598 : vec4<f32> = u_xlat2;
    let x_600 : vec2<f32> = ((vec2<f32>(x_592.y, x_592.z) * vec2<f32>(x_595.x, x_595.y)) + vec2<f32>(x_598.x, x_598.w));
    let x_601 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_601.x, x_600.x, x_600.y, x_601.w);
    let x_603 : f32 = u_xlat15;
    let x_605 : f32 = x_25.x_UserLut_Params.y;
    let x_608 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_603 * x_605) + x_608);
    let x_615 : vec4<f32> = u_xlat2;
    let x_617 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_615.x, x_615.z), 0.0f);
    u_xlat3 = vec3<f32>(x_617.x, x_617.y, x_617.z);
    let x_621 : f32 = x_25.x_UserLut_Params.y;
    u_xlat4.x = x_621;
    u_xlat4.y = 0.0f;
    let x_624 : vec4<f32> = u_xlat2;
    let x_626 : vec2<f32> = u_xlat4;
    let x_627 : vec2<f32> = (vec2<f32>(x_624.x, x_624.z) + x_626);
    let x_628 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_627.x, x_627.y, x_628.z, x_628.w);
    let x_633 : vec4<f32> = u_xlat2;
    let x_635 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_633.x, x_633.y), 0.0f);
    let x_636 : vec3<f32> = vec3<f32>(x_635.x, x_635.y, x_635.z);
    let x_637 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_636.x, x_636.y, x_636.z, x_637.w);
    let x_640 : f32 = u_xlat1.z;
    let x_642 : f32 = x_25.x_UserLut_Params.z;
    let x_644 : f32 = u_xlat15;
    u_xlat15 = ((x_640 * x_642) + -(x_644));
    let x_647 : vec3<f32> = u_xlat3;
    let x_649 : vec4<f32> = u_xlat2;
    let x_651 : vec3<f32> = (-(x_647) + vec3<f32>(x_649.x, x_649.y, x_649.z));
    let x_652 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_651.x, x_651.y, x_651.z, x_652.w);
    let x_654 : f32 = u_xlat15;
    let x_656 : vec4<f32> = u_xlat2;
    let x_659 : vec3<f32> = u_xlat3;
    let x_660 : vec3<f32> = ((vec3<f32>(x_654, x_654, x_654) * vec3<f32>(x_656.x, x_656.y, x_656.z)) + x_659);
    let x_661 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_660.x, x_660.y, x_660.z, x_661.w);
    let x_663 : vec4<f32> = u_xlat1;
    let x_666 : vec4<f32> = u_xlat2;
    let x_668 : vec3<f32> = (-(vec3<f32>(x_663.x, x_663.y, x_663.z)) + vec3<f32>(x_666.x, x_666.y, x_666.z));
    let x_669 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_668.x, x_668.y, x_668.z, x_669.w);
    let x_672 : vec4<f32> = x_25.x_UserLut_Params;
    let x_674 : vec4<f32> = u_xlat2;
    let x_677 : vec4<f32> = u_xlat1;
    let x_679 : vec3<f32> = ((vec3<f32>(x_672.w, x_672.w, x_672.w) * vec3<f32>(x_674.x, x_674.y, x_674.z)) + vec3<f32>(x_677.x, x_677.y, x_677.z));
    let x_680 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_679.x, x_679.y, x_679.z, x_680.w);
    let x_682 : vec4<f32> = u_xlat1;
    let x_686 : vec3<f32> = (vec3<f32>(x_682.x, x_682.y, x_682.z) * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
    let x_687 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_686.x, x_686.y, x_686.z, x_687.w);
    let x_689 : vec4<f32> = u_xlat1;
    u_xlat3 = (vec3<f32>(x_689.x, x_689.y, x_689.z) + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
    let x_694 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_694 * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
    let x_698 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_698));
    let x_701 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_701 * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
    let x_705 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_705);
    let x_709 : vec4<f32> = u_xlat1;
    let x_711 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_709.x, x_709.y, x_709.z, x_709.x));
    u_xlatb1 = vec3<bool>(x_711.x, x_711.y, x_711.z);
    let x_714 : bool = u_xlatb1.x;
    if (x_714) {
      let x_719 : f32 = u_xlat2.x;
      x_715 = x_719;
    } else {
      let x_722 : f32 = u_xlat3.x;
      x_715 = x_722;
    }
    let x_723 : f32 = x_715;
    u_xlat0.x = x_723;
    let x_726 : bool = u_xlatb1.y;
    if (x_726) {
      let x_731 : f32 = u_xlat2.y;
      x_727 = x_731;
    } else {
      let x_734 : f32 = u_xlat3.y;
      x_727 = x_734;
    }
    let x_735 : f32 = x_727;
    u_xlat0.y = x_735;
    let x_738 : bool = u_xlatb1.z;
    if (x_738) {
      let x_743 : f32 = u_xlat2.z;
      x_739 = x_743;
    } else {
      let x_746 : f32 = u_xlat3.z;
      x_739 = x_746;
    }
    let x_747 : f32 = x_739;
    u_xlat0.z = x_747;
  }
  let x_749 : vec4<f32> = u_xlat0;
  let x_752 : vec4<f32> = x_25.x_Lut_Params;
  let x_754 : vec3<f32> = (vec3<f32>(x_749.x, x_749.y, x_749.z) * vec3<f32>(x_752.z, x_752.z, x_752.z));
  let x_755 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_754.x, x_754.y, x_755.z, x_754.z);
  let x_758 : f32 = u_xlat0.w;
  u_xlat15 = floor(x_758);
  let x_761 : vec4<f32> = x_25.x_Lut_Params;
  let x_763 : vec2<f32> = (vec2<f32>(x_761.x, x_761.y) * vec2<f32>(0.5f, 0.5f));
  let x_764 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_763.x, x_763.y, x_764.z, x_764.w);
  let x_766 : vec4<f32> = u_xlat0;
  let x_769 : vec4<f32> = x_25.x_Lut_Params;
  let x_772 : vec4<f32> = u_xlat1;
  let x_774 : vec2<f32> = ((vec2<f32>(x_766.x, x_766.y) * vec2<f32>(x_769.x, x_769.y)) + vec2<f32>(x_772.x, x_772.y));
  let x_775 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_775.x, x_774.x, x_774.y, x_775.w);
  let x_777 : f32 = u_xlat15;
  let x_779 : f32 = x_25.x_Lut_Params.y;
  let x_782 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_777 * x_779) + x_782);
  let x_789 : vec4<f32> = u_xlat1;
  let x_791 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_789.x, x_789.z), 0.0f);
  let x_792 : vec3<f32> = vec3<f32>(x_791.x, x_791.y, x_791.z);
  let x_793 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_792.x, x_792.y, x_792.z, x_793.w);
  let x_796 : f32 = x_25.x_Lut_Params.y;
  u_xlat0.x = x_796;
  u_xlat0.y = 0.0f;
  let x_799 : vec4<f32> = u_xlat0;
  let x_801 : vec4<f32> = u_xlat1;
  let x_803 : vec2<f32> = (vec2<f32>(x_799.x, x_799.y) + vec2<f32>(x_801.x, x_801.z));
  let x_804 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_803.x, x_803.y, x_804.z, x_804.w);
  let x_809 : vec4<f32> = u_xlat0;
  let x_811 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_809.x, x_809.y), 0.0f);
  let x_812 : vec3<f32> = vec3<f32>(x_811.x, x_811.y, x_811.z);
  let x_813 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_812.x, x_812.y, x_812.z, x_813.w);
  let x_816 : f32 = u_xlat0.z;
  let x_818 : f32 = x_25.x_Lut_Params.z;
  let x_820 : f32 = u_xlat15;
  u_xlat0.x = ((x_816 * x_818) + -(x_820));
  let x_825 : vec4<f32> = u_xlat2;
  let x_828 : vec4<f32> = u_xlat1;
  u_xlat5 = (-(vec3<f32>(x_825.x, x_825.y, x_825.z)) + vec3<f32>(x_828.x, x_828.y, x_828.z));
  let x_831 : vec4<f32> = u_xlat0;
  let x_833 : vec3<f32> = u_xlat5;
  let x_835 : vec4<f32> = u_xlat2;
  let x_837 : vec3<f32> = ((vec3<f32>(x_831.x, x_831.x, x_831.x) * x_833) + vec3<f32>(x_835.x, x_835.y, x_835.z));
  let x_838 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_837.x, x_837.y, x_837.z, x_838.w);
  let x_840 : vec4<f32> = u_xlat0;
  let x_842 : vec3<f32> = sqrt(vec3<f32>(x_840.x, x_840.y, x_840.z));
  let x_843 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_842.x, x_842.y, x_842.z, x_843.w);
  let x_845 : vec2<f32> = vs_TEXCOORD0;
  let x_848 : vec4<f32> = x_25.x_Dithering_Params;
  let x_852 : vec4<f32> = x_25.x_Dithering_Params;
  let x_854 : vec2<f32> = ((x_845 * vec2<f32>(x_848.x, x_848.y)) + vec2<f32>(x_852.z, x_852.w));
  let x_855 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_854.x, x_854.y, x_855.z, x_855.w);
  let x_862 : vec4<f32> = u_xlat1;
  let x_865 : f32 = x_25.x_GlobalMipBias.x;
  let x_866 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_862.x, x_862.y), x_865);
  u_xlat15 = x_866.w;
  let x_868 : f32 = u_xlat15;
  u_xlat15 = ((x_868 * 2.0f) + -1.0f);
  let x_872 : f32 = u_xlat15;
  u_xlatb1.x = (x_872 >= 0.0f);
  let x_876 : bool = u_xlatb1.x;
  u_xlat1.x = select(-1.0f, 1.0f, x_876);
  let x_879 : f32 = u_xlat15;
  u_xlat15 = (-(abs(x_879)) + 1.0f);
  let x_883 : f32 = u_xlat15;
  u_xlat15 = sqrt(x_883);
  let x_885 : f32 = u_xlat15;
  u_xlat15 = (-(x_885) + 1.0f);
  let x_888 : f32 = u_xlat15;
  let x_890 : f32 = u_xlat1.x;
  u_xlat15 = (x_888 * x_890);
  let x_892 : vec4<f32> = u_xlat0;
  let x_894 : vec3<f32> = (vec3<f32>(x_892.x, x_892.y, x_892.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
  let x_895 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_894.x, x_894.y, x_894.z, x_895.w);
  let x_897 : vec4<f32> = u_xlat0;
  let x_899 : vec3<f32> = log2(vec3<f32>(x_897.x, x_897.y, x_897.z));
  let x_900 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_899.x, x_899.y, x_899.z, x_900.w);
  let x_902 : vec4<f32> = u_xlat2;
  let x_904 : vec3<f32> = (vec3<f32>(x_902.x, x_902.y, x_902.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
  let x_905 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_904.x, x_904.y, x_904.z, x_905.w);
  let x_907 : vec4<f32> = u_xlat2;
  let x_909 : vec3<f32> = exp2(vec3<f32>(x_907.x, x_907.y, x_907.z));
  let x_910 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_909.x, x_909.y, x_909.z, x_910.w);
  let x_912 : vec4<f32> = u_xlat2;
  let x_915 : vec3<f32> = ((vec3<f32>(x_912.x, x_912.y, x_912.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
  let x_916 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_915.x, x_915.y, x_915.z, x_916.w);
  let x_919 : vec4<f32> = u_xlat0;
  let x_921 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_919.x, x_919.y, x_919.z, x_919.x));
  u_xlatb0 = vec3<bool>(x_921.x, x_921.y, x_921.z);
  let x_924 : bool = u_xlatb0.x;
  if (x_924) {
    let x_929 : f32 = u_xlat1.x;
    x_925 = x_929;
  } else {
    let x_932 : f32 = u_xlat2.x;
    x_925 = x_932;
  }
  let x_933 : f32 = x_925;
  u_xlat0.x = x_933;
  let x_936 : bool = u_xlatb0.y;
  if (x_936) {
    let x_941 : f32 = u_xlat1.y;
    x_937 = x_941;
  } else {
    let x_944 : f32 = u_xlat2.y;
    x_937 = x_944;
  }
  let x_945 : f32 = x_937;
  u_xlat0.y = x_945;
  let x_948 : bool = u_xlatb0.z;
  if (x_948) {
    let x_953 : f32 = u_xlat1.z;
    x_949 = x_953;
  } else {
    let x_956 : f32 = u_xlat2.z;
    x_949 = x_956;
  }
  let x_957 : f32 = x_949;
  u_xlat0.z = x_957;
  let x_959 : f32 = u_xlat15;
  let x_964 : vec4<f32> = u_xlat0;
  let x_966 : vec3<f32> = ((vec3<f32>(x_959, x_959, x_959) * vec3<f32>(0.0039215688593685627f, 0.0039215688593685627f, 0.0039215688593685627f)) + vec3<f32>(x_964.x, x_964.y, x_964.z));
  let x_967 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_966.x, x_966.y, x_966.z, x_967.w);
  let x_969 : vec4<f32> = u_xlat0;
  let x_971 : vec3<f32> = (vec3<f32>(x_969.x, x_969.y, x_969.z) * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
  let x_972 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_971.x, x_971.y, x_971.z, x_972.w);
  let x_974 : vec4<f32> = u_xlat0;
  let x_976 : vec3<f32> = (vec3<f32>(x_974.x, x_974.y, x_974.z) + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
  let x_977 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_976.x, x_976.y, x_976.z, x_977.w);
  let x_979 : vec4<f32> = u_xlat2;
  let x_981 : vec3<f32> = (vec3<f32>(x_979.x, x_979.y, x_979.z) * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
  let x_982 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_981.x, x_981.y, x_981.z, x_982.w);
  let x_984 : vec4<f32> = u_xlat2;
  let x_987 : vec3<f32> = log2(abs(vec3<f32>(x_984.x, x_984.y, x_984.z)));
  let x_988 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_987.x, x_987.y, x_987.z, x_988.w);
  let x_990 : vec4<f32> = u_xlat2;
  let x_992 : vec3<f32> = (vec3<f32>(x_990.x, x_990.y, x_990.z) * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
  let x_993 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_992.x, x_992.y, x_992.z, x_993.w);
  let x_995 : vec4<f32> = u_xlat2;
  let x_997 : vec3<f32> = exp2(vec3<f32>(x_995.x, x_995.y, x_995.z));
  let x_998 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_997.x, x_997.y, x_997.z, x_998.w);
  let x_1000 : vec4<f32> = u_xlat0;
  let x_1002 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_1000.x, x_1000.y, x_1000.z, x_1000.x));
  u_xlatb0 = vec3<bool>(x_1002.x, x_1002.y, x_1002.z);
  let x_1005 : bool = u_xlatb0.x;
  if (x_1005) {
    let x_1010 : f32 = u_xlat1.x;
    x_1006 = x_1010;
  } else {
    let x_1013 : f32 = u_xlat2.x;
    x_1006 = x_1013;
  }
  let x_1014 : f32 = x_1006;
  u_xlat0.x = x_1014;
  let x_1017 : bool = u_xlatb0.y;
  if (x_1017) {
    let x_1022 : f32 = u_xlat1.y;
    x_1018 = x_1022;
  } else {
    let x_1025 : f32 = u_xlat2.y;
    x_1018 = x_1025;
  }
  let x_1026 : f32 = x_1018;
  u_xlat0.y = x_1026;
  let x_1029 : bool = u_xlatb0.z;
  if (x_1029) {
    let x_1034 : f32 = u_xlat1.z;
    x_1030 = x_1034;
  } else {
    let x_1037 : f32 = u_xlat2.z;
    x_1030 = x_1037;
  }
  let x_1038 : f32 = x_1030;
  u_xlat0.z = x_1038;
  let x_1042 : vec4<f32> = u_xlat0;
  let x_1045 : vec3<f32> = max(vec3<f32>(x_1042.x, x_1042.y, x_1042.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1046 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1045.x, x_1045.y, x_1045.z, x_1046.w);
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


