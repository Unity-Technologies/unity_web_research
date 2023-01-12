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
}

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_55 : PGlobals;

@group(0) @binding(5) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(13) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

@group(0) @binding(3) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_BloomTex : sampler;

@group(0) @binding(4) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_Bloom_DirtTex : sampler;

@group(0) @binding(7) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(15) var sampler_Vignette_Mask : sampler;

@group(0) @binding(6) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(14) var sampler_Lut2D : sampler;

@group(0) @binding(0) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_DitheringTex : sampler;

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
  var u_xlat15 : f32;
  var x_663 : f32;
  var u_xlatb2 : vec3<bool>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_772 : f32;
  var x_784 : f32;
  var x_796 : f32;
  var u_xlat14 : vec2<f32>;
  var u_xlatb0 : vec3<bool>;
  var x_948 : f32;
  var x_960 : f32;
  var x_972 : f32;
  var u_xlat21 : f32;
  var x_1072 : f32;
  var x_1084 : f32;
  var x_1096 : f32;
  var x_1160 : f32;
  var x_1173 : f32;
  var x_1185 : f32;
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
  let x_443 : vec3<f32> = (vec3<f32>(x_439.x, x_439.y, x_439.z) * vec3<f32>(0.0625f, 0.0625f, 0.0625f));
  let x_444 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_443.x, x_443.y, x_443.z, x_444.w);
  let x_446 : vec4<f32> = u_xlat2;
  let x_449 : vec3<f32> = x_55.x_Bloom_Settings;
  let x_451 : vec3<f32> = (vec3<f32>(x_446.x, x_446.y, x_446.z) * vec3<f32>(x_449.z, x_449.z, x_449.z));
  let x_452 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_451.x, x_451.y, x_451.z, x_452.w);
  let x_454 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_454 * vec4<f32>(0.0625f, 0.0625f, 0.0625f, 1.0f));
  let x_457 : vec4<f32> = u_xlat0;
  let x_461 : vec3<f32> = x_55.x_Bloom_Color;
  let x_462 : vec3<f32> = (vec3<f32>(x_457.x, x_457.y, x_457.z) * x_461);
  let x_463 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_462.x, x_462.y, x_462.z, x_463.w);
  let x_466 : f32 = u_xlat0.w;
  u_xlat4.w = (x_466 * 0.0625f);
  let x_469 : vec4<f32> = u_xlat1;
  let x_470 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_469 + x_470);
  let x_472 : vec4<f32> = u_xlat3;
  let x_474 : vec4<f32> = u_xlat2;
  let x_476 : vec3<f32> = (vec3<f32>(x_472.x, x_472.y, x_472.z) * vec3<f32>(x_474.x, x_474.y, x_474.z));
  let x_477 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_476.x, x_476.y, x_476.z, x_477.w);
  u_xlat1.w = 0.0f;
  let x_480 : vec4<f32> = u_xlat0;
  let x_481 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_480 + x_481);
  let x_488 : f32 = x_55.x_Vignette_Mode;
  u_xlatb1 = (x_488 < 0.5f);
  let x_490 : bool = u_xlatb1;
  if (x_490) {
    let x_493 : vec2<f32> = vs_TEXCOORD0;
    let x_497 : vec2<f32> = x_55.x_Vignette_Center;
    let x_499 : vec2<f32> = (x_493 + -(x_497));
    let x_500 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_499.x, x_499.y, x_500.z, x_500.w);
    let x_502 : vec4<f32> = u_xlat1;
    let x_507 : vec4<f32> = x_55.x_Vignette_Settings;
    let x_509 : vec2<f32> = (abs(vec2<f32>(x_502.y, x_502.x)) * vec2<f32>(x_507.x, x_507.x));
    let x_510 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_510.x, x_509.x, x_509.y, x_510.w);
    let x_515 : f32 = x_55.x_ScreenParams.x;
    let x_518 : f32 = x_55.x_ScreenParams.y;
    u_xlat22 = (x_515 / x_518);
    let x_520 : f32 = u_xlat22;
    u_xlat22 = (x_520 + -1.0f);
    let x_523 : f32 = x_55.x_Vignette_Settings.w;
    let x_524 : f32 = u_xlat22;
    u_xlat22 = ((x_523 * x_524) + 1.0f);
    let x_527 : f32 = u_xlat22;
    let x_530 : f32 = u_xlat1.z;
    u_xlat1.x = (x_527 * x_530);
    let x_533 : vec4<f32> = u_xlat1;
    let x_534 : vec2<f32> = vec2<f32>(x_533.x, x_533.y);
    let x_535 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_534.x, x_534.y, x_535.z, x_535.w);
    let x_537 : vec4<f32> = u_xlat1;
    let x_541 : vec2<f32> = clamp(vec2<f32>(x_537.x, x_537.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_542 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_541.x, x_541.y, x_542.z, x_542.w);
    let x_544 : vec4<f32> = u_xlat1;
    let x_546 : vec2<f32> = log2(vec2<f32>(x_544.x, x_544.y));
    let x_547 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_546.x, x_546.y, x_547.z, x_547.w);
    let x_549 : vec4<f32> = u_xlat1;
    let x_552 : vec4<f32> = x_55.x_Vignette_Settings;
    let x_554 : vec2<f32> = (vec2<f32>(x_549.x, x_549.y) * vec2<f32>(x_552.z, x_552.z));
    let x_555 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_554.x, x_554.y, x_555.z, x_555.w);
    let x_557 : vec4<f32> = u_xlat1;
    let x_559 : vec2<f32> = exp2(vec2<f32>(x_557.x, x_557.y));
    let x_560 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_559.x, x_559.y, x_560.z, x_560.w);
    let x_562 : vec4<f32> = u_xlat1;
    let x_564 : vec4<f32> = u_xlat1;
    u_xlat1.x = dot(vec2<f32>(x_562.x, x_562.y), vec2<f32>(x_564.x, x_564.y));
    let x_569 : f32 = u_xlat1.x;
    u_xlat1.x = (-(x_569) + 1.0f);
    let x_574 : f32 = u_xlat1.x;
    u_xlat1.x = max(x_574, 0.0f);
    let x_578 : f32 = u_xlat1.x;
    u_xlat1.x = log2(x_578);
    let x_582 : f32 = u_xlat1.x;
    let x_584 : f32 = x_55.x_Vignette_Settings.y;
    u_xlat1.x = (x_582 * x_584);
    let x_588 : f32 = u_xlat1.x;
    u_xlat1.x = exp2(x_588);
    let x_594 : vec3<f32> = x_55.x_Vignette_Color;
    u_xlat8 = (-(x_594) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_598 : vec4<f32> = u_xlat1;
    let x_600 : vec3<f32> = u_xlat8;
    let x_603 : vec3<f32> = x_55.x_Vignette_Color;
    u_xlat8 = ((vec3<f32>(x_598.x, x_598.x, x_598.x) * x_600) + x_603);
    let x_605 : vec4<f32> = u_xlat0;
    let x_607 : vec3<f32> = u_xlat8;
    let x_608 : vec3<f32> = (vec3<f32>(x_605.x, x_605.y, x_605.z) * x_607);
    let x_609 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_608.x, x_608.y, x_608.z, x_609.w);
    let x_612 : f32 = u_xlat0.w;
    u_xlat8.x = (x_612 + -1.0f);
    let x_616 : f32 = u_xlat1.x;
    let x_618 : f32 = u_xlat8.x;
    u_xlat2.w = ((x_616 * x_618) + 1.0f);
  } else {
    let x_628 : vec2<f32> = vs_TEXCOORD0;
    let x_629 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_628);
    u_xlat1.x = x_629.w;
    let x_633 : f32 = u_xlat1.x;
    u_xlat1.z = (x_633 + 0.055f);
    let x_637 : vec4<f32> = u_xlat1;
    let x_642 : vec2<f32> = (vec2<f32>(x_637.x, x_637.z) * vec2<f32>(0.077399381f, 0.947867334f));
    let x_643 : vec3<f32> = u_xlat8;
    u_xlat8 = vec3<f32>(x_642.x, x_642.y, x_643.z);
    let x_647 : f32 = u_xlat8.y;
    u_xlat15 = max(abs(x_647), 1.1920929e-07f);
    let x_651 : f32 = u_xlat15;
    u_xlat15 = log2(x_651);
    let x_653 : f32 = u_xlat15;
    u_xlat15 = (x_653 * 2.400000095f);
    let x_656 : f32 = u_xlat15;
    u_xlat15 = exp2(x_656);
    let x_660 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_660);
    let x_662 : bool = u_xlatb1;
    if (x_662) {
      let x_667 : f32 = u_xlat8.x;
      x_663 = x_667;
    } else {
      let x_669 : f32 = u_xlat15;
      x_663 = x_669;
    }
    let x_670 : f32 = x_663;
    u_xlat1.x = x_670;
    let x_673 : vec3<f32> = x_55.x_Vignette_Color;
    u_xlat8 = (-(x_673) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_676 : vec4<f32> = u_xlat1;
    let x_678 : vec3<f32> = u_xlat8;
    let x_681 : vec3<f32> = x_55.x_Vignette_Color;
    u_xlat8 = ((vec3<f32>(x_676.x, x_676.x, x_676.x) * x_678) + x_681);
    let x_683 : vec4<f32> = u_xlat0;
    let x_685 : vec3<f32> = u_xlat8;
    let x_687 : vec4<f32> = u_xlat0;
    u_xlat8 = ((vec3<f32>(x_683.x, x_683.y, x_683.z) * x_685) + -(vec3<f32>(x_687.x, x_687.y, x_687.z)));
    let x_693 : f32 = x_55.x_Vignette_Opacity;
    let x_695 : vec3<f32> = u_xlat8;
    let x_697 : vec4<f32> = u_xlat0;
    let x_699 : vec3<f32> = ((vec3<f32>(x_693, x_693, x_693) * x_695) + vec3<f32>(x_697.x, x_697.y, x_697.z));
    let x_700 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_699.x, x_699.y, x_699.z, x_700.w);
    let x_703 : f32 = u_xlat0.w;
    u_xlat0.x = (x_703 + -1.0f);
    let x_707 : f32 = u_xlat1.x;
    let x_709 : f32 = u_xlat0.x;
    u_xlat2.w = ((x_707 * x_709) + 1.0f);
  }
  let x_713 : vec4<f32> = u_xlat2;
  u_xlat2 = x_713;
  let x_714 : vec4<f32> = u_xlat2;
  u_xlat2 = clamp(x_714, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_718 : vec4<f32> = u_xlat2;
  let x_722 : vec3<f32> = (vec3<f32>(x_718.z, x_718.x, x_718.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_723 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_722.x, x_722.y, x_722.z, x_723.w);
  let x_725 : vec4<f32> = u_xlat2;
  let x_728 : vec3<f32> = max(vec3<f32>(x_725.z, x_725.x, x_725.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_729 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_728.x, x_728.y, x_728.z, x_729.w);
  let x_731 : vec4<f32> = u_xlat1;
  let x_733 : vec3<f32> = log2(vec3<f32>(x_731.x, x_731.y, x_731.z));
  let x_734 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_733.x, x_733.y, x_733.z, x_734.w);
  let x_736 : vec4<f32> = u_xlat1;
  let x_740 : vec3<f32> = (vec3<f32>(x_736.x, x_736.y, x_736.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_741 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_740.x, x_740.y, x_740.z, x_741.w);
  let x_743 : vec4<f32> = u_xlat1;
  let x_745 : vec3<f32> = exp2(vec3<f32>(x_743.x, x_743.y, x_743.z));
  let x_746 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_745.x, x_745.y, x_745.z, x_746.w);
  let x_748 : vec4<f32> = u_xlat1;
  let x_755 : vec3<f32> = ((vec3<f32>(x_748.x, x_748.y, x_748.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_756 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_755.x, x_755.y, x_755.z, x_756.w);
  let x_763 : vec4<f32> = u_xlat2;
  let x_766 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_763.z, x_763.x, x_763.y, x_763.z));
  u_xlatb2 = vec3<bool>(x_766.x, x_766.y, x_766.z);
  let x_769 : vec4<f32> = u_xlat0;
  hlslcc_movcTemp = x_769;
  let x_771 : bool = u_xlatb2.x;
  if (x_771) {
    let x_776 : f32 = u_xlat0.x;
    x_772 = x_776;
  } else {
    let x_779 : f32 = u_xlat1.x;
    x_772 = x_779;
  }
  let x_780 : f32 = x_772;
  hlslcc_movcTemp.x = x_780;
  let x_783 : bool = u_xlatb2.y;
  if (x_783) {
    let x_788 : f32 = u_xlat0.y;
    x_784 = x_788;
  } else {
    let x_791 : f32 = u_xlat1.y;
    x_784 = x_791;
  }
  let x_792 : f32 = x_784;
  hlslcc_movcTemp.y = x_792;
  let x_795 : bool = u_xlatb2.z;
  if (x_795) {
    let x_800 : f32 = u_xlat0.z;
    x_796 = x_800;
  } else {
    let x_803 : f32 = u_xlat1.z;
    x_796 = x_803;
  }
  let x_804 : f32 = x_796;
  hlslcc_movcTemp.z = x_804;
  let x_806 : vec4<f32> = hlslcc_movcTemp;
  u_xlat0 = x_806;
  let x_807 : vec4<f32> = u_xlat0;
  let x_811 : vec3<f32> = x_55.x_Lut2D_Params;
  u_xlat7 = (vec3<f32>(x_807.x, x_807.y, x_807.z) * vec3<f32>(x_811.z, x_811.z, x_811.z));
  let x_815 : f32 = u_xlat7.x;
  u_xlat7.x = floor(x_815);
  let x_819 : vec3<f32> = x_55.x_Lut2D_Params;
  let x_822 : vec2<f32> = (vec2<f32>(x_819.x, x_819.y) * vec2<f32>(0.5f, 0.5f));
  let x_823 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_822.x, x_822.y, x_823.z, x_823.w);
  let x_825 : vec3<f32> = u_xlat7;
  let x_828 : vec3<f32> = x_55.x_Lut2D_Params;
  let x_831 : vec4<f32> = u_xlat1;
  let x_833 : vec2<f32> = ((vec2<f32>(x_825.y, x_825.z) * vec2<f32>(x_828.x, x_828.y)) + vec2<f32>(x_831.x, x_831.y));
  let x_834 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_834.x, x_833.x, x_833.y, x_834.w);
  let x_837 : f32 = u_xlat7.x;
  let x_839 : f32 = x_55.x_Lut2D_Params.y;
  let x_842 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_837 * x_839) + x_842);
  let x_850 : vec4<f32> = u_xlat1;
  let x_852 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_850.x, x_850.z));
  let x_853 : vec3<f32> = vec3<f32>(x_852.x, x_852.y, x_852.z);
  let x_854 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_853.x, x_853.y, x_853.z, x_854.w);
  let x_857 : f32 = x_55.x_Lut2D_Params.y;
  u_xlat3.x = x_857;
  u_xlat3.y = 0.0f;
  let x_862 : vec4<f32> = u_xlat1;
  let x_864 : vec4<f32> = u_xlat3;
  u_xlat14 = (vec2<f32>(x_862.x, x_862.z) + vec2<f32>(x_864.x, x_864.y));
  let x_870 : vec2<f32> = u_xlat14;
  let x_871 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_870);
  let x_872 : vec3<f32> = vec3<f32>(x_871.x, x_871.y, x_871.z);
  let x_873 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_872.x, x_872.y, x_872.z, x_873.w);
  let x_876 : f32 = u_xlat0.x;
  let x_878 : f32 = x_55.x_Lut2D_Params.z;
  let x_881 : f32 = u_xlat7.x;
  u_xlat0.x = ((x_876 * x_878) + -(x_881));
  let x_885 : vec4<f32> = u_xlat2;
  let x_888 : vec4<f32> = u_xlat1;
  u_xlat7 = (-(vec3<f32>(x_885.x, x_885.y, x_885.z)) + vec3<f32>(x_888.x, x_888.y, x_888.z));
  let x_891 : vec4<f32> = u_xlat0;
  let x_893 : vec3<f32> = u_xlat7;
  let x_895 : vec4<f32> = u_xlat2;
  let x_897 : vec3<f32> = ((vec3<f32>(x_891.x, x_891.x, x_891.x) * x_893) + vec3<f32>(x_895.x, x_895.y, x_895.z));
  let x_898 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_897.x, x_897.y, x_897.z, x_898.w);
  let x_900 : vec4<f32> = u_xlat0;
  let x_903 : vec3<f32> = (vec3<f32>(x_900.x, x_900.y, x_900.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_904 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_903.x, x_903.y, x_903.z, x_904.w);
  let x_906 : vec4<f32> = u_xlat0;
  let x_909 : vec3<f32> = (vec3<f32>(x_906.x, x_906.y, x_906.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_910 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_909.x, x_909.y, x_909.z, x_910.w);
  let x_912 : vec4<f32> = u_xlat2;
  let x_915 : vec3<f32> = (vec3<f32>(x_912.x, x_912.y, x_912.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_916 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_915.x, x_915.y, x_915.z, x_916.w);
  let x_918 : vec4<f32> = u_xlat2;
  let x_921 : vec3<f32> = max(abs(vec3<f32>(x_918.x, x_918.y, x_918.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_922 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_921.x, x_921.y, x_921.z, x_922.w);
  let x_924 : vec4<f32> = u_xlat2;
  let x_926 : vec3<f32> = log2(vec3<f32>(x_924.x, x_924.y, x_924.z));
  let x_927 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_926.x, x_926.y, x_926.z, x_927.w);
  let x_929 : vec4<f32> = u_xlat2;
  let x_932 : vec3<f32> = (vec3<f32>(x_929.x, x_929.y, x_929.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_933 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_932.x, x_932.y, x_932.z, x_933.w);
  let x_935 : vec4<f32> = u_xlat2;
  let x_937 : vec3<f32> = exp2(vec3<f32>(x_935.x, x_935.y, x_935.z));
  let x_938 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_937.x, x_937.y, x_937.z, x_938.w);
  let x_942 : vec4<f32> = u_xlat0;
  let x_944 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_942.x, x_942.y, x_942.z, x_942.x));
  u_xlatb0 = vec3<bool>(x_944.x, x_944.y, x_944.z);
  let x_947 : bool = u_xlatb0.x;
  if (x_947) {
    let x_952 : f32 = u_xlat1.x;
    x_948 = x_952;
  } else {
    let x_955 : f32 = u_xlat2.x;
    x_948 = x_955;
  }
  let x_956 : f32 = x_948;
  u_xlat0.x = x_956;
  let x_959 : bool = u_xlatb0.y;
  if (x_959) {
    let x_964 : f32 = u_xlat1.y;
    x_960 = x_964;
  } else {
    let x_967 : f32 = u_xlat2.y;
    x_960 = x_967;
  }
  let x_968 : f32 = x_960;
  u_xlat0.y = x_968;
  let x_971 : bool = u_xlatb0.z;
  if (x_971) {
    let x_976 : f32 = u_xlat1.z;
    x_972 = x_976;
  } else {
    let x_979 : f32 = u_xlat2.z;
    x_972 = x_979;
  }
  let x_980 : f32 = x_972;
  u_xlat0.z = x_980;
  let x_982 : vec2<f32> = vs_TEXCOORD0;
  let x_985 : vec4<f32> = x_55.x_Dithering_Coords;
  let x_989 : vec4<f32> = x_55.x_Dithering_Coords;
  let x_991 : vec2<f32> = ((x_982 * vec2<f32>(x_985.x, x_985.y)) + vec2<f32>(x_989.z, x_989.w));
  let x_992 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_991.x, x_991.y, x_992.z, x_992.w);
  let x_1000 : vec4<f32> = u_xlat1;
  let x_1002 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_1000.x, x_1000.y));
  u_xlat21 = x_1002.w;
  let x_1004 : f32 = u_xlat21;
  u_xlat21 = ((x_1004 * 2.0f) + -1.0f);
  let x_1007 : f32 = u_xlat21;
  u_xlat1.x = ((x_1007 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_1013 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1013, 0.0f, 1.0f);
  let x_1017 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1017 * 2.0f) + -1.0f);
  let x_1021 : f32 = u_xlat21;
  u_xlat21 = (-(abs(x_1021)) + 1.0f);
  let x_1025 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_1025);
  let x_1027 : f32 = u_xlat21;
  u_xlat21 = (-(x_1027) + 1.0f);
  let x_1030 : f32 = u_xlat21;
  let x_1032 : f32 = u_xlat1.x;
  u_xlat21 = (x_1030 * x_1032);
  let x_1034 : vec4<f32> = u_xlat0;
  let x_1036 : vec3<f32> = (vec3<f32>(x_1034.x, x_1034.y, x_1034.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1037 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1036.x, x_1036.y, x_1036.z, x_1037.w);
  let x_1039 : vec4<f32> = u_xlat0;
  let x_1042 : vec3<f32> = max(abs(vec3<f32>(x_1039.x, x_1039.y, x_1039.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1043 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1042.x, x_1042.y, x_1042.z, x_1043.w);
  let x_1045 : vec4<f32> = u_xlat2;
  let x_1047 : vec3<f32> = log2(vec3<f32>(x_1045.x, x_1045.y, x_1045.z));
  let x_1048 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1047.x, x_1047.y, x_1047.z, x_1048.w);
  let x_1050 : vec4<f32> = u_xlat2;
  let x_1052 : vec3<f32> = (vec3<f32>(x_1050.x, x_1050.y, x_1050.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1053 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1052.x, x_1052.y, x_1052.z, x_1053.w);
  let x_1055 : vec4<f32> = u_xlat2;
  let x_1057 : vec3<f32> = exp2(vec3<f32>(x_1055.x, x_1055.y, x_1055.z));
  let x_1058 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1057.x, x_1057.y, x_1057.z, x_1058.w);
  let x_1060 : vec4<f32> = u_xlat2;
  let x_1063 : vec3<f32> = ((vec3<f32>(x_1060.x, x_1060.y, x_1060.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1064 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1063.x, x_1063.y, x_1063.z, x_1064.w);
  let x_1066 : vec4<f32> = u_xlat0;
  let x_1068 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1066.x, x_1066.y, x_1066.z, x_1066.x));
  u_xlatb0 = vec3<bool>(x_1068.x, x_1068.y, x_1068.z);
  let x_1071 : bool = u_xlatb0.x;
  if (x_1071) {
    let x_1076 : f32 = u_xlat1.x;
    x_1072 = x_1076;
  } else {
    let x_1079 : f32 = u_xlat2.x;
    x_1072 = x_1079;
  }
  let x_1080 : f32 = x_1072;
  u_xlat0.x = x_1080;
  let x_1083 : bool = u_xlatb0.y;
  if (x_1083) {
    let x_1088 : f32 = u_xlat1.y;
    x_1084 = x_1088;
  } else {
    let x_1091 : f32 = u_xlat2.y;
    x_1084 = x_1091;
  }
  let x_1092 : f32 = x_1084;
  u_xlat0.y = x_1092;
  let x_1095 : bool = u_xlatb0.z;
  if (x_1095) {
    let x_1100 : f32 = u_xlat1.z;
    x_1096 = x_1100;
  } else {
    let x_1103 : f32 = u_xlat2.z;
    x_1096 = x_1103;
  }
  let x_1104 : f32 = x_1096;
  u_xlat0.z = x_1104;
  let x_1106 : f32 = u_xlat21;
  let x_1111 : vec4<f32> = u_xlat0;
  let x_1113 : vec3<f32> = ((vec3<f32>(x_1106, x_1106, x_1106) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_1111.x, x_1111.y, x_1111.z));
  let x_1114 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1113.x, x_1113.y, x_1113.z, x_1114.w);
  let x_1116 : vec4<f32> = u_xlat0;
  let x_1118 : vec3<f32> = (vec3<f32>(x_1116.x, x_1116.y, x_1116.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1119 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1118.x, x_1118.y, x_1118.z, x_1119.w);
  let x_1121 : vec4<f32> = u_xlat0;
  let x_1123 : vec3<f32> = (vec3<f32>(x_1121.x, x_1121.y, x_1121.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1124 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1123.x, x_1123.y, x_1123.z, x_1124.w);
  let x_1126 : vec4<f32> = u_xlat2;
  let x_1128 : vec3<f32> = (vec3<f32>(x_1126.x, x_1126.y, x_1126.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1129 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1128.x, x_1128.y, x_1128.z, x_1129.w);
  let x_1131 : vec4<f32> = u_xlat2;
  let x_1134 : vec3<f32> = max(abs(vec3<f32>(x_1131.x, x_1131.y, x_1131.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1135 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1134.x, x_1134.y, x_1134.z, x_1135.w);
  let x_1137 : vec4<f32> = u_xlat2;
  let x_1139 : vec3<f32> = log2(vec3<f32>(x_1137.x, x_1137.y, x_1137.z));
  let x_1140 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1139.x, x_1139.y, x_1139.z, x_1140.w);
  let x_1142 : vec4<f32> = u_xlat2;
  let x_1144 : vec3<f32> = (vec3<f32>(x_1142.x, x_1142.y, x_1142.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1145 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1144.x, x_1144.y, x_1144.z, x_1145.w);
  let x_1147 : vec4<f32> = u_xlat2;
  let x_1149 : vec3<f32> = exp2(vec3<f32>(x_1147.x, x_1147.y, x_1147.z));
  let x_1150 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1149.x, x_1149.y, x_1149.z, x_1150.w);
  let x_1152 : vec4<f32> = u_xlat0;
  let x_1154 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1152.x, x_1152.y, x_1152.z, x_1152.x));
  u_xlatb0 = vec3<bool>(x_1154.x, x_1154.y, x_1154.z);
  let x_1159 : bool = u_xlatb0.x;
  if (x_1159) {
    let x_1164 : f32 = u_xlat1.x;
    x_1160 = x_1164;
  } else {
    let x_1167 : f32 = u_xlat2.x;
    x_1160 = x_1167;
  }
  let x_1168 : f32 = x_1160;
  SV_Target0.x = x_1168;
  let x_1172 : bool = u_xlatb0.y;
  if (x_1172) {
    let x_1177 : f32 = u_xlat1.y;
    x_1173 = x_1177;
  } else {
    let x_1180 : f32 = u_xlat2.y;
    x_1173 = x_1180;
  }
  let x_1181 : f32 = x_1173;
  SV_Target0.y = x_1181;
  let x_1184 : bool = u_xlatb0.z;
  if (x_1184) {
    let x_1189 : f32 = u_xlat1.z;
    x_1185 = x_1189;
  } else {
    let x_1192 : f32 = u_xlat2.z;
    x_1185 = x_1192;
  }
  let x_1193 : f32 = x_1185;
  SV_Target0.z = x_1193;
  let x_1196 : f32 = u_xlat2.w;
  SV_Target0.w = x_1196;
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

