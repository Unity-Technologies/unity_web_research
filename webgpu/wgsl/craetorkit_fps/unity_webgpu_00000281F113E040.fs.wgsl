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
  var u_xlat10 : f32;
  var x_375 : f32;
  var u_xlat8 : vec3<f32>;
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
      let x_379 : f32 = u_xlat3.x;
      x_375 = x_379;
    } else {
      let x_381 : f32 = u_xlat10;
      x_375 = x_381;
    }
    let x_382 : f32 = x_375;
    u_xlat21 = x_382;
    let x_384 : vec3<f32> = x_55.x_Vignette_Color;
    let x_386 : vec3<f32> = (-(x_384) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_387 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_386.x, x_386.y, x_386.z, x_387.w);
    let x_389 : f32 = u_xlat21;
    let x_391 : vec4<f32> = u_xlat3;
    let x_395 : vec3<f32> = x_55.x_Vignette_Color;
    let x_396 : vec3<f32> = ((vec3<f32>(x_389, x_389, x_389) * vec3<f32>(x_391.x, x_391.y, x_391.z)) + x_395);
    let x_397 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_396.x, x_396.y, x_396.z, x_397.w);
    let x_399 : vec4<f32> = u_xlat0;
    let x_401 : vec4<f32> = u_xlat3;
    let x_404 : vec4<f32> = u_xlat0;
    let x_407 : vec3<f32> = ((vec3<f32>(x_399.x, x_399.y, x_399.z) * vec3<f32>(x_401.x, x_401.y, x_401.z)) + -(vec3<f32>(x_404.x, x_404.y, x_404.z)));
    let x_408 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_407.x, x_407.y, x_407.z, x_408.w);
    let x_412 : f32 = x_55.x_Vignette_Opacity;
    let x_414 : vec4<f32> = u_xlat3;
    let x_417 : vec4<f32> = u_xlat0;
    let x_419 : vec3<f32> = ((vec3<f32>(x_412, x_412, x_412) * vec3<f32>(x_414.x, x_414.y, x_414.z)) + vec3<f32>(x_417.x, x_417.y, x_417.z));
    let x_420 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_419.x, x_419.y, x_419.z, x_420.w);
    let x_423 : f32 = u_xlat1.w;
    u_xlat0.x = (x_423 + -1.0f);
    let x_426 : f32 = u_xlat21;
    let x_428 : f32 = u_xlat0.x;
    u_xlat2.w = ((x_426 * x_428) + 1.0f);
  }
  let x_433 : vec2<f32> = vs_TEXCOORD1;
  let x_436 : vec4<f32> = x_55.x_Grain_Params2;
  let x_440 : vec4<f32> = x_55.x_Grain_Params2;
  let x_442 : vec2<f32> = ((x_433 * vec2<f32>(x_436.x, x_436.y)) + vec2<f32>(x_440.z, x_440.w));
  let x_443 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_442.x, x_442.y, x_443.z, x_443.w);
  let x_450 : vec4<f32> = u_xlat0;
  let x_452 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_450.x, x_450.y));
  let x_453 : vec3<f32> = vec3<f32>(x_452.x, x_452.y, x_452.z);
  let x_454 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_453.x, x_453.y, x_453.z, x_454.w);
  let x_456 : vec4<f32> = u_xlat1;
  let x_457 : vec3<f32> = vec3<f32>(x_456.x, x_456.y, x_456.z);
  let x_458 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_457.x, x_457.y, x_457.z, x_458.w);
  let x_460 : vec4<f32> = u_xlat3;
  let x_464 : vec3<f32> = clamp(vec3<f32>(x_460.x, x_460.y, x_460.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_465 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_464.x, x_464.y, x_464.z, x_465.w);
  let x_467 : vec4<f32> = u_xlat3;
  u_xlat21 = dot(vec3<f32>(x_467.x, x_467.y, x_467.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_474 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_474);
  let x_478 : f32 = x_55.x_Grain_Params1.x;
  let x_479 : f32 = u_xlat21;
  u_xlat21 = ((x_478 * -(x_479)) + 1.0f);
  let x_483 : vec4<f32> = u_xlat0;
  let x_485 : vec4<f32> = u_xlat1;
  let x_487 : vec3<f32> = (vec3<f32>(x_483.x, x_483.y, x_483.z) * vec3<f32>(x_485.x, x_485.y, x_485.z));
  let x_488 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_487.x, x_487.y, x_487.z, x_488.w);
  let x_490 : vec4<f32> = u_xlat0;
  let x_493 : f32 = x_55.x_Grain_Params1.y;
  let x_495 : f32 = x_55.x_Grain_Params1.y;
  let x_497 : f32 = x_55.x_Grain_Params1.y;
  let x_499 : vec3<f32> = (vec3<f32>(x_490.x, x_490.y, x_490.z) * vec3<f32>(x_493, x_495, x_497));
  let x_500 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_499.x, x_499.y, x_499.z, x_500.w);
  let x_502 : vec4<f32> = u_xlat0;
  let x_504 : f32 = u_xlat21;
  let x_507 : vec4<f32> = u_xlat1;
  let x_509 : vec3<f32> = ((vec3<f32>(x_502.x, x_502.y, x_502.z) * vec3<f32>(x_504, x_504, x_504)) + vec3<f32>(x_507.x, x_507.y, x_507.z));
  let x_510 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_509.x, x_509.y, x_509.z, x_510.w);
  let x_512 : vec4<f32> = u_xlat2;
  let x_515 : f32 = x_55.x_PostExposure;
  let x_517 : f32 = x_55.x_PostExposure;
  let x_519 : f32 = x_55.x_PostExposure;
  let x_521 : f32 = x_55.x_PostExposure;
  let x_522 : vec4<f32> = vec4<f32>(x_515, x_517, x_519, x_521);
  u_xlat0 = (x_512 * vec4<f32>(x_522.x, x_522.y, x_522.z, x_522.w));
  let x_529 : vec4<f32> = u_xlat0;
  let x_536 : vec3<f32> = ((vec3<f32>(x_529.z, x_529.x, x_529.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_537 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_536.x, x_536.y, x_536.z, x_537.w);
  let x_539 : vec4<f32> = u_xlat1;
  let x_541 : vec3<f32> = log2(vec3<f32>(x_539.x, x_539.y, x_539.z));
  let x_542 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_541.x, x_541.y, x_541.z, x_542.w);
  let x_544 : vec4<f32> = u_xlat1;
  let x_551 : vec3<f32> = ((vec3<f32>(x_544.x, x_544.y, x_544.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_552 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_551.x, x_551.y, x_551.z, x_552.w);
  let x_554 : vec4<f32> = u_xlat1;
  let x_558 : vec3<f32> = clamp(vec3<f32>(x_554.x, x_554.y, x_554.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_559 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_558.x, x_558.y, x_558.z, x_559.w);
  let x_562 : vec4<f32> = u_xlat1;
  let x_566 : vec3<f32> = x_55.x_Lut2D_Params;
  u_xlat8 = (vec3<f32>(x_562.x, x_562.y, x_562.z) * vec3<f32>(x_566.z, x_566.z, x_566.z));
  let x_570 : f32 = u_xlat8.x;
  u_xlat8.x = floor(x_570);
  let x_574 : vec3<f32> = x_55.x_Lut2D_Params;
  let x_577 : vec2<f32> = (vec2<f32>(x_574.x, x_574.y) * vec2<f32>(0.5f, 0.5f));
  let x_578 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_577.x, x_577.y, x_578.z, x_578.w);
  let x_580 : vec3<f32> = u_xlat8;
  let x_583 : vec3<f32> = x_55.x_Lut2D_Params;
  let x_586 : vec4<f32> = u_xlat2;
  let x_588 : vec2<f32> = ((vec2<f32>(x_580.y, x_580.z) * vec2<f32>(x_583.x, x_583.y)) + vec2<f32>(x_586.x, x_586.y));
  let x_589 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_589.x, x_588.x, x_588.y, x_589.w);
  let x_592 : f32 = u_xlat8.x;
  let x_594 : f32 = x_55.x_Lut2D_Params.y;
  let x_597 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_592 * x_594) + x_597);
  let x_605 : vec4<f32> = u_xlat2;
  let x_607 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_605.x, x_605.z));
  let x_608 : vec3<f32> = vec3<f32>(x_607.x, x_607.y, x_607.z);
  let x_609 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_608.x, x_608.y, x_608.z, x_609.w);
  let x_612 : f32 = x_55.x_Lut2D_Params.y;
  u_xlat4.x = x_612;
  u_xlat4.y = 0.0f;
  let x_617 : vec4<f32> = u_xlat2;
  let x_619 : vec4<f32> = u_xlat4;
  u_xlat15 = (vec2<f32>(x_617.x, x_617.z) + vec2<f32>(x_619.x, x_619.y));
  let x_625 : vec2<f32> = u_xlat15;
  let x_626 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_625);
  let x_627 : vec3<f32> = vec3<f32>(x_626.x, x_626.y, x_626.z);
  let x_628 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_627.x, x_627.y, x_627.z, x_628.w);
  let x_631 : f32 = u_xlat1.x;
  let x_633 : f32 = x_55.x_Lut2D_Params.z;
  let x_636 : f32 = u_xlat8.x;
  u_xlat1.x = ((x_631 * x_633) + -(x_636));
  let x_640 : vec4<f32> = u_xlat3;
  let x_643 : vec4<f32> = u_xlat2;
  u_xlat8 = (-(vec3<f32>(x_640.x, x_640.y, x_640.z)) + vec3<f32>(x_643.x, x_643.y, x_643.z));
  let x_646 : vec4<f32> = u_xlat1;
  let x_648 : vec3<f32> = u_xlat8;
  let x_650 : vec4<f32> = u_xlat3;
  let x_652 : vec3<f32> = ((vec3<f32>(x_646.x, x_646.x, x_646.x) * x_648) + vec3<f32>(x_650.x, x_650.y, x_650.z));
  let x_653 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_652.x, x_652.y, x_652.z, x_653.w);
  let x_658 : f32 = x_55.x_LumaInAlpha;
  u_xlatb1 = (0.5f < x_658);
  let x_660 : bool = u_xlatb1;
  if (x_660) {
    let x_663 : vec4<f32> = u_xlat0;
    let x_664 : vec3<f32> = vec3<f32>(x_663.x, x_663.y, x_663.z);
    let x_665 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_664.x, x_664.y, x_664.z, x_665.w);
    let x_667 : vec4<f32> = u_xlat1;
    let x_671 : vec3<f32> = clamp(vec3<f32>(x_667.x, x_667.y, x_667.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_672 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_671.x, x_671.y, x_671.z, x_672.w);
    let x_674 : vec4<f32> = u_xlat1;
    u_xlat0.w = dot(vec3<f32>(x_674.x, x_674.y, x_674.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_680 : vec4<f32> = u_xlat0;
  SV_Target0 = x_680;
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

