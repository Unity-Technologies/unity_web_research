struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_Dithering_Coords : vec4<f32>,
  x_MainTex_TexelSize : vec4<f32>,
  x_BloomTex_TexelSize : vec4<f32>,
  x_Bloom_DirtTileOffset : vec4<f32>,
  x_Bloom_Settings : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_Bloom_Color : vec3<f32>,
  x_ChromaticAberration_Amount : f32,
  x_Lut3D_Params : vec2<f32>,
  x_PostExposure : f32,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(3) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat7 : vec2<f32>;

var<private> u_xlat21 : f32;

@group(0) @binding(0) var<uniform> x_51 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlati21 : i32;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlat16 : vec2<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

@group(0) @binding(6) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(13) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(4) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_BloomTex : sampler;

@group(0) @binding(5) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_Bloom_DirtTex : sampler;

@group(0) @binding(7) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(14) var sampler_Lut3D : sampler;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_DitheringTex : sampler;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb16 : bool;

var<private> u_xlati22 : i32;

fn main_1() {
  var u_xlati_loop_1 : i32;
  var x_570 : f32;
  var x_582 : f32;
  var x_594 : f32;
  var x_668 : f32;
  var x_681 : f32;
  var x_693 : f32;
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
    let x_139 : i32 = u_xlati_loop_1;
    let x_140 : i32 = u_xlati21;
    if ((x_139 < x_140)) {
    } else {
      break;
    }
    let x_144 : i32 = u_xlati_loop_1;
    u_xlat16.x = f32(x_144);
    let x_148 : f32 = u_xlat16.x;
    u_xlat16.x = (x_148 + 0.5f);
    let x_152 : f32 = u_xlat16.x;
    let x_154 : f32 = u_xlat1.x;
    u_xlat2.x = (x_152 / x_154);
    let x_157 : vec3<f32> = u_xlat8;
    u_xlat16 = vec2<f32>(x_157.x, x_157.y);
    let x_159 : vec2<f32> = u_xlat16;
    u_xlat16 = clamp(x_159, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_163 : vec2<f32> = u_xlat16;
    let x_165 : f32 = x_51.x_RenderViewportScaleFactor;
    u_xlat16 = (x_163 * vec2<f32>(x_165, x_165));
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
  let x_204 : vec4<f32> = u_xlat4;
  let x_205 : vec4<f32> = u_xlat5;
  u_xlat1 = (x_204 / x_205);
  let x_207 : vec4<f32> = u_xlat0;
  let x_209 : vec4<f32> = u_xlat1;
  let x_211 : vec3<f32> = (vec3<f32>(x_207.x, x_207.x, x_207.x) * vec3<f32>(x_209.x, x_209.y, x_209.z));
  let x_212 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_211.x, x_211.y, x_211.z, x_212.w);
  let x_215 : vec4<f32> = x_51.x_BloomTex_TexelSize;
  u_xlat0 = (vec4<f32>(x_215.x, x_215.y, x_215.x, x_215.y) * vec4<f32>(-1.0f, -1.0f, 1.0f, 1.0f));
  let x_221 : f32 = x_51.x_Bloom_Settings.x;
  u_xlat2.x = (x_221 * 0.5f);
  let x_224 : vec4<f32> = u_xlat0;
  let x_226 : vec4<f32> = u_xlat2;
  let x_229 : vec2<f32> = vs_TEXCOORD0;
  u_xlat3 = ((vec4<f32>(x_224.x, x_224.y, x_224.z, x_224.y) * vec4<f32>(x_226.x, x_226.x, x_226.x, x_226.x)) + vec4<f32>(x_229.x, x_229.y, x_229.x, x_229.y));
  let x_232 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_232, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_236 : vec4<f32> = u_xlat3;
  let x_238 : f32 = x_51.x_RenderViewportScaleFactor;
  u_xlat3 = (x_236 * vec4<f32>(x_238, x_238, x_238, x_238));
  let x_246 : vec4<f32> = u_xlat3;
  let x_248 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_246.x, x_246.y));
  u_xlat4 = x_248;
  let x_252 : vec4<f32> = u_xlat3;
  let x_254 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_252.z, x_252.w));
  u_xlat3 = x_254;
  let x_255 : vec4<f32> = u_xlat3;
  let x_256 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_255 + x_256);
  let x_258 : vec4<f32> = u_xlat0;
  let x_260 : vec4<f32> = u_xlat2;
  let x_263 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = ((vec4<f32>(x_258.x, x_258.w, x_258.z, x_258.w) * vec4<f32>(x_260.x, x_260.x, x_260.x, x_260.x)) + vec4<f32>(x_263.x, x_263.y, x_263.x, x_263.y));
  let x_266 : vec4<f32> = u_xlat0;
  u_xlat0 = clamp(x_266, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_270 : vec4<f32> = u_xlat0;
  let x_272 : f32 = x_51.x_RenderViewportScaleFactor;
  u_xlat0 = (x_270 * vec4<f32>(x_272, x_272, x_272, x_272));
  let x_278 : vec4<f32> = u_xlat0;
  let x_280 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_278.x, x_278.y));
  u_xlat2 = x_280;
  let x_281 : vec4<f32> = u_xlat2;
  let x_282 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_281 + x_282);
  let x_287 : vec4<f32> = u_xlat0;
  let x_289 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_287.z, x_287.w));
  u_xlat0 = x_289;
  let x_290 : vec4<f32> = u_xlat0;
  let x_291 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_290 + x_291);
  let x_293 : vec4<f32> = u_xlat0;
  let x_296 : vec3<f32> = x_51.x_Bloom_Settings;
  u_xlat0 = (x_293 * vec4<f32>(x_296.y, x_296.y, x_296.y, x_296.y));
  let x_299 : vec2<f32> = vs_TEXCOORD0;
  let x_302 : vec4<f32> = x_51.x_Bloom_DirtTileOffset;
  let x_306 : vec4<f32> = x_51.x_Bloom_DirtTileOffset;
  let x_308 : vec2<f32> = ((x_299 * vec2<f32>(x_302.x, x_302.y)) + vec2<f32>(x_306.z, x_306.w));
  let x_309 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_308.x, x_308.y, x_309.z, x_309.w);
  let x_316 : vec4<f32> = u_xlat2;
  let x_318 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_316.x, x_316.y));
  let x_319 : vec3<f32> = vec3<f32>(x_318.x, x_318.y, x_318.z);
  let x_320 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_319.x, x_319.y, x_319.z, x_320.w);
  let x_322 : vec4<f32> = u_xlat0;
  let x_326 : vec3<f32> = (vec3<f32>(x_322.x, x_322.y, x_322.z) * vec3<f32>(0.25f, 0.25f, 0.25f));
  let x_327 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_326.x, x_326.y, x_326.z, x_327.w);
  let x_329 : vec4<f32> = u_xlat2;
  let x_332 : vec3<f32> = x_51.x_Bloom_Settings;
  let x_334 : vec3<f32> = (vec3<f32>(x_329.x, x_329.y, x_329.z) * vec3<f32>(x_332.z, x_332.z, x_332.z));
  let x_335 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_337 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_337 * vec4<f32>(0.25f, 0.25f, 0.25f, 1.0f));
  let x_340 : vec4<f32> = u_xlat0;
  let x_344 : vec3<f32> = x_51.x_Bloom_Color;
  let x_345 : vec3<f32> = (vec3<f32>(x_340.x, x_340.y, x_340.z) * x_344);
  let x_346 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_345.x, x_345.y, x_345.z, x_346.w);
  let x_349 : f32 = u_xlat0.w;
  u_xlat4.w = (x_349 * 0.25f);
  let x_352 : vec4<f32> = u_xlat1;
  let x_353 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_352 + x_353);
  let x_355 : vec4<f32> = u_xlat3;
  let x_357 : vec4<f32> = u_xlat2;
  let x_359 : vec3<f32> = (vec3<f32>(x_355.x, x_355.y, x_355.z) * vec3<f32>(x_357.x, x_357.y, x_357.z));
  let x_360 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_359.x, x_359.y, x_359.z, x_360.w);
  u_xlat1.w = 0.0f;
  let x_363 : vec4<f32> = u_xlat0;
  let x_364 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_363 + x_364);
  let x_366 : vec4<f32> = u_xlat0;
  let x_369 : f32 = x_51.x_PostExposure;
  let x_371 : f32 = x_51.x_PostExposure;
  let x_373 : f32 = x_51.x_PostExposure;
  let x_375 : f32 = x_51.x_PostExposure;
  let x_376 : vec4<f32> = vec4<f32>(x_369, x_371, x_373, x_375);
  u_xlat0 = (x_366 * vec4<f32>(x_376.x, x_376.y, x_376.z, x_376.w));
  let x_383 : vec4<f32> = u_xlat0;
  let x_390 : vec3<f32> = ((vec3<f32>(x_383.x, x_383.y, x_383.z) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_391 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_390.x, x_390.y, x_390.z, x_391.w);
  let x_393 : vec4<f32> = u_xlat0;
  let x_395 : vec3<f32> = log2(vec3<f32>(x_393.x, x_393.y, x_393.z));
  let x_396 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_395.x, x_395.y, x_395.z, x_396.w);
  let x_398 : vec4<f32> = u_xlat0;
  let x_405 : vec3<f32> = ((vec3<f32>(x_398.x, x_398.y, x_398.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_406 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_405.x, x_405.y, x_405.z, x_406.w);
  let x_408 : vec4<f32> = u_xlat0;
  let x_412 : vec3<f32> = clamp(vec3<f32>(x_408.x, x_408.y, x_408.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_413 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_412.x, x_412.y, x_412.z, x_413.w);
  let x_415 : vec4<f32> = u_xlat0;
  let x_420 : vec2<f32> = x_51.x_Lut3D_Params;
  let x_422 : vec3<f32> = (vec3<f32>(x_415.x, x_415.y, x_415.z) * vec3<f32>(x_420.y, x_420.y, x_420.y));
  let x_423 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_422.x, x_422.y, x_422.z, x_423.w);
  let x_426 : f32 = x_51.x_Lut3D_Params.x;
  u_xlat1.x = (x_426 * 0.5f);
  let x_429 : vec4<f32> = u_xlat0;
  let x_432 : vec2<f32> = x_51.x_Lut3D_Params;
  let x_435 : vec4<f32> = u_xlat1;
  let x_437 : vec3<f32> = ((vec3<f32>(x_429.x, x_429.y, x_429.z) * vec3<f32>(x_432.x, x_432.x, x_432.x)) + vec3<f32>(x_435.x, x_435.x, x_435.x));
  let x_438 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_437.x, x_437.y, x_437.z, x_438.w);
  let x_448 : vec4<f32> = u_xlat0;
  let x_450 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, vec3<f32>(x_448.x, x_448.y, x_448.z));
  let x_451 : vec3<f32> = vec3<f32>(x_450.x, x_450.y, x_450.z);
  let x_452 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_451.x, x_451.y, x_451.z, x_452.w);
  let x_454 : vec2<f32> = vs_TEXCOORD0;
  let x_456 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_460 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_462 : vec2<f32> = ((x_454 * vec2<f32>(x_456.x, x_456.y)) + vec2<f32>(x_460.z, x_460.w));
  let x_463 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_462.x, x_462.y, x_463.z, x_463.w);
  let x_470 : vec4<f32> = u_xlat1;
  let x_472 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_470.x, x_470.y));
  u_xlat1.x = x_472.w;
  let x_476 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_476 * 2.0f) + -1.0f);
  let x_481 : f32 = u_xlat1.x;
  u_xlat8.x = ((x_481 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_487 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_487, 0.0f, 1.0f);
  let x_491 : f32 = u_xlat8.x;
  u_xlat8.x = ((x_491 * 2.0f) + -1.0f);
  let x_496 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_496)) + 1.0f);
  let x_502 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_502);
  let x_506 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_506) + 1.0f);
  let x_511 : f32 = u_xlat1.x;
  let x_513 : f32 = u_xlat8.x;
  u_xlat1.x = (x_511 * x_513);
  let x_516 : vec4<f32> = u_xlat0;
  u_xlat8 = (vec3<f32>(x_516.x, x_516.y, x_516.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_521 : vec4<f32> = u_xlat0;
  let x_526 : vec3<f32> = max(abs(vec3<f32>(x_521.x, x_521.y, x_521.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_527 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_526.x, x_526.y, x_526.z, x_527.w);
  let x_529 : vec4<f32> = u_xlat2;
  let x_531 : vec3<f32> = log2(vec3<f32>(x_529.x, x_529.y, x_529.z));
  let x_532 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_531.x, x_531.y, x_531.z, x_532.w);
  let x_534 : vec4<f32> = u_xlat2;
  let x_538 : vec3<f32> = (vec3<f32>(x_534.x, x_534.y, x_534.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_539 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_538.x, x_538.y, x_538.z, x_539.w);
  let x_541 : vec4<f32> = u_xlat2;
  let x_543 : vec3<f32> = exp2(vec3<f32>(x_541.x, x_541.y, x_541.z));
  let x_544 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_543.x, x_543.y, x_543.z, x_544.w);
  let x_546 : vec4<f32> = u_xlat2;
  let x_553 : vec3<f32> = ((vec3<f32>(x_546.x, x_546.y, x_546.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_554 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_553.x, x_553.y, x_553.z, x_554.w);
  let x_561 : vec4<f32> = u_xlat0;
  let x_564 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_561.x, x_561.y, x_561.z, x_561.x));
  u_xlatb0 = vec3<bool>(x_564.x, x_564.y, x_564.z);
  let x_568 : bool = u_xlatb0.x;
  if (x_568) {
    let x_574 : f32 = u_xlat8.x;
    x_570 = x_574;
  } else {
    let x_577 : f32 = u_xlat2.x;
    x_570 = x_577;
  }
  let x_578 : f32 = x_570;
  u_xlat0.x = x_578;
  let x_581 : bool = u_xlatb0.y;
  if (x_581) {
    let x_586 : f32 = u_xlat8.y;
    x_582 = x_586;
  } else {
    let x_589 : f32 = u_xlat2.y;
    x_582 = x_589;
  }
  let x_590 : f32 = x_582;
  u_xlat0.y = x_590;
  let x_593 : bool = u_xlatb0.z;
  if (x_593) {
    let x_598 : f32 = u_xlat8.z;
    x_594 = x_598;
  } else {
    let x_601 : f32 = u_xlat2.z;
    x_594 = x_601;
  }
  let x_602 : f32 = x_594;
  u_xlat0.z = x_602;
  let x_604 : vec4<f32> = u_xlat1;
  let x_609 : vec4<f32> = u_xlat0;
  let x_611 : vec3<f32> = ((vec3<f32>(x_604.x, x_604.x, x_604.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_609.x, x_609.y, x_609.z));
  let x_612 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_611.x, x_611.y, x_611.z, x_612.w);
  let x_614 : vec4<f32> = u_xlat0;
  let x_618 : vec3<f32> = (vec3<f32>(x_614.x, x_614.y, x_614.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_619 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_618.x, x_618.y, x_618.z, x_619.w);
  let x_621 : vec4<f32> = u_xlat0;
  let x_625 : vec3<f32> = (vec3<f32>(x_621.x, x_621.y, x_621.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_626 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_625.x, x_625.y, x_625.z, x_626.w);
  let x_628 : vec4<f32> = u_xlat2;
  let x_632 : vec3<f32> = (vec3<f32>(x_628.x, x_628.y, x_628.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_633 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_632.x, x_632.y, x_632.z, x_633.w);
  let x_635 : vec4<f32> = u_xlat2;
  let x_638 : vec3<f32> = max(abs(vec3<f32>(x_635.x, x_635.y, x_635.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_639 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_638.x, x_638.y, x_638.z, x_639.w);
  let x_641 : vec4<f32> = u_xlat2;
  let x_643 : vec3<f32> = log2(vec3<f32>(x_641.x, x_641.y, x_641.z));
  let x_644 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_643.x, x_643.y, x_643.z, x_644.w);
  let x_646 : vec4<f32> = u_xlat2;
  let x_650 : vec3<f32> = (vec3<f32>(x_646.x, x_646.y, x_646.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_651 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_650.x, x_650.y, x_650.z, x_651.w);
  let x_653 : vec4<f32> = u_xlat2;
  let x_655 : vec3<f32> = exp2(vec3<f32>(x_653.x, x_653.y, x_653.z));
  let x_656 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_655.x, x_655.y, x_655.z, x_656.w);
  let x_660 : vec4<f32> = u_xlat0;
  let x_662 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_660.x, x_660.y, x_660.z, x_660.x));
  u_xlatb0 = vec3<bool>(x_662.x, x_662.y, x_662.z);
  let x_667 : bool = u_xlatb0.x;
  if (x_667) {
    let x_672 : f32 = u_xlat1.x;
    x_668 = x_672;
  } else {
    let x_675 : f32 = u_xlat2.x;
    x_668 = x_675;
  }
  let x_676 : f32 = x_668;
  SV_Target0.x = x_676;
  let x_680 : bool = u_xlatb0.y;
  if (x_680) {
    let x_685 : f32 = u_xlat1.y;
    x_681 = x_685;
  } else {
    let x_688 : f32 = u_xlat2.y;
    x_681 = x_688;
  }
  let x_689 : f32 = x_681;
  SV_Target0.y = x_689;
  let x_692 : bool = u_xlatb0.z;
  if (x_692) {
    let x_697 : f32 = u_xlat1.z;
    x_693 = x_697;
  } else {
    let x_700 : f32 = u_xlat2.z;
    x_693 = x_700;
  }
  let x_701 : f32 = x_693;
  SV_Target0.z = x_701;
  let x_704 : f32 = u_xlat0.w;
  SV_Target0.w = x_704;
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

