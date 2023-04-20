diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_RTHandleScale : vec4<f32>,
  /* @offset(32) */
  x_BlitTexture_TexelSize : vec4<f32>,
  /* @offset(48) */
  x_Lut_Params : vec4<f32>,
  /* @offset(64) */
  x_UserLut_Params : vec4<f32>,
  /* @offset(80) */
  x_Chroma_Params : f32,
  /* @offset(96) */
  x_Vignette_Params1 : vec4<f32>,
  /* @offset(112) */
  x_Vignette_Params2 : vec4<f32>,
  /* @offset(128) */
  x_Dithering_Params : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_38 : PGlobals;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(4) var sampler_LinearClamp : sampler;

var<private> u_xlatb0 : vec3<bool>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlatb15 : bool;

var<private> u_xlatb3 : vec3<bool>;

var<private> u_xlat15 : f32;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(2) var x_UserLut : texture_2d<f32>;

var<private> u_xlat4 : vec2<f32>;

var<private> u_xlatb1 : vec3<bool>;

@group(0) @binding(1) var x_InternalLut : texture_2d<f32>;

@group(0) @binding(3) var x_BlueNoise_Texture : texture_2d<f32>;

@group(0) @binding(5) var sampler_PointRepeat : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var hlslcc_movcTemp : vec4<f32>;
  var x_350 : f32;
  var x_362 : f32;
  var x_374 : f32;
  var x_530 : f32;
  var x_542 : f32;
  var x_554 : f32;
  var x_687 : f32;
  var x_699 : f32;
  var x_711 : f32;
  var x_800 : f32;
  var x_812 : f32;
  var x_824 : f32;
  var x_881 : f32;
  var x_893 : f32;
  var x_905 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = ((vec4<f32>(x_13.x, x_13.y, x_13.x, x_13.y) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_22 : vec4<f32> = u_xlat0;
  let x_24 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec2<f32>(x_22.z, x_22.w), vec2<f32>(x_24.z, x_24.w));
  let x_31 : vec4<f32> = u_xlat0;
  let x_32 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_31 * vec4<f32>(x_32.x, x_32.x, x_32.x, x_32.x));
  let x_35 : vec4<f32> = u_xlat0;
  let x_43 : f32 = x_38.x_Chroma_Params;
  u_xlat0 = (x_35 * vec4<f32>(x_43, x_43, x_43, x_43));
  let x_49 : vec4<f32> = x_38.x_BlitTexture_TexelSize;
  let x_57 : vec4<f32> = x_38.x_RTHandleScale;
  u_xlat1 = ((-(vec4<f32>(x_49.x, x_49.y, x_49.x, x_49.y)) * vec4<f32>(0.5f, 0.5f, 0.5f, 0.5f)) + vec4<f32>(x_57.x, x_57.y, x_57.x, x_57.y));
  let x_61 : vec4<f32> = u_xlat1;
  let x_63 : vec2<f32> = vs_TEXCOORD0;
  let x_64 : vec2<f32> = min(vec2<f32>(x_61.z, x_61.w), x_63);
  let x_65 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_64.x, x_64.y, x_65.z, x_65.w);
  let x_77 : vec4<f32> = u_xlat2;
  let x_81 : f32 = x_38.x_GlobalMipBias.x;
  let x_82 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_77.x, x_77.y), x_81);
  u_xlat2.x = x_82.x;
  let x_85 : vec4<f32> = u_xlat0;
  let x_90 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = ((x_85 * vec4<f32>(-0.3333333432674407959f, -0.3333333432674407959f, -0.6666666865348815918f, -0.6666666865348815918f)) + vec4<f32>(x_90.x, x_90.y, x_90.x, x_90.y));
  let x_93 : vec4<f32> = u_xlat1;
  let x_94 : vec4<f32> = u_xlat0;
  u_xlat0 = min(x_93, x_94);
  let x_99 : vec4<f32> = u_xlat0;
  let x_102 : f32 = x_38.x_GlobalMipBias.x;
  let x_103 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_99.x, x_99.y), x_102);
  u_xlat2.y = x_103.y;
  let x_110 : vec4<f32> = u_xlat0;
  let x_113 : f32 = x_38.x_GlobalMipBias.x;
  let x_114 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_110.z, x_110.w), x_113);
  u_xlat2.z = x_114.z;
  let x_125 : f32 = x_38.x_Vignette_Params2.z;
  u_xlatb0.x = (0.0f < x_125);
  let x_130 : bool = u_xlatb0.x;
  if (x_130) {
    let x_133 : vec2<f32> = vs_TEXCOORD0;
    let x_135 : vec4<f32> = x_38.x_Vignette_Params2;
    let x_138 : vec2<f32> = (x_133 + -(vec2<f32>(x_135.x, x_135.y)));
    let x_139 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_138.x, x_138.y, x_139.z, x_139.w);
    let x_141 : vec4<f32> = u_xlat0;
    let x_145 : vec4<f32> = x_38.x_Vignette_Params2;
    let x_147 : vec2<f32> = (abs(vec2<f32>(x_141.x, x_141.y)) * vec2<f32>(x_145.z, x_145.z));
    let x_148 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_148.x, x_147.x, x_147.y, x_148.w);
    let x_151 : f32 = u_xlat0.y;
    let x_155 : f32 = x_38.x_Vignette_Params1.w;
    u_xlat0.x = (x_151 * x_155);
    let x_158 : vec4<f32> = u_xlat0;
    let x_160 : vec4<f32> = u_xlat0;
    u_xlat0.x = dot(vec2<f32>(x_158.x, x_158.z), vec2<f32>(x_160.x, x_160.z));
    let x_165 : f32 = u_xlat0.x;
    u_xlat0.x = (-(x_165) + 1.0f);
    let x_171 : f32 = u_xlat0.x;
    u_xlat0.x = max(x_171, 0.0f);
    let x_175 : f32 = u_xlat0.x;
    u_xlat0.x = log2(x_175);
    let x_179 : f32 = u_xlat0.x;
    let x_181 : f32 = x_38.x_Vignette_Params2.w;
    u_xlat0.x = (x_179 * x_181);
    let x_185 : f32 = u_xlat0.x;
    u_xlat0.x = exp2(x_185);
    let x_192 : vec4<f32> = x_38.x_Vignette_Params1;
    u_xlat5 = (-(vec3<f32>(x_192.x, x_192.y, x_192.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_197 : vec4<f32> = u_xlat0;
    let x_199 : vec3<f32> = u_xlat5;
    let x_202 : vec4<f32> = x_38.x_Vignette_Params1;
    let x_204 : vec3<f32> = ((vec3<f32>(x_197.x, x_197.x, x_197.x) * x_199) + vec3<f32>(x_202.x, x_202.y, x_202.z));
    let x_205 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_204.x, x_204.y, x_204.z, x_205.w);
    let x_207 : vec4<f32> = u_xlat0;
    let x_209 : vec4<f32> = u_xlat2;
    let x_211 : vec3<f32> = (vec3<f32>(x_207.x, x_207.y, x_207.z) * vec3<f32>(x_209.x, x_209.y, x_209.z));
    let x_212 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_211.x, x_211.y, x_211.z, x_212.w);
  }
  let x_214 : vec4<f32> = u_xlat2;
  let x_218 : vec4<f32> = x_38.x_Lut_Params;
  let x_220 : vec3<f32> = (vec3<f32>(x_214.x, x_214.y, x_214.z) * vec3<f32>(x_218.w, x_218.w, x_218.w));
  let x_221 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_220.x, x_220.y, x_220.z, x_221.w);
  let x_223 : vec4<f32> = u_xlat0;
  let x_227 : vec3<f32> = (vec3<f32>(x_223.x, x_223.y, x_223.z) * vec3<f32>(1.31338608264923095703f, 1.31338608264923095703f, 1.31338608264923095703f));
  let x_228 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_227.x, x_227.y, x_227.z, x_228.w);
  let x_230 : vec4<f32> = u_xlat0;
  let x_237 : vec3<f32> = ((vec3<f32>(x_230.x, x_230.y, x_230.z) * vec3<f32>(0.26267722249031066895f, 0.26267722249031066895f, 0.26267722249031066895f)) + vec3<f32>(0.06959999352693557739f, 0.06959999352693557739f, 0.06959999352693557739f));
  let x_238 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_237.x, x_237.y, x_237.z, x_238.w);
  let x_240 : vec4<f32> = u_xlat1;
  let x_242 : vec4<f32> = u_xlat2;
  let x_247 : vec3<f32> = ((vec3<f32>(x_240.x, x_240.y, x_240.z) * vec3<f32>(x_242.x, x_242.y, x_242.z)) + vec3<f32>(0.00543999997898936272f, 0.00543999997898936272f, 0.00543999997898936272f));
  let x_248 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_247.x, x_247.y, x_247.z, x_248.w);
  let x_250 : vec4<f32> = u_xlat0;
  let x_255 : vec3<f32> = ((vec3<f32>(x_250.x, x_250.y, x_250.z) * vec3<f32>(0.26267722249031066895f, 0.26267722249031066895f, 0.26267722249031066895f)) + vec3<f32>(0.28999999165534973145f, 0.28999999165534973145f, 0.28999999165534973145f));
  let x_256 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_255.x, x_255.y, x_255.z, x_256.w);
  let x_258 : vec4<f32> = u_xlat1;
  let x_260 : vec4<f32> = u_xlat0;
  let x_265 : vec3<f32> = ((vec3<f32>(x_258.x, x_258.y, x_258.z) * vec3<f32>(x_260.x, x_260.y, x_260.z)) + vec3<f32>(0.08160001039505004883f, 0.08160001039505004883f, 0.08160001039505004883f));
  let x_266 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_265.x, x_265.y, x_265.z, x_266.w);
  let x_268 : vec4<f32> = u_xlat2;
  let x_270 : vec4<f32> = u_xlat0;
  let x_272 : vec3<f32> = (vec3<f32>(x_268.x, x_268.y, x_268.z) / vec3<f32>(x_270.x, x_270.y, x_270.z));
  let x_273 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_272.x, x_272.y, x_272.z, x_273.w);
  let x_275 : vec4<f32> = u_xlat0;
  let x_279 : vec3<f32> = (vec3<f32>(x_275.x, x_275.y, x_275.z) + vec3<f32>(-0.06666666269302368164f, -0.06666666269302368164f, -0.06666666269302368164f));
  let x_280 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_279.x, x_279.y, x_279.z, x_280.w);
  let x_282 : vec4<f32> = u_xlat0;
  let x_284 : vec3<f32> = (vec3<f32>(x_282.x, x_282.y, x_282.z) * vec3<f32>(1.31338608264923095703f, 1.31338608264923095703f, 1.31338608264923095703f));
  let x_285 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_284.x, x_284.y, x_284.z, x_285.w);
  let x_287 : vec4<f32> = u_xlat0;
  let x_291 : vec3<f32> = clamp(vec3<f32>(x_287.x, x_287.y, x_287.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_292 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_291.x, x_291.y, x_291.z, x_292.w);
  let x_297 : f32 = x_38.x_UserLut_Params.w;
  u_xlatb15 = (0.0f < x_297);
  let x_299 : bool = u_xlatb15;
  if (x_299) {
    let x_302 : vec4<f32> = u_xlat0;
    let x_306 : vec3<f32> = (vec3<f32>(x_302.x, x_302.y, x_302.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
    let x_307 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_306.x, x_306.y, x_306.z, x_307.w);
    let x_309 : vec4<f32> = u_xlat0;
    let x_311 : vec3<f32> = log2(vec3<f32>(x_309.x, x_309.y, x_309.z));
    let x_312 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_311.x, x_311.y, x_311.z, x_312.w);
    let x_314 : vec4<f32> = u_xlat2;
    let x_318 : vec3<f32> = (vec3<f32>(x_314.x, x_314.y, x_314.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
    let x_319 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
    let x_321 : vec4<f32> = u_xlat2;
    let x_323 : vec3<f32> = exp2(vec3<f32>(x_321.x, x_321.y, x_321.z));
    let x_324 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_323.x, x_323.y, x_323.z, x_324.w);
    let x_326 : vec4<f32> = u_xlat2;
    let x_333 : vec3<f32> = ((vec3<f32>(x_326.x, x_326.y, x_326.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
    let x_334 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
    let x_339 : vec4<f32> = u_xlat0;
    let x_342 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_339.x, x_339.y, x_339.z, x_339.x));
    u_xlatb3 = vec3<bool>(x_342.x, x_342.y, x_342.z);
    let x_346 : vec4<f32> = u_xlat1;
    hlslcc_movcTemp = x_346;
    let x_348 : bool = u_xlatb3.x;
    if (x_348) {
      let x_354 : f32 = u_xlat1.x;
      x_350 = x_354;
    } else {
      let x_357 : f32 = u_xlat2.x;
      x_350 = x_357;
    }
    let x_358 : f32 = x_350;
    hlslcc_movcTemp.x = x_358;
    let x_361 : bool = u_xlatb3.y;
    if (x_361) {
      let x_366 : f32 = u_xlat1.y;
      x_362 = x_366;
    } else {
      let x_369 : f32 = u_xlat2.y;
      x_362 = x_369;
    }
    let x_370 : f32 = x_362;
    hlslcc_movcTemp.y = x_370;
    let x_373 : bool = u_xlatb3.z;
    if (x_373) {
      let x_378 : f32 = u_xlat1.z;
      x_374 = x_378;
    } else {
      let x_381 : f32 = u_xlat2.z;
      x_374 = x_381;
    }
    let x_382 : f32 = x_374;
    hlslcc_movcTemp.z = x_382;
    let x_384 : vec4<f32> = hlslcc_movcTemp;
    u_xlat1 = x_384;
    let x_385 : vec4<f32> = u_xlat1;
    let x_388 : vec4<f32> = x_38.x_UserLut_Params;
    let x_390 : vec3<f32> = (vec3<f32>(x_385.z, x_385.x, x_385.y) * vec3<f32>(x_388.z, x_388.z, x_388.z));
    let x_391 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_390.x, x_390.y, x_390.z, x_391.w);
    let x_395 : f32 = u_xlat2.x;
    u_xlat15 = floor(x_395);
    let x_398 : vec4<f32> = x_38.x_UserLut_Params;
    let x_401 : vec2<f32> = (vec2<f32>(x_398.x, x_398.y) * vec2<f32>(0.5f, 0.5f));
    let x_402 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_401.x, x_402.y, x_402.z, x_401.y);
    let x_404 : vec4<f32> = u_xlat2;
    let x_407 : vec4<f32> = x_38.x_UserLut_Params;
    let x_410 : vec4<f32> = u_xlat2;
    let x_412 : vec2<f32> = ((vec2<f32>(x_404.y, x_404.z) * vec2<f32>(x_407.x, x_407.y)) + vec2<f32>(x_410.x, x_410.w));
    let x_413 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_413.x, x_412.x, x_412.y, x_413.w);
    let x_415 : f32 = u_xlat15;
    let x_417 : f32 = x_38.x_UserLut_Params.y;
    let x_420 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_415 * x_417) + x_420);
    let x_428 : vec4<f32> = u_xlat2;
    let x_430 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_428.x, x_428.z), 0.0f);
    u_xlat3 = vec3<f32>(x_430.x, x_430.y, x_430.z);
    let x_435 : f32 = x_38.x_UserLut_Params.y;
    u_xlat4.x = x_435;
    u_xlat4.y = 0.0f;
    let x_438 : vec4<f32> = u_xlat2;
    let x_440 : vec2<f32> = u_xlat4;
    let x_441 : vec2<f32> = (vec2<f32>(x_438.x, x_438.z) + x_440);
    let x_442 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_441.x, x_441.y, x_442.z, x_442.w);
    let x_447 : vec4<f32> = u_xlat2;
    let x_449 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_447.x, x_447.y), 0.0f);
    let x_450 : vec3<f32> = vec3<f32>(x_449.x, x_449.y, x_449.z);
    let x_451 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_450.x, x_450.y, x_450.z, x_451.w);
    let x_454 : f32 = u_xlat1.z;
    let x_456 : f32 = x_38.x_UserLut_Params.z;
    let x_458 : f32 = u_xlat15;
    u_xlat15 = ((x_454 * x_456) + -(x_458));
    let x_461 : vec3<f32> = u_xlat3;
    let x_463 : vec4<f32> = u_xlat2;
    let x_465 : vec3<f32> = (-(x_461) + vec3<f32>(x_463.x, x_463.y, x_463.z));
    let x_466 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_465.x, x_465.y, x_465.z, x_466.w);
    let x_468 : f32 = u_xlat15;
    let x_470 : vec4<f32> = u_xlat2;
    let x_473 : vec3<f32> = u_xlat3;
    let x_474 : vec3<f32> = ((vec3<f32>(x_468, x_468, x_468) * vec3<f32>(x_470.x, x_470.y, x_470.z)) + x_473);
    let x_475 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_474.x, x_474.y, x_474.z, x_475.w);
    let x_477 : vec4<f32> = u_xlat1;
    let x_480 : vec4<f32> = u_xlat2;
    let x_482 : vec3<f32> = (-(vec3<f32>(x_477.x, x_477.y, x_477.z)) + vec3<f32>(x_480.x, x_480.y, x_480.z));
    let x_483 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_482.x, x_482.y, x_482.z, x_483.w);
    let x_486 : vec4<f32> = x_38.x_UserLut_Params;
    let x_488 : vec4<f32> = u_xlat2;
    let x_491 : vec4<f32> = u_xlat1;
    let x_493 : vec3<f32> = ((vec3<f32>(x_486.w, x_486.w, x_486.w) * vec3<f32>(x_488.x, x_488.y, x_488.z)) + vec3<f32>(x_491.x, x_491.y, x_491.z));
    let x_494 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_493.x, x_493.y, x_493.z, x_494.w);
    let x_496 : vec4<f32> = u_xlat1;
    let x_500 : vec3<f32> = (vec3<f32>(x_496.x, x_496.y, x_496.z) * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
    let x_501 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_500.x, x_500.y, x_500.z, x_501.w);
    let x_503 : vec4<f32> = u_xlat1;
    u_xlat3 = (vec3<f32>(x_503.x, x_503.y, x_503.z) + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
    let x_508 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_508 * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
    let x_512 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_512));
    let x_515 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_515 * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
    let x_519 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_519);
    let x_524 : vec4<f32> = u_xlat1;
    let x_526 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_524.x, x_524.y, x_524.z, x_524.x));
    u_xlatb1 = vec3<bool>(x_526.x, x_526.y, x_526.z);
    let x_529 : bool = u_xlatb1.x;
    if (x_529) {
      let x_534 : f32 = u_xlat2.x;
      x_530 = x_534;
    } else {
      let x_537 : f32 = u_xlat3.x;
      x_530 = x_537;
    }
    let x_538 : f32 = x_530;
    u_xlat0.x = x_538;
    let x_541 : bool = u_xlatb1.y;
    if (x_541) {
      let x_546 : f32 = u_xlat2.y;
      x_542 = x_546;
    } else {
      let x_549 : f32 = u_xlat3.y;
      x_542 = x_549;
    }
    let x_550 : f32 = x_542;
    u_xlat0.y = x_550;
    let x_553 : bool = u_xlatb1.z;
    if (x_553) {
      let x_558 : f32 = u_xlat2.z;
      x_554 = x_558;
    } else {
      let x_561 : f32 = u_xlat3.z;
      x_554 = x_561;
    }
    let x_562 : f32 = x_554;
    u_xlat0.z = x_562;
  }
  let x_564 : vec4<f32> = u_xlat0;
  let x_567 : vec4<f32> = x_38.x_Lut_Params;
  let x_569 : vec3<f32> = (vec3<f32>(x_564.x, x_564.y, x_564.z) * vec3<f32>(x_567.z, x_567.z, x_567.z));
  let x_570 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_569.x, x_569.y, x_570.z, x_569.z);
  let x_573 : f32 = u_xlat0.w;
  u_xlat15 = floor(x_573);
  let x_576 : vec4<f32> = x_38.x_Lut_Params;
  let x_578 : vec2<f32> = (vec2<f32>(x_576.x, x_576.y) * vec2<f32>(0.5f, 0.5f));
  let x_579 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_578.x, x_578.y, x_579.z, x_579.w);
  let x_581 : vec4<f32> = u_xlat0;
  let x_584 : vec4<f32> = x_38.x_Lut_Params;
  let x_587 : vec4<f32> = u_xlat1;
  let x_589 : vec2<f32> = ((vec2<f32>(x_581.x, x_581.y) * vec2<f32>(x_584.x, x_584.y)) + vec2<f32>(x_587.x, x_587.y));
  let x_590 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_590.x, x_589.x, x_589.y, x_590.w);
  let x_592 : f32 = u_xlat15;
  let x_594 : f32 = x_38.x_Lut_Params.y;
  let x_597 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_592 * x_594) + x_597);
  let x_604 : vec4<f32> = u_xlat1;
  let x_606 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_604.x, x_604.z), 0.0f);
  let x_607 : vec3<f32> = vec3<f32>(x_606.x, x_606.y, x_606.z);
  let x_608 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_607.x, x_607.y, x_607.z, x_608.w);
  let x_611 : f32 = x_38.x_Lut_Params.y;
  u_xlat0.x = x_611;
  u_xlat0.y = 0.0f;
  let x_614 : vec4<f32> = u_xlat0;
  let x_616 : vec4<f32> = u_xlat1;
  let x_618 : vec2<f32> = (vec2<f32>(x_614.x, x_614.y) + vec2<f32>(x_616.x, x_616.z));
  let x_619 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_618.x, x_618.y, x_619.z, x_619.w);
  let x_624 : vec4<f32> = u_xlat0;
  let x_626 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_624.x, x_624.y), 0.0f);
  let x_627 : vec3<f32> = vec3<f32>(x_626.x, x_626.y, x_626.z);
  let x_628 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_627.x, x_627.y, x_627.z, x_628.w);
  let x_631 : f32 = u_xlat0.z;
  let x_633 : f32 = x_38.x_Lut_Params.z;
  let x_635 : f32 = u_xlat15;
  u_xlat0.x = ((x_631 * x_633) + -(x_635));
  let x_639 : vec4<f32> = u_xlat2;
  let x_642 : vec4<f32> = u_xlat1;
  u_xlat5 = (-(vec3<f32>(x_639.x, x_639.y, x_639.z)) + vec3<f32>(x_642.x, x_642.y, x_642.z));
  let x_645 : vec4<f32> = u_xlat0;
  let x_647 : vec3<f32> = u_xlat5;
  let x_649 : vec4<f32> = u_xlat2;
  let x_651 : vec3<f32> = ((vec3<f32>(x_645.x, x_645.x, x_645.x) * x_647) + vec3<f32>(x_649.x, x_649.y, x_649.z));
  let x_652 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_651.x, x_651.y, x_651.z, x_652.w);
  let x_654 : vec4<f32> = u_xlat0;
  let x_656 : vec3<f32> = (vec3<f32>(x_654.x, x_654.y, x_654.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
  let x_657 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_656.x, x_656.y, x_656.z, x_657.w);
  let x_659 : vec4<f32> = u_xlat0;
  let x_662 : vec3<f32> = log2(abs(vec3<f32>(x_659.x, x_659.y, x_659.z)));
  let x_663 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_662.x, x_662.y, x_662.z, x_663.w);
  let x_665 : vec4<f32> = u_xlat2;
  let x_667 : vec3<f32> = (vec3<f32>(x_665.x, x_665.y, x_665.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
  let x_668 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_667.x, x_667.y, x_667.z, x_668.w);
  let x_670 : vec4<f32> = u_xlat2;
  let x_672 : vec3<f32> = exp2(vec3<f32>(x_670.x, x_670.y, x_670.z));
  let x_673 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_672.x, x_672.y, x_672.z, x_673.w);
  let x_675 : vec4<f32> = u_xlat2;
  let x_678 : vec3<f32> = ((vec3<f32>(x_675.x, x_675.y, x_675.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
  let x_679 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_678.x, x_678.y, x_678.z, x_679.w);
  let x_681 : vec4<f32> = u_xlat0;
  let x_683 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_681.x, x_681.y, x_681.z, x_681.x));
  u_xlatb0 = vec3<bool>(x_683.x, x_683.y, x_683.z);
  let x_686 : bool = u_xlatb0.x;
  if (x_686) {
    let x_691 : f32 = u_xlat1.x;
    x_687 = x_691;
  } else {
    let x_694 : f32 = u_xlat2.x;
    x_687 = x_694;
  }
  let x_695 : f32 = x_687;
  u_xlat0.x = x_695;
  let x_698 : bool = u_xlatb0.y;
  if (x_698) {
    let x_703 : f32 = u_xlat1.y;
    x_699 = x_703;
  } else {
    let x_706 : f32 = u_xlat2.y;
    x_699 = x_706;
  }
  let x_707 : f32 = x_699;
  u_xlat0.y = x_707;
  let x_710 : bool = u_xlatb0.z;
  if (x_710) {
    let x_715 : f32 = u_xlat1.z;
    x_711 = x_715;
  } else {
    let x_718 : f32 = u_xlat2.z;
    x_711 = x_718;
  }
  let x_719 : f32 = x_711;
  u_xlat0.z = x_719;
  let x_721 : vec2<f32> = vs_TEXCOORD0;
  let x_724 : vec4<f32> = x_38.x_Dithering_Params;
  let x_728 : vec4<f32> = x_38.x_Dithering_Params;
  let x_730 : vec2<f32> = ((x_721 * vec2<f32>(x_724.x, x_724.y)) + vec2<f32>(x_728.z, x_728.w));
  let x_731 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_730.x, x_730.y, x_731.z, x_731.w);
  let x_738 : vec4<f32> = u_xlat1;
  let x_741 : f32 = x_38.x_GlobalMipBias.x;
  let x_742 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_738.x, x_738.y), x_741);
  u_xlat15 = x_742.w;
  let x_744 : f32 = u_xlat15;
  u_xlat15 = ((x_744 * 2.0f) + -1.0f);
  let x_747 : f32 = u_xlat15;
  u_xlatb1.x = (x_747 >= 0.0f);
  let x_751 : bool = u_xlatb1.x;
  u_xlat1.x = select(-1.0f, 1.0f, x_751);
  let x_754 : f32 = u_xlat15;
  u_xlat15 = (-(abs(x_754)) + 1.0f);
  let x_758 : f32 = u_xlat15;
  u_xlat15 = sqrt(x_758);
  let x_760 : f32 = u_xlat15;
  u_xlat15 = (-(x_760) + 1.0f);
  let x_763 : f32 = u_xlat15;
  let x_765 : f32 = u_xlat1.x;
  u_xlat15 = (x_763 * x_765);
  let x_767 : vec4<f32> = u_xlat0;
  let x_769 : vec3<f32> = (vec3<f32>(x_767.x, x_767.y, x_767.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
  let x_770 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_769.x, x_769.y, x_769.z, x_770.w);
  let x_772 : vec4<f32> = u_xlat0;
  let x_775 : vec3<f32> = log2(abs(vec3<f32>(x_772.x, x_772.y, x_772.z)));
  let x_776 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_775.x, x_775.y, x_775.z, x_776.w);
  let x_778 : vec4<f32> = u_xlat2;
  let x_780 : vec3<f32> = (vec3<f32>(x_778.x, x_778.y, x_778.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
  let x_781 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_780.x, x_780.y, x_780.z, x_781.w);
  let x_783 : vec4<f32> = u_xlat2;
  let x_785 : vec3<f32> = exp2(vec3<f32>(x_783.x, x_783.y, x_783.z));
  let x_786 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_785.x, x_785.y, x_785.z, x_786.w);
  let x_788 : vec4<f32> = u_xlat2;
  let x_791 : vec3<f32> = ((vec3<f32>(x_788.x, x_788.y, x_788.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
  let x_792 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_791.x, x_791.y, x_791.z, x_792.w);
  let x_794 : vec4<f32> = u_xlat0;
  let x_796 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_794.x, x_794.y, x_794.z, x_794.x));
  u_xlatb0 = vec3<bool>(x_796.x, x_796.y, x_796.z);
  let x_799 : bool = u_xlatb0.x;
  if (x_799) {
    let x_804 : f32 = u_xlat1.x;
    x_800 = x_804;
  } else {
    let x_807 : f32 = u_xlat2.x;
    x_800 = x_807;
  }
  let x_808 : f32 = x_800;
  u_xlat0.x = x_808;
  let x_811 : bool = u_xlatb0.y;
  if (x_811) {
    let x_816 : f32 = u_xlat1.y;
    x_812 = x_816;
  } else {
    let x_819 : f32 = u_xlat2.y;
    x_812 = x_819;
  }
  let x_820 : f32 = x_812;
  u_xlat0.y = x_820;
  let x_823 : bool = u_xlatb0.z;
  if (x_823) {
    let x_828 : f32 = u_xlat1.z;
    x_824 = x_828;
  } else {
    let x_831 : f32 = u_xlat2.z;
    x_824 = x_831;
  }
  let x_832 : f32 = x_824;
  u_xlat0.z = x_832;
  let x_834 : f32 = u_xlat15;
  let x_839 : vec4<f32> = u_xlat0;
  let x_841 : vec3<f32> = ((vec3<f32>(x_834, x_834, x_834) * vec3<f32>(0.0039215688593685627f, 0.0039215688593685627f, 0.0039215688593685627f)) + vec3<f32>(x_839.x, x_839.y, x_839.z));
  let x_842 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_841.x, x_841.y, x_841.z, x_842.w);
  let x_844 : vec4<f32> = u_xlat0;
  let x_846 : vec3<f32> = (vec3<f32>(x_844.x, x_844.y, x_844.z) * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
  let x_847 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_846.x, x_846.y, x_846.z, x_847.w);
  let x_849 : vec4<f32> = u_xlat0;
  let x_851 : vec3<f32> = (vec3<f32>(x_849.x, x_849.y, x_849.z) + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
  let x_852 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_851.x, x_851.y, x_851.z, x_852.w);
  let x_854 : vec4<f32> = u_xlat2;
  let x_856 : vec3<f32> = (vec3<f32>(x_854.x, x_854.y, x_854.z) * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
  let x_857 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_856.x, x_856.y, x_856.z, x_857.w);
  let x_859 : vec4<f32> = u_xlat2;
  let x_862 : vec3<f32> = log2(abs(vec3<f32>(x_859.x, x_859.y, x_859.z)));
  let x_863 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_862.x, x_862.y, x_862.z, x_863.w);
  let x_865 : vec4<f32> = u_xlat2;
  let x_867 : vec3<f32> = (vec3<f32>(x_865.x, x_865.y, x_865.z) * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
  let x_868 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_867.x, x_867.y, x_867.z, x_868.w);
  let x_870 : vec4<f32> = u_xlat2;
  let x_872 : vec3<f32> = exp2(vec3<f32>(x_870.x, x_870.y, x_870.z));
  let x_873 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_872.x, x_872.y, x_872.z, x_873.w);
  let x_875 : vec4<f32> = u_xlat0;
  let x_877 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_875.x, x_875.y, x_875.z, x_875.x));
  u_xlatb0 = vec3<bool>(x_877.x, x_877.y, x_877.z);
  let x_880 : bool = u_xlatb0.x;
  if (x_880) {
    let x_885 : f32 = u_xlat1.x;
    x_881 = x_885;
  } else {
    let x_888 : f32 = u_xlat2.x;
    x_881 = x_888;
  }
  let x_889 : f32 = x_881;
  u_xlat0.x = x_889;
  let x_892 : bool = u_xlatb0.y;
  if (x_892) {
    let x_897 : f32 = u_xlat1.y;
    x_893 = x_897;
  } else {
    let x_900 : f32 = u_xlat2.y;
    x_893 = x_900;
  }
  let x_901 : f32 = x_893;
  u_xlat0.y = x_901;
  let x_904 : bool = u_xlatb0.z;
  if (x_904) {
    let x_909 : f32 = u_xlat1.z;
    x_905 = x_909;
  } else {
    let x_912 : f32 = u_xlat2.z;
    x_905 = x_912;
  }
  let x_913 : f32 = x_905;
  u_xlat0.z = x_913;
  let x_917 : vec4<f32> = u_xlat0;
  let x_920 : vec3<f32> = max(vec3<f32>(x_917.x, x_917.y, x_917.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_921 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_920.x, x_920.y, x_920.z, x_921.w);
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


