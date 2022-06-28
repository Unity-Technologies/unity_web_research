struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_BloomTex_TexelSize : vec4<f32>,
  x_Bloom_DirtTileOffset : vec4<f32>,
  x_Bloom_Settings : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_Bloom_Color : vec3<f32>,
  x_ChromaticAberration_Amount : f32,
  x_Lut2D_Params : vec3<f32>,
  x_PostExposure : f32,
  x_Grain_Params1 : vec2<f32>,
  @size(8)
  padding_2 : u32,
  x_Grain_Params2 : vec4<f32>,
  x_LumaInAlpha : f32,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat7 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_55 : PGlobals;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(5) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(12) var sampler_ChromaticAberration_SpectralLut : sampler;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(3) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_BloomTex : sampler;

@group(0) @binding(4) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_Bloom_DirtTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(7) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(14) var sampler_GrainTex : sampler;

var<private> u_xlat22 : f32;

var<private> u_xlat8 : vec3<f32>;

@group(0) @binding(6) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(13) var sampler_Lut2D : sampler;

var<private> u_xlat15 : vec2<f32>;

var<private> u_xlatb1 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_24 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_23);
  u_xlat0.x = x_24.x;
  let x_31 : vec2<f32> = vs_TEXCOORD0;
  u_xlat1 = ((vec4<f32>(x_31.x, x_31.y, x_31.x, x_31.y) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_42 : vec4<f32> = u_xlat1;
  let x_44 : vec4<f32> = u_xlat1;
  u_xlat7.x = dot(vec2<f32>(x_42.z, x_42.w), vec2<f32>(x_44.z, x_44.w));
  let x_48 : vec3<f32> = u_xlat7;
  let x_50 : vec4<f32> = u_xlat1;
  u_xlat1 = (vec4<f32>(x_48.x, x_48.x, x_48.x, x_48.x) * x_50);
  let x_52 : vec4<f32> = u_xlat1;
  let x_60 : f32 = x_55.x_ChromaticAberration_Amount;
  let x_62 : f32 = x_55.x_ChromaticAberration_Amount;
  let x_64 : f32 = x_55.x_ChromaticAberration_Amount;
  let x_66 : f32 = x_55.x_ChromaticAberration_Amount;
  let x_67 : vec4<f32> = vec4<f32>(x_60, x_62, x_64, x_66);
  u_xlat1 = (x_52 * vec4<f32>(x_67.x, x_67.y, x_67.z, x_67.w));
  let x_83 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(0.166666672f, 0.0f), 0.0f);
  let x_84 : vec3<f32> = vec3<f32>(x_83.x, x_83.y, x_83.z);
  let x_85 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_84.x, x_84.y, x_84.z, x_85.w);
  let x_93 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(0.5f, 0.0f), 0.0f);
  let x_94 : vec3<f32> = vec3<f32>(x_93.x, x_93.y, x_93.z);
  let x_95 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_94.x, x_94.y, x_94.z, x_95.w);
  let x_103 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(0.833333313f, 0.0f), 0.0f);
  let x_104 : vec3<f32> = vec3<f32>(x_103.x, x_103.y, x_103.z);
  let x_105 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_104.x, x_104.y, x_104.z, x_105.w);
  let x_107 : vec2<f32> = vs_TEXCOORD0;
  let x_108 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_107.x, x_107.y, x_108.z);
  let x_110 : vec3<f32> = u_xlat7;
  let x_115 : vec2<f32> = clamp(vec2<f32>(x_110.x, x_110.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_116 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_115.x, x_115.y, x_116.z);
  let x_118 : vec3<f32> = u_xlat7;
  let x_122 : f32 = x_55.x_RenderViewportScaleFactor;
  let x_124 : vec2<f32> = (vec2<f32>(x_118.x, x_118.y) * vec2<f32>(x_122, x_122));
  let x_125 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_124.x, x_124.y, x_125.z);
  let x_133 : vec3<f32> = u_xlat7;
  let x_135 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_133.x, x_133.y), 0.0f);
  u_xlat5 = x_135;
  let x_136 : vec4<f32> = u_xlat1;
  let x_141 : vec2<f32> = vs_TEXCOORD0;
  u_xlat1 = ((x_136 * vec4<f32>(-0.333333343f, -0.333333343f, -0.666666687f, -0.666666687f)) + vec4<f32>(x_141.x, x_141.y, x_141.x, x_141.y));
  let x_144 : vec4<f32> = u_xlat1;
  u_xlat1 = clamp(x_144, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_148 : vec4<f32> = u_xlat1;
  let x_150 : f32 = x_55.x_RenderViewportScaleFactor;
  u_xlat1 = (x_148 * vec4<f32>(x_150, x_150, x_150, x_150));
  let x_157 : vec4<f32> = u_xlat1;
  let x_159 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_157.x, x_157.y), 0.0f);
  u_xlat6 = x_159;
  let x_163 : vec4<f32> = u_xlat1;
  let x_165 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_163.z, x_163.w), 0.0f);
  u_xlat1 = x_165;
  u_xlat2.w = 1.0f;
  u_xlat3.w = 1.0f;
  let x_169 : vec4<f32> = u_xlat3;
  let x_170 : vec4<f32> = u_xlat6;
  u_xlat6 = (x_169 * x_170);
  let x_172 : vec4<f32> = u_xlat5;
  let x_173 : vec4<f32> = u_xlat2;
  let x_175 : vec4<f32> = u_xlat6;
  u_xlat5 = ((x_172 * x_173) + x_175);
  u_xlat4.w = 1.0f;
  let x_178 : vec4<f32> = u_xlat1;
  let x_179 : vec4<f32> = u_xlat4;
  let x_181 : vec4<f32> = u_xlat5;
  u_xlat1 = ((x_178 * x_179) + x_181);
  let x_183 : vec4<f32> = u_xlat2;
  let x_185 : vec4<f32> = u_xlat3;
  u_xlat7 = (vec3<f32>(x_183.x, x_183.y, x_183.z) + vec3<f32>(x_185.x, x_185.y, x_185.z));
  let x_188 : vec4<f32> = u_xlat4;
  let x_190 : vec3<f32> = u_xlat7;
  let x_191 : vec3<f32> = (vec3<f32>(x_188.x, x_188.y, x_188.z) + x_190);
  let x_192 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_191.x, x_191.y, x_191.z, x_192.w);
  u_xlat2.w = 3.0f;
  let x_196 : vec4<f32> = u_xlat1;
  let x_197 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_196 / x_197);
  let x_199 : vec4<f32> = u_xlat0;
  let x_201 : vec4<f32> = u_xlat1;
  let x_203 : vec3<f32> = (vec3<f32>(x_199.x, x_199.x, x_199.x) * vec3<f32>(x_201.x, x_201.y, x_201.z));
  let x_204 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_203.x, x_203.y, x_203.z, x_204.w);
  let x_209 : vec4<f32> = x_55.x_BloomTex_TexelSize;
  u_xlat0 = (vec4<f32>(x_209.x, x_209.y, x_209.x, x_209.y) * vec4<f32>(-1.0f, -1.0f, 1.0f, 1.0f));
  let x_215 : f32 = x_55.x_Bloom_Settings.x;
  u_xlat2.x = (x_215 * 0.5f);
  let x_218 : vec4<f32> = u_xlat0;
  let x_220 : vec4<f32> = u_xlat2;
  let x_223 : vec2<f32> = vs_TEXCOORD0;
  u_xlat3 = ((vec4<f32>(x_218.x, x_218.y, x_218.z, x_218.y) * vec4<f32>(x_220.x, x_220.x, x_220.x, x_220.x)) + vec4<f32>(x_223.x, x_223.y, x_223.x, x_223.y));
  let x_226 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_226, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_230 : vec4<f32> = u_xlat3;
  let x_232 : f32 = x_55.x_RenderViewportScaleFactor;
  u_xlat3 = (x_230 * vec4<f32>(x_232, x_232, x_232, x_232));
  let x_240 : vec4<f32> = u_xlat3;
  let x_242 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_240.x, x_240.y));
  u_xlat4 = x_242;
  let x_246 : vec4<f32> = u_xlat3;
  let x_248 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_246.z, x_246.w));
  u_xlat3 = x_248;
  let x_249 : vec4<f32> = u_xlat3;
  let x_250 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_249 + x_250);
  let x_252 : vec4<f32> = u_xlat0;
  let x_254 : vec4<f32> = u_xlat2;
  let x_257 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = ((vec4<f32>(x_252.x, x_252.w, x_252.z, x_252.w) * vec4<f32>(x_254.x, x_254.x, x_254.x, x_254.x)) + vec4<f32>(x_257.x, x_257.y, x_257.x, x_257.y));
  let x_260 : vec4<f32> = u_xlat0;
  u_xlat0 = clamp(x_260, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_264 : vec4<f32> = u_xlat0;
  let x_266 : f32 = x_55.x_RenderViewportScaleFactor;
  u_xlat0 = (x_264 * vec4<f32>(x_266, x_266, x_266, x_266));
  let x_272 : vec4<f32> = u_xlat0;
  let x_274 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_272.x, x_272.y));
  u_xlat2 = x_274;
  let x_275 : vec4<f32> = u_xlat2;
  let x_276 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_275 + x_276);
  let x_281 : vec4<f32> = u_xlat0;
  let x_283 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_281.z, x_281.w));
  u_xlat0 = x_283;
  let x_284 : vec4<f32> = u_xlat0;
  let x_285 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_284 + x_285);
  let x_287 : vec4<f32> = u_xlat0;
  let x_290 : vec3<f32> = x_55.x_Bloom_Settings;
  u_xlat0 = (x_287 * vec4<f32>(x_290.y, x_290.y, x_290.y, x_290.y));
  let x_293 : vec2<f32> = vs_TEXCOORD0;
  let x_296 : vec4<f32> = x_55.x_Bloom_DirtTileOffset;
  let x_300 : vec4<f32> = x_55.x_Bloom_DirtTileOffset;
  let x_302 : vec2<f32> = ((x_293 * vec2<f32>(x_296.x, x_296.y)) + vec2<f32>(x_300.z, x_300.w));
  let x_303 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_302.x, x_302.y, x_303.z, x_303.w);
  let x_310 : vec4<f32> = u_xlat2;
  let x_312 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_310.x, x_310.y));
  let x_313 : vec3<f32> = vec3<f32>(x_312.x, x_312.y, x_312.z);
  let x_314 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_313.x, x_313.y, x_313.z, x_314.w);
  let x_316 : vec4<f32> = u_xlat0;
  let x_320 : vec3<f32> = (vec3<f32>(x_316.x, x_316.y, x_316.z) * vec3<f32>(0.25f, 0.25f, 0.25f));
  let x_321 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_320.x, x_320.y, x_320.z, x_321.w);
  let x_323 : vec4<f32> = u_xlat2;
  let x_326 : vec3<f32> = x_55.x_Bloom_Settings;
  let x_328 : vec3<f32> = (vec3<f32>(x_323.x, x_323.y, x_323.z) * vec3<f32>(x_326.z, x_326.z, x_326.z));
  let x_329 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_328.x, x_328.y, x_328.z, x_329.w);
  let x_331 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_331 * vec4<f32>(0.25f, 0.25f, 0.25f, 1.0f));
  let x_334 : vec4<f32> = u_xlat0;
  let x_338 : vec3<f32> = x_55.x_Bloom_Color;
  let x_339 : vec3<f32> = (vec3<f32>(x_334.x, x_334.y, x_334.z) * x_338);
  let x_340 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_339.x, x_339.y, x_339.z, x_340.w);
  let x_343 : f32 = u_xlat0.w;
  u_xlat4.w = (x_343 * 0.25f);
  let x_346 : vec4<f32> = u_xlat1;
  let x_347 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_346 + x_347);
  let x_349 : vec4<f32> = u_xlat3;
  let x_351 : vec4<f32> = u_xlat2;
  let x_353 : vec3<f32> = (vec3<f32>(x_349.x, x_349.y, x_349.z) * vec3<f32>(x_351.x, x_351.y, x_351.z));
  let x_354 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_353.x, x_353.y, x_353.z, x_354.w);
  u_xlat1.w = 0.0f;
  let x_357 : vec4<f32> = u_xlat0;
  let x_358 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_357 + x_358);
  let x_361 : vec2<f32> = vs_TEXCOORD1;
  let x_364 : vec4<f32> = x_55.x_Grain_Params2;
  let x_368 : vec4<f32> = x_55.x_Grain_Params2;
  let x_370 : vec2<f32> = ((x_361 * vec2<f32>(x_364.x, x_364.y)) + vec2<f32>(x_368.z, x_368.w));
  let x_371 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_370.x, x_370.y, x_371.z, x_371.w);
  let x_378 : vec4<f32> = u_xlat1;
  let x_380 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_378.x, x_378.y));
  let x_381 : vec3<f32> = vec3<f32>(x_380.x, x_380.y, x_380.z);
  let x_382 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_381.x, x_381.y, x_381.z, x_382.w);
  let x_384 : vec4<f32> = u_xlat0;
  let x_385 : vec3<f32> = vec3<f32>(x_384.x, x_384.y, x_384.z);
  let x_386 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_385.x, x_385.y, x_385.z, x_386.w);
  let x_388 : vec4<f32> = u_xlat2;
  let x_392 : vec3<f32> = clamp(vec3<f32>(x_388.x, x_388.y, x_388.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_393 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_392.x, x_392.y, x_392.z, x_393.w);
  let x_396 : vec4<f32> = u_xlat2;
  u_xlat22 = dot(vec3<f32>(x_396.x, x_396.y, x_396.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_403 : f32 = u_xlat22;
  u_xlat22 = sqrt(x_403);
  let x_407 : f32 = x_55.x_Grain_Params1.x;
  let x_408 : f32 = u_xlat22;
  u_xlat22 = ((x_407 * -(x_408)) + 1.0f);
  let x_412 : vec4<f32> = u_xlat0;
  let x_414 : vec4<f32> = u_xlat1;
  let x_416 : vec3<f32> = (vec3<f32>(x_412.x, x_412.y, x_412.z) * vec3<f32>(x_414.x, x_414.y, x_414.z));
  let x_417 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_416.x, x_416.y, x_416.z, x_417.w);
  let x_419 : vec4<f32> = u_xlat1;
  let x_423 : f32 = x_55.x_Grain_Params1.y;
  let x_425 : f32 = x_55.x_Grain_Params1.y;
  let x_427 : f32 = x_55.x_Grain_Params1.y;
  let x_429 : vec3<f32> = (vec3<f32>(x_419.x, x_419.y, x_419.z) * vec3<f32>(x_423, x_425, x_427));
  let x_430 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_429.x, x_429.y, x_429.z, x_430.w);
  let x_432 : vec4<f32> = u_xlat1;
  let x_434 : f32 = u_xlat22;
  let x_437 : vec4<f32> = u_xlat0;
  let x_439 : vec3<f32> = ((vec3<f32>(x_432.x, x_432.y, x_432.z) * vec3<f32>(x_434, x_434, x_434)) + vec3<f32>(x_437.x, x_437.y, x_437.z));
  let x_440 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_439.x, x_439.y, x_439.z, x_440.w);
  let x_442 : vec4<f32> = u_xlat0;
  let x_445 : f32 = x_55.x_PostExposure;
  let x_447 : f32 = x_55.x_PostExposure;
  let x_449 : f32 = x_55.x_PostExposure;
  let x_451 : f32 = x_55.x_PostExposure;
  let x_452 : vec4<f32> = vec4<f32>(x_445, x_447, x_449, x_451);
  u_xlat0 = (x_442 * vec4<f32>(x_452.x, x_452.y, x_452.z, x_452.w));
  let x_459 : vec4<f32> = u_xlat0;
  let x_466 : vec3<f32> = ((vec3<f32>(x_459.z, x_459.x, x_459.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_467 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_466.x, x_466.y, x_466.z, x_467.w);
  let x_469 : vec4<f32> = u_xlat1;
  let x_471 : vec3<f32> = log2(vec3<f32>(x_469.x, x_469.y, x_469.z));
  let x_472 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_471.x, x_471.y, x_471.z, x_472.w);
  let x_474 : vec4<f32> = u_xlat1;
  let x_481 : vec3<f32> = ((vec3<f32>(x_474.x, x_474.y, x_474.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_482 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_481.x, x_481.y, x_481.z, x_482.w);
  let x_484 : vec4<f32> = u_xlat1;
  let x_488 : vec3<f32> = clamp(vec3<f32>(x_484.x, x_484.y, x_484.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_489 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_488.x, x_488.y, x_488.z, x_489.w);
  let x_492 : vec4<f32> = u_xlat1;
  let x_496 : vec3<f32> = x_55.x_Lut2D_Params;
  u_xlat8 = (vec3<f32>(x_492.x, x_492.y, x_492.z) * vec3<f32>(x_496.z, x_496.z, x_496.z));
  let x_500 : f32 = u_xlat8.x;
  u_xlat8.x = floor(x_500);
  let x_504 : vec3<f32> = x_55.x_Lut2D_Params;
  let x_507 : vec2<f32> = (vec2<f32>(x_504.x, x_504.y) * vec2<f32>(0.5f, 0.5f));
  let x_508 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_507.x, x_507.y, x_508.z, x_508.w);
  let x_510 : vec3<f32> = u_xlat8;
  let x_513 : vec3<f32> = x_55.x_Lut2D_Params;
  let x_516 : vec4<f32> = u_xlat2;
  let x_518 : vec2<f32> = ((vec2<f32>(x_510.y, x_510.z) * vec2<f32>(x_513.x, x_513.y)) + vec2<f32>(x_516.x, x_516.y));
  let x_519 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_519.x, x_518.x, x_518.y, x_519.w);
  let x_522 : f32 = u_xlat8.x;
  let x_524 : f32 = x_55.x_Lut2D_Params.y;
  let x_527 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_522 * x_524) + x_527);
  let x_535 : vec4<f32> = u_xlat2;
  let x_537 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_535.x, x_535.z));
  let x_538 : vec3<f32> = vec3<f32>(x_537.x, x_537.y, x_537.z);
  let x_539 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_538.x, x_538.y, x_538.z, x_539.w);
  let x_542 : f32 = x_55.x_Lut2D_Params.y;
  u_xlat4.x = x_542;
  u_xlat4.y = 0.0f;
  let x_547 : vec4<f32> = u_xlat2;
  let x_549 : vec4<f32> = u_xlat4;
  u_xlat15 = (vec2<f32>(x_547.x, x_547.z) + vec2<f32>(x_549.x, x_549.y));
  let x_555 : vec2<f32> = u_xlat15;
  let x_556 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_555);
  let x_557 : vec3<f32> = vec3<f32>(x_556.x, x_556.y, x_556.z);
  let x_558 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_557.x, x_557.y, x_557.z, x_558.w);
  let x_561 : f32 = u_xlat1.x;
  let x_564 : f32 = x_55.x_Lut2D_Params.z;
  let x_567 : f32 = u_xlat8.x;
  u_xlat1.x = ((x_561 * x_564) + -(x_567));
  let x_571 : vec4<f32> = u_xlat3;
  let x_574 : vec4<f32> = u_xlat2;
  u_xlat8 = (-(vec3<f32>(x_571.x, x_571.y, x_571.z)) + vec3<f32>(x_574.x, x_574.y, x_574.z));
  let x_577 : vec4<f32> = u_xlat1;
  let x_579 : vec3<f32> = u_xlat8;
  let x_581 : vec4<f32> = u_xlat3;
  let x_583 : vec3<f32> = ((vec3<f32>(x_577.x, x_577.x, x_577.x) * x_579) + vec3<f32>(x_581.x, x_581.y, x_581.z));
  let x_584 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_583.x, x_583.y, x_583.z, x_584.w);
  let x_591 : f32 = x_55.x_LumaInAlpha;
  u_xlatb1 = (0.5f < x_591);
  let x_593 : bool = u_xlatb1;
  if (x_593) {
    let x_596 : vec4<f32> = u_xlat0;
    let x_597 : vec3<f32> = vec3<f32>(x_596.x, x_596.y, x_596.z);
    let x_598 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_597.x, x_597.y, x_597.z, x_598.w);
    let x_600 : vec4<f32> = u_xlat1;
    let x_604 : vec3<f32> = clamp(vec3<f32>(x_600.x, x_600.y, x_600.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_605 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_604.x, x_604.y, x_604.z, x_605.w);
    let x_607 : vec4<f32> = u_xlat1;
    u_xlat0.w = dot(vec3<f32>(x_607.x, x_607.y, x_607.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_613 : vec4<f32> = u_xlat0;
  SV_Target0 = x_613;
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

