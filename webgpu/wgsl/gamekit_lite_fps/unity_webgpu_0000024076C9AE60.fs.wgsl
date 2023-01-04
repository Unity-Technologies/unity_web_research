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

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_14 : PGlobals;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat18 : f32;

@group(0) @binding(1) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_CameraDepthTexture : sampler;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat13 : f32;

@group(0) @binding(6) var x_ShadowMapTexture : texture_depth_cube;

@group(0) @binding(9) var sampler_ShadowMapTexture : sampler_comparison;

var<private> u_xlat19 : f32;

@group(0) @binding(2) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(8) var sampler_LightTextureB0 : sampler;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

@group(0) @binding(5) var x_CameraGBufferTexture2 : texture_2d<f32>;

@group(0) @binding(12) var sampler_CameraGBufferTexture2 : sampler;

@group(0) @binding(4) var x_CameraGBufferTexture1 : texture_2d<f32>;

@group(0) @binding(11) var sampler_CameraGBufferTexture1 : sampler;

@group(0) @binding(3) var x_CameraGBufferTexture0 : texture_2d<f32>;

@group(0) @binding(10) var sampler_CameraGBufferTexture0 : sampler;

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
  let x_31 : vec3<f32> = u_xlat0;
  let x_33 : vec3<f32> = vs_TEXCOORD1;
  u_xlat0 = (vec3<f32>(x_31.x, x_31.x, x_31.x) * x_33);
  let x_40 : vec4<f32> = vs_TEXCOORD0;
  let x_42 : vec4<f32> = vs_TEXCOORD0;
  let x_44 : vec2<f32> = (vec2<f32>(x_40.x, x_40.y) / vec2<f32>(x_42.w, x_42.w));
  let x_45 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_44.x, x_44.y, x_45.z, x_45.w);
  let x_58 : vec4<f32> = u_xlat1;
  let x_60 : vec4<f32> = textureSample(x_CameraDepthTexture, sampler_CameraDepthTexture, vec2<f32>(x_58.x, x_58.y));
  u_xlat18 = x_60.x;
  let x_64 : f32 = x_14.x_ZBufferParams.x;
  let x_65 : f32 = u_xlat18;
  let x_69 : f32 = x_14.x_ZBufferParams.y;
  u_xlat18 = ((x_64 * x_65) + x_69);
  let x_72 : f32 = u_xlat18;
  u_xlat18 = (1.0f / x_72);
  let x_75 : f32 = u_xlat18;
  let x_77 : vec3<f32> = u_xlat0;
  let x_78 : vec3<f32> = (vec3<f32>(x_75, x_75, x_75) * x_77);
  let x_79 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_78.x, x_78.y, x_78.z, x_79.w);
  let x_82 : vec4<f32> = u_xlat2;
  let x_87 : vec4<f32> = x_14.unity_CameraToWorld[1i];
  u_xlat3 = (vec3<f32>(x_82.y, x_82.y, x_82.y) * vec3<f32>(x_87.x, x_87.y, x_87.z));
  let x_92 : vec4<f32> = x_14.unity_CameraToWorld[0i];
  let x_94 : vec4<f32> = u_xlat2;
  let x_97 : vec3<f32> = u_xlat3;
  let x_98 : vec3<f32> = ((vec3<f32>(x_92.x, x_92.y, x_92.z) * vec3<f32>(x_94.x, x_94.x, x_94.x)) + x_97);
  let x_99 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_98.x, x_98.y, x_99.z, x_98.z);
  let x_102 : vec4<f32> = x_14.unity_CameraToWorld[2i];
  let x_104 : vec4<f32> = u_xlat2;
  let x_107 : vec4<f32> = u_xlat2;
  let x_109 : vec3<f32> = ((vec3<f32>(x_102.x, x_102.y, x_102.z) * vec3<f32>(x_104.z, x_104.z, x_104.z)) + vec3<f32>(x_107.x, x_107.y, x_107.w));
  let x_110 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_109.x, x_109.y, x_110.z, x_109.z);
  let x_112 : vec4<f32> = u_xlat2;
  let x_115 : vec4<f32> = x_14.unity_CameraToWorld[3i];
  let x_117 : vec3<f32> = (vec3<f32>(x_112.x, x_112.y, x_112.w) + vec3<f32>(x_115.x, x_115.y, x_115.z));
  let x_118 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_117.x, x_117.y, x_118.z, x_117.z);
  let x_120 : vec4<f32> = u_xlat2;
  let x_124 : vec4<f32> = x_14.unity_ShadowFadeCenterAndType;
  u_xlat3 = (vec3<f32>(x_120.x, x_120.y, x_120.w) + -(vec3<f32>(x_124.x, x_124.y, x_124.z)));
  let x_128 : vec3<f32> = u_xlat3;
  let x_129 : vec3<f32> = u_xlat3;
  u_xlat0.x = dot(x_128, x_129);
  let x_133 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_133);
  let x_137 : f32 = u_xlat0.z;
  let x_139 : f32 = u_xlat18;
  let x_142 : f32 = u_xlat0.x;
  u_xlat0.x = ((-(x_137) * x_139) + x_142);
  let x_147 : f32 = x_14.unity_ShadowFadeCenterAndType.w;
  let x_149 : f32 = u_xlat0.x;
  let x_152 : f32 = u_xlat2.z;
  u_xlat0.x = ((x_147 * x_149) + x_152);
  let x_156 : f32 = u_xlat0.x;
  let x_159 : f32 = x_14.x_LightShadowData.z;
  let x_162 : f32 = x_14.x_LightShadowData.w;
  u_xlat0.x = ((x_156 * x_159) + x_162);
  let x_166 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_166, 0.0f, 1.0f);
  let x_171 : vec4<f32> = u_xlat2;
  let x_175 : vec4<f32> = x_14.x_LightPos;
  u_xlat6 = (vec3<f32>(x_171.x, x_171.y, x_171.w) + -(vec3<f32>(x_175.x, x_175.y, x_175.z)));
  let x_179 : vec4<f32> = u_xlat2;
  let x_183 : vec3<f32> = x_14.x_WorldSpaceCameraPos;
  let x_185 : vec3<f32> = (vec3<f32>(x_179.x, x_179.y, x_179.w) + -(x_183));
  let x_186 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_185.x, x_185.y, x_185.z, x_186.w);
  let x_190 : f32 = u_xlat6.y;
  let x_193 : f32 = u_xlat6.x;
  u_xlat13 = max(abs(x_190), abs(x_193));
  let x_197 : f32 = u_xlat6.z;
  let x_199 : f32 = u_xlat13;
  u_xlat13 = max(abs(x_197), x_199);
  let x_201 : f32 = u_xlat13;
  let x_204 : f32 = x_14.x_LightProjectionParams.z;
  u_xlat13 = (x_201 + -(x_204));
  let x_207 : f32 = u_xlat13;
  u_xlat13 = max(x_207, 0.00001f);
  let x_210 : f32 = u_xlat13;
  let x_212 : f32 = x_14.x_LightProjectionParams.w;
  u_xlat13 = (x_210 * x_212);
  let x_215 : f32 = x_14.x_LightProjectionParams.y;
  let x_216 : f32 = u_xlat13;
  u_xlat13 = (x_215 / x_216);
  let x_218 : f32 = u_xlat13;
  let x_220 : f32 = x_14.x_LightProjectionParams.x;
  u_xlat13 = (x_218 + -(x_220));
  let x_223 : f32 = u_xlat13;
  u_xlat13 = (-(x_223) + 1.0f);
  let x_228 : vec3<f32> = u_xlat6;
  let x_229 : f32 = u_xlat13;
  txVec0 = vec4<f32>(x_228.x, x_228.y, x_228.z, x_229);
  let x_242 : vec4<f32> = txVec0;
  let x_244 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_242.xyz, x_242.w);
  u_xlat13 = x_244;
  let x_247 : f32 = x_14.x_LightShadowData.x;
  u_xlat19 = (-(x_247) + 1.0f);
  let x_250 : f32 = u_xlat13;
  let x_251 : f32 = u_xlat19;
  let x_254 : f32 = x_14.x_LightShadowData.x;
  u_xlat13 = ((x_250 * x_251) + x_254);
  let x_256 : f32 = u_xlat13;
  u_xlat19 = (-(x_256) + 1.0f);
  let x_260 : f32 = u_xlat0.x;
  let x_261 : f32 = u_xlat19;
  let x_263 : f32 = u_xlat13;
  u_xlat0.x = ((x_260 * x_261) + x_263);
  let x_266 : vec3<f32> = u_xlat6;
  let x_267 : vec3<f32> = u_xlat6;
  u_xlat13 = dot(x_266, x_267);
  let x_269 : f32 = u_xlat13;
  let x_271 : f32 = x_14.x_LightPos.w;
  u_xlat19 = (x_269 * x_271);
  let x_273 : f32 = u_xlat13;
  u_xlat13 = inverseSqrt(x_273);
  let x_280 : f32 = u_xlat19;
  let x_282 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_280, x_280));
  u_xlat19 = x_282.x;
  let x_285 : f32 = u_xlat0.x;
  let x_286 : f32 = u_xlat19;
  u_xlat0.x = (x_285 * x_286);
  let x_289 : vec3<f32> = u_xlat0;
  let x_293 : vec4<f32> = x_14.x_LightColor;
  u_xlat3 = (vec3<f32>(x_289.x, x_289.x, x_289.x) * vec3<f32>(x_293.x, x_293.y, x_293.z));
  let x_296 : vec4<f32> = u_xlat2;
  let x_298 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(x_296.x, x_296.y, x_296.z), vec3<f32>(x_298.x, x_298.y, x_298.z));
  let x_303 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_303);
  let x_306 : vec3<f32> = u_xlat0;
  let x_308 : vec4<f32> = u_xlat2;
  let x_310 : vec3<f32> = (vec3<f32>(x_306.x, x_306.x, x_306.x) * vec3<f32>(x_308.x, x_308.y, x_308.z));
  let x_311 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_310.x, x_310.y, x_310.z, x_311.w);
  let x_314 : vec3<f32> = u_xlat6;
  let x_316 : f32 = u_xlat13;
  let x_319 : vec4<f32> = u_xlat2;
  let x_322 : vec3<f32> = ((-(x_314) * vec3<f32>(x_316, x_316, x_316)) + -(vec3<f32>(x_319.x, x_319.y, x_319.z)));
  let x_323 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_322.x, x_322.y, x_322.z, x_323.w);
  let x_325 : vec3<f32> = u_xlat6;
  let x_326 : f32 = u_xlat13;
  u_xlat0 = (x_325 * vec3<f32>(x_326, x_326, x_326));
  let x_329 : vec4<f32> = u_xlat4;
  let x_331 : vec4<f32> = u_xlat4;
  u_xlat18 = dot(vec3<f32>(x_329.x, x_329.y, x_329.z), vec3<f32>(x_331.x, x_331.y, x_331.z));
  let x_334 : f32 = u_xlat18;
  u_xlat18 = max(x_334, 0.001f);
  let x_337 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_337);
  let x_339 : f32 = u_xlat18;
  let x_341 : vec4<f32> = u_xlat4;
  let x_343 : vec3<f32> = (vec3<f32>(x_339, x_339, x_339) * vec3<f32>(x_341.x, x_341.y, x_341.z));
  let x_344 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_343.x, x_343.y, x_343.z, x_344.w);
  let x_352 : vec4<f32> = u_xlat1;
  let x_354 : vec4<f32> = textureSample(x_CameraGBufferTexture2, sampler_CameraGBufferTexture2, vec2<f32>(x_352.x, x_352.y));
  u_xlat5 = vec3<f32>(x_354.x, x_354.y, x_354.z);
  let x_356 : vec3<f32> = u_xlat5;
  u_xlat5 = ((x_356 * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_363 : vec3<f32> = u_xlat5;
  let x_364 : vec3<f32> = u_xlat5;
  u_xlat18 = dot(x_363, x_364);
  let x_366 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_366);
  let x_368 : f32 = u_xlat18;
  let x_370 : vec3<f32> = u_xlat5;
  u_xlat5 = (vec3<f32>(x_368, x_368, x_368) * x_370);
  let x_372 : vec3<f32> = u_xlat5;
  let x_373 : vec4<f32> = u_xlat4;
  u_xlat18 = dot(x_372, vec3<f32>(x_373.x, x_373.y, x_373.z));
  let x_376 : f32 = u_xlat18;
  u_xlat18 = clamp(x_376, 0.0f, 1.0f);
  let x_378 : vec3<f32> = u_xlat0;
  let x_380 : vec4<f32> = u_xlat4;
  u_xlat13 = dot(-(x_378), vec3<f32>(x_380.x, x_380.y, x_380.z));
  let x_383 : f32 = u_xlat13;
  u_xlat13 = clamp(x_383, 0.0f, 1.0f);
  let x_385 : vec3<f32> = u_xlat5;
  let x_386 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_385, -(x_386));
  let x_391 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_391, 0.0f, 1.0f);
  let x_394 : vec3<f32> = u_xlat5;
  let x_395 : vec4<f32> = u_xlat2;
  u_xlat6.x = dot(x_394, -(vec3<f32>(x_395.x, x_395.y, x_395.z)));
  let x_405 : vec4<f32> = u_xlat1;
  let x_407 : vec4<f32> = textureSample(x_CameraGBufferTexture1, sampler_CameraGBufferTexture1, vec2<f32>(x_405.x, x_405.y));
  u_xlat2 = x_407;
  let x_413 : vec4<f32> = u_xlat1;
  let x_415 : vec4<f32> = textureSample(x_CameraGBufferTexture0, sampler_CameraGBufferTexture0, vec2<f32>(x_413.x, x_413.y));
  let x_416 : vec3<f32> = vec3<f32>(x_415.x, x_415.y, x_415.z);
  let x_417 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_416.x, x_416.y, x_417.z, x_416.z);
  let x_419 : vec4<f32> = u_xlat2;
  u_xlat4 = (-(vec4<f32>(x_419.w, x_419.x, x_419.y, x_419.z)) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_426 : f32 = u_xlat4.x;
  let x_428 : f32 = u_xlat4.x;
  u_xlat12 = (x_426 * x_428);
  let x_430 : f32 = u_xlat12;
  u_xlat12 = max(x_430, 0.002f);
  let x_434 : f32 = u_xlat12;
  let x_435 : f32 = u_xlat12;
  u_xlat20 = (x_434 * x_435);
  let x_438 : f32 = u_xlat18;
  let x_439 : f32 = u_xlat20;
  let x_441 : f32 = u_xlat18;
  u_xlat21 = ((x_438 * x_439) + -(x_441));
  let x_444 : f32 = u_xlat21;
  let x_445 : f32 = u_xlat18;
  u_xlat18 = ((x_444 * x_445) + 1.0f);
  let x_448 : f32 = u_xlat18;
  let x_449 : f32 = u_xlat18;
  u_xlat18 = ((x_448 * x_449) + 0.0000001f);
  let x_453 : f32 = u_xlat20;
  u_xlat20 = (x_453 * 0.318309873f);
  let x_456 : f32 = u_xlat20;
  let x_457 : f32 = u_xlat18;
  u_xlat18 = (x_456 / x_457);
  let x_459 : f32 = u_xlat12;
  u_xlat20 = (-(x_459) + 1.0f);
  let x_463 : f32 = u_xlat6.x;
  let x_465 : f32 = u_xlat20;
  let x_467 : f32 = u_xlat12;
  u_xlat21 = ((abs(x_463) * x_465) + x_467);
  let x_470 : f32 = u_xlat0.x;
  let x_471 : f32 = u_xlat20;
  let x_473 : f32 = u_xlat12;
  u_xlat12 = ((x_470 * x_471) + x_473);
  let x_475 : f32 = u_xlat12;
  let x_477 : f32 = u_xlat6.x;
  u_xlat12 = (x_475 * abs(x_477));
  let x_481 : f32 = u_xlat6.x;
  u_xlat6.x = (-(abs(x_481)) + 1.0f);
  let x_487 : f32 = u_xlat0.x;
  let x_488 : f32 = u_xlat21;
  let x_490 : f32 = u_xlat12;
  u_xlat12 = ((x_487 * x_488) + x_490);
  let x_492 : f32 = u_xlat12;
  u_xlat12 = (x_492 + 0.00001f);
  let x_495 : f32 = u_xlat12;
  u_xlat12 = (0.5f / x_495);
  let x_497 : f32 = u_xlat18;
  let x_498 : f32 = u_xlat12;
  u_xlat12 = (x_497 * x_498);
  let x_501 : f32 = u_xlat0.x;
  let x_502 : f32 = u_xlat12;
  u_xlat12 = (x_501 * x_502);
  let x_504 : f32 = u_xlat12;
  u_xlat12 = (x_504 * 3.141592741f);
  let x_507 : f32 = u_xlat12;
  u_xlat12 = max(x_507, 0.0f);
  let x_509 : vec4<f32> = u_xlat2;
  let x_511 : vec4<f32> = u_xlat2;
  u_xlat18 = dot(vec3<f32>(x_509.x, x_509.y, x_509.z), vec3<f32>(x_511.x, x_511.y, x_511.z));
  let x_517 : f32 = u_xlat18;
  u_xlatb18 = !((x_517 == 0.0f));
  let x_519 : bool = u_xlatb18;
  u_xlat18 = select(0.0f, 1.0f, x_519);
  let x_521 : f32 = u_xlat18;
  let x_522 : f32 = u_xlat12;
  u_xlat12 = (x_521 * x_522);
  let x_524 : vec3<f32> = u_xlat3;
  let x_525 : f32 = u_xlat12;
  u_xlat5 = (x_524 * vec3<f32>(x_525, x_525, x_525));
  let x_528 : f32 = u_xlat13;
  u_xlat12 = (-(x_528) + 1.0f);
  let x_531 : f32 = u_xlat13;
  let x_532 : f32 = u_xlat13;
  u_xlat18 = (x_531 * x_532);
  let x_534 : f32 = u_xlat18;
  let x_536 : vec4<f32> = u_xlat4;
  u_xlat18 = dot(vec2<f32>(x_534, x_534), vec2<f32>(x_536.x, x_536.x));
  let x_539 : f32 = u_xlat18;
  u_xlat18 = (x_539 + -0.5f);
  let x_542 : f32 = u_xlat12;
  let x_543 : f32 = u_xlat12;
  u_xlat13 = (x_542 * x_543);
  let x_545 : f32 = u_xlat13;
  let x_546 : f32 = u_xlat13;
  u_xlat13 = (x_545 * x_546);
  let x_548 : f32 = u_xlat12;
  let x_549 : f32 = u_xlat13;
  u_xlat12 = (x_548 * x_549);
  let x_551 : vec4<f32> = u_xlat4;
  let x_553 : f32 = u_xlat12;
  let x_556 : vec4<f32> = u_xlat2;
  let x_558 : vec3<f32> = ((vec3<f32>(x_551.y, x_551.z, x_551.w) * vec3<f32>(x_553, x_553, x_553)) + vec3<f32>(x_556.x, x_556.y, x_556.z));
  let x_559 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_558.x, x_558.y, x_558.z, x_559.w);
  let x_561 : vec4<f32> = u_xlat2;
  let x_563 : vec3<f32> = u_xlat5;
  let x_564 : vec3<f32> = (vec3<f32>(x_561.x, x_561.y, x_561.z) * x_563);
  let x_565 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_564.x, x_564.y, x_564.z, x_565.w);
  let x_568 : f32 = u_xlat6.x;
  let x_570 : f32 = u_xlat6.x;
  u_xlat12 = (x_568 * x_570);
  let x_572 : f32 = u_xlat12;
  let x_573 : f32 = u_xlat12;
  u_xlat12 = (x_572 * x_573);
  let x_576 : f32 = u_xlat6.x;
  let x_577 : f32 = u_xlat12;
  u_xlat6.x = (x_576 * x_577);
  let x_580 : f32 = u_xlat18;
  let x_582 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_580 * x_582) + 1.0f);
  let x_587 : f32 = u_xlat0.x;
  u_xlat12 = (-(x_587) + 1.0f);
  let x_590 : f32 = u_xlat12;
  let x_591 : f32 = u_xlat12;
  u_xlat13 = (x_590 * x_591);
  let x_593 : f32 = u_xlat13;
  let x_594 : f32 = u_xlat13;
  u_xlat13 = (x_593 * x_594);
  let x_596 : f32 = u_xlat12;
  let x_597 : f32 = u_xlat13;
  u_xlat12 = (x_596 * x_597);
  let x_599 : f32 = u_xlat18;
  let x_600 : f32 = u_xlat12;
  u_xlat12 = ((x_599 * x_600) + 1.0f);
  let x_604 : f32 = u_xlat6.x;
  let x_605 : f32 = u_xlat12;
  u_xlat6.x = (x_604 * x_605);
  let x_609 : f32 = u_xlat0.x;
  let x_611 : f32 = u_xlat6.x;
  u_xlat0.x = (x_609 * x_611);
  let x_614 : vec3<f32> = u_xlat0;
  let x_616 : vec3<f32> = u_xlat3;
  u_xlat0 = (vec3<f32>(x_614.x, x_614.x, x_614.x) * x_616);
  let x_620 : vec4<f32> = u_xlat1;
  let x_622 : vec3<f32> = u_xlat0;
  let x_624 : vec4<f32> = u_xlat2;
  let x_626 : vec3<f32> = ((vec3<f32>(x_620.x, x_620.y, x_620.w) * x_622) + vec3<f32>(x_624.x, x_624.y, x_624.z));
  let x_627 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_626.x, x_626.y, x_626.z, x_627.w);
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

