struct PGlobals {
  x_ScreenParams : vec4<f32>,
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

var<private> u_xlatb1 : bool;

var<private> u_xlat22 : f32;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(7) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(15) var sampler_Vignette_Mask : sampler;

var<private> u_xlat9 : f32;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(8) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(16) var sampler_GrainTex : sampler;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_DitheringTex : sampler;

var<private> u_xlatb0 : vec3<bool>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb16 : bool;

var<private> u_xlati22 : i32;

fn main_1() {
  var u_xlati_loop_1 : i32;
  var x_541 : f32;
  var x_779 : f32;
  var x_791 : f32;
  var x_803 : f32;
  var x_870 : f32;
  var x_882 : f32;
  var x_894 : f32;
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
  let x_95 : i32 = u_xlati21;
  u_xlati21 = min(x_95, 16i);
  let x_98 : i32 = u_xlati21;
  u_xlat1.x = f32(x_98);
  let x_101 : vec2<f32> = u_xlat7;
  let x_103 : vec4<f32> = u_xlat1;
  u_xlat7 = (-(x_101) / vec2<f32>(x_103.x, x_103.x));
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
  let x_128 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_127.x, x_127.y, x_128.z);
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
  let x_370 : f32 = x_51.x_Vignette_Mode;
  u_xlatb1 = (x_370 < 0.5f);
  let x_372 : bool = u_xlatb1;
  if (x_372) {
    let x_375 : vec2<f32> = vs_TEXCOORD0;
    let x_379 : vec2<f32> = x_51.x_Vignette_Center;
    let x_381 : vec2<f32> = (x_375 + -(x_379));
    let x_382 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_381.x, x_381.y, x_382.z, x_382.w);
    let x_384 : vec4<f32> = u_xlat1;
    let x_389 : vec4<f32> = x_51.x_Vignette_Settings;
    let x_391 : vec2<f32> = (abs(vec2<f32>(x_384.y, x_384.x)) * vec2<f32>(x_389.x, x_389.x));
    let x_392 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_392.x, x_391.x, x_391.y, x_392.w);
    let x_396 : f32 = x_51.x_ScreenParams.x;
    let x_398 : f32 = x_51.x_ScreenParams.y;
    u_xlat22 = (x_396 / x_398);
    let x_400 : f32 = u_xlat22;
    u_xlat22 = (x_400 + -1.0f);
    let x_403 : f32 = x_51.x_Vignette_Settings.w;
    let x_404 : f32 = u_xlat22;
    u_xlat22 = ((x_403 * x_404) + 1.0f);
    let x_407 : f32 = u_xlat22;
    let x_409 : f32 = u_xlat1.z;
    u_xlat1.x = (x_407 * x_409);
    let x_412 : vec4<f32> = u_xlat1;
    let x_413 : vec2<f32> = vec2<f32>(x_412.x, x_412.y);
    let x_414 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_413.x, x_413.y, x_414.z, x_414.w);
    let x_416 : vec4<f32> = u_xlat1;
    let x_420 : vec2<f32> = clamp(vec2<f32>(x_416.x, x_416.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_421 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_420.x, x_420.y, x_421.z, x_421.w);
    let x_423 : vec4<f32> = u_xlat1;
    let x_425 : vec2<f32> = log2(vec2<f32>(x_423.x, x_423.y));
    let x_426 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_425.x, x_425.y, x_426.z, x_426.w);
    let x_428 : vec4<f32> = u_xlat1;
    let x_431 : vec4<f32> = x_51.x_Vignette_Settings;
    let x_433 : vec2<f32> = (vec2<f32>(x_428.x, x_428.y) * vec2<f32>(x_431.z, x_431.z));
    let x_434 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_433.x, x_433.y, x_434.z, x_434.w);
    let x_436 : vec4<f32> = u_xlat1;
    let x_438 : vec2<f32> = exp2(vec2<f32>(x_436.x, x_436.y));
    let x_439 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_438.x, x_438.y, x_439.z, x_439.w);
    let x_441 : vec4<f32> = u_xlat1;
    let x_443 : vec4<f32> = u_xlat1;
    u_xlat1.x = dot(vec2<f32>(x_441.x, x_441.y), vec2<f32>(x_443.x, x_443.y));
    let x_448 : f32 = u_xlat1.x;
    u_xlat1.x = (-(x_448) + 1.0f);
    let x_453 : f32 = u_xlat1.x;
    u_xlat1.x = max(x_453, 0.0f);
    let x_457 : f32 = u_xlat1.x;
    u_xlat1.x = log2(x_457);
    let x_461 : f32 = u_xlat1.x;
    let x_463 : f32 = x_51.x_Vignette_Settings.y;
    u_xlat1.x = (x_461 * x_463);
    let x_467 : f32 = u_xlat1.x;
    u_xlat1.x = exp2(x_467);
    let x_472 : vec3<f32> = x_51.x_Vignette_Color;
    u_xlat8 = (-(x_472) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_476 : vec4<f32> = u_xlat1;
    let x_478 : vec3<f32> = u_xlat8;
    let x_481 : vec3<f32> = x_51.x_Vignette_Color;
    u_xlat8 = ((vec3<f32>(x_476.x, x_476.x, x_476.x) * x_478) + x_481);
    let x_483 : vec4<f32> = u_xlat0;
    let x_485 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_483.x, x_483.y, x_483.z) * x_485);
    let x_488 : f32 = u_xlat0.w;
    u_xlat2.x = (x_488 + -1.0f);
    let x_494 : f32 = u_xlat1.x;
    let x_496 : f32 = u_xlat2.x;
    SV_Target0.w = ((x_494 * x_496) + 1.0f);
  } else {
    let x_507 : vec2<f32> = vs_TEXCOORD0;
    let x_508 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_507);
    u_xlat1.x = x_508.w;
    let x_512 : f32 = u_xlat1.x;
    u_xlat2.x = (x_512 * 0.077399381f);
    let x_518 : f32 = u_xlat1.x;
    u_xlat9 = (x_518 + 0.055f);
    let x_521 : f32 = u_xlat9;
    u_xlat9 = (x_521 * 0.947867334f);
    let x_524 : f32 = u_xlat9;
    u_xlat9 = max(abs(x_524), 1.1920929e-07f);
    let x_528 : f32 = u_xlat9;
    u_xlat9 = log2(x_528);
    let x_530 : f32 = u_xlat9;
    u_xlat9 = (x_530 * 2.400000095f);
    let x_533 : f32 = u_xlat9;
    u_xlat9 = exp2(x_533);
    let x_537 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_537);
    let x_539 : bool = u_xlatb1;
    if (x_539) {
      let x_545 : f32 = u_xlat2.x;
      x_541 = x_545;
    } else {
      let x_547 : f32 = u_xlat9;
      x_541 = x_547;
    }
    let x_548 : f32 = x_541;
    u_xlat1.x = x_548;
    let x_551 : vec3<f32> = x_51.x_Vignette_Color;
    let x_553 : vec3<f32> = (-(x_551) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_554 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_553.x, x_553.y, x_553.z, x_554.w);
    let x_556 : vec4<f32> = u_xlat1;
    let x_558 : vec4<f32> = u_xlat2;
    let x_562 : vec3<f32> = x_51.x_Vignette_Color;
    let x_563 : vec3<f32> = ((vec3<f32>(x_556.x, x_556.x, x_556.x) * vec3<f32>(x_558.x, x_558.y, x_558.z)) + x_562);
    let x_564 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_563.x, x_563.y, x_563.z, x_564.w);
    let x_566 : vec4<f32> = u_xlat0;
    let x_568 : vec4<f32> = u_xlat2;
    let x_571 : vec4<f32> = u_xlat0;
    let x_574 : vec3<f32> = ((vec3<f32>(x_566.x, x_566.y, x_566.z) * vec3<f32>(x_568.x, x_568.y, x_568.z)) + -(vec3<f32>(x_571.x, x_571.y, x_571.z)));
    let x_575 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_574.x, x_574.y, x_574.z, x_575.w);
    let x_579 : f32 = x_51.x_Vignette_Opacity;
    let x_581 : vec4<f32> = u_xlat2;
    let x_584 : vec4<f32> = u_xlat0;
    u_xlat8 = ((vec3<f32>(x_579, x_579, x_579) * vec3<f32>(x_581.x, x_581.y, x_581.z)) + vec3<f32>(x_584.x, x_584.y, x_584.z));
    let x_588 : f32 = u_xlat0.w;
    u_xlat0.x = (x_588 + -1.0f);
    let x_592 : f32 = u_xlat1.x;
    let x_594 : f32 = u_xlat0.x;
    SV_Target0.w = ((x_592 * x_594) + 1.0f);
  }
  let x_599 : vec2<f32> = vs_TEXCOORD1;
  let x_602 : vec4<f32> = x_51.x_Grain_Params2;
  let x_606 : vec4<f32> = x_51.x_Grain_Params2;
  let x_608 : vec2<f32> = ((x_599 * vec2<f32>(x_602.x, x_602.y)) + vec2<f32>(x_606.z, x_606.w));
  let x_609 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_608.x, x_608.y, x_609.z, x_609.w);
  let x_616 : vec4<f32> = u_xlat0;
  let x_618 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_616.x, x_616.y));
  let x_619 : vec3<f32> = vec3<f32>(x_618.x, x_618.y, x_618.z);
  let x_620 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_619.x, x_619.y, x_619.z, x_620.w);
  let x_622 : vec3<f32> = u_xlat8;
  let x_623 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_622.x, x_622.y, x_622.z, x_623.w);
  let x_625 : vec4<f32> = u_xlat2;
  let x_629 : vec3<f32> = clamp(vec3<f32>(x_625.x, x_625.y, x_625.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_630 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_629.x, x_629.y, x_629.z, x_630.w);
  let x_632 : vec4<f32> = u_xlat2;
  u_xlat21 = dot(vec3<f32>(x_632.x, x_632.y, x_632.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_639 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_639);
  let x_643 : f32 = x_51.x_Grain_Params1.x;
  let x_644 : f32 = u_xlat21;
  u_xlat21 = ((x_643 * -(x_644)) + 1.0f);
  let x_648 : vec4<f32> = u_xlat0;
  let x_650 : vec3<f32> = u_xlat8;
  let x_651 : vec3<f32> = (vec3<f32>(x_648.x, x_648.y, x_648.z) * x_650);
  let x_652 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_651.x, x_651.y, x_651.z, x_652.w);
  let x_654 : vec4<f32> = u_xlat0;
  let x_657 : f32 = x_51.x_Grain_Params1.y;
  let x_659 : f32 = x_51.x_Grain_Params1.y;
  let x_661 : f32 = x_51.x_Grain_Params1.y;
  let x_663 : vec3<f32> = (vec3<f32>(x_654.x, x_654.y, x_654.z) * vec3<f32>(x_657, x_659, x_661));
  let x_664 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_663.x, x_663.y, x_663.z, x_664.w);
  let x_666 : vec4<f32> = u_xlat0;
  let x_668 : f32 = u_xlat21;
  let x_671 : vec3<f32> = u_xlat8;
  let x_672 : vec3<f32> = ((vec3<f32>(x_666.x, x_666.y, x_666.z) * vec3<f32>(x_668, x_668, x_668)) + x_671);
  let x_673 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_672.x, x_672.y, x_672.z, x_673.w);
  let x_675 : vec2<f32> = vs_TEXCOORD0;
  let x_678 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_682 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_684 : vec2<f32> = ((x_675 * vec2<f32>(x_678.x, x_678.y)) + vec2<f32>(x_682.z, x_682.w));
  let x_685 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_684.x, x_684.y, x_685.z, x_685.w);
  let x_692 : vec4<f32> = u_xlat1;
  let x_694 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_692.x, x_692.y));
  u_xlat21 = x_694.w;
  let x_696 : f32 = u_xlat21;
  u_xlat21 = ((x_696 * 2.0f) + -1.0f);
  let x_699 : f32 = u_xlat21;
  u_xlat1.x = ((x_699 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_705 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_705, 0.0f, 1.0f);
  let x_709 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_709 * 2.0f) + -1.0f);
  let x_713 : f32 = u_xlat21;
  u_xlat21 = (-(abs(x_713)) + 1.0f);
  let x_717 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_717);
  let x_719 : f32 = u_xlat21;
  u_xlat21 = (-(x_719) + 1.0f);
  let x_722 : f32 = u_xlat21;
  let x_724 : f32 = u_xlat1.x;
  u_xlat21 = (x_722 * x_724);
  let x_726 : vec4<f32> = u_xlat0;
  let x_730 : vec3<f32> = (vec3<f32>(x_726.x, x_726.y, x_726.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_731 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_730.x, x_730.y, x_730.z, x_731.w);
  let x_733 : vec4<f32> = u_xlat0;
  let x_737 : vec3<f32> = max(abs(vec3<f32>(x_733.x, x_733.y, x_733.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_738 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_737.x, x_737.y, x_737.z, x_738.w);
  let x_740 : vec4<f32> = u_xlat2;
  let x_742 : vec3<f32> = log2(vec3<f32>(x_740.x, x_740.y, x_740.z));
  let x_743 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_742.x, x_742.y, x_742.z, x_743.w);
  let x_745 : vec4<f32> = u_xlat2;
  let x_749 : vec3<f32> = (vec3<f32>(x_745.x, x_745.y, x_745.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_750 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_749.x, x_749.y, x_749.z, x_750.w);
  let x_752 : vec4<f32> = u_xlat2;
  let x_754 : vec3<f32> = exp2(vec3<f32>(x_752.x, x_752.y, x_752.z));
  let x_755 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_754.x, x_754.y, x_754.z, x_755.w);
  let x_757 : vec4<f32> = u_xlat2;
  let x_764 : vec3<f32> = ((vec3<f32>(x_757.x, x_757.y, x_757.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_765 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_764.x, x_764.y, x_764.z, x_765.w);
  let x_772 : vec4<f32> = u_xlat0;
  let x_775 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_772.x, x_772.y, x_772.z, x_772.x));
  u_xlatb0 = vec3<bool>(x_775.x, x_775.y, x_775.z);
  let x_778 : bool = u_xlatb0.x;
  if (x_778) {
    let x_783 : f32 = u_xlat1.x;
    x_779 = x_783;
  } else {
    let x_786 : f32 = u_xlat2.x;
    x_779 = x_786;
  }
  let x_787 : f32 = x_779;
  u_xlat0.x = x_787;
  let x_790 : bool = u_xlatb0.y;
  if (x_790) {
    let x_795 : f32 = u_xlat1.y;
    x_791 = x_795;
  } else {
    let x_798 : f32 = u_xlat2.y;
    x_791 = x_798;
  }
  let x_799 : f32 = x_791;
  u_xlat0.y = x_799;
  let x_802 : bool = u_xlatb0.z;
  if (x_802) {
    let x_807 : f32 = u_xlat1.z;
    x_803 = x_807;
  } else {
    let x_810 : f32 = u_xlat2.z;
    x_803 = x_810;
  }
  let x_811 : f32 = x_803;
  u_xlat0.z = x_811;
  let x_813 : f32 = u_xlat21;
  let x_818 : vec4<f32> = u_xlat0;
  let x_820 : vec3<f32> = ((vec3<f32>(x_813, x_813, x_813) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_818.x, x_818.y, x_818.z));
  let x_821 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_820.x, x_820.y, x_820.z, x_821.w);
  let x_823 : vec4<f32> = u_xlat0;
  let x_826 : vec3<f32> = (vec3<f32>(x_823.x, x_823.y, x_823.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_827 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_826.x, x_826.y, x_826.z, x_827.w);
  let x_829 : vec4<f32> = u_xlat0;
  let x_832 : vec3<f32> = (vec3<f32>(x_829.x, x_829.y, x_829.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_833 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_832.x, x_832.y, x_832.z, x_833.w);
  let x_835 : vec4<f32> = u_xlat2;
  let x_838 : vec3<f32> = (vec3<f32>(x_835.x, x_835.y, x_835.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_839 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_838.x, x_838.y, x_838.z, x_839.w);
  let x_841 : vec4<f32> = u_xlat2;
  let x_844 : vec3<f32> = max(abs(vec3<f32>(x_841.x, x_841.y, x_841.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_845 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_844.x, x_844.y, x_844.z, x_845.w);
  let x_847 : vec4<f32> = u_xlat2;
  let x_849 : vec3<f32> = log2(vec3<f32>(x_847.x, x_847.y, x_847.z));
  let x_850 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_849.x, x_849.y, x_849.z, x_850.w);
  let x_852 : vec4<f32> = u_xlat2;
  let x_855 : vec3<f32> = (vec3<f32>(x_852.x, x_852.y, x_852.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_856 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_855.x, x_855.y, x_855.z, x_856.w);
  let x_858 : vec4<f32> = u_xlat2;
  let x_860 : vec3<f32> = exp2(vec3<f32>(x_858.x, x_858.y, x_858.z));
  let x_861 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_860.x, x_860.y, x_860.z, x_861.w);
  let x_864 : vec4<f32> = u_xlat0;
  let x_866 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_864.x, x_864.y, x_864.z, x_864.x));
  u_xlatb0 = vec3<bool>(x_866.x, x_866.y, x_866.z);
  let x_869 : bool = u_xlatb0.x;
  if (x_869) {
    let x_874 : f32 = u_xlat1.x;
    x_870 = x_874;
  } else {
    let x_877 : f32 = u_xlat2.x;
    x_870 = x_877;
  }
  let x_878 : f32 = x_870;
  SV_Target0.x = x_878;
  let x_881 : bool = u_xlatb0.y;
  if (x_881) {
    let x_886 : f32 = u_xlat1.y;
    x_882 = x_886;
  } else {
    let x_889 : f32 = u_xlat2.y;
    x_882 = x_889;
  }
  let x_890 : f32 = x_882;
  SV_Target0.y = x_890;
  let x_893 : bool = u_xlatb0.z;
  if (x_893) {
    let x_898 : f32 = u_xlat1.z;
    x_894 = x_898;
  } else {
    let x_901 : f32 = u_xlat2.z;
    x_894 = x_901;
  }
  let x_902 : f32 = x_894;
  SV_Target0.z = x_902;
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

