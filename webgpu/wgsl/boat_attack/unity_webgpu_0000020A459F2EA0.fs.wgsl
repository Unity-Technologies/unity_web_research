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

var<private> u_xlat5 : f32;

var<private> u_xlat6 : f32;

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
  var x_479 : f32;
  var x_664 : f32;
  var hlslcc_movcTemp : vec3<f32>;
  var x_917 : f32;
  var x_929 : f32;
  var x_941 : f32;
  var x_1086 : f32;
  var x_1098 : f32;
  var x_1110 : f32;
  var x_1358 : f32;
  var x_1370 : f32;
  var x_1382 : f32;
  var x_1437 : f32;
  var x_1449 : f32;
  var x_1461 : f32;
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
    u_xlat5 = sin(x_372);
    let x_376 : f32 = u_xlat16.x;
    u_xlat6 = cos(x_376);
    let x_378 : f32 = u_xlat5;
    let x_379 : f32 = u_xlat6;
    u_xlat16.x = (x_378 / x_379);
    let x_383 : f32 = u_xlat16.y;
    u_xlat23 = (1.0f / x_383);
    let x_386 : f32 = u_xlat16.x;
    let x_387 : f32 = u_xlat23;
    u_xlat16.x = ((x_386 * x_387) + -1.0f);
    let x_391 : vec4<f32> = u_xlat0;
    let x_393 : vec2<f32> = u_xlat16;
    let x_396 : vec4<f32> = u_xlat4;
    u_xlat16 = ((vec2<f32>(x_391.x, x_391.y) * vec2<f32>(x_393.x, x_393.x)) + vec2<f32>(x_396.x, x_396.y));
  } else {
    let x_402 : f32 = u_xlat1.x;
    u_xlat24 = (1.0f / x_402);
    let x_404 : f32 = u_xlat24;
    let x_406 : f32 = x_25.x_Distortion_Params2.x;
    u_xlat24 = (x_404 * x_406);
    let x_409 : f32 = u_xlat1.x;
    let x_411 : f32 = x_25.x_Distortion_Params2.y;
    u_xlat1.x = (x_409 * x_411);
    let x_415 : f32 = u_xlat1.x;
    u_xlat5 = min(abs(x_415), 1.0f);
    let x_420 : f32 = u_xlat1.x;
    u_xlat12 = max(abs(x_420), 1.0f);
    let x_423 : f32 = u_xlat12;
    u_xlat12 = (1.0f / x_423);
    let x_425 : f32 = u_xlat12;
    let x_426 : f32 = u_xlat5;
    u_xlat5 = (x_425 * x_426);
    let x_428 : f32 = u_xlat5;
    let x_429 : f32 = u_xlat5;
    u_xlat12 = (x_428 * x_429);
    let x_432 : f32 = u_xlat12;
    u_xlat19 = ((x_432 * 0.02083509974181652069f) + -0.08513300120830535889f);
    let x_435 : f32 = u_xlat12;
    let x_436 : f32 = u_xlat19;
    u_xlat19 = ((x_435 * x_436) + 0.18014100193977355957f);
    let x_439 : f32 = u_xlat12;
    let x_440 : f32 = u_xlat19;
    u_xlat19 = ((x_439 * x_440) + -0.33029949665069580078f);
    let x_443 : f32 = u_xlat12;
    let x_444 : f32 = u_xlat19;
    u_xlat12 = ((x_443 * x_444) + 0.99986600875854492188f);
    let x_447 : f32 = u_xlat12;
    let x_448 : f32 = u_xlat5;
    u_xlat19 = (x_447 * x_448);
    let x_452 : f32 = u_xlat1.x;
    u_xlatb26 = (1.0f < abs(x_452));
    let x_455 : f32 = u_xlat19;
    u_xlat19 = ((x_455 * -2.0f) + 1.57079637050628662109f);
    let x_458 : bool = u_xlatb26;
    let x_459 : f32 = u_xlat19;
    u_xlat19 = select(0.0f, x_459, x_458);
    let x_461 : f32 = u_xlat5;
    let x_462 : f32 = u_xlat12;
    let x_464 : f32 = u_xlat19;
    u_xlat5 = ((x_461 * x_462) + x_464);
    let x_467 : f32 = u_xlat1.x;
    u_xlat1.x = min(x_467, 1.0f);
    let x_471 : f32 = u_xlat1.x;
    let x_473 : f32 = u_xlat1.x;
    u_xlatb1.x = (x_471 < -(x_473));
    let x_478 : bool = u_xlatb1.x;
    if (x_478) {
      let x_482 : f32 = u_xlat5;
      x_479 = -(x_482);
    } else {
      let x_485 : f32 = u_xlat5;
      x_479 = x_485;
    }
    let x_486 : f32 = x_479;
    u_xlat1.x = x_486;
    let x_488 : f32 = u_xlat24;
    let x_490 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_488 * x_490) + -1.0f);
    let x_494 : vec4<f32> = u_xlat0;
    let x_496 : vec3<f32> = u_xlat1;
    let x_499 : vec4<f32> = u_xlat4;
    u_xlat16 = ((vec2<f32>(x_494.x, x_494.y) * vec2<f32>(x_496.x, x_496.x)) + vec2<f32>(x_499.x, x_499.y));
  }
  let x_502 : vec4<f32> = u_xlat2;
  let x_504 : vec2<f32> = u_xlat16;
  let x_505 : vec2<f32> = min(vec2<f32>(x_502.x, x_502.y), x_504);
  let x_506 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_505.x, x_505.y, x_506.z, x_506.w);
  let x_511 : vec4<f32> = u_xlat0;
  let x_514 : f32 = x_25.x_GlobalMipBias.x;
  let x_515 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_511.x, x_511.y), x_514);
  u_xlat3.y = x_515.y;
  let x_518 : vec4<f32> = u_xlat0;
  let x_520 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec2<f32>(x_518.z, x_518.w), vec2<f32>(x_520.z, x_520.w));
  let x_525 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_525);
  let x_528 : bool = u_xlatb8;
  if (x_528) {
    let x_531 : vec4<f32> = u_xlat0;
    let x_534 : vec4<f32> = x_25.x_Distortion_Params2;
    let x_536 : vec2<f32> = (vec2<f32>(x_531.x, x_531.x) * vec2<f32>(x_534.x, x_534.y));
    let x_537 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_536.x, x_536.y, x_537.z);
    let x_540 : f32 = u_xlat1.x;
    u_xlat4.x = cos(x_540);
    let x_544 : f32 = u_xlat1.x;
    u_xlat1.x = sin(x_544);
    let x_549 : f32 = u_xlat1.x;
    let x_551 : f32 = u_xlat4.x;
    u_xlat7.x = (x_549 / x_551);
    let x_555 : f32 = u_xlat1.y;
    u_xlat1.x = (1.0f / x_555);
    let x_559 : f32 = u_xlat7.x;
    let x_561 : f32 = u_xlat1.x;
    u_xlat7.x = ((x_559 * x_561) + -1.0f);
    let x_565 : vec4<f32> = u_xlat0;
    let x_567 : vec3<f32> = u_xlat7;
    let x_570 : vec4<f32> = u_xlat4;
    let x_572 : vec2<f32> = ((vec2<f32>(x_565.z, x_565.w) * vec2<f32>(x_567.x, x_567.x)) + vec2<f32>(x_570.z, x_570.w));
    let x_573 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_572.x, x_572.y, x_573.z);
  } else {
    let x_577 : f32 = u_xlat0.x;
    u_xlat7.x = (1.0f / x_577);
    let x_581 : f32 = u_xlat7.x;
    let x_583 : f32 = x_25.x_Distortion_Params2.x;
    u_xlat7.x = (x_581 * x_583);
    let x_587 : f32 = u_xlat0.x;
    let x_589 : f32 = x_25.x_Distortion_Params2.y;
    u_xlat0.x = (x_587 * x_589);
    let x_593 : f32 = u_xlat0.x;
    u_xlat16.x = min(abs(x_593), 1.0f);
    let x_598 : f32 = u_xlat0.x;
    u_xlat23 = max(abs(x_598), 1.0f);
    let x_601 : f32 = u_xlat23;
    u_xlat23 = (1.0f / x_601);
    let x_603 : f32 = u_xlat23;
    let x_605 : f32 = u_xlat16.x;
    u_xlat16.x = (x_603 * x_605);
    let x_609 : f32 = u_xlat16.x;
    let x_611 : f32 = u_xlat16.x;
    u_xlat23 = (x_609 * x_611);
    let x_613 : f32 = u_xlat23;
    u_xlat24 = ((x_613 * 0.02083509974181652069f) + -0.08513300120830535889f);
    let x_616 : f32 = u_xlat23;
    let x_617 : f32 = u_xlat24;
    u_xlat24 = ((x_616 * x_617) + 0.18014100193977355957f);
    let x_620 : f32 = u_xlat23;
    let x_621 : f32 = u_xlat24;
    u_xlat24 = ((x_620 * x_621) + -0.33029949665069580078f);
    let x_624 : f32 = u_xlat23;
    let x_625 : f32 = u_xlat24;
    u_xlat23 = ((x_624 * x_625) + 0.99986600875854492188f);
    let x_628 : f32 = u_xlat23;
    let x_630 : f32 = u_xlat16.x;
    u_xlat24 = (x_628 * x_630);
    let x_634 : f32 = u_xlat0.x;
    u_xlatb4 = (1.0f < abs(x_634));
    let x_637 : f32 = u_xlat24;
    u_xlat24 = ((x_637 * -2.0f) + 1.57079637050628662109f);
    let x_640 : bool = u_xlatb4;
    let x_641 : f32 = u_xlat24;
    u_xlat24 = select(0.0f, x_641, x_640);
    let x_644 : f32 = u_xlat16.x;
    let x_645 : f32 = u_xlat23;
    let x_647 : f32 = u_xlat24;
    u_xlat16.x = ((x_644 * x_645) + x_647);
    let x_651 : f32 = u_xlat0.x;
    u_xlat0.x = min(x_651, 1.0f);
    let x_656 : f32 = u_xlat0.x;
    let x_658 : f32 = u_xlat0.x;
    u_xlatb0.x = (x_656 < -(x_658));
    let x_663 : bool = u_xlatb0.x;
    if (x_663) {
      let x_668 : f32 = u_xlat16.x;
      x_664 = -(x_668);
    } else {
      let x_672 : f32 = u_xlat16.x;
      x_664 = x_672;
    }
    let x_673 : f32 = x_664;
    u_xlat0.x = x_673;
    let x_676 : f32 = u_xlat7.x;
    let x_678 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_676 * x_678) + -1.0f);
    let x_682 : vec4<f32> = u_xlat0;
    let x_684 : vec4<f32> = u_xlat0;
    let x_687 : vec4<f32> = u_xlat4;
    let x_689 : vec2<f32> = ((vec2<f32>(x_682.z, x_682.w) * vec2<f32>(x_684.x, x_684.x)) + vec2<f32>(x_687.z, x_687.w));
    let x_690 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_689.x, x_689.y, x_690.z);
  }
  let x_692 : vec4<f32> = u_xlat2;
  let x_694 : vec3<f32> = u_xlat1;
  let x_696 : vec2<f32> = min(vec2<f32>(x_692.x, x_692.y), vec2<f32>(x_694.x, x_694.y));
  let x_697 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_696.x, x_696.y, x_697.z, x_697.w);
  let x_702 : vec4<f32> = u_xlat0;
  let x_705 : f32 = x_25.x_GlobalMipBias.x;
  let x_706 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_702.x, x_702.y), x_705);
  u_xlat3.z = x_706.z;
  let x_712 : vec4<f32> = x_25.x_BloomTexture_TexelSize;
  let x_717 : vec4<f32> = x_25.x_RTHandleScale;
  let x_719 : vec2<f32> = ((-(vec2<f32>(x_712.x, x_712.y)) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_717.x, x_717.y));
  let x_720 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_719.x, x_719.y, x_720.z, x_720.w);
  let x_722 : vec4<f32> = u_xlat0;
  let x_724 : vec2<f32> = u_xlat15;
  let x_725 : vec2<f32> = min(vec2<f32>(x_722.x, x_722.y), x_724);
  let x_726 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_725.x, x_725.y, x_726.z, x_726.w);
  let x_732 : vec4<f32> = u_xlat0;
  let x_735 : f32 = x_25.x_GlobalMipBias.x;
  let x_736 : vec4<f32> = textureSampleBias(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_732.x, x_732.y), x_735);
  u_xlat0 = x_736;
  let x_739 : f32 = x_25.x_Bloom_RGBM;
  u_xlatb1.x = (0.0f < x_739);
  let x_743 : bool = u_xlatb1.x;
  if (x_743) {
    let x_746 : vec4<f32> = u_xlat0;
    let x_748 : vec4<f32> = u_xlat0;
    let x_750 : vec3<f32> = (vec3<f32>(x_746.w, x_746.w, x_746.w) * vec3<f32>(x_748.x, x_748.y, x_748.z));
    let x_751 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_750.x, x_750.y, x_750.z, x_751.w);
    let x_753 : vec4<f32> = u_xlat2;
    let x_757 : vec3<f32> = (vec3<f32>(x_753.x, x_753.y, x_753.z) * vec3<f32>(8.0f, 8.0f, 8.0f));
    let x_758 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_757.x, x_757.y, x_757.z, x_758.w);
  }
  let x_760 : vec4<f32> = u_xlat0;
  let x_764 : vec4<f32> = x_25.x_Bloom_Params;
  let x_766 : vec3<f32> = (vec3<f32>(x_760.x, x_760.y, x_760.z) * vec3<f32>(x_764.x, x_764.x, x_764.x));
  let x_767 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_766.x, x_766.y, x_766.z, x_767.w);
  let x_769 : vec4<f32> = u_xlat0;
  let x_772 : vec4<f32> = x_25.x_Bloom_Params;
  let x_775 : vec3<f32> = u_xlat3;
  let x_776 : vec3<f32> = ((vec3<f32>(x_769.x, x_769.y, x_769.z) * vec3<f32>(x_772.y, x_772.z, x_772.w)) + x_775);
  let x_777 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_776.x, x_776.y, x_776.z, x_777.w);
  let x_782 : f32 = x_25.x_Vignette_Params2.z;
  u_xlatb21 = (0.0f < x_782);
  let x_784 : bool = u_xlatb21;
  if (x_784) {
    let x_787 : vec2<f32> = u_xlat15;
    let x_789 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_792 : vec2<f32> = (x_787 + -(vec2<f32>(x_789.x, x_789.y)));
    let x_793 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_792.x, x_792.y, x_793.z);
    let x_795 : vec3<f32> = u_xlat1;
    let x_799 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_801 : vec2<f32> = (abs(vec2<f32>(x_795.x, x_795.y)) * vec2<f32>(x_799.z, x_799.z));
    let x_802 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_802.x, x_801.x, x_801.y);
    let x_805 : f32 = u_xlat1.y;
    let x_808 : f32 = x_25.x_Vignette_Params1.w;
    u_xlat1.x = (x_805 * x_808);
    let x_812 : vec3<f32> = u_xlat1;
    let x_814 : vec3<f32> = u_xlat1;
    u_xlat21 = dot(vec2<f32>(x_812.x, x_812.z), vec2<f32>(x_814.x, x_814.z));
    let x_817 : f32 = u_xlat21;
    u_xlat21 = (-(x_817) + 1.0f);
    let x_820 : f32 = u_xlat21;
    u_xlat21 = max(x_820, 0.0f);
    let x_822 : f32 = u_xlat21;
    u_xlat21 = log2(x_822);
    let x_824 : f32 = u_xlat21;
    let x_826 : f32 = x_25.x_Vignette_Params2.w;
    u_xlat21 = (x_824 * x_826);
    let x_828 : f32 = u_xlat21;
    u_xlat21 = exp2(x_828);
    let x_831 : vec4<f32> = x_25.x_Vignette_Params1;
    u_xlat1 = (-(vec3<f32>(x_831.x, x_831.y, x_831.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_836 : f32 = u_xlat21;
    let x_838 : vec3<f32> = u_xlat1;
    let x_841 : vec4<f32> = x_25.x_Vignette_Params1;
    u_xlat1 = ((vec3<f32>(x_836, x_836, x_836) * x_838) + vec3<f32>(x_841.x, x_841.y, x_841.z));
    let x_844 : vec4<f32> = u_xlat0;
    let x_846 : vec3<f32> = u_xlat1;
    let x_847 : vec3<f32> = (vec3<f32>(x_844.x, x_844.y, x_844.z) * x_846);
    let x_848 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_847.x, x_847.y, x_847.z, x_848.w);
  }
  let x_850 : vec4<f32> = u_xlat0;
  let x_854 : vec4<f32> = x_25.x_Lut_Params;
  let x_856 : vec3<f32> = (vec3<f32>(x_850.x, x_850.y, x_850.z) * vec3<f32>(x_854.w, x_854.w, x_854.w));
  let x_857 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_856.x, x_856.y, x_856.z, x_857.w);
  let x_859 : vec4<f32> = u_xlat0;
  let x_863 : vec3<f32> = clamp(vec3<f32>(x_859.x, x_859.y, x_859.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_864 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_863.x, x_863.y, x_863.z, x_864.w);
  let x_868 : f32 = x_25.x_UserLut_Params.w;
  u_xlatb21 = (0.0f < x_868);
  let x_870 : bool = u_xlatb21;
  if (x_870) {
    let x_873 : vec4<f32> = u_xlat0;
    u_xlat1 = (vec3<f32>(x_873.x, x_873.y, x_873.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
    let x_878 : vec4<f32> = u_xlat0;
    let x_880 : vec3<f32> = log2(vec3<f32>(x_878.x, x_878.y, x_878.z));
    let x_881 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_880.x, x_880.y, x_880.z, x_881.w);
    let x_883 : vec4<f32> = u_xlat2;
    let x_887 : vec3<f32> = (vec3<f32>(x_883.x, x_883.y, x_883.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
    let x_888 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_887.x, x_887.y, x_887.z, x_888.w);
    let x_890 : vec4<f32> = u_xlat2;
    let x_892 : vec3<f32> = exp2(vec3<f32>(x_890.x, x_890.y, x_890.z));
    let x_893 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_892.x, x_892.y, x_892.z, x_893.w);
    let x_895 : vec4<f32> = u_xlat2;
    let x_902 : vec3<f32> = ((vec3<f32>(x_895.x, x_895.y, x_895.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
    let x_903 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_902.x, x_902.y, x_902.z, x_903.w);
    let x_907 : vec4<f32> = u_xlat0;
    let x_910 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_907.x, x_907.y, x_907.z, x_907.x));
    u_xlatb3 = vec3<bool>(x_910.x, x_910.y, x_910.z);
    let x_914 : vec3<f32> = u_xlat1;
    hlslcc_movcTemp = x_914;
    let x_916 : bool = u_xlatb3.x;
    if (x_916) {
      let x_921 : f32 = u_xlat1.x;
      x_917 = x_921;
    } else {
      let x_924 : f32 = u_xlat2.x;
      x_917 = x_924;
    }
    let x_925 : f32 = x_917;
    hlslcc_movcTemp.x = x_925;
    let x_928 : bool = u_xlatb3.y;
    if (x_928) {
      let x_933 : f32 = u_xlat1.y;
      x_929 = x_933;
    } else {
      let x_936 : f32 = u_xlat2.y;
      x_929 = x_936;
    }
    let x_937 : f32 = x_929;
    hlslcc_movcTemp.y = x_937;
    let x_940 : bool = u_xlatb3.z;
    if (x_940) {
      let x_945 : f32 = u_xlat1.z;
      x_941 = x_945;
    } else {
      let x_948 : f32 = u_xlat2.z;
      x_941 = x_948;
    }
    let x_949 : f32 = x_941;
    hlslcc_movcTemp.z = x_949;
    let x_951 : vec3<f32> = hlslcc_movcTemp;
    u_xlat1 = x_951;
    let x_952 : vec3<f32> = u_xlat1;
    let x_955 : vec4<f32> = x_25.x_UserLut_Params;
    let x_957 : vec3<f32> = (vec3<f32>(x_952.z, x_952.x, x_952.y) * vec3<f32>(x_955.z, x_955.z, x_955.z));
    let x_958 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_957.x, x_957.y, x_957.z, x_958.w);
    let x_961 : f32 = u_xlat2.x;
    u_xlat21 = floor(x_961);
    let x_964 : vec4<f32> = x_25.x_UserLut_Params;
    let x_966 : vec2<f32> = (vec2<f32>(x_964.x, x_964.y) * vec2<f32>(0.5f, 0.5f));
    let x_967 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_966.x, x_967.y, x_967.z, x_966.y);
    let x_969 : vec4<f32> = u_xlat2;
    let x_972 : vec4<f32> = x_25.x_UserLut_Params;
    let x_975 : vec4<f32> = u_xlat2;
    let x_977 : vec2<f32> = ((vec2<f32>(x_969.y, x_969.z) * vec2<f32>(x_972.x, x_972.y)) + vec2<f32>(x_975.x, x_975.w));
    let x_978 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_978.x, x_977.x, x_977.y, x_978.w);
    let x_980 : f32 = u_xlat21;
    let x_982 : f32 = x_25.x_UserLut_Params.y;
    let x_985 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_980 * x_982) + x_985);
    let x_992 : vec4<f32> = u_xlat2;
    let x_994 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_992.x, x_992.z), 0.0f);
    u_xlat3 = vec3<f32>(x_994.x, x_994.y, x_994.z);
    let x_997 : f32 = x_25.x_UserLut_Params.y;
    u_xlat4.x = x_997;
    u_xlat4.y = 0.0f;
    let x_1000 : vec4<f32> = u_xlat2;
    let x_1002 : vec4<f32> = u_xlat4;
    let x_1004 : vec2<f32> = (vec2<f32>(x_1000.x, x_1000.z) + vec2<f32>(x_1002.x, x_1002.y));
    let x_1005 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1004.x, x_1004.y, x_1005.z, x_1005.w);
    let x_1010 : vec4<f32> = u_xlat2;
    let x_1012 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1010.x, x_1010.y), 0.0f);
    let x_1013 : vec3<f32> = vec3<f32>(x_1012.x, x_1012.y, x_1012.z);
    let x_1014 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1013.x, x_1013.y, x_1013.z, x_1014.w);
    let x_1017 : f32 = u_xlat1.z;
    let x_1019 : f32 = x_25.x_UserLut_Params.z;
    let x_1021 : f32 = u_xlat21;
    u_xlat21 = ((x_1017 * x_1019) + -(x_1021));
    let x_1024 : vec3<f32> = u_xlat3;
    let x_1026 : vec4<f32> = u_xlat2;
    let x_1028 : vec3<f32> = (-(x_1024) + vec3<f32>(x_1026.x, x_1026.y, x_1026.z));
    let x_1029 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1028.x, x_1028.y, x_1028.z, x_1029.w);
    let x_1031 : f32 = u_xlat21;
    let x_1033 : vec4<f32> = u_xlat2;
    let x_1036 : vec3<f32> = u_xlat3;
    let x_1037 : vec3<f32> = ((vec3<f32>(x_1031, x_1031, x_1031) * vec3<f32>(x_1033.x, x_1033.y, x_1033.z)) + x_1036);
    let x_1038 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1037.x, x_1037.y, x_1037.z, x_1038.w);
    let x_1040 : vec3<f32> = u_xlat1;
    let x_1042 : vec4<f32> = u_xlat2;
    let x_1044 : vec3<f32> = (-(x_1040) + vec3<f32>(x_1042.x, x_1042.y, x_1042.z));
    let x_1045 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1044.x, x_1044.y, x_1044.z, x_1045.w);
    let x_1048 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1050 : vec4<f32> = u_xlat2;
    let x_1053 : vec3<f32> = u_xlat1;
    u_xlat1 = ((vec3<f32>(x_1048.w, x_1048.w, x_1048.w) * vec3<f32>(x_1050.x, x_1050.y, x_1050.z)) + x_1053);
    let x_1055 : vec3<f32> = u_xlat1;
    let x_1058 : vec3<f32> = (x_1055 * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
    let x_1059 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1058.x, x_1058.y, x_1058.z, x_1059.w);
    let x_1061 : vec3<f32> = u_xlat1;
    u_xlat3 = (x_1061 + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
    let x_1065 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_1065 * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
    let x_1069 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_1069));
    let x_1072 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_1072 * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
    let x_1076 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_1076);
    let x_1080 : vec3<f32> = u_xlat1;
    let x_1082 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_1080.x, x_1080.y, x_1080.z, x_1080.x));
    u_xlatb1 = vec3<bool>(x_1082.x, x_1082.y, x_1082.z);
    let x_1085 : bool = u_xlatb1.x;
    if (x_1085) {
      let x_1090 : f32 = u_xlat2.x;
      x_1086 = x_1090;
    } else {
      let x_1093 : f32 = u_xlat3.x;
      x_1086 = x_1093;
    }
    let x_1094 : f32 = x_1086;
    u_xlat0.x = x_1094;
    let x_1097 : bool = u_xlatb1.y;
    if (x_1097) {
      let x_1102 : f32 = u_xlat2.y;
      x_1098 = x_1102;
    } else {
      let x_1105 : f32 = u_xlat3.y;
      x_1098 = x_1105;
    }
    let x_1106 : f32 = x_1098;
    u_xlat0.y = x_1106;
    let x_1109 : bool = u_xlatb1.z;
    if (x_1109) {
      let x_1114 : f32 = u_xlat2.z;
      x_1110 = x_1114;
    } else {
      let x_1117 : f32 = u_xlat3.z;
      x_1110 = x_1117;
    }
    let x_1118 : f32 = x_1110;
    u_xlat0.z = x_1118;
  }
  let x_1120 : vec4<f32> = u_xlat0;
  let x_1123 : vec4<f32> = x_25.x_Lut_Params;
  let x_1125 : vec3<f32> = (vec3<f32>(x_1120.x, x_1120.y, x_1120.z) * vec3<f32>(x_1123.z, x_1123.z, x_1123.z));
  let x_1126 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1125.x, x_1125.y, x_1126.z, x_1125.z);
  let x_1129 : f32 = u_xlat0.w;
  u_xlat21 = floor(x_1129);
  let x_1132 : vec4<f32> = x_25.x_Lut_Params;
  let x_1134 : vec2<f32> = (vec2<f32>(x_1132.x, x_1132.y) * vec2<f32>(0.5f, 0.5f));
  let x_1135 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1134.x, x_1134.y, x_1135.z);
  let x_1137 : vec4<f32> = u_xlat0;
  let x_1140 : vec4<f32> = x_25.x_Lut_Params;
  let x_1143 : vec3<f32> = u_xlat1;
  let x_1145 : vec2<f32> = ((vec2<f32>(x_1137.x, x_1137.y) * vec2<f32>(x_1140.x, x_1140.y)) + vec2<f32>(x_1143.x, x_1143.y));
  let x_1146 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1146.x, x_1145.x, x_1145.y);
  let x_1148 : f32 = u_xlat21;
  let x_1150 : f32 = x_25.x_Lut_Params.y;
  let x_1153 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_1148 * x_1150) + x_1153);
  let x_1160 : vec3<f32> = u_xlat1;
  let x_1162 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1160.x, x_1160.z), 0.0f);
  let x_1163 : vec3<f32> = vec3<f32>(x_1162.x, x_1162.y, x_1162.z);
  let x_1164 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1163.x, x_1163.y, x_1163.z, x_1164.w);
  let x_1167 : f32 = x_25.x_Lut_Params.y;
  u_xlat0.x = x_1167;
  u_xlat0.y = 0.0f;
  let x_1170 : vec4<f32> = u_xlat0;
  let x_1172 : vec3<f32> = u_xlat1;
  let x_1174 : vec2<f32> = (vec2<f32>(x_1170.x, x_1170.y) + vec2<f32>(x_1172.x, x_1172.z));
  let x_1175 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1174.x, x_1174.y, x_1175.z, x_1175.w);
  let x_1180 : vec4<f32> = u_xlat0;
  let x_1182 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1180.x, x_1180.y), 0.0f);
  u_xlat1 = vec3<f32>(x_1182.x, x_1182.y, x_1182.z);
  let x_1185 : f32 = u_xlat0.z;
  let x_1187 : f32 = x_25.x_Lut_Params.z;
  let x_1189 : f32 = u_xlat21;
  u_xlat0.x = ((x_1185 * x_1187) + -(x_1189));
  let x_1193 : vec4<f32> = u_xlat2;
  let x_1196 : vec3<f32> = u_xlat1;
  u_xlat7 = (-(vec3<f32>(x_1193.x, x_1193.y, x_1193.z)) + x_1196);
  let x_1198 : vec4<f32> = u_xlat0;
  let x_1200 : vec3<f32> = u_xlat7;
  let x_1202 : vec4<f32> = u_xlat2;
  let x_1204 : vec3<f32> = ((vec3<f32>(x_1198.x, x_1198.x, x_1198.x) * x_1200) + vec3<f32>(x_1202.x, x_1202.y, x_1202.z));
  let x_1205 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1204.x, x_1204.y, x_1204.z, x_1205.w);
  let x_1207 : vec2<f32> = vs_TEXCOORD0;
  let x_1210 : vec4<f32> = x_25.x_Grain_TilingParams;
  let x_1214 : vec4<f32> = x_25.x_Grain_TilingParams;
  let x_1216 : vec2<f32> = ((x_1207 * vec2<f32>(x_1210.x, x_1210.y)) + vec2<f32>(x_1214.z, x_1214.w));
  let x_1217 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1216.x, x_1216.y, x_1217.z);
  let x_1224 : vec3<f32> = u_xlat1;
  let x_1227 : f32 = x_25.x_GlobalMipBias.x;
  let x_1228 : vec4<f32> = textureSampleBias(x_Grain_Texture, sampler_LinearRepeat, vec2<f32>(x_1224.x, x_1224.y), x_1227);
  u_xlat21 = x_1228.w;
  let x_1230 : f32 = u_xlat21;
  u_xlat21 = (x_1230 + -0.5f);
  let x_1232 : f32 = u_xlat21;
  let x_1233 : f32 = u_xlat21;
  u_xlat21 = (x_1232 + x_1233);
  let x_1235 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(x_1235.x, x_1235.y, x_1235.z), vec3<f32>(0.21267290413379669189f, 0.71515220403671264648f, 0.07217500358819961548f));
  let x_1244 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_1244);
  let x_1249 : f32 = x_25.x_Grain_Params.y;
  let x_1251 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1249 * -(x_1251)) + 1.0f);
  let x_1257 : f32 = u_xlat21;
  let x_1259 : vec4<f32> = u_xlat0;
  u_xlat8 = (vec3<f32>(x_1257, x_1257, x_1257) * vec3<f32>(x_1259.x, x_1259.y, x_1259.z));
  let x_1262 : vec3<f32> = u_xlat8;
  let x_1265 : vec2<f32> = x_25.x_Grain_Params;
  u_xlat8 = (x_1262 * vec3<f32>(x_1265.x, x_1265.x, x_1265.x));
  let x_1268 : vec3<f32> = u_xlat8;
  let x_1269 : vec3<f32> = u_xlat1;
  let x_1272 : vec4<f32> = u_xlat0;
  let x_1274 : vec3<f32> = ((x_1268 * vec3<f32>(x_1269.x, x_1269.x, x_1269.x)) + vec3<f32>(x_1272.x, x_1272.y, x_1272.z));
  let x_1275 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1274.x, x_1274.y, x_1274.z, x_1275.w);
  let x_1277 : vec4<f32> = u_xlat0;
  let x_1279 : vec3<f32> = sqrt(vec3<f32>(x_1277.x, x_1277.y, x_1277.z));
  let x_1280 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1279.x, x_1279.y, x_1279.z, x_1280.w);
  let x_1282 : vec2<f32> = vs_TEXCOORD0;
  let x_1285 : vec4<f32> = x_25.x_Dithering_Params;
  let x_1289 : vec4<f32> = x_25.x_Dithering_Params;
  let x_1291 : vec2<f32> = ((x_1282 * vec2<f32>(x_1285.x, x_1285.y)) + vec2<f32>(x_1289.z, x_1289.w));
  let x_1292 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1291.x, x_1291.y, x_1292.z);
  let x_1299 : vec3<f32> = u_xlat1;
  let x_1302 : f32 = x_25.x_GlobalMipBias.x;
  let x_1303 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_1299.x, x_1299.y), x_1302);
  u_xlat21 = x_1303.w;
  let x_1305 : f32 = u_xlat21;
  u_xlat21 = ((x_1305 * 2.0f) + -1.0f);
  let x_1308 : f32 = u_xlat21;
  u_xlatb1.x = (x_1308 >= 0.0f);
  let x_1312 : bool = u_xlatb1.x;
  u_xlat1.x = select(-1.0f, 1.0f, x_1312);
  let x_1315 : f32 = u_xlat21;
  u_xlat21 = (-(abs(x_1315)) + 1.0f);
  let x_1319 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_1319);
  let x_1321 : f32 = u_xlat21;
  u_xlat21 = (-(x_1321) + 1.0f);
  let x_1324 : f32 = u_xlat21;
  let x_1326 : f32 = u_xlat1.x;
  u_xlat21 = (x_1324 * x_1326);
  let x_1328 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_1328.x, x_1328.y, x_1328.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
  let x_1331 : vec4<f32> = u_xlat0;
  let x_1333 : vec3<f32> = log2(vec3<f32>(x_1331.x, x_1331.y, x_1331.z));
  let x_1334 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1333.x, x_1333.y, x_1333.z, x_1334.w);
  let x_1336 : vec4<f32> = u_xlat2;
  let x_1338 : vec3<f32> = (vec3<f32>(x_1336.x, x_1336.y, x_1336.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
  let x_1339 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1338.x, x_1338.y, x_1338.z, x_1339.w);
  let x_1341 : vec4<f32> = u_xlat2;
  let x_1343 : vec3<f32> = exp2(vec3<f32>(x_1341.x, x_1341.y, x_1341.z));
  let x_1344 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1343.x, x_1343.y, x_1343.z, x_1344.w);
  let x_1346 : vec4<f32> = u_xlat2;
  let x_1349 : vec3<f32> = ((vec3<f32>(x_1346.x, x_1346.y, x_1346.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
  let x_1350 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1349.x, x_1349.y, x_1349.z, x_1350.w);
  let x_1352 : vec4<f32> = u_xlat0;
  let x_1354 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_1352.x, x_1352.y, x_1352.z, x_1352.x));
  u_xlatb0 = vec3<bool>(x_1354.x, x_1354.y, x_1354.z);
  let x_1357 : bool = u_xlatb0.x;
  if (x_1357) {
    let x_1362 : f32 = u_xlat1.x;
    x_1358 = x_1362;
  } else {
    let x_1365 : f32 = u_xlat2.x;
    x_1358 = x_1365;
  }
  let x_1366 : f32 = x_1358;
  u_xlat0.x = x_1366;
  let x_1369 : bool = u_xlatb0.y;
  if (x_1369) {
    let x_1374 : f32 = u_xlat1.y;
    x_1370 = x_1374;
  } else {
    let x_1377 : f32 = u_xlat2.y;
    x_1370 = x_1377;
  }
  let x_1378 : f32 = x_1370;
  u_xlat0.y = x_1378;
  let x_1381 : bool = u_xlatb0.z;
  if (x_1381) {
    let x_1386 : f32 = u_xlat1.z;
    x_1382 = x_1386;
  } else {
    let x_1389 : f32 = u_xlat2.z;
    x_1382 = x_1389;
  }
  let x_1390 : f32 = x_1382;
  u_xlat0.z = x_1390;
  let x_1392 : f32 = u_xlat21;
  let x_1397 : vec4<f32> = u_xlat0;
  let x_1399 : vec3<f32> = ((vec3<f32>(x_1392, x_1392, x_1392) * vec3<f32>(0.0039215688593685627f, 0.0039215688593685627f, 0.0039215688593685627f)) + vec3<f32>(x_1397.x, x_1397.y, x_1397.z));
  let x_1400 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1399.x, x_1399.y, x_1399.z, x_1400.w);
  let x_1402 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_1402.x, x_1402.y, x_1402.z) * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
  let x_1405 : vec4<f32> = u_xlat0;
  let x_1407 : vec3<f32> = (vec3<f32>(x_1405.x, x_1405.y, x_1405.z) + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
  let x_1408 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1407.x, x_1407.y, x_1407.z, x_1408.w);
  let x_1410 : vec4<f32> = u_xlat2;
  let x_1412 : vec3<f32> = (vec3<f32>(x_1410.x, x_1410.y, x_1410.z) * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
  let x_1413 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1412.x, x_1412.y, x_1412.z, x_1413.w);
  let x_1415 : vec4<f32> = u_xlat2;
  let x_1418 : vec3<f32> = log2(abs(vec3<f32>(x_1415.x, x_1415.y, x_1415.z)));
  let x_1419 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1418.x, x_1418.y, x_1418.z, x_1419.w);
  let x_1421 : vec4<f32> = u_xlat2;
  let x_1423 : vec3<f32> = (vec3<f32>(x_1421.x, x_1421.y, x_1421.z) * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
  let x_1424 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1423.x, x_1423.y, x_1423.z, x_1424.w);
  let x_1426 : vec4<f32> = u_xlat2;
  let x_1428 : vec3<f32> = exp2(vec3<f32>(x_1426.x, x_1426.y, x_1426.z));
  let x_1429 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1428.x, x_1428.y, x_1428.z, x_1429.w);
  let x_1431 : vec4<f32> = u_xlat0;
  let x_1433 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_1431.x, x_1431.y, x_1431.z, x_1431.x));
  u_xlatb0 = vec3<bool>(x_1433.x, x_1433.y, x_1433.z);
  let x_1436 : bool = u_xlatb0.x;
  if (x_1436) {
    let x_1441 : f32 = u_xlat1.x;
    x_1437 = x_1441;
  } else {
    let x_1444 : f32 = u_xlat2.x;
    x_1437 = x_1444;
  }
  let x_1445 : f32 = x_1437;
  u_xlat0.x = x_1445;
  let x_1448 : bool = u_xlatb0.y;
  if (x_1448) {
    let x_1453 : f32 = u_xlat1.y;
    x_1449 = x_1453;
  } else {
    let x_1456 : f32 = u_xlat2.y;
    x_1449 = x_1456;
  }
  let x_1457 : f32 = x_1449;
  u_xlat0.y = x_1457;
  let x_1460 : bool = u_xlatb0.z;
  if (x_1460) {
    let x_1465 : f32 = u_xlat1.z;
    x_1461 = x_1465;
  } else {
    let x_1468 : f32 = u_xlat2.z;
    x_1461 = x_1468;
  }
  let x_1469 : f32 = x_1461;
  u_xlat0.z = x_1469;
  let x_1473 : vec4<f32> = u_xlat0;
  let x_1476 : vec3<f32> = max(vec3<f32>(x_1473.x, x_1473.y, x_1473.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1477 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1476.x, x_1476.y, x_1476.z, x_1477.w);
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


