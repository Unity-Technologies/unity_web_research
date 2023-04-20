diagnostic(off, derivative_uniformity);

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
  x_LightProjectionParams : vec4<f32>,
  /* @offset(128) */
  x_LightShadowData : vec4<f32>,
  /* @offset(144) */
  unity_ShadowFadeCenterAndType : vec4<f32>,
  /* @offset(160) */
  x_LightPos : vec4<f32>,
  /* @offset(176) */
  x_LightColor : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_14 : PGlobals;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat1 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat18 : f32;

@group(0) @binding(0) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_CameraDepthTexture : sampler;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat13 : f32;

var<private> u_xlat19 : f32;

@group(0) @binding(1) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(8) var sampler_LightTextureB0 : sampler;

var<private> u_xlatb19 : bool;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(6) var x_ShadowMapTexture : texture_depth_cube;

@group(0) @binding(9) var sampler_ShadowMapTexture : sampler_comparison;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat12 : f32;

@group(0) @binding(2) var x_CameraGBufferTexture0 : texture_2d<f32>;

@group(0) @binding(11) var sampler_CameraGBufferTexture0 : sampler;

@group(0) @binding(3) var x_CameraGBufferTexture1 : texture_2d<f32>;

@group(0) @binding(12) var sampler_CameraGBufferTexture1 : sampler;

@group(0) @binding(4) var x_CameraGBufferTexture2 : texture_2d<f32>;

@group(0) @binding(13) var sampler_CameraGBufferTexture2 : sampler;

