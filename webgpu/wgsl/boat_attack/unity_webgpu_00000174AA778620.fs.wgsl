struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_Lut_Params : vec4<f32>,
  x_UserLut_Params : vec4<f32>,
  x_Bloom_Params : vec4<f32>,
  x_Bloom_RGBM : f32,
  @size(12)
  padding_1 : u32,
  x_LensDirt_Params : vec4<f32>,
  x_LensDirt_Intensity : f32,
  @size(12)
  padding_2 : u32,
  x_Vignette_Params1 : vec4<f32>,
  x_Vignette_Params2 : vec4<f32>,
}

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_LinearClamp : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

@group(0) @binding(1) var x_Bloom_Texture : texture_2d<f32>;

@group(0) @binding(2) var x_LensDirt_Texture : texture_2d<f32>;

@group(0) @binding(4) var x_UserLut : texture_2d<f32>;

@group(0) @binding(3) var x_InternalLut : texture_2d<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb15 : bool;
  var u_xlat2 : vec4<f32>;
  var u_xlat15 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat10 : vec2<f32>;
  var u_xlatb1 : bool;
  var u_xlatb5 : bool;
  var x_409 : f32;
  var x_418 : f32;
  var u_xlatb10 : vec2<bool>;
  var u_xlat11 : vec2<f32>;
  var u_xlat16 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlatb8 : bool;
  var x_559 : f32;
  var u_xlatb16 : bool;
  var x_610 : f32;
  var x_637 : f32;
  var x_661 : f32;
  var x_672 : f32;
  var u_xlatb0 : vec3<bool>;
  var u_xlatb3 : vec3<bool>;
  var hlslcc_movcTemp : vec3<f32>;
  var x_1061 : f32;
  var x_1073 : f32;
  var x_1085 : f32;
  var u_xlat4 : vec2<f32>;
  var x_1232 : f32;
  var x_1244 : f32;
  var x_1256 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_34 : f32 = x_27.x_GlobalMipBias.x;
  let x_35 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, x_23, x_34);
  u_xlat0 = vec3<f32>(x_35.x, x_35.y, x_35.z);
  let x_43 : vec2<f32> = vs_TEXCOORD0;
  let x_45 : f32 = x_27.x_GlobalMipBias.x;
  let x_46 : vec4<f32> = textureSampleBias(x_Bloom_Texture, sampler_LinearClamp, x_43, x_45);
  u_xlat1 = x_46;
  let x_53 : f32 = x_27.x_Bloom_RGBM;
  u_xlatb15 = (0.0f < x_53);
  let x_55 : bool = u_xlatb15;
  if (x_55) {
    let x_59 : vec4<f32> = u_xlat1;
    let x_61 : vec4<f32> = u_xlat1;
    let x_63 : vec3<f32> = (vec3<f32>(x_59.w, x_59.w, x_59.w) * vec3<f32>(x_61.x, x_61.y, x_61.z));
    let x_64 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_63.x, x_63.y, x_63.z, x_64.w);
    let x_66 : vec4<f32> = u_xlat2;
    let x_70 : vec3<f32> = (vec3<f32>(x_66.x, x_66.y, x_66.z) * vec3<f32>(8.0f, 8.0f, 8.0f));
    let x_71 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_70.x, x_70.y, x_70.z, x_71.w);
  }
  let x_73 : vec4<f32> = u_xlat1;
  let x_78 : vec4<f32> = x_27.x_Bloom_Params;
  let x_80 : vec3<f32> = (vec3<f32>(x_73.x, x_73.y, x_73.z) * vec3<f32>(x_78.x, x_78.x, x_78.x));
  let x_81 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_80.x, x_80.y, x_80.z, x_81.w);
  let x_83 : vec4<f32> = u_xlat1;
  let x_86 : vec4<f32> = x_27.x_Bloom_Params;
  let x_89 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_83.x, x_83.y, x_83.z) * vec3<f32>(x_86.y, x_86.z, x_86.w)) + x_89);
  let x_91 : vec2<f32> = vs_TEXCOORD0;
  let x_94 : vec4<f32> = x_27.x_LensDirt_Params;
  let x_98 : vec4<f32> = x_27.x_LensDirt_Params;
  let x_100 : vec2<f32> = ((x_91 * vec2<f32>(x_94.x, x_94.y)) + vec2<f32>(x_98.z, x_98.w));
  let x_101 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_100.x, x_100.y, x_101.z, x_101.w);
  let x_107 : vec4<f32> = u_xlat2;
  let x_110 : f32 = x_27.x_GlobalMipBias.x;
  let x_111 : vec4<f32> = textureSampleBias(x_LensDirt_Texture, sampler_LinearClamp, vec2<f32>(x_107.x, x_107.y), x_110);
  let x_112 : vec3<f32> = vec3<f32>(x_111.x, x_111.y, x_111.z);
  let x_113 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_112.x, x_112.y, x_112.z, x_113.w);
  let x_115 : vec4<f32> = u_xlat2;
  let x_119 : f32 = x_27.x_LensDirt_Intensity;
  let x_121 : vec3<f32> = (vec3<f32>(x_115.x, x_115.y, x_115.z) * vec3<f32>(x_119, x_119, x_119));
  let x_122 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_121.x, x_121.y, x_121.z, x_122.w);
  let x_124 : vec4<f32> = u_xlat2;
  let x_126 : vec4<f32> = u_xlat1;
  let x_129 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_124.x, x_124.y, x_124.z) * vec3<f32>(x_126.x, x_126.y, x_126.z)) + x_129);
  let x_134 : f32 = x_27.x_Vignette_Params2.z;
  u_xlatb15 = (0.0f < x_134);
  let x_136 : bool = u_xlatb15;
  if (x_136) {
    let x_139 : vec2<f32> = vs_TEXCOORD0;
    let x_141 : vec4<f32> = x_27.x_Vignette_Params2;
    let x_144 : vec2<f32> = (x_139 + -(vec2<f32>(x_141.x, x_141.y)));
    let x_145 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_144.x, x_144.y, x_145.z, x_145.w);
    let x_147 : vec4<f32> = u_xlat1;
    let x_151 : vec4<f32> = x_27.x_Vignette_Params2;
    let x_153 : vec2<f32> = (abs(vec2<f32>(x_147.x, x_147.y)) * vec2<f32>(x_151.z, x_151.z));
    let x_154 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_154.x, x_153.x, x_153.y, x_154.w);
    let x_159 : f32 = u_xlat1.y;
    let x_163 : f32 = x_27.x_Vignette_Params1.w;
    u_xlat1.x = (x_159 * x_163);
    let x_167 : vec4<f32> = u_xlat1;
    let x_169 : vec4<f32> = u_xlat1;
    u_xlat15 = dot(vec2<f32>(x_167.x, x_167.z), vec2<f32>(x_169.x, x_169.z));
    let x_172 : f32 = u_xlat15;
    u_xlat15 = (-(x_172) + 1.0f);
    let x_176 : f32 = u_xlat15;
    u_xlat15 = max(x_176, 0.0f);
    let x_178 : f32 = u_xlat15;
    u_xlat15 = log2(x_178);
    let x_180 : f32 = u_xlat15;
    let x_182 : f32 = x_27.x_Vignette_Params2.w;
    u_xlat15 = (x_180 * x_182);
    let x_184 : f32 = u_xlat15;
    u_xlat15 = exp2(x_184);
    let x_187 : vec4<f32> = x_27.x_Vignette_Params1;
    let x_191 : vec3<f32> = (-(vec3<f32>(x_187.x, x_187.y, x_187.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_192 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_191.x, x_191.y, x_191.z, x_192.w);
    let x_194 : f32 = u_xlat15;
    let x_196 : vec4<f32> = u_xlat1;
    let x_200 : vec4<f32> = x_27.x_Vignette_Params1;
    let x_202 : vec3<f32> = ((vec3<f32>(x_194, x_194, x_194) * vec3<f32>(x_196.x, x_196.y, x_196.z)) + vec3<f32>(x_200.x, x_200.y, x_200.z));
    let x_203 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_202.x, x_202.y, x_202.z, x_203.w);
    let x_205 : vec3<f32> = u_xlat0;
    let x_206 : vec4<f32> = u_xlat1;
    u_xlat0 = (x_205 * vec3<f32>(x_206.x, x_206.y, x_206.z));
  }
  let x_209 : vec3<f32> = u_xlat0;
  let x_212 : vec4<f32> = x_27.x_Lut_Params;
  u_xlat0 = (x_209 * vec3<f32>(x_212.w, x_212.w, x_212.w));
  let x_220 : vec3<f32> = u_xlat0;
  u_xlat6.x = dot(vec3<f32>(0.439700991f, 0.382977992f, 0.177334994f), x_220);
  let x_227 : vec3<f32> = u_xlat0;
  u_xlat6.y = dot(vec3<f32>(0.089792296f, 0.813422978f, 0.096761599f), x_227);
  let x_234 : vec3<f32> = u_xlat0;
  u_xlat6.z = dot(vec3<f32>(0.017543999f, 0.111543998f, 0.870703995f), x_234);
  let x_238 : f32 = u_xlat6.y;
  let x_240 : f32 = u_xlat6.x;
  u_xlat0.x = min(x_238, x_240);
  let x_244 : f32 = u_xlat6.z;
  let x_246 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_244, x_246);
  let x_251 : f32 = u_xlat6.y;
  let x_253 : f32 = u_xlat6.x;
  u_xlat5.x = max(x_251, x_253);
  let x_257 : f32 = u_xlat6.z;
  let x_259 : f32 = u_xlat5.x;
  u_xlat0.y = max(x_257, x_259);
  let x_262 : vec3<f32> = u_xlat0;
  u_xlat0 = max(vec3<f32>(x_262.x, x_262.y, x_262.y), vec3<f32>(0.0001f, 0.0001f, 0.01f));
  let x_269 : f32 = u_xlat0.x;
  let x_272 : f32 = u_xlat0.y;
  u_xlat0.x = (-(x_269) + x_272);
  let x_276 : f32 = u_xlat0.x;
  let x_278 : f32 = u_xlat0.z;
  u_xlat0.x = (x_276 / x_278);
  let x_281 : vec3<f32> = u_xlat6;
  let x_284 : vec3<f32> = u_xlat6;
  u_xlat5 = (-(vec3<f32>(x_281.y, x_281.x, x_281.z)) + vec3<f32>(x_284.z, x_284.y, x_284.x));
  let x_287 : vec3<f32> = u_xlat5;
  let x_289 : vec3<f32> = u_xlat6;
  let x_291 : vec2<f32> = (vec2<f32>(x_287.x, x_287.y) * vec2<f32>(x_289.z, x_289.y));
  let x_292 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_291.x, x_291.y, x_292.z);
  let x_295 : f32 = u_xlat5.y;
  let x_297 : f32 = u_xlat5.x;
  u_xlat5.x = (x_295 + x_297);
  let x_301 : f32 = u_xlat6.x;
  let x_303 : f32 = u_xlat5.z;
  let x_306 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_301 * x_303) + x_306);
  let x_310 : f32 = u_xlat5.x;
  u_xlat5.x = max(x_310, 0.0f);
  let x_314 : f32 = u_xlat5.x;
  u_xlat5.x = sqrt(x_314);
  let x_320 : f32 = u_xlat6.y;
  let x_322 : f32 = u_xlat6.z;
  u_xlat10.x = (x_320 + x_322);
  let x_326 : f32 = u_xlat6.x;
  let x_328 : f32 = u_xlat10.x;
  u_xlat10.x = (x_326 + x_328);
  let x_332 : f32 = u_xlat5.x;
  let x_336 : f32 = u_xlat10.x;
  u_xlat5.x = ((x_332 * 1.75f) + x_336);
  let x_340 : f32 = u_xlat0.x;
  u_xlat15 = (x_340 + -0.400000006f);
  let x_343 : f32 = u_xlat15;
  u_xlat1.x = (x_343 * 2.5f);
  let x_348 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_348)) + 1.0f);
  let x_354 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_354, 0.0f);
  let x_357 : f32 = u_xlat15;
  u_xlatb15 = (x_357 >= 0.0f);
  let x_359 : bool = u_xlatb15;
  u_xlat15 = select(-1.0f, 1.0f, x_359);
  let x_363 : f32 = u_xlat1.x;
  let x_366 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_363) * x_366) + 1.0f);
  let x_370 : f32 = u_xlat15;
  let x_372 : f32 = u_xlat1.x;
  u_xlat5.z = ((x_370 * x_372) + 1.0f);
  let x_376 : vec3<f32> = u_xlat5;
  u_xlat10 = (vec2<f32>(x_376.x, x_376.z) * vec2<f32>(0.333333343f, 0.025f));
  let x_385 : f32 = u_xlat5.x;
  u_xlatb1 = (0.159999996f >= x_385);
  let x_389 : f32 = u_xlat5.x;
  u_xlatb5 = (x_389 >= 0.479999989f);
  let x_394 : f32 = u_xlat10.x;
  u_xlat10.x = (0.079999998f / x_394);
  let x_398 : f32 = u_xlat10.x;
  u_xlat10.x = (x_398 + -0.5f);
  let x_403 : f32 = u_xlat10.x;
  let x_405 : f32 = u_xlat10.y;
  u_xlat10.x = (x_403 * x_405);
  let x_408 : bool = u_xlatb5;
  if (x_408) {
    x_409 = 0.0f;
  } else {
    let x_414 : f32 = u_xlat10.x;
    x_409 = x_414;
  }
  let x_415 : f32 = x_409;
  u_xlat5.x = x_415;
  let x_417 : bool = u_xlatb1;
  if (x_417) {
    let x_422 : f32 = u_xlat10.y;
    x_418 = x_422;
  } else {
    let x_425 : f32 = u_xlat5.x;
    x_418 = x_425;
  }
  let x_426 : f32 = x_418;
  u_xlat5.x = x_426;
  let x_429 : f32 = u_xlat5.x;
  u_xlat5.x = (x_429 + 1.0f);
  let x_432 : vec3<f32> = u_xlat5;
  let x_434 : vec3<f32> = u_xlat6;
  let x_435 : vec3<f32> = (vec3<f32>(x_432.x, x_432.x, x_432.x) * x_434);
  let x_436 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_436.x, x_435.x, x_435.y, x_435.z);
  let x_441 : vec4<f32> = u_xlat2;
  let x_443 : vec4<f32> = u_xlat2;
  let x_446 : vec4<bool> = (vec4<f32>(x_441.z, x_441.w, x_441.z, x_441.w) == vec4<f32>(x_443.y, x_443.z, x_443.y, x_443.z));
  u_xlatb10 = vec2<bool>(x_446.x, x_446.y);
  let x_449 : bool = u_xlatb10.y;
  let x_451 : bool = u_xlatb10.x;
  u_xlatb10.x = (x_449 & x_451);
  let x_455 : f32 = u_xlat6.y;
  let x_457 : f32 = u_xlat5.x;
  let x_460 : f32 = u_xlat2.w;
  u_xlat15 = ((x_455 * x_457) + -(x_460));
  let x_463 : f32 = u_xlat15;
  u_xlat15 = (x_463 * 1.732050776f);
  let x_467 : f32 = u_xlat2.y;
  let x_471 : f32 = u_xlat2.z;
  u_xlat1.x = ((x_467 * 2.0f) + -(x_471));
  let x_476 : f32 = u_xlat6.z;
  let x_479 : f32 = u_xlat5.x;
  let x_482 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_476) * x_479) + x_482);
  let x_486 : f32 = u_xlat15;
  let x_489 : f32 = u_xlat1.x;
  u_xlat11.x = min(abs(x_486), abs(x_489));
  let x_494 : f32 = u_xlat15;
  let x_497 : f32 = u_xlat1.x;
  u_xlat16 = max(abs(x_494), abs(x_497));
  let x_500 : f32 = u_xlat16;
  u_xlat16 = (1.0f / x_500);
  let x_502 : f32 = u_xlat16;
  let x_504 : f32 = u_xlat11.x;
  u_xlat11.x = (x_502 * x_504);
  let x_508 : f32 = u_xlat11.x;
  let x_510 : f32 = u_xlat11.x;
  u_xlat16 = (x_508 * x_510);
  let x_513 : f32 = u_xlat16;
  u_xlat3.x = ((x_513 * 0.0208351f) + -0.085133001f);
  let x_519 : f32 = u_xlat16;
  let x_521 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_519 * x_521) + 0.180141002f);
  let x_526 : f32 = u_xlat16;
  let x_528 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_526 * x_528) + -0.330299497f);
  let x_533 : f32 = u_xlat16;
  let x_535 : f32 = u_xlat3.x;
  u_xlat16 = ((x_533 * x_535) + 0.999866009f);
  let x_539 : f32 = u_xlat16;
  let x_541 : f32 = u_xlat11.x;
  u_xlat3.x = (x_539 * x_541);
  let x_546 : f32 = u_xlat1.x;
  let x_548 : f32 = u_xlat15;
  u_xlatb8 = (abs(x_546) < abs(x_548));
  let x_552 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_552 * -2.0f) + 1.570796371f);
  let x_558 : bool = u_xlatb8;
  if (x_558) {
    let x_563 : f32 = u_xlat3.x;
    x_559 = x_563;
  } else {
    x_559 = 0.0f;
  }
  let x_565 : f32 = x_559;
  u_xlat3.x = x_565;
  let x_568 : f32 = u_xlat11.x;
  let x_569 : f32 = u_xlat16;
  let x_572 : f32 = u_xlat3.x;
  u_xlat11.x = ((x_568 * x_569) + x_572);
  let x_577 : f32 = u_xlat1.x;
  let x_579 : f32 = u_xlat1.x;
  u_xlatb16 = (x_577 < -(x_579));
  let x_582 : bool = u_xlatb16;
  u_xlat16 = select(0.0f, -3.141592741f, x_582);
  let x_585 : f32 = u_xlat16;
  let x_587 : f32 = u_xlat11.x;
  u_xlat11.x = (x_585 + x_587);
  let x_590 : f32 = u_xlat15;
  let x_592 : f32 = u_xlat1.x;
  u_xlat16 = min(x_590, x_592);
  let x_594 : f32 = u_xlat15;
  let x_596 : f32 = u_xlat1.x;
  u_xlat15 = max(x_594, x_596);
  let x_598 : f32 = u_xlat16;
  let x_599 : f32 = u_xlat16;
  u_xlatb1 = (x_598 < -(x_599));
  let x_602 : f32 = u_xlat15;
  let x_603 : f32 = u_xlat15;
  u_xlatb15 = (x_602 >= -(x_603));
  let x_606 : bool = u_xlatb15;
  let x_607 : bool = u_xlatb1;
  u_xlatb15 = (x_606 & x_607);
  let x_609 : bool = u_xlatb15;
  if (x_609) {
    let x_614 : f32 = u_xlat11.x;
    x_610 = -(x_614);
  } else {
    let x_618 : f32 = u_xlat11.x;
    x_610 = x_618;
  }
  let x_619 : f32 = x_610;
  u_xlat15 = x_619;
  let x_620 : f32 = u_xlat15;
  u_xlat15 = (x_620 * 57.295780182f);
  let x_624 : bool = u_xlatb10.x;
  let x_625 : f32 = u_xlat15;
  u_xlat10.x = select(x_625, 0.0f, x_624);
  let x_629 : f32 = u_xlat10.x;
  u_xlatb15 = (x_629 < 0.0f);
  let x_632 : f32 = u_xlat10.x;
  u_xlat1.x = (x_632 + 360.0f);
  let x_636 : bool = u_xlatb15;
  if (x_636) {
    let x_641 : f32 = u_xlat1.x;
    x_637 = x_641;
  } else {
    let x_644 : f32 = u_xlat10.x;
    x_637 = x_644;
  }
  let x_645 : f32 = x_637;
  u_xlat10.x = x_645;
  let x_648 : f32 = u_xlat10.x;
  u_xlatb15 = (x_648 < -180.0f);
  let x_653 : f32 = u_xlat10.x;
  u_xlatb1 = (180.0f < x_653);
  let x_655 : vec2<f32> = u_xlat10;
  u_xlat11 = (vec2<f32>(x_655.x, x_655.x) + vec2<f32>(360.0f, -360.0f));
  let x_660 : bool = u_xlatb1;
  if (x_660) {
    let x_665 : f32 = u_xlat11.y;
    x_661 = x_665;
  } else {
    let x_668 : f32 = u_xlat10.x;
    x_661 = x_668;
  }
  let x_669 : f32 = x_661;
  u_xlat10.x = x_669;
  let x_671 : bool = u_xlatb15;
  if (x_671) {
    let x_676 : f32 = u_xlat11.x;
    x_672 = x_676;
  } else {
    let x_679 : f32 = u_xlat10.x;
    x_672 = x_679;
  }
  let x_680 : f32 = x_672;
  u_xlat10.x = x_680;
  let x_683 : f32 = u_xlat10.x;
  u_xlat10.x = (x_683 * 0.014814815f);
  let x_688 : f32 = u_xlat10.x;
  u_xlat10.x = (-(abs(x_688)) + 1.0f);
  let x_694 : f32 = u_xlat10.x;
  u_xlat10.x = max(x_694, 0.0f);
  let x_698 : f32 = u_xlat10.x;
  u_xlat15 = ((x_698 * -2.0f) + 3.0f);
  let x_703 : f32 = u_xlat10.x;
  let x_705 : f32 = u_xlat10.x;
  u_xlat10.x = (x_703 * x_705);
  let x_709 : f32 = u_xlat10.x;
  let x_710 : f32 = u_xlat15;
  u_xlat10.x = (x_709 * x_710);
  let x_714 : f32 = u_xlat10.x;
  let x_716 : f32 = u_xlat10.x;
  u_xlat10.x = (x_714 * x_716);
  let x_720 : f32 = u_xlat0.x;
  let x_722 : f32 = u_xlat10.x;
  u_xlat0.x = (x_720 * x_722);
  let x_726 : f32 = u_xlat6.x;
  let x_729 : f32 = u_xlat5.x;
  u_xlat5.x = ((-(x_726) * x_729) + 0.029999999f);
  let x_735 : f32 = u_xlat5.x;
  let x_737 : f32 = u_xlat0.x;
  u_xlat0.x = (x_735 * x_737);
  let x_741 : f32 = u_xlat0.x;
  let x_745 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_741 * 0.180000007f) + x_745);
  let x_752 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(1.451439261f, -0.236510754f, -0.214928567f), vec3<f32>(x_752.x, x_752.z, x_752.w));
  let x_760 : vec4<f32> = u_xlat2;
  u_xlat0.y = dot(vec3<f32>(-0.076553777f, 1.176229715f, -0.099675924f), vec3<f32>(x_760.x, x_760.z, x_760.w));
  let x_768 : vec4<f32> = u_xlat2;
  u_xlat0.z = dot(vec3<f32>(0.008316148f, -0.00603244966f, 0.997716308f), vec3<f32>(x_768.x, x_768.z, x_768.w));
  let x_772 : vec3<f32> = u_xlat0;
  u_xlat0 = max(x_772, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_775 : vec3<f32> = u_xlat0;
  u_xlat15 = dot(x_775, vec3<f32>(0.272228986f, 0.674081981f, 0.053689498f));
  let x_781 : f32 = u_xlat15;
  let x_784 : vec3<f32> = u_xlat0;
  u_xlat0 = (-(vec3<f32>(x_781, x_781, x_781)) + x_784);
  let x_786 : vec3<f32> = u_xlat0;
  let x_790 : f32 = u_xlat15;
  u_xlat0 = ((x_786 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f)) + vec3<f32>(x_790, x_790, x_790));
  let x_793 : vec3<f32> = u_xlat0;
  let x_796 : vec3<f32> = (x_793 + vec3<f32>(0.024578599f, 0.024578599f, 0.024578599f));
  let x_797 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_796.x, x_796.y, x_796.z, x_797.w);
  let x_799 : vec3<f32> = u_xlat0;
  let x_800 : vec4<f32> = u_xlat1;
  let x_805 : vec3<f32> = ((x_799 * vec3<f32>(x_800.x, x_800.y, x_800.z)) + vec3<f32>(-0.000090537f, -0.000090537f, -0.000090537f));
  let x_806 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_805.x, x_805.y, x_805.z, x_806.w);
  let x_808 : vec3<f32> = u_xlat0;
  let x_814 : vec3<f32> = ((x_808 * vec3<f32>(0.983729005f, 0.983729005f, 0.983729005f)) + vec3<f32>(0.432951003f, 0.432951003f, 0.432951003f));
  let x_815 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_814.x, x_814.y, x_814.z, x_815.w);
  let x_817 : vec3<f32> = u_xlat0;
  let x_818 : vec4<f32> = u_xlat2;
  u_xlat0 = ((x_817 * vec3<f32>(x_818.x, x_818.y, x_818.z)) + vec3<f32>(0.238080993f, 0.238080993f, 0.238080993f));
  let x_824 : vec4<f32> = u_xlat1;
  let x_826 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_824.x, x_824.y, x_824.z) / x_826);
  let x_832 : vec3<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(0.662454188f, 0.134004205f, 0.156187683f), x_832);
  let x_839 : vec3<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(0.272228718f, 0.674081743f, 0.053689517f), x_839);
  let x_846 : vec3<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(-0.00557464967f, 0.0040607336f, 1.010339141f), x_846);
  let x_849 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(x_849.x, x_849.y, x_849.z), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_854 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_854, 0.0001f);
  let x_857 : vec4<f32> = u_xlat1;
  let x_859 : vec3<f32> = u_xlat0;
  let x_861 : vec2<f32> = (vec2<f32>(x_857.x, x_857.y) / vec2<f32>(x_859.x, x_859.x));
  let x_862 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_861.x, x_861.y, x_862.z);
  let x_865 : f32 = u_xlat1.y;
  u_xlat15 = max(x_865, 0.0f);
  let x_867 : f32 = u_xlat15;
  u_xlat15 = min(x_867, 65504.0f);
  let x_870 : f32 = u_xlat15;
  u_xlat15 = log2(x_870);
  let x_872 : f32 = u_xlat15;
  u_xlat15 = (x_872 * 0.981100023f);
  let x_875 : f32 = u_xlat15;
  u_xlat1.y = exp2(x_875);
  let x_879 : f32 = u_xlat0.y;
  u_xlat15 = max(x_879, 0.0001f);
  let x_882 : f32 = u_xlat1.y;
  let x_883 : f32 = u_xlat15;
  u_xlat15 = (x_882 / x_883);
  let x_886 : f32 = u_xlat0.x;
  u_xlat16 = (-(x_886) + 1.0f);
  let x_890 : f32 = u_xlat0.y;
  let x_892 : f32 = u_xlat16;
  u_xlat0.z = (-(x_890) + x_892);
  let x_895 : f32 = u_xlat15;
  let x_897 : vec3<f32> = u_xlat0;
  let x_899 : vec2<f32> = (vec2<f32>(x_895, x_895) * vec2<f32>(x_897.x, x_897.z));
  let x_900 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_899.x, x_900.y, x_899.y, x_900.w);
  let x_906 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(1.641023397f, -0.324803293f, -0.236424699f), vec3<f32>(x_906.x, x_906.y, x_906.z));
  let x_914 : vec4<f32> = u_xlat1;
  u_xlat0.y = dot(vec3<f32>(-0.663662851f, 1.61533165f, 0.016756348f), vec3<f32>(x_914.x, x_914.y, x_914.z));
  let x_922 : vec4<f32> = u_xlat1;
  u_xlat0.z = dot(vec3<f32>(0.011721894f, -0.008284442f, 0.988394856f), vec3<f32>(x_922.x, x_922.y, x_922.z));
  let x_926 : vec3<f32> = u_xlat0;
  u_xlat15 = dot(x_926, vec3<f32>(0.272228986f, 0.674081981f, 0.053689498f));
  let x_928 : f32 = u_xlat15;
  let x_931 : vec3<f32> = u_xlat0;
  u_xlat0 = (-(vec3<f32>(x_928, x_928, x_928)) + x_931);
  let x_933 : vec3<f32> = u_xlat0;
  let x_937 : f32 = u_xlat15;
  u_xlat0 = ((x_933 * vec3<f32>(0.930000007f, 0.930000007f, 0.930000007f)) + vec3<f32>(x_937, x_937, x_937));
  let x_940 : vec3<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(0.662454188f, 0.134004205f, 0.156187683f), x_940);
  let x_943 : vec3<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(0.272228718f, 0.674081743f, 0.053689517f), x_943);
  let x_946 : vec3<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(-0.00557464967f, 0.0040607336f, 1.010339141f), x_946);
  let x_953 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(0.987223983f, -0.00611327f, 0.015953301f), vec3<f32>(x_953.x, x_953.y, x_953.z));
  let x_961 : vec4<f32> = u_xlat1;
  u_xlat0.y = dot(vec3<f32>(-0.00759836f, 1.001860023f, 0.0053302f), vec3<f32>(x_961.x, x_961.y, x_961.z));
  let x_969 : vec4<f32> = u_xlat1;
  u_xlat0.z = dot(vec3<f32>(0.00307257f, -0.00509595f, 1.081680059f), vec3<f32>(x_969.x, x_969.y, x_969.z));
  let x_977 : vec3<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(3.240969896f, -1.537383199f, -0.498610765f), x_977);
  let x_981 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_981, 0.0f, 1.0f);
  let x_988 : vec3<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(-0.969243646f, 1.875967503f, 0.041555058f), x_988);
  let x_992 : f32 = u_xlat1.y;
  u_xlat1.y = clamp(x_992, 0.0f, 1.0f);
  let x_999 : vec3<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(0.05563008f, -0.203976959f, 1.05697155f), x_999);
  let x_1003 : f32 = u_xlat1.z;
  u_xlat1.z = clamp(x_1003, 0.0f, 1.0f);
  let x_1011 : f32 = x_27.x_UserLut_Params.w;
  u_xlatb0.x = (0.0f < x_1011);
  let x_1015 : bool = u_xlatb0.x;
  if (x_1015) {
    let x_1018 : vec4<f32> = u_xlat1;
    u_xlat0 = (vec3<f32>(x_1018.x, x_1018.y, x_1018.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
    let x_1023 : vec4<f32> = u_xlat1;
    let x_1025 : vec3<f32> = log2(vec3<f32>(x_1023.x, x_1023.y, x_1023.z));
    let x_1026 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1025.x, x_1025.y, x_1025.z, x_1026.w);
    let x_1028 : vec4<f32> = u_xlat2;
    let x_1032 : vec3<f32> = (vec3<f32>(x_1028.x, x_1028.y, x_1028.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
    let x_1033 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1032.x, x_1032.y, x_1032.z, x_1033.w);
    let x_1035 : vec4<f32> = u_xlat2;
    let x_1037 : vec3<f32> = exp2(vec3<f32>(x_1035.x, x_1035.y, x_1035.z));
    let x_1038 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1037.x, x_1037.y, x_1037.z, x_1038.w);
    let x_1040 : vec4<f32> = u_xlat2;
    let x_1047 : vec3<f32> = ((vec3<f32>(x_1040.x, x_1040.y, x_1040.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
    let x_1048 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1047.x, x_1047.y, x_1047.z, x_1048.w);
    let x_1053 : vec4<f32> = u_xlat1;
    let x_1055 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1053.x, x_1053.y, x_1053.z, x_1053.x));
    u_xlatb3 = vec3<bool>(x_1055.x, x_1055.y, x_1055.z);
    let x_1058 : vec3<f32> = u_xlat0;
    hlslcc_movcTemp = x_1058;
    let x_1060 : bool = u_xlatb3.x;
    if (x_1060) {
      let x_1065 : f32 = u_xlat0.x;
      x_1061 = x_1065;
    } else {
      let x_1068 : f32 = u_xlat2.x;
      x_1061 = x_1068;
    }
    let x_1069 : f32 = x_1061;
    hlslcc_movcTemp.x = x_1069;
    let x_1072 : bool = u_xlatb3.y;
    if (x_1072) {
      let x_1077 : f32 = u_xlat0.y;
      x_1073 = x_1077;
    } else {
      let x_1080 : f32 = u_xlat2.y;
      x_1073 = x_1080;
    }
    let x_1081 : f32 = x_1073;
    hlslcc_movcTemp.y = x_1081;
    let x_1084 : bool = u_xlatb3.z;
    if (x_1084) {
      let x_1089 : f32 = u_xlat0.z;
      x_1085 = x_1089;
    } else {
      let x_1092 : f32 = u_xlat2.z;
      x_1085 = x_1092;
    }
    let x_1093 : f32 = x_1085;
    hlslcc_movcTemp.z = x_1093;
    let x_1095 : vec3<f32> = hlslcc_movcTemp;
    u_xlat0 = x_1095;
    let x_1096 : vec3<f32> = u_xlat0;
    let x_1099 : vec4<f32> = x_27.x_UserLut_Params;
    let x_1101 : vec3<f32> = (vec3<f32>(x_1096.z, x_1096.x, x_1096.y) * vec3<f32>(x_1099.z, x_1099.z, x_1099.z));
    let x_1102 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1101.x, x_1101.y, x_1101.z, x_1102.w);
    let x_1105 : f32 = u_xlat2.x;
    u_xlat15 = floor(x_1105);
    let x_1108 : vec4<f32> = x_27.x_UserLut_Params;
    let x_1112 : vec2<f32> = (vec2<f32>(x_1108.x, x_1108.y) * vec2<f32>(0.5f, 0.5f));
    let x_1113 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1112.x, x_1113.y, x_1113.z, x_1112.y);
    let x_1115 : vec4<f32> = u_xlat2;
    let x_1118 : vec4<f32> = x_27.x_UserLut_Params;
    let x_1121 : vec4<f32> = u_xlat2;
    let x_1123 : vec2<f32> = ((vec2<f32>(x_1115.y, x_1115.z) * vec2<f32>(x_1118.x, x_1118.y)) + vec2<f32>(x_1121.x, x_1121.w));
    let x_1124 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1124.x, x_1123.x, x_1123.y, x_1124.w);
    let x_1126 : f32 = u_xlat15;
    let x_1128 : f32 = x_27.x_UserLut_Params.y;
    let x_1131 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_1126 * x_1128) + x_1131);
    let x_1138 : vec4<f32> = u_xlat2;
    let x_1140 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1138.x, x_1138.z), 0.0f);
    u_xlat3 = vec3<f32>(x_1140.x, x_1140.y, x_1140.z);
    let x_1144 : f32 = x_27.x_UserLut_Params.y;
    u_xlat4.x = x_1144;
    u_xlat4.y = 0.0f;
    let x_1147 : vec4<f32> = u_xlat2;
    let x_1149 : vec2<f32> = u_xlat4;
    let x_1150 : vec2<f32> = (vec2<f32>(x_1147.x, x_1147.z) + x_1149);
    let x_1151 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1150.x, x_1150.y, x_1151.z, x_1151.w);
    let x_1156 : vec4<f32> = u_xlat2;
    let x_1158 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1156.x, x_1156.y), 0.0f);
    let x_1159 : vec3<f32> = vec3<f32>(x_1158.x, x_1158.y, x_1158.z);
    let x_1160 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1159.x, x_1159.y, x_1159.z, x_1160.w);
    let x_1163 : f32 = u_xlat0.z;
    let x_1165 : f32 = x_27.x_UserLut_Params.z;
    let x_1167 : f32 = u_xlat15;
    u_xlat15 = ((x_1163 * x_1165) + -(x_1167));
    let x_1170 : vec3<f32> = u_xlat3;
    let x_1172 : vec4<f32> = u_xlat2;
    let x_1174 : vec3<f32> = (-(x_1170) + vec3<f32>(x_1172.x, x_1172.y, x_1172.z));
    let x_1175 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1174.x, x_1174.y, x_1174.z, x_1175.w);
    let x_1177 : f32 = u_xlat15;
    let x_1179 : vec4<f32> = u_xlat2;
    let x_1182 : vec3<f32> = u_xlat3;
    let x_1183 : vec3<f32> = ((vec3<f32>(x_1177, x_1177, x_1177) * vec3<f32>(x_1179.x, x_1179.y, x_1179.z)) + x_1182);
    let x_1184 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1183.x, x_1183.y, x_1183.z, x_1184.w);
    let x_1186 : vec3<f32> = u_xlat0;
    let x_1188 : vec4<f32> = u_xlat2;
    let x_1190 : vec3<f32> = (-(x_1186) + vec3<f32>(x_1188.x, x_1188.y, x_1188.z));
    let x_1191 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1190.x, x_1190.y, x_1190.z, x_1191.w);
    let x_1194 : vec4<f32> = x_27.x_UserLut_Params;
    let x_1196 : vec4<f32> = u_xlat2;
    let x_1199 : vec3<f32> = u_xlat0;
    u_xlat0 = ((vec3<f32>(x_1194.w, x_1194.w, x_1194.w) * vec3<f32>(x_1196.x, x_1196.y, x_1196.z)) + x_1199);
    let x_1201 : vec3<f32> = u_xlat0;
    let x_1204 : vec3<f32> = (x_1201 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
    let x_1205 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1204.x, x_1204.y, x_1204.z, x_1205.w);
    let x_1207 : vec3<f32> = u_xlat0;
    u_xlat3 = (x_1207 + vec3<f32>(0.055f, 0.055f, 0.055f));
    let x_1211 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_1211 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
    let x_1215 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_1215));
    let x_1218 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_1218 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
    let x_1222 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_1222);
    let x_1226 : vec3<f32> = u_xlat0;
    let x_1228 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1226.x, x_1226.y, x_1226.z, x_1226.x));
    u_xlatb0 = vec3<bool>(x_1228.x, x_1228.y, x_1228.z);
    let x_1231 : bool = u_xlatb0.x;
    if (x_1231) {
      let x_1236 : f32 = u_xlat2.x;
      x_1232 = x_1236;
    } else {
      let x_1239 : f32 = u_xlat3.x;
      x_1232 = x_1239;
    }
    let x_1240 : f32 = x_1232;
    u_xlat1.x = x_1240;
    let x_1243 : bool = u_xlatb0.y;
    if (x_1243) {
      let x_1248 : f32 = u_xlat2.y;
      x_1244 = x_1248;
    } else {
      let x_1251 : f32 = u_xlat3.y;
      x_1244 = x_1251;
    }
    let x_1252 : f32 = x_1244;
    u_xlat1.y = x_1252;
    let x_1255 : bool = u_xlatb0.z;
    if (x_1255) {
      let x_1260 : f32 = u_xlat2.z;
      x_1256 = x_1260;
    } else {
      let x_1263 : f32 = u_xlat3.z;
      x_1256 = x_1263;
    }
    let x_1264 : f32 = x_1256;
    u_xlat1.z = x_1264;
  }
  let x_1266 : vec4<f32> = u_xlat1;
  let x_1269 : vec4<f32> = x_27.x_Lut_Params;
  u_xlat0 = (vec3<f32>(x_1266.z, x_1266.x, x_1266.y) * vec3<f32>(x_1269.z, x_1269.z, x_1269.z));
  let x_1273 : f32 = u_xlat0.x;
  u_xlat0.x = floor(x_1273);
  let x_1277 : vec4<f32> = x_27.x_Lut_Params;
  let x_1279 : vec2<f32> = (vec2<f32>(x_1277.x, x_1277.y) * vec2<f32>(0.5f, 0.5f));
  let x_1280 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1279.x, x_1279.y, x_1280.z, x_1280.w);
  let x_1282 : vec3<f32> = u_xlat0;
  let x_1285 : vec4<f32> = x_27.x_Lut_Params;
  let x_1288 : vec4<f32> = u_xlat1;
  let x_1290 : vec2<f32> = ((vec2<f32>(x_1282.y, x_1282.z) * vec2<f32>(x_1285.x, x_1285.y)) + vec2<f32>(x_1288.x, x_1288.y));
  let x_1291 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1291.x, x_1290.x, x_1290.y, x_1291.w);
  let x_1294 : f32 = u_xlat0.x;
  let x_1296 : f32 = x_27.x_Lut_Params.y;
  let x_1299 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_1294 * x_1296) + x_1299);
  let x_1306 : vec4<f32> = u_xlat2;
  let x_1308 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1306.x, x_1306.z), 0.0f);
  u_xlat5 = vec3<f32>(x_1308.x, x_1308.y, x_1308.z);
  let x_1311 : f32 = x_27.x_Lut_Params.y;
  u_xlat1.x = x_1311;
  u_xlat1.y = 0.0f;
  let x_1314 : vec4<f32> = u_xlat1;
  let x_1316 : vec4<f32> = u_xlat2;
  let x_1318 : vec2<f32> = (vec2<f32>(x_1314.x, x_1314.y) + vec2<f32>(x_1316.x, x_1316.z));
  let x_1319 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1318.x, x_1318.y, x_1319.z, x_1319.w);
  let x_1324 : vec4<f32> = u_xlat1;
  let x_1326 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1324.x, x_1324.y), 0.0f);
  let x_1327 : vec3<f32> = vec3<f32>(x_1326.x, x_1326.y, x_1326.z);
  let x_1328 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1327.x, x_1327.y, x_1328.z, x_1327.z);
  let x_1331 : f32 = u_xlat1.z;
  let x_1333 : f32 = x_27.x_Lut_Params.z;
  let x_1336 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1331 * x_1333) + -(x_1336));
  let x_1340 : vec3<f32> = u_xlat5;
  let x_1342 : vec4<f32> = u_xlat1;
  let x_1344 : vec3<f32> = (-(x_1340) + vec3<f32>(x_1342.x, x_1342.y, x_1342.w));
  let x_1345 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1344.x, x_1344.y, x_1344.z, x_1345.w);
  let x_1349 : vec3<f32> = u_xlat0;
  let x_1351 : vec4<f32> = u_xlat1;
  let x_1354 : vec3<f32> = u_xlat5;
  let x_1355 : vec3<f32> = ((vec3<f32>(x_1349.x, x_1349.x, x_1349.x) * vec3<f32>(x_1351.x, x_1351.y, x_1351.z)) + x_1354);
  let x_1356 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1355.x, x_1355.y, x_1355.z, x_1356.w);
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

