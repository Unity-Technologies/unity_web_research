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
  x_Chroma_Params : f32,
  /* @offset(176) */
  x_Vignette_Params1 : vec4<f32>,
  /* @offset(192) */
  x_Vignette_Params2 : vec4<f32>,
  /* @offset(208) */
  x_Grain_Params : vec2<f32>,
  /* @offset(224) */
  x_Grain_TilingParams : vec4<f32>,
  /* @offset(240) */
  x_Bloom_Texture_TexelSize : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat14 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_25 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlatb8 : bool;

var<private> u_xlat15 : vec2<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat22 : f32;

var<private> u_xlat9 : f32;

var<private> u_xlat16 : vec2<f32>;

var<private> u_xlat23 : f32;

var<private> u_xlatb3 : vec3<bool>;

var<private> u_xlatb1 : bool;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_LinearClamp : sampler;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat24 : f32;

var<private> u_xlat12 : f32;

var<private> u_xlat19 : f32;

var<private> u_xlatb26 : bool;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlatb4 : bool;

var<private> u_xlatb0 : vec3<bool>;

@group(0) @binding(1) var x_Bloom_Texture : texture_2d<f32>;

var<private> u_xlatb21 : bool;

var<private> u_xlat21 : f32;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlatb7 : bool;

var<private> u_xlatb14 : vec2<bool>;

var<private> u_xlatb10 : bool;

var<private> u_xlatb22 : bool;

@group(0) @binding(4) var x_UserLut : texture_2d<f32>;

@group(0) @binding(3) var x_InternalLut : texture_2d<f32>;

@group(0) @binding(2) var x_Grain_Texture : texture_2d<f32>;

