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
  var x_430 : f32;
  var x_442 : f32;
  var x_454 : f32;
  var x_599 : f32;
  var x_611 : f32;
  var x_623 : f32;
  var x_800 : f32;
  var x_812 : f32;
  var x_824 : f32;
  var x_879 : f32;
  var x_891 : f32;
  var x_903 : f32;
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
  let x_375 : vec3<f32> = clamp(vec3<f32>(x_371.x, x_371.y, x_371.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_376 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_375.x, x_375.y, x_375.z, x_376.w);
  let x_380 : f32 = x_25.x_UserLut_Params.w;
  u_xlatb15 = (0.0f < x_380);
  let x_382 : bool = u_xlatb15;
  if (x_382) {
    let x_385 : vec4<f32> = u_xlat0;
    u_xlat1 = (vec3<f32>(x_385.x, x_385.y, x_385.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
    let x_390 : vec4<f32> = u_xlat0;
    let x_392 : vec3<f32> = log2(vec3<f32>(x_390.x, x_390.y, x_390.z));
    let x_393 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_392.x, x_392.y, x_392.z, x_393.w);
    let x_395 : vec4<f32> = u_xlat2;
    let x_399 : vec3<f32> = (vec3<f32>(x_395.x, x_395.y, x_395.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
    let x_400 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_399.x, x_399.y, x_399.z, x_400.w);
    let x_402 : vec4<f32> = u_xlat2;
    let x_404 : vec3<f32> = exp2(vec3<f32>(x_402.x, x_402.y, x_402.z));
    let x_405 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_404.x, x_404.y, x_404.z, x_405.w);
    let x_407 : vec4<f32> = u_xlat2;
    let x_414 : vec3<f32> = ((vec3<f32>(x_407.x, x_407.y, x_407.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
    let x_415 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_414.x, x_414.y, x_414.z, x_415.w);
    let x_420 : vec4<f32> = u_xlat0;
    let x_423 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_420.x, x_420.y, x_420.z, x_420.x));
    u_xlatb3 = vec3<bool>(x_423.x, x_423.y, x_423.z);
    let x_427 : vec3<f32> = u_xlat1;
    hlslcc_movcTemp = x_427;
    let x_429 : bool = u_xlatb3.x;
    if (x_429) {
      let x_434 : f32 = u_xlat1.x;
      x_430 = x_434;
    } else {
      let x_437 : f32 = u_xlat2.x;
      x_430 = x_437;
    }
    let x_438 : f32 = x_430;
    hlslcc_movcTemp.x = x_438;
    let x_441 : bool = u_xlatb3.y;
    if (x_441) {
      let x_446 : f32 = u_xlat1.y;
      x_442 = x_446;
    } else {
      let x_449 : f32 = u_xlat2.y;
      x_442 = x_449;
    }
    let x_450 : f32 = x_442;
    hlslcc_movcTemp.y = x_450;
    let x_453 : bool = u_xlatb3.z;
    if (x_453) {
      let x_458 : f32 = u_xlat1.z;
      x_454 = x_458;
    } else {
      let x_461 : f32 = u_xlat2.z;
      x_454 = x_461;
    }
    let x_462 : f32 = x_454;
    hlslcc_movcTemp.z = x_462;
    let x_464 : vec3<f32> = hlslcc_movcTemp;
    u_xlat1 = x_464;
    let x_465 : vec3<f32> = u_xlat1;
    let x_468 : vec4<f32> = x_25.x_UserLut_Params;
    let x_470 : vec3<f32> = (vec3<f32>(x_465.z, x_465.x, x_465.y) * vec3<f32>(x_468.z, x_468.z, x_468.z));
    let x_471 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_470.x, x_470.y, x_470.z, x_471.w);
    let x_474 : f32 = u_xlat2.x;
    u_xlat15 = floor(x_474);
    let x_477 : vec4<f32> = x_25.x_UserLut_Params;
    let x_479 : vec2<f32> = (vec2<f32>(x_477.x, x_477.y) * vec2<f32>(0.5f, 0.5f));
    let x_480 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_479.x, x_480.y, x_480.z, x_479.y);
    let x_482 : vec4<f32> = u_xlat2;
    let x_485 : vec4<f32> = x_25.x_UserLut_Params;
    let x_488 : vec4<f32> = u_xlat2;
    let x_490 : vec2<f32> = ((vec2<f32>(x_482.y, x_482.z) * vec2<f32>(x_485.x, x_485.y)) + vec2<f32>(x_488.x, x_488.w));
    let x_491 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_491.x, x_490.x, x_490.y, x_491.w);
    let x_493 : f32 = u_xlat15;
    let x_495 : f32 = x_25.x_UserLut_Params.y;
    let x_498 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_493 * x_495) + x_498);
    let x_505 : vec4<f32> = u_xlat2;
    let x_507 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_505.x, x_505.z), 0.0f);
    u_xlat3 = vec3<f32>(x_507.x, x_507.y, x_507.z);
    let x_511 : f32 = x_25.x_UserLut_Params.y;
    u_xlat4.x = x_511;
    u_xlat4.y = 0.0f;
    let x_514 : vec4<f32> = u_xlat2;
    let x_516 : vec2<f32> = u_xlat4;
    let x_517 : vec2<f32> = (vec2<f32>(x_514.x, x_514.z) + x_516);
    let x_518 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_517.x, x_517.y, x_518.z, x_518.w);
    let x_523 : vec4<f32> = u_xlat2;
    let x_525 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_523.x, x_523.y), 0.0f);
    let x_526 : vec3<f32> = vec3<f32>(x_525.x, x_525.y, x_525.z);
    let x_527 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_526.x, x_526.y, x_526.z, x_527.w);
    let x_530 : f32 = u_xlat1.z;
    let x_532 : f32 = x_25.x_UserLut_Params.z;
    let x_534 : f32 = u_xlat15;
    u_xlat15 = ((x_530 * x_532) + -(x_534));
    let x_537 : vec3<f32> = u_xlat3;
    let x_539 : vec4<f32> = u_xlat2;
    let x_541 : vec3<f32> = (-(x_537) + vec3<f32>(x_539.x, x_539.y, x_539.z));
    let x_542 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_541.x, x_541.y, x_541.z, x_542.w);
    let x_544 : f32 = u_xlat15;
    let x_546 : vec4<f32> = u_xlat2;
    let x_549 : vec3<f32> = u_xlat3;
    let x_550 : vec3<f32> = ((vec3<f32>(x_544, x_544, x_544) * vec3<f32>(x_546.x, x_546.y, x_546.z)) + x_549);
    let x_551 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_550.x, x_550.y, x_550.z, x_551.w);
    let x_553 : vec3<f32> = u_xlat1;
    let x_555 : vec4<f32> = u_xlat2;
    let x_557 : vec3<f32> = (-(x_553) + vec3<f32>(x_555.x, x_555.y, x_555.z));
    let x_558 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_557.x, x_557.y, x_557.z, x_558.w);
    let x_561 : vec4<f32> = x_25.x_UserLut_Params;
    let x_563 : vec4<f32> = u_xlat2;
    let x_566 : vec3<f32> = u_xlat1;
    u_xlat1 = ((vec3<f32>(x_561.w, x_561.w, x_561.w) * vec3<f32>(x_563.x, x_563.y, x_563.z)) + x_566);
    let x_568 : vec3<f32> = u_xlat1;
    let x_571 : vec3<f32> = (x_568 * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
    let x_572 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_571.x, x_571.y, x_571.z, x_572.w);
    let x_574 : vec3<f32> = u_xlat1;
    u_xlat3 = (x_574 + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
    let x_578 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_578 * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
    let x_582 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_582));
    let x_585 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_585 * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
    let x_589 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_589);
    let x_593 : vec3<f32> = u_xlat1;
    let x_595 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_593.x, x_593.y, x_593.z, x_593.x));
    u_xlatb1 = vec3<bool>(x_595.x, x_595.y, x_595.z);
    let x_598 : bool = u_xlatb1.x;
    if (x_598) {
      let x_603 : f32 = u_xlat2.x;
      x_599 = x_603;
    } else {
      let x_606 : f32 = u_xlat3.x;
      x_599 = x_606;
    }
    let x_607 : f32 = x_599;
    u_xlat0.x = x_607;
    let x_610 : bool = u_xlatb1.y;
    if (x_610) {
      let x_615 : f32 = u_xlat2.y;
      x_611 = x_615;
    } else {
      let x_618 : f32 = u_xlat3.y;
      x_611 = x_618;
    }
    let x_619 : f32 = x_611;
    u_xlat0.y = x_619;
    let x_622 : bool = u_xlatb1.z;
    if (x_622) {
      let x_627 : f32 = u_xlat2.z;
      x_623 = x_627;
    } else {
      let x_630 : f32 = u_xlat3.z;
      x_623 = x_630;
    }
    let x_631 : f32 = x_623;
    u_xlat0.z = x_631;
  }
  let x_633 : vec4<f32> = u_xlat0;
  let x_636 : vec4<f32> = x_25.x_Lut_Params;
  let x_638 : vec3<f32> = (vec3<f32>(x_633.x, x_633.y, x_633.z) * vec3<f32>(x_636.z, x_636.z, x_636.z));
  let x_639 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_638.x, x_638.y, x_639.z, x_638.z);
  let x_642 : f32 = u_xlat0.w;
  u_xlat15 = floor(x_642);
  let x_645 : vec4<f32> = x_25.x_Lut_Params;
  let x_647 : vec2<f32> = (vec2<f32>(x_645.x, x_645.y) * vec2<f32>(0.5f, 0.5f));
  let x_648 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_647.x, x_647.y, x_648.z);
  let x_650 : vec4<f32> = u_xlat0;
  let x_653 : vec4<f32> = x_25.x_Lut_Params;
  let x_656 : vec3<f32> = u_xlat1;
  let x_658 : vec2<f32> = ((vec2<f32>(x_650.x, x_650.y) * vec2<f32>(x_653.x, x_653.y)) + vec2<f32>(x_656.x, x_656.y));
  let x_659 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_659.x, x_658.x, x_658.y);
  let x_661 : f32 = u_xlat15;
  let x_663 : f32 = x_25.x_Lut_Params.y;
  let x_666 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_661 * x_663) + x_666);
  let x_673 : vec3<f32> = u_xlat1;
  let x_675 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_673.x, x_673.z), 0.0f);
  let x_676 : vec3<f32> = vec3<f32>(x_675.x, x_675.y, x_675.z);
  let x_677 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_676.x, x_676.y, x_676.z, x_677.w);
  let x_680 : f32 = x_25.x_Lut_Params.y;
  u_xlat0.x = x_680;
  u_xlat0.y = 0.0f;
  let x_683 : vec4<f32> = u_xlat0;
  let x_685 : vec3<f32> = u_xlat1;
  let x_687 : vec2<f32> = (vec2<f32>(x_683.x, x_683.y) + vec2<f32>(x_685.x, x_685.z));
  let x_688 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_687.x, x_687.y, x_688.z, x_688.w);
  let x_693 : vec4<f32> = u_xlat0;
  let x_695 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_693.x, x_693.y), 0.0f);
  u_xlat1 = vec3<f32>(x_695.x, x_695.y, x_695.z);
  let x_698 : f32 = u_xlat0.z;
  let x_700 : f32 = x_25.x_Lut_Params.z;
  let x_702 : f32 = u_xlat15;
  u_xlat0.x = ((x_698 * x_700) + -(x_702));
  let x_707 : vec4<f32> = u_xlat2;
  let x_710 : vec3<f32> = u_xlat1;
  u_xlat5 = (-(vec3<f32>(x_707.x, x_707.y, x_707.z)) + x_710);
  let x_712 : vec4<f32> = u_xlat0;
  let x_714 : vec3<f32> = u_xlat5;
  let x_716 : vec4<f32> = u_xlat2;
  let x_718 : vec3<f32> = ((vec3<f32>(x_712.x, x_712.x, x_712.x) * x_714) + vec3<f32>(x_716.x, x_716.y, x_716.z));
  let x_719 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_718.x, x_718.y, x_718.z, x_719.w);
  let x_721 : vec2<f32> = vs_TEXCOORD0;
  let x_724 : vec4<f32> = x_25.x_Dithering_Params;
  let x_728 : vec4<f32> = x_25.x_Dithering_Params;
  let x_730 : vec2<f32> = ((x_721 * vec2<f32>(x_724.x, x_724.y)) + vec2<f32>(x_728.z, x_728.w));
  let x_731 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_730.x, x_730.y, x_731.z);
  let x_738 : vec3<f32> = u_xlat1;
  let x_741 : f32 = x_25.x_GlobalMipBias.x;
  let x_742 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_738.x, x_738.y), x_741);
  u_xlat15 = x_742.w;
  let x_744 : f32 = u_xlat15;
  u_xlat15 = ((x_744 * 2.0f) + -1.0f);
  let x_748 : f32 = u_xlat15;
  u_xlatb1.x = (x_748 >= 0.0f);
  let x_752 : bool = u_xlatb1.x;
  u_xlat1.x = select(-1.0f, 1.0f, x_752);
  let x_755 : f32 = u_xlat15;
  u_xlat15 = (-(abs(x_755)) + 1.0f);
  let x_759 : f32 = u_xlat15;
  u_xlat15 = sqrt(x_759);
  let x_761 : f32 = u_xlat15;
  u_xlat15 = (-(x_761) + 1.0f);
  let x_764 : f32 = u_xlat15;
  let x_766 : f32 = u_xlat1.x;
  u_xlat15 = (x_764 * x_766);
  let x_768 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_768.x, x_768.y, x_768.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
  let x_771 : vec4<f32> = u_xlat0;
  let x_774 : vec3<f32> = log2(abs(vec3<f32>(x_771.x, x_771.y, x_771.z)));
  let x_775 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_774.x, x_774.y, x_774.z, x_775.w);
  let x_777 : vec4<f32> = u_xlat2;
  let x_779 : vec3<f32> = (vec3<f32>(x_777.x, x_777.y, x_777.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
  let x_780 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_779.x, x_779.y, x_779.z, x_780.w);
  let x_782 : vec4<f32> = u_xlat2;
  let x_784 : vec3<f32> = exp2(vec3<f32>(x_782.x, x_782.y, x_782.z));
  let x_785 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_784.x, x_784.y, x_784.z, x_785.w);
  let x_787 : vec4<f32> = u_xlat2;
  let x_790 : vec3<f32> = ((vec3<f32>(x_787.x, x_787.y, x_787.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
  let x_791 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_790.x, x_790.y, x_790.z, x_791.w);
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
  u_xlat1 = (vec3<f32>(x_844.x, x_844.y, x_844.z) * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
  let x_847 : vec4<f32> = u_xlat0;
  let x_849 : vec3<f32> = (vec3<f32>(x_847.x, x_847.y, x_847.z) + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
  let x_850 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_849.x, x_849.y, x_849.z, x_850.w);
  let x_852 : vec4<f32> = u_xlat2;
  let x_854 : vec3<f32> = (vec3<f32>(x_852.x, x_852.y, x_852.z) * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
  let x_855 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_854.x, x_854.y, x_854.z, x_855.w);
  let x_857 : vec4<f32> = u_xlat2;
  let x_860 : vec3<f32> = log2(abs(vec3<f32>(x_857.x, x_857.y, x_857.z)));
  let x_861 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_860.x, x_860.y, x_860.z, x_861.w);
  let x_863 : vec4<f32> = u_xlat2;
  let x_865 : vec3<f32> = (vec3<f32>(x_863.x, x_863.y, x_863.z) * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
  let x_866 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_865.x, x_865.y, x_865.z, x_866.w);
  let x_868 : vec4<f32> = u_xlat2;
  let x_870 : vec3<f32> = exp2(vec3<f32>(x_868.x, x_868.y, x_868.z));
  let x_871 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_870.x, x_870.y, x_870.z, x_871.w);
  let x_873 : vec4<f32> = u_xlat0;
  let x_875 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_873.x, x_873.y, x_873.z, x_873.x));
  u_xlatb0 = vec3<bool>(x_875.x, x_875.y, x_875.z);
  let x_878 : bool = u_xlatb0.x;
  if (x_878) {
    let x_883 : f32 = u_xlat1.x;
    x_879 = x_883;
  } else {
    let x_886 : f32 = u_xlat2.x;
    x_879 = x_886;
  }
  let x_887 : f32 = x_879;
  u_xlat0.x = x_887;
  let x_890 : bool = u_xlatb0.y;
  if (x_890) {
    let x_895 : f32 = u_xlat1.y;
    x_891 = x_895;
  } else {
    let x_898 : f32 = u_xlat2.y;
    x_891 = x_898;
  }
  let x_899 : f32 = x_891;
  u_xlat0.y = x_899;
  let x_902 : bool = u_xlatb0.z;
  if (x_902) {
    let x_907 : f32 = u_xlat1.z;
    x_903 = x_907;
  } else {
    let x_910 : f32 = u_xlat2.z;
    x_903 = x_910;
  }
  let x_911 : f32 = x_903;
  u_xlat0.z = x_911;
  let x_915 : vec4<f32> = u_xlat0;
  let x_918 : vec3<f32> = max(vec3<f32>(x_915.x, x_915.y, x_915.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_919 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_918.x, x_918.y, x_918.z, x_919.w);
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

