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

var<private> u_xlatb0 : vec3<bool>;

var<private> u_xlatb21 : bool;

var<private> u_xlat21 : f32;

@group(0) @binding(2) var x_UserLut : texture_2d<f32>;

@group(0) @binding(1) var x_InternalLut : texture_2d<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_237 : f32;
  var x_479 : f32;
  var x_664 : f32;
  var hlslcc_movcTemp : vec3<f32>;
  var x_859 : f32;
  var x_871 : f32;
  var x_883 : f32;
  var x_1029 : f32;
  var x_1041 : f32;
  var x_1053 : f32;
  var x_1183 : f32;
  var x_1196 : f32;
  var x_1208 : f32;
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
  let x_712 : f32 = x_25.x_Vignette_Params2.z;
  u_xlatb0.x = (0.0f < x_712);
  let x_716 : bool = u_xlatb0.x;
  if (x_716) {
    let x_719 : vec2<f32> = u_xlat15;
    let x_721 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_724 : vec2<f32> = (x_719 + -(vec2<f32>(x_721.x, x_721.y)));
    let x_725 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_724.x, x_724.y, x_725.z, x_725.w);
    let x_727 : vec4<f32> = u_xlat0;
    let x_731 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_733 : vec2<f32> = (abs(vec2<f32>(x_727.x, x_727.y)) * vec2<f32>(x_731.z, x_731.z));
    let x_734 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_734.x, x_733.x, x_733.y, x_734.w);
    let x_737 : f32 = u_xlat0.y;
    let x_740 : f32 = x_25.x_Vignette_Params1.w;
    u_xlat0.x = (x_737 * x_740);
    let x_743 : vec4<f32> = u_xlat0;
    let x_745 : vec4<f32> = u_xlat0;
    u_xlat0.x = dot(vec2<f32>(x_743.x, x_743.z), vec2<f32>(x_745.x, x_745.z));
    let x_750 : f32 = u_xlat0.x;
    u_xlat0.x = (-(x_750) + 1.0f);
    let x_755 : f32 = u_xlat0.x;
    u_xlat0.x = max(x_755, 0.0f);
    let x_759 : f32 = u_xlat0.x;
    u_xlat0.x = log2(x_759);
    let x_763 : f32 = u_xlat0.x;
    let x_765 : f32 = x_25.x_Vignette_Params2.w;
    u_xlat0.x = (x_763 * x_765);
    let x_769 : f32 = u_xlat0.x;
    u_xlat0.x = exp2(x_769);
    let x_773 : vec4<f32> = x_25.x_Vignette_Params1;
    u_xlat7 = (-(vec3<f32>(x_773.x, x_773.y, x_773.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_778 : vec4<f32> = u_xlat0;
    let x_780 : vec3<f32> = u_xlat7;
    let x_783 : vec4<f32> = x_25.x_Vignette_Params1;
    let x_785 : vec3<f32> = ((vec3<f32>(x_778.x, x_778.x, x_778.x) * x_780) + vec3<f32>(x_783.x, x_783.y, x_783.z));
    let x_786 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_785.x, x_785.y, x_785.z, x_786.w);
    let x_788 : vec4<f32> = u_xlat0;
    let x_790 : vec3<f32> = u_xlat3;
    u_xlat3 = (vec3<f32>(x_788.x, x_788.y, x_788.z) * x_790);
  }
  let x_792 : vec3<f32> = u_xlat3;
  let x_795 : vec4<f32> = x_25.x_Lut_Params;
  let x_797 : vec3<f32> = (x_792 * vec3<f32>(x_795.w, x_795.w, x_795.w));
  let x_798 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_797.x, x_797.y, x_797.z, x_798.w);
  let x_800 : vec4<f32> = u_xlat0;
  let x_804 : vec3<f32> = clamp(vec3<f32>(x_800.x, x_800.y, x_800.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_805 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_804.x, x_804.y, x_804.z, x_805.w);
  let x_810 : f32 = x_25.x_UserLut_Params.w;
  u_xlatb21 = (0.0f < x_810);
  let x_812 : bool = u_xlatb21;
  if (x_812) {
    let x_815 : vec4<f32> = u_xlat0;
    u_xlat1 = (vec3<f32>(x_815.x, x_815.y, x_815.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
    let x_820 : vec4<f32> = u_xlat0;
    let x_822 : vec3<f32> = log2(vec3<f32>(x_820.x, x_820.y, x_820.z));
    let x_823 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_822.x, x_822.y, x_822.z, x_823.w);
    let x_825 : vec4<f32> = u_xlat2;
    let x_829 : vec3<f32> = (vec3<f32>(x_825.x, x_825.y, x_825.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
    let x_830 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_829.x, x_829.y, x_829.z, x_830.w);
    let x_832 : vec4<f32> = u_xlat2;
    let x_834 : vec3<f32> = exp2(vec3<f32>(x_832.x, x_832.y, x_832.z));
    let x_835 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_834.x, x_834.y, x_834.z, x_835.w);
    let x_837 : vec4<f32> = u_xlat2;
    let x_844 : vec3<f32> = ((vec3<f32>(x_837.x, x_837.y, x_837.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
    let x_845 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_844.x, x_844.y, x_844.z, x_845.w);
    let x_849 : vec4<f32> = u_xlat0;
    let x_852 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_849.x, x_849.y, x_849.z, x_849.x));
    u_xlatb3 = vec3<bool>(x_852.x, x_852.y, x_852.z);
    let x_856 : vec3<f32> = u_xlat1;
    hlslcc_movcTemp = x_856;
    let x_858 : bool = u_xlatb3.x;
    if (x_858) {
      let x_863 : f32 = u_xlat1.x;
      x_859 = x_863;
    } else {
      let x_866 : f32 = u_xlat2.x;
      x_859 = x_866;
    }
    let x_867 : f32 = x_859;
    hlslcc_movcTemp.x = x_867;
    let x_870 : bool = u_xlatb3.y;
    if (x_870) {
      let x_875 : f32 = u_xlat1.y;
      x_871 = x_875;
    } else {
      let x_878 : f32 = u_xlat2.y;
      x_871 = x_878;
    }
    let x_879 : f32 = x_871;
    hlslcc_movcTemp.y = x_879;
    let x_882 : bool = u_xlatb3.z;
    if (x_882) {
      let x_887 : f32 = u_xlat1.z;
      x_883 = x_887;
    } else {
      let x_890 : f32 = u_xlat2.z;
      x_883 = x_890;
    }
    let x_891 : f32 = x_883;
    hlslcc_movcTemp.z = x_891;
    let x_893 : vec3<f32> = hlslcc_movcTemp;
    u_xlat1 = x_893;
    let x_894 : vec3<f32> = u_xlat1;
    let x_897 : vec4<f32> = x_25.x_UserLut_Params;
    let x_899 : vec3<f32> = (vec3<f32>(x_894.z, x_894.x, x_894.y) * vec3<f32>(x_897.z, x_897.z, x_897.z));
    let x_900 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_899.x, x_899.y, x_899.z, x_900.w);
    let x_904 : f32 = u_xlat2.x;
    u_xlat21 = floor(x_904);
    let x_907 : vec4<f32> = x_25.x_UserLut_Params;
    let x_909 : vec2<f32> = (vec2<f32>(x_907.x, x_907.y) * vec2<f32>(0.5f, 0.5f));
    let x_910 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_909.x, x_910.y, x_910.z, x_909.y);
    let x_912 : vec4<f32> = u_xlat2;
    let x_915 : vec4<f32> = x_25.x_UserLut_Params;
    let x_918 : vec4<f32> = u_xlat2;
    let x_920 : vec2<f32> = ((vec2<f32>(x_912.y, x_912.z) * vec2<f32>(x_915.x, x_915.y)) + vec2<f32>(x_918.x, x_918.w));
    let x_921 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_921.x, x_920.x, x_920.y, x_921.w);
    let x_923 : f32 = u_xlat21;
    let x_925 : f32 = x_25.x_UserLut_Params.y;
    let x_928 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_923 * x_925) + x_928);
    let x_935 : vec4<f32> = u_xlat2;
    let x_937 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_935.x, x_935.z), 0.0f);
    u_xlat3 = vec3<f32>(x_937.x, x_937.y, x_937.z);
    let x_940 : f32 = x_25.x_UserLut_Params.y;
    u_xlat4.x = x_940;
    u_xlat4.y = 0.0f;
    let x_943 : vec4<f32> = u_xlat2;
    let x_945 : vec4<f32> = u_xlat4;
    let x_947 : vec2<f32> = (vec2<f32>(x_943.x, x_943.z) + vec2<f32>(x_945.x, x_945.y));
    let x_948 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_947.x, x_947.y, x_948.z, x_948.w);
    let x_953 : vec4<f32> = u_xlat2;
    let x_955 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_953.x, x_953.y), 0.0f);
    let x_956 : vec3<f32> = vec3<f32>(x_955.x, x_955.y, x_955.z);
    let x_957 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_956.x, x_956.y, x_956.z, x_957.w);
    let x_960 : f32 = u_xlat1.z;
    let x_962 : f32 = x_25.x_UserLut_Params.z;
    let x_964 : f32 = u_xlat21;
    u_xlat21 = ((x_960 * x_962) + -(x_964));
    let x_967 : vec3<f32> = u_xlat3;
    let x_969 : vec4<f32> = u_xlat2;
    let x_971 : vec3<f32> = (-(x_967) + vec3<f32>(x_969.x, x_969.y, x_969.z));
    let x_972 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_971.x, x_971.y, x_971.z, x_972.w);
    let x_974 : f32 = u_xlat21;
    let x_976 : vec4<f32> = u_xlat2;
    let x_979 : vec3<f32> = u_xlat3;
    let x_980 : vec3<f32> = ((vec3<f32>(x_974, x_974, x_974) * vec3<f32>(x_976.x, x_976.y, x_976.z)) + x_979);
    let x_981 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_980.x, x_980.y, x_980.z, x_981.w);
    let x_983 : vec3<f32> = u_xlat1;
    let x_985 : vec4<f32> = u_xlat2;
    let x_987 : vec3<f32> = (-(x_983) + vec3<f32>(x_985.x, x_985.y, x_985.z));
    let x_988 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_987.x, x_987.y, x_987.z, x_988.w);
    let x_991 : vec4<f32> = x_25.x_UserLut_Params;
    let x_993 : vec4<f32> = u_xlat2;
    let x_996 : vec3<f32> = u_xlat1;
    u_xlat1 = ((vec3<f32>(x_991.w, x_991.w, x_991.w) * vec3<f32>(x_993.x, x_993.y, x_993.z)) + x_996);
    let x_998 : vec3<f32> = u_xlat1;
    let x_1001 : vec3<f32> = (x_998 * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
    let x_1002 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1001.x, x_1001.y, x_1001.z, x_1002.w);
    let x_1004 : vec3<f32> = u_xlat1;
    u_xlat3 = (x_1004 + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
    let x_1008 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_1008 * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
    let x_1012 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_1012));
    let x_1015 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_1015 * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
    let x_1019 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_1019);
    let x_1023 : vec3<f32> = u_xlat1;
    let x_1025 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_1023.x, x_1023.y, x_1023.z, x_1023.x));
    u_xlatb1 = vec3<bool>(x_1025.x, x_1025.y, x_1025.z);
    let x_1028 : bool = u_xlatb1.x;
    if (x_1028) {
      let x_1033 : f32 = u_xlat2.x;
      x_1029 = x_1033;
    } else {
      let x_1036 : f32 = u_xlat3.x;
      x_1029 = x_1036;
    }
    let x_1037 : f32 = x_1029;
    u_xlat0.x = x_1037;
    let x_1040 : bool = u_xlatb1.y;
    if (x_1040) {
      let x_1045 : f32 = u_xlat2.y;
      x_1041 = x_1045;
    } else {
      let x_1048 : f32 = u_xlat3.y;
      x_1041 = x_1048;
    }
    let x_1049 : f32 = x_1041;
    u_xlat0.y = x_1049;
    let x_1052 : bool = u_xlatb1.z;
    if (x_1052) {
      let x_1057 : f32 = u_xlat2.z;
      x_1053 = x_1057;
    } else {
      let x_1060 : f32 = u_xlat3.z;
      x_1053 = x_1060;
    }
    let x_1061 : f32 = x_1053;
    u_xlat0.z = x_1061;
  }
  let x_1063 : vec4<f32> = u_xlat0;
  let x_1066 : vec4<f32> = x_25.x_Lut_Params;
  let x_1068 : vec3<f32> = (vec3<f32>(x_1063.x, x_1063.y, x_1063.z) * vec3<f32>(x_1066.z, x_1066.z, x_1066.z));
  let x_1069 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1068.x, x_1068.y, x_1069.z, x_1068.z);
  let x_1072 : f32 = u_xlat0.w;
  u_xlat21 = floor(x_1072);
  let x_1075 : vec4<f32> = x_25.x_Lut_Params;
  let x_1077 : vec2<f32> = (vec2<f32>(x_1075.x, x_1075.y) * vec2<f32>(0.5f, 0.5f));
  let x_1078 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1077.x, x_1077.y, x_1078.z);
  let x_1080 : vec4<f32> = u_xlat0;
  let x_1083 : vec4<f32> = x_25.x_Lut_Params;
  let x_1086 : vec3<f32> = u_xlat1;
  let x_1088 : vec2<f32> = ((vec2<f32>(x_1080.x, x_1080.y) * vec2<f32>(x_1083.x, x_1083.y)) + vec2<f32>(x_1086.x, x_1086.y));
  let x_1089 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1089.x, x_1088.x, x_1088.y);
  let x_1091 : f32 = u_xlat21;
  let x_1093 : f32 = x_25.x_Lut_Params.y;
  let x_1096 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_1091 * x_1093) + x_1096);
  let x_1103 : vec3<f32> = u_xlat1;
  let x_1105 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1103.x, x_1103.z), 0.0f);
  let x_1106 : vec3<f32> = vec3<f32>(x_1105.x, x_1105.y, x_1105.z);
  let x_1107 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1106.x, x_1106.y, x_1106.z, x_1107.w);
  let x_1110 : f32 = x_25.x_Lut_Params.y;
  u_xlat0.x = x_1110;
  u_xlat0.y = 0.0f;
  let x_1113 : vec4<f32> = u_xlat0;
  let x_1115 : vec3<f32> = u_xlat1;
  let x_1117 : vec2<f32> = (vec2<f32>(x_1113.x, x_1113.y) + vec2<f32>(x_1115.x, x_1115.z));
  let x_1118 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1117.x, x_1117.y, x_1118.z, x_1118.w);
  let x_1123 : vec4<f32> = u_xlat0;
  let x_1125 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1123.x, x_1123.y), 0.0f);
  u_xlat1 = vec3<f32>(x_1125.x, x_1125.y, x_1125.z);
  let x_1128 : f32 = u_xlat0.z;
  let x_1130 : f32 = x_25.x_Lut_Params.z;
  let x_1132 : f32 = u_xlat21;
  u_xlat0.x = ((x_1128 * x_1130) + -(x_1132));
  let x_1136 : vec4<f32> = u_xlat2;
  let x_1139 : vec3<f32> = u_xlat1;
  u_xlat7 = (-(vec3<f32>(x_1136.x, x_1136.y, x_1136.z)) + x_1139);
  let x_1141 : vec4<f32> = u_xlat0;
  let x_1143 : vec3<f32> = u_xlat7;
  let x_1145 : vec4<f32> = u_xlat2;
  let x_1147 : vec3<f32> = ((vec3<f32>(x_1141.x, x_1141.x, x_1141.x) * x_1143) + vec3<f32>(x_1145.x, x_1145.y, x_1145.z));
  let x_1148 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1147.x, x_1147.y, x_1147.z, x_1148.w);
  let x_1150 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_1150.x, x_1150.y, x_1150.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
  let x_1153 : vec4<f32> = u_xlat0;
  let x_1156 : vec3<f32> = log2(abs(vec3<f32>(x_1153.x, x_1153.y, x_1153.z)));
  let x_1157 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1156.x, x_1156.y, x_1156.z, x_1157.w);
  let x_1159 : vec4<f32> = u_xlat2;
  let x_1161 : vec3<f32> = (vec3<f32>(x_1159.x, x_1159.y, x_1159.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
  let x_1162 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1161.x, x_1161.y, x_1161.z, x_1162.w);
  let x_1164 : vec4<f32> = u_xlat2;
  let x_1166 : vec3<f32> = exp2(vec3<f32>(x_1164.x, x_1164.y, x_1164.z));
  let x_1167 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1166.x, x_1166.y, x_1166.z, x_1167.w);
  let x_1169 : vec4<f32> = u_xlat2;
  let x_1172 : vec3<f32> = ((vec3<f32>(x_1169.x, x_1169.y, x_1169.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
  let x_1173 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1172.x, x_1172.y, x_1172.z, x_1173.w);
  let x_1175 : vec4<f32> = u_xlat0;
  let x_1177 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_1175.x, x_1175.y, x_1175.z, x_1175.x));
  u_xlatb0 = vec3<bool>(x_1177.x, x_1177.y, x_1177.z);
  let x_1182 : bool = u_xlatb0.x;
  if (x_1182) {
    let x_1187 : f32 = u_xlat1.x;
    x_1183 = x_1187;
  } else {
    let x_1190 : f32 = u_xlat2.x;
    x_1183 = x_1190;
  }
  let x_1191 : f32 = x_1183;
  SV_Target0.x = x_1191;
  let x_1195 : bool = u_xlatb0.y;
  if (x_1195) {
    let x_1200 : f32 = u_xlat1.y;
    x_1196 = x_1200;
  } else {
    let x_1203 : f32 = u_xlat2.y;
    x_1196 = x_1203;
  }
  let x_1204 : f32 = x_1196;
  SV_Target0.y = x_1204;
  let x_1207 : bool = u_xlatb0.z;
  if (x_1207) {
    let x_1212 : f32 = u_xlat1.z;
    x_1208 = x_1212;
  } else {
    let x_1215 : f32 = u_xlat2.z;
    x_1208 = x_1215;
  }
  let x_1216 : f32 = x_1208;
  SV_Target0.z = x_1216;
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


