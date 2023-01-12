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

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_30 : PGlobals;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

@group(0) @binding(3) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(9) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_AutoExposureTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(5) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_GrainTex : sampler;

@group(0) @binding(4) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(10) var sampler_Lut2D : sampler;

@group(0) @binding(0) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_DitheringTex : sampler;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat15 : f32;
  var u_xlatb0 : vec3<bool>;
  var x_359 : f32;
  var x_371 : f32;
  var x_384 : f32;
  var u_xlat5 : vec3<f32>;
  var x_540 : f32;
  var x_552 : f32;
  var x_564 : f32;
  var x_612 : f32;
  var x_624 : f32;
  var x_636 : f32;
  var x_749 : f32;
  var x_761 : f32;
  var x_773 : f32;
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
    let x_363 : f32 = u_xlat2.x;
    x_359 = x_363;
  } else {
    let x_366 : f32 = u_xlat1.x;
    x_359 = x_366;
  }
  let x_367 : f32 = x_359;
  u_xlat0.x = x_367;
  let x_370 : bool = u_xlatb0.y;
  if (x_370) {
    let x_375 : f32 = u_xlat2.y;
    x_371 = x_375;
  } else {
    let x_378 : f32 = u_xlat1.y;
    x_371 = x_378;
  }
  let x_379 : f32 = x_371;
  u_xlat0.y = x_379;
  let x_383 : bool = u_xlatb0.z;
  if (x_383) {
    let x_388 : f32 = u_xlat2.z;
    x_384 = x_388;
  } else {
    let x_391 : f32 = u_xlat1.z;
    x_384 = x_391;
  }
  let x_392 : f32 = x_384;
  u_xlat0.z = x_392;
  let x_396 : vec4<f32> = u_xlat0;
  let x_401 : vec3<f32> = x_30.x_Lut2D_Params;
  u_xlat5 = (vec3<f32>(x_396.x, x_396.y, x_396.z) * vec3<f32>(x_401.z, x_401.z, x_401.z));
  let x_405 : f32 = u_xlat5.x;
  u_xlat5.x = floor(x_405);
  let x_409 : f32 = u_xlat0.x;
  let x_411 : f32 = x_30.x_Lut2D_Params.z;
  let x_414 : f32 = u_xlat5.x;
  u_xlat0.x = ((x_409 * x_411) + -(x_414));
  let x_419 : vec3<f32> = x_30.x_Lut2D_Params;
  let x_422 : vec2<f32> = (vec2<f32>(x_419.x, x_419.y) * vec2<f32>(0.5f, 0.5f));
  let x_423 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_422.x, x_422.y, x_423.z, x_423.w);
  let x_425 : vec3<f32> = u_xlat5;
  let x_428 : vec3<f32> = x_30.x_Lut2D_Params;
  let x_431 : vec4<f32> = u_xlat1;
  let x_433 : vec2<f32> = ((vec2<f32>(x_425.y, x_425.z) * vec2<f32>(x_428.x, x_428.y)) + vec2<f32>(x_431.x, x_431.y));
  let x_434 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_434.x, x_433.x, x_433.y, x_434.w);
  let x_437 : f32 = u_xlat5.x;
  let x_439 : f32 = x_30.x_Lut2D_Params.y;
  let x_442 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_437 * x_439) + x_442);
  let x_446 : f32 = x_30.x_Lut2D_Params.y;
  u_xlat2.x = x_446;
  u_xlat2.y = 0.0f;
  let x_449 : vec4<f32> = u_xlat1;
  let x_451 : vec4<f32> = u_xlat2;
  let x_453 : vec2<f32> = (vec2<f32>(x_449.x, x_449.z) + vec2<f32>(x_451.x, x_451.y));
  let x_454 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_453.x, x_453.y, x_454.z);
  let x_461 : vec4<f32> = u_xlat1;
  let x_463 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_461.x, x_461.z));
  let x_464 : vec3<f32> = vec3<f32>(x_463.x, x_463.y, x_463.z);
  let x_465 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_464.x, x_464.y, x_464.z, x_465.w);
  let x_470 : vec3<f32> = u_xlat5;
  let x_472 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_470.x, x_470.y));
  u_xlat5 = vec3<f32>(x_472.x, x_472.y, x_472.z);
  let x_474 : vec4<f32> = u_xlat1;
  let x_477 : vec3<f32> = u_xlat5;
  u_xlat5 = (-(vec3<f32>(x_474.x, x_474.y, x_474.z)) + x_477);
  let x_479 : vec4<f32> = u_xlat0;
  let x_481 : vec3<f32> = u_xlat5;
  let x_483 : vec4<f32> = u_xlat1;
  let x_485 : vec3<f32> = ((vec3<f32>(x_479.x, x_479.x, x_479.x) * x_481) + vec3<f32>(x_483.x, x_483.y, x_483.z));
  let x_486 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_485.x, x_485.y, x_485.z, x_486.w);
  let x_488 : vec4<f32> = u_xlat0;
  let x_492 : vec3<f32> = (vec3<f32>(x_488.x, x_488.y, x_488.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_493 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_492.x, x_492.y, x_492.z, x_493.w);
  let x_495 : vec4<f32> = u_xlat1;
  let x_499 : vec3<f32> = (vec3<f32>(x_495.x, x_495.y, x_495.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_500 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_499.x, x_499.y, x_499.z, x_500.w);
  let x_502 : vec4<f32> = u_xlat1;
  let x_505 : vec3<f32> = max(abs(vec3<f32>(x_502.x, x_502.y, x_502.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_506 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_505.x, x_505.y, x_505.z, x_506.w);
  let x_508 : vec4<f32> = u_xlat1;
  let x_510 : vec3<f32> = log2(vec3<f32>(x_508.x, x_508.y, x_508.z));
  let x_511 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_510.x, x_510.y, x_510.z, x_511.w);
  let x_513 : vec4<f32> = u_xlat1;
  let x_517 : vec3<f32> = (vec3<f32>(x_513.x, x_513.y, x_513.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_518 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_517.x, x_517.y, x_517.z, x_518.w);
  let x_520 : vec4<f32> = u_xlat1;
  let x_522 : vec3<f32> = exp2(vec3<f32>(x_520.x, x_520.y, x_520.z));
  let x_523 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_522.x, x_522.y, x_522.z, x_523.w);
  let x_525 : vec4<f32> = u_xlat0;
  let x_529 : vec3<f32> = (vec3<f32>(x_525.x, x_525.y, x_525.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_530 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_529.x, x_529.y, x_529.z, x_530.w);
  let x_534 : vec4<f32> = u_xlat0;
  let x_536 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_534.x, x_534.y, x_534.z, x_534.x));
  u_xlatb0 = vec3<bool>(x_536.x, x_536.y, x_536.z);
  let x_539 : bool = u_xlatb0.x;
  if (x_539) {
    let x_544 : f32 = u_xlat2.x;
    x_540 = x_544;
  } else {
    let x_547 : f32 = u_xlat1.x;
    x_540 = x_547;
  }
  let x_548 : f32 = x_540;
  u_xlat0.x = x_548;
  let x_551 : bool = u_xlatb0.y;
  if (x_551) {
    let x_556 : f32 = u_xlat2.y;
    x_552 = x_556;
  } else {
    let x_559 : f32 = u_xlat1.y;
    x_552 = x_559;
  }
  let x_560 : f32 = x_552;
  u_xlat0.y = x_560;
  let x_563 : bool = u_xlatb0.z;
  if (x_563) {
    let x_568 : f32 = u_xlat2.z;
    x_564 = x_568;
  } else {
    let x_571 : f32 = u_xlat1.z;
    x_564 = x_571;
  }
  let x_572 : f32 = x_564;
  u_xlat0.z = x_572;
  let x_574 : vec4<f32> = u_xlat0;
  let x_577 : vec3<f32> = max(abs(vec3<f32>(x_574.x, x_574.y, x_574.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_578 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_577.x, x_577.y, x_577.z, x_578.w);
  let x_580 : vec4<f32> = u_xlat1;
  let x_582 : vec3<f32> = log2(vec3<f32>(x_580.x, x_580.y, x_580.z));
  let x_583 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_582.x, x_582.y, x_582.z, x_583.w);
  let x_585 : vec4<f32> = u_xlat1;
  let x_587 : vec3<f32> = (vec3<f32>(x_585.x, x_585.y, x_585.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_588 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_587.x, x_587.y, x_587.z, x_588.w);
  let x_590 : vec4<f32> = u_xlat1;
  let x_592 : vec3<f32> = exp2(vec3<f32>(x_590.x, x_590.y, x_590.z));
  let x_593 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_592.x, x_592.y, x_592.z, x_593.w);
  let x_595 : vec4<f32> = u_xlat1;
  let x_598 : vec3<f32> = ((vec3<f32>(x_595.x, x_595.y, x_595.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_599 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_598.x, x_598.y, x_598.z, x_599.w);
  let x_601 : vec4<f32> = u_xlat0;
  let x_603 : vec3<f32> = (vec3<f32>(x_601.x, x_601.y, x_601.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_604 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_603.x, x_603.y, x_603.z, x_604.w);
  let x_606 : vec4<f32> = u_xlat0;
  let x_608 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_606.x, x_606.y, x_606.z, x_606.x));
  u_xlatb0 = vec3<bool>(x_608.x, x_608.y, x_608.z);
  let x_611 : bool = u_xlatb0.x;
  if (x_611) {
    let x_616 : f32 = u_xlat2.x;
    x_612 = x_616;
  } else {
    let x_619 : f32 = u_xlat1.x;
    x_612 = x_619;
  }
  let x_620 : f32 = x_612;
  u_xlat0.x = x_620;
  let x_623 : bool = u_xlatb0.y;
  if (x_623) {
    let x_628 : f32 = u_xlat2.y;
    x_624 = x_628;
  } else {
    let x_631 : f32 = u_xlat1.y;
    x_624 = x_631;
  }
  let x_632 : f32 = x_624;
  u_xlat0.y = x_632;
  let x_635 : bool = u_xlatb0.z;
  if (x_635) {
    let x_640 : f32 = u_xlat2.z;
    x_636 = x_640;
  } else {
    let x_643 : f32 = u_xlat1.z;
    x_636 = x_643;
  }
  let x_644 : f32 = x_636;
  u_xlat0.z = x_644;
  let x_646 : vec2<f32> = vs_TEXCOORD0;
  let x_649 : vec4<f32> = x_30.x_Dithering_Coords;
  let x_653 : vec4<f32> = x_30.x_Dithering_Coords;
  let x_655 : vec2<f32> = ((x_646 * vec2<f32>(x_649.x, x_649.y)) + vec2<f32>(x_653.z, x_653.w));
  let x_656 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_655.x, x_655.y, x_656.z, x_656.w);
  let x_663 : vec4<f32> = u_xlat1;
  let x_665 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_663.x, x_663.y));
  u_xlat15 = x_665.w;
  let x_667 : f32 = u_xlat15;
  u_xlat15 = ((x_667 * 2.0f) + -1.0f);
  let x_670 : f32 = u_xlat15;
  u_xlat1.x = (-(abs(x_670)) + 1.0f);
  let x_675 : f32 = u_xlat15;
  u_xlat15 = ((x_675 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_679 : f32 = u_xlat15;
  u_xlat15 = clamp(x_679, 0.0f, 1.0f);
  let x_681 : f32 = u_xlat15;
  u_xlat15 = ((x_681 * 2.0f) + -1.0f);
  let x_685 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_685);
  let x_689 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_689) + 1.0f);
  let x_693 : f32 = u_xlat15;
  let x_695 : f32 = u_xlat1.x;
  u_xlat15 = (x_693 * x_695);
  let x_697 : f32 = u_xlat15;
  let x_702 : vec4<f32> = u_xlat0;
  let x_704 : vec3<f32> = ((vec3<f32>(x_697, x_697, x_697) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_702.x, x_702.y, x_702.z));
  let x_705 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_704.x, x_704.y, x_704.z, x_705.w);
  let x_707 : vec4<f32> = u_xlat0;
  let x_709 : vec3<f32> = (vec3<f32>(x_707.x, x_707.y, x_707.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_710 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_709.x, x_709.y, x_709.z, x_710.w);
  let x_712 : vec4<f32> = u_xlat1;
  let x_714 : vec3<f32> = (vec3<f32>(x_712.x, x_712.y, x_712.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_715 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_714.x, x_714.y, x_714.z, x_715.w);
  let x_717 : vec4<f32> = u_xlat1;
  let x_720 : vec3<f32> = max(abs(vec3<f32>(x_717.x, x_717.y, x_717.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_721 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_720.x, x_720.y, x_720.z, x_721.w);
  let x_723 : vec4<f32> = u_xlat1;
  let x_725 : vec3<f32> = log2(vec3<f32>(x_723.x, x_723.y, x_723.z));
  let x_726 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_725.x, x_725.y, x_725.z, x_726.w);
  let x_728 : vec4<f32> = u_xlat1;
  let x_730 : vec3<f32> = (vec3<f32>(x_728.x, x_728.y, x_728.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_731 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_730.x, x_730.y, x_730.z, x_731.w);
  let x_733 : vec4<f32> = u_xlat1;
  let x_735 : vec3<f32> = exp2(vec3<f32>(x_733.x, x_733.y, x_733.z));
  let x_736 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_735.x, x_735.y, x_735.z, x_736.w);
  let x_738 : vec4<f32> = u_xlat0;
  let x_740 : vec3<f32> = (vec3<f32>(x_738.x, x_738.y, x_738.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_741 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_740.x, x_740.y, x_740.z, x_741.w);
  let x_743 : vec4<f32> = u_xlat0;
  let x_745 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_743.x, x_743.y, x_743.z, x_743.x));
  u_xlatb0 = vec3<bool>(x_745.x, x_745.y, x_745.z);
  let x_748 : bool = u_xlatb0.x;
  if (x_748) {
    let x_753 : f32 = u_xlat2.x;
    x_749 = x_753;
  } else {
    let x_756 : f32 = u_xlat1.x;
    x_749 = x_756;
  }
  let x_757 : f32 = x_749;
  SV_Target0.x = x_757;
  let x_760 : bool = u_xlatb0.y;
  if (x_760) {
    let x_765 : f32 = u_xlat2.y;
    x_761 = x_765;
  } else {
    let x_768 : f32 = u_xlat1.y;
    x_761 = x_768;
  }
  let x_769 : f32 = x_761;
  SV_Target0.y = x_769;
  let x_772 : bool = u_xlatb0.z;
  if (x_772) {
    let x_777 : f32 = u_xlat2.z;
    x_773 = x_777;
  } else {
    let x_780 : f32 = u_xlat1.z;
    x_773 = x_780;
  }
  let x_781 : f32 = x_773;
  SV_Target0.z = x_781;
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

