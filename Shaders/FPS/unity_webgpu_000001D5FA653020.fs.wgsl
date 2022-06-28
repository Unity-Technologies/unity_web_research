struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_BloomTex_TexelSize : vec4<f32>,
  x_Bloom_DirtTileOffset : vec4<f32>,
  x_Bloom_Settings : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_Bloom_Color : vec3<f32>,
  x_ChromaticAberration_Amount : f32,
  x_Grain_Params1 : vec2<f32>,
  @size(8)
  padding_2 : u32,
  x_Grain_Params2 : vec4<f32>,
  x_LumaInAlpha : f32,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat7 : vec2<f32>;

@group(0) @binding(0) var<uniform> x_55 : PGlobals;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(5) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(11) var sampler_ChromaticAberration_SpectralLut : sampler;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(3) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_BloomTex : sampler;

@group(0) @binding(4) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_Bloom_DirtTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(6) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_GrainTex : sampler;

var<private> u_xlat22 : f32;

var<private> u_xlatb1 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
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
  let x_474 : vec2<f32> = vs_TEXCOORD1;
  let x_477 : vec4<f32> = x_55.x_Grain_Params2;
  let x_481 : vec4<f32> = x_55.x_Grain_Params2;
  let x_483 : vec2<f32> = ((x_474 * vec2<f32>(x_477.x, x_477.y)) + vec2<f32>(x_481.z, x_481.w));
  let x_484 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_483.x, x_483.y, x_484.z, x_484.w);
  let x_491 : vec4<f32> = u_xlat1;
  let x_493 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_491.x, x_491.y));
  let x_494 : vec3<f32> = vec3<f32>(x_493.x, x_493.y, x_493.z);
  let x_495 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_494.x, x_494.y, x_494.z, x_495.w);
  let x_497 : vec4<f32> = u_xlat0;
  let x_498 : vec3<f32> = vec3<f32>(x_497.x, x_497.y, x_497.z);
  let x_499 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_498.x, x_498.y, x_498.z, x_499.w);
  let x_501 : vec4<f32> = u_xlat2;
  let x_505 : vec3<f32> = clamp(vec3<f32>(x_501.x, x_501.y, x_501.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_506 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_505.x, x_505.y, x_505.z, x_506.w);
  let x_509 : vec4<f32> = u_xlat2;
  u_xlat22 = dot(vec3<f32>(x_509.x, x_509.y, x_509.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_516 : f32 = u_xlat22;
  u_xlat22 = sqrt(x_516);
  let x_520 : f32 = x_55.x_Grain_Params1.x;
  let x_521 : f32 = u_xlat22;
  u_xlat22 = ((x_520 * -(x_521)) + 1.0f);
  let x_525 : vec4<f32> = u_xlat0;
  let x_527 : vec4<f32> = u_xlat1;
  let x_529 : vec3<f32> = (vec3<f32>(x_525.x, x_525.y, x_525.z) * vec3<f32>(x_527.x, x_527.y, x_527.z));
  let x_530 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_529.x, x_529.y, x_529.z, x_530.w);
  let x_532 : vec4<f32> = u_xlat1;
  let x_536 : f32 = x_55.x_Grain_Params1.y;
  let x_538 : f32 = x_55.x_Grain_Params1.y;
  let x_540 : f32 = x_55.x_Grain_Params1.y;
  let x_542 : vec3<f32> = (vec3<f32>(x_532.x, x_532.y, x_532.z) * vec3<f32>(x_536, x_538, x_540));
  let x_543 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_542.x, x_542.y, x_542.z, x_543.w);
  let x_545 : vec4<f32> = u_xlat1;
  let x_547 : f32 = u_xlat22;
  let x_550 : vec4<f32> = u_xlat0;
  let x_552 : vec3<f32> = ((vec3<f32>(x_545.x, x_545.y, x_545.z) * vec3<f32>(x_547, x_547, x_547)) + vec3<f32>(x_550.x, x_550.y, x_550.z));
  let x_553 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_552.x, x_552.y, x_552.z, x_553.w);
  let x_560 : f32 = x_55.x_LumaInAlpha;
  u_xlatb1 = (0.5f < x_560);
  let x_562 : bool = u_xlatb1;
  if (x_562) {
    let x_565 : vec4<f32> = u_xlat0;
    let x_566 : vec3<f32> = vec3<f32>(x_565.x, x_565.y, x_565.z);
    let x_567 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_566.x, x_566.y, x_566.z, x_567.w);
    let x_569 : vec4<f32> = u_xlat1;
    let x_573 : vec3<f32> = clamp(vec3<f32>(x_569.x, x_569.y, x_569.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_574 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_573.x, x_573.y, x_573.z, x_574.w);
    let x_576 : vec4<f32> = u_xlat1;
    u_xlat0.w = dot(vec3<f32>(x_576.x, x_576.y, x_576.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_582 : vec4<f32> = u_xlat0;
  SV_Target0 = x_582;
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

