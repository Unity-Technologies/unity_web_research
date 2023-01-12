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
  x_Lut2D_Params : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_Vignette_Color : vec3<f32>,
  @size(4)
  padding_3 : u32,
  x_Vignette_Center : vec2<f32>,
  @size(8)
  padding_4 : u32,
  x_Vignette_Settings : vec4<f32>,
  x_Vignette_Opacity : f32,
  x_Vignette_Mode : f32,
  x_Grain_Params1 : vec2<f32>,
  x_Grain_Params2 : vec4<f32>,
}

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_55 : PGlobals;

@group(0) @binding(5) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(14) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainTex : sampler;

@group(0) @binding(3) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_BloomTex : sampler;

@group(0) @binding(4) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(13) var sampler_Bloom_DirtTex : sampler;

@group(0) @binding(7) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(16) var sampler_Vignette_Mask : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(8) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(17) var sampler_GrainTex : sampler;

@group(0) @binding(6) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(15) var sampler_Lut2D : sampler;

@group(0) @binding(0) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_DitheringTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlatb1 : bool;
  var u_xlat22 : f32;
  var u_xlat8 : vec3<f32>;
  var u_xlat10 : f32;
  var x_651 : f32;
  var u_xlat21 : f32;
  var u_xlatb2 : vec3<bool>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_845 : f32;
  var x_857 : f32;
  var x_869 : f32;
  var u_xlat14 : vec2<f32>;
  var u_xlatb0 : vec3<bool>;
  var x_1021 : f32;
  var x_1033 : f32;
  var x_1045 : f32;
  var x_1144 : f32;
  var x_1156 : f32;
  var x_1168 : f32;
  var x_1232 : f32;
  var x_1245 : f32;
  var x_1257 : f32;
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
  let x_480 : f32 = x_55.x_Vignette_Mode;
  u_xlatb1 = (x_480 < 0.5f);
  let x_482 : bool = u_xlatb1;
  if (x_482) {
    let x_485 : vec2<f32> = vs_TEXCOORD0;
    let x_489 : vec2<f32> = x_55.x_Vignette_Center;
    let x_491 : vec2<f32> = (x_485 + -(x_489));
    let x_492 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_491.x, x_491.y, x_492.z, x_492.w);
    let x_494 : vec4<f32> = u_xlat1;
    let x_499 : vec4<f32> = x_55.x_Vignette_Settings;
    let x_501 : vec2<f32> = (abs(vec2<f32>(x_494.y, x_494.x)) * vec2<f32>(x_499.x, x_499.x));
    let x_502 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_502.x, x_501.x, x_501.y, x_502.w);
    let x_507 : f32 = x_55.x_ScreenParams.x;
    let x_510 : f32 = x_55.x_ScreenParams.y;
    u_xlat22 = (x_507 / x_510);
    let x_512 : f32 = u_xlat22;
    u_xlat22 = (x_512 + -1.0f);
    let x_515 : f32 = x_55.x_Vignette_Settings.w;
    let x_516 : f32 = u_xlat22;
    u_xlat22 = ((x_515 * x_516) + 1.0f);
    let x_519 : f32 = u_xlat22;
    let x_522 : f32 = u_xlat1.z;
    u_xlat1.x = (x_519 * x_522);
    let x_525 : vec4<f32> = u_xlat1;
    let x_526 : vec2<f32> = vec2<f32>(x_525.x, x_525.y);
    let x_527 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_526.x, x_526.y, x_527.z, x_527.w);
    let x_529 : vec4<f32> = u_xlat1;
    let x_533 : vec2<f32> = clamp(vec2<f32>(x_529.x, x_529.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_534 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_533.x, x_533.y, x_534.z, x_534.w);
    let x_536 : vec4<f32> = u_xlat1;
    let x_538 : vec2<f32> = log2(vec2<f32>(x_536.x, x_536.y));
    let x_539 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_538.x, x_538.y, x_539.z, x_539.w);
    let x_541 : vec4<f32> = u_xlat1;
    let x_544 : vec4<f32> = x_55.x_Vignette_Settings;
    let x_546 : vec2<f32> = (vec2<f32>(x_541.x, x_541.y) * vec2<f32>(x_544.z, x_544.z));
    let x_547 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_546.x, x_546.y, x_547.z, x_547.w);
    let x_549 : vec4<f32> = u_xlat1;
    let x_551 : vec2<f32> = exp2(vec2<f32>(x_549.x, x_549.y));
    let x_552 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_551.x, x_551.y, x_552.z, x_552.w);
    let x_554 : vec4<f32> = u_xlat1;
    let x_556 : vec4<f32> = u_xlat1;
    u_xlat1.x = dot(vec2<f32>(x_554.x, x_554.y), vec2<f32>(x_556.x, x_556.y));
    let x_561 : f32 = u_xlat1.x;
    u_xlat1.x = (-(x_561) + 1.0f);
    let x_566 : f32 = u_xlat1.x;
    u_xlat1.x = max(x_566, 0.0f);
    let x_570 : f32 = u_xlat1.x;
    u_xlat1.x = log2(x_570);
    let x_574 : f32 = u_xlat1.x;
    let x_576 : f32 = x_55.x_Vignette_Settings.y;
    u_xlat1.x = (x_574 * x_576);
    let x_580 : f32 = u_xlat1.x;
    u_xlat1.x = exp2(x_580);
    let x_586 : vec3<f32> = x_55.x_Vignette_Color;
    u_xlat8 = (-(x_586) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_590 : vec4<f32> = u_xlat1;
    let x_592 : vec3<f32> = u_xlat8;
    let x_595 : vec3<f32> = x_55.x_Vignette_Color;
    u_xlat8 = ((vec3<f32>(x_590.x, x_590.x, x_590.x) * x_592) + x_595);
    let x_597 : vec4<f32> = u_xlat0;
    let x_599 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_597.x, x_597.y, x_597.z) * x_599);
    let x_602 : f32 = u_xlat0.w;
    u_xlat2.x = (x_602 + -1.0f);
    let x_606 : f32 = u_xlat1.x;
    let x_608 : f32 = u_xlat2.x;
    u_xlat2.w = ((x_606 * x_608) + 1.0f);
  } else {
    let x_618 : vec2<f32> = vs_TEXCOORD0;
    let x_619 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_618);
    u_xlat1.x = x_619.w;
    let x_623 : f32 = u_xlat1.x;
    u_xlat3.x = (x_623 * 0.077399381f);
    let x_629 : f32 = u_xlat1.x;
    u_xlat10 = (x_629 + 0.055f);
    let x_632 : f32 = u_xlat10;
    u_xlat10 = (x_632 * 0.947867334f);
    let x_635 : f32 = u_xlat10;
    u_xlat10 = max(abs(x_635), 1.1920929e-07f);
    let x_639 : f32 = u_xlat10;
    u_xlat10 = log2(x_639);
    let x_641 : f32 = u_xlat10;
    u_xlat10 = (x_641 * 2.400000095f);
    let x_644 : f32 = u_xlat10;
    u_xlat10 = exp2(x_644);
    let x_648 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_648);
    let x_650 : bool = u_xlatb1;
    if (x_650) {
      let x_655 : f32 = u_xlat3.x;
      x_651 = x_655;
    } else {
      let x_657 : f32 = u_xlat10;
      x_651 = x_657;
    }
    let x_658 : f32 = x_651;
    u_xlat1.x = x_658;
    let x_661 : vec3<f32> = x_55.x_Vignette_Color;
    let x_663 : vec3<f32> = (-(x_661) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_664 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_663.x, x_663.y, x_663.z, x_664.w);
    let x_666 : vec4<f32> = u_xlat1;
    let x_668 : vec4<f32> = u_xlat3;
    let x_672 : vec3<f32> = x_55.x_Vignette_Color;
    let x_673 : vec3<f32> = ((vec3<f32>(x_666.x, x_666.x, x_666.x) * vec3<f32>(x_668.x, x_668.y, x_668.z)) + x_672);
    let x_674 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_673.x, x_673.y, x_673.z, x_674.w);
    let x_676 : vec4<f32> = u_xlat0;
    let x_678 : vec4<f32> = u_xlat3;
    let x_681 : vec4<f32> = u_xlat0;
    let x_684 : vec3<f32> = ((vec3<f32>(x_676.x, x_676.y, x_676.z) * vec3<f32>(x_678.x, x_678.y, x_678.z)) + -(vec3<f32>(x_681.x, x_681.y, x_681.z)));
    let x_685 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_684.x, x_684.y, x_684.z, x_685.w);
    let x_689 : f32 = x_55.x_Vignette_Opacity;
    let x_691 : vec4<f32> = u_xlat3;
    let x_694 : vec4<f32> = u_xlat0;
    u_xlat8 = ((vec3<f32>(x_689, x_689, x_689) * vec3<f32>(x_691.x, x_691.y, x_691.z)) + vec3<f32>(x_694.x, x_694.y, x_694.z));
    let x_698 : f32 = u_xlat0.w;
    u_xlat0.x = (x_698 + -1.0f);
    let x_702 : f32 = u_xlat1.x;
    let x_704 : f32 = u_xlat0.x;
    u_xlat2.w = ((x_702 * x_704) + 1.0f);
  }
  let x_709 : vec2<f32> = vs_TEXCOORD1;
  let x_712 : vec4<f32> = x_55.x_Grain_Params2;
  let x_716 : vec4<f32> = x_55.x_Grain_Params2;
  let x_718 : vec2<f32> = ((x_709 * vec2<f32>(x_712.x, x_712.y)) + vec2<f32>(x_716.z, x_716.w));
  let x_719 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_718.x, x_718.y, x_719.z, x_719.w);
  let x_726 : vec4<f32> = u_xlat0;
  let x_728 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_726.x, x_726.y));
  let x_729 : vec3<f32> = vec3<f32>(x_728.x, x_728.y, x_728.z);
  let x_730 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_729.x, x_729.y, x_729.z, x_730.w);
  let x_732 : vec3<f32> = u_xlat8;
  let x_733 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_732.x, x_732.y, x_732.z, x_733.w);
  let x_735 : vec4<f32> = u_xlat3;
  let x_739 : vec3<f32> = clamp(vec3<f32>(x_735.x, x_735.y, x_735.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_740 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_739.x, x_739.y, x_739.z, x_740.w);
  let x_743 : vec4<f32> = u_xlat3;
  u_xlat21 = dot(vec3<f32>(x_743.x, x_743.y, x_743.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_750 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_750);
  let x_754 : f32 = x_55.x_Grain_Params1.x;
  let x_755 : f32 = u_xlat21;
  u_xlat21 = ((x_754 * -(x_755)) + 1.0f);
  let x_759 : vec4<f32> = u_xlat0;
  let x_761 : vec3<f32> = u_xlat8;
  let x_762 : vec3<f32> = (vec3<f32>(x_759.x, x_759.y, x_759.z) * x_761);
  let x_763 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_762.x, x_762.y, x_762.z, x_763.w);
  let x_765 : vec4<f32> = u_xlat0;
  let x_768 : f32 = x_55.x_Grain_Params1.y;
  let x_770 : f32 = x_55.x_Grain_Params1.y;
  let x_772 : f32 = x_55.x_Grain_Params1.y;
  let x_774 : vec3<f32> = (vec3<f32>(x_765.x, x_765.y, x_765.z) * vec3<f32>(x_768, x_770, x_772));
  let x_775 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_774.x, x_774.y, x_774.z, x_775.w);
  let x_777 : vec4<f32> = u_xlat0;
  let x_779 : f32 = u_xlat21;
  let x_782 : vec3<f32> = u_xlat8;
  let x_783 : vec3<f32> = ((vec3<f32>(x_777.x, x_777.y, x_777.z) * vec3<f32>(x_779, x_779, x_779)) + x_782);
  let x_784 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_783.x, x_783.y, x_783.z, x_784.w);
  let x_786 : vec4<f32> = u_xlat2;
  u_xlat2 = x_786;
  let x_787 : vec4<f32> = u_xlat2;
  u_xlat2 = clamp(x_787, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_791 : vec4<f32> = u_xlat2;
  let x_795 : vec3<f32> = (vec3<f32>(x_791.z, x_791.x, x_791.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_796 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_795.x, x_795.y, x_795.z, x_796.w);
  let x_798 : vec4<f32> = u_xlat2;
  let x_801 : vec3<f32> = max(vec3<f32>(x_798.z, x_798.x, x_798.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_802 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_801.x, x_801.y, x_801.z, x_802.w);
  let x_804 : vec4<f32> = u_xlat1;
  let x_806 : vec3<f32> = log2(vec3<f32>(x_804.x, x_804.y, x_804.z));
  let x_807 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_806.x, x_806.y, x_806.z, x_807.w);
  let x_809 : vec4<f32> = u_xlat1;
  let x_813 : vec3<f32> = (vec3<f32>(x_809.x, x_809.y, x_809.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_814 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_813.x, x_813.y, x_813.z, x_814.w);
  let x_816 : vec4<f32> = u_xlat1;
  let x_818 : vec3<f32> = exp2(vec3<f32>(x_816.x, x_816.y, x_816.z));
  let x_819 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_818.x, x_818.y, x_818.z, x_819.w);
  let x_821 : vec4<f32> = u_xlat1;
  let x_828 : vec3<f32> = ((vec3<f32>(x_821.x, x_821.y, x_821.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_829 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_828.x, x_828.y, x_828.z, x_829.w);
  let x_836 : vec4<f32> = u_xlat2;
  let x_839 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_836.z, x_836.x, x_836.y, x_836.z));
  u_xlatb2 = vec3<bool>(x_839.x, x_839.y, x_839.z);
  let x_842 : vec4<f32> = u_xlat0;
  hlslcc_movcTemp = x_842;
  let x_844 : bool = u_xlatb2.x;
  if (x_844) {
    let x_849 : f32 = u_xlat0.x;
    x_845 = x_849;
  } else {
    let x_852 : f32 = u_xlat1.x;
    x_845 = x_852;
  }
  let x_853 : f32 = x_845;
  hlslcc_movcTemp.x = x_853;
  let x_856 : bool = u_xlatb2.y;
  if (x_856) {
    let x_861 : f32 = u_xlat0.y;
    x_857 = x_861;
  } else {
    let x_864 : f32 = u_xlat1.y;
    x_857 = x_864;
  }
  let x_865 : f32 = x_857;
  hlslcc_movcTemp.y = x_865;
  let x_868 : bool = u_xlatb2.z;
  if (x_868) {
    let x_873 : f32 = u_xlat0.z;
    x_869 = x_873;
  } else {
    let x_876 : f32 = u_xlat1.z;
    x_869 = x_876;
  }
  let x_877 : f32 = x_869;
  hlslcc_movcTemp.z = x_877;
  let x_879 : vec4<f32> = hlslcc_movcTemp;
  u_xlat0 = x_879;
  let x_880 : vec4<f32> = u_xlat0;
  let x_884 : vec3<f32> = x_55.x_Lut2D_Params;
  u_xlat7 = (vec3<f32>(x_880.x, x_880.y, x_880.z) * vec3<f32>(x_884.z, x_884.z, x_884.z));
  let x_888 : f32 = u_xlat7.x;
  u_xlat7.x = floor(x_888);
  let x_892 : vec3<f32> = x_55.x_Lut2D_Params;
  let x_895 : vec2<f32> = (vec2<f32>(x_892.x, x_892.y) * vec2<f32>(0.5f, 0.5f));
  let x_896 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_895.x, x_895.y, x_896.z, x_896.w);
  let x_898 : vec3<f32> = u_xlat7;
  let x_901 : vec3<f32> = x_55.x_Lut2D_Params;
  let x_904 : vec4<f32> = u_xlat1;
  let x_906 : vec2<f32> = ((vec2<f32>(x_898.y, x_898.z) * vec2<f32>(x_901.x, x_901.y)) + vec2<f32>(x_904.x, x_904.y));
  let x_907 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_907.x, x_906.x, x_906.y, x_907.w);
  let x_910 : f32 = u_xlat7.x;
  let x_912 : f32 = x_55.x_Lut2D_Params.y;
  let x_915 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_910 * x_912) + x_915);
  let x_923 : vec4<f32> = u_xlat1;
  let x_925 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_923.x, x_923.z));
  let x_926 : vec3<f32> = vec3<f32>(x_925.x, x_925.y, x_925.z);
  let x_927 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_926.x, x_926.y, x_926.z, x_927.w);
  let x_930 : f32 = x_55.x_Lut2D_Params.y;
  u_xlat3.x = x_930;
  u_xlat3.y = 0.0f;
  let x_935 : vec4<f32> = u_xlat1;
  let x_937 : vec4<f32> = u_xlat3;
  u_xlat14 = (vec2<f32>(x_935.x, x_935.z) + vec2<f32>(x_937.x, x_937.y));
  let x_943 : vec2<f32> = u_xlat14;
  let x_944 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_943);
  let x_945 : vec3<f32> = vec3<f32>(x_944.x, x_944.y, x_944.z);
  let x_946 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_945.x, x_945.y, x_945.z, x_946.w);
  let x_949 : f32 = u_xlat0.x;
  let x_951 : f32 = x_55.x_Lut2D_Params.z;
  let x_954 : f32 = u_xlat7.x;
  u_xlat0.x = ((x_949 * x_951) + -(x_954));
  let x_958 : vec4<f32> = u_xlat2;
  let x_961 : vec4<f32> = u_xlat1;
  u_xlat7 = (-(vec3<f32>(x_958.x, x_958.y, x_958.z)) + vec3<f32>(x_961.x, x_961.y, x_961.z));
  let x_964 : vec4<f32> = u_xlat0;
  let x_966 : vec3<f32> = u_xlat7;
  let x_968 : vec4<f32> = u_xlat2;
  let x_970 : vec3<f32> = ((vec3<f32>(x_964.x, x_964.x, x_964.x) * x_966) + vec3<f32>(x_968.x, x_968.y, x_968.z));
  let x_971 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_970.x, x_970.y, x_970.z, x_971.w);
  let x_973 : vec4<f32> = u_xlat0;
  let x_976 : vec3<f32> = (vec3<f32>(x_973.x, x_973.y, x_973.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_977 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_976.x, x_976.y, x_976.z, x_977.w);
  let x_979 : vec4<f32> = u_xlat0;
  let x_982 : vec3<f32> = (vec3<f32>(x_979.x, x_979.y, x_979.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_983 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_982.x, x_982.y, x_982.z, x_983.w);
  let x_985 : vec4<f32> = u_xlat2;
  let x_988 : vec3<f32> = (vec3<f32>(x_985.x, x_985.y, x_985.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_989 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_988.x, x_988.y, x_988.z, x_989.w);
  let x_991 : vec4<f32> = u_xlat2;
  let x_994 : vec3<f32> = max(abs(vec3<f32>(x_991.x, x_991.y, x_991.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_995 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_994.x, x_994.y, x_994.z, x_995.w);
  let x_997 : vec4<f32> = u_xlat2;
  let x_999 : vec3<f32> = log2(vec3<f32>(x_997.x, x_997.y, x_997.z));
  let x_1000 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_999.x, x_999.y, x_999.z, x_1000.w);
  let x_1002 : vec4<f32> = u_xlat2;
  let x_1005 : vec3<f32> = (vec3<f32>(x_1002.x, x_1002.y, x_1002.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1006 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1005.x, x_1005.y, x_1005.z, x_1006.w);
  let x_1008 : vec4<f32> = u_xlat2;
  let x_1010 : vec3<f32> = exp2(vec3<f32>(x_1008.x, x_1008.y, x_1008.z));
  let x_1011 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1010.x, x_1010.y, x_1010.z, x_1011.w);
  let x_1015 : vec4<f32> = u_xlat0;
  let x_1017 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1015.x, x_1015.y, x_1015.z, x_1015.x));
  u_xlatb0 = vec3<bool>(x_1017.x, x_1017.y, x_1017.z);
  let x_1020 : bool = u_xlatb0.x;
  if (x_1020) {
    let x_1025 : f32 = u_xlat1.x;
    x_1021 = x_1025;
  } else {
    let x_1028 : f32 = u_xlat2.x;
    x_1021 = x_1028;
  }
  let x_1029 : f32 = x_1021;
  u_xlat0.x = x_1029;
  let x_1032 : bool = u_xlatb0.y;
  if (x_1032) {
    let x_1037 : f32 = u_xlat1.y;
    x_1033 = x_1037;
  } else {
    let x_1040 : f32 = u_xlat2.y;
    x_1033 = x_1040;
  }
  let x_1041 : f32 = x_1033;
  u_xlat0.y = x_1041;
  let x_1044 : bool = u_xlatb0.z;
  if (x_1044) {
    let x_1049 : f32 = u_xlat1.z;
    x_1045 = x_1049;
  } else {
    let x_1052 : f32 = u_xlat2.z;
    x_1045 = x_1052;
  }
  let x_1053 : f32 = x_1045;
  u_xlat0.z = x_1053;
  let x_1055 : vec2<f32> = vs_TEXCOORD0;
  let x_1058 : vec4<f32> = x_55.x_Dithering_Coords;
  let x_1062 : vec4<f32> = x_55.x_Dithering_Coords;
  let x_1064 : vec2<f32> = ((x_1055 * vec2<f32>(x_1058.x, x_1058.y)) + vec2<f32>(x_1062.z, x_1062.w));
  let x_1065 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1064.x, x_1064.y, x_1065.z, x_1065.w);
  let x_1072 : vec4<f32> = u_xlat1;
  let x_1074 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_1072.x, x_1072.y));
  u_xlat21 = x_1074.w;
  let x_1076 : f32 = u_xlat21;
  u_xlat21 = ((x_1076 * 2.0f) + -1.0f);
  let x_1079 : f32 = u_xlat21;
  u_xlat1.x = ((x_1079 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_1085 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1085, 0.0f, 1.0f);
  let x_1089 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1089 * 2.0f) + -1.0f);
  let x_1093 : f32 = u_xlat21;
  u_xlat21 = (-(abs(x_1093)) + 1.0f);
  let x_1097 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_1097);
  let x_1099 : f32 = u_xlat21;
  u_xlat21 = (-(x_1099) + 1.0f);
  let x_1102 : f32 = u_xlat21;
  let x_1104 : f32 = u_xlat1.x;
  u_xlat21 = (x_1102 * x_1104);
  let x_1106 : vec4<f32> = u_xlat0;
  let x_1108 : vec3<f32> = (vec3<f32>(x_1106.x, x_1106.y, x_1106.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1109 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1108.x, x_1108.y, x_1108.z, x_1109.w);
  let x_1111 : vec4<f32> = u_xlat0;
  let x_1114 : vec3<f32> = max(abs(vec3<f32>(x_1111.x, x_1111.y, x_1111.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1115 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1114.x, x_1114.y, x_1114.z, x_1115.w);
  let x_1117 : vec4<f32> = u_xlat2;
  let x_1119 : vec3<f32> = log2(vec3<f32>(x_1117.x, x_1117.y, x_1117.z));
  let x_1120 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1119.x, x_1119.y, x_1119.z, x_1120.w);
  let x_1122 : vec4<f32> = u_xlat2;
  let x_1124 : vec3<f32> = (vec3<f32>(x_1122.x, x_1122.y, x_1122.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1125 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1124.x, x_1124.y, x_1124.z, x_1125.w);
  let x_1127 : vec4<f32> = u_xlat2;
  let x_1129 : vec3<f32> = exp2(vec3<f32>(x_1127.x, x_1127.y, x_1127.z));
  let x_1130 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1129.x, x_1129.y, x_1129.z, x_1130.w);
  let x_1132 : vec4<f32> = u_xlat2;
  let x_1135 : vec3<f32> = ((vec3<f32>(x_1132.x, x_1132.y, x_1132.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1136 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1135.x, x_1135.y, x_1135.z, x_1136.w);
  let x_1138 : vec4<f32> = u_xlat0;
  let x_1140 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1138.x, x_1138.y, x_1138.z, x_1138.x));
  u_xlatb0 = vec3<bool>(x_1140.x, x_1140.y, x_1140.z);
  let x_1143 : bool = u_xlatb0.x;
  if (x_1143) {
    let x_1148 : f32 = u_xlat1.x;
    x_1144 = x_1148;
  } else {
    let x_1151 : f32 = u_xlat2.x;
    x_1144 = x_1151;
  }
  let x_1152 : f32 = x_1144;
  u_xlat0.x = x_1152;
  let x_1155 : bool = u_xlatb0.y;
  if (x_1155) {
    let x_1160 : f32 = u_xlat1.y;
    x_1156 = x_1160;
  } else {
    let x_1163 : f32 = u_xlat2.y;
    x_1156 = x_1163;
  }
  let x_1164 : f32 = x_1156;
  u_xlat0.y = x_1164;
  let x_1167 : bool = u_xlatb0.z;
  if (x_1167) {
    let x_1172 : f32 = u_xlat1.z;
    x_1168 = x_1172;
  } else {
    let x_1175 : f32 = u_xlat2.z;
    x_1168 = x_1175;
  }
  let x_1176 : f32 = x_1168;
  u_xlat0.z = x_1176;
  let x_1178 : f32 = u_xlat21;
  let x_1183 : vec4<f32> = u_xlat0;
  let x_1185 : vec3<f32> = ((vec3<f32>(x_1178, x_1178, x_1178) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_1183.x, x_1183.y, x_1183.z));
  let x_1186 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1185.x, x_1185.y, x_1185.z, x_1186.w);
  let x_1188 : vec4<f32> = u_xlat0;
  let x_1190 : vec3<f32> = (vec3<f32>(x_1188.x, x_1188.y, x_1188.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1191 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1190.x, x_1190.y, x_1190.z, x_1191.w);
  let x_1193 : vec4<f32> = u_xlat0;
  let x_1195 : vec3<f32> = (vec3<f32>(x_1193.x, x_1193.y, x_1193.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1196 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1195.x, x_1195.y, x_1195.z, x_1196.w);
  let x_1198 : vec4<f32> = u_xlat2;
  let x_1200 : vec3<f32> = (vec3<f32>(x_1198.x, x_1198.y, x_1198.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1201 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1200.x, x_1200.y, x_1200.z, x_1201.w);
  let x_1203 : vec4<f32> = u_xlat2;
  let x_1206 : vec3<f32> = max(abs(vec3<f32>(x_1203.x, x_1203.y, x_1203.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1207 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1206.x, x_1206.y, x_1206.z, x_1207.w);
  let x_1209 : vec4<f32> = u_xlat2;
  let x_1211 : vec3<f32> = log2(vec3<f32>(x_1209.x, x_1209.y, x_1209.z));
  let x_1212 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1211.x, x_1211.y, x_1211.z, x_1212.w);
  let x_1214 : vec4<f32> = u_xlat2;
  let x_1216 : vec3<f32> = (vec3<f32>(x_1214.x, x_1214.y, x_1214.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1217 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1216.x, x_1216.y, x_1216.z, x_1217.w);
  let x_1219 : vec4<f32> = u_xlat2;
  let x_1221 : vec3<f32> = exp2(vec3<f32>(x_1219.x, x_1219.y, x_1219.z));
  let x_1222 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1221.x, x_1221.y, x_1221.z, x_1222.w);
  let x_1224 : vec4<f32> = u_xlat0;
  let x_1226 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1224.x, x_1224.y, x_1224.z, x_1224.x));
  u_xlatb0 = vec3<bool>(x_1226.x, x_1226.y, x_1226.z);
  let x_1231 : bool = u_xlatb0.x;
  if (x_1231) {
    let x_1236 : f32 = u_xlat1.x;
    x_1232 = x_1236;
  } else {
    let x_1239 : f32 = u_xlat2.x;
    x_1232 = x_1239;
  }
  let x_1240 : f32 = x_1232;
  SV_Target0.x = x_1240;
  let x_1244 : bool = u_xlatb0.y;
  if (x_1244) {
    let x_1249 : f32 = u_xlat1.y;
    x_1245 = x_1249;
  } else {
    let x_1252 : f32 = u_xlat2.y;
    x_1245 = x_1252;
  }
  let x_1253 : f32 = x_1245;
  SV_Target0.y = x_1253;
  let x_1256 : bool = u_xlatb0.z;
  if (x_1256) {
    let x_1261 : f32 = u_xlat1.z;
    x_1257 = x_1261;
  } else {
    let x_1264 : f32 = u_xlat2.z;
    x_1257 = x_1264;
  }
  let x_1265 : f32 = x_1257;
  SV_Target0.z = x_1265;
  let x_1268 : f32 = u_xlat2.w;
  SV_Target0.w = x_1268;
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

