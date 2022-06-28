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

var<private> u_xlat0 : vec4<f32>;

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
  let x_231 : vec3<f32> = u_xlat6;
  let x_232 : f32 = u_xlat13;
  txVec0 = vec4<f32>(x_231.x, x_231.y, x_231.z, x_232);
  let x_245 : vec4<f32> = txVec0;
  let x_247 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_245.xyz, x_245.w);
  u_xlat13 = x_247;
  let x_250 : f32 = x_14.x_LightShadowData.x;
  u_xlat19 = (-(x_250) + 1.0f);
  let x_253 : f32 = u_xlat13;
  let x_254 : f32 = u_xlat19;
  let x_257 : f32 = x_14.x_LightShadowData.x;
  u_xlat13 = ((x_253 * x_254) + x_257);
  let x_259 : f32 = u_xlat13;
  u_xlat19 = (-(x_259) + 1.0f);
  let x_263 : f32 = u_xlat0.x;
  let x_264 : f32 = u_xlat19;
  let x_266 : f32 = u_xlat13;
  u_xlat0.x = ((x_263 * x_264) + x_266);
  let x_269 : vec3<f32> = u_xlat6;
  let x_270 : vec3<f32> = u_xlat6;
  u_xlat13 = dot(x_269, x_270);
  let x_272 : f32 = u_xlat13;
  let x_274 : f32 = x_14.x_LightPos.w;
  u_xlat19 = (x_272 * x_274);
  let x_276 : f32 = u_xlat13;
  u_xlat13 = inverseSqrt(x_276);
  let x_283 : f32 = u_xlat19;
  let x_285 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_283, x_283));
  u_xlat19 = x_285.x;
  let x_288 : f32 = u_xlat0.x;
  let x_289 : f32 = u_xlat19;
  u_xlat0.x = (x_288 * x_289);
  let x_292 : vec4<f32> = u_xlat0;
  let x_296 : vec4<f32> = x_14.x_LightColor;
  u_xlat3 = (vec3<f32>(x_292.x, x_292.x, x_292.x) * vec3<f32>(x_296.x, x_296.y, x_296.z));
  let x_299 : vec4<f32> = u_xlat2;
  let x_301 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(x_299.x, x_299.y, x_299.z), vec3<f32>(x_301.x, x_301.y, x_301.z));
  let x_306 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_306);
  let x_309 : vec4<f32> = u_xlat0;
  let x_311 : vec4<f32> = u_xlat2;
  let x_313 : vec3<f32> = (vec3<f32>(x_309.x, x_309.x, x_309.x) * vec3<f32>(x_311.x, x_311.y, x_311.z));
  let x_314 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_313.x, x_313.y, x_313.z, x_314.w);
  let x_317 : vec3<f32> = u_xlat6;
  let x_319 : f32 = u_xlat13;
  let x_322 : vec4<f32> = u_xlat2;
  let x_325 : vec3<f32> = ((-(x_317) * vec3<f32>(x_319, x_319, x_319)) + -(vec3<f32>(x_322.x, x_322.y, x_322.z)));
  let x_326 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_325.x, x_325.y, x_325.z, x_326.w);
  let x_328 : vec3<f32> = u_xlat6;
  let x_329 : f32 = u_xlat13;
  let x_331 : vec3<f32> = (x_328 * vec3<f32>(x_329, x_329, x_329));
  let x_332 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_331.x, x_331.y, x_331.z, x_332.w);
  let x_334 : vec4<f32> = u_xlat4;
  let x_336 : vec4<f32> = u_xlat4;
  u_xlat18 = dot(vec3<f32>(x_334.x, x_334.y, x_334.z), vec3<f32>(x_336.x, x_336.y, x_336.z));
  let x_339 : f32 = u_xlat18;
  u_xlat18 = max(x_339, 0.001f);
  let x_342 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_342);
  let x_344 : f32 = u_xlat18;
  let x_346 : vec4<f32> = u_xlat4;
  let x_348 : vec3<f32> = (vec3<f32>(x_344, x_344, x_344) * vec3<f32>(x_346.x, x_346.y, x_346.z));
  let x_349 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_348.x, x_348.y, x_348.z, x_349.w);
  let x_357 : vec4<f32> = u_xlat1;
  let x_359 : vec4<f32> = textureSample(x_CameraGBufferTexture2, sampler_CameraGBufferTexture2, vec2<f32>(x_357.x, x_357.y));
  u_xlat5 = vec3<f32>(x_359.x, x_359.y, x_359.z);
  let x_361 : vec3<f32> = u_xlat5;
  u_xlat5 = ((x_361 * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_368 : vec3<f32> = u_xlat5;
  let x_369 : vec3<f32> = u_xlat5;
  u_xlat18 = dot(x_368, x_369);
  let x_371 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_371);
  let x_373 : f32 = u_xlat18;
  let x_375 : vec3<f32> = u_xlat5;
  u_xlat5 = (vec3<f32>(x_373, x_373, x_373) * x_375);
  let x_377 : vec3<f32> = u_xlat5;
  let x_378 : vec4<f32> = u_xlat4;
  u_xlat18 = dot(x_377, vec3<f32>(x_378.x, x_378.y, x_378.z));
  let x_381 : f32 = u_xlat18;
  u_xlat18 = clamp(x_381, 0.0f, 1.0f);
  let x_383 : vec4<f32> = u_xlat0;
  let x_386 : vec4<f32> = u_xlat4;
  u_xlat13 = dot(-(vec3<f32>(x_383.x, x_383.y, x_383.z)), vec3<f32>(x_386.x, x_386.y, x_386.z));
  let x_389 : f32 = u_xlat13;
  u_xlat13 = clamp(x_389, 0.0f, 1.0f);
  let x_391 : vec3<f32> = u_xlat5;
  let x_392 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(x_391, -(vec3<f32>(x_392.x, x_392.y, x_392.z)));
  let x_398 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_398, 0.0f, 1.0f);
  let x_401 : vec3<f32> = u_xlat5;
  let x_402 : vec4<f32> = u_xlat2;
  u_xlat6.x = dot(x_401, -(vec3<f32>(x_402.x, x_402.y, x_402.z)));
  let x_412 : vec4<f32> = u_xlat1;
  let x_414 : vec4<f32> = textureSample(x_CameraGBufferTexture1, sampler_CameraGBufferTexture1, vec2<f32>(x_412.x, x_412.y));
  u_xlat2 = x_414;
  let x_420 : vec4<f32> = u_xlat1;
  let x_422 : vec4<f32> = textureSample(x_CameraGBufferTexture0, sampler_CameraGBufferTexture0, vec2<f32>(x_420.x, x_420.y));
  let x_423 : vec3<f32> = vec3<f32>(x_422.x, x_422.y, x_422.z);
  let x_424 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_423.x, x_423.y, x_424.z, x_423.z);
  let x_426 : vec4<f32> = u_xlat2;
  u_xlat4 = (-(vec4<f32>(x_426.w, x_426.x, x_426.y, x_426.z)) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_433 : f32 = u_xlat4.x;
  let x_435 : f32 = u_xlat4.x;
  u_xlat12 = (x_433 * x_435);
  let x_437 : f32 = u_xlat12;
  u_xlat12 = max(x_437, 0.002f);
  let x_441 : f32 = u_xlat12;
  let x_442 : f32 = u_xlat12;
  u_xlat20 = (x_441 * x_442);
  let x_445 : f32 = u_xlat18;
  let x_446 : f32 = u_xlat20;
  let x_448 : f32 = u_xlat18;
  u_xlat21 = ((x_445 * x_446) + -(x_448));
  let x_451 : f32 = u_xlat21;
  let x_452 : f32 = u_xlat18;
  u_xlat18 = ((x_451 * x_452) + 1.0f);
  let x_455 : f32 = u_xlat18;
  let x_456 : f32 = u_xlat18;
  u_xlat18 = ((x_455 * x_456) + 0.0000001f);
  let x_460 : f32 = u_xlat20;
  u_xlat20 = (x_460 * 0.318309873f);
  let x_463 : f32 = u_xlat20;
  let x_464 : f32 = u_xlat18;
  u_xlat18 = (x_463 / x_464);
  let x_466 : f32 = u_xlat12;
  u_xlat20 = (-(x_466) + 1.0f);
  let x_470 : f32 = u_xlat6.x;
  let x_472 : f32 = u_xlat20;
  let x_474 : f32 = u_xlat12;
  u_xlat21 = ((abs(x_470) * x_472) + x_474);
  let x_477 : f32 = u_xlat0.x;
  let x_478 : f32 = u_xlat20;
  let x_480 : f32 = u_xlat12;
  u_xlat12 = ((x_477 * x_478) + x_480);
  let x_482 : f32 = u_xlat12;
  let x_484 : f32 = u_xlat6.x;
  u_xlat12 = (x_482 * abs(x_484));
  let x_488 : f32 = u_xlat6.x;
  u_xlat6.x = (-(abs(x_488)) + 1.0f);
  let x_494 : f32 = u_xlat0.x;
  let x_495 : f32 = u_xlat21;
  let x_497 : f32 = u_xlat12;
  u_xlat12 = ((x_494 * x_495) + x_497);
  let x_499 : f32 = u_xlat12;
  u_xlat12 = (x_499 + 0.00001f);
  let x_502 : f32 = u_xlat12;
  u_xlat12 = (0.5f / x_502);
  let x_504 : f32 = u_xlat18;
  let x_505 : f32 = u_xlat12;
  u_xlat12 = (x_504 * x_505);
  let x_508 : f32 = u_xlat0.x;
  let x_509 : f32 = u_xlat12;
  u_xlat12 = (x_508 * x_509);
  let x_511 : f32 = u_xlat12;
  u_xlat12 = (x_511 * 3.141592741f);
  let x_514 : f32 = u_xlat12;
  u_xlat12 = max(x_514, 0.0f);
  let x_516 : vec4<f32> = u_xlat2;
  let x_518 : vec4<f32> = u_xlat2;
  u_xlat18 = dot(vec3<f32>(x_516.x, x_516.y, x_516.z), vec3<f32>(x_518.x, x_518.y, x_518.z));
  let x_524 : f32 = u_xlat18;
  u_xlatb18 = !((x_524 == 0.0f));
  let x_526 : bool = u_xlatb18;
  u_xlat18 = select(0.0f, 1.0f, x_526);
  let x_528 : f32 = u_xlat18;
  let x_529 : f32 = u_xlat12;
  u_xlat12 = (x_528 * x_529);
  let x_531 : vec3<f32> = u_xlat3;
  let x_532 : f32 = u_xlat12;
  u_xlat5 = (x_531 * vec3<f32>(x_532, x_532, x_532));
  let x_535 : f32 = u_xlat13;
  u_xlat12 = (-(x_535) + 1.0f);
  let x_538 : f32 = u_xlat13;
  let x_539 : f32 = u_xlat13;
  u_xlat18 = (x_538 * x_539);
  let x_541 : f32 = u_xlat18;
  let x_543 : vec4<f32> = u_xlat4;
  u_xlat18 = dot(vec2<f32>(x_541, x_541), vec2<f32>(x_543.x, x_543.x));
  let x_546 : f32 = u_xlat18;
  u_xlat18 = (x_546 + -0.5f);
  let x_549 : f32 = u_xlat12;
  let x_550 : f32 = u_xlat12;
  u_xlat13 = (x_549 * x_550);
  let x_552 : f32 = u_xlat13;
  let x_553 : f32 = u_xlat13;
  u_xlat13 = (x_552 * x_553);
  let x_555 : f32 = u_xlat12;
  let x_556 : f32 = u_xlat13;
  u_xlat12 = (x_555 * x_556);
  let x_558 : vec4<f32> = u_xlat4;
  let x_560 : f32 = u_xlat12;
  let x_563 : vec4<f32> = u_xlat2;
  let x_565 : vec3<f32> = ((vec3<f32>(x_558.y, x_558.z, x_558.w) * vec3<f32>(x_560, x_560, x_560)) + vec3<f32>(x_563.x, x_563.y, x_563.z));
  let x_566 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_565.x, x_565.y, x_565.z, x_566.w);
  let x_568 : vec4<f32> = u_xlat2;
  let x_570 : vec3<f32> = u_xlat5;
  let x_571 : vec3<f32> = (vec3<f32>(x_568.x, x_568.y, x_568.z) * x_570);
  let x_572 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_571.x, x_571.y, x_571.z, x_572.w);
  let x_575 : f32 = u_xlat6.x;
  let x_577 : f32 = u_xlat6.x;
  u_xlat12 = (x_575 * x_577);
  let x_579 : f32 = u_xlat12;
  let x_580 : f32 = u_xlat12;
  u_xlat12 = (x_579 * x_580);
  let x_583 : f32 = u_xlat6.x;
  let x_584 : f32 = u_xlat12;
  u_xlat6.x = (x_583 * x_584);
  let x_587 : f32 = u_xlat18;
  let x_589 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_587 * x_589) + 1.0f);
  let x_594 : f32 = u_xlat0.x;
  u_xlat12 = (-(x_594) + 1.0f);
  let x_597 : f32 = u_xlat12;
  let x_598 : f32 = u_xlat12;
  u_xlat13 = (x_597 * x_598);
  let x_600 : f32 = u_xlat13;
  let x_601 : f32 = u_xlat13;
  u_xlat13 = (x_600 * x_601);
  let x_603 : f32 = u_xlat12;
  let x_604 : f32 = u_xlat13;
  u_xlat12 = (x_603 * x_604);
  let x_606 : f32 = u_xlat18;
  let x_607 : f32 = u_xlat12;
  u_xlat12 = ((x_606 * x_607) + 1.0f);
  let x_611 : f32 = u_xlat6.x;
  let x_612 : f32 = u_xlat12;
  u_xlat6.x = (x_611 * x_612);
  let x_616 : f32 = u_xlat0.x;
  let x_618 : f32 = u_xlat6.x;
  u_xlat0.x = (x_616 * x_618);
  let x_621 : vec4<f32> = u_xlat0;
  let x_623 : vec3<f32> = u_xlat3;
  let x_624 : vec3<f32> = (vec3<f32>(x_621.x, x_621.x, x_621.x) * x_623);
  let x_625 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_624.x, x_624.y, x_624.z, x_625.w);
  let x_627 : vec4<f32> = u_xlat1;
  let x_629 : vec4<f32> = u_xlat0;
  let x_632 : vec4<f32> = u_xlat2;
  let x_634 : vec3<f32> = ((vec3<f32>(x_627.x, x_627.y, x_627.w) * vec3<f32>(x_629.x, x_629.y, x_629.z)) + vec3<f32>(x_632.x, x_632.y, x_632.z));
  let x_635 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_634.x, x_634.y, x_634.z, x_635.w);
  u_xlat0.w = 1.0f;
  let x_640 : vec4<f32> = u_xlat0;
  SV_Target0 = exp2(-(x_640));
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

