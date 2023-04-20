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
  x_Grain_Params : vec2<f32>,
  /* @offset(256) */
  x_Grain_TilingParams : vec4<f32>,
  /* @offset(272) */
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

@group(0) @binding(7) var sampler_LinearClamp : sampler;

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

@group(0) @binding(5) var x_UserLut : texture_2d<f32>;

@group(0) @binding(4) var x_InternalLut : texture_2d<f32>;

@group(0) @binding(3) var x_Grain_Texture : texture_2d<f32>;

@group(0) @binding(9) var sampler_LinearRepeat : sampler;

var<private> u_xlat8 : vec3<f32>;

@group(0) @binding(6) var x_BlueNoise_Texture : texture_2d<f32>;

@group(0) @binding(8) var sampler_PointRepeat : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_237 : f32;
  var x_479 : f32;
  var x_664 : f32;
  var hlslcc_movcTemp : vec3<f32>;
  var x_1014 : f32;
  var x_1026 : f32;
  var x_1038 : f32;
  var x_1183 : f32;
  var x_1195 : f32;
  var x_1207 : f32;
  var x_1455 : f32;
  var x_1467 : f32;
  var x_1479 : f32;
  var x_1534 : f32;
  var x_1546 : f32;
  var x_1558 : f32;
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
  u_xlat1 = (vec3<f32>(x_896.x, x_896.y, x_896.z) * vec3<f32>(1.31338608264923095703f, 1.31338608264923095703f, 1.31338608264923095703f));
  let x_901 : vec4<f32> = u_xlat0;
  let x_908 : vec3<f32> = ((vec3<f32>(x_901.x, x_901.y, x_901.z) * vec3<f32>(0.26267722249031066895f, 0.26267722249031066895f, 0.26267722249031066895f)) + vec3<f32>(0.06959999352693557739f, 0.06959999352693557739f, 0.06959999352693557739f));
  let x_909 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_908.x, x_908.y, x_908.z, x_909.w);
  let x_911 : vec3<f32> = u_xlat1;
  let x_912 : vec4<f32> = u_xlat2;
  let x_917 : vec3<f32> = ((x_911 * vec3<f32>(x_912.x, x_912.y, x_912.z)) + vec3<f32>(0.00543999997898936272f, 0.00543999997898936272f, 0.00543999997898936272f));
  let x_918 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_917.x, x_917.y, x_917.z, x_918.w);
  let x_920 : vec4<f32> = u_xlat0;
  let x_925 : vec3<f32> = ((vec3<f32>(x_920.x, x_920.y, x_920.z) * vec3<f32>(0.26267722249031066895f, 0.26267722249031066895f, 0.26267722249031066895f)) + vec3<f32>(0.28999999165534973145f, 0.28999999165534973145f, 0.28999999165534973145f));
  let x_926 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_925.x, x_925.y, x_925.z, x_926.w);
  let x_928 : vec3<f32> = u_xlat1;
  let x_929 : vec4<f32> = u_xlat0;
  let x_934 : vec3<f32> = ((x_928 * vec3<f32>(x_929.x, x_929.y, x_929.z)) + vec3<f32>(0.08160001039505004883f, 0.08160001039505004883f, 0.08160001039505004883f));
  let x_935 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_934.x, x_934.y, x_934.z, x_935.w);
  let x_937 : vec4<f32> = u_xlat2;
  let x_939 : vec4<f32> = u_xlat0;
  let x_941 : vec3<f32> = (vec3<f32>(x_937.x, x_937.y, x_937.z) / vec3<f32>(x_939.x, x_939.y, x_939.z));
  let x_942 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_941.x, x_941.y, x_941.z, x_942.w);
  let x_944 : vec4<f32> = u_xlat0;
  let x_948 : vec3<f32> = (vec3<f32>(x_944.x, x_944.y, x_944.z) + vec3<f32>(-0.06666666269302368164f, -0.06666666269302368164f, -0.06666666269302368164f));
  let x_949 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_948.x, x_948.y, x_948.z, x_949.w);
  let x_951 : vec4<f32> = u_xlat0;
  let x_953 : vec3<f32> = (vec3<f32>(x_951.x, x_951.y, x_951.z) * vec3<f32>(1.31338608264923095703f, 1.31338608264923095703f, 1.31338608264923095703f));
  let x_954 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_953.x, x_953.y, x_953.z, x_954.w);
  let x_956 : vec4<f32> = u_xlat0;
  let x_960 : vec3<f32> = clamp(vec3<f32>(x_956.x, x_956.y, x_956.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_961 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_960.x, x_960.y, x_960.z, x_961.w);
  let x_965 : f32 = x_25.x_UserLut_Params.w;
  u_xlatb21 = (0.0f < x_965);
  let x_967 : bool = u_xlatb21;
  if (x_967) {
    let x_970 : vec4<f32> = u_xlat0;
    u_xlat1 = (vec3<f32>(x_970.x, x_970.y, x_970.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
    let x_975 : vec4<f32> = u_xlat0;
    let x_977 : vec3<f32> = log2(vec3<f32>(x_975.x, x_975.y, x_975.z));
    let x_978 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_977.x, x_977.y, x_977.z, x_978.w);
    let x_980 : vec4<f32> = u_xlat2;
    let x_984 : vec3<f32> = (vec3<f32>(x_980.x, x_980.y, x_980.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
    let x_985 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_984.x, x_984.y, x_984.z, x_985.w);
    let x_987 : vec4<f32> = u_xlat2;
    let x_989 : vec3<f32> = exp2(vec3<f32>(x_987.x, x_987.y, x_987.z));
    let x_990 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_989.x, x_989.y, x_989.z, x_990.w);
    let x_992 : vec4<f32> = u_xlat2;
    let x_999 : vec3<f32> = ((vec3<f32>(x_992.x, x_992.y, x_992.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
    let x_1000 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_999.x, x_999.y, x_999.z, x_1000.w);
    let x_1004 : vec4<f32> = u_xlat0;
    let x_1007 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_1004.x, x_1004.y, x_1004.z, x_1004.x));
    u_xlatb3 = vec3<bool>(x_1007.x, x_1007.y, x_1007.z);
    let x_1011 : vec3<f32> = u_xlat1;
    hlslcc_movcTemp = x_1011;
    let x_1013 : bool = u_xlatb3.x;
    if (x_1013) {
      let x_1018 : f32 = u_xlat1.x;
      x_1014 = x_1018;
    } else {
      let x_1021 : f32 = u_xlat2.x;
      x_1014 = x_1021;
    }
    let x_1022 : f32 = x_1014;
    hlslcc_movcTemp.x = x_1022;
    let x_1025 : bool = u_xlatb3.y;
    if (x_1025) {
      let x_1030 : f32 = u_xlat1.y;
      x_1026 = x_1030;
    } else {
      let x_1033 : f32 = u_xlat2.y;
      x_1026 = x_1033;
    }
    let x_1034 : f32 = x_1026;
    hlslcc_movcTemp.y = x_1034;
    let x_1037 : bool = u_xlatb3.z;
    if (x_1037) {
      let x_1042 : f32 = u_xlat1.z;
      x_1038 = x_1042;
    } else {
      let x_1045 : f32 = u_xlat2.z;
      x_1038 = x_1045;
    }
    let x_1046 : f32 = x_1038;
    hlslcc_movcTemp.z = x_1046;
    let x_1048 : vec3<f32> = hlslcc_movcTemp;
    u_xlat1 = x_1048;
    let x_1049 : vec3<f32> = u_xlat1;
    let x_1052 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1054 : vec3<f32> = (vec3<f32>(x_1049.z, x_1049.x, x_1049.y) * vec3<f32>(x_1052.z, x_1052.z, x_1052.z));
    let x_1055 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1054.x, x_1054.y, x_1054.z, x_1055.w);
    let x_1058 : f32 = u_xlat2.x;
    u_xlat21 = floor(x_1058);
    let x_1061 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1063 : vec2<f32> = (vec2<f32>(x_1061.x, x_1061.y) * vec2<f32>(0.5f, 0.5f));
    let x_1064 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1063.x, x_1064.y, x_1064.z, x_1063.y);
    let x_1066 : vec4<f32> = u_xlat2;
    let x_1069 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1072 : vec4<f32> = u_xlat2;
    let x_1074 : vec2<f32> = ((vec2<f32>(x_1066.y, x_1066.z) * vec2<f32>(x_1069.x, x_1069.y)) + vec2<f32>(x_1072.x, x_1072.w));
    let x_1075 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1075.x, x_1074.x, x_1074.y, x_1075.w);
    let x_1077 : f32 = u_xlat21;
    let x_1079 : f32 = x_25.x_UserLut_Params.y;
    let x_1082 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_1077 * x_1079) + x_1082);
    let x_1089 : vec4<f32> = u_xlat2;
    let x_1091 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1089.x, x_1089.z), 0.0f);
    u_xlat3 = vec3<f32>(x_1091.x, x_1091.y, x_1091.z);
    let x_1094 : f32 = x_25.x_UserLut_Params.y;
    u_xlat4.x = x_1094;
    u_xlat4.y = 0.0f;
    let x_1097 : vec4<f32> = u_xlat2;
    let x_1099 : vec4<f32> = u_xlat4;
    let x_1101 : vec2<f32> = (vec2<f32>(x_1097.x, x_1097.z) + vec2<f32>(x_1099.x, x_1099.y));
    let x_1102 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1101.x, x_1101.y, x_1102.z, x_1102.w);
    let x_1107 : vec4<f32> = u_xlat2;
    let x_1109 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1107.x, x_1107.y), 0.0f);
    let x_1110 : vec3<f32> = vec3<f32>(x_1109.x, x_1109.y, x_1109.z);
    let x_1111 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1110.x, x_1110.y, x_1110.z, x_1111.w);
    let x_1114 : f32 = u_xlat1.z;
    let x_1116 : f32 = x_25.x_UserLut_Params.z;
    let x_1118 : f32 = u_xlat21;
    u_xlat21 = ((x_1114 * x_1116) + -(x_1118));
    let x_1121 : vec3<f32> = u_xlat3;
    let x_1123 : vec4<f32> = u_xlat2;
    let x_1125 : vec3<f32> = (-(x_1121) + vec3<f32>(x_1123.x, x_1123.y, x_1123.z));
    let x_1126 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1125.x, x_1125.y, x_1125.z, x_1126.w);
    let x_1128 : f32 = u_xlat21;
    let x_1130 : vec4<f32> = u_xlat2;
    let x_1133 : vec3<f32> = u_xlat3;
    let x_1134 : vec3<f32> = ((vec3<f32>(x_1128, x_1128, x_1128) * vec3<f32>(x_1130.x, x_1130.y, x_1130.z)) + x_1133);
    let x_1135 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1134.x, x_1134.y, x_1134.z, x_1135.w);
    let x_1137 : vec3<f32> = u_xlat1;
    let x_1139 : vec4<f32> = u_xlat2;
    let x_1141 : vec3<f32> = (-(x_1137) + vec3<f32>(x_1139.x, x_1139.y, x_1139.z));
    let x_1142 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1141.x, x_1141.y, x_1141.z, x_1142.w);
    let x_1145 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1147 : vec4<f32> = u_xlat2;
    let x_1150 : vec3<f32> = u_xlat1;
    u_xlat1 = ((vec3<f32>(x_1145.w, x_1145.w, x_1145.w) * vec3<f32>(x_1147.x, x_1147.y, x_1147.z)) + x_1150);
    let x_1152 : vec3<f32> = u_xlat1;
    let x_1155 : vec3<f32> = (x_1152 * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
    let x_1156 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1155.x, x_1155.y, x_1155.z, x_1156.w);
    let x_1158 : vec3<f32> = u_xlat1;
    u_xlat3 = (x_1158 + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
    let x_1162 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_1162 * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
    let x_1166 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_1166));
    let x_1169 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_1169 * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
    let x_1173 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_1173);
    let x_1177 : vec3<f32> = u_xlat1;
    let x_1179 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_1177.x, x_1177.y, x_1177.z, x_1177.x));
    u_xlatb1 = vec3<bool>(x_1179.x, x_1179.y, x_1179.z);
    let x_1182 : bool = u_xlatb1.x;
    if (x_1182) {
      let x_1187 : f32 = u_xlat2.x;
      x_1183 = x_1187;
    } else {
      let x_1190 : f32 = u_xlat3.x;
      x_1183 = x_1190;
    }
    let x_1191 : f32 = x_1183;
    u_xlat0.x = x_1191;
    let x_1194 : bool = u_xlatb1.y;
    if (x_1194) {
      let x_1199 : f32 = u_xlat2.y;
      x_1195 = x_1199;
    } else {
      let x_1202 : f32 = u_xlat3.y;
      x_1195 = x_1202;
    }
    let x_1203 : f32 = x_1195;
    u_xlat0.y = x_1203;
    let x_1206 : bool = u_xlatb1.z;
    if (x_1206) {
      let x_1211 : f32 = u_xlat2.z;
      x_1207 = x_1211;
    } else {
      let x_1214 : f32 = u_xlat3.z;
      x_1207 = x_1214;
    }
    let x_1215 : f32 = x_1207;
    u_xlat0.z = x_1215;
  }
  let x_1217 : vec4<f32> = u_xlat0;
  let x_1220 : vec4<f32> = x_25.x_Lut_Params;
  let x_1222 : vec3<f32> = (vec3<f32>(x_1217.x, x_1217.y, x_1217.z) * vec3<f32>(x_1220.z, x_1220.z, x_1220.z));
  let x_1223 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1222.x, x_1222.y, x_1223.z, x_1222.z);
  let x_1226 : f32 = u_xlat0.w;
  u_xlat21 = floor(x_1226);
  let x_1229 : vec4<f32> = x_25.x_Lut_Params;
  let x_1231 : vec2<f32> = (vec2<f32>(x_1229.x, x_1229.y) * vec2<f32>(0.5f, 0.5f));
  let x_1232 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1231.x, x_1231.y, x_1232.z);
  let x_1234 : vec4<f32> = u_xlat0;
  let x_1237 : vec4<f32> = x_25.x_Lut_Params;
  let x_1240 : vec3<f32> = u_xlat1;
  let x_1242 : vec2<f32> = ((vec2<f32>(x_1234.x, x_1234.y) * vec2<f32>(x_1237.x, x_1237.y)) + vec2<f32>(x_1240.x, x_1240.y));
  let x_1243 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1243.x, x_1242.x, x_1242.y);
  let x_1245 : f32 = u_xlat21;
  let x_1247 : f32 = x_25.x_Lut_Params.y;
  let x_1250 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_1245 * x_1247) + x_1250);
  let x_1257 : vec3<f32> = u_xlat1;
  let x_1259 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1257.x, x_1257.z), 0.0f);
  let x_1260 : vec3<f32> = vec3<f32>(x_1259.x, x_1259.y, x_1259.z);
  let x_1261 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1260.x, x_1260.y, x_1260.z, x_1261.w);
  let x_1264 : f32 = x_25.x_Lut_Params.y;
  u_xlat0.x = x_1264;
  u_xlat0.y = 0.0f;
  let x_1267 : vec4<f32> = u_xlat0;
  let x_1269 : vec3<f32> = u_xlat1;
  let x_1271 : vec2<f32> = (vec2<f32>(x_1267.x, x_1267.y) + vec2<f32>(x_1269.x, x_1269.z));
  let x_1272 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1271.x, x_1271.y, x_1272.z, x_1272.w);
  let x_1277 : vec4<f32> = u_xlat0;
  let x_1279 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1277.x, x_1277.y), 0.0f);
  u_xlat1 = vec3<f32>(x_1279.x, x_1279.y, x_1279.z);
  let x_1282 : f32 = u_xlat0.z;
  let x_1284 : f32 = x_25.x_Lut_Params.z;
  let x_1286 : f32 = u_xlat21;
  u_xlat0.x = ((x_1282 * x_1284) + -(x_1286));
  let x_1290 : vec4<f32> = u_xlat2;
  let x_1293 : vec3<f32> = u_xlat1;
  u_xlat7 = (-(vec3<f32>(x_1290.x, x_1290.y, x_1290.z)) + x_1293);
  let x_1295 : vec4<f32> = u_xlat0;
  let x_1297 : vec3<f32> = u_xlat7;
  let x_1299 : vec4<f32> = u_xlat2;
  let x_1301 : vec3<f32> = ((vec3<f32>(x_1295.x, x_1295.x, x_1295.x) * x_1297) + vec3<f32>(x_1299.x, x_1299.y, x_1299.z));
  let x_1302 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1301.x, x_1301.y, x_1301.z, x_1302.w);
  let x_1304 : vec2<f32> = vs_TEXCOORD0;
  let x_1307 : vec4<f32> = x_25.x_Grain_TilingParams;
  let x_1311 : vec4<f32> = x_25.x_Grain_TilingParams;
  let x_1313 : vec2<f32> = ((x_1304 * vec2<f32>(x_1307.x, x_1307.y)) + vec2<f32>(x_1311.z, x_1311.w));
  let x_1314 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1313.x, x_1313.y, x_1314.z);
  let x_1321 : vec3<f32> = u_xlat1;
  let x_1324 : f32 = x_25.x_GlobalMipBias.x;
  let x_1325 : vec4<f32> = textureSampleBias(x_Grain_Texture, sampler_LinearRepeat, vec2<f32>(x_1321.x, x_1321.y), x_1324);
  u_xlat21 = x_1325.w;
  let x_1327 : f32 = u_xlat21;
  u_xlat21 = (x_1327 + -0.5f);
  let x_1329 : f32 = u_xlat21;
  let x_1330 : f32 = u_xlat21;
  u_xlat21 = (x_1329 + x_1330);
  let x_1332 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(x_1332.x, x_1332.y, x_1332.z), vec3<f32>(0.21267290413379669189f, 0.71515220403671264648f, 0.07217500358819961548f));
  let x_1341 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_1341);
  let x_1346 : f32 = x_25.x_Grain_Params.y;
  let x_1348 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1346 * -(x_1348)) + 1.0f);
  let x_1354 : f32 = u_xlat21;
  let x_1356 : vec4<f32> = u_xlat0;
  u_xlat8 = (vec3<f32>(x_1354, x_1354, x_1354) * vec3<f32>(x_1356.x, x_1356.y, x_1356.z));
  let x_1359 : vec3<f32> = u_xlat8;
  let x_1362 : vec2<f32> = x_25.x_Grain_Params;
  u_xlat8 = (x_1359 * vec3<f32>(x_1362.x, x_1362.x, x_1362.x));
  let x_1365 : vec3<f32> = u_xlat8;
  let x_1366 : vec3<f32> = u_xlat1;
  let x_1369 : vec4<f32> = u_xlat0;
  let x_1371 : vec3<f32> = ((x_1365 * vec3<f32>(x_1366.x, x_1366.x, x_1366.x)) + vec3<f32>(x_1369.x, x_1369.y, x_1369.z));
  let x_1372 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1371.x, x_1371.y, x_1371.z, x_1372.w);
  let x_1374 : vec4<f32> = u_xlat0;
  let x_1376 : vec3<f32> = sqrt(vec3<f32>(x_1374.x, x_1374.y, x_1374.z));
  let x_1377 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1376.x, x_1376.y, x_1376.z, x_1377.w);
  let x_1379 : vec2<f32> = vs_TEXCOORD0;
  let x_1382 : vec4<f32> = x_25.x_Dithering_Params;
  let x_1386 : vec4<f32> = x_25.x_Dithering_Params;
  let x_1388 : vec2<f32> = ((x_1379 * vec2<f32>(x_1382.x, x_1382.y)) + vec2<f32>(x_1386.z, x_1386.w));
  let x_1389 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1388.x, x_1388.y, x_1389.z);
  let x_1396 : vec3<f32> = u_xlat1;
  let x_1399 : f32 = x_25.x_GlobalMipBias.x;
  let x_1400 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_1396.x, x_1396.y), x_1399);
  u_xlat21 = x_1400.w;
  let x_1402 : f32 = u_xlat21;
  u_xlat21 = ((x_1402 * 2.0f) + -1.0f);
  let x_1405 : f32 = u_xlat21;
  u_xlatb1.x = (x_1405 >= 0.0f);
  let x_1409 : bool = u_xlatb1.x;
  u_xlat1.x = select(-1.0f, 1.0f, x_1409);
  let x_1412 : f32 = u_xlat21;
  u_xlat21 = (-(abs(x_1412)) + 1.0f);
  let x_1416 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_1416);
  let x_1418 : f32 = u_xlat21;
  u_xlat21 = (-(x_1418) + 1.0f);
  let x_1421 : f32 = u_xlat21;
  let x_1423 : f32 = u_xlat1.x;
  u_xlat21 = (x_1421 * x_1423);
  let x_1425 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_1425.x, x_1425.y, x_1425.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
  let x_1428 : vec4<f32> = u_xlat0;
  let x_1430 : vec3<f32> = log2(vec3<f32>(x_1428.x, x_1428.y, x_1428.z));
  let x_1431 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1430.x, x_1430.y, x_1430.z, x_1431.w);
  let x_1433 : vec4<f32> = u_xlat2;
  let x_1435 : vec3<f32> = (vec3<f32>(x_1433.x, x_1433.y, x_1433.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
  let x_1436 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1435.x, x_1435.y, x_1435.z, x_1436.w);
  let x_1438 : vec4<f32> = u_xlat2;
  let x_1440 : vec3<f32> = exp2(vec3<f32>(x_1438.x, x_1438.y, x_1438.z));
  let x_1441 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1440.x, x_1440.y, x_1440.z, x_1441.w);
  let x_1443 : vec4<f32> = u_xlat2;
  let x_1446 : vec3<f32> = ((vec3<f32>(x_1443.x, x_1443.y, x_1443.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
  let x_1447 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1446.x, x_1446.y, x_1446.z, x_1447.w);
  let x_1449 : vec4<f32> = u_xlat0;
  let x_1451 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_1449.x, x_1449.y, x_1449.z, x_1449.x));
  u_xlatb0 = vec3<bool>(x_1451.x, x_1451.y, x_1451.z);
  let x_1454 : bool = u_xlatb0.x;
  if (x_1454) {
    let x_1459 : f32 = u_xlat1.x;
    x_1455 = x_1459;
  } else {
    let x_1462 : f32 = u_xlat2.x;
    x_1455 = x_1462;
  }
  let x_1463 : f32 = x_1455;
  u_xlat0.x = x_1463;
  let x_1466 : bool = u_xlatb0.y;
  if (x_1466) {
    let x_1471 : f32 = u_xlat1.y;
    x_1467 = x_1471;
  } else {
    let x_1474 : f32 = u_xlat2.y;
    x_1467 = x_1474;
  }
  let x_1475 : f32 = x_1467;
  u_xlat0.y = x_1475;
  let x_1478 : bool = u_xlatb0.z;
  if (x_1478) {
    let x_1483 : f32 = u_xlat1.z;
    x_1479 = x_1483;
  } else {
    let x_1486 : f32 = u_xlat2.z;
    x_1479 = x_1486;
  }
  let x_1487 : f32 = x_1479;
  u_xlat0.z = x_1487;
  let x_1489 : f32 = u_xlat21;
  let x_1494 : vec4<f32> = u_xlat0;
  let x_1496 : vec3<f32> = ((vec3<f32>(x_1489, x_1489, x_1489) * vec3<f32>(0.0039215688593685627f, 0.0039215688593685627f, 0.0039215688593685627f)) + vec3<f32>(x_1494.x, x_1494.y, x_1494.z));
  let x_1497 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1496.x, x_1496.y, x_1496.z, x_1497.w);
  let x_1499 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_1499.x, x_1499.y, x_1499.z) * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
  let x_1502 : vec4<f32> = u_xlat0;
  let x_1504 : vec3<f32> = (vec3<f32>(x_1502.x, x_1502.y, x_1502.z) + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
  let x_1505 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1504.x, x_1504.y, x_1504.z, x_1505.w);
  let x_1507 : vec4<f32> = u_xlat2;
  let x_1509 : vec3<f32> = (vec3<f32>(x_1507.x, x_1507.y, x_1507.z) * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
  let x_1510 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1509.x, x_1509.y, x_1509.z, x_1510.w);
  let x_1512 : vec4<f32> = u_xlat2;
  let x_1515 : vec3<f32> = log2(abs(vec3<f32>(x_1512.x, x_1512.y, x_1512.z)));
  let x_1516 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1515.x, x_1515.y, x_1515.z, x_1516.w);
  let x_1518 : vec4<f32> = u_xlat2;
  let x_1520 : vec3<f32> = (vec3<f32>(x_1518.x, x_1518.y, x_1518.z) * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
  let x_1521 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1520.x, x_1520.y, x_1520.z, x_1521.w);
  let x_1523 : vec4<f32> = u_xlat2;
  let x_1525 : vec3<f32> = exp2(vec3<f32>(x_1523.x, x_1523.y, x_1523.z));
  let x_1526 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1525.x, x_1525.y, x_1525.z, x_1526.w);
  let x_1528 : vec4<f32> = u_xlat0;
  let x_1530 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_1528.x, x_1528.y, x_1528.z, x_1528.x));
  u_xlatb0 = vec3<bool>(x_1530.x, x_1530.y, x_1530.z);
  let x_1533 : bool = u_xlatb0.x;
  if (x_1533) {
    let x_1538 : f32 = u_xlat1.x;
    x_1534 = x_1538;
  } else {
    let x_1541 : f32 = u_xlat2.x;
    x_1534 = x_1541;
  }
  let x_1542 : f32 = x_1534;
  u_xlat0.x = x_1542;
  let x_1545 : bool = u_xlatb0.y;
  if (x_1545) {
    let x_1550 : f32 = u_xlat1.y;
    x_1546 = x_1550;
  } else {
    let x_1553 : f32 = u_xlat2.y;
    x_1546 = x_1553;
  }
  let x_1554 : f32 = x_1546;
  u_xlat0.y = x_1554;
  let x_1557 : bool = u_xlatb0.z;
  if (x_1557) {
    let x_1562 : f32 = u_xlat1.z;
    x_1558 = x_1562;
  } else {
    let x_1565 : f32 = u_xlat2.z;
    x_1558 = x_1565;
  }
  let x_1566 : f32 = x_1558;
  u_xlat0.z = x_1566;
  let x_1570 : vec4<f32> = u_xlat0;
  let x_1573 : vec3<f32> = max(vec3<f32>(x_1570.x, x_1570.y, x_1570.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1574 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1573.x, x_1573.y, x_1573.z, x_1574.w);
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


