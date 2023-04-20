diagnostic(off, derivative_uniformity);

alias Arr = array<vec4<f32>, 9u>;

struct PGlobals {
  /* @offset(0) */
  x_MainTex_ST : vec4<f32>,
  /* @offset(16) */
  x_TerrainNormalmapGenSize : vec4<f32>,
  /* @offset(32) */
  x_TerrainTilesScaleOffsets : Arr,
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> u_xlati0 : vec4<i32>;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_42 : PGlobals;

var<private> u_xlat8 : vec2<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(1) var sampler_MainTex : sampler;

var<private> u_xlat4 : f32;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> u_xlati1 : vec4<i32>;

var<private> u_xlati8 : vec2<i32>;

var<private> u_xlat9 : vec2<f32>;

var<private> u_xlat12 : f32;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat5 : f32;

var<private> u_xlat3 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlati3 : vec4<i32>;

var<private> u_xlat6 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec4<f32> = vs_TEXCOORD1;
  u_xlat0 = (x_12 + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_16 : vec4<f32> = u_xlat0;
  u_xlat0 = floor(x_16);
  let x_22 : vec4<f32> = u_xlat0;
  u_xlati0 = vec4<i32>(x_22);
  let x_25 : vec4<i32> = u_xlati0;
  let x_30 : vec4<i32> = u_xlati0;
  let x_32 : vec2<i32> = ((vec2<i32>(x_25.y, x_25.w) * vec2<i32>(3i, 3i)) + vec2<i32>(x_30.x, x_30.z));
  let x_33 : vec4<i32> = u_xlati0;
  u_xlati0 = vec4<i32>(x_32.x, x_32.y, x_33.z, x_33.w);
  let x_36 : vec4<f32> = vs_TEXCOORD1;
  let x_46 : vec4<f32> = x_42.x_MainTex_ST;
  let x_50 : vec4<f32> = x_42.x_MainTex_ST;
  u_xlat1 = ((x_36 * vec4<f32>(x_46.x, x_46.y, x_46.x, x_46.y)) + vec4<f32>(x_50.z, x_50.w, x_50.z, x_50.w));
  let x_66 : vec4<f32> = u_xlat1;
  let x_68 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_66.x, x_66.y));
  u_xlat8 = vec2<f32>(x_68.x, x_68.y);
  let x_73 : vec4<f32> = u_xlat1;
  let x_75 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_73.z, x_73.w));
  let x_76 : vec2<f32> = vec2<f32>(x_75.x, x_75.y);
  let x_77 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_76.x, x_76.y, x_77.z, x_77.w);
  let x_82 : f32 = u_xlat1.y;
  let x_87 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_82 * 256.0f) + x_87);
  let x_91 : f32 = u_xlat1.x;
  u_xlat1.x = (x_91 * 0.00389105058275163174f);
  let x_97 : f32 = u_xlat1.x;
  let x_101 : i32 = u_xlati0.y;
  let x_104 : f32 = x_42.x_TerrainTilesScaleOffsets[x_101].x;
  let x_107 : i32 = u_xlati0.y;
  let x_109 : f32 = x_42.x_TerrainTilesScaleOffsets[x_107].y;
  u_xlat4 = ((x_97 * x_104) + x_109);
  let x_112 : f32 = u_xlat8.y;
  let x_115 : f32 = u_xlat8.x;
  u_xlat8.x = ((x_112 * 256.0f) + x_115);
  let x_119 : f32 = u_xlat8.x;
  u_xlat8.x = (x_119 * 0.00389105058275163174f);
  let x_123 : f32 = u_xlat8.x;
  let x_125 : i32 = u_xlati0.x;
  let x_127 : f32 = x_42.x_TerrainTilesScaleOffsets[x_125].x;
  let x_130 : i32 = u_xlati0.x;
  let x_132 : f32 = x_42.x_TerrainTilesScaleOffsets[x_130].y;
  u_xlat0.x = ((x_123 * x_127) + x_132);
  let x_136 : vec4<f32> = vs_TEXCOORD2;
  u_xlat1 = (x_136 + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_138 : vec4<f32> = u_xlat1;
  u_xlat1 = floor(x_138);
  let x_141 : vec4<f32> = u_xlat1;
  u_xlati1 = vec4<i32>(x_141);
  let x_145 : vec4<i32> = u_xlati1;
  let x_148 : vec4<i32> = u_xlati1;
  u_xlati8 = ((vec2<i32>(x_145.y, x_145.w) * vec2<i32>(3i, 3i)) + vec2<i32>(x_148.x, x_148.z));
  let x_151 : vec4<f32> = vs_TEXCOORD2;
  let x_153 : vec4<f32> = x_42.x_MainTex_ST;
  let x_157 : vec4<f32> = x_42.x_MainTex_ST;
  u_xlat1 = ((x_151 * vec4<f32>(x_153.x, x_153.y, x_153.x, x_153.y)) + vec4<f32>(x_157.z, x_157.w, x_157.z, x_157.w));
  let x_163 : vec4<f32> = u_xlat1;
  let x_165 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_163.x, x_163.y));
  let x_166 : vec2<f32> = vec2<f32>(x_165.x, x_165.y);
  let x_167 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_166.x, x_166.y, x_167.z, x_167.w);
  let x_173 : vec4<f32> = u_xlat1;
  let x_175 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_173.z, x_173.w));
  u_xlat9 = vec2<f32>(x_175.x, x_175.y);
  let x_178 : f32 = u_xlat9.y;
  let x_181 : f32 = u_xlat9.x;
  u_xlat9.x = ((x_178 * 256.0f) + x_181);
  let x_185 : f32 = u_xlat9.x;
  u_xlat9.x = (x_185 * 0.00389105058275163174f);
  let x_190 : f32 = u_xlat9.x;
  let x_192 : i32 = u_xlati8.y;
  let x_194 : f32 = x_42.x_TerrainTilesScaleOffsets[x_192].x;
  let x_197 : i32 = u_xlati8.y;
  let x_199 : f32 = x_42.x_TerrainTilesScaleOffsets[x_197].y;
  u_xlat12 = ((x_190 * x_194) + x_199);
  let x_202 : f32 = u_xlat1.y;
  let x_205 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_202 * 256.0f) + x_205);
  let x_209 : f32 = u_xlat1.x;
  u_xlat1.x = (x_209 * 0.00389105058275163174f);
  let x_213 : f32 = u_xlat1.x;
  let x_215 : i32 = u_xlati8.x;
  let x_217 : f32 = x_42.x_TerrainTilesScaleOffsets[x_215].x;
  let x_220 : i32 = u_xlati8.x;
  let x_222 : f32 = x_42.x_TerrainTilesScaleOffsets[x_220].y;
  u_xlat8.x = ((x_213 * x_217) + x_222);
  let x_226 : f32 = u_xlat0.x;
  let x_230 : f32 = u_xlat8.x;
  u_xlat0.x = ((x_226 * -2.0f) + -(x_230));
  let x_235 : vec4<f32> = vs_TEXCOORD3;
  u_xlat1 = (x_235 + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_237 : vec4<f32> = u_xlat1;
  u_xlat1 = floor(x_237);
  let x_239 : vec4<f32> = u_xlat1;
  u_xlati1 = vec4<i32>(x_239);
  let x_241 : vec4<i32> = u_xlati1;
  let x_244 : vec4<i32> = u_xlati1;
  let x_246 : vec2<i32> = ((vec2<i32>(x_241.y, x_241.w) * vec2<i32>(3i, 3i)) + vec2<i32>(x_244.x, x_244.z));
  let x_247 : vec4<i32> = u_xlati1;
  u_xlati1 = vec4<i32>(x_246.x, x_246.y, x_247.z, x_247.w);
  let x_250 : vec4<f32> = vs_TEXCOORD3;
  let x_252 : vec4<f32> = x_42.x_MainTex_ST;
  let x_256 : vec4<f32> = x_42.x_MainTex_ST;
  u_xlat2 = ((x_250 * vec4<f32>(x_252.x, x_252.y, x_252.x, x_252.y)) + vec4<f32>(x_256.z, x_256.w, x_256.z, x_256.w));
  let x_262 : vec4<f32> = u_xlat2;
  let x_264 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_262.x, x_262.y));
  u_xlat9 = vec2<f32>(x_264.x, x_264.y);
  let x_269 : vec4<f32> = u_xlat2;
  let x_271 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_269.z, x_269.w));
  let x_272 : vec2<f32> = vec2<f32>(x_271.x, x_271.y);
  let x_273 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_272.x, x_272.y, x_273.z, x_273.w);
  let x_276 : f32 = u_xlat2.y;
  let x_279 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_276 * 256.0f) + x_279);
  let x_283 : f32 = u_xlat2.x;
  u_xlat2.x = (x_283 * 0.00389105058275163174f);
  let x_288 : f32 = u_xlat2.x;
  let x_290 : i32 = u_xlati1.y;
  let x_292 : f32 = x_42.x_TerrainTilesScaleOffsets[x_290].x;
  let x_295 : i32 = u_xlati1.y;
  let x_297 : f32 = x_42.x_TerrainTilesScaleOffsets[x_295].y;
  u_xlat5 = ((x_288 * x_292) + x_297);
  let x_300 : f32 = u_xlat9.y;
  let x_303 : f32 = u_xlat9.x;
  u_xlat9.x = ((x_300 * 256.0f) + x_303);
  let x_307 : f32 = u_xlat9.x;
  u_xlat9.x = (x_307 * 0.00389105058275163174f);
  let x_311 : f32 = u_xlat9.x;
  let x_313 : i32 = u_xlati1.x;
  let x_315 : f32 = x_42.x_TerrainTilesScaleOffsets[x_313].x;
  let x_318 : i32 = u_xlati1.x;
  let x_320 : f32 = x_42.x_TerrainTilesScaleOffsets[x_318].y;
  u_xlat1.x = ((x_311 * x_315) + x_320);
  let x_324 : f32 = u_xlat0.x;
  let x_326 : f32 = u_xlat1.x;
  u_xlat0.x = (x_324 + -(x_326));
  let x_330 : f32 = u_xlat12;
  let x_332 : f32 = u_xlat0.x;
  u_xlat0.x = (x_330 + x_332);
  let x_335 : f32 = u_xlat4;
  let x_339 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_335 * 2.0f) + x_339);
  let x_342 : f32 = u_xlat5;
  let x_344 : f32 = u_xlat0.x;
  u_xlat2.x = (x_342 + x_344);
  let x_349 : vec4<f32> = vs_TEXCOORD0;
  u_xlat3 = (x_349 + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_351 : vec4<f32> = u_xlat3;
  u_xlat3 = floor(x_351);
  let x_354 : vec4<f32> = u_xlat3;
  u_xlati3 = vec4<i32>(x_354);
  let x_356 : vec4<i32> = u_xlati3;
  let x_359 : vec4<i32> = u_xlati3;
  let x_361 : vec2<i32> = ((vec2<i32>(x_356.y, x_356.w) * vec2<i32>(3i, 3i)) + vec2<i32>(x_359.x, x_359.z));
  let x_362 : vec4<i32> = u_xlati0;
  u_xlati0 = vec4<i32>(x_361.x, x_361.y, x_362.z, x_362.w);
  let x_364 : vec4<f32> = vs_TEXCOORD0;
  let x_366 : vec4<f32> = x_42.x_MainTex_ST;
  let x_370 : vec4<f32> = x_42.x_MainTex_ST;
  u_xlat3 = ((x_364 * vec4<f32>(x_366.x, x_366.y, x_366.x, x_366.y)) + vec4<f32>(x_370.z, x_370.w, x_370.z, x_370.w));
  let x_376 : vec4<f32> = u_xlat3;
  let x_378 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_376.x, x_376.y));
  u_xlat9 = vec2<f32>(x_378.x, x_378.y);
  let x_386 : vec4<f32> = u_xlat3;
  let x_388 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_386.z, x_386.w));
  let x_389 : vec2<f32> = vec2<f32>(x_388.x, x_388.y);
  let x_390 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_389.x, x_390.y, x_389.y);
  let x_394 : f32 = u_xlat6.z;
  let x_397 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_394 * 256.0f) + x_397);
  let x_401 : f32 = u_xlat6.x;
  u_xlat6.x = (x_401 * 0.00389105058275163174f);
  let x_405 : f32 = u_xlat6.x;
  let x_407 : i32 = u_xlati0.y;
  let x_409 : f32 = x_42.x_TerrainTilesScaleOffsets[x_407].x;
  let x_412 : i32 = u_xlati0.y;
  let x_414 : f32 = x_42.x_TerrainTilesScaleOffsets[x_412].y;
  u_xlat4 = ((x_405 * x_409) + x_414);
  let x_417 : f32 = u_xlat9.y;
  let x_420 : f32 = u_xlat9.x;
  u_xlat9.x = ((x_417 * 256.0f) + x_420);
  let x_424 : f32 = u_xlat9.x;
  u_xlat9.x = (x_424 * 0.00389105058275163174f);
  let x_428 : f32 = u_xlat9.x;
  let x_430 : i32 = u_xlati0.x;
  let x_432 : f32 = x_42.x_TerrainTilesScaleOffsets[x_430].x;
  let x_435 : i32 = u_xlati0.x;
  let x_437 : f32 = x_42.x_TerrainTilesScaleOffsets[x_435].y;
  u_xlat0.x = ((x_428 * x_432) + x_437);
  let x_441 : f32 = u_xlat0.x;
  let x_444 : f32 = u_xlat8.x;
  u_xlat0.x = ((x_441 * -2.0f) + -(x_444));
  let x_448 : f32 = u_xlat12;
  let x_451 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_448) + x_451);
  let x_455 : f32 = u_xlat1.x;
  let x_457 : f32 = u_xlat0.x;
  u_xlat0.x = (x_455 + x_457);
  let x_460 : f32 = u_xlat4;
  let x_463 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_460 * 2.0f) + x_463);
  let x_466 : f32 = u_xlat5;
  let x_468 : f32 = u_xlat0.x;
  u_xlat2.z = (x_466 + x_468);
  let x_471 : vec4<f32> = u_xlat2;
  let x_475 : vec4<f32> = x_42.x_TerrainNormalmapGenSize;
  let x_477 : vec2<f32> = (vec2<f32>(x_471.x, x_471.z) * vec2<f32>(x_475.z, x_475.w));
  let x_478 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_477.x, x_477.y, x_478.z, x_478.w);
  let x_480 : vec4<f32> = u_xlat0;
  let x_482 : vec2<f32> = -(vec2<f32>(x_480.x, x_480.y));
  let x_483 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_482.x, x_483.y, x_482.y, x_483.w);
  u_xlat0.y = 8.0f;
  let x_487 : vec4<f32> = u_xlat0;
  let x_489 : vec4<f32> = u_xlat0;
  u_xlat4 = dot(vec3<f32>(x_487.x, x_487.y, x_487.z), vec3<f32>(x_489.x, x_489.y, x_489.z));
  let x_492 : f32 = u_xlat4;
  u_xlat1.y = inverseSqrt(x_492);
  let x_495 : vec4<f32> = u_xlat0;
  let x_497 : vec4<f32> = u_xlat1;
  let x_499 : vec2<f32> = (vec2<f32>(x_495.x, x_495.z) * vec2<f32>(x_497.y, x_497.y));
  let x_500 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_499.x, x_500.y, x_499.y, x_500.w);
  let x_504 : vec4<f32> = u_xlat1;
  let x_511 : vec3<f32> = ((vec3<f32>(x_504.x, x_504.y, x_504.z) * vec3<f32>(0.5f, 4.0f, 0.5f)) + vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_512 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_511.x, x_511.y, x_511.z, x_512.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


