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

@group(0) @binding(11) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat7 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_55 : PGlobals;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(6) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(14) var sampler_ChromaticAberration_SpectralLut : sampler;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainTex : sampler;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(4) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_BloomTex : sampler;

@group(0) @binding(5) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(13) var sampler_Bloom_DirtTex : sampler;

var<private> u_xlatb1 : bool;

var<private> u_xlat22 : f32;

var<private> u_xlat8 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(7) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(15) var sampler_Vignette_Mask : sampler;

var<private> u_xlat9 : f32;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(8) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(16) var sampler_GrainTex : sampler;

var<private> u_xlat21 : f32;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_DitheringTex : sampler;

var<private> u_xlatb0 : vec3<bool>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_532 : f32;
  var x_771 : f32;
  var x_783 : f32;
  var x_795 : f32;
  var x_862 : f32;
  var x_874 : f32;
  var x_886 : f32;
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
    u_xlat8 = (vec3<f32>(x_474.x, x_474.y, x_474.z) * x_476);
    let x_479 : f32 = u_xlat0.w;
    u_xlat2.x = (x_479 + -1.0f);
    let x_485 : f32 = u_xlat1.x;
    let x_487 : f32 = u_xlat2.x;
    SV_Target0.w = ((x_485 * x_487) + 1.0f);
  } else {
    let x_498 : vec2<f32> = vs_TEXCOORD0;
    let x_499 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_498);
    u_xlat1.x = x_499.w;
    let x_503 : f32 = u_xlat1.x;
    u_xlat2.x = (x_503 * 0.077399381f);
    let x_509 : f32 = u_xlat1.x;
    u_xlat9 = (x_509 + 0.055f);
    let x_512 : f32 = u_xlat9;
    u_xlat9 = (x_512 * 0.947867334f);
    let x_515 : f32 = u_xlat9;
    u_xlat9 = max(abs(x_515), 1.1920929e-07f);
    let x_519 : f32 = u_xlat9;
    u_xlat9 = log2(x_519);
    let x_521 : f32 = u_xlat9;
    u_xlat9 = (x_521 * 2.400000095f);
    let x_524 : f32 = u_xlat9;
    u_xlat9 = exp2(x_524);
    let x_528 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_528);
    let x_530 : bool = u_xlatb1;
    if (x_530) {
      let x_536 : f32 = u_xlat2.x;
      x_532 = x_536;
    } else {
      let x_538 : f32 = u_xlat9;
      x_532 = x_538;
    }
    let x_539 : f32 = x_532;
    u_xlat1.x = x_539;
    let x_542 : vec3<f32> = x_55.x_Vignette_Color;
    let x_544 : vec3<f32> = (-(x_542) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_545 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_544.x, x_544.y, x_544.z, x_545.w);
    let x_547 : vec4<f32> = u_xlat1;
    let x_549 : vec4<f32> = u_xlat2;
    let x_553 : vec3<f32> = x_55.x_Vignette_Color;
    let x_554 : vec3<f32> = ((vec3<f32>(x_547.x, x_547.x, x_547.x) * vec3<f32>(x_549.x, x_549.y, x_549.z)) + x_553);
    let x_555 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_554.x, x_554.y, x_554.z, x_555.w);
    let x_557 : vec4<f32> = u_xlat0;
    let x_559 : vec4<f32> = u_xlat2;
    let x_562 : vec4<f32> = u_xlat0;
    let x_565 : vec3<f32> = ((vec3<f32>(x_557.x, x_557.y, x_557.z) * vec3<f32>(x_559.x, x_559.y, x_559.z)) + -(vec3<f32>(x_562.x, x_562.y, x_562.z)));
    let x_566 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_565.x, x_565.y, x_565.z, x_566.w);
    let x_570 : f32 = x_55.x_Vignette_Opacity;
    let x_572 : vec4<f32> = u_xlat2;
    let x_575 : vec4<f32> = u_xlat0;
    u_xlat8 = ((vec3<f32>(x_570, x_570, x_570) * vec3<f32>(x_572.x, x_572.y, x_572.z)) + vec3<f32>(x_575.x, x_575.y, x_575.z));
    let x_579 : f32 = u_xlat0.w;
    u_xlat0.x = (x_579 + -1.0f);
    let x_583 : f32 = u_xlat1.x;
    let x_585 : f32 = u_xlat0.x;
    SV_Target0.w = ((x_583 * x_585) + 1.0f);
  }
  let x_590 : vec2<f32> = vs_TEXCOORD1;
  let x_593 : vec4<f32> = x_55.x_Grain_Params2;
  let x_597 : vec4<f32> = x_55.x_Grain_Params2;
  let x_599 : vec2<f32> = ((x_590 * vec2<f32>(x_593.x, x_593.y)) + vec2<f32>(x_597.z, x_597.w));
  let x_600 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_599.x, x_599.y, x_600.z, x_600.w);
  let x_607 : vec4<f32> = u_xlat0;
  let x_609 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_607.x, x_607.y));
  let x_610 : vec3<f32> = vec3<f32>(x_609.x, x_609.y, x_609.z);
  let x_611 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_610.x, x_610.y, x_610.z, x_611.w);
  let x_613 : vec3<f32> = u_xlat8;
  let x_614 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_613.x, x_613.y, x_613.z, x_614.w);
  let x_616 : vec4<f32> = u_xlat2;
  let x_620 : vec3<f32> = clamp(vec3<f32>(x_616.x, x_616.y, x_616.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_621 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_620.x, x_620.y, x_620.z, x_621.w);
  let x_624 : vec4<f32> = u_xlat2;
  u_xlat21 = dot(vec3<f32>(x_624.x, x_624.y, x_624.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_631 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_631);
  let x_635 : f32 = x_55.x_Grain_Params1.x;
  let x_636 : f32 = u_xlat21;
  u_xlat21 = ((x_635 * -(x_636)) + 1.0f);
  let x_640 : vec4<f32> = u_xlat0;
  let x_642 : vec3<f32> = u_xlat8;
  let x_643 : vec3<f32> = (vec3<f32>(x_640.x, x_640.y, x_640.z) * x_642);
  let x_644 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_643.x, x_643.y, x_643.z, x_644.w);
  let x_646 : vec4<f32> = u_xlat0;
  let x_649 : f32 = x_55.x_Grain_Params1.y;
  let x_651 : f32 = x_55.x_Grain_Params1.y;
  let x_653 : f32 = x_55.x_Grain_Params1.y;
  let x_655 : vec3<f32> = (vec3<f32>(x_646.x, x_646.y, x_646.z) * vec3<f32>(x_649, x_651, x_653));
  let x_656 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_655.x, x_655.y, x_655.z, x_656.w);
  let x_658 : vec4<f32> = u_xlat0;
  let x_660 : f32 = u_xlat21;
  let x_663 : vec3<f32> = u_xlat8;
  let x_664 : vec3<f32> = ((vec3<f32>(x_658.x, x_658.y, x_658.z) * vec3<f32>(x_660, x_660, x_660)) + x_663);
  let x_665 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_664.x, x_664.y, x_664.z, x_665.w);
  let x_667 : vec2<f32> = vs_TEXCOORD0;
  let x_670 : vec4<f32> = x_55.x_Dithering_Coords;
  let x_674 : vec4<f32> = x_55.x_Dithering_Coords;
  let x_676 : vec2<f32> = ((x_667 * vec2<f32>(x_670.x, x_670.y)) + vec2<f32>(x_674.z, x_674.w));
  let x_677 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_676.x, x_676.y, x_677.z, x_677.w);
  let x_684 : vec4<f32> = u_xlat1;
  let x_686 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_684.x, x_684.y));
  u_xlat21 = x_686.w;
  let x_688 : f32 = u_xlat21;
  u_xlat21 = ((x_688 * 2.0f) + -1.0f);
  let x_691 : f32 = u_xlat21;
  u_xlat1.x = ((x_691 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_697 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_697, 0.0f, 1.0f);
  let x_701 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_701 * 2.0f) + -1.0f);
  let x_705 : f32 = u_xlat21;
  u_xlat21 = (-(abs(x_705)) + 1.0f);
  let x_709 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_709);
  let x_711 : f32 = u_xlat21;
  u_xlat21 = (-(x_711) + 1.0f);
  let x_714 : f32 = u_xlat21;
  let x_716 : f32 = u_xlat1.x;
  u_xlat21 = (x_714 * x_716);
  let x_718 : vec4<f32> = u_xlat0;
  let x_722 : vec3<f32> = (vec3<f32>(x_718.x, x_718.y, x_718.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_723 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_722.x, x_722.y, x_722.z, x_723.w);
  let x_725 : vec4<f32> = u_xlat0;
  let x_729 : vec3<f32> = max(abs(vec3<f32>(x_725.x, x_725.y, x_725.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_730 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_729.x, x_729.y, x_729.z, x_730.w);
  let x_732 : vec4<f32> = u_xlat2;
  let x_734 : vec3<f32> = log2(vec3<f32>(x_732.x, x_732.y, x_732.z));
  let x_735 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_734.x, x_734.y, x_734.z, x_735.w);
  let x_737 : vec4<f32> = u_xlat2;
  let x_741 : vec3<f32> = (vec3<f32>(x_737.x, x_737.y, x_737.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_742 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_741.x, x_741.y, x_741.z, x_742.w);
  let x_744 : vec4<f32> = u_xlat2;
  let x_746 : vec3<f32> = exp2(vec3<f32>(x_744.x, x_744.y, x_744.z));
  let x_747 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_746.x, x_746.y, x_746.z, x_747.w);
  let x_749 : vec4<f32> = u_xlat2;
  let x_756 : vec3<f32> = ((vec3<f32>(x_749.x, x_749.y, x_749.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_757 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_756.x, x_756.y, x_756.z, x_757.w);
  let x_764 : vec4<f32> = u_xlat0;
  let x_767 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_764.x, x_764.y, x_764.z, x_764.x));
  u_xlatb0 = vec3<bool>(x_767.x, x_767.y, x_767.z);
  let x_770 : bool = u_xlatb0.x;
  if (x_770) {
    let x_775 : f32 = u_xlat1.x;
    x_771 = x_775;
  } else {
    let x_778 : f32 = u_xlat2.x;
    x_771 = x_778;
  }
  let x_779 : f32 = x_771;
  u_xlat0.x = x_779;
  let x_782 : bool = u_xlatb0.y;
  if (x_782) {
    let x_787 : f32 = u_xlat1.y;
    x_783 = x_787;
  } else {
    let x_790 : f32 = u_xlat2.y;
    x_783 = x_790;
  }
  let x_791 : f32 = x_783;
  u_xlat0.y = x_791;
  let x_794 : bool = u_xlatb0.z;
  if (x_794) {
    let x_799 : f32 = u_xlat1.z;
    x_795 = x_799;
  } else {
    let x_802 : f32 = u_xlat2.z;
    x_795 = x_802;
  }
  let x_803 : f32 = x_795;
  u_xlat0.z = x_803;
  let x_805 : f32 = u_xlat21;
  let x_810 : vec4<f32> = u_xlat0;
  let x_812 : vec3<f32> = ((vec3<f32>(x_805, x_805, x_805) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_810.x, x_810.y, x_810.z));
  let x_813 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_812.x, x_812.y, x_812.z, x_813.w);
  let x_815 : vec4<f32> = u_xlat0;
  let x_818 : vec3<f32> = (vec3<f32>(x_815.x, x_815.y, x_815.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_819 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_818.x, x_818.y, x_818.z, x_819.w);
  let x_821 : vec4<f32> = u_xlat0;
  let x_824 : vec3<f32> = (vec3<f32>(x_821.x, x_821.y, x_821.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_825 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_824.x, x_824.y, x_824.z, x_825.w);
  let x_827 : vec4<f32> = u_xlat2;
  let x_830 : vec3<f32> = (vec3<f32>(x_827.x, x_827.y, x_827.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_831 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_830.x, x_830.y, x_830.z, x_831.w);
  let x_833 : vec4<f32> = u_xlat2;
  let x_836 : vec3<f32> = max(abs(vec3<f32>(x_833.x, x_833.y, x_833.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_837 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_836.x, x_836.y, x_836.z, x_837.w);
  let x_839 : vec4<f32> = u_xlat2;
  let x_841 : vec3<f32> = log2(vec3<f32>(x_839.x, x_839.y, x_839.z));
  let x_842 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_841.x, x_841.y, x_841.z, x_842.w);
  let x_844 : vec4<f32> = u_xlat2;
  let x_847 : vec3<f32> = (vec3<f32>(x_844.x, x_844.y, x_844.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_848 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_847.x, x_847.y, x_847.z, x_848.w);
  let x_850 : vec4<f32> = u_xlat2;
  let x_852 : vec3<f32> = exp2(vec3<f32>(x_850.x, x_850.y, x_850.z));
  let x_853 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_852.x, x_852.y, x_852.z, x_853.w);
  let x_856 : vec4<f32> = u_xlat0;
  let x_858 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_856.x, x_856.y, x_856.z, x_856.x));
  u_xlatb0 = vec3<bool>(x_858.x, x_858.y, x_858.z);
  let x_861 : bool = u_xlatb0.x;
  if (x_861) {
    let x_866 : f32 = u_xlat1.x;
    x_862 = x_866;
  } else {
    let x_869 : f32 = u_xlat2.x;
    x_862 = x_869;
  }
  let x_870 : f32 = x_862;
  SV_Target0.x = x_870;
  let x_873 : bool = u_xlatb0.y;
  if (x_873) {
    let x_878 : f32 = u_xlat1.y;
    x_874 = x_878;
  } else {
    let x_881 : f32 = u_xlat2.y;
    x_874 = x_881;
  }
  let x_882 : f32 = x_874;
  SV_Target0.y = x_882;
  let x_885 : bool = u_xlatb0.z;
  if (x_885) {
    let x_890 : f32 = u_xlat1.z;
    x_886 = x_890;
  } else {
    let x_893 : f32 = u_xlat2.z;
    x_886 = x_893;
  }
  let x_894 : f32 = x_886;
  SV_Target0.z = x_894;
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

