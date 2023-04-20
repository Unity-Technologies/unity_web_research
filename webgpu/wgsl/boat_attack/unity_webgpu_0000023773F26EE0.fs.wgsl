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
  x_LightPos : vec4<f32>,
  /* @offset(128) */
  x_LightColor : vec4<f32>,
  /* @offset(144) */
  unity_WorldToLight : mat4x4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_14 : PGlobals;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat1 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat15 : f32;

@group(0) @binding(0) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_CameraDepthTexture : sampler;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(5) var x_CameraGBufferTexture2 : texture_2d<f32>;

@group(0) @binding(13) var sampler_CameraGBufferTexture2 : sampler;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlat11 : f32;

@group(0) @binding(1) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(8) var sampler_LightTextureB0 : sampler;

var<private> u_xlat16 : f32;

@group(0) @binding(4) var x_CameraGBufferTexture1 : texture_2d<f32>;

@group(0) @binding(12) var sampler_CameraGBufferTexture1 : sampler;

@group(0) @binding(3) var x_CameraGBufferTexture0 : texture_2d<f32>;

@group(0) @binding(11) var sampler_CameraGBufferTexture0 : sampler;

@group(0) @binding(6) var unity_NHxRoughness : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_NHxRoughness : sampler;

@group(0) @binding(2) var x_LightTexture0 : texture_cube<f32>;

