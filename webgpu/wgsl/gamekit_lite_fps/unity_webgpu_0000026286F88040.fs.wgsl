struct PGlobals {
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
  x_LumaInAlpha : f32,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat7 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_55 : PGlobals;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(5) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(11) var sampler_ChromaticAberration_SpectralLut : sampler;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(3) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_BloomTex : sampler;

@group(0) @binding(4) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_Bloom_DirtTex : sampler;

var<private> u_xlatb3 : vec3<bool>;

var<private> u_xlat8 : vec3<f32>;

@group(0) @binding(6) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(12) var sampler_Lut2D : sampler;

var<private> u_xlat15 : vec2<f32>;

var<private> u_xlatb1 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var hlslcc_movcTemp : vec4<f32>;
  var x_415 : f32;
  var x_428 : f32;
  var x_441 : f32;
  var x_599 : f32;
  var x_611 : f32;
  var x_623 : f32;
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
  let x_352 : vec4<f32> = u_xlat0;
  u_xlat0 = clamp(x_352, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_356 : vec4<f32> = u_xlat0;
  let x_360 : vec3<f32> = (vec3<f32>(x_356.z, x_356.x, x_356.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_361 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_360.x, x_360.y, x_360.z, x_361.w);
  let x_363 : vec4<f32> = u_xlat0;
  let x_367 : vec3<f32> = max(vec3<f32>(x_363.z, x_363.x, x_363.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_368 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_367.x, x_367.y, x_367.z, x_368.w);
  let x_370 : vec4<f32> = u_xlat2;
  let x_372 : vec3<f32> = log2(vec3<f32>(x_370.x, x_370.y, x_370.z));
  let x_373 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_372.x, x_372.y, x_372.z, x_373.w);
  let x_375 : vec4<f32> = u_xlat2;
  let x_379 : vec3<f32> = (vec3<f32>(x_375.x, x_375.y, x_375.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_380 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_379.x, x_379.y, x_379.z, x_380.w);
  let x_382 : vec4<f32> = u_xlat2;
  let x_384 : vec3<f32> = exp2(vec3<f32>(x_382.x, x_382.y, x_382.z));
  let x_385 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_384.x, x_384.y, x_384.z, x_385.w);
  let x_387 : vec4<f32> = u_xlat2;
  let x_394 : vec3<f32> = ((vec3<f32>(x_387.x, x_387.y, x_387.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_395 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_394.x, x_394.y, x_394.z, x_395.w);
  let x_403 : vec4<f32> = u_xlat0;
  let x_406 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_403.z, x_403.x, x_403.y, x_403.z));
  u_xlatb3 = vec3<bool>(x_406.x, x_406.y, x_406.z);
  let x_410 : vec4<f32> = u_xlat1;
  hlslcc_movcTemp = x_410;
  let x_413 : bool = u_xlatb3.x;
  if (x_413) {
    let x_419 : f32 = u_xlat1.x;
    x_415 = x_419;
  } else {
    let x_422 : f32 = u_xlat2.x;
    x_415 = x_422;
  }
  let x_423 : f32 = x_415;
  hlslcc_movcTemp.x = x_423;
  let x_427 : bool = u_xlatb3.y;
  if (x_427) {
    let x_432 : f32 = u_xlat1.y;
    x_428 = x_432;
  } else {
    let x_435 : f32 = u_xlat2.y;
    x_428 = x_435;
  }
  let x_436 : f32 = x_428;
  hlslcc_movcTemp.y = x_436;
  let x_440 : bool = u_xlatb3.z;
  if (x_440) {
    let x_445 : f32 = u_xlat1.z;
    x_441 = x_445;
  } else {
    let x_448 : f32 = u_xlat2.z;
    x_441 = x_448;
  }
  let x_449 : f32 = x_441;
  hlslcc_movcTemp.z = x_449;
  let x_451 : vec4<f32> = hlslcc_movcTemp;
  u_xlat1 = x_451;
  let x_453 : vec4<f32> = u_xlat1;
  let x_457 : vec3<f32> = x_55.x_Lut2D_Params;
  u_xlat8 = (vec3<f32>(x_453.x, x_453.y, x_453.z) * vec3<f32>(x_457.z, x_457.z, x_457.z));
  let x_461 : f32 = u_xlat8.x;
  u_xlat8.x = floor(x_461);
  let x_465 : vec3<f32> = x_55.x_Lut2D_Params;
  let x_468 : vec2<f32> = (vec2<f32>(x_465.x, x_465.y) * vec2<f32>(0.5f, 0.5f));
  let x_469 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_468.x, x_468.y, x_469.z, x_469.w);
  let x_471 : vec3<f32> = u_xlat8;
  let x_474 : vec3<f32> = x_55.x_Lut2D_Params;
  let x_477 : vec4<f32> = u_xlat2;
  let x_479 : vec2<f32> = ((vec2<f32>(x_471.y, x_471.z) * vec2<f32>(x_474.x, x_474.y)) + vec2<f32>(x_477.x, x_477.y));
  let x_480 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_480.x, x_479.x, x_479.y, x_480.w);
  let x_483 : f32 = u_xlat8.x;
  let x_485 : f32 = x_55.x_Lut2D_Params.y;
  let x_488 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_483 * x_485) + x_488);
  let x_496 : vec4<f32> = u_xlat2;
  let x_498 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_496.x, x_496.z));
  let x_499 : vec3<f32> = vec3<f32>(x_498.x, x_498.y, x_498.z);
  let x_500 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_499.x, x_499.y, x_499.z, x_500.w);
  let x_503 : f32 = x_55.x_Lut2D_Params.y;
  u_xlat4.x = x_503;
  u_xlat4.y = 0.0f;
  let x_508 : vec4<f32> = u_xlat2;
  let x_510 : vec4<f32> = u_xlat4;
  u_xlat15 = (vec2<f32>(x_508.x, x_508.z) + vec2<f32>(x_510.x, x_510.y));
  let x_516 : vec2<f32> = u_xlat15;
  let x_517 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_516);
  let x_518 : vec3<f32> = vec3<f32>(x_517.x, x_517.y, x_517.z);
  let x_519 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_518.x, x_518.y, x_518.z, x_519.w);
  let x_522 : f32 = u_xlat1.x;
  let x_524 : f32 = x_55.x_Lut2D_Params.z;
  let x_527 : f32 = u_xlat8.x;
  u_xlat1.x = ((x_522 * x_524) + -(x_527));
  let x_531 : vec4<f32> = u_xlat3;
  let x_534 : vec4<f32> = u_xlat2;
  u_xlat8 = (-(vec3<f32>(x_531.x, x_531.y, x_531.z)) + vec3<f32>(x_534.x, x_534.y, x_534.z));
  let x_537 : vec4<f32> = u_xlat1;
  let x_539 : vec3<f32> = u_xlat8;
  let x_541 : vec4<f32> = u_xlat3;
  let x_543 : vec3<f32> = ((vec3<f32>(x_537.x, x_537.x, x_537.x) * x_539) + vec3<f32>(x_541.x, x_541.y, x_541.z));
  let x_544 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_543.x, x_543.y, x_543.z, x_544.w);
  let x_546 : vec4<f32> = u_xlat1;
  let x_550 : vec3<f32> = (vec3<f32>(x_546.x, x_546.y, x_546.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_551 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_550.x, x_550.y, x_550.z, x_551.w);
  let x_553 : vec4<f32> = u_xlat1;
  let x_557 : vec3<f32> = (vec3<f32>(x_553.x, x_553.y, x_553.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_558 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_557.x, x_557.y, x_557.z, x_558.w);
  let x_560 : vec4<f32> = u_xlat3;
  let x_564 : vec3<f32> = (vec3<f32>(x_560.x, x_560.y, x_560.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_565 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_564.x, x_564.y, x_564.z, x_565.w);
  let x_567 : vec4<f32> = u_xlat3;
  let x_570 : vec3<f32> = max(abs(vec3<f32>(x_567.x, x_567.y, x_567.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_571 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_570.x, x_570.y, x_570.z, x_571.w);
  let x_573 : vec4<f32> = u_xlat3;
  let x_575 : vec3<f32> = log2(vec3<f32>(x_573.x, x_573.y, x_573.z));
  let x_576 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_575.x, x_575.y, x_575.z, x_576.w);
  let x_578 : vec4<f32> = u_xlat3;
  let x_582 : vec3<f32> = (vec3<f32>(x_578.x, x_578.y, x_578.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_583 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_582.x, x_582.y, x_582.z, x_583.w);
  let x_585 : vec4<f32> = u_xlat3;
  let x_587 : vec3<f32> = exp2(vec3<f32>(x_585.x, x_585.y, x_585.z));
  let x_588 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_587.x, x_587.y, x_587.z, x_588.w);
  let x_593 : vec4<f32> = u_xlat1;
  let x_595 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_593.x, x_593.y, x_593.z, x_593.x));
  u_xlatb1 = vec3<bool>(x_595.x, x_595.y, x_595.z);
  let x_598 : bool = u_xlatb1.x;
  if (x_598) {
    let x_603 : f32 = u_xlat2.x;
    x_599 = x_603;
  } else {
    let x_606 : f32 = u_xlat3.x;
    x_599 = x_606;
  }
  let x_607 : f32 = x_599;
  u_xlat0.x = x_607;
  let x_610 : bool = u_xlatb1.y;
  if (x_610) {
    let x_615 : f32 = u_xlat2.y;
    x_611 = x_615;
  } else {
    let x_618 : f32 = u_xlat3.y;
    x_611 = x_618;
  }
  let x_619 : f32 = x_611;
  u_xlat0.y = x_619;
  let x_622 : bool = u_xlatb1.z;
  if (x_622) {
    let x_627 : f32 = u_xlat2.z;
    x_623 = x_627;
  } else {
    let x_630 : f32 = u_xlat3.z;
    x_623 = x_630;
  }
  let x_631 : f32 = x_623;
  u_xlat0.z = x_631;
  let x_635 : f32 = x_55.x_LumaInAlpha;
  u_xlatb1.x = (0.5f < x_635);
  let x_639 : bool = u_xlatb1.x;
  if (x_639) {
    let x_642 : vec4<f32> = u_xlat0;
    let x_643 : vec3<f32> = vec3<f32>(x_642.x, x_642.y, x_642.z);
    let x_644 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_643.x, x_643.y, x_643.z, x_644.w);
    let x_646 : vec4<f32> = u_xlat1;
    let x_650 : vec3<f32> = clamp(vec3<f32>(x_646.x, x_646.y, x_646.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_651 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_650.x, x_650.y, x_650.z, x_651.w);
    let x_653 : vec4<f32> = u_xlat1;
    u_xlat0.w = dot(vec3<f32>(x_653.x, x_653.y, x_653.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_663 : vec4<f32> = u_xlat0;
  SV_Target0 = x_663;
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

