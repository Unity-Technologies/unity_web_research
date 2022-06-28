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

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(7) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(15) var sampler_Vignette_Mask : sampler;

var<private> u_xlat9 : f32;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(8) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(16) var sampler_GrainTex : sampler;

var<private> u_xlat21 : f32;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_DitheringTex : sampler;

var<private> u_xlatb0 : vec3<bool>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_646 : f32;
  var x_885 : f32;
  var x_897 : f32;
  var x_909 : f32;
  var x_976 : f32;
  var x_988 : f32;
  var x_1000 : f32;
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
    u_xlat8 = (vec3<f32>(x_588.x, x_588.y, x_588.z) * x_590);
    let x_593 : f32 = u_xlat0.w;
    u_xlat2.x = (x_593 + -1.0f);
    let x_599 : f32 = u_xlat1.x;
    let x_601 : f32 = u_xlat2.x;
    SV_Target0.w = ((x_599 * x_601) + 1.0f);
  } else {
    let x_612 : vec2<f32> = vs_TEXCOORD0;
    let x_613 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_612);
    u_xlat1.x = x_613.w;
    let x_617 : f32 = u_xlat1.x;
    u_xlat2.x = (x_617 * 0.077399381f);
    let x_623 : f32 = u_xlat1.x;
    u_xlat9 = (x_623 + 0.055f);
    let x_626 : f32 = u_xlat9;
    u_xlat9 = (x_626 * 0.947867334f);
    let x_629 : f32 = u_xlat9;
    u_xlat9 = max(abs(x_629), 1.1920929e-07f);
    let x_633 : f32 = u_xlat9;
    u_xlat9 = log2(x_633);
    let x_635 : f32 = u_xlat9;
    u_xlat9 = (x_635 * 2.400000095f);
    let x_638 : f32 = u_xlat9;
    u_xlat9 = exp2(x_638);
    let x_642 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_642);
    let x_644 : bool = u_xlatb1;
    if (x_644) {
      let x_650 : f32 = u_xlat2.x;
      x_646 = x_650;
    } else {
      let x_652 : f32 = u_xlat9;
      x_646 = x_652;
    }
    let x_653 : f32 = x_646;
    u_xlat1.x = x_653;
    let x_656 : vec3<f32> = x_55.x_Vignette_Color;
    let x_658 : vec3<f32> = (-(x_656) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_659 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_658.x, x_658.y, x_658.z, x_659.w);
    let x_661 : vec4<f32> = u_xlat1;
    let x_663 : vec4<f32> = u_xlat2;
    let x_667 : vec3<f32> = x_55.x_Vignette_Color;
    let x_668 : vec3<f32> = ((vec3<f32>(x_661.x, x_661.x, x_661.x) * vec3<f32>(x_663.x, x_663.y, x_663.z)) + x_667);
    let x_669 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_668.x, x_668.y, x_668.z, x_669.w);
    let x_671 : vec4<f32> = u_xlat0;
    let x_673 : vec4<f32> = u_xlat2;
    let x_676 : vec4<f32> = u_xlat0;
    let x_679 : vec3<f32> = ((vec3<f32>(x_671.x, x_671.y, x_671.z) * vec3<f32>(x_673.x, x_673.y, x_673.z)) + -(vec3<f32>(x_676.x, x_676.y, x_676.z)));
    let x_680 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_679.x, x_679.y, x_679.z, x_680.w);
    let x_684 : f32 = x_55.x_Vignette_Opacity;
    let x_686 : vec4<f32> = u_xlat2;
    let x_689 : vec4<f32> = u_xlat0;
    u_xlat8 = ((vec3<f32>(x_684, x_684, x_684) * vec3<f32>(x_686.x, x_686.y, x_686.z)) + vec3<f32>(x_689.x, x_689.y, x_689.z));
    let x_693 : f32 = u_xlat0.w;
    u_xlat0.x = (x_693 + -1.0f);
    let x_697 : f32 = u_xlat1.x;
    let x_699 : f32 = u_xlat0.x;
    SV_Target0.w = ((x_697 * x_699) + 1.0f);
  }
  let x_704 : vec2<f32> = vs_TEXCOORD1;
  let x_707 : vec4<f32> = x_55.x_Grain_Params2;
  let x_711 : vec4<f32> = x_55.x_Grain_Params2;
  let x_713 : vec2<f32> = ((x_704 * vec2<f32>(x_707.x, x_707.y)) + vec2<f32>(x_711.z, x_711.w));
  let x_714 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_713.x, x_713.y, x_714.z, x_714.w);
  let x_721 : vec4<f32> = u_xlat0;
  let x_723 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_721.x, x_721.y));
  let x_724 : vec3<f32> = vec3<f32>(x_723.x, x_723.y, x_723.z);
  let x_725 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_724.x, x_724.y, x_724.z, x_725.w);
  let x_727 : vec3<f32> = u_xlat8;
  let x_728 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_727.x, x_727.y, x_727.z, x_728.w);
  let x_730 : vec4<f32> = u_xlat2;
  let x_734 : vec3<f32> = clamp(vec3<f32>(x_730.x, x_730.y, x_730.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_735 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_734.x, x_734.y, x_734.z, x_735.w);
  let x_738 : vec4<f32> = u_xlat2;
  u_xlat21 = dot(vec3<f32>(x_738.x, x_738.y, x_738.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_745 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_745);
  let x_749 : f32 = x_55.x_Grain_Params1.x;
  let x_750 : f32 = u_xlat21;
  u_xlat21 = ((x_749 * -(x_750)) + 1.0f);
  let x_754 : vec4<f32> = u_xlat0;
  let x_756 : vec3<f32> = u_xlat8;
  let x_757 : vec3<f32> = (vec3<f32>(x_754.x, x_754.y, x_754.z) * x_756);
  let x_758 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_757.x, x_757.y, x_757.z, x_758.w);
  let x_760 : vec4<f32> = u_xlat0;
  let x_763 : f32 = x_55.x_Grain_Params1.y;
  let x_765 : f32 = x_55.x_Grain_Params1.y;
  let x_767 : f32 = x_55.x_Grain_Params1.y;
  let x_769 : vec3<f32> = (vec3<f32>(x_760.x, x_760.y, x_760.z) * vec3<f32>(x_763, x_765, x_767));
  let x_770 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_769.x, x_769.y, x_769.z, x_770.w);
  let x_772 : vec4<f32> = u_xlat0;
  let x_774 : f32 = u_xlat21;
  let x_777 : vec3<f32> = u_xlat8;
  let x_778 : vec3<f32> = ((vec3<f32>(x_772.x, x_772.y, x_772.z) * vec3<f32>(x_774, x_774, x_774)) + x_777);
  let x_779 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_778.x, x_778.y, x_778.z, x_779.w);
  let x_781 : vec2<f32> = vs_TEXCOORD0;
  let x_784 : vec4<f32> = x_55.x_Dithering_Coords;
  let x_788 : vec4<f32> = x_55.x_Dithering_Coords;
  let x_790 : vec2<f32> = ((x_781 * vec2<f32>(x_784.x, x_784.y)) + vec2<f32>(x_788.z, x_788.w));
  let x_791 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_790.x, x_790.y, x_791.z, x_791.w);
  let x_798 : vec4<f32> = u_xlat1;
  let x_800 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_798.x, x_798.y));
  u_xlat21 = x_800.w;
  let x_802 : f32 = u_xlat21;
  u_xlat21 = ((x_802 * 2.0f) + -1.0f);
  let x_805 : f32 = u_xlat21;
  u_xlat1.x = ((x_805 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_811 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_811, 0.0f, 1.0f);
  let x_815 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_815 * 2.0f) + -1.0f);
  let x_819 : f32 = u_xlat21;
  u_xlat21 = (-(abs(x_819)) + 1.0f);
  let x_823 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_823);
  let x_825 : f32 = u_xlat21;
  u_xlat21 = (-(x_825) + 1.0f);
  let x_828 : f32 = u_xlat21;
  let x_830 : f32 = u_xlat1.x;
  u_xlat21 = (x_828 * x_830);
  let x_832 : vec4<f32> = u_xlat0;
  let x_836 : vec3<f32> = (vec3<f32>(x_832.x, x_832.y, x_832.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_837 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_836.x, x_836.y, x_836.z, x_837.w);
  let x_839 : vec4<f32> = u_xlat0;
  let x_843 : vec3<f32> = max(abs(vec3<f32>(x_839.x, x_839.y, x_839.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_844 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_843.x, x_843.y, x_843.z, x_844.w);
  let x_846 : vec4<f32> = u_xlat2;
  let x_848 : vec3<f32> = log2(vec3<f32>(x_846.x, x_846.y, x_846.z));
  let x_849 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_848.x, x_848.y, x_848.z, x_849.w);
  let x_851 : vec4<f32> = u_xlat2;
  let x_855 : vec3<f32> = (vec3<f32>(x_851.x, x_851.y, x_851.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_856 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_855.x, x_855.y, x_855.z, x_856.w);
  let x_858 : vec4<f32> = u_xlat2;
  let x_860 : vec3<f32> = exp2(vec3<f32>(x_858.x, x_858.y, x_858.z));
  let x_861 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_860.x, x_860.y, x_860.z, x_861.w);
  let x_863 : vec4<f32> = u_xlat2;
  let x_870 : vec3<f32> = ((vec3<f32>(x_863.x, x_863.y, x_863.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_871 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_870.x, x_870.y, x_870.z, x_871.w);
  let x_878 : vec4<f32> = u_xlat0;
  let x_881 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_878.x, x_878.y, x_878.z, x_878.x));
  u_xlatb0 = vec3<bool>(x_881.x, x_881.y, x_881.z);
  let x_884 : bool = u_xlatb0.x;
  if (x_884) {
    let x_889 : f32 = u_xlat1.x;
    x_885 = x_889;
  } else {
    let x_892 : f32 = u_xlat2.x;
    x_885 = x_892;
  }
  let x_893 : f32 = x_885;
  u_xlat0.x = x_893;
  let x_896 : bool = u_xlatb0.y;
  if (x_896) {
    let x_901 : f32 = u_xlat1.y;
    x_897 = x_901;
  } else {
    let x_904 : f32 = u_xlat2.y;
    x_897 = x_904;
  }
  let x_905 : f32 = x_897;
  u_xlat0.y = x_905;
  let x_908 : bool = u_xlatb0.z;
  if (x_908) {
    let x_913 : f32 = u_xlat1.z;
    x_909 = x_913;
  } else {
    let x_916 : f32 = u_xlat2.z;
    x_909 = x_916;
  }
  let x_917 : f32 = x_909;
  u_xlat0.z = x_917;
  let x_919 : f32 = u_xlat21;
  let x_924 : vec4<f32> = u_xlat0;
  let x_926 : vec3<f32> = ((vec3<f32>(x_919, x_919, x_919) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_924.x, x_924.y, x_924.z));
  let x_927 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_926.x, x_926.y, x_926.z, x_927.w);
  let x_929 : vec4<f32> = u_xlat0;
  let x_932 : vec3<f32> = (vec3<f32>(x_929.x, x_929.y, x_929.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_933 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_932.x, x_932.y, x_932.z, x_933.w);
  let x_935 : vec4<f32> = u_xlat0;
  let x_938 : vec3<f32> = (vec3<f32>(x_935.x, x_935.y, x_935.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_939 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_938.x, x_938.y, x_938.z, x_939.w);
  let x_941 : vec4<f32> = u_xlat2;
  let x_944 : vec3<f32> = (vec3<f32>(x_941.x, x_941.y, x_941.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_945 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_944.x, x_944.y, x_944.z, x_945.w);
  let x_947 : vec4<f32> = u_xlat2;
  let x_950 : vec3<f32> = max(abs(vec3<f32>(x_947.x, x_947.y, x_947.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_951 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_950.x, x_950.y, x_950.z, x_951.w);
  let x_953 : vec4<f32> = u_xlat2;
  let x_955 : vec3<f32> = log2(vec3<f32>(x_953.x, x_953.y, x_953.z));
  let x_956 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_955.x, x_955.y, x_955.z, x_956.w);
  let x_958 : vec4<f32> = u_xlat2;
  let x_961 : vec3<f32> = (vec3<f32>(x_958.x, x_958.y, x_958.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_962 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_961.x, x_961.y, x_961.z, x_962.w);
  let x_964 : vec4<f32> = u_xlat2;
  let x_966 : vec3<f32> = exp2(vec3<f32>(x_964.x, x_964.y, x_964.z));
  let x_967 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_966.x, x_966.y, x_966.z, x_967.w);
  let x_970 : vec4<f32> = u_xlat0;
  let x_972 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_970.x, x_970.y, x_970.z, x_970.x));
  u_xlatb0 = vec3<bool>(x_972.x, x_972.y, x_972.z);
  let x_975 : bool = u_xlatb0.x;
  if (x_975) {
    let x_980 : f32 = u_xlat1.x;
    x_976 = x_980;
  } else {
    let x_983 : f32 = u_xlat2.x;
    x_976 = x_983;
  }
  let x_984 : f32 = x_976;
  SV_Target0.x = x_984;
  let x_987 : bool = u_xlatb0.y;
  if (x_987) {
    let x_992 : f32 = u_xlat1.y;
    x_988 = x_992;
  } else {
    let x_995 : f32 = u_xlat2.y;
    x_988 = x_995;
  }
  let x_996 : f32 = x_988;
  SV_Target0.y = x_996;
  let x_999 : bool = u_xlatb0.z;
  if (x_999) {
    let x_1004 : f32 = u_xlat1.z;
    x_1000 = x_1004;
  } else {
    let x_1007 : f32 = u_xlat2.z;
    x_1000 = x_1007;
  }
  let x_1008 : f32 = x_1000;
  SV_Target0.z = x_1008;
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

