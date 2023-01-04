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

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat7 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_55 : PGlobals;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(3) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(9) var sampler_ChromaticAberration_SpectralLut : sampler;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlatb21 : bool;

var<private> u_xlat21 : f32;

@group(0) @binding(5) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(11) var sampler_Vignette_Mask : sampler;

var<private> u_xlat10 : f32;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(6) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_GrainTex : sampler;

var<private> u_xlatb3 : vec3<bool>;

@group(0) @binding(4) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(10) var sampler_Lut2D : sampler;

var<private> u_xlat14 : vec2<f32>;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_373 : f32;
  var hlslcc_movcTemp : vec3<f32>;
  var x_556 : f32;
  var x_568 : f32;
  var x_580 : f32;
  var x_727 : f32;
  var x_739 : f32;
  var x_751 : f32;
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
  let x_428 : vec2<f32> = vs_TEXCOORD1;
  let x_431 : vec4<f32> = x_55.x_Grain_Params2;
  let x_435 : vec4<f32> = x_55.x_Grain_Params2;
  let x_437 : vec2<f32> = ((x_428 * vec2<f32>(x_431.x, x_431.y)) + vec2<f32>(x_435.z, x_435.w));
  let x_438 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_437.x, x_437.y, x_438.z);
  let x_445 : vec3<f32> = u_xlat0;
  let x_447 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_445.x, x_445.y));
  u_xlat0 = vec3<f32>(x_447.x, x_447.y, x_447.z);
  let x_449 : vec4<f32> = u_xlat1;
  let x_450 : vec3<f32> = vec3<f32>(x_449.x, x_449.y, x_449.z);
  let x_451 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_450.x, x_450.y, x_450.z, x_451.w);
  let x_453 : vec4<f32> = u_xlat3;
  let x_457 : vec3<f32> = clamp(vec3<f32>(x_453.x, x_453.y, x_453.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_458 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_457.x, x_457.y, x_457.z, x_458.w);
  let x_460 : vec4<f32> = u_xlat3;
  u_xlat21 = dot(vec3<f32>(x_460.x, x_460.y, x_460.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_467 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_467);
  let x_471 : f32 = x_55.x_Grain_Params1.x;
  let x_472 : f32 = u_xlat21;
  u_xlat21 = ((x_471 * -(x_472)) + 1.0f);
  let x_476 : vec3<f32> = u_xlat0;
  let x_477 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_476 * vec3<f32>(x_477.x, x_477.y, x_477.z));
  let x_480 : vec3<f32> = u_xlat0;
  let x_482 : f32 = x_55.x_Grain_Params1.y;
  let x_484 : f32 = x_55.x_Grain_Params1.y;
  let x_486 : f32 = x_55.x_Grain_Params1.y;
  u_xlat0 = (x_480 * vec3<f32>(x_482, x_484, x_486));
  let x_489 : vec3<f32> = u_xlat0;
  let x_490 : f32 = u_xlat21;
  let x_493 : vec4<f32> = u_xlat1;
  let x_495 : vec3<f32> = ((x_489 * vec3<f32>(x_490, x_490, x_490)) + vec3<f32>(x_493.x, x_493.y, x_493.z));
  let x_496 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_495.x, x_495.y, x_495.z, x_496.w);
  let x_498 : vec4<f32> = u_xlat2;
  u_xlat2 = x_498;
  let x_499 : vec4<f32> = u_xlat2;
  u_xlat2 = clamp(x_499, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_503 : vec4<f32> = u_xlat2;
  u_xlat0 = (vec3<f32>(x_503.z, x_503.x, x_503.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_508 : vec4<f32> = u_xlat2;
  let x_511 : vec3<f32> = max(vec3<f32>(x_508.z, x_508.x, x_508.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_512 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_511.x, x_511.y, x_511.z, x_512.w);
  let x_514 : vec4<f32> = u_xlat1;
  let x_516 : vec3<f32> = log2(vec3<f32>(x_514.x, x_514.y, x_514.z));
  let x_517 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_516.x, x_516.y, x_516.z, x_517.w);
  let x_519 : vec4<f32> = u_xlat1;
  let x_523 : vec3<f32> = (vec3<f32>(x_519.x, x_519.y, x_519.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_524 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_523.x, x_523.y, x_523.z, x_524.w);
  let x_526 : vec4<f32> = u_xlat1;
  let x_528 : vec3<f32> = exp2(vec3<f32>(x_526.x, x_526.y, x_526.z));
  let x_529 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_528.x, x_528.y, x_528.z, x_529.w);
  let x_531 : vec4<f32> = u_xlat1;
  let x_538 : vec3<f32> = ((vec3<f32>(x_531.x, x_531.y, x_531.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_539 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_538.x, x_538.y, x_538.z, x_539.w);
  let x_546 : vec4<f32> = u_xlat2;
  let x_549 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_546.z, x_546.x, x_546.y, x_546.z));
  u_xlatb3 = vec3<bool>(x_549.x, x_549.y, x_549.z);
  let x_553 : vec3<f32> = u_xlat0;
  hlslcc_movcTemp = x_553;
  let x_555 : bool = u_xlatb3.x;
  if (x_555) {
    let x_560 : f32 = u_xlat0.x;
    x_556 = x_560;
  } else {
    let x_563 : f32 = u_xlat1.x;
    x_556 = x_563;
  }
  let x_564 : f32 = x_556;
  hlslcc_movcTemp.x = x_564;
  let x_567 : bool = u_xlatb3.y;
  if (x_567) {
    let x_572 : f32 = u_xlat0.y;
    x_568 = x_572;
  } else {
    let x_575 : f32 = u_xlat1.y;
    x_568 = x_575;
  }
  let x_576 : f32 = x_568;
  hlslcc_movcTemp.y = x_576;
  let x_579 : bool = u_xlatb3.z;
  if (x_579) {
    let x_584 : f32 = u_xlat0.z;
    x_580 = x_584;
  } else {
    let x_587 : f32 = u_xlat1.z;
    x_580 = x_587;
  }
  let x_588 : f32 = x_580;
  hlslcc_movcTemp.z = x_588;
  let x_590 : vec3<f32> = hlslcc_movcTemp;
  u_xlat0 = x_590;
  let x_591 : vec3<f32> = u_xlat0;
  let x_594 : vec3<f32> = x_55.x_Lut2D_Params;
  u_xlat7 = (x_591 * vec3<f32>(x_594.z, x_594.z, x_594.z));
  let x_598 : f32 = u_xlat7.x;
  u_xlat7.x = floor(x_598);
  let x_602 : vec3<f32> = x_55.x_Lut2D_Params;
  let x_605 : vec2<f32> = (vec2<f32>(x_602.x, x_602.y) * vec2<f32>(0.5f, 0.5f));
  let x_606 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_605.x, x_605.y, x_606.z, x_606.w);
  let x_608 : vec3<f32> = u_xlat7;
  let x_611 : vec3<f32> = x_55.x_Lut2D_Params;
  let x_614 : vec4<f32> = u_xlat1;
  let x_616 : vec2<f32> = ((vec2<f32>(x_608.y, x_608.z) * vec2<f32>(x_611.x, x_611.y)) + vec2<f32>(x_614.x, x_614.y));
  let x_617 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_617.x, x_616.x, x_616.y, x_617.w);
  let x_620 : f32 = u_xlat7.x;
  let x_622 : f32 = x_55.x_Lut2D_Params.y;
  let x_625 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_620 * x_622) + x_625);
  let x_633 : vec4<f32> = u_xlat1;
  let x_635 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_633.x, x_633.z));
  let x_636 : vec3<f32> = vec3<f32>(x_635.x, x_635.y, x_635.z);
  let x_637 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_636.x, x_636.y, x_636.z, x_637.w);
  let x_640 : f32 = x_55.x_Lut2D_Params.y;
  u_xlat4.x = x_640;
  u_xlat4.y = 0.0f;
  let x_645 : vec4<f32> = u_xlat1;
  let x_647 : vec4<f32> = u_xlat4;
  u_xlat14 = (vec2<f32>(x_645.x, x_645.z) + vec2<f32>(x_647.x, x_647.y));
  let x_653 : vec2<f32> = u_xlat14;
  let x_654 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_653);
  let x_655 : vec3<f32> = vec3<f32>(x_654.x, x_654.y, x_654.z);
  let x_656 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_655.x, x_655.y, x_655.z, x_656.w);
  let x_659 : f32 = u_xlat0.x;
  let x_661 : f32 = x_55.x_Lut2D_Params.z;
  let x_664 : f32 = u_xlat7.x;
  u_xlat0.x = ((x_659 * x_661) + -(x_664));
  let x_668 : vec4<f32> = u_xlat3;
  let x_671 : vec4<f32> = u_xlat1;
  u_xlat7 = (-(vec3<f32>(x_668.x, x_668.y, x_668.z)) + vec3<f32>(x_671.x, x_671.y, x_671.z));
  let x_674 : vec3<f32> = u_xlat0;
  let x_676 : vec3<f32> = u_xlat7;
  let x_678 : vec4<f32> = u_xlat3;
  u_xlat0 = ((vec3<f32>(x_674.x, x_674.x, x_674.x) * x_676) + vec3<f32>(x_678.x, x_678.y, x_678.z));
  let x_681 : vec3<f32> = u_xlat0;
  let x_683 : vec3<f32> = (x_681 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_684 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_683.x, x_683.y, x_683.z, x_684.w);
  let x_686 : vec3<f32> = u_xlat0;
  let x_688 : vec3<f32> = (x_686 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_689 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_688.x, x_688.y, x_688.z, x_689.w);
  let x_691 : vec4<f32> = u_xlat3;
  let x_694 : vec3<f32> = (vec3<f32>(x_691.x, x_691.y, x_691.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_695 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_694.x, x_694.y, x_694.z, x_695.w);
  let x_697 : vec4<f32> = u_xlat3;
  let x_700 : vec3<f32> = max(abs(vec3<f32>(x_697.x, x_697.y, x_697.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_701 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_700.x, x_700.y, x_700.z, x_701.w);
  let x_703 : vec4<f32> = u_xlat3;
  let x_705 : vec3<f32> = log2(vec3<f32>(x_703.x, x_703.y, x_703.z));
  let x_706 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_705.x, x_705.y, x_705.z, x_706.w);
  let x_708 : vec4<f32> = u_xlat3;
  let x_711 : vec3<f32> = (vec3<f32>(x_708.x, x_708.y, x_708.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_712 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_711.x, x_711.y, x_711.z, x_712.w);
  let x_714 : vec4<f32> = u_xlat3;
  let x_716 : vec3<f32> = exp2(vec3<f32>(x_714.x, x_714.y, x_714.z));
  let x_717 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_716.x, x_716.y, x_716.z, x_717.w);
  let x_721 : vec3<f32> = u_xlat0;
  let x_723 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_721.x, x_721.y, x_721.z, x_721.x));
  u_xlatb0 = vec3<bool>(x_723.x, x_723.y, x_723.z);
  let x_726 : bool = u_xlatb0.x;
  if (x_726) {
    let x_731 : f32 = u_xlat1.x;
    x_727 = x_731;
  } else {
    let x_734 : f32 = u_xlat3.x;
    x_727 = x_734;
  }
  let x_735 : f32 = x_727;
  u_xlat2.x = x_735;
  let x_738 : bool = u_xlatb0.y;
  if (x_738) {
    let x_743 : f32 = u_xlat1.y;
    x_739 = x_743;
  } else {
    let x_746 : f32 = u_xlat3.y;
    x_739 = x_746;
  }
  let x_747 : f32 = x_739;
  u_xlat2.y = x_747;
  let x_750 : bool = u_xlatb0.z;
  if (x_750) {
    let x_755 : f32 = u_xlat1.z;
    x_751 = x_755;
  } else {
    let x_758 : f32 = u_xlat3.z;
    x_751 = x_758;
  }
  let x_759 : f32 = x_751;
  u_xlat2.z = x_759;
  let x_763 : f32 = x_55.x_LumaInAlpha;
  u_xlatb0.x = (0.5f < x_763);
  let x_767 : bool = u_xlatb0.x;
  if (x_767) {
    let x_770 : vec4<f32> = u_xlat2;
    u_xlat0 = vec3<f32>(x_770.x, x_770.y, x_770.z);
    let x_772 : vec3<f32> = u_xlat0;
    u_xlat0 = clamp(x_772, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_776 : vec3<f32> = u_xlat0;
    u_xlat2.w = dot(x_776, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_781 : vec4<f32> = u_xlat2;
  SV_Target0 = x_781;
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

