struct PGlobals {
  x_ScreenParams : vec4<f32>,
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
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
  x_LumaInAlpha : f32,
}

@group(0) @binding(1) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_58 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

@group(0) @binding(2) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(7) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(4) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(9) var sampler_Vignette_Mask : sampler;

@group(0) @binding(3) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(8) var sampler_Lut2D : sampler;

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
  var x_401 : f32;
  var u_xlatb4 : vec3<bool>;
  var hlslcc_movcTemp : vec3<f32>;
  var x_513 : f32;
  var x_525 : f32;
  var x_537 : f32;
  var u_xlat14 : vec2<f32>;
  var u_xlatb0 : vec3<bool>;
  var x_663 : f32;
  var x_675 : f32;
  var x_687 : f32;
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
    let x_344 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_343.x, x_343.y, x_343.z, x_344.w);
    let x_347 : f32 = u_xlat1.w;
    u_xlat1.x = (x_347 + -1.0f);
    let x_350 : f32 = u_xlat21;
    let x_352 : f32 = u_xlat1.x;
    u_xlat3.w = ((x_350 * x_352) + 1.0f);
  } else {
    let x_362 : vec2<f32> = vs_TEXCOORD0;
    let x_363 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_362);
    u_xlat21 = x_363.w;
    let x_365 : f32 = u_xlat21;
    u_xlat1.x = (x_365 * 0.077399381f);
    let x_369 : f32 = u_xlat21;
    u_xlat8.x = (x_369 + 0.055f);
    let x_374 : f32 = u_xlat8.x;
    u_xlat8.x = (x_374 * 0.947867334f);
    let x_379 : f32 = u_xlat8.x;
    u_xlat8.x = max(abs(x_379), 1.1920929e-07f);
    let x_385 : f32 = u_xlat8.x;
    u_xlat8.x = log2(x_385);
    let x_389 : f32 = u_xlat8.x;
    u_xlat8.x = (x_389 * 2.400000095f);
    let x_394 : f32 = u_xlat8.x;
    u_xlat8.x = exp2(x_394);
    let x_398 : f32 = u_xlat21;
    u_xlatb21 = (0.040449999f >= x_398);
    let x_400 : bool = u_xlatb21;
    if (x_400) {
      let x_405 : f32 = u_xlat1.x;
      x_401 = x_405;
    } else {
      let x_408 : f32 = u_xlat8.x;
      x_401 = x_408;
    }
    let x_409 : f32 = x_401;
    u_xlat21 = x_409;
    let x_411 : vec3<f32> = x_58.x_Vignette_Color;
    let x_413 : vec3<f32> = (-(x_411) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_414 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_413.x, x_413.y, x_413.z, x_414.w);
    let x_416 : f32 = u_xlat21;
    let x_418 : vec4<f32> = u_xlat1;
    let x_422 : vec3<f32> = x_58.x_Vignette_Color;
    let x_423 : vec3<f32> = ((vec3<f32>(x_416, x_416, x_416) * vec3<f32>(x_418.x, x_418.y, x_418.z)) + x_422);
    let x_424 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_423.x, x_423.y, x_423.z, x_424.w);
    let x_426 : vec3<f32> = u_xlat0;
    let x_427 : vec4<f32> = u_xlat1;
    let x_430 : vec3<f32> = u_xlat0;
    let x_432 : vec3<f32> = ((x_426 * vec3<f32>(x_427.x, x_427.y, x_427.z)) + -(x_430));
    let x_433 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_432.x, x_432.y, x_432.z, x_433.w);
    let x_437 : f32 = x_58.x_Vignette_Opacity;
    let x_439 : vec4<f32> = u_xlat1;
    let x_442 : vec3<f32> = u_xlat0;
    let x_443 : vec3<f32> = ((vec3<f32>(x_437, x_437, x_437) * vec3<f32>(x_439.x, x_439.y, x_439.z)) + x_442);
    let x_444 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_443.x, x_443.y, x_443.z, x_444.w);
    let x_447 : f32 = u_xlat1.w;
    u_xlat0.x = (x_447 + -1.0f);
    let x_450 : f32 = u_xlat21;
    let x_452 : f32 = u_xlat0.x;
    u_xlat3.w = ((x_450 * x_452) + 1.0f);
  }
  let x_456 : vec4<f32> = u_xlat3;
  u_xlat3 = x_456;
  let x_457 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_457, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_461 : vec4<f32> = u_xlat3;
  u_xlat0 = (vec3<f32>(x_461.z, x_461.x, x_461.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_466 : vec4<f32> = u_xlat3;
  let x_469 : vec3<f32> = max(vec3<f32>(x_466.z, x_466.x, x_466.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_470 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_469.x, x_469.y, x_469.z, x_470.w);
  let x_472 : vec4<f32> = u_xlat1;
  let x_474 : vec3<f32> = log2(vec3<f32>(x_472.x, x_472.y, x_472.z));
  let x_475 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_474.x, x_474.y, x_474.z, x_475.w);
  let x_477 : vec4<f32> = u_xlat1;
  let x_481 : vec3<f32> = (vec3<f32>(x_477.x, x_477.y, x_477.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_482 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_481.x, x_481.y, x_481.z, x_482.w);
  let x_484 : vec4<f32> = u_xlat1;
  let x_486 : vec3<f32> = exp2(vec3<f32>(x_484.x, x_484.y, x_484.z));
  let x_487 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_486.x, x_486.y, x_486.z, x_487.w);
  let x_489 : vec4<f32> = u_xlat1;
  let x_496 : vec3<f32> = ((vec3<f32>(x_489.x, x_489.y, x_489.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_497 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_496.x, x_496.y, x_496.z, x_497.w);
  let x_504 : vec4<f32> = u_xlat3;
  let x_507 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_504.z, x_504.x, x_504.y, x_504.z));
  u_xlatb4 = vec3<bool>(x_507.x, x_507.y, x_507.z);
  let x_510 : vec3<f32> = u_xlat0;
  hlslcc_movcTemp = x_510;
  let x_512 : bool = u_xlatb4.x;
  if (x_512) {
    let x_517 : f32 = u_xlat0.x;
    x_513 = x_517;
  } else {
    let x_520 : f32 = u_xlat1.x;
    x_513 = x_520;
  }
  let x_521 : f32 = x_513;
  hlslcc_movcTemp.x = x_521;
  let x_524 : bool = u_xlatb4.y;
  if (x_524) {
    let x_529 : f32 = u_xlat0.y;
    x_525 = x_529;
  } else {
    let x_532 : f32 = u_xlat1.y;
    x_525 = x_532;
  }
  let x_533 : f32 = x_525;
  hlslcc_movcTemp.y = x_533;
  let x_536 : bool = u_xlatb4.z;
  if (x_536) {
    let x_541 : f32 = u_xlat0.z;
    x_537 = x_541;
  } else {
    let x_544 : f32 = u_xlat1.z;
    x_537 = x_544;
  }
  let x_545 : f32 = x_537;
  hlslcc_movcTemp.z = x_545;
  let x_547 : vec3<f32> = hlslcc_movcTemp;
  u_xlat0 = x_547;
  let x_548 : vec3<f32> = u_xlat0;
  let x_551 : vec3<f32> = x_58.x_Lut2D_Params;
  u_xlat7 = (x_548 * vec3<f32>(x_551.z, x_551.z, x_551.z));
  let x_555 : f32 = u_xlat7.x;
  u_xlat7.x = floor(x_555);
  let x_559 : vec3<f32> = x_58.x_Lut2D_Params;
  let x_561 : vec2<f32> = (vec2<f32>(x_559.x, x_559.y) * vec2<f32>(0.5f, 0.5f));
  let x_562 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_561.x, x_561.y, x_562.z, x_562.w);
  let x_564 : vec3<f32> = u_xlat7;
  let x_567 : vec3<f32> = x_58.x_Lut2D_Params;
  let x_570 : vec4<f32> = u_xlat1;
  let x_572 : vec2<f32> = ((vec2<f32>(x_564.y, x_564.z) * vec2<f32>(x_567.x, x_567.y)) + vec2<f32>(x_570.x, x_570.y));
  let x_573 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_573.x, x_572.x, x_572.y, x_573.w);
  let x_576 : f32 = u_xlat7.x;
  let x_578 : f32 = x_58.x_Lut2D_Params.y;
  let x_581 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_576 * x_578) + x_581);
  let x_589 : vec4<f32> = u_xlat1;
  let x_591 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_589.x, x_589.z));
  let x_592 : vec3<f32> = vec3<f32>(x_591.x, x_591.y, x_591.z);
  let x_593 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_592.x, x_592.y, x_592.z, x_593.w);
  let x_596 : f32 = x_58.x_Lut2D_Params.y;
  u_xlat16.x = x_596;
  let x_599 : vec2<f32> = u_xlat16;
  let x_600 : vec4<f32> = u_xlat1;
  u_xlat14 = (x_599 + vec2<f32>(x_600.x, x_600.z));
  let x_606 : vec2<f32> = u_xlat14;
  let x_607 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_606);
  let x_608 : vec3<f32> = vec3<f32>(x_607.x, x_607.y, x_607.z);
  let x_609 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_608.x, x_608.y, x_608.z, x_609.w);
  let x_612 : f32 = u_xlat0.x;
  let x_614 : f32 = x_58.x_Lut2D_Params.z;
  let x_617 : f32 = u_xlat7.x;
  u_xlat0.x = ((x_612 * x_614) + -(x_617));
  let x_621 : vec4<f32> = u_xlat4;
  let x_624 : vec4<f32> = u_xlat1;
  u_xlat7 = (-(vec3<f32>(x_621.x, x_621.y, x_621.z)) + vec3<f32>(x_624.x, x_624.y, x_624.z));
  let x_627 : vec3<f32> = u_xlat0;
  let x_629 : vec3<f32> = u_xlat7;
  let x_631 : vec4<f32> = u_xlat4;
  u_xlat0 = ((vec3<f32>(x_627.x, x_627.x, x_627.x) * x_629) + vec3<f32>(x_631.x, x_631.y, x_631.z));
  let x_634 : vec3<f32> = u_xlat0;
  let x_636 : vec3<f32> = (x_634 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_637 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_636.x, x_636.y, x_636.z, x_637.w);
  let x_639 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_639 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_642 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_642 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_645 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_645), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_648 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_648);
  let x_650 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_650 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_653 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_653);
  let x_657 : vec3<f32> = u_xlat0;
  let x_659 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_657.x, x_657.y, x_657.z, x_657.x));
  u_xlatb0 = vec3<bool>(x_659.x, x_659.y, x_659.z);
  let x_662 : bool = u_xlatb0.x;
  if (x_662) {
    let x_667 : f32 = u_xlat1.x;
    x_663 = x_667;
  } else {
    let x_670 : f32 = u_xlat2.x;
    x_663 = x_670;
  }
  let x_671 : f32 = x_663;
  u_xlat3.x = x_671;
  let x_674 : bool = u_xlatb0.y;
  if (x_674) {
    let x_679 : f32 = u_xlat1.y;
    x_675 = x_679;
  } else {
    let x_682 : f32 = u_xlat2.y;
    x_675 = x_682;
  }
  let x_683 : f32 = x_675;
  u_xlat3.y = x_683;
  let x_686 : bool = u_xlatb0.z;
  if (x_686) {
    let x_691 : f32 = u_xlat1.z;
    x_687 = x_691;
  } else {
    let x_694 : f32 = u_xlat2.z;
    x_687 = x_694;
  }
  let x_695 : f32 = x_687;
  u_xlat3.z = x_695;
  let x_699 : f32 = x_58.x_LumaInAlpha;
  u_xlatb0.x = (0.5f < x_699);
  let x_703 : bool = u_xlatb0.x;
  if (x_703) {
    let x_706 : vec4<f32> = u_xlat3;
    u_xlat0 = vec3<f32>(x_706.x, x_706.y, x_706.z);
    let x_708 : vec3<f32> = u_xlat0;
    u_xlat0 = clamp(x_708, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_712 : vec3<f32> = u_xlat0;
    u_xlat3.w = dot(x_712, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_721 : vec4<f32> = u_xlat3;
  SV_Target0 = x_721;
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

