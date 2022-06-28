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
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(3) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat7 : vec2<f32>;

@group(0) @binding(0) var<uniform> x_55 : PGlobals;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(6) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(14) var sampler_ChromaticAberration_SpectralLut : sampler;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainTex : sampler;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(4) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_BloomTex : sampler;

@group(0) @binding(5) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(13) var sampler_Bloom_DirtTex : sampler;

var<private> u_xlatb1 : bool;

var<private> u_xlat22 : f32;

var<private> u_xlat8 : vec3<f32>;

@group(0) @binding(8) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(16) var sampler_Vignette_Mask : sampler;

var<private> u_xlat15 : f32;

@group(0) @binding(7) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(15) var sampler_Lut2D : sampler;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_DitheringTex : sampler;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_647 : f32;
  var x_959 : f32;
  var x_971 : f32;
  var x_983 : f32;
  var x_1052 : f32;
  var x_1065 : f32;
  var x_1077 : f32;
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
  u_xlat3 = (x_429 * vec4<f32>(0.0625f, 0.0625f, 0.0625f, 0.0625f));
  let x_433 : vec4<f32> = u_xlat2;
  let x_436 : vec3<f32> = x_55.x_Bloom_Settings;
  let x_438 : vec3<f32> = (vec3<f32>(x_433.x, x_433.y, x_433.z) * vec3<f32>(x_436.z, x_436.z, x_436.z));
  let x_439 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_438.x, x_438.y, x_438.z, x_439.w);
  u_xlat2.w = 0.0f;
  let x_442 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_442 * vec4<f32>(0.0625f, 0.0625f, 0.0625f, 1.0f));
  let x_445 : vec4<f32> = u_xlat0;
  let x_449 : vec3<f32> = x_55.x_Bloom_Color;
  let x_450 : vec3<f32> = (vec3<f32>(x_445.x, x_445.y, x_445.z) * x_449);
  let x_451 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_450.x, x_450.y, x_450.z, x_451.w);
  let x_454 : f32 = u_xlat0.w;
  u_xlat4.w = (x_454 * 0.0625f);
  let x_457 : vec4<f32> = u_xlat1;
  let x_458 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_457 + x_458);
  let x_460 : vec4<f32> = u_xlat2;
  let x_461 : vec4<f32> = u_xlat3;
  let x_463 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_460 * x_461) + x_463);
  let x_470 : f32 = x_55.x_Vignette_Mode;
  u_xlatb1 = (x_470 < 0.5f);
  let x_472 : bool = u_xlatb1;
  if (x_472) {
    let x_475 : vec2<f32> = vs_TEXCOORD0;
    let x_479 : vec2<f32> = x_55.x_Vignette_Center;
    let x_481 : vec2<f32> = (x_475 + -(x_479));
    let x_482 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_481.x, x_481.y, x_482.z, x_482.w);
    let x_484 : vec4<f32> = u_xlat1;
    let x_489 : vec4<f32> = x_55.x_Vignette_Settings;
    let x_491 : vec2<f32> = (abs(vec2<f32>(x_484.y, x_484.x)) * vec2<f32>(x_489.x, x_489.x));
    let x_492 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_492.x, x_491.x, x_491.y, x_492.w);
    let x_497 : f32 = x_55.x_ScreenParams.x;
    let x_500 : f32 = x_55.x_ScreenParams.y;
    u_xlat22 = (x_497 / x_500);
    let x_502 : f32 = u_xlat22;
    u_xlat22 = (x_502 + -1.0f);
    let x_505 : f32 = x_55.x_Vignette_Settings.w;
    let x_506 : f32 = u_xlat22;
    u_xlat22 = ((x_505 * x_506) + 1.0f);
    let x_509 : f32 = u_xlat22;
    let x_512 : f32 = u_xlat1.z;
    u_xlat1.x = (x_509 * x_512);
    let x_515 : vec4<f32> = u_xlat1;
    let x_516 : vec2<f32> = vec2<f32>(x_515.x, x_515.y);
    let x_517 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_516.x, x_516.y, x_517.z, x_517.w);
    let x_519 : vec4<f32> = u_xlat1;
    let x_523 : vec2<f32> = clamp(vec2<f32>(x_519.x, x_519.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_524 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_523.x, x_523.y, x_524.z, x_524.w);
    let x_526 : vec4<f32> = u_xlat1;
    let x_528 : vec2<f32> = log2(vec2<f32>(x_526.x, x_526.y));
    let x_529 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_528.x, x_528.y, x_529.z, x_529.w);
    let x_531 : vec4<f32> = u_xlat1;
    let x_534 : vec4<f32> = x_55.x_Vignette_Settings;
    let x_536 : vec2<f32> = (vec2<f32>(x_531.x, x_531.y) * vec2<f32>(x_534.z, x_534.z));
    let x_537 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_536.x, x_536.y, x_537.z, x_537.w);
    let x_539 : vec4<f32> = u_xlat1;
    let x_541 : vec2<f32> = exp2(vec2<f32>(x_539.x, x_539.y));
    let x_542 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_541.x, x_541.y, x_542.z, x_542.w);
    let x_544 : vec4<f32> = u_xlat1;
    let x_546 : vec4<f32> = u_xlat1;
    u_xlat1.x = dot(vec2<f32>(x_544.x, x_544.y), vec2<f32>(x_546.x, x_546.y));
    let x_551 : f32 = u_xlat1.x;
    u_xlat1.x = (-(x_551) + 1.0f);
    let x_556 : f32 = u_xlat1.x;
    u_xlat1.x = max(x_556, 0.0f);
    let x_560 : f32 = u_xlat1.x;
    u_xlat1.x = log2(x_560);
    let x_564 : f32 = u_xlat1.x;
    let x_566 : f32 = x_55.x_Vignette_Settings.y;
    u_xlat1.x = (x_564 * x_566);
    let x_570 : f32 = u_xlat1.x;
    u_xlat1.x = exp2(x_570);
    let x_577 : vec3<f32> = x_55.x_Vignette_Color;
    u_xlat8 = (-(x_577) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_581 : vec4<f32> = u_xlat1;
    let x_583 : vec3<f32> = u_xlat8;
    let x_586 : vec3<f32> = x_55.x_Vignette_Color;
    u_xlat8 = ((vec3<f32>(x_581.x, x_581.x, x_581.x) * x_583) + x_586);
    let x_588 : vec4<f32> = u_xlat0;
    let x_590 : vec3<f32> = u_xlat8;
    let x_591 : vec3<f32> = (vec3<f32>(x_588.x, x_588.y, x_588.z) * x_590);
    let x_592 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_591.x, x_591.y, x_591.z, x_592.w);
    let x_595 : f32 = u_xlat0.w;
    u_xlat8.x = (x_595 + -1.0f);
    let x_599 : f32 = u_xlat1.x;
    let x_601 : f32 = u_xlat8.x;
    u_xlat2.w = ((x_599 * x_601) + 1.0f);
  } else {
    let x_611 : vec2<f32> = vs_TEXCOORD0;
    let x_612 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_611);
    u_xlat1.x = x_612.w;
    let x_616 : f32 = u_xlat1.x;
    u_xlat1.z = (x_616 + 0.055f);
    let x_620 : vec4<f32> = u_xlat1;
    let x_625 : vec2<f32> = (vec2<f32>(x_620.x, x_620.z) * vec2<f32>(0.077399381f, 0.947867334f));
    let x_626 : vec3<f32> = u_xlat8;
    u_xlat8 = vec3<f32>(x_625.x, x_625.y, x_626.z);
    let x_630 : f32 = u_xlat8.y;
    u_xlat15 = max(abs(x_630), 1.1920929e-07f);
    let x_634 : f32 = u_xlat15;
    u_xlat15 = log2(x_634);
    let x_636 : f32 = u_xlat15;
    u_xlat15 = (x_636 * 2.400000095f);
    let x_639 : f32 = u_xlat15;
    u_xlat15 = exp2(x_639);
    let x_643 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_643);
    let x_645 : bool = u_xlatb1;
    if (x_645) {
      let x_651 : f32 = u_xlat8.x;
      x_647 = x_651;
    } else {
      let x_653 : f32 = u_xlat15;
      x_647 = x_653;
    }
    let x_654 : f32 = x_647;
    u_xlat1.x = x_654;
    let x_657 : vec3<f32> = x_55.x_Vignette_Color;
    u_xlat8 = (-(x_657) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_660 : vec4<f32> = u_xlat1;
    let x_662 : vec3<f32> = u_xlat8;
    let x_665 : vec3<f32> = x_55.x_Vignette_Color;
    u_xlat8 = ((vec3<f32>(x_660.x, x_660.x, x_660.x) * x_662) + x_665);
    let x_667 : vec4<f32> = u_xlat0;
    let x_669 : vec3<f32> = u_xlat8;
    let x_671 : vec4<f32> = u_xlat0;
    u_xlat8 = ((vec3<f32>(x_667.x, x_667.y, x_667.z) * x_669) + -(vec3<f32>(x_671.x, x_671.y, x_671.z)));
    let x_677 : f32 = x_55.x_Vignette_Opacity;
    let x_679 : vec3<f32> = u_xlat8;
    let x_681 : vec4<f32> = u_xlat0;
    let x_683 : vec3<f32> = ((vec3<f32>(x_677, x_677, x_677) * x_679) + vec3<f32>(x_681.x, x_681.y, x_681.z));
    let x_684 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_683.x, x_683.y, x_683.z, x_684.w);
    let x_687 : f32 = u_xlat0.w;
    u_xlat0.x = (x_687 + -1.0f);
    let x_691 : f32 = u_xlat1.x;
    let x_693 : f32 = u_xlat0.x;
    u_xlat2.w = ((x_691 * x_693) + 1.0f);
  }
  let x_697 : vec4<f32> = u_xlat2;
  let x_700 : f32 = x_55.x_PostExposure;
  let x_702 : f32 = x_55.x_PostExposure;
  let x_704 : f32 = x_55.x_PostExposure;
  let x_706 : f32 = x_55.x_PostExposure;
  let x_707 : vec4<f32> = vec4<f32>(x_700, x_702, x_704, x_706);
  u_xlat0 = (x_697 * vec4<f32>(x_707.x, x_707.y, x_707.z, x_707.w));
  let x_714 : vec4<f32> = u_xlat0;
  let x_721 : vec3<f32> = ((vec3<f32>(x_714.z, x_714.x, x_714.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_722 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_721.x, x_721.y, x_721.z, x_722.w);
  let x_724 : vec4<f32> = u_xlat0;
  let x_726 : vec3<f32> = log2(vec3<f32>(x_724.x, x_724.y, x_724.z));
  let x_727 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_726.x, x_726.y, x_726.z, x_727.w);
  let x_729 : vec4<f32> = u_xlat0;
  let x_736 : vec3<f32> = ((vec3<f32>(x_729.x, x_729.y, x_729.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_737 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_736.x, x_736.y, x_736.z, x_737.w);
  let x_739 : vec4<f32> = u_xlat0;
  let x_743 : vec3<f32> = clamp(vec3<f32>(x_739.x, x_739.y, x_739.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_744 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_743.x, x_743.y, x_743.z, x_744.w);
  let x_746 : vec4<f32> = u_xlat0;
  let x_750 : vec3<f32> = x_55.x_Lut2D_Params;
  let x_752 : vec3<f32> = (vec3<f32>(x_746.x, x_746.y, x_746.z) * vec3<f32>(x_750.z, x_750.z, x_750.z));
  let x_753 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_752.x, x_752.y, x_752.z, x_753.w);
  let x_756 : f32 = u_xlat1.x;
  u_xlat7.x = floor(x_756);
  let x_760 : vec3<f32> = x_55.x_Lut2D_Params;
  let x_763 : vec2<f32> = (vec2<f32>(x_760.x, x_760.y) * vec2<f32>(0.5f, 0.5f));
  let x_764 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_763.x, x_764.y, x_764.z, x_763.y);
  let x_766 : vec4<f32> = u_xlat1;
  let x_769 : vec3<f32> = x_55.x_Lut2D_Params;
  let x_772 : vec4<f32> = u_xlat1;
  let x_774 : vec2<f32> = ((vec2<f32>(x_766.y, x_766.z) * vec2<f32>(x_769.x, x_769.y)) + vec2<f32>(x_772.x, x_772.w));
  let x_775 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_775.x, x_774.x, x_774.y, x_775.w);
  let x_778 : f32 = u_xlat7.x;
  let x_780 : f32 = x_55.x_Lut2D_Params.y;
  let x_783 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_778 * x_780) + x_783);
  let x_791 : vec4<f32> = u_xlat1;
  let x_793 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_791.x, x_791.z));
  let x_794 : vec3<f32> = vec3<f32>(x_793.x, x_793.y, x_793.z);
  let x_795 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_794.x, x_794.y, x_794.z, x_795.w);
  let x_798 : f32 = x_55.x_Lut2D_Params.y;
  u_xlat3.x = x_798;
  u_xlat3.y = 0.0f;
  let x_801 : vec4<f32> = u_xlat1;
  let x_803 : vec4<f32> = u_xlat3;
  let x_805 : vec2<f32> = (vec2<f32>(x_801.x, x_801.z) + vec2<f32>(x_803.x, x_803.y));
  let x_806 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_805.x, x_805.y, x_806.z, x_806.w);
  let x_811 : vec4<f32> = u_xlat1;
  let x_813 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_811.x, x_811.y));
  let x_814 : vec3<f32> = vec3<f32>(x_813.x, x_813.y, x_813.z);
  let x_815 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_814.x, x_814.y, x_814.z, x_815.w);
  let x_818 : f32 = u_xlat0.x;
  let x_820 : f32 = x_55.x_Lut2D_Params.z;
  let x_823 : f32 = u_xlat7.x;
  u_xlat0.x = ((x_818 * x_820) + -(x_823));
  let x_827 : vec4<f32> = u_xlat2;
  let x_830 : vec4<f32> = u_xlat1;
  let x_832 : vec3<f32> = (-(vec3<f32>(x_827.x, x_827.y, x_827.z)) + vec3<f32>(x_830.x, x_830.y, x_830.z));
  let x_833 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_832.x, x_832.y, x_832.z, x_833.w);
  let x_835 : vec4<f32> = u_xlat0;
  let x_837 : vec4<f32> = u_xlat1;
  let x_840 : vec4<f32> = u_xlat2;
  let x_842 : vec3<f32> = ((vec3<f32>(x_835.x, x_835.x, x_835.x) * vec3<f32>(x_837.x, x_837.y, x_837.z)) + vec3<f32>(x_840.x, x_840.y, x_840.z));
  let x_843 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_842.x, x_842.y, x_842.z, x_843.w);
  let x_845 : vec2<f32> = vs_TEXCOORD0;
  let x_848 : vec4<f32> = x_55.x_Dithering_Coords;
  let x_852 : vec4<f32> = x_55.x_Dithering_Coords;
  let x_854 : vec2<f32> = ((x_845 * vec2<f32>(x_848.x, x_848.y)) + vec2<f32>(x_852.z, x_852.w));
  let x_855 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_854.x, x_854.y, x_855.z, x_855.w);
  let x_862 : vec4<f32> = u_xlat1;
  let x_864 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_862.x, x_862.y));
  u_xlat1.x = x_864.w;
  let x_868 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_868 * 2.0f) + -1.0f);
  let x_873 : f32 = u_xlat1.x;
  u_xlat8.x = ((x_873 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_879 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_879, 0.0f, 1.0f);
  let x_883 : f32 = u_xlat8.x;
  u_xlat8.x = ((x_883 * 2.0f) + -1.0f);
  let x_888 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_888)) + 1.0f);
  let x_894 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_894);
  let x_898 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_898) + 1.0f);
  let x_903 : f32 = u_xlat1.x;
  let x_905 : f32 = u_xlat8.x;
  u_xlat1.x = (x_903 * x_905);
  let x_908 : vec4<f32> = u_xlat0;
  u_xlat8 = (vec3<f32>(x_908.x, x_908.y, x_908.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_913 : vec4<f32> = u_xlat0;
  let x_917 : vec3<f32> = max(abs(vec3<f32>(x_913.x, x_913.y, x_913.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_918 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_917.x, x_917.y, x_917.z, x_918.w);
  let x_920 : vec4<f32> = u_xlat2;
  let x_922 : vec3<f32> = log2(vec3<f32>(x_920.x, x_920.y, x_920.z));
  let x_923 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_922.x, x_922.y, x_922.z, x_923.w);
  let x_925 : vec4<f32> = u_xlat2;
  let x_929 : vec3<f32> = (vec3<f32>(x_925.x, x_925.y, x_925.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_930 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_929.x, x_929.y, x_929.z, x_930.w);
  let x_932 : vec4<f32> = u_xlat2;
  let x_934 : vec3<f32> = exp2(vec3<f32>(x_932.x, x_932.y, x_932.z));
  let x_935 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_934.x, x_934.y, x_934.z, x_935.w);
  let x_937 : vec4<f32> = u_xlat2;
  let x_944 : vec3<f32> = ((vec3<f32>(x_937.x, x_937.y, x_937.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_945 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_944.x, x_944.y, x_944.z, x_945.w);
  let x_952 : vec4<f32> = u_xlat0;
  let x_955 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_952.x, x_952.y, x_952.z, x_952.x));
  u_xlatb0 = vec3<bool>(x_955.x, x_955.y, x_955.z);
  let x_958 : bool = u_xlatb0.x;
  if (x_958) {
    let x_963 : f32 = u_xlat8.x;
    x_959 = x_963;
  } else {
    let x_966 : f32 = u_xlat2.x;
    x_959 = x_966;
  }
  let x_967 : f32 = x_959;
  u_xlat0.x = x_967;
  let x_970 : bool = u_xlatb0.y;
  if (x_970) {
    let x_975 : f32 = u_xlat8.y;
    x_971 = x_975;
  } else {
    let x_978 : f32 = u_xlat2.y;
    x_971 = x_978;
  }
  let x_979 : f32 = x_971;
  u_xlat0.y = x_979;
  let x_982 : bool = u_xlatb0.z;
  if (x_982) {
    let x_987 : f32 = u_xlat8.z;
    x_983 = x_987;
  } else {
    let x_990 : f32 = u_xlat2.z;
    x_983 = x_990;
  }
  let x_991 : f32 = x_983;
  u_xlat0.z = x_991;
  let x_993 : vec4<f32> = u_xlat1;
  let x_998 : vec4<f32> = u_xlat0;
  let x_1000 : vec3<f32> = ((vec3<f32>(x_993.x, x_993.x, x_993.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_998.x, x_998.y, x_998.z));
  let x_1001 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1000.x, x_1000.y, x_1000.z, x_1001.w);
  let x_1003 : vec4<f32> = u_xlat0;
  let x_1006 : vec3<f32> = (vec3<f32>(x_1003.x, x_1003.y, x_1003.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1007 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1006.x, x_1006.y, x_1006.z, x_1007.w);
  let x_1009 : vec4<f32> = u_xlat0;
  let x_1012 : vec3<f32> = (vec3<f32>(x_1009.x, x_1009.y, x_1009.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1013 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1012.x, x_1012.y, x_1012.z, x_1013.w);
  let x_1015 : vec4<f32> = u_xlat2;
  let x_1018 : vec3<f32> = (vec3<f32>(x_1015.x, x_1015.y, x_1015.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1019 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1018.x, x_1018.y, x_1018.z, x_1019.w);
  let x_1021 : vec4<f32> = u_xlat2;
  let x_1024 : vec3<f32> = max(abs(vec3<f32>(x_1021.x, x_1021.y, x_1021.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1025 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1024.x, x_1024.y, x_1024.z, x_1025.w);
  let x_1027 : vec4<f32> = u_xlat2;
  let x_1029 : vec3<f32> = log2(vec3<f32>(x_1027.x, x_1027.y, x_1027.z));
  let x_1030 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1029.x, x_1029.y, x_1029.z, x_1030.w);
  let x_1032 : vec4<f32> = u_xlat2;
  let x_1035 : vec3<f32> = (vec3<f32>(x_1032.x, x_1032.y, x_1032.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1036 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1035.x, x_1035.y, x_1035.z, x_1036.w);
  let x_1038 : vec4<f32> = u_xlat2;
  let x_1040 : vec3<f32> = exp2(vec3<f32>(x_1038.x, x_1038.y, x_1038.z));
  let x_1041 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1040.x, x_1040.y, x_1040.z, x_1041.w);
  let x_1044 : vec4<f32> = u_xlat0;
  let x_1046 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1044.x, x_1044.y, x_1044.z, x_1044.x));
  u_xlatb0 = vec3<bool>(x_1046.x, x_1046.y, x_1046.z);
  let x_1051 : bool = u_xlatb0.x;
  if (x_1051) {
    let x_1056 : f32 = u_xlat1.x;
    x_1052 = x_1056;
  } else {
    let x_1059 : f32 = u_xlat2.x;
    x_1052 = x_1059;
  }
  let x_1060 : f32 = x_1052;
  SV_Target0.x = x_1060;
  let x_1064 : bool = u_xlatb0.y;
  if (x_1064) {
    let x_1069 : f32 = u_xlat1.y;
    x_1065 = x_1069;
  } else {
    let x_1072 : f32 = u_xlat2.y;
    x_1065 = x_1072;
  }
  let x_1073 : f32 = x_1065;
  SV_Target0.y = x_1073;
  let x_1076 : bool = u_xlatb0.z;
  if (x_1076) {
    let x_1081 : f32 = u_xlat1.z;
    x_1077 = x_1081;
  } else {
    let x_1084 : f32 = u_xlat2.z;
    x_1077 = x_1084;
  }
  let x_1085 : f32 = x_1077;
  SV_Target0.z = x_1085;
  let x_1088 : f32 = u_xlat0.w;
  SV_Target0.w = x_1088;
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

