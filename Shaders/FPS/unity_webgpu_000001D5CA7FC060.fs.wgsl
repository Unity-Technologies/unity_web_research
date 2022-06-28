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
  x_PostExposure : f32,
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

var<private> u_xlat0 : vec4<f32>;

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

var<private> u_xlat8 : vec3<f32>;

@group(0) @binding(5) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(11) var sampler_Lut2D : sampler;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_DitheringTex : sampler;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_387 : f32;
  var x_707 : f32;
  var x_719 : f32;
  var x_731 : f32;
  var x_800 : f32;
  var x_813 : f32;
  var x_825 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_24 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_23);
  u_xlat0.x = x_24.x;
  let x_31 : vec2<f32> = vs_TEXCOORD0;
  u_xlat1 = ((vec4<f32>(x_31.x, x_31.y, x_31.x, x_31.y) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
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
  let x_199 : vec4<f32> = u_xlat0;
  let x_201 : vec4<f32> = u_xlat1;
  let x_203 : vec3<f32> = (vec3<f32>(x_199.x, x_199.x, x_199.x) * vec3<f32>(x_201.x, x_201.y, x_201.z));
  let x_204 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_203.x, x_203.y, x_203.z, x_204.w);
  let x_211 : f32 = x_55.x_Vignette_Mode;
  u_xlatb21 = (x_211 < 0.5f);
  let x_213 : bool = u_xlatb21;
  if (x_213) {
    let x_216 : vec2<f32> = vs_TEXCOORD0;
    let x_220 : vec2<f32> = x_55.x_Vignette_Center;
    let x_222 : vec2<f32> = (x_216 + -(x_220));
    let x_223 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_222.x, x_222.y, x_223.z, x_223.w);
    let x_225 : vec4<f32> = u_xlat1;
    let x_231 : vec4<f32> = x_55.x_Vignette_Settings;
    let x_233 : vec2<f32> = (abs(vec2<f32>(x_225.y, x_225.x)) * vec2<f32>(x_231.x, x_231.x));
    let x_234 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_234.x, x_233.x, x_233.y, x_234.w);
    let x_239 : f32 = x_55.x_ScreenParams.x;
    let x_242 : f32 = x_55.x_ScreenParams.y;
    u_xlat21 = (x_239 / x_242);
    let x_244 : f32 = u_xlat21;
    u_xlat21 = (x_244 + -1.0f);
    let x_247 : f32 = x_55.x_Vignette_Settings.w;
    let x_248 : f32 = u_xlat21;
    u_xlat21 = ((x_247 * x_248) + 1.0f);
    let x_251 : f32 = u_xlat21;
    let x_254 : f32 = u_xlat1.z;
    u_xlat1.x = (x_251 * x_254);
    let x_257 : vec4<f32> = u_xlat1;
    let x_258 : vec2<f32> = vec2<f32>(x_257.x, x_257.y);
    let x_259 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_258.x, x_258.y, x_259.z, x_259.w);
    let x_261 : vec4<f32> = u_xlat1;
    let x_265 : vec2<f32> = clamp(vec2<f32>(x_261.x, x_261.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_266 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_265.x, x_265.y, x_266.z, x_266.w);
    let x_268 : vec4<f32> = u_xlat1;
    let x_270 : vec2<f32> = log2(vec2<f32>(x_268.x, x_268.y));
    let x_271 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_270.x, x_270.y, x_271.z, x_271.w);
    let x_273 : vec4<f32> = u_xlat1;
    let x_276 : vec4<f32> = x_55.x_Vignette_Settings;
    let x_278 : vec2<f32> = (vec2<f32>(x_273.x, x_273.y) * vec2<f32>(x_276.z, x_276.z));
    let x_279 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_278.x, x_278.y, x_279.z, x_279.w);
    let x_281 : vec4<f32> = u_xlat1;
    let x_283 : vec2<f32> = exp2(vec2<f32>(x_281.x, x_281.y));
    let x_284 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_283.x, x_283.y, x_284.z, x_284.w);
    let x_286 : vec4<f32> = u_xlat1;
    let x_288 : vec4<f32> = u_xlat1;
    u_xlat21 = dot(vec2<f32>(x_286.x, x_286.y), vec2<f32>(x_288.x, x_288.y));
    let x_291 : f32 = u_xlat21;
    u_xlat21 = (-(x_291) + 1.0f);
    let x_294 : f32 = u_xlat21;
    u_xlat21 = max(x_294, 0.0f);
    let x_296 : f32 = u_xlat21;
    u_xlat21 = log2(x_296);
    let x_298 : f32 = u_xlat21;
    let x_300 : f32 = x_55.x_Vignette_Settings.y;
    u_xlat21 = (x_298 * x_300);
    let x_302 : f32 = u_xlat21;
    u_xlat21 = exp2(x_302);
    let x_307 : vec3<f32> = x_55.x_Vignette_Color;
    let x_310 : vec3<f32> = (-(x_307) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_311 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_310.x, x_310.y, x_310.z, x_311.w);
    let x_313 : f32 = u_xlat21;
    let x_315 : vec4<f32> = u_xlat1;
    let x_319 : vec3<f32> = x_55.x_Vignette_Color;
    let x_320 : vec3<f32> = ((vec3<f32>(x_313, x_313, x_313) * vec3<f32>(x_315.x, x_315.y, x_315.z)) + x_319);
    let x_321 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_320.x, x_320.y, x_320.z, x_321.w);
    let x_323 : vec4<f32> = u_xlat0;
    let x_325 : vec4<f32> = u_xlat1;
    let x_327 : vec3<f32> = (vec3<f32>(x_323.x, x_323.y, x_323.z) * vec3<f32>(x_325.x, x_325.y, x_325.z));
    let x_328 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_327.x, x_327.y, x_327.z, x_328.w);
    let x_331 : f32 = u_xlat1.w;
    u_xlat1.x = (x_331 + -1.0f);
    let x_334 : f32 = u_xlat21;
    let x_336 : f32 = u_xlat1.x;
    u_xlat2.w = ((x_334 * x_336) + 1.0f);
  } else {
    let x_346 : vec2<f32> = vs_TEXCOORD0;
    let x_347 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_346);
    u_xlat21 = x_347.w;
    let x_349 : f32 = u_xlat21;
    u_xlat1.x = (x_349 * 0.077399381f);
    let x_354 : f32 = u_xlat21;
    u_xlat8.x = (x_354 + 0.055f);
    let x_359 : f32 = u_xlat8.x;
    u_xlat8.x = (x_359 * 0.947867334f);
    let x_364 : f32 = u_xlat8.x;
    u_xlat8.x = max(abs(x_364), 1.1920929e-07f);
    let x_370 : f32 = u_xlat8.x;
    u_xlat8.x = log2(x_370);
    let x_374 : f32 = u_xlat8.x;
    u_xlat8.x = (x_374 * 2.400000095f);
    let x_379 : f32 = u_xlat8.x;
    u_xlat8.x = exp2(x_379);
    let x_383 : f32 = u_xlat21;
    u_xlatb21 = (0.040449999f >= x_383);
    let x_385 : bool = u_xlatb21;
    if (x_385) {
      let x_391 : f32 = u_xlat1.x;
      x_387 = x_391;
    } else {
      let x_394 : f32 = u_xlat8.x;
      x_387 = x_394;
    }
    let x_395 : f32 = x_387;
    u_xlat21 = x_395;
    let x_397 : vec3<f32> = x_55.x_Vignette_Color;
    let x_399 : vec3<f32> = (-(x_397) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_400 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_399.x, x_399.y, x_399.z, x_400.w);
    let x_402 : f32 = u_xlat21;
    let x_404 : vec4<f32> = u_xlat1;
    let x_408 : vec3<f32> = x_55.x_Vignette_Color;
    let x_409 : vec3<f32> = ((vec3<f32>(x_402, x_402, x_402) * vec3<f32>(x_404.x, x_404.y, x_404.z)) + x_408);
    let x_410 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_409.x, x_409.y, x_409.z, x_410.w);
    let x_412 : vec4<f32> = u_xlat0;
    let x_414 : vec4<f32> = u_xlat1;
    let x_417 : vec4<f32> = u_xlat0;
    let x_420 : vec3<f32> = ((vec3<f32>(x_412.x, x_412.y, x_412.z) * vec3<f32>(x_414.x, x_414.y, x_414.z)) + -(vec3<f32>(x_417.x, x_417.y, x_417.z)));
    let x_421 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_420.x, x_420.y, x_420.z, x_421.w);
    let x_425 : f32 = x_55.x_Vignette_Opacity;
    let x_427 : vec4<f32> = u_xlat1;
    let x_430 : vec4<f32> = u_xlat0;
    let x_432 : vec3<f32> = ((vec3<f32>(x_425, x_425, x_425) * vec3<f32>(x_427.x, x_427.y, x_427.z)) + vec3<f32>(x_430.x, x_430.y, x_430.z));
    let x_433 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_432.x, x_432.y, x_432.z, x_433.w);
    let x_436 : f32 = u_xlat1.w;
    u_xlat0.x = (x_436 + -1.0f);
    let x_439 : f32 = u_xlat21;
    let x_441 : f32 = u_xlat0.x;
    u_xlat2.w = ((x_439 * x_441) + 1.0f);
  }
  let x_445 : vec4<f32> = u_xlat2;
  let x_448 : f32 = x_55.x_PostExposure;
  let x_450 : f32 = x_55.x_PostExposure;
  let x_452 : f32 = x_55.x_PostExposure;
  let x_454 : f32 = x_55.x_PostExposure;
  let x_455 : vec4<f32> = vec4<f32>(x_448, x_450, x_452, x_454);
  u_xlat0 = (x_445 * vec4<f32>(x_455.x, x_455.y, x_455.z, x_455.w));
  let x_462 : vec4<f32> = u_xlat0;
  let x_469 : vec3<f32> = ((vec3<f32>(x_462.z, x_462.x, x_462.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_470 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_469.x, x_469.y, x_469.z, x_470.w);
  let x_472 : vec4<f32> = u_xlat0;
  let x_474 : vec3<f32> = log2(vec3<f32>(x_472.x, x_472.y, x_472.z));
  let x_475 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_474.x, x_474.y, x_474.z, x_475.w);
  let x_477 : vec4<f32> = u_xlat0;
  let x_484 : vec3<f32> = ((vec3<f32>(x_477.x, x_477.y, x_477.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_485 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_484.x, x_484.y, x_484.z, x_485.w);
  let x_487 : vec4<f32> = u_xlat0;
  let x_491 : vec3<f32> = clamp(vec3<f32>(x_487.x, x_487.y, x_487.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_492 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_491.x, x_491.y, x_491.z, x_492.w);
  let x_494 : vec4<f32> = u_xlat0;
  let x_498 : vec3<f32> = x_55.x_Lut2D_Params;
  let x_500 : vec3<f32> = (vec3<f32>(x_494.x, x_494.y, x_494.z) * vec3<f32>(x_498.z, x_498.z, x_498.z));
  let x_501 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_500.x, x_500.y, x_500.z, x_501.w);
  let x_504 : f32 = u_xlat1.x;
  u_xlat7.x = floor(x_504);
  let x_508 : vec3<f32> = x_55.x_Lut2D_Params;
  let x_511 : vec2<f32> = (vec2<f32>(x_508.x, x_508.y) * vec2<f32>(0.5f, 0.5f));
  let x_512 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_511.x, x_512.y, x_512.z, x_511.y);
  let x_514 : vec4<f32> = u_xlat1;
  let x_517 : vec3<f32> = x_55.x_Lut2D_Params;
  let x_520 : vec4<f32> = u_xlat1;
  let x_522 : vec2<f32> = ((vec2<f32>(x_514.y, x_514.z) * vec2<f32>(x_517.x, x_517.y)) + vec2<f32>(x_520.x, x_520.w));
  let x_523 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_523.x, x_522.x, x_522.y, x_523.w);
  let x_526 : f32 = u_xlat7.x;
  let x_528 : f32 = x_55.x_Lut2D_Params.y;
  let x_531 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_526 * x_528) + x_531);
  let x_539 : vec4<f32> = u_xlat1;
  let x_541 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_539.x, x_539.z));
  let x_542 : vec3<f32> = vec3<f32>(x_541.x, x_541.y, x_541.z);
  let x_543 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_542.x, x_542.y, x_542.z, x_543.w);
  let x_546 : f32 = x_55.x_Lut2D_Params.y;
  u_xlat3.x = x_546;
  u_xlat3.y = 0.0f;
  let x_549 : vec4<f32> = u_xlat1;
  let x_551 : vec4<f32> = u_xlat3;
  let x_553 : vec2<f32> = (vec2<f32>(x_549.x, x_549.z) + vec2<f32>(x_551.x, x_551.y));
  let x_554 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_553.x, x_553.y, x_554.z, x_554.w);
  let x_559 : vec4<f32> = u_xlat1;
  let x_561 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_559.x, x_559.y));
  let x_562 : vec3<f32> = vec3<f32>(x_561.x, x_561.y, x_561.z);
  let x_563 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_562.x, x_562.y, x_562.z, x_563.w);
  let x_566 : f32 = u_xlat0.x;
  let x_568 : f32 = x_55.x_Lut2D_Params.z;
  let x_571 : f32 = u_xlat7.x;
  u_xlat0.x = ((x_566 * x_568) + -(x_571));
  let x_575 : vec4<f32> = u_xlat2;
  let x_578 : vec4<f32> = u_xlat1;
  let x_580 : vec3<f32> = (-(vec3<f32>(x_575.x, x_575.y, x_575.z)) + vec3<f32>(x_578.x, x_578.y, x_578.z));
  let x_581 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_580.x, x_580.y, x_580.z, x_581.w);
  let x_583 : vec4<f32> = u_xlat0;
  let x_585 : vec4<f32> = u_xlat1;
  let x_588 : vec4<f32> = u_xlat2;
  let x_590 : vec3<f32> = ((vec3<f32>(x_583.x, x_583.x, x_583.x) * vec3<f32>(x_585.x, x_585.y, x_585.z)) + vec3<f32>(x_588.x, x_588.y, x_588.z));
  let x_591 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_590.x, x_590.y, x_590.z, x_591.w);
  let x_593 : vec2<f32> = vs_TEXCOORD0;
  let x_596 : vec4<f32> = x_55.x_Dithering_Coords;
  let x_600 : vec4<f32> = x_55.x_Dithering_Coords;
  let x_602 : vec2<f32> = ((x_593 * vec2<f32>(x_596.x, x_596.y)) + vec2<f32>(x_600.z, x_600.w));
  let x_603 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_602.x, x_602.y, x_603.z, x_603.w);
  let x_610 : vec4<f32> = u_xlat1;
  let x_612 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_610.x, x_610.y));
  u_xlat1.x = x_612.w;
  let x_616 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_616 * 2.0f) + -1.0f);
  let x_621 : f32 = u_xlat1.x;
  u_xlat8.x = ((x_621 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_627 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_627, 0.0f, 1.0f);
  let x_631 : f32 = u_xlat8.x;
  u_xlat8.x = ((x_631 * 2.0f) + -1.0f);
  let x_636 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_636)) + 1.0f);
  let x_642 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_642);
  let x_646 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_646) + 1.0f);
  let x_651 : f32 = u_xlat1.x;
  let x_653 : f32 = u_xlat8.x;
  u_xlat1.x = (x_651 * x_653);
  let x_656 : vec4<f32> = u_xlat0;
  u_xlat8 = (vec3<f32>(x_656.x, x_656.y, x_656.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_661 : vec4<f32> = u_xlat0;
  let x_665 : vec3<f32> = max(abs(vec3<f32>(x_661.x, x_661.y, x_661.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_666 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_665.x, x_665.y, x_665.z, x_666.w);
  let x_668 : vec4<f32> = u_xlat2;
  let x_670 : vec3<f32> = log2(vec3<f32>(x_668.x, x_668.y, x_668.z));
  let x_671 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_670.x, x_670.y, x_670.z, x_671.w);
  let x_673 : vec4<f32> = u_xlat2;
  let x_677 : vec3<f32> = (vec3<f32>(x_673.x, x_673.y, x_673.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_678 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_677.x, x_677.y, x_677.z, x_678.w);
  let x_680 : vec4<f32> = u_xlat2;
  let x_682 : vec3<f32> = exp2(vec3<f32>(x_680.x, x_680.y, x_680.z));
  let x_683 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_682.x, x_682.y, x_682.z, x_683.w);
  let x_685 : vec4<f32> = u_xlat2;
  let x_692 : vec3<f32> = ((vec3<f32>(x_685.x, x_685.y, x_685.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_693 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_692.x, x_692.y, x_692.z, x_693.w);
  let x_700 : vec4<f32> = u_xlat0;
  let x_703 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_700.x, x_700.y, x_700.z, x_700.x));
  u_xlatb0 = vec3<bool>(x_703.x, x_703.y, x_703.z);
  let x_706 : bool = u_xlatb0.x;
  if (x_706) {
    let x_711 : f32 = u_xlat8.x;
    x_707 = x_711;
  } else {
    let x_714 : f32 = u_xlat2.x;
    x_707 = x_714;
  }
  let x_715 : f32 = x_707;
  u_xlat0.x = x_715;
  let x_718 : bool = u_xlatb0.y;
  if (x_718) {
    let x_723 : f32 = u_xlat8.y;
    x_719 = x_723;
  } else {
    let x_726 : f32 = u_xlat2.y;
    x_719 = x_726;
  }
  let x_727 : f32 = x_719;
  u_xlat0.y = x_727;
  let x_730 : bool = u_xlatb0.z;
  if (x_730) {
    let x_735 : f32 = u_xlat8.z;
    x_731 = x_735;
  } else {
    let x_738 : f32 = u_xlat2.z;
    x_731 = x_738;
  }
  let x_739 : f32 = x_731;
  u_xlat0.z = x_739;
  let x_741 : vec4<f32> = u_xlat1;
  let x_746 : vec4<f32> = u_xlat0;
  let x_748 : vec3<f32> = ((vec3<f32>(x_741.x, x_741.x, x_741.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_746.x, x_746.y, x_746.z));
  let x_749 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_748.x, x_748.y, x_748.z, x_749.w);
  let x_751 : vec4<f32> = u_xlat0;
  let x_754 : vec3<f32> = (vec3<f32>(x_751.x, x_751.y, x_751.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_755 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_754.x, x_754.y, x_754.z, x_755.w);
  let x_757 : vec4<f32> = u_xlat0;
  let x_760 : vec3<f32> = (vec3<f32>(x_757.x, x_757.y, x_757.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_761 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_760.x, x_760.y, x_760.z, x_761.w);
  let x_763 : vec4<f32> = u_xlat2;
  let x_766 : vec3<f32> = (vec3<f32>(x_763.x, x_763.y, x_763.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_767 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_766.x, x_766.y, x_766.z, x_767.w);
  let x_769 : vec4<f32> = u_xlat2;
  let x_772 : vec3<f32> = max(abs(vec3<f32>(x_769.x, x_769.y, x_769.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_773 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_772.x, x_772.y, x_772.z, x_773.w);
  let x_775 : vec4<f32> = u_xlat2;
  let x_777 : vec3<f32> = log2(vec3<f32>(x_775.x, x_775.y, x_775.z));
  let x_778 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_777.x, x_777.y, x_777.z, x_778.w);
  let x_780 : vec4<f32> = u_xlat2;
  let x_783 : vec3<f32> = (vec3<f32>(x_780.x, x_780.y, x_780.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_784 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_783.x, x_783.y, x_783.z, x_784.w);
  let x_786 : vec4<f32> = u_xlat2;
  let x_788 : vec3<f32> = exp2(vec3<f32>(x_786.x, x_786.y, x_786.z));
  let x_789 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_788.x, x_788.y, x_788.z, x_789.w);
  let x_792 : vec4<f32> = u_xlat0;
  let x_794 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_792.x, x_792.y, x_792.z, x_792.x));
  u_xlatb0 = vec3<bool>(x_794.x, x_794.y, x_794.z);
  let x_799 : bool = u_xlatb0.x;
  if (x_799) {
    let x_804 : f32 = u_xlat1.x;
    x_800 = x_804;
  } else {
    let x_807 : f32 = u_xlat2.x;
    x_800 = x_807;
  }
  let x_808 : f32 = x_800;
  SV_Target0.x = x_808;
  let x_812 : bool = u_xlatb0.y;
  if (x_812) {
    let x_817 : f32 = u_xlat1.y;
    x_813 = x_817;
  } else {
    let x_820 : f32 = u_xlat2.y;
    x_813 = x_820;
  }
  let x_821 : f32 = x_813;
  SV_Target0.y = x_821;
  let x_824 : bool = u_xlatb0.z;
  if (x_824) {
    let x_829 : f32 = u_xlat1.z;
    x_825 = x_829;
  } else {
    let x_832 : f32 = u_xlat2.z;
    x_825 = x_832;
  }
  let x_833 : f32 = x_825;
  SV_Target0.z = x_833;
  let x_836 : f32 = u_xlat0.w;
  SV_Target0.w = x_836;
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

