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
  unity_WorldToLight : mat4x4<f32>,
}

@group(1) @binding(0) var<uniform> x_14 : PGlobals;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(0) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_CameraDepthTexture : sampler;

@group(0) @binding(6) var x_ShadowMapTexture : texture_depth_cube;

@group(0) @binding(10) var sampler_ShadowMapTexture : sampler_comparison;

@group(0) @binding(1) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(8) var sampler_LightTextureB0 : sampler;

@group(0) @binding(2) var x_LightTexture0 : texture_cube<f32>;

@group(0) @binding(9) var sampler_LightTexture0 : sampler;

@group(0) @binding(5) var x_CameraGBufferTexture2 : texture_2d<f32>;

@group(0) @binding(13) var sampler_CameraGBufferTexture2 : sampler;

@group(0) @binding(4) var x_CameraGBufferTexture1 : texture_2d<f32>;

@group(0) @binding(12) var sampler_CameraGBufferTexture1 : sampler;

@group(0) @binding(3) var x_CameraGBufferTexture0 : texture_2d<f32>;

@group(0) @binding(11) var sampler_CameraGBufferTexture0 : sampler;

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
  let x_184 : f32 = u_xlat6.y;
  let x_187 : f32 = u_xlat6.x;
  u_xlat13 = max(abs(x_184), abs(x_187));
  let x_191 : f32 = u_xlat6.z;
  let x_193 : f32 = u_xlat13;
  u_xlat13 = max(abs(x_191), x_193);
  let x_195 : f32 = u_xlat13;
  let x_198 : f32 = x_14.x_LightProjectionParams.z;
  u_xlat13 = (x_195 + -(x_198));
  let x_201 : f32 = u_xlat13;
  u_xlat13 = max(x_201, 0.00001f);
  let x_204 : f32 = u_xlat13;
  let x_206 : f32 = x_14.x_LightProjectionParams.w;
  u_xlat13 = (x_204 * x_206);
  let x_209 : f32 = x_14.x_LightProjectionParams.y;
  let x_210 : f32 = u_xlat13;
  u_xlat13 = (x_209 / x_210);
  let x_212 : f32 = u_xlat13;
  let x_214 : f32 = x_14.x_LightProjectionParams.x;
  u_xlat13 = (x_212 + -(x_214));
  let x_217 : f32 = u_xlat13;
  u_xlat13 = (-(x_217) + 1.0f);
  let x_221 : vec3<f32> = u_xlat6;
  let x_222 : f32 = u_xlat13;
  txVec0 = vec4<f32>(x_221.x, x_221.y, x_221.z, x_222);
  let x_235 : vec4<f32> = txVec0;
  let x_237 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_235.xyz, x_235.w);
  u_xlat13 = x_237;
  let x_240 : f32 = x_14.x_LightShadowData.x;
  u_xlat19 = (-(x_240) + 1.0f);
  let x_243 : f32 = u_xlat13;
  let x_244 : f32 = u_xlat19;
  let x_247 : f32 = x_14.x_LightShadowData.x;
  u_xlat13 = ((x_243 * x_244) + x_247);
  let x_249 : f32 = u_xlat13;
  u_xlat19 = (-(x_249) + 1.0f);
  let x_253 : f32 = u_xlat0.x;
  let x_254 : f32 = u_xlat19;
  let x_256 : f32 = u_xlat13;
  u_xlat0.x = ((x_253 * x_254) + x_256);
  let x_259 : vec3<f32> = u_xlat6;
  let x_260 : vec3<f32> = u_xlat6;
  u_xlat13 = dot(x_259, x_260);
  let x_262 : f32 = u_xlat13;
  let x_264 : f32 = x_14.x_LightPos.w;
  u_xlat19 = (x_262 * x_264);
  let x_266 : f32 = u_xlat13;
  u_xlat13 = inverseSqrt(x_266);
  let x_273 : f32 = u_xlat19;
  let x_275 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_273, x_273));
  u_xlat19 = x_275.x;
  let x_278 : f32 = u_xlat0.x;
  let x_279 : f32 = u_xlat19;
  u_xlat0.x = (x_278 * x_279);
  let x_282 : vec4<f32> = u_xlat2;
  let x_286 : vec4<f32> = x_14.unity_WorldToLight[1i];
  u_xlat3 = (vec3<f32>(x_282.y, x_282.y, x_282.y) * vec3<f32>(x_286.x, x_286.y, x_286.z));
  let x_290 : vec4<f32> = x_14.unity_WorldToLight[0i];
  let x_292 : vec4<f32> = u_xlat2;
  let x_295 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_290.x, x_290.y, x_290.z) * vec3<f32>(x_292.x, x_292.x, x_292.x)) + x_295);
  let x_298 : vec4<f32> = x_14.unity_WorldToLight[2i];
  let x_300 : vec4<f32> = u_xlat2;
  let x_303 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_298.x, x_298.y, x_298.z) * vec3<f32>(x_300.w, x_300.w, x_300.w)) + x_303);
  let x_305 : vec4<f32> = u_xlat2;
  let x_309 : vec3<f32> = x_14.x_WorldSpaceCameraPos;
  let x_311 : vec3<f32> = (vec3<f32>(x_305.x, x_305.y, x_305.w) + -(x_309));
  let x_312 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_311.x, x_311.y, x_311.z, x_312.w);
  let x_314 : vec3<f32> = u_xlat3;
  let x_316 : vec4<f32> = x_14.unity_WorldToLight[3i];
  u_xlat3 = (x_314 + vec3<f32>(x_316.x, x_316.y, x_316.z));
  let x_327 : vec3<f32> = u_xlat3;
  let x_329 : vec4<f32> = textureSampleBias(x_LightTexture0, sampler_LightTexture0, x_327, -8.0f);
  u_xlat19 = x_329.w;
  let x_332 : f32 = u_xlat0.x;
  let x_333 : f32 = u_xlat19;
  u_xlat0.x = (x_332 * x_333);
  let x_336 : vec4<f32> = u_xlat0;
  let x_340 : vec4<f32> = x_14.x_LightColor;
  u_xlat3 = (vec3<f32>(x_336.x, x_336.x, x_336.x) * vec3<f32>(x_340.x, x_340.y, x_340.z));
  let x_343 : vec4<f32> = u_xlat2;
  let x_345 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(x_343.x, x_343.y, x_343.z), vec3<f32>(x_345.x, x_345.y, x_345.z));
  let x_350 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_350);
  let x_353 : vec4<f32> = u_xlat0;
  let x_355 : vec4<f32> = u_xlat2;
  let x_357 : vec3<f32> = (vec3<f32>(x_353.x, x_353.x, x_353.x) * vec3<f32>(x_355.x, x_355.y, x_355.z));
  let x_358 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_357.x, x_357.y, x_357.z, x_358.w);
  let x_361 : vec3<f32> = u_xlat6;
  let x_363 : f32 = u_xlat13;
  let x_366 : vec4<f32> = u_xlat2;
  let x_369 : vec3<f32> = ((-(x_361) * vec3<f32>(x_363, x_363, x_363)) + -(vec3<f32>(x_366.x, x_366.y, x_366.z)));
  let x_370 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_369.x, x_369.y, x_369.z, x_370.w);
  let x_372 : vec3<f32> = u_xlat6;
  let x_373 : f32 = u_xlat13;
  let x_375 : vec3<f32> = (x_372 * vec3<f32>(x_373, x_373, x_373));
  let x_376 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_375.x, x_375.y, x_375.z, x_376.w);
  let x_378 : vec4<f32> = u_xlat4;
  let x_380 : vec4<f32> = u_xlat4;
  u_xlat18 = dot(vec3<f32>(x_378.x, x_378.y, x_378.z), vec3<f32>(x_380.x, x_380.y, x_380.z));
  let x_383 : f32 = u_xlat18;
  u_xlat18 = max(x_383, 0.001f);
  let x_386 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_386);
  let x_388 : f32 = u_xlat18;
  let x_390 : vec4<f32> = u_xlat4;
  let x_392 : vec3<f32> = (vec3<f32>(x_388, x_388, x_388) * vec3<f32>(x_390.x, x_390.y, x_390.z));
  let x_393 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_392.x, x_392.y, x_392.z, x_393.w);
  let x_401 : vec4<f32> = u_xlat1;
  let x_403 : vec4<f32> = textureSample(x_CameraGBufferTexture2, sampler_CameraGBufferTexture2, vec2<f32>(x_401.x, x_401.y));
  u_xlat5 = vec3<f32>(x_403.x, x_403.y, x_403.z);
  let x_405 : vec3<f32> = u_xlat5;
  u_xlat5 = ((x_405 * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_412 : vec3<f32> = u_xlat5;
  let x_413 : vec3<f32> = u_xlat5;
  u_xlat18 = dot(x_412, x_413);
  let x_415 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_415);
  let x_417 : f32 = u_xlat18;
  let x_419 : vec3<f32> = u_xlat5;
  u_xlat5 = (vec3<f32>(x_417, x_417, x_417) * x_419);
  let x_421 : vec3<f32> = u_xlat5;
  let x_422 : vec4<f32> = u_xlat4;
  u_xlat18 = dot(x_421, vec3<f32>(x_422.x, x_422.y, x_422.z));
  let x_425 : f32 = u_xlat18;
  u_xlat18 = clamp(x_425, 0.0f, 1.0f);
  let x_427 : vec4<f32> = u_xlat0;
  let x_430 : vec4<f32> = u_xlat4;
  u_xlat13 = dot(-(vec3<f32>(x_427.x, x_427.y, x_427.z)), vec3<f32>(x_430.x, x_430.y, x_430.z));
  let x_433 : f32 = u_xlat13;
  u_xlat13 = clamp(x_433, 0.0f, 1.0f);
  let x_435 : vec3<f32> = u_xlat5;
  let x_436 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(x_435, -(vec3<f32>(x_436.x, x_436.y, x_436.z)));
  let x_442 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_442, 0.0f, 1.0f);
  let x_445 : vec3<f32> = u_xlat5;
  let x_446 : vec4<f32> = u_xlat2;
  u_xlat6.x = dot(x_445, -(vec3<f32>(x_446.x, x_446.y, x_446.z)));
  let x_456 : vec4<f32> = u_xlat1;
  let x_458 : vec4<f32> = textureSample(x_CameraGBufferTexture1, sampler_CameraGBufferTexture1, vec2<f32>(x_456.x, x_456.y));
  u_xlat2 = x_458;
  let x_464 : vec4<f32> = u_xlat1;
  let x_466 : vec4<f32> = textureSample(x_CameraGBufferTexture0, sampler_CameraGBufferTexture0, vec2<f32>(x_464.x, x_464.y));
  let x_467 : vec3<f32> = vec3<f32>(x_466.x, x_466.y, x_466.z);
  let x_468 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_467.x, x_467.y, x_468.z, x_467.z);
  let x_470 : vec4<f32> = u_xlat2;
  u_xlat4 = (-(vec4<f32>(x_470.w, x_470.x, x_470.y, x_470.z)) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_477 : f32 = u_xlat4.x;
  let x_479 : f32 = u_xlat4.x;
  u_xlat12 = (x_477 * x_479);
  let x_481 : f32 = u_xlat12;
  u_xlat12 = max(x_481, 0.002f);
  let x_485 : f32 = u_xlat12;
  let x_486 : f32 = u_xlat12;
  u_xlat20 = (x_485 * x_486);
  let x_489 : f32 = u_xlat18;
  let x_490 : f32 = u_xlat20;
  let x_492 : f32 = u_xlat18;
  u_xlat21 = ((x_489 * x_490) + -(x_492));
  let x_495 : f32 = u_xlat21;
  let x_496 : f32 = u_xlat18;
  u_xlat18 = ((x_495 * x_496) + 1.0f);
  let x_499 : f32 = u_xlat18;
  let x_500 : f32 = u_xlat18;
  u_xlat18 = ((x_499 * x_500) + 0.0000001f);
  let x_504 : f32 = u_xlat20;
  u_xlat20 = (x_504 * 0.318309873f);
  let x_507 : f32 = u_xlat20;
  let x_508 : f32 = u_xlat18;
  u_xlat18 = (x_507 / x_508);
  let x_510 : f32 = u_xlat12;
  u_xlat20 = (-(x_510) + 1.0f);
  let x_514 : f32 = u_xlat6.x;
  let x_516 : f32 = u_xlat20;
  let x_518 : f32 = u_xlat12;
  u_xlat21 = ((abs(x_514) * x_516) + x_518);
  let x_521 : f32 = u_xlat0.x;
  let x_522 : f32 = u_xlat20;
  let x_524 : f32 = u_xlat12;
  u_xlat12 = ((x_521 * x_522) + x_524);
  let x_526 : f32 = u_xlat12;
  let x_528 : f32 = u_xlat6.x;
  u_xlat12 = (x_526 * abs(x_528));
  let x_532 : f32 = u_xlat6.x;
  u_xlat6.x = (-(abs(x_532)) + 1.0f);
  let x_538 : f32 = u_xlat0.x;
  let x_539 : f32 = u_xlat21;
  let x_541 : f32 = u_xlat12;
  u_xlat12 = ((x_538 * x_539) + x_541);
  let x_543 : f32 = u_xlat12;
  u_xlat12 = (x_543 + 0.00001f);
  let x_546 : f32 = u_xlat12;
  u_xlat12 = (0.5f / x_546);
  let x_548 : f32 = u_xlat18;
  let x_549 : f32 = u_xlat12;
  u_xlat12 = (x_548 * x_549);
  let x_552 : f32 = u_xlat0.x;
  let x_553 : f32 = u_xlat12;
  u_xlat12 = (x_552 * x_553);
  let x_555 : f32 = u_xlat12;
  u_xlat12 = (x_555 * 3.141592741f);
  let x_558 : f32 = u_xlat12;
  u_xlat12 = max(x_558, 0.0f);
  let x_560 : vec4<f32> = u_xlat2;
  let x_562 : vec4<f32> = u_xlat2;
  u_xlat18 = dot(vec3<f32>(x_560.x, x_560.y, x_560.z), vec3<f32>(x_562.x, x_562.y, x_562.z));
  let x_568 : f32 = u_xlat18;
  u_xlatb18 = !((x_568 == 0.0f));
  let x_570 : bool = u_xlatb18;
  u_xlat18 = select(0.0f, 1.0f, x_570);
  let x_572 : f32 = u_xlat18;
  let x_573 : f32 = u_xlat12;
  u_xlat12 = (x_572 * x_573);
  let x_575 : vec3<f32> = u_xlat3;
  let x_576 : f32 = u_xlat12;
  u_xlat5 = (x_575 * vec3<f32>(x_576, x_576, x_576));
  let x_579 : f32 = u_xlat13;
  u_xlat12 = (-(x_579) + 1.0f);
  let x_582 : f32 = u_xlat13;
  let x_583 : f32 = u_xlat13;
  u_xlat18 = (x_582 * x_583);
  let x_585 : f32 = u_xlat18;
  let x_587 : vec4<f32> = u_xlat4;
  u_xlat18 = dot(vec2<f32>(x_585, x_585), vec2<f32>(x_587.x, x_587.x));
  let x_590 : f32 = u_xlat18;
  u_xlat18 = (x_590 + -0.5f);
  let x_593 : f32 = u_xlat12;
  let x_594 : f32 = u_xlat12;
  u_xlat13 = (x_593 * x_594);
  let x_596 : f32 = u_xlat13;
  let x_597 : f32 = u_xlat13;
  u_xlat13 = (x_596 * x_597);
  let x_599 : f32 = u_xlat12;
  let x_600 : f32 = u_xlat13;
  u_xlat12 = (x_599 * x_600);
  let x_602 : vec4<f32> = u_xlat4;
  let x_604 : f32 = u_xlat12;
  let x_607 : vec4<f32> = u_xlat2;
  let x_609 : vec3<f32> = ((vec3<f32>(x_602.y, x_602.z, x_602.w) * vec3<f32>(x_604, x_604, x_604)) + vec3<f32>(x_607.x, x_607.y, x_607.z));
  let x_610 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_609.x, x_609.y, x_609.z, x_610.w);
  let x_612 : vec4<f32> = u_xlat2;
  let x_614 : vec3<f32> = u_xlat5;
  let x_615 : vec3<f32> = (vec3<f32>(x_612.x, x_612.y, x_612.z) * x_614);
  let x_616 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_615.x, x_615.y, x_615.z, x_616.w);
  let x_619 : f32 = u_xlat6.x;
  let x_621 : f32 = u_xlat6.x;
  u_xlat12 = (x_619 * x_621);
  let x_623 : f32 = u_xlat12;
  let x_624 : f32 = u_xlat12;
  u_xlat12 = (x_623 * x_624);
  let x_627 : f32 = u_xlat6.x;
  let x_628 : f32 = u_xlat12;
  u_xlat6.x = (x_627 * x_628);
  let x_631 : f32 = u_xlat18;
  let x_633 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_631 * x_633) + 1.0f);
  let x_638 : f32 = u_xlat0.x;
  u_xlat12 = (-(x_638) + 1.0f);
  let x_641 : f32 = u_xlat12;
  let x_642 : f32 = u_xlat12;
  u_xlat13 = (x_641 * x_642);
  let x_644 : f32 = u_xlat13;
  let x_645 : f32 = u_xlat13;
  u_xlat13 = (x_644 * x_645);
  let x_647 : f32 = u_xlat12;
  let x_648 : f32 = u_xlat13;
  u_xlat12 = (x_647 * x_648);
  let x_650 : f32 = u_xlat18;
  let x_651 : f32 = u_xlat12;
  u_xlat12 = ((x_650 * x_651) + 1.0f);
  let x_655 : f32 = u_xlat6.x;
  let x_656 : f32 = u_xlat12;
  u_xlat6.x = (x_655 * x_656);
  let x_660 : f32 = u_xlat0.x;
  let x_662 : f32 = u_xlat6.x;
  u_xlat0.x = (x_660 * x_662);
  let x_665 : vec4<f32> = u_xlat0;
  let x_667 : vec3<f32> = u_xlat3;
  let x_668 : vec3<f32> = (vec3<f32>(x_665.x, x_665.x, x_665.x) * x_667);
  let x_669 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_668.x, x_668.y, x_668.z, x_669.w);
  let x_671 : vec4<f32> = u_xlat1;
  let x_673 : vec4<f32> = u_xlat0;
  let x_676 : vec4<f32> = u_xlat2;
  let x_678 : vec3<f32> = ((vec3<f32>(x_671.x, x_671.y, x_671.w) * vec3<f32>(x_673.x, x_673.y, x_673.z)) + vec3<f32>(x_676.x, x_676.y, x_676.z));
  let x_679 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_678.x, x_678.y, x_678.z, x_679.w);
  u_xlat0.w = 1.0f;
  let x_684 : vec4<f32> = u_xlat0;
  SV_Target0 = exp2(-(x_684));
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

