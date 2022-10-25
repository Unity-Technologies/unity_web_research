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
}

@group(1) @binding(0) var<uniform> x_14 : PGlobals;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(0) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_CameraDepthTexture : sampler;

@group(0) @binding(1) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_ShadowMapTexture : sampler;

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
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat12 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : f32;
  var u_xlat8 : f32;
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
  let x_133 : vec4<f32> = u_xlat2;
  let x_137 : vec3<f32> = x_14.x_WorldSpaceCameraPos;
  let x_139 : vec3<f32> = (vec3<f32>(x_133.x, x_133.y, x_133.w) + -(x_137));
  let x_140 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_139.x, x_139.y, x_140.z, x_139.z);
  let x_142 : vec4<f32> = u_xlat3;
  let x_144 : vec4<f32> = u_xlat3;
  u_xlat0.x = dot(vec3<f32>(x_142.x, x_142.y, x_142.z), vec3<f32>(x_144.x, x_144.y, x_144.z));
  let x_149 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_149);
  let x_153 : f32 = u_xlat0.z;
  let x_155 : f32 = u_xlat12;
  let x_158 : f32 = u_xlat0.x;
  u_xlat0.x = ((-(x_153) * x_155) + x_158);
  let x_163 : f32 = x_14.unity_ShadowFadeCenterAndType.w;
  let x_165 : f32 = u_xlat0.x;
  let x_168 : f32 = u_xlat2.z;
  u_xlat0.x = ((x_163 * x_165) + x_168);
  let x_172 : f32 = u_xlat0.x;
  let x_175 : f32 = x_14.x_LightShadowData.z;
  let x_178 : f32 = x_14.x_LightShadowData.w;
  u_xlat0.x = ((x_172 * x_175) + x_178);
  let x_182 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_182, 0.0f, 1.0f);
  let x_192 : vec3<f32> = u_xlat1;
  let x_194 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, vec2<f32>(x_192.x, x_192.y));
  u_xlat4 = x_194.x;
  let x_197 : f32 = u_xlat4;
  u_xlat8 = (-(x_197) + 1.0f);
  let x_201 : f32 = u_xlat0.x;
  let x_202 : f32 = u_xlat8;
  let x_204 : f32 = u_xlat4;
  u_xlat0.x = ((x_201 * x_202) + x_204);
  let x_207 : vec3<f32> = u_xlat0;
  let x_211 : vec4<f32> = x_14.x_LightColor;
  u_xlat0 = (vec3<f32>(x_207.x, x_207.x, x_207.x) * vec3<f32>(x_211.x, x_211.y, x_211.z));
  let x_219 : vec3<f32> = u_xlat1;
  let x_221 : vec4<f32> = textureSample(x_CameraGBufferTexture2, sampler_CameraGBufferTexture2, vec2<f32>(x_219.x, x_219.y));
  let x_222 : vec3<f32> = vec3<f32>(x_221.x, x_221.y, x_221.z);
  let x_223 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_222.x, x_222.y, x_222.z, x_223.w);
  let x_225 : vec4<f32> = u_xlat3;
  let x_232 : vec3<f32> = ((vec3<f32>(x_225.x, x_225.y, x_225.z) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_233 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_232.x, x_232.y, x_232.z, x_233.w);
  let x_235 : vec4<f32> = u_xlat3;
  let x_237 : vec4<f32> = u_xlat3;
  u_xlat12 = dot(vec3<f32>(x_235.x, x_235.y, x_235.z), vec3<f32>(x_237.x, x_237.y, x_237.z));
  let x_240 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_240);
  let x_242 : f32 = u_xlat12;
  let x_244 : vec4<f32> = u_xlat3;
  let x_246 : vec3<f32> = (vec3<f32>(x_242, x_242, x_242) * vec3<f32>(x_244.x, x_244.y, x_244.z));
  let x_247 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_246.x, x_246.y, x_246.z, x_247.w);
  let x_249 : vec4<f32> = u_xlat3;
  let x_253 : vec4<f32> = x_14.x_LightDir;
  u_xlat12 = dot(vec3<f32>(x_249.x, x_249.y, x_249.z), -(vec3<f32>(x_253.x, x_253.y, x_253.z)));
  let x_257 : f32 = u_xlat12;
  u_xlat12 = clamp(x_257, 0.0f, 1.0f);
  let x_259 : f32 = u_xlat12;
  let x_261 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_259, x_259, x_259) * x_261);
  let x_263 : vec4<f32> = u_xlat2;
  let x_265 : vec4<f32> = u_xlat2;
  u_xlat12 = dot(vec3<f32>(x_263.x, x_263.y, x_263.w), vec3<f32>(x_265.x, x_265.y, x_265.w));
  let x_268 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_268);
  let x_270 : f32 = u_xlat12;
  let x_272 : vec4<f32> = u_xlat2;
  let x_274 : vec3<f32> = (vec3<f32>(x_270, x_270, x_270) * vec3<f32>(x_272.x, x_272.y, x_272.w));
  let x_275 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_274.x, x_274.y, x_274.z, x_275.w);
  let x_277 : vec4<f32> = u_xlat2;
  let x_280 : vec4<f32> = u_xlat3;
  u_xlat12 = dot(-(vec3<f32>(x_277.x, x_277.y, x_277.z)), vec3<f32>(x_280.x, x_280.y, x_280.z));
  let x_283 : f32 = u_xlat12;
  let x_284 : f32 = u_xlat12;
  u_xlat12 = (x_283 + x_284);
  let x_286 : vec4<f32> = u_xlat3;
  let x_288 : f32 = u_xlat12;
  let x_292 : vec4<f32> = u_xlat2;
  let x_295 : vec3<f32> = ((vec3<f32>(x_286.x, x_286.y, x_286.z) * -(vec3<f32>(x_288, x_288, x_288))) + -(vec3<f32>(x_292.x, x_292.y, x_292.z)));
  let x_296 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_295.x, x_295.y, x_295.z, x_296.w);
  let x_298 : vec4<f32> = u_xlat2;
  let x_301 : vec4<f32> = x_14.x_LightDir;
  u_xlat12 = dot(vec3<f32>(x_298.x, x_298.y, x_298.z), -(vec3<f32>(x_301.x, x_301.y, x_301.z)));
  let x_305 : f32 = u_xlat12;
  let x_306 : f32 = u_xlat12;
  u_xlat12 = (x_305 * x_306);
  let x_308 : f32 = u_xlat12;
  let x_309 : f32 = u_xlat12;
  u_xlat2.x = (x_308 * x_309);
  let x_317 : vec3<f32> = u_xlat1;
  let x_319 : vec4<f32> = textureSample(x_CameraGBufferTexture1, sampler_CameraGBufferTexture1, vec2<f32>(x_317.x, x_317.y));
  u_xlat3 = x_319;
  let x_325 : vec3<f32> = u_xlat1;
  let x_327 : vec4<f32> = textureSample(x_CameraGBufferTexture0, sampler_CameraGBufferTexture0, vec2<f32>(x_325.x, x_325.y));
  u_xlat1 = vec3<f32>(x_327.x, x_327.y, x_327.z);
  let x_330 : f32 = u_xlat3.w;
  u_xlat2.y = (-(x_330) + 1.0f);
  let x_339 : vec4<f32> = u_xlat2;
  let x_341 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_339.x, x_339.y));
  u_xlat12 = x_341.x;
  let x_343 : f32 = u_xlat12;
  u_xlat12 = (x_343 * 16.0f);
  let x_346 : f32 = u_xlat12;
  let x_348 : vec4<f32> = u_xlat3;
  let x_351 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_346, x_346, x_346) * vec3<f32>(x_348.x, x_348.y, x_348.z)) + x_351);
  let x_355 : vec3<f32> = u_xlat0;
  let x_356 : vec3<f32> = u_xlat1;
  let x_357 : vec3<f32> = (x_355 * x_356);
  let x_358 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_357.x, x_357.y, x_357.z, x_358.w);
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

