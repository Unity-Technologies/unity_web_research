struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  x_ZBufferParams : vec4<f32>,
  unity_CameraToWorld : mat4x4<f32>,
  x_LightPos : vec4<f32>,
  x_LightColor : vec4<f32>,
  unity_WorldToLight : mat4x4<f32>,
}

@group(1) @binding(0) var<uniform> x_14 : PGlobals;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(0) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_CameraDepthTexture : sampler;

@group(0) @binding(5) var x_CameraGBufferTexture2 : texture_2d<f32>;

@group(0) @binding(13) var sampler_CameraGBufferTexture2 : sampler;

@group(0) @binding(2) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(8) var sampler_LightTextureB0 : sampler;

@group(0) @binding(4) var x_CameraGBufferTexture1 : texture_2d<f32>;

@group(0) @binding(12) var sampler_CameraGBufferTexture1 : sampler;

@group(0) @binding(3) var x_CameraGBufferTexture0 : texture_2d<f32>;

@group(0) @binding(11) var sampler_CameraGBufferTexture0 : sampler;

@group(0) @binding(6) var unity_NHxRoughness : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_NHxRoughness : sampler;

@group(0) @binding(1) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(9) var sampler_LightTexture0 : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat15 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat11 : f32;
  var u_xlat16 : f32;
  var u_xlatb10 : bool;
  var u_xlat10 : f32;
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
  let x_197 : vec4<f32> = x_14.x_LightPos;
  u_xlat4 = (-(vec3<f32>(x_192.x, x_192.y, x_192.z)) + vec3<f32>(x_197.x, x_197.y, x_197.z));
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
  u_xlat11 = dot(x_224, x_225);
  let x_228 : vec4<f32> = u_xlat3;
  let x_230 : vec3<f32> = u_xlat4;
  u_xlat16 = dot(vec3<f32>(x_228.x, x_228.y, x_228.z), x_230);
  let x_232 : f32 = u_xlat16;
  u_xlat16 = clamp(x_232, 0.0f, 1.0f);
  let x_235 : f32 = u_xlat11;
  let x_236 : f32 = u_xlat11;
  u_xlat11 = (x_235 * x_236);
  let x_238 : f32 = u_xlat11;
  let x_239 : f32 = u_xlat11;
  u_xlat2.x = (x_238 * x_239);
  let x_247 : vec3<f32> = u_xlat1;
  let x_249 : vec4<f32> = textureSample(x_CameraGBufferTexture1, sampler_CameraGBufferTexture1, vec2<f32>(x_247.x, x_247.y));
  u_xlat3 = x_249;
  let x_255 : vec3<f32> = u_xlat1;
  let x_257 : vec4<f32> = textureSample(x_CameraGBufferTexture0, sampler_CameraGBufferTexture0, vec2<f32>(x_255.x, x_255.y));
  u_xlat1 = vec3<f32>(x_257.x, x_257.y, x_257.z);
  let x_260 : f32 = u_xlat3.w;
  u_xlat2.y = (-(x_260) + 1.0f);
  let x_269 : vec3<f32> = u_xlat2;
  let x_271 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_269.x, x_269.y));
  u_xlat2.x = x_271.x;
  let x_275 : f32 = u_xlat2.x;
  u_xlat2.x = (x_275 * 16.0f);
  let x_279 : vec3<f32> = u_xlat2;
  let x_281 : vec4<f32> = u_xlat3;
  let x_284 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_279.x, x_279.x, x_279.x) * vec3<f32>(x_281.x, x_281.y, x_281.z)) + x_284);
  let x_286 : vec4<f32> = u_xlat0;
  let x_290 : vec4<f32> = x_14.unity_WorldToLight[1i];
  u_xlat2 = (vec3<f32>(x_286.y, x_286.y, x_286.y) * vec3<f32>(x_290.x, x_290.y, x_290.w));
  let x_294 : vec4<f32> = x_14.unity_WorldToLight[0i];
  let x_296 : vec4<f32> = u_xlat0;
  let x_299 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_294.x, x_294.y, x_294.w) * vec3<f32>(x_296.x, x_296.x, x_296.x)) + x_299);
  let x_302 : vec4<f32> = x_14.unity_WorldToLight[2i];
  let x_304 : vec4<f32> = u_xlat0;
  let x_307 : vec3<f32> = u_xlat2;
  let x_308 : vec3<f32> = ((vec3<f32>(x_302.x, x_302.y, x_302.w) * vec3<f32>(x_304.z, x_304.z, x_304.z)) + x_307);
  let x_309 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_308.x, x_308.y, x_308.z, x_309.w);
  let x_311 : vec4<f32> = u_xlat0;
  let x_314 : vec4<f32> = x_14.unity_WorldToLight[3i];
  let x_316 : vec3<f32> = (vec3<f32>(x_311.x, x_311.y, x_311.z) + vec3<f32>(x_314.x, x_314.y, x_314.w));
  let x_317 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_316.x, x_316.y, x_316.z, x_317.w);
  let x_319 : vec4<f32> = u_xlat0;
  let x_321 : vec4<f32> = u_xlat0;
  let x_323 : vec2<f32> = (vec2<f32>(x_319.x, x_319.y) / vec2<f32>(x_321.z, x_321.z));
  let x_324 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_323.x, x_323.y, x_324.z, x_324.w);
  let x_330 : f32 = u_xlat0.z;
  u_xlatb10 = (x_330 < 0.0f);
  let x_333 : bool = u_xlatb10;
  u_xlat10 = select(0.0f, 1.0f, x_333);
  let x_340 : vec4<f32> = u_xlat0;
  let x_343 : vec4<f32> = textureSampleBias(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_340.x, x_340.y), -8.0f);
  u_xlat0.x = x_343.w;
  let x_346 : f32 = u_xlat10;
  let x_348 : f32 = u_xlat0.x;
  u_xlat0.x = (x_346 * x_348);
  let x_351 : f32 = u_xlat15;
  let x_353 : f32 = u_xlat0.x;
  u_xlat0.x = (x_351 * x_353);
  let x_356 : vec4<f32> = u_xlat0;
  let x_360 : vec4<f32> = x_14.x_LightColor;
  let x_362 : vec3<f32> = (vec3<f32>(x_356.x, x_356.x, x_356.x) * vec3<f32>(x_360.x, x_360.y, x_360.z));
  let x_363 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_362.x, x_362.y, x_362.z, x_363.w);
  let x_365 : f32 = u_xlat16;
  let x_367 : vec4<f32> = u_xlat0;
  let x_369 : vec3<f32> = (vec3<f32>(x_365, x_365, x_365) * vec3<f32>(x_367.x, x_367.y, x_367.z));
  let x_370 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_369.x, x_369.y, x_369.z, x_370.w);
  let x_372 : vec4<f32> = u_xlat0;
  let x_374 : vec3<f32> = u_xlat1;
  let x_375 : vec3<f32> = (vec3<f32>(x_372.x, x_372.y, x_372.z) * x_374);
  let x_376 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_375.x, x_375.y, x_375.z, x_376.w);
  u_xlat0.w = 1.0f;
  let x_381 : vec4<f32> = u_xlat0;
  SV_Target0 = exp2(-(x_381));
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

