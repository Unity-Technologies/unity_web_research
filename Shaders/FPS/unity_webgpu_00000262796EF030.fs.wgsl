struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_Dithering_Coords : vec4<f32>,
  x_ChromaticAberration_Amount : f32,
  @size(12)
  padding_1 : u32,
  x_Lut2D_Params : vec3<f32>,
  x_PostExposure : f32,
  x_Grain_Params1 : vec2<f32>,
  @size(8)
  padding_2 : u32,
  x_Grain_Params2 : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var<uniform> x_30 : PGlobals;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(4) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(10) var sampler_ChromaticAberration_SpectralLut : sampler;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(3) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_AutoExposureTex : sampler;

var<private> u_xlat16 : f32;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(6) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_GrainTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

@group(0) @binding(5) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(11) var sampler_Lut2D : sampler;

var<private> u_xlatb0 : vec3<bool>;

var<private> u_xlat15 : f32;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_DitheringTex : sampler;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_495 : f32;
  var x_507 : f32;
  var x_519 : f32;
  var x_643 : f32;
  var x_655 : f32;
  var x_667 : f32;
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
  let x_203 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_202.x, x_202.y, x_202.z, x_203.w);
  let x_205 : vec4<f32> = u_xlat1;
  let x_206 : vec3<f32> = vec3<f32>(x_205.x, x_205.y, x_205.z);
  let x_207 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_206.x, x_206.y, x_206.z, x_207.w);
  let x_209 : vec4<f32> = u_xlat2;
  let x_213 : vec3<f32> = clamp(vec3<f32>(x_209.x, x_209.y, x_209.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_214 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_213.x, x_213.y, x_213.z, x_214.w);
  let x_217 : vec4<f32> = u_xlat2;
  u_xlat16 = dot(vec3<f32>(x_217.x, x_217.y, x_217.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_224 : f32 = u_xlat16;
  u_xlat16 = sqrt(x_224);
  let x_228 : f32 = x_30.x_Grain_Params1.x;
  let x_229 : f32 = u_xlat16;
  u_xlat16 = ((x_228 * -(x_229)) + 1.0f);
  let x_234 : vec2<f32> = vs_TEXCOORD1;
  let x_238 : vec4<f32> = x_30.x_Grain_Params2;
  let x_242 : vec4<f32> = x_30.x_Grain_Params2;
  let x_244 : vec2<f32> = ((x_234 * vec2<f32>(x_238.x, x_238.y)) + vec2<f32>(x_242.z, x_242.w));
  let x_245 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_244.x, x_244.y, x_245.z, x_245.w);
  let x_252 : vec4<f32> = u_xlat2;
  let x_254 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_252.x, x_252.y));
  let x_255 : vec3<f32> = vec3<f32>(x_254.x, x_254.y, x_254.z);
  let x_256 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_255.x, x_255.y, x_255.z, x_256.w);
  let x_258 : vec4<f32> = u_xlat1;
  let x_260 : vec4<f32> = u_xlat2;
  let x_262 : vec3<f32> = (vec3<f32>(x_258.x, x_258.y, x_258.z) * vec3<f32>(x_260.x, x_260.y, x_260.z));
  let x_263 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_262.x, x_262.y, x_262.z, x_263.w);
  let x_265 : vec4<f32> = u_xlat2;
  let x_269 : f32 = x_30.x_Grain_Params1.y;
  let x_271 : f32 = x_30.x_Grain_Params1.y;
  let x_273 : f32 = x_30.x_Grain_Params1.y;
  let x_275 : vec3<f32> = (vec3<f32>(x_265.x, x_265.y, x_265.z) * vec3<f32>(x_269, x_271, x_273));
  let x_276 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_275.x, x_275.y, x_275.z, x_276.w);
  let x_278 : vec4<f32> = u_xlat2;
  let x_280 : f32 = u_xlat16;
  let x_283 : vec4<f32> = u_xlat1;
  let x_285 : vec3<f32> = ((vec3<f32>(x_278.x, x_278.y, x_278.z) * vec3<f32>(x_280, x_280, x_280)) + vec3<f32>(x_283.x, x_283.y, x_283.z));
  let x_286 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_285.x, x_285.y, x_285.z, x_286.w);
  let x_288 : vec4<f32> = u_xlat0;
  let x_291 : f32 = x_30.x_PostExposure;
  let x_293 : f32 = x_30.x_PostExposure;
  let x_295 : f32 = x_30.x_PostExposure;
  let x_297 : f32 = x_30.x_PostExposure;
  let x_298 : vec4<f32> = vec4<f32>(x_291, x_293, x_295, x_297);
  u_xlat0 = (x_288 * vec4<f32>(x_298.x, x_298.y, x_298.z, x_298.w));
  let x_305 : vec4<f32> = u_xlat0;
  let x_312 : vec3<f32> = ((vec3<f32>(x_305.z, x_305.x, x_305.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_313 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_312.x, x_312.y, x_312.z, x_313.w);
  let x_318 : f32 = u_xlat0.w;
  SV_Target0.w = x_318;
  let x_321 : vec4<f32> = u_xlat0;
  let x_323 : vec3<f32> = log2(vec3<f32>(x_321.x, x_321.y, x_321.z));
  let x_324 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_323.x, x_323.y, x_323.z, x_324.w);
  let x_326 : vec4<f32> = u_xlat0;
  let x_333 : vec3<f32> = ((vec3<f32>(x_326.x, x_326.y, x_326.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_334 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
  let x_336 : vec4<f32> = u_xlat0;
  let x_340 : vec3<f32> = clamp(vec3<f32>(x_336.x, x_336.y, x_336.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_341 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_340.x, x_340.y, x_340.z, x_341.w);
  let x_345 : vec4<f32> = u_xlat0;
  let x_350 : vec3<f32> = x_30.x_Lut2D_Params;
  u_xlat5 = (vec3<f32>(x_345.x, x_345.y, x_345.z) * vec3<f32>(x_350.z, x_350.z, x_350.z));
  let x_354 : f32 = u_xlat5.x;
  u_xlat5.x = floor(x_354);
  let x_358 : f32 = u_xlat0.x;
  let x_361 : f32 = x_30.x_Lut2D_Params.z;
  let x_364 : f32 = u_xlat5.x;
  u_xlat0.x = ((x_358 * x_361) + -(x_364));
  let x_369 : vec3<f32> = x_30.x_Lut2D_Params;
  let x_372 : vec2<f32> = (vec2<f32>(x_369.x, x_369.y) * vec2<f32>(0.5f, 0.5f));
  let x_373 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_372.x, x_372.y, x_373.z, x_373.w);
  let x_375 : vec3<f32> = u_xlat5;
  let x_378 : vec3<f32> = x_30.x_Lut2D_Params;
  let x_381 : vec4<f32> = u_xlat1;
  let x_383 : vec2<f32> = ((vec2<f32>(x_375.y, x_375.z) * vec2<f32>(x_378.x, x_378.y)) + vec2<f32>(x_381.x, x_381.y));
  let x_384 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_384.x, x_383.x, x_383.y, x_384.w);
  let x_387 : f32 = u_xlat5.x;
  let x_389 : f32 = x_30.x_Lut2D_Params.y;
  let x_392 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_387 * x_389) + x_392);
  let x_396 : f32 = x_30.x_Lut2D_Params.y;
  u_xlat2.x = x_396;
  u_xlat2.y = 0.0f;
  let x_399 : vec4<f32> = u_xlat1;
  let x_401 : vec4<f32> = u_xlat2;
  let x_403 : vec2<f32> = (vec2<f32>(x_399.x, x_399.z) + vec2<f32>(x_401.x, x_401.y));
  let x_404 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_403.x, x_403.y, x_404.z);
  let x_411 : vec4<f32> = u_xlat1;
  let x_413 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_411.x, x_411.z));
  let x_414 : vec3<f32> = vec3<f32>(x_413.x, x_413.y, x_413.z);
  let x_415 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_414.x, x_414.y, x_414.z, x_415.w);
  let x_420 : vec3<f32> = u_xlat5;
  let x_422 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_420.x, x_420.y));
  u_xlat5 = vec3<f32>(x_422.x, x_422.y, x_422.z);
  let x_424 : vec4<f32> = u_xlat1;
  let x_427 : vec3<f32> = u_xlat5;
  u_xlat5 = (-(vec3<f32>(x_424.x, x_424.y, x_424.z)) + x_427);
  let x_429 : vec4<f32> = u_xlat0;
  let x_431 : vec3<f32> = u_xlat5;
  let x_433 : vec4<f32> = u_xlat1;
  let x_435 : vec3<f32> = ((vec3<f32>(x_429.x, x_429.x, x_429.x) * x_431) + vec3<f32>(x_433.x, x_433.y, x_433.z));
  let x_436 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_435.x, x_435.y, x_435.z, x_436.w);
  let x_438 : vec4<f32> = u_xlat0;
  let x_443 : vec3<f32> = max(abs(vec3<f32>(x_438.x, x_438.y, x_438.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_444 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_443.x, x_443.y, x_443.z, x_444.w);
  let x_446 : vec4<f32> = u_xlat1;
  let x_448 : vec3<f32> = log2(vec3<f32>(x_446.x, x_446.y, x_446.z));
  let x_449 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_448.x, x_448.y, x_448.z, x_449.w);
  let x_451 : vec4<f32> = u_xlat1;
  let x_455 : vec3<f32> = (vec3<f32>(x_451.x, x_451.y, x_451.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_456 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_455.x, x_455.y, x_455.z, x_456.w);
  let x_458 : vec4<f32> = u_xlat1;
  let x_460 : vec3<f32> = exp2(vec3<f32>(x_458.x, x_458.y, x_458.z));
  let x_461 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_460.x, x_460.y, x_460.z, x_461.w);
  let x_463 : vec4<f32> = u_xlat1;
  let x_470 : vec3<f32> = ((vec3<f32>(x_463.x, x_463.y, x_463.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_471 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_470.x, x_470.y, x_470.z, x_471.w);
  let x_473 : vec4<f32> = u_xlat0;
  let x_477 : vec3<f32> = (vec3<f32>(x_473.x, x_473.y, x_473.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_478 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_477.x, x_477.y, x_477.z, x_478.w);
  let x_486 : vec4<f32> = u_xlat0;
  let x_489 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_486.x, x_486.y, x_486.z, x_486.x));
  u_xlatb0 = vec3<bool>(x_489.x, x_489.y, x_489.z);
  let x_493 : bool = u_xlatb0.x;
  if (x_493) {
    let x_499 : f32 = u_xlat2.x;
    x_495 = x_499;
  } else {
    let x_502 : f32 = u_xlat1.x;
    x_495 = x_502;
  }
  let x_503 : f32 = x_495;
  u_xlat0.x = x_503;
  let x_506 : bool = u_xlatb0.y;
  if (x_506) {
    let x_511 : f32 = u_xlat2.y;
    x_507 = x_511;
  } else {
    let x_514 : f32 = u_xlat1.y;
    x_507 = x_514;
  }
  let x_515 : f32 = x_507;
  u_xlat0.y = x_515;
  let x_518 : bool = u_xlatb0.z;
  if (x_518) {
    let x_523 : f32 = u_xlat2.z;
    x_519 = x_523;
  } else {
    let x_526 : f32 = u_xlat1.z;
    x_519 = x_526;
  }
  let x_527 : f32 = x_519;
  u_xlat0.z = x_527;
  let x_529 : vec2<f32> = vs_TEXCOORD0;
  let x_532 : vec4<f32> = x_30.x_Dithering_Coords;
  let x_536 : vec4<f32> = x_30.x_Dithering_Coords;
  let x_538 : vec2<f32> = ((x_529 * vec2<f32>(x_532.x, x_532.y)) + vec2<f32>(x_536.z, x_536.w));
  let x_539 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_538.x, x_538.y, x_539.z, x_539.w);
  let x_547 : vec4<f32> = u_xlat1;
  let x_549 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_547.x, x_547.y));
  u_xlat15 = x_549.w;
  let x_551 : f32 = u_xlat15;
  u_xlat15 = ((x_551 * 2.0f) + -1.0f);
  let x_554 : f32 = u_xlat15;
  u_xlat1.x = (-(abs(x_554)) + 1.0f);
  let x_559 : f32 = u_xlat15;
  u_xlat15 = ((x_559 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_563 : f32 = u_xlat15;
  u_xlat15 = clamp(x_563, 0.0f, 1.0f);
  let x_565 : f32 = u_xlat15;
  u_xlat15 = ((x_565 * 2.0f) + -1.0f);
  let x_569 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_569);
  let x_573 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_573) + 1.0f);
  let x_577 : f32 = u_xlat15;
  let x_579 : f32 = u_xlat1.x;
  u_xlat15 = (x_577 * x_579);
  let x_581 : f32 = u_xlat15;
  let x_586 : vec4<f32> = u_xlat0;
  let x_588 : vec3<f32> = ((vec3<f32>(x_581, x_581, x_581) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_586.x, x_586.y, x_586.z));
  let x_589 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_588.x, x_588.y, x_588.z, x_589.w);
  let x_591 : vec4<f32> = u_xlat0;
  let x_595 : vec3<f32> = (vec3<f32>(x_591.x, x_591.y, x_591.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_596 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_595.x, x_595.y, x_595.z, x_596.w);
  let x_598 : vec4<f32> = u_xlat1;
  let x_602 : vec3<f32> = (vec3<f32>(x_598.x, x_598.y, x_598.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_603 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_602.x, x_602.y, x_602.z, x_603.w);
  let x_605 : vec4<f32> = u_xlat1;
  let x_608 : vec3<f32> = max(abs(vec3<f32>(x_605.x, x_605.y, x_605.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_609 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_608.x, x_608.y, x_608.z, x_609.w);
  let x_611 : vec4<f32> = u_xlat1;
  let x_613 : vec3<f32> = log2(vec3<f32>(x_611.x, x_611.y, x_611.z));
  let x_614 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_613.x, x_613.y, x_613.z, x_614.w);
  let x_616 : vec4<f32> = u_xlat1;
  let x_620 : vec3<f32> = (vec3<f32>(x_616.x, x_616.y, x_616.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_621 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_620.x, x_620.y, x_620.z, x_621.w);
  let x_623 : vec4<f32> = u_xlat1;
  let x_625 : vec3<f32> = exp2(vec3<f32>(x_623.x, x_623.y, x_623.z));
  let x_626 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_625.x, x_625.y, x_625.z, x_626.w);
  let x_628 : vec4<f32> = u_xlat0;
  let x_632 : vec3<f32> = (vec3<f32>(x_628.x, x_628.y, x_628.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_633 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_632.x, x_632.y, x_632.z, x_633.w);
  let x_637 : vec4<f32> = u_xlat0;
  let x_639 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_637.x, x_637.y, x_637.z, x_637.x));
  u_xlatb0 = vec3<bool>(x_639.x, x_639.y, x_639.z);
  let x_642 : bool = u_xlatb0.x;
  if (x_642) {
    let x_647 : f32 = u_xlat2.x;
    x_643 = x_647;
  } else {
    let x_650 : f32 = u_xlat1.x;
    x_643 = x_650;
  }
  let x_651 : f32 = x_643;
  SV_Target0.x = x_651;
  let x_654 : bool = u_xlatb0.y;
  if (x_654) {
    let x_659 : f32 = u_xlat2.y;
    x_655 = x_659;
  } else {
    let x_662 : f32 = u_xlat1.y;
    x_655 = x_662;
  }
  let x_663 : f32 = x_655;
  SV_Target0.y = x_663;
  let x_666 : bool = u_xlatb0.z;
  if (x_666) {
    let x_671 : f32 = u_xlat2.z;
    x_667 = x_671;
  } else {
    let x_674 : f32 = u_xlat1.z;
    x_667 = x_674;
  }
  let x_675 : f32 = x_667;
  SV_Target0.z = x_675;
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

