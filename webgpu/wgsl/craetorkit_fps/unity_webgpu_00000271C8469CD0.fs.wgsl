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
  x_Lut2D_Params : vec3<f32>,
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

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_58 : PGlobals;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

@group(0) @binding(3) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(10) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(5) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(12) var sampler_Vignette_Mask : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(6) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(13) var sampler_GrainTex : sampler;

@group(0) @binding(4) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(11) var sampler_Lut2D : sampler;

@group(0) @binding(0) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_DitheringTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat21 : f32;
  var u_xlat1 : vec4<f32>;
  var u_xlati21 : i32;
  var u_xlat2 : vec3<f32>;
  var u_xlat16 : vec2<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat8 : vec2<f32>;
  var u_xlati_loop_1 : i32;
  var u_xlat6 : vec4<f32>;
  var u_xlatb21 : bool;
  var u_xlat9 : f32;
  var x_391 : f32;
  var u_xlatb3 : vec3<bool>;
  var hlslcc_movcTemp : vec3<f32>;
  var x_573 : f32;
  var x_585 : f32;
  var x_597 : f32;
  var u_xlat14 : vec2<f32>;
  var u_xlatb0 : vec3<bool>;
  var x_723 : f32;
  var x_735 : f32;
  var x_747 : f32;
  var x_830 : f32;
  var x_842 : f32;
  var x_854 : f32;
  var x_896 : f32;
  var x_909 : f32;
  var x_921 : f32;
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
  u_xlat16.y = 0.0f;
  u_xlat3.w = 1.0f;
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlat4.w = 0.0f;
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlat5.w = 0.0f;
  let x_143 : vec2<f32> = vs_TEXCOORD0;
  u_xlat8 = x_143;
  u_xlati_loop_1 = 0i;
  loop {
    let x_151 : i32 = u_xlati_loop_1;
    let x_152 : i32 = u_xlati21;
    if ((x_151 < x_152)) {
    } else {
      break;
    }
    let x_156 : i32 = u_xlati_loop_1;
    u_xlat6.x = f32(x_156);
    let x_160 : f32 = u_xlat6.x;
    u_xlat6.x = (x_160 + 0.5f);
    let x_164 : f32 = u_xlat6.x;
    let x_166 : f32 = u_xlat1.x;
    u_xlat2.x = (x_164 / x_166);
    let x_169 : vec2<f32> = u_xlat8;
    let x_170 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_169.x, x_169.y, x_170.z, x_170.w);
    let x_172 : vec4<f32> = u_xlat6;
    let x_176 : vec2<f32> = clamp(vec2<f32>(x_172.x, x_172.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_177 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_176.x, x_176.y, x_177.z, x_177.w);
    let x_179 : vec4<f32> = u_xlat6;
    let x_183 : f32 = x_58.x_RenderViewportScaleFactor;
    let x_185 : vec2<f32> = (vec2<f32>(x_179.x, x_179.y) * vec2<f32>(x_183, x_183));
    let x_186 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_185.x, x_185.y, x_186.z, x_186.w);
    let x_193 : vec4<f32> = u_xlat6;
    let x_195 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_193.x, x_193.y), 0.0f);
    u_xlat6 = x_195;
    let x_201 : vec3<f32> = u_xlat2;
    let x_203 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(x_201.x, x_201.y), 0.0f);
    let x_204 : vec3<f32> = vec3<f32>(x_203.x, x_203.y, x_203.z);
    let x_205 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_204.x, x_204.y, x_204.z, x_205.w);
    let x_207 : vec4<f32> = u_xlat6;
    let x_208 : vec4<f32> = u_xlat3;
    let x_210 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_207 * x_208) + x_210);
    let x_212 : vec4<f32> = u_xlat3;
    let x_213 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_212 + x_213);
    let x_215 : vec3<f32> = u_xlat7;
    let x_217 : vec2<f32> = u_xlat8;
    u_xlat8 = (vec2<f32>(x_215.x, x_215.y) + x_217);

    continuing {
      let x_219 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_219 + 1i);
    }
  }
  let x_221 : vec4<f32> = u_xlat4;
  let x_222 : vec4<f32> = u_xlat5;
  u_xlat1 = (x_221 / x_222);
  let x_224 : vec3<f32> = u_xlat0;
  let x_226 : vec4<f32> = u_xlat1;
  u_xlat0 = (vec3<f32>(x_224.x, x_224.x, x_224.x) * vec3<f32>(x_226.x, x_226.y, x_226.z));
  let x_233 : f32 = x_58.x_Vignette_Mode;
  u_xlatb21 = (x_233 < 0.5f);
  let x_235 : bool = u_xlatb21;
  if (x_235) {
    let x_238 : vec2<f32> = vs_TEXCOORD0;
    let x_242 : vec2<f32> = x_58.x_Vignette_Center;
    let x_244 : vec2<f32> = (x_238 + -(x_242));
    let x_245 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_244.x, x_244.y, x_245.z, x_245.w);
    let x_247 : vec4<f32> = u_xlat1;
    let x_252 : vec4<f32> = x_58.x_Vignette_Settings;
    let x_254 : vec2<f32> = (abs(vec2<f32>(x_247.y, x_247.x)) * vec2<f32>(x_252.x, x_252.x));
    let x_255 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_255.x, x_254.x, x_254.y, x_255.w);
    let x_258 : f32 = x_58.x_ScreenParams.x;
    let x_260 : f32 = x_58.x_ScreenParams.y;
    u_xlat21 = (x_258 / x_260);
    let x_262 : f32 = u_xlat21;
    u_xlat21 = (x_262 + -1.0f);
    let x_265 : f32 = x_58.x_Vignette_Settings.w;
    let x_266 : f32 = u_xlat21;
    u_xlat21 = ((x_265 * x_266) + 1.0f);
    let x_269 : f32 = u_xlat21;
    let x_271 : f32 = u_xlat1.z;
    u_xlat1.x = (x_269 * x_271);
    let x_274 : vec4<f32> = u_xlat1;
    let x_275 : vec2<f32> = vec2<f32>(x_274.x, x_274.y);
    let x_276 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_275.x, x_275.y, x_276.z, x_276.w);
    let x_278 : vec4<f32> = u_xlat1;
    let x_282 : vec2<f32> = clamp(vec2<f32>(x_278.x, x_278.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_283 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_282.x, x_282.y, x_283.z, x_283.w);
    let x_285 : vec4<f32> = u_xlat1;
    let x_287 : vec2<f32> = log2(vec2<f32>(x_285.x, x_285.y));
    let x_288 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_287.x, x_287.y, x_288.z, x_288.w);
    let x_290 : vec4<f32> = u_xlat1;
    let x_293 : vec4<f32> = x_58.x_Vignette_Settings;
    let x_295 : vec2<f32> = (vec2<f32>(x_290.x, x_290.y) * vec2<f32>(x_293.z, x_293.z));
    let x_296 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_295.x, x_295.y, x_296.z, x_296.w);
    let x_298 : vec4<f32> = u_xlat1;
    let x_300 : vec2<f32> = exp2(vec2<f32>(x_298.x, x_298.y));
    let x_301 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_300.x, x_300.y, x_301.z, x_301.w);
    let x_303 : vec4<f32> = u_xlat1;
    let x_305 : vec4<f32> = u_xlat1;
    u_xlat21 = dot(vec2<f32>(x_303.x, x_303.y), vec2<f32>(x_305.x, x_305.y));
    let x_308 : f32 = u_xlat21;
    u_xlat21 = (-(x_308) + 1.0f);
    let x_311 : f32 = u_xlat21;
    u_xlat21 = max(x_311, 0.0f);
    let x_313 : f32 = u_xlat21;
    u_xlat21 = log2(x_313);
    let x_315 : f32 = u_xlat21;
    let x_317 : f32 = x_58.x_Vignette_Settings.y;
    u_xlat21 = (x_315 * x_317);
    let x_319 : f32 = u_xlat21;
    u_xlat21 = exp2(x_319);
    let x_324 : vec3<f32> = x_58.x_Vignette_Color;
    let x_327 : vec3<f32> = (-(x_324) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_328 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_327.x, x_327.y, x_327.z, x_328.w);
    let x_330 : f32 = u_xlat21;
    let x_332 : vec4<f32> = u_xlat1;
    let x_336 : vec3<f32> = x_58.x_Vignette_Color;
    let x_337 : vec3<f32> = ((vec3<f32>(x_330, x_330, x_330) * vec3<f32>(x_332.x, x_332.y, x_332.z)) + x_336);
    let x_338 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_337.x, x_337.y, x_337.z, x_338.w);
    let x_340 : vec3<f32> = u_xlat0;
    let x_341 : vec4<f32> = u_xlat1;
    let x_343 : vec3<f32> = (x_340 * vec3<f32>(x_341.x, x_341.y, x_341.z));
    let x_344 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_343.x, x_343.y, x_343.z, x_344.w);
    let x_347 : f32 = u_xlat1.w;
    u_xlat2.x = (x_347 + -1.0f);
    let x_350 : f32 = u_xlat21;
    let x_352 : f32 = u_xlat2.x;
    u_xlat3.w = ((x_350 * x_352) + 1.0f);
  } else {
    let x_362 : vec2<f32> = vs_TEXCOORD0;
    let x_363 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_362);
    u_xlat21 = x_363.w;
    let x_365 : f32 = u_xlat21;
    u_xlat2.x = (x_365 * 0.077399381f);
    let x_370 : f32 = u_xlat21;
    u_xlat9 = (x_370 + 0.055f);
    let x_373 : f32 = u_xlat9;
    u_xlat9 = (x_373 * 0.947867334f);
    let x_376 : f32 = u_xlat9;
    u_xlat9 = max(abs(x_376), 1.1920929e-07f);
    let x_380 : f32 = u_xlat9;
    u_xlat9 = log2(x_380);
    let x_382 : f32 = u_xlat9;
    u_xlat9 = (x_382 * 2.400000095f);
    let x_385 : f32 = u_xlat9;
    u_xlat9 = exp2(x_385);
    let x_388 : f32 = u_xlat21;
    u_xlatb21 = (0.040449999f >= x_388);
    let x_390 : bool = u_xlatb21;
    if (x_390) {
      let x_395 : f32 = u_xlat2.x;
      x_391 = x_395;
    } else {
      let x_397 : f32 = u_xlat9;
      x_391 = x_397;
    }
    let x_398 : f32 = x_391;
    u_xlat21 = x_398;
    let x_400 : vec3<f32> = x_58.x_Vignette_Color;
    let x_402 : vec3<f32> = (-(x_400) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_403 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_402.x, x_402.y, x_402.z, x_403.w);
    let x_405 : f32 = u_xlat21;
    let x_407 : vec4<f32> = u_xlat4;
    let x_411 : vec3<f32> = x_58.x_Vignette_Color;
    let x_412 : vec3<f32> = ((vec3<f32>(x_405, x_405, x_405) * vec3<f32>(x_407.x, x_407.y, x_407.z)) + x_411);
    let x_413 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_412.x, x_412.y, x_412.z, x_413.w);
    let x_415 : vec3<f32> = u_xlat0;
    let x_416 : vec4<f32> = u_xlat4;
    let x_419 : vec3<f32> = u_xlat0;
    let x_421 : vec3<f32> = ((x_415 * vec3<f32>(x_416.x, x_416.y, x_416.z)) + -(x_419));
    let x_422 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_421.x, x_421.y, x_421.z, x_422.w);
    let x_426 : f32 = x_58.x_Vignette_Opacity;
    let x_428 : vec4<f32> = u_xlat4;
    let x_431 : vec3<f32> = u_xlat0;
    let x_432 : vec3<f32> = ((vec3<f32>(x_426, x_426, x_426) * vec3<f32>(x_428.x, x_428.y, x_428.z)) + x_431);
    let x_433 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_432.x, x_432.y, x_432.z, x_433.w);
    let x_436 : f32 = u_xlat1.w;
    u_xlat0.x = (x_436 + -1.0f);
    let x_439 : f32 = u_xlat21;
    let x_441 : f32 = u_xlat0.x;
    u_xlat3.w = ((x_439 * x_441) + 1.0f);
  }
  let x_446 : vec2<f32> = vs_TEXCOORD1;
  let x_449 : vec4<f32> = x_58.x_Grain_Params2;
  let x_453 : vec4<f32> = x_58.x_Grain_Params2;
  let x_455 : vec2<f32> = ((x_446 * vec2<f32>(x_449.x, x_449.y)) + vec2<f32>(x_453.z, x_453.w));
  let x_456 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_455.x, x_455.y, x_456.z);
  let x_463 : vec3<f32> = u_xlat0;
  let x_465 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_463.x, x_463.y));
  u_xlat0 = vec3<f32>(x_465.x, x_465.y, x_465.z);
  let x_467 : vec4<f32> = u_xlat1;
  let x_468 : vec3<f32> = vec3<f32>(x_467.x, x_467.y, x_467.z);
  let x_469 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_468.x, x_468.y, x_468.z, x_469.w);
  let x_471 : vec4<f32> = u_xlat4;
  let x_475 : vec3<f32> = clamp(vec3<f32>(x_471.x, x_471.y, x_471.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_476 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_475.x, x_475.y, x_475.z, x_476.w);
  let x_478 : vec4<f32> = u_xlat4;
  u_xlat21 = dot(vec3<f32>(x_478.x, x_478.y, x_478.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_485 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_485);
  let x_489 : f32 = x_58.x_Grain_Params1.x;
  let x_490 : f32 = u_xlat21;
  u_xlat21 = ((x_489 * -(x_490)) + 1.0f);
  let x_494 : vec3<f32> = u_xlat0;
  let x_495 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_494 * vec3<f32>(x_495.x, x_495.y, x_495.z));
  let x_498 : vec3<f32> = u_xlat0;
  let x_500 : f32 = x_58.x_Grain_Params1.y;
  let x_502 : f32 = x_58.x_Grain_Params1.y;
  let x_504 : f32 = x_58.x_Grain_Params1.y;
  u_xlat0 = (x_498 * vec3<f32>(x_500, x_502, x_504));
  let x_507 : vec3<f32> = u_xlat0;
  let x_508 : f32 = u_xlat21;
  let x_511 : vec4<f32> = u_xlat1;
  let x_513 : vec3<f32> = ((x_507 * vec3<f32>(x_508, x_508, x_508)) + vec3<f32>(x_511.x, x_511.y, x_511.z));
  let x_514 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_513.x, x_513.y, x_513.z, x_514.w);
  let x_516 : vec4<f32> = u_xlat3;
  u_xlat3 = x_516;
  let x_517 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_517, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_521 : vec4<f32> = u_xlat3;
  u_xlat0 = (vec3<f32>(x_521.z, x_521.x, x_521.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_526 : vec4<f32> = u_xlat3;
  let x_529 : vec3<f32> = max(vec3<f32>(x_526.z, x_526.x, x_526.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_530 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_529.x, x_529.y, x_529.z, x_530.w);
  let x_532 : vec4<f32> = u_xlat1;
  let x_534 : vec3<f32> = log2(vec3<f32>(x_532.x, x_532.y, x_532.z));
  let x_535 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_534.x, x_534.y, x_534.z, x_535.w);
  let x_537 : vec4<f32> = u_xlat1;
  let x_541 : vec3<f32> = (vec3<f32>(x_537.x, x_537.y, x_537.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_542 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_541.x, x_541.y, x_541.z, x_542.w);
  let x_544 : vec4<f32> = u_xlat1;
  let x_546 : vec3<f32> = exp2(vec3<f32>(x_544.x, x_544.y, x_544.z));
  let x_547 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_546.x, x_546.y, x_546.z, x_547.w);
  let x_549 : vec4<f32> = u_xlat1;
  let x_556 : vec3<f32> = ((vec3<f32>(x_549.x, x_549.y, x_549.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_557 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_556.x, x_556.y, x_556.z, x_557.w);
  let x_564 : vec4<f32> = u_xlat3;
  let x_567 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_564.z, x_564.x, x_564.y, x_564.z));
  u_xlatb3 = vec3<bool>(x_567.x, x_567.y, x_567.z);
  let x_570 : vec3<f32> = u_xlat0;
  hlslcc_movcTemp = x_570;
  let x_572 : bool = u_xlatb3.x;
  if (x_572) {
    let x_577 : f32 = u_xlat0.x;
    x_573 = x_577;
  } else {
    let x_580 : f32 = u_xlat1.x;
    x_573 = x_580;
  }
  let x_581 : f32 = x_573;
  hlslcc_movcTemp.x = x_581;
  let x_584 : bool = u_xlatb3.y;
  if (x_584) {
    let x_589 : f32 = u_xlat0.y;
    x_585 = x_589;
  } else {
    let x_592 : f32 = u_xlat1.y;
    x_585 = x_592;
  }
  let x_593 : f32 = x_585;
  hlslcc_movcTemp.y = x_593;
  let x_596 : bool = u_xlatb3.z;
  if (x_596) {
    let x_601 : f32 = u_xlat0.z;
    x_597 = x_601;
  } else {
    let x_604 : f32 = u_xlat1.z;
    x_597 = x_604;
  }
  let x_605 : f32 = x_597;
  hlslcc_movcTemp.z = x_605;
  let x_607 : vec3<f32> = hlslcc_movcTemp;
  u_xlat0 = x_607;
  let x_608 : vec3<f32> = u_xlat0;
  let x_611 : vec3<f32> = x_58.x_Lut2D_Params;
  u_xlat7 = (x_608 * vec3<f32>(x_611.z, x_611.z, x_611.z));
  let x_615 : f32 = u_xlat7.x;
  u_xlat7.x = floor(x_615);
  let x_619 : vec3<f32> = x_58.x_Lut2D_Params;
  let x_621 : vec2<f32> = (vec2<f32>(x_619.x, x_619.y) * vec2<f32>(0.5f, 0.5f));
  let x_622 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_621.x, x_621.y, x_622.z, x_622.w);
  let x_624 : vec3<f32> = u_xlat7;
  let x_627 : vec3<f32> = x_58.x_Lut2D_Params;
  let x_630 : vec4<f32> = u_xlat1;
  let x_632 : vec2<f32> = ((vec2<f32>(x_624.y, x_624.z) * vec2<f32>(x_627.x, x_627.y)) + vec2<f32>(x_630.x, x_630.y));
  let x_633 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_633.x, x_632.x, x_632.y, x_633.w);
  let x_636 : f32 = u_xlat7.x;
  let x_638 : f32 = x_58.x_Lut2D_Params.y;
  let x_641 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_636 * x_638) + x_641);
  let x_649 : vec4<f32> = u_xlat1;
  let x_651 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_649.x, x_649.z));
  let x_652 : vec3<f32> = vec3<f32>(x_651.x, x_651.y, x_651.z);
  let x_653 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_652.x, x_652.y, x_652.z, x_653.w);
  let x_656 : f32 = x_58.x_Lut2D_Params.y;
  u_xlat16.x = x_656;
  let x_659 : vec2<f32> = u_xlat16;
  let x_660 : vec4<f32> = u_xlat1;
  u_xlat14 = (x_659 + vec2<f32>(x_660.x, x_660.z));
  let x_666 : vec2<f32> = u_xlat14;
  let x_667 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_666);
  let x_668 : vec3<f32> = vec3<f32>(x_667.x, x_667.y, x_667.z);
  let x_669 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_668.x, x_668.y, x_668.z, x_669.w);
  let x_672 : f32 = u_xlat0.x;
  let x_674 : f32 = x_58.x_Lut2D_Params.z;
  let x_677 : f32 = u_xlat7.x;
  u_xlat0.x = ((x_672 * x_674) + -(x_677));
  let x_681 : vec4<f32> = u_xlat3;
  let x_684 : vec4<f32> = u_xlat1;
  u_xlat7 = (-(vec3<f32>(x_681.x, x_681.y, x_681.z)) + vec3<f32>(x_684.x, x_684.y, x_684.z));
  let x_687 : vec3<f32> = u_xlat0;
  let x_689 : vec3<f32> = u_xlat7;
  let x_691 : vec4<f32> = u_xlat3;
  u_xlat0 = ((vec3<f32>(x_687.x, x_687.x, x_687.x) * x_689) + vec3<f32>(x_691.x, x_691.y, x_691.z));
  let x_694 : vec3<f32> = u_xlat0;
  let x_696 : vec3<f32> = (x_694 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_697 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_696.x, x_696.y, x_696.z, x_697.w);
  let x_699 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_699 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_702 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_702 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_705 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_705), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_708 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_708);
  let x_710 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_710 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_713 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_713);
  let x_717 : vec3<f32> = u_xlat0;
  let x_719 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_717.x, x_717.y, x_717.z, x_717.x));
  u_xlatb0 = vec3<bool>(x_719.x, x_719.y, x_719.z);
  let x_722 : bool = u_xlatb0.x;
  if (x_722) {
    let x_727 : f32 = u_xlat1.x;
    x_723 = x_727;
  } else {
    let x_730 : f32 = u_xlat2.x;
    x_723 = x_730;
  }
  let x_731 : f32 = x_723;
  u_xlat0.x = x_731;
  let x_734 : bool = u_xlatb0.y;
  if (x_734) {
    let x_739 : f32 = u_xlat1.y;
    x_735 = x_739;
  } else {
    let x_742 : f32 = u_xlat2.y;
    x_735 = x_742;
  }
  let x_743 : f32 = x_735;
  u_xlat0.y = x_743;
  let x_746 : bool = u_xlatb0.z;
  if (x_746) {
    let x_751 : f32 = u_xlat1.z;
    x_747 = x_751;
  } else {
    let x_754 : f32 = u_xlat2.z;
    x_747 = x_754;
  }
  let x_755 : f32 = x_747;
  u_xlat0.z = x_755;
  let x_757 : vec2<f32> = vs_TEXCOORD0;
  let x_760 : vec4<f32> = x_58.x_Dithering_Coords;
  let x_764 : vec4<f32> = x_58.x_Dithering_Coords;
  let x_766 : vec2<f32> = ((x_757 * vec2<f32>(x_760.x, x_760.y)) + vec2<f32>(x_764.z, x_764.w));
  let x_767 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_766.x, x_766.y, x_767.z, x_767.w);
  let x_774 : vec4<f32> = u_xlat1;
  let x_776 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_774.x, x_774.y));
  u_xlat21 = x_776.w;
  let x_778 : f32 = u_xlat21;
  u_xlat21 = ((x_778 * 2.0f) + -1.0f);
  let x_781 : f32 = u_xlat21;
  u_xlat1.x = ((x_781 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_787 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_787, 0.0f, 1.0f);
  let x_791 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_791 * 2.0f) + -1.0f);
  let x_795 : f32 = u_xlat21;
  u_xlat21 = (-(abs(x_795)) + 1.0f);
  let x_799 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_799);
  let x_801 : f32 = u_xlat21;
  u_xlat21 = (-(x_801) + 1.0f);
  let x_804 : f32 = u_xlat21;
  let x_806 : f32 = u_xlat1.x;
  u_xlat21 = (x_804 * x_806);
  let x_808 : vec3<f32> = u_xlat0;
  let x_809 : vec3<f32> = (x_808 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_810 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_809.x, x_809.y, x_809.z, x_810.w);
  let x_812 : vec3<f32> = u_xlat0;
  u_xlat2 = max(abs(x_812), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_815 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_815);
  let x_817 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_817 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_819 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_819);
  let x_821 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_821 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_824 : vec3<f32> = u_xlat0;
  let x_826 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_824.x, x_824.y, x_824.z, x_824.x));
  u_xlatb0 = vec3<bool>(x_826.x, x_826.y, x_826.z);
  let x_829 : bool = u_xlatb0.x;
  if (x_829) {
    let x_834 : f32 = u_xlat1.x;
    x_830 = x_834;
  } else {
    let x_837 : f32 = u_xlat2.x;
    x_830 = x_837;
  }
  let x_838 : f32 = x_830;
  u_xlat0.x = x_838;
  let x_841 : bool = u_xlatb0.y;
  if (x_841) {
    let x_846 : f32 = u_xlat1.y;
    x_842 = x_846;
  } else {
    let x_849 : f32 = u_xlat2.y;
    x_842 = x_849;
  }
  let x_850 : f32 = x_842;
  u_xlat0.y = x_850;
  let x_853 : bool = u_xlatb0.z;
  if (x_853) {
    let x_858 : f32 = u_xlat1.z;
    x_854 = x_858;
  } else {
    let x_861 : f32 = u_xlat2.z;
    x_854 = x_861;
  }
  let x_862 : f32 = x_854;
  u_xlat0.z = x_862;
  let x_864 : f32 = u_xlat21;
  let x_869 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_864, x_864, x_864) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + x_869);
  let x_871 : vec3<f32> = u_xlat0;
  let x_872 : vec3<f32> = (x_871 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_873 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_872.x, x_872.y, x_872.z, x_873.w);
  let x_875 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_875 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_877 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_877 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_879 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_879), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_882 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_882);
  let x_884 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_884 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_886 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_886);
  let x_888 : vec3<f32> = u_xlat0;
  let x_890 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_888.x, x_888.y, x_888.z, x_888.x));
  u_xlatb0 = vec3<bool>(x_890.x, x_890.y, x_890.z);
  let x_895 : bool = u_xlatb0.x;
  if (x_895) {
    let x_900 : f32 = u_xlat1.x;
    x_896 = x_900;
  } else {
    let x_903 : f32 = u_xlat2.x;
    x_896 = x_903;
  }
  let x_904 : f32 = x_896;
  SV_Target0.x = x_904;
  let x_908 : bool = u_xlatb0.y;
  if (x_908) {
    let x_913 : f32 = u_xlat1.y;
    x_909 = x_913;
  } else {
    let x_916 : f32 = u_xlat2.y;
    x_909 = x_916;
  }
  let x_917 : f32 = x_909;
  SV_Target0.y = x_917;
  let x_920 : bool = u_xlatb0.z;
  if (x_920) {
    let x_925 : f32 = u_xlat1.z;
    x_921 = x_925;
  } else {
    let x_928 : f32 = u_xlat2.z;
    x_921 = x_928;
  }
  let x_929 : f32 = x_921;
  SV_Target0.z = x_929;
  let x_932 : f32 = u_xlat3.w;
  SV_Target0.w = x_932;
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

