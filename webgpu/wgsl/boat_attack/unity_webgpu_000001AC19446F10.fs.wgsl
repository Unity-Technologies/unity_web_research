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
  var x_1133 : f32;
  var x_1145 : f32;
  var x_1157 : f32;
  var x_1302 : f32;
  var x_1314 : f32;
  var x_1326 : f32;
  var x_1524 : f32;
  var x_1536 : f32;
  var x_1548 : f32;
  var x_1635 : f32;
  var x_1647 : f32;
  var x_1659 : f32;
  var x_1714 : f32;
  var x_1726 : f32;
  var x_1738 : f32;
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
  let x_1079 : vec3<f32> = clamp(vec3<f32>(x_1075.x, x_1075.y, x_1075.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1080 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1079.x, x_1079.y, x_1079.z, x_1080.w);
  let x_1084 : f32 = x_25.x_UserLut_Params.w;
  u_xlatb21 = (0.0f < x_1084);
  let x_1086 : bool = u_xlatb21;
  if (x_1086) {
    let x_1089 : vec4<f32> = u_xlat0;
    u_xlat1 = (vec3<f32>(x_1089.x, x_1089.y, x_1089.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
    let x_1094 : vec4<f32> = u_xlat0;
    let x_1096 : vec3<f32> = log2(vec3<f32>(x_1094.x, x_1094.y, x_1094.z));
    let x_1097 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1096.x, x_1096.y, x_1096.z, x_1097.w);
    let x_1099 : vec4<f32> = u_xlat2;
    let x_1103 : vec3<f32> = (vec3<f32>(x_1099.x, x_1099.y, x_1099.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
    let x_1104 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1103.x, x_1103.y, x_1103.z, x_1104.w);
    let x_1106 : vec4<f32> = u_xlat2;
    let x_1108 : vec3<f32> = exp2(vec3<f32>(x_1106.x, x_1106.y, x_1106.z));
    let x_1109 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1108.x, x_1108.y, x_1108.z, x_1109.w);
    let x_1111 : vec4<f32> = u_xlat2;
    let x_1118 : vec3<f32> = ((vec3<f32>(x_1111.x, x_1111.y, x_1111.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
    let x_1119 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1118.x, x_1118.y, x_1118.z, x_1119.w);
    let x_1123 : vec4<f32> = u_xlat0;
    let x_1126 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_1123.x, x_1123.y, x_1123.z, x_1123.x));
    u_xlatb3 = vec3<bool>(x_1126.x, x_1126.y, x_1126.z);
    let x_1130 : vec3<f32> = u_xlat1;
    hlslcc_movcTemp = x_1130;
    let x_1132 : bool = u_xlatb3.x;
    if (x_1132) {
      let x_1137 : f32 = u_xlat1.x;
      x_1133 = x_1137;
    } else {
      let x_1140 : f32 = u_xlat2.x;
      x_1133 = x_1140;
    }
    let x_1141 : f32 = x_1133;
    hlslcc_movcTemp.x = x_1141;
    let x_1144 : bool = u_xlatb3.y;
    if (x_1144) {
      let x_1149 : f32 = u_xlat1.y;
      x_1145 = x_1149;
    } else {
      let x_1152 : f32 = u_xlat2.y;
      x_1145 = x_1152;
    }
    let x_1153 : f32 = x_1145;
    hlslcc_movcTemp.y = x_1153;
    let x_1156 : bool = u_xlatb3.z;
    if (x_1156) {
      let x_1161 : f32 = u_xlat1.z;
      x_1157 = x_1161;
    } else {
      let x_1164 : f32 = u_xlat2.z;
      x_1157 = x_1164;
    }
    let x_1165 : f32 = x_1157;
    hlslcc_movcTemp.z = x_1165;
    let x_1167 : vec3<f32> = hlslcc_movcTemp;
    u_xlat1 = x_1167;
    let x_1168 : vec3<f32> = u_xlat1;
    let x_1171 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1173 : vec3<f32> = (vec3<f32>(x_1168.z, x_1168.x, x_1168.y) * vec3<f32>(x_1171.z, x_1171.z, x_1171.z));
    let x_1174 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1173.x, x_1173.y, x_1173.z, x_1174.w);
    let x_1177 : f32 = u_xlat2.x;
    u_xlat21 = floor(x_1177);
    let x_1180 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1182 : vec2<f32> = (vec2<f32>(x_1180.x, x_1180.y) * vec2<f32>(0.5f, 0.5f));
    let x_1183 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1182.x, x_1183.y, x_1183.z, x_1182.y);
    let x_1185 : vec4<f32> = u_xlat2;
    let x_1188 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1191 : vec4<f32> = u_xlat2;
    let x_1193 : vec2<f32> = ((vec2<f32>(x_1185.y, x_1185.z) * vec2<f32>(x_1188.x, x_1188.y)) + vec2<f32>(x_1191.x, x_1191.w));
    let x_1194 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1194.x, x_1193.x, x_1193.y, x_1194.w);
    let x_1196 : f32 = u_xlat21;
    let x_1198 : f32 = x_25.x_UserLut_Params.y;
    let x_1201 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_1196 * x_1198) + x_1201);
    let x_1208 : vec4<f32> = u_xlat2;
    let x_1210 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1208.x, x_1208.z), 0.0f);
    u_xlat3 = vec3<f32>(x_1210.x, x_1210.y, x_1210.z);
    let x_1213 : f32 = x_25.x_UserLut_Params.y;
    u_xlat4.x = x_1213;
    u_xlat4.y = 0.0f;
    let x_1216 : vec4<f32> = u_xlat2;
    let x_1218 : vec4<f32> = u_xlat4;
    let x_1220 : vec2<f32> = (vec2<f32>(x_1216.x, x_1216.z) + vec2<f32>(x_1218.x, x_1218.y));
    let x_1221 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1220.x, x_1220.y, x_1221.z, x_1221.w);
    let x_1226 : vec4<f32> = u_xlat2;
    let x_1228 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1226.x, x_1226.y), 0.0f);
    let x_1229 : vec3<f32> = vec3<f32>(x_1228.x, x_1228.y, x_1228.z);
    let x_1230 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1229.x, x_1229.y, x_1229.z, x_1230.w);
    let x_1233 : f32 = u_xlat1.z;
    let x_1235 : f32 = x_25.x_UserLut_Params.z;
    let x_1237 : f32 = u_xlat21;
    u_xlat21 = ((x_1233 * x_1235) + -(x_1237));
    let x_1240 : vec3<f32> = u_xlat3;
    let x_1242 : vec4<f32> = u_xlat2;
    let x_1244 : vec3<f32> = (-(x_1240) + vec3<f32>(x_1242.x, x_1242.y, x_1242.z));
    let x_1245 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1244.x, x_1244.y, x_1244.z, x_1245.w);
    let x_1247 : f32 = u_xlat21;
    let x_1249 : vec4<f32> = u_xlat2;
    let x_1252 : vec3<f32> = u_xlat3;
    let x_1253 : vec3<f32> = ((vec3<f32>(x_1247, x_1247, x_1247) * vec3<f32>(x_1249.x, x_1249.y, x_1249.z)) + x_1252);
    let x_1254 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1253.x, x_1253.y, x_1253.z, x_1254.w);
    let x_1256 : vec3<f32> = u_xlat1;
    let x_1258 : vec4<f32> = u_xlat2;
    let x_1260 : vec3<f32> = (-(x_1256) + vec3<f32>(x_1258.x, x_1258.y, x_1258.z));
    let x_1261 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1260.x, x_1260.y, x_1260.z, x_1261.w);
    let x_1264 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1266 : vec4<f32> = u_xlat2;
    let x_1269 : vec3<f32> = u_xlat1;
    u_xlat1 = ((vec3<f32>(x_1264.w, x_1264.w, x_1264.w) * vec3<f32>(x_1266.x, x_1266.y, x_1266.z)) + x_1269);
    let x_1271 : vec3<f32> = u_xlat1;
    let x_1274 : vec3<f32> = (x_1271 * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
    let x_1275 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1274.x, x_1274.y, x_1274.z, x_1275.w);
    let x_1277 : vec3<f32> = u_xlat1;
    u_xlat3 = (x_1277 + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
    let x_1281 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_1281 * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
    let x_1285 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_1285));
    let x_1288 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_1288 * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
    let x_1292 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_1292);
    let x_1296 : vec3<f32> = u_xlat1;
    let x_1298 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_1296.x, x_1296.y, x_1296.z, x_1296.x));
    u_xlatb1 = vec3<bool>(x_1298.x, x_1298.y, x_1298.z);
    let x_1301 : bool = u_xlatb1.x;
    if (x_1301) {
      let x_1306 : f32 = u_xlat2.x;
      x_1302 = x_1306;
    } else {
      let x_1309 : f32 = u_xlat3.x;
      x_1302 = x_1309;
    }
    let x_1310 : f32 = x_1302;
    u_xlat0.x = x_1310;
    let x_1313 : bool = u_xlatb1.y;
    if (x_1313) {
      let x_1318 : f32 = u_xlat2.y;
      x_1314 = x_1318;
    } else {
      let x_1321 : f32 = u_xlat3.y;
      x_1314 = x_1321;
    }
    let x_1322 : f32 = x_1314;
    u_xlat0.y = x_1322;
    let x_1325 : bool = u_xlatb1.z;
    if (x_1325) {
      let x_1330 : f32 = u_xlat2.z;
      x_1326 = x_1330;
    } else {
      let x_1333 : f32 = u_xlat3.z;
      x_1326 = x_1333;
    }
    let x_1334 : f32 = x_1326;
    u_xlat0.z = x_1334;
  }
  let x_1336 : vec4<f32> = u_xlat0;
  let x_1339 : vec4<f32> = x_25.x_Lut_Params;
  let x_1341 : vec3<f32> = (vec3<f32>(x_1336.x, x_1336.y, x_1336.z) * vec3<f32>(x_1339.z, x_1339.z, x_1339.z));
  let x_1342 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1341.x, x_1341.y, x_1342.z, x_1341.z);
  let x_1345 : f32 = u_xlat0.w;
  u_xlat21 = floor(x_1345);
  let x_1348 : vec4<f32> = x_25.x_Lut_Params;
  let x_1350 : vec2<f32> = (vec2<f32>(x_1348.x, x_1348.y) * vec2<f32>(0.5f, 0.5f));
  let x_1351 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1350.x, x_1350.y, x_1351.z);
  let x_1353 : vec4<f32> = u_xlat0;
  let x_1356 : vec4<f32> = x_25.x_Lut_Params;
  let x_1359 : vec3<f32> = u_xlat1;
  let x_1361 : vec2<f32> = ((vec2<f32>(x_1353.x, x_1353.y) * vec2<f32>(x_1356.x, x_1356.y)) + vec2<f32>(x_1359.x, x_1359.y));
  let x_1362 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1362.x, x_1361.x, x_1361.y);
  let x_1364 : f32 = u_xlat21;
  let x_1366 : f32 = x_25.x_Lut_Params.y;
  let x_1369 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_1364 * x_1366) + x_1369);
  let x_1376 : vec3<f32> = u_xlat1;
  let x_1378 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1376.x, x_1376.z), 0.0f);
  let x_1379 : vec3<f32> = vec3<f32>(x_1378.x, x_1378.y, x_1378.z);
  let x_1380 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1379.x, x_1379.y, x_1379.z, x_1380.w);
  let x_1383 : f32 = x_25.x_Lut_Params.y;
  u_xlat0.x = x_1383;
  u_xlat0.y = 0.0f;
  let x_1386 : vec4<f32> = u_xlat0;
  let x_1388 : vec3<f32> = u_xlat1;
  let x_1390 : vec2<f32> = (vec2<f32>(x_1386.x, x_1386.y) + vec2<f32>(x_1388.x, x_1388.z));
  let x_1391 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1390.x, x_1390.y, x_1391.z, x_1391.w);
  let x_1396 : vec4<f32> = u_xlat0;
  let x_1398 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1396.x, x_1396.y), 0.0f);
  u_xlat1 = vec3<f32>(x_1398.x, x_1398.y, x_1398.z);
  let x_1401 : f32 = u_xlat0.z;
  let x_1403 : f32 = x_25.x_Lut_Params.z;
  let x_1405 : f32 = u_xlat21;
  u_xlat0.x = ((x_1401 * x_1403) + -(x_1405));
  let x_1409 : vec4<f32> = u_xlat2;
  let x_1412 : vec3<f32> = u_xlat1;
  u_xlat7 = (-(vec3<f32>(x_1409.x, x_1409.y, x_1409.z)) + x_1412);
  let x_1414 : vec4<f32> = u_xlat0;
  let x_1416 : vec3<f32> = u_xlat7;
  let x_1418 : vec4<f32> = u_xlat2;
  let x_1420 : vec3<f32> = ((vec3<f32>(x_1414.x, x_1414.x, x_1414.x) * x_1416) + vec3<f32>(x_1418.x, x_1418.y, x_1418.z));
  let x_1421 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1420.x, x_1420.y, x_1420.z, x_1421.w);
  let x_1423 : vec2<f32> = vs_TEXCOORD0;
  let x_1426 : vec4<f32> = x_25.x_Grain_TilingParams;
  let x_1430 : vec4<f32> = x_25.x_Grain_TilingParams;
  let x_1432 : vec2<f32> = ((x_1423 * vec2<f32>(x_1426.x, x_1426.y)) + vec2<f32>(x_1430.z, x_1430.w));
  let x_1433 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1432.x, x_1432.y, x_1433.z);
  let x_1440 : vec3<f32> = u_xlat1;
  let x_1443 : f32 = x_25.x_GlobalMipBias.x;
  let x_1444 : vec4<f32> = textureSampleBias(x_Grain_Texture, sampler_LinearRepeat, vec2<f32>(x_1440.x, x_1440.y), x_1443);
  u_xlat21 = x_1444.w;
  let x_1446 : f32 = u_xlat21;
  u_xlat21 = (x_1446 + -0.5f);
  let x_1448 : f32 = u_xlat21;
  let x_1449 : f32 = u_xlat21;
  u_xlat21 = (x_1448 + x_1449);
  let x_1451 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(x_1451.x, x_1451.y, x_1451.z), vec3<f32>(0.21267290413379669189f, 0.71515220403671264648f, 0.07217500358819961548f));
  let x_1460 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_1460);
  let x_1465 : f32 = x_25.x_Grain_Params.y;
  let x_1467 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1465 * -(x_1467)) + 1.0f);
  let x_1473 : f32 = u_xlat21;
  let x_1475 : vec4<f32> = u_xlat0;
  u_xlat8 = (vec3<f32>(x_1473, x_1473, x_1473) * vec3<f32>(x_1475.x, x_1475.y, x_1475.z));
  let x_1478 : vec3<f32> = u_xlat8;
  let x_1481 : vec2<f32> = x_25.x_Grain_Params;
  u_xlat8 = (x_1478 * vec3<f32>(x_1481.x, x_1481.x, x_1481.x));
  let x_1484 : vec3<f32> = u_xlat8;
  let x_1485 : vec3<f32> = u_xlat1;
  let x_1488 : vec4<f32> = u_xlat0;
  let x_1490 : vec3<f32> = ((x_1484 * vec3<f32>(x_1485.x, x_1485.x, x_1485.x)) + vec3<f32>(x_1488.x, x_1488.y, x_1488.z));
  let x_1491 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1490.x, x_1490.y, x_1490.z, x_1491.w);
  let x_1493 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_1493.x, x_1493.y, x_1493.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
  let x_1496 : vec4<f32> = u_xlat0;
  let x_1499 : vec3<f32> = log2(abs(vec3<f32>(x_1496.x, x_1496.y, x_1496.z)));
  let x_1500 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1499.x, x_1499.y, x_1499.z, x_1500.w);
  let x_1502 : vec4<f32> = u_xlat2;
  let x_1504 : vec3<f32> = (vec3<f32>(x_1502.x, x_1502.y, x_1502.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
  let x_1505 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1504.x, x_1504.y, x_1504.z, x_1505.w);
  let x_1507 : vec4<f32> = u_xlat2;
  let x_1509 : vec3<f32> = exp2(vec3<f32>(x_1507.x, x_1507.y, x_1507.z));
  let x_1510 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1509.x, x_1509.y, x_1509.z, x_1510.w);
  let x_1512 : vec4<f32> = u_xlat2;
  let x_1515 : vec3<f32> = ((vec3<f32>(x_1512.x, x_1512.y, x_1512.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
  let x_1516 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1515.x, x_1515.y, x_1515.z, x_1516.w);
  let x_1518 : vec4<f32> = u_xlat0;
  let x_1520 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_1518.x, x_1518.y, x_1518.z, x_1518.x));
  u_xlatb0 = vec3<bool>(x_1520.x, x_1520.y, x_1520.z);
  let x_1523 : bool = u_xlatb0.x;
  if (x_1523) {
    let x_1528 : f32 = u_xlat1.x;
    x_1524 = x_1528;
  } else {
    let x_1531 : f32 = u_xlat2.x;
    x_1524 = x_1531;
  }
  let x_1532 : f32 = x_1524;
  u_xlat0.x = x_1532;
  let x_1535 : bool = u_xlatb0.y;
  if (x_1535) {
    let x_1540 : f32 = u_xlat1.y;
    x_1536 = x_1540;
  } else {
    let x_1543 : f32 = u_xlat2.y;
    x_1536 = x_1543;
  }
  let x_1544 : f32 = x_1536;
  u_xlat0.y = x_1544;
  let x_1547 : bool = u_xlatb0.z;
  if (x_1547) {
    let x_1552 : f32 = u_xlat1.z;
    x_1548 = x_1552;
  } else {
    let x_1555 : f32 = u_xlat2.z;
    x_1548 = x_1555;
  }
  let x_1556 : f32 = x_1548;
  u_xlat0.z = x_1556;
  let x_1558 : vec2<f32> = vs_TEXCOORD0;
  let x_1561 : vec4<f32> = x_25.x_Dithering_Params;
  let x_1565 : vec4<f32> = x_25.x_Dithering_Params;
  let x_1567 : vec2<f32> = ((x_1558 * vec2<f32>(x_1561.x, x_1561.y)) + vec2<f32>(x_1565.z, x_1565.w));
  let x_1568 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1567.x, x_1567.y, x_1568.z);
  let x_1575 : vec3<f32> = u_xlat1;
  let x_1578 : f32 = x_25.x_GlobalMipBias.x;
  let x_1579 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_1575.x, x_1575.y), x_1578);
  u_xlat21 = x_1579.w;
  let x_1581 : f32 = u_xlat21;
  u_xlat21 = ((x_1581 * 2.0f) + -1.0f);
  let x_1584 : f32 = u_xlat21;
  u_xlatb1.x = (x_1584 >= 0.0f);
  let x_1588 : bool = u_xlatb1.x;
  u_xlat1.x = select(-1.0f, 1.0f, x_1588);
  let x_1591 : f32 = u_xlat21;
  u_xlat21 = (-(abs(x_1591)) + 1.0f);
  let x_1595 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_1595);
  let x_1597 : f32 = u_xlat21;
  u_xlat21 = (-(x_1597) + 1.0f);
  let x_1600 : f32 = u_xlat21;
  let x_1602 : f32 = u_xlat1.x;
  u_xlat21 = (x_1600 * x_1602);
  let x_1604 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_1604.x, x_1604.y, x_1604.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
  let x_1607 : vec4<f32> = u_xlat0;
  let x_1610 : vec3<f32> = log2(abs(vec3<f32>(x_1607.x, x_1607.y, x_1607.z)));
  let x_1611 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1610.x, x_1610.y, x_1610.z, x_1611.w);
  let x_1613 : vec4<f32> = u_xlat2;
  let x_1615 : vec3<f32> = (vec3<f32>(x_1613.x, x_1613.y, x_1613.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
  let x_1616 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1615.x, x_1615.y, x_1615.z, x_1616.w);
  let x_1618 : vec4<f32> = u_xlat2;
  let x_1620 : vec3<f32> = exp2(vec3<f32>(x_1618.x, x_1618.y, x_1618.z));
  let x_1621 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1620.x, x_1620.y, x_1620.z, x_1621.w);
  let x_1623 : vec4<f32> = u_xlat2;
  let x_1626 : vec3<f32> = ((vec3<f32>(x_1623.x, x_1623.y, x_1623.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
  let x_1627 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1626.x, x_1626.y, x_1626.z, x_1627.w);
  let x_1629 : vec4<f32> = u_xlat0;
  let x_1631 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_1629.x, x_1629.y, x_1629.z, x_1629.x));
  u_xlatb0 = vec3<bool>(x_1631.x, x_1631.y, x_1631.z);
  let x_1634 : bool = u_xlatb0.x;
  if (x_1634) {
    let x_1639 : f32 = u_xlat1.x;
    x_1635 = x_1639;
  } else {
    let x_1642 : f32 = u_xlat2.x;
    x_1635 = x_1642;
  }
  let x_1643 : f32 = x_1635;
  u_xlat0.x = x_1643;
  let x_1646 : bool = u_xlatb0.y;
  if (x_1646) {
    let x_1651 : f32 = u_xlat1.y;
    x_1647 = x_1651;
  } else {
    let x_1654 : f32 = u_xlat2.y;
    x_1647 = x_1654;
  }
  let x_1655 : f32 = x_1647;
  u_xlat0.y = x_1655;
  let x_1658 : bool = u_xlatb0.z;
  if (x_1658) {
    let x_1663 : f32 = u_xlat1.z;
    x_1659 = x_1663;
  } else {
    let x_1666 : f32 = u_xlat2.z;
    x_1659 = x_1666;
  }
  let x_1667 : f32 = x_1659;
  u_xlat0.z = x_1667;
  let x_1669 : f32 = u_xlat21;
  let x_1674 : vec4<f32> = u_xlat0;
  let x_1676 : vec3<f32> = ((vec3<f32>(x_1669, x_1669, x_1669) * vec3<f32>(0.0039215688593685627f, 0.0039215688593685627f, 0.0039215688593685627f)) + vec3<f32>(x_1674.x, x_1674.y, x_1674.z));
  let x_1677 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1676.x, x_1676.y, x_1676.z, x_1677.w);
  let x_1679 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_1679.x, x_1679.y, x_1679.z) * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
  let x_1682 : vec4<f32> = u_xlat0;
  let x_1684 : vec3<f32> = (vec3<f32>(x_1682.x, x_1682.y, x_1682.z) + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
  let x_1685 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1684.x, x_1684.y, x_1684.z, x_1685.w);
  let x_1687 : vec4<f32> = u_xlat2;
  let x_1689 : vec3<f32> = (vec3<f32>(x_1687.x, x_1687.y, x_1687.z) * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
  let x_1690 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1689.x, x_1689.y, x_1689.z, x_1690.w);
  let x_1692 : vec4<f32> = u_xlat2;
  let x_1695 : vec3<f32> = log2(abs(vec3<f32>(x_1692.x, x_1692.y, x_1692.z)));
  let x_1696 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1695.x, x_1695.y, x_1695.z, x_1696.w);
  let x_1698 : vec4<f32> = u_xlat2;
  let x_1700 : vec3<f32> = (vec3<f32>(x_1698.x, x_1698.y, x_1698.z) * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
  let x_1701 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1700.x, x_1700.y, x_1700.z, x_1701.w);
  let x_1703 : vec4<f32> = u_xlat2;
  let x_1705 : vec3<f32> = exp2(vec3<f32>(x_1703.x, x_1703.y, x_1703.z));
  let x_1706 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1705.x, x_1705.y, x_1705.z, x_1706.w);
  let x_1708 : vec4<f32> = u_xlat0;
  let x_1710 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_1708.x, x_1708.y, x_1708.z, x_1708.x));
  u_xlatb0 = vec3<bool>(x_1710.x, x_1710.y, x_1710.z);
  let x_1713 : bool = u_xlatb0.x;
  if (x_1713) {
    let x_1718 : f32 = u_xlat1.x;
    x_1714 = x_1718;
  } else {
    let x_1721 : f32 = u_xlat2.x;
    x_1714 = x_1721;
  }
  let x_1722 : f32 = x_1714;
  u_xlat0.x = x_1722;
  let x_1725 : bool = u_xlatb0.y;
  if (x_1725) {
    let x_1730 : f32 = u_xlat1.y;
    x_1726 = x_1730;
  } else {
    let x_1733 : f32 = u_xlat2.y;
    x_1726 = x_1733;
  }
  let x_1734 : f32 = x_1726;
  u_xlat0.y = x_1734;
  let x_1737 : bool = u_xlatb0.z;
  if (x_1737) {
    let x_1742 : f32 = u_xlat1.z;
    x_1738 = x_1742;
  } else {
    let x_1745 : f32 = u_xlat2.z;
    x_1738 = x_1745;
  }
  let x_1746 : f32 = x_1738;
  u_xlat0.z = x_1746;
  let x_1750 : vec4<f32> = u_xlat0;
  let x_1753 : vec3<f32> = max(vec3<f32>(x_1750.x, x_1750.y, x_1750.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1754 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1753.x, x_1753.y, x_1753.z, x_1754.w);
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


