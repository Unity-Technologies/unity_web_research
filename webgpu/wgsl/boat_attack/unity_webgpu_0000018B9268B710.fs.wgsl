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
  x_Distortion_Params1 : vec4<f32>,
  /* @offset(144) */
  x_Distortion_Params2 : vec4<f32>,
  /* @offset(160) */
  x_Vignette_Params1 : vec4<f32>,
  /* @offset(176) */
  x_Vignette_Params2 : vec4<f32>,
  /* @offset(192) */
  x_Grain_Params : vec2<f32>,
  /* @offset(208) */
  x_Grain_TilingParams : vec4<f32>,
  /* @offset(224) */
  x_Bloom_Texture_TexelSize : vec4<f32>,
  /* @offset(240) */
  x_Dithering_Params : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat14 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_26 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlatb8 : bool;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat15 : vec2<f32>;

var<private> u_xlat22 : f32;

var<private> u_xlat9 : f32;

var<private> u_xlat16 : vec2<f32>;

var<private> u_xlatb23 : bool;

var<private> u_xlatb1 : bool;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_LinearClamp : sampler;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat17 : vec2<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(1) var x_Bloom_Texture : texture_2d<f32>;

var<private> u_xlatb21 : bool;

var<private> u_xlat21 : f32;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlatb7 : bool;

var<private> u_xlatb14 : vec2<bool>;

var<private> u_xlatb10 : bool;

var<private> u_xlatb22 : bool;

var<private> u_xlatb0 : vec3<bool>;

var<private> u_xlatb3 : vec3<bool>;

@group(0) @binding(4) var x_UserLut : texture_2d<f32>;

@group(0) @binding(3) var x_InternalLut : texture_2d<f32>;

@group(0) @binding(2) var x_Grain_Texture : texture_2d<f32>;

@group(0) @binding(8) var sampler_LinearRepeat : sampler;

@group(0) @binding(5) var x_BlueNoise_Texture : texture_2d<f32>;

