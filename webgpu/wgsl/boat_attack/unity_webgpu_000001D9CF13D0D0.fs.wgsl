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

var<private> u_xlat0 : vec3<f32>;

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
  u_xlat15 = x_59.x;
  let x_63 : f32 = x_14.x_ZBufferParams.x;
  let x_64 : f32 = u_xlat15;
  let x_68 : f32 = x_14.x_ZBufferParams.y;
  u_xlat15 = ((x_63 * x_64) + x_68);
  let x_71 : f32 = u_xlat15;
  u_xlat15 = (1.0f / x_71);
  let x_75 : f32 = u_xlat15;
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
  let x_139 : f32 = u_xlat15;
  let x_142 : f32 = u_xlat0.x;
  u_xlat0.x = ((-(x_137) * x_139) + x_142);
  let x_147 : f32 = x_14.unity_ShadowFadeCenterAndType.w;
  let x_149 : f32 = u_xlat0.x;
  let x_152 : f32 = u_xlat2.z;
  u_xlat0.x = ((x_147 * x_149) + x_152);
  let x_156 : f32 = u_xlat0.x;
  let x_159 : f32 = x_14.x_LightShadowData.z;
  let x_162 : f32 = x_14.x_LightShadowData.w;
  u_xlat0.x = ((x_156 * x_159) + x_162);
  let x_166 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_166, 0.0f, 1.0f);
  let x_171 : vec4<f32> = u_xlat2;
  let x_175 : vec4<f32> = x_14.x_LightPos;
  u_xlat5 = (vec3<f32>(x_171.x, x_171.y, x_171.w) + -(vec3<f32>(x_175.x, x_175.y, x_175.z)));
  let x_181 : f32 = u_xlat5.y;
  let x_184 : f32 = u_xlat5.x;
  u_xlat11 = max(abs(x_181), abs(x_184));
  let x_188 : f32 = u_xlat5.z;
  let x_190 : f32 = u_xlat11;
  u_xlat11 = max(abs(x_188), x_190);
  let x_192 : f32 = u_xlat11;
  let x_195 : f32 = x_14.x_LightProjectionParams.z;
  u_xlat11 = (x_192 + -(x_195));
  let x_198 : f32 = u_xlat11;
  u_xlat11 = max(x_198, 0.00000999999974737875f);
  let x_201 : f32 = u_xlat11;
  let x_203 : f32 = x_14.x_LightProjectionParams.w;
  u_xlat11 = (x_201 * x_203);
  let x_206 : f32 = x_14.x_LightProjectionParams.y;
  let x_207 : f32 = u_xlat11;
  u_xlat11 = (x_206 / x_207);
  let x_209 : f32 = u_xlat11;
  let x_211 : f32 = x_14.x_LightProjectionParams.x;
  u_xlat11 = (x_209 + -(x_211));
  let x_214 : f32 = u_xlat11;
  u_xlat11 = (-(x_214) + 1.0f);
  let x_219 : vec3<f32> = u_xlat5;
  let x_220 : f32 = u_xlat11;
  txVec0 = vec4<f32>(x_219.x, x_219.y, x_219.z, x_220);
  let x_233 : vec4<f32> = txVec0;
  let x_235 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_233.xyz, x_233.w);
  u_xlat11 = x_235;
  let x_238 : f32 = x_14.x_LightShadowData.x;
  u_xlat16 = (-(x_238) + 1.0f);
  let x_241 : f32 = u_xlat11;
  let x_242 : f32 = u_xlat16;
  let x_245 : f32 = x_14.x_LightShadowData.x;
  u_xlat11 = ((x_241 * x_242) + x_245);
  let x_247 : f32 = u_xlat11;
  u_xlat16 = (-(x_247) + 1.0f);
  let x_251 : f32 = u_xlat0.x;
  let x_252 : f32 = u_xlat16;
  let x_254 : f32 = u_xlat11;
  u_xlat0.x = ((x_251 * x_252) + x_254);
  let x_257 : vec3<f32> = u_xlat5;
  let x_258 : vec3<f32> = u_xlat5;
  u_xlat11 = dot(x_257, x_258);
  let x_260 : f32 = u_xlat11;
  let x_262 : f32 = x_14.x_LightPos.w;
  u_xlat16 = (x_260 * x_262);
  let x_264 : f32 = u_xlat11;
  u_xlat11 = inverseSqrt(x_264);
  let x_266 : vec3<f32> = u_xlat5;
  let x_267 : f32 = u_xlat11;
  u_xlat5 = (x_266 * vec3<f32>(x_267, x_267, x_267));
  let x_275 : f32 = u_xlat16;
  let x_277 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_275, x_275));
  u_xlat11 = x_277.x;
  let x_280 : f32 = u_xlat0.x;
  let x_281 : f32 = u_xlat11;
  u_xlat0.x = (x_280 * x_281);
  let x_284 : vec4<f32> = u_xlat2;
  let x_288 : vec4<f32> = x_14.unity_WorldToLight[1i];
  u_xlat3 = (vec3<f32>(x_284.y, x_284.y, x_284.y) * vec3<f32>(x_288.x, x_288.y, x_288.z));
  let x_292 : vec4<f32> = x_14.unity_WorldToLight[0i];
  let x_294 : vec4<f32> = u_xlat2;
  let x_297 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_292.x, x_292.y, x_292.z) * vec3<f32>(x_294.x, x_294.x, x_294.x)) + x_297);
  let x_300 : vec4<f32> = x_14.unity_WorldToLight[2i];
  let x_302 : vec4<f32> = u_xlat2;
  let x_305 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_300.x, x_300.y, x_300.z) * vec3<f32>(x_302.w, x_302.w, x_302.w)) + x_305);
  let x_307 : vec4<f32> = u_xlat2;
  let x_311 : vec3<f32> = x_14.x_WorldSpaceCameraPos;
  let x_313 : vec3<f32> = (vec3<f32>(x_307.x, x_307.y, x_307.w) + -(x_311));
  let x_314 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_313.x, x_313.y, x_313.z, x_314.w);
  let x_316 : vec3<f32> = u_xlat3;
  let x_318 : vec4<f32> = x_14.unity_WorldToLight[3i];
  u_xlat3 = (x_316 + vec3<f32>(x_318.x, x_318.y, x_318.z));
  let x_329 : vec3<f32> = u_xlat3;
  let x_331 : vec4<f32> = textureSampleBias(x_LightTexture0, sampler_LightTexture0, x_329, -8.0f);
  u_xlat11 = x_331.w;
  let x_334 : f32 = u_xlat0.x;
  let x_335 : f32 = u_xlat11;
  u_xlat0.x = (x_334 * x_335);
  let x_338 : vec3<f32> = u_xlat0;
  let x_342 : vec4<f32> = x_14.x_LightColor;
  u_xlat3 = (vec3<f32>(x_338.x, x_338.x, x_338.x) * vec3<f32>(x_342.x, x_342.y, x_342.z));
  let x_351 : vec3<f32> = u_xlat1;
  let x_353 : vec4<f32> = textureSample(x_CameraGBufferTexture2, sampler_CameraGBufferTexture2, vec2<f32>(x_351.x, x_351.y));
  u_xlat4 = vec3<f32>(x_353.x, x_353.y, x_353.z);
  let x_355 : vec3<f32> = u_xlat4;
  u_xlat4 = ((x_355 * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_362 : vec3<f32> = u_xlat4;
  let x_363 : vec3<f32> = u_xlat4;
  u_xlat0.x = dot(x_362, x_363);
  let x_367 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_367);
  let x_370 : vec3<f32> = u_xlat0;
  let x_372 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_370.x, x_370.x, x_370.x) * x_372);
  let x_374 : vec3<f32> = u_xlat4;
  let x_375 : vec3<f32> = u_xlat5;
  u_xlat0.x = dot(x_374, -(x_375));
  let x_380 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_380, 0.0f, 1.0f);
  let x_383 : vec3<f32> = u_xlat0;
  let x_385 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_383.x, x_383.x, x_383.x) * x_385);
  let x_387 : vec4<f32> = u_xlat2;
  let x_389 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(x_387.x, x_387.y, x_387.z), vec3<f32>(x_389.x, x_389.y, x_389.z));
  let x_394 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_394);
  let x_397 : vec3<f32> = u_xlat0;
  let x_399 : vec4<f32> = u_xlat2;
  let x_401 : vec3<f32> = (vec3<f32>(x_397.x, x_397.x, x_397.x) * vec3<f32>(x_399.x, x_399.y, x_399.z));
  let x_402 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_401.x, x_401.y, x_401.z, x_402.w);
  let x_404 : vec4<f32> = u_xlat2;
  let x_407 : vec3<f32> = u_xlat4;
  u_xlat0.x = dot(-(vec3<f32>(x_404.x, x_404.y, x_404.z)), x_407);
  let x_411 : f32 = u_xlat0.x;
  let x_413 : f32 = u_xlat0.x;
  u_xlat0.x = (x_411 + x_413);
  let x_416 : vec3<f32> = u_xlat4;
  let x_417 : vec3<f32> = u_xlat0;
  let x_421 : vec4<f32> = u_xlat2;
  let x_424 : vec3<f32> = ((x_416 * -(vec3<f32>(x_417.x, x_417.x, x_417.x))) + -(vec3<f32>(x_421.x, x_421.y, x_421.z)));
  let x_425 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_424.x, x_424.y, x_424.z, x_425.w);
  let x_427 : vec4<f32> = u_xlat2;
  let x_429 : vec3<f32> = u_xlat5;
  u_xlat0.x = dot(vec3<f32>(x_427.x, x_427.y, x_427.z), -(x_429));
  let x_434 : f32 = u_xlat0.x;
  let x_436 : f32 = u_xlat0.x;
  u_xlat0.x = (x_434 * x_436);
  let x_440 : f32 = u_xlat0.x;
  let x_442 : f32 = u_xlat0.x;
  u_xlat0.x = (x_440 * x_442);
  let x_450 : vec3<f32> = u_xlat1;
  let x_452 : vec4<f32> = textureSample(x_CameraGBufferTexture1, sampler_CameraGBufferTexture1, vec2<f32>(x_450.x, x_450.y));
  u_xlat2 = x_452;
  let x_458 : vec3<f32> = u_xlat1;
  let x_460 : vec4<f32> = textureSample(x_CameraGBufferTexture0, sampler_CameraGBufferTexture0, vec2<f32>(x_458.x, x_458.y));
  u_xlat1 = vec3<f32>(x_460.x, x_460.y, x_460.z);
  let x_463 : f32 = u_xlat2.w;
  u_xlat0.y = (-(x_463) + 1.0f);
  let x_472 : vec3<f32> = u_xlat0;
  let x_474 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_472.x, x_472.y));
  u_xlat0.x = x_474.x;
  let x_478 : f32 = u_xlat0.x;
  u_xlat0.x = (x_478 * 16.0f);
  let x_482 : vec3<f32> = u_xlat0;
  let x_484 : vec4<f32> = u_xlat2;
  let x_487 : vec3<f32> = u_xlat1;
  u_xlat0 = ((vec3<f32>(x_482.x, x_482.x, x_482.x) * vec3<f32>(x_484.x, x_484.y, x_484.z)) + x_487);
  let x_491 : vec3<f32> = u_xlat3;
  let x_492 : vec3<f32> = u_xlat0;
  let x_493 : vec3<f32> = (x_491 * x_492);
  let x_494 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_493.x, x_493.y, x_493.z, x_494.w);
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


