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
  x_LightShadowData : vec4<f32>,
  /* @offset(128) */
  unity_ShadowFadeCenterAndType : vec4<f32>,
  /* @offset(144) */
  x_LightDir : vec4<f32>,
  /* @offset(160) */
  x_LightColor : vec4<f32>,
  /* @offset(176) */
  unity_WorldToLight : mat4x4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_14 : PGlobals;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat1 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat12 : f32;

@group(0) @binding(0) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_CameraDepthTexture : sampler;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec2<f32>;

@group(0) @binding(1) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_ShadowMapTexture : sampler;

var<private> u_xlat8 : f32;

@group(0) @binding(2) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(8) var sampler_LightTexture0 : sampler;

@group(0) @binding(5) var x_CameraGBufferTexture2 : texture_2d<f32>;

@group(0) @binding(13) var sampler_CameraGBufferTexture2 : sampler;

@group(0) @binding(4) var x_CameraGBufferTexture1 : texture_2d<f32>;

@group(0) @binding(12) var sampler_CameraGBufferTexture1 : sampler;

@group(0) @binding(3) var x_CameraGBufferTexture0 : texture_2d<f32>;

@group(0) @binding(11) var sampler_CameraGBufferTexture0 : sampler;

@group(0) @binding(6) var unity_NHxRoughness : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_NHxRoughness : sampler;

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
  u_xlat12 = x_59.x;
  let x_63 : f32 = x_14.x_ZBufferParams.x;
  let x_64 : f32 = u_xlat12;
  let x_68 : f32 = x_14.x_ZBufferParams.y;
  u_xlat12 = ((x_63 * x_64) + x_68);
  let x_71 : f32 = u_xlat12;
  u_xlat12 = (1.0f / x_71);
  let x_75 : f32 = u_xlat12;
  let x_77 : vec3<f32> = u_xlat0;
  let x_78 : vec3<f32> = (vec3<f32>(x_75, x_75, x_75) * x_77);
  let x_79 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_78.x, x_78.y, x_78.z, x_79.w);
  let x_82 : vec4<f32> = u_xlat2;
  let x_87 : vec4<f32> = x_14.unity_CameraToWorld[1i];
  let x_89 : vec3<f32> = (vec3<f32>(x_82.y, x_82.y, x_82.y) * vec3<f32>(x_87.x, x_87.y, x_87.z));
  let x_90 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_89.x, x_89.y, x_89.z, x_90.w);
  let x_94 : vec4<f32> = x_14.unity_CameraToWorld[0i];
  let x_96 : vec4<f32> = u_xlat2;
  let x_99 : vec4<f32> = u_xlat3;
  let x_101 : vec3<f32> = ((vec3<f32>(x_94.x, x_94.y, x_94.z) * vec3<f32>(x_96.x, x_96.x, x_96.x)) + vec3<f32>(x_99.x, x_99.y, x_99.z));
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
  let x_130 : vec3<f32> = (vec3<f32>(x_123.x, x_123.y, x_123.w) + -(vec3<f32>(x_127.x, x_127.y, x_127.z)));
  let x_131 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_130.x, x_130.y, x_130.z, x_131.w);
  let x_133 : vec4<f32> = u_xlat3;
  let x_135 : vec4<f32> = u_xlat3;
  u_xlat0.x = dot(vec3<f32>(x_133.x, x_133.y, x_133.z), vec3<f32>(x_135.x, x_135.y, x_135.z));
  let x_140 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_140);
  let x_144 : f32 = u_xlat0.z;
  let x_146 : f32 = u_xlat12;
  let x_149 : f32 = u_xlat0.x;
  u_xlat0.x = ((-(x_144) * x_146) + x_149);
  let x_154 : f32 = x_14.unity_ShadowFadeCenterAndType.w;
  let x_156 : f32 = u_xlat0.x;
  let x_159 : f32 = u_xlat2.z;
  u_xlat0.x = ((x_154 * x_156) + x_159);
  let x_163 : f32 = u_xlat0.x;
  let x_166 : f32 = x_14.x_LightShadowData.z;
  let x_169 : f32 = x_14.x_LightShadowData.w;
  u_xlat0.x = ((x_163 * x_166) + x_169);
  let x_173 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_173, 0.0f, 1.0f);
  let x_184 : vec3<f32> = u_xlat1;
  let x_186 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, vec2<f32>(x_184.x, x_184.y));
  u_xlat4.x = x_186.x;
  let x_191 : f32 = u_xlat4.x;
  u_xlat8 = (-(x_191) + 1.0f);
  let x_195 : f32 = u_xlat0.x;
  let x_196 : f32 = u_xlat8;
  let x_199 : f32 = u_xlat4.x;
  u_xlat0.x = ((x_195 * x_196) + x_199);
  let x_202 : vec4<f32> = u_xlat2;
  let x_206 : vec4<f32> = x_14.unity_WorldToLight[1i];
  u_xlat4 = (vec2<f32>(x_202.y, x_202.y) * vec2<f32>(x_206.x, x_206.y));
  let x_210 : vec4<f32> = x_14.unity_WorldToLight[0i];
  let x_212 : vec4<f32> = u_xlat2;
  let x_215 : vec2<f32> = u_xlat4;
  u_xlat4 = ((vec2<f32>(x_210.x, x_210.y) * vec2<f32>(x_212.x, x_212.x)) + x_215);
  let x_218 : vec4<f32> = x_14.unity_WorldToLight[2i];
  let x_220 : vec4<f32> = u_xlat2;
  let x_223 : vec2<f32> = u_xlat4;
  u_xlat4 = ((vec2<f32>(x_218.x, x_218.y) * vec2<f32>(x_220.w, x_220.w)) + x_223);
  let x_225 : vec4<f32> = u_xlat2;
  let x_229 : vec3<f32> = x_14.x_WorldSpaceCameraPos;
  let x_231 : vec3<f32> = (vec3<f32>(x_225.x, x_225.y, x_225.w) + -(x_229));
  let x_232 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_231.x, x_231.y, x_231.z, x_232.w);
  let x_234 : vec2<f32> = u_xlat4;
  let x_236 : vec4<f32> = x_14.unity_WorldToLight[3i];
  u_xlat4 = (x_234 + vec2<f32>(x_236.x, x_236.y));
  let x_244 : vec2<f32> = u_xlat4;
  let x_246 : vec4<f32> = textureSampleBias(x_LightTexture0, sampler_LightTexture0, x_244, -8.0f);
  u_xlat4.x = x_246.w;
  let x_250 : f32 = u_xlat4.x;
  let x_252 : f32 = u_xlat0.x;
  u_xlat0.x = (x_250 * x_252);
  let x_255 : vec3<f32> = u_xlat0;
  let x_259 : vec4<f32> = x_14.x_LightColor;
  u_xlat0 = (vec3<f32>(x_255.x, x_255.x, x_255.x) * vec3<f32>(x_259.x, x_259.y, x_259.z));
  let x_267 : vec3<f32> = u_xlat1;
  let x_269 : vec4<f32> = textureSample(x_CameraGBufferTexture2, sampler_CameraGBufferTexture2, vec2<f32>(x_267.x, x_267.y));
  let x_270 : vec3<f32> = vec3<f32>(x_269.x, x_269.y, x_269.z);
  let x_271 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_270.x, x_270.y, x_270.z, x_271.w);
  let x_273 : vec4<f32> = u_xlat3;
  let x_280 : vec3<f32> = ((vec3<f32>(x_273.x, x_273.y, x_273.z) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_281 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_280.x, x_280.y, x_280.z, x_281.w);
  let x_283 : vec4<f32> = u_xlat3;
  let x_285 : vec4<f32> = u_xlat3;
  u_xlat12 = dot(vec3<f32>(x_283.x, x_283.y, x_283.z), vec3<f32>(x_285.x, x_285.y, x_285.z));
  let x_288 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_288);
  let x_290 : f32 = u_xlat12;
  let x_292 : vec4<f32> = u_xlat3;
  let x_294 : vec3<f32> = (vec3<f32>(x_290, x_290, x_290) * vec3<f32>(x_292.x, x_292.y, x_292.z));
  let x_295 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_294.x, x_294.y, x_294.z, x_295.w);
  let x_297 : vec4<f32> = u_xlat3;
  let x_301 : vec4<f32> = x_14.x_LightDir;
  u_xlat12 = dot(vec3<f32>(x_297.x, x_297.y, x_297.z), -(vec3<f32>(x_301.x, x_301.y, x_301.z)));
  let x_305 : f32 = u_xlat12;
  u_xlat12 = clamp(x_305, 0.0f, 1.0f);
  let x_307 : f32 = u_xlat12;
  let x_309 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_307, x_307, x_307) * x_309);
  let x_311 : vec4<f32> = u_xlat2;
  let x_313 : vec4<f32> = u_xlat2;
  u_xlat12 = dot(vec3<f32>(x_311.x, x_311.y, x_311.z), vec3<f32>(x_313.x, x_313.y, x_313.z));
  let x_316 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_316);
  let x_318 : f32 = u_xlat12;
  let x_320 : vec4<f32> = u_xlat2;
  let x_322 : vec3<f32> = (vec3<f32>(x_318, x_318, x_318) * vec3<f32>(x_320.x, x_320.y, x_320.z));
  let x_323 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_322.x, x_322.y, x_322.z, x_323.w);
  let x_325 : vec4<f32> = u_xlat2;
  let x_328 : vec4<f32> = u_xlat3;
  u_xlat12 = dot(-(vec3<f32>(x_325.x, x_325.y, x_325.z)), vec3<f32>(x_328.x, x_328.y, x_328.z));
  let x_331 : f32 = u_xlat12;
  let x_332 : f32 = u_xlat12;
  u_xlat12 = (x_331 + x_332);
  let x_334 : vec4<f32> = u_xlat3;
  let x_336 : f32 = u_xlat12;
  let x_340 : vec4<f32> = u_xlat2;
  let x_343 : vec3<f32> = ((vec3<f32>(x_334.x, x_334.y, x_334.z) * -(vec3<f32>(x_336, x_336, x_336))) + -(vec3<f32>(x_340.x, x_340.y, x_340.z)));
  let x_344 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_343.x, x_343.y, x_343.z, x_344.w);
  let x_346 : vec4<f32> = u_xlat2;
  let x_349 : vec4<f32> = x_14.x_LightDir;
  u_xlat12 = dot(vec3<f32>(x_346.x, x_346.y, x_346.z), -(vec3<f32>(x_349.x, x_349.y, x_349.z)));
  let x_353 : f32 = u_xlat12;
  let x_354 : f32 = u_xlat12;
  u_xlat12 = (x_353 * x_354);
  let x_356 : f32 = u_xlat12;
  let x_357 : f32 = u_xlat12;
  u_xlat2.x = (x_356 * x_357);
  let x_365 : vec3<f32> = u_xlat1;
  let x_367 : vec4<f32> = textureSample(x_CameraGBufferTexture1, sampler_CameraGBufferTexture1, vec2<f32>(x_365.x, x_365.y));
  u_xlat3 = x_367;
  let x_373 : vec3<f32> = u_xlat1;
  let x_375 : vec4<f32> = textureSample(x_CameraGBufferTexture0, sampler_CameraGBufferTexture0, vec2<f32>(x_373.x, x_373.y));
  u_xlat1 = vec3<f32>(x_375.x, x_375.y, x_375.z);
  let x_378 : f32 = u_xlat3.w;
  u_xlat2.y = (-(x_378) + 1.0f);
  let x_387 : vec4<f32> = u_xlat2;
  let x_389 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_387.x, x_387.y));
  u_xlat12 = x_389.x;
  let x_391 : f32 = u_xlat12;
  u_xlat12 = (x_391 * 16.0f);
  let x_394 : f32 = u_xlat12;
  let x_396 : vec4<f32> = u_xlat3;
  let x_399 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_394, x_394, x_394) * vec3<f32>(x_396.x, x_396.y, x_396.z)) + x_399);
  let x_403 : vec3<f32> = u_xlat0;
  let x_404 : vec3<f32> = u_xlat1;
  let x_405 : vec3<f32> = (x_403 * x_404);
  let x_406 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_405.x, x_405.y, x_405.z, x_406.w);
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


