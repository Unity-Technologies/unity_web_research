struct PGlobals {
  x_ScreenParams : vec4<f32>,
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_Dithering_Coords : vec4<f32>,
  x_MainTex_TexelSize : vec4<f32>,
  x_ChromaticAberration_Amount : f32,
  @size(12)
  padding_1 : u32,
  x_Vignette_Color : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_Vignette_Center : vec2<f32>,
  @size(8)
  padding_3 : u32,
  x_Vignette_Settings : vec4<f32>,
  x_Vignette_Opacity : f32,
  x_Vignette_Mode : f32,
}

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_58 : PGlobals;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

@group(0) @binding(3) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(8) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(4) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(9) var sampler_Vignette_Mask : sampler;

@group(0) @binding(0) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_DitheringTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat7 : vec3<f32>;
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
  var u_xlatb21 : bool;
  var u_xlat10 : f32;
  var x_381 : f32;
  var u_xlatb1 : vec3<bool>;
  var hlslcc_movcTemp : vec3<f32>;
  var x_551 : f32;
  var x_563 : f32;
  var x_575 : f32;
  var u_xlatb0 : vec3<bool>;
  var x_639 : f32;
  var x_651 : f32;
  var x_663 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_23);
  u_xlat0.x = x_25.x;
  let x_32 : vec2<f32> = vs_TEXCOORD0;
  let x_38 : vec2<f32> = ((x_32 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_39 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_38.x, x_38.y, x_39.z);
  let x_42 : vec3<f32> = u_xlat7;
  let x_44 : vec3<f32> = u_xlat7;
  u_xlat21 = dot(vec2<f32>(x_42.x, x_42.y), vec2<f32>(x_44.x, x_44.y));
  let x_47 : f32 = u_xlat21;
  let x_49 : vec3<f32> = u_xlat7;
  let x_51 : vec2<f32> = (vec2<f32>(x_47, x_47) * vec2<f32>(x_49.x, x_49.y));
  let x_52 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_51.x, x_51.y, x_52.z);
  let x_54 : vec3<f32> = u_xlat7;
  let x_63 : f32 = x_58.x_ChromaticAberration_Amount;
  let x_65 : f32 = x_58.x_ChromaticAberration_Amount;
  let x_66 : vec2<f32> = vec2<f32>(x_63, x_65);
  let x_70 : vec2<f32> = (vec2<f32>(x_54.x, x_54.y) * vec2<f32>(x_66.x, x_66.y));
  let x_71 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_70.x, x_70.y, x_71.z);
  let x_75 : vec3<f32> = u_xlat7;
  let x_81 : vec4<f32> = x_58.x_MainTex_TexelSize;
  let x_83 : vec2<f32> = (-(vec2<f32>(x_75.x, x_75.y)) * vec2<f32>(x_81.z, x_81.w));
  let x_84 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_83.x, x_83.y, x_84.z, x_84.w);
  let x_86 : vec4<f32> = u_xlat1;
  let x_90 : vec2<f32> = (vec2<f32>(x_86.x, x_86.y) * vec2<f32>(0.5f, 0.5f));
  let x_91 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_90.x, x_90.y, x_91.z, x_91.w);
  let x_93 : vec4<f32> = u_xlat1;
  let x_95 : vec4<f32> = u_xlat1;
  u_xlat21 = dot(vec2<f32>(x_93.x, x_93.y), vec2<f32>(x_95.x, x_95.y));
  let x_98 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_98);
  let x_102 : f32 = u_xlat21;
  u_xlati21 = i32(x_102);
  let x_104 : i32 = u_xlati21;
  u_xlati21 = max(x_104, 3i);
  let x_106 : i32 = u_xlati21;
  u_xlati21 = min(x_106, 16i);
  let x_109 : i32 = u_xlati21;
  u_xlat1.x = f32(x_109);
  let x_112 : vec3<f32> = u_xlat7;
  let x_115 : vec4<f32> = u_xlat1;
  let x_117 : vec2<f32> = (-(vec2<f32>(x_112.x, x_112.y)) / vec2<f32>(x_115.x, x_115.x));
  let x_118 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_117.x, x_117.y, x_118.z);
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
  let x_141 : vec2<f32> = vs_TEXCOORD0;
  u_xlat8 = x_141;
  u_xlati_loop_1 = 0i;
  loop {
    let x_149 : i32 = u_xlati_loop_1;
    let x_150 : i32 = u_xlati21;
    if ((x_149 < x_150)) {
    } else {
      break;
    }
    let x_154 : i32 = u_xlati_loop_1;
    u_xlat16.x = f32(x_154);
    let x_158 : f32 = u_xlat16.x;
    u_xlat16.x = (x_158 + 0.5f);
    let x_162 : f32 = u_xlat16.x;
    let x_164 : f32 = u_xlat1.x;
    u_xlat2.x = (x_162 / x_164);
    let x_167 : vec2<f32> = u_xlat8;
    u_xlat16 = x_167;
    let x_168 : vec2<f32> = u_xlat16;
    u_xlat16 = clamp(x_168, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_172 : vec2<f32> = u_xlat16;
    let x_175 : f32 = x_58.x_RenderViewportScaleFactor;
    u_xlat16 = (x_172 * vec2<f32>(x_175, x_175));
    let x_184 : vec2<f32> = u_xlat16;
    let x_185 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_184, 0.0f);
    u_xlat6 = x_185;
    let x_191 : vec4<f32> = u_xlat2;
    let x_193 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(x_191.x, x_191.y), 0.0f);
    let x_194 : vec3<f32> = vec3<f32>(x_193.x, x_193.y, x_193.z);
    let x_195 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_194.x, x_194.y, x_194.z, x_195.w);
    let x_197 : vec4<f32> = u_xlat6;
    let x_198 : vec4<f32> = u_xlat3;
    let x_200 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_197 * x_198) + x_200);
    let x_202 : vec4<f32> = u_xlat3;
    let x_203 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_202 + x_203);
    let x_205 : vec3<f32> = u_xlat7;
    let x_207 : vec2<f32> = u_xlat8;
    u_xlat8 = (vec2<f32>(x_205.x, x_205.y) + x_207);

    continuing {
      let x_209 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_209 + 1i);
    }
  }
  let x_211 : vec4<f32> = u_xlat4;
  let x_212 : vec4<f32> = u_xlat5;
  u_xlat1 = (x_211 / x_212);
  let x_214 : vec3<f32> = u_xlat0;
  let x_216 : vec4<f32> = u_xlat1;
  u_xlat0 = (vec3<f32>(x_214.x, x_214.x, x_214.x) * vec3<f32>(x_216.x, x_216.y, x_216.z));
  let x_223 : f32 = x_58.x_Vignette_Mode;
  u_xlatb21 = (x_223 < 0.5f);
  let x_225 : bool = u_xlatb21;
  if (x_225) {
    let x_228 : vec2<f32> = vs_TEXCOORD0;
    let x_232 : vec2<f32> = x_58.x_Vignette_Center;
    let x_234 : vec2<f32> = (x_228 + -(x_232));
    let x_235 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_234.x, x_234.y, x_235.z, x_235.w);
    let x_237 : vec4<f32> = u_xlat1;
    let x_242 : vec4<f32> = x_58.x_Vignette_Settings;
    let x_244 : vec2<f32> = (abs(vec2<f32>(x_237.y, x_237.x)) * vec2<f32>(x_242.x, x_242.x));
    let x_245 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_245.x, x_244.x, x_244.y, x_245.w);
    let x_248 : f32 = x_58.x_ScreenParams.x;
    let x_250 : f32 = x_58.x_ScreenParams.y;
    u_xlat21 = (x_248 / x_250);
    let x_252 : f32 = u_xlat21;
    u_xlat21 = (x_252 + -1.0f);
    let x_255 : f32 = x_58.x_Vignette_Settings.w;
    let x_256 : f32 = u_xlat21;
    u_xlat21 = ((x_255 * x_256) + 1.0f);
    let x_259 : f32 = u_xlat21;
    let x_261 : f32 = u_xlat1.z;
    u_xlat1.x = (x_259 * x_261);
    let x_264 : vec4<f32> = u_xlat1;
    let x_265 : vec2<f32> = vec2<f32>(x_264.x, x_264.y);
    let x_266 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_265.x, x_265.y, x_266.z, x_266.w);
    let x_268 : vec4<f32> = u_xlat1;
    let x_272 : vec2<f32> = clamp(vec2<f32>(x_268.x, x_268.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_273 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_272.x, x_272.y, x_273.z, x_273.w);
    let x_275 : vec4<f32> = u_xlat1;
    let x_277 : vec2<f32> = log2(vec2<f32>(x_275.x, x_275.y));
    let x_278 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_277.x, x_277.y, x_278.z, x_278.w);
    let x_280 : vec4<f32> = u_xlat1;
    let x_283 : vec4<f32> = x_58.x_Vignette_Settings;
    let x_285 : vec2<f32> = (vec2<f32>(x_280.x, x_280.y) * vec2<f32>(x_283.z, x_283.z));
    let x_286 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_285.x, x_285.y, x_286.z, x_286.w);
    let x_288 : vec4<f32> = u_xlat1;
    let x_290 : vec2<f32> = exp2(vec2<f32>(x_288.x, x_288.y));
    let x_291 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_290.x, x_290.y, x_291.z, x_291.w);
    let x_293 : vec4<f32> = u_xlat1;
    let x_295 : vec4<f32> = u_xlat1;
    u_xlat21 = dot(vec2<f32>(x_293.x, x_293.y), vec2<f32>(x_295.x, x_295.y));
    let x_298 : f32 = u_xlat21;
    u_xlat21 = (-(x_298) + 1.0f);
    let x_301 : f32 = u_xlat21;
    u_xlat21 = max(x_301, 0.0f);
    let x_303 : f32 = u_xlat21;
    u_xlat21 = log2(x_303);
    let x_305 : f32 = u_xlat21;
    let x_307 : f32 = x_58.x_Vignette_Settings.y;
    u_xlat21 = (x_305 * x_307);
    let x_309 : f32 = u_xlat21;
    u_xlat21 = exp2(x_309);
    let x_314 : vec3<f32> = x_58.x_Vignette_Color;
    let x_317 : vec3<f32> = (-(x_314) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_318 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_317.x, x_317.y, x_317.z, x_318.w);
    let x_320 : f32 = u_xlat21;
    let x_322 : vec4<f32> = u_xlat1;
    let x_326 : vec3<f32> = x_58.x_Vignette_Color;
    let x_327 : vec3<f32> = ((vec3<f32>(x_320, x_320, x_320) * vec3<f32>(x_322.x, x_322.y, x_322.z)) + x_326);
    let x_328 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_327.x, x_327.y, x_327.z, x_328.w);
    let x_330 : vec3<f32> = u_xlat0;
    let x_331 : vec4<f32> = u_xlat1;
    let x_333 : vec3<f32> = (x_330 * vec3<f32>(x_331.x, x_331.y, x_331.z));
    let x_334 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
    let x_337 : f32 = u_xlat1.w;
    u_xlat2.x = (x_337 + -1.0f);
    let x_340 : f32 = u_xlat21;
    let x_342 : f32 = u_xlat2.x;
    u_xlat2.w = ((x_340 * x_342) + 1.0f);
  } else {
    let x_352 : vec2<f32> = vs_TEXCOORD0;
    let x_353 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_352);
    u_xlat21 = x_353.w;
    let x_355 : f32 = u_xlat21;
    u_xlat3.x = (x_355 * 0.077399381f);
    let x_360 : f32 = u_xlat21;
    u_xlat10 = (x_360 + 0.055f);
    let x_363 : f32 = u_xlat10;
    u_xlat10 = (x_363 * 0.947867334f);
    let x_366 : f32 = u_xlat10;
    u_xlat10 = max(abs(x_366), 1.1920929e-07f);
    let x_370 : f32 = u_xlat10;
    u_xlat10 = log2(x_370);
    let x_372 : f32 = u_xlat10;
    u_xlat10 = (x_372 * 2.400000095f);
    let x_375 : f32 = u_xlat10;
    u_xlat10 = exp2(x_375);
    let x_378 : f32 = u_xlat21;
    u_xlatb21 = (0.040449999f >= x_378);
    let x_380 : bool = u_xlatb21;
    if (x_380) {
      let x_385 : f32 = u_xlat3.x;
      x_381 = x_385;
    } else {
      let x_387 : f32 = u_xlat10;
      x_381 = x_387;
    }
    let x_388 : f32 = x_381;
    u_xlat21 = x_388;
    let x_390 : vec3<f32> = x_58.x_Vignette_Color;
    let x_392 : vec3<f32> = (-(x_390) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_393 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_392.x, x_392.y, x_392.z, x_393.w);
    let x_395 : f32 = u_xlat21;
    let x_397 : vec4<f32> = u_xlat3;
    let x_401 : vec3<f32> = x_58.x_Vignette_Color;
    let x_402 : vec3<f32> = ((vec3<f32>(x_395, x_395, x_395) * vec3<f32>(x_397.x, x_397.y, x_397.z)) + x_401);
    let x_403 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_402.x, x_402.y, x_402.z, x_403.w);
    let x_405 : vec3<f32> = u_xlat0;
    let x_406 : vec4<f32> = u_xlat3;
    let x_409 : vec3<f32> = u_xlat0;
    let x_411 : vec3<f32> = ((x_405 * vec3<f32>(x_406.x, x_406.y, x_406.z)) + -(x_409));
    let x_412 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_411.x, x_411.y, x_411.z, x_412.w);
    let x_416 : f32 = x_58.x_Vignette_Opacity;
    let x_418 : vec4<f32> = u_xlat3;
    let x_421 : vec3<f32> = u_xlat0;
    let x_422 : vec3<f32> = ((vec3<f32>(x_416, x_416, x_416) * vec3<f32>(x_418.x, x_418.y, x_418.z)) + x_421);
    let x_423 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_422.x, x_422.y, x_422.z, x_423.w);
    let x_426 : f32 = u_xlat1.w;
    u_xlat0.x = (x_426 + -1.0f);
    let x_429 : f32 = u_xlat21;
    let x_431 : f32 = u_xlat0.x;
    u_xlat2.w = ((x_429 * x_431) + 1.0f);
  }
  let x_435 : vec2<f32> = vs_TEXCOORD0;
  let x_438 : vec4<f32> = x_58.x_Dithering_Coords;
  let x_442 : vec4<f32> = x_58.x_Dithering_Coords;
  let x_444 : vec2<f32> = ((x_435 * vec2<f32>(x_438.x, x_438.y)) + vec2<f32>(x_442.z, x_442.w));
  let x_445 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_444.x, x_444.y, x_445.z);
  let x_452 : vec3<f32> = u_xlat0;
  let x_454 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_452.x, x_452.y));
  u_xlat0.x = x_454.w;
  let x_458 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_458 * 2.0f) + -1.0f);
  let x_463 : f32 = u_xlat0.x;
  u_xlat7.x = ((x_463 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_469 : f32 = u_xlat7.x;
  u_xlat7.x = clamp(x_469, 0.0f, 1.0f);
  let x_473 : f32 = u_xlat7.x;
  u_xlat7.x = ((x_473 * 2.0f) + -1.0f);
  let x_478 : f32 = u_xlat0.x;
  u_xlat0.x = (-(abs(x_478)) + 1.0f);
  let x_484 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_484);
  let x_488 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_488) + 1.0f);
  let x_493 : f32 = u_xlat0.x;
  let x_495 : f32 = u_xlat7.x;
  u_xlat0.x = (x_493 * x_495);
  let x_498 : vec4<f32> = u_xlat1;
  u_xlat7 = (vec3<f32>(x_498.x, x_498.y, x_498.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_503 : vec4<f32> = u_xlat1;
  let x_507 : vec3<f32> = max(abs(vec3<f32>(x_503.x, x_503.y, x_503.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_508 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_507.x, x_507.y, x_507.z, x_508.w);
  let x_510 : vec4<f32> = u_xlat3;
  let x_512 : vec3<f32> = log2(vec3<f32>(x_510.x, x_510.y, x_510.z));
  let x_513 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_512.x, x_512.y, x_512.z, x_513.w);
  let x_515 : vec4<f32> = u_xlat3;
  let x_519 : vec3<f32> = (vec3<f32>(x_515.x, x_515.y, x_515.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_520 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_519.x, x_519.y, x_519.z, x_520.w);
  let x_522 : vec4<f32> = u_xlat3;
  let x_524 : vec3<f32> = exp2(vec3<f32>(x_522.x, x_522.y, x_522.z));
  let x_525 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_524.x, x_524.y, x_524.z, x_525.w);
  let x_527 : vec4<f32> = u_xlat3;
  let x_534 : vec3<f32> = ((vec3<f32>(x_527.x, x_527.y, x_527.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_535 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_534.x, x_534.y, x_534.z, x_535.w);
  let x_542 : vec4<f32> = u_xlat1;
  let x_545 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_542.x, x_542.y, x_542.z, x_542.x));
  u_xlatb1 = vec3<bool>(x_545.x, x_545.y, x_545.z);
  let x_548 : vec3<f32> = u_xlat7;
  hlslcc_movcTemp = x_548;
  let x_550 : bool = u_xlatb1.x;
  if (x_550) {
    let x_555 : f32 = u_xlat7.x;
    x_551 = x_555;
  } else {
    let x_558 : f32 = u_xlat3.x;
    x_551 = x_558;
  }
  let x_559 : f32 = x_551;
  hlslcc_movcTemp.x = x_559;
  let x_562 : bool = u_xlatb1.y;
  if (x_562) {
    let x_567 : f32 = u_xlat7.y;
    x_563 = x_567;
  } else {
    let x_570 : f32 = u_xlat3.y;
    x_563 = x_570;
  }
  let x_571 : f32 = x_563;
  hlslcc_movcTemp.y = x_571;
  let x_574 : bool = u_xlatb1.z;
  if (x_574) {
    let x_579 : f32 = u_xlat7.z;
    x_575 = x_579;
  } else {
    let x_582 : f32 = u_xlat3.z;
    x_575 = x_582;
  }
  let x_583 : f32 = x_575;
  hlslcc_movcTemp.z = x_583;
  let x_585 : vec3<f32> = hlslcc_movcTemp;
  u_xlat7 = x_585;
  let x_586 : vec3<f32> = u_xlat0;
  let x_591 : vec3<f32> = u_xlat7;
  u_xlat0 = ((vec3<f32>(x_586.x, x_586.x, x_586.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + x_591);
  let x_593 : vec3<f32> = u_xlat0;
  let x_595 : vec3<f32> = (x_593 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_596 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_595.x, x_595.y, x_595.z, x_596.w);
  let x_598 : vec3<f32> = u_xlat0;
  let x_600 : vec3<f32> = (x_598 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_601 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_600.x, x_600.y, x_600.z, x_601.w);
  let x_603 : vec4<f32> = u_xlat3;
  let x_606 : vec3<f32> = (vec3<f32>(x_603.x, x_603.y, x_603.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_607 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_606.x, x_606.y, x_606.z, x_607.w);
  let x_609 : vec4<f32> = u_xlat3;
  let x_612 : vec3<f32> = max(abs(vec3<f32>(x_609.x, x_609.y, x_609.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_613 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_612.x, x_612.y, x_612.z, x_613.w);
  let x_615 : vec4<f32> = u_xlat3;
  let x_617 : vec3<f32> = log2(vec3<f32>(x_615.x, x_615.y, x_615.z));
  let x_618 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_617.x, x_617.y, x_617.z, x_618.w);
  let x_620 : vec4<f32> = u_xlat3;
  let x_623 : vec3<f32> = (vec3<f32>(x_620.x, x_620.y, x_620.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_624 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_623.x, x_623.y, x_623.z, x_624.w);
  let x_626 : vec4<f32> = u_xlat3;
  let x_628 : vec3<f32> = exp2(vec3<f32>(x_626.x, x_626.y, x_626.z));
  let x_629 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_628.x, x_628.y, x_628.z, x_629.w);
  let x_633 : vec3<f32> = u_xlat0;
  let x_635 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_633.x, x_633.y, x_633.z, x_633.x));
  u_xlatb0 = vec3<bool>(x_635.x, x_635.y, x_635.z);
  let x_638 : bool = u_xlatb0.x;
  if (x_638) {
    let x_643 : f32 = u_xlat1.x;
    x_639 = x_643;
  } else {
    let x_646 : f32 = u_xlat3.x;
    x_639 = x_646;
  }
  let x_647 : f32 = x_639;
  u_xlat2.x = x_647;
  let x_650 : bool = u_xlatb0.y;
  if (x_650) {
    let x_655 : f32 = u_xlat1.y;
    x_651 = x_655;
  } else {
    let x_658 : f32 = u_xlat3.y;
    x_651 = x_658;
  }
  let x_659 : f32 = x_651;
  u_xlat2.y = x_659;
  let x_662 : bool = u_xlatb0.z;
  if (x_662) {
    let x_667 : f32 = u_xlat1.z;
    x_663 = x_667;
  } else {
    let x_670 : f32 = u_xlat3.z;
    x_663 = x_670;
  }
  let x_671 : f32 = x_663;
  u_xlat2.z = x_671;
  let x_675 : vec4<f32> = u_xlat2;
  SV_Target0 = x_675;
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

