struct PGlobals {
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
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_30 : PGlobals;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

@group(0) @binding(5) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(12) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_AutoExposureTex : sampler;

@group(0) @binding(3) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_BloomTex : sampler;

@group(0) @binding(4) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_Bloom_DirtTex : sampler;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(6) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(13) var sampler_Lut3D : sampler;

@group(0) @binding(0) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_DitheringTex : sampler;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat15 : f32;
  var u_xlatb0 : vec3<bool>;
  var x_501 : f32;
  var x_514 : f32;
  var x_527 : f32;
  var x_650 : f32;
  var x_662 : f32;
  var x_674 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD0;
  let x_14 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_13.x, x_13.y, x_14.z, x_14.w);
  let x_16 : vec4<f32> = u_xlat0;
  let x_22 : vec2<f32> = clamp(vec2<f32>(x_16.x, x_16.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_23 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_22.x, x_22.y, x_23.z, x_23.w);
  let x_25 : vec4<f32> = u_xlat0;
  let x_35 : f32 = x_30.x_RenderViewportScaleFactor;
  let x_37 : vec2<f32> = (vec2<f32>(x_25.x, x_25.y) * vec2<f32>(x_35, x_35));
  let x_38 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_37.x, x_37.y, x_38.z, x_38.w);
  let x_50 : vec4<f32> = u_xlat0;
  let x_52 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_50.x, x_50.y), 0.0f);
  u_xlat0 = x_52;
  let x_54 : vec2<f32> = vs_TEXCOORD0;
  u_xlat1 = ((vec4<f32>(x_54.x, x_54.y, x_54.x, x_54.y) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_63 : vec4<f32> = u_xlat1;
  let x_65 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(vec2<f32>(x_63.z, x_63.w), vec2<f32>(x_65.z, x_65.w));
  let x_72 : vec4<f32> = u_xlat1;
  let x_73 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_72 * vec4<f32>(x_73.x, x_73.x, x_73.x, x_73.x));
  let x_76 : vec4<f32> = u_xlat1;
  let x_79 : f32 = x_30.x_ChromaticAberration_Amount;
  let x_81 : f32 = x_30.x_ChromaticAberration_Amount;
  let x_83 : f32 = x_30.x_ChromaticAberration_Amount;
  let x_85 : f32 = x_30.x_ChromaticAberration_Amount;
  let x_86 : vec4<f32> = vec4<f32>(x_79, x_81, x_83, x_85);
  u_xlat1 = (x_76 * vec4<f32>(x_86.x, x_86.y, x_86.z, x_86.w));
  let x_93 : vec4<f32> = u_xlat1;
  let x_98 : vec2<f32> = vs_TEXCOORD0;
  u_xlat1 = ((x_93 * vec4<f32>(-0.333333343f, -0.333333343f, -0.666666687f, -0.666666687f)) + vec4<f32>(x_98.x, x_98.y, x_98.x, x_98.y));
  let x_101 : vec4<f32> = u_xlat1;
  u_xlat1 = clamp(x_101, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_105 : vec4<f32> = u_xlat1;
  let x_107 : f32 = x_30.x_RenderViewportScaleFactor;
  u_xlat1 = (x_105 * vec4<f32>(x_107, x_107, x_107, x_107));
  let x_113 : vec4<f32> = u_xlat1;
  let x_115 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_113.x, x_113.y), 0.0f);
  u_xlat2 = x_115;
  let x_119 : vec4<f32> = u_xlat1;
  let x_121 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_119.z, x_119.w), 0.0f);
  u_xlat1 = x_121;
  u_xlat3.w = 1.0f;
  let x_132 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(0.5f, 0.0f), 0.0f);
  let x_133 : vec3<f32> = vec3<f32>(x_132.x, x_132.y, x_132.z);
  let x_134 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_133.x, x_133.y, x_133.z, x_134.w);
  let x_136 : vec4<f32> = u_xlat2;
  let x_137 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_136 * x_137);
  u_xlat4.w = 1.0f;
  let x_146 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(0.166666672f, 0.0f), 0.0f);
  let x_147 : vec3<f32> = vec3<f32>(x_146.x, x_146.y, x_146.z);
  let x_148 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_147.x, x_147.y, x_147.z, x_148.w);
  let x_150 : vec4<f32> = u_xlat3;
  let x_152 : vec4<f32> = u_xlat4;
  let x_154 : vec3<f32> = (vec3<f32>(x_150.x, x_150.y, x_150.z) + vec3<f32>(x_152.x, x_152.y, x_152.z));
  let x_155 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_154.x, x_154.y, x_154.z, x_155.w);
  let x_157 : vec4<f32> = u_xlat0;
  let x_158 : vec4<f32> = u_xlat4;
  let x_160 : vec4<f32> = u_xlat2;
  u_xlat0 = ((x_157 * x_158) + x_160);
  u_xlat2.w = 1.0f;
  let x_168 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(0.833333313f, 0.0f), 0.0f);
  let x_169 : vec3<f32> = vec3<f32>(x_168.x, x_168.y, x_168.z);
  let x_170 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_169.x, x_169.y, x_169.z, x_170.w);
  let x_172 : vec4<f32> = u_xlat2;
  let x_174 : vec4<f32> = u_xlat3;
  let x_176 : vec3<f32> = (vec3<f32>(x_172.x, x_172.y, x_172.z) + vec3<f32>(x_174.x, x_174.y, x_174.z));
  let x_177 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_176.x, x_176.y, x_176.z, x_177.w);
  let x_179 : vec4<f32> = u_xlat1;
  let x_180 : vec4<f32> = u_xlat2;
  let x_182 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_179 * x_180) + x_182);
  u_xlat3.w = 3.0f;
  let x_186 : vec4<f32> = u_xlat0;
  let x_187 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_186 / x_187);
  let x_194 : vec2<f32> = vs_TEXCOORD0;
  let x_195 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_194);
  u_xlat1.x = x_195.x;
  let x_198 : vec4<f32> = u_xlat0;
  let x_200 : vec4<f32> = u_xlat1;
  let x_202 : vec3<f32> = (vec3<f32>(x_198.x, x_198.y, x_198.z) * vec3<f32>(x_200.x, x_200.x, x_200.x));
  let x_203 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_202.x, x_202.y, x_202.z, x_203.w);
  let x_208 : vec4<f32> = x_30.x_BloomTex_TexelSize;
  u_xlat1 = (vec4<f32>(x_208.x, x_208.y, x_208.x, x_208.y) * vec4<f32>(-1.0f, -1.0f, 1.0f, 1.0f));
  let x_214 : f32 = x_30.x_Bloom_Settings.x;
  u_xlat2.x = (x_214 * 0.5f);
  let x_217 : vec4<f32> = u_xlat1;
  let x_219 : vec4<f32> = u_xlat2;
  let x_222 : vec2<f32> = vs_TEXCOORD0;
  u_xlat3 = ((vec4<f32>(x_217.x, x_217.y, x_217.z, x_217.y) * vec4<f32>(x_219.x, x_219.x, x_219.x, x_219.x)) + vec4<f32>(x_222.x, x_222.y, x_222.x, x_222.y));
  let x_225 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_225, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_229 : vec4<f32> = u_xlat1;
  let x_231 : vec4<f32> = u_xlat2;
  let x_234 : vec2<f32> = vs_TEXCOORD0;
  u_xlat1 = ((vec4<f32>(x_229.x, x_229.w, x_229.z, x_229.w) * vec4<f32>(x_231.x, x_231.x, x_231.x, x_231.x)) + vec4<f32>(x_234.x, x_234.y, x_234.x, x_234.y));
  let x_237 : vec4<f32> = u_xlat1;
  u_xlat1 = clamp(x_237, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_241 : vec4<f32> = u_xlat1;
  let x_243 : f32 = x_30.x_RenderViewportScaleFactor;
  u_xlat1 = (x_241 * vec4<f32>(x_243, x_243, x_243, x_243));
  let x_246 : vec4<f32> = u_xlat3;
  let x_248 : f32 = x_30.x_RenderViewportScaleFactor;
  u_xlat2 = (x_246 * vec4<f32>(x_248, x_248, x_248, x_248));
  let x_256 : vec4<f32> = u_xlat2;
  let x_258 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_256.x, x_256.y));
  u_xlat3 = x_258;
  let x_262 : vec4<f32> = u_xlat2;
  let x_264 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_262.z, x_262.w));
  u_xlat2 = x_264;
  let x_265 : vec4<f32> = u_xlat2;
  let x_266 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_265 + x_266);
  let x_271 : vec4<f32> = u_xlat1;
  let x_273 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_271.x, x_271.y));
  u_xlat3 = x_273;
  let x_277 : vec4<f32> = u_xlat1;
  let x_279 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_277.z, x_277.w));
  u_xlat1 = x_279;
  let x_280 : vec4<f32> = u_xlat2;
  let x_281 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_280 + x_281);
  let x_283 : vec4<f32> = u_xlat1;
  let x_284 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_283 + x_284);
  let x_286 : vec4<f32> = u_xlat1;
  let x_289 : vec3<f32> = x_30.x_Bloom_Settings;
  u_xlat1 = (x_286 * vec4<f32>(x_289.y, x_289.y, x_289.y, x_289.y));
  let x_292 : vec4<f32> = u_xlat1;
  u_xlat2 = (x_292 * vec4<f32>(0.25f, 0.25f, 0.25f, 1.0f));
  let x_296 : vec4<f32> = u_xlat1;
  u_xlat1 = (x_296 * vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
  let x_299 : vec4<f32> = u_xlat2;
  let x_303 : vec3<f32> = x_30.x_Bloom_Color;
  let x_304 : vec3<f32> = (vec3<f32>(x_299.x, x_299.y, x_299.z) * x_303);
  let x_305 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_304.x, x_304.y, x_304.z, x_305.w);
  let x_308 : f32 = u_xlat2.w;
  u_xlat3.w = (x_308 * 0.25f);
  let x_311 : vec4<f32> = u_xlat0;
  let x_312 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_311 + x_312);
  let x_314 : vec2<f32> = vs_TEXCOORD0;
  let x_317 : vec4<f32> = x_30.x_Bloom_DirtTileOffset;
  let x_321 : vec4<f32> = x_30.x_Bloom_DirtTileOffset;
  let x_323 : vec2<f32> = ((x_314 * vec2<f32>(x_317.x, x_317.y)) + vec2<f32>(x_321.z, x_321.w));
  let x_324 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_323.x, x_323.y, x_324.z, x_324.w);
  let x_331 : vec4<f32> = u_xlat2;
  let x_333 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_331.x, x_331.y));
  let x_334 : vec3<f32> = vec3<f32>(x_333.x, x_333.y, x_333.z);
  let x_335 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_337 : vec4<f32> = u_xlat2;
  let x_340 : vec3<f32> = x_30.x_Bloom_Settings;
  let x_342 : vec3<f32> = (vec3<f32>(x_337.x, x_337.y, x_337.z) * vec3<f32>(x_340.z, x_340.z, x_340.z));
  let x_343 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_342.x, x_342.y, x_342.z, x_343.w);
  u_xlat2.w = 0.0f;
  let x_346 : vec4<f32> = u_xlat2;
  let x_347 : vec4<f32> = u_xlat1;
  let x_349 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_346 * x_347) + x_349);
  let x_351 : vec4<f32> = u_xlat0;
  let x_354 : f32 = x_30.x_PostExposure;
  let x_356 : f32 = x_30.x_PostExposure;
  let x_358 : f32 = x_30.x_PostExposure;
  let x_360 : f32 = x_30.x_PostExposure;
  let x_361 : vec4<f32> = vec4<f32>(x_354, x_356, x_358, x_360);
  u_xlat0 = (x_351 * vec4<f32>(x_361.x, x_361.y, x_361.z, x_361.w));
  let x_368 : vec4<f32> = u_xlat0;
  let x_375 : vec3<f32> = ((vec3<f32>(x_368.x, x_368.y, x_368.z) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_376 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_375.x, x_375.y, x_375.z, x_376.w);
  let x_381 : f32 = u_xlat0.w;
  SV_Target0.w = x_381;
  let x_384 : vec4<f32> = u_xlat0;
  let x_386 : vec3<f32> = log2(vec3<f32>(x_384.x, x_384.y, x_384.z));
  let x_387 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_386.x, x_386.y, x_386.z, x_387.w);
  let x_389 : vec4<f32> = u_xlat0;
  let x_396 : vec3<f32> = ((vec3<f32>(x_389.x, x_389.y, x_389.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_397 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_396.x, x_396.y, x_396.z, x_397.w);
  let x_399 : vec4<f32> = u_xlat0;
  let x_403 : vec3<f32> = clamp(vec3<f32>(x_399.x, x_399.y, x_399.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_404 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_403.x, x_403.y, x_403.z, x_404.w);
  let x_406 : vec4<f32> = u_xlat0;
  let x_411 : vec2<f32> = x_30.x_Lut3D_Params;
  let x_413 : vec3<f32> = (vec3<f32>(x_406.x, x_406.y, x_406.z) * vec3<f32>(x_411.y, x_411.y, x_411.y));
  let x_414 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_413.x, x_413.y, x_413.z, x_414.w);
  let x_418 : f32 = x_30.x_Lut3D_Params.x;
  u_xlat15 = (x_418 * 0.5f);
  let x_420 : vec4<f32> = u_xlat0;
  let x_423 : vec2<f32> = x_30.x_Lut3D_Params;
  let x_426 : f32 = u_xlat15;
  let x_428 : vec3<f32> = ((vec3<f32>(x_420.x, x_420.y, x_420.z) * vec3<f32>(x_423.x, x_423.x, x_423.x)) + vec3<f32>(x_426, x_426, x_426));
  let x_429 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_428.x, x_428.y, x_428.z, x_429.w);
  let x_439 : vec4<f32> = u_xlat0;
  let x_441 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, vec3<f32>(x_439.x, x_439.y, x_439.z));
  let x_442 : vec3<f32> = vec3<f32>(x_441.x, x_441.y, x_441.z);
  let x_443 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_442.x, x_442.y, x_442.z, x_443.w);
  let x_445 : vec4<f32> = u_xlat0;
  let x_450 : vec3<f32> = max(abs(vec3<f32>(x_445.x, x_445.y, x_445.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_451 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_450.x, x_450.y, x_450.z, x_451.w);
  let x_453 : vec4<f32> = u_xlat1;
  let x_455 : vec3<f32> = log2(vec3<f32>(x_453.x, x_453.y, x_453.z));
  let x_456 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_455.x, x_455.y, x_455.z, x_456.w);
  let x_458 : vec4<f32> = u_xlat1;
  let x_462 : vec3<f32> = (vec3<f32>(x_458.x, x_458.y, x_458.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_463 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_462.x, x_462.y, x_462.z, x_463.w);
  let x_465 : vec4<f32> = u_xlat1;
  let x_467 : vec3<f32> = exp2(vec3<f32>(x_465.x, x_465.y, x_465.z));
  let x_468 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_467.x, x_467.y, x_467.z, x_468.w);
  let x_470 : vec4<f32> = u_xlat1;
  let x_477 : vec3<f32> = ((vec3<f32>(x_470.x, x_470.y, x_470.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_478 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_477.x, x_477.y, x_477.z, x_478.w);
  let x_480 : vec4<f32> = u_xlat0;
  let x_484 : vec3<f32> = (vec3<f32>(x_480.x, x_480.y, x_480.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_485 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_484.x, x_484.y, x_484.z, x_485.w);
  let x_493 : vec4<f32> = u_xlat0;
  let x_496 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_493.x, x_493.y, x_493.z, x_493.x));
  u_xlatb0 = vec3<bool>(x_496.x, x_496.y, x_496.z);
  let x_500 : bool = u_xlatb0.x;
  if (x_500) {
    let x_505 : f32 = u_xlat2.x;
    x_501 = x_505;
  } else {
    let x_508 : f32 = u_xlat1.x;
    x_501 = x_508;
  }
  let x_509 : f32 = x_501;
  u_xlat0.x = x_509;
  let x_513 : bool = u_xlatb0.y;
  if (x_513) {
    let x_518 : f32 = u_xlat2.y;
    x_514 = x_518;
  } else {
    let x_521 : f32 = u_xlat1.y;
    x_514 = x_521;
  }
  let x_522 : f32 = x_514;
  u_xlat0.y = x_522;
  let x_526 : bool = u_xlatb0.z;
  if (x_526) {
    let x_531 : f32 = u_xlat2.z;
    x_527 = x_531;
  } else {
    let x_534 : f32 = u_xlat1.z;
    x_527 = x_534;
  }
  let x_535 : f32 = x_527;
  u_xlat0.z = x_535;
  let x_537 : vec2<f32> = vs_TEXCOORD0;
  let x_540 : vec4<f32> = x_30.x_Dithering_Coords;
  let x_544 : vec4<f32> = x_30.x_Dithering_Coords;
  let x_546 : vec2<f32> = ((x_537 * vec2<f32>(x_540.x, x_540.y)) + vec2<f32>(x_544.z, x_544.w));
  let x_547 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_546.x, x_546.y, x_547.z, x_547.w);
  let x_554 : vec4<f32> = u_xlat1;
  let x_556 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_554.x, x_554.y));
  u_xlat15 = x_556.w;
  let x_558 : f32 = u_xlat15;
  u_xlat15 = ((x_558 * 2.0f) + -1.0f);
  let x_561 : f32 = u_xlat15;
  u_xlat1.x = (-(abs(x_561)) + 1.0f);
  let x_566 : f32 = u_xlat15;
  u_xlat15 = ((x_566 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_570 : f32 = u_xlat15;
  u_xlat15 = clamp(x_570, 0.0f, 1.0f);
  let x_572 : f32 = u_xlat15;
  u_xlat15 = ((x_572 * 2.0f) + -1.0f);
  let x_576 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_576);
  let x_580 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_580) + 1.0f);
  let x_584 : f32 = u_xlat15;
  let x_586 : f32 = u_xlat1.x;
  u_xlat15 = (x_584 * x_586);
  let x_588 : f32 = u_xlat15;
  let x_593 : vec4<f32> = u_xlat0;
  let x_595 : vec3<f32> = ((vec3<f32>(x_588, x_588, x_588) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_593.x, x_593.y, x_593.z));
  let x_596 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_595.x, x_595.y, x_595.z, x_596.w);
  let x_598 : vec4<f32> = u_xlat0;
  let x_602 : vec3<f32> = (vec3<f32>(x_598.x, x_598.y, x_598.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_603 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_602.x, x_602.y, x_602.z, x_603.w);
  let x_605 : vec4<f32> = u_xlat1;
  let x_609 : vec3<f32> = (vec3<f32>(x_605.x, x_605.y, x_605.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_610 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_609.x, x_609.y, x_609.z, x_610.w);
  let x_612 : vec4<f32> = u_xlat1;
  let x_615 : vec3<f32> = max(abs(vec3<f32>(x_612.x, x_612.y, x_612.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_616 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_615.x, x_615.y, x_615.z, x_616.w);
  let x_618 : vec4<f32> = u_xlat1;
  let x_620 : vec3<f32> = log2(vec3<f32>(x_618.x, x_618.y, x_618.z));
  let x_621 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_620.x, x_620.y, x_620.z, x_621.w);
  let x_623 : vec4<f32> = u_xlat1;
  let x_627 : vec3<f32> = (vec3<f32>(x_623.x, x_623.y, x_623.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_628 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_627.x, x_627.y, x_627.z, x_628.w);
  let x_630 : vec4<f32> = u_xlat1;
  let x_632 : vec3<f32> = exp2(vec3<f32>(x_630.x, x_630.y, x_630.z));
  let x_633 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_632.x, x_632.y, x_632.z, x_633.w);
  let x_635 : vec4<f32> = u_xlat0;
  let x_639 : vec3<f32> = (vec3<f32>(x_635.x, x_635.y, x_635.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_640 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_639.x, x_639.y, x_639.z, x_640.w);
  let x_644 : vec4<f32> = u_xlat0;
  let x_646 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_644.x, x_644.y, x_644.z, x_644.x));
  u_xlatb0 = vec3<bool>(x_646.x, x_646.y, x_646.z);
  let x_649 : bool = u_xlatb0.x;
  if (x_649) {
    let x_654 : f32 = u_xlat2.x;
    x_650 = x_654;
  } else {
    let x_657 : f32 = u_xlat1.x;
    x_650 = x_657;
  }
  let x_658 : f32 = x_650;
  SV_Target0.x = x_658;
  let x_661 : bool = u_xlatb0.y;
  if (x_661) {
    let x_666 : f32 = u_xlat2.y;
    x_662 = x_666;
  } else {
    let x_669 : f32 = u_xlat1.y;
    x_662 = x_669;
  }
  let x_670 : f32 = x_662;
  SV_Target0.y = x_670;
  let x_673 : bool = u_xlatb0.z;
  if (x_673) {
    let x_678 : f32 = u_xlat2.z;
    x_674 = x_678;
  } else {
    let x_681 : f32 = u_xlat1.z;
    x_674 = x_681;
  }
  let x_682 : f32 = x_674;
  SV_Target0.z = x_682;
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

