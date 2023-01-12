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
  @size(4)
  padding_3 : u32,
  x_Grain_Params1 : vec2<f32>,
  @size(8)
  padding_4 : u32,
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
  var u_xlatb1 : vec3<bool>;
  var x_357 : f32;
  var x_369 : f32;
  var x_382 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat11 : vec2<f32>;
  var x_539 : f32;
  var x_551 : f32;
  var x_563 : f32;
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
  let x_207 : vec2<f32> = vs_TEXCOORD1;
  let x_210 : vec4<f32> = x_49.x_Grain_Params2;
  let x_214 : vec4<f32> = x_49.x_Grain_Params2;
  let x_216 : vec2<f32> = ((x_207 * vec2<f32>(x_210.x, x_210.y)) + vec2<f32>(x_214.z, x_214.w));
  let x_217 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_216.x, x_216.y, x_217.z, x_217.w);
  let x_224 : vec4<f32> = u_xlat1;
  let x_226 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_224.x, x_224.y));
  let x_227 : vec3<f32> = vec3<f32>(x_226.x, x_226.y, x_226.z);
  let x_228 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_227.x, x_227.y, x_227.z, x_228.w);
  let x_230 : vec4<f32> = u_xlat0;
  let x_231 : vec3<f32> = vec3<f32>(x_230.x, x_230.y, x_230.z);
  let x_232 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_231.x, x_231.y, x_231.z, x_232.w);
  let x_234 : vec4<f32> = u_xlat2;
  let x_238 : vec3<f32> = clamp(vec3<f32>(x_234.x, x_234.y, x_234.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_239 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_238.x, x_238.y, x_238.z, x_239.w);
  let x_242 : vec4<f32> = u_xlat2;
  u_xlat16 = dot(vec3<f32>(x_242.x, x_242.y, x_242.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_249 : f32 = u_xlat16;
  u_xlat16 = sqrt(x_249);
  let x_253 : f32 = x_49.x_Grain_Params1.x;
  let x_254 : f32 = u_xlat16;
  u_xlat16 = ((x_253 * -(x_254)) + 1.0f);
  let x_258 : vec4<f32> = u_xlat0;
  let x_260 : vec4<f32> = u_xlat1;
  let x_262 : vec3<f32> = (vec3<f32>(x_258.x, x_258.y, x_258.z) * vec3<f32>(x_260.x, x_260.y, x_260.z));
  let x_263 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_262.x, x_262.y, x_262.z, x_263.w);
  let x_265 : vec4<f32> = u_xlat1;
  let x_269 : f32 = x_49.x_Grain_Params1.y;
  let x_271 : f32 = x_49.x_Grain_Params1.y;
  let x_273 : f32 = x_49.x_Grain_Params1.y;
  let x_275 : vec3<f32> = (vec3<f32>(x_265.x, x_265.y, x_265.z) * vec3<f32>(x_269, x_271, x_273));
  let x_276 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_275.x, x_275.y, x_275.z, x_276.w);
  let x_278 : vec4<f32> = u_xlat1;
  let x_280 : f32 = u_xlat16;
  let x_283 : vec4<f32> = u_xlat0;
  let x_285 : vec3<f32> = ((vec3<f32>(x_278.x, x_278.y, x_278.z) * vec3<f32>(x_280, x_280, x_280)) + vec3<f32>(x_283.x, x_283.y, x_283.z));
  let x_286 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_285.x, x_285.y, x_285.z, x_286.w);
  let x_288 : vec4<f32> = u_xlat1;
  let x_292 : vec3<f32> = clamp(vec3<f32>(x_288.x, x_288.y, x_288.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_293 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_292.x, x_292.y, x_292.z, x_293.w);
  let x_296 : f32 = u_xlat0.w;
  u_xlat0.w = x_296;
  let x_299 : f32 = u_xlat0.w;
  u_xlat0.w = clamp(x_299, 0.0f, 1.0f);
  let x_302 : vec4<f32> = u_xlat1;
  let x_306 : vec3<f32> = (vec3<f32>(x_302.z, x_302.x, x_302.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_307 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_306.x, x_306.y, x_306.z, x_307.w);
  let x_309 : vec4<f32> = u_xlat1;
  let x_313 : vec3<f32> = max(vec3<f32>(x_309.z, x_309.x, x_309.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_314 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_313.x, x_313.y, x_313.z, x_314.w);
  let x_316 : vec4<f32> = u_xlat3;
  let x_318 : vec3<f32> = log2(vec3<f32>(x_316.x, x_316.y, x_316.z));
  let x_319 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
  let x_321 : vec4<f32> = u_xlat3;
  let x_325 : vec3<f32> = (vec3<f32>(x_321.x, x_321.y, x_321.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_326 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_325.x, x_325.y, x_325.z, x_326.w);
  let x_328 : vec4<f32> = u_xlat3;
  let x_330 : vec3<f32> = exp2(vec3<f32>(x_328.x, x_328.y, x_328.z));
  let x_331 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_330.x, x_330.y, x_330.z, x_331.w);
  let x_333 : vec4<f32> = u_xlat3;
  let x_340 : vec3<f32> = ((vec3<f32>(x_333.x, x_333.y, x_333.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_341 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_340.x, x_340.y, x_340.z, x_341.w);
  let x_349 : vec4<f32> = u_xlat1;
  let x_352 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_349.z, x_349.x, x_349.y, x_349.z));
  u_xlatb1 = vec3<bool>(x_352.x, x_352.y, x_352.z);
  let x_356 : bool = u_xlatb1.x;
  if (x_356) {
    let x_361 : f32 = u_xlat2.x;
    x_357 = x_361;
  } else {
    let x_364 : f32 = u_xlat3.x;
    x_357 = x_364;
  }
  let x_365 : f32 = x_357;
  u_xlat1.x = x_365;
  let x_368 : bool = u_xlatb1.y;
  if (x_368) {
    let x_373 : f32 = u_xlat2.y;
    x_369 = x_373;
  } else {
    let x_376 : f32 = u_xlat3.y;
    x_369 = x_376;
  }
  let x_377 : f32 = x_369;
  u_xlat1.y = x_377;
  let x_381 : bool = u_xlatb1.z;
  if (x_381) {
    let x_386 : f32 = u_xlat2.z;
    x_382 = x_386;
  } else {
    let x_389 : f32 = u_xlat3.z;
    x_382 = x_389;
  }
  let x_390 : f32 = x_382;
  u_xlat1.z = x_390;
  let x_394 : vec4<f32> = u_xlat1;
  let x_398 : vec3<f32> = x_49.x_Lut2D_Params;
  u_xlat6 = (vec3<f32>(x_394.x, x_394.y, x_394.z) * vec3<f32>(x_398.z, x_398.z, x_398.z));
  let x_402 : f32 = u_xlat6.x;
  u_xlat6.x = floor(x_402);
  let x_406 : vec3<f32> = x_49.x_Lut2D_Params;
  let x_409 : vec2<f32> = (vec2<f32>(x_406.x, x_406.y) * vec2<f32>(0.5f, 0.5f));
  let x_410 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_409.x, x_409.y, x_410.z, x_410.w);
  let x_412 : vec3<f32> = u_xlat6;
  let x_415 : vec3<f32> = x_49.x_Lut2D_Params;
  let x_418 : vec4<f32> = u_xlat2;
  let x_420 : vec2<f32> = ((vec2<f32>(x_412.y, x_412.z) * vec2<f32>(x_415.x, x_415.y)) + vec2<f32>(x_418.x, x_418.y));
  let x_421 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_421.x, x_420.x, x_420.y, x_421.w);
  let x_424 : f32 = u_xlat6.x;
  let x_426 : f32 = x_49.x_Lut2D_Params.y;
  let x_429 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_424 * x_426) + x_429);
  let x_437 : vec4<f32> = u_xlat2;
  let x_439 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_437.x, x_437.z));
  let x_440 : vec3<f32> = vec3<f32>(x_439.x, x_439.y, x_439.z);
  let x_441 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_440.x, x_440.y, x_440.z, x_441.w);
  let x_444 : f32 = x_49.x_Lut2D_Params.y;
  u_xlat4.x = x_444;
  u_xlat4.y = 0.0f;
  let x_449 : vec4<f32> = u_xlat2;
  let x_451 : vec4<f32> = u_xlat4;
  u_xlat11 = (vec2<f32>(x_449.x, x_449.z) + vec2<f32>(x_451.x, x_451.y));
  let x_457 : vec2<f32> = u_xlat11;
  let x_458 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_457);
  let x_459 : vec3<f32> = vec3<f32>(x_458.x, x_458.y, x_458.z);
  let x_460 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_459.x, x_459.y, x_459.z, x_460.w);
  let x_463 : f32 = u_xlat1.x;
  let x_465 : f32 = x_49.x_Lut2D_Params.z;
  let x_468 : f32 = u_xlat6.x;
  u_xlat1.x = ((x_463 * x_465) + -(x_468));
  let x_472 : vec4<f32> = u_xlat3;
  let x_475 : vec4<f32> = u_xlat2;
  u_xlat6 = (-(vec3<f32>(x_472.x, x_472.y, x_472.z)) + vec3<f32>(x_475.x, x_475.y, x_475.z));
  let x_478 : vec4<f32> = u_xlat1;
  let x_480 : vec3<f32> = u_xlat6;
  let x_482 : vec4<f32> = u_xlat3;
  let x_484 : vec3<f32> = ((vec3<f32>(x_478.x, x_478.x, x_478.x) * x_480) + vec3<f32>(x_482.x, x_482.y, x_482.z));
  let x_485 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_484.x, x_484.y, x_484.z, x_485.w);
  let x_487 : vec4<f32> = u_xlat1;
  let x_491 : vec3<f32> = (vec3<f32>(x_487.x, x_487.y, x_487.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_492 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_491.x, x_491.y, x_491.z, x_492.w);
  let x_494 : vec4<f32> = u_xlat1;
  let x_498 : vec3<f32> = (vec3<f32>(x_494.x, x_494.y, x_494.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_499 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_498.x, x_498.y, x_498.z, x_499.w);
  let x_501 : vec4<f32> = u_xlat3;
  let x_505 : vec3<f32> = (vec3<f32>(x_501.x, x_501.y, x_501.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_506 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_505.x, x_505.y, x_505.z, x_506.w);
  let x_508 : vec4<f32> = u_xlat3;
  let x_511 : vec3<f32> = max(abs(vec3<f32>(x_508.x, x_508.y, x_508.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_512 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_511.x, x_511.y, x_511.z, x_512.w);
  let x_514 : vec4<f32> = u_xlat3;
  let x_516 : vec3<f32> = log2(vec3<f32>(x_514.x, x_514.y, x_514.z));
  let x_517 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_516.x, x_516.y, x_516.z, x_517.w);
  let x_519 : vec4<f32> = u_xlat3;
  let x_523 : vec3<f32> = (vec3<f32>(x_519.x, x_519.y, x_519.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_524 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_523.x, x_523.y, x_523.z, x_524.w);
  let x_526 : vec4<f32> = u_xlat3;
  let x_528 : vec3<f32> = exp2(vec3<f32>(x_526.x, x_526.y, x_526.z));
  let x_529 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_528.x, x_528.y, x_528.z, x_529.w);
  let x_533 : vec4<f32> = u_xlat1;
  let x_535 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_533.x, x_533.y, x_533.z, x_533.x));
  u_xlatb1 = vec3<bool>(x_535.x, x_535.y, x_535.z);
  let x_538 : bool = u_xlatb1.x;
  if (x_538) {
    let x_543 : f32 = u_xlat2.x;
    x_539 = x_543;
  } else {
    let x_546 : f32 = u_xlat3.x;
    x_539 = x_546;
  }
  let x_547 : f32 = x_539;
  u_xlat0.x = x_547;
  let x_550 : bool = u_xlatb1.y;
  if (x_550) {
    let x_555 : f32 = u_xlat2.y;
    x_551 = x_555;
  } else {
    let x_558 : f32 = u_xlat3.y;
    x_551 = x_558;
  }
  let x_559 : f32 = x_551;
  u_xlat0.y = x_559;
  let x_562 : bool = u_xlatb1.z;
  if (x_562) {
    let x_567 : f32 = u_xlat2.z;
    x_563 = x_567;
  } else {
    let x_570 : f32 = u_xlat3.z;
    x_563 = x_570;
  }
  let x_571 : f32 = x_563;
  u_xlat0.z = x_571;
  let x_575 : f32 = x_49.x_LumaInAlpha;
  u_xlatb1.x = (0.5f < x_575);
  let x_579 : bool = u_xlatb1.x;
  if (x_579) {
    let x_582 : vec4<f32> = u_xlat0;
    let x_583 : vec3<f32> = vec3<f32>(x_582.x, x_582.y, x_582.z);
    let x_584 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_583.x, x_583.y, x_583.z, x_584.w);
    let x_586 : vec4<f32> = u_xlat1;
    let x_590 : vec3<f32> = clamp(vec3<f32>(x_586.x, x_586.y, x_586.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_591 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_590.x, x_590.y, x_590.z, x_591.w);
    let x_593 : vec4<f32> = u_xlat1;
    u_xlat0.w = dot(vec3<f32>(x_593.x, x_593.y, x_593.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_599 : vec4<f32> = u_xlat0;
  SV_Target0 = x_599;
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

