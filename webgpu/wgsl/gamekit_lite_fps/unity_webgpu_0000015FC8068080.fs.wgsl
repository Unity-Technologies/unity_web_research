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
  x_Lut3D_Params : vec2<f32>,
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

var<private> u_xlat15 : f32;

@group(0) @binding(6) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(12) var sampler_Lut3D : sampler;

var<private> u_xlatb0 : vec3<bool>;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_DitheringTex : sampler;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_498 : f32;
  var x_511 : f32;
  var x_524 : f32;
  var x_647 : f32;
  var x_659 : f32;
  var x_671 : f32;
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
  let x_370 : vec3<f32> = ((vec3<f32>(x_363.x, x_363.y, x_363.z) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
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
  let x_401 : vec4<f32> = u_xlat0;
  let x_406 : vec2<f32> = x_30.x_Lut3D_Params;
  let x_408 : vec3<f32> = (vec3<f32>(x_401.x, x_401.y, x_401.z) * vec3<f32>(x_406.y, x_406.y, x_406.y));
  let x_409 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_408.x, x_408.y, x_408.z, x_409.w);
  let x_413 : f32 = x_30.x_Lut3D_Params.x;
  u_xlat15 = (x_413 * 0.5f);
  let x_416 : vec4<f32> = u_xlat0;
  let x_419 : vec2<f32> = x_30.x_Lut3D_Params;
  let x_422 : f32 = u_xlat15;
  let x_424 : vec3<f32> = ((vec3<f32>(x_416.x, x_416.y, x_416.z) * vec3<f32>(x_419.x, x_419.x, x_419.x)) + vec3<f32>(x_422, x_422, x_422));
  let x_425 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_424.x, x_424.y, x_424.z, x_425.w);
  let x_435 : vec4<f32> = u_xlat0;
  let x_437 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, vec3<f32>(x_435.x, x_435.y, x_435.z));
  let x_438 : vec3<f32> = vec3<f32>(x_437.x, x_437.y, x_437.z);
  let x_439 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_438.x, x_438.y, x_438.z, x_439.w);
  let x_441 : vec4<f32> = u_xlat0;
  let x_446 : vec3<f32> = max(abs(vec3<f32>(x_441.x, x_441.y, x_441.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_447 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_446.x, x_446.y, x_446.z, x_447.w);
  let x_449 : vec4<f32> = u_xlat1;
  let x_451 : vec3<f32> = log2(vec3<f32>(x_449.x, x_449.y, x_449.z));
  let x_452 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_451.x, x_451.y, x_451.z, x_452.w);
  let x_454 : vec4<f32> = u_xlat1;
  let x_458 : vec3<f32> = (vec3<f32>(x_454.x, x_454.y, x_454.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_459 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_458.x, x_458.y, x_458.z, x_459.w);
  let x_461 : vec4<f32> = u_xlat1;
  let x_463 : vec3<f32> = exp2(vec3<f32>(x_461.x, x_461.y, x_461.z));
  let x_464 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_463.x, x_463.y, x_463.z, x_464.w);
  let x_466 : vec4<f32> = u_xlat1;
  let x_473 : vec3<f32> = ((vec3<f32>(x_466.x, x_466.y, x_466.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_474 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_473.x, x_473.y, x_473.z, x_474.w);
  let x_476 : vec4<f32> = u_xlat0;
  let x_480 : vec3<f32> = (vec3<f32>(x_476.x, x_476.y, x_476.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_481 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_480.x, x_480.y, x_480.z, x_481.w);
  let x_489 : vec4<f32> = u_xlat0;
  let x_492 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_489.x, x_489.y, x_489.z, x_489.x));
  u_xlatb0 = vec3<bool>(x_492.x, x_492.y, x_492.z);
  let x_496 : bool = u_xlatb0.x;
  if (x_496) {
    let x_502 : f32 = u_xlat2.x;
    x_498 = x_502;
  } else {
    let x_505 : f32 = u_xlat1.x;
    x_498 = x_505;
  }
  let x_506 : f32 = x_498;
  u_xlat0.x = x_506;
  let x_510 : bool = u_xlatb0.y;
  if (x_510) {
    let x_515 : f32 = u_xlat2.y;
    x_511 = x_515;
  } else {
    let x_518 : f32 = u_xlat1.y;
    x_511 = x_518;
  }
  let x_519 : f32 = x_511;
  u_xlat0.y = x_519;
  let x_523 : bool = u_xlatb0.z;
  if (x_523) {
    let x_528 : f32 = u_xlat2.z;
    x_524 = x_528;
  } else {
    let x_531 : f32 = u_xlat1.z;
    x_524 = x_531;
  }
  let x_532 : f32 = x_524;
  u_xlat0.z = x_532;
  let x_534 : vec2<f32> = vs_TEXCOORD0;
  let x_537 : vec4<f32> = x_30.x_Dithering_Coords;
  let x_541 : vec4<f32> = x_30.x_Dithering_Coords;
  let x_543 : vec2<f32> = ((x_534 * vec2<f32>(x_537.x, x_537.y)) + vec2<f32>(x_541.z, x_541.w));
  let x_544 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_543.x, x_543.y, x_544.z, x_544.w);
  let x_551 : vec4<f32> = u_xlat1;
  let x_553 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_551.x, x_551.y));
  u_xlat15 = x_553.w;
  let x_555 : f32 = u_xlat15;
  u_xlat15 = ((x_555 * 2.0f) + -1.0f);
  let x_558 : f32 = u_xlat15;
  u_xlat1.x = (-(abs(x_558)) + 1.0f);
  let x_563 : f32 = u_xlat15;
  u_xlat15 = ((x_563 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_567 : f32 = u_xlat15;
  u_xlat15 = clamp(x_567, 0.0f, 1.0f);
  let x_569 : f32 = u_xlat15;
  u_xlat15 = ((x_569 * 2.0f) + -1.0f);
  let x_573 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_573);
  let x_577 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_577) + 1.0f);
  let x_581 : f32 = u_xlat15;
  let x_583 : f32 = u_xlat1.x;
  u_xlat15 = (x_581 * x_583);
  let x_585 : f32 = u_xlat15;
  let x_590 : vec4<f32> = u_xlat0;
  let x_592 : vec3<f32> = ((vec3<f32>(x_585, x_585, x_585) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_590.x, x_590.y, x_590.z));
  let x_593 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_592.x, x_592.y, x_592.z, x_593.w);
  let x_595 : vec4<f32> = u_xlat0;
  let x_599 : vec3<f32> = (vec3<f32>(x_595.x, x_595.y, x_595.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_600 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_599.x, x_599.y, x_599.z, x_600.w);
  let x_602 : vec4<f32> = u_xlat1;
  let x_606 : vec3<f32> = (vec3<f32>(x_602.x, x_602.y, x_602.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_607 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_606.x, x_606.y, x_606.z, x_607.w);
  let x_609 : vec4<f32> = u_xlat1;
  let x_612 : vec3<f32> = max(abs(vec3<f32>(x_609.x, x_609.y, x_609.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_613 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_612.x, x_612.y, x_612.z, x_613.w);
  let x_615 : vec4<f32> = u_xlat1;
  let x_617 : vec3<f32> = log2(vec3<f32>(x_615.x, x_615.y, x_615.z));
  let x_618 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_617.x, x_617.y, x_617.z, x_618.w);
  let x_620 : vec4<f32> = u_xlat1;
  let x_624 : vec3<f32> = (vec3<f32>(x_620.x, x_620.y, x_620.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_625 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_624.x, x_624.y, x_624.z, x_625.w);
  let x_627 : vec4<f32> = u_xlat1;
  let x_629 : vec3<f32> = exp2(vec3<f32>(x_627.x, x_627.y, x_627.z));
  let x_630 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_629.x, x_629.y, x_629.z, x_630.w);
  let x_632 : vec4<f32> = u_xlat0;
  let x_636 : vec3<f32> = (vec3<f32>(x_632.x, x_632.y, x_632.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_637 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_636.x, x_636.y, x_636.z, x_637.w);
  let x_641 : vec4<f32> = u_xlat0;
  let x_643 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_641.x, x_641.y, x_641.z, x_641.x));
  u_xlatb0 = vec3<bool>(x_643.x, x_643.y, x_643.z);
  let x_646 : bool = u_xlatb0.x;
  if (x_646) {
    let x_651 : f32 = u_xlat2.x;
    x_647 = x_651;
  } else {
    let x_654 : f32 = u_xlat1.x;
    x_647 = x_654;
  }
  let x_655 : f32 = x_647;
  SV_Target0.x = x_655;
  let x_658 : bool = u_xlatb0.y;
  if (x_658) {
    let x_663 : f32 = u_xlat2.y;
    x_659 = x_663;
  } else {
    let x_666 : f32 = u_xlat1.y;
    x_659 = x_666;
  }
  let x_667 : f32 = x_659;
  SV_Target0.y = x_667;
  let x_670 : bool = u_xlatb0.z;
  if (x_670) {
    let x_675 : f32 = u_xlat2.z;
    x_671 = x_675;
  } else {
    let x_678 : f32 = u_xlat1.z;
    x_671 = x_678;
  }
  let x_679 : f32 = x_671;
  SV_Target0.z = x_679;
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

