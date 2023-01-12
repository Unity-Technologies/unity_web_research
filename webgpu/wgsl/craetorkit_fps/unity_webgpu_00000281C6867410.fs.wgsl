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
  x_ChromaticAberration_Amount : f32,
  x_Grain_Params1 : vec2<f32>,
  @size(8)
  padding_2 : u32,
  x_Grain_Params2 : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_39 : PGlobals;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

@group(0) @binding(5) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(12) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(3) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_BloomTex : sampler;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_AutoExposureTex : sampler;

@group(0) @binding(4) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_Bloom_DirtTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(6) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(13) var sampler_GrainTex : sampler;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(0) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_DitheringTex : sampler;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlatb0 : vec3<bool>;
  var x_613 : f32;
  var x_625 : f32;
  var x_638 : f32;
  var u_xlat18 : f32;
  var x_762 : f32;
  var x_774 : f32;
  var x_786 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = ((vec4<f32>(x_13.x, x_13.y, x_13.x, x_13.y) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_22 : vec4<f32> = u_xlat0;
  let x_24 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec2<f32>(x_22.z, x_22.w), vec2<f32>(x_24.z, x_24.w));
  let x_31 : vec4<f32> = u_xlat0;
  let x_32 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_31 * vec4<f32>(x_32.x, x_32.x, x_32.x, x_32.x));
  let x_35 : vec4<f32> = u_xlat0;
  let x_44 : f32 = x_39.x_ChromaticAberration_Amount;
  let x_46 : f32 = x_39.x_ChromaticAberration_Amount;
  let x_48 : f32 = x_39.x_ChromaticAberration_Amount;
  let x_50 : f32 = x_39.x_ChromaticAberration_Amount;
  let x_51 : vec4<f32> = vec4<f32>(x_44, x_46, x_48, x_50);
  u_xlat0 = (x_35 * vec4<f32>(x_51.x, x_51.y, x_51.z, x_51.w));
  let x_58 : vec4<f32> = u_xlat0;
  let x_63 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = ((x_58 * vec4<f32>(-0.333333343f, -0.333333343f, -0.666666687f, -0.666666687f)) + vec4<f32>(x_63.x, x_63.y, x_63.x, x_63.y));
  let x_66 : vec4<f32> = u_xlat0;
  u_xlat0 = clamp(x_66, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_72 : vec4<f32> = u_xlat0;
  let x_75 : f32 = x_39.x_RenderViewportScaleFactor;
  u_xlat0 = (x_72 * vec4<f32>(x_75, x_75, x_75, x_75));
  let x_88 : vec4<f32> = u_xlat0;
  let x_90 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_88.z, x_88.w), 0.0f);
  u_xlat1 = x_90;
  let x_94 : vec4<f32> = u_xlat0;
  let x_96 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_94.x, x_94.y), 0.0f);
  u_xlat0 = x_96;
  u_xlat2.w = 1.0f;
  let x_107 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(0.5f, 0.0f), 0.0f);
  let x_108 : vec3<f32> = vec3<f32>(x_107.x, x_107.y, x_107.z);
  let x_109 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_108.x, x_108.y, x_108.z, x_109.w);
  let x_111 : vec4<f32> = u_xlat0;
  let x_112 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_111 * x_112);
  let x_115 : vec2<f32> = vs_TEXCOORD0;
  let x_116 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_115.x, x_115.y, x_116.z, x_116.w);
  let x_118 : vec4<f32> = u_xlat3;
  let x_122 : vec2<f32> = clamp(vec2<f32>(x_118.x, x_118.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_123 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_122.x, x_122.y, x_123.z, x_123.w);
  let x_125 : vec4<f32> = u_xlat3;
  let x_128 : f32 = x_39.x_RenderViewportScaleFactor;
  let x_130 : vec2<f32> = (vec2<f32>(x_125.x, x_125.y) * vec2<f32>(x_128, x_128));
  let x_131 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_130.x, x_130.y, x_131.z, x_131.w);
  let x_137 : vec4<f32> = u_xlat3;
  let x_139 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_137.x, x_137.y), 0.0f);
  u_xlat4 = x_139;
  let x_145 : vec4<f32> = u_xlat3;
  let x_147 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_145.x, x_145.y));
  u_xlat3 = x_147;
  u_xlat5.w = 1.0f;
  let x_155 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(0.166666672f, 0.0f), 0.0f);
  let x_156 : vec3<f32> = vec3<f32>(x_155.x, x_155.y, x_155.z);
  let x_157 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_156.x, x_156.y, x_156.z, x_157.w);
  let x_159 : vec4<f32> = u_xlat2;
  let x_161 : vec4<f32> = u_xlat5;
  let x_163 : vec3<f32> = (vec3<f32>(x_159.x, x_159.y, x_159.z) + vec3<f32>(x_161.x, x_161.y, x_161.z));
  let x_164 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_163.x, x_163.y, x_163.z, x_164.w);
  let x_166 : vec4<f32> = u_xlat4;
  let x_167 : vec4<f32> = u_xlat5;
  let x_169 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_166 * x_167) + x_169);
  u_xlat4.w = 1.0f;
  let x_177 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(0.833333313f, 0.0f), 0.0f);
  let x_178 : vec3<f32> = vec3<f32>(x_177.x, x_177.y, x_177.z);
  let x_179 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_178.x, x_178.y, x_178.z, x_179.w);
  let x_181 : vec4<f32> = u_xlat2;
  let x_183 : vec4<f32> = u_xlat4;
  let x_185 : vec3<f32> = (vec3<f32>(x_181.x, x_181.y, x_181.z) + vec3<f32>(x_183.x, x_183.y, x_183.z));
  let x_186 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_185.x, x_185.y, x_185.z, x_186.w);
  let x_188 : vec4<f32> = u_xlat1;
  let x_189 : vec4<f32> = u_xlat4;
  let x_191 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_188 * x_189) + x_191);
  u_xlat2.w = 3.0f;
  let x_195 : vec4<f32> = u_xlat0;
  let x_196 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_195 / x_196);
  let x_203 : vec2<f32> = vs_TEXCOORD0;
  let x_204 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_203);
  u_xlat1.x = x_204.x;
  let x_207 : vec4<f32> = u_xlat0;
  let x_209 : vec4<f32> = u_xlat1;
  let x_211 : vec3<f32> = (vec3<f32>(x_207.x, x_207.y, x_207.z) * vec3<f32>(x_209.x, x_209.x, x_209.x));
  let x_212 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_211.x, x_211.y, x_211.z, x_212.w);
  let x_217 : vec4<f32> = x_39.x_BloomTex_TexelSize;
  u_xlat1 = (vec4<f32>(x_217.x, x_217.y, x_217.x, x_217.y) * vec4<f32>(1.0f, 1.0f, -1.0f, 0.0f));
  let x_221 : vec4<f32> = u_xlat1;
  let x_227 : vec3<f32> = x_39.x_Bloom_Settings;
  let x_230 : vec2<f32> = vs_TEXCOORD0;
  u_xlat2 = ((-(vec4<f32>(x_221.x, x_221.y, x_221.w, x_221.y)) * vec4<f32>(x_227.x, x_227.x, x_227.x, x_227.x)) + vec4<f32>(x_230.x, x_230.y, x_230.x, x_230.y));
  let x_233 : vec4<f32> = u_xlat2;
  u_xlat2 = clamp(x_233, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_237 : vec4<f32> = u_xlat2;
  let x_239 : f32 = x_39.x_RenderViewportScaleFactor;
  u_xlat2 = (x_237 * vec4<f32>(x_239, x_239, x_239, x_239));
  let x_245 : vec4<f32> = u_xlat2;
  let x_247 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_245.x, x_245.y));
  u_xlat4 = x_247;
  let x_251 : vec4<f32> = u_xlat2;
  let x_253 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_251.z, x_251.w));
  u_xlat2 = x_253;
  let x_254 : vec4<f32> = u_xlat2;
  let x_256 : vec4<f32> = u_xlat4;
  u_xlat2 = ((x_254 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_256);
  let x_258 : vec4<f32> = u_xlat1;
  let x_262 : vec3<f32> = x_39.x_Bloom_Settings;
  let x_265 : vec2<f32> = vs_TEXCOORD0;
  let x_266 : vec2<f32> = ((-(vec2<f32>(x_258.z, x_258.y)) * vec2<f32>(x_262.x, x_262.x)) + x_265);
  let x_267 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_266.x, x_266.y, x_267.z, x_267.w);
  let x_269 : vec4<f32> = u_xlat4;
  let x_273 : vec2<f32> = clamp(vec2<f32>(x_269.x, x_269.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_274 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_273.x, x_273.y, x_274.z, x_274.w);
  let x_276 : vec4<f32> = u_xlat4;
  let x_279 : f32 = x_39.x_RenderViewportScaleFactor;
  let x_281 : vec2<f32> = (vec2<f32>(x_276.x, x_276.y) * vec2<f32>(x_279, x_279));
  let x_282 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_281.x, x_281.y, x_282.z, x_282.w);
  let x_287 : vec4<f32> = u_xlat4;
  let x_289 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_287.x, x_287.y));
  u_xlat4 = x_289;
  let x_290 : vec4<f32> = u_xlat2;
  let x_291 : vec4<f32> = u_xlat4;
  u_xlat2 = (x_290 + x_291);
  let x_293 : vec4<f32> = u_xlat1;
  let x_296 : vec3<f32> = x_39.x_Bloom_Settings;
  let x_299 : vec2<f32> = vs_TEXCOORD0;
  u_xlat4 = ((vec4<f32>(x_293.z, x_293.w, x_293.x, x_293.w) * vec4<f32>(x_296.x, x_296.x, x_296.x, x_296.x)) + vec4<f32>(x_299.x, x_299.y, x_299.x, x_299.y));
  let x_302 : vec4<f32> = u_xlat4;
  u_xlat4 = clamp(x_302, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_306 : vec4<f32> = u_xlat4;
  let x_308 : f32 = x_39.x_RenderViewportScaleFactor;
  u_xlat4 = (x_306 * vec4<f32>(x_308, x_308, x_308, x_308));
  let x_314 : vec4<f32> = u_xlat4;
  let x_316 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_314.x, x_314.y));
  u_xlat5 = x_316;
  let x_320 : vec4<f32> = u_xlat4;
  let x_322 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_320.z, x_320.w));
  u_xlat4 = x_322;
  let x_323 : vec4<f32> = u_xlat5;
  let x_325 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_323 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_325);
  let x_327 : vec4<f32> = u_xlat3;
  let x_331 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_327 * vec4<f32>(4.0f, 4.0f, 4.0f, 4.0f)) + x_331);
  let x_333 : vec4<f32> = u_xlat4;
  let x_335 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_333 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_335);
  let x_337 : vec4<f32> = u_xlat1;
  let x_340 : vec3<f32> = x_39.x_Bloom_Settings;
  let x_343 : vec2<f32> = vs_TEXCOORD0;
  u_xlat3 = ((vec4<f32>(x_337.z, x_337.y, x_337.w, x_337.y) * vec4<f32>(x_340.x, x_340.x, x_340.x, x_340.x)) + vec4<f32>(x_343.x, x_343.y, x_343.x, x_343.y));
  let x_346 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_346, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_350 : vec4<f32> = u_xlat1;
  let x_353 : vec3<f32> = x_39.x_Bloom_Settings;
  let x_356 : vec2<f32> = vs_TEXCOORD0;
  let x_357 : vec2<f32> = ((vec2<f32>(x_350.x, x_350.y) * vec2<f32>(x_353.x, x_353.x)) + x_356);
  let x_358 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_357.x, x_357.y, x_358.z, x_358.w);
  let x_360 : vec4<f32> = u_xlat1;
  let x_364 : vec2<f32> = clamp(vec2<f32>(x_360.x, x_360.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_365 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_364.x, x_364.y, x_365.z, x_365.w);
  let x_367 : vec4<f32> = u_xlat1;
  let x_370 : f32 = x_39.x_RenderViewportScaleFactor;
  let x_372 : vec2<f32> = (vec2<f32>(x_367.x, x_367.y) * vec2<f32>(x_370, x_370));
  let x_373 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_372.x, x_372.y, x_373.z, x_373.w);
  let x_378 : vec4<f32> = u_xlat1;
  let x_380 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_378.x, x_378.y));
  u_xlat1 = x_380;
  let x_381 : vec4<f32> = u_xlat3;
  let x_383 : f32 = x_39.x_RenderViewportScaleFactor;
  u_xlat3 = (x_381 * vec4<f32>(x_383, x_383, x_383, x_383));
  let x_389 : vec4<f32> = u_xlat3;
  let x_391 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_389.x, x_389.y));
  u_xlat4 = x_391;
  let x_395 : vec4<f32> = u_xlat3;
  let x_397 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_395.z, x_395.w));
  u_xlat3 = x_397;
  let x_398 : vec4<f32> = u_xlat2;
  let x_399 : vec4<f32> = u_xlat4;
  u_xlat2 = (x_398 + x_399);
  let x_401 : vec4<f32> = u_xlat3;
  let x_403 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_401 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_403);
  let x_405 : vec4<f32> = u_xlat1;
  let x_406 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_405 + x_406);
  let x_408 : vec4<f32> = u_xlat1;
  let x_410 : vec3<f32> = x_39.x_Bloom_Settings;
  u_xlat1 = (x_408 * vec4<f32>(x_410.y, x_410.y, x_410.y, x_410.y));
  let x_413 : vec4<f32> = u_xlat1;
  u_xlat2 = (x_413 * vec4<f32>(0.0625f, 0.0625f, 0.0625f, 1.0f));
  let x_417 : vec4<f32> = u_xlat1;
  u_xlat1 = (x_417 * vec4<f32>(0.0625f, 0.0625f, 0.0625f, 0.0625f));
  let x_420 : vec4<f32> = u_xlat2;
  let x_424 : vec3<f32> = x_39.x_Bloom_Color;
  let x_425 : vec3<f32> = (vec3<f32>(x_420.x, x_420.y, x_420.z) * x_424);
  let x_426 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_425.x, x_425.y, x_425.z, x_426.w);
  let x_429 : f32 = u_xlat2.w;
  u_xlat3.w = (x_429 * 0.0625f);
  let x_432 : vec4<f32> = u_xlat0;
  let x_433 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_432 + x_433);
  let x_435 : vec2<f32> = vs_TEXCOORD0;
  let x_438 : vec4<f32> = x_39.x_Bloom_DirtTileOffset;
  let x_442 : vec4<f32> = x_39.x_Bloom_DirtTileOffset;
  let x_444 : vec2<f32> = ((x_435 * vec2<f32>(x_438.x, x_438.y)) + vec2<f32>(x_442.z, x_442.w));
  let x_445 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_444.x, x_444.y, x_445.z, x_445.w);
  let x_452 : vec4<f32> = u_xlat2;
  let x_454 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_452.x, x_452.y));
  let x_455 : vec3<f32> = vec3<f32>(x_454.x, x_454.y, x_454.z);
  let x_456 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_455.x, x_455.y, x_455.z, x_456.w);
  let x_458 : vec4<f32> = u_xlat2;
  let x_461 : vec3<f32> = x_39.x_Bloom_Settings;
  let x_463 : vec3<f32> = (vec3<f32>(x_458.x, x_458.y, x_458.z) * vec3<f32>(x_461.z, x_461.z, x_461.z));
  let x_464 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_463.x, x_463.y, x_463.z, x_464.w);
  u_xlat2.w = 0.0f;
  let x_467 : vec4<f32> = u_xlat2;
  let x_468 : vec4<f32> = u_xlat1;
  let x_470 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_467 * x_468) + x_470);
  let x_472 : vec4<f32> = u_xlat0;
  let x_473 : vec3<f32> = vec3<f32>(x_472.x, x_472.y, x_472.z);
  let x_474 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_473.x, x_473.y, x_473.z, x_474.w);
  let x_476 : vec4<f32> = u_xlat1;
  let x_480 : vec3<f32> = clamp(vec3<f32>(x_476.x, x_476.y, x_476.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_481 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_480.x, x_480.y, x_480.z, x_481.w);
  let x_483 : vec4<f32> = u_xlat1;
  u_xlat1.x = dot(vec3<f32>(x_483.x, x_483.y, x_483.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_492 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_492);
  let x_497 : f32 = x_39.x_Grain_Params1.x;
  let x_499 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_497 * -(x_499)) + 1.0f);
  let x_507 : vec2<f32> = vs_TEXCOORD1;
  let x_510 : vec4<f32> = x_39.x_Grain_Params2;
  let x_514 : vec4<f32> = x_39.x_Grain_Params2;
  let x_516 : vec2<f32> = ((x_507 * vec2<f32>(x_510.x, x_510.y)) + vec2<f32>(x_514.z, x_514.w));
  let x_517 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_516.x, x_516.y, x_517.z);
  let x_524 : vec3<f32> = u_xlat7;
  let x_526 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_524.x, x_524.y));
  u_xlat7 = vec3<f32>(x_526.x, x_526.y, x_526.z);
  let x_528 : vec4<f32> = u_xlat0;
  let x_530 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_528.x, x_528.y, x_528.z) * x_530);
  let x_532 : vec3<f32> = u_xlat7;
  let x_535 : f32 = x_39.x_Grain_Params1.y;
  let x_537 : f32 = x_39.x_Grain_Params1.y;
  let x_539 : f32 = x_39.x_Grain_Params1.y;
  u_xlat7 = (x_532 * vec3<f32>(x_535, x_537, x_539));
  let x_542 : vec3<f32> = u_xlat7;
  let x_543 : vec4<f32> = u_xlat1;
  let x_546 : vec4<f32> = u_xlat0;
  let x_548 : vec3<f32> = ((x_542 * vec3<f32>(x_543.x, x_543.x, x_543.x)) + vec3<f32>(x_546.x, x_546.y, x_546.z));
  let x_549 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_548.x, x_548.y, x_548.z, x_549.w);
  let x_554 : f32 = u_xlat0.w;
  SV_Target0.w = x_554;
  let x_557 : vec4<f32> = u_xlat0;
  let x_562 : vec3<f32> = max(abs(vec3<f32>(x_557.x, x_557.y, x_557.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_563 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_562.x, x_562.y, x_562.z, x_563.w);
  let x_565 : vec4<f32> = u_xlat1;
  let x_567 : vec3<f32> = log2(vec3<f32>(x_565.x, x_565.y, x_565.z));
  let x_568 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_567.x, x_567.y, x_567.z, x_568.w);
  let x_570 : vec4<f32> = u_xlat1;
  let x_574 : vec3<f32> = (vec3<f32>(x_570.x, x_570.y, x_570.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_575 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_574.x, x_574.y, x_574.z, x_575.w);
  let x_577 : vec4<f32> = u_xlat1;
  let x_579 : vec3<f32> = exp2(vec3<f32>(x_577.x, x_577.y, x_577.z));
  let x_580 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_579.x, x_579.y, x_579.z, x_580.w);
  let x_582 : vec4<f32> = u_xlat1;
  let x_589 : vec3<f32> = ((vec3<f32>(x_582.x, x_582.y, x_582.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_590 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_589.x, x_589.y, x_589.z, x_590.w);
  let x_592 : vec4<f32> = u_xlat0;
  let x_596 : vec3<f32> = (vec3<f32>(x_592.x, x_592.y, x_592.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_597 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_596.x, x_596.y, x_596.z, x_597.w);
  let x_605 : vec4<f32> = u_xlat0;
  let x_608 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_605.x, x_605.y, x_605.z, x_605.x));
  u_xlatb0 = vec3<bool>(x_608.x, x_608.y, x_608.z);
  let x_612 : bool = u_xlatb0.x;
  if (x_612) {
    let x_617 : f32 = u_xlat2.x;
    x_613 = x_617;
  } else {
    let x_620 : f32 = u_xlat1.x;
    x_613 = x_620;
  }
  let x_621 : f32 = x_613;
  u_xlat0.x = x_621;
  let x_624 : bool = u_xlatb0.y;
  if (x_624) {
    let x_629 : f32 = u_xlat2.y;
    x_625 = x_629;
  } else {
    let x_632 : f32 = u_xlat1.y;
    x_625 = x_632;
  }
  let x_633 : f32 = x_625;
  u_xlat0.y = x_633;
  let x_637 : bool = u_xlatb0.z;
  if (x_637) {
    let x_642 : f32 = u_xlat2.z;
    x_638 = x_642;
  } else {
    let x_645 : f32 = u_xlat1.z;
    x_638 = x_645;
  }
  let x_646 : f32 = x_638;
  u_xlat0.z = x_646;
  let x_648 : vec2<f32> = vs_TEXCOORD0;
  let x_651 : vec4<f32> = x_39.x_Dithering_Coords;
  let x_655 : vec4<f32> = x_39.x_Dithering_Coords;
  let x_657 : vec2<f32> = ((x_648 * vec2<f32>(x_651.x, x_651.y)) + vec2<f32>(x_655.z, x_655.w));
  let x_658 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_657.x, x_657.y, x_658.z, x_658.w);
  let x_666 : vec4<f32> = u_xlat1;
  let x_668 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_666.x, x_666.y));
  u_xlat18 = x_668.w;
  let x_670 : f32 = u_xlat18;
  u_xlat18 = ((x_670 * 2.0f) + -1.0f);
  let x_673 : f32 = u_xlat18;
  u_xlat1.x = (-(abs(x_673)) + 1.0f);
  let x_678 : f32 = u_xlat18;
  u_xlat18 = ((x_678 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_682 : f32 = u_xlat18;
  u_xlat18 = clamp(x_682, 0.0f, 1.0f);
  let x_684 : f32 = u_xlat18;
  u_xlat18 = ((x_684 * 2.0f) + -1.0f);
  let x_688 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_688);
  let x_692 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_692) + 1.0f);
  let x_696 : f32 = u_xlat18;
  let x_698 : f32 = u_xlat1.x;
  u_xlat18 = (x_696 * x_698);
  let x_700 : f32 = u_xlat18;
  let x_705 : vec4<f32> = u_xlat0;
  let x_707 : vec3<f32> = ((vec3<f32>(x_700, x_700, x_700) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_705.x, x_705.y, x_705.z));
  let x_708 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_707.x, x_707.y, x_707.z, x_708.w);
  let x_710 : vec4<f32> = u_xlat0;
  let x_714 : vec3<f32> = (vec3<f32>(x_710.x, x_710.y, x_710.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_715 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_714.x, x_714.y, x_714.z, x_715.w);
  let x_717 : vec4<f32> = u_xlat1;
  let x_721 : vec3<f32> = (vec3<f32>(x_717.x, x_717.y, x_717.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_722 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_721.x, x_721.y, x_721.z, x_722.w);
  let x_724 : vec4<f32> = u_xlat1;
  let x_727 : vec3<f32> = max(abs(vec3<f32>(x_724.x, x_724.y, x_724.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_728 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_727.x, x_727.y, x_727.z, x_728.w);
  let x_730 : vec4<f32> = u_xlat1;
  let x_732 : vec3<f32> = log2(vec3<f32>(x_730.x, x_730.y, x_730.z));
  let x_733 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_732.x, x_732.y, x_732.z, x_733.w);
  let x_735 : vec4<f32> = u_xlat1;
  let x_739 : vec3<f32> = (vec3<f32>(x_735.x, x_735.y, x_735.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_740 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_739.x, x_739.y, x_739.z, x_740.w);
  let x_742 : vec4<f32> = u_xlat1;
  let x_744 : vec3<f32> = exp2(vec3<f32>(x_742.x, x_742.y, x_742.z));
  let x_745 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_744.x, x_744.y, x_744.z, x_745.w);
  let x_747 : vec4<f32> = u_xlat0;
  let x_751 : vec3<f32> = (vec3<f32>(x_747.x, x_747.y, x_747.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_752 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_751.x, x_751.y, x_751.z, x_752.w);
  let x_756 : vec4<f32> = u_xlat0;
  let x_758 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_756.x, x_756.y, x_756.z, x_756.x));
  u_xlatb0 = vec3<bool>(x_758.x, x_758.y, x_758.z);
  let x_761 : bool = u_xlatb0.x;
  if (x_761) {
    let x_766 : f32 = u_xlat2.x;
    x_762 = x_766;
  } else {
    let x_769 : f32 = u_xlat1.x;
    x_762 = x_769;
  }
  let x_770 : f32 = x_762;
  SV_Target0.x = x_770;
  let x_773 : bool = u_xlatb0.y;
  if (x_773) {
    let x_778 : f32 = u_xlat2.y;
    x_774 = x_778;
  } else {
    let x_781 : f32 = u_xlat1.y;
    x_774 = x_781;
  }
  let x_782 : f32 = x_774;
  SV_Target0.y = x_782;
  let x_785 : bool = u_xlatb0.z;
  if (x_785) {
    let x_790 : f32 = u_xlat2.z;
    x_786 = x_790;
  } else {
    let x_793 : f32 = u_xlat1.z;
    x_786 = x_793;
  }
  let x_794 : f32 = x_786;
  SV_Target0.z = x_794;
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

