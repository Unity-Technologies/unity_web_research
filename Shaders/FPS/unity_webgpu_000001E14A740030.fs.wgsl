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

@group(0) @binding(8) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(16) var sampler_Vignette_Mask : sampler;

var<private> u_xlat15 : f32;

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
  var x_542 : f32;
  var x_793 : f32;
  var x_805 : f32;
  var x_817 : f32;
  var x_886 : f32;
  var x_899 : f32;
  var x_911 : f32;
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
    let x_486 : vec3<f32> = (vec3<f32>(x_483.x, x_483.y, x_483.z) * x_485);
    let x_487 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_486.x, x_486.y, x_486.z, x_487.w);
    let x_490 : f32 = u_xlat0.w;
    u_xlat8.x = (x_490 + -1.0f);
    let x_494 : f32 = u_xlat1.x;
    let x_496 : f32 = u_xlat8.x;
    u_xlat2.w = ((x_494 * x_496) + 1.0f);
  } else {
    let x_506 : vec2<f32> = vs_TEXCOORD0;
    let x_507 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_506);
    u_xlat1.x = x_507.w;
    let x_511 : f32 = u_xlat1.x;
    u_xlat1.z = (x_511 + 0.055f);
    let x_515 : vec4<f32> = u_xlat1;
    let x_520 : vec2<f32> = (vec2<f32>(x_515.x, x_515.z) * vec2<f32>(0.077399381f, 0.947867334f));
    let x_521 : vec3<f32> = u_xlat8;
    u_xlat8 = vec3<f32>(x_520.x, x_520.y, x_521.z);
    let x_525 : f32 = u_xlat8.y;
    u_xlat15 = max(abs(x_525), 1.1920929e-07f);
    let x_529 : f32 = u_xlat15;
    u_xlat15 = log2(x_529);
    let x_531 : f32 = u_xlat15;
    u_xlat15 = (x_531 * 2.400000095f);
    let x_534 : f32 = u_xlat15;
    u_xlat15 = exp2(x_534);
    let x_538 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_538);
    let x_540 : bool = u_xlatb1;
    if (x_540) {
      let x_546 : f32 = u_xlat8.x;
      x_542 = x_546;
    } else {
      let x_548 : f32 = u_xlat15;
      x_542 = x_548;
    }
    let x_549 : f32 = x_542;
    u_xlat1.x = x_549;
    let x_552 : vec3<f32> = x_51.x_Vignette_Color;
    u_xlat8 = (-(x_552) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_555 : vec4<f32> = u_xlat1;
    let x_557 : vec3<f32> = u_xlat8;
    let x_560 : vec3<f32> = x_51.x_Vignette_Color;
    u_xlat8 = ((vec3<f32>(x_555.x, x_555.x, x_555.x) * x_557) + x_560);
    let x_562 : vec4<f32> = u_xlat0;
    let x_564 : vec3<f32> = u_xlat8;
    let x_566 : vec4<f32> = u_xlat0;
    u_xlat8 = ((vec3<f32>(x_562.x, x_562.y, x_562.z) * x_564) + -(vec3<f32>(x_566.x, x_566.y, x_566.z)));
    let x_572 : f32 = x_51.x_Vignette_Opacity;
    let x_574 : vec3<f32> = u_xlat8;
    let x_576 : vec4<f32> = u_xlat0;
    let x_578 : vec3<f32> = ((vec3<f32>(x_572, x_572, x_572) * x_574) + vec3<f32>(x_576.x, x_576.y, x_576.z));
    let x_579 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_578.x, x_578.y, x_578.z, x_579.w);
    let x_582 : f32 = u_xlat0.w;
    u_xlat0.x = (x_582 + -1.0f);
    let x_586 : f32 = u_xlat1.x;
    let x_588 : f32 = u_xlat0.x;
    u_xlat2.w = ((x_586 * x_588) + 1.0f);
  }
  let x_592 : vec4<f32> = u_xlat2;
  let x_595 : f32 = x_51.x_PostExposure;
  let x_597 : f32 = x_51.x_PostExposure;
  let x_599 : f32 = x_51.x_PostExposure;
  let x_601 : f32 = x_51.x_PostExposure;
  let x_602 : vec4<f32> = vec4<f32>(x_595, x_597, x_599, x_601);
  u_xlat0 = (x_592 * vec4<f32>(x_602.x, x_602.y, x_602.z, x_602.w));
  let x_609 : vec4<f32> = u_xlat0;
  let x_616 : vec3<f32> = ((vec3<f32>(x_609.x, x_609.y, x_609.z) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_617 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_616.x, x_616.y, x_616.z, x_617.w);
  let x_619 : vec4<f32> = u_xlat0;
  let x_621 : vec3<f32> = log2(vec3<f32>(x_619.x, x_619.y, x_619.z));
  let x_622 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_621.x, x_621.y, x_621.z, x_622.w);
  let x_624 : vec4<f32> = u_xlat0;
  let x_631 : vec3<f32> = ((vec3<f32>(x_624.x, x_624.y, x_624.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_632 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_631.x, x_631.y, x_631.z, x_632.w);
  let x_634 : vec4<f32> = u_xlat0;
  let x_638 : vec3<f32> = clamp(vec3<f32>(x_634.x, x_634.y, x_634.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_639 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_638.x, x_638.y, x_638.z, x_639.w);
  let x_641 : vec4<f32> = u_xlat0;
  let x_645 : vec2<f32> = x_51.x_Lut3D_Params;
  let x_647 : vec3<f32> = (vec3<f32>(x_641.x, x_641.y, x_641.z) * vec3<f32>(x_645.y, x_645.y, x_645.y));
  let x_648 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_647.x, x_647.y, x_647.z, x_648.w);
  let x_651 : f32 = x_51.x_Lut3D_Params.x;
  u_xlat1.x = (x_651 * 0.5f);
  let x_654 : vec4<f32> = u_xlat0;
  let x_657 : vec2<f32> = x_51.x_Lut3D_Params;
  let x_660 : vec4<f32> = u_xlat1;
  let x_662 : vec3<f32> = ((vec3<f32>(x_654.x, x_654.y, x_654.z) * vec3<f32>(x_657.x, x_657.x, x_657.x)) + vec3<f32>(x_660.x, x_660.x, x_660.x));
  let x_663 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_662.x, x_662.y, x_662.z, x_663.w);
  let x_673 : vec4<f32> = u_xlat0;
  let x_675 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, vec3<f32>(x_673.x, x_673.y, x_673.z));
  let x_676 : vec3<f32> = vec3<f32>(x_675.x, x_675.y, x_675.z);
  let x_677 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_676.x, x_676.y, x_676.z, x_677.w);
  let x_679 : vec2<f32> = vs_TEXCOORD0;
  let x_682 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_686 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_688 : vec2<f32> = ((x_679 * vec2<f32>(x_682.x, x_682.y)) + vec2<f32>(x_686.z, x_686.w));
  let x_689 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_688.x, x_688.y, x_689.z, x_689.w);
  let x_696 : vec4<f32> = u_xlat1;
  let x_698 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_696.x, x_696.y));
  u_xlat1.x = x_698.w;
  let x_702 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_702 * 2.0f) + -1.0f);
  let x_707 : f32 = u_xlat1.x;
  u_xlat8.x = ((x_707 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_713 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_713, 0.0f, 1.0f);
  let x_717 : f32 = u_xlat8.x;
  u_xlat8.x = ((x_717 * 2.0f) + -1.0f);
  let x_722 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_722)) + 1.0f);
  let x_728 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_728);
  let x_732 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_732) + 1.0f);
  let x_737 : f32 = u_xlat1.x;
  let x_739 : f32 = u_xlat8.x;
  u_xlat1.x = (x_737 * x_739);
  let x_742 : vec4<f32> = u_xlat0;
  u_xlat8 = (vec3<f32>(x_742.x, x_742.y, x_742.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_747 : vec4<f32> = u_xlat0;
  let x_751 : vec3<f32> = max(abs(vec3<f32>(x_747.x, x_747.y, x_747.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_752 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_751.x, x_751.y, x_751.z, x_752.w);
  let x_754 : vec4<f32> = u_xlat2;
  let x_756 : vec3<f32> = log2(vec3<f32>(x_754.x, x_754.y, x_754.z));
  let x_757 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_756.x, x_756.y, x_756.z, x_757.w);
  let x_759 : vec4<f32> = u_xlat2;
  let x_763 : vec3<f32> = (vec3<f32>(x_759.x, x_759.y, x_759.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_764 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_763.x, x_763.y, x_763.z, x_764.w);
  let x_766 : vec4<f32> = u_xlat2;
  let x_768 : vec3<f32> = exp2(vec3<f32>(x_766.x, x_766.y, x_766.z));
  let x_769 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_768.x, x_768.y, x_768.z, x_769.w);
  let x_771 : vec4<f32> = u_xlat2;
  let x_778 : vec3<f32> = ((vec3<f32>(x_771.x, x_771.y, x_771.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_779 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_778.x, x_778.y, x_778.z, x_779.w);
  let x_786 : vec4<f32> = u_xlat0;
  let x_789 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_786.x, x_786.y, x_786.z, x_786.x));
  u_xlatb0 = vec3<bool>(x_789.x, x_789.y, x_789.z);
  let x_792 : bool = u_xlatb0.x;
  if (x_792) {
    let x_797 : f32 = u_xlat8.x;
    x_793 = x_797;
  } else {
    let x_800 : f32 = u_xlat2.x;
    x_793 = x_800;
  }
  let x_801 : f32 = x_793;
  u_xlat0.x = x_801;
  let x_804 : bool = u_xlatb0.y;
  if (x_804) {
    let x_809 : f32 = u_xlat8.y;
    x_805 = x_809;
  } else {
    let x_812 : f32 = u_xlat2.y;
    x_805 = x_812;
  }
  let x_813 : f32 = x_805;
  u_xlat0.y = x_813;
  let x_816 : bool = u_xlatb0.z;
  if (x_816) {
    let x_821 : f32 = u_xlat8.z;
    x_817 = x_821;
  } else {
    let x_824 : f32 = u_xlat2.z;
    x_817 = x_824;
  }
  let x_825 : f32 = x_817;
  u_xlat0.z = x_825;
  let x_827 : vec4<f32> = u_xlat1;
  let x_832 : vec4<f32> = u_xlat0;
  let x_834 : vec3<f32> = ((vec3<f32>(x_827.x, x_827.x, x_827.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_832.x, x_832.y, x_832.z));
  let x_835 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_834.x, x_834.y, x_834.z, x_835.w);
  let x_837 : vec4<f32> = u_xlat0;
  let x_840 : vec3<f32> = (vec3<f32>(x_837.x, x_837.y, x_837.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_841 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_840.x, x_840.y, x_840.z, x_841.w);
  let x_843 : vec4<f32> = u_xlat0;
  let x_846 : vec3<f32> = (vec3<f32>(x_843.x, x_843.y, x_843.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_847 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_846.x, x_846.y, x_846.z, x_847.w);
  let x_849 : vec4<f32> = u_xlat2;
  let x_852 : vec3<f32> = (vec3<f32>(x_849.x, x_849.y, x_849.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_853 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_852.x, x_852.y, x_852.z, x_853.w);
  let x_855 : vec4<f32> = u_xlat2;
  let x_858 : vec3<f32> = max(abs(vec3<f32>(x_855.x, x_855.y, x_855.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_859 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_858.x, x_858.y, x_858.z, x_859.w);
  let x_861 : vec4<f32> = u_xlat2;
  let x_863 : vec3<f32> = log2(vec3<f32>(x_861.x, x_861.y, x_861.z));
  let x_864 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_863.x, x_863.y, x_863.z, x_864.w);
  let x_866 : vec4<f32> = u_xlat2;
  let x_869 : vec3<f32> = (vec3<f32>(x_866.x, x_866.y, x_866.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_870 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_869.x, x_869.y, x_869.z, x_870.w);
  let x_872 : vec4<f32> = u_xlat2;
  let x_874 : vec3<f32> = exp2(vec3<f32>(x_872.x, x_872.y, x_872.z));
  let x_875 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_874.x, x_874.y, x_874.z, x_875.w);
  let x_878 : vec4<f32> = u_xlat0;
  let x_880 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_878.x, x_878.y, x_878.z, x_878.x));
  u_xlatb0 = vec3<bool>(x_880.x, x_880.y, x_880.z);
  let x_885 : bool = u_xlatb0.x;
  if (x_885) {
    let x_890 : f32 = u_xlat1.x;
    x_886 = x_890;
  } else {
    let x_893 : f32 = u_xlat2.x;
    x_886 = x_893;
  }
  let x_894 : f32 = x_886;
  SV_Target0.x = x_894;
  let x_898 : bool = u_xlatb0.y;
  if (x_898) {
    let x_903 : f32 = u_xlat1.y;
    x_899 = x_903;
  } else {
    let x_906 : f32 = u_xlat2.y;
    x_899 = x_906;
  }
  let x_907 : f32 = x_899;
  SV_Target0.y = x_907;
  let x_910 : bool = u_xlatb0.z;
  if (x_910) {
    let x_915 : f32 = u_xlat1.z;
    x_911 = x_915;
  } else {
    let x_918 : f32 = u_xlat2.z;
    x_911 = x_918;
  }
  let x_919 : f32 = x_911;
  SV_Target0.z = x_919;
  let x_922 : f32 = u_xlat0.w;
  SV_Target0.w = x_922;
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

