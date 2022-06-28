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

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat16 : vec2<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat8 : vec3<f32>;

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

var<private> u_xlat9 : f32;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(9) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(18) var sampler_GrainTex : sampler;

@group(0) @binding(7) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(16) var sampler_Lut2D : sampler;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_DitheringTex : sampler;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb6 : bool;

var<private> u_xlati22 : i32;

fn main_1() {
  var u_xlati_loop_1 : i32;
  var x_548 : f32;
  var x_926 : f32;
  var x_938 : f32;
  var x_950 : f32;
  var x_1002 : f32;
  var x_1015 : f32;
  var x_1027 : f32;
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
    u_xlat8 = (vec3<f32>(x_493.x, x_493.y, x_493.z) * x_495);
    let x_498 : f32 = u_xlat0.w;
    u_xlat2.x = (x_498 + -1.0f);
    let x_502 : f32 = u_xlat1.x;
    let x_504 : f32 = u_xlat2.x;
    u_xlat3.w = ((x_502 * x_504) + 1.0f);
  } else {
    let x_514 : vec2<f32> = vs_TEXCOORD0;
    let x_515 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_514);
    u_xlat1.x = x_515.w;
    let x_519 : f32 = u_xlat1.x;
    u_xlat2.x = (x_519 * 0.077399381f);
    let x_525 : f32 = u_xlat1.x;
    u_xlat9 = (x_525 + 0.055f);
    let x_528 : f32 = u_xlat9;
    u_xlat9 = (x_528 * 0.947867334f);
    let x_531 : f32 = u_xlat9;
    u_xlat9 = max(abs(x_531), 1.1920929e-07f);
    let x_535 : f32 = u_xlat9;
    u_xlat9 = log2(x_535);
    let x_537 : f32 = u_xlat9;
    u_xlat9 = (x_537 * 2.400000095f);
    let x_540 : f32 = u_xlat9;
    u_xlat9 = exp2(x_540);
    let x_544 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_544);
    let x_546 : bool = u_xlatb1;
    if (x_546) {
      let x_552 : f32 = u_xlat2.x;
      x_548 = x_552;
    } else {
      let x_554 : f32 = u_xlat9;
      x_548 = x_554;
    }
    let x_555 : f32 = x_548;
    u_xlat1.x = x_555;
    let x_558 : vec3<f32> = x_51.x_Vignette_Color;
    let x_560 : vec3<f32> = (-(x_558) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_561 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_560.x, x_560.y, x_560.z, x_561.w);
    let x_563 : vec4<f32> = u_xlat1;
    let x_565 : vec4<f32> = u_xlat4;
    let x_569 : vec3<f32> = x_51.x_Vignette_Color;
    let x_570 : vec3<f32> = ((vec3<f32>(x_563.x, x_563.x, x_563.x) * vec3<f32>(x_565.x, x_565.y, x_565.z)) + x_569);
    let x_571 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_570.x, x_570.y, x_570.z, x_571.w);
    let x_573 : vec4<f32> = u_xlat0;
    let x_575 : vec4<f32> = u_xlat4;
    let x_578 : vec4<f32> = u_xlat0;
    let x_581 : vec3<f32> = ((vec3<f32>(x_573.x, x_573.y, x_573.z) * vec3<f32>(x_575.x, x_575.y, x_575.z)) + -(vec3<f32>(x_578.x, x_578.y, x_578.z)));
    let x_582 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_581.x, x_581.y, x_581.z, x_582.w);
    let x_586 : f32 = x_51.x_Vignette_Opacity;
    let x_588 : vec4<f32> = u_xlat4;
    let x_591 : vec4<f32> = u_xlat0;
    u_xlat8 = ((vec3<f32>(x_586, x_586, x_586) * vec3<f32>(x_588.x, x_588.y, x_588.z)) + vec3<f32>(x_591.x, x_591.y, x_591.z));
    let x_595 : f32 = u_xlat0.w;
    u_xlat0.x = (x_595 + -1.0f);
    let x_599 : f32 = u_xlat1.x;
    let x_601 : f32 = u_xlat0.x;
    u_xlat3.w = ((x_599 * x_601) + 1.0f);
  }
  let x_606 : vec2<f32> = vs_TEXCOORD1;
  let x_609 : vec4<f32> = x_51.x_Grain_Params2;
  let x_613 : vec4<f32> = x_51.x_Grain_Params2;
  let x_615 : vec2<f32> = ((x_606 * vec2<f32>(x_609.x, x_609.y)) + vec2<f32>(x_613.z, x_613.w));
  let x_616 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_615.x, x_615.y, x_616.z, x_616.w);
  let x_623 : vec4<f32> = u_xlat0;
  let x_625 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_623.x, x_623.y));
  let x_626 : vec3<f32> = vec3<f32>(x_625.x, x_625.y, x_625.z);
  let x_627 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_626.x, x_626.y, x_626.z, x_627.w);
  let x_629 : vec3<f32> = u_xlat8;
  let x_630 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_629.x, x_629.y, x_629.z, x_630.w);
  let x_632 : vec4<f32> = u_xlat4;
  let x_636 : vec3<f32> = clamp(vec3<f32>(x_632.x, x_632.y, x_632.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_637 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_636.x, x_636.y, x_636.z, x_637.w);
  let x_639 : vec4<f32> = u_xlat4;
  u_xlat21 = dot(vec3<f32>(x_639.x, x_639.y, x_639.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_646 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_646);
  let x_649 : f32 = x_51.x_Grain_Params1.x;
  let x_650 : f32 = u_xlat21;
  u_xlat21 = ((x_649 * -(x_650)) + 1.0f);
  let x_654 : vec4<f32> = u_xlat0;
  let x_656 : vec3<f32> = u_xlat8;
  let x_657 : vec3<f32> = (vec3<f32>(x_654.x, x_654.y, x_654.z) * x_656);
  let x_658 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_657.x, x_657.y, x_657.z, x_658.w);
  let x_660 : vec4<f32> = u_xlat0;
  let x_663 : f32 = x_51.x_Grain_Params1.y;
  let x_665 : f32 = x_51.x_Grain_Params1.y;
  let x_667 : f32 = x_51.x_Grain_Params1.y;
  let x_669 : vec3<f32> = (vec3<f32>(x_660.x, x_660.y, x_660.z) * vec3<f32>(x_663, x_665, x_667));
  let x_670 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_669.x, x_669.y, x_669.z, x_670.w);
  let x_672 : vec4<f32> = u_xlat0;
  let x_674 : f32 = u_xlat21;
  let x_677 : vec3<f32> = u_xlat8;
  let x_678 : vec3<f32> = ((vec3<f32>(x_672.x, x_672.y, x_672.z) * vec3<f32>(x_674, x_674, x_674)) + x_677);
  let x_679 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_678.x, x_678.y, x_678.z, x_679.w);
  let x_681 : vec4<f32> = u_xlat3;
  let x_684 : f32 = x_51.x_PostExposure;
  let x_686 : f32 = x_51.x_PostExposure;
  let x_688 : f32 = x_51.x_PostExposure;
  let x_690 : f32 = x_51.x_PostExposure;
  let x_691 : vec4<f32> = vec4<f32>(x_684, x_686, x_688, x_690);
  u_xlat0 = (x_681 * vec4<f32>(x_691.x, x_691.y, x_691.z, x_691.w));
  let x_698 : vec4<f32> = u_xlat0;
  let x_705 : vec3<f32> = ((vec3<f32>(x_698.z, x_698.x, x_698.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_706 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_705.x, x_705.y, x_705.z, x_706.w);
  let x_708 : vec4<f32> = u_xlat0;
  let x_710 : vec3<f32> = log2(vec3<f32>(x_708.x, x_708.y, x_708.z));
  let x_711 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_710.x, x_710.y, x_710.z, x_711.w);
  let x_713 : vec4<f32> = u_xlat0;
  let x_720 : vec3<f32> = ((vec3<f32>(x_713.x, x_713.y, x_713.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_721 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_720.x, x_720.y, x_720.z, x_721.w);
  let x_723 : vec4<f32> = u_xlat0;
  let x_727 : vec3<f32> = clamp(vec3<f32>(x_723.x, x_723.y, x_723.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_728 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_727.x, x_727.y, x_727.z, x_728.w);
  let x_730 : vec4<f32> = u_xlat0;
  let x_734 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_736 : vec3<f32> = (vec3<f32>(x_730.x, x_730.y, x_730.z) * vec3<f32>(x_734.z, x_734.z, x_734.z));
  let x_737 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_736.x, x_736.y, x_736.z, x_737.w);
  let x_740 : f32 = u_xlat1.x;
  u_xlat7.x = floor(x_740);
  let x_744 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_746 : vec2<f32> = (vec2<f32>(x_744.x, x_744.y) * vec2<f32>(0.5f, 0.5f));
  let x_747 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_746.x, x_747.y, x_747.z, x_746.y);
  let x_749 : vec4<f32> = u_xlat1;
  let x_752 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_755 : vec4<f32> = u_xlat1;
  let x_757 : vec2<f32> = ((vec2<f32>(x_749.y, x_749.z) * vec2<f32>(x_752.x, x_752.y)) + vec2<f32>(x_755.x, x_755.w));
  let x_758 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_758.x, x_757.x, x_757.y, x_758.w);
  let x_761 : f32 = u_xlat7.x;
  let x_763 : f32 = x_51.x_Lut2D_Params.y;
  let x_766 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_761 * x_763) + x_766);
  let x_774 : vec4<f32> = u_xlat1;
  let x_776 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_774.x, x_774.z));
  let x_777 : vec3<f32> = vec3<f32>(x_776.x, x_776.y, x_776.z);
  let x_778 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_777.x, x_777.y, x_777.z, x_778.w);
  let x_781 : f32 = x_51.x_Lut2D_Params.y;
  u_xlat16.x = x_781;
  let x_783 : vec2<f32> = u_xlat16;
  let x_784 : vec4<f32> = u_xlat1;
  let x_786 : vec2<f32> = (x_783 + vec2<f32>(x_784.x, x_784.z));
  let x_787 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_786.x, x_786.y, x_787.z, x_787.w);
  let x_792 : vec4<f32> = u_xlat1;
  let x_794 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_792.x, x_792.y));
  let x_795 : vec3<f32> = vec3<f32>(x_794.x, x_794.y, x_794.z);
  let x_796 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_795.x, x_795.y, x_795.z, x_796.w);
  let x_799 : f32 = u_xlat0.x;
  let x_801 : f32 = x_51.x_Lut2D_Params.z;
  let x_804 : f32 = u_xlat7.x;
  u_xlat0.x = ((x_799 * x_801) + -(x_804));
  let x_808 : vec4<f32> = u_xlat3;
  let x_811 : vec4<f32> = u_xlat1;
  let x_813 : vec3<f32> = (-(vec3<f32>(x_808.x, x_808.y, x_808.z)) + vec3<f32>(x_811.x, x_811.y, x_811.z));
  let x_814 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_813.x, x_813.y, x_813.z, x_814.w);
  let x_816 : vec4<f32> = u_xlat0;
  let x_818 : vec4<f32> = u_xlat1;
  let x_821 : vec4<f32> = u_xlat3;
  let x_823 : vec3<f32> = ((vec3<f32>(x_816.x, x_816.x, x_816.x) * vec3<f32>(x_818.x, x_818.y, x_818.z)) + vec3<f32>(x_821.x, x_821.y, x_821.z));
  let x_824 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_823.x, x_823.y, x_823.z, x_824.w);
  let x_826 : vec2<f32> = vs_TEXCOORD0;
  let x_829 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_833 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_835 : vec2<f32> = ((x_826 * vec2<f32>(x_829.x, x_829.y)) + vec2<f32>(x_833.z, x_833.w));
  let x_836 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_835.x, x_835.y, x_836.z, x_836.w);
  let x_843 : vec4<f32> = u_xlat1;
  let x_845 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_843.x, x_843.y));
  u_xlat1.x = x_845.w;
  let x_849 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_849 * 2.0f) + -1.0f);
  let x_854 : f32 = u_xlat1.x;
  u_xlat8.x = ((x_854 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_860 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_860, 0.0f, 1.0f);
  let x_864 : f32 = u_xlat8.x;
  u_xlat8.x = ((x_864 * 2.0f) + -1.0f);
  let x_869 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_869)) + 1.0f);
  let x_875 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_875);
  let x_879 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_879) + 1.0f);
  let x_884 : f32 = u_xlat1.x;
  let x_886 : f32 = u_xlat8.x;
  u_xlat1.x = (x_884 * x_886);
  let x_889 : vec4<f32> = u_xlat0;
  u_xlat8 = (vec3<f32>(x_889.x, x_889.y, x_889.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_894 : vec4<f32> = u_xlat0;
  u_xlat2 = max(abs(vec3<f32>(x_894.x, x_894.y, x_894.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_899 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_899);
  let x_901 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_901 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_905 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_905);
  let x_907 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_907 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_919 : vec4<f32> = u_xlat0;
  let x_922 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_919.x, x_919.y, x_919.z, x_919.x));
  u_xlatb0 = vec3<bool>(x_922.x, x_922.y, x_922.z);
  let x_925 : bool = u_xlatb0.x;
  if (x_925) {
    let x_930 : f32 = u_xlat8.x;
    x_926 = x_930;
  } else {
    let x_933 : f32 = u_xlat2.x;
    x_926 = x_933;
  }
  let x_934 : f32 = x_926;
  u_xlat0.x = x_934;
  let x_937 : bool = u_xlatb0.y;
  if (x_937) {
    let x_942 : f32 = u_xlat8.y;
    x_938 = x_942;
  } else {
    let x_945 : f32 = u_xlat2.y;
    x_938 = x_945;
  }
  let x_946 : f32 = x_938;
  u_xlat0.y = x_946;
  let x_949 : bool = u_xlatb0.z;
  if (x_949) {
    let x_954 : f32 = u_xlat8.z;
    x_950 = x_954;
  } else {
    let x_957 : f32 = u_xlat2.z;
    x_950 = x_957;
  }
  let x_958 : f32 = x_950;
  u_xlat0.z = x_958;
  let x_960 : vec4<f32> = u_xlat1;
  let x_965 : vec4<f32> = u_xlat0;
  let x_967 : vec3<f32> = ((vec3<f32>(x_960.x, x_960.x, x_960.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_965.x, x_965.y, x_965.z));
  let x_968 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_967.x, x_967.y, x_967.z, x_968.w);
  let x_970 : vec4<f32> = u_xlat0;
  let x_973 : vec3<f32> = (vec3<f32>(x_970.x, x_970.y, x_970.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_974 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_973.x, x_973.y, x_973.z, x_974.w);
  let x_976 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_976.x, x_976.y, x_976.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_980 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_980 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_983 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_983), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_986 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_986);
  let x_988 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_988 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_991 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_991);
  let x_994 : vec4<f32> = u_xlat0;
  let x_996 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_994.x, x_994.y, x_994.z, x_994.x));
  u_xlatb0 = vec3<bool>(x_996.x, x_996.y, x_996.z);
  let x_1001 : bool = u_xlatb0.x;
  if (x_1001) {
    let x_1006 : f32 = u_xlat1.x;
    x_1002 = x_1006;
  } else {
    let x_1009 : f32 = u_xlat2.x;
    x_1002 = x_1009;
  }
  let x_1010 : f32 = x_1002;
  SV_Target0.x = x_1010;
  let x_1014 : bool = u_xlatb0.y;
  if (x_1014) {
    let x_1019 : f32 = u_xlat1.y;
    x_1015 = x_1019;
  } else {
    let x_1022 : f32 = u_xlat2.y;
    x_1015 = x_1022;
  }
  let x_1023 : f32 = x_1015;
  SV_Target0.y = x_1023;
  let x_1026 : bool = u_xlatb0.z;
  if (x_1026) {
    let x_1031 : f32 = u_xlat1.z;
    x_1027 = x_1031;
  } else {
    let x_1034 : f32 = u_xlat2.z;
    x_1027 = x_1034;
  }
  let x_1035 : f32 = x_1027;
  SV_Target0.z = x_1035;
  let x_1038 : f32 = u_xlat0.w;
  SV_Target0.w = x_1038;
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

