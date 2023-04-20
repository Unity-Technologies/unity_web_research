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
  /* @offset(192) */
  unity_WorldToLight : mat4x4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_14 : PGlobals;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat1 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat18 : f32;

@group(0) @binding(0) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_CameraDepthTexture : sampler;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat13 : f32;

var<private> u_xlat19 : f32;

@group(0) @binding(1) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(9) var sampler_LightTextureB0 : sampler;

var<private> u_xlatb19 : bool;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(7) var x_ShadowMapTexture : texture_depth_cube;

@group(0) @binding(11) var sampler_ShadowMapTexture : sampler_comparison;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat12 : f32;

@group(0) @binding(2) var x_LightTexture0 : texture_cube<f32>;

@group(0) @binding(10) var sampler_LightTexture0 : sampler;

@group(0) @binding(3) var x_CameraGBufferTexture0 : texture_2d<f32>;

@group(0) @binding(13) var sampler_CameraGBufferTexture0 : sampler;

@group(0) @binding(4) var x_CameraGBufferTexture1 : texture_2d<f32>;

@group(0) @binding(14) var sampler_CameraGBufferTexture1 : sampler;

@group(0) @binding(5) var x_CameraGBufferTexture2 : texture_2d<f32>;

@group(0) @binding(15) var sampler_CameraGBufferTexture2 : sampler;

@group(0) @binding(6) var unity_NHxRoughness : texture_2d<f32>;

