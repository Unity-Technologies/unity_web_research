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
  x_Lut2D_Params : vec3<f32>,
  x_PostExposure : f32,
  x_Vignette_Color : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_Vignette_Center : vec2<f32>,
  @size(8)
  padding_3 : u32,
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

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat16 : vec2<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat8 : vec3<f32>;

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

var<private> u_xlat15 : vec2<f32>;

@group(0) @binding(6) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(13) var sampler_Lut2D : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb6 : bool;

var<private> u_xlati22 : i32;

fn main_1() {
  var u_xlati_loop_1 : i32;
  var x_559 : f32;
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
  let x_130 : vec2<f32> = vs_TEXCOORD0;
  let x_131 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_130.x, x_130.y, x_131.z);
  u_xlati_loop_1 = 0i;
  loop {
    let x_141 : i32 = u_xlati_loop_1;
    let x_142 : i32 = u_xlati21;
    if ((x_141 < x_142)) {
    } else {
      break;
    }
    let x_146 : i32 = u_xlati_loop_1;
    u_xlat6.x = f32(x_146);
    let x_150 : f32 = u_xlat6.x;
    u_xlat6.x = (x_150 + 0.5f);
    let x_154 : f32 = u_xlat6.x;
    let x_156 : f32 = u_xlat1.x;
    u_xlat2.x = (x_154 / x_156);
    let x_159 : vec3<f32> = u_xlat8;
    let x_160 : vec2<f32> = vec2<f32>(x_159.x, x_159.y);
    let x_161 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_160.x, x_160.y, x_161.z, x_161.w);
    let x_163 : vec4<f32> = u_xlat6;
    let x_167 : vec2<f32> = clamp(vec2<f32>(x_163.x, x_163.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_168 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_167.x, x_167.y, x_168.z, x_168.w);
    let x_170 : vec4<f32> = u_xlat6;
    let x_174 : f32 = x_51.x_RenderViewportScaleFactor;
    let x_176 : vec2<f32> = (vec2<f32>(x_170.x, x_170.y) * vec2<f32>(x_174, x_174));
    let x_177 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_176.x, x_176.y, x_177.z, x_177.w);
    let x_184 : vec4<f32> = u_xlat6;
    let x_186 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_184.x, x_184.y), 0.0f);
    u_xlat6 = x_186;
    let x_192 : vec3<f32> = u_xlat2;
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
    let x_206 : vec2<f32> = u_xlat7;
    let x_207 : vec3<f32> = u_xlat8;
    let x_209 : vec2<f32> = (x_206 + vec2<f32>(x_207.x, x_207.y));
    let x_210 : vec3<f32> = u_xlat8;
    u_xlat8 = vec3<f32>(x_209.x, x_209.y, x_210.z);

    continuing {
      let x_212 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_212 + 1i);
    }
  }
  let x_214 : vec4<f32> = u_xlat4;
  let x_215 : vec4<f32> = u_xlat5;
  u_xlat1 = (x_214 / x_215);
  let x_217 : vec4<f32> = u_xlat0;
  let x_219 : vec4<f32> = u_xlat1;
  let x_221 : vec3<f32> = (vec3<f32>(x_217.x, x_217.x, x_217.x) * vec3<f32>(x_219.x, x_219.y, x_219.z));
  let x_222 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_221.x, x_221.y, x_221.z, x_222.w);
  let x_225 : vec4<f32> = x_51.x_BloomTex_TexelSize;
  u_xlat0 = (vec4<f32>(x_225.x, x_225.y, x_225.x, x_225.y) * vec4<f32>(-1.0f, -1.0f, 1.0f, 1.0f));
  let x_231 : f32 = x_51.x_Bloom_Settings.x;
  u_xlat2.x = (x_231 * 0.5f);
  let x_234 : vec4<f32> = u_xlat0;
  let x_236 : vec3<f32> = u_xlat2;
  let x_239 : vec2<f32> = vs_TEXCOORD0;
  u_xlat3 = ((vec4<f32>(x_234.x, x_234.y, x_234.z, x_234.y) * vec4<f32>(x_236.x, x_236.x, x_236.x, x_236.x)) + vec4<f32>(x_239.x, x_239.y, x_239.x, x_239.y));
  let x_242 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_242, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_246 : vec4<f32> = u_xlat3;
  let x_248 : f32 = x_51.x_RenderViewportScaleFactor;
  u_xlat3 = (x_246 * vec4<f32>(x_248, x_248, x_248, x_248));
  let x_256 : vec4<f32> = u_xlat3;
  let x_258 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_256.x, x_256.y));
  u_xlat4 = x_258;
  let x_262 : vec4<f32> = u_xlat3;
  let x_264 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_262.z, x_262.w));
  u_xlat3 = x_264;
  let x_265 : vec4<f32> = u_xlat3;
  let x_266 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_265 + x_266);
  let x_268 : vec4<f32> = u_xlat0;
  let x_270 : vec3<f32> = u_xlat2;
  let x_273 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = ((vec4<f32>(x_268.x, x_268.w, x_268.z, x_268.w) * vec4<f32>(x_270.x, x_270.x, x_270.x, x_270.x)) + vec4<f32>(x_273.x, x_273.y, x_273.x, x_273.y));
  let x_276 : vec4<f32> = u_xlat0;
  u_xlat0 = clamp(x_276, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_280 : vec4<f32> = u_xlat0;
  let x_282 : f32 = x_51.x_RenderViewportScaleFactor;
  u_xlat0 = (x_280 * vec4<f32>(x_282, x_282, x_282, x_282));
  let x_288 : vec4<f32> = u_xlat0;
  let x_290 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_288.x, x_288.y));
  u_xlat4 = x_290;
  let x_291 : vec4<f32> = u_xlat3;
  let x_292 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_291 + x_292);
  let x_297 : vec4<f32> = u_xlat0;
  let x_299 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_297.z, x_297.w));
  u_xlat0 = x_299;
  let x_300 : vec4<f32> = u_xlat0;
  let x_301 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_300 + x_301);
  let x_303 : vec4<f32> = u_xlat0;
  let x_306 : vec3<f32> = x_51.x_Bloom_Settings;
  u_xlat0 = (x_303 * vec4<f32>(x_306.y, x_306.y, x_306.y, x_306.y));
  let x_309 : vec2<f32> = vs_TEXCOORD0;
  let x_312 : vec4<f32> = x_51.x_Bloom_DirtTileOffset;
  let x_316 : vec4<f32> = x_51.x_Bloom_DirtTileOffset;
  let x_318 : vec2<f32> = ((x_309 * vec2<f32>(x_312.x, x_312.y)) + vec2<f32>(x_316.z, x_316.w));
  let x_319 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_318.x, x_318.y, x_319.z);
  let x_326 : vec3<f32> = u_xlat2;
  let x_328 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_326.x, x_326.y));
  let x_329 : vec3<f32> = vec3<f32>(x_328.x, x_328.y, x_328.z);
  let x_330 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_329.x, x_329.y, x_329.z, x_330.w);
  let x_332 : vec4<f32> = u_xlat0;
  let x_336 : vec3<f32> = (vec3<f32>(x_332.x, x_332.y, x_332.z) * vec3<f32>(0.25f, 0.25f, 0.25f));
  let x_337 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_336.x, x_336.y, x_336.z, x_337.w);
  let x_339 : vec4<f32> = u_xlat3;
  let x_342 : vec3<f32> = x_51.x_Bloom_Settings;
  let x_344 : vec3<f32> = (vec3<f32>(x_339.x, x_339.y, x_339.z) * vec3<f32>(x_342.z, x_342.z, x_342.z));
  let x_345 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_344.x, x_344.y, x_344.z, x_345.w);
  let x_347 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_347 * vec4<f32>(0.25f, 0.25f, 0.25f, 1.0f));
  let x_350 : vec4<f32> = u_xlat0;
  let x_354 : vec3<f32> = x_51.x_Bloom_Color;
  let x_355 : vec3<f32> = (vec3<f32>(x_350.x, x_350.y, x_350.z) * x_354);
  let x_356 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_355.x, x_355.y, x_355.z, x_356.w);
  let x_359 : f32 = u_xlat0.w;
  u_xlat5.w = (x_359 * 0.25f);
  let x_362 : vec4<f32> = u_xlat1;
  let x_363 : vec4<f32> = u_xlat5;
  u_xlat0 = (x_362 + x_363);
  let x_365 : vec4<f32> = u_xlat4;
  let x_367 : vec4<f32> = u_xlat3;
  let x_369 : vec3<f32> = (vec3<f32>(x_365.x, x_365.y, x_365.z) * vec3<f32>(x_367.x, x_367.y, x_367.z));
  let x_370 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_369.x, x_369.y, x_369.z, x_370.w);
  u_xlat1.w = 0.0f;
  let x_373 : vec4<f32> = u_xlat0;
  let x_374 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_373 + x_374);
  let x_380 : f32 = x_51.x_Vignette_Mode;
  u_xlatb1 = (x_380 < 0.5f);
  let x_382 : bool = u_xlatb1;
  if (x_382) {
    let x_385 : vec2<f32> = vs_TEXCOORD0;
    let x_389 : vec2<f32> = x_51.x_Vignette_Center;
    let x_391 : vec2<f32> = (x_385 + -(x_389));
    let x_392 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_391.x, x_391.y, x_392.z, x_392.w);
    let x_394 : vec4<f32> = u_xlat1;
    let x_399 : vec4<f32> = x_51.x_Vignette_Settings;
    let x_401 : vec2<f32> = (abs(vec2<f32>(x_394.y, x_394.x)) * vec2<f32>(x_399.x, x_399.x));
    let x_402 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_402.x, x_401.x, x_401.y, x_402.w);
    let x_406 : f32 = x_51.x_ScreenParams.x;
    let x_408 : f32 = x_51.x_ScreenParams.y;
    u_xlat22 = (x_406 / x_408);
    let x_410 : f32 = u_xlat22;
    u_xlat22 = (x_410 + -1.0f);
    let x_413 : f32 = x_51.x_Vignette_Settings.w;
    let x_414 : f32 = u_xlat22;
    u_xlat22 = ((x_413 * x_414) + 1.0f);
    let x_417 : f32 = u_xlat22;
    let x_419 : f32 = u_xlat1.z;
    u_xlat1.x = (x_417 * x_419);
    let x_422 : vec4<f32> = u_xlat1;
    let x_423 : vec2<f32> = vec2<f32>(x_422.x, x_422.y);
    let x_424 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_423.x, x_423.y, x_424.z, x_424.w);
    let x_426 : vec4<f32> = u_xlat1;
    let x_430 : vec2<f32> = clamp(vec2<f32>(x_426.x, x_426.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_431 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_430.x, x_430.y, x_431.z, x_431.w);
    let x_433 : vec4<f32> = u_xlat1;
    let x_435 : vec2<f32> = log2(vec2<f32>(x_433.x, x_433.y));
    let x_436 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_435.x, x_435.y, x_436.z, x_436.w);
    let x_438 : vec4<f32> = u_xlat1;
    let x_441 : vec4<f32> = x_51.x_Vignette_Settings;
    let x_443 : vec2<f32> = (vec2<f32>(x_438.x, x_438.y) * vec2<f32>(x_441.z, x_441.z));
    let x_444 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_443.x, x_443.y, x_444.z, x_444.w);
    let x_446 : vec4<f32> = u_xlat1;
    let x_448 : vec2<f32> = exp2(vec2<f32>(x_446.x, x_446.y));
    let x_449 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_448.x, x_448.y, x_449.z, x_449.w);
    let x_451 : vec4<f32> = u_xlat1;
    let x_453 : vec4<f32> = u_xlat1;
    u_xlat1.x = dot(vec2<f32>(x_451.x, x_451.y), vec2<f32>(x_453.x, x_453.y));
    let x_458 : f32 = u_xlat1.x;
    u_xlat1.x = (-(x_458) + 1.0f);
    let x_463 : f32 = u_xlat1.x;
    u_xlat1.x = max(x_463, 0.0f);
    let x_467 : f32 = u_xlat1.x;
    u_xlat1.x = log2(x_467);
    let x_471 : f32 = u_xlat1.x;
    let x_473 : f32 = x_51.x_Vignette_Settings.y;
    u_xlat1.x = (x_471 * x_473);
    let x_477 : f32 = u_xlat1.x;
    u_xlat1.x = exp2(x_477);
    let x_482 : vec3<f32> = x_51.x_Vignette_Color;
    u_xlat8 = (-(x_482) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_486 : vec4<f32> = u_xlat1;
    let x_488 : vec3<f32> = u_xlat8;
    let x_491 : vec3<f32> = x_51.x_Vignette_Color;
    u_xlat8 = ((vec3<f32>(x_486.x, x_486.x, x_486.x) * x_488) + x_491);
    let x_493 : vec4<f32> = u_xlat0;
    let x_495 : vec3<f32> = u_xlat8;
    let x_496 : vec3<f32> = (vec3<f32>(x_493.x, x_493.y, x_493.z) * x_495);
    let x_497 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_496.x, x_496.y, x_496.z, x_497.w);
    let x_500 : f32 = u_xlat0.w;
    u_xlat8.x = (x_500 + -1.0f);
    let x_504 : f32 = u_xlat1.x;
    let x_506 : f32 = u_xlat8.x;
    u_xlat3.w = ((x_504 * x_506) + 1.0f);
  } else {
    let x_516 : vec2<f32> = vs_TEXCOORD0;
    let x_517 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_516);
    u_xlat1.x = x_517.w;
    let x_521 : f32 = u_xlat1.x;
    u_xlat1.z = (x_521 + 0.055f);
    let x_525 : vec4<f32> = u_xlat1;
    let x_530 : vec2<f32> = (vec2<f32>(x_525.x, x_525.z) * vec2<f32>(0.077399381f, 0.947867334f));
    let x_531 : vec3<f32> = u_xlat8;
    u_xlat8 = vec3<f32>(x_530.x, x_530.y, x_531.z);
    let x_535 : f32 = u_xlat8.y;
    u_xlat15.x = max(abs(x_535), 1.1920929e-07f);
    let x_541 : f32 = u_xlat15.x;
    u_xlat15.x = log2(x_541);
    let x_545 : f32 = u_xlat15.x;
    u_xlat15.x = (x_545 * 2.400000095f);
    let x_550 : f32 = u_xlat15.x;
    u_xlat15.x = exp2(x_550);
    let x_555 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_555);
    let x_557 : bool = u_xlatb1;
    if (x_557) {
      let x_563 : f32 = u_xlat8.x;
      x_559 = x_563;
    } else {
      let x_566 : f32 = u_xlat15.x;
      x_559 = x_566;
    }
    let x_567 : f32 = x_559;
    u_xlat1.x = x_567;
    let x_570 : vec3<f32> = x_51.x_Vignette_Color;
    u_xlat8 = (-(x_570) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_573 : vec4<f32> = u_xlat1;
    let x_575 : vec3<f32> = u_xlat8;
    let x_578 : vec3<f32> = x_51.x_Vignette_Color;
    u_xlat8 = ((vec3<f32>(x_573.x, x_573.x, x_573.x) * x_575) + x_578);
    let x_580 : vec4<f32> = u_xlat0;
    let x_582 : vec3<f32> = u_xlat8;
    let x_584 : vec4<f32> = u_xlat0;
    u_xlat8 = ((vec3<f32>(x_580.x, x_580.y, x_580.z) * x_582) + -(vec3<f32>(x_584.x, x_584.y, x_584.z)));
    let x_590 : f32 = x_51.x_Vignette_Opacity;
    let x_592 : vec3<f32> = u_xlat8;
    let x_594 : vec4<f32> = u_xlat0;
    let x_596 : vec3<f32> = ((vec3<f32>(x_590, x_590, x_590) * x_592) + vec3<f32>(x_594.x, x_594.y, x_594.z));
    let x_597 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_596.x, x_596.y, x_596.z, x_597.w);
    let x_600 : f32 = u_xlat0.w;
    u_xlat0.x = (x_600 + -1.0f);
    let x_604 : f32 = u_xlat1.x;
    let x_606 : f32 = u_xlat0.x;
    u_xlat3.w = ((x_604 * x_606) + 1.0f);
  }
  let x_610 : vec4<f32> = u_xlat3;
  let x_613 : f32 = x_51.x_PostExposure;
  let x_615 : f32 = x_51.x_PostExposure;
  let x_617 : f32 = x_51.x_PostExposure;
  let x_619 : f32 = x_51.x_PostExposure;
  let x_620 : vec4<f32> = vec4<f32>(x_613, x_615, x_617, x_619);
  u_xlat0 = (x_610 * vec4<f32>(x_620.x, x_620.y, x_620.z, x_620.w));
  let x_627 : vec4<f32> = u_xlat0;
  let x_634 : vec3<f32> = ((vec3<f32>(x_627.z, x_627.x, x_627.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_635 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_634.x, x_634.y, x_634.z, x_635.w);
  let x_637 : vec4<f32> = u_xlat1;
  let x_639 : vec3<f32> = log2(vec3<f32>(x_637.x, x_637.y, x_637.z));
  let x_640 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_639.x, x_639.y, x_639.z, x_640.w);
  let x_642 : vec4<f32> = u_xlat1;
  let x_649 : vec3<f32> = ((vec3<f32>(x_642.x, x_642.y, x_642.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_650 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_649.x, x_649.y, x_649.z, x_650.w);
  let x_652 : vec4<f32> = u_xlat1;
  let x_656 : vec3<f32> = clamp(vec3<f32>(x_652.x, x_652.y, x_652.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_657 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_656.x, x_656.y, x_656.z, x_657.w);
  let x_659 : vec4<f32> = u_xlat1;
  let x_663 : vec3<f32> = x_51.x_Lut2D_Params;
  u_xlat8 = (vec3<f32>(x_659.x, x_659.y, x_659.z) * vec3<f32>(x_663.z, x_663.z, x_663.z));
  let x_667 : f32 = u_xlat8.x;
  u_xlat8.x = floor(x_667);
  let x_671 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_673 : vec2<f32> = (vec2<f32>(x_671.x, x_671.y) * vec2<f32>(0.5f, 0.5f));
  let x_674 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_673.x, x_673.y, x_674.z);
  let x_676 : vec3<f32> = u_xlat8;
  let x_679 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_682 : vec3<f32> = u_xlat2;
  let x_684 : vec2<f32> = ((vec2<f32>(x_676.y, x_676.z) * vec2<f32>(x_679.x, x_679.y)) + vec2<f32>(x_682.x, x_682.y));
  let x_685 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_685.x, x_684.x, x_684.y, x_685.w);
  let x_688 : f32 = u_xlat8.x;
  let x_690 : f32 = x_51.x_Lut2D_Params.y;
  let x_693 : f32 = u_xlat3.y;
  u_xlat3.x = ((x_688 * x_690) + x_693);
  let x_701 : vec4<f32> = u_xlat3;
  let x_703 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_701.x, x_701.z));
  let x_704 : vec3<f32> = vec3<f32>(x_703.x, x_703.y, x_703.z);
  let x_705 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_704.x, x_704.y, x_704.z, x_705.w);
  let x_708 : f32 = x_51.x_Lut2D_Params.y;
  u_xlat16.x = x_708;
  let x_710 : vec2<f32> = u_xlat16;
  let x_711 : vec4<f32> = u_xlat3;
  u_xlat15 = (x_710 + vec2<f32>(x_711.x, x_711.z));
  let x_717 : vec2<f32> = u_xlat15;
  let x_718 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_717);
  u_xlat2 = vec3<f32>(x_718.x, x_718.y, x_718.z);
  let x_721 : f32 = u_xlat1.x;
  let x_723 : f32 = x_51.x_Lut2D_Params.z;
  let x_726 : f32 = u_xlat8.x;
  u_xlat1.x = ((x_721 * x_723) + -(x_726));
  let x_730 : vec4<f32> = u_xlat4;
  let x_733 : vec3<f32> = u_xlat2;
  u_xlat8 = (-(vec3<f32>(x_730.x, x_730.y, x_730.z)) + x_733);
  let x_735 : vec4<f32> = u_xlat1;
  let x_737 : vec3<f32> = u_xlat8;
  let x_739 : vec4<f32> = u_xlat4;
  let x_741 : vec3<f32> = ((vec3<f32>(x_735.x, x_735.x, x_735.x) * x_737) + vec3<f32>(x_739.x, x_739.y, x_739.z));
  let x_742 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_741.x, x_741.y, x_741.z, x_742.w);
  let x_746 : f32 = x_51.x_LumaInAlpha;
  u_xlatb1 = (0.5f < x_746);
  let x_748 : bool = u_xlatb1;
  if (x_748) {
    let x_751 : vec4<f32> = u_xlat0;
    let x_752 : vec3<f32> = vec3<f32>(x_751.x, x_751.y, x_751.z);
    let x_753 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_752.x, x_752.y, x_752.z, x_753.w);
    let x_755 : vec4<f32> = u_xlat1;
    let x_759 : vec3<f32> = clamp(vec3<f32>(x_755.x, x_755.y, x_755.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_760 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_759.x, x_759.y, x_759.z, x_760.w);
    let x_762 : vec4<f32> = u_xlat1;
    u_xlat0.w = dot(vec3<f32>(x_762.x, x_762.y, x_762.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_772 : vec4<f32> = u_xlat0;
  SV_Target0 = x_772;
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

