struct PGlobals {
  x_ScreenParams : vec4<f32>,
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
  x_Vignette_Color : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_Vignette_Center : vec2<f32>,
  @size(8)
  padding_3 : u32,
  x_Vignette_Settings : vec4<f32>,
  x_Vignette_Opacity : f32,
  x_Vignette_Mode : f32,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(3) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat7 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_55 : PGlobals;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(6) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(13) var sampler_ChromaticAberration_SpectralLut : sampler;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(4) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_BloomTex : sampler;

@group(0) @binding(5) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_Bloom_DirtTex : sampler;

var<private> u_xlatb1 : vec3<bool>;

var<private> u_xlat22 : f32;

var<private> u_xlat8 : vec3<f32>;

@group(0) @binding(7) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(14) var sampler_Vignette_Mask : sampler;

var<private> u_xlat10 : f32;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_DitheringTex : sampler;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_658 : f32;
  var hlslcc_movcTemp : vec3<f32>;
  var x_827 : f32;
  var x_839 : f32;
  var x_851 : f32;
  var x_919 : f32;
  var x_931 : f32;
  var x_943 : f32;
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
  let x_187 : vec3<f32> = (vec3<f32>(x_183.x, x_183.y, x_183.z) + vec3<f32>(x_185.x, x_185.y, x_185.z));
  let x_188 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_187.x, x_187.y, x_187.z, x_188.w);
  let x_190 : vec4<f32> = u_xlat4;
  let x_192 : vec4<f32> = u_xlat2;
  let x_194 : vec3<f32> = (vec3<f32>(x_190.x, x_190.y, x_190.z) + vec3<f32>(x_192.x, x_192.y, x_192.z));
  let x_195 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_194.x, x_194.y, x_194.z, x_195.w);
  u_xlat2.w = 3.0f;
  let x_199 : vec4<f32> = u_xlat1;
  let x_200 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_199 / x_200);
  let x_202 : vec4<f32> = u_xlat0;
  let x_204 : vec4<f32> = u_xlat1;
  let x_206 : vec3<f32> = (vec3<f32>(x_202.x, x_202.x, x_202.x) * vec3<f32>(x_204.x, x_204.y, x_204.z));
  let x_207 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_206.x, x_206.y, x_206.z, x_207.w);
  let x_212 : vec4<f32> = x_55.x_BloomTex_TexelSize;
  u_xlat2 = (vec4<f32>(x_212.x, x_212.y, x_212.x, x_212.y) * vec4<f32>(1.0f, 1.0f, -1.0f, 0.0f));
  let x_216 : vec4<f32> = u_xlat2;
  let x_222 : vec3<f32> = x_55.x_Bloom_Settings;
  let x_225 : vec2<f32> = vs_TEXCOORD0;
  u_xlat3 = ((-(vec4<f32>(x_216.x, x_216.y, x_216.w, x_216.y)) * vec4<f32>(x_222.x, x_222.x, x_222.x, x_222.x)) + vec4<f32>(x_225.x, x_225.y, x_225.x, x_225.y));
  let x_228 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_228, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_232 : vec4<f32> = u_xlat3;
  let x_234 : f32 = x_55.x_RenderViewportScaleFactor;
  u_xlat3 = (x_232 * vec4<f32>(x_234, x_234, x_234, x_234));
  let x_242 : vec4<f32> = u_xlat3;
  let x_244 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_242.x, x_242.y));
  u_xlat4 = x_244;
  let x_248 : vec4<f32> = u_xlat3;
  let x_250 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_248.z, x_248.w));
  u_xlat3 = x_250;
  let x_251 : vec4<f32> = u_xlat3;
  let x_253 : vec4<f32> = u_xlat4;
  u_xlat3 = ((x_251 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_253);
  let x_255 : vec4<f32> = u_xlat2;
  let x_259 : vec3<f32> = x_55.x_Bloom_Settings;
  let x_262 : vec2<f32> = vs_TEXCOORD0;
  let x_263 : vec2<f32> = ((-(vec2<f32>(x_255.z, x_255.y)) * vec2<f32>(x_259.x, x_259.x)) + x_262);
  let x_264 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_263.x, x_264.y, x_264.z, x_263.y);
  let x_266 : vec4<f32> = u_xlat0;
  let x_270 : vec2<f32> = clamp(vec2<f32>(x_266.x, x_266.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_271 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_270.x, x_271.y, x_271.z, x_270.y);
  let x_273 : vec4<f32> = u_xlat0;
  let x_276 : f32 = x_55.x_RenderViewportScaleFactor;
  let x_278 : vec2<f32> = (vec2<f32>(x_273.x, x_273.w) * vec2<f32>(x_276, x_276));
  let x_279 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_278.x, x_279.y, x_279.z, x_278.y);
  let x_284 : vec4<f32> = u_xlat0;
  let x_286 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_284.x, x_284.w));
  u_xlat4 = x_286;
  let x_287 : vec4<f32> = u_xlat3;
  let x_288 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_287 + x_288);
  let x_290 : vec4<f32> = u_xlat2;
  let x_293 : vec3<f32> = x_55.x_Bloom_Settings;
  let x_296 : vec2<f32> = vs_TEXCOORD0;
  u_xlat4 = ((vec4<f32>(x_290.z, x_290.w, x_290.x, x_290.w) * vec4<f32>(x_293.x, x_293.x, x_293.x, x_293.x)) + vec4<f32>(x_296.x, x_296.y, x_296.x, x_296.y));
  let x_299 : vec4<f32> = u_xlat4;
  u_xlat4 = clamp(x_299, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_303 : vec4<f32> = u_xlat4;
  let x_305 : f32 = x_55.x_RenderViewportScaleFactor;
  u_xlat4 = (x_303 * vec4<f32>(x_305, x_305, x_305, x_305));
  let x_311 : vec4<f32> = u_xlat4;
  let x_313 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_311.x, x_311.y));
  u_xlat5 = x_313;
  let x_314 : vec4<f32> = u_xlat5;
  let x_316 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_314 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_316);
  let x_321 : vec3<f32> = u_xlat7;
  let x_323 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_321.x, x_321.y));
  u_xlat0 = x_323;
  let x_324 : vec4<f32> = u_xlat0;
  let x_328 : vec4<f32> = u_xlat3;
  u_xlat0 = ((x_324 * vec4<f32>(4.0f, 4.0f, 4.0f, 4.0f)) + x_328);
  let x_333 : vec4<f32> = u_xlat4;
  let x_335 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_333.z, x_333.w));
  u_xlat3 = x_335;
  let x_336 : vec4<f32> = u_xlat3;
  let x_338 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_336 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_338);
  let x_340 : vec4<f32> = u_xlat2;
  let x_343 : vec3<f32> = x_55.x_Bloom_Settings;
  let x_346 : vec2<f32> = vs_TEXCOORD0;
  u_xlat3 = ((vec4<f32>(x_340.z, x_340.y, x_340.w, x_340.y) * vec4<f32>(x_343.x, x_343.x, x_343.x, x_343.x)) + vec4<f32>(x_346.x, x_346.y, x_346.x, x_346.y));
  let x_349 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_349, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_353 : vec4<f32> = u_xlat3;
  let x_355 : f32 = x_55.x_RenderViewportScaleFactor;
  u_xlat3 = (x_353 * vec4<f32>(x_355, x_355, x_355, x_355));
  let x_361 : vec4<f32> = u_xlat3;
  let x_363 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_361.x, x_361.y));
  u_xlat4 = x_363;
  let x_364 : vec4<f32> = u_xlat0;
  let x_365 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_364 + x_365);
  let x_370 : vec4<f32> = u_xlat3;
  let x_372 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_370.z, x_370.w));
  u_xlat3 = x_372;
  let x_373 : vec4<f32> = u_xlat3;
  let x_375 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_373 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_375);
  let x_377 : vec4<f32> = u_xlat2;
  let x_380 : vec3<f32> = x_55.x_Bloom_Settings;
  let x_383 : vec2<f32> = vs_TEXCOORD0;
  let x_384 : vec2<f32> = ((vec2<f32>(x_377.x, x_377.y) * vec2<f32>(x_380.x, x_380.x)) + x_383);
  let x_385 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_384.x, x_384.y, x_385.z, x_385.w);
  let x_387 : vec4<f32> = u_xlat2;
  let x_391 : vec2<f32> = clamp(vec2<f32>(x_387.x, x_387.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_392 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_391.x, x_391.y, x_392.z, x_392.w);
  let x_394 : vec4<f32> = u_xlat2;
  let x_397 : f32 = x_55.x_RenderViewportScaleFactor;
  let x_399 : vec2<f32> = (vec2<f32>(x_394.x, x_394.y) * vec2<f32>(x_397, x_397));
  let x_400 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_399.x, x_399.y, x_400.z, x_400.w);
  let x_405 : vec4<f32> = u_xlat2;
  let x_407 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_405.x, x_405.y));
  u_xlat2 = x_407;
  let x_408 : vec4<f32> = u_xlat0;
  let x_409 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_408 + x_409);
  let x_411 : vec4<f32> = u_xlat0;
  let x_413 : vec3<f32> = x_55.x_Bloom_Settings;
  u_xlat0 = (x_411 * vec4<f32>(x_413.y, x_413.y, x_413.y, x_413.y));
  let x_416 : vec2<f32> = vs_TEXCOORD0;
  let x_419 : vec4<f32> = x_55.x_Bloom_DirtTileOffset;
  let x_423 : vec4<f32> = x_55.x_Bloom_DirtTileOffset;
  let x_425 : vec2<f32> = ((x_416 * vec2<f32>(x_419.x, x_419.y)) + vec2<f32>(x_423.z, x_423.w));
  let x_426 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_425.x, x_425.y, x_426.z, x_426.w);
  let x_433 : vec4<f32> = u_xlat2;
  let x_435 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_433.x, x_433.y));
  let x_436 : vec3<f32> = vec3<f32>(x_435.x, x_435.y, x_435.z);
  let x_437 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_436.x, x_436.y, x_436.z, x_437.w);
  let x_439 : vec4<f32> = u_xlat0;
  u_xlat3 = (x_439 * vec4<f32>(0.0625f, 0.0625f, 0.0625f, 0.0625f));
  let x_443 : vec4<f32> = u_xlat2;
  let x_446 : vec3<f32> = x_55.x_Bloom_Settings;
  let x_448 : vec3<f32> = (vec3<f32>(x_443.x, x_443.y, x_443.z) * vec3<f32>(x_446.z, x_446.z, x_446.z));
  let x_449 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_448.x, x_448.y, x_448.z, x_449.w);
  u_xlat2.w = 0.0f;
  let x_452 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_452 * vec4<f32>(0.0625f, 0.0625f, 0.0625f, 1.0f));
  let x_455 : vec4<f32> = u_xlat0;
  let x_459 : vec3<f32> = x_55.x_Bloom_Color;
  let x_460 : vec3<f32> = (vec3<f32>(x_455.x, x_455.y, x_455.z) * x_459);
  let x_461 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_460.x, x_460.y, x_460.z, x_461.w);
  let x_464 : f32 = u_xlat0.w;
  u_xlat4.w = (x_464 * 0.0625f);
  let x_467 : vec4<f32> = u_xlat1;
  let x_468 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_467 + x_468);
  let x_470 : vec4<f32> = u_xlat2;
  let x_471 : vec4<f32> = u_xlat3;
  let x_473 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_470 * x_471) + x_473);
  let x_481 : f32 = x_55.x_Vignette_Mode;
  u_xlatb1.x = (x_481 < 0.5f);
  let x_486 : bool = u_xlatb1.x;
  if (x_486) {
    let x_489 : vec2<f32> = vs_TEXCOORD0;
    let x_493 : vec2<f32> = x_55.x_Vignette_Center;
    let x_495 : vec2<f32> = (x_489 + -(x_493));
    let x_496 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_495.x, x_495.y, x_496.z, x_496.w);
    let x_498 : vec4<f32> = u_xlat1;
    let x_503 : vec4<f32> = x_55.x_Vignette_Settings;
    let x_505 : vec2<f32> = (abs(vec2<f32>(x_498.y, x_498.x)) * vec2<f32>(x_503.x, x_503.x));
    let x_506 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_506.x, x_505.x, x_505.y, x_506.w);
    let x_511 : f32 = x_55.x_ScreenParams.x;
    let x_514 : f32 = x_55.x_ScreenParams.y;
    u_xlat22 = (x_511 / x_514);
    let x_516 : f32 = u_xlat22;
    u_xlat22 = (x_516 + -1.0f);
    let x_519 : f32 = x_55.x_Vignette_Settings.w;
    let x_520 : f32 = u_xlat22;
    u_xlat22 = ((x_519 * x_520) + 1.0f);
    let x_523 : f32 = u_xlat22;
    let x_526 : f32 = u_xlat1.z;
    u_xlat1.x = (x_523 * x_526);
    let x_529 : vec4<f32> = u_xlat1;
    let x_530 : vec2<f32> = vec2<f32>(x_529.x, x_529.y);
    let x_531 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_530.x, x_530.y, x_531.z, x_531.w);
    let x_533 : vec4<f32> = u_xlat1;
    let x_537 : vec2<f32> = clamp(vec2<f32>(x_533.x, x_533.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_538 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_537.x, x_537.y, x_538.z, x_538.w);
    let x_540 : vec4<f32> = u_xlat1;
    let x_542 : vec2<f32> = log2(vec2<f32>(x_540.x, x_540.y));
    let x_543 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_542.x, x_542.y, x_543.z, x_543.w);
    let x_545 : vec4<f32> = u_xlat1;
    let x_548 : vec4<f32> = x_55.x_Vignette_Settings;
    let x_550 : vec2<f32> = (vec2<f32>(x_545.x, x_545.y) * vec2<f32>(x_548.z, x_548.z));
    let x_551 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_550.x, x_550.y, x_551.z, x_551.w);
    let x_553 : vec4<f32> = u_xlat1;
    let x_555 : vec2<f32> = exp2(vec2<f32>(x_553.x, x_553.y));
    let x_556 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_555.x, x_555.y, x_556.z, x_556.w);
    let x_558 : vec4<f32> = u_xlat1;
    let x_560 : vec4<f32> = u_xlat1;
    u_xlat1.x = dot(vec2<f32>(x_558.x, x_558.y), vec2<f32>(x_560.x, x_560.y));
    let x_565 : f32 = u_xlat1.x;
    u_xlat1.x = (-(x_565) + 1.0f);
    let x_570 : f32 = u_xlat1.x;
    u_xlat1.x = max(x_570, 0.0f);
    let x_574 : f32 = u_xlat1.x;
    u_xlat1.x = log2(x_574);
    let x_578 : f32 = u_xlat1.x;
    let x_580 : f32 = x_55.x_Vignette_Settings.y;
    u_xlat1.x = (x_578 * x_580);
    let x_584 : f32 = u_xlat1.x;
    u_xlat1.x = exp2(x_584);
    let x_590 : vec3<f32> = x_55.x_Vignette_Color;
    u_xlat8 = (-(x_590) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_594 : vec4<f32> = u_xlat1;
    let x_596 : vec3<f32> = u_xlat8;
    let x_599 : vec3<f32> = x_55.x_Vignette_Color;
    u_xlat8 = ((vec3<f32>(x_594.x, x_594.x, x_594.x) * x_596) + x_599);
    let x_601 : vec4<f32> = u_xlat0;
    let x_603 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_601.x, x_601.y, x_601.z) * x_603);
    let x_606 : f32 = u_xlat0.w;
    u_xlat2.x = (x_606 + -1.0f);
    let x_610 : f32 = u_xlat1.x;
    let x_612 : f32 = u_xlat2.x;
    u_xlat2.w = ((x_610 * x_612) + 1.0f);
  } else {
    let x_622 : vec2<f32> = vs_TEXCOORD0;
    let x_623 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_622);
    u_xlat1.x = x_623.w;
    let x_627 : f32 = u_xlat1.x;
    u_xlat3.x = (x_627 * 0.077399381f);
    let x_633 : f32 = u_xlat1.x;
    u_xlat10 = (x_633 + 0.055f);
    let x_636 : f32 = u_xlat10;
    u_xlat10 = (x_636 * 0.947867334f);
    let x_639 : f32 = u_xlat10;
    u_xlat10 = max(abs(x_639), 1.1920929e-07f);
    let x_643 : f32 = u_xlat10;
    u_xlat10 = log2(x_643);
    let x_645 : f32 = u_xlat10;
    u_xlat10 = (x_645 * 2.400000095f);
    let x_648 : f32 = u_xlat10;
    u_xlat10 = exp2(x_648);
    let x_652 : f32 = u_xlat1.x;
    u_xlatb1.x = (0.040449999f >= x_652);
    let x_656 : bool = u_xlatb1.x;
    if (x_656) {
      let x_662 : f32 = u_xlat3.x;
      x_658 = x_662;
    } else {
      let x_664 : f32 = u_xlat10;
      x_658 = x_664;
    }
    let x_665 : f32 = x_658;
    u_xlat1.x = x_665;
    let x_668 : vec3<f32> = x_55.x_Vignette_Color;
    let x_670 : vec3<f32> = (-(x_668) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_671 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_670.x, x_670.y, x_670.z, x_671.w);
    let x_673 : vec4<f32> = u_xlat1;
    let x_675 : vec4<f32> = u_xlat3;
    let x_679 : vec3<f32> = x_55.x_Vignette_Color;
    let x_680 : vec3<f32> = ((vec3<f32>(x_673.x, x_673.x, x_673.x) * vec3<f32>(x_675.x, x_675.y, x_675.z)) + x_679);
    let x_681 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_680.x, x_680.y, x_680.z, x_681.w);
    let x_683 : vec4<f32> = u_xlat0;
    let x_685 : vec4<f32> = u_xlat3;
    let x_688 : vec4<f32> = u_xlat0;
    let x_691 : vec3<f32> = ((vec3<f32>(x_683.x, x_683.y, x_683.z) * vec3<f32>(x_685.x, x_685.y, x_685.z)) + -(vec3<f32>(x_688.x, x_688.y, x_688.z)));
    let x_692 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_691.x, x_691.y, x_691.z, x_692.w);
    let x_696 : f32 = x_55.x_Vignette_Opacity;
    let x_698 : vec4<f32> = u_xlat3;
    let x_701 : vec4<f32> = u_xlat0;
    u_xlat8 = ((vec3<f32>(x_696, x_696, x_696) * vec3<f32>(x_698.x, x_698.y, x_698.z)) + vec3<f32>(x_701.x, x_701.y, x_701.z));
    let x_705 : f32 = u_xlat0.w;
    u_xlat0.x = (x_705 + -1.0f);
    let x_709 : f32 = u_xlat1.x;
    let x_711 : f32 = u_xlat0.x;
    u_xlat2.w = ((x_709 * x_711) + 1.0f);
  }
  let x_715 : vec2<f32> = vs_TEXCOORD0;
  let x_718 : vec4<f32> = x_55.x_Dithering_Coords;
  let x_722 : vec4<f32> = x_55.x_Dithering_Coords;
  let x_724 : vec2<f32> = ((x_715 * vec2<f32>(x_718.x, x_718.y)) + vec2<f32>(x_722.z, x_722.w));
  let x_725 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_724.x, x_724.y, x_725.z, x_725.w);
  let x_732 : vec4<f32> = u_xlat0;
  let x_734 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_732.x, x_732.y));
  u_xlat0.x = x_734.w;
  let x_738 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_738 * 2.0f) + -1.0f);
  let x_743 : f32 = u_xlat0.x;
  u_xlat7.x = ((x_743 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_749 : f32 = u_xlat7.x;
  u_xlat7.x = clamp(x_749, 0.0f, 1.0f);
  let x_753 : f32 = u_xlat7.x;
  u_xlat7.x = ((x_753 * 2.0f) + -1.0f);
  let x_758 : f32 = u_xlat0.x;
  u_xlat0.x = (-(abs(x_758)) + 1.0f);
  let x_764 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_764);
  let x_768 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_768) + 1.0f);
  let x_773 : f32 = u_xlat0.x;
  let x_775 : f32 = u_xlat7.x;
  u_xlat0.x = (x_773 * x_775);
  let x_778 : vec3<f32> = u_xlat8;
  u_xlat7 = (x_778 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_782 : vec3<f32> = u_xlat8;
  let x_785 : vec3<f32> = max(abs(x_782), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_786 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_785.x, x_785.y, x_785.z, x_786.w);
  let x_788 : vec4<f32> = u_xlat3;
  let x_790 : vec3<f32> = log2(vec3<f32>(x_788.x, x_788.y, x_788.z));
  let x_791 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_790.x, x_790.y, x_790.z, x_791.w);
  let x_793 : vec4<f32> = u_xlat3;
  let x_797 : vec3<f32> = (vec3<f32>(x_793.x, x_793.y, x_793.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_798 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_797.x, x_797.y, x_797.z, x_798.w);
  let x_800 : vec4<f32> = u_xlat3;
  let x_802 : vec3<f32> = exp2(vec3<f32>(x_800.x, x_800.y, x_800.z));
  let x_803 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_802.x, x_802.y, x_802.z, x_803.w);
  let x_805 : vec4<f32> = u_xlat3;
  let x_812 : vec3<f32> = ((vec3<f32>(x_805.x, x_805.y, x_805.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_813 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_812.x, x_812.y, x_812.z, x_813.w);
  let x_817 : vec3<f32> = u_xlat8;
  let x_820 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_817.x, x_817.y, x_817.z, x_817.x));
  u_xlatb1 = vec3<bool>(x_820.x, x_820.y, x_820.z);
  let x_824 : vec3<f32> = u_xlat7;
  hlslcc_movcTemp = x_824;
  let x_826 : bool = u_xlatb1.x;
  if (x_826) {
    let x_831 : f32 = u_xlat7.x;
    x_827 = x_831;
  } else {
    let x_834 : f32 = u_xlat3.x;
    x_827 = x_834;
  }
  let x_835 : f32 = x_827;
  hlslcc_movcTemp.x = x_835;
  let x_838 : bool = u_xlatb1.y;
  if (x_838) {
    let x_843 : f32 = u_xlat7.y;
    x_839 = x_843;
  } else {
    let x_846 : f32 = u_xlat3.y;
    x_839 = x_846;
  }
  let x_847 : f32 = x_839;
  hlslcc_movcTemp.y = x_847;
  let x_850 : bool = u_xlatb1.z;
  if (x_850) {
    let x_855 : f32 = u_xlat7.z;
    x_851 = x_855;
  } else {
    let x_858 : f32 = u_xlat3.z;
    x_851 = x_858;
  }
  let x_859 : f32 = x_851;
  hlslcc_movcTemp.z = x_859;
  let x_861 : vec3<f32> = hlslcc_movcTemp;
  u_xlat7 = x_861;
  let x_862 : vec4<f32> = u_xlat0;
  let x_867 : vec3<f32> = u_xlat7;
  let x_868 : vec3<f32> = ((vec3<f32>(x_862.x, x_862.x, x_862.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + x_867);
  let x_869 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_868.x, x_868.y, x_868.z, x_869.w);
  let x_871 : vec4<f32> = u_xlat0;
  let x_874 : vec3<f32> = (vec3<f32>(x_871.x, x_871.y, x_871.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_875 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_874.x, x_874.y, x_874.z, x_875.w);
  let x_877 : vec4<f32> = u_xlat0;
  let x_880 : vec3<f32> = (vec3<f32>(x_877.x, x_877.y, x_877.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_881 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_880.x, x_880.y, x_880.z, x_881.w);
  let x_883 : vec4<f32> = u_xlat3;
  let x_886 : vec3<f32> = (vec3<f32>(x_883.x, x_883.y, x_883.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_887 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_886.x, x_886.y, x_886.z, x_887.w);
  let x_889 : vec4<f32> = u_xlat3;
  let x_892 : vec3<f32> = max(abs(vec3<f32>(x_889.x, x_889.y, x_889.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_893 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_892.x, x_892.y, x_892.z, x_893.w);
  let x_895 : vec4<f32> = u_xlat3;
  let x_897 : vec3<f32> = log2(vec3<f32>(x_895.x, x_895.y, x_895.z));
  let x_898 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_897.x, x_897.y, x_897.z, x_898.w);
  let x_900 : vec4<f32> = u_xlat3;
  let x_903 : vec3<f32> = (vec3<f32>(x_900.x, x_900.y, x_900.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_904 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_903.x, x_903.y, x_903.z, x_904.w);
  let x_906 : vec4<f32> = u_xlat3;
  let x_908 : vec3<f32> = exp2(vec3<f32>(x_906.x, x_906.y, x_906.z));
  let x_909 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_908.x, x_908.y, x_908.z, x_909.w);
  let x_913 : vec4<f32> = u_xlat0;
  let x_915 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_913.x, x_913.y, x_913.z, x_913.x));
  u_xlatb0 = vec3<bool>(x_915.x, x_915.y, x_915.z);
  let x_918 : bool = u_xlatb0.x;
  if (x_918) {
    let x_923 : f32 = u_xlat1.x;
    x_919 = x_923;
  } else {
    let x_926 : f32 = u_xlat3.x;
    x_919 = x_926;
  }
  let x_927 : f32 = x_919;
  u_xlat2.x = x_927;
  let x_930 : bool = u_xlatb0.y;
  if (x_930) {
    let x_935 : f32 = u_xlat1.y;
    x_931 = x_935;
  } else {
    let x_938 : f32 = u_xlat3.y;
    x_931 = x_938;
  }
  let x_939 : f32 = x_931;
  u_xlat2.y = x_939;
  let x_942 : bool = u_xlatb0.z;
  if (x_942) {
    let x_947 : f32 = u_xlat1.z;
    x_943 = x_947;
  } else {
    let x_950 : f32 = u_xlat3.z;
    x_943 = x_950;
  }
  let x_951 : f32 = x_943;
  u_xlat2.z = x_951;
  let x_955 : vec4<f32> = u_xlat2;
  SV_Target0 = x_955;
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