@group(0) @binding(9) var sampler_LightTexture0 : sampler;

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
  u_xlat2 = (vec3<f32>(x_84.y, x_84.y, x_84.y) * vec3<f32>(x_89.x, x_89.y, x_89.z));
  let x_94 : vec4<f32> = x_14.unity_CameraToWorld[0i];
  let x_96 : vec4<f32> = u_xlat0;
  let x_99 : vec3<f32> = u_xlat2;
  let x_100 : vec3<f32> = ((vec3<f32>(x_94.x, x_94.y, x_94.z) * vec3<f32>(x_96.x, x_96.x, x_96.x)) + x_99);
  let x_101 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_100.x, x_100.y, x_101.z, x_100.z);
  let x_104 : vec4<f32> = x_14.unity_CameraToWorld[2i];
  let x_106 : vec4<f32> = u_xlat0;
  let x_109 : vec4<f32> = u_xlat0;
  let x_111 : vec3<f32> = ((vec3<f32>(x_104.x, x_104.y, x_104.z) * vec3<f32>(x_106.z, x_106.z, x_106.z)) + vec3<f32>(x_109.x, x_109.y, x_109.w));
  let x_112 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_111.x, x_111.y, x_111.z, x_112.w);
  let x_114 : vec4<f32> = u_xlat0;
  let x_117 : vec4<f32> = x_14.unity_CameraToWorld[3i];
  let x_119 : vec3<f32> = (vec3<f32>(x_114.x, x_114.y, x_114.z) + vec3<f32>(x_117.x, x_117.y, x_117.z));
  let x_120 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_119.x, x_119.y, x_119.z, x_120.w);
  let x_122 : vec4<f32> = u_xlat0;
  let x_126 : vec3<f32> = x_14.x_WorldSpaceCameraPos;
  u_xlat2 = (vec3<f32>(x_122.x, x_122.y, x_122.z) + -(x_126));
  let x_129 : vec3<f32> = u_xlat2;
  let x_130 : vec3<f32> = u_xlat2;
  u_xlat15 = dot(x_129, x_130);
  let x_132 : f32 = u_xlat15;
  u_xlat15 = inverseSqrt(x_132);
  let x_134 : f32 = u_xlat15;
  let x_136 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_134, x_134, x_134) * x_136);
  let x_144 : vec3<f32> = u_xlat1;
  let x_146 : vec4<f32> = textureSample(x_CameraGBufferTexture2, sampler_CameraGBufferTexture2, vec2<f32>(x_144.x, x_144.y));
  let x_147 : vec3<f32> = vec3<f32>(x_146.x, x_146.y, x_146.z);
  let x_148 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_147.x, x_147.y, x_147.z, x_148.w);
  let x_150 : vec4<f32> = u_xlat3;
  let x_157 : vec3<f32> = ((vec3<f32>(x_150.x, x_150.y, x_150.z) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_158 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_157.x, x_157.y, x_157.z, x_158.w);
  let x_160 : vec4<f32> = u_xlat3;
  let x_162 : vec4<f32> = u_xlat3;
  u_xlat15 = dot(vec3<f32>(x_160.x, x_160.y, x_160.z), vec3<f32>(x_162.x, x_162.y, x_162.z));
  let x_165 : f32 = u_xlat15;
  u_xlat15 = inverseSqrt(x_165);
  let x_167 : f32 = u_xlat15;
  let x_169 : vec4<f32> = u_xlat3;
  let x_171 : vec3<f32> = (vec3<f32>(x_167, x_167, x_167) * vec3<f32>(x_169.x, x_169.y, x_169.z));
  let x_172 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_171.x, x_171.y, x_171.z, x_172.w);
  let x_174 : vec3<f32> = u_xlat2;
  let x_176 : vec4<f32> = u_xlat3;
  u_xlat15 = dot(-(x_174), vec3<f32>(x_176.x, x_176.y, x_176.z));
  let x_179 : f32 = u_xlat15;
  let x_180 : f32 = u_xlat15;
  u_xlat15 = (x_179 + x_180);
  let x_182 : vec4<f32> = u_xlat3;
  let x_184 : f32 = u_xlat15;
  let x_188 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_182.x, x_182.y, x_182.z) * -(vec3<f32>(x_184, x_184, x_184))) + -(x_188));
  let x_192 : vec4<f32> = u_xlat0;
  let x_196 : vec4<f32> = x_14.x_LightPos;
  u_xlat4 = (vec3<f32>(x_192.x, x_192.y, x_192.z) + -(vec3<f32>(x_196.x, x_196.y, x_196.z)));
  let x_200 : vec3<f32> = u_xlat4;
  let x_201 : vec3<f32> = u_xlat4;
  u_xlat15 = dot(x_200, x_201);
  let x_204 : f32 = u_xlat15;
  u_xlat11 = inverseSqrt(x_204);
  let x_206 : f32 = u_xlat15;
  let x_209 : f32 = x_14.x_LightPos.w;
  u_xlat15 = (x_206 * x_209);
  let x_216 : f32 = u_xlat15;
  let x_218 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_216, x_216));
  u_xlat15 = x_218.x;
  let x_220 : f32 = u_xlat11;
  let x_222 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_220, x_220, x_220) * x_222);
  let x_224 : vec3<f32> = u_xlat2;
  let x_225 : vec3<f32> = u_xlat4;
  u_xlat11 = dot(x_224, -(x_225));
  let x_229 : vec4<f32> = u_xlat3;
  let x_231 : vec3<f32> = u_xlat4;
  u_xlat16 = dot(vec3<f32>(x_229.x, x_229.y, x_229.z), -(x_231));
  let x_234 : f32 = u_xlat16;
  u_xlat16 = clamp(x_234, 0.0f, 1.0f);
  let x_237 : f32 = u_xlat11;
  let x_238 : f32 = u_xlat11;
  u_xlat11 = (x_237 * x_238);
  let x_240 : f32 = u_xlat11;
  let x_241 : f32 = u_xlat11;
  u_xlat2.x = (x_240 * x_241);
  let x_249 : vec3<f32> = u_xlat1;
  let x_251 : vec4<f32> = textureSample(x_CameraGBufferTexture1, sampler_CameraGBufferTexture1, vec2<f32>(x_249.x, x_249.y));
  u_xlat3 = x_251;
  let x_257 : vec3<f32> = u_xlat1;
  let x_259 : vec4<f32> = textureSample(x_CameraGBufferTexture0, sampler_CameraGBufferTexture0, vec2<f32>(x_257.x, x_257.y));
  u_xlat1 = vec3<f32>(x_259.x, x_259.y, x_259.z);
  let x_262 : f32 = u_xlat3.w;
  u_xlat2.y = (-(x_262) + 1.0f);
  let x_271 : vec3<f32> = u_xlat2;
  let x_273 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_271.x, x_271.y));
  u_xlat2.x = x_273.x;
  let x_277 : f32 = u_xlat2.x;
  u_xlat2.x = (x_277 * 16.0f);
  let x_281 : vec3<f32> = u_xlat2;
  let x_283 : vec4<f32> = u_xlat3;
  let x_286 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_281.x, x_281.x, x_281.x) * vec3<f32>(x_283.x, x_283.y, x_283.z)) + x_286);
  let x_288 : vec4<f32> = u_xlat0;
  let x_292 : vec4<f32> = x_14.unity_WorldToLight[1i];
  u_xlat2 = (vec3<f32>(x_288.y, x_288.y, x_288.y) * vec3<f32>(x_292.x, x_292.y, x_292.z));
  let x_296 : vec4<f32> = x_14.unity_WorldToLight[0i];
  let x_298 : vec4<f32> = u_xlat0;
  let x_301 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_296.x, x_296.y, x_296.z) * vec3<f32>(x_298.x, x_298.x, x_298.x)) + x_301);
  let x_304 : vec4<f32> = x_14.unity_WorldToLight[2i];
  let x_306 : vec4<f32> = u_xlat0;
  let x_309 : vec3<f32> = u_xlat2;
  let x_310 : vec3<f32> = ((vec3<f32>(x_304.x, x_304.y, x_304.z) * vec3<f32>(x_306.z, x_306.z, x_306.z)) + x_309);
  let x_311 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_310.x, x_310.y, x_310.z, x_311.w);
  let x_313 : vec4<f32> = u_xlat0;
  let x_316 : vec4<f32> = x_14.unity_WorldToLight[3i];
  let x_318 : vec3<f32> = (vec3<f32>(x_313.x, x_313.y, x_313.z) + vec3<f32>(x_316.x, x_316.y, x_316.z));
  let x_319 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
  let x_329 : vec4<f32> = u_xlat0;
  let x_332 : vec4<f32> = textureSampleBias(x_LightTexture0, sampler_LightTexture0, vec3<f32>(x_329.x, x_329.y, x_329.z), -8.0f);
  u_xlat0.x = x_332.w;
  let x_336 : f32 = u_xlat0.x;
  let x_337 : f32 = u_xlat15;
  u_xlat0.x = (x_336 * x_337);
  let x_340 : vec4<f32> = u_xlat0;
  let x_344 : vec4<f32> = x_14.x_LightColor;
  let x_346 : vec3<f32> = (vec3<f32>(x_340.x, x_340.x, x_340.x) * vec3<f32>(x_344.x, x_344.y, x_344.z));
  let x_347 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_346.x, x_346.y, x_346.z, x_347.w);
  let x_349 : f32 = u_xlat16;
  let x_351 : vec4<f32> = u_xlat0;
  let x_353 : vec3<f32> = (vec3<f32>(x_349, x_349, x_349) * vec3<f32>(x_351.x, x_351.y, x_351.z));
  let x_354 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_353.x, x_353.y, x_353.z, x_354.w);
  let x_358 : vec4<f32> = u_xlat0;
  let x_360 : vec3<f32> = u_xlat1;
  let x_361 : vec3<f32> = (vec3<f32>(x_358.x, x_358.y, x_358.z) * x_360);
  let x_362 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_361.x, x_361.y, x_361.z, x_362.w);
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


