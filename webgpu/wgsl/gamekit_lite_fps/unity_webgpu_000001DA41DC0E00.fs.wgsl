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
  x_Grain_Params1 : vec2<f32>,
  x_Grain_Params2 : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(3) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat7 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_55 : PGlobals;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(6) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(15) var sampler_ChromaticAberration_SpectralLut : sampler;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainTex : sampler;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(4) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(13) var sampler_BloomTex : sampler;

@group(0) @binding(5) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(14) var sampler_Bloom_DirtTex : sampler;

var<private> u_xlatb1 : bool;

var<private> u_xlat22 : f32;

var<private> u_xlat8 : vec3<f32>;

@group(0) @binding(8) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(17) var sampler_Vignette_Mask : sampler;

var<private> u_xlat10 : f32;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(9) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(18) var sampler_GrainTex : sampler;

var<private> u_xlat21 : f32;

@group(0) @binding(7) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(16) var sampler_Lut2D : sampler;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_DitheringTex : sampler;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_529 : f32;
  var x_926 : f32;
  var x_938 : f32;
  var x_950 : f32;
  var x_1019 : f32;
  var x_1032 : f32;
  var x_1044 : f32;
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
      let x_533 : f32 = u_xlat3.x;
      x_529 = x_533;
    } else {
      let x_535 : f32 = u_xlat10;
      x_529 = x_535;
    }
    let x_536 : f32 = x_529;
    u_xlat1.x = x_536;
    let x_539 : vec3<f32> = x_55.x_Vignette_Color;
    let x_541 : vec3<f32> = (-(x_539) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_542 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_541.x, x_541.y, x_541.z, x_542.w);
    let x_544 : vec4<f32> = u_xlat1;
    let x_546 : vec4<f32> = u_xlat3;
    let x_550 : vec3<f32> = x_55.x_Vignette_Color;
    let x_551 : vec3<f32> = ((vec3<f32>(x_544.x, x_544.x, x_544.x) * vec3<f32>(x_546.x, x_546.y, x_546.z)) + x_550);
    let x_552 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_551.x, x_551.y, x_551.z, x_552.w);
    let x_554 : vec4<f32> = u_xlat0;
    let x_556 : vec4<f32> = u_xlat3;
    let x_559 : vec4<f32> = u_xlat0;
    let x_562 : vec3<f32> = ((vec3<f32>(x_554.x, x_554.y, x_554.z) * vec3<f32>(x_556.x, x_556.y, x_556.z)) + -(vec3<f32>(x_559.x, x_559.y, x_559.z)));
    let x_563 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_562.x, x_562.y, x_562.z, x_563.w);
    let x_567 : f32 = x_55.x_Vignette_Opacity;
    let x_569 : vec4<f32> = u_xlat3;
    let x_572 : vec4<f32> = u_xlat0;
    u_xlat8 = ((vec3<f32>(x_567, x_567, x_567) * vec3<f32>(x_569.x, x_569.y, x_569.z)) + vec3<f32>(x_572.x, x_572.y, x_572.z));
    let x_576 : f32 = u_xlat0.w;
    u_xlat0.x = (x_576 + -1.0f);
    let x_580 : f32 = u_xlat1.x;
    let x_582 : f32 = u_xlat0.x;
    u_xlat2.w = ((x_580 * x_582) + 1.0f);
  }
  let x_587 : vec2<f32> = vs_TEXCOORD1;
  let x_590 : vec4<f32> = x_55.x_Grain_Params2;
  let x_594 : vec4<f32> = x_55.x_Grain_Params2;
  let x_596 : vec2<f32> = ((x_587 * vec2<f32>(x_590.x, x_590.y)) + vec2<f32>(x_594.z, x_594.w));
  let x_597 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_596.x, x_596.y, x_597.z, x_597.w);
  let x_604 : vec4<f32> = u_xlat0;
  let x_606 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_604.x, x_604.y));
  let x_607 : vec3<f32> = vec3<f32>(x_606.x, x_606.y, x_606.z);
  let x_608 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_607.x, x_607.y, x_607.z, x_608.w);
  let x_610 : vec3<f32> = u_xlat8;
  let x_611 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_610.x, x_610.y, x_610.z, x_611.w);
  let x_613 : vec4<f32> = u_xlat3;
  let x_617 : vec3<f32> = clamp(vec3<f32>(x_613.x, x_613.y, x_613.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_618 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_617.x, x_617.y, x_617.z, x_618.w);
  let x_621 : vec4<f32> = u_xlat3;
  u_xlat21 = dot(vec3<f32>(x_621.x, x_621.y, x_621.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_628 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_628);
  let x_632 : f32 = x_55.x_Grain_Params1.x;
  let x_633 : f32 = u_xlat21;
  u_xlat21 = ((x_632 * -(x_633)) + 1.0f);
  let x_637 : vec4<f32> = u_xlat0;
  let x_639 : vec3<f32> = u_xlat8;
  let x_640 : vec3<f32> = (vec3<f32>(x_637.x, x_637.y, x_637.z) * x_639);
  let x_641 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_640.x, x_640.y, x_640.z, x_641.w);
  let x_643 : vec4<f32> = u_xlat0;
  let x_646 : f32 = x_55.x_Grain_Params1.y;
  let x_648 : f32 = x_55.x_Grain_Params1.y;
  let x_650 : f32 = x_55.x_Grain_Params1.y;
  let x_652 : vec3<f32> = (vec3<f32>(x_643.x, x_643.y, x_643.z) * vec3<f32>(x_646, x_648, x_650));
  let x_653 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_652.x, x_652.y, x_652.z, x_653.w);
  let x_655 : vec4<f32> = u_xlat0;
  let x_657 : f32 = u_xlat21;
  let x_660 : vec3<f32> = u_xlat8;
  let x_661 : vec3<f32> = ((vec3<f32>(x_655.x, x_655.y, x_655.z) * vec3<f32>(x_657, x_657, x_657)) + x_660);
  let x_662 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_661.x, x_661.y, x_661.z, x_662.w);
  let x_664 : vec4<f32> = u_xlat2;
  let x_667 : f32 = x_55.x_PostExposure;
  let x_669 : f32 = x_55.x_PostExposure;
  let x_671 : f32 = x_55.x_PostExposure;
  let x_673 : f32 = x_55.x_PostExposure;
  let x_674 : vec4<f32> = vec4<f32>(x_667, x_669, x_671, x_673);
  u_xlat0 = (x_664 * vec4<f32>(x_674.x, x_674.y, x_674.z, x_674.w));
  let x_681 : vec4<f32> = u_xlat0;
  let x_688 : vec3<f32> = ((vec3<f32>(x_681.z, x_681.x, x_681.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_689 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_688.x, x_688.y, x_688.z, x_689.w);
  let x_691 : vec4<f32> = u_xlat0;
  let x_693 : vec3<f32> = log2(vec3<f32>(x_691.x, x_691.y, x_691.z));
  let x_694 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_693.x, x_693.y, x_693.z, x_694.w);
  let x_696 : vec4<f32> = u_xlat0;
  let x_703 : vec3<f32> = ((vec3<f32>(x_696.x, x_696.y, x_696.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_704 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_703.x, x_703.y, x_703.z, x_704.w);
  let x_706 : vec4<f32> = u_xlat0;
  let x_710 : vec3<f32> = clamp(vec3<f32>(x_706.x, x_706.y, x_706.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_711 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_710.x, x_710.y, x_710.z, x_711.w);
  let x_713 : vec4<f32> = u_xlat0;
  let x_717 : vec3<f32> = x_55.x_Lut2D_Params;
  let x_719 : vec3<f32> = (vec3<f32>(x_713.x, x_713.y, x_713.z) * vec3<f32>(x_717.z, x_717.z, x_717.z));
  let x_720 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_719.x, x_719.y, x_719.z, x_720.w);
  let x_723 : f32 = u_xlat1.x;
  u_xlat7.x = floor(x_723);
  let x_727 : vec3<f32> = x_55.x_Lut2D_Params;
  let x_730 : vec2<f32> = (vec2<f32>(x_727.x, x_727.y) * vec2<f32>(0.5f, 0.5f));
  let x_731 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_730.x, x_731.y, x_731.z, x_730.y);
  let x_733 : vec4<f32> = u_xlat1;
  let x_736 : vec3<f32> = x_55.x_Lut2D_Params;
  let x_739 : vec4<f32> = u_xlat1;
  let x_741 : vec2<f32> = ((vec2<f32>(x_733.y, x_733.z) * vec2<f32>(x_736.x, x_736.y)) + vec2<f32>(x_739.x, x_739.w));
  let x_742 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_742.x, x_741.x, x_741.y, x_742.w);
  let x_745 : f32 = u_xlat7.x;
  let x_747 : f32 = x_55.x_Lut2D_Params.y;
  let x_750 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_745 * x_747) + x_750);
  let x_758 : vec4<f32> = u_xlat1;
  let x_760 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_758.x, x_758.z));
  let x_761 : vec3<f32> = vec3<f32>(x_760.x, x_760.y, x_760.z);
  let x_762 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_761.x, x_761.y, x_761.z, x_762.w);
  let x_765 : f32 = x_55.x_Lut2D_Params.y;
  u_xlat3.x = x_765;
  u_xlat3.y = 0.0f;
  let x_768 : vec4<f32> = u_xlat1;
  let x_770 : vec4<f32> = u_xlat3;
  let x_772 : vec2<f32> = (vec2<f32>(x_768.x, x_768.z) + vec2<f32>(x_770.x, x_770.y));
  let x_773 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_772.x, x_772.y, x_773.z, x_773.w);
  let x_778 : vec4<f32> = u_xlat1;
  let x_780 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_778.x, x_778.y));
  let x_781 : vec3<f32> = vec3<f32>(x_780.x, x_780.y, x_780.z);
  let x_782 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_781.x, x_781.y, x_781.z, x_782.w);
  let x_785 : f32 = u_xlat0.x;
  let x_787 : f32 = x_55.x_Lut2D_Params.z;
  let x_790 : f32 = u_xlat7.x;
  u_xlat0.x = ((x_785 * x_787) + -(x_790));
  let x_794 : vec4<f32> = u_xlat2;
  let x_797 : vec4<f32> = u_xlat1;
  let x_799 : vec3<f32> = (-(vec3<f32>(x_794.x, x_794.y, x_794.z)) + vec3<f32>(x_797.x, x_797.y, x_797.z));
  let x_800 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_799.x, x_799.y, x_799.z, x_800.w);
  let x_802 : vec4<f32> = u_xlat0;
  let x_804 : vec4<f32> = u_xlat1;
  let x_807 : vec4<f32> = u_xlat2;
  let x_809 : vec3<f32> = ((vec3<f32>(x_802.x, x_802.x, x_802.x) * vec3<f32>(x_804.x, x_804.y, x_804.z)) + vec3<f32>(x_807.x, x_807.y, x_807.z));
  let x_810 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_809.x, x_809.y, x_809.z, x_810.w);
  let x_812 : vec2<f32> = vs_TEXCOORD0;
  let x_815 : vec4<f32> = x_55.x_Dithering_Coords;
  let x_819 : vec4<f32> = x_55.x_Dithering_Coords;
  let x_821 : vec2<f32> = ((x_812 * vec2<f32>(x_815.x, x_815.y)) + vec2<f32>(x_819.z, x_819.w));
  let x_822 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_821.x, x_821.y, x_822.z, x_822.w);
  let x_829 : vec4<f32> = u_xlat1;
  let x_831 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_829.x, x_829.y));
  u_xlat1.x = x_831.w;
  let x_835 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_835 * 2.0f) + -1.0f);
  let x_840 : f32 = u_xlat1.x;
  u_xlat8.x = ((x_840 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_846 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_846, 0.0f, 1.0f);
  let x_850 : f32 = u_xlat8.x;
  u_xlat8.x = ((x_850 * 2.0f) + -1.0f);
  let x_855 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_855)) + 1.0f);
  let x_861 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_861);
  let x_865 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_865) + 1.0f);
  let x_870 : f32 = u_xlat1.x;
  let x_872 : f32 = u_xlat8.x;
  u_xlat1.x = (x_870 * x_872);
  let x_875 : vec4<f32> = u_xlat0;
  u_xlat8 = (vec3<f32>(x_875.x, x_875.y, x_875.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_880 : vec4<f32> = u_xlat0;
  let x_884 : vec3<f32> = max(abs(vec3<f32>(x_880.x, x_880.y, x_880.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_885 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_884.x, x_884.y, x_884.z, x_885.w);
  let x_887 : vec4<f32> = u_xlat2;
  let x_889 : vec3<f32> = log2(vec3<f32>(x_887.x, x_887.y, x_887.z));
  let x_890 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_889.x, x_889.y, x_889.z, x_890.w);
  let x_892 : vec4<f32> = u_xlat2;
  let x_896 : vec3<f32> = (vec3<f32>(x_892.x, x_892.y, x_892.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_897 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_896.x, x_896.y, x_896.z, x_897.w);
  let x_899 : vec4<f32> = u_xlat2;
  let x_901 : vec3<f32> = exp2(vec3<f32>(x_899.x, x_899.y, x_899.z));
  let x_902 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_901.x, x_901.y, x_901.z, x_902.w);
  let x_904 : vec4<f32> = u_xlat2;
  let x_911 : vec3<f32> = ((vec3<f32>(x_904.x, x_904.y, x_904.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_912 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_911.x, x_911.y, x_911.z, x_912.w);
  let x_919 : vec4<f32> = u_xlat0;
  let x_922 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_919.x, x_919.y, x_919.z, x_919.x));
  u_xlatb0 = vec3<bool>(x_922.x, x_922.y, x_922.z);
  let x_925 : bool = u_xlatb0.x;
  if (x_925) {
    let x_930 : f32 = u_xlat8.x;
    x_926 = x_930;
  } else {
    let x_933 : f32 = u_xlat2.x;
    x_926 = x_933;
  }
  let x_934 : f32 = x_926;
  u_xlat0.x = x_934;
  let x_937 : bool = u_xlatb0.y;
  if (x_937) {
    let x_942 : f32 = u_xlat8.y;
    x_938 = x_942;
  } else {
    let x_945 : f32 = u_xlat2.y;
    x_938 = x_945;
  }
  let x_946 : f32 = x_938;
  u_xlat0.y = x_946;
  let x_949 : bool = u_xlatb0.z;
  if (x_949) {
    let x_954 : f32 = u_xlat8.z;
    x_950 = x_954;
  } else {
    let x_957 : f32 = u_xlat2.z;
    x_950 = x_957;
  }
  let x_958 : f32 = x_950;
  u_xlat0.z = x_958;
  let x_960 : vec4<f32> = u_xlat1;
  let x_965 : vec4<f32> = u_xlat0;
  let x_967 : vec3<f32> = ((vec3<f32>(x_960.x, x_960.x, x_960.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_965.x, x_965.y, x_965.z));
  let x_968 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_967.x, x_967.y, x_967.z, x_968.w);
  let x_970 : vec4<f32> = u_xlat0;
  let x_973 : vec3<f32> = (vec3<f32>(x_970.x, x_970.y, x_970.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_974 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_973.x, x_973.y, x_973.z, x_974.w);
  let x_976 : vec4<f32> = u_xlat0;
  let x_979 : vec3<f32> = (vec3<f32>(x_976.x, x_976.y, x_976.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_980 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_979.x, x_979.y, x_979.z, x_980.w);
  let x_982 : vec4<f32> = u_xlat2;
  let x_985 : vec3<f32> = (vec3<f32>(x_982.x, x_982.y, x_982.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_986 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_985.x, x_985.y, x_985.z, x_986.w);
  let x_988 : vec4<f32> = u_xlat2;
  let x_991 : vec3<f32> = max(abs(vec3<f32>(x_988.x, x_988.y, x_988.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_992 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_991.x, x_991.y, x_991.z, x_992.w);
  let x_994 : vec4<f32> = u_xlat2;
  let x_996 : vec3<f32> = log2(vec3<f32>(x_994.x, x_994.y, x_994.z));
  let x_997 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_996.x, x_996.y, x_996.z, x_997.w);
  let x_999 : vec4<f32> = u_xlat2;
  let x_1002 : vec3<f32> = (vec3<f32>(x_999.x, x_999.y, x_999.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1003 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1002.x, x_1002.y, x_1002.z, x_1003.w);
  let x_1005 : vec4<f32> = u_xlat2;
  let x_1007 : vec3<f32> = exp2(vec3<f32>(x_1005.x, x_1005.y, x_1005.z));
  let x_1008 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1007.x, x_1007.y, x_1007.z, x_1008.w);
  let x_1011 : vec4<f32> = u_xlat0;
  let x_1013 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1011.x, x_1011.y, x_1011.z, x_1011.x));
  u_xlatb0 = vec3<bool>(x_1013.x, x_1013.y, x_1013.z);
  let x_1018 : bool = u_xlatb0.x;
  if (x_1018) {
    let x_1023 : f32 = u_xlat1.x;
    x_1019 = x_1023;
  } else {
    let x_1026 : f32 = u_xlat2.x;
    x_1019 = x_1026;
  }
  let x_1027 : f32 = x_1019;
  SV_Target0.x = x_1027;
  let x_1031 : bool = u_xlatb0.y;
  if (x_1031) {
    let x_1036 : f32 = u_xlat1.y;
    x_1032 = x_1036;
  } else {
    let x_1039 : f32 = u_xlat2.y;
    x_1032 = x_1039;
  }
  let x_1040 : f32 = x_1032;
  SV_Target0.y = x_1040;
  let x_1043 : bool = u_xlatb0.z;
  if (x_1043) {
    let x_1048 : f32 = u_xlat1.z;
    x_1044 = x_1048;
  } else {
    let x_1051 : f32 = u_xlat2.z;
    x_1044 = x_1051;
  }
  let x_1052 : f32 = x_1044;
  SV_Target0.z = x_1052;
  let x_1055 : f32 = u_xlat0.w;
  SV_Target0.w = x_1055;
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

