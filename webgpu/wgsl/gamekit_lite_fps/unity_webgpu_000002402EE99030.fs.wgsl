struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_Dithering_Coords : vec4<f32>,
  x_BloomTex_TexelSize : vec4<f32>,
  x_Bloom_DirtTileOffset : vec4<f32>,
  x_Bloom_Settings : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_Bloom_Color : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_Lut2D_Params : vec3<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var<uniform> x_13 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(4) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_BloomTex : sampler;

var<private> u_xlat9 : f32;

@group(0) @binding(3) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_AutoExposureTex : sampler;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(5) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_Bloom_DirtTex : sampler;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(6) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(12) var sampler_Lut2D : sampler;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_DitheringTex : sampler;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_279 : f32;
  var x_292 : f32;
  var x_305 : f32;
  var x_460 : f32;
  var x_472 : f32;
  var x_484 : f32;
  var x_532 : f32;
  var x_544 : f32;
  var x_556 : f32;
  var x_670 : f32;
  var x_682 : f32;
  var x_694 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_18 : vec4<f32> = x_13.x_BloomTex_TexelSize;
  u_xlat0 = (vec4<f32>(x_18.x, x_18.y, x_18.x, x_18.y) * vec4<f32>(-1.0f, -1.0f, 1.0f, 1.0f));
  let x_30 : f32 = x_13.x_Bloom_Settings.x;
  u_xlat1.x = (x_30 * 0.5f);
  let x_36 : vec4<f32> = u_xlat0;
  let x_38 : vec4<f32> = u_xlat1;
  let x_44 : vec2<f32> = vs_TEXCOORD0;
  u_xlat2 = ((vec4<f32>(x_36.x, x_36.y, x_36.z, x_36.y) * vec4<f32>(x_38.x, x_38.x, x_38.x, x_38.x)) + vec4<f32>(x_44.x, x_44.y, x_44.x, x_44.y));
  let x_47 : vec4<f32> = u_xlat2;
  u_xlat2 = clamp(x_47, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_52 : vec4<f32> = u_xlat0;
  let x_54 : vec4<f32> = u_xlat1;
  let x_57 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = ((vec4<f32>(x_52.x, x_52.w, x_52.z, x_52.w) * vec4<f32>(x_54.x, x_54.x, x_54.x, x_54.x)) + vec4<f32>(x_57.x, x_57.y, x_57.x, x_57.y));
  let x_60 : vec4<f32> = u_xlat0;
  u_xlat0 = clamp(x_60, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_64 : vec4<f32> = u_xlat0;
  let x_67 : f32 = x_13.x_RenderViewportScaleFactor;
  u_xlat0 = (x_64 * vec4<f32>(x_67, x_67, x_67, x_67));
  let x_70 : vec4<f32> = u_xlat2;
  let x_72 : f32 = x_13.x_RenderViewportScaleFactor;
  u_xlat1 = (x_70 * vec4<f32>(x_72, x_72, x_72, x_72));
  let x_85 : vec4<f32> = u_xlat1;
  let x_87 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_85.x, x_85.y));
  u_xlat2 = x_87;
  let x_91 : vec4<f32> = u_xlat1;
  let x_93 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_91.z, x_91.w));
  u_xlat1 = x_93;
  let x_94 : vec4<f32> = u_xlat1;
  let x_95 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_94 + x_95);
  let x_100 : vec4<f32> = u_xlat0;
  let x_102 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_100.x, x_100.y));
  u_xlat2 = x_102;
  let x_106 : vec4<f32> = u_xlat0;
  let x_108 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_106.z, x_106.w));
  u_xlat0 = x_108;
  let x_109 : vec4<f32> = u_xlat1;
  let x_110 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_109 + x_110);
  let x_112 : vec4<f32> = u_xlat0;
  let x_113 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_112 + x_113);
  let x_115 : vec4<f32> = u_xlat0;
  let x_118 : vec3<f32> = x_13.x_Bloom_Settings;
  u_xlat0 = (x_115 * vec4<f32>(x_118.y, x_118.y, x_118.y, x_118.y));
  let x_121 : vec4<f32> = u_xlat0;
  u_xlat1 = (x_121 * vec4<f32>(0.25f, 0.25f, 0.25f, 1.0f));
  let x_125 : vec4<f32> = u_xlat0;
  let x_128 : vec3<f32> = (vec3<f32>(x_125.x, x_125.y, x_125.z) * vec3<f32>(0.25f, 0.25f, 0.25f));
  let x_129 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_128.x, x_128.y, x_128.z, x_129.w);
  let x_131 : vec4<f32> = u_xlat1;
  let x_135 : vec3<f32> = x_13.x_Bloom_Color;
  let x_136 : vec3<f32> = (vec3<f32>(x_131.x, x_131.y, x_131.z) * x_135);
  let x_137 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_136.x, x_136.y, x_136.z, x_137.w);
  let x_141 : f32 = u_xlat1.w;
  u_xlat2.w = (x_141 * 0.25f);
  let x_150 : vec2<f32> = vs_TEXCOORD0;
  let x_151 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_150);
  u_xlat9 = x_151.x;
  let x_159 : vec2<f32> = vs_TEXCOORD1;
  let x_160 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_159);
  u_xlat1 = x_160;
  let x_161 : f32 = u_xlat9;
  let x_163 : vec4<f32> = u_xlat1;
  let x_165 : vec3<f32> = (vec3<f32>(x_161, x_161, x_161) * vec3<f32>(x_163.x, x_163.y, x_163.z));
  let x_166 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_165.x, x_165.y, x_165.z, x_166.w);
  let x_168 : vec4<f32> = u_xlat2;
  let x_169 : vec4<f32> = u_xlat1;
  u_xlat1 = (x_168 + x_169);
  let x_171 : vec2<f32> = vs_TEXCOORD0;
  let x_174 : vec4<f32> = x_13.x_Bloom_DirtTileOffset;
  let x_178 : vec4<f32> = x_13.x_Bloom_DirtTileOffset;
  let x_180 : vec2<f32> = ((x_171 * vec2<f32>(x_174.x, x_174.y)) + vec2<f32>(x_178.z, x_178.w));
  let x_181 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_180.x, x_180.y, x_181.z, x_181.w);
  let x_188 : vec4<f32> = u_xlat2;
  let x_190 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_188.x, x_188.y));
  let x_191 : vec3<f32> = vec3<f32>(x_190.x, x_190.y, x_190.z);
  let x_192 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_191.x, x_191.y, x_191.z, x_192.w);
  let x_194 : vec4<f32> = u_xlat2;
  let x_197 : vec3<f32> = x_13.x_Bloom_Settings;
  let x_199 : vec3<f32> = (vec3<f32>(x_194.x, x_194.y, x_194.z) * vec3<f32>(x_197.z, x_197.z, x_197.z));
  let x_200 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_199.x, x_199.y, x_199.z, x_200.w);
  let x_202 : vec4<f32> = u_xlat0;
  let x_204 : vec4<f32> = u_xlat2;
  let x_206 : vec3<f32> = (vec3<f32>(x_202.x, x_202.y, x_202.z) * vec3<f32>(x_204.x, x_204.y, x_204.z));
  let x_207 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_206.x, x_206.y, x_206.z, x_207.w);
  u_xlat0.w = 0.0f;
  let x_210 : vec4<f32> = u_xlat0;
  let x_211 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_210 + x_211);
  let x_213 : vec4<f32> = u_xlat0;
  u_xlat0 = clamp(x_213, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_217 : vec4<f32> = u_xlat0;
  let x_221 : vec3<f32> = max(vec3<f32>(x_217.z, x_217.x, x_217.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_222 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_221.x, x_221.y, x_221.z, x_222.w);
  let x_224 : vec4<f32> = u_xlat1;
  let x_226 : vec3<f32> = log2(vec3<f32>(x_224.x, x_224.y, x_224.z));
  let x_227 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_226.x, x_226.y, x_226.z, x_227.w);
  let x_229 : vec4<f32> = u_xlat1;
  let x_233 : vec3<f32> = (vec3<f32>(x_229.x, x_229.y, x_229.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_234 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_233.x, x_233.y, x_233.z, x_234.w);
  let x_236 : vec4<f32> = u_xlat1;
  let x_238 : vec3<f32> = exp2(vec3<f32>(x_236.x, x_236.y, x_236.z));
  let x_239 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_238.x, x_238.y, x_238.z, x_239.w);
  let x_241 : vec4<f32> = u_xlat1;
  let x_248 : vec3<f32> = ((vec3<f32>(x_241.x, x_241.y, x_241.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_249 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_248.x, x_248.y, x_248.z, x_249.w);
  let x_251 : vec4<f32> = u_xlat0;
  let x_255 : vec3<f32> = (vec3<f32>(x_251.z, x_251.x, x_251.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_256 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_255.x, x_255.y, x_255.z, x_256.w);
  let x_264 : vec4<f32> = u_xlat0;
  let x_267 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_264.z, x_264.x, x_264.y, x_264.z));
  u_xlatb0 = vec3<bool>(x_267.x, x_267.y, x_267.z);
  let x_272 : f32 = u_xlat0.w;
  SV_Target0.w = x_272;
  let x_277 : bool = u_xlatb0.x;
  if (x_277) {
    let x_283 : f32 = u_xlat2.x;
    x_279 = x_283;
  } else {
    let x_286 : f32 = u_xlat1.x;
    x_279 = x_286;
  }
  let x_287 : f32 = x_279;
  u_xlat0.x = x_287;
  let x_291 : bool = u_xlatb0.y;
  if (x_291) {
    let x_296 : f32 = u_xlat2.y;
    x_292 = x_296;
  } else {
    let x_299 : f32 = u_xlat1.y;
    x_292 = x_299;
  }
  let x_300 : f32 = x_292;
  u_xlat0.y = x_300;
  let x_304 : bool = u_xlatb0.z;
  if (x_304) {
    let x_309 : f32 = u_xlat2.z;
    x_305 = x_309;
  } else {
    let x_312 : f32 = u_xlat1.z;
    x_305 = x_312;
  }
  let x_313 : f32 = x_305;
  u_xlat0.z = x_313;
  let x_317 : vec4<f32> = u_xlat0;
  let x_321 : vec3<f32> = x_13.x_Lut2D_Params;
  u_xlat3 = (vec3<f32>(x_317.x, x_317.y, x_317.z) * vec3<f32>(x_321.z, x_321.z, x_321.z));
  let x_325 : f32 = u_xlat3.x;
  u_xlat3.x = floor(x_325);
  let x_329 : f32 = u_xlat0.x;
  let x_331 : f32 = x_13.x_Lut2D_Params.z;
  let x_334 : f32 = u_xlat3.x;
  u_xlat0.x = ((x_329 * x_331) + -(x_334));
  let x_339 : vec3<f32> = x_13.x_Lut2D_Params;
  let x_342 : vec2<f32> = (vec2<f32>(x_339.x, x_339.y) * vec2<f32>(0.5f, 0.5f));
  let x_343 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_342.x, x_342.y, x_343.z, x_343.w);
  let x_345 : vec3<f32> = u_xlat3;
  let x_348 : vec3<f32> = x_13.x_Lut2D_Params;
  let x_351 : vec4<f32> = u_xlat1;
  let x_353 : vec2<f32> = ((vec2<f32>(x_345.y, x_345.z) * vec2<f32>(x_348.x, x_348.y)) + vec2<f32>(x_351.x, x_351.y));
  let x_354 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_354.x, x_353.x, x_353.y, x_354.w);
  let x_357 : f32 = u_xlat3.x;
  let x_359 : f32 = x_13.x_Lut2D_Params.y;
  let x_362 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_357 * x_359) + x_362);
  let x_366 : f32 = x_13.x_Lut2D_Params.y;
  u_xlat2.x = x_366;
  u_xlat2.y = 0.0f;
  let x_369 : vec4<f32> = u_xlat1;
  let x_371 : vec4<f32> = u_xlat2;
  let x_373 : vec2<f32> = (vec2<f32>(x_369.x, x_369.z) + vec2<f32>(x_371.x, x_371.y));
  let x_374 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_373.x, x_373.y, x_374.z);
  let x_381 : vec4<f32> = u_xlat1;
  let x_383 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_381.x, x_381.z));
  let x_384 : vec3<f32> = vec3<f32>(x_383.x, x_383.y, x_383.z);
  let x_385 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_384.x, x_384.y, x_384.z, x_385.w);
  let x_390 : vec3<f32> = u_xlat3;
  let x_392 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_390.x, x_390.y));
  u_xlat3 = vec3<f32>(x_392.x, x_392.y, x_392.z);
  let x_394 : vec4<f32> = u_xlat1;
  let x_397 : vec3<f32> = u_xlat3;
  u_xlat3 = (-(vec3<f32>(x_394.x, x_394.y, x_394.z)) + x_397);
  let x_399 : vec4<f32> = u_xlat0;
  let x_401 : vec3<f32> = u_xlat3;
  let x_403 : vec4<f32> = u_xlat1;
  let x_405 : vec3<f32> = ((vec3<f32>(x_399.x, x_399.x, x_399.x) * x_401) + vec3<f32>(x_403.x, x_403.y, x_403.z));
  let x_406 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_405.x, x_405.y, x_405.z, x_406.w);
  let x_408 : vec4<f32> = u_xlat0;
  let x_412 : vec3<f32> = (vec3<f32>(x_408.x, x_408.y, x_408.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_413 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_412.x, x_412.y, x_412.z, x_413.w);
  let x_415 : vec4<f32> = u_xlat1;
  let x_419 : vec3<f32> = (vec3<f32>(x_415.x, x_415.y, x_415.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_420 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_419.x, x_419.y, x_419.z, x_420.w);
  let x_422 : vec4<f32> = u_xlat1;
  let x_425 : vec3<f32> = max(abs(vec3<f32>(x_422.x, x_422.y, x_422.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_426 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_425.x, x_425.y, x_425.z, x_426.w);
  let x_428 : vec4<f32> = u_xlat1;
  let x_430 : vec3<f32> = log2(vec3<f32>(x_428.x, x_428.y, x_428.z));
  let x_431 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_430.x, x_430.y, x_430.z, x_431.w);
  let x_433 : vec4<f32> = u_xlat1;
  let x_437 : vec3<f32> = (vec3<f32>(x_433.x, x_433.y, x_433.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_438 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_437.x, x_437.y, x_437.z, x_438.w);
  let x_440 : vec4<f32> = u_xlat1;
  let x_442 : vec3<f32> = exp2(vec3<f32>(x_440.x, x_440.y, x_440.z));
  let x_443 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_442.x, x_442.y, x_442.z, x_443.w);
  let x_445 : vec4<f32> = u_xlat0;
  let x_449 : vec3<f32> = (vec3<f32>(x_445.x, x_445.y, x_445.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_450 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_449.x, x_449.y, x_449.z, x_450.w);
  let x_454 : vec4<f32> = u_xlat0;
  let x_456 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_454.x, x_454.y, x_454.z, x_454.x));
  u_xlatb0 = vec3<bool>(x_456.x, x_456.y, x_456.z);
  let x_459 : bool = u_xlatb0.x;
  if (x_459) {
    let x_464 : f32 = u_xlat2.x;
    x_460 = x_464;
  } else {
    let x_467 : f32 = u_xlat1.x;
    x_460 = x_467;
  }
  let x_468 : f32 = x_460;
  u_xlat0.x = x_468;
  let x_471 : bool = u_xlatb0.y;
  if (x_471) {
    let x_476 : f32 = u_xlat2.y;
    x_472 = x_476;
  } else {
    let x_479 : f32 = u_xlat1.y;
    x_472 = x_479;
  }
  let x_480 : f32 = x_472;
  u_xlat0.y = x_480;
  let x_483 : bool = u_xlatb0.z;
  if (x_483) {
    let x_488 : f32 = u_xlat2.z;
    x_484 = x_488;
  } else {
    let x_491 : f32 = u_xlat1.z;
    x_484 = x_491;
  }
  let x_492 : f32 = x_484;
  u_xlat0.z = x_492;
  let x_494 : vec4<f32> = u_xlat0;
  let x_497 : vec3<f32> = max(abs(vec3<f32>(x_494.x, x_494.y, x_494.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_498 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_497.x, x_497.y, x_497.z, x_498.w);
  let x_500 : vec4<f32> = u_xlat1;
  let x_502 : vec3<f32> = log2(vec3<f32>(x_500.x, x_500.y, x_500.z));
  let x_503 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_502.x, x_502.y, x_502.z, x_503.w);
  let x_505 : vec4<f32> = u_xlat1;
  let x_507 : vec3<f32> = (vec3<f32>(x_505.x, x_505.y, x_505.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_508 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_507.x, x_507.y, x_507.z, x_508.w);
  let x_510 : vec4<f32> = u_xlat1;
  let x_512 : vec3<f32> = exp2(vec3<f32>(x_510.x, x_510.y, x_510.z));
  let x_513 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_512.x, x_512.y, x_512.z, x_513.w);
  let x_515 : vec4<f32> = u_xlat1;
  let x_518 : vec3<f32> = ((vec3<f32>(x_515.x, x_515.y, x_515.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_519 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_518.x, x_518.y, x_518.z, x_519.w);
  let x_521 : vec4<f32> = u_xlat0;
  let x_523 : vec3<f32> = (vec3<f32>(x_521.x, x_521.y, x_521.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_524 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_523.x, x_523.y, x_523.z, x_524.w);
  let x_526 : vec4<f32> = u_xlat0;
  let x_528 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_526.x, x_526.y, x_526.z, x_526.x));
  u_xlatb0 = vec3<bool>(x_528.x, x_528.y, x_528.z);
  let x_531 : bool = u_xlatb0.x;
  if (x_531) {
    let x_536 : f32 = u_xlat2.x;
    x_532 = x_536;
  } else {
    let x_539 : f32 = u_xlat1.x;
    x_532 = x_539;
  }
  let x_540 : f32 = x_532;
  u_xlat0.x = x_540;
  let x_543 : bool = u_xlatb0.y;
  if (x_543) {
    let x_548 : f32 = u_xlat2.y;
    x_544 = x_548;
  } else {
    let x_551 : f32 = u_xlat1.y;
    x_544 = x_551;
  }
  let x_552 : f32 = x_544;
  u_xlat0.y = x_552;
  let x_555 : bool = u_xlatb0.z;
  if (x_555) {
    let x_560 : f32 = u_xlat2.z;
    x_556 = x_560;
  } else {
    let x_563 : f32 = u_xlat1.z;
    x_556 = x_563;
  }
  let x_564 : f32 = x_556;
  u_xlat0.z = x_564;
  let x_566 : vec2<f32> = vs_TEXCOORD0;
  let x_569 : vec4<f32> = x_13.x_Dithering_Coords;
  let x_573 : vec4<f32> = x_13.x_Dithering_Coords;
  let x_575 : vec2<f32> = ((x_566 * vec2<f32>(x_569.x, x_569.y)) + vec2<f32>(x_573.z, x_573.w));
  let x_576 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_575.x, x_575.y, x_576.z, x_576.w);
  let x_583 : vec4<f32> = u_xlat1;
  let x_585 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_583.x, x_583.y));
  u_xlat9 = x_585.w;
  let x_587 : f32 = u_xlat9;
  u_xlat9 = ((x_587 * 2.0f) + -1.0f);
  let x_591 : f32 = u_xlat9;
  u_xlat1.x = (-(abs(x_591)) + 1.0f);
  let x_596 : f32 = u_xlat9;
  u_xlat9 = ((x_596 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_600 : f32 = u_xlat9;
  u_xlat9 = clamp(x_600, 0.0f, 1.0f);
  let x_602 : f32 = u_xlat9;
  u_xlat9 = ((x_602 * 2.0f) + -1.0f);
  let x_606 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_606);
  let x_610 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_610) + 1.0f);
  let x_614 : f32 = u_xlat9;
  let x_616 : f32 = u_xlat1.x;
  u_xlat9 = (x_614 * x_616);
  let x_618 : f32 = u_xlat9;
  let x_623 : vec4<f32> = u_xlat0;
  let x_625 : vec3<f32> = ((vec3<f32>(x_618, x_618, x_618) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_623.x, x_623.y, x_623.z));
  let x_626 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_625.x, x_625.y, x_625.z, x_626.w);
  let x_628 : vec4<f32> = u_xlat0;
  let x_630 : vec3<f32> = (vec3<f32>(x_628.x, x_628.y, x_628.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_631 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_630.x, x_630.y, x_630.z, x_631.w);
  let x_633 : vec4<f32> = u_xlat1;
  let x_635 : vec3<f32> = (vec3<f32>(x_633.x, x_633.y, x_633.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_636 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_635.x, x_635.y, x_635.z, x_636.w);
  let x_638 : vec4<f32> = u_xlat1;
  let x_641 : vec3<f32> = max(abs(vec3<f32>(x_638.x, x_638.y, x_638.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_642 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_641.x, x_641.y, x_641.z, x_642.w);
  let x_644 : vec4<f32> = u_xlat1;
  let x_646 : vec3<f32> = log2(vec3<f32>(x_644.x, x_644.y, x_644.z));
  let x_647 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_646.x, x_646.y, x_646.z, x_647.w);
  let x_649 : vec4<f32> = u_xlat1;
  let x_651 : vec3<f32> = (vec3<f32>(x_649.x, x_649.y, x_649.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_652 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_651.x, x_651.y, x_651.z, x_652.w);
  let x_654 : vec4<f32> = u_xlat1;
  let x_656 : vec3<f32> = exp2(vec3<f32>(x_654.x, x_654.y, x_654.z));
  let x_657 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_656.x, x_656.y, x_656.z, x_657.w);
  let x_659 : vec4<f32> = u_xlat0;
  let x_661 : vec3<f32> = (vec3<f32>(x_659.x, x_659.y, x_659.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_662 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_661.x, x_661.y, x_661.z, x_662.w);
  let x_664 : vec4<f32> = u_xlat0;
  let x_666 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_664.x, x_664.y, x_664.z, x_664.x));
  u_xlatb0 = vec3<bool>(x_666.x, x_666.y, x_666.z);
  let x_669 : bool = u_xlatb0.x;
  if (x_669) {
    let x_674 : f32 = u_xlat2.x;
    x_670 = x_674;
  } else {
    let x_677 : f32 = u_xlat1.x;
    x_670 = x_677;
  }
  let x_678 : f32 = x_670;
  SV_Target0.x = x_678;
  let x_681 : bool = u_xlatb0.y;
  if (x_681) {
    let x_686 : f32 = u_xlat2.y;
    x_682 = x_686;
  } else {
    let x_689 : f32 = u_xlat1.y;
    x_682 = x_689;
  }
  let x_690 : f32 = x_682;
  SV_Target0.y = x_690;
  let x_693 : bool = u_xlatb0.z;
  if (x_693) {
    let x_698 : f32 = u_xlat2.z;
    x_694 = x_698;
  } else {
    let x_701 : f32 = u_xlat1.z;
    x_694 = x_701;
  }
  let x_702 : f32 = x_694;
  SV_Target0.z = x_702;
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

