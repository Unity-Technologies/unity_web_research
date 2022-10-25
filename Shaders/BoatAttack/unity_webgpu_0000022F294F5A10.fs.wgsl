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
}

@group(1) @binding(0) var<uniform> x_14 : PGlobals;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(0) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_CameraDepthTexture : sampler;

@group(0) @binding(6) var x_ShadowMapTexture : texture_depth_cube;

@group(0) @binding(9) var sampler_ShadowMapTexture : sampler_comparison;

@group(0) @binding(1) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(8) var sampler_LightTextureB0 : sampler;

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
  u_xlat11 = max(x_207, 0.00001f);
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
  let x_227 : vec3<f32> = u_xlat5;
  let x_228 : f32 = u_xlat11;
  txVec0 = vec4<f32>(x_227.x, x_227.y, x_227.z, x_228);
  let x_241 : vec4<f32> = txVec0;
  let x_243 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_241.xyz, x_241.w);
  u_xlat11 = x_243;
  let x_246 : f32 = x_14.x_LightShadowData.x;
  u_xlat16 = (-(x_246) + 1.0f);
  let x_249 : f32 = u_xlat11;
  let x_250 : f32 = u_xlat16;
  let x_253 : f32 = x_14.x_LightShadowData.x;
  u_xlat11 = ((x_249 * x_250) + x_253);
  let x_255 : f32 = u_xlat11;
  u_xlat16 = (-(x_255) + 1.0f);
  let x_259 : f32 = u_xlat0.x;
  let x_260 : f32 = u_xlat16;
  let x_262 : f32 = u_xlat11;
  u_xlat0.x = ((x_259 * x_260) + x_262);
  let x_265 : vec3<f32> = u_xlat5;
  let x_266 : vec3<f32> = u_xlat5;
  u_xlat11 = dot(x_265, x_266);
  let x_268 : f32 = u_xlat11;
  let x_270 : f32 = x_14.x_LightPos.w;
  u_xlat16 = (x_268 * x_270);
  let x_272 : f32 = u_xlat11;
  u_xlat11 = inverseSqrt(x_272);
  let x_274 : vec3<f32> = u_xlat5;
  let x_275 : f32 = u_xlat11;
  u_xlat5 = (x_274 * vec3<f32>(x_275, x_275, x_275));
  let x_283 : f32 = u_xlat16;
  let x_285 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_283, x_283));
  u_xlat11 = x_285.x;
  let x_288 : f32 = u_xlat0.x;
  let x_289 : f32 = u_xlat11;
  u_xlat0.x = (x_288 * x_289);
  let x_292 : vec3<f32> = u_xlat0;
  let x_296 : vec4<f32> = x_14.x_LightColor;
  u_xlat3 = (vec3<f32>(x_292.x, x_292.x, x_292.x) * vec3<f32>(x_296.x, x_296.y, x_296.z));
  let x_305 : vec3<f32> = u_xlat1;
  let x_307 : vec4<f32> = textureSample(x_CameraGBufferTexture2, sampler_CameraGBufferTexture2, vec2<f32>(x_305.x, x_305.y));
  u_xlat4 = vec3<f32>(x_307.x, x_307.y, x_307.z);
  let x_309 : vec3<f32> = u_xlat4;
  u_xlat4 = ((x_309 * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_316 : vec3<f32> = u_xlat4;
  let x_317 : vec3<f32> = u_xlat4;
  u_xlat0.x = dot(x_316, x_317);
  let x_321 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_321);
  let x_324 : vec3<f32> = u_xlat0;
  let x_326 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_324.x, x_324.x, x_324.x) * x_326);
  let x_328 : vec3<f32> = u_xlat4;
  let x_329 : vec3<f32> = u_xlat5;
  u_xlat0.x = dot(x_328, -(x_329));
  let x_334 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_334, 0.0f, 1.0f);
  let x_337 : vec3<f32> = u_xlat0;
  let x_339 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_337.x, x_337.x, x_337.x) * x_339);
  let x_341 : vec4<f32> = u_xlat2;
  let x_343 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(x_341.x, x_341.y, x_341.z), vec3<f32>(x_343.x, x_343.y, x_343.z));
  let x_348 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_348);
  let x_351 : vec3<f32> = u_xlat0;
  let x_353 : vec4<f32> = u_xlat2;
  let x_355 : vec3<f32> = (vec3<f32>(x_351.x, x_351.x, x_351.x) * vec3<f32>(x_353.x, x_353.y, x_353.z));
  let x_356 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_355.x, x_355.y, x_355.z, x_356.w);
  let x_358 : vec4<f32> = u_xlat2;
  let x_361 : vec3<f32> = u_xlat4;
  u_xlat0.x = dot(-(vec3<f32>(x_358.x, x_358.y, x_358.z)), x_361);
  let x_365 : f32 = u_xlat0.x;
  let x_367 : f32 = u_xlat0.x;
  u_xlat0.x = (x_365 + x_367);
  let x_370 : vec3<f32> = u_xlat4;
  let x_371 : vec3<f32> = u_xlat0;
  let x_375 : vec4<f32> = u_xlat2;
  let x_378 : vec3<f32> = ((x_370 * -(vec3<f32>(x_371.x, x_371.x, x_371.x))) + -(vec3<f32>(x_375.x, x_375.y, x_375.z)));
  let x_379 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_378.x, x_378.y, x_378.z, x_379.w);
  let x_381 : vec4<f32> = u_xlat2;
  let x_383 : vec3<f32> = u_xlat5;
  u_xlat0.x = dot(vec3<f32>(x_381.x, x_381.y, x_381.z), -(x_383));
  let x_388 : f32 = u_xlat0.x;
  let x_390 : f32 = u_xlat0.x;
  u_xlat0.x = (x_388 * x_390);
  let x_394 : f32 = u_xlat0.x;
  let x_396 : f32 = u_xlat0.x;
  u_xlat0.x = (x_394 * x_396);
  let x_404 : vec3<f32> = u_xlat1;
  let x_406 : vec4<f32> = textureSample(x_CameraGBufferTexture1, sampler_CameraGBufferTexture1, vec2<f32>(x_404.x, x_404.y));
  u_xlat2 = x_406;
  let x_412 : vec3<f32> = u_xlat1;
  let x_414 : vec4<f32> = textureSample(x_CameraGBufferTexture0, sampler_CameraGBufferTexture0, vec2<f32>(x_412.x, x_412.y));
  u_xlat1 = vec3<f32>(x_414.x, x_414.y, x_414.z);
  let x_417 : f32 = u_xlat2.w;
  u_xlat0.y = (-(x_417) + 1.0f);
  let x_426 : vec3<f32> = u_xlat0;
  let x_428 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_426.x, x_426.y));
  u_xlat0.x = x_428.x;
  let x_432 : f32 = u_xlat0.x;
  u_xlat0.x = (x_432 * 16.0f);
  let x_436 : vec3<f32> = u_xlat0;
  let x_438 : vec4<f32> = u_xlat2;
  let x_441 : vec3<f32> = u_xlat1;
  u_xlat0 = ((vec3<f32>(x_436.x, x_436.x, x_436.x) * vec3<f32>(x_438.x, x_438.y, x_438.z)) + x_441);
  let x_445 : vec3<f32> = u_xlat3;
  let x_446 : vec3<f32> = u_xlat0;
  let x_447 : vec3<f32> = (x_445 * x_446);
  let x_448 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_447.x, x_447.y, x_447.z, x_448.w);
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

