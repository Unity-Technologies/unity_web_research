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
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var<uniform> x_30 : PGlobals;

@group(0) @binding(4) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_BloomTex : sampler;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(3) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_AutoExposureTex : sampler;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(5) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_Bloom_DirtTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

@group(0) @binding(6) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(12) var sampler_Lut2D : sampler;

var<private> u_xlatb0 : vec3<bool>;

var<private> u_xlat15 : f32;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_DitheringTex : sampler;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_554 : f32;
  var x_566 : f32;
  var x_578 : f32;
  var x_702 : f32;
  var x_714 : f32;
  var x_726 : f32;
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
  let x_349 : f32 = x_30.x_PostExposure;
  let x_351 : f32 = x_30.x_PostExposure;
  let x_353 : f32 = x_30.x_PostExposure;
  let x_355 : f32 = x_30.x_PostExposure;
  let x_356 : vec4<f32> = vec4<f32>(x_349, x_351, x_353, x_355);
  u_xlat0 = (x_346 * vec4<f32>(x_356.x, x_356.y, x_356.z, x_356.w));
  let x_363 : vec4<f32> = u_xlat0;
  let x_370 : vec3<f32> = ((vec3<f32>(x_363.z, x_363.x, x_363.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_371 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_370.x, x_370.y, x_370.z, x_371.w);
  let x_376 : f32 = u_xlat0.w;
  SV_Target0.w = x_376;
  let x_379 : vec4<f32> = u_xlat0;
  let x_381 : vec3<f32> = log2(vec3<f32>(x_379.x, x_379.y, x_379.z));
  let x_382 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_381.x, x_381.y, x_381.z, x_382.w);
  let x_384 : vec4<f32> = u_xlat0;
  let x_391 : vec3<f32> = ((vec3<f32>(x_384.x, x_384.y, x_384.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_392 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_391.x, x_391.y, x_391.z, x_392.w);
  let x_394 : vec4<f32> = u_xlat0;
  let x_398 : vec3<f32> = clamp(vec3<f32>(x_394.x, x_394.y, x_394.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_399 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_398.x, x_398.y, x_398.z, x_399.w);
  let x_403 : vec4<f32> = u_xlat0;
  let x_407 : vec3<f32> = x_30.x_Lut2D_Params;
  u_xlat5 = (vec3<f32>(x_403.x, x_403.y, x_403.z) * vec3<f32>(x_407.z, x_407.z, x_407.z));
  let x_411 : f32 = u_xlat5.x;
  u_xlat5.x = floor(x_411);
  let x_415 : f32 = u_xlat0.x;
  let x_418 : f32 = x_30.x_Lut2D_Params.z;
  let x_421 : f32 = u_xlat5.x;
  u_xlat0.x = ((x_415 * x_418) + -(x_421));
  let x_426 : vec3<f32> = x_30.x_Lut2D_Params;
  let x_430 : vec2<f32> = (vec2<f32>(x_426.x, x_426.y) * vec2<f32>(0.5f, 0.5f));
  let x_431 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_430.x, x_430.y, x_431.z, x_431.w);
  let x_433 : vec3<f32> = u_xlat5;
  let x_436 : vec3<f32> = x_30.x_Lut2D_Params;
  let x_439 : vec4<f32> = u_xlat1;
  let x_441 : vec2<f32> = ((vec2<f32>(x_433.y, x_433.z) * vec2<f32>(x_436.x, x_436.y)) + vec2<f32>(x_439.x, x_439.y));
  let x_442 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_442.x, x_441.x, x_441.y, x_442.w);
  let x_445 : f32 = u_xlat5.x;
  let x_448 : f32 = x_30.x_Lut2D_Params.y;
  let x_451 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_445 * x_448) + x_451);
  let x_455 : f32 = x_30.x_Lut2D_Params.y;
  u_xlat2.x = x_455;
  u_xlat2.y = 0.0f;
  let x_458 : vec4<f32> = u_xlat1;
  let x_460 : vec4<f32> = u_xlat2;
  let x_462 : vec2<f32> = (vec2<f32>(x_458.x, x_458.z) + vec2<f32>(x_460.x, x_460.y));
  let x_463 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_462.x, x_462.y, x_463.z);
  let x_470 : vec4<f32> = u_xlat1;
  let x_472 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_470.x, x_470.z));
  let x_473 : vec3<f32> = vec3<f32>(x_472.x, x_472.y, x_472.z);
  let x_474 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_473.x, x_473.y, x_473.z, x_474.w);
  let x_479 : vec3<f32> = u_xlat5;
  let x_481 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_479.x, x_479.y));
  u_xlat5 = vec3<f32>(x_481.x, x_481.y, x_481.z);
  let x_483 : vec4<f32> = u_xlat1;
  let x_486 : vec3<f32> = u_xlat5;
  u_xlat5 = (-(vec3<f32>(x_483.x, x_483.y, x_483.z)) + x_486);
  let x_488 : vec4<f32> = u_xlat0;
  let x_490 : vec3<f32> = u_xlat5;
  let x_492 : vec4<f32> = u_xlat1;
  let x_494 : vec3<f32> = ((vec3<f32>(x_488.x, x_488.x, x_488.x) * x_490) + vec3<f32>(x_492.x, x_492.y, x_492.z));
  let x_495 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_494.x, x_494.y, x_494.z, x_495.w);
  let x_497 : vec4<f32> = u_xlat0;
  let x_502 : vec3<f32> = max(abs(vec3<f32>(x_497.x, x_497.y, x_497.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_503 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_502.x, x_502.y, x_502.z, x_503.w);
  let x_505 : vec4<f32> = u_xlat1;
  let x_507 : vec3<f32> = log2(vec3<f32>(x_505.x, x_505.y, x_505.z));
  let x_508 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_507.x, x_507.y, x_507.z, x_508.w);
  let x_510 : vec4<f32> = u_xlat1;
  let x_514 : vec3<f32> = (vec3<f32>(x_510.x, x_510.y, x_510.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_515 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_514.x, x_514.y, x_514.z, x_515.w);
  let x_517 : vec4<f32> = u_xlat1;
  let x_519 : vec3<f32> = exp2(vec3<f32>(x_517.x, x_517.y, x_517.z));
  let x_520 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_519.x, x_519.y, x_519.z, x_520.w);
  let x_522 : vec4<f32> = u_xlat1;
  let x_529 : vec3<f32> = ((vec3<f32>(x_522.x, x_522.y, x_522.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_530 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_529.x, x_529.y, x_529.z, x_530.w);
  let x_532 : vec4<f32> = u_xlat0;
  let x_536 : vec3<f32> = (vec3<f32>(x_532.x, x_532.y, x_532.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_537 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_536.x, x_536.y, x_536.z, x_537.w);
  let x_545 : vec4<f32> = u_xlat0;
  let x_548 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_545.x, x_545.y, x_545.z, x_545.x));
  u_xlatb0 = vec3<bool>(x_548.x, x_548.y, x_548.z);
  let x_552 : bool = u_xlatb0.x;
  if (x_552) {
    let x_558 : f32 = u_xlat2.x;
    x_554 = x_558;
  } else {
    let x_561 : f32 = u_xlat1.x;
    x_554 = x_561;
  }
  let x_562 : f32 = x_554;
  u_xlat0.x = x_562;
  let x_565 : bool = u_xlatb0.y;
  if (x_565) {
    let x_570 : f32 = u_xlat2.y;
    x_566 = x_570;
  } else {
    let x_573 : f32 = u_xlat1.y;
    x_566 = x_573;
  }
  let x_574 : f32 = x_566;
  u_xlat0.y = x_574;
  let x_577 : bool = u_xlatb0.z;
  if (x_577) {
    let x_582 : f32 = u_xlat2.z;
    x_578 = x_582;
  } else {
    let x_585 : f32 = u_xlat1.z;
    x_578 = x_585;
  }
  let x_586 : f32 = x_578;
  u_xlat0.z = x_586;
  let x_588 : vec2<f32> = vs_TEXCOORD0;
  let x_591 : vec4<f32> = x_30.x_Dithering_Coords;
  let x_595 : vec4<f32> = x_30.x_Dithering_Coords;
  let x_597 : vec2<f32> = ((x_588 * vec2<f32>(x_591.x, x_591.y)) + vec2<f32>(x_595.z, x_595.w));
  let x_598 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_597.x, x_597.y, x_598.z, x_598.w);
  let x_606 : vec4<f32> = u_xlat1;
  let x_608 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_606.x, x_606.y));
  u_xlat15 = x_608.w;
  let x_610 : f32 = u_xlat15;
  u_xlat15 = ((x_610 * 2.0f) + -1.0f);
  let x_613 : f32 = u_xlat15;
  u_xlat1.x = (-(abs(x_613)) + 1.0f);
  let x_618 : f32 = u_xlat15;
  u_xlat15 = ((x_618 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_622 : f32 = u_xlat15;
  u_xlat15 = clamp(x_622, 0.0f, 1.0f);
  let x_624 : f32 = u_xlat15;
  u_xlat15 = ((x_624 * 2.0f) + -1.0f);
  let x_628 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_628);
  let x_632 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_632) + 1.0f);
  let x_636 : f32 = u_xlat15;
  let x_638 : f32 = u_xlat1.x;
  u_xlat15 = (x_636 * x_638);
  let x_640 : f32 = u_xlat15;
  let x_645 : vec4<f32> = u_xlat0;
  let x_647 : vec3<f32> = ((vec3<f32>(x_640, x_640, x_640) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_645.x, x_645.y, x_645.z));
  let x_648 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_647.x, x_647.y, x_647.z, x_648.w);
  let x_650 : vec4<f32> = u_xlat0;
  let x_654 : vec3<f32> = (vec3<f32>(x_650.x, x_650.y, x_650.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_655 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_654.x, x_654.y, x_654.z, x_655.w);
  let x_657 : vec4<f32> = u_xlat1;
  let x_661 : vec3<f32> = (vec3<f32>(x_657.x, x_657.y, x_657.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_662 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_661.x, x_661.y, x_661.z, x_662.w);
  let x_664 : vec4<f32> = u_xlat1;
  let x_667 : vec3<f32> = max(abs(vec3<f32>(x_664.x, x_664.y, x_664.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_668 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_667.x, x_667.y, x_667.z, x_668.w);
  let x_670 : vec4<f32> = u_xlat1;
  let x_672 : vec3<f32> = log2(vec3<f32>(x_670.x, x_670.y, x_670.z));
  let x_673 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_672.x, x_672.y, x_672.z, x_673.w);
  let x_675 : vec4<f32> = u_xlat1;
  let x_679 : vec3<f32> = (vec3<f32>(x_675.x, x_675.y, x_675.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_680 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_679.x, x_679.y, x_679.z, x_680.w);
  let x_682 : vec4<f32> = u_xlat1;
  let x_684 : vec3<f32> = exp2(vec3<f32>(x_682.x, x_682.y, x_682.z));
  let x_685 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_684.x, x_684.y, x_684.z, x_685.w);
  let x_687 : vec4<f32> = u_xlat0;
  let x_691 : vec3<f32> = (vec3<f32>(x_687.x, x_687.y, x_687.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_692 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_691.x, x_691.y, x_691.z, x_692.w);
  let x_696 : vec4<f32> = u_xlat0;
  let x_698 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_696.x, x_696.y, x_696.z, x_696.x));
  u_xlatb0 = vec3<bool>(x_698.x, x_698.y, x_698.z);
  let x_701 : bool = u_xlatb0.x;
  if (x_701) {
    let x_706 : f32 = u_xlat2.x;
    x_702 = x_706;
  } else {
    let x_709 : f32 = u_xlat1.x;
    x_702 = x_709;
  }
  let x_710 : f32 = x_702;
  SV_Target0.x = x_710;
  let x_713 : bool = u_xlatb0.y;
  if (x_713) {
    let x_718 : f32 = u_xlat2.y;
    x_714 = x_718;
  } else {
    let x_721 : f32 = u_xlat1.y;
    x_714 = x_721;
  }
  let x_722 : f32 = x_714;
  SV_Target0.y = x_722;
  let x_725 : bool = u_xlatb0.z;
  if (x_725) {
    let x_730 : f32 = u_xlat2.z;
    x_726 = x_730;
  } else {
    let x_733 : f32 = u_xlat1.z;
    x_726 = x_733;
  }
  let x_734 : f32 = x_726;
  SV_Target0.z = x_734;
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

