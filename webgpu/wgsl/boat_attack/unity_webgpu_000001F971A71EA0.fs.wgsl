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

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlat21 : f32;

var<private> u_xlatb21 : bool;

var<private> u_xlatb7 : bool;

var<private> u_xlatb14 : vec2<bool>;

var<private> u_xlatb10 : bool;

var<private> u_xlatb22 : bool;

@group(0) @binding(2) var x_UserLut : texture_2d<f32>;

@group(0) @binding(1) var x_InternalLut : texture_2d<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_235 : f32;
  var x_475 : f32;
  var x_660 : f32;
  var x_991 : f32;
  var x_1000 : f32;
  var x_1130 : f32;
  var x_1181 : f32;
  var x_1208 : f32;
  var x_1232 : f32;
  var x_1243 : f32;
  var hlslcc_movcTemp : vec4<f32>;
  var x_1666 : f32;
  var x_1678 : f32;
  var x_1690 : f32;
  var x_1841 : f32;
  var x_1853 : f32;
  var x_1865 : f32;
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
  let x_708 : f32 = x_25.x_Vignette_Params2.z;
  u_xlatb0.x = (0.0f < x_708);
  let x_712 : bool = u_xlatb0.x;
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
  let x_801 : vec4<f32> = u_xlat0;
  u_xlat8.x = dot(vec3<f32>(0.43970099091529846191f, 0.38297799229621887207f, 0.17733499407768249512f), vec3<f32>(x_801.x, x_801.y, x_801.z));
  let x_809 : vec4<f32> = u_xlat0;
  u_xlat8.y = dot(vec3<f32>(0.08979229629039764404f, 0.81342297792434692383f, 0.09676159918308258057f), vec3<f32>(x_809.x, x_809.y, x_809.z));
  let x_817 : vec4<f32> = u_xlat0;
  u_xlat8.z = dot(vec3<f32>(0.01754399947822093964f, 0.111543998122215271f, 0.8707039952278137207f), vec3<f32>(x_817.x, x_817.y, x_817.z));
  let x_822 : f32 = u_xlat8.y;
  let x_824 : f32 = u_xlat8.x;
  u_xlat0.x = min(x_822, x_824);
  let x_828 : f32 = u_xlat8.z;
  let x_830 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_828, x_830);
  let x_834 : f32 = u_xlat8.y;
  let x_836 : f32 = u_xlat8.x;
  u_xlat7.x = max(x_834, x_836);
  let x_840 : f32 = u_xlat8.z;
  let x_842 : f32 = u_xlat7.x;
  u_xlat0.y = max(x_840, x_842);
  let x_845 : vec4<f32> = u_xlat0;
  let x_850 : vec3<f32> = max(vec3<f32>(x_845.x, x_845.y, x_845.y), vec3<f32>(0.00009999999747378752f, 0.00009999999747378752f, 0.00999999977648258209f));
  let x_851 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_850.x, x_850.y, x_850.z, x_851.w);
  let x_854 : f32 = u_xlat0.x;
  let x_857 : f32 = u_xlat0.y;
  u_xlat0.x = (-(x_854) + x_857);
  let x_861 : f32 = u_xlat0.x;
  let x_863 : f32 = u_xlat0.z;
  u_xlat0.x = (x_861 / x_863);
  let x_866 : vec3<f32> = u_xlat8;
  let x_869 : vec3<f32> = u_xlat8;
  u_xlat7 = (-(vec3<f32>(x_866.y, x_866.x, x_866.z)) + vec3<f32>(x_869.z, x_869.y, x_869.x));
  let x_872 : vec3<f32> = u_xlat7;
  let x_874 : vec3<f32> = u_xlat8;
  let x_876 : vec2<f32> = (vec2<f32>(x_872.x, x_872.y) * vec2<f32>(x_874.z, x_874.y));
  let x_877 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_876.x, x_876.y, x_877.z);
  let x_880 : f32 = u_xlat7.y;
  let x_882 : f32 = u_xlat7.x;
  u_xlat7.x = (x_880 + x_882);
  let x_886 : f32 = u_xlat8.x;
  let x_888 : f32 = u_xlat7.z;
  let x_891 : f32 = u_xlat7.x;
  u_xlat7.x = ((x_886 * x_888) + x_891);
  let x_895 : f32 = u_xlat7.x;
  u_xlat7.x = max(x_895, 0.0f);
  let x_899 : f32 = u_xlat7.x;
  u_xlat7.x = sqrt(x_899);
  let x_903 : f32 = u_xlat8.y;
  let x_905 : f32 = u_xlat8.z;
  u_xlat14.x = (x_903 + x_905);
  let x_909 : f32 = u_xlat8.x;
  let x_911 : f32 = u_xlat14.x;
  u_xlat14.x = (x_909 + x_911);
  let x_915 : f32 = u_xlat7.x;
  let x_919 : f32 = u_xlat14.x;
  u_xlat7.x = ((x_915 * 1.75f) + x_919);
  let x_924 : f32 = u_xlat0.x;
  u_xlat21 = (x_924 + -0.40000000596046447754f);
  let x_927 : f32 = u_xlat21;
  u_xlat1.x = (x_927 * 2.5f);
  let x_932 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_932)) + 1.0f);
  let x_938 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_938, 0.0f);
  let x_942 : f32 = u_xlat21;
  u_xlatb21 = (x_942 >= 0.0f);
  let x_944 : bool = u_xlatb21;
  u_xlat21 = select(-1.0f, 1.0f, x_944);
  let x_947 : f32 = u_xlat1.x;
  let x_950 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_947) * x_950) + 1.0f);
  let x_954 : f32 = u_xlat21;
  let x_956 : f32 = u_xlat1.x;
  u_xlat7.z = ((x_954 * x_956) + 1.0f);
  let x_960 : vec3<f32> = u_xlat7;
  u_xlat14 = (vec2<f32>(x_960.x, x_960.z) * vec2<f32>(0.3333333432674407959f, 0.02500000037252902985f));
  let x_968 : f32 = u_xlat7.x;
  u_xlatb1 = (0.15999999642372131348f >= x_968);
  let x_972 : f32 = u_xlat7.x;
  u_xlatb7 = (x_972 >= 0.47999998927116394043f);
  let x_977 : f32 = u_xlat14.x;
  u_xlat14.x = (0.07999999821186065674f / x_977);
  let x_981 : f32 = u_xlat14.x;
  u_xlat14.x = (x_981 + -0.5f);
  let x_985 : f32 = u_xlat14.x;
  let x_987 : f32 = u_xlat14.y;
  u_xlat14.x = (x_985 * x_987);
  let x_990 : bool = u_xlatb7;
  if (x_990) {
    x_991 = 0.0f;
  } else {
    let x_996 : f32 = u_xlat14.x;
    x_991 = x_996;
  }
  let x_997 : f32 = x_991;
  u_xlat7.x = x_997;
  let x_999 : bool = u_xlatb1;
  if (x_999) {
    let x_1004 : f32 = u_xlat14.y;
    x_1000 = x_1004;
  } else {
    let x_1007 : f32 = u_xlat7.x;
    x_1000 = x_1007;
  }
  let x_1008 : f32 = x_1000;
  u_xlat7.x = x_1008;
  let x_1011 : f32 = u_xlat7.x;
  u_xlat7.x = (x_1011 + 1.0f);
  let x_1014 : vec3<f32> = u_xlat7;
  let x_1016 : vec3<f32> = u_xlat8;
  let x_1017 : vec3<f32> = (vec3<f32>(x_1014.x, x_1014.x, x_1014.x) * x_1016);
  let x_1018 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1018.x, x_1017.x, x_1017.y, x_1017.z);
  let x_1023 : vec4<f32> = u_xlat2;
  let x_1025 : vec4<f32> = u_xlat2;
  let x_1028 : vec4<bool> = (vec4<f32>(x_1023.z, x_1023.w, x_1023.z, x_1023.w) == vec4<f32>(x_1025.y, x_1025.z, x_1025.y, x_1025.z));
  u_xlatb14 = vec2<bool>(x_1028.x, x_1028.y);
  let x_1031 : bool = u_xlatb14.y;
  let x_1033 : bool = u_xlatb14.x;
  u_xlatb14.x = (x_1031 & x_1033);
  let x_1037 : f32 = u_xlat8.y;
  let x_1039 : f32 = u_xlat7.x;
  let x_1042 : f32 = u_xlat2.w;
  u_xlat21 = ((x_1037 * x_1039) + -(x_1042));
  let x_1045 : f32 = u_xlat21;
  u_xlat21 = (x_1045 * 1.73205077648162841797f);
  let x_1049 : f32 = u_xlat2.y;
  let x_1052 : f32 = u_xlat2.z;
  u_xlat1.x = ((x_1049 * 2.0f) + -(x_1052));
  let x_1057 : f32 = u_xlat8.z;
  let x_1060 : f32 = u_xlat7.x;
  let x_1063 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_1057) * x_1060) + x_1063);
  let x_1066 : f32 = u_xlat21;
  let x_1069 : f32 = u_xlat1.x;
  u_xlat15.x = min(abs(x_1066), abs(x_1069));
  let x_1073 : f32 = u_xlat21;
  let x_1076 : f32 = u_xlat1.x;
  u_xlat22 = max(abs(x_1073), abs(x_1076));
  let x_1079 : f32 = u_xlat22;
  u_xlat22 = (1.0f / x_1079);
  let x_1081 : f32 = u_xlat22;
  let x_1083 : f32 = u_xlat15.x;
  u_xlat15.x = (x_1081 * x_1083);
  let x_1087 : f32 = u_xlat15.x;
  let x_1089 : f32 = u_xlat15.x;
  u_xlat22 = (x_1087 * x_1089);
  let x_1091 : f32 = u_xlat22;
  u_xlat3.x = ((x_1091 * 0.02083509974181652069f) + -0.08513300120830535889f);
  let x_1095 : f32 = u_xlat22;
  let x_1097 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1095 * x_1097) + 0.18014100193977355957f);
  let x_1101 : f32 = u_xlat22;
  let x_1103 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1101 * x_1103) + -0.33029949665069580078f);
  let x_1107 : f32 = u_xlat22;
  let x_1109 : f32 = u_xlat3.x;
  u_xlat22 = ((x_1107 * x_1109) + 0.99986600875854492188f);
  let x_1112 : f32 = u_xlat22;
  let x_1114 : f32 = u_xlat15.x;
  u_xlat3.x = (x_1112 * x_1114);
  let x_1119 : f32 = u_xlat1.x;
  let x_1121 : f32 = u_xlat21;
  u_xlatb10 = (abs(x_1119) < abs(x_1121));
  let x_1125 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1125 * -2.0f) + 1.57079637050628662109f);
  let x_1129 : bool = u_xlatb10;
  if (x_1129) {
    let x_1134 : f32 = u_xlat3.x;
    x_1130 = x_1134;
  } else {
    x_1130 = 0.0f;
  }
  let x_1136 : f32 = x_1130;
  u_xlat3.x = x_1136;
  let x_1139 : f32 = u_xlat15.x;
  let x_1140 : f32 = u_xlat22;
  let x_1143 : f32 = u_xlat3.x;
  u_xlat15.x = ((x_1139 * x_1140) + x_1143);
  let x_1148 : f32 = u_xlat1.x;
  let x_1150 : f32 = u_xlat1.x;
  u_xlatb22 = (x_1148 < -(x_1150));
  let x_1153 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, -3.14159274101257324219f, x_1153);
  let x_1156 : f32 = u_xlat22;
  let x_1158 : f32 = u_xlat15.x;
  u_xlat15.x = (x_1156 + x_1158);
  let x_1161 : f32 = u_xlat21;
  let x_1163 : f32 = u_xlat1.x;
  u_xlat22 = min(x_1161, x_1163);
  let x_1165 : f32 = u_xlat21;
  let x_1167 : f32 = u_xlat1.x;
  u_xlat21 = max(x_1165, x_1167);
  let x_1169 : f32 = u_xlat22;
  let x_1170 : f32 = u_xlat22;
  u_xlatb1 = (x_1169 < -(x_1170));
  let x_1173 : f32 = u_xlat21;
  let x_1174 : f32 = u_xlat21;
  u_xlatb21 = (x_1173 >= -(x_1174));
  let x_1177 : bool = u_xlatb21;
  let x_1178 : bool = u_xlatb1;
  u_xlatb21 = (x_1177 & x_1178);
  let x_1180 : bool = u_xlatb21;
  if (x_1180) {
    let x_1185 : f32 = u_xlat15.x;
    x_1181 = -(x_1185);
  } else {
    let x_1189 : f32 = u_xlat15.x;
    x_1181 = x_1189;
  }
  let x_1190 : f32 = x_1181;
  u_xlat21 = x_1190;
  let x_1191 : f32 = u_xlat21;
  u_xlat21 = (x_1191 * 57.295780181884765625f);
  let x_1195 : bool = u_xlatb14.x;
  let x_1196 : f32 = u_xlat21;
  u_xlat14.x = select(x_1196, 0.0f, x_1195);
  let x_1200 : f32 = u_xlat14.x;
  u_xlatb21 = (x_1200 < 0.0f);
  let x_1203 : f32 = u_xlat14.x;
  u_xlat1.x = (x_1203 + 360.0f);
  let x_1207 : bool = u_xlatb21;
  if (x_1207) {
    let x_1212 : f32 = u_xlat1.x;
    x_1208 = x_1212;
  } else {
    let x_1215 : f32 = u_xlat14.x;
    x_1208 = x_1215;
  }
  let x_1216 : f32 = x_1208;
  u_xlat14.x = x_1216;
  let x_1219 : f32 = u_xlat14.x;
  u_xlatb21 = (x_1219 < -180.0f);
  let x_1224 : f32 = u_xlat14.x;
  u_xlatb1 = (180.0f < x_1224);
  let x_1226 : vec2<f32> = u_xlat14;
  u_xlat15 = (vec2<f32>(x_1226.x, x_1226.x) + vec2<f32>(360.0f, -360.0f));
  let x_1231 : bool = u_xlatb1;
  if (x_1231) {
    let x_1236 : f32 = u_xlat15.y;
    x_1232 = x_1236;
  } else {
    let x_1239 : f32 = u_xlat14.x;
    x_1232 = x_1239;
  }
  let x_1240 : f32 = x_1232;
  u_xlat14.x = x_1240;
  let x_1242 : bool = u_xlatb21;
  if (x_1242) {
    let x_1247 : f32 = u_xlat15.x;
    x_1243 = x_1247;
  } else {
    let x_1250 : f32 = u_xlat14.x;
    x_1243 = x_1250;
  }
  let x_1251 : f32 = x_1243;
  u_xlat14.x = x_1251;
  let x_1254 : f32 = u_xlat14.x;
  u_xlat14.x = (x_1254 * 0.01481481455266475677f);
  let x_1259 : f32 = u_xlat14.x;
  u_xlat14.x = (-(abs(x_1259)) + 1.0f);
  let x_1265 : f32 = u_xlat14.x;
  u_xlat14.x = max(x_1265, 0.0f);
  let x_1269 : f32 = u_xlat14.x;
  u_xlat21 = ((x_1269 * -2.0f) + 3.0f);
  let x_1274 : f32 = u_xlat14.x;
  let x_1276 : f32 = u_xlat14.x;
  u_xlat14.x = (x_1274 * x_1276);
  let x_1280 : f32 = u_xlat14.x;
  let x_1281 : f32 = u_xlat21;
  u_xlat14.x = (x_1280 * x_1281);
  let x_1285 : f32 = u_xlat14.x;
  let x_1287 : f32 = u_xlat14.x;
  u_xlat14.x = (x_1285 * x_1287);
  let x_1291 : f32 = u_xlat0.x;
  let x_1293 : f32 = u_xlat14.x;
  u_xlat0.x = (x_1291 * x_1293);
  let x_1297 : f32 = u_xlat8.x;
  let x_1300 : f32 = u_xlat7.x;
  u_xlat7.x = ((-(x_1297) * x_1300) + 0.02999999932944774628f);
  let x_1306 : f32 = u_xlat7.x;
  let x_1308 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1306 * x_1308);
  let x_1312 : f32 = u_xlat0.x;
  let x_1316 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_1312 * 0.18000000715255737305f) + x_1316);
  let x_1323 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(1.45143926143646240234f, -0.23651075363159179688f, -0.21492856740951538086f), vec3<f32>(x_1323.x, x_1323.z, x_1323.w));
  let x_1331 : vec4<f32> = u_xlat2;
  u_xlat0.y = dot(vec3<f32>(-0.07655377686023712158f, 1.17622971534729003906f, -0.09967592358589172363f), vec3<f32>(x_1331.x, x_1331.z, x_1331.w));
  let x_1339 : vec4<f32> = u_xlat2;
  u_xlat0.z = dot(vec3<f32>(0.0083161480724811554f, -0.00603244965896010399f, 0.99771630764007568359f), vec3<f32>(x_1339.x, x_1339.z, x_1339.w));
  let x_1343 : vec4<f32> = u_xlat0;
  let x_1346 : vec3<f32> = max(vec3<f32>(x_1343.x, x_1343.y, x_1343.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1347 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1346.x, x_1346.y, x_1346.z, x_1347.w);
  let x_1349 : vec4<f32> = u_xlat0;
  u_xlat21 = dot(vec3<f32>(x_1349.x, x_1349.y, x_1349.z), vec3<f32>(0.27222898602485656738f, 0.67408198118209838867f, 0.05368949845433235168f));
  let x_1356 : f32 = u_xlat21;
  let x_1359 : vec4<f32> = u_xlat0;
  let x_1361 : vec3<f32> = (-(vec3<f32>(x_1356, x_1356, x_1356)) + vec3<f32>(x_1359.x, x_1359.y, x_1359.z));
  let x_1362 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1361.x, x_1361.y, x_1361.z, x_1362.w);
  let x_1364 : vec4<f32> = u_xlat0;
  let x_1369 : f32 = u_xlat21;
  let x_1371 : vec3<f32> = ((vec3<f32>(x_1364.x, x_1364.y, x_1364.z) * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f)) + vec3<f32>(x_1369, x_1369, x_1369));
  let x_1372 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1371.x, x_1371.y, x_1371.z, x_1372.w);
  let x_1374 : vec4<f32> = u_xlat0;
  let x_1378 : vec3<f32> = (vec3<f32>(x_1374.x, x_1374.y, x_1374.z) + vec3<f32>(0.02457859925925731659f, 0.02457859925925731659f, 0.02457859925925731659f));
  let x_1379 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1378.x, x_1378.y, x_1378.z, x_1379.w);
  let x_1381 : vec4<f32> = u_xlat0;
  let x_1383 : vec4<f32> = u_xlat1;
  let x_1388 : vec3<f32> = ((vec3<f32>(x_1381.x, x_1381.y, x_1381.z) * vec3<f32>(x_1383.x, x_1383.y, x_1383.z)) + vec3<f32>(-0.00009053700341610238f, -0.00009053700341610238f, -0.00009053700341610238f));
  let x_1389 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1388.x, x_1388.y, x_1388.z, x_1389.w);
  let x_1391 : vec4<f32> = u_xlat0;
  let x_1398 : vec3<f32> = ((vec3<f32>(x_1391.x, x_1391.y, x_1391.z) * vec3<f32>(0.98372900485992431641f, 0.98372900485992431641f, 0.98372900485992431641f)) + vec3<f32>(0.4329510033130645752f, 0.4329510033130645752f, 0.4329510033130645752f));
  let x_1399 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1398.x, x_1398.y, x_1398.z, x_1399.w);
  let x_1401 : vec4<f32> = u_xlat0;
  let x_1403 : vec4<f32> = u_xlat2;
  let x_1408 : vec3<f32> = ((vec3<f32>(x_1401.x, x_1401.y, x_1401.z) * vec3<f32>(x_1403.x, x_1403.y, x_1403.z)) + vec3<f32>(0.23808099329471588135f, 0.23808099329471588135f, 0.23808099329471588135f));
  let x_1409 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1408.x, x_1408.y, x_1408.z, x_1409.w);
  let x_1411 : vec4<f32> = u_xlat1;
  let x_1413 : vec4<f32> = u_xlat0;
  let x_1415 : vec3<f32> = (vec3<f32>(x_1411.x, x_1411.y, x_1411.z) / vec3<f32>(x_1413.x, x_1413.y, x_1413.z));
  let x_1416 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1415.x, x_1415.y, x_1415.z, x_1416.w);
  let x_1422 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(0.66245418787002563477f, 0.13400420546531677246f, 0.1561876833438873291f), vec3<f32>(x_1422.x, x_1422.y, x_1422.z));
  let x_1430 : vec4<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(0.27222871780395507812f, 0.67408174276351928711f, 0.05368951708078384399f), vec3<f32>(x_1430.x, x_1430.y, x_1430.z));
  let x_1438 : vec4<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(-0.00557464966550469398f, 0.00406073359772562981f, 1.01033914089202880859f), vec3<f32>(x_1438.x, x_1438.y, x_1438.z));
  let x_1442 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(x_1442.x, x_1442.y, x_1442.z), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1447 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1447, 0.00009999999747378752f);
  let x_1450 : vec4<f32> = u_xlat1;
  let x_1452 : vec4<f32> = u_xlat0;
  let x_1454 : vec2<f32> = (vec2<f32>(x_1450.x, x_1450.y) / vec2<f32>(x_1452.x, x_1452.x));
  let x_1455 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1454.x, x_1454.y, x_1455.z, x_1455.w);
  let x_1458 : f32 = u_xlat1.y;
  u_xlat21 = max(x_1458, 0.0f);
  let x_1460 : f32 = u_xlat21;
  u_xlat21 = min(x_1460, 65504.0f);
  let x_1463 : f32 = u_xlat21;
  u_xlat21 = log2(x_1463);
  let x_1465 : f32 = u_xlat21;
  u_xlat21 = (x_1465 * 0.98110002279281616211f);
  let x_1468 : f32 = u_xlat21;
  u_xlat1.y = exp2(x_1468);
  let x_1472 : f32 = u_xlat0.y;
  u_xlat21 = max(x_1472, 0.00009999999747378752f);
  let x_1475 : f32 = u_xlat1.y;
  let x_1476 : f32 = u_xlat21;
  u_xlat21 = (x_1475 / x_1476);
  let x_1479 : f32 = u_xlat0.x;
  u_xlat22 = (-(x_1479) + 1.0f);
  let x_1483 : f32 = u_xlat0.y;
  let x_1485 : f32 = u_xlat22;
  u_xlat0.z = (-(x_1483) + x_1485);
  let x_1488 : f32 = u_xlat21;
  let x_1490 : vec4<f32> = u_xlat0;
  let x_1492 : vec2<f32> = (vec2<f32>(x_1488, x_1488) * vec2<f32>(x_1490.x, x_1490.z));
  let x_1493 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1492.x, x_1493.y, x_1492.y, x_1493.w);
  let x_1499 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(1.64102339744567871094f, -0.32480329275131225586f, -0.23642469942569732666f), vec3<f32>(x_1499.x, x_1499.y, x_1499.z));
  let x_1507 : vec4<f32> = u_xlat1;
  u_xlat0.y = dot(vec3<f32>(-0.66366285085678100586f, 1.6153316497802734375f, 0.01675634831190109253f), vec3<f32>(x_1507.x, x_1507.y, x_1507.z));
  let x_1515 : vec4<f32> = u_xlat1;
  u_xlat0.z = dot(vec3<f32>(0.01172189414501190186f, -0.00828444212675094604f, 0.98839485645294189453f), vec3<f32>(x_1515.x, x_1515.y, x_1515.z));
  let x_1519 : vec4<f32> = u_xlat0;
  u_xlat21 = dot(vec3<f32>(x_1519.x, x_1519.y, x_1519.z), vec3<f32>(0.27222898602485656738f, 0.67408198118209838867f, 0.05368949845433235168f));
  let x_1522 : f32 = u_xlat21;
  let x_1525 : vec4<f32> = u_xlat0;
  let x_1527 : vec3<f32> = (-(vec3<f32>(x_1522, x_1522, x_1522)) + vec3<f32>(x_1525.x, x_1525.y, x_1525.z));
  let x_1528 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1527.x, x_1527.y, x_1527.z, x_1528.w);
  let x_1530 : vec4<f32> = u_xlat0;
  let x_1535 : f32 = u_xlat21;
  let x_1537 : vec3<f32> = ((vec3<f32>(x_1530.x, x_1530.y, x_1530.z) * vec3<f32>(0.93000000715255737305f, 0.93000000715255737305f, 0.93000000715255737305f)) + vec3<f32>(x_1535, x_1535, x_1535));
  let x_1538 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1537.x, x_1537.y, x_1537.z, x_1538.w);
  let x_1540 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(0.66245418787002563477f, 0.13400420546531677246f, 0.1561876833438873291f), vec3<f32>(x_1540.x, x_1540.y, x_1540.z));
  let x_1544 : vec4<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(0.27222871780395507812f, 0.67408174276351928711f, 0.05368951708078384399f), vec3<f32>(x_1544.x, x_1544.y, x_1544.z));
  let x_1548 : vec4<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(-0.00557464966550469398f, 0.00406073359772562981f, 1.01033914089202880859f), vec3<f32>(x_1548.x, x_1548.y, x_1548.z));
  let x_1556 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(0.98722398281097412109f, -0.00611326983198523521f, 0.01595330052077770233f), vec3<f32>(x_1556.x, x_1556.y, x_1556.z));
  let x_1564 : vec4<f32> = u_xlat1;
  u_xlat0.y = dot(vec3<f32>(-0.00759836006909608841f, 1.00186002254486083984f, 0.00533019984140992165f), vec3<f32>(x_1564.x, x_1564.y, x_1564.z));
  let x_1572 : vec4<f32> = u_xlat1;
  u_xlat0.z = dot(vec3<f32>(0.0030725700780749321f, -0.00509594986215233803f, 1.08168005943298339844f), vec3<f32>(x_1572.x, x_1572.y, x_1572.z));
  let x_1580 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(3.24096989631652832031f, -1.53738319873809814453f, -0.49861076474189758301f), vec3<f32>(x_1580.x, x_1580.y, x_1580.z));
  let x_1585 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1585, 0.0f, 1.0f);
  let x_1592 : vec4<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(-0.96924364566802978516f, 1.87596750259399414062f, 0.04155505821108818054f), vec3<f32>(x_1592.x, x_1592.y, x_1592.z));
  let x_1597 : f32 = u_xlat1.y;
  u_xlat1.y = clamp(x_1597, 0.0f, 1.0f);
  let x_1604 : vec4<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(0.05563008040189743042f, -0.2039769589900970459f, 1.05697154998779296875f), vec3<f32>(x_1604.x, x_1604.y, x_1604.z));
  let x_1609 : f32 = u_xlat1.z;
  u_xlat1.z = clamp(x_1609, 0.0f, 1.0f);
  let x_1614 : f32 = x_25.x_UserLut_Params.w;
  u_xlatb0.x = (0.0f < x_1614);
  let x_1618 : bool = u_xlatb0.x;
  if (x_1618) {
    let x_1621 : vec4<f32> = u_xlat1;
    let x_1625 : vec3<f32> = (vec3<f32>(x_1621.x, x_1621.y, x_1621.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
    let x_1626 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1625.x, x_1625.y, x_1625.z, x_1626.w);
    let x_1628 : vec4<f32> = u_xlat1;
    let x_1630 : vec3<f32> = log2(vec3<f32>(x_1628.x, x_1628.y, x_1628.z));
    let x_1631 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1630.x, x_1630.y, x_1630.z, x_1631.w);
    let x_1633 : vec4<f32> = u_xlat2;
    let x_1637 : vec3<f32> = (vec3<f32>(x_1633.x, x_1633.y, x_1633.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
    let x_1638 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1637.x, x_1637.y, x_1637.z, x_1638.w);
    let x_1640 : vec4<f32> = u_xlat2;
    let x_1642 : vec3<f32> = exp2(vec3<f32>(x_1640.x, x_1640.y, x_1640.z));
    let x_1643 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1642.x, x_1642.y, x_1642.z, x_1643.w);
    let x_1645 : vec4<f32> = u_xlat2;
    let x_1652 : vec3<f32> = ((vec3<f32>(x_1645.x, x_1645.y, x_1645.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
    let x_1653 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1652.x, x_1652.y, x_1652.z, x_1653.w);
    let x_1657 : vec4<f32> = u_xlat1;
    let x_1659 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_1657.x, x_1657.y, x_1657.z, x_1657.x));
    u_xlatb3 = vec3<bool>(x_1659.x, x_1659.y, x_1659.z);
    let x_1663 : vec4<f32> = u_xlat0;
    hlslcc_movcTemp = x_1663;
    let x_1665 : bool = u_xlatb3.x;
    if (x_1665) {
      let x_1670 : f32 = u_xlat0.x;
      x_1666 = x_1670;
    } else {
      let x_1673 : f32 = u_xlat2.x;
      x_1666 = x_1673;
    }
    let x_1674 : f32 = x_1666;
    hlslcc_movcTemp.x = x_1674;
    let x_1677 : bool = u_xlatb3.y;
    if (x_1677) {
      let x_1682 : f32 = u_xlat0.y;
      x_1678 = x_1682;
    } else {
      let x_1685 : f32 = u_xlat2.y;
      x_1678 = x_1685;
    }
    let x_1686 : f32 = x_1678;
    hlslcc_movcTemp.y = x_1686;
    let x_1689 : bool = u_xlatb3.z;
    if (x_1689) {
      let x_1694 : f32 = u_xlat0.z;
      x_1690 = x_1694;
    } else {
      let x_1697 : f32 = u_xlat2.z;
      x_1690 = x_1697;
    }
    let x_1698 : f32 = x_1690;
    hlslcc_movcTemp.z = x_1698;
    let x_1700 : vec4<f32> = hlslcc_movcTemp;
    u_xlat0 = x_1700;
    let x_1701 : vec4<f32> = u_xlat0;
    let x_1704 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1706 : vec3<f32> = (vec3<f32>(x_1701.z, x_1701.x, x_1701.y) * vec3<f32>(x_1704.z, x_1704.z, x_1704.z));
    let x_1707 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1706.x, x_1706.y, x_1706.z, x_1707.w);
    let x_1710 : f32 = u_xlat2.x;
    u_xlat21 = floor(x_1710);
    let x_1713 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1715 : vec2<f32> = (vec2<f32>(x_1713.x, x_1713.y) * vec2<f32>(0.5f, 0.5f));
    let x_1716 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1715.x, x_1716.y, x_1716.z, x_1715.y);
    let x_1718 : vec4<f32> = u_xlat2;
    let x_1721 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1724 : vec4<f32> = u_xlat2;
    let x_1726 : vec2<f32> = ((vec2<f32>(x_1718.y, x_1718.z) * vec2<f32>(x_1721.x, x_1721.y)) + vec2<f32>(x_1724.x, x_1724.w));
    let x_1727 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1727.x, x_1726.x, x_1726.y, x_1727.w);
    let x_1729 : f32 = u_xlat21;
    let x_1731 : f32 = x_25.x_UserLut_Params.y;
    let x_1734 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_1729 * x_1731) + x_1734);
    let x_1741 : vec4<f32> = u_xlat2;
    let x_1743 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1741.x, x_1741.z), 0.0f);
    u_xlat3 = vec3<f32>(x_1743.x, x_1743.y, x_1743.z);
    let x_1746 : f32 = x_25.x_UserLut_Params.y;
    u_xlat4.x = x_1746;
    u_xlat4.y = 0.0f;
    let x_1749 : vec4<f32> = u_xlat2;
    let x_1751 : vec4<f32> = u_xlat4;
    let x_1753 : vec2<f32> = (vec2<f32>(x_1749.x, x_1749.z) + vec2<f32>(x_1751.x, x_1751.y));
    let x_1754 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1753.x, x_1753.y, x_1754.z, x_1754.w);
    let x_1759 : vec4<f32> = u_xlat2;
    let x_1761 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1759.x, x_1759.y), 0.0f);
    let x_1762 : vec3<f32> = vec3<f32>(x_1761.x, x_1761.y, x_1761.z);
    let x_1763 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1762.x, x_1762.y, x_1762.z, x_1763.w);
    let x_1766 : f32 = u_xlat0.z;
    let x_1768 : f32 = x_25.x_UserLut_Params.z;
    let x_1770 : f32 = u_xlat21;
    u_xlat21 = ((x_1766 * x_1768) + -(x_1770));
    let x_1773 : vec3<f32> = u_xlat3;
    let x_1775 : vec4<f32> = u_xlat2;
    let x_1777 : vec3<f32> = (-(x_1773) + vec3<f32>(x_1775.x, x_1775.y, x_1775.z));
    let x_1778 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1777.x, x_1777.y, x_1777.z, x_1778.w);
    let x_1780 : f32 = u_xlat21;
    let x_1782 : vec4<f32> = u_xlat2;
    let x_1785 : vec3<f32> = u_xlat3;
    let x_1786 : vec3<f32> = ((vec3<f32>(x_1780, x_1780, x_1780) * vec3<f32>(x_1782.x, x_1782.y, x_1782.z)) + x_1785);
    let x_1787 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1786.x, x_1786.y, x_1786.z, x_1787.w);
    let x_1789 : vec4<f32> = u_xlat0;
    let x_1792 : vec4<f32> = u_xlat2;
    let x_1794 : vec3<f32> = (-(vec3<f32>(x_1789.x, x_1789.y, x_1789.z)) + vec3<f32>(x_1792.x, x_1792.y, x_1792.z));
    let x_1795 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1794.x, x_1794.y, x_1794.z, x_1795.w);
    let x_1798 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1800 : vec4<f32> = u_xlat2;
    let x_1803 : vec4<f32> = u_xlat0;
    let x_1805 : vec3<f32> = ((vec3<f32>(x_1798.w, x_1798.w, x_1798.w) * vec3<f32>(x_1800.x, x_1800.y, x_1800.z)) + vec3<f32>(x_1803.x, x_1803.y, x_1803.z));
    let x_1806 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1805.x, x_1805.y, x_1805.z, x_1806.w);
    let x_1808 : vec4<f32> = u_xlat0;
    let x_1812 : vec3<f32> = (vec3<f32>(x_1808.x, x_1808.y, x_1808.z) * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
    let x_1813 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1812.x, x_1812.y, x_1812.z, x_1813.w);
    let x_1815 : vec4<f32> = u_xlat0;
    u_xlat3 = (vec3<f32>(x_1815.x, x_1815.y, x_1815.z) + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
    let x_1820 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_1820 * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
    let x_1824 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_1824));
    let x_1827 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_1827 * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
    let x_1831 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_1831);
    let x_1835 : vec4<f32> = u_xlat0;
    let x_1837 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_1835.x, x_1835.y, x_1835.z, x_1835.x));
    u_xlatb0 = vec3<bool>(x_1837.x, x_1837.y, x_1837.z);
    let x_1840 : bool = u_xlatb0.x;
    if (x_1840) {
      let x_1845 : f32 = u_xlat2.x;
      x_1841 = x_1845;
    } else {
      let x_1848 : f32 = u_xlat3.x;
      x_1841 = x_1848;
    }
    let x_1849 : f32 = x_1841;
    u_xlat1.x = x_1849;
    let x_1852 : bool = u_xlatb0.y;
    if (x_1852) {
      let x_1857 : f32 = u_xlat2.y;
      x_1853 = x_1857;
    } else {
      let x_1860 : f32 = u_xlat3.y;
      x_1853 = x_1860;
    }
    let x_1861 : f32 = x_1853;
    u_xlat1.y = x_1861;
    let x_1864 : bool = u_xlatb0.z;
    if (x_1864) {
      let x_1869 : f32 = u_xlat2.z;
      x_1865 = x_1869;
    } else {
      let x_1872 : f32 = u_xlat3.z;
      x_1865 = x_1872;
    }
    let x_1873 : f32 = x_1865;
    u_xlat1.z = x_1873;
  }
  let x_1875 : vec4<f32> = u_xlat1;
  let x_1878 : vec4<f32> = x_25.x_Lut_Params;
  let x_1880 : vec3<f32> = (vec3<f32>(x_1875.z, x_1875.x, x_1875.y) * vec3<f32>(x_1878.z, x_1878.z, x_1878.z));
  let x_1881 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1880.x, x_1880.y, x_1880.z, x_1881.w);
  let x_1884 : f32 = u_xlat0.x;
  u_xlat0.x = floor(x_1884);
  let x_1888 : vec4<f32> = x_25.x_Lut_Params;
  let x_1890 : vec2<f32> = (vec2<f32>(x_1888.x, x_1888.y) * vec2<f32>(0.5f, 0.5f));
  let x_1891 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1890.x, x_1890.y, x_1891.z, x_1891.w);
  let x_1893 : vec4<f32> = u_xlat0;
  let x_1896 : vec4<f32> = x_25.x_Lut_Params;
  let x_1899 : vec4<f32> = u_xlat1;
  let x_1901 : vec2<f32> = ((vec2<f32>(x_1893.y, x_1893.z) * vec2<f32>(x_1896.x, x_1896.y)) + vec2<f32>(x_1899.x, x_1899.y));
  let x_1902 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1902.x, x_1901.x, x_1901.y, x_1902.w);
  let x_1905 : f32 = u_xlat0.x;
  let x_1907 : f32 = x_25.x_Lut_Params.y;
  let x_1910 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_1905 * x_1907) + x_1910);
  let x_1917 : vec4<f32> = u_xlat2;
  let x_1919 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1917.x, x_1917.z), 0.0f);
  u_xlat7 = vec3<f32>(x_1919.x, x_1919.y, x_1919.z);
  let x_1922 : f32 = x_25.x_Lut_Params.y;
  u_xlat1.x = x_1922;
  u_xlat1.y = 0.0f;
  let x_1925 : vec4<f32> = u_xlat1;
  let x_1927 : vec4<f32> = u_xlat2;
  let x_1929 : vec2<f32> = (vec2<f32>(x_1925.x, x_1925.y) + vec2<f32>(x_1927.x, x_1927.z));
  let x_1930 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1929.x, x_1929.y, x_1930.z, x_1930.w);
  let x_1935 : vec4<f32> = u_xlat1;
  let x_1937 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1935.x, x_1935.y), 0.0f);
  let x_1938 : vec3<f32> = vec3<f32>(x_1937.x, x_1937.y, x_1937.z);
  let x_1939 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1938.x, x_1938.y, x_1939.z, x_1938.z);
  let x_1942 : f32 = u_xlat1.z;
  let x_1944 : f32 = x_25.x_Lut_Params.z;
  let x_1947 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1942 * x_1944) + -(x_1947));
  let x_1951 : vec3<f32> = u_xlat7;
  let x_1953 : vec4<f32> = u_xlat1;
  let x_1955 : vec3<f32> = (-(x_1951) + vec3<f32>(x_1953.x, x_1953.y, x_1953.w));
  let x_1956 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1955.x, x_1955.y, x_1955.z, x_1956.w);
  let x_1958 : vec4<f32> = u_xlat0;
  let x_1960 : vec4<f32> = u_xlat1;
  let x_1963 : vec3<f32> = u_xlat7;
  let x_1964 : vec3<f32> = ((vec3<f32>(x_1958.x, x_1958.x, x_1958.x) * vec3<f32>(x_1960.x, x_1960.y, x_1960.z)) + x_1963);
  let x_1965 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1964.x, x_1964.y, x_1964.z, x_1965.w);
  let x_1969 : vec4<f32> = u_xlat0;
  let x_1971 : vec3<f32> = sqrt(vec3<f32>(x_1969.x, x_1969.y, x_1969.z));
  let x_1972 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1971.x, x_1971.y, x_1971.z, x_1972.w);
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


