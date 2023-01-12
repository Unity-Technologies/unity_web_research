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
  x_Grain_Params1 : vec2<f32>,
  x_Grain_Params2 : vec4<f32>,
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

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(6) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(14) var sampler_Vignette_Mask : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(7) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(15) var sampler_GrainTex : sampler;

@group(0) @binding(0) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_DitheringTex : sampler;

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
  var u_xlat9 : f32;
  var x_653 : f32;
  var u_xlat21 : f32;
  var u_xlatb0 : vec3<bool>;
  var x_892 : f32;
  var x_904 : f32;
  var x_916 : f32;
  var x_983 : f32;
  var x_995 : f32;
  var x_1007 : f32;
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
    let x_607 : f32 = u_xlat1.x;
    let x_609 : f32 = u_xlat2.x;
    SV_Target0.w = ((x_607 * x_609) + 1.0f);
  } else {
    let x_620 : vec2<f32> = vs_TEXCOORD0;
    let x_621 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_620);
    u_xlat1.x = x_621.w;
    let x_625 : f32 = u_xlat1.x;
    u_xlat2.x = (x_625 * 0.077399381f);
    let x_631 : f32 = u_xlat1.x;
    u_xlat9 = (x_631 + 0.055f);
    let x_634 : f32 = u_xlat9;
    u_xlat9 = (x_634 * 0.947867334f);
    let x_637 : f32 = u_xlat9;
    u_xlat9 = max(abs(x_637), 1.1920929e-07f);
    let x_641 : f32 = u_xlat9;
    u_xlat9 = log2(x_641);
    let x_643 : f32 = u_xlat9;
    u_xlat9 = (x_643 * 2.400000095f);
    let x_646 : f32 = u_xlat9;
    u_xlat9 = exp2(x_646);
    let x_650 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_650);
    let x_652 : bool = u_xlatb1;
    if (x_652) {
      let x_657 : f32 = u_xlat2.x;
      x_653 = x_657;
    } else {
      let x_659 : f32 = u_xlat9;
      x_653 = x_659;
    }
    let x_660 : f32 = x_653;
    u_xlat1.x = x_660;
    let x_663 : vec3<f32> = x_55.x_Vignette_Color;
    let x_665 : vec3<f32> = (-(x_663) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_666 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_665.x, x_665.y, x_665.z, x_666.w);
    let x_668 : vec4<f32> = u_xlat1;
    let x_670 : vec4<f32> = u_xlat2;
    let x_674 : vec3<f32> = x_55.x_Vignette_Color;
    let x_675 : vec3<f32> = ((vec3<f32>(x_668.x, x_668.x, x_668.x) * vec3<f32>(x_670.x, x_670.y, x_670.z)) + x_674);
    let x_676 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_675.x, x_675.y, x_675.z, x_676.w);
    let x_678 : vec4<f32> = u_xlat0;
    let x_680 : vec4<f32> = u_xlat2;
    let x_683 : vec4<f32> = u_xlat0;
    let x_686 : vec3<f32> = ((vec3<f32>(x_678.x, x_678.y, x_678.z) * vec3<f32>(x_680.x, x_680.y, x_680.z)) + -(vec3<f32>(x_683.x, x_683.y, x_683.z)));
    let x_687 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_686.x, x_686.y, x_686.z, x_687.w);
    let x_691 : f32 = x_55.x_Vignette_Opacity;
    let x_693 : vec4<f32> = u_xlat2;
    let x_696 : vec4<f32> = u_xlat0;
    u_xlat8 = ((vec3<f32>(x_691, x_691, x_691) * vec3<f32>(x_693.x, x_693.y, x_693.z)) + vec3<f32>(x_696.x, x_696.y, x_696.z));
    let x_700 : f32 = u_xlat0.w;
    u_xlat0.x = (x_700 + -1.0f);
    let x_704 : f32 = u_xlat1.x;
    let x_706 : f32 = u_xlat0.x;
    SV_Target0.w = ((x_704 * x_706) + 1.0f);
  }
  let x_711 : vec2<f32> = vs_TEXCOORD1;
  let x_714 : vec4<f32> = x_55.x_Grain_Params2;
  let x_718 : vec4<f32> = x_55.x_Grain_Params2;
  let x_720 : vec2<f32> = ((x_711 * vec2<f32>(x_714.x, x_714.y)) + vec2<f32>(x_718.z, x_718.w));
  let x_721 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_720.x, x_720.y, x_721.z, x_721.w);
  let x_728 : vec4<f32> = u_xlat0;
  let x_730 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_728.x, x_728.y));
  let x_731 : vec3<f32> = vec3<f32>(x_730.x, x_730.y, x_730.z);
  let x_732 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_731.x, x_731.y, x_731.z, x_732.w);
  let x_734 : vec3<f32> = u_xlat8;
  let x_735 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_734.x, x_734.y, x_734.z, x_735.w);
  let x_737 : vec4<f32> = u_xlat2;
  let x_741 : vec3<f32> = clamp(vec3<f32>(x_737.x, x_737.y, x_737.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_742 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_741.x, x_741.y, x_741.z, x_742.w);
  let x_745 : vec4<f32> = u_xlat2;
  u_xlat21 = dot(vec3<f32>(x_745.x, x_745.y, x_745.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_752 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_752);
  let x_756 : f32 = x_55.x_Grain_Params1.x;
  let x_757 : f32 = u_xlat21;
  u_xlat21 = ((x_756 * -(x_757)) + 1.0f);
  let x_761 : vec4<f32> = u_xlat0;
  let x_763 : vec3<f32> = u_xlat8;
  let x_764 : vec3<f32> = (vec3<f32>(x_761.x, x_761.y, x_761.z) * x_763);
  let x_765 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_764.x, x_764.y, x_764.z, x_765.w);
  let x_767 : vec4<f32> = u_xlat0;
  let x_770 : f32 = x_55.x_Grain_Params1.y;
  let x_772 : f32 = x_55.x_Grain_Params1.y;
  let x_774 : f32 = x_55.x_Grain_Params1.y;
  let x_776 : vec3<f32> = (vec3<f32>(x_767.x, x_767.y, x_767.z) * vec3<f32>(x_770, x_772, x_774));
  let x_777 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_776.x, x_776.y, x_776.z, x_777.w);
  let x_779 : vec4<f32> = u_xlat0;
  let x_781 : f32 = u_xlat21;
  let x_784 : vec3<f32> = u_xlat8;
  let x_785 : vec3<f32> = ((vec3<f32>(x_779.x, x_779.y, x_779.z) * vec3<f32>(x_781, x_781, x_781)) + x_784);
  let x_786 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_785.x, x_785.y, x_785.z, x_786.w);
  let x_788 : vec2<f32> = vs_TEXCOORD0;
  let x_791 : vec4<f32> = x_55.x_Dithering_Coords;
  let x_795 : vec4<f32> = x_55.x_Dithering_Coords;
  let x_797 : vec2<f32> = ((x_788 * vec2<f32>(x_791.x, x_791.y)) + vec2<f32>(x_795.z, x_795.w));
  let x_798 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_797.x, x_797.y, x_798.z, x_798.w);
  let x_805 : vec4<f32> = u_xlat1;
  let x_807 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_805.x, x_805.y));
  u_xlat21 = x_807.w;
  let x_809 : f32 = u_xlat21;
  u_xlat21 = ((x_809 * 2.0f) + -1.0f);
  let x_812 : f32 = u_xlat21;
  u_xlat1.x = ((x_812 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_818 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_818, 0.0f, 1.0f);
  let x_822 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_822 * 2.0f) + -1.0f);
  let x_826 : f32 = u_xlat21;
  u_xlat21 = (-(abs(x_826)) + 1.0f);
  let x_830 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_830);
  let x_832 : f32 = u_xlat21;
  u_xlat21 = (-(x_832) + 1.0f);
  let x_835 : f32 = u_xlat21;
  let x_837 : f32 = u_xlat1.x;
  u_xlat21 = (x_835 * x_837);
  let x_839 : vec4<f32> = u_xlat0;
  let x_843 : vec3<f32> = (vec3<f32>(x_839.x, x_839.y, x_839.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_844 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_843.x, x_843.y, x_843.z, x_844.w);
  let x_846 : vec4<f32> = u_xlat0;
  let x_850 : vec3<f32> = max(abs(vec3<f32>(x_846.x, x_846.y, x_846.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_851 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_850.x, x_850.y, x_850.z, x_851.w);
  let x_853 : vec4<f32> = u_xlat2;
  let x_855 : vec3<f32> = log2(vec3<f32>(x_853.x, x_853.y, x_853.z));
  let x_856 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_855.x, x_855.y, x_855.z, x_856.w);
  let x_858 : vec4<f32> = u_xlat2;
  let x_862 : vec3<f32> = (vec3<f32>(x_858.x, x_858.y, x_858.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_863 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_862.x, x_862.y, x_862.z, x_863.w);
  let x_865 : vec4<f32> = u_xlat2;
  let x_867 : vec3<f32> = exp2(vec3<f32>(x_865.x, x_865.y, x_865.z));
  let x_868 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_867.x, x_867.y, x_867.z, x_868.w);
  let x_870 : vec4<f32> = u_xlat2;
  let x_877 : vec3<f32> = ((vec3<f32>(x_870.x, x_870.y, x_870.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_878 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_877.x, x_877.y, x_877.z, x_878.w);
  let x_885 : vec4<f32> = u_xlat0;
  let x_888 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_885.x, x_885.y, x_885.z, x_885.x));
  u_xlatb0 = vec3<bool>(x_888.x, x_888.y, x_888.z);
  let x_891 : bool = u_xlatb0.x;
  if (x_891) {
    let x_896 : f32 = u_xlat1.x;
    x_892 = x_896;
  } else {
    let x_899 : f32 = u_xlat2.x;
    x_892 = x_899;
  }
  let x_900 : f32 = x_892;
  u_xlat0.x = x_900;
  let x_903 : bool = u_xlatb0.y;
  if (x_903) {
    let x_908 : f32 = u_xlat1.y;
    x_904 = x_908;
  } else {
    let x_911 : f32 = u_xlat2.y;
    x_904 = x_911;
  }
  let x_912 : f32 = x_904;
  u_xlat0.y = x_912;
  let x_915 : bool = u_xlatb0.z;
  if (x_915) {
    let x_920 : f32 = u_xlat1.z;
    x_916 = x_920;
  } else {
    let x_923 : f32 = u_xlat2.z;
    x_916 = x_923;
  }
  let x_924 : f32 = x_916;
  u_xlat0.z = x_924;
  let x_926 : f32 = u_xlat21;
  let x_931 : vec4<f32> = u_xlat0;
  let x_933 : vec3<f32> = ((vec3<f32>(x_926, x_926, x_926) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_931.x, x_931.y, x_931.z));
  let x_934 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_933.x, x_933.y, x_933.z, x_934.w);
  let x_936 : vec4<f32> = u_xlat0;
  let x_939 : vec3<f32> = (vec3<f32>(x_936.x, x_936.y, x_936.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_940 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_939.x, x_939.y, x_939.z, x_940.w);
  let x_942 : vec4<f32> = u_xlat0;
  let x_945 : vec3<f32> = (vec3<f32>(x_942.x, x_942.y, x_942.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_946 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_945.x, x_945.y, x_945.z, x_946.w);
  let x_948 : vec4<f32> = u_xlat2;
  let x_951 : vec3<f32> = (vec3<f32>(x_948.x, x_948.y, x_948.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_952 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_951.x, x_951.y, x_951.z, x_952.w);
  let x_954 : vec4<f32> = u_xlat2;
  let x_957 : vec3<f32> = max(abs(vec3<f32>(x_954.x, x_954.y, x_954.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_958 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_957.x, x_957.y, x_957.z, x_958.w);
  let x_960 : vec4<f32> = u_xlat2;
  let x_962 : vec3<f32> = log2(vec3<f32>(x_960.x, x_960.y, x_960.z));
  let x_963 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_962.x, x_962.y, x_962.z, x_963.w);
  let x_965 : vec4<f32> = u_xlat2;
  let x_968 : vec3<f32> = (vec3<f32>(x_965.x, x_965.y, x_965.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_969 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_968.x, x_968.y, x_968.z, x_969.w);
  let x_971 : vec4<f32> = u_xlat2;
  let x_973 : vec3<f32> = exp2(vec3<f32>(x_971.x, x_971.y, x_971.z));
  let x_974 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_973.x, x_973.y, x_973.z, x_974.w);
  let x_977 : vec4<f32> = u_xlat0;
  let x_979 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_977.x, x_977.y, x_977.z, x_977.x));
  u_xlatb0 = vec3<bool>(x_979.x, x_979.y, x_979.z);
  let x_982 : bool = u_xlatb0.x;
  if (x_982) {
    let x_987 : f32 = u_xlat1.x;
    x_983 = x_987;
  } else {
    let x_990 : f32 = u_xlat2.x;
    x_983 = x_990;
  }
  let x_991 : f32 = x_983;
  SV_Target0.x = x_991;
  let x_994 : bool = u_xlatb0.y;
  if (x_994) {
    let x_999 : f32 = u_xlat1.y;
    x_995 = x_999;
  } else {
    let x_1002 : f32 = u_xlat2.y;
    x_995 = x_1002;
  }
  let x_1003 : f32 = x_995;
  SV_Target0.y = x_1003;
  let x_1006 : bool = u_xlatb0.z;
  if (x_1006) {
    let x_1011 : f32 = u_xlat1.z;
    x_1007 = x_1011;
  } else {
    let x_1014 : f32 = u_xlat2.z;
    x_1007 = x_1014;
  }
  let x_1015 : f32 = x_1007;
  SV_Target0.z = x_1015;
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

