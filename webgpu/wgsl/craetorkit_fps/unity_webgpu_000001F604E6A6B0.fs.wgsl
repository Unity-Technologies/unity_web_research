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

@group(0) @binding(4) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(9) var sampler_Vignette_Mask : sampler;

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
  var u_xlatb21 : bool;
  var u_xlat21 : f32;
  var u_xlat8 : f32;
  var x_372 : f32;
  var u_xlatb3 : vec3<bool>;
  var hlslcc_movcTemp : vec3<f32>;
  var x_483 : f32;
  var x_495 : f32;
  var x_507 : f32;
  var u_xlat14 : vec2<f32>;
  var u_xlatb0 : vec3<bool>;
  var x_654 : f32;
  var x_666 : f32;
  var x_678 : f32;
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
    let x_325 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_324.x, x_324.y, x_324.z, x_325.w);
    let x_328 : f32 = u_xlat1.w;
    u_xlat1.x = (x_328 + -1.0f);
    let x_331 : f32 = u_xlat21;
    let x_333 : f32 = u_xlat1.x;
    u_xlat2.w = ((x_331 * x_333) + 1.0f);
  } else {
    let x_343 : vec2<f32> = vs_TEXCOORD0;
    let x_344 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_343);
    u_xlat21 = x_344.w;
    let x_346 : f32 = u_xlat21;
    u_xlat1.x = (x_346 * 0.077399381f);
    let x_351 : f32 = u_xlat21;
    u_xlat8 = (x_351 + 0.055f);
    let x_354 : f32 = u_xlat8;
    u_xlat8 = (x_354 * 0.947867334f);
    let x_357 : f32 = u_xlat8;
    u_xlat8 = max(abs(x_357), 1.1920929e-07f);
    let x_361 : f32 = u_xlat8;
    u_xlat8 = log2(x_361);
    let x_363 : f32 = u_xlat8;
    u_xlat8 = (x_363 * 2.400000095f);
    let x_366 : f32 = u_xlat8;
    u_xlat8 = exp2(x_366);
    let x_369 : f32 = u_xlat21;
    u_xlatb21 = (0.040449999f >= x_369);
    let x_371 : bool = u_xlatb21;
    if (x_371) {
      let x_376 : f32 = u_xlat1.x;
      x_372 = x_376;
    } else {
      let x_378 : f32 = u_xlat8;
      x_372 = x_378;
    }
    let x_379 : f32 = x_372;
    u_xlat21 = x_379;
    let x_381 : vec3<f32> = x_55.x_Vignette_Color;
    let x_383 : vec3<f32> = (-(x_381) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_384 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_383.x, x_383.y, x_383.z, x_384.w);
    let x_386 : f32 = u_xlat21;
    let x_388 : vec4<f32> = u_xlat1;
    let x_392 : vec3<f32> = x_55.x_Vignette_Color;
    let x_393 : vec3<f32> = ((vec3<f32>(x_386, x_386, x_386) * vec3<f32>(x_388.x, x_388.y, x_388.z)) + x_392);
    let x_394 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_393.x, x_393.y, x_393.z, x_394.w);
    let x_396 : vec3<f32> = u_xlat0;
    let x_397 : vec4<f32> = u_xlat1;
    let x_400 : vec3<f32> = u_xlat0;
    let x_402 : vec3<f32> = ((x_396 * vec3<f32>(x_397.x, x_397.y, x_397.z)) + -(x_400));
    let x_403 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_402.x, x_402.y, x_402.z, x_403.w);
    let x_407 : f32 = x_55.x_Vignette_Opacity;
    let x_409 : vec4<f32> = u_xlat1;
    let x_412 : vec3<f32> = u_xlat0;
    let x_413 : vec3<f32> = ((vec3<f32>(x_407, x_407, x_407) * vec3<f32>(x_409.x, x_409.y, x_409.z)) + x_412);
    let x_414 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_413.x, x_413.y, x_413.z, x_414.w);
    let x_417 : f32 = u_xlat1.w;
    u_xlat0.x = (x_417 + -1.0f);
    let x_420 : f32 = u_xlat21;
    let x_422 : f32 = u_xlat0.x;
    u_xlat2.w = ((x_420 * x_422) + 1.0f);
  }
  let x_426 : vec4<f32> = u_xlat2;
  u_xlat2 = x_426;
  let x_427 : vec4<f32> = u_xlat2;
  u_xlat2 = clamp(x_427, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_431 : vec4<f32> = u_xlat2;
  u_xlat0 = (vec3<f32>(x_431.z, x_431.x, x_431.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_436 : vec4<f32> = u_xlat2;
  let x_439 : vec3<f32> = max(vec3<f32>(x_436.z, x_436.x, x_436.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_440 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_439.x, x_439.y, x_439.z, x_440.w);
  let x_442 : vec4<f32> = u_xlat1;
  let x_444 : vec3<f32> = log2(vec3<f32>(x_442.x, x_442.y, x_442.z));
  let x_445 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_444.x, x_444.y, x_444.z, x_445.w);
  let x_447 : vec4<f32> = u_xlat1;
  let x_451 : vec3<f32> = (vec3<f32>(x_447.x, x_447.y, x_447.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_452 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_451.x, x_451.y, x_451.z, x_452.w);
  let x_454 : vec4<f32> = u_xlat1;
  let x_456 : vec3<f32> = exp2(vec3<f32>(x_454.x, x_454.y, x_454.z));
  let x_457 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_456.x, x_456.y, x_456.z, x_457.w);
  let x_459 : vec4<f32> = u_xlat1;
  let x_466 : vec3<f32> = ((vec3<f32>(x_459.x, x_459.y, x_459.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_467 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_466.x, x_466.y, x_466.z, x_467.w);
  let x_474 : vec4<f32> = u_xlat2;
  let x_477 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_474.z, x_474.x, x_474.y, x_474.z));
  u_xlatb3 = vec3<bool>(x_477.x, x_477.y, x_477.z);
  let x_480 : vec3<f32> = u_xlat0;
  hlslcc_movcTemp = x_480;
  let x_482 : bool = u_xlatb3.x;
  if (x_482) {
    let x_487 : f32 = u_xlat0.x;
    x_483 = x_487;
  } else {
    let x_490 : f32 = u_xlat1.x;
    x_483 = x_490;
  }
  let x_491 : f32 = x_483;
  hlslcc_movcTemp.x = x_491;
  let x_494 : bool = u_xlatb3.y;
  if (x_494) {
    let x_499 : f32 = u_xlat0.y;
    x_495 = x_499;
  } else {
    let x_502 : f32 = u_xlat1.y;
    x_495 = x_502;
  }
  let x_503 : f32 = x_495;
  hlslcc_movcTemp.y = x_503;
  let x_506 : bool = u_xlatb3.z;
  if (x_506) {
    let x_511 : f32 = u_xlat0.z;
    x_507 = x_511;
  } else {
    let x_514 : f32 = u_xlat1.z;
    x_507 = x_514;
  }
  let x_515 : f32 = x_507;
  hlslcc_movcTemp.z = x_515;
  let x_517 : vec3<f32> = hlslcc_movcTemp;
  u_xlat0 = x_517;
  let x_518 : vec3<f32> = u_xlat0;
  let x_521 : vec3<f32> = x_55.x_Lut2D_Params;
  u_xlat7 = (x_518 * vec3<f32>(x_521.z, x_521.z, x_521.z));
  let x_525 : f32 = u_xlat7.x;
  u_xlat7.x = floor(x_525);
  let x_529 : vec3<f32> = x_55.x_Lut2D_Params;
  let x_532 : vec2<f32> = (vec2<f32>(x_529.x, x_529.y) * vec2<f32>(0.5f, 0.5f));
  let x_533 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_532.x, x_532.y, x_533.z, x_533.w);
  let x_535 : vec3<f32> = u_xlat7;
  let x_538 : vec3<f32> = x_55.x_Lut2D_Params;
  let x_541 : vec4<f32> = u_xlat1;
  let x_543 : vec2<f32> = ((vec2<f32>(x_535.y, x_535.z) * vec2<f32>(x_538.x, x_538.y)) + vec2<f32>(x_541.x, x_541.y));
  let x_544 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_544.x, x_543.x, x_543.y, x_544.w);
  let x_547 : f32 = u_xlat7.x;
  let x_549 : f32 = x_55.x_Lut2D_Params.y;
  let x_552 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_547 * x_549) + x_552);
  let x_560 : vec4<f32> = u_xlat1;
  let x_562 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_560.x, x_560.z));
  let x_563 : vec3<f32> = vec3<f32>(x_562.x, x_562.y, x_562.z);
  let x_564 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_563.x, x_563.y, x_563.z, x_564.w);
  let x_567 : f32 = x_55.x_Lut2D_Params.y;
  u_xlat4.x = x_567;
  u_xlat4.y = 0.0f;
  let x_572 : vec4<f32> = u_xlat1;
  let x_574 : vec4<f32> = u_xlat4;
  u_xlat14 = (vec2<f32>(x_572.x, x_572.z) + vec2<f32>(x_574.x, x_574.y));
  let x_580 : vec2<f32> = u_xlat14;
  let x_581 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_580);
  let x_582 : vec3<f32> = vec3<f32>(x_581.x, x_581.y, x_581.z);
  let x_583 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_582.x, x_582.y, x_582.z, x_583.w);
  let x_586 : f32 = u_xlat0.x;
  let x_588 : f32 = x_55.x_Lut2D_Params.z;
  let x_591 : f32 = u_xlat7.x;
  u_xlat0.x = ((x_586 * x_588) + -(x_591));
  let x_595 : vec4<f32> = u_xlat3;
  let x_598 : vec4<f32> = u_xlat1;
  u_xlat7 = (-(vec3<f32>(x_595.x, x_595.y, x_595.z)) + vec3<f32>(x_598.x, x_598.y, x_598.z));
  let x_601 : vec3<f32> = u_xlat0;
  let x_603 : vec3<f32> = u_xlat7;
  let x_605 : vec4<f32> = u_xlat3;
  u_xlat0 = ((vec3<f32>(x_601.x, x_601.x, x_601.x) * x_603) + vec3<f32>(x_605.x, x_605.y, x_605.z));
  let x_608 : vec3<f32> = u_xlat0;
  let x_610 : vec3<f32> = (x_608 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_611 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_610.x, x_610.y, x_610.z, x_611.w);
  let x_613 : vec3<f32> = u_xlat0;
  let x_615 : vec3<f32> = (x_613 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_616 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_615.x, x_615.y, x_615.z, x_616.w);
  let x_618 : vec4<f32> = u_xlat3;
  let x_621 : vec3<f32> = (vec3<f32>(x_618.x, x_618.y, x_618.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_622 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_621.x, x_621.y, x_621.z, x_622.w);
  let x_624 : vec4<f32> = u_xlat3;
  let x_627 : vec3<f32> = max(abs(vec3<f32>(x_624.x, x_624.y, x_624.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_628 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_627.x, x_627.y, x_627.z, x_628.w);
  let x_630 : vec4<f32> = u_xlat3;
  let x_632 : vec3<f32> = log2(vec3<f32>(x_630.x, x_630.y, x_630.z));
  let x_633 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_632.x, x_632.y, x_632.z, x_633.w);
  let x_635 : vec4<f32> = u_xlat3;
  let x_638 : vec3<f32> = (vec3<f32>(x_635.x, x_635.y, x_635.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_639 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_638.x, x_638.y, x_638.z, x_639.w);
  let x_641 : vec4<f32> = u_xlat3;
  let x_643 : vec3<f32> = exp2(vec3<f32>(x_641.x, x_641.y, x_641.z));
  let x_644 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_643.x, x_643.y, x_643.z, x_644.w);
  let x_648 : vec3<f32> = u_xlat0;
  let x_650 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_648.x, x_648.y, x_648.z, x_648.x));
  u_xlatb0 = vec3<bool>(x_650.x, x_650.y, x_650.z);
  let x_653 : bool = u_xlatb0.x;
  if (x_653) {
    let x_658 : f32 = u_xlat1.x;
    x_654 = x_658;
  } else {
    let x_661 : f32 = u_xlat3.x;
    x_654 = x_661;
  }
  let x_662 : f32 = x_654;
  u_xlat2.x = x_662;
  let x_665 : bool = u_xlatb0.y;
  if (x_665) {
    let x_670 : f32 = u_xlat1.y;
    x_666 = x_670;
  } else {
    let x_673 : f32 = u_xlat3.y;
    x_666 = x_673;
  }
  let x_674 : f32 = x_666;
  u_xlat2.y = x_674;
  let x_677 : bool = u_xlatb0.z;
  if (x_677) {
    let x_682 : f32 = u_xlat1.z;
    x_678 = x_682;
  } else {
    let x_685 : f32 = u_xlat3.z;
    x_678 = x_685;
  }
  let x_686 : f32 = x_678;
  u_xlat2.z = x_686;
  let x_690 : f32 = x_55.x_LumaInAlpha;
  u_xlatb0.x = (0.5f < x_690);
  let x_694 : bool = u_xlatb0.x;
  if (x_694) {
    let x_697 : vec4<f32> = u_xlat2;
    u_xlat0 = vec3<f32>(x_697.x, x_697.y, x_697.z);
    let x_699 : vec3<f32> = u_xlat0;
    u_xlat0 = clamp(x_699, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_703 : vec3<f32> = u_xlat0;
    u_xlat2.w = dot(x_703, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_712 : vec4<f32> = u_xlat2;
  SV_Target0 = x_712;
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

