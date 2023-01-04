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
  var u_xlat0 : vec3<f32>;
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
  u_xlat11 = max(x_198, 0.00001f);
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
  let x_218 : vec3<f32> = u_xlat5;
  let x_219 : f32 = u_xlat11;
  txVec0 = vec4<f32>(x_218.x, x_218.y, x_218.z, x_219);
  let x_232 : vec4<f32> = txVec0;
  let x_234 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_232.xyz, x_232.w);
  u_xlat11 = x_234;
  let x_237 : f32 = x_14.x_LightShadowData.x;
  u_xlat16 = (-(x_237) + 1.0f);
  let x_240 : f32 = u_xlat11;
  let x_241 : f32 = u_xlat16;
  let x_244 : f32 = x_14.x_LightShadowData.x;
  u_xlat11 = ((x_240 * x_241) + x_244);
  let x_246 : f32 = u_xlat11;
  u_xlat16 = (-(x_246) + 1.0f);
  let x_250 : f32 = u_xlat0.x;
  let x_251 : f32 = u_xlat16;
  let x_253 : f32 = u_xlat11;
  u_xlat0.x = ((x_250 * x_251) + x_253);
  let x_256 : vec3<f32> = u_xlat5;
  let x_257 : vec3<f32> = u_xlat5;
  u_xlat11 = dot(x_256, x_257);
  let x_259 : f32 = u_xlat11;
  let x_261 : f32 = x_14.x_LightPos.w;
  u_xlat16 = (x_259 * x_261);
  let x_263 : f32 = u_xlat11;
  u_xlat11 = inverseSqrt(x_263);
  let x_265 : vec3<f32> = u_xlat5;
  let x_266 : f32 = u_xlat11;
  u_xlat5 = (x_265 * vec3<f32>(x_266, x_266, x_266));
  let x_274 : f32 = u_xlat16;
  let x_276 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_274, x_274));
  u_xlat11 = x_276.x;
  let x_279 : f32 = u_xlat0.x;
  let x_280 : f32 = u_xlat11;
  u_xlat0.x = (x_279 * x_280);
  let x_283 : vec4<f32> = u_xlat2;
  let x_287 : vec4<f32> = x_14.unity_WorldToLight[1i];
  u_xlat3 = (vec3<f32>(x_283.y, x_283.y, x_283.y) * vec3<f32>(x_287.x, x_287.y, x_287.z));
  let x_291 : vec4<f32> = x_14.unity_WorldToLight[0i];
  let x_293 : vec4<f32> = u_xlat2;
  let x_296 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_291.x, x_291.y, x_291.z) * vec3<f32>(x_293.x, x_293.x, x_293.x)) + x_296);
  let x_299 : vec4<f32> = x_14.unity_WorldToLight[2i];
  let x_301 : vec4<f32> = u_xlat2;
  let x_304 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_299.x, x_299.y, x_299.z) * vec3<f32>(x_301.w, x_301.w, x_301.w)) + x_304);
  let x_306 : vec4<f32> = u_xlat2;
  let x_310 : vec3<f32> = x_14.x_WorldSpaceCameraPos;
  let x_312 : vec3<f32> = (vec3<f32>(x_306.x, x_306.y, x_306.w) + -(x_310));
  let x_313 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_312.x, x_312.y, x_312.z, x_313.w);
  let x_315 : vec3<f32> = u_xlat3;
  let x_317 : vec4<f32> = x_14.unity_WorldToLight[3i];
  u_xlat3 = (x_315 + vec3<f32>(x_317.x, x_317.y, x_317.z));
  let x_328 : vec3<f32> = u_xlat3;
  let x_330 : vec4<f32> = textureSampleBias(x_LightTexture0, sampler_LightTexture0, x_328, -8.0f);
  u_xlat11 = x_330.w;
  let x_333 : f32 = u_xlat0.x;
  let x_334 : f32 = u_xlat11;
  u_xlat0.x = (x_333 * x_334);
  let x_337 : vec3<f32> = u_xlat0;
  let x_341 : vec4<f32> = x_14.x_LightColor;
  u_xlat3 = (vec3<f32>(x_337.x, x_337.x, x_337.x) * vec3<f32>(x_341.x, x_341.y, x_341.z));
  let x_350 : vec3<f32> = u_xlat1;
  let x_352 : vec4<f32> = textureSample(x_CameraGBufferTexture2, sampler_CameraGBufferTexture2, vec2<f32>(x_350.x, x_350.y));
  u_xlat4 = vec3<f32>(x_352.x, x_352.y, x_352.z);
  let x_354 : vec3<f32> = u_xlat4;
  u_xlat4 = ((x_354 * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_361 : vec3<f32> = u_xlat4;
  let x_362 : vec3<f32> = u_xlat4;
  u_xlat0.x = dot(x_361, x_362);
  let x_366 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_366);
  let x_369 : vec3<f32> = u_xlat0;
  let x_371 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_369.x, x_369.x, x_369.x) * x_371);
  let x_373 : vec3<f32> = u_xlat4;
  let x_374 : vec3<f32> = u_xlat5;
  u_xlat0.x = dot(x_373, -(x_374));
  let x_379 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_379, 0.0f, 1.0f);
  let x_382 : vec3<f32> = u_xlat0;
  let x_384 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_382.x, x_382.x, x_382.x) * x_384);
  let x_386 : vec4<f32> = u_xlat2;
  let x_388 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(x_386.x, x_386.y, x_386.z), vec3<f32>(x_388.x, x_388.y, x_388.z));
  let x_393 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_393);
  let x_396 : vec3<f32> = u_xlat0;
  let x_398 : vec4<f32> = u_xlat2;
  let x_400 : vec3<f32> = (vec3<f32>(x_396.x, x_396.x, x_396.x) * vec3<f32>(x_398.x, x_398.y, x_398.z));
  let x_401 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_400.x, x_400.y, x_400.z, x_401.w);
  let x_403 : vec4<f32> = u_xlat2;
  let x_406 : vec3<f32> = u_xlat4;
  u_xlat0.x = dot(-(vec3<f32>(x_403.x, x_403.y, x_403.z)), x_406);
  let x_410 : f32 = u_xlat0.x;
  let x_412 : f32 = u_xlat0.x;
  u_xlat0.x = (x_410 + x_412);
  let x_415 : vec3<f32> = u_xlat4;
  let x_416 : vec3<f32> = u_xlat0;
  let x_420 : vec4<f32> = u_xlat2;
  let x_423 : vec3<f32> = ((x_415 * -(vec3<f32>(x_416.x, x_416.x, x_416.x))) + -(vec3<f32>(x_420.x, x_420.y, x_420.z)));
  let x_424 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_423.x, x_423.y, x_423.z, x_424.w);
  let x_426 : vec4<f32> = u_xlat2;
  let x_428 : vec3<f32> = u_xlat5;
  u_xlat0.x = dot(vec3<f32>(x_426.x, x_426.y, x_426.z), -(x_428));
  let x_433 : f32 = u_xlat0.x;
  let x_435 : f32 = u_xlat0.x;
  u_xlat0.x = (x_433 * x_435);
  let x_439 : f32 = u_xlat0.x;
  let x_441 : f32 = u_xlat0.x;
  u_xlat0.x = (x_439 * x_441);
  let x_449 : vec3<f32> = u_xlat1;
  let x_451 : vec4<f32> = textureSample(x_CameraGBufferTexture1, sampler_CameraGBufferTexture1, vec2<f32>(x_449.x, x_449.y));
  u_xlat2 = x_451;
  let x_457 : vec3<f32> = u_xlat1;
  let x_459 : vec4<f32> = textureSample(x_CameraGBufferTexture0, sampler_CameraGBufferTexture0, vec2<f32>(x_457.x, x_457.y));
  u_xlat1 = vec3<f32>(x_459.x, x_459.y, x_459.z);
  let x_462 : f32 = u_xlat2.w;
  u_xlat0.y = (-(x_462) + 1.0f);
  let x_471 : vec3<f32> = u_xlat0;
  let x_473 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_471.x, x_471.y));
  u_xlat0.x = x_473.x;
  let x_477 : f32 = u_xlat0.x;
  u_xlat0.x = (x_477 * 16.0f);
  let x_481 : vec3<f32> = u_xlat0;
  let x_483 : vec4<f32> = u_xlat2;
  let x_486 : vec3<f32> = u_xlat1;
  u_xlat0 = ((vec3<f32>(x_481.x, x_481.x, x_481.x) * vec3<f32>(x_483.x, x_483.y, x_483.z)) + x_486);
  let x_490 : vec3<f32> = u_xlat3;
  let x_491 : vec3<f32> = u_xlat0;
  let x_492 : vec3<f32> = (x_490 * x_491);
  let x_493 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_492.x, x_492.y, x_492.z, x_493.w);
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

