struct PGlobals {
  x_ScreenParams : vec4<f32>,
  x_Dithering_Coords : vec4<f32>,
  x_Vignette_Color : vec3<f32>,
  @size(4)
  padding : u32,
  x_Vignette_Center : vec2<f32>,
  @size(8)
  padding_1 : u32,
  x_Vignette_Settings : vec4<f32>,
  x_Vignette_Opacity : f32,
  x_Vignette_Mode : f32,
  x_Grain_Params1 : vec2<f32>,
  x_Grain_Params2 : vec4<f32>,
}

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_51 : PGlobals;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(3) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(8) var sampler_Vignette_Mask : sampler;

@group(0) @binding(4) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_GrainTex : sampler;

@group(0) @binding(0) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_DitheringTex : sampler;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb9 : bool;
  var u_xlat9 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlat5 : f32;
  var x_228 : f32;
  var u_xlatb0 : vec3<bool>;
  var x_424 : f32;
  var x_436 : f32;
  var x_448 : f32;
  var x_493 : f32;
  var x_505 : f32;
  var x_517 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_23);
  u_xlat0.x = x_25.x;
  let x_39 : vec2<f32> = vs_TEXCOORD1;
  let x_40 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_39);
  u_xlat1 = x_40;
  let x_41 : vec3<f32> = u_xlat0;
  let x_43 : vec4<f32> = u_xlat1;
  u_xlat0 = (vec3<f32>(x_41.x, x_41.x, x_41.x) * vec3<f32>(x_43.x, x_43.y, x_43.z));
  let x_56 : f32 = x_51.x_Vignette_Mode;
  u_xlatb9 = (x_56 < 0.5f);
  let x_59 : bool = u_xlatb9;
  if (x_59) {
    let x_62 : vec2<f32> = vs_TEXCOORD0;
    let x_66 : vec2<f32> = x_51.x_Vignette_Center;
    let x_68 : vec2<f32> = (x_62 + -(x_66));
    let x_69 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_68.x, x_68.y, x_69.z, x_69.w);
    let x_71 : vec4<f32> = u_xlat1;
    let x_77 : vec4<f32> = x_51.x_Vignette_Settings;
    let x_79 : vec2<f32> = (abs(vec2<f32>(x_71.y, x_71.x)) * vec2<f32>(x_77.x, x_77.x));
    let x_80 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_80.x, x_79.x, x_79.y, x_80.w);
    let x_85 : f32 = x_51.x_ScreenParams.x;
    let x_88 : f32 = x_51.x_ScreenParams.y;
    u_xlat9 = (x_85 / x_88);
    let x_90 : f32 = u_xlat9;
    u_xlat9 = (x_90 + -1.0f);
    let x_95 : f32 = x_51.x_Vignette_Settings.w;
    let x_96 : f32 = u_xlat9;
    u_xlat9 = ((x_95 * x_96) + 1.0f);
    let x_100 : f32 = u_xlat9;
    let x_103 : f32 = u_xlat1.z;
    u_xlat1.x = (x_100 * x_103);
    let x_106 : vec4<f32> = u_xlat1;
    let x_107 : vec2<f32> = vec2<f32>(x_106.x, x_106.y);
    let x_108 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_107.x, x_107.y, x_108.z, x_108.w);
    let x_110 : vec4<f32> = u_xlat1;
    let x_115 : vec2<f32> = clamp(vec2<f32>(x_110.x, x_110.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_116 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_115.x, x_115.y, x_116.z, x_116.w);
    let x_118 : vec4<f32> = u_xlat1;
    let x_120 : vec2<f32> = log2(vec2<f32>(x_118.x, x_118.y));
    let x_121 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_120.x, x_120.y, x_121.z, x_121.w);
    let x_123 : vec4<f32> = u_xlat1;
    let x_126 : vec4<f32> = x_51.x_Vignette_Settings;
    let x_128 : vec2<f32> = (vec2<f32>(x_123.x, x_123.y) * vec2<f32>(x_126.z, x_126.z));
    let x_129 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_128.x, x_128.y, x_129.z, x_129.w);
    let x_131 : vec4<f32> = u_xlat1;
    let x_133 : vec2<f32> = exp2(vec2<f32>(x_131.x, x_131.y));
    let x_134 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_133.x, x_133.y, x_134.z, x_134.w);
    let x_136 : vec4<f32> = u_xlat1;
    let x_138 : vec4<f32> = u_xlat1;
    u_xlat9 = dot(vec2<f32>(x_136.x, x_136.y), vec2<f32>(x_138.x, x_138.y));
    let x_141 : f32 = u_xlat9;
    u_xlat9 = (-(x_141) + 1.0f);
    let x_144 : f32 = u_xlat9;
    u_xlat9 = max(x_144, 0.0f);
    let x_146 : f32 = u_xlat9;
    u_xlat9 = log2(x_146);
    let x_148 : f32 = u_xlat9;
    let x_150 : f32 = x_51.x_Vignette_Settings.y;
    u_xlat9 = (x_148 * x_150);
    let x_152 : f32 = u_xlat9;
    u_xlat9 = exp2(x_152);
    let x_157 : vec3<f32> = x_51.x_Vignette_Color;
    let x_160 : vec3<f32> = (-(x_157) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_161 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_160.x, x_160.y, x_160.z, x_161.w);
    let x_163 : f32 = u_xlat9;
    let x_165 : vec4<f32> = u_xlat1;
    let x_169 : vec3<f32> = x_51.x_Vignette_Color;
    let x_170 : vec3<f32> = ((vec3<f32>(x_163, x_163, x_163) * vec3<f32>(x_165.x, x_165.y, x_165.z)) + x_169);
    let x_171 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_170.x, x_170.y, x_170.z, x_171.w);
    let x_173 : vec3<f32> = u_xlat0;
    let x_174 : vec4<f32> = u_xlat1;
    let x_176 : vec3<f32> = (x_173 * vec3<f32>(x_174.x, x_174.y, x_174.z));
    let x_177 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_176.x, x_176.y, x_176.z, x_177.w);
    let x_181 : f32 = u_xlat1.w;
    u_xlat2.x = (x_181 + -1.0f);
    let x_186 : f32 = u_xlat9;
    let x_188 : f32 = u_xlat2.x;
    SV_Target0.w = ((x_186 * x_188) + 1.0f);
  } else {
    let x_199 : vec2<f32> = vs_TEXCOORD0;
    let x_200 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_199);
    u_xlat9 = x_200.w;
    let x_202 : f32 = u_xlat9;
    u_xlat2.x = (x_202 * 0.077399381f);
    let x_207 : f32 = u_xlat9;
    u_xlat5 = (x_207 + 0.055f);
    let x_210 : f32 = u_xlat5;
    u_xlat5 = (x_210 * 0.947867334f);
    let x_213 : f32 = u_xlat5;
    u_xlat5 = max(abs(x_213), 1.1920929e-07f);
    let x_217 : f32 = u_xlat5;
    u_xlat5 = log2(x_217);
    let x_219 : f32 = u_xlat5;
    u_xlat5 = (x_219 * 2.400000095f);
    let x_222 : f32 = u_xlat5;
    u_xlat5 = exp2(x_222);
    let x_225 : f32 = u_xlat9;
    u_xlatb9 = (0.040449999f >= x_225);
    let x_227 : bool = u_xlatb9;
    if (x_227) {
      let x_232 : f32 = u_xlat2.x;
      x_228 = x_232;
    } else {
      let x_234 : f32 = u_xlat5;
      x_228 = x_234;
    }
    let x_235 : f32 = x_228;
    u_xlat9 = x_235;
    let x_237 : vec3<f32> = x_51.x_Vignette_Color;
    u_xlat2 = (-(x_237) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_240 : f32 = u_xlat9;
    let x_242 : vec3<f32> = u_xlat2;
    let x_245 : vec3<f32> = x_51.x_Vignette_Color;
    u_xlat2 = ((vec3<f32>(x_240, x_240, x_240) * x_242) + x_245);
    let x_247 : vec3<f32> = u_xlat0;
    let x_248 : vec3<f32> = u_xlat2;
    let x_250 : vec3<f32> = u_xlat0;
    u_xlat2 = ((x_247 * x_248) + -(x_250));
    let x_255 : f32 = x_51.x_Vignette_Opacity;
    let x_257 : vec3<f32> = u_xlat2;
    let x_259 : vec3<f32> = u_xlat0;
    let x_260 : vec3<f32> = ((vec3<f32>(x_255, x_255, x_255) * x_257) + x_259);
    let x_261 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_260.x, x_260.y, x_260.z, x_261.w);
    let x_264 : f32 = u_xlat1.w;
    u_xlat0.x = (x_264 + -1.0f);
    let x_267 : f32 = u_xlat9;
    let x_269 : f32 = u_xlat0.x;
    SV_Target0.w = ((x_267 * x_269) + 1.0f);
  }
  let x_273 : vec2<f32> = vs_TEXCOORD1;
  let x_276 : vec4<f32> = x_51.x_Grain_Params2;
  let x_280 : vec4<f32> = x_51.x_Grain_Params2;
  let x_282 : vec2<f32> = ((x_273 * vec2<f32>(x_276.x, x_276.y)) + vec2<f32>(x_280.z, x_280.w));
  let x_283 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_282.x, x_282.y, x_283.z);
  let x_290 : vec3<f32> = u_xlat0;
  let x_292 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_290.x, x_290.y));
  u_xlat0 = vec3<f32>(x_292.x, x_292.y, x_292.z);
  let x_294 : vec4<f32> = u_xlat1;
  u_xlat2 = vec3<f32>(x_294.x, x_294.y, x_294.z);
  let x_296 : vec3<f32> = u_xlat2;
  u_xlat2 = clamp(x_296, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_300 : vec3<f32> = u_xlat2;
  u_xlat9 = dot(x_300, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_306 : f32 = u_xlat9;
  u_xlat9 = sqrt(x_306);
  let x_310 : f32 = x_51.x_Grain_Params1.x;
  let x_311 : f32 = u_xlat9;
  u_xlat9 = ((x_310 * -(x_311)) + 1.0f);
  let x_315 : vec3<f32> = u_xlat0;
  let x_316 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_315 * vec3<f32>(x_316.x, x_316.y, x_316.z));
  let x_319 : vec3<f32> = u_xlat0;
  let x_321 : f32 = x_51.x_Grain_Params1.y;
  let x_323 : f32 = x_51.x_Grain_Params1.y;
  let x_325 : f32 = x_51.x_Grain_Params1.y;
  u_xlat0 = (x_319 * vec3<f32>(x_321, x_323, x_325));
  let x_328 : vec3<f32> = u_xlat0;
  let x_329 : f32 = u_xlat9;
  let x_332 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_328 * vec3<f32>(x_329, x_329, x_329)) + vec3<f32>(x_332.x, x_332.y, x_332.z));
  let x_335 : vec2<f32> = vs_TEXCOORD0;
  let x_338 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_342 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_344 : vec2<f32> = ((x_335 * vec2<f32>(x_338.x, x_338.y)) + vec2<f32>(x_342.z, x_342.w));
  let x_345 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_344.x, x_344.y, x_345.z, x_345.w);
  let x_352 : vec4<f32> = u_xlat1;
  let x_354 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_352.x, x_352.y));
  u_xlat9 = x_354.w;
  let x_356 : f32 = u_xlat9;
  u_xlat9 = ((x_356 * 2.0f) + -1.0f);
  let x_360 : f32 = u_xlat9;
  u_xlat1.x = ((x_360 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_366 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_366, 0.0f, 1.0f);
  let x_370 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_370 * 2.0f) + -1.0f);
  let x_374 : f32 = u_xlat9;
  u_xlat9 = (-(abs(x_374)) + 1.0f);
  let x_378 : f32 = u_xlat9;
  u_xlat9 = sqrt(x_378);
  let x_380 : f32 = u_xlat9;
  u_xlat9 = (-(x_380) + 1.0f);
  let x_383 : f32 = u_xlat9;
  let x_385 : f32 = u_xlat1.x;
  u_xlat9 = (x_383 * x_385);
  let x_387 : vec3<f32> = u_xlat0;
  let x_390 : vec3<f32> = (x_387 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_391 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_390.x, x_390.y, x_390.z, x_391.w);
  let x_393 : vec3<f32> = u_xlat0;
  u_xlat2 = max(abs(x_393), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_397 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_397);
  let x_399 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_399 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_403 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_403);
  let x_405 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_405 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_417 : vec3<f32> = u_xlat0;
  let x_420 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_417.x, x_417.y, x_417.z, x_417.x));
  u_xlatb0 = vec3<bool>(x_420.x, x_420.y, x_420.z);
  let x_423 : bool = u_xlatb0.x;
  if (x_423) {
    let x_428 : f32 = u_xlat1.x;
    x_424 = x_428;
  } else {
    let x_431 : f32 = u_xlat2.x;
    x_424 = x_431;
  }
  let x_432 : f32 = x_424;
  u_xlat0.x = x_432;
  let x_435 : bool = u_xlatb0.y;
  if (x_435) {
    let x_440 : f32 = u_xlat1.y;
    x_436 = x_440;
  } else {
    let x_443 : f32 = u_xlat2.y;
    x_436 = x_443;
  }
  let x_444 : f32 = x_436;
  u_xlat0.y = x_444;
  let x_447 : bool = u_xlatb0.z;
  if (x_447) {
    let x_452 : f32 = u_xlat1.z;
    x_448 = x_452;
  } else {
    let x_455 : f32 = u_xlat2.z;
    x_448 = x_455;
  }
  let x_456 : f32 = x_448;
  u_xlat0.z = x_456;
  let x_458 : f32 = u_xlat9;
  let x_463 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_458, x_458, x_458) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + x_463);
  let x_465 : vec3<f32> = u_xlat0;
  let x_467 : vec3<f32> = (x_465 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_468 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_467.x, x_467.y, x_467.z, x_468.w);
  let x_470 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_470 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_473 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_473 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_476 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_476), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_479 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_479);
  let x_481 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_481 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_484 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_484);
  let x_487 : vec3<f32> = u_xlat0;
  let x_489 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_487.x, x_487.y, x_487.z, x_487.x));
  u_xlatb0 = vec3<bool>(x_489.x, x_489.y, x_489.z);
  let x_492 : bool = u_xlatb0.x;
  if (x_492) {
    let x_497 : f32 = u_xlat1.x;
    x_493 = x_497;
  } else {
    let x_500 : f32 = u_xlat2.x;
    x_493 = x_500;
  }
  let x_501 : f32 = x_493;
  SV_Target0.x = x_501;
  let x_504 : bool = u_xlatb0.y;
  if (x_504) {
    let x_509 : f32 = u_xlat1.y;
    x_505 = x_509;
  } else {
    let x_512 : f32 = u_xlat2.y;
    x_505 = x_512;
  }
  let x_513 : f32 = x_505;
  SV_Target0.y = x_513;
  let x_516 : bool = u_xlatb0.z;
  if (x_516) {
    let x_521 : f32 = u_xlat1.z;
    x_517 = x_521;
  } else {
    let x_524 : f32 = u_xlat2.z;
    x_517 = x_524;
  }
  let x_525 : f32 = x_517;
  SV_Target0.z = x_525;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

