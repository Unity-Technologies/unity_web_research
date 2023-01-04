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
  x_Grain_Params1 : vec2<f32>,
  x_Grain_Params2 : vec4<f32>,
  x_LumaInAlpha : f32,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_AutoExposureTex : sampler;

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

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

@group(0) @binding(5) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(12) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(3) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_BloomTex : sampler;

@group(0) @binding(4) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_Bloom_DirtTex : sampler;

var<private> u_xlatb1 : bool;

var<private> u_xlat22 : f32;

@group(0) @binding(6) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(13) var sampler_Vignette_Mask : sampler;

var<private> u_xlat10 : f32;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(7) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(14) var sampler_GrainTex : sampler;

var<private> u_xlatb0 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb16 : bool;

var<private> u_xlati22 : i32;

fn main_1() {
  var u_xlati_loop_1 : i32;
  var x_538 : f32;
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
    let x_166 : f32 = x_51.x_RenderViewportScaleFactor;
    u_xlat16 = (x_163 * vec2<f32>(x_166, x_166));
    let x_175 : vec2<f32> = u_xlat16;
    let x_176 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_175, 0.0f);
    u_xlat6 = x_176;
    let x_182 : vec4<f32> = u_xlat2;
    let x_184 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(x_182.x, x_182.y), 0.0f);
    let x_185 : vec3<f32> = vec3<f32>(x_184.x, x_184.y, x_184.z);
    let x_186 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_185.x, x_185.y, x_185.z, x_186.w);
    let x_188 : vec4<f32> = u_xlat6;
    let x_189 : vec4<f32> = u_xlat3;
    let x_191 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_188 * x_189) + x_191);
    let x_193 : vec4<f32> = u_xlat3;
    let x_194 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_193 + x_194);
    let x_196 : vec2<f32> = u_xlat7;
    let x_197 : vec3<f32> = u_xlat8;
    let x_199 : vec2<f32> = (x_196 + vec2<f32>(x_197.x, x_197.y));
    let x_200 : vec3<f32> = u_xlat8;
    u_xlat8 = vec3<f32>(x_199.x, x_199.y, x_200.z);

    continuing {
      let x_202 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_202 + 1i);
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
    let x_492 : f32 = u_xlat1.x;
    let x_494 : f32 = u_xlat2.x;
    u_xlat2.w = ((x_492 * x_494) + 1.0f);
  } else {
    let x_504 : vec2<f32> = vs_TEXCOORD0;
    let x_505 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_504);
    u_xlat1.x = x_505.w;
    let x_509 : f32 = u_xlat1.x;
    u_xlat3.x = (x_509 * 0.077399381f);
    let x_515 : f32 = u_xlat1.x;
    u_xlat10 = (x_515 + 0.055f);
    let x_518 : f32 = u_xlat10;
    u_xlat10 = (x_518 * 0.947867334f);
    let x_521 : f32 = u_xlat10;
    u_xlat10 = max(abs(x_521), 1.1920929e-07f);
    let x_525 : f32 = u_xlat10;
    u_xlat10 = log2(x_525);
    let x_527 : f32 = u_xlat10;
    u_xlat10 = (x_527 * 2.400000095f);
    let x_530 : f32 = u_xlat10;
    u_xlat10 = exp2(x_530);
    let x_534 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_534);
    let x_536 : bool = u_xlatb1;
    if (x_536) {
      let x_542 : f32 = u_xlat3.x;
      x_538 = x_542;
    } else {
      let x_544 : f32 = u_xlat10;
      x_538 = x_544;
    }
    let x_545 : f32 = x_538;
    u_xlat1.x = x_545;
    let x_548 : vec3<f32> = x_51.x_Vignette_Color;
    let x_550 : vec3<f32> = (-(x_548) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_551 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_550.x, x_550.y, x_550.z, x_551.w);
    let x_553 : vec4<f32> = u_xlat1;
    let x_555 : vec4<f32> = u_xlat3;
    let x_559 : vec3<f32> = x_51.x_Vignette_Color;
    let x_560 : vec3<f32> = ((vec3<f32>(x_553.x, x_553.x, x_553.x) * vec3<f32>(x_555.x, x_555.y, x_555.z)) + x_559);
    let x_561 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_560.x, x_560.y, x_560.z, x_561.w);
    let x_563 : vec4<f32> = u_xlat0;
    let x_565 : vec4<f32> = u_xlat3;
    let x_568 : vec4<f32> = u_xlat0;
    let x_571 : vec3<f32> = ((vec3<f32>(x_563.x, x_563.y, x_563.z) * vec3<f32>(x_565.x, x_565.y, x_565.z)) + -(vec3<f32>(x_568.x, x_568.y, x_568.z)));
    let x_572 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_571.x, x_571.y, x_571.z, x_572.w);
    let x_576 : f32 = x_51.x_Vignette_Opacity;
    let x_578 : vec4<f32> = u_xlat3;
    let x_581 : vec4<f32> = u_xlat0;
    u_xlat8 = ((vec3<f32>(x_576, x_576, x_576) * vec3<f32>(x_578.x, x_578.y, x_578.z)) + vec3<f32>(x_581.x, x_581.y, x_581.z));
    let x_585 : f32 = u_xlat0.w;
    u_xlat0.x = (x_585 + -1.0f);
    let x_589 : f32 = u_xlat1.x;
    let x_591 : f32 = u_xlat0.x;
    u_xlat2.w = ((x_589 * x_591) + 1.0f);
  }
  let x_596 : vec2<f32> = vs_TEXCOORD1;
  let x_599 : vec4<f32> = x_51.x_Grain_Params2;
  let x_603 : vec4<f32> = x_51.x_Grain_Params2;
  let x_605 : vec2<f32> = ((x_596 * vec2<f32>(x_599.x, x_599.y)) + vec2<f32>(x_603.z, x_603.w));
  let x_606 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_605.x, x_605.y, x_606.z, x_606.w);
  let x_613 : vec4<f32> = u_xlat0;
  let x_615 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_613.x, x_613.y));
  let x_616 : vec3<f32> = vec3<f32>(x_615.x, x_615.y, x_615.z);
  let x_617 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_616.x, x_616.y, x_616.z, x_617.w);
  let x_619 : vec3<f32> = u_xlat8;
  let x_620 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_619.x, x_619.y, x_619.z, x_620.w);
  let x_622 : vec4<f32> = u_xlat3;
  let x_626 : vec3<f32> = clamp(vec3<f32>(x_622.x, x_622.y, x_622.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_627 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_626.x, x_626.y, x_626.z, x_627.w);
  let x_629 : vec4<f32> = u_xlat3;
  u_xlat21 = dot(vec3<f32>(x_629.x, x_629.y, x_629.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_636 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_636);
  let x_640 : f32 = x_51.x_Grain_Params1.x;
  let x_641 : f32 = u_xlat21;
  u_xlat21 = ((x_640 * -(x_641)) + 1.0f);
  let x_645 : vec4<f32> = u_xlat0;
  let x_647 : vec3<f32> = u_xlat8;
  let x_648 : vec3<f32> = (vec3<f32>(x_645.x, x_645.y, x_645.z) * x_647);
  let x_649 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_648.x, x_648.y, x_648.z, x_649.w);
  let x_651 : vec4<f32> = u_xlat0;
  let x_654 : f32 = x_51.x_Grain_Params1.y;
  let x_656 : f32 = x_51.x_Grain_Params1.y;
  let x_658 : f32 = x_51.x_Grain_Params1.y;
  let x_660 : vec3<f32> = (vec3<f32>(x_651.x, x_651.y, x_651.z) * vec3<f32>(x_654, x_656, x_658));
  let x_661 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_660.x, x_660.y, x_660.z, x_661.w);
  let x_663 : vec4<f32> = u_xlat0;
  let x_665 : f32 = u_xlat21;
  let x_668 : vec3<f32> = u_xlat8;
  let x_669 : vec3<f32> = ((vec3<f32>(x_663.x, x_663.y, x_663.z) * vec3<f32>(x_665, x_665, x_665)) + x_668);
  let x_670 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_669.x, x_669.y, x_669.z, x_670.w);
  let x_675 : f32 = x_51.x_LumaInAlpha;
  u_xlatb0 = (0.5f < x_675);
  let x_677 : bool = u_xlatb0;
  if (x_677) {
    let x_680 : vec4<f32> = u_xlat2;
    let x_681 : vec3<f32> = vec3<f32>(x_680.x, x_680.y, x_680.z);
    let x_682 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_681.x, x_681.y, x_681.z, x_682.w);
    let x_684 : vec4<f32> = u_xlat0;
    let x_688 : vec3<f32> = clamp(vec3<f32>(x_684.x, x_684.y, x_684.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_689 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_688.x, x_688.y, x_688.z, x_689.w);
    let x_691 : vec4<f32> = u_xlat0;
    u_xlat2.w = dot(vec3<f32>(x_691.x, x_691.y, x_691.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_697 : vec4<f32> = u_xlat2;
  SV_Target0 = x_697;
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

