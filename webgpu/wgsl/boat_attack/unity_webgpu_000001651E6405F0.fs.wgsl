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

@group(0) @binding(7) var x_ShadowMapTexture : texture_depth_cube;

@group(0) @binding(11) var sampler_ShadowMapTexture : sampler_comparison;

@group(0) @binding(1) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(9) var sampler_LightTextureB0 : sampler;

@group(0) @binding(2) var x_LightTexture0 : texture_cube<f32>;

@group(0) @binding(10) var sampler_LightTexture0 : sampler;

@group(0) @binding(5) var x_CameraGBufferTexture2 : texture_2d<f32>;

@group(0) @binding(15) var sampler_CameraGBufferTexture2 : sampler;

@group(0) @binding(4) var x_CameraGBufferTexture1 : texture_2d<f32>;

@group(0) @binding(14) var sampler_CameraGBufferTexture1 : sampler;

@group(0) @binding(3) var x_CameraGBufferTexture0 : texture_2d<f32>;

@group(0) @binding(13) var sampler_CameraGBufferTexture0 : sampler;

@group(0) @binding(6) var unity_NHxRoughness : texture_2d<f32>;

@group(0) @binding(12) var samplerunity_NHxRoughness : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat15 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat11 : f32;
  var txVec0 : vec4<f32>;
  var u_xlat16 : f32;
  var u_xlat4 : vec3<f32>;
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
  u_xlat15 = x_62.x;
  let x_66 : f32 = x_14.x_ZBufferParams.x;
  let x_67 : f32 = u_xlat15;
  let x_71 : f32 = x_14.x_ZBufferParams.y;
  u_xlat15 = ((x_66 * x_67) + x_71);
  let x_74 : f32 = u_xlat15;
  u_xlat15 = (1.0f / x_74);
  let x_77 : f32 = u_xlat15;
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
  let x_142 : f32 = u_xlat15;
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
  u_xlat5 = (vec3<f32>(x_174.x, x_174.y, x_174.w) + -(vec3<f32>(x_178.x, x_178.y, x_178.z)));
  let x_184 : f32 = u_xlat5.y;
  let x_187 : f32 = u_xlat5.x;
  u_xlat11 = max(abs(x_184), abs(x_187));
  let x_191 : f32 = u_xlat5.z;
  let x_193 : f32 = u_xlat11;
  u_xlat11 = max(abs(x_191), x_193);
  let x_195 : f32 = u_xlat11;
  let x_198 : f32 = x_14.x_LightProjectionParams.z;
  u_xlat11 = (x_195 + -(x_198));
  let x_201 : f32 = u_xlat11;
  u_xlat11 = max(x_201, 0.00001f);
  let x_204 : f32 = u_xlat11;
  let x_206 : f32 = x_14.x_LightProjectionParams.w;
  u_xlat11 = (x_204 * x_206);
  let x_209 : f32 = x_14.x_LightProjectionParams.y;
  let x_210 : f32 = u_xlat11;
  u_xlat11 = (x_209 / x_210);
  let x_212 : f32 = u_xlat11;
  let x_214 : f32 = x_14.x_LightProjectionParams.x;
  u_xlat11 = (x_212 + -(x_214));
  let x_217 : f32 = u_xlat11;
  u_xlat11 = (-(x_217) + 1.0f);
  let x_221 : vec3<f32> = u_xlat5;
  let x_222 : f32 = u_xlat11;
  txVec0 = vec4<f32>(x_221.x, x_221.y, x_221.z, x_222);
  let x_235 : vec4<f32> = txVec0;
  let x_237 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_235.xyz, x_235.w);
  u_xlat11 = x_237;
  let x_240 : f32 = x_14.x_LightShadowData.x;
  u_xlat16 = (-(x_240) + 1.0f);
  let x_243 : f32 = u_xlat11;
  let x_244 : f32 = u_xlat16;
  let x_247 : f32 = x_14.x_LightShadowData.x;
  u_xlat11 = ((x_243 * x_244) + x_247);
  let x_249 : f32 = u_xlat11;
  u_xlat16 = (-(x_249) + 1.0f);
  let x_253 : f32 = u_xlat0.x;
  let x_254 : f32 = u_xlat16;
  let x_256 : f32 = u_xlat11;
  u_xlat0.x = ((x_253 * x_254) + x_256);
  let x_259 : vec3<f32> = u_xlat5;
  let x_260 : vec3<f32> = u_xlat5;
  u_xlat11 = dot(x_259, x_260);
  let x_262 : f32 = u_xlat11;
  let x_264 : f32 = x_14.x_LightPos.w;
  u_xlat16 = (x_262 * x_264);
  let x_266 : f32 = u_xlat11;
  u_xlat11 = inverseSqrt(x_266);
  let x_268 : vec3<f32> = u_xlat5;
  let x_269 : f32 = u_xlat11;
  u_xlat5 = (x_268 * vec3<f32>(x_269, x_269, x_269));
  let x_277 : f32 = u_xlat16;
  let x_279 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_277, x_277));
  u_xlat11 = x_279.x;
  let x_282 : f32 = u_xlat0.x;
  let x_283 : f32 = u_xlat11;
  u_xlat0.x = (x_282 * x_283);
  let x_286 : vec4<f32> = u_xlat2;
  let x_290 : vec4<f32> = x_14.unity_WorldToLight[1i];
  u_xlat3 = (vec3<f32>(x_286.y, x_286.y, x_286.y) * vec3<f32>(x_290.x, x_290.y, x_290.z));
  let x_294 : vec4<f32> = x_14.unity_WorldToLight[0i];
  let x_296 : vec4<f32> = u_xlat2;
  let x_299 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_294.x, x_294.y, x_294.z) * vec3<f32>(x_296.x, x_296.x, x_296.x)) + x_299);
  let x_302 : vec4<f32> = x_14.unity_WorldToLight[2i];
  let x_304 : vec4<f32> = u_xlat2;
  let x_307 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_302.x, x_302.y, x_302.z) * vec3<f32>(x_304.w, x_304.w, x_304.w)) + x_307);
  let x_309 : vec4<f32> = u_xlat2;
  let x_313 : vec3<f32> = x_14.x_WorldSpaceCameraPos;
  let x_315 : vec3<f32> = (vec3<f32>(x_309.x, x_309.y, x_309.w) + -(x_313));
  let x_316 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_315.x, x_315.y, x_315.z, x_316.w);
  let x_318 : vec3<f32> = u_xlat3;
  let x_320 : vec4<f32> = x_14.unity_WorldToLight[3i];
  u_xlat3 = (x_318 + vec3<f32>(x_320.x, x_320.y, x_320.z));
  let x_331 : vec3<f32> = u_xlat3;
  let x_333 : vec4<f32> = textureSampleBias(x_LightTexture0, sampler_LightTexture0, x_331, -8.0f);
  u_xlat11 = x_333.w;
  let x_336 : f32 = u_xlat0.x;
  let x_337 : f32 = u_xlat11;
  u_xlat0.x = (x_336 * x_337);
  let x_340 : vec4<f32> = u_xlat0;
  let x_344 : vec4<f32> = x_14.x_LightColor;
  u_xlat3 = (vec3<f32>(x_340.x, x_340.x, x_340.x) * vec3<f32>(x_344.x, x_344.y, x_344.z));
  let x_353 : vec3<f32> = u_xlat1;
  let x_355 : vec4<f32> = textureSample(x_CameraGBufferTexture2, sampler_CameraGBufferTexture2, vec2<f32>(x_353.x, x_353.y));
  u_xlat4 = vec3<f32>(x_355.x, x_355.y, x_355.z);
  let x_357 : vec3<f32> = u_xlat4;
  u_xlat4 = ((x_357 * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_364 : vec3<f32> = u_xlat4;
  let x_365 : vec3<f32> = u_xlat4;
  u_xlat0.x = dot(x_364, x_365);
  let x_369 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_369);
  let x_372 : vec4<f32> = u_xlat0;
  let x_374 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_372.x, x_372.x, x_372.x) * x_374);
  let x_376 : vec3<f32> = u_xlat4;
  let x_377 : vec3<f32> = u_xlat5;
  u_xlat0.x = dot(x_376, -(x_377));
  let x_382 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_382, 0.0f, 1.0f);
  let x_385 : vec4<f32> = u_xlat0;
  let x_387 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_385.x, x_385.x, x_385.x) * x_387);
  let x_389 : vec4<f32> = u_xlat2;
  let x_391 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(x_389.x, x_389.y, x_389.z), vec3<f32>(x_391.x, x_391.y, x_391.z));
  let x_396 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_396);
  let x_399 : vec4<f32> = u_xlat0;
  let x_401 : vec4<f32> = u_xlat2;
  let x_403 : vec3<f32> = (vec3<f32>(x_399.x, x_399.x, x_399.x) * vec3<f32>(x_401.x, x_401.y, x_401.z));
  let x_404 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_403.x, x_403.y, x_403.z, x_404.w);
  let x_406 : vec4<f32> = u_xlat2;
  let x_409 : vec3<f32> = u_xlat4;
  u_xlat0.x = dot(-(vec3<f32>(x_406.x, x_406.y, x_406.z)), x_409);
  let x_413 : f32 = u_xlat0.x;
  let x_415 : f32 = u_xlat0.x;
  u_xlat0.x = (x_413 + x_415);
  let x_418 : vec3<f32> = u_xlat4;
  let x_419 : vec4<f32> = u_xlat0;
  let x_423 : vec4<f32> = u_xlat2;
  let x_426 : vec3<f32> = ((x_418 * -(vec3<f32>(x_419.x, x_419.x, x_419.x))) + -(vec3<f32>(x_423.x, x_423.y, x_423.z)));
  let x_427 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_426.x, x_426.y, x_426.z, x_427.w);
  let x_429 : vec4<f32> = u_xlat2;
  let x_431 : vec3<f32> = u_xlat5;
  u_xlat0.x = dot(vec3<f32>(x_429.x, x_429.y, x_429.z), -(x_431));
  let x_436 : f32 = u_xlat0.x;
  let x_438 : f32 = u_xlat0.x;
  u_xlat0.x = (x_436 * x_438);
  let x_442 : f32 = u_xlat0.x;
  let x_444 : f32 = u_xlat0.x;
  u_xlat0.x = (x_442 * x_444);
  let x_452 : vec3<f32> = u_xlat1;
  let x_454 : vec4<f32> = textureSample(x_CameraGBufferTexture1, sampler_CameraGBufferTexture1, vec2<f32>(x_452.x, x_452.y));
  u_xlat2 = x_454;
  let x_460 : vec3<f32> = u_xlat1;
  let x_462 : vec4<f32> = textureSample(x_CameraGBufferTexture0, sampler_CameraGBufferTexture0, vec2<f32>(x_460.x, x_460.y));
  u_xlat1 = vec3<f32>(x_462.x, x_462.y, x_462.z);
  let x_465 : f32 = u_xlat2.w;
  u_xlat0.y = (-(x_465) + 1.0f);
  let x_474 : vec4<f32> = u_xlat0;
  let x_476 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_474.x, x_474.y));
  u_xlat0.x = x_476.x;
  let x_480 : f32 = u_xlat0.x;
  u_xlat0.x = (x_480 * 16.0f);
  let x_484 : vec4<f32> = u_xlat0;
  let x_486 : vec4<f32> = u_xlat2;
  let x_489 : vec3<f32> = u_xlat1;
  let x_490 : vec3<f32> = ((vec3<f32>(x_484.x, x_484.x, x_484.x) * vec3<f32>(x_486.x, x_486.y, x_486.z)) + x_489);
  let x_491 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_490.x, x_490.y, x_490.z, x_491.w);
  let x_493 : vec3<f32> = u_xlat3;
  let x_494 : vec4<f32> = u_xlat0;
  let x_496 : vec3<f32> = (x_493 * vec3<f32>(x_494.x, x_494.y, x_494.z));
  let x_497 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_496.x, x_496.y, x_496.z, x_497.w);
  u_xlat0.w = 1.0f;
  let x_502 : vec4<f32> = u_xlat0;
  SV_Target0 = exp2(-(x_502));
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

