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
  @size(4)
  padding_2 : u32,
  x_Grain_Params1 : vec2<f32>,
  @size(8)
  padding_3 : u32,
  x_Grain_Params2 : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_39 : PGlobals;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

@group(0) @binding(5) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(13) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(3) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_BloomTex : sampler;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_AutoExposureTex : sampler;

@group(0) @binding(4) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_Bloom_DirtTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(7) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(15) var sampler_GrainTex : sampler;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(6) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(14) var sampler_Lut2D : sampler;

@group(0) @binding(0) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_DitheringTex : sampler;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat18 : f32;
  var u_xlatb0 : vec3<bool>;
  var x_623 : f32;
  var x_635 : f32;
  var x_648 : f32;
  var u_xlat6 : vec3<f32>;
  var x_802 : f32;
  var x_814 : f32;
  var x_826 : f32;
  var x_874 : f32;
  var x_886 : f32;
  var x_898 : f32;
  var x_1011 : f32;
  var x_1023 : f32;
  var x_1035 : f32;
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
  let x_551 : vec4<f32> = u_xlat0;
  let x_555 : vec3<f32> = clamp(vec3<f32>(x_551.x, x_551.y, x_551.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_556 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_555.x, x_555.y, x_555.z, x_556.w);
  let x_560 : f32 = u_xlat0.w;
  u_xlat18 = x_560;
  let x_561 : f32 = u_xlat18;
  u_xlat18 = clamp(x_561, 0.0f, 1.0f);
  let x_565 : f32 = u_xlat18;
  SV_Target0.w = x_565;
  let x_568 : vec4<f32> = u_xlat0;
  let x_572 : vec3<f32> = max(vec3<f32>(x_568.z, x_568.x, x_568.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_573 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_572.x, x_572.y, x_572.z, x_573.w);
  let x_575 : vec4<f32> = u_xlat1;
  let x_577 : vec3<f32> = log2(vec3<f32>(x_575.x, x_575.y, x_575.z));
  let x_578 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_577.x, x_577.y, x_577.z, x_578.w);
  let x_580 : vec4<f32> = u_xlat1;
  let x_584 : vec3<f32> = (vec3<f32>(x_580.x, x_580.y, x_580.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_585 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_584.x, x_584.y, x_584.z, x_585.w);
  let x_587 : vec4<f32> = u_xlat1;
  let x_589 : vec3<f32> = exp2(vec3<f32>(x_587.x, x_587.y, x_587.z));
  let x_590 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_589.x, x_589.y, x_589.z, x_590.w);
  let x_592 : vec4<f32> = u_xlat1;
  let x_599 : vec3<f32> = ((vec3<f32>(x_592.x, x_592.y, x_592.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_600 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_599.x, x_599.y, x_599.z, x_600.w);
  let x_602 : vec4<f32> = u_xlat0;
  let x_606 : vec3<f32> = (vec3<f32>(x_602.z, x_602.x, x_602.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_607 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_606.x, x_606.y, x_606.z, x_607.w);
  let x_615 : vec4<f32> = u_xlat0;
  let x_618 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_615.z, x_615.x, x_615.y, x_615.z));
  u_xlatb0 = vec3<bool>(x_618.x, x_618.y, x_618.z);
  let x_622 : bool = u_xlatb0.x;
  if (x_622) {
    let x_627 : f32 = u_xlat2.x;
    x_623 = x_627;
  } else {
    let x_630 : f32 = u_xlat1.x;
    x_623 = x_630;
  }
  let x_631 : f32 = x_623;
  u_xlat0.x = x_631;
  let x_634 : bool = u_xlatb0.y;
  if (x_634) {
    let x_639 : f32 = u_xlat2.y;
    x_635 = x_639;
  } else {
    let x_642 : f32 = u_xlat1.y;
    x_635 = x_642;
  }
  let x_643 : f32 = x_635;
  u_xlat0.y = x_643;
  let x_647 : bool = u_xlatb0.z;
  if (x_647) {
    let x_652 : f32 = u_xlat2.z;
    x_648 = x_652;
  } else {
    let x_655 : f32 = u_xlat1.z;
    x_648 = x_655;
  }
  let x_656 : f32 = x_648;
  u_xlat0.z = x_656;
  let x_659 : vec4<f32> = u_xlat0;
  let x_663 : vec3<f32> = x_39.x_Lut2D_Params;
  u_xlat6 = (vec3<f32>(x_659.x, x_659.y, x_659.z) * vec3<f32>(x_663.z, x_663.z, x_663.z));
  let x_667 : f32 = u_xlat6.x;
  u_xlat6.x = floor(x_667);
  let x_671 : f32 = u_xlat0.x;
  let x_673 : f32 = x_39.x_Lut2D_Params.z;
  let x_676 : f32 = u_xlat6.x;
  u_xlat0.x = ((x_671 * x_673) + -(x_676));
  let x_681 : vec3<f32> = x_39.x_Lut2D_Params;
  let x_684 : vec2<f32> = (vec2<f32>(x_681.x, x_681.y) * vec2<f32>(0.5f, 0.5f));
  let x_685 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_684.x, x_684.y, x_685.z, x_685.w);
  let x_687 : vec3<f32> = u_xlat6;
  let x_690 : vec3<f32> = x_39.x_Lut2D_Params;
  let x_693 : vec4<f32> = u_xlat1;
  let x_695 : vec2<f32> = ((vec2<f32>(x_687.y, x_687.z) * vec2<f32>(x_690.x, x_690.y)) + vec2<f32>(x_693.x, x_693.y));
  let x_696 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_696.x, x_695.x, x_695.y, x_696.w);
  let x_699 : f32 = u_xlat6.x;
  let x_701 : f32 = x_39.x_Lut2D_Params.y;
  let x_704 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_699 * x_701) + x_704);
  let x_708 : f32 = x_39.x_Lut2D_Params.y;
  u_xlat2.x = x_708;
  u_xlat2.y = 0.0f;
  let x_711 : vec4<f32> = u_xlat1;
  let x_713 : vec4<f32> = u_xlat2;
  let x_715 : vec2<f32> = (vec2<f32>(x_711.x, x_711.z) + vec2<f32>(x_713.x, x_713.y));
  let x_716 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_715.x, x_715.y, x_716.z);
  let x_723 : vec4<f32> = u_xlat1;
  let x_725 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_723.x, x_723.z));
  let x_726 : vec3<f32> = vec3<f32>(x_725.x, x_725.y, x_725.z);
  let x_727 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_726.x, x_726.y, x_726.z, x_727.w);
  let x_732 : vec3<f32> = u_xlat6;
  let x_734 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_732.x, x_732.y));
  u_xlat6 = vec3<f32>(x_734.x, x_734.y, x_734.z);
  let x_736 : vec4<f32> = u_xlat1;
  let x_739 : vec3<f32> = u_xlat6;
  u_xlat6 = (-(vec3<f32>(x_736.x, x_736.y, x_736.z)) + x_739);
  let x_741 : vec4<f32> = u_xlat0;
  let x_743 : vec3<f32> = u_xlat6;
  let x_745 : vec4<f32> = u_xlat1;
  let x_747 : vec3<f32> = ((vec3<f32>(x_741.x, x_741.x, x_741.x) * x_743) + vec3<f32>(x_745.x, x_745.y, x_745.z));
  let x_748 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_747.x, x_747.y, x_747.z, x_748.w);
  let x_750 : vec4<f32> = u_xlat0;
  let x_754 : vec3<f32> = (vec3<f32>(x_750.x, x_750.y, x_750.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_755 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_754.x, x_754.y, x_754.z, x_755.w);
  let x_757 : vec4<f32> = u_xlat1;
  let x_761 : vec3<f32> = (vec3<f32>(x_757.x, x_757.y, x_757.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_762 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_761.x, x_761.y, x_761.z, x_762.w);
  let x_764 : vec4<f32> = u_xlat1;
  let x_767 : vec3<f32> = max(abs(vec3<f32>(x_764.x, x_764.y, x_764.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_768 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_767.x, x_767.y, x_767.z, x_768.w);
  let x_770 : vec4<f32> = u_xlat1;
  let x_772 : vec3<f32> = log2(vec3<f32>(x_770.x, x_770.y, x_770.z));
  let x_773 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_772.x, x_772.y, x_772.z, x_773.w);
  let x_775 : vec4<f32> = u_xlat1;
  let x_779 : vec3<f32> = (vec3<f32>(x_775.x, x_775.y, x_775.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_780 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_779.x, x_779.y, x_779.z, x_780.w);
  let x_782 : vec4<f32> = u_xlat1;
  let x_784 : vec3<f32> = exp2(vec3<f32>(x_782.x, x_782.y, x_782.z));
  let x_785 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_784.x, x_784.y, x_784.z, x_785.w);
  let x_787 : vec4<f32> = u_xlat0;
  let x_791 : vec3<f32> = (vec3<f32>(x_787.x, x_787.y, x_787.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_792 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_791.x, x_791.y, x_791.z, x_792.w);
  let x_796 : vec4<f32> = u_xlat0;
  let x_798 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_796.x, x_796.y, x_796.z, x_796.x));
  u_xlatb0 = vec3<bool>(x_798.x, x_798.y, x_798.z);
  let x_801 : bool = u_xlatb0.x;
  if (x_801) {
    let x_806 : f32 = u_xlat2.x;
    x_802 = x_806;
  } else {
    let x_809 : f32 = u_xlat1.x;
    x_802 = x_809;
  }
  let x_810 : f32 = x_802;
  u_xlat0.x = x_810;
  let x_813 : bool = u_xlatb0.y;
  if (x_813) {
    let x_818 : f32 = u_xlat2.y;
    x_814 = x_818;
  } else {
    let x_821 : f32 = u_xlat1.y;
    x_814 = x_821;
  }
  let x_822 : f32 = x_814;
  u_xlat0.y = x_822;
  let x_825 : bool = u_xlatb0.z;
  if (x_825) {
    let x_830 : f32 = u_xlat2.z;
    x_826 = x_830;
  } else {
    let x_833 : f32 = u_xlat1.z;
    x_826 = x_833;
  }
  let x_834 : f32 = x_826;
  u_xlat0.z = x_834;
  let x_836 : vec4<f32> = u_xlat0;
  let x_839 : vec3<f32> = max(abs(vec3<f32>(x_836.x, x_836.y, x_836.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_840 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_839.x, x_839.y, x_839.z, x_840.w);
  let x_842 : vec4<f32> = u_xlat1;
  let x_844 : vec3<f32> = log2(vec3<f32>(x_842.x, x_842.y, x_842.z));
  let x_845 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_844.x, x_844.y, x_844.z, x_845.w);
  let x_847 : vec4<f32> = u_xlat1;
  let x_849 : vec3<f32> = (vec3<f32>(x_847.x, x_847.y, x_847.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_850 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_849.x, x_849.y, x_849.z, x_850.w);
  let x_852 : vec4<f32> = u_xlat1;
  let x_854 : vec3<f32> = exp2(vec3<f32>(x_852.x, x_852.y, x_852.z));
  let x_855 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_854.x, x_854.y, x_854.z, x_855.w);
  let x_857 : vec4<f32> = u_xlat1;
  let x_860 : vec3<f32> = ((vec3<f32>(x_857.x, x_857.y, x_857.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_861 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_860.x, x_860.y, x_860.z, x_861.w);
  let x_863 : vec4<f32> = u_xlat0;
  let x_865 : vec3<f32> = (vec3<f32>(x_863.x, x_863.y, x_863.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_866 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_865.x, x_865.y, x_865.z, x_866.w);
  let x_868 : vec4<f32> = u_xlat0;
  let x_870 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_868.x, x_868.y, x_868.z, x_868.x));
  u_xlatb0 = vec3<bool>(x_870.x, x_870.y, x_870.z);
  let x_873 : bool = u_xlatb0.x;
  if (x_873) {
    let x_878 : f32 = u_xlat2.x;
    x_874 = x_878;
  } else {
    let x_881 : f32 = u_xlat1.x;
    x_874 = x_881;
  }
  let x_882 : f32 = x_874;
  u_xlat0.x = x_882;
  let x_885 : bool = u_xlatb0.y;
  if (x_885) {
    let x_890 : f32 = u_xlat2.y;
    x_886 = x_890;
  } else {
    let x_893 : f32 = u_xlat1.y;
    x_886 = x_893;
  }
  let x_894 : f32 = x_886;
  u_xlat0.y = x_894;
  let x_897 : bool = u_xlatb0.z;
  if (x_897) {
    let x_902 : f32 = u_xlat2.z;
    x_898 = x_902;
  } else {
    let x_905 : f32 = u_xlat1.z;
    x_898 = x_905;
  }
  let x_906 : f32 = x_898;
  u_xlat0.z = x_906;
  let x_908 : vec2<f32> = vs_TEXCOORD0;
  let x_911 : vec4<f32> = x_39.x_Dithering_Coords;
  let x_915 : vec4<f32> = x_39.x_Dithering_Coords;
  let x_917 : vec2<f32> = ((x_908 * vec2<f32>(x_911.x, x_911.y)) + vec2<f32>(x_915.z, x_915.w));
  let x_918 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_917.x, x_917.y, x_918.z, x_918.w);
  let x_925 : vec4<f32> = u_xlat1;
  let x_927 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_925.x, x_925.y));
  u_xlat18 = x_927.w;
  let x_929 : f32 = u_xlat18;
  u_xlat18 = ((x_929 * 2.0f) + -1.0f);
  let x_932 : f32 = u_xlat18;
  u_xlat1.x = (-(abs(x_932)) + 1.0f);
  let x_937 : f32 = u_xlat18;
  u_xlat18 = ((x_937 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_941 : f32 = u_xlat18;
  u_xlat18 = clamp(x_941, 0.0f, 1.0f);
  let x_943 : f32 = u_xlat18;
  u_xlat18 = ((x_943 * 2.0f) + -1.0f);
  let x_947 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_947);
  let x_951 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_951) + 1.0f);
  let x_955 : f32 = u_xlat18;
  let x_957 : f32 = u_xlat1.x;
  u_xlat18 = (x_955 * x_957);
  let x_959 : f32 = u_xlat18;
  let x_964 : vec4<f32> = u_xlat0;
  let x_966 : vec3<f32> = ((vec3<f32>(x_959, x_959, x_959) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_964.x, x_964.y, x_964.z));
  let x_967 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_966.x, x_966.y, x_966.z, x_967.w);
  let x_969 : vec4<f32> = u_xlat0;
  let x_971 : vec3<f32> = (vec3<f32>(x_969.x, x_969.y, x_969.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_972 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_971.x, x_971.y, x_971.z, x_972.w);
  let x_974 : vec4<f32> = u_xlat1;
  let x_976 : vec3<f32> = (vec3<f32>(x_974.x, x_974.y, x_974.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_977 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_976.x, x_976.y, x_976.z, x_977.w);
  let x_979 : vec4<f32> = u_xlat1;
  let x_982 : vec3<f32> = max(abs(vec3<f32>(x_979.x, x_979.y, x_979.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_983 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_982.x, x_982.y, x_982.z, x_983.w);
  let x_985 : vec4<f32> = u_xlat1;
  let x_987 : vec3<f32> = log2(vec3<f32>(x_985.x, x_985.y, x_985.z));
  let x_988 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_987.x, x_987.y, x_987.z, x_988.w);
  let x_990 : vec4<f32> = u_xlat1;
  let x_992 : vec3<f32> = (vec3<f32>(x_990.x, x_990.y, x_990.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_993 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_992.x, x_992.y, x_992.z, x_993.w);
  let x_995 : vec4<f32> = u_xlat1;
  let x_997 : vec3<f32> = exp2(vec3<f32>(x_995.x, x_995.y, x_995.z));
  let x_998 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_997.x, x_997.y, x_997.z, x_998.w);
  let x_1000 : vec4<f32> = u_xlat0;
  let x_1002 : vec3<f32> = (vec3<f32>(x_1000.x, x_1000.y, x_1000.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1003 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1002.x, x_1002.y, x_1002.z, x_1003.w);
  let x_1005 : vec4<f32> = u_xlat0;
  let x_1007 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1005.x, x_1005.y, x_1005.z, x_1005.x));
  u_xlatb0 = vec3<bool>(x_1007.x, x_1007.y, x_1007.z);
  let x_1010 : bool = u_xlatb0.x;
  if (x_1010) {
    let x_1015 : f32 = u_xlat2.x;
    x_1011 = x_1015;
  } else {
    let x_1018 : f32 = u_xlat1.x;
    x_1011 = x_1018;
  }
  let x_1019 : f32 = x_1011;
  SV_Target0.x = x_1019;
  let x_1022 : bool = u_xlatb0.y;
  if (x_1022) {
    let x_1027 : f32 = u_xlat2.y;
    x_1023 = x_1027;
  } else {
    let x_1030 : f32 = u_xlat1.y;
    x_1023 = x_1030;
  }
  let x_1031 : f32 = x_1023;
  SV_Target0.y = x_1031;
  let x_1034 : bool = u_xlatb0.z;
  if (x_1034) {
    let x_1039 : f32 = u_xlat2.z;
    x_1035 = x_1039;
  } else {
    let x_1042 : f32 = u_xlat1.z;
    x_1035 = x_1042;
  }
  let x_1043 : f32 = x_1035;
  SV_Target0.z = x_1043;
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

