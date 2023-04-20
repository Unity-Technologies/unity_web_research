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

var<private> u_xlat0 : vec3<f32>;

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
  let x_179 : vec4<f32> = u_xlat2;
  let x_183 : vec3<f32> = x_14.x_WorldSpaceCameraPos;
  let x_185 : vec3<f32> = (vec3<f32>(x_179.x, x_179.y, x_179.w) + -(x_183));
  let x_186 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_185.x, x_185.y, x_185.z, x_186.w);
  let x_190 : f32 = u_xlat5.y;
  let x_193 : f32 = u_xlat5.x;
  u_xlat11 = max(abs(x_190), abs(x_193));
  let x_197 : f32 = u_xlat5.z;
  let x_199 : f32 = u_xlat11;
  u_xlat11 = max(abs(x_197), x_199);
  let x_201 : f32 = u_xlat11;
  let x_204 : f32 = x_14.x_LightProjectionParams.z;
  u_xlat11 = (x_201 + -(x_204));
  let x_207 : f32 = u_xlat11;
  u_xlat11 = max(x_207, 0.00000999999974737875f);
  let x_210 : f32 = u_xlat11;
  let x_212 : f32 = x_14.x_LightProjectionParams.w;
  u_xlat11 = (x_210 * x_212);
  let x_215 : f32 = x_14.x_LightProjectionParams.y;
  let x_216 : f32 = u_xlat11;
  u_xlat11 = (x_215 / x_216);
  let x_218 : f32 = u_xlat11;
  let x_220 : f32 = x_14.x_LightProjectionParams.x;
  u_xlat11 = (x_218 + -(x_220));
  let x_223 : f32 = u_xlat11;
  u_xlat11 = (-(x_223) + 1.0f);
  let x_228 : vec3<f32> = u_xlat5;
  let x_229 : f32 = u_xlat11;
  txVec0 = vec4<f32>(x_228.x, x_228.y, x_228.z, x_229);
  let x_242 : vec4<f32> = txVec0;
  let x_244 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_242.xyz, x_242.w);
  u_xlat11 = x_244;
  let x_247 : f32 = x_14.x_LightShadowData.x;
  u_xlat16 = (-(x_247) + 1.0f);
  let x_250 : f32 = u_xlat11;
  let x_251 : f32 = u_xlat16;
  let x_254 : f32 = x_14.x_LightShadowData.x;
  u_xlat11 = ((x_250 * x_251) + x_254);
  let x_256 : f32 = u_xlat11;
  u_xlat16 = (-(x_256) + 1.0f);
  let x_260 : f32 = u_xlat0.x;
  let x_261 : f32 = u_xlat16;
  let x_263 : f32 = u_xlat11;
  u_xlat0.x = ((x_260 * x_261) + x_263);
  let x_266 : vec3<f32> = u_xlat5;
  let x_267 : vec3<f32> = u_xlat5;
  u_xlat11 = dot(x_266, x_267);
  let x_269 : f32 = u_xlat11;
  let x_271 : f32 = x_14.x_LightPos.w;
  u_xlat16 = (x_269 * x_271);
  let x_273 : f32 = u_xlat11;
  u_xlat11 = inverseSqrt(x_273);
  let x_275 : vec3<f32> = u_xlat5;
  let x_276 : f32 = u_xlat11;
  u_xlat5 = (x_275 * vec3<f32>(x_276, x_276, x_276));
  let x_284 : f32 = u_xlat16;
  let x_286 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_284, x_284));
  u_xlat11 = x_286.x;
  let x_289 : f32 = u_xlat0.x;
  let x_290 : f32 = u_xlat11;
  u_xlat0.x = (x_289 * x_290);
  let x_293 : vec3<f32> = u_xlat0;
  let x_297 : vec4<f32> = x_14.x_LightColor;
  u_xlat3 = (vec3<f32>(x_293.x, x_293.x, x_293.x) * vec3<f32>(x_297.x, x_297.y, x_297.z));
  let x_306 : vec3<f32> = u_xlat1;
  let x_308 : vec4<f32> = textureSample(x_CameraGBufferTexture2, sampler_CameraGBufferTexture2, vec2<f32>(x_306.x, x_306.y));
  u_xlat4 = vec3<f32>(x_308.x, x_308.y, x_308.z);
  let x_310 : vec3<f32> = u_xlat4;
  u_xlat4 = ((x_310 * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_317 : vec3<f32> = u_xlat4;
  let x_318 : vec3<f32> = u_xlat4;
  u_xlat0.x = dot(x_317, x_318);
  let x_322 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_322);
  let x_325 : vec3<f32> = u_xlat0;
  let x_327 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_325.x, x_325.x, x_325.x) * x_327);
  let x_329 : vec3<f32> = u_xlat4;
  let x_330 : vec3<f32> = u_xlat5;
  u_xlat0.x = dot(x_329, -(x_330));
  let x_335 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_335, 0.0f, 1.0f);
  let x_338 : vec3<f32> = u_xlat0;
  let x_340 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_338.x, x_338.x, x_338.x) * x_340);
  let x_342 : vec4<f32> = u_xlat2;
  let x_344 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(x_342.x, x_342.y, x_342.z), vec3<f32>(x_344.x, x_344.y, x_344.z));
  let x_349 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_349);
  let x_352 : vec3<f32> = u_xlat0;
  let x_354 : vec4<f32> = u_xlat2;
  let x_356 : vec3<f32> = (vec3<f32>(x_352.x, x_352.x, x_352.x) * vec3<f32>(x_354.x, x_354.y, x_354.z));
  let x_357 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_356.x, x_356.y, x_356.z, x_357.w);
  let x_359 : vec4<f32> = u_xlat2;
  let x_362 : vec3<f32> = u_xlat4;
  u_xlat0.x = dot(-(vec3<f32>(x_359.x, x_359.y, x_359.z)), x_362);
  let x_366 : f32 = u_xlat0.x;
  let x_368 : f32 = u_xlat0.x;
  u_xlat0.x = (x_366 + x_368);
  let x_371 : vec3<f32> = u_xlat4;
  let x_372 : vec3<f32> = u_xlat0;
  let x_376 : vec4<f32> = u_xlat2;
  let x_379 : vec3<f32> = ((x_371 * -(vec3<f32>(x_372.x, x_372.x, x_372.x))) + -(vec3<f32>(x_376.x, x_376.y, x_376.z)));
  let x_380 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_379.x, x_379.y, x_379.z, x_380.w);
  let x_382 : vec4<f32> = u_xlat2;
  let x_384 : vec3<f32> = u_xlat5;
  u_xlat0.x = dot(vec3<f32>(x_382.x, x_382.y, x_382.z), -(x_384));
  let x_389 : f32 = u_xlat0.x;
  let x_391 : f32 = u_xlat0.x;
  u_xlat0.x = (x_389 * x_391);
  let x_395 : f32 = u_xlat0.x;
  let x_397 : f32 = u_xlat0.x;
  u_xlat0.x = (x_395 * x_397);
  let x_405 : vec3<f32> = u_xlat1;
  let x_407 : vec4<f32> = textureSample(x_CameraGBufferTexture1, sampler_CameraGBufferTexture1, vec2<f32>(x_405.x, x_405.y));
  u_xlat2 = x_407;
  let x_413 : vec3<f32> = u_xlat1;
  let x_415 : vec4<f32> = textureSample(x_CameraGBufferTexture0, sampler_CameraGBufferTexture0, vec2<f32>(x_413.x, x_413.y));
  u_xlat1 = vec3<f32>(x_415.x, x_415.y, x_415.z);
  let x_418 : f32 = u_xlat2.w;
  u_xlat0.y = (-(x_418) + 1.0f);
  let x_427 : vec3<f32> = u_xlat0;
  let x_429 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_427.x, x_427.y));
  u_xlat0.x = x_429.x;
  let x_433 : f32 = u_xlat0.x;
  u_xlat0.x = (x_433 * 16.0f);
  let x_437 : vec3<f32> = u_xlat0;
  let x_439 : vec4<f32> = u_xlat2;
  let x_442 : vec3<f32> = u_xlat1;
  u_xlat0 = ((vec3<f32>(x_437.x, x_437.x, x_437.x) * vec3<f32>(x_439.x, x_439.y, x_439.z)) + x_442);
  let x_446 : vec3<f32> = u_xlat3;
  let x_447 : vec3<f32> = u_xlat0;
  let x_448 : vec3<f32> = (x_446 * x_447);
  let x_449 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_448.x, x_448.y, x_448.z, x_449.w);
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


