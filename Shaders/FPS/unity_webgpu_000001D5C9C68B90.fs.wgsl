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
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(0) var<uniform> x_39 : PGlobals;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(6) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(12) var sampler_ChromaticAberration_SpectralLut : sampler;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(4) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_BloomTex : sampler;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(3) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_AutoExposureTex : sampler;

@group(0) @binding(5) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_Bloom_DirtTex : sampler;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlat18 : f32;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_DitheringTex : sampler;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_535 : f32;
  var x_548 : f32;
  var x_561 : f32;
  var x_685 : f32;
  var x_697 : f32;
  var x_709 : f32;
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
  let x_477 : vec3<f32> = max(abs(vec3<f32>(x_472.x, x_472.y, x_472.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_478 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_477.x, x_477.y, x_477.z, x_478.w);
  let x_480 : vec4<f32> = u_xlat1;
  let x_482 : vec3<f32> = log2(vec3<f32>(x_480.x, x_480.y, x_480.z));
  let x_483 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_482.x, x_482.y, x_482.z, x_483.w);
  let x_485 : vec4<f32> = u_xlat1;
  let x_489 : vec3<f32> = (vec3<f32>(x_485.x, x_485.y, x_485.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_490 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_489.x, x_489.y, x_489.z, x_490.w);
  let x_492 : vec4<f32> = u_xlat1;
  let x_494 : vec3<f32> = exp2(vec3<f32>(x_492.x, x_492.y, x_492.z));
  let x_495 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_494.x, x_494.y, x_494.z, x_495.w);
  let x_497 : vec4<f32> = u_xlat1;
  let x_504 : vec3<f32> = ((vec3<f32>(x_497.x, x_497.y, x_497.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_505 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_504.x, x_504.y, x_504.z, x_505.w);
  let x_507 : vec4<f32> = u_xlat0;
  let x_511 : vec3<f32> = (vec3<f32>(x_507.x, x_507.y, x_507.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_512 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_511.x, x_511.y, x_511.z, x_512.w);
  let x_520 : vec4<f32> = u_xlat0;
  let x_523 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_520.x, x_520.y, x_520.z, x_520.x));
  u_xlatb0 = vec3<bool>(x_523.x, x_523.y, x_523.z);
  let x_528 : f32 = u_xlat0.w;
  SV_Target0.w = x_528;
  let x_533 : bool = u_xlatb0.x;
  if (x_533) {
    let x_539 : f32 = u_xlat2.x;
    x_535 = x_539;
  } else {
    let x_542 : f32 = u_xlat1.x;
    x_535 = x_542;
  }
  let x_543 : f32 = x_535;
  u_xlat0.x = x_543;
  let x_547 : bool = u_xlatb0.y;
  if (x_547) {
    let x_552 : f32 = u_xlat2.y;
    x_548 = x_552;
  } else {
    let x_555 : f32 = u_xlat1.y;
    x_548 = x_555;
  }
  let x_556 : f32 = x_548;
  u_xlat0.y = x_556;
  let x_560 : bool = u_xlatb0.z;
  if (x_560) {
    let x_565 : f32 = u_xlat2.z;
    x_561 = x_565;
  } else {
    let x_568 : f32 = u_xlat1.z;
    x_561 = x_568;
  }
  let x_569 : f32 = x_561;
  u_xlat0.z = x_569;
  let x_571 : vec2<f32> = vs_TEXCOORD0;
  let x_574 : vec4<f32> = x_39.x_Dithering_Coords;
  let x_578 : vec4<f32> = x_39.x_Dithering_Coords;
  let x_580 : vec2<f32> = ((x_571 * vec2<f32>(x_574.x, x_574.y)) + vec2<f32>(x_578.z, x_578.w));
  let x_581 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_580.x, x_580.y, x_581.z, x_581.w);
  let x_589 : vec4<f32> = u_xlat1;
  let x_591 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_589.x, x_589.y));
  u_xlat18 = x_591.w;
  let x_593 : f32 = u_xlat18;
  u_xlat18 = ((x_593 * 2.0f) + -1.0f);
  let x_596 : f32 = u_xlat18;
  u_xlat1.x = (-(abs(x_596)) + 1.0f);
  let x_601 : f32 = u_xlat18;
  u_xlat18 = ((x_601 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_605 : f32 = u_xlat18;
  u_xlat18 = clamp(x_605, 0.0f, 1.0f);
  let x_607 : f32 = u_xlat18;
  u_xlat18 = ((x_607 * 2.0f) + -1.0f);
  let x_611 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_611);
  let x_615 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_615) + 1.0f);
  let x_619 : f32 = u_xlat18;
  let x_621 : f32 = u_xlat1.x;
  u_xlat18 = (x_619 * x_621);
  let x_623 : f32 = u_xlat18;
  let x_628 : vec4<f32> = u_xlat0;
  let x_630 : vec3<f32> = ((vec3<f32>(x_623, x_623, x_623) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_628.x, x_628.y, x_628.z));
  let x_631 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_630.x, x_630.y, x_630.z, x_631.w);
  let x_633 : vec4<f32> = u_xlat0;
  let x_637 : vec3<f32> = (vec3<f32>(x_633.x, x_633.y, x_633.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_638 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_637.x, x_637.y, x_637.z, x_638.w);
  let x_640 : vec4<f32> = u_xlat1;
  let x_644 : vec3<f32> = (vec3<f32>(x_640.x, x_640.y, x_640.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_645 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_644.x, x_644.y, x_644.z, x_645.w);
  let x_647 : vec4<f32> = u_xlat1;
  let x_650 : vec3<f32> = max(abs(vec3<f32>(x_647.x, x_647.y, x_647.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_651 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_650.x, x_650.y, x_650.z, x_651.w);
  let x_653 : vec4<f32> = u_xlat1;
  let x_655 : vec3<f32> = log2(vec3<f32>(x_653.x, x_653.y, x_653.z));
  let x_656 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_655.x, x_655.y, x_655.z, x_656.w);
  let x_658 : vec4<f32> = u_xlat1;
  let x_662 : vec3<f32> = (vec3<f32>(x_658.x, x_658.y, x_658.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_663 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_662.x, x_662.y, x_662.z, x_663.w);
  let x_665 : vec4<f32> = u_xlat1;
  let x_667 : vec3<f32> = exp2(vec3<f32>(x_665.x, x_665.y, x_665.z));
  let x_668 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_667.x, x_667.y, x_667.z, x_668.w);
  let x_670 : vec4<f32> = u_xlat0;
  let x_674 : vec3<f32> = (vec3<f32>(x_670.x, x_670.y, x_670.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_675 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_674.x, x_674.y, x_674.z, x_675.w);
  let x_679 : vec4<f32> = u_xlat0;
  let x_681 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_679.x, x_679.y, x_679.z, x_679.x));
  u_xlatb0 = vec3<bool>(x_681.x, x_681.y, x_681.z);
  let x_684 : bool = u_xlatb0.x;
  if (x_684) {
    let x_689 : f32 = u_xlat2.x;
    x_685 = x_689;
  } else {
    let x_692 : f32 = u_xlat1.x;
    x_685 = x_692;
  }
  let x_693 : f32 = x_685;
  SV_Target0.x = x_693;
  let x_696 : bool = u_xlatb0.y;
  if (x_696) {
    let x_701 : f32 = u_xlat2.y;
    x_697 = x_701;
  } else {
    let x_704 : f32 = u_xlat1.y;
    x_697 = x_704;
  }
  let x_705 : f32 = x_697;
  SV_Target0.y = x_705;
  let x_708 : bool = u_xlatb0.z;
  if (x_708) {
    let x_713 : f32 = u_xlat2.z;
    x_709 = x_713;
  } else {
    let x_716 : f32 = u_xlat1.z;
    x_709 = x_716;
  }
  let x_717 : f32 = x_709;
  SV_Target0.z = x_717;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

