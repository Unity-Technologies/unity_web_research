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
  x_Distortion_Params1 : vec4<f32>,
  /* @offset(96) */
  x_Distortion_Params2 : vec4<f32>,
  /* @offset(112) */
  x_Vignette_Params1 : vec4<f32>,
  /* @offset(128) */
  x_Vignette_Params2 : vec4<f32>,
  /* @offset(144) */
  x_Dithering_Params : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat10 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_25 : PGlobals;

var<private> u_xlat1 : vec3<f32>;

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

var<private> u_xlatb15 : bool;

var<private> u_xlat15 : f32;

var<private> u_xlatb3 : vec3<bool>;

@group(0) @binding(2) var x_UserLut : texture_2d<f32>;

var<private> u_xlat4 : vec2<f32>;

@group(0) @binding(1) var x_InternalLut : texture_2d<f32>;

var<private> u_xlat5 : vec3<f32>;

@group(0) @binding(3) var x_BlueNoise_Texture : texture_2d<f32>;

@group(0) @binding(5) var sampler_PointRepeat : sampler;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_228 : f32;
  var hlslcc_movcTemp : vec3<f32>;
  var x_490 : f32;
  var x_502 : f32;
  var x_514 : f32;
  var x_659 : f32;
  var x_671 : f32;
  var x_683 : f32;
  var x_860 : f32;
  var x_872 : f32;
  var x_884 : f32;
  var x_939 : f32;
  var x_951 : f32;
  var x_963 : f32;
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
    u_xlat6 = (vec2<f32>(x_87.x, x_87.x) * vec2<f32>(x_90.x, x_90.y));
    let x_95 : f32 = u_xlat6.x;
    u_xlat2.x = sin(x_95);
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
    let x_247 : vec3<f32> = u_xlat1;
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
  let x_294 : f32 = x_25.x_Vignette_Params2.z;
  u_xlatb15 = (0.0f < x_294);
  let x_296 : bool = u_xlatb15;
  if (x_296) {
    let x_299 : vec2<f32> = u_xlat6;
    let x_301 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_304 : vec2<f32> = (x_299 + -(vec2<f32>(x_301.x, x_301.y)));
    let x_305 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_304.x, x_304.y, x_305.z);
    let x_307 : vec3<f32> = u_xlat1;
    let x_311 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_313 : vec2<f32> = (abs(vec2<f32>(x_307.x, x_307.y)) * vec2<f32>(x_311.z, x_311.z));
    let x_314 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_314.x, x_313.x, x_313.y);
    let x_317 : f32 = u_xlat1.y;
    let x_320 : f32 = x_25.x_Vignette_Params1.w;
    u_xlat1.x = (x_317 * x_320);
    let x_324 : vec3<f32> = u_xlat1;
    let x_326 : vec3<f32> = u_xlat1;
    u_xlat15 = dot(vec2<f32>(x_324.x, x_324.z), vec2<f32>(x_326.x, x_326.z));
    let x_329 : f32 = u_xlat15;
    u_xlat15 = (-(x_329) + 1.0f);
    let x_332 : f32 = u_xlat15;
    u_xlat15 = max(x_332, 0.0f);
    let x_334 : f32 = u_xlat15;
    u_xlat15 = log2(x_334);
    let x_336 : f32 = u_xlat15;
    let x_338 : f32 = x_25.x_Vignette_Params2.w;
    u_xlat15 = (x_336 * x_338);
    let x_340 : f32 = u_xlat15;
    u_xlat15 = exp2(x_340);
    let x_343 : vec4<f32> = x_25.x_Vignette_Params1;
    u_xlat1 = (-(vec3<f32>(x_343.x, x_343.y, x_343.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_348 : f32 = u_xlat15;
    let x_350 : vec3<f32> = u_xlat1;
    let x_353 : vec4<f32> = x_25.x_Vignette_Params1;
    u_xlat1 = ((vec3<f32>(x_348, x_348, x_348) * x_350) + vec3<f32>(x_353.x, x_353.y, x_353.z));
    let x_356 : vec4<f32> = u_xlat0;
    let x_358 : vec3<f32> = u_xlat1;
    let x_359 : vec3<f32> = (vec3<f32>(x_356.x, x_356.y, x_356.z) * x_358);
    let x_360 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_359.x, x_359.y, x_359.z, x_360.w);
  }
  let x_362 : vec4<f32> = u_xlat0;
  let x_366 : vec4<f32> = x_25.x_Lut_Params;
  let x_368 : vec3<f32> = (vec3<f32>(x_362.x, x_362.y, x_362.z) * vec3<f32>(x_366.w, x_366.w, x_366.w));
  let x_369 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_368.x, x_368.y, x_368.z, x_369.w);
  let x_371 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_371.x, x_371.y, x_371.z) * vec3<f32>(1.31338608264923095703f, 1.31338608264923095703f, 1.31338608264923095703f));
  let x_376 : vec4<f32> = u_xlat0;
  let x_383 : vec3<f32> = ((vec3<f32>(x_376.x, x_376.y, x_376.z) * vec3<f32>(0.26267722249031066895f, 0.26267722249031066895f, 0.26267722249031066895f)) + vec3<f32>(0.06959999352693557739f, 0.06959999352693557739f, 0.06959999352693557739f));
  let x_384 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_383.x, x_383.y, x_383.z, x_384.w);
  let x_386 : vec3<f32> = u_xlat1;
  let x_387 : vec4<f32> = u_xlat2;
  let x_392 : vec3<f32> = ((x_386 * vec3<f32>(x_387.x, x_387.y, x_387.z)) + vec3<f32>(0.00543999997898936272f, 0.00543999997898936272f, 0.00543999997898936272f));
  let x_393 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_392.x, x_392.y, x_392.z, x_393.w);
  let x_395 : vec4<f32> = u_xlat0;
  let x_400 : vec3<f32> = ((vec3<f32>(x_395.x, x_395.y, x_395.z) * vec3<f32>(0.26267722249031066895f, 0.26267722249031066895f, 0.26267722249031066895f)) + vec3<f32>(0.28999999165534973145f, 0.28999999165534973145f, 0.28999999165534973145f));
  let x_401 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_400.x, x_400.y, x_400.z, x_401.w);
  let x_403 : vec3<f32> = u_xlat1;
  let x_404 : vec4<f32> = u_xlat0;
  let x_409 : vec3<f32> = ((x_403 * vec3<f32>(x_404.x, x_404.y, x_404.z)) + vec3<f32>(0.08160001039505004883f, 0.08160001039505004883f, 0.08160001039505004883f));
  let x_410 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_409.x, x_409.y, x_409.z, x_410.w);
  let x_412 : vec4<f32> = u_xlat2;
  let x_414 : vec4<f32> = u_xlat0;
  let x_416 : vec3<f32> = (vec3<f32>(x_412.x, x_412.y, x_412.z) / vec3<f32>(x_414.x, x_414.y, x_414.z));
  let x_417 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_416.x, x_416.y, x_416.z, x_417.w);
  let x_419 : vec4<f32> = u_xlat0;
  let x_423 : vec3<f32> = (vec3<f32>(x_419.x, x_419.y, x_419.z) + vec3<f32>(-0.06666666269302368164f, -0.06666666269302368164f, -0.06666666269302368164f));
  let x_424 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_423.x, x_423.y, x_423.z, x_424.w);
  let x_426 : vec4<f32> = u_xlat0;
  let x_428 : vec3<f32> = (vec3<f32>(x_426.x, x_426.y, x_426.z) * vec3<f32>(1.31338608264923095703f, 1.31338608264923095703f, 1.31338608264923095703f));
  let x_429 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_428.x, x_428.y, x_428.z, x_429.w);
  let x_431 : vec4<f32> = u_xlat0;
  let x_435 : vec3<f32> = clamp(vec3<f32>(x_431.x, x_431.y, x_431.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_436 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_435.x, x_435.y, x_435.z, x_436.w);
  let x_440 : f32 = x_25.x_UserLut_Params.w;
  u_xlatb15 = (0.0f < x_440);
  let x_442 : bool = u_xlatb15;
  if (x_442) {
    let x_445 : vec4<f32> = u_xlat0;
    u_xlat1 = (vec3<f32>(x_445.x, x_445.y, x_445.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
    let x_450 : vec4<f32> = u_xlat0;
    let x_452 : vec3<f32> = log2(vec3<f32>(x_450.x, x_450.y, x_450.z));
    let x_453 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_452.x, x_452.y, x_452.z, x_453.w);
    let x_455 : vec4<f32> = u_xlat2;
    let x_459 : vec3<f32> = (vec3<f32>(x_455.x, x_455.y, x_455.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
    let x_460 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_459.x, x_459.y, x_459.z, x_460.w);
    let x_462 : vec4<f32> = u_xlat2;
    let x_464 : vec3<f32> = exp2(vec3<f32>(x_462.x, x_462.y, x_462.z));
    let x_465 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_464.x, x_464.y, x_464.z, x_465.w);
    let x_467 : vec4<f32> = u_xlat2;
    let x_474 : vec3<f32> = ((vec3<f32>(x_467.x, x_467.y, x_467.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
    let x_475 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_474.x, x_474.y, x_474.z, x_475.w);
    let x_480 : vec4<f32> = u_xlat0;
    let x_483 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_480.x, x_480.y, x_480.z, x_480.x));
    u_xlatb3 = vec3<bool>(x_483.x, x_483.y, x_483.z);
    let x_487 : vec3<f32> = u_xlat1;
    hlslcc_movcTemp = x_487;
    let x_489 : bool = u_xlatb3.x;
    if (x_489) {
      let x_494 : f32 = u_xlat1.x;
      x_490 = x_494;
    } else {
      let x_497 : f32 = u_xlat2.x;
      x_490 = x_497;
    }
    let x_498 : f32 = x_490;
    hlslcc_movcTemp.x = x_498;
    let x_501 : bool = u_xlatb3.y;
    if (x_501) {
      let x_506 : f32 = u_xlat1.y;
      x_502 = x_506;
    } else {
      let x_509 : f32 = u_xlat2.y;
      x_502 = x_509;
    }
    let x_510 : f32 = x_502;
    hlslcc_movcTemp.y = x_510;
    let x_513 : bool = u_xlatb3.z;
    if (x_513) {
      let x_518 : f32 = u_xlat1.z;
      x_514 = x_518;
    } else {
      let x_521 : f32 = u_xlat2.z;
      x_514 = x_521;
    }
    let x_522 : f32 = x_514;
    hlslcc_movcTemp.z = x_522;
    let x_524 : vec3<f32> = hlslcc_movcTemp;
    u_xlat1 = x_524;
    let x_525 : vec3<f32> = u_xlat1;
    let x_528 : vec4<f32> = x_25.x_UserLut_Params;
    let x_530 : vec3<f32> = (vec3<f32>(x_525.z, x_525.x, x_525.y) * vec3<f32>(x_528.z, x_528.z, x_528.z));
    let x_531 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_530.x, x_530.y, x_530.z, x_531.w);
    let x_534 : f32 = u_xlat2.x;
    u_xlat15 = floor(x_534);
    let x_537 : vec4<f32> = x_25.x_UserLut_Params;
    let x_539 : vec2<f32> = (vec2<f32>(x_537.x, x_537.y) * vec2<f32>(0.5f, 0.5f));
    let x_540 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_539.x, x_540.y, x_540.z, x_539.y);
    let x_542 : vec4<f32> = u_xlat2;
    let x_545 : vec4<f32> = x_25.x_UserLut_Params;
    let x_548 : vec4<f32> = u_xlat2;
    let x_550 : vec2<f32> = ((vec2<f32>(x_542.y, x_542.z) * vec2<f32>(x_545.x, x_545.y)) + vec2<f32>(x_548.x, x_548.w));
    let x_551 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_551.x, x_550.x, x_550.y, x_551.w);
    let x_553 : f32 = u_xlat15;
    let x_555 : f32 = x_25.x_UserLut_Params.y;
    let x_558 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_553 * x_555) + x_558);
    let x_565 : vec4<f32> = u_xlat2;
    let x_567 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_565.x, x_565.z), 0.0f);
    u_xlat3 = vec3<f32>(x_567.x, x_567.y, x_567.z);
    let x_571 : f32 = x_25.x_UserLut_Params.y;
    u_xlat4.x = x_571;
    u_xlat4.y = 0.0f;
    let x_574 : vec4<f32> = u_xlat2;
    let x_576 : vec2<f32> = u_xlat4;
    let x_577 : vec2<f32> = (vec2<f32>(x_574.x, x_574.z) + x_576);
    let x_578 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_577.x, x_577.y, x_578.z, x_578.w);
    let x_583 : vec4<f32> = u_xlat2;
    let x_585 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_583.x, x_583.y), 0.0f);
    let x_586 : vec3<f32> = vec3<f32>(x_585.x, x_585.y, x_585.z);
    let x_587 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_586.x, x_586.y, x_586.z, x_587.w);
    let x_590 : f32 = u_xlat1.z;
    let x_592 : f32 = x_25.x_UserLut_Params.z;
    let x_594 : f32 = u_xlat15;
    u_xlat15 = ((x_590 * x_592) + -(x_594));
    let x_597 : vec3<f32> = u_xlat3;
    let x_599 : vec4<f32> = u_xlat2;
    let x_601 : vec3<f32> = (-(x_597) + vec3<f32>(x_599.x, x_599.y, x_599.z));
    let x_602 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_601.x, x_601.y, x_601.z, x_602.w);
    let x_604 : f32 = u_xlat15;
    let x_606 : vec4<f32> = u_xlat2;
    let x_609 : vec3<f32> = u_xlat3;
    let x_610 : vec3<f32> = ((vec3<f32>(x_604, x_604, x_604) * vec3<f32>(x_606.x, x_606.y, x_606.z)) + x_609);
    let x_611 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_610.x, x_610.y, x_610.z, x_611.w);
    let x_613 : vec3<f32> = u_xlat1;
    let x_615 : vec4<f32> = u_xlat2;
    let x_617 : vec3<f32> = (-(x_613) + vec3<f32>(x_615.x, x_615.y, x_615.z));
    let x_618 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_617.x, x_617.y, x_617.z, x_618.w);
    let x_621 : vec4<f32> = x_25.x_UserLut_Params;
    let x_623 : vec4<f32> = u_xlat2;
    let x_626 : vec3<f32> = u_xlat1;
    u_xlat1 = ((vec3<f32>(x_621.w, x_621.w, x_621.w) * vec3<f32>(x_623.x, x_623.y, x_623.z)) + x_626);
    let x_628 : vec3<f32> = u_xlat1;
    let x_631 : vec3<f32> = (x_628 * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
    let x_632 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_631.x, x_631.y, x_631.z, x_632.w);
    let x_634 : vec3<f32> = u_xlat1;
    u_xlat3 = (x_634 + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
    let x_638 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_638 * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
    let x_642 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_642));
    let x_645 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_645 * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
    let x_649 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_649);
    let x_653 : vec3<f32> = u_xlat1;
    let x_655 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_653.x, x_653.y, x_653.z, x_653.x));
    u_xlatb1 = vec3<bool>(x_655.x, x_655.y, x_655.z);
    let x_658 : bool = u_xlatb1.x;
    if (x_658) {
      let x_663 : f32 = u_xlat2.x;
      x_659 = x_663;
    } else {
      let x_666 : f32 = u_xlat3.x;
      x_659 = x_666;
    }
    let x_667 : f32 = x_659;
    u_xlat0.x = x_667;
    let x_670 : bool = u_xlatb1.y;
    if (x_670) {
      let x_675 : f32 = u_xlat2.y;
      x_671 = x_675;
    } else {
      let x_678 : f32 = u_xlat3.y;
      x_671 = x_678;
    }
    let x_679 : f32 = x_671;
    u_xlat0.y = x_679;
    let x_682 : bool = u_xlatb1.z;
    if (x_682) {
      let x_687 : f32 = u_xlat2.z;
      x_683 = x_687;
    } else {
      let x_690 : f32 = u_xlat3.z;
      x_683 = x_690;
    }
    let x_691 : f32 = x_683;
    u_xlat0.z = x_691;
  }
  let x_693 : vec4<f32> = u_xlat0;
  let x_696 : vec4<f32> = x_25.x_Lut_Params;
  let x_698 : vec3<f32> = (vec3<f32>(x_693.x, x_693.y, x_693.z) * vec3<f32>(x_696.z, x_696.z, x_696.z));
  let x_699 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_698.x, x_698.y, x_699.z, x_698.z);
  let x_702 : f32 = u_xlat0.w;
  u_xlat15 = floor(x_702);
  let x_705 : vec4<f32> = x_25.x_Lut_Params;
  let x_707 : vec2<f32> = (vec2<f32>(x_705.x, x_705.y) * vec2<f32>(0.5f, 0.5f));
  let x_708 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_707.x, x_707.y, x_708.z);
  let x_710 : vec4<f32> = u_xlat0;
  let x_713 : vec4<f32> = x_25.x_Lut_Params;
  let x_716 : vec3<f32> = u_xlat1;
  let x_718 : vec2<f32> = ((vec2<f32>(x_710.x, x_710.y) * vec2<f32>(x_713.x, x_713.y)) + vec2<f32>(x_716.x, x_716.y));
  let x_719 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_719.x, x_718.x, x_718.y);
  let x_721 : f32 = u_xlat15;
  let x_723 : f32 = x_25.x_Lut_Params.y;
  let x_726 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_721 * x_723) + x_726);
  let x_733 : vec3<f32> = u_xlat1;
  let x_735 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_733.x, x_733.z), 0.0f);
  let x_736 : vec3<f32> = vec3<f32>(x_735.x, x_735.y, x_735.z);
  let x_737 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_736.x, x_736.y, x_736.z, x_737.w);
  let x_740 : f32 = x_25.x_Lut_Params.y;
  u_xlat0.x = x_740;
  u_xlat0.y = 0.0f;
  let x_743 : vec4<f32> = u_xlat0;
  let x_745 : vec3<f32> = u_xlat1;
  let x_747 : vec2<f32> = (vec2<f32>(x_743.x, x_743.y) + vec2<f32>(x_745.x, x_745.z));
  let x_748 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_747.x, x_747.y, x_748.z, x_748.w);
  let x_753 : vec4<f32> = u_xlat0;
  let x_755 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_753.x, x_753.y), 0.0f);
  u_xlat1 = vec3<f32>(x_755.x, x_755.y, x_755.z);
  let x_758 : f32 = u_xlat0.z;
  let x_760 : f32 = x_25.x_Lut_Params.z;
  let x_762 : f32 = u_xlat15;
  u_xlat0.x = ((x_758 * x_760) + -(x_762));
  let x_767 : vec4<f32> = u_xlat2;
  let x_770 : vec3<f32> = u_xlat1;
  u_xlat5 = (-(vec3<f32>(x_767.x, x_767.y, x_767.z)) + x_770);
  let x_772 : vec4<f32> = u_xlat0;
  let x_774 : vec3<f32> = u_xlat5;
  let x_776 : vec4<f32> = u_xlat2;
  let x_778 : vec3<f32> = ((vec3<f32>(x_772.x, x_772.x, x_772.x) * x_774) + vec3<f32>(x_776.x, x_776.y, x_776.z));
  let x_779 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_778.x, x_778.y, x_778.z, x_779.w);
  let x_781 : vec2<f32> = vs_TEXCOORD0;
  let x_784 : vec4<f32> = x_25.x_Dithering_Params;
  let x_788 : vec4<f32> = x_25.x_Dithering_Params;
  let x_790 : vec2<f32> = ((x_781 * vec2<f32>(x_784.x, x_784.y)) + vec2<f32>(x_788.z, x_788.w));
  let x_791 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_790.x, x_790.y, x_791.z);
  let x_798 : vec3<f32> = u_xlat1;
  let x_801 : f32 = x_25.x_GlobalMipBias.x;
  let x_802 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_798.x, x_798.y), x_801);
  u_xlat15 = x_802.w;
  let x_804 : f32 = u_xlat15;
  u_xlat15 = ((x_804 * 2.0f) + -1.0f);
  let x_808 : f32 = u_xlat15;
  u_xlatb1.x = (x_808 >= 0.0f);
  let x_812 : bool = u_xlatb1.x;
  u_xlat1.x = select(-1.0f, 1.0f, x_812);
  let x_815 : f32 = u_xlat15;
  u_xlat15 = (-(abs(x_815)) + 1.0f);
  let x_819 : f32 = u_xlat15;
  u_xlat15 = sqrt(x_819);
  let x_821 : f32 = u_xlat15;
  u_xlat15 = (-(x_821) + 1.0f);
  let x_824 : f32 = u_xlat15;
  let x_826 : f32 = u_xlat1.x;
  u_xlat15 = (x_824 * x_826);
  let x_828 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_828.x, x_828.y, x_828.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
  let x_831 : vec4<f32> = u_xlat0;
  let x_834 : vec3<f32> = log2(abs(vec3<f32>(x_831.x, x_831.y, x_831.z)));
  let x_835 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_834.x, x_834.y, x_834.z, x_835.w);
  let x_837 : vec4<f32> = u_xlat2;
  let x_839 : vec3<f32> = (vec3<f32>(x_837.x, x_837.y, x_837.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
  let x_840 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_839.x, x_839.y, x_839.z, x_840.w);
  let x_842 : vec4<f32> = u_xlat2;
  let x_844 : vec3<f32> = exp2(vec3<f32>(x_842.x, x_842.y, x_842.z));
  let x_845 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_844.x, x_844.y, x_844.z, x_845.w);
  let x_847 : vec4<f32> = u_xlat2;
  let x_850 : vec3<f32> = ((vec3<f32>(x_847.x, x_847.y, x_847.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
  let x_851 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_850.x, x_850.y, x_850.z, x_851.w);
  let x_854 : vec4<f32> = u_xlat0;
  let x_856 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_854.x, x_854.y, x_854.z, x_854.x));
  u_xlatb0 = vec3<bool>(x_856.x, x_856.y, x_856.z);
  let x_859 : bool = u_xlatb0.x;
  if (x_859) {
    let x_864 : f32 = u_xlat1.x;
    x_860 = x_864;
  } else {
    let x_867 : f32 = u_xlat2.x;
    x_860 = x_867;
  }
  let x_868 : f32 = x_860;
  u_xlat0.x = x_868;
  let x_871 : bool = u_xlatb0.y;
  if (x_871) {
    let x_876 : f32 = u_xlat1.y;
    x_872 = x_876;
  } else {
    let x_879 : f32 = u_xlat2.y;
    x_872 = x_879;
  }
  let x_880 : f32 = x_872;
  u_xlat0.y = x_880;
  let x_883 : bool = u_xlatb0.z;
  if (x_883) {
    let x_888 : f32 = u_xlat1.z;
    x_884 = x_888;
  } else {
    let x_891 : f32 = u_xlat2.z;
    x_884 = x_891;
  }
  let x_892 : f32 = x_884;
  u_xlat0.z = x_892;
  let x_894 : f32 = u_xlat15;
  let x_899 : vec4<f32> = u_xlat0;
  let x_901 : vec3<f32> = ((vec3<f32>(x_894, x_894, x_894) * vec3<f32>(0.0039215688593685627f, 0.0039215688593685627f, 0.0039215688593685627f)) + vec3<f32>(x_899.x, x_899.y, x_899.z));
  let x_902 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_901.x, x_901.y, x_901.z, x_902.w);
  let x_904 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_904.x, x_904.y, x_904.z) * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
  let x_907 : vec4<f32> = u_xlat0;
  let x_909 : vec3<f32> = (vec3<f32>(x_907.x, x_907.y, x_907.z) + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
  let x_910 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_909.x, x_909.y, x_909.z, x_910.w);
  let x_912 : vec4<f32> = u_xlat2;
  let x_914 : vec3<f32> = (vec3<f32>(x_912.x, x_912.y, x_912.z) * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
  let x_915 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_914.x, x_914.y, x_914.z, x_915.w);
  let x_917 : vec4<f32> = u_xlat2;
  let x_920 : vec3<f32> = log2(abs(vec3<f32>(x_917.x, x_917.y, x_917.z)));
  let x_921 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_920.x, x_920.y, x_920.z, x_921.w);
  let x_923 : vec4<f32> = u_xlat2;
  let x_925 : vec3<f32> = (vec3<f32>(x_923.x, x_923.y, x_923.z) * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
  let x_926 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_925.x, x_925.y, x_925.z, x_926.w);
  let x_928 : vec4<f32> = u_xlat2;
  let x_930 : vec3<f32> = exp2(vec3<f32>(x_928.x, x_928.y, x_928.z));
  let x_931 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_930.x, x_930.y, x_930.z, x_931.w);
  let x_933 : vec4<f32> = u_xlat0;
  let x_935 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_933.x, x_933.y, x_933.z, x_933.x));
  u_xlatb0 = vec3<bool>(x_935.x, x_935.y, x_935.z);
  let x_938 : bool = u_xlatb0.x;
  if (x_938) {
    let x_943 : f32 = u_xlat1.x;
    x_939 = x_943;
  } else {
    let x_946 : f32 = u_xlat2.x;
    x_939 = x_946;
  }
  let x_947 : f32 = x_939;
  u_xlat0.x = x_947;
  let x_950 : bool = u_xlatb0.y;
  if (x_950) {
    let x_955 : f32 = u_xlat1.y;
    x_951 = x_955;
  } else {
    let x_958 : f32 = u_xlat2.y;
    x_951 = x_958;
  }
  let x_959 : f32 = x_951;
  u_xlat0.y = x_959;
  let x_962 : bool = u_xlatb0.z;
  if (x_962) {
    let x_967 : f32 = u_xlat1.z;
    x_963 = x_967;
  } else {
    let x_970 : f32 = u_xlat2.z;
    x_963 = x_970;
  }
  let x_971 : f32 = x_963;
  u_xlat0.z = x_971;
  let x_975 : vec4<f32> = u_xlat0;
  let x_978 : vec3<f32> = max(vec3<f32>(x_975.x, x_975.y, x_975.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_979 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_978.x, x_978.y, x_978.z, x_979.w);
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


