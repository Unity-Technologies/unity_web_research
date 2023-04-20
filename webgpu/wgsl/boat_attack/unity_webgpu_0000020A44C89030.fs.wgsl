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
  /* @offset(160) */
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

@group(0) @binding(4) var sampler_LinearClamp : sampler;

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

@group(0) @binding(3) var x_BlueNoise_Texture : texture_2d<f32>;

@group(0) @binding(5) var sampler_PointRepeat : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_237 : f32;
  var x_479 : f32;
  var x_664 : f32;
  var hlslcc_movcTemp : vec3<f32>;
  var x_919 : f32;
  var x_931 : f32;
  var x_943 : f32;
  var x_1089 : f32;
  var x_1101 : f32;
  var x_1113 : f32;
  var x_1241 : f32;
  var x_1253 : f32;
  var x_1265 : f32;
  var x_1352 : f32;
  var x_1364 : f32;
  var x_1376 : f32;
  var x_1431 : f32;
  var x_1443 : f32;
  var x_1455 : f32;
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
  u_xlat1 = (vec3<f32>(x_800.x, x_800.y, x_800.z) * vec3<f32>(1.31338608264923095703f, 1.31338608264923095703f, 1.31338608264923095703f));
  let x_805 : vec4<f32> = u_xlat0;
  let x_812 : vec3<f32> = ((vec3<f32>(x_805.x, x_805.y, x_805.z) * vec3<f32>(0.26267722249031066895f, 0.26267722249031066895f, 0.26267722249031066895f)) + vec3<f32>(0.06959999352693557739f, 0.06959999352693557739f, 0.06959999352693557739f));
  let x_813 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_812.x, x_812.y, x_812.z, x_813.w);
  let x_815 : vec3<f32> = u_xlat1;
  let x_816 : vec4<f32> = u_xlat2;
  let x_821 : vec3<f32> = ((x_815 * vec3<f32>(x_816.x, x_816.y, x_816.z)) + vec3<f32>(0.00543999997898936272f, 0.00543999997898936272f, 0.00543999997898936272f));
  let x_822 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_821.x, x_821.y, x_821.z, x_822.w);
  let x_824 : vec4<f32> = u_xlat0;
  let x_829 : vec3<f32> = ((vec3<f32>(x_824.x, x_824.y, x_824.z) * vec3<f32>(0.26267722249031066895f, 0.26267722249031066895f, 0.26267722249031066895f)) + vec3<f32>(0.28999999165534973145f, 0.28999999165534973145f, 0.28999999165534973145f));
  let x_830 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_829.x, x_829.y, x_829.z, x_830.w);
  let x_832 : vec3<f32> = u_xlat1;
  let x_833 : vec4<f32> = u_xlat0;
  let x_838 : vec3<f32> = ((x_832 * vec3<f32>(x_833.x, x_833.y, x_833.z)) + vec3<f32>(0.08160001039505004883f, 0.08160001039505004883f, 0.08160001039505004883f));
  let x_839 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_838.x, x_838.y, x_838.z, x_839.w);
  let x_841 : vec4<f32> = u_xlat2;
  let x_843 : vec4<f32> = u_xlat0;
  let x_845 : vec3<f32> = (vec3<f32>(x_841.x, x_841.y, x_841.z) / vec3<f32>(x_843.x, x_843.y, x_843.z));
  let x_846 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_845.x, x_845.y, x_845.z, x_846.w);
  let x_848 : vec4<f32> = u_xlat0;
  let x_852 : vec3<f32> = (vec3<f32>(x_848.x, x_848.y, x_848.z) + vec3<f32>(-0.06666666269302368164f, -0.06666666269302368164f, -0.06666666269302368164f));
  let x_853 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_852.x, x_852.y, x_852.z, x_853.w);
  let x_855 : vec4<f32> = u_xlat0;
  let x_857 : vec3<f32> = (vec3<f32>(x_855.x, x_855.y, x_855.z) * vec3<f32>(1.31338608264923095703f, 1.31338608264923095703f, 1.31338608264923095703f));
  let x_858 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_857.x, x_857.y, x_857.z, x_858.w);
  let x_860 : vec4<f32> = u_xlat0;
  let x_864 : vec3<f32> = clamp(vec3<f32>(x_860.x, x_860.y, x_860.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_865 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_864.x, x_864.y, x_864.z, x_865.w);
  let x_870 : f32 = x_25.x_UserLut_Params.w;
  u_xlatb21 = (0.0f < x_870);
  let x_872 : bool = u_xlatb21;
  if (x_872) {
    let x_875 : vec4<f32> = u_xlat0;
    u_xlat1 = (vec3<f32>(x_875.x, x_875.y, x_875.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
    let x_880 : vec4<f32> = u_xlat0;
    let x_882 : vec3<f32> = log2(vec3<f32>(x_880.x, x_880.y, x_880.z));
    let x_883 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_882.x, x_882.y, x_882.z, x_883.w);
    let x_885 : vec4<f32> = u_xlat2;
    let x_889 : vec3<f32> = (vec3<f32>(x_885.x, x_885.y, x_885.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
    let x_890 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_889.x, x_889.y, x_889.z, x_890.w);
    let x_892 : vec4<f32> = u_xlat2;
    let x_894 : vec3<f32> = exp2(vec3<f32>(x_892.x, x_892.y, x_892.z));
    let x_895 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_894.x, x_894.y, x_894.z, x_895.w);
    let x_897 : vec4<f32> = u_xlat2;
    let x_904 : vec3<f32> = ((vec3<f32>(x_897.x, x_897.y, x_897.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
    let x_905 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_904.x, x_904.y, x_904.z, x_905.w);
    let x_909 : vec4<f32> = u_xlat0;
    let x_912 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_909.x, x_909.y, x_909.z, x_909.x));
    u_xlatb3 = vec3<bool>(x_912.x, x_912.y, x_912.z);
    let x_916 : vec3<f32> = u_xlat1;
    hlslcc_movcTemp = x_916;
    let x_918 : bool = u_xlatb3.x;
    if (x_918) {
      let x_923 : f32 = u_xlat1.x;
      x_919 = x_923;
    } else {
      let x_926 : f32 = u_xlat2.x;
      x_919 = x_926;
    }
    let x_927 : f32 = x_919;
    hlslcc_movcTemp.x = x_927;
    let x_930 : bool = u_xlatb3.y;
    if (x_930) {
      let x_935 : f32 = u_xlat1.y;
      x_931 = x_935;
    } else {
      let x_938 : f32 = u_xlat2.y;
      x_931 = x_938;
    }
    let x_939 : f32 = x_931;
    hlslcc_movcTemp.y = x_939;
    let x_942 : bool = u_xlatb3.z;
    if (x_942) {
      let x_947 : f32 = u_xlat1.z;
      x_943 = x_947;
    } else {
      let x_950 : f32 = u_xlat2.z;
      x_943 = x_950;
    }
    let x_951 : f32 = x_943;
    hlslcc_movcTemp.z = x_951;
    let x_953 : vec3<f32> = hlslcc_movcTemp;
    u_xlat1 = x_953;
    let x_954 : vec3<f32> = u_xlat1;
    let x_957 : vec4<f32> = x_25.x_UserLut_Params;
    let x_959 : vec3<f32> = (vec3<f32>(x_954.z, x_954.x, x_954.y) * vec3<f32>(x_957.z, x_957.z, x_957.z));
    let x_960 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_959.x, x_959.y, x_959.z, x_960.w);
    let x_964 : f32 = u_xlat2.x;
    u_xlat21 = floor(x_964);
    let x_967 : vec4<f32> = x_25.x_UserLut_Params;
    let x_969 : vec2<f32> = (vec2<f32>(x_967.x, x_967.y) * vec2<f32>(0.5f, 0.5f));
    let x_970 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_969.x, x_970.y, x_970.z, x_969.y);
    let x_972 : vec4<f32> = u_xlat2;
    let x_975 : vec4<f32> = x_25.x_UserLut_Params;
    let x_978 : vec4<f32> = u_xlat2;
    let x_980 : vec2<f32> = ((vec2<f32>(x_972.y, x_972.z) * vec2<f32>(x_975.x, x_975.y)) + vec2<f32>(x_978.x, x_978.w));
    let x_981 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_981.x, x_980.x, x_980.y, x_981.w);
    let x_983 : f32 = u_xlat21;
    let x_985 : f32 = x_25.x_UserLut_Params.y;
    let x_988 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_983 * x_985) + x_988);
    let x_995 : vec4<f32> = u_xlat2;
    let x_997 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_995.x, x_995.z), 0.0f);
    u_xlat3 = vec3<f32>(x_997.x, x_997.y, x_997.z);
    let x_1000 : f32 = x_25.x_UserLut_Params.y;
    u_xlat4.x = x_1000;
    u_xlat4.y = 0.0f;
    let x_1003 : vec4<f32> = u_xlat2;
    let x_1005 : vec4<f32> = u_xlat4;
    let x_1007 : vec2<f32> = (vec2<f32>(x_1003.x, x_1003.z) + vec2<f32>(x_1005.x, x_1005.y));
    let x_1008 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1007.x, x_1007.y, x_1008.z, x_1008.w);
    let x_1013 : vec4<f32> = u_xlat2;
    let x_1015 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1013.x, x_1013.y), 0.0f);
    let x_1016 : vec3<f32> = vec3<f32>(x_1015.x, x_1015.y, x_1015.z);
    let x_1017 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1016.x, x_1016.y, x_1016.z, x_1017.w);
    let x_1020 : f32 = u_xlat1.z;
    let x_1022 : f32 = x_25.x_UserLut_Params.z;
    let x_1024 : f32 = u_xlat21;
    u_xlat21 = ((x_1020 * x_1022) + -(x_1024));
    let x_1027 : vec3<f32> = u_xlat3;
    let x_1029 : vec4<f32> = u_xlat2;
    let x_1031 : vec3<f32> = (-(x_1027) + vec3<f32>(x_1029.x, x_1029.y, x_1029.z));
    let x_1032 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1031.x, x_1031.y, x_1031.z, x_1032.w);
    let x_1034 : f32 = u_xlat21;
    let x_1036 : vec4<f32> = u_xlat2;
    let x_1039 : vec3<f32> = u_xlat3;
    let x_1040 : vec3<f32> = ((vec3<f32>(x_1034, x_1034, x_1034) * vec3<f32>(x_1036.x, x_1036.y, x_1036.z)) + x_1039);
    let x_1041 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1040.x, x_1040.y, x_1040.z, x_1041.w);
    let x_1043 : vec3<f32> = u_xlat1;
    let x_1045 : vec4<f32> = u_xlat2;
    let x_1047 : vec3<f32> = (-(x_1043) + vec3<f32>(x_1045.x, x_1045.y, x_1045.z));
    let x_1048 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1047.x, x_1047.y, x_1047.z, x_1048.w);
    let x_1051 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1053 : vec4<f32> = u_xlat2;
    let x_1056 : vec3<f32> = u_xlat1;
    u_xlat1 = ((vec3<f32>(x_1051.w, x_1051.w, x_1051.w) * vec3<f32>(x_1053.x, x_1053.y, x_1053.z)) + x_1056);
    let x_1058 : vec3<f32> = u_xlat1;
    let x_1061 : vec3<f32> = (x_1058 * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
    let x_1062 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1061.x, x_1061.y, x_1061.z, x_1062.w);
    let x_1064 : vec3<f32> = u_xlat1;
    u_xlat3 = (x_1064 + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
    let x_1068 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_1068 * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
    let x_1072 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_1072));
    let x_1075 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_1075 * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
    let x_1079 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_1079);
    let x_1083 : vec3<f32> = u_xlat1;
    let x_1085 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_1083.x, x_1083.y, x_1083.z, x_1083.x));
    u_xlatb1 = vec3<bool>(x_1085.x, x_1085.y, x_1085.z);
    let x_1088 : bool = u_xlatb1.x;
    if (x_1088) {
      let x_1093 : f32 = u_xlat2.x;
      x_1089 = x_1093;
    } else {
      let x_1096 : f32 = u_xlat3.x;
      x_1089 = x_1096;
    }
    let x_1097 : f32 = x_1089;
    u_xlat0.x = x_1097;
    let x_1100 : bool = u_xlatb1.y;
    if (x_1100) {
      let x_1105 : f32 = u_xlat2.y;
      x_1101 = x_1105;
    } else {
      let x_1108 : f32 = u_xlat3.y;
      x_1101 = x_1108;
    }
    let x_1109 : f32 = x_1101;
    u_xlat0.y = x_1109;
    let x_1112 : bool = u_xlatb1.z;
    if (x_1112) {
      let x_1117 : f32 = u_xlat2.z;
      x_1113 = x_1117;
    } else {
      let x_1120 : f32 = u_xlat3.z;
      x_1113 = x_1120;
    }
    let x_1121 : f32 = x_1113;
    u_xlat0.z = x_1121;
  }
  let x_1123 : vec4<f32> = u_xlat0;
  let x_1126 : vec4<f32> = x_25.x_Lut_Params;
  let x_1128 : vec3<f32> = (vec3<f32>(x_1123.x, x_1123.y, x_1123.z) * vec3<f32>(x_1126.z, x_1126.z, x_1126.z));
  let x_1129 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1128.x, x_1128.y, x_1129.z, x_1128.z);
  let x_1132 : f32 = u_xlat0.w;
  u_xlat21 = floor(x_1132);
  let x_1135 : vec4<f32> = x_25.x_Lut_Params;
  let x_1137 : vec2<f32> = (vec2<f32>(x_1135.x, x_1135.y) * vec2<f32>(0.5f, 0.5f));
  let x_1138 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1137.x, x_1137.y, x_1138.z);
  let x_1140 : vec4<f32> = u_xlat0;
  let x_1143 : vec4<f32> = x_25.x_Lut_Params;
  let x_1146 : vec3<f32> = u_xlat1;
  let x_1148 : vec2<f32> = ((vec2<f32>(x_1140.x, x_1140.y) * vec2<f32>(x_1143.x, x_1143.y)) + vec2<f32>(x_1146.x, x_1146.y));
  let x_1149 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1149.x, x_1148.x, x_1148.y);
  let x_1151 : f32 = u_xlat21;
  let x_1153 : f32 = x_25.x_Lut_Params.y;
  let x_1156 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_1151 * x_1153) + x_1156);
  let x_1163 : vec3<f32> = u_xlat1;
  let x_1165 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1163.x, x_1163.z), 0.0f);
  let x_1166 : vec3<f32> = vec3<f32>(x_1165.x, x_1165.y, x_1165.z);
  let x_1167 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1166.x, x_1166.y, x_1166.z, x_1167.w);
  let x_1170 : f32 = x_25.x_Lut_Params.y;
  u_xlat0.x = x_1170;
  u_xlat0.y = 0.0f;
  let x_1173 : vec4<f32> = u_xlat0;
  let x_1175 : vec3<f32> = u_xlat1;
  let x_1177 : vec2<f32> = (vec2<f32>(x_1173.x, x_1173.y) + vec2<f32>(x_1175.x, x_1175.z));
  let x_1178 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1177.x, x_1177.y, x_1178.z, x_1178.w);
  let x_1183 : vec4<f32> = u_xlat0;
  let x_1185 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1183.x, x_1183.y), 0.0f);
  u_xlat1 = vec3<f32>(x_1185.x, x_1185.y, x_1185.z);
  let x_1188 : f32 = u_xlat0.z;
  let x_1190 : f32 = x_25.x_Lut_Params.z;
  let x_1192 : f32 = u_xlat21;
  u_xlat0.x = ((x_1188 * x_1190) + -(x_1192));
  let x_1196 : vec4<f32> = u_xlat2;
  let x_1199 : vec3<f32> = u_xlat1;
  u_xlat7 = (-(vec3<f32>(x_1196.x, x_1196.y, x_1196.z)) + x_1199);
  let x_1201 : vec4<f32> = u_xlat0;
  let x_1203 : vec3<f32> = u_xlat7;
  let x_1205 : vec4<f32> = u_xlat2;
  let x_1207 : vec3<f32> = ((vec3<f32>(x_1201.x, x_1201.x, x_1201.x) * x_1203) + vec3<f32>(x_1205.x, x_1205.y, x_1205.z));
  let x_1208 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1207.x, x_1207.y, x_1207.z, x_1208.w);
  let x_1210 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_1210.x, x_1210.y, x_1210.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
  let x_1213 : vec4<f32> = u_xlat0;
  let x_1216 : vec3<f32> = log2(abs(vec3<f32>(x_1213.x, x_1213.y, x_1213.z)));
  let x_1217 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1216.x, x_1216.y, x_1216.z, x_1217.w);
  let x_1219 : vec4<f32> = u_xlat2;
  let x_1221 : vec3<f32> = (vec3<f32>(x_1219.x, x_1219.y, x_1219.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
  let x_1222 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1221.x, x_1221.y, x_1221.z, x_1222.w);
  let x_1224 : vec4<f32> = u_xlat2;
  let x_1226 : vec3<f32> = exp2(vec3<f32>(x_1224.x, x_1224.y, x_1224.z));
  let x_1227 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1226.x, x_1226.y, x_1226.z, x_1227.w);
  let x_1229 : vec4<f32> = u_xlat2;
  let x_1232 : vec3<f32> = ((vec3<f32>(x_1229.x, x_1229.y, x_1229.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
  let x_1233 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1232.x, x_1232.y, x_1232.z, x_1233.w);
  let x_1235 : vec4<f32> = u_xlat0;
  let x_1237 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_1235.x, x_1235.y, x_1235.z, x_1235.x));
  u_xlatb0 = vec3<bool>(x_1237.x, x_1237.y, x_1237.z);
  let x_1240 : bool = u_xlatb0.x;
  if (x_1240) {
    let x_1245 : f32 = u_xlat1.x;
    x_1241 = x_1245;
  } else {
    let x_1248 : f32 = u_xlat2.x;
    x_1241 = x_1248;
  }
  let x_1249 : f32 = x_1241;
  u_xlat0.x = x_1249;
  let x_1252 : bool = u_xlatb0.y;
  if (x_1252) {
    let x_1257 : f32 = u_xlat1.y;
    x_1253 = x_1257;
  } else {
    let x_1260 : f32 = u_xlat2.y;
    x_1253 = x_1260;
  }
  let x_1261 : f32 = x_1253;
  u_xlat0.y = x_1261;
  let x_1264 : bool = u_xlatb0.z;
  if (x_1264) {
    let x_1269 : f32 = u_xlat1.z;
    x_1265 = x_1269;
  } else {
    let x_1272 : f32 = u_xlat2.z;
    x_1265 = x_1272;
  }
  let x_1273 : f32 = x_1265;
  u_xlat0.z = x_1273;
  let x_1275 : vec2<f32> = vs_TEXCOORD0;
  let x_1278 : vec4<f32> = x_25.x_Dithering_Params;
  let x_1282 : vec4<f32> = x_25.x_Dithering_Params;
  let x_1284 : vec2<f32> = ((x_1275 * vec2<f32>(x_1278.x, x_1278.y)) + vec2<f32>(x_1282.z, x_1282.w));
  let x_1285 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1284.x, x_1284.y, x_1285.z);
  let x_1292 : vec3<f32> = u_xlat1;
  let x_1295 : f32 = x_25.x_GlobalMipBias.x;
  let x_1296 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_1292.x, x_1292.y), x_1295);
  u_xlat21 = x_1296.w;
  let x_1298 : f32 = u_xlat21;
  u_xlat21 = ((x_1298 * 2.0f) + -1.0f);
  let x_1301 : f32 = u_xlat21;
  u_xlatb1.x = (x_1301 >= 0.0f);
  let x_1305 : bool = u_xlatb1.x;
  u_xlat1.x = select(-1.0f, 1.0f, x_1305);
  let x_1308 : f32 = u_xlat21;
  u_xlat21 = (-(abs(x_1308)) + 1.0f);
  let x_1312 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_1312);
  let x_1314 : f32 = u_xlat21;
  u_xlat21 = (-(x_1314) + 1.0f);
  let x_1317 : f32 = u_xlat21;
  let x_1319 : f32 = u_xlat1.x;
  u_xlat21 = (x_1317 * x_1319);
  let x_1321 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_1321.x, x_1321.y, x_1321.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
  let x_1324 : vec4<f32> = u_xlat0;
  let x_1327 : vec3<f32> = log2(abs(vec3<f32>(x_1324.x, x_1324.y, x_1324.z)));
  let x_1328 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1327.x, x_1327.y, x_1327.z, x_1328.w);
  let x_1330 : vec4<f32> = u_xlat2;
  let x_1332 : vec3<f32> = (vec3<f32>(x_1330.x, x_1330.y, x_1330.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
  let x_1333 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1332.x, x_1332.y, x_1332.z, x_1333.w);
  let x_1335 : vec4<f32> = u_xlat2;
  let x_1337 : vec3<f32> = exp2(vec3<f32>(x_1335.x, x_1335.y, x_1335.z));
  let x_1338 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1337.x, x_1337.y, x_1337.z, x_1338.w);
  let x_1340 : vec4<f32> = u_xlat2;
  let x_1343 : vec3<f32> = ((vec3<f32>(x_1340.x, x_1340.y, x_1340.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
  let x_1344 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1343.x, x_1343.y, x_1343.z, x_1344.w);
  let x_1346 : vec4<f32> = u_xlat0;
  let x_1348 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_1346.x, x_1346.y, x_1346.z, x_1346.x));
  u_xlatb0 = vec3<bool>(x_1348.x, x_1348.y, x_1348.z);
  let x_1351 : bool = u_xlatb0.x;
  if (x_1351) {
    let x_1356 : f32 = u_xlat1.x;
    x_1352 = x_1356;
  } else {
    let x_1359 : f32 = u_xlat2.x;
    x_1352 = x_1359;
  }
  let x_1360 : f32 = x_1352;
  u_xlat0.x = x_1360;
  let x_1363 : bool = u_xlatb0.y;
  if (x_1363) {
    let x_1368 : f32 = u_xlat1.y;
    x_1364 = x_1368;
  } else {
    let x_1371 : f32 = u_xlat2.y;
    x_1364 = x_1371;
  }
  let x_1372 : f32 = x_1364;
  u_xlat0.y = x_1372;
  let x_1375 : bool = u_xlatb0.z;
  if (x_1375) {
    let x_1380 : f32 = u_xlat1.z;
    x_1376 = x_1380;
  } else {
    let x_1383 : f32 = u_xlat2.z;
    x_1376 = x_1383;
  }
  let x_1384 : f32 = x_1376;
  u_xlat0.z = x_1384;
  let x_1386 : f32 = u_xlat21;
  let x_1391 : vec4<f32> = u_xlat0;
  let x_1393 : vec3<f32> = ((vec3<f32>(x_1386, x_1386, x_1386) * vec3<f32>(0.0039215688593685627f, 0.0039215688593685627f, 0.0039215688593685627f)) + vec3<f32>(x_1391.x, x_1391.y, x_1391.z));
  let x_1394 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1393.x, x_1393.y, x_1393.z, x_1394.w);
  let x_1396 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_1396.x, x_1396.y, x_1396.z) * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
  let x_1399 : vec4<f32> = u_xlat0;
  let x_1401 : vec3<f32> = (vec3<f32>(x_1399.x, x_1399.y, x_1399.z) + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
  let x_1402 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1401.x, x_1401.y, x_1401.z, x_1402.w);
  let x_1404 : vec4<f32> = u_xlat2;
  let x_1406 : vec3<f32> = (vec3<f32>(x_1404.x, x_1404.y, x_1404.z) * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
  let x_1407 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1406.x, x_1406.y, x_1406.z, x_1407.w);
  let x_1409 : vec4<f32> = u_xlat2;
  let x_1412 : vec3<f32> = log2(abs(vec3<f32>(x_1409.x, x_1409.y, x_1409.z)));
  let x_1413 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1412.x, x_1412.y, x_1412.z, x_1413.w);
  let x_1415 : vec4<f32> = u_xlat2;
  let x_1417 : vec3<f32> = (vec3<f32>(x_1415.x, x_1415.y, x_1415.z) * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
  let x_1418 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1417.x, x_1417.y, x_1417.z, x_1418.w);
  let x_1420 : vec4<f32> = u_xlat2;
  let x_1422 : vec3<f32> = exp2(vec3<f32>(x_1420.x, x_1420.y, x_1420.z));
  let x_1423 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1422.x, x_1422.y, x_1422.z, x_1423.w);
  let x_1425 : vec4<f32> = u_xlat0;
  let x_1427 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_1425.x, x_1425.y, x_1425.z, x_1425.x));
  u_xlatb0 = vec3<bool>(x_1427.x, x_1427.y, x_1427.z);
  let x_1430 : bool = u_xlatb0.x;
  if (x_1430) {
    let x_1435 : f32 = u_xlat1.x;
    x_1431 = x_1435;
  } else {
    let x_1438 : f32 = u_xlat2.x;
    x_1431 = x_1438;
  }
  let x_1439 : f32 = x_1431;
  u_xlat0.x = x_1439;
  let x_1442 : bool = u_xlatb0.y;
  if (x_1442) {
    let x_1447 : f32 = u_xlat1.y;
    x_1443 = x_1447;
  } else {
    let x_1450 : f32 = u_xlat2.y;
    x_1443 = x_1450;
  }
  let x_1451 : f32 = x_1443;
  u_xlat0.y = x_1451;
  let x_1454 : bool = u_xlatb0.z;
  if (x_1454) {
    let x_1459 : f32 = u_xlat1.z;
    x_1455 = x_1459;
  } else {
    let x_1462 : f32 = u_xlat2.z;
    x_1455 = x_1462;
  }
  let x_1463 : f32 = x_1455;
  u_xlat0.z = x_1463;
  let x_1467 : vec4<f32> = u_xlat0;
  let x_1470 : vec3<f32> = max(vec3<f32>(x_1467.x, x_1467.y, x_1467.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1471 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1470.x, x_1470.y, x_1470.z, x_1471.w);
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


