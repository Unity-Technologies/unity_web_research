struct PGlobals {
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
  x_Grain_Params1 : vec2<f32>,
  @size(8)
  padding_3 : u32,
  x_Grain_Params2 : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_30 : PGlobals;

@group(0) @binding(3) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_BloomTex : sampler;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_AutoExposureTex : sampler;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(4) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_Bloom_DirtTex : sampler;

@group(0) @binding(6) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(13) var sampler_GrainTex : sampler;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(5) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(12) var sampler_Lut2D : sampler;

@group(0) @binding(0) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_DitheringTex : sampler;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlatb0 : vec3<bool>;
  var x_629 : f32;
  var x_641 : f32;
  var x_653 : f32;
  var u_xlat15 : f32;
  var x_777 : f32;
  var x_789 : f32;
  var x_801 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD0;
  let x_14 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_13.x, x_13.y, x_14.z, x_14.w);
  let x_16 : vec4<f32> = u_xlat0;
  let x_22 : vec2<f32> = clamp(vec2<f32>(x_16.x, x_16.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_23 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_22.x, x_22.y, x_23.z, x_23.w);
  let x_25 : vec4<f32> = u_xlat0;
  let x_35 : f32 = x_30.x_RenderViewportScaleFactor;
  let x_37 : vec2<f32> = (vec2<f32>(x_25.x, x_25.y) * vec2<f32>(x_35, x_35));
  let x_38 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_37.x, x_37.y, x_38.z, x_38.w);
  let x_50 : vec4<f32> = u_xlat0;
  let x_52 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_50.x, x_50.y));
  u_xlat0 = x_52;
  let x_57 : vec4<f32> = x_30.x_BloomTex_TexelSize;
  u_xlat1 = (vec4<f32>(x_57.x, x_57.y, x_57.x, x_57.y) * vec4<f32>(1.0f, 1.0f, -1.0f, 0.0f));
  let x_63 : vec4<f32> = u_xlat1;
  let x_69 : vec3<f32> = x_30.x_Bloom_Settings;
  let x_72 : vec2<f32> = vs_TEXCOORD0;
  u_xlat2 = ((-(vec4<f32>(x_63.x, x_63.y, x_63.w, x_63.y)) * vec4<f32>(x_69.x, x_69.x, x_69.x, x_69.x)) + vec4<f32>(x_72.x, x_72.y, x_72.x, x_72.y));
  let x_75 : vec4<f32> = u_xlat2;
  u_xlat2 = clamp(x_75, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_79 : vec4<f32> = u_xlat2;
  let x_81 : f32 = x_30.x_RenderViewportScaleFactor;
  u_xlat2 = (x_79 * vec4<f32>(x_81, x_81, x_81, x_81));
  let x_88 : vec4<f32> = u_xlat2;
  let x_90 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_88.x, x_88.y));
  u_xlat3 = x_90;
  let x_94 : vec4<f32> = u_xlat2;
  let x_96 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_94.z, x_94.w));
  u_xlat2 = x_96;
  let x_97 : vec4<f32> = u_xlat2;
  let x_101 : vec4<f32> = u_xlat3;
  u_xlat2 = ((x_97 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_101);
  let x_103 : vec4<f32> = u_xlat1;
  let x_107 : vec3<f32> = x_30.x_Bloom_Settings;
  let x_110 : vec2<f32> = vs_TEXCOORD0;
  let x_111 : vec2<f32> = ((-(vec2<f32>(x_103.z, x_103.y)) * vec2<f32>(x_107.x, x_107.x)) + x_110);
  let x_112 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_111.x, x_111.y, x_112.z, x_112.w);
  let x_114 : vec4<f32> = u_xlat3;
  let x_118 : vec2<f32> = clamp(vec2<f32>(x_114.x, x_114.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_119 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_118.x, x_118.y, x_119.z, x_119.w);
  let x_121 : vec4<f32> = u_xlat3;
  let x_124 : f32 = x_30.x_RenderViewportScaleFactor;
  let x_126 : vec2<f32> = (vec2<f32>(x_121.x, x_121.y) * vec2<f32>(x_124, x_124));
  let x_127 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_126.x, x_126.y, x_127.z, x_127.w);
  let x_132 : vec4<f32> = u_xlat3;
  let x_134 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_132.x, x_132.y));
  u_xlat3 = x_134;
  let x_135 : vec4<f32> = u_xlat2;
  let x_136 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_135 + x_136);
  let x_138 : vec4<f32> = u_xlat1;
  let x_141 : vec3<f32> = x_30.x_Bloom_Settings;
  let x_144 : vec2<f32> = vs_TEXCOORD0;
  u_xlat3 = ((vec4<f32>(x_138.z, x_138.w, x_138.x, x_138.w) * vec4<f32>(x_141.x, x_141.x, x_141.x, x_141.x)) + vec4<f32>(x_144.x, x_144.y, x_144.x, x_144.y));
  let x_147 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_147, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_151 : vec4<f32> = u_xlat3;
  let x_153 : f32 = x_30.x_RenderViewportScaleFactor;
  u_xlat3 = (x_151 * vec4<f32>(x_153, x_153, x_153, x_153));
  let x_160 : vec4<f32> = u_xlat3;
  let x_162 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_160.x, x_160.y));
  u_xlat4 = x_162;
  let x_166 : vec4<f32> = u_xlat3;
  let x_168 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_166.z, x_166.w));
  u_xlat3 = x_168;
  let x_169 : vec4<f32> = u_xlat4;
  let x_171 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_169 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_171);
  let x_173 : vec4<f32> = u_xlat0;
  let x_177 : vec4<f32> = u_xlat2;
  u_xlat0 = ((x_173 * vec4<f32>(4.0f, 4.0f, 4.0f, 4.0f)) + x_177);
  let x_179 : vec4<f32> = u_xlat3;
  let x_181 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_179 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_181);
  let x_183 : vec4<f32> = u_xlat1;
  let x_186 : vec3<f32> = x_30.x_Bloom_Settings;
  let x_189 : vec2<f32> = vs_TEXCOORD0;
  u_xlat2 = ((vec4<f32>(x_183.z, x_183.y, x_183.w, x_183.y) * vec4<f32>(x_186.x, x_186.x, x_186.x, x_186.x)) + vec4<f32>(x_189.x, x_189.y, x_189.x, x_189.y));
  let x_192 : vec4<f32> = u_xlat2;
  u_xlat2 = clamp(x_192, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_196 : vec4<f32> = u_xlat1;
  let x_199 : vec3<f32> = x_30.x_Bloom_Settings;
  let x_202 : vec2<f32> = vs_TEXCOORD0;
  let x_203 : vec2<f32> = ((vec2<f32>(x_196.x, x_196.y) * vec2<f32>(x_199.x, x_199.x)) + x_202);
  let x_204 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_203.x, x_203.y, x_204.z, x_204.w);
  let x_206 : vec4<f32> = u_xlat1;
  let x_210 : vec2<f32> = clamp(vec2<f32>(x_206.x, x_206.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_211 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_210.x, x_210.y, x_211.z, x_211.w);
  let x_213 : vec4<f32> = u_xlat1;
  let x_216 : f32 = x_30.x_RenderViewportScaleFactor;
  let x_218 : vec2<f32> = (vec2<f32>(x_213.x, x_213.y) * vec2<f32>(x_216, x_216));
  let x_219 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_218.x, x_218.y, x_219.z, x_219.w);
  let x_224 : vec4<f32> = u_xlat1;
  let x_226 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_224.x, x_224.y));
  u_xlat1 = x_226;
  let x_227 : vec4<f32> = u_xlat2;
  let x_229 : f32 = x_30.x_RenderViewportScaleFactor;
  u_xlat2 = (x_227 * vec4<f32>(x_229, x_229, x_229, x_229));
  let x_235 : vec4<f32> = u_xlat2;
  let x_237 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_235.x, x_235.y));
  u_xlat3 = x_237;
  let x_241 : vec4<f32> = u_xlat2;
  let x_243 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_241.z, x_241.w));
  u_xlat2 = x_243;
  let x_244 : vec4<f32> = u_xlat0;
  let x_245 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_244 + x_245);
  let x_247 : vec4<f32> = u_xlat2;
  let x_249 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_247 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_249);
  let x_251 : vec4<f32> = u_xlat1;
  let x_252 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_251 + x_252);
  let x_254 : vec4<f32> = u_xlat0;
  let x_256 : vec3<f32> = x_30.x_Bloom_Settings;
  u_xlat0 = (x_254 * vec4<f32>(x_256.y, x_256.y, x_256.y, x_256.y));
  let x_259 : vec4<f32> = u_xlat0;
  u_xlat1 = (x_259 * vec4<f32>(0.0625f, 0.0625f, 0.0625f, 1.0f));
  let x_263 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_263 * vec4<f32>(0.0625f, 0.0625f, 0.0625f, 0.0625f));
  let x_266 : vec4<f32> = u_xlat1;
  let x_270 : vec3<f32> = x_30.x_Bloom_Color;
  let x_271 : vec3<f32> = (vec3<f32>(x_266.x, x_266.y, x_266.z) * x_270);
  let x_272 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_271.x, x_271.y, x_271.z, x_272.w);
  let x_278 : f32 = u_xlat1.w;
  u_xlat2.w = (x_278 * 0.0625f);
  let x_286 : vec2<f32> = vs_TEXCOORD0;
  let x_287 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_286);
  u_xlat1.x = x_287.x;
  let x_297 : vec2<f32> = vs_TEXCOORD1;
  let x_298 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_297);
  u_xlat3 = x_298;
  let x_299 : vec4<f32> = u_xlat1;
  let x_301 : vec4<f32> = u_xlat3;
  let x_303 : vec3<f32> = (vec3<f32>(x_299.x, x_299.x, x_299.x) * vec3<f32>(x_301.x, x_301.y, x_301.z));
  let x_304 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_303.x, x_303.y, x_303.z, x_304.w);
  let x_306 : vec4<f32> = u_xlat2;
  let x_307 : vec4<f32> = u_xlat3;
  u_xlat1 = (x_306 + x_307);
  let x_309 : vec2<f32> = vs_TEXCOORD0;
  let x_312 : vec4<f32> = x_30.x_Bloom_DirtTileOffset;
  let x_316 : vec4<f32> = x_30.x_Bloom_DirtTileOffset;
  let x_318 : vec2<f32> = ((x_309 * vec2<f32>(x_312.x, x_312.y)) + vec2<f32>(x_316.z, x_316.w));
  let x_319 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_318.x, x_318.y, x_319.z, x_319.w);
  let x_326 : vec4<f32> = u_xlat2;
  let x_328 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_326.x, x_326.y));
  let x_329 : vec3<f32> = vec3<f32>(x_328.x, x_328.y, x_328.z);
  let x_330 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_329.x, x_329.y, x_329.z, x_330.w);
  let x_332 : vec4<f32> = u_xlat2;
  let x_335 : vec3<f32> = x_30.x_Bloom_Settings;
  let x_337 : vec3<f32> = (vec3<f32>(x_332.x, x_332.y, x_332.z) * vec3<f32>(x_335.z, x_335.z, x_335.z));
  let x_338 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_337.x, x_337.y, x_337.z, x_338.w);
  u_xlat2.w = 0.0f;
  let x_341 : vec4<f32> = u_xlat2;
  let x_342 : vec4<f32> = u_xlat0;
  let x_344 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_341 * x_342) + x_344);
  let x_346 : vec4<f32> = u_xlat0;
  let x_347 : vec3<f32> = vec3<f32>(x_346.x, x_346.y, x_346.z);
  let x_348 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_347.x, x_347.y, x_347.z, x_348.w);
  let x_350 : vec4<f32> = u_xlat1;
  let x_354 : vec3<f32> = clamp(vec3<f32>(x_350.x, x_350.y, x_350.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_355 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_354.x, x_354.y, x_354.z, x_355.w);
  let x_357 : vec4<f32> = u_xlat1;
  u_xlat1.x = dot(vec3<f32>(x_357.x, x_357.y, x_357.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_366 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_366);
  let x_371 : f32 = x_30.x_Grain_Params1.x;
  let x_373 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_371 * -(x_373)) + 1.0f);
  let x_380 : vec2<f32> = vs_TEXCOORD1;
  let x_383 : vec4<f32> = x_30.x_Grain_Params2;
  let x_387 : vec4<f32> = x_30.x_Grain_Params2;
  let x_389 : vec2<f32> = ((x_380 * vec2<f32>(x_383.x, x_383.y)) + vec2<f32>(x_387.z, x_387.w));
  let x_390 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_389.x, x_389.y, x_390.z);
  let x_397 : vec3<f32> = u_xlat6;
  let x_399 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_397.x, x_397.y));
  u_xlat6 = vec3<f32>(x_399.x, x_399.y, x_399.z);
  let x_401 : vec4<f32> = u_xlat0;
  let x_403 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_401.x, x_401.y, x_401.z) * x_403);
  let x_405 : vec3<f32> = u_xlat6;
  let x_408 : f32 = x_30.x_Grain_Params1.y;
  let x_410 : f32 = x_30.x_Grain_Params1.y;
  let x_412 : f32 = x_30.x_Grain_Params1.y;
  u_xlat6 = (x_405 * vec3<f32>(x_408, x_410, x_412));
  let x_415 : vec3<f32> = u_xlat6;
  let x_416 : vec4<f32> = u_xlat1;
  let x_419 : vec4<f32> = u_xlat0;
  let x_421 : vec3<f32> = ((x_415 * vec3<f32>(x_416.x, x_416.x, x_416.x)) + vec3<f32>(x_419.x, x_419.y, x_419.z));
  let x_422 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_421.x, x_421.y, x_421.z, x_422.w);
  let x_424 : vec4<f32> = u_xlat0;
  let x_427 : f32 = x_30.x_PostExposure;
  let x_429 : f32 = x_30.x_PostExposure;
  let x_431 : f32 = x_30.x_PostExposure;
  let x_433 : f32 = x_30.x_PostExposure;
  let x_434 : vec4<f32> = vec4<f32>(x_427, x_429, x_431, x_433);
  u_xlat0 = (x_424 * vec4<f32>(x_434.x, x_434.y, x_434.z, x_434.w));
  let x_441 : vec4<f32> = u_xlat0;
  let x_448 : vec3<f32> = ((vec3<f32>(x_441.z, x_441.x, x_441.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_449 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_448.x, x_448.y, x_448.z, x_449.w);
  let x_454 : f32 = u_xlat0.w;
  SV_Target0.w = x_454;
  let x_457 : vec4<f32> = u_xlat0;
  let x_459 : vec3<f32> = log2(vec3<f32>(x_457.x, x_457.y, x_457.z));
  let x_460 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_459.x, x_459.y, x_459.z, x_460.w);
  let x_462 : vec4<f32> = u_xlat0;
  let x_469 : vec3<f32> = ((vec3<f32>(x_462.x, x_462.y, x_462.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_470 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_469.x, x_469.y, x_469.z, x_470.w);
  let x_472 : vec4<f32> = u_xlat0;
  let x_476 : vec3<f32> = clamp(vec3<f32>(x_472.x, x_472.y, x_472.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_477 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_476.x, x_476.y, x_476.z, x_477.w);
  let x_480 : vec4<f32> = u_xlat0;
  let x_484 : vec3<f32> = x_30.x_Lut2D_Params;
  u_xlat5 = (vec3<f32>(x_480.x, x_480.y, x_480.z) * vec3<f32>(x_484.z, x_484.z, x_484.z));
  let x_488 : f32 = u_xlat5.x;
  u_xlat5.x = floor(x_488);
  let x_492 : f32 = u_xlat0.x;
  let x_495 : f32 = x_30.x_Lut2D_Params.z;
  let x_498 : f32 = u_xlat5.x;
  u_xlat0.x = ((x_492 * x_495) + -(x_498));
  let x_503 : vec3<f32> = x_30.x_Lut2D_Params;
  let x_507 : vec2<f32> = (vec2<f32>(x_503.x, x_503.y) * vec2<f32>(0.5f, 0.5f));
  let x_508 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_507.x, x_507.y, x_508.z, x_508.w);
  let x_510 : vec3<f32> = u_xlat5;
  let x_513 : vec3<f32> = x_30.x_Lut2D_Params;
  let x_516 : vec4<f32> = u_xlat1;
  let x_518 : vec2<f32> = ((vec2<f32>(x_510.y, x_510.z) * vec2<f32>(x_513.x, x_513.y)) + vec2<f32>(x_516.x, x_516.y));
  let x_519 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_519.x, x_518.x, x_518.y, x_519.w);
  let x_522 : f32 = u_xlat5.x;
  let x_524 : f32 = x_30.x_Lut2D_Params.y;
  let x_527 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_522 * x_524) + x_527);
  let x_531 : f32 = x_30.x_Lut2D_Params.y;
  u_xlat2.x = x_531;
  u_xlat2.y = 0.0f;
  let x_534 : vec4<f32> = u_xlat1;
  let x_536 : vec4<f32> = u_xlat2;
  let x_538 : vec2<f32> = (vec2<f32>(x_534.x, x_534.z) + vec2<f32>(x_536.x, x_536.y));
  let x_539 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_538.x, x_538.y, x_539.z);
  let x_546 : vec4<f32> = u_xlat1;
  let x_548 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_546.x, x_546.z));
  let x_549 : vec3<f32> = vec3<f32>(x_548.x, x_548.y, x_548.z);
  let x_550 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_549.x, x_549.y, x_549.z, x_550.w);
  let x_555 : vec3<f32> = u_xlat5;
  let x_557 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_555.x, x_555.y));
  u_xlat5 = vec3<f32>(x_557.x, x_557.y, x_557.z);
  let x_559 : vec4<f32> = u_xlat1;
  let x_562 : vec3<f32> = u_xlat5;
  u_xlat5 = (-(vec3<f32>(x_559.x, x_559.y, x_559.z)) + x_562);
  let x_564 : vec4<f32> = u_xlat0;
  let x_566 : vec3<f32> = u_xlat5;
  let x_568 : vec4<f32> = u_xlat1;
  let x_570 : vec3<f32> = ((vec3<f32>(x_564.x, x_564.x, x_564.x) * x_566) + vec3<f32>(x_568.x, x_568.y, x_568.z));
  let x_571 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_570.x, x_570.y, x_570.z, x_571.w);
  let x_573 : vec4<f32> = u_xlat0;
  let x_578 : vec3<f32> = max(abs(vec3<f32>(x_573.x, x_573.y, x_573.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_579 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_578.x, x_578.y, x_578.z, x_579.w);
  let x_581 : vec4<f32> = u_xlat1;
  let x_583 : vec3<f32> = log2(vec3<f32>(x_581.x, x_581.y, x_581.z));
  let x_584 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_583.x, x_583.y, x_583.z, x_584.w);
  let x_586 : vec4<f32> = u_xlat1;
  let x_590 : vec3<f32> = (vec3<f32>(x_586.x, x_586.y, x_586.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_591 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_590.x, x_590.y, x_590.z, x_591.w);
  let x_593 : vec4<f32> = u_xlat1;
  let x_595 : vec3<f32> = exp2(vec3<f32>(x_593.x, x_593.y, x_593.z));
  let x_596 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_595.x, x_595.y, x_595.z, x_596.w);
  let x_598 : vec4<f32> = u_xlat1;
  let x_605 : vec3<f32> = ((vec3<f32>(x_598.x, x_598.y, x_598.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_606 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_605.x, x_605.y, x_605.z, x_606.w);
  let x_608 : vec4<f32> = u_xlat0;
  let x_612 : vec3<f32> = (vec3<f32>(x_608.x, x_608.y, x_608.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_613 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_612.x, x_612.y, x_612.z, x_613.w);
  let x_621 : vec4<f32> = u_xlat0;
  let x_624 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_621.x, x_621.y, x_621.z, x_621.x));
  u_xlatb0 = vec3<bool>(x_624.x, x_624.y, x_624.z);
  let x_628 : bool = u_xlatb0.x;
  if (x_628) {
    let x_633 : f32 = u_xlat2.x;
    x_629 = x_633;
  } else {
    let x_636 : f32 = u_xlat1.x;
    x_629 = x_636;
  }
  let x_637 : f32 = x_629;
  u_xlat0.x = x_637;
  let x_640 : bool = u_xlatb0.y;
  if (x_640) {
    let x_645 : f32 = u_xlat2.y;
    x_641 = x_645;
  } else {
    let x_648 : f32 = u_xlat1.y;
    x_641 = x_648;
  }
  let x_649 : f32 = x_641;
  u_xlat0.y = x_649;
  let x_652 : bool = u_xlatb0.z;
  if (x_652) {
    let x_657 : f32 = u_xlat2.z;
    x_653 = x_657;
  } else {
    let x_660 : f32 = u_xlat1.z;
    x_653 = x_660;
  }
  let x_661 : f32 = x_653;
  u_xlat0.z = x_661;
  let x_663 : vec2<f32> = vs_TEXCOORD0;
  let x_666 : vec4<f32> = x_30.x_Dithering_Coords;
  let x_670 : vec4<f32> = x_30.x_Dithering_Coords;
  let x_672 : vec2<f32> = ((x_663 * vec2<f32>(x_666.x, x_666.y)) + vec2<f32>(x_670.z, x_670.w));
  let x_673 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_672.x, x_672.y, x_673.z, x_673.w);
  let x_681 : vec4<f32> = u_xlat1;
  let x_683 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_681.x, x_681.y));
  u_xlat15 = x_683.w;
  let x_685 : f32 = u_xlat15;
  u_xlat15 = ((x_685 * 2.0f) + -1.0f);
  let x_688 : f32 = u_xlat15;
  u_xlat1.x = (-(abs(x_688)) + 1.0f);
  let x_693 : f32 = u_xlat15;
  u_xlat15 = ((x_693 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_697 : f32 = u_xlat15;
  u_xlat15 = clamp(x_697, 0.0f, 1.0f);
  let x_699 : f32 = u_xlat15;
  u_xlat15 = ((x_699 * 2.0f) + -1.0f);
  let x_703 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_703);
  let x_707 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_707) + 1.0f);
  let x_711 : f32 = u_xlat15;
  let x_713 : f32 = u_xlat1.x;
  u_xlat15 = (x_711 * x_713);
  let x_715 : f32 = u_xlat15;
  let x_720 : vec4<f32> = u_xlat0;
  let x_722 : vec3<f32> = ((vec3<f32>(x_715, x_715, x_715) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_720.x, x_720.y, x_720.z));
  let x_723 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_722.x, x_722.y, x_722.z, x_723.w);
  let x_725 : vec4<f32> = u_xlat0;
  let x_729 : vec3<f32> = (vec3<f32>(x_725.x, x_725.y, x_725.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_730 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_729.x, x_729.y, x_729.z, x_730.w);
  let x_732 : vec4<f32> = u_xlat1;
  let x_736 : vec3<f32> = (vec3<f32>(x_732.x, x_732.y, x_732.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_737 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_736.x, x_736.y, x_736.z, x_737.w);
  let x_739 : vec4<f32> = u_xlat1;
  let x_742 : vec3<f32> = max(abs(vec3<f32>(x_739.x, x_739.y, x_739.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_743 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_742.x, x_742.y, x_742.z, x_743.w);
  let x_745 : vec4<f32> = u_xlat1;
  let x_747 : vec3<f32> = log2(vec3<f32>(x_745.x, x_745.y, x_745.z));
  let x_748 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_747.x, x_747.y, x_747.z, x_748.w);
  let x_750 : vec4<f32> = u_xlat1;
  let x_754 : vec3<f32> = (vec3<f32>(x_750.x, x_750.y, x_750.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_755 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_754.x, x_754.y, x_754.z, x_755.w);
  let x_757 : vec4<f32> = u_xlat1;
  let x_759 : vec3<f32> = exp2(vec3<f32>(x_757.x, x_757.y, x_757.z));
  let x_760 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_759.x, x_759.y, x_759.z, x_760.w);
  let x_762 : vec4<f32> = u_xlat0;
  let x_766 : vec3<f32> = (vec3<f32>(x_762.x, x_762.y, x_762.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_767 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_766.x, x_766.y, x_766.z, x_767.w);
  let x_771 : vec4<f32> = u_xlat0;
  let x_773 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_771.x, x_771.y, x_771.z, x_771.x));
  u_xlatb0 = vec3<bool>(x_773.x, x_773.y, x_773.z);
  let x_776 : bool = u_xlatb0.x;
  if (x_776) {
    let x_781 : f32 = u_xlat2.x;
    x_777 = x_781;
  } else {
    let x_784 : f32 = u_xlat1.x;
    x_777 = x_784;
  }
  let x_785 : f32 = x_777;
  SV_Target0.x = x_785;
  let x_788 : bool = u_xlatb0.y;
  if (x_788) {
    let x_793 : f32 = u_xlat2.y;
    x_789 = x_793;
  } else {
    let x_796 : f32 = u_xlat1.y;
    x_789 = x_796;
  }
  let x_797 : f32 = x_789;
  SV_Target0.y = x_797;
  let x_800 : bool = u_xlatb0.z;
  if (x_800) {
    let x_805 : f32 = u_xlat2.z;
    x_801 = x_805;
  } else {
    let x_808 : f32 = u_xlat1.z;
    x_801 = x_808;
  }
  let x_809 : f32 = x_801;
  SV_Target0.z = x_809;
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

