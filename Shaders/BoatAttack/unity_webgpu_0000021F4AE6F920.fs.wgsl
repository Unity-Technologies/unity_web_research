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

@group(0) @binding(6) var x_ShadowMapTexture : texture_depth_cube;

@group(0) @binding(9) var sampler_ShadowMapTexture : sampler_comparison;

@group(0) @binding(1) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(8) var sampler_LightTextureB0 : sampler;

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
  u_xlat11 = max(x_210, 0.00001f);
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
  let x_230 : vec3<f32> = u_xlat5;
  let x_231 : f32 = u_xlat11;
  txVec0 = vec4<f32>(x_230.x, x_230.y, x_230.z, x_231);
  let x_244 : vec4<f32> = txVec0;
  let x_246 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_244.xyz, x_244.w);
  u_xlat11 = x_246;
  let x_249 : f32 = x_14.x_LightShadowData.x;
  u_xlat16 = (-(x_249) + 1.0f);
  let x_252 : f32 = u_xlat11;
  let x_253 : f32 = u_xlat16;
  let x_256 : f32 = x_14.x_LightShadowData.x;
  u_xlat11 = ((x_252 * x_253) + x_256);
  let x_258 : f32 = u_xlat11;
  u_xlat16 = (-(x_258) + 1.0f);
  let x_262 : f32 = u_xlat0.x;
  let x_263 : f32 = u_xlat16;
  let x_265 : f32 = u_xlat11;
  u_xlat0.x = ((x_262 * x_263) + x_265);
  let x_268 : vec3<f32> = u_xlat5;
  let x_269 : vec3<f32> = u_xlat5;
  u_xlat11 = dot(x_268, x_269);
  let x_271 : f32 = u_xlat11;
  let x_273 : f32 = x_14.x_LightPos.w;
  u_xlat16 = (x_271 * x_273);
  let x_275 : f32 = u_xlat11;
  u_xlat11 = inverseSqrt(x_275);
  let x_277 : vec3<f32> = u_xlat5;
  let x_278 : f32 = u_xlat11;
  u_xlat5 = (x_277 * vec3<f32>(x_278, x_278, x_278));
  let x_286 : f32 = u_xlat16;
  let x_288 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_286, x_286));
  u_xlat11 = x_288.x;
  let x_291 : f32 = u_xlat0.x;
  let x_292 : f32 = u_xlat11;
  u_xlat0.x = (x_291 * x_292);
  let x_295 : vec4<f32> = u_xlat0;
  let x_299 : vec4<f32> = x_14.x_LightColor;
  u_xlat3 = (vec3<f32>(x_295.x, x_295.x, x_295.x) * vec3<f32>(x_299.x, x_299.y, x_299.z));
  let x_308 : vec3<f32> = u_xlat1;
  let x_310 : vec4<f32> = textureSample(x_CameraGBufferTexture2, sampler_CameraGBufferTexture2, vec2<f32>(x_308.x, x_308.y));
  u_xlat4 = vec3<f32>(x_310.x, x_310.y, x_310.z);
  let x_312 : vec3<f32> = u_xlat4;
  u_xlat4 = ((x_312 * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_319 : vec3<f32> = u_xlat4;
  let x_320 : vec3<f32> = u_xlat4;
  u_xlat0.x = dot(x_319, x_320);
  let x_324 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_324);
  let x_327 : vec4<f32> = u_xlat0;
  let x_329 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_327.x, x_327.x, x_327.x) * x_329);
  let x_331 : vec3<f32> = u_xlat4;
  let x_332 : vec3<f32> = u_xlat5;
  u_xlat0.x = dot(x_331, -(x_332));
  let x_337 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_337, 0.0f, 1.0f);
  let x_340 : vec4<f32> = u_xlat0;
  let x_342 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_340.x, x_340.x, x_340.x) * x_342);
  let x_344 : vec4<f32> = u_xlat2;
  let x_346 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(x_344.x, x_344.y, x_344.z), vec3<f32>(x_346.x, x_346.y, x_346.z));
  let x_351 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_351);
  let x_354 : vec4<f32> = u_xlat0;
  let x_356 : vec4<f32> = u_xlat2;
  let x_358 : vec3<f32> = (vec3<f32>(x_354.x, x_354.x, x_354.x) * vec3<f32>(x_356.x, x_356.y, x_356.z));
  let x_359 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_358.x, x_358.y, x_358.z, x_359.w);
  let x_361 : vec4<f32> = u_xlat2;
  let x_364 : vec3<f32> = u_xlat4;
  u_xlat0.x = dot(-(vec3<f32>(x_361.x, x_361.y, x_361.z)), x_364);
  let x_368 : f32 = u_xlat0.x;
  let x_370 : f32 = u_xlat0.x;
  u_xlat0.x = (x_368 + x_370);
  let x_373 : vec3<f32> = u_xlat4;
  let x_374 : vec4<f32> = u_xlat0;
  let x_378 : vec4<f32> = u_xlat2;
  let x_381 : vec3<f32> = ((x_373 * -(vec3<f32>(x_374.x, x_374.x, x_374.x))) + -(vec3<f32>(x_378.x, x_378.y, x_378.z)));
  let x_382 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_381.x, x_381.y, x_381.z, x_382.w);
  let x_384 : vec4<f32> = u_xlat2;
  let x_386 : vec3<f32> = u_xlat5;
  u_xlat0.x = dot(vec3<f32>(x_384.x, x_384.y, x_384.z), -(x_386));
  let x_391 : f32 = u_xlat0.x;
  let x_393 : f32 = u_xlat0.x;
  u_xlat0.x = (x_391 * x_393);
  let x_397 : f32 = u_xlat0.x;
  let x_399 : f32 = u_xlat0.x;
  u_xlat0.x = (x_397 * x_399);
  let x_407 : vec3<f32> = u_xlat1;
  let x_409 : vec4<f32> = textureSample(x_CameraGBufferTexture1, sampler_CameraGBufferTexture1, vec2<f32>(x_407.x, x_407.y));
  u_xlat2 = x_409;
  let x_415 : vec3<f32> = u_xlat1;
  let x_417 : vec4<f32> = textureSample(x_CameraGBufferTexture0, sampler_CameraGBufferTexture0, vec2<f32>(x_415.x, x_415.y));
  u_xlat1 = vec3<f32>(x_417.x, x_417.y, x_417.z);
  let x_420 : f32 = u_xlat2.w;
  u_xlat0.y = (-(x_420) + 1.0f);
  let x_429 : vec4<f32> = u_xlat0;
  let x_431 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_429.x, x_429.y));
  u_xlat0.x = x_431.x;
  let x_435 : f32 = u_xlat0.x;
  u_xlat0.x = (x_435 * 16.0f);
  let x_439 : vec4<f32> = u_xlat0;
  let x_441 : vec4<f32> = u_xlat2;
  let x_444 : vec3<f32> = u_xlat1;
  let x_445 : vec3<f32> = ((vec3<f32>(x_439.x, x_439.x, x_439.x) * vec3<f32>(x_441.x, x_441.y, x_441.z)) + x_444);
  let x_446 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_445.x, x_445.y, x_445.z, x_446.w);
  let x_448 : vec3<f32> = u_xlat3;
  let x_449 : vec4<f32> = u_xlat0;
  let x_451 : vec3<f32> = (x_448 * vec3<f32>(x_449.x, x_449.y, x_449.z));
  let x_452 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_451.x, x_451.y, x_451.z, x_452.w);
  u_xlat0.w = 1.0f;
  let x_457 : vec4<f32> = u_xlat0;
  SV_Target0 = exp2(-(x_457));
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

