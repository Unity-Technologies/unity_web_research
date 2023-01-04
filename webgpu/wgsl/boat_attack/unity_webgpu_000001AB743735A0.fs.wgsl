struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_Lut_Params : vec4<f32>,
  x_UserLut_Params : vec4<f32>,
  x_Chroma_Params : f32,
  @size(12)
  padding_1 : u32,
  x_Vignette_Params1 : vec4<f32>,
  x_Vignette_Params2 : vec4<f32>,
  x_Grain_Params : vec2<f32>,
  @size(8)
  padding_2 : u32,
  x_Grain_TilingParams : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_38 : PGlobals;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(4) var sampler_LinearClamp : sampler;

@group(0) @binding(3) var x_UserLut : texture_2d<f32>;

@group(0) @binding(2) var x_InternalLut : texture_2d<f32>;

@group(0) @binding(1) var x_Grain_Texture : texture_2d<f32>;

@group(0) @binding(5) var sampler_LinearRepeat : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : vec3<bool>;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat10 : vec2<f32>;
  var u_xlat15 : f32;
  var u_xlatb15 : bool;
  var u_xlatb1 : bool;
  var u_xlatb5 : bool;
  var x_398 : f32;
  var x_407 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlatb10 : vec2<bool>;
  var u_xlat11 : vec2<f32>;
  var u_xlat16 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlatb8 : bool;
  var x_548 : f32;
  var u_xlatb16 : bool;
  var x_599 : f32;
  var x_626 : f32;
  var x_650 : f32;
  var x_661 : f32;
  var u_xlatb3 : vec3<bool>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_1084 : f32;
  var x_1096 : f32;
  var x_1108 : f32;
  var u_xlat4 : vec2<f32>;
  var x_1261 : f32;
  var x_1273 : f32;
  var x_1285 : f32;
  var x_1491 : f32;
  var x_1504 : f32;
  var x_1516 : f32;
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
  let x_100 : f32 = x_38.x_Vignette_Params2.z;
  u_xlatb0.x = (0.0f < x_100);
  let x_105 : bool = u_xlatb0.x;
  if (x_105) {
    let x_108 : vec2<f32> = vs_TEXCOORD0;
    let x_111 : vec4<f32> = x_38.x_Vignette_Params2;
    let x_114 : vec2<f32> = (x_108 + -(vec2<f32>(x_111.x, x_111.y)));
    let x_115 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_114.x, x_114.y, x_115.z, x_115.w);
    let x_117 : vec4<f32> = u_xlat0;
    let x_121 : vec4<f32> = x_38.x_Vignette_Params2;
    let x_123 : vec2<f32> = (abs(vec2<f32>(x_117.x, x_117.y)) * vec2<f32>(x_121.z, x_121.z));
    let x_124 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_124.x, x_123.x, x_123.y, x_124.w);
    let x_127 : f32 = u_xlat0.y;
    let x_131 : f32 = x_38.x_Vignette_Params1.w;
    u_xlat0.x = (x_127 * x_131);
    let x_134 : vec4<f32> = u_xlat0;
    let x_136 : vec4<f32> = u_xlat0;
    u_xlat0.x = dot(vec2<f32>(x_134.x, x_134.z), vec2<f32>(x_136.x, x_136.z));
    let x_141 : f32 = u_xlat0.x;
    u_xlat0.x = (-(x_141) + 1.0f);
    let x_147 : f32 = u_xlat0.x;
    u_xlat0.x = max(x_147, 0.0f);
    let x_151 : f32 = u_xlat0.x;
    u_xlat0.x = log2(x_151);
    let x_155 : f32 = u_xlat0.x;
    let x_157 : f32 = x_38.x_Vignette_Params2.w;
    u_xlat0.x = (x_155 * x_157);
    let x_161 : f32 = u_xlat0.x;
    u_xlat0.x = exp2(x_161);
    let x_168 : vec4<f32> = x_38.x_Vignette_Params1;
    u_xlat5 = (-(vec3<f32>(x_168.x, x_168.y, x_168.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_173 : vec4<f32> = u_xlat0;
    let x_175 : vec3<f32> = u_xlat5;
    let x_178 : vec4<f32> = x_38.x_Vignette_Params1;
    let x_180 : vec3<f32> = ((vec3<f32>(x_173.x, x_173.x, x_173.x) * x_175) + vec3<f32>(x_178.x, x_178.y, x_178.z));
    let x_181 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_180.x, x_180.y, x_180.z, x_181.w);
    let x_183 : vec4<f32> = u_xlat0;
    let x_185 : vec4<f32> = u_xlat1;
    let x_187 : vec3<f32> = (vec3<f32>(x_183.x, x_183.y, x_183.z) * vec3<f32>(x_185.x, x_185.y, x_185.z));
    let x_188 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_187.x, x_187.y, x_187.z, x_188.w);
  }
  let x_190 : vec4<f32> = u_xlat1;
  let x_194 : vec4<f32> = x_38.x_Lut_Params;
  let x_196 : vec3<f32> = (vec3<f32>(x_190.x, x_190.y, x_190.z) * vec3<f32>(x_194.w, x_194.w, x_194.w));
  let x_197 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_196.x, x_196.y, x_196.z, x_197.w);
  let x_204 : vec4<f32> = u_xlat0;
  u_xlat6.x = dot(vec3<f32>(0.439700991f, 0.382977992f, 0.177334994f), vec3<f32>(x_204.x, x_204.y, x_204.z));
  let x_212 : vec4<f32> = u_xlat0;
  u_xlat6.y = dot(vec3<f32>(0.089792296f, 0.813422978f, 0.096761599f), vec3<f32>(x_212.x, x_212.y, x_212.z));
  let x_220 : vec4<f32> = u_xlat0;
  u_xlat6.z = dot(vec3<f32>(0.017543999f, 0.111543998f, 0.870703995f), vec3<f32>(x_220.x, x_220.y, x_220.z));
  let x_225 : f32 = u_xlat6.y;
  let x_227 : f32 = u_xlat6.x;
  u_xlat0.x = min(x_225, x_227);
  let x_231 : f32 = u_xlat6.z;
  let x_233 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_231, x_233);
  let x_237 : f32 = u_xlat6.y;
  let x_239 : f32 = u_xlat6.x;
  u_xlat5.x = max(x_237, x_239);
  let x_243 : f32 = u_xlat6.z;
  let x_245 : f32 = u_xlat5.x;
  u_xlat0.y = max(x_243, x_245);
  let x_248 : vec4<f32> = u_xlat0;
  let x_253 : vec3<f32> = max(vec3<f32>(x_248.x, x_248.y, x_248.y), vec3<f32>(0.0001f, 0.0001f, 0.01f));
  let x_254 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_253.x, x_253.y, x_253.z, x_254.w);
  let x_257 : f32 = u_xlat0.x;
  let x_260 : f32 = u_xlat0.y;
  u_xlat0.x = (-(x_257) + x_260);
  let x_264 : f32 = u_xlat0.x;
  let x_266 : f32 = u_xlat0.z;
  u_xlat0.x = (x_264 / x_266);
  let x_269 : vec3<f32> = u_xlat6;
  let x_272 : vec3<f32> = u_xlat6;
  u_xlat5 = (-(vec3<f32>(x_269.y, x_269.x, x_269.z)) + vec3<f32>(x_272.z, x_272.y, x_272.x));
  let x_275 : vec3<f32> = u_xlat5;
  let x_277 : vec3<f32> = u_xlat6;
  let x_279 : vec2<f32> = (vec2<f32>(x_275.x, x_275.y) * vec2<f32>(x_277.z, x_277.y));
  let x_280 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_279.x, x_279.y, x_280.z);
  let x_283 : f32 = u_xlat5.y;
  let x_285 : f32 = u_xlat5.x;
  u_xlat5.x = (x_283 + x_285);
  let x_289 : f32 = u_xlat6.x;
  let x_291 : f32 = u_xlat5.z;
  let x_294 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_289 * x_291) + x_294);
  let x_298 : f32 = u_xlat5.x;
  u_xlat5.x = max(x_298, 0.0f);
  let x_302 : f32 = u_xlat5.x;
  u_xlat5.x = sqrt(x_302);
  let x_308 : f32 = u_xlat6.y;
  let x_310 : f32 = u_xlat6.z;
  u_xlat10.x = (x_308 + x_310);
  let x_314 : f32 = u_xlat6.x;
  let x_316 : f32 = u_xlat10.x;
  u_xlat10.x = (x_314 + x_316);
  let x_320 : f32 = u_xlat5.x;
  let x_324 : f32 = u_xlat10.x;
  u_xlat5.x = ((x_320 * 1.75f) + x_324);
  let x_329 : f32 = u_xlat0.x;
  u_xlat15 = (x_329 + -0.400000006f);
  let x_332 : f32 = u_xlat15;
  u_xlat1.x = (x_332 * 2.5f);
  let x_337 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_337)) + 1.0f);
  let x_343 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_343, 0.0f);
  let x_347 : f32 = u_xlat15;
  u_xlatb15 = (x_347 >= 0.0f);
  let x_349 : bool = u_xlatb15;
  u_xlat15 = select(-1.0f, 1.0f, x_349);
  let x_352 : f32 = u_xlat1.x;
  let x_355 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_352) * x_355) + 1.0f);
  let x_359 : f32 = u_xlat15;
  let x_361 : f32 = u_xlat1.x;
  u_xlat5.z = ((x_359 * x_361) + 1.0f);
  let x_365 : vec3<f32> = u_xlat5;
  u_xlat10 = (vec2<f32>(x_365.x, x_365.z) * vec2<f32>(0.333333343f, 0.025f));
  let x_374 : f32 = u_xlat5.x;
  u_xlatb1 = (0.159999996f >= x_374);
  let x_378 : f32 = u_xlat5.x;
  u_xlatb5 = (x_378 >= 0.479999989f);
  let x_383 : f32 = u_xlat10.x;
  u_xlat10.x = (0.079999998f / x_383);
  let x_387 : f32 = u_xlat10.x;
  u_xlat10.x = (x_387 + -0.5f);
  let x_392 : f32 = u_xlat10.x;
  let x_394 : f32 = u_xlat10.y;
  u_xlat10.x = (x_392 * x_394);
  let x_397 : bool = u_xlatb5;
  if (x_397) {
    x_398 = 0.0f;
  } else {
    let x_403 : f32 = u_xlat10.x;
    x_398 = x_403;
  }
  let x_404 : f32 = x_398;
  u_xlat5.x = x_404;
  let x_406 : bool = u_xlatb1;
  if (x_406) {
    let x_411 : f32 = u_xlat10.y;
    x_407 = x_411;
  } else {
    let x_414 : f32 = u_xlat5.x;
    x_407 = x_414;
  }
  let x_415 : f32 = x_407;
  u_xlat5.x = x_415;
  let x_418 : f32 = u_xlat5.x;
  u_xlat5.x = (x_418 + 1.0f);
  let x_422 : vec3<f32> = u_xlat5;
  let x_424 : vec3<f32> = u_xlat6;
  let x_425 : vec3<f32> = (vec3<f32>(x_422.x, x_422.x, x_422.x) * x_424);
  let x_426 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_426.x, x_425.x, x_425.y, x_425.z);
  let x_431 : vec4<f32> = u_xlat2;
  let x_433 : vec4<f32> = u_xlat2;
  let x_436 : vec4<bool> = (vec4<f32>(x_431.z, x_431.w, x_431.z, x_431.w) == vec4<f32>(x_433.y, x_433.z, x_433.y, x_433.z));
  u_xlatb10 = vec2<bool>(x_436.x, x_436.y);
  let x_439 : bool = u_xlatb10.y;
  let x_441 : bool = u_xlatb10.x;
  u_xlatb10.x = (x_439 & x_441);
  let x_445 : f32 = u_xlat6.y;
  let x_447 : f32 = u_xlat5.x;
  let x_450 : f32 = u_xlat2.w;
  u_xlat15 = ((x_445 * x_447) + -(x_450));
  let x_453 : f32 = u_xlat15;
  u_xlat15 = (x_453 * 1.732050776f);
  let x_457 : f32 = u_xlat2.y;
  let x_460 : f32 = u_xlat2.z;
  u_xlat1.x = ((x_457 * 2.0f) + -(x_460));
  let x_465 : f32 = u_xlat6.z;
  let x_468 : f32 = u_xlat5.x;
  let x_471 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_465) * x_468) + x_471);
  let x_475 : f32 = u_xlat15;
  let x_478 : f32 = u_xlat1.x;
  u_xlat11.x = min(abs(x_475), abs(x_478));
  let x_483 : f32 = u_xlat15;
  let x_486 : f32 = u_xlat1.x;
  u_xlat16 = max(abs(x_483), abs(x_486));
  let x_489 : f32 = u_xlat16;
  u_xlat16 = (1.0f / x_489);
  let x_491 : f32 = u_xlat16;
  let x_493 : f32 = u_xlat11.x;
  u_xlat11.x = (x_491 * x_493);
  let x_497 : f32 = u_xlat11.x;
  let x_499 : f32 = u_xlat11.x;
  u_xlat16 = (x_497 * x_499);
  let x_502 : f32 = u_xlat16;
  u_xlat3.x = ((x_502 * 0.0208351f) + -0.085133001f);
  let x_508 : f32 = u_xlat16;
  let x_510 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_508 * x_510) + 0.180141002f);
  let x_515 : f32 = u_xlat16;
  let x_517 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_515 * x_517) + -0.330299497f);
  let x_522 : f32 = u_xlat16;
  let x_524 : f32 = u_xlat3.x;
  u_xlat16 = ((x_522 * x_524) + 0.999866009f);
  let x_528 : f32 = u_xlat16;
  let x_530 : f32 = u_xlat11.x;
  u_xlat3.x = (x_528 * x_530);
  let x_535 : f32 = u_xlat1.x;
  let x_537 : f32 = u_xlat15;
  u_xlatb8 = (abs(x_535) < abs(x_537));
  let x_541 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_541 * -2.0f) + 1.570796371f);
  let x_547 : bool = u_xlatb8;
  if (x_547) {
    let x_552 : f32 = u_xlat3.x;
    x_548 = x_552;
  } else {
    x_548 = 0.0f;
  }
  let x_554 : f32 = x_548;
  u_xlat3.x = x_554;
  let x_557 : f32 = u_xlat11.x;
  let x_558 : f32 = u_xlat16;
  let x_561 : f32 = u_xlat3.x;
  u_xlat11.x = ((x_557 * x_558) + x_561);
  let x_566 : f32 = u_xlat1.x;
  let x_568 : f32 = u_xlat1.x;
  u_xlatb16 = (x_566 < -(x_568));
  let x_571 : bool = u_xlatb16;
  u_xlat16 = select(0.0f, -3.141592741f, x_571);
  let x_574 : f32 = u_xlat16;
  let x_576 : f32 = u_xlat11.x;
  u_xlat11.x = (x_574 + x_576);
  let x_579 : f32 = u_xlat15;
  let x_581 : f32 = u_xlat1.x;
  u_xlat16 = min(x_579, x_581);
  let x_583 : f32 = u_xlat15;
  let x_585 : f32 = u_xlat1.x;
  u_xlat15 = max(x_583, x_585);
  let x_587 : f32 = u_xlat16;
  let x_588 : f32 = u_xlat16;
  u_xlatb1 = (x_587 < -(x_588));
  let x_591 : f32 = u_xlat15;
  let x_592 : f32 = u_xlat15;
  u_xlatb15 = (x_591 >= -(x_592));
  let x_595 : bool = u_xlatb15;
  let x_596 : bool = u_xlatb1;
  u_xlatb15 = (x_595 & x_596);
  let x_598 : bool = u_xlatb15;
  if (x_598) {
    let x_603 : f32 = u_xlat11.x;
    x_599 = -(x_603);
  } else {
    let x_607 : f32 = u_xlat11.x;
    x_599 = x_607;
  }
  let x_608 : f32 = x_599;
  u_xlat15 = x_608;
  let x_609 : f32 = u_xlat15;
  u_xlat15 = (x_609 * 57.295780182f);
  let x_613 : bool = u_xlatb10.x;
  let x_614 : f32 = u_xlat15;
  u_xlat10.x = select(x_614, 0.0f, x_613);
  let x_618 : f32 = u_xlat10.x;
  u_xlatb15 = (x_618 < 0.0f);
  let x_621 : f32 = u_xlat10.x;
  u_xlat1.x = (x_621 + 360.0f);
  let x_625 : bool = u_xlatb15;
  if (x_625) {
    let x_630 : f32 = u_xlat1.x;
    x_626 = x_630;
  } else {
    let x_633 : f32 = u_xlat10.x;
    x_626 = x_633;
  }
  let x_634 : f32 = x_626;
  u_xlat10.x = x_634;
  let x_637 : f32 = u_xlat10.x;
  u_xlatb15 = (x_637 < -180.0f);
  let x_642 : f32 = u_xlat10.x;
  u_xlatb1 = (180.0f < x_642);
  let x_644 : vec2<f32> = u_xlat10;
  u_xlat11 = (vec2<f32>(x_644.x, x_644.x) + vec2<f32>(360.0f, -360.0f));
  let x_649 : bool = u_xlatb1;
  if (x_649) {
    let x_654 : f32 = u_xlat11.y;
    x_650 = x_654;
  } else {
    let x_657 : f32 = u_xlat10.x;
    x_650 = x_657;
  }
  let x_658 : f32 = x_650;
  u_xlat10.x = x_658;
  let x_660 : bool = u_xlatb15;
  if (x_660) {
    let x_665 : f32 = u_xlat11.x;
    x_661 = x_665;
  } else {
    let x_668 : f32 = u_xlat10.x;
    x_661 = x_668;
  }
  let x_669 : f32 = x_661;
  u_xlat10.x = x_669;
  let x_672 : f32 = u_xlat10.x;
  u_xlat10.x = (x_672 * 0.014814815f);
  let x_677 : f32 = u_xlat10.x;
  u_xlat10.x = (-(abs(x_677)) + 1.0f);
  let x_683 : f32 = u_xlat10.x;
  u_xlat10.x = max(x_683, 0.0f);
  let x_687 : f32 = u_xlat10.x;
  u_xlat15 = ((x_687 * -2.0f) + 3.0f);
  let x_692 : f32 = u_xlat10.x;
  let x_694 : f32 = u_xlat10.x;
  u_xlat10.x = (x_692 * x_694);
  let x_698 : f32 = u_xlat10.x;
  let x_699 : f32 = u_xlat15;
  u_xlat10.x = (x_698 * x_699);
  let x_703 : f32 = u_xlat10.x;
  let x_705 : f32 = u_xlat10.x;
  u_xlat10.x = (x_703 * x_705);
  let x_709 : f32 = u_xlat0.x;
  let x_711 : f32 = u_xlat10.x;
  u_xlat0.x = (x_709 * x_711);
  let x_715 : f32 = u_xlat6.x;
  let x_718 : f32 = u_xlat5.x;
  u_xlat5.x = ((-(x_715) * x_718) + 0.029999999f);
  let x_724 : f32 = u_xlat5.x;
  let x_726 : f32 = u_xlat0.x;
  u_xlat0.x = (x_724 * x_726);
  let x_730 : f32 = u_xlat0.x;
  let x_734 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_730 * 0.180000007f) + x_734);
  let x_741 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(1.451439261f, -0.236510754f, -0.214928567f), vec3<f32>(x_741.x, x_741.z, x_741.w));
  let x_749 : vec4<f32> = u_xlat2;
  u_xlat0.y = dot(vec3<f32>(-0.076553777f, 1.176229715f, -0.099675924f), vec3<f32>(x_749.x, x_749.z, x_749.w));
  let x_757 : vec4<f32> = u_xlat2;
  u_xlat0.z = dot(vec3<f32>(0.008316148f, -0.00603244966f, 0.997716308f), vec3<f32>(x_757.x, x_757.z, x_757.w));
  let x_761 : vec4<f32> = u_xlat0;
  let x_764 : vec3<f32> = max(vec3<f32>(x_761.x, x_761.y, x_761.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_765 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_764.x, x_764.y, x_764.z, x_765.w);
  let x_767 : vec4<f32> = u_xlat0;
  u_xlat15 = dot(vec3<f32>(x_767.x, x_767.y, x_767.z), vec3<f32>(0.272228986f, 0.674081981f, 0.053689498f));
  let x_774 : f32 = u_xlat15;
  let x_777 : vec4<f32> = u_xlat0;
  let x_779 : vec3<f32> = (-(vec3<f32>(x_774, x_774, x_774)) + vec3<f32>(x_777.x, x_777.y, x_777.z));
  let x_780 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_779.x, x_779.y, x_779.z, x_780.w);
  let x_782 : vec4<f32> = u_xlat0;
  let x_787 : f32 = u_xlat15;
  let x_789 : vec3<f32> = ((vec3<f32>(x_782.x, x_782.y, x_782.z) * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f)) + vec3<f32>(x_787, x_787, x_787));
  let x_790 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_789.x, x_789.y, x_789.z, x_790.w);
  let x_792 : vec4<f32> = u_xlat0;
  let x_796 : vec3<f32> = (vec3<f32>(x_792.x, x_792.y, x_792.z) + vec3<f32>(0.024578599f, 0.024578599f, 0.024578599f));
  let x_797 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_796.x, x_796.y, x_796.z, x_797.w);
  let x_799 : vec4<f32> = u_xlat0;
  let x_801 : vec4<f32> = u_xlat1;
  let x_806 : vec3<f32> = ((vec3<f32>(x_799.x, x_799.y, x_799.z) * vec3<f32>(x_801.x, x_801.y, x_801.z)) + vec3<f32>(-0.000090537f, -0.000090537f, -0.000090537f));
  let x_807 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_806.x, x_806.y, x_806.z, x_807.w);
  let x_809 : vec4<f32> = u_xlat0;
  let x_816 : vec3<f32> = ((vec3<f32>(x_809.x, x_809.y, x_809.z) * vec3<f32>(0.983729005f, 0.983729005f, 0.983729005f)) + vec3<f32>(0.432951003f, 0.432951003f, 0.432951003f));
  let x_817 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_816.x, x_816.y, x_816.z, x_817.w);
  let x_819 : vec4<f32> = u_xlat0;
  let x_821 : vec4<f32> = u_xlat2;
  let x_826 : vec3<f32> = ((vec3<f32>(x_819.x, x_819.y, x_819.z) * vec3<f32>(x_821.x, x_821.y, x_821.z)) + vec3<f32>(0.238080993f, 0.238080993f, 0.238080993f));
  let x_827 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_826.x, x_826.y, x_826.z, x_827.w);
  let x_829 : vec4<f32> = u_xlat1;
  let x_831 : vec4<f32> = u_xlat0;
  let x_833 : vec3<f32> = (vec3<f32>(x_829.x, x_829.y, x_829.z) / vec3<f32>(x_831.x, x_831.y, x_831.z));
  let x_834 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_833.x, x_833.y, x_833.z, x_834.w);
  let x_840 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(0.662454188f, 0.134004205f, 0.156187683f), vec3<f32>(x_840.x, x_840.y, x_840.z));
  let x_848 : vec4<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(0.272228718f, 0.674081743f, 0.053689517f), vec3<f32>(x_848.x, x_848.y, x_848.z));
  let x_856 : vec4<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(-0.00557464967f, 0.0040607336f, 1.010339141f), vec3<f32>(x_856.x, x_856.y, x_856.z));
  let x_860 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(x_860.x, x_860.y, x_860.z), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_865 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_865, 0.0001f);
  let x_868 : vec4<f32> = u_xlat1;
  let x_870 : vec4<f32> = u_xlat0;
  let x_872 : vec2<f32> = (vec2<f32>(x_868.x, x_868.y) / vec2<f32>(x_870.x, x_870.x));
  let x_873 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_872.x, x_872.y, x_873.z, x_873.w);
  let x_876 : f32 = u_xlat1.y;
  u_xlat15 = max(x_876, 0.0f);
  let x_878 : f32 = u_xlat15;
  u_xlat15 = min(x_878, 65504.0f);
  let x_881 : f32 = u_xlat15;
  u_xlat15 = log2(x_881);
  let x_883 : f32 = u_xlat15;
  u_xlat15 = (x_883 * 0.981100023f);
  let x_886 : f32 = u_xlat15;
  u_xlat1.y = exp2(x_886);
  let x_890 : f32 = u_xlat0.y;
  u_xlat15 = max(x_890, 0.0001f);
  let x_893 : f32 = u_xlat1.y;
  let x_894 : f32 = u_xlat15;
  u_xlat15 = (x_893 / x_894);
  let x_897 : f32 = u_xlat0.x;
  u_xlat16 = (-(x_897) + 1.0f);
  let x_901 : f32 = u_xlat0.y;
  let x_903 : f32 = u_xlat16;
  u_xlat0.z = (-(x_901) + x_903);
  let x_906 : f32 = u_xlat15;
  let x_908 : vec4<f32> = u_xlat0;
  let x_910 : vec2<f32> = (vec2<f32>(x_906, x_906) * vec2<f32>(x_908.x, x_908.z));
  let x_911 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_910.x, x_911.y, x_910.y, x_911.w);
  let x_917 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(1.641023397f, -0.324803293f, -0.236424699f), vec3<f32>(x_917.x, x_917.y, x_917.z));
  let x_925 : vec4<f32> = u_xlat1;
  u_xlat0.y = dot(vec3<f32>(-0.663662851f, 1.61533165f, 0.016756348f), vec3<f32>(x_925.x, x_925.y, x_925.z));
  let x_933 : vec4<f32> = u_xlat1;
  u_xlat0.z = dot(vec3<f32>(0.011721894f, -0.008284442f, 0.988394856f), vec3<f32>(x_933.x, x_933.y, x_933.z));
  let x_937 : vec4<f32> = u_xlat0;
  u_xlat15 = dot(vec3<f32>(x_937.x, x_937.y, x_937.z), vec3<f32>(0.272228986f, 0.674081981f, 0.053689498f));
  let x_940 : f32 = u_xlat15;
  let x_943 : vec4<f32> = u_xlat0;
  let x_945 : vec3<f32> = (-(vec3<f32>(x_940, x_940, x_940)) + vec3<f32>(x_943.x, x_943.y, x_943.z));
  let x_946 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_945.x, x_945.y, x_945.z, x_946.w);
  let x_948 : vec4<f32> = u_xlat0;
  let x_953 : f32 = u_xlat15;
  let x_955 : vec3<f32> = ((vec3<f32>(x_948.x, x_948.y, x_948.z) * vec3<f32>(0.930000007f, 0.930000007f, 0.930000007f)) + vec3<f32>(x_953, x_953, x_953));
  let x_956 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_955.x, x_955.y, x_955.z, x_956.w);
  let x_958 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(0.662454188f, 0.134004205f, 0.156187683f), vec3<f32>(x_958.x, x_958.y, x_958.z));
  let x_962 : vec4<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(0.272228718f, 0.674081743f, 0.053689517f), vec3<f32>(x_962.x, x_962.y, x_962.z));
  let x_966 : vec4<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(-0.00557464967f, 0.0040607336f, 1.010339141f), vec3<f32>(x_966.x, x_966.y, x_966.z));
  let x_974 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(0.987223983f, -0.00611327f, 0.015953301f), vec3<f32>(x_974.x, x_974.y, x_974.z));
  let x_982 : vec4<f32> = u_xlat1;
  u_xlat0.y = dot(vec3<f32>(-0.00759836f, 1.001860023f, 0.0053302f), vec3<f32>(x_982.x, x_982.y, x_982.z));
  let x_990 : vec4<f32> = u_xlat1;
  u_xlat0.z = dot(vec3<f32>(0.00307257f, -0.00509595f, 1.081680059f), vec3<f32>(x_990.x, x_990.y, x_990.z));
  let x_998 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(3.240969896f, -1.537383199f, -0.498610765f), vec3<f32>(x_998.x, x_998.y, x_998.z));
  let x_1003 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1003, 0.0f, 1.0f);
  let x_1010 : vec4<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(-0.969243646f, 1.875967503f, 0.041555058f), vec3<f32>(x_1010.x, x_1010.y, x_1010.z));
  let x_1015 : f32 = u_xlat1.y;
  u_xlat1.y = clamp(x_1015, 0.0f, 1.0f);
  let x_1022 : vec4<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(0.05563008f, -0.203976959f, 1.05697155f), vec3<f32>(x_1022.x, x_1022.y, x_1022.z));
  let x_1027 : f32 = u_xlat1.z;
  u_xlat1.z = clamp(x_1027, 0.0f, 1.0f);
  let x_1032 : f32 = x_38.x_UserLut_Params.w;
  u_xlatb0.x = (0.0f < x_1032);
  let x_1036 : bool = u_xlatb0.x;
  if (x_1036) {
    let x_1039 : vec4<f32> = u_xlat1;
    let x_1043 : vec3<f32> = (vec3<f32>(x_1039.x, x_1039.y, x_1039.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
    let x_1044 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1043.x, x_1043.y, x_1043.z, x_1044.w);
    let x_1046 : vec4<f32> = u_xlat1;
    let x_1048 : vec3<f32> = log2(vec3<f32>(x_1046.x, x_1046.y, x_1046.z));
    let x_1049 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1048.x, x_1048.y, x_1048.z, x_1049.w);
    let x_1051 : vec4<f32> = u_xlat2;
    let x_1055 : vec3<f32> = (vec3<f32>(x_1051.x, x_1051.y, x_1051.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
    let x_1056 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1055.x, x_1055.y, x_1055.z, x_1056.w);
    let x_1058 : vec4<f32> = u_xlat2;
    let x_1060 : vec3<f32> = exp2(vec3<f32>(x_1058.x, x_1058.y, x_1058.z));
    let x_1061 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1060.x, x_1060.y, x_1060.z, x_1061.w);
    let x_1063 : vec4<f32> = u_xlat2;
    let x_1070 : vec3<f32> = ((vec3<f32>(x_1063.x, x_1063.y, x_1063.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
    let x_1071 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1070.x, x_1070.y, x_1070.z, x_1071.w);
    let x_1076 : vec4<f32> = u_xlat1;
    let x_1078 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1076.x, x_1076.y, x_1076.z, x_1076.x));
    u_xlatb3 = vec3<bool>(x_1078.x, x_1078.y, x_1078.z);
    let x_1081 : vec4<f32> = u_xlat0;
    hlslcc_movcTemp = x_1081;
    let x_1083 : bool = u_xlatb3.x;
    if (x_1083) {
      let x_1088 : f32 = u_xlat0.x;
      x_1084 = x_1088;
    } else {
      let x_1091 : f32 = u_xlat2.x;
      x_1084 = x_1091;
    }
    let x_1092 : f32 = x_1084;
    hlslcc_movcTemp.x = x_1092;
    let x_1095 : bool = u_xlatb3.y;
    if (x_1095) {
      let x_1100 : f32 = u_xlat0.y;
      x_1096 = x_1100;
    } else {
      let x_1103 : f32 = u_xlat2.y;
      x_1096 = x_1103;
    }
    let x_1104 : f32 = x_1096;
    hlslcc_movcTemp.y = x_1104;
    let x_1107 : bool = u_xlatb3.z;
    if (x_1107) {
      let x_1112 : f32 = u_xlat0.z;
      x_1108 = x_1112;
    } else {
      let x_1115 : f32 = u_xlat2.z;
      x_1108 = x_1115;
    }
    let x_1116 : f32 = x_1108;
    hlslcc_movcTemp.z = x_1116;
    let x_1118 : vec4<f32> = hlslcc_movcTemp;
    u_xlat0 = x_1118;
    let x_1119 : vec4<f32> = u_xlat0;
    let x_1122 : vec4<f32> = x_38.x_UserLut_Params;
    let x_1124 : vec3<f32> = (vec3<f32>(x_1119.z, x_1119.x, x_1119.y) * vec3<f32>(x_1122.z, x_1122.z, x_1122.z));
    let x_1125 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1124.x, x_1124.y, x_1124.z, x_1125.w);
    let x_1128 : f32 = u_xlat2.x;
    u_xlat15 = floor(x_1128);
    let x_1131 : vec4<f32> = x_38.x_UserLut_Params;
    let x_1135 : vec2<f32> = (vec2<f32>(x_1131.x, x_1131.y) * vec2<f32>(0.5f, 0.5f));
    let x_1136 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1135.x, x_1136.y, x_1136.z, x_1135.y);
    let x_1138 : vec4<f32> = u_xlat2;
    let x_1141 : vec4<f32> = x_38.x_UserLut_Params;
    let x_1144 : vec4<f32> = u_xlat2;
    let x_1146 : vec2<f32> = ((vec2<f32>(x_1138.y, x_1138.z) * vec2<f32>(x_1141.x, x_1141.y)) + vec2<f32>(x_1144.x, x_1144.w));
    let x_1147 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1147.x, x_1146.x, x_1146.y, x_1147.w);
    let x_1149 : f32 = u_xlat15;
    let x_1151 : f32 = x_38.x_UserLut_Params.y;
    let x_1154 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_1149 * x_1151) + x_1154);
    let x_1161 : vec4<f32> = u_xlat2;
    let x_1163 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1161.x, x_1161.z), 0.0f);
    u_xlat3 = vec3<f32>(x_1163.x, x_1163.y, x_1163.z);
    let x_1167 : f32 = x_38.x_UserLut_Params.y;
    u_xlat4.x = x_1167;
    u_xlat4.y = 0.0f;
    let x_1170 : vec4<f32> = u_xlat2;
    let x_1172 : vec2<f32> = u_xlat4;
    let x_1173 : vec2<f32> = (vec2<f32>(x_1170.x, x_1170.z) + x_1172);
    let x_1174 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1173.x, x_1173.y, x_1174.z, x_1174.w);
    let x_1179 : vec4<f32> = u_xlat2;
    let x_1181 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1179.x, x_1179.y), 0.0f);
    let x_1182 : vec3<f32> = vec3<f32>(x_1181.x, x_1181.y, x_1181.z);
    let x_1183 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1182.x, x_1182.y, x_1182.z, x_1183.w);
    let x_1186 : f32 = u_xlat0.z;
    let x_1188 : f32 = x_38.x_UserLut_Params.z;
    let x_1190 : f32 = u_xlat15;
    u_xlat15 = ((x_1186 * x_1188) + -(x_1190));
    let x_1193 : vec3<f32> = u_xlat3;
    let x_1195 : vec4<f32> = u_xlat2;
    let x_1197 : vec3<f32> = (-(x_1193) + vec3<f32>(x_1195.x, x_1195.y, x_1195.z));
    let x_1198 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1197.x, x_1197.y, x_1197.z, x_1198.w);
    let x_1200 : f32 = u_xlat15;
    let x_1202 : vec4<f32> = u_xlat2;
    let x_1205 : vec3<f32> = u_xlat3;
    let x_1206 : vec3<f32> = ((vec3<f32>(x_1200, x_1200, x_1200) * vec3<f32>(x_1202.x, x_1202.y, x_1202.z)) + x_1205);
    let x_1207 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1206.x, x_1206.y, x_1206.z, x_1207.w);
    let x_1209 : vec4<f32> = u_xlat0;
    let x_1212 : vec4<f32> = u_xlat2;
    let x_1214 : vec3<f32> = (-(vec3<f32>(x_1209.x, x_1209.y, x_1209.z)) + vec3<f32>(x_1212.x, x_1212.y, x_1212.z));
    let x_1215 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1214.x, x_1214.y, x_1214.z, x_1215.w);
    let x_1218 : vec4<f32> = x_38.x_UserLut_Params;
    let x_1220 : vec4<f32> = u_xlat2;
    let x_1223 : vec4<f32> = u_xlat0;
    let x_1225 : vec3<f32> = ((vec3<f32>(x_1218.w, x_1218.w, x_1218.w) * vec3<f32>(x_1220.x, x_1220.y, x_1220.z)) + vec3<f32>(x_1223.x, x_1223.y, x_1223.z));
    let x_1226 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1225.x, x_1225.y, x_1225.z, x_1226.w);
    let x_1228 : vec4<f32> = u_xlat0;
    let x_1232 : vec3<f32> = (vec3<f32>(x_1228.x, x_1228.y, x_1228.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
    let x_1233 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1232.x, x_1232.y, x_1232.z, x_1233.w);
    let x_1235 : vec4<f32> = u_xlat0;
    u_xlat3 = (vec3<f32>(x_1235.x, x_1235.y, x_1235.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
    let x_1240 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_1240 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
    let x_1244 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_1244));
    let x_1247 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_1247 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
    let x_1251 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_1251);
    let x_1255 : vec4<f32> = u_xlat0;
    let x_1257 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1255.x, x_1255.y, x_1255.z, x_1255.x));
    u_xlatb0 = vec3<bool>(x_1257.x, x_1257.y, x_1257.z);
    let x_1260 : bool = u_xlatb0.x;
    if (x_1260) {
      let x_1265 : f32 = u_xlat2.x;
      x_1261 = x_1265;
    } else {
      let x_1268 : f32 = u_xlat3.x;
      x_1261 = x_1268;
    }
    let x_1269 : f32 = x_1261;
    u_xlat1.x = x_1269;
    let x_1272 : bool = u_xlatb0.y;
    if (x_1272) {
      let x_1277 : f32 = u_xlat2.y;
      x_1273 = x_1277;
    } else {
      let x_1280 : f32 = u_xlat3.y;
      x_1273 = x_1280;
    }
    let x_1281 : f32 = x_1273;
    u_xlat1.y = x_1281;
    let x_1284 : bool = u_xlatb0.z;
    if (x_1284) {
      let x_1289 : f32 = u_xlat2.z;
      x_1285 = x_1289;
    } else {
      let x_1292 : f32 = u_xlat3.z;
      x_1285 = x_1292;
    }
    let x_1293 : f32 = x_1285;
    u_xlat1.z = x_1293;
  }
  let x_1295 : vec4<f32> = u_xlat1;
  let x_1298 : vec4<f32> = x_38.x_Lut_Params;
  let x_1300 : vec3<f32> = (vec3<f32>(x_1295.z, x_1295.x, x_1295.y) * vec3<f32>(x_1298.z, x_1298.z, x_1298.z));
  let x_1301 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1300.x, x_1300.y, x_1300.z, x_1301.w);
  let x_1304 : f32 = u_xlat0.x;
  u_xlat0.x = floor(x_1304);
  let x_1308 : vec4<f32> = x_38.x_Lut_Params;
  let x_1310 : vec2<f32> = (vec2<f32>(x_1308.x, x_1308.y) * vec2<f32>(0.5f, 0.5f));
  let x_1311 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1310.x, x_1310.y, x_1311.z, x_1311.w);
  let x_1313 : vec4<f32> = u_xlat0;
  let x_1316 : vec4<f32> = x_38.x_Lut_Params;
  let x_1319 : vec4<f32> = u_xlat1;
  let x_1321 : vec2<f32> = ((vec2<f32>(x_1313.y, x_1313.z) * vec2<f32>(x_1316.x, x_1316.y)) + vec2<f32>(x_1319.x, x_1319.y));
  let x_1322 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1322.x, x_1321.x, x_1321.y, x_1322.w);
  let x_1325 : f32 = u_xlat0.x;
  let x_1327 : f32 = x_38.x_Lut_Params.y;
  let x_1330 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_1325 * x_1327) + x_1330);
  let x_1337 : vec4<f32> = u_xlat2;
  let x_1339 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1337.x, x_1337.z), 0.0f);
  u_xlat5 = vec3<f32>(x_1339.x, x_1339.y, x_1339.z);
  let x_1342 : f32 = x_38.x_Lut_Params.y;
  u_xlat1.x = x_1342;
  u_xlat1.y = 0.0f;
  let x_1345 : vec4<f32> = u_xlat1;
  let x_1347 : vec4<f32> = u_xlat2;
  let x_1349 : vec2<f32> = (vec2<f32>(x_1345.x, x_1345.y) + vec2<f32>(x_1347.x, x_1347.z));
  let x_1350 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1349.x, x_1349.y, x_1350.z, x_1350.w);
  let x_1355 : vec4<f32> = u_xlat1;
  let x_1357 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1355.x, x_1355.y), 0.0f);
  let x_1358 : vec3<f32> = vec3<f32>(x_1357.x, x_1357.y, x_1357.z);
  let x_1359 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1358.x, x_1358.y, x_1359.z, x_1358.z);
  let x_1362 : f32 = u_xlat1.z;
  let x_1364 : f32 = x_38.x_Lut_Params.z;
  let x_1367 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1362 * x_1364) + -(x_1367));
  let x_1371 : vec3<f32> = u_xlat5;
  let x_1373 : vec4<f32> = u_xlat1;
  let x_1375 : vec3<f32> = (-(x_1371) + vec3<f32>(x_1373.x, x_1373.y, x_1373.w));
  let x_1376 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1375.x, x_1375.y, x_1375.z, x_1376.w);
  let x_1378 : vec4<f32> = u_xlat0;
  let x_1380 : vec4<f32> = u_xlat1;
  let x_1383 : vec3<f32> = u_xlat5;
  let x_1384 : vec3<f32> = ((vec3<f32>(x_1378.x, x_1378.x, x_1378.x) * vec3<f32>(x_1380.x, x_1380.y, x_1380.z)) + x_1383);
  let x_1385 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1384.x, x_1384.y, x_1384.z, x_1385.w);
  let x_1387 : vec2<f32> = vs_TEXCOORD0;
  let x_1390 : vec4<f32> = x_38.x_Grain_TilingParams;
  let x_1394 : vec4<f32> = x_38.x_Grain_TilingParams;
  let x_1396 : vec2<f32> = ((x_1387 * vec2<f32>(x_1390.x, x_1390.y)) + vec2<f32>(x_1394.z, x_1394.w));
  let x_1397 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1396.x, x_1396.y, x_1397.z, x_1397.w);
  let x_1404 : vec4<f32> = u_xlat1;
  let x_1407 : f32 = x_38.x_GlobalMipBias.x;
  let x_1408 : vec4<f32> = textureSampleBias(x_Grain_Texture, sampler_LinearRepeat, vec2<f32>(x_1404.x, x_1404.y), x_1407);
  u_xlat15 = x_1408.w;
  let x_1410 : f32 = u_xlat15;
  u_xlat15 = (x_1410 + -0.5f);
  let x_1412 : f32 = u_xlat15;
  let x_1413 : f32 = u_xlat15;
  u_xlat15 = (x_1412 + x_1413);
  let x_1415 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(x_1415.x, x_1415.y, x_1415.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_1424 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_1424);
  let x_1429 : f32 = x_38.x_Grain_Params.y;
  let x_1431 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1429 * -(x_1431)) + 1.0f);
  let x_1436 : f32 = u_xlat15;
  let x_1438 : vec4<f32> = u_xlat0;
  u_xlat6 = (vec3<f32>(x_1436, x_1436, x_1436) * vec3<f32>(x_1438.x, x_1438.y, x_1438.z));
  let x_1441 : vec3<f32> = u_xlat6;
  let x_1444 : vec2<f32> = x_38.x_Grain_Params;
  u_xlat6 = (x_1441 * vec3<f32>(x_1444.x, x_1444.x, x_1444.x));
  let x_1447 : vec3<f32> = u_xlat6;
  let x_1448 : vec4<f32> = u_xlat1;
  let x_1451 : vec4<f32> = u_xlat0;
  let x_1453 : vec3<f32> = ((x_1447 * vec3<f32>(x_1448.x, x_1448.x, x_1448.x)) + vec3<f32>(x_1451.x, x_1451.y, x_1451.z));
  let x_1454 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1453.x, x_1453.y, x_1453.z, x_1454.w);
  let x_1456 : vec4<f32> = u_xlat0;
  let x_1458 : vec3<f32> = (vec3<f32>(x_1456.x, x_1456.y, x_1456.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1459 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1458.x, x_1458.y, x_1458.z, x_1459.w);
  let x_1461 : vec4<f32> = u_xlat0;
  let x_1464 : vec3<f32> = log2(abs(vec3<f32>(x_1461.x, x_1461.y, x_1461.z)));
  let x_1465 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1464.x, x_1464.y, x_1464.z, x_1465.w);
  let x_1467 : vec4<f32> = u_xlat2;
  let x_1469 : vec3<f32> = (vec3<f32>(x_1467.x, x_1467.y, x_1467.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1470 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1469.x, x_1469.y, x_1469.z, x_1470.w);
  let x_1472 : vec4<f32> = u_xlat2;
  let x_1474 : vec3<f32> = exp2(vec3<f32>(x_1472.x, x_1472.y, x_1472.z));
  let x_1475 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1474.x, x_1474.y, x_1474.z, x_1475.w);
  let x_1477 : vec4<f32> = u_xlat2;
  let x_1480 : vec3<f32> = ((vec3<f32>(x_1477.x, x_1477.y, x_1477.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1481 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1480.x, x_1480.y, x_1480.z, x_1481.w);
  let x_1483 : vec4<f32> = u_xlat0;
  let x_1485 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1483.x, x_1483.y, x_1483.z, x_1483.x));
  u_xlatb0 = vec3<bool>(x_1485.x, x_1485.y, x_1485.z);
  let x_1490 : bool = u_xlatb0.x;
  if (x_1490) {
    let x_1495 : f32 = u_xlat1.x;
    x_1491 = x_1495;
  } else {
    let x_1498 : f32 = u_xlat2.x;
    x_1491 = x_1498;
  }
  let x_1499 : f32 = x_1491;
  SV_Target0.x = x_1499;
  let x_1503 : bool = u_xlatb0.y;
  if (x_1503) {
    let x_1508 : f32 = u_xlat1.y;
    x_1504 = x_1508;
  } else {
    let x_1511 : f32 = u_xlat2.y;
    x_1504 = x_1511;
  }
  let x_1512 : f32 = x_1504;
  SV_Target0.y = x_1512;
  let x_1515 : bool = u_xlatb0.z;
  if (x_1515) {
    let x_1520 : f32 = u_xlat1.z;
    x_1516 = x_1520;
  } else {
    let x_1523 : f32 = u_xlat2.z;
    x_1516 = x_1523;
  }
  let x_1524 : f32 = x_1516;
  SV_Target0.z = x_1524;
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
