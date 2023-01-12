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
  x_PostExposure : f32,
  x_Vignette_Color : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_Vignette_Center : vec2<f32>,
  @size(8)
  padding_3 : u32,
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
  var u_xlat7 : vec2<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlatb1 : bool;
  var u_xlat22 : f32;
  var u_xlat8 : vec3<f32>;
  var u_xlat10 : f32;
  var x_650 : f32;
  var u_xlat21 : f32;
  var u_xlatb0 : vec3<bool>;
  var x_1047 : f32;
  var x_1059 : f32;
  var x_1071 : f32;
  var x_1140 : f32;
  var x_1153 : f32;
  var x_1165 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_24 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_23);
  u_xlat0.x = x_24.x;
  let x_31 : vec2<f32> = vs_TEXCOORD0;
  u_xlat1 = ((vec4<f32>(x_31.x, x_31.y, x_31.x, x_31.y) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_41 : vec4<f32> = u_xlat1;
  let x_43 : vec4<f32> = u_xlat1;
  u_xlat7.x = dot(vec2<f32>(x_41.z, x_41.w), vec2<f32>(x_43.z, x_43.w));
  let x_47 : vec2<f32> = u_xlat7;
  let x_49 : vec4<f32> = u_xlat1;
  u_xlat1 = (vec4<f32>(x_47.x, x_47.x, x_47.x, x_47.x) * x_49);
  let x_51 : vec4<f32> = u_xlat1;
  let x_60 : f32 = x_55.x_ChromaticAberration_Amount;
  let x_62 : f32 = x_55.x_ChromaticAberration_Amount;
  let x_64 : f32 = x_55.x_ChromaticAberration_Amount;
  let x_66 : f32 = x_55.x_ChromaticAberration_Amount;
  let x_67 : vec4<f32> = vec4<f32>(x_60, x_62, x_64, x_66);
  u_xlat1 = (x_51 * vec4<f32>(x_67.x, x_67.y, x_67.z, x_67.w));
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
  u_xlat7 = x_107;
  let x_108 : vec2<f32> = u_xlat7;
  u_xlat7 = clamp(x_108, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_113 : vec2<f32> = u_xlat7;
  let x_116 : f32 = x_55.x_RenderViewportScaleFactor;
  u_xlat7 = (x_113 * vec2<f32>(x_116, x_116));
  let x_125 : vec2<f32> = u_xlat7;
  let x_126 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_125, 0.0f);
  u_xlat5 = x_126;
  let x_127 : vec4<f32> = u_xlat1;
  let x_132 : vec2<f32> = vs_TEXCOORD0;
  u_xlat1 = ((x_127 * vec4<f32>(-0.333333343f, -0.333333343f, -0.666666687f, -0.666666687f)) + vec4<f32>(x_132.x, x_132.y, x_132.x, x_132.y));
  let x_135 : vec4<f32> = u_xlat1;
  u_xlat1 = clamp(x_135, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_139 : vec4<f32> = u_xlat1;
  let x_141 : f32 = x_55.x_RenderViewportScaleFactor;
  u_xlat1 = (x_139 * vec4<f32>(x_141, x_141, x_141, x_141));
  let x_148 : vec4<f32> = u_xlat1;
  let x_150 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_148.x, x_148.y), 0.0f);
  u_xlat6 = x_150;
  let x_154 : vec4<f32> = u_xlat1;
  let x_156 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_154.z, x_154.w), 0.0f);
  u_xlat1 = x_156;
  u_xlat2.w = 1.0f;
  u_xlat3.w = 1.0f;
  let x_160 : vec4<f32> = u_xlat3;
  let x_161 : vec4<f32> = u_xlat6;
  u_xlat6 = (x_160 * x_161);
  let x_163 : vec4<f32> = u_xlat5;
  let x_164 : vec4<f32> = u_xlat2;
  let x_166 : vec4<f32> = u_xlat6;
  u_xlat5 = ((x_163 * x_164) + x_166);
  u_xlat4.w = 1.0f;
  let x_169 : vec4<f32> = u_xlat1;
  let x_170 : vec4<f32> = u_xlat4;
  let x_172 : vec4<f32> = u_xlat5;
  u_xlat1 = ((x_169 * x_170) + x_172);
  let x_174 : vec4<f32> = u_xlat2;
  let x_176 : vec4<f32> = u_xlat3;
  let x_178 : vec3<f32> = (vec3<f32>(x_174.x, x_174.y, x_174.z) + vec3<f32>(x_176.x, x_176.y, x_176.z));
  let x_179 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_178.x, x_178.y, x_178.z, x_179.w);
  let x_181 : vec4<f32> = u_xlat4;
  let x_183 : vec4<f32> = u_xlat2;
  let x_185 : vec3<f32> = (vec3<f32>(x_181.x, x_181.y, x_181.z) + vec3<f32>(x_183.x, x_183.y, x_183.z));
  let x_186 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_185.x, x_185.y, x_185.z, x_186.w);
  u_xlat2.w = 3.0f;
  let x_190 : vec4<f32> = u_xlat1;
  let x_191 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_190 / x_191);
  let x_193 : vec4<f32> = u_xlat0;
  let x_195 : vec4<f32> = u_xlat1;
  let x_197 : vec3<f32> = (vec3<f32>(x_193.x, x_193.x, x_193.x) * vec3<f32>(x_195.x, x_195.y, x_195.z));
  let x_198 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_197.x, x_197.y, x_197.z, x_198.w);
  let x_203 : vec4<f32> = x_55.x_BloomTex_TexelSize;
  u_xlat2 = (vec4<f32>(x_203.x, x_203.y, x_203.x, x_203.y) * vec4<f32>(1.0f, 1.0f, -1.0f, 0.0f));
  let x_207 : vec4<f32> = u_xlat2;
  let x_213 : vec3<f32> = x_55.x_Bloom_Settings;
  let x_216 : vec2<f32> = vs_TEXCOORD0;
  u_xlat3 = ((-(vec4<f32>(x_207.x, x_207.y, x_207.w, x_207.y)) * vec4<f32>(x_213.x, x_213.x, x_213.x, x_213.x)) + vec4<f32>(x_216.x, x_216.y, x_216.x, x_216.y));
  let x_219 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_219, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_223 : vec4<f32> = u_xlat3;
  let x_225 : f32 = x_55.x_RenderViewportScaleFactor;
  u_xlat3 = (x_223 * vec4<f32>(x_225, x_225, x_225, x_225));
  let x_233 : vec4<f32> = u_xlat3;
  let x_235 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_233.x, x_233.y));
  u_xlat4 = x_235;
  let x_239 : vec4<f32> = u_xlat3;
  let x_241 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_239.z, x_239.w));
  u_xlat3 = x_241;
  let x_242 : vec4<f32> = u_xlat3;
  let x_244 : vec4<f32> = u_xlat4;
  u_xlat3 = ((x_242 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_244);
  let x_246 : vec4<f32> = u_xlat2;
  let x_250 : vec3<f32> = x_55.x_Bloom_Settings;
  let x_253 : vec2<f32> = vs_TEXCOORD0;
  let x_254 : vec2<f32> = ((-(vec2<f32>(x_246.z, x_246.y)) * vec2<f32>(x_250.x, x_250.x)) + x_253);
  let x_255 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_254.x, x_255.y, x_255.z, x_254.y);
  let x_257 : vec4<f32> = u_xlat0;
  let x_261 : vec2<f32> = clamp(vec2<f32>(x_257.x, x_257.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_262 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_261.x, x_262.y, x_262.z, x_261.y);
  let x_264 : vec4<f32> = u_xlat0;
  let x_267 : f32 = x_55.x_RenderViewportScaleFactor;
  let x_269 : vec2<f32> = (vec2<f32>(x_264.x, x_264.w) * vec2<f32>(x_267, x_267));
  let x_270 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_269.x, x_270.y, x_270.z, x_269.y);
  let x_275 : vec4<f32> = u_xlat0;
  let x_277 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_275.x, x_275.w));
  u_xlat4 = x_277;
  let x_278 : vec4<f32> = u_xlat3;
  let x_279 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_278 + x_279);
  let x_281 : vec4<f32> = u_xlat2;
  let x_284 : vec3<f32> = x_55.x_Bloom_Settings;
  let x_287 : vec2<f32> = vs_TEXCOORD0;
  u_xlat4 = ((vec4<f32>(x_281.z, x_281.w, x_281.x, x_281.w) * vec4<f32>(x_284.x, x_284.x, x_284.x, x_284.x)) + vec4<f32>(x_287.x, x_287.y, x_287.x, x_287.y));
  let x_290 : vec4<f32> = u_xlat4;
  u_xlat4 = clamp(x_290, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_294 : vec4<f32> = u_xlat4;
  let x_296 : f32 = x_55.x_RenderViewportScaleFactor;
  u_xlat4 = (x_294 * vec4<f32>(x_296, x_296, x_296, x_296));
  let x_302 : vec4<f32> = u_xlat4;
  let x_304 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_302.x, x_302.y));
  u_xlat5 = x_304;
  let x_305 : vec4<f32> = u_xlat5;
  let x_307 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_305 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_307);
  let x_312 : vec2<f32> = u_xlat7;
  let x_313 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, x_312);
  u_xlat0 = x_313;
  let x_314 : vec4<f32> = u_xlat0;
  let x_318 : vec4<f32> = u_xlat3;
  u_xlat0 = ((x_314 * vec4<f32>(4.0f, 4.0f, 4.0f, 4.0f)) + x_318);
  let x_323 : vec4<f32> = u_xlat4;
  let x_325 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_323.z, x_323.w));
  u_xlat3 = x_325;
  let x_326 : vec4<f32> = u_xlat3;
  let x_328 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_326 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_328);
  let x_330 : vec4<f32> = u_xlat2;
  let x_333 : vec3<f32> = x_55.x_Bloom_Settings;
  let x_336 : vec2<f32> = vs_TEXCOORD0;
  u_xlat3 = ((vec4<f32>(x_330.z, x_330.y, x_330.w, x_330.y) * vec4<f32>(x_333.x, x_333.x, x_333.x, x_333.x)) + vec4<f32>(x_336.x, x_336.y, x_336.x, x_336.y));
  let x_339 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_339, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_343 : vec4<f32> = u_xlat3;
  let x_345 : f32 = x_55.x_RenderViewportScaleFactor;
  u_xlat3 = (x_343 * vec4<f32>(x_345, x_345, x_345, x_345));
  let x_351 : vec4<f32> = u_xlat3;
  let x_353 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_351.x, x_351.y));
  u_xlat4 = x_353;
  let x_354 : vec4<f32> = u_xlat0;
  let x_355 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_354 + x_355);
  let x_360 : vec4<f32> = u_xlat3;
  let x_362 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_360.z, x_360.w));
  u_xlat3 = x_362;
  let x_363 : vec4<f32> = u_xlat3;
  let x_365 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_363 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_365);
  let x_367 : vec4<f32> = u_xlat2;
  let x_370 : vec3<f32> = x_55.x_Bloom_Settings;
  let x_373 : vec2<f32> = vs_TEXCOORD0;
  let x_374 : vec2<f32> = ((vec2<f32>(x_367.x, x_367.y) * vec2<f32>(x_370.x, x_370.x)) + x_373);
  let x_375 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_374.x, x_374.y, x_375.z, x_375.w);
  let x_377 : vec4<f32> = u_xlat2;
  let x_381 : vec2<f32> = clamp(vec2<f32>(x_377.x, x_377.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_382 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_381.x, x_381.y, x_382.z, x_382.w);
  let x_384 : vec4<f32> = u_xlat2;
  let x_387 : f32 = x_55.x_RenderViewportScaleFactor;
  let x_389 : vec2<f32> = (vec2<f32>(x_384.x, x_384.y) * vec2<f32>(x_387, x_387));
  let x_390 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_389.x, x_389.y, x_390.z, x_390.w);
  let x_395 : vec4<f32> = u_xlat2;
  let x_397 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_395.x, x_395.y));
  u_xlat2 = x_397;
  let x_398 : vec4<f32> = u_xlat0;
  let x_399 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_398 + x_399);
  let x_401 : vec4<f32> = u_xlat0;
  let x_403 : vec3<f32> = x_55.x_Bloom_Settings;
  u_xlat0 = (x_401 * vec4<f32>(x_403.y, x_403.y, x_403.y, x_403.y));
  let x_406 : vec2<f32> = vs_TEXCOORD0;
  let x_409 : vec4<f32> = x_55.x_Bloom_DirtTileOffset;
  let x_413 : vec4<f32> = x_55.x_Bloom_DirtTileOffset;
  let x_415 : vec2<f32> = ((x_406 * vec2<f32>(x_409.x, x_409.y)) + vec2<f32>(x_413.z, x_413.w));
  let x_416 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_415.x, x_415.y, x_416.z, x_416.w);
  let x_423 : vec4<f32> = u_xlat2;
  let x_425 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_423.x, x_423.y));
  let x_426 : vec3<f32> = vec3<f32>(x_425.x, x_425.y, x_425.z);
  let x_427 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_426.x, x_426.y, x_426.z, x_427.w);
  let x_429 : vec4<f32> = u_xlat0;
  let x_433 : vec3<f32> = (vec3<f32>(x_429.x, x_429.y, x_429.z) * vec3<f32>(0.0625f, 0.0625f, 0.0625f));
  let x_434 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_433.x, x_433.y, x_433.z, x_434.w);
  let x_436 : vec4<f32> = u_xlat2;
  let x_439 : vec3<f32> = x_55.x_Bloom_Settings;
  let x_441 : vec3<f32> = (vec3<f32>(x_436.x, x_436.y, x_436.z) * vec3<f32>(x_439.z, x_439.z, x_439.z));
  let x_442 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_441.x, x_441.y, x_441.z, x_442.w);
  let x_444 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_444 * vec4<f32>(0.0625f, 0.0625f, 0.0625f, 1.0f));
  let x_447 : vec4<f32> = u_xlat0;
  let x_451 : vec3<f32> = x_55.x_Bloom_Color;
  let x_452 : vec3<f32> = (vec3<f32>(x_447.x, x_447.y, x_447.z) * x_451);
  let x_453 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_452.x, x_452.y, x_452.z, x_453.w);
  let x_456 : f32 = u_xlat0.w;
  u_xlat4.w = (x_456 * 0.0625f);
  let x_459 : vec4<f32> = u_xlat1;
  let x_460 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_459 + x_460);
  let x_462 : vec4<f32> = u_xlat3;
  let x_464 : vec4<f32> = u_xlat2;
  let x_466 : vec3<f32> = (vec3<f32>(x_462.x, x_462.y, x_462.z) * vec3<f32>(x_464.x, x_464.y, x_464.z));
  let x_467 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_466.x, x_466.y, x_466.z, x_467.w);
  u_xlat1.w = 0.0f;
  let x_470 : vec4<f32> = u_xlat0;
  let x_471 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_470 + x_471);
  let x_478 : f32 = x_55.x_Vignette_Mode;
  u_xlatb1 = (x_478 < 0.5f);
  let x_480 : bool = u_xlatb1;
  if (x_480) {
    let x_483 : vec2<f32> = vs_TEXCOORD0;
    let x_487 : vec2<f32> = x_55.x_Vignette_Center;
    let x_489 : vec2<f32> = (x_483 + -(x_487));
    let x_490 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_489.x, x_489.y, x_490.z, x_490.w);
    let x_492 : vec4<f32> = u_xlat1;
    let x_497 : vec4<f32> = x_55.x_Vignette_Settings;
    let x_499 : vec2<f32> = (abs(vec2<f32>(x_492.y, x_492.x)) * vec2<f32>(x_497.x, x_497.x));
    let x_500 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_500.x, x_499.x, x_499.y, x_500.w);
    let x_505 : f32 = x_55.x_ScreenParams.x;
    let x_508 : f32 = x_55.x_ScreenParams.y;
    u_xlat22 = (x_505 / x_508);
    let x_510 : f32 = u_xlat22;
    u_xlat22 = (x_510 + -1.0f);
    let x_513 : f32 = x_55.x_Vignette_Settings.w;
    let x_514 : f32 = u_xlat22;
    u_xlat22 = ((x_513 * x_514) + 1.0f);
    let x_517 : f32 = u_xlat22;
    let x_520 : f32 = u_xlat1.z;
    u_xlat1.x = (x_517 * x_520);
    let x_523 : vec4<f32> = u_xlat1;
    let x_524 : vec2<f32> = vec2<f32>(x_523.x, x_523.y);
    let x_525 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_524.x, x_524.y, x_525.z, x_525.w);
    let x_527 : vec4<f32> = u_xlat1;
    let x_531 : vec2<f32> = clamp(vec2<f32>(x_527.x, x_527.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_532 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_531.x, x_531.y, x_532.z, x_532.w);
    let x_534 : vec4<f32> = u_xlat1;
    let x_536 : vec2<f32> = log2(vec2<f32>(x_534.x, x_534.y));
    let x_537 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_536.x, x_536.y, x_537.z, x_537.w);
    let x_539 : vec4<f32> = u_xlat1;
    let x_542 : vec4<f32> = x_55.x_Vignette_Settings;
    let x_544 : vec2<f32> = (vec2<f32>(x_539.x, x_539.y) * vec2<f32>(x_542.z, x_542.z));
    let x_545 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_544.x, x_544.y, x_545.z, x_545.w);
    let x_547 : vec4<f32> = u_xlat1;
    let x_549 : vec2<f32> = exp2(vec2<f32>(x_547.x, x_547.y));
    let x_550 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_549.x, x_549.y, x_550.z, x_550.w);
    let x_552 : vec4<f32> = u_xlat1;
    let x_554 : vec4<f32> = u_xlat1;
    u_xlat1.x = dot(vec2<f32>(x_552.x, x_552.y), vec2<f32>(x_554.x, x_554.y));
    let x_559 : f32 = u_xlat1.x;
    u_xlat1.x = (-(x_559) + 1.0f);
    let x_564 : f32 = u_xlat1.x;
    u_xlat1.x = max(x_564, 0.0f);
    let x_568 : f32 = u_xlat1.x;
    u_xlat1.x = log2(x_568);
    let x_572 : f32 = u_xlat1.x;
    let x_574 : f32 = x_55.x_Vignette_Settings.y;
    u_xlat1.x = (x_572 * x_574);
    let x_578 : f32 = u_xlat1.x;
    u_xlat1.x = exp2(x_578);
    let x_585 : vec3<f32> = x_55.x_Vignette_Color;
    u_xlat8 = (-(x_585) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_589 : vec4<f32> = u_xlat1;
    let x_591 : vec3<f32> = u_xlat8;
    let x_594 : vec3<f32> = x_55.x_Vignette_Color;
    u_xlat8 = ((vec3<f32>(x_589.x, x_589.x, x_589.x) * x_591) + x_594);
    let x_596 : vec4<f32> = u_xlat0;
    let x_598 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_596.x, x_596.y, x_596.z) * x_598);
    let x_601 : f32 = u_xlat0.w;
    u_xlat2.x = (x_601 + -1.0f);
    let x_605 : f32 = u_xlat1.x;
    let x_607 : f32 = u_xlat2.x;
    u_xlat2.w = ((x_605 * x_607) + 1.0f);
  } else {
    let x_617 : vec2<f32> = vs_TEXCOORD0;
    let x_618 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_617);
    u_xlat1.x = x_618.w;
    let x_622 : f32 = u_xlat1.x;
    u_xlat3.x = (x_622 * 0.077399381f);
    let x_628 : f32 = u_xlat1.x;
    u_xlat10 = (x_628 + 0.055f);
    let x_631 : f32 = u_xlat10;
    u_xlat10 = (x_631 * 0.947867334f);
    let x_634 : f32 = u_xlat10;
    u_xlat10 = max(abs(x_634), 1.1920929e-07f);
    let x_638 : f32 = u_xlat10;
    u_xlat10 = log2(x_638);
    let x_640 : f32 = u_xlat10;
    u_xlat10 = (x_640 * 2.400000095f);
    let x_643 : f32 = u_xlat10;
    u_xlat10 = exp2(x_643);
    let x_647 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_647);
    let x_649 : bool = u_xlatb1;
    if (x_649) {
      let x_654 : f32 = u_xlat3.x;
      x_650 = x_654;
    } else {
      let x_656 : f32 = u_xlat10;
      x_650 = x_656;
    }
    let x_657 : f32 = x_650;
    u_xlat1.x = x_657;
    let x_660 : vec3<f32> = x_55.x_Vignette_Color;
    let x_662 : vec3<f32> = (-(x_660) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_663 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_662.x, x_662.y, x_662.z, x_663.w);
    let x_665 : vec4<f32> = u_xlat1;
    let x_667 : vec4<f32> = u_xlat3;
    let x_671 : vec3<f32> = x_55.x_Vignette_Color;
    let x_672 : vec3<f32> = ((vec3<f32>(x_665.x, x_665.x, x_665.x) * vec3<f32>(x_667.x, x_667.y, x_667.z)) + x_671);
    let x_673 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_672.x, x_672.y, x_672.z, x_673.w);
    let x_675 : vec4<f32> = u_xlat0;
    let x_677 : vec4<f32> = u_xlat3;
    let x_680 : vec4<f32> = u_xlat0;
    let x_683 : vec3<f32> = ((vec3<f32>(x_675.x, x_675.y, x_675.z) * vec3<f32>(x_677.x, x_677.y, x_677.z)) + -(vec3<f32>(x_680.x, x_680.y, x_680.z)));
    let x_684 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_683.x, x_683.y, x_683.z, x_684.w);
    let x_688 : f32 = x_55.x_Vignette_Opacity;
    let x_690 : vec4<f32> = u_xlat3;
    let x_693 : vec4<f32> = u_xlat0;
    u_xlat8 = ((vec3<f32>(x_688, x_688, x_688) * vec3<f32>(x_690.x, x_690.y, x_690.z)) + vec3<f32>(x_693.x, x_693.y, x_693.z));
    let x_697 : f32 = u_xlat0.w;
    u_xlat0.x = (x_697 + -1.0f);
    let x_701 : f32 = u_xlat1.x;
    let x_703 : f32 = u_xlat0.x;
    u_xlat2.w = ((x_701 * x_703) + 1.0f);
  }
  let x_708 : vec2<f32> = vs_TEXCOORD1;
  let x_711 : vec4<f32> = x_55.x_Grain_Params2;
  let x_715 : vec4<f32> = x_55.x_Grain_Params2;
  let x_717 : vec2<f32> = ((x_708 * vec2<f32>(x_711.x, x_711.y)) + vec2<f32>(x_715.z, x_715.w));
  let x_718 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_717.x, x_717.y, x_718.z, x_718.w);
  let x_725 : vec4<f32> = u_xlat0;
  let x_727 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_725.x, x_725.y));
  let x_728 : vec3<f32> = vec3<f32>(x_727.x, x_727.y, x_727.z);
  let x_729 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_728.x, x_728.y, x_728.z, x_729.w);
  let x_731 : vec3<f32> = u_xlat8;
  let x_732 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_731.x, x_731.y, x_731.z, x_732.w);
  let x_734 : vec4<f32> = u_xlat3;
  let x_738 : vec3<f32> = clamp(vec3<f32>(x_734.x, x_734.y, x_734.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_739 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_738.x, x_738.y, x_738.z, x_739.w);
  let x_742 : vec4<f32> = u_xlat3;
  u_xlat21 = dot(vec3<f32>(x_742.x, x_742.y, x_742.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_749 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_749);
  let x_753 : f32 = x_55.x_Grain_Params1.x;
  let x_754 : f32 = u_xlat21;
  u_xlat21 = ((x_753 * -(x_754)) + 1.0f);
  let x_758 : vec4<f32> = u_xlat0;
  let x_760 : vec3<f32> = u_xlat8;
  let x_761 : vec3<f32> = (vec3<f32>(x_758.x, x_758.y, x_758.z) * x_760);
  let x_762 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_761.x, x_761.y, x_761.z, x_762.w);
  let x_764 : vec4<f32> = u_xlat0;
  let x_767 : f32 = x_55.x_Grain_Params1.y;
  let x_769 : f32 = x_55.x_Grain_Params1.y;
  let x_771 : f32 = x_55.x_Grain_Params1.y;
  let x_773 : vec3<f32> = (vec3<f32>(x_764.x, x_764.y, x_764.z) * vec3<f32>(x_767, x_769, x_771));
  let x_774 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_773.x, x_773.y, x_773.z, x_774.w);
  let x_776 : vec4<f32> = u_xlat0;
  let x_778 : f32 = u_xlat21;
  let x_781 : vec3<f32> = u_xlat8;
  let x_782 : vec3<f32> = ((vec3<f32>(x_776.x, x_776.y, x_776.z) * vec3<f32>(x_778, x_778, x_778)) + x_781);
  let x_783 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_782.x, x_782.y, x_782.z, x_783.w);
  let x_785 : vec4<f32> = u_xlat2;
  let x_788 : f32 = x_55.x_PostExposure;
  let x_790 : f32 = x_55.x_PostExposure;
  let x_792 : f32 = x_55.x_PostExposure;
  let x_794 : f32 = x_55.x_PostExposure;
  let x_795 : vec4<f32> = vec4<f32>(x_788, x_790, x_792, x_794);
  u_xlat0 = (x_785 * vec4<f32>(x_795.x, x_795.y, x_795.z, x_795.w));
  let x_802 : vec4<f32> = u_xlat0;
  let x_809 : vec3<f32> = ((vec3<f32>(x_802.z, x_802.x, x_802.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_810 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_809.x, x_809.y, x_809.z, x_810.w);
  let x_812 : vec4<f32> = u_xlat0;
  let x_814 : vec3<f32> = log2(vec3<f32>(x_812.x, x_812.y, x_812.z));
  let x_815 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_814.x, x_814.y, x_814.z, x_815.w);
  let x_817 : vec4<f32> = u_xlat0;
  let x_824 : vec3<f32> = ((vec3<f32>(x_817.x, x_817.y, x_817.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_825 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_824.x, x_824.y, x_824.z, x_825.w);
  let x_827 : vec4<f32> = u_xlat0;
  let x_831 : vec3<f32> = clamp(vec3<f32>(x_827.x, x_827.y, x_827.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_832 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_831.x, x_831.y, x_831.z, x_832.w);
  let x_834 : vec4<f32> = u_xlat0;
  let x_838 : vec3<f32> = x_55.x_Lut2D_Params;
  let x_840 : vec3<f32> = (vec3<f32>(x_834.x, x_834.y, x_834.z) * vec3<f32>(x_838.z, x_838.z, x_838.z));
  let x_841 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_840.x, x_840.y, x_840.z, x_841.w);
  let x_844 : f32 = u_xlat1.x;
  u_xlat7.x = floor(x_844);
  let x_848 : vec3<f32> = x_55.x_Lut2D_Params;
  let x_851 : vec2<f32> = (vec2<f32>(x_848.x, x_848.y) * vec2<f32>(0.5f, 0.5f));
  let x_852 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_851.x, x_852.y, x_852.z, x_851.y);
  let x_854 : vec4<f32> = u_xlat1;
  let x_857 : vec3<f32> = x_55.x_Lut2D_Params;
  let x_860 : vec4<f32> = u_xlat1;
  let x_862 : vec2<f32> = ((vec2<f32>(x_854.y, x_854.z) * vec2<f32>(x_857.x, x_857.y)) + vec2<f32>(x_860.x, x_860.w));
  let x_863 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_863.x, x_862.x, x_862.y, x_863.w);
  let x_866 : f32 = u_xlat7.x;
  let x_868 : f32 = x_55.x_Lut2D_Params.y;
  let x_871 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_866 * x_868) + x_871);
  let x_879 : vec4<f32> = u_xlat1;
  let x_881 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_879.x, x_879.z));
  let x_882 : vec3<f32> = vec3<f32>(x_881.x, x_881.y, x_881.z);
  let x_883 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_882.x, x_882.y, x_882.z, x_883.w);
  let x_886 : f32 = x_55.x_Lut2D_Params.y;
  u_xlat3.x = x_886;
  u_xlat3.y = 0.0f;
  let x_889 : vec4<f32> = u_xlat1;
  let x_891 : vec4<f32> = u_xlat3;
  let x_893 : vec2<f32> = (vec2<f32>(x_889.x, x_889.z) + vec2<f32>(x_891.x, x_891.y));
  let x_894 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_893.x, x_893.y, x_894.z, x_894.w);
  let x_899 : vec4<f32> = u_xlat1;
  let x_901 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_899.x, x_899.y));
  let x_902 : vec3<f32> = vec3<f32>(x_901.x, x_901.y, x_901.z);
  let x_903 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_902.x, x_902.y, x_902.z, x_903.w);
  let x_906 : f32 = u_xlat0.x;
  let x_908 : f32 = x_55.x_Lut2D_Params.z;
  let x_911 : f32 = u_xlat7.x;
  u_xlat0.x = ((x_906 * x_908) + -(x_911));
  let x_915 : vec4<f32> = u_xlat2;
  let x_918 : vec4<f32> = u_xlat1;
  let x_920 : vec3<f32> = (-(vec3<f32>(x_915.x, x_915.y, x_915.z)) + vec3<f32>(x_918.x, x_918.y, x_918.z));
  let x_921 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_920.x, x_920.y, x_920.z, x_921.w);
  let x_923 : vec4<f32> = u_xlat0;
  let x_925 : vec4<f32> = u_xlat1;
  let x_928 : vec4<f32> = u_xlat2;
  let x_930 : vec3<f32> = ((vec3<f32>(x_923.x, x_923.x, x_923.x) * vec3<f32>(x_925.x, x_925.y, x_925.z)) + vec3<f32>(x_928.x, x_928.y, x_928.z));
  let x_931 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_930.x, x_930.y, x_930.z, x_931.w);
  let x_933 : vec2<f32> = vs_TEXCOORD0;
  let x_936 : vec4<f32> = x_55.x_Dithering_Coords;
  let x_940 : vec4<f32> = x_55.x_Dithering_Coords;
  let x_942 : vec2<f32> = ((x_933 * vec2<f32>(x_936.x, x_936.y)) + vec2<f32>(x_940.z, x_940.w));
  let x_943 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_942.x, x_942.y, x_943.z, x_943.w);
  let x_950 : vec4<f32> = u_xlat1;
  let x_952 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_950.x, x_950.y));
  u_xlat1.x = x_952.w;
  let x_956 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_956 * 2.0f) + -1.0f);
  let x_961 : f32 = u_xlat1.x;
  u_xlat8.x = ((x_961 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_967 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_967, 0.0f, 1.0f);
  let x_971 : f32 = u_xlat8.x;
  u_xlat8.x = ((x_971 * 2.0f) + -1.0f);
  let x_976 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_976)) + 1.0f);
  let x_982 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_982);
  let x_986 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_986) + 1.0f);
  let x_991 : f32 = u_xlat1.x;
  let x_993 : f32 = u_xlat8.x;
  u_xlat1.x = (x_991 * x_993);
  let x_996 : vec4<f32> = u_xlat0;
  u_xlat8 = (vec3<f32>(x_996.x, x_996.y, x_996.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1001 : vec4<f32> = u_xlat0;
  let x_1005 : vec3<f32> = max(abs(vec3<f32>(x_1001.x, x_1001.y, x_1001.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1006 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1005.x, x_1005.y, x_1005.z, x_1006.w);
  let x_1008 : vec4<f32> = u_xlat2;
  let x_1010 : vec3<f32> = log2(vec3<f32>(x_1008.x, x_1008.y, x_1008.z));
  let x_1011 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1010.x, x_1010.y, x_1010.z, x_1011.w);
  let x_1013 : vec4<f32> = u_xlat2;
  let x_1017 : vec3<f32> = (vec3<f32>(x_1013.x, x_1013.y, x_1013.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1018 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1017.x, x_1017.y, x_1017.z, x_1018.w);
  let x_1020 : vec4<f32> = u_xlat2;
  let x_1022 : vec3<f32> = exp2(vec3<f32>(x_1020.x, x_1020.y, x_1020.z));
  let x_1023 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1022.x, x_1022.y, x_1022.z, x_1023.w);
  let x_1025 : vec4<f32> = u_xlat2;
  let x_1032 : vec3<f32> = ((vec3<f32>(x_1025.x, x_1025.y, x_1025.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1033 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1032.x, x_1032.y, x_1032.z, x_1033.w);
  let x_1040 : vec4<f32> = u_xlat0;
  let x_1043 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1040.x, x_1040.y, x_1040.z, x_1040.x));
  u_xlatb0 = vec3<bool>(x_1043.x, x_1043.y, x_1043.z);
  let x_1046 : bool = u_xlatb0.x;
  if (x_1046) {
    let x_1051 : f32 = u_xlat8.x;
    x_1047 = x_1051;
  } else {
    let x_1054 : f32 = u_xlat2.x;
    x_1047 = x_1054;
  }
  let x_1055 : f32 = x_1047;
  u_xlat0.x = x_1055;
  let x_1058 : bool = u_xlatb0.y;
  if (x_1058) {
    let x_1063 : f32 = u_xlat8.y;
    x_1059 = x_1063;
  } else {
    let x_1066 : f32 = u_xlat2.y;
    x_1059 = x_1066;
  }
  let x_1067 : f32 = x_1059;
  u_xlat0.y = x_1067;
  let x_1070 : bool = u_xlatb0.z;
  if (x_1070) {
    let x_1075 : f32 = u_xlat8.z;
    x_1071 = x_1075;
  } else {
    let x_1078 : f32 = u_xlat2.z;
    x_1071 = x_1078;
  }
  let x_1079 : f32 = x_1071;
  u_xlat0.z = x_1079;
  let x_1081 : vec4<f32> = u_xlat1;
  let x_1086 : vec4<f32> = u_xlat0;
  let x_1088 : vec3<f32> = ((vec3<f32>(x_1081.x, x_1081.x, x_1081.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_1086.x, x_1086.y, x_1086.z));
  let x_1089 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1088.x, x_1088.y, x_1088.z, x_1089.w);
  let x_1091 : vec4<f32> = u_xlat0;
  let x_1094 : vec3<f32> = (vec3<f32>(x_1091.x, x_1091.y, x_1091.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1095 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1094.x, x_1094.y, x_1094.z, x_1095.w);
  let x_1097 : vec4<f32> = u_xlat0;
  let x_1100 : vec3<f32> = (vec3<f32>(x_1097.x, x_1097.y, x_1097.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1101 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1100.x, x_1100.y, x_1100.z, x_1101.w);
  let x_1103 : vec4<f32> = u_xlat2;
  let x_1106 : vec3<f32> = (vec3<f32>(x_1103.x, x_1103.y, x_1103.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1107 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1106.x, x_1106.y, x_1106.z, x_1107.w);
  let x_1109 : vec4<f32> = u_xlat2;
  let x_1112 : vec3<f32> = max(abs(vec3<f32>(x_1109.x, x_1109.y, x_1109.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1113 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1112.x, x_1112.y, x_1112.z, x_1113.w);
  let x_1115 : vec4<f32> = u_xlat2;
  let x_1117 : vec3<f32> = log2(vec3<f32>(x_1115.x, x_1115.y, x_1115.z));
  let x_1118 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1117.x, x_1117.y, x_1117.z, x_1118.w);
  let x_1120 : vec4<f32> = u_xlat2;
  let x_1123 : vec3<f32> = (vec3<f32>(x_1120.x, x_1120.y, x_1120.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1124 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1123.x, x_1123.y, x_1123.z, x_1124.w);
  let x_1126 : vec4<f32> = u_xlat2;
  let x_1128 : vec3<f32> = exp2(vec3<f32>(x_1126.x, x_1126.y, x_1126.z));
  let x_1129 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1128.x, x_1128.y, x_1128.z, x_1129.w);
  let x_1132 : vec4<f32> = u_xlat0;
  let x_1134 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1132.x, x_1132.y, x_1132.z, x_1132.x));
  u_xlatb0 = vec3<bool>(x_1134.x, x_1134.y, x_1134.z);
  let x_1139 : bool = u_xlatb0.x;
  if (x_1139) {
    let x_1144 : f32 = u_xlat1.x;
    x_1140 = x_1144;
  } else {
    let x_1147 : f32 = u_xlat2.x;
    x_1140 = x_1147;
  }
  let x_1148 : f32 = x_1140;
  SV_Target0.x = x_1148;
  let x_1152 : bool = u_xlatb0.y;
  if (x_1152) {
    let x_1157 : f32 = u_xlat1.y;
    x_1153 = x_1157;
  } else {
    let x_1160 : f32 = u_xlat2.y;
    x_1153 = x_1160;
  }
  let x_1161 : f32 = x_1153;
  SV_Target0.y = x_1161;
  let x_1164 : bool = u_xlatb0.z;
  if (x_1164) {
    let x_1169 : f32 = u_xlat1.z;
    x_1165 = x_1169;
  } else {
    let x_1172 : f32 = u_xlat2.z;
    x_1165 = x_1172;
  }
  let x_1173 : f32 = x_1165;
  SV_Target0.z = x_1173;
  let x_1176 : f32 = u_xlat0.w;
  SV_Target0.w = x_1176;
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

