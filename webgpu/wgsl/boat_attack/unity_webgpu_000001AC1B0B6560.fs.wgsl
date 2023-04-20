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
  var x_977 : f32;
  var x_989 : f32;
  var x_1001 : f32;
  var x_1146 : f32;
  var x_1158 : f32;
  var x_1170 : f32;
  var x_1414 : f32;
  var x_1426 : f32;
  var x_1438 : f32;
  var x_1493 : f32;
  var x_1505 : f32;
  var x_1517 : f32;
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
  u_xlat1 = (vec3<f32>(x_859.x, x_859.y, x_859.z) * vec3<f32>(1.31338608264923095703f, 1.31338608264923095703f, 1.31338608264923095703f));
  let x_864 : vec4<f32> = u_xlat0;
  let x_871 : vec3<f32> = ((vec3<f32>(x_864.x, x_864.y, x_864.z) * vec3<f32>(0.26267722249031066895f, 0.26267722249031066895f, 0.26267722249031066895f)) + vec3<f32>(0.06959999352693557739f, 0.06959999352693557739f, 0.06959999352693557739f));
  let x_872 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_871.x, x_871.y, x_871.z, x_872.w);
  let x_874 : vec3<f32> = u_xlat1;
  let x_875 : vec4<f32> = u_xlat2;
  let x_880 : vec3<f32> = ((x_874 * vec3<f32>(x_875.x, x_875.y, x_875.z)) + vec3<f32>(0.00543999997898936272f, 0.00543999997898936272f, 0.00543999997898936272f));
  let x_881 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_880.x, x_880.y, x_880.z, x_881.w);
  let x_883 : vec4<f32> = u_xlat0;
  let x_888 : vec3<f32> = ((vec3<f32>(x_883.x, x_883.y, x_883.z) * vec3<f32>(0.26267722249031066895f, 0.26267722249031066895f, 0.26267722249031066895f)) + vec3<f32>(0.28999999165534973145f, 0.28999999165534973145f, 0.28999999165534973145f));
  let x_889 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_888.x, x_888.y, x_888.z, x_889.w);
  let x_891 : vec3<f32> = u_xlat1;
  let x_892 : vec4<f32> = u_xlat0;
  let x_897 : vec3<f32> = ((x_891 * vec3<f32>(x_892.x, x_892.y, x_892.z)) + vec3<f32>(0.08160001039505004883f, 0.08160001039505004883f, 0.08160001039505004883f));
  let x_898 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_897.x, x_897.y, x_897.z, x_898.w);
  let x_900 : vec4<f32> = u_xlat2;
  let x_902 : vec4<f32> = u_xlat0;
  let x_904 : vec3<f32> = (vec3<f32>(x_900.x, x_900.y, x_900.z) / vec3<f32>(x_902.x, x_902.y, x_902.z));
  let x_905 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_904.x, x_904.y, x_904.z, x_905.w);
  let x_907 : vec4<f32> = u_xlat0;
  let x_911 : vec3<f32> = (vec3<f32>(x_907.x, x_907.y, x_907.z) + vec3<f32>(-0.06666666269302368164f, -0.06666666269302368164f, -0.06666666269302368164f));
  let x_912 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_911.x, x_911.y, x_911.z, x_912.w);
  let x_914 : vec4<f32> = u_xlat0;
  let x_916 : vec3<f32> = (vec3<f32>(x_914.x, x_914.y, x_914.z) * vec3<f32>(1.31338608264923095703f, 1.31338608264923095703f, 1.31338608264923095703f));
  let x_917 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_916.x, x_916.y, x_916.z, x_917.w);
  let x_919 : vec4<f32> = u_xlat0;
  let x_923 : vec3<f32> = clamp(vec3<f32>(x_919.x, x_919.y, x_919.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_924 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_923.x, x_923.y, x_923.z, x_924.w);
  let x_928 : f32 = x_25.x_UserLut_Params.w;
  u_xlatb21 = (0.0f < x_928);
  let x_930 : bool = u_xlatb21;
  if (x_930) {
    let x_933 : vec4<f32> = u_xlat0;
    u_xlat1 = (vec3<f32>(x_933.x, x_933.y, x_933.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
    let x_938 : vec4<f32> = u_xlat0;
    let x_940 : vec3<f32> = log2(vec3<f32>(x_938.x, x_938.y, x_938.z));
    let x_941 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_940.x, x_940.y, x_940.z, x_941.w);
    let x_943 : vec4<f32> = u_xlat2;
    let x_947 : vec3<f32> = (vec3<f32>(x_943.x, x_943.y, x_943.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
    let x_948 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_947.x, x_947.y, x_947.z, x_948.w);
    let x_950 : vec4<f32> = u_xlat2;
    let x_952 : vec3<f32> = exp2(vec3<f32>(x_950.x, x_950.y, x_950.z));
    let x_953 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_952.x, x_952.y, x_952.z, x_953.w);
    let x_955 : vec4<f32> = u_xlat2;
    let x_962 : vec3<f32> = ((vec3<f32>(x_955.x, x_955.y, x_955.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
    let x_963 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_962.x, x_962.y, x_962.z, x_963.w);
    let x_967 : vec4<f32> = u_xlat0;
    let x_970 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_967.x, x_967.y, x_967.z, x_967.x));
    u_xlatb3 = vec3<bool>(x_970.x, x_970.y, x_970.z);
    let x_974 : vec3<f32> = u_xlat1;
    hlslcc_movcTemp = x_974;
    let x_976 : bool = u_xlatb3.x;
    if (x_976) {
      let x_981 : f32 = u_xlat1.x;
      x_977 = x_981;
    } else {
      let x_984 : f32 = u_xlat2.x;
      x_977 = x_984;
    }
    let x_985 : f32 = x_977;
    hlslcc_movcTemp.x = x_985;
    let x_988 : bool = u_xlatb3.y;
    if (x_988) {
      let x_993 : f32 = u_xlat1.y;
      x_989 = x_993;
    } else {
      let x_996 : f32 = u_xlat2.y;
      x_989 = x_996;
    }
    let x_997 : f32 = x_989;
    hlslcc_movcTemp.y = x_997;
    let x_1000 : bool = u_xlatb3.z;
    if (x_1000) {
      let x_1005 : f32 = u_xlat1.z;
      x_1001 = x_1005;
    } else {
      let x_1008 : f32 = u_xlat2.z;
      x_1001 = x_1008;
    }
    let x_1009 : f32 = x_1001;
    hlslcc_movcTemp.z = x_1009;
    let x_1011 : vec3<f32> = hlslcc_movcTemp;
    u_xlat1 = x_1011;
    let x_1012 : vec3<f32> = u_xlat1;
    let x_1015 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1017 : vec3<f32> = (vec3<f32>(x_1012.z, x_1012.x, x_1012.y) * vec3<f32>(x_1015.z, x_1015.z, x_1015.z));
    let x_1018 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1017.x, x_1017.y, x_1017.z, x_1018.w);
    let x_1021 : f32 = u_xlat2.x;
    u_xlat21 = floor(x_1021);
    let x_1024 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1026 : vec2<f32> = (vec2<f32>(x_1024.x, x_1024.y) * vec2<f32>(0.5f, 0.5f));
    let x_1027 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1026.x, x_1027.y, x_1027.z, x_1026.y);
    let x_1029 : vec4<f32> = u_xlat2;
    let x_1032 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1035 : vec4<f32> = u_xlat2;
    let x_1037 : vec2<f32> = ((vec2<f32>(x_1029.y, x_1029.z) * vec2<f32>(x_1032.x, x_1032.y)) + vec2<f32>(x_1035.x, x_1035.w));
    let x_1038 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1038.x, x_1037.x, x_1037.y, x_1038.w);
    let x_1040 : f32 = u_xlat21;
    let x_1042 : f32 = x_25.x_UserLut_Params.y;
    let x_1045 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_1040 * x_1042) + x_1045);
    let x_1052 : vec4<f32> = u_xlat2;
    let x_1054 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1052.x, x_1052.z), 0.0f);
    u_xlat3 = vec3<f32>(x_1054.x, x_1054.y, x_1054.z);
    let x_1057 : f32 = x_25.x_UserLut_Params.y;
    u_xlat4.x = x_1057;
    u_xlat4.y = 0.0f;
    let x_1060 : vec4<f32> = u_xlat2;
    let x_1062 : vec4<f32> = u_xlat4;
    let x_1064 : vec2<f32> = (vec2<f32>(x_1060.x, x_1060.z) + vec2<f32>(x_1062.x, x_1062.y));
    let x_1065 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1064.x, x_1064.y, x_1065.z, x_1065.w);
    let x_1070 : vec4<f32> = u_xlat2;
    let x_1072 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1070.x, x_1070.y), 0.0f);
    let x_1073 : vec3<f32> = vec3<f32>(x_1072.x, x_1072.y, x_1072.z);
    let x_1074 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1073.x, x_1073.y, x_1073.z, x_1074.w);
    let x_1077 : f32 = u_xlat1.z;
    let x_1079 : f32 = x_25.x_UserLut_Params.z;
    let x_1081 : f32 = u_xlat21;
    u_xlat21 = ((x_1077 * x_1079) + -(x_1081));
    let x_1084 : vec3<f32> = u_xlat3;
    let x_1086 : vec4<f32> = u_xlat2;
    let x_1088 : vec3<f32> = (-(x_1084) + vec3<f32>(x_1086.x, x_1086.y, x_1086.z));
    let x_1089 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1088.x, x_1088.y, x_1088.z, x_1089.w);
    let x_1091 : f32 = u_xlat21;
    let x_1093 : vec4<f32> = u_xlat2;
    let x_1096 : vec3<f32> = u_xlat3;
    let x_1097 : vec3<f32> = ((vec3<f32>(x_1091, x_1091, x_1091) * vec3<f32>(x_1093.x, x_1093.y, x_1093.z)) + x_1096);
    let x_1098 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1097.x, x_1097.y, x_1097.z, x_1098.w);
    let x_1100 : vec3<f32> = u_xlat1;
    let x_1102 : vec4<f32> = u_xlat2;
    let x_1104 : vec3<f32> = (-(x_1100) + vec3<f32>(x_1102.x, x_1102.y, x_1102.z));
    let x_1105 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1104.x, x_1104.y, x_1104.z, x_1105.w);
    let x_1108 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1110 : vec4<f32> = u_xlat2;
    let x_1113 : vec3<f32> = u_xlat1;
    u_xlat1 = ((vec3<f32>(x_1108.w, x_1108.w, x_1108.w) * vec3<f32>(x_1110.x, x_1110.y, x_1110.z)) + x_1113);
    let x_1115 : vec3<f32> = u_xlat1;
    let x_1118 : vec3<f32> = (x_1115 * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
    let x_1119 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1118.x, x_1118.y, x_1118.z, x_1119.w);
    let x_1121 : vec3<f32> = u_xlat1;
    u_xlat3 = (x_1121 + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
    let x_1125 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_1125 * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
    let x_1129 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_1129));
    let x_1132 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_1132 * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
    let x_1136 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_1136);
    let x_1140 : vec3<f32> = u_xlat1;
    let x_1142 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_1140.x, x_1140.y, x_1140.z, x_1140.x));
    u_xlatb1 = vec3<bool>(x_1142.x, x_1142.y, x_1142.z);
    let x_1145 : bool = u_xlatb1.x;
    if (x_1145) {
      let x_1150 : f32 = u_xlat2.x;
      x_1146 = x_1150;
    } else {
      let x_1153 : f32 = u_xlat3.x;
      x_1146 = x_1153;
    }
    let x_1154 : f32 = x_1146;
    u_xlat0.x = x_1154;
    let x_1157 : bool = u_xlatb1.y;
    if (x_1157) {
      let x_1162 : f32 = u_xlat2.y;
      x_1158 = x_1162;
    } else {
      let x_1165 : f32 = u_xlat3.y;
      x_1158 = x_1165;
    }
    let x_1166 : f32 = x_1158;
    u_xlat0.y = x_1166;
    let x_1169 : bool = u_xlatb1.z;
    if (x_1169) {
      let x_1174 : f32 = u_xlat2.z;
      x_1170 = x_1174;
    } else {
      let x_1177 : f32 = u_xlat3.z;
      x_1170 = x_1177;
    }
    let x_1178 : f32 = x_1170;
    u_xlat0.z = x_1178;
  }
  let x_1180 : vec4<f32> = u_xlat0;
  let x_1183 : vec4<f32> = x_25.x_Lut_Params;
  let x_1185 : vec3<f32> = (vec3<f32>(x_1180.x, x_1180.y, x_1180.z) * vec3<f32>(x_1183.z, x_1183.z, x_1183.z));
  let x_1186 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1185.x, x_1185.y, x_1186.z, x_1185.z);
  let x_1189 : f32 = u_xlat0.w;
  u_xlat21 = floor(x_1189);
  let x_1192 : vec4<f32> = x_25.x_Lut_Params;
  let x_1194 : vec2<f32> = (vec2<f32>(x_1192.x, x_1192.y) * vec2<f32>(0.5f, 0.5f));
  let x_1195 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1194.x, x_1194.y, x_1195.z);
  let x_1197 : vec4<f32> = u_xlat0;
  let x_1200 : vec4<f32> = x_25.x_Lut_Params;
  let x_1203 : vec3<f32> = u_xlat1;
  let x_1205 : vec2<f32> = ((vec2<f32>(x_1197.x, x_1197.y) * vec2<f32>(x_1200.x, x_1200.y)) + vec2<f32>(x_1203.x, x_1203.y));
  let x_1206 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1206.x, x_1205.x, x_1205.y);
  let x_1208 : f32 = u_xlat21;
  let x_1210 : f32 = x_25.x_Lut_Params.y;
  let x_1213 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_1208 * x_1210) + x_1213);
  let x_1220 : vec3<f32> = u_xlat1;
  let x_1222 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1220.x, x_1220.z), 0.0f);
  let x_1223 : vec3<f32> = vec3<f32>(x_1222.x, x_1222.y, x_1222.z);
  let x_1224 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1223.x, x_1223.y, x_1223.z, x_1224.w);
  let x_1227 : f32 = x_25.x_Lut_Params.y;
  u_xlat0.x = x_1227;
  u_xlat0.y = 0.0f;
  let x_1230 : vec4<f32> = u_xlat0;
  let x_1232 : vec3<f32> = u_xlat1;
  let x_1234 : vec2<f32> = (vec2<f32>(x_1230.x, x_1230.y) + vec2<f32>(x_1232.x, x_1232.z));
  let x_1235 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1234.x, x_1234.y, x_1235.z, x_1235.w);
  let x_1240 : vec4<f32> = u_xlat0;
  let x_1242 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1240.x, x_1240.y), 0.0f);
  u_xlat1 = vec3<f32>(x_1242.x, x_1242.y, x_1242.z);
  let x_1245 : f32 = u_xlat0.z;
  let x_1247 : f32 = x_25.x_Lut_Params.z;
  let x_1249 : f32 = u_xlat21;
  u_xlat0.x = ((x_1245 * x_1247) + -(x_1249));
  let x_1253 : vec4<f32> = u_xlat2;
  let x_1256 : vec3<f32> = u_xlat1;
  u_xlat7 = (-(vec3<f32>(x_1253.x, x_1253.y, x_1253.z)) + x_1256);
  let x_1258 : vec4<f32> = u_xlat0;
  let x_1260 : vec3<f32> = u_xlat7;
  let x_1262 : vec4<f32> = u_xlat2;
  let x_1264 : vec3<f32> = ((vec3<f32>(x_1258.x, x_1258.x, x_1258.x) * x_1260) + vec3<f32>(x_1262.x, x_1262.y, x_1262.z));
  let x_1265 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1264.x, x_1264.y, x_1264.z, x_1265.w);
  let x_1267 : vec2<f32> = vs_TEXCOORD0;
  let x_1270 : vec4<f32> = x_25.x_Grain_TilingParams;
  let x_1274 : vec4<f32> = x_25.x_Grain_TilingParams;
  let x_1276 : vec2<f32> = ((x_1267 * vec2<f32>(x_1270.x, x_1270.y)) + vec2<f32>(x_1274.z, x_1274.w));
  let x_1277 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1276.x, x_1276.y, x_1277.z);
  let x_1284 : vec3<f32> = u_xlat1;
  let x_1287 : f32 = x_25.x_GlobalMipBias.x;
  let x_1288 : vec4<f32> = textureSampleBias(x_Grain_Texture, sampler_LinearRepeat, vec2<f32>(x_1284.x, x_1284.y), x_1287);
  u_xlat21 = x_1288.w;
  let x_1290 : f32 = u_xlat21;
  u_xlat21 = (x_1290 + -0.5f);
  let x_1292 : f32 = u_xlat21;
  let x_1293 : f32 = u_xlat21;
  u_xlat21 = (x_1292 + x_1293);
  let x_1295 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(x_1295.x, x_1295.y, x_1295.z), vec3<f32>(0.21267290413379669189f, 0.71515220403671264648f, 0.07217500358819961548f));
  let x_1304 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_1304);
  let x_1309 : f32 = x_25.x_Grain_Params.y;
  let x_1311 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1309 * -(x_1311)) + 1.0f);
  let x_1317 : f32 = u_xlat21;
  let x_1319 : vec4<f32> = u_xlat0;
  u_xlat8 = (vec3<f32>(x_1317, x_1317, x_1317) * vec3<f32>(x_1319.x, x_1319.y, x_1319.z));
  let x_1322 : vec3<f32> = u_xlat8;
  let x_1325 : vec2<f32> = x_25.x_Grain_Params;
  u_xlat8 = (x_1322 * vec3<f32>(x_1325.x, x_1325.x, x_1325.x));
  let x_1328 : vec3<f32> = u_xlat8;
  let x_1329 : vec3<f32> = u_xlat1;
  let x_1332 : vec4<f32> = u_xlat0;
  let x_1334 : vec3<f32> = ((x_1328 * vec3<f32>(x_1329.x, x_1329.x, x_1329.x)) + vec3<f32>(x_1332.x, x_1332.y, x_1332.z));
  let x_1335 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1334.x, x_1334.y, x_1334.z, x_1335.w);
  let x_1337 : vec2<f32> = vs_TEXCOORD0;
  let x_1340 : vec4<f32> = x_25.x_Dithering_Params;
  let x_1344 : vec4<f32> = x_25.x_Dithering_Params;
  let x_1346 : vec2<f32> = ((x_1337 * vec2<f32>(x_1340.x, x_1340.y)) + vec2<f32>(x_1344.z, x_1344.w));
  let x_1347 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1346.x, x_1346.y, x_1347.z);
  let x_1354 : vec3<f32> = u_xlat1;
  let x_1357 : f32 = x_25.x_GlobalMipBias.x;
  let x_1358 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_1354.x, x_1354.y), x_1357);
  u_xlat21 = x_1358.w;
  let x_1360 : f32 = u_xlat21;
  u_xlat21 = ((x_1360 * 2.0f) + -1.0f);
  let x_1363 : f32 = u_xlat21;
  u_xlatb1.x = (x_1363 >= 0.0f);
  let x_1367 : bool = u_xlatb1.x;
  u_xlat1.x = select(-1.0f, 1.0f, x_1367);
  let x_1370 : f32 = u_xlat21;
  u_xlat21 = (-(abs(x_1370)) + 1.0f);
  let x_1374 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_1374);
  let x_1376 : f32 = u_xlat21;
  u_xlat21 = (-(x_1376) + 1.0f);
  let x_1379 : f32 = u_xlat21;
  let x_1381 : f32 = u_xlat1.x;
  u_xlat21 = (x_1379 * x_1381);
  let x_1383 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_1383.x, x_1383.y, x_1383.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
  let x_1386 : vec4<f32> = u_xlat0;
  let x_1389 : vec3<f32> = log2(abs(vec3<f32>(x_1386.x, x_1386.y, x_1386.z)));
  let x_1390 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1389.x, x_1389.y, x_1389.z, x_1390.w);
  let x_1392 : vec4<f32> = u_xlat2;
  let x_1394 : vec3<f32> = (vec3<f32>(x_1392.x, x_1392.y, x_1392.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
  let x_1395 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1394.x, x_1394.y, x_1394.z, x_1395.w);
  let x_1397 : vec4<f32> = u_xlat2;
  let x_1399 : vec3<f32> = exp2(vec3<f32>(x_1397.x, x_1397.y, x_1397.z));
  let x_1400 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1399.x, x_1399.y, x_1399.z, x_1400.w);
  let x_1402 : vec4<f32> = u_xlat2;
  let x_1405 : vec3<f32> = ((vec3<f32>(x_1402.x, x_1402.y, x_1402.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
  let x_1406 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1405.x, x_1405.y, x_1405.z, x_1406.w);
  let x_1408 : vec4<f32> = u_xlat0;
  let x_1410 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_1408.x, x_1408.y, x_1408.z, x_1408.x));
  u_xlatb0 = vec3<bool>(x_1410.x, x_1410.y, x_1410.z);
  let x_1413 : bool = u_xlatb0.x;
  if (x_1413) {
    let x_1418 : f32 = u_xlat1.x;
    x_1414 = x_1418;
  } else {
    let x_1421 : f32 = u_xlat2.x;
    x_1414 = x_1421;
  }
  let x_1422 : f32 = x_1414;
  u_xlat0.x = x_1422;
  let x_1425 : bool = u_xlatb0.y;
  if (x_1425) {
    let x_1430 : f32 = u_xlat1.y;
    x_1426 = x_1430;
  } else {
    let x_1433 : f32 = u_xlat2.y;
    x_1426 = x_1433;
  }
  let x_1434 : f32 = x_1426;
  u_xlat0.y = x_1434;
  let x_1437 : bool = u_xlatb0.z;
  if (x_1437) {
    let x_1442 : f32 = u_xlat1.z;
    x_1438 = x_1442;
  } else {
    let x_1445 : f32 = u_xlat2.z;
    x_1438 = x_1445;
  }
  let x_1446 : f32 = x_1438;
  u_xlat0.z = x_1446;
  let x_1448 : f32 = u_xlat21;
  let x_1453 : vec4<f32> = u_xlat0;
  let x_1455 : vec3<f32> = ((vec3<f32>(x_1448, x_1448, x_1448) * vec3<f32>(0.0039215688593685627f, 0.0039215688593685627f, 0.0039215688593685627f)) + vec3<f32>(x_1453.x, x_1453.y, x_1453.z));
  let x_1456 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1455.x, x_1455.y, x_1455.z, x_1456.w);
  let x_1458 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_1458.x, x_1458.y, x_1458.z) * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
  let x_1461 : vec4<f32> = u_xlat0;
  let x_1463 : vec3<f32> = (vec3<f32>(x_1461.x, x_1461.y, x_1461.z) + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
  let x_1464 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1463.x, x_1463.y, x_1463.z, x_1464.w);
  let x_1466 : vec4<f32> = u_xlat2;
  let x_1468 : vec3<f32> = (vec3<f32>(x_1466.x, x_1466.y, x_1466.z) * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
  let x_1469 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1468.x, x_1468.y, x_1468.z, x_1469.w);
  let x_1471 : vec4<f32> = u_xlat2;
  let x_1474 : vec3<f32> = log2(abs(vec3<f32>(x_1471.x, x_1471.y, x_1471.z)));
  let x_1475 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1474.x, x_1474.y, x_1474.z, x_1475.w);
  let x_1477 : vec4<f32> = u_xlat2;
  let x_1479 : vec3<f32> = (vec3<f32>(x_1477.x, x_1477.y, x_1477.z) * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
  let x_1480 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1479.x, x_1479.y, x_1479.z, x_1480.w);
  let x_1482 : vec4<f32> = u_xlat2;
  let x_1484 : vec3<f32> = exp2(vec3<f32>(x_1482.x, x_1482.y, x_1482.z));
  let x_1485 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1484.x, x_1484.y, x_1484.z, x_1485.w);
  let x_1487 : vec4<f32> = u_xlat0;
  let x_1489 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_1487.x, x_1487.y, x_1487.z, x_1487.x));
  u_xlatb0 = vec3<bool>(x_1489.x, x_1489.y, x_1489.z);
  let x_1492 : bool = u_xlatb0.x;
  if (x_1492) {
    let x_1497 : f32 = u_xlat1.x;
    x_1493 = x_1497;
  } else {
    let x_1500 : f32 = u_xlat2.x;
    x_1493 = x_1500;
  }
  let x_1501 : f32 = x_1493;
  u_xlat0.x = x_1501;
  let x_1504 : bool = u_xlatb0.y;
  if (x_1504) {
    let x_1509 : f32 = u_xlat1.y;
    x_1505 = x_1509;
  } else {
    let x_1512 : f32 = u_xlat2.y;
    x_1505 = x_1512;
  }
  let x_1513 : f32 = x_1505;
  u_xlat0.y = x_1513;
  let x_1516 : bool = u_xlatb0.z;
  if (x_1516) {
    let x_1521 : f32 = u_xlat1.z;
    x_1517 = x_1521;
  } else {
    let x_1524 : f32 = u_xlat2.z;
    x_1517 = x_1524;
  }
  let x_1525 : f32 = x_1517;
  u_xlat0.z = x_1525;
  let x_1529 : vec4<f32> = u_xlat0;
  let x_1532 : vec3<f32> = max(vec3<f32>(x_1529.x, x_1529.y, x_1529.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1533 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1532.x, x_1532.y, x_1532.z, x_1533.w);
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


