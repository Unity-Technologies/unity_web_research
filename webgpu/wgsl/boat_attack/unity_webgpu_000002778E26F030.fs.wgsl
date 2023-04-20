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
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat14 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_25 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlatb8 : bool;

var<private> u_xlat15 : vec2<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat22 : f32;

var<private> u_xlat9 : f32;

var<private> u_xlat16 : vec2<f32>;

var<private> u_xlat23 : f32;

var<private> u_xlatb3 : vec3<bool>;

var<private> u_xlatb1 : bool;

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

var<private> u_xlatb0 : vec3<bool>;

@group(0) @binding(1) var x_Bloom_Texture : texture_2d<f32>;

@group(0) @binding(2) var x_LensDirt_Texture : texture_2d<f32>;

var<private> u_xlatb21 : bool;

var<private> u_xlat21 : f32;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlatb7 : bool;

var<private> u_xlatb14 : vec2<bool>;

var<private> u_xlatb10 : bool;

var<private> u_xlatb22 : bool;

@group(0) @binding(4) var x_UserLut : texture_2d<f32>;

@group(0) @binding(3) var x_InternalLut : texture_2d<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_235 : f32;
  var x_475 : f32;
  var x_660 : f32;
  var x_1089 : f32;
  var x_1098 : f32;
  var x_1228 : f32;
  var x_1279 : f32;
  var x_1306 : f32;
  var x_1330 : f32;
  var x_1341 : f32;
  var hlslcc_movcTemp : vec4<f32>;
  var x_1764 : f32;
  var x_1776 : f32;
  var x_1788 : f32;
  var x_1939 : f32;
  var x_1951 : f32;
  var x_1963 : f32;
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
  let x_59 : vec4<f32> = u_xlat0;
  let x_61 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec2<f32>(x_59.x, x_59.y), vec2<f32>(x_61.x, x_61.y));
  let x_69 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_69);
  let x_79 : f32 = x_25.x_Distortion_Params2.w;
  u_xlatb8 = (0.0f < x_79);
  let x_81 : bool = u_xlatb8;
  if (x_81) {
    let x_85 : vec4<f32> = u_xlat1;
    let x_88 : vec4<f32> = x_25.x_Distortion_Params2;
    u_xlat15 = (vec2<f32>(x_85.x, x_85.x) * vec2<f32>(x_88.x, x_88.y));
    let x_93 : f32 = u_xlat15.x;
    u_xlat2.x = sin(x_93);
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
    u_xlatb1 = (x_228 < -(x_230));
    let x_233 : bool = u_xlatb1;
    if (x_233) {
      let x_238 : f32 = u_xlat9;
      x_235 = -(x_238);
    } else {
      let x_241 : f32 = u_xlat9;
      x_235 = x_241;
    }
    let x_242 : f32 = x_235;
    u_xlat1.x = x_242;
    let x_245 : f32 = u_xlat2.x;
    let x_247 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_245 * x_247) + -1.0f);
    let x_251 : vec4<f32> = u_xlat0;
    let x_253 : vec4<f32> = u_xlat1;
    let x_256 : vec2<f32> = u_xlat14;
    u_xlat15 = ((vec2<f32>(x_251.x, x_251.y) * vec2<f32>(x_253.x, x_253.x)) + x_256);
  }
  let x_258 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = ((vec4<f32>(x_258.x, x_258.y, x_258.x, x_258.y) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_265 : vec4<f32> = u_xlat0;
  let x_267 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec2<f32>(x_265.z, x_265.w), vec2<f32>(x_267.z, x_267.w));
  let x_271 : vec4<f32> = u_xlat0;
  let x_272 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_271 * vec4<f32>(x_272.x, x_272.x, x_272.x, x_272.x));
  let x_275 : vec4<f32> = u_xlat0;
  let x_278 : f32 = x_25.x_Chroma_Params;
  u_xlat0 = (x_275 * vec4<f32>(x_278, x_278, x_278, x_278));
  let x_283 : vec4<f32> = x_25.x_BlitTexture_TexelSize;
  let x_289 : vec4<f32> = x_25.x_RTHandleScale;
  let x_291 : vec2<f32> = ((-(vec2<f32>(x_283.x, x_283.y)) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_289.x, x_289.y));
  let x_292 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_291.x, x_291.y, x_292.z, x_292.w);
  let x_294 : vec2<f32> = u_xlat15;
  let x_295 : vec4<f32> = u_xlat2;
  u_xlat16 = min(x_294, vec2<f32>(x_295.x, x_295.y));
  let x_308 : vec2<f32> = u_xlat16;
  let x_311 : f32 = x_25.x_GlobalMipBias.x;
  let x_312 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, x_308, x_311);
  u_xlat3.x = x_312.x;
  let x_315 : vec4<f32> = u_xlat0;
  let x_320 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = ((x_315 * vec4<f32>(-0.3333333432674407959f, -0.3333333432674407959f, -0.6666666865348815918f, -0.6666666865348815918f)) + vec4<f32>(x_320.x, x_320.y, x_320.x, x_320.y));
  let x_323 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_323 + vec4<f32>(-0.5f, -0.5f, -0.5f, -0.5f));
  let x_327 : vec4<f32> = u_xlat0;
  let x_329 : vec4<f32> = x_25.x_Distortion_Params2;
  u_xlat4 = ((x_327 * vec4<f32>(x_329.z, x_329.z, x_329.z, x_329.z)) + vec4<f32>(0.5f, 0.5f, 0.5f, 0.5f));
  let x_334 : vec4<f32> = u_xlat0;
  let x_336 : vec4<f32> = x_25.x_Distortion_Params2;
  let x_340 : vec4<f32> = x_25.x_Distortion_Params1;
  u_xlat0 = ((x_334 * vec4<f32>(x_336.z, x_336.z, x_336.z, x_336.z)) + -(vec4<f32>(x_340.x, x_340.y, x_340.x, x_340.y)));
  let x_344 : vec4<f32> = u_xlat0;
  let x_346 : vec4<f32> = x_25.x_Distortion_Params1;
  u_xlat0 = (x_344 * vec4<f32>(x_346.z, x_346.w, x_346.z, x_346.w));
  let x_349 : vec4<f32> = u_xlat0;
  let x_351 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec2<f32>(x_349.x, x_349.y), vec2<f32>(x_351.x, x_351.y));
  let x_356 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_356);
  let x_359 : bool = u_xlatb8;
  if (x_359) {
    let x_362 : vec4<f32> = u_xlat1;
    let x_365 : vec4<f32> = x_25.x_Distortion_Params2;
    u_xlat16 = (vec2<f32>(x_362.x, x_362.x) * vec2<f32>(x_365.x, x_365.y));
    let x_370 : f32 = u_xlat16.x;
    u_xlat5 = sin(x_370);
    let x_374 : f32 = u_xlat16.x;
    u_xlat6 = cos(x_374);
    let x_376 : f32 = u_xlat5;
    let x_377 : f32 = u_xlat6;
    u_xlat16.x = (x_376 / x_377);
    let x_381 : f32 = u_xlat16.y;
    u_xlat23 = (1.0f / x_381);
    let x_384 : f32 = u_xlat16.x;
    let x_385 : f32 = u_xlat23;
    u_xlat16.x = ((x_384 * x_385) + -1.0f);
    let x_389 : vec4<f32> = u_xlat0;
    let x_391 : vec2<f32> = u_xlat16;
    let x_394 : vec4<f32> = u_xlat4;
    u_xlat16 = ((vec2<f32>(x_389.x, x_389.y) * vec2<f32>(x_391.x, x_391.x)) + vec2<f32>(x_394.x, x_394.y));
  } else {
    let x_400 : f32 = u_xlat1.x;
    u_xlat24 = (1.0f / x_400);
    let x_402 : f32 = u_xlat24;
    let x_404 : f32 = x_25.x_Distortion_Params2.x;
    u_xlat24 = (x_402 * x_404);
    let x_407 : f32 = u_xlat1.x;
    let x_409 : f32 = x_25.x_Distortion_Params2.y;
    u_xlat1.x = (x_407 * x_409);
    let x_413 : f32 = u_xlat1.x;
    u_xlat5 = min(abs(x_413), 1.0f);
    let x_418 : f32 = u_xlat1.x;
    u_xlat12 = max(abs(x_418), 1.0f);
    let x_421 : f32 = u_xlat12;
    u_xlat12 = (1.0f / x_421);
    let x_423 : f32 = u_xlat12;
    let x_424 : f32 = u_xlat5;
    u_xlat5 = (x_423 * x_424);
    let x_426 : f32 = u_xlat5;
    let x_427 : f32 = u_xlat5;
    u_xlat12 = (x_426 * x_427);
    let x_430 : f32 = u_xlat12;
    u_xlat19 = ((x_430 * 0.02083509974181652069f) + -0.08513300120830535889f);
    let x_433 : f32 = u_xlat12;
    let x_434 : f32 = u_xlat19;
    u_xlat19 = ((x_433 * x_434) + 0.18014100193977355957f);
    let x_437 : f32 = u_xlat12;
    let x_438 : f32 = u_xlat19;
    u_xlat19 = ((x_437 * x_438) + -0.33029949665069580078f);
    let x_441 : f32 = u_xlat12;
    let x_442 : f32 = u_xlat19;
    u_xlat12 = ((x_441 * x_442) + 0.99986600875854492188f);
    let x_445 : f32 = u_xlat12;
    let x_446 : f32 = u_xlat5;
    u_xlat19 = (x_445 * x_446);
    let x_450 : f32 = u_xlat1.x;
    u_xlatb26 = (1.0f < abs(x_450));
    let x_453 : f32 = u_xlat19;
    u_xlat19 = ((x_453 * -2.0f) + 1.57079637050628662109f);
    let x_456 : bool = u_xlatb26;
    let x_457 : f32 = u_xlat19;
    u_xlat19 = select(0.0f, x_457, x_456);
    let x_459 : f32 = u_xlat5;
    let x_460 : f32 = u_xlat12;
    let x_462 : f32 = u_xlat19;
    u_xlat5 = ((x_459 * x_460) + x_462);
    let x_465 : f32 = u_xlat1.x;
    u_xlat1.x = min(x_465, 1.0f);
    let x_469 : f32 = u_xlat1.x;
    let x_471 : f32 = u_xlat1.x;
    u_xlatb1 = (x_469 < -(x_471));
    let x_474 : bool = u_xlatb1;
    if (x_474) {
      let x_478 : f32 = u_xlat5;
      x_475 = -(x_478);
    } else {
      let x_481 : f32 = u_xlat5;
      x_475 = x_481;
    }
    let x_482 : f32 = x_475;
    u_xlat1.x = x_482;
    let x_484 : f32 = u_xlat24;
    let x_486 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_484 * x_486) + -1.0f);
    let x_490 : vec4<f32> = u_xlat0;
    let x_492 : vec4<f32> = u_xlat1;
    let x_495 : vec4<f32> = u_xlat4;
    u_xlat16 = ((vec2<f32>(x_490.x, x_490.y) * vec2<f32>(x_492.x, x_492.x)) + vec2<f32>(x_495.x, x_495.y));
  }
  let x_498 : vec4<f32> = u_xlat2;
  let x_500 : vec2<f32> = u_xlat16;
  let x_501 : vec2<f32> = min(vec2<f32>(x_498.x, x_498.y), x_500);
  let x_502 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_501.x, x_501.y, x_502.z, x_502.w);
  let x_507 : vec4<f32> = u_xlat0;
  let x_510 : f32 = x_25.x_GlobalMipBias.x;
  let x_511 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_507.x, x_507.y), x_510);
  u_xlat3.y = x_511.y;
  let x_514 : vec4<f32> = u_xlat0;
  let x_516 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec2<f32>(x_514.z, x_514.w), vec2<f32>(x_516.z, x_516.w));
  let x_521 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_521);
  let x_524 : bool = u_xlatb8;
  if (x_524) {
    let x_527 : vec4<f32> = u_xlat0;
    let x_530 : vec4<f32> = x_25.x_Distortion_Params2;
    let x_532 : vec2<f32> = (vec2<f32>(x_527.x, x_527.x) * vec2<f32>(x_530.x, x_530.y));
    let x_533 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_532.x, x_532.y, x_533.z, x_533.w);
    let x_536 : f32 = u_xlat1.x;
    u_xlat4.x = cos(x_536);
    let x_540 : f32 = u_xlat1.x;
    u_xlat1.x = sin(x_540);
    let x_545 : f32 = u_xlat1.x;
    let x_547 : f32 = u_xlat4.x;
    u_xlat7.x = (x_545 / x_547);
    let x_551 : f32 = u_xlat1.y;
    u_xlat1.x = (1.0f / x_551);
    let x_555 : f32 = u_xlat7.x;
    let x_557 : f32 = u_xlat1.x;
    u_xlat7.x = ((x_555 * x_557) + -1.0f);
    let x_561 : vec4<f32> = u_xlat0;
    let x_563 : vec3<f32> = u_xlat7;
    let x_566 : vec4<f32> = u_xlat4;
    let x_568 : vec2<f32> = ((vec2<f32>(x_561.z, x_561.w) * vec2<f32>(x_563.x, x_563.x)) + vec2<f32>(x_566.z, x_566.w));
    let x_569 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_568.x, x_568.y, x_569.z, x_569.w);
  } else {
    let x_573 : f32 = u_xlat0.x;
    u_xlat7.x = (1.0f / x_573);
    let x_577 : f32 = u_xlat7.x;
    let x_579 : f32 = x_25.x_Distortion_Params2.x;
    u_xlat7.x = (x_577 * x_579);
    let x_583 : f32 = u_xlat0.x;
    let x_585 : f32 = x_25.x_Distortion_Params2.y;
    u_xlat0.x = (x_583 * x_585);
    let x_589 : f32 = u_xlat0.x;
    u_xlat16.x = min(abs(x_589), 1.0f);
    let x_594 : f32 = u_xlat0.x;
    u_xlat23 = max(abs(x_594), 1.0f);
    let x_597 : f32 = u_xlat23;
    u_xlat23 = (1.0f / x_597);
    let x_599 : f32 = u_xlat23;
    let x_601 : f32 = u_xlat16.x;
    u_xlat16.x = (x_599 * x_601);
    let x_605 : f32 = u_xlat16.x;
    let x_607 : f32 = u_xlat16.x;
    u_xlat23 = (x_605 * x_607);
    let x_609 : f32 = u_xlat23;
    u_xlat24 = ((x_609 * 0.02083509974181652069f) + -0.08513300120830535889f);
    let x_612 : f32 = u_xlat23;
    let x_613 : f32 = u_xlat24;
    u_xlat24 = ((x_612 * x_613) + 0.18014100193977355957f);
    let x_616 : f32 = u_xlat23;
    let x_617 : f32 = u_xlat24;
    u_xlat24 = ((x_616 * x_617) + -0.33029949665069580078f);
    let x_620 : f32 = u_xlat23;
    let x_621 : f32 = u_xlat24;
    u_xlat23 = ((x_620 * x_621) + 0.99986600875854492188f);
    let x_624 : f32 = u_xlat23;
    let x_626 : f32 = u_xlat16.x;
    u_xlat24 = (x_624 * x_626);
    let x_630 : f32 = u_xlat0.x;
    u_xlatb4 = (1.0f < abs(x_630));
    let x_633 : f32 = u_xlat24;
    u_xlat24 = ((x_633 * -2.0f) + 1.57079637050628662109f);
    let x_636 : bool = u_xlatb4;
    let x_637 : f32 = u_xlat24;
    u_xlat24 = select(0.0f, x_637, x_636);
    let x_640 : f32 = u_xlat16.x;
    let x_641 : f32 = u_xlat23;
    let x_643 : f32 = u_xlat24;
    u_xlat16.x = ((x_640 * x_641) + x_643);
    let x_647 : f32 = u_xlat0.x;
    u_xlat0.x = min(x_647, 1.0f);
    let x_652 : f32 = u_xlat0.x;
    let x_654 : f32 = u_xlat0.x;
    u_xlatb0.x = (x_652 < -(x_654));
    let x_659 : bool = u_xlatb0.x;
    if (x_659) {
      let x_664 : f32 = u_xlat16.x;
      x_660 = -(x_664);
    } else {
      let x_668 : f32 = u_xlat16.x;
      x_660 = x_668;
    }
    let x_669 : f32 = x_660;
    u_xlat0.x = x_669;
    let x_672 : f32 = u_xlat7.x;
    let x_674 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_672 * x_674) + -1.0f);
    let x_678 : vec4<f32> = u_xlat0;
    let x_680 : vec4<f32> = u_xlat0;
    let x_683 : vec4<f32> = u_xlat4;
    let x_685 : vec2<f32> = ((vec2<f32>(x_678.z, x_678.w) * vec2<f32>(x_680.x, x_680.x)) + vec2<f32>(x_683.z, x_683.w));
    let x_686 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_685.x, x_685.y, x_686.z, x_686.w);
  }
  let x_688 : vec4<f32> = u_xlat2;
  let x_690 : vec4<f32> = u_xlat1;
  let x_692 : vec2<f32> = min(vec2<f32>(x_688.x, x_688.y), vec2<f32>(x_690.x, x_690.y));
  let x_693 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_692.x, x_692.y, x_693.z, x_693.w);
  let x_698 : vec4<f32> = u_xlat0;
  let x_701 : f32 = x_25.x_GlobalMipBias.x;
  let x_702 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_698.x, x_698.y), x_701);
  u_xlat3.z = x_702.z;
  let x_708 : vec4<f32> = x_25.x_BloomTexture_TexelSize;
  let x_713 : vec4<f32> = x_25.x_RTHandleScale;
  let x_715 : vec2<f32> = ((-(vec2<f32>(x_708.x, x_708.y)) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_713.x, x_713.y));
  let x_716 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_715.x, x_715.y, x_716.z, x_716.w);
  let x_718 : vec4<f32> = u_xlat0;
  let x_720 : vec2<f32> = u_xlat15;
  let x_721 : vec2<f32> = min(vec2<f32>(x_718.x, x_718.y), x_720);
  let x_722 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_721.x, x_721.y, x_722.z, x_722.w);
  let x_728 : vec4<f32> = u_xlat0;
  let x_731 : f32 = x_25.x_GlobalMipBias.x;
  let x_732 : vec4<f32> = textureSampleBias(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_728.x, x_728.y), x_731);
  u_xlat0 = x_732;
  let x_735 : f32 = x_25.x_Bloom_RGBM;
  u_xlatb1 = (0.0f < x_735);
  let x_737 : bool = u_xlatb1;
  if (x_737) {
    let x_740 : vec4<f32> = u_xlat0;
    let x_742 : vec4<f32> = u_xlat0;
    let x_744 : vec3<f32> = (vec3<f32>(x_740.w, x_740.w, x_740.w) * vec3<f32>(x_742.x, x_742.y, x_742.z));
    let x_745 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_744.x, x_744.y, x_744.z, x_745.w);
    let x_747 : vec4<f32> = u_xlat2;
    let x_751 : vec3<f32> = (vec3<f32>(x_747.x, x_747.y, x_747.z) * vec3<f32>(8.0f, 8.0f, 8.0f));
    let x_752 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_751.x, x_751.y, x_751.z, x_752.w);
  }
  let x_754 : vec4<f32> = u_xlat0;
  let x_758 : vec4<f32> = x_25.x_Bloom_Params;
  let x_760 : vec3<f32> = (vec3<f32>(x_754.x, x_754.y, x_754.z) * vec3<f32>(x_758.x, x_758.x, x_758.x));
  let x_761 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_760.x, x_760.y, x_760.z, x_761.w);
  let x_763 : vec4<f32> = u_xlat0;
  let x_766 : vec4<f32> = x_25.x_Bloom_Params;
  let x_769 : vec3<f32> = u_xlat3;
  let x_770 : vec3<f32> = ((vec3<f32>(x_763.x, x_763.y, x_763.z) * vec3<f32>(x_766.y, x_766.z, x_766.w)) + x_769);
  let x_771 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_770.x, x_770.y, x_770.z, x_771.w);
  let x_773 : vec2<f32> = u_xlat15;
  let x_776 : vec4<f32> = x_25.x_LensDirt_Params;
  let x_780 : vec4<f32> = x_25.x_LensDirt_Params;
  let x_782 : vec2<f32> = ((x_773 * vec2<f32>(x_776.x, x_776.y)) + vec2<f32>(x_780.z, x_780.w));
  let x_783 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_782.x, x_782.y, x_783.z, x_783.w);
  let x_789 : vec4<f32> = u_xlat1;
  let x_792 : f32 = x_25.x_GlobalMipBias.x;
  let x_793 : vec4<f32> = textureSampleBias(x_LensDirt_Texture, sampler_LinearClamp, vec2<f32>(x_789.x, x_789.y), x_792);
  u_xlat3 = vec3<f32>(x_793.x, x_793.y, x_793.z);
  let x_795 : vec3<f32> = u_xlat3;
  let x_798 : f32 = x_25.x_LensDirt_Intensity;
  u_xlat3 = (x_795 * vec3<f32>(x_798, x_798, x_798));
  let x_801 : vec3<f32> = u_xlat3;
  let x_802 : vec4<f32> = u_xlat0;
  let x_805 : vec4<f32> = u_xlat2;
  let x_807 : vec3<f32> = ((x_801 * vec3<f32>(x_802.x, x_802.y, x_802.z)) + vec3<f32>(x_805.x, x_805.y, x_805.z));
  let x_808 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_807.x, x_807.y, x_807.z, x_808.w);
  let x_813 : f32 = x_25.x_Vignette_Params2.z;
  u_xlatb21 = (0.0f < x_813);
  let x_815 : bool = u_xlatb21;
  if (x_815) {
    let x_818 : vec2<f32> = u_xlat15;
    let x_820 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_823 : vec2<f32> = (x_818 + -(vec2<f32>(x_820.x, x_820.y)));
    let x_824 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_823.x, x_823.y, x_824.z, x_824.w);
    let x_826 : vec4<f32> = u_xlat1;
    let x_830 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_832 : vec2<f32> = (abs(vec2<f32>(x_826.x, x_826.y)) * vec2<f32>(x_830.z, x_830.z));
    let x_833 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_833.x, x_832.x, x_832.y, x_833.w);
    let x_836 : f32 = u_xlat1.y;
    let x_839 : f32 = x_25.x_Vignette_Params1.w;
    u_xlat1.x = (x_836 * x_839);
    let x_843 : vec4<f32> = u_xlat1;
    let x_845 : vec4<f32> = u_xlat1;
    u_xlat21 = dot(vec2<f32>(x_843.x, x_843.z), vec2<f32>(x_845.x, x_845.z));
    let x_848 : f32 = u_xlat21;
    u_xlat21 = (-(x_848) + 1.0f);
    let x_851 : f32 = u_xlat21;
    u_xlat21 = max(x_851, 0.0f);
    let x_853 : f32 = u_xlat21;
    u_xlat21 = log2(x_853);
    let x_855 : f32 = u_xlat21;
    let x_857 : f32 = x_25.x_Vignette_Params2.w;
    u_xlat21 = (x_855 * x_857);
    let x_859 : f32 = u_xlat21;
    u_xlat21 = exp2(x_859);
    let x_862 : vec4<f32> = x_25.x_Vignette_Params1;
    let x_866 : vec3<f32> = (-(vec3<f32>(x_862.x, x_862.y, x_862.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_867 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_866.x, x_866.y, x_866.z, x_867.w);
    let x_869 : f32 = u_xlat21;
    let x_871 : vec4<f32> = u_xlat1;
    let x_875 : vec4<f32> = x_25.x_Vignette_Params1;
    let x_877 : vec3<f32> = ((vec3<f32>(x_869, x_869, x_869) * vec3<f32>(x_871.x, x_871.y, x_871.z)) + vec3<f32>(x_875.x, x_875.y, x_875.z));
    let x_878 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_877.x, x_877.y, x_877.z, x_878.w);
    let x_880 : vec4<f32> = u_xlat0;
    let x_882 : vec4<f32> = u_xlat1;
    let x_884 : vec3<f32> = (vec3<f32>(x_880.x, x_880.y, x_880.z) * vec3<f32>(x_882.x, x_882.y, x_882.z));
    let x_885 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_884.x, x_884.y, x_884.z, x_885.w);
  }
  let x_887 : vec4<f32> = u_xlat0;
  let x_891 : vec4<f32> = x_25.x_Lut_Params;
  let x_893 : vec3<f32> = (vec3<f32>(x_887.x, x_887.y, x_887.z) * vec3<f32>(x_891.w, x_891.w, x_891.w));
  let x_894 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_893.x, x_893.y, x_893.z, x_894.w);
  let x_901 : vec4<f32> = u_xlat0;
  u_xlat8.x = dot(vec3<f32>(0.43970099091529846191f, 0.38297799229621887207f, 0.17733499407768249512f), vec3<f32>(x_901.x, x_901.y, x_901.z));
  let x_909 : vec4<f32> = u_xlat0;
  u_xlat8.y = dot(vec3<f32>(0.08979229629039764404f, 0.81342297792434692383f, 0.09676159918308258057f), vec3<f32>(x_909.x, x_909.y, x_909.z));
  let x_917 : vec4<f32> = u_xlat0;
  u_xlat8.z = dot(vec3<f32>(0.01754399947822093964f, 0.111543998122215271f, 0.8707039952278137207f), vec3<f32>(x_917.x, x_917.y, x_917.z));
  let x_922 : f32 = u_xlat8.y;
  let x_924 : f32 = u_xlat8.x;
  u_xlat0.x = min(x_922, x_924);
  let x_928 : f32 = u_xlat8.z;
  let x_930 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_928, x_930);
  let x_934 : f32 = u_xlat8.y;
  let x_936 : f32 = u_xlat8.x;
  u_xlat7.x = max(x_934, x_936);
  let x_940 : f32 = u_xlat8.z;
  let x_942 : f32 = u_xlat7.x;
  u_xlat0.y = max(x_940, x_942);
  let x_945 : vec4<f32> = u_xlat0;
  let x_950 : vec3<f32> = max(vec3<f32>(x_945.x, x_945.y, x_945.y), vec3<f32>(0.00009999999747378752f, 0.00009999999747378752f, 0.00999999977648258209f));
  let x_951 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_950.x, x_950.y, x_950.z, x_951.w);
  let x_954 : f32 = u_xlat0.x;
  let x_957 : f32 = u_xlat0.y;
  u_xlat0.x = (-(x_954) + x_957);
  let x_961 : f32 = u_xlat0.x;
  let x_963 : f32 = u_xlat0.z;
  u_xlat0.x = (x_961 / x_963);
  let x_966 : vec3<f32> = u_xlat8;
  let x_969 : vec3<f32> = u_xlat8;
  u_xlat7 = (-(vec3<f32>(x_966.y, x_966.x, x_966.z)) + vec3<f32>(x_969.z, x_969.y, x_969.x));
  let x_972 : vec3<f32> = u_xlat7;
  let x_974 : vec3<f32> = u_xlat8;
  let x_976 : vec2<f32> = (vec2<f32>(x_972.x, x_972.y) * vec2<f32>(x_974.z, x_974.y));
  let x_977 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_976.x, x_976.y, x_977.z);
  let x_980 : f32 = u_xlat7.y;
  let x_982 : f32 = u_xlat7.x;
  u_xlat7.x = (x_980 + x_982);
  let x_986 : f32 = u_xlat8.x;
  let x_988 : f32 = u_xlat7.z;
  let x_991 : f32 = u_xlat7.x;
  u_xlat7.x = ((x_986 * x_988) + x_991);
  let x_995 : f32 = u_xlat7.x;
  u_xlat7.x = max(x_995, 0.0f);
  let x_999 : f32 = u_xlat7.x;
  u_xlat7.x = sqrt(x_999);
  let x_1003 : f32 = u_xlat8.y;
  let x_1005 : f32 = u_xlat8.z;
  u_xlat14.x = (x_1003 + x_1005);
  let x_1009 : f32 = u_xlat8.x;
  let x_1011 : f32 = u_xlat14.x;
  u_xlat14.x = (x_1009 + x_1011);
  let x_1015 : f32 = u_xlat7.x;
  let x_1019 : f32 = u_xlat14.x;
  u_xlat7.x = ((x_1015 * 1.75f) + x_1019);
  let x_1023 : f32 = u_xlat0.x;
  u_xlat21 = (x_1023 + -0.40000000596046447754f);
  let x_1026 : f32 = u_xlat21;
  u_xlat1.x = (x_1026 * 2.5f);
  let x_1031 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_1031)) + 1.0f);
  let x_1037 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_1037, 0.0f);
  let x_1040 : f32 = u_xlat21;
  u_xlatb21 = (x_1040 >= 0.0f);
  let x_1042 : bool = u_xlatb21;
  u_xlat21 = select(-1.0f, 1.0f, x_1042);
  let x_1045 : f32 = u_xlat1.x;
  let x_1048 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_1045) * x_1048) + 1.0f);
  let x_1052 : f32 = u_xlat21;
  let x_1054 : f32 = u_xlat1.x;
  u_xlat7.z = ((x_1052 * x_1054) + 1.0f);
  let x_1058 : vec3<f32> = u_xlat7;
  u_xlat14 = (vec2<f32>(x_1058.x, x_1058.z) * vec2<f32>(0.3333333432674407959f, 0.02500000037252902985f));
  let x_1066 : f32 = u_xlat7.x;
  u_xlatb1 = (0.15999999642372131348f >= x_1066);
  let x_1070 : f32 = u_xlat7.x;
  u_xlatb7 = (x_1070 >= 0.47999998927116394043f);
  let x_1075 : f32 = u_xlat14.x;
  u_xlat14.x = (0.07999999821186065674f / x_1075);
  let x_1079 : f32 = u_xlat14.x;
  u_xlat14.x = (x_1079 + -0.5f);
  let x_1083 : f32 = u_xlat14.x;
  let x_1085 : f32 = u_xlat14.y;
  u_xlat14.x = (x_1083 * x_1085);
  let x_1088 : bool = u_xlatb7;
  if (x_1088) {
    x_1089 = 0.0f;
  } else {
    let x_1094 : f32 = u_xlat14.x;
    x_1089 = x_1094;
  }
  let x_1095 : f32 = x_1089;
  u_xlat7.x = x_1095;
  let x_1097 : bool = u_xlatb1;
  if (x_1097) {
    let x_1102 : f32 = u_xlat14.y;
    x_1098 = x_1102;
  } else {
    let x_1105 : f32 = u_xlat7.x;
    x_1098 = x_1105;
  }
  let x_1106 : f32 = x_1098;
  u_xlat7.x = x_1106;
  let x_1109 : f32 = u_xlat7.x;
  u_xlat7.x = (x_1109 + 1.0f);
  let x_1112 : vec3<f32> = u_xlat7;
  let x_1114 : vec3<f32> = u_xlat8;
  let x_1115 : vec3<f32> = (vec3<f32>(x_1112.x, x_1112.x, x_1112.x) * x_1114);
  let x_1116 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1116.x, x_1115.x, x_1115.y, x_1115.z);
  let x_1121 : vec4<f32> = u_xlat2;
  let x_1123 : vec4<f32> = u_xlat2;
  let x_1126 : vec4<bool> = (vec4<f32>(x_1121.z, x_1121.w, x_1121.z, x_1121.w) == vec4<f32>(x_1123.y, x_1123.z, x_1123.y, x_1123.z));
  u_xlatb14 = vec2<bool>(x_1126.x, x_1126.y);
  let x_1129 : bool = u_xlatb14.y;
  let x_1131 : bool = u_xlatb14.x;
  u_xlatb14.x = (x_1129 & x_1131);
  let x_1135 : f32 = u_xlat8.y;
  let x_1137 : f32 = u_xlat7.x;
  let x_1140 : f32 = u_xlat2.w;
  u_xlat21 = ((x_1135 * x_1137) + -(x_1140));
  let x_1143 : f32 = u_xlat21;
  u_xlat21 = (x_1143 * 1.73205077648162841797f);
  let x_1147 : f32 = u_xlat2.y;
  let x_1150 : f32 = u_xlat2.z;
  u_xlat1.x = ((x_1147 * 2.0f) + -(x_1150));
  let x_1155 : f32 = u_xlat8.z;
  let x_1158 : f32 = u_xlat7.x;
  let x_1161 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_1155) * x_1158) + x_1161);
  let x_1164 : f32 = u_xlat21;
  let x_1167 : f32 = u_xlat1.x;
  u_xlat15.x = min(abs(x_1164), abs(x_1167));
  let x_1171 : f32 = u_xlat21;
  let x_1174 : f32 = u_xlat1.x;
  u_xlat22 = max(abs(x_1171), abs(x_1174));
  let x_1177 : f32 = u_xlat22;
  u_xlat22 = (1.0f / x_1177);
  let x_1179 : f32 = u_xlat22;
  let x_1181 : f32 = u_xlat15.x;
  u_xlat15.x = (x_1179 * x_1181);
  let x_1185 : f32 = u_xlat15.x;
  let x_1187 : f32 = u_xlat15.x;
  u_xlat22 = (x_1185 * x_1187);
  let x_1189 : f32 = u_xlat22;
  u_xlat3.x = ((x_1189 * 0.02083509974181652069f) + -0.08513300120830535889f);
  let x_1193 : f32 = u_xlat22;
  let x_1195 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1193 * x_1195) + 0.18014100193977355957f);
  let x_1199 : f32 = u_xlat22;
  let x_1201 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1199 * x_1201) + -0.33029949665069580078f);
  let x_1205 : f32 = u_xlat22;
  let x_1207 : f32 = u_xlat3.x;
  u_xlat22 = ((x_1205 * x_1207) + 0.99986600875854492188f);
  let x_1210 : f32 = u_xlat22;
  let x_1212 : f32 = u_xlat15.x;
  u_xlat3.x = (x_1210 * x_1212);
  let x_1217 : f32 = u_xlat1.x;
  let x_1219 : f32 = u_xlat21;
  u_xlatb10 = (abs(x_1217) < abs(x_1219));
  let x_1223 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1223 * -2.0f) + 1.57079637050628662109f);
  let x_1227 : bool = u_xlatb10;
  if (x_1227) {
    let x_1232 : f32 = u_xlat3.x;
    x_1228 = x_1232;
  } else {
    x_1228 = 0.0f;
  }
  let x_1234 : f32 = x_1228;
  u_xlat3.x = x_1234;
  let x_1237 : f32 = u_xlat15.x;
  let x_1238 : f32 = u_xlat22;
  let x_1241 : f32 = u_xlat3.x;
  u_xlat15.x = ((x_1237 * x_1238) + x_1241);
  let x_1246 : f32 = u_xlat1.x;
  let x_1248 : f32 = u_xlat1.x;
  u_xlatb22 = (x_1246 < -(x_1248));
  let x_1251 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, -3.14159274101257324219f, x_1251);
  let x_1254 : f32 = u_xlat22;
  let x_1256 : f32 = u_xlat15.x;
  u_xlat15.x = (x_1254 + x_1256);
  let x_1259 : f32 = u_xlat21;
  let x_1261 : f32 = u_xlat1.x;
  u_xlat22 = min(x_1259, x_1261);
  let x_1263 : f32 = u_xlat21;
  let x_1265 : f32 = u_xlat1.x;
  u_xlat21 = max(x_1263, x_1265);
  let x_1267 : f32 = u_xlat22;
  let x_1268 : f32 = u_xlat22;
  u_xlatb1 = (x_1267 < -(x_1268));
  let x_1271 : f32 = u_xlat21;
  let x_1272 : f32 = u_xlat21;
  u_xlatb21 = (x_1271 >= -(x_1272));
  let x_1275 : bool = u_xlatb21;
  let x_1276 : bool = u_xlatb1;
  u_xlatb21 = (x_1275 & x_1276);
  let x_1278 : bool = u_xlatb21;
  if (x_1278) {
    let x_1283 : f32 = u_xlat15.x;
    x_1279 = -(x_1283);
  } else {
    let x_1287 : f32 = u_xlat15.x;
    x_1279 = x_1287;
  }
  let x_1288 : f32 = x_1279;
  u_xlat21 = x_1288;
  let x_1289 : f32 = u_xlat21;
  u_xlat21 = (x_1289 * 57.295780181884765625f);
  let x_1293 : bool = u_xlatb14.x;
  let x_1294 : f32 = u_xlat21;
  u_xlat14.x = select(x_1294, 0.0f, x_1293);
  let x_1298 : f32 = u_xlat14.x;
  u_xlatb21 = (x_1298 < 0.0f);
  let x_1301 : f32 = u_xlat14.x;
  u_xlat1.x = (x_1301 + 360.0f);
  let x_1305 : bool = u_xlatb21;
  if (x_1305) {
    let x_1310 : f32 = u_xlat1.x;
    x_1306 = x_1310;
  } else {
    let x_1313 : f32 = u_xlat14.x;
    x_1306 = x_1313;
  }
  let x_1314 : f32 = x_1306;
  u_xlat14.x = x_1314;
  let x_1317 : f32 = u_xlat14.x;
  u_xlatb21 = (x_1317 < -180.0f);
  let x_1322 : f32 = u_xlat14.x;
  u_xlatb1 = (180.0f < x_1322);
  let x_1324 : vec2<f32> = u_xlat14;
  u_xlat15 = (vec2<f32>(x_1324.x, x_1324.x) + vec2<f32>(360.0f, -360.0f));
  let x_1329 : bool = u_xlatb1;
  if (x_1329) {
    let x_1334 : f32 = u_xlat15.y;
    x_1330 = x_1334;
  } else {
    let x_1337 : f32 = u_xlat14.x;
    x_1330 = x_1337;
  }
  let x_1338 : f32 = x_1330;
  u_xlat14.x = x_1338;
  let x_1340 : bool = u_xlatb21;
  if (x_1340) {
    let x_1345 : f32 = u_xlat15.x;
    x_1341 = x_1345;
  } else {
    let x_1348 : f32 = u_xlat14.x;
    x_1341 = x_1348;
  }
  let x_1349 : f32 = x_1341;
  u_xlat14.x = x_1349;
  let x_1352 : f32 = u_xlat14.x;
  u_xlat14.x = (x_1352 * 0.01481481455266475677f);
  let x_1357 : f32 = u_xlat14.x;
  u_xlat14.x = (-(abs(x_1357)) + 1.0f);
  let x_1363 : f32 = u_xlat14.x;
  u_xlat14.x = max(x_1363, 0.0f);
  let x_1367 : f32 = u_xlat14.x;
  u_xlat21 = ((x_1367 * -2.0f) + 3.0f);
  let x_1372 : f32 = u_xlat14.x;
  let x_1374 : f32 = u_xlat14.x;
  u_xlat14.x = (x_1372 * x_1374);
  let x_1378 : f32 = u_xlat14.x;
  let x_1379 : f32 = u_xlat21;
  u_xlat14.x = (x_1378 * x_1379);
  let x_1383 : f32 = u_xlat14.x;
  let x_1385 : f32 = u_xlat14.x;
  u_xlat14.x = (x_1383 * x_1385);
  let x_1389 : f32 = u_xlat0.x;
  let x_1391 : f32 = u_xlat14.x;
  u_xlat0.x = (x_1389 * x_1391);
  let x_1395 : f32 = u_xlat8.x;
  let x_1398 : f32 = u_xlat7.x;
  u_xlat7.x = ((-(x_1395) * x_1398) + 0.02999999932944774628f);
  let x_1404 : f32 = u_xlat7.x;
  let x_1406 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1404 * x_1406);
  let x_1410 : f32 = u_xlat0.x;
  let x_1414 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_1410 * 0.18000000715255737305f) + x_1414);
  let x_1421 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(1.45143926143646240234f, -0.23651075363159179688f, -0.21492856740951538086f), vec3<f32>(x_1421.x, x_1421.z, x_1421.w));
  let x_1429 : vec4<f32> = u_xlat2;
  u_xlat0.y = dot(vec3<f32>(-0.07655377686023712158f, 1.17622971534729003906f, -0.09967592358589172363f), vec3<f32>(x_1429.x, x_1429.z, x_1429.w));
  let x_1437 : vec4<f32> = u_xlat2;
  u_xlat0.z = dot(vec3<f32>(0.0083161480724811554f, -0.00603244965896010399f, 0.99771630764007568359f), vec3<f32>(x_1437.x, x_1437.z, x_1437.w));
  let x_1441 : vec4<f32> = u_xlat0;
  let x_1444 : vec3<f32> = max(vec3<f32>(x_1441.x, x_1441.y, x_1441.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1445 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1444.x, x_1444.y, x_1444.z, x_1445.w);
  let x_1447 : vec4<f32> = u_xlat0;
  u_xlat21 = dot(vec3<f32>(x_1447.x, x_1447.y, x_1447.z), vec3<f32>(0.27222898602485656738f, 0.67408198118209838867f, 0.05368949845433235168f));
  let x_1454 : f32 = u_xlat21;
  let x_1457 : vec4<f32> = u_xlat0;
  let x_1459 : vec3<f32> = (-(vec3<f32>(x_1454, x_1454, x_1454)) + vec3<f32>(x_1457.x, x_1457.y, x_1457.z));
  let x_1460 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1459.x, x_1459.y, x_1459.z, x_1460.w);
  let x_1462 : vec4<f32> = u_xlat0;
  let x_1467 : f32 = u_xlat21;
  let x_1469 : vec3<f32> = ((vec3<f32>(x_1462.x, x_1462.y, x_1462.z) * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f)) + vec3<f32>(x_1467, x_1467, x_1467));
  let x_1470 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1469.x, x_1469.y, x_1469.z, x_1470.w);
  let x_1472 : vec4<f32> = u_xlat0;
  let x_1476 : vec3<f32> = (vec3<f32>(x_1472.x, x_1472.y, x_1472.z) + vec3<f32>(0.02457859925925731659f, 0.02457859925925731659f, 0.02457859925925731659f));
  let x_1477 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1476.x, x_1476.y, x_1476.z, x_1477.w);
  let x_1479 : vec4<f32> = u_xlat0;
  let x_1481 : vec4<f32> = u_xlat1;
  let x_1486 : vec3<f32> = ((vec3<f32>(x_1479.x, x_1479.y, x_1479.z) * vec3<f32>(x_1481.x, x_1481.y, x_1481.z)) + vec3<f32>(-0.00009053700341610238f, -0.00009053700341610238f, -0.00009053700341610238f));
  let x_1487 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1486.x, x_1486.y, x_1486.z, x_1487.w);
  let x_1489 : vec4<f32> = u_xlat0;
  let x_1496 : vec3<f32> = ((vec3<f32>(x_1489.x, x_1489.y, x_1489.z) * vec3<f32>(0.98372900485992431641f, 0.98372900485992431641f, 0.98372900485992431641f)) + vec3<f32>(0.4329510033130645752f, 0.4329510033130645752f, 0.4329510033130645752f));
  let x_1497 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1496.x, x_1496.y, x_1496.z, x_1497.w);
  let x_1499 : vec4<f32> = u_xlat0;
  let x_1501 : vec4<f32> = u_xlat2;
  let x_1506 : vec3<f32> = ((vec3<f32>(x_1499.x, x_1499.y, x_1499.z) * vec3<f32>(x_1501.x, x_1501.y, x_1501.z)) + vec3<f32>(0.23808099329471588135f, 0.23808099329471588135f, 0.23808099329471588135f));
  let x_1507 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1506.x, x_1506.y, x_1506.z, x_1507.w);
  let x_1509 : vec4<f32> = u_xlat1;
  let x_1511 : vec4<f32> = u_xlat0;
  let x_1513 : vec3<f32> = (vec3<f32>(x_1509.x, x_1509.y, x_1509.z) / vec3<f32>(x_1511.x, x_1511.y, x_1511.z));
  let x_1514 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1513.x, x_1513.y, x_1513.z, x_1514.w);
  let x_1520 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(0.66245418787002563477f, 0.13400420546531677246f, 0.1561876833438873291f), vec3<f32>(x_1520.x, x_1520.y, x_1520.z));
  let x_1528 : vec4<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(0.27222871780395507812f, 0.67408174276351928711f, 0.05368951708078384399f), vec3<f32>(x_1528.x, x_1528.y, x_1528.z));
  let x_1536 : vec4<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(-0.00557464966550469398f, 0.00406073359772562981f, 1.01033914089202880859f), vec3<f32>(x_1536.x, x_1536.y, x_1536.z));
  let x_1540 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(x_1540.x, x_1540.y, x_1540.z), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1545 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1545, 0.00009999999747378752f);
  let x_1548 : vec4<f32> = u_xlat1;
  let x_1550 : vec4<f32> = u_xlat0;
  let x_1552 : vec2<f32> = (vec2<f32>(x_1548.x, x_1548.y) / vec2<f32>(x_1550.x, x_1550.x));
  let x_1553 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1552.x, x_1552.y, x_1553.z, x_1553.w);
  let x_1556 : f32 = u_xlat1.y;
  u_xlat21 = max(x_1556, 0.0f);
  let x_1558 : f32 = u_xlat21;
  u_xlat21 = min(x_1558, 65504.0f);
  let x_1561 : f32 = u_xlat21;
  u_xlat21 = log2(x_1561);
  let x_1563 : f32 = u_xlat21;
  u_xlat21 = (x_1563 * 0.98110002279281616211f);
  let x_1566 : f32 = u_xlat21;
  u_xlat1.y = exp2(x_1566);
  let x_1570 : f32 = u_xlat0.y;
  u_xlat21 = max(x_1570, 0.00009999999747378752f);
  let x_1573 : f32 = u_xlat1.y;
  let x_1574 : f32 = u_xlat21;
  u_xlat21 = (x_1573 / x_1574);
  let x_1577 : f32 = u_xlat0.x;
  u_xlat22 = (-(x_1577) + 1.0f);
  let x_1581 : f32 = u_xlat0.y;
  let x_1583 : f32 = u_xlat22;
  u_xlat0.z = (-(x_1581) + x_1583);
  let x_1586 : f32 = u_xlat21;
  let x_1588 : vec4<f32> = u_xlat0;
  let x_1590 : vec2<f32> = (vec2<f32>(x_1586, x_1586) * vec2<f32>(x_1588.x, x_1588.z));
  let x_1591 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1590.x, x_1591.y, x_1590.y, x_1591.w);
  let x_1597 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(1.64102339744567871094f, -0.32480329275131225586f, -0.23642469942569732666f), vec3<f32>(x_1597.x, x_1597.y, x_1597.z));
  let x_1605 : vec4<f32> = u_xlat1;
  u_xlat0.y = dot(vec3<f32>(-0.66366285085678100586f, 1.6153316497802734375f, 0.01675634831190109253f), vec3<f32>(x_1605.x, x_1605.y, x_1605.z));
  let x_1613 : vec4<f32> = u_xlat1;
  u_xlat0.z = dot(vec3<f32>(0.01172189414501190186f, -0.00828444212675094604f, 0.98839485645294189453f), vec3<f32>(x_1613.x, x_1613.y, x_1613.z));
  let x_1617 : vec4<f32> = u_xlat0;
  u_xlat21 = dot(vec3<f32>(x_1617.x, x_1617.y, x_1617.z), vec3<f32>(0.27222898602485656738f, 0.67408198118209838867f, 0.05368949845433235168f));
  let x_1620 : f32 = u_xlat21;
  let x_1623 : vec4<f32> = u_xlat0;
  let x_1625 : vec3<f32> = (-(vec3<f32>(x_1620, x_1620, x_1620)) + vec3<f32>(x_1623.x, x_1623.y, x_1623.z));
  let x_1626 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1625.x, x_1625.y, x_1625.z, x_1626.w);
  let x_1628 : vec4<f32> = u_xlat0;
  let x_1633 : f32 = u_xlat21;
  let x_1635 : vec3<f32> = ((vec3<f32>(x_1628.x, x_1628.y, x_1628.z) * vec3<f32>(0.93000000715255737305f, 0.93000000715255737305f, 0.93000000715255737305f)) + vec3<f32>(x_1633, x_1633, x_1633));
  let x_1636 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1635.x, x_1635.y, x_1635.z, x_1636.w);
  let x_1638 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(0.66245418787002563477f, 0.13400420546531677246f, 0.1561876833438873291f), vec3<f32>(x_1638.x, x_1638.y, x_1638.z));
  let x_1642 : vec4<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(0.27222871780395507812f, 0.67408174276351928711f, 0.05368951708078384399f), vec3<f32>(x_1642.x, x_1642.y, x_1642.z));
  let x_1646 : vec4<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(-0.00557464966550469398f, 0.00406073359772562981f, 1.01033914089202880859f), vec3<f32>(x_1646.x, x_1646.y, x_1646.z));
  let x_1654 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(0.98722398281097412109f, -0.00611326983198523521f, 0.01595330052077770233f), vec3<f32>(x_1654.x, x_1654.y, x_1654.z));
  let x_1662 : vec4<f32> = u_xlat1;
  u_xlat0.y = dot(vec3<f32>(-0.00759836006909608841f, 1.00186002254486083984f, 0.00533019984140992165f), vec3<f32>(x_1662.x, x_1662.y, x_1662.z));
  let x_1670 : vec4<f32> = u_xlat1;
  u_xlat0.z = dot(vec3<f32>(0.0030725700780749321f, -0.00509594986215233803f, 1.08168005943298339844f), vec3<f32>(x_1670.x, x_1670.y, x_1670.z));
  let x_1678 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(3.24096989631652832031f, -1.53738319873809814453f, -0.49861076474189758301f), vec3<f32>(x_1678.x, x_1678.y, x_1678.z));
  let x_1683 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1683, 0.0f, 1.0f);
  let x_1690 : vec4<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(-0.96924364566802978516f, 1.87596750259399414062f, 0.04155505821108818054f), vec3<f32>(x_1690.x, x_1690.y, x_1690.z));
  let x_1695 : f32 = u_xlat1.y;
  u_xlat1.y = clamp(x_1695, 0.0f, 1.0f);
  let x_1702 : vec4<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(0.05563008040189743042f, -0.2039769589900970459f, 1.05697154998779296875f), vec3<f32>(x_1702.x, x_1702.y, x_1702.z));
  let x_1707 : f32 = u_xlat1.z;
  u_xlat1.z = clamp(x_1707, 0.0f, 1.0f);
  let x_1712 : f32 = x_25.x_UserLut_Params.w;
  u_xlatb0.x = (0.0f < x_1712);
  let x_1716 : bool = u_xlatb0.x;
  if (x_1716) {
    let x_1719 : vec4<f32> = u_xlat1;
    let x_1723 : vec3<f32> = (vec3<f32>(x_1719.x, x_1719.y, x_1719.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
    let x_1724 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1723.x, x_1723.y, x_1723.z, x_1724.w);
    let x_1726 : vec4<f32> = u_xlat1;
    let x_1728 : vec3<f32> = log2(vec3<f32>(x_1726.x, x_1726.y, x_1726.z));
    let x_1729 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1728.x, x_1728.y, x_1728.z, x_1729.w);
    let x_1731 : vec4<f32> = u_xlat2;
    let x_1735 : vec3<f32> = (vec3<f32>(x_1731.x, x_1731.y, x_1731.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
    let x_1736 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1735.x, x_1735.y, x_1735.z, x_1736.w);
    let x_1738 : vec4<f32> = u_xlat2;
    let x_1740 : vec3<f32> = exp2(vec3<f32>(x_1738.x, x_1738.y, x_1738.z));
    let x_1741 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1740.x, x_1740.y, x_1740.z, x_1741.w);
    let x_1743 : vec4<f32> = u_xlat2;
    let x_1750 : vec3<f32> = ((vec3<f32>(x_1743.x, x_1743.y, x_1743.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
    let x_1751 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1750.x, x_1750.y, x_1750.z, x_1751.w);
    let x_1755 : vec4<f32> = u_xlat1;
    let x_1757 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_1755.x, x_1755.y, x_1755.z, x_1755.x));
    u_xlatb3 = vec3<bool>(x_1757.x, x_1757.y, x_1757.z);
    let x_1761 : vec4<f32> = u_xlat0;
    hlslcc_movcTemp = x_1761;
    let x_1763 : bool = u_xlatb3.x;
    if (x_1763) {
      let x_1768 : f32 = u_xlat0.x;
      x_1764 = x_1768;
    } else {
      let x_1771 : f32 = u_xlat2.x;
      x_1764 = x_1771;
    }
    let x_1772 : f32 = x_1764;
    hlslcc_movcTemp.x = x_1772;
    let x_1775 : bool = u_xlatb3.y;
    if (x_1775) {
      let x_1780 : f32 = u_xlat0.y;
      x_1776 = x_1780;
    } else {
      let x_1783 : f32 = u_xlat2.y;
      x_1776 = x_1783;
    }
    let x_1784 : f32 = x_1776;
    hlslcc_movcTemp.y = x_1784;
    let x_1787 : bool = u_xlatb3.z;
    if (x_1787) {
      let x_1792 : f32 = u_xlat0.z;
      x_1788 = x_1792;
    } else {
      let x_1795 : f32 = u_xlat2.z;
      x_1788 = x_1795;
    }
    let x_1796 : f32 = x_1788;
    hlslcc_movcTemp.z = x_1796;
    let x_1798 : vec4<f32> = hlslcc_movcTemp;
    u_xlat0 = x_1798;
    let x_1799 : vec4<f32> = u_xlat0;
    let x_1802 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1804 : vec3<f32> = (vec3<f32>(x_1799.z, x_1799.x, x_1799.y) * vec3<f32>(x_1802.z, x_1802.z, x_1802.z));
    let x_1805 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1804.x, x_1804.y, x_1804.z, x_1805.w);
    let x_1808 : f32 = u_xlat2.x;
    u_xlat21 = floor(x_1808);
    let x_1811 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1813 : vec2<f32> = (vec2<f32>(x_1811.x, x_1811.y) * vec2<f32>(0.5f, 0.5f));
    let x_1814 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1813.x, x_1814.y, x_1814.z, x_1813.y);
    let x_1816 : vec4<f32> = u_xlat2;
    let x_1819 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1822 : vec4<f32> = u_xlat2;
    let x_1824 : vec2<f32> = ((vec2<f32>(x_1816.y, x_1816.z) * vec2<f32>(x_1819.x, x_1819.y)) + vec2<f32>(x_1822.x, x_1822.w));
    let x_1825 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1825.x, x_1824.x, x_1824.y, x_1825.w);
    let x_1827 : f32 = u_xlat21;
    let x_1829 : f32 = x_25.x_UserLut_Params.y;
    let x_1832 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_1827 * x_1829) + x_1832);
    let x_1839 : vec4<f32> = u_xlat2;
    let x_1841 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1839.x, x_1839.z), 0.0f);
    u_xlat3 = vec3<f32>(x_1841.x, x_1841.y, x_1841.z);
    let x_1844 : f32 = x_25.x_UserLut_Params.y;
    u_xlat4.x = x_1844;
    u_xlat4.y = 0.0f;
    let x_1847 : vec4<f32> = u_xlat2;
    let x_1849 : vec4<f32> = u_xlat4;
    let x_1851 : vec2<f32> = (vec2<f32>(x_1847.x, x_1847.z) + vec2<f32>(x_1849.x, x_1849.y));
    let x_1852 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1851.x, x_1851.y, x_1852.z, x_1852.w);
    let x_1857 : vec4<f32> = u_xlat2;
    let x_1859 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1857.x, x_1857.y), 0.0f);
    let x_1860 : vec3<f32> = vec3<f32>(x_1859.x, x_1859.y, x_1859.z);
    let x_1861 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1860.x, x_1860.y, x_1860.z, x_1861.w);
    let x_1864 : f32 = u_xlat0.z;
    let x_1866 : f32 = x_25.x_UserLut_Params.z;
    let x_1868 : f32 = u_xlat21;
    u_xlat21 = ((x_1864 * x_1866) + -(x_1868));
    let x_1871 : vec3<f32> = u_xlat3;
    let x_1873 : vec4<f32> = u_xlat2;
    let x_1875 : vec3<f32> = (-(x_1871) + vec3<f32>(x_1873.x, x_1873.y, x_1873.z));
    let x_1876 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1875.x, x_1875.y, x_1875.z, x_1876.w);
    let x_1878 : f32 = u_xlat21;
    let x_1880 : vec4<f32> = u_xlat2;
    let x_1883 : vec3<f32> = u_xlat3;
    let x_1884 : vec3<f32> = ((vec3<f32>(x_1878, x_1878, x_1878) * vec3<f32>(x_1880.x, x_1880.y, x_1880.z)) + x_1883);
    let x_1885 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1884.x, x_1884.y, x_1884.z, x_1885.w);
    let x_1887 : vec4<f32> = u_xlat0;
    let x_1890 : vec4<f32> = u_xlat2;
    let x_1892 : vec3<f32> = (-(vec3<f32>(x_1887.x, x_1887.y, x_1887.z)) + vec3<f32>(x_1890.x, x_1890.y, x_1890.z));
    let x_1893 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1892.x, x_1892.y, x_1892.z, x_1893.w);
    let x_1896 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1898 : vec4<f32> = u_xlat2;
    let x_1901 : vec4<f32> = u_xlat0;
    let x_1903 : vec3<f32> = ((vec3<f32>(x_1896.w, x_1896.w, x_1896.w) * vec3<f32>(x_1898.x, x_1898.y, x_1898.z)) + vec3<f32>(x_1901.x, x_1901.y, x_1901.z));
    let x_1904 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1903.x, x_1903.y, x_1903.z, x_1904.w);
    let x_1906 : vec4<f32> = u_xlat0;
    let x_1910 : vec3<f32> = (vec3<f32>(x_1906.x, x_1906.y, x_1906.z) * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
    let x_1911 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1910.x, x_1910.y, x_1910.z, x_1911.w);
    let x_1913 : vec4<f32> = u_xlat0;
    u_xlat3 = (vec3<f32>(x_1913.x, x_1913.y, x_1913.z) + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
    let x_1918 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_1918 * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
    let x_1922 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_1922));
    let x_1925 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_1925 * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
    let x_1929 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_1929);
    let x_1933 : vec4<f32> = u_xlat0;
    let x_1935 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_1933.x, x_1933.y, x_1933.z, x_1933.x));
    u_xlatb0 = vec3<bool>(x_1935.x, x_1935.y, x_1935.z);
    let x_1938 : bool = u_xlatb0.x;
    if (x_1938) {
      let x_1943 : f32 = u_xlat2.x;
      x_1939 = x_1943;
    } else {
      let x_1946 : f32 = u_xlat3.x;
      x_1939 = x_1946;
    }
    let x_1947 : f32 = x_1939;
    u_xlat1.x = x_1947;
    let x_1950 : bool = u_xlatb0.y;
    if (x_1950) {
      let x_1955 : f32 = u_xlat2.y;
      x_1951 = x_1955;
    } else {
      let x_1958 : f32 = u_xlat3.y;
      x_1951 = x_1958;
    }
    let x_1959 : f32 = x_1951;
    u_xlat1.y = x_1959;
    let x_1962 : bool = u_xlatb0.z;
    if (x_1962) {
      let x_1967 : f32 = u_xlat2.z;
      x_1963 = x_1967;
    } else {
      let x_1970 : f32 = u_xlat3.z;
      x_1963 = x_1970;
    }
    let x_1971 : f32 = x_1963;
    u_xlat1.z = x_1971;
  }
  let x_1973 : vec4<f32> = u_xlat1;
  let x_1976 : vec4<f32> = x_25.x_Lut_Params;
  let x_1978 : vec3<f32> = (vec3<f32>(x_1973.z, x_1973.x, x_1973.y) * vec3<f32>(x_1976.z, x_1976.z, x_1976.z));
  let x_1979 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1978.x, x_1978.y, x_1978.z, x_1979.w);
  let x_1982 : f32 = u_xlat0.x;
  u_xlat0.x = floor(x_1982);
  let x_1986 : vec4<f32> = x_25.x_Lut_Params;
  let x_1988 : vec2<f32> = (vec2<f32>(x_1986.x, x_1986.y) * vec2<f32>(0.5f, 0.5f));
  let x_1989 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1988.x, x_1988.y, x_1989.z, x_1989.w);
  let x_1991 : vec4<f32> = u_xlat0;
  let x_1994 : vec4<f32> = x_25.x_Lut_Params;
  let x_1997 : vec4<f32> = u_xlat1;
  let x_1999 : vec2<f32> = ((vec2<f32>(x_1991.y, x_1991.z) * vec2<f32>(x_1994.x, x_1994.y)) + vec2<f32>(x_1997.x, x_1997.y));
  let x_2000 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_2000.x, x_1999.x, x_1999.y, x_2000.w);
  let x_2003 : f32 = u_xlat0.x;
  let x_2005 : f32 = x_25.x_Lut_Params.y;
  let x_2008 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_2003 * x_2005) + x_2008);
  let x_2015 : vec4<f32> = u_xlat2;
  let x_2017 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_2015.x, x_2015.z), 0.0f);
  u_xlat7 = vec3<f32>(x_2017.x, x_2017.y, x_2017.z);
  let x_2020 : f32 = x_25.x_Lut_Params.y;
  u_xlat1.x = x_2020;
  u_xlat1.y = 0.0f;
  let x_2023 : vec4<f32> = u_xlat1;
  let x_2025 : vec4<f32> = u_xlat2;
  let x_2027 : vec2<f32> = (vec2<f32>(x_2023.x, x_2023.y) + vec2<f32>(x_2025.x, x_2025.z));
  let x_2028 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2027.x, x_2027.y, x_2028.z, x_2028.w);
  let x_2033 : vec4<f32> = u_xlat1;
  let x_2035 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_2033.x, x_2033.y), 0.0f);
  let x_2036 : vec3<f32> = vec3<f32>(x_2035.x, x_2035.y, x_2035.z);
  let x_2037 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2036.x, x_2036.y, x_2037.z, x_2036.z);
  let x_2040 : f32 = u_xlat1.z;
  let x_2042 : f32 = x_25.x_Lut_Params.z;
  let x_2045 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2040 * x_2042) + -(x_2045));
  let x_2049 : vec3<f32> = u_xlat7;
  let x_2051 : vec4<f32> = u_xlat1;
  let x_2053 : vec3<f32> = (-(x_2049) + vec3<f32>(x_2051.x, x_2051.y, x_2051.w));
  let x_2054 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2053.x, x_2053.y, x_2053.z, x_2054.w);
  let x_2056 : vec4<f32> = u_xlat0;
  let x_2058 : vec4<f32> = u_xlat1;
  let x_2061 : vec3<f32> = u_xlat7;
  let x_2062 : vec3<f32> = ((vec3<f32>(x_2056.x, x_2056.x, x_2056.x) * vec3<f32>(x_2058.x, x_2058.y, x_2058.z)) + x_2061);
  let x_2063 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2062.x, x_2062.y, x_2062.z, x_2063.w);
  let x_2067 : vec4<f32> = u_xlat0;
  let x_2069 : vec3<f32> = sqrt(vec3<f32>(x_2067.x, x_2067.y, x_2067.z));
  let x_2070 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2069.x, x_2069.y, x_2069.z, x_2070.w);
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


