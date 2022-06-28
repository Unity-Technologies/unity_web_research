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

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(3) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlat21 : f32;

@group(0) @binding(0) var<uniform> x_58 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlati21 : i32;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat8 : vec2<f32>;

var<private> u_xlat16 : vec2<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

@group(0) @binding(4) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(9) var sampler_ChromaticAberration_SpectralLut : sampler;

var<private> u_xlatb21 : bool;

@group(0) @binding(5) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(10) var sampler_Vignette_Mask : sampler;

var<private> u_xlat10 : f32;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_DitheringTex : sampler;

var<private> u_xlatb1 : vec3<bool>;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb16 : bool;

var<private> u_xlati22 : i32;

fn main_1() {
  var u_xlati_loop_1 : i32;
  var x_383 : f32;
  var hlslcc_movcTemp : vec3<f32>;
  var x_554 : f32;
  var x_566 : f32;
  var x_578 : f32;
  var x_642 : f32;
  var x_654 : f32;
  var x_666 : f32;
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
    let x_150 : i32 = u_xlati_loop_1;
    let x_151 : i32 = u_xlati21;
    if ((x_150 < x_151)) {
    } else {
      break;
    }
    let x_155 : i32 = u_xlati_loop_1;
    u_xlat16.x = f32(x_155);
    let x_159 : f32 = u_xlat16.x;
    u_xlat16.x = (x_159 + 0.5f);
    let x_163 : f32 = u_xlat16.x;
    let x_165 : f32 = u_xlat1.x;
    u_xlat2.x = (x_163 / x_165);
    let x_168 : vec2<f32> = u_xlat8;
    u_xlat16 = x_168;
    let x_169 : vec2<f32> = u_xlat16;
    u_xlat16 = clamp(x_169, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_173 : vec2<f32> = u_xlat16;
    let x_176 : f32 = x_58.x_RenderViewportScaleFactor;
    u_xlat16 = (x_173 * vec2<f32>(x_176, x_176));
    let x_185 : vec2<f32> = u_xlat16;
    let x_186 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_185, 0.0f);
    u_xlat6 = x_186;
    let x_192 : vec4<f32> = u_xlat2;
    let x_194 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(x_192.x, x_192.y), 0.0f);
    let x_195 : vec3<f32> = vec3<f32>(x_194.x, x_194.y, x_194.z);
    let x_196 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_195.x, x_195.y, x_195.z, x_196.w);
    let x_198 : vec4<f32> = u_xlat6;
    let x_199 : vec4<f32> = u_xlat3;
    let x_201 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_198 * x_199) + x_201);
    let x_203 : vec4<f32> = u_xlat3;
    let x_204 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_203 + x_204);
    let x_206 : vec3<f32> = u_xlat7;
    let x_208 : vec2<f32> = u_xlat8;
    u_xlat8 = (vec2<f32>(x_206.x, x_206.y) + x_208);

    continuing {
      let x_210 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_210 + 1i);
    }
  }
  let x_212 : vec4<f32> = u_xlat4;
  let x_213 : vec4<f32> = u_xlat5;
  u_xlat1 = (x_212 / x_213);
  let x_215 : vec3<f32> = u_xlat0;
  let x_217 : vec4<f32> = u_xlat1;
  u_xlat0 = (vec3<f32>(x_215.x, x_215.x, x_215.x) * vec3<f32>(x_217.x, x_217.y, x_217.z));
  let x_224 : f32 = x_58.x_Vignette_Mode;
  u_xlatb21 = (x_224 < 0.5f);
  let x_226 : bool = u_xlatb21;
  if (x_226) {
    let x_229 : vec2<f32> = vs_TEXCOORD0;
    let x_233 : vec2<f32> = x_58.x_Vignette_Center;
    let x_235 : vec2<f32> = (x_229 + -(x_233));
    let x_236 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_235.x, x_235.y, x_236.z, x_236.w);
    let x_238 : vec4<f32> = u_xlat1;
    let x_243 : vec4<f32> = x_58.x_Vignette_Settings;
    let x_245 : vec2<f32> = (abs(vec2<f32>(x_238.y, x_238.x)) * vec2<f32>(x_243.x, x_243.x));
    let x_246 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_246.x, x_245.x, x_245.y, x_246.w);
    let x_249 : f32 = x_58.x_ScreenParams.x;
    let x_251 : f32 = x_58.x_ScreenParams.y;
    u_xlat21 = (x_249 / x_251);
    let x_253 : f32 = u_xlat21;
    u_xlat21 = (x_253 + -1.0f);
    let x_256 : f32 = x_58.x_Vignette_Settings.w;
    let x_257 : f32 = u_xlat21;
    u_xlat21 = ((x_256 * x_257) + 1.0f);
    let x_260 : f32 = u_xlat21;
    let x_262 : f32 = u_xlat1.z;
    u_xlat1.x = (x_260 * x_262);
    let x_265 : vec4<f32> = u_xlat1;
    let x_266 : vec2<f32> = vec2<f32>(x_265.x, x_265.y);
    let x_267 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_266.x, x_266.y, x_267.z, x_267.w);
    let x_269 : vec4<f32> = u_xlat1;
    let x_273 : vec2<f32> = clamp(vec2<f32>(x_269.x, x_269.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_274 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_273.x, x_273.y, x_274.z, x_274.w);
    let x_276 : vec4<f32> = u_xlat1;
    let x_278 : vec2<f32> = log2(vec2<f32>(x_276.x, x_276.y));
    let x_279 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_278.x, x_278.y, x_279.z, x_279.w);
    let x_281 : vec4<f32> = u_xlat1;
    let x_284 : vec4<f32> = x_58.x_Vignette_Settings;
    let x_286 : vec2<f32> = (vec2<f32>(x_281.x, x_281.y) * vec2<f32>(x_284.z, x_284.z));
    let x_287 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_286.x, x_286.y, x_287.z, x_287.w);
    let x_289 : vec4<f32> = u_xlat1;
    let x_291 : vec2<f32> = exp2(vec2<f32>(x_289.x, x_289.y));
    let x_292 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_291.x, x_291.y, x_292.z, x_292.w);
    let x_294 : vec4<f32> = u_xlat1;
    let x_296 : vec4<f32> = u_xlat1;
    u_xlat21 = dot(vec2<f32>(x_294.x, x_294.y), vec2<f32>(x_296.x, x_296.y));
    let x_299 : f32 = u_xlat21;
    u_xlat21 = (-(x_299) + 1.0f);
    let x_302 : f32 = u_xlat21;
    u_xlat21 = max(x_302, 0.0f);
    let x_304 : f32 = u_xlat21;
    u_xlat21 = log2(x_304);
    let x_306 : f32 = u_xlat21;
    let x_308 : f32 = x_58.x_Vignette_Settings.y;
    u_xlat21 = (x_306 * x_308);
    let x_310 : f32 = u_xlat21;
    u_xlat21 = exp2(x_310);
    let x_315 : vec3<f32> = x_58.x_Vignette_Color;
    let x_318 : vec3<f32> = (-(x_315) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_319 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
    let x_321 : f32 = u_xlat21;
    let x_323 : vec4<f32> = u_xlat1;
    let x_327 : vec3<f32> = x_58.x_Vignette_Color;
    let x_328 : vec3<f32> = ((vec3<f32>(x_321, x_321, x_321) * vec3<f32>(x_323.x, x_323.y, x_323.z)) + x_327);
    let x_329 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_328.x, x_328.y, x_328.z, x_329.w);
    let x_331 : vec3<f32> = u_xlat0;
    let x_332 : vec4<f32> = u_xlat1;
    let x_334 : vec3<f32> = (x_331 * vec3<f32>(x_332.x, x_332.y, x_332.z));
    let x_335 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
    let x_338 : f32 = u_xlat1.w;
    u_xlat2.x = (x_338 + -1.0f);
    let x_341 : f32 = u_xlat21;
    let x_343 : f32 = u_xlat2.x;
    u_xlat2.w = ((x_341 * x_343) + 1.0f);
  } else {
    let x_353 : vec2<f32> = vs_TEXCOORD0;
    let x_354 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_353);
    u_xlat21 = x_354.w;
    let x_356 : f32 = u_xlat21;
    u_xlat3.x = (x_356 * 0.077399381f);
    let x_361 : f32 = u_xlat21;
    u_xlat10 = (x_361 + 0.055f);
    let x_364 : f32 = u_xlat10;
    u_xlat10 = (x_364 * 0.947867334f);
    let x_367 : f32 = u_xlat10;
    u_xlat10 = max(abs(x_367), 1.1920929e-07f);
    let x_371 : f32 = u_xlat10;
    u_xlat10 = log2(x_371);
    let x_373 : f32 = u_xlat10;
    u_xlat10 = (x_373 * 2.400000095f);
    let x_376 : f32 = u_xlat10;
    u_xlat10 = exp2(x_376);
    let x_379 : f32 = u_xlat21;
    u_xlatb21 = (0.040449999f >= x_379);
    let x_381 : bool = u_xlatb21;
    if (x_381) {
      let x_387 : f32 = u_xlat3.x;
      x_383 = x_387;
    } else {
      let x_389 : f32 = u_xlat10;
      x_383 = x_389;
    }
    let x_390 : f32 = x_383;
    u_xlat21 = x_390;
    let x_392 : vec3<f32> = x_58.x_Vignette_Color;
    let x_394 : vec3<f32> = (-(x_392) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_395 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_394.x, x_394.y, x_394.z, x_395.w);
    let x_397 : f32 = u_xlat21;
    let x_399 : vec4<f32> = u_xlat3;
    let x_403 : vec3<f32> = x_58.x_Vignette_Color;
    let x_404 : vec3<f32> = ((vec3<f32>(x_397, x_397, x_397) * vec3<f32>(x_399.x, x_399.y, x_399.z)) + x_403);
    let x_405 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_404.x, x_404.y, x_404.z, x_405.w);
    let x_407 : vec3<f32> = u_xlat0;
    let x_408 : vec4<f32> = u_xlat3;
    let x_411 : vec3<f32> = u_xlat0;
    let x_413 : vec3<f32> = ((x_407 * vec3<f32>(x_408.x, x_408.y, x_408.z)) + -(x_411));
    let x_414 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_413.x, x_413.y, x_413.z, x_414.w);
    let x_418 : f32 = x_58.x_Vignette_Opacity;
    let x_420 : vec4<f32> = u_xlat3;
    let x_423 : vec3<f32> = u_xlat0;
    let x_424 : vec3<f32> = ((vec3<f32>(x_418, x_418, x_418) * vec3<f32>(x_420.x, x_420.y, x_420.z)) + x_423);
    let x_425 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_424.x, x_424.y, x_424.z, x_425.w);
    let x_428 : f32 = u_xlat1.w;
    u_xlat0.x = (x_428 + -1.0f);
    let x_431 : f32 = u_xlat21;
    let x_433 : f32 = u_xlat0.x;
    u_xlat2.w = ((x_431 * x_433) + 1.0f);
  }
  let x_437 : vec2<f32> = vs_TEXCOORD0;
  let x_440 : vec4<f32> = x_58.x_Dithering_Coords;
  let x_444 : vec4<f32> = x_58.x_Dithering_Coords;
  let x_446 : vec2<f32> = ((x_437 * vec2<f32>(x_440.x, x_440.y)) + vec2<f32>(x_444.z, x_444.w));
  let x_447 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_446.x, x_446.y, x_447.z);
  let x_454 : vec3<f32> = u_xlat0;
  let x_456 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_454.x, x_454.y));
  u_xlat0.x = x_456.w;
  let x_460 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_460 * 2.0f) + -1.0f);
  let x_465 : f32 = u_xlat0.x;
  u_xlat7.x = ((x_465 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_471 : f32 = u_xlat7.x;
  u_xlat7.x = clamp(x_471, 0.0f, 1.0f);
  let x_475 : f32 = u_xlat7.x;
  u_xlat7.x = ((x_475 * 2.0f) + -1.0f);
  let x_480 : f32 = u_xlat0.x;
  u_xlat0.x = (-(abs(x_480)) + 1.0f);
  let x_486 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_486);
  let x_490 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_490) + 1.0f);
  let x_495 : f32 = u_xlat0.x;
  let x_497 : f32 = u_xlat7.x;
  u_xlat0.x = (x_495 * x_497);
  let x_500 : vec4<f32> = u_xlat1;
  u_xlat7 = (vec3<f32>(x_500.x, x_500.y, x_500.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_505 : vec4<f32> = u_xlat1;
  let x_509 : vec3<f32> = max(abs(vec3<f32>(x_505.x, x_505.y, x_505.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_510 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_509.x, x_509.y, x_509.z, x_510.w);
  let x_512 : vec4<f32> = u_xlat3;
  let x_514 : vec3<f32> = log2(vec3<f32>(x_512.x, x_512.y, x_512.z));
  let x_515 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_514.x, x_514.y, x_514.z, x_515.w);
  let x_517 : vec4<f32> = u_xlat3;
  let x_521 : vec3<f32> = (vec3<f32>(x_517.x, x_517.y, x_517.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_522 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_521.x, x_521.y, x_521.z, x_522.w);
  let x_524 : vec4<f32> = u_xlat3;
  let x_526 : vec3<f32> = exp2(vec3<f32>(x_524.x, x_524.y, x_524.z));
  let x_527 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_526.x, x_526.y, x_526.z, x_527.w);
  let x_529 : vec4<f32> = u_xlat3;
  let x_536 : vec3<f32> = ((vec3<f32>(x_529.x, x_529.y, x_529.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_537 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_536.x, x_536.y, x_536.z, x_537.w);
  let x_544 : vec4<f32> = u_xlat1;
  let x_547 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_544.x, x_544.y, x_544.z, x_544.x));
  u_xlatb1 = vec3<bool>(x_547.x, x_547.y, x_547.z);
  let x_551 : vec3<f32> = u_xlat7;
  hlslcc_movcTemp = x_551;
  let x_553 : bool = u_xlatb1.x;
  if (x_553) {
    let x_558 : f32 = u_xlat7.x;
    x_554 = x_558;
  } else {
    let x_561 : f32 = u_xlat3.x;
    x_554 = x_561;
  }
  let x_562 : f32 = x_554;
  hlslcc_movcTemp.x = x_562;
  let x_565 : bool = u_xlatb1.y;
  if (x_565) {
    let x_570 : f32 = u_xlat7.y;
    x_566 = x_570;
  } else {
    let x_573 : f32 = u_xlat3.y;
    x_566 = x_573;
  }
  let x_574 : f32 = x_566;
  hlslcc_movcTemp.y = x_574;
  let x_577 : bool = u_xlatb1.z;
  if (x_577) {
    let x_582 : f32 = u_xlat7.z;
    x_578 = x_582;
  } else {
    let x_585 : f32 = u_xlat3.z;
    x_578 = x_585;
  }
  let x_586 : f32 = x_578;
  hlslcc_movcTemp.z = x_586;
  let x_588 : vec3<f32> = hlslcc_movcTemp;
  u_xlat7 = x_588;
  let x_589 : vec3<f32> = u_xlat0;
  let x_594 : vec3<f32> = u_xlat7;
  u_xlat0 = ((vec3<f32>(x_589.x, x_589.x, x_589.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + x_594);
  let x_596 : vec3<f32> = u_xlat0;
  let x_598 : vec3<f32> = (x_596 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_599 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_598.x, x_598.y, x_598.z, x_599.w);
  let x_601 : vec3<f32> = u_xlat0;
  let x_603 : vec3<f32> = (x_601 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_604 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_603.x, x_603.y, x_603.z, x_604.w);
  let x_606 : vec4<f32> = u_xlat3;
  let x_609 : vec3<f32> = (vec3<f32>(x_606.x, x_606.y, x_606.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_610 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_609.x, x_609.y, x_609.z, x_610.w);
  let x_612 : vec4<f32> = u_xlat3;
  let x_615 : vec3<f32> = max(abs(vec3<f32>(x_612.x, x_612.y, x_612.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_616 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_615.x, x_615.y, x_615.z, x_616.w);
  let x_618 : vec4<f32> = u_xlat3;
  let x_620 : vec3<f32> = log2(vec3<f32>(x_618.x, x_618.y, x_618.z));
  let x_621 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_620.x, x_620.y, x_620.z, x_621.w);
  let x_623 : vec4<f32> = u_xlat3;
  let x_626 : vec3<f32> = (vec3<f32>(x_623.x, x_623.y, x_623.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_627 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_626.x, x_626.y, x_626.z, x_627.w);
  let x_629 : vec4<f32> = u_xlat3;
  let x_631 : vec3<f32> = exp2(vec3<f32>(x_629.x, x_629.y, x_629.z));
  let x_632 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_631.x, x_631.y, x_631.z, x_632.w);
  let x_636 : vec3<f32> = u_xlat0;
  let x_638 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_636.x, x_636.y, x_636.z, x_636.x));
  u_xlatb0 = vec3<bool>(x_638.x, x_638.y, x_638.z);
  let x_641 : bool = u_xlatb0.x;
  if (x_641) {
    let x_646 : f32 = u_xlat1.x;
    x_642 = x_646;
  } else {
    let x_649 : f32 = u_xlat3.x;
    x_642 = x_649;
  }
  let x_650 : f32 = x_642;
  u_xlat2.x = x_650;
  let x_653 : bool = u_xlatb0.y;
  if (x_653) {
    let x_658 : f32 = u_xlat1.y;
    x_654 = x_658;
  } else {
    let x_661 : f32 = u_xlat3.y;
    x_654 = x_661;
  }
  let x_662 : f32 = x_654;
  u_xlat2.y = x_662;
  let x_665 : bool = u_xlatb0.z;
  if (x_665) {
    let x_670 : f32 = u_xlat1.z;
    x_666 = x_670;
  } else {
    let x_673 : f32 = u_xlat3.z;
    x_666 = x_673;
  }
  let x_674 : f32 = x_666;
  u_xlat2.z = x_674;
  let x_678 : vec4<f32> = u_xlat2;
  SV_Target0 = x_678;
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

