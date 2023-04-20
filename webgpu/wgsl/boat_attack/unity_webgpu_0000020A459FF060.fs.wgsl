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
  var x_915 : f32;
  var x_927 : f32;
  var x_939 : f32;
  var x_1085 : f32;
  var x_1097 : f32;
  var x_1109 : f32;
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
  u_xlat1 = (vec3<f32>(x_796.x, x_796.y, x_796.z) * vec3<f32>(1.31338608264923095703f, 1.31338608264923095703f, 1.31338608264923095703f));
  let x_801 : vec4<f32> = u_xlat0;
  let x_808 : vec3<f32> = ((vec3<f32>(x_801.x, x_801.y, x_801.z) * vec3<f32>(0.26267722249031066895f, 0.26267722249031066895f, 0.26267722249031066895f)) + vec3<f32>(0.06959999352693557739f, 0.06959999352693557739f, 0.06959999352693557739f));
  let x_809 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_808.x, x_808.y, x_808.z, x_809.w);
  let x_811 : vec3<f32> = u_xlat1;
  let x_812 : vec4<f32> = u_xlat2;
  let x_817 : vec3<f32> = ((x_811 * vec3<f32>(x_812.x, x_812.y, x_812.z)) + vec3<f32>(0.00543999997898936272f, 0.00543999997898936272f, 0.00543999997898936272f));
  let x_818 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_817.x, x_817.y, x_817.z, x_818.w);
  let x_820 : vec4<f32> = u_xlat0;
  let x_825 : vec3<f32> = ((vec3<f32>(x_820.x, x_820.y, x_820.z) * vec3<f32>(0.26267722249031066895f, 0.26267722249031066895f, 0.26267722249031066895f)) + vec3<f32>(0.28999999165534973145f, 0.28999999165534973145f, 0.28999999165534973145f));
  let x_826 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_825.x, x_825.y, x_825.z, x_826.w);
  let x_828 : vec3<f32> = u_xlat1;
  let x_829 : vec4<f32> = u_xlat0;
  let x_834 : vec3<f32> = ((x_828 * vec3<f32>(x_829.x, x_829.y, x_829.z)) + vec3<f32>(0.08160001039505004883f, 0.08160001039505004883f, 0.08160001039505004883f));
  let x_835 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_834.x, x_834.y, x_834.z, x_835.w);
  let x_837 : vec4<f32> = u_xlat2;
  let x_839 : vec4<f32> = u_xlat0;
  let x_841 : vec3<f32> = (vec3<f32>(x_837.x, x_837.y, x_837.z) / vec3<f32>(x_839.x, x_839.y, x_839.z));
  let x_842 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_841.x, x_841.y, x_841.z, x_842.w);
  let x_844 : vec4<f32> = u_xlat0;
  let x_848 : vec3<f32> = (vec3<f32>(x_844.x, x_844.y, x_844.z) + vec3<f32>(-0.06666666269302368164f, -0.06666666269302368164f, -0.06666666269302368164f));
  let x_849 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_848.x, x_848.y, x_848.z, x_849.w);
  let x_851 : vec4<f32> = u_xlat0;
  let x_853 : vec3<f32> = (vec3<f32>(x_851.x, x_851.y, x_851.z) * vec3<f32>(1.31338608264923095703f, 1.31338608264923095703f, 1.31338608264923095703f));
  let x_854 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_853.x, x_853.y, x_853.z, x_854.w);
  let x_856 : vec4<f32> = u_xlat0;
  let x_860 : vec3<f32> = clamp(vec3<f32>(x_856.x, x_856.y, x_856.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_861 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_860.x, x_860.y, x_860.z, x_861.w);
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
    let x_960 : f32 = u_xlat2.x;
    u_xlat21 = floor(x_960);
    let x_963 : vec4<f32> = x_25.x_UserLut_Params;
    let x_965 : vec2<f32> = (vec2<f32>(x_963.x, x_963.y) * vec2<f32>(0.5f, 0.5f));
    let x_966 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_965.x, x_966.y, x_966.z, x_965.y);
    let x_968 : vec4<f32> = u_xlat2;
    let x_971 : vec4<f32> = x_25.x_UserLut_Params;
    let x_974 : vec4<f32> = u_xlat2;
    let x_976 : vec2<f32> = ((vec2<f32>(x_968.y, x_968.z) * vec2<f32>(x_971.x, x_971.y)) + vec2<f32>(x_974.x, x_974.w));
    let x_977 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_977.x, x_976.x, x_976.y, x_977.w);
    let x_979 : f32 = u_xlat21;
    let x_981 : f32 = x_25.x_UserLut_Params.y;
    let x_984 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_979 * x_981) + x_984);
    let x_991 : vec4<f32> = u_xlat2;
    let x_993 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_991.x, x_991.z), 0.0f);
    u_xlat3 = vec3<f32>(x_993.x, x_993.y, x_993.z);
    let x_996 : f32 = x_25.x_UserLut_Params.y;
    u_xlat4.x = x_996;
    u_xlat4.y = 0.0f;
    let x_999 : vec4<f32> = u_xlat2;
    let x_1001 : vec4<f32> = u_xlat4;
    let x_1003 : vec2<f32> = (vec2<f32>(x_999.x, x_999.z) + vec2<f32>(x_1001.x, x_1001.y));
    let x_1004 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1003.x, x_1003.y, x_1004.z, x_1004.w);
    let x_1009 : vec4<f32> = u_xlat2;
    let x_1011 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1009.x, x_1009.y), 0.0f);
    let x_1012 : vec3<f32> = vec3<f32>(x_1011.x, x_1011.y, x_1011.z);
    let x_1013 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1012.x, x_1012.y, x_1012.z, x_1013.w);
    let x_1016 : f32 = u_xlat1.z;
    let x_1018 : f32 = x_25.x_UserLut_Params.z;
    let x_1020 : f32 = u_xlat21;
    u_xlat21 = ((x_1016 * x_1018) + -(x_1020));
    let x_1023 : vec3<f32> = u_xlat3;
    let x_1025 : vec4<f32> = u_xlat2;
    let x_1027 : vec3<f32> = (-(x_1023) + vec3<f32>(x_1025.x, x_1025.y, x_1025.z));
    let x_1028 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1027.x, x_1027.y, x_1027.z, x_1028.w);
    let x_1030 : f32 = u_xlat21;
    let x_1032 : vec4<f32> = u_xlat2;
    let x_1035 : vec3<f32> = u_xlat3;
    let x_1036 : vec3<f32> = ((vec3<f32>(x_1030, x_1030, x_1030) * vec3<f32>(x_1032.x, x_1032.y, x_1032.z)) + x_1035);
    let x_1037 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1036.x, x_1036.y, x_1036.z, x_1037.w);
    let x_1039 : vec3<f32> = u_xlat1;
    let x_1041 : vec4<f32> = u_xlat2;
    let x_1043 : vec3<f32> = (-(x_1039) + vec3<f32>(x_1041.x, x_1041.y, x_1041.z));
    let x_1044 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1043.x, x_1043.y, x_1043.z, x_1044.w);
    let x_1047 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1049 : vec4<f32> = u_xlat2;
    let x_1052 : vec3<f32> = u_xlat1;
    u_xlat1 = ((vec3<f32>(x_1047.w, x_1047.w, x_1047.w) * vec3<f32>(x_1049.x, x_1049.y, x_1049.z)) + x_1052);
    let x_1054 : vec3<f32> = u_xlat1;
    let x_1057 : vec3<f32> = (x_1054 * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
    let x_1058 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1057.x, x_1057.y, x_1057.z, x_1058.w);
    let x_1060 : vec3<f32> = u_xlat1;
    u_xlat3 = (x_1060 + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
    let x_1064 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_1064 * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
    let x_1068 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_1068));
    let x_1071 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_1071 * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
    let x_1075 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_1075);
    let x_1079 : vec3<f32> = u_xlat1;
    let x_1081 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_1079.x, x_1079.y, x_1079.z, x_1079.x));
    u_xlatb1 = vec3<bool>(x_1081.x, x_1081.y, x_1081.z);
    let x_1084 : bool = u_xlatb1.x;
    if (x_1084) {
      let x_1089 : f32 = u_xlat2.x;
      x_1085 = x_1089;
    } else {
      let x_1092 : f32 = u_xlat3.x;
      x_1085 = x_1092;
    }
    let x_1093 : f32 = x_1085;
    u_xlat0.x = x_1093;
    let x_1096 : bool = u_xlatb1.y;
    if (x_1096) {
      let x_1101 : f32 = u_xlat2.y;
      x_1097 = x_1101;
    } else {
      let x_1104 : f32 = u_xlat3.y;
      x_1097 = x_1104;
    }
    let x_1105 : f32 = x_1097;
    u_xlat0.y = x_1105;
    let x_1108 : bool = u_xlatb1.z;
    if (x_1108) {
      let x_1113 : f32 = u_xlat2.z;
      x_1109 = x_1113;
    } else {
      let x_1116 : f32 = u_xlat3.z;
      x_1109 = x_1116;
    }
    let x_1117 : f32 = x_1109;
    u_xlat0.z = x_1117;
  }
  let x_1119 : vec4<f32> = u_xlat0;
  let x_1122 : vec4<f32> = x_25.x_Lut_Params;
  let x_1124 : vec3<f32> = (vec3<f32>(x_1119.x, x_1119.y, x_1119.z) * vec3<f32>(x_1122.z, x_1122.z, x_1122.z));
  let x_1125 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1124.x, x_1124.y, x_1125.z, x_1124.z);
  let x_1128 : f32 = u_xlat0.w;
  u_xlat21 = floor(x_1128);
  let x_1131 : vec4<f32> = x_25.x_Lut_Params;
  let x_1133 : vec2<f32> = (vec2<f32>(x_1131.x, x_1131.y) * vec2<f32>(0.5f, 0.5f));
  let x_1134 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1133.x, x_1133.y, x_1134.z);
  let x_1136 : vec4<f32> = u_xlat0;
  let x_1139 : vec4<f32> = x_25.x_Lut_Params;
  let x_1142 : vec3<f32> = u_xlat1;
  let x_1144 : vec2<f32> = ((vec2<f32>(x_1136.x, x_1136.y) * vec2<f32>(x_1139.x, x_1139.y)) + vec2<f32>(x_1142.x, x_1142.y));
  let x_1145 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1145.x, x_1144.x, x_1144.y);
  let x_1147 : f32 = u_xlat21;
  let x_1149 : f32 = x_25.x_Lut_Params.y;
  let x_1152 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_1147 * x_1149) + x_1152);
  let x_1159 : vec3<f32> = u_xlat1;
  let x_1161 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1159.x, x_1159.z), 0.0f);
  let x_1162 : vec3<f32> = vec3<f32>(x_1161.x, x_1161.y, x_1161.z);
  let x_1163 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1162.x, x_1162.y, x_1162.z, x_1163.w);
  let x_1166 : f32 = x_25.x_Lut_Params.y;
  u_xlat0.x = x_1166;
  u_xlat0.y = 0.0f;
  let x_1169 : vec4<f32> = u_xlat0;
  let x_1171 : vec3<f32> = u_xlat1;
  let x_1173 : vec2<f32> = (vec2<f32>(x_1169.x, x_1169.y) + vec2<f32>(x_1171.x, x_1171.z));
  let x_1174 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1173.x, x_1173.y, x_1174.z, x_1174.w);
  let x_1179 : vec4<f32> = u_xlat0;
  let x_1181 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1179.x, x_1179.y), 0.0f);
  u_xlat1 = vec3<f32>(x_1181.x, x_1181.y, x_1181.z);
  let x_1184 : f32 = u_xlat0.z;
  let x_1186 : f32 = x_25.x_Lut_Params.z;
  let x_1188 : f32 = u_xlat21;
  u_xlat0.x = ((x_1184 * x_1186) + -(x_1188));
  let x_1192 : vec4<f32> = u_xlat2;
  let x_1195 : vec3<f32> = u_xlat1;
  u_xlat7 = (-(vec3<f32>(x_1192.x, x_1192.y, x_1192.z)) + x_1195);
  let x_1199 : vec4<f32> = u_xlat0;
  let x_1201 : vec3<f32> = u_xlat7;
  let x_1203 : vec4<f32> = u_xlat2;
  let x_1205 : vec3<f32> = ((vec3<f32>(x_1199.x, x_1199.x, x_1199.x) * x_1201) + vec3<f32>(x_1203.x, x_1203.y, x_1203.z));
  let x_1206 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1205.x, x_1205.y, x_1205.z, x_1206.w);
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


