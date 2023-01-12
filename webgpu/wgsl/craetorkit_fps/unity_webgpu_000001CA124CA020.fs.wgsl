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
  x_Lut3D_Params : vec2<f32>,
  x_PostExposure : f32,
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
}

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_55 : PGlobals;

@group(0) @binding(5) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(14) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainTex : sampler;

@group(0) @binding(3) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_BloomTex : sampler;

@group(0) @binding(4) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(13) var sampler_Bloom_DirtTex : sampler;

@group(0) @binding(7) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(16) var sampler_Vignette_Mask : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(8) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(17) var sampler_GrainTex : sampler;

@group(0) @binding(6) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(15) var sampler_Lut3D : sampler;

@group(0) @binding(0) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_DitheringTex : sampler;

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
  var u_xlatb0 : vec3<bool>;
  var x_864 : f32;
  var x_876 : f32;
  var x_888 : f32;
  var x_957 : f32;
  var x_970 : f32;
  var x_982 : f32;
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
  let x_666 : f32 = x_55.x_PostExposure;
  let x_668 : f32 = x_55.x_PostExposure;
  let x_670 : f32 = x_55.x_PostExposure;
  let x_672 : f32 = x_55.x_PostExposure;
  let x_673 : vec4<f32> = vec4<f32>(x_666, x_668, x_670, x_672);
  u_xlat0 = (x_663 * vec4<f32>(x_673.x, x_673.y, x_673.z, x_673.w));
  let x_680 : vec4<f32> = u_xlat0;
  let x_687 : vec3<f32> = ((vec3<f32>(x_680.x, x_680.y, x_680.z) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_688 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_687.x, x_687.y, x_687.z, x_688.w);
  let x_690 : vec4<f32> = u_xlat0;
  let x_692 : vec3<f32> = log2(vec3<f32>(x_690.x, x_690.y, x_690.z));
  let x_693 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_692.x, x_692.y, x_692.z, x_693.w);
  let x_695 : vec4<f32> = u_xlat0;
  let x_702 : vec3<f32> = ((vec3<f32>(x_695.x, x_695.y, x_695.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_703 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_702.x, x_702.y, x_702.z, x_703.w);
  let x_705 : vec4<f32> = u_xlat0;
  let x_709 : vec3<f32> = clamp(vec3<f32>(x_705.x, x_705.y, x_705.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_710 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_709.x, x_709.y, x_709.z, x_710.w);
  let x_712 : vec4<f32> = u_xlat0;
  let x_716 : vec2<f32> = x_55.x_Lut3D_Params;
  let x_718 : vec3<f32> = (vec3<f32>(x_712.x, x_712.y, x_712.z) * vec3<f32>(x_716.y, x_716.y, x_716.y));
  let x_719 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_718.x, x_718.y, x_718.z, x_719.w);
  let x_722 : f32 = x_55.x_Lut3D_Params.x;
  u_xlat1.x = (x_722 * 0.5f);
  let x_725 : vec4<f32> = u_xlat0;
  let x_728 : vec2<f32> = x_55.x_Lut3D_Params;
  let x_731 : vec4<f32> = u_xlat1;
  let x_733 : vec3<f32> = ((vec3<f32>(x_725.x, x_725.y, x_725.z) * vec3<f32>(x_728.x, x_728.x, x_728.x)) + vec3<f32>(x_731.x, x_731.x, x_731.x));
  let x_734 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_733.x, x_733.y, x_733.z, x_734.w);
  let x_744 : vec4<f32> = u_xlat0;
  let x_746 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, vec3<f32>(x_744.x, x_744.y, x_744.z));
  let x_747 : vec3<f32> = vec3<f32>(x_746.x, x_746.y, x_746.z);
  let x_748 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_747.x, x_747.y, x_747.z, x_748.w);
  let x_750 : vec2<f32> = vs_TEXCOORD0;
  let x_753 : vec4<f32> = x_55.x_Dithering_Coords;
  let x_757 : vec4<f32> = x_55.x_Dithering_Coords;
  let x_759 : vec2<f32> = ((x_750 * vec2<f32>(x_753.x, x_753.y)) + vec2<f32>(x_757.z, x_757.w));
  let x_760 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_759.x, x_759.y, x_760.z, x_760.w);
  let x_767 : vec4<f32> = u_xlat1;
  let x_769 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_767.x, x_767.y));
  u_xlat1.x = x_769.w;
  let x_773 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_773 * 2.0f) + -1.0f);
  let x_778 : f32 = u_xlat1.x;
  u_xlat8.x = ((x_778 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_784 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_784, 0.0f, 1.0f);
  let x_788 : f32 = u_xlat8.x;
  u_xlat8.x = ((x_788 * 2.0f) + -1.0f);
  let x_793 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_793)) + 1.0f);
  let x_799 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_799);
  let x_803 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_803) + 1.0f);
  let x_808 : f32 = u_xlat1.x;
  let x_810 : f32 = u_xlat8.x;
  u_xlat1.x = (x_808 * x_810);
  let x_813 : vec4<f32> = u_xlat0;
  u_xlat8 = (vec3<f32>(x_813.x, x_813.y, x_813.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_818 : vec4<f32> = u_xlat0;
  let x_822 : vec3<f32> = max(abs(vec3<f32>(x_818.x, x_818.y, x_818.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_823 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_822.x, x_822.y, x_822.z, x_823.w);
  let x_825 : vec4<f32> = u_xlat2;
  let x_827 : vec3<f32> = log2(vec3<f32>(x_825.x, x_825.y, x_825.z));
  let x_828 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_827.x, x_827.y, x_827.z, x_828.w);
  let x_830 : vec4<f32> = u_xlat2;
  let x_834 : vec3<f32> = (vec3<f32>(x_830.x, x_830.y, x_830.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_835 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_834.x, x_834.y, x_834.z, x_835.w);
  let x_837 : vec4<f32> = u_xlat2;
  let x_839 : vec3<f32> = exp2(vec3<f32>(x_837.x, x_837.y, x_837.z));
  let x_840 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_839.x, x_839.y, x_839.z, x_840.w);
  let x_842 : vec4<f32> = u_xlat2;
  let x_849 : vec3<f32> = ((vec3<f32>(x_842.x, x_842.y, x_842.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_850 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_849.x, x_849.y, x_849.z, x_850.w);
  let x_857 : vec4<f32> = u_xlat0;
  let x_860 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_857.x, x_857.y, x_857.z, x_857.x));
  u_xlatb0 = vec3<bool>(x_860.x, x_860.y, x_860.z);
  let x_863 : bool = u_xlatb0.x;
  if (x_863) {
    let x_868 : f32 = u_xlat8.x;
    x_864 = x_868;
  } else {
    let x_871 : f32 = u_xlat2.x;
    x_864 = x_871;
  }
  let x_872 : f32 = x_864;
  u_xlat0.x = x_872;
  let x_875 : bool = u_xlatb0.y;
  if (x_875) {
    let x_880 : f32 = u_xlat8.y;
    x_876 = x_880;
  } else {
    let x_883 : f32 = u_xlat2.y;
    x_876 = x_883;
  }
  let x_884 : f32 = x_876;
  u_xlat0.y = x_884;
  let x_887 : bool = u_xlatb0.z;
  if (x_887) {
    let x_892 : f32 = u_xlat8.z;
    x_888 = x_892;
  } else {
    let x_895 : f32 = u_xlat2.z;
    x_888 = x_895;
  }
  let x_896 : f32 = x_888;
  u_xlat0.z = x_896;
  let x_898 : vec4<f32> = u_xlat1;
  let x_903 : vec4<f32> = u_xlat0;
  let x_905 : vec3<f32> = ((vec3<f32>(x_898.x, x_898.x, x_898.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_903.x, x_903.y, x_903.z));
  let x_906 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_905.x, x_905.y, x_905.z, x_906.w);
  let x_908 : vec4<f32> = u_xlat0;
  let x_911 : vec3<f32> = (vec3<f32>(x_908.x, x_908.y, x_908.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_912 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_911.x, x_911.y, x_911.z, x_912.w);
  let x_914 : vec4<f32> = u_xlat0;
  let x_917 : vec3<f32> = (vec3<f32>(x_914.x, x_914.y, x_914.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_918 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_917.x, x_917.y, x_917.z, x_918.w);
  let x_920 : vec4<f32> = u_xlat2;
  let x_923 : vec3<f32> = (vec3<f32>(x_920.x, x_920.y, x_920.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_924 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_923.x, x_923.y, x_923.z, x_924.w);
  let x_926 : vec4<f32> = u_xlat2;
  let x_929 : vec3<f32> = max(abs(vec3<f32>(x_926.x, x_926.y, x_926.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_930 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_929.x, x_929.y, x_929.z, x_930.w);
  let x_932 : vec4<f32> = u_xlat2;
  let x_934 : vec3<f32> = log2(vec3<f32>(x_932.x, x_932.y, x_932.z));
  let x_935 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_934.x, x_934.y, x_934.z, x_935.w);
  let x_937 : vec4<f32> = u_xlat2;
  let x_940 : vec3<f32> = (vec3<f32>(x_937.x, x_937.y, x_937.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_941 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_940.x, x_940.y, x_940.z, x_941.w);
  let x_943 : vec4<f32> = u_xlat2;
  let x_945 : vec3<f32> = exp2(vec3<f32>(x_943.x, x_943.y, x_943.z));
  let x_946 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_945.x, x_945.y, x_945.z, x_946.w);
  let x_949 : vec4<f32> = u_xlat0;
  let x_951 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_949.x, x_949.y, x_949.z, x_949.x));
  u_xlatb0 = vec3<bool>(x_951.x, x_951.y, x_951.z);
  let x_956 : bool = u_xlatb0.x;
  if (x_956) {
    let x_961 : f32 = u_xlat1.x;
    x_957 = x_961;
  } else {
    let x_964 : f32 = u_xlat2.x;
    x_957 = x_964;
  }
  let x_965 : f32 = x_957;
  SV_Target0.x = x_965;
  let x_969 : bool = u_xlatb0.y;
  if (x_969) {
    let x_974 : f32 = u_xlat1.y;
    x_970 = x_974;
  } else {
    let x_977 : f32 = u_xlat2.y;
    x_970 = x_977;
  }
  let x_978 : f32 = x_970;
  SV_Target0.y = x_978;
  let x_981 : bool = u_xlatb0.z;
  if (x_981) {
    let x_986 : f32 = u_xlat1.z;
    x_982 = x_986;
  } else {
    let x_989 : f32 = u_xlat2.z;
    x_982 = x_989;
  }
  let x_990 : f32 = x_982;
  SV_Target0.z = x_990;
  let x_993 : f32 = u_xlat0.w;
  SV_Target0.w = x_993;
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
