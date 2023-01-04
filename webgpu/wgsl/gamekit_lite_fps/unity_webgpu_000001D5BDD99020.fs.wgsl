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
  x_Lut2D_Params : vec3<f32>,
  x_PostExposure : f32,
  x_Grain_Params1 : vec2<f32>,
  @size(8)
  padding_2 : u32,
  x_Grain_Params2 : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(0) var<uniform> x_39 : PGlobals;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainTex : sampler;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(6) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(14) var sampler_ChromaticAberration_SpectralLut : sampler;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(4) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_BloomTex : sampler;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(3) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_AutoExposureTex : sampler;

@group(0) @binding(5) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(13) var sampler_Bloom_DirtTex : sampler;

var<private> u_xlat7 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(8) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(16) var sampler_GrainTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

@group(0) @binding(7) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(15) var sampler_Lut2D : sampler;

var<private> u_xlatb0 : vec3<bool>;

var<private> u_xlat18 : f32;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_DitheringTex : sampler;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_764 : f32;
  var x_776 : f32;
  var x_788 : f32;
  var x_912 : f32;
  var x_924 : f32;
  var x_936 : f32;
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
  let x_420 : vec3<f32> = (vec3<f32>(x_417.x, x_417.y, x_417.z) * vec3<f32>(0.0625f, 0.0625f, 0.0625f));
  let x_421 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_420.x, x_420.y, x_420.z, x_421.w);
  let x_423 : vec4<f32> = u_xlat2;
  let x_427 : vec3<f32> = x_39.x_Bloom_Color;
  let x_428 : vec3<f32> = (vec3<f32>(x_423.x, x_423.y, x_423.z) * x_427);
  let x_429 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_428.x, x_428.y, x_428.z, x_429.w);
  let x_432 : f32 = u_xlat2.w;
  u_xlat3.w = (x_432 * 0.0625f);
  let x_435 : vec4<f32> = u_xlat0;
  let x_436 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_435 + x_436);
  let x_438 : vec2<f32> = vs_TEXCOORD0;
  let x_441 : vec4<f32> = x_39.x_Bloom_DirtTileOffset;
  let x_445 : vec4<f32> = x_39.x_Bloom_DirtTileOffset;
  let x_447 : vec2<f32> = ((x_438 * vec2<f32>(x_441.x, x_441.y)) + vec2<f32>(x_445.z, x_445.w));
  let x_448 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_447.x, x_447.y, x_448.z, x_448.w);
  let x_455 : vec4<f32> = u_xlat2;
  let x_457 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_455.x, x_455.y));
  let x_458 : vec3<f32> = vec3<f32>(x_457.x, x_457.y, x_457.z);
  let x_459 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_458.x, x_458.y, x_458.z, x_459.w);
  let x_461 : vec4<f32> = u_xlat2;
  let x_464 : vec3<f32> = x_39.x_Bloom_Settings;
  let x_466 : vec3<f32> = (vec3<f32>(x_461.x, x_461.y, x_461.z) * vec3<f32>(x_464.z, x_464.z, x_464.z));
  let x_467 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_466.x, x_466.y, x_466.z, x_467.w);
  let x_469 : vec4<f32> = u_xlat1;
  let x_471 : vec4<f32> = u_xlat2;
  let x_473 : vec3<f32> = (vec3<f32>(x_469.x, x_469.y, x_469.z) * vec3<f32>(x_471.x, x_471.y, x_471.z));
  let x_474 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_473.x, x_473.y, x_473.z, x_474.w);
  u_xlat1.w = 0.0f;
  let x_477 : vec4<f32> = u_xlat0;
  let x_478 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_477 + x_478);
  let x_480 : vec4<f32> = u_xlat0;
  let x_481 : vec3<f32> = vec3<f32>(x_480.x, x_480.y, x_480.z);
  let x_482 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_481.x, x_481.y, x_481.z, x_482.w);
  let x_484 : vec4<f32> = u_xlat1;
  let x_488 : vec3<f32> = clamp(vec3<f32>(x_484.x, x_484.y, x_484.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_489 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_488.x, x_488.y, x_488.z, x_489.w);
  let x_491 : vec4<f32> = u_xlat1;
  u_xlat1.x = dot(vec3<f32>(x_491.x, x_491.y, x_491.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_500 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_500);
  let x_505 : f32 = x_39.x_Grain_Params1.x;
  let x_507 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_505 * -(x_507)) + 1.0f);
  let x_515 : vec2<f32> = vs_TEXCOORD1;
  let x_518 : vec4<f32> = x_39.x_Grain_Params2;
  let x_522 : vec4<f32> = x_39.x_Grain_Params2;
  let x_524 : vec2<f32> = ((x_515 * vec2<f32>(x_518.x, x_518.y)) + vec2<f32>(x_522.z, x_522.w));
  let x_525 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_524.x, x_524.y, x_525.z);
  let x_532 : vec3<f32> = u_xlat7;
  let x_534 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_532.x, x_532.y));
  u_xlat7 = vec3<f32>(x_534.x, x_534.y, x_534.z);
  let x_536 : vec4<f32> = u_xlat0;
  let x_538 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_536.x, x_536.y, x_536.z) * x_538);
  let x_540 : vec3<f32> = u_xlat7;
  let x_543 : f32 = x_39.x_Grain_Params1.y;
  let x_545 : f32 = x_39.x_Grain_Params1.y;
  let x_547 : f32 = x_39.x_Grain_Params1.y;
  u_xlat7 = (x_540 * vec3<f32>(x_543, x_545, x_547));
  let x_550 : vec3<f32> = u_xlat7;
  let x_551 : vec4<f32> = u_xlat1;
  let x_554 : vec4<f32> = u_xlat0;
  let x_556 : vec3<f32> = ((x_550 * vec3<f32>(x_551.x, x_551.x, x_551.x)) + vec3<f32>(x_554.x, x_554.y, x_554.z));
  let x_557 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_556.x, x_556.y, x_556.z, x_557.w);
  let x_559 : vec4<f32> = u_xlat0;
  let x_562 : f32 = x_39.x_PostExposure;
  let x_564 : f32 = x_39.x_PostExposure;
  let x_566 : f32 = x_39.x_PostExposure;
  let x_568 : f32 = x_39.x_PostExposure;
  let x_569 : vec4<f32> = vec4<f32>(x_562, x_564, x_566, x_568);
  u_xlat0 = (x_559 * vec4<f32>(x_569.x, x_569.y, x_569.z, x_569.w));
  let x_576 : vec4<f32> = u_xlat0;
  let x_583 : vec3<f32> = ((vec3<f32>(x_576.z, x_576.x, x_576.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_584 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_583.x, x_583.y, x_583.z, x_584.w);
  let x_589 : f32 = u_xlat0.w;
  SV_Target0.w = x_589;
  let x_592 : vec4<f32> = u_xlat0;
  let x_594 : vec3<f32> = log2(vec3<f32>(x_592.x, x_592.y, x_592.z));
  let x_595 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_594.x, x_594.y, x_594.z, x_595.w);
  let x_597 : vec4<f32> = u_xlat0;
  let x_604 : vec3<f32> = ((vec3<f32>(x_597.x, x_597.y, x_597.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_605 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_604.x, x_604.y, x_604.z, x_605.w);
  let x_607 : vec4<f32> = u_xlat0;
  let x_611 : vec3<f32> = clamp(vec3<f32>(x_607.x, x_607.y, x_607.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_612 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_611.x, x_611.y, x_611.z, x_612.w);
  let x_615 : vec4<f32> = u_xlat0;
  let x_619 : vec3<f32> = x_39.x_Lut2D_Params;
  u_xlat6 = (vec3<f32>(x_615.x, x_615.y, x_615.z) * vec3<f32>(x_619.z, x_619.z, x_619.z));
  let x_623 : f32 = u_xlat6.x;
  u_xlat6.x = floor(x_623);
  let x_627 : f32 = u_xlat0.x;
  let x_630 : f32 = x_39.x_Lut2D_Params.z;
  let x_633 : f32 = u_xlat6.x;
  u_xlat0.x = ((x_627 * x_630) + -(x_633));
  let x_638 : vec3<f32> = x_39.x_Lut2D_Params;
  let x_641 : vec2<f32> = (vec2<f32>(x_638.x, x_638.y) * vec2<f32>(0.5f, 0.5f));
  let x_642 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_641.x, x_641.y, x_642.z, x_642.w);
  let x_644 : vec3<f32> = u_xlat6;
  let x_647 : vec3<f32> = x_39.x_Lut2D_Params;
  let x_650 : vec4<f32> = u_xlat1;
  let x_652 : vec2<f32> = ((vec2<f32>(x_644.y, x_644.z) * vec2<f32>(x_647.x, x_647.y)) + vec2<f32>(x_650.x, x_650.y));
  let x_653 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_653.x, x_652.x, x_652.y, x_653.w);
  let x_656 : f32 = u_xlat6.x;
  let x_658 : f32 = x_39.x_Lut2D_Params.y;
  let x_661 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_656 * x_658) + x_661);
  let x_665 : f32 = x_39.x_Lut2D_Params.y;
  u_xlat2.x = x_665;
  u_xlat2.y = 0.0f;
  let x_668 : vec4<f32> = u_xlat1;
  let x_670 : vec4<f32> = u_xlat2;
  let x_672 : vec2<f32> = (vec2<f32>(x_668.x, x_668.z) + vec2<f32>(x_670.x, x_670.y));
  let x_673 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_672.x, x_672.y, x_673.z);
  let x_680 : vec4<f32> = u_xlat1;
  let x_682 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_680.x, x_680.z));
  let x_683 : vec3<f32> = vec3<f32>(x_682.x, x_682.y, x_682.z);
  let x_684 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_683.x, x_683.y, x_683.z, x_684.w);
  let x_689 : vec3<f32> = u_xlat6;
  let x_691 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_689.x, x_689.y));
  u_xlat6 = vec3<f32>(x_691.x, x_691.y, x_691.z);
  let x_693 : vec4<f32> = u_xlat1;
  let x_696 : vec3<f32> = u_xlat6;
  u_xlat6 = (-(vec3<f32>(x_693.x, x_693.y, x_693.z)) + x_696);
  let x_698 : vec4<f32> = u_xlat0;
  let x_700 : vec3<f32> = u_xlat6;
  let x_702 : vec4<f32> = u_xlat1;
  let x_704 : vec3<f32> = ((vec3<f32>(x_698.x, x_698.x, x_698.x) * x_700) + vec3<f32>(x_702.x, x_702.y, x_702.z));
  let x_705 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_704.x, x_704.y, x_704.z, x_705.w);
  let x_707 : vec4<f32> = u_xlat0;
  let x_712 : vec3<f32> = max(abs(vec3<f32>(x_707.x, x_707.y, x_707.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_713 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_712.x, x_712.y, x_712.z, x_713.w);
  let x_715 : vec4<f32> = u_xlat1;
  let x_717 : vec3<f32> = log2(vec3<f32>(x_715.x, x_715.y, x_715.z));
  let x_718 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_717.x, x_717.y, x_717.z, x_718.w);
  let x_720 : vec4<f32> = u_xlat1;
  let x_724 : vec3<f32> = (vec3<f32>(x_720.x, x_720.y, x_720.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_725 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_724.x, x_724.y, x_724.z, x_725.w);
  let x_727 : vec4<f32> = u_xlat1;
  let x_729 : vec3<f32> = exp2(vec3<f32>(x_727.x, x_727.y, x_727.z));
  let x_730 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_729.x, x_729.y, x_729.z, x_730.w);
  let x_732 : vec4<f32> = u_xlat1;
  let x_739 : vec3<f32> = ((vec3<f32>(x_732.x, x_732.y, x_732.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_740 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_739.x, x_739.y, x_739.z, x_740.w);
  let x_742 : vec4<f32> = u_xlat0;
  let x_746 : vec3<f32> = (vec3<f32>(x_742.x, x_742.y, x_742.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_747 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_746.x, x_746.y, x_746.z, x_747.w);
  let x_755 : vec4<f32> = u_xlat0;
  let x_758 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_755.x, x_755.y, x_755.z, x_755.x));
  u_xlatb0 = vec3<bool>(x_758.x, x_758.y, x_758.z);
  let x_762 : bool = u_xlatb0.x;
  if (x_762) {
    let x_768 : f32 = u_xlat2.x;
    x_764 = x_768;
  } else {
    let x_771 : f32 = u_xlat1.x;
    x_764 = x_771;
  }
  let x_772 : f32 = x_764;
  u_xlat0.x = x_772;
  let x_775 : bool = u_xlatb0.y;
  if (x_775) {
    let x_780 : f32 = u_xlat2.y;
    x_776 = x_780;
  } else {
    let x_783 : f32 = u_xlat1.y;
    x_776 = x_783;
  }
  let x_784 : f32 = x_776;
  u_xlat0.y = x_784;
  let x_787 : bool = u_xlatb0.z;
  if (x_787) {
    let x_792 : f32 = u_xlat2.z;
    x_788 = x_792;
  } else {
    let x_795 : f32 = u_xlat1.z;
    x_788 = x_795;
  }
  let x_796 : f32 = x_788;
  u_xlat0.z = x_796;
  let x_798 : vec2<f32> = vs_TEXCOORD0;
  let x_801 : vec4<f32> = x_39.x_Dithering_Coords;
  let x_805 : vec4<f32> = x_39.x_Dithering_Coords;
  let x_807 : vec2<f32> = ((x_798 * vec2<f32>(x_801.x, x_801.y)) + vec2<f32>(x_805.z, x_805.w));
  let x_808 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_807.x, x_807.y, x_808.z, x_808.w);
  let x_816 : vec4<f32> = u_xlat1;
  let x_818 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_816.x, x_816.y));
  u_xlat18 = x_818.w;
  let x_820 : f32 = u_xlat18;
  u_xlat18 = ((x_820 * 2.0f) + -1.0f);
  let x_823 : f32 = u_xlat18;
  u_xlat1.x = (-(abs(x_823)) + 1.0f);
  let x_828 : f32 = u_xlat18;
  u_xlat18 = ((x_828 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_832 : f32 = u_xlat18;
  u_xlat18 = clamp(x_832, 0.0f, 1.0f);
  let x_834 : f32 = u_xlat18;
  u_xlat18 = ((x_834 * 2.0f) + -1.0f);
  let x_838 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_838);
  let x_842 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_842) + 1.0f);
  let x_846 : f32 = u_xlat18;
  let x_848 : f32 = u_xlat1.x;
  u_xlat18 = (x_846 * x_848);
  let x_850 : f32 = u_xlat18;
  let x_855 : vec4<f32> = u_xlat0;
  let x_857 : vec3<f32> = ((vec3<f32>(x_850, x_850, x_850) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_855.x, x_855.y, x_855.z));
  let x_858 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_857.x, x_857.y, x_857.z, x_858.w);
  let x_860 : vec4<f32> = u_xlat0;
  let x_864 : vec3<f32> = (vec3<f32>(x_860.x, x_860.y, x_860.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_865 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_864.x, x_864.y, x_864.z, x_865.w);
  let x_867 : vec4<f32> = u_xlat1;
  let x_871 : vec3<f32> = (vec3<f32>(x_867.x, x_867.y, x_867.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_872 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_871.x, x_871.y, x_871.z, x_872.w);
  let x_874 : vec4<f32> = u_xlat1;
  let x_877 : vec3<f32> = max(abs(vec3<f32>(x_874.x, x_874.y, x_874.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_878 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_877.x, x_877.y, x_877.z, x_878.w);
  let x_880 : vec4<f32> = u_xlat1;
  let x_882 : vec3<f32> = log2(vec3<f32>(x_880.x, x_880.y, x_880.z));
  let x_883 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_882.x, x_882.y, x_882.z, x_883.w);
  let x_885 : vec4<f32> = u_xlat1;
  let x_889 : vec3<f32> = (vec3<f32>(x_885.x, x_885.y, x_885.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_890 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_889.x, x_889.y, x_889.z, x_890.w);
  let x_892 : vec4<f32> = u_xlat1;
  let x_894 : vec3<f32> = exp2(vec3<f32>(x_892.x, x_892.y, x_892.z));
  let x_895 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_894.x, x_894.y, x_894.z, x_895.w);
  let x_897 : vec4<f32> = u_xlat0;
  let x_901 : vec3<f32> = (vec3<f32>(x_897.x, x_897.y, x_897.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_902 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_901.x, x_901.y, x_901.z, x_902.w);
  let x_906 : vec4<f32> = u_xlat0;
  let x_908 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_906.x, x_906.y, x_906.z, x_906.x));
  u_xlatb0 = vec3<bool>(x_908.x, x_908.y, x_908.z);
  let x_911 : bool = u_xlatb0.x;
  if (x_911) {
    let x_916 : f32 = u_xlat2.x;
    x_912 = x_916;
  } else {
    let x_919 : f32 = u_xlat1.x;
    x_912 = x_919;
  }
  let x_920 : f32 = x_912;
  SV_Target0.x = x_920;
  let x_923 : bool = u_xlatb0.y;
  if (x_923) {
    let x_928 : f32 = u_xlat2.y;
    x_924 = x_928;
  } else {
    let x_931 : f32 = u_xlat1.y;
    x_924 = x_931;
  }
  let x_932 : f32 = x_924;
  SV_Target0.y = x_932;
  let x_935 : bool = u_xlatb0.z;
  if (x_935) {
    let x_940 : f32 = u_xlat2.z;
    x_936 = x_940;
  } else {
    let x_943 : f32 = u_xlat1.z;
    x_936 = x_943;
  }
  let x_944 : f32 = x_936;
  SV_Target0.z = x_944;
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

