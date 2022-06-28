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
  x_Grain_Params1 : vec2<f32>,
  x_Grain_Params2 : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(3) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat7 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_55 : PGlobals;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(4) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(11) var sampler_ChromaticAberration_SpectralLut : sampler;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlatb21 : bool;

var<private> u_xlat21 : f32;

@group(0) @binding(6) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(13) var sampler_Vignette_Mask : sampler;

var<private> u_xlat10 : f32;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(7) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(14) var sampler_GrainTex : sampler;

@group(0) @binding(5) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(12) var sampler_Lut2D : sampler;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_DitheringTex : sampler;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_376 : f32;
  var x_776 : f32;
  var x_788 : f32;
  var x_800 : f32;
  var x_869 : f32;
  var x_882 : f32;
  var x_894 : f32;
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
    let x_328 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_327.x, x_327.y, x_327.z, x_328.w);
    let x_331 : f32 = u_xlat1.w;
    u_xlat2.x = (x_331 + -1.0f);
    let x_334 : f32 = u_xlat21;
    let x_336 : f32 = u_xlat2.x;
    u_xlat2.w = ((x_334 * x_336) + 1.0f);
  } else {
    let x_346 : vec2<f32> = vs_TEXCOORD0;
    let x_347 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_346);
    u_xlat21 = x_347.w;
    let x_349 : f32 = u_xlat21;
    u_xlat3.x = (x_349 * 0.077399381f);
    let x_354 : f32 = u_xlat21;
    u_xlat10 = (x_354 + 0.055f);
    let x_357 : f32 = u_xlat10;
    u_xlat10 = (x_357 * 0.947867334f);
    let x_360 : f32 = u_xlat10;
    u_xlat10 = max(abs(x_360), 1.1920929e-07f);
    let x_364 : f32 = u_xlat10;
    u_xlat10 = log2(x_364);
    let x_366 : f32 = u_xlat10;
    u_xlat10 = (x_366 * 2.400000095f);
    let x_369 : f32 = u_xlat10;
    u_xlat10 = exp2(x_369);
    let x_372 : f32 = u_xlat21;
    u_xlatb21 = (0.040449999f >= x_372);
    let x_374 : bool = u_xlatb21;
    if (x_374) {
      let x_380 : f32 = u_xlat3.x;
      x_376 = x_380;
    } else {
      let x_382 : f32 = u_xlat10;
      x_376 = x_382;
    }
    let x_383 : f32 = x_376;
    u_xlat21 = x_383;
    let x_385 : vec3<f32> = x_55.x_Vignette_Color;
    let x_387 : vec3<f32> = (-(x_385) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_388 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_387.x, x_387.y, x_387.z, x_388.w);
    let x_390 : f32 = u_xlat21;
    let x_392 : vec4<f32> = u_xlat3;
    let x_396 : vec3<f32> = x_55.x_Vignette_Color;
    let x_397 : vec3<f32> = ((vec3<f32>(x_390, x_390, x_390) * vec3<f32>(x_392.x, x_392.y, x_392.z)) + x_396);
    let x_398 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_397.x, x_397.y, x_397.z, x_398.w);
    let x_400 : vec4<f32> = u_xlat0;
    let x_402 : vec4<f32> = u_xlat3;
    let x_405 : vec4<f32> = u_xlat0;
    let x_408 : vec3<f32> = ((vec3<f32>(x_400.x, x_400.y, x_400.z) * vec3<f32>(x_402.x, x_402.y, x_402.z)) + -(vec3<f32>(x_405.x, x_405.y, x_405.z)));
    let x_409 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_408.x, x_408.y, x_408.z, x_409.w);
    let x_413 : f32 = x_55.x_Vignette_Opacity;
    let x_415 : vec4<f32> = u_xlat3;
    let x_418 : vec4<f32> = u_xlat0;
    let x_420 : vec3<f32> = ((vec3<f32>(x_413, x_413, x_413) * vec3<f32>(x_415.x, x_415.y, x_415.z)) + vec3<f32>(x_418.x, x_418.y, x_418.z));
    let x_421 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_420.x, x_420.y, x_420.z, x_421.w);
    let x_424 : f32 = u_xlat1.w;
    u_xlat0.x = (x_424 + -1.0f);
    let x_427 : f32 = u_xlat21;
    let x_429 : f32 = u_xlat0.x;
    u_xlat2.w = ((x_427 * x_429) + 1.0f);
  }
  let x_434 : vec2<f32> = vs_TEXCOORD1;
  let x_437 : vec4<f32> = x_55.x_Grain_Params2;
  let x_441 : vec4<f32> = x_55.x_Grain_Params2;
  let x_443 : vec2<f32> = ((x_434 * vec2<f32>(x_437.x, x_437.y)) + vec2<f32>(x_441.z, x_441.w));
  let x_444 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_443.x, x_443.y, x_444.z, x_444.w);
  let x_451 : vec4<f32> = u_xlat0;
  let x_453 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_451.x, x_451.y));
  let x_454 : vec3<f32> = vec3<f32>(x_453.x, x_453.y, x_453.z);
  let x_455 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_454.x, x_454.y, x_454.z, x_455.w);
  let x_457 : vec4<f32> = u_xlat1;
  let x_458 : vec3<f32> = vec3<f32>(x_457.x, x_457.y, x_457.z);
  let x_459 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_458.x, x_458.y, x_458.z, x_459.w);
  let x_461 : vec4<f32> = u_xlat3;
  let x_465 : vec3<f32> = clamp(vec3<f32>(x_461.x, x_461.y, x_461.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_466 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_465.x, x_465.y, x_465.z, x_466.w);
  let x_468 : vec4<f32> = u_xlat3;
  u_xlat21 = dot(vec3<f32>(x_468.x, x_468.y, x_468.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_475 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_475);
  let x_479 : f32 = x_55.x_Grain_Params1.x;
  let x_480 : f32 = u_xlat21;
  u_xlat21 = ((x_479 * -(x_480)) + 1.0f);
  let x_484 : vec4<f32> = u_xlat0;
  let x_486 : vec4<f32> = u_xlat1;
  let x_488 : vec3<f32> = (vec3<f32>(x_484.x, x_484.y, x_484.z) * vec3<f32>(x_486.x, x_486.y, x_486.z));
  let x_489 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_488.x, x_488.y, x_488.z, x_489.w);
  let x_491 : vec4<f32> = u_xlat0;
  let x_494 : f32 = x_55.x_Grain_Params1.y;
  let x_496 : f32 = x_55.x_Grain_Params1.y;
  let x_498 : f32 = x_55.x_Grain_Params1.y;
  let x_500 : vec3<f32> = (vec3<f32>(x_491.x, x_491.y, x_491.z) * vec3<f32>(x_494, x_496, x_498));
  let x_501 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_500.x, x_500.y, x_500.z, x_501.w);
  let x_503 : vec4<f32> = u_xlat0;
  let x_505 : f32 = u_xlat21;
  let x_508 : vec4<f32> = u_xlat1;
  let x_510 : vec3<f32> = ((vec3<f32>(x_503.x, x_503.y, x_503.z) * vec3<f32>(x_505, x_505, x_505)) + vec3<f32>(x_508.x, x_508.y, x_508.z));
  let x_511 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_510.x, x_510.y, x_510.z, x_511.w);
  let x_513 : vec4<f32> = u_xlat2;
  let x_516 : f32 = x_55.x_PostExposure;
  let x_518 : f32 = x_55.x_PostExposure;
  let x_520 : f32 = x_55.x_PostExposure;
  let x_522 : f32 = x_55.x_PostExposure;
  let x_523 : vec4<f32> = vec4<f32>(x_516, x_518, x_520, x_522);
  u_xlat0 = (x_513 * vec4<f32>(x_523.x, x_523.y, x_523.z, x_523.w));
  let x_530 : vec4<f32> = u_xlat0;
  let x_537 : vec3<f32> = ((vec3<f32>(x_530.z, x_530.x, x_530.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_538 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_537.x, x_537.y, x_537.z, x_538.w);
  let x_540 : vec4<f32> = u_xlat0;
  let x_542 : vec3<f32> = log2(vec3<f32>(x_540.x, x_540.y, x_540.z));
  let x_543 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_542.x, x_542.y, x_542.z, x_543.w);
  let x_545 : vec4<f32> = u_xlat0;
  let x_552 : vec3<f32> = ((vec3<f32>(x_545.x, x_545.y, x_545.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_553 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_552.x, x_552.y, x_552.z, x_553.w);
  let x_555 : vec4<f32> = u_xlat0;
  let x_559 : vec3<f32> = clamp(vec3<f32>(x_555.x, x_555.y, x_555.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_560 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_559.x, x_559.y, x_559.z, x_560.w);
  let x_562 : vec4<f32> = u_xlat0;
  let x_566 : vec3<f32> = x_55.x_Lut2D_Params;
  let x_568 : vec3<f32> = (vec3<f32>(x_562.x, x_562.y, x_562.z) * vec3<f32>(x_566.z, x_566.z, x_566.z));
  let x_569 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_568.x, x_568.y, x_568.z, x_569.w);
  let x_572 : f32 = u_xlat1.x;
  u_xlat7.x = floor(x_572);
  let x_576 : vec3<f32> = x_55.x_Lut2D_Params;
  let x_579 : vec2<f32> = (vec2<f32>(x_576.x, x_576.y) * vec2<f32>(0.5f, 0.5f));
  let x_580 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_579.x, x_580.y, x_580.z, x_579.y);
  let x_582 : vec4<f32> = u_xlat1;
  let x_585 : vec3<f32> = x_55.x_Lut2D_Params;
  let x_588 : vec4<f32> = u_xlat1;
  let x_590 : vec2<f32> = ((vec2<f32>(x_582.y, x_582.z) * vec2<f32>(x_585.x, x_585.y)) + vec2<f32>(x_588.x, x_588.w));
  let x_591 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_591.x, x_590.x, x_590.y, x_591.w);
  let x_594 : f32 = u_xlat7.x;
  let x_596 : f32 = x_55.x_Lut2D_Params.y;
  let x_599 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_594 * x_596) + x_599);
  let x_607 : vec4<f32> = u_xlat1;
  let x_609 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_607.x, x_607.z));
  let x_610 : vec3<f32> = vec3<f32>(x_609.x, x_609.y, x_609.z);
  let x_611 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_610.x, x_610.y, x_610.z, x_611.w);
  let x_614 : f32 = x_55.x_Lut2D_Params.y;
  u_xlat3.x = x_614;
  u_xlat3.y = 0.0f;
  let x_617 : vec4<f32> = u_xlat1;
  let x_619 : vec4<f32> = u_xlat3;
  let x_621 : vec2<f32> = (vec2<f32>(x_617.x, x_617.z) + vec2<f32>(x_619.x, x_619.y));
  let x_622 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_621.x, x_621.y, x_622.z, x_622.w);
  let x_627 : vec4<f32> = u_xlat1;
  let x_629 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_627.x, x_627.y));
  let x_630 : vec3<f32> = vec3<f32>(x_629.x, x_629.y, x_629.z);
  let x_631 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_630.x, x_630.y, x_630.z, x_631.w);
  let x_634 : f32 = u_xlat0.x;
  let x_636 : f32 = x_55.x_Lut2D_Params.z;
  let x_639 : f32 = u_xlat7.x;
  u_xlat0.x = ((x_634 * x_636) + -(x_639));
  let x_643 : vec4<f32> = u_xlat2;
  let x_646 : vec4<f32> = u_xlat1;
  let x_648 : vec3<f32> = (-(vec3<f32>(x_643.x, x_643.y, x_643.z)) + vec3<f32>(x_646.x, x_646.y, x_646.z));
  let x_649 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_648.x, x_648.y, x_648.z, x_649.w);
  let x_651 : vec4<f32> = u_xlat0;
  let x_653 : vec4<f32> = u_xlat1;
  let x_656 : vec4<f32> = u_xlat2;
  let x_658 : vec3<f32> = ((vec3<f32>(x_651.x, x_651.x, x_651.x) * vec3<f32>(x_653.x, x_653.y, x_653.z)) + vec3<f32>(x_656.x, x_656.y, x_656.z));
  let x_659 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_658.x, x_658.y, x_658.z, x_659.w);
  let x_661 : vec2<f32> = vs_TEXCOORD0;
  let x_664 : vec4<f32> = x_55.x_Dithering_Coords;
  let x_668 : vec4<f32> = x_55.x_Dithering_Coords;
  let x_670 : vec2<f32> = ((x_661 * vec2<f32>(x_664.x, x_664.y)) + vec2<f32>(x_668.z, x_668.w));
  let x_671 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_670.x, x_670.y, x_671.z, x_671.w);
  let x_678 : vec4<f32> = u_xlat1;
  let x_680 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_678.x, x_678.y));
  u_xlat1.x = x_680.w;
  let x_684 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_684 * 2.0f) + -1.0f);
  let x_690 : f32 = u_xlat1.x;
  u_xlat8.x = ((x_690 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_696 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_696, 0.0f, 1.0f);
  let x_700 : f32 = u_xlat8.x;
  u_xlat8.x = ((x_700 * 2.0f) + -1.0f);
  let x_705 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_705)) + 1.0f);
  let x_711 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_711);
  let x_715 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_715) + 1.0f);
  let x_720 : f32 = u_xlat1.x;
  let x_722 : f32 = u_xlat8.x;
  u_xlat1.x = (x_720 * x_722);
  let x_725 : vec4<f32> = u_xlat0;
  u_xlat8 = (vec3<f32>(x_725.x, x_725.y, x_725.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_730 : vec4<f32> = u_xlat0;
  let x_734 : vec3<f32> = max(abs(vec3<f32>(x_730.x, x_730.y, x_730.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_735 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_734.x, x_734.y, x_734.z, x_735.w);
  let x_737 : vec4<f32> = u_xlat2;
  let x_739 : vec3<f32> = log2(vec3<f32>(x_737.x, x_737.y, x_737.z));
  let x_740 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_739.x, x_739.y, x_739.z, x_740.w);
  let x_742 : vec4<f32> = u_xlat2;
  let x_746 : vec3<f32> = (vec3<f32>(x_742.x, x_742.y, x_742.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_747 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_746.x, x_746.y, x_746.z, x_747.w);
  let x_749 : vec4<f32> = u_xlat2;
  let x_751 : vec3<f32> = exp2(vec3<f32>(x_749.x, x_749.y, x_749.z));
  let x_752 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_751.x, x_751.y, x_751.z, x_752.w);
  let x_754 : vec4<f32> = u_xlat2;
  let x_761 : vec3<f32> = ((vec3<f32>(x_754.x, x_754.y, x_754.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_762 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_761.x, x_761.y, x_761.z, x_762.w);
  let x_769 : vec4<f32> = u_xlat0;
  let x_772 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_769.x, x_769.y, x_769.z, x_769.x));
  u_xlatb0 = vec3<bool>(x_772.x, x_772.y, x_772.z);
  let x_775 : bool = u_xlatb0.x;
  if (x_775) {
    let x_780 : f32 = u_xlat8.x;
    x_776 = x_780;
  } else {
    let x_783 : f32 = u_xlat2.x;
    x_776 = x_783;
  }
  let x_784 : f32 = x_776;
  u_xlat0.x = x_784;
  let x_787 : bool = u_xlatb0.y;
  if (x_787) {
    let x_792 : f32 = u_xlat8.y;
    x_788 = x_792;
  } else {
    let x_795 : f32 = u_xlat2.y;
    x_788 = x_795;
  }
  let x_796 : f32 = x_788;
  u_xlat0.y = x_796;
  let x_799 : bool = u_xlatb0.z;
  if (x_799) {
    let x_804 : f32 = u_xlat8.z;
    x_800 = x_804;
  } else {
    let x_807 : f32 = u_xlat2.z;
    x_800 = x_807;
  }
  let x_808 : f32 = x_800;
  u_xlat0.z = x_808;
  let x_810 : vec4<f32> = u_xlat1;
  let x_815 : vec4<f32> = u_xlat0;
  let x_817 : vec3<f32> = ((vec3<f32>(x_810.x, x_810.x, x_810.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_815.x, x_815.y, x_815.z));
  let x_818 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_817.x, x_817.y, x_817.z, x_818.w);
  let x_820 : vec4<f32> = u_xlat0;
  let x_823 : vec3<f32> = (vec3<f32>(x_820.x, x_820.y, x_820.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_824 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_823.x, x_823.y, x_823.z, x_824.w);
  let x_826 : vec4<f32> = u_xlat0;
  let x_829 : vec3<f32> = (vec3<f32>(x_826.x, x_826.y, x_826.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_830 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_829.x, x_829.y, x_829.z, x_830.w);
  let x_832 : vec4<f32> = u_xlat2;
  let x_835 : vec3<f32> = (vec3<f32>(x_832.x, x_832.y, x_832.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_836 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_835.x, x_835.y, x_835.z, x_836.w);
  let x_838 : vec4<f32> = u_xlat2;
  let x_841 : vec3<f32> = max(abs(vec3<f32>(x_838.x, x_838.y, x_838.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_842 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_841.x, x_841.y, x_841.z, x_842.w);
  let x_844 : vec4<f32> = u_xlat2;
  let x_846 : vec3<f32> = log2(vec3<f32>(x_844.x, x_844.y, x_844.z));
  let x_847 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_846.x, x_846.y, x_846.z, x_847.w);
  let x_849 : vec4<f32> = u_xlat2;
  let x_852 : vec3<f32> = (vec3<f32>(x_849.x, x_849.y, x_849.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_853 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_852.x, x_852.y, x_852.z, x_853.w);
  let x_855 : vec4<f32> = u_xlat2;
  let x_857 : vec3<f32> = exp2(vec3<f32>(x_855.x, x_855.y, x_855.z));
  let x_858 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_857.x, x_857.y, x_857.z, x_858.w);
  let x_861 : vec4<f32> = u_xlat0;
  let x_863 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_861.x, x_861.y, x_861.z, x_861.x));
  u_xlatb0 = vec3<bool>(x_863.x, x_863.y, x_863.z);
  let x_868 : bool = u_xlatb0.x;
  if (x_868) {
    let x_873 : f32 = u_xlat1.x;
    x_869 = x_873;
  } else {
    let x_876 : f32 = u_xlat2.x;
    x_869 = x_876;
  }
  let x_877 : f32 = x_869;
  SV_Target0.x = x_877;
  let x_881 : bool = u_xlatb0.y;
  if (x_881) {
    let x_886 : f32 = u_xlat1.y;
    x_882 = x_886;
  } else {
    let x_889 : f32 = u_xlat2.y;
    x_882 = x_889;
  }
  let x_890 : f32 = x_882;
  SV_Target0.y = x_890;
  let x_893 : bool = u_xlatb0.z;
  if (x_893) {
    let x_898 : f32 = u_xlat1.z;
    x_894 = x_898;
  } else {
    let x_901 : f32 = u_xlat2.z;
    x_894 = x_901;
  }
  let x_902 : f32 = x_894;
  SV_Target0.z = x_902;
  let x_905 : f32 = u_xlat0.w;
  SV_Target0.w = x_905;
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

