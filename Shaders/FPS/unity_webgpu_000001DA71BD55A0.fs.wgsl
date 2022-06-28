struct PGlobals {
  x_Distortion_Amount : vec4<f32>,
  x_Distortion_CenterScale : vec4<f32>,
  x_Dithering_Coords : vec4<f32>,
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

@group(0) @binding(6) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

var<private> u_xlat12 : f32;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_DitheringTex : sampler;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_222 : f32;
  var x_364 : f32;
  var x_376 : f32;
  var x_389 : f32;
  var x_441 : f32;
  var x_454 : f32;
  var x_466 : f32;
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
  let x_273 : vec2<f32> = vs_TEXCOORD0;
  let x_276 : vec4<f32> = x_26.x_Dithering_Coords;
  let x_280 : vec4<f32> = x_26.x_Dithering_Coords;
  let x_282 : vec2<f32> = ((x_273 * vec2<f32>(x_276.x, x_276.y)) + vec2<f32>(x_280.z, x_280.w));
  let x_283 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_282.x, x_282.y, x_283.z, x_283.w);
  let x_291 : vec4<f32> = u_xlat1;
  let x_293 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_291.x, x_291.y));
  u_xlat12 = x_293.w;
  let x_295 : f32 = u_xlat12;
  u_xlat12 = ((x_295 * 2.0f) + -1.0f);
  let x_299 : f32 = u_xlat12;
  u_xlat1.x = ((x_299 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_305 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_305, 0.0f, 1.0f);
  let x_309 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_309 * 2.0f) + -1.0f);
  let x_313 : f32 = u_xlat12;
  u_xlat12 = (-(abs(x_313)) + 1.0f);
  let x_317 : f32 = u_xlat12;
  u_xlat12 = sqrt(x_317);
  let x_319 : f32 = u_xlat12;
  u_xlat12 = (-(x_319) + 1.0f);
  let x_322 : f32 = u_xlat12;
  let x_324 : f32 = u_xlat1.x;
  u_xlat12 = (x_322 * x_324);
  let x_326 : vec3<f32> = u_xlat0;
  let x_329 : vec3<f32> = (x_326 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_330 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_329.x, x_329.y, x_329.z, x_330.w);
  let x_332 : vec3<f32> = u_xlat0;
  u_xlat2 = max(abs(x_332), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_337 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_337);
  let x_339 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_339 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_343 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_343);
  let x_345 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_345 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_357 : vec3<f32> = u_xlat0;
  let x_360 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_357.x, x_357.y, x_357.z, x_357.x));
  u_xlatb0 = vec3<bool>(x_360.x, x_360.y, x_360.z);
  let x_363 : bool = u_xlatb0.x;
  if (x_363) {
    let x_368 : f32 = u_xlat1.x;
    x_364 = x_368;
  } else {
    let x_371 : f32 = u_xlat2.x;
    x_364 = x_371;
  }
  let x_372 : f32 = x_364;
  u_xlat0.x = x_372;
  let x_375 : bool = u_xlatb0.y;
  if (x_375) {
    let x_380 : f32 = u_xlat1.y;
    x_376 = x_380;
  } else {
    let x_383 : f32 = u_xlat2.y;
    x_376 = x_383;
  }
  let x_384 : f32 = x_376;
  u_xlat0.y = x_384;
  let x_388 : bool = u_xlatb0.z;
  if (x_388) {
    let x_393 : f32 = u_xlat1.z;
    x_389 = x_393;
  } else {
    let x_396 : f32 = u_xlat2.z;
    x_389 = x_396;
  }
  let x_397 : f32 = x_389;
  u_xlat0.z = x_397;
  let x_399 : f32 = u_xlat12;
  let x_404 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_399, x_399, x_399) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + x_404);
  let x_406 : vec3<f32> = u_xlat0;
  let x_409 : vec3<f32> = (x_406 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_410 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_409.x, x_409.y, x_409.z, x_410.w);
  let x_412 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_412 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_416 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_416 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_420 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_420), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_423 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_423);
  let x_425 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_425 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_429 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_429);
  let x_433 : vec3<f32> = u_xlat0;
  let x_435 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_433.x, x_433.y, x_433.z, x_433.x));
  u_xlatb0 = vec3<bool>(x_435.x, x_435.y, x_435.z);
  let x_440 : bool = u_xlatb0.x;
  if (x_440) {
    let x_445 : f32 = u_xlat1.x;
    x_441 = x_445;
  } else {
    let x_448 : f32 = u_xlat2.x;
    x_441 = x_448;
  }
  let x_449 : f32 = x_441;
  SV_Target0.x = x_449;
  let x_453 : bool = u_xlatb0.y;
  if (x_453) {
    let x_458 : f32 = u_xlat1.y;
    x_454 = x_458;
  } else {
    let x_461 : f32 = u_xlat2.y;
    x_454 = x_461;
  }
  let x_462 : f32 = x_454;
  SV_Target0.y = x_462;
  let x_465 : bool = u_xlatb0.z;
  if (x_465) {
    let x_470 : f32 = u_xlat1.z;
    x_466 = x_470;
  } else {
    let x_473 : f32 = u_xlat2.z;
    x_466 = x_473;
  }
  let x_474 : f32 = x_466;
  SV_Target0.z = x_474;
  let x_477 : f32 = u_xlat1.w;
  SV_Target0.w = x_477;
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

