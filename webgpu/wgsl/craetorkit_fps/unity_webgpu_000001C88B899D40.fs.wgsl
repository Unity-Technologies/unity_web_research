struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  x_ZBufferParams : vec4<f32>,
  unity_CameraToWorld : mat4x4<f32>,
  x_LightPos : vec4<f32>,
  x_LightColor : vec4<f32>,
}

@group(1) @binding(0) var<uniform> x_14 : PGlobals;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(0) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_CameraDepthTexture : sampler;

@group(0) @binding(1) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(6) var sampler_LightTextureB0 : sampler;

@group(0) @binding(4) var x_CameraGBufferTexture2 : texture_2d<f32>;

@group(0) @binding(9) var sampler_CameraGBufferTexture2 : sampler;

@group(0) @binding(3) var x_CameraGBufferTexture1 : texture_2d<f32>;

@group(0) @binding(8) var sampler_CameraGBufferTexture1 : sampler;

@group(0) @binding(2) var x_CameraGBufferTexture0 : texture_2d<f32>;

@group(0) @binding(7) var sampler_CameraGBufferTexture0 : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat18 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat13 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : f32;
  var u_xlat12 : f32;
  var u_xlat20 : f32;
  var u_xlat21 : f32;
  var u_xlatb18 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_21 : f32 = x_14.x_ProjectionParams.z;
  let x_26 : f32 = vs_TEXCOORD1.z;
  u_xlat0.x = (x_21 / x_26);
  let x_31 : vec4<f32> = u_xlat0;
  let x_33 : vec3<f32> = vs_TEXCOORD1;
  let x_34 : vec3<f32> = (vec3<f32>(x_31.x, x_31.x, x_31.x) * x_33);
  let x_35 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_34.x, x_34.y, x_34.z, x_35.w);
  let x_41 : vec4<f32> = vs_TEXCOORD0;
  let x_43 : vec4<f32> = vs_TEXCOORD0;
  let x_45 : vec2<f32> = (vec2<f32>(x_41.x, x_41.y) / vec2<f32>(x_43.w, x_43.w));
  let x_46 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_45.x, x_45.y, x_46.z, x_46.w);
  let x_59 : vec4<f32> = u_xlat1;
  let x_61 : vec4<f32> = textureSample(x_CameraDepthTexture, sampler_CameraDepthTexture, vec2<f32>(x_59.x, x_59.y));
  u_xlat18 = x_61.x;
  let x_65 : f32 = x_14.x_ZBufferParams.x;
  let x_66 : f32 = u_xlat18;
  let x_70 : f32 = x_14.x_ZBufferParams.y;
  u_xlat18 = ((x_65 * x_66) + x_70);
  let x_73 : f32 = u_xlat18;
  u_xlat18 = (1.0f / x_73);
  let x_75 : f32 = u_xlat18;
  let x_77 : vec4<f32> = u_xlat0;
  let x_79 : vec3<f32> = (vec3<f32>(x_75, x_75, x_75) * vec3<f32>(x_77.x, x_77.y, x_77.z));
  let x_80 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_79.x, x_79.y, x_79.z, x_80.w);
  let x_83 : vec4<f32> = u_xlat0;
  let x_88 : vec4<f32> = x_14.unity_CameraToWorld[1i];
  let x_90 : vec3<f32> = (vec3<f32>(x_83.y, x_83.y, x_83.y) * vec3<f32>(x_88.x, x_88.y, x_88.z));
  let x_91 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_90.x, x_90.y, x_90.z, x_91.w);
  let x_95 : vec4<f32> = x_14.unity_CameraToWorld[0i];
  let x_97 : vec4<f32> = u_xlat0;
  let x_100 : vec4<f32> = u_xlat2;
  let x_102 : vec3<f32> = ((vec3<f32>(x_95.x, x_95.y, x_95.z) * vec3<f32>(x_97.x, x_97.x, x_97.x)) + vec3<f32>(x_100.x, x_100.y, x_100.z));
  let x_103 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_102.x, x_102.y, x_103.z, x_102.z);
  let x_106 : vec4<f32> = x_14.unity_CameraToWorld[2i];
  let x_108 : vec4<f32> = u_xlat0;
  let x_111 : vec4<f32> = u_xlat0;
  let x_113 : vec3<f32> = ((vec3<f32>(x_106.x, x_106.y, x_106.z) * vec3<f32>(x_108.z, x_108.z, x_108.z)) + vec3<f32>(x_111.x, x_111.y, x_111.w));
  let x_114 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_113.x, x_113.y, x_113.z, x_114.w);
  let x_116 : vec4<f32> = u_xlat0;
  let x_119 : vec4<f32> = x_14.unity_CameraToWorld[3i];
  let x_121 : vec3<f32> = (vec3<f32>(x_116.x, x_116.y, x_116.z) + vec3<f32>(x_119.x, x_119.y, x_119.z));
  let x_122 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_121.x, x_121.y, x_121.z, x_122.w);
  let x_124 : vec4<f32> = u_xlat0;
  let x_128 : vec3<f32> = x_14.x_WorldSpaceCameraPos;
  let x_130 : vec3<f32> = (vec3<f32>(x_124.x, x_124.y, x_124.z) + -(x_128));
  let x_131 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_130.x, x_130.y, x_130.z, x_131.w);
  let x_133 : vec4<f32> = u_xlat0;
  let x_137 : vec4<f32> = x_14.x_LightPos;
  let x_140 : vec3<f32> = (vec3<f32>(x_133.x, x_133.y, x_133.z) + -(vec3<f32>(x_137.x, x_137.y, x_137.z)));
  let x_141 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_140.x, x_140.y, x_140.z, x_141.w);
  let x_143 : vec4<f32> = u_xlat2;
  let x_145 : vec4<f32> = u_xlat2;
  u_xlat18 = dot(vec3<f32>(x_143.x, x_143.y, x_143.z), vec3<f32>(x_145.x, x_145.y, x_145.z));
  let x_148 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_148);
  let x_150 : f32 = u_xlat18;
  let x_152 : vec4<f32> = u_xlat2;
  let x_154 : vec3<f32> = (vec3<f32>(x_150, x_150, x_150) * vec3<f32>(x_152.x, x_152.y, x_152.z));
  let x_155 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_154.x, x_154.y, x_154.z, x_155.w);
  let x_157 : vec4<f32> = u_xlat0;
  let x_159 : vec4<f32> = u_xlat0;
  u_xlat18 = dot(vec3<f32>(x_157.x, x_157.y, x_157.z), vec3<f32>(x_159.x, x_159.y, x_159.z));
  let x_163 : f32 = u_xlat18;
  u_xlat13 = inverseSqrt(x_163);
  let x_165 : f32 = u_xlat18;
  let x_168 : f32 = x_14.x_LightPos.w;
  u_xlat18 = (x_165 * x_168);
  let x_175 : f32 = u_xlat18;
  let x_177 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_175, x_175));
  u_xlat18 = x_177.x;
  let x_181 : f32 = u_xlat18;
  let x_185 : vec4<f32> = x_14.x_LightColor;
  u_xlat3 = (vec3<f32>(x_181, x_181, x_181) * vec3<f32>(x_185.x, x_185.y, x_185.z));
  let x_189 : vec4<f32> = u_xlat0;
  let x_192 : f32 = u_xlat13;
  let x_195 : vec4<f32> = u_xlat2;
  let x_198 : vec3<f32> = ((-(vec3<f32>(x_189.x, x_189.y, x_189.z)) * vec3<f32>(x_192, x_192, x_192)) + -(vec3<f32>(x_195.x, x_195.y, x_195.z)));
  let x_199 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_198.x, x_198.y, x_198.z, x_199.w);
  let x_201 : vec4<f32> = u_xlat0;
  let x_203 : f32 = u_xlat13;
  let x_205 : vec3<f32> = (vec3<f32>(x_201.x, x_201.y, x_201.z) * vec3<f32>(x_203, x_203, x_203));
  let x_206 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_205.x, x_205.y, x_205.z, x_206.w);
  let x_208 : vec4<f32> = u_xlat4;
  let x_210 : vec4<f32> = u_xlat4;
  u_xlat18 = dot(vec3<f32>(x_208.x, x_208.y, x_208.z), vec3<f32>(x_210.x, x_210.y, x_210.z));
  let x_213 : f32 = u_xlat18;
  u_xlat18 = max(x_213, 0.001f);
  let x_216 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_216);
  let x_218 : f32 = u_xlat18;
  let x_220 : vec4<f32> = u_xlat4;
  let x_222 : vec3<f32> = (vec3<f32>(x_218, x_218, x_218) * vec3<f32>(x_220.x, x_220.y, x_220.z));
  let x_223 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_222.x, x_222.y, x_222.z, x_223.w);
  let x_231 : vec4<f32> = u_xlat1;
  let x_233 : vec4<f32> = textureSample(x_CameraGBufferTexture2, sampler_CameraGBufferTexture2, vec2<f32>(x_231.x, x_231.y));
  u_xlat5 = vec3<f32>(x_233.x, x_233.y, x_233.z);
  let x_235 : vec3<f32> = u_xlat5;
  u_xlat5 = ((x_235 * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_242 : vec3<f32> = u_xlat5;
  let x_243 : vec3<f32> = u_xlat5;
  u_xlat18 = dot(x_242, x_243);
  let x_245 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_245);
  let x_247 : f32 = u_xlat18;
  let x_249 : vec3<f32> = u_xlat5;
  u_xlat5 = (vec3<f32>(x_247, x_247, x_247) * x_249);
  let x_251 : vec3<f32> = u_xlat5;
  let x_252 : vec4<f32> = u_xlat4;
  u_xlat18 = dot(x_251, vec3<f32>(x_252.x, x_252.y, x_252.z));
  let x_255 : f32 = u_xlat18;
  u_xlat18 = clamp(x_255, 0.0f, 1.0f);
  let x_258 : vec4<f32> = u_xlat0;
  let x_261 : vec4<f32> = u_xlat4;
  u_xlat13 = dot(-(vec3<f32>(x_258.x, x_258.y, x_258.z)), vec3<f32>(x_261.x, x_261.y, x_261.z));
  let x_264 : f32 = u_xlat13;
  u_xlat13 = clamp(x_264, 0.0f, 1.0f);
  let x_266 : vec3<f32> = u_xlat5;
  let x_267 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(x_266, -(vec3<f32>(x_267.x, x_267.y, x_267.z)));
  let x_273 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_273, 0.0f, 1.0f);
  let x_277 : vec3<f32> = u_xlat5;
  let x_278 : vec4<f32> = u_xlat2;
  u_xlat6 = dot(x_277, -(vec3<f32>(x_278.x, x_278.y, x_278.z)));
  let x_287 : vec4<f32> = u_xlat1;
  let x_289 : vec4<f32> = textureSample(x_CameraGBufferTexture1, sampler_CameraGBufferTexture1, vec2<f32>(x_287.x, x_287.y));
  u_xlat2 = x_289;
  let x_295 : vec4<f32> = u_xlat1;
  let x_297 : vec4<f32> = textureSample(x_CameraGBufferTexture0, sampler_CameraGBufferTexture0, vec2<f32>(x_295.x, x_295.y));
  let x_298 : vec3<f32> = vec3<f32>(x_297.x, x_297.y, x_297.z);
  let x_299 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_298.x, x_298.y, x_299.z, x_298.z);
  let x_301 : vec4<f32> = u_xlat2;
  u_xlat4 = (-(vec4<f32>(x_301.w, x_301.x, x_301.y, x_301.z)) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_308 : f32 = u_xlat4.x;
  let x_310 : f32 = u_xlat4.x;
  u_xlat12 = (x_308 * x_310);
  let x_312 : f32 = u_xlat12;
  u_xlat12 = max(x_312, 0.002f);
  let x_316 : f32 = u_xlat12;
  let x_317 : f32 = u_xlat12;
  u_xlat20 = (x_316 * x_317);
  let x_320 : f32 = u_xlat18;
  let x_321 : f32 = u_xlat20;
  let x_323 : f32 = u_xlat18;
  u_xlat21 = ((x_320 * x_321) + -(x_323));
  let x_326 : f32 = u_xlat21;
  let x_327 : f32 = u_xlat18;
  u_xlat18 = ((x_326 * x_327) + 1.0f);
  let x_330 : f32 = u_xlat18;
  let x_331 : f32 = u_xlat18;
  u_xlat18 = ((x_330 * x_331) + 0.0000001f);
  let x_335 : f32 = u_xlat20;
  u_xlat20 = (x_335 * 0.318309873f);
  let x_338 : f32 = u_xlat20;
  let x_339 : f32 = u_xlat18;
  u_xlat18 = (x_338 / x_339);
  let x_341 : f32 = u_xlat12;
  u_xlat20 = (-(x_341) + 1.0f);
  let x_344 : f32 = u_xlat6;
  let x_346 : f32 = u_xlat20;
  let x_348 : f32 = u_xlat12;
  u_xlat21 = ((abs(x_344) * x_346) + x_348);
  let x_351 : f32 = u_xlat0.x;
  let x_352 : f32 = u_xlat20;
  let x_354 : f32 = u_xlat12;
  u_xlat12 = ((x_351 * x_352) + x_354);
  let x_356 : f32 = u_xlat12;
  let x_357 : f32 = u_xlat6;
  u_xlat12 = (x_356 * abs(x_357));
  let x_360 : f32 = u_xlat6;
  u_xlat6 = (-(abs(x_360)) + 1.0f);
  let x_365 : f32 = u_xlat0.x;
  let x_366 : f32 = u_xlat21;
  let x_368 : f32 = u_xlat12;
  u_xlat12 = ((x_365 * x_366) + x_368);
  let x_370 : f32 = u_xlat12;
  u_xlat12 = (x_370 + 0.00001f);
  let x_374 : f32 = u_xlat12;
  u_xlat12 = (0.5f / x_374);
  let x_376 : f32 = u_xlat18;
  let x_377 : f32 = u_xlat12;
  u_xlat12 = (x_376 * x_377);
  let x_380 : f32 = u_xlat0.x;
  let x_381 : f32 = u_xlat12;
  u_xlat12 = (x_380 * x_381);
  let x_383 : f32 = u_xlat12;
  u_xlat12 = (x_383 * 3.141592741f);
  let x_386 : f32 = u_xlat12;
  u_xlat12 = max(x_386, 0.0f);
  let x_388 : vec4<f32> = u_xlat2;
  let x_390 : vec4<f32> = u_xlat2;
  u_xlat18 = dot(vec3<f32>(x_388.x, x_388.y, x_388.z), vec3<f32>(x_390.x, x_390.y, x_390.z));
  let x_396 : f32 = u_xlat18;
  u_xlatb18 = !((x_396 == 0.0f));
  let x_398 : bool = u_xlatb18;
  u_xlat18 = select(0.0f, 1.0f, x_398);
  let x_400 : f32 = u_xlat18;
  let x_401 : f32 = u_xlat12;
  u_xlat12 = (x_400 * x_401);
  let x_403 : vec3<f32> = u_xlat3;
  let x_404 : f32 = u_xlat12;
  u_xlat5 = (x_403 * vec3<f32>(x_404, x_404, x_404));
  let x_407 : f32 = u_xlat13;
  u_xlat12 = (-(x_407) + 1.0f);
  let x_410 : f32 = u_xlat13;
  let x_411 : f32 = u_xlat13;
  u_xlat18 = (x_410 * x_411);
  let x_413 : f32 = u_xlat18;
  let x_415 : vec4<f32> = u_xlat4;
  u_xlat18 = dot(vec2<f32>(x_413, x_413), vec2<f32>(x_415.x, x_415.x));
  let x_418 : f32 = u_xlat18;
  u_xlat18 = (x_418 + -0.5f);
  let x_421 : f32 = u_xlat12;
  let x_422 : f32 = u_xlat12;
  u_xlat13 = (x_421 * x_422);
  let x_424 : f32 = u_xlat13;
  let x_425 : f32 = u_xlat13;
  u_xlat13 = (x_424 * x_425);
  let x_427 : f32 = u_xlat12;
  let x_428 : f32 = u_xlat13;
  u_xlat12 = (x_427 * x_428);
  let x_430 : vec4<f32> = u_xlat4;
  let x_432 : f32 = u_xlat12;
  let x_435 : vec4<f32> = u_xlat2;
  let x_437 : vec3<f32> = ((vec3<f32>(x_430.y, x_430.z, x_430.w) * vec3<f32>(x_432, x_432, x_432)) + vec3<f32>(x_435.x, x_435.y, x_435.z));
  let x_438 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_437.x, x_437.y, x_437.z, x_438.w);
  let x_440 : vec4<f32> = u_xlat2;
  let x_442 : vec3<f32> = u_xlat5;
  let x_443 : vec3<f32> = (vec3<f32>(x_440.x, x_440.y, x_440.z) * x_442);
  let x_444 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_443.x, x_443.y, x_443.z, x_444.w);
  let x_446 : f32 = u_xlat6;
  let x_447 : f32 = u_xlat6;
  u_xlat12 = (x_446 * x_447);
  let x_449 : f32 = u_xlat12;
  let x_450 : f32 = u_xlat12;
  u_xlat12 = (x_449 * x_450);
  let x_452 : f32 = u_xlat6;
  let x_453 : f32 = u_xlat12;
  u_xlat6 = (x_452 * x_453);
  let x_455 : f32 = u_xlat18;
  let x_456 : f32 = u_xlat6;
  u_xlat6 = ((x_455 * x_456) + 1.0f);
  let x_460 : f32 = u_xlat0.x;
  u_xlat12 = (-(x_460) + 1.0f);
  let x_463 : f32 = u_xlat12;
  let x_464 : f32 = u_xlat12;
  u_xlat13 = (x_463 * x_464);
  let x_466 : f32 = u_xlat13;
  let x_467 : f32 = u_xlat13;
  u_xlat13 = (x_466 * x_467);
  let x_469 : f32 = u_xlat12;
  let x_470 : f32 = u_xlat13;
  u_xlat12 = (x_469 * x_470);
  let x_472 : f32 = u_xlat18;
  let x_473 : f32 = u_xlat12;
  u_xlat12 = ((x_472 * x_473) + 1.0f);
  let x_476 : f32 = u_xlat6;
  let x_477 : f32 = u_xlat12;
  u_xlat6 = (x_476 * x_477);
  let x_480 : f32 = u_xlat0.x;
  let x_481 : f32 = u_xlat6;
  u_xlat0.x = (x_480 * x_481);
  let x_484 : vec4<f32> = u_xlat0;
  let x_486 : vec3<f32> = u_xlat3;
  let x_487 : vec3<f32> = (vec3<f32>(x_484.x, x_484.x, x_484.x) * x_486);
  let x_488 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_487.x, x_487.y, x_487.z, x_488.w);
  let x_490 : vec4<f32> = u_xlat1;
  let x_492 : vec4<f32> = u_xlat0;
  let x_495 : vec4<f32> = u_xlat2;
  let x_497 : vec3<f32> = ((vec3<f32>(x_490.x, x_490.y, x_490.w) * vec3<f32>(x_492.x, x_492.y, x_492.z)) + vec3<f32>(x_495.x, x_495.y, x_495.z));
  let x_498 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_497.x, x_497.y, x_497.z, x_498.w);
  u_xlat0.w = 1.0f;
  let x_503 : vec4<f32> = u_xlat0;
  SV_Target0 = exp2(-(x_503));
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

