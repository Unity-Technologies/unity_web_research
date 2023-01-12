struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  x_ZBufferParams : vec4<f32>,
  unity_CameraToWorld : mat4x4<f32>,
  x_LightShadowData : vec4<f32>,
  unity_ShadowFadeCenterAndType : vec4<f32>,
  x_LightDir : vec4<f32>,
  x_LightColor : vec4<f32>,
}

@group(1) @binding(0) var<uniform> x_14 : PGlobals;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(0) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_CameraDepthTexture : sampler;

@group(0) @binding(4) var x_CameraGBufferTexture2 : texture_2d<f32>;

@group(0) @binding(9) var sampler_CameraGBufferTexture2 : sampler;

@group(0) @binding(3) var x_CameraGBufferTexture1 : texture_2d<f32>;

@group(0) @binding(8) var sampler_CameraGBufferTexture1 : sampler;

@group(0) @binding(1) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_ShadowMapTexture : sampler;

@group(0) @binding(2) var x_CameraGBufferTexture0 : texture_2d<f32>;

@group(0) @binding(7) var sampler_CameraGBufferTexture0 : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat18 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat13 : f32;
  var u_xlat19 : f32;
  var u_xlat4 : vec4<f32>;
  var u_xlat20 : f32;
  var u_xlat21 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlat12 : f32;
  var u_xlatb13 : bool;
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
  let x_42 : vec4<f32> = vs_TEXCOORD0;
  let x_44 : vec4<f32> = vs_TEXCOORD0;
  let x_46 : vec2<f32> = (vec2<f32>(x_42.x, x_42.y) / vec2<f32>(x_44.w, x_44.w));
  let x_47 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_46.x, x_46.y, x_47.z);
  let x_60 : vec3<f32> = u_xlat1;
  let x_62 : vec4<f32> = textureSample(x_CameraDepthTexture, sampler_CameraDepthTexture, vec2<f32>(x_60.x, x_60.y));
  u_xlat18 = x_62.x;
  let x_66 : f32 = x_14.x_ZBufferParams.x;
  let x_67 : f32 = u_xlat18;
  let x_71 : f32 = x_14.x_ZBufferParams.y;
  u_xlat18 = ((x_66 * x_67) + x_71);
  let x_74 : f32 = u_xlat18;
  u_xlat18 = (1.0f / x_74);
  let x_77 : f32 = u_xlat18;
  let x_79 : vec4<f32> = u_xlat0;
  let x_81 : vec3<f32> = (vec3<f32>(x_77, x_77, x_77) * vec3<f32>(x_79.x, x_79.y, x_79.z));
  let x_82 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_81.x, x_81.y, x_81.z, x_82.w);
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
  let x_127 : vec3<f32> = x_14.x_WorldSpaceCameraPos;
  u_xlat3 = (vec3<f32>(x_123.x, x_123.y, x_123.w) + -(x_127));
  let x_130 : vec4<f32> = u_xlat2;
  let x_134 : vec4<f32> = x_14.unity_ShadowFadeCenterAndType;
  let x_137 : vec3<f32> = (vec3<f32>(x_130.x, x_130.y, x_130.w) + -(vec3<f32>(x_134.x, x_134.y, x_134.z)));
  let x_138 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_137.x, x_137.y, x_138.z, x_137.z);
  let x_140 : vec4<f32> = u_xlat2;
  let x_142 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(x_140.x, x_140.y, x_140.w), vec3<f32>(x_142.x, x_142.y, x_142.w));
  let x_147 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_147);
  let x_151 : f32 = u_xlat0.z;
  let x_153 : f32 = u_xlat18;
  let x_156 : f32 = u_xlat0.x;
  u_xlat0.x = ((-(x_151) * x_153) + x_156);
  let x_161 : f32 = x_14.unity_ShadowFadeCenterAndType.w;
  let x_163 : f32 = u_xlat0.x;
  let x_166 : f32 = u_xlat2.z;
  u_xlat0.x = ((x_161 * x_163) + x_166);
  let x_170 : f32 = u_xlat0.x;
  let x_173 : f32 = x_14.x_LightShadowData.z;
  let x_176 : f32 = x_14.x_LightShadowData.w;
  u_xlat0.x = ((x_170 * x_173) + x_176);
  let x_180 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_180, 0.0f, 1.0f);
  let x_185 : vec3<f32> = u_xlat3;
  let x_186 : vec3<f32> = u_xlat3;
  u_xlat6.x = dot(x_185, x_186);
  let x_190 : f32 = u_xlat6.x;
  u_xlat6.x = inverseSqrt(x_190);
  let x_193 : vec3<f32> = u_xlat3;
  let x_195 : vec3<f32> = u_xlat6;
  let x_200 : vec4<f32> = x_14.x_LightDir;
  let x_203 : vec3<f32> = ((-(x_193) * vec3<f32>(x_195.x, x_195.x, x_195.x)) + -(vec3<f32>(x_200.x, x_200.y, x_200.z)));
  let x_204 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_203.x, x_203.y, x_203.z, x_204.w);
  let x_206 : vec3<f32> = u_xlat6;
  let x_208 : vec3<f32> = u_xlat3;
  u_xlat6 = (vec3<f32>(x_206.x, x_206.x, x_206.x) * x_208);
  let x_211 : vec4<f32> = u_xlat2;
  let x_213 : vec4<f32> = u_xlat2;
  u_xlat13 = dot(vec3<f32>(x_211.x, x_211.y, x_211.z), vec3<f32>(x_213.x, x_213.y, x_213.z));
  let x_216 : f32 = u_xlat13;
  u_xlat13 = max(x_216, 0.001f);
  let x_219 : f32 = u_xlat13;
  u_xlat13 = inverseSqrt(x_219);
  let x_221 : f32 = u_xlat13;
  let x_223 : vec4<f32> = u_xlat2;
  let x_225 : vec3<f32> = (vec3<f32>(x_221, x_221, x_221) * vec3<f32>(x_223.x, x_223.y, x_223.z));
  let x_226 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_225.x, x_225.y, x_225.z, x_226.w);
  let x_233 : vec3<f32> = u_xlat1;
  let x_235 : vec4<f32> = textureSample(x_CameraGBufferTexture2, sampler_CameraGBufferTexture2, vec2<f32>(x_233.x, x_233.y));
  u_xlat3 = vec3<f32>(x_235.x, x_235.y, x_235.z);
  let x_237 : vec3<f32> = u_xlat3;
  u_xlat3 = ((x_237 * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_244 : vec3<f32> = u_xlat3;
  let x_245 : vec3<f32> = u_xlat3;
  u_xlat13 = dot(x_244, x_245);
  let x_247 : f32 = u_xlat13;
  u_xlat13 = inverseSqrt(x_247);
  let x_249 : f32 = u_xlat13;
  let x_251 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_249, x_249, x_249) * x_251);
  let x_253 : vec3<f32> = u_xlat3;
  let x_254 : vec4<f32> = u_xlat2;
  u_xlat13 = dot(x_253, vec3<f32>(x_254.x, x_254.y, x_254.z));
  let x_257 : f32 = u_xlat13;
  u_xlat13 = clamp(x_257, 0.0f, 1.0f);
  let x_261 : vec4<f32> = x_14.x_LightDir;
  let x_264 : vec4<f32> = u_xlat2;
  u_xlat19 = dot(-(vec3<f32>(x_261.x, x_261.y, x_261.z)), vec3<f32>(x_264.x, x_264.y, x_264.z));
  let x_267 : f32 = u_xlat19;
  u_xlat19 = clamp(x_267, 0.0f, 1.0f);
  let x_274 : vec3<f32> = u_xlat1;
  let x_276 : vec4<f32> = textureSample(x_CameraGBufferTexture1, sampler_CameraGBufferTexture1, vec2<f32>(x_274.x, x_274.y));
  u_xlat2 = x_276;
  let x_278 : vec4<f32> = u_xlat2;
  u_xlat4 = (-(vec4<f32>(x_278.w, x_278.x, x_278.y, x_278.z)) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_285 : f32 = u_xlat4.x;
  let x_287 : f32 = u_xlat4.x;
  u_xlat20 = (x_285 * x_287);
  let x_289 : f32 = u_xlat20;
  u_xlat20 = max(x_289, 0.002f);
  let x_293 : f32 = u_xlat20;
  let x_294 : f32 = u_xlat20;
  u_xlat21 = (x_293 * x_294);
  let x_297 : f32 = u_xlat13;
  let x_298 : f32 = u_xlat21;
  let x_300 : f32 = u_xlat13;
  u_xlat5.x = ((x_297 * x_298) + -(x_300));
  let x_305 : f32 = u_xlat5.x;
  let x_306 : f32 = u_xlat13;
  u_xlat13 = ((x_305 * x_306) + 1.0f);
  let x_309 : f32 = u_xlat13;
  let x_310 : f32 = u_xlat13;
  u_xlat13 = ((x_309 * x_310) + 0.0000001f);
  let x_314 : f32 = u_xlat21;
  u_xlat21 = (x_314 * 0.318309873f);
  let x_317 : f32 = u_xlat21;
  let x_318 : f32 = u_xlat13;
  u_xlat13 = (x_317 / x_318);
  let x_320 : vec3<f32> = u_xlat3;
  let x_321 : vec3<f32> = u_xlat6;
  u_xlat6.x = dot(x_320, -(x_321));
  let x_326 : vec3<f32> = u_xlat3;
  let x_328 : vec4<f32> = x_14.x_LightDir;
  u_xlat12 = dot(x_326, -(vec3<f32>(x_328.x, x_328.y, x_328.z)));
  let x_332 : f32 = u_xlat12;
  u_xlat12 = clamp(x_332, 0.0f, 1.0f);
  let x_334 : f32 = u_xlat20;
  u_xlat18 = (-(x_334) + 1.0f);
  let x_338 : f32 = u_xlat6.x;
  let x_340 : f32 = u_xlat18;
  let x_342 : f32 = u_xlat20;
  u_xlat3.x = ((abs(x_338) * x_340) + x_342);
  let x_345 : f32 = u_xlat12;
  let x_346 : f32 = u_xlat18;
  let x_348 : f32 = u_xlat20;
  u_xlat18 = ((x_345 * x_346) + x_348);
  let x_350 : f32 = u_xlat18;
  let x_352 : f32 = u_xlat6.x;
  u_xlat18 = (x_350 * abs(x_352));
  let x_356 : f32 = u_xlat6.x;
  u_xlat6.x = (-(abs(x_356)) + 1.0f);
  let x_361 : f32 = u_xlat12;
  let x_363 : f32 = u_xlat3.x;
  let x_365 : f32 = u_xlat18;
  u_xlat18 = ((x_361 * x_363) + x_365);
  let x_367 : f32 = u_xlat18;
  u_xlat18 = (x_367 + 0.00001f);
  let x_371 : f32 = u_xlat18;
  u_xlat18 = (0.5f / x_371);
  let x_373 : f32 = u_xlat13;
  let x_374 : f32 = u_xlat18;
  u_xlat18 = (x_373 * x_374);
  let x_376 : f32 = u_xlat12;
  let x_377 : f32 = u_xlat18;
  u_xlat18 = (x_376 * x_377);
  let x_379 : f32 = u_xlat18;
  u_xlat18 = (x_379 * 3.141592741f);
  let x_382 : f32 = u_xlat18;
  u_xlat18 = max(x_382, 0.0f);
  let x_384 : vec4<f32> = u_xlat2;
  let x_386 : vec4<f32> = u_xlat2;
  u_xlat13 = dot(vec3<f32>(x_384.x, x_384.y, x_384.z), vec3<f32>(x_386.x, x_386.y, x_386.z));
  let x_392 : f32 = u_xlat13;
  u_xlatb13 = !((x_392 == 0.0f));
  let x_394 : bool = u_xlatb13;
  u_xlat13 = select(0.0f, 1.0f, x_394);
  let x_396 : f32 = u_xlat18;
  let x_397 : f32 = u_xlat13;
  u_xlat18 = (x_396 * x_397);
  let x_404 : vec3<f32> = u_xlat1;
  let x_406 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, vec2<f32>(x_404.x, x_404.y));
  u_xlat13 = x_406.x;
  let x_413 : vec3<f32> = u_xlat1;
  let x_415 : vec4<f32> = textureSample(x_CameraGBufferTexture0, sampler_CameraGBufferTexture0, vec2<f32>(x_413.x, x_413.y));
  u_xlat3 = vec3<f32>(x_415.x, x_415.y, x_415.z);
  let x_417 : f32 = u_xlat13;
  u_xlat1.x = (-(x_417) + 1.0f);
  let x_422 : f32 = u_xlat0.x;
  let x_424 : f32 = u_xlat1.x;
  let x_426 : f32 = u_xlat13;
  u_xlat0.x = ((x_422 * x_424) + x_426);
  let x_429 : vec4<f32> = u_xlat0;
  let x_433 : vec4<f32> = x_14.x_LightColor;
  u_xlat1 = (vec3<f32>(x_429.x, x_429.x, x_429.x) * vec3<f32>(x_433.x, x_433.y, x_433.z));
  let x_436 : f32 = u_xlat18;
  let x_438 : vec3<f32> = u_xlat1;
  u_xlat5 = (vec3<f32>(x_436, x_436, x_436) * x_438);
  let x_440 : f32 = u_xlat19;
  u_xlat0.x = (-(x_440) + 1.0f);
  let x_444 : f32 = u_xlat19;
  let x_445 : f32 = u_xlat19;
  u_xlat18 = (x_444 * x_445);
  let x_447 : f32 = u_xlat18;
  let x_449 : vec4<f32> = u_xlat4;
  u_xlat18 = dot(vec2<f32>(x_447, x_447), vec2<f32>(x_449.x, x_449.x));
  let x_452 : f32 = u_xlat18;
  u_xlat18 = (x_452 + -0.5f);
  let x_456 : f32 = u_xlat0.x;
  let x_458 : f32 = u_xlat0.x;
  u_xlat19 = (x_456 * x_458);
  let x_460 : f32 = u_xlat19;
  let x_461 : f32 = u_xlat19;
  u_xlat19 = (x_460 * x_461);
  let x_464 : f32 = u_xlat0.x;
  let x_465 : f32 = u_xlat19;
  u_xlat0.x = (x_464 * x_465);
  let x_468 : vec4<f32> = u_xlat4;
  let x_470 : vec4<f32> = u_xlat0;
  let x_473 : vec4<f32> = u_xlat2;
  let x_475 : vec3<f32> = ((vec3<f32>(x_468.y, x_468.z, x_468.w) * vec3<f32>(x_470.x, x_470.x, x_470.x)) + vec3<f32>(x_473.x, x_473.y, x_473.z));
  let x_476 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_475.x, x_475.y, x_475.z, x_476.w);
  let x_478 : vec4<f32> = u_xlat2;
  let x_480 : vec3<f32> = u_xlat5;
  let x_481 : vec3<f32> = (vec3<f32>(x_478.x, x_478.y, x_478.z) * x_480);
  let x_482 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_481.x, x_481.y, x_481.z, x_482.w);
  let x_485 : f32 = u_xlat6.x;
  let x_487 : f32 = u_xlat6.x;
  u_xlat0.x = (x_485 * x_487);
  let x_491 : f32 = u_xlat0.x;
  let x_493 : f32 = u_xlat0.x;
  u_xlat0.x = (x_491 * x_493);
  let x_497 : f32 = u_xlat6.x;
  let x_499 : f32 = u_xlat0.x;
  u_xlat0.x = (x_497 * x_499);
  let x_502 : f32 = u_xlat18;
  let x_504 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_502 * x_504) + 1.0f);
  let x_508 : f32 = u_xlat12;
  u_xlat6.x = (-(x_508) + 1.0f);
  let x_513 : f32 = u_xlat6.x;
  let x_515 : f32 = u_xlat6.x;
  u_xlat19 = (x_513 * x_515);
  let x_517 : f32 = u_xlat19;
  let x_518 : f32 = u_xlat19;
  u_xlat19 = (x_517 * x_518);
  let x_521 : f32 = u_xlat6.x;
  let x_522 : f32 = u_xlat19;
  u_xlat6.x = (x_521 * x_522);
  let x_525 : f32 = u_xlat18;
  let x_527 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_525 * x_527) + 1.0f);
  let x_532 : f32 = u_xlat0.x;
  let x_534 : f32 = u_xlat6.x;
  u_xlat0.x = (x_532 * x_534);
  let x_537 : f32 = u_xlat12;
  let x_539 : f32 = u_xlat0.x;
  u_xlat0.x = (x_537 * x_539);
  let x_542 : vec4<f32> = u_xlat0;
  let x_544 : vec3<f32> = u_xlat1;
  let x_545 : vec3<f32> = (vec3<f32>(x_542.x, x_542.x, x_542.x) * x_544);
  let x_546 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_545.x, x_545.y, x_545.z, x_546.w);
  let x_548 : vec3<f32> = u_xlat3;
  let x_549 : vec4<f32> = u_xlat0;
  let x_552 : vec4<f32> = u_xlat2;
  let x_554 : vec3<f32> = ((x_548 * vec3<f32>(x_549.x, x_549.y, x_549.z)) + vec3<f32>(x_552.x, x_552.y, x_552.z));
  let x_555 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_554.x, x_554.y, x_554.z, x_555.w);
  u_xlat0.w = 1.0f;
  let x_560 : vec4<f32> = u_xlat0;
  SV_Target0 = exp2(-(x_560));
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

