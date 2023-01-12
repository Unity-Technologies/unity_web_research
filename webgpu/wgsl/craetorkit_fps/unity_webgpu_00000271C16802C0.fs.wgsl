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
  @size(4)
  padding_3 : u32,
  x_Grain_Params1 : vec2<f32>,
  @size(8)
  padding_4 : u32,
  x_Grain_Params2 : vec4<f32>,
}

@group(1) @binding(0) var<uniform> x_14 : PGlobals;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(3) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_BloomTex : sampler;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_AutoExposureTex : sampler;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(4) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_Bloom_DirtTex : sampler;

@group(0) @binding(6) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(13) var sampler_GrainTex : sampler;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(5) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(12) var sampler_Lut2D : sampler;

@group(0) @binding(0) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_DitheringTex : sampler;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat12 : f32;
  var u_xlatb0 : vec3<bool>;
  var x_356 : f32;
  var x_368 : f32;
  var x_381 : f32;
  var u_xlat4 : vec3<f32>;
  var x_535 : f32;
  var x_547 : f32;
  var x_559 : f32;
  var x_607 : f32;
  var x_619 : f32;
  var x_631 : f32;
  var x_745 : f32;
  var x_757 : f32;
  var x_769 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_19 : vec4<f32> = x_14.x_BloomTex_TexelSize;
  u_xlat0 = (vec4<f32>(x_19.x, x_19.y, x_19.x, x_19.y) * vec4<f32>(-1.0f, -1.0f, 1.0f, 1.0f));
  let x_31 : f32 = x_14.x_Bloom_Settings.x;
  u_xlat1.x = (x_31 * 0.5f);
  let x_37 : vec4<f32> = u_xlat0;
  let x_39 : vec4<f32> = u_xlat1;
  let x_44 : vec2<f32> = vs_TEXCOORD0;
  u_xlat2 = ((vec4<f32>(x_37.x, x_37.y, x_37.z, x_37.y) * vec4<f32>(x_39.x, x_39.x, x_39.x, x_39.x)) + vec4<f32>(x_44.x, x_44.y, x_44.x, x_44.y));
  let x_47 : vec4<f32> = u_xlat2;
  u_xlat2 = clamp(x_47, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_52 : vec4<f32> = u_xlat0;
  let x_54 : vec4<f32> = u_xlat1;
  let x_57 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = ((vec4<f32>(x_52.x, x_52.w, x_52.z, x_52.w) * vec4<f32>(x_54.x, x_54.x, x_54.x, x_54.x)) + vec4<f32>(x_57.x, x_57.y, x_57.x, x_57.y));
  let x_60 : vec4<f32> = u_xlat0;
  u_xlat0 = clamp(x_60, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_64 : vec4<f32> = u_xlat0;
  let x_67 : f32 = x_14.x_RenderViewportScaleFactor;
  u_xlat0 = (x_64 * vec4<f32>(x_67, x_67, x_67, x_67));
  let x_70 : vec4<f32> = u_xlat2;
  let x_72 : f32 = x_14.x_RenderViewportScaleFactor;
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
  let x_118 : vec3<f32> = x_14.x_Bloom_Settings;
  u_xlat0 = (x_115 * vec4<f32>(x_118.y, x_118.y, x_118.y, x_118.y));
  let x_121 : vec4<f32> = u_xlat0;
  u_xlat1 = (x_121 * vec4<f32>(0.25f, 0.25f, 0.25f, 1.0f));
  let x_125 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_125 * vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
  let x_128 : vec4<f32> = u_xlat1;
  let x_132 : vec3<f32> = x_14.x_Bloom_Color;
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
  let x_172 : vec4<f32> = x_14.x_Bloom_DirtTileOffset;
  let x_176 : vec4<f32> = x_14.x_Bloom_DirtTileOffset;
  let x_178 : vec2<f32> = ((x_169 * vec2<f32>(x_172.x, x_172.y)) + vec2<f32>(x_176.z, x_176.w));
  let x_179 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_178.x, x_178.y, x_179.z, x_179.w);
  let x_186 : vec4<f32> = u_xlat2;
  let x_188 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_186.x, x_186.y));
  let x_189 : vec3<f32> = vec3<f32>(x_188.x, x_188.y, x_188.z);
  let x_190 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_189.x, x_189.y, x_189.z, x_190.w);
  let x_192 : vec4<f32> = u_xlat2;
  let x_195 : vec3<f32> = x_14.x_Bloom_Settings;
  let x_197 : vec3<f32> = (vec3<f32>(x_192.x, x_192.y, x_192.z) * vec3<f32>(x_195.z, x_195.z, x_195.z));
  let x_198 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_197.x, x_197.y, x_197.z, x_198.w);
  u_xlat2.w = 0.0f;
  let x_201 : vec4<f32> = u_xlat2;
  let x_202 : vec4<f32> = u_xlat0;
  let x_204 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_201 * x_202) + x_204);
  let x_206 : vec4<f32> = u_xlat0;
  let x_207 : vec3<f32> = vec3<f32>(x_206.x, x_206.y, x_206.z);
  let x_208 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_207.x, x_207.y, x_207.z, x_208.w);
  let x_210 : vec4<f32> = u_xlat1;
  let x_214 : vec3<f32> = clamp(vec3<f32>(x_210.x, x_210.y, x_210.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_215 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_214.x, x_214.y, x_214.z, x_215.w);
  let x_217 : vec4<f32> = u_xlat1;
  u_xlat1.x = dot(vec3<f32>(x_217.x, x_217.y, x_217.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_226 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_226);
  let x_231 : f32 = x_14.x_Grain_Params1.x;
  let x_233 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_231 * -(x_233)) + 1.0f);
  let x_240 : vec2<f32> = vs_TEXCOORD1;
  let x_243 : vec4<f32> = x_14.x_Grain_Params2;
  let x_247 : vec4<f32> = x_14.x_Grain_Params2;
  let x_249 : vec2<f32> = ((x_240 * vec2<f32>(x_243.x, x_243.y)) + vec2<f32>(x_247.z, x_247.w));
  let x_250 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_249.x, x_249.y, x_250.z);
  let x_257 : vec3<f32> = u_xlat5;
  let x_259 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_257.x, x_257.y));
  u_xlat5 = vec3<f32>(x_259.x, x_259.y, x_259.z);
  let x_261 : vec4<f32> = u_xlat0;
  let x_263 : vec3<f32> = u_xlat5;
  u_xlat5 = (vec3<f32>(x_261.x, x_261.y, x_261.z) * x_263);
  let x_265 : vec3<f32> = u_xlat5;
  let x_268 : f32 = x_14.x_Grain_Params1.y;
  let x_270 : f32 = x_14.x_Grain_Params1.y;
  let x_272 : f32 = x_14.x_Grain_Params1.y;
  u_xlat5 = (x_265 * vec3<f32>(x_268, x_270, x_272));
  let x_275 : vec3<f32> = u_xlat5;
  let x_276 : vec4<f32> = u_xlat1;
  let x_279 : vec4<f32> = u_xlat0;
  let x_281 : vec3<f32> = ((x_275 * vec3<f32>(x_276.x, x_276.x, x_276.x)) + vec3<f32>(x_279.x, x_279.y, x_279.z));
  let x_282 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_281.x, x_281.y, x_281.z, x_282.w);
  let x_284 : vec4<f32> = u_xlat0;
  let x_288 : vec3<f32> = clamp(vec3<f32>(x_284.x, x_284.y, x_284.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_289 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_288.x, x_288.y, x_288.z, x_289.w);
  let x_293 : f32 = u_xlat0.w;
  u_xlat12 = x_293;
  let x_294 : f32 = u_xlat12;
  u_xlat12 = clamp(x_294, 0.0f, 1.0f);
  let x_298 : f32 = u_xlat12;
  SV_Target0.w = x_298;
  let x_301 : vec4<f32> = u_xlat0;
  let x_305 : vec3<f32> = max(vec3<f32>(x_301.z, x_301.x, x_301.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_306 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_305.x, x_305.y, x_305.z, x_306.w);
  let x_308 : vec4<f32> = u_xlat1;
  let x_310 : vec3<f32> = log2(vec3<f32>(x_308.x, x_308.y, x_308.z));
  let x_311 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_310.x, x_310.y, x_310.z, x_311.w);
  let x_313 : vec4<f32> = u_xlat1;
  let x_317 : vec3<f32> = (vec3<f32>(x_313.x, x_313.y, x_313.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_318 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_317.x, x_317.y, x_317.z, x_318.w);
  let x_320 : vec4<f32> = u_xlat1;
  let x_322 : vec3<f32> = exp2(vec3<f32>(x_320.x, x_320.y, x_320.z));
  let x_323 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_322.x, x_322.y, x_322.z, x_323.w);
  let x_325 : vec4<f32> = u_xlat1;
  let x_332 : vec3<f32> = ((vec3<f32>(x_325.x, x_325.y, x_325.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_333 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_332.x, x_332.y, x_332.z, x_333.w);
  let x_335 : vec4<f32> = u_xlat0;
  let x_339 : vec3<f32> = (vec3<f32>(x_335.z, x_335.x, x_335.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_340 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_339.x, x_339.y, x_339.z, x_340.w);
  let x_348 : vec4<f32> = u_xlat0;
  let x_351 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_348.z, x_348.x, x_348.y, x_348.z));
  u_xlatb0 = vec3<bool>(x_351.x, x_351.y, x_351.z);
  let x_355 : bool = u_xlatb0.x;
  if (x_355) {
    let x_360 : f32 = u_xlat2.x;
    x_356 = x_360;
  } else {
    let x_363 : f32 = u_xlat1.x;
    x_356 = x_363;
  }
  let x_364 : f32 = x_356;
  u_xlat0.x = x_364;
  let x_367 : bool = u_xlatb0.y;
  if (x_367) {
    let x_372 : f32 = u_xlat2.y;
    x_368 = x_372;
  } else {
    let x_375 : f32 = u_xlat1.y;
    x_368 = x_375;
  }
  let x_376 : f32 = x_368;
  u_xlat0.y = x_376;
  let x_380 : bool = u_xlatb0.z;
  if (x_380) {
    let x_385 : f32 = u_xlat2.z;
    x_381 = x_385;
  } else {
    let x_388 : f32 = u_xlat1.z;
    x_381 = x_388;
  }
  let x_389 : f32 = x_381;
  u_xlat0.z = x_389;
  let x_392 : vec4<f32> = u_xlat0;
  let x_396 : vec3<f32> = x_14.x_Lut2D_Params;
  u_xlat4 = (vec3<f32>(x_392.x, x_392.y, x_392.z) * vec3<f32>(x_396.z, x_396.z, x_396.z));
  let x_400 : f32 = u_xlat4.x;
  u_xlat4.x = floor(x_400);
  let x_404 : f32 = u_xlat0.x;
  let x_406 : f32 = x_14.x_Lut2D_Params.z;
  let x_409 : f32 = u_xlat4.x;
  u_xlat0.x = ((x_404 * x_406) + -(x_409));
  let x_414 : vec3<f32> = x_14.x_Lut2D_Params;
  let x_417 : vec2<f32> = (vec2<f32>(x_414.x, x_414.y) * vec2<f32>(0.5f, 0.5f));
  let x_418 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_417.x, x_417.y, x_418.z, x_418.w);
  let x_420 : vec3<f32> = u_xlat4;
  let x_423 : vec3<f32> = x_14.x_Lut2D_Params;
  let x_426 : vec4<f32> = u_xlat1;
  let x_428 : vec2<f32> = ((vec2<f32>(x_420.y, x_420.z) * vec2<f32>(x_423.x, x_423.y)) + vec2<f32>(x_426.x, x_426.y));
  let x_429 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_429.x, x_428.x, x_428.y, x_429.w);
  let x_432 : f32 = u_xlat4.x;
  let x_434 : f32 = x_14.x_Lut2D_Params.y;
  let x_437 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_432 * x_434) + x_437);
  let x_441 : f32 = x_14.x_Lut2D_Params.y;
  u_xlat2.x = x_441;
  u_xlat2.y = 0.0f;
  let x_444 : vec4<f32> = u_xlat1;
  let x_446 : vec4<f32> = u_xlat2;
  let x_448 : vec2<f32> = (vec2<f32>(x_444.x, x_444.z) + vec2<f32>(x_446.x, x_446.y));
  let x_449 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_448.x, x_448.y, x_449.z);
  let x_456 : vec4<f32> = u_xlat1;
  let x_458 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_456.x, x_456.z));
  let x_459 : vec3<f32> = vec3<f32>(x_458.x, x_458.y, x_458.z);
  let x_460 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_459.x, x_459.y, x_459.z, x_460.w);
  let x_465 : vec3<f32> = u_xlat4;
  let x_467 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_465.x, x_465.y));
  u_xlat4 = vec3<f32>(x_467.x, x_467.y, x_467.z);
  let x_469 : vec4<f32> = u_xlat1;
  let x_472 : vec3<f32> = u_xlat4;
  u_xlat4 = (-(vec3<f32>(x_469.x, x_469.y, x_469.z)) + x_472);
  let x_474 : vec4<f32> = u_xlat0;
  let x_476 : vec3<f32> = u_xlat4;
  let x_478 : vec4<f32> = u_xlat1;
  let x_480 : vec3<f32> = ((vec3<f32>(x_474.x, x_474.x, x_474.x) * x_476) + vec3<f32>(x_478.x, x_478.y, x_478.z));
  let x_481 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_480.x, x_480.y, x_480.z, x_481.w);
  let x_483 : vec4<f32> = u_xlat0;
  let x_487 : vec3<f32> = (vec3<f32>(x_483.x, x_483.y, x_483.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_488 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_487.x, x_487.y, x_487.z, x_488.w);
  let x_490 : vec4<f32> = u_xlat1;
  let x_494 : vec3<f32> = (vec3<f32>(x_490.x, x_490.y, x_490.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_495 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_494.x, x_494.y, x_494.z, x_495.w);
  let x_497 : vec4<f32> = u_xlat1;
  let x_500 : vec3<f32> = max(abs(vec3<f32>(x_497.x, x_497.y, x_497.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_501 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_500.x, x_500.y, x_500.z, x_501.w);
  let x_503 : vec4<f32> = u_xlat1;
  let x_505 : vec3<f32> = log2(vec3<f32>(x_503.x, x_503.y, x_503.z));
  let x_506 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_505.x, x_505.y, x_505.z, x_506.w);
  let x_508 : vec4<f32> = u_xlat1;
  let x_512 : vec3<f32> = (vec3<f32>(x_508.x, x_508.y, x_508.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_513 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_512.x, x_512.y, x_512.z, x_513.w);
  let x_515 : vec4<f32> = u_xlat1;
  let x_517 : vec3<f32> = exp2(vec3<f32>(x_515.x, x_515.y, x_515.z));
  let x_518 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_517.x, x_517.y, x_517.z, x_518.w);
  let x_520 : vec4<f32> = u_xlat0;
  let x_524 : vec3<f32> = (vec3<f32>(x_520.x, x_520.y, x_520.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_525 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_524.x, x_524.y, x_524.z, x_525.w);
  let x_529 : vec4<f32> = u_xlat0;
  let x_531 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_529.x, x_529.y, x_529.z, x_529.x));
  u_xlatb0 = vec3<bool>(x_531.x, x_531.y, x_531.z);
  let x_534 : bool = u_xlatb0.x;
  if (x_534) {
    let x_539 : f32 = u_xlat2.x;
    x_535 = x_539;
  } else {
    let x_542 : f32 = u_xlat1.x;
    x_535 = x_542;
  }
  let x_543 : f32 = x_535;
  u_xlat0.x = x_543;
  let x_546 : bool = u_xlatb0.y;
  if (x_546) {
    let x_551 : f32 = u_xlat2.y;
    x_547 = x_551;
  } else {
    let x_554 : f32 = u_xlat1.y;
    x_547 = x_554;
  }
  let x_555 : f32 = x_547;
  u_xlat0.y = x_555;
  let x_558 : bool = u_xlatb0.z;
  if (x_558) {
    let x_563 : f32 = u_xlat2.z;
    x_559 = x_563;
  } else {
    let x_566 : f32 = u_xlat1.z;
    x_559 = x_566;
  }
  let x_567 : f32 = x_559;
  u_xlat0.z = x_567;
  let x_569 : vec4<f32> = u_xlat0;
  let x_572 : vec3<f32> = max(abs(vec3<f32>(x_569.x, x_569.y, x_569.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_573 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_572.x, x_572.y, x_572.z, x_573.w);
  let x_575 : vec4<f32> = u_xlat1;
  let x_577 : vec3<f32> = log2(vec3<f32>(x_575.x, x_575.y, x_575.z));
  let x_578 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_577.x, x_577.y, x_577.z, x_578.w);
  let x_580 : vec4<f32> = u_xlat1;
  let x_582 : vec3<f32> = (vec3<f32>(x_580.x, x_580.y, x_580.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_583 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_582.x, x_582.y, x_582.z, x_583.w);
  let x_585 : vec4<f32> = u_xlat1;
  let x_587 : vec3<f32> = exp2(vec3<f32>(x_585.x, x_585.y, x_585.z));
  let x_588 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_587.x, x_587.y, x_587.z, x_588.w);
  let x_590 : vec4<f32> = u_xlat1;
  let x_593 : vec3<f32> = ((vec3<f32>(x_590.x, x_590.y, x_590.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_594 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_593.x, x_593.y, x_593.z, x_594.w);
  let x_596 : vec4<f32> = u_xlat0;
  let x_598 : vec3<f32> = (vec3<f32>(x_596.x, x_596.y, x_596.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_599 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_598.x, x_598.y, x_598.z, x_599.w);
  let x_601 : vec4<f32> = u_xlat0;
  let x_603 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_601.x, x_601.y, x_601.z, x_601.x));
  u_xlatb0 = vec3<bool>(x_603.x, x_603.y, x_603.z);
  let x_606 : bool = u_xlatb0.x;
  if (x_606) {
    let x_611 : f32 = u_xlat2.x;
    x_607 = x_611;
  } else {
    let x_614 : f32 = u_xlat1.x;
    x_607 = x_614;
  }
  let x_615 : f32 = x_607;
  u_xlat0.x = x_615;
  let x_618 : bool = u_xlatb0.y;
  if (x_618) {
    let x_623 : f32 = u_xlat2.y;
    x_619 = x_623;
  } else {
    let x_626 : f32 = u_xlat1.y;
    x_619 = x_626;
  }
  let x_627 : f32 = x_619;
  u_xlat0.y = x_627;
  let x_630 : bool = u_xlatb0.z;
  if (x_630) {
    let x_635 : f32 = u_xlat2.z;
    x_631 = x_635;
  } else {
    let x_638 : f32 = u_xlat1.z;
    x_631 = x_638;
  }
  let x_639 : f32 = x_631;
  u_xlat0.z = x_639;
  let x_641 : vec2<f32> = vs_TEXCOORD0;
  let x_644 : vec4<f32> = x_14.x_Dithering_Coords;
  let x_648 : vec4<f32> = x_14.x_Dithering_Coords;
  let x_650 : vec2<f32> = ((x_641 * vec2<f32>(x_644.x, x_644.y)) + vec2<f32>(x_648.z, x_648.w));
  let x_651 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_650.x, x_650.y, x_651.z, x_651.w);
  let x_658 : vec4<f32> = u_xlat1;
  let x_660 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_658.x, x_658.y));
  u_xlat12 = x_660.w;
  let x_662 : f32 = u_xlat12;
  u_xlat12 = ((x_662 * 2.0f) + -1.0f);
  let x_666 : f32 = u_xlat12;
  u_xlat1.x = (-(abs(x_666)) + 1.0f);
  let x_671 : f32 = u_xlat12;
  u_xlat12 = ((x_671 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_675 : f32 = u_xlat12;
  u_xlat12 = clamp(x_675, 0.0f, 1.0f);
  let x_677 : f32 = u_xlat12;
  u_xlat12 = ((x_677 * 2.0f) + -1.0f);
  let x_681 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_681);
  let x_685 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_685) + 1.0f);
  let x_689 : f32 = u_xlat12;
  let x_691 : f32 = u_xlat1.x;
  u_xlat12 = (x_689 * x_691);
  let x_693 : f32 = u_xlat12;
  let x_698 : vec4<f32> = u_xlat0;
  let x_700 : vec3<f32> = ((vec3<f32>(x_693, x_693, x_693) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_698.x, x_698.y, x_698.z));
  let x_701 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_700.x, x_700.y, x_700.z, x_701.w);
  let x_703 : vec4<f32> = u_xlat0;
  let x_705 : vec3<f32> = (vec3<f32>(x_703.x, x_703.y, x_703.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_706 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_705.x, x_705.y, x_705.z, x_706.w);
  let x_708 : vec4<f32> = u_xlat1;
  let x_710 : vec3<f32> = (vec3<f32>(x_708.x, x_708.y, x_708.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_711 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_710.x, x_710.y, x_710.z, x_711.w);
  let x_713 : vec4<f32> = u_xlat1;
  let x_716 : vec3<f32> = max(abs(vec3<f32>(x_713.x, x_713.y, x_713.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_717 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_716.x, x_716.y, x_716.z, x_717.w);
  let x_719 : vec4<f32> = u_xlat1;
  let x_721 : vec3<f32> = log2(vec3<f32>(x_719.x, x_719.y, x_719.z));
  let x_722 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_721.x, x_721.y, x_721.z, x_722.w);
  let x_724 : vec4<f32> = u_xlat1;
  let x_726 : vec3<f32> = (vec3<f32>(x_724.x, x_724.y, x_724.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_727 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_726.x, x_726.y, x_726.z, x_727.w);
  let x_729 : vec4<f32> = u_xlat1;
  let x_731 : vec3<f32> = exp2(vec3<f32>(x_729.x, x_729.y, x_729.z));
  let x_732 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_731.x, x_731.y, x_731.z, x_732.w);
  let x_734 : vec4<f32> = u_xlat0;
  let x_736 : vec3<f32> = (vec3<f32>(x_734.x, x_734.y, x_734.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_737 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_736.x, x_736.y, x_736.z, x_737.w);
  let x_739 : vec4<f32> = u_xlat0;
  let x_741 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_739.x, x_739.y, x_739.z, x_739.x));
  u_xlatb0 = vec3<bool>(x_741.x, x_741.y, x_741.z);
  let x_744 : bool = u_xlatb0.x;
  if (x_744) {
    let x_749 : f32 = u_xlat2.x;
    x_745 = x_749;
  } else {
    let x_752 : f32 = u_xlat1.x;
    x_745 = x_752;
  }
  let x_753 : f32 = x_745;
  SV_Target0.x = x_753;
  let x_756 : bool = u_xlatb0.y;
  if (x_756) {
    let x_761 : f32 = u_xlat2.y;
    x_757 = x_761;
  } else {
    let x_764 : f32 = u_xlat1.y;
    x_757 = x_764;
  }
  let x_765 : f32 = x_757;
  SV_Target0.y = x_765;
  let x_768 : bool = u_xlatb0.z;
  if (x_768) {
    let x_773 : f32 = u_xlat2.z;
    x_769 = x_773;
  } else {
    let x_776 : f32 = u_xlat1.z;
    x_769 = x_776;
  }
  let x_777 : f32 = x_769;
  SV_Target0.z = x_777;
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

