struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  x_ZBufferParams : vec4<f32>,
  unity_CameraToWorld : mat4x4<f32>,
  x_LightShadowData : vec4<f32>,
  unity_ShadowFadeCenterAndType : vec4<f32>,
  x_LightDir : vec4<f32>,
  x_LightColor : vec4<f32>,
  unity_WorldToLight : mat4x4<f32>,
}

@group(1) @binding(0) var<uniform> x_14 : PGlobals;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(0) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_CameraDepthTexture : sampler;

@group(0) @binding(1) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_ShadowMapTexture : sampler;

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
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat12 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec2<f32>;
  var u_xlat8 : f32;
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
  let x_136 : vec4<f32> = u_xlat3;
  let x_138 : vec4<f32> = u_xlat3;
  u_xlat0.x = dot(vec3<f32>(x_136.x, x_136.y, x_136.z), vec3<f32>(x_138.x, x_138.y, x_138.z));
  let x_143 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_143);
  let x_147 : f32 = u_xlat0.z;
  let x_149 : f32 = u_xlat12;
  let x_152 : f32 = u_xlat0.x;
  u_xlat0.x = ((-(x_147) * x_149) + x_152);
  let x_157 : f32 = x_14.unity_ShadowFadeCenterAndType.w;
  let x_159 : f32 = u_xlat0.x;
  let x_162 : f32 = u_xlat2.z;
  u_xlat0.x = ((x_157 * x_159) + x_162);
  let x_166 : f32 = u_xlat0.x;
  let x_169 : f32 = x_14.x_LightShadowData.z;
  let x_172 : f32 = x_14.x_LightShadowData.w;
  u_xlat0.x = ((x_166 * x_169) + x_172);
  let x_176 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_176, 0.0f, 1.0f);
  let x_187 : vec3<f32> = u_xlat1;
  let x_189 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, vec2<f32>(x_187.x, x_187.y));
  u_xlat4.x = x_189.x;
  let x_194 : f32 = u_xlat4.x;
  u_xlat8 = (-(x_194) + 1.0f);
  let x_198 : f32 = u_xlat0.x;
  let x_199 : f32 = u_xlat8;
  let x_202 : f32 = u_xlat4.x;
  u_xlat0.x = ((x_198 * x_199) + x_202);
  let x_205 : vec4<f32> = u_xlat2;
  let x_209 : vec4<f32> = x_14.unity_WorldToLight[1i];
  u_xlat4 = (vec2<f32>(x_205.y, x_205.y) * vec2<f32>(x_209.x, x_209.y));
  let x_213 : vec4<f32> = x_14.unity_WorldToLight[0i];
  let x_215 : vec4<f32> = u_xlat2;
  let x_218 : vec2<f32> = u_xlat4;
  u_xlat4 = ((vec2<f32>(x_213.x, x_213.y) * vec2<f32>(x_215.x, x_215.x)) + x_218);
  let x_221 : vec4<f32> = x_14.unity_WorldToLight[2i];
  let x_223 : vec4<f32> = u_xlat2;
  let x_226 : vec2<f32> = u_xlat4;
  u_xlat4 = ((vec2<f32>(x_221.x, x_221.y) * vec2<f32>(x_223.w, x_223.w)) + x_226);
  let x_228 : vec4<f32> = u_xlat2;
  let x_232 : vec3<f32> = x_14.x_WorldSpaceCameraPos;
  let x_234 : vec3<f32> = (vec3<f32>(x_228.x, x_228.y, x_228.w) + -(x_232));
  let x_235 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_234.x, x_234.y, x_234.z, x_235.w);
  let x_237 : vec2<f32> = u_xlat4;
  let x_239 : vec4<f32> = x_14.unity_WorldToLight[3i];
  u_xlat4 = (x_237 + vec2<f32>(x_239.x, x_239.y));
  let x_247 : vec2<f32> = u_xlat4;
  let x_249 : vec4<f32> = textureSampleBias(x_LightTexture0, sampler_LightTexture0, x_247, -8.0f);
  u_xlat4.x = x_249.w;
  let x_253 : f32 = u_xlat4.x;
  let x_255 : f32 = u_xlat0.x;
  u_xlat0.x = (x_253 * x_255);
  let x_258 : vec4<f32> = u_xlat0;
  let x_262 : vec4<f32> = x_14.x_LightColor;
  let x_264 : vec3<f32> = (vec3<f32>(x_258.x, x_258.x, x_258.x) * vec3<f32>(x_262.x, x_262.y, x_262.z));
  let x_265 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_264.x, x_264.y, x_264.z, x_265.w);
  let x_272 : vec3<f32> = u_xlat1;
  let x_274 : vec4<f32> = textureSample(x_CameraGBufferTexture2, sampler_CameraGBufferTexture2, vec2<f32>(x_272.x, x_272.y));
  let x_275 : vec3<f32> = vec3<f32>(x_274.x, x_274.y, x_274.z);
  let x_276 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_275.x, x_275.y, x_275.z, x_276.w);
  let x_278 : vec4<f32> = u_xlat3;
  let x_285 : vec3<f32> = ((vec3<f32>(x_278.x, x_278.y, x_278.z) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_286 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_285.x, x_285.y, x_285.z, x_286.w);
  let x_288 : vec4<f32> = u_xlat3;
  let x_290 : vec4<f32> = u_xlat3;
  u_xlat12 = dot(vec3<f32>(x_288.x, x_288.y, x_288.z), vec3<f32>(x_290.x, x_290.y, x_290.z));
  let x_293 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_293);
  let x_295 : f32 = u_xlat12;
  let x_297 : vec4<f32> = u_xlat3;
  let x_299 : vec3<f32> = (vec3<f32>(x_295, x_295, x_295) * vec3<f32>(x_297.x, x_297.y, x_297.z));
  let x_300 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_299.x, x_299.y, x_299.z, x_300.w);
  let x_302 : vec4<f32> = u_xlat3;
  let x_306 : vec4<f32> = x_14.x_LightDir;
  u_xlat12 = dot(vec3<f32>(x_302.x, x_302.y, x_302.z), -(vec3<f32>(x_306.x, x_306.y, x_306.z)));
  let x_310 : f32 = u_xlat12;
  u_xlat12 = clamp(x_310, 0.0f, 1.0f);
  let x_312 : f32 = u_xlat12;
  let x_314 : vec4<f32> = u_xlat0;
  let x_316 : vec3<f32> = (vec3<f32>(x_312, x_312, x_312) * vec3<f32>(x_314.x, x_314.y, x_314.z));
  let x_317 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_316.x, x_316.y, x_316.z, x_317.w);
  let x_319 : vec4<f32> = u_xlat2;
  let x_321 : vec4<f32> = u_xlat2;
  u_xlat12 = dot(vec3<f32>(x_319.x, x_319.y, x_319.z), vec3<f32>(x_321.x, x_321.y, x_321.z));
  let x_324 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_324);
  let x_326 : f32 = u_xlat12;
  let x_328 : vec4<f32> = u_xlat2;
  let x_330 : vec3<f32> = (vec3<f32>(x_326, x_326, x_326) * vec3<f32>(x_328.x, x_328.y, x_328.z));
  let x_331 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_330.x, x_330.y, x_330.z, x_331.w);
  let x_333 : vec4<f32> = u_xlat2;
  let x_336 : vec4<f32> = u_xlat3;
  u_xlat12 = dot(-(vec3<f32>(x_333.x, x_333.y, x_333.z)), vec3<f32>(x_336.x, x_336.y, x_336.z));
  let x_339 : f32 = u_xlat12;
  let x_340 : f32 = u_xlat12;
  u_xlat12 = (x_339 + x_340);
  let x_342 : vec4<f32> = u_xlat3;
  let x_344 : f32 = u_xlat12;
  let x_348 : vec4<f32> = u_xlat2;
  let x_351 : vec3<f32> = ((vec3<f32>(x_342.x, x_342.y, x_342.z) * -(vec3<f32>(x_344, x_344, x_344))) + -(vec3<f32>(x_348.x, x_348.y, x_348.z)));
  let x_352 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_351.x, x_351.y, x_351.z, x_352.w);
  let x_354 : vec4<f32> = u_xlat2;
  let x_357 : vec4<f32> = x_14.x_LightDir;
  u_xlat12 = dot(vec3<f32>(x_354.x, x_354.y, x_354.z), -(vec3<f32>(x_357.x, x_357.y, x_357.z)));
  let x_361 : f32 = u_xlat12;
  let x_362 : f32 = u_xlat12;
  u_xlat12 = (x_361 * x_362);
  let x_364 : f32 = u_xlat12;
  let x_365 : f32 = u_xlat12;
  u_xlat2.x = (x_364 * x_365);
  let x_373 : vec3<f32> = u_xlat1;
  let x_375 : vec4<f32> = textureSample(x_CameraGBufferTexture1, sampler_CameraGBufferTexture1, vec2<f32>(x_373.x, x_373.y));
  u_xlat3 = x_375;
  let x_381 : vec3<f32> = u_xlat1;
  let x_383 : vec4<f32> = textureSample(x_CameraGBufferTexture0, sampler_CameraGBufferTexture0, vec2<f32>(x_381.x, x_381.y));
  u_xlat1 = vec3<f32>(x_383.x, x_383.y, x_383.z);
  let x_386 : f32 = u_xlat3.w;
  u_xlat2.y = (-(x_386) + 1.0f);
  let x_395 : vec4<f32> = u_xlat2;
  let x_397 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_395.x, x_395.y));
  u_xlat12 = x_397.x;
  let x_399 : f32 = u_xlat12;
  u_xlat12 = (x_399 * 16.0f);
  let x_402 : f32 = u_xlat12;
  let x_404 : vec4<f32> = u_xlat3;
  let x_407 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_402, x_402, x_402) * vec3<f32>(x_404.x, x_404.y, x_404.z)) + x_407);
  let x_409 : vec4<f32> = u_xlat0;
  let x_411 : vec3<f32> = u_xlat1;
  let x_412 : vec3<f32> = (vec3<f32>(x_409.x, x_409.y, x_409.z) * x_411);
  let x_413 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_412.x, x_412.y, x_412.z, x_413.w);
  u_xlat0.w = 1.0f;
  let x_418 : vec4<f32> = u_xlat0;
  SV_Target0 = exp2(-(x_418));
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

