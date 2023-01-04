struct PGlobals {
  x_ScreenParams : vec4<f32>,
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_Dithering_Coords : vec4<f32>,
  x_ChromaticAberration_Amount : f32,
  @size(12)
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
}

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(3) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat7 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_55 : PGlobals;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(4) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(10) var sampler_ChromaticAberration_SpectralLut : sampler;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlatb21 : bool;

var<private> u_xlat21 : f32;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(5) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(11) var sampler_Vignette_Mask : sampler;

var<private> u_xlat9 : f32;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(6) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_GrainTex : sampler;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_DitheringTex : sampler;

var<private> u_xlatb0 : vec3<bool>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_376 : f32;
  var x_601 : f32;
  var x_613 : f32;
  var x_625 : f32;
  var x_687 : f32;
  var x_699 : f32;
  var x_711 : f32;
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
    let x_333 : f32 = u_xlat21;
    let x_335 : f32 = u_xlat2.x;
    SV_Target0.w = ((x_333 * x_335) + 1.0f);
  } else {
    let x_346 : vec2<f32> = vs_TEXCOORD0;
    let x_347 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_346);
    u_xlat21 = x_347.w;
    let x_349 : f32 = u_xlat21;
    u_xlat2.x = (x_349 * 0.077399381f);
    let x_354 : f32 = u_xlat21;
    u_xlat9 = (x_354 + 0.055f);
    let x_357 : f32 = u_xlat9;
    u_xlat9 = (x_357 * 0.947867334f);
    let x_360 : f32 = u_xlat9;
    u_xlat9 = max(abs(x_360), 1.1920929e-07f);
    let x_364 : f32 = u_xlat9;
    u_xlat9 = log2(x_364);
    let x_366 : f32 = u_xlat9;
    u_xlat9 = (x_366 * 2.400000095f);
    let x_369 : f32 = u_xlat9;
    u_xlat9 = exp2(x_369);
    let x_372 : f32 = u_xlat21;
    u_xlatb21 = (0.040449999f >= x_372);
    let x_374 : bool = u_xlatb21;
    if (x_374) {
      let x_380 : f32 = u_xlat2.x;
      x_376 = x_380;
    } else {
      let x_382 : f32 = u_xlat9;
      x_376 = x_382;
    }
    let x_383 : f32 = x_376;
    u_xlat21 = x_383;
    let x_385 : vec3<f32> = x_55.x_Vignette_Color;
    let x_387 : vec3<f32> = (-(x_385) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_388 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_387.x, x_387.y, x_387.z, x_388.w);
    let x_390 : f32 = u_xlat21;
    let x_392 : vec4<f32> = u_xlat2;
    let x_396 : vec3<f32> = x_55.x_Vignette_Color;
    let x_397 : vec3<f32> = ((vec3<f32>(x_390, x_390, x_390) * vec3<f32>(x_392.x, x_392.y, x_392.z)) + x_396);
    let x_398 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_397.x, x_397.y, x_397.z, x_398.w);
    let x_400 : vec3<f32> = u_xlat0;
    let x_401 : vec4<f32> = u_xlat2;
    let x_404 : vec3<f32> = u_xlat0;
    let x_406 : vec3<f32> = ((x_400 * vec3<f32>(x_401.x, x_401.y, x_401.z)) + -(x_404));
    let x_407 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_406.x, x_406.y, x_406.z, x_407.w);
    let x_411 : f32 = x_55.x_Vignette_Opacity;
    let x_413 : vec4<f32> = u_xlat2;
    let x_416 : vec3<f32> = u_xlat0;
    let x_417 : vec3<f32> = ((vec3<f32>(x_411, x_411, x_411) * vec3<f32>(x_413.x, x_413.y, x_413.z)) + x_416);
    let x_418 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_417.x, x_417.y, x_417.z, x_418.w);
    let x_421 : f32 = u_xlat1.w;
    u_xlat0.x = (x_421 + -1.0f);
    let x_424 : f32 = u_xlat21;
    let x_426 : f32 = u_xlat0.x;
    SV_Target0.w = ((x_424 * x_426) + 1.0f);
  }
  let x_431 : vec2<f32> = vs_TEXCOORD1;
  let x_434 : vec4<f32> = x_55.x_Grain_Params2;
  let x_438 : vec4<f32> = x_55.x_Grain_Params2;
  let x_440 : vec2<f32> = ((x_431 * vec2<f32>(x_434.x, x_434.y)) + vec2<f32>(x_438.z, x_438.w));
  let x_441 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_440.x, x_440.y, x_441.z);
  let x_448 : vec3<f32> = u_xlat0;
  let x_450 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_448.x, x_448.y));
  u_xlat0 = vec3<f32>(x_450.x, x_450.y, x_450.z);
  let x_452 : vec4<f32> = u_xlat1;
  let x_453 : vec3<f32> = vec3<f32>(x_452.x, x_452.y, x_452.z);
  let x_454 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_453.x, x_453.y, x_453.z, x_454.w);
  let x_456 : vec4<f32> = u_xlat2;
  let x_460 : vec3<f32> = clamp(vec3<f32>(x_456.x, x_456.y, x_456.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_461 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_460.x, x_460.y, x_460.z, x_461.w);
  let x_463 : vec4<f32> = u_xlat2;
  u_xlat21 = dot(vec3<f32>(x_463.x, x_463.y, x_463.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_470 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_470);
  let x_474 : f32 = x_55.x_Grain_Params1.x;
  let x_475 : f32 = u_xlat21;
  u_xlat21 = ((x_474 * -(x_475)) + 1.0f);
  let x_479 : vec3<f32> = u_xlat0;
  let x_480 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_479 * vec3<f32>(x_480.x, x_480.y, x_480.z));
  let x_483 : vec3<f32> = u_xlat0;
  let x_485 : f32 = x_55.x_Grain_Params1.y;
  let x_487 : f32 = x_55.x_Grain_Params1.y;
  let x_489 : f32 = x_55.x_Grain_Params1.y;
  u_xlat0 = (x_483 * vec3<f32>(x_485, x_487, x_489));
  let x_492 : vec3<f32> = u_xlat0;
  let x_493 : f32 = u_xlat21;
  let x_496 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_492 * vec3<f32>(x_493, x_493, x_493)) + vec3<f32>(x_496.x, x_496.y, x_496.z));
  let x_499 : vec2<f32> = vs_TEXCOORD0;
  let x_502 : vec4<f32> = x_55.x_Dithering_Coords;
  let x_506 : vec4<f32> = x_55.x_Dithering_Coords;
  let x_508 : vec2<f32> = ((x_499 * vec2<f32>(x_502.x, x_502.y)) + vec2<f32>(x_506.z, x_506.w));
  let x_509 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_508.x, x_508.y, x_509.z, x_509.w);
  let x_516 : vec4<f32> = u_xlat1;
  let x_518 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_516.x, x_516.y));
  u_xlat21 = x_518.w;
  let x_520 : f32 = u_xlat21;
  u_xlat21 = ((x_520 * 2.0f) + -1.0f);
  let x_523 : f32 = u_xlat21;
  u_xlat1.x = ((x_523 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_529 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_529, 0.0f, 1.0f);
  let x_533 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_533 * 2.0f) + -1.0f);
  let x_537 : f32 = u_xlat21;
  u_xlat21 = (-(abs(x_537)) + 1.0f);
  let x_541 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_541);
  let x_543 : f32 = u_xlat21;
  u_xlat21 = (-(x_543) + 1.0f);
  let x_546 : f32 = u_xlat21;
  let x_548 : f32 = u_xlat1.x;
  u_xlat21 = (x_546 * x_548);
  let x_550 : vec3<f32> = u_xlat0;
  let x_553 : vec3<f32> = (x_550 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_554 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_553.x, x_553.y, x_553.z, x_554.w);
  let x_556 : vec3<f32> = u_xlat0;
  let x_559 : vec3<f32> = max(abs(x_556), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_560 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_559.x, x_559.y, x_559.z, x_560.w);
  let x_562 : vec4<f32> = u_xlat2;
  let x_564 : vec3<f32> = log2(vec3<f32>(x_562.x, x_562.y, x_562.z));
  let x_565 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_564.x, x_564.y, x_564.z, x_565.w);
  let x_567 : vec4<f32> = u_xlat2;
  let x_571 : vec3<f32> = (vec3<f32>(x_567.x, x_567.y, x_567.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_572 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_571.x, x_571.y, x_571.z, x_572.w);
  let x_574 : vec4<f32> = u_xlat2;
  let x_576 : vec3<f32> = exp2(vec3<f32>(x_574.x, x_574.y, x_574.z));
  let x_577 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_576.x, x_576.y, x_576.z, x_577.w);
  let x_579 : vec4<f32> = u_xlat2;
  let x_586 : vec3<f32> = ((vec3<f32>(x_579.x, x_579.y, x_579.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_587 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_586.x, x_586.y, x_586.z, x_587.w);
  let x_594 : vec3<f32> = u_xlat0;
  let x_597 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_594.x, x_594.y, x_594.z, x_594.x));
  u_xlatb0 = vec3<bool>(x_597.x, x_597.y, x_597.z);
  let x_600 : bool = u_xlatb0.x;
  if (x_600) {
    let x_605 : f32 = u_xlat1.x;
    x_601 = x_605;
  } else {
    let x_608 : f32 = u_xlat2.x;
    x_601 = x_608;
  }
  let x_609 : f32 = x_601;
  u_xlat0.x = x_609;
  let x_612 : bool = u_xlatb0.y;
  if (x_612) {
    let x_617 : f32 = u_xlat1.y;
    x_613 = x_617;
  } else {
    let x_620 : f32 = u_xlat2.y;
    x_613 = x_620;
  }
  let x_621 : f32 = x_613;
  u_xlat0.y = x_621;
  let x_624 : bool = u_xlatb0.z;
  if (x_624) {
    let x_629 : f32 = u_xlat1.z;
    x_625 = x_629;
  } else {
    let x_632 : f32 = u_xlat2.z;
    x_625 = x_632;
  }
  let x_633 : f32 = x_625;
  u_xlat0.z = x_633;
  let x_635 : f32 = u_xlat21;
  let x_640 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_635, x_635, x_635) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + x_640);
  let x_642 : vec3<f32> = u_xlat0;
  let x_644 : vec3<f32> = (x_642 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_645 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_644.x, x_644.y, x_644.z, x_645.w);
  let x_647 : vec3<f32> = u_xlat0;
  let x_649 : vec3<f32> = (x_647 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_650 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_649.x, x_649.y, x_649.z, x_650.w);
  let x_652 : vec4<f32> = u_xlat2;
  let x_655 : vec3<f32> = (vec3<f32>(x_652.x, x_652.y, x_652.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_656 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_655.x, x_655.y, x_655.z, x_656.w);
  let x_658 : vec4<f32> = u_xlat2;
  let x_661 : vec3<f32> = max(abs(vec3<f32>(x_658.x, x_658.y, x_658.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_662 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_661.x, x_661.y, x_661.z, x_662.w);
  let x_664 : vec4<f32> = u_xlat2;
  let x_666 : vec3<f32> = log2(vec3<f32>(x_664.x, x_664.y, x_664.z));
  let x_667 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_666.x, x_666.y, x_666.z, x_667.w);
  let x_669 : vec4<f32> = u_xlat2;
  let x_672 : vec3<f32> = (vec3<f32>(x_669.x, x_669.y, x_669.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_673 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_672.x, x_672.y, x_672.z, x_673.w);
  let x_675 : vec4<f32> = u_xlat2;
  let x_677 : vec3<f32> = exp2(vec3<f32>(x_675.x, x_675.y, x_675.z));
  let x_678 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_677.x, x_677.y, x_677.z, x_678.w);
  let x_681 : vec3<f32> = u_xlat0;
  let x_683 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_681.x, x_681.y, x_681.z, x_681.x));
  u_xlatb0 = vec3<bool>(x_683.x, x_683.y, x_683.z);
  let x_686 : bool = u_xlatb0.x;
  if (x_686) {
    let x_691 : f32 = u_xlat1.x;
    x_687 = x_691;
  } else {
    let x_694 : f32 = u_xlat2.x;
    x_687 = x_694;
  }
  let x_695 : f32 = x_687;
  SV_Target0.x = x_695;
  let x_698 : bool = u_xlatb0.y;
  if (x_698) {
    let x_703 : f32 = u_xlat1.y;
    x_699 = x_703;
  } else {
    let x_706 : f32 = u_xlat2.y;
    x_699 = x_706;
  }
  let x_707 : f32 = x_699;
  SV_Target0.y = x_707;
  let x_710 : bool = u_xlatb0.z;
  if (x_710) {
    let x_715 : f32 = u_xlat1.z;
    x_711 = x_715;
  } else {
    let x_718 : f32 = u_xlat2.z;
    x_711 = x_718;
  }
  let x_719 : f32 = x_711;
  SV_Target0.z = x_719;
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

