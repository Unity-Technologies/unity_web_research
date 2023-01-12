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
  var u_xlat0 : vec3<f32>;
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
  let x_181 : f32 = u_xlat6.y;
  let x_184 : f32 = u_xlat6.x;
  u_xlat13 = max(abs(x_181), abs(x_184));
  let x_188 : f32 = u_xlat6.z;
  let x_190 : f32 = u_xlat13;
  u_xlat13 = max(abs(x_188), x_190);
  let x_192 : f32 = u_xlat13;
  let x_195 : f32 = x_14.x_LightProjectionParams.z;
  u_xlat13 = (x_192 + -(x_195));
  let x_198 : f32 = u_xlat13;
  u_xlat13 = max(x_198, 0.00001f);
  let x_201 : f32 = u_xlat13;
  let x_203 : f32 = x_14.x_LightProjectionParams.w;
  u_xlat13 = (x_201 * x_203);
  let x_206 : f32 = x_14.x_LightProjectionParams.y;
  let x_207 : f32 = u_xlat13;
  u_xlat13 = (x_206 / x_207);
  let x_209 : f32 = u_xlat13;
  let x_211 : f32 = x_14.x_LightProjectionParams.x;
  u_xlat13 = (x_209 + -(x_211));
  let x_214 : f32 = u_xlat13;
  u_xlat13 = (-(x_214) + 1.0f);
  let x_218 : vec3<f32> = u_xlat6;
  let x_219 : f32 = u_xlat13;
  txVec0 = vec4<f32>(x_218.x, x_218.y, x_218.z, x_219);
  let x_232 : vec4<f32> = txVec0;
  let x_234 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_232.xyz, x_232.w);
  u_xlat13 = x_234;
  let x_237 : f32 = x_14.x_LightShadowData.x;
  u_xlat19 = (-(x_237) + 1.0f);
  let x_240 : f32 = u_xlat13;
  let x_241 : f32 = u_xlat19;
  let x_244 : f32 = x_14.x_LightShadowData.x;
  u_xlat13 = ((x_240 * x_241) + x_244);
  let x_246 : f32 = u_xlat13;
  u_xlat19 = (-(x_246) + 1.0f);
  let x_250 : f32 = u_xlat0.x;
  let x_251 : f32 = u_xlat19;
  let x_253 : f32 = u_xlat13;
  u_xlat0.x = ((x_250 * x_251) + x_253);
  let x_256 : vec3<f32> = u_xlat6;
  let x_257 : vec3<f32> = u_xlat6;
  u_xlat13 = dot(x_256, x_257);
  let x_259 : f32 = u_xlat13;
  let x_261 : f32 = x_14.x_LightPos.w;
  u_xlat19 = (x_259 * x_261);
  let x_263 : f32 = u_xlat13;
  u_xlat13 = inverseSqrt(x_263);
  let x_270 : f32 = u_xlat19;
  let x_272 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_270, x_270));
  u_xlat19 = x_272.x;
  let x_275 : f32 = u_xlat0.x;
  let x_276 : f32 = u_xlat19;
  u_xlat0.x = (x_275 * x_276);
  let x_279 : vec4<f32> = u_xlat2;
  let x_283 : vec4<f32> = x_14.unity_WorldToLight[1i];
  u_xlat3 = (vec3<f32>(x_279.y, x_279.y, x_279.y) * vec3<f32>(x_283.x, x_283.y, x_283.z));
  let x_287 : vec4<f32> = x_14.unity_WorldToLight[0i];
  let x_289 : vec4<f32> = u_xlat2;
  let x_292 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_287.x, x_287.y, x_287.z) * vec3<f32>(x_289.x, x_289.x, x_289.x)) + x_292);
  let x_295 : vec4<f32> = x_14.unity_WorldToLight[2i];
  let x_297 : vec4<f32> = u_xlat2;
  let x_300 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_295.x, x_295.y, x_295.z) * vec3<f32>(x_297.w, x_297.w, x_297.w)) + x_300);
  let x_302 : vec4<f32> = u_xlat2;
  let x_306 : vec3<f32> = x_14.x_WorldSpaceCameraPos;
  let x_308 : vec3<f32> = (vec3<f32>(x_302.x, x_302.y, x_302.w) + -(x_306));
  let x_309 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_308.x, x_308.y, x_308.z, x_309.w);
  let x_311 : vec3<f32> = u_xlat3;
  let x_313 : vec4<f32> = x_14.unity_WorldToLight[3i];
  u_xlat3 = (x_311 + vec3<f32>(x_313.x, x_313.y, x_313.z));
  let x_324 : vec3<f32> = u_xlat3;
  let x_326 : vec4<f32> = textureSampleBias(x_LightTexture0, sampler_LightTexture0, x_324, -8.0f);
  u_xlat19 = x_326.w;
  let x_329 : f32 = u_xlat0.x;
  let x_330 : f32 = u_xlat19;
  u_xlat0.x = (x_329 * x_330);
  let x_333 : vec3<f32> = u_xlat0;
  let x_337 : vec4<f32> = x_14.x_LightColor;
  u_xlat3 = (vec3<f32>(x_333.x, x_333.x, x_333.x) * vec3<f32>(x_337.x, x_337.y, x_337.z));
  let x_340 : vec4<f32> = u_xlat2;
  let x_342 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(x_340.x, x_340.y, x_340.z), vec3<f32>(x_342.x, x_342.y, x_342.z));
  let x_347 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_347);
  let x_350 : vec3<f32> = u_xlat0;
  let x_352 : vec4<f32> = u_xlat2;
  let x_354 : vec3<f32> = (vec3<f32>(x_350.x, x_350.x, x_350.x) * vec3<f32>(x_352.x, x_352.y, x_352.z));
  let x_355 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_354.x, x_354.y, x_354.z, x_355.w);
  let x_358 : vec3<f32> = u_xlat6;
  let x_360 : f32 = u_xlat13;
  let x_363 : vec4<f32> = u_xlat2;
  let x_366 : vec3<f32> = ((-(x_358) * vec3<f32>(x_360, x_360, x_360)) + -(vec3<f32>(x_363.x, x_363.y, x_363.z)));
  let x_367 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_366.x, x_366.y, x_366.z, x_367.w);
  let x_369 : vec3<f32> = u_xlat6;
  let x_370 : f32 = u_xlat13;
  u_xlat0 = (x_369 * vec3<f32>(x_370, x_370, x_370));
  let x_373 : vec4<f32> = u_xlat4;
  let x_375 : vec4<f32> = u_xlat4;
  u_xlat18 = dot(vec3<f32>(x_373.x, x_373.y, x_373.z), vec3<f32>(x_375.x, x_375.y, x_375.z));
  let x_378 : f32 = u_xlat18;
  u_xlat18 = max(x_378, 0.001f);
  let x_381 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_381);
  let x_383 : f32 = u_xlat18;
  let x_385 : vec4<f32> = u_xlat4;
  let x_387 : vec3<f32> = (vec3<f32>(x_383, x_383, x_383) * vec3<f32>(x_385.x, x_385.y, x_385.z));
  let x_388 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_387.x, x_387.y, x_387.z, x_388.w);
  let x_396 : vec4<f32> = u_xlat1;
  let x_398 : vec4<f32> = textureSample(x_CameraGBufferTexture2, sampler_CameraGBufferTexture2, vec2<f32>(x_396.x, x_396.y));
  u_xlat5 = vec3<f32>(x_398.x, x_398.y, x_398.z);
  let x_400 : vec3<f32> = u_xlat5;
  u_xlat5 = ((x_400 * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_407 : vec3<f32> = u_xlat5;
  let x_408 : vec3<f32> = u_xlat5;
  u_xlat18 = dot(x_407, x_408);
  let x_410 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_410);
  let x_412 : f32 = u_xlat18;
  let x_414 : vec3<f32> = u_xlat5;
  u_xlat5 = (vec3<f32>(x_412, x_412, x_412) * x_414);
  let x_416 : vec3<f32> = u_xlat5;
  let x_417 : vec4<f32> = u_xlat4;
  u_xlat18 = dot(x_416, vec3<f32>(x_417.x, x_417.y, x_417.z));
  let x_420 : f32 = u_xlat18;
  u_xlat18 = clamp(x_420, 0.0f, 1.0f);
  let x_422 : vec3<f32> = u_xlat0;
  let x_424 : vec4<f32> = u_xlat4;
  u_xlat13 = dot(-(x_422), vec3<f32>(x_424.x, x_424.y, x_424.z));
  let x_427 : f32 = u_xlat13;
  u_xlat13 = clamp(x_427, 0.0f, 1.0f);
  let x_429 : vec3<f32> = u_xlat5;
  let x_430 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_429, -(x_430));
  let x_435 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_435, 0.0f, 1.0f);
  let x_438 : vec3<f32> = u_xlat5;
  let x_439 : vec4<f32> = u_xlat2;
  u_xlat6.x = dot(x_438, -(vec3<f32>(x_439.x, x_439.y, x_439.z)));
  let x_449 : vec4<f32> = u_xlat1;
  let x_451 : vec4<f32> = textureSample(x_CameraGBufferTexture1, sampler_CameraGBufferTexture1, vec2<f32>(x_449.x, x_449.y));
  u_xlat2 = x_451;
  let x_457 : vec4<f32> = u_xlat1;
  let x_459 : vec4<f32> = textureSample(x_CameraGBufferTexture0, sampler_CameraGBufferTexture0, vec2<f32>(x_457.x, x_457.y));
  let x_460 : vec3<f32> = vec3<f32>(x_459.x, x_459.y, x_459.z);
  let x_461 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_460.x, x_460.y, x_461.z, x_460.z);
  let x_463 : vec4<f32> = u_xlat2;
  u_xlat4 = (-(vec4<f32>(x_463.w, x_463.x, x_463.y, x_463.z)) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_470 : f32 = u_xlat4.x;
  let x_472 : f32 = u_xlat4.x;
  u_xlat12 = (x_470 * x_472);
  let x_474 : f32 = u_xlat12;
  u_xlat12 = max(x_474, 0.002f);
  let x_478 : f32 = u_xlat12;
  let x_479 : f32 = u_xlat12;
  u_xlat20 = (x_478 * x_479);
  let x_482 : f32 = u_xlat18;
  let x_483 : f32 = u_xlat20;
  let x_485 : f32 = u_xlat18;
  u_xlat21 = ((x_482 * x_483) + -(x_485));
  let x_488 : f32 = u_xlat21;
  let x_489 : f32 = u_xlat18;
  u_xlat18 = ((x_488 * x_489) + 1.0f);
  let x_492 : f32 = u_xlat18;
  let x_493 : f32 = u_xlat18;
  u_xlat18 = ((x_492 * x_493) + 0.0000001f);
  let x_497 : f32 = u_xlat20;
  u_xlat20 = (x_497 * 0.318309873f);
  let x_500 : f32 = u_xlat20;
  let x_501 : f32 = u_xlat18;
  u_xlat18 = (x_500 / x_501);
  let x_503 : f32 = u_xlat12;
  u_xlat20 = (-(x_503) + 1.0f);
  let x_507 : f32 = u_xlat6.x;
  let x_509 : f32 = u_xlat20;
  let x_511 : f32 = u_xlat12;
  u_xlat21 = ((abs(x_507) * x_509) + x_511);
  let x_514 : f32 = u_xlat0.x;
  let x_515 : f32 = u_xlat20;
  let x_517 : f32 = u_xlat12;
  u_xlat12 = ((x_514 * x_515) + x_517);
  let x_519 : f32 = u_xlat12;
  let x_521 : f32 = u_xlat6.x;
  u_xlat12 = (x_519 * abs(x_521));
  let x_525 : f32 = u_xlat6.x;
  u_xlat6.x = (-(abs(x_525)) + 1.0f);
  let x_531 : f32 = u_xlat0.x;
  let x_532 : f32 = u_xlat21;
  let x_534 : f32 = u_xlat12;
  u_xlat12 = ((x_531 * x_532) + x_534);
  let x_536 : f32 = u_xlat12;
  u_xlat12 = (x_536 + 0.00001f);
  let x_539 : f32 = u_xlat12;
  u_xlat12 = (0.5f / x_539);
  let x_541 : f32 = u_xlat18;
  let x_542 : f32 = u_xlat12;
  u_xlat12 = (x_541 * x_542);
  let x_545 : f32 = u_xlat0.x;
  let x_546 : f32 = u_xlat12;
  u_xlat12 = (x_545 * x_546);
  let x_548 : f32 = u_xlat12;
  u_xlat12 = (x_548 * 3.141592741f);
  let x_551 : f32 = u_xlat12;
  u_xlat12 = max(x_551, 0.0f);
  let x_553 : vec4<f32> = u_xlat2;
  let x_555 : vec4<f32> = u_xlat2;
  u_xlat18 = dot(vec3<f32>(x_553.x, x_553.y, x_553.z), vec3<f32>(x_555.x, x_555.y, x_555.z));
  let x_561 : f32 = u_xlat18;
  u_xlatb18 = !((x_561 == 0.0f));
  let x_563 : bool = u_xlatb18;
  u_xlat18 = select(0.0f, 1.0f, x_563);
  let x_565 : f32 = u_xlat18;
  let x_566 : f32 = u_xlat12;
  u_xlat12 = (x_565 * x_566);
  let x_568 : vec3<f32> = u_xlat3;
  let x_569 : f32 = u_xlat12;
  u_xlat5 = (x_568 * vec3<f32>(x_569, x_569, x_569));
  let x_572 : f32 = u_xlat13;
  u_xlat12 = (-(x_572) + 1.0f);
  let x_575 : f32 = u_xlat13;
  let x_576 : f32 = u_xlat13;
  u_xlat18 = (x_575 * x_576);
  let x_578 : f32 = u_xlat18;
  let x_580 : vec4<f32> = u_xlat4;
  u_xlat18 = dot(vec2<f32>(x_578, x_578), vec2<f32>(x_580.x, x_580.x));
  let x_583 : f32 = u_xlat18;
  u_xlat18 = (x_583 + -0.5f);
  let x_586 : f32 = u_xlat12;
  let x_587 : f32 = u_xlat12;
  u_xlat13 = (x_586 * x_587);
  let x_589 : f32 = u_xlat13;
  let x_590 : f32 = u_xlat13;
  u_xlat13 = (x_589 * x_590);
  let x_592 : f32 = u_xlat12;
  let x_593 : f32 = u_xlat13;
  u_xlat12 = (x_592 * x_593);
  let x_595 : vec4<f32> = u_xlat4;
  let x_597 : f32 = u_xlat12;
  let x_600 : vec4<f32> = u_xlat2;
  let x_602 : vec3<f32> = ((vec3<f32>(x_595.y, x_595.z, x_595.w) * vec3<f32>(x_597, x_597, x_597)) + vec3<f32>(x_600.x, x_600.y, x_600.z));
  let x_603 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_602.x, x_602.y, x_602.z, x_603.w);
  let x_605 : vec4<f32> = u_xlat2;
  let x_607 : vec3<f32> = u_xlat5;
  let x_608 : vec3<f32> = (vec3<f32>(x_605.x, x_605.y, x_605.z) * x_607);
  let x_609 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_608.x, x_608.y, x_608.z, x_609.w);
  let x_612 : f32 = u_xlat6.x;
  let x_614 : f32 = u_xlat6.x;
  u_xlat12 = (x_612 * x_614);
  let x_616 : f32 = u_xlat12;
  let x_617 : f32 = u_xlat12;
  u_xlat12 = (x_616 * x_617);
  let x_620 : f32 = u_xlat6.x;
  let x_621 : f32 = u_xlat12;
  u_xlat6.x = (x_620 * x_621);
  let x_624 : f32 = u_xlat18;
  let x_626 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_624 * x_626) + 1.0f);
  let x_631 : f32 = u_xlat0.x;
  u_xlat12 = (-(x_631) + 1.0f);
  let x_634 : f32 = u_xlat12;
  let x_635 : f32 = u_xlat12;
  u_xlat13 = (x_634 * x_635);
  let x_637 : f32 = u_xlat13;
  let x_638 : f32 = u_xlat13;
  u_xlat13 = (x_637 * x_638);
  let x_640 : f32 = u_xlat12;
  let x_641 : f32 = u_xlat13;
  u_xlat12 = (x_640 * x_641);
  let x_643 : f32 = u_xlat18;
  let x_644 : f32 = u_xlat12;
  u_xlat12 = ((x_643 * x_644) + 1.0f);
  let x_648 : f32 = u_xlat6.x;
  let x_649 : f32 = u_xlat12;
  u_xlat6.x = (x_648 * x_649);
  let x_653 : f32 = u_xlat0.x;
  let x_655 : f32 = u_xlat6.x;
  u_xlat0.x = (x_653 * x_655);
  let x_658 : vec3<f32> = u_xlat0;
  let x_660 : vec3<f32> = u_xlat3;
  u_xlat0 = (vec3<f32>(x_658.x, x_658.x, x_658.x) * x_660);
  let x_664 : vec4<f32> = u_xlat1;
  let x_666 : vec3<f32> = u_xlat0;
  let x_668 : vec4<f32> = u_xlat2;
  let x_670 : vec3<f32> = ((vec3<f32>(x_664.x, x_664.y, x_664.w) * x_666) + vec3<f32>(x_668.x, x_668.y, x_668.z));
  let x_671 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_670.x, x_670.y, x_670.z, x_671.w);
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

