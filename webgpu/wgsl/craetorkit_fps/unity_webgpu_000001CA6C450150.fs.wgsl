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
  x_Grain_Params1 : vec2<f32>,
  x_Grain_Params2 : vec4<f32>,
  x_LumaInAlpha : f32,
}

@group(0) @binding(1) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_55 : PGlobals;

@group(0) @binding(4) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(12) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

@group(0) @binding(2) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_BloomTex : sampler;

@group(0) @binding(3) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_Bloom_DirtTex : sampler;

@group(0) @binding(6) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(14) var sampler_Vignette_Mask : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(7) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(15) var sampler_GrainTex : sampler;

@group(0) @binding(5) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(13) var sampler_Lut2D : sampler;

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
  var u_xlat10 : f32;
  var x_528 : f32;
  var u_xlat21 : f32;
  var u_xlatb3 : vec3<bool>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_722 : f32;
  var x_734 : f32;
  var x_746 : f32;
  var u_xlat14 : vec2<f32>;
  var u_xlatb0 : vec3<bool>;
  var x_898 : f32;
  var x_910 : f32;
  var x_922 : f32;
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
    let x_483 : f32 = u_xlat1.x;
    let x_485 : f32 = u_xlat2.x;
    u_xlat2.w = ((x_483 * x_485) + 1.0f);
  } else {
    let x_495 : vec2<f32> = vs_TEXCOORD0;
    let x_496 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_495);
    u_xlat1.x = x_496.w;
    let x_500 : f32 = u_xlat1.x;
    u_xlat3.x = (x_500 * 0.077399381f);
    let x_506 : f32 = u_xlat1.x;
    u_xlat10 = (x_506 + 0.055f);
    let x_509 : f32 = u_xlat10;
    u_xlat10 = (x_509 * 0.947867334f);
    let x_512 : f32 = u_xlat10;
    u_xlat10 = max(abs(x_512), 1.1920929e-07f);
    let x_516 : f32 = u_xlat10;
    u_xlat10 = log2(x_516);
    let x_518 : f32 = u_xlat10;
    u_xlat10 = (x_518 * 2.400000095f);
    let x_521 : f32 = u_xlat10;
    u_xlat10 = exp2(x_521);
    let x_525 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_525);
    let x_527 : bool = u_xlatb1;
    if (x_527) {
      let x_532 : f32 = u_xlat3.x;
      x_528 = x_532;
    } else {
      let x_534 : f32 = u_xlat10;
      x_528 = x_534;
    }
    let x_535 : f32 = x_528;
    u_xlat1.x = x_535;
    let x_538 : vec3<f32> = x_55.x_Vignette_Color;
    let x_540 : vec3<f32> = (-(x_538) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_541 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_540.x, x_540.y, x_540.z, x_541.w);
    let x_543 : vec4<f32> = u_xlat1;
    let x_545 : vec4<f32> = u_xlat3;
    let x_549 : vec3<f32> = x_55.x_Vignette_Color;
    let x_550 : vec3<f32> = ((vec3<f32>(x_543.x, x_543.x, x_543.x) * vec3<f32>(x_545.x, x_545.y, x_545.z)) + x_549);
    let x_551 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_550.x, x_550.y, x_550.z, x_551.w);
    let x_553 : vec4<f32> = u_xlat0;
    let x_555 : vec4<f32> = u_xlat3;
    let x_558 : vec4<f32> = u_xlat0;
    let x_561 : vec3<f32> = ((vec3<f32>(x_553.x, x_553.y, x_553.z) * vec3<f32>(x_555.x, x_555.y, x_555.z)) + -(vec3<f32>(x_558.x, x_558.y, x_558.z)));
    let x_562 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_561.x, x_561.y, x_561.z, x_562.w);
    let x_566 : f32 = x_55.x_Vignette_Opacity;
    let x_568 : vec4<f32> = u_xlat3;
    let x_571 : vec4<f32> = u_xlat0;
    u_xlat8 = ((vec3<f32>(x_566, x_566, x_566) * vec3<f32>(x_568.x, x_568.y, x_568.z)) + vec3<f32>(x_571.x, x_571.y, x_571.z));
    let x_575 : f32 = u_xlat0.w;
    u_xlat0.x = (x_575 + -1.0f);
    let x_579 : f32 = u_xlat1.x;
    let x_581 : f32 = u_xlat0.x;
    u_xlat2.w = ((x_579 * x_581) + 1.0f);
  }
  let x_586 : vec2<f32> = vs_TEXCOORD1;
  let x_589 : vec4<f32> = x_55.x_Grain_Params2;
  let x_593 : vec4<f32> = x_55.x_Grain_Params2;
  let x_595 : vec2<f32> = ((x_586 * vec2<f32>(x_589.x, x_589.y)) + vec2<f32>(x_593.z, x_593.w));
  let x_596 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_595.x, x_595.y, x_596.z, x_596.w);
  let x_603 : vec4<f32> = u_xlat0;
  let x_605 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_603.x, x_603.y));
  let x_606 : vec3<f32> = vec3<f32>(x_605.x, x_605.y, x_605.z);
  let x_607 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_606.x, x_606.y, x_606.z, x_607.w);
  let x_609 : vec3<f32> = u_xlat8;
  let x_610 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_609.x, x_609.y, x_609.z, x_610.w);
  let x_612 : vec4<f32> = u_xlat3;
  let x_616 : vec3<f32> = clamp(vec3<f32>(x_612.x, x_612.y, x_612.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_617 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_616.x, x_616.y, x_616.z, x_617.w);
  let x_620 : vec4<f32> = u_xlat3;
  u_xlat21 = dot(vec3<f32>(x_620.x, x_620.y, x_620.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_627 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_627);
  let x_631 : f32 = x_55.x_Grain_Params1.x;
  let x_632 : f32 = u_xlat21;
  u_xlat21 = ((x_631 * -(x_632)) + 1.0f);
  let x_636 : vec4<f32> = u_xlat0;
  let x_638 : vec3<f32> = u_xlat8;
  let x_639 : vec3<f32> = (vec3<f32>(x_636.x, x_636.y, x_636.z) * x_638);
  let x_640 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_639.x, x_639.y, x_639.z, x_640.w);
  let x_642 : vec4<f32> = u_xlat0;
  let x_645 : f32 = x_55.x_Grain_Params1.y;
  let x_647 : f32 = x_55.x_Grain_Params1.y;
  let x_649 : f32 = x_55.x_Grain_Params1.y;
  let x_651 : vec3<f32> = (vec3<f32>(x_642.x, x_642.y, x_642.z) * vec3<f32>(x_645, x_647, x_649));
  let x_652 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_651.x, x_651.y, x_651.z, x_652.w);
  let x_654 : vec4<f32> = u_xlat0;
  let x_656 : f32 = u_xlat21;
  let x_659 : vec3<f32> = u_xlat8;
  let x_660 : vec3<f32> = ((vec3<f32>(x_654.x, x_654.y, x_654.z) * vec3<f32>(x_656, x_656, x_656)) + x_659);
  let x_661 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_660.x, x_660.y, x_660.z, x_661.w);
  let x_663 : vec4<f32> = u_xlat2;
  u_xlat2 = x_663;
  let x_664 : vec4<f32> = u_xlat2;
  u_xlat2 = clamp(x_664, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_668 : vec4<f32> = u_xlat2;
  let x_672 : vec3<f32> = (vec3<f32>(x_668.z, x_668.x, x_668.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_673 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_672.x, x_672.y, x_672.z, x_673.w);
  let x_675 : vec4<f32> = u_xlat2;
  let x_678 : vec3<f32> = max(vec3<f32>(x_675.z, x_675.x, x_675.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_679 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_678.x, x_678.y, x_678.z, x_679.w);
  let x_681 : vec4<f32> = u_xlat1;
  let x_683 : vec3<f32> = log2(vec3<f32>(x_681.x, x_681.y, x_681.z));
  let x_684 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_683.x, x_683.y, x_683.z, x_684.w);
  let x_686 : vec4<f32> = u_xlat1;
  let x_690 : vec3<f32> = (vec3<f32>(x_686.x, x_686.y, x_686.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_691 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_690.x, x_690.y, x_690.z, x_691.w);
  let x_693 : vec4<f32> = u_xlat1;
  let x_695 : vec3<f32> = exp2(vec3<f32>(x_693.x, x_693.y, x_693.z));
  let x_696 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_695.x, x_695.y, x_695.z, x_696.w);
  let x_698 : vec4<f32> = u_xlat1;
  let x_705 : vec3<f32> = ((vec3<f32>(x_698.x, x_698.y, x_698.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_706 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_705.x, x_705.y, x_705.z, x_706.w);
  let x_713 : vec4<f32> = u_xlat2;
  let x_716 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_713.z, x_713.x, x_713.y, x_713.z));
  u_xlatb3 = vec3<bool>(x_716.x, x_716.y, x_716.z);
  let x_719 : vec4<f32> = u_xlat0;
  hlslcc_movcTemp = x_719;
  let x_721 : bool = u_xlatb3.x;
  if (x_721) {
    let x_726 : f32 = u_xlat0.x;
    x_722 = x_726;
  } else {
    let x_729 : f32 = u_xlat1.x;
    x_722 = x_729;
  }
  let x_730 : f32 = x_722;
  hlslcc_movcTemp.x = x_730;
  let x_733 : bool = u_xlatb3.y;
  if (x_733) {
    let x_738 : f32 = u_xlat0.y;
    x_734 = x_738;
  } else {
    let x_741 : f32 = u_xlat1.y;
    x_734 = x_741;
  }
  let x_742 : f32 = x_734;
  hlslcc_movcTemp.y = x_742;
  let x_745 : bool = u_xlatb3.z;
  if (x_745) {
    let x_750 : f32 = u_xlat0.z;
    x_746 = x_750;
  } else {
    let x_753 : f32 = u_xlat1.z;
    x_746 = x_753;
  }
  let x_754 : f32 = x_746;
  hlslcc_movcTemp.z = x_754;
  let x_756 : vec4<f32> = hlslcc_movcTemp;
  u_xlat0 = x_756;
  let x_757 : vec4<f32> = u_xlat0;
  let x_761 : vec3<f32> = x_55.x_Lut2D_Params;
  u_xlat7 = (vec3<f32>(x_757.x, x_757.y, x_757.z) * vec3<f32>(x_761.z, x_761.z, x_761.z));
  let x_765 : f32 = u_xlat7.x;
  u_xlat7.x = floor(x_765);
  let x_769 : vec3<f32> = x_55.x_Lut2D_Params;
  let x_772 : vec2<f32> = (vec2<f32>(x_769.x, x_769.y) * vec2<f32>(0.5f, 0.5f));
  let x_773 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_772.x, x_772.y, x_773.z, x_773.w);
  let x_775 : vec3<f32> = u_xlat7;
  let x_778 : vec3<f32> = x_55.x_Lut2D_Params;
  let x_781 : vec4<f32> = u_xlat1;
  let x_783 : vec2<f32> = ((vec2<f32>(x_775.y, x_775.z) * vec2<f32>(x_778.x, x_778.y)) + vec2<f32>(x_781.x, x_781.y));
  let x_784 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_784.x, x_783.x, x_783.y, x_784.w);
  let x_787 : f32 = u_xlat7.x;
  let x_789 : f32 = x_55.x_Lut2D_Params.y;
  let x_792 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_787 * x_789) + x_792);
  let x_800 : vec4<f32> = u_xlat1;
  let x_802 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_800.x, x_800.z));
  let x_803 : vec3<f32> = vec3<f32>(x_802.x, x_802.y, x_802.z);
  let x_804 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_803.x, x_803.y, x_803.z, x_804.w);
  let x_807 : f32 = x_55.x_Lut2D_Params.y;
  u_xlat4.x = x_807;
  u_xlat4.y = 0.0f;
  let x_812 : vec4<f32> = u_xlat1;
  let x_814 : vec4<f32> = u_xlat4;
  u_xlat14 = (vec2<f32>(x_812.x, x_812.z) + vec2<f32>(x_814.x, x_814.y));
  let x_820 : vec2<f32> = u_xlat14;
  let x_821 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_820);
  let x_822 : vec3<f32> = vec3<f32>(x_821.x, x_821.y, x_821.z);
  let x_823 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_822.x, x_822.y, x_822.z, x_823.w);
  let x_826 : f32 = u_xlat0.x;
  let x_828 : f32 = x_55.x_Lut2D_Params.z;
  let x_831 : f32 = u_xlat7.x;
  u_xlat0.x = ((x_826 * x_828) + -(x_831));
  let x_835 : vec4<f32> = u_xlat3;
  let x_838 : vec4<f32> = u_xlat1;
  u_xlat7 = (-(vec3<f32>(x_835.x, x_835.y, x_835.z)) + vec3<f32>(x_838.x, x_838.y, x_838.z));
  let x_841 : vec4<f32> = u_xlat0;
  let x_843 : vec3<f32> = u_xlat7;
  let x_845 : vec4<f32> = u_xlat3;
  let x_847 : vec3<f32> = ((vec3<f32>(x_841.x, x_841.x, x_841.x) * x_843) + vec3<f32>(x_845.x, x_845.y, x_845.z));
  let x_848 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_847.x, x_847.y, x_847.z, x_848.w);
  let x_850 : vec4<f32> = u_xlat0;
  let x_853 : vec3<f32> = (vec3<f32>(x_850.x, x_850.y, x_850.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_854 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_853.x, x_853.y, x_853.z, x_854.w);
  let x_856 : vec4<f32> = u_xlat0;
  let x_859 : vec3<f32> = (vec3<f32>(x_856.x, x_856.y, x_856.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_860 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_859.x, x_859.y, x_859.z, x_860.w);
  let x_862 : vec4<f32> = u_xlat3;
  let x_865 : vec3<f32> = (vec3<f32>(x_862.x, x_862.y, x_862.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_866 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_865.x, x_865.y, x_865.z, x_866.w);
  let x_868 : vec4<f32> = u_xlat3;
  let x_871 : vec3<f32> = max(abs(vec3<f32>(x_868.x, x_868.y, x_868.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_872 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_871.x, x_871.y, x_871.z, x_872.w);
  let x_874 : vec4<f32> = u_xlat3;
  let x_876 : vec3<f32> = log2(vec3<f32>(x_874.x, x_874.y, x_874.z));
  let x_877 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_876.x, x_876.y, x_876.z, x_877.w);
  let x_879 : vec4<f32> = u_xlat3;
  let x_882 : vec3<f32> = (vec3<f32>(x_879.x, x_879.y, x_879.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_883 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_882.x, x_882.y, x_882.z, x_883.w);
  let x_885 : vec4<f32> = u_xlat3;
  let x_887 : vec3<f32> = exp2(vec3<f32>(x_885.x, x_885.y, x_885.z));
  let x_888 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_887.x, x_887.y, x_887.z, x_888.w);
  let x_892 : vec4<f32> = u_xlat0;
  let x_894 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_892.x, x_892.y, x_892.z, x_892.x));
  u_xlatb0 = vec3<bool>(x_894.x, x_894.y, x_894.z);
  let x_897 : bool = u_xlatb0.x;
  if (x_897) {
    let x_902 : f32 = u_xlat1.x;
    x_898 = x_902;
  } else {
    let x_905 : f32 = u_xlat3.x;
    x_898 = x_905;
  }
  let x_906 : f32 = x_898;
  u_xlat2.x = x_906;
  let x_909 : bool = u_xlatb0.y;
  if (x_909) {
    let x_914 : f32 = u_xlat1.y;
    x_910 = x_914;
  } else {
    let x_917 : f32 = u_xlat3.y;
    x_910 = x_917;
  }
  let x_918 : f32 = x_910;
  u_xlat2.y = x_918;
  let x_921 : bool = u_xlatb0.z;
  if (x_921) {
    let x_926 : f32 = u_xlat1.z;
    x_922 = x_926;
  } else {
    let x_929 : f32 = u_xlat3.z;
    x_922 = x_929;
  }
  let x_930 : f32 = x_922;
  u_xlat2.z = x_930;
  let x_934 : f32 = x_55.x_LumaInAlpha;
  u_xlatb0.x = (0.5f < x_934);
  let x_938 : bool = u_xlatb0.x;
  if (x_938) {
    let x_941 : vec4<f32> = u_xlat2;
    let x_942 : vec3<f32> = vec3<f32>(x_941.x, x_941.y, x_941.z);
    let x_943 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_942.x, x_942.y, x_942.z, x_943.w);
    let x_945 : vec4<f32> = u_xlat0;
    let x_949 : vec3<f32> = clamp(vec3<f32>(x_945.x, x_945.y, x_945.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_950 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_949.x, x_949.y, x_949.z, x_950.w);
    let x_952 : vec4<f32> = u_xlat0;
    u_xlat2.w = dot(vec3<f32>(x_952.x, x_952.y, x_952.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_958 : vec4<f32> = u_xlat2;
  SV_Target0 = x_958;
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

