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

@group(0) @binding(5) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(11) var sampler_Vignette_Mask : sampler;

var<private> u_xlat8 : f32;

@group(0) @binding(6) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_GrainTex : sampler;

var<private> u_xlat15 : f32;

var<private> u_xlatb0 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_385 : f32;
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
    u_xlat6 = (vec3<f32>(x_330.x, x_330.y, x_330.z) * x_332);
    let x_335 : f32 = u_xlat0.w;
    u_xlat2.x = (x_335 + -1.0f);
    let x_339 : f32 = u_xlat1.x;
    let x_341 : f32 = u_xlat2.x;
    u_xlat2.w = ((x_339 * x_341) + 1.0f);
  } else {
    let x_351 : vec2<f32> = vs_TEXCOORD0;
    let x_352 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_351);
    u_xlat1.x = x_352.w;
    let x_356 : f32 = u_xlat1.x;
    u_xlat3.x = (x_356 * 0.077399381f);
    let x_362 : f32 = u_xlat1.x;
    u_xlat8 = (x_362 + 0.055f);
    let x_365 : f32 = u_xlat8;
    u_xlat8 = (x_365 * 0.947867334f);
    let x_368 : f32 = u_xlat8;
    u_xlat8 = max(abs(x_368), 1.1920929e-07f);
    let x_372 : f32 = u_xlat8;
    u_xlat8 = log2(x_372);
    let x_374 : f32 = u_xlat8;
    u_xlat8 = (x_374 * 2.400000095f);
    let x_377 : f32 = u_xlat8;
    u_xlat8 = exp2(x_377);
    let x_381 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_381);
    let x_383 : bool = u_xlatb1;
    if (x_383) {
      let x_389 : f32 = u_xlat3.x;
      x_385 = x_389;
    } else {
      let x_391 : f32 = u_xlat8;
      x_385 = x_391;
    }
    let x_392 : f32 = x_385;
    u_xlat1.x = x_392;
    let x_395 : vec3<f32> = x_49.x_Vignette_Color;
    let x_397 : vec3<f32> = (-(x_395) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_398 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_397.x, x_397.y, x_397.z, x_398.w);
    let x_400 : vec4<f32> = u_xlat1;
    let x_402 : vec4<f32> = u_xlat3;
    let x_406 : vec3<f32> = x_49.x_Vignette_Color;
    let x_407 : vec3<f32> = ((vec3<f32>(x_400.x, x_400.x, x_400.x) * vec3<f32>(x_402.x, x_402.y, x_402.z)) + x_406);
    let x_408 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_407.x, x_407.y, x_407.z, x_408.w);
    let x_410 : vec4<f32> = u_xlat0;
    let x_412 : vec4<f32> = u_xlat3;
    let x_415 : vec4<f32> = u_xlat0;
    let x_418 : vec3<f32> = ((vec3<f32>(x_410.x, x_410.y, x_410.z) * vec3<f32>(x_412.x, x_412.y, x_412.z)) + -(vec3<f32>(x_415.x, x_415.y, x_415.z)));
    let x_419 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_418.x, x_418.y, x_418.z, x_419.w);
    let x_423 : f32 = x_49.x_Vignette_Opacity;
    let x_425 : vec4<f32> = u_xlat3;
    let x_428 : vec4<f32> = u_xlat0;
    u_xlat6 = ((vec3<f32>(x_423, x_423, x_423) * vec3<f32>(x_425.x, x_425.y, x_425.z)) + vec3<f32>(x_428.x, x_428.y, x_428.z));
    let x_432 : f32 = u_xlat0.w;
    u_xlat0.x = (x_432 + -1.0f);
    let x_436 : f32 = u_xlat1.x;
    let x_438 : f32 = u_xlat0.x;
    u_xlat2.w = ((x_436 * x_438) + 1.0f);
  }
  let x_442 : vec2<f32> = vs_TEXCOORD1;
  let x_445 : vec4<f32> = x_49.x_Grain_Params2;
  let x_449 : vec4<f32> = x_49.x_Grain_Params2;
  let x_451 : vec2<f32> = ((x_442 * vec2<f32>(x_445.x, x_445.y)) + vec2<f32>(x_449.z, x_449.w));
  let x_452 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_451.x, x_451.y, x_452.z, x_452.w);
  let x_459 : vec4<f32> = u_xlat0;
  let x_461 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_459.x, x_459.y));
  let x_462 : vec3<f32> = vec3<f32>(x_461.x, x_461.y, x_461.z);
  let x_463 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_462.x, x_462.y, x_462.z, x_463.w);
  let x_465 : vec3<f32> = u_xlat6;
  let x_466 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_465.x, x_465.y, x_465.z, x_466.w);
  let x_468 : vec4<f32> = u_xlat3;
  let x_472 : vec3<f32> = clamp(vec3<f32>(x_468.x, x_468.y, x_468.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_473 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_472.x, x_472.y, x_472.z, x_473.w);
  let x_476 : vec4<f32> = u_xlat3;
  u_xlat15 = dot(vec3<f32>(x_476.x, x_476.y, x_476.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_483 : f32 = u_xlat15;
  u_xlat15 = sqrt(x_483);
  let x_487 : f32 = x_49.x_Grain_Params1.x;
  let x_488 : f32 = u_xlat15;
  u_xlat15 = ((x_487 * -(x_488)) + 1.0f);
  let x_492 : vec4<f32> = u_xlat0;
  let x_494 : vec3<f32> = u_xlat6;
  let x_495 : vec3<f32> = (vec3<f32>(x_492.x, x_492.y, x_492.z) * x_494);
  let x_496 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_495.x, x_495.y, x_495.z, x_496.w);
  let x_498 : vec4<f32> = u_xlat0;
  let x_501 : f32 = x_49.x_Grain_Params1.y;
  let x_503 : f32 = x_49.x_Grain_Params1.y;
  let x_505 : f32 = x_49.x_Grain_Params1.y;
  let x_507 : vec3<f32> = (vec3<f32>(x_498.x, x_498.y, x_498.z) * vec3<f32>(x_501, x_503, x_505));
  let x_508 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_507.x, x_507.y, x_507.z, x_508.w);
  let x_510 : vec4<f32> = u_xlat0;
  let x_512 : f32 = u_xlat15;
  let x_515 : vec3<f32> = u_xlat6;
  let x_516 : vec3<f32> = ((vec3<f32>(x_510.x, x_510.y, x_510.z) * vec3<f32>(x_512, x_512, x_512)) + x_515);
  let x_517 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_516.x, x_516.y, x_516.z, x_517.w);
  let x_522 : f32 = x_49.x_LumaInAlpha;
  u_xlatb0 = (0.5f < x_522);
  let x_524 : bool = u_xlatb0;
  if (x_524) {
    let x_527 : vec4<f32> = u_xlat2;
    let x_528 : vec3<f32> = vec3<f32>(x_527.x, x_527.y, x_527.z);
    let x_529 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_528.x, x_528.y, x_528.z, x_529.w);
    let x_531 : vec4<f32> = u_xlat0;
    let x_535 : vec3<f32> = clamp(vec3<f32>(x_531.x, x_531.y, x_531.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_536 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_535.x, x_535.y, x_535.z, x_536.w);
    let x_538 : vec4<f32> = u_xlat0;
    u_xlat2.w = dot(vec3<f32>(x_538.x, x_538.y, x_538.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_544 : vec4<f32> = u_xlat2;
  SV_Target0 = x_544;
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

