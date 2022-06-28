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
  @size(4)
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

@group(0) @binding(8) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(16) var sampler_Vignette_Mask : sampler;

var<private> u_xlat15 : f32;

var<private> u_xlatb2 : vec3<bool>;

@group(0) @binding(7) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(15) var sampler_Lut2D : sampler;

var<private> u_xlat14 : vec2<f32>;

var<private> u_xlatb0 : vec3<bool>;

var<private> u_xlat21 : f32;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_DitheringTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_533 : f32;
  var hlslcc_movcTemp : vec4<f32>;
  var x_643 : f32;
  var x_655 : f32;
  var x_667 : f32;
  var x_819 : f32;
  var x_831 : f32;
  var x_843 : f32;
  var x_943 : f32;
  var x_955 : f32;
  var x_967 : f32;
  var x_1031 : f32;
  var x_1044 : f32;
  var x_1056 : f32;
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
      let x_537 : f32 = u_xlat8.x;
      x_533 = x_537;
    } else {
      let x_539 : f32 = u_xlat15;
      x_533 = x_539;
    }
    let x_540 : f32 = x_533;
    u_xlat1.x = x_540;
    let x_543 : vec3<f32> = x_55.x_Vignette_Color;
    u_xlat8 = (-(x_543) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_546 : vec4<f32> = u_xlat1;
    let x_548 : vec3<f32> = u_xlat8;
    let x_551 : vec3<f32> = x_55.x_Vignette_Color;
    u_xlat8 = ((vec3<f32>(x_546.x, x_546.x, x_546.x) * x_548) + x_551);
    let x_553 : vec4<f32> = u_xlat0;
    let x_555 : vec3<f32> = u_xlat8;
    let x_557 : vec4<f32> = u_xlat0;
    u_xlat8 = ((vec3<f32>(x_553.x, x_553.y, x_553.z) * x_555) + -(vec3<f32>(x_557.x, x_557.y, x_557.z)));
    let x_563 : f32 = x_55.x_Vignette_Opacity;
    let x_565 : vec3<f32> = u_xlat8;
    let x_567 : vec4<f32> = u_xlat0;
    let x_569 : vec3<f32> = ((vec3<f32>(x_563, x_563, x_563) * x_565) + vec3<f32>(x_567.x, x_567.y, x_567.z));
    let x_570 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_569.x, x_569.y, x_569.z, x_570.w);
    let x_573 : f32 = u_xlat0.w;
    u_xlat0.x = (x_573 + -1.0f);
    let x_577 : f32 = u_xlat1.x;
    let x_579 : f32 = u_xlat0.x;
    u_xlat2.w = ((x_577 * x_579) + 1.0f);
  }
  let x_583 : vec4<f32> = u_xlat2;
  u_xlat2 = x_583;
  let x_584 : vec4<f32> = u_xlat2;
  u_xlat2 = clamp(x_584, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_588 : vec4<f32> = u_xlat2;
  let x_592 : vec3<f32> = (vec3<f32>(x_588.z, x_588.x, x_588.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_593 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_592.x, x_592.y, x_592.z, x_593.w);
  let x_595 : vec4<f32> = u_xlat2;
  let x_598 : vec3<f32> = max(vec3<f32>(x_595.z, x_595.x, x_595.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_599 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_598.x, x_598.y, x_598.z, x_599.w);
  let x_601 : vec4<f32> = u_xlat1;
  let x_603 : vec3<f32> = log2(vec3<f32>(x_601.x, x_601.y, x_601.z));
  let x_604 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_603.x, x_603.y, x_603.z, x_604.w);
  let x_606 : vec4<f32> = u_xlat1;
  let x_610 : vec3<f32> = (vec3<f32>(x_606.x, x_606.y, x_606.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_611 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_610.x, x_610.y, x_610.z, x_611.w);
  let x_613 : vec4<f32> = u_xlat1;
  let x_615 : vec3<f32> = exp2(vec3<f32>(x_613.x, x_613.y, x_613.z));
  let x_616 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_615.x, x_615.y, x_615.z, x_616.w);
  let x_618 : vec4<f32> = u_xlat1;
  let x_625 : vec3<f32> = ((vec3<f32>(x_618.x, x_618.y, x_618.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_626 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_625.x, x_625.y, x_625.z, x_626.w);
  let x_633 : vec4<f32> = u_xlat2;
  let x_636 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_633.z, x_633.x, x_633.y, x_633.z));
  u_xlatb2 = vec3<bool>(x_636.x, x_636.y, x_636.z);
  let x_640 : vec4<f32> = u_xlat0;
  hlslcc_movcTemp = x_640;
  let x_642 : bool = u_xlatb2.x;
  if (x_642) {
    let x_647 : f32 = u_xlat0.x;
    x_643 = x_647;
  } else {
    let x_650 : f32 = u_xlat1.x;
    x_643 = x_650;
  }
  let x_651 : f32 = x_643;
  hlslcc_movcTemp.x = x_651;
  let x_654 : bool = u_xlatb2.y;
  if (x_654) {
    let x_659 : f32 = u_xlat0.y;
    x_655 = x_659;
  } else {
    let x_662 : f32 = u_xlat1.y;
    x_655 = x_662;
  }
  let x_663 : f32 = x_655;
  hlslcc_movcTemp.y = x_663;
  let x_666 : bool = u_xlatb2.z;
  if (x_666) {
    let x_671 : f32 = u_xlat0.z;
    x_667 = x_671;
  } else {
    let x_674 : f32 = u_xlat1.z;
    x_667 = x_674;
  }
  let x_675 : f32 = x_667;
  hlslcc_movcTemp.z = x_675;
  let x_677 : vec4<f32> = hlslcc_movcTemp;
  u_xlat0 = x_677;
  let x_678 : vec4<f32> = u_xlat0;
  let x_682 : vec3<f32> = x_55.x_Lut2D_Params;
  u_xlat7 = (vec3<f32>(x_678.x, x_678.y, x_678.z) * vec3<f32>(x_682.z, x_682.z, x_682.z));
  let x_686 : f32 = u_xlat7.x;
  u_xlat7.x = floor(x_686);
  let x_690 : vec3<f32> = x_55.x_Lut2D_Params;
  let x_693 : vec2<f32> = (vec2<f32>(x_690.x, x_690.y) * vec2<f32>(0.5f, 0.5f));
  let x_694 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_693.x, x_693.y, x_694.z, x_694.w);
  let x_696 : vec3<f32> = u_xlat7;
  let x_699 : vec3<f32> = x_55.x_Lut2D_Params;
  let x_702 : vec4<f32> = u_xlat1;
  let x_704 : vec2<f32> = ((vec2<f32>(x_696.y, x_696.z) * vec2<f32>(x_699.x, x_699.y)) + vec2<f32>(x_702.x, x_702.y));
  let x_705 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_705.x, x_704.x, x_704.y, x_705.w);
  let x_708 : f32 = u_xlat7.x;
  let x_710 : f32 = x_55.x_Lut2D_Params.y;
  let x_713 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_708 * x_710) + x_713);
  let x_721 : vec4<f32> = u_xlat1;
  let x_723 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_721.x, x_721.z));
  let x_724 : vec3<f32> = vec3<f32>(x_723.x, x_723.y, x_723.z);
  let x_725 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_724.x, x_724.y, x_724.z, x_725.w);
  let x_728 : f32 = x_55.x_Lut2D_Params.y;
  u_xlat3.x = x_728;
  u_xlat3.y = 0.0f;
  let x_733 : vec4<f32> = u_xlat1;
  let x_735 : vec4<f32> = u_xlat3;
  u_xlat14 = (vec2<f32>(x_733.x, x_733.z) + vec2<f32>(x_735.x, x_735.y));
  let x_741 : vec2<f32> = u_xlat14;
  let x_742 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_741);
  let x_743 : vec3<f32> = vec3<f32>(x_742.x, x_742.y, x_742.z);
  let x_744 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_743.x, x_743.y, x_743.z, x_744.w);
  let x_747 : f32 = u_xlat0.x;
  let x_749 : f32 = x_55.x_Lut2D_Params.z;
  let x_752 : f32 = u_xlat7.x;
  u_xlat0.x = ((x_747 * x_749) + -(x_752));
  let x_756 : vec4<f32> = u_xlat2;
  let x_759 : vec4<f32> = u_xlat1;
  u_xlat7 = (-(vec3<f32>(x_756.x, x_756.y, x_756.z)) + vec3<f32>(x_759.x, x_759.y, x_759.z));
  let x_762 : vec4<f32> = u_xlat0;
  let x_764 : vec3<f32> = u_xlat7;
  let x_766 : vec4<f32> = u_xlat2;
  let x_768 : vec3<f32> = ((vec3<f32>(x_762.x, x_762.x, x_762.x) * x_764) + vec3<f32>(x_766.x, x_766.y, x_766.z));
  let x_769 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_768.x, x_768.y, x_768.z, x_769.w);
  let x_771 : vec4<f32> = u_xlat0;
  let x_774 : vec3<f32> = (vec3<f32>(x_771.x, x_771.y, x_771.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_775 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_774.x, x_774.y, x_774.z, x_775.w);
  let x_777 : vec4<f32> = u_xlat0;
  let x_780 : vec3<f32> = (vec3<f32>(x_777.x, x_777.y, x_777.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_781 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_780.x, x_780.y, x_780.z, x_781.w);
  let x_783 : vec4<f32> = u_xlat2;
  let x_786 : vec3<f32> = (vec3<f32>(x_783.x, x_783.y, x_783.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_787 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_786.x, x_786.y, x_786.z, x_787.w);
  let x_789 : vec4<f32> = u_xlat2;
  let x_792 : vec3<f32> = max(abs(vec3<f32>(x_789.x, x_789.y, x_789.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_793 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_792.x, x_792.y, x_792.z, x_793.w);
  let x_795 : vec4<f32> = u_xlat2;
  let x_797 : vec3<f32> = log2(vec3<f32>(x_795.x, x_795.y, x_795.z));
  let x_798 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_797.x, x_797.y, x_797.z, x_798.w);
  let x_800 : vec4<f32> = u_xlat2;
  let x_803 : vec3<f32> = (vec3<f32>(x_800.x, x_800.y, x_800.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_804 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_803.x, x_803.y, x_803.z, x_804.w);
  let x_806 : vec4<f32> = u_xlat2;
  let x_808 : vec3<f32> = exp2(vec3<f32>(x_806.x, x_806.y, x_806.z));
  let x_809 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_808.x, x_808.y, x_808.z, x_809.w);
  let x_813 : vec4<f32> = u_xlat0;
  let x_815 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_813.x, x_813.y, x_813.z, x_813.x));
  u_xlatb0 = vec3<bool>(x_815.x, x_815.y, x_815.z);
  let x_818 : bool = u_xlatb0.x;
  if (x_818) {
    let x_823 : f32 = u_xlat1.x;
    x_819 = x_823;
  } else {
    let x_826 : f32 = u_xlat2.x;
    x_819 = x_826;
  }
  let x_827 : f32 = x_819;
  u_xlat0.x = x_827;
  let x_830 : bool = u_xlatb0.y;
  if (x_830) {
    let x_835 : f32 = u_xlat1.y;
    x_831 = x_835;
  } else {
    let x_838 : f32 = u_xlat2.y;
    x_831 = x_838;
  }
  let x_839 : f32 = x_831;
  u_xlat0.y = x_839;
  let x_842 : bool = u_xlatb0.z;
  if (x_842) {
    let x_847 : f32 = u_xlat1.z;
    x_843 = x_847;
  } else {
    let x_850 : f32 = u_xlat2.z;
    x_843 = x_850;
  }
  let x_851 : f32 = x_843;
  u_xlat0.z = x_851;
  let x_853 : vec2<f32> = vs_TEXCOORD0;
  let x_856 : vec4<f32> = x_55.x_Dithering_Coords;
  let x_860 : vec4<f32> = x_55.x_Dithering_Coords;
  let x_862 : vec2<f32> = ((x_853 * vec2<f32>(x_856.x, x_856.y)) + vec2<f32>(x_860.z, x_860.w));
  let x_863 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_862.x, x_862.y, x_863.z, x_863.w);
  let x_871 : vec4<f32> = u_xlat1;
  let x_873 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_871.x, x_871.y));
  u_xlat21 = x_873.w;
  let x_875 : f32 = u_xlat21;
  u_xlat21 = ((x_875 * 2.0f) + -1.0f);
  let x_878 : f32 = u_xlat21;
  u_xlat1.x = ((x_878 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_884 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_884, 0.0f, 1.0f);
  let x_888 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_888 * 2.0f) + -1.0f);
  let x_892 : f32 = u_xlat21;
  u_xlat21 = (-(abs(x_892)) + 1.0f);
  let x_896 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_896);
  let x_898 : f32 = u_xlat21;
  u_xlat21 = (-(x_898) + 1.0f);
  let x_901 : f32 = u_xlat21;
  let x_903 : f32 = u_xlat1.x;
  u_xlat21 = (x_901 * x_903);
  let x_905 : vec4<f32> = u_xlat0;
  let x_907 : vec3<f32> = (vec3<f32>(x_905.x, x_905.y, x_905.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_908 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_907.x, x_907.y, x_907.z, x_908.w);
  let x_910 : vec4<f32> = u_xlat0;
  let x_913 : vec3<f32> = max(abs(vec3<f32>(x_910.x, x_910.y, x_910.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_914 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_913.x, x_913.y, x_913.z, x_914.w);
  let x_916 : vec4<f32> = u_xlat2;
  let x_918 : vec3<f32> = log2(vec3<f32>(x_916.x, x_916.y, x_916.z));
  let x_919 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_918.x, x_918.y, x_918.z, x_919.w);
  let x_921 : vec4<f32> = u_xlat2;
  let x_923 : vec3<f32> = (vec3<f32>(x_921.x, x_921.y, x_921.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_924 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_923.x, x_923.y, x_923.z, x_924.w);
  let x_926 : vec4<f32> = u_xlat2;
  let x_928 : vec3<f32> = exp2(vec3<f32>(x_926.x, x_926.y, x_926.z));
  let x_929 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_928.x, x_928.y, x_928.z, x_929.w);
  let x_931 : vec4<f32> = u_xlat2;
  let x_934 : vec3<f32> = ((vec3<f32>(x_931.x, x_931.y, x_931.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_935 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_934.x, x_934.y, x_934.z, x_935.w);
  let x_937 : vec4<f32> = u_xlat0;
  let x_939 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_937.x, x_937.y, x_937.z, x_937.x));
  u_xlatb0 = vec3<bool>(x_939.x, x_939.y, x_939.z);
  let x_942 : bool = u_xlatb0.x;
  if (x_942) {
    let x_947 : f32 = u_xlat1.x;
    x_943 = x_947;
  } else {
    let x_950 : f32 = u_xlat2.x;
    x_943 = x_950;
  }
  let x_951 : f32 = x_943;
  u_xlat0.x = x_951;
  let x_954 : bool = u_xlatb0.y;
  if (x_954) {
    let x_959 : f32 = u_xlat1.y;
    x_955 = x_959;
  } else {
    let x_962 : f32 = u_xlat2.y;
    x_955 = x_962;
  }
  let x_963 : f32 = x_955;
  u_xlat0.y = x_963;
  let x_966 : bool = u_xlatb0.z;
  if (x_966) {
    let x_971 : f32 = u_xlat1.z;
    x_967 = x_971;
  } else {
    let x_974 : f32 = u_xlat2.z;
    x_967 = x_974;
  }
  let x_975 : f32 = x_967;
  u_xlat0.z = x_975;
  let x_977 : f32 = u_xlat21;
  let x_982 : vec4<f32> = u_xlat0;
  let x_984 : vec3<f32> = ((vec3<f32>(x_977, x_977, x_977) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_982.x, x_982.y, x_982.z));
  let x_985 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_984.x, x_984.y, x_984.z, x_985.w);
  let x_987 : vec4<f32> = u_xlat0;
  let x_989 : vec3<f32> = (vec3<f32>(x_987.x, x_987.y, x_987.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_990 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_989.x, x_989.y, x_989.z, x_990.w);
  let x_992 : vec4<f32> = u_xlat0;
  let x_994 : vec3<f32> = (vec3<f32>(x_992.x, x_992.y, x_992.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_995 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_994.x, x_994.y, x_994.z, x_995.w);
  let x_997 : vec4<f32> = u_xlat2;
  let x_999 : vec3<f32> = (vec3<f32>(x_997.x, x_997.y, x_997.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1000 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_999.x, x_999.y, x_999.z, x_1000.w);
  let x_1002 : vec4<f32> = u_xlat2;
  let x_1005 : vec3<f32> = max(abs(vec3<f32>(x_1002.x, x_1002.y, x_1002.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1006 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1005.x, x_1005.y, x_1005.z, x_1006.w);
  let x_1008 : vec4<f32> = u_xlat2;
  let x_1010 : vec3<f32> = log2(vec3<f32>(x_1008.x, x_1008.y, x_1008.z));
  let x_1011 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1010.x, x_1010.y, x_1010.z, x_1011.w);
  let x_1013 : vec4<f32> = u_xlat2;
  let x_1015 : vec3<f32> = (vec3<f32>(x_1013.x, x_1013.y, x_1013.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1016 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1015.x, x_1015.y, x_1015.z, x_1016.w);
  let x_1018 : vec4<f32> = u_xlat2;
  let x_1020 : vec3<f32> = exp2(vec3<f32>(x_1018.x, x_1018.y, x_1018.z));
  let x_1021 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1020.x, x_1020.y, x_1020.z, x_1021.w);
  let x_1023 : vec4<f32> = u_xlat0;
  let x_1025 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1023.x, x_1023.y, x_1023.z, x_1023.x));
  u_xlatb0 = vec3<bool>(x_1025.x, x_1025.y, x_1025.z);
  let x_1030 : bool = u_xlatb0.x;
  if (x_1030) {
    let x_1035 : f32 = u_xlat1.x;
    x_1031 = x_1035;
  } else {
    let x_1038 : f32 = u_xlat2.x;
    x_1031 = x_1038;
  }
  let x_1039 : f32 = x_1031;
  SV_Target0.x = x_1039;
  let x_1043 : bool = u_xlatb0.y;
  if (x_1043) {
    let x_1048 : f32 = u_xlat1.y;
    x_1044 = x_1048;
  } else {
    let x_1051 : f32 = u_xlat2.y;
    x_1044 = x_1051;
  }
  let x_1052 : f32 = x_1044;
  SV_Target0.y = x_1052;
  let x_1055 : bool = u_xlatb0.z;
  if (x_1055) {
    let x_1060 : f32 = u_xlat1.z;
    x_1056 = x_1060;
  } else {
    let x_1063 : f32 = u_xlat2.z;
    x_1056 = x_1063;
  }
  let x_1064 : f32 = x_1056;
  SV_Target0.z = x_1064;
  let x_1067 : f32 = u_xlat2.w;
  SV_Target0.w = x_1067;
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

