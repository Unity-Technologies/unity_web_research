struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_Lut_Params : vec4<f32>,
  x_UserLut_Params : vec4<f32>,
  x_Bloom_Params : vec4<f32>,
  x_Bloom_RGBM : f32,
  x_Chroma_Params : f32,
  @size(8)
  padding_1 : u32,
  x_Vignette_Params1 : vec4<f32>,
  x_Vignette_Params2 : vec4<f32>,
  x_Dithering_Params : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_38 : PGlobals;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_LinearClamp : sampler;

@group(0) @binding(1) var x_Bloom_Texture : texture_2d<f32>;

@group(0) @binding(3) var x_UserLut : texture_2d<f32>;

@group(0) @binding(2) var x_InternalLut : texture_2d<f32>;

@group(0) @binding(4) var x_BlueNoise_Texture : texture_2d<f32>;

@group(0) @binding(6) var sampler_PointRepeat : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb16 : bool;
  var u_xlat2 : vec4<f32>;
  var u_xlatb15 : bool;
  var u_xlat15 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat10 : vec2<f32>;
  var u_xlatb1 : bool;
  var u_xlatb5 : bool;
  var x_436 : f32;
  var x_445 : f32;
  var u_xlatb10 : vec2<bool>;
  var u_xlat11 : vec2<f32>;
  var u_xlat16 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlatb8 : bool;
  var x_585 : f32;
  var x_635 : f32;
  var x_662 : f32;
  var x_686 : f32;
  var x_697 : f32;
  var u_xlatb0 : vec3<bool>;
  var u_xlatb3 : vec3<bool>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_1123 : f32;
  var x_1135 : f32;
  var x_1147 : f32;
  var u_xlat4 : vec2<f32>;
  var x_1300 : f32;
  var x_1312 : f32;
  var x_1324 : f32;
  var x_1459 : f32;
  var x_1471 : f32;
  var x_1483 : f32;
  var x_1570 : f32;
  var x_1582 : f32;
  var x_1594 : f32;
  var x_1651 : f32;
  var x_1663 : f32;
  var x_1675 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = ((vec4<f32>(x_13.x, x_13.y, x_13.x, x_13.y) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_22 : vec4<f32> = u_xlat0;
  let x_24 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec2<f32>(x_22.z, x_22.w), vec2<f32>(x_24.z, x_24.w));
  let x_31 : vec4<f32> = u_xlat0;
  let x_32 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_31 * vec4<f32>(x_32.x, x_32.x, x_32.x, x_32.x));
  let x_35 : vec4<f32> = u_xlat0;
  let x_43 : f32 = x_38.x_Chroma_Params;
  u_xlat0 = (x_35 * vec4<f32>(x_43, x_43, x_43, x_43));
  let x_56 : vec2<f32> = vs_TEXCOORD0;
  let x_59 : f32 = x_38.x_GlobalMipBias.x;
  let x_60 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, x_56, x_59);
  u_xlat1.x = x_60.x;
  let x_63 : vec4<f32> = u_xlat0;
  let x_68 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = ((x_63 * vec4<f32>(-0.333333343f, -0.333333343f, -0.666666687f, -0.666666687f)) + vec4<f32>(x_68.x, x_68.y, x_68.x, x_68.y));
  let x_74 : vec4<f32> = u_xlat0;
  let x_77 : f32 = x_38.x_GlobalMipBias.x;
  let x_78 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_74.x, x_74.y), x_77);
  u_xlat1.y = x_78.y;
  let x_85 : vec4<f32> = u_xlat0;
  let x_88 : f32 = x_38.x_GlobalMipBias.x;
  let x_89 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_85.z, x_85.w), x_88);
  u_xlat1.z = x_89.z;
  let x_97 : vec2<f32> = vs_TEXCOORD0;
  let x_99 : f32 = x_38.x_GlobalMipBias.x;
  let x_100 : vec4<f32> = textureSampleBias(x_Bloom_Texture, sampler_LinearClamp, x_97, x_99);
  u_xlat0 = x_100;
  let x_107 : f32 = x_38.x_Bloom_RGBM;
  u_xlatb16 = (0.0f < x_107);
  let x_109 : bool = u_xlatb16;
  if (x_109) {
    let x_114 : vec4<f32> = u_xlat0;
    let x_116 : vec4<f32> = u_xlat0;
    let x_118 : vec3<f32> = (vec3<f32>(x_114.w, x_114.w, x_114.w) * vec3<f32>(x_116.x, x_116.y, x_116.z));
    let x_119 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_118.x, x_118.y, x_118.z, x_119.w);
    let x_121 : vec4<f32> = u_xlat2;
    let x_125 : vec3<f32> = (vec3<f32>(x_121.x, x_121.y, x_121.z) * vec3<f32>(8.0f, 8.0f, 8.0f));
    let x_126 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_125.x, x_125.y, x_125.z, x_126.w);
  }
  let x_128 : vec4<f32> = u_xlat0;
  let x_133 : vec4<f32> = x_38.x_Bloom_Params;
  let x_135 : vec3<f32> = (vec3<f32>(x_128.x, x_128.y, x_128.z) * vec3<f32>(x_133.x, x_133.x, x_133.x));
  let x_136 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_135.x, x_135.y, x_135.z, x_136.w);
  let x_138 : vec4<f32> = u_xlat0;
  let x_141 : vec4<f32> = x_38.x_Bloom_Params;
  let x_144 : vec4<f32> = u_xlat1;
  let x_146 : vec3<f32> = ((vec3<f32>(x_138.x, x_138.y, x_138.z) * vec3<f32>(x_141.y, x_141.z, x_141.w)) + vec3<f32>(x_144.x, x_144.y, x_144.z));
  let x_147 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_146.x, x_146.y, x_146.z, x_147.w);
  let x_152 : f32 = x_38.x_Vignette_Params2.z;
  u_xlatb15 = (0.0f < x_152);
  let x_154 : bool = u_xlatb15;
  if (x_154) {
    let x_157 : vec2<f32> = vs_TEXCOORD0;
    let x_159 : vec4<f32> = x_38.x_Vignette_Params2;
    let x_162 : vec2<f32> = (x_157 + -(vec2<f32>(x_159.x, x_159.y)));
    let x_163 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_162.x, x_162.y, x_163.z, x_163.w);
    let x_165 : vec4<f32> = u_xlat1;
    let x_169 : vec4<f32> = x_38.x_Vignette_Params2;
    let x_171 : vec2<f32> = (abs(vec2<f32>(x_165.x, x_165.y)) * vec2<f32>(x_169.z, x_169.z));
    let x_172 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_172.x, x_171.x, x_171.y, x_172.w);
    let x_175 : f32 = u_xlat1.y;
    let x_179 : f32 = x_38.x_Vignette_Params1.w;
    u_xlat1.x = (x_175 * x_179);
    let x_183 : vec4<f32> = u_xlat1;
    let x_185 : vec4<f32> = u_xlat1;
    u_xlat15 = dot(vec2<f32>(x_183.x, x_183.z), vec2<f32>(x_185.x, x_185.z));
    let x_188 : f32 = u_xlat15;
    u_xlat15 = (-(x_188) + 1.0f);
    let x_192 : f32 = u_xlat15;
    u_xlat15 = max(x_192, 0.0f);
    let x_194 : f32 = u_xlat15;
    u_xlat15 = log2(x_194);
    let x_196 : f32 = u_xlat15;
    let x_198 : f32 = x_38.x_Vignette_Params2.w;
    u_xlat15 = (x_196 * x_198);
    let x_200 : f32 = u_xlat15;
    u_xlat15 = exp2(x_200);
    let x_203 : vec4<f32> = x_38.x_Vignette_Params1;
    let x_207 : vec3<f32> = (-(vec3<f32>(x_203.x, x_203.y, x_203.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_208 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_207.x, x_207.y, x_207.z, x_208.w);
    let x_210 : f32 = u_xlat15;
    let x_212 : vec4<f32> = u_xlat1;
    let x_216 : vec4<f32> = x_38.x_Vignette_Params1;
    let x_218 : vec3<f32> = ((vec3<f32>(x_210, x_210, x_210) * vec3<f32>(x_212.x, x_212.y, x_212.z)) + vec3<f32>(x_216.x, x_216.y, x_216.z));
    let x_219 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_218.x, x_218.y, x_218.z, x_219.w);
    let x_221 : vec4<f32> = u_xlat0;
    let x_223 : vec4<f32> = u_xlat1;
    let x_225 : vec3<f32> = (vec3<f32>(x_221.x, x_221.y, x_221.z) * vec3<f32>(x_223.x, x_223.y, x_223.z));
    let x_226 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_225.x, x_225.y, x_225.z, x_226.w);
  }
  let x_228 : vec4<f32> = u_xlat0;
  let x_232 : vec4<f32> = x_38.x_Lut_Params;
  let x_234 : vec3<f32> = (vec3<f32>(x_228.x, x_228.y, x_228.z) * vec3<f32>(x_232.w, x_232.w, x_232.w));
  let x_235 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_234.x, x_234.y, x_234.z, x_235.w);
  let x_243 : vec4<f32> = u_xlat0;
  u_xlat6.x = dot(vec3<f32>(0.439700991f, 0.382977992f, 0.177334994f), vec3<f32>(x_243.x, x_243.y, x_243.z));
  let x_251 : vec4<f32> = u_xlat0;
  u_xlat6.y = dot(vec3<f32>(0.089792296f, 0.813422978f, 0.096761599f), vec3<f32>(x_251.x, x_251.y, x_251.z));
  let x_259 : vec4<f32> = u_xlat0;
  u_xlat6.z = dot(vec3<f32>(0.017543999f, 0.111543998f, 0.870703995f), vec3<f32>(x_259.x, x_259.y, x_259.z));
  let x_264 : f32 = u_xlat6.y;
  let x_266 : f32 = u_xlat6.x;
  u_xlat0.x = min(x_264, x_266);
  let x_270 : f32 = u_xlat6.z;
  let x_272 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_270, x_272);
  let x_277 : f32 = u_xlat6.y;
  let x_279 : f32 = u_xlat6.x;
  u_xlat5.x = max(x_277, x_279);
  let x_283 : f32 = u_xlat6.z;
  let x_285 : f32 = u_xlat5.x;
  u_xlat0.y = max(x_283, x_285);
  let x_288 : vec4<f32> = u_xlat0;
  let x_293 : vec3<f32> = max(vec3<f32>(x_288.x, x_288.y, x_288.y), vec3<f32>(0.0001f, 0.0001f, 0.01f));
  let x_294 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_293.x, x_293.y, x_293.z, x_294.w);
  let x_297 : f32 = u_xlat0.x;
  let x_300 : f32 = u_xlat0.y;
  u_xlat0.x = (-(x_297) + x_300);
  let x_304 : f32 = u_xlat0.x;
  let x_306 : f32 = u_xlat0.z;
  u_xlat0.x = (x_304 / x_306);
  let x_309 : vec3<f32> = u_xlat6;
  let x_312 : vec3<f32> = u_xlat6;
  u_xlat5 = (-(vec3<f32>(x_309.y, x_309.x, x_309.z)) + vec3<f32>(x_312.z, x_312.y, x_312.x));
  let x_315 : vec3<f32> = u_xlat5;
  let x_317 : vec3<f32> = u_xlat6;
  let x_319 : vec2<f32> = (vec2<f32>(x_315.x, x_315.y) * vec2<f32>(x_317.z, x_317.y));
  let x_320 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_319.x, x_319.y, x_320.z);
  let x_323 : f32 = u_xlat5.y;
  let x_325 : f32 = u_xlat5.x;
  u_xlat5.x = (x_323 + x_325);
  let x_329 : f32 = u_xlat6.x;
  let x_331 : f32 = u_xlat5.z;
  let x_334 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_329 * x_331) + x_334);
  let x_338 : f32 = u_xlat5.x;
  u_xlat5.x = max(x_338, 0.0f);
  let x_342 : f32 = u_xlat5.x;
  u_xlat5.x = sqrt(x_342);
  let x_348 : f32 = u_xlat6.y;
  let x_350 : f32 = u_xlat6.z;
  u_xlat10.x = (x_348 + x_350);
  let x_354 : f32 = u_xlat6.x;
  let x_356 : f32 = u_xlat10.x;
  u_xlat10.x = (x_354 + x_356);
  let x_360 : f32 = u_xlat5.x;
  let x_364 : f32 = u_xlat10.x;
  u_xlat5.x = ((x_360 * 1.75f) + x_364);
  let x_368 : f32 = u_xlat0.x;
  u_xlat15 = (x_368 + -0.400000006f);
  let x_371 : f32 = u_xlat15;
  u_xlat1.x = (x_371 * 2.5f);
  let x_376 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_376)) + 1.0f);
  let x_382 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_382, 0.0f);
  let x_385 : f32 = u_xlat15;
  u_xlatb15 = (x_385 >= 0.0f);
  let x_387 : bool = u_xlatb15;
  u_xlat15 = select(-1.0f, 1.0f, x_387);
  let x_390 : f32 = u_xlat1.x;
  let x_393 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_390) * x_393) + 1.0f);
  let x_397 : f32 = u_xlat15;
  let x_399 : f32 = u_xlat1.x;
  u_xlat5.z = ((x_397 * x_399) + 1.0f);
  let x_403 : vec3<f32> = u_xlat5;
  u_xlat10 = (vec2<f32>(x_403.x, x_403.z) * vec2<f32>(0.333333343f, 0.025f));
  let x_412 : f32 = u_xlat5.x;
  u_xlatb1 = (0.159999996f >= x_412);
  let x_416 : f32 = u_xlat5.x;
  u_xlatb5 = (x_416 >= 0.479999989f);
  let x_421 : f32 = u_xlat10.x;
  u_xlat10.x = (0.079999998f / x_421);
  let x_425 : f32 = u_xlat10.x;
  u_xlat10.x = (x_425 + -0.5f);
  let x_430 : f32 = u_xlat10.x;
  let x_432 : f32 = u_xlat10.y;
  u_xlat10.x = (x_430 * x_432);
  let x_435 : bool = u_xlatb5;
  if (x_435) {
    x_436 = 0.0f;
  } else {
    let x_441 : f32 = u_xlat10.x;
    x_436 = x_441;
  }
  let x_442 : f32 = x_436;
  u_xlat5.x = x_442;
  let x_444 : bool = u_xlatb1;
  if (x_444) {
    let x_449 : f32 = u_xlat10.y;
    x_445 = x_449;
  } else {
    let x_452 : f32 = u_xlat5.x;
    x_445 = x_452;
  }
  let x_453 : f32 = x_445;
  u_xlat5.x = x_453;
  let x_456 : f32 = u_xlat5.x;
  u_xlat5.x = (x_456 + 1.0f);
  let x_459 : vec3<f32> = u_xlat5;
  let x_461 : vec3<f32> = u_xlat6;
  let x_462 : vec3<f32> = (vec3<f32>(x_459.x, x_459.x, x_459.x) * x_461);
  let x_463 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_463.x, x_462.x, x_462.y, x_462.z);
  let x_468 : vec4<f32> = u_xlat2;
  let x_470 : vec4<f32> = u_xlat2;
  let x_473 : vec4<bool> = (vec4<f32>(x_468.z, x_468.w, x_468.z, x_468.w) == vec4<f32>(x_470.y, x_470.z, x_470.y, x_470.z));
  u_xlatb10 = vec2<bool>(x_473.x, x_473.y);
  let x_476 : bool = u_xlatb10.y;
  let x_478 : bool = u_xlatb10.x;
  u_xlatb10.x = (x_476 & x_478);
  let x_482 : f32 = u_xlat6.y;
  let x_484 : f32 = u_xlat5.x;
  let x_487 : f32 = u_xlat2.w;
  u_xlat15 = ((x_482 * x_484) + -(x_487));
  let x_490 : f32 = u_xlat15;
  u_xlat15 = (x_490 * 1.732050776f);
  let x_494 : f32 = u_xlat2.y;
  let x_497 : f32 = u_xlat2.z;
  u_xlat1.x = ((x_494 * 2.0f) + -(x_497));
  let x_502 : f32 = u_xlat6.z;
  let x_505 : f32 = u_xlat5.x;
  let x_508 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_502) * x_505) + x_508);
  let x_512 : f32 = u_xlat15;
  let x_515 : f32 = u_xlat1.x;
  u_xlat11.x = min(abs(x_512), abs(x_515));
  let x_520 : f32 = u_xlat15;
  let x_523 : f32 = u_xlat1.x;
  u_xlat16 = max(abs(x_520), abs(x_523));
  let x_526 : f32 = u_xlat16;
  u_xlat16 = (1.0f / x_526);
  let x_528 : f32 = u_xlat16;
  let x_530 : f32 = u_xlat11.x;
  u_xlat11.x = (x_528 * x_530);
  let x_534 : f32 = u_xlat11.x;
  let x_536 : f32 = u_xlat11.x;
  u_xlat16 = (x_534 * x_536);
  let x_539 : f32 = u_xlat16;
  u_xlat3.x = ((x_539 * 0.0208351f) + -0.085133001f);
  let x_545 : f32 = u_xlat16;
  let x_547 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_545 * x_547) + 0.180141002f);
  let x_552 : f32 = u_xlat16;
  let x_554 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_552 * x_554) + -0.330299497f);
  let x_559 : f32 = u_xlat16;
  let x_561 : f32 = u_xlat3.x;
  u_xlat16 = ((x_559 * x_561) + 0.999866009f);
  let x_565 : f32 = u_xlat16;
  let x_567 : f32 = u_xlat11.x;
  u_xlat3.x = (x_565 * x_567);
  let x_572 : f32 = u_xlat1.x;
  let x_574 : f32 = u_xlat15;
  u_xlatb8 = (abs(x_572) < abs(x_574));
  let x_578 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_578 * -2.0f) + 1.570796371f);
  let x_584 : bool = u_xlatb8;
  if (x_584) {
    let x_589 : f32 = u_xlat3.x;
    x_585 = x_589;
  } else {
    x_585 = 0.0f;
  }
  let x_591 : f32 = x_585;
  u_xlat3.x = x_591;
  let x_594 : f32 = u_xlat11.x;
  let x_595 : f32 = u_xlat16;
  let x_598 : f32 = u_xlat3.x;
  u_xlat11.x = ((x_594 * x_595) + x_598);
  let x_602 : f32 = u_xlat1.x;
  let x_604 : f32 = u_xlat1.x;
  u_xlatb16 = (x_602 < -(x_604));
  let x_607 : bool = u_xlatb16;
  u_xlat16 = select(0.0f, -3.141592741f, x_607);
  let x_610 : f32 = u_xlat16;
  let x_612 : f32 = u_xlat11.x;
  u_xlat11.x = (x_610 + x_612);
  let x_615 : f32 = u_xlat15;
  let x_617 : f32 = u_xlat1.x;
  u_xlat16 = min(x_615, x_617);
  let x_619 : f32 = u_xlat15;
  let x_621 : f32 = u_xlat1.x;
  u_xlat15 = max(x_619, x_621);
  let x_623 : f32 = u_xlat16;
  let x_624 : f32 = u_xlat16;
  u_xlatb1 = (x_623 < -(x_624));
  let x_627 : f32 = u_xlat15;
  let x_628 : f32 = u_xlat15;
  u_xlatb15 = (x_627 >= -(x_628));
  let x_631 : bool = u_xlatb15;
  let x_632 : bool = u_xlatb1;
  u_xlatb15 = (x_631 & x_632);
  let x_634 : bool = u_xlatb15;
  if (x_634) {
    let x_639 : f32 = u_xlat11.x;
    x_635 = -(x_639);
  } else {
    let x_643 : f32 = u_xlat11.x;
    x_635 = x_643;
  }
  let x_644 : f32 = x_635;
  u_xlat15 = x_644;
  let x_645 : f32 = u_xlat15;
  u_xlat15 = (x_645 * 57.295780182f);
  let x_649 : bool = u_xlatb10.x;
  let x_650 : f32 = u_xlat15;
  u_xlat10.x = select(x_650, 0.0f, x_649);
  let x_654 : f32 = u_xlat10.x;
  u_xlatb15 = (x_654 < 0.0f);
  let x_657 : f32 = u_xlat10.x;
  u_xlat1.x = (x_657 + 360.0f);
  let x_661 : bool = u_xlatb15;
  if (x_661) {
    let x_666 : f32 = u_xlat1.x;
    x_662 = x_666;
  } else {
    let x_669 : f32 = u_xlat10.x;
    x_662 = x_669;
  }
  let x_670 : f32 = x_662;
  u_xlat10.x = x_670;
  let x_673 : f32 = u_xlat10.x;
  u_xlatb15 = (x_673 < -180.0f);
  let x_678 : f32 = u_xlat10.x;
  u_xlatb1 = (180.0f < x_678);
  let x_680 : vec2<f32> = u_xlat10;
  u_xlat11 = (vec2<f32>(x_680.x, x_680.x) + vec2<f32>(360.0f, -360.0f));
  let x_685 : bool = u_xlatb1;
  if (x_685) {
    let x_690 : f32 = u_xlat11.y;
    x_686 = x_690;
  } else {
    let x_693 : f32 = u_xlat10.x;
    x_686 = x_693;
  }
  let x_694 : f32 = x_686;
  u_xlat10.x = x_694;
  let x_696 : bool = u_xlatb15;
  if (x_696) {
    let x_701 : f32 = u_xlat11.x;
    x_697 = x_701;
  } else {
    let x_704 : f32 = u_xlat10.x;
    x_697 = x_704;
  }
  let x_705 : f32 = x_697;
  u_xlat10.x = x_705;
  let x_708 : f32 = u_xlat10.x;
  u_xlat10.x = (x_708 * 0.014814815f);
  let x_713 : f32 = u_xlat10.x;
  u_xlat10.x = (-(abs(x_713)) + 1.0f);
  let x_719 : f32 = u_xlat10.x;
  u_xlat10.x = max(x_719, 0.0f);
  let x_723 : f32 = u_xlat10.x;
  u_xlat15 = ((x_723 * -2.0f) + 3.0f);
  let x_728 : f32 = u_xlat10.x;
  let x_730 : f32 = u_xlat10.x;
  u_xlat10.x = (x_728 * x_730);
  let x_734 : f32 = u_xlat10.x;
  let x_735 : f32 = u_xlat15;
  u_xlat10.x = (x_734 * x_735);
  let x_739 : f32 = u_xlat10.x;
  let x_741 : f32 = u_xlat10.x;
  u_xlat10.x = (x_739 * x_741);
  let x_745 : f32 = u_xlat0.x;
  let x_747 : f32 = u_xlat10.x;
  u_xlat0.x = (x_745 * x_747);
  let x_751 : f32 = u_xlat6.x;
  let x_754 : f32 = u_xlat5.x;
  u_xlat5.x = ((-(x_751) * x_754) + 0.029999999f);
  let x_760 : f32 = u_xlat5.x;
  let x_762 : f32 = u_xlat0.x;
  u_xlat0.x = (x_760 * x_762);
  let x_766 : f32 = u_xlat0.x;
  let x_770 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_766 * 0.180000007f) + x_770);
  let x_777 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(1.451439261f, -0.236510754f, -0.214928567f), vec3<f32>(x_777.x, x_777.z, x_777.w));
  let x_785 : vec4<f32> = u_xlat2;
  u_xlat0.y = dot(vec3<f32>(-0.076553777f, 1.176229715f, -0.099675924f), vec3<f32>(x_785.x, x_785.z, x_785.w));
  let x_793 : vec4<f32> = u_xlat2;
  u_xlat0.z = dot(vec3<f32>(0.008316148f, -0.00603244966f, 0.997716308f), vec3<f32>(x_793.x, x_793.z, x_793.w));
  let x_797 : vec4<f32> = u_xlat0;
  let x_800 : vec3<f32> = max(vec3<f32>(x_797.x, x_797.y, x_797.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_801 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_800.x, x_800.y, x_800.z, x_801.w);
  let x_803 : vec4<f32> = u_xlat0;
  u_xlat15 = dot(vec3<f32>(x_803.x, x_803.y, x_803.z), vec3<f32>(0.272228986f, 0.674081981f, 0.053689498f));
  let x_810 : f32 = u_xlat15;
  let x_813 : vec4<f32> = u_xlat0;
  let x_815 : vec3<f32> = (-(vec3<f32>(x_810, x_810, x_810)) + vec3<f32>(x_813.x, x_813.y, x_813.z));
  let x_816 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_815.x, x_815.y, x_815.z, x_816.w);
  let x_818 : vec4<f32> = u_xlat0;
  let x_823 : f32 = u_xlat15;
  let x_825 : vec3<f32> = ((vec3<f32>(x_818.x, x_818.y, x_818.z) * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f)) + vec3<f32>(x_823, x_823, x_823));
  let x_826 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_825.x, x_825.y, x_825.z, x_826.w);
  let x_828 : vec4<f32> = u_xlat0;
  let x_832 : vec3<f32> = (vec3<f32>(x_828.x, x_828.y, x_828.z) + vec3<f32>(0.024578599f, 0.024578599f, 0.024578599f));
  let x_833 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_832.x, x_832.y, x_832.z, x_833.w);
  let x_835 : vec4<f32> = u_xlat0;
  let x_837 : vec4<f32> = u_xlat1;
  let x_842 : vec3<f32> = ((vec3<f32>(x_835.x, x_835.y, x_835.z) * vec3<f32>(x_837.x, x_837.y, x_837.z)) + vec3<f32>(-0.000090537f, -0.000090537f, -0.000090537f));
  let x_843 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_842.x, x_842.y, x_842.z, x_843.w);
  let x_845 : vec4<f32> = u_xlat0;
  let x_852 : vec3<f32> = ((vec3<f32>(x_845.x, x_845.y, x_845.z) * vec3<f32>(0.983729005f, 0.983729005f, 0.983729005f)) + vec3<f32>(0.432951003f, 0.432951003f, 0.432951003f));
  let x_853 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_852.x, x_852.y, x_852.z, x_853.w);
  let x_855 : vec4<f32> = u_xlat0;
  let x_857 : vec4<f32> = u_xlat2;
  let x_862 : vec3<f32> = ((vec3<f32>(x_855.x, x_855.y, x_855.z) * vec3<f32>(x_857.x, x_857.y, x_857.z)) + vec3<f32>(0.238080993f, 0.238080993f, 0.238080993f));
  let x_863 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_862.x, x_862.y, x_862.z, x_863.w);
  let x_865 : vec4<f32> = u_xlat1;
  let x_867 : vec4<f32> = u_xlat0;
  let x_869 : vec3<f32> = (vec3<f32>(x_865.x, x_865.y, x_865.z) / vec3<f32>(x_867.x, x_867.y, x_867.z));
  let x_870 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_869.x, x_869.y, x_869.z, x_870.w);
  let x_876 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(0.662454188f, 0.134004205f, 0.156187683f), vec3<f32>(x_876.x, x_876.y, x_876.z));
  let x_884 : vec4<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(0.272228718f, 0.674081743f, 0.053689517f), vec3<f32>(x_884.x, x_884.y, x_884.z));
  let x_892 : vec4<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(-0.00557464967f, 0.0040607336f, 1.010339141f), vec3<f32>(x_892.x, x_892.y, x_892.z));
  let x_896 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(x_896.x, x_896.y, x_896.z), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_901 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_901, 0.0001f);
  let x_904 : vec4<f32> = u_xlat1;
  let x_906 : vec4<f32> = u_xlat0;
  let x_908 : vec2<f32> = (vec2<f32>(x_904.x, x_904.y) / vec2<f32>(x_906.x, x_906.x));
  let x_909 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_908.x, x_908.y, x_909.z, x_909.w);
  let x_912 : f32 = u_xlat1.y;
  u_xlat15 = max(x_912, 0.0f);
  let x_914 : f32 = u_xlat15;
  u_xlat15 = min(x_914, 65504.0f);
  let x_917 : f32 = u_xlat15;
  u_xlat15 = log2(x_917);
  let x_919 : f32 = u_xlat15;
  u_xlat15 = (x_919 * 0.981100023f);
  let x_922 : f32 = u_xlat15;
  u_xlat1.y = exp2(x_922);
  let x_926 : f32 = u_xlat0.y;
  u_xlat15 = max(x_926, 0.0001f);
  let x_929 : f32 = u_xlat1.y;
  let x_930 : f32 = u_xlat15;
  u_xlat15 = (x_929 / x_930);
  let x_933 : f32 = u_xlat0.x;
  u_xlat16 = (-(x_933) + 1.0f);
  let x_937 : f32 = u_xlat0.y;
  let x_939 : f32 = u_xlat16;
  u_xlat0.z = (-(x_937) + x_939);
  let x_942 : f32 = u_xlat15;
  let x_944 : vec4<f32> = u_xlat0;
  let x_946 : vec2<f32> = (vec2<f32>(x_942, x_942) * vec2<f32>(x_944.x, x_944.z));
  let x_947 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_946.x, x_947.y, x_946.y, x_947.w);
  let x_953 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(1.641023397f, -0.324803293f, -0.236424699f), vec3<f32>(x_953.x, x_953.y, x_953.z));
  let x_961 : vec4<f32> = u_xlat1;
  u_xlat0.y = dot(vec3<f32>(-0.663662851f, 1.61533165f, 0.016756348f), vec3<f32>(x_961.x, x_961.y, x_961.z));
  let x_969 : vec4<f32> = u_xlat1;
  u_xlat0.z = dot(vec3<f32>(0.011721894f, -0.008284442f, 0.988394856f), vec3<f32>(x_969.x, x_969.y, x_969.z));
  let x_973 : vec4<f32> = u_xlat0;
  u_xlat15 = dot(vec3<f32>(x_973.x, x_973.y, x_973.z), vec3<f32>(0.272228986f, 0.674081981f, 0.053689498f));
  let x_976 : f32 = u_xlat15;
  let x_979 : vec4<f32> = u_xlat0;
  let x_981 : vec3<f32> = (-(vec3<f32>(x_976, x_976, x_976)) + vec3<f32>(x_979.x, x_979.y, x_979.z));
  let x_982 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_981.x, x_981.y, x_981.z, x_982.w);
  let x_984 : vec4<f32> = u_xlat0;
  let x_989 : f32 = u_xlat15;
  let x_991 : vec3<f32> = ((vec3<f32>(x_984.x, x_984.y, x_984.z) * vec3<f32>(0.930000007f, 0.930000007f, 0.930000007f)) + vec3<f32>(x_989, x_989, x_989));
  let x_992 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_991.x, x_991.y, x_991.z, x_992.w);
  let x_994 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(0.662454188f, 0.134004205f, 0.156187683f), vec3<f32>(x_994.x, x_994.y, x_994.z));
  let x_998 : vec4<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(0.272228718f, 0.674081743f, 0.053689517f), vec3<f32>(x_998.x, x_998.y, x_998.z));
  let x_1002 : vec4<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(-0.00557464967f, 0.0040607336f, 1.010339141f), vec3<f32>(x_1002.x, x_1002.y, x_1002.z));
  let x_1010 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(0.987223983f, -0.00611327f, 0.015953301f), vec3<f32>(x_1010.x, x_1010.y, x_1010.z));
  let x_1018 : vec4<f32> = u_xlat1;
  u_xlat0.y = dot(vec3<f32>(-0.00759836f, 1.001860023f, 0.0053302f), vec3<f32>(x_1018.x, x_1018.y, x_1018.z));
  let x_1026 : vec4<f32> = u_xlat1;
  u_xlat0.z = dot(vec3<f32>(0.00307257f, -0.00509595f, 1.081680059f), vec3<f32>(x_1026.x, x_1026.y, x_1026.z));
  let x_1034 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(3.240969896f, -1.537383199f, -0.498610765f), vec3<f32>(x_1034.x, x_1034.y, x_1034.z));
  let x_1039 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1039, 0.0f, 1.0f);
  let x_1046 : vec4<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(-0.969243646f, 1.875967503f, 0.041555058f), vec3<f32>(x_1046.x, x_1046.y, x_1046.z));
  let x_1051 : f32 = u_xlat1.y;
  u_xlat1.y = clamp(x_1051, 0.0f, 1.0f);
  let x_1058 : vec4<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(0.05563008f, -0.203976959f, 1.05697155f), vec3<f32>(x_1058.x, x_1058.y, x_1058.z));
  let x_1063 : f32 = u_xlat1.z;
  u_xlat1.z = clamp(x_1063, 0.0f, 1.0f);
  let x_1071 : f32 = x_38.x_UserLut_Params.w;
  u_xlatb0.x = (0.0f < x_1071);
  let x_1075 : bool = u_xlatb0.x;
  if (x_1075) {
    let x_1078 : vec4<f32> = u_xlat1;
    let x_1082 : vec3<f32> = (vec3<f32>(x_1078.x, x_1078.y, x_1078.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
    let x_1083 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1082.x, x_1082.y, x_1082.z, x_1083.w);
    let x_1085 : vec4<f32> = u_xlat1;
    let x_1087 : vec3<f32> = log2(vec3<f32>(x_1085.x, x_1085.y, x_1085.z));
    let x_1088 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1087.x, x_1087.y, x_1087.z, x_1088.w);
    let x_1090 : vec4<f32> = u_xlat2;
    let x_1094 : vec3<f32> = (vec3<f32>(x_1090.x, x_1090.y, x_1090.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
    let x_1095 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1094.x, x_1094.y, x_1094.z, x_1095.w);
    let x_1097 : vec4<f32> = u_xlat2;
    let x_1099 : vec3<f32> = exp2(vec3<f32>(x_1097.x, x_1097.y, x_1097.z));
    let x_1100 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1099.x, x_1099.y, x_1099.z, x_1100.w);
    let x_1102 : vec4<f32> = u_xlat2;
    let x_1109 : vec3<f32> = ((vec3<f32>(x_1102.x, x_1102.y, x_1102.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
    let x_1110 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1109.x, x_1109.y, x_1109.z, x_1110.w);
    let x_1115 : vec4<f32> = u_xlat1;
    let x_1117 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1115.x, x_1115.y, x_1115.z, x_1115.x));
    u_xlatb3 = vec3<bool>(x_1117.x, x_1117.y, x_1117.z);
    let x_1120 : vec4<f32> = u_xlat0;
    hlslcc_movcTemp = x_1120;
    let x_1122 : bool = u_xlatb3.x;
    if (x_1122) {
      let x_1127 : f32 = u_xlat0.x;
      x_1123 = x_1127;
    } else {
      let x_1130 : f32 = u_xlat2.x;
      x_1123 = x_1130;
    }
    let x_1131 : f32 = x_1123;
    hlslcc_movcTemp.x = x_1131;
    let x_1134 : bool = u_xlatb3.y;
    if (x_1134) {
      let x_1139 : f32 = u_xlat0.y;
      x_1135 = x_1139;
    } else {
      let x_1142 : f32 = u_xlat2.y;
      x_1135 = x_1142;
    }
    let x_1143 : f32 = x_1135;
    hlslcc_movcTemp.y = x_1143;
    let x_1146 : bool = u_xlatb3.z;
    if (x_1146) {
      let x_1151 : f32 = u_xlat0.z;
      x_1147 = x_1151;
    } else {
      let x_1154 : f32 = u_xlat2.z;
      x_1147 = x_1154;
    }
    let x_1155 : f32 = x_1147;
    hlslcc_movcTemp.z = x_1155;
    let x_1157 : vec4<f32> = hlslcc_movcTemp;
    u_xlat0 = x_1157;
    let x_1158 : vec4<f32> = u_xlat0;
    let x_1161 : vec4<f32> = x_38.x_UserLut_Params;
    let x_1163 : vec3<f32> = (vec3<f32>(x_1158.z, x_1158.x, x_1158.y) * vec3<f32>(x_1161.z, x_1161.z, x_1161.z));
    let x_1164 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1163.x, x_1163.y, x_1163.z, x_1164.w);
    let x_1167 : f32 = u_xlat2.x;
    u_xlat15 = floor(x_1167);
    let x_1170 : vec4<f32> = x_38.x_UserLut_Params;
    let x_1174 : vec2<f32> = (vec2<f32>(x_1170.x, x_1170.y) * vec2<f32>(0.5f, 0.5f));
    let x_1175 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1174.x, x_1175.y, x_1175.z, x_1174.y);
    let x_1177 : vec4<f32> = u_xlat2;
    let x_1180 : vec4<f32> = x_38.x_UserLut_Params;
    let x_1183 : vec4<f32> = u_xlat2;
    let x_1185 : vec2<f32> = ((vec2<f32>(x_1177.y, x_1177.z) * vec2<f32>(x_1180.x, x_1180.y)) + vec2<f32>(x_1183.x, x_1183.w));
    let x_1186 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1186.x, x_1185.x, x_1185.y, x_1186.w);
    let x_1188 : f32 = u_xlat15;
    let x_1190 : f32 = x_38.x_UserLut_Params.y;
    let x_1193 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_1188 * x_1190) + x_1193);
    let x_1200 : vec4<f32> = u_xlat2;
    let x_1202 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1200.x, x_1200.z), 0.0f);
    u_xlat3 = vec3<f32>(x_1202.x, x_1202.y, x_1202.z);
    let x_1206 : f32 = x_38.x_UserLut_Params.y;
    u_xlat4.x = x_1206;
    u_xlat4.y = 0.0f;
    let x_1209 : vec4<f32> = u_xlat2;
    let x_1211 : vec2<f32> = u_xlat4;
    let x_1212 : vec2<f32> = (vec2<f32>(x_1209.x, x_1209.z) + x_1211);
    let x_1213 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1212.x, x_1212.y, x_1213.z, x_1213.w);
    let x_1218 : vec4<f32> = u_xlat2;
    let x_1220 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1218.x, x_1218.y), 0.0f);
    let x_1221 : vec3<f32> = vec3<f32>(x_1220.x, x_1220.y, x_1220.z);
    let x_1222 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1221.x, x_1221.y, x_1221.z, x_1222.w);
    let x_1225 : f32 = u_xlat0.z;
    let x_1227 : f32 = x_38.x_UserLut_Params.z;
    let x_1229 : f32 = u_xlat15;
    u_xlat15 = ((x_1225 * x_1227) + -(x_1229));
    let x_1232 : vec3<f32> = u_xlat3;
    let x_1234 : vec4<f32> = u_xlat2;
    let x_1236 : vec3<f32> = (-(x_1232) + vec3<f32>(x_1234.x, x_1234.y, x_1234.z));
    let x_1237 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1236.x, x_1236.y, x_1236.z, x_1237.w);
    let x_1239 : f32 = u_xlat15;
    let x_1241 : vec4<f32> = u_xlat2;
    let x_1244 : vec3<f32> = u_xlat3;
    let x_1245 : vec3<f32> = ((vec3<f32>(x_1239, x_1239, x_1239) * vec3<f32>(x_1241.x, x_1241.y, x_1241.z)) + x_1244);
    let x_1246 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1245.x, x_1245.y, x_1245.z, x_1246.w);
    let x_1248 : vec4<f32> = u_xlat0;
    let x_1251 : vec4<f32> = u_xlat2;
    let x_1253 : vec3<f32> = (-(vec3<f32>(x_1248.x, x_1248.y, x_1248.z)) + vec3<f32>(x_1251.x, x_1251.y, x_1251.z));
    let x_1254 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1253.x, x_1253.y, x_1253.z, x_1254.w);
    let x_1257 : vec4<f32> = x_38.x_UserLut_Params;
    let x_1259 : vec4<f32> = u_xlat2;
    let x_1262 : vec4<f32> = u_xlat0;
    let x_1264 : vec3<f32> = ((vec3<f32>(x_1257.w, x_1257.w, x_1257.w) * vec3<f32>(x_1259.x, x_1259.y, x_1259.z)) + vec3<f32>(x_1262.x, x_1262.y, x_1262.z));
    let x_1265 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1264.x, x_1264.y, x_1264.z, x_1265.w);
    let x_1267 : vec4<f32> = u_xlat0;
    let x_1271 : vec3<f32> = (vec3<f32>(x_1267.x, x_1267.y, x_1267.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
    let x_1272 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1271.x, x_1271.y, x_1271.z, x_1272.w);
    let x_1274 : vec4<f32> = u_xlat0;
    u_xlat3 = (vec3<f32>(x_1274.x, x_1274.y, x_1274.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
    let x_1279 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_1279 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
    let x_1283 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_1283));
    let x_1286 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_1286 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
    let x_1290 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_1290);
    let x_1294 : vec4<f32> = u_xlat0;
    let x_1296 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1294.x, x_1294.y, x_1294.z, x_1294.x));
    u_xlatb0 = vec3<bool>(x_1296.x, x_1296.y, x_1296.z);
    let x_1299 : bool = u_xlatb0.x;
    if (x_1299) {
      let x_1304 : f32 = u_xlat2.x;
      x_1300 = x_1304;
    } else {
      let x_1307 : f32 = u_xlat3.x;
      x_1300 = x_1307;
    }
    let x_1308 : f32 = x_1300;
    u_xlat1.x = x_1308;
    let x_1311 : bool = u_xlatb0.y;
    if (x_1311) {
      let x_1316 : f32 = u_xlat2.y;
      x_1312 = x_1316;
    } else {
      let x_1319 : f32 = u_xlat3.y;
      x_1312 = x_1319;
    }
    let x_1320 : f32 = x_1312;
    u_xlat1.y = x_1320;
    let x_1323 : bool = u_xlatb0.z;
    if (x_1323) {
      let x_1328 : f32 = u_xlat2.z;
      x_1324 = x_1328;
    } else {
      let x_1331 : f32 = u_xlat3.z;
      x_1324 = x_1331;
    }
    let x_1332 : f32 = x_1324;
    u_xlat1.z = x_1332;
  }
  let x_1334 : vec4<f32> = u_xlat1;
  let x_1337 : vec4<f32> = x_38.x_Lut_Params;
  let x_1339 : vec3<f32> = (vec3<f32>(x_1334.z, x_1334.x, x_1334.y) * vec3<f32>(x_1337.z, x_1337.z, x_1337.z));
  let x_1340 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1339.x, x_1339.y, x_1339.z, x_1340.w);
  let x_1343 : f32 = u_xlat0.x;
  u_xlat0.x = floor(x_1343);
  let x_1347 : vec4<f32> = x_38.x_Lut_Params;
  let x_1349 : vec2<f32> = (vec2<f32>(x_1347.x, x_1347.y) * vec2<f32>(0.5f, 0.5f));
  let x_1350 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1349.x, x_1349.y, x_1350.z, x_1350.w);
  let x_1352 : vec4<f32> = u_xlat0;
  let x_1355 : vec4<f32> = x_38.x_Lut_Params;
  let x_1358 : vec4<f32> = u_xlat1;
  let x_1360 : vec2<f32> = ((vec2<f32>(x_1352.y, x_1352.z) * vec2<f32>(x_1355.x, x_1355.y)) + vec2<f32>(x_1358.x, x_1358.y));
  let x_1361 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1361.x, x_1360.x, x_1360.y, x_1361.w);
  let x_1364 : f32 = u_xlat0.x;
  let x_1366 : f32 = x_38.x_Lut_Params.y;
  let x_1369 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_1364 * x_1366) + x_1369);
  let x_1376 : vec4<f32> = u_xlat2;
  let x_1378 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1376.x, x_1376.z), 0.0f);
  u_xlat5 = vec3<f32>(x_1378.x, x_1378.y, x_1378.z);
  let x_1381 : f32 = x_38.x_Lut_Params.y;
  u_xlat1.x = x_1381;
  u_xlat1.y = 0.0f;
  let x_1384 : vec4<f32> = u_xlat1;
  let x_1386 : vec4<f32> = u_xlat2;
  let x_1388 : vec2<f32> = (vec2<f32>(x_1384.x, x_1384.y) + vec2<f32>(x_1386.x, x_1386.z));
  let x_1389 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1388.x, x_1388.y, x_1389.z, x_1389.w);
  let x_1394 : vec4<f32> = u_xlat1;
  let x_1396 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1394.x, x_1394.y), 0.0f);
  let x_1397 : vec3<f32> = vec3<f32>(x_1396.x, x_1396.y, x_1396.z);
  let x_1398 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1397.x, x_1397.y, x_1398.z, x_1397.z);
  let x_1401 : f32 = u_xlat1.z;
  let x_1403 : f32 = x_38.x_Lut_Params.z;
  let x_1406 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1401 * x_1403) + -(x_1406));
  let x_1410 : vec3<f32> = u_xlat5;
  let x_1412 : vec4<f32> = u_xlat1;
  let x_1414 : vec3<f32> = (-(x_1410) + vec3<f32>(x_1412.x, x_1412.y, x_1412.w));
  let x_1415 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1414.x, x_1414.y, x_1414.z, x_1415.w);
  let x_1417 : vec4<f32> = u_xlat0;
  let x_1419 : vec4<f32> = u_xlat1;
  let x_1422 : vec3<f32> = u_xlat5;
  let x_1423 : vec3<f32> = ((vec3<f32>(x_1417.x, x_1417.x, x_1417.x) * vec3<f32>(x_1419.x, x_1419.y, x_1419.z)) + x_1422);
  let x_1424 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1423.x, x_1423.y, x_1423.z, x_1424.w);
  let x_1426 : vec4<f32> = u_xlat0;
  let x_1428 : vec3<f32> = (vec3<f32>(x_1426.x, x_1426.y, x_1426.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1429 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1428.x, x_1428.y, x_1428.z, x_1429.w);
  let x_1431 : vec4<f32> = u_xlat0;
  let x_1434 : vec3<f32> = log2(abs(vec3<f32>(x_1431.x, x_1431.y, x_1431.z)));
  let x_1435 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1434.x, x_1434.y, x_1434.z, x_1435.w);
  let x_1437 : vec4<f32> = u_xlat2;
  let x_1439 : vec3<f32> = (vec3<f32>(x_1437.x, x_1437.y, x_1437.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1440 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1439.x, x_1439.y, x_1439.z, x_1440.w);
  let x_1442 : vec4<f32> = u_xlat2;
  let x_1444 : vec3<f32> = exp2(vec3<f32>(x_1442.x, x_1442.y, x_1442.z));
  let x_1445 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1444.x, x_1444.y, x_1444.z, x_1445.w);
  let x_1447 : vec4<f32> = u_xlat2;
  let x_1450 : vec3<f32> = ((vec3<f32>(x_1447.x, x_1447.y, x_1447.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1451 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1450.x, x_1450.y, x_1450.z, x_1451.w);
  let x_1453 : vec4<f32> = u_xlat0;
  let x_1455 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1453.x, x_1453.y, x_1453.z, x_1453.x));
  u_xlatb0 = vec3<bool>(x_1455.x, x_1455.y, x_1455.z);
  let x_1458 : bool = u_xlatb0.x;
  if (x_1458) {
    let x_1463 : f32 = u_xlat1.x;
    x_1459 = x_1463;
  } else {
    let x_1466 : f32 = u_xlat2.x;
    x_1459 = x_1466;
  }
  let x_1467 : f32 = x_1459;
  u_xlat0.x = x_1467;
  let x_1470 : bool = u_xlatb0.y;
  if (x_1470) {
    let x_1475 : f32 = u_xlat1.y;
    x_1471 = x_1475;
  } else {
    let x_1478 : f32 = u_xlat2.y;
    x_1471 = x_1478;
  }
  let x_1479 : f32 = x_1471;
  u_xlat0.y = x_1479;
  let x_1482 : bool = u_xlatb0.z;
  if (x_1482) {
    let x_1487 : f32 = u_xlat1.z;
    x_1483 = x_1487;
  } else {
    let x_1490 : f32 = u_xlat2.z;
    x_1483 = x_1490;
  }
  let x_1491 : f32 = x_1483;
  u_xlat0.z = x_1491;
  let x_1493 : vec2<f32> = vs_TEXCOORD0;
  let x_1496 : vec4<f32> = x_38.x_Dithering_Params;
  let x_1500 : vec4<f32> = x_38.x_Dithering_Params;
  let x_1502 : vec2<f32> = ((x_1493 * vec2<f32>(x_1496.x, x_1496.y)) + vec2<f32>(x_1500.z, x_1500.w));
  let x_1503 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1502.x, x_1502.y, x_1503.z, x_1503.w);
  let x_1510 : vec4<f32> = u_xlat1;
  let x_1513 : f32 = x_38.x_GlobalMipBias.x;
  let x_1514 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_1510.x, x_1510.y), x_1513);
  u_xlat15 = x_1514.w;
  let x_1516 : f32 = u_xlat15;
  u_xlat15 = ((x_1516 * 2.0f) + -1.0f);
  let x_1519 : f32 = u_xlat15;
  u_xlatb1 = (x_1519 >= 0.0f);
  let x_1521 : bool = u_xlatb1;
  u_xlat1.x = select(-1.0f, 1.0f, x_1521);
  let x_1524 : f32 = u_xlat15;
  u_xlat15 = (-(abs(x_1524)) + 1.0f);
  let x_1528 : f32 = u_xlat15;
  u_xlat15 = sqrt(x_1528);
  let x_1530 : f32 = u_xlat15;
  u_xlat15 = (-(x_1530) + 1.0f);
  let x_1533 : f32 = u_xlat15;
  let x_1535 : f32 = u_xlat1.x;
  u_xlat15 = (x_1533 * x_1535);
  let x_1537 : vec4<f32> = u_xlat0;
  let x_1539 : vec3<f32> = (vec3<f32>(x_1537.x, x_1537.y, x_1537.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1540 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1539.x, x_1539.y, x_1539.z, x_1540.w);
  let x_1542 : vec4<f32> = u_xlat0;
  let x_1545 : vec3<f32> = log2(abs(vec3<f32>(x_1542.x, x_1542.y, x_1542.z)));
  let x_1546 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1545.x, x_1545.y, x_1545.z, x_1546.w);
  let x_1548 : vec4<f32> = u_xlat2;
  let x_1550 : vec3<f32> = (vec3<f32>(x_1548.x, x_1548.y, x_1548.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1551 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1550.x, x_1550.y, x_1550.z, x_1551.w);
  let x_1553 : vec4<f32> = u_xlat2;
  let x_1555 : vec3<f32> = exp2(vec3<f32>(x_1553.x, x_1553.y, x_1553.z));
  let x_1556 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1555.x, x_1555.y, x_1555.z, x_1556.w);
  let x_1558 : vec4<f32> = u_xlat2;
  let x_1561 : vec3<f32> = ((vec3<f32>(x_1558.x, x_1558.y, x_1558.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1562 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1561.x, x_1561.y, x_1561.z, x_1562.w);
  let x_1564 : vec4<f32> = u_xlat0;
  let x_1566 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1564.x, x_1564.y, x_1564.z, x_1564.x));
  u_xlatb0 = vec3<bool>(x_1566.x, x_1566.y, x_1566.z);
  let x_1569 : bool = u_xlatb0.x;
  if (x_1569) {
    let x_1574 : f32 = u_xlat1.x;
    x_1570 = x_1574;
  } else {
    let x_1577 : f32 = u_xlat2.x;
    x_1570 = x_1577;
  }
  let x_1578 : f32 = x_1570;
  u_xlat0.x = x_1578;
  let x_1581 : bool = u_xlatb0.y;
  if (x_1581) {
    let x_1586 : f32 = u_xlat1.y;
    x_1582 = x_1586;
  } else {
    let x_1589 : f32 = u_xlat2.y;
    x_1582 = x_1589;
  }
  let x_1590 : f32 = x_1582;
  u_xlat0.y = x_1590;
  let x_1593 : bool = u_xlatb0.z;
  if (x_1593) {
    let x_1598 : f32 = u_xlat1.z;
    x_1594 = x_1598;
  } else {
    let x_1601 : f32 = u_xlat2.z;
    x_1594 = x_1601;
  }
  let x_1602 : f32 = x_1594;
  u_xlat0.z = x_1602;
  let x_1604 : f32 = u_xlat15;
  let x_1609 : vec4<f32> = u_xlat0;
  let x_1611 : vec3<f32> = ((vec3<f32>(x_1604, x_1604, x_1604) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_1609.x, x_1609.y, x_1609.z));
  let x_1612 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1611.x, x_1611.y, x_1611.z, x_1612.w);
  let x_1614 : vec4<f32> = u_xlat0;
  let x_1616 : vec3<f32> = (vec3<f32>(x_1614.x, x_1614.y, x_1614.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1617 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1616.x, x_1616.y, x_1616.z, x_1617.w);
  let x_1619 : vec4<f32> = u_xlat0;
  let x_1621 : vec3<f32> = (vec3<f32>(x_1619.x, x_1619.y, x_1619.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1622 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1621.x, x_1621.y, x_1621.z, x_1622.w);
  let x_1624 : vec4<f32> = u_xlat2;
  let x_1626 : vec3<f32> = (vec3<f32>(x_1624.x, x_1624.y, x_1624.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1627 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1626.x, x_1626.y, x_1626.z, x_1627.w);
  let x_1629 : vec4<f32> = u_xlat2;
  let x_1632 : vec3<f32> = log2(abs(vec3<f32>(x_1629.x, x_1629.y, x_1629.z)));
  let x_1633 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1632.x, x_1632.y, x_1632.z, x_1633.w);
  let x_1635 : vec4<f32> = u_xlat2;
  let x_1637 : vec3<f32> = (vec3<f32>(x_1635.x, x_1635.y, x_1635.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1638 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1637.x, x_1637.y, x_1637.z, x_1638.w);
  let x_1640 : vec4<f32> = u_xlat2;
  let x_1642 : vec3<f32> = exp2(vec3<f32>(x_1640.x, x_1640.y, x_1640.z));
  let x_1643 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1642.x, x_1642.y, x_1642.z, x_1643.w);
  let x_1645 : vec4<f32> = u_xlat0;
  let x_1647 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1645.x, x_1645.y, x_1645.z, x_1645.x));
  u_xlatb0 = vec3<bool>(x_1647.x, x_1647.y, x_1647.z);
  let x_1650 : bool = u_xlatb0.x;
  if (x_1650) {
    let x_1655 : f32 = u_xlat1.x;
    x_1651 = x_1655;
  } else {
    let x_1658 : f32 = u_xlat2.x;
    x_1651 = x_1658;
  }
  let x_1659 : f32 = x_1651;
  u_xlat0.x = x_1659;
  let x_1662 : bool = u_xlatb0.y;
  if (x_1662) {
    let x_1667 : f32 = u_xlat1.y;
    x_1663 = x_1667;
  } else {
    let x_1670 : f32 = u_xlat2.y;
    x_1663 = x_1670;
  }
  let x_1671 : f32 = x_1663;
  u_xlat0.y = x_1671;
  let x_1674 : bool = u_xlatb0.z;
  if (x_1674) {
    let x_1679 : f32 = u_xlat1.z;
    x_1675 = x_1679;
  } else {
    let x_1682 : f32 = u_xlat2.z;
    x_1675 = x_1682;
  }
  let x_1683 : f32 = x_1675;
  u_xlat0.z = x_1683;
  let x_1687 : vec4<f32> = u_xlat0;
  let x_1689 : vec3<f32> = max(vec3<f32>(x_1687.x, x_1687.y, x_1687.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1690 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1689.x, x_1689.y, x_1689.z, x_1690.w);
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

