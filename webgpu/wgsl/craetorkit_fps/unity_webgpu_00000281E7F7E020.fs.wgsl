struct PGlobals {
  x_ScreenParams : vec4<f32>,
  x_RenderViewportScaleFactor : f32,
  x_ChromaticAberration_Amount : f32,
  @size(8)
  padding : u32,
  x_Lut2D_Params : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_Vignette_Color : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_Vignette_Center : vec2<f32>,
  @size(8)
  padding_3 : u32,
  x_Vignette_Settings : vec4<f32>,
  x_Vignette_Opacity : f32,
  x_Vignette_Mode : f32,
  x_Grain_Params1 : vec2<f32>,
  x_Grain_Params2 : vec4<f32>,
  x_LumaInAlpha : f32,
}

@group(0) @binding(1) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_55 : PGlobals;

@group(0) @binding(2) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(8) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

@group(0) @binding(4) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(10) var sampler_Vignette_Mask : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(5) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_GrainTex : sampler;

@group(0) @binding(3) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(9) var sampler_Lut2D : sampler;

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
  var u_xlatb21 : bool;
  var u_xlat21 : f32;
  var u_xlat10 : f32;
  var x_372 : f32;
  var u_xlatb3 : vec3<bool>;
  var hlslcc_movcTemp : vec3<f32>;
  var x_554 : f32;
  var x_566 : f32;
  var x_578 : f32;
  var u_xlat14 : vec2<f32>;
  var u_xlatb0 : vec3<bool>;
  var x_725 : f32;
  var x_737 : f32;
  var x_749 : f32;
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
  let x_209 : f32 = x_55.x_Vignette_Mode;
  u_xlatb21 = (x_209 < 0.5f);
  let x_211 : bool = u_xlatb21;
  if (x_211) {
    let x_214 : vec2<f32> = vs_TEXCOORD0;
    let x_218 : vec2<f32> = x_55.x_Vignette_Center;
    let x_220 : vec2<f32> = (x_214 + -(x_218));
    let x_221 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_220.x, x_220.y, x_221.z, x_221.w);
    let x_223 : vec4<f32> = u_xlat1;
    let x_229 : vec4<f32> = x_55.x_Vignette_Settings;
    let x_231 : vec2<f32> = (abs(vec2<f32>(x_223.y, x_223.x)) * vec2<f32>(x_229.x, x_229.x));
    let x_232 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_232.x, x_231.x, x_231.y, x_232.w);
    let x_237 : f32 = x_55.x_ScreenParams.x;
    let x_240 : f32 = x_55.x_ScreenParams.y;
    u_xlat21 = (x_237 / x_240);
    let x_242 : f32 = u_xlat21;
    u_xlat21 = (x_242 + -1.0f);
    let x_245 : f32 = x_55.x_Vignette_Settings.w;
    let x_246 : f32 = u_xlat21;
    u_xlat21 = ((x_245 * x_246) + 1.0f);
    let x_249 : f32 = u_xlat21;
    let x_252 : f32 = u_xlat1.z;
    u_xlat1.x = (x_249 * x_252);
    let x_255 : vec4<f32> = u_xlat1;
    let x_256 : vec2<f32> = vec2<f32>(x_255.x, x_255.y);
    let x_257 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_256.x, x_256.y, x_257.z, x_257.w);
    let x_259 : vec4<f32> = u_xlat1;
    let x_263 : vec2<f32> = clamp(vec2<f32>(x_259.x, x_259.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_264 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_263.x, x_263.y, x_264.z, x_264.w);
    let x_266 : vec4<f32> = u_xlat1;
    let x_268 : vec2<f32> = log2(vec2<f32>(x_266.x, x_266.y));
    let x_269 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_268.x, x_268.y, x_269.z, x_269.w);
    let x_271 : vec4<f32> = u_xlat1;
    let x_274 : vec4<f32> = x_55.x_Vignette_Settings;
    let x_276 : vec2<f32> = (vec2<f32>(x_271.x, x_271.y) * vec2<f32>(x_274.z, x_274.z));
    let x_277 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_276.x, x_276.y, x_277.z, x_277.w);
    let x_279 : vec4<f32> = u_xlat1;
    let x_281 : vec2<f32> = exp2(vec2<f32>(x_279.x, x_279.y));
    let x_282 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_281.x, x_281.y, x_282.z, x_282.w);
    let x_284 : vec4<f32> = u_xlat1;
    let x_286 : vec4<f32> = u_xlat1;
    u_xlat21 = dot(vec2<f32>(x_284.x, x_284.y), vec2<f32>(x_286.x, x_286.y));
    let x_289 : f32 = u_xlat21;
    u_xlat21 = (-(x_289) + 1.0f);
    let x_292 : f32 = u_xlat21;
    u_xlat21 = max(x_292, 0.0f);
    let x_294 : f32 = u_xlat21;
    u_xlat21 = log2(x_294);
    let x_296 : f32 = u_xlat21;
    let x_298 : f32 = x_55.x_Vignette_Settings.y;
    u_xlat21 = (x_296 * x_298);
    let x_300 : f32 = u_xlat21;
    u_xlat21 = exp2(x_300);
    let x_305 : vec3<f32> = x_55.x_Vignette_Color;
    let x_308 : vec3<f32> = (-(x_305) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_309 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_308.x, x_308.y, x_308.z, x_309.w);
    let x_311 : f32 = u_xlat21;
    let x_313 : vec4<f32> = u_xlat1;
    let x_317 : vec3<f32> = x_55.x_Vignette_Color;
    let x_318 : vec3<f32> = ((vec3<f32>(x_311, x_311, x_311) * vec3<f32>(x_313.x, x_313.y, x_313.z)) + x_317);
    let x_319 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
    let x_321 : vec3<f32> = u_xlat0;
    let x_322 : vec4<f32> = u_xlat1;
    let x_324 : vec3<f32> = (x_321 * vec3<f32>(x_322.x, x_322.y, x_322.z));
    let x_325 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_324.x, x_324.y, x_324.z, x_325.w);
    let x_328 : f32 = u_xlat1.w;
    u_xlat2.x = (x_328 + -1.0f);
    let x_331 : f32 = u_xlat21;
    let x_333 : f32 = u_xlat2.x;
    u_xlat2.w = ((x_331 * x_333) + 1.0f);
  } else {
    let x_343 : vec2<f32> = vs_TEXCOORD0;
    let x_344 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_343);
    u_xlat21 = x_344.w;
    let x_346 : f32 = u_xlat21;
    u_xlat3.x = (x_346 * 0.077399381f);
    let x_351 : f32 = u_xlat21;
    u_xlat10 = (x_351 + 0.055f);
    let x_354 : f32 = u_xlat10;
    u_xlat10 = (x_354 * 0.947867334f);
    let x_357 : f32 = u_xlat10;
    u_xlat10 = max(abs(x_357), 1.1920929e-07f);
    let x_361 : f32 = u_xlat10;
    u_xlat10 = log2(x_361);
    let x_363 : f32 = u_xlat10;
    u_xlat10 = (x_363 * 2.400000095f);
    let x_366 : f32 = u_xlat10;
    u_xlat10 = exp2(x_366);
    let x_369 : f32 = u_xlat21;
    u_xlatb21 = (0.040449999f >= x_369);
    let x_371 : bool = u_xlatb21;
    if (x_371) {
      let x_376 : f32 = u_xlat3.x;
      x_372 = x_376;
    } else {
      let x_378 : f32 = u_xlat10;
      x_372 = x_378;
    }
    let x_379 : f32 = x_372;
    u_xlat21 = x_379;
    let x_381 : vec3<f32> = x_55.x_Vignette_Color;
    let x_383 : vec3<f32> = (-(x_381) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_384 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_383.x, x_383.y, x_383.z, x_384.w);
    let x_386 : f32 = u_xlat21;
    let x_388 : vec4<f32> = u_xlat3;
    let x_392 : vec3<f32> = x_55.x_Vignette_Color;
    let x_393 : vec3<f32> = ((vec3<f32>(x_386, x_386, x_386) * vec3<f32>(x_388.x, x_388.y, x_388.z)) + x_392);
    let x_394 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_393.x, x_393.y, x_393.z, x_394.w);
    let x_396 : vec3<f32> = u_xlat0;
    let x_397 : vec4<f32> = u_xlat3;
    let x_400 : vec3<f32> = u_xlat0;
    let x_402 : vec3<f32> = ((x_396 * vec3<f32>(x_397.x, x_397.y, x_397.z)) + -(x_400));
    let x_403 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_402.x, x_402.y, x_402.z, x_403.w);
    let x_407 : f32 = x_55.x_Vignette_Opacity;
    let x_409 : vec4<f32> = u_xlat3;
    let x_412 : vec3<f32> = u_xlat0;
    let x_413 : vec3<f32> = ((vec3<f32>(x_407, x_407, x_407) * vec3<f32>(x_409.x, x_409.y, x_409.z)) + x_412);
    let x_414 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_413.x, x_413.y, x_413.z, x_414.w);
    let x_417 : f32 = u_xlat1.w;
    u_xlat0.x = (x_417 + -1.0f);
    let x_420 : f32 = u_xlat21;
    let x_422 : f32 = u_xlat0.x;
    u_xlat2.w = ((x_420 * x_422) + 1.0f);
  }
  let x_427 : vec2<f32> = vs_TEXCOORD1;
  let x_430 : vec4<f32> = x_55.x_Grain_Params2;
  let x_434 : vec4<f32> = x_55.x_Grain_Params2;
  let x_436 : vec2<f32> = ((x_427 * vec2<f32>(x_430.x, x_430.y)) + vec2<f32>(x_434.z, x_434.w));
  let x_437 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_436.x, x_436.y, x_437.z);
  let x_444 : vec3<f32> = u_xlat0;
  let x_446 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_444.x, x_444.y));
  u_xlat0 = vec3<f32>(x_446.x, x_446.y, x_446.z);
  let x_448 : vec4<f32> = u_xlat1;
  let x_449 : vec3<f32> = vec3<f32>(x_448.x, x_448.y, x_448.z);
  let x_450 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_449.x, x_449.y, x_449.z, x_450.w);
  let x_452 : vec4<f32> = u_xlat3;
  let x_456 : vec3<f32> = clamp(vec3<f32>(x_452.x, x_452.y, x_452.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_457 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_456.x, x_456.y, x_456.z, x_457.w);
  let x_459 : vec4<f32> = u_xlat3;
  u_xlat21 = dot(vec3<f32>(x_459.x, x_459.y, x_459.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_466 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_466);
  let x_470 : f32 = x_55.x_Grain_Params1.x;
  let x_471 : f32 = u_xlat21;
  u_xlat21 = ((x_470 * -(x_471)) + 1.0f);
  let x_475 : vec3<f32> = u_xlat0;
  let x_476 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_475 * vec3<f32>(x_476.x, x_476.y, x_476.z));
  let x_479 : vec3<f32> = u_xlat0;
  let x_481 : f32 = x_55.x_Grain_Params1.y;
  let x_483 : f32 = x_55.x_Grain_Params1.y;
  let x_485 : f32 = x_55.x_Grain_Params1.y;
  u_xlat0 = (x_479 * vec3<f32>(x_481, x_483, x_485));
  let x_488 : vec3<f32> = u_xlat0;
  let x_489 : f32 = u_xlat21;
  let x_492 : vec4<f32> = u_xlat1;
  let x_494 : vec3<f32> = ((x_488 * vec3<f32>(x_489, x_489, x_489)) + vec3<f32>(x_492.x, x_492.y, x_492.z));
  let x_495 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_494.x, x_494.y, x_494.z, x_495.w);
  let x_497 : vec4<f32> = u_xlat2;
  u_xlat2 = x_497;
  let x_498 : vec4<f32> = u_xlat2;
  u_xlat2 = clamp(x_498, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_502 : vec4<f32> = u_xlat2;
  u_xlat0 = (vec3<f32>(x_502.z, x_502.x, x_502.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_507 : vec4<f32> = u_xlat2;
  let x_510 : vec3<f32> = max(vec3<f32>(x_507.z, x_507.x, x_507.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_511 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_510.x, x_510.y, x_510.z, x_511.w);
  let x_513 : vec4<f32> = u_xlat1;
  let x_515 : vec3<f32> = log2(vec3<f32>(x_513.x, x_513.y, x_513.z));
  let x_516 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_515.x, x_515.y, x_515.z, x_516.w);
  let x_518 : vec4<f32> = u_xlat1;
  let x_522 : vec3<f32> = (vec3<f32>(x_518.x, x_518.y, x_518.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_523 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_522.x, x_522.y, x_522.z, x_523.w);
  let x_525 : vec4<f32> = u_xlat1;
  let x_527 : vec3<f32> = exp2(vec3<f32>(x_525.x, x_525.y, x_525.z));
  let x_528 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_527.x, x_527.y, x_527.z, x_528.w);
  let x_530 : vec4<f32> = u_xlat1;
  let x_537 : vec3<f32> = ((vec3<f32>(x_530.x, x_530.y, x_530.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_538 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_537.x, x_537.y, x_537.z, x_538.w);
  let x_545 : vec4<f32> = u_xlat2;
  let x_548 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_545.z, x_545.x, x_545.y, x_545.z));
  u_xlatb3 = vec3<bool>(x_548.x, x_548.y, x_548.z);
  let x_551 : vec3<f32> = u_xlat0;
  hlslcc_movcTemp = x_551;
  let x_553 : bool = u_xlatb3.x;
  if (x_553) {
    let x_558 : f32 = u_xlat0.x;
    x_554 = x_558;
  } else {
    let x_561 : f32 = u_xlat1.x;
    x_554 = x_561;
  }
  let x_562 : f32 = x_554;
  hlslcc_movcTemp.x = x_562;
  let x_565 : bool = u_xlatb3.y;
  if (x_565) {
    let x_570 : f32 = u_xlat0.y;
    x_566 = x_570;
  } else {
    let x_573 : f32 = u_xlat1.y;
    x_566 = x_573;
  }
  let x_574 : f32 = x_566;
  hlslcc_movcTemp.y = x_574;
  let x_577 : bool = u_xlatb3.z;
  if (x_577) {
    let x_582 : f32 = u_xlat0.z;
    x_578 = x_582;
  } else {
    let x_585 : f32 = u_xlat1.z;
    x_578 = x_585;
  }
  let x_586 : f32 = x_578;
  hlslcc_movcTemp.z = x_586;
  let x_588 : vec3<f32> = hlslcc_movcTemp;
  u_xlat0 = x_588;
  let x_589 : vec3<f32> = u_xlat0;
  let x_592 : vec3<f32> = x_55.x_Lut2D_Params;
  u_xlat7 = (x_589 * vec3<f32>(x_592.z, x_592.z, x_592.z));
  let x_596 : f32 = u_xlat7.x;
  u_xlat7.x = floor(x_596);
  let x_600 : vec3<f32> = x_55.x_Lut2D_Params;
  let x_603 : vec2<f32> = (vec2<f32>(x_600.x, x_600.y) * vec2<f32>(0.5f, 0.5f));
  let x_604 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_603.x, x_603.y, x_604.z, x_604.w);
  let x_606 : vec3<f32> = u_xlat7;
  let x_609 : vec3<f32> = x_55.x_Lut2D_Params;
  let x_612 : vec4<f32> = u_xlat1;
  let x_614 : vec2<f32> = ((vec2<f32>(x_606.y, x_606.z) * vec2<f32>(x_609.x, x_609.y)) + vec2<f32>(x_612.x, x_612.y));
  let x_615 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_615.x, x_614.x, x_614.y, x_615.w);
  let x_618 : f32 = u_xlat7.x;
  let x_620 : f32 = x_55.x_Lut2D_Params.y;
  let x_623 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_618 * x_620) + x_623);
  let x_631 : vec4<f32> = u_xlat1;
  let x_633 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_631.x, x_631.z));
  let x_634 : vec3<f32> = vec3<f32>(x_633.x, x_633.y, x_633.z);
  let x_635 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_634.x, x_634.y, x_634.z, x_635.w);
  let x_638 : f32 = x_55.x_Lut2D_Params.y;
  u_xlat4.x = x_638;
  u_xlat4.y = 0.0f;
  let x_643 : vec4<f32> = u_xlat1;
  let x_645 : vec4<f32> = u_xlat4;
  u_xlat14 = (vec2<f32>(x_643.x, x_643.z) + vec2<f32>(x_645.x, x_645.y));
  let x_651 : vec2<f32> = u_xlat14;
  let x_652 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_651);
  let x_653 : vec3<f32> = vec3<f32>(x_652.x, x_652.y, x_652.z);
  let x_654 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_653.x, x_653.y, x_653.z, x_654.w);
  let x_657 : f32 = u_xlat0.x;
  let x_659 : f32 = x_55.x_Lut2D_Params.z;
  let x_662 : f32 = u_xlat7.x;
  u_xlat0.x = ((x_657 * x_659) + -(x_662));
  let x_666 : vec4<f32> = u_xlat3;
  let x_669 : vec4<f32> = u_xlat1;
  u_xlat7 = (-(vec3<f32>(x_666.x, x_666.y, x_666.z)) + vec3<f32>(x_669.x, x_669.y, x_669.z));
  let x_672 : vec3<f32> = u_xlat0;
  let x_674 : vec3<f32> = u_xlat7;
  let x_676 : vec4<f32> = u_xlat3;
  u_xlat0 = ((vec3<f32>(x_672.x, x_672.x, x_672.x) * x_674) + vec3<f32>(x_676.x, x_676.y, x_676.z));
  let x_679 : vec3<f32> = u_xlat0;
  let x_681 : vec3<f32> = (x_679 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_682 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_681.x, x_681.y, x_681.z, x_682.w);
  let x_684 : vec3<f32> = u_xlat0;
  let x_686 : vec3<f32> = (x_684 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_687 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_686.x, x_686.y, x_686.z, x_687.w);
  let x_689 : vec4<f32> = u_xlat3;
  let x_692 : vec3<f32> = (vec3<f32>(x_689.x, x_689.y, x_689.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_693 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_692.x, x_692.y, x_692.z, x_693.w);
  let x_695 : vec4<f32> = u_xlat3;
  let x_698 : vec3<f32> = max(abs(vec3<f32>(x_695.x, x_695.y, x_695.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_699 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_698.x, x_698.y, x_698.z, x_699.w);
  let x_701 : vec4<f32> = u_xlat3;
  let x_703 : vec3<f32> = log2(vec3<f32>(x_701.x, x_701.y, x_701.z));
  let x_704 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_703.x, x_703.y, x_703.z, x_704.w);
  let x_706 : vec4<f32> = u_xlat3;
  let x_709 : vec3<f32> = (vec3<f32>(x_706.x, x_706.y, x_706.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_710 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_709.x, x_709.y, x_709.z, x_710.w);
  let x_712 : vec4<f32> = u_xlat3;
  let x_714 : vec3<f32> = exp2(vec3<f32>(x_712.x, x_712.y, x_712.z));
  let x_715 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_714.x, x_714.y, x_714.z, x_715.w);
  let x_719 : vec3<f32> = u_xlat0;
  let x_721 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_719.x, x_719.y, x_719.z, x_719.x));
  u_xlatb0 = vec3<bool>(x_721.x, x_721.y, x_721.z);
  let x_724 : bool = u_xlatb0.x;
  if (x_724) {
    let x_729 : f32 = u_xlat1.x;
    x_725 = x_729;
  } else {
    let x_732 : f32 = u_xlat3.x;
    x_725 = x_732;
  }
  let x_733 : f32 = x_725;
  u_xlat2.x = x_733;
  let x_736 : bool = u_xlatb0.y;
  if (x_736) {
    let x_741 : f32 = u_xlat1.y;
    x_737 = x_741;
  } else {
    let x_744 : f32 = u_xlat3.y;
    x_737 = x_744;
  }
  let x_745 : f32 = x_737;
  u_xlat2.y = x_745;
  let x_748 : bool = u_xlatb0.z;
  if (x_748) {
    let x_753 : f32 = u_xlat1.z;
    x_749 = x_753;
  } else {
    let x_756 : f32 = u_xlat3.z;
    x_749 = x_756;
  }
  let x_757 : f32 = x_749;
  u_xlat2.z = x_757;
  let x_761 : f32 = x_55.x_LumaInAlpha;
  u_xlatb0.x = (0.5f < x_761);
  let x_765 : bool = u_xlatb0.x;
  if (x_765) {
    let x_768 : vec4<f32> = u_xlat2;
    u_xlat0 = vec3<f32>(x_768.x, x_768.y, x_768.z);
    let x_770 : vec3<f32> = u_xlat0;
    u_xlat0 = clamp(x_770, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_774 : vec3<f32> = u_xlat0;
    u_xlat2.w = dot(x_774, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_779 : vec4<f32> = u_xlat2;
  SV_Target0 = x_779;
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

