struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  x_ZBufferParams : vec4<f32>,
  unity_CameraToWorld : mat4x4<f32>,
  x_LightProjectionParams : vec4<f32>,
  x_LightShadowData : vec4<f32>,
  unity_ShadowFadeCenterAndType : vec4<f32>,
  x_LightPos : vec4<f32>,
  x_LightColor : vec4<f32>,
}

@group(1) @binding(0) var<uniform> x_14 : PGlobals;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(0) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_CameraDepthTexture : sampler;

@group(0) @binding(5) var x_ShadowMapTexture : texture_depth_cube;

@group(0) @binding(8) var sampler_ShadowMapTexture : sampler_comparison;

@group(0) @binding(1) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(7) var sampler_LightTextureB0 : sampler;

@group(0) @binding(4) var x_CameraGBufferTexture2 : texture_2d<f32>;

@group(0) @binding(11) var sampler_CameraGBufferTexture2 : sampler;

@group(0) @binding(3) var x_CameraGBufferTexture1 : texture_2d<f32>;

@group(0) @binding(10) var sampler_CameraGBufferTexture1 : sampler;

@group(0) @binding(2) var x_CameraGBufferTexture0 : texture_2d<f32>;

@group(0) @binding(9) var sampler_CameraGBufferTexture0 : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat18 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat13 : f32;
  var txVec0 : vec4<f32>;
  var u_xlat19 : f32;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
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
  let x_76 : f32 = u_xlat18;
  let x_78 : vec4<f32> = u_xlat0;
  let x_80 : vec3<f32> = (vec3<f32>(x_76, x_76, x_76) * vec3<f32>(x_78.x, x_78.y, x_78.z));
  let x_81 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_80.x, x_80.y, x_80.z, x_81.w);
  let x_85 : vec4<f32> = u_xlat2;
  let x_90 : vec4<f32> = x_14.unity_CameraToWorld[1i];
  u_xlat3 = (vec3<f32>(x_85.y, x_85.y, x_85.y) * vec3<f32>(x_90.x, x_90.y, x_90.z));
  let x_95 : vec4<f32> = x_14.unity_CameraToWorld[0i];
  let x_97 : vec4<f32> = u_xlat2;
  let x_100 : vec3<f32> = u_xlat3;
  let x_101 : vec3<f32> = ((vec3<f32>(x_95.x, x_95.y, x_95.z) * vec3<f32>(x_97.x, x_97.x, x_97.x)) + x_100);
  let x_102 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_101.x, x_101.y, x_102.z, x_101.z);
  let x_105 : vec4<f32> = x_14.unity_CameraToWorld[2i];
  let x_107 : vec4<f32> = u_xlat2;
  let x_110 : vec4<f32> = u_xlat2;
  let x_112 : vec3<f32> = ((vec3<f32>(x_105.x, x_105.y, x_105.z) * vec3<f32>(x_107.z, x_107.z, x_107.z)) + vec3<f32>(x_110.x, x_110.y, x_110.w));
  let x_113 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_112.x, x_112.y, x_113.z, x_112.z);
  let x_115 : vec4<f32> = u_xlat2;
  let x_118 : vec4<f32> = x_14.unity_CameraToWorld[3i];
  let x_120 : vec3<f32> = (vec3<f32>(x_115.x, x_115.y, x_115.w) + vec3<f32>(x_118.x, x_118.y, x_118.z));
  let x_121 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_120.x, x_120.y, x_121.z, x_120.z);
  let x_123 : vec4<f32> = u_xlat2;
  let x_127 : vec4<f32> = x_14.unity_ShadowFadeCenterAndType;
  u_xlat3 = (vec3<f32>(x_123.x, x_123.y, x_123.w) + -(vec3<f32>(x_127.x, x_127.y, x_127.z)));
  let x_131 : vec3<f32> = u_xlat3;
  let x_132 : vec3<f32> = u_xlat3;
  u_xlat0.x = dot(x_131, x_132);
  let x_136 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_136);
  let x_140 : f32 = u_xlat0.z;
  let x_142 : f32 = u_xlat18;
  let x_145 : f32 = u_xlat0.x;
  u_xlat0.x = ((-(x_140) * x_142) + x_145);
  let x_150 : f32 = x_14.unity_ShadowFadeCenterAndType.w;
  let x_152 : f32 = u_xlat0.x;
  let x_155 : f32 = u_xlat2.z;
  u_xlat0.x = ((x_150 * x_152) + x_155);
  let x_159 : f32 = u_xlat0.x;
  let x_162 : f32 = x_14.x_LightShadowData.z;
  let x_165 : f32 = x_14.x_LightShadowData.w;
  u_xlat0.x = ((x_159 * x_162) + x_165);
  let x_169 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_169, 0.0f, 1.0f);
  let x_174 : vec4<f32> = u_xlat2;
  let x_178 : vec4<f32> = x_14.x_LightPos;
  u_xlat6 = (vec3<f32>(x_174.x, x_174.y, x_174.w) + -(vec3<f32>(x_178.x, x_178.y, x_178.z)));
  let x_182 : vec4<f32> = u_xlat2;
  let x_186 : vec3<f32> = x_14.x_WorldSpaceCameraPos;
  let x_188 : vec3<f32> = (vec3<f32>(x_182.x, x_182.y, x_182.w) + -(x_186));
  let x_189 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_188.x, x_188.y, x_188.z, x_189.w);
  let x_193 : f32 = u_xlat6.y;
  let x_196 : f32 = u_xlat6.x;
  u_xlat13 = max(abs(x_193), abs(x_196));
  let x_200 : f32 = u_xlat6.z;
  let x_202 : f32 = u_xlat13;
  u_xlat13 = max(abs(x_200), x_202);
  let x_204 : f32 = u_xlat13;
  let x_207 : f32 = x_14.x_LightProjectionParams.z;
  u_xlat13 = (x_204 + -(x_207));
  let x_210 : f32 = u_xlat13;
  u_xlat13 = max(x_210, 0.00001f);
  let x_213 : f32 = u_xlat13;
  let x_215 : f32 = x_14.x_LightProjectionParams.w;
  u_xlat13 = (x_213 * x_215);
  let x_218 : f32 = x_14.x_LightProjectionParams.y;
  let x_219 : f32 = u_xlat13;
  u_xlat13 = (x_218 / x_219);
  let x_221 : f32 = u_xlat13;
  let x_223 : f32 = x_14.x_LightProjectionParams.x;
  u_xlat13 = (x_221 + -(x_223));
  let x_226 : f32 = u_xlat13;
  u_xlat13 = (-(x_226) + 1.0f);
  let x_230 : vec3<f32> = u_xlat6;
  let x_231 : f32 = u_xlat13;
  txVec0 = vec4<f32>(x_230.x, x_230.y, x_230.z, x_231);
  let x_244 : vec4<f32> = txVec0;
  let x_246 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_244.xyz, x_244.w);
  u_xlat13 = x_246;
  let x_249 : f32 = x_14.x_LightShadowData.x;
  u_xlat19 = (-(x_249) + 1.0f);
  let x_252 : f32 = u_xlat13;
  let x_253 : f32 = u_xlat19;
  let x_256 : f32 = x_14.x_LightShadowData.x;
  u_xlat13 = ((x_252 * x_253) + x_256);
  let x_258 : f32 = u_xlat13;
  u_xlat19 = (-(x_258) + 1.0f);
  let x_262 : f32 = u_xlat0.x;
  let x_263 : f32 = u_xlat19;
  let x_265 : f32 = u_xlat13;
  u_xlat0.x = ((x_262 * x_263) + x_265);
  let x_268 : vec3<f32> = u_xlat6;
  let x_269 : vec3<f32> = u_xlat6;
  u_xlat13 = dot(x_268, x_269);
  let x_271 : f32 = u_xlat13;
  let x_273 : f32 = x_14.x_LightPos.w;
  u_xlat19 = (x_271 * x_273);
  let x_275 : f32 = u_xlat13;
  u_xlat13 = inverseSqrt(x_275);
  let x_282 : f32 = u_xlat19;
  let x_284 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_282, x_282));
  u_xlat19 = x_284.x;
  let x_287 : f32 = u_xlat0.x;
  let x_288 : f32 = u_xlat19;
  u_xlat0.x = (x_287 * x_288);
  let x_291 : vec4<f32> = u_xlat0;
  let x_295 : vec4<f32> = x_14.x_LightColor;
  u_xlat3 = (vec3<f32>(x_291.x, x_291.x, x_291.x) * vec3<f32>(x_295.x, x_295.y, x_295.z));
  let x_298 : vec4<f32> = u_xlat2;
  let x_300 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(x_298.x, x_298.y, x_298.z), vec3<f32>(x_300.x, x_300.y, x_300.z));
  let x_305 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_305);
  let x_308 : vec4<f32> = u_xlat0;
  let x_310 : vec4<f32> = u_xlat2;
  let x_312 : vec3<f32> = (vec3<f32>(x_308.x, x_308.x, x_308.x) * vec3<f32>(x_310.x, x_310.y, x_310.z));
  let x_313 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_312.x, x_312.y, x_312.z, x_313.w);
  let x_316 : vec3<f32> = u_xlat6;
  let x_318 : f32 = u_xlat13;
  let x_321 : vec4<f32> = u_xlat2;
  let x_324 : vec3<f32> = ((-(x_316) * vec3<f32>(x_318, x_318, x_318)) + -(vec3<f32>(x_321.x, x_321.y, x_321.z)));
  let x_325 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_324.x, x_324.y, x_324.z, x_325.w);
  let x_327 : vec3<f32> = u_xlat6;
  let x_328 : f32 = u_xlat13;
  let x_330 : vec3<f32> = (x_327 * vec3<f32>(x_328, x_328, x_328));
  let x_331 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_330.x, x_330.y, x_330.z, x_331.w);
  let x_333 : vec4<f32> = u_xlat4;
  let x_335 : vec4<f32> = u_xlat4;
  u_xlat18 = dot(vec3<f32>(x_333.x, x_333.y, x_333.z), vec3<f32>(x_335.x, x_335.y, x_335.z));
  let x_338 : f32 = u_xlat18;
  u_xlat18 = max(x_338, 0.001f);
  let x_341 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_341);
  let x_343 : f32 = u_xlat18;
  let x_345 : vec4<f32> = u_xlat4;
  let x_347 : vec3<f32> = (vec3<f32>(x_343, x_343, x_343) * vec3<f32>(x_345.x, x_345.y, x_345.z));
  let x_348 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_347.x, x_347.y, x_347.z, x_348.w);
  let x_356 : vec4<f32> = u_xlat1;
  let x_358 : vec4<f32> = textureSample(x_CameraGBufferTexture2, sampler_CameraGBufferTexture2, vec2<f32>(x_356.x, x_356.y));
  u_xlat5 = vec3<f32>(x_358.x, x_358.y, x_358.z);
  let x_360 : vec3<f32> = u_xlat5;
  u_xlat5 = ((x_360 * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_367 : vec3<f32> = u_xlat5;
  let x_368 : vec3<f32> = u_xlat5;
  u_xlat18 = dot(x_367, x_368);
  let x_370 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_370);
  let x_372 : f32 = u_xlat18;
  let x_374 : vec3<f32> = u_xlat5;
  u_xlat5 = (vec3<f32>(x_372, x_372, x_372) * x_374);
  let x_376 : vec3<f32> = u_xlat5;
  let x_377 : vec4<f32> = u_xlat4;
  u_xlat18 = dot(x_376, vec3<f32>(x_377.x, x_377.y, x_377.z));
  let x_380 : f32 = u_xlat18;
  u_xlat18 = clamp(x_380, 0.0f, 1.0f);
  let x_382 : vec4<f32> = u_xlat0;
  let x_385 : vec4<f32> = u_xlat4;
  u_xlat13 = dot(-(vec3<f32>(x_382.x, x_382.y, x_382.z)), vec3<f32>(x_385.x, x_385.y, x_385.z));
  let x_388 : f32 = u_xlat13;
  u_xlat13 = clamp(x_388, 0.0f, 1.0f);
  let x_390 : vec3<f32> = u_xlat5;
  let x_391 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(x_390, -(vec3<f32>(x_391.x, x_391.y, x_391.z)));
  let x_397 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_397, 0.0f, 1.0f);
  let x_400 : vec3<f32> = u_xlat5;
  let x_401 : vec4<f32> = u_xlat2;
  u_xlat6.x = dot(x_400, -(vec3<f32>(x_401.x, x_401.y, x_401.z)));
  let x_411 : vec4<f32> = u_xlat1;
  let x_413 : vec4<f32> = textureSample(x_CameraGBufferTexture1, sampler_CameraGBufferTexture1, vec2<f32>(x_411.x, x_411.y));
  u_xlat2 = x_413;
  let x_419 : vec4<f32> = u_xlat1;
  let x_421 : vec4<f32> = textureSample(x_CameraGBufferTexture0, sampler_CameraGBufferTexture0, vec2<f32>(x_419.x, x_419.y));
  let x_422 : vec3<f32> = vec3<f32>(x_421.x, x_421.y, x_421.z);
  let x_423 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_422.x, x_422.y, x_423.z, x_422.z);
  let x_425 : vec4<f32> = u_xlat2;
  u_xlat4 = (-(vec4<f32>(x_425.w, x_425.x, x_425.y, x_425.z)) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_432 : f32 = u_xlat4.x;
  let x_434 : f32 = u_xlat4.x;
  u_xlat12 = (x_432 * x_434);
  let x_436 : f32 = u_xlat12;
  u_xlat12 = max(x_436, 0.002f);
  let x_440 : f32 = u_xlat12;
  let x_441 : f32 = u_xlat12;
  u_xlat20 = (x_440 * x_441);
  let x_444 : f32 = u_xlat18;
  let x_445 : f32 = u_xlat20;
  let x_447 : f32 = u_xlat18;
  u_xlat21 = ((x_444 * x_445) + -(x_447));
  let x_450 : f32 = u_xlat21;
  let x_451 : f32 = u_xlat18;
  u_xlat18 = ((x_450 * x_451) + 1.0f);
  let x_454 : f32 = u_xlat18;
  let x_455 : f32 = u_xlat18;
  u_xlat18 = ((x_454 * x_455) + 0.0000001f);
  let x_459 : f32 = u_xlat20;
  u_xlat20 = (x_459 * 0.318309873f);
  let x_462 : f32 = u_xlat20;
  let x_463 : f32 = u_xlat18;
  u_xlat18 = (x_462 / x_463);
  let x_465 : f32 = u_xlat12;
  u_xlat20 = (-(x_465) + 1.0f);
  let x_469 : f32 = u_xlat6.x;
  let x_471 : f32 = u_xlat20;
  let x_473 : f32 = u_xlat12;
  u_xlat21 = ((abs(x_469) * x_471) + x_473);
  let x_476 : f32 = u_xlat0.x;
  let x_477 : f32 = u_xlat20;
  let x_479 : f32 = u_xlat12;
  u_xlat12 = ((x_476 * x_477) + x_479);
  let x_481 : f32 = u_xlat12;
  let x_483 : f32 = u_xlat6.x;
  u_xlat12 = (x_481 * abs(x_483));
  let x_487 : f32 = u_xlat6.x;
  u_xlat6.x = (-(abs(x_487)) + 1.0f);
  let x_493 : f32 = u_xlat0.x;
  let x_494 : f32 = u_xlat21;
  let x_496 : f32 = u_xlat12;
  u_xlat12 = ((x_493 * x_494) + x_496);
  let x_498 : f32 = u_xlat12;
  u_xlat12 = (x_498 + 0.00001f);
  let x_501 : f32 = u_xlat12;
  u_xlat12 = (0.5f / x_501);
  let x_503 : f32 = u_xlat18;
  let x_504 : f32 = u_xlat12;
  u_xlat12 = (x_503 * x_504);
  let x_507 : f32 = u_xlat0.x;
  let x_508 : f32 = u_xlat12;
  u_xlat12 = (x_507 * x_508);
  let x_510 : f32 = u_xlat12;
  u_xlat12 = (x_510 * 3.141592741f);
  let x_513 : f32 = u_xlat12;
  u_xlat12 = max(x_513, 0.0f);
  let x_515 : vec4<f32> = u_xlat2;
  let x_517 : vec4<f32> = u_xlat2;
  u_xlat18 = dot(vec3<f32>(x_515.x, x_515.y, x_515.z), vec3<f32>(x_517.x, x_517.y, x_517.z));
  let x_523 : f32 = u_xlat18;
  u_xlatb18 = !((x_523 == 0.0f));
  let x_525 : bool = u_xlatb18;
  u_xlat18 = select(0.0f, 1.0f, x_525);
  let x_527 : f32 = u_xlat18;
  let x_528 : f32 = u_xlat12;
  u_xlat12 = (x_527 * x_528);
  let x_530 : vec3<f32> = u_xlat3;
  let x_531 : f32 = u_xlat12;
  u_xlat5 = (x_530 * vec3<f32>(x_531, x_531, x_531));
  let x_534 : f32 = u_xlat13;
  u_xlat12 = (-(x_534) + 1.0f);
  let x_537 : f32 = u_xlat13;
  let x_538 : f32 = u_xlat13;
  u_xlat18 = (x_537 * x_538);
  let x_540 : f32 = u_xlat18;
  let x_542 : vec4<f32> = u_xlat4;
  u_xlat18 = dot(vec2<f32>(x_540, x_540), vec2<f32>(x_542.x, x_542.x));
  let x_545 : f32 = u_xlat18;
  u_xlat18 = (x_545 + -0.5f);
  let x_548 : f32 = u_xlat12;
  let x_549 : f32 = u_xlat12;
  u_xlat13 = (x_548 * x_549);
  let x_551 : f32 = u_xlat13;
  let x_552 : f32 = u_xlat13;
  u_xlat13 = (x_551 * x_552);
  let x_554 : f32 = u_xlat12;
  let x_555 : f32 = u_xlat13;
  u_xlat12 = (x_554 * x_555);
  let x_557 : vec4<f32> = u_xlat4;
  let x_559 : f32 = u_xlat12;
  let x_562 : vec4<f32> = u_xlat2;
  let x_564 : vec3<f32> = ((vec3<f32>(x_557.y, x_557.z, x_557.w) * vec3<f32>(x_559, x_559, x_559)) + vec3<f32>(x_562.x, x_562.y, x_562.z));
  let x_565 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_564.x, x_564.y, x_564.z, x_565.w);
  let x_567 : vec4<f32> = u_xlat2;
  let x_569 : vec3<f32> = u_xlat5;
  let x_570 : vec3<f32> = (vec3<f32>(x_567.x, x_567.y, x_567.z) * x_569);
  let x_571 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_570.x, x_570.y, x_570.z, x_571.w);
  let x_574 : f32 = u_xlat6.x;
  let x_576 : f32 = u_xlat6.x;
  u_xlat12 = (x_574 * x_576);
  let x_578 : f32 = u_xlat12;
  let x_579 : f32 = u_xlat12;
  u_xlat12 = (x_578 * x_579);
  let x_582 : f32 = u_xlat6.x;
  let x_583 : f32 = u_xlat12;
  u_xlat6.x = (x_582 * x_583);
  let x_586 : f32 = u_xlat18;
  let x_588 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_586 * x_588) + 1.0f);
  let x_593 : f32 = u_xlat0.x;
  u_xlat12 = (-(x_593) + 1.0f);
  let x_596 : f32 = u_xlat12;
  let x_597 : f32 = u_xlat12;
  u_xlat13 = (x_596 * x_597);
  let x_599 : f32 = u_xlat13;
  let x_600 : f32 = u_xlat13;
  u_xlat13 = (x_599 * x_600);
  let x_602 : f32 = u_xlat12;
  let x_603 : f32 = u_xlat13;
  u_xlat12 = (x_602 * x_603);
  let x_605 : f32 = u_xlat18;
  let x_606 : f32 = u_xlat12;
  u_xlat12 = ((x_605 * x_606) + 1.0f);
  let x_610 : f32 = u_xlat6.x;
  let x_611 : f32 = u_xlat12;
  u_xlat6.x = (x_610 * x_611);
  let x_615 : f32 = u_xlat0.x;
  let x_617 : f32 = u_xlat6.x;
  u_xlat0.x = (x_615 * x_617);
  let x_620 : vec4<f32> = u_xlat0;
  let x_622 : vec3<f32> = u_xlat3;
  let x_623 : vec3<f32> = (vec3<f32>(x_620.x, x_620.x, x_620.x) * x_622);
  let x_624 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_623.x, x_623.y, x_623.z, x_624.w);
  let x_626 : vec4<f32> = u_xlat1;
  let x_628 : vec4<f32> = u_xlat0;
  let x_631 : vec4<f32> = u_xlat2;
  let x_633 : vec3<f32> = ((vec3<f32>(x_626.x, x_626.y, x_626.w) * vec3<f32>(x_628.x, x_628.y, x_628.z)) + vec3<f32>(x_631.x, x_631.y, x_631.z));
  let x_634 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_633.x, x_633.y, x_633.z, x_634.w);
  u_xlat0.w = 1.0f;
  let x_639 : vec4<f32> = u_xlat0;
  SV_Target0 = exp2(-(x_639));
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

