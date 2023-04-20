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
  x_LensDirt_Params : vec4<f32>,
  /* @offset(144) */
  x_LensDirt_Intensity : f32,
  /* @offset(160) */
  x_Distortion_Params1 : vec4<f32>,
  /* @offset(176) */
  x_Distortion_Params2 : vec4<f32>,
  /* @offset(192) */
  x_Chroma_Params : f32,
  /* @offset(208) */
  x_Vignette_Params1 : vec4<f32>,
  /* @offset(224) */
  x_Vignette_Params2 : vec4<f32>,
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

@group(0) @binding(2) var x_LensDirt_Texture : texture_2d<f32>;

var<private> u_xlatb21 : bool;

var<private> u_xlat21 : f32;

@group(0) @binding(4) var x_UserLut : texture_2d<f32>;

@group(0) @binding(3) var x_InternalLut : texture_2d<f32>;

@group(0) @binding(5) var x_BlueNoise_Texture : texture_2d<f32>;

@group(0) @binding(7) var sampler_PointRepeat : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_237 : f32;
  var x_479 : f32;
  var x_664 : f32;
  var hlslcc_movcTemp : vec3<f32>;
  var x_954 : f32;
  var x_966 : f32;
  var x_978 : f32;
  var x_1123 : f32;
  var x_1135 : f32;
  var x_1147 : f32;
  var x_1321 : f32;
  var x_1333 : f32;
  var x_1345 : f32;
  var x_1400 : f32;
  var x_1412 : f32;
  var x_1424 : f32;
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
  let x_777 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_776.x, x_776.y, x_776.z, x_777.w);
  let x_779 : vec2<f32> = u_xlat15;
  let x_782 : vec4<f32> = x_25.x_LensDirt_Params;
  let x_786 : vec4<f32> = x_25.x_LensDirt_Params;
  let x_788 : vec2<f32> = ((x_779 * vec2<f32>(x_782.x, x_782.y)) + vec2<f32>(x_786.z, x_786.w));
  let x_789 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_788.x, x_788.y, x_789.z);
  let x_795 : vec3<f32> = u_xlat1;
  let x_798 : f32 = x_25.x_GlobalMipBias.x;
  let x_799 : vec4<f32> = textureSampleBias(x_LensDirt_Texture, sampler_LinearClamp, vec2<f32>(x_795.x, x_795.y), x_798);
  u_xlat3 = vec3<f32>(x_799.x, x_799.y, x_799.z);
  let x_801 : vec3<f32> = u_xlat3;
  let x_804 : f32 = x_25.x_LensDirt_Intensity;
  u_xlat3 = (x_801 * vec3<f32>(x_804, x_804, x_804));
  let x_807 : vec3<f32> = u_xlat3;
  let x_808 : vec4<f32> = u_xlat0;
  let x_811 : vec4<f32> = u_xlat2;
  let x_813 : vec3<f32> = ((x_807 * vec3<f32>(x_808.x, x_808.y, x_808.z)) + vec3<f32>(x_811.x, x_811.y, x_811.z));
  let x_814 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_813.x, x_813.y, x_813.z, x_814.w);
  let x_819 : f32 = x_25.x_Vignette_Params2.z;
  u_xlatb21 = (0.0f < x_819);
  let x_821 : bool = u_xlatb21;
  if (x_821) {
    let x_824 : vec2<f32> = u_xlat15;
    let x_826 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_829 : vec2<f32> = (x_824 + -(vec2<f32>(x_826.x, x_826.y)));
    let x_830 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_829.x, x_829.y, x_830.z);
    let x_832 : vec3<f32> = u_xlat1;
    let x_836 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_838 : vec2<f32> = (abs(vec2<f32>(x_832.x, x_832.y)) * vec2<f32>(x_836.z, x_836.z));
    let x_839 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_839.x, x_838.x, x_838.y);
    let x_842 : f32 = u_xlat1.y;
    let x_845 : f32 = x_25.x_Vignette_Params1.w;
    u_xlat1.x = (x_842 * x_845);
    let x_849 : vec3<f32> = u_xlat1;
    let x_851 : vec3<f32> = u_xlat1;
    u_xlat21 = dot(vec2<f32>(x_849.x, x_849.z), vec2<f32>(x_851.x, x_851.z));
    let x_854 : f32 = u_xlat21;
    u_xlat21 = (-(x_854) + 1.0f);
    let x_857 : f32 = u_xlat21;
    u_xlat21 = max(x_857, 0.0f);
    let x_859 : f32 = u_xlat21;
    u_xlat21 = log2(x_859);
    let x_861 : f32 = u_xlat21;
    let x_863 : f32 = x_25.x_Vignette_Params2.w;
    u_xlat21 = (x_861 * x_863);
    let x_865 : f32 = u_xlat21;
    u_xlat21 = exp2(x_865);
    let x_868 : vec4<f32> = x_25.x_Vignette_Params1;
    u_xlat1 = (-(vec3<f32>(x_868.x, x_868.y, x_868.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_873 : f32 = u_xlat21;
    let x_875 : vec3<f32> = u_xlat1;
    let x_878 : vec4<f32> = x_25.x_Vignette_Params1;
    u_xlat1 = ((vec3<f32>(x_873, x_873, x_873) * x_875) + vec3<f32>(x_878.x, x_878.y, x_878.z));
    let x_881 : vec4<f32> = u_xlat0;
    let x_883 : vec3<f32> = u_xlat1;
    let x_884 : vec3<f32> = (vec3<f32>(x_881.x, x_881.y, x_881.z) * x_883);
    let x_885 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_884.x, x_884.y, x_884.z, x_885.w);
  }
  let x_887 : vec4<f32> = u_xlat0;
  let x_891 : vec4<f32> = x_25.x_Lut_Params;
  let x_893 : vec3<f32> = (vec3<f32>(x_887.x, x_887.y, x_887.z) * vec3<f32>(x_891.w, x_891.w, x_891.w));
  let x_894 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_893.x, x_893.y, x_893.z, x_894.w);
  let x_896 : vec4<f32> = u_xlat0;
  let x_900 : vec3<f32> = clamp(vec3<f32>(x_896.x, x_896.y, x_896.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_901 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_900.x, x_900.y, x_900.z, x_901.w);
  let x_905 : f32 = x_25.x_UserLut_Params.w;
  u_xlatb21 = (0.0f < x_905);
  let x_907 : bool = u_xlatb21;
  if (x_907) {
    let x_910 : vec4<f32> = u_xlat0;
    u_xlat1 = (vec3<f32>(x_910.x, x_910.y, x_910.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
    let x_915 : vec4<f32> = u_xlat0;
    let x_917 : vec3<f32> = log2(vec3<f32>(x_915.x, x_915.y, x_915.z));
    let x_918 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_917.x, x_917.y, x_917.z, x_918.w);
    let x_920 : vec4<f32> = u_xlat2;
    let x_924 : vec3<f32> = (vec3<f32>(x_920.x, x_920.y, x_920.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
    let x_925 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_924.x, x_924.y, x_924.z, x_925.w);
    let x_927 : vec4<f32> = u_xlat2;
    let x_929 : vec3<f32> = exp2(vec3<f32>(x_927.x, x_927.y, x_927.z));
    let x_930 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_929.x, x_929.y, x_929.z, x_930.w);
    let x_932 : vec4<f32> = u_xlat2;
    let x_939 : vec3<f32> = ((vec3<f32>(x_932.x, x_932.y, x_932.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
    let x_940 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_939.x, x_939.y, x_939.z, x_940.w);
    let x_944 : vec4<f32> = u_xlat0;
    let x_947 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_944.x, x_944.y, x_944.z, x_944.x));
    u_xlatb3 = vec3<bool>(x_947.x, x_947.y, x_947.z);
    let x_951 : vec3<f32> = u_xlat1;
    hlslcc_movcTemp = x_951;
    let x_953 : bool = u_xlatb3.x;
    if (x_953) {
      let x_958 : f32 = u_xlat1.x;
      x_954 = x_958;
    } else {
      let x_961 : f32 = u_xlat2.x;
      x_954 = x_961;
    }
    let x_962 : f32 = x_954;
    hlslcc_movcTemp.x = x_962;
    let x_965 : bool = u_xlatb3.y;
    if (x_965) {
      let x_970 : f32 = u_xlat1.y;
      x_966 = x_970;
    } else {
      let x_973 : f32 = u_xlat2.y;
      x_966 = x_973;
    }
    let x_974 : f32 = x_966;
    hlslcc_movcTemp.y = x_974;
    let x_977 : bool = u_xlatb3.z;
    if (x_977) {
      let x_982 : f32 = u_xlat1.z;
      x_978 = x_982;
    } else {
      let x_985 : f32 = u_xlat2.z;
      x_978 = x_985;
    }
    let x_986 : f32 = x_978;
    hlslcc_movcTemp.z = x_986;
    let x_988 : vec3<f32> = hlslcc_movcTemp;
    u_xlat1 = x_988;
    let x_989 : vec3<f32> = u_xlat1;
    let x_992 : vec4<f32> = x_25.x_UserLut_Params;
    let x_994 : vec3<f32> = (vec3<f32>(x_989.z, x_989.x, x_989.y) * vec3<f32>(x_992.z, x_992.z, x_992.z));
    let x_995 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_994.x, x_994.y, x_994.z, x_995.w);
    let x_998 : f32 = u_xlat2.x;
    u_xlat21 = floor(x_998);
    let x_1001 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1003 : vec2<f32> = (vec2<f32>(x_1001.x, x_1001.y) * vec2<f32>(0.5f, 0.5f));
    let x_1004 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1003.x, x_1004.y, x_1004.z, x_1003.y);
    let x_1006 : vec4<f32> = u_xlat2;
    let x_1009 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1012 : vec4<f32> = u_xlat2;
    let x_1014 : vec2<f32> = ((vec2<f32>(x_1006.y, x_1006.z) * vec2<f32>(x_1009.x, x_1009.y)) + vec2<f32>(x_1012.x, x_1012.w));
    let x_1015 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1015.x, x_1014.x, x_1014.y, x_1015.w);
    let x_1017 : f32 = u_xlat21;
    let x_1019 : f32 = x_25.x_UserLut_Params.y;
    let x_1022 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_1017 * x_1019) + x_1022);
    let x_1029 : vec4<f32> = u_xlat2;
    let x_1031 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1029.x, x_1029.z), 0.0f);
    u_xlat3 = vec3<f32>(x_1031.x, x_1031.y, x_1031.z);
    let x_1034 : f32 = x_25.x_UserLut_Params.y;
    u_xlat4.x = x_1034;
    u_xlat4.y = 0.0f;
    let x_1037 : vec4<f32> = u_xlat2;
    let x_1039 : vec4<f32> = u_xlat4;
    let x_1041 : vec2<f32> = (vec2<f32>(x_1037.x, x_1037.z) + vec2<f32>(x_1039.x, x_1039.y));
    let x_1042 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1041.x, x_1041.y, x_1042.z, x_1042.w);
    let x_1047 : vec4<f32> = u_xlat2;
    let x_1049 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1047.x, x_1047.y), 0.0f);
    let x_1050 : vec3<f32> = vec3<f32>(x_1049.x, x_1049.y, x_1049.z);
    let x_1051 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1050.x, x_1050.y, x_1050.z, x_1051.w);
    let x_1054 : f32 = u_xlat1.z;
    let x_1056 : f32 = x_25.x_UserLut_Params.z;
    let x_1058 : f32 = u_xlat21;
    u_xlat21 = ((x_1054 * x_1056) + -(x_1058));
    let x_1061 : vec3<f32> = u_xlat3;
    let x_1063 : vec4<f32> = u_xlat2;
    let x_1065 : vec3<f32> = (-(x_1061) + vec3<f32>(x_1063.x, x_1063.y, x_1063.z));
    let x_1066 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1065.x, x_1065.y, x_1065.z, x_1066.w);
    let x_1068 : f32 = u_xlat21;
    let x_1070 : vec4<f32> = u_xlat2;
    let x_1073 : vec3<f32> = u_xlat3;
    let x_1074 : vec3<f32> = ((vec3<f32>(x_1068, x_1068, x_1068) * vec3<f32>(x_1070.x, x_1070.y, x_1070.z)) + x_1073);
    let x_1075 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1074.x, x_1074.y, x_1074.z, x_1075.w);
    let x_1077 : vec3<f32> = u_xlat1;
    let x_1079 : vec4<f32> = u_xlat2;
    let x_1081 : vec3<f32> = (-(x_1077) + vec3<f32>(x_1079.x, x_1079.y, x_1079.z));
    let x_1082 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1081.x, x_1081.y, x_1081.z, x_1082.w);
    let x_1085 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1087 : vec4<f32> = u_xlat2;
    let x_1090 : vec3<f32> = u_xlat1;
    u_xlat1 = ((vec3<f32>(x_1085.w, x_1085.w, x_1085.w) * vec3<f32>(x_1087.x, x_1087.y, x_1087.z)) + x_1090);
    let x_1092 : vec3<f32> = u_xlat1;
    let x_1095 : vec3<f32> = (x_1092 * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
    let x_1096 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1095.x, x_1095.y, x_1095.z, x_1096.w);
    let x_1098 : vec3<f32> = u_xlat1;
    u_xlat3 = (x_1098 + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
    let x_1102 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_1102 * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
    let x_1106 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_1106));
    let x_1109 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_1109 * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
    let x_1113 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_1113);
    let x_1117 : vec3<f32> = u_xlat1;
    let x_1119 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_1117.x, x_1117.y, x_1117.z, x_1117.x));
    u_xlatb1 = vec3<bool>(x_1119.x, x_1119.y, x_1119.z);
    let x_1122 : bool = u_xlatb1.x;
    if (x_1122) {
      let x_1127 : f32 = u_xlat2.x;
      x_1123 = x_1127;
    } else {
      let x_1130 : f32 = u_xlat3.x;
      x_1123 = x_1130;
    }
    let x_1131 : f32 = x_1123;
    u_xlat0.x = x_1131;
    let x_1134 : bool = u_xlatb1.y;
    if (x_1134) {
      let x_1139 : f32 = u_xlat2.y;
      x_1135 = x_1139;
    } else {
      let x_1142 : f32 = u_xlat3.y;
      x_1135 = x_1142;
    }
    let x_1143 : f32 = x_1135;
    u_xlat0.y = x_1143;
    let x_1146 : bool = u_xlatb1.z;
    if (x_1146) {
      let x_1151 : f32 = u_xlat2.z;
      x_1147 = x_1151;
    } else {
      let x_1154 : f32 = u_xlat3.z;
      x_1147 = x_1154;
    }
    let x_1155 : f32 = x_1147;
    u_xlat0.z = x_1155;
  }
  let x_1157 : vec4<f32> = u_xlat0;
  let x_1160 : vec4<f32> = x_25.x_Lut_Params;
  let x_1162 : vec3<f32> = (vec3<f32>(x_1157.x, x_1157.y, x_1157.z) * vec3<f32>(x_1160.z, x_1160.z, x_1160.z));
  let x_1163 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1162.x, x_1162.y, x_1163.z, x_1162.z);
  let x_1166 : f32 = u_xlat0.w;
  u_xlat21 = floor(x_1166);
  let x_1169 : vec4<f32> = x_25.x_Lut_Params;
  let x_1171 : vec2<f32> = (vec2<f32>(x_1169.x, x_1169.y) * vec2<f32>(0.5f, 0.5f));
  let x_1172 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1171.x, x_1171.y, x_1172.z);
  let x_1174 : vec4<f32> = u_xlat0;
  let x_1177 : vec4<f32> = x_25.x_Lut_Params;
  let x_1180 : vec3<f32> = u_xlat1;
  let x_1182 : vec2<f32> = ((vec2<f32>(x_1174.x, x_1174.y) * vec2<f32>(x_1177.x, x_1177.y)) + vec2<f32>(x_1180.x, x_1180.y));
  let x_1183 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1183.x, x_1182.x, x_1182.y);
  let x_1185 : f32 = u_xlat21;
  let x_1187 : f32 = x_25.x_Lut_Params.y;
  let x_1190 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_1185 * x_1187) + x_1190);
  let x_1197 : vec3<f32> = u_xlat1;
  let x_1199 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1197.x, x_1197.z), 0.0f);
  let x_1200 : vec3<f32> = vec3<f32>(x_1199.x, x_1199.y, x_1199.z);
  let x_1201 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1200.x, x_1200.y, x_1200.z, x_1201.w);
  let x_1204 : f32 = x_25.x_Lut_Params.y;
  u_xlat0.x = x_1204;
  u_xlat0.y = 0.0f;
  let x_1207 : vec4<f32> = u_xlat0;
  let x_1209 : vec3<f32> = u_xlat1;
  let x_1211 : vec2<f32> = (vec2<f32>(x_1207.x, x_1207.y) + vec2<f32>(x_1209.x, x_1209.z));
  let x_1212 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1211.x, x_1211.y, x_1212.z, x_1212.w);
  let x_1217 : vec4<f32> = u_xlat0;
  let x_1219 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1217.x, x_1217.y), 0.0f);
  u_xlat1 = vec3<f32>(x_1219.x, x_1219.y, x_1219.z);
  let x_1222 : f32 = u_xlat0.z;
  let x_1224 : f32 = x_25.x_Lut_Params.z;
  let x_1226 : f32 = u_xlat21;
  u_xlat0.x = ((x_1222 * x_1224) + -(x_1226));
  let x_1230 : vec4<f32> = u_xlat2;
  let x_1233 : vec3<f32> = u_xlat1;
  u_xlat7 = (-(vec3<f32>(x_1230.x, x_1230.y, x_1230.z)) + x_1233);
  let x_1235 : vec4<f32> = u_xlat0;
  let x_1237 : vec3<f32> = u_xlat7;
  let x_1239 : vec4<f32> = u_xlat2;
  let x_1241 : vec3<f32> = ((vec3<f32>(x_1235.x, x_1235.x, x_1235.x) * x_1237) + vec3<f32>(x_1239.x, x_1239.y, x_1239.z));
  let x_1242 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1241.x, x_1241.y, x_1241.z, x_1242.w);
  let x_1244 : vec2<f32> = vs_TEXCOORD0;
  let x_1247 : vec4<f32> = x_25.x_Dithering_Params;
  let x_1251 : vec4<f32> = x_25.x_Dithering_Params;
  let x_1253 : vec2<f32> = ((x_1244 * vec2<f32>(x_1247.x, x_1247.y)) + vec2<f32>(x_1251.z, x_1251.w));
  let x_1254 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1253.x, x_1253.y, x_1254.z);
  let x_1261 : vec3<f32> = u_xlat1;
  let x_1264 : f32 = x_25.x_GlobalMipBias.x;
  let x_1265 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_1261.x, x_1261.y), x_1264);
  u_xlat21 = x_1265.w;
  let x_1267 : f32 = u_xlat21;
  u_xlat21 = ((x_1267 * 2.0f) + -1.0f);
  let x_1270 : f32 = u_xlat21;
  u_xlatb1.x = (x_1270 >= 0.0f);
  let x_1274 : bool = u_xlatb1.x;
  u_xlat1.x = select(-1.0f, 1.0f, x_1274);
  let x_1277 : f32 = u_xlat21;
  u_xlat21 = (-(abs(x_1277)) + 1.0f);
  let x_1281 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_1281);
  let x_1283 : f32 = u_xlat21;
  u_xlat21 = (-(x_1283) + 1.0f);
  let x_1286 : f32 = u_xlat21;
  let x_1288 : f32 = u_xlat1.x;
  u_xlat21 = (x_1286 * x_1288);
  let x_1290 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_1290.x, x_1290.y, x_1290.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
  let x_1293 : vec4<f32> = u_xlat0;
  let x_1296 : vec3<f32> = log2(abs(vec3<f32>(x_1293.x, x_1293.y, x_1293.z)));
  let x_1297 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1296.x, x_1296.y, x_1296.z, x_1297.w);
  let x_1299 : vec4<f32> = u_xlat2;
  let x_1301 : vec3<f32> = (vec3<f32>(x_1299.x, x_1299.y, x_1299.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
  let x_1302 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1301.x, x_1301.y, x_1301.z, x_1302.w);
  let x_1304 : vec4<f32> = u_xlat2;
  let x_1306 : vec3<f32> = exp2(vec3<f32>(x_1304.x, x_1304.y, x_1304.z));
  let x_1307 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1306.x, x_1306.y, x_1306.z, x_1307.w);
  let x_1309 : vec4<f32> = u_xlat2;
  let x_1312 : vec3<f32> = ((vec3<f32>(x_1309.x, x_1309.y, x_1309.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
  let x_1313 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1312.x, x_1312.y, x_1312.z, x_1313.w);
  let x_1315 : vec4<f32> = u_xlat0;
  let x_1317 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_1315.x, x_1315.y, x_1315.z, x_1315.x));
  u_xlatb0 = vec3<bool>(x_1317.x, x_1317.y, x_1317.z);
  let x_1320 : bool = u_xlatb0.x;
  if (x_1320) {
    let x_1325 : f32 = u_xlat1.x;
    x_1321 = x_1325;
  } else {
    let x_1328 : f32 = u_xlat2.x;
    x_1321 = x_1328;
  }
  let x_1329 : f32 = x_1321;
  u_xlat0.x = x_1329;
  let x_1332 : bool = u_xlatb0.y;
  if (x_1332) {
    let x_1337 : f32 = u_xlat1.y;
    x_1333 = x_1337;
  } else {
    let x_1340 : f32 = u_xlat2.y;
    x_1333 = x_1340;
  }
  let x_1341 : f32 = x_1333;
  u_xlat0.y = x_1341;
  let x_1344 : bool = u_xlatb0.z;
  if (x_1344) {
    let x_1349 : f32 = u_xlat1.z;
    x_1345 = x_1349;
  } else {
    let x_1352 : f32 = u_xlat2.z;
    x_1345 = x_1352;
  }
  let x_1353 : f32 = x_1345;
  u_xlat0.z = x_1353;
  let x_1355 : f32 = u_xlat21;
  let x_1360 : vec4<f32> = u_xlat0;
  let x_1362 : vec3<f32> = ((vec3<f32>(x_1355, x_1355, x_1355) * vec3<f32>(0.0039215688593685627f, 0.0039215688593685627f, 0.0039215688593685627f)) + vec3<f32>(x_1360.x, x_1360.y, x_1360.z));
  let x_1363 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1362.x, x_1362.y, x_1362.z, x_1363.w);
  let x_1365 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_1365.x, x_1365.y, x_1365.z) * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
  let x_1368 : vec4<f32> = u_xlat0;
  let x_1370 : vec3<f32> = (vec3<f32>(x_1368.x, x_1368.y, x_1368.z) + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
  let x_1371 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1370.x, x_1370.y, x_1370.z, x_1371.w);
  let x_1373 : vec4<f32> = u_xlat2;
  let x_1375 : vec3<f32> = (vec3<f32>(x_1373.x, x_1373.y, x_1373.z) * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
  let x_1376 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1375.x, x_1375.y, x_1375.z, x_1376.w);
  let x_1378 : vec4<f32> = u_xlat2;
  let x_1381 : vec3<f32> = log2(abs(vec3<f32>(x_1378.x, x_1378.y, x_1378.z)));
  let x_1382 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1381.x, x_1381.y, x_1381.z, x_1382.w);
  let x_1384 : vec4<f32> = u_xlat2;
  let x_1386 : vec3<f32> = (vec3<f32>(x_1384.x, x_1384.y, x_1384.z) * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
  let x_1387 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1386.x, x_1386.y, x_1386.z, x_1387.w);
  let x_1389 : vec4<f32> = u_xlat2;
  let x_1391 : vec3<f32> = exp2(vec3<f32>(x_1389.x, x_1389.y, x_1389.z));
  let x_1392 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1391.x, x_1391.y, x_1391.z, x_1392.w);
  let x_1394 : vec4<f32> = u_xlat0;
  let x_1396 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_1394.x, x_1394.y, x_1394.z, x_1394.x));
  u_xlatb0 = vec3<bool>(x_1396.x, x_1396.y, x_1396.z);
  let x_1399 : bool = u_xlatb0.x;
  if (x_1399) {
    let x_1404 : f32 = u_xlat1.x;
    x_1400 = x_1404;
  } else {
    let x_1407 : f32 = u_xlat2.x;
    x_1400 = x_1407;
  }
  let x_1408 : f32 = x_1400;
  u_xlat0.x = x_1408;
  let x_1411 : bool = u_xlatb0.y;
  if (x_1411) {
    let x_1416 : f32 = u_xlat1.y;
    x_1412 = x_1416;
  } else {
    let x_1419 : f32 = u_xlat2.y;
    x_1412 = x_1419;
  }
  let x_1420 : f32 = x_1412;
  u_xlat0.y = x_1420;
  let x_1423 : bool = u_xlatb0.z;
  if (x_1423) {
    let x_1428 : f32 = u_xlat1.z;
    x_1424 = x_1428;
  } else {
    let x_1431 : f32 = u_xlat2.z;
    x_1424 = x_1431;
  }
  let x_1432 : f32 = x_1424;
  u_xlat0.z = x_1432;
  let x_1436 : vec4<f32> = u_xlat0;
  let x_1439 : vec3<f32> = max(vec3<f32>(x_1436.x, x_1436.y, x_1436.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1440 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1439.x, x_1439.y, x_1439.z, x_1440.w);
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