@group(0) @binding(5) var unity_NHxRoughness : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_NHxRoughness : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var txVec0 : vec4<f32>;
  var txVec1 : vec4<f32>;
  var txVec2 : vec4<f32>;
  var txVec3 : vec4<f32>;
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
  let x_159 : vec4<f32> = u_xlat2;
  let x_163 : vec4<f32> = x_14.x_LightPos;
  u_xlat6 = (vec3<f32>(x_159.x, x_159.y, x_159.w) + -(vec3<f32>(x_163.x, x_163.y, x_163.z)));
  let x_168 : vec3<f32> = u_xlat6;
  let x_169 : vec3<f32> = u_xlat6;
  u_xlat13 = dot(x_168, x_169);
  let x_172 : f32 = u_xlat13;
  u_xlat19 = inverseSqrt(x_172);
  let x_174 : vec3<f32> = u_xlat6;
  let x_175 : f32 = u_xlat19;
  u_xlat3 = (x_174 * vec3<f32>(x_175, x_175, x_175));
  let x_178 : f32 = u_xlat13;
  let x_180 : f32 = x_14.x_LightPos.w;
  u_xlat13 = (x_178 * x_180);
  let x_187 : f32 = u_xlat13;
  let x_189 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_187, x_187));
  u_xlat13 = x_189.x;
  let x_192 : f32 = u_xlat0.x;
  let x_195 : f32 = x_14.x_LightShadowData.z;
  let x_198 : f32 = x_14.x_LightShadowData.w;
  u_xlat0.x = ((x_192 * x_195) + x_198);
  let x_202 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_202, 0.0f, 1.0f);
  let x_210 : f32 = u_xlat0.x;
  u_xlatb19 = (x_210 < 0.99000000953674316406f);
  let x_213 : bool = u_xlatb19;
  if (x_213) {
    let x_217 : f32 = u_xlat6.y;
    let x_220 : f32 = u_xlat6.x;
    u_xlat19 = max(abs(x_217), abs(x_220));
    let x_224 : f32 = u_xlat6.z;
    let x_226 : f32 = u_xlat19;
    u_xlat19 = max(abs(x_224), x_226);
    let x_228 : f32 = u_xlat19;
    let x_231 : f32 = x_14.x_LightProjectionParams.z;
    u_xlat19 = (x_228 + -(x_231));
    let x_234 : f32 = u_xlat19;
    u_xlat19 = max(x_234, 0.00000999999974737875f);
    let x_237 : f32 = u_xlat19;
    let x_239 : f32 = x_14.x_LightProjectionParams.w;
    u_xlat19 = (x_237 * x_239);
    let x_242 : f32 = x_14.x_LightProjectionParams.y;
    let x_243 : f32 = u_xlat19;
    u_xlat19 = (x_242 / x_243);
    let x_245 : f32 = u_xlat19;
    let x_247 : f32 = x_14.x_LightProjectionParams.x;
    u_xlat19 = (x_245 + -(x_247));
    let x_250 : f32 = u_xlat19;
    u_xlat19 = (-(x_250) + 1.0f);
    let x_254 : vec3<f32> = u_xlat6;
    let x_257 : vec3<f32> = (x_254 + vec3<f32>(0.0078125f, 0.0078125f, 0.0078125f));
    let x_258 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_257.x, x_257.y, x_257.z, x_258.w);
    let x_262 : vec4<f32> = u_xlat4;
    let x_263 : vec3<f32> = vec3<f32>(x_262.x, x_262.y, x_262.z);
    let x_264 : f32 = u_xlat19;
    txVec0 = vec4<f32>(x_263.x, x_263.y, x_263.z, x_264);
    let x_277 : vec4<f32> = txVec0;
    let x_279 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_277.xyz, x_277.w);
    u_xlat4.x = x_279;
    let x_282 : vec3<f32> = u_xlat6;
    let x_285 : vec3<f32> = (x_282 + vec3<f32>(-0.0078125f, -0.0078125f, 0.0078125f));
    let x_286 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_285.x, x_285.y, x_285.z, x_286.w);
    let x_289 : vec4<f32> = u_xlat5;
    let x_290 : vec3<f32> = vec3<f32>(x_289.x, x_289.y, x_289.z);
    let x_291 : f32 = u_xlat19;
    txVec1 = vec4<f32>(x_290.x, x_290.y, x_290.z, x_291);
    let x_299 : vec4<f32> = txVec1;
    let x_301 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_299.xyz, x_299.w);
    u_xlat4.y = x_301;
    let x_303 : vec3<f32> = u_xlat6;
    let x_305 : vec3<f32> = (x_303 + vec3<f32>(-0.0078125f, 0.0078125f, -0.0078125f));
    let x_306 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_305.x, x_305.y, x_305.z, x_306.w);
    let x_309 : vec4<f32> = u_xlat5;
    let x_310 : vec3<f32> = vec3<f32>(x_309.x, x_309.y, x_309.z);
    let x_311 : f32 = u_xlat19;
    txVec2 = vec4<f32>(x_310.x, x_310.y, x_310.z, x_311);
    let x_319 : vec4<f32> = txVec2;
    let x_321 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_319.xyz, x_319.w);
    u_xlat4.z = x_321;
    let x_323 : vec3<f32> = u_xlat6;
    u_xlat6 = (x_323 + vec3<f32>(0.0078125f, -0.0078125f, -0.0078125f));
    let x_327 : vec3<f32> = u_xlat6;
    let x_328 : f32 = u_xlat19;
    txVec3 = vec4<f32>(x_327.x, x_327.y, x_327.z, x_328);
    let x_336 : vec4<f32> = txVec3;
    let x_338 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_336.xyz, x_336.w);
    u_xlat4.w = x_338;
    let x_340 : vec4<f32> = u_xlat4;
    u_xlat6.x = dot(x_340, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    let x_347 : f32 = x_14.x_LightShadowData.x;
    u_xlat12 = (-(x_347) + 1.0f);
    let x_351 : f32 = u_xlat6.x;
    let x_352 : f32 = u_xlat12;
    let x_355 : f32 = x_14.x_LightShadowData.x;
    u_xlat6.x = ((x_351 * x_352) + x_355);
  } else {
    u_xlat6.x = 1.0f;
  }
  let x_361 : f32 = u_xlat6.x;
  u_xlat12 = (-(x_361) + 1.0f);
  let x_365 : f32 = u_xlat0.x;
  let x_366 : f32 = u_xlat12;
  let x_369 : f32 = u_xlat6.x;
  u_xlat0.x = ((x_365 * x_366) + x_369);
  let x_373 : f32 = u_xlat0.x;
  let x_374 : f32 = u_xlat13;
  u_xlat0.x = (x_373 * x_374);
  let x_377 : vec4<f32> = u_xlat0;
  let x_381 : vec4<f32> = x_14.x_LightColor;
  let x_383 : vec3<f32> = (vec3<f32>(x_377.x, x_377.x, x_377.x) * vec3<f32>(x_381.x, x_381.y, x_381.z));
  let x_384 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_383.x, x_383.y, x_383.z, x_384.w);
  let x_391 : vec3<f32> = u_xlat1;
  let x_393 : vec4<f32> = textureSample(x_CameraGBufferTexture0, sampler_CameraGBufferTexture0, vec2<f32>(x_391.x, x_391.y));
  let x_394 : vec3<f32> = vec3<f32>(x_393.x, x_393.y, x_393.z);
  let x_395 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_394.x, x_394.y, x_394.z, x_395.w);
  let x_402 : vec3<f32> = u_xlat1;
  let x_404 : vec4<f32> = textureSample(x_CameraGBufferTexture1, sampler_CameraGBufferTexture1, vec2<f32>(x_402.x, x_402.y));
  u_xlat5 = x_404;
  let x_410 : vec3<f32> = u_xlat1;
  let x_412 : vec4<f32> = textureSample(x_CameraGBufferTexture2, sampler_CameraGBufferTexture2, vec2<f32>(x_410.x, x_410.y));
  u_xlat1 = vec3<f32>(x_412.x, x_412.y, x_412.z);
  let x_414 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_414 * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_421 : vec3<f32> = u_xlat1;
  let x_422 : vec3<f32> = u_xlat1;
  u_xlat18 = dot(x_421, x_422);
  let x_424 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_424);
  let x_426 : f32 = u_xlat18;
  let x_428 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_426, x_426, x_426) * x_428);
  let x_430 : vec4<f32> = u_xlat2;
  let x_434 : vec3<f32> = x_14.x_WorldSpaceCameraPos;
  let x_436 : vec3<f32> = (vec3<f32>(x_430.x, x_430.y, x_430.w) + -(x_434));
  let x_437 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_436.x, x_436.y, x_436.z, x_437.w);
  let x_439 : vec4<f32> = u_xlat2;
  let x_441 : vec4<f32> = u_xlat2;
  u_xlat18 = dot(vec3<f32>(x_439.x, x_439.y, x_439.z), vec3<f32>(x_441.x, x_441.y, x_441.z));
  let x_444 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_444);
  let x_446 : f32 = u_xlat18;
  let x_448 : vec4<f32> = u_xlat2;
  let x_450 : vec3<f32> = (vec3<f32>(x_446, x_446, x_446) * vec3<f32>(x_448.x, x_448.y, x_448.z));
  let x_451 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_450.x, x_450.y, x_450.z, x_451.w);
  let x_453 : vec4<f32> = u_xlat2;
  let x_456 : vec3<f32> = u_xlat1;
  u_xlat18 = dot(-(vec3<f32>(x_453.x, x_453.y, x_453.z)), x_456);
  let x_458 : f32 = u_xlat18;
  let x_459 : f32 = u_xlat18;
  u_xlat18 = (x_458 + x_459);
  let x_461 : vec3<f32> = u_xlat1;
  let x_462 : f32 = u_xlat18;
  let x_466 : vec4<f32> = u_xlat2;
  let x_469 : vec3<f32> = ((x_461 * -(vec3<f32>(x_462, x_462, x_462))) + -(vec3<f32>(x_466.x, x_466.y, x_466.z)));
  let x_470 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_469.x, x_469.y, x_469.z, x_470.w);
  let x_472 : vec3<f32> = u_xlat1;
  let x_473 : vec3<f32> = u_xlat3;
  u_xlat18 = dot(x_472, -(x_473));
  let x_476 : f32 = u_xlat18;
  u_xlat18 = clamp(x_476, 0.0f, 1.0f);
  let x_478 : vec4<f32> = u_xlat2;
  let x_480 : vec3<f32> = u_xlat3;
  u_xlat1.x = dot(vec3<f32>(x_478.x, x_478.y, x_478.z), -(x_480));
  let x_485 : f32 = u_xlat1.x;
  let x_487 : f32 = u_xlat1.x;
  u_xlat1.x = (x_485 * x_487);
  let x_491 : f32 = u_xlat1.x;
  let x_493 : f32 = u_xlat1.x;
  u_xlat1.x = (x_491 * x_493);
  let x_497 : f32 = u_xlat5.w;
  u_xlat1.y = (-(x_497) + 1.0f);
  let x_506 : vec3<f32> = u_xlat1;
  let x_508 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_506.x, x_506.y));
  u_xlat1.x = x_508.x;
  let x_512 : f32 = u_xlat1.x;
  u_xlat1.x = (x_512 * 16.0f);
  let x_516 : vec3<f32> = u_xlat1;
  let x_518 : vec4<f32> = u_xlat5;
  let x_521 : vec4<f32> = u_xlat4;
  u_xlat1 = ((vec3<f32>(x_516.x, x_516.x, x_516.x) * vec3<f32>(x_518.x, x_518.y, x_518.z)) + vec3<f32>(x_521.x, x_521.y, x_521.z));
  let x_524 : f32 = u_xlat18;
  let x_526 : vec4<f32> = u_xlat0;
  let x_528 : vec3<f32> = (vec3<f32>(x_524, x_524, x_524) * vec3<f32>(x_526.x, x_526.y, x_526.z));
  let x_529 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_528.x, x_528.y, x_528.z, x_529.w);
  let x_531 : vec4<f32> = u_xlat0;
  let x_533 : vec3<f32> = u_xlat1;
  let x_534 : vec3<f32> = (vec3<f32>(x_531.x, x_531.y, x_531.z) * x_533);
  let x_535 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_534.x, x_534.y, x_534.z, x_535.w);
  u_xlat0.w = 1.0f;
  let x_540 : vec4<f32> = u_xlat0;
  SV_Target0 = exp2(-(x_540));
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


