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

@group(0) @binding(1) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_51 : PGlobals;

@group(0) @binding(3) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(7) var sampler_Vignette_Mask : sampler;

@group(0) @binding(2) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(6) var sampler_Lut2D : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb15 : bool;
  var u_xlat15 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat6 : f32;
  var x_225 : f32;
  var u_xlatb3 : vec3<bool>;
  var hlslcc_movcTemp : vec3<f32>;
  var x_336 : f32;
  var x_348 : f32;
  var x_360 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec2<f32>;
  var u_xlat10 : vec2<f32>;
  var u_xlatb0 : vec3<bool>;
  var x_488 : f32;
  var x_500 : f32;
  var x_512 : f32;
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
      let x_229 : f32 = u_xlat1.x;
      x_225 = x_229;
    } else {
      let x_231 : f32 = u_xlat6;
      x_225 = x_231;
    }
    let x_232 : f32 = x_225;
    u_xlat15 = x_232;
    let x_234 : vec3<f32> = x_51.x_Vignette_Color;
    let x_236 : vec3<f32> = (-(x_234) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_237 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_236.x, x_236.y, x_236.z, x_237.w);
    let x_239 : f32 = u_xlat15;
    let x_241 : vec4<f32> = u_xlat1;
    let x_245 : vec3<f32> = x_51.x_Vignette_Color;
    let x_246 : vec3<f32> = ((vec3<f32>(x_239, x_239, x_239) * vec3<f32>(x_241.x, x_241.y, x_241.z)) + x_245);
    let x_247 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_246.x, x_246.y, x_246.z, x_247.w);
    let x_249 : vec3<f32> = u_xlat0;
    let x_250 : vec4<f32> = u_xlat1;
    let x_253 : vec3<f32> = u_xlat0;
    let x_255 : vec3<f32> = ((x_249 * vec3<f32>(x_250.x, x_250.y, x_250.z)) + -(x_253));
    let x_256 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_255.x, x_255.y, x_255.z, x_256.w);
    let x_260 : f32 = x_51.x_Vignette_Opacity;
    let x_262 : vec4<f32> = u_xlat1;
    let x_265 : vec3<f32> = u_xlat0;
    let x_266 : vec3<f32> = ((vec3<f32>(x_260, x_260, x_260) * vec3<f32>(x_262.x, x_262.y, x_262.z)) + x_265);
    let x_267 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_266.x, x_266.y, x_266.z, x_267.w);
    let x_270 : f32 = u_xlat1.w;
    u_xlat0.x = (x_270 + -1.0f);
    let x_273 : f32 = u_xlat15;
    let x_275 : f32 = u_xlat0.x;
    u_xlat2.w = ((x_273 * x_275) + 1.0f);
  }
  let x_279 : vec4<f32> = u_xlat2;
  u_xlat2 = x_279;
  let x_280 : vec4<f32> = u_xlat2;
  u_xlat2 = clamp(x_280, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_284 : vec4<f32> = u_xlat2;
  u_xlat0 = (vec3<f32>(x_284.z, x_284.x, x_284.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_289 : vec4<f32> = u_xlat2;
  let x_292 : vec3<f32> = max(vec3<f32>(x_289.z, x_289.x, x_289.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_293 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_292.x, x_292.y, x_292.z, x_293.w);
  let x_295 : vec4<f32> = u_xlat1;
  let x_297 : vec3<f32> = log2(vec3<f32>(x_295.x, x_295.y, x_295.z));
  let x_298 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_297.x, x_297.y, x_297.z, x_298.w);
  let x_300 : vec4<f32> = u_xlat1;
  let x_304 : vec3<f32> = (vec3<f32>(x_300.x, x_300.y, x_300.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_305 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_304.x, x_304.y, x_304.z, x_305.w);
  let x_307 : vec4<f32> = u_xlat1;
  let x_309 : vec3<f32> = exp2(vec3<f32>(x_307.x, x_307.y, x_307.z));
  let x_310 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_309.x, x_309.y, x_309.z, x_310.w);
  let x_312 : vec4<f32> = u_xlat1;
  let x_319 : vec3<f32> = ((vec3<f32>(x_312.x, x_312.y, x_312.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_320 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_319.x, x_319.y, x_319.z, x_320.w);
  let x_327 : vec4<f32> = u_xlat2;
  let x_330 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_327.z, x_327.x, x_327.y, x_327.z));
  u_xlatb3 = vec3<bool>(x_330.x, x_330.y, x_330.z);
  let x_333 : vec3<f32> = u_xlat0;
  hlslcc_movcTemp = x_333;
  let x_335 : bool = u_xlatb3.x;
  if (x_335) {
    let x_340 : f32 = u_xlat0.x;
    x_336 = x_340;
  } else {
    let x_343 : f32 = u_xlat1.x;
    x_336 = x_343;
  }
  let x_344 : f32 = x_336;
  hlslcc_movcTemp.x = x_344;
  let x_347 : bool = u_xlatb3.y;
  if (x_347) {
    let x_352 : f32 = u_xlat0.y;
    x_348 = x_352;
  } else {
    let x_355 : f32 = u_xlat1.y;
    x_348 = x_355;
  }
  let x_356 : f32 = x_348;
  hlslcc_movcTemp.y = x_356;
  let x_359 : bool = u_xlatb3.z;
  if (x_359) {
    let x_364 : f32 = u_xlat0.z;
    x_360 = x_364;
  } else {
    let x_367 : f32 = u_xlat1.z;
    x_360 = x_367;
  }
  let x_368 : f32 = x_360;
  hlslcc_movcTemp.z = x_368;
  let x_370 : vec3<f32> = hlslcc_movcTemp;
  u_xlat0 = x_370;
  let x_372 : vec3<f32> = u_xlat0;
  let x_375 : vec3<f32> = x_51.x_Lut2D_Params;
  u_xlat5 = (x_372 * vec3<f32>(x_375.z, x_375.z, x_375.z));
  let x_379 : f32 = u_xlat5.x;
  u_xlat5.x = floor(x_379);
  let x_383 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_386 : vec2<f32> = (vec2<f32>(x_383.x, x_383.y) * vec2<f32>(0.5f, 0.5f));
  let x_387 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_386.x, x_386.y, x_387.z, x_387.w);
  let x_389 : vec3<f32> = u_xlat5;
  let x_392 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_395 : vec4<f32> = u_xlat1;
  let x_397 : vec2<f32> = ((vec2<f32>(x_389.y, x_389.z) * vec2<f32>(x_392.x, x_392.y)) + vec2<f32>(x_395.x, x_395.y));
  let x_398 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_398.x, x_397.x, x_397.y, x_398.w);
  let x_401 : f32 = u_xlat5.x;
  let x_403 : f32 = x_51.x_Lut2D_Params.y;
  let x_406 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_401 * x_403) + x_406);
  let x_415 : vec4<f32> = u_xlat1;
  let x_417 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_415.x, x_415.z));
  u_xlat3 = vec3<f32>(x_417.x, x_417.y, x_417.z);
  let x_422 : f32 = x_51.x_Lut2D_Params.y;
  u_xlat4.x = x_422;
  u_xlat4.y = 0.0f;
  let x_426 : vec4<f32> = u_xlat1;
  let x_428 : vec2<f32> = u_xlat4;
  u_xlat10 = (vec2<f32>(x_426.x, x_426.z) + x_428);
  let x_433 : vec2<f32> = u_xlat10;
  let x_434 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_433);
  let x_435 : vec3<f32> = vec3<f32>(x_434.x, x_434.y, x_434.z);
  let x_436 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_435.x, x_435.y, x_435.z, x_436.w);
  let x_439 : f32 = u_xlat0.x;
  let x_441 : f32 = x_51.x_Lut2D_Params.z;
  let x_444 : f32 = u_xlat5.x;
  u_xlat0.x = ((x_439 * x_441) + -(x_444));
  let x_448 : vec3<f32> = u_xlat3;
  let x_450 : vec4<f32> = u_xlat1;
  u_xlat5 = (-(x_448) + vec3<f32>(x_450.x, x_450.y, x_450.z));
  let x_453 : vec3<f32> = u_xlat0;
  let x_455 : vec3<f32> = u_xlat5;
  let x_457 : vec3<f32> = u_xlat3;
  u_xlat0 = ((vec3<f32>(x_453.x, x_453.x, x_453.x) * x_455) + x_457);
  let x_459 : vec3<f32> = u_xlat0;
  let x_461 : vec3<f32> = (x_459 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_462 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_461.x, x_461.y, x_461.z, x_462.w);
  let x_464 : vec3<f32> = u_xlat0;
  u_xlat3 = (x_464 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_467 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_467 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_470 : vec3<f32> = u_xlat3;
  u_xlat3 = max(abs(x_470), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_473 : vec3<f32> = u_xlat3;
  u_xlat3 = log2(x_473);
  let x_475 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_475 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_478 : vec3<f32> = u_xlat3;
  u_xlat3 = exp2(x_478);
  let x_482 : vec3<f32> = u_xlat0;
  let x_484 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_482.x, x_482.y, x_482.z, x_482.x));
  u_xlatb0 = vec3<bool>(x_484.x, x_484.y, x_484.z);
  let x_487 : bool = u_xlatb0.x;
  if (x_487) {
    let x_492 : f32 = u_xlat1.x;
    x_488 = x_492;
  } else {
    let x_495 : f32 = u_xlat3.x;
    x_488 = x_495;
  }
  let x_496 : f32 = x_488;
  u_xlat2.x = x_496;
  let x_499 : bool = u_xlatb0.y;
  if (x_499) {
    let x_504 : f32 = u_xlat1.y;
    x_500 = x_504;
  } else {
    let x_507 : f32 = u_xlat3.y;
    x_500 = x_507;
  }
  let x_508 : f32 = x_500;
  u_xlat2.y = x_508;
  let x_511 : bool = u_xlatb0.z;
  if (x_511) {
    let x_516 : f32 = u_xlat1.z;
    x_512 = x_516;
  } else {
    let x_519 : f32 = u_xlat3.z;
    x_512 = x_519;
  }
  let x_520 : f32 = x_512;
  u_xlat2.z = x_520;
  let x_524 : f32 = x_51.x_LumaInAlpha;
  u_xlatb0.x = (0.5f < x_524);
  let x_528 : bool = u_xlatb0.x;
  if (x_528) {
    let x_531 : vec4<f32> = u_xlat2;
    u_xlat0 = vec3<f32>(x_531.x, x_531.y, x_531.z);
    let x_533 : vec3<f32> = u_xlat0;
    u_xlat0 = clamp(x_533, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_537 : vec3<f32> = u_xlat0;
    u_xlat2.w = dot(x_537, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_546 : vec4<f32> = u_xlat2;
  SV_Target0 = x_546;
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

