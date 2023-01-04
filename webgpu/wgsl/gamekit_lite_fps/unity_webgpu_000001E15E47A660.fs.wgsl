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
  @size(4)
  padding_2 : u32,
  x_Grain_Params1 : vec2<f32>,
  @size(8)
  padding_3 : u32,
  x_Grain_Params2 : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(3) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_AutoExposureTex : sampler;

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

@group(0) @binding(10) var sampler_MainTex : sampler;

@group(0) @binding(6) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(14) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(4) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_BloomTex : sampler;

@group(0) @binding(5) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(13) var sampler_Bloom_DirtTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(8) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(16) var sampler_GrainTex : sampler;

var<private> u_xlat22 : f32;

@group(0) @binding(7) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(15) var sampler_Lut3D : sampler;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_DitheringTex : sampler;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb16 : bool;

var<private> u_xlati22 : i32;

fn main_1() {
  var u_xlati_loop_1 : i32;
  var x_651 : f32;
  var x_663 : f32;
  var x_675 : f32;
  var x_749 : f32;
  var x_762 : f32;
  var x_774 : f32;
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
  let x_367 : vec2<f32> = vs_TEXCOORD1;
  let x_370 : vec4<f32> = x_51.x_Grain_Params2;
  let x_374 : vec4<f32> = x_51.x_Grain_Params2;
  let x_376 : vec2<f32> = ((x_367 * vec2<f32>(x_370.x, x_370.y)) + vec2<f32>(x_374.z, x_374.w));
  let x_377 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_376.x, x_376.y, x_377.z, x_377.w);
  let x_384 : vec4<f32> = u_xlat1;
  let x_386 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_384.x, x_384.y));
  let x_387 : vec3<f32> = vec3<f32>(x_386.x, x_386.y, x_386.z);
  let x_388 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_387.x, x_387.y, x_387.z, x_388.w);
  let x_390 : vec4<f32> = u_xlat0;
  let x_391 : vec3<f32> = vec3<f32>(x_390.x, x_390.y, x_390.z);
  let x_392 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_391.x, x_391.y, x_391.z, x_392.w);
  let x_394 : vec4<f32> = u_xlat2;
  let x_398 : vec3<f32> = clamp(vec3<f32>(x_394.x, x_394.y, x_394.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_399 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_398.x, x_398.y, x_398.z, x_399.w);
  let x_402 : vec4<f32> = u_xlat2;
  u_xlat22 = dot(vec3<f32>(x_402.x, x_402.y, x_402.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_409 : f32 = u_xlat22;
  u_xlat22 = sqrt(x_409);
  let x_413 : f32 = x_51.x_Grain_Params1.x;
  let x_414 : f32 = u_xlat22;
  u_xlat22 = ((x_413 * -(x_414)) + 1.0f);
  let x_418 : vec4<f32> = u_xlat0;
  let x_420 : vec4<f32> = u_xlat1;
  let x_422 : vec3<f32> = (vec3<f32>(x_418.x, x_418.y, x_418.z) * vec3<f32>(x_420.x, x_420.y, x_420.z));
  let x_423 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_422.x, x_422.y, x_422.z, x_423.w);
  let x_425 : vec4<f32> = u_xlat1;
  let x_428 : f32 = x_51.x_Grain_Params1.y;
  let x_430 : f32 = x_51.x_Grain_Params1.y;
  let x_432 : f32 = x_51.x_Grain_Params1.y;
  let x_434 : vec3<f32> = (vec3<f32>(x_425.x, x_425.y, x_425.z) * vec3<f32>(x_428, x_430, x_432));
  let x_435 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_434.x, x_434.y, x_434.z, x_435.w);
  let x_437 : vec4<f32> = u_xlat1;
  let x_439 : f32 = u_xlat22;
  let x_442 : vec4<f32> = u_xlat0;
  let x_444 : vec3<f32> = ((vec3<f32>(x_437.x, x_437.y, x_437.z) * vec3<f32>(x_439, x_439, x_439)) + vec3<f32>(x_442.x, x_442.y, x_442.z));
  let x_445 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_444.x, x_444.y, x_444.z, x_445.w);
  let x_447 : vec4<f32> = u_xlat0;
  let x_450 : f32 = x_51.x_PostExposure;
  let x_452 : f32 = x_51.x_PostExposure;
  let x_454 : f32 = x_51.x_PostExposure;
  let x_456 : f32 = x_51.x_PostExposure;
  let x_457 : vec4<f32> = vec4<f32>(x_450, x_452, x_454, x_456);
  u_xlat0 = (x_447 * vec4<f32>(x_457.x, x_457.y, x_457.z, x_457.w));
  let x_464 : vec4<f32> = u_xlat0;
  let x_471 : vec3<f32> = ((vec3<f32>(x_464.x, x_464.y, x_464.z) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_472 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_471.x, x_471.y, x_471.z, x_472.w);
  let x_474 : vec4<f32> = u_xlat0;
  let x_476 : vec3<f32> = log2(vec3<f32>(x_474.x, x_474.y, x_474.z));
  let x_477 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_476.x, x_476.y, x_476.z, x_477.w);
  let x_479 : vec4<f32> = u_xlat0;
  let x_486 : vec3<f32> = ((vec3<f32>(x_479.x, x_479.y, x_479.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_487 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_486.x, x_486.y, x_486.z, x_487.w);
  let x_489 : vec4<f32> = u_xlat0;
  let x_493 : vec3<f32> = clamp(vec3<f32>(x_489.x, x_489.y, x_489.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_494 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_493.x, x_493.y, x_493.z, x_494.w);
  let x_496 : vec4<f32> = u_xlat0;
  let x_501 : vec2<f32> = x_51.x_Lut3D_Params;
  let x_503 : vec3<f32> = (vec3<f32>(x_496.x, x_496.y, x_496.z) * vec3<f32>(x_501.y, x_501.y, x_501.y));
  let x_504 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_503.x, x_503.y, x_503.z, x_504.w);
  let x_507 : f32 = x_51.x_Lut3D_Params.x;
  u_xlat1.x = (x_507 * 0.5f);
  let x_510 : vec4<f32> = u_xlat0;
  let x_513 : vec2<f32> = x_51.x_Lut3D_Params;
  let x_516 : vec4<f32> = u_xlat1;
  let x_518 : vec3<f32> = ((vec3<f32>(x_510.x, x_510.y, x_510.z) * vec3<f32>(x_513.x, x_513.x, x_513.x)) + vec3<f32>(x_516.x, x_516.x, x_516.x));
  let x_519 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_518.x, x_518.y, x_518.z, x_519.w);
  let x_529 : vec4<f32> = u_xlat0;
  let x_531 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, vec3<f32>(x_529.x, x_529.y, x_529.z));
  let x_532 : vec3<f32> = vec3<f32>(x_531.x, x_531.y, x_531.z);
  let x_533 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_532.x, x_532.y, x_532.z, x_533.w);
  let x_535 : vec2<f32> = vs_TEXCOORD0;
  let x_537 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_541 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_543 : vec2<f32> = ((x_535 * vec2<f32>(x_537.x, x_537.y)) + vec2<f32>(x_541.z, x_541.w));
  let x_544 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_543.x, x_543.y, x_544.z, x_544.w);
  let x_551 : vec4<f32> = u_xlat1;
  let x_553 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_551.x, x_551.y));
  u_xlat1.x = x_553.w;
  let x_557 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_557 * 2.0f) + -1.0f);
  let x_562 : f32 = u_xlat1.x;
  u_xlat8.x = ((x_562 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_568 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_568, 0.0f, 1.0f);
  let x_572 : f32 = u_xlat8.x;
  u_xlat8.x = ((x_572 * 2.0f) + -1.0f);
  let x_577 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_577)) + 1.0f);
  let x_583 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_583);
  let x_587 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_587) + 1.0f);
  let x_592 : f32 = u_xlat1.x;
  let x_594 : f32 = u_xlat8.x;
  u_xlat1.x = (x_592 * x_594);
  let x_597 : vec4<f32> = u_xlat0;
  u_xlat8 = (vec3<f32>(x_597.x, x_597.y, x_597.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_602 : vec4<f32> = u_xlat0;
  let x_607 : vec3<f32> = max(abs(vec3<f32>(x_602.x, x_602.y, x_602.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_608 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_607.x, x_607.y, x_607.z, x_608.w);
  let x_610 : vec4<f32> = u_xlat2;
  let x_612 : vec3<f32> = log2(vec3<f32>(x_610.x, x_610.y, x_610.z));
  let x_613 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_612.x, x_612.y, x_612.z, x_613.w);
  let x_615 : vec4<f32> = u_xlat2;
  let x_619 : vec3<f32> = (vec3<f32>(x_615.x, x_615.y, x_615.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_620 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_619.x, x_619.y, x_619.z, x_620.w);
  let x_622 : vec4<f32> = u_xlat2;
  let x_624 : vec3<f32> = exp2(vec3<f32>(x_622.x, x_622.y, x_622.z));
  let x_625 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_624.x, x_624.y, x_624.z, x_625.w);
  let x_627 : vec4<f32> = u_xlat2;
  let x_634 : vec3<f32> = ((vec3<f32>(x_627.x, x_627.y, x_627.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_635 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_634.x, x_634.y, x_634.z, x_635.w);
  let x_642 : vec4<f32> = u_xlat0;
  let x_645 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_642.x, x_642.y, x_642.z, x_642.x));
  u_xlatb0 = vec3<bool>(x_645.x, x_645.y, x_645.z);
  let x_649 : bool = u_xlatb0.x;
  if (x_649) {
    let x_655 : f32 = u_xlat8.x;
    x_651 = x_655;
  } else {
    let x_658 : f32 = u_xlat2.x;
    x_651 = x_658;
  }
  let x_659 : f32 = x_651;
  u_xlat0.x = x_659;
  let x_662 : bool = u_xlatb0.y;
  if (x_662) {
    let x_667 : f32 = u_xlat8.y;
    x_663 = x_667;
  } else {
    let x_670 : f32 = u_xlat2.y;
    x_663 = x_670;
  }
  let x_671 : f32 = x_663;
  u_xlat0.y = x_671;
  let x_674 : bool = u_xlatb0.z;
  if (x_674) {
    let x_679 : f32 = u_xlat8.z;
    x_675 = x_679;
  } else {
    let x_682 : f32 = u_xlat2.z;
    x_675 = x_682;
  }
  let x_683 : f32 = x_675;
  u_xlat0.z = x_683;
  let x_685 : vec4<f32> = u_xlat1;
  let x_690 : vec4<f32> = u_xlat0;
  let x_692 : vec3<f32> = ((vec3<f32>(x_685.x, x_685.x, x_685.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_690.x, x_690.y, x_690.z));
  let x_693 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_692.x, x_692.y, x_692.z, x_693.w);
  let x_695 : vec4<f32> = u_xlat0;
  let x_699 : vec3<f32> = (vec3<f32>(x_695.x, x_695.y, x_695.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_700 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_699.x, x_699.y, x_699.z, x_700.w);
  let x_702 : vec4<f32> = u_xlat0;
  let x_706 : vec3<f32> = (vec3<f32>(x_702.x, x_702.y, x_702.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_707 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_706.x, x_706.y, x_706.z, x_707.w);
  let x_709 : vec4<f32> = u_xlat2;
  let x_713 : vec3<f32> = (vec3<f32>(x_709.x, x_709.y, x_709.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_714 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_713.x, x_713.y, x_713.z, x_714.w);
  let x_716 : vec4<f32> = u_xlat2;
  let x_719 : vec3<f32> = max(abs(vec3<f32>(x_716.x, x_716.y, x_716.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_720 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_719.x, x_719.y, x_719.z, x_720.w);
  let x_722 : vec4<f32> = u_xlat2;
  let x_724 : vec3<f32> = log2(vec3<f32>(x_722.x, x_722.y, x_722.z));
  let x_725 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_724.x, x_724.y, x_724.z, x_725.w);
  let x_727 : vec4<f32> = u_xlat2;
  let x_731 : vec3<f32> = (vec3<f32>(x_727.x, x_727.y, x_727.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_732 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_731.x, x_731.y, x_731.z, x_732.w);
  let x_734 : vec4<f32> = u_xlat2;
  let x_736 : vec3<f32> = exp2(vec3<f32>(x_734.x, x_734.y, x_734.z));
  let x_737 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_736.x, x_736.y, x_736.z, x_737.w);
  let x_741 : vec4<f32> = u_xlat0;
  let x_743 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_741.x, x_741.y, x_741.z, x_741.x));
  u_xlatb0 = vec3<bool>(x_743.x, x_743.y, x_743.z);
  let x_748 : bool = u_xlatb0.x;
  if (x_748) {
    let x_753 : f32 = u_xlat1.x;
    x_749 = x_753;
  } else {
    let x_756 : f32 = u_xlat2.x;
    x_749 = x_756;
  }
  let x_757 : f32 = x_749;
  SV_Target0.x = x_757;
  let x_761 : bool = u_xlatb0.y;
  if (x_761) {
    let x_766 : f32 = u_xlat1.y;
    x_762 = x_766;
  } else {
    let x_769 : f32 = u_xlat2.y;
    x_762 = x_769;
  }
  let x_770 : f32 = x_762;
  SV_Target0.y = x_770;
  let x_773 : bool = u_xlatb0.z;
  if (x_773) {
    let x_778 : f32 = u_xlat1.z;
    x_774 = x_778;
  } else {
    let x_781 : f32 = u_xlat2.z;
    x_774 = x_781;
  }
  let x_782 : f32 = x_774;
  SV_Target0.z = x_782;
  let x_785 : f32 = u_xlat0.w;
  SV_Target0.w = x_785;
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

