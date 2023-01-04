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

@group(0) @binding(8) var sampler_CameraDepthTexture : sampler;

@group(0) @binding(1) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(9) var sampler_LightTextureB0 : sampler;

@group(0) @binding(7) var x_ShadowMapTexture : texture_depth_cube;

@group(0) @binding(11) var sampler_ShadowMapTexture : sampler_comparison;

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
  let x_376 : vec4<f32> = u_xlat2;
  let x_380 : vec4<f32> = x_14.unity_WorldToLight[1i];
  u_xlat6 = (vec3<f32>(x_376.y, x_376.y, x_376.y) * vec3<f32>(x_380.x, x_380.y, x_380.z));
  let x_384 : vec4<f32> = x_14.unity_WorldToLight[0i];
  let x_386 : vec4<f32> = u_xlat2;
  let x_389 : vec3<f32> = u_xlat6;
  u_xlat6 = ((vec3<f32>(x_384.x, x_384.y, x_384.z) * vec3<f32>(x_386.x, x_386.x, x_386.x)) + x_389);
  let x_392 : vec4<f32> = x_14.unity_WorldToLight[2i];
  let x_394 : vec4<f32> = u_xlat2;
  let x_397 : vec3<f32> = u_xlat6;
  u_xlat6 = ((vec3<f32>(x_392.x, x_392.y, x_392.z) * vec3<f32>(x_394.w, x_394.w, x_394.w)) + x_397);
  let x_399 : vec3<f32> = u_xlat6;
  let x_401 : vec4<f32> = x_14.unity_WorldToLight[3i];
  u_xlat6 = (x_399 + vec3<f32>(x_401.x, x_401.y, x_401.z));
  let x_412 : vec3<f32> = u_xlat6;
  let x_414 : vec4<f32> = textureSampleBias(x_LightTexture0, sampler_LightTexture0, x_412, -8.0f);
  u_xlat6.x = x_414.w;
  let x_418 : f32 = u_xlat6.x;
  let x_420 : f32 = u_xlat0.x;
  u_xlat0.x = (x_418 * x_420);
  let x_423 : vec4<f32> = u_xlat0;
  let x_427 : vec4<f32> = x_14.x_LightColor;
  let x_429 : vec3<f32> = (vec3<f32>(x_423.x, x_423.x, x_423.x) * vec3<f32>(x_427.x, x_427.y, x_427.z));
  let x_430 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_429.x, x_429.y, x_429.z, x_430.w);
  let x_437 : vec3<f32> = u_xlat1;
  let x_439 : vec4<f32> = textureSample(x_CameraGBufferTexture0, sampler_CameraGBufferTexture0, vec2<f32>(x_437.x, x_437.y));
  let x_440 : vec3<f32> = vec3<f32>(x_439.x, x_439.y, x_439.z);
  let x_441 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_440.x, x_440.y, x_440.z, x_441.w);
  let x_448 : vec3<f32> = u_xlat1;
  let x_450 : vec4<f32> = textureSample(x_CameraGBufferTexture1, sampler_CameraGBufferTexture1, vec2<f32>(x_448.x, x_448.y));
  u_xlat5 = x_450;
  let x_456 : vec3<f32> = u_xlat1;
  let x_458 : vec4<f32> = textureSample(x_CameraGBufferTexture2, sampler_CameraGBufferTexture2, vec2<f32>(x_456.x, x_456.y));
  u_xlat1 = vec3<f32>(x_458.x, x_458.y, x_458.z);
  let x_460 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_460 * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_467 : vec3<f32> = u_xlat1;
  let x_468 : vec3<f32> = u_xlat1;
  u_xlat18 = dot(x_467, x_468);
  let x_470 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_470);
  let x_472 : f32 = u_xlat18;
  let x_474 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_472, x_472, x_472) * x_474);
  let x_476 : vec4<f32> = u_xlat2;
  let x_480 : vec3<f32> = x_14.x_WorldSpaceCameraPos;
  let x_482 : vec3<f32> = (vec3<f32>(x_476.x, x_476.y, x_476.w) + -(x_480));
  let x_483 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_482.x, x_482.y, x_482.z, x_483.w);
  let x_485 : vec4<f32> = u_xlat2;
  let x_487 : vec4<f32> = u_xlat2;
  u_xlat18 = dot(vec3<f32>(x_485.x, x_485.y, x_485.z), vec3<f32>(x_487.x, x_487.y, x_487.z));
  let x_490 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_490);
  let x_492 : f32 = u_xlat18;
  let x_494 : vec4<f32> = u_xlat2;
  let x_496 : vec3<f32> = (vec3<f32>(x_492, x_492, x_492) * vec3<f32>(x_494.x, x_494.y, x_494.z));
  let x_497 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_496.x, x_496.y, x_496.z, x_497.w);
  let x_499 : vec4<f32> = u_xlat2;
  let x_502 : vec3<f32> = u_xlat1;
  u_xlat18 = dot(-(vec3<f32>(x_499.x, x_499.y, x_499.z)), x_502);
  let x_504 : f32 = u_xlat18;
  let x_505 : f32 = u_xlat18;
  u_xlat18 = (x_504 + x_505);
  let x_507 : vec3<f32> = u_xlat1;
  let x_508 : f32 = u_xlat18;
  let x_512 : vec4<f32> = u_xlat2;
  let x_515 : vec3<f32> = ((x_507 * -(vec3<f32>(x_508, x_508, x_508))) + -(vec3<f32>(x_512.x, x_512.y, x_512.z)));
  let x_516 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_515.x, x_515.y, x_515.z, x_516.w);
  let x_518 : vec3<f32> = u_xlat1;
  let x_519 : vec3<f32> = u_xlat3;
  u_xlat18 = dot(x_518, -(x_519));
  let x_522 : f32 = u_xlat18;
  u_xlat18 = clamp(x_522, 0.0f, 1.0f);
  let x_524 : vec4<f32> = u_xlat2;
  let x_526 : vec3<f32> = u_xlat3;
  u_xlat1.x = dot(vec3<f32>(x_524.x, x_524.y, x_524.z), -(x_526));
  let x_531 : f32 = u_xlat1.x;
  let x_533 : f32 = u_xlat1.x;
  u_xlat1.x = (x_531 * x_533);
  let x_537 : f32 = u_xlat1.x;
  let x_539 : f32 = u_xlat1.x;
  u_xlat1.x = (x_537 * x_539);
  let x_543 : f32 = u_xlat5.w;
  u_xlat1.y = (-(x_543) + 1.0f);
  let x_552 : vec3<f32> = u_xlat1;
  let x_554 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_552.x, x_552.y));
  u_xlat1.x = x_554.x;
  let x_558 : f32 = u_xlat1.x;
  u_xlat1.x = (x_558 * 16.0f);
  let x_562 : vec3<f32> = u_xlat1;
  let x_564 : vec4<f32> = u_xlat5;
  let x_567 : vec4<f32> = u_xlat4;
  u_xlat1 = ((vec3<f32>(x_562.x, x_562.x, x_562.x) * vec3<f32>(x_564.x, x_564.y, x_564.z)) + vec3<f32>(x_567.x, x_567.y, x_567.z));
  let x_570 : f32 = u_xlat18;
  let x_572 : vec4<f32> = u_xlat0;
  let x_574 : vec3<f32> = (vec3<f32>(x_570, x_570, x_570) * vec3<f32>(x_572.x, x_572.y, x_572.z));
  let x_575 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_574.x, x_574.y, x_574.z, x_575.w);
  let x_577 : vec4<f32> = u_xlat0;
  let x_579 : vec3<f32> = u_xlat1;
  let x_580 : vec3<f32> = (vec3<f32>(x_577.x, x_577.y, x_577.z) * x_579);
  let x_581 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_580.x, x_580.y, x_580.z, x_581.w);
  u_xlat0.w = 1.0f;
  let x_586 : vec4<f32> = u_xlat0;
  SV_Target0 = exp2(-(x_586));
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

