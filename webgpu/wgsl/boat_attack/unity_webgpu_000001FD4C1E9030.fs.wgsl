diagnostic(off, derivative_uniformity);

alias Arr = array<mat4x4<f32>, 4u>;

struct PGlobals {
  /* @offset(0) */
  x_WorldSpaceCameraPos : vec3<f32>,
  /* @offset(16) */
  x_ProjectionParams : vec4<f32>,
  /* @offset(32) */
  x_ZBufferParams : vec4<f32>,
  /* @offset(48) */
  unity_CameraToWorld : mat4x4<f32>,
  /* @offset(112) */
  unity_WorldToShadow : Arr,
  /* @offset(368) */
  x_LightShadowData : vec4<f32>,
  /* @offset(384) */
  unity_ShadowFadeCenterAndType : vec4<f32>,
  /* @offset(400) */
  x_LightPos : vec4<f32>,
  /* @offset(416) */
  x_LightColor : vec4<f32>,
  /* @offset(432) */
  unity_WorldToLight : mat4x4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_17 : PGlobals;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat1 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat15 : f32;

@group(0) @binding(0) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_CameraDepthTexture : sampler;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

@group(0) @binding(7) var x_ShadowMapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_ShadowMapTexture : sampler_comparison;

var<private> u_xlat10 : f32;

var<private> u_xlatb15 : bool;

@group(0) @binding(1) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(10) var sampler_LightTexture0 : sampler;

@group(0) @binding(2) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(9) var sampler_LightTextureB0 : sampler;

var<private> u_xlat4 : vec3<f32>;

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
  var txVec0 : vec3<f32>;
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
  let x_211 : vec3<f32> = u_xlat5;
  let x_212 : vec2<f32> = vec2<f32>(x_211.x, x_211.y);
  let x_214 : f32 = u_xlat5.z;
  txVec0 = vec3<f32>(x_212.x, x_212.y, x_214);
  let x_226 : vec3<f32> = txVec0;
  let x_228 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_226.xy, x_226.z);
  u_xlat5.x = x_228;
  let x_232 : f32 = x_17.x_LightShadowData.x;
  u_xlat10 = (-(x_232) + 1.0f);
  let x_236 : f32 = u_xlat5.x;
  let x_237 : f32 = u_xlat10;
  let x_240 : f32 = x_17.x_LightShadowData.x;
  u_xlat5.x = ((x_236 * x_237) + x_240);
  let x_244 : f32 = u_xlat5.x;
  u_xlat10 = (-(x_244) + 1.0f);
  let x_248 : f32 = u_xlat0.x;
  let x_249 : f32 = u_xlat10;
  let x_252 : f32 = u_xlat5.x;
  u_xlat0.x = ((x_248 * x_249) + x_252);
  let x_255 : vec4<f32> = u_xlat2;
  let x_259 : vec4<f32> = x_17.unity_WorldToLight[1i];
  u_xlat5 = (vec3<f32>(x_255.y, x_255.y, x_255.y) * vec3<f32>(x_259.x, x_259.y, x_259.w));
  let x_263 : vec4<f32> = x_17.unity_WorldToLight[0i];
  let x_265 : vec4<f32> = u_xlat2;
  let x_268 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_263.x, x_263.y, x_263.w) * vec3<f32>(x_265.x, x_265.x, x_265.x)) + x_268);
  let x_271 : vec4<f32> = x_17.unity_WorldToLight[2i];
  let x_273 : vec4<f32> = u_xlat2;
  let x_276 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_271.x, x_271.y, x_271.w) * vec3<f32>(x_273.w, x_273.w, x_273.w)) + x_276);
  let x_278 : vec3<f32> = u_xlat5;
  let x_280 : vec4<f32> = x_17.unity_WorldToLight[3i];
  u_xlat5 = (x_278 + vec3<f32>(x_280.x, x_280.y, x_280.w));
  let x_283 : vec3<f32> = u_xlat5;
  let x_285 : vec3<f32> = u_xlat5;
  let x_287 : vec2<f32> = (vec2<f32>(x_283.x, x_283.y) / vec2<f32>(x_285.z, x_285.z));
  let x_288 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_287.x, x_287.y, x_288.z);
  let x_294 : f32 = u_xlat5.z;
  u_xlatb15 = (x_294 < 0.0f);
  let x_296 : bool = u_xlatb15;
  u_xlat15 = select(0.0f, 1.0f, x_296);
  let x_303 : vec3<f32> = u_xlat5;
  let x_306 : vec4<f32> = textureSampleBias(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_303.x, x_303.y), -8.0f);
  u_xlat5.x = x_306.w;
  let x_309 : f32 = u_xlat15;
  let x_311 : f32 = u_xlat5.x;
  u_xlat5.x = (x_309 * x_311);
  let x_314 : vec4<f32> = u_xlat2;
  let x_319 : vec4<f32> = x_17.x_LightPos;
  let x_321 : vec3<f32> = (-(vec3<f32>(x_314.x, x_314.y, x_314.w)) + vec3<f32>(x_319.x, x_319.y, x_319.z));
  let x_322 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_321.x, x_321.y, x_321.z, x_322.w);
  let x_324 : vec4<f32> = u_xlat2;
  let x_328 : vec3<f32> = x_17.x_WorldSpaceCameraPos;
  let x_330 : vec3<f32> = (vec3<f32>(x_324.x, x_324.y, x_324.w) + -(x_328));
  let x_331 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_330.x, x_330.y, x_330.z, x_331.w);
  let x_333 : vec4<f32> = u_xlat3;
  let x_335 : vec4<f32> = u_xlat3;
  u_xlat10 = dot(vec3<f32>(x_333.x, x_333.y, x_333.z), vec3<f32>(x_335.x, x_335.y, x_335.z));
  let x_338 : f32 = u_xlat10;
  let x_340 : f32 = x_17.x_LightPos.w;
  u_xlat15 = (x_338 * x_340);
  let x_342 : f32 = u_xlat10;
  u_xlat10 = inverseSqrt(x_342);
  let x_344 : f32 = u_xlat10;
  let x_346 : vec4<f32> = u_xlat3;
  let x_348 : vec3<f32> = (vec3<f32>(x_344, x_344, x_344) * vec3<f32>(x_346.x, x_346.y, x_346.z));
  let x_349 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_348.x, x_348.y, x_348.z, x_349.w);
  let x_356 : f32 = u_xlat15;
  let x_358 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_356, x_356));
  u_xlat10 = x_358.x;
  let x_360 : f32 = u_xlat10;
  let x_362 : f32 = u_xlat5.x;
  u_xlat5.x = (x_360 * x_362);
  let x_366 : f32 = u_xlat0.x;
  let x_368 : f32 = u_xlat5.x;
  u_xlat0.x = (x_366 * x_368);
  let x_371 : vec3<f32> = u_xlat0;
  let x_375 : vec4<f32> = x_17.x_LightColor;
  u_xlat0 = (vec3<f32>(x_371.x, x_371.x, x_371.x) * vec3<f32>(x_375.x, x_375.y, x_375.z));
  let x_384 : vec3<f32> = u_xlat1;
  let x_386 : vec4<f32> = textureSample(x_CameraGBufferTexture2, sampler_CameraGBufferTexture2, vec2<f32>(x_384.x, x_384.y));
  u_xlat4 = vec3<f32>(x_386.x, x_386.y, x_386.z);
  let x_388 : vec3<f32> = u_xlat4;
  u_xlat4 = ((x_388 * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_395 : vec3<f32> = u_xlat4;
  let x_396 : vec3<f32> = u_xlat4;
  u_xlat15 = dot(x_395, x_396);
  let x_398 : f32 = u_xlat15;
  u_xlat15 = inverseSqrt(x_398);
  let x_400 : f32 = u_xlat15;
  let x_402 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_400, x_400, x_400) * x_402);
  let x_404 : vec3<f32> = u_xlat4;
  let x_405 : vec4<f32> = u_xlat3;
  u_xlat15 = dot(x_404, vec3<f32>(x_405.x, x_405.y, x_405.z));
  let x_408 : f32 = u_xlat15;
  u_xlat15 = clamp(x_408, 0.0f, 1.0f);
  let x_410 : f32 = u_xlat15;
  let x_412 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_410, x_410, x_410) * x_412);
  let x_414 : vec4<f32> = u_xlat2;
  let x_416 : vec4<f32> = u_xlat2;
  u_xlat15 = dot(vec3<f32>(x_414.x, x_414.y, x_414.z), vec3<f32>(x_416.x, x_416.y, x_416.z));
  let x_419 : f32 = u_xlat15;
  u_xlat15 = inverseSqrt(x_419);
  let x_421 : f32 = u_xlat15;
  let x_423 : vec4<f32> = u_xlat2;
  let x_425 : vec3<f32> = (vec3<f32>(x_421, x_421, x_421) * vec3<f32>(x_423.x, x_423.y, x_423.z));
  let x_426 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_425.x, x_425.y, x_425.z, x_426.w);
  let x_428 : vec4<f32> = u_xlat2;
  let x_431 : vec3<f32> = u_xlat4;
  u_xlat15 = dot(-(vec3<f32>(x_428.x, x_428.y, x_428.z)), x_431);
  let x_433 : f32 = u_xlat15;
  let x_434 : f32 = u_xlat15;
  u_xlat15 = (x_433 + x_434);
  let x_436 : vec3<f32> = u_xlat4;
  let x_437 : f32 = u_xlat15;
  let x_441 : vec4<f32> = u_xlat2;
  let x_444 : vec3<f32> = ((x_436 * -(vec3<f32>(x_437, x_437, x_437))) + -(vec3<f32>(x_441.x, x_441.y, x_441.z)));
  let x_445 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_444.x, x_444.y, x_444.z, x_445.w);
  let x_447 : vec4<f32> = u_xlat2;
  let x_449 : vec4<f32> = u_xlat3;
  u_xlat15 = dot(vec3<f32>(x_447.x, x_447.y, x_447.z), vec3<f32>(x_449.x, x_449.y, x_449.z));
  let x_452 : f32 = u_xlat15;
  let x_453 : f32 = u_xlat15;
  u_xlat15 = (x_452 * x_453);
  let x_455 : f32 = u_xlat15;
  let x_456 : f32 = u_xlat15;
  u_xlat2.x = (x_455 * x_456);
  let x_464 : vec3<f32> = u_xlat1;
  let x_466 : vec4<f32> = textureSample(x_CameraGBufferTexture1, sampler_CameraGBufferTexture1, vec2<f32>(x_464.x, x_464.y));
  u_xlat3 = x_466;
  let x_472 : vec3<f32> = u_xlat1;
  let x_474 : vec4<f32> = textureSample(x_CameraGBufferTexture0, sampler_CameraGBufferTexture0, vec2<f32>(x_472.x, x_472.y));
  u_xlat1 = vec3<f32>(x_474.x, x_474.y, x_474.z);
  let x_477 : f32 = u_xlat3.w;
  u_xlat2.y = (-(x_477) + 1.0f);
  let x_486 : vec4<f32> = u_xlat2;
  let x_488 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_486.x, x_486.y));
  u_xlat15 = x_488.x;
  let x_490 : f32 = u_xlat15;
  u_xlat15 = (x_490 * 16.0f);
  let x_493 : f32 = u_xlat15;
  let x_495 : vec4<f32> = u_xlat3;
  let x_498 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_493, x_493, x_493) * vec3<f32>(x_495.x, x_495.y, x_495.z)) + x_498);
  let x_502 : vec3<f32> = u_xlat0;
  let x_503 : vec3<f32> = u_xlat1;
  let x_504 : vec3<f32> = (x_502 * x_503);
  let x_505 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_504.x, x_504.y, x_504.z, x_505.w);
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


