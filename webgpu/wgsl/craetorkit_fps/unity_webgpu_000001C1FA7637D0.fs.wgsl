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
  var u_xlat0 : vec3<f32>;
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
  let x_31 : vec3<f32> = u_xlat0;
  let x_33 : vec3<f32> = vs_TEXCOORD1;
  u_xlat0 = (vec3<f32>(x_31.x, x_31.x, x_31.x) * x_33);
  let x_39 : vec4<f32> = vs_TEXCOORD0;
  let x_41 : vec4<f32> = vs_TEXCOORD0;
  let x_43 : vec2<f32> = (vec2<f32>(x_39.x, x_39.y) / vec2<f32>(x_41.w, x_41.w));
  let x_44 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_43.x, x_43.y, x_44.z);
  let x_57 : vec3<f32> = u_xlat1;
  let x_59 : vec4<f32> = textureSample(x_CameraDepthTexture, sampler_CameraDepthTexture, vec2<f32>(x_57.x, x_57.y));
  u_xlat18 = x_59.x;
  let x_63 : f32 = x_14.x_ZBufferParams.x;
  let x_64 : f32 = u_xlat18;
  let x_68 : f32 = x_14.x_ZBufferParams.y;
  u_xlat18 = ((x_63 * x_64) + x_68);
  let x_71 : f32 = u_xlat18;
  u_xlat18 = (1.0f / x_71);
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
  let x_124 : vec3<f32> = x_14.x_WorldSpaceCameraPos;
  u_xlat3 = (vec3<f32>(x_120.x, x_120.y, x_120.w) + -(x_124));
  let x_127 : vec4<f32> = u_xlat2;
  let x_131 : vec4<f32> = x_14.unity_ShadowFadeCenterAndType;
  let x_134 : vec3<f32> = (vec3<f32>(x_127.x, x_127.y, x_127.w) + -(vec3<f32>(x_131.x, x_131.y, x_131.z)));
  let x_135 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_134.x, x_134.y, x_135.z, x_134.z);
  let x_137 : vec4<f32> = u_xlat2;
  let x_139 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(x_137.x, x_137.y, x_137.w), vec3<f32>(x_139.x, x_139.y, x_139.w));
  let x_144 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_144);
  let x_148 : f32 = u_xlat0.z;
  let x_150 : f32 = u_xlat18;
  let x_153 : f32 = u_xlat0.x;
  u_xlat0.x = ((-(x_148) * x_150) + x_153);
  let x_158 : f32 = x_14.unity_ShadowFadeCenterAndType.w;
  let x_160 : f32 = u_xlat0.x;
  let x_163 : f32 = u_xlat2.z;
  u_xlat0.x = ((x_158 * x_160) + x_163);
  let x_167 : f32 = u_xlat0.x;
  let x_170 : f32 = x_14.x_LightShadowData.z;
  let x_173 : f32 = x_14.x_LightShadowData.w;
  u_xlat0.x = ((x_167 * x_170) + x_173);
  let x_177 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_177, 0.0f, 1.0f);
  let x_182 : vec3<f32> = u_xlat3;
  let x_183 : vec3<f32> = u_xlat3;
  u_xlat6.x = dot(x_182, x_183);
  let x_187 : f32 = u_xlat6.x;
  u_xlat6.x = inverseSqrt(x_187);
  let x_190 : vec3<f32> = u_xlat3;
  let x_192 : vec3<f32> = u_xlat6;
  let x_197 : vec4<f32> = x_14.x_LightDir;
  let x_200 : vec3<f32> = ((-(x_190) * vec3<f32>(x_192.x, x_192.x, x_192.x)) + -(vec3<f32>(x_197.x, x_197.y, x_197.z)));
  let x_201 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_200.x, x_200.y, x_200.z, x_201.w);
  let x_203 : vec3<f32> = u_xlat6;
  let x_205 : vec3<f32> = u_xlat3;
  u_xlat6 = (vec3<f32>(x_203.x, x_203.x, x_203.x) * x_205);
  let x_208 : vec4<f32> = u_xlat2;
  let x_210 : vec4<f32> = u_xlat2;
  u_xlat13 = dot(vec3<f32>(x_208.x, x_208.y, x_208.z), vec3<f32>(x_210.x, x_210.y, x_210.z));
  let x_213 : f32 = u_xlat13;
  u_xlat13 = max(x_213, 0.001f);
  let x_216 : f32 = u_xlat13;
  u_xlat13 = inverseSqrt(x_216);
  let x_218 : f32 = u_xlat13;
  let x_220 : vec4<f32> = u_xlat2;
  let x_222 : vec3<f32> = (vec3<f32>(x_218, x_218, x_218) * vec3<f32>(x_220.x, x_220.y, x_220.z));
  let x_223 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_222.x, x_222.y, x_222.z, x_223.w);
  let x_230 : vec3<f32> = u_xlat1;
  let x_232 : vec4<f32> = textureSample(x_CameraGBufferTexture2, sampler_CameraGBufferTexture2, vec2<f32>(x_230.x, x_230.y));
  u_xlat3 = vec3<f32>(x_232.x, x_232.y, x_232.z);
  let x_234 : vec3<f32> = u_xlat3;
  u_xlat3 = ((x_234 * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_241 : vec3<f32> = u_xlat3;
  let x_242 : vec3<f32> = u_xlat3;
  u_xlat13 = dot(x_241, x_242);
  let x_244 : f32 = u_xlat13;
  u_xlat13 = inverseSqrt(x_244);
  let x_246 : f32 = u_xlat13;
  let x_248 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_246, x_246, x_246) * x_248);
  let x_250 : vec3<f32> = u_xlat3;
  let x_251 : vec4<f32> = u_xlat2;
  u_xlat13 = dot(x_250, vec3<f32>(x_251.x, x_251.y, x_251.z));
  let x_254 : f32 = u_xlat13;
  u_xlat13 = clamp(x_254, 0.0f, 1.0f);
  let x_258 : vec4<f32> = x_14.x_LightDir;
  let x_261 : vec4<f32> = u_xlat2;
  u_xlat19 = dot(-(vec3<f32>(x_258.x, x_258.y, x_258.z)), vec3<f32>(x_261.x, x_261.y, x_261.z));
  let x_264 : f32 = u_xlat19;
  u_xlat19 = clamp(x_264, 0.0f, 1.0f);
  let x_271 : vec3<f32> = u_xlat1;
  let x_273 : vec4<f32> = textureSample(x_CameraGBufferTexture1, sampler_CameraGBufferTexture1, vec2<f32>(x_271.x, x_271.y));
  u_xlat2 = x_273;
  let x_275 : vec4<f32> = u_xlat2;
  u_xlat4 = (-(vec4<f32>(x_275.w, x_275.x, x_275.y, x_275.z)) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_282 : f32 = u_xlat4.x;
  let x_284 : f32 = u_xlat4.x;
  u_xlat20 = (x_282 * x_284);
  let x_286 : f32 = u_xlat20;
  u_xlat20 = max(x_286, 0.002f);
  let x_290 : f32 = u_xlat20;
  let x_291 : f32 = u_xlat20;
  u_xlat21 = (x_290 * x_291);
  let x_294 : f32 = u_xlat13;
  let x_295 : f32 = u_xlat21;
  let x_297 : f32 = u_xlat13;
  u_xlat5.x = ((x_294 * x_295) + -(x_297));
  let x_302 : f32 = u_xlat5.x;
  let x_303 : f32 = u_xlat13;
  u_xlat13 = ((x_302 * x_303) + 1.0f);
  let x_306 : f32 = u_xlat13;
  let x_307 : f32 = u_xlat13;
  u_xlat13 = ((x_306 * x_307) + 0.0000001f);
  let x_311 : f32 = u_xlat21;
  u_xlat21 = (x_311 * 0.318309873f);
  let x_314 : f32 = u_xlat21;
  let x_315 : f32 = u_xlat13;
  u_xlat13 = (x_314 / x_315);
  let x_317 : vec3<f32> = u_xlat3;
  let x_318 : vec3<f32> = u_xlat6;
  u_xlat6.x = dot(x_317, -(x_318));
  let x_323 : vec3<f32> = u_xlat3;
  let x_325 : vec4<f32> = x_14.x_LightDir;
  u_xlat12 = dot(x_323, -(vec3<f32>(x_325.x, x_325.y, x_325.z)));
  let x_329 : f32 = u_xlat12;
  u_xlat12 = clamp(x_329, 0.0f, 1.0f);
  let x_331 : f32 = u_xlat20;
  u_xlat18 = (-(x_331) + 1.0f);
  let x_335 : f32 = u_xlat6.x;
  let x_337 : f32 = u_xlat18;
  let x_339 : f32 = u_xlat20;
  u_xlat3.x = ((abs(x_335) * x_337) + x_339);
  let x_342 : f32 = u_xlat12;
  let x_343 : f32 = u_xlat18;
  let x_345 : f32 = u_xlat20;
  u_xlat18 = ((x_342 * x_343) + x_345);
  let x_347 : f32 = u_xlat18;
  let x_349 : f32 = u_xlat6.x;
  u_xlat18 = (x_347 * abs(x_349));
  let x_353 : f32 = u_xlat6.x;
  u_xlat6.x = (-(abs(x_353)) + 1.0f);
  let x_358 : f32 = u_xlat12;
  let x_360 : f32 = u_xlat3.x;
  let x_362 : f32 = u_xlat18;
  u_xlat18 = ((x_358 * x_360) + x_362);
  let x_364 : f32 = u_xlat18;
  u_xlat18 = (x_364 + 0.00001f);
  let x_368 : f32 = u_xlat18;
  u_xlat18 = (0.5f / x_368);
  let x_370 : f32 = u_xlat13;
  let x_371 : f32 = u_xlat18;
  u_xlat18 = (x_370 * x_371);
  let x_373 : f32 = u_xlat12;
  let x_374 : f32 = u_xlat18;
  u_xlat18 = (x_373 * x_374);
  let x_376 : f32 = u_xlat18;
  u_xlat18 = (x_376 * 3.141592741f);
  let x_379 : f32 = u_xlat18;
  u_xlat18 = max(x_379, 0.0f);
  let x_381 : vec4<f32> = u_xlat2;
  let x_383 : vec4<f32> = u_xlat2;
  u_xlat13 = dot(vec3<f32>(x_381.x, x_381.y, x_381.z), vec3<f32>(x_383.x, x_383.y, x_383.z));
  let x_389 : f32 = u_xlat13;
  u_xlatb13 = !((x_389 == 0.0f));
  let x_391 : bool = u_xlatb13;
  u_xlat13 = select(0.0f, 1.0f, x_391);
  let x_393 : f32 = u_xlat18;
  let x_394 : f32 = u_xlat13;
  u_xlat18 = (x_393 * x_394);
  let x_401 : vec3<f32> = u_xlat1;
  let x_403 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, vec2<f32>(x_401.x, x_401.y));
  u_xlat13 = x_403.x;
  let x_410 : vec3<f32> = u_xlat1;
  let x_412 : vec4<f32> = textureSample(x_CameraGBufferTexture0, sampler_CameraGBufferTexture0, vec2<f32>(x_410.x, x_410.y));
  u_xlat3 = vec3<f32>(x_412.x, x_412.y, x_412.z);
  let x_414 : f32 = u_xlat13;
  u_xlat1.x = (-(x_414) + 1.0f);
  let x_419 : f32 = u_xlat0.x;
  let x_421 : f32 = u_xlat1.x;
  let x_423 : f32 = u_xlat13;
  u_xlat0.x = ((x_419 * x_421) + x_423);
  let x_426 : vec3<f32> = u_xlat0;
  let x_430 : vec4<f32> = x_14.x_LightColor;
  u_xlat1 = (vec3<f32>(x_426.x, x_426.x, x_426.x) * vec3<f32>(x_430.x, x_430.y, x_430.z));
  let x_433 : f32 = u_xlat18;
  let x_435 : vec3<f32> = u_xlat1;
  u_xlat5 = (vec3<f32>(x_433, x_433, x_433) * x_435);
  let x_437 : f32 = u_xlat19;
  u_xlat0.x = (-(x_437) + 1.0f);
  let x_441 : f32 = u_xlat19;
  let x_442 : f32 = u_xlat19;
  u_xlat18 = (x_441 * x_442);
  let x_444 : f32 = u_xlat18;
  let x_446 : vec4<f32> = u_xlat4;
  u_xlat18 = dot(vec2<f32>(x_444, x_444), vec2<f32>(x_446.x, x_446.x));
  let x_449 : f32 = u_xlat18;
  u_xlat18 = (x_449 + -0.5f);
  let x_453 : f32 = u_xlat0.x;
  let x_455 : f32 = u_xlat0.x;
  u_xlat19 = (x_453 * x_455);
  let x_457 : f32 = u_xlat19;
  let x_458 : f32 = u_xlat19;
  u_xlat19 = (x_457 * x_458);
  let x_461 : f32 = u_xlat0.x;
  let x_462 : f32 = u_xlat19;
  u_xlat0.x = (x_461 * x_462);
  let x_465 : vec4<f32> = u_xlat4;
  let x_467 : vec3<f32> = u_xlat0;
  let x_470 : vec4<f32> = u_xlat2;
  let x_472 : vec3<f32> = ((vec3<f32>(x_465.y, x_465.z, x_465.w) * vec3<f32>(x_467.x, x_467.x, x_467.x)) + vec3<f32>(x_470.x, x_470.y, x_470.z));
  let x_473 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_472.x, x_472.y, x_472.z, x_473.w);
  let x_475 : vec4<f32> = u_xlat2;
  let x_477 : vec3<f32> = u_xlat5;
  let x_478 : vec3<f32> = (vec3<f32>(x_475.x, x_475.y, x_475.z) * x_477);
  let x_479 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_478.x, x_478.y, x_478.z, x_479.w);
  let x_482 : f32 = u_xlat6.x;
  let x_484 : f32 = u_xlat6.x;
  u_xlat0.x = (x_482 * x_484);
  let x_488 : f32 = u_xlat0.x;
  let x_490 : f32 = u_xlat0.x;
  u_xlat0.x = (x_488 * x_490);
  let x_494 : f32 = u_xlat6.x;
  let x_496 : f32 = u_xlat0.x;
  u_xlat0.x = (x_494 * x_496);
  let x_499 : f32 = u_xlat18;
  let x_501 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_499 * x_501) + 1.0f);
  let x_505 : f32 = u_xlat12;
  u_xlat6.x = (-(x_505) + 1.0f);
  let x_510 : f32 = u_xlat6.x;
  let x_512 : f32 = u_xlat6.x;
  u_xlat19 = (x_510 * x_512);
  let x_514 : f32 = u_xlat19;
  let x_515 : f32 = u_xlat19;
  u_xlat19 = (x_514 * x_515);
  let x_518 : f32 = u_xlat6.x;
  let x_519 : f32 = u_xlat19;
  u_xlat6.x = (x_518 * x_519);
  let x_522 : f32 = u_xlat18;
  let x_524 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_522 * x_524) + 1.0f);
  let x_529 : f32 = u_xlat0.x;
  let x_531 : f32 = u_xlat6.x;
  u_xlat0.x = (x_529 * x_531);
  let x_534 : f32 = u_xlat12;
  let x_536 : f32 = u_xlat0.x;
  u_xlat0.x = (x_534 * x_536);
  let x_539 : vec3<f32> = u_xlat0;
  let x_541 : vec3<f32> = u_xlat1;
  u_xlat0 = (vec3<f32>(x_539.x, x_539.x, x_539.x) * x_541);
  let x_545 : vec3<f32> = u_xlat3;
  let x_546 : vec3<f32> = u_xlat0;
  let x_548 : vec4<f32> = u_xlat2;
  let x_550 : vec3<f32> = ((x_545 * x_546) + vec3<f32>(x_548.x, x_548.y, x_548.z));
  let x_551 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_550.x, x_550.y, x_550.z, x_551.w);
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

