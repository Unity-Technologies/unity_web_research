struct PGlobals {
  x_Distortion_Amount : vec4<f32>,
  x_Distortion_CenterScale : vec4<f32>,
  x_Dithering_Coords : vec4<f32>,
  x_Grain_Params1 : vec2<f32>,
  @size(8)
  padding : u32,
  x_Grain_Params2 : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> u_xlat8 : vec2<f32>;

@group(0) @binding(0) var<uniform> x_26 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlatb5 : bool;

var<private> u_xlat5 : vec2<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : f32;

var<private> u_xlat9 : f32;

var<private> u_xlat13 : f32;

var<private> u_xlat6 : f32;

var<private> u_xlat10 : f32;

var<private> u_xlatb14 : bool;

var<private> u_xlatb1 : bool;

@group(0) @binding(3) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

@group(0) @binding(4) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_GrainTex : sampler;

var<private> u_xlat12 : f32;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_DitheringTex : sampler;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_222 : f32;
  var x_432 : f32;
  var x_444 : f32;
  var x_457 : f32;
  var x_509 : f32;
  var x_522 : f32;
  var x_534 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD1;
  let x_16 : vec2<f32> = (x_13 + vec2<f32>(-0.5f, -0.5f));
  let x_17 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_16.x, x_16.y, x_17.z);
  let x_21 : vec3<f32> = u_xlat0;
  let x_31 : vec4<f32> = x_26.x_Distortion_Amount;
  u_xlat8 = ((vec2<f32>(x_21.x, x_21.y) * vec2<f32>(x_31.z, x_31.z)) + vec2<f32>(0.5f, 0.5f));
  let x_37 : vec3<f32> = u_xlat0;
  let x_40 : vec4<f32> = x_26.x_Distortion_Amount;
  let x_45 : vec4<f32> = x_26.x_Distortion_CenterScale;
  let x_48 : vec2<f32> = ((vec2<f32>(x_37.x, x_37.y) * vec2<f32>(x_40.z, x_40.z)) + -(vec2<f32>(x_45.x, x_45.y)));
  let x_49 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_48.x, x_48.y, x_49.z);
  let x_51 : vec3<f32> = u_xlat0;
  let x_54 : vec4<f32> = x_26.x_Distortion_CenterScale;
  let x_56 : vec2<f32> = (vec2<f32>(x_51.x, x_51.y) * vec2<f32>(x_54.z, x_54.w));
  let x_57 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_56.x, x_56.y, x_57.z);
  let x_61 : vec3<f32> = u_xlat0;
  let x_63 : vec3<f32> = u_xlat0;
  u_xlat1.x = dot(vec2<f32>(x_61.x, x_61.y), vec2<f32>(x_63.x, x_63.y));
  let x_71 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_71);
  let x_81 : f32 = x_26.x_Distortion_Amount.w;
  u_xlatb5 = (0.0f < x_81);
  let x_83 : bool = u_xlatb5;
  if (x_83) {
    let x_87 : vec4<f32> = u_xlat1;
    let x_90 : vec4<f32> = x_26.x_Distortion_Amount;
    u_xlat5 = (vec2<f32>(x_87.x, x_87.x) * vec2<f32>(x_90.x, x_90.y));
    let x_95 : f32 = u_xlat5.x;
    u_xlat2.x = sin(x_95);
    let x_100 : f32 = u_xlat5.x;
    u_xlat3 = cos(x_100);
    let x_103 : f32 = u_xlat2.x;
    let x_104 : f32 = u_xlat3;
    u_xlat5.x = (x_103 / x_104);
    let x_111 : f32 = u_xlat5.y;
    u_xlat9 = (1.0f / x_111);
    let x_114 : f32 = u_xlat5.x;
    let x_115 : f32 = u_xlat9;
    u_xlat5.x = ((x_114 * x_115) + -1.0f);
    let x_120 : vec3<f32> = u_xlat0;
    let x_122 : vec2<f32> = u_xlat5;
    let x_125 : vec2<f32> = u_xlat8;
    u_xlat5 = ((vec2<f32>(x_120.x, x_120.y) * vec2<f32>(x_122.x, x_122.x)) + x_125);
  } else {
    let x_130 : f32 = u_xlat1.x;
    u_xlat13 = (1.0f / x_130);
    let x_132 : f32 = u_xlat13;
    let x_134 : f32 = x_26.x_Distortion_Amount.x;
    u_xlat13 = (x_132 * x_134);
    let x_137 : f32 = u_xlat1.x;
    let x_139 : f32 = x_26.x_Distortion_Amount.y;
    u_xlat1.x = (x_137 * x_139);
    let x_143 : f32 = u_xlat1.x;
    u_xlat2.x = min(abs(x_143), 1.0f);
    let x_149 : f32 = u_xlat1.x;
    u_xlat6 = max(abs(x_149), 1.0f);
    let x_152 : f32 = u_xlat6;
    u_xlat6 = (1.0f / x_152);
    let x_154 : f32 = u_xlat6;
    let x_156 : f32 = u_xlat2.x;
    u_xlat2.x = (x_154 * x_156);
    let x_160 : f32 = u_xlat2.x;
    let x_162 : f32 = u_xlat2.x;
    u_xlat6 = (x_160 * x_162);
    let x_165 : f32 = u_xlat6;
    u_xlat10 = ((x_165 * 0.0208351f) + -0.085133001f);
    let x_170 : f32 = u_xlat6;
    let x_171 : f32 = u_xlat10;
    u_xlat10 = ((x_170 * x_171) + 0.180141002f);
    let x_175 : f32 = u_xlat6;
    let x_176 : f32 = u_xlat10;
    u_xlat10 = ((x_175 * x_176) + -0.330299497f);
    let x_180 : f32 = u_xlat6;
    let x_181 : f32 = u_xlat10;
    u_xlat6 = ((x_180 * x_181) + 0.999866009f);
    let x_185 : f32 = u_xlat6;
    let x_187 : f32 = u_xlat2.x;
    u_xlat10 = (x_185 * x_187);
    let x_191 : f32 = u_xlat1.x;
    u_xlatb14 = (1.0f < abs(x_191));
    let x_194 : f32 = u_xlat10;
    u_xlat10 = ((x_194 * -2.0f) + 1.570796371f);
    let x_199 : bool = u_xlatb14;
    let x_200 : f32 = u_xlat10;
    u_xlat10 = select(0.0f, x_200, x_199);
    let x_203 : f32 = u_xlat2.x;
    let x_204 : f32 = u_xlat6;
    let x_206 : f32 = u_xlat10;
    u_xlat2.x = ((x_203 * x_204) + x_206);
    let x_210 : f32 = u_xlat1.x;
    u_xlat1.x = min(x_210, 1.0f);
    let x_215 : f32 = u_xlat1.x;
    let x_217 : f32 = u_xlat1.x;
    u_xlatb1 = (x_215 < -(x_217));
    let x_220 : bool = u_xlatb1;
    if (x_220) {
      let x_226 : f32 = u_xlat2.x;
      x_222 = -(x_226);
    } else {
      let x_230 : f32 = u_xlat2.x;
      x_222 = x_230;
    }
    let x_231 : f32 = x_222;
    u_xlat1.x = x_231;
    let x_233 : f32 = u_xlat13;
    let x_235 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_233 * x_235) + -1.0f);
    let x_239 : vec3<f32> = u_xlat0;
    let x_241 : vec4<f32> = u_xlat1;
    let x_244 : vec2<f32> = u_xlat8;
    u_xlat5 = ((vec2<f32>(x_239.x, x_239.y) * vec2<f32>(x_241.x, x_241.x)) + x_244);
  }
  let x_257 : vec2<f32> = vs_TEXCOORD0;
  let x_258 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_257);
  u_xlat0.x = x_258.x;
  let x_266 : vec2<f32> = u_xlat5;
  let x_267 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_266);
  u_xlat1 = x_267;
  let x_268 : vec3<f32> = u_xlat0;
  let x_270 : vec4<f32> = u_xlat1;
  u_xlat0 = (vec3<f32>(x_268.x, x_268.x, x_268.x) * vec3<f32>(x_270.x, x_270.y, x_270.z));
  let x_273 : vec2<f32> = vs_TEXCOORD1;
  let x_276 : vec4<f32> = x_26.x_Grain_Params2;
  let x_280 : vec4<f32> = x_26.x_Grain_Params2;
  let x_282 : vec2<f32> = ((x_273 * vec2<f32>(x_276.x, x_276.y)) + vec2<f32>(x_280.z, x_280.w));
  let x_283 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_282.x, x_282.y, x_283.z, x_283.w);
  let x_290 : vec4<f32> = u_xlat1;
  let x_292 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_290.x, x_290.y));
  let x_293 : vec3<f32> = vec3<f32>(x_292.x, x_292.y, x_292.z);
  let x_294 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_293.x, x_293.y, x_293.z, x_294.w);
  let x_296 : vec3<f32> = u_xlat0;
  u_xlat2 = x_296;
  let x_297 : vec3<f32> = u_xlat2;
  u_xlat2 = clamp(x_297, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_302 : vec3<f32> = u_xlat2;
  u_xlat12 = dot(x_302, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_308 : f32 = u_xlat12;
  u_xlat12 = sqrt(x_308);
  let x_312 : f32 = x_26.x_Grain_Params1.x;
  let x_313 : f32 = u_xlat12;
  u_xlat12 = ((x_312 * -(x_313)) + 1.0f);
  let x_317 : vec3<f32> = u_xlat0;
  let x_318 : vec4<f32> = u_xlat1;
  let x_320 : vec3<f32> = (x_317 * vec3<f32>(x_318.x, x_318.y, x_318.z));
  let x_321 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_320.x, x_320.y, x_320.z, x_321.w);
  let x_323 : vec4<f32> = u_xlat1;
  let x_326 : f32 = x_26.x_Grain_Params1.y;
  let x_328 : f32 = x_26.x_Grain_Params1.y;
  let x_330 : f32 = x_26.x_Grain_Params1.y;
  let x_332 : vec3<f32> = (vec3<f32>(x_323.x, x_323.y, x_323.z) * vec3<f32>(x_326, x_328, x_330));
  let x_333 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_332.x, x_332.y, x_332.z, x_333.w);
  let x_335 : vec4<f32> = u_xlat1;
  let x_337 : f32 = u_xlat12;
  let x_340 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_335.x, x_335.y, x_335.z) * vec3<f32>(x_337, x_337, x_337)) + x_340);
  let x_342 : vec2<f32> = vs_TEXCOORD0;
  let x_345 : vec4<f32> = x_26.x_Dithering_Coords;
  let x_349 : vec4<f32> = x_26.x_Dithering_Coords;
  let x_351 : vec2<f32> = ((x_342 * vec2<f32>(x_345.x, x_345.y)) + vec2<f32>(x_349.z, x_349.w));
  let x_352 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_351.x, x_351.y, x_352.z, x_352.w);
  let x_359 : vec4<f32> = u_xlat1;
  let x_361 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_359.x, x_359.y));
  u_xlat12 = x_361.w;
  let x_363 : f32 = u_xlat12;
  u_xlat12 = ((x_363 * 2.0f) + -1.0f);
  let x_367 : f32 = u_xlat12;
  u_xlat1.x = ((x_367 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_373 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_373, 0.0f, 1.0f);
  let x_377 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_377 * 2.0f) + -1.0f);
  let x_381 : f32 = u_xlat12;
  u_xlat12 = (-(abs(x_381)) + 1.0f);
  let x_385 : f32 = u_xlat12;
  u_xlat12 = sqrt(x_385);
  let x_387 : f32 = u_xlat12;
  u_xlat12 = (-(x_387) + 1.0f);
  let x_390 : f32 = u_xlat12;
  let x_392 : f32 = u_xlat1.x;
  u_xlat12 = (x_390 * x_392);
  let x_394 : vec3<f32> = u_xlat0;
  let x_397 : vec3<f32> = (x_394 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_398 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_397.x, x_397.y, x_397.z, x_398.w);
  let x_400 : vec3<f32> = u_xlat0;
  u_xlat2 = max(abs(x_400), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_405 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_405);
  let x_407 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_407 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_411 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_411);
  let x_413 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_413 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_425 : vec3<f32> = u_xlat0;
  let x_428 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_425.x, x_425.y, x_425.z, x_425.x));
  u_xlatb0 = vec3<bool>(x_428.x, x_428.y, x_428.z);
  let x_431 : bool = u_xlatb0.x;
  if (x_431) {
    let x_436 : f32 = u_xlat1.x;
    x_432 = x_436;
  } else {
    let x_439 : f32 = u_xlat2.x;
    x_432 = x_439;
  }
  let x_440 : f32 = x_432;
  u_xlat0.x = x_440;
  let x_443 : bool = u_xlatb0.y;
  if (x_443) {
    let x_448 : f32 = u_xlat1.y;
    x_444 = x_448;
  } else {
    let x_451 : f32 = u_xlat2.y;
    x_444 = x_451;
  }
  let x_452 : f32 = x_444;
  u_xlat0.y = x_452;
  let x_456 : bool = u_xlatb0.z;
  if (x_456) {
    let x_461 : f32 = u_xlat1.z;
    x_457 = x_461;
  } else {
    let x_464 : f32 = u_xlat2.z;
    x_457 = x_464;
  }
  let x_465 : f32 = x_457;
  u_xlat0.z = x_465;
  let x_467 : f32 = u_xlat12;
  let x_472 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_467, x_467, x_467) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + x_472);
  let x_474 : vec3<f32> = u_xlat0;
  let x_477 : vec3<f32> = (x_474 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_478 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_477.x, x_477.y, x_477.z, x_478.w);
  let x_480 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_480 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_484 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_484 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_488 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_488), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_491 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_491);
  let x_493 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_493 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_497 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_497);
  let x_501 : vec3<f32> = u_xlat0;
  let x_503 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_501.x, x_501.y, x_501.z, x_501.x));
  u_xlatb0 = vec3<bool>(x_503.x, x_503.y, x_503.z);
  let x_508 : bool = u_xlatb0.x;
  if (x_508) {
    let x_513 : f32 = u_xlat1.x;
    x_509 = x_513;
  } else {
    let x_516 : f32 = u_xlat2.x;
    x_509 = x_516;
  }
  let x_517 : f32 = x_509;
  SV_Target0.x = x_517;
  let x_521 : bool = u_xlatb0.y;
  if (x_521) {
    let x_526 : f32 = u_xlat1.y;
    x_522 = x_526;
  } else {
    let x_529 : f32 = u_xlat2.y;
    x_522 = x_529;
  }
  let x_530 : f32 = x_522;
  SV_Target0.y = x_530;
  let x_533 : bool = u_xlatb0.z;
  if (x_533) {
    let x_538 : f32 = u_xlat1.z;
    x_534 = x_538;
  } else {
    let x_541 : f32 = u_xlat2.z;
    x_534 = x_541;
  }
  let x_542 : f32 = x_534;
  SV_Target0.z = x_542;
  let x_545 : f32 = u_xlat1.w;
  SV_Target0.w = x_545;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec2<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

