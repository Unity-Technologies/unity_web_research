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

@group(0) @binding(7) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(14) var sampler_Vignette_Mask : sampler;

var<private> u_xlat15 : f32;

@group(0) @binding(6) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(13) var sampler_Lut3D : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb16 : bool;

var<private> u_xlati22 : i32;

fn main_1() {
  var u_xlati_loop_1 : i32;
  var x_542 : f32;
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
  let x_596 : f32 = x_51.x_PostExposure;
  let x_598 : f32 = x_51.x_PostExposure;
  let x_600 : f32 = x_51.x_PostExposure;
  let x_602 : f32 = x_51.x_PostExposure;
  let x_603 : vec4<f32> = vec4<f32>(x_596, x_598, x_600, x_602);
  u_xlat0 = (vec4<f32>(x_592.w, x_592.x, x_592.y, x_592.z) * vec4<f32>(x_603.x, x_603.y, x_603.z, x_603.w));
  let x_610 : vec4<f32> = u_xlat0;
  let x_617 : vec3<f32> = ((vec3<f32>(x_610.y, x_610.z, x_610.w) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_618 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_617.x, x_617.y, x_617.z, x_618.w);
  let x_620 : vec4<f32> = u_xlat1;
  let x_622 : vec3<f32> = log2(vec3<f32>(x_620.x, x_620.y, x_620.z));
  let x_623 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_622.x, x_622.y, x_622.z, x_623.w);
  let x_625 : vec4<f32> = u_xlat1;
  let x_632 : vec3<f32> = ((vec3<f32>(x_625.x, x_625.y, x_625.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_633 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_632.x, x_632.y, x_632.z, x_633.w);
  let x_635 : vec4<f32> = u_xlat1;
  let x_639 : vec3<f32> = clamp(vec3<f32>(x_635.x, x_635.y, x_635.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_640 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_639.x, x_639.y, x_639.z, x_640.w);
  let x_642 : vec4<f32> = u_xlat1;
  let x_646 : vec2<f32> = x_51.x_Lut3D_Params;
  let x_648 : vec3<f32> = (vec3<f32>(x_642.x, x_642.y, x_642.z) * vec3<f32>(x_646.y, x_646.y, x_646.y));
  let x_649 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_648.x, x_648.y, x_648.z, x_649.w);
  let x_652 : f32 = x_51.x_Lut3D_Params.x;
  u_xlat22 = (x_652 * 0.5f);
  let x_654 : vec4<f32> = u_xlat1;
  let x_657 : vec2<f32> = x_51.x_Lut3D_Params;
  let x_660 : f32 = u_xlat22;
  let x_662 : vec3<f32> = ((vec3<f32>(x_654.x, x_654.y, x_654.z) * vec3<f32>(x_657.x, x_657.x, x_657.x)) + vec3<f32>(x_660, x_660, x_660));
  let x_663 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_662.x, x_662.y, x_662.z, x_663.w);
  let x_673 : vec4<f32> = u_xlat1;
  let x_675 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, vec3<f32>(x_673.x, x_673.y, x_673.z));
  let x_676 : vec3<f32> = vec3<f32>(x_675.x, x_675.y, x_675.z);
  let x_677 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_677.x, x_676.x, x_676.y, x_676.z);
  let x_681 : f32 = x_51.x_LumaInAlpha;
  u_xlatb1 = (0.5f < x_681);
  let x_683 : bool = u_xlatb1;
  if (x_683) {
    let x_686 : vec4<f32> = u_xlat0;
    let x_687 : vec3<f32> = vec3<f32>(x_686.y, x_686.z, x_686.w);
    let x_688 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_687.x, x_687.y, x_687.z, x_688.w);
    let x_690 : vec4<f32> = u_xlat1;
    let x_694 : vec3<f32> = clamp(vec3<f32>(x_690.x, x_690.y, x_690.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_695 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_694.x, x_694.y, x_694.z, x_695.w);
    let x_697 : vec4<f32> = u_xlat1;
    u_xlat0.x = dot(vec3<f32>(x_697.x, x_697.y, x_697.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_707 : vec4<f32> = u_xlat0;
  SV_Target0 = vec4<f32>(x_707.y, x_707.z, x_707.w, x_707.x);
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