@group(0) @binding(12) var samplerunity_NHxRoughness : sampler;

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
  let x_377 : vec4<f32> = u_xlat2;
  let x_381 : vec4<f32> = x_14.unity_WorldToLight[1i];
  u_xlat6 = (vec3<f32>(x_377.y, x_377.y, x_377.y) * vec3<f32>(x_381.x, x_381.y, x_381.z));
  let x_385 : vec4<f32> = x_14.unity_WorldToLight[0i];
  let x_387 : vec4<f32> = u_xlat2;
  let x_390 : vec3<f32> = u_xlat6;
  u_xlat6 = ((vec3<f32>(x_385.x, x_385.y, x_385.z) * vec3<f32>(x_387.x, x_387.x, x_387.x)) + x_390);
  let x_393 : vec4<f32> = x_14.unity_WorldToLight[2i];
  let x_395 : vec4<f32> = u_xlat2;
  let x_398 : vec3<f32> = u_xlat6;
  u_xlat6 = ((vec3<f32>(x_393.x, x_393.y, x_393.z) * vec3<f32>(x_395.w, x_395.w, x_395.w)) + x_398);
  let x_400 : vec3<f32> = u_xlat6;
  let x_402 : vec4<f32> = x_14.unity_WorldToLight[3i];
  u_xlat6 = (x_400 + vec3<f32>(x_402.x, x_402.y, x_402.z));
  let x_413 : vec3<f32> = u_xlat6;
  let x_415 : vec4<f32> = textureSampleBias(x_LightTexture0, sampler_LightTexture0, x_413, -8.0f);
  u_xlat6.x = x_415.w;
  let x_419 : f32 = u_xlat6.x;
  let x_421 : f32 = u_xlat0.x;
  u_xlat0.x = (x_419 * x_421);
  let x_424 : vec4<f32> = u_xlat0;
  let x_428 : vec4<f32> = x_14.x_LightColor;
  let x_430 : vec3<f32> = (vec3<f32>(x_424.x, x_424.x, x_424.x) * vec3<f32>(x_428.x, x_428.y, x_428.z));
  let x_431 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_430.x, x_430.y, x_430.z, x_431.w);
  let x_438 : vec3<f32> = u_xlat1;
  let x_440 : vec4<f32> = textureSample(x_CameraGBufferTexture0, sampler_CameraGBufferTexture0, vec2<f32>(x_438.x, x_438.y));
  let x_441 : vec3<f32> = vec3<f32>(x_440.x, x_440.y, x_440.z);
  let x_442 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_441.x, x_441.y, x_441.z, x_442.w);
  let x_449 : vec3<f32> = u_xlat1;
  let x_451 : vec4<f32> = textureSample(x_CameraGBufferTexture1, sampler_CameraGBufferTexture1, vec2<f32>(x_449.x, x_449.y));
  u_xlat5 = x_451;
  let x_457 : vec3<f32> = u_xlat1;
  let x_459 : vec4<f32> = textureSample(x_CameraGBufferTexture2, sampler_CameraGBufferTexture2, vec2<f32>(x_457.x, x_457.y));
  u_xlat1 = vec3<f32>(x_459.x, x_459.y, x_459.z);
  let x_461 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_461 * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_468 : vec3<f32> = u_xlat1;
  let x_469 : vec3<f32> = u_xlat1;
  u_xlat18 = dot(x_468, x_469);
  let x_471 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_471);
  let x_473 : f32 = u_xlat18;
  let x_475 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_473, x_473, x_473) * x_475);
  let x_477 : vec4<f32> = u_xlat2;
  let x_481 : vec3<f32> = x_14.x_WorldSpaceCameraPos;
  let x_483 : vec3<f32> = (vec3<f32>(x_477.x, x_477.y, x_477.w) + -(x_481));
  let x_484 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_483.x, x_483.y, x_483.z, x_484.w);
  let x_486 : vec4<f32> = u_xlat2;
  let x_488 : vec4<f32> = u_xlat2;
  u_xlat18 = dot(vec3<f32>(x_486.x, x_486.y, x_486.z), vec3<f32>(x_488.x, x_488.y, x_488.z));
  let x_491 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_491);
  let x_493 : f32 = u_xlat18;
  let x_495 : vec4<f32> = u_xlat2;
  let x_497 : vec3<f32> = (vec3<f32>(x_493, x_493, x_493) * vec3<f32>(x_495.x, x_495.y, x_495.z));
  let x_498 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_497.x, x_497.y, x_497.z, x_498.w);
  let x_500 : vec4<f32> = u_xlat2;
  let x_503 : vec3<f32> = u_xlat1;
  u_xlat18 = dot(-(vec3<f32>(x_500.x, x_500.y, x_500.z)), x_503);
  let x_505 : f32 = u_xlat18;
  let x_506 : f32 = u_xlat18;
  u_xlat18 = (x_505 + x_506);
  let x_508 : vec3<f32> = u_xlat1;
  let x_509 : f32 = u_xlat18;
  let x_513 : vec4<f32> = u_xlat2;
  let x_516 : vec3<f32> = ((x_508 * -(vec3<f32>(x_509, x_509, x_509))) + -(vec3<f32>(x_513.x, x_513.y, x_513.z)));
  let x_517 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_516.x, x_516.y, x_516.z, x_517.w);
  let x_519 : vec3<f32> = u_xlat1;
  let x_520 : vec3<f32> = u_xlat3;
  u_xlat18 = dot(x_519, -(x_520));
  let x_523 : f32 = u_xlat18;
  u_xlat18 = clamp(x_523, 0.0f, 1.0f);
  let x_525 : vec4<f32> = u_xlat2;
  let x_527 : vec3<f32> = u_xlat3;
  u_xlat1.x = dot(vec3<f32>(x_525.x, x_525.y, x_525.z), -(x_527));
  let x_532 : f32 = u_xlat1.x;
  let x_534 : f32 = u_xlat1.x;
  u_xlat1.x = (x_532 * x_534);
  let x_538 : f32 = u_xlat1.x;
  let x_540 : f32 = u_xlat1.x;
  u_xlat1.x = (x_538 * x_540);
  let x_544 : f32 = u_xlat5.w;
  u_xlat1.y = (-(x_544) + 1.0f);
  let x_553 : vec3<f32> = u_xlat1;
  let x_555 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_553.x, x_553.y));
  u_xlat1.x = x_555.x;
  let x_559 : f32 = u_xlat1.x;
  u_xlat1.x = (x_559 * 16.0f);
  let x_563 : vec3<f32> = u_xlat1;
  let x_565 : vec4<f32> = u_xlat5;
  let x_568 : vec4<f32> = u_xlat4;
  u_xlat1 = ((vec3<f32>(x_563.x, x_563.x, x_563.x) * vec3<f32>(x_565.x, x_565.y, x_565.z)) + vec3<f32>(x_568.x, x_568.y, x_568.z));
  let x_571 : f32 = u_xlat18;
  let x_573 : vec4<f32> = u_xlat0;
  let x_575 : vec3<f32> = (vec3<f32>(x_571, x_571, x_571) * vec3<f32>(x_573.x, x_573.y, x_573.z));
  let x_576 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_575.x, x_575.y, x_575.z, x_576.w);
  let x_578 : vec4<f32> = u_xlat0;
  let x_580 : vec3<f32> = u_xlat1;
  let x_581 : vec3<f32> = (vec3<f32>(x_578.x, x_578.y, x_578.z) * x_580);
  let x_582 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_581.x, x_581.y, x_581.z, x_582.w);
  u_xlat0.w = 1.0f;
  let x_587 : vec4<f32> = u_xlat0;
  SV_Target0 = exp2(-(x_587));
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


