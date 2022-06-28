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

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(3) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> u_xlatb9 : bool;

@group(0) @binding(0) var<uniform> x_51 : PGlobals;

var<private> u_xlat9 : f32;

var<private> u_xlat2 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(4) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(9) var sampler_Vignette_Mask : sampler;

var<private> u_xlat5 : f32;

@group(0) @binding(5) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_GrainTex : sampler;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_DitheringTex : sampler;

var<private> u_xlatb0 : vec3<bool>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_229 : f32;
  var x_425 : f32;
  var x_437 : f32;
  var x_449 : f32;
  var x_494 : f32;
  var x_506 : f32;
  var x_518 : f32;
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
      let x_233 : f32 = u_xlat2.x;
      x_229 = x_233;
    } else {
      let x_235 : f32 = u_xlat5;
      x_229 = x_235;
    }
    let x_236 : f32 = x_229;
    u_xlat9 = x_236;
    let x_238 : vec3<f32> = x_51.x_Vignette_Color;
    u_xlat2 = (-(x_238) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_241 : f32 = u_xlat9;
    let x_243 : vec3<f32> = u_xlat2;
    let x_246 : vec3<f32> = x_51.x_Vignette_Color;
    u_xlat2 = ((vec3<f32>(x_241, x_241, x_241) * x_243) + x_246);
    let x_248 : vec3<f32> = u_xlat0;
    let x_249 : vec3<f32> = u_xlat2;
    let x_251 : vec3<f32> = u_xlat0;
    u_xlat2 = ((x_248 * x_249) + -(x_251));
    let x_256 : f32 = x_51.x_Vignette_Opacity;
    let x_258 : vec3<f32> = u_xlat2;
    let x_260 : vec3<f32> = u_xlat0;
    let x_261 : vec3<f32> = ((vec3<f32>(x_256, x_256, x_256) * x_258) + x_260);
    let x_262 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_261.x, x_261.y, x_261.z, x_262.w);
    let x_265 : f32 = u_xlat1.w;
    u_xlat0.x = (x_265 + -1.0f);
    let x_268 : f32 = u_xlat9;
    let x_270 : f32 = u_xlat0.x;
    SV_Target0.w = ((x_268 * x_270) + 1.0f);
  }
  let x_274 : vec2<f32> = vs_TEXCOORD1;
  let x_277 : vec4<f32> = x_51.x_Grain_Params2;
  let x_281 : vec4<f32> = x_51.x_Grain_Params2;
  let x_283 : vec2<f32> = ((x_274 * vec2<f32>(x_277.x, x_277.y)) + vec2<f32>(x_281.z, x_281.w));
  let x_284 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_283.x, x_283.y, x_284.z);
  let x_291 : vec3<f32> = u_xlat0;
  let x_293 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_291.x, x_291.y));
  u_xlat0 = vec3<f32>(x_293.x, x_293.y, x_293.z);
  let x_295 : vec4<f32> = u_xlat1;
  u_xlat2 = vec3<f32>(x_295.x, x_295.y, x_295.z);
  let x_297 : vec3<f32> = u_xlat2;
  u_xlat2 = clamp(x_297, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_301 : vec3<f32> = u_xlat2;
  u_xlat9 = dot(x_301, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_307 : f32 = u_xlat9;
  u_xlat9 = sqrt(x_307);
  let x_311 : f32 = x_51.x_Grain_Params1.x;
  let x_312 : f32 = u_xlat9;
  u_xlat9 = ((x_311 * -(x_312)) + 1.0f);
  let x_316 : vec3<f32> = u_xlat0;
  let x_317 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_316 * vec3<f32>(x_317.x, x_317.y, x_317.z));
  let x_320 : vec3<f32> = u_xlat0;
  let x_322 : f32 = x_51.x_Grain_Params1.y;
  let x_324 : f32 = x_51.x_Grain_Params1.y;
  let x_326 : f32 = x_51.x_Grain_Params1.y;
  u_xlat0 = (x_320 * vec3<f32>(x_322, x_324, x_326));
  let x_329 : vec3<f32> = u_xlat0;
  let x_330 : f32 = u_xlat9;
  let x_333 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_329 * vec3<f32>(x_330, x_330, x_330)) + vec3<f32>(x_333.x, x_333.y, x_333.z));
  let x_336 : vec2<f32> = vs_TEXCOORD0;
  let x_339 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_343 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_345 : vec2<f32> = ((x_336 * vec2<f32>(x_339.x, x_339.y)) + vec2<f32>(x_343.z, x_343.w));
  let x_346 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_345.x, x_345.y, x_346.z, x_346.w);
  let x_353 : vec4<f32> = u_xlat1;
  let x_355 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_353.x, x_353.y));
  u_xlat9 = x_355.w;
  let x_357 : f32 = u_xlat9;
  u_xlat9 = ((x_357 * 2.0f) + -1.0f);
  let x_361 : f32 = u_xlat9;
  u_xlat1.x = ((x_361 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_367 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_367, 0.0f, 1.0f);
  let x_371 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_371 * 2.0f) + -1.0f);
  let x_375 : f32 = u_xlat9;
  u_xlat9 = (-(abs(x_375)) + 1.0f);
  let x_379 : f32 = u_xlat9;
  u_xlat9 = sqrt(x_379);
  let x_381 : f32 = u_xlat9;
  u_xlat9 = (-(x_381) + 1.0f);
  let x_384 : f32 = u_xlat9;
  let x_386 : f32 = u_xlat1.x;
  u_xlat9 = (x_384 * x_386);
  let x_388 : vec3<f32> = u_xlat0;
  let x_391 : vec3<f32> = (x_388 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_392 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_391.x, x_391.y, x_391.z, x_392.w);
  let x_394 : vec3<f32> = u_xlat0;
  u_xlat2 = max(abs(x_394), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_398 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_398);
  let x_400 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_400 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_404 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_404);
  let x_406 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_406 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_418 : vec3<f32> = u_xlat0;
  let x_421 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_418.x, x_418.y, x_418.z, x_418.x));
  u_xlatb0 = vec3<bool>(x_421.x, x_421.y, x_421.z);
  let x_424 : bool = u_xlatb0.x;
  if (x_424) {
    let x_429 : f32 = u_xlat1.x;
    x_425 = x_429;
  } else {
    let x_432 : f32 = u_xlat2.x;
    x_425 = x_432;
  }
  let x_433 : f32 = x_425;
  u_xlat0.x = x_433;
  let x_436 : bool = u_xlatb0.y;
  if (x_436) {
    let x_441 : f32 = u_xlat1.y;
    x_437 = x_441;
  } else {
    let x_444 : f32 = u_xlat2.y;
    x_437 = x_444;
  }
  let x_445 : f32 = x_437;
  u_xlat0.y = x_445;
  let x_448 : bool = u_xlatb0.z;
  if (x_448) {
    let x_453 : f32 = u_xlat1.z;
    x_449 = x_453;
  } else {
    let x_456 : f32 = u_xlat2.z;
    x_449 = x_456;
  }
  let x_457 : f32 = x_449;
  u_xlat0.z = x_457;
  let x_459 : f32 = u_xlat9;
  let x_464 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_459, x_459, x_459) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + x_464);
  let x_466 : vec3<f32> = u_xlat0;
  let x_468 : vec3<f32> = (x_466 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_469 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_468.x, x_468.y, x_468.z, x_469.w);
  let x_471 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_471 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_474 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_474 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_477 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_477), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_480 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_480);
  let x_482 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_482 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_485 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_485);
  let x_488 : vec3<f32> = u_xlat0;
  let x_490 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_488.x, x_488.y, x_488.z, x_488.x));
  u_xlatb0 = vec3<bool>(x_490.x, x_490.y, x_490.z);
  let x_493 : bool = u_xlatb0.x;
  if (x_493) {
    let x_498 : f32 = u_xlat1.x;
    x_494 = x_498;
  } else {
    let x_501 : f32 = u_xlat2.x;
    x_494 = x_501;
  }
  let x_502 : f32 = x_494;
  SV_Target0.x = x_502;
  let x_505 : bool = u_xlatb0.y;
  if (x_505) {
    let x_510 : f32 = u_xlat1.y;
    x_506 = x_510;
  } else {
    let x_513 : f32 = u_xlat2.y;
    x_506 = x_513;
  }
  let x_514 : f32 = x_506;
  SV_Target0.y = x_514;
  let x_517 : bool = u_xlatb0.z;
  if (x_517) {
    let x_522 : f32 = u_xlat1.z;
    x_518 = x_522;
  } else {
    let x_525 : f32 = u_xlat2.z;
    x_518 = x_525;
  }
  let x_526 : f32 = x_518;
  SV_Target0.z = x_526;
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

