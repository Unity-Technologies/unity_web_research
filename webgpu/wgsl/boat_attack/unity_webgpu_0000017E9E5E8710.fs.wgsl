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

@group(0) @binding(4) var sampler_LinearClamp : sampler;

@group(0) @binding(1) var x_Bloom_Texture : texture_2d<f32>;

var<private> u_xlatb15 : bool;

var<private> u_xlat15 : f32;

var<private> u_xlatb3 : vec3<bool>;

@group(0) @binding(3) var x_UserLut : texture_2d<f32>;

var<private> u_xlat4 : vec2<f32>;

@group(0) @binding(2) var x_InternalLut : texture_2d<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_228 : f32;
  var hlslcc_movcTemp : vec4<f32>;
  var x_567 : f32;
  var x_579 : f32;
  var x_591 : f32;
  var x_742 : f32;
  var x_754 : f32;
  var x_766 : f32;
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
  let x_359 : f32 = x_25.x_Vignette_Params2.z;
  u_xlatb15 = (0.0f < x_359);
  let x_361 : bool = u_xlatb15;
  if (x_361) {
    let x_364 : vec2<f32> = u_xlat6;
    let x_366 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_369 : vec2<f32> = (x_364 + -(vec2<f32>(x_366.x, x_366.y)));
    let x_370 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_369.x, x_369.y, x_370.z, x_370.w);
    let x_372 : vec4<f32> = u_xlat1;
    let x_376 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_378 : vec2<f32> = (abs(vec2<f32>(x_372.x, x_372.y)) * vec2<f32>(x_376.z, x_376.z));
    let x_379 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_379.x, x_378.x, x_378.y, x_379.w);
    let x_382 : f32 = u_xlat1.y;
    let x_385 : f32 = x_25.x_Vignette_Params1.w;
    u_xlat1.x = (x_382 * x_385);
    let x_389 : vec4<f32> = u_xlat1;
    let x_391 : vec4<f32> = u_xlat1;
    u_xlat15 = dot(vec2<f32>(x_389.x, x_389.z), vec2<f32>(x_391.x, x_391.z));
    let x_394 : f32 = u_xlat15;
    u_xlat15 = (-(x_394) + 1.0f);
    let x_397 : f32 = u_xlat15;
    u_xlat15 = max(x_397, 0.0f);
    let x_399 : f32 = u_xlat15;
    u_xlat15 = log2(x_399);
    let x_401 : f32 = u_xlat15;
    let x_403 : f32 = x_25.x_Vignette_Params2.w;
    u_xlat15 = (x_401 * x_403);
    let x_405 : f32 = u_xlat15;
    u_xlat15 = exp2(x_405);
    let x_408 : vec4<f32> = x_25.x_Vignette_Params1;
    let x_412 : vec3<f32> = (-(vec3<f32>(x_408.x, x_408.y, x_408.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_413 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_412.x, x_412.y, x_412.z, x_413.w);
    let x_415 : f32 = u_xlat15;
    let x_417 : vec4<f32> = u_xlat1;
    let x_421 : vec4<f32> = x_25.x_Vignette_Params1;
    let x_423 : vec3<f32> = ((vec3<f32>(x_415, x_415, x_415) * vec3<f32>(x_417.x, x_417.y, x_417.z)) + vec3<f32>(x_421.x, x_421.y, x_421.z));
    let x_424 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_423.x, x_423.y, x_423.z, x_424.w);
    let x_426 : vec4<f32> = u_xlat0;
    let x_428 : vec4<f32> = u_xlat1;
    let x_430 : vec3<f32> = (vec3<f32>(x_426.x, x_426.y, x_426.z) * vec3<f32>(x_428.x, x_428.y, x_428.z));
    let x_431 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_430.x, x_430.y, x_430.z, x_431.w);
  }
  let x_433 : vec4<f32> = u_xlat0;
  let x_437 : vec4<f32> = x_25.x_Lut_Params;
  let x_439 : vec3<f32> = (vec3<f32>(x_433.x, x_433.y, x_433.z) * vec3<f32>(x_437.w, x_437.w, x_437.w));
  let x_440 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_439.x, x_439.y, x_439.z, x_440.w);
  let x_442 : vec4<f32> = u_xlat0;
  let x_446 : vec3<f32> = (vec3<f32>(x_442.x, x_442.y, x_442.z) * vec3<f32>(1.31338608264923095703f, 1.31338608264923095703f, 1.31338608264923095703f));
  let x_447 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_446.x, x_446.y, x_446.z, x_447.w);
  let x_449 : vec4<f32> = u_xlat0;
  let x_456 : vec3<f32> = ((vec3<f32>(x_449.x, x_449.y, x_449.z) * vec3<f32>(0.26267722249031066895f, 0.26267722249031066895f, 0.26267722249031066895f)) + vec3<f32>(0.06959999352693557739f, 0.06959999352693557739f, 0.06959999352693557739f));
  let x_457 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_456.x, x_456.y, x_456.z, x_457.w);
  let x_459 : vec4<f32> = u_xlat1;
  let x_461 : vec4<f32> = u_xlat2;
  let x_466 : vec3<f32> = ((vec3<f32>(x_459.x, x_459.y, x_459.z) * vec3<f32>(x_461.x, x_461.y, x_461.z)) + vec3<f32>(0.00543999997898936272f, 0.00543999997898936272f, 0.00543999997898936272f));
  let x_467 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_466.x, x_466.y, x_466.z, x_467.w);
  let x_469 : vec4<f32> = u_xlat0;
  let x_474 : vec3<f32> = ((vec3<f32>(x_469.x, x_469.y, x_469.z) * vec3<f32>(0.26267722249031066895f, 0.26267722249031066895f, 0.26267722249031066895f)) + vec3<f32>(0.28999999165534973145f, 0.28999999165534973145f, 0.28999999165534973145f));
  let x_475 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_474.x, x_474.y, x_474.z, x_475.w);
  let x_477 : vec4<f32> = u_xlat1;
  let x_479 : vec4<f32> = u_xlat0;
  let x_484 : vec3<f32> = ((vec3<f32>(x_477.x, x_477.y, x_477.z) * vec3<f32>(x_479.x, x_479.y, x_479.z)) + vec3<f32>(0.08160001039505004883f, 0.08160001039505004883f, 0.08160001039505004883f));
  let x_485 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_484.x, x_484.y, x_484.z, x_485.w);
  let x_487 : vec4<f32> = u_xlat2;
  let x_489 : vec4<f32> = u_xlat0;
  let x_491 : vec3<f32> = (vec3<f32>(x_487.x, x_487.y, x_487.z) / vec3<f32>(x_489.x, x_489.y, x_489.z));
  let x_492 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_491.x, x_491.y, x_491.z, x_492.w);
  let x_494 : vec4<f32> = u_xlat0;
  let x_498 : vec3<f32> = (vec3<f32>(x_494.x, x_494.y, x_494.z) + vec3<f32>(-0.06666666269302368164f, -0.06666666269302368164f, -0.06666666269302368164f));
  let x_499 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_498.x, x_498.y, x_498.z, x_499.w);
  let x_501 : vec4<f32> = u_xlat0;
  let x_503 : vec3<f32> = (vec3<f32>(x_501.x, x_501.y, x_501.z) * vec3<f32>(1.31338608264923095703f, 1.31338608264923095703f, 1.31338608264923095703f));
  let x_504 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_503.x, x_503.y, x_503.z, x_504.w);
  let x_506 : vec4<f32> = u_xlat0;
  let x_510 : vec3<f32> = clamp(vec3<f32>(x_506.x, x_506.y, x_506.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_511 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_510.x, x_510.y, x_510.z, x_511.w);
  let x_515 : f32 = x_25.x_UserLut_Params.w;
  u_xlatb15 = (0.0f < x_515);
  let x_517 : bool = u_xlatb15;
  if (x_517) {
    let x_520 : vec4<f32> = u_xlat0;
    let x_524 : vec3<f32> = (vec3<f32>(x_520.x, x_520.y, x_520.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
    let x_525 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_524.x, x_524.y, x_524.z, x_525.w);
    let x_527 : vec4<f32> = u_xlat0;
    let x_529 : vec3<f32> = log2(vec3<f32>(x_527.x, x_527.y, x_527.z));
    let x_530 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_529.x, x_529.y, x_529.z, x_530.w);
    let x_532 : vec4<f32> = u_xlat2;
    let x_536 : vec3<f32> = (vec3<f32>(x_532.x, x_532.y, x_532.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
    let x_537 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_536.x, x_536.y, x_536.z, x_537.w);
    let x_539 : vec4<f32> = u_xlat2;
    let x_541 : vec3<f32> = exp2(vec3<f32>(x_539.x, x_539.y, x_539.z));
    let x_542 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_541.x, x_541.y, x_541.z, x_542.w);
    let x_544 : vec4<f32> = u_xlat2;
    let x_551 : vec3<f32> = ((vec3<f32>(x_544.x, x_544.y, x_544.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
    let x_552 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_551.x, x_551.y, x_551.z, x_552.w);
    let x_557 : vec4<f32> = u_xlat0;
    let x_560 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_557.x, x_557.y, x_557.z, x_557.x));
    u_xlatb3 = vec3<bool>(x_560.x, x_560.y, x_560.z);
    let x_564 : vec4<f32> = u_xlat1;
    hlslcc_movcTemp = x_564;
    let x_566 : bool = u_xlatb3.x;
    if (x_566) {
      let x_571 : f32 = u_xlat1.x;
      x_567 = x_571;
    } else {
      let x_574 : f32 = u_xlat2.x;
      x_567 = x_574;
    }
    let x_575 : f32 = x_567;
    hlslcc_movcTemp.x = x_575;
    let x_578 : bool = u_xlatb3.y;
    if (x_578) {
      let x_583 : f32 = u_xlat1.y;
      x_579 = x_583;
    } else {
      let x_586 : f32 = u_xlat2.y;
      x_579 = x_586;
    }
    let x_587 : f32 = x_579;
    hlslcc_movcTemp.y = x_587;
    let x_590 : bool = u_xlatb3.z;
    if (x_590) {
      let x_595 : f32 = u_xlat1.z;
      x_591 = x_595;
    } else {
      let x_598 : f32 = u_xlat2.z;
      x_591 = x_598;
    }
    let x_599 : f32 = x_591;
    hlslcc_movcTemp.z = x_599;
    let x_601 : vec4<f32> = hlslcc_movcTemp;
    u_xlat1 = x_601;
    let x_602 : vec4<f32> = u_xlat1;
    let x_605 : vec4<f32> = x_25.x_UserLut_Params;
    let x_607 : vec3<f32> = (vec3<f32>(x_602.z, x_602.x, x_602.y) * vec3<f32>(x_605.z, x_605.z, x_605.z));
    let x_608 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_607.x, x_607.y, x_607.z, x_608.w);
    let x_611 : f32 = u_xlat2.x;
    u_xlat15 = floor(x_611);
    let x_614 : vec4<f32> = x_25.x_UserLut_Params;
    let x_616 : vec2<f32> = (vec2<f32>(x_614.x, x_614.y) * vec2<f32>(0.5f, 0.5f));
    let x_617 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_616.x, x_617.y, x_617.z, x_616.y);
    let x_619 : vec4<f32> = u_xlat2;
    let x_622 : vec4<f32> = x_25.x_UserLut_Params;
    let x_625 : vec4<f32> = u_xlat2;
    let x_627 : vec2<f32> = ((vec2<f32>(x_619.y, x_619.z) * vec2<f32>(x_622.x, x_622.y)) + vec2<f32>(x_625.x, x_625.w));
    let x_628 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_628.x, x_627.x, x_627.y, x_628.w);
    let x_630 : f32 = u_xlat15;
    let x_632 : f32 = x_25.x_UserLut_Params.y;
    let x_635 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_630 * x_632) + x_635);
    let x_642 : vec4<f32> = u_xlat2;
    let x_644 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_642.x, x_642.z), 0.0f);
    u_xlat3 = vec3<f32>(x_644.x, x_644.y, x_644.z);
    let x_648 : f32 = x_25.x_UserLut_Params.y;
    u_xlat4.x = x_648;
    u_xlat4.y = 0.0f;
    let x_651 : vec4<f32> = u_xlat2;
    let x_653 : vec2<f32> = u_xlat4;
    let x_654 : vec2<f32> = (vec2<f32>(x_651.x, x_651.z) + x_653);
    let x_655 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_654.x, x_654.y, x_655.z, x_655.w);
    let x_660 : vec4<f32> = u_xlat2;
    let x_662 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_660.x, x_660.y), 0.0f);
    let x_663 : vec3<f32> = vec3<f32>(x_662.x, x_662.y, x_662.z);
    let x_664 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_663.x, x_663.y, x_663.z, x_664.w);
    let x_667 : f32 = u_xlat1.z;
    let x_669 : f32 = x_25.x_UserLut_Params.z;
    let x_671 : f32 = u_xlat15;
    u_xlat15 = ((x_667 * x_669) + -(x_671));
    let x_674 : vec3<f32> = u_xlat3;
    let x_676 : vec4<f32> = u_xlat2;
    let x_678 : vec3<f32> = (-(x_674) + vec3<f32>(x_676.x, x_676.y, x_676.z));
    let x_679 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_678.x, x_678.y, x_678.z, x_679.w);
    let x_681 : f32 = u_xlat15;
    let x_683 : vec4<f32> = u_xlat2;
    let x_686 : vec3<f32> = u_xlat3;
    let x_687 : vec3<f32> = ((vec3<f32>(x_681, x_681, x_681) * vec3<f32>(x_683.x, x_683.y, x_683.z)) + x_686);
    let x_688 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_687.x, x_687.y, x_687.z, x_688.w);
    let x_690 : vec4<f32> = u_xlat1;
    let x_693 : vec4<f32> = u_xlat2;
    let x_695 : vec3<f32> = (-(vec3<f32>(x_690.x, x_690.y, x_690.z)) + vec3<f32>(x_693.x, x_693.y, x_693.z));
    let x_696 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_695.x, x_695.y, x_695.z, x_696.w);
    let x_699 : vec4<f32> = x_25.x_UserLut_Params;
    let x_701 : vec4<f32> = u_xlat2;
    let x_704 : vec4<f32> = u_xlat1;
    let x_706 : vec3<f32> = ((vec3<f32>(x_699.w, x_699.w, x_699.w) * vec3<f32>(x_701.x, x_701.y, x_701.z)) + vec3<f32>(x_704.x, x_704.y, x_704.z));
    let x_707 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_706.x, x_706.y, x_706.z, x_707.w);
    let x_709 : vec4<f32> = u_xlat1;
    let x_713 : vec3<f32> = (vec3<f32>(x_709.x, x_709.y, x_709.z) * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
    let x_714 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_713.x, x_713.y, x_713.z, x_714.w);
    let x_716 : vec4<f32> = u_xlat1;
    u_xlat3 = (vec3<f32>(x_716.x, x_716.y, x_716.z) + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
    let x_721 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_721 * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
    let x_725 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_725));
    let x_728 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_728 * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
    let x_732 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_732);
    let x_736 : vec4<f32> = u_xlat1;
    let x_738 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_736.x, x_736.y, x_736.z, x_736.x));
    u_xlatb1 = vec3<bool>(x_738.x, x_738.y, x_738.z);
    let x_741 : bool = u_xlatb1.x;
    if (x_741) {
      let x_746 : f32 = u_xlat2.x;
      x_742 = x_746;
    } else {
      let x_749 : f32 = u_xlat3.x;
      x_742 = x_749;
    }
    let x_750 : f32 = x_742;
    u_xlat0.x = x_750;
    let x_753 : bool = u_xlatb1.y;
    if (x_753) {
      let x_758 : f32 = u_xlat2.y;
      x_754 = x_758;
    } else {
      let x_761 : f32 = u_xlat3.y;
      x_754 = x_761;
    }
    let x_762 : f32 = x_754;
    u_xlat0.y = x_762;
    let x_765 : bool = u_xlatb1.z;
    if (x_765) {
      let x_770 : f32 = u_xlat2.z;
      x_766 = x_770;
    } else {
      let x_773 : f32 = u_xlat3.z;
      x_766 = x_773;
    }
    let x_774 : f32 = x_766;
    u_xlat0.z = x_774;
  }
  let x_776 : vec4<f32> = u_xlat0;
  let x_779 : vec4<f32> = x_25.x_Lut_Params;
  let x_781 : vec3<f32> = (vec3<f32>(x_776.x, x_776.y, x_776.z) * vec3<f32>(x_779.z, x_779.z, x_779.z));
  let x_782 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_781.x, x_781.y, x_782.z, x_781.z);
  let x_785 : f32 = u_xlat0.w;
  u_xlat15 = floor(x_785);
  let x_788 : vec4<f32> = x_25.x_Lut_Params;
  let x_790 : vec2<f32> = (vec2<f32>(x_788.x, x_788.y) * vec2<f32>(0.5f, 0.5f));
  let x_791 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_790.x, x_790.y, x_791.z, x_791.w);
  let x_793 : vec4<f32> = u_xlat0;
  let x_796 : vec4<f32> = x_25.x_Lut_Params;
  let x_799 : vec4<f32> = u_xlat1;
  let x_801 : vec2<f32> = ((vec2<f32>(x_793.x, x_793.y) * vec2<f32>(x_796.x, x_796.y)) + vec2<f32>(x_799.x, x_799.y));
  let x_802 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_802.x, x_801.x, x_801.y, x_802.w);
  let x_804 : f32 = u_xlat15;
  let x_806 : f32 = x_25.x_Lut_Params.y;
  let x_809 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_804 * x_806) + x_809);
  let x_816 : vec4<f32> = u_xlat1;
  let x_818 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_816.x, x_816.z), 0.0f);
  let x_819 : vec3<f32> = vec3<f32>(x_818.x, x_818.y, x_818.z);
  let x_820 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_819.x, x_819.y, x_819.z, x_820.w);
  let x_823 : f32 = x_25.x_Lut_Params.y;
  u_xlat0.x = x_823;
  u_xlat0.y = 0.0f;
  let x_826 : vec4<f32> = u_xlat0;
  let x_828 : vec4<f32> = u_xlat1;
  let x_830 : vec2<f32> = (vec2<f32>(x_826.x, x_826.y) + vec2<f32>(x_828.x, x_828.z));
  let x_831 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_830.x, x_830.y, x_831.z, x_831.w);
  let x_836 : vec4<f32> = u_xlat0;
  let x_838 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_836.x, x_836.y), 0.0f);
  let x_839 : vec3<f32> = vec3<f32>(x_838.x, x_838.y, x_838.z);
  let x_840 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_839.x, x_839.y, x_839.z, x_840.w);
  let x_843 : f32 = u_xlat0.z;
  let x_845 : f32 = x_25.x_Lut_Params.z;
  let x_847 : f32 = u_xlat15;
  u_xlat0.x = ((x_843 * x_845) + -(x_847));
  let x_852 : vec4<f32> = u_xlat2;
  let x_855 : vec4<f32> = u_xlat1;
  u_xlat5 = (-(vec3<f32>(x_852.x, x_852.y, x_852.z)) + vec3<f32>(x_855.x, x_855.y, x_855.z));
  let x_860 : vec4<f32> = u_xlat0;
  let x_862 : vec3<f32> = u_xlat5;
  let x_864 : vec4<f32> = u_xlat2;
  let x_866 : vec3<f32> = ((vec3<f32>(x_860.x, x_860.x, x_860.x) * x_862) + vec3<f32>(x_864.x, x_864.y, x_864.z));
  let x_867 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_866.x, x_866.y, x_866.z, x_867.w);
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


