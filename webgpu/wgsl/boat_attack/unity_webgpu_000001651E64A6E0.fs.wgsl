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

@group(1) @binding(0) var<uniform> x_14 : PGlobals;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(0) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_CameraDepthTexture : sampler;

@group(0) @binding(1) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(8) var sampler_LightTextureB0 : sampler;

@group(0) @binding(6) var x_ShadowMapTexture : texture_depth_cube;

@group(0) @binding(9) var sampler_ShadowMapTexture : sampler_comparison;

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
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat18 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat13 : f32;
  var u_xlat19 : f32;
  var u_xlatb19 : bool;
  var u_xlat4 : vec4<f32>;
  var txVec0 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var txVec1 : vec4<f32>;
  var txVec2 : vec4<f32>;
  var txVec3 : vec4<f32>;
  var u_xlat12 : f32;
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
  u_xlatb19 = (x_210 < 0.99000001f);
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
    u_xlat19 = max(x_234, 0.00001f);
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
    let x_261 : vec4<f32> = u_xlat4;
    let x_262 : vec3<f32> = vec3<f32>(x_261.x, x_261.y, x_261.z);
    let x_263 : f32 = u_xlat19;
    txVec0 = vec4<f32>(x_262.x, x_262.y, x_262.z, x_263);
    let x_276 : vec4<f32> = txVec0;
    let x_278 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_276.xyz, x_276.w);
    u_xlat4.x = x_278;
    let x_281 : vec3<f32> = u_xlat6;
    let x_284 : vec3<f32> = (x_281 + vec3<f32>(-0.0078125f, -0.0078125f, 0.0078125f));
    let x_285 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_284.x, x_284.y, x_284.z, x_285.w);
    let x_288 : vec4<f32> = u_xlat5;
    let x_289 : vec3<f32> = vec3<f32>(x_288.x, x_288.y, x_288.z);
    let x_290 : f32 = u_xlat19;
    txVec1 = vec4<f32>(x_289.x, x_289.y, x_289.z, x_290);
    let x_298 : vec4<f32> = txVec1;
    let x_300 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_298.xyz, x_298.w);
    u_xlat4.y = x_300;
    let x_302 : vec3<f32> = u_xlat6;
    let x_304 : vec3<f32> = (x_302 + vec3<f32>(-0.0078125f, 0.0078125f, -0.0078125f));
    let x_305 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_304.x, x_304.y, x_304.z, x_305.w);
    let x_308 : vec4<f32> = u_xlat5;
    let x_309 : vec3<f32> = vec3<f32>(x_308.x, x_308.y, x_308.z);
    let x_310 : f32 = u_xlat19;
    txVec2 = vec4<f32>(x_309.x, x_309.y, x_309.z, x_310);
    let x_318 : vec4<f32> = txVec2;
    let x_320 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_318.xyz, x_318.w);
    u_xlat4.z = x_320;
    let x_322 : vec3<f32> = u_xlat6;
    u_xlat6 = (x_322 + vec3<f32>(0.0078125f, -0.0078125f, -0.0078125f));
    let x_326 : vec3<f32> = u_xlat6;
    let x_327 : f32 = u_xlat19;
    txVec3 = vec4<f32>(x_326.x, x_326.y, x_326.z, x_327);
    let x_335 : vec4<f32> = txVec3;
    let x_337 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_335.xyz, x_335.w);
    u_xlat4.w = x_337;
    let x_339 : vec4<f32> = u_xlat4;
    u_xlat6.x = dot(x_339, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    let x_346 : f32 = x_14.x_LightShadowData.x;
    u_xlat12 = (-(x_346) + 1.0f);
    let x_350 : f32 = u_xlat6.x;
    let x_351 : f32 = u_xlat12;
    let x_354 : f32 = x_14.x_LightShadowData.x;
    u_xlat6.x = ((x_350 * x_351) + x_354);
  } else {
    u_xlat6.x = 1.0f;
  }
  let x_360 : f32 = u_xlat6.x;
  u_xlat12 = (-(x_360) + 1.0f);
  let x_364 : f32 = u_xlat0.x;
  let x_365 : f32 = u_xlat12;
  let x_368 : f32 = u_xlat6.x;
  u_xlat0.x = ((x_364 * x_365) + x_368);
  let x_372 : f32 = u_xlat0.x;
  let x_373 : f32 = u_xlat13;
  u_xlat0.x = (x_372 * x_373);
  let x_376 : vec4<f32> = u_xlat0;
  let x_380 : vec4<f32> = x_14.x_LightColor;
  let x_382 : vec3<f32> = (vec3<f32>(x_376.x, x_376.x, x_376.x) * vec3<f32>(x_380.x, x_380.y, x_380.z));
  let x_383 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_382.x, x_382.y, x_382.z, x_383.w);
  let x_390 : vec3<f32> = u_xlat1;
  let x_392 : vec4<f32> = textureSample(x_CameraGBufferTexture0, sampler_CameraGBufferTexture0, vec2<f32>(x_390.x, x_390.y));
  let x_393 : vec3<f32> = vec3<f32>(x_392.x, x_392.y, x_392.z);
  let x_394 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_393.x, x_393.y, x_393.z, x_394.w);
  let x_401 : vec3<f32> = u_xlat1;
  let x_403 : vec4<f32> = textureSample(x_CameraGBufferTexture1, sampler_CameraGBufferTexture1, vec2<f32>(x_401.x, x_401.y));
  u_xlat5 = x_403;
  let x_409 : vec3<f32> = u_xlat1;
  let x_411 : vec4<f32> = textureSample(x_CameraGBufferTexture2, sampler_CameraGBufferTexture2, vec2<f32>(x_409.x, x_409.y));
  u_xlat1 = vec3<f32>(x_411.x, x_411.y, x_411.z);
  let x_413 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_413 * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_420 : vec3<f32> = u_xlat1;
  let x_421 : vec3<f32> = u_xlat1;
  u_xlat18 = dot(x_420, x_421);
  let x_423 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_423);
  let x_425 : f32 = u_xlat18;
  let x_427 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_425, x_425, x_425) * x_427);
  let x_429 : vec4<f32> = u_xlat2;
  let x_433 : vec3<f32> = x_14.x_WorldSpaceCameraPos;
  let x_435 : vec3<f32> = (vec3<f32>(x_429.x, x_429.y, x_429.w) + -(x_433));
  let x_436 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_435.x, x_435.y, x_435.z, x_436.w);
  let x_438 : vec4<f32> = u_xlat2;
  let x_440 : vec4<f32> = u_xlat2;
  u_xlat18 = dot(vec3<f32>(x_438.x, x_438.y, x_438.z), vec3<f32>(x_440.x, x_440.y, x_440.z));
  let x_443 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_443);
  let x_445 : f32 = u_xlat18;
  let x_447 : vec4<f32> = u_xlat2;
  let x_449 : vec3<f32> = (vec3<f32>(x_445, x_445, x_445) * vec3<f32>(x_447.x, x_447.y, x_447.z));
  let x_450 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_449.x, x_449.y, x_449.z, x_450.w);
  let x_452 : vec4<f32> = u_xlat2;
  let x_455 : vec3<f32> = u_xlat1;
  u_xlat18 = dot(-(vec3<f32>(x_452.x, x_452.y, x_452.z)), x_455);
  let x_457 : f32 = u_xlat18;
  let x_458 : f32 = u_xlat18;
  u_xlat18 = (x_457 + x_458);
  let x_460 : vec3<f32> = u_xlat1;
  let x_461 : f32 = u_xlat18;
  let x_465 : vec4<f32> = u_xlat2;
  let x_468 : vec3<f32> = ((x_460 * -(vec3<f32>(x_461, x_461, x_461))) + -(vec3<f32>(x_465.x, x_465.y, x_465.z)));
  let x_469 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_468.x, x_468.y, x_468.z, x_469.w);
  let x_471 : vec3<f32> = u_xlat1;
  let x_472 : vec3<f32> = u_xlat3;
  u_xlat18 = dot(x_471, -(x_472));
  let x_475 : f32 = u_xlat18;
  u_xlat18 = clamp(x_475, 0.0f, 1.0f);
  let x_477 : vec4<f32> = u_xlat2;
  let x_479 : vec3<f32> = u_xlat3;
  u_xlat1.x = dot(vec3<f32>(x_477.x, x_477.y, x_477.z), -(x_479));
  let x_484 : f32 = u_xlat1.x;
  let x_486 : f32 = u_xlat1.x;
  u_xlat1.x = (x_484 * x_486);
  let x_490 : f32 = u_xlat1.x;
  let x_492 : f32 = u_xlat1.x;
  u_xlat1.x = (x_490 * x_492);
  let x_496 : f32 = u_xlat5.w;
  u_xlat1.y = (-(x_496) + 1.0f);
  let x_505 : vec3<f32> = u_xlat1;
  let x_507 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_505.x, x_505.y));
  u_xlat1.x = x_507.x;
  let x_511 : f32 = u_xlat1.x;
  u_xlat1.x = (x_511 * 16.0f);
  let x_515 : vec3<f32> = u_xlat1;
  let x_517 : vec4<f32> = u_xlat5;
  let x_520 : vec4<f32> = u_xlat4;
  u_xlat1 = ((vec3<f32>(x_515.x, x_515.x, x_515.x) * vec3<f32>(x_517.x, x_517.y, x_517.z)) + vec3<f32>(x_520.x, x_520.y, x_520.z));
  let x_523 : f32 = u_xlat18;
  let x_525 : vec4<f32> = u_xlat0;
  let x_527 : vec3<f32> = (vec3<f32>(x_523, x_523, x_523) * vec3<f32>(x_525.x, x_525.y, x_525.z));
  let x_528 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_527.x, x_527.y, x_527.z, x_528.w);
  let x_530 : vec4<f32> = u_xlat0;
  let x_532 : vec3<f32> = u_xlat1;
  let x_533 : vec3<f32> = (vec3<f32>(x_530.x, x_530.y, x_530.z) * x_532);
  let x_534 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_533.x, x_533.y, x_533.z, x_534.w);
  u_xlat0.w = 1.0f;
  let x_539 : vec4<f32> = u_xlat0;
  SV_Target0 = exp2(-(x_539));
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

