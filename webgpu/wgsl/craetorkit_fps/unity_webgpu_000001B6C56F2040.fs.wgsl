struct PGlobals {
  x_ScreenParams : vec4<f32>,
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

@group(0) @binding(5) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(11) var sampler_Vignette_Mask : sampler;

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
  var u_xlat8 : vec3<f32>;
  var u_xlati_loop_1 : i32;
  var u_xlat16 : vec2<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlatb1 : bool;
  var u_xlat22 : f32;
  var u_xlat15 : f32;
  var x_540 : f32;
  var u_xlatb0 : bool;
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
  let x_128 : vec2<f32> = vs_TEXCOORD0;
  let x_129 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_128.x, x_128.y, x_129.z);
  u_xlati_loop_1 = 0i;
  loop {
    let x_138 : i32 = u_xlati_loop_1;
    let x_139 : i32 = u_xlati21;
    if ((x_138 < x_139)) {
    } else {
      break;
    }
    let x_143 : i32 = u_xlati_loop_1;
    u_xlat16.x = f32(x_143);
    let x_147 : f32 = u_xlat16.x;
    u_xlat16.x = (x_147 + 0.5f);
    let x_151 : f32 = u_xlat16.x;
    let x_153 : f32 = u_xlat1.x;
    u_xlat2.x = (x_151 / x_153);
    let x_156 : vec3<f32> = u_xlat8;
    u_xlat16 = vec2<f32>(x_156.x, x_156.y);
    let x_158 : vec2<f32> = u_xlat16;
    u_xlat16 = clamp(x_158, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_162 : vec2<f32> = u_xlat16;
    let x_165 : f32 = x_51.x_RenderViewportScaleFactor;
    u_xlat16 = (x_162 * vec2<f32>(x_165, x_165));
    let x_174 : vec2<f32> = u_xlat16;
    let x_175 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_174, 0.0f);
    u_xlat6 = x_175;
    let x_181 : vec4<f32> = u_xlat2;
    let x_183 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(x_181.x, x_181.y), 0.0f);
    let x_184 : vec3<f32> = vec3<f32>(x_183.x, x_183.y, x_183.z);
    let x_185 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_184.x, x_184.y, x_184.z, x_185.w);
    let x_187 : vec4<f32> = u_xlat6;
    let x_188 : vec4<f32> = u_xlat3;
    let x_190 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_187 * x_188) + x_190);
    let x_192 : vec4<f32> = u_xlat3;
    let x_193 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_192 + x_193);
    let x_195 : vec2<f32> = u_xlat7;
    let x_196 : vec3<f32> = u_xlat8;
    let x_198 : vec2<f32> = (x_195 + vec2<f32>(x_196.x, x_196.y));
    let x_199 : vec3<f32> = u_xlat8;
    u_xlat8 = vec3<f32>(x_198.x, x_198.y, x_199.z);

    continuing {
      let x_201 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_201 + 1i);
    }
  }
  let x_203 : vec4<f32> = u_xlat4;
  let x_204 : vec4<f32> = u_xlat5;
  u_xlat1 = (x_203 / x_204);
  let x_206 : vec4<f32> = u_xlat0;
  let x_208 : vec4<f32> = u_xlat1;
  let x_210 : vec3<f32> = (vec3<f32>(x_206.x, x_206.x, x_206.x) * vec3<f32>(x_208.x, x_208.y, x_208.z));
  let x_211 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_210.x, x_210.y, x_210.z, x_211.w);
  let x_214 : vec4<f32> = x_51.x_BloomTex_TexelSize;
  u_xlat0 = (vec4<f32>(x_214.x, x_214.y, x_214.x, x_214.y) * vec4<f32>(-1.0f, -1.0f, 1.0f, 1.0f));
  let x_220 : f32 = x_51.x_Bloom_Settings.x;
  u_xlat2.x = (x_220 * 0.5f);
  let x_223 : vec4<f32> = u_xlat0;
  let x_225 : vec4<f32> = u_xlat2;
  let x_228 : vec2<f32> = vs_TEXCOORD0;
  u_xlat3 = ((vec4<f32>(x_223.x, x_223.y, x_223.z, x_223.y) * vec4<f32>(x_225.x, x_225.x, x_225.x, x_225.x)) + vec4<f32>(x_228.x, x_228.y, x_228.x, x_228.y));
  let x_231 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_231, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_235 : vec4<f32> = u_xlat3;
  let x_237 : f32 = x_51.x_RenderViewportScaleFactor;
  u_xlat3 = (x_235 * vec4<f32>(x_237, x_237, x_237, x_237));
  let x_245 : vec4<f32> = u_xlat3;
  let x_247 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_245.x, x_245.y));
  u_xlat4 = x_247;
  let x_251 : vec4<f32> = u_xlat3;
  let x_253 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_251.z, x_251.w));
  u_xlat3 = x_253;
  let x_254 : vec4<f32> = u_xlat3;
  let x_255 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_254 + x_255);
  let x_257 : vec4<f32> = u_xlat0;
  let x_259 : vec4<f32> = u_xlat2;
  let x_262 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = ((vec4<f32>(x_257.x, x_257.w, x_257.z, x_257.w) * vec4<f32>(x_259.x, x_259.x, x_259.x, x_259.x)) + vec4<f32>(x_262.x, x_262.y, x_262.x, x_262.y));
  let x_265 : vec4<f32> = u_xlat0;
  u_xlat0 = clamp(x_265, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_269 : vec4<f32> = u_xlat0;
  let x_271 : f32 = x_51.x_RenderViewportScaleFactor;
  u_xlat0 = (x_269 * vec4<f32>(x_271, x_271, x_271, x_271));
  let x_277 : vec4<f32> = u_xlat0;
  let x_279 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_277.x, x_277.y));
  u_xlat2 = x_279;
  let x_280 : vec4<f32> = u_xlat2;
  let x_281 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_280 + x_281);
  let x_286 : vec4<f32> = u_xlat0;
  let x_288 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_286.z, x_286.w));
  u_xlat0 = x_288;
  let x_289 : vec4<f32> = u_xlat0;
  let x_290 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_289 + x_290);
  let x_292 : vec4<f32> = u_xlat0;
  let x_295 : vec3<f32> = x_51.x_Bloom_Settings;
  u_xlat0 = (x_292 * vec4<f32>(x_295.y, x_295.y, x_295.y, x_295.y));
  let x_298 : vec2<f32> = vs_TEXCOORD0;
  let x_301 : vec4<f32> = x_51.x_Bloom_DirtTileOffset;
  let x_305 : vec4<f32> = x_51.x_Bloom_DirtTileOffset;
  let x_307 : vec2<f32> = ((x_298 * vec2<f32>(x_301.x, x_301.y)) + vec2<f32>(x_305.z, x_305.w));
  let x_308 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_307.x, x_307.y, x_308.z, x_308.w);
  let x_315 : vec4<f32> = u_xlat2;
  let x_317 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_315.x, x_315.y));
  let x_318 : vec3<f32> = vec3<f32>(x_317.x, x_317.y, x_317.z);
  let x_319 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
  let x_321 : vec4<f32> = u_xlat0;
  let x_325 : vec3<f32> = (vec3<f32>(x_321.x, x_321.y, x_321.z) * vec3<f32>(0.25f, 0.25f, 0.25f));
  let x_326 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_325.x, x_325.y, x_325.z, x_326.w);
  let x_328 : vec4<f32> = u_xlat2;
  let x_331 : vec3<f32> = x_51.x_Bloom_Settings;
  let x_333 : vec3<f32> = (vec3<f32>(x_328.x, x_328.y, x_328.z) * vec3<f32>(x_331.z, x_331.z, x_331.z));
  let x_334 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
  let x_336 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_336 * vec4<f32>(0.25f, 0.25f, 0.25f, 1.0f));
  let x_339 : vec4<f32> = u_xlat0;
  let x_343 : vec3<f32> = x_51.x_Bloom_Color;
  let x_344 : vec3<f32> = (vec3<f32>(x_339.x, x_339.y, x_339.z) * x_343);
  let x_345 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_344.x, x_344.y, x_344.z, x_345.w);
  let x_348 : f32 = u_xlat0.w;
  u_xlat4.w = (x_348 * 0.25f);
  let x_351 : vec4<f32> = u_xlat1;
  let x_352 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_351 + x_352);
  let x_354 : vec4<f32> = u_xlat3;
  let x_356 : vec4<f32> = u_xlat2;
  let x_358 : vec3<f32> = (vec3<f32>(x_354.x, x_354.y, x_354.z) * vec3<f32>(x_356.x, x_356.y, x_356.z));
  let x_359 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_358.x, x_358.y, x_358.z, x_359.w);
  u_xlat1.w = 0.0f;
  let x_362 : vec4<f32> = u_xlat0;
  let x_363 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_362 + x_363);
  let x_369 : f32 = x_51.x_Vignette_Mode;
  u_xlatb1 = (x_369 < 0.5f);
  let x_371 : bool = u_xlatb1;
  if (x_371) {
    let x_374 : vec2<f32> = vs_TEXCOORD0;
    let x_378 : vec2<f32> = x_51.x_Vignette_Center;
    let x_380 : vec2<f32> = (x_374 + -(x_378));
    let x_381 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_380.x, x_380.y, x_381.z, x_381.w);
    let x_383 : vec4<f32> = u_xlat1;
    let x_388 : vec4<f32> = x_51.x_Vignette_Settings;
    let x_390 : vec2<f32> = (abs(vec2<f32>(x_383.y, x_383.x)) * vec2<f32>(x_388.x, x_388.x));
    let x_391 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_391.x, x_390.x, x_390.y, x_391.w);
    let x_395 : f32 = x_51.x_ScreenParams.x;
    let x_397 : f32 = x_51.x_ScreenParams.y;
    u_xlat22 = (x_395 / x_397);
    let x_399 : f32 = u_xlat22;
    u_xlat22 = (x_399 + -1.0f);
    let x_402 : f32 = x_51.x_Vignette_Settings.w;
    let x_403 : f32 = u_xlat22;
    u_xlat22 = ((x_402 * x_403) + 1.0f);
    let x_406 : f32 = u_xlat22;
    let x_408 : f32 = u_xlat1.z;
    u_xlat1.x = (x_406 * x_408);
    let x_411 : vec4<f32> = u_xlat1;
    let x_412 : vec2<f32> = vec2<f32>(x_411.x, x_411.y);
    let x_413 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_412.x, x_412.y, x_413.z, x_413.w);
    let x_415 : vec4<f32> = u_xlat1;
    let x_419 : vec2<f32> = clamp(vec2<f32>(x_415.x, x_415.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_420 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_419.x, x_419.y, x_420.z, x_420.w);
    let x_422 : vec4<f32> = u_xlat1;
    let x_424 : vec2<f32> = log2(vec2<f32>(x_422.x, x_422.y));
    let x_425 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_424.x, x_424.y, x_425.z, x_425.w);
    let x_427 : vec4<f32> = u_xlat1;
    let x_430 : vec4<f32> = x_51.x_Vignette_Settings;
    let x_432 : vec2<f32> = (vec2<f32>(x_427.x, x_427.y) * vec2<f32>(x_430.z, x_430.z));
    let x_433 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_432.x, x_432.y, x_433.z, x_433.w);
    let x_435 : vec4<f32> = u_xlat1;
    let x_437 : vec2<f32> = exp2(vec2<f32>(x_435.x, x_435.y));
    let x_438 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_437.x, x_437.y, x_438.z, x_438.w);
    let x_440 : vec4<f32> = u_xlat1;
    let x_442 : vec4<f32> = u_xlat1;
    u_xlat1.x = dot(vec2<f32>(x_440.x, x_440.y), vec2<f32>(x_442.x, x_442.y));
    let x_447 : f32 = u_xlat1.x;
    u_xlat1.x = (-(x_447) + 1.0f);
    let x_452 : f32 = u_xlat1.x;
    u_xlat1.x = max(x_452, 0.0f);
    let x_456 : f32 = u_xlat1.x;
    u_xlat1.x = log2(x_456);
    let x_460 : f32 = u_xlat1.x;
    let x_462 : f32 = x_51.x_Vignette_Settings.y;
    u_xlat1.x = (x_460 * x_462);
    let x_466 : f32 = u_xlat1.x;
    u_xlat1.x = exp2(x_466);
    let x_471 : vec3<f32> = x_51.x_Vignette_Color;
    u_xlat8 = (-(x_471) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_475 : vec4<f32> = u_xlat1;
    let x_477 : vec3<f32> = u_xlat8;
    let x_480 : vec3<f32> = x_51.x_Vignette_Color;
    u_xlat8 = ((vec3<f32>(x_475.x, x_475.x, x_475.x) * x_477) + x_480);
    let x_482 : vec4<f32> = u_xlat0;
    let x_484 : vec3<f32> = u_xlat8;
    let x_485 : vec3<f32> = (vec3<f32>(x_482.x, x_482.y, x_482.z) * x_484);
    let x_486 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_485.x, x_485.y, x_485.z, x_486.w);
    let x_489 : f32 = u_xlat0.w;
    u_xlat8.x = (x_489 + -1.0f);
    let x_493 : f32 = u_xlat1.x;
    let x_495 : f32 = u_xlat8.x;
    u_xlat2.w = ((x_493 * x_495) + 1.0f);
  } else {
    let x_505 : vec2<f32> = vs_TEXCOORD0;
    let x_506 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_505);
    u_xlat1.x = x_506.w;
    let x_510 : f32 = u_xlat1.x;
    u_xlat1.z = (x_510 + 0.055f);
    let x_514 : vec4<f32> = u_xlat1;
    let x_519 : vec2<f32> = (vec2<f32>(x_514.x, x_514.z) * vec2<f32>(0.077399381f, 0.947867334f));
    let x_520 : vec3<f32> = u_xlat8;
    u_xlat8 = vec3<f32>(x_519.x, x_519.y, x_520.z);
    let x_524 : f32 = u_xlat8.y;
    u_xlat15 = max(abs(x_524), 1.1920929e-07f);
    let x_528 : f32 = u_xlat15;
    u_xlat15 = log2(x_528);
    let x_530 : f32 = u_xlat15;
    u_xlat15 = (x_530 * 2.400000095f);
    let x_533 : f32 = u_xlat15;
    u_xlat15 = exp2(x_533);
    let x_537 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_537);
    let x_539 : bool = u_xlatb1;
    if (x_539) {
      let x_544 : f32 = u_xlat8.x;
      x_540 = x_544;
    } else {
      let x_546 : f32 = u_xlat15;
      x_540 = x_546;
    }
    let x_547 : f32 = x_540;
    u_xlat1.x = x_547;
    let x_550 : vec3<f32> = x_51.x_Vignette_Color;
    u_xlat8 = (-(x_550) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_553 : vec4<f32> = u_xlat1;
    let x_555 : vec3<f32> = u_xlat8;
    let x_558 : vec3<f32> = x_51.x_Vignette_Color;
    u_xlat8 = ((vec3<f32>(x_553.x, x_553.x, x_553.x) * x_555) + x_558);
    let x_560 : vec4<f32> = u_xlat0;
    let x_562 : vec3<f32> = u_xlat8;
    let x_564 : vec4<f32> = u_xlat0;
    u_xlat8 = ((vec3<f32>(x_560.x, x_560.y, x_560.z) * x_562) + -(vec3<f32>(x_564.x, x_564.y, x_564.z)));
    let x_570 : f32 = x_51.x_Vignette_Opacity;
    let x_572 : vec3<f32> = u_xlat8;
    let x_574 : vec4<f32> = u_xlat0;
    let x_576 : vec3<f32> = ((vec3<f32>(x_570, x_570, x_570) * x_572) + vec3<f32>(x_574.x, x_574.y, x_574.z));
    let x_577 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_576.x, x_576.y, x_576.z, x_577.w);
    let x_580 : f32 = u_xlat0.w;
    u_xlat0.x = (x_580 + -1.0f);
    let x_584 : f32 = u_xlat1.x;
    let x_586 : f32 = u_xlat0.x;
    u_xlat2.w = ((x_584 * x_586) + 1.0f);
  }
  let x_593 : f32 = x_51.x_LumaInAlpha;
  u_xlatb0 = (0.5f < x_593);
  let x_595 : bool = u_xlatb0;
  if (x_595) {
    let x_598 : vec4<f32> = u_xlat2;
    let x_599 : vec3<f32> = vec3<f32>(x_598.x, x_598.y, x_598.z);
    let x_600 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_599.x, x_599.y, x_599.z, x_600.w);
    let x_602 : vec4<f32> = u_xlat0;
    let x_606 : vec3<f32> = clamp(vec3<f32>(x_602.x, x_602.y, x_602.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_607 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_606.x, x_606.y, x_606.z, x_607.w);
    let x_609 : vec4<f32> = u_xlat0;
    u_xlat2.w = dot(vec3<f32>(x_609.x, x_609.y, x_609.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_619 : vec4<f32> = u_xlat2;
  SV_Target0 = x_619;
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

