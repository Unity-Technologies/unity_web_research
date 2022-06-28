struct PGlobals {
  x_ScreenParams : vec4<f32>,
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_BloomTex_TexelSize : vec4<f32>,
  x_Bloom_DirtTileOffset : vec4<f32>,
  x_Bloom_Settings : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_Bloom_Color : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_Lut2D_Params : vec3<f32>,
  @size(4)
  padding_3 : u32,
  x_Vignette_Color : vec3<f32>,
  @size(4)
  padding_4 : u32,
  x_Vignette_Center : vec2<f32>,
  @size(8)
  padding_5 : u32,
  x_Vignette_Settings : vec4<f32>,
  x_Vignette_Opacity : f32,
  x_Vignette_Mode : f32,
  x_LumaInAlpha : f32,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(0) var<uniform> x_49 : PGlobals;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(3) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_BloomTex : sampler;

@group(0) @binding(4) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_Bloom_DirtTex : sampler;

var<private> u_xlatb1 : bool;

var<private> u_xlat16 : f32;

var<private> u_xlat6 : vec3<f32>;

@group(0) @binding(6) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(12) var sampler_Vignette_Mask : sampler;

var<private> u_xlat11 : f32;

var<private> u_xlatb3 : vec3<bool>;

var<private> u_xlat5 : vec3<f32>;

@group(0) @binding(5) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(11) var sampler_Lut2D : sampler;

var<private> u_xlat10 : vec2<f32>;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_389 : f32;
  var hlslcc_movcTemp : vec4<f32>;
  var x_499 : f32;
  var x_511 : f32;
  var x_523 : f32;
  var x_676 : f32;
  var x_688 : f32;
  var x_700 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_24 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_23);
  u_xlat0.x = x_24.x;
  let x_37 : vec2<f32> = vs_TEXCOORD1;
  let x_38 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_37);
  u_xlat1 = x_38;
  let x_40 : vec4<f32> = u_xlat0;
  let x_42 : vec4<f32> = u_xlat1;
  let x_44 : vec3<f32> = (vec3<f32>(x_40.x, x_40.x, x_40.x) * vec3<f32>(x_42.x, x_42.y, x_42.z));
  let x_45 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_44.x, x_44.y, x_44.z, x_45.w);
  let x_54 : vec4<f32> = x_49.x_BloomTex_TexelSize;
  u_xlat0 = (vec4<f32>(x_54.x, x_54.y, x_54.x, x_54.y) * vec4<f32>(-1.0f, -1.0f, 1.0f, 1.0f));
  let x_64 : f32 = x_49.x_Bloom_Settings.x;
  u_xlat2.x = (x_64 * 0.5f);
  let x_69 : vec4<f32> = u_xlat0;
  let x_71 : vec4<f32> = u_xlat2;
  let x_74 : vec2<f32> = vs_TEXCOORD0;
  u_xlat3 = ((vec4<f32>(x_69.x, x_69.y, x_69.z, x_69.y) * vec4<f32>(x_71.x, x_71.x, x_71.x, x_71.x)) + vec4<f32>(x_74.x, x_74.y, x_74.x, x_74.y));
  let x_77 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_77, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_82 : vec4<f32> = u_xlat3;
  let x_85 : f32 = x_49.x_RenderViewportScaleFactor;
  u_xlat3 = (x_82 * vec4<f32>(x_85, x_85, x_85, x_85));
  let x_94 : vec4<f32> = u_xlat3;
  let x_96 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_94.x, x_94.y));
  u_xlat4 = x_96;
  let x_100 : vec4<f32> = u_xlat3;
  let x_102 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_100.z, x_100.w));
  u_xlat3 = x_102;
  let x_103 : vec4<f32> = u_xlat3;
  let x_104 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_103 + x_104);
  let x_106 : vec4<f32> = u_xlat0;
  let x_108 : vec4<f32> = u_xlat2;
  let x_111 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = ((vec4<f32>(x_106.x, x_106.w, x_106.z, x_106.w) * vec4<f32>(x_108.x, x_108.x, x_108.x, x_108.x)) + vec4<f32>(x_111.x, x_111.y, x_111.x, x_111.y));
  let x_114 : vec4<f32> = u_xlat0;
  u_xlat0 = clamp(x_114, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_118 : vec4<f32> = u_xlat0;
  let x_120 : f32 = x_49.x_RenderViewportScaleFactor;
  u_xlat0 = (x_118 * vec4<f32>(x_120, x_120, x_120, x_120));
  let x_126 : vec4<f32> = u_xlat0;
  let x_128 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_126.x, x_126.y));
  u_xlat2 = x_128;
  let x_129 : vec4<f32> = u_xlat2;
  let x_130 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_129 + x_130);
  let x_135 : vec4<f32> = u_xlat0;
  let x_137 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_135.z, x_135.w));
  u_xlat0 = x_137;
  let x_138 : vec4<f32> = u_xlat0;
  let x_139 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_138 + x_139);
  let x_141 : vec4<f32> = u_xlat0;
  let x_144 : vec3<f32> = x_49.x_Bloom_Settings;
  u_xlat0 = (x_141 * vec4<f32>(x_144.y, x_144.y, x_144.y, x_144.y));
  let x_147 : vec2<f32> = vs_TEXCOORD0;
  let x_150 : vec4<f32> = x_49.x_Bloom_DirtTileOffset;
  let x_154 : vec4<f32> = x_49.x_Bloom_DirtTileOffset;
  let x_156 : vec2<f32> = ((x_147 * vec2<f32>(x_150.x, x_150.y)) + vec2<f32>(x_154.z, x_154.w));
  let x_157 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_156.x, x_156.y, x_157.z, x_157.w);
  let x_164 : vec4<f32> = u_xlat2;
  let x_166 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_164.x, x_164.y));
  let x_167 : vec3<f32> = vec3<f32>(x_166.x, x_166.y, x_166.z);
  let x_168 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_167.x, x_167.y, x_167.z, x_168.w);
  let x_170 : vec4<f32> = u_xlat0;
  u_xlat3 = (x_170 * vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
  let x_174 : vec4<f32> = u_xlat2;
  let x_177 : vec3<f32> = x_49.x_Bloom_Settings;
  let x_179 : vec3<f32> = (vec3<f32>(x_174.x, x_174.y, x_174.z) * vec3<f32>(x_177.z, x_177.z, x_177.z));
  let x_180 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_179.x, x_179.y, x_179.z, x_180.w);
  u_xlat2.w = 0.0f;
  let x_184 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_184 * vec4<f32>(0.25f, 0.25f, 0.25f, 1.0f));
  let x_187 : vec4<f32> = u_xlat0;
  let x_191 : vec3<f32> = x_49.x_Bloom_Color;
  let x_192 : vec3<f32> = (vec3<f32>(x_187.x, x_187.y, x_187.z) * x_191);
  let x_193 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_192.x, x_192.y, x_192.z, x_193.w);
  let x_196 : f32 = u_xlat0.w;
  u_xlat4.w = (x_196 * 0.25f);
  let x_199 : vec4<f32> = u_xlat1;
  let x_200 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_199 + x_200);
  let x_202 : vec4<f32> = u_xlat2;
  let x_203 : vec4<f32> = u_xlat3;
  let x_205 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_202 * x_203) + x_205);
  let x_212 : f32 = x_49.x_Vignette_Mode;
  u_xlatb1 = (x_212 < 0.5f);
  let x_214 : bool = u_xlatb1;
  if (x_214) {
    let x_217 : vec2<f32> = vs_TEXCOORD0;
    let x_221 : vec2<f32> = x_49.x_Vignette_Center;
    let x_223 : vec2<f32> = (x_217 + -(x_221));
    let x_224 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_223.x, x_223.y, x_224.z, x_224.w);
    let x_226 : vec4<f32> = u_xlat1;
    let x_231 : vec4<f32> = x_49.x_Vignette_Settings;
    let x_233 : vec2<f32> = (abs(vec2<f32>(x_226.y, x_226.x)) * vec2<f32>(x_231.x, x_231.x));
    let x_234 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_234.x, x_233.x, x_233.y, x_234.w);
    let x_239 : f32 = x_49.x_ScreenParams.x;
    let x_242 : f32 = x_49.x_ScreenParams.y;
    u_xlat16 = (x_239 / x_242);
    let x_244 : f32 = u_xlat16;
    u_xlat16 = (x_244 + -1.0f);
    let x_247 : f32 = x_49.x_Vignette_Settings.w;
    let x_248 : f32 = u_xlat16;
    u_xlat16 = ((x_247 * x_248) + 1.0f);
    let x_251 : f32 = u_xlat16;
    let x_254 : f32 = u_xlat1.z;
    u_xlat1.x = (x_251 * x_254);
    let x_257 : vec4<f32> = u_xlat1;
    let x_258 : vec2<f32> = vec2<f32>(x_257.x, x_257.y);
    let x_259 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_258.x, x_258.y, x_259.z, x_259.w);
    let x_261 : vec4<f32> = u_xlat1;
    let x_265 : vec2<f32> = clamp(vec2<f32>(x_261.x, x_261.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_266 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_265.x, x_265.y, x_266.z, x_266.w);
    let x_268 : vec4<f32> = u_xlat1;
    let x_270 : vec2<f32> = log2(vec2<f32>(x_268.x, x_268.y));
    let x_271 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_270.x, x_270.y, x_271.z, x_271.w);
    let x_273 : vec4<f32> = u_xlat1;
    let x_276 : vec4<f32> = x_49.x_Vignette_Settings;
    let x_278 : vec2<f32> = (vec2<f32>(x_273.x, x_273.y) * vec2<f32>(x_276.z, x_276.z));
    let x_279 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_278.x, x_278.y, x_279.z, x_279.w);
    let x_281 : vec4<f32> = u_xlat1;
    let x_283 : vec2<f32> = exp2(vec2<f32>(x_281.x, x_281.y));
    let x_284 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_283.x, x_283.y, x_284.z, x_284.w);
    let x_286 : vec4<f32> = u_xlat1;
    let x_288 : vec4<f32> = u_xlat1;
    u_xlat1.x = dot(vec2<f32>(x_286.x, x_286.y), vec2<f32>(x_288.x, x_288.y));
    let x_293 : f32 = u_xlat1.x;
    u_xlat1.x = (-(x_293) + 1.0f);
    let x_298 : f32 = u_xlat1.x;
    u_xlat1.x = max(x_298, 0.0f);
    let x_302 : f32 = u_xlat1.x;
    u_xlat1.x = log2(x_302);
    let x_306 : f32 = u_xlat1.x;
    let x_308 : f32 = x_49.x_Vignette_Settings.y;
    u_xlat1.x = (x_306 * x_308);
    let x_312 : f32 = u_xlat1.x;
    u_xlat1.x = exp2(x_312);
    let x_319 : vec3<f32> = x_49.x_Vignette_Color;
    u_xlat6 = (-(x_319) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_323 : vec4<f32> = u_xlat1;
    let x_325 : vec3<f32> = u_xlat6;
    let x_328 : vec3<f32> = x_49.x_Vignette_Color;
    u_xlat6 = ((vec3<f32>(x_323.x, x_323.x, x_323.x) * x_325) + x_328);
    let x_330 : vec4<f32> = u_xlat0;
    let x_332 : vec3<f32> = u_xlat6;
    let x_333 : vec3<f32> = (vec3<f32>(x_330.x, x_330.y, x_330.z) * x_332);
    let x_334 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
    let x_337 : f32 = u_xlat0.w;
    u_xlat6.x = (x_337 + -1.0f);
    let x_341 : f32 = u_xlat1.x;
    let x_343 : f32 = u_xlat6.x;
    u_xlat2.w = ((x_341 * x_343) + 1.0f);
  } else {
    let x_353 : vec2<f32> = vs_TEXCOORD0;
    let x_354 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_353);
    u_xlat1.x = x_354.w;
    let x_358 : f32 = u_xlat1.x;
    u_xlat1.z = (x_358 + 0.055f);
    let x_362 : vec4<f32> = u_xlat1;
    let x_367 : vec2<f32> = (vec2<f32>(x_362.x, x_362.z) * vec2<f32>(0.077399381f, 0.947867334f));
    let x_368 : vec3<f32> = u_xlat6;
    u_xlat6 = vec3<f32>(x_367.x, x_367.y, x_368.z);
    let x_372 : f32 = u_xlat6.y;
    u_xlat11 = max(abs(x_372), 1.1920929e-07f);
    let x_376 : f32 = u_xlat11;
    u_xlat11 = log2(x_376);
    let x_378 : f32 = u_xlat11;
    u_xlat11 = (x_378 * 2.400000095f);
    let x_381 : f32 = u_xlat11;
    u_xlat11 = exp2(x_381);
    let x_385 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_385);
    let x_387 : bool = u_xlatb1;
    if (x_387) {
      let x_393 : f32 = u_xlat6.x;
      x_389 = x_393;
    } else {
      let x_395 : f32 = u_xlat11;
      x_389 = x_395;
    }
    let x_396 : f32 = x_389;
    u_xlat1.x = x_396;
    let x_399 : vec3<f32> = x_49.x_Vignette_Color;
    u_xlat6 = (-(x_399) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_402 : vec4<f32> = u_xlat1;
    let x_404 : vec3<f32> = u_xlat6;
    let x_407 : vec3<f32> = x_49.x_Vignette_Color;
    u_xlat6 = ((vec3<f32>(x_402.x, x_402.x, x_402.x) * x_404) + x_407);
    let x_409 : vec4<f32> = u_xlat0;
    let x_411 : vec3<f32> = u_xlat6;
    let x_413 : vec4<f32> = u_xlat0;
    u_xlat6 = ((vec3<f32>(x_409.x, x_409.y, x_409.z) * x_411) + -(vec3<f32>(x_413.x, x_413.y, x_413.z)));
    let x_419 : f32 = x_49.x_Vignette_Opacity;
    let x_421 : vec3<f32> = u_xlat6;
    let x_423 : vec4<f32> = u_xlat0;
    let x_425 : vec3<f32> = ((vec3<f32>(x_419, x_419, x_419) * x_421) + vec3<f32>(x_423.x, x_423.y, x_423.z));
    let x_426 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_425.x, x_425.y, x_425.z, x_426.w);
    let x_429 : f32 = u_xlat0.w;
    u_xlat0.x = (x_429 + -1.0f);
    let x_433 : f32 = u_xlat1.x;
    let x_435 : f32 = u_xlat0.x;
    u_xlat2.w = ((x_433 * x_435) + 1.0f);
  }
  let x_439 : vec4<f32> = u_xlat2;
  u_xlat2 = x_439;
  let x_440 : vec4<f32> = u_xlat2;
  u_xlat2 = clamp(x_440, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_444 : vec4<f32> = u_xlat2;
  let x_448 : vec3<f32> = (vec3<f32>(x_444.z, x_444.x, x_444.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_449 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_448.x, x_448.y, x_448.z, x_449.w);
  let x_451 : vec4<f32> = u_xlat2;
  let x_454 : vec3<f32> = max(vec3<f32>(x_451.z, x_451.x, x_451.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_455 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_454.x, x_454.y, x_454.z, x_455.w);
  let x_457 : vec4<f32> = u_xlat1;
  let x_459 : vec3<f32> = log2(vec3<f32>(x_457.x, x_457.y, x_457.z));
  let x_460 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_459.x, x_459.y, x_459.z, x_460.w);
  let x_462 : vec4<f32> = u_xlat1;
  let x_466 : vec3<f32> = (vec3<f32>(x_462.x, x_462.y, x_462.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_467 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_466.x, x_466.y, x_466.z, x_467.w);
  let x_469 : vec4<f32> = u_xlat1;
  let x_471 : vec3<f32> = exp2(vec3<f32>(x_469.x, x_469.y, x_469.z));
  let x_472 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_471.x, x_471.y, x_471.z, x_472.w);
  let x_474 : vec4<f32> = u_xlat1;
  let x_481 : vec3<f32> = ((vec3<f32>(x_474.x, x_474.y, x_474.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_482 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_481.x, x_481.y, x_481.z, x_482.w);
  let x_489 : vec4<f32> = u_xlat2;
  let x_492 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_489.z, x_489.x, x_489.y, x_489.z));
  u_xlatb3 = vec3<bool>(x_492.x, x_492.y, x_492.z);
  let x_496 : vec4<f32> = u_xlat0;
  hlslcc_movcTemp = x_496;
  let x_498 : bool = u_xlatb3.x;
  if (x_498) {
    let x_503 : f32 = u_xlat0.x;
    x_499 = x_503;
  } else {
    let x_506 : f32 = u_xlat1.x;
    x_499 = x_506;
  }
  let x_507 : f32 = x_499;
  hlslcc_movcTemp.x = x_507;
  let x_510 : bool = u_xlatb3.y;
  if (x_510) {
    let x_515 : f32 = u_xlat0.y;
    x_511 = x_515;
  } else {
    let x_518 : f32 = u_xlat1.y;
    x_511 = x_518;
  }
  let x_519 : f32 = x_511;
  hlslcc_movcTemp.y = x_519;
  let x_522 : bool = u_xlatb3.z;
  if (x_522) {
    let x_527 : f32 = u_xlat0.z;
    x_523 = x_527;
  } else {
    let x_530 : f32 = u_xlat1.z;
    x_523 = x_530;
  }
  let x_531 : f32 = x_523;
  hlslcc_movcTemp.z = x_531;
  let x_533 : vec4<f32> = hlslcc_movcTemp;
  u_xlat0 = x_533;
  let x_535 : vec4<f32> = u_xlat0;
  let x_539 : vec3<f32> = x_49.x_Lut2D_Params;
  u_xlat5 = (vec3<f32>(x_535.x, x_535.y, x_535.z) * vec3<f32>(x_539.z, x_539.z, x_539.z));
  let x_543 : f32 = u_xlat5.x;
  u_xlat5.x = floor(x_543);
  let x_547 : vec3<f32> = x_49.x_Lut2D_Params;
  let x_550 : vec2<f32> = (vec2<f32>(x_547.x, x_547.y) * vec2<f32>(0.5f, 0.5f));
  let x_551 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_550.x, x_550.y, x_551.z, x_551.w);
  let x_553 : vec3<f32> = u_xlat5;
  let x_556 : vec3<f32> = x_49.x_Lut2D_Params;
  let x_559 : vec4<f32> = u_xlat1;
  let x_561 : vec2<f32> = ((vec2<f32>(x_553.y, x_553.z) * vec2<f32>(x_556.x, x_556.y)) + vec2<f32>(x_559.x, x_559.y));
  let x_562 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_562.x, x_561.x, x_561.y, x_562.w);
  let x_565 : f32 = u_xlat5.x;
  let x_567 : f32 = x_49.x_Lut2D_Params.y;
  let x_570 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_565 * x_567) + x_570);
  let x_578 : vec4<f32> = u_xlat1;
  let x_580 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_578.x, x_578.z));
  let x_581 : vec3<f32> = vec3<f32>(x_580.x, x_580.y, x_580.z);
  let x_582 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_581.x, x_581.y, x_581.z, x_582.w);
  let x_585 : f32 = x_49.x_Lut2D_Params.y;
  u_xlat4.x = x_585;
  u_xlat4.y = 0.0f;
  let x_590 : vec4<f32> = u_xlat1;
  let x_592 : vec4<f32> = u_xlat4;
  u_xlat10 = (vec2<f32>(x_590.x, x_590.z) + vec2<f32>(x_592.x, x_592.y));
  let x_598 : vec2<f32> = u_xlat10;
  let x_599 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_598);
  let x_600 : vec3<f32> = vec3<f32>(x_599.x, x_599.y, x_599.z);
  let x_601 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_600.x, x_600.y, x_600.z, x_601.w);
  let x_604 : f32 = u_xlat0.x;
  let x_606 : f32 = x_49.x_Lut2D_Params.z;
  let x_609 : f32 = u_xlat5.x;
  u_xlat0.x = ((x_604 * x_606) + -(x_609));
  let x_613 : vec4<f32> = u_xlat3;
  let x_616 : vec4<f32> = u_xlat1;
  u_xlat5 = (-(vec3<f32>(x_613.x, x_613.y, x_613.z)) + vec3<f32>(x_616.x, x_616.y, x_616.z));
  let x_619 : vec4<f32> = u_xlat0;
  let x_621 : vec3<f32> = u_xlat5;
  let x_623 : vec4<f32> = u_xlat3;
  let x_625 : vec3<f32> = ((vec3<f32>(x_619.x, x_619.x, x_619.x) * x_621) + vec3<f32>(x_623.x, x_623.y, x_623.z));
  let x_626 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_625.x, x_625.y, x_625.z, x_626.w);
  let x_628 : vec4<f32> = u_xlat0;
  let x_631 : vec3<f32> = (vec3<f32>(x_628.x, x_628.y, x_628.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_632 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_631.x, x_631.y, x_631.z, x_632.w);
  let x_634 : vec4<f32> = u_xlat0;
  let x_637 : vec3<f32> = (vec3<f32>(x_634.x, x_634.y, x_634.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_638 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_637.x, x_637.y, x_637.z, x_638.w);
  let x_640 : vec4<f32> = u_xlat3;
  let x_643 : vec3<f32> = (vec3<f32>(x_640.x, x_640.y, x_640.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_644 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_643.x, x_643.y, x_643.z, x_644.w);
  let x_646 : vec4<f32> = u_xlat3;
  let x_649 : vec3<f32> = max(abs(vec3<f32>(x_646.x, x_646.y, x_646.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_650 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_649.x, x_649.y, x_649.z, x_650.w);
  let x_652 : vec4<f32> = u_xlat3;
  let x_654 : vec3<f32> = log2(vec3<f32>(x_652.x, x_652.y, x_652.z));
  let x_655 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_654.x, x_654.y, x_654.z, x_655.w);
  let x_657 : vec4<f32> = u_xlat3;
  let x_660 : vec3<f32> = (vec3<f32>(x_657.x, x_657.y, x_657.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_661 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_660.x, x_660.y, x_660.z, x_661.w);
  let x_663 : vec4<f32> = u_xlat3;
  let x_665 : vec3<f32> = exp2(vec3<f32>(x_663.x, x_663.y, x_663.z));
  let x_666 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_665.x, x_665.y, x_665.z, x_666.w);
  let x_670 : vec4<f32> = u_xlat0;
  let x_672 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_670.x, x_670.y, x_670.z, x_670.x));
  u_xlatb0 = vec3<bool>(x_672.x, x_672.y, x_672.z);
  let x_675 : bool = u_xlatb0.x;
  if (x_675) {
    let x_680 : f32 = u_xlat1.x;
    x_676 = x_680;
  } else {
    let x_683 : f32 = u_xlat3.x;
    x_676 = x_683;
  }
  let x_684 : f32 = x_676;
  u_xlat2.x = x_684;
  let x_687 : bool = u_xlatb0.y;
  if (x_687) {
    let x_692 : f32 = u_xlat1.y;
    x_688 = x_692;
  } else {
    let x_695 : f32 = u_xlat3.y;
    x_688 = x_695;
  }
  let x_696 : f32 = x_688;
  u_xlat2.y = x_696;
  let x_699 : bool = u_xlatb0.z;
  if (x_699) {
    let x_704 : f32 = u_xlat1.z;
    x_700 = x_704;
  } else {
    let x_707 : f32 = u_xlat3.z;
    x_700 = x_707;
  }
  let x_708 : f32 = x_700;
  u_xlat2.z = x_708;
  let x_712 : f32 = x_49.x_LumaInAlpha;
  u_xlatb0.x = (0.5f < x_712);
  let x_716 : bool = u_xlatb0.x;
  if (x_716) {
    let x_719 : vec4<f32> = u_xlat2;
    let x_720 : vec3<f32> = vec3<f32>(x_719.x, x_719.y, x_719.z);
    let x_721 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_720.x, x_720.y, x_720.z, x_721.w);
    let x_723 : vec4<f32> = u_xlat0;
    let x_727 : vec3<f32> = clamp(vec3<f32>(x_723.x, x_723.y, x_723.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_728 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_727.x, x_727.y, x_727.z, x_728.w);
    let x_730 : vec4<f32> = u_xlat0;
    u_xlat2.w = dot(vec3<f32>(x_730.x, x_730.y, x_730.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_740 : vec4<f32> = u_xlat2;
  SV_Target0 = x_740;
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

