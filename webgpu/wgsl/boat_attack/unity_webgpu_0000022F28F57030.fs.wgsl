struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_Lut_Params : vec4<f32>,
  x_UserLut_Params : vec4<f32>,
  x_Vignette_Params1 : vec4<f32>,
  x_Vignette_Params2 : vec4<f32>,
  x_Grain_Params : vec2<f32>,
  @size(8)
  padding_1 : u32,
  x_Grain_TilingParams : vec4<f32>,
  x_Dithering_Params : vec4<f32>,
}

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_LinearClamp : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

@group(0) @binding(3) var x_UserLut : texture_2d<f32>;

@group(0) @binding(2) var x_InternalLut : texture_2d<f32>;

@group(0) @binding(1) var x_Grain_Texture : texture_2d<f32>;

@group(0) @binding(7) var sampler_LinearRepeat : sampler;

@group(0) @binding(4) var x_BlueNoise_Texture : texture_2d<f32>;

@group(0) @binding(6) var sampler_PointRepeat : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlatb15 : bool;
  var u_xlat1 : vec4<f32>;
  var u_xlat15 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat10 : vec2<f32>;
  var u_xlatb1 : bool;
  var u_xlatb5 : bool;
  var x_322 : f32;
  var x_331 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlatb10 : vec2<bool>;
  var u_xlat11 : vec2<f32>;
  var u_xlat16 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlatb8 : bool;
  var x_473 : f32;
  var u_xlatb16 : bool;
  var x_524 : f32;
  var x_551 : f32;
  var x_575 : f32;
  var x_586 : f32;
  var u_xlatb0 : vec3<bool>;
  var u_xlatb3 : vec3<bool>;
  var hlslcc_movcTemp : vec3<f32>;
  var x_975 : f32;
  var x_987 : f32;
  var x_999 : f32;
  var u_xlat4 : vec2<f32>;
  var x_1146 : f32;
  var x_1158 : f32;
  var x_1170 : f32;
  var x_1407 : f32;
  var x_1419 : f32;
  var x_1431 : f32;
  var x_1483 : f32;
  var x_1495 : f32;
  var x_1507 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_34 : f32 = x_27.x_GlobalMipBias.x;
  let x_35 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, x_23, x_34);
  u_xlat0 = vec3<f32>(x_35.x, x_35.y, x_35.z);
  let x_44 : f32 = x_27.x_Vignette_Params2.z;
  u_xlatb15 = (0.0f < x_44);
  let x_46 : bool = u_xlatb15;
  if (x_46) {
    let x_51 : vec2<f32> = vs_TEXCOORD0;
    let x_54 : vec4<f32> = x_27.x_Vignette_Params2;
    let x_57 : vec2<f32> = (x_51 + -(vec2<f32>(x_54.x, x_54.y)));
    let x_58 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_57.x, x_57.y, x_58.z, x_58.w);
    let x_60 : vec4<f32> = u_xlat1;
    let x_64 : vec4<f32> = x_27.x_Vignette_Params2;
    let x_66 : vec2<f32> = (abs(vec2<f32>(x_60.x, x_60.y)) * vec2<f32>(x_64.z, x_64.z));
    let x_67 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_67.x, x_66.x, x_66.y, x_67.w);
    let x_72 : f32 = u_xlat1.y;
    let x_76 : f32 = x_27.x_Vignette_Params1.w;
    u_xlat1.x = (x_72 * x_76);
    let x_80 : vec4<f32> = u_xlat1;
    let x_82 : vec4<f32> = u_xlat1;
    u_xlat15 = dot(vec2<f32>(x_80.x, x_80.z), vec2<f32>(x_82.x, x_82.z));
    let x_85 : f32 = u_xlat15;
    u_xlat15 = (-(x_85) + 1.0f);
    let x_89 : f32 = u_xlat15;
    u_xlat15 = max(x_89, 0.0f);
    let x_91 : f32 = u_xlat15;
    u_xlat15 = log2(x_91);
    let x_93 : f32 = u_xlat15;
    let x_95 : f32 = x_27.x_Vignette_Params2.w;
    u_xlat15 = (x_93 * x_95);
    let x_97 : f32 = u_xlat15;
    u_xlat15 = exp2(x_97);
    let x_100 : vec4<f32> = x_27.x_Vignette_Params1;
    let x_104 : vec3<f32> = (-(vec3<f32>(x_100.x, x_100.y, x_100.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_105 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_104.x, x_104.y, x_104.z, x_105.w);
    let x_107 : f32 = u_xlat15;
    let x_109 : vec4<f32> = u_xlat1;
    let x_113 : vec4<f32> = x_27.x_Vignette_Params1;
    let x_115 : vec3<f32> = ((vec3<f32>(x_107, x_107, x_107) * vec3<f32>(x_109.x, x_109.y, x_109.z)) + vec3<f32>(x_113.x, x_113.y, x_113.z));
    let x_116 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_115.x, x_115.y, x_115.z, x_116.w);
    let x_118 : vec3<f32> = u_xlat0;
    let x_119 : vec4<f32> = u_xlat1;
    u_xlat0 = (x_118 * vec3<f32>(x_119.x, x_119.y, x_119.z));
  }
  let x_122 : vec3<f32> = u_xlat0;
  let x_125 : vec4<f32> = x_27.x_Lut_Params;
  u_xlat0 = (x_122 * vec3<f32>(x_125.w, x_125.w, x_125.w));
  let x_133 : vec3<f32> = u_xlat0;
  u_xlat6.x = dot(vec3<f32>(0.439700991f, 0.382977992f, 0.177334994f), x_133);
  let x_140 : vec3<f32> = u_xlat0;
  u_xlat6.y = dot(vec3<f32>(0.089792296f, 0.813422978f, 0.096761599f), x_140);
  let x_147 : vec3<f32> = u_xlat0;
  u_xlat6.z = dot(vec3<f32>(0.017543999f, 0.111543998f, 0.870703995f), x_147);
  let x_151 : f32 = u_xlat6.y;
  let x_153 : f32 = u_xlat6.x;
  u_xlat0.x = min(x_151, x_153);
  let x_157 : f32 = u_xlat6.z;
  let x_159 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_157, x_159);
  let x_164 : f32 = u_xlat6.y;
  let x_166 : f32 = u_xlat6.x;
  u_xlat5.x = max(x_164, x_166);
  let x_170 : f32 = u_xlat6.z;
  let x_172 : f32 = u_xlat5.x;
  u_xlat0.y = max(x_170, x_172);
  let x_175 : vec3<f32> = u_xlat0;
  u_xlat0 = max(vec3<f32>(x_175.x, x_175.y, x_175.y), vec3<f32>(0.0001f, 0.0001f, 0.01f));
  let x_182 : f32 = u_xlat0.x;
  let x_185 : f32 = u_xlat0.y;
  u_xlat0.x = (-(x_182) + x_185);
  let x_189 : f32 = u_xlat0.x;
  let x_191 : f32 = u_xlat0.z;
  u_xlat0.x = (x_189 / x_191);
  let x_194 : vec3<f32> = u_xlat6;
  let x_197 : vec3<f32> = u_xlat6;
  u_xlat5 = (-(vec3<f32>(x_194.y, x_194.x, x_194.z)) + vec3<f32>(x_197.z, x_197.y, x_197.x));
  let x_200 : vec3<f32> = u_xlat5;
  let x_202 : vec3<f32> = u_xlat6;
  let x_204 : vec2<f32> = (vec2<f32>(x_200.x, x_200.y) * vec2<f32>(x_202.z, x_202.y));
  let x_205 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_204.x, x_204.y, x_205.z);
  let x_208 : f32 = u_xlat5.y;
  let x_210 : f32 = u_xlat5.x;
  u_xlat5.x = (x_208 + x_210);
  let x_214 : f32 = u_xlat6.x;
  let x_216 : f32 = u_xlat5.z;
  let x_219 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_214 * x_216) + x_219);
  let x_223 : f32 = u_xlat5.x;
  u_xlat5.x = max(x_223, 0.0f);
  let x_227 : f32 = u_xlat5.x;
  u_xlat5.x = sqrt(x_227);
  let x_233 : f32 = u_xlat6.y;
  let x_235 : f32 = u_xlat6.z;
  u_xlat10.x = (x_233 + x_235);
  let x_239 : f32 = u_xlat6.x;
  let x_241 : f32 = u_xlat10.x;
  u_xlat10.x = (x_239 + x_241);
  let x_245 : f32 = u_xlat5.x;
  let x_249 : f32 = u_xlat10.x;
  u_xlat5.x = ((x_245 * 1.75f) + x_249);
  let x_253 : f32 = u_xlat0.x;
  u_xlat15 = (x_253 + -0.400000006f);
  let x_256 : f32 = u_xlat15;
  u_xlat1.x = (x_256 * 2.5f);
  let x_261 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_261)) + 1.0f);
  let x_267 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_267, 0.0f);
  let x_270 : f32 = u_xlat15;
  u_xlatb15 = (x_270 >= 0.0f);
  let x_272 : bool = u_xlatb15;
  u_xlat15 = select(-1.0f, 1.0f, x_272);
  let x_276 : f32 = u_xlat1.x;
  let x_279 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_276) * x_279) + 1.0f);
  let x_283 : f32 = u_xlat15;
  let x_285 : f32 = u_xlat1.x;
  u_xlat5.z = ((x_283 * x_285) + 1.0f);
  let x_289 : vec3<f32> = u_xlat5;
  u_xlat10 = (vec2<f32>(x_289.x, x_289.z) * vec2<f32>(0.333333343f, 0.025f));
  let x_298 : f32 = u_xlat5.x;
  u_xlatb1 = (0.159999996f >= x_298);
  let x_302 : f32 = u_xlat5.x;
  u_xlatb5 = (x_302 >= 0.479999989f);
  let x_307 : f32 = u_xlat10.x;
  u_xlat10.x = (0.079999998f / x_307);
  let x_311 : f32 = u_xlat10.x;
  u_xlat10.x = (x_311 + -0.5f);
  let x_316 : f32 = u_xlat10.x;
  let x_318 : f32 = u_xlat10.y;
  u_xlat10.x = (x_316 * x_318);
  let x_321 : bool = u_xlatb5;
  if (x_321) {
    x_322 = 0.0f;
  } else {
    let x_327 : f32 = u_xlat10.x;
    x_322 = x_327;
  }
  let x_328 : f32 = x_322;
  u_xlat5.x = x_328;
  let x_330 : bool = u_xlatb1;
  if (x_330) {
    let x_335 : f32 = u_xlat10.y;
    x_331 = x_335;
  } else {
    let x_338 : f32 = u_xlat5.x;
    x_331 = x_338;
  }
  let x_339 : f32 = x_331;
  u_xlat5.x = x_339;
  let x_342 : f32 = u_xlat5.x;
  u_xlat5.x = (x_342 + 1.0f);
  let x_346 : vec3<f32> = u_xlat5;
  let x_348 : vec3<f32> = u_xlat6;
  let x_349 : vec3<f32> = (vec3<f32>(x_346.x, x_346.x, x_346.x) * x_348);
  let x_350 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_350.x, x_349.x, x_349.y, x_349.z);
  let x_355 : vec4<f32> = u_xlat2;
  let x_357 : vec4<f32> = u_xlat2;
  let x_360 : vec4<bool> = (vec4<f32>(x_355.z, x_355.w, x_355.z, x_355.w) == vec4<f32>(x_357.y, x_357.z, x_357.y, x_357.z));
  u_xlatb10 = vec2<bool>(x_360.x, x_360.y);
  let x_363 : bool = u_xlatb10.y;
  let x_365 : bool = u_xlatb10.x;
  u_xlatb10.x = (x_363 & x_365);
  let x_369 : f32 = u_xlat6.y;
  let x_371 : f32 = u_xlat5.x;
  let x_374 : f32 = u_xlat2.w;
  u_xlat15 = ((x_369 * x_371) + -(x_374));
  let x_377 : f32 = u_xlat15;
  u_xlat15 = (x_377 * 1.732050776f);
  let x_381 : f32 = u_xlat2.y;
  let x_385 : f32 = u_xlat2.z;
  u_xlat1.x = ((x_381 * 2.0f) + -(x_385));
  let x_390 : f32 = u_xlat6.z;
  let x_393 : f32 = u_xlat5.x;
  let x_396 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_390) * x_393) + x_396);
  let x_400 : f32 = u_xlat15;
  let x_403 : f32 = u_xlat1.x;
  u_xlat11.x = min(abs(x_400), abs(x_403));
  let x_408 : f32 = u_xlat15;
  let x_411 : f32 = u_xlat1.x;
  u_xlat16 = max(abs(x_408), abs(x_411));
  let x_414 : f32 = u_xlat16;
  u_xlat16 = (1.0f / x_414);
  let x_416 : f32 = u_xlat16;
  let x_418 : f32 = u_xlat11.x;
  u_xlat11.x = (x_416 * x_418);
  let x_422 : f32 = u_xlat11.x;
  let x_424 : f32 = u_xlat11.x;
  u_xlat16 = (x_422 * x_424);
  let x_427 : f32 = u_xlat16;
  u_xlat3.x = ((x_427 * 0.0208351f) + -0.085133001f);
  let x_433 : f32 = u_xlat16;
  let x_435 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_433 * x_435) + 0.180141002f);
  let x_440 : f32 = u_xlat16;
  let x_442 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_440 * x_442) + -0.330299497f);
  let x_447 : f32 = u_xlat16;
  let x_449 : f32 = u_xlat3.x;
  u_xlat16 = ((x_447 * x_449) + 0.999866009f);
  let x_453 : f32 = u_xlat16;
  let x_455 : f32 = u_xlat11.x;
  u_xlat3.x = (x_453 * x_455);
  let x_460 : f32 = u_xlat1.x;
  let x_462 : f32 = u_xlat15;
  u_xlatb8 = (abs(x_460) < abs(x_462));
  let x_466 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_466 * -2.0f) + 1.570796371f);
  let x_472 : bool = u_xlatb8;
  if (x_472) {
    let x_477 : f32 = u_xlat3.x;
    x_473 = x_477;
  } else {
    x_473 = 0.0f;
  }
  let x_479 : f32 = x_473;
  u_xlat3.x = x_479;
  let x_482 : f32 = u_xlat11.x;
  let x_483 : f32 = u_xlat16;
  let x_486 : f32 = u_xlat3.x;
  u_xlat11.x = ((x_482 * x_483) + x_486);
  let x_491 : f32 = u_xlat1.x;
  let x_493 : f32 = u_xlat1.x;
  u_xlatb16 = (x_491 < -(x_493));
  let x_496 : bool = u_xlatb16;
  u_xlat16 = select(0.0f, -3.141592741f, x_496);
  let x_499 : f32 = u_xlat16;
  let x_501 : f32 = u_xlat11.x;
  u_xlat11.x = (x_499 + x_501);
  let x_504 : f32 = u_xlat15;
  let x_506 : f32 = u_xlat1.x;
  u_xlat16 = min(x_504, x_506);
  let x_508 : f32 = u_xlat15;
  let x_510 : f32 = u_xlat1.x;
  u_xlat15 = max(x_508, x_510);
  let x_512 : f32 = u_xlat16;
  let x_513 : f32 = u_xlat16;
  u_xlatb1 = (x_512 < -(x_513));
  let x_516 : f32 = u_xlat15;
  let x_517 : f32 = u_xlat15;
  u_xlatb15 = (x_516 >= -(x_517));
  let x_520 : bool = u_xlatb15;
  let x_521 : bool = u_xlatb1;
  u_xlatb15 = (x_520 & x_521);
  let x_523 : bool = u_xlatb15;
  if (x_523) {
    let x_528 : f32 = u_xlat11.x;
    x_524 = -(x_528);
  } else {
    let x_532 : f32 = u_xlat11.x;
    x_524 = x_532;
  }
  let x_533 : f32 = x_524;
  u_xlat15 = x_533;
  let x_534 : f32 = u_xlat15;
  u_xlat15 = (x_534 * 57.295780182f);
  let x_538 : bool = u_xlatb10.x;
  let x_539 : f32 = u_xlat15;
  u_xlat10.x = select(x_539, 0.0f, x_538);
  let x_543 : f32 = u_xlat10.x;
  u_xlatb15 = (x_543 < 0.0f);
  let x_546 : f32 = u_xlat10.x;
  u_xlat1.x = (x_546 + 360.0f);
  let x_550 : bool = u_xlatb15;
  if (x_550) {
    let x_555 : f32 = u_xlat1.x;
    x_551 = x_555;
  } else {
    let x_558 : f32 = u_xlat10.x;
    x_551 = x_558;
  }
  let x_559 : f32 = x_551;
  u_xlat10.x = x_559;
  let x_562 : f32 = u_xlat10.x;
  u_xlatb15 = (x_562 < -180.0f);
  let x_567 : f32 = u_xlat10.x;
  u_xlatb1 = (180.0f < x_567);
  let x_569 : vec2<f32> = u_xlat10;
  u_xlat11 = (vec2<f32>(x_569.x, x_569.x) + vec2<f32>(360.0f, -360.0f));
  let x_574 : bool = u_xlatb1;
  if (x_574) {
    let x_579 : f32 = u_xlat11.y;
    x_575 = x_579;
  } else {
    let x_582 : f32 = u_xlat10.x;
    x_575 = x_582;
  }
  let x_583 : f32 = x_575;
  u_xlat10.x = x_583;
  let x_585 : bool = u_xlatb15;
  if (x_585) {
    let x_590 : f32 = u_xlat11.x;
    x_586 = x_590;
  } else {
    let x_593 : f32 = u_xlat10.x;
    x_586 = x_593;
  }
  let x_594 : f32 = x_586;
  u_xlat10.x = x_594;
  let x_597 : f32 = u_xlat10.x;
  u_xlat10.x = (x_597 * 0.014814815f);
  let x_602 : f32 = u_xlat10.x;
  u_xlat10.x = (-(abs(x_602)) + 1.0f);
  let x_608 : f32 = u_xlat10.x;
  u_xlat10.x = max(x_608, 0.0f);
  let x_612 : f32 = u_xlat10.x;
  u_xlat15 = ((x_612 * -2.0f) + 3.0f);
  let x_617 : f32 = u_xlat10.x;
  let x_619 : f32 = u_xlat10.x;
  u_xlat10.x = (x_617 * x_619);
  let x_623 : f32 = u_xlat10.x;
  let x_624 : f32 = u_xlat15;
  u_xlat10.x = (x_623 * x_624);
  let x_628 : f32 = u_xlat10.x;
  let x_630 : f32 = u_xlat10.x;
  u_xlat10.x = (x_628 * x_630);
  let x_634 : f32 = u_xlat0.x;
  let x_636 : f32 = u_xlat10.x;
  u_xlat0.x = (x_634 * x_636);
  let x_640 : f32 = u_xlat6.x;
  let x_643 : f32 = u_xlat5.x;
  u_xlat5.x = ((-(x_640) * x_643) + 0.029999999f);
  let x_649 : f32 = u_xlat5.x;
  let x_651 : f32 = u_xlat0.x;
  u_xlat0.x = (x_649 * x_651);
  let x_655 : f32 = u_xlat0.x;
  let x_659 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_655 * 0.180000007f) + x_659);
  let x_666 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(1.451439261f, -0.236510754f, -0.214928567f), vec3<f32>(x_666.x, x_666.z, x_666.w));
  let x_674 : vec4<f32> = u_xlat2;
  u_xlat0.y = dot(vec3<f32>(-0.076553777f, 1.176229715f, -0.099675924f), vec3<f32>(x_674.x, x_674.z, x_674.w));
  let x_682 : vec4<f32> = u_xlat2;
  u_xlat0.z = dot(vec3<f32>(0.008316148f, -0.00603244966f, 0.997716308f), vec3<f32>(x_682.x, x_682.z, x_682.w));
  let x_686 : vec3<f32> = u_xlat0;
  u_xlat0 = max(x_686, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_689 : vec3<f32> = u_xlat0;
  u_xlat15 = dot(x_689, vec3<f32>(0.272228986f, 0.674081981f, 0.053689498f));
  let x_695 : f32 = u_xlat15;
  let x_698 : vec3<f32> = u_xlat0;
  u_xlat0 = (-(vec3<f32>(x_695, x_695, x_695)) + x_698);
  let x_700 : vec3<f32> = u_xlat0;
  let x_704 : f32 = u_xlat15;
  u_xlat0 = ((x_700 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f)) + vec3<f32>(x_704, x_704, x_704));
  let x_707 : vec3<f32> = u_xlat0;
  let x_710 : vec3<f32> = (x_707 + vec3<f32>(0.024578599f, 0.024578599f, 0.024578599f));
  let x_711 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_710.x, x_710.y, x_710.z, x_711.w);
  let x_713 : vec3<f32> = u_xlat0;
  let x_714 : vec4<f32> = u_xlat1;
  let x_719 : vec3<f32> = ((x_713 * vec3<f32>(x_714.x, x_714.y, x_714.z)) + vec3<f32>(-0.000090537f, -0.000090537f, -0.000090537f));
  let x_720 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_719.x, x_719.y, x_719.z, x_720.w);
  let x_722 : vec3<f32> = u_xlat0;
  let x_728 : vec3<f32> = ((x_722 * vec3<f32>(0.983729005f, 0.983729005f, 0.983729005f)) + vec3<f32>(0.432951003f, 0.432951003f, 0.432951003f));
  let x_729 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_728.x, x_728.y, x_728.z, x_729.w);
  let x_731 : vec3<f32> = u_xlat0;
  let x_732 : vec4<f32> = u_xlat2;
  u_xlat0 = ((x_731 * vec3<f32>(x_732.x, x_732.y, x_732.z)) + vec3<f32>(0.238080993f, 0.238080993f, 0.238080993f));
  let x_738 : vec4<f32> = u_xlat1;
  let x_740 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_738.x, x_738.y, x_738.z) / x_740);
  let x_746 : vec3<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(0.662454188f, 0.134004205f, 0.156187683f), x_746);
  let x_753 : vec3<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(0.272228718f, 0.674081743f, 0.053689517f), x_753);
  let x_760 : vec3<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(-0.00557464967f, 0.0040607336f, 1.010339141f), x_760);
  let x_763 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(x_763.x, x_763.y, x_763.z), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_768 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_768, 0.0001f);
  let x_771 : vec4<f32> = u_xlat1;
  let x_773 : vec3<f32> = u_xlat0;
  let x_775 : vec2<f32> = (vec2<f32>(x_771.x, x_771.y) / vec2<f32>(x_773.x, x_773.x));
  let x_776 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_775.x, x_775.y, x_776.z);
  let x_779 : f32 = u_xlat1.y;
  u_xlat15 = max(x_779, 0.0f);
  let x_781 : f32 = u_xlat15;
  u_xlat15 = min(x_781, 65504.0f);
  let x_784 : f32 = u_xlat15;
  u_xlat15 = log2(x_784);
  let x_786 : f32 = u_xlat15;
  u_xlat15 = (x_786 * 0.981100023f);
  let x_789 : f32 = u_xlat15;
  u_xlat1.y = exp2(x_789);
  let x_793 : f32 = u_xlat0.y;
  u_xlat15 = max(x_793, 0.0001f);
  let x_796 : f32 = u_xlat1.y;
  let x_797 : f32 = u_xlat15;
  u_xlat15 = (x_796 / x_797);
  let x_800 : f32 = u_xlat0.x;
  u_xlat16 = (-(x_800) + 1.0f);
  let x_804 : f32 = u_xlat0.y;
  let x_806 : f32 = u_xlat16;
  u_xlat0.z = (-(x_804) + x_806);
  let x_809 : f32 = u_xlat15;
  let x_811 : vec3<f32> = u_xlat0;
  let x_813 : vec2<f32> = (vec2<f32>(x_809, x_809) * vec2<f32>(x_811.x, x_811.z));
  let x_814 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_813.x, x_814.y, x_813.y, x_814.w);
  let x_820 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(1.641023397f, -0.324803293f, -0.236424699f), vec3<f32>(x_820.x, x_820.y, x_820.z));
  let x_828 : vec4<f32> = u_xlat1;
  u_xlat0.y = dot(vec3<f32>(-0.663662851f, 1.61533165f, 0.016756348f), vec3<f32>(x_828.x, x_828.y, x_828.z));
  let x_836 : vec4<f32> = u_xlat1;
  u_xlat0.z = dot(vec3<f32>(0.011721894f, -0.008284442f, 0.988394856f), vec3<f32>(x_836.x, x_836.y, x_836.z));
  let x_840 : vec3<f32> = u_xlat0;
  u_xlat15 = dot(x_840, vec3<f32>(0.272228986f, 0.674081981f, 0.053689498f));
  let x_842 : f32 = u_xlat15;
  let x_845 : vec3<f32> = u_xlat0;
  u_xlat0 = (-(vec3<f32>(x_842, x_842, x_842)) + x_845);
  let x_847 : vec3<f32> = u_xlat0;
  let x_851 : f32 = u_xlat15;
  u_xlat0 = ((x_847 * vec3<f32>(0.930000007f, 0.930000007f, 0.930000007f)) + vec3<f32>(x_851, x_851, x_851));
  let x_854 : vec3<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(0.662454188f, 0.134004205f, 0.156187683f), x_854);
  let x_857 : vec3<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(0.272228718f, 0.674081743f, 0.053689517f), x_857);
  let x_860 : vec3<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(-0.00557464967f, 0.0040607336f, 1.010339141f), x_860);
  let x_867 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(0.987223983f, -0.00611327f, 0.015953301f), vec3<f32>(x_867.x, x_867.y, x_867.z));
  let x_875 : vec4<f32> = u_xlat1;
  u_xlat0.y = dot(vec3<f32>(-0.00759836f, 1.001860023f, 0.0053302f), vec3<f32>(x_875.x, x_875.y, x_875.z));
  let x_883 : vec4<f32> = u_xlat1;
  u_xlat0.z = dot(vec3<f32>(0.00307257f, -0.00509595f, 1.081680059f), vec3<f32>(x_883.x, x_883.y, x_883.z));
  let x_891 : vec3<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(3.240969896f, -1.537383199f, -0.498610765f), x_891);
  let x_895 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_895, 0.0f, 1.0f);
  let x_902 : vec3<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(-0.969243646f, 1.875967503f, 0.041555058f), x_902);
  let x_906 : f32 = u_xlat1.y;
  u_xlat1.y = clamp(x_906, 0.0f, 1.0f);
  let x_913 : vec3<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(0.05563008f, -0.203976959f, 1.05697155f), x_913);
  let x_917 : f32 = u_xlat1.z;
  u_xlat1.z = clamp(x_917, 0.0f, 1.0f);
  let x_925 : f32 = x_27.x_UserLut_Params.w;
  u_xlatb0.x = (0.0f < x_925);
  let x_929 : bool = u_xlatb0.x;
  if (x_929) {
    let x_932 : vec4<f32> = u_xlat1;
    u_xlat0 = (vec3<f32>(x_932.x, x_932.y, x_932.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
    let x_937 : vec4<f32> = u_xlat1;
    let x_939 : vec3<f32> = log2(vec3<f32>(x_937.x, x_937.y, x_937.z));
    let x_940 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_939.x, x_939.y, x_939.z, x_940.w);
    let x_942 : vec4<f32> = u_xlat2;
    let x_946 : vec3<f32> = (vec3<f32>(x_942.x, x_942.y, x_942.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
    let x_947 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_946.x, x_946.y, x_946.z, x_947.w);
    let x_949 : vec4<f32> = u_xlat2;
    let x_951 : vec3<f32> = exp2(vec3<f32>(x_949.x, x_949.y, x_949.z));
    let x_952 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_951.x, x_951.y, x_951.z, x_952.w);
    let x_954 : vec4<f32> = u_xlat2;
    let x_961 : vec3<f32> = ((vec3<f32>(x_954.x, x_954.y, x_954.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
    let x_962 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_961.x, x_961.y, x_961.z, x_962.w);
    let x_967 : vec4<f32> = u_xlat1;
    let x_969 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_967.x, x_967.y, x_967.z, x_967.x));
    u_xlatb3 = vec3<bool>(x_969.x, x_969.y, x_969.z);
    let x_972 : vec3<f32> = u_xlat0;
    hlslcc_movcTemp = x_972;
    let x_974 : bool = u_xlatb3.x;
    if (x_974) {
      let x_979 : f32 = u_xlat0.x;
      x_975 = x_979;
    } else {
      let x_982 : f32 = u_xlat2.x;
      x_975 = x_982;
    }
    let x_983 : f32 = x_975;
    hlslcc_movcTemp.x = x_983;
    let x_986 : bool = u_xlatb3.y;
    if (x_986) {
      let x_991 : f32 = u_xlat0.y;
      x_987 = x_991;
    } else {
      let x_994 : f32 = u_xlat2.y;
      x_987 = x_994;
    }
    let x_995 : f32 = x_987;
    hlslcc_movcTemp.y = x_995;
    let x_998 : bool = u_xlatb3.z;
    if (x_998) {
      let x_1003 : f32 = u_xlat0.z;
      x_999 = x_1003;
    } else {
      let x_1006 : f32 = u_xlat2.z;
      x_999 = x_1006;
    }
    let x_1007 : f32 = x_999;
    hlslcc_movcTemp.z = x_1007;
    let x_1009 : vec3<f32> = hlslcc_movcTemp;
    u_xlat0 = x_1009;
    let x_1010 : vec3<f32> = u_xlat0;
    let x_1013 : vec4<f32> = x_27.x_UserLut_Params;
    let x_1015 : vec3<f32> = (vec3<f32>(x_1010.z, x_1010.x, x_1010.y) * vec3<f32>(x_1013.z, x_1013.z, x_1013.z));
    let x_1016 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1015.x, x_1015.y, x_1015.z, x_1016.w);
    let x_1019 : f32 = u_xlat2.x;
    u_xlat15 = floor(x_1019);
    let x_1022 : vec4<f32> = x_27.x_UserLut_Params;
    let x_1026 : vec2<f32> = (vec2<f32>(x_1022.x, x_1022.y) * vec2<f32>(0.5f, 0.5f));
    let x_1027 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1026.x, x_1027.y, x_1027.z, x_1026.y);
    let x_1029 : vec4<f32> = u_xlat2;
    let x_1032 : vec4<f32> = x_27.x_UserLut_Params;
    let x_1035 : vec4<f32> = u_xlat2;
    let x_1037 : vec2<f32> = ((vec2<f32>(x_1029.y, x_1029.z) * vec2<f32>(x_1032.x, x_1032.y)) + vec2<f32>(x_1035.x, x_1035.w));
    let x_1038 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1038.x, x_1037.x, x_1037.y, x_1038.w);
    let x_1040 : f32 = u_xlat15;
    let x_1042 : f32 = x_27.x_UserLut_Params.y;
    let x_1045 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_1040 * x_1042) + x_1045);
    let x_1052 : vec4<f32> = u_xlat2;
    let x_1054 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1052.x, x_1052.z), 0.0f);
    u_xlat3 = vec3<f32>(x_1054.x, x_1054.y, x_1054.z);
    let x_1058 : f32 = x_27.x_UserLut_Params.y;
    u_xlat4.x = x_1058;
    u_xlat4.y = 0.0f;
    let x_1061 : vec4<f32> = u_xlat2;
    let x_1063 : vec2<f32> = u_xlat4;
    let x_1064 : vec2<f32> = (vec2<f32>(x_1061.x, x_1061.z) + x_1063);
    let x_1065 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1064.x, x_1064.y, x_1065.z, x_1065.w);
    let x_1070 : vec4<f32> = u_xlat2;
    let x_1072 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1070.x, x_1070.y), 0.0f);
    let x_1073 : vec3<f32> = vec3<f32>(x_1072.x, x_1072.y, x_1072.z);
    let x_1074 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1073.x, x_1073.y, x_1073.z, x_1074.w);
    let x_1077 : f32 = u_xlat0.z;
    let x_1079 : f32 = x_27.x_UserLut_Params.z;
    let x_1081 : f32 = u_xlat15;
    u_xlat15 = ((x_1077 * x_1079) + -(x_1081));
    let x_1084 : vec3<f32> = u_xlat3;
    let x_1086 : vec4<f32> = u_xlat2;
    let x_1088 : vec3<f32> = (-(x_1084) + vec3<f32>(x_1086.x, x_1086.y, x_1086.z));
    let x_1089 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1088.x, x_1088.y, x_1088.z, x_1089.w);
    let x_1091 : f32 = u_xlat15;
    let x_1093 : vec4<f32> = u_xlat2;
    let x_1096 : vec3<f32> = u_xlat3;
    let x_1097 : vec3<f32> = ((vec3<f32>(x_1091, x_1091, x_1091) * vec3<f32>(x_1093.x, x_1093.y, x_1093.z)) + x_1096);
    let x_1098 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1097.x, x_1097.y, x_1097.z, x_1098.w);
    let x_1100 : vec3<f32> = u_xlat0;
    let x_1102 : vec4<f32> = u_xlat2;
    let x_1104 : vec3<f32> = (-(x_1100) + vec3<f32>(x_1102.x, x_1102.y, x_1102.z));
    let x_1105 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1104.x, x_1104.y, x_1104.z, x_1105.w);
    let x_1108 : vec4<f32> = x_27.x_UserLut_Params;
    let x_1110 : vec4<f32> = u_xlat2;
    let x_1113 : vec3<f32> = u_xlat0;
    u_xlat0 = ((vec3<f32>(x_1108.w, x_1108.w, x_1108.w) * vec3<f32>(x_1110.x, x_1110.y, x_1110.z)) + x_1113);
    let x_1115 : vec3<f32> = u_xlat0;
    let x_1118 : vec3<f32> = (x_1115 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
    let x_1119 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1118.x, x_1118.y, x_1118.z, x_1119.w);
    let x_1121 : vec3<f32> = u_xlat0;
    u_xlat3 = (x_1121 + vec3<f32>(0.055f, 0.055f, 0.055f));
    let x_1125 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_1125 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
    let x_1129 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_1129));
    let x_1132 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_1132 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
    let x_1136 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_1136);
    let x_1140 : vec3<f32> = u_xlat0;
    let x_1142 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1140.x, x_1140.y, x_1140.z, x_1140.x));
    u_xlatb0 = vec3<bool>(x_1142.x, x_1142.y, x_1142.z);
    let x_1145 : bool = u_xlatb0.x;
    if (x_1145) {
      let x_1150 : f32 = u_xlat2.x;
      x_1146 = x_1150;
    } else {
      let x_1153 : f32 = u_xlat3.x;
      x_1146 = x_1153;
    }
    let x_1154 : f32 = x_1146;
    u_xlat1.x = x_1154;
    let x_1157 : bool = u_xlatb0.y;
    if (x_1157) {
      let x_1162 : f32 = u_xlat2.y;
      x_1158 = x_1162;
    } else {
      let x_1165 : f32 = u_xlat3.y;
      x_1158 = x_1165;
    }
    let x_1166 : f32 = x_1158;
    u_xlat1.y = x_1166;
    let x_1169 : bool = u_xlatb0.z;
    if (x_1169) {
      let x_1174 : f32 = u_xlat2.z;
      x_1170 = x_1174;
    } else {
      let x_1177 : f32 = u_xlat3.z;
      x_1170 = x_1177;
    }
    let x_1178 : f32 = x_1170;
    u_xlat1.z = x_1178;
  }
  let x_1180 : vec4<f32> = u_xlat1;
  let x_1183 : vec4<f32> = x_27.x_Lut_Params;
  u_xlat0 = (vec3<f32>(x_1180.z, x_1180.x, x_1180.y) * vec3<f32>(x_1183.z, x_1183.z, x_1183.z));
  let x_1187 : f32 = u_xlat0.x;
  u_xlat0.x = floor(x_1187);
  let x_1191 : vec4<f32> = x_27.x_Lut_Params;
  let x_1193 : vec2<f32> = (vec2<f32>(x_1191.x, x_1191.y) * vec2<f32>(0.5f, 0.5f));
  let x_1194 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1193.x, x_1193.y, x_1194.z, x_1194.w);
  let x_1196 : vec3<f32> = u_xlat0;
  let x_1199 : vec4<f32> = x_27.x_Lut_Params;
  let x_1202 : vec4<f32> = u_xlat1;
  let x_1204 : vec2<f32> = ((vec2<f32>(x_1196.y, x_1196.z) * vec2<f32>(x_1199.x, x_1199.y)) + vec2<f32>(x_1202.x, x_1202.y));
  let x_1205 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1205.x, x_1204.x, x_1204.y, x_1205.w);
  let x_1208 : f32 = u_xlat0.x;
  let x_1210 : f32 = x_27.x_Lut_Params.y;
  let x_1213 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_1208 * x_1210) + x_1213);
  let x_1220 : vec4<f32> = u_xlat2;
  let x_1222 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1220.x, x_1220.z), 0.0f);
  u_xlat5 = vec3<f32>(x_1222.x, x_1222.y, x_1222.z);
  let x_1225 : f32 = x_27.x_Lut_Params.y;
  u_xlat1.x = x_1225;
  u_xlat1.y = 0.0f;
  let x_1228 : vec4<f32> = u_xlat1;
  let x_1230 : vec4<f32> = u_xlat2;
  let x_1232 : vec2<f32> = (vec2<f32>(x_1228.x, x_1228.y) + vec2<f32>(x_1230.x, x_1230.z));
  let x_1233 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1232.x, x_1232.y, x_1233.z, x_1233.w);
  let x_1238 : vec4<f32> = u_xlat1;
  let x_1240 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1238.x, x_1238.y), 0.0f);
  let x_1241 : vec3<f32> = vec3<f32>(x_1240.x, x_1240.y, x_1240.z);
  let x_1242 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1241.x, x_1241.y, x_1242.z, x_1241.z);
  let x_1245 : f32 = u_xlat1.z;
  let x_1247 : f32 = x_27.x_Lut_Params.z;
  let x_1250 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1245 * x_1247) + -(x_1250));
  let x_1254 : vec3<f32> = u_xlat5;
  let x_1256 : vec4<f32> = u_xlat1;
  let x_1258 : vec3<f32> = (-(x_1254) + vec3<f32>(x_1256.x, x_1256.y, x_1256.w));
  let x_1259 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1258.x, x_1258.y, x_1258.z, x_1259.w);
  let x_1261 : vec3<f32> = u_xlat0;
  let x_1263 : vec4<f32> = u_xlat1;
  let x_1266 : vec3<f32> = u_xlat5;
  u_xlat0 = ((vec3<f32>(x_1261.x, x_1261.x, x_1261.x) * vec3<f32>(x_1263.x, x_1263.y, x_1263.z)) + x_1266);
  let x_1268 : vec2<f32> = vs_TEXCOORD0;
  let x_1271 : vec4<f32> = x_27.x_Grain_TilingParams;
  let x_1275 : vec4<f32> = x_27.x_Grain_TilingParams;
  let x_1277 : vec2<f32> = ((x_1268 * vec2<f32>(x_1271.x, x_1271.y)) + vec2<f32>(x_1275.z, x_1275.w));
  let x_1278 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1277.x, x_1277.y, x_1278.z, x_1278.w);
  let x_1285 : vec4<f32> = u_xlat1;
  let x_1288 : f32 = x_27.x_GlobalMipBias.x;
  let x_1289 : vec4<f32> = textureSampleBias(x_Grain_Texture, sampler_LinearRepeat, vec2<f32>(x_1285.x, x_1285.y), x_1288);
  u_xlat15 = x_1289.w;
  let x_1291 : f32 = u_xlat15;
  u_xlat15 = (x_1291 + -0.5f);
  let x_1293 : f32 = u_xlat15;
  let x_1294 : f32 = u_xlat15;
  u_xlat15 = (x_1293 + x_1294);
  let x_1296 : vec3<f32> = u_xlat0;
  u_xlat1.x = dot(x_1296, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_1304 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_1304);
  let x_1309 : f32 = x_27.x_Grain_Params.y;
  let x_1311 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1309 * -(x_1311)) + 1.0f);
  let x_1316 : f32 = u_xlat15;
  let x_1318 : vec3<f32> = u_xlat0;
  u_xlat6 = (vec3<f32>(x_1316, x_1316, x_1316) * x_1318);
  let x_1320 : vec3<f32> = u_xlat6;
  let x_1323 : vec2<f32> = x_27.x_Grain_Params;
  u_xlat6 = (x_1320 * vec3<f32>(x_1323.x, x_1323.x, x_1323.x));
  let x_1326 : vec3<f32> = u_xlat6;
  let x_1327 : vec4<f32> = u_xlat1;
  let x_1330 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_1326 * vec3<f32>(x_1327.x, x_1327.x, x_1327.x)) + x_1330);
  let x_1332 : vec2<f32> = vs_TEXCOORD0;
  let x_1335 : vec4<f32> = x_27.x_Dithering_Params;
  let x_1339 : vec4<f32> = x_27.x_Dithering_Params;
  let x_1341 : vec2<f32> = ((x_1332 * vec2<f32>(x_1335.x, x_1335.y)) + vec2<f32>(x_1339.z, x_1339.w));
  let x_1342 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1341.x, x_1341.y, x_1342.z, x_1342.w);
  let x_1349 : vec4<f32> = u_xlat1;
  let x_1352 : f32 = x_27.x_GlobalMipBias.x;
  let x_1353 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_1349.x, x_1349.y), x_1352);
  u_xlat15 = x_1353.w;
  let x_1355 : f32 = u_xlat15;
  u_xlat15 = ((x_1355 * 2.0f) + -1.0f);
  let x_1358 : f32 = u_xlat15;
  u_xlatb1 = (x_1358 >= 0.0f);
  let x_1360 : bool = u_xlatb1;
  u_xlat1.x = select(-1.0f, 1.0f, x_1360);
  let x_1363 : f32 = u_xlat15;
  u_xlat15 = (-(abs(x_1363)) + 1.0f);
  let x_1367 : f32 = u_xlat15;
  u_xlat15 = sqrt(x_1367);
  let x_1369 : f32 = u_xlat15;
  u_xlat15 = (-(x_1369) + 1.0f);
  let x_1372 : f32 = u_xlat15;
  let x_1374 : f32 = u_xlat1.x;
  u_xlat15 = (x_1372 * x_1374);
  let x_1376 : vec3<f32> = u_xlat0;
  let x_1377 : vec3<f32> = (x_1376 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1378 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1377.x, x_1377.y, x_1377.z, x_1378.w);
  let x_1380 : vec3<f32> = u_xlat0;
  let x_1382 : vec3<f32> = log2(abs(x_1380));
  let x_1383 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1382.x, x_1382.y, x_1382.z, x_1383.w);
  let x_1385 : vec4<f32> = u_xlat2;
  let x_1387 : vec3<f32> = (vec3<f32>(x_1385.x, x_1385.y, x_1385.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1388 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1387.x, x_1387.y, x_1387.z, x_1388.w);
  let x_1390 : vec4<f32> = u_xlat2;
  let x_1392 : vec3<f32> = exp2(vec3<f32>(x_1390.x, x_1390.y, x_1390.z));
  let x_1393 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1392.x, x_1392.y, x_1392.z, x_1393.w);
  let x_1395 : vec4<f32> = u_xlat2;
  let x_1398 : vec3<f32> = ((vec3<f32>(x_1395.x, x_1395.y, x_1395.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1399 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1398.x, x_1398.y, x_1398.z, x_1399.w);
  let x_1401 : vec3<f32> = u_xlat0;
  let x_1403 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1401.x, x_1401.y, x_1401.z, x_1401.x));
  u_xlatb0 = vec3<bool>(x_1403.x, x_1403.y, x_1403.z);
  let x_1406 : bool = u_xlatb0.x;
  if (x_1406) {
    let x_1411 : f32 = u_xlat1.x;
    x_1407 = x_1411;
  } else {
    let x_1414 : f32 = u_xlat2.x;
    x_1407 = x_1414;
  }
  let x_1415 : f32 = x_1407;
  u_xlat0.x = x_1415;
  let x_1418 : bool = u_xlatb0.y;
  if (x_1418) {
    let x_1423 : f32 = u_xlat1.y;
    x_1419 = x_1423;
  } else {
    let x_1426 : f32 = u_xlat2.y;
    x_1419 = x_1426;
  }
  let x_1427 : f32 = x_1419;
  u_xlat0.y = x_1427;
  let x_1430 : bool = u_xlatb0.z;
  if (x_1430) {
    let x_1435 : f32 = u_xlat1.z;
    x_1431 = x_1435;
  } else {
    let x_1438 : f32 = u_xlat2.z;
    x_1431 = x_1438;
  }
  let x_1439 : f32 = x_1431;
  u_xlat0.z = x_1439;
  let x_1441 : f32 = u_xlat15;
  let x_1446 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1441, x_1441, x_1441) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + x_1446);
  let x_1448 : vec3<f32> = u_xlat0;
  let x_1449 : vec3<f32> = (x_1448 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1450 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1449.x, x_1449.y, x_1449.z, x_1450.w);
  let x_1452 : vec3<f32> = u_xlat0;
  let x_1453 : vec3<f32> = (x_1452 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1454 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1453.x, x_1453.y, x_1453.z, x_1454.w);
  let x_1456 : vec4<f32> = u_xlat2;
  let x_1458 : vec3<f32> = (vec3<f32>(x_1456.x, x_1456.y, x_1456.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1459 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1458.x, x_1458.y, x_1458.z, x_1459.w);
  let x_1461 : vec4<f32> = u_xlat2;
  let x_1464 : vec3<f32> = log2(abs(vec3<f32>(x_1461.x, x_1461.y, x_1461.z)));
  let x_1465 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1464.x, x_1464.y, x_1464.z, x_1465.w);
  let x_1467 : vec4<f32> = u_xlat2;
  let x_1469 : vec3<f32> = (vec3<f32>(x_1467.x, x_1467.y, x_1467.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1470 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1469.x, x_1469.y, x_1469.z, x_1470.w);
  let x_1472 : vec4<f32> = u_xlat2;
  let x_1474 : vec3<f32> = exp2(vec3<f32>(x_1472.x, x_1472.y, x_1472.z));
  let x_1475 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1474.x, x_1474.y, x_1474.z, x_1475.w);
  let x_1477 : vec3<f32> = u_xlat0;
  let x_1479 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1477.x, x_1477.y, x_1477.z, x_1477.x));
  u_xlatb0 = vec3<bool>(x_1479.x, x_1479.y, x_1479.z);
  let x_1482 : bool = u_xlatb0.x;
  if (x_1482) {
    let x_1487 : f32 = u_xlat1.x;
    x_1483 = x_1487;
  } else {
    let x_1490 : f32 = u_xlat2.x;
    x_1483 = x_1490;
  }
  let x_1491 : f32 = x_1483;
  u_xlat0.x = x_1491;
  let x_1494 : bool = u_xlatb0.y;
  if (x_1494) {
    let x_1499 : f32 = u_xlat1.y;
    x_1495 = x_1499;
  } else {
    let x_1502 : f32 = u_xlat2.y;
    x_1495 = x_1502;
  }
  let x_1503 : f32 = x_1495;
  u_xlat0.y = x_1503;
  let x_1506 : bool = u_xlatb0.z;
  if (x_1506) {
    let x_1511 : f32 = u_xlat1.z;
    x_1507 = x_1511;
  } else {
    let x_1514 : f32 = u_xlat2.z;
    x_1507 = x_1514;
  }
  let x_1515 : f32 = x_1507;
  u_xlat0.z = x_1515;
  let x_1519 : vec3<f32> = u_xlat0;
  let x_1520 : vec3<f32> = max(x_1519, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1521 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1520.x, x_1520.y, x_1520.z, x_1521.w);
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