@group(0) @binding(7) var sampler_PointRepeat : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_218 : f32;
  var x_246 : f32;
  var x_844 : f32;
  var x_853 : f32;
  var x_984 : f32;
  var x_1035 : f32;
  var x_1062 : f32;
  var x_1086 : f32;
  var x_1097 : f32;
  var hlslcc_movcTemp : vec3<f32>;
  var x_1487 : f32;
  var x_1499 : f32;
  var x_1511 : f32;
  var x_1674 : f32;
  var x_1686 : f32;
  var x_1698 : f32;
  var x_1936 : f32;
  var x_1948 : f32;
  var x_1960 : f32;
  var x_2012 : f32;
  var x_2024 : f32;
  var x_2036 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD0;
  let x_16 : vec2<f32> = (x_13 + vec2<f32>(-0.5f, -0.5f));
  let x_17 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_16.x, x_16.y, x_17.z);
  let x_21 : vec3<f32> = u_xlat0;
  let x_31 : vec4<f32> = x_26.x_Distortion_Params2;
  u_xlat14 = ((vec2<f32>(x_21.x, x_21.y) * vec2<f32>(x_31.z, x_31.z)) + vec2<f32>(0.5f, 0.5f));
  let x_37 : vec3<f32> = u_xlat0;
  let x_40 : vec4<f32> = x_26.x_Distortion_Params2;
  let x_45 : vec4<f32> = x_26.x_Distortion_Params1;
  let x_48 : vec2<f32> = ((vec2<f32>(x_37.x, x_37.y) * vec2<f32>(x_40.z, x_40.z)) + -(vec2<f32>(x_45.x, x_45.y)));
  let x_49 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_48.x, x_48.y, x_49.z);
  let x_51 : vec3<f32> = u_xlat0;
  let x_54 : vec4<f32> = x_26.x_Distortion_Params1;
  let x_56 : vec2<f32> = (vec2<f32>(x_51.x, x_51.y) * vec2<f32>(x_54.z, x_54.w));
  let x_57 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_56.x, x_56.y, x_57.z);
  let x_61 : vec3<f32> = u_xlat0;
  let x_63 : vec3<f32> = u_xlat0;
  u_xlat1.x = dot(vec2<f32>(x_61.x, x_61.y), vec2<f32>(x_63.x, x_63.y));
  let x_71 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_71);
  let x_81 : f32 = x_26.x_Distortion_Params2.w;
  u_xlatb8 = (0.0f < x_81);
  let x_83 : bool = u_xlatb8;
  if (x_83) {
    let x_87 : vec4<f32> = u_xlat1;
    let x_90 : vec4<f32> = x_26.x_Distortion_Params2;
    let x_92 : vec2<f32> = (vec2<f32>(x_87.x, x_87.x) * vec2<f32>(x_90.x, x_90.y));
    let x_93 : vec3<f32> = u_xlat8;
    u_xlat8 = vec3<f32>(x_92.x, x_92.y, x_93.z);
    let x_97 : f32 = u_xlat8.x;
    u_xlat2.x = sin(x_97);
    let x_102 : f32 = u_xlat8.x;
    u_xlat3.x = cos(x_102);
    let x_106 : f32 = u_xlat2.x;
    let x_108 : f32 = u_xlat3.x;
    u_xlat8.x = (x_106 / x_108);
    let x_115 : f32 = u_xlat8.y;
    u_xlat15.x = (1.0f / x_115);
    let x_119 : f32 = u_xlat8.x;
    let x_121 : f32 = u_xlat15.x;
    u_xlat8.x = ((x_119 * x_121) + -1.0f);
    let x_126 : vec3<f32> = u_xlat0;
    let x_128 : vec3<f32> = u_xlat8;
    let x_131 : vec2<f32> = u_xlat14;
    let x_132 : vec2<f32> = ((vec2<f32>(x_126.x, x_126.y) * vec2<f32>(x_128.x, x_128.x)) + x_131);
    let x_133 : vec3<f32> = u_xlat8;
    u_xlat8 = vec3<f32>(x_132.x, x_132.y, x_133.z);
  } else {
    let x_138 : f32 = u_xlat1.x;
    u_xlat22 = (1.0f / x_138);
    let x_140 : f32 = u_xlat22;
    let x_142 : f32 = x_26.x_Distortion_Params2.x;
    u_xlat22 = (x_140 * x_142);
    let x_145 : f32 = u_xlat1.x;
    let x_147 : f32 = x_26.x_Distortion_Params2.y;
    u_xlat1.x = (x_145 * x_147);
    let x_151 : f32 = u_xlat1.x;
    u_xlat2.x = min(abs(x_151), 1.0f);
    let x_157 : f32 = u_xlat1.x;
    u_xlat9 = max(abs(x_157), 1.0f);
    let x_160 : f32 = u_xlat9;
    u_xlat9 = (1.0f / x_160);
    let x_162 : f32 = u_xlat9;
    let x_164 : f32 = u_xlat2.x;
    u_xlat2.x = (x_162 * x_164);
    let x_168 : f32 = u_xlat2.x;
    let x_170 : f32 = u_xlat2.x;
    u_xlat9 = (x_168 * x_170);
    let x_173 : f32 = u_xlat9;
    u_xlat16.x = ((x_173 * 0.02083509974181652069f) + -0.08513300120830535889f);
    let x_179 : f32 = u_xlat9;
    let x_181 : f32 = u_xlat16.x;
    u_xlat16.x = ((x_179 * x_181) + 0.18014100193977355957f);
    let x_186 : f32 = u_xlat9;
    let x_188 : f32 = u_xlat16.x;
    u_xlat16.x = ((x_186 * x_188) + -0.33029949665069580078f);
    let x_193 : f32 = u_xlat9;
    let x_195 : f32 = u_xlat16.x;
    u_xlat9 = ((x_193 * x_195) + 0.99986600875854492188f);
    let x_199 : f32 = u_xlat9;
    let x_201 : f32 = u_xlat2.x;
    u_xlat16.x = (x_199 * x_201);
    let x_206 : f32 = u_xlat1.x;
    u_xlatb23 = (1.0f < abs(x_206));
    let x_210 : f32 = u_xlat16.x;
    u_xlat16.x = ((x_210 * -2.0f) + 1.57079637050628662109f);
    let x_216 : bool = u_xlatb23;
    if (x_216) {
      let x_222 : f32 = u_xlat16.x;
      x_218 = x_222;
    } else {
      x_218 = 0.0f;
    }
    let x_224 : f32 = x_218;
    u_xlat16.x = x_224;
    let x_227 : f32 = u_xlat2.x;
    let x_228 : f32 = u_xlat9;
    let x_231 : f32 = u_xlat16.x;
    u_xlat2.x = ((x_227 * x_228) + x_231);
    let x_235 : f32 = u_xlat1.x;
    u_xlat1.x = min(x_235, 1.0f);
    let x_240 : f32 = u_xlat1.x;
    let x_242 : f32 = u_xlat1.x;
    u_xlatb1 = (x_240 < -(x_242));
    let x_245 : bool = u_xlatb1;
    if (x_245) {
      let x_250 : f32 = u_xlat2.x;
      x_246 = -(x_250);
    } else {
      let x_254 : f32 = u_xlat2.x;
      x_246 = x_254;
    }
    let x_255 : f32 = x_246;
    u_xlat1.x = x_255;
    let x_257 : f32 = u_xlat22;
    let x_259 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_257 * x_259) + -1.0f);
    let x_263 : vec3<f32> = u_xlat0;
    let x_265 : vec4<f32> = u_xlat1;
    let x_268 : vec2<f32> = u_xlat14;
    let x_269 : vec2<f32> = ((vec2<f32>(x_263.x, x_263.y) * vec2<f32>(x_265.x, x_265.x)) + x_268);
    let x_270 : vec3<f32> = u_xlat8;
    u_xlat8 = vec3<f32>(x_269.x, x_269.y, x_270.z);
  }
  let x_274 : vec4<f32> = x_26.x_BlitTexture_TexelSize;
  let x_280 : vec4<f32> = x_26.x_RTHandleScale;
  let x_282 : vec2<f32> = ((-(vec2<f32>(x_274.x, x_274.y)) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_280.x, x_280.y));
  let x_283 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_282.x, x_282.y, x_283.z);
  let x_285 : vec3<f32> = u_xlat0;
  let x_287 : vec3<f32> = u_xlat8;
  let x_289 : vec2<f32> = min(vec2<f32>(x_285.x, x_285.y), vec2<f32>(x_287.x, x_287.y));
  let x_290 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_289.x, x_289.y, x_290.z);
  let x_302 : vec3<f32> = u_xlat0;
  let x_306 : f32 = x_26.x_GlobalMipBias.x;
  let x_307 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_302.x, x_302.y), x_306);
  u_xlat0 = vec3<f32>(x_307.x, x_307.y, x_307.z);
  let x_311 : vec4<f32> = x_26.x_BloomTexture_TexelSize;
  let x_316 : vec4<f32> = x_26.x_RTHandleScale;
  let x_318 : vec2<f32> = ((-(vec2<f32>(x_311.x, x_311.y)) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_316.x, x_316.y));
  let x_319 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_318.x, x_319.y, x_319.z, x_318.y);
  let x_321 : vec4<f32> = u_xlat1;
  let x_323 : vec3<f32> = u_xlat8;
  let x_325 : vec2<f32> = min(vec2<f32>(x_321.x, x_321.w), vec2<f32>(x_323.x, x_323.y));
  let x_326 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_325.x, x_326.y, x_326.z, x_325.y);
  let x_328 : vec4<f32> = u_xlat1;
  let x_332 : vec4<f32> = x_26.x_Bloom_Texture_TexelSize;
  let x_335 : vec2<f32> = ((vec2<f32>(x_328.x, x_328.w) * vec2<f32>(x_332.z, x_332.w)) + vec2<f32>(0.5f, 0.5f));
  let x_336 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_335.x, x_336.y, x_336.z, x_335.y);
  let x_338 : vec4<f32> = u_xlat1;
  let x_340 : vec2<f32> = floor(vec2<f32>(x_338.x, x_338.w));
  let x_341 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_340.x, x_340.y, x_341.z, x_341.w);
  let x_343 : vec4<f32> = u_xlat1;
  let x_345 : vec2<f32> = fract(vec2<f32>(x_343.x, x_343.w));
  let x_346 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_345.x, x_346.y, x_346.z, x_345.y);
  let x_348 : vec4<f32> = u_xlat1;
  u_xlat3 = ((-(vec4<f32>(x_348.x, x_348.w, x_348.x, x_348.w)) * vec4<f32>(0.5f, 0.5f, 0.16666667163372039795f, 0.16666667163372039795f)) + vec4<f32>(0.5f, 0.5f, 0.5f, 0.5f));
  let x_356 : vec4<f32> = u_xlat1;
  let x_358 : vec4<f32> = u_xlat3;
  u_xlat3 = ((vec4<f32>(x_356.x, x_356.w, x_356.x, x_356.w) * x_358) + vec4<f32>(0.5f, 0.5f, -0.5f, -0.5f));
  let x_362 : vec4<f32> = u_xlat1;
  u_xlat16 = ((vec2<f32>(x_362.x, x_362.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(-1.0f, -1.0f));
  let x_368 : vec4<f32> = u_xlat1;
  let x_370 : vec4<f32> = u_xlat1;
  let x_372 : vec2<f32> = (vec2<f32>(x_368.x, x_368.w) * vec2<f32>(x_370.x, x_370.w));
  let x_373 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_372.x, x_372.y, x_373.z, x_373.w);
  let x_375 : vec4<f32> = u_xlat4;
  let x_377 : vec2<f32> = u_xlat16;
  u_xlat16 = ((vec2<f32>(x_375.x, x_375.y) * x_377) + vec2<f32>(0.6666666865348815918f, 0.6666666865348815918f));
  let x_382 : vec4<f32> = u_xlat1;
  let x_384 : vec4<f32> = u_xlat3;
  u_xlat3 = ((vec4<f32>(x_382.x, x_382.w, x_382.x, x_382.w) * x_384) + vec4<f32>(0.16666667163372039795f, 0.16666667163372039795f, 0.16666667163372039795f, 0.16666667163372039795f));
  let x_388 : vec2<f32> = u_xlat16;
  let x_391 : vec2<f32> = (-(x_388) + vec2<f32>(1.0f, 1.0f));
  let x_392 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_391.x, x_392.y, x_392.z, x_391.y);
  let x_394 : vec4<f32> = u_xlat3;
  let x_397 : vec4<f32> = u_xlat1;
  let x_399 : vec2<f32> = (-(vec2<f32>(x_394.x, x_394.y)) + vec2<f32>(x_397.x, x_397.w));
  let x_400 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_399.x, x_400.y, x_400.z, x_399.y);
  let x_402 : vec4<f32> = u_xlat3;
  let x_405 : vec4<f32> = u_xlat1;
  let x_407 : vec2<f32> = (-(vec2<f32>(x_402.z, x_402.w)) + vec2<f32>(x_405.x, x_405.w));
  let x_408 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_407.x, x_408.y, x_408.z, x_407.y);
  let x_411 : vec2<f32> = u_xlat16;
  let x_412 : vec4<f32> = u_xlat3;
  u_xlat17 = (x_411 + vec2<f32>(x_412.z, x_412.w));
  let x_415 : vec4<f32> = u_xlat1;
  let x_417 : vec4<f32> = u_xlat3;
  let x_419 : vec2<f32> = (vec2<f32>(x_415.x, x_415.w) + vec2<f32>(x_417.x, x_417.y));
  let x_420 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_419.x, x_419.y, x_420.z, x_420.w);
  let x_422 : vec2<f32> = u_xlat17;
  let x_426 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_422.x, x_422.y));
  let x_427 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_426.x, x_426.y, x_427.z, x_427.w);
  let x_429 : vec2<f32> = u_xlat16;
  let x_430 : vec4<f32> = u_xlat4;
  let x_433 : vec2<f32> = ((x_429 * vec2<f32>(x_430.x, x_430.y)) + vec2<f32>(-1.0f, -1.0f));
  let x_434 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_434.x, x_434.y, x_433.x, x_433.y);
  let x_436 : vec4<f32> = u_xlat3;
  let x_437 : vec2<f32> = vec2<f32>(x_436.x, x_436.y);
  u_xlat16 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_437.x, x_437.y));
  let x_442 : vec4<f32> = u_xlat1;
  let x_444 : vec2<f32> = u_xlat16;
  let x_446 : vec2<f32> = ((vec2<f32>(x_442.x, x_442.w) * x_444) + vec2<f32>(1.0f, 1.0f));
  let x_447 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_446.x, x_446.y, x_447.z, x_447.w);
  let x_450 : vec4<f32> = u_xlat2;
  let x_452 : vec4<f32> = u_xlat4;
  u_xlat5 = (vec4<f32>(x_450.x, x_450.y, x_450.x, x_450.y) + vec4<f32>(x_452.z, x_452.w, x_452.x, x_452.w));
  let x_455 : vec4<f32> = u_xlat5;
  u_xlat5 = (x_455 + vec4<f32>(-0.5f, -0.5f, -0.5f, -0.5f));
  let x_458 : vec4<f32> = u_xlat5;
  let x_460 : vec4<f32> = x_26.x_Bloom_Texture_TexelSize;
  u_xlat5 = (x_458 * vec4<f32>(x_460.x, x_460.y, x_460.x, x_460.y));
  let x_463 : vec4<f32> = u_xlat5;
  u_xlat5 = min(x_463, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_471 : vec4<f32> = u_xlat5;
  let x_473 : vec4<f32> = textureSampleLevel(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_471.x, x_471.y), 0.0f);
  u_xlat6 = x_473;
  let x_477 : vec4<f32> = u_xlat5;
  let x_479 : vec4<f32> = textureSampleLevel(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_477.z, x_477.w), 0.0f);
  u_xlat5 = x_479;
  let x_480 : vec4<f32> = u_xlat3;
  let x_482 : vec4<f32> = u_xlat5;
  u_xlat5 = (vec4<f32>(x_480.x, x_480.x, x_480.x, x_480.x) * x_482);
  let x_484 : vec2<f32> = u_xlat17;
  let x_486 : vec4<f32> = u_xlat6;
  let x_488 : vec4<f32> = u_xlat5;
  u_xlat5 = ((vec4<f32>(x_484.x, x_484.x, x_484.x, x_484.x) * x_486) + x_488);
  let x_490 : vec4<f32> = u_xlat2;
  let x_492 : vec4<f32> = u_xlat4;
  u_xlat2 = (vec4<f32>(x_490.x, x_490.y, x_490.x, x_490.y) + vec4<f32>(x_492.z, x_492.y, x_492.x, x_492.y));
  let x_495 : vec4<f32> = u_xlat2;
  u_xlat2 = (x_495 + vec4<f32>(-0.5f, -0.5f, -0.5f, -0.5f));
  let x_497 : vec4<f32> = u_xlat2;
  let x_499 : vec4<f32> = x_26.x_Bloom_Texture_TexelSize;
  u_xlat2 = (x_497 * vec4<f32>(x_499.x, x_499.y, x_499.x, x_499.y));
  let x_502 : vec4<f32> = u_xlat2;
  u_xlat2 = min(x_502, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_507 : vec4<f32> = u_xlat2;
  let x_509 : vec4<f32> = textureSampleLevel(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_507.x, x_507.y), 0.0f);
  u_xlat4 = x_509;
  let x_513 : vec4<f32> = u_xlat2;
  let x_515 : vec4<f32> = textureSampleLevel(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_513.z, x_513.w), 0.0f);
  u_xlat2 = x_515;
  let x_516 : vec4<f32> = u_xlat2;
  let x_517 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_516 * vec4<f32>(x_517.x, x_517.x, x_517.x, x_517.x));
  let x_520 : vec2<f32> = u_xlat17;
  let x_522 : vec4<f32> = u_xlat4;
  let x_524 : vec4<f32> = u_xlat2;
  u_xlat2 = ((vec4<f32>(x_520.x, x_520.x, x_520.x, x_520.x) * x_522) + x_524);
  let x_526 : vec4<f32> = u_xlat2;
  let x_527 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_526 * vec4<f32>(x_527.y, x_527.y, x_527.y, x_527.y));
  let x_530 : vec2<f32> = u_xlat17;
  let x_532 : vec4<f32> = u_xlat5;
  let x_534 : vec4<f32> = u_xlat2;
  u_xlat2 = ((vec4<f32>(x_530.y, x_530.y, x_530.y, x_530.y) * x_532) + x_534);
  let x_539 : f32 = x_26.x_Bloom_RGBM;
  u_xlatb21 = (0.0f < x_539);
  let x_541 : bool = u_xlatb21;
  if (x_541) {
    let x_544 : vec4<f32> = u_xlat2;
    let x_546 : vec4<f32> = u_xlat2;
    let x_548 : vec3<f32> = (vec3<f32>(x_544.w, x_544.w, x_544.w) * vec3<f32>(x_546.x, x_546.y, x_546.z));
    let x_549 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_548.x, x_548.y, x_548.z, x_549.w);
    let x_551 : vec4<f32> = u_xlat3;
    let x_555 : vec3<f32> = (vec3<f32>(x_551.x, x_551.y, x_551.z) * vec3<f32>(8.0f, 8.0f, 8.0f));
    let x_556 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_555.x, x_555.y, x_555.z, x_556.w);
  }
  let x_558 : vec4<f32> = u_xlat2;
  let x_562 : vec4<f32> = x_26.x_Bloom_Params;
  let x_564 : vec3<f32> = (vec3<f32>(x_558.x, x_558.y, x_558.z) * vec3<f32>(x_562.x, x_562.x, x_562.x));
  let x_565 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_564.x, x_564.y, x_564.z, x_565.w);
  let x_567 : vec4<f32> = u_xlat2;
  let x_570 : vec4<f32> = x_26.x_Bloom_Params;
  let x_573 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_567.x, x_567.y, x_567.z) * vec3<f32>(x_570.y, x_570.z, x_570.w)) + x_573);
  let x_578 : f32 = x_26.x_Vignette_Params2.z;
  u_xlatb21 = (0.0f < x_578);
  let x_580 : bool = u_xlatb21;
  if (x_580) {
    let x_583 : vec3<f32> = u_xlat8;
    let x_586 : vec4<f32> = x_26.x_Vignette_Params2;
    let x_589 : vec2<f32> = (vec2<f32>(x_583.x, x_583.y) + -(vec2<f32>(x_586.x, x_586.y)));
    let x_590 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_589.x, x_589.y, x_590.z, x_590.w);
    let x_592 : vec4<f32> = u_xlat1;
    let x_596 : vec4<f32> = x_26.x_Vignette_Params2;
    let x_598 : vec2<f32> = (abs(vec2<f32>(x_592.x, x_592.y)) * vec2<f32>(x_596.z, x_596.z));
    let x_599 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_599.x, x_598.x, x_598.y, x_599.w);
    let x_602 : f32 = u_xlat1.y;
    let x_605 : f32 = x_26.x_Vignette_Params1.w;
    u_xlat1.x = (x_602 * x_605);
    let x_609 : vec4<f32> = u_xlat1;
    let x_611 : vec4<f32> = u_xlat1;
    u_xlat21 = dot(vec2<f32>(x_609.x, x_609.z), vec2<f32>(x_611.x, x_611.z));
    let x_614 : f32 = u_xlat21;
    u_xlat21 = (-(x_614) + 1.0f);
    let x_617 : f32 = u_xlat21;
    u_xlat21 = max(x_617, 0.0f);
    let x_619 : f32 = u_xlat21;
    u_xlat21 = log2(x_619);
    let x_621 : f32 = u_xlat21;
    let x_623 : f32 = x_26.x_Vignette_Params2.w;
    u_xlat21 = (x_621 * x_623);
    let x_625 : f32 = u_xlat21;
    u_xlat21 = exp2(x_625);
    let x_628 : vec4<f32> = x_26.x_Vignette_Params1;
    let x_632 : vec3<f32> = (-(vec3<f32>(x_628.x, x_628.y, x_628.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_633 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_632.x, x_632.y, x_632.z, x_633.w);
    let x_635 : f32 = u_xlat21;
    let x_637 : vec4<f32> = u_xlat1;
    let x_641 : vec4<f32> = x_26.x_Vignette_Params1;
    let x_643 : vec3<f32> = ((vec3<f32>(x_635, x_635, x_635) * vec3<f32>(x_637.x, x_637.y, x_637.z)) + vec3<f32>(x_641.x, x_641.y, x_641.z));
    let x_644 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_643.x, x_643.y, x_643.z, x_644.w);
    let x_646 : vec3<f32> = u_xlat0;
    let x_647 : vec4<f32> = u_xlat1;
    u_xlat0 = (x_646 * vec3<f32>(x_647.x, x_647.y, x_647.z));
  }
  let x_650 : vec3<f32> = u_xlat0;
  let x_653 : vec4<f32> = x_26.x_Lut_Params;
  u_xlat0 = (x_650 * vec3<f32>(x_653.w, x_653.w, x_653.w));
  let x_660 : vec3<f32> = u_xlat0;
  u_xlat8.x = dot(vec3<f32>(0.43970099091529846191f, 0.38297799229621887207f, 0.17733499407768249512f), x_660);
  let x_667 : vec3<f32> = u_xlat0;
  u_xlat8.y = dot(vec3<f32>(0.08979229629039764404f, 0.81342297792434692383f, 0.09676159918308258057f), x_667);
  let x_674 : vec3<f32> = u_xlat0;
  u_xlat8.z = dot(vec3<f32>(0.01754399947822093964f, 0.111543998122215271f, 0.8707039952278137207f), x_674);
  let x_678 : f32 = u_xlat8.y;
  let x_680 : f32 = u_xlat8.x;
  u_xlat0.x = min(x_678, x_680);
  let x_684 : f32 = u_xlat8.z;
  let x_686 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_684, x_686);
  let x_691 : f32 = u_xlat8.y;
  let x_693 : f32 = u_xlat8.x;
  u_xlat7.x = max(x_691, x_693);
  let x_697 : f32 = u_xlat8.z;
  let x_699 : f32 = u_xlat7.x;
  u_xlat0.y = max(x_697, x_699);
  let x_702 : vec3<f32> = u_xlat0;
  u_xlat0 = max(vec3<f32>(x_702.x, x_702.y, x_702.y), vec3<f32>(0.00009999999747378752f, 0.00009999999747378752f, 0.00999999977648258209f));
  let x_709 : f32 = u_xlat0.x;
  let x_712 : f32 = u_xlat0.y;
  u_xlat0.x = (-(x_709) + x_712);
  let x_716 : f32 = u_xlat0.x;
  let x_718 : f32 = u_xlat0.z;
  u_xlat0.x = (x_716 / x_718);
  let x_721 : vec3<f32> = u_xlat8;
  let x_724 : vec3<f32> = u_xlat8;
  u_xlat7 = (-(vec3<f32>(x_721.y, x_721.x, x_721.z)) + vec3<f32>(x_724.z, x_724.y, x_724.x));
  let x_727 : vec3<f32> = u_xlat7;
  let x_729 : vec3<f32> = u_xlat8;
  let x_731 : vec2<f32> = (vec2<f32>(x_727.x, x_727.y) * vec2<f32>(x_729.z, x_729.y));
  let x_732 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_731.x, x_731.y, x_732.z);
  let x_735 : f32 = u_xlat7.y;
  let x_737 : f32 = u_xlat7.x;
  u_xlat7.x = (x_735 + x_737);
  let x_741 : f32 = u_xlat8.x;
  let x_743 : f32 = u_xlat7.z;
  let x_746 : f32 = u_xlat7.x;
  u_xlat7.x = ((x_741 * x_743) + x_746);
  let x_750 : f32 = u_xlat7.x;
  u_xlat7.x = max(x_750, 0.0f);
  let x_754 : f32 = u_xlat7.x;
  u_xlat7.x = sqrt(x_754);
  let x_758 : f32 = u_xlat8.y;
  let x_760 : f32 = u_xlat8.z;
  u_xlat14.x = (x_758 + x_760);
  let x_764 : f32 = u_xlat8.x;
  let x_766 : f32 = u_xlat14.x;
  u_xlat14.x = (x_764 + x_766);
  let x_770 : f32 = u_xlat7.x;
  let x_774 : f32 = u_xlat14.x;
  u_xlat7.x = ((x_770 * 1.75f) + x_774);
  let x_778 : f32 = u_xlat0.x;
  u_xlat21 = (x_778 + -0.40000000596046447754f);
  let x_781 : f32 = u_xlat21;
  u_xlat1.x = (x_781 * 2.5f);
  let x_786 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_786)) + 1.0f);
  let x_792 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_792, 0.0f);
  let x_795 : f32 = u_xlat21;
  u_xlatb21 = (x_795 >= 0.0f);
  let x_797 : bool = u_xlatb21;
  u_xlat21 = select(-1.0f, 1.0f, x_797);
  let x_800 : f32 = u_xlat1.x;
  let x_803 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_800) * x_803) + 1.0f);
  let x_807 : f32 = u_xlat21;
  let x_809 : f32 = u_xlat1.x;
  u_xlat7.z = ((x_807 * x_809) + 1.0f);
  let x_813 : vec3<f32> = u_xlat7;
  u_xlat14 = (vec2<f32>(x_813.x, x_813.z) * vec2<f32>(0.3333333432674407959f, 0.02500000037252902985f));
  let x_821 : f32 = u_xlat7.x;
  u_xlatb1 = (0.15999999642372131348f >= x_821);
  let x_825 : f32 = u_xlat7.x;
  u_xlatb7 = (x_825 >= 0.47999998927116394043f);
  let x_830 : f32 = u_xlat14.x;
  u_xlat14.x = (0.07999999821186065674f / x_830);
  let x_834 : f32 = u_xlat14.x;
  u_xlat14.x = (x_834 + -0.5f);
  let x_838 : f32 = u_xlat14.x;
  let x_840 : f32 = u_xlat14.y;
  u_xlat14.x = (x_838 * x_840);
  let x_843 : bool = u_xlatb7;
  if (x_843) {
    x_844 = 0.0f;
  } else {
    let x_849 : f32 = u_xlat14.x;
    x_844 = x_849;
  }
  let x_850 : f32 = x_844;
  u_xlat7.x = x_850;
  let x_852 : bool = u_xlatb1;
  if (x_852) {
    let x_857 : f32 = u_xlat14.y;
    x_853 = x_857;
  } else {
    let x_860 : f32 = u_xlat7.x;
    x_853 = x_860;
  }
  let x_861 : f32 = x_853;
  u_xlat7.x = x_861;
  let x_864 : f32 = u_xlat7.x;
  u_xlat7.x = (x_864 + 1.0f);
  let x_867 : vec3<f32> = u_xlat7;
  let x_869 : vec3<f32> = u_xlat8;
  let x_870 : vec3<f32> = (vec3<f32>(x_867.x, x_867.x, x_867.x) * x_869);
  let x_871 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_871.x, x_870.x, x_870.y, x_870.z);
  let x_876 : vec4<f32> = u_xlat2;
  let x_878 : vec4<f32> = u_xlat2;
  let x_881 : vec4<bool> = (vec4<f32>(x_876.z, x_876.w, x_876.z, x_876.w) == vec4<f32>(x_878.y, x_878.z, x_878.y, x_878.z));
  u_xlatb14 = vec2<bool>(x_881.x, x_881.y);
  let x_884 : bool = u_xlatb14.y;
  let x_886 : bool = u_xlatb14.x;
  u_xlatb14.x = (x_884 & x_886);
  let x_890 : f32 = u_xlat8.y;
  let x_892 : f32 = u_xlat7.x;
  let x_895 : f32 = u_xlat2.w;
  u_xlat21 = ((x_890 * x_892) + -(x_895));
  let x_898 : f32 = u_xlat21;
  u_xlat21 = (x_898 * 1.73205077648162841797f);
  let x_902 : f32 = u_xlat2.y;
  let x_906 : f32 = u_xlat2.z;
  u_xlat1.x = ((x_902 * 2.0f) + -(x_906));
  let x_911 : f32 = u_xlat8.z;
  let x_914 : f32 = u_xlat7.x;
  let x_917 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_911) * x_914) + x_917);
  let x_920 : f32 = u_xlat21;
  let x_923 : f32 = u_xlat1.x;
  u_xlat15.x = min(abs(x_920), abs(x_923));
  let x_927 : f32 = u_xlat21;
  let x_930 : f32 = u_xlat1.x;
  u_xlat22 = max(abs(x_927), abs(x_930));
  let x_933 : f32 = u_xlat22;
  u_xlat22 = (1.0f / x_933);
  let x_935 : f32 = u_xlat22;
  let x_937 : f32 = u_xlat15.x;
  u_xlat15.x = (x_935 * x_937);
  let x_941 : f32 = u_xlat15.x;
  let x_943 : f32 = u_xlat15.x;
  u_xlat22 = (x_941 * x_943);
  let x_945 : f32 = u_xlat22;
  u_xlat3.x = ((x_945 * 0.02083509974181652069f) + -0.08513300120830535889f);
  let x_949 : f32 = u_xlat22;
  let x_951 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_949 * x_951) + 0.18014100193977355957f);
  let x_955 : f32 = u_xlat22;
  let x_957 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_955 * x_957) + -0.33029949665069580078f);
  let x_961 : f32 = u_xlat22;
  let x_963 : f32 = u_xlat3.x;
  u_xlat22 = ((x_961 * x_963) + 0.99986600875854492188f);
  let x_966 : f32 = u_xlat22;
  let x_968 : f32 = u_xlat15.x;
  u_xlat3.x = (x_966 * x_968);
  let x_973 : f32 = u_xlat1.x;
  let x_975 : f32 = u_xlat21;
  u_xlatb10 = (abs(x_973) < abs(x_975));
  let x_979 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_979 * -2.0f) + 1.57079637050628662109f);
  let x_983 : bool = u_xlatb10;
  if (x_983) {
    let x_988 : f32 = u_xlat3.x;
    x_984 = x_988;
  } else {
    x_984 = 0.0f;
  }
  let x_990 : f32 = x_984;
  u_xlat3.x = x_990;
  let x_993 : f32 = u_xlat15.x;
  let x_994 : f32 = u_xlat22;
  let x_997 : f32 = u_xlat3.x;
  u_xlat15.x = ((x_993 * x_994) + x_997);
  let x_1002 : f32 = u_xlat1.x;
  let x_1004 : f32 = u_xlat1.x;
  u_xlatb22 = (x_1002 < -(x_1004));
  let x_1007 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, -3.14159274101257324219f, x_1007);
  let x_1010 : f32 = u_xlat22;
  let x_1012 : f32 = u_xlat15.x;
  u_xlat15.x = (x_1010 + x_1012);
  let x_1015 : f32 = u_xlat21;
  let x_1017 : f32 = u_xlat1.x;
  u_xlat22 = min(x_1015, x_1017);
  let x_1019 : f32 = u_xlat21;
  let x_1021 : f32 = u_xlat1.x;
  u_xlat21 = max(x_1019, x_1021);
  let x_1023 : f32 = u_xlat22;
  let x_1024 : f32 = u_xlat22;
  u_xlatb1 = (x_1023 < -(x_1024));
  let x_1027 : f32 = u_xlat21;
  let x_1028 : f32 = u_xlat21;
  u_xlatb21 = (x_1027 >= -(x_1028));
  let x_1031 : bool = u_xlatb21;
  let x_1032 : bool = u_xlatb1;
  u_xlatb21 = (x_1031 & x_1032);
  let x_1034 : bool = u_xlatb21;
  if (x_1034) {
    let x_1039 : f32 = u_xlat15.x;
    x_1035 = -(x_1039);
  } else {
    let x_1043 : f32 = u_xlat15.x;
    x_1035 = x_1043;
  }
  let x_1044 : f32 = x_1035;
  u_xlat21 = x_1044;
  let x_1045 : f32 = u_xlat21;
  u_xlat21 = (x_1045 * 57.295780181884765625f);
  let x_1049 : bool = u_xlatb14.x;
  let x_1050 : f32 = u_xlat21;
  u_xlat14.x = select(x_1050, 0.0f, x_1049);
  let x_1054 : f32 = u_xlat14.x;
  u_xlatb21 = (x_1054 < 0.0f);
  let x_1057 : f32 = u_xlat14.x;
  u_xlat1.x = (x_1057 + 360.0f);
  let x_1061 : bool = u_xlatb21;
  if (x_1061) {
    let x_1066 : f32 = u_xlat1.x;
    x_1062 = x_1066;
  } else {
    let x_1069 : f32 = u_xlat14.x;
    x_1062 = x_1069;
  }
  let x_1070 : f32 = x_1062;
  u_xlat14.x = x_1070;
  let x_1073 : f32 = u_xlat14.x;
  u_xlatb21 = (x_1073 < -180.0f);
  let x_1078 : f32 = u_xlat14.x;
  u_xlatb1 = (180.0f < x_1078);
  let x_1080 : vec2<f32> = u_xlat14;
  u_xlat15 = (vec2<f32>(x_1080.x, x_1080.x) + vec2<f32>(360.0f, -360.0f));
  let x_1085 : bool = u_xlatb1;
  if (x_1085) {
    let x_1090 : f32 = u_xlat15.y;
    x_1086 = x_1090;
  } else {
    let x_1093 : f32 = u_xlat14.x;
    x_1086 = x_1093;
  }
  let x_1094 : f32 = x_1086;
  u_xlat14.x = x_1094;
  let x_1096 : bool = u_xlatb21;
  if (x_1096) {
    let x_1101 : f32 = u_xlat15.x;
    x_1097 = x_1101;
  } else {
    let x_1104 : f32 = u_xlat14.x;
    x_1097 = x_1104;
  }
  let x_1105 : f32 = x_1097;
  u_xlat14.x = x_1105;
  let x_1108 : f32 = u_xlat14.x;
  u_xlat14.x = (x_1108 * 0.01481481455266475677f);
  let x_1113 : f32 = u_xlat14.x;
  u_xlat14.x = (-(abs(x_1113)) + 1.0f);
  let x_1119 : f32 = u_xlat14.x;
  u_xlat14.x = max(x_1119, 0.0f);
  let x_1123 : f32 = u_xlat14.x;
  u_xlat21 = ((x_1123 * -2.0f) + 3.0f);
  let x_1128 : f32 = u_xlat14.x;
  let x_1130 : f32 = u_xlat14.x;
  u_xlat14.x = (x_1128 * x_1130);
  let x_1134 : f32 = u_xlat14.x;
  let x_1135 : f32 = u_xlat21;
  u_xlat14.x = (x_1134 * x_1135);
  let x_1139 : f32 = u_xlat14.x;
  let x_1141 : f32 = u_xlat14.x;
  u_xlat14.x = (x_1139 * x_1141);
  let x_1145 : f32 = u_xlat0.x;
  let x_1147 : f32 = u_xlat14.x;
  u_xlat0.x = (x_1145 * x_1147);
  let x_1151 : f32 = u_xlat8.x;
  let x_1154 : f32 = u_xlat7.x;
  u_xlat7.x = ((-(x_1151) * x_1154) + 0.02999999932944774628f);
  let x_1160 : f32 = u_xlat7.x;
  let x_1162 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1160 * x_1162);
  let x_1166 : f32 = u_xlat0.x;
  let x_1170 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_1166 * 0.18000000715255737305f) + x_1170);
  let x_1177 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(1.45143926143646240234f, -0.23651075363159179688f, -0.21492856740951538086f), vec3<f32>(x_1177.x, x_1177.z, x_1177.w));
  let x_1185 : vec4<f32> = u_xlat2;
  u_xlat0.y = dot(vec3<f32>(-0.07655377686023712158f, 1.17622971534729003906f, -0.09967592358589172363f), vec3<f32>(x_1185.x, x_1185.z, x_1185.w));
  let x_1193 : vec4<f32> = u_xlat2;
  u_xlat0.z = dot(vec3<f32>(0.0083161480724811554f, -0.00603244965896010399f, 0.99771630764007568359f), vec3<f32>(x_1193.x, x_1193.z, x_1193.w));
  let x_1197 : vec3<f32> = u_xlat0;
  u_xlat0 = max(x_1197, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1200 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_1200, vec3<f32>(0.27222898602485656738f, 0.67408198118209838867f, 0.05368949845433235168f));
  let x_1206 : f32 = u_xlat21;
  let x_1209 : vec3<f32> = u_xlat0;
  u_xlat0 = (-(vec3<f32>(x_1206, x_1206, x_1206)) + x_1209);
  let x_1211 : vec3<f32> = u_xlat0;
  let x_1215 : f32 = u_xlat21;
  u_xlat0 = ((x_1211 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f)) + vec3<f32>(x_1215, x_1215, x_1215));
  let x_1218 : vec3<f32> = u_xlat0;
  let x_1221 : vec3<f32> = (x_1218 + vec3<f32>(0.02457859925925731659f, 0.02457859925925731659f, 0.02457859925925731659f));
  let x_1222 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1221.x, x_1221.y, x_1221.z, x_1222.w);
  let x_1224 : vec3<f32> = u_xlat0;
  let x_1225 : vec4<f32> = u_xlat1;
  let x_1230 : vec3<f32> = ((x_1224 * vec3<f32>(x_1225.x, x_1225.y, x_1225.z)) + vec3<f32>(-0.00009053700341610238f, -0.00009053700341610238f, -0.00009053700341610238f));
  let x_1231 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1230.x, x_1230.y, x_1230.z, x_1231.w);
  let x_1233 : vec3<f32> = u_xlat0;
  let x_1239 : vec3<f32> = ((x_1233 * vec3<f32>(0.98372900485992431641f, 0.98372900485992431641f, 0.98372900485992431641f)) + vec3<f32>(0.4329510033130645752f, 0.4329510033130645752f, 0.4329510033130645752f));
  let x_1240 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1239.x, x_1239.y, x_1239.z, x_1240.w);
  let x_1242 : vec3<f32> = u_xlat0;
  let x_1243 : vec4<f32> = u_xlat2;
  u_xlat0 = ((x_1242 * vec3<f32>(x_1243.x, x_1243.y, x_1243.z)) + vec3<f32>(0.23808099329471588135f, 0.23808099329471588135f, 0.23808099329471588135f));
  let x_1249 : vec4<f32> = u_xlat1;
  let x_1251 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1249.x, x_1249.y, x_1249.z) / x_1251);
  let x_1257 : vec3<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(0.66245418787002563477f, 0.13400420546531677246f, 0.1561876833438873291f), x_1257);
  let x_1264 : vec3<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(0.27222871780395507812f, 0.67408174276351928711f, 0.05368951708078384399f), x_1264);
  let x_1271 : vec3<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(-0.00557464966550469398f, 0.00406073359772562981f, 1.01033914089202880859f), x_1271);
  let x_1274 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(x_1274.x, x_1274.y, x_1274.z), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1279 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1279, 0.00009999999747378752f);
  let x_1282 : vec4<f32> = u_xlat1;
  let x_1284 : vec3<f32> = u_xlat0;
  let x_1286 : vec2<f32> = (vec2<f32>(x_1282.x, x_1282.y) / vec2<f32>(x_1284.x, x_1284.x));
  let x_1287 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1286.x, x_1286.y, x_1287.z);
  let x_1290 : f32 = u_xlat1.y;
  u_xlat21 = max(x_1290, 0.0f);
  let x_1292 : f32 = u_xlat21;
  u_xlat21 = min(x_1292, 65504.0f);
  let x_1295 : f32 = u_xlat21;
  u_xlat21 = log2(x_1295);
  let x_1297 : f32 = u_xlat21;
  u_xlat21 = (x_1297 * 0.98110002279281616211f);
  let x_1300 : f32 = u_xlat21;
  u_xlat1.y = exp2(x_1300);
  let x_1304 : f32 = u_xlat0.y;
  u_xlat21 = max(x_1304, 0.00009999999747378752f);
  let x_1307 : f32 = u_xlat1.y;
  let x_1308 : f32 = u_xlat21;
  u_xlat21 = (x_1307 / x_1308);
  let x_1311 : f32 = u_xlat0.x;
  u_xlat22 = (-(x_1311) + 1.0f);
  let x_1315 : f32 = u_xlat0.y;
  let x_1317 : f32 = u_xlat22;
  u_xlat0.z = (-(x_1315) + x_1317);
  let x_1320 : f32 = u_xlat21;
  let x_1322 : vec3<f32> = u_xlat0;
  let x_1324 : vec2<f32> = (vec2<f32>(x_1320, x_1320) * vec2<f32>(x_1322.x, x_1322.z));
  let x_1325 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1324.x, x_1325.y, x_1324.y, x_1325.w);
  let x_1331 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(1.64102339744567871094f, -0.32480329275131225586f, -0.23642469942569732666f), vec3<f32>(x_1331.x, x_1331.y, x_1331.z));
  let x_1339 : vec4<f32> = u_xlat1;
  u_xlat0.y = dot(vec3<f32>(-0.66366285085678100586f, 1.6153316497802734375f, 0.01675634831190109253f), vec3<f32>(x_1339.x, x_1339.y, x_1339.z));
  let x_1347 : vec4<f32> = u_xlat1;
  u_xlat0.z = dot(vec3<f32>(0.01172189414501190186f, -0.00828444212675094604f, 0.98839485645294189453f), vec3<f32>(x_1347.x, x_1347.y, x_1347.z));
  let x_1351 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_1351, vec3<f32>(0.27222898602485656738f, 0.67408198118209838867f, 0.05368949845433235168f));
  let x_1353 : f32 = u_xlat21;
  let x_1356 : vec3<f32> = u_xlat0;
  u_xlat0 = (-(vec3<f32>(x_1353, x_1353, x_1353)) + x_1356);
  let x_1358 : vec3<f32> = u_xlat0;
  let x_1362 : f32 = u_xlat21;
  u_xlat0 = ((x_1358 * vec3<f32>(0.93000000715255737305f, 0.93000000715255737305f, 0.93000000715255737305f)) + vec3<f32>(x_1362, x_1362, x_1362));
  let x_1365 : vec3<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(0.66245418787002563477f, 0.13400420546531677246f, 0.1561876833438873291f), x_1365);
  let x_1368 : vec3<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(0.27222871780395507812f, 0.67408174276351928711f, 0.05368951708078384399f), x_1368);
  let x_1371 : vec3<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(-0.00557464966550469398f, 0.00406073359772562981f, 1.01033914089202880859f), x_1371);
  let x_1378 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(0.98722398281097412109f, -0.00611326983198523521f, 0.01595330052077770233f), vec3<f32>(x_1378.x, x_1378.y, x_1378.z));
  let x_1386 : vec4<f32> = u_xlat1;
  u_xlat0.y = dot(vec3<f32>(-0.00759836006909608841f, 1.00186002254486083984f, 0.00533019984140992165f), vec3<f32>(x_1386.x, x_1386.y, x_1386.z));
  let x_1394 : vec4<f32> = u_xlat1;
  u_xlat0.z = dot(vec3<f32>(0.0030725700780749321f, -0.00509594986215233803f, 1.08168005943298339844f), vec3<f32>(x_1394.x, x_1394.y, x_1394.z));
  let x_1402 : vec3<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(3.24096989631652832031f, -1.53738319873809814453f, -0.49861076474189758301f), x_1402);
  let x_1406 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1406, 0.0f, 1.0f);
  let x_1413 : vec3<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(-0.96924364566802978516f, 1.87596750259399414062f, 0.04155505821108818054f), x_1413);
  let x_1417 : f32 = u_xlat1.y;
  u_xlat1.y = clamp(x_1417, 0.0f, 1.0f);
  let x_1424 : vec3<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(0.05563008040189743042f, -0.2039769589900970459f, 1.05697154998779296875f), x_1424);
  let x_1428 : f32 = u_xlat1.z;
  u_xlat1.z = clamp(x_1428, 0.0f, 1.0f);
  let x_1436 : f32 = x_26.x_UserLut_Params.w;
  u_xlatb0.x = (0.0f < x_1436);
  let x_1440 : bool = u_xlatb0.x;
  if (x_1440) {
    let x_1443 : vec4<f32> = u_xlat1;
    u_xlat0 = (vec3<f32>(x_1443.x, x_1443.y, x_1443.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
    let x_1448 : vec4<f32> = u_xlat1;
    let x_1450 : vec3<f32> = log2(vec3<f32>(x_1448.x, x_1448.y, x_1448.z));
    let x_1451 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1450.x, x_1450.y, x_1450.z, x_1451.w);
    let x_1453 : vec4<f32> = u_xlat2;
    let x_1457 : vec3<f32> = (vec3<f32>(x_1453.x, x_1453.y, x_1453.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
    let x_1458 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1457.x, x_1457.y, x_1457.z, x_1458.w);
    let x_1460 : vec4<f32> = u_xlat2;
    let x_1462 : vec3<f32> = exp2(vec3<f32>(x_1460.x, x_1460.y, x_1460.z));
    let x_1463 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1462.x, x_1462.y, x_1462.z, x_1463.w);
    let x_1465 : vec4<f32> = u_xlat2;
    let x_1472 : vec3<f32> = ((vec3<f32>(x_1465.x, x_1465.y, x_1465.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
    let x_1473 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1472.x, x_1472.y, x_1472.z, x_1473.w);
    let x_1478 : vec4<f32> = u_xlat1;
    let x_1480 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_1478.x, x_1478.y, x_1478.z, x_1478.x));
    u_xlatb3 = vec3<bool>(x_1480.x, x_1480.y, x_1480.z);
    let x_1484 : vec3<f32> = u_xlat0;
    hlslcc_movcTemp = x_1484;
    let x_1486 : bool = u_xlatb3.x;
    if (x_1486) {
      let x_1491 : f32 = u_xlat0.x;
      x_1487 = x_1491;
    } else {
      let x_1494 : f32 = u_xlat2.x;
      x_1487 = x_1494;
    }
    let x_1495 : f32 = x_1487;
    hlslcc_movcTemp.x = x_1495;
    let x_1498 : bool = u_xlatb3.y;
    if (x_1498) {
      let x_1503 : f32 = u_xlat0.y;
      x_1499 = x_1503;
    } else {
      let x_1506 : f32 = u_xlat2.y;
      x_1499 = x_1506;
    }
    let x_1507 : f32 = x_1499;
    hlslcc_movcTemp.y = x_1507;
    let x_1510 : bool = u_xlatb3.z;
    if (x_1510) {
      let x_1515 : f32 = u_xlat0.z;
      x_1511 = x_1515;
    } else {
      let x_1518 : f32 = u_xlat2.z;
      x_1511 = x_1518;
    }
    let x_1519 : f32 = x_1511;
    hlslcc_movcTemp.z = x_1519;
    let x_1521 : vec3<f32> = hlslcc_movcTemp;
    u_xlat0 = x_1521;
    let x_1522 : vec3<f32> = u_xlat0;
    let x_1525 : vec4<f32> = x_26.x_UserLut_Params;
    let x_1527 : vec3<f32> = (vec3<f32>(x_1522.z, x_1522.x, x_1522.y) * vec3<f32>(x_1525.z, x_1525.z, x_1525.z));
    let x_1528 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1527.x, x_1527.y, x_1527.z, x_1528.w);
    let x_1531 : f32 = u_xlat2.x;
    u_xlat21 = floor(x_1531);
    let x_1534 : vec4<f32> = x_26.x_UserLut_Params;
    let x_1536 : vec2<f32> = (vec2<f32>(x_1534.x, x_1534.y) * vec2<f32>(0.5f, 0.5f));
    let x_1537 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1536.x, x_1537.y, x_1537.z, x_1536.y);
    let x_1539 : vec4<f32> = u_xlat2;
    let x_1542 : vec4<f32> = x_26.x_UserLut_Params;
    let x_1545 : vec4<f32> = u_xlat2;
    let x_1547 : vec2<f32> = ((vec2<f32>(x_1539.y, x_1539.z) * vec2<f32>(x_1542.x, x_1542.y)) + vec2<f32>(x_1545.x, x_1545.w));
    let x_1548 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1548.x, x_1547.x, x_1547.y, x_1548.w);
    let x_1550 : f32 = u_xlat21;
    let x_1552 : f32 = x_26.x_UserLut_Params.y;
    let x_1555 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_1550 * x_1552) + x_1555);
    let x_1562 : vec4<f32> = u_xlat2;
    let x_1564 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1562.x, x_1562.z), 0.0f);
    let x_1565 : vec3<f32> = vec3<f32>(x_1564.x, x_1564.y, x_1564.z);
    let x_1566 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1565.x, x_1565.y, x_1565.z, x_1566.w);
    let x_1569 : f32 = x_26.x_UserLut_Params.y;
    u_xlat4.x = x_1569;
    u_xlat4.y = 0.0f;
    let x_1572 : vec4<f32> = u_xlat2;
    let x_1574 : vec4<f32> = u_xlat4;
    let x_1576 : vec2<f32> = (vec2<f32>(x_1572.x, x_1572.z) + vec2<f32>(x_1574.x, x_1574.y));
    let x_1577 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1576.x, x_1576.y, x_1577.z, x_1577.w);
    let x_1582 : vec4<f32> = u_xlat2;
    let x_1584 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1582.x, x_1582.y), 0.0f);
    let x_1585 : vec3<f32> = vec3<f32>(x_1584.x, x_1584.y, x_1584.z);
    let x_1586 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1585.x, x_1585.y, x_1585.z, x_1586.w);
    let x_1589 : f32 = u_xlat0.z;
    let x_1591 : f32 = x_26.x_UserLut_Params.z;
    let x_1593 : f32 = u_xlat21;
    u_xlat21 = ((x_1589 * x_1591) + -(x_1593));
    let x_1596 : vec4<f32> = u_xlat3;
    let x_1599 : vec4<f32> = u_xlat2;
    let x_1601 : vec3<f32> = (-(vec3<f32>(x_1596.x, x_1596.y, x_1596.z)) + vec3<f32>(x_1599.x, x_1599.y, x_1599.z));
    let x_1602 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1601.x, x_1601.y, x_1601.z, x_1602.w);
    let x_1604 : f32 = u_xlat21;
    let x_1606 : vec4<f32> = u_xlat2;
    let x_1609 : vec4<f32> = u_xlat3;
    let x_1611 : vec3<f32> = ((vec3<f32>(x_1604, x_1604, x_1604) * vec3<f32>(x_1606.x, x_1606.y, x_1606.z)) + vec3<f32>(x_1609.x, x_1609.y, x_1609.z));
    let x_1612 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1611.x, x_1611.y, x_1611.z, x_1612.w);
    let x_1614 : vec3<f32> = u_xlat0;
    let x_1616 : vec4<f32> = u_xlat2;
    let x_1618 : vec3<f32> = (-(x_1614) + vec3<f32>(x_1616.x, x_1616.y, x_1616.z));
    let x_1619 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1618.x, x_1618.y, x_1618.z, x_1619.w);
    let x_1622 : vec4<f32> = x_26.x_UserLut_Params;
    let x_1624 : vec4<f32> = u_xlat2;
    let x_1627 : vec3<f32> = u_xlat0;
    u_xlat0 = ((vec3<f32>(x_1622.w, x_1622.w, x_1622.w) * vec3<f32>(x_1624.x, x_1624.y, x_1624.z)) + x_1627);
    let x_1629 : vec3<f32> = u_xlat0;
    let x_1632 : vec3<f32> = (x_1629 * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
    let x_1633 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1632.x, x_1632.y, x_1632.z, x_1633.w);
    let x_1635 : vec3<f32> = u_xlat0;
    let x_1638 : vec3<f32> = (x_1635 + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
    let x_1639 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1638.x, x_1638.y, x_1638.z, x_1639.w);
    let x_1641 : vec4<f32> = u_xlat3;
    let x_1645 : vec3<f32> = (vec3<f32>(x_1641.x, x_1641.y, x_1641.z) * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
    let x_1646 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1645.x, x_1645.y, x_1645.z, x_1646.w);
    let x_1648 : vec4<f32> = u_xlat3;
    let x_1651 : vec3<f32> = log2(abs(vec3<f32>(x_1648.x, x_1648.y, x_1648.z)));
    let x_1652 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1651.x, x_1651.y, x_1651.z, x_1652.w);
    let x_1654 : vec4<f32> = u_xlat3;
    let x_1658 : vec3<f32> = (vec3<f32>(x_1654.x, x_1654.y, x_1654.z) * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
    let x_1659 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1658.x, x_1658.y, x_1658.z, x_1659.w);
    let x_1661 : vec4<f32> = u_xlat3;
    let x_1663 : vec3<f32> = exp2(vec3<f32>(x_1661.x, x_1661.y, x_1661.z));
    let x_1664 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1663.x, x_1663.y, x_1663.z, x_1664.w);
    let x_1668 : vec3<f32> = u_xlat0;
    let x_1670 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_1668.x, x_1668.y, x_1668.z, x_1668.x));
    u_xlatb0 = vec3<bool>(x_1670.x, x_1670.y, x_1670.z);
    let x_1673 : bool = u_xlatb0.x;
    if (x_1673) {
      let x_1678 : f32 = u_xlat2.x;
      x_1674 = x_1678;
    } else {
      let x_1681 : f32 = u_xlat3.x;
      x_1674 = x_1681;
    }
    let x_1682 : f32 = x_1674;
    u_xlat1.x = x_1682;
    let x_1685 : bool = u_xlatb0.y;
    if (x_1685) {
      let x_1690 : f32 = u_xlat2.y;
      x_1686 = x_1690;
    } else {
      let x_1693 : f32 = u_xlat3.y;
      x_1686 = x_1693;
    }
    let x_1694 : f32 = x_1686;
    u_xlat1.y = x_1694;
    let x_1697 : bool = u_xlatb0.z;
    if (x_1697) {
      let x_1702 : f32 = u_xlat2.z;
      x_1698 = x_1702;
    } else {
      let x_1705 : f32 = u_xlat3.z;
      x_1698 = x_1705;
    }
    let x_1706 : f32 = x_1698;
    u_xlat1.z = x_1706;
  }
  let x_1708 : vec4<f32> = u_xlat1;
  let x_1711 : vec4<f32> = x_26.x_Lut_Params;
  u_xlat0 = (vec3<f32>(x_1708.z, x_1708.x, x_1708.y) * vec3<f32>(x_1711.z, x_1711.z, x_1711.z));
  let x_1715 : f32 = u_xlat0.x;
  u_xlat0.x = floor(x_1715);
  let x_1719 : vec4<f32> = x_26.x_Lut_Params;
  let x_1721 : vec2<f32> = (vec2<f32>(x_1719.x, x_1719.y) * vec2<f32>(0.5f, 0.5f));
  let x_1722 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1721.x, x_1721.y, x_1722.z, x_1722.w);
  let x_1724 : vec3<f32> = u_xlat0;
  let x_1727 : vec4<f32> = x_26.x_Lut_Params;
  let x_1730 : vec4<f32> = u_xlat1;
  let x_1732 : vec2<f32> = ((vec2<f32>(x_1724.y, x_1724.z) * vec2<f32>(x_1727.x, x_1727.y)) + vec2<f32>(x_1730.x, x_1730.y));
  let x_1733 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1733.x, x_1732.x, x_1732.y, x_1733.w);
  let x_1736 : f32 = u_xlat0.x;
  let x_1738 : f32 = x_26.x_Lut_Params.y;
  let x_1741 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_1736 * x_1738) + x_1741);
  let x_1748 : vec4<f32> = u_xlat2;
  let x_1750 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1748.x, x_1748.z), 0.0f);
  u_xlat7 = vec3<f32>(x_1750.x, x_1750.y, x_1750.z);
  let x_1753 : f32 = x_26.x_Lut_Params.y;
  u_xlat1.x = x_1753;
  u_xlat1.y = 0.0f;
  let x_1756 : vec4<f32> = u_xlat1;
  let x_1758 : vec4<f32> = u_xlat2;
  let x_1760 : vec2<f32> = (vec2<f32>(x_1756.x, x_1756.y) + vec2<f32>(x_1758.x, x_1758.z));
  let x_1761 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1760.x, x_1760.y, x_1761.z, x_1761.w);
  let x_1766 : vec4<f32> = u_xlat1;
  let x_1768 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1766.x, x_1766.y), 0.0f);
  let x_1769 : vec3<f32> = vec3<f32>(x_1768.x, x_1768.y, x_1768.z);
  let x_1770 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1769.x, x_1769.y, x_1770.z, x_1769.z);
  let x_1773 : f32 = u_xlat1.z;
  let x_1775 : f32 = x_26.x_Lut_Params.z;
  let x_1778 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1773 * x_1775) + -(x_1778));
  let x_1782 : vec3<f32> = u_xlat7;
  let x_1784 : vec4<f32> = u_xlat1;
  let x_1786 : vec3<f32> = (-(x_1782) + vec3<f32>(x_1784.x, x_1784.y, x_1784.w));
  let x_1787 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1786.x, x_1786.y, x_1786.z, x_1787.w);
  let x_1789 : vec3<f32> = u_xlat0;
  let x_1791 : vec4<f32> = u_xlat1;
  let x_1794 : vec3<f32> = u_xlat7;
  u_xlat0 = ((vec3<f32>(x_1789.x, x_1789.x, x_1789.x) * vec3<f32>(x_1791.x, x_1791.y, x_1791.z)) + x_1794);
  let x_1796 : vec2<f32> = vs_TEXCOORD0;
  let x_1799 : vec4<f32> = x_26.x_Grain_TilingParams;
  let x_1803 : vec4<f32> = x_26.x_Grain_TilingParams;
  let x_1805 : vec2<f32> = ((x_1796 * vec2<f32>(x_1799.x, x_1799.y)) + vec2<f32>(x_1803.z, x_1803.w));
  let x_1806 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1805.x, x_1805.y, x_1806.z, x_1806.w);
  let x_1813 : vec4<f32> = u_xlat1;
  let x_1816 : f32 = x_26.x_GlobalMipBias.x;
  let x_1817 : vec4<f32> = textureSampleBias(x_Grain_Texture, sampler_LinearRepeat, vec2<f32>(x_1813.x, x_1813.y), x_1816);
  u_xlat21 = x_1817.w;
  let x_1819 : f32 = u_xlat21;
  u_xlat21 = (x_1819 + -0.5f);
  let x_1821 : f32 = u_xlat21;
  let x_1822 : f32 = u_xlat21;
  u_xlat21 = (x_1821 + x_1822);
  let x_1824 : vec3<f32> = u_xlat0;
  u_xlat1.x = dot(x_1824, vec3<f32>(0.21267290413379669189f, 0.71515220403671264648f, 0.07217500358819961548f));
  let x_1832 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_1832);
  let x_1837 : f32 = x_26.x_Grain_Params.y;
  let x_1839 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1837 * -(x_1839)) + 1.0f);
  let x_1844 : f32 = u_xlat21;
  let x_1846 : vec3<f32> = u_xlat0;
  u_xlat8 = (vec3<f32>(x_1844, x_1844, x_1844) * x_1846);
  let x_1848 : vec3<f32> = u_xlat8;
  let x_1851 : vec2<f32> = x_26.x_Grain_Params;
  u_xlat8 = (x_1848 * vec3<f32>(x_1851.x, x_1851.x, x_1851.x));
  let x_1854 : vec3<f32> = u_xlat8;
  let x_1855 : vec4<f32> = u_xlat1;
  let x_1858 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_1854 * vec3<f32>(x_1855.x, x_1855.x, x_1855.x)) + x_1858);
  let x_1860 : vec3<f32> = u_xlat0;
  u_xlat0 = sqrt(x_1860);
  let x_1862 : vec2<f32> = vs_TEXCOORD0;
  let x_1865 : vec4<f32> = x_26.x_Dithering_Params;
  let x_1869 : vec4<f32> = x_26.x_Dithering_Params;
  let x_1871 : vec2<f32> = ((x_1862 * vec2<f32>(x_1865.x, x_1865.y)) + vec2<f32>(x_1869.z, x_1869.w));
  let x_1872 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1871.x, x_1871.y, x_1872.z, x_1872.w);
  let x_1879 : vec4<f32> = u_xlat1;
  let x_1882 : f32 = x_26.x_GlobalMipBias.x;
  let x_1883 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_1879.x, x_1879.y), x_1882);
  u_xlat21 = x_1883.w;
  let x_1885 : f32 = u_xlat21;
  u_xlat21 = ((x_1885 * 2.0f) + -1.0f);
  let x_1888 : f32 = u_xlat21;
  u_xlatb1 = (x_1888 >= 0.0f);
  let x_1890 : bool = u_xlatb1;
  u_xlat1.x = select(-1.0f, 1.0f, x_1890);
  let x_1893 : f32 = u_xlat21;
  u_xlat21 = (-(abs(x_1893)) + 1.0f);
  let x_1897 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_1897);
  let x_1899 : f32 = u_xlat21;
  u_xlat21 = (-(x_1899) + 1.0f);
  let x_1902 : f32 = u_xlat21;
  let x_1904 : f32 = u_xlat1.x;
  u_xlat21 = (x_1902 * x_1904);
  let x_1906 : vec3<f32> = u_xlat0;
  let x_1907 : vec3<f32> = (x_1906 * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
  let x_1908 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1907.x, x_1907.y, x_1907.z, x_1908.w);
  let x_1910 : vec3<f32> = u_xlat0;
  let x_1911 : vec3<f32> = log2(x_1910);
  let x_1912 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1911.x, x_1911.y, x_1911.z, x_1912.w);
  let x_1914 : vec4<f32> = u_xlat2;
  let x_1916 : vec3<f32> = (vec3<f32>(x_1914.x, x_1914.y, x_1914.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
  let x_1917 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1916.x, x_1916.y, x_1916.z, x_1917.w);
  let x_1919 : vec4<f32> = u_xlat2;
  let x_1921 : vec3<f32> = exp2(vec3<f32>(x_1919.x, x_1919.y, x_1919.z));
  let x_1922 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1921.x, x_1921.y, x_1921.z, x_1922.w);
  let x_1924 : vec4<f32> = u_xlat2;
  let x_1927 : vec3<f32> = ((vec3<f32>(x_1924.x, x_1924.y, x_1924.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
  let x_1928 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1927.x, x_1927.y, x_1927.z, x_1928.w);
  let x_1930 : vec3<f32> = u_xlat0;
  let x_1932 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_1930.x, x_1930.y, x_1930.z, x_1930.x));
  u_xlatb0 = vec3<bool>(x_1932.x, x_1932.y, x_1932.z);
  let x_1935 : bool = u_xlatb0.x;
  if (x_1935) {
    let x_1940 : f32 = u_xlat1.x;
    x_1936 = x_1940;
  } else {
    let x_1943 : f32 = u_xlat2.x;
    x_1936 = x_1943;
  }
  let x_1944 : f32 = x_1936;
  u_xlat0.x = x_1944;
  let x_1947 : bool = u_xlatb0.y;
  if (x_1947) {
    let x_1952 : f32 = u_xlat1.y;
    x_1948 = x_1952;
  } else {
    let x_1955 : f32 = u_xlat2.y;
    x_1948 = x_1955;
  }
  let x_1956 : f32 = x_1948;
  u_xlat0.y = x_1956;
  let x_1959 : bool = u_xlatb0.z;
  if (x_1959) {
    let x_1964 : f32 = u_xlat1.z;
    x_1960 = x_1964;
  } else {
    let x_1967 : f32 = u_xlat2.z;
    x_1960 = x_1967;
  }
  let x_1968 : f32 = x_1960;
  u_xlat0.z = x_1968;
  let x_1970 : f32 = u_xlat21;
  let x_1975 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1970, x_1970, x_1970) * vec3<f32>(0.0039215688593685627f, 0.0039215688593685627f, 0.0039215688593685627f)) + x_1975);
  let x_1977 : vec3<f32> = u_xlat0;
  let x_1978 : vec3<f32> = (x_1977 * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
  let x_1979 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1978.x, x_1978.y, x_1978.z, x_1979.w);
  let x_1981 : vec3<f32> = u_xlat0;
  let x_1982 : vec3<f32> = (x_1981 + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
  let x_1983 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1982.x, x_1982.y, x_1982.z, x_1983.w);
  let x_1985 : vec4<f32> = u_xlat2;
  let x_1987 : vec3<f32> = (vec3<f32>(x_1985.x, x_1985.y, x_1985.z) * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
  let x_1988 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1987.x, x_1987.y, x_1987.z, x_1988.w);
  let x_1990 : vec4<f32> = u_xlat2;
  let x_1993 : vec3<f32> = log2(abs(vec3<f32>(x_1990.x, x_1990.y, x_1990.z)));
  let x_1994 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1993.x, x_1993.y, x_1993.z, x_1994.w);
  let x_1996 : vec4<f32> = u_xlat2;
  let x_1998 : vec3<f32> = (vec3<f32>(x_1996.x, x_1996.y, x_1996.z) * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
  let x_1999 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1998.x, x_1998.y, x_1998.z, x_1999.w);
  let x_2001 : vec4<f32> = u_xlat2;
  let x_2003 : vec3<f32> = exp2(vec3<f32>(x_2001.x, x_2001.y, x_2001.z));
  let x_2004 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_2003.x, x_2003.y, x_2003.z, x_2004.w);
  let x_2006 : vec3<f32> = u_xlat0;
  let x_2008 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_2006.x, x_2006.y, x_2006.z, x_2006.x));
  u_xlatb0 = vec3<bool>(x_2008.x, x_2008.y, x_2008.z);
  let x_2011 : bool = u_xlatb0.x;
  if (x_2011) {
    let x_2016 : f32 = u_xlat1.x;
    x_2012 = x_2016;
  } else {
    let x_2019 : f32 = u_xlat2.x;
    x_2012 = x_2019;
  }
  let x_2020 : f32 = x_2012;
  u_xlat0.x = x_2020;
  let x_2023 : bool = u_xlatb0.y;
  if (x_2023) {
    let x_2028 : f32 = u_xlat1.y;
    x_2024 = x_2028;
  } else {
    let x_2031 : f32 = u_xlat2.y;
    x_2024 = x_2031;
  }
  let x_2032 : f32 = x_2024;
  u_xlat0.y = x_2032;
  let x_2035 : bool = u_xlatb0.z;
  if (x_2035) {
    let x_2040 : f32 = u_xlat1.z;
    x_2036 = x_2040;
  } else {
    let x_2043 : f32 = u_xlat2.z;
    x_2036 = x_2043;
  }
  let x_2044 : f32 = x_2036;
  u_xlat0.z = x_2044;
  let x_2048 : vec3<f32> = u_xlat0;
  let x_2049 : vec3<f32> = max(x_2048, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_2050 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2049.x, x_2049.y, x_2049.z, x_2050.w);
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


