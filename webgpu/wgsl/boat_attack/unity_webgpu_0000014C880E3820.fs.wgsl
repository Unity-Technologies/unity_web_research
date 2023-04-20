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

var<private> u_xlat15 : f32;

@group(0) @binding(0) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_CameraDepthTexture : sampler;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat11 : f32;

@group(0) @binding(6) var x_ShadowMapTexture : texture_depth_cube;

@group(0) @binding(9) var sampler_ShadowMapTexture : sampler_comparison;

var<private> u_xlat16 : f32;

@group(0) @binding(1) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(8) var sampler_LightTextureB0 : sampler;

var<private> u_xlat4 : vec3<f32>;

@group(0) @binding(4) var x_CameraGBufferTexture2 : texture_2d<f32>;

@group(0) @binding(13) var sampler_CameraGBufferTexture2 : sampler;

@group(0) @binding(3) var x_CameraGBufferTexture1 : texture_2d<f32>;

@group(0) @binding(12) var sampler_CameraGBufferTexture1 : sampler;

@group(0) @binding(2) var x_CameraGBufferTexture0 : texture_2d<f32>;

@group(0) @binding(11) var sampler_CameraGBufferTexture0 : sampler;

@group(0) @binding(5) var unity_NHxRoughness : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_NHxRoughness : sampler;

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
  let x_182 : vec4<f32> = u_xlat2;
  let x_186 : vec3<f32> = x_14.x_WorldSpaceCameraPos;
  let x_188 : vec3<f32> = (vec3<f32>(x_182.x, x_182.y, x_182.w) + -(x_186));
  let x_189 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_188.x, x_188.y, x_188.z, x_189.w);
  let x_193 : f32 = u_xlat5.y;
  let x_196 : f32 = u_xlat5.x;
  u_xlat11 = max(abs(x_193), abs(x_196));
  let x_200 : f32 = u_xlat5.z;
  let x_202 : f32 = u_xlat11;
  u_xlat11 = max(abs(x_200), x_202);
  let x_204 : f32 = u_xlat11;
  let x_207 : f32 = x_14.x_LightProjectionParams.z;
  u_xlat11 = (x_204 + -(x_207));
  let x_210 : f32 = u_xlat11;
  u_xlat11 = max(x_210, 0.00000999999974737875f);
  let x_213 : f32 = u_xlat11;
  let x_215 : f32 = x_14.x_LightProjectionParams.w;
  u_xlat11 = (x_213 * x_215);
  let x_218 : f32 = x_14.x_LightProjectionParams.y;
  let x_219 : f32 = u_xlat11;
  u_xlat11 = (x_218 / x_219);
  let x_221 : f32 = u_xlat11;
  let x_223 : f32 = x_14.x_LightProjectionParams.x;
  u_xlat11 = (x_221 + -(x_223));
  let x_226 : f32 = u_xlat11;
  u_xlat11 = (-(x_226) + 1.0f);
  let x_231 : vec3<f32> = u_xlat5;
  let x_232 : f32 = u_xlat11;
  txVec0 = vec4<f32>(x_231.x, x_231.y, x_231.z, x_232);
  let x_245 : vec4<f32> = txVec0;
  let x_247 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_245.xyz, x_245.w);
  u_xlat11 = x_247;
  let x_250 : f32 = x_14.x_LightShadowData.x;
  u_xlat16 = (-(x_250) + 1.0f);
  let x_253 : f32 = u_xlat11;
  let x_254 : f32 = u_xlat16;
  let x_257 : f32 = x_14.x_LightShadowData.x;
  u_xlat11 = ((x_253 * x_254) + x_257);
  let x_259 : f32 = u_xlat11;
  u_xlat16 = (-(x_259) + 1.0f);
  let x_263 : f32 = u_xlat0.x;
  let x_264 : f32 = u_xlat16;
  let x_266 : f32 = u_xlat11;
  u_xlat0.x = ((x_263 * x_264) + x_266);
  let x_269 : vec3<f32> = u_xlat5;
  let x_270 : vec3<f32> = u_xlat5;
  u_xlat11 = dot(x_269, x_270);
  let x_272 : f32 = u_xlat11;
  let x_274 : f32 = x_14.x_LightPos.w;
  u_xlat16 = (x_272 * x_274);
  let x_276 : f32 = u_xlat11;
  u_xlat11 = inverseSqrt(x_276);
  let x_278 : vec3<f32> = u_xlat5;
  let x_279 : f32 = u_xlat11;
  u_xlat5 = (x_278 * vec3<f32>(x_279, x_279, x_279));
  let x_287 : f32 = u_xlat16;
  let x_289 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_287, x_287));
  u_xlat11 = x_289.x;
  let x_292 : f32 = u_xlat0.x;
  let x_293 : f32 = u_xlat11;
  u_xlat0.x = (x_292 * x_293);
  let x_296 : vec4<f32> = u_xlat0;
  let x_300 : vec4<f32> = x_14.x_LightColor;
  u_xlat3 = (vec3<f32>(x_296.x, x_296.x, x_296.x) * vec3<f32>(x_300.x, x_300.y, x_300.z));
  let x_309 : vec3<f32> = u_xlat1;
  let x_311 : vec4<f32> = textureSample(x_CameraGBufferTexture2, sampler_CameraGBufferTexture2, vec2<f32>(x_309.x, x_309.y));
  u_xlat4 = vec3<f32>(x_311.x, x_311.y, x_311.z);
  let x_313 : vec3<f32> = u_xlat4;
  u_xlat4 = ((x_313 * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_320 : vec3<f32> = u_xlat4;
  let x_321 : vec3<f32> = u_xlat4;
  u_xlat0.x = dot(x_320, x_321);
  let x_325 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_325);
  let x_328 : vec4<f32> = u_xlat0;
  let x_330 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_328.x, x_328.x, x_328.x) * x_330);
  let x_332 : vec3<f32> = u_xlat4;
  let x_333 : vec3<f32> = u_xlat5;
  u_xlat0.x = dot(x_332, -(x_333));
  let x_338 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_338, 0.0f, 1.0f);
  let x_341 : vec4<f32> = u_xlat0;
  let x_343 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_341.x, x_341.x, x_341.x) * x_343);
  let x_345 : vec4<f32> = u_xlat2;
  let x_347 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(x_345.x, x_345.y, x_345.z), vec3<f32>(x_347.x, x_347.y, x_347.z));
  let x_352 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_352);
  let x_355 : vec4<f32> = u_xlat0;
  let x_357 : vec4<f32> = u_xlat2;
  let x_359 : vec3<f32> = (vec3<f32>(x_355.x, x_355.x, x_355.x) * vec3<f32>(x_357.x, x_357.y, x_357.z));
  let x_360 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_359.x, x_359.y, x_359.z, x_360.w);
  let x_362 : vec4<f32> = u_xlat2;
  let x_365 : vec3<f32> = u_xlat4;
  u_xlat0.x = dot(-(vec3<f32>(x_362.x, x_362.y, x_362.z)), x_365);
  let x_369 : f32 = u_xlat0.x;
  let x_371 : f32 = u_xlat0.x;
  u_xlat0.x = (x_369 + x_371);
  let x_374 : vec3<f32> = u_xlat4;
  let x_375 : vec4<f32> = u_xlat0;
  let x_379 : vec4<f32> = u_xlat2;
  let x_382 : vec3<f32> = ((x_374 * -(vec3<f32>(x_375.x, x_375.x, x_375.x))) + -(vec3<f32>(x_379.x, x_379.y, x_379.z)));
  let x_383 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_382.x, x_382.y, x_382.z, x_383.w);
  let x_385 : vec4<f32> = u_xlat2;
  let x_387 : vec3<f32> = u_xlat5;
  u_xlat0.x = dot(vec3<f32>(x_385.x, x_385.y, x_385.z), -(x_387));
  let x_392 : f32 = u_xlat0.x;
  let x_394 : f32 = u_xlat0.x;
  u_xlat0.x = (x_392 * x_394);
  let x_398 : f32 = u_xlat0.x;
  let x_400 : f32 = u_xlat0.x;
  u_xlat0.x = (x_398 * x_400);
  let x_408 : vec3<f32> = u_xlat1;
  let x_410 : vec4<f32> = textureSample(x_CameraGBufferTexture1, sampler_CameraGBufferTexture1, vec2<f32>(x_408.x, x_408.y));
  u_xlat2 = x_410;
  let x_416 : vec3<f32> = u_xlat1;
  let x_418 : vec4<f32> = textureSample(x_CameraGBufferTexture0, sampler_CameraGBufferTexture0, vec2<f32>(x_416.x, x_416.y));
  u_xlat1 = vec3<f32>(x_418.x, x_418.y, x_418.z);
  let x_421 : f32 = u_xlat2.w;
  u_xlat0.y = (-(x_421) + 1.0f);
  let x_430 : vec4<f32> = u_xlat0;
  let x_432 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_430.x, x_430.y));
  u_xlat0.x = x_432.x;
  let x_436 : f32 = u_xlat0.x;
  u_xlat0.x = (x_436 * 16.0f);
  let x_440 : vec4<f32> = u_xlat0;
  let x_442 : vec4<f32> = u_xlat2;
  let x_445 : vec3<f32> = u_xlat1;
  let x_446 : vec3<f32> = ((vec3<f32>(x_440.x, x_440.x, x_440.x) * vec3<f32>(x_442.x, x_442.y, x_442.z)) + x_445);
  let x_447 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_446.x, x_446.y, x_446.z, x_447.w);
  let x_449 : vec3<f32> = u_xlat3;
  let x_450 : vec4<f32> = u_xlat0;
  let x_452 : vec3<f32> = (x_449 * vec3<f32>(x_450.x, x_450.y, x_450.z));
  let x_453 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_452.x, x_452.y, x_452.z, x_453.w);
  u_xlat0.w = 1.0f;
  let x_458 : vec4<f32> = u_xlat0;
  SV_Target0 = exp2(-(x_458));
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


