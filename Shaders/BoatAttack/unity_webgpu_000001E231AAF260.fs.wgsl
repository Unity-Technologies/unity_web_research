type Arr = array<mat4x4<f32>, 4u>;

struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  x_ZBufferParams : vec4<f32>,
  unity_CameraToWorld : mat4x4<f32>,
  unity_WorldToShadow : Arr,
  x_LightShadowData : vec4<f32>,
  unity_ShadowFadeCenterAndType : vec4<f32>,
  x_LightPos : vec4<f32>,
  x_LightColor : vec4<f32>,
  unity_WorldToLight : mat4x4<f32>,
}

@group(1) @binding(0) var<uniform> x_17 : PGlobals;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(0) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_CameraDepthTexture : sampler;

@group(0) @binding(7) var x_ShadowMapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_ShadowMapTexture : sampler_comparison;

@group(0) @binding(1) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(10) var sampler_LightTexture0 : sampler;

@group(0) @binding(2) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(9) var sampler_LightTextureB0 : sampler;

@group(0) @binding(5) var x_CameraGBufferTexture2 : texture_2d<f32>;

@group(0) @binding(15) var sampler_CameraGBufferTexture2 : sampler;

@group(0) @binding(4) var x_CameraGBufferTexture1 : texture_2d<f32>;

@group(0) @binding(14) var sampler_CameraGBufferTexture1 : sampler;

@group(0) @binding(3) var x_CameraGBufferTexture0 : texture_2d<f32>;

@group(0) @binding(13) var sampler_CameraGBufferTexture0 : sampler;

@group(0) @binding(6) var unity_NHxRoughness : texture_2d<f32>;

