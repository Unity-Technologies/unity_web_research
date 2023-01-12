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
  x_PostExposure : f32,
  x_Grain_Params1 : vec2<f32>,
  @size(8)
  padding_3 : u32,
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
  var u_xlat4 : vec3<f32>;
  var u_xlatb0 : vec3<bool>;
  var x_488 : f32;
  var x_500 : f32;
  var x_512 : f32;
  var u_xlat12 : f32;
  var x_637 : f32;
  var x_649 : f32;
  var x_661 : f32;
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
  let x_287 : f32 = x_14.x_PostExposure;
  let x_289 : f32 = x_14.x_PostExposure;
  let x_291 : f32 = x_14.x_PostExposure;
  let x_293 : f32 = x_14.x_PostExposure;
  let x_294 : vec4<f32> = vec4<f32>(x_287, x_289, x_291, x_293);
  u_xlat0 = (x_284 * vec4<f32>(x_294.x, x_294.y, x_294.z, x_294.w));
  let x_301 : vec4<f32> = u_xlat0;
  let x_308 : vec3<f32> = ((vec3<f32>(x_301.z, x_301.x, x_301.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_309 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_308.x, x_308.y, x_308.z, x_309.w);
  let x_314 : f32 = u_xlat0.w;
  SV_Target0.w = x_314;
  let x_317 : vec4<f32> = u_xlat0;
  let x_319 : vec3<f32> = log2(vec3<f32>(x_317.x, x_317.y, x_317.z));
  let x_320 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_319.x, x_319.y, x_319.z, x_320.w);
  let x_322 : vec4<f32> = u_xlat0;
  let x_329 : vec3<f32> = ((vec3<f32>(x_322.x, x_322.y, x_322.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_330 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_329.x, x_329.y, x_329.z, x_330.w);
  let x_332 : vec4<f32> = u_xlat0;
  let x_336 : vec3<f32> = clamp(vec3<f32>(x_332.x, x_332.y, x_332.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_337 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_336.x, x_336.y, x_336.z, x_337.w);
  let x_340 : vec4<f32> = u_xlat0;
  let x_344 : vec3<f32> = x_14.x_Lut2D_Params;
  u_xlat4 = (vec3<f32>(x_340.x, x_340.y, x_340.z) * vec3<f32>(x_344.z, x_344.z, x_344.z));
  let x_348 : f32 = u_xlat4.x;
  u_xlat4.x = floor(x_348);
  let x_352 : f32 = u_xlat0.x;
  let x_355 : f32 = x_14.x_Lut2D_Params.z;
  let x_358 : f32 = u_xlat4.x;
  u_xlat0.x = ((x_352 * x_355) + -(x_358));
  let x_363 : vec3<f32> = x_14.x_Lut2D_Params;
  let x_366 : vec2<f32> = (vec2<f32>(x_363.x, x_363.y) * vec2<f32>(0.5f, 0.5f));
  let x_367 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_366.x, x_366.y, x_367.z, x_367.w);
  let x_369 : vec3<f32> = u_xlat4;
  let x_372 : vec3<f32> = x_14.x_Lut2D_Params;
  let x_375 : vec4<f32> = u_xlat1;
  let x_377 : vec2<f32> = ((vec2<f32>(x_369.y, x_369.z) * vec2<f32>(x_372.x, x_372.y)) + vec2<f32>(x_375.x, x_375.y));
  let x_378 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_378.x, x_377.x, x_377.y, x_378.w);
  let x_381 : f32 = u_xlat4.x;
  let x_383 : f32 = x_14.x_Lut2D_Params.y;
  let x_386 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_381 * x_383) + x_386);
  let x_390 : f32 = x_14.x_Lut2D_Params.y;
  u_xlat2.x = x_390;
  u_xlat2.y = 0.0f;
  let x_393 : vec4<f32> = u_xlat1;
  let x_395 : vec4<f32> = u_xlat2;
  let x_397 : vec2<f32> = (vec2<f32>(x_393.x, x_393.z) + vec2<f32>(x_395.x, x_395.y));
  let x_398 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_397.x, x_397.y, x_398.z);
  let x_405 : vec4<f32> = u_xlat1;
  let x_407 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_405.x, x_405.z));
  let x_408 : vec3<f32> = vec3<f32>(x_407.x, x_407.y, x_407.z);
  let x_409 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_408.x, x_408.y, x_408.z, x_409.w);
  let x_414 : vec3<f32> = u_xlat4;
  let x_416 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_414.x, x_414.y));
  u_xlat4 = vec3<f32>(x_416.x, x_416.y, x_416.z);
  let x_418 : vec4<f32> = u_xlat1;
  let x_421 : vec3<f32> = u_xlat4;
  u_xlat4 = (-(vec3<f32>(x_418.x, x_418.y, x_418.z)) + x_421);
  let x_423 : vec4<f32> = u_xlat0;
  let x_425 : vec3<f32> = u_xlat4;
  let x_427 : vec4<f32> = u_xlat1;
  let x_429 : vec3<f32> = ((vec3<f32>(x_423.x, x_423.x, x_423.x) * x_425) + vec3<f32>(x_427.x, x_427.y, x_427.z));
  let x_430 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_429.x, x_429.y, x_429.z, x_430.w);
  let x_432 : vec4<f32> = u_xlat0;
  let x_437 : vec3<f32> = max(abs(vec3<f32>(x_432.x, x_432.y, x_432.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_438 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_437.x, x_437.y, x_437.z, x_438.w);
  let x_440 : vec4<f32> = u_xlat1;
  let x_442 : vec3<f32> = log2(vec3<f32>(x_440.x, x_440.y, x_440.z));
  let x_443 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_442.x, x_442.y, x_442.z, x_443.w);
  let x_445 : vec4<f32> = u_xlat1;
  let x_449 : vec3<f32> = (vec3<f32>(x_445.x, x_445.y, x_445.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_450 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_449.x, x_449.y, x_449.z, x_450.w);
  let x_452 : vec4<f32> = u_xlat1;
  let x_454 : vec3<f32> = exp2(vec3<f32>(x_452.x, x_452.y, x_452.z));
  let x_455 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_454.x, x_454.y, x_454.z, x_455.w);
  let x_457 : vec4<f32> = u_xlat1;
  let x_464 : vec3<f32> = ((vec3<f32>(x_457.x, x_457.y, x_457.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_465 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_464.x, x_464.y, x_464.z, x_465.w);
  let x_467 : vec4<f32> = u_xlat0;
  let x_471 : vec3<f32> = (vec3<f32>(x_467.x, x_467.y, x_467.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_472 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_471.x, x_471.y, x_471.z, x_472.w);
  let x_480 : vec4<f32> = u_xlat0;
  let x_483 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_480.x, x_480.y, x_480.z, x_480.x));
  u_xlatb0 = vec3<bool>(x_483.x, x_483.y, x_483.z);
  let x_487 : bool = u_xlatb0.x;
  if (x_487) {
    let x_492 : f32 = u_xlat2.x;
    x_488 = x_492;
  } else {
    let x_495 : f32 = u_xlat1.x;
    x_488 = x_495;
  }
  let x_496 : f32 = x_488;
  u_xlat0.x = x_496;
  let x_499 : bool = u_xlatb0.y;
  if (x_499) {
    let x_504 : f32 = u_xlat2.y;
    x_500 = x_504;
  } else {
    let x_507 : f32 = u_xlat1.y;
    x_500 = x_507;
  }
  let x_508 : f32 = x_500;
  u_xlat0.y = x_508;
  let x_511 : bool = u_xlatb0.z;
  if (x_511) {
    let x_516 : f32 = u_xlat2.z;
    x_512 = x_516;
  } else {
    let x_519 : f32 = u_xlat1.z;
    x_512 = x_519;
  }
  let x_520 : f32 = x_512;
  u_xlat0.z = x_520;
  let x_522 : vec2<f32> = vs_TEXCOORD0;
  let x_525 : vec4<f32> = x_14.x_Dithering_Coords;
  let x_529 : vec4<f32> = x_14.x_Dithering_Coords;
  let x_531 : vec2<f32> = ((x_522 * vec2<f32>(x_525.x, x_525.y)) + vec2<f32>(x_529.z, x_529.w));
  let x_532 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_531.x, x_531.y, x_532.z, x_532.w);
  let x_540 : vec4<f32> = u_xlat1;
  let x_542 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_540.x, x_540.y));
  u_xlat12 = x_542.w;
  let x_544 : f32 = u_xlat12;
  u_xlat12 = ((x_544 * 2.0f) + -1.0f);
  let x_548 : f32 = u_xlat12;
  u_xlat1.x = (-(abs(x_548)) + 1.0f);
  let x_553 : f32 = u_xlat12;
  u_xlat12 = ((x_553 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_557 : f32 = u_xlat12;
  u_xlat12 = clamp(x_557, 0.0f, 1.0f);
  let x_559 : f32 = u_xlat12;
  u_xlat12 = ((x_559 * 2.0f) + -1.0f);
  let x_563 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_563);
  let x_567 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_567) + 1.0f);
  let x_571 : f32 = u_xlat12;
  let x_573 : f32 = u_xlat1.x;
  u_xlat12 = (x_571 * x_573);
  let x_575 : f32 = u_xlat12;
  let x_580 : vec4<f32> = u_xlat0;
  let x_582 : vec3<f32> = ((vec3<f32>(x_575, x_575, x_575) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_580.x, x_580.y, x_580.z));
  let x_583 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_582.x, x_582.y, x_582.z, x_583.w);
  let x_585 : vec4<f32> = u_xlat0;
  let x_589 : vec3<f32> = (vec3<f32>(x_585.x, x_585.y, x_585.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_590 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_589.x, x_589.y, x_589.z, x_590.w);
  let x_592 : vec4<f32> = u_xlat1;
  let x_596 : vec3<f32> = (vec3<f32>(x_592.x, x_592.y, x_592.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_597 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_596.x, x_596.y, x_596.z, x_597.w);
  let x_599 : vec4<f32> = u_xlat1;
  let x_602 : vec3<f32> = max(abs(vec3<f32>(x_599.x, x_599.y, x_599.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_603 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_602.x, x_602.y, x_602.z, x_603.w);
  let x_605 : vec4<f32> = u_xlat1;
  let x_607 : vec3<f32> = log2(vec3<f32>(x_605.x, x_605.y, x_605.z));
  let x_608 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_607.x, x_607.y, x_607.z, x_608.w);
  let x_610 : vec4<f32> = u_xlat1;
  let x_614 : vec3<f32> = (vec3<f32>(x_610.x, x_610.y, x_610.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_615 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_614.x, x_614.y, x_614.z, x_615.w);
  let x_617 : vec4<f32> = u_xlat1;
  let x_619 : vec3<f32> = exp2(vec3<f32>(x_617.x, x_617.y, x_617.z));
  let x_620 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_619.x, x_619.y, x_619.z, x_620.w);
  let x_622 : vec4<f32> = u_xlat0;
  let x_626 : vec3<f32> = (vec3<f32>(x_622.x, x_622.y, x_622.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_627 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_626.x, x_626.y, x_626.z, x_627.w);
  let x_631 : vec4<f32> = u_xlat0;
  let x_633 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_631.x, x_631.y, x_631.z, x_631.x));
  u_xlatb0 = vec3<bool>(x_633.x, x_633.y, x_633.z);
  let x_636 : bool = u_xlatb0.x;
  if (x_636) {
    let x_641 : f32 = u_xlat2.x;
    x_637 = x_641;
  } else {
    let x_644 : f32 = u_xlat1.x;
    x_637 = x_644;
  }
  let x_645 : f32 = x_637;
  SV_Target0.x = x_645;
  let x_648 : bool = u_xlatb0.y;
  if (x_648) {
    let x_653 : f32 = u_xlat2.y;
    x_649 = x_653;
  } else {
    let x_656 : f32 = u_xlat1.y;
    x_649 = x_656;
  }
  let x_657 : f32 = x_649;
  SV_Target0.y = x_657;
  let x_660 : bool = u_xlatb0.z;
  if (x_660) {
    let x_665 : f32 = u_xlat2.z;
    x_661 = x_665;
  } else {
    let x_668 : f32 = u_xlat1.z;
    x_661 = x_668;
  }
  let x_669 : f32 = x_661;
  SV_Target0.z = x_669;
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

