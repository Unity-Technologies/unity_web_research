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
  var u_xlat0 : vec3<f32>;
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
  let x_156 : vec4<f32> = u_xlat2;
  let x_160 : vec4<f32> = x_14.x_LightPos;
  u_xlat6 = (vec3<f32>(x_156.x, x_156.y, x_156.w) + -(vec3<f32>(x_160.x, x_160.y, x_160.z)));
  let x_165 : vec3<f32> = u_xlat6;
  let x_166 : vec3<f32> = u_xlat6;
  u_xlat13 = dot(x_165, x_166);
  let x_169 : f32 = u_xlat13;
  u_xlat19 = inverseSqrt(x_169);
  let x_171 : vec3<f32> = u_xlat6;
  let x_172 : f32 = u_xlat19;
  u_xlat3 = (x_171 * vec3<f32>(x_172, x_172, x_172));
  let x_175 : f32 = u_xlat13;
  let x_177 : f32 = x_14.x_LightPos.w;
  u_xlat13 = (x_175 * x_177);
  let x_184 : f32 = u_xlat13;
  let x_186 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_184, x_184));
  u_xlat13 = x_186.x;
  let x_189 : f32 = u_xlat0.x;
  let x_192 : f32 = x_14.x_LightShadowData.z;
  let x_195 : f32 = x_14.x_LightShadowData.w;
  u_xlat0.x = ((x_189 * x_192) + x_195);
  let x_199 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_199, 0.0f, 1.0f);
  let x_207 : f32 = u_xlat0.x;
  u_xlatb19 = (x_207 < 0.99000001f);
  let x_210 : bool = u_xlatb19;
  if (x_210) {
    let x_214 : f32 = u_xlat6.y;
    let x_217 : f32 = u_xlat6.x;
    u_xlat19 = max(abs(x_214), abs(x_217));
    let x_221 : f32 = u_xlat6.z;
    let x_223 : f32 = u_xlat19;
    u_xlat19 = max(abs(x_221), x_223);
    let x_225 : f32 = u_xlat19;
    let x_228 : f32 = x_14.x_LightProjectionParams.z;
    u_xlat19 = (x_225 + -(x_228));
    let x_231 : f32 = u_xlat19;
    u_xlat19 = max(x_231, 0.00001f);
    let x_234 : f32 = u_xlat19;
    let x_236 : f32 = x_14.x_LightProjectionParams.w;
    u_xlat19 = (x_234 * x_236);
    let x_239 : f32 = x_14.x_LightProjectionParams.y;
    let x_240 : f32 = u_xlat19;
    u_xlat19 = (x_239 / x_240);
    let x_242 : f32 = u_xlat19;
    let x_244 : f32 = x_14.x_LightProjectionParams.x;
    u_xlat19 = (x_242 + -(x_244));
    let x_247 : f32 = u_xlat19;
    u_xlat19 = (-(x_247) + 1.0f);
    let x_251 : vec3<f32> = u_xlat6;
    let x_254 : vec3<f32> = (x_251 + vec3<f32>(0.0078125f, 0.0078125f, 0.0078125f));
    let x_255 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_254.x, x_254.y, x_254.z, x_255.w);
    let x_258 : vec4<f32> = u_xlat4;
    let x_259 : vec3<f32> = vec3<f32>(x_258.x, x_258.y, x_258.z);
    let x_260 : f32 = u_xlat19;
    txVec0 = vec4<f32>(x_259.x, x_259.y, x_259.z, x_260);
    let x_273 : vec4<f32> = txVec0;
    let x_275 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_273.xyz, x_273.w);
    u_xlat4.x = x_275;
    let x_278 : vec3<f32> = u_xlat6;
    let x_281 : vec3<f32> = (x_278 + vec3<f32>(-0.0078125f, -0.0078125f, 0.0078125f));
    let x_282 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_281.x, x_281.y, x_281.z, x_282.w);
    let x_285 : vec4<f32> = u_xlat5;
    let x_286 : vec3<f32> = vec3<f32>(x_285.x, x_285.y, x_285.z);
    let x_287 : f32 = u_xlat19;
    txVec1 = vec4<f32>(x_286.x, x_286.y, x_286.z, x_287);
    let x_295 : vec4<f32> = txVec1;
    let x_297 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_295.xyz, x_295.w);
    u_xlat4.y = x_297;
    let x_299 : vec3<f32> = u_xlat6;
    let x_301 : vec3<f32> = (x_299 + vec3<f32>(-0.0078125f, 0.0078125f, -0.0078125f));
    let x_302 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_301.x, x_301.y, x_301.z, x_302.w);
    let x_305 : vec4<f32> = u_xlat5;
    let x_306 : vec3<f32> = vec3<f32>(x_305.x, x_305.y, x_305.z);
    let x_307 : f32 = u_xlat19;
    txVec2 = vec4<f32>(x_306.x, x_306.y, x_306.z, x_307);
    let x_315 : vec4<f32> = txVec2;
    let x_317 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_315.xyz, x_315.w);
    u_xlat4.z = x_317;
    let x_319 : vec3<f32> = u_xlat6;
    u_xlat6 = (x_319 + vec3<f32>(0.0078125f, -0.0078125f, -0.0078125f));
    let x_323 : vec3<f32> = u_xlat6;
    let x_324 : f32 = u_xlat19;
    txVec3 = vec4<f32>(x_323.x, x_323.y, x_323.z, x_324);
    let x_332 : vec4<f32> = txVec3;
    let x_334 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_332.xyz, x_332.w);
    u_xlat4.w = x_334;
    let x_336 : vec4<f32> = u_xlat4;
    u_xlat6.x = dot(x_336, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    let x_343 : f32 = x_14.x_LightShadowData.x;
    u_xlat12 = (-(x_343) + 1.0f);
    let x_347 : f32 = u_xlat6.x;
    let x_348 : f32 = u_xlat12;
    let x_351 : f32 = x_14.x_LightShadowData.x;
    u_xlat6.x = ((x_347 * x_348) + x_351);
  } else {
    u_xlat6.x = 1.0f;
  }
  let x_357 : f32 = u_xlat6.x;
  u_xlat12 = (-(x_357) + 1.0f);
  let x_361 : f32 = u_xlat0.x;
  let x_362 : f32 = u_xlat12;
  let x_365 : f32 = u_xlat6.x;
  u_xlat0.x = ((x_361 * x_362) + x_365);
  let x_369 : f32 = u_xlat0.x;
  let x_370 : f32 = u_xlat13;
  u_xlat0.x = (x_369 * x_370);
  let x_373 : vec3<f32> = u_xlat0;
  let x_377 : vec4<f32> = x_14.x_LightColor;
  u_xlat0 = (vec3<f32>(x_373.x, x_373.x, x_373.x) * vec3<f32>(x_377.x, x_377.y, x_377.z));
  let x_385 : vec3<f32> = u_xlat1;
  let x_387 : vec4<f32> = textureSample(x_CameraGBufferTexture0, sampler_CameraGBufferTexture0, vec2<f32>(x_385.x, x_385.y));
  let x_388 : vec3<f32> = vec3<f32>(x_387.x, x_387.y, x_387.z);
  let x_389 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_388.x, x_388.y, x_388.z, x_389.w);
  let x_396 : vec3<f32> = u_xlat1;
  let x_398 : vec4<f32> = textureSample(x_CameraGBufferTexture1, sampler_CameraGBufferTexture1, vec2<f32>(x_396.x, x_396.y));
  u_xlat5 = x_398;
  let x_404 : vec3<f32> = u_xlat1;
  let x_406 : vec4<f32> = textureSample(x_CameraGBufferTexture2, sampler_CameraGBufferTexture2, vec2<f32>(x_404.x, x_404.y));
  u_xlat1 = vec3<f32>(x_406.x, x_406.y, x_406.z);
  let x_408 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_408 * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_415 : vec3<f32> = u_xlat1;
  let x_416 : vec3<f32> = u_xlat1;
  u_xlat18 = dot(x_415, x_416);
  let x_418 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_418);
  let x_420 : f32 = u_xlat18;
  let x_422 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_420, x_420, x_420) * x_422);
  let x_424 : vec4<f32> = u_xlat2;
  let x_428 : vec3<f32> = x_14.x_WorldSpaceCameraPos;
  let x_430 : vec3<f32> = (vec3<f32>(x_424.x, x_424.y, x_424.w) + -(x_428));
  let x_431 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_430.x, x_430.y, x_430.z, x_431.w);
  let x_433 : vec4<f32> = u_xlat2;
  let x_435 : vec4<f32> = u_xlat2;
  u_xlat18 = dot(vec3<f32>(x_433.x, x_433.y, x_433.z), vec3<f32>(x_435.x, x_435.y, x_435.z));
  let x_438 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_438);
  let x_440 : f32 = u_xlat18;
  let x_442 : vec4<f32> = u_xlat2;
  let x_444 : vec3<f32> = (vec3<f32>(x_440, x_440, x_440) * vec3<f32>(x_442.x, x_442.y, x_442.z));
  let x_445 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_444.x, x_444.y, x_444.z, x_445.w);
  let x_447 : vec4<f32> = u_xlat2;
  let x_450 : vec3<f32> = u_xlat1;
  u_xlat18 = dot(-(vec3<f32>(x_447.x, x_447.y, x_447.z)), x_450);
  let x_452 : f32 = u_xlat18;
  let x_453 : f32 = u_xlat18;
  u_xlat18 = (x_452 + x_453);
  let x_455 : vec3<f32> = u_xlat1;
  let x_456 : f32 = u_xlat18;
  let x_460 : vec4<f32> = u_xlat2;
  let x_463 : vec3<f32> = ((x_455 * -(vec3<f32>(x_456, x_456, x_456))) + -(vec3<f32>(x_460.x, x_460.y, x_460.z)));
  let x_464 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_463.x, x_463.y, x_463.z, x_464.w);
  let x_466 : vec3<f32> = u_xlat1;
  let x_467 : vec3<f32> = u_xlat3;
  u_xlat18 = dot(x_466, -(x_467));
  let x_470 : f32 = u_xlat18;
  u_xlat18 = clamp(x_470, 0.0f, 1.0f);
  let x_472 : vec4<f32> = u_xlat2;
  let x_474 : vec3<f32> = u_xlat3;
  u_xlat1.x = dot(vec3<f32>(x_472.x, x_472.y, x_472.z), -(x_474));
  let x_479 : f32 = u_xlat1.x;
  let x_481 : f32 = u_xlat1.x;
  u_xlat1.x = (x_479 * x_481);
  let x_485 : f32 = u_xlat1.x;
  let x_487 : f32 = u_xlat1.x;
  u_xlat1.x = (x_485 * x_487);
  let x_491 : f32 = u_xlat5.w;
  u_xlat1.y = (-(x_491) + 1.0f);
  let x_500 : vec3<f32> = u_xlat1;
  let x_502 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_500.x, x_500.y));
  u_xlat1.x = x_502.x;
  let x_506 : f32 = u_xlat1.x;
  u_xlat1.x = (x_506 * 16.0f);
  let x_510 : vec3<f32> = u_xlat1;
  let x_512 : vec4<f32> = u_xlat5;
  let x_515 : vec4<f32> = u_xlat4;
  u_xlat1 = ((vec3<f32>(x_510.x, x_510.x, x_510.x) * vec3<f32>(x_512.x, x_512.y, x_512.z)) + vec3<f32>(x_515.x, x_515.y, x_515.z));
  let x_518 : f32 = u_xlat18;
  let x_520 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_518, x_518, x_518) * x_520);
  let x_524 : vec3<f32> = u_xlat0;
  let x_525 : vec3<f32> = u_xlat1;
  let x_526 : vec3<f32> = (x_524 * x_525);
  let x_527 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_526.x, x_526.y, x_526.z, x_527.w);
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

