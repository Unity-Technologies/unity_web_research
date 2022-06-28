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
}

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(3) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat7 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_55 : PGlobals;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(4) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(9) var sampler_ChromaticAberration_SpectralLut : sampler;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlatb21 : bool;

var<private> u_xlat21 : f32;

@group(0) @binding(5) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(10) var sampler_Vignette_Mask : sampler;

var<private> u_xlat10 : f32;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_DitheringTex : sampler;

var<private> u_xlatb1 : vec3<bool>;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_373 : f32;
  var hlslcc_movcTemp : vec3<f32>;
  var x_544 : f32;
  var x_556 : f32;
  var x_568 : f32;
  var x_632 : f32;
  var x_644 : f32;
  var x_656 : f32;
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
      let x_377 : f32 = u_xlat3.x;
      x_373 = x_377;
    } else {
      let x_379 : f32 = u_xlat10;
      x_373 = x_379;
    }
    let x_380 : f32 = x_373;
    u_xlat21 = x_380;
    let x_382 : vec3<f32> = x_55.x_Vignette_Color;
    let x_384 : vec3<f32> = (-(x_382) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_385 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_384.x, x_384.y, x_384.z, x_385.w);
    let x_387 : f32 = u_xlat21;
    let x_389 : vec4<f32> = u_xlat3;
    let x_393 : vec3<f32> = x_55.x_Vignette_Color;
    let x_394 : vec3<f32> = ((vec3<f32>(x_387, x_387, x_387) * vec3<f32>(x_389.x, x_389.y, x_389.z)) + x_393);
    let x_395 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_394.x, x_394.y, x_394.z, x_395.w);
    let x_397 : vec3<f32> = u_xlat0;
    let x_398 : vec4<f32> = u_xlat3;
    let x_401 : vec3<f32> = u_xlat0;
    let x_403 : vec3<f32> = ((x_397 * vec3<f32>(x_398.x, x_398.y, x_398.z)) + -(x_401));
    let x_404 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_403.x, x_403.y, x_403.z, x_404.w);
    let x_408 : f32 = x_55.x_Vignette_Opacity;
    let x_410 : vec4<f32> = u_xlat3;
    let x_413 : vec3<f32> = u_xlat0;
    let x_414 : vec3<f32> = ((vec3<f32>(x_408, x_408, x_408) * vec3<f32>(x_410.x, x_410.y, x_410.z)) + x_413);
    let x_415 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_414.x, x_414.y, x_414.z, x_415.w);
    let x_418 : f32 = u_xlat1.w;
    u_xlat0.x = (x_418 + -1.0f);
    let x_421 : f32 = u_xlat21;
    let x_423 : f32 = u_xlat0.x;
    u_xlat2.w = ((x_421 * x_423) + 1.0f);
  }
  let x_427 : vec2<f32> = vs_TEXCOORD0;
  let x_430 : vec4<f32> = x_55.x_Dithering_Coords;
  let x_434 : vec4<f32> = x_55.x_Dithering_Coords;
  let x_436 : vec2<f32> = ((x_427 * vec2<f32>(x_430.x, x_430.y)) + vec2<f32>(x_434.z, x_434.w));
  let x_437 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_436.x, x_436.y, x_437.z);
  let x_444 : vec3<f32> = u_xlat0;
  let x_446 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_444.x, x_444.y));
  u_xlat0.x = x_446.w;
  let x_450 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_450 * 2.0f) + -1.0f);
  let x_455 : f32 = u_xlat0.x;
  u_xlat7.x = ((x_455 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_461 : f32 = u_xlat7.x;
  u_xlat7.x = clamp(x_461, 0.0f, 1.0f);
  let x_465 : f32 = u_xlat7.x;
  u_xlat7.x = ((x_465 * 2.0f) + -1.0f);
  let x_470 : f32 = u_xlat0.x;
  u_xlat0.x = (-(abs(x_470)) + 1.0f);
  let x_476 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_476);
  let x_480 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_480) + 1.0f);
  let x_485 : f32 = u_xlat0.x;
  let x_487 : f32 = u_xlat7.x;
  u_xlat0.x = (x_485 * x_487);
  let x_490 : vec4<f32> = u_xlat1;
  u_xlat7 = (vec3<f32>(x_490.x, x_490.y, x_490.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_495 : vec4<f32> = u_xlat1;
  let x_499 : vec3<f32> = max(abs(vec3<f32>(x_495.x, x_495.y, x_495.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_500 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_499.x, x_499.y, x_499.z, x_500.w);
  let x_502 : vec4<f32> = u_xlat3;
  let x_504 : vec3<f32> = log2(vec3<f32>(x_502.x, x_502.y, x_502.z));
  let x_505 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_504.x, x_504.y, x_504.z, x_505.w);
  let x_507 : vec4<f32> = u_xlat3;
  let x_511 : vec3<f32> = (vec3<f32>(x_507.x, x_507.y, x_507.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_512 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_511.x, x_511.y, x_511.z, x_512.w);
  let x_514 : vec4<f32> = u_xlat3;
  let x_516 : vec3<f32> = exp2(vec3<f32>(x_514.x, x_514.y, x_514.z));
  let x_517 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_516.x, x_516.y, x_516.z, x_517.w);
  let x_519 : vec4<f32> = u_xlat3;
  let x_526 : vec3<f32> = ((vec3<f32>(x_519.x, x_519.y, x_519.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_527 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_526.x, x_526.y, x_526.z, x_527.w);
  let x_534 : vec4<f32> = u_xlat1;
  let x_537 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_534.x, x_534.y, x_534.z, x_534.x));
  u_xlatb1 = vec3<bool>(x_537.x, x_537.y, x_537.z);
  let x_541 : vec3<f32> = u_xlat7;
  hlslcc_movcTemp = x_541;
  let x_543 : bool = u_xlatb1.x;
  if (x_543) {
    let x_548 : f32 = u_xlat7.x;
    x_544 = x_548;
  } else {
    let x_551 : f32 = u_xlat3.x;
    x_544 = x_551;
  }
  let x_552 : f32 = x_544;
  hlslcc_movcTemp.x = x_552;
  let x_555 : bool = u_xlatb1.y;
  if (x_555) {
    let x_560 : f32 = u_xlat7.y;
    x_556 = x_560;
  } else {
    let x_563 : f32 = u_xlat3.y;
    x_556 = x_563;
  }
  let x_564 : f32 = x_556;
  hlslcc_movcTemp.y = x_564;
  let x_567 : bool = u_xlatb1.z;
  if (x_567) {
    let x_572 : f32 = u_xlat7.z;
    x_568 = x_572;
  } else {
    let x_575 : f32 = u_xlat3.z;
    x_568 = x_575;
  }
  let x_576 : f32 = x_568;
  hlslcc_movcTemp.z = x_576;
  let x_578 : vec3<f32> = hlslcc_movcTemp;
  u_xlat7 = x_578;
  let x_579 : vec3<f32> = u_xlat0;
  let x_584 : vec3<f32> = u_xlat7;
  u_xlat0 = ((vec3<f32>(x_579.x, x_579.x, x_579.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + x_584);
  let x_586 : vec3<f32> = u_xlat0;
  let x_588 : vec3<f32> = (x_586 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_589 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_588.x, x_588.y, x_588.z, x_589.w);
  let x_591 : vec3<f32> = u_xlat0;
  let x_593 : vec3<f32> = (x_591 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_594 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_593.x, x_593.y, x_593.z, x_594.w);
  let x_596 : vec4<f32> = u_xlat3;
  let x_599 : vec3<f32> = (vec3<f32>(x_596.x, x_596.y, x_596.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_600 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_599.x, x_599.y, x_599.z, x_600.w);
  let x_602 : vec4<f32> = u_xlat3;
  let x_605 : vec3<f32> = max(abs(vec3<f32>(x_602.x, x_602.y, x_602.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_606 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_605.x, x_605.y, x_605.z, x_606.w);
  let x_608 : vec4<f32> = u_xlat3;
  let x_610 : vec3<f32> = log2(vec3<f32>(x_608.x, x_608.y, x_608.z));
  let x_611 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_610.x, x_610.y, x_610.z, x_611.w);
  let x_613 : vec4<f32> = u_xlat3;
  let x_616 : vec3<f32> = (vec3<f32>(x_613.x, x_613.y, x_613.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_617 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_616.x, x_616.y, x_616.z, x_617.w);
  let x_619 : vec4<f32> = u_xlat3;
  let x_621 : vec3<f32> = exp2(vec3<f32>(x_619.x, x_619.y, x_619.z));
  let x_622 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_621.x, x_621.y, x_621.z, x_622.w);
  let x_626 : vec3<f32> = u_xlat0;
  let x_628 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_626.x, x_626.y, x_626.z, x_626.x));
  u_xlatb0 = vec3<bool>(x_628.x, x_628.y, x_628.z);
  let x_631 : bool = u_xlatb0.x;
  if (x_631) {
    let x_636 : f32 = u_xlat1.x;
    x_632 = x_636;
  } else {
    let x_639 : f32 = u_xlat3.x;
    x_632 = x_639;
  }
  let x_640 : f32 = x_632;
  u_xlat2.x = x_640;
  let x_643 : bool = u_xlatb0.y;
  if (x_643) {
    let x_648 : f32 = u_xlat1.y;
    x_644 = x_648;
  } else {
    let x_651 : f32 = u_xlat3.y;
    x_644 = x_651;
  }
  let x_652 : f32 = x_644;
  u_xlat2.y = x_652;
  let x_655 : bool = u_xlatb0.z;
  if (x_655) {
    let x_660 : f32 = u_xlat1.z;
    x_656 = x_660;
  } else {
    let x_663 : f32 = u_xlat3.z;
    x_656 = x_663;
  }
  let x_664 : f32 = x_656;
  u_xlat2.z = x_664;
  let x_668 : vec4<f32> = u_xlat2;
  SV_Target0 = x_668;
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

