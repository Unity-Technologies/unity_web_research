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

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_55 : PGlobals;

@group(0) @binding(3) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(9) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(4) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(10) var sampler_Vignette_Mask : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(5) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_GrainTex : sampler;

@group(0) @binding(0) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_DitheringTex : sampler;

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
  var u_xlat9 : f32;
  var x_375 : f32;
  var u_xlatb0 : vec3<bool>;
  var x_600 : f32;
  var x_612 : f32;
  var x_624 : f32;
  var x_686 : f32;
  var x_698 : f32;
  var x_710 : f32;
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
      let x_379 : f32 = u_xlat2.x;
      x_375 = x_379;
    } else {
      let x_381 : f32 = u_xlat9;
      x_375 = x_381;
    }
    let x_382 : f32 = x_375;
    u_xlat21 = x_382;
    let x_384 : vec3<f32> = x_55.x_Vignette_Color;
    let x_386 : vec3<f32> = (-(x_384) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_387 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_386.x, x_386.y, x_386.z, x_387.w);
    let x_389 : f32 = u_xlat21;
    let x_391 : vec4<f32> = u_xlat2;
    let x_395 : vec3<f32> = x_55.x_Vignette_Color;
    let x_396 : vec3<f32> = ((vec3<f32>(x_389, x_389, x_389) * vec3<f32>(x_391.x, x_391.y, x_391.z)) + x_395);
    let x_397 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_396.x, x_396.y, x_396.z, x_397.w);
    let x_399 : vec3<f32> = u_xlat0;
    let x_400 : vec4<f32> = u_xlat2;
    let x_403 : vec3<f32> = u_xlat0;
    let x_405 : vec3<f32> = ((x_399 * vec3<f32>(x_400.x, x_400.y, x_400.z)) + -(x_403));
    let x_406 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_405.x, x_405.y, x_405.z, x_406.w);
    let x_410 : f32 = x_55.x_Vignette_Opacity;
    let x_412 : vec4<f32> = u_xlat2;
    let x_415 : vec3<f32> = u_xlat0;
    let x_416 : vec3<f32> = ((vec3<f32>(x_410, x_410, x_410) * vec3<f32>(x_412.x, x_412.y, x_412.z)) + x_415);
    let x_417 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_416.x, x_416.y, x_416.z, x_417.w);
    let x_420 : f32 = u_xlat1.w;
    u_xlat0.x = (x_420 + -1.0f);
    let x_423 : f32 = u_xlat21;
    let x_425 : f32 = u_xlat0.x;
    SV_Target0.w = ((x_423 * x_425) + 1.0f);
  }
  let x_430 : vec2<f32> = vs_TEXCOORD1;
  let x_433 : vec4<f32> = x_55.x_Grain_Params2;
  let x_437 : vec4<f32> = x_55.x_Grain_Params2;
  let x_439 : vec2<f32> = ((x_430 * vec2<f32>(x_433.x, x_433.y)) + vec2<f32>(x_437.z, x_437.w));
  let x_440 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_439.x, x_439.y, x_440.z);
  let x_447 : vec3<f32> = u_xlat0;
  let x_449 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_447.x, x_447.y));
  u_xlat0 = vec3<f32>(x_449.x, x_449.y, x_449.z);
  let x_451 : vec4<f32> = u_xlat1;
  let x_452 : vec3<f32> = vec3<f32>(x_451.x, x_451.y, x_451.z);
  let x_453 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_452.x, x_452.y, x_452.z, x_453.w);
  let x_455 : vec4<f32> = u_xlat2;
  let x_459 : vec3<f32> = clamp(vec3<f32>(x_455.x, x_455.y, x_455.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_460 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_459.x, x_459.y, x_459.z, x_460.w);
  let x_462 : vec4<f32> = u_xlat2;
  u_xlat21 = dot(vec3<f32>(x_462.x, x_462.y, x_462.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_469 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_469);
  let x_473 : f32 = x_55.x_Grain_Params1.x;
  let x_474 : f32 = u_xlat21;
  u_xlat21 = ((x_473 * -(x_474)) + 1.0f);
  let x_478 : vec3<f32> = u_xlat0;
  let x_479 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_478 * vec3<f32>(x_479.x, x_479.y, x_479.z));
  let x_482 : vec3<f32> = u_xlat0;
  let x_484 : f32 = x_55.x_Grain_Params1.y;
  let x_486 : f32 = x_55.x_Grain_Params1.y;
  let x_488 : f32 = x_55.x_Grain_Params1.y;
  u_xlat0 = (x_482 * vec3<f32>(x_484, x_486, x_488));
  let x_491 : vec3<f32> = u_xlat0;
  let x_492 : f32 = u_xlat21;
  let x_495 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_491 * vec3<f32>(x_492, x_492, x_492)) + vec3<f32>(x_495.x, x_495.y, x_495.z));
  let x_498 : vec2<f32> = vs_TEXCOORD0;
  let x_501 : vec4<f32> = x_55.x_Dithering_Coords;
  let x_505 : vec4<f32> = x_55.x_Dithering_Coords;
  let x_507 : vec2<f32> = ((x_498 * vec2<f32>(x_501.x, x_501.y)) + vec2<f32>(x_505.z, x_505.w));
  let x_508 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_507.x, x_507.y, x_508.z, x_508.w);
  let x_515 : vec4<f32> = u_xlat1;
  let x_517 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_515.x, x_515.y));
  u_xlat21 = x_517.w;
  let x_519 : f32 = u_xlat21;
  u_xlat21 = ((x_519 * 2.0f) + -1.0f);
  let x_522 : f32 = u_xlat21;
  u_xlat1.x = ((x_522 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_528 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_528, 0.0f, 1.0f);
  let x_532 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_532 * 2.0f) + -1.0f);
  let x_536 : f32 = u_xlat21;
  u_xlat21 = (-(abs(x_536)) + 1.0f);
  let x_540 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_540);
  let x_542 : f32 = u_xlat21;
  u_xlat21 = (-(x_542) + 1.0f);
  let x_545 : f32 = u_xlat21;
  let x_547 : f32 = u_xlat1.x;
  u_xlat21 = (x_545 * x_547);
  let x_549 : vec3<f32> = u_xlat0;
  let x_552 : vec3<f32> = (x_549 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_553 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_552.x, x_552.y, x_552.z, x_553.w);
  let x_555 : vec3<f32> = u_xlat0;
  let x_558 : vec3<f32> = max(abs(x_555), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_559 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_558.x, x_558.y, x_558.z, x_559.w);
  let x_561 : vec4<f32> = u_xlat2;
  let x_563 : vec3<f32> = log2(vec3<f32>(x_561.x, x_561.y, x_561.z));
  let x_564 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_563.x, x_563.y, x_563.z, x_564.w);
  let x_566 : vec4<f32> = u_xlat2;
  let x_570 : vec3<f32> = (vec3<f32>(x_566.x, x_566.y, x_566.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_571 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_570.x, x_570.y, x_570.z, x_571.w);
  let x_573 : vec4<f32> = u_xlat2;
  let x_575 : vec3<f32> = exp2(vec3<f32>(x_573.x, x_573.y, x_573.z));
  let x_576 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_575.x, x_575.y, x_575.z, x_576.w);
  let x_578 : vec4<f32> = u_xlat2;
  let x_585 : vec3<f32> = ((vec3<f32>(x_578.x, x_578.y, x_578.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_586 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_585.x, x_585.y, x_585.z, x_586.w);
  let x_593 : vec3<f32> = u_xlat0;
  let x_596 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_593.x, x_593.y, x_593.z, x_593.x));
  u_xlatb0 = vec3<bool>(x_596.x, x_596.y, x_596.z);
  let x_599 : bool = u_xlatb0.x;
  if (x_599) {
    let x_604 : f32 = u_xlat1.x;
    x_600 = x_604;
  } else {
    let x_607 : f32 = u_xlat2.x;
    x_600 = x_607;
  }
  let x_608 : f32 = x_600;
  u_xlat0.x = x_608;
  let x_611 : bool = u_xlatb0.y;
  if (x_611) {
    let x_616 : f32 = u_xlat1.y;
    x_612 = x_616;
  } else {
    let x_619 : f32 = u_xlat2.y;
    x_612 = x_619;
  }
  let x_620 : f32 = x_612;
  u_xlat0.y = x_620;
  let x_623 : bool = u_xlatb0.z;
  if (x_623) {
    let x_628 : f32 = u_xlat1.z;
    x_624 = x_628;
  } else {
    let x_631 : f32 = u_xlat2.z;
    x_624 = x_631;
  }
  let x_632 : f32 = x_624;
  u_xlat0.z = x_632;
  let x_634 : f32 = u_xlat21;
  let x_639 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_634, x_634, x_634) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + x_639);
  let x_641 : vec3<f32> = u_xlat0;
  let x_643 : vec3<f32> = (x_641 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_644 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_643.x, x_643.y, x_643.z, x_644.w);
  let x_646 : vec3<f32> = u_xlat0;
  let x_648 : vec3<f32> = (x_646 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_649 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_648.x, x_648.y, x_648.z, x_649.w);
  let x_651 : vec4<f32> = u_xlat2;
  let x_654 : vec3<f32> = (vec3<f32>(x_651.x, x_651.y, x_651.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_655 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_654.x, x_654.y, x_654.z, x_655.w);
  let x_657 : vec4<f32> = u_xlat2;
  let x_660 : vec3<f32> = max(abs(vec3<f32>(x_657.x, x_657.y, x_657.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_661 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_660.x, x_660.y, x_660.z, x_661.w);
  let x_663 : vec4<f32> = u_xlat2;
  let x_665 : vec3<f32> = log2(vec3<f32>(x_663.x, x_663.y, x_663.z));
  let x_666 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_665.x, x_665.y, x_665.z, x_666.w);
  let x_668 : vec4<f32> = u_xlat2;
  let x_671 : vec3<f32> = (vec3<f32>(x_668.x, x_668.y, x_668.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_672 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_671.x, x_671.y, x_671.z, x_672.w);
  let x_674 : vec4<f32> = u_xlat2;
  let x_676 : vec3<f32> = exp2(vec3<f32>(x_674.x, x_674.y, x_674.z));
  let x_677 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_676.x, x_676.y, x_676.z, x_677.w);
  let x_680 : vec3<f32> = u_xlat0;
  let x_682 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_680.x, x_680.y, x_680.z, x_680.x));
  u_xlatb0 = vec3<bool>(x_682.x, x_682.y, x_682.z);
  let x_685 : bool = u_xlatb0.x;
  if (x_685) {
    let x_690 : f32 = u_xlat1.x;
    x_686 = x_690;
  } else {
    let x_693 : f32 = u_xlat2.x;
    x_686 = x_693;
  }
  let x_694 : f32 = x_686;
  SV_Target0.x = x_694;
  let x_697 : bool = u_xlatb0.y;
  if (x_697) {
    let x_702 : f32 = u_xlat1.y;
    x_698 = x_702;
  } else {
    let x_705 : f32 = u_xlat2.y;
    x_698 = x_705;
  }
  let x_706 : f32 = x_698;
  SV_Target0.y = x_706;
  let x_709 : bool = u_xlatb0.z;
  if (x_709) {
    let x_714 : f32 = u_xlat1.z;
    x_710 = x_714;
  } else {
    let x_717 : f32 = u_xlat2.z;
    x_710 = x_717;
  }
  let x_718 : f32 = x_710;
  SV_Target0.z = x_718;
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

