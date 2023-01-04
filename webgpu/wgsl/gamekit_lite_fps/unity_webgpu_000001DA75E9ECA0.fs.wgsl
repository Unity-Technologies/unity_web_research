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
  @size(4)
  padding_2 : u32,
  x_Grain_Params1 : vec2<f32>,
  @size(8)
  padding_3 : u32,
  x_Grain_Params2 : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var<uniform> x_30 : PGlobals;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainTex : sampler;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(6) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(14) var sampler_ChromaticAberration_SpectralLut : sampler;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(3) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_AutoExposureTex : sampler;

@group(0) @binding(4) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_BloomTex : sampler;

@group(0) @binding(5) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(13) var sampler_Bloom_DirtTex : sampler;

var<private> u_xlat6 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(8) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(16) var sampler_GrainTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlat15 : f32;

@group(0) @binding(7) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(15) var sampler_Lut3D : sampler;

var<private> u_xlatb0 : vec3<bool>;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_DitheringTex : sampler;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_581 : f32;
  var x_593 : f32;
  var x_606 : f32;
  var x_729 : f32;
  var x_741 : f32;
  var x_753 : f32;
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
  let x_352 : vec3<f32> = vec3<f32>(x_351.x, x_351.y, x_351.z);
  let x_353 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_352.x, x_352.y, x_352.z, x_353.w);
  let x_355 : vec4<f32> = u_xlat1;
  let x_359 : vec3<f32> = clamp(vec3<f32>(x_355.x, x_355.y, x_355.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_360 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_359.x, x_359.y, x_359.z, x_360.w);
  let x_362 : vec4<f32> = u_xlat1;
  u_xlat1.x = dot(vec3<f32>(x_362.x, x_362.y, x_362.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_371 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_371);
  let x_376 : f32 = x_30.x_Grain_Params1.x;
  let x_378 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_376 * -(x_378)) + 1.0f);
  let x_386 : vec2<f32> = vs_TEXCOORD1;
  let x_389 : vec4<f32> = x_30.x_Grain_Params2;
  let x_393 : vec4<f32> = x_30.x_Grain_Params2;
  let x_395 : vec2<f32> = ((x_386 * vec2<f32>(x_389.x, x_389.y)) + vec2<f32>(x_393.z, x_393.w));
  let x_396 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_395.x, x_395.y, x_396.z);
  let x_403 : vec3<f32> = u_xlat6;
  let x_405 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_403.x, x_403.y));
  u_xlat6 = vec3<f32>(x_405.x, x_405.y, x_405.z);
  let x_407 : vec4<f32> = u_xlat0;
  let x_409 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_407.x, x_407.y, x_407.z) * x_409);
  let x_411 : vec3<f32> = u_xlat6;
  let x_414 : f32 = x_30.x_Grain_Params1.y;
  let x_416 : f32 = x_30.x_Grain_Params1.y;
  let x_418 : f32 = x_30.x_Grain_Params1.y;
  u_xlat6 = (x_411 * vec3<f32>(x_414, x_416, x_418));
  let x_421 : vec3<f32> = u_xlat6;
  let x_422 : vec4<f32> = u_xlat1;
  let x_425 : vec4<f32> = u_xlat0;
  let x_427 : vec3<f32> = ((x_421 * vec3<f32>(x_422.x, x_422.x, x_422.x)) + vec3<f32>(x_425.x, x_425.y, x_425.z));
  let x_428 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_427.x, x_427.y, x_427.z, x_428.w);
  let x_430 : vec4<f32> = u_xlat0;
  let x_433 : f32 = x_30.x_PostExposure;
  let x_435 : f32 = x_30.x_PostExposure;
  let x_437 : f32 = x_30.x_PostExposure;
  let x_439 : f32 = x_30.x_PostExposure;
  let x_440 : vec4<f32> = vec4<f32>(x_433, x_435, x_437, x_439);
  u_xlat0 = (x_430 * vec4<f32>(x_440.x, x_440.y, x_440.z, x_440.w));
  let x_447 : vec4<f32> = u_xlat0;
  let x_454 : vec3<f32> = ((vec3<f32>(x_447.x, x_447.y, x_447.z) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_455 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_454.x, x_454.y, x_454.z, x_455.w);
  let x_460 : f32 = u_xlat0.w;
  SV_Target0.w = x_460;
  let x_463 : vec4<f32> = u_xlat0;
  let x_465 : vec3<f32> = log2(vec3<f32>(x_463.x, x_463.y, x_463.z));
  let x_466 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_465.x, x_465.y, x_465.z, x_466.w);
  let x_468 : vec4<f32> = u_xlat0;
  let x_475 : vec3<f32> = ((vec3<f32>(x_468.x, x_468.y, x_468.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_476 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_475.x, x_475.y, x_475.z, x_476.w);
  let x_478 : vec4<f32> = u_xlat0;
  let x_482 : vec3<f32> = clamp(vec3<f32>(x_478.x, x_478.y, x_478.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_483 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_482.x, x_482.y, x_482.z, x_483.w);
  let x_485 : vec4<f32> = u_xlat0;
  let x_490 : vec2<f32> = x_30.x_Lut3D_Params;
  let x_492 : vec3<f32> = (vec3<f32>(x_485.x, x_485.y, x_485.z) * vec3<f32>(x_490.y, x_490.y, x_490.y));
  let x_493 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_492.x, x_492.y, x_492.z, x_493.w);
  let x_497 : f32 = x_30.x_Lut3D_Params.x;
  u_xlat15 = (x_497 * 0.5f);
  let x_499 : vec4<f32> = u_xlat0;
  let x_502 : vec2<f32> = x_30.x_Lut3D_Params;
  let x_505 : f32 = u_xlat15;
  let x_507 : vec3<f32> = ((vec3<f32>(x_499.x, x_499.y, x_499.z) * vec3<f32>(x_502.x, x_502.x, x_502.x)) + vec3<f32>(x_505, x_505, x_505));
  let x_508 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_507.x, x_507.y, x_507.z, x_508.w);
  let x_518 : vec4<f32> = u_xlat0;
  let x_520 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, vec3<f32>(x_518.x, x_518.y, x_518.z));
  let x_521 : vec3<f32> = vec3<f32>(x_520.x, x_520.y, x_520.z);
  let x_522 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_521.x, x_521.y, x_521.z, x_522.w);
  let x_524 : vec4<f32> = u_xlat0;
  let x_529 : vec3<f32> = max(abs(vec3<f32>(x_524.x, x_524.y, x_524.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_530 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_529.x, x_529.y, x_529.z, x_530.w);
  let x_532 : vec4<f32> = u_xlat1;
  let x_534 : vec3<f32> = log2(vec3<f32>(x_532.x, x_532.y, x_532.z));
  let x_535 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_534.x, x_534.y, x_534.z, x_535.w);
  let x_537 : vec4<f32> = u_xlat1;
  let x_541 : vec3<f32> = (vec3<f32>(x_537.x, x_537.y, x_537.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_542 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_541.x, x_541.y, x_541.z, x_542.w);
  let x_544 : vec4<f32> = u_xlat1;
  let x_546 : vec3<f32> = exp2(vec3<f32>(x_544.x, x_544.y, x_544.z));
  let x_547 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_546.x, x_546.y, x_546.z, x_547.w);
  let x_549 : vec4<f32> = u_xlat1;
  let x_556 : vec3<f32> = ((vec3<f32>(x_549.x, x_549.y, x_549.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_557 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_556.x, x_556.y, x_556.z, x_557.w);
  let x_559 : vec4<f32> = u_xlat0;
  let x_563 : vec3<f32> = (vec3<f32>(x_559.x, x_559.y, x_559.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_564 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_563.x, x_563.y, x_563.z, x_564.w);
  let x_572 : vec4<f32> = u_xlat0;
  let x_575 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_572.x, x_572.y, x_572.z, x_572.x));
  u_xlatb0 = vec3<bool>(x_575.x, x_575.y, x_575.z);
  let x_579 : bool = u_xlatb0.x;
  if (x_579) {
    let x_585 : f32 = u_xlat2.x;
    x_581 = x_585;
  } else {
    let x_588 : f32 = u_xlat1.x;
    x_581 = x_588;
  }
  let x_589 : f32 = x_581;
  u_xlat0.x = x_589;
  let x_592 : bool = u_xlatb0.y;
  if (x_592) {
    let x_597 : f32 = u_xlat2.y;
    x_593 = x_597;
  } else {
    let x_600 : f32 = u_xlat1.y;
    x_593 = x_600;
  }
  let x_601 : f32 = x_593;
  u_xlat0.y = x_601;
  let x_605 : bool = u_xlatb0.z;
  if (x_605) {
    let x_610 : f32 = u_xlat2.z;
    x_606 = x_610;
  } else {
    let x_613 : f32 = u_xlat1.z;
    x_606 = x_613;
  }
  let x_614 : f32 = x_606;
  u_xlat0.z = x_614;
  let x_616 : vec2<f32> = vs_TEXCOORD0;
  let x_619 : vec4<f32> = x_30.x_Dithering_Coords;
  let x_623 : vec4<f32> = x_30.x_Dithering_Coords;
  let x_625 : vec2<f32> = ((x_616 * vec2<f32>(x_619.x, x_619.y)) + vec2<f32>(x_623.z, x_623.w));
  let x_626 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_625.x, x_625.y, x_626.z, x_626.w);
  let x_633 : vec4<f32> = u_xlat1;
  let x_635 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_633.x, x_633.y));
  u_xlat15 = x_635.w;
  let x_637 : f32 = u_xlat15;
  u_xlat15 = ((x_637 * 2.0f) + -1.0f);
  let x_640 : f32 = u_xlat15;
  u_xlat1.x = (-(abs(x_640)) + 1.0f);
  let x_645 : f32 = u_xlat15;
  u_xlat15 = ((x_645 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_649 : f32 = u_xlat15;
  u_xlat15 = clamp(x_649, 0.0f, 1.0f);
  let x_651 : f32 = u_xlat15;
  u_xlat15 = ((x_651 * 2.0f) + -1.0f);
  let x_655 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_655);
  let x_659 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_659) + 1.0f);
  let x_663 : f32 = u_xlat15;
  let x_665 : f32 = u_xlat1.x;
  u_xlat15 = (x_663 * x_665);
  let x_667 : f32 = u_xlat15;
  let x_672 : vec4<f32> = u_xlat0;
  let x_674 : vec3<f32> = ((vec3<f32>(x_667, x_667, x_667) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_672.x, x_672.y, x_672.z));
  let x_675 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_674.x, x_674.y, x_674.z, x_675.w);
  let x_677 : vec4<f32> = u_xlat0;
  let x_681 : vec3<f32> = (vec3<f32>(x_677.x, x_677.y, x_677.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_682 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_681.x, x_681.y, x_681.z, x_682.w);
  let x_684 : vec4<f32> = u_xlat1;
  let x_688 : vec3<f32> = (vec3<f32>(x_684.x, x_684.y, x_684.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_689 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_688.x, x_688.y, x_688.z, x_689.w);
  let x_691 : vec4<f32> = u_xlat1;
  let x_694 : vec3<f32> = max(abs(vec3<f32>(x_691.x, x_691.y, x_691.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_695 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_694.x, x_694.y, x_694.z, x_695.w);
  let x_697 : vec4<f32> = u_xlat1;
  let x_699 : vec3<f32> = log2(vec3<f32>(x_697.x, x_697.y, x_697.z));
  let x_700 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_699.x, x_699.y, x_699.z, x_700.w);
  let x_702 : vec4<f32> = u_xlat1;
  let x_706 : vec3<f32> = (vec3<f32>(x_702.x, x_702.y, x_702.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_707 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_706.x, x_706.y, x_706.z, x_707.w);
  let x_709 : vec4<f32> = u_xlat1;
  let x_711 : vec3<f32> = exp2(vec3<f32>(x_709.x, x_709.y, x_709.z));
  let x_712 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_711.x, x_711.y, x_711.z, x_712.w);
  let x_714 : vec4<f32> = u_xlat0;
  let x_718 : vec3<f32> = (vec3<f32>(x_714.x, x_714.y, x_714.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_719 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_718.x, x_718.y, x_718.z, x_719.w);
  let x_723 : vec4<f32> = u_xlat0;
  let x_725 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_723.x, x_723.y, x_723.z, x_723.x));
  u_xlatb0 = vec3<bool>(x_725.x, x_725.y, x_725.z);
  let x_728 : bool = u_xlatb0.x;
  if (x_728) {
    let x_733 : f32 = u_xlat2.x;
    x_729 = x_733;
  } else {
    let x_736 : f32 = u_xlat1.x;
    x_729 = x_736;
  }
  let x_737 : f32 = x_729;
  SV_Target0.x = x_737;
  let x_740 : bool = u_xlatb0.y;
  if (x_740) {
    let x_745 : f32 = u_xlat2.y;
    x_741 = x_745;
  } else {
    let x_748 : f32 = u_xlat1.y;
    x_741 = x_748;
  }
  let x_749 : f32 = x_741;
  SV_Target0.y = x_749;
  let x_752 : bool = u_xlatb0.z;
  if (x_752) {
    let x_757 : f32 = u_xlat2.z;
    x_753 = x_757;
  } else {
    let x_760 : f32 = u_xlat1.z;
    x_753 = x_760;
  }
  let x_761 : f32 = x_753;
  SV_Target0.z = x_761;
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

