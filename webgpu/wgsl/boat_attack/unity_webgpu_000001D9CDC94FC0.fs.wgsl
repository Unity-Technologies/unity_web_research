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

@group(0) @binding(5) var sampler_LinearClamp : sampler;

@group(0) @binding(1) var x_Bloom_Texture : texture_2d<f32>;

var<private> u_xlatb15 : bool;

var<private> u_xlat15 : f32;

var<private> u_xlatb3 : vec3<bool>;

@group(0) @binding(4) var x_UserLut : texture_2d<f32>;

var<private> u_xlat4 : vec2<f32>;

@group(0) @binding(3) var x_InternalLut : texture_2d<f32>;

var<private> u_xlat5 : vec3<f32>;

@group(0) @binding(2) var x_Grain_Texture : texture_2d<f32>;

@group(0) @binding(6) var sampler_LinearRepeat : sampler;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_232 : f32;
  var hlslcc_movcTemp : vec4<f32>;
  var x_576 : f32;
  var x_588 : f32;
  var x_600 : f32;
  var x_751 : f32;
  var x_763 : f32;
  var x_775 : f32;
  var x_981 : f32;
  var x_994 : f32;
  var x_1006 : f32;
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
  let x_367 : f32 = x_25.x_Vignette_Params2.z;
  u_xlatb15 = (0.0f < x_367);
  let x_369 : bool = u_xlatb15;
  if (x_369) {
    let x_372 : vec3<f32> = u_xlat6;
    let x_375 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_378 : vec2<f32> = (vec2<f32>(x_372.x, x_372.y) + -(vec2<f32>(x_375.x, x_375.y)));
    let x_379 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_378.x, x_378.y, x_379.z, x_379.w);
    let x_381 : vec4<f32> = u_xlat1;
    let x_385 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_387 : vec2<f32> = (abs(vec2<f32>(x_381.x, x_381.y)) * vec2<f32>(x_385.z, x_385.z));
    let x_388 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_388.x, x_387.x, x_387.y, x_388.w);
    let x_391 : f32 = u_xlat1.y;
    let x_394 : f32 = x_25.x_Vignette_Params1.w;
    u_xlat1.x = (x_391 * x_394);
    let x_398 : vec4<f32> = u_xlat1;
    let x_400 : vec4<f32> = u_xlat1;
    u_xlat15 = dot(vec2<f32>(x_398.x, x_398.z), vec2<f32>(x_400.x, x_400.z));
    let x_403 : f32 = u_xlat15;
    u_xlat15 = (-(x_403) + 1.0f);
    let x_406 : f32 = u_xlat15;
    u_xlat15 = max(x_406, 0.0f);
    let x_408 : f32 = u_xlat15;
    u_xlat15 = log2(x_408);
    let x_410 : f32 = u_xlat15;
    let x_412 : f32 = x_25.x_Vignette_Params2.w;
    u_xlat15 = (x_410 * x_412);
    let x_414 : f32 = u_xlat15;
    u_xlat15 = exp2(x_414);
    let x_417 : vec4<f32> = x_25.x_Vignette_Params1;
    let x_421 : vec3<f32> = (-(vec3<f32>(x_417.x, x_417.y, x_417.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_422 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_421.x, x_421.y, x_421.z, x_422.w);
    let x_424 : f32 = u_xlat15;
    let x_426 : vec4<f32> = u_xlat1;
    let x_430 : vec4<f32> = x_25.x_Vignette_Params1;
    let x_432 : vec3<f32> = ((vec3<f32>(x_424, x_424, x_424) * vec3<f32>(x_426.x, x_426.y, x_426.z)) + vec3<f32>(x_430.x, x_430.y, x_430.z));
    let x_433 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_432.x, x_432.y, x_432.z, x_433.w);
    let x_435 : vec4<f32> = u_xlat0;
    let x_437 : vec4<f32> = u_xlat1;
    let x_439 : vec3<f32> = (vec3<f32>(x_435.x, x_435.y, x_435.z) * vec3<f32>(x_437.x, x_437.y, x_437.z));
    let x_440 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_439.x, x_439.y, x_439.z, x_440.w);
  }
  let x_442 : vec4<f32> = u_xlat0;
  let x_446 : vec4<f32> = x_25.x_Lut_Params;
  let x_448 : vec3<f32> = (vec3<f32>(x_442.x, x_442.y, x_442.z) * vec3<f32>(x_446.w, x_446.w, x_446.w));
  let x_449 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_448.x, x_448.y, x_448.z, x_449.w);
  let x_451 : vec4<f32> = u_xlat0;
  let x_455 : vec3<f32> = (vec3<f32>(x_451.x, x_451.y, x_451.z) * vec3<f32>(1.31338608264923095703f, 1.31338608264923095703f, 1.31338608264923095703f));
  let x_456 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_455.x, x_455.y, x_455.z, x_456.w);
  let x_458 : vec4<f32> = u_xlat0;
  let x_465 : vec3<f32> = ((vec3<f32>(x_458.x, x_458.y, x_458.z) * vec3<f32>(0.26267722249031066895f, 0.26267722249031066895f, 0.26267722249031066895f)) + vec3<f32>(0.06959999352693557739f, 0.06959999352693557739f, 0.06959999352693557739f));
  let x_466 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_465.x, x_465.y, x_465.z, x_466.w);
  let x_468 : vec4<f32> = u_xlat1;
  let x_470 : vec4<f32> = u_xlat2;
  let x_475 : vec3<f32> = ((vec3<f32>(x_468.x, x_468.y, x_468.z) * vec3<f32>(x_470.x, x_470.y, x_470.z)) + vec3<f32>(0.00543999997898936272f, 0.00543999997898936272f, 0.00543999997898936272f));
  let x_476 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_475.x, x_475.y, x_475.z, x_476.w);
  let x_478 : vec4<f32> = u_xlat0;
  let x_483 : vec3<f32> = ((vec3<f32>(x_478.x, x_478.y, x_478.z) * vec3<f32>(0.26267722249031066895f, 0.26267722249031066895f, 0.26267722249031066895f)) + vec3<f32>(0.28999999165534973145f, 0.28999999165534973145f, 0.28999999165534973145f));
  let x_484 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_483.x, x_483.y, x_483.z, x_484.w);
  let x_486 : vec4<f32> = u_xlat1;
  let x_488 : vec4<f32> = u_xlat0;
  let x_493 : vec3<f32> = ((vec3<f32>(x_486.x, x_486.y, x_486.z) * vec3<f32>(x_488.x, x_488.y, x_488.z)) + vec3<f32>(0.08160001039505004883f, 0.08160001039505004883f, 0.08160001039505004883f));
  let x_494 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_493.x, x_493.y, x_493.z, x_494.w);
  let x_496 : vec4<f32> = u_xlat2;
  let x_498 : vec4<f32> = u_xlat0;
  let x_500 : vec3<f32> = (vec3<f32>(x_496.x, x_496.y, x_496.z) / vec3<f32>(x_498.x, x_498.y, x_498.z));
  let x_501 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_500.x, x_500.y, x_500.z, x_501.w);
  let x_503 : vec4<f32> = u_xlat0;
  let x_507 : vec3<f32> = (vec3<f32>(x_503.x, x_503.y, x_503.z) + vec3<f32>(-0.06666666269302368164f, -0.06666666269302368164f, -0.06666666269302368164f));
  let x_508 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_507.x, x_507.y, x_507.z, x_508.w);
  let x_510 : vec4<f32> = u_xlat0;
  let x_512 : vec3<f32> = (vec3<f32>(x_510.x, x_510.y, x_510.z) * vec3<f32>(1.31338608264923095703f, 1.31338608264923095703f, 1.31338608264923095703f));
  let x_513 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_512.x, x_512.y, x_512.z, x_513.w);
  let x_515 : vec4<f32> = u_xlat0;
  let x_519 : vec3<f32> = clamp(vec3<f32>(x_515.x, x_515.y, x_515.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_520 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_519.x, x_519.y, x_519.z, x_520.w);
  let x_524 : f32 = x_25.x_UserLut_Params.w;
  u_xlatb15 = (0.0f < x_524);
  let x_526 : bool = u_xlatb15;
  if (x_526) {
    let x_529 : vec4<f32> = u_xlat0;
    let x_533 : vec3<f32> = (vec3<f32>(x_529.x, x_529.y, x_529.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
    let x_534 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_533.x, x_533.y, x_533.z, x_534.w);
    let x_536 : vec4<f32> = u_xlat0;
    let x_538 : vec3<f32> = log2(vec3<f32>(x_536.x, x_536.y, x_536.z));
    let x_539 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_538.x, x_538.y, x_538.z, x_539.w);
    let x_541 : vec4<f32> = u_xlat2;
    let x_545 : vec3<f32> = (vec3<f32>(x_541.x, x_541.y, x_541.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
    let x_546 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_545.x, x_545.y, x_545.z, x_546.w);
    let x_548 : vec4<f32> = u_xlat2;
    let x_550 : vec3<f32> = exp2(vec3<f32>(x_548.x, x_548.y, x_548.z));
    let x_551 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_550.x, x_550.y, x_550.z, x_551.w);
    let x_553 : vec4<f32> = u_xlat2;
    let x_560 : vec3<f32> = ((vec3<f32>(x_553.x, x_553.y, x_553.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
    let x_561 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_560.x, x_560.y, x_560.z, x_561.w);
    let x_566 : vec4<f32> = u_xlat0;
    let x_569 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_566.x, x_566.y, x_566.z, x_566.x));
    u_xlatb3 = vec3<bool>(x_569.x, x_569.y, x_569.z);
    let x_573 : vec4<f32> = u_xlat1;
    hlslcc_movcTemp = x_573;
    let x_575 : bool = u_xlatb3.x;
    if (x_575) {
      let x_580 : f32 = u_xlat1.x;
      x_576 = x_580;
    } else {
      let x_583 : f32 = u_xlat2.x;
      x_576 = x_583;
    }
    let x_584 : f32 = x_576;
    hlslcc_movcTemp.x = x_584;
    let x_587 : bool = u_xlatb3.y;
    if (x_587) {
      let x_592 : f32 = u_xlat1.y;
      x_588 = x_592;
    } else {
      let x_595 : f32 = u_xlat2.y;
      x_588 = x_595;
    }
    let x_596 : f32 = x_588;
    hlslcc_movcTemp.y = x_596;
    let x_599 : bool = u_xlatb3.z;
    if (x_599) {
      let x_604 : f32 = u_xlat1.z;
      x_600 = x_604;
    } else {
      let x_607 : f32 = u_xlat2.z;
      x_600 = x_607;
    }
    let x_608 : f32 = x_600;
    hlslcc_movcTemp.z = x_608;
    let x_610 : vec4<f32> = hlslcc_movcTemp;
    u_xlat1 = x_610;
    let x_611 : vec4<f32> = u_xlat1;
    let x_614 : vec4<f32> = x_25.x_UserLut_Params;
    let x_616 : vec3<f32> = (vec3<f32>(x_611.z, x_611.x, x_611.y) * vec3<f32>(x_614.z, x_614.z, x_614.z));
    let x_617 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_616.x, x_616.y, x_616.z, x_617.w);
    let x_620 : f32 = u_xlat2.x;
    u_xlat15 = floor(x_620);
    let x_623 : vec4<f32> = x_25.x_UserLut_Params;
    let x_625 : vec2<f32> = (vec2<f32>(x_623.x, x_623.y) * vec2<f32>(0.5f, 0.5f));
    let x_626 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_625.x, x_626.y, x_626.z, x_625.y);
    let x_628 : vec4<f32> = u_xlat2;
    let x_631 : vec4<f32> = x_25.x_UserLut_Params;
    let x_634 : vec4<f32> = u_xlat2;
    let x_636 : vec2<f32> = ((vec2<f32>(x_628.y, x_628.z) * vec2<f32>(x_631.x, x_631.y)) + vec2<f32>(x_634.x, x_634.w));
    let x_637 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_637.x, x_636.x, x_636.y, x_637.w);
    let x_639 : f32 = u_xlat15;
    let x_641 : f32 = x_25.x_UserLut_Params.y;
    let x_644 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_639 * x_641) + x_644);
    let x_651 : vec4<f32> = u_xlat2;
    let x_653 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_651.x, x_651.z), 0.0f);
    u_xlat3 = vec3<f32>(x_653.x, x_653.y, x_653.z);
    let x_657 : f32 = x_25.x_UserLut_Params.y;
    u_xlat4.x = x_657;
    u_xlat4.y = 0.0f;
    let x_660 : vec4<f32> = u_xlat2;
    let x_662 : vec2<f32> = u_xlat4;
    let x_663 : vec2<f32> = (vec2<f32>(x_660.x, x_660.z) + x_662);
    let x_664 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_663.x, x_663.y, x_664.z, x_664.w);
    let x_669 : vec4<f32> = u_xlat2;
    let x_671 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_669.x, x_669.y), 0.0f);
    let x_672 : vec3<f32> = vec3<f32>(x_671.x, x_671.y, x_671.z);
    let x_673 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_672.x, x_672.y, x_672.z, x_673.w);
    let x_676 : f32 = u_xlat1.z;
    let x_678 : f32 = x_25.x_UserLut_Params.z;
    let x_680 : f32 = u_xlat15;
    u_xlat15 = ((x_676 * x_678) + -(x_680));
    let x_683 : vec3<f32> = u_xlat3;
    let x_685 : vec4<f32> = u_xlat2;
    let x_687 : vec3<f32> = (-(x_683) + vec3<f32>(x_685.x, x_685.y, x_685.z));
    let x_688 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_687.x, x_687.y, x_687.z, x_688.w);
    let x_690 : f32 = u_xlat15;
    let x_692 : vec4<f32> = u_xlat2;
    let x_695 : vec3<f32> = u_xlat3;
    let x_696 : vec3<f32> = ((vec3<f32>(x_690, x_690, x_690) * vec3<f32>(x_692.x, x_692.y, x_692.z)) + x_695);
    let x_697 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_696.x, x_696.y, x_696.z, x_697.w);
    let x_699 : vec4<f32> = u_xlat1;
    let x_702 : vec4<f32> = u_xlat2;
    let x_704 : vec3<f32> = (-(vec3<f32>(x_699.x, x_699.y, x_699.z)) + vec3<f32>(x_702.x, x_702.y, x_702.z));
    let x_705 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_704.x, x_704.y, x_704.z, x_705.w);
    let x_708 : vec4<f32> = x_25.x_UserLut_Params;
    let x_710 : vec4<f32> = u_xlat2;
    let x_713 : vec4<f32> = u_xlat1;
    let x_715 : vec3<f32> = ((vec3<f32>(x_708.w, x_708.w, x_708.w) * vec3<f32>(x_710.x, x_710.y, x_710.z)) + vec3<f32>(x_713.x, x_713.y, x_713.z));
    let x_716 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_715.x, x_715.y, x_715.z, x_716.w);
    let x_718 : vec4<f32> = u_xlat1;
    let x_722 : vec3<f32> = (vec3<f32>(x_718.x, x_718.y, x_718.z) * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
    let x_723 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_722.x, x_722.y, x_722.z, x_723.w);
    let x_725 : vec4<f32> = u_xlat1;
    u_xlat3 = (vec3<f32>(x_725.x, x_725.y, x_725.z) + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
    let x_730 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_730 * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
    let x_734 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_734));
    let x_737 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_737 * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
    let x_741 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_741);
    let x_745 : vec4<f32> = u_xlat1;
    let x_747 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_745.x, x_745.y, x_745.z, x_745.x));
    u_xlatb1 = vec3<bool>(x_747.x, x_747.y, x_747.z);
    let x_750 : bool = u_xlatb1.x;
    if (x_750) {
      let x_755 : f32 = u_xlat2.x;
      x_751 = x_755;
    } else {
      let x_758 : f32 = u_xlat3.x;
      x_751 = x_758;
    }
    let x_759 : f32 = x_751;
    u_xlat0.x = x_759;
    let x_762 : bool = u_xlatb1.y;
    if (x_762) {
      let x_767 : f32 = u_xlat2.y;
      x_763 = x_767;
    } else {
      let x_770 : f32 = u_xlat3.y;
      x_763 = x_770;
    }
    let x_771 : f32 = x_763;
    u_xlat0.y = x_771;
    let x_774 : bool = u_xlatb1.z;
    if (x_774) {
      let x_779 : f32 = u_xlat2.z;
      x_775 = x_779;
    } else {
      let x_782 : f32 = u_xlat3.z;
      x_775 = x_782;
    }
    let x_783 : f32 = x_775;
    u_xlat0.z = x_783;
  }
  let x_785 : vec4<f32> = u_xlat0;
  let x_788 : vec4<f32> = x_25.x_Lut_Params;
  let x_790 : vec3<f32> = (vec3<f32>(x_785.x, x_785.y, x_785.z) * vec3<f32>(x_788.z, x_788.z, x_788.z));
  let x_791 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_790.x, x_790.y, x_791.z, x_790.z);
  let x_794 : f32 = u_xlat0.w;
  u_xlat15 = floor(x_794);
  let x_797 : vec4<f32> = x_25.x_Lut_Params;
  let x_799 : vec2<f32> = (vec2<f32>(x_797.x, x_797.y) * vec2<f32>(0.5f, 0.5f));
  let x_800 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_799.x, x_799.y, x_800.z, x_800.w);
  let x_802 : vec4<f32> = u_xlat0;
  let x_805 : vec4<f32> = x_25.x_Lut_Params;
  let x_808 : vec4<f32> = u_xlat1;
  let x_810 : vec2<f32> = ((vec2<f32>(x_802.x, x_802.y) * vec2<f32>(x_805.x, x_805.y)) + vec2<f32>(x_808.x, x_808.y));
  let x_811 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_811.x, x_810.x, x_810.y, x_811.w);
  let x_813 : f32 = u_xlat15;
  let x_815 : f32 = x_25.x_Lut_Params.y;
  let x_818 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_813 * x_815) + x_818);
  let x_825 : vec4<f32> = u_xlat1;
  let x_827 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_825.x, x_825.z), 0.0f);
  let x_828 : vec3<f32> = vec3<f32>(x_827.x, x_827.y, x_827.z);
  let x_829 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_828.x, x_828.y, x_828.z, x_829.w);
  let x_832 : f32 = x_25.x_Lut_Params.y;
  u_xlat0.x = x_832;
  u_xlat0.y = 0.0f;
  let x_835 : vec4<f32> = u_xlat0;
  let x_837 : vec4<f32> = u_xlat1;
  let x_839 : vec2<f32> = (vec2<f32>(x_835.x, x_835.y) + vec2<f32>(x_837.x, x_837.z));
  let x_840 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_839.x, x_839.y, x_840.z, x_840.w);
  let x_845 : vec4<f32> = u_xlat0;
  let x_847 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_845.x, x_845.y), 0.0f);
  let x_848 : vec3<f32> = vec3<f32>(x_847.x, x_847.y, x_847.z);
  let x_849 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_848.x, x_848.y, x_848.z, x_849.w);
  let x_852 : f32 = u_xlat0.z;
  let x_854 : f32 = x_25.x_Lut_Params.z;
  let x_856 : f32 = u_xlat15;
  u_xlat0.x = ((x_852 * x_854) + -(x_856));
  let x_861 : vec4<f32> = u_xlat2;
  let x_864 : vec4<f32> = u_xlat1;
  u_xlat5 = (-(vec3<f32>(x_861.x, x_861.y, x_861.z)) + vec3<f32>(x_864.x, x_864.y, x_864.z));
  let x_867 : vec4<f32> = u_xlat0;
  let x_869 : vec3<f32> = u_xlat5;
  let x_871 : vec4<f32> = u_xlat2;
  let x_873 : vec3<f32> = ((vec3<f32>(x_867.x, x_867.x, x_867.x) * x_869) + vec3<f32>(x_871.x, x_871.y, x_871.z));
  let x_874 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_873.x, x_873.y, x_873.z, x_874.w);
  let x_876 : vec2<f32> = vs_TEXCOORD0;
  let x_879 : vec4<f32> = x_25.x_Grain_TilingParams;
  let x_883 : vec4<f32> = x_25.x_Grain_TilingParams;
  let x_885 : vec2<f32> = ((x_876 * vec2<f32>(x_879.x, x_879.y)) + vec2<f32>(x_883.z, x_883.w));
  let x_886 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_885.x, x_885.y, x_886.z, x_886.w);
  let x_893 : vec4<f32> = u_xlat1;
  let x_896 : f32 = x_25.x_GlobalMipBias.x;
  let x_897 : vec4<f32> = textureSampleBias(x_Grain_Texture, sampler_LinearRepeat, vec2<f32>(x_893.x, x_893.y), x_896);
  u_xlat15 = x_897.w;
  let x_899 : f32 = u_xlat15;
  u_xlat15 = (x_899 + -0.5f);
  let x_901 : f32 = u_xlat15;
  let x_902 : f32 = u_xlat15;
  u_xlat15 = (x_901 + x_902);
  let x_904 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(x_904.x, x_904.y, x_904.z), vec3<f32>(0.21267290413379669189f, 0.71515220403671264648f, 0.07217500358819961548f));
  let x_913 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_913);
  let x_918 : f32 = x_25.x_Grain_Params.y;
  let x_920 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_918 * -(x_920)) + 1.0f);
  let x_925 : f32 = u_xlat15;
  let x_927 : vec4<f32> = u_xlat0;
  u_xlat6 = (vec3<f32>(x_925, x_925, x_925) * vec3<f32>(x_927.x, x_927.y, x_927.z));
  let x_930 : vec3<f32> = u_xlat6;
  let x_933 : vec2<f32> = x_25.x_Grain_Params;
  u_xlat6 = (x_930 * vec3<f32>(x_933.x, x_933.x, x_933.x));
  let x_936 : vec3<f32> = u_xlat6;
  let x_937 : vec4<f32> = u_xlat1;
  let x_940 : vec4<f32> = u_xlat0;
  let x_942 : vec3<f32> = ((x_936 * vec3<f32>(x_937.x, x_937.x, x_937.x)) + vec3<f32>(x_940.x, x_940.y, x_940.z));
  let x_943 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_942.x, x_942.y, x_942.z, x_943.w);
  let x_945 : vec4<f32> = u_xlat0;
  let x_947 : vec3<f32> = (vec3<f32>(x_945.x, x_945.y, x_945.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
  let x_948 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_947.x, x_947.y, x_947.z, x_948.w);
  let x_950 : vec4<f32> = u_xlat0;
  let x_953 : vec3<f32> = log2(abs(vec3<f32>(x_950.x, x_950.y, x_950.z)));
  let x_954 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_953.x, x_953.y, x_953.z, x_954.w);
  let x_956 : vec4<f32> = u_xlat2;
  let x_958 : vec3<f32> = (vec3<f32>(x_956.x, x_956.y, x_956.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
  let x_959 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_958.x, x_958.y, x_958.z, x_959.w);
  let x_961 : vec4<f32> = u_xlat2;
  let x_963 : vec3<f32> = exp2(vec3<f32>(x_961.x, x_961.y, x_961.z));
  let x_964 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_963.x, x_963.y, x_963.z, x_964.w);
  let x_966 : vec4<f32> = u_xlat2;
  let x_969 : vec3<f32> = ((vec3<f32>(x_966.x, x_966.y, x_966.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
  let x_970 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_969.x, x_969.y, x_969.z, x_970.w);
  let x_973 : vec4<f32> = u_xlat0;
  let x_975 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_973.x, x_973.y, x_973.z, x_973.x));
  u_xlatb0 = vec3<bool>(x_975.x, x_975.y, x_975.z);
  let x_980 : bool = u_xlatb0.x;
  if (x_980) {
    let x_985 : f32 = u_xlat1.x;
    x_981 = x_985;
  } else {
    let x_988 : f32 = u_xlat2.x;
    x_981 = x_988;
  }
  let x_989 : f32 = x_981;
  SV_Target0.x = x_989;
  let x_993 : bool = u_xlatb0.y;
  if (x_993) {
    let x_998 : f32 = u_xlat1.y;
    x_994 = x_998;
  } else {
    let x_1001 : f32 = u_xlat2.y;
    x_994 = x_1001;
  }
  let x_1002 : f32 = x_994;
  SV_Target0.y = x_1002;
  let x_1005 : bool = u_xlatb0.z;
  if (x_1005) {
    let x_1010 : f32 = u_xlat1.z;
    x_1006 = x_1010;
  } else {
    let x_1013 : f32 = u_xlat2.z;
    x_1006 = x_1013;
  }
  let x_1014 : f32 = x_1006;
  SV_Target0.z = x_1014;
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


