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

var<private> u_xlat15 : f32;

@group(0) @binding(0) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_CameraDepthTexture : sampler;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat11 : f32;

@group(0) @binding(7) var x_ShadowMapTexture : texture_depth_cube;

@group(0) @binding(11) var sampler_ShadowMapTexture : sampler_comparison;

var<private> u_xlat16 : f32;

@group(0) @binding(1) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(9) var sampler_LightTextureB0 : sampler;

@group(0) @binding(2) var x_LightTexture0 : texture_cube<f32>;

@group(0) @binding(10) var sampler_LightTexture0 : sampler;

var<private> u_xlat4 : vec3<f32>;

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
  u_xlat11 = max(x_201, 0.00000999999974737875f);
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
  let x_222 : vec3<f32> = u_xlat5;
  let x_223 : f32 = u_xlat11;
  txVec0 = vec4<f32>(x_222.x, x_222.y, x_222.z, x_223);
  let x_236 : vec4<f32> = txVec0;
  let x_238 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_236.xyz, x_236.w);
  u_xlat11 = x_238;
  let x_241 : f32 = x_14.x_LightShadowData.x;
  u_xlat16 = (-(x_241) + 1.0f);
  let x_244 : f32 = u_xlat11;
  let x_245 : f32 = u_xlat16;
  let x_248 : f32 = x_14.x_LightShadowData.x;
  u_xlat11 = ((x_244 * x_245) + x_248);
  let x_250 : f32 = u_xlat11;
  u_xlat16 = (-(x_250) + 1.0f);
  let x_254 : f32 = u_xlat0.x;
  let x_255 : f32 = u_xlat16;
  let x_257 : f32 = u_xlat11;
  u_xlat0.x = ((x_254 * x_255) + x_257);
  let x_260 : vec3<f32> = u_xlat5;
  let x_261 : vec3<f32> = u_xlat5;
  u_xlat11 = dot(x_260, x_261);
  let x_263 : f32 = u_xlat11;
  let x_265 : f32 = x_14.x_LightPos.w;
  u_xlat16 = (x_263 * x_265);
  let x_267 : f32 = u_xlat11;
  u_xlat11 = inverseSqrt(x_267);
  let x_269 : vec3<f32> = u_xlat5;
  let x_270 : f32 = u_xlat11;
  u_xlat5 = (x_269 * vec3<f32>(x_270, x_270, x_270));
  let x_278 : f32 = u_xlat16;
  let x_280 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_278, x_278));
  u_xlat11 = x_280.x;
  let x_283 : f32 = u_xlat0.x;
  let x_284 : f32 = u_xlat11;
  u_xlat0.x = (x_283 * x_284);
  let x_287 : vec4<f32> = u_xlat2;
  let x_291 : vec4<f32> = x_14.unity_WorldToLight[1i];
  u_xlat3 = (vec3<f32>(x_287.y, x_287.y, x_287.y) * vec3<f32>(x_291.x, x_291.y, x_291.z));
  let x_295 : vec4<f32> = x_14.unity_WorldToLight[0i];
  let x_297 : vec4<f32> = u_xlat2;
  let x_300 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_295.x, x_295.y, x_295.z) * vec3<f32>(x_297.x, x_297.x, x_297.x)) + x_300);
  let x_303 : vec4<f32> = x_14.unity_WorldToLight[2i];
  let x_305 : vec4<f32> = u_xlat2;
  let x_308 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_303.x, x_303.y, x_303.z) * vec3<f32>(x_305.w, x_305.w, x_305.w)) + x_308);
  let x_310 : vec4<f32> = u_xlat2;
  let x_314 : vec3<f32> = x_14.x_WorldSpaceCameraPos;
  let x_316 : vec3<f32> = (vec3<f32>(x_310.x, x_310.y, x_310.w) + -(x_314));
  let x_317 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_316.x, x_316.y, x_316.z, x_317.w);
  let x_319 : vec3<f32> = u_xlat3;
  let x_321 : vec4<f32> = x_14.unity_WorldToLight[3i];
  u_xlat3 = (x_319 + vec3<f32>(x_321.x, x_321.y, x_321.z));
  let x_332 : vec3<f32> = u_xlat3;
  let x_334 : vec4<f32> = textureSampleBias(x_LightTexture0, sampler_LightTexture0, x_332, -8.0f);
  u_xlat11 = x_334.w;
  let x_337 : f32 = u_xlat0.x;
  let x_338 : f32 = u_xlat11;
  u_xlat0.x = (x_337 * x_338);
  let x_341 : vec4<f32> = u_xlat0;
  let x_345 : vec4<f32> = x_14.x_LightColor;
  u_xlat3 = (vec3<f32>(x_341.x, x_341.x, x_341.x) * vec3<f32>(x_345.x, x_345.y, x_345.z));
  let x_354 : vec3<f32> = u_xlat1;
  let x_356 : vec4<f32> = textureSample(x_CameraGBufferTexture2, sampler_CameraGBufferTexture2, vec2<f32>(x_354.x, x_354.y));
  u_xlat4 = vec3<f32>(x_356.x, x_356.y, x_356.z);
  let x_358 : vec3<f32> = u_xlat4;
  u_xlat4 = ((x_358 * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_365 : vec3<f32> = u_xlat4;
  let x_366 : vec3<f32> = u_xlat4;
  u_xlat0.x = dot(x_365, x_366);
  let x_370 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_370);
  let x_373 : vec4<f32> = u_xlat0;
  let x_375 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_373.x, x_373.x, x_373.x) * x_375);
  let x_377 : vec3<f32> = u_xlat4;
  let x_378 : vec3<f32> = u_xlat5;
  u_xlat0.x = dot(x_377, -(x_378));
  let x_383 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_383, 0.0f, 1.0f);
  let x_386 : vec4<f32> = u_xlat0;
  let x_388 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_386.x, x_386.x, x_386.x) * x_388);
  let x_390 : vec4<f32> = u_xlat2;
  let x_392 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(x_390.x, x_390.y, x_390.z), vec3<f32>(x_392.x, x_392.y, x_392.z));
  let x_397 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_397);
  let x_400 : vec4<f32> = u_xlat0;
  let x_402 : vec4<f32> = u_xlat2;
  let x_404 : vec3<f32> = (vec3<f32>(x_400.x, x_400.x, x_400.x) * vec3<f32>(x_402.x, x_402.y, x_402.z));
  let x_405 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_404.x, x_404.y, x_404.z, x_405.w);
  let x_407 : vec4<f32> = u_xlat2;
  let x_410 : vec3<f32> = u_xlat4;
  u_xlat0.x = dot(-(vec3<f32>(x_407.x, x_407.y, x_407.z)), x_410);
  let x_414 : f32 = u_xlat0.x;
  let x_416 : f32 = u_xlat0.x;
  u_xlat0.x = (x_414 + x_416);
  let x_419 : vec3<f32> = u_xlat4;
  let x_420 : vec4<f32> = u_xlat0;
  let x_424 : vec4<f32> = u_xlat2;
  let x_427 : vec3<f32> = ((x_419 * -(vec3<f32>(x_420.x, x_420.x, x_420.x))) + -(vec3<f32>(x_424.x, x_424.y, x_424.z)));
  let x_428 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_427.x, x_427.y, x_427.z, x_428.w);
  let x_430 : vec4<f32> = u_xlat2;
  let x_432 : vec3<f32> = u_xlat5;
  u_xlat0.x = dot(vec3<f32>(x_430.x, x_430.y, x_430.z), -(x_432));
  let x_437 : f32 = u_xlat0.x;
  let x_439 : f32 = u_xlat0.x;
  u_xlat0.x = (x_437 * x_439);
  let x_443 : f32 = u_xlat0.x;
  let x_445 : f32 = u_xlat0.x;
  u_xlat0.x = (x_443 * x_445);
  let x_453 : vec3<f32> = u_xlat1;
  let x_455 : vec4<f32> = textureSample(x_CameraGBufferTexture1, sampler_CameraGBufferTexture1, vec2<f32>(x_453.x, x_453.y));
  u_xlat2 = x_455;
  let x_461 : vec3<f32> = u_xlat1;
  let x_463 : vec4<f32> = textureSample(x_CameraGBufferTexture0, sampler_CameraGBufferTexture0, vec2<f32>(x_461.x, x_461.y));
  u_xlat1 = vec3<f32>(x_463.x, x_463.y, x_463.z);
  let x_466 : f32 = u_xlat2.w;
  u_xlat0.y = (-(x_466) + 1.0f);
  let x_475 : vec4<f32> = u_xlat0;
  let x_477 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_475.x, x_475.y));
  u_xlat0.x = x_477.x;
  let x_481 : f32 = u_xlat0.x;
  u_xlat0.x = (x_481 * 16.0f);
  let x_485 : vec4<f32> = u_xlat0;
  let x_487 : vec4<f32> = u_xlat2;
  let x_490 : vec3<f32> = u_xlat1;
  let x_491 : vec3<f32> = ((vec3<f32>(x_485.x, x_485.x, x_485.x) * vec3<f32>(x_487.x, x_487.y, x_487.z)) + x_490);
  let x_492 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_491.x, x_491.y, x_491.z, x_492.w);
  let x_494 : vec3<f32> = u_xlat3;
  let x_495 : vec4<f32> = u_xlat0;
  let x_497 : vec3<f32> = (x_494 * vec3<f32>(x_495.x, x_495.y, x_495.z));
  let x_498 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_497.x, x_497.y, x_497.z, x_498.w);
  u_xlat0.w = 1.0f;
  let x_503 : vec4<f32> = u_xlat0;
  SV_Target0 = exp2(-(x_503));
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


