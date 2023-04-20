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

@group(0) @binding(5) var sampler_LinearClamp : sampler;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : f32;

var<private> u_xlat6 : f32;

var<private> u_xlat24 : f32;

var<private> u_xlat12 : f32;

var<private> u_xlat19 : f32;

var<private> u_xlatb26 : bool;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlatb4 : bool;

var<private> u_xlatb0 : bool;

@group(0) @binding(1) var x_Bloom_Texture : texture_2d<f32>;

var<private> u_xlatb21 : bool;

var<private> u_xlat21 : f32;

@group(0) @binding(4) var x_UserLut : texture_2d<f32>;

@group(0) @binding(3) var x_InternalLut : texture_2d<f32>;

@group(0) @binding(2) var x_Grain_Texture : texture_2d<f32>;

@group(0) @binding(6) var sampler_LinearRepeat : sampler;

var<private> u_xlat8 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_237 : f32;
  var x_479 : f32;
  var x_662 : f32;
  var hlslcc_movcTemp : vec3<f32>;
  var x_915 : f32;
  var x_927 : f32;
  var x_939 : f32;
  var x_1084 : f32;
  var x_1096 : f32;
  var x_1108 : f32;
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
    u_xlatb0 = (x_656 < -(x_658));
    let x_661 : bool = u_xlatb0;
    if (x_661) {
      let x_666 : f32 = u_xlat16.x;
      x_662 = -(x_666);
    } else {
      let x_670 : f32 = u_xlat16.x;
      x_662 = x_670;
    }
    let x_671 : f32 = x_662;
    u_xlat0.x = x_671;
    let x_674 : f32 = u_xlat7.x;
    let x_676 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_674 * x_676) + -1.0f);
    let x_680 : vec4<f32> = u_xlat0;
    let x_682 : vec4<f32> = u_xlat0;
    let x_685 : vec4<f32> = u_xlat4;
    let x_687 : vec2<f32> = ((vec2<f32>(x_680.z, x_680.w) * vec2<f32>(x_682.x, x_682.x)) + vec2<f32>(x_685.z, x_685.w));
    let x_688 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_687.x, x_687.y, x_688.z);
  }
  let x_690 : vec4<f32> = u_xlat2;
  let x_692 : vec3<f32> = u_xlat1;
  let x_694 : vec2<f32> = min(vec2<f32>(x_690.x, x_690.y), vec2<f32>(x_692.x, x_692.y));
  let x_695 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_694.x, x_694.y, x_695.z, x_695.w);
  let x_700 : vec4<f32> = u_xlat0;
  let x_703 : f32 = x_25.x_GlobalMipBias.x;
  let x_704 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_700.x, x_700.y), x_703);
  u_xlat3.z = x_704.z;
  let x_710 : vec4<f32> = x_25.x_BloomTexture_TexelSize;
  let x_715 : vec4<f32> = x_25.x_RTHandleScale;
  let x_717 : vec2<f32> = ((-(vec2<f32>(x_710.x, x_710.y)) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_715.x, x_715.y));
  let x_718 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_717.x, x_717.y, x_718.z, x_718.w);
  let x_720 : vec4<f32> = u_xlat0;
  let x_722 : vec2<f32> = u_xlat15;
  let x_723 : vec2<f32> = min(vec2<f32>(x_720.x, x_720.y), x_722);
  let x_724 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_723.x, x_723.y, x_724.z, x_724.w);
  let x_730 : vec4<f32> = u_xlat0;
  let x_733 : f32 = x_25.x_GlobalMipBias.x;
  let x_734 : vec4<f32> = textureSampleBias(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_730.x, x_730.y), x_733);
  u_xlat0 = x_734;
  let x_737 : f32 = x_25.x_Bloom_RGBM;
  u_xlatb1.x = (0.0f < x_737);
  let x_741 : bool = u_xlatb1.x;
  if (x_741) {
    let x_744 : vec4<f32> = u_xlat0;
    let x_746 : vec4<f32> = u_xlat0;
    let x_748 : vec3<f32> = (vec3<f32>(x_744.w, x_744.w, x_744.w) * vec3<f32>(x_746.x, x_746.y, x_746.z));
    let x_749 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_748.x, x_748.y, x_748.z, x_749.w);
    let x_751 : vec4<f32> = u_xlat2;
    let x_755 : vec3<f32> = (vec3<f32>(x_751.x, x_751.y, x_751.z) * vec3<f32>(8.0f, 8.0f, 8.0f));
    let x_756 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_755.x, x_755.y, x_755.z, x_756.w);
  }
  let x_758 : vec4<f32> = u_xlat0;
  let x_762 : vec4<f32> = x_25.x_Bloom_Params;
  let x_764 : vec3<f32> = (vec3<f32>(x_758.x, x_758.y, x_758.z) * vec3<f32>(x_762.x, x_762.x, x_762.x));
  let x_765 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_764.x, x_764.y, x_764.z, x_765.w);
  let x_767 : vec4<f32> = u_xlat0;
  let x_770 : vec4<f32> = x_25.x_Bloom_Params;
  let x_773 : vec3<f32> = u_xlat3;
  let x_774 : vec3<f32> = ((vec3<f32>(x_767.x, x_767.y, x_767.z) * vec3<f32>(x_770.y, x_770.z, x_770.w)) + x_773);
  let x_775 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_774.x, x_774.y, x_774.z, x_775.w);
  let x_780 : f32 = x_25.x_Vignette_Params2.z;
  u_xlatb21 = (0.0f < x_780);
  let x_782 : bool = u_xlatb21;
  if (x_782) {
    let x_785 : vec2<f32> = u_xlat15;
    let x_787 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_790 : vec2<f32> = (x_785 + -(vec2<f32>(x_787.x, x_787.y)));
    let x_791 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_790.x, x_790.y, x_791.z);
    let x_793 : vec3<f32> = u_xlat1;
    let x_797 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_799 : vec2<f32> = (abs(vec2<f32>(x_793.x, x_793.y)) * vec2<f32>(x_797.z, x_797.z));
    let x_800 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_800.x, x_799.x, x_799.y);
    let x_803 : f32 = u_xlat1.y;
    let x_806 : f32 = x_25.x_Vignette_Params1.w;
    u_xlat1.x = (x_803 * x_806);
    let x_810 : vec3<f32> = u_xlat1;
    let x_812 : vec3<f32> = u_xlat1;
    u_xlat21 = dot(vec2<f32>(x_810.x, x_810.z), vec2<f32>(x_812.x, x_812.z));
    let x_815 : f32 = u_xlat21;
    u_xlat21 = (-(x_815) + 1.0f);
    let x_818 : f32 = u_xlat21;
    u_xlat21 = max(x_818, 0.0f);
    let x_820 : f32 = u_xlat21;
    u_xlat21 = log2(x_820);
    let x_822 : f32 = u_xlat21;
    let x_824 : f32 = x_25.x_Vignette_Params2.w;
    u_xlat21 = (x_822 * x_824);
    let x_826 : f32 = u_xlat21;
    u_xlat21 = exp2(x_826);
    let x_829 : vec4<f32> = x_25.x_Vignette_Params1;
    u_xlat1 = (-(vec3<f32>(x_829.x, x_829.y, x_829.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_834 : f32 = u_xlat21;
    let x_836 : vec3<f32> = u_xlat1;
    let x_839 : vec4<f32> = x_25.x_Vignette_Params1;
    u_xlat1 = ((vec3<f32>(x_834, x_834, x_834) * x_836) + vec3<f32>(x_839.x, x_839.y, x_839.z));
    let x_842 : vec4<f32> = u_xlat0;
    let x_844 : vec3<f32> = u_xlat1;
    let x_845 : vec3<f32> = (vec3<f32>(x_842.x, x_842.y, x_842.z) * x_844);
    let x_846 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_845.x, x_845.y, x_845.z, x_846.w);
  }
  let x_848 : vec4<f32> = u_xlat0;
  let x_852 : vec4<f32> = x_25.x_Lut_Params;
  let x_854 : vec3<f32> = (vec3<f32>(x_848.x, x_848.y, x_848.z) * vec3<f32>(x_852.w, x_852.w, x_852.w));
  let x_855 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_854.x, x_854.y, x_854.z, x_855.w);
  let x_857 : vec4<f32> = u_xlat0;
  let x_861 : vec3<f32> = clamp(vec3<f32>(x_857.x, x_857.y, x_857.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_862 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_861.x, x_861.y, x_861.z, x_862.w);
  let x_866 : f32 = x_25.x_UserLut_Params.w;
  u_xlatb21 = (0.0f < x_866);
  let x_868 : bool = u_xlatb21;
  if (x_868) {
    let x_871 : vec4<f32> = u_xlat0;
    u_xlat1 = (vec3<f32>(x_871.x, x_871.y, x_871.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
    let x_876 : vec4<f32> = u_xlat0;
    let x_878 : vec3<f32> = log2(vec3<f32>(x_876.x, x_876.y, x_876.z));
    let x_879 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_878.x, x_878.y, x_878.z, x_879.w);
    let x_881 : vec4<f32> = u_xlat2;
    let x_885 : vec3<f32> = (vec3<f32>(x_881.x, x_881.y, x_881.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
    let x_886 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_885.x, x_885.y, x_885.z, x_886.w);
    let x_888 : vec4<f32> = u_xlat2;
    let x_890 : vec3<f32> = exp2(vec3<f32>(x_888.x, x_888.y, x_888.z));
    let x_891 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_890.x, x_890.y, x_890.z, x_891.w);
    let x_893 : vec4<f32> = u_xlat2;
    let x_900 : vec3<f32> = ((vec3<f32>(x_893.x, x_893.y, x_893.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
    let x_901 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_900.x, x_900.y, x_900.z, x_901.w);
    let x_905 : vec4<f32> = u_xlat0;
    let x_908 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_905.x, x_905.y, x_905.z, x_905.x));
    u_xlatb3 = vec3<bool>(x_908.x, x_908.y, x_908.z);
    let x_912 : vec3<f32> = u_xlat1;
    hlslcc_movcTemp = x_912;
    let x_914 : bool = u_xlatb3.x;
    if (x_914) {
      let x_919 : f32 = u_xlat1.x;
      x_915 = x_919;
    } else {
      let x_922 : f32 = u_xlat2.x;
      x_915 = x_922;
    }
    let x_923 : f32 = x_915;
    hlslcc_movcTemp.x = x_923;
    let x_926 : bool = u_xlatb3.y;
    if (x_926) {
      let x_931 : f32 = u_xlat1.y;
      x_927 = x_931;
    } else {
      let x_934 : f32 = u_xlat2.y;
      x_927 = x_934;
    }
    let x_935 : f32 = x_927;
    hlslcc_movcTemp.y = x_935;
    let x_938 : bool = u_xlatb3.z;
    if (x_938) {
      let x_943 : f32 = u_xlat1.z;
      x_939 = x_943;
    } else {
      let x_946 : f32 = u_xlat2.z;
      x_939 = x_946;
    }
    let x_947 : f32 = x_939;
    hlslcc_movcTemp.z = x_947;
    let x_949 : vec3<f32> = hlslcc_movcTemp;
    u_xlat1 = x_949;
    let x_950 : vec3<f32> = u_xlat1;
    let x_953 : vec4<f32> = x_25.x_UserLut_Params;
    let x_955 : vec3<f32> = (vec3<f32>(x_950.z, x_950.x, x_950.y) * vec3<f32>(x_953.z, x_953.z, x_953.z));
    let x_956 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_955.x, x_955.y, x_955.z, x_956.w);
    let x_959 : f32 = u_xlat2.x;
    u_xlat21 = floor(x_959);
    let x_962 : vec4<f32> = x_25.x_UserLut_Params;
    let x_964 : vec2<f32> = (vec2<f32>(x_962.x, x_962.y) * vec2<f32>(0.5f, 0.5f));
    let x_965 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_964.x, x_965.y, x_965.z, x_964.y);
    let x_967 : vec4<f32> = u_xlat2;
    let x_970 : vec4<f32> = x_25.x_UserLut_Params;
    let x_973 : vec4<f32> = u_xlat2;
    let x_975 : vec2<f32> = ((vec2<f32>(x_967.y, x_967.z) * vec2<f32>(x_970.x, x_970.y)) + vec2<f32>(x_973.x, x_973.w));
    let x_976 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_976.x, x_975.x, x_975.y, x_976.w);
    let x_978 : f32 = u_xlat21;
    let x_980 : f32 = x_25.x_UserLut_Params.y;
    let x_983 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_978 * x_980) + x_983);
    let x_990 : vec4<f32> = u_xlat2;
    let x_992 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_990.x, x_990.z), 0.0f);
    u_xlat3 = vec3<f32>(x_992.x, x_992.y, x_992.z);
    let x_995 : f32 = x_25.x_UserLut_Params.y;
    u_xlat4.x = x_995;
    u_xlat4.y = 0.0f;
    let x_998 : vec4<f32> = u_xlat2;
    let x_1000 : vec4<f32> = u_xlat4;
    let x_1002 : vec2<f32> = (vec2<f32>(x_998.x, x_998.z) + vec2<f32>(x_1000.x, x_1000.y));
    let x_1003 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1002.x, x_1002.y, x_1003.z, x_1003.w);
    let x_1008 : vec4<f32> = u_xlat2;
    let x_1010 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1008.x, x_1008.y), 0.0f);
    let x_1011 : vec3<f32> = vec3<f32>(x_1010.x, x_1010.y, x_1010.z);
    let x_1012 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1011.x, x_1011.y, x_1011.z, x_1012.w);
    let x_1015 : f32 = u_xlat1.z;
    let x_1017 : f32 = x_25.x_UserLut_Params.z;
    let x_1019 : f32 = u_xlat21;
    u_xlat21 = ((x_1015 * x_1017) + -(x_1019));
    let x_1022 : vec3<f32> = u_xlat3;
    let x_1024 : vec4<f32> = u_xlat2;
    let x_1026 : vec3<f32> = (-(x_1022) + vec3<f32>(x_1024.x, x_1024.y, x_1024.z));
    let x_1027 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1026.x, x_1026.y, x_1026.z, x_1027.w);
    let x_1029 : f32 = u_xlat21;
    let x_1031 : vec4<f32> = u_xlat2;
    let x_1034 : vec3<f32> = u_xlat3;
    let x_1035 : vec3<f32> = ((vec3<f32>(x_1029, x_1029, x_1029) * vec3<f32>(x_1031.x, x_1031.y, x_1031.z)) + x_1034);
    let x_1036 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1035.x, x_1035.y, x_1035.z, x_1036.w);
    let x_1038 : vec3<f32> = u_xlat1;
    let x_1040 : vec4<f32> = u_xlat2;
    let x_1042 : vec3<f32> = (-(x_1038) + vec3<f32>(x_1040.x, x_1040.y, x_1040.z));
    let x_1043 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1042.x, x_1042.y, x_1042.z, x_1043.w);
    let x_1046 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1048 : vec4<f32> = u_xlat2;
    let x_1051 : vec3<f32> = u_xlat1;
    u_xlat1 = ((vec3<f32>(x_1046.w, x_1046.w, x_1046.w) * vec3<f32>(x_1048.x, x_1048.y, x_1048.z)) + x_1051);
    let x_1053 : vec3<f32> = u_xlat1;
    let x_1056 : vec3<f32> = (x_1053 * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
    let x_1057 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1056.x, x_1056.y, x_1056.z, x_1057.w);
    let x_1059 : vec3<f32> = u_xlat1;
    u_xlat3 = (x_1059 + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
    let x_1063 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_1063 * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
    let x_1067 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_1067));
    let x_1070 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_1070 * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
    let x_1074 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_1074);
    let x_1078 : vec3<f32> = u_xlat1;
    let x_1080 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_1078.x, x_1078.y, x_1078.z, x_1078.x));
    u_xlatb1 = vec3<bool>(x_1080.x, x_1080.y, x_1080.z);
    let x_1083 : bool = u_xlatb1.x;
    if (x_1083) {
      let x_1088 : f32 = u_xlat2.x;
      x_1084 = x_1088;
    } else {
      let x_1091 : f32 = u_xlat3.x;
      x_1084 = x_1091;
    }
    let x_1092 : f32 = x_1084;
    u_xlat0.x = x_1092;
    let x_1095 : bool = u_xlatb1.y;
    if (x_1095) {
      let x_1100 : f32 = u_xlat2.y;
      x_1096 = x_1100;
    } else {
      let x_1103 : f32 = u_xlat3.y;
      x_1096 = x_1103;
    }
    let x_1104 : f32 = x_1096;
    u_xlat0.y = x_1104;
    let x_1107 : bool = u_xlatb1.z;
    if (x_1107) {
      let x_1112 : f32 = u_xlat2.z;
      x_1108 = x_1112;
    } else {
      let x_1115 : f32 = u_xlat3.z;
      x_1108 = x_1115;
    }
    let x_1116 : f32 = x_1108;
    u_xlat0.z = x_1116;
  }
  let x_1118 : vec4<f32> = u_xlat0;
  let x_1121 : vec4<f32> = x_25.x_Lut_Params;
  let x_1123 : vec3<f32> = (vec3<f32>(x_1118.x, x_1118.y, x_1118.z) * vec3<f32>(x_1121.z, x_1121.z, x_1121.z));
  let x_1124 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1123.x, x_1123.y, x_1124.z, x_1123.z);
  let x_1127 : f32 = u_xlat0.w;
  u_xlat21 = floor(x_1127);
  let x_1130 : vec4<f32> = x_25.x_Lut_Params;
  let x_1132 : vec2<f32> = (vec2<f32>(x_1130.x, x_1130.y) * vec2<f32>(0.5f, 0.5f));
  let x_1133 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1132.x, x_1132.y, x_1133.z);
  let x_1135 : vec4<f32> = u_xlat0;
  let x_1138 : vec4<f32> = x_25.x_Lut_Params;
  let x_1141 : vec3<f32> = u_xlat1;
  let x_1143 : vec2<f32> = ((vec2<f32>(x_1135.x, x_1135.y) * vec2<f32>(x_1138.x, x_1138.y)) + vec2<f32>(x_1141.x, x_1141.y));
  let x_1144 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1144.x, x_1143.x, x_1143.y);
  let x_1146 : f32 = u_xlat21;
  let x_1148 : f32 = x_25.x_Lut_Params.y;
  let x_1151 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_1146 * x_1148) + x_1151);
  let x_1158 : vec3<f32> = u_xlat1;
  let x_1160 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1158.x, x_1158.z), 0.0f);
  let x_1161 : vec3<f32> = vec3<f32>(x_1160.x, x_1160.y, x_1160.z);
  let x_1162 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1161.x, x_1161.y, x_1161.z, x_1162.w);
  let x_1165 : f32 = x_25.x_Lut_Params.y;
  u_xlat0.x = x_1165;
  u_xlat0.y = 0.0f;
  let x_1168 : vec4<f32> = u_xlat0;
  let x_1170 : vec3<f32> = u_xlat1;
  let x_1172 : vec2<f32> = (vec2<f32>(x_1168.x, x_1168.y) + vec2<f32>(x_1170.x, x_1170.z));
  let x_1173 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1172.x, x_1172.y, x_1173.z, x_1173.w);
  let x_1178 : vec4<f32> = u_xlat0;
  let x_1180 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1178.x, x_1178.y), 0.0f);
  u_xlat1 = vec3<f32>(x_1180.x, x_1180.y, x_1180.z);
  let x_1183 : f32 = u_xlat0.z;
  let x_1185 : f32 = x_25.x_Lut_Params.z;
  let x_1187 : f32 = u_xlat21;
  u_xlat0.x = ((x_1183 * x_1185) + -(x_1187));
  let x_1191 : vec4<f32> = u_xlat2;
  let x_1194 : vec3<f32> = u_xlat1;
  u_xlat7 = (-(vec3<f32>(x_1191.x, x_1191.y, x_1191.z)) + x_1194);
  let x_1196 : vec4<f32> = u_xlat0;
  let x_1198 : vec3<f32> = u_xlat7;
  let x_1200 : vec4<f32> = u_xlat2;
  let x_1202 : vec3<f32> = ((vec3<f32>(x_1196.x, x_1196.x, x_1196.x) * x_1198) + vec3<f32>(x_1200.x, x_1200.y, x_1200.z));
  let x_1203 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1202.x, x_1202.y, x_1202.z, x_1203.w);
  let x_1205 : vec2<f32> = vs_TEXCOORD0;
  let x_1208 : vec4<f32> = x_25.x_Grain_TilingParams;
  let x_1212 : vec4<f32> = x_25.x_Grain_TilingParams;
  let x_1214 : vec2<f32> = ((x_1205 * vec2<f32>(x_1208.x, x_1208.y)) + vec2<f32>(x_1212.z, x_1212.w));
  let x_1215 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1214.x, x_1214.y, x_1215.z);
  let x_1222 : vec3<f32> = u_xlat1;
  let x_1225 : f32 = x_25.x_GlobalMipBias.x;
  let x_1226 : vec4<f32> = textureSampleBias(x_Grain_Texture, sampler_LinearRepeat, vec2<f32>(x_1222.x, x_1222.y), x_1225);
  u_xlat21 = x_1226.w;
  let x_1228 : f32 = u_xlat21;
  u_xlat21 = (x_1228 + -0.5f);
  let x_1230 : f32 = u_xlat21;
  let x_1231 : f32 = u_xlat21;
  u_xlat21 = (x_1230 + x_1231);
  let x_1233 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(x_1233.x, x_1233.y, x_1233.z), vec3<f32>(0.21267290413379669189f, 0.71515220403671264648f, 0.07217500358819961548f));
  let x_1242 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_1242);
  let x_1247 : f32 = x_25.x_Grain_Params.y;
  let x_1249 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1247 * -(x_1249)) + 1.0f);
  let x_1255 : f32 = u_xlat21;
  let x_1257 : vec4<f32> = u_xlat0;
  u_xlat8 = (vec3<f32>(x_1255, x_1255, x_1255) * vec3<f32>(x_1257.x, x_1257.y, x_1257.z));
  let x_1260 : vec3<f32> = u_xlat8;
  let x_1263 : vec2<f32> = x_25.x_Grain_Params;
  u_xlat8 = (x_1260 * vec3<f32>(x_1263.x, x_1263.x, x_1263.x));
  let x_1268 : vec3<f32> = u_xlat8;
  let x_1269 : vec3<f32> = u_xlat1;
  let x_1272 : vec4<f32> = u_xlat0;
  let x_1274 : vec3<f32> = ((x_1268 * vec3<f32>(x_1269.x, x_1269.x, x_1269.x)) + vec3<f32>(x_1272.x, x_1272.y, x_1272.z));
  let x_1275 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1274.x, x_1274.y, x_1274.z, x_1275.w);
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


