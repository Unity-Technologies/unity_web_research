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
  x_Vignette_Params1 : vec4<f32>,
  x_Vignette_Params2 : vec4<f32>,
  x_Grain_Params : vec2<f32>,
  @size(8)
  padding_2 : u32,
  x_Grain_TilingParams : vec4<f32>,
  x_Dithering_Params : vec4<f32>,
}

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_LinearClamp : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

@group(0) @binding(1) var x_Bloom_Texture : texture_2d<f32>;

@group(0) @binding(4) var x_UserLut : texture_2d<f32>;

@group(0) @binding(3) var x_InternalLut : texture_2d<f32>;

@group(0) @binding(2) var x_Grain_Texture : texture_2d<f32>;

@group(0) @binding(8) var sampler_LinearRepeat : sampler;

@group(0) @binding(5) var x_BlueNoise_Texture : texture_2d<f32>;

@group(0) @binding(7) var sampler_PointRepeat : sampler;

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
  var x_369 : f32;
  var x_378 : f32;
  var u_xlatb10 : vec2<bool>;
  var u_xlat11 : vec2<f32>;
  var u_xlat16 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlatb8 : bool;
  var x_519 : f32;
  var u_xlatb16 : bool;
  var x_570 : f32;
  var x_597 : f32;
  var x_621 : f32;
  var x_632 : f32;
  var u_xlatb0 : vec3<bool>;
  var u_xlatb3 : vec3<bool>;
  var hlslcc_movcTemp : vec3<f32>;
  var x_1021 : f32;
  var x_1033 : f32;
  var x_1045 : f32;
  var u_xlat4 : vec2<f32>;
  var x_1192 : f32;
  var x_1204 : f32;
  var x_1216 : f32;
  var x_1409 : f32;
  var x_1421 : f32;
  var x_1433 : f32;
  var x_1518 : f32;
  var x_1530 : f32;
  var x_1542 : f32;
  var x_1594 : f32;
  var x_1606 : f32;
  var x_1618 : f32;
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
  let x_94 : f32 = x_27.x_Vignette_Params2.z;
  u_xlatb15 = (0.0f < x_94);
  let x_96 : bool = u_xlatb15;
  if (x_96) {
    let x_99 : vec2<f32> = vs_TEXCOORD0;
    let x_101 : vec4<f32> = x_27.x_Vignette_Params2;
    let x_104 : vec2<f32> = (x_99 + -(vec2<f32>(x_101.x, x_101.y)));
    let x_105 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_104.x, x_104.y, x_105.z, x_105.w);
    let x_107 : vec4<f32> = u_xlat1;
    let x_111 : vec4<f32> = x_27.x_Vignette_Params2;
    let x_113 : vec2<f32> = (abs(vec2<f32>(x_107.x, x_107.y)) * vec2<f32>(x_111.z, x_111.z));
    let x_114 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_114.x, x_113.x, x_113.y, x_114.w);
    let x_119 : f32 = u_xlat1.y;
    let x_123 : f32 = x_27.x_Vignette_Params1.w;
    u_xlat1.x = (x_119 * x_123);
    let x_127 : vec4<f32> = u_xlat1;
    let x_129 : vec4<f32> = u_xlat1;
    u_xlat15 = dot(vec2<f32>(x_127.x, x_127.z), vec2<f32>(x_129.x, x_129.z));
    let x_132 : f32 = u_xlat15;
    u_xlat15 = (-(x_132) + 1.0f);
    let x_136 : f32 = u_xlat15;
    u_xlat15 = max(x_136, 0.0f);
    let x_138 : f32 = u_xlat15;
    u_xlat15 = log2(x_138);
    let x_140 : f32 = u_xlat15;
    let x_142 : f32 = x_27.x_Vignette_Params2.w;
    u_xlat15 = (x_140 * x_142);
    let x_144 : f32 = u_xlat15;
    u_xlat15 = exp2(x_144);
    let x_147 : vec4<f32> = x_27.x_Vignette_Params1;
    let x_151 : vec3<f32> = (-(vec3<f32>(x_147.x, x_147.y, x_147.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_152 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_151.x, x_151.y, x_151.z, x_152.w);
    let x_154 : f32 = u_xlat15;
    let x_156 : vec4<f32> = u_xlat1;
    let x_160 : vec4<f32> = x_27.x_Vignette_Params1;
    let x_162 : vec3<f32> = ((vec3<f32>(x_154, x_154, x_154) * vec3<f32>(x_156.x, x_156.y, x_156.z)) + vec3<f32>(x_160.x, x_160.y, x_160.z));
    let x_163 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_162.x, x_162.y, x_162.z, x_163.w);
    let x_165 : vec3<f32> = u_xlat0;
    let x_166 : vec4<f32> = u_xlat1;
    u_xlat0 = (x_165 * vec3<f32>(x_166.x, x_166.y, x_166.z));
  }
  let x_169 : vec3<f32> = u_xlat0;
  let x_172 : vec4<f32> = x_27.x_Lut_Params;
  u_xlat0 = (x_169 * vec3<f32>(x_172.w, x_172.w, x_172.w));
  let x_180 : vec3<f32> = u_xlat0;
  u_xlat6.x = dot(vec3<f32>(0.439700991f, 0.382977992f, 0.177334994f), x_180);
  let x_187 : vec3<f32> = u_xlat0;
  u_xlat6.y = dot(vec3<f32>(0.089792296f, 0.813422978f, 0.096761599f), x_187);
  let x_194 : vec3<f32> = u_xlat0;
  u_xlat6.z = dot(vec3<f32>(0.017543999f, 0.111543998f, 0.870703995f), x_194);
  let x_198 : f32 = u_xlat6.y;
  let x_200 : f32 = u_xlat6.x;
  u_xlat0.x = min(x_198, x_200);
  let x_204 : f32 = u_xlat6.z;
  let x_206 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_204, x_206);
  let x_211 : f32 = u_xlat6.y;
  let x_213 : f32 = u_xlat6.x;
  u_xlat5.x = max(x_211, x_213);
  let x_217 : f32 = u_xlat6.z;
  let x_219 : f32 = u_xlat5.x;
  u_xlat0.y = max(x_217, x_219);
  let x_222 : vec3<f32> = u_xlat0;
  u_xlat0 = max(vec3<f32>(x_222.x, x_222.y, x_222.y), vec3<f32>(0.0001f, 0.0001f, 0.01f));
  let x_229 : f32 = u_xlat0.x;
  let x_232 : f32 = u_xlat0.y;
  u_xlat0.x = (-(x_229) + x_232);
  let x_236 : f32 = u_xlat0.x;
  let x_238 : f32 = u_xlat0.z;
  u_xlat0.x = (x_236 / x_238);
  let x_241 : vec3<f32> = u_xlat6;
  let x_244 : vec3<f32> = u_xlat6;
  u_xlat5 = (-(vec3<f32>(x_241.y, x_241.x, x_241.z)) + vec3<f32>(x_244.z, x_244.y, x_244.x));
  let x_247 : vec3<f32> = u_xlat5;
  let x_249 : vec3<f32> = u_xlat6;
  let x_251 : vec2<f32> = (vec2<f32>(x_247.x, x_247.y) * vec2<f32>(x_249.z, x_249.y));
  let x_252 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_251.x, x_251.y, x_252.z);
  let x_255 : f32 = u_xlat5.y;
  let x_257 : f32 = u_xlat5.x;
  u_xlat5.x = (x_255 + x_257);
  let x_261 : f32 = u_xlat6.x;
  let x_263 : f32 = u_xlat5.z;
  let x_266 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_261 * x_263) + x_266);
  let x_270 : f32 = u_xlat5.x;
  u_xlat5.x = max(x_270, 0.0f);
  let x_274 : f32 = u_xlat5.x;
  u_xlat5.x = sqrt(x_274);
  let x_280 : f32 = u_xlat6.y;
  let x_282 : f32 = u_xlat6.z;
  u_xlat10.x = (x_280 + x_282);
  let x_286 : f32 = u_xlat6.x;
  let x_288 : f32 = u_xlat10.x;
  u_xlat10.x = (x_286 + x_288);
  let x_292 : f32 = u_xlat5.x;
  let x_296 : f32 = u_xlat10.x;
  u_xlat5.x = ((x_292 * 1.75f) + x_296);
  let x_300 : f32 = u_xlat0.x;
  u_xlat15 = (x_300 + -0.400000006f);
  let x_303 : f32 = u_xlat15;
  u_xlat1.x = (x_303 * 2.5f);
  let x_308 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_308)) + 1.0f);
  let x_314 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_314, 0.0f);
  let x_317 : f32 = u_xlat15;
  u_xlatb15 = (x_317 >= 0.0f);
  let x_319 : bool = u_xlatb15;
  u_xlat15 = select(-1.0f, 1.0f, x_319);
  let x_323 : f32 = u_xlat1.x;
  let x_326 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_323) * x_326) + 1.0f);
  let x_330 : f32 = u_xlat15;
  let x_332 : f32 = u_xlat1.x;
  u_xlat5.z = ((x_330 * x_332) + 1.0f);
  let x_336 : vec3<f32> = u_xlat5;
  u_xlat10 = (vec2<f32>(x_336.x, x_336.z) * vec2<f32>(0.333333343f, 0.025f));
  let x_345 : f32 = u_xlat5.x;
  u_xlatb1 = (0.159999996f >= x_345);
  let x_349 : f32 = u_xlat5.x;
  u_xlatb5 = (x_349 >= 0.479999989f);
  let x_354 : f32 = u_xlat10.x;
  u_xlat10.x = (0.079999998f / x_354);
  let x_358 : f32 = u_xlat10.x;
  u_xlat10.x = (x_358 + -0.5f);
  let x_363 : f32 = u_xlat10.x;
  let x_365 : f32 = u_xlat10.y;
  u_xlat10.x = (x_363 * x_365);
  let x_368 : bool = u_xlatb5;
  if (x_368) {
    x_369 = 0.0f;
  } else {
    let x_374 : f32 = u_xlat10.x;
    x_369 = x_374;
  }
  let x_375 : f32 = x_369;
  u_xlat5.x = x_375;
  let x_377 : bool = u_xlatb1;
  if (x_377) {
    let x_382 : f32 = u_xlat10.y;
    x_378 = x_382;
  } else {
    let x_385 : f32 = u_xlat5.x;
    x_378 = x_385;
  }
  let x_386 : f32 = x_378;
  u_xlat5.x = x_386;
  let x_389 : f32 = u_xlat5.x;
  u_xlat5.x = (x_389 + 1.0f);
  let x_392 : vec3<f32> = u_xlat5;
  let x_394 : vec3<f32> = u_xlat6;
  let x_395 : vec3<f32> = (vec3<f32>(x_392.x, x_392.x, x_392.x) * x_394);
  let x_396 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_396.x, x_395.x, x_395.y, x_395.z);
  let x_401 : vec4<f32> = u_xlat2;
  let x_403 : vec4<f32> = u_xlat2;
  let x_406 : vec4<bool> = (vec4<f32>(x_401.z, x_401.w, x_401.z, x_401.w) == vec4<f32>(x_403.y, x_403.z, x_403.y, x_403.z));
  u_xlatb10 = vec2<bool>(x_406.x, x_406.y);
  let x_409 : bool = u_xlatb10.y;
  let x_411 : bool = u_xlatb10.x;
  u_xlatb10.x = (x_409 & x_411);
  let x_415 : f32 = u_xlat6.y;
  let x_417 : f32 = u_xlat5.x;
  let x_420 : f32 = u_xlat2.w;
  u_xlat15 = ((x_415 * x_417) + -(x_420));
  let x_423 : f32 = u_xlat15;
  u_xlat15 = (x_423 * 1.732050776f);
  let x_427 : f32 = u_xlat2.y;
  let x_431 : f32 = u_xlat2.z;
  u_xlat1.x = ((x_427 * 2.0f) + -(x_431));
  let x_436 : f32 = u_xlat6.z;
  let x_439 : f32 = u_xlat5.x;
  let x_442 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_436) * x_439) + x_442);
  let x_446 : f32 = u_xlat15;
  let x_449 : f32 = u_xlat1.x;
  u_xlat11.x = min(abs(x_446), abs(x_449));
  let x_454 : f32 = u_xlat15;
  let x_457 : f32 = u_xlat1.x;
  u_xlat16 = max(abs(x_454), abs(x_457));
  let x_460 : f32 = u_xlat16;
  u_xlat16 = (1.0f / x_460);
  let x_462 : f32 = u_xlat16;
  let x_464 : f32 = u_xlat11.x;
  u_xlat11.x = (x_462 * x_464);
  let x_468 : f32 = u_xlat11.x;
  let x_470 : f32 = u_xlat11.x;
  u_xlat16 = (x_468 * x_470);
  let x_473 : f32 = u_xlat16;
  u_xlat3.x = ((x_473 * 0.0208351f) + -0.085133001f);
  let x_479 : f32 = u_xlat16;
  let x_481 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_479 * x_481) + 0.180141002f);
  let x_486 : f32 = u_xlat16;
  let x_488 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_486 * x_488) + -0.330299497f);
  let x_493 : f32 = u_xlat16;
  let x_495 : f32 = u_xlat3.x;
  u_xlat16 = ((x_493 * x_495) + 0.999866009f);
  let x_499 : f32 = u_xlat16;
  let x_501 : f32 = u_xlat11.x;
  u_xlat3.x = (x_499 * x_501);
  let x_506 : f32 = u_xlat1.x;
  let x_508 : f32 = u_xlat15;
  u_xlatb8 = (abs(x_506) < abs(x_508));
  let x_512 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_512 * -2.0f) + 1.570796371f);
  let x_518 : bool = u_xlatb8;
  if (x_518) {
    let x_523 : f32 = u_xlat3.x;
    x_519 = x_523;
  } else {
    x_519 = 0.0f;
  }
  let x_525 : f32 = x_519;
  u_xlat3.x = x_525;
  let x_528 : f32 = u_xlat11.x;
  let x_529 : f32 = u_xlat16;
  let x_532 : f32 = u_xlat3.x;
  u_xlat11.x = ((x_528 * x_529) + x_532);
  let x_537 : f32 = u_xlat1.x;
  let x_539 : f32 = u_xlat1.x;
  u_xlatb16 = (x_537 < -(x_539));
  let x_542 : bool = u_xlatb16;
  u_xlat16 = select(0.0f, -3.141592741f, x_542);
  let x_545 : f32 = u_xlat16;
  let x_547 : f32 = u_xlat11.x;
  u_xlat11.x = (x_545 + x_547);
  let x_550 : f32 = u_xlat15;
  let x_552 : f32 = u_xlat1.x;
  u_xlat16 = min(x_550, x_552);
  let x_554 : f32 = u_xlat15;
  let x_556 : f32 = u_xlat1.x;
  u_xlat15 = max(x_554, x_556);
  let x_558 : f32 = u_xlat16;
  let x_559 : f32 = u_xlat16;
  u_xlatb1 = (x_558 < -(x_559));
  let x_562 : f32 = u_xlat15;
  let x_563 : f32 = u_xlat15;
  u_xlatb15 = (x_562 >= -(x_563));
  let x_566 : bool = u_xlatb15;
  let x_567 : bool = u_xlatb1;
  u_xlatb15 = (x_566 & x_567);
  let x_569 : bool = u_xlatb15;
  if (x_569) {
    let x_574 : f32 = u_xlat11.x;
    x_570 = -(x_574);
  } else {
    let x_578 : f32 = u_xlat11.x;
    x_570 = x_578;
  }
  let x_579 : f32 = x_570;
  u_xlat15 = x_579;
  let x_580 : f32 = u_xlat15;
  u_xlat15 = (x_580 * 57.295780182f);
  let x_584 : bool = u_xlatb10.x;
  let x_585 : f32 = u_xlat15;
  u_xlat10.x = select(x_585, 0.0f, x_584);
  let x_589 : f32 = u_xlat10.x;
  u_xlatb15 = (x_589 < 0.0f);
  let x_592 : f32 = u_xlat10.x;
  u_xlat1.x = (x_592 + 360.0f);
  let x_596 : bool = u_xlatb15;
  if (x_596) {
    let x_601 : f32 = u_xlat1.x;
    x_597 = x_601;
  } else {
    let x_604 : f32 = u_xlat10.x;
    x_597 = x_604;
  }
  let x_605 : f32 = x_597;
  u_xlat10.x = x_605;
  let x_608 : f32 = u_xlat10.x;
  u_xlatb15 = (x_608 < -180.0f);
  let x_613 : f32 = u_xlat10.x;
  u_xlatb1 = (180.0f < x_613);
  let x_615 : vec2<f32> = u_xlat10;
  u_xlat11 = (vec2<f32>(x_615.x, x_615.x) + vec2<f32>(360.0f, -360.0f));
  let x_620 : bool = u_xlatb1;
  if (x_620) {
    let x_625 : f32 = u_xlat11.y;
    x_621 = x_625;
  } else {
    let x_628 : f32 = u_xlat10.x;
    x_621 = x_628;
  }
  let x_629 : f32 = x_621;
  u_xlat10.x = x_629;
  let x_631 : bool = u_xlatb15;
  if (x_631) {
    let x_636 : f32 = u_xlat11.x;
    x_632 = x_636;
  } else {
    let x_639 : f32 = u_xlat10.x;
    x_632 = x_639;
  }
  let x_640 : f32 = x_632;
  u_xlat10.x = x_640;
  let x_643 : f32 = u_xlat10.x;
  u_xlat10.x = (x_643 * 0.014814815f);
  let x_648 : f32 = u_xlat10.x;
  u_xlat10.x = (-(abs(x_648)) + 1.0f);
  let x_654 : f32 = u_xlat10.x;
  u_xlat10.x = max(x_654, 0.0f);
  let x_658 : f32 = u_xlat10.x;
  u_xlat15 = ((x_658 * -2.0f) + 3.0f);
  let x_663 : f32 = u_xlat10.x;
  let x_665 : f32 = u_xlat10.x;
  u_xlat10.x = (x_663 * x_665);
  let x_669 : f32 = u_xlat10.x;
  let x_670 : f32 = u_xlat15;
  u_xlat10.x = (x_669 * x_670);
  let x_674 : f32 = u_xlat10.x;
  let x_676 : f32 = u_xlat10.x;
  u_xlat10.x = (x_674 * x_676);
  let x_680 : f32 = u_xlat0.x;
  let x_682 : f32 = u_xlat10.x;
  u_xlat0.x = (x_680 * x_682);
  let x_686 : f32 = u_xlat6.x;
  let x_689 : f32 = u_xlat5.x;
  u_xlat5.x = ((-(x_686) * x_689) + 0.029999999f);
  let x_695 : f32 = u_xlat5.x;
  let x_697 : f32 = u_xlat0.x;
  u_xlat0.x = (x_695 * x_697);
  let x_701 : f32 = u_xlat0.x;
  let x_705 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_701 * 0.180000007f) + x_705);
  let x_712 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(1.451439261f, -0.236510754f, -0.214928567f), vec3<f32>(x_712.x, x_712.z, x_712.w));
  let x_720 : vec4<f32> = u_xlat2;
  u_xlat0.y = dot(vec3<f32>(-0.076553777f, 1.176229715f, -0.099675924f), vec3<f32>(x_720.x, x_720.z, x_720.w));
  let x_728 : vec4<f32> = u_xlat2;
  u_xlat0.z = dot(vec3<f32>(0.008316148f, -0.00603244966f, 0.997716308f), vec3<f32>(x_728.x, x_728.z, x_728.w));
  let x_732 : vec3<f32> = u_xlat0;
  u_xlat0 = max(x_732, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_735 : vec3<f32> = u_xlat0;
  u_xlat15 = dot(x_735, vec3<f32>(0.272228986f, 0.674081981f, 0.053689498f));
  let x_741 : f32 = u_xlat15;
  let x_744 : vec3<f32> = u_xlat0;
  u_xlat0 = (-(vec3<f32>(x_741, x_741, x_741)) + x_744);
  let x_746 : vec3<f32> = u_xlat0;
  let x_750 : f32 = u_xlat15;
  u_xlat0 = ((x_746 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f)) + vec3<f32>(x_750, x_750, x_750));
  let x_753 : vec3<f32> = u_xlat0;
  let x_756 : vec3<f32> = (x_753 + vec3<f32>(0.024578599f, 0.024578599f, 0.024578599f));
  let x_757 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_756.x, x_756.y, x_756.z, x_757.w);
  let x_759 : vec3<f32> = u_xlat0;
  let x_760 : vec4<f32> = u_xlat1;
  let x_765 : vec3<f32> = ((x_759 * vec3<f32>(x_760.x, x_760.y, x_760.z)) + vec3<f32>(-0.000090537f, -0.000090537f, -0.000090537f));
  let x_766 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_765.x, x_765.y, x_765.z, x_766.w);
  let x_768 : vec3<f32> = u_xlat0;
  let x_774 : vec3<f32> = ((x_768 * vec3<f32>(0.983729005f, 0.983729005f, 0.983729005f)) + vec3<f32>(0.432951003f, 0.432951003f, 0.432951003f));
  let x_775 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_774.x, x_774.y, x_774.z, x_775.w);
  let x_777 : vec3<f32> = u_xlat0;
  let x_778 : vec4<f32> = u_xlat2;
  u_xlat0 = ((x_777 * vec3<f32>(x_778.x, x_778.y, x_778.z)) + vec3<f32>(0.238080993f, 0.238080993f, 0.238080993f));
  let x_784 : vec4<f32> = u_xlat1;
  let x_786 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_784.x, x_784.y, x_784.z) / x_786);
  let x_792 : vec3<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(0.662454188f, 0.134004205f, 0.156187683f), x_792);
  let x_799 : vec3<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(0.272228718f, 0.674081743f, 0.053689517f), x_799);
  let x_806 : vec3<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(-0.00557464967f, 0.0040607336f, 1.010339141f), x_806);
  let x_809 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(x_809.x, x_809.y, x_809.z), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_814 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_814, 0.0001f);
  let x_817 : vec4<f32> = u_xlat1;
  let x_819 : vec3<f32> = u_xlat0;
  let x_821 : vec2<f32> = (vec2<f32>(x_817.x, x_817.y) / vec2<f32>(x_819.x, x_819.x));
  let x_822 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_821.x, x_821.y, x_822.z);
  let x_825 : f32 = u_xlat1.y;
  u_xlat15 = max(x_825, 0.0f);
  let x_827 : f32 = u_xlat15;
  u_xlat15 = min(x_827, 65504.0f);
  let x_830 : f32 = u_xlat15;
  u_xlat15 = log2(x_830);
  let x_832 : f32 = u_xlat15;
  u_xlat15 = (x_832 * 0.981100023f);
  let x_835 : f32 = u_xlat15;
  u_xlat1.y = exp2(x_835);
  let x_839 : f32 = u_xlat0.y;
  u_xlat15 = max(x_839, 0.0001f);
  let x_842 : f32 = u_xlat1.y;
  let x_843 : f32 = u_xlat15;
  u_xlat15 = (x_842 / x_843);
  let x_846 : f32 = u_xlat0.x;
  u_xlat16 = (-(x_846) + 1.0f);
  let x_850 : f32 = u_xlat0.y;
  let x_852 : f32 = u_xlat16;
  u_xlat0.z = (-(x_850) + x_852);
  let x_855 : f32 = u_xlat15;
  let x_857 : vec3<f32> = u_xlat0;
  let x_859 : vec2<f32> = (vec2<f32>(x_855, x_855) * vec2<f32>(x_857.x, x_857.z));
  let x_860 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_859.x, x_860.y, x_859.y, x_860.w);
  let x_866 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(1.641023397f, -0.324803293f, -0.236424699f), vec3<f32>(x_866.x, x_866.y, x_866.z));
  let x_874 : vec4<f32> = u_xlat1;
  u_xlat0.y = dot(vec3<f32>(-0.663662851f, 1.61533165f, 0.016756348f), vec3<f32>(x_874.x, x_874.y, x_874.z));
  let x_882 : vec4<f32> = u_xlat1;
  u_xlat0.z = dot(vec3<f32>(0.011721894f, -0.008284442f, 0.988394856f), vec3<f32>(x_882.x, x_882.y, x_882.z));
  let x_886 : vec3<f32> = u_xlat0;
  u_xlat15 = dot(x_886, vec3<f32>(0.272228986f, 0.674081981f, 0.053689498f));
  let x_888 : f32 = u_xlat15;
  let x_891 : vec3<f32> = u_xlat0;
  u_xlat0 = (-(vec3<f32>(x_888, x_888, x_888)) + x_891);
  let x_893 : vec3<f32> = u_xlat0;
  let x_897 : f32 = u_xlat15;
  u_xlat0 = ((x_893 * vec3<f32>(0.930000007f, 0.930000007f, 0.930000007f)) + vec3<f32>(x_897, x_897, x_897));
  let x_900 : vec3<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(0.662454188f, 0.134004205f, 0.156187683f), x_900);
  let x_903 : vec3<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(0.272228718f, 0.674081743f, 0.053689517f), x_903);
  let x_906 : vec3<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(-0.00557464967f, 0.0040607336f, 1.010339141f), x_906);
  let x_913 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(0.987223983f, -0.00611327f, 0.015953301f), vec3<f32>(x_913.x, x_913.y, x_913.z));
  let x_921 : vec4<f32> = u_xlat1;
  u_xlat0.y = dot(vec3<f32>(-0.00759836f, 1.001860023f, 0.0053302f), vec3<f32>(x_921.x, x_921.y, x_921.z));
  let x_929 : vec4<f32> = u_xlat1;
  u_xlat0.z = dot(vec3<f32>(0.00307257f, -0.00509595f, 1.081680059f), vec3<f32>(x_929.x, x_929.y, x_929.z));
  let x_937 : vec3<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(3.240969896f, -1.537383199f, -0.498610765f), x_937);
  let x_941 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_941, 0.0f, 1.0f);
  let x_948 : vec3<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(-0.969243646f, 1.875967503f, 0.041555058f), x_948);
  let x_952 : f32 = u_xlat1.y;
  u_xlat1.y = clamp(x_952, 0.0f, 1.0f);
  let x_959 : vec3<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(0.05563008f, -0.203976959f, 1.05697155f), x_959);
  let x_963 : f32 = u_xlat1.z;
  u_xlat1.z = clamp(x_963, 0.0f, 1.0f);
  let x_971 : f32 = x_27.x_UserLut_Params.w;
  u_xlatb0.x = (0.0f < x_971);
  let x_975 : bool = u_xlatb0.x;
  if (x_975) {
    let x_978 : vec4<f32> = u_xlat1;
    u_xlat0 = (vec3<f32>(x_978.x, x_978.y, x_978.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
    let x_983 : vec4<f32> = u_xlat1;
    let x_985 : vec3<f32> = log2(vec3<f32>(x_983.x, x_983.y, x_983.z));
    let x_986 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_985.x, x_985.y, x_985.z, x_986.w);
    let x_988 : vec4<f32> = u_xlat2;
    let x_992 : vec3<f32> = (vec3<f32>(x_988.x, x_988.y, x_988.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
    let x_993 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_992.x, x_992.y, x_992.z, x_993.w);
    let x_995 : vec4<f32> = u_xlat2;
    let x_997 : vec3<f32> = exp2(vec3<f32>(x_995.x, x_995.y, x_995.z));
    let x_998 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_997.x, x_997.y, x_997.z, x_998.w);
    let x_1000 : vec4<f32> = u_xlat2;
    let x_1007 : vec3<f32> = ((vec3<f32>(x_1000.x, x_1000.y, x_1000.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
    let x_1008 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1007.x, x_1007.y, x_1007.z, x_1008.w);
    let x_1013 : vec4<f32> = u_xlat1;
    let x_1015 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1013.x, x_1013.y, x_1013.z, x_1013.x));
    u_xlatb3 = vec3<bool>(x_1015.x, x_1015.y, x_1015.z);
    let x_1018 : vec3<f32> = u_xlat0;
    hlslcc_movcTemp = x_1018;
    let x_1020 : bool = u_xlatb3.x;
    if (x_1020) {
      let x_1025 : f32 = u_xlat0.x;
      x_1021 = x_1025;
    } else {
      let x_1028 : f32 = u_xlat2.x;
      x_1021 = x_1028;
    }
    let x_1029 : f32 = x_1021;
    hlslcc_movcTemp.x = x_1029;
    let x_1032 : bool = u_xlatb3.y;
    if (x_1032) {
      let x_1037 : f32 = u_xlat0.y;
      x_1033 = x_1037;
    } else {
      let x_1040 : f32 = u_xlat2.y;
      x_1033 = x_1040;
    }
    let x_1041 : f32 = x_1033;
    hlslcc_movcTemp.y = x_1041;
    let x_1044 : bool = u_xlatb3.z;
    if (x_1044) {
      let x_1049 : f32 = u_xlat0.z;
      x_1045 = x_1049;
    } else {
      let x_1052 : f32 = u_xlat2.z;
      x_1045 = x_1052;
    }
    let x_1053 : f32 = x_1045;
    hlslcc_movcTemp.z = x_1053;
    let x_1055 : vec3<f32> = hlslcc_movcTemp;
    u_xlat0 = x_1055;
    let x_1056 : vec3<f32> = u_xlat0;
    let x_1059 : vec4<f32> = x_27.x_UserLut_Params;
    let x_1061 : vec3<f32> = (vec3<f32>(x_1056.z, x_1056.x, x_1056.y) * vec3<f32>(x_1059.z, x_1059.z, x_1059.z));
    let x_1062 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1061.x, x_1061.y, x_1061.z, x_1062.w);
    let x_1065 : f32 = u_xlat2.x;
    u_xlat15 = floor(x_1065);
    let x_1068 : vec4<f32> = x_27.x_UserLut_Params;
    let x_1072 : vec2<f32> = (vec2<f32>(x_1068.x, x_1068.y) * vec2<f32>(0.5f, 0.5f));
    let x_1073 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1072.x, x_1073.y, x_1073.z, x_1072.y);
    let x_1075 : vec4<f32> = u_xlat2;
    let x_1078 : vec4<f32> = x_27.x_UserLut_Params;
    let x_1081 : vec4<f32> = u_xlat2;
    let x_1083 : vec2<f32> = ((vec2<f32>(x_1075.y, x_1075.z) * vec2<f32>(x_1078.x, x_1078.y)) + vec2<f32>(x_1081.x, x_1081.w));
    let x_1084 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1084.x, x_1083.x, x_1083.y, x_1084.w);
    let x_1086 : f32 = u_xlat15;
    let x_1088 : f32 = x_27.x_UserLut_Params.y;
    let x_1091 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_1086 * x_1088) + x_1091);
    let x_1098 : vec4<f32> = u_xlat2;
    let x_1100 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1098.x, x_1098.z), 0.0f);
    u_xlat3 = vec3<f32>(x_1100.x, x_1100.y, x_1100.z);
    let x_1104 : f32 = x_27.x_UserLut_Params.y;
    u_xlat4.x = x_1104;
    u_xlat4.y = 0.0f;
    let x_1107 : vec4<f32> = u_xlat2;
    let x_1109 : vec2<f32> = u_xlat4;
    let x_1110 : vec2<f32> = (vec2<f32>(x_1107.x, x_1107.z) + x_1109);
    let x_1111 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1110.x, x_1110.y, x_1111.z, x_1111.w);
    let x_1116 : vec4<f32> = u_xlat2;
    let x_1118 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1116.x, x_1116.y), 0.0f);
    let x_1119 : vec3<f32> = vec3<f32>(x_1118.x, x_1118.y, x_1118.z);
    let x_1120 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1119.x, x_1119.y, x_1119.z, x_1120.w);
    let x_1123 : f32 = u_xlat0.z;
    let x_1125 : f32 = x_27.x_UserLut_Params.z;
    let x_1127 : f32 = u_xlat15;
    u_xlat15 = ((x_1123 * x_1125) + -(x_1127));
    let x_1130 : vec3<f32> = u_xlat3;
    let x_1132 : vec4<f32> = u_xlat2;
    let x_1134 : vec3<f32> = (-(x_1130) + vec3<f32>(x_1132.x, x_1132.y, x_1132.z));
    let x_1135 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1134.x, x_1134.y, x_1134.z, x_1135.w);
    let x_1137 : f32 = u_xlat15;
    let x_1139 : vec4<f32> = u_xlat2;
    let x_1142 : vec3<f32> = u_xlat3;
    let x_1143 : vec3<f32> = ((vec3<f32>(x_1137, x_1137, x_1137) * vec3<f32>(x_1139.x, x_1139.y, x_1139.z)) + x_1142);
    let x_1144 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1143.x, x_1143.y, x_1143.z, x_1144.w);
    let x_1146 : vec3<f32> = u_xlat0;
    let x_1148 : vec4<f32> = u_xlat2;
    let x_1150 : vec3<f32> = (-(x_1146) + vec3<f32>(x_1148.x, x_1148.y, x_1148.z));
    let x_1151 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1150.x, x_1150.y, x_1150.z, x_1151.w);
    let x_1154 : vec4<f32> = x_27.x_UserLut_Params;
    let x_1156 : vec4<f32> = u_xlat2;
    let x_1159 : vec3<f32> = u_xlat0;
    u_xlat0 = ((vec3<f32>(x_1154.w, x_1154.w, x_1154.w) * vec3<f32>(x_1156.x, x_1156.y, x_1156.z)) + x_1159);
    let x_1161 : vec3<f32> = u_xlat0;
    let x_1164 : vec3<f32> = (x_1161 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
    let x_1165 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1164.x, x_1164.y, x_1164.z, x_1165.w);
    let x_1167 : vec3<f32> = u_xlat0;
    u_xlat3 = (x_1167 + vec3<f32>(0.055f, 0.055f, 0.055f));
    let x_1171 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_1171 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
    let x_1175 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_1175));
    let x_1178 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_1178 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
    let x_1182 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_1182);
    let x_1186 : vec3<f32> = u_xlat0;
    let x_1188 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1186.x, x_1186.y, x_1186.z, x_1186.x));
    u_xlatb0 = vec3<bool>(x_1188.x, x_1188.y, x_1188.z);
    let x_1191 : bool = u_xlatb0.x;
    if (x_1191) {
      let x_1196 : f32 = u_xlat2.x;
      x_1192 = x_1196;
    } else {
      let x_1199 : f32 = u_xlat3.x;
      x_1192 = x_1199;
    }
    let x_1200 : f32 = x_1192;
    u_xlat1.x = x_1200;
    let x_1203 : bool = u_xlatb0.y;
    if (x_1203) {
      let x_1208 : f32 = u_xlat2.y;
      x_1204 = x_1208;
    } else {
      let x_1211 : f32 = u_xlat3.y;
      x_1204 = x_1211;
    }
    let x_1212 : f32 = x_1204;
    u_xlat1.y = x_1212;
    let x_1215 : bool = u_xlatb0.z;
    if (x_1215) {
      let x_1220 : f32 = u_xlat2.z;
      x_1216 = x_1220;
    } else {
      let x_1223 : f32 = u_xlat3.z;
      x_1216 = x_1223;
    }
    let x_1224 : f32 = x_1216;
    u_xlat1.z = x_1224;
  }
  let x_1226 : vec4<f32> = u_xlat1;
  let x_1229 : vec4<f32> = x_27.x_Lut_Params;
  u_xlat0 = (vec3<f32>(x_1226.z, x_1226.x, x_1226.y) * vec3<f32>(x_1229.z, x_1229.z, x_1229.z));
  let x_1233 : f32 = u_xlat0.x;
  u_xlat0.x = floor(x_1233);
  let x_1237 : vec4<f32> = x_27.x_Lut_Params;
  let x_1239 : vec2<f32> = (vec2<f32>(x_1237.x, x_1237.y) * vec2<f32>(0.5f, 0.5f));
  let x_1240 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1239.x, x_1239.y, x_1240.z, x_1240.w);
  let x_1242 : vec3<f32> = u_xlat0;
  let x_1245 : vec4<f32> = x_27.x_Lut_Params;
  let x_1248 : vec4<f32> = u_xlat1;
  let x_1250 : vec2<f32> = ((vec2<f32>(x_1242.y, x_1242.z) * vec2<f32>(x_1245.x, x_1245.y)) + vec2<f32>(x_1248.x, x_1248.y));
  let x_1251 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1251.x, x_1250.x, x_1250.y, x_1251.w);
  let x_1254 : f32 = u_xlat0.x;
  let x_1256 : f32 = x_27.x_Lut_Params.y;
  let x_1259 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_1254 * x_1256) + x_1259);
  let x_1266 : vec4<f32> = u_xlat2;
  let x_1268 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1266.x, x_1266.z), 0.0f);
  u_xlat5 = vec3<f32>(x_1268.x, x_1268.y, x_1268.z);
  let x_1271 : f32 = x_27.x_Lut_Params.y;
  u_xlat1.x = x_1271;
  u_xlat1.y = 0.0f;
  let x_1274 : vec4<f32> = u_xlat1;
  let x_1276 : vec4<f32> = u_xlat2;
  let x_1278 : vec2<f32> = (vec2<f32>(x_1274.x, x_1274.y) + vec2<f32>(x_1276.x, x_1276.z));
  let x_1279 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1278.x, x_1278.y, x_1279.z, x_1279.w);
  let x_1284 : vec4<f32> = u_xlat1;
  let x_1286 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1284.x, x_1284.y), 0.0f);
  let x_1287 : vec3<f32> = vec3<f32>(x_1286.x, x_1286.y, x_1286.z);
  let x_1288 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1287.x, x_1287.y, x_1288.z, x_1287.z);
  let x_1291 : f32 = u_xlat1.z;
  let x_1293 : f32 = x_27.x_Lut_Params.z;
  let x_1296 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1291 * x_1293) + -(x_1296));
  let x_1300 : vec3<f32> = u_xlat5;
  let x_1302 : vec4<f32> = u_xlat1;
  let x_1304 : vec3<f32> = (-(x_1300) + vec3<f32>(x_1302.x, x_1302.y, x_1302.w));
  let x_1305 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1304.x, x_1304.y, x_1304.z, x_1305.w);
  let x_1307 : vec3<f32> = u_xlat0;
  let x_1309 : vec4<f32> = u_xlat1;
  let x_1312 : vec3<f32> = u_xlat5;
  u_xlat0 = ((vec3<f32>(x_1307.x, x_1307.x, x_1307.x) * vec3<f32>(x_1309.x, x_1309.y, x_1309.z)) + x_1312);
  let x_1314 : vec2<f32> = vs_TEXCOORD0;
  let x_1317 : vec4<f32> = x_27.x_Grain_TilingParams;
  let x_1321 : vec4<f32> = x_27.x_Grain_TilingParams;
  let x_1323 : vec2<f32> = ((x_1314 * vec2<f32>(x_1317.x, x_1317.y)) + vec2<f32>(x_1321.z, x_1321.w));
  let x_1324 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1323.x, x_1323.y, x_1324.z, x_1324.w);
  let x_1331 : vec4<f32> = u_xlat1;
  let x_1334 : f32 = x_27.x_GlobalMipBias.x;
  let x_1335 : vec4<f32> = textureSampleBias(x_Grain_Texture, sampler_LinearRepeat, vec2<f32>(x_1331.x, x_1331.y), x_1334);
  u_xlat15 = x_1335.w;
  let x_1337 : f32 = u_xlat15;
  u_xlat15 = (x_1337 + -0.5f);
  let x_1339 : f32 = u_xlat15;
  let x_1340 : f32 = u_xlat15;
  u_xlat15 = (x_1339 + x_1340);
  let x_1342 : vec3<f32> = u_xlat0;
  u_xlat1.x = dot(x_1342, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_1350 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_1350);
  let x_1355 : f32 = x_27.x_Grain_Params.y;
  let x_1357 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1355 * -(x_1357)) + 1.0f);
  let x_1362 : f32 = u_xlat15;
  let x_1364 : vec3<f32> = u_xlat0;
  u_xlat6 = (vec3<f32>(x_1362, x_1362, x_1362) * x_1364);
  let x_1366 : vec3<f32> = u_xlat6;
  let x_1369 : vec2<f32> = x_27.x_Grain_Params;
  u_xlat6 = (x_1366 * vec3<f32>(x_1369.x, x_1369.x, x_1369.x));
  let x_1372 : vec3<f32> = u_xlat6;
  let x_1373 : vec4<f32> = u_xlat1;
  let x_1376 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_1372 * vec3<f32>(x_1373.x, x_1373.x, x_1373.x)) + x_1376);
  let x_1378 : vec3<f32> = u_xlat0;
  let x_1379 : vec3<f32> = (x_1378 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1380 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1379.x, x_1379.y, x_1379.z, x_1380.w);
  let x_1382 : vec3<f32> = u_xlat0;
  let x_1384 : vec3<f32> = log2(abs(x_1382));
  let x_1385 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1384.x, x_1384.y, x_1384.z, x_1385.w);
  let x_1387 : vec4<f32> = u_xlat2;
  let x_1389 : vec3<f32> = (vec3<f32>(x_1387.x, x_1387.y, x_1387.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1390 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1389.x, x_1389.y, x_1389.z, x_1390.w);
  let x_1392 : vec4<f32> = u_xlat2;
  let x_1394 : vec3<f32> = exp2(vec3<f32>(x_1392.x, x_1392.y, x_1392.z));
  let x_1395 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1394.x, x_1394.y, x_1394.z, x_1395.w);
  let x_1397 : vec4<f32> = u_xlat2;
  let x_1400 : vec3<f32> = ((vec3<f32>(x_1397.x, x_1397.y, x_1397.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1401 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1400.x, x_1400.y, x_1400.z, x_1401.w);
  let x_1403 : vec3<f32> = u_xlat0;
  let x_1405 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1403.x, x_1403.y, x_1403.z, x_1403.x));
  u_xlatb0 = vec3<bool>(x_1405.x, x_1405.y, x_1405.z);
  let x_1408 : bool = u_xlatb0.x;
  if (x_1408) {
    let x_1413 : f32 = u_xlat1.x;
    x_1409 = x_1413;
  } else {
    let x_1416 : f32 = u_xlat2.x;
    x_1409 = x_1416;
  }
  let x_1417 : f32 = x_1409;
  u_xlat0.x = x_1417;
  let x_1420 : bool = u_xlatb0.y;
  if (x_1420) {
    let x_1425 : f32 = u_xlat1.y;
    x_1421 = x_1425;
  } else {
    let x_1428 : f32 = u_xlat2.y;
    x_1421 = x_1428;
  }
  let x_1429 : f32 = x_1421;
  u_xlat0.y = x_1429;
  let x_1432 : bool = u_xlatb0.z;
  if (x_1432) {
    let x_1437 : f32 = u_xlat1.z;
    x_1433 = x_1437;
  } else {
    let x_1440 : f32 = u_xlat2.z;
    x_1433 = x_1440;
  }
  let x_1441 : f32 = x_1433;
  u_xlat0.z = x_1441;
  let x_1443 : vec2<f32> = vs_TEXCOORD0;
  let x_1446 : vec4<f32> = x_27.x_Dithering_Params;
  let x_1450 : vec4<f32> = x_27.x_Dithering_Params;
  let x_1452 : vec2<f32> = ((x_1443 * vec2<f32>(x_1446.x, x_1446.y)) + vec2<f32>(x_1450.z, x_1450.w));
  let x_1453 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1452.x, x_1452.y, x_1453.z, x_1453.w);
  let x_1460 : vec4<f32> = u_xlat1;
  let x_1463 : f32 = x_27.x_GlobalMipBias.x;
  let x_1464 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_1460.x, x_1460.y), x_1463);
  u_xlat15 = x_1464.w;
  let x_1466 : f32 = u_xlat15;
  u_xlat15 = ((x_1466 * 2.0f) + -1.0f);
  let x_1469 : f32 = u_xlat15;
  u_xlatb1 = (x_1469 >= 0.0f);
  let x_1471 : bool = u_xlatb1;
  u_xlat1.x = select(-1.0f, 1.0f, x_1471);
  let x_1474 : f32 = u_xlat15;
  u_xlat15 = (-(abs(x_1474)) + 1.0f);
  let x_1478 : f32 = u_xlat15;
  u_xlat15 = sqrt(x_1478);
  let x_1480 : f32 = u_xlat15;
  u_xlat15 = (-(x_1480) + 1.0f);
  let x_1483 : f32 = u_xlat15;
  let x_1485 : f32 = u_xlat1.x;
  u_xlat15 = (x_1483 * x_1485);
  let x_1487 : vec3<f32> = u_xlat0;
  let x_1488 : vec3<f32> = (x_1487 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1489 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1488.x, x_1488.y, x_1488.z, x_1489.w);
  let x_1491 : vec3<f32> = u_xlat0;
  let x_1493 : vec3<f32> = log2(abs(x_1491));
  let x_1494 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1493.x, x_1493.y, x_1493.z, x_1494.w);
  let x_1496 : vec4<f32> = u_xlat2;
  let x_1498 : vec3<f32> = (vec3<f32>(x_1496.x, x_1496.y, x_1496.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1499 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1498.x, x_1498.y, x_1498.z, x_1499.w);
  let x_1501 : vec4<f32> = u_xlat2;
  let x_1503 : vec3<f32> = exp2(vec3<f32>(x_1501.x, x_1501.y, x_1501.z));
  let x_1504 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1503.x, x_1503.y, x_1503.z, x_1504.w);
  let x_1506 : vec4<f32> = u_xlat2;
  let x_1509 : vec3<f32> = ((vec3<f32>(x_1506.x, x_1506.y, x_1506.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1510 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1509.x, x_1509.y, x_1509.z, x_1510.w);
  let x_1512 : vec3<f32> = u_xlat0;
  let x_1514 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1512.x, x_1512.y, x_1512.z, x_1512.x));
  u_xlatb0 = vec3<bool>(x_1514.x, x_1514.y, x_1514.z);
  let x_1517 : bool = u_xlatb0.x;
  if (x_1517) {
    let x_1522 : f32 = u_xlat1.x;
    x_1518 = x_1522;
  } else {
    let x_1525 : f32 = u_xlat2.x;
    x_1518 = x_1525;
  }
  let x_1526 : f32 = x_1518;
  u_xlat0.x = x_1526;
  let x_1529 : bool = u_xlatb0.y;
  if (x_1529) {
    let x_1534 : f32 = u_xlat1.y;
    x_1530 = x_1534;
  } else {
    let x_1537 : f32 = u_xlat2.y;
    x_1530 = x_1537;
  }
  let x_1538 : f32 = x_1530;
  u_xlat0.y = x_1538;
  let x_1541 : bool = u_xlatb0.z;
  if (x_1541) {
    let x_1546 : f32 = u_xlat1.z;
    x_1542 = x_1546;
  } else {
    let x_1549 : f32 = u_xlat2.z;
    x_1542 = x_1549;
  }
  let x_1550 : f32 = x_1542;
  u_xlat0.z = x_1550;
  let x_1552 : f32 = u_xlat15;
  let x_1557 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1552, x_1552, x_1552) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + x_1557);
  let x_1559 : vec3<f32> = u_xlat0;
  let x_1560 : vec3<f32> = (x_1559 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1561 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1560.x, x_1560.y, x_1560.z, x_1561.w);
  let x_1563 : vec3<f32> = u_xlat0;
  let x_1564 : vec3<f32> = (x_1563 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1565 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1564.x, x_1564.y, x_1564.z, x_1565.w);
  let x_1567 : vec4<f32> = u_xlat2;
  let x_1569 : vec3<f32> = (vec3<f32>(x_1567.x, x_1567.y, x_1567.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1570 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1569.x, x_1569.y, x_1569.z, x_1570.w);
  let x_1572 : vec4<f32> = u_xlat2;
  let x_1575 : vec3<f32> = log2(abs(vec3<f32>(x_1572.x, x_1572.y, x_1572.z)));
  let x_1576 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1575.x, x_1575.y, x_1575.z, x_1576.w);
  let x_1578 : vec4<f32> = u_xlat2;
  let x_1580 : vec3<f32> = (vec3<f32>(x_1578.x, x_1578.y, x_1578.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1581 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1580.x, x_1580.y, x_1580.z, x_1581.w);
  let x_1583 : vec4<f32> = u_xlat2;
  let x_1585 : vec3<f32> = exp2(vec3<f32>(x_1583.x, x_1583.y, x_1583.z));
  let x_1586 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1585.x, x_1585.y, x_1585.z, x_1586.w);
  let x_1588 : vec3<f32> = u_xlat0;
  let x_1590 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1588.x, x_1588.y, x_1588.z, x_1588.x));
  u_xlatb0 = vec3<bool>(x_1590.x, x_1590.y, x_1590.z);
  let x_1593 : bool = u_xlatb0.x;
  if (x_1593) {
    let x_1598 : f32 = u_xlat1.x;
    x_1594 = x_1598;
  } else {
    let x_1601 : f32 = u_xlat2.x;
    x_1594 = x_1601;
  }
  let x_1602 : f32 = x_1594;
  u_xlat0.x = x_1602;
  let x_1605 : bool = u_xlatb0.y;
  if (x_1605) {
    let x_1610 : f32 = u_xlat1.y;
    x_1606 = x_1610;
  } else {
    let x_1613 : f32 = u_xlat2.y;
    x_1606 = x_1613;
  }
  let x_1614 : f32 = x_1606;
  u_xlat0.y = x_1614;
  let x_1617 : bool = u_xlatb0.z;
  if (x_1617) {
    let x_1622 : f32 = u_xlat1.z;
    x_1618 = x_1622;
  } else {
    let x_1625 : f32 = u_xlat2.z;
    x_1618 = x_1625;
  }
  let x_1626 : f32 = x_1618;
  u_xlat0.z = x_1626;
  let x_1630 : vec3<f32> = u_xlat0;
  let x_1631 : vec3<f32> = max(x_1630, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1632 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1631.x, x_1631.y, x_1631.z, x_1632.w);
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

