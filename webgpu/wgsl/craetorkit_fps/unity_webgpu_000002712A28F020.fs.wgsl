struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_Dithering_Coords : vec4<f32>,
  x_ChromaticAberration_Amount : f32,
  @size(12)
  padding_1 : u32,
  x_Lut2D_Params : vec3<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_30 : PGlobals;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

@group(0) @binding(3) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(8) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_AutoExposureTex : sampler;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(4) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(9) var sampler_Lut2D : sampler;

@group(0) @binding(0) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_DitheringTex : sampler;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat15 : f32;
  var u_xlatb0 : vec3<bool>;
  var x_277 : f32;
  var x_290 : f32;
  var x_303 : f32;
  var u_xlat5 : vec3<f32>;
  var x_459 : f32;
  var x_471 : f32;
  var x_483 : f32;
  var x_531 : f32;
  var x_543 : f32;
  var x_555 : f32;
  var x_669 : f32;
  var x_681 : f32;
  var x_693 : f32;
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
  let x_205 : vec4<f32> = u_xlat0;
  let x_209 : vec3<f32> = clamp(vec3<f32>(x_205.x, x_205.y, x_205.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_210 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_209.x, x_209.y, x_209.z, x_210.w);
  let x_214 : f32 = u_xlat0.w;
  u_xlat15 = x_214;
  let x_215 : f32 = u_xlat15;
  u_xlat15 = clamp(x_215, 0.0f, 1.0f);
  let x_219 : f32 = u_xlat15;
  SV_Target0.w = x_219;
  let x_222 : vec4<f32> = u_xlat0;
  let x_226 : vec3<f32> = max(vec3<f32>(x_222.z, x_222.x, x_222.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_227 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_226.x, x_226.y, x_226.z, x_227.w);
  let x_229 : vec4<f32> = u_xlat1;
  let x_231 : vec3<f32> = log2(vec3<f32>(x_229.x, x_229.y, x_229.z));
  let x_232 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_231.x, x_231.y, x_231.z, x_232.w);
  let x_234 : vec4<f32> = u_xlat1;
  let x_238 : vec3<f32> = (vec3<f32>(x_234.x, x_234.y, x_234.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_239 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_238.x, x_238.y, x_238.z, x_239.w);
  let x_241 : vec4<f32> = u_xlat1;
  let x_243 : vec3<f32> = exp2(vec3<f32>(x_241.x, x_241.y, x_241.z));
  let x_244 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_243.x, x_243.y, x_243.z, x_244.w);
  let x_246 : vec4<f32> = u_xlat1;
  let x_253 : vec3<f32> = ((vec3<f32>(x_246.x, x_246.y, x_246.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_254 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_253.x, x_253.y, x_253.z, x_254.w);
  let x_256 : vec4<f32> = u_xlat0;
  let x_260 : vec3<f32> = (vec3<f32>(x_256.z, x_256.x, x_256.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_261 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_260.x, x_260.y, x_260.z, x_261.w);
  let x_269 : vec4<f32> = u_xlat0;
  let x_272 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_269.z, x_269.x, x_269.y, x_269.z));
  u_xlatb0 = vec3<bool>(x_272.x, x_272.y, x_272.z);
  let x_276 : bool = u_xlatb0.x;
  if (x_276) {
    let x_281 : f32 = u_xlat2.x;
    x_277 = x_281;
  } else {
    let x_284 : f32 = u_xlat1.x;
    x_277 = x_284;
  }
  let x_285 : f32 = x_277;
  u_xlat0.x = x_285;
  let x_289 : bool = u_xlatb0.y;
  if (x_289) {
    let x_294 : f32 = u_xlat2.y;
    x_290 = x_294;
  } else {
    let x_297 : f32 = u_xlat1.y;
    x_290 = x_297;
  }
  let x_298 : f32 = x_290;
  u_xlat0.y = x_298;
  let x_302 : bool = u_xlatb0.z;
  if (x_302) {
    let x_307 : f32 = u_xlat2.z;
    x_303 = x_307;
  } else {
    let x_310 : f32 = u_xlat1.z;
    x_303 = x_310;
  }
  let x_311 : f32 = x_303;
  u_xlat0.z = x_311;
  let x_315 : vec4<f32> = u_xlat0;
  let x_320 : vec3<f32> = x_30.x_Lut2D_Params;
  u_xlat5 = (vec3<f32>(x_315.x, x_315.y, x_315.z) * vec3<f32>(x_320.z, x_320.z, x_320.z));
  let x_324 : f32 = u_xlat5.x;
  u_xlat5.x = floor(x_324);
  let x_328 : f32 = u_xlat0.x;
  let x_330 : f32 = x_30.x_Lut2D_Params.z;
  let x_333 : f32 = u_xlat5.x;
  u_xlat0.x = ((x_328 * x_330) + -(x_333));
  let x_338 : vec3<f32> = x_30.x_Lut2D_Params;
  let x_341 : vec2<f32> = (vec2<f32>(x_338.x, x_338.y) * vec2<f32>(0.5f, 0.5f));
  let x_342 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_341.x, x_341.y, x_342.z, x_342.w);
  let x_344 : vec3<f32> = u_xlat5;
  let x_347 : vec3<f32> = x_30.x_Lut2D_Params;
  let x_350 : vec4<f32> = u_xlat1;
  let x_352 : vec2<f32> = ((vec2<f32>(x_344.y, x_344.z) * vec2<f32>(x_347.x, x_347.y)) + vec2<f32>(x_350.x, x_350.y));
  let x_353 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_353.x, x_352.x, x_352.y, x_353.w);
  let x_356 : f32 = u_xlat5.x;
  let x_358 : f32 = x_30.x_Lut2D_Params.y;
  let x_361 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_356 * x_358) + x_361);
  let x_365 : f32 = x_30.x_Lut2D_Params.y;
  u_xlat2.x = x_365;
  u_xlat2.y = 0.0f;
  let x_368 : vec4<f32> = u_xlat1;
  let x_370 : vec4<f32> = u_xlat2;
  let x_372 : vec2<f32> = (vec2<f32>(x_368.x, x_368.z) + vec2<f32>(x_370.x, x_370.y));
  let x_373 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_372.x, x_372.y, x_373.z);
  let x_380 : vec4<f32> = u_xlat1;
  let x_382 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_380.x, x_380.z));
  let x_383 : vec3<f32> = vec3<f32>(x_382.x, x_382.y, x_382.z);
  let x_384 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_383.x, x_383.y, x_383.z, x_384.w);
  let x_389 : vec3<f32> = u_xlat5;
  let x_391 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_389.x, x_389.y));
  u_xlat5 = vec3<f32>(x_391.x, x_391.y, x_391.z);
  let x_393 : vec4<f32> = u_xlat1;
  let x_396 : vec3<f32> = u_xlat5;
  u_xlat5 = (-(vec3<f32>(x_393.x, x_393.y, x_393.z)) + x_396);
  let x_398 : vec4<f32> = u_xlat0;
  let x_400 : vec3<f32> = u_xlat5;
  let x_402 : vec4<f32> = u_xlat1;
  let x_404 : vec3<f32> = ((vec3<f32>(x_398.x, x_398.x, x_398.x) * x_400) + vec3<f32>(x_402.x, x_402.y, x_402.z));
  let x_405 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_404.x, x_404.y, x_404.z, x_405.w);
  let x_407 : vec4<f32> = u_xlat0;
  let x_411 : vec3<f32> = (vec3<f32>(x_407.x, x_407.y, x_407.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_412 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_411.x, x_411.y, x_411.z, x_412.w);
  let x_414 : vec4<f32> = u_xlat1;
  let x_418 : vec3<f32> = (vec3<f32>(x_414.x, x_414.y, x_414.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_419 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_418.x, x_418.y, x_418.z, x_419.w);
  let x_421 : vec4<f32> = u_xlat1;
  let x_424 : vec3<f32> = max(abs(vec3<f32>(x_421.x, x_421.y, x_421.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_425 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_424.x, x_424.y, x_424.z, x_425.w);
  let x_427 : vec4<f32> = u_xlat1;
  let x_429 : vec3<f32> = log2(vec3<f32>(x_427.x, x_427.y, x_427.z));
  let x_430 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_429.x, x_429.y, x_429.z, x_430.w);
  let x_432 : vec4<f32> = u_xlat1;
  let x_436 : vec3<f32> = (vec3<f32>(x_432.x, x_432.y, x_432.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_437 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_436.x, x_436.y, x_436.z, x_437.w);
  let x_439 : vec4<f32> = u_xlat1;
  let x_441 : vec3<f32> = exp2(vec3<f32>(x_439.x, x_439.y, x_439.z));
  let x_442 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_441.x, x_441.y, x_441.z, x_442.w);
  let x_444 : vec4<f32> = u_xlat0;
  let x_448 : vec3<f32> = (vec3<f32>(x_444.x, x_444.y, x_444.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_449 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_448.x, x_448.y, x_448.z, x_449.w);
  let x_453 : vec4<f32> = u_xlat0;
  let x_455 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_453.x, x_453.y, x_453.z, x_453.x));
  u_xlatb0 = vec3<bool>(x_455.x, x_455.y, x_455.z);
  let x_458 : bool = u_xlatb0.x;
  if (x_458) {
    let x_463 : f32 = u_xlat2.x;
    x_459 = x_463;
  } else {
    let x_466 : f32 = u_xlat1.x;
    x_459 = x_466;
  }
  let x_467 : f32 = x_459;
  u_xlat0.x = x_467;
  let x_470 : bool = u_xlatb0.y;
  if (x_470) {
    let x_475 : f32 = u_xlat2.y;
    x_471 = x_475;
  } else {
    let x_478 : f32 = u_xlat1.y;
    x_471 = x_478;
  }
  let x_479 : f32 = x_471;
  u_xlat0.y = x_479;
  let x_482 : bool = u_xlatb0.z;
  if (x_482) {
    let x_487 : f32 = u_xlat2.z;
    x_483 = x_487;
  } else {
    let x_490 : f32 = u_xlat1.z;
    x_483 = x_490;
  }
  let x_491 : f32 = x_483;
  u_xlat0.z = x_491;
  let x_493 : vec4<f32> = u_xlat0;
  let x_496 : vec3<f32> = max(abs(vec3<f32>(x_493.x, x_493.y, x_493.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_497 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_496.x, x_496.y, x_496.z, x_497.w);
  let x_499 : vec4<f32> = u_xlat1;
  let x_501 : vec3<f32> = log2(vec3<f32>(x_499.x, x_499.y, x_499.z));
  let x_502 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_501.x, x_501.y, x_501.z, x_502.w);
  let x_504 : vec4<f32> = u_xlat1;
  let x_506 : vec3<f32> = (vec3<f32>(x_504.x, x_504.y, x_504.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_507 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_506.x, x_506.y, x_506.z, x_507.w);
  let x_509 : vec4<f32> = u_xlat1;
  let x_511 : vec3<f32> = exp2(vec3<f32>(x_509.x, x_509.y, x_509.z));
  let x_512 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_511.x, x_511.y, x_511.z, x_512.w);
  let x_514 : vec4<f32> = u_xlat1;
  let x_517 : vec3<f32> = ((vec3<f32>(x_514.x, x_514.y, x_514.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_518 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_517.x, x_517.y, x_517.z, x_518.w);
  let x_520 : vec4<f32> = u_xlat0;
  let x_522 : vec3<f32> = (vec3<f32>(x_520.x, x_520.y, x_520.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_523 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_522.x, x_522.y, x_522.z, x_523.w);
  let x_525 : vec4<f32> = u_xlat0;
  let x_527 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_525.x, x_525.y, x_525.z, x_525.x));
  u_xlatb0 = vec3<bool>(x_527.x, x_527.y, x_527.z);
  let x_530 : bool = u_xlatb0.x;
  if (x_530) {
    let x_535 : f32 = u_xlat2.x;
    x_531 = x_535;
  } else {
    let x_538 : f32 = u_xlat1.x;
    x_531 = x_538;
  }
  let x_539 : f32 = x_531;
  u_xlat0.x = x_539;
  let x_542 : bool = u_xlatb0.y;
  if (x_542) {
    let x_547 : f32 = u_xlat2.y;
    x_543 = x_547;
  } else {
    let x_550 : f32 = u_xlat1.y;
    x_543 = x_550;
  }
  let x_551 : f32 = x_543;
  u_xlat0.y = x_551;
  let x_554 : bool = u_xlatb0.z;
  if (x_554) {
    let x_559 : f32 = u_xlat2.z;
    x_555 = x_559;
  } else {
    let x_562 : f32 = u_xlat1.z;
    x_555 = x_562;
  }
  let x_563 : f32 = x_555;
  u_xlat0.z = x_563;
  let x_565 : vec2<f32> = vs_TEXCOORD0;
  let x_569 : vec4<f32> = x_30.x_Dithering_Coords;
  let x_573 : vec4<f32> = x_30.x_Dithering_Coords;
  let x_575 : vec2<f32> = ((x_565 * vec2<f32>(x_569.x, x_569.y)) + vec2<f32>(x_573.z, x_573.w));
  let x_576 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_575.x, x_575.y, x_576.z, x_576.w);
  let x_583 : vec4<f32> = u_xlat1;
  let x_585 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_583.x, x_583.y));
  u_xlat15 = x_585.w;
  let x_587 : f32 = u_xlat15;
  u_xlat15 = ((x_587 * 2.0f) + -1.0f);
  let x_590 : f32 = u_xlat15;
  u_xlat1.x = (-(abs(x_590)) + 1.0f);
  let x_595 : f32 = u_xlat15;
  u_xlat15 = ((x_595 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_599 : f32 = u_xlat15;
  u_xlat15 = clamp(x_599, 0.0f, 1.0f);
  let x_601 : f32 = u_xlat15;
  u_xlat15 = ((x_601 * 2.0f) + -1.0f);
  let x_605 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_605);
  let x_609 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_609) + 1.0f);
  let x_613 : f32 = u_xlat15;
  let x_615 : f32 = u_xlat1.x;
  u_xlat15 = (x_613 * x_615);
  let x_617 : f32 = u_xlat15;
  let x_622 : vec4<f32> = u_xlat0;
  let x_624 : vec3<f32> = ((vec3<f32>(x_617, x_617, x_617) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_622.x, x_622.y, x_622.z));
  let x_625 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_624.x, x_624.y, x_624.z, x_625.w);
  let x_627 : vec4<f32> = u_xlat0;
  let x_629 : vec3<f32> = (vec3<f32>(x_627.x, x_627.y, x_627.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_630 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_629.x, x_629.y, x_629.z, x_630.w);
  let x_632 : vec4<f32> = u_xlat1;
  let x_634 : vec3<f32> = (vec3<f32>(x_632.x, x_632.y, x_632.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_635 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_634.x, x_634.y, x_634.z, x_635.w);
  let x_637 : vec4<f32> = u_xlat1;
  let x_640 : vec3<f32> = max(abs(vec3<f32>(x_637.x, x_637.y, x_637.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_641 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_640.x, x_640.y, x_640.z, x_641.w);
  let x_643 : vec4<f32> = u_xlat1;
  let x_645 : vec3<f32> = log2(vec3<f32>(x_643.x, x_643.y, x_643.z));
  let x_646 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_645.x, x_645.y, x_645.z, x_646.w);
  let x_648 : vec4<f32> = u_xlat1;
  let x_650 : vec3<f32> = (vec3<f32>(x_648.x, x_648.y, x_648.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_651 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_650.x, x_650.y, x_650.z, x_651.w);
  let x_653 : vec4<f32> = u_xlat1;
  let x_655 : vec3<f32> = exp2(vec3<f32>(x_653.x, x_653.y, x_653.z));
  let x_656 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_655.x, x_655.y, x_655.z, x_656.w);
  let x_658 : vec4<f32> = u_xlat0;
  let x_660 : vec3<f32> = (vec3<f32>(x_658.x, x_658.y, x_658.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_661 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_660.x, x_660.y, x_660.z, x_661.w);
  let x_663 : vec4<f32> = u_xlat0;
  let x_665 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_663.x, x_663.y, x_663.z, x_663.x));
  u_xlatb0 = vec3<bool>(x_665.x, x_665.y, x_665.z);
  let x_668 : bool = u_xlatb0.x;
  if (x_668) {
    let x_673 : f32 = u_xlat2.x;
    x_669 = x_673;
  } else {
    let x_676 : f32 = u_xlat1.x;
    x_669 = x_676;
  }
  let x_677 : f32 = x_669;
  SV_Target0.x = x_677;
  let x_680 : bool = u_xlatb0.y;
  if (x_680) {
    let x_685 : f32 = u_xlat2.y;
    x_681 = x_685;
  } else {
    let x_688 : f32 = u_xlat1.y;
    x_681 = x_688;
  }
  let x_689 : f32 = x_681;
  SV_Target0.y = x_689;
  let x_692 : bool = u_xlatb0.z;
  if (x_692) {
    let x_697 : f32 = u_xlat2.z;
    x_693 = x_697;
  } else {
    let x_700 : f32 = u_xlat1.z;
    x_693 = x_700;
  }
  let x_701 : f32 = x_693;
  SV_Target0.z = x_701;
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

