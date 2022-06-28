struct PGlobals {
  x_ScreenParams : vec4<f32>,
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
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
  x_LumaInAlpha : f32,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat7 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_55 : PGlobals;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(5) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(12) var sampler_ChromaticAberration_SpectralLut : sampler;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(3) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_BloomTex : sampler;

@group(0) @binding(4) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_Bloom_DirtTex : sampler;

var<private> u_xlatb1 : bool;

var<private> u_xlat22 : f32;

var<private> u_xlat8 : vec3<f32>;

@group(0) @binding(7) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(14) var sampler_Vignette_Mask : sampler;

var<private> u_xlat15 : vec2<f32>;

@group(0) @binding(6) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(13) var sampler_Lut2D : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_541 : f32;
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
    let x_517 : f32 = u_xlat8.y;
    u_xlat15.x = max(abs(x_517), 1.1920929e-07f);
    let x_523 : f32 = u_xlat15.x;
    u_xlat15.x = log2(x_523);
    let x_527 : f32 = u_xlat15.x;
    u_xlat15.x = (x_527 * 2.400000095f);
    let x_532 : f32 = u_xlat15.x;
    u_xlat15.x = exp2(x_532);
    let x_537 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_537);
    let x_539 : bool = u_xlatb1;
    if (x_539) {
      let x_545 : f32 = u_xlat8.x;
      x_541 = x_545;
    } else {
      let x_548 : f32 = u_xlat15.x;
      x_541 = x_548;
    }
    let x_549 : f32 = x_541;
    u_xlat1.x = x_549;
    let x_552 : vec3<f32> = x_55.x_Vignette_Color;
    u_xlat8 = (-(x_552) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_555 : vec4<f32> = u_xlat1;
    let x_557 : vec3<f32> = u_xlat8;
    let x_560 : vec3<f32> = x_55.x_Vignette_Color;
    u_xlat8 = ((vec3<f32>(x_555.x, x_555.x, x_555.x) * x_557) + x_560);
    let x_562 : vec4<f32> = u_xlat0;
    let x_564 : vec3<f32> = u_xlat8;
    let x_566 : vec4<f32> = u_xlat0;
    u_xlat8 = ((vec3<f32>(x_562.x, x_562.y, x_562.z) * x_564) + -(vec3<f32>(x_566.x, x_566.y, x_566.z)));
    let x_572 : f32 = x_55.x_Vignette_Opacity;
    let x_574 : vec3<f32> = u_xlat8;
    let x_576 : vec4<f32> = u_xlat0;
    let x_578 : vec3<f32> = ((vec3<f32>(x_572, x_572, x_572) * x_574) + vec3<f32>(x_576.x, x_576.y, x_576.z));
    let x_579 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_578.x, x_578.y, x_578.z, x_579.w);
    let x_582 : f32 = u_xlat0.w;
    u_xlat0.x = (x_582 + -1.0f);
    let x_586 : f32 = u_xlat1.x;
    let x_588 : f32 = u_xlat0.x;
    u_xlat2.w = ((x_586 * x_588) + 1.0f);
  }
  let x_592 : vec4<f32> = u_xlat2;
  let x_595 : f32 = x_55.x_PostExposure;
  let x_597 : f32 = x_55.x_PostExposure;
  let x_599 : f32 = x_55.x_PostExposure;
  let x_601 : f32 = x_55.x_PostExposure;
  let x_602 : vec4<f32> = vec4<f32>(x_595, x_597, x_599, x_601);
  u_xlat0 = (x_592 * vec4<f32>(x_602.x, x_602.y, x_602.z, x_602.w));
  let x_609 : vec4<f32> = u_xlat0;
  let x_616 : vec3<f32> = ((vec3<f32>(x_609.z, x_609.x, x_609.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_617 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_616.x, x_616.y, x_616.z, x_617.w);
  let x_619 : vec4<f32> = u_xlat1;
  let x_621 : vec3<f32> = log2(vec3<f32>(x_619.x, x_619.y, x_619.z));
  let x_622 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_621.x, x_621.y, x_621.z, x_622.w);
  let x_624 : vec4<f32> = u_xlat1;
  let x_631 : vec3<f32> = ((vec3<f32>(x_624.x, x_624.y, x_624.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_632 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_631.x, x_631.y, x_631.z, x_632.w);
  let x_634 : vec4<f32> = u_xlat1;
  let x_638 : vec3<f32> = clamp(vec3<f32>(x_634.x, x_634.y, x_634.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_639 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_638.x, x_638.y, x_638.z, x_639.w);
  let x_641 : vec4<f32> = u_xlat1;
  let x_645 : vec3<f32> = x_55.x_Lut2D_Params;
  u_xlat8 = (vec3<f32>(x_641.x, x_641.y, x_641.z) * vec3<f32>(x_645.z, x_645.z, x_645.z));
  let x_649 : f32 = u_xlat8.x;
  u_xlat8.x = floor(x_649);
  let x_653 : vec3<f32> = x_55.x_Lut2D_Params;
  let x_656 : vec2<f32> = (vec2<f32>(x_653.x, x_653.y) * vec2<f32>(0.5f, 0.5f));
  let x_657 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_656.x, x_656.y, x_657.z, x_657.w);
  let x_659 : vec3<f32> = u_xlat8;
  let x_662 : vec3<f32> = x_55.x_Lut2D_Params;
  let x_665 : vec4<f32> = u_xlat2;
  let x_667 : vec2<f32> = ((vec2<f32>(x_659.y, x_659.z) * vec2<f32>(x_662.x, x_662.y)) + vec2<f32>(x_665.x, x_665.y));
  let x_668 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_668.x, x_667.x, x_667.y, x_668.w);
  let x_671 : f32 = u_xlat8.x;
  let x_673 : f32 = x_55.x_Lut2D_Params.y;
  let x_676 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_671 * x_673) + x_676);
  let x_684 : vec4<f32> = u_xlat2;
  let x_686 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_684.x, x_684.z));
  let x_687 : vec3<f32> = vec3<f32>(x_686.x, x_686.y, x_686.z);
  let x_688 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_687.x, x_687.y, x_687.z, x_688.w);
  let x_691 : f32 = x_55.x_Lut2D_Params.y;
  u_xlat4.x = x_691;
  u_xlat4.y = 0.0f;
  let x_694 : vec4<f32> = u_xlat2;
  let x_696 : vec4<f32> = u_xlat4;
  u_xlat15 = (vec2<f32>(x_694.x, x_694.z) + vec2<f32>(x_696.x, x_696.y));
  let x_702 : vec2<f32> = u_xlat15;
  let x_703 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_702);
  let x_704 : vec3<f32> = vec3<f32>(x_703.x, x_703.y, x_703.z);
  let x_705 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_704.x, x_704.y, x_704.z, x_705.w);
  let x_708 : f32 = u_xlat1.x;
  let x_710 : f32 = x_55.x_Lut2D_Params.z;
  let x_713 : f32 = u_xlat8.x;
  u_xlat1.x = ((x_708 * x_710) + -(x_713));
  let x_717 : vec4<f32> = u_xlat3;
  let x_720 : vec4<f32> = u_xlat2;
  u_xlat8 = (-(vec3<f32>(x_717.x, x_717.y, x_717.z)) + vec3<f32>(x_720.x, x_720.y, x_720.z));
  let x_723 : vec4<f32> = u_xlat1;
  let x_725 : vec3<f32> = u_xlat8;
  let x_727 : vec4<f32> = u_xlat3;
  let x_729 : vec3<f32> = ((vec3<f32>(x_723.x, x_723.x, x_723.x) * x_725) + vec3<f32>(x_727.x, x_727.y, x_727.z));
  let x_730 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_729.x, x_729.y, x_729.z, x_730.w);
  let x_734 : f32 = x_55.x_LumaInAlpha;
  u_xlatb1 = (0.5f < x_734);
  let x_736 : bool = u_xlatb1;
  if (x_736) {
    let x_739 : vec4<f32> = u_xlat0;
    let x_740 : vec3<f32> = vec3<f32>(x_739.x, x_739.y, x_739.z);
    let x_741 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_740.x, x_740.y, x_740.z, x_741.w);
    let x_743 : vec4<f32> = u_xlat1;
    let x_747 : vec3<f32> = clamp(vec3<f32>(x_743.x, x_743.y, x_743.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_748 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_747.x, x_747.y, x_747.z, x_748.w);
    let x_750 : vec4<f32> = u_xlat1;
    u_xlat0.w = dot(vec3<f32>(x_750.x, x_750.y, x_750.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_760 : vec4<f32> = u_xlat0;
  SV_Target0 = x_760;
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