@group(0) @binding(12) var samplerunity_NHxRoughness : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat15 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat10 : f32;
  var u_xlatb15 : bool;
  var u_xlat4 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : f32 = x_17.x_ProjectionParams.z;
  let x_28 : f32 = vs_TEXCOORD1.z;
  u_xlat0.x = (x_23 / x_28);
  let x_33 : vec3<f32> = u_xlat0;
  let x_35 : vec3<f32> = vs_TEXCOORD1;
  u_xlat0 = (vec3<f32>(x_33.x, x_33.x, x_33.x) * x_35);
  let x_41 : vec4<f32> = vs_TEXCOORD0;
  let x_43 : vec4<f32> = vs_TEXCOORD0;
  let x_45 : vec2<f32> = (vec2<f32>(x_41.x, x_41.y) / vec2<f32>(x_43.w, x_43.w));
  let x_46 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_45.x, x_45.y, x_46.z);
  let x_59 : vec3<f32> = u_xlat1;
  let x_61 : vec4<f32> = textureSample(x_CameraDepthTexture, sampler_CameraDepthTexture, vec2<f32>(x_59.x, x_59.y));
  u_xlat15 = x_61.x;
  let x_65 : f32 = x_17.x_ZBufferParams.x;
  let x_66 : f32 = u_xlat15;
  let x_70 : f32 = x_17.x_ZBufferParams.y;
  u_xlat15 = ((x_65 * x_66) + x_70);
  let x_73 : f32 = u_xlat15;
  u_xlat15 = (1.0f / x_73);
  let x_77 : f32 = u_xlat15;
  let x_79 : vec3<f32> = u_xlat0;
  let x_80 : vec3<f32> = (vec3<f32>(x_77, x_77, x_77) * x_79);
  let x_81 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_80.x, x_80.y, x_80.z, x_81.w);
  let x_84 : vec4<f32> = u_xlat2;
  let x_89 : vec4<f32> = x_17.unity_CameraToWorld[1i];
  let x_91 : vec3<f32> = (vec3<f32>(x_84.y, x_84.y, x_84.y) * vec3<f32>(x_89.x, x_89.y, x_89.z));
  let x_92 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_91.x, x_91.y, x_91.z, x_92.w);
  let x_96 : vec4<f32> = x_17.unity_CameraToWorld[0i];
  let x_98 : vec4<f32> = u_xlat2;
  let x_101 : vec4<f32> = u_xlat3;
  let x_103 : vec3<f32> = ((vec3<f32>(x_96.x, x_96.y, x_96.z) * vec3<f32>(x_98.x, x_98.x, x_98.x)) + vec3<f32>(x_101.x, x_101.y, x_101.z));
  let x_104 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_103.x, x_103.y, x_104.z, x_103.z);
  let x_107 : vec4<f32> = x_17.unity_CameraToWorld[2i];
  let x_109 : vec4<f32> = u_xlat2;
  let x_112 : vec4<f32> = u_xlat2;
  let x_114 : vec3<f32> = ((vec3<f32>(x_107.x, x_107.y, x_107.z) * vec3<f32>(x_109.z, x_109.z, x_109.z)) + vec3<f32>(x_112.x, x_112.y, x_112.w));
  let x_115 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_114.x, x_114.y, x_115.z, x_114.z);
  let x_117 : vec4<f32> = u_xlat2;
  let x_120 : vec4<f32> = x_17.unity_CameraToWorld[3i];
  let x_122 : vec3<f32> = (vec3<f32>(x_117.x, x_117.y, x_117.w) + vec3<f32>(x_120.x, x_120.y, x_120.z));
  let x_123 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_122.x, x_122.y, x_123.z, x_122.z);
  let x_125 : vec4<f32> = u_xlat2;
  let x_129 : vec4<f32> = x_17.unity_ShadowFadeCenterAndType;
  let x_132 : vec3<f32> = (vec3<f32>(x_125.x, x_125.y, x_125.w) + -(vec3<f32>(x_129.x, x_129.y, x_129.z)));
  let x_133 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_132.x, x_132.y, x_132.z, x_133.w);
  let x_135 : vec4<f32> = u_xlat3;
  let x_137 : vec4<f32> = u_xlat3;
  u_xlat0.x = dot(vec3<f32>(x_135.x, x_135.y, x_135.z), vec3<f32>(x_137.x, x_137.y, x_137.z));
  let x_142 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_142);
  let x_146 : f32 = u_xlat0.z;
  let x_148 : f32 = u_xlat15;
  let x_151 : f32 = u_xlat0.x;
  u_xlat0.x = ((-(x_146) * x_148) + x_151);
  let x_156 : f32 = x_17.unity_ShadowFadeCenterAndType.w;
  let x_158 : f32 = u_xlat0.x;
  let x_161 : f32 = u_xlat2.z;
  u_xlat0.x = ((x_156 * x_158) + x_161);
  let x_165 : f32 = u_xlat0.x;
  let x_168 : f32 = x_17.x_LightShadowData.z;
  let x_171 : f32 = x_17.x_LightShadowData.w;
  u_xlat0.x = ((x_165 * x_168) + x_171);
  let x_175 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_175, 0.0f, 1.0f);
  let x_179 : vec4<f32> = u_xlat2;
  let x_183 : vec4<f32> = x_17.unity_WorldToShadow[0i][1i];
  u_xlat3 = (vec4<f32>(x_179.y, x_179.y, x_179.y, x_179.y) * x_183);
  let x_186 : vec4<f32> = x_17.unity_WorldToShadow[0i][0i];
  let x_187 : vec4<f32> = u_xlat2;
  let x_190 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_186 * vec4<f32>(x_187.x, x_187.x, x_187.x, x_187.x)) + x_190);
  let x_193 : vec4<f32> = x_17.unity_WorldToShadow[0i][2i];
  let x_194 : vec4<f32> = u_xlat2;
  let x_197 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_193 * vec4<f32>(x_194.w, x_194.w, x_194.w, x_194.w)) + x_197);
  let x_199 : vec4<f32> = u_xlat3;
  let x_201 : vec4<f32> = x_17.unity_WorldToShadow[0i][3i];
  u_xlat3 = (x_199 + x_201);
  let x_204 : vec4<f32> = u_xlat3;
  let x_206 : vec4<f32> = u_xlat3;
  u_xlat5 = (vec3<f32>(x_204.x, x_204.y, x_204.z) / vec3<f32>(x_206.w, x_206.w, x_206.w));
  let x_210 : vec3<f32> = u_xlat5;
  let x_211 : vec2<f32> = vec2<f32>(x_210.x, x_210.y);
  let x_213 : f32 = u_xlat5.z;
  txVec0 = vec3<f32>(x_211.x, x_211.y, x_213);
  let x_225 : vec3<f32> = txVec0;
  let x_227 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_225.xy, x_225.z);
  u_xlat5.x = x_227;
  let x_231 : f32 = x_17.x_LightShadowData.x;
  u_xlat10 = (-(x_231) + 1.0f);
  let x_235 : f32 = u_xlat5.x;
  let x_236 : f32 = u_xlat10;
  let x_239 : f32 = x_17.x_LightShadowData.x;
  u_xlat5.x = ((x_235 * x_236) + x_239);
  let x_243 : f32 = u_xlat5.x;
  u_xlat10 = (-(x_243) + 1.0f);
  let x_247 : f32 = u_xlat0.x;
  let x_248 : f32 = u_xlat10;
  let x_251 : f32 = u_xlat5.x;
  u_xlat0.x = ((x_247 * x_248) + x_251);
  let x_254 : vec4<f32> = u_xlat2;
  let x_258 : vec4<f32> = x_17.unity_WorldToLight[1i];
  u_xlat5 = (vec3<f32>(x_254.y, x_254.y, x_254.y) * vec3<f32>(x_258.x, x_258.y, x_258.w));
  let x_262 : vec4<f32> = x_17.unity_WorldToLight[0i];
  let x_264 : vec4<f32> = u_xlat2;
  let x_267 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_262.x, x_262.y, x_262.w) * vec3<f32>(x_264.x, x_264.x, x_264.x)) + x_267);
  let x_270 : vec4<f32> = x_17.unity_WorldToLight[2i];
  let x_272 : vec4<f32> = u_xlat2;
  let x_275 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_270.x, x_270.y, x_270.w) * vec3<f32>(x_272.w, x_272.w, x_272.w)) + x_275);
  let x_277 : vec3<f32> = u_xlat5;
  let x_279 : vec4<f32> = x_17.unity_WorldToLight[3i];
  u_xlat5 = (x_277 + vec3<f32>(x_279.x, x_279.y, x_279.w));
  let x_282 : vec3<f32> = u_xlat5;
  let x_284 : vec3<f32> = u_xlat5;
  let x_286 : vec2<f32> = (vec2<f32>(x_282.x, x_282.y) / vec2<f32>(x_284.z, x_284.z));
  let x_287 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_286.x, x_286.y, x_287.z);
  let x_293 : f32 = u_xlat5.z;
  u_xlatb15 = (x_293 < 0.0f);
  let x_295 : bool = u_xlatb15;
  u_xlat15 = select(0.0f, 1.0f, x_295);
  let x_302 : vec3<f32> = u_xlat5;
  let x_305 : vec4<f32> = textureSampleBias(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_302.x, x_302.y), -8.0f);
  u_xlat5.x = x_305.w;
  let x_308 : f32 = u_xlat15;
  let x_310 : f32 = u_xlat5.x;
  u_xlat5.x = (x_308 * x_310);
  let x_313 : vec4<f32> = u_xlat2;
  let x_318 : vec4<f32> = x_17.x_LightPos;
  let x_320 : vec3<f32> = (-(vec3<f32>(x_313.x, x_313.y, x_313.w)) + vec3<f32>(x_318.x, x_318.y, x_318.z));
  let x_321 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_320.x, x_320.y, x_320.z, x_321.w);
  let x_323 : vec4<f32> = u_xlat2;
  let x_327 : vec3<f32> = x_17.x_WorldSpaceCameraPos;
  let x_329 : vec3<f32> = (vec3<f32>(x_323.x, x_323.y, x_323.w) + -(x_327));
  let x_330 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_329.x, x_329.y, x_329.z, x_330.w);
  let x_332 : vec4<f32> = u_xlat3;
  let x_334 : vec4<f32> = u_xlat3;
  u_xlat10 = dot(vec3<f32>(x_332.x, x_332.y, x_332.z), vec3<f32>(x_334.x, x_334.y, x_334.z));
  let x_337 : f32 = u_xlat10;
  let x_339 : f32 = x_17.x_LightPos.w;
  u_xlat15 = (x_337 * x_339);
  let x_341 : f32 = u_xlat10;
  u_xlat10 = inverseSqrt(x_341);
  let x_343 : f32 = u_xlat10;
  let x_345 : vec4<f32> = u_xlat3;
  let x_347 : vec3<f32> = (vec3<f32>(x_343, x_343, x_343) * vec3<f32>(x_345.x, x_345.y, x_345.z));
  let x_348 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_347.x, x_347.y, x_347.z, x_348.w);
  let x_355 : f32 = u_xlat15;
  let x_357 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_355, x_355));
  u_xlat10 = x_357.x;
  let x_359 : f32 = u_xlat10;
  let x_361 : f32 = u_xlat5.x;
  u_xlat5.x = (x_359 * x_361);
  let x_365 : f32 = u_xlat0.x;
  let x_367 : f32 = u_xlat5.x;
  u_xlat0.x = (x_365 * x_367);
  let x_370 : vec3<f32> = u_xlat0;
  let x_374 : vec4<f32> = x_17.x_LightColor;
  u_xlat0 = (vec3<f32>(x_370.x, x_370.x, x_370.x) * vec3<f32>(x_374.x, x_374.y, x_374.z));
  let x_383 : vec3<f32> = u_xlat1;
  let x_385 : vec4<f32> = textureSample(x_CameraGBufferTexture2, sampler_CameraGBufferTexture2, vec2<f32>(x_383.x, x_383.y));
  u_xlat4 = vec3<f32>(x_385.x, x_385.y, x_385.z);
  let x_387 : vec3<f32> = u_xlat4;
  u_xlat4 = ((x_387 * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_394 : vec3<f32> = u_xlat4;
  let x_395 : vec3<f32> = u_xlat4;
  u_xlat15 = dot(x_394, x_395);
  let x_397 : f32 = u_xlat15;
  u_xlat15 = inverseSqrt(x_397);
  let x_399 : f32 = u_xlat15;
  let x_401 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_399, x_399, x_399) * x_401);
  let x_403 : vec3<f32> = u_xlat4;
  let x_404 : vec4<f32> = u_xlat3;
  u_xlat15 = dot(x_403, vec3<f32>(x_404.x, x_404.y, x_404.z));
  let x_407 : f32 = u_xlat15;
  u_xlat15 = clamp(x_407, 0.0f, 1.0f);
  let x_409 : f32 = u_xlat15;
  let x_411 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_409, x_409, x_409) * x_411);
  let x_413 : vec4<f32> = u_xlat2;
  let x_415 : vec4<f32> = u_xlat2;
  u_xlat15 = dot(vec3<f32>(x_413.x, x_413.y, x_413.z), vec3<f32>(x_415.x, x_415.y, x_415.z));
  let x_418 : f32 = u_xlat15;
  u_xlat15 = inverseSqrt(x_418);
  let x_420 : f32 = u_xlat15;
  let x_422 : vec4<f32> = u_xlat2;
  let x_424 : vec3<f32> = (vec3<f32>(x_420, x_420, x_420) * vec3<f32>(x_422.x, x_422.y, x_422.z));
  let x_425 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_424.x, x_424.y, x_424.z, x_425.w);
  let x_427 : vec4<f32> = u_xlat2;
  let x_430 : vec3<f32> = u_xlat4;
  u_xlat15 = dot(-(vec3<f32>(x_427.x, x_427.y, x_427.z)), x_430);
  let x_432 : f32 = u_xlat15;
  let x_433 : f32 = u_xlat15;
  u_xlat15 = (x_432 + x_433);
  let x_435 : vec3<f32> = u_xlat4;
  let x_436 : f32 = u_xlat15;
  let x_440 : vec4<f32> = u_xlat2;
  let x_443 : vec3<f32> = ((x_435 * -(vec3<f32>(x_436, x_436, x_436))) + -(vec3<f32>(x_440.x, x_440.y, x_440.z)));
  let x_444 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_443.x, x_443.y, x_443.z, x_444.w);
  let x_446 : vec4<f32> = u_xlat2;
  let x_448 : vec4<f32> = u_xlat3;
  u_xlat15 = dot(vec3<f32>(x_446.x, x_446.y, x_446.z), vec3<f32>(x_448.x, x_448.y, x_448.z));
  let x_451 : f32 = u_xlat15;
  let x_452 : f32 = u_xlat15;
  u_xlat15 = (x_451 * x_452);
  let x_454 : f32 = u_xlat15;
  let x_455 : f32 = u_xlat15;
  u_xlat2.x = (x_454 * x_455);
  let x_463 : vec3<f32> = u_xlat1;
  let x_465 : vec4<f32> = textureSample(x_CameraGBufferTexture1, sampler_CameraGBufferTexture1, vec2<f32>(x_463.x, x_463.y));
  u_xlat3 = x_465;
  let x_471 : vec3<f32> = u_xlat1;
  let x_473 : vec4<f32> = textureSample(x_CameraGBufferTexture0, sampler_CameraGBufferTexture0, vec2<f32>(x_471.x, x_471.y));
  u_xlat1 = vec3<f32>(x_473.x, x_473.y, x_473.z);
  let x_476 : f32 = u_xlat3.w;
  u_xlat2.y = (-(x_476) + 1.0f);
  let x_485 : vec4<f32> = u_xlat2;
  let x_487 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_485.x, x_485.y));
  u_xlat15 = x_487.x;
  let x_489 : f32 = u_xlat15;
  u_xlat15 = (x_489 * 16.0f);
  let x_492 : f32 = u_xlat15;
  let x_494 : vec4<f32> = u_xlat3;
  let x_497 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_492, x_492, x_492) * vec3<f32>(x_494.x, x_494.y, x_494.z)) + x_497);
  let x_501 : vec3<f32> = u_xlat0;
  let x_502 : vec3<f32> = u_xlat1;
  let x_503 : vec3<f32> = (x_501 * x_502);
  let x_504 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_503.x, x_503.y, x_503.z, x_504.w);
  SV_Target0.w = 1.0f;
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

