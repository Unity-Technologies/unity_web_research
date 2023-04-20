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
  x_Bloom_Texture_TexelSize : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat14 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_25 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlatb8 : bool;

var<private> u_xlat8 : vec2<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat15 : f32;

var<private> u_xlat22 : f32;

var<private> u_xlat9 : f32;

var<private> u_xlat16 : vec2<f32>;

var<private> u_xlatb23 : bool;

var<private> u_xlatb1 : vec3<bool>;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(4) var sampler_LinearClamp : sampler;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat17 : vec2<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(1) var x_Bloom_Texture : texture_2d<f32>;

var<private> u_xlatb21 : bool;

var<private> u_xlat21 : f32;

var<private> u_xlatb3 : vec3<bool>;

@group(0) @binding(3) var x_UserLut : texture_2d<f32>;

@group(0) @binding(2) var x_InternalLut : texture_2d<f32>;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_210 : f32;
  var x_242 : f32;
  var hlslcc_movcTemp : vec4<f32>;
  var x_720 : f32;
  var x_732 : f32;
  var x_744 : f32;
  var x_913 : f32;
  var x_925 : f32;
  var x_937 : f32;
  var x_1075 : f32;
  var x_1088 : f32;
  var x_1100 : f32;
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
  u_xlat14 = ((vec2<f32>(x_21.x, x_21.y) * vec2<f32>(x_30.z, x_30.z)) + vec2<f32>(0.5f, 0.5f));
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
  u_xlatb8 = (0.0f < x_79);
  let x_81 : bool = u_xlatb8;
  if (x_81) {
    let x_85 : vec4<f32> = u_xlat1;
    let x_88 : vec4<f32> = x_25.x_Distortion_Params2;
    u_xlat8 = (vec2<f32>(x_85.x, x_85.x) * vec2<f32>(x_88.x, x_88.y));
    let x_93 : f32 = u_xlat8.x;
    u_xlat2.x = sin(x_93);
    let x_98 : f32 = u_xlat8.x;
    u_xlat3.x = cos(x_98);
    let x_102 : f32 = u_xlat2.x;
    let x_104 : f32 = u_xlat3.x;
    u_xlat8.x = (x_102 / x_104);
    let x_111 : f32 = u_xlat8.y;
    u_xlat15 = (1.0f / x_111);
    let x_114 : f32 = u_xlat8.x;
    let x_115 : f32 = u_xlat15;
    u_xlat8.x = ((x_114 * x_115) + -1.0f);
    let x_120 : vec4<f32> = u_xlat0;
    let x_122 : vec2<f32> = u_xlat8;
    let x_125 : vec2<f32> = u_xlat14;
    u_xlat8 = ((vec2<f32>(x_120.x, x_120.y) * vec2<f32>(x_122.x, x_122.x)) + x_125);
  } else {
    let x_130 : f32 = u_xlat1.x;
    u_xlat22 = (1.0f / x_130);
    let x_132 : f32 = u_xlat22;
    let x_134 : f32 = x_25.x_Distortion_Params2.x;
    u_xlat22 = (x_132 * x_134);
    let x_137 : f32 = u_xlat1.x;
    let x_139 : f32 = x_25.x_Distortion_Params2.y;
    u_xlat1.x = (x_137 * x_139);
    let x_143 : f32 = u_xlat1.x;
    u_xlat2.x = min(abs(x_143), 1.0f);
    let x_149 : f32 = u_xlat1.x;
    u_xlat9 = max(abs(x_149), 1.0f);
    let x_152 : f32 = u_xlat9;
    u_xlat9 = (1.0f / x_152);
    let x_154 : f32 = u_xlat9;
    let x_156 : f32 = u_xlat2.x;
    u_xlat2.x = (x_154 * x_156);
    let x_160 : f32 = u_xlat2.x;
    let x_162 : f32 = u_xlat2.x;
    u_xlat9 = (x_160 * x_162);
    let x_165 : f32 = u_xlat9;
    u_xlat16.x = ((x_165 * 0.02083509974181652069f) + -0.08513300120830535889f);
    let x_171 : f32 = u_xlat9;
    let x_173 : f32 = u_xlat16.x;
    u_xlat16.x = ((x_171 * x_173) + 0.18014100193977355957f);
    let x_178 : f32 = u_xlat9;
    let x_180 : f32 = u_xlat16.x;
    u_xlat16.x = ((x_178 * x_180) + -0.33029949665069580078f);
    let x_185 : f32 = u_xlat9;
    let x_187 : f32 = u_xlat16.x;
    u_xlat9 = ((x_185 * x_187) + 0.99986600875854492188f);
    let x_191 : f32 = u_xlat9;
    let x_193 : f32 = u_xlat2.x;
    u_xlat16.x = (x_191 * x_193);
    let x_198 : f32 = u_xlat1.x;
    u_xlatb23 = (1.0f < abs(x_198));
    let x_202 : f32 = u_xlat16.x;
    u_xlat16.x = ((x_202 * -2.0f) + 1.57079637050628662109f);
    let x_208 : bool = u_xlatb23;
    if (x_208) {
      let x_214 : f32 = u_xlat16.x;
      x_210 = x_214;
    } else {
      x_210 = 0.0f;
    }
    let x_216 : f32 = x_210;
    u_xlat16.x = x_216;
    let x_219 : f32 = u_xlat2.x;
    let x_220 : f32 = u_xlat9;
    let x_223 : f32 = u_xlat16.x;
    u_xlat2.x = ((x_219 * x_220) + x_223);
    let x_227 : f32 = u_xlat1.x;
    u_xlat1.x = min(x_227, 1.0f);
    let x_234 : f32 = u_xlat1.x;
    let x_236 : f32 = u_xlat1.x;
    u_xlatb1.x = (x_234 < -(x_236));
    let x_241 : bool = u_xlatb1.x;
    if (x_241) {
      let x_246 : f32 = u_xlat2.x;
      x_242 = -(x_246);
    } else {
      let x_250 : f32 = u_xlat2.x;
      x_242 = x_250;
    }
    let x_251 : f32 = x_242;
    u_xlat1.x = x_251;
    let x_253 : f32 = u_xlat22;
    let x_255 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_253 * x_255) + -1.0f);
    let x_259 : vec4<f32> = u_xlat0;
    let x_261 : vec4<f32> = u_xlat1;
    let x_264 : vec2<f32> = u_xlat14;
    u_xlat8 = ((vec2<f32>(x_259.x, x_259.y) * vec2<f32>(x_261.x, x_261.x)) + x_264);
  }
  let x_268 : vec4<f32> = x_25.x_BlitTexture_TexelSize;
  let x_274 : vec4<f32> = x_25.x_RTHandleScale;
  let x_276 : vec2<f32> = ((-(vec2<f32>(x_268.x, x_268.y)) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_274.x, x_274.y));
  let x_277 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_276.x, x_276.y, x_277.z, x_277.w);
  let x_279 : vec4<f32> = u_xlat0;
  let x_281 : vec2<f32> = u_xlat8;
  let x_282 : vec2<f32> = min(vec2<f32>(x_279.x, x_279.y), x_281);
  let x_283 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_282.x, x_282.y, x_283.z, x_283.w);
  let x_295 : vec4<f32> = u_xlat0;
  let x_299 : f32 = x_25.x_GlobalMipBias.x;
  let x_300 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_295.x, x_295.y), x_299);
  let x_302 : vec3<f32> = vec3<f32>(x_300.x, x_300.y, x_300.z);
  let x_303 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_302.x, x_302.y, x_302.z, x_303.w);
  let x_307 : vec4<f32> = x_25.x_BloomTexture_TexelSize;
  let x_312 : vec4<f32> = x_25.x_RTHandleScale;
  let x_314 : vec2<f32> = ((-(vec2<f32>(x_307.x, x_307.y)) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_312.x, x_312.y));
  let x_315 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_314.x, x_315.y, x_315.z, x_314.y);
  let x_317 : vec4<f32> = u_xlat1;
  let x_319 : vec2<f32> = u_xlat8;
  let x_320 : vec2<f32> = min(vec2<f32>(x_317.x, x_317.w), x_319);
  let x_321 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_320.x, x_321.y, x_321.z, x_320.y);
  let x_323 : vec4<f32> = u_xlat1;
  let x_327 : vec4<f32> = x_25.x_Bloom_Texture_TexelSize;
  let x_330 : vec2<f32> = ((vec2<f32>(x_323.x, x_323.w) * vec2<f32>(x_327.z, x_327.w)) + vec2<f32>(0.5f, 0.5f));
  let x_331 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_330.x, x_331.y, x_331.z, x_330.y);
  let x_333 : vec4<f32> = u_xlat1;
  let x_335 : vec2<f32> = floor(vec2<f32>(x_333.x, x_333.w));
  let x_336 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_335.x, x_335.y, x_336.z, x_336.w);
  let x_338 : vec4<f32> = u_xlat1;
  let x_340 : vec2<f32> = fract(vec2<f32>(x_338.x, x_338.w));
  let x_341 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_340.x, x_341.y, x_341.z, x_340.y);
  let x_343 : vec4<f32> = u_xlat1;
  u_xlat3 = ((-(vec4<f32>(x_343.x, x_343.w, x_343.x, x_343.w)) * vec4<f32>(0.5f, 0.5f, 0.16666667163372039795f, 0.16666667163372039795f)) + vec4<f32>(0.5f, 0.5f, 0.5f, 0.5f));
  let x_351 : vec4<f32> = u_xlat1;
  let x_353 : vec4<f32> = u_xlat3;
  u_xlat3 = ((vec4<f32>(x_351.x, x_351.w, x_351.x, x_351.w) * x_353) + vec4<f32>(0.5f, 0.5f, -0.5f, -0.5f));
  let x_357 : vec4<f32> = u_xlat1;
  u_xlat16 = ((vec2<f32>(x_357.x, x_357.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(-1.0f, -1.0f));
  let x_363 : vec4<f32> = u_xlat1;
  let x_365 : vec4<f32> = u_xlat1;
  let x_367 : vec2<f32> = (vec2<f32>(x_363.x, x_363.w) * vec2<f32>(x_365.x, x_365.w));
  let x_368 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_367.x, x_367.y, x_368.z, x_368.w);
  let x_370 : vec4<f32> = u_xlat4;
  let x_372 : vec2<f32> = u_xlat16;
  u_xlat16 = ((vec2<f32>(x_370.x, x_370.y) * x_372) + vec2<f32>(0.6666666865348815918f, 0.6666666865348815918f));
  let x_377 : vec4<f32> = u_xlat1;
  let x_379 : vec4<f32> = u_xlat3;
  u_xlat3 = ((vec4<f32>(x_377.x, x_377.w, x_377.x, x_377.w) * x_379) + vec4<f32>(0.16666667163372039795f, 0.16666667163372039795f, 0.16666667163372039795f, 0.16666667163372039795f));
  let x_383 : vec2<f32> = u_xlat16;
  let x_386 : vec2<f32> = (-(x_383) + vec2<f32>(1.0f, 1.0f));
  let x_387 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_386.x, x_387.y, x_387.z, x_386.y);
  let x_389 : vec4<f32> = u_xlat3;
  let x_392 : vec4<f32> = u_xlat1;
  let x_394 : vec2<f32> = (-(vec2<f32>(x_389.x, x_389.y)) + vec2<f32>(x_392.x, x_392.w));
  let x_395 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_394.x, x_395.y, x_395.z, x_394.y);
  let x_397 : vec4<f32> = u_xlat3;
  let x_400 : vec4<f32> = u_xlat1;
  let x_402 : vec2<f32> = (-(vec2<f32>(x_397.z, x_397.w)) + vec2<f32>(x_400.x, x_400.w));
  let x_403 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_402.x, x_403.y, x_403.z, x_402.y);
  let x_406 : vec2<f32> = u_xlat16;
  let x_407 : vec4<f32> = u_xlat3;
  u_xlat17 = (x_406 + vec2<f32>(x_407.z, x_407.w));
  let x_410 : vec4<f32> = u_xlat1;
  let x_412 : vec4<f32> = u_xlat3;
  let x_414 : vec2<f32> = (vec2<f32>(x_410.x, x_410.w) + vec2<f32>(x_412.x, x_412.y));
  let x_415 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_414.x, x_414.y, x_415.z, x_415.w);
  let x_417 : vec2<f32> = u_xlat17;
  let x_421 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_417.x, x_417.y));
  let x_422 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_421.x, x_421.y, x_422.z, x_422.w);
  let x_424 : vec2<f32> = u_xlat16;
  let x_425 : vec4<f32> = u_xlat4;
  let x_428 : vec2<f32> = ((x_424 * vec2<f32>(x_425.x, x_425.y)) + vec2<f32>(-1.0f, -1.0f));
  let x_429 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_429.x, x_429.y, x_428.x, x_428.y);
  let x_431 : vec4<f32> = u_xlat3;
  let x_432 : vec2<f32> = vec2<f32>(x_431.x, x_431.y);
  u_xlat16 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_432.x, x_432.y));
  let x_437 : vec4<f32> = u_xlat1;
  let x_439 : vec2<f32> = u_xlat16;
  let x_441 : vec2<f32> = ((vec2<f32>(x_437.x, x_437.w) * x_439) + vec2<f32>(1.0f, 1.0f));
  let x_442 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_441.x, x_441.y, x_442.z, x_442.w);
  let x_445 : vec4<f32> = u_xlat2;
  let x_447 : vec4<f32> = u_xlat4;
  u_xlat5 = (vec4<f32>(x_445.x, x_445.y, x_445.x, x_445.y) + vec4<f32>(x_447.z, x_447.w, x_447.x, x_447.w));
  let x_450 : vec4<f32> = u_xlat5;
  u_xlat5 = (x_450 + vec4<f32>(-0.5f, -0.5f, -0.5f, -0.5f));
  let x_453 : vec4<f32> = u_xlat5;
  let x_455 : vec4<f32> = x_25.x_Bloom_Texture_TexelSize;
  u_xlat5 = (x_453 * vec4<f32>(x_455.x, x_455.y, x_455.x, x_455.y));
  let x_458 : vec4<f32> = u_xlat5;
  u_xlat5 = min(x_458, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_466 : vec4<f32> = u_xlat5;
  let x_468 : vec4<f32> = textureSampleLevel(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_466.x, x_466.y), 0.0f);
  u_xlat6 = x_468;
  let x_472 : vec4<f32> = u_xlat5;
  let x_474 : vec4<f32> = textureSampleLevel(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_472.z, x_472.w), 0.0f);
  u_xlat5 = x_474;
  let x_475 : vec4<f32> = u_xlat3;
  let x_477 : vec4<f32> = u_xlat5;
  u_xlat5 = (vec4<f32>(x_475.x, x_475.x, x_475.x, x_475.x) * x_477);
  let x_479 : vec2<f32> = u_xlat17;
  let x_481 : vec4<f32> = u_xlat6;
  let x_483 : vec4<f32> = u_xlat5;
  u_xlat5 = ((vec4<f32>(x_479.x, x_479.x, x_479.x, x_479.x) * x_481) + x_483);
  let x_485 : vec4<f32> = u_xlat2;
  let x_487 : vec4<f32> = u_xlat4;
  u_xlat2 = (vec4<f32>(x_485.x, x_485.y, x_485.x, x_485.y) + vec4<f32>(x_487.z, x_487.y, x_487.x, x_487.y));
  let x_490 : vec4<f32> = u_xlat2;
  u_xlat2 = (x_490 + vec4<f32>(-0.5f, -0.5f, -0.5f, -0.5f));
  let x_492 : vec4<f32> = u_xlat2;
  let x_494 : vec4<f32> = x_25.x_Bloom_Texture_TexelSize;
  u_xlat2 = (x_492 * vec4<f32>(x_494.x, x_494.y, x_494.x, x_494.y));
  let x_497 : vec4<f32> = u_xlat2;
  u_xlat2 = min(x_497, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_502 : vec4<f32> = u_xlat2;
  let x_504 : vec4<f32> = textureSampleLevel(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_502.x, x_502.y), 0.0f);
  u_xlat4 = x_504;
  let x_508 : vec4<f32> = u_xlat2;
  let x_510 : vec4<f32> = textureSampleLevel(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_508.z, x_508.w), 0.0f);
  u_xlat2 = x_510;
  let x_511 : vec4<f32> = u_xlat2;
  let x_512 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_511 * vec4<f32>(x_512.x, x_512.x, x_512.x, x_512.x));
  let x_515 : vec2<f32> = u_xlat17;
  let x_517 : vec4<f32> = u_xlat4;
  let x_519 : vec4<f32> = u_xlat2;
  u_xlat2 = ((vec4<f32>(x_515.x, x_515.x, x_515.x, x_515.x) * x_517) + x_519);
  let x_521 : vec4<f32> = u_xlat2;
  let x_522 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_521 * vec4<f32>(x_522.y, x_522.y, x_522.y, x_522.y));
  let x_525 : vec2<f32> = u_xlat17;
  let x_527 : vec4<f32> = u_xlat5;
  let x_529 : vec4<f32> = u_xlat2;
  u_xlat2 = ((vec4<f32>(x_525.y, x_525.y, x_525.y, x_525.y) * x_527) + x_529);
  let x_534 : f32 = x_25.x_Bloom_RGBM;
  u_xlatb21 = (0.0f < x_534);
  let x_536 : bool = u_xlatb21;
  if (x_536) {
    let x_539 : vec4<f32> = u_xlat2;
    let x_541 : vec4<f32> = u_xlat2;
    let x_543 : vec3<f32> = (vec3<f32>(x_539.w, x_539.w, x_539.w) * vec3<f32>(x_541.x, x_541.y, x_541.z));
    let x_544 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_543.x, x_543.y, x_543.z, x_544.w);
    let x_546 : vec4<f32> = u_xlat3;
    let x_550 : vec3<f32> = (vec3<f32>(x_546.x, x_546.y, x_546.z) * vec3<f32>(8.0f, 8.0f, 8.0f));
    let x_551 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_550.x, x_550.y, x_550.z, x_551.w);
  }
  let x_553 : vec4<f32> = u_xlat2;
  let x_557 : vec4<f32> = x_25.x_Bloom_Params;
  let x_559 : vec3<f32> = (vec3<f32>(x_553.x, x_553.y, x_553.z) * vec3<f32>(x_557.x, x_557.x, x_557.x));
  let x_560 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_559.x, x_559.y, x_559.z, x_560.w);
  let x_562 : vec4<f32> = u_xlat2;
  let x_565 : vec4<f32> = x_25.x_Bloom_Params;
  let x_568 : vec4<f32> = u_xlat0;
  let x_570 : vec3<f32> = ((vec3<f32>(x_562.x, x_562.y, x_562.z) * vec3<f32>(x_565.y, x_565.z, x_565.w)) + vec3<f32>(x_568.x, x_568.y, x_568.z));
  let x_571 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_570.x, x_570.y, x_570.z, x_571.w);
  let x_576 : f32 = x_25.x_Vignette_Params2.z;
  u_xlatb21 = (0.0f < x_576);
  let x_578 : bool = u_xlatb21;
  if (x_578) {
    let x_581 : vec2<f32> = u_xlat8;
    let x_583 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_586 : vec2<f32> = (x_581 + -(vec2<f32>(x_583.x, x_583.y)));
    let x_587 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_586.x, x_586.y, x_587.z, x_587.w);
    let x_589 : vec4<f32> = u_xlat1;
    let x_593 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_595 : vec2<f32> = (abs(vec2<f32>(x_589.x, x_589.y)) * vec2<f32>(x_593.z, x_593.z));
    let x_596 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_596.x, x_595.x, x_595.y, x_596.w);
    let x_599 : f32 = u_xlat1.y;
    let x_602 : f32 = x_25.x_Vignette_Params1.w;
    u_xlat1.x = (x_599 * x_602);
    let x_606 : vec4<f32> = u_xlat1;
    let x_608 : vec4<f32> = u_xlat1;
    u_xlat21 = dot(vec2<f32>(x_606.x, x_606.z), vec2<f32>(x_608.x, x_608.z));
    let x_611 : f32 = u_xlat21;
    u_xlat21 = (-(x_611) + 1.0f);
    let x_614 : f32 = u_xlat21;
    u_xlat21 = max(x_614, 0.0f);
    let x_616 : f32 = u_xlat21;
    u_xlat21 = log2(x_616);
    let x_618 : f32 = u_xlat21;
    let x_620 : f32 = x_25.x_Vignette_Params2.w;
    u_xlat21 = (x_618 * x_620);
    let x_622 : f32 = u_xlat21;
    u_xlat21 = exp2(x_622);
    let x_625 : vec4<f32> = x_25.x_Vignette_Params1;
    let x_629 : vec3<f32> = (-(vec3<f32>(x_625.x, x_625.y, x_625.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_630 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_629.x, x_629.y, x_629.z, x_630.w);
    let x_632 : f32 = u_xlat21;
    let x_634 : vec4<f32> = u_xlat1;
    let x_638 : vec4<f32> = x_25.x_Vignette_Params1;
    let x_640 : vec3<f32> = ((vec3<f32>(x_632, x_632, x_632) * vec3<f32>(x_634.x, x_634.y, x_634.z)) + vec3<f32>(x_638.x, x_638.y, x_638.z));
    let x_641 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_640.x, x_640.y, x_640.z, x_641.w);
    let x_643 : vec4<f32> = u_xlat0;
    let x_645 : vec4<f32> = u_xlat1;
    let x_647 : vec3<f32> = (vec3<f32>(x_643.x, x_643.y, x_643.z) * vec3<f32>(x_645.x, x_645.y, x_645.z));
    let x_648 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_647.x, x_647.y, x_647.z, x_648.w);
  }
  let x_650 : vec4<f32> = u_xlat0;
  let x_654 : vec4<f32> = x_25.x_Lut_Params;
  let x_656 : vec3<f32> = (vec3<f32>(x_650.x, x_650.y, x_650.z) * vec3<f32>(x_654.w, x_654.w, x_654.w));
  let x_657 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_656.x, x_656.y, x_656.z, x_657.w);
  let x_659 : vec4<f32> = u_xlat0;
  let x_663 : vec3<f32> = clamp(vec3<f32>(x_659.x, x_659.y, x_659.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_664 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_663.x, x_663.y, x_663.z, x_664.w);
  let x_668 : f32 = x_25.x_UserLut_Params.w;
  u_xlatb21 = (0.0f < x_668);
  let x_670 : bool = u_xlatb21;
  if (x_670) {
    let x_673 : vec4<f32> = u_xlat0;
    let x_677 : vec3<f32> = (vec3<f32>(x_673.x, x_673.y, x_673.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
    let x_678 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_677.x, x_677.y, x_677.z, x_678.w);
    let x_680 : vec4<f32> = u_xlat0;
    let x_682 : vec3<f32> = log2(vec3<f32>(x_680.x, x_680.y, x_680.z));
    let x_683 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_682.x, x_682.y, x_682.z, x_683.w);
    let x_685 : vec4<f32> = u_xlat2;
    let x_689 : vec3<f32> = (vec3<f32>(x_685.x, x_685.y, x_685.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
    let x_690 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_689.x, x_689.y, x_689.z, x_690.w);
    let x_692 : vec4<f32> = u_xlat2;
    let x_694 : vec3<f32> = exp2(vec3<f32>(x_692.x, x_692.y, x_692.z));
    let x_695 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_694.x, x_694.y, x_694.z, x_695.w);
    let x_697 : vec4<f32> = u_xlat2;
    let x_704 : vec3<f32> = ((vec3<f32>(x_697.x, x_697.y, x_697.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
    let x_705 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_704.x, x_704.y, x_704.z, x_705.w);
    let x_710 : vec4<f32> = u_xlat0;
    let x_713 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_710.x, x_710.y, x_710.z, x_710.x));
    u_xlatb3 = vec3<bool>(x_713.x, x_713.y, x_713.z);
    let x_717 : vec4<f32> = u_xlat1;
    hlslcc_movcTemp = x_717;
    let x_719 : bool = u_xlatb3.x;
    if (x_719) {
      let x_724 : f32 = u_xlat1.x;
      x_720 = x_724;
    } else {
      let x_727 : f32 = u_xlat2.x;
      x_720 = x_727;
    }
    let x_728 : f32 = x_720;
    hlslcc_movcTemp.x = x_728;
    let x_731 : bool = u_xlatb3.y;
    if (x_731) {
      let x_736 : f32 = u_xlat1.y;
      x_732 = x_736;
    } else {
      let x_739 : f32 = u_xlat2.y;
      x_732 = x_739;
    }
    let x_740 : f32 = x_732;
    hlslcc_movcTemp.y = x_740;
    let x_743 : bool = u_xlatb3.z;
    if (x_743) {
      let x_748 : f32 = u_xlat1.z;
      x_744 = x_748;
    } else {
      let x_751 : f32 = u_xlat2.z;
      x_744 = x_751;
    }
    let x_752 : f32 = x_744;
    hlslcc_movcTemp.z = x_752;
    let x_754 : vec4<f32> = hlslcc_movcTemp;
    u_xlat1 = x_754;
    let x_755 : vec4<f32> = u_xlat1;
    let x_758 : vec4<f32> = x_25.x_UserLut_Params;
    let x_760 : vec3<f32> = (vec3<f32>(x_755.z, x_755.x, x_755.y) * vec3<f32>(x_758.z, x_758.z, x_758.z));
    let x_761 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_760.x, x_760.y, x_760.z, x_761.w);
    let x_764 : f32 = u_xlat2.x;
    u_xlat21 = floor(x_764);
    let x_767 : vec4<f32> = x_25.x_UserLut_Params;
    let x_769 : vec2<f32> = (vec2<f32>(x_767.x, x_767.y) * vec2<f32>(0.5f, 0.5f));
    let x_770 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_769.x, x_770.y, x_770.z, x_769.y);
    let x_772 : vec4<f32> = u_xlat2;
    let x_775 : vec4<f32> = x_25.x_UserLut_Params;
    let x_778 : vec4<f32> = u_xlat2;
    let x_780 : vec2<f32> = ((vec2<f32>(x_772.y, x_772.z) * vec2<f32>(x_775.x, x_775.y)) + vec2<f32>(x_778.x, x_778.w));
    let x_781 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_781.x, x_780.x, x_780.y, x_781.w);
    let x_783 : f32 = u_xlat21;
    let x_785 : f32 = x_25.x_UserLut_Params.y;
    let x_788 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_783 * x_785) + x_788);
    let x_795 : vec4<f32> = u_xlat2;
    let x_797 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_795.x, x_795.z), 0.0f);
    let x_798 : vec3<f32> = vec3<f32>(x_797.x, x_797.y, x_797.z);
    let x_799 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_798.x, x_798.y, x_798.z, x_799.w);
    let x_802 : f32 = x_25.x_UserLut_Params.y;
    u_xlat4.x = x_802;
    u_xlat4.y = 0.0f;
    let x_805 : vec4<f32> = u_xlat2;
    let x_807 : vec4<f32> = u_xlat4;
    let x_809 : vec2<f32> = (vec2<f32>(x_805.x, x_805.z) + vec2<f32>(x_807.x, x_807.y));
    let x_810 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_809.x, x_809.y, x_810.z, x_810.w);
    let x_815 : vec4<f32> = u_xlat2;
    let x_817 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_815.x, x_815.y), 0.0f);
    let x_818 : vec3<f32> = vec3<f32>(x_817.x, x_817.y, x_817.z);
    let x_819 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_818.x, x_818.y, x_818.z, x_819.w);
    let x_822 : f32 = u_xlat1.z;
    let x_824 : f32 = x_25.x_UserLut_Params.z;
    let x_826 : f32 = u_xlat21;
    u_xlat21 = ((x_822 * x_824) + -(x_826));
    let x_829 : vec4<f32> = u_xlat3;
    let x_832 : vec4<f32> = u_xlat2;
    let x_834 : vec3<f32> = (-(vec3<f32>(x_829.x, x_829.y, x_829.z)) + vec3<f32>(x_832.x, x_832.y, x_832.z));
    let x_835 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_834.x, x_834.y, x_834.z, x_835.w);
    let x_837 : f32 = u_xlat21;
    let x_839 : vec4<f32> = u_xlat2;
    let x_842 : vec4<f32> = u_xlat3;
    let x_844 : vec3<f32> = ((vec3<f32>(x_837, x_837, x_837) * vec3<f32>(x_839.x, x_839.y, x_839.z)) + vec3<f32>(x_842.x, x_842.y, x_842.z));
    let x_845 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_844.x, x_844.y, x_844.z, x_845.w);
    let x_847 : vec4<f32> = u_xlat1;
    let x_850 : vec4<f32> = u_xlat2;
    let x_852 : vec3<f32> = (-(vec3<f32>(x_847.x, x_847.y, x_847.z)) + vec3<f32>(x_850.x, x_850.y, x_850.z));
    let x_853 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_852.x, x_852.y, x_852.z, x_853.w);
    let x_856 : vec4<f32> = x_25.x_UserLut_Params;
    let x_858 : vec4<f32> = u_xlat2;
    let x_861 : vec4<f32> = u_xlat1;
    let x_863 : vec3<f32> = ((vec3<f32>(x_856.w, x_856.w, x_856.w) * vec3<f32>(x_858.x, x_858.y, x_858.z)) + vec3<f32>(x_861.x, x_861.y, x_861.z));
    let x_864 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_863.x, x_863.y, x_863.z, x_864.w);
    let x_866 : vec4<f32> = u_xlat1;
    let x_870 : vec3<f32> = (vec3<f32>(x_866.x, x_866.y, x_866.z) * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
    let x_871 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_870.x, x_870.y, x_870.z, x_871.w);
    let x_873 : vec4<f32> = u_xlat1;
    let x_877 : vec3<f32> = (vec3<f32>(x_873.x, x_873.y, x_873.z) + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
    let x_878 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_877.x, x_877.y, x_877.z, x_878.w);
    let x_880 : vec4<f32> = u_xlat3;
    let x_884 : vec3<f32> = (vec3<f32>(x_880.x, x_880.y, x_880.z) * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
    let x_885 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_884.x, x_884.y, x_884.z, x_885.w);
    let x_887 : vec4<f32> = u_xlat3;
    let x_890 : vec3<f32> = log2(abs(vec3<f32>(x_887.x, x_887.y, x_887.z)));
    let x_891 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_890.x, x_890.y, x_890.z, x_891.w);
    let x_893 : vec4<f32> = u_xlat3;
    let x_897 : vec3<f32> = (vec3<f32>(x_893.x, x_893.y, x_893.z) * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
    let x_898 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_897.x, x_897.y, x_897.z, x_898.w);
    let x_900 : vec4<f32> = u_xlat3;
    let x_902 : vec3<f32> = exp2(vec3<f32>(x_900.x, x_900.y, x_900.z));
    let x_903 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_902.x, x_902.y, x_902.z, x_903.w);
    let x_907 : vec4<f32> = u_xlat1;
    let x_909 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_907.x, x_907.y, x_907.z, x_907.x));
    u_xlatb1 = vec3<bool>(x_909.x, x_909.y, x_909.z);
    let x_912 : bool = u_xlatb1.x;
    if (x_912) {
      let x_917 : f32 = u_xlat2.x;
      x_913 = x_917;
    } else {
      let x_920 : f32 = u_xlat3.x;
      x_913 = x_920;
    }
    let x_921 : f32 = x_913;
    u_xlat0.x = x_921;
    let x_924 : bool = u_xlatb1.y;
    if (x_924) {
      let x_929 : f32 = u_xlat2.y;
      x_925 = x_929;
    } else {
      let x_932 : f32 = u_xlat3.y;
      x_925 = x_932;
    }
    let x_933 : f32 = x_925;
    u_xlat0.y = x_933;
    let x_936 : bool = u_xlatb1.z;
    if (x_936) {
      let x_941 : f32 = u_xlat2.z;
      x_937 = x_941;
    } else {
      let x_944 : f32 = u_xlat3.z;
      x_937 = x_944;
    }
    let x_945 : f32 = x_937;
    u_xlat0.z = x_945;
  }
  let x_947 : vec4<f32> = u_xlat0;
  let x_950 : vec4<f32> = x_25.x_Lut_Params;
  let x_952 : vec3<f32> = (vec3<f32>(x_947.x, x_947.y, x_947.z) * vec3<f32>(x_950.z, x_950.z, x_950.z));
  let x_953 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_952.x, x_952.y, x_953.z, x_952.z);
  let x_956 : f32 = u_xlat0.w;
  u_xlat21 = floor(x_956);
  let x_959 : vec4<f32> = x_25.x_Lut_Params;
  let x_961 : vec2<f32> = (vec2<f32>(x_959.x, x_959.y) * vec2<f32>(0.5f, 0.5f));
  let x_962 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_961.x, x_961.y, x_962.z, x_962.w);
  let x_964 : vec4<f32> = u_xlat0;
  let x_967 : vec4<f32> = x_25.x_Lut_Params;
  let x_970 : vec4<f32> = u_xlat1;
  let x_972 : vec2<f32> = ((vec2<f32>(x_964.x, x_964.y) * vec2<f32>(x_967.x, x_967.y)) + vec2<f32>(x_970.x, x_970.y));
  let x_973 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_973.x, x_972.x, x_972.y, x_973.w);
  let x_975 : f32 = u_xlat21;
  let x_977 : f32 = x_25.x_Lut_Params.y;
  let x_980 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_975 * x_977) + x_980);
  let x_987 : vec4<f32> = u_xlat1;
  let x_989 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_987.x, x_987.z), 0.0f);
  let x_990 : vec3<f32> = vec3<f32>(x_989.x, x_989.y, x_989.z);
  let x_991 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_990.x, x_990.y, x_990.z, x_991.w);
  let x_994 : f32 = x_25.x_Lut_Params.y;
  u_xlat0.x = x_994;
  u_xlat0.y = 0.0f;
  let x_997 : vec4<f32> = u_xlat0;
  let x_999 : vec4<f32> = u_xlat1;
  let x_1001 : vec2<f32> = (vec2<f32>(x_997.x, x_997.y) + vec2<f32>(x_999.x, x_999.z));
  let x_1002 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1001.x, x_1001.y, x_1002.z, x_1002.w);
  let x_1007 : vec4<f32> = u_xlat0;
  let x_1009 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1007.x, x_1007.y), 0.0f);
  let x_1010 : vec3<f32> = vec3<f32>(x_1009.x, x_1009.y, x_1009.z);
  let x_1011 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1010.x, x_1010.y, x_1010.z, x_1011.w);
  let x_1014 : f32 = u_xlat0.z;
  let x_1016 : f32 = x_25.x_Lut_Params.z;
  let x_1018 : f32 = u_xlat21;
  u_xlat0.x = ((x_1014 * x_1016) + -(x_1018));
  let x_1024 : vec4<f32> = u_xlat2;
  let x_1027 : vec4<f32> = u_xlat1;
  u_xlat7 = (-(vec3<f32>(x_1024.x, x_1024.y, x_1024.z)) + vec3<f32>(x_1027.x, x_1027.y, x_1027.z));
  let x_1030 : vec4<f32> = u_xlat0;
  let x_1032 : vec3<f32> = u_xlat7;
  let x_1034 : vec4<f32> = u_xlat2;
  let x_1036 : vec3<f32> = ((vec3<f32>(x_1030.x, x_1030.x, x_1030.x) * x_1032) + vec3<f32>(x_1034.x, x_1034.y, x_1034.z));
  let x_1037 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1036.x, x_1036.y, x_1036.z, x_1037.w);
  let x_1039 : vec4<f32> = u_xlat0;
  let x_1041 : vec3<f32> = (vec3<f32>(x_1039.x, x_1039.y, x_1039.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
  let x_1042 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1041.x, x_1041.y, x_1041.z, x_1042.w);
  let x_1044 : vec4<f32> = u_xlat0;
  let x_1047 : vec3<f32> = log2(abs(vec3<f32>(x_1044.x, x_1044.y, x_1044.z)));
  let x_1048 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1047.x, x_1047.y, x_1047.z, x_1048.w);
  let x_1050 : vec4<f32> = u_xlat2;
  let x_1052 : vec3<f32> = (vec3<f32>(x_1050.x, x_1050.y, x_1050.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
  let x_1053 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1052.x, x_1052.y, x_1052.z, x_1053.w);
  let x_1055 : vec4<f32> = u_xlat2;
  let x_1057 : vec3<f32> = exp2(vec3<f32>(x_1055.x, x_1055.y, x_1055.z));
  let x_1058 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1057.x, x_1057.y, x_1057.z, x_1058.w);
  let x_1060 : vec4<f32> = u_xlat2;
  let x_1063 : vec3<f32> = ((vec3<f32>(x_1060.x, x_1060.y, x_1060.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
  let x_1064 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1063.x, x_1063.y, x_1063.z, x_1064.w);
  let x_1067 : vec4<f32> = u_xlat0;
  let x_1069 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_1067.x, x_1067.y, x_1067.z, x_1067.x));
  u_xlatb0 = vec3<bool>(x_1069.x, x_1069.y, x_1069.z);
  let x_1074 : bool = u_xlatb0.x;
  if (x_1074) {
    let x_1079 : f32 = u_xlat1.x;
    x_1075 = x_1079;
  } else {
    let x_1082 : f32 = u_xlat2.x;
    x_1075 = x_1082;
  }
  let x_1083 : f32 = x_1075;
  SV_Target0.x = x_1083;
  let x_1087 : bool = u_xlatb0.y;
  if (x_1087) {
    let x_1092 : f32 = u_xlat1.y;
    x_1088 = x_1092;
  } else {
    let x_1095 : f32 = u_xlat2.y;
    x_1088 = x_1095;
  }
  let x_1096 : f32 = x_1088;
  SV_Target0.y = x_1096;
  let x_1099 : bool = u_xlatb0.z;
  if (x_1099) {
    let x_1104 : f32 = u_xlat1.z;
    x_1100 = x_1104;
  } else {
    let x_1107 : f32 = u_xlat2.z;
    x_1100 = x_1107;
  }
  let x_1108 : f32 = x_1100;
  SV_Target0.z = x_1108;
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


