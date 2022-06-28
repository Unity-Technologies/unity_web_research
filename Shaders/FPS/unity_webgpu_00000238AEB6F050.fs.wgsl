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

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var<uniform> x_14 : PGlobals;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat1 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat24 : f32;

@group(0) @binding(1) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_CameraDepthTexture : sampler;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlat17 : f32;

var<private> u_xlat25 : f32;

@group(0) @binding(2) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(9) var sampler_LightTextureB0 : sampler;

var<private> u_xlatb18 : bool;

var<private> u_xlat18 : f32;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(7) var x_ShadowMapTexture : texture_depth_cube;

@group(0) @binding(11) var sampler_ShadowMapTexture : sampler_comparison;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat27 : f32;

@group(0) @binding(3) var x_LightTexture0 : texture_cube<f32>;

@group(0) @binding(10) var sampler_LightTexture0 : sampler;

@group(0) @binding(4) var x_CameraGBufferTexture0 : texture_2d<f32>;

@group(0) @binding(12) var sampler_CameraGBufferTexture0 : sampler;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(5) var x_CameraGBufferTexture1 : texture_2d<f32>;

@group(0) @binding(13) var sampler_CameraGBufferTexture1 : sampler;

@group(0) @binding(6) var x_CameraGBufferTexture2 : texture_2d<f32>;

@group(0) @binding(14) var sampler_CameraGBufferTexture2 : sampler;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat16 : f32;

var<private> u_xlat9 : f32;

