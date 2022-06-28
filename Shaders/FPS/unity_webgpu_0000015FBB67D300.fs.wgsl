struct PGlobals {
  x_ScreenParams : vec4<f32>,
  x_Lut2D_Params : vec3<f32>,
  @size(4)
  padding : u32,
  x_Vignette_Color : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_Vignette_Center : vec2<f32>,
  @size(8)
  padding_2 : u32,
  x_Vignette_Settings : vec4<f32>,
  x_Vignette_Opacity : f32,
  x_Vignette_Mode : f32,
  x_LumaInAlpha : f32,
}

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> u_xlatb15 : bool;

@group(0) @binding(0) var<uniform> x_51 : PGlobals;

var<private> u_xlat15 : f32;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(4) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(8) var sampler_Vignette_Mask : sampler;

var<private> u_xlat6 : f32;

var<private> u_xlatb3 : vec3<bool>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(3) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(7) var sampler_Lut2D : sampler;

var<private> u_xlat4 : vec2<f32>;

var<private> u_xlat10 : vec2<f32>;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_226 : f32;
  var hlslcc_movcTemp : vec3<f32>;
  var x_338 : f32;
  var x_350 : f32;
  var x_362 : f32;
  var x_490 : f32;
  var x_502 : f32;
  var x_514 : f32;
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
  u_xlatb15 = (x_56 < 0.5f);
  let x_59 : bool = u_xlatb15;
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
    u_xlat15 = (x_85 / x_88);
    let x_90 : f32 = u_xlat15;
    u_xlat15 = (x_90 + -1.0f);
    let x_95 : f32 = x_51.x_Vignette_Settings.w;
    let x_96 : f32 = u_xlat15;
    u_xlat15 = ((x_95 * x_96) + 1.0f);
    let x_100 : f32 = u_xlat15;
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
    u_xlat15 = dot(vec2<f32>(x_136.x, x_136.y), vec2<f32>(x_138.x, x_138.y));
    let x_141 : f32 = u_xlat15;
    u_xlat15 = (-(x_141) + 1.0f);
    let x_144 : f32 = u_xlat15;
    u_xlat15 = max(x_144, 0.0f);
    let x_146 : f32 = u_xlat15;
    u_xlat15 = log2(x_146);
    let x_148 : f32 = u_xlat15;
    let x_150 : f32 = x_51.x_Vignette_Settings.y;
    u_xlat15 = (x_148 * x_150);
    let x_152 : f32 = u_xlat15;
    u_xlat15 = exp2(x_152);
    let x_157 : vec3<f32> = x_51.x_Vignette_Color;
    let x_160 : vec3<f32> = (-(x_157) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_161 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_160.x, x_160.y, x_160.z, x_161.w);
    let x_163 : f32 = u_xlat15;
    let x_165 : vec4<f32> = u_xlat1;
    let x_169 : vec3<f32> = x_51.x_Vignette_Color;
    let x_170 : vec3<f32> = ((vec3<f32>(x_163, x_163, x_163) * vec3<f32>(x_165.x, x_165.y, x_165.z)) + x_169);
    let x_171 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_170.x, x_170.y, x_170.z, x_171.w);
    let x_174 : vec3<f32> = u_xlat0;
    let x_175 : vec4<f32> = u_xlat1;
    let x_177 : vec3<f32> = (x_174 * vec3<f32>(x_175.x, x_175.y, x_175.z));
    let x_178 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_177.x, x_177.y, x_177.z, x_178.w);
    let x_181 : f32 = u_xlat1.w;
    u_xlat1.x = (x_181 + -1.0f);
    let x_184 : f32 = u_xlat15;
    let x_186 : f32 = u_xlat1.x;
    u_xlat2.w = ((x_184 * x_186) + 1.0f);
  } else {
    let x_196 : vec2<f32> = vs_TEXCOORD0;
    let x_197 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_196);
    u_xlat15 = x_197.w;
    let x_199 : f32 = u_xlat15;
    u_xlat1.x = (x_199 * 0.077399381f);
    let x_204 : f32 = u_xlat15;
    u_xlat6 = (x_204 + 0.055f);
    let x_207 : f32 = u_xlat6;
    u_xlat6 = (x_207 * 0.947867334f);
    let x_210 : f32 = u_xlat6;
    u_xlat6 = max(abs(x_210), 1.1920929e-07f);
    let x_214 : f32 = u_xlat6;
    u_xlat6 = log2(x_214);
    let x_216 : f32 = u_xlat6;
    u_xlat6 = (x_216 * 2.400000095f);
    let x_219 : f32 = u_xlat6;
    u_xlat6 = exp2(x_219);
    let x_222 : f32 = u_xlat15;
    u_xlatb15 = (0.040449999f >= x_222);
    let x_224 : bool = u_xlatb15;
    if (x_224) {
      let x_230 : f32 = u_xlat1.x;
      x_226 = x_230;
    } else {
      let x_232 : f32 = u_xlat6;
      x_226 = x_232;
    }
    let x_233 : f32 = x_226;
    u_xlat15 = x_233;
    let x_235 : vec3<f32> = x_51.x_Vignette_Color;
    let x_237 : vec3<f32> = (-(x_235) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_238 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_237.x, x_237.y, x_237.z, x_238.w);
    let x_240 : f32 = u_xlat15;
    let x_242 : vec4<f32> = u_xlat1;
    let x_246 : vec3<f32> = x_51.x_Vignette_Color;
    let x_247 : vec3<f32> = ((vec3<f32>(x_240, x_240, x_240) * vec3<f32>(x_242.x, x_242.y, x_242.z)) + x_246);
    let x_248 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_247.x, x_247.y, x_247.z, x_248.w);
    let x_250 : vec3<f32> = u_xlat0;
    let x_251 : vec4<f32> = u_xlat1;
    let x_254 : vec3<f32> = u_xlat0;
    let x_256 : vec3<f32> = ((x_250 * vec3<f32>(x_251.x, x_251.y, x_251.z)) + -(x_254));
    let x_257 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_256.x, x_256.y, x_256.z, x_257.w);
    let x_261 : f32 = x_51.x_Vignette_Opacity;
    let x_263 : vec4<f32> = u_xlat1;
    let x_266 : vec3<f32> = u_xlat0;
    let x_267 : vec3<f32> = ((vec3<f32>(x_261, x_261, x_261) * vec3<f32>(x_263.x, x_263.y, x_263.z)) + x_266);
    let x_268 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_267.x, x_267.y, x_267.z, x_268.w);
    let x_271 : f32 = u_xlat1.w;
    u_xlat0.x = (x_271 + -1.0f);
    let x_274 : f32 = u_xlat15;
    let x_276 : f32 = u_xlat0.x;
    u_xlat2.w = ((x_274 * x_276) + 1.0f);
  }
  let x_280 : vec4<f32> = u_xlat2;
  u_xlat2 = x_280;
  let x_281 : vec4<f32> = u_xlat2;
  u_xlat2 = clamp(x_281, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_285 : vec4<f32> = u_xlat2;
  u_xlat0 = (vec3<f32>(x_285.z, x_285.x, x_285.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_290 : vec4<f32> = u_xlat2;
  let x_293 : vec3<f32> = max(vec3<f32>(x_290.z, x_290.x, x_290.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_294 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_293.x, x_293.y, x_293.z, x_294.w);
  let x_296 : vec4<f32> = u_xlat1;
  let x_298 : vec3<f32> = log2(vec3<f32>(x_296.x, x_296.y, x_296.z));
  let x_299 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_298.x, x_298.y, x_298.z, x_299.w);
  let x_301 : vec4<f32> = u_xlat1;
  let x_305 : vec3<f32> = (vec3<f32>(x_301.x, x_301.y, x_301.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_306 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_305.x, x_305.y, x_305.z, x_306.w);
  let x_308 : vec4<f32> = u_xlat1;
  let x_310 : vec3<f32> = exp2(vec3<f32>(x_308.x, x_308.y, x_308.z));
  let x_311 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_310.x, x_310.y, x_310.z, x_311.w);
  let x_313 : vec4<f32> = u_xlat1;
  let x_320 : vec3<f32> = ((vec3<f32>(x_313.x, x_313.y, x_313.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_321 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_320.x, x_320.y, x_320.z, x_321.w);
  let x_328 : vec4<f32> = u_xlat2;
  let x_331 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_328.z, x_328.x, x_328.y, x_328.z));
  u_xlatb3 = vec3<bool>(x_331.x, x_331.y, x_331.z);
  let x_335 : vec3<f32> = u_xlat0;
  hlslcc_movcTemp = x_335;
  let x_337 : bool = u_xlatb3.x;
  if (x_337) {
    let x_342 : f32 = u_xlat0.x;
    x_338 = x_342;
  } else {
    let x_345 : f32 = u_xlat1.x;
    x_338 = x_345;
  }
  let x_346 : f32 = x_338;
  hlslcc_movcTemp.x = x_346;
  let x_349 : bool = u_xlatb3.y;
  if (x_349) {
    let x_354 : f32 = u_xlat0.y;
    x_350 = x_354;
  } else {
    let x_357 : f32 = u_xlat1.y;
    x_350 = x_357;
  }
  let x_358 : f32 = x_350;
  hlslcc_movcTemp.y = x_358;
  let x_361 : bool = u_xlatb3.z;
  if (x_361) {
    let x_366 : f32 = u_xlat0.z;
    x_362 = x_366;
  } else {
    let x_369 : f32 = u_xlat1.z;
    x_362 = x_369;
  }
  let x_370 : f32 = x_362;
  hlslcc_movcTemp.z = x_370;
  let x_372 : vec3<f32> = hlslcc_movcTemp;
  u_xlat0 = x_372;
  let x_374 : vec3<f32> = u_xlat0;
  let x_377 : vec3<f32> = x_51.x_Lut2D_Params;
  u_xlat5 = (x_374 * vec3<f32>(x_377.z, x_377.z, x_377.z));
  let x_381 : f32 = u_xlat5.x;
  u_xlat5.x = floor(x_381);
  let x_385 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_388 : vec2<f32> = (vec2<f32>(x_385.x, x_385.y) * vec2<f32>(0.5f, 0.5f));
  let x_389 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_388.x, x_388.y, x_389.z, x_389.w);
  let x_391 : vec3<f32> = u_xlat5;
  let x_394 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_397 : vec4<f32> = u_xlat1;
  let x_399 : vec2<f32> = ((vec2<f32>(x_391.y, x_391.z) * vec2<f32>(x_394.x, x_394.y)) + vec2<f32>(x_397.x, x_397.y));
  let x_400 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_400.x, x_399.x, x_399.y, x_400.w);
  let x_403 : f32 = u_xlat5.x;
  let x_405 : f32 = x_51.x_Lut2D_Params.y;
  let x_408 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_403 * x_405) + x_408);
  let x_417 : vec4<f32> = u_xlat1;
  let x_419 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_417.x, x_417.z));
  u_xlat3 = vec3<f32>(x_419.x, x_419.y, x_419.z);
  let x_424 : f32 = x_51.x_Lut2D_Params.y;
  u_xlat4.x = x_424;
  u_xlat4.y = 0.0f;
  let x_428 : vec4<f32> = u_xlat1;
  let x_430 : vec2<f32> = u_xlat4;
  u_xlat10 = (vec2<f32>(x_428.x, x_428.z) + x_430);
  let x_435 : vec2<f32> = u_xlat10;
  let x_436 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_435);
  let x_437 : vec3<f32> = vec3<f32>(x_436.x, x_436.y, x_436.z);
  let x_438 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_437.x, x_437.y, x_437.z, x_438.w);
  let x_441 : f32 = u_xlat0.x;
  let x_443 : f32 = x_51.x_Lut2D_Params.z;
  let x_446 : f32 = u_xlat5.x;
  u_xlat0.x = ((x_441 * x_443) + -(x_446));
  let x_450 : vec3<f32> = u_xlat3;
  let x_452 : vec4<f32> = u_xlat1;
  u_xlat5 = (-(x_450) + vec3<f32>(x_452.x, x_452.y, x_452.z));
  let x_455 : vec3<f32> = u_xlat0;
  let x_457 : vec3<f32> = u_xlat5;
  let x_459 : vec3<f32> = u_xlat3;
  u_xlat0 = ((vec3<f32>(x_455.x, x_455.x, x_455.x) * x_457) + x_459);
  let x_461 : vec3<f32> = u_xlat0;
  let x_463 : vec3<f32> = (x_461 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_464 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_463.x, x_463.y, x_463.z, x_464.w);
  let x_466 : vec3<f32> = u_xlat0;
  u_xlat3 = (x_466 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_469 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_469 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_472 : vec3<f32> = u_xlat3;
  u_xlat3 = max(abs(x_472), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_475 : vec3<f32> = u_xlat3;
  u_xlat3 = log2(x_475);
  let x_477 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_477 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_480 : vec3<f32> = u_xlat3;
  u_xlat3 = exp2(x_480);
  let x_484 : vec3<f32> = u_xlat0;
  let x_486 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_484.x, x_484.y, x_484.z, x_484.x));
  u_xlatb0 = vec3<bool>(x_486.x, x_486.y, x_486.z);
  let x_489 : bool = u_xlatb0.x;
  if (x_489) {
    let x_494 : f32 = u_xlat1.x;
    x_490 = x_494;
  } else {
    let x_497 : f32 = u_xlat3.x;
    x_490 = x_497;
  }
  let x_498 : f32 = x_490;
  u_xlat2.x = x_498;
  let x_501 : bool = u_xlatb0.y;
  if (x_501) {
    let x_506 : f32 = u_xlat1.y;
    x_502 = x_506;
  } else {
    let x_509 : f32 = u_xlat3.y;
    x_502 = x_509;
  }
  let x_510 : f32 = x_502;
  u_xlat2.y = x_510;
  let x_513 : bool = u_xlatb0.z;
  if (x_513) {
    let x_518 : f32 = u_xlat1.z;
    x_514 = x_518;
  } else {
    let x_521 : f32 = u_xlat3.z;
    x_514 = x_521;
  }
  let x_522 : f32 = x_514;
  u_xlat2.z = x_522;
  let x_526 : f32 = x_51.x_LumaInAlpha;
  u_xlatb0.x = (0.5f < x_526);
  let x_530 : bool = u_xlatb0.x;
  if (x_530) {
    let x_533 : vec4<f32> = u_xlat2;
    u_xlat0 = vec3<f32>(x_533.x, x_533.y, x_533.z);
    let x_535 : vec3<f32> = u_xlat0;
    u_xlat0 = clamp(x_535, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_539 : vec3<f32> = u_xlat0;
    u_xlat2.w = dot(x_539, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_548 : vec4<f32> = u_xlat2;
  SV_Target0 = x_548;
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

