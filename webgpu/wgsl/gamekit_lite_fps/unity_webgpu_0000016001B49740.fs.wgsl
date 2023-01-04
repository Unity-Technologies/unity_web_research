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

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(3) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> u_xlatb12 : bool;

@group(0) @binding(0) var<uniform> x_51 : PGlobals;

var<private> u_xlat12 : f32;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(4) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(8) var sampler_Vignette_Mask : sampler;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat7 : f32;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_DitheringTex : sampler;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlatb1 : vec3<bool>;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_227 : f32;
  var hlslcc_movcTemp : vec3<f32>;
  var x_377 : f32;
  var x_389 : f32;
  var x_401 : f32;
  var x_448 : f32;
  var x_460 : f32;
  var x_472 : f32;
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
      let x_231 : f32 = u_xlat3.x;
      x_227 = x_231;
    } else {
      let x_233 : f32 = u_xlat7;
      x_227 = x_233;
    }
    let x_234 : f32 = x_227;
    u_xlat12 = x_234;
    let x_236 : vec3<f32> = x_51.x_Vignette_Color;
    u_xlat3 = (-(x_236) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_239 : f32 = u_xlat12;
    let x_241 : vec3<f32> = u_xlat3;
    let x_244 : vec3<f32> = x_51.x_Vignette_Color;
    u_xlat3 = ((vec3<f32>(x_239, x_239, x_239) * x_241) + x_244);
    let x_246 : vec3<f32> = u_xlat0;
    let x_247 : vec3<f32> = u_xlat3;
    let x_249 : vec3<f32> = u_xlat0;
    u_xlat3 = ((x_246 * x_247) + -(x_249));
    let x_254 : f32 = x_51.x_Vignette_Opacity;
    let x_256 : vec3<f32> = u_xlat3;
    let x_258 : vec3<f32> = u_xlat0;
    let x_259 : vec3<f32> = ((vec3<f32>(x_254, x_254, x_254) * x_256) + x_258);
    let x_260 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_259.x, x_259.y, x_259.z, x_260.w);
    let x_263 : f32 = u_xlat1.w;
    u_xlat0.x = (x_263 + -1.0f);
    let x_266 : f32 = u_xlat12;
    let x_268 : f32 = u_xlat0.x;
    u_xlat2.w = ((x_266 * x_268) + 1.0f);
  }
  let x_272 : vec2<f32> = vs_TEXCOORD0;
  let x_275 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_279 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_281 : vec2<f32> = ((x_272 * vec2<f32>(x_275.x, x_275.y)) + vec2<f32>(x_279.z, x_279.w));
  let x_282 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_281.x, x_281.y, x_282.z);
  let x_289 : vec3<f32> = u_xlat0;
  let x_291 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_289.x, x_289.y));
  u_xlat0.x = x_291.w;
  let x_295 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_295 * 2.0f) + -1.0f);
  let x_302 : f32 = u_xlat0.x;
  u_xlat4.x = ((x_302 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_308 : f32 = u_xlat4.x;
  u_xlat4.x = clamp(x_308, 0.0f, 1.0f);
  let x_312 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_312 * 2.0f) + -1.0f);
  let x_317 : f32 = u_xlat0.x;
  u_xlat0.x = (-(abs(x_317)) + 1.0f);
  let x_323 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_323);
  let x_327 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_327) + 1.0f);
  let x_332 : f32 = u_xlat0.x;
  let x_334 : f32 = u_xlat4.x;
  u_xlat0.x = (x_332 * x_334);
  let x_337 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec3<f32>(x_337.x, x_337.y, x_337.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_342 : vec4<f32> = u_xlat1;
  u_xlat3 = max(abs(vec3<f32>(x_342.x, x_342.y, x_342.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_347 : vec3<f32> = u_xlat3;
  u_xlat3 = log2(x_347);
  let x_349 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_349 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_353 : vec3<f32> = u_xlat3;
  u_xlat3 = exp2(x_353);
  let x_355 : vec3<f32> = u_xlat3;
  u_xlat3 = ((x_355 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_367 : vec4<f32> = u_xlat1;
  let x_370 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_367.x, x_367.y, x_367.z, x_367.x));
  u_xlatb1 = vec3<bool>(x_370.x, x_370.y, x_370.z);
  let x_374 : vec3<f32> = u_xlat4;
  hlslcc_movcTemp = x_374;
  let x_376 : bool = u_xlatb1.x;
  if (x_376) {
    let x_381 : f32 = u_xlat4.x;
    x_377 = x_381;
  } else {
    let x_384 : f32 = u_xlat3.x;
    x_377 = x_384;
  }
  let x_385 : f32 = x_377;
  hlslcc_movcTemp.x = x_385;
  let x_388 : bool = u_xlatb1.y;
  if (x_388) {
    let x_393 : f32 = u_xlat4.y;
    x_389 = x_393;
  } else {
    let x_396 : f32 = u_xlat3.y;
    x_389 = x_396;
  }
  let x_397 : f32 = x_389;
  hlslcc_movcTemp.y = x_397;
  let x_400 : bool = u_xlatb1.z;
  if (x_400) {
    let x_405 : f32 = u_xlat4.z;
    x_401 = x_405;
  } else {
    let x_408 : f32 = u_xlat3.z;
    x_401 = x_408;
  }
  let x_409 : f32 = x_401;
  hlslcc_movcTemp.z = x_409;
  let x_411 : vec3<f32> = hlslcc_movcTemp;
  u_xlat4 = x_411;
  let x_412 : vec3<f32> = u_xlat0;
  let x_417 : vec3<f32> = u_xlat4;
  u_xlat0 = ((vec3<f32>(x_412.x, x_412.x, x_412.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + x_417);
  let x_419 : vec3<f32> = u_xlat0;
  let x_421 : vec3<f32> = (x_419 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_422 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_421.x, x_421.y, x_421.z, x_422.w);
  let x_424 : vec3<f32> = u_xlat0;
  u_xlat3 = (x_424 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_427 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_427 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_430 : vec3<f32> = u_xlat3;
  u_xlat3 = max(abs(x_430), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_433 : vec3<f32> = u_xlat3;
  u_xlat3 = log2(x_433);
  let x_435 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_435 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_438 : vec3<f32> = u_xlat3;
  u_xlat3 = exp2(x_438);
  let x_442 : vec3<f32> = u_xlat0;
  let x_444 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_442.x, x_442.y, x_442.z, x_442.x));
  u_xlatb0 = vec3<bool>(x_444.x, x_444.y, x_444.z);
  let x_447 : bool = u_xlatb0.x;
  if (x_447) {
    let x_452 : f32 = u_xlat1.x;
    x_448 = x_452;
  } else {
    let x_455 : f32 = u_xlat3.x;
    x_448 = x_455;
  }
  let x_456 : f32 = x_448;
  u_xlat2.x = x_456;
  let x_459 : bool = u_xlatb0.y;
  if (x_459) {
    let x_464 : f32 = u_xlat1.y;
    x_460 = x_464;
  } else {
    let x_467 : f32 = u_xlat3.y;
    x_460 = x_467;
  }
  let x_468 : f32 = x_460;
  u_xlat2.y = x_468;
  let x_471 : bool = u_xlatb0.z;
  if (x_471) {
    let x_476 : f32 = u_xlat1.z;
    x_472 = x_476;
  } else {
    let x_479 : f32 = u_xlat3.z;
    x_472 = x_479;
  }
  let x_480 : f32 = x_472;
  u_xlat2.z = x_480;
  let x_484 : vec4<f32> = u_xlat2;
  SV_Target0 = x_484;
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

