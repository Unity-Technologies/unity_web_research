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
  x_Dithering_Params : vec4<f32>,
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

var<private> u_xlatb21 : bool;

var<private> u_xlat21 : f32;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlatb7 : bool;

var<private> u_xlatb14 : vec2<bool>;

var<private> u_xlatb10 : bool;

var<private> u_xlatb22 : bool;

@group(0) @binding(3) var x_UserLut : texture_2d<f32>;

@group(0) @binding(2) var x_InternalLut : texture_2d<f32>;

@group(0) @binding(4) var x_BlueNoise_Texture : texture_2d<f32>;

@group(0) @binding(6) var sampler_PointRepeat : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_235 : f32;
  var x_475 : f32;
  var x_660 : f32;
  var x_1052 : f32;
  var x_1061 : f32;
  var x_1191 : f32;
  var x_1242 : f32;
  var x_1269 : f32;
  var x_1293 : f32;
  var x_1304 : f32;
  var hlslcc_movcTemp : vec4<f32>;
  var x_1727 : f32;
  var x_1739 : f32;
  var x_1751 : f32;
  var x_1902 : f32;
  var x_1914 : f32;
  var x_1926 : f32;
  var x_2109 : f32;
  var x_2121 : f32;
  var x_2133 : f32;
  var x_2190 : f32;
  var x_2202 : f32;
  var x_2214 : f32;
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
  let x_771 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_770.x, x_770.y, x_770.z, x_771.w);
  let x_776 : f32 = x_25.x_Vignette_Params2.z;
  u_xlatb21 = (0.0f < x_776);
  let x_778 : bool = u_xlatb21;
  if (x_778) {
    let x_781 : vec2<f32> = u_xlat15;
    let x_783 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_786 : vec2<f32> = (x_781 + -(vec2<f32>(x_783.x, x_783.y)));
    let x_787 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_786.x, x_786.y, x_787.z, x_787.w);
    let x_789 : vec4<f32> = u_xlat1;
    let x_793 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_795 : vec2<f32> = (abs(vec2<f32>(x_789.x, x_789.y)) * vec2<f32>(x_793.z, x_793.z));
    let x_796 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_796.x, x_795.x, x_795.y, x_796.w);
    let x_799 : f32 = u_xlat1.y;
    let x_802 : f32 = x_25.x_Vignette_Params1.w;
    u_xlat1.x = (x_799 * x_802);
    let x_806 : vec4<f32> = u_xlat1;
    let x_808 : vec4<f32> = u_xlat1;
    u_xlat21 = dot(vec2<f32>(x_806.x, x_806.z), vec2<f32>(x_808.x, x_808.z));
    let x_811 : f32 = u_xlat21;
    u_xlat21 = (-(x_811) + 1.0f);
    let x_814 : f32 = u_xlat21;
    u_xlat21 = max(x_814, 0.0f);
    let x_816 : f32 = u_xlat21;
    u_xlat21 = log2(x_816);
    let x_818 : f32 = u_xlat21;
    let x_820 : f32 = x_25.x_Vignette_Params2.w;
    u_xlat21 = (x_818 * x_820);
    let x_822 : f32 = u_xlat21;
    u_xlat21 = exp2(x_822);
    let x_825 : vec4<f32> = x_25.x_Vignette_Params1;
    let x_829 : vec3<f32> = (-(vec3<f32>(x_825.x, x_825.y, x_825.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_830 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_829.x, x_829.y, x_829.z, x_830.w);
    let x_832 : f32 = u_xlat21;
    let x_834 : vec4<f32> = u_xlat1;
    let x_838 : vec4<f32> = x_25.x_Vignette_Params1;
    let x_840 : vec3<f32> = ((vec3<f32>(x_832, x_832, x_832) * vec3<f32>(x_834.x, x_834.y, x_834.z)) + vec3<f32>(x_838.x, x_838.y, x_838.z));
    let x_841 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_840.x, x_840.y, x_840.z, x_841.w);
    let x_843 : vec4<f32> = u_xlat0;
    let x_845 : vec4<f32> = u_xlat1;
    let x_847 : vec3<f32> = (vec3<f32>(x_843.x, x_843.y, x_843.z) * vec3<f32>(x_845.x, x_845.y, x_845.z));
    let x_848 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_847.x, x_847.y, x_847.z, x_848.w);
  }
  let x_850 : vec4<f32> = u_xlat0;
  let x_854 : vec4<f32> = x_25.x_Lut_Params;
  let x_856 : vec3<f32> = (vec3<f32>(x_850.x, x_850.y, x_850.z) * vec3<f32>(x_854.w, x_854.w, x_854.w));
  let x_857 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_856.x, x_856.y, x_856.z, x_857.w);
  let x_864 : vec4<f32> = u_xlat0;
  u_xlat8.x = dot(vec3<f32>(0.43970099091529846191f, 0.38297799229621887207f, 0.17733499407768249512f), vec3<f32>(x_864.x, x_864.y, x_864.z));
  let x_872 : vec4<f32> = u_xlat0;
  u_xlat8.y = dot(vec3<f32>(0.08979229629039764404f, 0.81342297792434692383f, 0.09676159918308258057f), vec3<f32>(x_872.x, x_872.y, x_872.z));
  let x_880 : vec4<f32> = u_xlat0;
  u_xlat8.z = dot(vec3<f32>(0.01754399947822093964f, 0.111543998122215271f, 0.8707039952278137207f), vec3<f32>(x_880.x, x_880.y, x_880.z));
  let x_885 : f32 = u_xlat8.y;
  let x_887 : f32 = u_xlat8.x;
  u_xlat0.x = min(x_885, x_887);
  let x_891 : f32 = u_xlat8.z;
  let x_893 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_891, x_893);
  let x_897 : f32 = u_xlat8.y;
  let x_899 : f32 = u_xlat8.x;
  u_xlat7.x = max(x_897, x_899);
  let x_903 : f32 = u_xlat8.z;
  let x_905 : f32 = u_xlat7.x;
  u_xlat0.y = max(x_903, x_905);
  let x_908 : vec4<f32> = u_xlat0;
  let x_913 : vec3<f32> = max(vec3<f32>(x_908.x, x_908.y, x_908.y), vec3<f32>(0.00009999999747378752f, 0.00009999999747378752f, 0.00999999977648258209f));
  let x_914 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_913.x, x_913.y, x_913.z, x_914.w);
  let x_917 : f32 = u_xlat0.x;
  let x_920 : f32 = u_xlat0.y;
  u_xlat0.x = (-(x_917) + x_920);
  let x_924 : f32 = u_xlat0.x;
  let x_926 : f32 = u_xlat0.z;
  u_xlat0.x = (x_924 / x_926);
  let x_929 : vec3<f32> = u_xlat8;
  let x_932 : vec3<f32> = u_xlat8;
  u_xlat7 = (-(vec3<f32>(x_929.y, x_929.x, x_929.z)) + vec3<f32>(x_932.z, x_932.y, x_932.x));
  let x_935 : vec3<f32> = u_xlat7;
  let x_937 : vec3<f32> = u_xlat8;
  let x_939 : vec2<f32> = (vec2<f32>(x_935.x, x_935.y) * vec2<f32>(x_937.z, x_937.y));
  let x_940 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_939.x, x_939.y, x_940.z);
  let x_943 : f32 = u_xlat7.y;
  let x_945 : f32 = u_xlat7.x;
  u_xlat7.x = (x_943 + x_945);
  let x_949 : f32 = u_xlat8.x;
  let x_951 : f32 = u_xlat7.z;
  let x_954 : f32 = u_xlat7.x;
  u_xlat7.x = ((x_949 * x_951) + x_954);
  let x_958 : f32 = u_xlat7.x;
  u_xlat7.x = max(x_958, 0.0f);
  let x_962 : f32 = u_xlat7.x;
  u_xlat7.x = sqrt(x_962);
  let x_966 : f32 = u_xlat8.y;
  let x_968 : f32 = u_xlat8.z;
  u_xlat14.x = (x_966 + x_968);
  let x_972 : f32 = u_xlat8.x;
  let x_974 : f32 = u_xlat14.x;
  u_xlat14.x = (x_972 + x_974);
  let x_978 : f32 = u_xlat7.x;
  let x_982 : f32 = u_xlat14.x;
  u_xlat7.x = ((x_978 * 1.75f) + x_982);
  let x_986 : f32 = u_xlat0.x;
  u_xlat21 = (x_986 + -0.40000000596046447754f);
  let x_989 : f32 = u_xlat21;
  u_xlat1.x = (x_989 * 2.5f);
  let x_994 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_994)) + 1.0f);
  let x_1000 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_1000, 0.0f);
  let x_1003 : f32 = u_xlat21;
  u_xlatb21 = (x_1003 >= 0.0f);
  let x_1005 : bool = u_xlatb21;
  u_xlat21 = select(-1.0f, 1.0f, x_1005);
  let x_1008 : f32 = u_xlat1.x;
  let x_1011 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_1008) * x_1011) + 1.0f);
  let x_1015 : f32 = u_xlat21;
  let x_1017 : f32 = u_xlat1.x;
  u_xlat7.z = ((x_1015 * x_1017) + 1.0f);
  let x_1021 : vec3<f32> = u_xlat7;
  u_xlat14 = (vec2<f32>(x_1021.x, x_1021.z) * vec2<f32>(0.3333333432674407959f, 0.02500000037252902985f));
  let x_1029 : f32 = u_xlat7.x;
  u_xlatb1 = (0.15999999642372131348f >= x_1029);
  let x_1033 : f32 = u_xlat7.x;
  u_xlatb7 = (x_1033 >= 0.47999998927116394043f);
  let x_1038 : f32 = u_xlat14.x;
  u_xlat14.x = (0.07999999821186065674f / x_1038);
  let x_1042 : f32 = u_xlat14.x;
  u_xlat14.x = (x_1042 + -0.5f);
  let x_1046 : f32 = u_xlat14.x;
  let x_1048 : f32 = u_xlat14.y;
  u_xlat14.x = (x_1046 * x_1048);
  let x_1051 : bool = u_xlatb7;
  if (x_1051) {
    x_1052 = 0.0f;
  } else {
    let x_1057 : f32 = u_xlat14.x;
    x_1052 = x_1057;
  }
  let x_1058 : f32 = x_1052;
  u_xlat7.x = x_1058;
  let x_1060 : bool = u_xlatb1;
  if (x_1060) {
    let x_1065 : f32 = u_xlat14.y;
    x_1061 = x_1065;
  } else {
    let x_1068 : f32 = u_xlat7.x;
    x_1061 = x_1068;
  }
  let x_1069 : f32 = x_1061;
  u_xlat7.x = x_1069;
  let x_1072 : f32 = u_xlat7.x;
  u_xlat7.x = (x_1072 + 1.0f);
  let x_1075 : vec3<f32> = u_xlat7;
  let x_1077 : vec3<f32> = u_xlat8;
  let x_1078 : vec3<f32> = (vec3<f32>(x_1075.x, x_1075.x, x_1075.x) * x_1077);
  let x_1079 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1079.x, x_1078.x, x_1078.y, x_1078.z);
  let x_1084 : vec4<f32> = u_xlat2;
  let x_1086 : vec4<f32> = u_xlat2;
  let x_1089 : vec4<bool> = (vec4<f32>(x_1084.z, x_1084.w, x_1084.z, x_1084.w) == vec4<f32>(x_1086.y, x_1086.z, x_1086.y, x_1086.z));
  u_xlatb14 = vec2<bool>(x_1089.x, x_1089.y);
  let x_1092 : bool = u_xlatb14.y;
  let x_1094 : bool = u_xlatb14.x;
  u_xlatb14.x = (x_1092 & x_1094);
  let x_1098 : f32 = u_xlat8.y;
  let x_1100 : f32 = u_xlat7.x;
  let x_1103 : f32 = u_xlat2.w;
  u_xlat21 = ((x_1098 * x_1100) + -(x_1103));
  let x_1106 : f32 = u_xlat21;
  u_xlat21 = (x_1106 * 1.73205077648162841797f);
  let x_1110 : f32 = u_xlat2.y;
  let x_1113 : f32 = u_xlat2.z;
  u_xlat1.x = ((x_1110 * 2.0f) + -(x_1113));
  let x_1118 : f32 = u_xlat8.z;
  let x_1121 : f32 = u_xlat7.x;
  let x_1124 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_1118) * x_1121) + x_1124);
  let x_1127 : f32 = u_xlat21;
  let x_1130 : f32 = u_xlat1.x;
  u_xlat15.x = min(abs(x_1127), abs(x_1130));
  let x_1134 : f32 = u_xlat21;
  let x_1137 : f32 = u_xlat1.x;
  u_xlat22 = max(abs(x_1134), abs(x_1137));
  let x_1140 : f32 = u_xlat22;
  u_xlat22 = (1.0f / x_1140);
  let x_1142 : f32 = u_xlat22;
  let x_1144 : f32 = u_xlat15.x;
  u_xlat15.x = (x_1142 * x_1144);
  let x_1148 : f32 = u_xlat15.x;
  let x_1150 : f32 = u_xlat15.x;
  u_xlat22 = (x_1148 * x_1150);
  let x_1152 : f32 = u_xlat22;
  u_xlat3.x = ((x_1152 * 0.02083509974181652069f) + -0.08513300120830535889f);
  let x_1156 : f32 = u_xlat22;
  let x_1158 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1156 * x_1158) + 0.18014100193977355957f);
  let x_1162 : f32 = u_xlat22;
  let x_1164 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1162 * x_1164) + -0.33029949665069580078f);
  let x_1168 : f32 = u_xlat22;
  let x_1170 : f32 = u_xlat3.x;
  u_xlat22 = ((x_1168 * x_1170) + 0.99986600875854492188f);
  let x_1173 : f32 = u_xlat22;
  let x_1175 : f32 = u_xlat15.x;
  u_xlat3.x = (x_1173 * x_1175);
  let x_1180 : f32 = u_xlat1.x;
  let x_1182 : f32 = u_xlat21;
  u_xlatb10 = (abs(x_1180) < abs(x_1182));
  let x_1186 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1186 * -2.0f) + 1.57079637050628662109f);
  let x_1190 : bool = u_xlatb10;
  if (x_1190) {
    let x_1195 : f32 = u_xlat3.x;
    x_1191 = x_1195;
  } else {
    x_1191 = 0.0f;
  }
  let x_1197 : f32 = x_1191;
  u_xlat3.x = x_1197;
  let x_1200 : f32 = u_xlat15.x;
  let x_1201 : f32 = u_xlat22;
  let x_1204 : f32 = u_xlat3.x;
  u_xlat15.x = ((x_1200 * x_1201) + x_1204);
  let x_1209 : f32 = u_xlat1.x;
  let x_1211 : f32 = u_xlat1.x;
  u_xlatb22 = (x_1209 < -(x_1211));
  let x_1214 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, -3.14159274101257324219f, x_1214);
  let x_1217 : f32 = u_xlat22;
  let x_1219 : f32 = u_xlat15.x;
  u_xlat15.x = (x_1217 + x_1219);
  let x_1222 : f32 = u_xlat21;
  let x_1224 : f32 = u_xlat1.x;
  u_xlat22 = min(x_1222, x_1224);
  let x_1226 : f32 = u_xlat21;
  let x_1228 : f32 = u_xlat1.x;
  u_xlat21 = max(x_1226, x_1228);
  let x_1230 : f32 = u_xlat22;
  let x_1231 : f32 = u_xlat22;
  u_xlatb1 = (x_1230 < -(x_1231));
  let x_1234 : f32 = u_xlat21;
  let x_1235 : f32 = u_xlat21;
  u_xlatb21 = (x_1234 >= -(x_1235));
  let x_1238 : bool = u_xlatb21;
  let x_1239 : bool = u_xlatb1;
  u_xlatb21 = (x_1238 & x_1239);
  let x_1241 : bool = u_xlatb21;
  if (x_1241) {
    let x_1246 : f32 = u_xlat15.x;
    x_1242 = -(x_1246);
  } else {
    let x_1250 : f32 = u_xlat15.x;
    x_1242 = x_1250;
  }
  let x_1251 : f32 = x_1242;
  u_xlat21 = x_1251;
  let x_1252 : f32 = u_xlat21;
  u_xlat21 = (x_1252 * 57.295780181884765625f);
  let x_1256 : bool = u_xlatb14.x;
  let x_1257 : f32 = u_xlat21;
  u_xlat14.x = select(x_1257, 0.0f, x_1256);
  let x_1261 : f32 = u_xlat14.x;
  u_xlatb21 = (x_1261 < 0.0f);
  let x_1264 : f32 = u_xlat14.x;
  u_xlat1.x = (x_1264 + 360.0f);
  let x_1268 : bool = u_xlatb21;
  if (x_1268) {
    let x_1273 : f32 = u_xlat1.x;
    x_1269 = x_1273;
  } else {
    let x_1276 : f32 = u_xlat14.x;
    x_1269 = x_1276;
  }
  let x_1277 : f32 = x_1269;
  u_xlat14.x = x_1277;
  let x_1280 : f32 = u_xlat14.x;
  u_xlatb21 = (x_1280 < -180.0f);
  let x_1285 : f32 = u_xlat14.x;
  u_xlatb1 = (180.0f < x_1285);
  let x_1287 : vec2<f32> = u_xlat14;
  u_xlat15 = (vec2<f32>(x_1287.x, x_1287.x) + vec2<f32>(360.0f, -360.0f));
  let x_1292 : bool = u_xlatb1;
  if (x_1292) {
    let x_1297 : f32 = u_xlat15.y;
    x_1293 = x_1297;
  } else {
    let x_1300 : f32 = u_xlat14.x;
    x_1293 = x_1300;
  }
  let x_1301 : f32 = x_1293;
  u_xlat14.x = x_1301;
  let x_1303 : bool = u_xlatb21;
  if (x_1303) {
    let x_1308 : f32 = u_xlat15.x;
    x_1304 = x_1308;
  } else {
    let x_1311 : f32 = u_xlat14.x;
    x_1304 = x_1311;
  }
  let x_1312 : f32 = x_1304;
  u_xlat14.x = x_1312;
  let x_1315 : f32 = u_xlat14.x;
  u_xlat14.x = (x_1315 * 0.01481481455266475677f);
  let x_1320 : f32 = u_xlat14.x;
  u_xlat14.x = (-(abs(x_1320)) + 1.0f);
  let x_1326 : f32 = u_xlat14.x;
  u_xlat14.x = max(x_1326, 0.0f);
  let x_1330 : f32 = u_xlat14.x;
  u_xlat21 = ((x_1330 * -2.0f) + 3.0f);
  let x_1335 : f32 = u_xlat14.x;
  let x_1337 : f32 = u_xlat14.x;
  u_xlat14.x = (x_1335 * x_1337);
  let x_1341 : f32 = u_xlat14.x;
  let x_1342 : f32 = u_xlat21;
  u_xlat14.x = (x_1341 * x_1342);
  let x_1346 : f32 = u_xlat14.x;
  let x_1348 : f32 = u_xlat14.x;
  u_xlat14.x = (x_1346 * x_1348);
  let x_1352 : f32 = u_xlat0.x;
  let x_1354 : f32 = u_xlat14.x;
  u_xlat0.x = (x_1352 * x_1354);
  let x_1358 : f32 = u_xlat8.x;
  let x_1361 : f32 = u_xlat7.x;
  u_xlat7.x = ((-(x_1358) * x_1361) + 0.02999999932944774628f);
  let x_1367 : f32 = u_xlat7.x;
  let x_1369 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1367 * x_1369);
  let x_1373 : f32 = u_xlat0.x;
  let x_1377 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_1373 * 0.18000000715255737305f) + x_1377);
  let x_1384 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(1.45143926143646240234f, -0.23651075363159179688f, -0.21492856740951538086f), vec3<f32>(x_1384.x, x_1384.z, x_1384.w));
  let x_1392 : vec4<f32> = u_xlat2;
  u_xlat0.y = dot(vec3<f32>(-0.07655377686023712158f, 1.17622971534729003906f, -0.09967592358589172363f), vec3<f32>(x_1392.x, x_1392.z, x_1392.w));
  let x_1400 : vec4<f32> = u_xlat2;
  u_xlat0.z = dot(vec3<f32>(0.0083161480724811554f, -0.00603244965896010399f, 0.99771630764007568359f), vec3<f32>(x_1400.x, x_1400.z, x_1400.w));
  let x_1404 : vec4<f32> = u_xlat0;
  let x_1407 : vec3<f32> = max(vec3<f32>(x_1404.x, x_1404.y, x_1404.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1408 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1407.x, x_1407.y, x_1407.z, x_1408.w);
  let x_1410 : vec4<f32> = u_xlat0;
  u_xlat21 = dot(vec3<f32>(x_1410.x, x_1410.y, x_1410.z), vec3<f32>(0.27222898602485656738f, 0.67408198118209838867f, 0.05368949845433235168f));
  let x_1417 : f32 = u_xlat21;
  let x_1420 : vec4<f32> = u_xlat0;
  let x_1422 : vec3<f32> = (-(vec3<f32>(x_1417, x_1417, x_1417)) + vec3<f32>(x_1420.x, x_1420.y, x_1420.z));
  let x_1423 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1422.x, x_1422.y, x_1422.z, x_1423.w);
  let x_1425 : vec4<f32> = u_xlat0;
  let x_1430 : f32 = u_xlat21;
  let x_1432 : vec3<f32> = ((vec3<f32>(x_1425.x, x_1425.y, x_1425.z) * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f)) + vec3<f32>(x_1430, x_1430, x_1430));
  let x_1433 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1432.x, x_1432.y, x_1432.z, x_1433.w);
  let x_1435 : vec4<f32> = u_xlat0;
  let x_1439 : vec3<f32> = (vec3<f32>(x_1435.x, x_1435.y, x_1435.z) + vec3<f32>(0.02457859925925731659f, 0.02457859925925731659f, 0.02457859925925731659f));
  let x_1440 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1439.x, x_1439.y, x_1439.z, x_1440.w);
  let x_1442 : vec4<f32> = u_xlat0;
  let x_1444 : vec4<f32> = u_xlat1;
  let x_1449 : vec3<f32> = ((vec3<f32>(x_1442.x, x_1442.y, x_1442.z) * vec3<f32>(x_1444.x, x_1444.y, x_1444.z)) + vec3<f32>(-0.00009053700341610238f, -0.00009053700341610238f, -0.00009053700341610238f));
  let x_1450 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1449.x, x_1449.y, x_1449.z, x_1450.w);
  let x_1452 : vec4<f32> = u_xlat0;
  let x_1459 : vec3<f32> = ((vec3<f32>(x_1452.x, x_1452.y, x_1452.z) * vec3<f32>(0.98372900485992431641f, 0.98372900485992431641f, 0.98372900485992431641f)) + vec3<f32>(0.4329510033130645752f, 0.4329510033130645752f, 0.4329510033130645752f));
  let x_1460 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1459.x, x_1459.y, x_1459.z, x_1460.w);
  let x_1462 : vec4<f32> = u_xlat0;
  let x_1464 : vec4<f32> = u_xlat2;
  let x_1469 : vec3<f32> = ((vec3<f32>(x_1462.x, x_1462.y, x_1462.z) * vec3<f32>(x_1464.x, x_1464.y, x_1464.z)) + vec3<f32>(0.23808099329471588135f, 0.23808099329471588135f, 0.23808099329471588135f));
  let x_1470 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1469.x, x_1469.y, x_1469.z, x_1470.w);
  let x_1472 : vec4<f32> = u_xlat1;
  let x_1474 : vec4<f32> = u_xlat0;
  let x_1476 : vec3<f32> = (vec3<f32>(x_1472.x, x_1472.y, x_1472.z) / vec3<f32>(x_1474.x, x_1474.y, x_1474.z));
  let x_1477 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1476.x, x_1476.y, x_1476.z, x_1477.w);
  let x_1483 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(0.66245418787002563477f, 0.13400420546531677246f, 0.1561876833438873291f), vec3<f32>(x_1483.x, x_1483.y, x_1483.z));
  let x_1491 : vec4<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(0.27222871780395507812f, 0.67408174276351928711f, 0.05368951708078384399f), vec3<f32>(x_1491.x, x_1491.y, x_1491.z));
  let x_1499 : vec4<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(-0.00557464966550469398f, 0.00406073359772562981f, 1.01033914089202880859f), vec3<f32>(x_1499.x, x_1499.y, x_1499.z));
  let x_1503 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(x_1503.x, x_1503.y, x_1503.z), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1508 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1508, 0.00009999999747378752f);
  let x_1511 : vec4<f32> = u_xlat1;
  let x_1513 : vec4<f32> = u_xlat0;
  let x_1515 : vec2<f32> = (vec2<f32>(x_1511.x, x_1511.y) / vec2<f32>(x_1513.x, x_1513.x));
  let x_1516 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1515.x, x_1515.y, x_1516.z, x_1516.w);
  let x_1519 : f32 = u_xlat1.y;
  u_xlat21 = max(x_1519, 0.0f);
  let x_1521 : f32 = u_xlat21;
  u_xlat21 = min(x_1521, 65504.0f);
  let x_1524 : f32 = u_xlat21;
  u_xlat21 = log2(x_1524);
  let x_1526 : f32 = u_xlat21;
  u_xlat21 = (x_1526 * 0.98110002279281616211f);
  let x_1529 : f32 = u_xlat21;
  u_xlat1.y = exp2(x_1529);
  let x_1533 : f32 = u_xlat0.y;
  u_xlat21 = max(x_1533, 0.00009999999747378752f);
  let x_1536 : f32 = u_xlat1.y;
  let x_1537 : f32 = u_xlat21;
  u_xlat21 = (x_1536 / x_1537);
  let x_1540 : f32 = u_xlat0.x;
  u_xlat22 = (-(x_1540) + 1.0f);
  let x_1544 : f32 = u_xlat0.y;
  let x_1546 : f32 = u_xlat22;
  u_xlat0.z = (-(x_1544) + x_1546);
  let x_1549 : f32 = u_xlat21;
  let x_1551 : vec4<f32> = u_xlat0;
  let x_1553 : vec2<f32> = (vec2<f32>(x_1549, x_1549) * vec2<f32>(x_1551.x, x_1551.z));
  let x_1554 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1553.x, x_1554.y, x_1553.y, x_1554.w);
  let x_1560 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(1.64102339744567871094f, -0.32480329275131225586f, -0.23642469942569732666f), vec3<f32>(x_1560.x, x_1560.y, x_1560.z));
  let x_1568 : vec4<f32> = u_xlat1;
  u_xlat0.y = dot(vec3<f32>(-0.66366285085678100586f, 1.6153316497802734375f, 0.01675634831190109253f), vec3<f32>(x_1568.x, x_1568.y, x_1568.z));
  let x_1576 : vec4<f32> = u_xlat1;
  u_xlat0.z = dot(vec3<f32>(0.01172189414501190186f, -0.00828444212675094604f, 0.98839485645294189453f), vec3<f32>(x_1576.x, x_1576.y, x_1576.z));
  let x_1580 : vec4<f32> = u_xlat0;
  u_xlat21 = dot(vec3<f32>(x_1580.x, x_1580.y, x_1580.z), vec3<f32>(0.27222898602485656738f, 0.67408198118209838867f, 0.05368949845433235168f));
  let x_1583 : f32 = u_xlat21;
  let x_1586 : vec4<f32> = u_xlat0;
  let x_1588 : vec3<f32> = (-(vec3<f32>(x_1583, x_1583, x_1583)) + vec3<f32>(x_1586.x, x_1586.y, x_1586.z));
  let x_1589 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1588.x, x_1588.y, x_1588.z, x_1589.w);
  let x_1591 : vec4<f32> = u_xlat0;
  let x_1596 : f32 = u_xlat21;
  let x_1598 : vec3<f32> = ((vec3<f32>(x_1591.x, x_1591.y, x_1591.z) * vec3<f32>(0.93000000715255737305f, 0.93000000715255737305f, 0.93000000715255737305f)) + vec3<f32>(x_1596, x_1596, x_1596));
  let x_1599 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1598.x, x_1598.y, x_1598.z, x_1599.w);
  let x_1601 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(0.66245418787002563477f, 0.13400420546531677246f, 0.1561876833438873291f), vec3<f32>(x_1601.x, x_1601.y, x_1601.z));
  let x_1605 : vec4<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(0.27222871780395507812f, 0.67408174276351928711f, 0.05368951708078384399f), vec3<f32>(x_1605.x, x_1605.y, x_1605.z));
  let x_1609 : vec4<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(-0.00557464966550469398f, 0.00406073359772562981f, 1.01033914089202880859f), vec3<f32>(x_1609.x, x_1609.y, x_1609.z));
  let x_1617 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(0.98722398281097412109f, -0.00611326983198523521f, 0.01595330052077770233f), vec3<f32>(x_1617.x, x_1617.y, x_1617.z));
  let x_1625 : vec4<f32> = u_xlat1;
  u_xlat0.y = dot(vec3<f32>(-0.00759836006909608841f, 1.00186002254486083984f, 0.00533019984140992165f), vec3<f32>(x_1625.x, x_1625.y, x_1625.z));
  let x_1633 : vec4<f32> = u_xlat1;
  u_xlat0.z = dot(vec3<f32>(0.0030725700780749321f, -0.00509594986215233803f, 1.08168005943298339844f), vec3<f32>(x_1633.x, x_1633.y, x_1633.z));
  let x_1641 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(3.24096989631652832031f, -1.53738319873809814453f, -0.49861076474189758301f), vec3<f32>(x_1641.x, x_1641.y, x_1641.z));
  let x_1646 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1646, 0.0f, 1.0f);
  let x_1653 : vec4<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(-0.96924364566802978516f, 1.87596750259399414062f, 0.04155505821108818054f), vec3<f32>(x_1653.x, x_1653.y, x_1653.z));
  let x_1658 : f32 = u_xlat1.y;
  u_xlat1.y = clamp(x_1658, 0.0f, 1.0f);
  let x_1665 : vec4<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(0.05563008040189743042f, -0.2039769589900970459f, 1.05697154998779296875f), vec3<f32>(x_1665.x, x_1665.y, x_1665.z));
  let x_1670 : f32 = u_xlat1.z;
  u_xlat1.z = clamp(x_1670, 0.0f, 1.0f);
  let x_1675 : f32 = x_25.x_UserLut_Params.w;
  u_xlatb0.x = (0.0f < x_1675);
  let x_1679 : bool = u_xlatb0.x;
  if (x_1679) {
    let x_1682 : vec4<f32> = u_xlat1;
    let x_1686 : vec3<f32> = (vec3<f32>(x_1682.x, x_1682.y, x_1682.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
    let x_1687 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1686.x, x_1686.y, x_1686.z, x_1687.w);
    let x_1689 : vec4<f32> = u_xlat1;
    let x_1691 : vec3<f32> = log2(vec3<f32>(x_1689.x, x_1689.y, x_1689.z));
    let x_1692 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1691.x, x_1691.y, x_1691.z, x_1692.w);
    let x_1694 : vec4<f32> = u_xlat2;
    let x_1698 : vec3<f32> = (vec3<f32>(x_1694.x, x_1694.y, x_1694.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
    let x_1699 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1698.x, x_1698.y, x_1698.z, x_1699.w);
    let x_1701 : vec4<f32> = u_xlat2;
    let x_1703 : vec3<f32> = exp2(vec3<f32>(x_1701.x, x_1701.y, x_1701.z));
    let x_1704 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1703.x, x_1703.y, x_1703.z, x_1704.w);
    let x_1706 : vec4<f32> = u_xlat2;
    let x_1713 : vec3<f32> = ((vec3<f32>(x_1706.x, x_1706.y, x_1706.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
    let x_1714 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1713.x, x_1713.y, x_1713.z, x_1714.w);
    let x_1718 : vec4<f32> = u_xlat1;
    let x_1720 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_1718.x, x_1718.y, x_1718.z, x_1718.x));
    u_xlatb3 = vec3<bool>(x_1720.x, x_1720.y, x_1720.z);
    let x_1724 : vec4<f32> = u_xlat0;
    hlslcc_movcTemp = x_1724;
    let x_1726 : bool = u_xlatb3.x;
    if (x_1726) {
      let x_1731 : f32 = u_xlat0.x;
      x_1727 = x_1731;
    } else {
      let x_1734 : f32 = u_xlat2.x;
      x_1727 = x_1734;
    }
    let x_1735 : f32 = x_1727;
    hlslcc_movcTemp.x = x_1735;
    let x_1738 : bool = u_xlatb3.y;
    if (x_1738) {
      let x_1743 : f32 = u_xlat0.y;
      x_1739 = x_1743;
    } else {
      let x_1746 : f32 = u_xlat2.y;
      x_1739 = x_1746;
    }
    let x_1747 : f32 = x_1739;
    hlslcc_movcTemp.y = x_1747;
    let x_1750 : bool = u_xlatb3.z;
    if (x_1750) {
      let x_1755 : f32 = u_xlat0.z;
      x_1751 = x_1755;
    } else {
      let x_1758 : f32 = u_xlat2.z;
      x_1751 = x_1758;
    }
    let x_1759 : f32 = x_1751;
    hlslcc_movcTemp.z = x_1759;
    let x_1761 : vec4<f32> = hlslcc_movcTemp;
    u_xlat0 = x_1761;
    let x_1762 : vec4<f32> = u_xlat0;
    let x_1765 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1767 : vec3<f32> = (vec3<f32>(x_1762.z, x_1762.x, x_1762.y) * vec3<f32>(x_1765.z, x_1765.z, x_1765.z));
    let x_1768 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1767.x, x_1767.y, x_1767.z, x_1768.w);
    let x_1771 : f32 = u_xlat2.x;
    u_xlat21 = floor(x_1771);
    let x_1774 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1776 : vec2<f32> = (vec2<f32>(x_1774.x, x_1774.y) * vec2<f32>(0.5f, 0.5f));
    let x_1777 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1776.x, x_1777.y, x_1777.z, x_1776.y);
    let x_1779 : vec4<f32> = u_xlat2;
    let x_1782 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1785 : vec4<f32> = u_xlat2;
    let x_1787 : vec2<f32> = ((vec2<f32>(x_1779.y, x_1779.z) * vec2<f32>(x_1782.x, x_1782.y)) + vec2<f32>(x_1785.x, x_1785.w));
    let x_1788 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1788.x, x_1787.x, x_1787.y, x_1788.w);
    let x_1790 : f32 = u_xlat21;
    let x_1792 : f32 = x_25.x_UserLut_Params.y;
    let x_1795 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_1790 * x_1792) + x_1795);
    let x_1802 : vec4<f32> = u_xlat2;
    let x_1804 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1802.x, x_1802.z), 0.0f);
    u_xlat3 = vec3<f32>(x_1804.x, x_1804.y, x_1804.z);
    let x_1807 : f32 = x_25.x_UserLut_Params.y;
    u_xlat4.x = x_1807;
    u_xlat4.y = 0.0f;
    let x_1810 : vec4<f32> = u_xlat2;
    let x_1812 : vec4<f32> = u_xlat4;
    let x_1814 : vec2<f32> = (vec2<f32>(x_1810.x, x_1810.z) + vec2<f32>(x_1812.x, x_1812.y));
    let x_1815 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1814.x, x_1814.y, x_1815.z, x_1815.w);
    let x_1820 : vec4<f32> = u_xlat2;
    let x_1822 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1820.x, x_1820.y), 0.0f);
    let x_1823 : vec3<f32> = vec3<f32>(x_1822.x, x_1822.y, x_1822.z);
    let x_1824 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1823.x, x_1823.y, x_1823.z, x_1824.w);
    let x_1827 : f32 = u_xlat0.z;
    let x_1829 : f32 = x_25.x_UserLut_Params.z;
    let x_1831 : f32 = u_xlat21;
    u_xlat21 = ((x_1827 * x_1829) + -(x_1831));
    let x_1834 : vec3<f32> = u_xlat3;
    let x_1836 : vec4<f32> = u_xlat2;
    let x_1838 : vec3<f32> = (-(x_1834) + vec3<f32>(x_1836.x, x_1836.y, x_1836.z));
    let x_1839 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1838.x, x_1838.y, x_1838.z, x_1839.w);
    let x_1841 : f32 = u_xlat21;
    let x_1843 : vec4<f32> = u_xlat2;
    let x_1846 : vec3<f32> = u_xlat3;
    let x_1847 : vec3<f32> = ((vec3<f32>(x_1841, x_1841, x_1841) * vec3<f32>(x_1843.x, x_1843.y, x_1843.z)) + x_1846);
    let x_1848 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1847.x, x_1847.y, x_1847.z, x_1848.w);
    let x_1850 : vec4<f32> = u_xlat0;
    let x_1853 : vec4<f32> = u_xlat2;
    let x_1855 : vec3<f32> = (-(vec3<f32>(x_1850.x, x_1850.y, x_1850.z)) + vec3<f32>(x_1853.x, x_1853.y, x_1853.z));
    let x_1856 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1855.x, x_1855.y, x_1855.z, x_1856.w);
    let x_1859 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1861 : vec4<f32> = u_xlat2;
    let x_1864 : vec4<f32> = u_xlat0;
    let x_1866 : vec3<f32> = ((vec3<f32>(x_1859.w, x_1859.w, x_1859.w) * vec3<f32>(x_1861.x, x_1861.y, x_1861.z)) + vec3<f32>(x_1864.x, x_1864.y, x_1864.z));
    let x_1867 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1866.x, x_1866.y, x_1866.z, x_1867.w);
    let x_1869 : vec4<f32> = u_xlat0;
    let x_1873 : vec3<f32> = (vec3<f32>(x_1869.x, x_1869.y, x_1869.z) * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
    let x_1874 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1873.x, x_1873.y, x_1873.z, x_1874.w);
    let x_1876 : vec4<f32> = u_xlat0;
    u_xlat3 = (vec3<f32>(x_1876.x, x_1876.y, x_1876.z) + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
    let x_1881 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_1881 * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
    let x_1885 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_1885));
    let x_1888 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_1888 * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
    let x_1892 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_1892);
    let x_1896 : vec4<f32> = u_xlat0;
    let x_1898 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_1896.x, x_1896.y, x_1896.z, x_1896.x));
    u_xlatb0 = vec3<bool>(x_1898.x, x_1898.y, x_1898.z);
    let x_1901 : bool = u_xlatb0.x;
    if (x_1901) {
      let x_1906 : f32 = u_xlat2.x;
      x_1902 = x_1906;
    } else {
      let x_1909 : f32 = u_xlat3.x;
      x_1902 = x_1909;
    }
    let x_1910 : f32 = x_1902;
    u_xlat1.x = x_1910;
    let x_1913 : bool = u_xlatb0.y;
    if (x_1913) {
      let x_1918 : f32 = u_xlat2.y;
      x_1914 = x_1918;
    } else {
      let x_1921 : f32 = u_xlat3.y;
      x_1914 = x_1921;
    }
    let x_1922 : f32 = x_1914;
    u_xlat1.y = x_1922;
    let x_1925 : bool = u_xlatb0.z;
    if (x_1925) {
      let x_1930 : f32 = u_xlat2.z;
      x_1926 = x_1930;
    } else {
      let x_1933 : f32 = u_xlat3.z;
      x_1926 = x_1933;
    }
    let x_1934 : f32 = x_1926;
    u_xlat1.z = x_1934;
  }
  let x_1936 : vec4<f32> = u_xlat1;
  let x_1939 : vec4<f32> = x_25.x_Lut_Params;
  let x_1941 : vec3<f32> = (vec3<f32>(x_1936.z, x_1936.x, x_1936.y) * vec3<f32>(x_1939.z, x_1939.z, x_1939.z));
  let x_1942 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1941.x, x_1941.y, x_1941.z, x_1942.w);
  let x_1945 : f32 = u_xlat0.x;
  u_xlat0.x = floor(x_1945);
  let x_1949 : vec4<f32> = x_25.x_Lut_Params;
  let x_1951 : vec2<f32> = (vec2<f32>(x_1949.x, x_1949.y) * vec2<f32>(0.5f, 0.5f));
  let x_1952 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1951.x, x_1951.y, x_1952.z, x_1952.w);
  let x_1954 : vec4<f32> = u_xlat0;
  let x_1957 : vec4<f32> = x_25.x_Lut_Params;
  let x_1960 : vec4<f32> = u_xlat1;
  let x_1962 : vec2<f32> = ((vec2<f32>(x_1954.y, x_1954.z) * vec2<f32>(x_1957.x, x_1957.y)) + vec2<f32>(x_1960.x, x_1960.y));
  let x_1963 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1963.x, x_1962.x, x_1962.y, x_1963.w);
  let x_1966 : f32 = u_xlat0.x;
  let x_1968 : f32 = x_25.x_Lut_Params.y;
  let x_1971 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_1966 * x_1968) + x_1971);
  let x_1978 : vec4<f32> = u_xlat2;
  let x_1980 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1978.x, x_1978.z), 0.0f);
  u_xlat7 = vec3<f32>(x_1980.x, x_1980.y, x_1980.z);
  let x_1983 : f32 = x_25.x_Lut_Params.y;
  u_xlat1.x = x_1983;
  u_xlat1.y = 0.0f;
  let x_1986 : vec4<f32> = u_xlat1;
  let x_1988 : vec4<f32> = u_xlat2;
  let x_1990 : vec2<f32> = (vec2<f32>(x_1986.x, x_1986.y) + vec2<f32>(x_1988.x, x_1988.z));
  let x_1991 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1990.x, x_1990.y, x_1991.z, x_1991.w);
  let x_1996 : vec4<f32> = u_xlat1;
  let x_1998 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1996.x, x_1996.y), 0.0f);
  let x_1999 : vec3<f32> = vec3<f32>(x_1998.x, x_1998.y, x_1998.z);
  let x_2000 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1999.x, x_1999.y, x_2000.z, x_1999.z);
  let x_2003 : f32 = u_xlat1.z;
  let x_2005 : f32 = x_25.x_Lut_Params.z;
  let x_2008 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2003 * x_2005) + -(x_2008));
  let x_2012 : vec3<f32> = u_xlat7;
  let x_2014 : vec4<f32> = u_xlat1;
  let x_2016 : vec3<f32> = (-(x_2012) + vec3<f32>(x_2014.x, x_2014.y, x_2014.w));
  let x_2017 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2016.x, x_2016.y, x_2016.z, x_2017.w);
  let x_2019 : vec4<f32> = u_xlat0;
  let x_2021 : vec4<f32> = u_xlat1;
  let x_2024 : vec3<f32> = u_xlat7;
  let x_2025 : vec3<f32> = ((vec3<f32>(x_2019.x, x_2019.x, x_2019.x) * vec3<f32>(x_2021.x, x_2021.y, x_2021.z)) + x_2024);
  let x_2026 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2025.x, x_2025.y, x_2025.z, x_2026.w);
  let x_2028 : vec4<f32> = u_xlat0;
  let x_2030 : vec3<f32> = sqrt(vec3<f32>(x_2028.x, x_2028.y, x_2028.z));
  let x_2031 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2030.x, x_2030.y, x_2030.z, x_2031.w);
  let x_2033 : vec2<f32> = vs_TEXCOORD0;
  let x_2036 : vec4<f32> = x_25.x_Dithering_Params;
  let x_2040 : vec4<f32> = x_25.x_Dithering_Params;
  let x_2042 : vec2<f32> = ((x_2033 * vec2<f32>(x_2036.x, x_2036.y)) + vec2<f32>(x_2040.z, x_2040.w));
  let x_2043 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2042.x, x_2042.y, x_2043.z, x_2043.w);
  let x_2050 : vec4<f32> = u_xlat1;
  let x_2053 : f32 = x_25.x_GlobalMipBias.x;
  let x_2054 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_2050.x, x_2050.y), x_2053);
  u_xlat21 = x_2054.w;
  let x_2056 : f32 = u_xlat21;
  u_xlat21 = ((x_2056 * 2.0f) + -1.0f);
  let x_2059 : f32 = u_xlat21;
  u_xlatb1 = (x_2059 >= 0.0f);
  let x_2061 : bool = u_xlatb1;
  u_xlat1.x = select(-1.0f, 1.0f, x_2061);
  let x_2064 : f32 = u_xlat21;
  u_xlat21 = (-(abs(x_2064)) + 1.0f);
  let x_2068 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_2068);
  let x_2070 : f32 = u_xlat21;
  u_xlat21 = (-(x_2070) + 1.0f);
  let x_2073 : f32 = u_xlat21;
  let x_2075 : f32 = u_xlat1.x;
  u_xlat21 = (x_2073 * x_2075);
  let x_2077 : vec4<f32> = u_xlat0;
  let x_2079 : vec3<f32> = (vec3<f32>(x_2077.x, x_2077.y, x_2077.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
  let x_2080 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2079.x, x_2079.y, x_2079.z, x_2080.w);
  let x_2082 : vec4<f32> = u_xlat0;
  let x_2084 : vec3<f32> = log2(vec3<f32>(x_2082.x, x_2082.y, x_2082.z));
  let x_2085 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_2084.x, x_2084.y, x_2084.z, x_2085.w);
  let x_2087 : vec4<f32> = u_xlat2;
  let x_2089 : vec3<f32> = (vec3<f32>(x_2087.x, x_2087.y, x_2087.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
  let x_2090 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_2089.x, x_2089.y, x_2089.z, x_2090.w);
  let x_2092 : vec4<f32> = u_xlat2;
  let x_2094 : vec3<f32> = exp2(vec3<f32>(x_2092.x, x_2092.y, x_2092.z));
  let x_2095 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_2094.x, x_2094.y, x_2094.z, x_2095.w);
  let x_2097 : vec4<f32> = u_xlat2;
  let x_2100 : vec3<f32> = ((vec3<f32>(x_2097.x, x_2097.y, x_2097.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
  let x_2101 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_2100.x, x_2100.y, x_2100.z, x_2101.w);
  let x_2103 : vec4<f32> = u_xlat0;
  let x_2105 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_2103.x, x_2103.y, x_2103.z, x_2103.x));
  u_xlatb0 = vec3<bool>(x_2105.x, x_2105.y, x_2105.z);
  let x_2108 : bool = u_xlatb0.x;
  if (x_2108) {
    let x_2113 : f32 = u_xlat1.x;
    x_2109 = x_2113;
  } else {
    let x_2116 : f32 = u_xlat2.x;
    x_2109 = x_2116;
  }
  let x_2117 : f32 = x_2109;
  u_xlat0.x = x_2117;
  let x_2120 : bool = u_xlatb0.y;
  if (x_2120) {
    let x_2125 : f32 = u_xlat1.y;
    x_2121 = x_2125;
  } else {
    let x_2128 : f32 = u_xlat2.y;
    x_2121 = x_2128;
  }
  let x_2129 : f32 = x_2121;
  u_xlat0.y = x_2129;
  let x_2132 : bool = u_xlatb0.z;
  if (x_2132) {
    let x_2137 : f32 = u_xlat1.z;
    x_2133 = x_2137;
  } else {
    let x_2140 : f32 = u_xlat2.z;
    x_2133 = x_2140;
  }
  let x_2141 : f32 = x_2133;
  u_xlat0.z = x_2141;
  let x_2143 : f32 = u_xlat21;
  let x_2148 : vec4<f32> = u_xlat0;
  let x_2150 : vec3<f32> = ((vec3<f32>(x_2143, x_2143, x_2143) * vec3<f32>(0.0039215688593685627f, 0.0039215688593685627f, 0.0039215688593685627f)) + vec3<f32>(x_2148.x, x_2148.y, x_2148.z));
  let x_2151 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2150.x, x_2150.y, x_2150.z, x_2151.w);
  let x_2153 : vec4<f32> = u_xlat0;
  let x_2155 : vec3<f32> = (vec3<f32>(x_2153.x, x_2153.y, x_2153.z) * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
  let x_2156 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2155.x, x_2155.y, x_2155.z, x_2156.w);
  let x_2158 : vec4<f32> = u_xlat0;
  let x_2160 : vec3<f32> = (vec3<f32>(x_2158.x, x_2158.y, x_2158.z) + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
  let x_2161 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_2160.x, x_2160.y, x_2160.z, x_2161.w);
  let x_2163 : vec4<f32> = u_xlat2;
  let x_2165 : vec3<f32> = (vec3<f32>(x_2163.x, x_2163.y, x_2163.z) * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
  let x_2166 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_2165.x, x_2165.y, x_2165.z, x_2166.w);
  let x_2168 : vec4<f32> = u_xlat2;
  let x_2171 : vec3<f32> = log2(abs(vec3<f32>(x_2168.x, x_2168.y, x_2168.z)));
  let x_2172 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_2171.x, x_2171.y, x_2171.z, x_2172.w);
  let x_2174 : vec4<f32> = u_xlat2;
  let x_2176 : vec3<f32> = (vec3<f32>(x_2174.x, x_2174.y, x_2174.z) * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
  let x_2177 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_2176.x, x_2176.y, x_2176.z, x_2177.w);
  let x_2179 : vec4<f32> = u_xlat2;
  let x_2181 : vec3<f32> = exp2(vec3<f32>(x_2179.x, x_2179.y, x_2179.z));
  let x_2182 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_2181.x, x_2181.y, x_2181.z, x_2182.w);
  let x_2184 : vec4<f32> = u_xlat0;
  let x_2186 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_2184.x, x_2184.y, x_2184.z, x_2184.x));
  u_xlatb0 = vec3<bool>(x_2186.x, x_2186.y, x_2186.z);
  let x_2189 : bool = u_xlatb0.x;
  if (x_2189) {
    let x_2194 : f32 = u_xlat1.x;
    x_2190 = x_2194;
  } else {
    let x_2197 : f32 = u_xlat2.x;
    x_2190 = x_2197;
  }
  let x_2198 : f32 = x_2190;
  u_xlat0.x = x_2198;
  let x_2201 : bool = u_xlatb0.y;
  if (x_2201) {
    let x_2206 : f32 = u_xlat1.y;
    x_2202 = x_2206;
  } else {
    let x_2209 : f32 = u_xlat2.y;
    x_2202 = x_2209;
  }
  let x_2210 : f32 = x_2202;
  u_xlat0.y = x_2210;
  let x_2213 : bool = u_xlatb0.z;
  if (x_2213) {
    let x_2218 : f32 = u_xlat1.z;
    x_2214 = x_2218;
  } else {
    let x_2221 : f32 = u_xlat2.z;
    x_2214 = x_2221;
  }
  let x_2222 : f32 = x_2214;
  u_xlat0.z = x_2222;
  let x_2226 : vec4<f32> = u_xlat0;
  let x_2228 : vec3<f32> = max(vec3<f32>(x_2226.x, x_2226.y, x_2226.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_2229 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2228.x, x_2228.y, x_2228.z, x_2229.w);
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


