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

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var<uniform> x_14 : PGlobals;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat18 : f32;

@group(0) @binding(1) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_CameraDepthTexture : sampler;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat13 : f32;

@group(0) @binding(7) var x_ShadowMapTexture : texture_depth_cube;

@group(0) @binding(11) var sampler_ShadowMapTexture : sampler_comparison;

var<private> u_xlat19 : f32;

@group(0) @binding(2) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(9) var sampler_LightTextureB0 : sampler;

@group(0) @binding(3) var x_LightTexture0 : texture_cube<f32>;

@group(0) @binding(10) var sampler_LightTexture0 : sampler;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

@group(0) @binding(6) var x_CameraGBufferTexture2 : texture_2d<f32>;

@group(0) @binding(14) var sampler_CameraGBufferTexture2 : sampler;

@group(0) @binding(5) var x_CameraGBufferTexture1 : texture_2d<f32>;

@group(0) @binding(13) var sampler_CameraGBufferTexture1 : sampler;

@group(0) @binding(4) var x_CameraGBufferTexture0 : texture_2d<f32>;

@group(0) @binding(12) var sampler_CameraGBufferTexture0 : sampler;

var<private> u_xlat12 : f32;

var<private> u_xlat20 : f32;

var<private> u_xlat21 : f32;

var<private> u_xlatb18 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var txVec0 : vec4<f32>;
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
  let x_222 : vec3<f32> = u_xlat6;
  let x_223 : f32 = u_xlat13;
  txVec0 = vec4<f32>(x_222.x, x_222.y, x_222.z, x_223);
  let x_236 : vec4<f32> = txVec0;
  let x_238 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_236.xyz, x_236.w);
  u_xlat13 = x_238;
  let x_241 : f32 = x_14.x_LightShadowData.x;
  u_xlat19 = (-(x_241) + 1.0f);
  let x_244 : f32 = u_xlat13;
  let x_245 : f32 = u_xlat19;
  let x_248 : f32 = x_14.x_LightShadowData.x;
  u_xlat13 = ((x_244 * x_245) + x_248);
  let x_250 : f32 = u_xlat13;
  u_xlat19 = (-(x_250) + 1.0f);
  let x_254 : f32 = u_xlat0.x;
  let x_255 : f32 = u_xlat19;
  let x_257 : f32 = u_xlat13;
  u_xlat0.x = ((x_254 * x_255) + x_257);
  let x_260 : vec3<f32> = u_xlat6;
  let x_261 : vec3<f32> = u_xlat6;
  u_xlat13 = dot(x_260, x_261);
  let x_263 : f32 = u_xlat13;
  let x_265 : f32 = x_14.x_LightPos.w;
  u_xlat19 = (x_263 * x_265);
  let x_267 : f32 = u_xlat13;
  u_xlat13 = inverseSqrt(x_267);
  let x_274 : f32 = u_xlat19;
  let x_276 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_274, x_274));
  u_xlat19 = x_276.x;
  let x_279 : f32 = u_xlat0.x;
  let x_280 : f32 = u_xlat19;
  u_xlat0.x = (x_279 * x_280);
  let x_283 : vec4<f32> = u_xlat2;
  let x_287 : vec4<f32> = x_14.unity_WorldToLight[1i];
  u_xlat3 = (vec3<f32>(x_283.y, x_283.y, x_283.y) * vec3<f32>(x_287.x, x_287.y, x_287.z));
  let x_291 : vec4<f32> = x_14.unity_WorldToLight[0i];
  let x_293 : vec4<f32> = u_xlat2;
  let x_296 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_291.x, x_291.y, x_291.z) * vec3<f32>(x_293.x, x_293.x, x_293.x)) + x_296);
  let x_299 : vec4<f32> = x_14.unity_WorldToLight[2i];
  let x_301 : vec4<f32> = u_xlat2;
  let x_304 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_299.x, x_299.y, x_299.z) * vec3<f32>(x_301.w, x_301.w, x_301.w)) + x_304);
  let x_306 : vec4<f32> = u_xlat2;
  let x_310 : vec3<f32> = x_14.x_WorldSpaceCameraPos;
  let x_312 : vec3<f32> = (vec3<f32>(x_306.x, x_306.y, x_306.w) + -(x_310));
  let x_313 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_312.x, x_312.y, x_312.z, x_313.w);
  let x_315 : vec3<f32> = u_xlat3;
  let x_317 : vec4<f32> = x_14.unity_WorldToLight[3i];
  u_xlat3 = (x_315 + vec3<f32>(x_317.x, x_317.y, x_317.z));
  let x_328 : vec3<f32> = u_xlat3;
  let x_330 : vec4<f32> = textureSampleBias(x_LightTexture0, sampler_LightTexture0, x_328, -8.0f);
  u_xlat19 = x_330.w;
  let x_333 : f32 = u_xlat0.x;
  let x_334 : f32 = u_xlat19;
  u_xlat0.x = (x_333 * x_334);
  let x_337 : vec4<f32> = u_xlat0;
  let x_341 : vec4<f32> = x_14.x_LightColor;
  u_xlat3 = (vec3<f32>(x_337.x, x_337.x, x_337.x) * vec3<f32>(x_341.x, x_341.y, x_341.z));
  let x_344 : vec4<f32> = u_xlat2;
  let x_346 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(x_344.x, x_344.y, x_344.z), vec3<f32>(x_346.x, x_346.y, x_346.z));
  let x_351 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_351);
  let x_354 : vec4<f32> = u_xlat0;
  let x_356 : vec4<f32> = u_xlat2;
  let x_358 : vec3<f32> = (vec3<f32>(x_354.x, x_354.x, x_354.x) * vec3<f32>(x_356.x, x_356.y, x_356.z));
  let x_359 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_358.x, x_358.y, x_358.z, x_359.w);
  let x_362 : vec3<f32> = u_xlat6;
  let x_364 : f32 = u_xlat13;
  let x_367 : vec4<f32> = u_xlat2;
  let x_370 : vec3<f32> = ((-(x_362) * vec3<f32>(x_364, x_364, x_364)) + -(vec3<f32>(x_367.x, x_367.y, x_367.z)));
  let x_371 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_370.x, x_370.y, x_370.z, x_371.w);
  let x_373 : vec3<f32> = u_xlat6;
  let x_374 : f32 = u_xlat13;
  let x_376 : vec3<f32> = (x_373 * vec3<f32>(x_374, x_374, x_374));
  let x_377 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_376.x, x_376.y, x_376.z, x_377.w);
  let x_379 : vec4<f32> = u_xlat4;
  let x_381 : vec4<f32> = u_xlat4;
  u_xlat18 = dot(vec3<f32>(x_379.x, x_379.y, x_379.z), vec3<f32>(x_381.x, x_381.y, x_381.z));
  let x_384 : f32 = u_xlat18;
  u_xlat18 = max(x_384, 0.001f);
  let x_387 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_387);
  let x_389 : f32 = u_xlat18;
  let x_391 : vec4<f32> = u_xlat4;
  let x_393 : vec3<f32> = (vec3<f32>(x_389, x_389, x_389) * vec3<f32>(x_391.x, x_391.y, x_391.z));
  let x_394 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_393.x, x_393.y, x_393.z, x_394.w);
  let x_402 : vec4<f32> = u_xlat1;
  let x_404 : vec4<f32> = textureSample(x_CameraGBufferTexture2, sampler_CameraGBufferTexture2, vec2<f32>(x_402.x, x_402.y));
  u_xlat5 = vec3<f32>(x_404.x, x_404.y, x_404.z);
  let x_406 : vec3<f32> = u_xlat5;
  u_xlat5 = ((x_406 * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_413 : vec3<f32> = u_xlat5;
  let x_414 : vec3<f32> = u_xlat5;
  u_xlat18 = dot(x_413, x_414);
  let x_416 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_416);
  let x_418 : f32 = u_xlat18;
  let x_420 : vec3<f32> = u_xlat5;
  u_xlat5 = (vec3<f32>(x_418, x_418, x_418) * x_420);
  let x_422 : vec3<f32> = u_xlat5;
  let x_423 : vec4<f32> = u_xlat4;
  u_xlat18 = dot(x_422, vec3<f32>(x_423.x, x_423.y, x_423.z));
  let x_426 : f32 = u_xlat18;
  u_xlat18 = clamp(x_426, 0.0f, 1.0f);
  let x_428 : vec4<f32> = u_xlat0;
  let x_431 : vec4<f32> = u_xlat4;
  u_xlat13 = dot(-(vec3<f32>(x_428.x, x_428.y, x_428.z)), vec3<f32>(x_431.x, x_431.y, x_431.z));
  let x_434 : f32 = u_xlat13;
  u_xlat13 = clamp(x_434, 0.0f, 1.0f);
  let x_436 : vec3<f32> = u_xlat5;
  let x_437 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(x_436, -(vec3<f32>(x_437.x, x_437.y, x_437.z)));
  let x_443 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_443, 0.0f, 1.0f);
  let x_446 : vec3<f32> = u_xlat5;
  let x_447 : vec4<f32> = u_xlat2;
  u_xlat6.x = dot(x_446, -(vec3<f32>(x_447.x, x_447.y, x_447.z)));
  let x_457 : vec4<f32> = u_xlat1;
  let x_459 : vec4<f32> = textureSample(x_CameraGBufferTexture1, sampler_CameraGBufferTexture1, vec2<f32>(x_457.x, x_457.y));
  u_xlat2 = x_459;
  let x_465 : vec4<f32> = u_xlat1;
  let x_467 : vec4<f32> = textureSample(x_CameraGBufferTexture0, sampler_CameraGBufferTexture0, vec2<f32>(x_465.x, x_465.y));
  let x_468 : vec3<f32> = vec3<f32>(x_467.x, x_467.y, x_467.z);
  let x_469 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_468.x, x_468.y, x_469.z, x_468.z);
  let x_471 : vec4<f32> = u_xlat2;
  u_xlat4 = (-(vec4<f32>(x_471.w, x_471.x, x_471.y, x_471.z)) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_478 : f32 = u_xlat4.x;
  let x_480 : f32 = u_xlat4.x;
  u_xlat12 = (x_478 * x_480);
  let x_482 : f32 = u_xlat12;
  u_xlat12 = max(x_482, 0.002f);
  let x_486 : f32 = u_xlat12;
  let x_487 : f32 = u_xlat12;
  u_xlat20 = (x_486 * x_487);
  let x_490 : f32 = u_xlat18;
  let x_491 : f32 = u_xlat20;
  let x_493 : f32 = u_xlat18;
  u_xlat21 = ((x_490 * x_491) + -(x_493));
  let x_496 : f32 = u_xlat21;
  let x_497 : f32 = u_xlat18;
  u_xlat18 = ((x_496 * x_497) + 1.0f);
  let x_500 : f32 = u_xlat18;
  let x_501 : f32 = u_xlat18;
  u_xlat18 = ((x_500 * x_501) + 0.0000001f);
  let x_505 : f32 = u_xlat20;
  u_xlat20 = (x_505 * 0.318309873f);
  let x_508 : f32 = u_xlat20;
  let x_509 : f32 = u_xlat18;
  u_xlat18 = (x_508 / x_509);
  let x_511 : f32 = u_xlat12;
  u_xlat20 = (-(x_511) + 1.0f);
  let x_515 : f32 = u_xlat6.x;
  let x_517 : f32 = u_xlat20;
  let x_519 : f32 = u_xlat12;
  u_xlat21 = ((abs(x_515) * x_517) + x_519);
  let x_522 : f32 = u_xlat0.x;
  let x_523 : f32 = u_xlat20;
  let x_525 : f32 = u_xlat12;
  u_xlat12 = ((x_522 * x_523) + x_525);
  let x_527 : f32 = u_xlat12;
  let x_529 : f32 = u_xlat6.x;
  u_xlat12 = (x_527 * abs(x_529));
  let x_533 : f32 = u_xlat6.x;
  u_xlat6.x = (-(abs(x_533)) + 1.0f);
  let x_539 : f32 = u_xlat0.x;
  let x_540 : f32 = u_xlat21;
  let x_542 : f32 = u_xlat12;
  u_xlat12 = ((x_539 * x_540) + x_542);
  let x_544 : f32 = u_xlat12;
  u_xlat12 = (x_544 + 0.00001f);
  let x_547 : f32 = u_xlat12;
  u_xlat12 = (0.5f / x_547);
  let x_549 : f32 = u_xlat18;
  let x_550 : f32 = u_xlat12;
  u_xlat12 = (x_549 * x_550);
  let x_553 : f32 = u_xlat0.x;
  let x_554 : f32 = u_xlat12;
  u_xlat12 = (x_553 * x_554);
  let x_556 : f32 = u_xlat12;
  u_xlat12 = (x_556 * 3.141592741f);
  let x_559 : f32 = u_xlat12;
  u_xlat12 = max(x_559, 0.0f);
  let x_561 : vec4<f32> = u_xlat2;
  let x_563 : vec4<f32> = u_xlat2;
  u_xlat18 = dot(vec3<f32>(x_561.x, x_561.y, x_561.z), vec3<f32>(x_563.x, x_563.y, x_563.z));
  let x_569 : f32 = u_xlat18;
  u_xlatb18 = !((x_569 == 0.0f));
  let x_571 : bool = u_xlatb18;
  u_xlat18 = select(0.0f, 1.0f, x_571);
  let x_573 : f32 = u_xlat18;
  let x_574 : f32 = u_xlat12;
  u_xlat12 = (x_573 * x_574);
  let x_576 : vec3<f32> = u_xlat3;
  let x_577 : f32 = u_xlat12;
  u_xlat5 = (x_576 * vec3<f32>(x_577, x_577, x_577));
  let x_580 : f32 = u_xlat13;
  u_xlat12 = (-(x_580) + 1.0f);
  let x_583 : f32 = u_xlat13;
  let x_584 : f32 = u_xlat13;
  u_xlat18 = (x_583 * x_584);
  let x_586 : f32 = u_xlat18;
  let x_588 : vec4<f32> = u_xlat4;
  u_xlat18 = dot(vec2<f32>(x_586, x_586), vec2<f32>(x_588.x, x_588.x));
  let x_591 : f32 = u_xlat18;
  u_xlat18 = (x_591 + -0.5f);
  let x_594 : f32 = u_xlat12;
  let x_595 : f32 = u_xlat12;
  u_xlat13 = (x_594 * x_595);
  let x_597 : f32 = u_xlat13;
  let x_598 : f32 = u_xlat13;
  u_xlat13 = (x_597 * x_598);
  let x_600 : f32 = u_xlat12;
  let x_601 : f32 = u_xlat13;
  u_xlat12 = (x_600 * x_601);
  let x_603 : vec4<f32> = u_xlat4;
  let x_605 : f32 = u_xlat12;
  let x_608 : vec4<f32> = u_xlat2;
  let x_610 : vec3<f32> = ((vec3<f32>(x_603.y, x_603.z, x_603.w) * vec3<f32>(x_605, x_605, x_605)) + vec3<f32>(x_608.x, x_608.y, x_608.z));
  let x_611 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_610.x, x_610.y, x_610.z, x_611.w);
  let x_613 : vec4<f32> = u_xlat2;
  let x_615 : vec3<f32> = u_xlat5;
  let x_616 : vec3<f32> = (vec3<f32>(x_613.x, x_613.y, x_613.z) * x_615);
  let x_617 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_616.x, x_616.y, x_616.z, x_617.w);
  let x_620 : f32 = u_xlat6.x;
  let x_622 : f32 = u_xlat6.x;
  u_xlat12 = (x_620 * x_622);
  let x_624 : f32 = u_xlat12;
  let x_625 : f32 = u_xlat12;
  u_xlat12 = (x_624 * x_625);
  let x_628 : f32 = u_xlat6.x;
  let x_629 : f32 = u_xlat12;
  u_xlat6.x = (x_628 * x_629);
  let x_632 : f32 = u_xlat18;
  let x_634 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_632 * x_634) + 1.0f);
  let x_639 : f32 = u_xlat0.x;
  u_xlat12 = (-(x_639) + 1.0f);
  let x_642 : f32 = u_xlat12;
  let x_643 : f32 = u_xlat12;
  u_xlat13 = (x_642 * x_643);
  let x_645 : f32 = u_xlat13;
  let x_646 : f32 = u_xlat13;
  u_xlat13 = (x_645 * x_646);
  let x_648 : f32 = u_xlat12;
  let x_649 : f32 = u_xlat13;
  u_xlat12 = (x_648 * x_649);
  let x_651 : f32 = u_xlat18;
  let x_652 : f32 = u_xlat12;
  u_xlat12 = ((x_651 * x_652) + 1.0f);
  let x_656 : f32 = u_xlat6.x;
  let x_657 : f32 = u_xlat12;
  u_xlat6.x = (x_656 * x_657);
  let x_661 : f32 = u_xlat0.x;
  let x_663 : f32 = u_xlat6.x;
  u_xlat0.x = (x_661 * x_663);
  let x_666 : vec4<f32> = u_xlat0;
  let x_668 : vec3<f32> = u_xlat3;
  let x_669 : vec3<f32> = (vec3<f32>(x_666.x, x_666.x, x_666.x) * x_668);
  let x_670 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_669.x, x_669.y, x_669.z, x_670.w);
  let x_672 : vec4<f32> = u_xlat1;
  let x_674 : vec4<f32> = u_xlat0;
  let x_677 : vec4<f32> = u_xlat2;
  let x_679 : vec3<f32> = ((vec3<f32>(x_672.x, x_672.y, x_672.w) * vec3<f32>(x_674.x, x_674.y, x_674.z)) + vec3<f32>(x_677.x, x_677.y, x_677.z));
  let x_680 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_679.x, x_679.y, x_679.z, x_680.w);
  u_xlat0.w = 1.0f;
  let x_685 : vec4<f32> = u_xlat0;
  SV_Target0 = exp2(-(x_685));
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

