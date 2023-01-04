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
  x_Distortion_Params1 : vec4<f32>,
  x_Distortion_Params2 : vec4<f32>,
  x_Vignette_Params1 : vec4<f32>,
  x_Vignette_Params2 : vec4<f32>,
  x_Grain_Params : vec2<f32>,
  @size(8)
  padding_2 : u32,
  x_Grain_TilingParams : vec4<f32>,
  x_Dithering_Params : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_26 : PGlobals;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_LinearClamp : sampler;

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
  var u_xlat10 : vec2<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb6 : bool;
  var u_xlat6 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat11 : vec2<f32>;
  var u_xlat16 : f32;
  var u_xlat7 : f32;
  var u_xlat12 : f32;
  var u_xlatb17 : bool;
  var u_xlatb1 : bool;
  var x_229 : f32;
  var u_xlatb15 : bool;
  var u_xlat15 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlatb5 : bool;
  var x_586 : f32;
  var x_595 : f32;
  var u_xlatb10 : vec2<bool>;
  var u_xlatb8 : bool;
  var x_726 : f32;
  var u_xlatb16 : bool;
  var x_777 : f32;
  var x_804 : f32;
  var x_828 : f32;
  var x_839 : f32;
  var u_xlatb0 : vec3<bool>;
  var u_xlatb3 : vec3<bool>;
  var hlslcc_movcTemp : vec3<f32>;
  var x_1228 : f32;
  var x_1240 : f32;
  var x_1252 : f32;
  var u_xlat4 : vec2<f32>;
  var x_1397 : f32;
  var x_1409 : f32;
  var x_1421 : f32;
  var x_1614 : f32;
  var x_1626 : f32;
  var x_1638 : f32;
  var x_1723 : f32;
  var x_1735 : f32;
  var x_1747 : f32;
  var x_1799 : f32;
  var x_1811 : f32;
  var x_1823 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD0;
  let x_16 : vec2<f32> = (x_13 + vec2<f32>(-0.5f, -0.5f));
  let x_17 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_16.x, x_16.y, x_17.z);
  let x_21 : vec3<f32> = u_xlat0;
  let x_31 : vec4<f32> = x_26.x_Distortion_Params2;
  u_xlat10 = ((vec2<f32>(x_21.x, x_21.y) * vec2<f32>(x_31.z, x_31.z)) + vec2<f32>(0.5f, 0.5f));
  let x_37 : vec3<f32> = u_xlat0;
  let x_40 : vec4<f32> = x_26.x_Distortion_Params2;
  let x_45 : vec4<f32> = x_26.x_Distortion_Params1;
  let x_48 : vec2<f32> = ((vec2<f32>(x_37.x, x_37.y) * vec2<f32>(x_40.z, x_40.z)) + -(vec2<f32>(x_45.x, x_45.y)));
  let x_49 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_48.x, x_48.y, x_49.z);
  let x_51 : vec3<f32> = u_xlat0;
  let x_54 : vec4<f32> = x_26.x_Distortion_Params1;
  let x_56 : vec2<f32> = (vec2<f32>(x_51.x, x_51.y) * vec2<f32>(x_54.z, x_54.w));
  let x_57 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_56.x, x_56.y, x_57.z);
  let x_61 : vec3<f32> = u_xlat0;
  let x_63 : vec3<f32> = u_xlat0;
  u_xlat1.x = dot(vec2<f32>(x_61.x, x_61.y), vec2<f32>(x_63.x, x_63.y));
  let x_71 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_71);
  let x_81 : f32 = x_26.x_Distortion_Params2.w;
  u_xlatb6 = (0.0f < x_81);
  let x_83 : bool = u_xlatb6;
  if (x_83) {
    let x_87 : vec4<f32> = u_xlat1;
    let x_90 : vec4<f32> = x_26.x_Distortion_Params2;
    let x_92 : vec2<f32> = (vec2<f32>(x_87.x, x_87.x) * vec2<f32>(x_90.x, x_90.y));
    let x_93 : vec3<f32> = u_xlat6;
    u_xlat6 = vec3<f32>(x_92.x, x_92.y, x_93.z);
    let x_97 : f32 = u_xlat6.x;
    u_xlat2.x = sin(x_97);
    let x_102 : f32 = u_xlat6.x;
    u_xlat3.x = cos(x_102);
    let x_106 : f32 = u_xlat2.x;
    let x_108 : f32 = u_xlat3.x;
    u_xlat6.x = (x_106 / x_108);
    let x_115 : f32 = u_xlat6.y;
    u_xlat11.x = (1.0f / x_115);
    let x_119 : f32 = u_xlat6.x;
    let x_121 : f32 = u_xlat11.x;
    u_xlat6.x = ((x_119 * x_121) + -1.0f);
    let x_126 : vec3<f32> = u_xlat0;
    let x_128 : vec3<f32> = u_xlat6;
    let x_131 : vec2<f32> = u_xlat10;
    let x_132 : vec2<f32> = ((vec2<f32>(x_126.x, x_126.y) * vec2<f32>(x_128.x, x_128.x)) + x_131);
    let x_133 : vec3<f32> = u_xlat6;
    u_xlat6 = vec3<f32>(x_132.x, x_132.y, x_133.z);
  } else {
    let x_138 : f32 = u_xlat1.x;
    u_xlat16 = (1.0f / x_138);
    let x_140 : f32 = u_xlat16;
    let x_142 : f32 = x_26.x_Distortion_Params2.x;
    u_xlat16 = (x_140 * x_142);
    let x_145 : f32 = u_xlat1.x;
    let x_147 : f32 = x_26.x_Distortion_Params2.y;
    u_xlat1.x = (x_145 * x_147);
    let x_151 : f32 = u_xlat1.x;
    u_xlat2.x = min(abs(x_151), 1.0f);
    let x_157 : f32 = u_xlat1.x;
    u_xlat7 = max(abs(x_157), 1.0f);
    let x_160 : f32 = u_xlat7;
    u_xlat7 = (1.0f / x_160);
    let x_162 : f32 = u_xlat7;
    let x_164 : f32 = u_xlat2.x;
    u_xlat2.x = (x_162 * x_164);
    let x_168 : f32 = u_xlat2.x;
    let x_170 : f32 = u_xlat2.x;
    u_xlat7 = (x_168 * x_170);
    let x_173 : f32 = u_xlat7;
    u_xlat12 = ((x_173 * 0.0208351f) + -0.085133001f);
    let x_178 : f32 = u_xlat7;
    let x_179 : f32 = u_xlat12;
    u_xlat12 = ((x_178 * x_179) + 0.180141002f);
    let x_183 : f32 = u_xlat7;
    let x_184 : f32 = u_xlat12;
    u_xlat12 = ((x_183 * x_184) + -0.330299497f);
    let x_188 : f32 = u_xlat7;
    let x_189 : f32 = u_xlat12;
    u_xlat7 = ((x_188 * x_189) + 0.999866009f);
    let x_193 : f32 = u_xlat7;
    let x_195 : f32 = u_xlat2.x;
    u_xlat12 = (x_193 * x_195);
    let x_199 : f32 = u_xlat1.x;
    u_xlatb17 = (1.0f < abs(x_199));
    let x_202 : f32 = u_xlat12;
    u_xlat12 = ((x_202 * -2.0f) + 1.570796371f);
    let x_207 : bool = u_xlatb17;
    let x_208 : f32 = u_xlat12;
    u_xlat12 = select(0.0f, x_208, x_207);
    let x_211 : f32 = u_xlat2.x;
    let x_212 : f32 = u_xlat7;
    let x_214 : f32 = u_xlat12;
    u_xlat2.x = ((x_211 * x_212) + x_214);
    let x_218 : f32 = u_xlat1.x;
    u_xlat1.x = min(x_218, 1.0f);
    let x_223 : f32 = u_xlat1.x;
    let x_225 : f32 = u_xlat1.x;
    u_xlatb1 = (x_223 < -(x_225));
    let x_228 : bool = u_xlatb1;
    if (x_228) {
      let x_233 : f32 = u_xlat2.x;
      x_229 = -(x_233);
    } else {
      let x_237 : f32 = u_xlat2.x;
      x_229 = x_237;
    }
    let x_238 : f32 = x_229;
    u_xlat1.x = x_238;
    let x_240 : f32 = u_xlat16;
    let x_242 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_240 * x_242) + -1.0f);
    let x_246 : vec3<f32> = u_xlat0;
    let x_248 : vec4<f32> = u_xlat1;
    let x_251 : vec2<f32> = u_xlat10;
    let x_252 : vec2<f32> = ((vec2<f32>(x_246.x, x_246.y) * vec2<f32>(x_248.x, x_248.x)) + x_251);
    let x_253 : vec3<f32> = u_xlat6;
    u_xlat6 = vec3<f32>(x_252.x, x_252.y, x_253.z);
  }
  let x_265 : vec3<f32> = u_xlat6;
  let x_269 : f32 = x_26.x_GlobalMipBias.x;
  let x_270 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_265.x, x_265.y), x_269);
  u_xlat0 = vec3<f32>(x_270.x, x_270.y, x_270.z);
  let x_276 : vec3<f32> = u_xlat6;
  let x_279 : f32 = x_26.x_GlobalMipBias.x;
  let x_280 : vec4<f32> = textureSampleBias(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_276.x, x_276.y), x_279);
  u_xlat2 = x_280;
  let x_284 : f32 = x_26.x_Bloom_RGBM;
  u_xlatb15 = (0.0f < x_284);
  let x_286 : bool = u_xlatb15;
  if (x_286) {
    let x_289 : vec4<f32> = u_xlat2;
    let x_291 : vec4<f32> = u_xlat2;
    u_xlat3 = (vec3<f32>(x_289.w, x_289.w, x_289.w) * vec3<f32>(x_291.x, x_291.y, x_291.z));
    let x_294 : vec3<f32> = u_xlat3;
    let x_297 : vec3<f32> = (x_294 * vec3<f32>(8.0f, 8.0f, 8.0f));
    let x_298 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_297.x, x_297.y, x_297.z, x_298.w);
  }
  let x_300 : vec4<f32> = u_xlat2;
  let x_304 : vec4<f32> = x_26.x_Bloom_Params;
  let x_306 : vec3<f32> = (vec3<f32>(x_300.x, x_300.y, x_300.z) * vec3<f32>(x_304.x, x_304.x, x_304.x));
  let x_307 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_306.x, x_306.y, x_306.z, x_307.w);
  let x_309 : vec4<f32> = u_xlat2;
  let x_312 : vec4<f32> = x_26.x_Bloom_Params;
  let x_315 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_309.x, x_309.y, x_309.z) * vec3<f32>(x_312.y, x_312.z, x_312.w)) + x_315);
  let x_320 : f32 = x_26.x_Vignette_Params2.z;
  u_xlatb15 = (0.0f < x_320);
  let x_322 : bool = u_xlatb15;
  if (x_322) {
    let x_325 : vec3<f32> = u_xlat6;
    let x_328 : vec4<f32> = x_26.x_Vignette_Params2;
    let x_331 : vec2<f32> = (vec2<f32>(x_325.x, x_325.y) + -(vec2<f32>(x_328.x, x_328.y)));
    let x_332 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_331.x, x_331.y, x_332.z, x_332.w);
    let x_334 : vec4<f32> = u_xlat1;
    let x_338 : vec4<f32> = x_26.x_Vignette_Params2;
    let x_340 : vec2<f32> = (abs(vec2<f32>(x_334.x, x_334.y)) * vec2<f32>(x_338.z, x_338.z));
    let x_341 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_341.x, x_340.x, x_340.y, x_341.w);
    let x_344 : f32 = u_xlat1.y;
    let x_347 : f32 = x_26.x_Vignette_Params1.w;
    u_xlat1.x = (x_344 * x_347);
    let x_351 : vec4<f32> = u_xlat1;
    let x_353 : vec4<f32> = u_xlat1;
    u_xlat15 = dot(vec2<f32>(x_351.x, x_351.z), vec2<f32>(x_353.x, x_353.z));
    let x_356 : f32 = u_xlat15;
    u_xlat15 = (-(x_356) + 1.0f);
    let x_359 : f32 = u_xlat15;
    u_xlat15 = max(x_359, 0.0f);
    let x_361 : f32 = u_xlat15;
    u_xlat15 = log2(x_361);
    let x_363 : f32 = u_xlat15;
    let x_365 : f32 = x_26.x_Vignette_Params2.w;
    u_xlat15 = (x_363 * x_365);
    let x_367 : f32 = u_xlat15;
    u_xlat15 = exp2(x_367);
    let x_370 : vec4<f32> = x_26.x_Vignette_Params1;
    let x_374 : vec3<f32> = (-(vec3<f32>(x_370.x, x_370.y, x_370.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_375 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_374.x, x_374.y, x_374.z, x_375.w);
    let x_377 : f32 = u_xlat15;
    let x_379 : vec4<f32> = u_xlat1;
    let x_383 : vec4<f32> = x_26.x_Vignette_Params1;
    let x_385 : vec3<f32> = ((vec3<f32>(x_377, x_377, x_377) * vec3<f32>(x_379.x, x_379.y, x_379.z)) + vec3<f32>(x_383.x, x_383.y, x_383.z));
    let x_386 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_385.x, x_385.y, x_385.z, x_386.w);
    let x_388 : vec3<f32> = u_xlat0;
    let x_389 : vec4<f32> = u_xlat1;
    u_xlat0 = (x_388 * vec3<f32>(x_389.x, x_389.y, x_389.z));
  }
  let x_392 : vec3<f32> = u_xlat0;
  let x_395 : vec4<f32> = x_26.x_Lut_Params;
  u_xlat0 = (x_392 * vec3<f32>(x_395.w, x_395.w, x_395.w));
  let x_402 : vec3<f32> = u_xlat0;
  u_xlat6.x = dot(vec3<f32>(0.439700991f, 0.382977992f, 0.177334994f), x_402);
  let x_409 : vec3<f32> = u_xlat0;
  u_xlat6.y = dot(vec3<f32>(0.089792296f, 0.813422978f, 0.096761599f), x_409);
  let x_416 : vec3<f32> = u_xlat0;
  u_xlat6.z = dot(vec3<f32>(0.017543999f, 0.111543998f, 0.870703995f), x_416);
  let x_420 : f32 = u_xlat6.y;
  let x_422 : f32 = u_xlat6.x;
  u_xlat0.x = min(x_420, x_422);
  let x_426 : f32 = u_xlat6.z;
  let x_428 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_426, x_428);
  let x_433 : f32 = u_xlat6.y;
  let x_435 : f32 = u_xlat6.x;
  u_xlat5.x = max(x_433, x_435);
  let x_439 : f32 = u_xlat6.z;
  let x_441 : f32 = u_xlat5.x;
  u_xlat0.y = max(x_439, x_441);
  let x_444 : vec3<f32> = u_xlat0;
  u_xlat0 = max(vec3<f32>(x_444.x, x_444.y, x_444.y), vec3<f32>(0.0001f, 0.0001f, 0.01f));
  let x_451 : f32 = u_xlat0.x;
  let x_454 : f32 = u_xlat0.y;
  u_xlat0.x = (-(x_451) + x_454);
  let x_458 : f32 = u_xlat0.x;
  let x_460 : f32 = u_xlat0.z;
  u_xlat0.x = (x_458 / x_460);
  let x_463 : vec3<f32> = u_xlat6;
  let x_466 : vec3<f32> = u_xlat6;
  u_xlat5 = (-(vec3<f32>(x_463.y, x_463.x, x_463.z)) + vec3<f32>(x_466.z, x_466.y, x_466.x));
  let x_469 : vec3<f32> = u_xlat5;
  let x_471 : vec3<f32> = u_xlat6;
  let x_473 : vec2<f32> = (vec2<f32>(x_469.x, x_469.y) * vec2<f32>(x_471.z, x_471.y));
  let x_474 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_473.x, x_473.y, x_474.z);
  let x_477 : f32 = u_xlat5.y;
  let x_479 : f32 = u_xlat5.x;
  u_xlat5.x = (x_477 + x_479);
  let x_483 : f32 = u_xlat6.x;
  let x_485 : f32 = u_xlat5.z;
  let x_488 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_483 * x_485) + x_488);
  let x_492 : f32 = u_xlat5.x;
  u_xlat5.x = max(x_492, 0.0f);
  let x_496 : f32 = u_xlat5.x;
  u_xlat5.x = sqrt(x_496);
  let x_500 : f32 = u_xlat6.y;
  let x_502 : f32 = u_xlat6.z;
  u_xlat10.x = (x_500 + x_502);
  let x_506 : f32 = u_xlat6.x;
  let x_508 : f32 = u_xlat10.x;
  u_xlat10.x = (x_506 + x_508);
  let x_512 : f32 = u_xlat5.x;
  let x_516 : f32 = u_xlat10.x;
  u_xlat5.x = ((x_512 * 1.75f) + x_516);
  let x_520 : f32 = u_xlat0.x;
  u_xlat15 = (x_520 + -0.400000006f);
  let x_523 : f32 = u_xlat15;
  u_xlat1.x = (x_523 * 2.5f);
  let x_528 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_528)) + 1.0f);
  let x_534 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_534, 0.0f);
  let x_537 : f32 = u_xlat15;
  u_xlatb15 = (x_537 >= 0.0f);
  let x_539 : bool = u_xlatb15;
  u_xlat15 = select(-1.0f, 1.0f, x_539);
  let x_542 : f32 = u_xlat1.x;
  let x_545 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_542) * x_545) + 1.0f);
  let x_549 : f32 = u_xlat15;
  let x_551 : f32 = u_xlat1.x;
  u_xlat5.z = ((x_549 * x_551) + 1.0f);
  let x_555 : vec3<f32> = u_xlat5;
  u_xlat10 = (vec2<f32>(x_555.x, x_555.z) * vec2<f32>(0.333333343f, 0.025f));
  let x_563 : f32 = u_xlat5.x;
  u_xlatb1 = (0.159999996f >= x_563);
  let x_567 : f32 = u_xlat5.x;
  u_xlatb5 = (x_567 >= 0.479999989f);
  let x_572 : f32 = u_xlat10.x;
  u_xlat10.x = (0.079999998f / x_572);
  let x_576 : f32 = u_xlat10.x;
  u_xlat10.x = (x_576 + -0.5f);
  let x_580 : f32 = u_xlat10.x;
  let x_582 : f32 = u_xlat10.y;
  u_xlat10.x = (x_580 * x_582);
  let x_585 : bool = u_xlatb5;
  if (x_585) {
    x_586 = 0.0f;
  } else {
    let x_591 : f32 = u_xlat10.x;
    x_586 = x_591;
  }
  let x_592 : f32 = x_586;
  u_xlat5.x = x_592;
  let x_594 : bool = u_xlatb1;
  if (x_594) {
    let x_599 : f32 = u_xlat10.y;
    x_595 = x_599;
  } else {
    let x_602 : f32 = u_xlat5.x;
    x_595 = x_602;
  }
  let x_603 : f32 = x_595;
  u_xlat5.x = x_603;
  let x_606 : f32 = u_xlat5.x;
  u_xlat5.x = (x_606 + 1.0f);
  let x_609 : vec3<f32> = u_xlat5;
  let x_611 : vec3<f32> = u_xlat6;
  let x_612 : vec3<f32> = (vec3<f32>(x_609.x, x_609.x, x_609.x) * x_611);
  let x_613 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_613.x, x_612.x, x_612.y, x_612.z);
  let x_618 : vec4<f32> = u_xlat2;
  let x_620 : vec4<f32> = u_xlat2;
  let x_623 : vec4<bool> = (vec4<f32>(x_618.z, x_618.w, x_618.z, x_618.w) == vec4<f32>(x_620.y, x_620.z, x_620.y, x_620.z));
  u_xlatb10 = vec2<bool>(x_623.x, x_623.y);
  let x_626 : bool = u_xlatb10.y;
  let x_628 : bool = u_xlatb10.x;
  u_xlatb10.x = (x_626 & x_628);
  let x_632 : f32 = u_xlat6.y;
  let x_634 : f32 = u_xlat5.x;
  let x_637 : f32 = u_xlat2.w;
  u_xlat15 = ((x_632 * x_634) + -(x_637));
  let x_640 : f32 = u_xlat15;
  u_xlat15 = (x_640 * 1.732050776f);
  let x_644 : f32 = u_xlat2.y;
  let x_648 : f32 = u_xlat2.z;
  u_xlat1.x = ((x_644 * 2.0f) + -(x_648));
  let x_653 : f32 = u_xlat6.z;
  let x_656 : f32 = u_xlat5.x;
  let x_659 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_653) * x_656) + x_659);
  let x_662 : f32 = u_xlat15;
  let x_665 : f32 = u_xlat1.x;
  u_xlat11.x = min(abs(x_662), abs(x_665));
  let x_669 : f32 = u_xlat15;
  let x_672 : f32 = u_xlat1.x;
  u_xlat16 = max(abs(x_669), abs(x_672));
  let x_675 : f32 = u_xlat16;
  u_xlat16 = (1.0f / x_675);
  let x_677 : f32 = u_xlat16;
  let x_679 : f32 = u_xlat11.x;
  u_xlat11.x = (x_677 * x_679);
  let x_683 : f32 = u_xlat11.x;
  let x_685 : f32 = u_xlat11.x;
  u_xlat16 = (x_683 * x_685);
  let x_687 : f32 = u_xlat16;
  u_xlat3.x = ((x_687 * 0.0208351f) + -0.085133001f);
  let x_691 : f32 = u_xlat16;
  let x_693 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_691 * x_693) + 0.180141002f);
  let x_697 : f32 = u_xlat16;
  let x_699 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_697 * x_699) + -0.330299497f);
  let x_703 : f32 = u_xlat16;
  let x_705 : f32 = u_xlat3.x;
  u_xlat16 = ((x_703 * x_705) + 0.999866009f);
  let x_708 : f32 = u_xlat16;
  let x_710 : f32 = u_xlat11.x;
  u_xlat3.x = (x_708 * x_710);
  let x_715 : f32 = u_xlat1.x;
  let x_717 : f32 = u_xlat15;
  u_xlatb8 = (abs(x_715) < abs(x_717));
  let x_721 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_721 * -2.0f) + 1.570796371f);
  let x_725 : bool = u_xlatb8;
  if (x_725) {
    let x_730 : f32 = u_xlat3.x;
    x_726 = x_730;
  } else {
    x_726 = 0.0f;
  }
  let x_732 : f32 = x_726;
  u_xlat3.x = x_732;
  let x_735 : f32 = u_xlat11.x;
  let x_736 : f32 = u_xlat16;
  let x_739 : f32 = u_xlat3.x;
  u_xlat11.x = ((x_735 * x_736) + x_739);
  let x_744 : f32 = u_xlat1.x;
  let x_746 : f32 = u_xlat1.x;
  u_xlatb16 = (x_744 < -(x_746));
  let x_749 : bool = u_xlatb16;
  u_xlat16 = select(0.0f, -3.141592741f, x_749);
  let x_752 : f32 = u_xlat16;
  let x_754 : f32 = u_xlat11.x;
  u_xlat11.x = (x_752 + x_754);
  let x_757 : f32 = u_xlat15;
  let x_759 : f32 = u_xlat1.x;
  u_xlat16 = min(x_757, x_759);
  let x_761 : f32 = u_xlat15;
  let x_763 : f32 = u_xlat1.x;
  u_xlat15 = max(x_761, x_763);
  let x_765 : f32 = u_xlat16;
  let x_766 : f32 = u_xlat16;
  u_xlatb1 = (x_765 < -(x_766));
  let x_769 : f32 = u_xlat15;
  let x_770 : f32 = u_xlat15;
  u_xlatb15 = (x_769 >= -(x_770));
  let x_773 : bool = u_xlatb15;
  let x_774 : bool = u_xlatb1;
  u_xlatb15 = (x_773 & x_774);
  let x_776 : bool = u_xlatb15;
  if (x_776) {
    let x_781 : f32 = u_xlat11.x;
    x_777 = -(x_781);
  } else {
    let x_785 : f32 = u_xlat11.x;
    x_777 = x_785;
  }
  let x_786 : f32 = x_777;
  u_xlat15 = x_786;
  let x_787 : f32 = u_xlat15;
  u_xlat15 = (x_787 * 57.295780182f);
  let x_791 : bool = u_xlatb10.x;
  let x_792 : f32 = u_xlat15;
  u_xlat10.x = select(x_792, 0.0f, x_791);
  let x_796 : f32 = u_xlat10.x;
  u_xlatb15 = (x_796 < 0.0f);
  let x_799 : f32 = u_xlat10.x;
  u_xlat1.x = (x_799 + 360.0f);
  let x_803 : bool = u_xlatb15;
  if (x_803) {
    let x_808 : f32 = u_xlat1.x;
    x_804 = x_808;
  } else {
    let x_811 : f32 = u_xlat10.x;
    x_804 = x_811;
  }
  let x_812 : f32 = x_804;
  u_xlat10.x = x_812;
  let x_815 : f32 = u_xlat10.x;
  u_xlatb15 = (x_815 < -180.0f);
  let x_820 : f32 = u_xlat10.x;
  u_xlatb1 = (180.0f < x_820);
  let x_822 : vec2<f32> = u_xlat10;
  u_xlat11 = (vec2<f32>(x_822.x, x_822.x) + vec2<f32>(360.0f, -360.0f));
  let x_827 : bool = u_xlatb1;
  if (x_827) {
    let x_832 : f32 = u_xlat11.y;
    x_828 = x_832;
  } else {
    let x_835 : f32 = u_xlat10.x;
    x_828 = x_835;
  }
  let x_836 : f32 = x_828;
  u_xlat10.x = x_836;
  let x_838 : bool = u_xlatb15;
  if (x_838) {
    let x_843 : f32 = u_xlat11.x;
    x_839 = x_843;
  } else {
    let x_846 : f32 = u_xlat10.x;
    x_839 = x_846;
  }
  let x_847 : f32 = x_839;
  u_xlat10.x = x_847;
  let x_850 : f32 = u_xlat10.x;
  u_xlat10.x = (x_850 * 0.014814815f);
  let x_855 : f32 = u_xlat10.x;
  u_xlat10.x = (-(abs(x_855)) + 1.0f);
  let x_861 : f32 = u_xlat10.x;
  u_xlat10.x = max(x_861, 0.0f);
  let x_865 : f32 = u_xlat10.x;
  u_xlat15 = ((x_865 * -2.0f) + 3.0f);
  let x_870 : f32 = u_xlat10.x;
  let x_872 : f32 = u_xlat10.x;
  u_xlat10.x = (x_870 * x_872);
  let x_876 : f32 = u_xlat10.x;
  let x_877 : f32 = u_xlat15;
  u_xlat10.x = (x_876 * x_877);
  let x_881 : f32 = u_xlat10.x;
  let x_883 : f32 = u_xlat10.x;
  u_xlat10.x = (x_881 * x_883);
  let x_887 : f32 = u_xlat0.x;
  let x_889 : f32 = u_xlat10.x;
  u_xlat0.x = (x_887 * x_889);
  let x_893 : f32 = u_xlat6.x;
  let x_896 : f32 = u_xlat5.x;
  u_xlat5.x = ((-(x_893) * x_896) + 0.029999999f);
  let x_902 : f32 = u_xlat5.x;
  let x_904 : f32 = u_xlat0.x;
  u_xlat0.x = (x_902 * x_904);
  let x_908 : f32 = u_xlat0.x;
  let x_912 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_908 * 0.180000007f) + x_912);
  let x_919 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(1.451439261f, -0.236510754f, -0.214928567f), vec3<f32>(x_919.x, x_919.z, x_919.w));
  let x_927 : vec4<f32> = u_xlat2;
  u_xlat0.y = dot(vec3<f32>(-0.076553777f, 1.176229715f, -0.099675924f), vec3<f32>(x_927.x, x_927.z, x_927.w));
  let x_935 : vec4<f32> = u_xlat2;
  u_xlat0.z = dot(vec3<f32>(0.008316148f, -0.00603244966f, 0.997716308f), vec3<f32>(x_935.x, x_935.z, x_935.w));
  let x_939 : vec3<f32> = u_xlat0;
  u_xlat0 = max(x_939, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_942 : vec3<f32> = u_xlat0;
  u_xlat15 = dot(x_942, vec3<f32>(0.272228986f, 0.674081981f, 0.053689498f));
  let x_948 : f32 = u_xlat15;
  let x_951 : vec3<f32> = u_xlat0;
  u_xlat0 = (-(vec3<f32>(x_948, x_948, x_948)) + x_951);
  let x_953 : vec3<f32> = u_xlat0;
  let x_957 : f32 = u_xlat15;
  u_xlat0 = ((x_953 * vec3<f32>(0.959999979f, 0.959999979f, 0.959999979f)) + vec3<f32>(x_957, x_957, x_957));
  let x_960 : vec3<f32> = u_xlat0;
  let x_963 : vec3<f32> = (x_960 + vec3<f32>(0.024578599f, 0.024578599f, 0.024578599f));
  let x_964 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_963.x, x_963.y, x_963.z, x_964.w);
  let x_966 : vec3<f32> = u_xlat0;
  let x_967 : vec4<f32> = u_xlat1;
  let x_972 : vec3<f32> = ((x_966 * vec3<f32>(x_967.x, x_967.y, x_967.z)) + vec3<f32>(-0.000090537f, -0.000090537f, -0.000090537f));
  let x_973 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_972.x, x_972.y, x_972.z, x_973.w);
  let x_975 : vec3<f32> = u_xlat0;
  let x_981 : vec3<f32> = ((x_975 * vec3<f32>(0.983729005f, 0.983729005f, 0.983729005f)) + vec3<f32>(0.432951003f, 0.432951003f, 0.432951003f));
  let x_982 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_981.x, x_981.y, x_981.z, x_982.w);
  let x_984 : vec3<f32> = u_xlat0;
  let x_985 : vec4<f32> = u_xlat2;
  u_xlat0 = ((x_984 * vec3<f32>(x_985.x, x_985.y, x_985.z)) + vec3<f32>(0.238080993f, 0.238080993f, 0.238080993f));
  let x_991 : vec4<f32> = u_xlat1;
  let x_993 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_991.x, x_991.y, x_991.z) / x_993);
  let x_999 : vec3<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(0.662454188f, 0.134004205f, 0.156187683f), x_999);
  let x_1006 : vec3<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(0.272228718f, 0.674081743f, 0.053689517f), x_1006);
  let x_1013 : vec3<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(-0.00557464967f, 0.0040607336f, 1.010339141f), x_1013);
  let x_1016 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(x_1016.x, x_1016.y, x_1016.z), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1021 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1021, 0.0001f);
  let x_1024 : vec4<f32> = u_xlat1;
  let x_1026 : vec3<f32> = u_xlat0;
  let x_1028 : vec2<f32> = (vec2<f32>(x_1024.x, x_1024.y) / vec2<f32>(x_1026.x, x_1026.x));
  let x_1029 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1028.x, x_1028.y, x_1029.z);
  let x_1032 : f32 = u_xlat1.y;
  u_xlat15 = max(x_1032, 0.0f);
  let x_1034 : f32 = u_xlat15;
  u_xlat15 = min(x_1034, 65504.0f);
  let x_1037 : f32 = u_xlat15;
  u_xlat15 = log2(x_1037);
  let x_1039 : f32 = u_xlat15;
  u_xlat15 = (x_1039 * 0.981100023f);
  let x_1042 : f32 = u_xlat15;
  u_xlat1.y = exp2(x_1042);
  let x_1046 : f32 = u_xlat0.y;
  u_xlat15 = max(x_1046, 0.0001f);
  let x_1049 : f32 = u_xlat1.y;
  let x_1050 : f32 = u_xlat15;
  u_xlat15 = (x_1049 / x_1050);
  let x_1053 : f32 = u_xlat0.x;
  u_xlat16 = (-(x_1053) + 1.0f);
  let x_1057 : f32 = u_xlat0.y;
  let x_1059 : f32 = u_xlat16;
  u_xlat0.z = (-(x_1057) + x_1059);
  let x_1062 : f32 = u_xlat15;
  let x_1064 : vec3<f32> = u_xlat0;
  let x_1066 : vec2<f32> = (vec2<f32>(x_1062, x_1062) * vec2<f32>(x_1064.x, x_1064.z));
  let x_1067 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1066.x, x_1067.y, x_1066.y, x_1067.w);
  let x_1073 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(1.641023397f, -0.324803293f, -0.236424699f), vec3<f32>(x_1073.x, x_1073.y, x_1073.z));
  let x_1081 : vec4<f32> = u_xlat1;
  u_xlat0.y = dot(vec3<f32>(-0.663662851f, 1.61533165f, 0.016756348f), vec3<f32>(x_1081.x, x_1081.y, x_1081.z));
  let x_1089 : vec4<f32> = u_xlat1;
  u_xlat0.z = dot(vec3<f32>(0.011721894f, -0.008284442f, 0.988394856f), vec3<f32>(x_1089.x, x_1089.y, x_1089.z));
  let x_1093 : vec3<f32> = u_xlat0;
  u_xlat15 = dot(x_1093, vec3<f32>(0.272228986f, 0.674081981f, 0.053689498f));
  let x_1095 : f32 = u_xlat15;
  let x_1098 : vec3<f32> = u_xlat0;
  u_xlat0 = (-(vec3<f32>(x_1095, x_1095, x_1095)) + x_1098);
  let x_1100 : vec3<f32> = u_xlat0;
  let x_1104 : f32 = u_xlat15;
  u_xlat0 = ((x_1100 * vec3<f32>(0.930000007f, 0.930000007f, 0.930000007f)) + vec3<f32>(x_1104, x_1104, x_1104));
  let x_1107 : vec3<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(0.662454188f, 0.134004205f, 0.156187683f), x_1107);
  let x_1110 : vec3<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(0.272228718f, 0.674081743f, 0.053689517f), x_1110);
  let x_1113 : vec3<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(-0.00557464967f, 0.0040607336f, 1.010339141f), x_1113);
  let x_1120 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(0.987223983f, -0.00611327f, 0.015953301f), vec3<f32>(x_1120.x, x_1120.y, x_1120.z));
  let x_1128 : vec4<f32> = u_xlat1;
  u_xlat0.y = dot(vec3<f32>(-0.00759836f, 1.001860023f, 0.0053302f), vec3<f32>(x_1128.x, x_1128.y, x_1128.z));
  let x_1136 : vec4<f32> = u_xlat1;
  u_xlat0.z = dot(vec3<f32>(0.00307257f, -0.00509595f, 1.081680059f), vec3<f32>(x_1136.x, x_1136.y, x_1136.z));
  let x_1144 : vec3<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(3.240969896f, -1.537383199f, -0.498610765f), x_1144);
  let x_1148 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1148, 0.0f, 1.0f);
  let x_1155 : vec3<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(-0.969243646f, 1.875967503f, 0.041555058f), x_1155);
  let x_1159 : f32 = u_xlat1.y;
  u_xlat1.y = clamp(x_1159, 0.0f, 1.0f);
  let x_1166 : vec3<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(0.05563008f, -0.203976959f, 1.05697155f), x_1166);
  let x_1170 : f32 = u_xlat1.z;
  u_xlat1.z = clamp(x_1170, 0.0f, 1.0f);
  let x_1178 : f32 = x_26.x_UserLut_Params.w;
  u_xlatb0.x = (0.0f < x_1178);
  let x_1182 : bool = u_xlatb0.x;
  if (x_1182) {
    let x_1185 : vec4<f32> = u_xlat1;
    u_xlat0 = (vec3<f32>(x_1185.x, x_1185.y, x_1185.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
    let x_1190 : vec4<f32> = u_xlat1;
    let x_1192 : vec3<f32> = log2(vec3<f32>(x_1190.x, x_1190.y, x_1190.z));
    let x_1193 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1192.x, x_1192.y, x_1192.z, x_1193.w);
    let x_1195 : vec4<f32> = u_xlat2;
    let x_1199 : vec3<f32> = (vec3<f32>(x_1195.x, x_1195.y, x_1195.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
    let x_1200 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1199.x, x_1199.y, x_1199.z, x_1200.w);
    let x_1202 : vec4<f32> = u_xlat2;
    let x_1204 : vec3<f32> = exp2(vec3<f32>(x_1202.x, x_1202.y, x_1202.z));
    let x_1205 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1204.x, x_1204.y, x_1204.z, x_1205.w);
    let x_1207 : vec4<f32> = u_xlat2;
    let x_1214 : vec3<f32> = ((vec3<f32>(x_1207.x, x_1207.y, x_1207.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
    let x_1215 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1214.x, x_1214.y, x_1214.z, x_1215.w);
    let x_1220 : vec4<f32> = u_xlat1;
    let x_1222 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1220.x, x_1220.y, x_1220.z, x_1220.x));
    u_xlatb3 = vec3<bool>(x_1222.x, x_1222.y, x_1222.z);
    let x_1225 : vec3<f32> = u_xlat0;
    hlslcc_movcTemp = x_1225;
    let x_1227 : bool = u_xlatb3.x;
    if (x_1227) {
      let x_1232 : f32 = u_xlat0.x;
      x_1228 = x_1232;
    } else {
      let x_1235 : f32 = u_xlat2.x;
      x_1228 = x_1235;
    }
    let x_1236 : f32 = x_1228;
    hlslcc_movcTemp.x = x_1236;
    let x_1239 : bool = u_xlatb3.y;
    if (x_1239) {
      let x_1244 : f32 = u_xlat0.y;
      x_1240 = x_1244;
    } else {
      let x_1247 : f32 = u_xlat2.y;
      x_1240 = x_1247;
    }
    let x_1248 : f32 = x_1240;
    hlslcc_movcTemp.y = x_1248;
    let x_1251 : bool = u_xlatb3.z;
    if (x_1251) {
      let x_1256 : f32 = u_xlat0.z;
      x_1252 = x_1256;
    } else {
      let x_1259 : f32 = u_xlat2.z;
      x_1252 = x_1259;
    }
    let x_1260 : f32 = x_1252;
    hlslcc_movcTemp.z = x_1260;
    let x_1262 : vec3<f32> = hlslcc_movcTemp;
    u_xlat0 = x_1262;
    let x_1263 : vec3<f32> = u_xlat0;
    let x_1266 : vec4<f32> = x_26.x_UserLut_Params;
    let x_1268 : vec3<f32> = (vec3<f32>(x_1263.z, x_1263.x, x_1263.y) * vec3<f32>(x_1266.z, x_1266.z, x_1266.z));
    let x_1269 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1268.x, x_1268.y, x_1268.z, x_1269.w);
    let x_1272 : f32 = u_xlat2.x;
    u_xlat15 = floor(x_1272);
    let x_1275 : vec4<f32> = x_26.x_UserLut_Params;
    let x_1277 : vec2<f32> = (vec2<f32>(x_1275.x, x_1275.y) * vec2<f32>(0.5f, 0.5f));
    let x_1278 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1277.x, x_1278.y, x_1278.z, x_1277.y);
    let x_1280 : vec4<f32> = u_xlat2;
    let x_1283 : vec4<f32> = x_26.x_UserLut_Params;
    let x_1286 : vec4<f32> = u_xlat2;
    let x_1288 : vec2<f32> = ((vec2<f32>(x_1280.y, x_1280.z) * vec2<f32>(x_1283.x, x_1283.y)) + vec2<f32>(x_1286.x, x_1286.w));
    let x_1289 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1289.x, x_1288.x, x_1288.y, x_1289.w);
    let x_1291 : f32 = u_xlat15;
    let x_1293 : f32 = x_26.x_UserLut_Params.y;
    let x_1296 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_1291 * x_1293) + x_1296);
    let x_1303 : vec4<f32> = u_xlat2;
    let x_1305 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1303.x, x_1303.z), 0.0f);
    u_xlat3 = vec3<f32>(x_1305.x, x_1305.y, x_1305.z);
    let x_1309 : f32 = x_26.x_UserLut_Params.y;
    u_xlat4.x = x_1309;
    u_xlat4.y = 0.0f;
    let x_1312 : vec4<f32> = u_xlat2;
    let x_1314 : vec2<f32> = u_xlat4;
    let x_1315 : vec2<f32> = (vec2<f32>(x_1312.x, x_1312.z) + x_1314);
    let x_1316 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1315.x, x_1315.y, x_1316.z, x_1316.w);
    let x_1321 : vec4<f32> = u_xlat2;
    let x_1323 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1321.x, x_1321.y), 0.0f);
    let x_1324 : vec3<f32> = vec3<f32>(x_1323.x, x_1323.y, x_1323.z);
    let x_1325 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1324.x, x_1324.y, x_1324.z, x_1325.w);
    let x_1328 : f32 = u_xlat0.z;
    let x_1330 : f32 = x_26.x_UserLut_Params.z;
    let x_1332 : f32 = u_xlat15;
    u_xlat15 = ((x_1328 * x_1330) + -(x_1332));
    let x_1335 : vec3<f32> = u_xlat3;
    let x_1337 : vec4<f32> = u_xlat2;
    let x_1339 : vec3<f32> = (-(x_1335) + vec3<f32>(x_1337.x, x_1337.y, x_1337.z));
    let x_1340 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1339.x, x_1339.y, x_1339.z, x_1340.w);
    let x_1342 : f32 = u_xlat15;
    let x_1344 : vec4<f32> = u_xlat2;
    let x_1347 : vec3<f32> = u_xlat3;
    let x_1348 : vec3<f32> = ((vec3<f32>(x_1342, x_1342, x_1342) * vec3<f32>(x_1344.x, x_1344.y, x_1344.z)) + x_1347);
    let x_1349 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1348.x, x_1348.y, x_1348.z, x_1349.w);
    let x_1351 : vec3<f32> = u_xlat0;
    let x_1353 : vec4<f32> = u_xlat2;
    let x_1355 : vec3<f32> = (-(x_1351) + vec3<f32>(x_1353.x, x_1353.y, x_1353.z));
    let x_1356 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1355.x, x_1355.y, x_1355.z, x_1356.w);
    let x_1359 : vec4<f32> = x_26.x_UserLut_Params;
    let x_1361 : vec4<f32> = u_xlat2;
    let x_1364 : vec3<f32> = u_xlat0;
    u_xlat0 = ((vec3<f32>(x_1359.w, x_1359.w, x_1359.w) * vec3<f32>(x_1361.x, x_1361.y, x_1361.z)) + x_1364);
    let x_1366 : vec3<f32> = u_xlat0;
    let x_1369 : vec3<f32> = (x_1366 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
    let x_1370 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1369.x, x_1369.y, x_1369.z, x_1370.w);
    let x_1372 : vec3<f32> = u_xlat0;
    u_xlat3 = (x_1372 + vec3<f32>(0.055f, 0.055f, 0.055f));
    let x_1376 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_1376 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
    let x_1380 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_1380));
    let x_1383 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_1383 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
    let x_1387 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_1387);
    let x_1391 : vec3<f32> = u_xlat0;
    let x_1393 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1391.x, x_1391.y, x_1391.z, x_1391.x));
    u_xlatb0 = vec3<bool>(x_1393.x, x_1393.y, x_1393.z);
    let x_1396 : bool = u_xlatb0.x;
    if (x_1396) {
      let x_1401 : f32 = u_xlat2.x;
      x_1397 = x_1401;
    } else {
      let x_1404 : f32 = u_xlat3.x;
      x_1397 = x_1404;
    }
    let x_1405 : f32 = x_1397;
    u_xlat1.x = x_1405;
    let x_1408 : bool = u_xlatb0.y;
    if (x_1408) {
      let x_1413 : f32 = u_xlat2.y;
      x_1409 = x_1413;
    } else {
      let x_1416 : f32 = u_xlat3.y;
      x_1409 = x_1416;
    }
    let x_1417 : f32 = x_1409;
    u_xlat1.y = x_1417;
    let x_1420 : bool = u_xlatb0.z;
    if (x_1420) {
      let x_1425 : f32 = u_xlat2.z;
      x_1421 = x_1425;
    } else {
      let x_1428 : f32 = u_xlat3.z;
      x_1421 = x_1428;
    }
    let x_1429 : f32 = x_1421;
    u_xlat1.z = x_1429;
  }
  let x_1431 : vec4<f32> = u_xlat1;
  let x_1434 : vec4<f32> = x_26.x_Lut_Params;
  u_xlat0 = (vec3<f32>(x_1431.z, x_1431.x, x_1431.y) * vec3<f32>(x_1434.z, x_1434.z, x_1434.z));
  let x_1438 : f32 = u_xlat0.x;
  u_xlat0.x = floor(x_1438);
  let x_1442 : vec4<f32> = x_26.x_Lut_Params;
  let x_1444 : vec2<f32> = (vec2<f32>(x_1442.x, x_1442.y) * vec2<f32>(0.5f, 0.5f));
  let x_1445 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1444.x, x_1444.y, x_1445.z, x_1445.w);
  let x_1447 : vec3<f32> = u_xlat0;
  let x_1450 : vec4<f32> = x_26.x_Lut_Params;
  let x_1453 : vec4<f32> = u_xlat1;
  let x_1455 : vec2<f32> = ((vec2<f32>(x_1447.y, x_1447.z) * vec2<f32>(x_1450.x, x_1450.y)) + vec2<f32>(x_1453.x, x_1453.y));
  let x_1456 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1456.x, x_1455.x, x_1455.y, x_1456.w);
  let x_1459 : f32 = u_xlat0.x;
  let x_1461 : f32 = x_26.x_Lut_Params.y;
  let x_1464 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_1459 * x_1461) + x_1464);
  let x_1471 : vec4<f32> = u_xlat2;
  let x_1473 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1471.x, x_1471.z), 0.0f);
  u_xlat5 = vec3<f32>(x_1473.x, x_1473.y, x_1473.z);
  let x_1476 : f32 = x_26.x_Lut_Params.y;
  u_xlat1.x = x_1476;
  u_xlat1.y = 0.0f;
  let x_1479 : vec4<f32> = u_xlat1;
  let x_1481 : vec4<f32> = u_xlat2;
  let x_1483 : vec2<f32> = (vec2<f32>(x_1479.x, x_1479.y) + vec2<f32>(x_1481.x, x_1481.z));
  let x_1484 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1483.x, x_1483.y, x_1484.z, x_1484.w);
  let x_1489 : vec4<f32> = u_xlat1;
  let x_1491 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1489.x, x_1489.y), 0.0f);
  let x_1492 : vec3<f32> = vec3<f32>(x_1491.x, x_1491.y, x_1491.z);
  let x_1493 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1492.x, x_1492.y, x_1493.z, x_1492.z);
  let x_1496 : f32 = u_xlat1.z;
  let x_1498 : f32 = x_26.x_Lut_Params.z;
  let x_1501 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1496 * x_1498) + -(x_1501));
  let x_1505 : vec3<f32> = u_xlat5;
  let x_1507 : vec4<f32> = u_xlat1;
  let x_1509 : vec3<f32> = (-(x_1505) + vec3<f32>(x_1507.x, x_1507.y, x_1507.w));
  let x_1510 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1509.x, x_1509.y, x_1509.z, x_1510.w);
  let x_1512 : vec3<f32> = u_xlat0;
  let x_1514 : vec4<f32> = u_xlat1;
  let x_1517 : vec3<f32> = u_xlat5;
  u_xlat0 = ((vec3<f32>(x_1512.x, x_1512.x, x_1512.x) * vec3<f32>(x_1514.x, x_1514.y, x_1514.z)) + x_1517);
  let x_1519 : vec2<f32> = vs_TEXCOORD0;
  let x_1522 : vec4<f32> = x_26.x_Grain_TilingParams;
  let x_1526 : vec4<f32> = x_26.x_Grain_TilingParams;
  let x_1528 : vec2<f32> = ((x_1519 * vec2<f32>(x_1522.x, x_1522.y)) + vec2<f32>(x_1526.z, x_1526.w));
  let x_1529 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1528.x, x_1528.y, x_1529.z, x_1529.w);
  let x_1536 : vec4<f32> = u_xlat1;
  let x_1539 : f32 = x_26.x_GlobalMipBias.x;
  let x_1540 : vec4<f32> = textureSampleBias(x_Grain_Texture, sampler_LinearRepeat, vec2<f32>(x_1536.x, x_1536.y), x_1539);
  u_xlat15 = x_1540.w;
  let x_1542 : f32 = u_xlat15;
  u_xlat15 = (x_1542 + -0.5f);
  let x_1544 : f32 = u_xlat15;
  let x_1545 : f32 = u_xlat15;
  u_xlat15 = (x_1544 + x_1545);
  let x_1547 : vec3<f32> = u_xlat0;
  u_xlat1.x = dot(x_1547, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_1555 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_1555);
  let x_1560 : f32 = x_26.x_Grain_Params.y;
  let x_1562 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1560 * -(x_1562)) + 1.0f);
  let x_1567 : f32 = u_xlat15;
  let x_1569 : vec3<f32> = u_xlat0;
  u_xlat6 = (vec3<f32>(x_1567, x_1567, x_1567) * x_1569);
  let x_1571 : vec3<f32> = u_xlat6;
  let x_1574 : vec2<f32> = x_26.x_Grain_Params;
  u_xlat6 = (x_1571 * vec3<f32>(x_1574.x, x_1574.x, x_1574.x));
  let x_1577 : vec3<f32> = u_xlat6;
  let x_1578 : vec4<f32> = u_xlat1;
  let x_1581 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_1577 * vec3<f32>(x_1578.x, x_1578.x, x_1578.x)) + x_1581);
  let x_1583 : vec3<f32> = u_xlat0;
  let x_1584 : vec3<f32> = (x_1583 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1585 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1584.x, x_1584.y, x_1584.z, x_1585.w);
  let x_1587 : vec3<f32> = u_xlat0;
  let x_1589 : vec3<f32> = log2(abs(x_1587));
  let x_1590 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1589.x, x_1589.y, x_1589.z, x_1590.w);
  let x_1592 : vec4<f32> = u_xlat2;
  let x_1594 : vec3<f32> = (vec3<f32>(x_1592.x, x_1592.y, x_1592.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1595 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1594.x, x_1594.y, x_1594.z, x_1595.w);
  let x_1597 : vec4<f32> = u_xlat2;
  let x_1599 : vec3<f32> = exp2(vec3<f32>(x_1597.x, x_1597.y, x_1597.z));
  let x_1600 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1599.x, x_1599.y, x_1599.z, x_1600.w);
  let x_1602 : vec4<f32> = u_xlat2;
  let x_1605 : vec3<f32> = ((vec3<f32>(x_1602.x, x_1602.y, x_1602.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1606 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1605.x, x_1605.y, x_1605.z, x_1606.w);
  let x_1608 : vec3<f32> = u_xlat0;
  let x_1610 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1608.x, x_1608.y, x_1608.z, x_1608.x));
  u_xlatb0 = vec3<bool>(x_1610.x, x_1610.y, x_1610.z);
  let x_1613 : bool = u_xlatb0.x;
  if (x_1613) {
    let x_1618 : f32 = u_xlat1.x;
    x_1614 = x_1618;
  } else {
    let x_1621 : f32 = u_xlat2.x;
    x_1614 = x_1621;
  }
  let x_1622 : f32 = x_1614;
  u_xlat0.x = x_1622;
  let x_1625 : bool = u_xlatb0.y;
  if (x_1625) {
    let x_1630 : f32 = u_xlat1.y;
    x_1626 = x_1630;
  } else {
    let x_1633 : f32 = u_xlat2.y;
    x_1626 = x_1633;
  }
  let x_1634 : f32 = x_1626;
  u_xlat0.y = x_1634;
  let x_1637 : bool = u_xlatb0.z;
  if (x_1637) {
    let x_1642 : f32 = u_xlat1.z;
    x_1638 = x_1642;
  } else {
    let x_1645 : f32 = u_xlat2.z;
    x_1638 = x_1645;
  }
  let x_1646 : f32 = x_1638;
  u_xlat0.z = x_1646;
  let x_1648 : vec2<f32> = vs_TEXCOORD0;
  let x_1651 : vec4<f32> = x_26.x_Dithering_Params;
  let x_1655 : vec4<f32> = x_26.x_Dithering_Params;
  let x_1657 : vec2<f32> = ((x_1648 * vec2<f32>(x_1651.x, x_1651.y)) + vec2<f32>(x_1655.z, x_1655.w));
  let x_1658 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1657.x, x_1657.y, x_1658.z, x_1658.w);
  let x_1665 : vec4<f32> = u_xlat1;
  let x_1668 : f32 = x_26.x_GlobalMipBias.x;
  let x_1669 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_1665.x, x_1665.y), x_1668);
  u_xlat15 = x_1669.w;
  let x_1671 : f32 = u_xlat15;
  u_xlat15 = ((x_1671 * 2.0f) + -1.0f);
  let x_1674 : f32 = u_xlat15;
  u_xlatb1 = (x_1674 >= 0.0f);
  let x_1676 : bool = u_xlatb1;
  u_xlat1.x = select(-1.0f, 1.0f, x_1676);
  let x_1679 : f32 = u_xlat15;
  u_xlat15 = (-(abs(x_1679)) + 1.0f);
  let x_1683 : f32 = u_xlat15;
  u_xlat15 = sqrt(x_1683);
  let x_1685 : f32 = u_xlat15;
  u_xlat15 = (-(x_1685) + 1.0f);
  let x_1688 : f32 = u_xlat15;
  let x_1690 : f32 = u_xlat1.x;
  u_xlat15 = (x_1688 * x_1690);
  let x_1692 : vec3<f32> = u_xlat0;
  let x_1693 : vec3<f32> = (x_1692 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1694 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1693.x, x_1693.y, x_1693.z, x_1694.w);
  let x_1696 : vec3<f32> = u_xlat0;
  let x_1698 : vec3<f32> = log2(abs(x_1696));
  let x_1699 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1698.x, x_1698.y, x_1698.z, x_1699.w);
  let x_1701 : vec4<f32> = u_xlat2;
  let x_1703 : vec3<f32> = (vec3<f32>(x_1701.x, x_1701.y, x_1701.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1704 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1703.x, x_1703.y, x_1703.z, x_1704.w);
  let x_1706 : vec4<f32> = u_xlat2;
  let x_1708 : vec3<f32> = exp2(vec3<f32>(x_1706.x, x_1706.y, x_1706.z));
  let x_1709 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1708.x, x_1708.y, x_1708.z, x_1709.w);
  let x_1711 : vec4<f32> = u_xlat2;
  let x_1714 : vec3<f32> = ((vec3<f32>(x_1711.x, x_1711.y, x_1711.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1715 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1714.x, x_1714.y, x_1714.z, x_1715.w);
  let x_1717 : vec3<f32> = u_xlat0;
  let x_1719 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1717.x, x_1717.y, x_1717.z, x_1717.x));
  u_xlatb0 = vec3<bool>(x_1719.x, x_1719.y, x_1719.z);
  let x_1722 : bool = u_xlatb0.x;
  if (x_1722) {
    let x_1727 : f32 = u_xlat1.x;
    x_1723 = x_1727;
  } else {
    let x_1730 : f32 = u_xlat2.x;
    x_1723 = x_1730;
  }
  let x_1731 : f32 = x_1723;
  u_xlat0.x = x_1731;
  let x_1734 : bool = u_xlatb0.y;
  if (x_1734) {
    let x_1739 : f32 = u_xlat1.y;
    x_1735 = x_1739;
  } else {
    let x_1742 : f32 = u_xlat2.y;
    x_1735 = x_1742;
  }
  let x_1743 : f32 = x_1735;
  u_xlat0.y = x_1743;
  let x_1746 : bool = u_xlatb0.z;
  if (x_1746) {
    let x_1751 : f32 = u_xlat1.z;
    x_1747 = x_1751;
  } else {
    let x_1754 : f32 = u_xlat2.z;
    x_1747 = x_1754;
  }
  let x_1755 : f32 = x_1747;
  u_xlat0.z = x_1755;
  let x_1757 : f32 = u_xlat15;
  let x_1762 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1757, x_1757, x_1757) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + x_1762);
  let x_1764 : vec3<f32> = u_xlat0;
  let x_1765 : vec3<f32> = (x_1764 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1766 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1765.x, x_1765.y, x_1765.z, x_1766.w);
  let x_1768 : vec3<f32> = u_xlat0;
  let x_1769 : vec3<f32> = (x_1768 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1770 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1769.x, x_1769.y, x_1769.z, x_1770.w);
  let x_1772 : vec4<f32> = u_xlat2;
  let x_1774 : vec3<f32> = (vec3<f32>(x_1772.x, x_1772.y, x_1772.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1775 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1774.x, x_1774.y, x_1774.z, x_1775.w);
  let x_1777 : vec4<f32> = u_xlat2;
  let x_1780 : vec3<f32> = log2(abs(vec3<f32>(x_1777.x, x_1777.y, x_1777.z)));
  let x_1781 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1780.x, x_1780.y, x_1780.z, x_1781.w);
  let x_1783 : vec4<f32> = u_xlat2;
  let x_1785 : vec3<f32> = (vec3<f32>(x_1783.x, x_1783.y, x_1783.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1786 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1785.x, x_1785.y, x_1785.z, x_1786.w);
  let x_1788 : vec4<f32> = u_xlat2;
  let x_1790 : vec3<f32> = exp2(vec3<f32>(x_1788.x, x_1788.y, x_1788.z));
  let x_1791 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1790.x, x_1790.y, x_1790.z, x_1791.w);
  let x_1793 : vec3<f32> = u_xlat0;
  let x_1795 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1793.x, x_1793.y, x_1793.z, x_1793.x));
  u_xlatb0 = vec3<bool>(x_1795.x, x_1795.y, x_1795.z);
  let x_1798 : bool = u_xlatb0.x;
  if (x_1798) {
    let x_1803 : f32 = u_xlat1.x;
    x_1799 = x_1803;
  } else {
    let x_1806 : f32 = u_xlat2.x;
    x_1799 = x_1806;
  }
  let x_1807 : f32 = x_1799;
  u_xlat0.x = x_1807;
  let x_1810 : bool = u_xlatb0.y;
  if (x_1810) {
    let x_1815 : f32 = u_xlat1.y;
    x_1811 = x_1815;
  } else {
    let x_1818 : f32 = u_xlat2.y;
    x_1811 = x_1818;
  }
  let x_1819 : f32 = x_1811;
  u_xlat0.y = x_1819;
  let x_1822 : bool = u_xlatb0.z;
  if (x_1822) {
    let x_1827 : f32 = u_xlat1.z;
    x_1823 = x_1827;
  } else {
    let x_1830 : f32 = u_xlat2.z;
    x_1823 = x_1830;
  }
  let x_1831 : f32 = x_1823;
  u_xlat0.z = x_1831;
  let x_1835 : vec3<f32> = u_xlat0;
  let x_1836 : vec3<f32> = max(x_1835, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1837 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1836.x, x_1836.y, x_1836.z, x_1837.w);
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

