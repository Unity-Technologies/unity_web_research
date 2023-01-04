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
  x_Lut2D_Params : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_Grain_Params1 : vec2<f32>,
  @size(8)
  padding_3 : u32,
  x_Grain_Params2 : vec4<f32>,
  x_LumaInAlpha : f32,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat7 : vec2<f32>;

@group(0) @binding(0) var<uniform> x_55 : PGlobals;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(5) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(12) var sampler_ChromaticAberration_SpectralLut : sampler;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(3) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_BloomTex : sampler;

@group(0) @binding(4) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_Bloom_DirtTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(7) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(14) var sampler_GrainTex : sampler;

var<private> u_xlat22 : f32;

var<private> u_xlatb1 : vec3<bool>;

var<private> u_xlat8 : vec3<f32>;

@group(0) @binding(6) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(13) var sampler_Lut2D : sampler;

var<private> u_xlat15 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_617 : f32;
  var x_629 : f32;
  var x_642 : f32;
  var x_798 : f32;
  var x_810 : f32;
  var x_822 : f32;
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
  let x_466 : vec2<f32> = vs_TEXCOORD1;
  let x_469 : vec4<f32> = x_55.x_Grain_Params2;
  let x_473 : vec4<f32> = x_55.x_Grain_Params2;
  let x_475 : vec2<f32> = ((x_466 * vec2<f32>(x_469.x, x_469.y)) + vec2<f32>(x_473.z, x_473.w));
  let x_476 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_475.x, x_475.y, x_476.z, x_476.w);
  let x_483 : vec4<f32> = u_xlat1;
  let x_485 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_483.x, x_483.y));
  let x_486 : vec3<f32> = vec3<f32>(x_485.x, x_485.y, x_485.z);
  let x_487 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_486.x, x_486.y, x_486.z, x_487.w);
  let x_489 : vec4<f32> = u_xlat0;
  let x_490 : vec3<f32> = vec3<f32>(x_489.x, x_489.y, x_489.z);
  let x_491 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_490.x, x_490.y, x_490.z, x_491.w);
  let x_493 : vec4<f32> = u_xlat2;
  let x_497 : vec3<f32> = clamp(vec3<f32>(x_493.x, x_493.y, x_493.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_498 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_497.x, x_497.y, x_497.z, x_498.w);
  let x_501 : vec4<f32> = u_xlat2;
  u_xlat22 = dot(vec3<f32>(x_501.x, x_501.y, x_501.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_508 : f32 = u_xlat22;
  u_xlat22 = sqrt(x_508);
  let x_512 : f32 = x_55.x_Grain_Params1.x;
  let x_513 : f32 = u_xlat22;
  u_xlat22 = ((x_512 * -(x_513)) + 1.0f);
  let x_517 : vec4<f32> = u_xlat0;
  let x_519 : vec4<f32> = u_xlat1;
  let x_521 : vec3<f32> = (vec3<f32>(x_517.x, x_517.y, x_517.z) * vec3<f32>(x_519.x, x_519.y, x_519.z));
  let x_522 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_521.x, x_521.y, x_521.z, x_522.w);
  let x_524 : vec4<f32> = u_xlat1;
  let x_528 : f32 = x_55.x_Grain_Params1.y;
  let x_530 : f32 = x_55.x_Grain_Params1.y;
  let x_532 : f32 = x_55.x_Grain_Params1.y;
  let x_534 : vec3<f32> = (vec3<f32>(x_524.x, x_524.y, x_524.z) * vec3<f32>(x_528, x_530, x_532));
  let x_535 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_534.x, x_534.y, x_534.z, x_535.w);
  let x_537 : vec4<f32> = u_xlat1;
  let x_539 : f32 = u_xlat22;
  let x_542 : vec4<f32> = u_xlat0;
  let x_544 : vec3<f32> = ((vec3<f32>(x_537.x, x_537.y, x_537.z) * vec3<f32>(x_539, x_539, x_539)) + vec3<f32>(x_542.x, x_542.y, x_542.z));
  let x_545 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_544.x, x_544.y, x_544.z, x_545.w);
  let x_547 : vec4<f32> = u_xlat1;
  let x_551 : vec3<f32> = clamp(vec3<f32>(x_547.x, x_547.y, x_547.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_552 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_551.x, x_551.y, x_551.z, x_552.w);
  let x_555 : f32 = u_xlat0.w;
  u_xlat0.w = x_555;
  let x_558 : f32 = u_xlat0.w;
  u_xlat0.w = clamp(x_558, 0.0f, 1.0f);
  let x_561 : vec4<f32> = u_xlat1;
  let x_565 : vec3<f32> = (vec3<f32>(x_561.z, x_561.x, x_561.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_566 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_565.x, x_565.y, x_565.z, x_566.w);
  let x_568 : vec4<f32> = u_xlat1;
  let x_572 : vec3<f32> = max(vec3<f32>(x_568.z, x_568.x, x_568.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_573 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_572.x, x_572.y, x_572.z, x_573.w);
  let x_575 : vec4<f32> = u_xlat3;
  let x_577 : vec3<f32> = log2(vec3<f32>(x_575.x, x_575.y, x_575.z));
  let x_578 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_577.x, x_577.y, x_577.z, x_578.w);
  let x_580 : vec4<f32> = u_xlat3;
  let x_584 : vec3<f32> = (vec3<f32>(x_580.x, x_580.y, x_580.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_585 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_584.x, x_584.y, x_584.z, x_585.w);
  let x_587 : vec4<f32> = u_xlat3;
  let x_589 : vec3<f32> = exp2(vec3<f32>(x_587.x, x_587.y, x_587.z));
  let x_590 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_589.x, x_589.y, x_589.z, x_590.w);
  let x_592 : vec4<f32> = u_xlat3;
  let x_599 : vec3<f32> = ((vec3<f32>(x_592.x, x_592.y, x_592.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_600 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_599.x, x_599.y, x_599.z, x_600.w);
  let x_608 : vec4<f32> = u_xlat1;
  let x_611 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_608.z, x_608.x, x_608.y, x_608.z));
  u_xlatb1 = vec3<bool>(x_611.x, x_611.y, x_611.z);
  let x_615 : bool = u_xlatb1.x;
  if (x_615) {
    let x_621 : f32 = u_xlat2.x;
    x_617 = x_621;
  } else {
    let x_624 : f32 = u_xlat3.x;
    x_617 = x_624;
  }
  let x_625 : f32 = x_617;
  u_xlat1.x = x_625;
  let x_628 : bool = u_xlatb1.y;
  if (x_628) {
    let x_633 : f32 = u_xlat2.y;
    x_629 = x_633;
  } else {
    let x_636 : f32 = u_xlat3.y;
    x_629 = x_636;
  }
  let x_637 : f32 = x_629;
  u_xlat1.y = x_637;
  let x_641 : bool = u_xlatb1.z;
  if (x_641) {
    let x_646 : f32 = u_xlat2.z;
    x_642 = x_646;
  } else {
    let x_649 : f32 = u_xlat3.z;
    x_642 = x_649;
  }
  let x_650 : f32 = x_642;
  u_xlat1.z = x_650;
  let x_654 : vec4<f32> = u_xlat1;
  let x_658 : vec3<f32> = x_55.x_Lut2D_Params;
  u_xlat8 = (vec3<f32>(x_654.x, x_654.y, x_654.z) * vec3<f32>(x_658.z, x_658.z, x_658.z));
  let x_662 : f32 = u_xlat8.x;
  u_xlat8.x = floor(x_662);
  let x_666 : vec3<f32> = x_55.x_Lut2D_Params;
  let x_669 : vec2<f32> = (vec2<f32>(x_666.x, x_666.y) * vec2<f32>(0.5f, 0.5f));
  let x_670 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_669.x, x_669.y, x_670.z, x_670.w);
  let x_672 : vec3<f32> = u_xlat8;
  let x_675 : vec3<f32> = x_55.x_Lut2D_Params;
  let x_678 : vec4<f32> = u_xlat2;
  let x_680 : vec2<f32> = ((vec2<f32>(x_672.y, x_672.z) * vec2<f32>(x_675.x, x_675.y)) + vec2<f32>(x_678.x, x_678.y));
  let x_681 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_681.x, x_680.x, x_680.y, x_681.w);
  let x_684 : f32 = u_xlat8.x;
  let x_686 : f32 = x_55.x_Lut2D_Params.y;
  let x_689 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_684 * x_686) + x_689);
  let x_697 : vec4<f32> = u_xlat2;
  let x_699 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_697.x, x_697.z));
  let x_700 : vec3<f32> = vec3<f32>(x_699.x, x_699.y, x_699.z);
  let x_701 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_700.x, x_700.y, x_700.z, x_701.w);
  let x_704 : f32 = x_55.x_Lut2D_Params.y;
  u_xlat4.x = x_704;
  u_xlat4.y = 0.0f;
  let x_708 : vec4<f32> = u_xlat2;
  let x_710 : vec4<f32> = u_xlat4;
  u_xlat15 = (vec2<f32>(x_708.x, x_708.z) + vec2<f32>(x_710.x, x_710.y));
  let x_716 : vec2<f32> = u_xlat15;
  let x_717 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_716);
  let x_718 : vec3<f32> = vec3<f32>(x_717.x, x_717.y, x_717.z);
  let x_719 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_718.x, x_718.y, x_718.z, x_719.w);
  let x_722 : f32 = u_xlat1.x;
  let x_724 : f32 = x_55.x_Lut2D_Params.z;
  let x_727 : f32 = u_xlat8.x;
  u_xlat1.x = ((x_722 * x_724) + -(x_727));
  let x_731 : vec4<f32> = u_xlat3;
  let x_734 : vec4<f32> = u_xlat2;
  u_xlat8 = (-(vec3<f32>(x_731.x, x_731.y, x_731.z)) + vec3<f32>(x_734.x, x_734.y, x_734.z));
  let x_737 : vec4<f32> = u_xlat1;
  let x_739 : vec3<f32> = u_xlat8;
  let x_741 : vec4<f32> = u_xlat3;
  let x_743 : vec3<f32> = ((vec3<f32>(x_737.x, x_737.x, x_737.x) * x_739) + vec3<f32>(x_741.x, x_741.y, x_741.z));
  let x_744 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_743.x, x_743.y, x_743.z, x_744.w);
  let x_746 : vec4<f32> = u_xlat1;
  let x_750 : vec3<f32> = (vec3<f32>(x_746.x, x_746.y, x_746.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_751 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_750.x, x_750.y, x_750.z, x_751.w);
  let x_753 : vec4<f32> = u_xlat1;
  let x_757 : vec3<f32> = (vec3<f32>(x_753.x, x_753.y, x_753.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_758 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_757.x, x_757.y, x_757.z, x_758.w);
  let x_760 : vec4<f32> = u_xlat3;
  let x_764 : vec3<f32> = (vec3<f32>(x_760.x, x_760.y, x_760.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_765 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_764.x, x_764.y, x_764.z, x_765.w);
  let x_767 : vec4<f32> = u_xlat3;
  let x_770 : vec3<f32> = max(abs(vec3<f32>(x_767.x, x_767.y, x_767.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_771 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_770.x, x_770.y, x_770.z, x_771.w);
  let x_773 : vec4<f32> = u_xlat3;
  let x_775 : vec3<f32> = log2(vec3<f32>(x_773.x, x_773.y, x_773.z));
  let x_776 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_775.x, x_775.y, x_775.z, x_776.w);
  let x_778 : vec4<f32> = u_xlat3;
  let x_782 : vec3<f32> = (vec3<f32>(x_778.x, x_778.y, x_778.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_783 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_782.x, x_782.y, x_782.z, x_783.w);
  let x_785 : vec4<f32> = u_xlat3;
  let x_787 : vec3<f32> = exp2(vec3<f32>(x_785.x, x_785.y, x_785.z));
  let x_788 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_787.x, x_787.y, x_787.z, x_788.w);
  let x_792 : vec4<f32> = u_xlat1;
  let x_794 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_792.x, x_792.y, x_792.z, x_792.x));
  u_xlatb1 = vec3<bool>(x_794.x, x_794.y, x_794.z);
  let x_797 : bool = u_xlatb1.x;
  if (x_797) {
    let x_802 : f32 = u_xlat2.x;
    x_798 = x_802;
  } else {
    let x_805 : f32 = u_xlat3.x;
    x_798 = x_805;
  }
  let x_806 : f32 = x_798;
  u_xlat0.x = x_806;
  let x_809 : bool = u_xlatb1.y;
  if (x_809) {
    let x_814 : f32 = u_xlat2.y;
    x_810 = x_814;
  } else {
    let x_817 : f32 = u_xlat3.y;
    x_810 = x_817;
  }
  let x_818 : f32 = x_810;
  u_xlat0.y = x_818;
  let x_821 : bool = u_xlatb1.z;
  if (x_821) {
    let x_826 : f32 = u_xlat2.z;
    x_822 = x_826;
  } else {
    let x_829 : f32 = u_xlat3.z;
    x_822 = x_829;
  }
  let x_830 : f32 = x_822;
  u_xlat0.z = x_830;
  let x_834 : f32 = x_55.x_LumaInAlpha;
  u_xlatb1.x = (0.5f < x_834);
  let x_838 : bool = u_xlatb1.x;
  if (x_838) {
    let x_841 : vec4<f32> = u_xlat0;
    let x_842 : vec3<f32> = vec3<f32>(x_841.x, x_841.y, x_841.z);
    let x_843 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_842.x, x_842.y, x_842.z, x_843.w);
    let x_845 : vec4<f32> = u_xlat1;
    let x_849 : vec3<f32> = clamp(vec3<f32>(x_845.x, x_845.y, x_845.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_850 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_849.x, x_849.y, x_849.z, x_850.w);
    let x_852 : vec4<f32> = u_xlat1;
    u_xlat0.w = dot(vec3<f32>(x_852.x, x_852.y, x_852.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_858 : vec4<f32> = u_xlat0;
  SV_Target0 = x_858;
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

