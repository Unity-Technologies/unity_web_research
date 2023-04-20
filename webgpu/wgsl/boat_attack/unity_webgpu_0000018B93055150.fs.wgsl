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

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_210 : f32;
  var x_242 : f32;
  var hlslcc_movcTemp : vec4<f32>;
  var x_784 : f32;
  var x_796 : f32;
  var x_808 : f32;
  var x_977 : f32;
  var x_989 : f32;
  var x_1001 : f32;
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
  let x_663 : vec3<f32> = (vec3<f32>(x_659.x, x_659.y, x_659.z) * vec3<f32>(1.31338608264923095703f, 1.31338608264923095703f, 1.31338608264923095703f));
  let x_664 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_663.x, x_663.y, x_663.z, x_664.w);
  let x_666 : vec4<f32> = u_xlat0;
  let x_673 : vec3<f32> = ((vec3<f32>(x_666.x, x_666.y, x_666.z) * vec3<f32>(0.26267722249031066895f, 0.26267722249031066895f, 0.26267722249031066895f)) + vec3<f32>(0.06959999352693557739f, 0.06959999352693557739f, 0.06959999352693557739f));
  let x_674 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_673.x, x_673.y, x_673.z, x_674.w);
  let x_676 : vec4<f32> = u_xlat1;
  let x_678 : vec4<f32> = u_xlat2;
  let x_683 : vec3<f32> = ((vec3<f32>(x_676.x, x_676.y, x_676.z) * vec3<f32>(x_678.x, x_678.y, x_678.z)) + vec3<f32>(0.00543999997898936272f, 0.00543999997898936272f, 0.00543999997898936272f));
  let x_684 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_683.x, x_683.y, x_683.z, x_684.w);
  let x_686 : vec4<f32> = u_xlat0;
  let x_691 : vec3<f32> = ((vec3<f32>(x_686.x, x_686.y, x_686.z) * vec3<f32>(0.26267722249031066895f, 0.26267722249031066895f, 0.26267722249031066895f)) + vec3<f32>(0.28999999165534973145f, 0.28999999165534973145f, 0.28999999165534973145f));
  let x_692 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_691.x, x_691.y, x_691.z, x_692.w);
  let x_694 : vec4<f32> = u_xlat1;
  let x_696 : vec4<f32> = u_xlat0;
  let x_701 : vec3<f32> = ((vec3<f32>(x_694.x, x_694.y, x_694.z) * vec3<f32>(x_696.x, x_696.y, x_696.z)) + vec3<f32>(0.08160001039505004883f, 0.08160001039505004883f, 0.08160001039505004883f));
  let x_702 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_701.x, x_701.y, x_701.z, x_702.w);
  let x_704 : vec4<f32> = u_xlat2;
  let x_706 : vec4<f32> = u_xlat0;
  let x_708 : vec3<f32> = (vec3<f32>(x_704.x, x_704.y, x_704.z) / vec3<f32>(x_706.x, x_706.y, x_706.z));
  let x_709 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_708.x, x_708.y, x_708.z, x_709.w);
  let x_711 : vec4<f32> = u_xlat0;
  let x_715 : vec3<f32> = (vec3<f32>(x_711.x, x_711.y, x_711.z) + vec3<f32>(-0.06666666269302368164f, -0.06666666269302368164f, -0.06666666269302368164f));
  let x_716 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_715.x, x_715.y, x_715.z, x_716.w);
  let x_718 : vec4<f32> = u_xlat0;
  let x_720 : vec3<f32> = (vec3<f32>(x_718.x, x_718.y, x_718.z) * vec3<f32>(1.31338608264923095703f, 1.31338608264923095703f, 1.31338608264923095703f));
  let x_721 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_720.x, x_720.y, x_720.z, x_721.w);
  let x_723 : vec4<f32> = u_xlat0;
  let x_727 : vec3<f32> = clamp(vec3<f32>(x_723.x, x_723.y, x_723.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_728 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_727.x, x_727.y, x_727.z, x_728.w);
  let x_732 : f32 = x_25.x_UserLut_Params.w;
  u_xlatb21 = (0.0f < x_732);
  let x_734 : bool = u_xlatb21;
  if (x_734) {
    let x_737 : vec4<f32> = u_xlat0;
    let x_741 : vec3<f32> = (vec3<f32>(x_737.x, x_737.y, x_737.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
    let x_742 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_741.x, x_741.y, x_741.z, x_742.w);
    let x_744 : vec4<f32> = u_xlat0;
    let x_746 : vec3<f32> = log2(vec3<f32>(x_744.x, x_744.y, x_744.z));
    let x_747 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_746.x, x_746.y, x_746.z, x_747.w);
    let x_749 : vec4<f32> = u_xlat2;
    let x_753 : vec3<f32> = (vec3<f32>(x_749.x, x_749.y, x_749.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
    let x_754 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_753.x, x_753.y, x_753.z, x_754.w);
    let x_756 : vec4<f32> = u_xlat2;
    let x_758 : vec3<f32> = exp2(vec3<f32>(x_756.x, x_756.y, x_756.z));
    let x_759 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_758.x, x_758.y, x_758.z, x_759.w);
    let x_761 : vec4<f32> = u_xlat2;
    let x_768 : vec3<f32> = ((vec3<f32>(x_761.x, x_761.y, x_761.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
    let x_769 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_768.x, x_768.y, x_768.z, x_769.w);
    let x_774 : vec4<f32> = u_xlat0;
    let x_777 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_774.x, x_774.y, x_774.z, x_774.x));
    u_xlatb3 = vec3<bool>(x_777.x, x_777.y, x_777.z);
    let x_781 : vec4<f32> = u_xlat1;
    hlslcc_movcTemp = x_781;
    let x_783 : bool = u_xlatb3.x;
    if (x_783) {
      let x_788 : f32 = u_xlat1.x;
      x_784 = x_788;
    } else {
      let x_791 : f32 = u_xlat2.x;
      x_784 = x_791;
    }
    let x_792 : f32 = x_784;
    hlslcc_movcTemp.x = x_792;
    let x_795 : bool = u_xlatb3.y;
    if (x_795) {
      let x_800 : f32 = u_xlat1.y;
      x_796 = x_800;
    } else {
      let x_803 : f32 = u_xlat2.y;
      x_796 = x_803;
    }
    let x_804 : f32 = x_796;
    hlslcc_movcTemp.y = x_804;
    let x_807 : bool = u_xlatb3.z;
    if (x_807) {
      let x_812 : f32 = u_xlat1.z;
      x_808 = x_812;
    } else {
      let x_815 : f32 = u_xlat2.z;
      x_808 = x_815;
    }
    let x_816 : f32 = x_808;
    hlslcc_movcTemp.z = x_816;
    let x_818 : vec4<f32> = hlslcc_movcTemp;
    u_xlat1 = x_818;
    let x_819 : vec4<f32> = u_xlat1;
    let x_822 : vec4<f32> = x_25.x_UserLut_Params;
    let x_824 : vec3<f32> = (vec3<f32>(x_819.z, x_819.x, x_819.y) * vec3<f32>(x_822.z, x_822.z, x_822.z));
    let x_825 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_824.x, x_824.y, x_824.z, x_825.w);
    let x_828 : f32 = u_xlat2.x;
    u_xlat21 = floor(x_828);
    let x_831 : vec4<f32> = x_25.x_UserLut_Params;
    let x_833 : vec2<f32> = (vec2<f32>(x_831.x, x_831.y) * vec2<f32>(0.5f, 0.5f));
    let x_834 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_833.x, x_834.y, x_834.z, x_833.y);
    let x_836 : vec4<f32> = u_xlat2;
    let x_839 : vec4<f32> = x_25.x_UserLut_Params;
    let x_842 : vec4<f32> = u_xlat2;
    let x_844 : vec2<f32> = ((vec2<f32>(x_836.y, x_836.z) * vec2<f32>(x_839.x, x_839.y)) + vec2<f32>(x_842.x, x_842.w));
    let x_845 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_845.x, x_844.x, x_844.y, x_845.w);
    let x_847 : f32 = u_xlat21;
    let x_849 : f32 = x_25.x_UserLut_Params.y;
    let x_852 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_847 * x_849) + x_852);
    let x_859 : vec4<f32> = u_xlat2;
    let x_861 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_859.x, x_859.z), 0.0f);
    let x_862 : vec3<f32> = vec3<f32>(x_861.x, x_861.y, x_861.z);
    let x_863 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_862.x, x_862.y, x_862.z, x_863.w);
    let x_866 : f32 = x_25.x_UserLut_Params.y;
    u_xlat4.x = x_866;
    u_xlat4.y = 0.0f;
    let x_869 : vec4<f32> = u_xlat2;
    let x_871 : vec4<f32> = u_xlat4;
    let x_873 : vec2<f32> = (vec2<f32>(x_869.x, x_869.z) + vec2<f32>(x_871.x, x_871.y));
    let x_874 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_873.x, x_873.y, x_874.z, x_874.w);
    let x_879 : vec4<f32> = u_xlat2;
    let x_881 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_879.x, x_879.y), 0.0f);
    let x_882 : vec3<f32> = vec3<f32>(x_881.x, x_881.y, x_881.z);
    let x_883 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_882.x, x_882.y, x_882.z, x_883.w);
    let x_886 : f32 = u_xlat1.z;
    let x_888 : f32 = x_25.x_UserLut_Params.z;
    let x_890 : f32 = u_xlat21;
    u_xlat21 = ((x_886 * x_888) + -(x_890));
    let x_893 : vec4<f32> = u_xlat3;
    let x_896 : vec4<f32> = u_xlat2;
    let x_898 : vec3<f32> = (-(vec3<f32>(x_893.x, x_893.y, x_893.z)) + vec3<f32>(x_896.x, x_896.y, x_896.z));
    let x_899 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_898.x, x_898.y, x_898.z, x_899.w);
    let x_901 : f32 = u_xlat21;
    let x_903 : vec4<f32> = u_xlat2;
    let x_906 : vec4<f32> = u_xlat3;
    let x_908 : vec3<f32> = ((vec3<f32>(x_901, x_901, x_901) * vec3<f32>(x_903.x, x_903.y, x_903.z)) + vec3<f32>(x_906.x, x_906.y, x_906.z));
    let x_909 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_908.x, x_908.y, x_908.z, x_909.w);
    let x_911 : vec4<f32> = u_xlat1;
    let x_914 : vec4<f32> = u_xlat2;
    let x_916 : vec3<f32> = (-(vec3<f32>(x_911.x, x_911.y, x_911.z)) + vec3<f32>(x_914.x, x_914.y, x_914.z));
    let x_917 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_916.x, x_916.y, x_916.z, x_917.w);
    let x_920 : vec4<f32> = x_25.x_UserLut_Params;
    let x_922 : vec4<f32> = u_xlat2;
    let x_925 : vec4<f32> = u_xlat1;
    let x_927 : vec3<f32> = ((vec3<f32>(x_920.w, x_920.w, x_920.w) * vec3<f32>(x_922.x, x_922.y, x_922.z)) + vec3<f32>(x_925.x, x_925.y, x_925.z));
    let x_928 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_927.x, x_927.y, x_927.z, x_928.w);
    let x_930 : vec4<f32> = u_xlat1;
    let x_934 : vec3<f32> = (vec3<f32>(x_930.x, x_930.y, x_930.z) * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
    let x_935 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_934.x, x_934.y, x_934.z, x_935.w);
    let x_937 : vec4<f32> = u_xlat1;
    let x_941 : vec3<f32> = (vec3<f32>(x_937.x, x_937.y, x_937.z) + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
    let x_942 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_941.x, x_941.y, x_941.z, x_942.w);
    let x_944 : vec4<f32> = u_xlat3;
    let x_948 : vec3<f32> = (vec3<f32>(x_944.x, x_944.y, x_944.z) * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
    let x_949 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_948.x, x_948.y, x_948.z, x_949.w);
    let x_951 : vec4<f32> = u_xlat3;
    let x_954 : vec3<f32> = log2(abs(vec3<f32>(x_951.x, x_951.y, x_951.z)));
    let x_955 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_954.x, x_954.y, x_954.z, x_955.w);
    let x_957 : vec4<f32> = u_xlat3;
    let x_961 : vec3<f32> = (vec3<f32>(x_957.x, x_957.y, x_957.z) * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
    let x_962 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_961.x, x_961.y, x_961.z, x_962.w);
    let x_964 : vec4<f32> = u_xlat3;
    let x_966 : vec3<f32> = exp2(vec3<f32>(x_964.x, x_964.y, x_964.z));
    let x_967 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_966.x, x_966.y, x_966.z, x_967.w);
    let x_971 : vec4<f32> = u_xlat1;
    let x_973 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_971.x, x_971.y, x_971.z, x_971.x));
    u_xlatb1 = vec3<bool>(x_973.x, x_973.y, x_973.z);
    let x_976 : bool = u_xlatb1.x;
    if (x_976) {
      let x_981 : f32 = u_xlat2.x;
      x_977 = x_981;
    } else {
      let x_984 : f32 = u_xlat3.x;
      x_977 = x_984;
    }
    let x_985 : f32 = x_977;
    u_xlat0.x = x_985;
    let x_988 : bool = u_xlatb1.y;
    if (x_988) {
      let x_993 : f32 = u_xlat2.y;
      x_989 = x_993;
    } else {
      let x_996 : f32 = u_xlat3.y;
      x_989 = x_996;
    }
    let x_997 : f32 = x_989;
    u_xlat0.y = x_997;
    let x_1000 : bool = u_xlatb1.z;
    if (x_1000) {
      let x_1005 : f32 = u_xlat2.z;
      x_1001 = x_1005;
    } else {
      let x_1008 : f32 = u_xlat3.z;
      x_1001 = x_1008;
    }
    let x_1009 : f32 = x_1001;
    u_xlat0.z = x_1009;
  }
  let x_1011 : vec4<f32> = u_xlat0;
  let x_1014 : vec4<f32> = x_25.x_Lut_Params;
  let x_1016 : vec3<f32> = (vec3<f32>(x_1011.x, x_1011.y, x_1011.z) * vec3<f32>(x_1014.z, x_1014.z, x_1014.z));
  let x_1017 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1016.x, x_1016.y, x_1017.z, x_1016.z);
  let x_1020 : f32 = u_xlat0.w;
  u_xlat21 = floor(x_1020);
  let x_1023 : vec4<f32> = x_25.x_Lut_Params;
  let x_1025 : vec2<f32> = (vec2<f32>(x_1023.x, x_1023.y) * vec2<f32>(0.5f, 0.5f));
  let x_1026 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1025.x, x_1025.y, x_1026.z, x_1026.w);
  let x_1028 : vec4<f32> = u_xlat0;
  let x_1031 : vec4<f32> = x_25.x_Lut_Params;
  let x_1034 : vec4<f32> = u_xlat1;
  let x_1036 : vec2<f32> = ((vec2<f32>(x_1028.x, x_1028.y) * vec2<f32>(x_1031.x, x_1031.y)) + vec2<f32>(x_1034.x, x_1034.y));
  let x_1037 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1037.x, x_1036.x, x_1036.y, x_1037.w);
  let x_1039 : f32 = u_xlat21;
  let x_1041 : f32 = x_25.x_Lut_Params.y;
  let x_1044 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_1039 * x_1041) + x_1044);
  let x_1051 : vec4<f32> = u_xlat1;
  let x_1053 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1051.x, x_1051.z), 0.0f);
  let x_1054 : vec3<f32> = vec3<f32>(x_1053.x, x_1053.y, x_1053.z);
  let x_1055 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1054.x, x_1054.y, x_1054.z, x_1055.w);
  let x_1058 : f32 = x_25.x_Lut_Params.y;
  u_xlat0.x = x_1058;
  u_xlat0.y = 0.0f;
  let x_1061 : vec4<f32> = u_xlat0;
  let x_1063 : vec4<f32> = u_xlat1;
  let x_1065 : vec2<f32> = (vec2<f32>(x_1061.x, x_1061.y) + vec2<f32>(x_1063.x, x_1063.z));
  let x_1066 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1065.x, x_1065.y, x_1066.z, x_1066.w);
  let x_1071 : vec4<f32> = u_xlat0;
  let x_1073 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1071.x, x_1071.y), 0.0f);
  let x_1074 : vec3<f32> = vec3<f32>(x_1073.x, x_1073.y, x_1073.z);
  let x_1075 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1074.x, x_1074.y, x_1074.z, x_1075.w);
  let x_1078 : f32 = u_xlat0.z;
  let x_1080 : f32 = x_25.x_Lut_Params.z;
  let x_1082 : f32 = u_xlat21;
  u_xlat0.x = ((x_1078 * x_1080) + -(x_1082));
  let x_1088 : vec4<f32> = u_xlat2;
  let x_1091 : vec4<f32> = u_xlat1;
  u_xlat7 = (-(vec3<f32>(x_1088.x, x_1088.y, x_1088.z)) + vec3<f32>(x_1091.x, x_1091.y, x_1091.z));
  let x_1094 : vec4<f32> = u_xlat0;
  let x_1096 : vec3<f32> = u_xlat7;
  let x_1098 : vec4<f32> = u_xlat2;
  let x_1100 : vec3<f32> = ((vec3<f32>(x_1094.x, x_1094.x, x_1094.x) * x_1096) + vec3<f32>(x_1098.x, x_1098.y, x_1098.z));
  let x_1101 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1100.x, x_1100.y, x_1100.z, x_1101.w);
  let x_1105 : vec4<f32> = u_xlat0;
  let x_1107 : vec3<f32> = sqrt(vec3<f32>(x_1105.x, x_1105.y, x_1105.z));
  let x_1108 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1107.x, x_1107.y, x_1107.z, x_1108.w);
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


