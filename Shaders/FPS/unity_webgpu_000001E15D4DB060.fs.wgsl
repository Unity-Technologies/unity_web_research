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
  x_Grain_Params1 : vec2<f32>,
  x_Grain_Params2 : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(3) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_AutoExposureTex : sampler;

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

@group(0) @binding(11) var sampler_MainTex : sampler;

@group(0) @binding(6) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(15) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(4) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(13) var sampler_BloomTex : sampler;

@group(0) @binding(5) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(14) var sampler_Bloom_DirtTex : sampler;

var<private> u_xlatb1 : bool;

var<private> u_xlat22 : f32;

@group(0) @binding(8) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(17) var sampler_Vignette_Mask : sampler;

var<private> u_xlat10 : f32;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(9) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(18) var sampler_GrainTex : sampler;

@group(0) @binding(7) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(16) var sampler_Lut3D : sampler;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_DitheringTex : sampler;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb16 : bool;

var<private> u_xlati22 : i32;

fn main_1() {
  var u_xlati_loop_1 : i32;
  var x_538 : f32;
  var x_872 : f32;
  var x_884 : f32;
  var x_896 : f32;
  var x_965 : f32;
  var x_978 : f32;
  var x_990 : f32;
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
  let x_639 : f32 = x_51.x_Grain_Params1.x;
  let x_640 : f32 = u_xlat21;
  u_xlat21 = ((x_639 * -(x_640)) + 1.0f);
  let x_644 : vec4<f32> = u_xlat0;
  let x_646 : vec3<f32> = u_xlat8;
  let x_647 : vec3<f32> = (vec3<f32>(x_644.x, x_644.y, x_644.z) * x_646);
  let x_648 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_647.x, x_647.y, x_647.z, x_648.w);
  let x_650 : vec4<f32> = u_xlat0;
  let x_653 : f32 = x_51.x_Grain_Params1.y;
  let x_655 : f32 = x_51.x_Grain_Params1.y;
  let x_657 : f32 = x_51.x_Grain_Params1.y;
  let x_659 : vec3<f32> = (vec3<f32>(x_650.x, x_650.y, x_650.z) * vec3<f32>(x_653, x_655, x_657));
  let x_660 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_659.x, x_659.y, x_659.z, x_660.w);
  let x_662 : vec4<f32> = u_xlat0;
  let x_664 : f32 = u_xlat21;
  let x_667 : vec3<f32> = u_xlat8;
  let x_668 : vec3<f32> = ((vec3<f32>(x_662.x, x_662.y, x_662.z) * vec3<f32>(x_664, x_664, x_664)) + x_667);
  let x_669 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_668.x, x_668.y, x_668.z, x_669.w);
  let x_671 : vec4<f32> = u_xlat2;
  let x_674 : f32 = x_51.x_PostExposure;
  let x_676 : f32 = x_51.x_PostExposure;
  let x_678 : f32 = x_51.x_PostExposure;
  let x_680 : f32 = x_51.x_PostExposure;
  let x_681 : vec4<f32> = vec4<f32>(x_674, x_676, x_678, x_680);
  u_xlat0 = (x_671 * vec4<f32>(x_681.x, x_681.y, x_681.z, x_681.w));
  let x_688 : vec4<f32> = u_xlat0;
  let x_695 : vec3<f32> = ((vec3<f32>(x_688.x, x_688.y, x_688.z) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_696 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_695.x, x_695.y, x_695.z, x_696.w);
  let x_698 : vec4<f32> = u_xlat0;
  let x_700 : vec3<f32> = log2(vec3<f32>(x_698.x, x_698.y, x_698.z));
  let x_701 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_700.x, x_700.y, x_700.z, x_701.w);
  let x_703 : vec4<f32> = u_xlat0;
  let x_710 : vec3<f32> = ((vec3<f32>(x_703.x, x_703.y, x_703.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_711 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_710.x, x_710.y, x_710.z, x_711.w);
  let x_713 : vec4<f32> = u_xlat0;
  let x_717 : vec3<f32> = clamp(vec3<f32>(x_713.x, x_713.y, x_713.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_718 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_717.x, x_717.y, x_717.z, x_718.w);
  let x_720 : vec4<f32> = u_xlat0;
  let x_724 : vec2<f32> = x_51.x_Lut3D_Params;
  let x_726 : vec3<f32> = (vec3<f32>(x_720.x, x_720.y, x_720.z) * vec3<f32>(x_724.y, x_724.y, x_724.y));
  let x_727 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_726.x, x_726.y, x_726.z, x_727.w);
  let x_730 : f32 = x_51.x_Lut3D_Params.x;
  u_xlat1.x = (x_730 * 0.5f);
  let x_733 : vec4<f32> = u_xlat0;
  let x_736 : vec2<f32> = x_51.x_Lut3D_Params;
  let x_739 : vec4<f32> = u_xlat1;
  let x_741 : vec3<f32> = ((vec3<f32>(x_733.x, x_733.y, x_733.z) * vec3<f32>(x_736.x, x_736.x, x_736.x)) + vec3<f32>(x_739.x, x_739.x, x_739.x));
  let x_742 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_741.x, x_741.y, x_741.z, x_742.w);
  let x_752 : vec4<f32> = u_xlat0;
  let x_754 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, vec3<f32>(x_752.x, x_752.y, x_752.z));
  let x_755 : vec3<f32> = vec3<f32>(x_754.x, x_754.y, x_754.z);
  let x_756 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_755.x, x_755.y, x_755.z, x_756.w);
  let x_758 : vec2<f32> = vs_TEXCOORD0;
  let x_761 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_765 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_767 : vec2<f32> = ((x_758 * vec2<f32>(x_761.x, x_761.y)) + vec2<f32>(x_765.z, x_765.w));
  let x_768 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_767.x, x_767.y, x_768.z, x_768.w);
  let x_775 : vec4<f32> = u_xlat1;
  let x_777 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_775.x, x_775.y));
  u_xlat1.x = x_777.w;
  let x_781 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_781 * 2.0f) + -1.0f);
  let x_786 : f32 = u_xlat1.x;
  u_xlat8.x = ((x_786 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_792 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_792, 0.0f, 1.0f);
  let x_796 : f32 = u_xlat8.x;
  u_xlat8.x = ((x_796 * 2.0f) + -1.0f);
  let x_801 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_801)) + 1.0f);
  let x_807 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_807);
  let x_811 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_811) + 1.0f);
  let x_816 : f32 = u_xlat1.x;
  let x_818 : f32 = u_xlat8.x;
  u_xlat1.x = (x_816 * x_818);
  let x_821 : vec4<f32> = u_xlat0;
  u_xlat8 = (vec3<f32>(x_821.x, x_821.y, x_821.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_826 : vec4<f32> = u_xlat0;
  let x_830 : vec3<f32> = max(abs(vec3<f32>(x_826.x, x_826.y, x_826.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_831 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_830.x, x_830.y, x_830.z, x_831.w);
  let x_833 : vec4<f32> = u_xlat2;
  let x_835 : vec3<f32> = log2(vec3<f32>(x_833.x, x_833.y, x_833.z));
  let x_836 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_835.x, x_835.y, x_835.z, x_836.w);
  let x_838 : vec4<f32> = u_xlat2;
  let x_842 : vec3<f32> = (vec3<f32>(x_838.x, x_838.y, x_838.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_843 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_842.x, x_842.y, x_842.z, x_843.w);
  let x_845 : vec4<f32> = u_xlat2;
  let x_847 : vec3<f32> = exp2(vec3<f32>(x_845.x, x_845.y, x_845.z));
  let x_848 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_847.x, x_847.y, x_847.z, x_848.w);
  let x_850 : vec4<f32> = u_xlat2;
  let x_857 : vec3<f32> = ((vec3<f32>(x_850.x, x_850.y, x_850.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_858 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_857.x, x_857.y, x_857.z, x_858.w);
  let x_865 : vec4<f32> = u_xlat0;
  let x_868 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_865.x, x_865.y, x_865.z, x_865.x));
  u_xlatb0 = vec3<bool>(x_868.x, x_868.y, x_868.z);
  let x_871 : bool = u_xlatb0.x;
  if (x_871) {
    let x_876 : f32 = u_xlat8.x;
    x_872 = x_876;
  } else {
    let x_879 : f32 = u_xlat2.x;
    x_872 = x_879;
  }
  let x_880 : f32 = x_872;
  u_xlat0.x = x_880;
  let x_883 : bool = u_xlatb0.y;
  if (x_883) {
    let x_888 : f32 = u_xlat8.y;
    x_884 = x_888;
  } else {
    let x_891 : f32 = u_xlat2.y;
    x_884 = x_891;
  }
  let x_892 : f32 = x_884;
  u_xlat0.y = x_892;
  let x_895 : bool = u_xlatb0.z;
  if (x_895) {
    let x_900 : f32 = u_xlat8.z;
    x_896 = x_900;
  } else {
    let x_903 : f32 = u_xlat2.z;
    x_896 = x_903;
  }
  let x_904 : f32 = x_896;
  u_xlat0.z = x_904;
  let x_906 : vec4<f32> = u_xlat1;
  let x_911 : vec4<f32> = u_xlat0;
  let x_913 : vec3<f32> = ((vec3<f32>(x_906.x, x_906.x, x_906.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_911.x, x_911.y, x_911.z));
  let x_914 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_913.x, x_913.y, x_913.z, x_914.w);
  let x_916 : vec4<f32> = u_xlat0;
  let x_919 : vec3<f32> = (vec3<f32>(x_916.x, x_916.y, x_916.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_920 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_919.x, x_919.y, x_919.z, x_920.w);
  let x_922 : vec4<f32> = u_xlat0;
  let x_925 : vec3<f32> = (vec3<f32>(x_922.x, x_922.y, x_922.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_926 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_925.x, x_925.y, x_925.z, x_926.w);
  let x_928 : vec4<f32> = u_xlat2;
  let x_931 : vec3<f32> = (vec3<f32>(x_928.x, x_928.y, x_928.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_932 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_931.x, x_931.y, x_931.z, x_932.w);
  let x_934 : vec4<f32> = u_xlat2;
  let x_937 : vec3<f32> = max(abs(vec3<f32>(x_934.x, x_934.y, x_934.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_938 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_937.x, x_937.y, x_937.z, x_938.w);
  let x_940 : vec4<f32> = u_xlat2;
  let x_942 : vec3<f32> = log2(vec3<f32>(x_940.x, x_940.y, x_940.z));
  let x_943 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_942.x, x_942.y, x_942.z, x_943.w);
  let x_945 : vec4<f32> = u_xlat2;
  let x_948 : vec3<f32> = (vec3<f32>(x_945.x, x_945.y, x_945.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_949 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_948.x, x_948.y, x_948.z, x_949.w);
  let x_951 : vec4<f32> = u_xlat2;
  let x_953 : vec3<f32> = exp2(vec3<f32>(x_951.x, x_951.y, x_951.z));
  let x_954 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_953.x, x_953.y, x_953.z, x_954.w);
  let x_957 : vec4<f32> = u_xlat0;
  let x_959 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_957.x, x_957.y, x_957.z, x_957.x));
  u_xlatb0 = vec3<bool>(x_959.x, x_959.y, x_959.z);
  let x_964 : bool = u_xlatb0.x;
  if (x_964) {
    let x_969 : f32 = u_xlat1.x;
    x_965 = x_969;
  } else {
    let x_972 : f32 = u_xlat2.x;
    x_965 = x_972;
  }
  let x_973 : f32 = x_965;
  SV_Target0.x = x_973;
  let x_977 : bool = u_xlatb0.y;
  if (x_977) {
    let x_982 : f32 = u_xlat1.y;
    x_978 = x_982;
  } else {
    let x_985 : f32 = u_xlat2.y;
    x_978 = x_985;
  }
  let x_986 : f32 = x_978;
  SV_Target0.y = x_986;
  let x_989 : bool = u_xlatb0.z;
  if (x_989) {
    let x_994 : f32 = u_xlat1.z;
    x_990 = x_994;
  } else {
    let x_997 : f32 = u_xlat2.z;
    x_990 = x_997;
  }
  let x_998 : f32 = x_990;
  SV_Target0.z = x_998;
  let x_1001 : f32 = u_xlat0.w;
  SV_Target0.w = x_1001;
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

