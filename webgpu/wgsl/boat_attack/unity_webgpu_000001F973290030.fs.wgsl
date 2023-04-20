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
  x_Chroma_Params : f32,
  /* @offset(128) */
  x_Vignette_Params1 : vec4<f32>,
  /* @offset(144) */
  x_Vignette_Params2 : vec4<f32>,
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

@group(0) @binding(3) var sampler_LinearClamp : sampler;

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

var<private> u_xlatb21 : bool;

var<private> u_xlat21 : f32;

@group(0) @binding(2) var x_UserLut : texture_2d<f32>;

@group(0) @binding(1) var x_InternalLut : texture_2d<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_237 : f32;
  var x_479 : f32;
  var x_662 : f32;
  var hlslcc_movcTemp : vec3<f32>;
  var x_855 : f32;
  var x_867 : f32;
  var x_879 : f32;
  var x_1025 : f32;
  var x_1037 : f32;
  var x_1049 : f32;
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
  let x_710 : f32 = x_25.x_Vignette_Params2.z;
  u_xlatb0 = (0.0f < x_710);
  let x_712 : bool = u_xlatb0;
  if (x_712) {
    let x_715 : vec2<f32> = u_xlat15;
    let x_717 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_720 : vec2<f32> = (x_715 + -(vec2<f32>(x_717.x, x_717.y)));
    let x_721 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_720.x, x_720.y, x_721.z, x_721.w);
    let x_723 : vec4<f32> = u_xlat0;
    let x_727 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_729 : vec2<f32> = (abs(vec2<f32>(x_723.x, x_723.y)) * vec2<f32>(x_727.z, x_727.z));
    let x_730 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_730.x, x_729.x, x_729.y, x_730.w);
    let x_733 : f32 = u_xlat0.y;
    let x_736 : f32 = x_25.x_Vignette_Params1.w;
    u_xlat0.x = (x_733 * x_736);
    let x_739 : vec4<f32> = u_xlat0;
    let x_741 : vec4<f32> = u_xlat0;
    u_xlat0.x = dot(vec2<f32>(x_739.x, x_739.z), vec2<f32>(x_741.x, x_741.z));
    let x_746 : f32 = u_xlat0.x;
    u_xlat0.x = (-(x_746) + 1.0f);
    let x_751 : f32 = u_xlat0.x;
    u_xlat0.x = max(x_751, 0.0f);
    let x_755 : f32 = u_xlat0.x;
    u_xlat0.x = log2(x_755);
    let x_759 : f32 = u_xlat0.x;
    let x_761 : f32 = x_25.x_Vignette_Params2.w;
    u_xlat0.x = (x_759 * x_761);
    let x_765 : f32 = u_xlat0.x;
    u_xlat0.x = exp2(x_765);
    let x_769 : vec4<f32> = x_25.x_Vignette_Params1;
    u_xlat7 = (-(vec3<f32>(x_769.x, x_769.y, x_769.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_774 : vec4<f32> = u_xlat0;
    let x_776 : vec3<f32> = u_xlat7;
    let x_779 : vec4<f32> = x_25.x_Vignette_Params1;
    let x_781 : vec3<f32> = ((vec3<f32>(x_774.x, x_774.x, x_774.x) * x_776) + vec3<f32>(x_779.x, x_779.y, x_779.z));
    let x_782 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_781.x, x_781.y, x_781.z, x_782.w);
    let x_784 : vec4<f32> = u_xlat0;
    let x_786 : vec3<f32> = u_xlat3;
    u_xlat3 = (vec3<f32>(x_784.x, x_784.y, x_784.z) * x_786);
  }
  let x_788 : vec3<f32> = u_xlat3;
  let x_791 : vec4<f32> = x_25.x_Lut_Params;
  let x_793 : vec3<f32> = (x_788 * vec3<f32>(x_791.w, x_791.w, x_791.w));
  let x_794 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_793.x, x_793.y, x_793.z, x_794.w);
  let x_796 : vec4<f32> = u_xlat0;
  let x_800 : vec3<f32> = clamp(vec3<f32>(x_796.x, x_796.y, x_796.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_801 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_800.x, x_800.y, x_800.z, x_801.w);
  let x_806 : f32 = x_25.x_UserLut_Params.w;
  u_xlatb21 = (0.0f < x_806);
  let x_808 : bool = u_xlatb21;
  if (x_808) {
    let x_811 : vec4<f32> = u_xlat0;
    u_xlat1 = (vec3<f32>(x_811.x, x_811.y, x_811.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
    let x_816 : vec4<f32> = u_xlat0;
    let x_818 : vec3<f32> = log2(vec3<f32>(x_816.x, x_816.y, x_816.z));
    let x_819 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_818.x, x_818.y, x_818.z, x_819.w);
    let x_821 : vec4<f32> = u_xlat2;
    let x_825 : vec3<f32> = (vec3<f32>(x_821.x, x_821.y, x_821.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
    let x_826 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_825.x, x_825.y, x_825.z, x_826.w);
    let x_828 : vec4<f32> = u_xlat2;
    let x_830 : vec3<f32> = exp2(vec3<f32>(x_828.x, x_828.y, x_828.z));
    let x_831 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_830.x, x_830.y, x_830.z, x_831.w);
    let x_833 : vec4<f32> = u_xlat2;
    let x_840 : vec3<f32> = ((vec3<f32>(x_833.x, x_833.y, x_833.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
    let x_841 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_840.x, x_840.y, x_840.z, x_841.w);
    let x_845 : vec4<f32> = u_xlat0;
    let x_848 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_845.x, x_845.y, x_845.z, x_845.x));
    u_xlatb3 = vec3<bool>(x_848.x, x_848.y, x_848.z);
    let x_852 : vec3<f32> = u_xlat1;
    hlslcc_movcTemp = x_852;
    let x_854 : bool = u_xlatb3.x;
    if (x_854) {
      let x_859 : f32 = u_xlat1.x;
      x_855 = x_859;
    } else {
      let x_862 : f32 = u_xlat2.x;
      x_855 = x_862;
    }
    let x_863 : f32 = x_855;
    hlslcc_movcTemp.x = x_863;
    let x_866 : bool = u_xlatb3.y;
    if (x_866) {
      let x_871 : f32 = u_xlat1.y;
      x_867 = x_871;
    } else {
      let x_874 : f32 = u_xlat2.y;
      x_867 = x_874;
    }
    let x_875 : f32 = x_867;
    hlslcc_movcTemp.y = x_875;
    let x_878 : bool = u_xlatb3.z;
    if (x_878) {
      let x_883 : f32 = u_xlat1.z;
      x_879 = x_883;
    } else {
      let x_886 : f32 = u_xlat2.z;
      x_879 = x_886;
    }
    let x_887 : f32 = x_879;
    hlslcc_movcTemp.z = x_887;
    let x_889 : vec3<f32> = hlslcc_movcTemp;
    u_xlat1 = x_889;
    let x_890 : vec3<f32> = u_xlat1;
    let x_893 : vec4<f32> = x_25.x_UserLut_Params;
    let x_895 : vec3<f32> = (vec3<f32>(x_890.z, x_890.x, x_890.y) * vec3<f32>(x_893.z, x_893.z, x_893.z));
    let x_896 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_895.x, x_895.y, x_895.z, x_896.w);
    let x_900 : f32 = u_xlat2.x;
    u_xlat21 = floor(x_900);
    let x_903 : vec4<f32> = x_25.x_UserLut_Params;
    let x_905 : vec2<f32> = (vec2<f32>(x_903.x, x_903.y) * vec2<f32>(0.5f, 0.5f));
    let x_906 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_905.x, x_906.y, x_906.z, x_905.y);
    let x_908 : vec4<f32> = u_xlat2;
    let x_911 : vec4<f32> = x_25.x_UserLut_Params;
    let x_914 : vec4<f32> = u_xlat2;
    let x_916 : vec2<f32> = ((vec2<f32>(x_908.y, x_908.z) * vec2<f32>(x_911.x, x_911.y)) + vec2<f32>(x_914.x, x_914.w));
    let x_917 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_917.x, x_916.x, x_916.y, x_917.w);
    let x_919 : f32 = u_xlat21;
    let x_921 : f32 = x_25.x_UserLut_Params.y;
    let x_924 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_919 * x_921) + x_924);
    let x_931 : vec4<f32> = u_xlat2;
    let x_933 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_931.x, x_931.z), 0.0f);
    u_xlat3 = vec3<f32>(x_933.x, x_933.y, x_933.z);
    let x_936 : f32 = x_25.x_UserLut_Params.y;
    u_xlat4.x = x_936;
    u_xlat4.y = 0.0f;
    let x_939 : vec4<f32> = u_xlat2;
    let x_941 : vec4<f32> = u_xlat4;
    let x_943 : vec2<f32> = (vec2<f32>(x_939.x, x_939.z) + vec2<f32>(x_941.x, x_941.y));
    let x_944 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_943.x, x_943.y, x_944.z, x_944.w);
    let x_949 : vec4<f32> = u_xlat2;
    let x_951 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_949.x, x_949.y), 0.0f);
    let x_952 : vec3<f32> = vec3<f32>(x_951.x, x_951.y, x_951.z);
    let x_953 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_952.x, x_952.y, x_952.z, x_953.w);
    let x_956 : f32 = u_xlat1.z;
    let x_958 : f32 = x_25.x_UserLut_Params.z;
    let x_960 : f32 = u_xlat21;
    u_xlat21 = ((x_956 * x_958) + -(x_960));
    let x_963 : vec3<f32> = u_xlat3;
    let x_965 : vec4<f32> = u_xlat2;
    let x_967 : vec3<f32> = (-(x_963) + vec3<f32>(x_965.x, x_965.y, x_965.z));
    let x_968 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_967.x, x_967.y, x_967.z, x_968.w);
    let x_970 : f32 = u_xlat21;
    let x_972 : vec4<f32> = u_xlat2;
    let x_975 : vec3<f32> = u_xlat3;
    let x_976 : vec3<f32> = ((vec3<f32>(x_970, x_970, x_970) * vec3<f32>(x_972.x, x_972.y, x_972.z)) + x_975);
    let x_977 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_976.x, x_976.y, x_976.z, x_977.w);
    let x_979 : vec3<f32> = u_xlat1;
    let x_981 : vec4<f32> = u_xlat2;
    let x_983 : vec3<f32> = (-(x_979) + vec3<f32>(x_981.x, x_981.y, x_981.z));
    let x_984 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_983.x, x_983.y, x_983.z, x_984.w);
    let x_987 : vec4<f32> = x_25.x_UserLut_Params;
    let x_989 : vec4<f32> = u_xlat2;
    let x_992 : vec3<f32> = u_xlat1;
    u_xlat1 = ((vec3<f32>(x_987.w, x_987.w, x_987.w) * vec3<f32>(x_989.x, x_989.y, x_989.z)) + x_992);
    let x_994 : vec3<f32> = u_xlat1;
    let x_997 : vec3<f32> = (x_994 * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
    let x_998 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_997.x, x_997.y, x_997.z, x_998.w);
    let x_1000 : vec3<f32> = u_xlat1;
    u_xlat3 = (x_1000 + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
    let x_1004 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_1004 * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
    let x_1008 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_1008));
    let x_1011 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_1011 * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
    let x_1015 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_1015);
    let x_1019 : vec3<f32> = u_xlat1;
    let x_1021 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_1019.x, x_1019.y, x_1019.z, x_1019.x));
    u_xlatb1 = vec3<bool>(x_1021.x, x_1021.y, x_1021.z);
    let x_1024 : bool = u_xlatb1.x;
    if (x_1024) {
      let x_1029 : f32 = u_xlat2.x;
      x_1025 = x_1029;
    } else {
      let x_1032 : f32 = u_xlat3.x;
      x_1025 = x_1032;
    }
    let x_1033 : f32 = x_1025;
    u_xlat0.x = x_1033;
    let x_1036 : bool = u_xlatb1.y;
    if (x_1036) {
      let x_1041 : f32 = u_xlat2.y;
      x_1037 = x_1041;
    } else {
      let x_1044 : f32 = u_xlat3.y;
      x_1037 = x_1044;
    }
    let x_1045 : f32 = x_1037;
    u_xlat0.y = x_1045;
    let x_1048 : bool = u_xlatb1.z;
    if (x_1048) {
      let x_1053 : f32 = u_xlat2.z;
      x_1049 = x_1053;
    } else {
      let x_1056 : f32 = u_xlat3.z;
      x_1049 = x_1056;
    }
    let x_1057 : f32 = x_1049;
    u_xlat0.z = x_1057;
  }
  let x_1059 : vec4<f32> = u_xlat0;
  let x_1062 : vec4<f32> = x_25.x_Lut_Params;
  let x_1064 : vec3<f32> = (vec3<f32>(x_1059.x, x_1059.y, x_1059.z) * vec3<f32>(x_1062.z, x_1062.z, x_1062.z));
  let x_1065 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1064.x, x_1064.y, x_1065.z, x_1064.z);
  let x_1068 : f32 = u_xlat0.w;
  u_xlat21 = floor(x_1068);
  let x_1071 : vec4<f32> = x_25.x_Lut_Params;
  let x_1073 : vec2<f32> = (vec2<f32>(x_1071.x, x_1071.y) * vec2<f32>(0.5f, 0.5f));
  let x_1074 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1073.x, x_1073.y, x_1074.z);
  let x_1076 : vec4<f32> = u_xlat0;
  let x_1079 : vec4<f32> = x_25.x_Lut_Params;
  let x_1082 : vec3<f32> = u_xlat1;
  let x_1084 : vec2<f32> = ((vec2<f32>(x_1076.x, x_1076.y) * vec2<f32>(x_1079.x, x_1079.y)) + vec2<f32>(x_1082.x, x_1082.y));
  let x_1085 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1085.x, x_1084.x, x_1084.y);
  let x_1087 : f32 = u_xlat21;
  let x_1089 : f32 = x_25.x_Lut_Params.y;
  let x_1092 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_1087 * x_1089) + x_1092);
  let x_1099 : vec3<f32> = u_xlat1;
  let x_1101 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1099.x, x_1099.z), 0.0f);
  let x_1102 : vec3<f32> = vec3<f32>(x_1101.x, x_1101.y, x_1101.z);
  let x_1103 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1102.x, x_1102.y, x_1102.z, x_1103.w);
  let x_1106 : f32 = x_25.x_Lut_Params.y;
  u_xlat0.x = x_1106;
  u_xlat0.y = 0.0f;
  let x_1109 : vec4<f32> = u_xlat0;
  let x_1111 : vec3<f32> = u_xlat1;
  let x_1113 : vec2<f32> = (vec2<f32>(x_1109.x, x_1109.y) + vec2<f32>(x_1111.x, x_1111.z));
  let x_1114 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1113.x, x_1113.y, x_1114.z, x_1114.w);
  let x_1119 : vec4<f32> = u_xlat0;
  let x_1121 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1119.x, x_1119.y), 0.0f);
  u_xlat1 = vec3<f32>(x_1121.x, x_1121.y, x_1121.z);
  let x_1124 : f32 = u_xlat0.z;
  let x_1126 : f32 = x_25.x_Lut_Params.z;
  let x_1128 : f32 = u_xlat21;
  u_xlat0.x = ((x_1124 * x_1126) + -(x_1128));
  let x_1132 : vec4<f32> = u_xlat2;
  let x_1135 : vec3<f32> = u_xlat1;
  u_xlat7 = (-(vec3<f32>(x_1132.x, x_1132.y, x_1132.z)) + x_1135);
  let x_1139 : vec4<f32> = u_xlat0;
  let x_1141 : vec3<f32> = u_xlat7;
  let x_1143 : vec4<f32> = u_xlat2;
  let x_1145 : vec3<f32> = ((vec3<f32>(x_1139.x, x_1139.x, x_1139.x) * x_1141) + vec3<f32>(x_1143.x, x_1143.y, x_1143.z));
  let x_1146 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1145.x, x_1145.y, x_1145.z, x_1146.w);
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


