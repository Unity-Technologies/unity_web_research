struct PGlobals {
  x_Dithering_Coords : vec4<f32>,
  x_Lut2D_Params : vec3<f32>,
}

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_157 : PGlobals;

@group(0) @binding(3) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(7) var sampler_Lut2D : sampler;

@group(0) @binding(0) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_DitheringTex : sampler;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat10 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlatb0 : vec3<bool>;
  var x_117 : f32;
  var x_130 : f32;
  var x_143 : f32;
  var u_xlat3 : vec3<f32>;
  var x_297 : f32;
  var x_309 : f32;
  var x_321 : f32;
  var x_365 : f32;
  var x_377 : f32;
  var x_389 : f32;
  var u_xlat9 : f32;
  var x_499 : f32;
  var x_511 : f32;
  var x_523 : f32;
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
  let x_46 : vec3<f32> = u_xlat0;
  u_xlat0 = clamp(x_46, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_55 : f32 = u_xlat1.w;
  u_xlat10 = x_55;
  let x_56 : f32 = u_xlat10;
  u_xlat10 = clamp(x_56, 0.0f, 1.0f);
  let x_60 : f32 = u_xlat10;
  SV_Target0.w = x_60;
  let x_63 : vec3<f32> = u_xlat0;
  let x_67 : vec3<f32> = max(vec3<f32>(x_63.z, x_63.x, x_63.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_68 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_67.x, x_67.y, x_67.z, x_68.w);
  let x_70 : vec4<f32> = u_xlat1;
  let x_72 : vec3<f32> = log2(vec3<f32>(x_70.x, x_70.y, x_70.z));
  let x_73 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_72.x, x_72.y, x_72.z, x_73.w);
  let x_75 : vec4<f32> = u_xlat1;
  let x_79 : vec3<f32> = (vec3<f32>(x_75.x, x_75.y, x_75.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_80 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_79.x, x_79.y, x_79.z, x_80.w);
  let x_82 : vec4<f32> = u_xlat1;
  let x_84 : vec3<f32> = exp2(vec3<f32>(x_82.x, x_82.y, x_82.z));
  let x_85 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_84.x, x_84.y, x_84.z, x_85.w);
  let x_87 : vec4<f32> = u_xlat1;
  let x_94 : vec3<f32> = ((vec3<f32>(x_87.x, x_87.y, x_87.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_95 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_94.x, x_94.y, x_94.z, x_95.w);
  let x_98 : vec3<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_98.z, x_98.x, x_98.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_109 : vec3<f32> = u_xlat0;
  let x_112 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_109.z, x_109.x, x_109.y, x_109.z));
  u_xlatb0 = vec3<bool>(x_112.x, x_112.y, x_112.z);
  let x_116 : bool = u_xlatb0.x;
  if (x_116) {
    let x_121 : f32 = u_xlat2.x;
    x_117 = x_121;
  } else {
    let x_124 : f32 = u_xlat1.x;
    x_117 = x_124;
  }
  let x_125 : f32 = x_117;
  u_xlat0.x = x_125;
  let x_129 : bool = u_xlatb0.y;
  if (x_129) {
    let x_134 : f32 = u_xlat2.y;
    x_130 = x_134;
  } else {
    let x_137 : f32 = u_xlat1.y;
    x_130 = x_137;
  }
  let x_138 : f32 = x_130;
  u_xlat0.y = x_138;
  let x_142 : bool = u_xlatb0.z;
  if (x_142) {
    let x_147 : f32 = u_xlat2.z;
    x_143 = x_147;
  } else {
    let x_150 : f32 = u_xlat1.z;
    x_143 = x_150;
  }
  let x_151 : f32 = x_143;
  u_xlat0.z = x_151;
  let x_154 : vec3<f32> = u_xlat0;
  let x_162 : vec3<f32> = x_157.x_Lut2D_Params;
  u_xlat3 = (x_154 * vec3<f32>(x_162.z, x_162.z, x_162.z));
  let x_166 : vec3<f32> = x_157.x_Lut2D_Params;
  let x_170 : vec2<f32> = (vec2<f32>(x_166.x, x_166.y) * vec2<f32>(0.5f, 0.5f));
  let x_171 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_170.x, x_170.y, x_171.z, x_171.w);
  let x_173 : vec3<f32> = u_xlat3;
  let x_176 : vec3<f32> = x_157.x_Lut2D_Params;
  let x_179 : vec4<f32> = u_xlat1;
  let x_181 : vec2<f32> = ((vec2<f32>(x_173.y, x_173.z) * vec2<f32>(x_176.x, x_176.y)) + vec2<f32>(x_179.x, x_179.y));
  let x_182 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_182.x, x_181.x, x_181.y, x_182.w);
  let x_185 : f32 = u_xlat3.x;
  u_xlat3.x = floor(x_185);
  let x_189 : f32 = u_xlat3.x;
  let x_192 : f32 = x_157.x_Lut2D_Params.y;
  let x_195 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_189 * x_192) + x_195);
  let x_199 : f32 = u_xlat0.x;
  let x_201 : f32 = x_157.x_Lut2D_Params.z;
  let x_204 : f32 = u_xlat3.x;
  u_xlat0.x = ((x_199 * x_201) + -(x_204));
  let x_209 : f32 = x_157.x_Lut2D_Params.y;
  u_xlat2.x = x_209;
  u_xlat2.y = 0.0f;
  let x_212 : vec4<f32> = u_xlat1;
  let x_214 : vec3<f32> = u_xlat2;
  let x_216 : vec2<f32> = (vec2<f32>(x_212.x, x_212.z) + vec2<f32>(x_214.x, x_214.y));
  let x_217 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_216.x, x_216.y, x_217.z);
  let x_224 : vec4<f32> = u_xlat1;
  let x_226 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_224.x, x_224.z));
  let x_227 : vec3<f32> = vec3<f32>(x_226.x, x_226.y, x_226.z);
  let x_228 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_227.x, x_227.y, x_227.z, x_228.w);
  let x_233 : vec3<f32> = u_xlat3;
  let x_235 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_233.x, x_233.y));
  u_xlat3 = vec3<f32>(x_235.x, x_235.y, x_235.z);
  let x_237 : vec4<f32> = u_xlat1;
  let x_240 : vec3<f32> = u_xlat3;
  u_xlat3 = (-(vec3<f32>(x_237.x, x_237.y, x_237.z)) + x_240);
  let x_242 : vec3<f32> = u_xlat0;
  let x_244 : vec3<f32> = u_xlat3;
  let x_246 : vec4<f32> = u_xlat1;
  u_xlat0 = ((vec3<f32>(x_242.x, x_242.x, x_242.x) * x_244) + vec3<f32>(x_246.x, x_246.y, x_246.z));
  let x_249 : vec3<f32> = u_xlat0;
  let x_252 : vec3<f32> = (x_249 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_253 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_252.x, x_252.y, x_252.z, x_253.w);
  let x_255 : vec4<f32> = u_xlat1;
  let x_259 : vec3<f32> = (vec3<f32>(x_255.x, x_255.y, x_255.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_260 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_259.x, x_259.y, x_259.z, x_260.w);
  let x_262 : vec4<f32> = u_xlat1;
  let x_265 : vec3<f32> = max(abs(vec3<f32>(x_262.x, x_262.y, x_262.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_266 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_265.x, x_265.y, x_265.z, x_266.w);
  let x_268 : vec4<f32> = u_xlat1;
  let x_270 : vec3<f32> = log2(vec3<f32>(x_268.x, x_268.y, x_268.z));
  let x_271 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_270.x, x_270.y, x_270.z, x_271.w);
  let x_273 : vec4<f32> = u_xlat1;
  let x_277 : vec3<f32> = (vec3<f32>(x_273.x, x_273.y, x_273.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_278 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_277.x, x_277.y, x_277.z, x_278.w);
  let x_280 : vec4<f32> = u_xlat1;
  let x_282 : vec3<f32> = exp2(vec3<f32>(x_280.x, x_280.y, x_280.z));
  let x_283 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_282.x, x_282.y, x_282.z, x_283.w);
  let x_285 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_285 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_291 : vec3<f32> = u_xlat0;
  let x_293 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_291.x, x_291.y, x_291.z, x_291.x));
  u_xlatb0 = vec3<bool>(x_293.x, x_293.y, x_293.z);
  let x_296 : bool = u_xlatb0.x;
  if (x_296) {
    let x_301 : f32 = u_xlat2.x;
    x_297 = x_301;
  } else {
    let x_304 : f32 = u_xlat1.x;
    x_297 = x_304;
  }
  let x_305 : f32 = x_297;
  u_xlat0.x = x_305;
  let x_308 : bool = u_xlatb0.y;
  if (x_308) {
    let x_313 : f32 = u_xlat2.y;
    x_309 = x_313;
  } else {
    let x_316 : f32 = u_xlat1.y;
    x_309 = x_316;
  }
  let x_317 : f32 = x_309;
  u_xlat0.y = x_317;
  let x_320 : bool = u_xlatb0.z;
  if (x_320) {
    let x_325 : f32 = u_xlat2.z;
    x_321 = x_325;
  } else {
    let x_328 : f32 = u_xlat1.z;
    x_321 = x_328;
  }
  let x_329 : f32 = x_321;
  u_xlat0.z = x_329;
  let x_331 : vec3<f32> = u_xlat0;
  let x_333 : vec3<f32> = max(abs(x_331), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_334 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
  let x_336 : vec4<f32> = u_xlat1;
  let x_338 : vec3<f32> = log2(vec3<f32>(x_336.x, x_336.y, x_336.z));
  let x_339 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_338.x, x_338.y, x_338.z, x_339.w);
  let x_341 : vec4<f32> = u_xlat1;
  let x_343 : vec3<f32> = (vec3<f32>(x_341.x, x_341.y, x_341.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_344 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_343.x, x_343.y, x_343.z, x_344.w);
  let x_346 : vec4<f32> = u_xlat1;
  let x_348 : vec3<f32> = exp2(vec3<f32>(x_346.x, x_346.y, x_346.z));
  let x_349 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_348.x, x_348.y, x_348.z, x_349.w);
  let x_351 : vec4<f32> = u_xlat1;
  let x_354 : vec3<f32> = ((vec3<f32>(x_351.x, x_351.y, x_351.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_355 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_354.x, x_354.y, x_354.z, x_355.w);
  let x_357 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_357 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_359 : vec3<f32> = u_xlat0;
  let x_361 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_359.x, x_359.y, x_359.z, x_359.x));
  u_xlatb0 = vec3<bool>(x_361.x, x_361.y, x_361.z);
  let x_364 : bool = u_xlatb0.x;
  if (x_364) {
    let x_369 : f32 = u_xlat2.x;
    x_365 = x_369;
  } else {
    let x_372 : f32 = u_xlat1.x;
    x_365 = x_372;
  }
  let x_373 : f32 = x_365;
  u_xlat0.x = x_373;
  let x_376 : bool = u_xlatb0.y;
  if (x_376) {
    let x_381 : f32 = u_xlat2.y;
    x_377 = x_381;
  } else {
    let x_384 : f32 = u_xlat1.y;
    x_377 = x_384;
  }
  let x_385 : f32 = x_377;
  u_xlat0.y = x_385;
  let x_388 : bool = u_xlatb0.z;
  if (x_388) {
    let x_393 : f32 = u_xlat2.z;
    x_389 = x_393;
  } else {
    let x_396 : f32 = u_xlat1.z;
    x_389 = x_396;
  }
  let x_397 : f32 = x_389;
  u_xlat0.z = x_397;
  let x_399 : vec2<f32> = vs_TEXCOORD0;
  let x_403 : vec4<f32> = x_157.x_Dithering_Coords;
  let x_407 : vec4<f32> = x_157.x_Dithering_Coords;
  let x_409 : vec2<f32> = ((x_399 * vec2<f32>(x_403.x, x_403.y)) + vec2<f32>(x_407.z, x_407.w));
  let x_410 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_409.x, x_409.y, x_410.z, x_410.w);
  let x_418 : vec4<f32> = u_xlat1;
  let x_420 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_418.x, x_418.y));
  u_xlat9 = x_420.w;
  let x_422 : f32 = u_xlat9;
  u_xlat9 = ((x_422 * 2.0f) + -1.0f);
  let x_427 : f32 = u_xlat9;
  u_xlat1.x = (-(abs(x_427)) + 1.0f);
  let x_432 : f32 = u_xlat9;
  u_xlat9 = ((x_432 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_436 : f32 = u_xlat9;
  u_xlat9 = clamp(x_436, 0.0f, 1.0f);
  let x_438 : f32 = u_xlat9;
  u_xlat9 = ((x_438 * 2.0f) + -1.0f);
  let x_442 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_442);
  let x_446 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_446) + 1.0f);
  let x_450 : f32 = u_xlat9;
  let x_452 : f32 = u_xlat1.x;
  u_xlat9 = (x_450 * x_452);
  let x_454 : f32 = u_xlat9;
  let x_459 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_454, x_454, x_454) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + x_459);
  let x_461 : vec3<f32> = u_xlat0;
  let x_462 : vec3<f32> = (x_461 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_463 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_462.x, x_462.y, x_462.z, x_463.w);
  let x_465 : vec4<f32> = u_xlat1;
  let x_467 : vec3<f32> = (vec3<f32>(x_465.x, x_465.y, x_465.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_468 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_467.x, x_467.y, x_467.z, x_468.w);
  let x_470 : vec4<f32> = u_xlat1;
  let x_473 : vec3<f32> = max(abs(vec3<f32>(x_470.x, x_470.y, x_470.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_474 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_473.x, x_473.y, x_473.z, x_474.w);
  let x_476 : vec4<f32> = u_xlat1;
  let x_478 : vec3<f32> = log2(vec3<f32>(x_476.x, x_476.y, x_476.z));
  let x_479 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_478.x, x_478.y, x_478.z, x_479.w);
  let x_481 : vec4<f32> = u_xlat1;
  let x_483 : vec3<f32> = (vec3<f32>(x_481.x, x_481.y, x_481.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_484 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_483.x, x_483.y, x_483.z, x_484.w);
  let x_486 : vec4<f32> = u_xlat1;
  let x_488 : vec3<f32> = exp2(vec3<f32>(x_486.x, x_486.y, x_486.z));
  let x_489 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_488.x, x_488.y, x_488.z, x_489.w);
  let x_491 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_491 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_493 : vec3<f32> = u_xlat0;
  let x_495 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_493.x, x_493.y, x_493.z, x_493.x));
  u_xlatb0 = vec3<bool>(x_495.x, x_495.y, x_495.z);
  let x_498 : bool = u_xlatb0.x;
  if (x_498) {
    let x_503 : f32 = u_xlat2.x;
    x_499 = x_503;
  } else {
    let x_506 : f32 = u_xlat1.x;
    x_499 = x_506;
  }
  let x_507 : f32 = x_499;
  SV_Target0.x = x_507;
  let x_510 : bool = u_xlatb0.y;
  if (x_510) {
    let x_515 : f32 = u_xlat2.y;
    x_511 = x_515;
  } else {
    let x_518 : f32 = u_xlat1.y;
    x_511 = x_518;
  }
  let x_519 : f32 = x_511;
  SV_Target0.y = x_519;
  let x_522 : bool = u_xlatb0.z;
  if (x_522) {
    let x_527 : f32 = u_xlat2.z;
    x_523 = x_527;
  } else {
    let x_530 : f32 = u_xlat1.z;
    x_523 = x_530;
  }
  let x_531 : f32 = x_523;
  SV_Target0.z = x_531;
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

