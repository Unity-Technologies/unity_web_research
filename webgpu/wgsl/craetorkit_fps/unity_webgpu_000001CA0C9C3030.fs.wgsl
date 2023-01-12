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

@group(1) @binding(0) var<uniform> x_13 : PGlobals;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(3) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_BloomTex : sampler;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_AutoExposureTex : sampler;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(4) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_Bloom_DirtTex : sampler;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(5) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(11) var sampler_Lut2D : sampler;

@group(0) @binding(0) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_DitheringTex : sampler;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlatb0 : vec3<bool>;
  var x_271 : f32;
  var x_284 : f32;
  var x_297 : f32;
  var u_xlat4 : vec3<f32>;
  var x_452 : f32;
  var x_464 : f32;
  var x_476 : f32;
  var x_524 : f32;
  var x_536 : f32;
  var x_548 : f32;
  var u_xlat12 : f32;
  var x_663 : f32;
  var x_675 : f32;
  var x_687 : f32;
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
  u_xlat0 = (x_125 * vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
  let x_128 : vec4<f32> = u_xlat1;
  let x_132 : vec3<f32> = x_13.x_Bloom_Color;
  let x_133 : vec3<f32> = (vec3<f32>(x_128.x, x_128.y, x_128.z) * x_132);
  let x_134 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_133.x, x_133.y, x_133.z, x_134.w);
  let x_138 : f32 = u_xlat1.w;
  u_xlat2.w = (x_138 * 0.25f);
  let x_146 : vec2<f32> = vs_TEXCOORD0;
  let x_147 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_146);
  u_xlat1.x = x_147.x;
  let x_157 : vec2<f32> = vs_TEXCOORD1;
  let x_158 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_157);
  u_xlat3 = x_158;
  let x_159 : vec4<f32> = u_xlat1;
  let x_161 : vec4<f32> = u_xlat3;
  let x_163 : vec3<f32> = (vec3<f32>(x_159.x, x_159.x, x_159.x) * vec3<f32>(x_161.x, x_161.y, x_161.z));
  let x_164 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_163.x, x_163.y, x_163.z, x_164.w);
  let x_166 : vec4<f32> = u_xlat2;
  let x_167 : vec4<f32> = u_xlat3;
  u_xlat1 = (x_166 + x_167);
  let x_169 : vec2<f32> = vs_TEXCOORD0;
  let x_172 : vec4<f32> = x_13.x_Bloom_DirtTileOffset;
  let x_176 : vec4<f32> = x_13.x_Bloom_DirtTileOffset;
  let x_178 : vec2<f32> = ((x_169 * vec2<f32>(x_172.x, x_172.y)) + vec2<f32>(x_176.z, x_176.w));
  let x_179 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_178.x, x_178.y, x_179.z, x_179.w);
  let x_186 : vec4<f32> = u_xlat2;
  let x_188 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_186.x, x_186.y));
  let x_189 : vec3<f32> = vec3<f32>(x_188.x, x_188.y, x_188.z);
  let x_190 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_189.x, x_189.y, x_189.z, x_190.w);
  let x_192 : vec4<f32> = u_xlat2;
  let x_195 : vec3<f32> = x_13.x_Bloom_Settings;
  let x_197 : vec3<f32> = (vec3<f32>(x_192.x, x_192.y, x_192.z) * vec3<f32>(x_195.z, x_195.z, x_195.z));
  let x_198 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_197.x, x_197.y, x_197.z, x_198.w);
  u_xlat2.w = 0.0f;
  let x_201 : vec4<f32> = u_xlat2;
  let x_202 : vec4<f32> = u_xlat0;
  let x_204 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_201 * x_202) + x_204);
  let x_206 : vec4<f32> = u_xlat0;
  u_xlat0 = clamp(x_206, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_210 : vec4<f32> = u_xlat0;
  let x_214 : vec3<f32> = max(vec3<f32>(x_210.z, x_210.x, x_210.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_215 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_214.x, x_214.y, x_214.z, x_215.w);
  let x_217 : vec4<f32> = u_xlat1;
  let x_219 : vec3<f32> = log2(vec3<f32>(x_217.x, x_217.y, x_217.z));
  let x_220 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_219.x, x_219.y, x_219.z, x_220.w);
  let x_222 : vec4<f32> = u_xlat1;
  let x_226 : vec3<f32> = (vec3<f32>(x_222.x, x_222.y, x_222.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_227 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_226.x, x_226.y, x_226.z, x_227.w);
  let x_229 : vec4<f32> = u_xlat1;
  let x_231 : vec3<f32> = exp2(vec3<f32>(x_229.x, x_229.y, x_229.z));
  let x_232 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_231.x, x_231.y, x_231.z, x_232.w);
  let x_234 : vec4<f32> = u_xlat1;
  let x_241 : vec3<f32> = ((vec3<f32>(x_234.x, x_234.y, x_234.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_242 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_241.x, x_241.y, x_241.z, x_242.w);
  let x_244 : vec4<f32> = u_xlat0;
  let x_248 : vec3<f32> = (vec3<f32>(x_244.z, x_244.x, x_244.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_249 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_248.x, x_248.y, x_248.z, x_249.w);
  let x_257 : vec4<f32> = u_xlat0;
  let x_260 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_257.z, x_257.x, x_257.y, x_257.z));
  u_xlatb0 = vec3<bool>(x_260.x, x_260.y, x_260.z);
  let x_265 : f32 = u_xlat0.w;
  SV_Target0.w = x_265;
  let x_270 : bool = u_xlatb0.x;
  if (x_270) {
    let x_275 : f32 = u_xlat2.x;
    x_271 = x_275;
  } else {
    let x_278 : f32 = u_xlat1.x;
    x_271 = x_278;
  }
  let x_279 : f32 = x_271;
  u_xlat0.x = x_279;
  let x_283 : bool = u_xlatb0.y;
  if (x_283) {
    let x_288 : f32 = u_xlat2.y;
    x_284 = x_288;
  } else {
    let x_291 : f32 = u_xlat1.y;
    x_284 = x_291;
  }
  let x_292 : f32 = x_284;
  u_xlat0.y = x_292;
  let x_296 : bool = u_xlatb0.z;
  if (x_296) {
    let x_301 : f32 = u_xlat2.z;
    x_297 = x_301;
  } else {
    let x_304 : f32 = u_xlat1.z;
    x_297 = x_304;
  }
  let x_305 : f32 = x_297;
  u_xlat0.z = x_305;
  let x_309 : vec4<f32> = u_xlat0;
  let x_313 : vec3<f32> = x_13.x_Lut2D_Params;
  u_xlat4 = (vec3<f32>(x_309.x, x_309.y, x_309.z) * vec3<f32>(x_313.z, x_313.z, x_313.z));
  let x_317 : f32 = u_xlat4.x;
  u_xlat4.x = floor(x_317);
  let x_321 : f32 = u_xlat0.x;
  let x_323 : f32 = x_13.x_Lut2D_Params.z;
  let x_326 : f32 = u_xlat4.x;
  u_xlat0.x = ((x_321 * x_323) + -(x_326));
  let x_331 : vec3<f32> = x_13.x_Lut2D_Params;
  let x_334 : vec2<f32> = (vec2<f32>(x_331.x, x_331.y) * vec2<f32>(0.5f, 0.5f));
  let x_335 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_334.x, x_334.y, x_335.z, x_335.w);
  let x_337 : vec3<f32> = u_xlat4;
  let x_340 : vec3<f32> = x_13.x_Lut2D_Params;
  let x_343 : vec4<f32> = u_xlat1;
  let x_345 : vec2<f32> = ((vec2<f32>(x_337.y, x_337.z) * vec2<f32>(x_340.x, x_340.y)) + vec2<f32>(x_343.x, x_343.y));
  let x_346 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_346.x, x_345.x, x_345.y, x_346.w);
  let x_349 : f32 = u_xlat4.x;
  let x_351 : f32 = x_13.x_Lut2D_Params.y;
  let x_354 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_349 * x_351) + x_354);
  let x_358 : f32 = x_13.x_Lut2D_Params.y;
  u_xlat2.x = x_358;
  u_xlat2.y = 0.0f;
  let x_361 : vec4<f32> = u_xlat1;
  let x_363 : vec4<f32> = u_xlat2;
  let x_365 : vec2<f32> = (vec2<f32>(x_361.x, x_361.z) + vec2<f32>(x_363.x, x_363.y));
  let x_366 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_365.x, x_365.y, x_366.z);
  let x_373 : vec4<f32> = u_xlat1;
  let x_375 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_373.x, x_373.z));
  let x_376 : vec3<f32> = vec3<f32>(x_375.x, x_375.y, x_375.z);
  let x_377 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_376.x, x_376.y, x_376.z, x_377.w);
  let x_382 : vec3<f32> = u_xlat4;
  let x_384 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_382.x, x_382.y));
  u_xlat4 = vec3<f32>(x_384.x, x_384.y, x_384.z);
  let x_386 : vec4<f32> = u_xlat1;
  let x_389 : vec3<f32> = u_xlat4;
  u_xlat4 = (-(vec3<f32>(x_386.x, x_386.y, x_386.z)) + x_389);
  let x_391 : vec4<f32> = u_xlat0;
  let x_393 : vec3<f32> = u_xlat4;
  let x_395 : vec4<f32> = u_xlat1;
  let x_397 : vec3<f32> = ((vec3<f32>(x_391.x, x_391.x, x_391.x) * x_393) + vec3<f32>(x_395.x, x_395.y, x_395.z));
  let x_398 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_397.x, x_397.y, x_397.z, x_398.w);
  let x_400 : vec4<f32> = u_xlat0;
  let x_404 : vec3<f32> = (vec3<f32>(x_400.x, x_400.y, x_400.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_405 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_404.x, x_404.y, x_404.z, x_405.w);
  let x_407 : vec4<f32> = u_xlat1;
  let x_411 : vec3<f32> = (vec3<f32>(x_407.x, x_407.y, x_407.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_412 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_411.x, x_411.y, x_411.z, x_412.w);
  let x_414 : vec4<f32> = u_xlat1;
  let x_417 : vec3<f32> = max(abs(vec3<f32>(x_414.x, x_414.y, x_414.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_418 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_417.x, x_417.y, x_417.z, x_418.w);
  let x_420 : vec4<f32> = u_xlat1;
  let x_422 : vec3<f32> = log2(vec3<f32>(x_420.x, x_420.y, x_420.z));
  let x_423 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_422.x, x_422.y, x_422.z, x_423.w);
  let x_425 : vec4<f32> = u_xlat1;
  let x_429 : vec3<f32> = (vec3<f32>(x_425.x, x_425.y, x_425.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_430 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_429.x, x_429.y, x_429.z, x_430.w);
  let x_432 : vec4<f32> = u_xlat1;
  let x_434 : vec3<f32> = exp2(vec3<f32>(x_432.x, x_432.y, x_432.z));
  let x_435 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_434.x, x_434.y, x_434.z, x_435.w);
  let x_437 : vec4<f32> = u_xlat0;
  let x_441 : vec3<f32> = (vec3<f32>(x_437.x, x_437.y, x_437.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_442 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_441.x, x_441.y, x_441.z, x_442.w);
  let x_446 : vec4<f32> = u_xlat0;
  let x_448 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_446.x, x_446.y, x_446.z, x_446.x));
  u_xlatb0 = vec3<bool>(x_448.x, x_448.y, x_448.z);
  let x_451 : bool = u_xlatb0.x;
  if (x_451) {
    let x_456 : f32 = u_xlat2.x;
    x_452 = x_456;
  } else {
    let x_459 : f32 = u_xlat1.x;
    x_452 = x_459;
  }
  let x_460 : f32 = x_452;
  u_xlat0.x = x_460;
  let x_463 : bool = u_xlatb0.y;
  if (x_463) {
    let x_468 : f32 = u_xlat2.y;
    x_464 = x_468;
  } else {
    let x_471 : f32 = u_xlat1.y;
    x_464 = x_471;
  }
  let x_472 : f32 = x_464;
  u_xlat0.y = x_472;
  let x_475 : bool = u_xlatb0.z;
  if (x_475) {
    let x_480 : f32 = u_xlat2.z;
    x_476 = x_480;
  } else {
    let x_483 : f32 = u_xlat1.z;
    x_476 = x_483;
  }
  let x_484 : f32 = x_476;
  u_xlat0.z = x_484;
  let x_486 : vec4<f32> = u_xlat0;
  let x_489 : vec3<f32> = max(abs(vec3<f32>(x_486.x, x_486.y, x_486.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_490 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_489.x, x_489.y, x_489.z, x_490.w);
  let x_492 : vec4<f32> = u_xlat1;
  let x_494 : vec3<f32> = log2(vec3<f32>(x_492.x, x_492.y, x_492.z));
  let x_495 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_494.x, x_494.y, x_494.z, x_495.w);
  let x_497 : vec4<f32> = u_xlat1;
  let x_499 : vec3<f32> = (vec3<f32>(x_497.x, x_497.y, x_497.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_500 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_499.x, x_499.y, x_499.z, x_500.w);
  let x_502 : vec4<f32> = u_xlat1;
  let x_504 : vec3<f32> = exp2(vec3<f32>(x_502.x, x_502.y, x_502.z));
  let x_505 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_504.x, x_504.y, x_504.z, x_505.w);
  let x_507 : vec4<f32> = u_xlat1;
  let x_510 : vec3<f32> = ((vec3<f32>(x_507.x, x_507.y, x_507.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_511 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_510.x, x_510.y, x_510.z, x_511.w);
  let x_513 : vec4<f32> = u_xlat0;
  let x_515 : vec3<f32> = (vec3<f32>(x_513.x, x_513.y, x_513.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_516 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_515.x, x_515.y, x_515.z, x_516.w);
  let x_518 : vec4<f32> = u_xlat0;
  let x_520 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_518.x, x_518.y, x_518.z, x_518.x));
  u_xlatb0 = vec3<bool>(x_520.x, x_520.y, x_520.z);
  let x_523 : bool = u_xlatb0.x;
  if (x_523) {
    let x_528 : f32 = u_xlat2.x;
    x_524 = x_528;
  } else {
    let x_531 : f32 = u_xlat1.x;
    x_524 = x_531;
  }
  let x_532 : f32 = x_524;
  u_xlat0.x = x_532;
  let x_535 : bool = u_xlatb0.y;
  if (x_535) {
    let x_540 : f32 = u_xlat2.y;
    x_536 = x_540;
  } else {
    let x_543 : f32 = u_xlat1.y;
    x_536 = x_543;
  }
  let x_544 : f32 = x_536;
  u_xlat0.y = x_544;
  let x_547 : bool = u_xlatb0.z;
  if (x_547) {
    let x_552 : f32 = u_xlat2.z;
    x_548 = x_552;
  } else {
    let x_555 : f32 = u_xlat1.z;
    x_548 = x_555;
  }
  let x_556 : f32 = x_548;
  u_xlat0.z = x_556;
  let x_558 : vec2<f32> = vs_TEXCOORD0;
  let x_561 : vec4<f32> = x_13.x_Dithering_Coords;
  let x_565 : vec4<f32> = x_13.x_Dithering_Coords;
  let x_567 : vec2<f32> = ((x_558 * vec2<f32>(x_561.x, x_561.y)) + vec2<f32>(x_565.z, x_565.w));
  let x_568 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_567.x, x_567.y, x_568.z, x_568.w);
  let x_576 : vec4<f32> = u_xlat1;
  let x_578 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_576.x, x_576.y));
  u_xlat12 = x_578.w;
  let x_580 : f32 = u_xlat12;
  u_xlat12 = ((x_580 * 2.0f) + -1.0f);
  let x_584 : f32 = u_xlat12;
  u_xlat1.x = (-(abs(x_584)) + 1.0f);
  let x_589 : f32 = u_xlat12;
  u_xlat12 = ((x_589 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_593 : f32 = u_xlat12;
  u_xlat12 = clamp(x_593, 0.0f, 1.0f);
  let x_595 : f32 = u_xlat12;
  u_xlat12 = ((x_595 * 2.0f) + -1.0f);
  let x_599 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_599);
  let x_603 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_603) + 1.0f);
  let x_607 : f32 = u_xlat12;
  let x_609 : f32 = u_xlat1.x;
  u_xlat12 = (x_607 * x_609);
  let x_611 : f32 = u_xlat12;
  let x_616 : vec4<f32> = u_xlat0;
  let x_618 : vec3<f32> = ((vec3<f32>(x_611, x_611, x_611) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_616.x, x_616.y, x_616.z));
  let x_619 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_618.x, x_618.y, x_618.z, x_619.w);
  let x_621 : vec4<f32> = u_xlat0;
  let x_623 : vec3<f32> = (vec3<f32>(x_621.x, x_621.y, x_621.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_624 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_623.x, x_623.y, x_623.z, x_624.w);
  let x_626 : vec4<f32> = u_xlat1;
  let x_628 : vec3<f32> = (vec3<f32>(x_626.x, x_626.y, x_626.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_629 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_628.x, x_628.y, x_628.z, x_629.w);
  let x_631 : vec4<f32> = u_xlat1;
  let x_634 : vec3<f32> = max(abs(vec3<f32>(x_631.x, x_631.y, x_631.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_635 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_634.x, x_634.y, x_634.z, x_635.w);
  let x_637 : vec4<f32> = u_xlat1;
  let x_639 : vec3<f32> = log2(vec3<f32>(x_637.x, x_637.y, x_637.z));
  let x_640 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_639.x, x_639.y, x_639.z, x_640.w);
  let x_642 : vec4<f32> = u_xlat1;
  let x_644 : vec3<f32> = (vec3<f32>(x_642.x, x_642.y, x_642.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_645 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_644.x, x_644.y, x_644.z, x_645.w);
  let x_647 : vec4<f32> = u_xlat1;
  let x_649 : vec3<f32> = exp2(vec3<f32>(x_647.x, x_647.y, x_647.z));
  let x_650 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_649.x, x_649.y, x_649.z, x_650.w);
  let x_652 : vec4<f32> = u_xlat0;
  let x_654 : vec3<f32> = (vec3<f32>(x_652.x, x_652.y, x_652.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_655 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_654.x, x_654.y, x_654.z, x_655.w);
  let x_657 : vec4<f32> = u_xlat0;
  let x_659 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_657.x, x_657.y, x_657.z, x_657.x));
  u_xlatb0 = vec3<bool>(x_659.x, x_659.y, x_659.z);
  let x_662 : bool = u_xlatb0.x;
  if (x_662) {
    let x_667 : f32 = u_xlat2.x;
    x_663 = x_667;
  } else {
    let x_670 : f32 = u_xlat1.x;
    x_663 = x_670;
  }
  let x_671 : f32 = x_663;
  SV_Target0.x = x_671;
  let x_674 : bool = u_xlatb0.y;
  if (x_674) {
    let x_679 : f32 = u_xlat2.y;
    x_675 = x_679;
  } else {
    let x_682 : f32 = u_xlat1.y;
    x_675 = x_682;
  }
  let x_683 : f32 = x_675;
  SV_Target0.y = x_683;
  let x_686 : bool = u_xlatb0.z;
  if (x_686) {
    let x_691 : f32 = u_xlat2.z;
    x_687 = x_691;
  } else {
    let x_694 : f32 = u_xlat1.z;
    x_687 = x_694;
  }
  let x_695 : f32 = x_687;
  SV_Target0.z = x_695;
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

