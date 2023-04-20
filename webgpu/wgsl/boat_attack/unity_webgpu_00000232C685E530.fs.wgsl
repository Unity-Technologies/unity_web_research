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
  /* @offset(256) */
  x_Dithering_Params : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat14 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_25 : PGlobals;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlatb8 : bool;

var<private> u_xlat15 : vec2<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat22 : f32;

var<private> u_xlat9 : f32;

var<private> u_xlat16 : vec2<f32>;

var<private> u_xlat23 : f32;

var<private> u_xlatb3 : vec3<bool>;

var<private> u_xlatb1 : vec3<bool>;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_LinearClamp : sampler;

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

@group(0) @binding(4) var x_UserLut : texture_2d<f32>;

@group(0) @binding(3) var x_InternalLut : texture_2d<f32>;

@group(0) @binding(2) var x_Grain_Texture : texture_2d<f32>;

@group(0) @binding(8) var sampler_LinearRepeat : sampler;

var<private> u_xlat8 : vec3<f32>;

@group(0) @binding(5) var x_BlueNoise_Texture : texture_2d<f32>;

@group(0) @binding(7) var sampler_PointRepeat : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_237 : f32;
  var x_491 : f32;
  var x_678 : f32;
  var hlslcc_movcTemp : vec3<f32>;
  var x_1193 : f32;
  var x_1205 : f32;
  var x_1217 : f32;
  var x_1362 : f32;
  var x_1374 : f32;
  var x_1386 : f32;
  var x_1584 : f32;
  var x_1596 : f32;
  var x_1608 : f32;
  var x_1695 : f32;
  var x_1707 : f32;
  var x_1719 : f32;
  var x_1774 : f32;
  var x_1786 : f32;
  var x_1798 : f32;
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
  let x_61 : vec4<f32> = u_xlat0;
  let x_63 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec2<f32>(x_61.x, x_61.y), vec2<f32>(x_63.x, x_63.y));
  let x_71 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_71);
  let x_81 : f32 = x_25.x_Distortion_Params2.w;
  u_xlatb8 = (0.0f < x_81);
  let x_83 : bool = u_xlatb8;
  if (x_83) {
    let x_87 : vec3<f32> = u_xlat1;
    let x_90 : vec4<f32> = x_25.x_Distortion_Params2;
    u_xlat15 = (vec2<f32>(x_87.x, x_87.x) * vec2<f32>(x_90.x, x_90.y));
    let x_95 : f32 = u_xlat15.x;
    u_xlat2.x = sin(x_95);
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
    u_xlatb1.x = (x_228 < -(x_230));
    let x_235 : bool = u_xlatb1.x;
    if (x_235) {
      let x_240 : f32 = u_xlat9;
      x_237 = -(x_240);
    } else {
      let x_243 : f32 = u_xlat9;
      x_237 = x_243;
    }
    let x_244 : f32 = x_237;
    u_xlat1.x = x_244;
    let x_247 : f32 = u_xlat2.x;
    let x_249 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_247 * x_249) + -1.0f);
    let x_253 : vec4<f32> = u_xlat0;
    let x_255 : vec3<f32> = u_xlat1;
    let x_258 : vec2<f32> = u_xlat14;
    u_xlat15 = ((vec2<f32>(x_253.x, x_253.y) * vec2<f32>(x_255.x, x_255.x)) + x_258);
  }
  let x_260 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = ((vec4<f32>(x_260.x, x_260.y, x_260.x, x_260.y) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_267 : vec4<f32> = u_xlat0;
  let x_269 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec2<f32>(x_267.z, x_267.w), vec2<f32>(x_269.z, x_269.w));
  let x_273 : vec4<f32> = u_xlat0;
  let x_274 : vec3<f32> = u_xlat1;
  u_xlat0 = (x_273 * vec4<f32>(x_274.x, x_274.x, x_274.x, x_274.x));
  let x_277 : vec4<f32> = u_xlat0;
  let x_280 : f32 = x_25.x_Chroma_Params;
  u_xlat0 = (x_277 * vec4<f32>(x_280, x_280, x_280, x_280));
  let x_285 : vec4<f32> = x_25.x_BlitTexture_TexelSize;
  let x_291 : vec4<f32> = x_25.x_RTHandleScale;
  let x_293 : vec2<f32> = ((-(vec2<f32>(x_285.x, x_285.y)) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_291.x, x_291.y));
  let x_294 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_293.x, x_293.y, x_294.z, x_294.w);
  let x_296 : vec2<f32> = u_xlat15;
  let x_297 : vec4<f32> = u_xlat2;
  u_xlat16 = min(x_296, vec2<f32>(x_297.x, x_297.y));
  let x_310 : vec2<f32> = u_xlat16;
  let x_313 : f32 = x_25.x_GlobalMipBias.x;
  let x_314 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, x_310, x_313);
  u_xlat3.x = x_314.x;
  let x_317 : vec4<f32> = u_xlat0;
  let x_322 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = ((x_317 * vec4<f32>(-0.3333333432674407959f, -0.3333333432674407959f, -0.6666666865348815918f, -0.6666666865348815918f)) + vec4<f32>(x_322.x, x_322.y, x_322.x, x_322.y));
  let x_325 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_325 + vec4<f32>(-0.5f, -0.5f, -0.5f, -0.5f));
  let x_329 : vec4<f32> = u_xlat0;
  let x_331 : vec4<f32> = x_25.x_Distortion_Params2;
  u_xlat4 = ((x_329 * vec4<f32>(x_331.z, x_331.z, x_331.z, x_331.z)) + vec4<f32>(0.5f, 0.5f, 0.5f, 0.5f));
  let x_336 : vec4<f32> = u_xlat0;
  let x_338 : vec4<f32> = x_25.x_Distortion_Params2;
  let x_342 : vec4<f32> = x_25.x_Distortion_Params1;
  u_xlat0 = ((x_336 * vec4<f32>(x_338.z, x_338.z, x_338.z, x_338.z)) + -(vec4<f32>(x_342.x, x_342.y, x_342.x, x_342.y)));
  let x_346 : vec4<f32> = u_xlat0;
  let x_348 : vec4<f32> = x_25.x_Distortion_Params1;
  u_xlat0 = (x_346 * vec4<f32>(x_348.z, x_348.w, x_348.z, x_348.w));
  let x_351 : vec4<f32> = u_xlat0;
  let x_353 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec2<f32>(x_351.x, x_351.y), vec2<f32>(x_353.x, x_353.y));
  let x_358 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_358);
  let x_361 : bool = u_xlatb8;
  if (x_361) {
    let x_364 : vec3<f32> = u_xlat1;
    let x_367 : vec4<f32> = x_25.x_Distortion_Params2;
    u_xlat16 = (vec2<f32>(x_364.x, x_364.x) * vec2<f32>(x_367.x, x_367.y));
    let x_372 : f32 = u_xlat16.x;
    u_xlat5.x = sin(x_372);
    let x_377 : f32 = u_xlat16.x;
    u_xlat6.x = cos(x_377);
    let x_381 : f32 = u_xlat5.x;
    let x_383 : f32 = u_xlat6.x;
    u_xlat16.x = (x_381 / x_383);
    let x_387 : f32 = u_xlat16.y;
    u_xlat23 = (1.0f / x_387);
    let x_390 : f32 = u_xlat16.x;
    let x_391 : f32 = u_xlat23;
    u_xlat16.x = ((x_390 * x_391) + -1.0f);
    let x_395 : vec4<f32> = u_xlat0;
    let x_397 : vec2<f32> = u_xlat16;
    let x_400 : vec4<f32> = u_xlat4;
    u_xlat16 = ((vec2<f32>(x_395.x, x_395.y) * vec2<f32>(x_397.x, x_397.x)) + vec2<f32>(x_400.x, x_400.y));
  } else {
    let x_406 : f32 = u_xlat1.x;
    u_xlat24 = (1.0f / x_406);
    let x_408 : f32 = u_xlat24;
    let x_410 : f32 = x_25.x_Distortion_Params2.x;
    u_xlat24 = (x_408 * x_410);
    let x_413 : f32 = u_xlat1.x;
    let x_415 : f32 = x_25.x_Distortion_Params2.y;
    u_xlat1.x = (x_413 * x_415);
    let x_419 : f32 = u_xlat1.x;
    u_xlat5.x = min(abs(x_419), 1.0f);
    let x_425 : f32 = u_xlat1.x;
    u_xlat12 = max(abs(x_425), 1.0f);
    let x_428 : f32 = u_xlat12;
    u_xlat12 = (1.0f / x_428);
    let x_430 : f32 = u_xlat12;
    let x_432 : f32 = u_xlat5.x;
    u_xlat5.x = (x_430 * x_432);
    let x_436 : f32 = u_xlat5.x;
    let x_438 : f32 = u_xlat5.x;
    u_xlat12 = (x_436 * x_438);
    let x_441 : f32 = u_xlat12;
    u_xlat19 = ((x_441 * 0.02083509974181652069f) + -0.08513300120830535889f);
    let x_444 : f32 = u_xlat12;
    let x_445 : f32 = u_xlat19;
    u_xlat19 = ((x_444 * x_445) + 0.18014100193977355957f);
    let x_448 : f32 = u_xlat12;
    let x_449 : f32 = u_xlat19;
    u_xlat19 = ((x_448 * x_449) + -0.33029949665069580078f);
    let x_452 : f32 = u_xlat12;
    let x_453 : f32 = u_xlat19;
    u_xlat12 = ((x_452 * x_453) + 0.99986600875854492188f);
    let x_456 : f32 = u_xlat12;
    let x_458 : f32 = u_xlat5.x;
    u_xlat19 = (x_456 * x_458);
    let x_462 : f32 = u_xlat1.x;
    u_xlatb26 = (1.0f < abs(x_462));
    let x_465 : f32 = u_xlat19;
    u_xlat19 = ((x_465 * -2.0f) + 1.57079637050628662109f);
    let x_468 : bool = u_xlatb26;
    let x_469 : f32 = u_xlat19;
    u_xlat19 = select(0.0f, x_469, x_468);
    let x_472 : f32 = u_xlat5.x;
    let x_473 : f32 = u_xlat12;
    let x_475 : f32 = u_xlat19;
    u_xlat5.x = ((x_472 * x_473) + x_475);
    let x_479 : f32 = u_xlat1.x;
    u_xlat1.x = min(x_479, 1.0f);
    let x_483 : f32 = u_xlat1.x;
    let x_485 : f32 = u_xlat1.x;
    u_xlatb1.x = (x_483 < -(x_485));
    let x_490 : bool = u_xlatb1.x;
    if (x_490) {
      let x_495 : f32 = u_xlat5.x;
      x_491 = -(x_495);
    } else {
      let x_499 : f32 = u_xlat5.x;
      x_491 = x_499;
    }
    let x_500 : f32 = x_491;
    u_xlat1.x = x_500;
    let x_502 : f32 = u_xlat24;
    let x_504 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_502 * x_504) + -1.0f);
    let x_508 : vec4<f32> = u_xlat0;
    let x_510 : vec3<f32> = u_xlat1;
    let x_513 : vec4<f32> = u_xlat4;
    u_xlat16 = ((vec2<f32>(x_508.x, x_508.y) * vec2<f32>(x_510.x, x_510.x)) + vec2<f32>(x_513.x, x_513.y));
  }
  let x_516 : vec4<f32> = u_xlat2;
  let x_518 : vec2<f32> = u_xlat16;
  let x_519 : vec2<f32> = min(vec2<f32>(x_516.x, x_516.y), x_518);
  let x_520 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_519.x, x_519.y, x_520.z, x_520.w);
  let x_525 : vec4<f32> = u_xlat0;
  let x_528 : f32 = x_25.x_GlobalMipBias.x;
  let x_529 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_525.x, x_525.y), x_528);
  u_xlat3.y = x_529.y;
  let x_532 : vec4<f32> = u_xlat0;
  let x_534 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec2<f32>(x_532.z, x_532.w), vec2<f32>(x_534.z, x_534.w));
  let x_539 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_539);
  let x_542 : bool = u_xlatb8;
  if (x_542) {
    let x_545 : vec4<f32> = u_xlat0;
    let x_548 : vec4<f32> = x_25.x_Distortion_Params2;
    let x_550 : vec2<f32> = (vec2<f32>(x_545.x, x_545.x) * vec2<f32>(x_548.x, x_548.y));
    let x_551 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_550.x, x_550.y, x_551.z);
    let x_554 : f32 = u_xlat1.x;
    u_xlat4.x = cos(x_554);
    let x_558 : f32 = u_xlat1.x;
    u_xlat1.x = sin(x_558);
    let x_563 : f32 = u_xlat1.x;
    let x_565 : f32 = u_xlat4.x;
    u_xlat7.x = (x_563 / x_565);
    let x_569 : f32 = u_xlat1.y;
    u_xlat1.x = (1.0f / x_569);
    let x_573 : f32 = u_xlat7.x;
    let x_575 : f32 = u_xlat1.x;
    u_xlat7.x = ((x_573 * x_575) + -1.0f);
    let x_579 : vec4<f32> = u_xlat0;
    let x_581 : vec3<f32> = u_xlat7;
    let x_584 : vec4<f32> = u_xlat4;
    let x_586 : vec2<f32> = ((vec2<f32>(x_579.z, x_579.w) * vec2<f32>(x_581.x, x_581.x)) + vec2<f32>(x_584.z, x_584.w));
    let x_587 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_586.x, x_586.y, x_587.z);
  } else {
    let x_591 : f32 = u_xlat0.x;
    u_xlat7.x = (1.0f / x_591);
    let x_595 : f32 = u_xlat7.x;
    let x_597 : f32 = x_25.x_Distortion_Params2.x;
    u_xlat7.x = (x_595 * x_597);
    let x_601 : f32 = u_xlat0.x;
    let x_603 : f32 = x_25.x_Distortion_Params2.y;
    u_xlat0.x = (x_601 * x_603);
    let x_607 : f32 = u_xlat0.x;
    u_xlat16.x = min(abs(x_607), 1.0f);
    let x_612 : f32 = u_xlat0.x;
    u_xlat23 = max(abs(x_612), 1.0f);
    let x_615 : f32 = u_xlat23;
    u_xlat23 = (1.0f / x_615);
    let x_617 : f32 = u_xlat23;
    let x_619 : f32 = u_xlat16.x;
    u_xlat16.x = (x_617 * x_619);
    let x_623 : f32 = u_xlat16.x;
    let x_625 : f32 = u_xlat16.x;
    u_xlat23 = (x_623 * x_625);
    let x_627 : f32 = u_xlat23;
    u_xlat24 = ((x_627 * 0.02083509974181652069f) + -0.08513300120830535889f);
    let x_630 : f32 = u_xlat23;
    let x_631 : f32 = u_xlat24;
    u_xlat24 = ((x_630 * x_631) + 0.18014100193977355957f);
    let x_634 : f32 = u_xlat23;
    let x_635 : f32 = u_xlat24;
    u_xlat24 = ((x_634 * x_635) + -0.33029949665069580078f);
    let x_638 : f32 = u_xlat23;
    let x_639 : f32 = u_xlat24;
    u_xlat23 = ((x_638 * x_639) + 0.99986600875854492188f);
    let x_642 : f32 = u_xlat23;
    let x_644 : f32 = u_xlat16.x;
    u_xlat24 = (x_642 * x_644);
    let x_648 : f32 = u_xlat0.x;
    u_xlatb4 = (1.0f < abs(x_648));
    let x_651 : f32 = u_xlat24;
    u_xlat24 = ((x_651 * -2.0f) + 1.57079637050628662109f);
    let x_654 : bool = u_xlatb4;
    let x_655 : f32 = u_xlat24;
    u_xlat24 = select(0.0f, x_655, x_654);
    let x_658 : f32 = u_xlat16.x;
    let x_659 : f32 = u_xlat23;
    let x_661 : f32 = u_xlat24;
    u_xlat16.x = ((x_658 * x_659) + x_661);
    let x_665 : f32 = u_xlat0.x;
    u_xlat0.x = min(x_665, 1.0f);
    let x_670 : f32 = u_xlat0.x;
    let x_672 : f32 = u_xlat0.x;
    u_xlatb0.x = (x_670 < -(x_672));
    let x_677 : bool = u_xlatb0.x;
    if (x_677) {
      let x_682 : f32 = u_xlat16.x;
      x_678 = -(x_682);
    } else {
      let x_686 : f32 = u_xlat16.x;
      x_678 = x_686;
    }
    let x_687 : f32 = x_678;
    u_xlat0.x = x_687;
    let x_690 : f32 = u_xlat7.x;
    let x_692 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_690 * x_692) + -1.0f);
    let x_696 : vec4<f32> = u_xlat0;
    let x_698 : vec4<f32> = u_xlat0;
    let x_701 : vec4<f32> = u_xlat4;
    let x_703 : vec2<f32> = ((vec2<f32>(x_696.z, x_696.w) * vec2<f32>(x_698.x, x_698.x)) + vec2<f32>(x_701.z, x_701.w));
    let x_704 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_703.x, x_703.y, x_704.z);
  }
  let x_706 : vec4<f32> = u_xlat2;
  let x_708 : vec3<f32> = u_xlat1;
  let x_710 : vec2<f32> = min(vec2<f32>(x_706.x, x_706.y), vec2<f32>(x_708.x, x_708.y));
  let x_711 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_710.x, x_710.y, x_711.z, x_711.w);
  let x_716 : vec4<f32> = u_xlat0;
  let x_719 : f32 = x_25.x_GlobalMipBias.x;
  let x_720 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_716.x, x_716.y), x_719);
  u_xlat3.z = x_720.z;
  let x_726 : vec4<f32> = x_25.x_BloomTexture_TexelSize;
  let x_731 : vec4<f32> = x_25.x_RTHandleScale;
  let x_733 : vec2<f32> = ((-(vec2<f32>(x_726.x, x_726.y)) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_731.x, x_731.y));
  let x_734 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_733.x, x_733.y, x_734.z, x_734.w);
  let x_736 : vec4<f32> = u_xlat0;
  let x_738 : vec2<f32> = u_xlat15;
  let x_739 : vec2<f32> = min(vec2<f32>(x_736.x, x_736.y), x_738);
  let x_740 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_739.x, x_739.y, x_740.z, x_740.w);
  let x_742 : vec4<f32> = u_xlat0;
  let x_746 : vec4<f32> = x_25.x_Bloom_Texture_TexelSize;
  let x_749 : vec2<f32> = ((vec2<f32>(x_742.x, x_742.y) * vec2<f32>(x_746.z, x_746.w)) + vec2<f32>(0.5f, 0.5f));
  let x_750 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_749.x, x_749.y, x_750.z, x_750.w);
  let x_752 : vec4<f32> = u_xlat0;
  u_xlat14 = floor(vec2<f32>(x_752.x, x_752.y));
  let x_755 : vec4<f32> = u_xlat0;
  let x_757 : vec2<f32> = fract(vec2<f32>(x_755.x, x_755.y));
  let x_758 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_757.x, x_757.y, x_758.z, x_758.w);
  let x_760 : vec4<f32> = u_xlat0;
  u_xlat2 = ((-(vec4<f32>(x_760.x, x_760.y, x_760.x, x_760.y)) * vec4<f32>(0.5f, 0.5f, 0.16666667163372039795f, 0.16666667163372039795f)) + vec4<f32>(0.5f, 0.5f, 0.5f, 0.5f));
  let x_767 : vec4<f32> = u_xlat0;
  let x_769 : vec4<f32> = u_xlat2;
  u_xlat2 = ((vec4<f32>(x_767.x, x_767.y, x_767.x, x_767.y) * x_769) + vec4<f32>(0.5f, 0.5f, -0.5f, -0.5f));
  let x_773 : vec4<f32> = u_xlat0;
  let x_777 : vec2<f32> = ((vec2<f32>(x_773.x, x_773.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(-1.0f, -1.0f));
  let x_778 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_777.x, x_777.y, x_778.z);
  let x_780 : vec4<f32> = u_xlat0;
  let x_782 : vec4<f32> = u_xlat0;
  let x_784 : vec2<f32> = (vec2<f32>(x_780.x, x_780.y) * vec2<f32>(x_782.x, x_782.y));
  let x_785 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_784.x, x_784.y, x_785.z, x_785.w);
  let x_787 : vec4<f32> = u_xlat4;
  let x_789 : vec3<f32> = u_xlat1;
  let x_794 : vec2<f32> = ((vec2<f32>(x_787.x, x_787.y) * vec2<f32>(x_789.x, x_789.y)) + vec2<f32>(0.6666666865348815918f, 0.6666666865348815918f));
  let x_795 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_794.x, x_794.y, x_795.z);
  let x_797 : vec4<f32> = u_xlat0;
  let x_799 : vec4<f32> = u_xlat2;
  u_xlat2 = ((vec4<f32>(x_797.x, x_797.y, x_797.x, x_797.y) * x_799) + vec4<f32>(0.16666667163372039795f, 0.16666667163372039795f, 0.16666667163372039795f, 0.16666667163372039795f));
  let x_803 : vec3<f32> = u_xlat1;
  let x_807 : vec2<f32> = (-(vec2<f32>(x_803.x, x_803.y)) + vec2<f32>(1.0f, 1.0f));
  let x_808 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_807.x, x_807.y, x_808.z, x_808.w);
  let x_810 : vec4<f32> = u_xlat2;
  let x_813 : vec4<f32> = u_xlat0;
  let x_815 : vec2<f32> = (-(vec2<f32>(x_810.x, x_810.y)) + vec2<f32>(x_813.x, x_813.y));
  let x_816 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_815.x, x_815.y, x_816.z, x_816.w);
  let x_818 : vec4<f32> = u_xlat2;
  let x_821 : vec4<f32> = u_xlat0;
  let x_823 : vec2<f32> = (-(vec2<f32>(x_818.z, x_818.w)) + vec2<f32>(x_821.x, x_821.y));
  let x_824 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_823.x, x_823.y, x_824.z, x_824.w);
  let x_826 : vec3<f32> = u_xlat1;
  let x_828 : vec4<f32> = u_xlat2;
  u_xlat16 = (vec2<f32>(x_826.x, x_826.y) + vec2<f32>(x_828.z, x_828.w));
  let x_831 : vec4<f32> = u_xlat0;
  let x_833 : vec4<f32> = u_xlat2;
  let x_835 : vec2<f32> = (vec2<f32>(x_831.x, x_831.y) + vec2<f32>(x_833.x, x_833.y));
  let x_836 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_835.x, x_835.y, x_836.z, x_836.w);
  let x_838 : vec2<f32> = u_xlat16;
  let x_842 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_838.x, x_838.y));
  let x_843 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_842.x, x_842.y, x_843.z, x_843.w);
  let x_845 : vec3<f32> = u_xlat1;
  let x_847 : vec4<f32> = u_xlat4;
  let x_850 : vec2<f32> = ((vec2<f32>(x_845.x, x_845.y) * vec2<f32>(x_847.x, x_847.y)) + vec2<f32>(-1.0f, -1.0f));
  let x_851 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_851.x, x_851.y, x_850.x, x_850.y);
  let x_853 : vec4<f32> = u_xlat2;
  let x_854 : vec2<f32> = vec2<f32>(x_853.x, x_853.y);
  let x_858 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_854.x, x_854.y));
  let x_859 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_858.x, x_858.y, x_859.z);
  let x_861 : vec4<f32> = u_xlat0;
  let x_863 : vec3<f32> = u_xlat1;
  let x_866 : vec2<f32> = ((vec2<f32>(x_861.x, x_861.y) * vec2<f32>(x_863.x, x_863.y)) + vec2<f32>(1.0f, 1.0f));
  let x_867 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_866.x, x_866.y, x_867.z, x_867.w);
  let x_869 : vec2<f32> = u_xlat14;
  let x_871 : vec4<f32> = u_xlat4;
  u_xlat5 = (vec4<f32>(x_869.x, x_869.y, x_869.x, x_869.y) + vec4<f32>(x_871.z, x_871.w, x_871.x, x_871.w));
  let x_874 : vec4<f32> = u_xlat5;
  u_xlat5 = (x_874 + vec4<f32>(-0.5f, -0.5f, -0.5f, -0.5f));
  let x_876 : vec4<f32> = u_xlat5;
  let x_878 : vec4<f32> = x_25.x_Bloom_Texture_TexelSize;
  u_xlat5 = (x_876 * vec4<f32>(x_878.x, x_878.y, x_878.x, x_878.y));
  let x_881 : vec4<f32> = u_xlat5;
  u_xlat5 = min(x_881, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_888 : vec4<f32> = u_xlat5;
  let x_890 : vec4<f32> = textureSampleLevel(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_888.x, x_888.y), 0.0f);
  u_xlat6 = x_890;
  let x_894 : vec4<f32> = u_xlat5;
  let x_896 : vec4<f32> = textureSampleLevel(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_894.z, x_894.w), 0.0f);
  u_xlat5 = x_896;
  let x_897 : vec4<f32> = u_xlat2;
  let x_899 : vec4<f32> = u_xlat5;
  u_xlat5 = (vec4<f32>(x_897.x, x_897.x, x_897.x, x_897.x) * x_899);
  let x_901 : vec2<f32> = u_xlat16;
  let x_903 : vec4<f32> = u_xlat6;
  let x_905 : vec4<f32> = u_xlat5;
  u_xlat5 = ((vec4<f32>(x_901.x, x_901.x, x_901.x, x_901.x) * x_903) + x_905);
  let x_907 : vec2<f32> = u_xlat14;
  let x_909 : vec4<f32> = u_xlat4;
  u_xlat0 = (vec4<f32>(x_907.x, x_907.y, x_907.x, x_907.y) + vec4<f32>(x_909.z, x_909.y, x_909.x, x_909.y));
  let x_912 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_912 + vec4<f32>(-0.5f, -0.5f, -0.5f, -0.5f));
  let x_914 : vec4<f32> = u_xlat0;
  let x_916 : vec4<f32> = x_25.x_Bloom_Texture_TexelSize;
  u_xlat0 = (x_914 * vec4<f32>(x_916.x, x_916.y, x_916.x, x_916.y));
  let x_919 : vec4<f32> = u_xlat0;
  u_xlat0 = min(x_919, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_924 : vec4<f32> = u_xlat0;
  let x_926 : vec4<f32> = textureSampleLevel(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_924.x, x_924.y), 0.0f);
  u_xlat4 = x_926;
  let x_930 : vec4<f32> = u_xlat0;
  let x_932 : vec4<f32> = textureSampleLevel(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_930.z, x_930.w), 0.0f);
  u_xlat0 = x_932;
  let x_933 : vec4<f32> = u_xlat0;
  let x_934 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_933 * vec4<f32>(x_934.x, x_934.x, x_934.x, x_934.x));
  let x_937 : vec2<f32> = u_xlat16;
  let x_939 : vec4<f32> = u_xlat4;
  let x_941 : vec4<f32> = u_xlat0;
  u_xlat0 = ((vec4<f32>(x_937.x, x_937.x, x_937.x, x_937.x) * x_939) + x_941);
  let x_943 : vec4<f32> = u_xlat0;
  let x_944 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_943 * vec4<f32>(x_944.y, x_944.y, x_944.y, x_944.y));
  let x_947 : vec2<f32> = u_xlat16;
  let x_949 : vec4<f32> = u_xlat5;
  let x_951 : vec4<f32> = u_xlat0;
  u_xlat0 = ((vec4<f32>(x_947.y, x_947.y, x_947.y, x_947.y) * x_949) + x_951);
  let x_955 : f32 = x_25.x_Bloom_RGBM;
  u_xlatb1.x = (0.0f < x_955);
  let x_959 : bool = u_xlatb1.x;
  if (x_959) {
    let x_962 : vec4<f32> = u_xlat0;
    let x_964 : vec4<f32> = u_xlat0;
    let x_966 : vec3<f32> = (vec3<f32>(x_962.w, x_962.w, x_962.w) * vec3<f32>(x_964.x, x_964.y, x_964.z));
    let x_967 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_966.x, x_966.y, x_966.z, x_967.w);
    let x_969 : vec4<f32> = u_xlat2;
    let x_973 : vec3<f32> = (vec3<f32>(x_969.x, x_969.y, x_969.z) * vec3<f32>(8.0f, 8.0f, 8.0f));
    let x_974 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_973.x, x_973.y, x_973.z, x_974.w);
  }
  let x_976 : vec4<f32> = u_xlat0;
  let x_980 : vec4<f32> = x_25.x_Bloom_Params;
  let x_982 : vec3<f32> = (vec3<f32>(x_976.x, x_976.y, x_976.z) * vec3<f32>(x_980.x, x_980.x, x_980.x));
  let x_983 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_982.x, x_982.y, x_982.z, x_983.w);
  let x_985 : vec4<f32> = u_xlat0;
  let x_988 : vec4<f32> = x_25.x_Bloom_Params;
  let x_991 : vec3<f32> = u_xlat3;
  let x_992 : vec3<f32> = ((vec3<f32>(x_985.x, x_985.y, x_985.z) * vec3<f32>(x_988.y, x_988.z, x_988.w)) + x_991);
  let x_993 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_992.x, x_992.y, x_992.z, x_993.w);
  let x_998 : f32 = x_25.x_Vignette_Params2.z;
  u_xlatb21 = (0.0f < x_998);
  let x_1000 : bool = u_xlatb21;
  if (x_1000) {
    let x_1003 : vec2<f32> = u_xlat15;
    let x_1005 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_1008 : vec2<f32> = (x_1003 + -(vec2<f32>(x_1005.x, x_1005.y)));
    let x_1009 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_1008.x, x_1008.y, x_1009.z);
    let x_1011 : vec3<f32> = u_xlat1;
    let x_1015 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_1017 : vec2<f32> = (abs(vec2<f32>(x_1011.x, x_1011.y)) * vec2<f32>(x_1015.z, x_1015.z));
    let x_1018 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_1018.x, x_1017.x, x_1017.y);
    let x_1021 : f32 = u_xlat1.y;
    let x_1024 : f32 = x_25.x_Vignette_Params1.w;
    u_xlat1.x = (x_1021 * x_1024);
    let x_1028 : vec3<f32> = u_xlat1;
    let x_1030 : vec3<f32> = u_xlat1;
    u_xlat21 = dot(vec2<f32>(x_1028.x, x_1028.z), vec2<f32>(x_1030.x, x_1030.z));
    let x_1033 : f32 = u_xlat21;
    u_xlat21 = (-(x_1033) + 1.0f);
    let x_1036 : f32 = u_xlat21;
    u_xlat21 = max(x_1036, 0.0f);
    let x_1038 : f32 = u_xlat21;
    u_xlat21 = log2(x_1038);
    let x_1040 : f32 = u_xlat21;
    let x_1042 : f32 = x_25.x_Vignette_Params2.w;
    u_xlat21 = (x_1040 * x_1042);
    let x_1044 : f32 = u_xlat21;
    u_xlat21 = exp2(x_1044);
    let x_1047 : vec4<f32> = x_25.x_Vignette_Params1;
    u_xlat1 = (-(vec3<f32>(x_1047.x, x_1047.y, x_1047.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_1052 : f32 = u_xlat21;
    let x_1054 : vec3<f32> = u_xlat1;
    let x_1057 : vec4<f32> = x_25.x_Vignette_Params1;
    u_xlat1 = ((vec3<f32>(x_1052, x_1052, x_1052) * x_1054) + vec3<f32>(x_1057.x, x_1057.y, x_1057.z));
    let x_1060 : vec4<f32> = u_xlat0;
    let x_1062 : vec3<f32> = u_xlat1;
    let x_1063 : vec3<f32> = (vec3<f32>(x_1060.x, x_1060.y, x_1060.z) * x_1062);
    let x_1064 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1063.x, x_1063.y, x_1063.z, x_1064.w);
  }
  let x_1066 : vec4<f32> = u_xlat0;
  let x_1070 : vec4<f32> = x_25.x_Lut_Params;
  let x_1072 : vec3<f32> = (vec3<f32>(x_1066.x, x_1066.y, x_1066.z) * vec3<f32>(x_1070.w, x_1070.w, x_1070.w));
  let x_1073 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1072.x, x_1072.y, x_1072.z, x_1073.w);
  let x_1075 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_1075.x, x_1075.y, x_1075.z) * vec3<f32>(1.31338608264923095703f, 1.31338608264923095703f, 1.31338608264923095703f));
  let x_1080 : vec4<f32> = u_xlat0;
  let x_1087 : vec3<f32> = ((vec3<f32>(x_1080.x, x_1080.y, x_1080.z) * vec3<f32>(0.26267722249031066895f, 0.26267722249031066895f, 0.26267722249031066895f)) + vec3<f32>(0.06959999352693557739f, 0.06959999352693557739f, 0.06959999352693557739f));
  let x_1088 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1087.x, x_1087.y, x_1087.z, x_1088.w);
  let x_1090 : vec3<f32> = u_xlat1;
  let x_1091 : vec4<f32> = u_xlat2;
  let x_1096 : vec3<f32> = ((x_1090 * vec3<f32>(x_1091.x, x_1091.y, x_1091.z)) + vec3<f32>(0.00543999997898936272f, 0.00543999997898936272f, 0.00543999997898936272f));
  let x_1097 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1096.x, x_1096.y, x_1096.z, x_1097.w);
  let x_1099 : vec4<f32> = u_xlat0;
  let x_1104 : vec3<f32> = ((vec3<f32>(x_1099.x, x_1099.y, x_1099.z) * vec3<f32>(0.26267722249031066895f, 0.26267722249031066895f, 0.26267722249031066895f)) + vec3<f32>(0.28999999165534973145f, 0.28999999165534973145f, 0.28999999165534973145f));
  let x_1105 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1104.x, x_1104.y, x_1104.z, x_1105.w);
  let x_1107 : vec3<f32> = u_xlat1;
  let x_1108 : vec4<f32> = u_xlat0;
  let x_1113 : vec3<f32> = ((x_1107 * vec3<f32>(x_1108.x, x_1108.y, x_1108.z)) + vec3<f32>(0.08160001039505004883f, 0.08160001039505004883f, 0.08160001039505004883f));
  let x_1114 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1113.x, x_1113.y, x_1113.z, x_1114.w);
  let x_1116 : vec4<f32> = u_xlat2;
  let x_1118 : vec4<f32> = u_xlat0;
  let x_1120 : vec3<f32> = (vec3<f32>(x_1116.x, x_1116.y, x_1116.z) / vec3<f32>(x_1118.x, x_1118.y, x_1118.z));
  let x_1121 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1120.x, x_1120.y, x_1120.z, x_1121.w);
  let x_1123 : vec4<f32> = u_xlat0;
  let x_1127 : vec3<f32> = (vec3<f32>(x_1123.x, x_1123.y, x_1123.z) + vec3<f32>(-0.06666666269302368164f, -0.06666666269302368164f, -0.06666666269302368164f));
  let x_1128 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1127.x, x_1127.y, x_1127.z, x_1128.w);
  let x_1130 : vec4<f32> = u_xlat0;
  let x_1132 : vec3<f32> = (vec3<f32>(x_1130.x, x_1130.y, x_1130.z) * vec3<f32>(1.31338608264923095703f, 1.31338608264923095703f, 1.31338608264923095703f));
  let x_1133 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1132.x, x_1132.y, x_1132.z, x_1133.w);
  let x_1135 : vec4<f32> = u_xlat0;
  let x_1139 : vec3<f32> = clamp(vec3<f32>(x_1135.x, x_1135.y, x_1135.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1140 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1139.x, x_1139.y, x_1139.z, x_1140.w);
  let x_1144 : f32 = x_25.x_UserLut_Params.w;
  u_xlatb21 = (0.0f < x_1144);
  let x_1146 : bool = u_xlatb21;
  if (x_1146) {
    let x_1149 : vec4<f32> = u_xlat0;
    u_xlat1 = (vec3<f32>(x_1149.x, x_1149.y, x_1149.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
    let x_1154 : vec4<f32> = u_xlat0;
    let x_1156 : vec3<f32> = log2(vec3<f32>(x_1154.x, x_1154.y, x_1154.z));
    let x_1157 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1156.x, x_1156.y, x_1156.z, x_1157.w);
    let x_1159 : vec4<f32> = u_xlat2;
    let x_1163 : vec3<f32> = (vec3<f32>(x_1159.x, x_1159.y, x_1159.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
    let x_1164 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1163.x, x_1163.y, x_1163.z, x_1164.w);
    let x_1166 : vec4<f32> = u_xlat2;
    let x_1168 : vec3<f32> = exp2(vec3<f32>(x_1166.x, x_1166.y, x_1166.z));
    let x_1169 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1168.x, x_1168.y, x_1168.z, x_1169.w);
    let x_1171 : vec4<f32> = u_xlat2;
    let x_1178 : vec3<f32> = ((vec3<f32>(x_1171.x, x_1171.y, x_1171.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
    let x_1179 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1178.x, x_1178.y, x_1178.z, x_1179.w);
    let x_1183 : vec4<f32> = u_xlat0;
    let x_1186 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_1183.x, x_1183.y, x_1183.z, x_1183.x));
    u_xlatb3 = vec3<bool>(x_1186.x, x_1186.y, x_1186.z);
    let x_1190 : vec3<f32> = u_xlat1;
    hlslcc_movcTemp = x_1190;
    let x_1192 : bool = u_xlatb3.x;
    if (x_1192) {
      let x_1197 : f32 = u_xlat1.x;
      x_1193 = x_1197;
    } else {
      let x_1200 : f32 = u_xlat2.x;
      x_1193 = x_1200;
    }
    let x_1201 : f32 = x_1193;
    hlslcc_movcTemp.x = x_1201;
    let x_1204 : bool = u_xlatb3.y;
    if (x_1204) {
      let x_1209 : f32 = u_xlat1.y;
      x_1205 = x_1209;
    } else {
      let x_1212 : f32 = u_xlat2.y;
      x_1205 = x_1212;
    }
    let x_1213 : f32 = x_1205;
    hlslcc_movcTemp.y = x_1213;
    let x_1216 : bool = u_xlatb3.z;
    if (x_1216) {
      let x_1221 : f32 = u_xlat1.z;
      x_1217 = x_1221;
    } else {
      let x_1224 : f32 = u_xlat2.z;
      x_1217 = x_1224;
    }
    let x_1225 : f32 = x_1217;
    hlslcc_movcTemp.z = x_1225;
    let x_1227 : vec3<f32> = hlslcc_movcTemp;
    u_xlat1 = x_1227;
    let x_1228 : vec3<f32> = u_xlat1;
    let x_1231 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1233 : vec3<f32> = (vec3<f32>(x_1228.z, x_1228.x, x_1228.y) * vec3<f32>(x_1231.z, x_1231.z, x_1231.z));
    let x_1234 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1233.x, x_1233.y, x_1233.z, x_1234.w);
    let x_1237 : f32 = u_xlat2.x;
    u_xlat21 = floor(x_1237);
    let x_1240 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1242 : vec2<f32> = (vec2<f32>(x_1240.x, x_1240.y) * vec2<f32>(0.5f, 0.5f));
    let x_1243 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1242.x, x_1243.y, x_1243.z, x_1242.y);
    let x_1245 : vec4<f32> = u_xlat2;
    let x_1248 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1251 : vec4<f32> = u_xlat2;
    let x_1253 : vec2<f32> = ((vec2<f32>(x_1245.y, x_1245.z) * vec2<f32>(x_1248.x, x_1248.y)) + vec2<f32>(x_1251.x, x_1251.w));
    let x_1254 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1254.x, x_1253.x, x_1253.y, x_1254.w);
    let x_1256 : f32 = u_xlat21;
    let x_1258 : f32 = x_25.x_UserLut_Params.y;
    let x_1261 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_1256 * x_1258) + x_1261);
    let x_1268 : vec4<f32> = u_xlat2;
    let x_1270 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1268.x, x_1268.z), 0.0f);
    u_xlat3 = vec3<f32>(x_1270.x, x_1270.y, x_1270.z);
    let x_1273 : f32 = x_25.x_UserLut_Params.y;
    u_xlat4.x = x_1273;
    u_xlat4.y = 0.0f;
    let x_1276 : vec4<f32> = u_xlat2;
    let x_1278 : vec4<f32> = u_xlat4;
    let x_1280 : vec2<f32> = (vec2<f32>(x_1276.x, x_1276.z) + vec2<f32>(x_1278.x, x_1278.y));
    let x_1281 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1280.x, x_1280.y, x_1281.z, x_1281.w);
    let x_1286 : vec4<f32> = u_xlat2;
    let x_1288 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1286.x, x_1286.y), 0.0f);
    let x_1289 : vec3<f32> = vec3<f32>(x_1288.x, x_1288.y, x_1288.z);
    let x_1290 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1289.x, x_1289.y, x_1289.z, x_1290.w);
    let x_1293 : f32 = u_xlat1.z;
    let x_1295 : f32 = x_25.x_UserLut_Params.z;
    let x_1297 : f32 = u_xlat21;
    u_xlat21 = ((x_1293 * x_1295) + -(x_1297));
    let x_1300 : vec3<f32> = u_xlat3;
    let x_1302 : vec4<f32> = u_xlat2;
    let x_1304 : vec3<f32> = (-(x_1300) + vec3<f32>(x_1302.x, x_1302.y, x_1302.z));
    let x_1305 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1304.x, x_1304.y, x_1304.z, x_1305.w);
    let x_1307 : f32 = u_xlat21;
    let x_1309 : vec4<f32> = u_xlat2;
    let x_1312 : vec3<f32> = u_xlat3;
    let x_1313 : vec3<f32> = ((vec3<f32>(x_1307, x_1307, x_1307) * vec3<f32>(x_1309.x, x_1309.y, x_1309.z)) + x_1312);
    let x_1314 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1313.x, x_1313.y, x_1313.z, x_1314.w);
    let x_1316 : vec3<f32> = u_xlat1;
    let x_1318 : vec4<f32> = u_xlat2;
    let x_1320 : vec3<f32> = (-(x_1316) + vec3<f32>(x_1318.x, x_1318.y, x_1318.z));
    let x_1321 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1320.x, x_1320.y, x_1320.z, x_1321.w);
    let x_1324 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1326 : vec4<f32> = u_xlat2;
    let x_1329 : vec3<f32> = u_xlat1;
    u_xlat1 = ((vec3<f32>(x_1324.w, x_1324.w, x_1324.w) * vec3<f32>(x_1326.x, x_1326.y, x_1326.z)) + x_1329);
    let x_1331 : vec3<f32> = u_xlat1;
    let x_1334 : vec3<f32> = (x_1331 * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
    let x_1335 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1334.x, x_1334.y, x_1334.z, x_1335.w);
    let x_1337 : vec3<f32> = u_xlat1;
    u_xlat3 = (x_1337 + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
    let x_1341 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_1341 * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
    let x_1345 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_1345));
    let x_1348 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_1348 * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
    let x_1352 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_1352);
    let x_1356 : vec3<f32> = u_xlat1;
    let x_1358 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_1356.x, x_1356.y, x_1356.z, x_1356.x));
    u_xlatb1 = vec3<bool>(x_1358.x, x_1358.y, x_1358.z);
    let x_1361 : bool = u_xlatb1.x;
    if (x_1361) {
      let x_1366 : f32 = u_xlat2.x;
      x_1362 = x_1366;
    } else {
      let x_1369 : f32 = u_xlat3.x;
      x_1362 = x_1369;
    }
    let x_1370 : f32 = x_1362;
    u_xlat0.x = x_1370;
    let x_1373 : bool = u_xlatb1.y;
    if (x_1373) {
      let x_1378 : f32 = u_xlat2.y;
      x_1374 = x_1378;
    } else {
      let x_1381 : f32 = u_xlat3.y;
      x_1374 = x_1381;
    }
    let x_1382 : f32 = x_1374;
    u_xlat0.y = x_1382;
    let x_1385 : bool = u_xlatb1.z;
    if (x_1385) {
      let x_1390 : f32 = u_xlat2.z;
      x_1386 = x_1390;
    } else {
      let x_1393 : f32 = u_xlat3.z;
      x_1386 = x_1393;
    }
    let x_1394 : f32 = x_1386;
    u_xlat0.z = x_1394;
  }
  let x_1396 : vec4<f32> = u_xlat0;
  let x_1399 : vec4<f32> = x_25.x_Lut_Params;
  let x_1401 : vec3<f32> = (vec3<f32>(x_1396.x, x_1396.y, x_1396.z) * vec3<f32>(x_1399.z, x_1399.z, x_1399.z));
  let x_1402 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1401.x, x_1401.y, x_1402.z, x_1401.z);
  let x_1405 : f32 = u_xlat0.w;
  u_xlat21 = floor(x_1405);
  let x_1408 : vec4<f32> = x_25.x_Lut_Params;
  let x_1410 : vec2<f32> = (vec2<f32>(x_1408.x, x_1408.y) * vec2<f32>(0.5f, 0.5f));
  let x_1411 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1410.x, x_1410.y, x_1411.z);
  let x_1413 : vec4<f32> = u_xlat0;
  let x_1416 : vec4<f32> = x_25.x_Lut_Params;
  let x_1419 : vec3<f32> = u_xlat1;
  let x_1421 : vec2<f32> = ((vec2<f32>(x_1413.x, x_1413.y) * vec2<f32>(x_1416.x, x_1416.y)) + vec2<f32>(x_1419.x, x_1419.y));
  let x_1422 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1422.x, x_1421.x, x_1421.y);
  let x_1424 : f32 = u_xlat21;
  let x_1426 : f32 = x_25.x_Lut_Params.y;
  let x_1429 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_1424 * x_1426) + x_1429);
  let x_1436 : vec3<f32> = u_xlat1;
  let x_1438 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1436.x, x_1436.z), 0.0f);
  let x_1439 : vec3<f32> = vec3<f32>(x_1438.x, x_1438.y, x_1438.z);
  let x_1440 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1439.x, x_1439.y, x_1439.z, x_1440.w);
  let x_1443 : f32 = x_25.x_Lut_Params.y;
  u_xlat0.x = x_1443;
  u_xlat0.y = 0.0f;
  let x_1446 : vec4<f32> = u_xlat0;
  let x_1448 : vec3<f32> = u_xlat1;
  let x_1450 : vec2<f32> = (vec2<f32>(x_1446.x, x_1446.y) + vec2<f32>(x_1448.x, x_1448.z));
  let x_1451 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1450.x, x_1450.y, x_1451.z, x_1451.w);
  let x_1456 : vec4<f32> = u_xlat0;
  let x_1458 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1456.x, x_1456.y), 0.0f);
  u_xlat1 = vec3<f32>(x_1458.x, x_1458.y, x_1458.z);
  let x_1461 : f32 = u_xlat0.z;
  let x_1463 : f32 = x_25.x_Lut_Params.z;
  let x_1465 : f32 = u_xlat21;
  u_xlat0.x = ((x_1461 * x_1463) + -(x_1465));
  let x_1469 : vec4<f32> = u_xlat2;
  let x_1472 : vec3<f32> = u_xlat1;
  u_xlat7 = (-(vec3<f32>(x_1469.x, x_1469.y, x_1469.z)) + x_1472);
  let x_1474 : vec4<f32> = u_xlat0;
  let x_1476 : vec3<f32> = u_xlat7;
  let x_1478 : vec4<f32> = u_xlat2;
  let x_1480 : vec3<f32> = ((vec3<f32>(x_1474.x, x_1474.x, x_1474.x) * x_1476) + vec3<f32>(x_1478.x, x_1478.y, x_1478.z));
  let x_1481 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1480.x, x_1480.y, x_1480.z, x_1481.w);
  let x_1483 : vec2<f32> = vs_TEXCOORD0;
  let x_1486 : vec4<f32> = x_25.x_Grain_TilingParams;
  let x_1490 : vec4<f32> = x_25.x_Grain_TilingParams;
  let x_1492 : vec2<f32> = ((x_1483 * vec2<f32>(x_1486.x, x_1486.y)) + vec2<f32>(x_1490.z, x_1490.w));
  let x_1493 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1492.x, x_1492.y, x_1493.z);
  let x_1500 : vec3<f32> = u_xlat1;
  let x_1503 : f32 = x_25.x_GlobalMipBias.x;
  let x_1504 : vec4<f32> = textureSampleBias(x_Grain_Texture, sampler_LinearRepeat, vec2<f32>(x_1500.x, x_1500.y), x_1503);
  u_xlat21 = x_1504.w;
  let x_1506 : f32 = u_xlat21;
  u_xlat21 = (x_1506 + -0.5f);
  let x_1508 : f32 = u_xlat21;
  let x_1509 : f32 = u_xlat21;
  u_xlat21 = (x_1508 + x_1509);
  let x_1511 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(x_1511.x, x_1511.y, x_1511.z), vec3<f32>(0.21267290413379669189f, 0.71515220403671264648f, 0.07217500358819961548f));
  let x_1520 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_1520);
  let x_1525 : f32 = x_25.x_Grain_Params.y;
  let x_1527 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1525 * -(x_1527)) + 1.0f);
  let x_1533 : f32 = u_xlat21;
  let x_1535 : vec4<f32> = u_xlat0;
  u_xlat8 = (vec3<f32>(x_1533, x_1533, x_1533) * vec3<f32>(x_1535.x, x_1535.y, x_1535.z));
  let x_1538 : vec3<f32> = u_xlat8;
  let x_1541 : vec2<f32> = x_25.x_Grain_Params;
  u_xlat8 = (x_1538 * vec3<f32>(x_1541.x, x_1541.x, x_1541.x));
  let x_1544 : vec3<f32> = u_xlat8;
  let x_1545 : vec3<f32> = u_xlat1;
  let x_1548 : vec4<f32> = u_xlat0;
  let x_1550 : vec3<f32> = ((x_1544 * vec3<f32>(x_1545.x, x_1545.x, x_1545.x)) + vec3<f32>(x_1548.x, x_1548.y, x_1548.z));
  let x_1551 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1550.x, x_1550.y, x_1550.z, x_1551.w);
  let x_1553 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_1553.x, x_1553.y, x_1553.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
  let x_1556 : vec4<f32> = u_xlat0;
  let x_1559 : vec3<f32> = log2(abs(vec3<f32>(x_1556.x, x_1556.y, x_1556.z)));
  let x_1560 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1559.x, x_1559.y, x_1559.z, x_1560.w);
  let x_1562 : vec4<f32> = u_xlat2;
  let x_1564 : vec3<f32> = (vec3<f32>(x_1562.x, x_1562.y, x_1562.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
  let x_1565 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1564.x, x_1564.y, x_1564.z, x_1565.w);
  let x_1567 : vec4<f32> = u_xlat2;
  let x_1569 : vec3<f32> = exp2(vec3<f32>(x_1567.x, x_1567.y, x_1567.z));
  let x_1570 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1569.x, x_1569.y, x_1569.z, x_1570.w);
  let x_1572 : vec4<f32> = u_xlat2;
  let x_1575 : vec3<f32> = ((vec3<f32>(x_1572.x, x_1572.y, x_1572.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
  let x_1576 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1575.x, x_1575.y, x_1575.z, x_1576.w);
  let x_1578 : vec4<f32> = u_xlat0;
  let x_1580 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_1578.x, x_1578.y, x_1578.z, x_1578.x));
  u_xlatb0 = vec3<bool>(x_1580.x, x_1580.y, x_1580.z);
  let x_1583 : bool = u_xlatb0.x;
  if (x_1583) {
    let x_1588 : f32 = u_xlat1.x;
    x_1584 = x_1588;
  } else {
    let x_1591 : f32 = u_xlat2.x;
    x_1584 = x_1591;
  }
  let x_1592 : f32 = x_1584;
  u_xlat0.x = x_1592;
  let x_1595 : bool = u_xlatb0.y;
  if (x_1595) {
    let x_1600 : f32 = u_xlat1.y;
    x_1596 = x_1600;
  } else {
    let x_1603 : f32 = u_xlat2.y;
    x_1596 = x_1603;
  }
  let x_1604 : f32 = x_1596;
  u_xlat0.y = x_1604;
  let x_1607 : bool = u_xlatb0.z;
  if (x_1607) {
    let x_1612 : f32 = u_xlat1.z;
    x_1608 = x_1612;
  } else {
    let x_1615 : f32 = u_xlat2.z;
    x_1608 = x_1615;
  }
  let x_1616 : f32 = x_1608;
  u_xlat0.z = x_1616;
  let x_1618 : vec2<f32> = vs_TEXCOORD0;
  let x_1621 : vec4<f32> = x_25.x_Dithering_Params;
  let x_1625 : vec4<f32> = x_25.x_Dithering_Params;
  let x_1627 : vec2<f32> = ((x_1618 * vec2<f32>(x_1621.x, x_1621.y)) + vec2<f32>(x_1625.z, x_1625.w));
  let x_1628 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1627.x, x_1627.y, x_1628.z);
  let x_1635 : vec3<f32> = u_xlat1;
  let x_1638 : f32 = x_25.x_GlobalMipBias.x;
  let x_1639 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_1635.x, x_1635.y), x_1638);
  u_xlat21 = x_1639.w;
  let x_1641 : f32 = u_xlat21;
  u_xlat21 = ((x_1641 * 2.0f) + -1.0f);
  let x_1644 : f32 = u_xlat21;
  u_xlatb1.x = (x_1644 >= 0.0f);
  let x_1648 : bool = u_xlatb1.x;
  u_xlat1.x = select(-1.0f, 1.0f, x_1648);
  let x_1651 : f32 = u_xlat21;
  u_xlat21 = (-(abs(x_1651)) + 1.0f);
  let x_1655 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_1655);
  let x_1657 : f32 = u_xlat21;
  u_xlat21 = (-(x_1657) + 1.0f);
  let x_1660 : f32 = u_xlat21;
  let x_1662 : f32 = u_xlat1.x;
  u_xlat21 = (x_1660 * x_1662);
  let x_1664 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_1664.x, x_1664.y, x_1664.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
  let x_1667 : vec4<f32> = u_xlat0;
  let x_1670 : vec3<f32> = log2(abs(vec3<f32>(x_1667.x, x_1667.y, x_1667.z)));
  let x_1671 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1670.x, x_1670.y, x_1670.z, x_1671.w);
  let x_1673 : vec4<f32> = u_xlat2;
  let x_1675 : vec3<f32> = (vec3<f32>(x_1673.x, x_1673.y, x_1673.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
  let x_1676 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1675.x, x_1675.y, x_1675.z, x_1676.w);
  let x_1678 : vec4<f32> = u_xlat2;
  let x_1680 : vec3<f32> = exp2(vec3<f32>(x_1678.x, x_1678.y, x_1678.z));
  let x_1681 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1680.x, x_1680.y, x_1680.z, x_1681.w);
  let x_1683 : vec4<f32> = u_xlat2;
  let x_1686 : vec3<f32> = ((vec3<f32>(x_1683.x, x_1683.y, x_1683.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
  let x_1687 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1686.x, x_1686.y, x_1686.z, x_1687.w);
  let x_1689 : vec4<f32> = u_xlat0;
  let x_1691 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_1689.x, x_1689.y, x_1689.z, x_1689.x));
  u_xlatb0 = vec3<bool>(x_1691.x, x_1691.y, x_1691.z);
  let x_1694 : bool = u_xlatb0.x;
  if (x_1694) {
    let x_1699 : f32 = u_xlat1.x;
    x_1695 = x_1699;
  } else {
    let x_1702 : f32 = u_xlat2.x;
    x_1695 = x_1702;
  }
  let x_1703 : f32 = x_1695;
  u_xlat0.x = x_1703;
  let x_1706 : bool = u_xlatb0.y;
  if (x_1706) {
    let x_1711 : f32 = u_xlat1.y;
    x_1707 = x_1711;
  } else {
    let x_1714 : f32 = u_xlat2.y;
    x_1707 = x_1714;
  }
  let x_1715 : f32 = x_1707;
  u_xlat0.y = x_1715;
  let x_1718 : bool = u_xlatb0.z;
  if (x_1718) {
    let x_1723 : f32 = u_xlat1.z;
    x_1719 = x_1723;
  } else {
    let x_1726 : f32 = u_xlat2.z;
    x_1719 = x_1726;
  }
  let x_1727 : f32 = x_1719;
  u_xlat0.z = x_1727;
  let x_1729 : f32 = u_xlat21;
  let x_1734 : vec4<f32> = u_xlat0;
  let x_1736 : vec3<f32> = ((vec3<f32>(x_1729, x_1729, x_1729) * vec3<f32>(0.0039215688593685627f, 0.0039215688593685627f, 0.0039215688593685627f)) + vec3<f32>(x_1734.x, x_1734.y, x_1734.z));
  let x_1737 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1736.x, x_1736.y, x_1736.z, x_1737.w);
  let x_1739 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_1739.x, x_1739.y, x_1739.z) * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
  let x_1742 : vec4<f32> = u_xlat0;
  let x_1744 : vec3<f32> = (vec3<f32>(x_1742.x, x_1742.y, x_1742.z) + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
  let x_1745 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1744.x, x_1744.y, x_1744.z, x_1745.w);
  let x_1747 : vec4<f32> = u_xlat2;
  let x_1749 : vec3<f32> = (vec3<f32>(x_1747.x, x_1747.y, x_1747.z) * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
  let x_1750 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1749.x, x_1749.y, x_1749.z, x_1750.w);
  let x_1752 : vec4<f32> = u_xlat2;
  let x_1755 : vec3<f32> = log2(abs(vec3<f32>(x_1752.x, x_1752.y, x_1752.z)));
  let x_1756 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1755.x, x_1755.y, x_1755.z, x_1756.w);
  let x_1758 : vec4<f32> = u_xlat2;
  let x_1760 : vec3<f32> = (vec3<f32>(x_1758.x, x_1758.y, x_1758.z) * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
  let x_1761 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1760.x, x_1760.y, x_1760.z, x_1761.w);
  let x_1763 : vec4<f32> = u_xlat2;
  let x_1765 : vec3<f32> = exp2(vec3<f32>(x_1763.x, x_1763.y, x_1763.z));
  let x_1766 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1765.x, x_1765.y, x_1765.z, x_1766.w);
  let x_1768 : vec4<f32> = u_xlat0;
  let x_1770 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_1768.x, x_1768.y, x_1768.z, x_1768.x));
  u_xlatb0 = vec3<bool>(x_1770.x, x_1770.y, x_1770.z);
  let x_1773 : bool = u_xlatb0.x;
  if (x_1773) {
    let x_1778 : f32 = u_xlat1.x;
    x_1774 = x_1778;
  } else {
    let x_1781 : f32 = u_xlat2.x;
    x_1774 = x_1781;
  }
  let x_1782 : f32 = x_1774;
  u_xlat0.x = x_1782;
  let x_1785 : bool = u_xlatb0.y;
  if (x_1785) {
    let x_1790 : f32 = u_xlat1.y;
    x_1786 = x_1790;
  } else {
    let x_1793 : f32 = u_xlat2.y;
    x_1786 = x_1793;
  }
  let x_1794 : f32 = x_1786;
  u_xlat0.y = x_1794;
  let x_1797 : bool = u_xlatb0.z;
  if (x_1797) {
    let x_1802 : f32 = u_xlat1.z;
    x_1798 = x_1802;
  } else {
    let x_1805 : f32 = u_xlat2.z;
    x_1798 = x_1805;
  }
  let x_1806 : f32 = x_1798;
  u_xlat0.z = x_1806;
  let x_1810 : vec4<f32> = u_xlat0;
  let x_1813 : vec3<f32> = max(vec3<f32>(x_1810.x, x_1810.y, x_1810.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1814 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1813.x, x_1813.y, x_1813.z, x_1814.w);
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


