struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_MainTex_TexelSize : vec4<f32>,
  x_BloomTex_TexelSize : vec4<f32>,
  x_Bloom_DirtTileOffset : vec4<f32>,
  x_Bloom_Settings : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_Bloom_Color : vec3<f32>,
  x_ChromaticAberration_Amount : f32,
  x_Grain_Params1 : vec2<f32>,
  @size(8)
  padding_2 : u32,
  x_Grain_Params2 : vec4<f32>,
  x_LumaInAlpha : f32,
}

@group(0) @binding(1) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_51 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

@group(0) @binding(4) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(10) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(2) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_BloomTex : sampler;

@group(0) @binding(3) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_Bloom_DirtTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(5) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_GrainTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat7 : vec2<f32>;
  var u_xlat21 : f32;
  var u_xlat1 : vec4<f32>;
  var u_xlati21 : i32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat8 : vec2<f32>;
  var u_xlati_loop_1 : i32;
  var u_xlat16 : vec2<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat22 : f32;
  var u_xlatb1 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_24 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_23);
  u_xlat0.x = x_24.x;
  let x_32 : vec2<f32> = vs_TEXCOORD0;
  u_xlat7 = ((x_32 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_40 : vec2<f32> = u_xlat7;
  let x_41 : vec2<f32> = u_xlat7;
  u_xlat21 = dot(x_40, x_41);
  let x_43 : f32 = u_xlat21;
  let x_45 : vec2<f32> = u_xlat7;
  u_xlat7 = (vec2<f32>(x_43, x_43) * x_45);
  let x_47 : vec2<f32> = u_xlat7;
  let x_56 : f32 = x_51.x_ChromaticAberration_Amount;
  let x_58 : f32 = x_51.x_ChromaticAberration_Amount;
  let x_59 : vec2<f32> = vec2<f32>(x_56, x_58);
  u_xlat7 = (x_47 * vec2<f32>(x_59.x, x_59.y));
  let x_65 : vec2<f32> = u_xlat7;
  let x_70 : vec4<f32> = x_51.x_MainTex_TexelSize;
  let x_72 : vec2<f32> = (-(x_65) * vec2<f32>(x_70.z, x_70.w));
  let x_73 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_72.x, x_72.y, x_73.z, x_73.w);
  let x_75 : vec4<f32> = u_xlat1;
  let x_79 : vec2<f32> = (vec2<f32>(x_75.x, x_75.y) * vec2<f32>(0.5f, 0.5f));
  let x_80 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_79.x, x_79.y, x_80.z, x_80.w);
  let x_82 : vec4<f32> = u_xlat1;
  let x_84 : vec4<f32> = u_xlat1;
  u_xlat21 = dot(vec2<f32>(x_82.x, x_82.y), vec2<f32>(x_84.x, x_84.y));
  let x_87 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_87);
  let x_91 : f32 = u_xlat21;
  u_xlati21 = i32(x_91);
  let x_93 : i32 = u_xlati21;
  u_xlati21 = max(x_93, 3i);
  let x_96 : i32 = u_xlati21;
  u_xlati21 = min(x_96, 16i);
  let x_99 : i32 = u_xlati21;
  u_xlat1.x = f32(x_99);
  let x_102 : vec2<f32> = u_xlat7;
  let x_104 : vec4<f32> = u_xlat1;
  u_xlat7 = (-(x_102) / vec2<f32>(x_104.x, x_104.x));
  u_xlat2.y = 0.0f;
  u_xlat3.w = 1.0f;
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlat4.w = 0.0f;
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlat5.w = 0.0f;
  let x_127 : vec2<f32> = vs_TEXCOORD0;
  u_xlat8 = x_127;
  u_xlati_loop_1 = 0i;
  loop {
    let x_135 : i32 = u_xlati_loop_1;
    let x_136 : i32 = u_xlati21;
    if ((x_135 < x_136)) {
    } else {
      break;
    }
    let x_140 : i32 = u_xlati_loop_1;
    u_xlat16.x = f32(x_140);
    let x_144 : f32 = u_xlat16.x;
    u_xlat16.x = (x_144 + 0.5f);
    let x_148 : f32 = u_xlat16.x;
    let x_150 : f32 = u_xlat1.x;
    u_xlat2.x = (x_148 / x_150);
    let x_153 : vec2<f32> = u_xlat8;
    u_xlat16 = x_153;
    let x_154 : vec2<f32> = u_xlat16;
    u_xlat16 = clamp(x_154, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_158 : vec2<f32> = u_xlat16;
    let x_160 : f32 = x_51.x_RenderViewportScaleFactor;
    u_xlat16 = (x_158 * vec2<f32>(x_160, x_160));
    let x_169 : vec2<f32> = u_xlat16;
    let x_170 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_169, 0.0f);
    u_xlat6 = x_170;
    let x_176 : vec4<f32> = u_xlat2;
    let x_178 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(x_176.x, x_176.y), 0.0f);
    let x_179 : vec3<f32> = vec3<f32>(x_178.x, x_178.y, x_178.z);
    let x_180 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_179.x, x_179.y, x_179.z, x_180.w);
    let x_182 : vec4<f32> = u_xlat6;
    let x_183 : vec4<f32> = u_xlat3;
    let x_185 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_182 * x_183) + x_185);
    let x_187 : vec4<f32> = u_xlat3;
    let x_188 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_187 + x_188);
    let x_190 : vec2<f32> = u_xlat7;
    let x_191 : vec2<f32> = u_xlat8;
    u_xlat8 = (x_190 + x_191);

    continuing {
      let x_193 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_193 + 1i);
    }
  }
  let x_195 : vec4<f32> = u_xlat4;
  let x_196 : vec4<f32> = u_xlat5;
  u_xlat1 = (x_195 / x_196);
  let x_198 : vec4<f32> = u_xlat0;
  let x_200 : vec4<f32> = u_xlat1;
  let x_202 : vec3<f32> = (vec3<f32>(x_198.x, x_198.x, x_198.x) * vec3<f32>(x_200.x, x_200.y, x_200.z));
  let x_203 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_202.x, x_202.y, x_202.z, x_203.w);
  let x_207 : vec4<f32> = x_51.x_BloomTex_TexelSize;
  u_xlat0 = (vec4<f32>(x_207.x, x_207.y, x_207.x, x_207.y) * vec4<f32>(-1.0f, -1.0f, 1.0f, 1.0f));
  let x_213 : f32 = x_51.x_Bloom_Settings.x;
  u_xlat2.x = (x_213 * 0.5f);
  let x_216 : vec4<f32> = u_xlat0;
  let x_218 : vec4<f32> = u_xlat2;
  let x_221 : vec2<f32> = vs_TEXCOORD0;
  u_xlat3 = ((vec4<f32>(x_216.x, x_216.y, x_216.z, x_216.y) * vec4<f32>(x_218.x, x_218.x, x_218.x, x_218.x)) + vec4<f32>(x_221.x, x_221.y, x_221.x, x_221.y));
  let x_224 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_224, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_228 : vec4<f32> = u_xlat3;
  let x_230 : f32 = x_51.x_RenderViewportScaleFactor;
  u_xlat3 = (x_228 * vec4<f32>(x_230, x_230, x_230, x_230));
  let x_238 : vec4<f32> = u_xlat3;
  let x_240 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_238.x, x_238.y));
  u_xlat4 = x_240;
  let x_244 : vec4<f32> = u_xlat3;
  let x_246 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_244.z, x_244.w));
  u_xlat3 = x_246;
  let x_247 : vec4<f32> = u_xlat3;
  let x_248 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_247 + x_248);
  let x_250 : vec4<f32> = u_xlat0;
  let x_252 : vec4<f32> = u_xlat2;
  let x_255 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = ((vec4<f32>(x_250.x, x_250.w, x_250.z, x_250.w) * vec4<f32>(x_252.x, x_252.x, x_252.x, x_252.x)) + vec4<f32>(x_255.x, x_255.y, x_255.x, x_255.y));
  let x_258 : vec4<f32> = u_xlat0;
  u_xlat0 = clamp(x_258, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_262 : vec4<f32> = u_xlat0;
  let x_264 : f32 = x_51.x_RenderViewportScaleFactor;
  u_xlat0 = (x_262 * vec4<f32>(x_264, x_264, x_264, x_264));
  let x_270 : vec4<f32> = u_xlat0;
  let x_272 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_270.x, x_270.y));
  u_xlat2 = x_272;
  let x_273 : vec4<f32> = u_xlat2;
  let x_274 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_273 + x_274);
  let x_279 : vec4<f32> = u_xlat0;
  let x_281 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_279.z, x_279.w));
  u_xlat0 = x_281;
  let x_282 : vec4<f32> = u_xlat0;
  let x_283 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_282 + x_283);
  let x_285 : vec4<f32> = u_xlat0;
  let x_288 : vec3<f32> = x_51.x_Bloom_Settings;
  u_xlat0 = (x_285 * vec4<f32>(x_288.y, x_288.y, x_288.y, x_288.y));
  let x_291 : vec2<f32> = vs_TEXCOORD0;
  let x_293 : vec4<f32> = x_51.x_Bloom_DirtTileOffset;
  let x_297 : vec4<f32> = x_51.x_Bloom_DirtTileOffset;
  let x_299 : vec2<f32> = ((x_291 * vec2<f32>(x_293.x, x_293.y)) + vec2<f32>(x_297.z, x_297.w));
  let x_300 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_299.x, x_299.y, x_300.z, x_300.w);
  let x_307 : vec4<f32> = u_xlat2;
  let x_309 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_307.x, x_307.y));
  let x_310 : vec3<f32> = vec3<f32>(x_309.x, x_309.y, x_309.z);
  let x_311 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_310.x, x_310.y, x_310.z, x_311.w);
  let x_313 : vec4<f32> = u_xlat0;
  let x_317 : vec3<f32> = (vec3<f32>(x_313.x, x_313.y, x_313.z) * vec3<f32>(0.25f, 0.25f, 0.25f));
  let x_318 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_317.x, x_317.y, x_317.z, x_318.w);
  let x_320 : vec4<f32> = u_xlat2;
  let x_323 : vec3<f32> = x_51.x_Bloom_Settings;
  let x_325 : vec3<f32> = (vec3<f32>(x_320.x, x_320.y, x_320.z) * vec3<f32>(x_323.z, x_323.z, x_323.z));
  let x_326 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_325.x, x_325.y, x_325.z, x_326.w);
  let x_328 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_328 * vec4<f32>(0.25f, 0.25f, 0.25f, 1.0f));
  let x_331 : vec4<f32> = u_xlat0;
  let x_335 : vec3<f32> = x_51.x_Bloom_Color;
  let x_336 : vec3<f32> = (vec3<f32>(x_331.x, x_331.y, x_331.z) * x_335);
  let x_337 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_336.x, x_336.y, x_336.z, x_337.w);
  let x_340 : f32 = u_xlat0.w;
  u_xlat4.w = (x_340 * 0.25f);
  let x_343 : vec4<f32> = u_xlat1;
  let x_344 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_343 + x_344);
  let x_346 : vec4<f32> = u_xlat3;
  let x_348 : vec4<f32> = u_xlat2;
  let x_350 : vec3<f32> = (vec3<f32>(x_346.x, x_346.y, x_346.z) * vec3<f32>(x_348.x, x_348.y, x_348.z));
  let x_351 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_350.x, x_350.y, x_350.z, x_351.w);
  u_xlat1.w = 0.0f;
  let x_354 : vec4<f32> = u_xlat0;
  let x_355 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_354 + x_355);
  let x_358 : vec2<f32> = vs_TEXCOORD1;
  let x_361 : vec4<f32> = x_51.x_Grain_Params2;
  let x_365 : vec4<f32> = x_51.x_Grain_Params2;
  let x_367 : vec2<f32> = ((x_358 * vec2<f32>(x_361.x, x_361.y)) + vec2<f32>(x_365.z, x_365.w));
  let x_368 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_367.x, x_367.y, x_368.z, x_368.w);
  let x_375 : vec4<f32> = u_xlat1;
  let x_377 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_375.x, x_375.y));
  let x_378 : vec3<f32> = vec3<f32>(x_377.x, x_377.y, x_377.z);
  let x_379 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_378.x, x_378.y, x_378.z, x_379.w);
  let x_381 : vec4<f32> = u_xlat0;
  let x_382 : vec3<f32> = vec3<f32>(x_381.x, x_381.y, x_381.z);
  let x_383 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_382.x, x_382.y, x_382.z, x_383.w);
  let x_385 : vec4<f32> = u_xlat2;
  let x_389 : vec3<f32> = clamp(vec3<f32>(x_385.x, x_385.y, x_385.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_390 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_389.x, x_389.y, x_389.z, x_390.w);
  let x_393 : vec4<f32> = u_xlat2;
  u_xlat22 = dot(vec3<f32>(x_393.x, x_393.y, x_393.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_400 : f32 = u_xlat22;
  u_xlat22 = sqrt(x_400);
  let x_404 : f32 = x_51.x_Grain_Params1.x;
  let x_405 : f32 = u_xlat22;
  u_xlat22 = ((x_404 * -(x_405)) + 1.0f);
  let x_409 : vec4<f32> = u_xlat0;
  let x_411 : vec4<f32> = u_xlat1;
  let x_413 : vec3<f32> = (vec3<f32>(x_409.x, x_409.y, x_409.z) * vec3<f32>(x_411.x, x_411.y, x_411.z));
  let x_414 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_413.x, x_413.y, x_413.z, x_414.w);
  let x_416 : vec4<f32> = u_xlat1;
  let x_419 : f32 = x_51.x_Grain_Params1.y;
  let x_421 : f32 = x_51.x_Grain_Params1.y;
  let x_423 : f32 = x_51.x_Grain_Params1.y;
  let x_425 : vec3<f32> = (vec3<f32>(x_416.x, x_416.y, x_416.z) * vec3<f32>(x_419, x_421, x_423));
  let x_426 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_425.x, x_425.y, x_425.z, x_426.w);
  let x_428 : vec4<f32> = u_xlat1;
  let x_430 : f32 = u_xlat22;
  let x_433 : vec4<f32> = u_xlat0;
  let x_435 : vec3<f32> = ((vec3<f32>(x_428.x, x_428.y, x_428.z) * vec3<f32>(x_430, x_430, x_430)) + vec3<f32>(x_433.x, x_433.y, x_433.z));
  let x_436 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_435.x, x_435.y, x_435.z, x_436.w);
  let x_442 : f32 = x_51.x_LumaInAlpha;
  u_xlatb1 = (0.5f < x_442);
  let x_444 : bool = u_xlatb1;
  if (x_444) {
    let x_447 : vec4<f32> = u_xlat0;
    let x_448 : vec3<f32> = vec3<f32>(x_447.x, x_447.y, x_447.z);
    let x_449 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_448.x, x_448.y, x_448.z, x_449.w);
    let x_451 : vec4<f32> = u_xlat1;
    let x_455 : vec3<f32> = clamp(vec3<f32>(x_451.x, x_451.y, x_451.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_456 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_455.x, x_455.y, x_455.z, x_456.w);
    let x_458 : vec4<f32> = u_xlat1;
    u_xlat0.w = dot(vec3<f32>(x_458.x, x_458.y, x_458.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_464 : vec4<f32> = u_xlat0;
  SV_Target0 = x_464;
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

