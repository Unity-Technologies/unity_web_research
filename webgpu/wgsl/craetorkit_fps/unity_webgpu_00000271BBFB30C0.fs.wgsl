struct PGlobals {
  x_ScreenParams : vec4<f32>,
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_Dithering_Coords : vec4<f32>,
  x_BloomTex_TexelSize : vec4<f32>,
  x_Bloom_DirtTileOffset : vec4<f32>,
  x_Bloom_Settings : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_Bloom_Color : vec3<f32>,
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
}

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_49 : PGlobals;

@group(0) @binding(3) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_BloomTex : sampler;

@group(0) @binding(4) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_Bloom_DirtTex : sampler;

@group(0) @binding(5) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(11) var sampler_Vignette_Mask : sampler;

@group(0) @binding(0) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_DitheringTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlatb1 : vec3<bool>;
  var u_xlat16 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat8 : f32;
  var x_390 : f32;
  var u_xlat5 : vec3<f32>;
  var hlslcc_movcTemp : vec3<f32>;
  var x_560 : f32;
  var x_572 : f32;
  var x_584 : f32;
  var u_xlatb0 : vec3<bool>;
  var x_652 : f32;
  var x_664 : f32;
  var x_676 : f32;
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
  let x_213 : f32 = x_49.x_Vignette_Mode;
  u_xlatb1.x = (x_213 < 0.5f);
  let x_218 : bool = u_xlatb1.x;
  if (x_218) {
    let x_221 : vec2<f32> = vs_TEXCOORD0;
    let x_225 : vec2<f32> = x_49.x_Vignette_Center;
    let x_227 : vec2<f32> = (x_221 + -(x_225));
    let x_228 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_227.x, x_227.y, x_228.z, x_228.w);
    let x_230 : vec4<f32> = u_xlat1;
    let x_235 : vec4<f32> = x_49.x_Vignette_Settings;
    let x_237 : vec2<f32> = (abs(vec2<f32>(x_230.y, x_230.x)) * vec2<f32>(x_235.x, x_235.x));
    let x_238 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_238.x, x_237.x, x_237.y, x_238.w);
    let x_243 : f32 = x_49.x_ScreenParams.x;
    let x_246 : f32 = x_49.x_ScreenParams.y;
    u_xlat16 = (x_243 / x_246);
    let x_248 : f32 = u_xlat16;
    u_xlat16 = (x_248 + -1.0f);
    let x_251 : f32 = x_49.x_Vignette_Settings.w;
    let x_252 : f32 = u_xlat16;
    u_xlat16 = ((x_251 * x_252) + 1.0f);
    let x_255 : f32 = u_xlat16;
    let x_258 : f32 = u_xlat1.z;
    u_xlat1.x = (x_255 * x_258);
    let x_261 : vec4<f32> = u_xlat1;
    let x_262 : vec2<f32> = vec2<f32>(x_261.x, x_261.y);
    let x_263 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_262.x, x_262.y, x_263.z, x_263.w);
    let x_265 : vec4<f32> = u_xlat1;
    let x_269 : vec2<f32> = clamp(vec2<f32>(x_265.x, x_265.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_270 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_269.x, x_269.y, x_270.z, x_270.w);
    let x_272 : vec4<f32> = u_xlat1;
    let x_274 : vec2<f32> = log2(vec2<f32>(x_272.x, x_272.y));
    let x_275 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_274.x, x_274.y, x_275.z, x_275.w);
    let x_277 : vec4<f32> = u_xlat1;
    let x_280 : vec4<f32> = x_49.x_Vignette_Settings;
    let x_282 : vec2<f32> = (vec2<f32>(x_277.x, x_277.y) * vec2<f32>(x_280.z, x_280.z));
    let x_283 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_282.x, x_282.y, x_283.z, x_283.w);
    let x_285 : vec4<f32> = u_xlat1;
    let x_287 : vec2<f32> = exp2(vec2<f32>(x_285.x, x_285.y));
    let x_288 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_287.x, x_287.y, x_288.z, x_288.w);
    let x_290 : vec4<f32> = u_xlat1;
    let x_292 : vec4<f32> = u_xlat1;
    u_xlat1.x = dot(vec2<f32>(x_290.x, x_290.y), vec2<f32>(x_292.x, x_292.y));
    let x_297 : f32 = u_xlat1.x;
    u_xlat1.x = (-(x_297) + 1.0f);
    let x_302 : f32 = u_xlat1.x;
    u_xlat1.x = max(x_302, 0.0f);
    let x_306 : f32 = u_xlat1.x;
    u_xlat1.x = log2(x_306);
    let x_310 : f32 = u_xlat1.x;
    let x_312 : f32 = x_49.x_Vignette_Settings.y;
    u_xlat1.x = (x_310 * x_312);
    let x_316 : f32 = u_xlat1.x;
    u_xlat1.x = exp2(x_316);
    let x_323 : vec3<f32> = x_49.x_Vignette_Color;
    u_xlat6 = (-(x_323) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_327 : vec4<f32> = u_xlat1;
    let x_329 : vec3<f32> = u_xlat6;
    let x_332 : vec3<f32> = x_49.x_Vignette_Color;
    u_xlat6 = ((vec3<f32>(x_327.x, x_327.x, x_327.x) * x_329) + x_332);
    let x_334 : vec4<f32> = u_xlat0;
    let x_336 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_334.x, x_334.y, x_334.z) * x_336);
    let x_339 : f32 = u_xlat0.w;
    u_xlat2.x = (x_339 + -1.0f);
    let x_343 : f32 = u_xlat1.x;
    let x_345 : f32 = u_xlat2.x;
    u_xlat2.w = ((x_343 * x_345) + 1.0f);
  } else {
    let x_355 : vec2<f32> = vs_TEXCOORD0;
    let x_356 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_355);
    u_xlat1.x = x_356.w;
    let x_360 : f32 = u_xlat1.x;
    u_xlat3.x = (x_360 * 0.077399381f);
    let x_366 : f32 = u_xlat1.x;
    u_xlat8 = (x_366 + 0.055f);
    let x_369 : f32 = u_xlat8;
    u_xlat8 = (x_369 * 0.947867334f);
    let x_372 : f32 = u_xlat8;
    u_xlat8 = max(abs(x_372), 1.1920929e-07f);
    let x_376 : f32 = u_xlat8;
    u_xlat8 = log2(x_376);
    let x_378 : f32 = u_xlat8;
    u_xlat8 = (x_378 * 2.400000095f);
    let x_381 : f32 = u_xlat8;
    u_xlat8 = exp2(x_381);
    let x_385 : f32 = u_xlat1.x;
    u_xlatb1.x = (0.040449999f >= x_385);
    let x_389 : bool = u_xlatb1.x;
    if (x_389) {
      let x_394 : f32 = u_xlat3.x;
      x_390 = x_394;
    } else {
      let x_396 : f32 = u_xlat8;
      x_390 = x_396;
    }
    let x_397 : f32 = x_390;
    u_xlat1.x = x_397;
    let x_400 : vec3<f32> = x_49.x_Vignette_Color;
    let x_402 : vec3<f32> = (-(x_400) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_403 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_402.x, x_402.y, x_402.z, x_403.w);
    let x_405 : vec4<f32> = u_xlat1;
    let x_407 : vec4<f32> = u_xlat3;
    let x_411 : vec3<f32> = x_49.x_Vignette_Color;
    let x_412 : vec3<f32> = ((vec3<f32>(x_405.x, x_405.x, x_405.x) * vec3<f32>(x_407.x, x_407.y, x_407.z)) + x_411);
    let x_413 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_412.x, x_412.y, x_412.z, x_413.w);
    let x_415 : vec4<f32> = u_xlat0;
    let x_417 : vec4<f32> = u_xlat3;
    let x_420 : vec4<f32> = u_xlat0;
    let x_423 : vec3<f32> = ((vec3<f32>(x_415.x, x_415.y, x_415.z) * vec3<f32>(x_417.x, x_417.y, x_417.z)) + -(vec3<f32>(x_420.x, x_420.y, x_420.z)));
    let x_424 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_423.x, x_423.y, x_423.z, x_424.w);
    let x_428 : f32 = x_49.x_Vignette_Opacity;
    let x_430 : vec4<f32> = u_xlat3;
    let x_433 : vec4<f32> = u_xlat0;
    u_xlat6 = ((vec3<f32>(x_428, x_428, x_428) * vec3<f32>(x_430.x, x_430.y, x_430.z)) + vec3<f32>(x_433.x, x_433.y, x_433.z));
    let x_437 : f32 = u_xlat0.w;
    u_xlat0.x = (x_437 + -1.0f);
    let x_441 : f32 = u_xlat1.x;
    let x_443 : f32 = u_xlat0.x;
    u_xlat2.w = ((x_441 * x_443) + 1.0f);
  }
  let x_447 : vec2<f32> = vs_TEXCOORD0;
  let x_450 : vec4<f32> = x_49.x_Dithering_Coords;
  let x_454 : vec4<f32> = x_49.x_Dithering_Coords;
  let x_456 : vec2<f32> = ((x_447 * vec2<f32>(x_450.x, x_450.y)) + vec2<f32>(x_454.z, x_454.w));
  let x_457 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_456.x, x_456.y, x_457.z, x_457.w);
  let x_464 : vec4<f32> = u_xlat0;
  let x_466 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_464.x, x_464.y));
  u_xlat0.x = x_466.w;
  let x_470 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_470 * 2.0f) + -1.0f);
  let x_477 : f32 = u_xlat0.x;
  u_xlat5.x = ((x_477 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_483 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_483, 0.0f, 1.0f);
  let x_487 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_487 * 2.0f) + -1.0f);
  let x_492 : f32 = u_xlat0.x;
  u_xlat0.x = (-(abs(x_492)) + 1.0f);
  let x_498 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_498);
  let x_502 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_502) + 1.0f);
  let x_507 : f32 = u_xlat0.x;
  let x_509 : f32 = u_xlat5.x;
  u_xlat0.x = (x_507 * x_509);
  let x_512 : vec3<f32> = u_xlat6;
  u_xlat5 = (x_512 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_516 : vec3<f32> = u_xlat6;
  let x_519 : vec3<f32> = max(abs(x_516), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_520 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_519.x, x_519.y, x_519.z, x_520.w);
  let x_522 : vec4<f32> = u_xlat3;
  let x_524 : vec3<f32> = log2(vec3<f32>(x_522.x, x_522.y, x_522.z));
  let x_525 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_524.x, x_524.y, x_524.z, x_525.w);
  let x_527 : vec4<f32> = u_xlat3;
  let x_531 : vec3<f32> = (vec3<f32>(x_527.x, x_527.y, x_527.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_532 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_531.x, x_531.y, x_531.z, x_532.w);
  let x_534 : vec4<f32> = u_xlat3;
  let x_536 : vec3<f32> = exp2(vec3<f32>(x_534.x, x_534.y, x_534.z));
  let x_537 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_536.x, x_536.y, x_536.z, x_537.w);
  let x_539 : vec4<f32> = u_xlat3;
  let x_546 : vec3<f32> = ((vec3<f32>(x_539.x, x_539.y, x_539.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_547 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_546.x, x_546.y, x_546.z, x_547.w);
  let x_551 : vec3<f32> = u_xlat6;
  let x_554 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_551.x, x_551.y, x_551.z, x_551.x));
  u_xlatb1 = vec3<bool>(x_554.x, x_554.y, x_554.z);
  let x_557 : vec3<f32> = u_xlat5;
  hlslcc_movcTemp = x_557;
  let x_559 : bool = u_xlatb1.x;
  if (x_559) {
    let x_564 : f32 = u_xlat5.x;
    x_560 = x_564;
  } else {
    let x_567 : f32 = u_xlat3.x;
    x_560 = x_567;
  }
  let x_568 : f32 = x_560;
  hlslcc_movcTemp.x = x_568;
  let x_571 : bool = u_xlatb1.y;
  if (x_571) {
    let x_576 : f32 = u_xlat5.y;
    x_572 = x_576;
  } else {
    let x_579 : f32 = u_xlat3.y;
    x_572 = x_579;
  }
  let x_580 : f32 = x_572;
  hlslcc_movcTemp.y = x_580;
  let x_583 : bool = u_xlatb1.z;
  if (x_583) {
    let x_588 : f32 = u_xlat5.z;
    x_584 = x_588;
  } else {
    let x_591 : f32 = u_xlat3.z;
    x_584 = x_591;
  }
  let x_592 : f32 = x_584;
  hlslcc_movcTemp.z = x_592;
  let x_594 : vec3<f32> = hlslcc_movcTemp;
  u_xlat5 = x_594;
  let x_595 : vec4<f32> = u_xlat0;
  let x_600 : vec3<f32> = u_xlat5;
  let x_601 : vec3<f32> = ((vec3<f32>(x_595.x, x_595.x, x_595.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + x_600);
  let x_602 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_601.x, x_601.y, x_601.z, x_602.w);
  let x_604 : vec4<f32> = u_xlat0;
  let x_607 : vec3<f32> = (vec3<f32>(x_604.x, x_604.y, x_604.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_608 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_607.x, x_607.y, x_607.z, x_608.w);
  let x_610 : vec4<f32> = u_xlat0;
  let x_613 : vec3<f32> = (vec3<f32>(x_610.x, x_610.y, x_610.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_614 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_613.x, x_613.y, x_613.z, x_614.w);
  let x_616 : vec4<f32> = u_xlat3;
  let x_619 : vec3<f32> = (vec3<f32>(x_616.x, x_616.y, x_616.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_620 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_619.x, x_619.y, x_619.z, x_620.w);
  let x_622 : vec4<f32> = u_xlat3;
  let x_625 : vec3<f32> = max(abs(vec3<f32>(x_622.x, x_622.y, x_622.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_626 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_625.x, x_625.y, x_625.z, x_626.w);
  let x_628 : vec4<f32> = u_xlat3;
  let x_630 : vec3<f32> = log2(vec3<f32>(x_628.x, x_628.y, x_628.z));
  let x_631 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_630.x, x_630.y, x_630.z, x_631.w);
  let x_633 : vec4<f32> = u_xlat3;
  let x_636 : vec3<f32> = (vec3<f32>(x_633.x, x_633.y, x_633.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_637 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_636.x, x_636.y, x_636.z, x_637.w);
  let x_639 : vec4<f32> = u_xlat3;
  let x_641 : vec3<f32> = exp2(vec3<f32>(x_639.x, x_639.y, x_639.z));
  let x_642 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_641.x, x_641.y, x_641.z, x_642.w);
  let x_646 : vec4<f32> = u_xlat0;
  let x_648 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_646.x, x_646.y, x_646.z, x_646.x));
  u_xlatb0 = vec3<bool>(x_648.x, x_648.y, x_648.z);
  let x_651 : bool = u_xlatb0.x;
  if (x_651) {
    let x_656 : f32 = u_xlat1.x;
    x_652 = x_656;
  } else {
    let x_659 : f32 = u_xlat3.x;
    x_652 = x_659;
  }
  let x_660 : f32 = x_652;
  u_xlat2.x = x_660;
  let x_663 : bool = u_xlatb0.y;
  if (x_663) {
    let x_668 : f32 = u_xlat1.y;
    x_664 = x_668;
  } else {
    let x_671 : f32 = u_xlat3.y;
    x_664 = x_671;
  }
  let x_672 : f32 = x_664;
  u_xlat2.y = x_672;
  let x_675 : bool = u_xlatb0.z;
  if (x_675) {
    let x_680 : f32 = u_xlat1.z;
    x_676 = x_680;
  } else {
    let x_683 : f32 = u_xlat3.z;
    x_676 = x_683;
  }
  let x_684 : f32 = x_676;
  u_xlat2.z = x_684;
  let x_688 : vec4<f32> = u_xlat2;
  SV_Target0 = x_688;
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

