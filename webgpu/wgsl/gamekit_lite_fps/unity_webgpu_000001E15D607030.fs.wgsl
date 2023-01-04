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

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var<uniform> x_30 : PGlobals;

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

var<private> u_xlat15 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb0 : vec3<bool>;

var<private> u_xlat5 : vec3<f32>;

@group(0) @binding(5) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(10) var sampler_Lut2D : sampler;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_DitheringTex : sampler;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_278 : f32;
  var x_291 : f32;
  var x_304 : f32;
  var x_460 : f32;
  var x_472 : f32;
  var x_484 : f32;
  var x_532 : f32;
  var x_544 : f32;
  var x_556 : f32;
  var x_670 : f32;
  var x_682 : f32;
  var x_694 : f32;
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
    let x_282 : f32 = u_xlat2.x;
    x_278 = x_282;
  } else {
    let x_285 : f32 = u_xlat1.x;
    x_278 = x_285;
  }
  let x_286 : f32 = x_278;
  u_xlat0.x = x_286;
  let x_290 : bool = u_xlatb0.y;
  if (x_290) {
    let x_295 : f32 = u_xlat2.y;
    x_291 = x_295;
  } else {
    let x_298 : f32 = u_xlat1.y;
    x_291 = x_298;
  }
  let x_299 : f32 = x_291;
  u_xlat0.y = x_299;
  let x_303 : bool = u_xlatb0.z;
  if (x_303) {
    let x_308 : f32 = u_xlat2.z;
    x_304 = x_308;
  } else {
    let x_311 : f32 = u_xlat1.z;
    x_304 = x_311;
  }
  let x_312 : f32 = x_304;
  u_xlat0.z = x_312;
  let x_316 : vec4<f32> = u_xlat0;
  let x_321 : vec3<f32> = x_30.x_Lut2D_Params;
  u_xlat5 = (vec3<f32>(x_316.x, x_316.y, x_316.z) * vec3<f32>(x_321.z, x_321.z, x_321.z));
  let x_325 : f32 = u_xlat5.x;
  u_xlat5.x = floor(x_325);
  let x_329 : f32 = u_xlat0.x;
  let x_331 : f32 = x_30.x_Lut2D_Params.z;
  let x_334 : f32 = u_xlat5.x;
  u_xlat0.x = ((x_329 * x_331) + -(x_334));
  let x_339 : vec3<f32> = x_30.x_Lut2D_Params;
  let x_342 : vec2<f32> = (vec2<f32>(x_339.x, x_339.y) * vec2<f32>(0.5f, 0.5f));
  let x_343 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_342.x, x_342.y, x_343.z, x_343.w);
  let x_345 : vec3<f32> = u_xlat5;
  let x_348 : vec3<f32> = x_30.x_Lut2D_Params;
  let x_351 : vec4<f32> = u_xlat1;
  let x_353 : vec2<f32> = ((vec2<f32>(x_345.y, x_345.z) * vec2<f32>(x_348.x, x_348.y)) + vec2<f32>(x_351.x, x_351.y));
  let x_354 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_354.x, x_353.x, x_353.y, x_354.w);
  let x_357 : f32 = u_xlat5.x;
  let x_359 : f32 = x_30.x_Lut2D_Params.y;
  let x_362 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_357 * x_359) + x_362);
  let x_366 : f32 = x_30.x_Lut2D_Params.y;
  u_xlat2.x = x_366;
  u_xlat2.y = 0.0f;
  let x_369 : vec4<f32> = u_xlat1;
  let x_371 : vec4<f32> = u_xlat2;
  let x_373 : vec2<f32> = (vec2<f32>(x_369.x, x_369.z) + vec2<f32>(x_371.x, x_371.y));
  let x_374 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_373.x, x_373.y, x_374.z);
  let x_381 : vec4<f32> = u_xlat1;
  let x_383 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_381.x, x_381.z));
  let x_384 : vec3<f32> = vec3<f32>(x_383.x, x_383.y, x_383.z);
  let x_385 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_384.x, x_384.y, x_384.z, x_385.w);
  let x_390 : vec3<f32> = u_xlat5;
  let x_392 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_390.x, x_390.y));
  u_xlat5 = vec3<f32>(x_392.x, x_392.y, x_392.z);
  let x_394 : vec4<f32> = u_xlat1;
  let x_397 : vec3<f32> = u_xlat5;
  u_xlat5 = (-(vec3<f32>(x_394.x, x_394.y, x_394.z)) + x_397);
  let x_399 : vec4<f32> = u_xlat0;
  let x_401 : vec3<f32> = u_xlat5;
  let x_403 : vec4<f32> = u_xlat1;
  let x_405 : vec3<f32> = ((vec3<f32>(x_399.x, x_399.x, x_399.x) * x_401) + vec3<f32>(x_403.x, x_403.y, x_403.z));
  let x_406 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_405.x, x_405.y, x_405.z, x_406.w);
  let x_408 : vec4<f32> = u_xlat0;
  let x_412 : vec3<f32> = (vec3<f32>(x_408.x, x_408.y, x_408.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_413 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_412.x, x_412.y, x_412.z, x_413.w);
  let x_415 : vec4<f32> = u_xlat1;
  let x_419 : vec3<f32> = (vec3<f32>(x_415.x, x_415.y, x_415.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_420 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_419.x, x_419.y, x_419.z, x_420.w);
  let x_422 : vec4<f32> = u_xlat1;
  let x_425 : vec3<f32> = max(abs(vec3<f32>(x_422.x, x_422.y, x_422.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_426 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_425.x, x_425.y, x_425.z, x_426.w);
  let x_428 : vec4<f32> = u_xlat1;
  let x_430 : vec3<f32> = log2(vec3<f32>(x_428.x, x_428.y, x_428.z));
  let x_431 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_430.x, x_430.y, x_430.z, x_431.w);
  let x_433 : vec4<f32> = u_xlat1;
  let x_437 : vec3<f32> = (vec3<f32>(x_433.x, x_433.y, x_433.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_438 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_437.x, x_437.y, x_437.z, x_438.w);
  let x_440 : vec4<f32> = u_xlat1;
  let x_442 : vec3<f32> = exp2(vec3<f32>(x_440.x, x_440.y, x_440.z));
  let x_443 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_442.x, x_442.y, x_442.z, x_443.w);
  let x_445 : vec4<f32> = u_xlat0;
  let x_449 : vec3<f32> = (vec3<f32>(x_445.x, x_445.y, x_445.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_450 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_449.x, x_449.y, x_449.z, x_450.w);
  let x_454 : vec4<f32> = u_xlat0;
  let x_456 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_454.x, x_454.y, x_454.z, x_454.x));
  u_xlatb0 = vec3<bool>(x_456.x, x_456.y, x_456.z);
  let x_459 : bool = u_xlatb0.x;
  if (x_459) {
    let x_464 : f32 = u_xlat2.x;
    x_460 = x_464;
  } else {
    let x_467 : f32 = u_xlat1.x;
    x_460 = x_467;
  }
  let x_468 : f32 = x_460;
  u_xlat0.x = x_468;
  let x_471 : bool = u_xlatb0.y;
  if (x_471) {
    let x_476 : f32 = u_xlat2.y;
    x_472 = x_476;
  } else {
    let x_479 : f32 = u_xlat1.y;
    x_472 = x_479;
  }
  let x_480 : f32 = x_472;
  u_xlat0.y = x_480;
  let x_483 : bool = u_xlatb0.z;
  if (x_483) {
    let x_488 : f32 = u_xlat2.z;
    x_484 = x_488;
  } else {
    let x_491 : f32 = u_xlat1.z;
    x_484 = x_491;
  }
  let x_492 : f32 = x_484;
  u_xlat0.z = x_492;
  let x_494 : vec4<f32> = u_xlat0;
  let x_497 : vec3<f32> = max(abs(vec3<f32>(x_494.x, x_494.y, x_494.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_498 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_497.x, x_497.y, x_497.z, x_498.w);
  let x_500 : vec4<f32> = u_xlat1;
  let x_502 : vec3<f32> = log2(vec3<f32>(x_500.x, x_500.y, x_500.z));
  let x_503 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_502.x, x_502.y, x_502.z, x_503.w);
  let x_505 : vec4<f32> = u_xlat1;
  let x_507 : vec3<f32> = (vec3<f32>(x_505.x, x_505.y, x_505.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_508 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_507.x, x_507.y, x_507.z, x_508.w);
  let x_510 : vec4<f32> = u_xlat1;
  let x_512 : vec3<f32> = exp2(vec3<f32>(x_510.x, x_510.y, x_510.z));
  let x_513 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_512.x, x_512.y, x_512.z, x_513.w);
  let x_515 : vec4<f32> = u_xlat1;
  let x_518 : vec3<f32> = ((vec3<f32>(x_515.x, x_515.y, x_515.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_519 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_518.x, x_518.y, x_518.z, x_519.w);
  let x_521 : vec4<f32> = u_xlat0;
  let x_523 : vec3<f32> = (vec3<f32>(x_521.x, x_521.y, x_521.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_524 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_523.x, x_523.y, x_523.z, x_524.w);
  let x_526 : vec4<f32> = u_xlat0;
  let x_528 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_526.x, x_526.y, x_526.z, x_526.x));
  u_xlatb0 = vec3<bool>(x_528.x, x_528.y, x_528.z);
  let x_531 : bool = u_xlatb0.x;
  if (x_531) {
    let x_536 : f32 = u_xlat2.x;
    x_532 = x_536;
  } else {
    let x_539 : f32 = u_xlat1.x;
    x_532 = x_539;
  }
  let x_540 : f32 = x_532;
  u_xlat0.x = x_540;
  let x_543 : bool = u_xlatb0.y;
  if (x_543) {
    let x_548 : f32 = u_xlat2.y;
    x_544 = x_548;
  } else {
    let x_551 : f32 = u_xlat1.y;
    x_544 = x_551;
  }
  let x_552 : f32 = x_544;
  u_xlat0.y = x_552;
  let x_555 : bool = u_xlatb0.z;
  if (x_555) {
    let x_560 : f32 = u_xlat2.z;
    x_556 = x_560;
  } else {
    let x_563 : f32 = u_xlat1.z;
    x_556 = x_563;
  }
  let x_564 : f32 = x_556;
  u_xlat0.z = x_564;
  let x_566 : vec2<f32> = vs_TEXCOORD0;
  let x_570 : vec4<f32> = x_30.x_Dithering_Coords;
  let x_574 : vec4<f32> = x_30.x_Dithering_Coords;
  let x_576 : vec2<f32> = ((x_566 * vec2<f32>(x_570.x, x_570.y)) + vec2<f32>(x_574.z, x_574.w));
  let x_577 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_576.x, x_576.y, x_577.z, x_577.w);
  let x_584 : vec4<f32> = u_xlat1;
  let x_586 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_584.x, x_584.y));
  u_xlat15 = x_586.w;
  let x_588 : f32 = u_xlat15;
  u_xlat15 = ((x_588 * 2.0f) + -1.0f);
  let x_591 : f32 = u_xlat15;
  u_xlat1.x = (-(abs(x_591)) + 1.0f);
  let x_596 : f32 = u_xlat15;
  u_xlat15 = ((x_596 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_600 : f32 = u_xlat15;
  u_xlat15 = clamp(x_600, 0.0f, 1.0f);
  let x_602 : f32 = u_xlat15;
  u_xlat15 = ((x_602 * 2.0f) + -1.0f);
  let x_606 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_606);
  let x_610 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_610) + 1.0f);
  let x_614 : f32 = u_xlat15;
  let x_616 : f32 = u_xlat1.x;
  u_xlat15 = (x_614 * x_616);
  let x_618 : f32 = u_xlat15;
  let x_623 : vec4<f32> = u_xlat0;
  let x_625 : vec3<f32> = ((vec3<f32>(x_618, x_618, x_618) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_623.x, x_623.y, x_623.z));
  let x_626 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_625.x, x_625.y, x_625.z, x_626.w);
  let x_628 : vec4<f32> = u_xlat0;
  let x_630 : vec3<f32> = (vec3<f32>(x_628.x, x_628.y, x_628.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_631 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_630.x, x_630.y, x_630.z, x_631.w);
  let x_633 : vec4<f32> = u_xlat1;
  let x_635 : vec3<f32> = (vec3<f32>(x_633.x, x_633.y, x_633.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_636 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_635.x, x_635.y, x_635.z, x_636.w);
  let x_638 : vec4<f32> = u_xlat1;
  let x_641 : vec3<f32> = max(abs(vec3<f32>(x_638.x, x_638.y, x_638.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_642 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_641.x, x_641.y, x_641.z, x_642.w);
  let x_644 : vec4<f32> = u_xlat1;
  let x_646 : vec3<f32> = log2(vec3<f32>(x_644.x, x_644.y, x_644.z));
  let x_647 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_646.x, x_646.y, x_646.z, x_647.w);
  let x_649 : vec4<f32> = u_xlat1;
  let x_651 : vec3<f32> = (vec3<f32>(x_649.x, x_649.y, x_649.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_652 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_651.x, x_651.y, x_651.z, x_652.w);
  let x_654 : vec4<f32> = u_xlat1;
  let x_656 : vec3<f32> = exp2(vec3<f32>(x_654.x, x_654.y, x_654.z));
  let x_657 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_656.x, x_656.y, x_656.z, x_657.w);
  let x_659 : vec4<f32> = u_xlat0;
  let x_661 : vec3<f32> = (vec3<f32>(x_659.x, x_659.y, x_659.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_662 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_661.x, x_661.y, x_661.z, x_662.w);
  let x_664 : vec4<f32> = u_xlat0;
  let x_666 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_664.x, x_664.y, x_664.z, x_664.x));
  u_xlatb0 = vec3<bool>(x_666.x, x_666.y, x_666.z);
  let x_669 : bool = u_xlatb0.x;
  if (x_669) {
    let x_674 : f32 = u_xlat2.x;
    x_670 = x_674;
  } else {
    let x_677 : f32 = u_xlat1.x;
    x_670 = x_677;
  }
  let x_678 : f32 = x_670;
  SV_Target0.x = x_678;
  let x_681 : bool = u_xlatb0.y;
  if (x_681) {
    let x_686 : f32 = u_xlat2.y;
    x_682 = x_686;
  } else {
    let x_689 : f32 = u_xlat1.y;
    x_682 = x_689;
  }
  let x_690 : f32 = x_682;
  SV_Target0.y = x_690;
  let x_693 : bool = u_xlatb0.z;
  if (x_693) {
    let x_698 : f32 = u_xlat2.z;
    x_694 = x_698;
  } else {
    let x_701 : f32 = u_xlat1.z;
    x_694 = x_701;
  }
  let x_702 : f32 = x_694;
  SV_Target0.z = x_702;
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

