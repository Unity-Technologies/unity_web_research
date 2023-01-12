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
  x_Lut3D_Params : vec2<f32>,
  x_PostExposure : f32,
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
  x_Grain_Params1 : vec2<f32>,
  x_Grain_Params2 : vec4<f32>,
}

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_49 : PGlobals;

@group(0) @binding(3) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_BloomTex : sampler;

@group(0) @binding(4) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_Bloom_DirtTex : sampler;

@group(0) @binding(6) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(14) var sampler_Vignette_Mask : sampler;

@group(0) @binding(7) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(15) var sampler_GrainTex : sampler;

@group(0) @binding(5) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(13) var sampler_Lut3D : sampler;

@group(0) @binding(0) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_DitheringTex : sampler;

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
  var u_xlat8 : f32;
  var x_384 : f32;
  var u_xlat15 : f32;
  var u_xlatb0 : vec3<bool>;
  var x_720 : f32;
  var x_732 : f32;
  var x_744 : f32;
  var x_813 : f32;
  var x_826 : f32;
  var x_838 : f32;
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
      let x_388 : f32 = u_xlat3.x;
      x_384 = x_388;
    } else {
      let x_390 : f32 = u_xlat8;
      x_384 = x_390;
    }
    let x_391 : f32 = x_384;
    u_xlat1.x = x_391;
    let x_394 : vec3<f32> = x_49.x_Vignette_Color;
    let x_396 : vec3<f32> = (-(x_394) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_397 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_396.x, x_396.y, x_396.z, x_397.w);
    let x_399 : vec4<f32> = u_xlat1;
    let x_401 : vec4<f32> = u_xlat3;
    let x_405 : vec3<f32> = x_49.x_Vignette_Color;
    let x_406 : vec3<f32> = ((vec3<f32>(x_399.x, x_399.x, x_399.x) * vec3<f32>(x_401.x, x_401.y, x_401.z)) + x_405);
    let x_407 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_406.x, x_406.y, x_406.z, x_407.w);
    let x_409 : vec4<f32> = u_xlat0;
    let x_411 : vec4<f32> = u_xlat3;
    let x_414 : vec4<f32> = u_xlat0;
    let x_417 : vec3<f32> = ((vec3<f32>(x_409.x, x_409.y, x_409.z) * vec3<f32>(x_411.x, x_411.y, x_411.z)) + -(vec3<f32>(x_414.x, x_414.y, x_414.z)));
    let x_418 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_417.x, x_417.y, x_417.z, x_418.w);
    let x_422 : f32 = x_49.x_Vignette_Opacity;
    let x_424 : vec4<f32> = u_xlat3;
    let x_427 : vec4<f32> = u_xlat0;
    u_xlat6 = ((vec3<f32>(x_422, x_422, x_422) * vec3<f32>(x_424.x, x_424.y, x_424.z)) + vec3<f32>(x_427.x, x_427.y, x_427.z));
    let x_431 : f32 = u_xlat0.w;
    u_xlat0.x = (x_431 + -1.0f);
    let x_435 : f32 = u_xlat1.x;
    let x_437 : f32 = u_xlat0.x;
    u_xlat2.w = ((x_435 * x_437) + 1.0f);
  }
  let x_441 : vec2<f32> = vs_TEXCOORD1;
  let x_444 : vec4<f32> = x_49.x_Grain_Params2;
  let x_448 : vec4<f32> = x_49.x_Grain_Params2;
  let x_450 : vec2<f32> = ((x_441 * vec2<f32>(x_444.x, x_444.y)) + vec2<f32>(x_448.z, x_448.w));
  let x_451 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_450.x, x_450.y, x_451.z, x_451.w);
  let x_458 : vec4<f32> = u_xlat0;
  let x_460 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_458.x, x_458.y));
  let x_461 : vec3<f32> = vec3<f32>(x_460.x, x_460.y, x_460.z);
  let x_462 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_461.x, x_461.y, x_461.z, x_462.w);
  let x_464 : vec3<f32> = u_xlat6;
  let x_465 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_464.x, x_464.y, x_464.z, x_465.w);
  let x_467 : vec4<f32> = u_xlat3;
  let x_471 : vec3<f32> = clamp(vec3<f32>(x_467.x, x_467.y, x_467.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_472 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_471.x, x_471.y, x_471.z, x_472.w);
  let x_475 : vec4<f32> = u_xlat3;
  u_xlat15 = dot(vec3<f32>(x_475.x, x_475.y, x_475.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_482 : f32 = u_xlat15;
  u_xlat15 = sqrt(x_482);
  let x_486 : f32 = x_49.x_Grain_Params1.x;
  let x_487 : f32 = u_xlat15;
  u_xlat15 = ((x_486 * -(x_487)) + 1.0f);
  let x_491 : vec4<f32> = u_xlat0;
  let x_493 : vec3<f32> = u_xlat6;
  let x_494 : vec3<f32> = (vec3<f32>(x_491.x, x_491.y, x_491.z) * x_493);
  let x_495 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_494.x, x_494.y, x_494.z, x_495.w);
  let x_497 : vec4<f32> = u_xlat0;
  let x_500 : f32 = x_49.x_Grain_Params1.y;
  let x_502 : f32 = x_49.x_Grain_Params1.y;
  let x_504 : f32 = x_49.x_Grain_Params1.y;
  let x_506 : vec3<f32> = (vec3<f32>(x_497.x, x_497.y, x_497.z) * vec3<f32>(x_500, x_502, x_504));
  let x_507 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_506.x, x_506.y, x_506.z, x_507.w);
  let x_509 : vec4<f32> = u_xlat0;
  let x_511 : f32 = u_xlat15;
  let x_514 : vec3<f32> = u_xlat6;
  let x_515 : vec3<f32> = ((vec3<f32>(x_509.x, x_509.y, x_509.z) * vec3<f32>(x_511, x_511, x_511)) + x_514);
  let x_516 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_515.x, x_515.y, x_515.z, x_516.w);
  let x_518 : vec4<f32> = u_xlat2;
  let x_521 : f32 = x_49.x_PostExposure;
  let x_523 : f32 = x_49.x_PostExposure;
  let x_525 : f32 = x_49.x_PostExposure;
  let x_527 : f32 = x_49.x_PostExposure;
  let x_528 : vec4<f32> = vec4<f32>(x_521, x_523, x_525, x_527);
  u_xlat0 = (x_518 * vec4<f32>(x_528.x, x_528.y, x_528.z, x_528.w));
  let x_535 : vec4<f32> = u_xlat0;
  let x_542 : vec3<f32> = ((vec3<f32>(x_535.x, x_535.y, x_535.z) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_543 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_542.x, x_542.y, x_542.z, x_543.w);
  let x_545 : vec4<f32> = u_xlat0;
  let x_547 : vec3<f32> = log2(vec3<f32>(x_545.x, x_545.y, x_545.z));
  let x_548 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_547.x, x_547.y, x_547.z, x_548.w);
  let x_550 : vec4<f32> = u_xlat0;
  let x_557 : vec3<f32> = ((vec3<f32>(x_550.x, x_550.y, x_550.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_558 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_557.x, x_557.y, x_557.z, x_558.w);
  let x_560 : vec4<f32> = u_xlat0;
  let x_564 : vec3<f32> = clamp(vec3<f32>(x_560.x, x_560.y, x_560.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_565 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_564.x, x_564.y, x_564.z, x_565.w);
  let x_567 : vec4<f32> = u_xlat0;
  let x_571 : vec2<f32> = x_49.x_Lut3D_Params;
  let x_573 : vec3<f32> = (vec3<f32>(x_567.x, x_567.y, x_567.z) * vec3<f32>(x_571.y, x_571.y, x_571.y));
  let x_574 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_573.x, x_573.y, x_573.z, x_574.w);
  let x_577 : f32 = x_49.x_Lut3D_Params.x;
  u_xlat1.x = (x_577 * 0.5f);
  let x_580 : vec4<f32> = u_xlat0;
  let x_583 : vec2<f32> = x_49.x_Lut3D_Params;
  let x_586 : vec4<f32> = u_xlat1;
  let x_588 : vec3<f32> = ((vec3<f32>(x_580.x, x_580.y, x_580.z) * vec3<f32>(x_583.x, x_583.x, x_583.x)) + vec3<f32>(x_586.x, x_586.x, x_586.x));
  let x_589 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_588.x, x_588.y, x_588.z, x_589.w);
  let x_599 : vec4<f32> = u_xlat0;
  let x_601 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, vec3<f32>(x_599.x, x_599.y, x_599.z));
  let x_602 : vec3<f32> = vec3<f32>(x_601.x, x_601.y, x_601.z);
  let x_603 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_602.x, x_602.y, x_602.z, x_603.w);
  let x_605 : vec2<f32> = vs_TEXCOORD0;
  let x_608 : vec4<f32> = x_49.x_Dithering_Coords;
  let x_612 : vec4<f32> = x_49.x_Dithering_Coords;
  let x_614 : vec2<f32> = ((x_605 * vec2<f32>(x_608.x, x_608.y)) + vec2<f32>(x_612.z, x_612.w));
  let x_615 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_614.x, x_614.y, x_615.z, x_615.w);
  let x_622 : vec4<f32> = u_xlat1;
  let x_624 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_622.x, x_622.y));
  u_xlat1.x = x_624.w;
  let x_628 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_628 * 2.0f) + -1.0f);
  let x_634 : f32 = u_xlat1.x;
  u_xlat6.x = ((x_634 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_640 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_640, 0.0f, 1.0f);
  let x_644 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_644 * 2.0f) + -1.0f);
  let x_649 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_649)) + 1.0f);
  let x_655 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_655);
  let x_659 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_659) + 1.0f);
  let x_664 : f32 = u_xlat1.x;
  let x_666 : f32 = u_xlat6.x;
  u_xlat1.x = (x_664 * x_666);
  let x_669 : vec4<f32> = u_xlat0;
  u_xlat6 = (vec3<f32>(x_669.x, x_669.y, x_669.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_674 : vec4<f32> = u_xlat0;
  let x_678 : vec3<f32> = max(abs(vec3<f32>(x_674.x, x_674.y, x_674.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_679 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_678.x, x_678.y, x_678.z, x_679.w);
  let x_681 : vec4<f32> = u_xlat2;
  let x_683 : vec3<f32> = log2(vec3<f32>(x_681.x, x_681.y, x_681.z));
  let x_684 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_683.x, x_683.y, x_683.z, x_684.w);
  let x_686 : vec4<f32> = u_xlat2;
  let x_690 : vec3<f32> = (vec3<f32>(x_686.x, x_686.y, x_686.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_691 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_690.x, x_690.y, x_690.z, x_691.w);
  let x_693 : vec4<f32> = u_xlat2;
  let x_695 : vec3<f32> = exp2(vec3<f32>(x_693.x, x_693.y, x_693.z));
  let x_696 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_695.x, x_695.y, x_695.z, x_696.w);
  let x_698 : vec4<f32> = u_xlat2;
  let x_705 : vec3<f32> = ((vec3<f32>(x_698.x, x_698.y, x_698.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_706 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_705.x, x_705.y, x_705.z, x_706.w);
  let x_713 : vec4<f32> = u_xlat0;
  let x_716 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_713.x, x_713.y, x_713.z, x_713.x));
  u_xlatb0 = vec3<bool>(x_716.x, x_716.y, x_716.z);
  let x_719 : bool = u_xlatb0.x;
  if (x_719) {
    let x_724 : f32 = u_xlat6.x;
    x_720 = x_724;
  } else {
    let x_727 : f32 = u_xlat2.x;
    x_720 = x_727;
  }
  let x_728 : f32 = x_720;
  u_xlat0.x = x_728;
  let x_731 : bool = u_xlatb0.y;
  if (x_731) {
    let x_736 : f32 = u_xlat6.y;
    x_732 = x_736;
  } else {
    let x_739 : f32 = u_xlat2.y;
    x_732 = x_739;
  }
  let x_740 : f32 = x_732;
  u_xlat0.y = x_740;
  let x_743 : bool = u_xlatb0.z;
  if (x_743) {
    let x_748 : f32 = u_xlat6.z;
    x_744 = x_748;
  } else {
    let x_751 : f32 = u_xlat2.z;
    x_744 = x_751;
  }
  let x_752 : f32 = x_744;
  u_xlat0.z = x_752;
  let x_754 : vec4<f32> = u_xlat1;
  let x_759 : vec4<f32> = u_xlat0;
  let x_761 : vec3<f32> = ((vec3<f32>(x_754.x, x_754.x, x_754.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_759.x, x_759.y, x_759.z));
  let x_762 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_761.x, x_761.y, x_761.z, x_762.w);
  let x_764 : vec4<f32> = u_xlat0;
  let x_767 : vec3<f32> = (vec3<f32>(x_764.x, x_764.y, x_764.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_768 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_767.x, x_767.y, x_767.z, x_768.w);
  let x_770 : vec4<f32> = u_xlat0;
  let x_773 : vec3<f32> = (vec3<f32>(x_770.x, x_770.y, x_770.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_774 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_773.x, x_773.y, x_773.z, x_774.w);
  let x_776 : vec4<f32> = u_xlat2;
  let x_779 : vec3<f32> = (vec3<f32>(x_776.x, x_776.y, x_776.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_780 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_779.x, x_779.y, x_779.z, x_780.w);
  let x_782 : vec4<f32> = u_xlat2;
  let x_785 : vec3<f32> = max(abs(vec3<f32>(x_782.x, x_782.y, x_782.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_786 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_785.x, x_785.y, x_785.z, x_786.w);
  let x_788 : vec4<f32> = u_xlat2;
  let x_790 : vec3<f32> = log2(vec3<f32>(x_788.x, x_788.y, x_788.z));
  let x_791 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_790.x, x_790.y, x_790.z, x_791.w);
  let x_793 : vec4<f32> = u_xlat2;
  let x_796 : vec3<f32> = (vec3<f32>(x_793.x, x_793.y, x_793.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_797 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_796.x, x_796.y, x_796.z, x_797.w);
  let x_799 : vec4<f32> = u_xlat2;
  let x_801 : vec3<f32> = exp2(vec3<f32>(x_799.x, x_799.y, x_799.z));
  let x_802 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_801.x, x_801.y, x_801.z, x_802.w);
  let x_805 : vec4<f32> = u_xlat0;
  let x_807 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_805.x, x_805.y, x_805.z, x_805.x));
  u_xlatb0 = vec3<bool>(x_807.x, x_807.y, x_807.z);
  let x_812 : bool = u_xlatb0.x;
  if (x_812) {
    let x_817 : f32 = u_xlat1.x;
    x_813 = x_817;
  } else {
    let x_820 : f32 = u_xlat2.x;
    x_813 = x_820;
  }
  let x_821 : f32 = x_813;
  SV_Target0.x = x_821;
  let x_825 : bool = u_xlatb0.y;
  if (x_825) {
    let x_830 : f32 = u_xlat1.y;
    x_826 = x_830;
  } else {
    let x_833 : f32 = u_xlat2.y;
    x_826 = x_833;
  }
  let x_834 : f32 = x_826;
  SV_Target0.y = x_834;
  let x_837 : bool = u_xlatb0.z;
  if (x_837) {
    let x_842 : f32 = u_xlat1.z;
    x_838 = x_842;
  } else {
    let x_845 : f32 = u_xlat2.z;
    x_838 = x_845;
  }
  let x_846 : f32 = x_838;
  SV_Target0.z = x_846;
  let x_849 : f32 = u_xlat0.w;
  SV_Target0.w = x_849;
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

