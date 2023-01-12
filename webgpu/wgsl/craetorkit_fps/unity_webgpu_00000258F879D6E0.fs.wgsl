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
}

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_51 : PGlobals;

@group(0) @binding(3) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(7) var sampler_Vignette_Mask : sampler;

@group(0) @binding(0) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_DitheringTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb12 : bool;
  var u_xlat12 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat7 : f32;
  var x_226 : f32;
  var u_xlat4 : vec3<f32>;
  var u_xlatb1 : vec3<bool>;
  var hlslcc_movcTemp : vec3<f32>;
  var x_375 : f32;
  var x_387 : f32;
  var x_399 : f32;
  var u_xlatb0 : vec3<bool>;
  var x_446 : f32;
  var x_458 : f32;
  var x_470 : f32;
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
  u_xlatb12 = (x_56 < 0.5f);
  let x_59 : bool = u_xlatb12;
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
    u_xlat12 = (x_85 / x_88);
    let x_90 : f32 = u_xlat12;
    u_xlat12 = (x_90 + -1.0f);
    let x_95 : f32 = x_51.x_Vignette_Settings.w;
    let x_96 : f32 = u_xlat12;
    u_xlat12 = ((x_95 * x_96) + 1.0f);
    let x_100 : f32 = u_xlat12;
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
    u_xlat12 = dot(vec2<f32>(x_136.x, x_136.y), vec2<f32>(x_138.x, x_138.y));
    let x_141 : f32 = u_xlat12;
    u_xlat12 = (-(x_141) + 1.0f);
    let x_144 : f32 = u_xlat12;
    u_xlat12 = max(x_144, 0.0f);
    let x_146 : f32 = u_xlat12;
    u_xlat12 = log2(x_146);
    let x_148 : f32 = u_xlat12;
    let x_150 : f32 = x_51.x_Vignette_Settings.y;
    u_xlat12 = (x_148 * x_150);
    let x_152 : f32 = u_xlat12;
    u_xlat12 = exp2(x_152);
    let x_157 : vec3<f32> = x_51.x_Vignette_Color;
    let x_160 : vec3<f32> = (-(x_157) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_161 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_160.x, x_160.y, x_160.z, x_161.w);
    let x_163 : f32 = u_xlat12;
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
    let x_184 : f32 = u_xlat12;
    let x_186 : f32 = u_xlat2.x;
    u_xlat2.w = ((x_184 * x_186) + 1.0f);
  } else {
    let x_196 : vec2<f32> = vs_TEXCOORD0;
    let x_197 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_196);
    u_xlat12 = x_197.w;
    let x_200 : f32 = u_xlat12;
    u_xlat3.x = (x_200 * 0.077399381f);
    let x_205 : f32 = u_xlat12;
    u_xlat7 = (x_205 + 0.055f);
    let x_208 : f32 = u_xlat7;
    u_xlat7 = (x_208 * 0.947867334f);
    let x_211 : f32 = u_xlat7;
    u_xlat7 = max(abs(x_211), 1.1920929e-07f);
    let x_215 : f32 = u_xlat7;
    u_xlat7 = log2(x_215);
    let x_217 : f32 = u_xlat7;
    u_xlat7 = (x_217 * 2.400000095f);
    let x_220 : f32 = u_xlat7;
    u_xlat7 = exp2(x_220);
    let x_223 : f32 = u_xlat12;
    u_xlatb12 = (0.040449999f >= x_223);
    let x_225 : bool = u_xlatb12;
    if (x_225) {
      let x_230 : f32 = u_xlat3.x;
      x_226 = x_230;
    } else {
      let x_232 : f32 = u_xlat7;
      x_226 = x_232;
    }
    let x_233 : f32 = x_226;
    u_xlat12 = x_233;
    let x_235 : vec3<f32> = x_51.x_Vignette_Color;
    u_xlat3 = (-(x_235) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_238 : f32 = u_xlat12;
    let x_240 : vec3<f32> = u_xlat3;
    let x_243 : vec3<f32> = x_51.x_Vignette_Color;
    u_xlat3 = ((vec3<f32>(x_238, x_238, x_238) * x_240) + x_243);
    let x_245 : vec3<f32> = u_xlat0;
    let x_246 : vec3<f32> = u_xlat3;
    let x_248 : vec3<f32> = u_xlat0;
    u_xlat3 = ((x_245 * x_246) + -(x_248));
    let x_253 : f32 = x_51.x_Vignette_Opacity;
    let x_255 : vec3<f32> = u_xlat3;
    let x_257 : vec3<f32> = u_xlat0;
    let x_258 : vec3<f32> = ((vec3<f32>(x_253, x_253, x_253) * x_255) + x_257);
    let x_259 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_258.x, x_258.y, x_258.z, x_259.w);
    let x_262 : f32 = u_xlat1.w;
    u_xlat0.x = (x_262 + -1.0f);
    let x_265 : f32 = u_xlat12;
    let x_267 : f32 = u_xlat0.x;
    u_xlat2.w = ((x_265 * x_267) + 1.0f);
  }
  let x_271 : vec2<f32> = vs_TEXCOORD0;
  let x_274 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_278 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_280 : vec2<f32> = ((x_271 * vec2<f32>(x_274.x, x_274.y)) + vec2<f32>(x_278.z, x_278.w));
  let x_281 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_280.x, x_280.y, x_281.z);
  let x_288 : vec3<f32> = u_xlat0;
  let x_290 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_288.x, x_288.y));
  u_xlat0.x = x_290.w;
  let x_294 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_294 * 2.0f) + -1.0f);
  let x_301 : f32 = u_xlat0.x;
  u_xlat4.x = ((x_301 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_307 : f32 = u_xlat4.x;
  u_xlat4.x = clamp(x_307, 0.0f, 1.0f);
  let x_311 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_311 * 2.0f) + -1.0f);
  let x_316 : f32 = u_xlat0.x;
  u_xlat0.x = (-(abs(x_316)) + 1.0f);
  let x_322 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_322);
  let x_326 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_326) + 1.0f);
  let x_331 : f32 = u_xlat0.x;
  let x_333 : f32 = u_xlat4.x;
  u_xlat0.x = (x_331 * x_333);
  let x_336 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec3<f32>(x_336.x, x_336.y, x_336.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_341 : vec4<f32> = u_xlat1;
  u_xlat3 = max(abs(vec3<f32>(x_341.x, x_341.y, x_341.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_346 : vec3<f32> = u_xlat3;
  u_xlat3 = log2(x_346);
  let x_348 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_348 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_352 : vec3<f32> = u_xlat3;
  u_xlat3 = exp2(x_352);
  let x_354 : vec3<f32> = u_xlat3;
  u_xlat3 = ((x_354 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_366 : vec4<f32> = u_xlat1;
  let x_369 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_366.x, x_366.y, x_366.z, x_366.x));
  u_xlatb1 = vec3<bool>(x_369.x, x_369.y, x_369.z);
  let x_372 : vec3<f32> = u_xlat4;
  hlslcc_movcTemp = x_372;
  let x_374 : bool = u_xlatb1.x;
  if (x_374) {
    let x_379 : f32 = u_xlat4.x;
    x_375 = x_379;
  } else {
    let x_382 : f32 = u_xlat3.x;
    x_375 = x_382;
  }
  let x_383 : f32 = x_375;
  hlslcc_movcTemp.x = x_383;
  let x_386 : bool = u_xlatb1.y;
  if (x_386) {
    let x_391 : f32 = u_xlat4.y;
    x_387 = x_391;
  } else {
    let x_394 : f32 = u_xlat3.y;
    x_387 = x_394;
  }
  let x_395 : f32 = x_387;
  hlslcc_movcTemp.y = x_395;
  let x_398 : bool = u_xlatb1.z;
  if (x_398) {
    let x_403 : f32 = u_xlat4.z;
    x_399 = x_403;
  } else {
    let x_406 : f32 = u_xlat3.z;
    x_399 = x_406;
  }
  let x_407 : f32 = x_399;
  hlslcc_movcTemp.z = x_407;
  let x_409 : vec3<f32> = hlslcc_movcTemp;
  u_xlat4 = x_409;
  let x_410 : vec3<f32> = u_xlat0;
  let x_415 : vec3<f32> = u_xlat4;
  u_xlat0 = ((vec3<f32>(x_410.x, x_410.x, x_410.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + x_415);
  let x_417 : vec3<f32> = u_xlat0;
  let x_419 : vec3<f32> = (x_417 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_420 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_419.x, x_419.y, x_419.z, x_420.w);
  let x_422 : vec3<f32> = u_xlat0;
  u_xlat3 = (x_422 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_425 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_425 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_428 : vec3<f32> = u_xlat3;
  u_xlat3 = max(abs(x_428), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_431 : vec3<f32> = u_xlat3;
  u_xlat3 = log2(x_431);
  let x_433 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_433 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_436 : vec3<f32> = u_xlat3;
  u_xlat3 = exp2(x_436);
  let x_440 : vec3<f32> = u_xlat0;
  let x_442 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_440.x, x_440.y, x_440.z, x_440.x));
  u_xlatb0 = vec3<bool>(x_442.x, x_442.y, x_442.z);
  let x_445 : bool = u_xlatb0.x;
  if (x_445) {
    let x_450 : f32 = u_xlat1.x;
    x_446 = x_450;
  } else {
    let x_453 : f32 = u_xlat3.x;
    x_446 = x_453;
  }
  let x_454 : f32 = x_446;
  u_xlat2.x = x_454;
  let x_457 : bool = u_xlatb0.y;
  if (x_457) {
    let x_462 : f32 = u_xlat1.y;
    x_458 = x_462;
  } else {
    let x_465 : f32 = u_xlat3.y;
    x_458 = x_465;
  }
  let x_466 : f32 = x_458;
  u_xlat2.y = x_466;
  let x_469 : bool = u_xlatb0.z;
  if (x_469) {
    let x_474 : f32 = u_xlat1.z;
    x_470 = x_474;
  } else {
    let x_477 : f32 = u_xlat3.z;
    x_470 = x_477;
  }
  let x_478 : f32 = x_470;
  u_xlat2.z = x_478;
  let x_482 : vec4<f32> = u_xlat2;
  SV_Target0 = x_482;
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

