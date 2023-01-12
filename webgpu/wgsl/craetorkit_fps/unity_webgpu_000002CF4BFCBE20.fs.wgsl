struct PGlobals {
  x_ScreenParams : vec4<f32>,
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_Dithering_Coords : vec4<f32>,
  x_ChromaticAberration_Amount : f32,
  @size(4)
  padding_1 : u32,
  x_Lut3D_Params : vec2<f32>,
  x_PostExposure : f32,
  @size(12)
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

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_55 : PGlobals;

@group(0) @binding(3) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(9) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

@group(0) @binding(5) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(11) var sampler_Vignette_Mask : sampler;

@group(0) @binding(4) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(10) var sampler_Lut3D : sampler;

@group(0) @binding(0) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_DitheringTex : sampler;

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
  var u_xlatb0 : vec3<bool>;
  var x_645 : f32;
  var x_657 : f32;
  var x_669 : f32;
  var x_738 : f32;
  var x_751 : f32;
  var x_763 : f32;
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
  let x_468 : vec3<f32> = ((vec3<f32>(x_461.x, x_461.y, x_461.z) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_469 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_468.x, x_468.y, x_468.z, x_469.w);
  let x_471 : vec4<f32> = u_xlat0;
  let x_473 : vec3<f32> = log2(vec3<f32>(x_471.x, x_471.y, x_471.z));
  let x_474 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_473.x, x_473.y, x_473.z, x_474.w);
  let x_476 : vec4<f32> = u_xlat0;
  let x_483 : vec3<f32> = ((vec3<f32>(x_476.x, x_476.y, x_476.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_484 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_483.x, x_483.y, x_483.z, x_484.w);
  let x_486 : vec4<f32> = u_xlat0;
  let x_490 : vec3<f32> = clamp(vec3<f32>(x_486.x, x_486.y, x_486.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_491 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_490.x, x_490.y, x_490.z, x_491.w);
  let x_493 : vec4<f32> = u_xlat0;
  let x_497 : vec2<f32> = x_55.x_Lut3D_Params;
  let x_499 : vec3<f32> = (vec3<f32>(x_493.x, x_493.y, x_493.z) * vec3<f32>(x_497.y, x_497.y, x_497.y));
  let x_500 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_499.x, x_499.y, x_499.z, x_500.w);
  let x_503 : f32 = x_55.x_Lut3D_Params.x;
  u_xlat1.x = (x_503 * 0.5f);
  let x_506 : vec4<f32> = u_xlat0;
  let x_509 : vec2<f32> = x_55.x_Lut3D_Params;
  let x_512 : vec4<f32> = u_xlat1;
  let x_514 : vec3<f32> = ((vec3<f32>(x_506.x, x_506.y, x_506.z) * vec3<f32>(x_509.x, x_509.x, x_509.x)) + vec3<f32>(x_512.x, x_512.x, x_512.x));
  let x_515 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_514.x, x_514.y, x_514.z, x_515.w);
  let x_525 : vec4<f32> = u_xlat0;
  let x_527 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, vec3<f32>(x_525.x, x_525.y, x_525.z));
  let x_528 : vec3<f32> = vec3<f32>(x_527.x, x_527.y, x_527.z);
  let x_529 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_528.x, x_528.y, x_528.z, x_529.w);
  let x_531 : vec2<f32> = vs_TEXCOORD0;
  let x_534 : vec4<f32> = x_55.x_Dithering_Coords;
  let x_538 : vec4<f32> = x_55.x_Dithering_Coords;
  let x_540 : vec2<f32> = ((x_531 * vec2<f32>(x_534.x, x_534.y)) + vec2<f32>(x_538.z, x_538.w));
  let x_541 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_540.x, x_540.y, x_541.z, x_541.w);
  let x_548 : vec4<f32> = u_xlat1;
  let x_550 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_548.x, x_548.y));
  u_xlat1.x = x_550.w;
  let x_554 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_554 * 2.0f) + -1.0f);
  let x_559 : f32 = u_xlat1.x;
  u_xlat8.x = ((x_559 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_565 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_565, 0.0f, 1.0f);
  let x_569 : f32 = u_xlat8.x;
  u_xlat8.x = ((x_569 * 2.0f) + -1.0f);
  let x_574 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_574)) + 1.0f);
  let x_580 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_580);
  let x_584 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_584) + 1.0f);
  let x_589 : f32 = u_xlat1.x;
  let x_591 : f32 = u_xlat8.x;
  u_xlat1.x = (x_589 * x_591);
  let x_594 : vec4<f32> = u_xlat0;
  u_xlat8 = (vec3<f32>(x_594.x, x_594.y, x_594.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_599 : vec4<f32> = u_xlat0;
  let x_603 : vec3<f32> = max(abs(vec3<f32>(x_599.x, x_599.y, x_599.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_604 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_603.x, x_603.y, x_603.z, x_604.w);
  let x_606 : vec4<f32> = u_xlat2;
  let x_608 : vec3<f32> = log2(vec3<f32>(x_606.x, x_606.y, x_606.z));
  let x_609 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_608.x, x_608.y, x_608.z, x_609.w);
  let x_611 : vec4<f32> = u_xlat2;
  let x_615 : vec3<f32> = (vec3<f32>(x_611.x, x_611.y, x_611.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_616 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_615.x, x_615.y, x_615.z, x_616.w);
  let x_618 : vec4<f32> = u_xlat2;
  let x_620 : vec3<f32> = exp2(vec3<f32>(x_618.x, x_618.y, x_618.z));
  let x_621 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_620.x, x_620.y, x_620.z, x_621.w);
  let x_623 : vec4<f32> = u_xlat2;
  let x_630 : vec3<f32> = ((vec3<f32>(x_623.x, x_623.y, x_623.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_631 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_630.x, x_630.y, x_630.z, x_631.w);
  let x_638 : vec4<f32> = u_xlat0;
  let x_641 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_638.x, x_638.y, x_638.z, x_638.x));
  u_xlatb0 = vec3<bool>(x_641.x, x_641.y, x_641.z);
  let x_644 : bool = u_xlatb0.x;
  if (x_644) {
    let x_649 : f32 = u_xlat8.x;
    x_645 = x_649;
  } else {
    let x_652 : f32 = u_xlat2.x;
    x_645 = x_652;
  }
  let x_653 : f32 = x_645;
  u_xlat0.x = x_653;
  let x_656 : bool = u_xlatb0.y;
  if (x_656) {
    let x_661 : f32 = u_xlat8.y;
    x_657 = x_661;
  } else {
    let x_664 : f32 = u_xlat2.y;
    x_657 = x_664;
  }
  let x_665 : f32 = x_657;
  u_xlat0.y = x_665;
  let x_668 : bool = u_xlatb0.z;
  if (x_668) {
    let x_673 : f32 = u_xlat8.z;
    x_669 = x_673;
  } else {
    let x_676 : f32 = u_xlat2.z;
    x_669 = x_676;
  }
  let x_677 : f32 = x_669;
  u_xlat0.z = x_677;
  let x_679 : vec4<f32> = u_xlat1;
  let x_684 : vec4<f32> = u_xlat0;
  let x_686 : vec3<f32> = ((vec3<f32>(x_679.x, x_679.x, x_679.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_684.x, x_684.y, x_684.z));
  let x_687 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_686.x, x_686.y, x_686.z, x_687.w);
  let x_689 : vec4<f32> = u_xlat0;
  let x_692 : vec3<f32> = (vec3<f32>(x_689.x, x_689.y, x_689.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_693 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_692.x, x_692.y, x_692.z, x_693.w);
  let x_695 : vec4<f32> = u_xlat0;
  let x_698 : vec3<f32> = (vec3<f32>(x_695.x, x_695.y, x_695.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_699 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_698.x, x_698.y, x_698.z, x_699.w);
  let x_701 : vec4<f32> = u_xlat2;
  let x_704 : vec3<f32> = (vec3<f32>(x_701.x, x_701.y, x_701.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_705 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_704.x, x_704.y, x_704.z, x_705.w);
  let x_707 : vec4<f32> = u_xlat2;
  let x_710 : vec3<f32> = max(abs(vec3<f32>(x_707.x, x_707.y, x_707.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_711 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_710.x, x_710.y, x_710.z, x_711.w);
  let x_713 : vec4<f32> = u_xlat2;
  let x_715 : vec3<f32> = log2(vec3<f32>(x_713.x, x_713.y, x_713.z));
  let x_716 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_715.x, x_715.y, x_715.z, x_716.w);
  let x_718 : vec4<f32> = u_xlat2;
  let x_721 : vec3<f32> = (vec3<f32>(x_718.x, x_718.y, x_718.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_722 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_721.x, x_721.y, x_721.z, x_722.w);
  let x_724 : vec4<f32> = u_xlat2;
  let x_726 : vec3<f32> = exp2(vec3<f32>(x_724.x, x_724.y, x_724.z));
  let x_727 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_726.x, x_726.y, x_726.z, x_727.w);
  let x_730 : vec4<f32> = u_xlat0;
  let x_732 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_730.x, x_730.y, x_730.z, x_730.x));
  u_xlatb0 = vec3<bool>(x_732.x, x_732.y, x_732.z);
  let x_737 : bool = u_xlatb0.x;
  if (x_737) {
    let x_742 : f32 = u_xlat1.x;
    x_738 = x_742;
  } else {
    let x_745 : f32 = u_xlat2.x;
    x_738 = x_745;
  }
  let x_746 : f32 = x_738;
  SV_Target0.x = x_746;
  let x_750 : bool = u_xlatb0.y;
  if (x_750) {
    let x_755 : f32 = u_xlat1.y;
    x_751 = x_755;
  } else {
    let x_758 : f32 = u_xlat2.y;
    x_751 = x_758;
  }
  let x_759 : f32 = x_751;
  SV_Target0.y = x_759;
  let x_762 : bool = u_xlatb0.z;
  if (x_762) {
    let x_767 : f32 = u_xlat1.z;
    x_763 = x_767;
  } else {
    let x_770 : f32 = u_xlat2.z;
    x_763 = x_770;
  }
  let x_771 : f32 = x_763;
  SV_Target0.z = x_771;
  let x_774 : f32 = u_xlat0.w;
  SV_Target0.w = x_774;
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