var<private> u_xlatb24 : bool;

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
  u_xlat24 = x_62.x;
  let x_66 : f32 = x_14.x_ZBufferParams.x;
  let x_67 : f32 = u_xlat24;
  let x_71 : f32 = x_14.x_ZBufferParams.y;
  u_xlat24 = ((x_66 * x_67) + x_71);
  let x_74 : f32 = u_xlat24;
  u_xlat24 = (1.0f / x_74);
  let x_77 : f32 = u_xlat24;
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
  let x_142 : f32 = u_xlat24;
  let x_145 : f32 = u_xlat0.x;
  u_xlat0.x = ((-(x_140) * x_142) + x_145);
  let x_150 : f32 = x_14.unity_ShadowFadeCenterAndType.w;
  let x_152 : f32 = u_xlat0.x;
  let x_155 : f32 = u_xlat2.z;
  u_xlat0.x = ((x_150 * x_152) + x_155);
  let x_159 : vec4<f32> = u_xlat2;
  let x_163 : vec4<f32> = x_14.x_LightPos;
  u_xlat8 = (vec3<f32>(x_159.x, x_159.y, x_159.w) + -(vec3<f32>(x_163.x, x_163.y, x_163.z)));
  let x_168 : vec3<f32> = u_xlat8;
  let x_169 : vec3<f32> = u_xlat8;
  u_xlat17 = dot(x_168, x_169);
  let x_172 : f32 = u_xlat17;
  u_xlat25 = inverseSqrt(x_172);
  let x_174 : vec3<f32> = u_xlat8;
  let x_175 : f32 = u_xlat25;
  u_xlat3 = (x_174 * vec3<f32>(x_175, x_175, x_175));
  let x_178 : f32 = u_xlat17;
  let x_180 : f32 = x_14.x_LightPos.w;
  u_xlat17 = (x_178 * x_180);
  let x_187 : f32 = u_xlat17;
  let x_189 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_187, x_187));
  u_xlat17 = x_189.x;
  let x_192 : f32 = u_xlat0.x;
  let x_195 : f32 = x_14.x_LightShadowData.z;
  let x_198 : f32 = x_14.x_LightShadowData.w;
  u_xlat0.x = ((x_192 * x_195) + x_198);
  let x_202 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_202, 0.0f, 1.0f);
  let x_210 : f32 = u_xlat0.x;
  u_xlatb18 = (x_210 < 0.99000001f);
  let x_213 : bool = u_xlatb18;
  if (x_213) {
    let x_218 : f32 = u_xlat8.y;
    let x_221 : f32 = u_xlat8.x;
    u_xlat18 = max(abs(x_218), abs(x_221));
    let x_225 : f32 = u_xlat8.z;
    let x_227 : f32 = u_xlat18;
    u_xlat18 = max(abs(x_225), x_227);
    let x_229 : f32 = u_xlat18;
    let x_232 : f32 = x_14.x_LightProjectionParams.z;
    u_xlat18 = (x_229 + -(x_232));
    let x_235 : f32 = u_xlat18;
    u_xlat18 = max(x_235, 0.00001f);
    let x_238 : f32 = u_xlat18;
    let x_240 : f32 = x_14.x_LightProjectionParams.w;
    u_xlat18 = (x_238 * x_240);
    let x_243 : f32 = x_14.x_LightProjectionParams.y;
    let x_244 : f32 = u_xlat18;
    u_xlat18 = (x_243 / x_244);
    let x_246 : f32 = u_xlat18;
    let x_248 : f32 = x_14.x_LightProjectionParams.x;
    u_xlat18 = (x_246 + -(x_248));
    let x_251 : f32 = u_xlat18;
    u_xlat18 = (-(x_251) + 1.0f);
    let x_255 : vec3<f32> = u_xlat8;
    let x_258 : vec3<f32> = (x_255 + vec3<f32>(0.0078125f, 0.0078125f, 0.0078125f));
    let x_259 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_258.x, x_258.y, x_258.z, x_259.w);
    let x_263 : vec4<f32> = u_xlat4;
    let x_264 : vec3<f32> = vec3<f32>(x_263.x, x_263.y, x_263.z);
    let x_265 : f32 = u_xlat18;
    txVec0 = vec4<f32>(x_264.x, x_264.y, x_264.z, x_265);
    let x_278 : vec4<f32> = txVec0;
    let x_280 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_278.xyz, x_278.w);
    u_xlat4.x = x_280;
    let x_283 : vec3<f32> = u_xlat8;
    u_xlat5 = (x_283 + vec3<f32>(-0.0078125f, -0.0078125f, 0.0078125f));
    let x_288 : vec3<f32> = u_xlat5;
    let x_289 : f32 = u_xlat18;
    txVec1 = vec4<f32>(x_288.x, x_288.y, x_288.z, x_289);
    let x_297 : vec4<f32> = txVec1;
    let x_299 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_297.xyz, x_297.w);
    u_xlat4.y = x_299;
    let x_301 : vec3<f32> = u_xlat8;
    u_xlat5 = (x_301 + vec3<f32>(-0.0078125f, 0.0078125f, -0.0078125f));
    let x_305 : vec3<f32> = u_xlat5;
    let x_306 : f32 = u_xlat18;
    txVec2 = vec4<f32>(x_305.x, x_305.y, x_305.z, x_306);
    let x_314 : vec4<f32> = txVec2;
    let x_316 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_314.xyz, x_314.w);
    u_xlat4.z = x_316;
    let x_318 : vec3<f32> = u_xlat8;
    u_xlat5 = (x_318 + vec3<f32>(0.0078125f, -0.0078125f, -0.0078125f));
    let x_322 : vec3<f32> = u_xlat5;
    let x_323 : f32 = u_xlat18;
    txVec3 = vec4<f32>(x_322.x, x_322.y, x_322.z, x_323);
    let x_331 : vec4<f32> = txVec3;
    let x_333 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_331.xyz, x_331.w);
    u_xlat4.w = x_333;
    let x_335 : vec4<f32> = u_xlat4;
    u_xlat18 = dot(x_335, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    let x_341 : f32 = x_14.x_LightShadowData.x;
    u_xlat27 = (-(x_341) + 1.0f);
    let x_344 : f32 = u_xlat18;
    let x_345 : f32 = u_xlat27;
    let x_348 : f32 = x_14.x_LightShadowData.x;
    u_xlat18 = ((x_344 * x_345) + x_348);
  } else {
    u_xlat18 = 1.0f;
  }
  let x_351 : f32 = u_xlat18;
  u_xlat27 = (-(x_351) + 1.0f);
  let x_355 : f32 = u_xlat0.x;
  let x_356 : f32 = u_xlat27;
  let x_358 : f32 = u_xlat18;
  u_xlat0.x = ((x_355 * x_356) + x_358);
  let x_362 : f32 = u_xlat0.x;
  let x_363 : f32 = u_xlat17;
  u_xlat0.x = (x_362 * x_363);
  let x_366 : vec4<f32> = u_xlat2;
  let x_370 : vec4<f32> = x_14.unity_WorldToLight[1i];
  let x_372 : vec3<f32> = (vec3<f32>(x_366.y, x_366.y, x_366.y) * vec3<f32>(x_370.x, x_370.y, x_370.z));
  let x_373 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_372.x, x_372.y, x_372.z, x_373.w);
  let x_376 : vec4<f32> = x_14.unity_WorldToLight[0i];
  let x_378 : vec4<f32> = u_xlat2;
  let x_381 : vec4<f32> = u_xlat4;
  let x_383 : vec3<f32> = ((vec3<f32>(x_376.x, x_376.y, x_376.z) * vec3<f32>(x_378.x, x_378.x, x_378.x)) + vec3<f32>(x_381.x, x_381.y, x_381.z));
  let x_384 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_383.x, x_383.y, x_383.z, x_384.w);
  let x_387 : vec4<f32> = x_14.unity_WorldToLight[2i];
  let x_389 : vec4<f32> = u_xlat2;
  let x_392 : vec4<f32> = u_xlat4;
  let x_394 : vec3<f32> = ((vec3<f32>(x_387.x, x_387.y, x_387.z) * vec3<f32>(x_389.w, x_389.w, x_389.w)) + vec3<f32>(x_392.x, x_392.y, x_392.z));
  let x_395 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_394.x, x_394.y, x_394.z, x_395.w);
  let x_397 : vec4<f32> = u_xlat4;
  let x_400 : vec4<f32> = x_14.unity_WorldToLight[3i];
  let x_402 : vec3<f32> = (vec3<f32>(x_397.x, x_397.y, x_397.z) + vec3<f32>(x_400.x, x_400.y, x_400.z));
  let x_403 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_402.x, x_402.y, x_402.z, x_403.w);
  let x_413 : vec4<f32> = u_xlat4;
  let x_416 : vec4<f32> = textureSampleBias(x_LightTexture0, sampler_LightTexture0, vec3<f32>(x_413.x, x_413.y, x_413.z), -8.0f);
  u_xlat17 = x_416.w;
  let x_419 : f32 = u_xlat0.x;
  let x_420 : f32 = u_xlat17;
  u_xlat0.x = (x_419 * x_420);
  let x_423 : vec4<f32> = u_xlat0;
  let x_427 : vec4<f32> = x_14.x_LightColor;
  let x_429 : vec3<f32> = (vec3<f32>(x_423.x, x_423.x, x_423.x) * vec3<f32>(x_427.x, x_427.y, x_427.z));
  let x_430 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_429.x, x_429.y, x_429.z, x_430.w);
  let x_437 : vec3<f32> = u_xlat1;
  let x_439 : vec4<f32> = textureSample(x_CameraGBufferTexture0, sampler_CameraGBufferTexture0, vec2<f32>(x_437.x, x_437.y));
  u_xlat5 = vec3<f32>(x_439.x, x_439.y, x_439.z);
  let x_447 : vec3<f32> = u_xlat1;
  let x_449 : vec4<f32> = textureSample(x_CameraGBufferTexture1, sampler_CameraGBufferTexture1, vec2<f32>(x_447.x, x_447.y));
  u_xlat6 = x_449;
  let x_455 : vec3<f32> = u_xlat1;
  let x_457 : vec4<f32> = textureSample(x_CameraGBufferTexture2, sampler_CameraGBufferTexture2, vec2<f32>(x_455.x, x_455.y));
  u_xlat1 = vec3<f32>(x_457.x, x_457.y, x_457.z);
  let x_459 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_459 * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_466 : vec3<f32> = u_xlat1;
  let x_467 : vec3<f32> = u_xlat1;
  u_xlat0.x = dot(x_466, x_467);
  let x_471 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_471);
  let x_474 : vec4<f32> = u_xlat0;
  let x_476 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_474.x, x_474.x, x_474.x) * x_476);
  let x_478 : vec4<f32> = u_xlat2;
  let x_482 : vec3<f32> = x_14.x_WorldSpaceCameraPos;
  let x_484 : vec3<f32> = (vec3<f32>(x_478.x, x_478.y, x_478.w) + -(x_482));
  let x_485 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_484.x, x_484.y, x_484.z, x_485.w);
  let x_487 : vec4<f32> = u_xlat2;
  let x_489 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(x_487.x, x_487.y, x_487.z), vec3<f32>(x_489.x, x_489.y, x_489.z));
  let x_494 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_494);
  let x_497 : vec4<f32> = u_xlat0;
  let x_499 : vec4<f32> = u_xlat2;
  let x_501 : vec3<f32> = (vec3<f32>(x_497.x, x_497.x, x_497.x) * vec3<f32>(x_499.x, x_499.y, x_499.z));
  let x_502 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_501.x, x_501.y, x_501.z, x_502.w);
  let x_505 : vec4<f32> = u_xlat6;
  u_xlat7 = (-(vec4<f32>(x_505.w, x_505.x, x_505.y, x_505.z)) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_510 : vec3<f32> = u_xlat8;
  let x_512 : f32 = u_xlat25;
  let x_515 : vec4<f32> = u_xlat2;
  let x_518 : vec3<f32> = ((-(x_510) * vec3<f32>(x_512, x_512, x_512)) + -(vec3<f32>(x_515.x, x_515.y, x_515.z)));
  let x_519 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_518.x, x_518.y, x_518.z, x_519.w);
  let x_521 : vec4<f32> = u_xlat0;
  let x_523 : vec4<f32> = u_xlat0;
  u_xlat24 = dot(vec3<f32>(x_521.x, x_521.y, x_521.z), vec3<f32>(x_523.x, x_523.y, x_523.z));
  let x_526 : f32 = u_xlat24;
  u_xlat24 = max(x_526, 0.001f);
  let x_529 : f32 = u_xlat24;
  u_xlat24 = inverseSqrt(x_529);
  let x_531 : f32 = u_xlat24;
  let x_533 : vec4<f32> = u_xlat0;
  let x_535 : vec3<f32> = (vec3<f32>(x_531, x_531, x_531) * vec3<f32>(x_533.x, x_533.y, x_533.z));
  let x_536 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_535.x, x_535.y, x_535.z, x_536.w);
  let x_538 : vec3<f32> = u_xlat1;
  let x_539 : vec4<f32> = u_xlat2;
  u_xlat24 = dot(x_538, -(vec3<f32>(x_539.x, x_539.y, x_539.z)));
  let x_543 : vec3<f32> = u_xlat1;
  let x_544 : vec3<f32> = u_xlat3;
  u_xlat25 = dot(x_543, -(x_544));
  let x_547 : f32 = u_xlat25;
  u_xlat25 = clamp(x_547, 0.0f, 1.0f);
  let x_549 : vec3<f32> = u_xlat1;
  let x_550 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(x_549, vec3<f32>(x_550.x, x_550.y, x_550.z));
  let x_555 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_555, 0.0f, 1.0f);
  let x_558 : vec3<f32> = u_xlat3;
  let x_560 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(-(x_558), vec3<f32>(x_560.x, x_560.y, x_560.z));
  let x_565 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_565, 0.0f, 1.0f);
  let x_569 : f32 = u_xlat0.x;
  let x_571 : f32 = u_xlat0.x;
  u_xlat8.x = (x_569 * x_571);
  let x_574 : vec3<f32> = u_xlat8;
  let x_576 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(vec2<f32>(x_574.x, x_574.x), vec2<f32>(x_576.x, x_576.x));
  let x_581 : f32 = u_xlat8.x;
  u_xlat8.x = (x_581 + -0.5f);
  let x_586 : f32 = u_xlat25;
  u_xlat16 = (-(x_586) + 1.0f);
  let x_590 : f32 = u_xlat16;
  let x_591 : f32 = u_xlat16;
  u_xlat9 = (x_590 * x_591);
  let x_593 : f32 = u_xlat9;
  let x_594 : f32 = u_xlat9;
  u_xlat9 = (x_593 * x_594);
  let x_596 : f32 = u_xlat16;
  let x_597 : f32 = u_xlat9;
  u_xlat16 = (x_596 * x_597);
  let x_600 : f32 = u_xlat8.x;
  let x_601 : f32 = u_xlat16;
  u_xlat16 = ((x_600 * x_601) + 1.0f);
  let x_604 : f32 = u_xlat24;
  u_xlat9 = (-(abs(x_604)) + 1.0f);
  let x_608 : f32 = u_xlat9;
  let x_609 : f32 = u_xlat9;
  u_xlat17 = (x_608 * x_609);
  let x_611 : f32 = u_xlat17;
  let x_612 : f32 = u_xlat17;
  u_xlat17 = (x_611 * x_612);
  let x_614 : f32 = u_xlat9;
  let x_615 : f32 = u_xlat17;
  u_xlat9 = (x_614 * x_615);
  let x_618 : f32 = u_xlat8.x;
  let x_619 : f32 = u_xlat9;
  u_xlat8.x = ((x_618 * x_619) + 1.0f);
  let x_624 : f32 = u_xlat8.x;
  let x_625 : f32 = u_xlat16;
  u_xlat8.x = (x_624 * x_625);
  let x_629 : f32 = u_xlat7.x;
  let x_631 : f32 = u_xlat7.x;
  u_xlat16 = (x_629 * x_631);
  let x_633 : f32 = u_xlat16;
  u_xlat16 = max(x_633, 0.002f);
  let x_636 : f32 = u_xlat16;
  u_xlat9 = (-(x_636) + 1.0f);
  let x_639 : f32 = u_xlat24;
  let x_641 : f32 = u_xlat9;
  let x_643 : f32 = u_xlat16;
  u_xlat17 = ((abs(x_639) * x_641) + x_643);
  let x_645 : f32 = u_xlat25;
  let x_646 : f32 = u_xlat9;
  let x_648 : f32 = u_xlat16;
  u_xlat9 = ((x_645 * x_646) + x_648);
  let x_650 : f32 = u_xlat24;
  let x_652 : f32 = u_xlat9;
  u_xlat24 = (abs(x_650) * x_652);
  let x_654 : f32 = u_xlat25;
  let x_655 : f32 = u_xlat17;
  let x_657 : f32 = u_xlat24;
  u_xlat24 = ((x_654 * x_655) + x_657);
  let x_659 : f32 = u_xlat24;
  u_xlat24 = (x_659 + 0.00001f);
  let x_662 : f32 = u_xlat24;
  u_xlat24 = (0.5f / x_662);
  let x_664 : f32 = u_xlat16;
  let x_665 : f32 = u_xlat16;
  u_xlat16 = (x_664 * x_665);
  let x_668 : f32 = u_xlat1.x;
  let x_669 : f32 = u_xlat16;
  let x_672 : f32 = u_xlat1.x;
  u_xlat9 = ((x_668 * x_669) + -(x_672));
  let x_675 : f32 = u_xlat9;
  let x_677 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_675 * x_677) + 1.0f);
  let x_681 : f32 = u_xlat16;
  u_xlat16 = (x_681 * 0.318309873f);
  let x_685 : f32 = u_xlat1.x;
  let x_687 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_685 * x_687) + 0.0000001f);
  let x_692 : f32 = u_xlat16;
  let x_694 : f32 = u_xlat1.x;
  u_xlat16 = (x_692 / x_694);
  let x_696 : f32 = u_xlat16;
  let x_697 : f32 = u_xlat24;
  u_xlat8.y = (x_696 * x_697);
  let x_700 : f32 = u_xlat25;
  let x_702 : vec3<f32> = u_xlat8;
  let x_704 : vec2<f32> = (vec2<f32>(x_700, x_700) * vec2<f32>(x_702.x, x_702.y));
  let x_705 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_704.x, x_704.y, x_705.z);
  let x_708 : f32 = u_xlat8.y;
  u_xlat16 = (x_708 * 3.141592741f);
  let x_711 : f32 = u_xlat16;
  u_xlat16 = max(x_711, 0.0f);
  let x_713 : vec4<f32> = u_xlat6;
  let x_715 : vec4<f32> = u_xlat6;
  u_xlat24 = dot(vec3<f32>(x_713.x, x_713.y, x_713.z), vec3<f32>(x_715.x, x_715.y, x_715.z));
  let x_719 : f32 = u_xlat24;
  u_xlatb24 = !((x_719 == 0.0f));
  let x_721 : bool = u_xlatb24;
  u_xlat24 = select(0.0f, 1.0f, x_721);
  let x_723 : f32 = u_xlat24;
  let x_724 : f32 = u_xlat16;
  u_xlat16 = (x_723 * x_724);
  let x_726 : vec3<f32> = u_xlat8;
  let x_728 : vec4<f32> = u_xlat4;
  u_xlat1 = (vec3<f32>(x_726.x, x_726.x, x_726.x) * vec3<f32>(x_728.x, x_728.y, x_728.z));
  let x_731 : vec4<f32> = u_xlat4;
  let x_733 : f32 = u_xlat16;
  u_xlat8 = (vec3<f32>(x_731.x, x_731.y, x_731.z) * vec3<f32>(x_733, x_733, x_733));
  let x_737 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_737) + 1.0f);
  let x_742 : f32 = u_xlat0.x;
  let x_744 : f32 = u_xlat0.x;
  u_xlat25 = (x_742 * x_744);
  let x_746 : f32 = u_xlat25;
  let x_747 : f32 = u_xlat25;
  u_xlat25 = (x_746 * x_747);
  let x_750 : f32 = u_xlat0.x;
  let x_751 : f32 = u_xlat25;
  u_xlat0.x = (x_750 * x_751);
  let x_754 : vec4<f32> = u_xlat7;
  let x_756 : vec4<f32> = u_xlat0;
  let x_759 : vec4<f32> = u_xlat6;
  let x_761 : vec3<f32> = ((vec3<f32>(x_754.y, x_754.z, x_754.w) * vec3<f32>(x_756.x, x_756.x, x_756.x)) + vec3<f32>(x_759.x, x_759.y, x_759.z));
  let x_762 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_761.x, x_761.y, x_761.z, x_762.w);
  let x_764 : vec3<f32> = u_xlat8;
  let x_765 : vec4<f32> = u_xlat2;
  let x_767 : vec3<f32> = (x_764 * vec3<f32>(x_765.x, x_765.y, x_765.z));
  let x_768 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_767.x, x_767.y, x_767.z, x_768.w);
  let x_770 : vec3<f32> = u_xlat5;
  let x_771 : vec3<f32> = u_xlat1;
  let x_773 : vec4<f32> = u_xlat0;
  let x_775 : vec3<f32> = ((x_770 * x_771) + vec3<f32>(x_773.x, x_773.y, x_773.z));
  let x_776 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_775.x, x_775.y, x_775.z, x_776.w);
  u_xlat0.w = 1.0f;
  let x_781 : vec4<f32> = u_xlat0;
  SV_Target0 = exp2(-(x_781));
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

