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
  x_Vignette_Params1 : vec4<f32>,
  /* @offset(176) */
  x_Vignette_Params2 : vec4<f32>,
  /* @offset(192) */
  x_Dithering_Params : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_14 : PGlobals;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_LinearClamp : sampler;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(1) var x_Bloom_Texture : texture_2d<f32>;

var<private> u_xlatb15 : bool;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(2) var x_LensDirt_Texture : texture_2d<f32>;

var<private> u_xlat15 : f32;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat10 : vec2<f32>;

var<private> u_xlatb1 : bool;

var<private> u_xlatb5 : bool;

var<private> u_xlatb10 : vec2<bool>;

var<private> u_xlat11 : vec2<f32>;

var<private> u_xlat16 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlatb8 : bool;

var<private> u_xlatb16 : bool;

var<private> u_xlatb0 : vec3<bool>;

var<private> u_xlatb3 : vec3<bool>;

@group(0) @binding(4) var x_UserLut : texture_2d<f32>;

var<private> u_xlat4 : vec2<f32>;

@group(0) @binding(3) var x_InternalLut : texture_2d<f32>;

@group(0) @binding(5) var x_BlueNoise_Texture : texture_2d<f32>;

@group(0) @binding(7) var sampler_PointRepeat : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_451 : f32;
  var x_460 : f32;
  var x_601 : f32;
  var x_652 : f32;
  var x_679 : f32;
  var x_703 : f32;
  var x_714 : f32;
  var hlslcc_movcTemp : vec3<f32>;
  var x_1104 : f32;
  var x_1116 : f32;
  var x_1128 : f32;
  var x_1273 : f32;
  var x_1285 : f32;
  var x_1297 : f32;
  var x_1470 : f32;
  var x_1482 : f32;
  var x_1494 : f32;
  var x_1546 : f32;
  var x_1558 : f32;
  var x_1570 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_19 : vec4<f32> = x_14.x_BlitTexture_TexelSize;
  let x_27 : vec4<f32> = x_14.x_RTHandleScale;
  let x_29 : vec2<f32> = ((-(vec2<f32>(x_19.x, x_19.y)) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_27.x, x_27.y));
  let x_30 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_29.x, x_29.y, x_30.z);
  let x_32 : vec3<f32> = u_xlat0;
  let x_36 : vec2<f32> = vs_TEXCOORD0;
  let x_37 : vec2<f32> = min(vec2<f32>(x_32.x, x_32.y), x_36);
  let x_38 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_37.x, x_37.y, x_38.z);
  let x_50 : vec3<f32> = u_xlat0;
  let x_57 : f32 = x_14.x_GlobalMipBias.x;
  let x_58 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_50.x, x_50.y), x_57);
  u_xlat0 = vec3<f32>(x_58.x, x_58.y, x_58.z);
  let x_64 : vec4<f32> = x_14.x_BloomTexture_TexelSize;
  let x_69 : vec4<f32> = x_14.x_RTHandleScale;
  let x_71 : vec2<f32> = ((-(vec2<f32>(x_64.x, x_64.y)) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_69.x, x_69.y));
  let x_72 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_71.x, x_71.y, x_72.z, x_72.w);
  let x_74 : vec4<f32> = u_xlat1;
  let x_76 : vec2<f32> = vs_TEXCOORD0;
  let x_77 : vec2<f32> = min(vec2<f32>(x_74.x, x_74.y), x_76);
  let x_78 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_77.x, x_77.y, x_78.z, x_78.w);
  let x_84 : vec4<f32> = u_xlat1;
  let x_87 : f32 = x_14.x_GlobalMipBias.x;
  let x_88 : vec4<f32> = textureSampleBias(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_84.x, x_84.y), x_87);
  u_xlat1 = x_88;
  let x_95 : f32 = x_14.x_Bloom_RGBM;
  u_xlatb15 = (0.0f < x_95);
  let x_97 : bool = u_xlatb15;
  if (x_97) {
    let x_101 : vec4<f32> = u_xlat1;
    let x_103 : vec4<f32> = u_xlat1;
    let x_105 : vec3<f32> = (vec3<f32>(x_101.w, x_101.w, x_101.w) * vec3<f32>(x_103.x, x_103.y, x_103.z));
    let x_106 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_105.x, x_105.y, x_105.z, x_106.w);
    let x_108 : vec4<f32> = u_xlat2;
    let x_112 : vec3<f32> = (vec3<f32>(x_108.x, x_108.y, x_108.z) * vec3<f32>(8.0f, 8.0f, 8.0f));
    let x_113 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_112.x, x_112.y, x_112.z, x_113.w);
  }
  let x_115 : vec4<f32> = u_xlat1;
  let x_119 : vec4<f32> = x_14.x_Bloom_Params;
  let x_121 : vec3<f32> = (vec3<f32>(x_115.x, x_115.y, x_115.z) * vec3<f32>(x_119.x, x_119.x, x_119.x));
  let x_122 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_121.x, x_121.y, x_121.z, x_122.w);
  let x_124 : vec4<f32> = u_xlat1;
  let x_127 : vec4<f32> = x_14.x_Bloom_Params;
  let x_130 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_124.x, x_124.y, x_124.z) * vec3<f32>(x_127.y, x_127.z, x_127.w)) + x_130);
  let x_132 : vec2<f32> = vs_TEXCOORD0;
  let x_135 : vec4<f32> = x_14.x_LensDirt_Params;
  let x_139 : vec4<f32> = x_14.x_LensDirt_Params;
  let x_141 : vec2<f32> = ((x_132 * vec2<f32>(x_135.x, x_135.y)) + vec2<f32>(x_139.z, x_139.w));
  let x_142 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_141.x, x_141.y, x_142.z, x_142.w);
  let x_148 : vec4<f32> = u_xlat2;
  let x_151 : f32 = x_14.x_GlobalMipBias.x;
  let x_152 : vec4<f32> = textureSampleBias(x_LensDirt_Texture, sampler_LinearClamp, vec2<f32>(x_148.x, x_148.y), x_151);
  let x_153 : vec3<f32> = vec3<f32>(x_152.x, x_152.y, x_152.z);
  let x_154 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_153.x, x_153.y, x_153.z, x_154.w);
  let x_156 : vec4<f32> = u_xlat2;
  let x_160 : f32 = x_14.x_LensDirt_Intensity;
  let x_162 : vec3<f32> = (vec3<f32>(x_156.x, x_156.y, x_156.z) * vec3<f32>(x_160, x_160, x_160));
  let x_163 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_162.x, x_162.y, x_162.z, x_163.w);
  let x_165 : vec4<f32> = u_xlat2;
  let x_167 : vec4<f32> = u_xlat1;
  let x_170 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_165.x, x_165.y, x_165.z) * vec3<f32>(x_167.x, x_167.y, x_167.z)) + x_170);
  let x_175 : f32 = x_14.x_Vignette_Params2.z;
  u_xlatb15 = (0.0f < x_175);
  let x_177 : bool = u_xlatb15;
  if (x_177) {
    let x_180 : vec2<f32> = vs_TEXCOORD0;
    let x_182 : vec4<f32> = x_14.x_Vignette_Params2;
    let x_185 : vec2<f32> = (x_180 + -(vec2<f32>(x_182.x, x_182.y)));
    let x_186 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_185.x, x_185.y, x_186.z, x_186.w);
    let x_188 : vec4<f32> = u_xlat1;
    let x_192 : vec4<f32> = x_14.x_Vignette_Params2;
    let x_194 : vec2<f32> = (abs(vec2<f32>(x_188.x, x_188.y)) * vec2<f32>(x_192.z, x_192.z));
    let x_195 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_195.x, x_194.x, x_194.y, x_195.w);
    let x_200 : f32 = u_xlat1.y;
    let x_204 : f32 = x_14.x_Vignette_Params1.w;
    u_xlat1.x = (x_200 * x_204);
    let x_208 : vec4<f32> = u_xlat1;
    let x_210 : vec4<f32> = u_xlat1;
    u_xlat15 = dot(vec2<f32>(x_208.x, x_208.z), vec2<f32>(x_210.x, x_210.z));
    let x_213 : f32 = u_xlat15;
    u_xlat15 = (-(x_213) + 1.0f);
    let x_217 : f32 = u_xlat15;
    u_xlat15 = max(x_217, 0.0f);
    let x_219 : f32 = u_xlat15;
    u_xlat15 = log2(x_219);
    let x_221 : f32 = u_xlat15;
    let x_223 : f32 = x_14.x_Vignette_Params2.w;
    u_xlat15 = (x_221 * x_223);
    let x_225 : f32 = u_xlat15;
    u_xlat15 = exp2(x_225);
    let x_228 : vec4<f32> = x_14.x_Vignette_Params1;
    let x_232 : vec3<f32> = (-(vec3<f32>(x_228.x, x_228.y, x_228.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_233 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_232.x, x_232.y, x_232.z, x_233.w);
    let x_235 : f32 = u_xlat15;
    let x_237 : vec4<f32> = u_xlat1;
    let x_241 : vec4<f32> = x_14.x_Vignette_Params1;
    let x_243 : vec3<f32> = ((vec3<f32>(x_235, x_235, x_235) * vec3<f32>(x_237.x, x_237.y, x_237.z)) + vec3<f32>(x_241.x, x_241.y, x_241.z));
    let x_244 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_243.x, x_243.y, x_243.z, x_244.w);
    let x_246 : vec3<f32> = u_xlat0;
    let x_247 : vec4<f32> = u_xlat1;
    u_xlat0 = (x_246 * vec3<f32>(x_247.x, x_247.y, x_247.z));
  }
  let x_250 : vec3<f32> = u_xlat0;
  let x_253 : vec4<f32> = x_14.x_Lut_Params;
  u_xlat0 = (x_250 * vec3<f32>(x_253.w, x_253.w, x_253.w));
  let x_261 : vec3<f32> = u_xlat0;
  u_xlat6.x = dot(vec3<f32>(0.43970099091529846191f, 0.38297799229621887207f, 0.17733499407768249512f), x_261);
  let x_268 : vec3<f32> = u_xlat0;
  u_xlat6.y = dot(vec3<f32>(0.08979229629039764404f, 0.81342297792434692383f, 0.09676159918308258057f), x_268);
  let x_275 : vec3<f32> = u_xlat0;
  u_xlat6.z = dot(vec3<f32>(0.01754399947822093964f, 0.111543998122215271f, 0.8707039952278137207f), x_275);
  let x_279 : f32 = u_xlat6.y;
  let x_281 : f32 = u_xlat6.x;
  u_xlat0.x = min(x_279, x_281);
  let x_285 : f32 = u_xlat6.z;
  let x_287 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_285, x_287);
  let x_292 : f32 = u_xlat6.y;
  let x_294 : f32 = u_xlat6.x;
  u_xlat5.x = max(x_292, x_294);
  let x_298 : f32 = u_xlat6.z;
  let x_300 : f32 = u_xlat5.x;
  u_xlat0.y = max(x_298, x_300);
  let x_303 : vec3<f32> = u_xlat0;
  u_xlat0 = max(vec3<f32>(x_303.x, x_303.y, x_303.y), vec3<f32>(0.00009999999747378752f, 0.00009999999747378752f, 0.00999999977648258209f));
  let x_310 : f32 = u_xlat0.x;
  let x_313 : f32 = u_xlat0.y;
  u_xlat0.x = (-(x_310) + x_313);
  let x_317 : f32 = u_xlat0.x;
  let x_319 : f32 = u_xlat0.z;
  u_xlat0.x = (x_317 / x_319);
  let x_322 : vec3<f32> = u_xlat6;
  let x_325 : vec3<f32> = u_xlat6;
  u_xlat5 = (-(vec3<f32>(x_322.y, x_322.x, x_322.z)) + vec3<f32>(x_325.z, x_325.y, x_325.x));
  let x_328 : vec3<f32> = u_xlat5;
  let x_330 : vec3<f32> = u_xlat6;
  let x_332 : vec2<f32> = (vec2<f32>(x_328.x, x_328.y) * vec2<f32>(x_330.z, x_330.y));
  let x_333 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_332.x, x_332.y, x_333.z);
  let x_336 : f32 = u_xlat5.y;
  let x_338 : f32 = u_xlat5.x;
  u_xlat5.x = (x_336 + x_338);
  let x_342 : f32 = u_xlat6.x;
  let x_344 : f32 = u_xlat5.z;
  let x_347 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_342 * x_344) + x_347);
  let x_351 : f32 = u_xlat5.x;
  u_xlat5.x = max(x_351, 0.0f);
  let x_355 : f32 = u_xlat5.x;
  u_xlat5.x = sqrt(x_355);
  let x_361 : f32 = u_xlat6.y;
  let x_363 : f32 = u_xlat6.z;
  u_xlat10.x = (x_361 + x_363);
  let x_367 : f32 = u_xlat6.x;
  let x_369 : f32 = u_xlat10.x;
  u_xlat10.x = (x_367 + x_369);
  let x_373 : f32 = u_xlat5.x;
  let x_377 : f32 = u_xlat10.x;
  u_xlat5.x = ((x_373 * 1.75f) + x_377);
  let x_381 : f32 = u_xlat0.x;
  u_xlat15 = (x_381 + -0.40000000596046447754f);
  let x_384 : f32 = u_xlat15;
  u_xlat1.x = (x_384 * 2.5f);
  let x_389 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_389)) + 1.0f);
  let x_395 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_395, 0.0f);
  let x_398 : f32 = u_xlat15;
  u_xlatb15 = (x_398 >= 0.0f);
  let x_400 : bool = u_xlatb15;
  u_xlat15 = select(-1.0f, 1.0f, x_400);
  let x_404 : f32 = u_xlat1.x;
  let x_407 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_404) * x_407) + 1.0f);
  let x_411 : f32 = u_xlat15;
  let x_413 : f32 = u_xlat1.x;
  u_xlat5.z = ((x_411 * x_413) + 1.0f);
  let x_417 : vec3<f32> = u_xlat5;
  u_xlat10 = (vec2<f32>(x_417.x, x_417.z) * vec2<f32>(0.3333333432674407959f, 0.02500000037252902985f));
  let x_426 : f32 = u_xlat5.x;
  u_xlatb1 = (0.15999999642372131348f >= x_426);
  let x_430 : f32 = u_xlat5.x;
  u_xlatb5 = (x_430 >= 0.47999998927116394043f);
  let x_435 : f32 = u_xlat10.x;
  u_xlat10.x = (0.07999999821186065674f / x_435);
  let x_439 : f32 = u_xlat10.x;
  u_xlat10.x = (x_439 + -0.5f);
  let x_444 : f32 = u_xlat10.x;
  let x_446 : f32 = u_xlat10.y;
  u_xlat10.x = (x_444 * x_446);
  let x_449 : bool = u_xlatb5;
  if (x_449) {
    x_451 = 0.0f;
  } else {
    let x_456 : f32 = u_xlat10.x;
    x_451 = x_456;
  }
  let x_457 : f32 = x_451;
  u_xlat5.x = x_457;
  let x_459 : bool = u_xlatb1;
  if (x_459) {
    let x_464 : f32 = u_xlat10.y;
    x_460 = x_464;
  } else {
    let x_467 : f32 = u_xlat5.x;
    x_460 = x_467;
  }
  let x_468 : f32 = x_460;
  u_xlat5.x = x_468;
  let x_471 : f32 = u_xlat5.x;
  u_xlat5.x = (x_471 + 1.0f);
  let x_474 : vec3<f32> = u_xlat5;
  let x_476 : vec3<f32> = u_xlat6;
  let x_477 : vec3<f32> = (vec3<f32>(x_474.x, x_474.x, x_474.x) * x_476);
  let x_478 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_478.x, x_477.x, x_477.y, x_477.z);
  let x_483 : vec4<f32> = u_xlat2;
  let x_485 : vec4<f32> = u_xlat2;
  let x_488 : vec4<bool> = (vec4<f32>(x_483.z, x_483.w, x_483.z, x_483.w) == vec4<f32>(x_485.y, x_485.z, x_485.y, x_485.z));
  u_xlatb10 = vec2<bool>(x_488.x, x_488.y);
  let x_491 : bool = u_xlatb10.y;
  let x_493 : bool = u_xlatb10.x;
  u_xlatb10.x = (x_491 & x_493);
  let x_497 : f32 = u_xlat6.y;
  let x_499 : f32 = u_xlat5.x;
  let x_502 : f32 = u_xlat2.w;
  u_xlat15 = ((x_497 * x_499) + -(x_502));
  let x_505 : f32 = u_xlat15;
  u_xlat15 = (x_505 * 1.73205077648162841797f);
  let x_509 : f32 = u_xlat2.y;
  let x_513 : f32 = u_xlat2.z;
  u_xlat1.x = ((x_509 * 2.0f) + -(x_513));
  let x_518 : f32 = u_xlat6.z;
  let x_521 : f32 = u_xlat5.x;
  let x_524 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_518) * x_521) + x_524);
  let x_528 : f32 = u_xlat15;
  let x_531 : f32 = u_xlat1.x;
  u_xlat11.x = min(abs(x_528), abs(x_531));
  let x_536 : f32 = u_xlat15;
  let x_539 : f32 = u_xlat1.x;
  u_xlat16 = max(abs(x_536), abs(x_539));
  let x_542 : f32 = u_xlat16;
  u_xlat16 = (1.0f / x_542);
  let x_544 : f32 = u_xlat16;
  let x_546 : f32 = u_xlat11.x;
  u_xlat11.x = (x_544 * x_546);
  let x_550 : f32 = u_xlat11.x;
  let x_552 : f32 = u_xlat11.x;
  u_xlat16 = (x_550 * x_552);
  let x_555 : f32 = u_xlat16;
  u_xlat3.x = ((x_555 * 0.02083509974181652069f) + -0.08513300120830535889f);
  let x_561 : f32 = u_xlat16;
  let x_563 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_561 * x_563) + 0.18014100193977355957f);
  let x_568 : f32 = u_xlat16;
  let x_570 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_568 * x_570) + -0.33029949665069580078f);
  let x_575 : f32 = u_xlat16;
  let x_577 : f32 = u_xlat3.x;
  u_xlat16 = ((x_575 * x_577) + 0.99986600875854492188f);
  let x_581 : f32 = u_xlat16;
  let x_583 : f32 = u_xlat11.x;
  u_xlat3.x = (x_581 * x_583);
  let x_588 : f32 = u_xlat1.x;
  let x_590 : f32 = u_xlat15;
  u_xlatb8 = (abs(x_588) < abs(x_590));
  let x_594 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_594 * -2.0f) + 1.57079637050628662109f);
  let x_600 : bool = u_xlatb8;
  if (x_600) {
    let x_605 : f32 = u_xlat3.x;
    x_601 = x_605;
  } else {
    x_601 = 0.0f;
  }
  let x_607 : f32 = x_601;
  u_xlat3.x = x_607;
  let x_610 : f32 = u_xlat11.x;
  let x_611 : f32 = u_xlat16;
  let x_614 : f32 = u_xlat3.x;
  u_xlat11.x = ((x_610 * x_611) + x_614);
  let x_619 : f32 = u_xlat1.x;
  let x_621 : f32 = u_xlat1.x;
  u_xlatb16 = (x_619 < -(x_621));
  let x_624 : bool = u_xlatb16;
  u_xlat16 = select(0.0f, -3.14159274101257324219f, x_624);
  let x_627 : f32 = u_xlat16;
  let x_629 : f32 = u_xlat11.x;
  u_xlat11.x = (x_627 + x_629);
  let x_632 : f32 = u_xlat15;
  let x_634 : f32 = u_xlat1.x;
  u_xlat16 = min(x_632, x_634);
  let x_636 : f32 = u_xlat15;
  let x_638 : f32 = u_xlat1.x;
  u_xlat15 = max(x_636, x_638);
  let x_640 : f32 = u_xlat16;
  let x_641 : f32 = u_xlat16;
  u_xlatb1 = (x_640 < -(x_641));
  let x_644 : f32 = u_xlat15;
  let x_645 : f32 = u_xlat15;
  u_xlatb15 = (x_644 >= -(x_645));
  let x_648 : bool = u_xlatb15;
  let x_649 : bool = u_xlatb1;
  u_xlatb15 = (x_648 & x_649);
  let x_651 : bool = u_xlatb15;
  if (x_651) {
    let x_656 : f32 = u_xlat11.x;
    x_652 = -(x_656);
  } else {
    let x_660 : f32 = u_xlat11.x;
    x_652 = x_660;
  }
  let x_661 : f32 = x_652;
  u_xlat15 = x_661;
  let x_662 : f32 = u_xlat15;
  u_xlat15 = (x_662 * 57.295780181884765625f);
  let x_666 : bool = u_xlatb10.x;
  let x_667 : f32 = u_xlat15;
  u_xlat10.x = select(x_667, 0.0f, x_666);
  let x_671 : f32 = u_xlat10.x;
  u_xlatb15 = (x_671 < 0.0f);
  let x_674 : f32 = u_xlat10.x;
  u_xlat1.x = (x_674 + 360.0f);
  let x_678 : bool = u_xlatb15;
  if (x_678) {
    let x_683 : f32 = u_xlat1.x;
    x_679 = x_683;
  } else {
    let x_686 : f32 = u_xlat10.x;
    x_679 = x_686;
  }
  let x_687 : f32 = x_679;
  u_xlat10.x = x_687;
  let x_690 : f32 = u_xlat10.x;
  u_xlatb15 = (x_690 < -180.0f);
  let x_695 : f32 = u_xlat10.x;
  u_xlatb1 = (180.0f < x_695);
  let x_697 : vec2<f32> = u_xlat10;
  u_xlat11 = (vec2<f32>(x_697.x, x_697.x) + vec2<f32>(360.0f, -360.0f));
  let x_702 : bool = u_xlatb1;
  if (x_702) {
    let x_707 : f32 = u_xlat11.y;
    x_703 = x_707;
  } else {
    let x_710 : f32 = u_xlat10.x;
    x_703 = x_710;
  }
  let x_711 : f32 = x_703;
  u_xlat10.x = x_711;
  let x_713 : bool = u_xlatb15;
  if (x_713) {
    let x_718 : f32 = u_xlat11.x;
    x_714 = x_718;
  } else {
    let x_721 : f32 = u_xlat10.x;
    x_714 = x_721;
  }
  let x_722 : f32 = x_714;
  u_xlat10.x = x_722;
  let x_725 : f32 = u_xlat10.x;
  u_xlat10.x = (x_725 * 0.01481481455266475677f);
  let x_730 : f32 = u_xlat10.x;
  u_xlat10.x = (-(abs(x_730)) + 1.0f);
  let x_736 : f32 = u_xlat10.x;
  u_xlat10.x = max(x_736, 0.0f);
  let x_740 : f32 = u_xlat10.x;
  u_xlat15 = ((x_740 * -2.0f) + 3.0f);
  let x_745 : f32 = u_xlat10.x;
  let x_747 : f32 = u_xlat10.x;
  u_xlat10.x = (x_745 * x_747);
  let x_751 : f32 = u_xlat10.x;
  let x_752 : f32 = u_xlat15;
  u_xlat10.x = (x_751 * x_752);
  let x_756 : f32 = u_xlat10.x;
  let x_758 : f32 = u_xlat10.x;
  u_xlat10.x = (x_756 * x_758);
  let x_762 : f32 = u_xlat0.x;
  let x_764 : f32 = u_xlat10.x;
  u_xlat0.x = (x_762 * x_764);
  let x_768 : f32 = u_xlat6.x;
  let x_771 : f32 = u_xlat5.x;
  u_xlat5.x = ((-(x_768) * x_771) + 0.02999999932944774628f);
  let x_777 : f32 = u_xlat5.x;
  let x_779 : f32 = u_xlat0.x;
  u_xlat0.x = (x_777 * x_779);
  let x_783 : f32 = u_xlat0.x;
  let x_787 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_783 * 0.18000000715255737305f) + x_787);
  let x_794 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(1.45143926143646240234f, -0.23651075363159179688f, -0.21492856740951538086f), vec3<f32>(x_794.x, x_794.z, x_794.w));
  let x_802 : vec4<f32> = u_xlat2;
  u_xlat0.y = dot(vec3<f32>(-0.07655377686023712158f, 1.17622971534729003906f, -0.09967592358589172363f), vec3<f32>(x_802.x, x_802.z, x_802.w));
  let x_810 : vec4<f32> = u_xlat2;
  u_xlat0.z = dot(vec3<f32>(0.0083161480724811554f, -0.00603244965896010399f, 0.99771630764007568359f), vec3<f32>(x_810.x, x_810.z, x_810.w));
  let x_814 : vec3<f32> = u_xlat0;
  u_xlat0 = max(x_814, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_817 : vec3<f32> = u_xlat0;
  u_xlat15 = dot(x_817, vec3<f32>(0.27222898602485656738f, 0.67408198118209838867f, 0.05368949845433235168f));
  let x_823 : f32 = u_xlat15;
  let x_826 : vec3<f32> = u_xlat0;
  u_xlat0 = (-(vec3<f32>(x_823, x_823, x_823)) + x_826);
  let x_828 : vec3<f32> = u_xlat0;
  let x_832 : f32 = u_xlat15;
  u_xlat0 = ((x_828 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f)) + vec3<f32>(x_832, x_832, x_832));
  let x_835 : vec3<f32> = u_xlat0;
  let x_838 : vec3<f32> = (x_835 + vec3<f32>(0.02457859925925731659f, 0.02457859925925731659f, 0.02457859925925731659f));
  let x_839 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_838.x, x_838.y, x_838.z, x_839.w);
  let x_841 : vec3<f32> = u_xlat0;
  let x_842 : vec4<f32> = u_xlat1;
  let x_847 : vec3<f32> = ((x_841 * vec3<f32>(x_842.x, x_842.y, x_842.z)) + vec3<f32>(-0.00009053700341610238f, -0.00009053700341610238f, -0.00009053700341610238f));
  let x_848 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_847.x, x_847.y, x_847.z, x_848.w);
  let x_850 : vec3<f32> = u_xlat0;
  let x_856 : vec3<f32> = ((x_850 * vec3<f32>(0.98372900485992431641f, 0.98372900485992431641f, 0.98372900485992431641f)) + vec3<f32>(0.4329510033130645752f, 0.4329510033130645752f, 0.4329510033130645752f));
  let x_857 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_856.x, x_856.y, x_856.z, x_857.w);
  let x_859 : vec3<f32> = u_xlat0;
  let x_860 : vec4<f32> = u_xlat2;
  u_xlat0 = ((x_859 * vec3<f32>(x_860.x, x_860.y, x_860.z)) + vec3<f32>(0.23808099329471588135f, 0.23808099329471588135f, 0.23808099329471588135f));
  let x_866 : vec4<f32> = u_xlat1;
  let x_868 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_866.x, x_866.y, x_866.z) / x_868);
  let x_874 : vec3<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(0.66245418787002563477f, 0.13400420546531677246f, 0.1561876833438873291f), x_874);
  let x_881 : vec3<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(0.27222871780395507812f, 0.67408174276351928711f, 0.05368951708078384399f), x_881);
  let x_888 : vec3<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(-0.00557464966550469398f, 0.00406073359772562981f, 1.01033914089202880859f), x_888);
  let x_891 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(x_891.x, x_891.y, x_891.z), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_896 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_896, 0.00009999999747378752f);
  let x_899 : vec4<f32> = u_xlat1;
  let x_901 : vec3<f32> = u_xlat0;
  let x_903 : vec2<f32> = (vec2<f32>(x_899.x, x_899.y) / vec2<f32>(x_901.x, x_901.x));
  let x_904 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_903.x, x_903.y, x_904.z);
  let x_907 : f32 = u_xlat1.y;
  u_xlat15 = max(x_907, 0.0f);
  let x_909 : f32 = u_xlat15;
  u_xlat15 = min(x_909, 65504.0f);
  let x_912 : f32 = u_xlat15;
  u_xlat15 = log2(x_912);
  let x_914 : f32 = u_xlat15;
  u_xlat15 = (x_914 * 0.98110002279281616211f);
  let x_917 : f32 = u_xlat15;
  u_xlat1.y = exp2(x_917);
  let x_921 : f32 = u_xlat0.y;
  u_xlat15 = max(x_921, 0.00009999999747378752f);
  let x_924 : f32 = u_xlat1.y;
  let x_925 : f32 = u_xlat15;
  u_xlat15 = (x_924 / x_925);
  let x_928 : f32 = u_xlat0.x;
  u_xlat16 = (-(x_928) + 1.0f);
  let x_932 : f32 = u_xlat0.y;
  let x_934 : f32 = u_xlat16;
  u_xlat0.z = (-(x_932) + x_934);
  let x_937 : f32 = u_xlat15;
  let x_939 : vec3<f32> = u_xlat0;
  let x_941 : vec2<f32> = (vec2<f32>(x_937, x_937) * vec2<f32>(x_939.x, x_939.z));
  let x_942 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_941.x, x_942.y, x_941.y, x_942.w);
  let x_948 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(1.64102339744567871094f, -0.32480329275131225586f, -0.23642469942569732666f), vec3<f32>(x_948.x, x_948.y, x_948.z));
  let x_956 : vec4<f32> = u_xlat1;
  u_xlat0.y = dot(vec3<f32>(-0.66366285085678100586f, 1.6153316497802734375f, 0.01675634831190109253f), vec3<f32>(x_956.x, x_956.y, x_956.z));
  let x_964 : vec4<f32> = u_xlat1;
  u_xlat0.z = dot(vec3<f32>(0.01172189414501190186f, -0.00828444212675094604f, 0.98839485645294189453f), vec3<f32>(x_964.x, x_964.y, x_964.z));
  let x_968 : vec3<f32> = u_xlat0;
  u_xlat15 = dot(x_968, vec3<f32>(0.27222898602485656738f, 0.67408198118209838867f, 0.05368949845433235168f));
  let x_970 : f32 = u_xlat15;
  let x_973 : vec3<f32> = u_xlat0;
  u_xlat0 = (-(vec3<f32>(x_970, x_970, x_970)) + x_973);
  let x_975 : vec3<f32> = u_xlat0;
  let x_979 : f32 = u_xlat15;
  u_xlat0 = ((x_975 * vec3<f32>(0.93000000715255737305f, 0.93000000715255737305f, 0.93000000715255737305f)) + vec3<f32>(x_979, x_979, x_979));
  let x_982 : vec3<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(0.66245418787002563477f, 0.13400420546531677246f, 0.1561876833438873291f), x_982);
  let x_985 : vec3<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(0.27222871780395507812f, 0.67408174276351928711f, 0.05368951708078384399f), x_985);
  let x_988 : vec3<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(-0.00557464966550469398f, 0.00406073359772562981f, 1.01033914089202880859f), x_988);
  let x_995 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(0.98722398281097412109f, -0.00611326983198523521f, 0.01595330052077770233f), vec3<f32>(x_995.x, x_995.y, x_995.z));
  let x_1003 : vec4<f32> = u_xlat1;
  u_xlat0.y = dot(vec3<f32>(-0.00759836006909608841f, 1.00186002254486083984f, 0.00533019984140992165f), vec3<f32>(x_1003.x, x_1003.y, x_1003.z));
  let x_1011 : vec4<f32> = u_xlat1;
  u_xlat0.z = dot(vec3<f32>(0.0030725700780749321f, -0.00509594986215233803f, 1.08168005943298339844f), vec3<f32>(x_1011.x, x_1011.y, x_1011.z));
  let x_1019 : vec3<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(3.24096989631652832031f, -1.53738319873809814453f, -0.49861076474189758301f), x_1019);
  let x_1023 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1023, 0.0f, 1.0f);
  let x_1030 : vec3<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(-0.96924364566802978516f, 1.87596750259399414062f, 0.04155505821108818054f), x_1030);
  let x_1034 : f32 = u_xlat1.y;
  u_xlat1.y = clamp(x_1034, 0.0f, 1.0f);
  let x_1041 : vec3<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(0.05563008040189743042f, -0.2039769589900970459f, 1.05697154998779296875f), x_1041);
  let x_1045 : f32 = u_xlat1.z;
  u_xlat1.z = clamp(x_1045, 0.0f, 1.0f);
  let x_1053 : f32 = x_14.x_UserLut_Params.w;
  u_xlatb0.x = (0.0f < x_1053);
  let x_1057 : bool = u_xlatb0.x;
  if (x_1057) {
    let x_1060 : vec4<f32> = u_xlat1;
    u_xlat0 = (vec3<f32>(x_1060.x, x_1060.y, x_1060.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
    let x_1065 : vec4<f32> = u_xlat1;
    let x_1067 : vec3<f32> = log2(vec3<f32>(x_1065.x, x_1065.y, x_1065.z));
    let x_1068 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1067.x, x_1067.y, x_1067.z, x_1068.w);
    let x_1070 : vec4<f32> = u_xlat2;
    let x_1074 : vec3<f32> = (vec3<f32>(x_1070.x, x_1070.y, x_1070.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
    let x_1075 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1074.x, x_1074.y, x_1074.z, x_1075.w);
    let x_1077 : vec4<f32> = u_xlat2;
    let x_1079 : vec3<f32> = exp2(vec3<f32>(x_1077.x, x_1077.y, x_1077.z));
    let x_1080 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1079.x, x_1079.y, x_1079.z, x_1080.w);
    let x_1082 : vec4<f32> = u_xlat2;
    let x_1089 : vec3<f32> = ((vec3<f32>(x_1082.x, x_1082.y, x_1082.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
    let x_1090 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1089.x, x_1089.y, x_1089.z, x_1090.w);
    let x_1095 : vec4<f32> = u_xlat1;
    let x_1097 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_1095.x, x_1095.y, x_1095.z, x_1095.x));
    u_xlatb3 = vec3<bool>(x_1097.x, x_1097.y, x_1097.z);
    let x_1101 : vec3<f32> = u_xlat0;
    hlslcc_movcTemp = x_1101;
    let x_1103 : bool = u_xlatb3.x;
    if (x_1103) {
      let x_1108 : f32 = u_xlat0.x;
      x_1104 = x_1108;
    } else {
      let x_1111 : f32 = u_xlat2.x;
      x_1104 = x_1111;
    }
    let x_1112 : f32 = x_1104;
    hlslcc_movcTemp.x = x_1112;
    let x_1115 : bool = u_xlatb3.y;
    if (x_1115) {
      let x_1120 : f32 = u_xlat0.y;
      x_1116 = x_1120;
    } else {
      let x_1123 : f32 = u_xlat2.y;
      x_1116 = x_1123;
    }
    let x_1124 : f32 = x_1116;
    hlslcc_movcTemp.y = x_1124;
    let x_1127 : bool = u_xlatb3.z;
    if (x_1127) {
      let x_1132 : f32 = u_xlat0.z;
      x_1128 = x_1132;
    } else {
      let x_1135 : f32 = u_xlat2.z;
      x_1128 = x_1135;
    }
    let x_1136 : f32 = x_1128;
    hlslcc_movcTemp.z = x_1136;
    let x_1138 : vec3<f32> = hlslcc_movcTemp;
    u_xlat0 = x_1138;
    let x_1139 : vec3<f32> = u_xlat0;
    let x_1142 : vec4<f32> = x_14.x_UserLut_Params;
    let x_1144 : vec3<f32> = (vec3<f32>(x_1139.z, x_1139.x, x_1139.y) * vec3<f32>(x_1142.z, x_1142.z, x_1142.z));
    let x_1145 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1144.x, x_1144.y, x_1144.z, x_1145.w);
    let x_1148 : f32 = u_xlat2.x;
    u_xlat15 = floor(x_1148);
    let x_1151 : vec4<f32> = x_14.x_UserLut_Params;
    let x_1153 : vec2<f32> = (vec2<f32>(x_1151.x, x_1151.y) * vec2<f32>(0.5f, 0.5f));
    let x_1154 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1153.x, x_1154.y, x_1154.z, x_1153.y);
    let x_1156 : vec4<f32> = u_xlat2;
    let x_1159 : vec4<f32> = x_14.x_UserLut_Params;
    let x_1162 : vec4<f32> = u_xlat2;
    let x_1164 : vec2<f32> = ((vec2<f32>(x_1156.y, x_1156.z) * vec2<f32>(x_1159.x, x_1159.y)) + vec2<f32>(x_1162.x, x_1162.w));
    let x_1165 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1165.x, x_1164.x, x_1164.y, x_1165.w);
    let x_1167 : f32 = u_xlat15;
    let x_1169 : f32 = x_14.x_UserLut_Params.y;
    let x_1172 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_1167 * x_1169) + x_1172);
    let x_1179 : vec4<f32> = u_xlat2;
    let x_1181 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1179.x, x_1179.z), 0.0f);
    u_xlat3 = vec3<f32>(x_1181.x, x_1181.y, x_1181.z);
    let x_1185 : f32 = x_14.x_UserLut_Params.y;
    u_xlat4.x = x_1185;
    u_xlat4.y = 0.0f;
    let x_1188 : vec4<f32> = u_xlat2;
    let x_1190 : vec2<f32> = u_xlat4;
    let x_1191 : vec2<f32> = (vec2<f32>(x_1188.x, x_1188.z) + x_1190);
    let x_1192 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1191.x, x_1191.y, x_1192.z, x_1192.w);
    let x_1197 : vec4<f32> = u_xlat2;
    let x_1199 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1197.x, x_1197.y), 0.0f);
    let x_1200 : vec3<f32> = vec3<f32>(x_1199.x, x_1199.y, x_1199.z);
    let x_1201 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1200.x, x_1200.y, x_1200.z, x_1201.w);
    let x_1204 : f32 = u_xlat0.z;
    let x_1206 : f32 = x_14.x_UserLut_Params.z;
    let x_1208 : f32 = u_xlat15;
    u_xlat15 = ((x_1204 * x_1206) + -(x_1208));
    let x_1211 : vec3<f32> = u_xlat3;
    let x_1213 : vec4<f32> = u_xlat2;
    let x_1215 : vec3<f32> = (-(x_1211) + vec3<f32>(x_1213.x, x_1213.y, x_1213.z));
    let x_1216 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1215.x, x_1215.y, x_1215.z, x_1216.w);
    let x_1218 : f32 = u_xlat15;
    let x_1220 : vec4<f32> = u_xlat2;
    let x_1223 : vec3<f32> = u_xlat3;
    let x_1224 : vec3<f32> = ((vec3<f32>(x_1218, x_1218, x_1218) * vec3<f32>(x_1220.x, x_1220.y, x_1220.z)) + x_1223);
    let x_1225 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1224.x, x_1224.y, x_1224.z, x_1225.w);
    let x_1227 : vec3<f32> = u_xlat0;
    let x_1229 : vec4<f32> = u_xlat2;
    let x_1231 : vec3<f32> = (-(x_1227) + vec3<f32>(x_1229.x, x_1229.y, x_1229.z));
    let x_1232 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1231.x, x_1231.y, x_1231.z, x_1232.w);
    let x_1235 : vec4<f32> = x_14.x_UserLut_Params;
    let x_1237 : vec4<f32> = u_xlat2;
    let x_1240 : vec3<f32> = u_xlat0;
    u_xlat0 = ((vec3<f32>(x_1235.w, x_1235.w, x_1235.w) * vec3<f32>(x_1237.x, x_1237.y, x_1237.z)) + x_1240);
    let x_1242 : vec3<f32> = u_xlat0;
    let x_1245 : vec3<f32> = (x_1242 * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
    let x_1246 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1245.x, x_1245.y, x_1245.z, x_1246.w);
    let x_1248 : vec3<f32> = u_xlat0;
    u_xlat3 = (x_1248 + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
    let x_1252 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_1252 * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
    let x_1256 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_1256));
    let x_1259 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_1259 * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
    let x_1263 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_1263);
    let x_1267 : vec3<f32> = u_xlat0;
    let x_1269 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_1267.x, x_1267.y, x_1267.z, x_1267.x));
    u_xlatb0 = vec3<bool>(x_1269.x, x_1269.y, x_1269.z);
    let x_1272 : bool = u_xlatb0.x;
    if (x_1272) {
      let x_1277 : f32 = u_xlat2.x;
      x_1273 = x_1277;
    } else {
      let x_1280 : f32 = u_xlat3.x;
      x_1273 = x_1280;
    }
    let x_1281 : f32 = x_1273;
    u_xlat1.x = x_1281;
    let x_1284 : bool = u_xlatb0.y;
    if (x_1284) {
      let x_1289 : f32 = u_xlat2.y;
      x_1285 = x_1289;
    } else {
      let x_1292 : f32 = u_xlat3.y;
      x_1285 = x_1292;
    }
    let x_1293 : f32 = x_1285;
    u_xlat1.y = x_1293;
    let x_1296 : bool = u_xlatb0.z;
    if (x_1296) {
      let x_1301 : f32 = u_xlat2.z;
      x_1297 = x_1301;
    } else {
      let x_1304 : f32 = u_xlat3.z;
      x_1297 = x_1304;
    }
    let x_1305 : f32 = x_1297;
    u_xlat1.z = x_1305;
  }
  let x_1307 : vec4<f32> = u_xlat1;
  let x_1310 : vec4<f32> = x_14.x_Lut_Params;
  u_xlat0 = (vec3<f32>(x_1307.z, x_1307.x, x_1307.y) * vec3<f32>(x_1310.z, x_1310.z, x_1310.z));
  let x_1314 : f32 = u_xlat0.x;
  u_xlat0.x = floor(x_1314);
  let x_1318 : vec4<f32> = x_14.x_Lut_Params;
  let x_1320 : vec2<f32> = (vec2<f32>(x_1318.x, x_1318.y) * vec2<f32>(0.5f, 0.5f));
  let x_1321 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1320.x, x_1320.y, x_1321.z, x_1321.w);
  let x_1323 : vec3<f32> = u_xlat0;
  let x_1326 : vec4<f32> = x_14.x_Lut_Params;
  let x_1329 : vec4<f32> = u_xlat1;
  let x_1331 : vec2<f32> = ((vec2<f32>(x_1323.y, x_1323.z) * vec2<f32>(x_1326.x, x_1326.y)) + vec2<f32>(x_1329.x, x_1329.y));
  let x_1332 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1332.x, x_1331.x, x_1331.y, x_1332.w);
  let x_1335 : f32 = u_xlat0.x;
  let x_1337 : f32 = x_14.x_Lut_Params.y;
  let x_1340 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_1335 * x_1337) + x_1340);
  let x_1347 : vec4<f32> = u_xlat2;
  let x_1349 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1347.x, x_1347.z), 0.0f);
  u_xlat5 = vec3<f32>(x_1349.x, x_1349.y, x_1349.z);
  let x_1352 : f32 = x_14.x_Lut_Params.y;
  u_xlat1.x = x_1352;
  u_xlat1.y = 0.0f;
  let x_1355 : vec4<f32> = u_xlat1;
  let x_1357 : vec4<f32> = u_xlat2;
  let x_1359 : vec2<f32> = (vec2<f32>(x_1355.x, x_1355.y) + vec2<f32>(x_1357.x, x_1357.z));
  let x_1360 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1359.x, x_1359.y, x_1360.z, x_1360.w);
  let x_1365 : vec4<f32> = u_xlat1;
  let x_1367 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1365.x, x_1365.y), 0.0f);
  let x_1368 : vec3<f32> = vec3<f32>(x_1367.x, x_1367.y, x_1367.z);
  let x_1369 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1368.x, x_1368.y, x_1369.z, x_1368.z);
  let x_1372 : f32 = u_xlat1.z;
  let x_1374 : f32 = x_14.x_Lut_Params.z;
  let x_1377 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1372 * x_1374) + -(x_1377));
  let x_1381 : vec3<f32> = u_xlat5;
  let x_1383 : vec4<f32> = u_xlat1;
  let x_1385 : vec3<f32> = (-(x_1381) + vec3<f32>(x_1383.x, x_1383.y, x_1383.w));
  let x_1386 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1385.x, x_1385.y, x_1385.z, x_1386.w);
  let x_1388 : vec3<f32> = u_xlat0;
  let x_1390 : vec4<f32> = u_xlat1;
  let x_1393 : vec3<f32> = u_xlat5;
  u_xlat0 = ((vec3<f32>(x_1388.x, x_1388.x, x_1388.x) * vec3<f32>(x_1390.x, x_1390.y, x_1390.z)) + x_1393);
  let x_1395 : vec2<f32> = vs_TEXCOORD0;
  let x_1398 : vec4<f32> = x_14.x_Dithering_Params;
  let x_1402 : vec4<f32> = x_14.x_Dithering_Params;
  let x_1404 : vec2<f32> = ((x_1395 * vec2<f32>(x_1398.x, x_1398.y)) + vec2<f32>(x_1402.z, x_1402.w));
  let x_1405 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1404.x, x_1404.y, x_1405.z, x_1405.w);
  let x_1412 : vec4<f32> = u_xlat1;
  let x_1415 : f32 = x_14.x_GlobalMipBias.x;
  let x_1416 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_1412.x, x_1412.y), x_1415);
  u_xlat15 = x_1416.w;
  let x_1418 : f32 = u_xlat15;
  u_xlat15 = ((x_1418 * 2.0f) + -1.0f);
  let x_1421 : f32 = u_xlat15;
  u_xlatb1 = (x_1421 >= 0.0f);
  let x_1423 : bool = u_xlatb1;
  u_xlat1.x = select(-1.0f, 1.0f, x_1423);
  let x_1426 : f32 = u_xlat15;
  u_xlat15 = (-(abs(x_1426)) + 1.0f);
  let x_1430 : f32 = u_xlat15;
  u_xlat15 = sqrt(x_1430);
  let x_1432 : f32 = u_xlat15;
  u_xlat15 = (-(x_1432) + 1.0f);
  let x_1435 : f32 = u_xlat15;
  let x_1437 : f32 = u_xlat1.x;
  u_xlat15 = (x_1435 * x_1437);
  let x_1439 : vec3<f32> = u_xlat0;
  let x_1440 : vec3<f32> = (x_1439 * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
  let x_1441 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1440.x, x_1440.y, x_1440.z, x_1441.w);
  let x_1443 : vec3<f32> = u_xlat0;
  let x_1445 : vec3<f32> = log2(abs(x_1443));
  let x_1446 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1445.x, x_1445.y, x_1445.z, x_1446.w);
  let x_1448 : vec4<f32> = u_xlat2;
  let x_1450 : vec3<f32> = (vec3<f32>(x_1448.x, x_1448.y, x_1448.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
  let x_1451 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1450.x, x_1450.y, x_1450.z, x_1451.w);
  let x_1453 : vec4<f32> = u_xlat2;
  let x_1455 : vec3<f32> = exp2(vec3<f32>(x_1453.x, x_1453.y, x_1453.z));
  let x_1456 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1455.x, x_1455.y, x_1455.z, x_1456.w);
  let x_1458 : vec4<f32> = u_xlat2;
  let x_1461 : vec3<f32> = ((vec3<f32>(x_1458.x, x_1458.y, x_1458.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
  let x_1462 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1461.x, x_1461.y, x_1461.z, x_1462.w);
  let x_1464 : vec3<f32> = u_xlat0;
  let x_1466 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_1464.x, x_1464.y, x_1464.z, x_1464.x));
  u_xlatb0 = vec3<bool>(x_1466.x, x_1466.y, x_1466.z);
  let x_1469 : bool = u_xlatb0.x;
  if (x_1469) {
    let x_1474 : f32 = u_xlat1.x;
    x_1470 = x_1474;
  } else {
    let x_1477 : f32 = u_xlat2.x;
    x_1470 = x_1477;
  }
  let x_1478 : f32 = x_1470;
  u_xlat0.x = x_1478;
  let x_1481 : bool = u_xlatb0.y;
  if (x_1481) {
    let x_1486 : f32 = u_xlat1.y;
    x_1482 = x_1486;
  } else {
    let x_1489 : f32 = u_xlat2.y;
    x_1482 = x_1489;
  }
  let x_1490 : f32 = x_1482;
  u_xlat0.y = x_1490;
  let x_1493 : bool = u_xlatb0.z;
  if (x_1493) {
    let x_1498 : f32 = u_xlat1.z;
    x_1494 = x_1498;
  } else {
    let x_1501 : f32 = u_xlat2.z;
    x_1494 = x_1501;
  }
  let x_1502 : f32 = x_1494;
  u_xlat0.z = x_1502;
  let x_1504 : f32 = u_xlat15;
  let x_1509 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1504, x_1504, x_1504) * vec3<f32>(0.0039215688593685627f, 0.0039215688593685627f, 0.0039215688593685627f)) + x_1509);
  let x_1511 : vec3<f32> = u_xlat0;
  let x_1512 : vec3<f32> = (x_1511 * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
  let x_1513 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1512.x, x_1512.y, x_1512.z, x_1513.w);
  let x_1515 : vec3<f32> = u_xlat0;
  let x_1516 : vec3<f32> = (x_1515 + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
  let x_1517 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1516.x, x_1516.y, x_1516.z, x_1517.w);
  let x_1519 : vec4<f32> = u_xlat2;
  let x_1521 : vec3<f32> = (vec3<f32>(x_1519.x, x_1519.y, x_1519.z) * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
  let x_1522 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1521.x, x_1521.y, x_1521.z, x_1522.w);
  let x_1524 : vec4<f32> = u_xlat2;
  let x_1527 : vec3<f32> = log2(abs(vec3<f32>(x_1524.x, x_1524.y, x_1524.z)));
  let x_1528 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1527.x, x_1527.y, x_1527.z, x_1528.w);
  let x_1530 : vec4<f32> = u_xlat2;
  let x_1532 : vec3<f32> = (vec3<f32>(x_1530.x, x_1530.y, x_1530.z) * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
  let x_1533 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1532.x, x_1532.y, x_1532.z, x_1533.w);
  let x_1535 : vec4<f32> = u_xlat2;
  let x_1537 : vec3<f32> = exp2(vec3<f32>(x_1535.x, x_1535.y, x_1535.z));
  let x_1538 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1537.x, x_1537.y, x_1537.z, x_1538.w);
  let x_1540 : vec3<f32> = u_xlat0;
  let x_1542 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_1540.x, x_1540.y, x_1540.z, x_1540.x));
  u_xlatb0 = vec3<bool>(x_1542.x, x_1542.y, x_1542.z);
  let x_1545 : bool = u_xlatb0.x;
  if (x_1545) {
    let x_1550 : f32 = u_xlat1.x;
    x_1546 = x_1550;
  } else {
    let x_1553 : f32 = u_xlat2.x;
    x_1546 = x_1553;
  }
  let x_1554 : f32 = x_1546;
  u_xlat0.x = x_1554;
  let x_1557 : bool = u_xlatb0.y;
  if (x_1557) {
    let x_1562 : f32 = u_xlat1.y;
    x_1558 = x_1562;
  } else {
    let x_1565 : f32 = u_xlat2.y;
    x_1558 = x_1565;
  }
  let x_1566 : f32 = x_1558;
  u_xlat0.y = x_1566;
  let x_1569 : bool = u_xlatb0.z;
  if (x_1569) {
    let x_1574 : f32 = u_xlat1.z;
    x_1570 = x_1574;
  } else {
    let x_1577 : f32 = u_xlat2.z;
    x_1570 = x_1577;
  }
  let x_1578 : f32 = x_1570;
  u_xlat0.z = x_1578;
  let x_1582 : vec3<f32> = u_xlat0;
  let x_1583 : vec3<f32> = max(x_1582, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1584 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1583.x, x_1583.y, x_1583.z, x_1584.w);
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


