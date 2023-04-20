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
}

var<private> u_xlat0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_14 : PGlobals;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat1 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat12 : f32;

@group(0) @binding(0) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_CameraDepthTexture : sampler;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : f32;

@group(0) @binding(1) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_ShadowMapTexture : sampler;

var<private> u_xlat8 : f32;

@group(0) @binding(4) var x_CameraGBufferTexture2 : texture_2d<f32>;

@group(0) @binding(11) var sampler_CameraGBufferTexture2 : sampler;

@group(0) @binding(3) var x_CameraGBufferTexture1 : texture_2d<f32>;

@group(0) @binding(10) var sampler_CameraGBufferTexture1 : sampler;

@group(0) @binding(2) var x_CameraGBufferTexture0 : texture_2d<f32>;

@group(0) @binding(9) var sampler_CameraGBufferTexture0 : sampler;

@group(0) @binding(5) var unity_NHxRoughness : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_NHxRoughness : sampler;

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
  u_xlat12 = x_62.x;
  let x_66 : f32 = x_14.x_ZBufferParams.x;
  let x_67 : f32 = u_xlat12;
  let x_71 : f32 = x_14.x_ZBufferParams.y;
  u_xlat12 = ((x_66 * x_67) + x_71);
  let x_74 : f32 = u_xlat12;
  u_xlat12 = (1.0f / x_74);
  let x_77 : f32 = u_xlat12;
  let x_79 : vec4<f32> = u_xlat0;
  let x_81 : vec3<f32> = (vec3<f32>(x_77, x_77, x_77) * vec3<f32>(x_79.x, x_79.y, x_79.z));
  let x_82 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_81.x, x_81.y, x_81.z, x_82.w);
  let x_85 : vec4<f32> = u_xlat2;
  let x_90 : vec4<f32> = x_14.unity_CameraToWorld[1i];
  let x_92 : vec3<f32> = (vec3<f32>(x_85.y, x_85.y, x_85.y) * vec3<f32>(x_90.x, x_90.y, x_90.z));
  let x_93 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_92.x, x_92.y, x_92.z, x_93.w);
  let x_97 : vec4<f32> = x_14.unity_CameraToWorld[0i];
  let x_99 : vec4<f32> = u_xlat2;
  let x_102 : vec4<f32> = u_xlat3;
  let x_104 : vec3<f32> = ((vec3<f32>(x_97.x, x_97.y, x_97.z) * vec3<f32>(x_99.x, x_99.x, x_99.x)) + vec3<f32>(x_102.x, x_102.y, x_102.z));
  let x_105 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_104.x, x_104.y, x_105.z, x_104.z);
  let x_108 : vec4<f32> = x_14.unity_CameraToWorld[2i];
  let x_110 : vec4<f32> = u_xlat2;
  let x_113 : vec4<f32> = u_xlat2;
  let x_115 : vec3<f32> = ((vec3<f32>(x_108.x, x_108.y, x_108.z) * vec3<f32>(x_110.z, x_110.z, x_110.z)) + vec3<f32>(x_113.x, x_113.y, x_113.w));
  let x_116 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_115.x, x_115.y, x_116.z, x_115.z);
  let x_118 : vec4<f32> = u_xlat2;
  let x_121 : vec4<f32> = x_14.unity_CameraToWorld[3i];
  let x_123 : vec3<f32> = (vec3<f32>(x_118.x, x_118.y, x_118.w) + vec3<f32>(x_121.x, x_121.y, x_121.z));
  let x_124 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_123.x, x_123.y, x_124.z, x_123.z);
  let x_126 : vec4<f32> = u_xlat2;
  let x_130 : vec4<f32> = x_14.unity_ShadowFadeCenterAndType;
  let x_133 : vec3<f32> = (vec3<f32>(x_126.x, x_126.y, x_126.w) + -(vec3<f32>(x_130.x, x_130.y, x_130.z)));
  let x_134 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_133.x, x_133.y, x_133.z, x_134.w);
  let x_136 : vec4<f32> = u_xlat2;
  let x_140 : vec3<f32> = x_14.x_WorldSpaceCameraPos;
  let x_142 : vec3<f32> = (vec3<f32>(x_136.x, x_136.y, x_136.w) + -(x_140));
  let x_143 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_142.x, x_142.y, x_143.z, x_142.z);
  let x_145 : vec4<f32> = u_xlat3;
  let x_147 : vec4<f32> = u_xlat3;
  u_xlat0.x = dot(vec3<f32>(x_145.x, x_145.y, x_145.z), vec3<f32>(x_147.x, x_147.y, x_147.z));
  let x_152 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_152);
  let x_156 : f32 = u_xlat0.z;
  let x_158 : f32 = u_xlat12;
  let x_161 : f32 = u_xlat0.x;
  u_xlat0.x = ((-(x_156) * x_158) + x_161);
  let x_166 : f32 = x_14.unity_ShadowFadeCenterAndType.w;
  let x_168 : f32 = u_xlat0.x;
  let x_171 : f32 = u_xlat2.z;
  u_xlat0.x = ((x_166 * x_168) + x_171);
  let x_175 : f32 = u_xlat0.x;
  let x_178 : f32 = x_14.x_LightShadowData.z;
  let x_181 : f32 = x_14.x_LightShadowData.w;
  u_xlat0.x = ((x_175 * x_178) + x_181);
  let x_185 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_185, 0.0f, 1.0f);
  let x_195 : vec3<f32> = u_xlat1;
  let x_197 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, vec2<f32>(x_195.x, x_195.y));
  u_xlat4 = x_197.x;
  let x_200 : f32 = u_xlat4;
  u_xlat8 = (-(x_200) + 1.0f);
  let x_204 : f32 = u_xlat0.x;
  let x_205 : f32 = u_xlat8;
  let x_207 : f32 = u_xlat4;
  u_xlat0.x = ((x_204 * x_205) + x_207);
  let x_210 : vec4<f32> = u_xlat0;
  let x_214 : vec4<f32> = x_14.x_LightColor;
  let x_216 : vec3<f32> = (vec3<f32>(x_210.x, x_210.x, x_210.x) * vec3<f32>(x_214.x, x_214.y, x_214.z));
  let x_217 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_216.x, x_216.y, x_216.z, x_217.w);
  let x_224 : vec3<f32> = u_xlat1;
  let x_226 : vec4<f32> = textureSample(x_CameraGBufferTexture2, sampler_CameraGBufferTexture2, vec2<f32>(x_224.x, x_224.y));
  let x_227 : vec3<f32> = vec3<f32>(x_226.x, x_226.y, x_226.z);
  let x_228 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_227.x, x_227.y, x_227.z, x_228.w);
  let x_230 : vec4<f32> = u_xlat3;
  let x_237 : vec3<f32> = ((vec3<f32>(x_230.x, x_230.y, x_230.z) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_238 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_237.x, x_237.y, x_237.z, x_238.w);
  let x_240 : vec4<f32> = u_xlat3;
  let x_242 : vec4<f32> = u_xlat3;
  u_xlat12 = dot(vec3<f32>(x_240.x, x_240.y, x_240.z), vec3<f32>(x_242.x, x_242.y, x_242.z));
  let x_245 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_245);
  let x_247 : f32 = u_xlat12;
  let x_249 : vec4<f32> = u_xlat3;
  let x_251 : vec3<f32> = (vec3<f32>(x_247, x_247, x_247) * vec3<f32>(x_249.x, x_249.y, x_249.z));
  let x_252 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_251.x, x_251.y, x_251.z, x_252.w);
  let x_254 : vec4<f32> = u_xlat3;
  let x_258 : vec4<f32> = x_14.x_LightDir;
  u_xlat12 = dot(vec3<f32>(x_254.x, x_254.y, x_254.z), -(vec3<f32>(x_258.x, x_258.y, x_258.z)));
  let x_262 : f32 = u_xlat12;
  u_xlat12 = clamp(x_262, 0.0f, 1.0f);
  let x_264 : f32 = u_xlat12;
  let x_266 : vec4<f32> = u_xlat0;
  let x_268 : vec3<f32> = (vec3<f32>(x_264, x_264, x_264) * vec3<f32>(x_266.x, x_266.y, x_266.z));
  let x_269 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_268.x, x_268.y, x_268.z, x_269.w);
  let x_271 : vec4<f32> = u_xlat2;
  let x_273 : vec4<f32> = u_xlat2;
  u_xlat12 = dot(vec3<f32>(x_271.x, x_271.y, x_271.w), vec3<f32>(x_273.x, x_273.y, x_273.w));
  let x_276 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_276);
  let x_278 : f32 = u_xlat12;
  let x_280 : vec4<f32> = u_xlat2;
  let x_282 : vec3<f32> = (vec3<f32>(x_278, x_278, x_278) * vec3<f32>(x_280.x, x_280.y, x_280.w));
  let x_283 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_282.x, x_282.y, x_282.z, x_283.w);
  let x_285 : vec4<f32> = u_xlat2;
  let x_288 : vec4<f32> = u_xlat3;
  u_xlat12 = dot(-(vec3<f32>(x_285.x, x_285.y, x_285.z)), vec3<f32>(x_288.x, x_288.y, x_288.z));
  let x_291 : f32 = u_xlat12;
  let x_292 : f32 = u_xlat12;
  u_xlat12 = (x_291 + x_292);
  let x_294 : vec4<f32> = u_xlat3;
  let x_296 : f32 = u_xlat12;
  let x_300 : vec4<f32> = u_xlat2;
  let x_303 : vec3<f32> = ((vec3<f32>(x_294.x, x_294.y, x_294.z) * -(vec3<f32>(x_296, x_296, x_296))) + -(vec3<f32>(x_300.x, x_300.y, x_300.z)));
  let x_304 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_303.x, x_303.y, x_303.z, x_304.w);
  let x_306 : vec4<f32> = u_xlat2;
  let x_309 : vec4<f32> = x_14.x_LightDir;
  u_xlat12 = dot(vec3<f32>(x_306.x, x_306.y, x_306.z), -(vec3<f32>(x_309.x, x_309.y, x_309.z)));
  let x_313 : f32 = u_xlat12;
  let x_314 : f32 = u_xlat12;
  u_xlat12 = (x_313 * x_314);
  let x_316 : f32 = u_xlat12;
  let x_317 : f32 = u_xlat12;
  u_xlat2.x = (x_316 * x_317);
  let x_325 : vec3<f32> = u_xlat1;
  let x_327 : vec4<f32> = textureSample(x_CameraGBufferTexture1, sampler_CameraGBufferTexture1, vec2<f32>(x_325.x, x_325.y));
  u_xlat3 = x_327;
  let x_333 : vec3<f32> = u_xlat1;
  let x_335 : vec4<f32> = textureSample(x_CameraGBufferTexture0, sampler_CameraGBufferTexture0, vec2<f32>(x_333.x, x_333.y));
  u_xlat1 = vec3<f32>(x_335.x, x_335.y, x_335.z);
  let x_338 : f32 = u_xlat3.w;
  u_xlat2.y = (-(x_338) + 1.0f);
  let x_347 : vec4<f32> = u_xlat2;
  let x_349 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_347.x, x_347.y));
  u_xlat12 = x_349.x;
  let x_351 : f32 = u_xlat12;
  u_xlat12 = (x_351 * 16.0f);
  let x_354 : f32 = u_xlat12;
  let x_356 : vec4<f32> = u_xlat3;
  let x_359 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_354, x_354, x_354) * vec3<f32>(x_356.x, x_356.y, x_356.z)) + x_359);
  let x_361 : vec4<f32> = u_xlat0;
  let x_363 : vec3<f32> = u_xlat1;
  let x_364 : vec3<f32> = (vec3<f32>(x_361.x, x_361.y, x_361.z) * x_363);
  let x_365 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_364.x, x_364.y, x_364.z, x_365.w);
  u_xlat0.w = 1.0f;
  let x_370 : vec4<f32> = u_xlat0;
  SV_Target0 = exp2(-(x_370));
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


