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
  x_Lut2D_Params : vec3<f32>,
  x_PostExposure : f32,
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

@group(0) @binding(9) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_49 : PGlobals;

@group(0) @binding(3) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_BloomTex : sampler;

@group(0) @binding(4) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_Bloom_DirtTex : sampler;

@group(0) @binding(6) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(13) var sampler_Vignette_Mask : sampler;

@group(0) @binding(5) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(12) var sampler_Lut2D : sampler;

@group(0) @binding(0) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_DitheringTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlatb1 : bool;
  var u_xlat16 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat11 : f32;
  var x_388 : f32;
  var u_xlat5 : f32;
  var u_xlatb0 : vec3<bool>;
  var x_699 : f32;
  var x_711 : f32;
  var x_723 : f32;
  var x_792 : f32;
  var x_805 : f32;
  var x_817 : f32;
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
      let x_392 : f32 = u_xlat6.x;
      x_388 = x_392;
    } else {
      let x_394 : f32 = u_xlat11;
      x_388 = x_394;
    }
    let x_395 : f32 = x_388;
    u_xlat1.x = x_395;
    let x_398 : vec3<f32> = x_49.x_Vignette_Color;
    u_xlat6 = (-(x_398) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_401 : vec4<f32> = u_xlat1;
    let x_403 : vec3<f32> = u_xlat6;
    let x_406 : vec3<f32> = x_49.x_Vignette_Color;
    u_xlat6 = ((vec3<f32>(x_401.x, x_401.x, x_401.x) * x_403) + x_406);
    let x_408 : vec4<f32> = u_xlat0;
    let x_410 : vec3<f32> = u_xlat6;
    let x_412 : vec4<f32> = u_xlat0;
    u_xlat6 = ((vec3<f32>(x_408.x, x_408.y, x_408.z) * x_410) + -(vec3<f32>(x_412.x, x_412.y, x_412.z)));
    let x_418 : f32 = x_49.x_Vignette_Opacity;
    let x_420 : vec3<f32> = u_xlat6;
    let x_422 : vec4<f32> = u_xlat0;
    let x_424 : vec3<f32> = ((vec3<f32>(x_418, x_418, x_418) * x_420) + vec3<f32>(x_422.x, x_422.y, x_422.z));
    let x_425 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_424.x, x_424.y, x_424.z, x_425.w);
    let x_428 : f32 = u_xlat0.w;
    u_xlat0.x = (x_428 + -1.0f);
    let x_432 : f32 = u_xlat1.x;
    let x_434 : f32 = u_xlat0.x;
    u_xlat2.w = ((x_432 * x_434) + 1.0f);
  }
  let x_438 : vec4<f32> = u_xlat2;
  let x_441 : f32 = x_49.x_PostExposure;
  let x_443 : f32 = x_49.x_PostExposure;
  let x_445 : f32 = x_49.x_PostExposure;
  let x_447 : f32 = x_49.x_PostExposure;
  let x_448 : vec4<f32> = vec4<f32>(x_441, x_443, x_445, x_447);
  u_xlat0 = (x_438 * vec4<f32>(x_448.x, x_448.y, x_448.z, x_448.w));
  let x_455 : vec4<f32> = u_xlat0;
  let x_462 : vec3<f32> = ((vec3<f32>(x_455.z, x_455.x, x_455.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_463 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_462.x, x_462.y, x_462.z, x_463.w);
  let x_465 : vec4<f32> = u_xlat0;
  let x_467 : vec3<f32> = log2(vec3<f32>(x_465.x, x_465.y, x_465.z));
  let x_468 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_467.x, x_467.y, x_467.z, x_468.w);
  let x_470 : vec4<f32> = u_xlat0;
  let x_477 : vec3<f32> = ((vec3<f32>(x_470.x, x_470.y, x_470.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_478 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_477.x, x_477.y, x_477.z, x_478.w);
  let x_480 : vec4<f32> = u_xlat0;
  let x_484 : vec3<f32> = clamp(vec3<f32>(x_480.x, x_480.y, x_480.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_485 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_484.x, x_484.y, x_484.z, x_485.w);
  let x_487 : vec4<f32> = u_xlat0;
  let x_491 : vec3<f32> = x_49.x_Lut2D_Params;
  let x_493 : vec3<f32> = (vec3<f32>(x_487.x, x_487.y, x_487.z) * vec3<f32>(x_491.z, x_491.z, x_491.z));
  let x_494 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_493.x, x_493.y, x_493.z, x_494.w);
  let x_498 : f32 = u_xlat1.x;
  u_xlat5 = floor(x_498);
  let x_501 : vec3<f32> = x_49.x_Lut2D_Params;
  let x_504 : vec2<f32> = (vec2<f32>(x_501.x, x_501.y) * vec2<f32>(0.5f, 0.5f));
  let x_505 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_504.x, x_505.y, x_505.z, x_504.y);
  let x_507 : vec4<f32> = u_xlat1;
  let x_510 : vec3<f32> = x_49.x_Lut2D_Params;
  let x_513 : vec4<f32> = u_xlat1;
  let x_515 : vec2<f32> = ((vec2<f32>(x_507.y, x_507.z) * vec2<f32>(x_510.x, x_510.y)) + vec2<f32>(x_513.x, x_513.w));
  let x_516 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_516.x, x_515.x, x_515.y, x_516.w);
  let x_518 : f32 = u_xlat5;
  let x_520 : f32 = x_49.x_Lut2D_Params.y;
  let x_523 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_518 * x_520) + x_523);
  let x_531 : vec4<f32> = u_xlat1;
  let x_533 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_531.x, x_531.z));
  let x_534 : vec3<f32> = vec3<f32>(x_533.x, x_533.y, x_533.z);
  let x_535 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_534.x, x_534.y, x_534.z, x_535.w);
  let x_538 : f32 = x_49.x_Lut2D_Params.y;
  u_xlat3.x = x_538;
  u_xlat3.y = 0.0f;
  let x_541 : vec4<f32> = u_xlat1;
  let x_543 : vec4<f32> = u_xlat3;
  let x_545 : vec2<f32> = (vec2<f32>(x_541.x, x_541.z) + vec2<f32>(x_543.x, x_543.y));
  let x_546 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_545.x, x_545.y, x_546.z, x_546.w);
  let x_551 : vec4<f32> = u_xlat1;
  let x_553 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_551.x, x_551.y));
  let x_554 : vec3<f32> = vec3<f32>(x_553.x, x_553.y, x_553.z);
  let x_555 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_554.x, x_554.y, x_554.z, x_555.w);
  let x_558 : f32 = u_xlat0.x;
  let x_560 : f32 = x_49.x_Lut2D_Params.z;
  let x_562 : f32 = u_xlat5;
  u_xlat0.x = ((x_558 * x_560) + -(x_562));
  let x_566 : vec4<f32> = u_xlat2;
  let x_569 : vec4<f32> = u_xlat1;
  let x_571 : vec3<f32> = (-(vec3<f32>(x_566.x, x_566.y, x_566.z)) + vec3<f32>(x_569.x, x_569.y, x_569.z));
  let x_572 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_571.x, x_571.y, x_571.z, x_572.w);
  let x_574 : vec4<f32> = u_xlat0;
  let x_576 : vec4<f32> = u_xlat1;
  let x_579 : vec4<f32> = u_xlat2;
  let x_581 : vec3<f32> = ((vec3<f32>(x_574.x, x_574.x, x_574.x) * vec3<f32>(x_576.x, x_576.y, x_576.z)) + vec3<f32>(x_579.x, x_579.y, x_579.z));
  let x_582 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_581.x, x_581.y, x_581.z, x_582.w);
  let x_584 : vec2<f32> = vs_TEXCOORD0;
  let x_587 : vec4<f32> = x_49.x_Dithering_Coords;
  let x_591 : vec4<f32> = x_49.x_Dithering_Coords;
  let x_593 : vec2<f32> = ((x_584 * vec2<f32>(x_587.x, x_587.y)) + vec2<f32>(x_591.z, x_591.w));
  let x_594 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_593.x, x_593.y, x_594.z, x_594.w);
  let x_601 : vec4<f32> = u_xlat1;
  let x_603 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_601.x, x_601.y));
  u_xlat1.x = x_603.w;
  let x_607 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_607 * 2.0f) + -1.0f);
  let x_613 : f32 = u_xlat1.x;
  u_xlat6.x = ((x_613 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_619 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_619, 0.0f, 1.0f);
  let x_623 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_623 * 2.0f) + -1.0f);
  let x_628 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_628)) + 1.0f);
  let x_634 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_634);
  let x_638 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_638) + 1.0f);
  let x_643 : f32 = u_xlat1.x;
  let x_645 : f32 = u_xlat6.x;
  u_xlat1.x = (x_643 * x_645);
  let x_648 : vec4<f32> = u_xlat0;
  u_xlat6 = (vec3<f32>(x_648.x, x_648.y, x_648.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_653 : vec4<f32> = u_xlat0;
  let x_657 : vec3<f32> = max(abs(vec3<f32>(x_653.x, x_653.y, x_653.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_658 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_657.x, x_657.y, x_657.z, x_658.w);
  let x_660 : vec4<f32> = u_xlat2;
  let x_662 : vec3<f32> = log2(vec3<f32>(x_660.x, x_660.y, x_660.z));
  let x_663 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_662.x, x_662.y, x_662.z, x_663.w);
  let x_665 : vec4<f32> = u_xlat2;
  let x_669 : vec3<f32> = (vec3<f32>(x_665.x, x_665.y, x_665.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_670 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_669.x, x_669.y, x_669.z, x_670.w);
  let x_672 : vec4<f32> = u_xlat2;
  let x_674 : vec3<f32> = exp2(vec3<f32>(x_672.x, x_672.y, x_672.z));
  let x_675 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_674.x, x_674.y, x_674.z, x_675.w);
  let x_677 : vec4<f32> = u_xlat2;
  let x_684 : vec3<f32> = ((vec3<f32>(x_677.x, x_677.y, x_677.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_685 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_684.x, x_684.y, x_684.z, x_685.w);
  let x_692 : vec4<f32> = u_xlat0;
  let x_695 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_692.x, x_692.y, x_692.z, x_692.x));
  u_xlatb0 = vec3<bool>(x_695.x, x_695.y, x_695.z);
  let x_698 : bool = u_xlatb0.x;
  if (x_698) {
    let x_703 : f32 = u_xlat6.x;
    x_699 = x_703;
  } else {
    let x_706 : f32 = u_xlat2.x;
    x_699 = x_706;
  }
  let x_707 : f32 = x_699;
  u_xlat0.x = x_707;
  let x_710 : bool = u_xlatb0.y;
  if (x_710) {
    let x_715 : f32 = u_xlat6.y;
    x_711 = x_715;
  } else {
    let x_718 : f32 = u_xlat2.y;
    x_711 = x_718;
  }
  let x_719 : f32 = x_711;
  u_xlat0.y = x_719;
  let x_722 : bool = u_xlatb0.z;
  if (x_722) {
    let x_727 : f32 = u_xlat6.z;
    x_723 = x_727;
  } else {
    let x_730 : f32 = u_xlat2.z;
    x_723 = x_730;
  }
  let x_731 : f32 = x_723;
  u_xlat0.z = x_731;
  let x_733 : vec4<f32> = u_xlat1;
  let x_738 : vec4<f32> = u_xlat0;
  let x_740 : vec3<f32> = ((vec3<f32>(x_733.x, x_733.x, x_733.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_738.x, x_738.y, x_738.z));
  let x_741 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_740.x, x_740.y, x_740.z, x_741.w);
  let x_743 : vec4<f32> = u_xlat0;
  let x_746 : vec3<f32> = (vec3<f32>(x_743.x, x_743.y, x_743.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_747 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_746.x, x_746.y, x_746.z, x_747.w);
  let x_749 : vec4<f32> = u_xlat0;
  let x_752 : vec3<f32> = (vec3<f32>(x_749.x, x_749.y, x_749.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_753 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_752.x, x_752.y, x_752.z, x_753.w);
  let x_755 : vec4<f32> = u_xlat2;
  let x_758 : vec3<f32> = (vec3<f32>(x_755.x, x_755.y, x_755.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_759 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_758.x, x_758.y, x_758.z, x_759.w);
  let x_761 : vec4<f32> = u_xlat2;
  let x_764 : vec3<f32> = max(abs(vec3<f32>(x_761.x, x_761.y, x_761.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_765 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_764.x, x_764.y, x_764.z, x_765.w);
  let x_767 : vec4<f32> = u_xlat2;
  let x_769 : vec3<f32> = log2(vec3<f32>(x_767.x, x_767.y, x_767.z));
  let x_770 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_769.x, x_769.y, x_769.z, x_770.w);
  let x_772 : vec4<f32> = u_xlat2;
  let x_775 : vec3<f32> = (vec3<f32>(x_772.x, x_772.y, x_772.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_776 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_775.x, x_775.y, x_775.z, x_776.w);
  let x_778 : vec4<f32> = u_xlat2;
  let x_780 : vec3<f32> = exp2(vec3<f32>(x_778.x, x_778.y, x_778.z));
  let x_781 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_780.x, x_780.y, x_780.z, x_781.w);
  let x_784 : vec4<f32> = u_xlat0;
  let x_786 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_784.x, x_784.y, x_784.z, x_784.x));
  u_xlatb0 = vec3<bool>(x_786.x, x_786.y, x_786.z);
  let x_791 : bool = u_xlatb0.x;
  if (x_791) {
    let x_796 : f32 = u_xlat1.x;
    x_792 = x_796;
  } else {
    let x_799 : f32 = u_xlat2.x;
    x_792 = x_799;
  }
  let x_800 : f32 = x_792;
  SV_Target0.x = x_800;
  let x_804 : bool = u_xlatb0.y;
  if (x_804) {
    let x_809 : f32 = u_xlat1.y;
    x_805 = x_809;
  } else {
    let x_812 : f32 = u_xlat2.y;
    x_805 = x_812;
  }
  let x_813 : f32 = x_805;
  SV_Target0.y = x_813;
  let x_816 : bool = u_xlatb0.z;
  if (x_816) {
    let x_821 : f32 = u_xlat1.z;
    x_817 = x_821;
  } else {
    let x_824 : f32 = u_xlat2.z;
    x_817 = x_824;
  }
  let x_825 : f32 = x_817;
  SV_Target0.z = x_825;
  let x_828 : f32 = u_xlat0.w;
  SV_Target0.w = x_828;
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

