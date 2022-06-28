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
  x_Lut3D_Params : vec2<f32>,
  x_PostExposure : f32,
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

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(3) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat7 : vec2<f32>;

@group(0) @binding(0) var<uniform> x_55 : PGlobals;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(6) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(15) var sampler_ChromaticAberration_SpectralLut : sampler;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainTex : sampler;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(4) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(13) var sampler_BloomTex : sampler;

@group(0) @binding(5) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(14) var sampler_Bloom_DirtTex : sampler;

var<private> u_xlatb1 : bool;

var<private> u_xlat22 : f32;

var<private> u_xlat8 : vec3<f32>;

@group(0) @binding(8) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(17) var sampler_Vignette_Mask : sampler;

var<private> u_xlat10 : f32;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(9) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(18) var sampler_GrainTex : sampler;

var<private> u_xlat21 : f32;

@group(0) @binding(7) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(16) var sampler_Lut3D : sampler;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_DitheringTex : sampler;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_643 : f32;
  var x_979 : f32;
  var x_991 : f32;
  var x_1003 : f32;
  var x_1072 : f32;
  var x_1085 : f32;
  var x_1097 : f32;
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
    let x_597 : f32 = u_xlat1.x;
    let x_599 : f32 = u_xlat2.x;
    u_xlat2.w = ((x_597 * x_599) + 1.0f);
  } else {
    let x_609 : vec2<f32> = vs_TEXCOORD0;
    let x_610 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_609);
    u_xlat1.x = x_610.w;
    let x_614 : f32 = u_xlat1.x;
    u_xlat3.x = (x_614 * 0.077399381f);
    let x_620 : f32 = u_xlat1.x;
    u_xlat10 = (x_620 + 0.055f);
    let x_623 : f32 = u_xlat10;
    u_xlat10 = (x_623 * 0.947867334f);
    let x_626 : f32 = u_xlat10;
    u_xlat10 = max(abs(x_626), 1.1920929e-07f);
    let x_630 : f32 = u_xlat10;
    u_xlat10 = log2(x_630);
    let x_632 : f32 = u_xlat10;
    u_xlat10 = (x_632 * 2.400000095f);
    let x_635 : f32 = u_xlat10;
    u_xlat10 = exp2(x_635);
    let x_639 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_639);
    let x_641 : bool = u_xlatb1;
    if (x_641) {
      let x_647 : f32 = u_xlat3.x;
      x_643 = x_647;
    } else {
      let x_649 : f32 = u_xlat10;
      x_643 = x_649;
    }
    let x_650 : f32 = x_643;
    u_xlat1.x = x_650;
    let x_653 : vec3<f32> = x_55.x_Vignette_Color;
    let x_655 : vec3<f32> = (-(x_653) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_656 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_655.x, x_655.y, x_655.z, x_656.w);
    let x_658 : vec4<f32> = u_xlat1;
    let x_660 : vec4<f32> = u_xlat3;
    let x_664 : vec3<f32> = x_55.x_Vignette_Color;
    let x_665 : vec3<f32> = ((vec3<f32>(x_658.x, x_658.x, x_658.x) * vec3<f32>(x_660.x, x_660.y, x_660.z)) + x_664);
    let x_666 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_665.x, x_665.y, x_665.z, x_666.w);
    let x_668 : vec4<f32> = u_xlat0;
    let x_670 : vec4<f32> = u_xlat3;
    let x_673 : vec4<f32> = u_xlat0;
    let x_676 : vec3<f32> = ((vec3<f32>(x_668.x, x_668.y, x_668.z) * vec3<f32>(x_670.x, x_670.y, x_670.z)) + -(vec3<f32>(x_673.x, x_673.y, x_673.z)));
    let x_677 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_676.x, x_676.y, x_676.z, x_677.w);
    let x_681 : f32 = x_55.x_Vignette_Opacity;
    let x_683 : vec4<f32> = u_xlat3;
    let x_686 : vec4<f32> = u_xlat0;
    u_xlat8 = ((vec3<f32>(x_681, x_681, x_681) * vec3<f32>(x_683.x, x_683.y, x_683.z)) + vec3<f32>(x_686.x, x_686.y, x_686.z));
    let x_690 : f32 = u_xlat0.w;
    u_xlat0.x = (x_690 + -1.0f);
    let x_694 : f32 = u_xlat1.x;
    let x_696 : f32 = u_xlat0.x;
    u_xlat2.w = ((x_694 * x_696) + 1.0f);
  }
  let x_701 : vec2<f32> = vs_TEXCOORD1;
  let x_704 : vec4<f32> = x_55.x_Grain_Params2;
  let x_708 : vec4<f32> = x_55.x_Grain_Params2;
  let x_710 : vec2<f32> = ((x_701 * vec2<f32>(x_704.x, x_704.y)) + vec2<f32>(x_708.z, x_708.w));
  let x_711 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_710.x, x_710.y, x_711.z, x_711.w);
  let x_718 : vec4<f32> = u_xlat0;
  let x_720 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_718.x, x_718.y));
  let x_721 : vec3<f32> = vec3<f32>(x_720.x, x_720.y, x_720.z);
  let x_722 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_721.x, x_721.y, x_721.z, x_722.w);
  let x_724 : vec3<f32> = u_xlat8;
  let x_725 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_724.x, x_724.y, x_724.z, x_725.w);
  let x_727 : vec4<f32> = u_xlat3;
  let x_731 : vec3<f32> = clamp(vec3<f32>(x_727.x, x_727.y, x_727.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_732 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_731.x, x_731.y, x_731.z, x_732.w);
  let x_735 : vec4<f32> = u_xlat3;
  u_xlat21 = dot(vec3<f32>(x_735.x, x_735.y, x_735.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_742 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_742);
  let x_746 : f32 = x_55.x_Grain_Params1.x;
  let x_747 : f32 = u_xlat21;
  u_xlat21 = ((x_746 * -(x_747)) + 1.0f);
  let x_751 : vec4<f32> = u_xlat0;
  let x_753 : vec3<f32> = u_xlat8;
  let x_754 : vec3<f32> = (vec3<f32>(x_751.x, x_751.y, x_751.z) * x_753);
  let x_755 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_754.x, x_754.y, x_754.z, x_755.w);
  let x_757 : vec4<f32> = u_xlat0;
  let x_760 : f32 = x_55.x_Grain_Params1.y;
  let x_762 : f32 = x_55.x_Grain_Params1.y;
  let x_764 : f32 = x_55.x_Grain_Params1.y;
  let x_766 : vec3<f32> = (vec3<f32>(x_757.x, x_757.y, x_757.z) * vec3<f32>(x_760, x_762, x_764));
  let x_767 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_766.x, x_766.y, x_766.z, x_767.w);
  let x_769 : vec4<f32> = u_xlat0;
  let x_771 : f32 = u_xlat21;
  let x_774 : vec3<f32> = u_xlat8;
  let x_775 : vec3<f32> = ((vec3<f32>(x_769.x, x_769.y, x_769.z) * vec3<f32>(x_771, x_771, x_771)) + x_774);
  let x_776 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_775.x, x_775.y, x_775.z, x_776.w);
  let x_778 : vec4<f32> = u_xlat2;
  let x_781 : f32 = x_55.x_PostExposure;
  let x_783 : f32 = x_55.x_PostExposure;
  let x_785 : f32 = x_55.x_PostExposure;
  let x_787 : f32 = x_55.x_PostExposure;
  let x_788 : vec4<f32> = vec4<f32>(x_781, x_783, x_785, x_787);
  u_xlat0 = (x_778 * vec4<f32>(x_788.x, x_788.y, x_788.z, x_788.w));
  let x_795 : vec4<f32> = u_xlat0;
  let x_802 : vec3<f32> = ((vec3<f32>(x_795.x, x_795.y, x_795.z) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_803 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_802.x, x_802.y, x_802.z, x_803.w);
  let x_805 : vec4<f32> = u_xlat0;
  let x_807 : vec3<f32> = log2(vec3<f32>(x_805.x, x_805.y, x_805.z));
  let x_808 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_807.x, x_807.y, x_807.z, x_808.w);
  let x_810 : vec4<f32> = u_xlat0;
  let x_817 : vec3<f32> = ((vec3<f32>(x_810.x, x_810.y, x_810.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_818 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_817.x, x_817.y, x_817.z, x_818.w);
  let x_820 : vec4<f32> = u_xlat0;
  let x_824 : vec3<f32> = clamp(vec3<f32>(x_820.x, x_820.y, x_820.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_825 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_824.x, x_824.y, x_824.z, x_825.w);
  let x_827 : vec4<f32> = u_xlat0;
  let x_831 : vec2<f32> = x_55.x_Lut3D_Params;
  let x_833 : vec3<f32> = (vec3<f32>(x_827.x, x_827.y, x_827.z) * vec3<f32>(x_831.y, x_831.y, x_831.y));
  let x_834 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_833.x, x_833.y, x_833.z, x_834.w);
  let x_837 : f32 = x_55.x_Lut3D_Params.x;
  u_xlat1.x = (x_837 * 0.5f);
  let x_840 : vec4<f32> = u_xlat0;
  let x_843 : vec2<f32> = x_55.x_Lut3D_Params;
  let x_846 : vec4<f32> = u_xlat1;
  let x_848 : vec3<f32> = ((vec3<f32>(x_840.x, x_840.y, x_840.z) * vec3<f32>(x_843.x, x_843.x, x_843.x)) + vec3<f32>(x_846.x, x_846.x, x_846.x));
  let x_849 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_848.x, x_848.y, x_848.z, x_849.w);
  let x_859 : vec4<f32> = u_xlat0;
  let x_861 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, vec3<f32>(x_859.x, x_859.y, x_859.z));
  let x_862 : vec3<f32> = vec3<f32>(x_861.x, x_861.y, x_861.z);
  let x_863 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_862.x, x_862.y, x_862.z, x_863.w);
  let x_865 : vec2<f32> = vs_TEXCOORD0;
  let x_868 : vec4<f32> = x_55.x_Dithering_Coords;
  let x_872 : vec4<f32> = x_55.x_Dithering_Coords;
  let x_874 : vec2<f32> = ((x_865 * vec2<f32>(x_868.x, x_868.y)) + vec2<f32>(x_872.z, x_872.w));
  let x_875 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_874.x, x_874.y, x_875.z, x_875.w);
  let x_882 : vec4<f32> = u_xlat1;
  let x_884 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_882.x, x_882.y));
  u_xlat1.x = x_884.w;
  let x_888 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_888 * 2.0f) + -1.0f);
  let x_893 : f32 = u_xlat1.x;
  u_xlat8.x = ((x_893 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_899 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_899, 0.0f, 1.0f);
  let x_903 : f32 = u_xlat8.x;
  u_xlat8.x = ((x_903 * 2.0f) + -1.0f);
  let x_908 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_908)) + 1.0f);
  let x_914 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_914);
  let x_918 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_918) + 1.0f);
  let x_923 : f32 = u_xlat1.x;
  let x_925 : f32 = u_xlat8.x;
  u_xlat1.x = (x_923 * x_925);
  let x_928 : vec4<f32> = u_xlat0;
  u_xlat8 = (vec3<f32>(x_928.x, x_928.y, x_928.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_933 : vec4<f32> = u_xlat0;
  let x_937 : vec3<f32> = max(abs(vec3<f32>(x_933.x, x_933.y, x_933.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_938 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_937.x, x_937.y, x_937.z, x_938.w);
  let x_940 : vec4<f32> = u_xlat2;
  let x_942 : vec3<f32> = log2(vec3<f32>(x_940.x, x_940.y, x_940.z));
  let x_943 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_942.x, x_942.y, x_942.z, x_943.w);
  let x_945 : vec4<f32> = u_xlat2;
  let x_949 : vec3<f32> = (vec3<f32>(x_945.x, x_945.y, x_945.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_950 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_949.x, x_949.y, x_949.z, x_950.w);
  let x_952 : vec4<f32> = u_xlat2;
  let x_954 : vec3<f32> = exp2(vec3<f32>(x_952.x, x_952.y, x_952.z));
  let x_955 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_954.x, x_954.y, x_954.z, x_955.w);
  let x_957 : vec4<f32> = u_xlat2;
  let x_964 : vec3<f32> = ((vec3<f32>(x_957.x, x_957.y, x_957.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_965 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_964.x, x_964.y, x_964.z, x_965.w);
  let x_972 : vec4<f32> = u_xlat0;
  let x_975 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_972.x, x_972.y, x_972.z, x_972.x));
  u_xlatb0 = vec3<bool>(x_975.x, x_975.y, x_975.z);
  let x_978 : bool = u_xlatb0.x;
  if (x_978) {
    let x_983 : f32 = u_xlat8.x;
    x_979 = x_983;
  } else {
    let x_986 : f32 = u_xlat2.x;
    x_979 = x_986;
  }
  let x_987 : f32 = x_979;
  u_xlat0.x = x_987;
  let x_990 : bool = u_xlatb0.y;
  if (x_990) {
    let x_995 : f32 = u_xlat8.y;
    x_991 = x_995;
  } else {
    let x_998 : f32 = u_xlat2.y;
    x_991 = x_998;
  }
  let x_999 : f32 = x_991;
  u_xlat0.y = x_999;
  let x_1002 : bool = u_xlatb0.z;
  if (x_1002) {
    let x_1007 : f32 = u_xlat8.z;
    x_1003 = x_1007;
  } else {
    let x_1010 : f32 = u_xlat2.z;
    x_1003 = x_1010;
  }
  let x_1011 : f32 = x_1003;
  u_xlat0.z = x_1011;
  let x_1013 : vec4<f32> = u_xlat1;
  let x_1018 : vec4<f32> = u_xlat0;
  let x_1020 : vec3<f32> = ((vec3<f32>(x_1013.x, x_1013.x, x_1013.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_1018.x, x_1018.y, x_1018.z));
  let x_1021 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1020.x, x_1020.y, x_1020.z, x_1021.w);
  let x_1023 : vec4<f32> = u_xlat0;
  let x_1026 : vec3<f32> = (vec3<f32>(x_1023.x, x_1023.y, x_1023.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1027 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1026.x, x_1026.y, x_1026.z, x_1027.w);
  let x_1029 : vec4<f32> = u_xlat0;
  let x_1032 : vec3<f32> = (vec3<f32>(x_1029.x, x_1029.y, x_1029.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1033 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1032.x, x_1032.y, x_1032.z, x_1033.w);
  let x_1035 : vec4<f32> = u_xlat2;
  let x_1038 : vec3<f32> = (vec3<f32>(x_1035.x, x_1035.y, x_1035.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1039 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1038.x, x_1038.y, x_1038.z, x_1039.w);
  let x_1041 : vec4<f32> = u_xlat2;
  let x_1044 : vec3<f32> = max(abs(vec3<f32>(x_1041.x, x_1041.y, x_1041.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1045 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1044.x, x_1044.y, x_1044.z, x_1045.w);
  let x_1047 : vec4<f32> = u_xlat2;
  let x_1049 : vec3<f32> = log2(vec3<f32>(x_1047.x, x_1047.y, x_1047.z));
  let x_1050 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1049.x, x_1049.y, x_1049.z, x_1050.w);
  let x_1052 : vec4<f32> = u_xlat2;
  let x_1055 : vec3<f32> = (vec3<f32>(x_1052.x, x_1052.y, x_1052.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1056 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1055.x, x_1055.y, x_1055.z, x_1056.w);
  let x_1058 : vec4<f32> = u_xlat2;
  let x_1060 : vec3<f32> = exp2(vec3<f32>(x_1058.x, x_1058.y, x_1058.z));
  let x_1061 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1060.x, x_1060.y, x_1060.z, x_1061.w);
  let x_1064 : vec4<f32> = u_xlat0;
  let x_1066 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1064.x, x_1064.y, x_1064.z, x_1064.x));
  u_xlatb0 = vec3<bool>(x_1066.x, x_1066.y, x_1066.z);
  let x_1071 : bool = u_xlatb0.x;
  if (x_1071) {
    let x_1076 : f32 = u_xlat1.x;
    x_1072 = x_1076;
  } else {
    let x_1079 : f32 = u_xlat2.x;
    x_1072 = x_1079;
  }
  let x_1080 : f32 = x_1072;
  SV_Target0.x = x_1080;
  let x_1084 : bool = u_xlatb0.y;
  if (x_1084) {
    let x_1089 : f32 = u_xlat1.y;
    x_1085 = x_1089;
  } else {
    let x_1092 : f32 = u_xlat2.y;
    x_1085 = x_1092;
  }
  let x_1093 : f32 = x_1085;
  SV_Target0.y = x_1093;
  let x_1096 : bool = u_xlatb0.z;
  if (x_1096) {
    let x_1101 : f32 = u_xlat1.z;
    x_1097 = x_1101;
  } else {
    let x_1104 : f32 = u_xlat2.z;
    x_1097 = x_1104;
  }
  let x_1105 : f32 = x_1097;
  SV_Target0.z = x_1105;
  let x_1108 : f32 = u_xlat0.w;
  SV_Target0.w = x_1108;
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

