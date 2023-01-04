struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_Dithering_Coords : vec4<f32>,
  x_ChromaticAberration_Amount : f32,
  @size(12)
  padding_1 : u32,
  x_Lut2D_Params : vec3<f32>,
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

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(4) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(10) var sampler_ChromaticAberration_SpectralLut : sampler;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(3) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_AutoExposureTex : sampler;

var<private> u_xlat15 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(6) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_GrainTex : sampler;

var<private> u_xlatb0 : vec3<bool>;

var<private> u_xlat5 : vec3<f32>;

@group(0) @binding(5) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(11) var sampler_Lut2D : sampler;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_DitheringTex : sampler;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_360 : f32;
  var x_372 : f32;
  var x_385 : f32;
  var x_541 : f32;
  var x_553 : f32;
  var x_565 : f32;
  var x_613 : f32;
  var x_625 : f32;
  var x_637 : f32;
  var x_750 : f32;
  var x_762 : f32;
  var x_774 : f32;
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
  let x_207 : f32 = u_xlat0.w;
  u_xlat15 = x_207;
  let x_208 : f32 = u_xlat15;
  u_xlat15 = clamp(x_208, 0.0f, 1.0f);
  let x_212 : f32 = u_xlat15;
  SV_Target0.w = x_212;
  let x_215 : vec4<f32> = u_xlat0;
  let x_216 : vec3<f32> = vec3<f32>(x_215.x, x_215.y, x_215.z);
  let x_217 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_216.x, x_216.y, x_216.z, x_217.w);
  let x_219 : vec4<f32> = u_xlat1;
  let x_223 : vec3<f32> = clamp(vec3<f32>(x_219.x, x_219.y, x_219.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_224 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_223.x, x_223.y, x_223.z, x_224.w);
  let x_226 : vec4<f32> = u_xlat1;
  u_xlat15 = dot(vec3<f32>(x_226.x, x_226.y, x_226.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_233 : f32 = u_xlat15;
  u_xlat15 = sqrt(x_233);
  let x_237 : f32 = x_30.x_Grain_Params1.x;
  let x_238 : f32 = u_xlat15;
  u_xlat15 = ((x_237 * -(x_238)) + 1.0f);
  let x_243 : vec2<f32> = vs_TEXCOORD1;
  let x_247 : vec4<f32> = x_30.x_Grain_Params2;
  let x_251 : vec4<f32> = x_30.x_Grain_Params2;
  let x_253 : vec2<f32> = ((x_243 * vec2<f32>(x_247.x, x_247.y)) + vec2<f32>(x_251.z, x_251.w));
  let x_254 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_253.x, x_253.y, x_254.z, x_254.w);
  let x_261 : vec4<f32> = u_xlat1;
  let x_263 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_261.x, x_261.y));
  let x_264 : vec3<f32> = vec3<f32>(x_263.x, x_263.y, x_263.z);
  let x_265 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_264.x, x_264.y, x_264.z, x_265.w);
  let x_267 : vec4<f32> = u_xlat0;
  let x_269 : vec4<f32> = u_xlat1;
  let x_271 : vec3<f32> = (vec3<f32>(x_267.x, x_267.y, x_267.z) * vec3<f32>(x_269.x, x_269.y, x_269.z));
  let x_272 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_271.x, x_271.y, x_271.z, x_272.w);
  let x_274 : vec4<f32> = u_xlat1;
  let x_278 : f32 = x_30.x_Grain_Params1.y;
  let x_280 : f32 = x_30.x_Grain_Params1.y;
  let x_282 : f32 = x_30.x_Grain_Params1.y;
  let x_284 : vec3<f32> = (vec3<f32>(x_274.x, x_274.y, x_274.z) * vec3<f32>(x_278, x_280, x_282));
  let x_285 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_284.x, x_284.y, x_284.z, x_285.w);
  let x_287 : vec4<f32> = u_xlat1;
  let x_289 : f32 = u_xlat15;
  let x_292 : vec4<f32> = u_xlat0;
  let x_294 : vec3<f32> = ((vec3<f32>(x_287.x, x_287.y, x_287.z) * vec3<f32>(x_289, x_289, x_289)) + vec3<f32>(x_292.x, x_292.y, x_292.z));
  let x_295 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_294.x, x_294.y, x_294.z, x_295.w);
  let x_297 : vec4<f32> = u_xlat0;
  let x_301 : vec3<f32> = clamp(vec3<f32>(x_297.x, x_297.y, x_297.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_302 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_301.x, x_301.y, x_301.z, x_302.w);
  let x_304 : vec4<f32> = u_xlat0;
  let x_308 : vec3<f32> = max(vec3<f32>(x_304.z, x_304.x, x_304.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_309 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_308.x, x_308.y, x_308.z, x_309.w);
  let x_311 : vec4<f32> = u_xlat1;
  let x_313 : vec3<f32> = log2(vec3<f32>(x_311.x, x_311.y, x_311.z));
  let x_314 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_313.x, x_313.y, x_313.z, x_314.w);
  let x_316 : vec4<f32> = u_xlat1;
  let x_320 : vec3<f32> = (vec3<f32>(x_316.x, x_316.y, x_316.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_321 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_320.x, x_320.y, x_320.z, x_321.w);
  let x_323 : vec4<f32> = u_xlat1;
  let x_325 : vec3<f32> = exp2(vec3<f32>(x_323.x, x_323.y, x_323.z));
  let x_326 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_325.x, x_325.y, x_325.z, x_326.w);
  let x_328 : vec4<f32> = u_xlat1;
  let x_335 : vec3<f32> = ((vec3<f32>(x_328.x, x_328.y, x_328.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_336 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_335.x, x_335.y, x_335.z, x_336.w);
  let x_338 : vec4<f32> = u_xlat0;
  let x_342 : vec3<f32> = (vec3<f32>(x_338.z, x_338.x, x_338.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_343 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_342.x, x_342.y, x_342.z, x_343.w);
  let x_351 : vec4<f32> = u_xlat0;
  let x_354 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_351.z, x_351.x, x_351.y, x_351.z));
  u_xlatb0 = vec3<bool>(x_354.x, x_354.y, x_354.z);
  let x_358 : bool = u_xlatb0.x;
  if (x_358) {
    let x_364 : f32 = u_xlat2.x;
    x_360 = x_364;
  } else {
    let x_367 : f32 = u_xlat1.x;
    x_360 = x_367;
  }
  let x_368 : f32 = x_360;
  u_xlat0.x = x_368;
  let x_371 : bool = u_xlatb0.y;
  if (x_371) {
    let x_376 : f32 = u_xlat2.y;
    x_372 = x_376;
  } else {
    let x_379 : f32 = u_xlat1.y;
    x_372 = x_379;
  }
  let x_380 : f32 = x_372;
  u_xlat0.y = x_380;
  let x_384 : bool = u_xlatb0.z;
  if (x_384) {
    let x_389 : f32 = u_xlat2.z;
    x_385 = x_389;
  } else {
    let x_392 : f32 = u_xlat1.z;
    x_385 = x_392;
  }
  let x_393 : f32 = x_385;
  u_xlat0.z = x_393;
  let x_397 : vec4<f32> = u_xlat0;
  let x_402 : vec3<f32> = x_30.x_Lut2D_Params;
  u_xlat5 = (vec3<f32>(x_397.x, x_397.y, x_397.z) * vec3<f32>(x_402.z, x_402.z, x_402.z));
  let x_406 : f32 = u_xlat5.x;
  u_xlat5.x = floor(x_406);
  let x_410 : f32 = u_xlat0.x;
  let x_412 : f32 = x_30.x_Lut2D_Params.z;
  let x_415 : f32 = u_xlat5.x;
  u_xlat0.x = ((x_410 * x_412) + -(x_415));
  let x_420 : vec3<f32> = x_30.x_Lut2D_Params;
  let x_423 : vec2<f32> = (vec2<f32>(x_420.x, x_420.y) * vec2<f32>(0.5f, 0.5f));
  let x_424 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_423.x, x_423.y, x_424.z, x_424.w);
  let x_426 : vec3<f32> = u_xlat5;
  let x_429 : vec3<f32> = x_30.x_Lut2D_Params;
  let x_432 : vec4<f32> = u_xlat1;
  let x_434 : vec2<f32> = ((vec2<f32>(x_426.y, x_426.z) * vec2<f32>(x_429.x, x_429.y)) + vec2<f32>(x_432.x, x_432.y));
  let x_435 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_435.x, x_434.x, x_434.y, x_435.w);
  let x_438 : f32 = u_xlat5.x;
  let x_440 : f32 = x_30.x_Lut2D_Params.y;
  let x_443 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_438 * x_440) + x_443);
  let x_447 : f32 = x_30.x_Lut2D_Params.y;
  u_xlat2.x = x_447;
  u_xlat2.y = 0.0f;
  let x_450 : vec4<f32> = u_xlat1;
  let x_452 : vec4<f32> = u_xlat2;
  let x_454 : vec2<f32> = (vec2<f32>(x_450.x, x_450.z) + vec2<f32>(x_452.x, x_452.y));
  let x_455 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_454.x, x_454.y, x_455.z);
  let x_462 : vec4<f32> = u_xlat1;
  let x_464 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_462.x, x_462.z));
  let x_465 : vec3<f32> = vec3<f32>(x_464.x, x_464.y, x_464.z);
  let x_466 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_465.x, x_465.y, x_465.z, x_466.w);
  let x_471 : vec3<f32> = u_xlat5;
  let x_473 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_471.x, x_471.y));
  u_xlat5 = vec3<f32>(x_473.x, x_473.y, x_473.z);
  let x_475 : vec4<f32> = u_xlat1;
  let x_478 : vec3<f32> = u_xlat5;
  u_xlat5 = (-(vec3<f32>(x_475.x, x_475.y, x_475.z)) + x_478);
  let x_480 : vec4<f32> = u_xlat0;
  let x_482 : vec3<f32> = u_xlat5;
  let x_484 : vec4<f32> = u_xlat1;
  let x_486 : vec3<f32> = ((vec3<f32>(x_480.x, x_480.x, x_480.x) * x_482) + vec3<f32>(x_484.x, x_484.y, x_484.z));
  let x_487 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_486.x, x_486.y, x_486.z, x_487.w);
  let x_489 : vec4<f32> = u_xlat0;
  let x_493 : vec3<f32> = (vec3<f32>(x_489.x, x_489.y, x_489.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_494 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_493.x, x_493.y, x_493.z, x_494.w);
  let x_496 : vec4<f32> = u_xlat1;
  let x_500 : vec3<f32> = (vec3<f32>(x_496.x, x_496.y, x_496.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_501 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_500.x, x_500.y, x_500.z, x_501.w);
  let x_503 : vec4<f32> = u_xlat1;
  let x_506 : vec3<f32> = max(abs(vec3<f32>(x_503.x, x_503.y, x_503.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_507 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_506.x, x_506.y, x_506.z, x_507.w);
  let x_509 : vec4<f32> = u_xlat1;
  let x_511 : vec3<f32> = log2(vec3<f32>(x_509.x, x_509.y, x_509.z));
  let x_512 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_511.x, x_511.y, x_511.z, x_512.w);
  let x_514 : vec4<f32> = u_xlat1;
  let x_518 : vec3<f32> = (vec3<f32>(x_514.x, x_514.y, x_514.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_519 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_518.x, x_518.y, x_518.z, x_519.w);
  let x_521 : vec4<f32> = u_xlat1;
  let x_523 : vec3<f32> = exp2(vec3<f32>(x_521.x, x_521.y, x_521.z));
  let x_524 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_523.x, x_523.y, x_523.z, x_524.w);
  let x_526 : vec4<f32> = u_xlat0;
  let x_530 : vec3<f32> = (vec3<f32>(x_526.x, x_526.y, x_526.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_531 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_530.x, x_530.y, x_530.z, x_531.w);
  let x_535 : vec4<f32> = u_xlat0;
  let x_537 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_535.x, x_535.y, x_535.z, x_535.x));
  u_xlatb0 = vec3<bool>(x_537.x, x_537.y, x_537.z);
  let x_540 : bool = u_xlatb0.x;
  if (x_540) {
    let x_545 : f32 = u_xlat2.x;
    x_541 = x_545;
  } else {
    let x_548 : f32 = u_xlat1.x;
    x_541 = x_548;
  }
  let x_549 : f32 = x_541;
  u_xlat0.x = x_549;
  let x_552 : bool = u_xlatb0.y;
  if (x_552) {
    let x_557 : f32 = u_xlat2.y;
    x_553 = x_557;
  } else {
    let x_560 : f32 = u_xlat1.y;
    x_553 = x_560;
  }
  let x_561 : f32 = x_553;
  u_xlat0.y = x_561;
  let x_564 : bool = u_xlatb0.z;
  if (x_564) {
    let x_569 : f32 = u_xlat2.z;
    x_565 = x_569;
  } else {
    let x_572 : f32 = u_xlat1.z;
    x_565 = x_572;
  }
  let x_573 : f32 = x_565;
  u_xlat0.z = x_573;
  let x_575 : vec4<f32> = u_xlat0;
  let x_578 : vec3<f32> = max(abs(vec3<f32>(x_575.x, x_575.y, x_575.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_579 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_578.x, x_578.y, x_578.z, x_579.w);
  let x_581 : vec4<f32> = u_xlat1;
  let x_583 : vec3<f32> = log2(vec3<f32>(x_581.x, x_581.y, x_581.z));
  let x_584 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_583.x, x_583.y, x_583.z, x_584.w);
  let x_586 : vec4<f32> = u_xlat1;
  let x_588 : vec3<f32> = (vec3<f32>(x_586.x, x_586.y, x_586.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_589 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_588.x, x_588.y, x_588.z, x_589.w);
  let x_591 : vec4<f32> = u_xlat1;
  let x_593 : vec3<f32> = exp2(vec3<f32>(x_591.x, x_591.y, x_591.z));
  let x_594 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_593.x, x_593.y, x_593.z, x_594.w);
  let x_596 : vec4<f32> = u_xlat1;
  let x_599 : vec3<f32> = ((vec3<f32>(x_596.x, x_596.y, x_596.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_600 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_599.x, x_599.y, x_599.z, x_600.w);
  let x_602 : vec4<f32> = u_xlat0;
  let x_604 : vec3<f32> = (vec3<f32>(x_602.x, x_602.y, x_602.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_605 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_604.x, x_604.y, x_604.z, x_605.w);
  let x_607 : vec4<f32> = u_xlat0;
  let x_609 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_607.x, x_607.y, x_607.z, x_607.x));
  u_xlatb0 = vec3<bool>(x_609.x, x_609.y, x_609.z);
  let x_612 : bool = u_xlatb0.x;
  if (x_612) {
    let x_617 : f32 = u_xlat2.x;
    x_613 = x_617;
  } else {
    let x_620 : f32 = u_xlat1.x;
    x_613 = x_620;
  }
  let x_621 : f32 = x_613;
  u_xlat0.x = x_621;
  let x_624 : bool = u_xlatb0.y;
  if (x_624) {
    let x_629 : f32 = u_xlat2.y;
    x_625 = x_629;
  } else {
    let x_632 : f32 = u_xlat1.y;
    x_625 = x_632;
  }
  let x_633 : f32 = x_625;
  u_xlat0.y = x_633;
  let x_636 : bool = u_xlatb0.z;
  if (x_636) {
    let x_641 : f32 = u_xlat2.z;
    x_637 = x_641;
  } else {
    let x_644 : f32 = u_xlat1.z;
    x_637 = x_644;
  }
  let x_645 : f32 = x_637;
  u_xlat0.z = x_645;
  let x_647 : vec2<f32> = vs_TEXCOORD0;
  let x_650 : vec4<f32> = x_30.x_Dithering_Coords;
  let x_654 : vec4<f32> = x_30.x_Dithering_Coords;
  let x_656 : vec2<f32> = ((x_647 * vec2<f32>(x_650.x, x_650.y)) + vec2<f32>(x_654.z, x_654.w));
  let x_657 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_656.x, x_656.y, x_657.z, x_657.w);
  let x_664 : vec4<f32> = u_xlat1;
  let x_666 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_664.x, x_664.y));
  u_xlat15 = x_666.w;
  let x_668 : f32 = u_xlat15;
  u_xlat15 = ((x_668 * 2.0f) + -1.0f);
  let x_671 : f32 = u_xlat15;
  u_xlat1.x = (-(abs(x_671)) + 1.0f);
  let x_676 : f32 = u_xlat15;
  u_xlat15 = ((x_676 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_680 : f32 = u_xlat15;
  u_xlat15 = clamp(x_680, 0.0f, 1.0f);
  let x_682 : f32 = u_xlat15;
  u_xlat15 = ((x_682 * 2.0f) + -1.0f);
  let x_686 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_686);
  let x_690 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_690) + 1.0f);
  let x_694 : f32 = u_xlat15;
  let x_696 : f32 = u_xlat1.x;
  u_xlat15 = (x_694 * x_696);
  let x_698 : f32 = u_xlat15;
  let x_703 : vec4<f32> = u_xlat0;
  let x_705 : vec3<f32> = ((vec3<f32>(x_698, x_698, x_698) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_703.x, x_703.y, x_703.z));
  let x_706 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_705.x, x_705.y, x_705.z, x_706.w);
  let x_708 : vec4<f32> = u_xlat0;
  let x_710 : vec3<f32> = (vec3<f32>(x_708.x, x_708.y, x_708.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_711 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_710.x, x_710.y, x_710.z, x_711.w);
  let x_713 : vec4<f32> = u_xlat1;
  let x_715 : vec3<f32> = (vec3<f32>(x_713.x, x_713.y, x_713.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_716 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_715.x, x_715.y, x_715.z, x_716.w);
  let x_718 : vec4<f32> = u_xlat1;
  let x_721 : vec3<f32> = max(abs(vec3<f32>(x_718.x, x_718.y, x_718.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_722 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_721.x, x_721.y, x_721.z, x_722.w);
  let x_724 : vec4<f32> = u_xlat1;
  let x_726 : vec3<f32> = log2(vec3<f32>(x_724.x, x_724.y, x_724.z));
  let x_727 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_726.x, x_726.y, x_726.z, x_727.w);
  let x_729 : vec4<f32> = u_xlat1;
  let x_731 : vec3<f32> = (vec3<f32>(x_729.x, x_729.y, x_729.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_732 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_731.x, x_731.y, x_731.z, x_732.w);
  let x_734 : vec4<f32> = u_xlat1;
  let x_736 : vec3<f32> = exp2(vec3<f32>(x_734.x, x_734.y, x_734.z));
  let x_737 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_736.x, x_736.y, x_736.z, x_737.w);
  let x_739 : vec4<f32> = u_xlat0;
  let x_741 : vec3<f32> = (vec3<f32>(x_739.x, x_739.y, x_739.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_742 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_741.x, x_741.y, x_741.z, x_742.w);
  let x_744 : vec4<f32> = u_xlat0;
  let x_746 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_744.x, x_744.y, x_744.z, x_744.x));
  u_xlatb0 = vec3<bool>(x_746.x, x_746.y, x_746.z);
  let x_749 : bool = u_xlatb0.x;
  if (x_749) {
    let x_754 : f32 = u_xlat2.x;
    x_750 = x_754;
  } else {
    let x_757 : f32 = u_xlat1.x;
    x_750 = x_757;
  }
  let x_758 : f32 = x_750;
  SV_Target0.x = x_758;
  let x_761 : bool = u_xlatb0.y;
  if (x_761) {
    let x_766 : f32 = u_xlat2.y;
    x_762 = x_766;
  } else {
    let x_769 : f32 = u_xlat1.y;
    x_762 = x_769;
  }
  let x_770 : f32 = x_762;
  SV_Target0.y = x_770;
  let x_773 : bool = u_xlatb0.z;
  if (x_773) {
    let x_778 : f32 = u_xlat2.z;
    x_774 = x_778;
  } else {
    let x_781 : f32 = u_xlat1.z;
    x_774 = x_781;
  }
  let x_782 : f32 = x_774;
  SV_Target0.z = x_782;
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

