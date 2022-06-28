struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_Dithering_Coords : vec4<f32>,
  x_ChromaticAberration_Amount : f32,
  @size(4)
  padding_1 : u32,
  x_Grain_Params1 : vec2<f32>,
  x_Grain_Params2 : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var<uniform> x_29 : PGlobals;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(4) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(9) var sampler_ChromaticAberration_SpectralLut : sampler;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(3) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_AutoExposureTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlat15 : f32;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(5) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_GrainTex : sampler;

var<private> u_xlatb0 : vec3<bool>;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_DitheringTex : sampler;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_351 : f32;
  var x_363 : f32;
  var x_376 : f32;
  var x_499 : f32;
  var x_511 : f32;
  var x_523 : f32;
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
  let x_34 : f32 = x_29.x_RenderViewportScaleFactor;
  let x_36 : vec2<f32> = (vec2<f32>(x_25.x, x_25.y) * vec2<f32>(x_34, x_34));
  let x_37 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_36.x, x_36.y, x_37.z, x_37.w);
  let x_49 : vec4<f32> = u_xlat0;
  let x_51 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_49.x, x_49.y), 0.0f);
  u_xlat0 = x_51;
  let x_53 : vec2<f32> = vs_TEXCOORD0;
  u_xlat1 = ((vec4<f32>(x_53.x, x_53.y, x_53.x, x_53.y) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_62 : vec4<f32> = u_xlat1;
  let x_64 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(vec2<f32>(x_62.z, x_62.w), vec2<f32>(x_64.z, x_64.w));
  let x_71 : vec4<f32> = u_xlat1;
  let x_72 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_71 * vec4<f32>(x_72.x, x_72.x, x_72.x, x_72.x));
  let x_75 : vec4<f32> = u_xlat1;
  let x_78 : f32 = x_29.x_ChromaticAberration_Amount;
  let x_80 : f32 = x_29.x_ChromaticAberration_Amount;
  let x_82 : f32 = x_29.x_ChromaticAberration_Amount;
  let x_84 : f32 = x_29.x_ChromaticAberration_Amount;
  let x_85 : vec4<f32> = vec4<f32>(x_78, x_80, x_82, x_84);
  u_xlat1 = (x_75 * vec4<f32>(x_85.x, x_85.y, x_85.z, x_85.w));
  let x_92 : vec4<f32> = u_xlat1;
  let x_97 : vec2<f32> = vs_TEXCOORD0;
  u_xlat1 = ((x_92 * vec4<f32>(-0.333333343f, -0.333333343f, -0.666666687f, -0.666666687f)) + vec4<f32>(x_97.x, x_97.y, x_97.x, x_97.y));
  let x_100 : vec4<f32> = u_xlat1;
  u_xlat1 = clamp(x_100, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_104 : vec4<f32> = u_xlat1;
  let x_106 : f32 = x_29.x_RenderViewportScaleFactor;
  u_xlat1 = (x_104 * vec4<f32>(x_106, x_106, x_106, x_106));
  let x_112 : vec4<f32> = u_xlat1;
  let x_114 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_112.x, x_112.y), 0.0f);
  u_xlat2 = x_114;
  let x_118 : vec4<f32> = u_xlat1;
  let x_120 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_118.z, x_118.w), 0.0f);
  u_xlat1 = x_120;
  u_xlat3.w = 1.0f;
  let x_131 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(0.5f, 0.0f), 0.0f);
  let x_133 : vec3<f32> = vec3<f32>(x_131.x, x_131.y, x_131.z);
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
  let x_208 : f32 = u_xlat0.w;
  SV_Target0.w = x_208;
  let x_211 : vec4<f32> = u_xlat0;
  let x_212 : vec3<f32> = vec3<f32>(x_211.x, x_211.y, x_211.z);
  let x_213 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_212.x, x_212.y, x_212.z, x_213.w);
  let x_215 : vec4<f32> = u_xlat1;
  let x_219 : vec3<f32> = clamp(vec3<f32>(x_215.x, x_215.y, x_215.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_220 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_219.x, x_219.y, x_219.z, x_220.w);
  let x_223 : vec4<f32> = u_xlat1;
  u_xlat15 = dot(vec3<f32>(x_223.x, x_223.y, x_223.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_230 : f32 = u_xlat15;
  u_xlat15 = sqrt(x_230);
  let x_234 : f32 = x_29.x_Grain_Params1.x;
  let x_235 : f32 = u_xlat15;
  u_xlat15 = ((x_234 * -(x_235)) + 1.0f);
  let x_240 : vec2<f32> = vs_TEXCOORD1;
  let x_244 : vec4<f32> = x_29.x_Grain_Params2;
  let x_248 : vec4<f32> = x_29.x_Grain_Params2;
  let x_250 : vec2<f32> = ((x_240 * vec2<f32>(x_244.x, x_244.y)) + vec2<f32>(x_248.z, x_248.w));
  let x_251 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_250.x, x_250.y, x_251.z, x_251.w);
  let x_258 : vec4<f32> = u_xlat1;
  let x_260 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_258.x, x_258.y));
  let x_261 : vec3<f32> = vec3<f32>(x_260.x, x_260.y, x_260.z);
  let x_262 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_261.x, x_261.y, x_261.z, x_262.w);
  let x_264 : vec4<f32> = u_xlat0;
  let x_266 : vec4<f32> = u_xlat1;
  let x_268 : vec3<f32> = (vec3<f32>(x_264.x, x_264.y, x_264.z) * vec3<f32>(x_266.x, x_266.y, x_266.z));
  let x_269 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_268.x, x_268.y, x_268.z, x_269.w);
  let x_271 : vec4<f32> = u_xlat1;
  let x_275 : f32 = x_29.x_Grain_Params1.y;
  let x_277 : f32 = x_29.x_Grain_Params1.y;
  let x_279 : f32 = x_29.x_Grain_Params1.y;
  let x_281 : vec3<f32> = (vec3<f32>(x_271.x, x_271.y, x_271.z) * vec3<f32>(x_275, x_277, x_279));
  let x_282 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_281.x, x_281.y, x_281.z, x_282.w);
  let x_284 : vec4<f32> = u_xlat1;
  let x_286 : f32 = u_xlat15;
  let x_289 : vec4<f32> = u_xlat0;
  let x_291 : vec3<f32> = ((vec3<f32>(x_284.x, x_284.y, x_284.z) * vec3<f32>(x_286, x_286, x_286)) + vec3<f32>(x_289.x, x_289.y, x_289.z));
  let x_292 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_291.x, x_291.y, x_291.z, x_292.w);
  let x_294 : vec4<f32> = u_xlat0;
  let x_299 : vec3<f32> = max(abs(vec3<f32>(x_294.x, x_294.y, x_294.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_300 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_299.x, x_299.y, x_299.z, x_300.w);
  let x_302 : vec4<f32> = u_xlat1;
  let x_304 : vec3<f32> = log2(vec3<f32>(x_302.x, x_302.y, x_302.z));
  let x_305 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_304.x, x_304.y, x_304.z, x_305.w);
  let x_307 : vec4<f32> = u_xlat1;
  let x_311 : vec3<f32> = (vec3<f32>(x_307.x, x_307.y, x_307.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_312 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_311.x, x_311.y, x_311.z, x_312.w);
  let x_314 : vec4<f32> = u_xlat1;
  let x_316 : vec3<f32> = exp2(vec3<f32>(x_314.x, x_314.y, x_314.z));
  let x_317 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_316.x, x_316.y, x_316.z, x_317.w);
  let x_319 : vec4<f32> = u_xlat1;
  let x_326 : vec3<f32> = ((vec3<f32>(x_319.x, x_319.y, x_319.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_327 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_326.x, x_326.y, x_326.z, x_327.w);
  let x_329 : vec4<f32> = u_xlat0;
  let x_333 : vec3<f32> = (vec3<f32>(x_329.x, x_329.y, x_329.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_334 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
  let x_342 : vec4<f32> = u_xlat0;
  let x_345 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_342.x, x_342.y, x_342.z, x_342.x));
  u_xlatb0 = vec3<bool>(x_345.x, x_345.y, x_345.z);
  let x_349 : bool = u_xlatb0.x;
  if (x_349) {
    let x_355 : f32 = u_xlat2.x;
    x_351 = x_355;
  } else {
    let x_358 : f32 = u_xlat1.x;
    x_351 = x_358;
  }
  let x_359 : f32 = x_351;
  u_xlat0.x = x_359;
  let x_362 : bool = u_xlatb0.y;
  if (x_362) {
    let x_367 : f32 = u_xlat2.y;
    x_363 = x_367;
  } else {
    let x_370 : f32 = u_xlat1.y;
    x_363 = x_370;
  }
  let x_371 : f32 = x_363;
  u_xlat0.y = x_371;
  let x_375 : bool = u_xlatb0.z;
  if (x_375) {
    let x_380 : f32 = u_xlat2.z;
    x_376 = x_380;
  } else {
    let x_383 : f32 = u_xlat1.z;
    x_376 = x_383;
  }
  let x_384 : f32 = x_376;
  u_xlat0.z = x_384;
  let x_386 : vec2<f32> = vs_TEXCOORD0;
  let x_389 : vec4<f32> = x_29.x_Dithering_Coords;
  let x_393 : vec4<f32> = x_29.x_Dithering_Coords;
  let x_395 : vec2<f32> = ((x_386 * vec2<f32>(x_389.x, x_389.y)) + vec2<f32>(x_393.z, x_393.w));
  let x_396 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_395.x, x_395.y, x_396.z, x_396.w);
  let x_403 : vec4<f32> = u_xlat1;
  let x_405 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_403.x, x_403.y));
  u_xlat15 = x_405.w;
  let x_407 : f32 = u_xlat15;
  u_xlat15 = ((x_407 * 2.0f) + -1.0f);
  let x_410 : f32 = u_xlat15;
  u_xlat1.x = (-(abs(x_410)) + 1.0f);
  let x_415 : f32 = u_xlat15;
  u_xlat15 = ((x_415 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_419 : f32 = u_xlat15;
  u_xlat15 = clamp(x_419, 0.0f, 1.0f);
  let x_421 : f32 = u_xlat15;
  u_xlat15 = ((x_421 * 2.0f) + -1.0f);
  let x_425 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_425);
  let x_429 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_429) + 1.0f);
  let x_433 : f32 = u_xlat15;
  let x_435 : f32 = u_xlat1.x;
  u_xlat15 = (x_433 * x_435);
  let x_437 : f32 = u_xlat15;
  let x_442 : vec4<f32> = u_xlat0;
  let x_444 : vec3<f32> = ((vec3<f32>(x_437, x_437, x_437) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_442.x, x_442.y, x_442.z));
  let x_445 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_444.x, x_444.y, x_444.z, x_445.w);
  let x_447 : vec4<f32> = u_xlat0;
  let x_451 : vec3<f32> = (vec3<f32>(x_447.x, x_447.y, x_447.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_452 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_451.x, x_451.y, x_451.z, x_452.w);
  let x_454 : vec4<f32> = u_xlat1;
  let x_458 : vec3<f32> = (vec3<f32>(x_454.x, x_454.y, x_454.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_459 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_458.x, x_458.y, x_458.z, x_459.w);
  let x_461 : vec4<f32> = u_xlat1;
  let x_464 : vec3<f32> = max(abs(vec3<f32>(x_461.x, x_461.y, x_461.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_465 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_464.x, x_464.y, x_464.z, x_465.w);
  let x_467 : vec4<f32> = u_xlat1;
  let x_469 : vec3<f32> = log2(vec3<f32>(x_467.x, x_467.y, x_467.z));
  let x_470 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_469.x, x_469.y, x_469.z, x_470.w);
  let x_472 : vec4<f32> = u_xlat1;
  let x_476 : vec3<f32> = (vec3<f32>(x_472.x, x_472.y, x_472.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_477 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_476.x, x_476.y, x_476.z, x_477.w);
  let x_479 : vec4<f32> = u_xlat1;
  let x_481 : vec3<f32> = exp2(vec3<f32>(x_479.x, x_479.y, x_479.z));
  let x_482 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_481.x, x_481.y, x_481.z, x_482.w);
  let x_484 : vec4<f32> = u_xlat0;
  let x_488 : vec3<f32> = (vec3<f32>(x_484.x, x_484.y, x_484.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_489 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_488.x, x_488.y, x_488.z, x_489.w);
  let x_493 : vec4<f32> = u_xlat0;
  let x_495 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_493.x, x_493.y, x_493.z, x_493.x));
  u_xlatb0 = vec3<bool>(x_495.x, x_495.y, x_495.z);
  let x_498 : bool = u_xlatb0.x;
  if (x_498) {
    let x_503 : f32 = u_xlat2.x;
    x_499 = x_503;
  } else {
    let x_506 : f32 = u_xlat1.x;
    x_499 = x_506;
  }
  let x_507 : f32 = x_499;
  SV_Target0.x = x_507;
  let x_510 : bool = u_xlatb0.y;
  if (x_510) {
    let x_515 : f32 = u_xlat2.y;
    x_511 = x_515;
  } else {
    let x_518 : f32 = u_xlat1.y;
    x_511 = x_518;
  }
  let x_519 : f32 = x_511;
  SV_Target0.y = x_519;
  let x_522 : bool = u_xlatb0.z;
  if (x_522) {
    let x_527 : f32 = u_xlat2.z;
    x_523 = x_527;
  } else {
    let x_530 : f32 = u_xlat1.z;
    x_523 = x_530;
  }
  let x_531 : f32 = x_523;
  SV_Target0.z = x_531;
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

