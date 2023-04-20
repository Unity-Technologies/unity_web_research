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
  unity_SpecCube0_BoxMax : vec4<f32>,
  /* @offset(128) */
  unity_SpecCube0_BoxMin : vec4<f32>,
  /* @offset(144) */
  unity_SpecCube0_HDR : vec4<f32>,
  /* @offset(160) */
  unity_SpecCube1_ProbePosition : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_14 : PGlobals;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat1 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat15 : f32;

@group(0) @binding(0) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_CameraDepthTexture : sampler;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(3) var x_CameraGBufferTexture2 : texture_2d<f32>;

@group(0) @binding(9) var sampler_CameraGBufferTexture2 : sampler;

var<private> u_xlat4 : vec3<f32>;

@group(0) @binding(2) var x_CameraGBufferTexture1 : texture_2d<f32>;

@group(0) @binding(8) var sampler_CameraGBufferTexture1 : sampler;

@group(0) @binding(1) var x_CameraGBufferTexture0 : texture_2d<f32>;

@group(0) @binding(7) var sampler_CameraGBufferTexture0 : sampler;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat11 : f32;

@group(0) @binding(4) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat16 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
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
  let x_76 : f32 = u_xlat15;
  let x_78 : vec4<f32> = u_xlat0;
  let x_80 : vec3<f32> = (vec3<f32>(x_76, x_76, x_76) * vec3<f32>(x_78.x, x_78.y, x_78.z));
  let x_81 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_80.x, x_80.y, x_80.z, x_81.w);
  let x_84 : vec4<f32> = u_xlat0;
  let x_89 : vec4<f32> = x_14.unity_CameraToWorld[1i];
  let x_91 : vec3<f32> = (vec3<f32>(x_84.y, x_84.y, x_84.y) * vec3<f32>(x_89.x, x_89.y, x_89.z));
  let x_92 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_91.x, x_91.y, x_91.z, x_92.w);
  let x_96 : vec4<f32> = x_14.unity_CameraToWorld[0i];
  let x_98 : vec4<f32> = u_xlat0;
  let x_101 : vec4<f32> = u_xlat2;
  let x_103 : vec3<f32> = ((vec3<f32>(x_96.x, x_96.y, x_96.z) * vec3<f32>(x_98.x, x_98.x, x_98.x)) + vec3<f32>(x_101.x, x_101.y, x_101.z));
  let x_104 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_103.x, x_103.y, x_104.z, x_103.z);
  let x_107 : vec4<f32> = x_14.unity_CameraToWorld[2i];
  let x_109 : vec4<f32> = u_xlat0;
  let x_112 : vec4<f32> = u_xlat0;
  let x_114 : vec3<f32> = ((vec3<f32>(x_107.x, x_107.y, x_107.z) * vec3<f32>(x_109.z, x_109.z, x_109.z)) + vec3<f32>(x_112.x, x_112.y, x_112.w));
  let x_115 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_114.x, x_114.y, x_114.z, x_115.w);
  let x_117 : vec4<f32> = u_xlat0;
  let x_120 : vec4<f32> = x_14.unity_CameraToWorld[3i];
  let x_122 : vec3<f32> = (vec3<f32>(x_117.x, x_117.y, x_117.z) + vec3<f32>(x_120.x, x_120.y, x_120.z));
  let x_123 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_122.x, x_122.y, x_122.z, x_123.w);
  let x_125 : vec4<f32> = u_xlat0;
  let x_129 : vec3<f32> = x_14.x_WorldSpaceCameraPos;
  let x_131 : vec3<f32> = (vec3<f32>(x_125.x, x_125.y, x_125.z) + -(x_129));
  let x_132 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_131.x, x_131.y, x_131.z, x_132.w);
  let x_134 : vec4<f32> = u_xlat2;
  let x_136 : vec4<f32> = u_xlat2;
  u_xlat15 = dot(vec3<f32>(x_134.x, x_134.y, x_134.z), vec3<f32>(x_136.x, x_136.y, x_136.z));
  let x_139 : f32 = u_xlat15;
  u_xlat15 = inverseSqrt(x_139);
  let x_141 : f32 = u_xlat15;
  let x_143 : vec4<f32> = u_xlat2;
  let x_145 : vec3<f32> = (vec3<f32>(x_141, x_141, x_141) * vec3<f32>(x_143.x, x_143.y, x_143.z));
  let x_146 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_145.x, x_145.y, x_145.z, x_146.w);
  let x_154 : vec3<f32> = u_xlat1;
  let x_156 : vec4<f32> = textureSample(x_CameraGBufferTexture2, sampler_CameraGBufferTexture2, vec2<f32>(x_154.x, x_154.y));
  let x_157 : vec3<f32> = vec3<f32>(x_156.x, x_156.y, x_156.z);
  let x_158 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_157.x, x_157.y, x_157.z, x_158.w);
  let x_160 : vec4<f32> = u_xlat3;
  let x_167 : vec3<f32> = ((vec3<f32>(x_160.x, x_160.y, x_160.z) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_168 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_167.x, x_167.y, x_167.z, x_168.w);
  let x_170 : vec4<f32> = u_xlat3;
  let x_172 : vec4<f32> = u_xlat3;
  u_xlat15 = dot(vec3<f32>(x_170.x, x_170.y, x_170.z), vec3<f32>(x_172.x, x_172.y, x_172.z));
  let x_175 : f32 = u_xlat15;
  u_xlat15 = inverseSqrt(x_175);
  let x_177 : f32 = u_xlat15;
  let x_179 : vec4<f32> = u_xlat3;
  let x_181 : vec3<f32> = (vec3<f32>(x_177, x_177, x_177) * vec3<f32>(x_179.x, x_179.y, x_179.z));
  let x_182 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_181.x, x_181.y, x_181.z, x_182.w);
  let x_184 : vec4<f32> = u_xlat2;
  let x_186 : vec4<f32> = u_xlat3;
  u_xlat15 = dot(vec3<f32>(x_184.x, x_184.y, x_184.z), vec3<f32>(x_186.x, x_186.y, x_186.z));
  let x_189 : f32 = u_xlat15;
  let x_190 : f32 = u_xlat15;
  u_xlat15 = (x_189 + x_190);
  let x_193 : vec4<f32> = u_xlat3;
  let x_195 : f32 = u_xlat15;
  let x_199 : vec4<f32> = u_xlat2;
  u_xlat4 = ((vec3<f32>(x_193.x, x_193.y, x_193.z) * -(vec3<f32>(x_195, x_195, x_195))) + vec3<f32>(x_199.x, x_199.y, x_199.z));
  let x_202 : vec4<f32> = u_xlat3;
  let x_204 : vec4<f32> = u_xlat2;
  u_xlat15 = dot(vec3<f32>(x_202.x, x_202.y, x_202.z), -(vec3<f32>(x_204.x, x_204.y, x_204.z)));
  let x_208 : f32 = u_xlat15;
  u_xlat15 = clamp(x_208, 0.0f, 1.0f);
  let x_211 : f32 = u_xlat15;
  u_xlat15 = (-(x_211) + 1.0f);
  let x_214 : f32 = u_xlat15;
  let x_215 : f32 = u_xlat15;
  u_xlat15 = (x_214 * x_215);
  let x_217 : f32 = u_xlat15;
  let x_218 : f32 = u_xlat15;
  u_xlat15 = (x_217 * x_218);
  let x_225 : vec3<f32> = u_xlat1;
  let x_227 : vec4<f32> = textureSample(x_CameraGBufferTexture1, sampler_CameraGBufferTexture1, vec2<f32>(x_225.x, x_225.y));
  u_xlat2 = x_227;
  let x_233 : vec3<f32> = u_xlat1;
  let x_235 : vec4<f32> = textureSample(x_CameraGBufferTexture0, sampler_CameraGBufferTexture0, vec2<f32>(x_233.x, x_233.y));
  u_xlat1.x = x_235.w;
  let x_241 : f32 = u_xlat2.w;
  u_xlat6.x = (-(x_241) + 1.0f);
  let x_247 : f32 = u_xlat6.x;
  u_xlat11 = ((-(x_247) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_253 : f32 = u_xlat11;
  let x_255 : f32 = u_xlat6.x;
  u_xlat6.x = (x_253 * x_255);
  let x_259 : f32 = u_xlat6.x;
  u_xlat6.x = (x_259 * 6.0f);
  let x_271 : vec3<f32> = u_xlat4;
  let x_273 : f32 = u_xlat6.x;
  let x_274 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_271, x_273);
  u_xlat3 = x_274;
  let x_276 : f32 = u_xlat3.w;
  u_xlat6.x = (x_276 + -1.0f);
  let x_281 : f32 = x_14.unity_SpecCube0_HDR.w;
  let x_283 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_281 * x_283) + 1.0f);
  let x_288 : f32 = u_xlat6.x;
  u_xlat6.x = log2(x_288);
  let x_292 : f32 = u_xlat6.x;
  let x_294 : f32 = x_14.unity_SpecCube0_HDR.y;
  u_xlat6.x = (x_292 * x_294);
  let x_298 : f32 = u_xlat6.x;
  u_xlat6.x = exp2(x_298);
  let x_302 : f32 = u_xlat6.x;
  let x_304 : f32 = x_14.unity_SpecCube0_HDR.x;
  u_xlat6.x = (x_302 * x_304);
  let x_307 : vec4<f32> = u_xlat3;
  let x_309 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_307.x, x_307.y, x_307.z) * vec3<f32>(x_309.x, x_309.x, x_309.x));
  let x_312 : vec3<f32> = u_xlat1;
  let x_314 : vec3<f32> = u_xlat6;
  u_xlat1 = (vec3<f32>(x_312.x, x_312.x, x_312.x) * x_314);
  let x_318 : f32 = u_xlat2.y;
  let x_320 : f32 = u_xlat2.x;
  u_xlat16 = max(x_318, x_320);
  let x_323 : f32 = u_xlat2.z;
  let x_324 : f32 = u_xlat16;
  u_xlat16 = max(x_323, x_324);
  let x_326 : f32 = u_xlat16;
  u_xlat16 = (-(x_326) + 1.0f);
  let x_329 : f32 = u_xlat16;
  let x_332 : f32 = u_xlat2.w;
  u_xlat16 = (-(x_329) + x_332);
  let x_334 : f32 = u_xlat16;
  u_xlat16 = (x_334 + 1.0f);
  let x_336 : f32 = u_xlat16;
  u_xlat16 = clamp(x_336, 0.0f, 1.0f);
  let x_338 : vec4<f32> = u_xlat2;
  let x_341 : f32 = u_xlat16;
  let x_343 : vec3<f32> = (-(vec3<f32>(x_338.x, x_338.y, x_338.z)) + vec3<f32>(x_341, x_341, x_341));
  let x_344 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_343.x, x_343.y, x_343.z, x_344.w);
  let x_346 : f32 = u_xlat15;
  let x_348 : vec4<f32> = u_xlat3;
  let x_351 : vec4<f32> = u_xlat2;
  let x_353 : vec3<f32> = ((vec3<f32>(x_346, x_346, x_346) * vec3<f32>(x_348.x, x_348.y, x_348.z)) + vec3<f32>(x_351.x, x_351.y, x_351.z));
  let x_354 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_353.x, x_353.y, x_353.z, x_354.w);
  let x_358 : vec3<f32> = u_xlat1;
  let x_359 : vec4<f32> = u_xlat2;
  let x_361 : vec3<f32> = (x_358 * vec3<f32>(x_359.x, x_359.y, x_359.z));
  let x_362 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_361.x, x_361.y, x_361.z, x_362.w);
  let x_364 : vec4<f32> = u_xlat0;
  let x_368 : vec4<f32> = x_14.unity_SpecCube0_BoxMax;
  u_xlat1 = (vec3<f32>(x_364.x, x_364.y, x_364.z) + -(vec3<f32>(x_368.x, x_368.y, x_368.z)));
  let x_372 : vec4<f32> = u_xlat0;
  let x_377 : vec4<f32> = x_14.unity_SpecCube0_BoxMin;
  let x_379 : vec3<f32> = (-(vec3<f32>(x_372.x, x_372.y, x_372.z)) + vec3<f32>(x_377.x, x_377.y, x_377.z));
  let x_380 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_379.x, x_379.y, x_379.z, x_380.w);
  let x_382 : vec4<f32> = u_xlat0;
  let x_384 : vec3<f32> = u_xlat1;
  let x_385 : vec3<f32> = max(vec3<f32>(x_382.x, x_382.y, x_382.z), x_384);
  let x_386 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_385.x, x_385.y, x_385.z, x_386.w);
  let x_388 : vec4<f32> = u_xlat0;
  let x_391 : vec3<f32> = max(vec3<f32>(x_388.x, x_388.y, x_388.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_392 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_391.x, x_391.y, x_391.z, x_392.w);
  let x_394 : vec4<f32> = u_xlat0;
  let x_396 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_394.x, x_394.y, x_394.z), vec3<f32>(x_396.x, x_396.y, x_396.z));
  let x_401 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_401);
  let x_405 : f32 = u_xlat0.x;
  let x_408 : f32 = x_14.unity_SpecCube1_ProbePosition.w;
  u_xlat0.x = (x_405 / x_408);
  let x_412 : f32 = u_xlat0.x;
  SV_Target0.w = (-(x_412) + 1.0f);
  let x_418 : f32 = SV_Target0.w;
  SV_Target0.w = clamp(x_418, 0.0f, 1.0f);
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


