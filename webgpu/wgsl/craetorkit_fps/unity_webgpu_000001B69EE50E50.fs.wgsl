struct PGlobals {
  x_ScreenParams : vec4<f32>,
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_Dithering_Coords : vec4<f32>,
  x_BloomTex_TexelSize : vec4<f32>,
  x_Bloom_DirtTileOffset : vec4<f32>,
  x_Bloom_Settings : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_Bloom_Color : vec3<f32>,
  x_ChromaticAberration_Amount : f32,
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

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_55 : PGlobals;

@group(0) @binding(5) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(13) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

@group(0) @binding(3) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_BloomTex : sampler;

@group(0) @binding(4) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_Bloom_DirtTex : sampler;

@group(0) @binding(7) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(15) var sampler_Vignette_Mask : sampler;

@group(0) @binding(6) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(14) var sampler_Lut2D : sampler;

@group(0) @binding(0) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_DitheringTex : sampler;

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
  var u_xlatb1 : bool;
  var u_xlat22 : f32;
  var u_xlat8 : vec3<f32>;
  var u_xlat15 : f32;
  var x_532 : f32;
  var u_xlatb0 : vec3<bool>;
  var x_844 : f32;
  var x_856 : f32;
  var x_868 : f32;
  var x_937 : f32;
  var x_950 : f32;
  var x_962 : f32;
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
  let x_204 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_203.x, x_203.y, x_203.z, x_204.w);
  let x_209 : vec4<f32> = x_55.x_BloomTex_TexelSize;
  u_xlat0 = (vec4<f32>(x_209.x, x_209.y, x_209.x, x_209.y) * vec4<f32>(-1.0f, -1.0f, 1.0f, 1.0f));
  let x_215 : f32 = x_55.x_Bloom_Settings.x;
  u_xlat2.x = (x_215 * 0.5f);
  let x_218 : vec4<f32> = u_xlat0;
  let x_220 : vec4<f32> = u_xlat2;
  let x_223 : vec2<f32> = vs_TEXCOORD0;
  u_xlat3 = ((vec4<f32>(x_218.x, x_218.y, x_218.z, x_218.y) * vec4<f32>(x_220.x, x_220.x, x_220.x, x_220.x)) + vec4<f32>(x_223.x, x_223.y, x_223.x, x_223.y));
  let x_226 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_226, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_230 : vec4<f32> = u_xlat3;
  let x_232 : f32 = x_55.x_RenderViewportScaleFactor;
  u_xlat3 = (x_230 * vec4<f32>(x_232, x_232, x_232, x_232));
  let x_240 : vec4<f32> = u_xlat3;
  let x_242 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_240.x, x_240.y));
  u_xlat4 = x_242;
  let x_246 : vec4<f32> = u_xlat3;
  let x_248 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_246.z, x_246.w));
  u_xlat3 = x_248;
  let x_249 : vec4<f32> = u_xlat3;
  let x_250 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_249 + x_250);
  let x_252 : vec4<f32> = u_xlat0;
  let x_254 : vec4<f32> = u_xlat2;
  let x_257 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = ((vec4<f32>(x_252.x, x_252.w, x_252.z, x_252.w) * vec4<f32>(x_254.x, x_254.x, x_254.x, x_254.x)) + vec4<f32>(x_257.x, x_257.y, x_257.x, x_257.y));
  let x_260 : vec4<f32> = u_xlat0;
  u_xlat0 = clamp(x_260, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_264 : vec4<f32> = u_xlat0;
  let x_266 : f32 = x_55.x_RenderViewportScaleFactor;
  u_xlat0 = (x_264 * vec4<f32>(x_266, x_266, x_266, x_266));
  let x_272 : vec4<f32> = u_xlat0;
  let x_274 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_272.x, x_272.y));
  u_xlat2 = x_274;
  let x_275 : vec4<f32> = u_xlat2;
  let x_276 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_275 + x_276);
  let x_281 : vec4<f32> = u_xlat0;
  let x_283 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_281.z, x_281.w));
  u_xlat0 = x_283;
  let x_284 : vec4<f32> = u_xlat0;
  let x_285 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_284 + x_285);
  let x_287 : vec4<f32> = u_xlat0;
  let x_290 : vec3<f32> = x_55.x_Bloom_Settings;
  u_xlat0 = (x_287 * vec4<f32>(x_290.y, x_290.y, x_290.y, x_290.y));
  let x_293 : vec2<f32> = vs_TEXCOORD0;
  let x_296 : vec4<f32> = x_55.x_Bloom_DirtTileOffset;
  let x_300 : vec4<f32> = x_55.x_Bloom_DirtTileOffset;
  let x_302 : vec2<f32> = ((x_293 * vec2<f32>(x_296.x, x_296.y)) + vec2<f32>(x_300.z, x_300.w));
  let x_303 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_302.x, x_302.y, x_303.z, x_303.w);
  let x_310 : vec4<f32> = u_xlat2;
  let x_312 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_310.x, x_310.y));
  let x_313 : vec3<f32> = vec3<f32>(x_312.x, x_312.y, x_312.z);
  let x_314 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_313.x, x_313.y, x_313.z, x_314.w);
  let x_316 : vec4<f32> = u_xlat0;
  u_xlat3 = (x_316 * vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
  let x_320 : vec4<f32> = u_xlat2;
  let x_323 : vec3<f32> = x_55.x_Bloom_Settings;
  let x_325 : vec3<f32> = (vec3<f32>(x_320.x, x_320.y, x_320.z) * vec3<f32>(x_323.z, x_323.z, x_323.z));
  let x_326 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_325.x, x_325.y, x_325.z, x_326.w);
  u_xlat2.w = 0.0f;
  let x_329 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_329 * vec4<f32>(0.25f, 0.25f, 0.25f, 1.0f));
  let x_332 : vec4<f32> = u_xlat0;
  let x_336 : vec3<f32> = x_55.x_Bloom_Color;
  let x_337 : vec3<f32> = (vec3<f32>(x_332.x, x_332.y, x_332.z) * x_336);
  let x_338 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_337.x, x_337.y, x_337.z, x_338.w);
  let x_341 : f32 = u_xlat0.w;
  u_xlat4.w = (x_341 * 0.25f);
  let x_344 : vec4<f32> = u_xlat1;
  let x_345 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_344 + x_345);
  let x_347 : vec4<f32> = u_xlat2;
  let x_348 : vec4<f32> = u_xlat3;
  let x_350 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_347 * x_348) + x_350);
  let x_357 : f32 = x_55.x_Vignette_Mode;
  u_xlatb1 = (x_357 < 0.5f);
  let x_359 : bool = u_xlatb1;
  if (x_359) {
    let x_362 : vec2<f32> = vs_TEXCOORD0;
    let x_366 : vec2<f32> = x_55.x_Vignette_Center;
    let x_368 : vec2<f32> = (x_362 + -(x_366));
    let x_369 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_368.x, x_368.y, x_369.z, x_369.w);
    let x_371 : vec4<f32> = u_xlat1;
    let x_376 : vec4<f32> = x_55.x_Vignette_Settings;
    let x_378 : vec2<f32> = (abs(vec2<f32>(x_371.y, x_371.x)) * vec2<f32>(x_376.x, x_376.x));
    let x_379 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_379.x, x_378.x, x_378.y, x_379.w);
    let x_384 : f32 = x_55.x_ScreenParams.x;
    let x_387 : f32 = x_55.x_ScreenParams.y;
    u_xlat22 = (x_384 / x_387);
    let x_389 : f32 = u_xlat22;
    u_xlat22 = (x_389 + -1.0f);
    let x_392 : f32 = x_55.x_Vignette_Settings.w;
    let x_393 : f32 = u_xlat22;
    u_xlat22 = ((x_392 * x_393) + 1.0f);
    let x_396 : f32 = u_xlat22;
    let x_399 : f32 = u_xlat1.z;
    u_xlat1.x = (x_396 * x_399);
    let x_402 : vec4<f32> = u_xlat1;
    let x_403 : vec2<f32> = vec2<f32>(x_402.x, x_402.y);
    let x_404 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_403.x, x_403.y, x_404.z, x_404.w);
    let x_406 : vec4<f32> = u_xlat1;
    let x_410 : vec2<f32> = clamp(vec2<f32>(x_406.x, x_406.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_411 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_410.x, x_410.y, x_411.z, x_411.w);
    let x_413 : vec4<f32> = u_xlat1;
    let x_415 : vec2<f32> = log2(vec2<f32>(x_413.x, x_413.y));
    let x_416 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_415.x, x_415.y, x_416.z, x_416.w);
    let x_418 : vec4<f32> = u_xlat1;
    let x_421 : vec4<f32> = x_55.x_Vignette_Settings;
    let x_423 : vec2<f32> = (vec2<f32>(x_418.x, x_418.y) * vec2<f32>(x_421.z, x_421.z));
    let x_424 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_423.x, x_423.y, x_424.z, x_424.w);
    let x_426 : vec4<f32> = u_xlat1;
    let x_428 : vec2<f32> = exp2(vec2<f32>(x_426.x, x_426.y));
    let x_429 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_428.x, x_428.y, x_429.z, x_429.w);
    let x_431 : vec4<f32> = u_xlat1;
    let x_433 : vec4<f32> = u_xlat1;
    u_xlat1.x = dot(vec2<f32>(x_431.x, x_431.y), vec2<f32>(x_433.x, x_433.y));
    let x_438 : f32 = u_xlat1.x;
    u_xlat1.x = (-(x_438) + 1.0f);
    let x_443 : f32 = u_xlat1.x;
    u_xlat1.x = max(x_443, 0.0f);
    let x_447 : f32 = u_xlat1.x;
    u_xlat1.x = log2(x_447);
    let x_451 : f32 = u_xlat1.x;
    let x_453 : f32 = x_55.x_Vignette_Settings.y;
    u_xlat1.x = (x_451 * x_453);
    let x_457 : f32 = u_xlat1.x;
    u_xlat1.x = exp2(x_457);
    let x_463 : vec3<f32> = x_55.x_Vignette_Color;
    u_xlat8 = (-(x_463) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_467 : vec4<f32> = u_xlat1;
    let x_469 : vec3<f32> = u_xlat8;
    let x_472 : vec3<f32> = x_55.x_Vignette_Color;
    u_xlat8 = ((vec3<f32>(x_467.x, x_467.x, x_467.x) * x_469) + x_472);
    let x_474 : vec4<f32> = u_xlat0;
    let x_476 : vec3<f32> = u_xlat8;
    let x_477 : vec3<f32> = (vec3<f32>(x_474.x, x_474.y, x_474.z) * x_476);
    let x_478 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_477.x, x_477.y, x_477.z, x_478.w);
    let x_481 : f32 = u_xlat0.w;
    u_xlat8.x = (x_481 + -1.0f);
    let x_485 : f32 = u_xlat1.x;
    let x_487 : f32 = u_xlat8.x;
    u_xlat2.w = ((x_485 * x_487) + 1.0f);
  } else {
    let x_497 : vec2<f32> = vs_TEXCOORD0;
    let x_498 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_497);
    u_xlat1.x = x_498.w;
    let x_502 : f32 = u_xlat1.x;
    u_xlat1.z = (x_502 + 0.055f);
    let x_506 : vec4<f32> = u_xlat1;
    let x_511 : vec2<f32> = (vec2<f32>(x_506.x, x_506.z) * vec2<f32>(0.077399381f, 0.947867334f));
    let x_512 : vec3<f32> = u_xlat8;
    u_xlat8 = vec3<f32>(x_511.x, x_511.y, x_512.z);
    let x_516 : f32 = u_xlat8.y;
    u_xlat15 = max(abs(x_516), 1.1920929e-07f);
    let x_520 : f32 = u_xlat15;
    u_xlat15 = log2(x_520);
    let x_522 : f32 = u_xlat15;
    u_xlat15 = (x_522 * 2.400000095f);
    let x_525 : f32 = u_xlat15;
    u_xlat15 = exp2(x_525);
    let x_529 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_529);
    let x_531 : bool = u_xlatb1;
    if (x_531) {
      let x_536 : f32 = u_xlat8.x;
      x_532 = x_536;
    } else {
      let x_538 : f32 = u_xlat15;
      x_532 = x_538;
    }
    let x_539 : f32 = x_532;
    u_xlat1.x = x_539;
    let x_542 : vec3<f32> = x_55.x_Vignette_Color;
    u_xlat8 = (-(x_542) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_545 : vec4<f32> = u_xlat1;
    let x_547 : vec3<f32> = u_xlat8;
    let x_550 : vec3<f32> = x_55.x_Vignette_Color;
    u_xlat8 = ((vec3<f32>(x_545.x, x_545.x, x_545.x) * x_547) + x_550);
    let x_552 : vec4<f32> = u_xlat0;
    let x_554 : vec3<f32> = u_xlat8;
    let x_556 : vec4<f32> = u_xlat0;
    u_xlat8 = ((vec3<f32>(x_552.x, x_552.y, x_552.z) * x_554) + -(vec3<f32>(x_556.x, x_556.y, x_556.z)));
    let x_562 : f32 = x_55.x_Vignette_Opacity;
    let x_564 : vec3<f32> = u_xlat8;
    let x_566 : vec4<f32> = u_xlat0;
    let x_568 : vec3<f32> = ((vec3<f32>(x_562, x_562, x_562) * x_564) + vec3<f32>(x_566.x, x_566.y, x_566.z));
    let x_569 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_568.x, x_568.y, x_568.z, x_569.w);
    let x_572 : f32 = u_xlat0.w;
    u_xlat0.x = (x_572 + -1.0f);
    let x_576 : f32 = u_xlat1.x;
    let x_578 : f32 = u_xlat0.x;
    u_xlat2.w = ((x_576 * x_578) + 1.0f);
  }
  let x_582 : vec4<f32> = u_xlat2;
  let x_585 : f32 = x_55.x_PostExposure;
  let x_587 : f32 = x_55.x_PostExposure;
  let x_589 : f32 = x_55.x_PostExposure;
  let x_591 : f32 = x_55.x_PostExposure;
  let x_592 : vec4<f32> = vec4<f32>(x_585, x_587, x_589, x_591);
  u_xlat0 = (x_582 * vec4<f32>(x_592.x, x_592.y, x_592.z, x_592.w));
  let x_599 : vec4<f32> = u_xlat0;
  let x_606 : vec3<f32> = ((vec3<f32>(x_599.z, x_599.x, x_599.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_607 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_606.x, x_606.y, x_606.z, x_607.w);
  let x_609 : vec4<f32> = u_xlat0;
  let x_611 : vec3<f32> = log2(vec3<f32>(x_609.x, x_609.y, x_609.z));
  let x_612 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_611.x, x_611.y, x_611.z, x_612.w);
  let x_614 : vec4<f32> = u_xlat0;
  let x_621 : vec3<f32> = ((vec3<f32>(x_614.x, x_614.y, x_614.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_622 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_621.x, x_621.y, x_621.z, x_622.w);
  let x_624 : vec4<f32> = u_xlat0;
  let x_628 : vec3<f32> = clamp(vec3<f32>(x_624.x, x_624.y, x_624.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_629 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_628.x, x_628.y, x_628.z, x_629.w);
  let x_631 : vec4<f32> = u_xlat0;
  let x_635 : vec3<f32> = x_55.x_Lut2D_Params;
  let x_637 : vec3<f32> = (vec3<f32>(x_631.x, x_631.y, x_631.z) * vec3<f32>(x_635.z, x_635.z, x_635.z));
  let x_638 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_637.x, x_637.y, x_637.z, x_638.w);
  let x_641 : f32 = u_xlat1.x;
  u_xlat7.x = floor(x_641);
  let x_645 : vec3<f32> = x_55.x_Lut2D_Params;
  let x_648 : vec2<f32> = (vec2<f32>(x_645.x, x_645.y) * vec2<f32>(0.5f, 0.5f));
  let x_649 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_648.x, x_649.y, x_649.z, x_648.y);
  let x_651 : vec4<f32> = u_xlat1;
  let x_654 : vec3<f32> = x_55.x_Lut2D_Params;
  let x_657 : vec4<f32> = u_xlat1;
  let x_659 : vec2<f32> = ((vec2<f32>(x_651.y, x_651.z) * vec2<f32>(x_654.x, x_654.y)) + vec2<f32>(x_657.x, x_657.w));
  let x_660 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_660.x, x_659.x, x_659.y, x_660.w);
  let x_663 : f32 = u_xlat7.x;
  let x_665 : f32 = x_55.x_Lut2D_Params.y;
  let x_668 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_663 * x_665) + x_668);
  let x_676 : vec4<f32> = u_xlat1;
  let x_678 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_676.x, x_676.z));
  let x_679 : vec3<f32> = vec3<f32>(x_678.x, x_678.y, x_678.z);
  let x_680 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_679.x, x_679.y, x_679.z, x_680.w);
  let x_683 : f32 = x_55.x_Lut2D_Params.y;
  u_xlat3.x = x_683;
  u_xlat3.y = 0.0f;
  let x_686 : vec4<f32> = u_xlat1;
  let x_688 : vec4<f32> = u_xlat3;
  let x_690 : vec2<f32> = (vec2<f32>(x_686.x, x_686.z) + vec2<f32>(x_688.x, x_688.y));
  let x_691 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_690.x, x_690.y, x_691.z, x_691.w);
  let x_696 : vec4<f32> = u_xlat1;
  let x_698 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_696.x, x_696.y));
  let x_699 : vec3<f32> = vec3<f32>(x_698.x, x_698.y, x_698.z);
  let x_700 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_699.x, x_699.y, x_699.z, x_700.w);
  let x_703 : f32 = u_xlat0.x;
  let x_705 : f32 = x_55.x_Lut2D_Params.z;
  let x_708 : f32 = u_xlat7.x;
  u_xlat0.x = ((x_703 * x_705) + -(x_708));
  let x_712 : vec4<f32> = u_xlat2;
  let x_715 : vec4<f32> = u_xlat1;
  let x_717 : vec3<f32> = (-(vec3<f32>(x_712.x, x_712.y, x_712.z)) + vec3<f32>(x_715.x, x_715.y, x_715.z));
  let x_718 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_717.x, x_717.y, x_717.z, x_718.w);
  let x_720 : vec4<f32> = u_xlat0;
  let x_722 : vec4<f32> = u_xlat1;
  let x_725 : vec4<f32> = u_xlat2;
  let x_727 : vec3<f32> = ((vec3<f32>(x_720.x, x_720.x, x_720.x) * vec3<f32>(x_722.x, x_722.y, x_722.z)) + vec3<f32>(x_725.x, x_725.y, x_725.z));
  let x_728 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_727.x, x_727.y, x_727.z, x_728.w);
  let x_730 : vec2<f32> = vs_TEXCOORD0;
  let x_733 : vec4<f32> = x_55.x_Dithering_Coords;
  let x_737 : vec4<f32> = x_55.x_Dithering_Coords;
  let x_739 : vec2<f32> = ((x_730 * vec2<f32>(x_733.x, x_733.y)) + vec2<f32>(x_737.z, x_737.w));
  let x_740 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_739.x, x_739.y, x_740.z, x_740.w);
  let x_747 : vec4<f32> = u_xlat1;
  let x_749 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_747.x, x_747.y));
  u_xlat1.x = x_749.w;
  let x_753 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_753 * 2.0f) + -1.0f);
  let x_758 : f32 = u_xlat1.x;
  u_xlat8.x = ((x_758 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_764 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_764, 0.0f, 1.0f);
  let x_768 : f32 = u_xlat8.x;
  u_xlat8.x = ((x_768 * 2.0f) + -1.0f);
  let x_773 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_773)) + 1.0f);
  let x_779 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_779);
  let x_783 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_783) + 1.0f);
  let x_788 : f32 = u_xlat1.x;
  let x_790 : f32 = u_xlat8.x;
  u_xlat1.x = (x_788 * x_790);
  let x_793 : vec4<f32> = u_xlat0;
  u_xlat8 = (vec3<f32>(x_793.x, x_793.y, x_793.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_798 : vec4<f32> = u_xlat0;
  let x_802 : vec3<f32> = max(abs(vec3<f32>(x_798.x, x_798.y, x_798.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_803 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_802.x, x_802.y, x_802.z, x_803.w);
  let x_805 : vec4<f32> = u_xlat2;
  let x_807 : vec3<f32> = log2(vec3<f32>(x_805.x, x_805.y, x_805.z));
  let x_808 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_807.x, x_807.y, x_807.z, x_808.w);
  let x_810 : vec4<f32> = u_xlat2;
  let x_814 : vec3<f32> = (vec3<f32>(x_810.x, x_810.y, x_810.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_815 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_814.x, x_814.y, x_814.z, x_815.w);
  let x_817 : vec4<f32> = u_xlat2;
  let x_819 : vec3<f32> = exp2(vec3<f32>(x_817.x, x_817.y, x_817.z));
  let x_820 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_819.x, x_819.y, x_819.z, x_820.w);
  let x_822 : vec4<f32> = u_xlat2;
  let x_829 : vec3<f32> = ((vec3<f32>(x_822.x, x_822.y, x_822.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_830 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_829.x, x_829.y, x_829.z, x_830.w);
  let x_837 : vec4<f32> = u_xlat0;
  let x_840 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_837.x, x_837.y, x_837.z, x_837.x));
  u_xlatb0 = vec3<bool>(x_840.x, x_840.y, x_840.z);
  let x_843 : bool = u_xlatb0.x;
  if (x_843) {
    let x_848 : f32 = u_xlat8.x;
    x_844 = x_848;
  } else {
    let x_851 : f32 = u_xlat2.x;
    x_844 = x_851;
  }
  let x_852 : f32 = x_844;
  u_xlat0.x = x_852;
  let x_855 : bool = u_xlatb0.y;
  if (x_855) {
    let x_860 : f32 = u_xlat8.y;
    x_856 = x_860;
  } else {
    let x_863 : f32 = u_xlat2.y;
    x_856 = x_863;
  }
  let x_864 : f32 = x_856;
  u_xlat0.y = x_864;
  let x_867 : bool = u_xlatb0.z;
  if (x_867) {
    let x_872 : f32 = u_xlat8.z;
    x_868 = x_872;
  } else {
    let x_875 : f32 = u_xlat2.z;
    x_868 = x_875;
  }
  let x_876 : f32 = x_868;
  u_xlat0.z = x_876;
  let x_878 : vec4<f32> = u_xlat1;
  let x_883 : vec4<f32> = u_xlat0;
  let x_885 : vec3<f32> = ((vec3<f32>(x_878.x, x_878.x, x_878.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_883.x, x_883.y, x_883.z));
  let x_886 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_885.x, x_885.y, x_885.z, x_886.w);
  let x_888 : vec4<f32> = u_xlat0;
  let x_891 : vec3<f32> = (vec3<f32>(x_888.x, x_888.y, x_888.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_892 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_891.x, x_891.y, x_891.z, x_892.w);
  let x_894 : vec4<f32> = u_xlat0;
  let x_897 : vec3<f32> = (vec3<f32>(x_894.x, x_894.y, x_894.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_898 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_897.x, x_897.y, x_897.z, x_898.w);
  let x_900 : vec4<f32> = u_xlat2;
  let x_903 : vec3<f32> = (vec3<f32>(x_900.x, x_900.y, x_900.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_904 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_903.x, x_903.y, x_903.z, x_904.w);
  let x_906 : vec4<f32> = u_xlat2;
  let x_909 : vec3<f32> = max(abs(vec3<f32>(x_906.x, x_906.y, x_906.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_910 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_909.x, x_909.y, x_909.z, x_910.w);
  let x_912 : vec4<f32> = u_xlat2;
  let x_914 : vec3<f32> = log2(vec3<f32>(x_912.x, x_912.y, x_912.z));
  let x_915 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_914.x, x_914.y, x_914.z, x_915.w);
  let x_917 : vec4<f32> = u_xlat2;
  let x_920 : vec3<f32> = (vec3<f32>(x_917.x, x_917.y, x_917.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_921 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_920.x, x_920.y, x_920.z, x_921.w);
  let x_923 : vec4<f32> = u_xlat2;
  let x_925 : vec3<f32> = exp2(vec3<f32>(x_923.x, x_923.y, x_923.z));
  let x_926 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_925.x, x_925.y, x_925.z, x_926.w);
  let x_929 : vec4<f32> = u_xlat0;
  let x_931 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_929.x, x_929.y, x_929.z, x_929.x));
  u_xlatb0 = vec3<bool>(x_931.x, x_931.y, x_931.z);
  let x_936 : bool = u_xlatb0.x;
  if (x_936) {
    let x_941 : f32 = u_xlat1.x;
    x_937 = x_941;
  } else {
    let x_944 : f32 = u_xlat2.x;
    x_937 = x_944;
  }
  let x_945 : f32 = x_937;
  SV_Target0.x = x_945;
  let x_949 : bool = u_xlatb0.y;
  if (x_949) {
    let x_954 : f32 = u_xlat1.y;
    x_950 = x_954;
  } else {
    let x_957 : f32 = u_xlat2.y;
    x_950 = x_957;
  }
  let x_958 : f32 = x_950;
  SV_Target0.y = x_958;
  let x_961 : bool = u_xlatb0.z;
  if (x_961) {
    let x_966 : f32 = u_xlat1.z;
    x_962 = x_966;
  } else {
    let x_969 : f32 = u_xlat2.z;
    x_962 = x_969;
  }
  let x_970 : f32 = x_962;
  SV_Target0.z = x_970;
  let x_973 : f32 = u_xlat0.w;
  SV_Target0.w = x_973;
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

