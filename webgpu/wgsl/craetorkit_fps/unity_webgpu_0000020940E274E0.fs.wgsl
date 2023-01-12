struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  x_ChromaticAberration_Amount : f32,
  @size(8)
  padding : u32,
  x_Lut2D_Params : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_Grain_Params1 : vec2<f32>,
  @size(8)
  padding_2 : u32,
  x_Grain_Params2 : vec4<f32>,
  x_LumaInAlpha : f32,
}

@group(0) @binding(1) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_55 : PGlobals;

@group(0) @binding(2) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(7) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(4) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_GrainTex : sampler;

@group(0) @binding(3) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(8) var sampler_Lut2D : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat21 : f32;
  var u_xlatb0 : vec3<bool>;
  var x_348 : f32;
  var x_360 : f32;
  var x_373 : f32;
  var u_xlat14 : vec2<f32>;
  var x_524 : f32;
  var x_536 : f32;
  var x_548 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_23);
  u_xlat0.x = x_25.x;
  let x_33 : vec2<f32> = vs_TEXCOORD0;
  u_xlat1 = ((vec4<f32>(x_33.x, x_33.y, x_33.x, x_33.y) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_42 : vec4<f32> = u_xlat1;
  let x_44 : vec4<f32> = u_xlat1;
  u_xlat7.x = dot(vec2<f32>(x_42.z, x_42.w), vec2<f32>(x_44.z, x_44.w));
  let x_48 : vec3<f32> = u_xlat7;
  let x_50 : vec4<f32> = u_xlat1;
  u_xlat1 = (vec4<f32>(x_48.x, x_48.x, x_48.x, x_48.x) * x_50);
  let x_52 : vec4<f32> = u_xlat1;
  let x_60 : f32 = x_55.x_ChromaticAberration_Amount;
  let x_62 : f32 = x_55.x_ChromaticAberration_Amount;
  let x_64 : f32 = x_55.x_ChromaticAberration_Amount;
  let x_66 : f32 = x_55.x_ChromaticAberration_Amount;
  let x_67 : vec4<f32> = vec4<f32>(x_60, x_62, x_64, x_66);
  u_xlat1 = (x_52 * vec4<f32>(x_67.x, x_67.y, x_67.z, x_67.w));
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
  let x_108 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_107.x, x_107.y, x_108.z);
  let x_110 : vec3<f32> = u_xlat7;
  let x_115 : vec2<f32> = clamp(vec2<f32>(x_110.x, x_110.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_116 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_115.x, x_115.y, x_116.z);
  let x_118 : vec3<f32> = u_xlat7;
  let x_122 : f32 = x_55.x_RenderViewportScaleFactor;
  let x_124 : vec2<f32> = (vec2<f32>(x_118.x, x_118.y) * vec2<f32>(x_122, x_122));
  let x_125 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_124.x, x_124.y, x_125.z);
  let x_133 : vec3<f32> = u_xlat7;
  let x_135 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_133.x, x_133.y), 0.0f);
  u_xlat5 = x_135;
  let x_136 : vec4<f32> = u_xlat1;
  let x_141 : vec2<f32> = vs_TEXCOORD0;
  u_xlat1 = ((x_136 * vec4<f32>(-0.333333343f, -0.333333343f, -0.666666687f, -0.666666687f)) + vec4<f32>(x_141.x, x_141.y, x_141.x, x_141.y));
  let x_144 : vec4<f32> = u_xlat1;
  u_xlat1 = clamp(x_144, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_148 : vec4<f32> = u_xlat1;
  let x_150 : f32 = x_55.x_RenderViewportScaleFactor;
  u_xlat1 = (x_148 * vec4<f32>(x_150, x_150, x_150, x_150));
  let x_157 : vec4<f32> = u_xlat1;
  let x_159 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_157.x, x_157.y), 0.0f);
  u_xlat6 = x_159;
  let x_163 : vec4<f32> = u_xlat1;
  let x_165 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_163.z, x_163.w), 0.0f);
  u_xlat1 = x_165;
  u_xlat2.w = 1.0f;
  u_xlat3.w = 1.0f;
  let x_169 : vec4<f32> = u_xlat3;
  let x_170 : vec4<f32> = u_xlat6;
  u_xlat6 = (x_169 * x_170);
  let x_172 : vec4<f32> = u_xlat5;
  let x_173 : vec4<f32> = u_xlat2;
  let x_175 : vec4<f32> = u_xlat6;
  u_xlat5 = ((x_172 * x_173) + x_175);
  u_xlat4.w = 1.0f;
  let x_178 : vec4<f32> = u_xlat1;
  let x_179 : vec4<f32> = u_xlat4;
  let x_181 : vec4<f32> = u_xlat5;
  u_xlat1 = ((x_178 * x_179) + x_181);
  let x_183 : vec4<f32> = u_xlat2;
  let x_185 : vec4<f32> = u_xlat3;
  u_xlat7 = (vec3<f32>(x_183.x, x_183.y, x_183.z) + vec3<f32>(x_185.x, x_185.y, x_185.z));
  let x_188 : vec4<f32> = u_xlat4;
  let x_190 : vec3<f32> = u_xlat7;
  let x_191 : vec3<f32> = (vec3<f32>(x_188.x, x_188.y, x_188.z) + x_190);
  let x_192 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_191.x, x_191.y, x_191.z, x_192.w);
  u_xlat2.w = 3.0f;
  let x_196 : vec4<f32> = u_xlat1;
  let x_197 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_196 / x_197);
  let x_199 : vec3<f32> = u_xlat0;
  let x_201 : vec4<f32> = u_xlat1;
  u_xlat0 = (vec3<f32>(x_199.x, x_199.x, x_199.x) * vec3<f32>(x_201.x, x_201.y, x_201.z));
  let x_205 : vec2<f32> = vs_TEXCOORD1;
  let x_209 : vec4<f32> = x_55.x_Grain_Params2;
  let x_213 : vec4<f32> = x_55.x_Grain_Params2;
  let x_215 : vec2<f32> = ((x_205 * vec2<f32>(x_209.x, x_209.y)) + vec2<f32>(x_213.z, x_213.w));
  let x_216 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_215.x, x_215.y, x_216.z, x_216.w);
  let x_223 : vec4<f32> = u_xlat2;
  let x_225 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_223.x, x_223.y));
  let x_226 : vec3<f32> = vec3<f32>(x_225.x, x_225.y, x_225.z);
  let x_227 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_226.x, x_226.y, x_226.z, x_227.w);
  let x_229 : vec3<f32> = u_xlat0;
  let x_230 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_229.x, x_229.y, x_229.z, x_230.w);
  let x_232 : vec4<f32> = u_xlat3;
  let x_236 : vec3<f32> = clamp(vec3<f32>(x_232.x, x_232.y, x_232.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_237 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_236.x, x_236.y, x_236.z, x_237.w);
  let x_240 : vec4<f32> = u_xlat3;
  u_xlat21 = dot(vec3<f32>(x_240.x, x_240.y, x_240.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_247 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_247);
  let x_251 : f32 = x_55.x_Grain_Params1.x;
  let x_252 : f32 = u_xlat21;
  u_xlat21 = ((x_251 * -(x_252)) + 1.0f);
  let x_256 : vec3<f32> = u_xlat0;
  let x_257 : vec4<f32> = u_xlat2;
  let x_259 : vec3<f32> = (x_256 * vec3<f32>(x_257.x, x_257.y, x_257.z));
  let x_260 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_259.x, x_259.y, x_259.z, x_260.w);
  let x_262 : vec4<f32> = u_xlat2;
  let x_266 : f32 = x_55.x_Grain_Params1.y;
  let x_268 : f32 = x_55.x_Grain_Params1.y;
  let x_270 : f32 = x_55.x_Grain_Params1.y;
  let x_272 : vec3<f32> = (vec3<f32>(x_262.x, x_262.y, x_262.z) * vec3<f32>(x_266, x_268, x_270));
  let x_273 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_272.x, x_272.y, x_272.z, x_273.w);
  let x_275 : vec4<f32> = u_xlat2;
  let x_277 : f32 = u_xlat21;
  let x_280 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_275.x, x_275.y, x_275.z) * vec3<f32>(x_277, x_277, x_277)) + x_280);
  let x_282 : vec3<f32> = u_xlat0;
  u_xlat0 = clamp(x_282, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_287 : f32 = u_xlat1.w;
  u_xlat1.w = x_287;
  let x_290 : f32 = u_xlat1.w;
  u_xlat1.w = clamp(x_290, 0.0f, 1.0f);
  let x_293 : vec3<f32> = u_xlat0;
  let x_297 : vec3<f32> = (vec3<f32>(x_293.z, x_293.x, x_293.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_298 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_297.x, x_297.y, x_297.z, x_298.w);
  let x_300 : vec3<f32> = u_xlat0;
  let x_304 : vec3<f32> = max(vec3<f32>(x_300.z, x_300.x, x_300.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_305 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_304.x, x_304.y, x_304.z, x_305.w);
  let x_307 : vec4<f32> = u_xlat3;
  let x_309 : vec3<f32> = log2(vec3<f32>(x_307.x, x_307.y, x_307.z));
  let x_310 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_309.x, x_309.y, x_309.z, x_310.w);
  let x_312 : vec4<f32> = u_xlat3;
  let x_316 : vec3<f32> = (vec3<f32>(x_312.x, x_312.y, x_312.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_317 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_316.x, x_316.y, x_316.z, x_317.w);
  let x_319 : vec4<f32> = u_xlat3;
  let x_321 : vec3<f32> = exp2(vec3<f32>(x_319.x, x_319.y, x_319.z));
  let x_322 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_321.x, x_321.y, x_321.z, x_322.w);
  let x_324 : vec4<f32> = u_xlat3;
  let x_331 : vec3<f32> = ((vec3<f32>(x_324.x, x_324.y, x_324.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_332 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_331.x, x_331.y, x_331.z, x_332.w);
  let x_340 : vec3<f32> = u_xlat0;
  let x_343 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_340.z, x_340.x, x_340.y, x_340.z));
  u_xlatb0 = vec3<bool>(x_343.x, x_343.y, x_343.z);
  let x_347 : bool = u_xlatb0.x;
  if (x_347) {
    let x_352 : f32 = u_xlat2.x;
    x_348 = x_352;
  } else {
    let x_355 : f32 = u_xlat3.x;
    x_348 = x_355;
  }
  let x_356 : f32 = x_348;
  u_xlat0.x = x_356;
  let x_359 : bool = u_xlatb0.y;
  if (x_359) {
    let x_364 : f32 = u_xlat2.y;
    x_360 = x_364;
  } else {
    let x_367 : f32 = u_xlat3.y;
    x_360 = x_367;
  }
  let x_368 : f32 = x_360;
  u_xlat0.y = x_368;
  let x_372 : bool = u_xlatb0.z;
  if (x_372) {
    let x_377 : f32 = u_xlat2.z;
    x_373 = x_377;
  } else {
    let x_380 : f32 = u_xlat3.z;
    x_373 = x_380;
  }
  let x_381 : f32 = x_373;
  u_xlat0.z = x_381;
  let x_383 : vec3<f32> = u_xlat0;
  let x_387 : vec3<f32> = x_55.x_Lut2D_Params;
  u_xlat7 = (x_383 * vec3<f32>(x_387.z, x_387.z, x_387.z));
  let x_391 : f32 = u_xlat7.x;
  u_xlat7.x = floor(x_391);
  let x_395 : vec3<f32> = x_55.x_Lut2D_Params;
  let x_398 : vec2<f32> = (vec2<f32>(x_395.x, x_395.y) * vec2<f32>(0.5f, 0.5f));
  let x_399 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_398.x, x_398.y, x_399.z, x_399.w);
  let x_401 : vec3<f32> = u_xlat7;
  let x_404 : vec3<f32> = x_55.x_Lut2D_Params;
  let x_407 : vec4<f32> = u_xlat2;
  let x_409 : vec2<f32> = ((vec2<f32>(x_401.y, x_401.z) * vec2<f32>(x_404.x, x_404.y)) + vec2<f32>(x_407.x, x_407.y));
  let x_410 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_410.x, x_409.x, x_409.y, x_410.w);
  let x_413 : f32 = u_xlat7.x;
  let x_415 : f32 = x_55.x_Lut2D_Params.y;
  let x_418 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_413 * x_415) + x_418);
  let x_426 : vec4<f32> = u_xlat2;
  let x_428 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_426.x, x_426.z));
  let x_429 : vec3<f32> = vec3<f32>(x_428.x, x_428.y, x_428.z);
  let x_430 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_429.x, x_429.y, x_429.z, x_430.w);
  let x_433 : f32 = x_55.x_Lut2D_Params.y;
  u_xlat4.x = x_433;
  u_xlat4.y = 0.0f;
  let x_438 : vec4<f32> = u_xlat2;
  let x_440 : vec4<f32> = u_xlat4;
  u_xlat14 = (vec2<f32>(x_438.x, x_438.z) + vec2<f32>(x_440.x, x_440.y));
  let x_446 : vec2<f32> = u_xlat14;
  let x_447 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_446);
  let x_448 : vec3<f32> = vec3<f32>(x_447.x, x_447.y, x_447.z);
  let x_449 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_448.x, x_448.y, x_448.z, x_449.w);
  let x_452 : f32 = u_xlat0.x;
  let x_454 : f32 = x_55.x_Lut2D_Params.z;
  let x_457 : f32 = u_xlat7.x;
  u_xlat0.x = ((x_452 * x_454) + -(x_457));
  let x_461 : vec4<f32> = u_xlat3;
  let x_464 : vec4<f32> = u_xlat2;
  u_xlat7 = (-(vec3<f32>(x_461.x, x_461.y, x_461.z)) + vec3<f32>(x_464.x, x_464.y, x_464.z));
  let x_467 : vec3<f32> = u_xlat0;
  let x_469 : vec3<f32> = u_xlat7;
  let x_471 : vec4<f32> = u_xlat3;
  u_xlat0 = ((vec3<f32>(x_467.x, x_467.x, x_467.x) * x_469) + vec3<f32>(x_471.x, x_471.y, x_471.z));
  let x_474 : vec3<f32> = u_xlat0;
  let x_477 : vec3<f32> = (x_474 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_478 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_477.x, x_477.y, x_477.z, x_478.w);
  let x_480 : vec3<f32> = u_xlat0;
  let x_483 : vec3<f32> = (x_480 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_484 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_483.x, x_483.y, x_483.z, x_484.w);
  let x_486 : vec4<f32> = u_xlat3;
  let x_490 : vec3<f32> = (vec3<f32>(x_486.x, x_486.y, x_486.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_491 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_490.x, x_490.y, x_490.z, x_491.w);
  let x_493 : vec4<f32> = u_xlat3;
  let x_496 : vec3<f32> = max(abs(vec3<f32>(x_493.x, x_493.y, x_493.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_497 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_496.x, x_496.y, x_496.z, x_497.w);
  let x_499 : vec4<f32> = u_xlat3;
  let x_501 : vec3<f32> = log2(vec3<f32>(x_499.x, x_499.y, x_499.z));
  let x_502 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_501.x, x_501.y, x_501.z, x_502.w);
  let x_504 : vec4<f32> = u_xlat3;
  let x_508 : vec3<f32> = (vec3<f32>(x_504.x, x_504.y, x_504.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_509 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_508.x, x_508.y, x_508.z, x_509.w);
  let x_511 : vec4<f32> = u_xlat3;
  let x_513 : vec3<f32> = exp2(vec3<f32>(x_511.x, x_511.y, x_511.z));
  let x_514 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_513.x, x_513.y, x_513.z, x_514.w);
  let x_518 : vec3<f32> = u_xlat0;
  let x_520 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_518.x, x_518.y, x_518.z, x_518.x));
  u_xlatb0 = vec3<bool>(x_520.x, x_520.y, x_520.z);
  let x_523 : bool = u_xlatb0.x;
  if (x_523) {
    let x_528 : f32 = u_xlat2.x;
    x_524 = x_528;
  } else {
    let x_531 : f32 = u_xlat3.x;
    x_524 = x_531;
  }
  let x_532 : f32 = x_524;
  u_xlat1.x = x_532;
  let x_535 : bool = u_xlatb0.y;
  if (x_535) {
    let x_540 : f32 = u_xlat2.y;
    x_536 = x_540;
  } else {
    let x_543 : f32 = u_xlat3.y;
    x_536 = x_543;
  }
  let x_544 : f32 = x_536;
  u_xlat1.y = x_544;
  let x_547 : bool = u_xlatb0.z;
  if (x_547) {
    let x_552 : f32 = u_xlat2.z;
    x_548 = x_552;
  } else {
    let x_555 : f32 = u_xlat3.z;
    x_548 = x_555;
  }
  let x_556 : f32 = x_548;
  u_xlat1.z = x_556;
  let x_560 : f32 = x_55.x_LumaInAlpha;
  u_xlatb0.x = (0.5f < x_560);
  let x_564 : bool = u_xlatb0.x;
  if (x_564) {
    let x_567 : vec4<f32> = u_xlat1;
    u_xlat0 = vec3<f32>(x_567.x, x_567.y, x_567.z);
    let x_569 : vec3<f32> = u_xlat0;
    u_xlat0 = clamp(x_569, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_573 : vec3<f32> = u_xlat0;
    u_xlat1.w = dot(x_573, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_578 : vec4<f32> = u_xlat1;
  SV_Target0 = x_578;
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

