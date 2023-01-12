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
  var u_xlatb2 : vec3<bool>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_497 : f32;
  var x_509 : f32;
  var x_521 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlat10 : vec2<f32>;
  var u_xlatb0 : vec3<bool>;
  var x_674 : f32;
  var x_686 : f32;
  var x_698 : f32;
  var u_xlat15 : f32;
  var x_799 : f32;
  var x_811 : f32;
  var x_823 : f32;
  var x_887 : f32;
  var x_900 : f32;
  var x_912 : f32;
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
  u_xlat2 = x_438;
  let x_439 : vec4<f32> = u_xlat2;
  u_xlat2 = clamp(x_439, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_443 : vec4<f32> = u_xlat2;
  let x_447 : vec3<f32> = (vec3<f32>(x_443.z, x_443.x, x_443.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_448 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_447.x, x_447.y, x_447.z, x_448.w);
  let x_450 : vec4<f32> = u_xlat2;
  let x_453 : vec3<f32> = max(vec3<f32>(x_450.z, x_450.x, x_450.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_454 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_453.x, x_453.y, x_453.z, x_454.w);
  let x_456 : vec4<f32> = u_xlat1;
  let x_458 : vec3<f32> = log2(vec3<f32>(x_456.x, x_456.y, x_456.z));
  let x_459 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_458.x, x_458.y, x_458.z, x_459.w);
  let x_461 : vec4<f32> = u_xlat1;
  let x_465 : vec3<f32> = (vec3<f32>(x_461.x, x_461.y, x_461.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_466 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_465.x, x_465.y, x_465.z, x_466.w);
  let x_468 : vec4<f32> = u_xlat1;
  let x_470 : vec3<f32> = exp2(vec3<f32>(x_468.x, x_468.y, x_468.z));
  let x_471 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_470.x, x_470.y, x_470.z, x_471.w);
  let x_473 : vec4<f32> = u_xlat1;
  let x_480 : vec3<f32> = ((vec3<f32>(x_473.x, x_473.y, x_473.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_481 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_480.x, x_480.y, x_480.z, x_481.w);
  let x_488 : vec4<f32> = u_xlat2;
  let x_491 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_488.z, x_488.x, x_488.y, x_488.z));
  u_xlatb2 = vec3<bool>(x_491.x, x_491.y, x_491.z);
  let x_494 : vec4<f32> = u_xlat0;
  hlslcc_movcTemp = x_494;
  let x_496 : bool = u_xlatb2.x;
  if (x_496) {
    let x_501 : f32 = u_xlat0.x;
    x_497 = x_501;
  } else {
    let x_504 : f32 = u_xlat1.x;
    x_497 = x_504;
  }
  let x_505 : f32 = x_497;
  hlslcc_movcTemp.x = x_505;
  let x_508 : bool = u_xlatb2.y;
  if (x_508) {
    let x_513 : f32 = u_xlat0.y;
    x_509 = x_513;
  } else {
    let x_516 : f32 = u_xlat1.y;
    x_509 = x_516;
  }
  let x_517 : f32 = x_509;
  hlslcc_movcTemp.y = x_517;
  let x_520 : bool = u_xlatb2.z;
  if (x_520) {
    let x_525 : f32 = u_xlat0.z;
    x_521 = x_525;
  } else {
    let x_528 : f32 = u_xlat1.z;
    x_521 = x_528;
  }
  let x_529 : f32 = x_521;
  hlslcc_movcTemp.z = x_529;
  let x_531 : vec4<f32> = hlslcc_movcTemp;
  u_xlat0 = x_531;
  let x_533 : vec4<f32> = u_xlat0;
  let x_537 : vec3<f32> = x_49.x_Lut2D_Params;
  u_xlat5 = (vec3<f32>(x_533.x, x_533.y, x_533.z) * vec3<f32>(x_537.z, x_537.z, x_537.z));
  let x_541 : f32 = u_xlat5.x;
  u_xlat5.x = floor(x_541);
  let x_545 : vec3<f32> = x_49.x_Lut2D_Params;
  let x_548 : vec2<f32> = (vec2<f32>(x_545.x, x_545.y) * vec2<f32>(0.5f, 0.5f));
  let x_549 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_548.x, x_548.y, x_549.z, x_549.w);
  let x_551 : vec3<f32> = u_xlat5;
  let x_554 : vec3<f32> = x_49.x_Lut2D_Params;
  let x_557 : vec4<f32> = u_xlat1;
  let x_559 : vec2<f32> = ((vec2<f32>(x_551.y, x_551.z) * vec2<f32>(x_554.x, x_554.y)) + vec2<f32>(x_557.x, x_557.y));
  let x_560 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_560.x, x_559.x, x_559.y, x_560.w);
  let x_563 : f32 = u_xlat5.x;
  let x_565 : f32 = x_49.x_Lut2D_Params.y;
  let x_568 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_563 * x_565) + x_568);
  let x_576 : vec4<f32> = u_xlat1;
  let x_578 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_576.x, x_576.z));
  let x_579 : vec3<f32> = vec3<f32>(x_578.x, x_578.y, x_578.z);
  let x_580 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_579.x, x_579.y, x_579.z, x_580.w);
  let x_583 : f32 = x_49.x_Lut2D_Params.y;
  u_xlat3.x = x_583;
  u_xlat3.y = 0.0f;
  let x_588 : vec4<f32> = u_xlat1;
  let x_590 : vec4<f32> = u_xlat3;
  u_xlat10 = (vec2<f32>(x_588.x, x_588.z) + vec2<f32>(x_590.x, x_590.y));
  let x_596 : vec2<f32> = u_xlat10;
  let x_597 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_596);
  let x_598 : vec3<f32> = vec3<f32>(x_597.x, x_597.y, x_597.z);
  let x_599 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_598.x, x_598.y, x_598.z, x_599.w);
  let x_602 : f32 = u_xlat0.x;
  let x_604 : f32 = x_49.x_Lut2D_Params.z;
  let x_607 : f32 = u_xlat5.x;
  u_xlat0.x = ((x_602 * x_604) + -(x_607));
  let x_611 : vec4<f32> = u_xlat2;
  let x_614 : vec4<f32> = u_xlat1;
  u_xlat5 = (-(vec3<f32>(x_611.x, x_611.y, x_611.z)) + vec3<f32>(x_614.x, x_614.y, x_614.z));
  let x_617 : vec4<f32> = u_xlat0;
  let x_619 : vec3<f32> = u_xlat5;
  let x_621 : vec4<f32> = u_xlat2;
  let x_623 : vec3<f32> = ((vec3<f32>(x_617.x, x_617.x, x_617.x) * x_619) + vec3<f32>(x_621.x, x_621.y, x_621.z));
  let x_624 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_623.x, x_623.y, x_623.z, x_624.w);
  let x_626 : vec4<f32> = u_xlat0;
  let x_629 : vec3<f32> = (vec3<f32>(x_626.x, x_626.y, x_626.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_630 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_629.x, x_629.y, x_629.z, x_630.w);
  let x_632 : vec4<f32> = u_xlat0;
  let x_635 : vec3<f32> = (vec3<f32>(x_632.x, x_632.y, x_632.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_636 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_635.x, x_635.y, x_635.z, x_636.w);
  let x_638 : vec4<f32> = u_xlat2;
  let x_641 : vec3<f32> = (vec3<f32>(x_638.x, x_638.y, x_638.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_642 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_641.x, x_641.y, x_641.z, x_642.w);
  let x_644 : vec4<f32> = u_xlat2;
  let x_647 : vec3<f32> = max(abs(vec3<f32>(x_644.x, x_644.y, x_644.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_648 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_647.x, x_647.y, x_647.z, x_648.w);
  let x_650 : vec4<f32> = u_xlat2;
  let x_652 : vec3<f32> = log2(vec3<f32>(x_650.x, x_650.y, x_650.z));
  let x_653 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_652.x, x_652.y, x_652.z, x_653.w);
  let x_655 : vec4<f32> = u_xlat2;
  let x_658 : vec3<f32> = (vec3<f32>(x_655.x, x_655.y, x_655.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_659 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_658.x, x_658.y, x_658.z, x_659.w);
  let x_661 : vec4<f32> = u_xlat2;
  let x_663 : vec3<f32> = exp2(vec3<f32>(x_661.x, x_661.y, x_661.z));
  let x_664 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_663.x, x_663.y, x_663.z, x_664.w);
  let x_668 : vec4<f32> = u_xlat0;
  let x_670 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_668.x, x_668.y, x_668.z, x_668.x));
  u_xlatb0 = vec3<bool>(x_670.x, x_670.y, x_670.z);
  let x_673 : bool = u_xlatb0.x;
  if (x_673) {
    let x_678 : f32 = u_xlat1.x;
    x_674 = x_678;
  } else {
    let x_681 : f32 = u_xlat2.x;
    x_674 = x_681;
  }
  let x_682 : f32 = x_674;
  u_xlat0.x = x_682;
  let x_685 : bool = u_xlatb0.y;
  if (x_685) {
    let x_690 : f32 = u_xlat1.y;
    x_686 = x_690;
  } else {
    let x_693 : f32 = u_xlat2.y;
    x_686 = x_693;
  }
  let x_694 : f32 = x_686;
  u_xlat0.y = x_694;
  let x_697 : bool = u_xlatb0.z;
  if (x_697) {
    let x_702 : f32 = u_xlat1.z;
    x_698 = x_702;
  } else {
    let x_705 : f32 = u_xlat2.z;
    x_698 = x_705;
  }
  let x_706 : f32 = x_698;
  u_xlat0.z = x_706;
  let x_708 : vec2<f32> = vs_TEXCOORD0;
  let x_711 : vec4<f32> = x_49.x_Dithering_Coords;
  let x_715 : vec4<f32> = x_49.x_Dithering_Coords;
  let x_717 : vec2<f32> = ((x_708 * vec2<f32>(x_711.x, x_711.y)) + vec2<f32>(x_715.z, x_715.w));
  let x_718 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_717.x, x_717.y, x_718.z, x_718.w);
  let x_726 : vec4<f32> = u_xlat1;
  let x_728 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_726.x, x_726.y));
  u_xlat15 = x_728.w;
  let x_730 : f32 = u_xlat15;
  u_xlat15 = ((x_730 * 2.0f) + -1.0f);
  let x_734 : f32 = u_xlat15;
  u_xlat1.x = ((x_734 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_740 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_740, 0.0f, 1.0f);
  let x_744 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_744 * 2.0f) + -1.0f);
  let x_748 : f32 = u_xlat15;
  u_xlat15 = (-(abs(x_748)) + 1.0f);
  let x_752 : f32 = u_xlat15;
  u_xlat15 = sqrt(x_752);
  let x_754 : f32 = u_xlat15;
  u_xlat15 = (-(x_754) + 1.0f);
  let x_757 : f32 = u_xlat15;
  let x_759 : f32 = u_xlat1.x;
  u_xlat15 = (x_757 * x_759);
  let x_761 : vec4<f32> = u_xlat0;
  let x_763 : vec3<f32> = (vec3<f32>(x_761.x, x_761.y, x_761.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_764 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_763.x, x_763.y, x_763.z, x_764.w);
  let x_766 : vec4<f32> = u_xlat0;
  let x_769 : vec3<f32> = max(abs(vec3<f32>(x_766.x, x_766.y, x_766.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_770 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_769.x, x_769.y, x_769.z, x_770.w);
  let x_772 : vec4<f32> = u_xlat2;
  let x_774 : vec3<f32> = log2(vec3<f32>(x_772.x, x_772.y, x_772.z));
  let x_775 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_774.x, x_774.y, x_774.z, x_775.w);
  let x_777 : vec4<f32> = u_xlat2;
  let x_779 : vec3<f32> = (vec3<f32>(x_777.x, x_777.y, x_777.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_780 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_779.x, x_779.y, x_779.z, x_780.w);
  let x_782 : vec4<f32> = u_xlat2;
  let x_784 : vec3<f32> = exp2(vec3<f32>(x_782.x, x_782.y, x_782.z));
  let x_785 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_784.x, x_784.y, x_784.z, x_785.w);
  let x_787 : vec4<f32> = u_xlat2;
  let x_790 : vec3<f32> = ((vec3<f32>(x_787.x, x_787.y, x_787.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_791 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_790.x, x_790.y, x_790.z, x_791.w);
  let x_793 : vec4<f32> = u_xlat0;
  let x_795 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_793.x, x_793.y, x_793.z, x_793.x));
  u_xlatb0 = vec3<bool>(x_795.x, x_795.y, x_795.z);
  let x_798 : bool = u_xlatb0.x;
  if (x_798) {
    let x_803 : f32 = u_xlat1.x;
    x_799 = x_803;
  } else {
    let x_806 : f32 = u_xlat2.x;
    x_799 = x_806;
  }
  let x_807 : f32 = x_799;
  u_xlat0.x = x_807;
  let x_810 : bool = u_xlatb0.y;
  if (x_810) {
    let x_815 : f32 = u_xlat1.y;
    x_811 = x_815;
  } else {
    let x_818 : f32 = u_xlat2.y;
    x_811 = x_818;
  }
  let x_819 : f32 = x_811;
  u_xlat0.y = x_819;
  let x_822 : bool = u_xlatb0.z;
  if (x_822) {
    let x_827 : f32 = u_xlat1.z;
    x_823 = x_827;
  } else {
    let x_830 : f32 = u_xlat2.z;
    x_823 = x_830;
  }
  let x_831 : f32 = x_823;
  u_xlat0.z = x_831;
  let x_833 : f32 = u_xlat15;
  let x_838 : vec4<f32> = u_xlat0;
  let x_840 : vec3<f32> = ((vec3<f32>(x_833, x_833, x_833) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_838.x, x_838.y, x_838.z));
  let x_841 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_840.x, x_840.y, x_840.z, x_841.w);
  let x_843 : vec4<f32> = u_xlat0;
  let x_845 : vec3<f32> = (vec3<f32>(x_843.x, x_843.y, x_843.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_846 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_845.x, x_845.y, x_845.z, x_846.w);
  let x_848 : vec4<f32> = u_xlat0;
  let x_850 : vec3<f32> = (vec3<f32>(x_848.x, x_848.y, x_848.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_851 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_850.x, x_850.y, x_850.z, x_851.w);
  let x_853 : vec4<f32> = u_xlat2;
  let x_855 : vec3<f32> = (vec3<f32>(x_853.x, x_853.y, x_853.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_856 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_855.x, x_855.y, x_855.z, x_856.w);
  let x_858 : vec4<f32> = u_xlat2;
  let x_861 : vec3<f32> = max(abs(vec3<f32>(x_858.x, x_858.y, x_858.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_862 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_861.x, x_861.y, x_861.z, x_862.w);
  let x_864 : vec4<f32> = u_xlat2;
  let x_866 : vec3<f32> = log2(vec3<f32>(x_864.x, x_864.y, x_864.z));
  let x_867 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_866.x, x_866.y, x_866.z, x_867.w);
  let x_869 : vec4<f32> = u_xlat2;
  let x_871 : vec3<f32> = (vec3<f32>(x_869.x, x_869.y, x_869.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_872 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_871.x, x_871.y, x_871.z, x_872.w);
  let x_874 : vec4<f32> = u_xlat2;
  let x_876 : vec3<f32> = exp2(vec3<f32>(x_874.x, x_874.y, x_874.z));
  let x_877 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_876.x, x_876.y, x_876.z, x_877.w);
  let x_879 : vec4<f32> = u_xlat0;
  let x_881 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_879.x, x_879.y, x_879.z, x_879.x));
  u_xlatb0 = vec3<bool>(x_881.x, x_881.y, x_881.z);
  let x_886 : bool = u_xlatb0.x;
  if (x_886) {
    let x_891 : f32 = u_xlat1.x;
    x_887 = x_891;
  } else {
    let x_894 : f32 = u_xlat2.x;
    x_887 = x_894;
  }
  let x_895 : f32 = x_887;
  SV_Target0.x = x_895;
  let x_899 : bool = u_xlatb0.y;
  if (x_899) {
    let x_904 : f32 = u_xlat1.y;
    x_900 = x_904;
  } else {
    let x_907 : f32 = u_xlat2.y;
    x_900 = x_907;
  }
  let x_908 : f32 = x_900;
  SV_Target0.y = x_908;
  let x_911 : bool = u_xlatb0.z;
  if (x_911) {
    let x_916 : f32 = u_xlat1.z;
    x_912 = x_916;
  } else {
    let x_919 : f32 = u_xlat2.z;
    x_912 = x_919;
  }
  let x_920 : f32 = x_912;
  SV_Target0.z = x_920;
  let x_923 : f32 = u_xlat2.w;
  SV_Target0.w = x_923;
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

