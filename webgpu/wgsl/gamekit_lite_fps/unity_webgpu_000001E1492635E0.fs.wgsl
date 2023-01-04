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

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat7 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_55 : PGlobals;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(3) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(8) var sampler_ChromaticAberration_SpectralLut : sampler;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

var<private> u_xlat6 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(5) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_GrainTex : sampler;

var<private> u_xlat21 : f32;

var<private> u_xlatb0 : vec3<bool>;

@group(0) @binding(4) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(9) var sampler_Lut2D : sampler;

var<private> u_xlat14 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_349 : f32;
  var x_361 : f32;
  var x_374 : f32;
  var x_525 : f32;
  var x_537 : f32;
  var x_549 : f32;
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
    let x_353 : f32 = u_xlat2.x;
    x_349 = x_353;
  } else {
    let x_356 : f32 = u_xlat3.x;
    x_349 = x_356;
  }
  let x_357 : f32 = x_349;
  u_xlat0.x = x_357;
  let x_360 : bool = u_xlatb0.y;
  if (x_360) {
    let x_365 : f32 = u_xlat2.y;
    x_361 = x_365;
  } else {
    let x_368 : f32 = u_xlat3.y;
    x_361 = x_368;
  }
  let x_369 : f32 = x_361;
  u_xlat0.y = x_369;
  let x_373 : bool = u_xlatb0.z;
  if (x_373) {
    let x_378 : f32 = u_xlat2.z;
    x_374 = x_378;
  } else {
    let x_381 : f32 = u_xlat3.z;
    x_374 = x_381;
  }
  let x_382 : f32 = x_374;
  u_xlat0.z = x_382;
  let x_384 : vec3<f32> = u_xlat0;
  let x_388 : vec3<f32> = x_55.x_Lut2D_Params;
  u_xlat7 = (x_384 * vec3<f32>(x_388.z, x_388.z, x_388.z));
  let x_392 : f32 = u_xlat7.x;
  u_xlat7.x = floor(x_392);
  let x_396 : vec3<f32> = x_55.x_Lut2D_Params;
  let x_399 : vec2<f32> = (vec2<f32>(x_396.x, x_396.y) * vec2<f32>(0.5f, 0.5f));
  let x_400 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_399.x, x_399.y, x_400.z, x_400.w);
  let x_402 : vec3<f32> = u_xlat7;
  let x_405 : vec3<f32> = x_55.x_Lut2D_Params;
  let x_408 : vec4<f32> = u_xlat2;
  let x_410 : vec2<f32> = ((vec2<f32>(x_402.y, x_402.z) * vec2<f32>(x_405.x, x_405.y)) + vec2<f32>(x_408.x, x_408.y));
  let x_411 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_411.x, x_410.x, x_410.y, x_411.w);
  let x_414 : f32 = u_xlat7.x;
  let x_416 : f32 = x_55.x_Lut2D_Params.y;
  let x_419 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_414 * x_416) + x_419);
  let x_427 : vec4<f32> = u_xlat2;
  let x_429 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_427.x, x_427.z));
  let x_430 : vec3<f32> = vec3<f32>(x_429.x, x_429.y, x_429.z);
  let x_431 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_430.x, x_430.y, x_430.z, x_431.w);
  let x_434 : f32 = x_55.x_Lut2D_Params.y;
  u_xlat4.x = x_434;
  u_xlat4.y = 0.0f;
  let x_439 : vec4<f32> = u_xlat2;
  let x_441 : vec4<f32> = u_xlat4;
  u_xlat14 = (vec2<f32>(x_439.x, x_439.z) + vec2<f32>(x_441.x, x_441.y));
  let x_447 : vec2<f32> = u_xlat14;
  let x_448 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_447);
  let x_449 : vec3<f32> = vec3<f32>(x_448.x, x_448.y, x_448.z);
  let x_450 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_449.x, x_449.y, x_449.z, x_450.w);
  let x_453 : f32 = u_xlat0.x;
  let x_455 : f32 = x_55.x_Lut2D_Params.z;
  let x_458 : f32 = u_xlat7.x;
  u_xlat0.x = ((x_453 * x_455) + -(x_458));
  let x_462 : vec4<f32> = u_xlat3;
  let x_465 : vec4<f32> = u_xlat2;
  u_xlat7 = (-(vec3<f32>(x_462.x, x_462.y, x_462.z)) + vec3<f32>(x_465.x, x_465.y, x_465.z));
  let x_468 : vec3<f32> = u_xlat0;
  let x_470 : vec3<f32> = u_xlat7;
  let x_472 : vec4<f32> = u_xlat3;
  u_xlat0 = ((vec3<f32>(x_468.x, x_468.x, x_468.x) * x_470) + vec3<f32>(x_472.x, x_472.y, x_472.z));
  let x_475 : vec3<f32> = u_xlat0;
  let x_478 : vec3<f32> = (x_475 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_479 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_478.x, x_478.y, x_478.z, x_479.w);
  let x_481 : vec3<f32> = u_xlat0;
  let x_484 : vec3<f32> = (x_481 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_485 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_484.x, x_484.y, x_484.z, x_485.w);
  let x_487 : vec4<f32> = u_xlat3;
  let x_491 : vec3<f32> = (vec3<f32>(x_487.x, x_487.y, x_487.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_492 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_491.x, x_491.y, x_491.z, x_492.w);
  let x_494 : vec4<f32> = u_xlat3;
  let x_497 : vec3<f32> = max(abs(vec3<f32>(x_494.x, x_494.y, x_494.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_498 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_497.x, x_497.y, x_497.z, x_498.w);
  let x_500 : vec4<f32> = u_xlat3;
  let x_502 : vec3<f32> = log2(vec3<f32>(x_500.x, x_500.y, x_500.z));
  let x_503 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_502.x, x_502.y, x_502.z, x_503.w);
  let x_505 : vec4<f32> = u_xlat3;
  let x_509 : vec3<f32> = (vec3<f32>(x_505.x, x_505.y, x_505.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_510 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_509.x, x_509.y, x_509.z, x_510.w);
  let x_512 : vec4<f32> = u_xlat3;
  let x_514 : vec3<f32> = exp2(vec3<f32>(x_512.x, x_512.y, x_512.z));
  let x_515 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_514.x, x_514.y, x_514.z, x_515.w);
  let x_519 : vec3<f32> = u_xlat0;
  let x_521 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_519.x, x_519.y, x_519.z, x_519.x));
  u_xlatb0 = vec3<bool>(x_521.x, x_521.y, x_521.z);
  let x_524 : bool = u_xlatb0.x;
  if (x_524) {
    let x_529 : f32 = u_xlat2.x;
    x_525 = x_529;
  } else {
    let x_532 : f32 = u_xlat3.x;
    x_525 = x_532;
  }
  let x_533 : f32 = x_525;
  u_xlat1.x = x_533;
  let x_536 : bool = u_xlatb0.y;
  if (x_536) {
    let x_541 : f32 = u_xlat2.y;
    x_537 = x_541;
  } else {
    let x_544 : f32 = u_xlat3.y;
    x_537 = x_544;
  }
  let x_545 : f32 = x_537;
  u_xlat1.y = x_545;
  let x_548 : bool = u_xlatb0.z;
  if (x_548) {
    let x_553 : f32 = u_xlat2.z;
    x_549 = x_553;
  } else {
    let x_556 : f32 = u_xlat3.z;
    x_549 = x_556;
  }
  let x_557 : f32 = x_549;
  u_xlat1.z = x_557;
  let x_561 : f32 = x_55.x_LumaInAlpha;
  u_xlatb0.x = (0.5f < x_561);
  let x_565 : bool = u_xlatb0.x;
  if (x_565) {
    let x_568 : vec4<f32> = u_xlat1;
    u_xlat0 = vec3<f32>(x_568.x, x_568.y, x_568.z);
    let x_570 : vec3<f32> = u_xlat0;
    u_xlat0 = clamp(x_570, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_574 : vec3<f32> = u_xlat0;
    u_xlat1.w = dot(x_574, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_579 : vec4<f32> = u_xlat1;
  SV_Target0 = x_579;
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

