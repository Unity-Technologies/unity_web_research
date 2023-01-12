struct PGlobals {
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
  x_PostExposure : f32,
  x_Grain_Params1 : vec2<f32>,
  @size(8)
  padding_3 : u32,
  x_Grain_Params2 : vec4<f32>,
  x_LumaInAlpha : f32,
}

@group(0) @binding(1) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_49 : PGlobals;

@group(0) @binding(2) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_BloomTex : sampler;

@group(0) @binding(3) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_Bloom_DirtTex : sampler;

@group(0) @binding(5) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_GrainTex : sampler;

@group(0) @binding(4) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(10) var sampler_Lut2D : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat16 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat11 : vec2<f32>;
  var u_xlatb1 : bool;
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
  let x_174 : vec3<f32> = (vec3<f32>(x_170.x, x_170.y, x_170.z) * vec3<f32>(0.25f, 0.25f, 0.25f));
  let x_175 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_174.x, x_174.y, x_174.z, x_175.w);
  let x_177 : vec4<f32> = u_xlat2;
  let x_180 : vec3<f32> = x_49.x_Bloom_Settings;
  let x_182 : vec3<f32> = (vec3<f32>(x_177.x, x_177.y, x_177.z) * vec3<f32>(x_180.z, x_180.z, x_180.z));
  let x_183 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_182.x, x_182.y, x_182.z, x_183.w);
  let x_185 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_185 * vec4<f32>(0.25f, 0.25f, 0.25f, 1.0f));
  let x_188 : vec4<f32> = u_xlat0;
  let x_192 : vec3<f32> = x_49.x_Bloom_Color;
  let x_193 : vec3<f32> = (vec3<f32>(x_188.x, x_188.y, x_188.z) * x_192);
  let x_194 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_193.x, x_193.y, x_193.z, x_194.w);
  let x_198 : f32 = u_xlat0.w;
  u_xlat4.w = (x_198 * 0.25f);
  let x_201 : vec4<f32> = u_xlat1;
  let x_202 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_201 + x_202);
  let x_204 : vec4<f32> = u_xlat3;
  let x_206 : vec4<f32> = u_xlat2;
  let x_208 : vec3<f32> = (vec3<f32>(x_204.x, x_204.y, x_204.z) * vec3<f32>(x_206.x, x_206.y, x_206.z));
  let x_209 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_208.x, x_208.y, x_208.z, x_209.w);
  u_xlat1.w = 0.0f;
  let x_212 : vec4<f32> = u_xlat0;
  let x_213 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_212 + x_213);
  let x_215 : vec2<f32> = vs_TEXCOORD1;
  let x_218 : vec4<f32> = x_49.x_Grain_Params2;
  let x_222 : vec4<f32> = x_49.x_Grain_Params2;
  let x_224 : vec2<f32> = ((x_215 * vec2<f32>(x_218.x, x_218.y)) + vec2<f32>(x_222.z, x_222.w));
  let x_225 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_224.x, x_224.y, x_225.z, x_225.w);
  let x_232 : vec4<f32> = u_xlat1;
  let x_234 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_232.x, x_232.y));
  let x_235 : vec3<f32> = vec3<f32>(x_234.x, x_234.y, x_234.z);
  let x_236 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_235.x, x_235.y, x_235.z, x_236.w);
  let x_238 : vec4<f32> = u_xlat0;
  let x_239 : vec3<f32> = vec3<f32>(x_238.x, x_238.y, x_238.z);
  let x_240 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_239.x, x_239.y, x_239.z, x_240.w);
  let x_242 : vec4<f32> = u_xlat2;
  let x_246 : vec3<f32> = clamp(vec3<f32>(x_242.x, x_242.y, x_242.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_247 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_246.x, x_246.y, x_246.z, x_247.w);
  let x_250 : vec4<f32> = u_xlat2;
  u_xlat16 = dot(vec3<f32>(x_250.x, x_250.y, x_250.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_257 : f32 = u_xlat16;
  u_xlat16 = sqrt(x_257);
  let x_261 : f32 = x_49.x_Grain_Params1.x;
  let x_262 : f32 = u_xlat16;
  u_xlat16 = ((x_261 * -(x_262)) + 1.0f);
  let x_266 : vec4<f32> = u_xlat0;
  let x_268 : vec4<f32> = u_xlat1;
  let x_270 : vec3<f32> = (vec3<f32>(x_266.x, x_266.y, x_266.z) * vec3<f32>(x_268.x, x_268.y, x_268.z));
  let x_271 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_270.x, x_270.y, x_270.z, x_271.w);
  let x_273 : vec4<f32> = u_xlat1;
  let x_277 : f32 = x_49.x_Grain_Params1.y;
  let x_279 : f32 = x_49.x_Grain_Params1.y;
  let x_281 : f32 = x_49.x_Grain_Params1.y;
  let x_283 : vec3<f32> = (vec3<f32>(x_273.x, x_273.y, x_273.z) * vec3<f32>(x_277, x_279, x_281));
  let x_284 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_283.x, x_283.y, x_283.z, x_284.w);
  let x_286 : vec4<f32> = u_xlat1;
  let x_288 : f32 = u_xlat16;
  let x_291 : vec4<f32> = u_xlat0;
  let x_293 : vec3<f32> = ((vec3<f32>(x_286.x, x_286.y, x_286.z) * vec3<f32>(x_288, x_288, x_288)) + vec3<f32>(x_291.x, x_291.y, x_291.z));
  let x_294 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_293.x, x_293.y, x_293.z, x_294.w);
  let x_296 : vec4<f32> = u_xlat0;
  let x_299 : f32 = x_49.x_PostExposure;
  let x_301 : f32 = x_49.x_PostExposure;
  let x_303 : f32 = x_49.x_PostExposure;
  let x_305 : f32 = x_49.x_PostExposure;
  let x_306 : vec4<f32> = vec4<f32>(x_299, x_301, x_303, x_305);
  u_xlat0 = (x_296 * vec4<f32>(x_306.x, x_306.y, x_306.z, x_306.w));
  let x_313 : vec4<f32> = u_xlat0;
  let x_320 : vec3<f32> = ((vec3<f32>(x_313.z, x_313.x, x_313.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_321 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_320.x, x_320.y, x_320.z, x_321.w);
  let x_323 : vec4<f32> = u_xlat1;
  let x_325 : vec3<f32> = log2(vec3<f32>(x_323.x, x_323.y, x_323.z));
  let x_326 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_325.x, x_325.y, x_325.z, x_326.w);
  let x_328 : vec4<f32> = u_xlat1;
  let x_335 : vec3<f32> = ((vec3<f32>(x_328.x, x_328.y, x_328.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_336 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_335.x, x_335.y, x_335.z, x_336.w);
  let x_338 : vec4<f32> = u_xlat1;
  let x_342 : vec3<f32> = clamp(vec3<f32>(x_338.x, x_338.y, x_338.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_343 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_342.x, x_342.y, x_342.z, x_343.w);
  let x_347 : vec4<f32> = u_xlat1;
  let x_351 : vec3<f32> = x_49.x_Lut2D_Params;
  u_xlat6 = (vec3<f32>(x_347.x, x_347.y, x_347.z) * vec3<f32>(x_351.z, x_351.z, x_351.z));
  let x_355 : f32 = u_xlat6.x;
  u_xlat6.x = floor(x_355);
  let x_359 : vec3<f32> = x_49.x_Lut2D_Params;
  let x_362 : vec2<f32> = (vec2<f32>(x_359.x, x_359.y) * vec2<f32>(0.5f, 0.5f));
  let x_363 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_362.x, x_362.y, x_363.z, x_363.w);
  let x_365 : vec3<f32> = u_xlat6;
  let x_368 : vec3<f32> = x_49.x_Lut2D_Params;
  let x_371 : vec4<f32> = u_xlat2;
  let x_373 : vec2<f32> = ((vec2<f32>(x_365.y, x_365.z) * vec2<f32>(x_368.x, x_368.y)) + vec2<f32>(x_371.x, x_371.y));
  let x_374 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_374.x, x_373.x, x_373.y, x_374.w);
  let x_377 : f32 = u_xlat6.x;
  let x_379 : f32 = x_49.x_Lut2D_Params.y;
  let x_382 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_377 * x_379) + x_382);
  let x_390 : vec4<f32> = u_xlat2;
  let x_392 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_390.x, x_390.z));
  let x_393 : vec3<f32> = vec3<f32>(x_392.x, x_392.y, x_392.z);
  let x_394 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_393.x, x_393.y, x_393.z, x_394.w);
  let x_397 : f32 = x_49.x_Lut2D_Params.y;
  u_xlat4.x = x_397;
  u_xlat4.y = 0.0f;
  let x_402 : vec4<f32> = u_xlat2;
  let x_404 : vec4<f32> = u_xlat4;
  u_xlat11 = (vec2<f32>(x_402.x, x_402.z) + vec2<f32>(x_404.x, x_404.y));
  let x_410 : vec2<f32> = u_xlat11;
  let x_411 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_410);
  let x_412 : vec3<f32> = vec3<f32>(x_411.x, x_411.y, x_411.z);
  let x_413 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_412.x, x_412.y, x_412.z, x_413.w);
  let x_416 : f32 = u_xlat1.x;
  let x_419 : f32 = x_49.x_Lut2D_Params.z;
  let x_422 : f32 = u_xlat6.x;
  u_xlat1.x = ((x_416 * x_419) + -(x_422));
  let x_426 : vec4<f32> = u_xlat3;
  let x_429 : vec4<f32> = u_xlat2;
  u_xlat6 = (-(vec3<f32>(x_426.x, x_426.y, x_426.z)) + vec3<f32>(x_429.x, x_429.y, x_429.z));
  let x_432 : vec4<f32> = u_xlat1;
  let x_434 : vec3<f32> = u_xlat6;
  let x_436 : vec4<f32> = u_xlat3;
  let x_438 : vec3<f32> = ((vec3<f32>(x_432.x, x_432.x, x_432.x) * x_434) + vec3<f32>(x_436.x, x_436.y, x_436.z));
  let x_439 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_438.x, x_438.y, x_438.z, x_439.w);
  let x_446 : f32 = x_49.x_LumaInAlpha;
  u_xlatb1 = (0.5f < x_446);
  let x_448 : bool = u_xlatb1;
  if (x_448) {
    let x_451 : vec4<f32> = u_xlat0;
    let x_452 : vec3<f32> = vec3<f32>(x_451.x, x_451.y, x_451.z);
    let x_453 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_452.x, x_452.y, x_452.z, x_453.w);
    let x_455 : vec4<f32> = u_xlat1;
    let x_459 : vec3<f32> = clamp(vec3<f32>(x_455.x, x_455.y, x_455.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_460 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_459.x, x_459.y, x_459.z, x_460.w);
    let x_462 : vec4<f32> = u_xlat1;
    u_xlat0.w = dot(vec3<f32>(x_462.x, x_462.y, x_462.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_468 : vec4<f32> = u_xlat0;
  SV_Target0 = x_468;
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

