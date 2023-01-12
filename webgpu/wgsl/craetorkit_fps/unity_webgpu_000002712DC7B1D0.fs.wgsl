struct PGlobals {
  x_ScreenParams : vec4<f32>,
  x_RenderViewportScaleFactor : f32,
  x_ChromaticAberration_Amount : f32,
  @size(8)
  padding : u32,
  x_Lut2D_Params : vec3<f32>,
  x_PostExposure : f32,
  x_Vignette_Color : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_Vignette_Center : vec2<f32>,
  @size(8)
  padding_2 : u32,
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
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlatb21 : bool;
  var u_xlat21 : f32;
  var u_xlat8 : vec3<f32>;
  var x_386 : f32;
  var u_xlat15 : vec2<f32>;
  var u_xlatb1 : bool;
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
      let x_390 : f32 = u_xlat1.x;
      x_386 = x_390;
    } else {
      let x_393 : f32 = u_xlat8.x;
      x_386 = x_393;
    }
    let x_394 : f32 = x_386;
    u_xlat21 = x_394;
    let x_396 : vec3<f32> = x_55.x_Vignette_Color;
    let x_398 : vec3<f32> = (-(x_396) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_399 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_398.x, x_398.y, x_398.z, x_399.w);
    let x_401 : f32 = u_xlat21;
    let x_403 : vec4<f32> = u_xlat1;
    let x_407 : vec3<f32> = x_55.x_Vignette_Color;
    let x_408 : vec3<f32> = ((vec3<f32>(x_401, x_401, x_401) * vec3<f32>(x_403.x, x_403.y, x_403.z)) + x_407);
    let x_409 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_408.x, x_408.y, x_408.z, x_409.w);
    let x_411 : vec4<f32> = u_xlat0;
    let x_413 : vec4<f32> = u_xlat1;
    let x_416 : vec4<f32> = u_xlat0;
    let x_419 : vec3<f32> = ((vec3<f32>(x_411.x, x_411.y, x_411.z) * vec3<f32>(x_413.x, x_413.y, x_413.z)) + -(vec3<f32>(x_416.x, x_416.y, x_416.z)));
    let x_420 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_419.x, x_419.y, x_419.z, x_420.w);
    let x_424 : f32 = x_55.x_Vignette_Opacity;
    let x_426 : vec4<f32> = u_xlat1;
    let x_429 : vec4<f32> = u_xlat0;
    let x_431 : vec3<f32> = ((vec3<f32>(x_424, x_424, x_424) * vec3<f32>(x_426.x, x_426.y, x_426.z)) + vec3<f32>(x_429.x, x_429.y, x_429.z));
    let x_432 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_431.x, x_431.y, x_431.z, x_432.w);
    let x_435 : f32 = u_xlat1.w;
    u_xlat0.x = (x_435 + -1.0f);
    let x_438 : f32 = u_xlat21;
    let x_440 : f32 = u_xlat0.x;
    u_xlat2.w = ((x_438 * x_440) + 1.0f);
  }
  let x_444 : vec4<f32> = u_xlat2;
  let x_447 : f32 = x_55.x_PostExposure;
  let x_449 : f32 = x_55.x_PostExposure;
  let x_451 : f32 = x_55.x_PostExposure;
  let x_453 : f32 = x_55.x_PostExposure;
  let x_454 : vec4<f32> = vec4<f32>(x_447, x_449, x_451, x_453);
  u_xlat0 = (x_444 * vec4<f32>(x_454.x, x_454.y, x_454.z, x_454.w));
  let x_461 : vec4<f32> = u_xlat0;
  let x_468 : vec3<f32> = ((vec3<f32>(x_461.z, x_461.x, x_461.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_469 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_468.x, x_468.y, x_468.z, x_469.w);
  let x_471 : vec4<f32> = u_xlat1;
  let x_473 : vec3<f32> = log2(vec3<f32>(x_471.x, x_471.y, x_471.z));
  let x_474 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_473.x, x_473.y, x_473.z, x_474.w);
  let x_476 : vec4<f32> = u_xlat1;
  let x_483 : vec3<f32> = ((vec3<f32>(x_476.x, x_476.y, x_476.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_484 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_483.x, x_483.y, x_483.z, x_484.w);
  let x_486 : vec4<f32> = u_xlat1;
  let x_490 : vec3<f32> = clamp(vec3<f32>(x_486.x, x_486.y, x_486.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_491 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_490.x, x_490.y, x_490.z, x_491.w);
  let x_493 : vec4<f32> = u_xlat1;
  let x_497 : vec3<f32> = x_55.x_Lut2D_Params;
  u_xlat8 = (vec3<f32>(x_493.x, x_493.y, x_493.z) * vec3<f32>(x_497.z, x_497.z, x_497.z));
  let x_501 : f32 = u_xlat8.x;
  u_xlat8.x = floor(x_501);
  let x_505 : vec3<f32> = x_55.x_Lut2D_Params;
  let x_508 : vec2<f32> = (vec2<f32>(x_505.x, x_505.y) * vec2<f32>(0.5f, 0.5f));
  let x_509 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_508.x, x_508.y, x_509.z, x_509.w);
  let x_511 : vec3<f32> = u_xlat8;
  let x_514 : vec3<f32> = x_55.x_Lut2D_Params;
  let x_517 : vec4<f32> = u_xlat2;
  let x_519 : vec2<f32> = ((vec2<f32>(x_511.y, x_511.z) * vec2<f32>(x_514.x, x_514.y)) + vec2<f32>(x_517.x, x_517.y));
  let x_520 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_520.x, x_519.x, x_519.y, x_520.w);
  let x_523 : f32 = u_xlat8.x;
  let x_525 : f32 = x_55.x_Lut2D_Params.y;
  let x_528 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_523 * x_525) + x_528);
  let x_536 : vec4<f32> = u_xlat2;
  let x_538 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_536.x, x_536.z));
  let x_539 : vec3<f32> = vec3<f32>(x_538.x, x_538.y, x_538.z);
  let x_540 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_539.x, x_539.y, x_539.z, x_540.w);
  let x_543 : f32 = x_55.x_Lut2D_Params.y;
  u_xlat4.x = x_543;
  u_xlat4.y = 0.0f;
  let x_548 : vec4<f32> = u_xlat2;
  let x_550 : vec4<f32> = u_xlat4;
  u_xlat15 = (vec2<f32>(x_548.x, x_548.z) + vec2<f32>(x_550.x, x_550.y));
  let x_556 : vec2<f32> = u_xlat15;
  let x_557 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_556);
  let x_558 : vec3<f32> = vec3<f32>(x_557.x, x_557.y, x_557.z);
  let x_559 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_558.x, x_558.y, x_558.z, x_559.w);
  let x_562 : f32 = u_xlat1.x;
  let x_564 : f32 = x_55.x_Lut2D_Params.z;
  let x_567 : f32 = u_xlat8.x;
  u_xlat1.x = ((x_562 * x_564) + -(x_567));
  let x_571 : vec4<f32> = u_xlat3;
  let x_574 : vec4<f32> = u_xlat2;
  u_xlat8 = (-(vec3<f32>(x_571.x, x_571.y, x_571.z)) + vec3<f32>(x_574.x, x_574.y, x_574.z));
  let x_577 : vec4<f32> = u_xlat1;
  let x_579 : vec3<f32> = u_xlat8;
  let x_581 : vec4<f32> = u_xlat3;
  let x_583 : vec3<f32> = ((vec3<f32>(x_577.x, x_577.x, x_577.x) * x_579) + vec3<f32>(x_581.x, x_581.y, x_581.z));
  let x_584 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_583.x, x_583.y, x_583.z, x_584.w);
  let x_589 : f32 = x_55.x_LumaInAlpha;
  u_xlatb1 = (0.5f < x_589);
  let x_591 : bool = u_xlatb1;
  if (x_591) {
    let x_594 : vec4<f32> = u_xlat0;
    let x_595 : vec3<f32> = vec3<f32>(x_594.x, x_594.y, x_594.z);
    let x_596 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_595.x, x_595.y, x_595.z, x_596.w);
    let x_598 : vec4<f32> = u_xlat1;
    let x_602 : vec3<f32> = clamp(vec3<f32>(x_598.x, x_598.y, x_598.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_603 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_602.x, x_602.y, x_602.z, x_603.w);
    let x_605 : vec4<f32> = u_xlat1;
    u_xlat0.w = dot(vec3<f32>(x_605.x, x_605.y, x_605.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_615 : vec4<f32> = u_xlat0;
  SV_Target0 = x_615;
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