@group(0) @binding(6) var sampler_LinearRepeat : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_235 : f32;
  var x_487 : f32;
  var x_674 : f32;
  var x_1268 : f32;
  var x_1277 : f32;
  var x_1407 : f32;
  var x_1458 : f32;
  var x_1485 : f32;
  var x_1509 : f32;
  var x_1520 : f32;
  var hlslcc_movcTemp : vec4<f32>;
  var x_1943 : f32;
  var x_1955 : f32;
  var x_1967 : f32;
  var x_2118 : f32;
  var x_2130 : f32;
  var x_2142 : f32;
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
    u_xlat15 = (vec2<f32>(x_85.x, x_85.x) * vec2<f32>(x_88.x, x_88.y));
    let x_93 : f32 = u_xlat15.x;
    u_xlat2.x = sin(x_93);
    let x_100 : f32 = u_xlat15.x;
    u_xlat3.x = cos(x_100);
    let x_104 : f32 = u_xlat2.x;
    let x_106 : f32 = u_xlat3.x;
    u_xlat15.x = (x_104 / x_106);
    let x_113 : f32 = u_xlat15.y;
    u_xlat22 = (1.0f / x_113);
    let x_116 : f32 = u_xlat15.x;
    let x_117 : f32 = u_xlat22;
    u_xlat15.x = ((x_116 * x_117) + -1.0f);
    let x_122 : vec4<f32> = u_xlat0;
    let x_124 : vec2<f32> = u_xlat15;
    let x_127 : vec2<f32> = u_xlat14;
    u_xlat15 = ((vec2<f32>(x_122.x, x_122.y) * vec2<f32>(x_124.x, x_124.x)) + x_127);
  } else {
    let x_131 : f32 = u_xlat1.x;
    u_xlat2.x = (1.0f / x_131);
    let x_135 : f32 = u_xlat2.x;
    let x_137 : f32 = x_25.x_Distortion_Params2.x;
    u_xlat2.x = (x_135 * x_137);
    let x_141 : f32 = u_xlat1.x;
    let x_143 : f32 = x_25.x_Distortion_Params2.y;
    u_xlat1.x = (x_141 * x_143);
    let x_148 : f32 = u_xlat1.x;
    u_xlat9 = min(abs(x_148), 1.0f);
    let x_153 : f32 = u_xlat1.x;
    u_xlat16.x = max(abs(x_153), 1.0f);
    let x_158 : f32 = u_xlat16.x;
    u_xlat16.x = (1.0f / x_158);
    let x_162 : f32 = u_xlat16.x;
    let x_163 : f32 = u_xlat9;
    u_xlat9 = (x_162 * x_163);
    let x_165 : f32 = u_xlat9;
    let x_166 : f32 = u_xlat9;
    u_xlat16.x = (x_165 * x_166);
    let x_171 : f32 = u_xlat16.x;
    u_xlat23 = ((x_171 * 0.02083509974181652069f) + -0.08513300120830535889f);
    let x_177 : f32 = u_xlat16.x;
    let x_178 : f32 = u_xlat23;
    u_xlat23 = ((x_177 * x_178) + 0.18014100193977355957f);
    let x_183 : f32 = u_xlat16.x;
    let x_184 : f32 = u_xlat23;
    u_xlat23 = ((x_183 * x_184) + -0.33029949665069580078f);
    let x_189 : f32 = u_xlat16.x;
    let x_190 : f32 = u_xlat23;
    u_xlat16.x = ((x_189 * x_190) + 0.99986600875854492188f);
    let x_196 : f32 = u_xlat16.x;
    let x_197 : f32 = u_xlat9;
    u_xlat23 = (x_196 * x_197);
    let x_203 : f32 = u_xlat1.x;
    u_xlatb3.x = (1.0f < abs(x_203));
    let x_207 : f32 = u_xlat23;
    u_xlat23 = ((x_207 * -2.0f) + 1.57079637050628662109f);
    let x_213 : bool = u_xlatb3.x;
    let x_214 : f32 = u_xlat23;
    u_xlat23 = select(0.0f, x_214, x_213);
    let x_216 : f32 = u_xlat9;
    let x_218 : f32 = u_xlat16.x;
    let x_220 : f32 = u_xlat23;
    u_xlat9 = ((x_216 * x_218) + x_220);
    let x_223 : f32 = u_xlat1.x;
    u_xlat1.x = min(x_223, 1.0f);
    let x_228 : f32 = u_xlat1.x;
    let x_230 : f32 = u_xlat1.x;
    u_xlatb1 = (x_228 < -(x_230));
    let x_233 : bool = u_xlatb1;
    if (x_233) {
      let x_238 : f32 = u_xlat9;
      x_235 = -(x_238);
    } else {
      let x_241 : f32 = u_xlat9;
      x_235 = x_241;
    }
    let x_242 : f32 = x_235;
    u_xlat1.x = x_242;
    let x_245 : f32 = u_xlat2.x;
    let x_247 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_245 * x_247) + -1.0f);
    let x_251 : vec4<f32> = u_xlat0;
    let x_253 : vec4<f32> = u_xlat1;
    let x_256 : vec2<f32> = u_xlat14;
    u_xlat15 = ((vec2<f32>(x_251.x, x_251.y) * vec2<f32>(x_253.x, x_253.x)) + x_256);
  }
  let x_258 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = ((vec4<f32>(x_258.x, x_258.y, x_258.x, x_258.y) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_265 : vec4<f32> = u_xlat0;
  let x_267 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec2<f32>(x_265.z, x_265.w), vec2<f32>(x_267.z, x_267.w));
  let x_271 : vec4<f32> = u_xlat0;
  let x_272 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_271 * vec4<f32>(x_272.x, x_272.x, x_272.x, x_272.x));
  let x_275 : vec4<f32> = u_xlat0;
  let x_278 : f32 = x_25.x_Chroma_Params;
  u_xlat0 = (x_275 * vec4<f32>(x_278, x_278, x_278, x_278));
  let x_283 : vec4<f32> = x_25.x_BlitTexture_TexelSize;
  let x_289 : vec4<f32> = x_25.x_RTHandleScale;
  let x_291 : vec2<f32> = ((-(vec2<f32>(x_283.x, x_283.y)) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_289.x, x_289.y));
  let x_292 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_291.x, x_291.y, x_292.z, x_292.w);
  let x_294 : vec2<f32> = u_xlat15;
  let x_295 : vec4<f32> = u_xlat2;
  u_xlat16 = min(x_294, vec2<f32>(x_295.x, x_295.y));
  let x_308 : vec2<f32> = u_xlat16;
  let x_311 : f32 = x_25.x_GlobalMipBias.x;
  let x_312 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, x_308, x_311);
  u_xlat3.x = x_312.x;
  let x_315 : vec4<f32> = u_xlat0;
  let x_320 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = ((x_315 * vec4<f32>(-0.3333333432674407959f, -0.3333333432674407959f, -0.6666666865348815918f, -0.6666666865348815918f)) + vec4<f32>(x_320.x, x_320.y, x_320.x, x_320.y));
  let x_323 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_323 + vec4<f32>(-0.5f, -0.5f, -0.5f, -0.5f));
  let x_327 : vec4<f32> = u_xlat0;
  let x_329 : vec4<f32> = x_25.x_Distortion_Params2;
  u_xlat4 = ((x_327 * vec4<f32>(x_329.z, x_329.z, x_329.z, x_329.z)) + vec4<f32>(0.5f, 0.5f, 0.5f, 0.5f));
  let x_334 : vec4<f32> = u_xlat0;
  let x_336 : vec4<f32> = x_25.x_Distortion_Params2;
  let x_340 : vec4<f32> = x_25.x_Distortion_Params1;
  u_xlat0 = ((x_334 * vec4<f32>(x_336.z, x_336.z, x_336.z, x_336.z)) + -(vec4<f32>(x_340.x, x_340.y, x_340.x, x_340.y)));
  let x_344 : vec4<f32> = u_xlat0;
  let x_346 : vec4<f32> = x_25.x_Distortion_Params1;
  u_xlat0 = (x_344 * vec4<f32>(x_346.z, x_346.w, x_346.z, x_346.w));
  let x_349 : vec4<f32> = u_xlat0;
  let x_351 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec2<f32>(x_349.x, x_349.y), vec2<f32>(x_351.x, x_351.y));
  let x_356 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_356);
  let x_359 : bool = u_xlatb8;
  if (x_359) {
    let x_362 : vec4<f32> = u_xlat1;
    let x_365 : vec4<f32> = x_25.x_Distortion_Params2;
    u_xlat16 = (vec2<f32>(x_362.x, x_362.x) * vec2<f32>(x_365.x, x_365.y));
    let x_370 : f32 = u_xlat16.x;
    u_xlat5.x = sin(x_370);
    let x_375 : f32 = u_xlat16.x;
    u_xlat6.x = cos(x_375);
    let x_379 : f32 = u_xlat5.x;
    let x_381 : f32 = u_xlat6.x;
    u_xlat16.x = (x_379 / x_381);
    let x_385 : f32 = u_xlat16.y;
    u_xlat23 = (1.0f / x_385);
    let x_388 : f32 = u_xlat16.x;
    let x_389 : f32 = u_xlat23;
    u_xlat16.x = ((x_388 * x_389) + -1.0f);
    let x_393 : vec4<f32> = u_xlat0;
    let x_395 : vec2<f32> = u_xlat16;
    let x_398 : vec4<f32> = u_xlat4;
    u_xlat16 = ((vec2<f32>(x_393.x, x_393.y) * vec2<f32>(x_395.x, x_395.x)) + vec2<f32>(x_398.x, x_398.y));
  } else {
    let x_404 : f32 = u_xlat1.x;
    u_xlat24 = (1.0f / x_404);
    let x_406 : f32 = u_xlat24;
    let x_408 : f32 = x_25.x_Distortion_Params2.x;
    u_xlat24 = (x_406 * x_408);
    let x_411 : f32 = u_xlat1.x;
    let x_413 : f32 = x_25.x_Distortion_Params2.y;
    u_xlat1.x = (x_411 * x_413);
    let x_417 : f32 = u_xlat1.x;
    u_xlat5.x = min(abs(x_417), 1.0f);
    let x_423 : f32 = u_xlat1.x;
    u_xlat12 = max(abs(x_423), 1.0f);
    let x_426 : f32 = u_xlat12;
    u_xlat12 = (1.0f / x_426);
    let x_428 : f32 = u_xlat12;
    let x_430 : f32 = u_xlat5.x;
    u_xlat5.x = (x_428 * x_430);
    let x_434 : f32 = u_xlat5.x;
    let x_436 : f32 = u_xlat5.x;
    u_xlat12 = (x_434 * x_436);
    let x_439 : f32 = u_xlat12;
    u_xlat19 = ((x_439 * 0.02083509974181652069f) + -0.08513300120830535889f);
    let x_442 : f32 = u_xlat12;
    let x_443 : f32 = u_xlat19;
    u_xlat19 = ((x_442 * x_443) + 0.18014100193977355957f);
    let x_446 : f32 = u_xlat12;
    let x_447 : f32 = u_xlat19;
    u_xlat19 = ((x_446 * x_447) + -0.33029949665069580078f);
    let x_450 : f32 = u_xlat12;
    let x_451 : f32 = u_xlat19;
    u_xlat12 = ((x_450 * x_451) + 0.99986600875854492188f);
    let x_454 : f32 = u_xlat12;
    let x_456 : f32 = u_xlat5.x;
    u_xlat19 = (x_454 * x_456);
    let x_460 : f32 = u_xlat1.x;
    u_xlatb26 = (1.0f < abs(x_460));
    let x_463 : f32 = u_xlat19;
    u_xlat19 = ((x_463 * -2.0f) + 1.57079637050628662109f);
    let x_466 : bool = u_xlatb26;
    let x_467 : f32 = u_xlat19;
    u_xlat19 = select(0.0f, x_467, x_466);
    let x_470 : f32 = u_xlat5.x;
    let x_471 : f32 = u_xlat12;
    let x_473 : f32 = u_xlat19;
    u_xlat5.x = ((x_470 * x_471) + x_473);
    let x_477 : f32 = u_xlat1.x;
    u_xlat1.x = min(x_477, 1.0f);
    let x_481 : f32 = u_xlat1.x;
    let x_483 : f32 = u_xlat1.x;
    u_xlatb1 = (x_481 < -(x_483));
    let x_486 : bool = u_xlatb1;
    if (x_486) {
      let x_491 : f32 = u_xlat5.x;
      x_487 = -(x_491);
    } else {
      let x_495 : f32 = u_xlat5.x;
      x_487 = x_495;
    }
    let x_496 : f32 = x_487;
    u_xlat1.x = x_496;
    let x_498 : f32 = u_xlat24;
    let x_500 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_498 * x_500) + -1.0f);
    let x_504 : vec4<f32> = u_xlat0;
    let x_506 : vec4<f32> = u_xlat1;
    let x_509 : vec4<f32> = u_xlat4;
    u_xlat16 = ((vec2<f32>(x_504.x, x_504.y) * vec2<f32>(x_506.x, x_506.x)) + vec2<f32>(x_509.x, x_509.y));
  }
  let x_512 : vec4<f32> = u_xlat2;
  let x_514 : vec2<f32> = u_xlat16;
  let x_515 : vec2<f32> = min(vec2<f32>(x_512.x, x_512.y), x_514);
  let x_516 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_515.x, x_515.y, x_516.z, x_516.w);
  let x_521 : vec4<f32> = u_xlat0;
  let x_524 : f32 = x_25.x_GlobalMipBias.x;
  let x_525 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_521.x, x_521.y), x_524);
  u_xlat3.y = x_525.y;
  let x_528 : vec4<f32> = u_xlat0;
  let x_530 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec2<f32>(x_528.z, x_528.w), vec2<f32>(x_530.z, x_530.w));
  let x_535 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_535);
  let x_538 : bool = u_xlatb8;
  if (x_538) {
    let x_541 : vec4<f32> = u_xlat0;
    let x_544 : vec4<f32> = x_25.x_Distortion_Params2;
    let x_546 : vec2<f32> = (vec2<f32>(x_541.x, x_541.x) * vec2<f32>(x_544.x, x_544.y));
    let x_547 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_546.x, x_546.y, x_547.z, x_547.w);
    let x_550 : f32 = u_xlat1.x;
    u_xlat4.x = cos(x_550);
    let x_554 : f32 = u_xlat1.x;
    u_xlat1.x = sin(x_554);
    let x_559 : f32 = u_xlat1.x;
    let x_561 : f32 = u_xlat4.x;
    u_xlat7.x = (x_559 / x_561);
    let x_565 : f32 = u_xlat1.y;
    u_xlat1.x = (1.0f / x_565);
    let x_569 : f32 = u_xlat7.x;
    let x_571 : f32 = u_xlat1.x;
    u_xlat7.x = ((x_569 * x_571) + -1.0f);
    let x_575 : vec4<f32> = u_xlat0;
    let x_577 : vec3<f32> = u_xlat7;
    let x_580 : vec4<f32> = u_xlat4;
    let x_582 : vec2<f32> = ((vec2<f32>(x_575.z, x_575.w) * vec2<f32>(x_577.x, x_577.x)) + vec2<f32>(x_580.z, x_580.w));
    let x_583 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_582.x, x_582.y, x_583.z, x_583.w);
  } else {
    let x_587 : f32 = u_xlat0.x;
    u_xlat7.x = (1.0f / x_587);
    let x_591 : f32 = u_xlat7.x;
    let x_593 : f32 = x_25.x_Distortion_Params2.x;
    u_xlat7.x = (x_591 * x_593);
    let x_597 : f32 = u_xlat0.x;
    let x_599 : f32 = x_25.x_Distortion_Params2.y;
    u_xlat0.x = (x_597 * x_599);
    let x_603 : f32 = u_xlat0.x;
    u_xlat16.x = min(abs(x_603), 1.0f);
    let x_608 : f32 = u_xlat0.x;
    u_xlat23 = max(abs(x_608), 1.0f);
    let x_611 : f32 = u_xlat23;
    u_xlat23 = (1.0f / x_611);
    let x_613 : f32 = u_xlat23;
    let x_615 : f32 = u_xlat16.x;
    u_xlat16.x = (x_613 * x_615);
    let x_619 : f32 = u_xlat16.x;
    let x_621 : f32 = u_xlat16.x;
    u_xlat23 = (x_619 * x_621);
    let x_623 : f32 = u_xlat23;
    u_xlat24 = ((x_623 * 0.02083509974181652069f) + -0.08513300120830535889f);
    let x_626 : f32 = u_xlat23;
    let x_627 : f32 = u_xlat24;
    u_xlat24 = ((x_626 * x_627) + 0.18014100193977355957f);
    let x_630 : f32 = u_xlat23;
    let x_631 : f32 = u_xlat24;
    u_xlat24 = ((x_630 * x_631) + -0.33029949665069580078f);
    let x_634 : f32 = u_xlat23;
    let x_635 : f32 = u_xlat24;
    u_xlat23 = ((x_634 * x_635) + 0.99986600875854492188f);
    let x_638 : f32 = u_xlat23;
    let x_640 : f32 = u_xlat16.x;
    u_xlat24 = (x_638 * x_640);
    let x_644 : f32 = u_xlat0.x;
    u_xlatb4 = (1.0f < abs(x_644));
    let x_647 : f32 = u_xlat24;
    u_xlat24 = ((x_647 * -2.0f) + 1.57079637050628662109f);
    let x_650 : bool = u_xlatb4;
    let x_651 : f32 = u_xlat24;
    u_xlat24 = select(0.0f, x_651, x_650);
    let x_654 : f32 = u_xlat16.x;
    let x_655 : f32 = u_xlat23;
    let x_657 : f32 = u_xlat24;
    u_xlat16.x = ((x_654 * x_655) + x_657);
    let x_661 : f32 = u_xlat0.x;
    u_xlat0.x = min(x_661, 1.0f);
    let x_666 : f32 = u_xlat0.x;
    let x_668 : f32 = u_xlat0.x;
    u_xlatb0.x = (x_666 < -(x_668));
    let x_673 : bool = u_xlatb0.x;
    if (x_673) {
      let x_678 : f32 = u_xlat16.x;
      x_674 = -(x_678);
    } else {
      let x_682 : f32 = u_xlat16.x;
      x_674 = x_682;
    }
    let x_683 : f32 = x_674;
    u_xlat0.x = x_683;
    let x_686 : f32 = u_xlat7.x;
    let x_688 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_686 * x_688) + -1.0f);
    let x_692 : vec4<f32> = u_xlat0;
    let x_694 : vec4<f32> = u_xlat0;
    let x_697 : vec4<f32> = u_xlat4;
    let x_699 : vec2<f32> = ((vec2<f32>(x_692.z, x_692.w) * vec2<f32>(x_694.x, x_694.x)) + vec2<f32>(x_697.z, x_697.w));
    let x_700 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_699.x, x_699.y, x_700.z, x_700.w);
  }
  let x_702 : vec4<f32> = u_xlat2;
  let x_704 : vec4<f32> = u_xlat1;
  let x_706 : vec2<f32> = min(vec2<f32>(x_702.x, x_702.y), vec2<f32>(x_704.x, x_704.y));
  let x_707 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_706.x, x_706.y, x_707.z, x_707.w);
  let x_712 : vec4<f32> = u_xlat0;
  let x_715 : f32 = x_25.x_GlobalMipBias.x;
  let x_716 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_712.x, x_712.y), x_715);
  u_xlat3.z = x_716.z;
  let x_722 : vec4<f32> = x_25.x_BloomTexture_TexelSize;
  let x_727 : vec4<f32> = x_25.x_RTHandleScale;
  let x_729 : vec2<f32> = ((-(vec2<f32>(x_722.x, x_722.y)) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_727.x, x_727.y));
  let x_730 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_729.x, x_729.y, x_730.z, x_730.w);
  let x_732 : vec4<f32> = u_xlat0;
  let x_734 : vec2<f32> = u_xlat15;
  let x_735 : vec2<f32> = min(vec2<f32>(x_732.x, x_732.y), x_734);
  let x_736 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_735.x, x_735.y, x_736.z, x_736.w);
  let x_738 : vec4<f32> = u_xlat0;
  let x_742 : vec4<f32> = x_25.x_Bloom_Texture_TexelSize;
  let x_745 : vec2<f32> = ((vec2<f32>(x_738.x, x_738.y) * vec2<f32>(x_742.z, x_742.w)) + vec2<f32>(0.5f, 0.5f));
  let x_746 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_745.x, x_745.y, x_746.z, x_746.w);
  let x_748 : vec4<f32> = u_xlat0;
  u_xlat14 = floor(vec2<f32>(x_748.x, x_748.y));
  let x_751 : vec4<f32> = u_xlat0;
  let x_753 : vec2<f32> = fract(vec2<f32>(x_751.x, x_751.y));
  let x_754 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_753.x, x_753.y, x_754.z, x_754.w);
  let x_756 : vec4<f32> = u_xlat0;
  u_xlat2 = ((-(vec4<f32>(x_756.x, x_756.y, x_756.x, x_756.y)) * vec4<f32>(0.5f, 0.5f, 0.16666667163372039795f, 0.16666667163372039795f)) + vec4<f32>(0.5f, 0.5f, 0.5f, 0.5f));
  let x_763 : vec4<f32> = u_xlat0;
  let x_765 : vec4<f32> = u_xlat2;
  u_xlat2 = ((vec4<f32>(x_763.x, x_763.y, x_763.x, x_763.y) * x_765) + vec4<f32>(0.5f, 0.5f, -0.5f, -0.5f));
  let x_769 : vec4<f32> = u_xlat0;
  let x_773 : vec2<f32> = ((vec2<f32>(x_769.x, x_769.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(-1.0f, -1.0f));
  let x_774 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_773.x, x_773.y, x_774.z, x_774.w);
  let x_776 : vec4<f32> = u_xlat0;
  let x_778 : vec4<f32> = u_xlat0;
  let x_780 : vec2<f32> = (vec2<f32>(x_776.x, x_776.y) * vec2<f32>(x_778.x, x_778.y));
  let x_781 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_780.x, x_780.y, x_781.z, x_781.w);
  let x_783 : vec4<f32> = u_xlat4;
  let x_785 : vec4<f32> = u_xlat1;
  let x_790 : vec2<f32> = ((vec2<f32>(x_783.x, x_783.y) * vec2<f32>(x_785.x, x_785.y)) + vec2<f32>(0.6666666865348815918f, 0.6666666865348815918f));
  let x_791 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_790.x, x_790.y, x_791.z, x_791.w);
  let x_793 : vec4<f32> = u_xlat0;
  let x_795 : vec4<f32> = u_xlat2;
  u_xlat2 = ((vec4<f32>(x_793.x, x_793.y, x_793.x, x_793.y) * x_795) + vec4<f32>(0.16666667163372039795f, 0.16666667163372039795f, 0.16666667163372039795f, 0.16666667163372039795f));
  let x_799 : vec4<f32> = u_xlat1;
  let x_803 : vec2<f32> = (-(vec2<f32>(x_799.x, x_799.y)) + vec2<f32>(1.0f, 1.0f));
  let x_804 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_803.x, x_803.y, x_804.z, x_804.w);
  let x_806 : vec4<f32> = u_xlat2;
  let x_809 : vec4<f32> = u_xlat0;
  let x_811 : vec2<f32> = (-(vec2<f32>(x_806.x, x_806.y)) + vec2<f32>(x_809.x, x_809.y));
  let x_812 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_811.x, x_811.y, x_812.z, x_812.w);
  let x_814 : vec4<f32> = u_xlat2;
  let x_817 : vec4<f32> = u_xlat0;
  let x_819 : vec2<f32> = (-(vec2<f32>(x_814.z, x_814.w)) + vec2<f32>(x_817.x, x_817.y));
  let x_820 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_819.x, x_819.y, x_820.z, x_820.w);
  let x_822 : vec4<f32> = u_xlat1;
  let x_824 : vec4<f32> = u_xlat2;
  u_xlat16 = (vec2<f32>(x_822.x, x_822.y) + vec2<f32>(x_824.z, x_824.w));
  let x_827 : vec4<f32> = u_xlat0;
  let x_829 : vec4<f32> = u_xlat2;
  let x_831 : vec2<f32> = (vec2<f32>(x_827.x, x_827.y) + vec2<f32>(x_829.x, x_829.y));
  let x_832 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_831.x, x_831.y, x_832.z, x_832.w);
  let x_834 : vec2<f32> = u_xlat16;
  let x_838 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_834.x, x_834.y));
  let x_839 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_838.x, x_838.y, x_839.z, x_839.w);
  let x_841 : vec4<f32> = u_xlat1;
  let x_843 : vec4<f32> = u_xlat4;
  let x_846 : vec2<f32> = ((vec2<f32>(x_841.x, x_841.y) * vec2<f32>(x_843.x, x_843.y)) + vec2<f32>(-1.0f, -1.0f));
  let x_847 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_847.x, x_847.y, x_846.x, x_846.y);
  let x_849 : vec4<f32> = u_xlat2;
  let x_850 : vec2<f32> = vec2<f32>(x_849.x, x_849.y);
  let x_854 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_850.x, x_850.y));
  let x_855 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_854.x, x_854.y, x_855.z, x_855.w);
  let x_857 : vec4<f32> = u_xlat0;
  let x_859 : vec4<f32> = u_xlat1;
  let x_862 : vec2<f32> = ((vec2<f32>(x_857.x, x_857.y) * vec2<f32>(x_859.x, x_859.y)) + vec2<f32>(1.0f, 1.0f));
  let x_863 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_862.x, x_862.y, x_863.z, x_863.w);
  let x_865 : vec2<f32> = u_xlat14;
  let x_867 : vec4<f32> = u_xlat4;
  u_xlat5 = (vec4<f32>(x_865.x, x_865.y, x_865.x, x_865.y) + vec4<f32>(x_867.z, x_867.w, x_867.x, x_867.w));
  let x_870 : vec4<f32> = u_xlat5;
  u_xlat5 = (x_870 + vec4<f32>(-0.5f, -0.5f, -0.5f, -0.5f));
  let x_872 : vec4<f32> = u_xlat5;
  let x_874 : vec4<f32> = x_25.x_Bloom_Texture_TexelSize;
  u_xlat5 = (x_872 * vec4<f32>(x_874.x, x_874.y, x_874.x, x_874.y));
  let x_877 : vec4<f32> = u_xlat5;
  u_xlat5 = min(x_877, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_884 : vec4<f32> = u_xlat5;
  let x_886 : vec4<f32> = textureSampleLevel(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_884.x, x_884.y), 0.0f);
  u_xlat6 = x_886;
  let x_890 : vec4<f32> = u_xlat5;
  let x_892 : vec4<f32> = textureSampleLevel(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_890.z, x_890.w), 0.0f);
  u_xlat5 = x_892;
  let x_893 : vec4<f32> = u_xlat2;
  let x_895 : vec4<f32> = u_xlat5;
  u_xlat5 = (vec4<f32>(x_893.x, x_893.x, x_893.x, x_893.x) * x_895);
  let x_897 : vec2<f32> = u_xlat16;
  let x_899 : vec4<f32> = u_xlat6;
  let x_901 : vec4<f32> = u_xlat5;
  u_xlat5 = ((vec4<f32>(x_897.x, x_897.x, x_897.x, x_897.x) * x_899) + x_901);
  let x_903 : vec2<f32> = u_xlat14;
  let x_905 : vec4<f32> = u_xlat4;
  u_xlat0 = (vec4<f32>(x_903.x, x_903.y, x_903.x, x_903.y) + vec4<f32>(x_905.z, x_905.y, x_905.x, x_905.y));
  let x_908 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_908 + vec4<f32>(-0.5f, -0.5f, -0.5f, -0.5f));
  let x_910 : vec4<f32> = u_xlat0;
  let x_912 : vec4<f32> = x_25.x_Bloom_Texture_TexelSize;
  u_xlat0 = (x_910 * vec4<f32>(x_912.x, x_912.y, x_912.x, x_912.y));
  let x_915 : vec4<f32> = u_xlat0;
  u_xlat0 = min(x_915, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_920 : vec4<f32> = u_xlat0;
  let x_922 : vec4<f32> = textureSampleLevel(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_920.x, x_920.y), 0.0f);
  u_xlat4 = x_922;
  let x_926 : vec4<f32> = u_xlat0;
  let x_928 : vec4<f32> = textureSampleLevel(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_926.z, x_926.w), 0.0f);
  u_xlat0 = x_928;
  let x_929 : vec4<f32> = u_xlat0;
  let x_930 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_929 * vec4<f32>(x_930.x, x_930.x, x_930.x, x_930.x));
  let x_933 : vec2<f32> = u_xlat16;
  let x_935 : vec4<f32> = u_xlat4;
  let x_937 : vec4<f32> = u_xlat0;
  u_xlat0 = ((vec4<f32>(x_933.x, x_933.x, x_933.x, x_933.x) * x_935) + x_937);
  let x_939 : vec4<f32> = u_xlat0;
  let x_940 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_939 * vec4<f32>(x_940.y, x_940.y, x_940.y, x_940.y));
  let x_943 : vec2<f32> = u_xlat16;
  let x_945 : vec4<f32> = u_xlat5;
  let x_947 : vec4<f32> = u_xlat0;
  u_xlat0 = ((vec4<f32>(x_943.y, x_943.y, x_943.y, x_943.y) * x_945) + x_947);
  let x_951 : f32 = x_25.x_Bloom_RGBM;
  u_xlatb1 = (0.0f < x_951);
  let x_953 : bool = u_xlatb1;
  if (x_953) {
    let x_956 : vec4<f32> = u_xlat0;
    let x_958 : vec4<f32> = u_xlat0;
    let x_960 : vec3<f32> = (vec3<f32>(x_956.w, x_956.w, x_956.w) * vec3<f32>(x_958.x, x_958.y, x_958.z));
    let x_961 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_960.x, x_960.y, x_960.z, x_961.w);
    let x_963 : vec4<f32> = u_xlat2;
    let x_967 : vec3<f32> = (vec3<f32>(x_963.x, x_963.y, x_963.z) * vec3<f32>(8.0f, 8.0f, 8.0f));
    let x_968 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_967.x, x_967.y, x_967.z, x_968.w);
  }
  let x_970 : vec4<f32> = u_xlat0;
  let x_974 : vec4<f32> = x_25.x_Bloom_Params;
  let x_976 : vec3<f32> = (vec3<f32>(x_970.x, x_970.y, x_970.z) * vec3<f32>(x_974.x, x_974.x, x_974.x));
  let x_977 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_976.x, x_976.y, x_976.z, x_977.w);
  let x_979 : vec4<f32> = u_xlat0;
  let x_982 : vec4<f32> = x_25.x_Bloom_Params;
  let x_985 : vec3<f32> = u_xlat3;
  let x_986 : vec3<f32> = ((vec3<f32>(x_979.x, x_979.y, x_979.z) * vec3<f32>(x_982.y, x_982.z, x_982.w)) + x_985);
  let x_987 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_986.x, x_986.y, x_986.z, x_987.w);
  let x_992 : f32 = x_25.x_Vignette_Params2.z;
  u_xlatb21 = (0.0f < x_992);
  let x_994 : bool = u_xlatb21;
  if (x_994) {
    let x_997 : vec2<f32> = u_xlat15;
    let x_999 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_1002 : vec2<f32> = (x_997 + -(vec2<f32>(x_999.x, x_999.y)));
    let x_1003 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1002.x, x_1002.y, x_1003.z, x_1003.w);
    let x_1005 : vec4<f32> = u_xlat1;
    let x_1009 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_1011 : vec2<f32> = (abs(vec2<f32>(x_1005.x, x_1005.y)) * vec2<f32>(x_1009.z, x_1009.z));
    let x_1012 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1012.x, x_1011.x, x_1011.y, x_1012.w);
    let x_1015 : f32 = u_xlat1.y;
    let x_1018 : f32 = x_25.x_Vignette_Params1.w;
    u_xlat1.x = (x_1015 * x_1018);
    let x_1022 : vec4<f32> = u_xlat1;
    let x_1024 : vec4<f32> = u_xlat1;
    u_xlat21 = dot(vec2<f32>(x_1022.x, x_1022.z), vec2<f32>(x_1024.x, x_1024.z));
    let x_1027 : f32 = u_xlat21;
    u_xlat21 = (-(x_1027) + 1.0f);
    let x_1030 : f32 = u_xlat21;
    u_xlat21 = max(x_1030, 0.0f);
    let x_1032 : f32 = u_xlat21;
    u_xlat21 = log2(x_1032);
    let x_1034 : f32 = u_xlat21;
    let x_1036 : f32 = x_25.x_Vignette_Params2.w;
    u_xlat21 = (x_1034 * x_1036);
    let x_1038 : f32 = u_xlat21;
    u_xlat21 = exp2(x_1038);
    let x_1041 : vec4<f32> = x_25.x_Vignette_Params1;
    let x_1045 : vec3<f32> = (-(vec3<f32>(x_1041.x, x_1041.y, x_1041.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_1046 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1045.x, x_1045.y, x_1045.z, x_1046.w);
    let x_1048 : f32 = u_xlat21;
    let x_1050 : vec4<f32> = u_xlat1;
    let x_1054 : vec4<f32> = x_25.x_Vignette_Params1;
    let x_1056 : vec3<f32> = ((vec3<f32>(x_1048, x_1048, x_1048) * vec3<f32>(x_1050.x, x_1050.y, x_1050.z)) + vec3<f32>(x_1054.x, x_1054.y, x_1054.z));
    let x_1057 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1056.x, x_1056.y, x_1056.z, x_1057.w);
    let x_1059 : vec4<f32> = u_xlat0;
    let x_1061 : vec4<f32> = u_xlat1;
    let x_1063 : vec3<f32> = (vec3<f32>(x_1059.x, x_1059.y, x_1059.z) * vec3<f32>(x_1061.x, x_1061.y, x_1061.z));
    let x_1064 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1063.x, x_1063.y, x_1063.z, x_1064.w);
  }
  let x_1066 : vec4<f32> = u_xlat0;
  let x_1070 : vec4<f32> = x_25.x_Lut_Params;
  let x_1072 : vec3<f32> = (vec3<f32>(x_1066.x, x_1066.y, x_1066.z) * vec3<f32>(x_1070.w, x_1070.w, x_1070.w));
  let x_1073 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1072.x, x_1072.y, x_1072.z, x_1073.w);
  let x_1080 : vec4<f32> = u_xlat0;
  u_xlat8.x = dot(vec3<f32>(0.43970099091529846191f, 0.38297799229621887207f, 0.17733499407768249512f), vec3<f32>(x_1080.x, x_1080.y, x_1080.z));
  let x_1088 : vec4<f32> = u_xlat0;
  u_xlat8.y = dot(vec3<f32>(0.08979229629039764404f, 0.81342297792434692383f, 0.09676159918308258057f), vec3<f32>(x_1088.x, x_1088.y, x_1088.z));
  let x_1096 : vec4<f32> = u_xlat0;
  u_xlat8.z = dot(vec3<f32>(0.01754399947822093964f, 0.111543998122215271f, 0.8707039952278137207f), vec3<f32>(x_1096.x, x_1096.y, x_1096.z));
  let x_1101 : f32 = u_xlat8.y;
  let x_1103 : f32 = u_xlat8.x;
  u_xlat0.x = min(x_1101, x_1103);
  let x_1107 : f32 = u_xlat8.z;
  let x_1109 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_1107, x_1109);
  let x_1113 : f32 = u_xlat8.y;
  let x_1115 : f32 = u_xlat8.x;
  u_xlat7.x = max(x_1113, x_1115);
  let x_1119 : f32 = u_xlat8.z;
  let x_1121 : f32 = u_xlat7.x;
  u_xlat0.y = max(x_1119, x_1121);
  let x_1124 : vec4<f32> = u_xlat0;
  let x_1129 : vec3<f32> = max(vec3<f32>(x_1124.x, x_1124.y, x_1124.y), vec3<f32>(0.00009999999747378752f, 0.00009999999747378752f, 0.00999999977648258209f));
  let x_1130 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1129.x, x_1129.y, x_1129.z, x_1130.w);
  let x_1133 : f32 = u_xlat0.x;
  let x_1136 : f32 = u_xlat0.y;
  u_xlat0.x = (-(x_1133) + x_1136);
  let x_1140 : f32 = u_xlat0.x;
  let x_1142 : f32 = u_xlat0.z;
  u_xlat0.x = (x_1140 / x_1142);
  let x_1145 : vec3<f32> = u_xlat8;
  let x_1148 : vec3<f32> = u_xlat8;
  u_xlat7 = (-(vec3<f32>(x_1145.y, x_1145.x, x_1145.z)) + vec3<f32>(x_1148.z, x_1148.y, x_1148.x));
  let x_1151 : vec3<f32> = u_xlat7;
  let x_1153 : vec3<f32> = u_xlat8;
  let x_1155 : vec2<f32> = (vec2<f32>(x_1151.x, x_1151.y) * vec2<f32>(x_1153.z, x_1153.y));
  let x_1156 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_1155.x, x_1155.y, x_1156.z);
  let x_1159 : f32 = u_xlat7.y;
  let x_1161 : f32 = u_xlat7.x;
  u_xlat7.x = (x_1159 + x_1161);
  let x_1165 : f32 = u_xlat8.x;
  let x_1167 : f32 = u_xlat7.z;
  let x_1170 : f32 = u_xlat7.x;
  u_xlat7.x = ((x_1165 * x_1167) + x_1170);
  let x_1174 : f32 = u_xlat7.x;
  u_xlat7.x = max(x_1174, 0.0f);
  let x_1178 : f32 = u_xlat7.x;
  u_xlat7.x = sqrt(x_1178);
  let x_1182 : f32 = u_xlat8.y;
  let x_1184 : f32 = u_xlat8.z;
  u_xlat14.x = (x_1182 + x_1184);
  let x_1188 : f32 = u_xlat8.x;
  let x_1190 : f32 = u_xlat14.x;
  u_xlat14.x = (x_1188 + x_1190);
  let x_1194 : f32 = u_xlat7.x;
  let x_1198 : f32 = u_xlat14.x;
  u_xlat7.x = ((x_1194 * 1.75f) + x_1198);
  let x_1202 : f32 = u_xlat0.x;
  u_xlat21 = (x_1202 + -0.40000000596046447754f);
  let x_1205 : f32 = u_xlat21;
  u_xlat1.x = (x_1205 * 2.5f);
  let x_1210 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_1210)) + 1.0f);
  let x_1216 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_1216, 0.0f);
  let x_1219 : f32 = u_xlat21;
  u_xlatb21 = (x_1219 >= 0.0f);
  let x_1221 : bool = u_xlatb21;
  u_xlat21 = select(-1.0f, 1.0f, x_1221);
  let x_1224 : f32 = u_xlat1.x;
  let x_1227 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_1224) * x_1227) + 1.0f);
  let x_1231 : f32 = u_xlat21;
  let x_1233 : f32 = u_xlat1.x;
  u_xlat7.z = ((x_1231 * x_1233) + 1.0f);
  let x_1237 : vec3<f32> = u_xlat7;
  u_xlat14 = (vec2<f32>(x_1237.x, x_1237.z) * vec2<f32>(0.3333333432674407959f, 0.02500000037252902985f));
  let x_1245 : f32 = u_xlat7.x;
  u_xlatb1 = (0.15999999642372131348f >= x_1245);
  let x_1249 : f32 = u_xlat7.x;
  u_xlatb7 = (x_1249 >= 0.47999998927116394043f);
  let x_1254 : f32 = u_xlat14.x;
  u_xlat14.x = (0.07999999821186065674f / x_1254);
  let x_1258 : f32 = u_xlat14.x;
  u_xlat14.x = (x_1258 + -0.5f);
  let x_1262 : f32 = u_xlat14.x;
  let x_1264 : f32 = u_xlat14.y;
  u_xlat14.x = (x_1262 * x_1264);
  let x_1267 : bool = u_xlatb7;
  if (x_1267) {
    x_1268 = 0.0f;
  } else {
    let x_1273 : f32 = u_xlat14.x;
    x_1268 = x_1273;
  }
  let x_1274 : f32 = x_1268;
  u_xlat7.x = x_1274;
  let x_1276 : bool = u_xlatb1;
  if (x_1276) {
    let x_1281 : f32 = u_xlat14.y;
    x_1277 = x_1281;
  } else {
    let x_1284 : f32 = u_xlat7.x;
    x_1277 = x_1284;
  }
  let x_1285 : f32 = x_1277;
  u_xlat7.x = x_1285;
  let x_1288 : f32 = u_xlat7.x;
  u_xlat7.x = (x_1288 + 1.0f);
  let x_1291 : vec3<f32> = u_xlat7;
  let x_1293 : vec3<f32> = u_xlat8;
  let x_1294 : vec3<f32> = (vec3<f32>(x_1291.x, x_1291.x, x_1291.x) * x_1293);
  let x_1295 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1295.x, x_1294.x, x_1294.y, x_1294.z);
  let x_1300 : vec4<f32> = u_xlat2;
  let x_1302 : vec4<f32> = u_xlat2;
  let x_1305 : vec4<bool> = (vec4<f32>(x_1300.z, x_1300.w, x_1300.z, x_1300.w) == vec4<f32>(x_1302.y, x_1302.z, x_1302.y, x_1302.z));
  u_xlatb14 = vec2<bool>(x_1305.x, x_1305.y);
  let x_1308 : bool = u_xlatb14.y;
  let x_1310 : bool = u_xlatb14.x;
  u_xlatb14.x = (x_1308 & x_1310);
  let x_1314 : f32 = u_xlat8.y;
  let x_1316 : f32 = u_xlat7.x;
  let x_1319 : f32 = u_xlat2.w;
  u_xlat21 = ((x_1314 * x_1316) + -(x_1319));
  let x_1322 : f32 = u_xlat21;
  u_xlat21 = (x_1322 * 1.73205077648162841797f);
  let x_1326 : f32 = u_xlat2.y;
  let x_1329 : f32 = u_xlat2.z;
  u_xlat1.x = ((x_1326 * 2.0f) + -(x_1329));
  let x_1334 : f32 = u_xlat8.z;
  let x_1337 : f32 = u_xlat7.x;
  let x_1340 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_1334) * x_1337) + x_1340);
  let x_1343 : f32 = u_xlat21;
  let x_1346 : f32 = u_xlat1.x;
  u_xlat15.x = min(abs(x_1343), abs(x_1346));
  let x_1350 : f32 = u_xlat21;
  let x_1353 : f32 = u_xlat1.x;
  u_xlat22 = max(abs(x_1350), abs(x_1353));
  let x_1356 : f32 = u_xlat22;
  u_xlat22 = (1.0f / x_1356);
  let x_1358 : f32 = u_xlat22;
  let x_1360 : f32 = u_xlat15.x;
  u_xlat15.x = (x_1358 * x_1360);
  let x_1364 : f32 = u_xlat15.x;
  let x_1366 : f32 = u_xlat15.x;
  u_xlat22 = (x_1364 * x_1366);
  let x_1368 : f32 = u_xlat22;
  u_xlat3.x = ((x_1368 * 0.02083509974181652069f) + -0.08513300120830535889f);
  let x_1372 : f32 = u_xlat22;
  let x_1374 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1372 * x_1374) + 0.18014100193977355957f);
  let x_1378 : f32 = u_xlat22;
  let x_1380 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1378 * x_1380) + -0.33029949665069580078f);
  let x_1384 : f32 = u_xlat22;
  let x_1386 : f32 = u_xlat3.x;
  u_xlat22 = ((x_1384 * x_1386) + 0.99986600875854492188f);
  let x_1389 : f32 = u_xlat22;
  let x_1391 : f32 = u_xlat15.x;
  u_xlat3.x = (x_1389 * x_1391);
  let x_1396 : f32 = u_xlat1.x;
  let x_1398 : f32 = u_xlat21;
  u_xlatb10 = (abs(x_1396) < abs(x_1398));
  let x_1402 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1402 * -2.0f) + 1.57079637050628662109f);
  let x_1406 : bool = u_xlatb10;
  if (x_1406) {
    let x_1411 : f32 = u_xlat3.x;
    x_1407 = x_1411;
  } else {
    x_1407 = 0.0f;
  }
  let x_1413 : f32 = x_1407;
  u_xlat3.x = x_1413;
  let x_1416 : f32 = u_xlat15.x;
  let x_1417 : f32 = u_xlat22;
  let x_1420 : f32 = u_xlat3.x;
  u_xlat15.x = ((x_1416 * x_1417) + x_1420);
  let x_1425 : f32 = u_xlat1.x;
  let x_1427 : f32 = u_xlat1.x;
  u_xlatb22 = (x_1425 < -(x_1427));
  let x_1430 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, -3.14159274101257324219f, x_1430);
  let x_1433 : f32 = u_xlat22;
  let x_1435 : f32 = u_xlat15.x;
  u_xlat15.x = (x_1433 + x_1435);
  let x_1438 : f32 = u_xlat21;
  let x_1440 : f32 = u_xlat1.x;
  u_xlat22 = min(x_1438, x_1440);
  let x_1442 : f32 = u_xlat21;
  let x_1444 : f32 = u_xlat1.x;
  u_xlat21 = max(x_1442, x_1444);
  let x_1446 : f32 = u_xlat22;
  let x_1447 : f32 = u_xlat22;
  u_xlatb1 = (x_1446 < -(x_1447));
  let x_1450 : f32 = u_xlat21;
  let x_1451 : f32 = u_xlat21;
  u_xlatb21 = (x_1450 >= -(x_1451));
  let x_1454 : bool = u_xlatb21;
  let x_1455 : bool = u_xlatb1;
  u_xlatb21 = (x_1454 & x_1455);
  let x_1457 : bool = u_xlatb21;
  if (x_1457) {
    let x_1462 : f32 = u_xlat15.x;
    x_1458 = -(x_1462);
  } else {
    let x_1466 : f32 = u_xlat15.x;
    x_1458 = x_1466;
  }
  let x_1467 : f32 = x_1458;
  u_xlat21 = x_1467;
  let x_1468 : f32 = u_xlat21;
  u_xlat21 = (x_1468 * 57.295780181884765625f);
  let x_1472 : bool = u_xlatb14.x;
  let x_1473 : f32 = u_xlat21;
  u_xlat14.x = select(x_1473, 0.0f, x_1472);
  let x_1477 : f32 = u_xlat14.x;
  u_xlatb21 = (x_1477 < 0.0f);
  let x_1480 : f32 = u_xlat14.x;
  u_xlat1.x = (x_1480 + 360.0f);
  let x_1484 : bool = u_xlatb21;
  if (x_1484) {
    let x_1489 : f32 = u_xlat1.x;
    x_1485 = x_1489;
  } else {
    let x_1492 : f32 = u_xlat14.x;
    x_1485 = x_1492;
  }
  let x_1493 : f32 = x_1485;
  u_xlat14.x = x_1493;
  let x_1496 : f32 = u_xlat14.x;
  u_xlatb21 = (x_1496 < -180.0f);
  let x_1501 : f32 = u_xlat14.x;
  u_xlatb1 = (180.0f < x_1501);
  let x_1503 : vec2<f32> = u_xlat14;
  u_xlat15 = (vec2<f32>(x_1503.x, x_1503.x) + vec2<f32>(360.0f, -360.0f));
  let x_1508 : bool = u_xlatb1;
  if (x_1508) {
    let x_1513 : f32 = u_xlat15.y;
    x_1509 = x_1513;
  } else {
    let x_1516 : f32 = u_xlat14.x;
    x_1509 = x_1516;
  }
  let x_1517 : f32 = x_1509;
  u_xlat14.x = x_1517;
  let x_1519 : bool = u_xlatb21;
  if (x_1519) {
    let x_1524 : f32 = u_xlat15.x;
    x_1520 = x_1524;
  } else {
    let x_1527 : f32 = u_xlat14.x;
    x_1520 = x_1527;
  }
  let x_1528 : f32 = x_1520;
  u_xlat14.x = x_1528;
  let x_1531 : f32 = u_xlat14.x;
  u_xlat14.x = (x_1531 * 0.01481481455266475677f);
  let x_1536 : f32 = u_xlat14.x;
  u_xlat14.x = (-(abs(x_1536)) + 1.0f);
  let x_1542 : f32 = u_xlat14.x;
  u_xlat14.x = max(x_1542, 0.0f);
  let x_1546 : f32 = u_xlat14.x;
  u_xlat21 = ((x_1546 * -2.0f) + 3.0f);
  let x_1551 : f32 = u_xlat14.x;
  let x_1553 : f32 = u_xlat14.x;
  u_xlat14.x = (x_1551 * x_1553);
  let x_1557 : f32 = u_xlat14.x;
  let x_1558 : f32 = u_xlat21;
  u_xlat14.x = (x_1557 * x_1558);
  let x_1562 : f32 = u_xlat14.x;
  let x_1564 : f32 = u_xlat14.x;
  u_xlat14.x = (x_1562 * x_1564);
  let x_1568 : f32 = u_xlat0.x;
  let x_1570 : f32 = u_xlat14.x;
  u_xlat0.x = (x_1568 * x_1570);
  let x_1574 : f32 = u_xlat8.x;
  let x_1577 : f32 = u_xlat7.x;
  u_xlat7.x = ((-(x_1574) * x_1577) + 0.02999999932944774628f);
  let x_1583 : f32 = u_xlat7.x;
  let x_1585 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1583 * x_1585);
  let x_1589 : f32 = u_xlat0.x;
  let x_1593 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_1589 * 0.18000000715255737305f) + x_1593);
  let x_1600 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(1.45143926143646240234f, -0.23651075363159179688f, -0.21492856740951538086f), vec3<f32>(x_1600.x, x_1600.z, x_1600.w));
  let x_1608 : vec4<f32> = u_xlat2;
  u_xlat0.y = dot(vec3<f32>(-0.07655377686023712158f, 1.17622971534729003906f, -0.09967592358589172363f), vec3<f32>(x_1608.x, x_1608.z, x_1608.w));
  let x_1616 : vec4<f32> = u_xlat2;
  u_xlat0.z = dot(vec3<f32>(0.0083161480724811554f, -0.00603244965896010399f, 0.99771630764007568359f), vec3<f32>(x_1616.x, x_1616.z, x_1616.w));
  let x_1620 : vec4<f32> = u_xlat0;
  let x_1623 : vec3<f32> = max(vec3<f32>(x_1620.x, x_1620.y, x_1620.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1624 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1623.x, x_1623.y, x_1623.z, x_1624.w);
  let x_1626 : vec4<f32> = u_xlat0;
  u_xlat21 = dot(vec3<f32>(x_1626.x, x_1626.y, x_1626.z), vec3<f32>(0.27222898602485656738f, 0.67408198118209838867f, 0.05368949845433235168f));
  let x_1633 : f32 = u_xlat21;
  let x_1636 : vec4<f32> = u_xlat0;
  let x_1638 : vec3<f32> = (-(vec3<f32>(x_1633, x_1633, x_1633)) + vec3<f32>(x_1636.x, x_1636.y, x_1636.z));
  let x_1639 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1638.x, x_1638.y, x_1638.z, x_1639.w);
  let x_1641 : vec4<f32> = u_xlat0;
  let x_1646 : f32 = u_xlat21;
  let x_1648 : vec3<f32> = ((vec3<f32>(x_1641.x, x_1641.y, x_1641.z) * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f)) + vec3<f32>(x_1646, x_1646, x_1646));
  let x_1649 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1648.x, x_1648.y, x_1648.z, x_1649.w);
  let x_1651 : vec4<f32> = u_xlat0;
  let x_1655 : vec3<f32> = (vec3<f32>(x_1651.x, x_1651.y, x_1651.z) + vec3<f32>(0.02457859925925731659f, 0.02457859925925731659f, 0.02457859925925731659f));
  let x_1656 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1655.x, x_1655.y, x_1655.z, x_1656.w);
  let x_1658 : vec4<f32> = u_xlat0;
  let x_1660 : vec4<f32> = u_xlat1;
  let x_1665 : vec3<f32> = ((vec3<f32>(x_1658.x, x_1658.y, x_1658.z) * vec3<f32>(x_1660.x, x_1660.y, x_1660.z)) + vec3<f32>(-0.00009053700341610238f, -0.00009053700341610238f, -0.00009053700341610238f));
  let x_1666 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1665.x, x_1665.y, x_1665.z, x_1666.w);
  let x_1668 : vec4<f32> = u_xlat0;
  let x_1675 : vec3<f32> = ((vec3<f32>(x_1668.x, x_1668.y, x_1668.z) * vec3<f32>(0.98372900485992431641f, 0.98372900485992431641f, 0.98372900485992431641f)) + vec3<f32>(0.4329510033130645752f, 0.4329510033130645752f, 0.4329510033130645752f));
  let x_1676 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1675.x, x_1675.y, x_1675.z, x_1676.w);
  let x_1678 : vec4<f32> = u_xlat0;
  let x_1680 : vec4<f32> = u_xlat2;
  let x_1685 : vec3<f32> = ((vec3<f32>(x_1678.x, x_1678.y, x_1678.z) * vec3<f32>(x_1680.x, x_1680.y, x_1680.z)) + vec3<f32>(0.23808099329471588135f, 0.23808099329471588135f, 0.23808099329471588135f));
  let x_1686 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1685.x, x_1685.y, x_1685.z, x_1686.w);
  let x_1688 : vec4<f32> = u_xlat1;
  let x_1690 : vec4<f32> = u_xlat0;
  let x_1692 : vec3<f32> = (vec3<f32>(x_1688.x, x_1688.y, x_1688.z) / vec3<f32>(x_1690.x, x_1690.y, x_1690.z));
  let x_1693 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1692.x, x_1692.y, x_1692.z, x_1693.w);
  let x_1699 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(0.66245418787002563477f, 0.13400420546531677246f, 0.1561876833438873291f), vec3<f32>(x_1699.x, x_1699.y, x_1699.z));
  let x_1707 : vec4<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(0.27222871780395507812f, 0.67408174276351928711f, 0.05368951708078384399f), vec3<f32>(x_1707.x, x_1707.y, x_1707.z));
  let x_1715 : vec4<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(-0.00557464966550469398f, 0.00406073359772562981f, 1.01033914089202880859f), vec3<f32>(x_1715.x, x_1715.y, x_1715.z));
  let x_1719 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(x_1719.x, x_1719.y, x_1719.z), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1724 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1724, 0.00009999999747378752f);
  let x_1727 : vec4<f32> = u_xlat1;
  let x_1729 : vec4<f32> = u_xlat0;
  let x_1731 : vec2<f32> = (vec2<f32>(x_1727.x, x_1727.y) / vec2<f32>(x_1729.x, x_1729.x));
  let x_1732 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1731.x, x_1731.y, x_1732.z, x_1732.w);
  let x_1735 : f32 = u_xlat1.y;
  u_xlat21 = max(x_1735, 0.0f);
  let x_1737 : f32 = u_xlat21;
  u_xlat21 = min(x_1737, 65504.0f);
  let x_1740 : f32 = u_xlat21;
  u_xlat21 = log2(x_1740);
  let x_1742 : f32 = u_xlat21;
  u_xlat21 = (x_1742 * 0.98110002279281616211f);
  let x_1745 : f32 = u_xlat21;
  u_xlat1.y = exp2(x_1745);
  let x_1749 : f32 = u_xlat0.y;
  u_xlat21 = max(x_1749, 0.00009999999747378752f);
  let x_1752 : f32 = u_xlat1.y;
  let x_1753 : f32 = u_xlat21;
  u_xlat21 = (x_1752 / x_1753);
  let x_1756 : f32 = u_xlat0.x;
  u_xlat22 = (-(x_1756) + 1.0f);
  let x_1760 : f32 = u_xlat0.y;
  let x_1762 : f32 = u_xlat22;
  u_xlat0.z = (-(x_1760) + x_1762);
  let x_1765 : f32 = u_xlat21;
  let x_1767 : vec4<f32> = u_xlat0;
  let x_1769 : vec2<f32> = (vec2<f32>(x_1765, x_1765) * vec2<f32>(x_1767.x, x_1767.z));
  let x_1770 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1769.x, x_1770.y, x_1769.y, x_1770.w);
  let x_1776 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(1.64102339744567871094f, -0.32480329275131225586f, -0.23642469942569732666f), vec3<f32>(x_1776.x, x_1776.y, x_1776.z));
  let x_1784 : vec4<f32> = u_xlat1;
  u_xlat0.y = dot(vec3<f32>(-0.66366285085678100586f, 1.6153316497802734375f, 0.01675634831190109253f), vec3<f32>(x_1784.x, x_1784.y, x_1784.z));
  let x_1792 : vec4<f32> = u_xlat1;
  u_xlat0.z = dot(vec3<f32>(0.01172189414501190186f, -0.00828444212675094604f, 0.98839485645294189453f), vec3<f32>(x_1792.x, x_1792.y, x_1792.z));
  let x_1796 : vec4<f32> = u_xlat0;
  u_xlat21 = dot(vec3<f32>(x_1796.x, x_1796.y, x_1796.z), vec3<f32>(0.27222898602485656738f, 0.67408198118209838867f, 0.05368949845433235168f));
  let x_1799 : f32 = u_xlat21;
  let x_1802 : vec4<f32> = u_xlat0;
  let x_1804 : vec3<f32> = (-(vec3<f32>(x_1799, x_1799, x_1799)) + vec3<f32>(x_1802.x, x_1802.y, x_1802.z));
  let x_1805 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1804.x, x_1804.y, x_1804.z, x_1805.w);
  let x_1807 : vec4<f32> = u_xlat0;
  let x_1812 : f32 = u_xlat21;
  let x_1814 : vec3<f32> = ((vec3<f32>(x_1807.x, x_1807.y, x_1807.z) * vec3<f32>(0.93000000715255737305f, 0.93000000715255737305f, 0.93000000715255737305f)) + vec3<f32>(x_1812, x_1812, x_1812));
  let x_1815 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1814.x, x_1814.y, x_1814.z, x_1815.w);
  let x_1817 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(0.66245418787002563477f, 0.13400420546531677246f, 0.1561876833438873291f), vec3<f32>(x_1817.x, x_1817.y, x_1817.z));
  let x_1821 : vec4<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(0.27222871780395507812f, 0.67408174276351928711f, 0.05368951708078384399f), vec3<f32>(x_1821.x, x_1821.y, x_1821.z));
  let x_1825 : vec4<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(-0.00557464966550469398f, 0.00406073359772562981f, 1.01033914089202880859f), vec3<f32>(x_1825.x, x_1825.y, x_1825.z));
  let x_1833 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(0.98722398281097412109f, -0.00611326983198523521f, 0.01595330052077770233f), vec3<f32>(x_1833.x, x_1833.y, x_1833.z));
  let x_1841 : vec4<f32> = u_xlat1;
  u_xlat0.y = dot(vec3<f32>(-0.00759836006909608841f, 1.00186002254486083984f, 0.00533019984140992165f), vec3<f32>(x_1841.x, x_1841.y, x_1841.z));
  let x_1849 : vec4<f32> = u_xlat1;
  u_xlat0.z = dot(vec3<f32>(0.0030725700780749321f, -0.00509594986215233803f, 1.08168005943298339844f), vec3<f32>(x_1849.x, x_1849.y, x_1849.z));
  let x_1857 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(3.24096989631652832031f, -1.53738319873809814453f, -0.49861076474189758301f), vec3<f32>(x_1857.x, x_1857.y, x_1857.z));
  let x_1862 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1862, 0.0f, 1.0f);
  let x_1869 : vec4<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(-0.96924364566802978516f, 1.87596750259399414062f, 0.04155505821108818054f), vec3<f32>(x_1869.x, x_1869.y, x_1869.z));
  let x_1874 : f32 = u_xlat1.y;
  u_xlat1.y = clamp(x_1874, 0.0f, 1.0f);
  let x_1881 : vec4<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(0.05563008040189743042f, -0.2039769589900970459f, 1.05697154998779296875f), vec3<f32>(x_1881.x, x_1881.y, x_1881.z));
  let x_1886 : f32 = u_xlat1.z;
  u_xlat1.z = clamp(x_1886, 0.0f, 1.0f);
  let x_1891 : f32 = x_25.x_UserLut_Params.w;
  u_xlatb0.x = (0.0f < x_1891);
  let x_1895 : bool = u_xlatb0.x;
  if (x_1895) {
    let x_1898 : vec4<f32> = u_xlat1;
    let x_1902 : vec3<f32> = (vec3<f32>(x_1898.x, x_1898.y, x_1898.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
    let x_1903 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1902.x, x_1902.y, x_1902.z, x_1903.w);
    let x_1905 : vec4<f32> = u_xlat1;
    let x_1907 : vec3<f32> = log2(vec3<f32>(x_1905.x, x_1905.y, x_1905.z));
    let x_1908 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1907.x, x_1907.y, x_1907.z, x_1908.w);
    let x_1910 : vec4<f32> = u_xlat2;
    let x_1914 : vec3<f32> = (vec3<f32>(x_1910.x, x_1910.y, x_1910.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
    let x_1915 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1914.x, x_1914.y, x_1914.z, x_1915.w);
    let x_1917 : vec4<f32> = u_xlat2;
    let x_1919 : vec3<f32> = exp2(vec3<f32>(x_1917.x, x_1917.y, x_1917.z));
    let x_1920 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1919.x, x_1919.y, x_1919.z, x_1920.w);
    let x_1922 : vec4<f32> = u_xlat2;
    let x_1929 : vec3<f32> = ((vec3<f32>(x_1922.x, x_1922.y, x_1922.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
    let x_1930 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1929.x, x_1929.y, x_1929.z, x_1930.w);
    let x_1934 : vec4<f32> = u_xlat1;
    let x_1936 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_1934.x, x_1934.y, x_1934.z, x_1934.x));
    u_xlatb3 = vec3<bool>(x_1936.x, x_1936.y, x_1936.z);
    let x_1940 : vec4<f32> = u_xlat0;
    hlslcc_movcTemp = x_1940;
    let x_1942 : bool = u_xlatb3.x;
    if (x_1942) {
      let x_1947 : f32 = u_xlat0.x;
      x_1943 = x_1947;
    } else {
      let x_1950 : f32 = u_xlat2.x;
      x_1943 = x_1950;
    }
    let x_1951 : f32 = x_1943;
    hlslcc_movcTemp.x = x_1951;
    let x_1954 : bool = u_xlatb3.y;
    if (x_1954) {
      let x_1959 : f32 = u_xlat0.y;
      x_1955 = x_1959;
    } else {
      let x_1962 : f32 = u_xlat2.y;
      x_1955 = x_1962;
    }
    let x_1963 : f32 = x_1955;
    hlslcc_movcTemp.y = x_1963;
    let x_1966 : bool = u_xlatb3.z;
    if (x_1966) {
      let x_1971 : f32 = u_xlat0.z;
      x_1967 = x_1971;
    } else {
      let x_1974 : f32 = u_xlat2.z;
      x_1967 = x_1974;
    }
    let x_1975 : f32 = x_1967;
    hlslcc_movcTemp.z = x_1975;
    let x_1977 : vec4<f32> = hlslcc_movcTemp;
    u_xlat0 = x_1977;
    let x_1978 : vec4<f32> = u_xlat0;
    let x_1981 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1983 : vec3<f32> = (vec3<f32>(x_1978.z, x_1978.x, x_1978.y) * vec3<f32>(x_1981.z, x_1981.z, x_1981.z));
    let x_1984 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1983.x, x_1983.y, x_1983.z, x_1984.w);
    let x_1987 : f32 = u_xlat2.x;
    u_xlat21 = floor(x_1987);
    let x_1990 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1992 : vec2<f32> = (vec2<f32>(x_1990.x, x_1990.y) * vec2<f32>(0.5f, 0.5f));
    let x_1993 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1992.x, x_1993.y, x_1993.z, x_1992.y);
    let x_1995 : vec4<f32> = u_xlat2;
    let x_1998 : vec4<f32> = x_25.x_UserLut_Params;
    let x_2001 : vec4<f32> = u_xlat2;
    let x_2003 : vec2<f32> = ((vec2<f32>(x_1995.y, x_1995.z) * vec2<f32>(x_1998.x, x_1998.y)) + vec2<f32>(x_2001.x, x_2001.w));
    let x_2004 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_2004.x, x_2003.x, x_2003.y, x_2004.w);
    let x_2006 : f32 = u_xlat21;
    let x_2008 : f32 = x_25.x_UserLut_Params.y;
    let x_2011 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_2006 * x_2008) + x_2011);
    let x_2018 : vec4<f32> = u_xlat2;
    let x_2020 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_2018.x, x_2018.z), 0.0f);
    u_xlat3 = vec3<f32>(x_2020.x, x_2020.y, x_2020.z);
    let x_2023 : f32 = x_25.x_UserLut_Params.y;
    u_xlat4.x = x_2023;
    u_xlat4.y = 0.0f;
    let x_2026 : vec4<f32> = u_xlat2;
    let x_2028 : vec4<f32> = u_xlat4;
    let x_2030 : vec2<f32> = (vec2<f32>(x_2026.x, x_2026.z) + vec2<f32>(x_2028.x, x_2028.y));
    let x_2031 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_2030.x, x_2030.y, x_2031.z, x_2031.w);
    let x_2036 : vec4<f32> = u_xlat2;
    let x_2038 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_2036.x, x_2036.y), 0.0f);
    let x_2039 : vec3<f32> = vec3<f32>(x_2038.x, x_2038.y, x_2038.z);
    let x_2040 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_2039.x, x_2039.y, x_2039.z, x_2040.w);
    let x_2043 : f32 = u_xlat0.z;
    let x_2045 : f32 = x_25.x_UserLut_Params.z;
    let x_2047 : f32 = u_xlat21;
    u_xlat21 = ((x_2043 * x_2045) + -(x_2047));
    let x_2050 : vec3<f32> = u_xlat3;
    let x_2052 : vec4<f32> = u_xlat2;
    let x_2054 : vec3<f32> = (-(x_2050) + vec3<f32>(x_2052.x, x_2052.y, x_2052.z));
    let x_2055 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_2054.x, x_2054.y, x_2054.z, x_2055.w);
    let x_2057 : f32 = u_xlat21;
    let x_2059 : vec4<f32> = u_xlat2;
    let x_2062 : vec3<f32> = u_xlat3;
    let x_2063 : vec3<f32> = ((vec3<f32>(x_2057, x_2057, x_2057) * vec3<f32>(x_2059.x, x_2059.y, x_2059.z)) + x_2062);
    let x_2064 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_2063.x, x_2063.y, x_2063.z, x_2064.w);
    let x_2066 : vec4<f32> = u_xlat0;
    let x_2069 : vec4<f32> = u_xlat2;
    let x_2071 : vec3<f32> = (-(vec3<f32>(x_2066.x, x_2066.y, x_2066.z)) + vec3<f32>(x_2069.x, x_2069.y, x_2069.z));
    let x_2072 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_2071.x, x_2071.y, x_2071.z, x_2072.w);
    let x_2075 : vec4<f32> = x_25.x_UserLut_Params;
    let x_2077 : vec4<f32> = u_xlat2;
    let x_2080 : vec4<f32> = u_xlat0;
    let x_2082 : vec3<f32> = ((vec3<f32>(x_2075.w, x_2075.w, x_2075.w) * vec3<f32>(x_2077.x, x_2077.y, x_2077.z)) + vec3<f32>(x_2080.x, x_2080.y, x_2080.z));
    let x_2083 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_2082.x, x_2082.y, x_2082.z, x_2083.w);
    let x_2085 : vec4<f32> = u_xlat0;
    let x_2089 : vec3<f32> = (vec3<f32>(x_2085.x, x_2085.y, x_2085.z) * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
    let x_2090 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_2089.x, x_2089.y, x_2089.z, x_2090.w);
    let x_2092 : vec4<f32> = u_xlat0;
    u_xlat3 = (vec3<f32>(x_2092.x, x_2092.y, x_2092.z) + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
    let x_2097 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_2097 * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
    let x_2101 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_2101));
    let x_2104 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_2104 * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
    let x_2108 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_2108);
    let x_2112 : vec4<f32> = u_xlat0;
    let x_2114 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_2112.x, x_2112.y, x_2112.z, x_2112.x));
    u_xlatb0 = vec3<bool>(x_2114.x, x_2114.y, x_2114.z);
    let x_2117 : bool = u_xlatb0.x;
    if (x_2117) {
      let x_2122 : f32 = u_xlat2.x;
      x_2118 = x_2122;
    } else {
      let x_2125 : f32 = u_xlat3.x;
      x_2118 = x_2125;
    }
    let x_2126 : f32 = x_2118;
    u_xlat1.x = x_2126;
    let x_2129 : bool = u_xlatb0.y;
    if (x_2129) {
      let x_2134 : f32 = u_xlat2.y;
      x_2130 = x_2134;
    } else {
      let x_2137 : f32 = u_xlat3.y;
      x_2130 = x_2137;
    }
    let x_2138 : f32 = x_2130;
    u_xlat1.y = x_2138;
    let x_2141 : bool = u_xlatb0.z;
    if (x_2141) {
      let x_2146 : f32 = u_xlat2.z;
      x_2142 = x_2146;
    } else {
      let x_2149 : f32 = u_xlat3.z;
      x_2142 = x_2149;
    }
    let x_2150 : f32 = x_2142;
    u_xlat1.z = x_2150;
  }
  let x_2152 : vec4<f32> = u_xlat1;
  let x_2155 : vec4<f32> = x_25.x_Lut_Params;
  let x_2157 : vec3<f32> = (vec3<f32>(x_2152.z, x_2152.x, x_2152.y) * vec3<f32>(x_2155.z, x_2155.z, x_2155.z));
  let x_2158 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2157.x, x_2157.y, x_2157.z, x_2158.w);
  let x_2161 : f32 = u_xlat0.x;
  u_xlat0.x = floor(x_2161);
  let x_2165 : vec4<f32> = x_25.x_Lut_Params;
  let x_2167 : vec2<f32> = (vec2<f32>(x_2165.x, x_2165.y) * vec2<f32>(0.5f, 0.5f));
  let x_2168 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2167.x, x_2167.y, x_2168.z, x_2168.w);
  let x_2170 : vec4<f32> = u_xlat0;
  let x_2173 : vec4<f32> = x_25.x_Lut_Params;
  let x_2176 : vec4<f32> = u_xlat1;
  let x_2178 : vec2<f32> = ((vec2<f32>(x_2170.y, x_2170.z) * vec2<f32>(x_2173.x, x_2173.y)) + vec2<f32>(x_2176.x, x_2176.y));
  let x_2179 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_2179.x, x_2178.x, x_2178.y, x_2179.w);
  let x_2182 : f32 = u_xlat0.x;
  let x_2184 : f32 = x_25.x_Lut_Params.y;
  let x_2187 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_2182 * x_2184) + x_2187);
  let x_2194 : vec4<f32> = u_xlat2;
  let x_2196 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_2194.x, x_2194.z), 0.0f);
  u_xlat7 = vec3<f32>(x_2196.x, x_2196.y, x_2196.z);
  let x_2199 : f32 = x_25.x_Lut_Params.y;
  u_xlat1.x = x_2199;
  u_xlat1.y = 0.0f;
  let x_2202 : vec4<f32> = u_xlat1;
  let x_2204 : vec4<f32> = u_xlat2;
  let x_2206 : vec2<f32> = (vec2<f32>(x_2202.x, x_2202.y) + vec2<f32>(x_2204.x, x_2204.z));
  let x_2207 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2206.x, x_2206.y, x_2207.z, x_2207.w);
  let x_2212 : vec4<f32> = u_xlat1;
  let x_2214 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_2212.x, x_2212.y), 0.0f);
  let x_2215 : vec3<f32> = vec3<f32>(x_2214.x, x_2214.y, x_2214.z);
  let x_2216 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2215.x, x_2215.y, x_2216.z, x_2215.z);
  let x_2219 : f32 = u_xlat1.z;
  let x_2221 : f32 = x_25.x_Lut_Params.z;
  let x_2224 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2219 * x_2221) + -(x_2224));
  let x_2228 : vec3<f32> = u_xlat7;
  let x_2230 : vec4<f32> = u_xlat1;
  let x_2232 : vec3<f32> = (-(x_2228) + vec3<f32>(x_2230.x, x_2230.y, x_2230.w));
  let x_2233 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2232.x, x_2232.y, x_2232.z, x_2233.w);
  let x_2235 : vec4<f32> = u_xlat0;
  let x_2237 : vec4<f32> = u_xlat1;
  let x_2240 : vec3<f32> = u_xlat7;
  let x_2241 : vec3<f32> = ((vec3<f32>(x_2235.x, x_2235.x, x_2235.x) * vec3<f32>(x_2237.x, x_2237.y, x_2237.z)) + x_2240);
  let x_2242 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2241.x, x_2241.y, x_2241.z, x_2242.w);
  let x_2244 : vec2<f32> = vs_TEXCOORD0;
  let x_2247 : vec4<f32> = x_25.x_Grain_TilingParams;
  let x_2251 : vec4<f32> = x_25.x_Grain_TilingParams;
  let x_2253 : vec2<f32> = ((x_2244 * vec2<f32>(x_2247.x, x_2247.y)) + vec2<f32>(x_2251.z, x_2251.w));
  let x_2254 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2253.x, x_2253.y, x_2254.z, x_2254.w);
  let x_2261 : vec4<f32> = u_xlat1;
  let x_2264 : f32 = x_25.x_GlobalMipBias.x;
  let x_2265 : vec4<f32> = textureSampleBias(x_Grain_Texture, sampler_LinearRepeat, vec2<f32>(x_2261.x, x_2261.y), x_2264);
  u_xlat21 = x_2265.w;
  let x_2267 : f32 = u_xlat21;
  u_xlat21 = (x_2267 + -0.5f);
  let x_2269 : f32 = u_xlat21;
  let x_2270 : f32 = u_xlat21;
  u_xlat21 = (x_2269 + x_2270);
  let x_2272 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(x_2272.x, x_2272.y, x_2272.z), vec3<f32>(0.21267290413379669189f, 0.71515220403671264648f, 0.07217500358819961548f));
  let x_2281 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_2281);
  let x_2286 : f32 = x_25.x_Grain_Params.y;
  let x_2288 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_2286 * -(x_2288)) + 1.0f);
  let x_2293 : f32 = u_xlat21;
  let x_2295 : vec4<f32> = u_xlat0;
  u_xlat8 = (vec3<f32>(x_2293, x_2293, x_2293) * vec3<f32>(x_2295.x, x_2295.y, x_2295.z));
  let x_2298 : vec3<f32> = u_xlat8;
  let x_2301 : vec2<f32> = x_25.x_Grain_Params;
  u_xlat8 = (x_2298 * vec3<f32>(x_2301.x, x_2301.x, x_2301.x));
  let x_2304 : vec3<f32> = u_xlat8;
  let x_2305 : vec4<f32> = u_xlat1;
  let x_2308 : vec4<f32> = u_xlat0;
  let x_2310 : vec3<f32> = ((x_2304 * vec3<f32>(x_2305.x, x_2305.x, x_2305.x)) + vec3<f32>(x_2308.x, x_2308.y, x_2308.z));
  let x_2311 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2310.x, x_2310.y, x_2310.z, x_2311.w);
  let x_2315 : vec4<f32> = u_xlat0;
  let x_2317 : vec3<f32> = sqrt(vec3<f32>(x_2315.x, x_2315.y, x_2315.z));
  let x_2318 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2317.x, x_2317.y, x_2317.z, x_2318.w);
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


