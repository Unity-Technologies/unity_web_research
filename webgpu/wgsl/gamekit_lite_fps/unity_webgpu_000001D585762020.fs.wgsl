struct PGlobals {
  x_ScreenParams : vec4<f32>,
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
  x_Vignette_Color : vec3<f32>,
  @size(4)
  padding_3 : u32,
  x_Vignette_Center : vec2<f32>,
  @size(8)
  padding_4 : u32,
  x_Vignette_Settings : vec4<f32>,
  x_Vignette_Opacity : f32,
  x_Vignette_Mode : f32,
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

@group(0) @binding(6) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(12) var sampler_Vignette_Mask : sampler;

var<private> u_xlat8 : f32;

var<private> u_xlatb2 : vec3<bool>;

@group(0) @binding(5) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(11) var sampler_Lut2D : sampler;

var<private> u_xlat14 : vec2<f32>;

var<private> u_xlatb0 : vec3<bool>;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_DitheringTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_373 : f32;
  var hlslcc_movcTemp : vec3<f32>;
  var x_485 : f32;
  var x_497 : f32;
  var x_509 : f32;
  var x_656 : f32;
  var x_668 : f32;
  var x_680 : f32;
  var x_777 : f32;
  var x_789 : f32;
  var x_801 : f32;
  var x_860 : f32;
  var x_873 : f32;
  var x_885 : f32;
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
      let x_377 : f32 = u_xlat1.x;
      x_373 = x_377;
    } else {
      let x_379 : f32 = u_xlat8;
      x_373 = x_379;
    }
    let x_380 : f32 = x_373;
    u_xlat21 = x_380;
    let x_382 : vec3<f32> = x_55.x_Vignette_Color;
    let x_384 : vec3<f32> = (-(x_382) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_385 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_384.x, x_384.y, x_384.z, x_385.w);
    let x_387 : f32 = u_xlat21;
    let x_389 : vec4<f32> = u_xlat1;
    let x_393 : vec3<f32> = x_55.x_Vignette_Color;
    let x_394 : vec3<f32> = ((vec3<f32>(x_387, x_387, x_387) * vec3<f32>(x_389.x, x_389.y, x_389.z)) + x_393);
    let x_395 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_394.x, x_394.y, x_394.z, x_395.w);
    let x_397 : vec3<f32> = u_xlat0;
    let x_398 : vec4<f32> = u_xlat1;
    let x_401 : vec3<f32> = u_xlat0;
    let x_403 : vec3<f32> = ((x_397 * vec3<f32>(x_398.x, x_398.y, x_398.z)) + -(x_401));
    let x_404 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_403.x, x_403.y, x_403.z, x_404.w);
    let x_408 : f32 = x_55.x_Vignette_Opacity;
    let x_410 : vec4<f32> = u_xlat1;
    let x_413 : vec3<f32> = u_xlat0;
    let x_414 : vec3<f32> = ((vec3<f32>(x_408, x_408, x_408) * vec3<f32>(x_410.x, x_410.y, x_410.z)) + x_413);
    let x_415 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_414.x, x_414.y, x_414.z, x_415.w);
    let x_418 : f32 = u_xlat1.w;
    u_xlat0.x = (x_418 + -1.0f);
    let x_421 : f32 = u_xlat21;
    let x_423 : f32 = u_xlat0.x;
    u_xlat2.w = ((x_421 * x_423) + 1.0f);
  }
  let x_427 : vec4<f32> = u_xlat2;
  u_xlat2 = x_427;
  let x_428 : vec4<f32> = u_xlat2;
  u_xlat2 = clamp(x_428, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_432 : vec4<f32> = u_xlat2;
  u_xlat0 = (vec3<f32>(x_432.z, x_432.x, x_432.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_437 : vec4<f32> = u_xlat2;
  let x_440 : vec3<f32> = max(vec3<f32>(x_437.z, x_437.x, x_437.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_441 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_440.x, x_440.y, x_440.z, x_441.w);
  let x_443 : vec4<f32> = u_xlat1;
  let x_445 : vec3<f32> = log2(vec3<f32>(x_443.x, x_443.y, x_443.z));
  let x_446 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_445.x, x_445.y, x_445.z, x_446.w);
  let x_448 : vec4<f32> = u_xlat1;
  let x_452 : vec3<f32> = (vec3<f32>(x_448.x, x_448.y, x_448.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_453 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_452.x, x_452.y, x_452.z, x_453.w);
  let x_455 : vec4<f32> = u_xlat1;
  let x_457 : vec3<f32> = exp2(vec3<f32>(x_455.x, x_455.y, x_455.z));
  let x_458 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_457.x, x_457.y, x_457.z, x_458.w);
  let x_460 : vec4<f32> = u_xlat1;
  let x_467 : vec3<f32> = ((vec3<f32>(x_460.x, x_460.y, x_460.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_468 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_467.x, x_467.y, x_467.z, x_468.w);
  let x_475 : vec4<f32> = u_xlat2;
  let x_478 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_475.z, x_475.x, x_475.y, x_475.z));
  u_xlatb2 = vec3<bool>(x_478.x, x_478.y, x_478.z);
  let x_482 : vec3<f32> = u_xlat0;
  hlslcc_movcTemp = x_482;
  let x_484 : bool = u_xlatb2.x;
  if (x_484) {
    let x_489 : f32 = u_xlat0.x;
    x_485 = x_489;
  } else {
    let x_492 : f32 = u_xlat1.x;
    x_485 = x_492;
  }
  let x_493 : f32 = x_485;
  hlslcc_movcTemp.x = x_493;
  let x_496 : bool = u_xlatb2.y;
  if (x_496) {
    let x_501 : f32 = u_xlat0.y;
    x_497 = x_501;
  } else {
    let x_504 : f32 = u_xlat1.y;
    x_497 = x_504;
  }
  let x_505 : f32 = x_497;
  hlslcc_movcTemp.y = x_505;
  let x_508 : bool = u_xlatb2.z;
  if (x_508) {
    let x_513 : f32 = u_xlat0.z;
    x_509 = x_513;
  } else {
    let x_516 : f32 = u_xlat1.z;
    x_509 = x_516;
  }
  let x_517 : f32 = x_509;
  hlslcc_movcTemp.z = x_517;
  let x_519 : vec3<f32> = hlslcc_movcTemp;
  u_xlat0 = x_519;
  let x_520 : vec3<f32> = u_xlat0;
  let x_523 : vec3<f32> = x_55.x_Lut2D_Params;
  u_xlat7 = (x_520 * vec3<f32>(x_523.z, x_523.z, x_523.z));
  let x_527 : f32 = u_xlat7.x;
  u_xlat7.x = floor(x_527);
  let x_531 : vec3<f32> = x_55.x_Lut2D_Params;
  let x_534 : vec2<f32> = (vec2<f32>(x_531.x, x_531.y) * vec2<f32>(0.5f, 0.5f));
  let x_535 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_534.x, x_534.y, x_535.z, x_535.w);
  let x_537 : vec3<f32> = u_xlat7;
  let x_540 : vec3<f32> = x_55.x_Lut2D_Params;
  let x_543 : vec4<f32> = u_xlat1;
  let x_545 : vec2<f32> = ((vec2<f32>(x_537.y, x_537.z) * vec2<f32>(x_540.x, x_540.y)) + vec2<f32>(x_543.x, x_543.y));
  let x_546 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_546.x, x_545.x, x_545.y, x_546.w);
  let x_549 : f32 = u_xlat7.x;
  let x_551 : f32 = x_55.x_Lut2D_Params.y;
  let x_554 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_549 * x_551) + x_554);
  let x_562 : vec4<f32> = u_xlat1;
  let x_564 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_562.x, x_562.z));
  let x_565 : vec3<f32> = vec3<f32>(x_564.x, x_564.y, x_564.z);
  let x_566 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_565.x, x_565.y, x_565.z, x_566.w);
  let x_569 : f32 = x_55.x_Lut2D_Params.y;
  u_xlat3.x = x_569;
  u_xlat3.y = 0.0f;
  let x_574 : vec4<f32> = u_xlat1;
  let x_576 : vec4<f32> = u_xlat3;
  u_xlat14 = (vec2<f32>(x_574.x, x_574.z) + vec2<f32>(x_576.x, x_576.y));
  let x_582 : vec2<f32> = u_xlat14;
  let x_583 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_582);
  let x_584 : vec3<f32> = vec3<f32>(x_583.x, x_583.y, x_583.z);
  let x_585 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_584.x, x_584.y, x_584.z, x_585.w);
  let x_588 : f32 = u_xlat0.x;
  let x_590 : f32 = x_55.x_Lut2D_Params.z;
  let x_593 : f32 = u_xlat7.x;
  u_xlat0.x = ((x_588 * x_590) + -(x_593));
  let x_597 : vec4<f32> = u_xlat2;
  let x_600 : vec4<f32> = u_xlat1;
  u_xlat7 = (-(vec3<f32>(x_597.x, x_597.y, x_597.z)) + vec3<f32>(x_600.x, x_600.y, x_600.z));
  let x_603 : vec3<f32> = u_xlat0;
  let x_605 : vec3<f32> = u_xlat7;
  let x_607 : vec4<f32> = u_xlat2;
  u_xlat0 = ((vec3<f32>(x_603.x, x_603.x, x_603.x) * x_605) + vec3<f32>(x_607.x, x_607.y, x_607.z));
  let x_610 : vec3<f32> = u_xlat0;
  let x_612 : vec3<f32> = (x_610 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_613 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_612.x, x_612.y, x_612.z, x_613.w);
  let x_615 : vec3<f32> = u_xlat0;
  let x_617 : vec3<f32> = (x_615 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_618 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_617.x, x_617.y, x_617.z, x_618.w);
  let x_620 : vec4<f32> = u_xlat2;
  let x_623 : vec3<f32> = (vec3<f32>(x_620.x, x_620.y, x_620.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_624 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_623.x, x_623.y, x_623.z, x_624.w);
  let x_626 : vec4<f32> = u_xlat2;
  let x_629 : vec3<f32> = max(abs(vec3<f32>(x_626.x, x_626.y, x_626.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_630 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_629.x, x_629.y, x_629.z, x_630.w);
  let x_632 : vec4<f32> = u_xlat2;
  let x_634 : vec3<f32> = log2(vec3<f32>(x_632.x, x_632.y, x_632.z));
  let x_635 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_634.x, x_634.y, x_634.z, x_635.w);
  let x_637 : vec4<f32> = u_xlat2;
  let x_640 : vec3<f32> = (vec3<f32>(x_637.x, x_637.y, x_637.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_641 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_640.x, x_640.y, x_640.z, x_641.w);
  let x_643 : vec4<f32> = u_xlat2;
  let x_645 : vec3<f32> = exp2(vec3<f32>(x_643.x, x_643.y, x_643.z));
  let x_646 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_645.x, x_645.y, x_645.z, x_646.w);
  let x_650 : vec3<f32> = u_xlat0;
  let x_652 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_650.x, x_650.y, x_650.z, x_650.x));
  u_xlatb0 = vec3<bool>(x_652.x, x_652.y, x_652.z);
  let x_655 : bool = u_xlatb0.x;
  if (x_655) {
    let x_660 : f32 = u_xlat1.x;
    x_656 = x_660;
  } else {
    let x_663 : f32 = u_xlat2.x;
    x_656 = x_663;
  }
  let x_664 : f32 = x_656;
  u_xlat0.x = x_664;
  let x_667 : bool = u_xlatb0.y;
  if (x_667) {
    let x_672 : f32 = u_xlat1.y;
    x_668 = x_672;
  } else {
    let x_675 : f32 = u_xlat2.y;
    x_668 = x_675;
  }
  let x_676 : f32 = x_668;
  u_xlat0.y = x_676;
  let x_679 : bool = u_xlatb0.z;
  if (x_679) {
    let x_684 : f32 = u_xlat1.z;
    x_680 = x_684;
  } else {
    let x_687 : f32 = u_xlat2.z;
    x_680 = x_687;
  }
  let x_688 : f32 = x_680;
  u_xlat0.z = x_688;
  let x_690 : vec2<f32> = vs_TEXCOORD0;
  let x_693 : vec4<f32> = x_55.x_Dithering_Coords;
  let x_697 : vec4<f32> = x_55.x_Dithering_Coords;
  let x_699 : vec2<f32> = ((x_690 * vec2<f32>(x_693.x, x_693.y)) + vec2<f32>(x_697.z, x_697.w));
  let x_700 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_699.x, x_699.y, x_700.z, x_700.w);
  let x_707 : vec4<f32> = u_xlat1;
  let x_709 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_707.x, x_707.y));
  u_xlat21 = x_709.w;
  let x_711 : f32 = u_xlat21;
  u_xlat21 = ((x_711 * 2.0f) + -1.0f);
  let x_714 : f32 = u_xlat21;
  u_xlat1.x = ((x_714 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_720 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_720, 0.0f, 1.0f);
  let x_724 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_724 * 2.0f) + -1.0f);
  let x_728 : f32 = u_xlat21;
  u_xlat21 = (-(abs(x_728)) + 1.0f);
  let x_732 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_732);
  let x_734 : f32 = u_xlat21;
  u_xlat21 = (-(x_734) + 1.0f);
  let x_737 : f32 = u_xlat21;
  let x_739 : f32 = u_xlat1.x;
  u_xlat21 = (x_737 * x_739);
  let x_741 : vec3<f32> = u_xlat0;
  let x_742 : vec3<f32> = (x_741 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_743 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_742.x, x_742.y, x_742.z, x_743.w);
  let x_745 : vec3<f32> = u_xlat0;
  let x_747 : vec3<f32> = max(abs(x_745), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_748 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_747.x, x_747.y, x_747.z, x_748.w);
  let x_750 : vec4<f32> = u_xlat2;
  let x_752 : vec3<f32> = log2(vec3<f32>(x_750.x, x_750.y, x_750.z));
  let x_753 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_752.x, x_752.y, x_752.z, x_753.w);
  let x_755 : vec4<f32> = u_xlat2;
  let x_757 : vec3<f32> = (vec3<f32>(x_755.x, x_755.y, x_755.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_758 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_757.x, x_757.y, x_757.z, x_758.w);
  let x_760 : vec4<f32> = u_xlat2;
  let x_762 : vec3<f32> = exp2(vec3<f32>(x_760.x, x_760.y, x_760.z));
  let x_763 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_762.x, x_762.y, x_762.z, x_763.w);
  let x_765 : vec4<f32> = u_xlat2;
  let x_768 : vec3<f32> = ((vec3<f32>(x_765.x, x_765.y, x_765.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_769 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_768.x, x_768.y, x_768.z, x_769.w);
  let x_771 : vec3<f32> = u_xlat0;
  let x_773 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_771.x, x_771.y, x_771.z, x_771.x));
  u_xlatb0 = vec3<bool>(x_773.x, x_773.y, x_773.z);
  let x_776 : bool = u_xlatb0.x;
  if (x_776) {
    let x_781 : f32 = u_xlat1.x;
    x_777 = x_781;
  } else {
    let x_784 : f32 = u_xlat2.x;
    x_777 = x_784;
  }
  let x_785 : f32 = x_777;
  u_xlat0.x = x_785;
  let x_788 : bool = u_xlatb0.y;
  if (x_788) {
    let x_793 : f32 = u_xlat1.y;
    x_789 = x_793;
  } else {
    let x_796 : f32 = u_xlat2.y;
    x_789 = x_796;
  }
  let x_797 : f32 = x_789;
  u_xlat0.y = x_797;
  let x_800 : bool = u_xlatb0.z;
  if (x_800) {
    let x_805 : f32 = u_xlat1.z;
    x_801 = x_805;
  } else {
    let x_808 : f32 = u_xlat2.z;
    x_801 = x_808;
  }
  let x_809 : f32 = x_801;
  u_xlat0.z = x_809;
  let x_811 : f32 = u_xlat21;
  let x_816 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_811, x_811, x_811) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + x_816);
  let x_818 : vec3<f32> = u_xlat0;
  let x_819 : vec3<f32> = (x_818 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_820 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_819.x, x_819.y, x_819.z, x_820.w);
  let x_822 : vec3<f32> = u_xlat0;
  let x_823 : vec3<f32> = (x_822 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_824 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_823.x, x_823.y, x_823.z, x_824.w);
  let x_826 : vec4<f32> = u_xlat2;
  let x_828 : vec3<f32> = (vec3<f32>(x_826.x, x_826.y, x_826.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_829 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_828.x, x_828.y, x_828.z, x_829.w);
  let x_831 : vec4<f32> = u_xlat2;
  let x_834 : vec3<f32> = max(abs(vec3<f32>(x_831.x, x_831.y, x_831.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_835 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_834.x, x_834.y, x_834.z, x_835.w);
  let x_837 : vec4<f32> = u_xlat2;
  let x_839 : vec3<f32> = log2(vec3<f32>(x_837.x, x_837.y, x_837.z));
  let x_840 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_839.x, x_839.y, x_839.z, x_840.w);
  let x_842 : vec4<f32> = u_xlat2;
  let x_844 : vec3<f32> = (vec3<f32>(x_842.x, x_842.y, x_842.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_845 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_844.x, x_844.y, x_844.z, x_845.w);
  let x_847 : vec4<f32> = u_xlat2;
  let x_849 : vec3<f32> = exp2(vec3<f32>(x_847.x, x_847.y, x_847.z));
  let x_850 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_849.x, x_849.y, x_849.z, x_850.w);
  let x_852 : vec3<f32> = u_xlat0;
  let x_854 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_852.x, x_852.y, x_852.z, x_852.x));
  u_xlatb0 = vec3<bool>(x_854.x, x_854.y, x_854.z);
  let x_859 : bool = u_xlatb0.x;
  if (x_859) {
    let x_864 : f32 = u_xlat1.x;
    x_860 = x_864;
  } else {
    let x_867 : f32 = u_xlat2.x;
    x_860 = x_867;
  }
  let x_868 : f32 = x_860;
  SV_Target0.x = x_868;
  let x_872 : bool = u_xlatb0.y;
  if (x_872) {
    let x_877 : f32 = u_xlat1.y;
    x_873 = x_877;
  } else {
    let x_880 : f32 = u_xlat2.y;
    x_873 = x_880;
  }
  let x_881 : f32 = x_873;
  SV_Target0.y = x_881;
  let x_884 : bool = u_xlatb0.z;
  if (x_884) {
    let x_889 : f32 = u_xlat1.z;
    x_885 = x_889;
  } else {
    let x_892 : f32 = u_xlat2.z;
    x_885 = x_892;
  }
  let x_893 : f32 = x_885;
  SV_Target0.z = x_893;
  let x_896 : f32 = u_xlat2.w;
  SV_Target0.w = x_896;
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

