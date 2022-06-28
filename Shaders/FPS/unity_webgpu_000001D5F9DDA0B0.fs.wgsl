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

var<private> u_xlat18 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb0 : vec3<bool>;

var<private> u_xlat6 : vec3<f32>;

@group(0) @binding(7) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(15) var sampler_Lut2D : sampler;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_DitheringTex : sampler;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_624 : f32;
  var x_636 : f32;
  var x_649 : f32;
  var x_803 : f32;
  var x_815 : f32;
  var x_827 : f32;
  var x_875 : f32;
  var x_887 : f32;
  var x_899 : f32;
  var x_1012 : f32;
  var x_1024 : f32;
  var x_1036 : f32;
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
    let x_628 : f32 = u_xlat2.x;
    x_624 = x_628;
  } else {
    let x_631 : f32 = u_xlat1.x;
    x_624 = x_631;
  }
  let x_632 : f32 = x_624;
  u_xlat0.x = x_632;
  let x_635 : bool = u_xlatb0.y;
  if (x_635) {
    let x_640 : f32 = u_xlat2.y;
    x_636 = x_640;
  } else {
    let x_643 : f32 = u_xlat1.y;
    x_636 = x_643;
  }
  let x_644 : f32 = x_636;
  u_xlat0.y = x_644;
  let x_648 : bool = u_xlatb0.z;
  if (x_648) {
    let x_653 : f32 = u_xlat2.z;
    x_649 = x_653;
  } else {
    let x_656 : f32 = u_xlat1.z;
    x_649 = x_656;
  }
  let x_657 : f32 = x_649;
  u_xlat0.z = x_657;
  let x_660 : vec4<f32> = u_xlat0;
  let x_664 : vec3<f32> = x_39.x_Lut2D_Params;
  u_xlat6 = (vec3<f32>(x_660.x, x_660.y, x_660.z) * vec3<f32>(x_664.z, x_664.z, x_664.z));
  let x_668 : f32 = u_xlat6.x;
  u_xlat6.x = floor(x_668);
  let x_672 : f32 = u_xlat0.x;
  let x_674 : f32 = x_39.x_Lut2D_Params.z;
  let x_677 : f32 = u_xlat6.x;
  u_xlat0.x = ((x_672 * x_674) + -(x_677));
  let x_682 : vec3<f32> = x_39.x_Lut2D_Params;
  let x_685 : vec2<f32> = (vec2<f32>(x_682.x, x_682.y) * vec2<f32>(0.5f, 0.5f));
  let x_686 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_685.x, x_685.y, x_686.z, x_686.w);
  let x_688 : vec3<f32> = u_xlat6;
  let x_691 : vec3<f32> = x_39.x_Lut2D_Params;
  let x_694 : vec4<f32> = u_xlat1;
  let x_696 : vec2<f32> = ((vec2<f32>(x_688.y, x_688.z) * vec2<f32>(x_691.x, x_691.y)) + vec2<f32>(x_694.x, x_694.y));
  let x_697 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_697.x, x_696.x, x_696.y, x_697.w);
  let x_700 : f32 = u_xlat6.x;
  let x_702 : f32 = x_39.x_Lut2D_Params.y;
  let x_705 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_700 * x_702) + x_705);
  let x_709 : f32 = x_39.x_Lut2D_Params.y;
  u_xlat2.x = x_709;
  u_xlat2.y = 0.0f;
  let x_712 : vec4<f32> = u_xlat1;
  let x_714 : vec4<f32> = u_xlat2;
  let x_716 : vec2<f32> = (vec2<f32>(x_712.x, x_712.z) + vec2<f32>(x_714.x, x_714.y));
  let x_717 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_716.x, x_716.y, x_717.z);
  let x_724 : vec4<f32> = u_xlat1;
  let x_726 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_724.x, x_724.z));
  let x_727 : vec3<f32> = vec3<f32>(x_726.x, x_726.y, x_726.z);
  let x_728 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_727.x, x_727.y, x_727.z, x_728.w);
  let x_733 : vec3<f32> = u_xlat6;
  let x_735 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_733.x, x_733.y));
  u_xlat6 = vec3<f32>(x_735.x, x_735.y, x_735.z);
  let x_737 : vec4<f32> = u_xlat1;
  let x_740 : vec3<f32> = u_xlat6;
  u_xlat6 = (-(vec3<f32>(x_737.x, x_737.y, x_737.z)) + x_740);
  let x_742 : vec4<f32> = u_xlat0;
  let x_744 : vec3<f32> = u_xlat6;
  let x_746 : vec4<f32> = u_xlat1;
  let x_748 : vec3<f32> = ((vec3<f32>(x_742.x, x_742.x, x_742.x) * x_744) + vec3<f32>(x_746.x, x_746.y, x_746.z));
  let x_749 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_748.x, x_748.y, x_748.z, x_749.w);
  let x_751 : vec4<f32> = u_xlat0;
  let x_755 : vec3<f32> = (vec3<f32>(x_751.x, x_751.y, x_751.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_756 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_755.x, x_755.y, x_755.z, x_756.w);
  let x_758 : vec4<f32> = u_xlat1;
  let x_762 : vec3<f32> = (vec3<f32>(x_758.x, x_758.y, x_758.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_763 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_762.x, x_762.y, x_762.z, x_763.w);
  let x_765 : vec4<f32> = u_xlat1;
  let x_768 : vec3<f32> = max(abs(vec3<f32>(x_765.x, x_765.y, x_765.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_769 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_768.x, x_768.y, x_768.z, x_769.w);
  let x_771 : vec4<f32> = u_xlat1;
  let x_773 : vec3<f32> = log2(vec3<f32>(x_771.x, x_771.y, x_771.z));
  let x_774 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_773.x, x_773.y, x_773.z, x_774.w);
  let x_776 : vec4<f32> = u_xlat1;
  let x_780 : vec3<f32> = (vec3<f32>(x_776.x, x_776.y, x_776.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_781 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_780.x, x_780.y, x_780.z, x_781.w);
  let x_783 : vec4<f32> = u_xlat1;
  let x_785 : vec3<f32> = exp2(vec3<f32>(x_783.x, x_783.y, x_783.z));
  let x_786 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_785.x, x_785.y, x_785.z, x_786.w);
  let x_788 : vec4<f32> = u_xlat0;
  let x_792 : vec3<f32> = (vec3<f32>(x_788.x, x_788.y, x_788.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_793 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_792.x, x_792.y, x_792.z, x_793.w);
  let x_797 : vec4<f32> = u_xlat0;
  let x_799 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_797.x, x_797.y, x_797.z, x_797.x));
  u_xlatb0 = vec3<bool>(x_799.x, x_799.y, x_799.z);
  let x_802 : bool = u_xlatb0.x;
  if (x_802) {
    let x_807 : f32 = u_xlat2.x;
    x_803 = x_807;
  } else {
    let x_810 : f32 = u_xlat1.x;
    x_803 = x_810;
  }
  let x_811 : f32 = x_803;
  u_xlat0.x = x_811;
  let x_814 : bool = u_xlatb0.y;
  if (x_814) {
    let x_819 : f32 = u_xlat2.y;
    x_815 = x_819;
  } else {
    let x_822 : f32 = u_xlat1.y;
    x_815 = x_822;
  }
  let x_823 : f32 = x_815;
  u_xlat0.y = x_823;
  let x_826 : bool = u_xlatb0.z;
  if (x_826) {
    let x_831 : f32 = u_xlat2.z;
    x_827 = x_831;
  } else {
    let x_834 : f32 = u_xlat1.z;
    x_827 = x_834;
  }
  let x_835 : f32 = x_827;
  u_xlat0.z = x_835;
  let x_837 : vec4<f32> = u_xlat0;
  let x_840 : vec3<f32> = max(abs(vec3<f32>(x_837.x, x_837.y, x_837.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_841 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_840.x, x_840.y, x_840.z, x_841.w);
  let x_843 : vec4<f32> = u_xlat1;
  let x_845 : vec3<f32> = log2(vec3<f32>(x_843.x, x_843.y, x_843.z));
  let x_846 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_845.x, x_845.y, x_845.z, x_846.w);
  let x_848 : vec4<f32> = u_xlat1;
  let x_850 : vec3<f32> = (vec3<f32>(x_848.x, x_848.y, x_848.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_851 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_850.x, x_850.y, x_850.z, x_851.w);
  let x_853 : vec4<f32> = u_xlat1;
  let x_855 : vec3<f32> = exp2(vec3<f32>(x_853.x, x_853.y, x_853.z));
  let x_856 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_855.x, x_855.y, x_855.z, x_856.w);
  let x_858 : vec4<f32> = u_xlat1;
  let x_861 : vec3<f32> = ((vec3<f32>(x_858.x, x_858.y, x_858.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_862 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_861.x, x_861.y, x_861.z, x_862.w);
  let x_864 : vec4<f32> = u_xlat0;
  let x_866 : vec3<f32> = (vec3<f32>(x_864.x, x_864.y, x_864.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_867 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_866.x, x_866.y, x_866.z, x_867.w);
  let x_869 : vec4<f32> = u_xlat0;
  let x_871 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_869.x, x_869.y, x_869.z, x_869.x));
  u_xlatb0 = vec3<bool>(x_871.x, x_871.y, x_871.z);
  let x_874 : bool = u_xlatb0.x;
  if (x_874) {
    let x_879 : f32 = u_xlat2.x;
    x_875 = x_879;
  } else {
    let x_882 : f32 = u_xlat1.x;
    x_875 = x_882;
  }
  let x_883 : f32 = x_875;
  u_xlat0.x = x_883;
  let x_886 : bool = u_xlatb0.y;
  if (x_886) {
    let x_891 : f32 = u_xlat2.y;
    x_887 = x_891;
  } else {
    let x_894 : f32 = u_xlat1.y;
    x_887 = x_894;
  }
  let x_895 : f32 = x_887;
  u_xlat0.y = x_895;
  let x_898 : bool = u_xlatb0.z;
  if (x_898) {
    let x_903 : f32 = u_xlat2.z;
    x_899 = x_903;
  } else {
    let x_906 : f32 = u_xlat1.z;
    x_899 = x_906;
  }
  let x_907 : f32 = x_899;
  u_xlat0.z = x_907;
  let x_909 : vec2<f32> = vs_TEXCOORD0;
  let x_912 : vec4<f32> = x_39.x_Dithering_Coords;
  let x_916 : vec4<f32> = x_39.x_Dithering_Coords;
  let x_918 : vec2<f32> = ((x_909 * vec2<f32>(x_912.x, x_912.y)) + vec2<f32>(x_916.z, x_916.w));
  let x_919 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_918.x, x_918.y, x_919.z, x_919.w);
  let x_926 : vec4<f32> = u_xlat1;
  let x_928 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_926.x, x_926.y));
  u_xlat18 = x_928.w;
  let x_930 : f32 = u_xlat18;
  u_xlat18 = ((x_930 * 2.0f) + -1.0f);
  let x_933 : f32 = u_xlat18;
  u_xlat1.x = (-(abs(x_933)) + 1.0f);
  let x_938 : f32 = u_xlat18;
  u_xlat18 = ((x_938 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_942 : f32 = u_xlat18;
  u_xlat18 = clamp(x_942, 0.0f, 1.0f);
  let x_944 : f32 = u_xlat18;
  u_xlat18 = ((x_944 * 2.0f) + -1.0f);
  let x_948 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_948);
  let x_952 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_952) + 1.0f);
  let x_956 : f32 = u_xlat18;
  let x_958 : f32 = u_xlat1.x;
  u_xlat18 = (x_956 * x_958);
  let x_960 : f32 = u_xlat18;
  let x_965 : vec4<f32> = u_xlat0;
  let x_967 : vec3<f32> = ((vec3<f32>(x_960, x_960, x_960) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_965.x, x_965.y, x_965.z));
  let x_968 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_967.x, x_967.y, x_967.z, x_968.w);
  let x_970 : vec4<f32> = u_xlat0;
  let x_972 : vec3<f32> = (vec3<f32>(x_970.x, x_970.y, x_970.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_973 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_972.x, x_972.y, x_972.z, x_973.w);
  let x_975 : vec4<f32> = u_xlat1;
  let x_977 : vec3<f32> = (vec3<f32>(x_975.x, x_975.y, x_975.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_978 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_977.x, x_977.y, x_977.z, x_978.w);
  let x_980 : vec4<f32> = u_xlat1;
  let x_983 : vec3<f32> = max(abs(vec3<f32>(x_980.x, x_980.y, x_980.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_984 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_983.x, x_983.y, x_983.z, x_984.w);
  let x_986 : vec4<f32> = u_xlat1;
  let x_988 : vec3<f32> = log2(vec3<f32>(x_986.x, x_986.y, x_986.z));
  let x_989 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_988.x, x_988.y, x_988.z, x_989.w);
  let x_991 : vec4<f32> = u_xlat1;
  let x_993 : vec3<f32> = (vec3<f32>(x_991.x, x_991.y, x_991.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_994 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_993.x, x_993.y, x_993.z, x_994.w);
  let x_996 : vec4<f32> = u_xlat1;
  let x_998 : vec3<f32> = exp2(vec3<f32>(x_996.x, x_996.y, x_996.z));
  let x_999 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_998.x, x_998.y, x_998.z, x_999.w);
  let x_1001 : vec4<f32> = u_xlat0;
  let x_1003 : vec3<f32> = (vec3<f32>(x_1001.x, x_1001.y, x_1001.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1004 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1003.x, x_1003.y, x_1003.z, x_1004.w);
  let x_1006 : vec4<f32> = u_xlat0;
  let x_1008 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1006.x, x_1006.y, x_1006.z, x_1006.x));
  u_xlatb0 = vec3<bool>(x_1008.x, x_1008.y, x_1008.z);
  let x_1011 : bool = u_xlatb0.x;
  if (x_1011) {
    let x_1016 : f32 = u_xlat2.x;
    x_1012 = x_1016;
  } else {
    let x_1019 : f32 = u_xlat1.x;
    x_1012 = x_1019;
  }
  let x_1020 : f32 = x_1012;
  SV_Target0.x = x_1020;
  let x_1023 : bool = u_xlatb0.y;
  if (x_1023) {
    let x_1028 : f32 = u_xlat2.y;
    x_1024 = x_1028;
  } else {
    let x_1031 : f32 = u_xlat1.y;
    x_1024 = x_1031;
  }
  let x_1032 : f32 = x_1024;
  SV_Target0.y = x_1032;
  let x_1035 : bool = u_xlatb0.z;
  if (x_1035) {
    let x_1040 : f32 = u_xlat2.z;
    x_1036 = x_1040;
  } else {
    let x_1043 : f32 = u_xlat1.z;
    x_1036 = x_1043;
  }
  let x_1044 : f32 = x_1036;
  SV_Target0.z = x_1044;
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

