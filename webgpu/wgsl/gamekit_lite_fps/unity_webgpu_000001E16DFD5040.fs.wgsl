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

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat16 : vec2<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat8 : vec3<f32>;

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

@group(0) @binding(7) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(15) var sampler_Lut2D : sampler;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_DitheringTex : sampler;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb6 : bool;

var<private> u_xlati22 : i32;

fn main_1() {
  var u_xlati_loop_1 : i32;
  var x_552 : f32;
  var x_847 : f32;
  var x_859 : f32;
  var x_871 : f32;
  var x_923 : f32;
  var x_936 : f32;
  var x_948 : f32;
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
  let x_129 : vec2<f32> = vs_TEXCOORD0;
  let x_130 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_129.x, x_129.y, x_130.z);
  u_xlati_loop_1 = 0i;
  loop {
    let x_140 : i32 = u_xlati_loop_1;
    let x_141 : i32 = u_xlati21;
    if ((x_140 < x_141)) {
    } else {
      break;
    }
    let x_145 : i32 = u_xlati_loop_1;
    u_xlat6.x = f32(x_145);
    let x_149 : f32 = u_xlat6.x;
    u_xlat6.x = (x_149 + 0.5f);
    let x_153 : f32 = u_xlat6.x;
    let x_155 : f32 = u_xlat1.x;
    u_xlat2.x = (x_153 / x_155);
    let x_158 : vec3<f32> = u_xlat8;
    let x_159 : vec2<f32> = vec2<f32>(x_158.x, x_158.y);
    let x_160 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_159.x, x_159.y, x_160.z, x_160.w);
    let x_162 : vec4<f32> = u_xlat6;
    let x_166 : vec2<f32> = clamp(vec2<f32>(x_162.x, x_162.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_167 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_166.x, x_166.y, x_167.z, x_167.w);
    let x_169 : vec4<f32> = u_xlat6;
    let x_173 : f32 = x_51.x_RenderViewportScaleFactor;
    let x_175 : vec2<f32> = (vec2<f32>(x_169.x, x_169.y) * vec2<f32>(x_173, x_173));
    let x_176 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_175.x, x_175.y, x_176.z, x_176.w);
    let x_183 : vec4<f32> = u_xlat6;
    let x_185 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_183.x, x_183.y), 0.0f);
    u_xlat6 = x_185;
    let x_191 : vec3<f32> = u_xlat2;
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
    let x_205 : vec2<f32> = u_xlat7;
    let x_206 : vec3<f32> = u_xlat8;
    let x_208 : vec2<f32> = (x_205 + vec2<f32>(x_206.x, x_206.y));
    let x_209 : vec3<f32> = u_xlat8;
    u_xlat8 = vec3<f32>(x_208.x, x_208.y, x_209.z);

    continuing {
      let x_211 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_211 + 1i);
    }
  }
  let x_213 : vec4<f32> = u_xlat4;
  let x_214 : vec4<f32> = u_xlat5;
  u_xlat1 = (x_213 / x_214);
  let x_216 : vec4<f32> = u_xlat0;
  let x_218 : vec4<f32> = u_xlat1;
  let x_220 : vec3<f32> = (vec3<f32>(x_216.x, x_216.x, x_216.x) * vec3<f32>(x_218.x, x_218.y, x_218.z));
  let x_221 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_220.x, x_220.y, x_220.z, x_221.w);
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
    u_xlat15 = max(abs(x_535), 1.1920929e-07f);
    let x_539 : f32 = u_xlat15;
    u_xlat15 = log2(x_539);
    let x_541 : f32 = u_xlat15;
    u_xlat15 = (x_541 * 2.400000095f);
    let x_544 : f32 = u_xlat15;
    u_xlat15 = exp2(x_544);
    let x_548 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_548);
    let x_550 : bool = u_xlatb1;
    if (x_550) {
      let x_556 : f32 = u_xlat8.x;
      x_552 = x_556;
    } else {
      let x_558 : f32 = u_xlat15;
      x_552 = x_558;
    }
    let x_559 : f32 = x_552;
    u_xlat1.x = x_559;
    let x_562 : vec3<f32> = x_51.x_Vignette_Color;
    u_xlat8 = (-(x_562) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_565 : vec4<f32> = u_xlat1;
    let x_567 : vec3<f32> = u_xlat8;
    let x_570 : vec3<f32> = x_51.x_Vignette_Color;
    u_xlat8 = ((vec3<f32>(x_565.x, x_565.x, x_565.x) * x_567) + x_570);
    let x_572 : vec4<f32> = u_xlat0;
    let x_574 : vec3<f32> = u_xlat8;
    let x_576 : vec4<f32> = u_xlat0;
    u_xlat8 = ((vec3<f32>(x_572.x, x_572.y, x_572.z) * x_574) + -(vec3<f32>(x_576.x, x_576.y, x_576.z)));
    let x_582 : f32 = x_51.x_Vignette_Opacity;
    let x_584 : vec3<f32> = u_xlat8;
    let x_586 : vec4<f32> = u_xlat0;
    let x_588 : vec3<f32> = ((vec3<f32>(x_582, x_582, x_582) * x_584) + vec3<f32>(x_586.x, x_586.y, x_586.z));
    let x_589 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_588.x, x_588.y, x_588.z, x_589.w);
    let x_592 : f32 = u_xlat0.w;
    u_xlat0.x = (x_592 + -1.0f);
    let x_596 : f32 = u_xlat1.x;
    let x_598 : f32 = u_xlat0.x;
    u_xlat3.w = ((x_596 * x_598) + 1.0f);
  }
  let x_602 : vec4<f32> = u_xlat3;
  let x_605 : f32 = x_51.x_PostExposure;
  let x_607 : f32 = x_51.x_PostExposure;
  let x_609 : f32 = x_51.x_PostExposure;
  let x_611 : f32 = x_51.x_PostExposure;
  let x_612 : vec4<f32> = vec4<f32>(x_605, x_607, x_609, x_611);
  u_xlat0 = (x_602 * vec4<f32>(x_612.x, x_612.y, x_612.z, x_612.w));
  let x_619 : vec4<f32> = u_xlat0;
  let x_626 : vec3<f32> = ((vec3<f32>(x_619.z, x_619.x, x_619.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_627 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_626.x, x_626.y, x_626.z, x_627.w);
  let x_629 : vec4<f32> = u_xlat0;
  let x_631 : vec3<f32> = log2(vec3<f32>(x_629.x, x_629.y, x_629.z));
  let x_632 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_631.x, x_631.y, x_631.z, x_632.w);
  let x_634 : vec4<f32> = u_xlat0;
  let x_641 : vec3<f32> = ((vec3<f32>(x_634.x, x_634.y, x_634.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_642 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_641.x, x_641.y, x_641.z, x_642.w);
  let x_644 : vec4<f32> = u_xlat0;
  let x_648 : vec3<f32> = clamp(vec3<f32>(x_644.x, x_644.y, x_644.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_649 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_648.x, x_648.y, x_648.z, x_649.w);
  let x_651 : vec4<f32> = u_xlat0;
  let x_655 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_657 : vec3<f32> = (vec3<f32>(x_651.x, x_651.y, x_651.z) * vec3<f32>(x_655.z, x_655.z, x_655.z));
  let x_658 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_657.x, x_657.y, x_657.z, x_658.w);
  let x_661 : f32 = u_xlat1.x;
  u_xlat7.x = floor(x_661);
  let x_665 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_667 : vec2<f32> = (vec2<f32>(x_665.x, x_665.y) * vec2<f32>(0.5f, 0.5f));
  let x_668 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_667.x, x_668.y, x_668.z, x_667.y);
  let x_670 : vec4<f32> = u_xlat1;
  let x_673 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_676 : vec4<f32> = u_xlat1;
  let x_678 : vec2<f32> = ((vec2<f32>(x_670.y, x_670.z) * vec2<f32>(x_673.x, x_673.y)) + vec2<f32>(x_676.x, x_676.w));
  let x_679 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_679.x, x_678.x, x_678.y, x_679.w);
  let x_682 : f32 = u_xlat7.x;
  let x_684 : f32 = x_51.x_Lut2D_Params.y;
  let x_687 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_682 * x_684) + x_687);
  let x_695 : vec4<f32> = u_xlat1;
  let x_697 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_695.x, x_695.z));
  let x_698 : vec3<f32> = vec3<f32>(x_697.x, x_697.y, x_697.z);
  let x_699 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_698.x, x_698.y, x_698.z, x_699.w);
  let x_702 : f32 = x_51.x_Lut2D_Params.y;
  u_xlat16.x = x_702;
  let x_704 : vec2<f32> = u_xlat16;
  let x_705 : vec4<f32> = u_xlat1;
  let x_707 : vec2<f32> = (x_704 + vec2<f32>(x_705.x, x_705.z));
  let x_708 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_707.x, x_707.y, x_708.z, x_708.w);
  let x_713 : vec4<f32> = u_xlat1;
  let x_715 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_713.x, x_713.y));
  let x_716 : vec3<f32> = vec3<f32>(x_715.x, x_715.y, x_715.z);
  let x_717 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_716.x, x_716.y, x_716.z, x_717.w);
  let x_720 : f32 = u_xlat0.x;
  let x_722 : f32 = x_51.x_Lut2D_Params.z;
  let x_725 : f32 = u_xlat7.x;
  u_xlat0.x = ((x_720 * x_722) + -(x_725));
  let x_729 : vec4<f32> = u_xlat3;
  let x_732 : vec4<f32> = u_xlat1;
  let x_734 : vec3<f32> = (-(vec3<f32>(x_729.x, x_729.y, x_729.z)) + vec3<f32>(x_732.x, x_732.y, x_732.z));
  let x_735 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_734.x, x_734.y, x_734.z, x_735.w);
  let x_737 : vec4<f32> = u_xlat0;
  let x_739 : vec4<f32> = u_xlat1;
  let x_742 : vec4<f32> = u_xlat3;
  let x_744 : vec3<f32> = ((vec3<f32>(x_737.x, x_737.x, x_737.x) * vec3<f32>(x_739.x, x_739.y, x_739.z)) + vec3<f32>(x_742.x, x_742.y, x_742.z));
  let x_745 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_744.x, x_744.y, x_744.z, x_745.w);
  let x_747 : vec2<f32> = vs_TEXCOORD0;
  let x_750 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_754 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_756 : vec2<f32> = ((x_747 * vec2<f32>(x_750.x, x_750.y)) + vec2<f32>(x_754.z, x_754.w));
  let x_757 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_756.x, x_756.y, x_757.z, x_757.w);
  let x_764 : vec4<f32> = u_xlat1;
  let x_766 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_764.x, x_764.y));
  u_xlat1.x = x_766.w;
  let x_770 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_770 * 2.0f) + -1.0f);
  let x_775 : f32 = u_xlat1.x;
  u_xlat8.x = ((x_775 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_781 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_781, 0.0f, 1.0f);
  let x_785 : f32 = u_xlat8.x;
  u_xlat8.x = ((x_785 * 2.0f) + -1.0f);
  let x_790 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_790)) + 1.0f);
  let x_796 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_796);
  let x_800 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_800) + 1.0f);
  let x_805 : f32 = u_xlat1.x;
  let x_807 : f32 = u_xlat8.x;
  u_xlat1.x = (x_805 * x_807);
  let x_810 : vec4<f32> = u_xlat0;
  u_xlat8 = (vec3<f32>(x_810.x, x_810.y, x_810.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_815 : vec4<f32> = u_xlat0;
  u_xlat2 = max(abs(vec3<f32>(x_815.x, x_815.y, x_815.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_820 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_820);
  let x_822 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_822 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_826 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_826);
  let x_828 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_828 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_840 : vec4<f32> = u_xlat0;
  let x_843 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_840.x, x_840.y, x_840.z, x_840.x));
  u_xlatb0 = vec3<bool>(x_843.x, x_843.y, x_843.z);
  let x_846 : bool = u_xlatb0.x;
  if (x_846) {
    let x_851 : f32 = u_xlat8.x;
    x_847 = x_851;
  } else {
    let x_854 : f32 = u_xlat2.x;
    x_847 = x_854;
  }
  let x_855 : f32 = x_847;
  u_xlat0.x = x_855;
  let x_858 : bool = u_xlatb0.y;
  if (x_858) {
    let x_863 : f32 = u_xlat8.y;
    x_859 = x_863;
  } else {
    let x_866 : f32 = u_xlat2.y;
    x_859 = x_866;
  }
  let x_867 : f32 = x_859;
  u_xlat0.y = x_867;
  let x_870 : bool = u_xlatb0.z;
  if (x_870) {
    let x_875 : f32 = u_xlat8.z;
    x_871 = x_875;
  } else {
    let x_878 : f32 = u_xlat2.z;
    x_871 = x_878;
  }
  let x_879 : f32 = x_871;
  u_xlat0.z = x_879;
  let x_881 : vec4<f32> = u_xlat1;
  let x_886 : vec4<f32> = u_xlat0;
  let x_888 : vec3<f32> = ((vec3<f32>(x_881.x, x_881.x, x_881.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_886.x, x_886.y, x_886.z));
  let x_889 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_888.x, x_888.y, x_888.z, x_889.w);
  let x_891 : vec4<f32> = u_xlat0;
  let x_894 : vec3<f32> = (vec3<f32>(x_891.x, x_891.y, x_891.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_895 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_894.x, x_894.y, x_894.z, x_895.w);
  let x_897 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_897.x, x_897.y, x_897.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_901 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_901 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_904 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_904), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_907 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_907);
  let x_909 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_909 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_912 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_912);
  let x_915 : vec4<f32> = u_xlat0;
  let x_917 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_915.x, x_915.y, x_915.z, x_915.x));
  u_xlatb0 = vec3<bool>(x_917.x, x_917.y, x_917.z);
  let x_922 : bool = u_xlatb0.x;
  if (x_922) {
    let x_927 : f32 = u_xlat1.x;
    x_923 = x_927;
  } else {
    let x_930 : f32 = u_xlat2.x;
    x_923 = x_930;
  }
  let x_931 : f32 = x_923;
  SV_Target0.x = x_931;
  let x_935 : bool = u_xlatb0.y;
  if (x_935) {
    let x_940 : f32 = u_xlat1.y;
    x_936 = x_940;
  } else {
    let x_943 : f32 = u_xlat2.y;
    x_936 = x_943;
  }
  let x_944 : f32 = x_936;
  SV_Target0.y = x_944;
  let x_947 : bool = u_xlatb0.z;
  if (x_947) {
    let x_952 : f32 = u_xlat1.z;
    x_948 = x_952;
  } else {
    let x_955 : f32 = u_xlat2.z;
    x_948 = x_955;
  }
  let x_956 : f32 = x_948;
  SV_Target0.z = x_956;
  let x_959 : f32 = u_xlat0.w;
  SV_Target0.w = x_959;
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

