type Arr = array<mat4x4<f32>, 4u>;

struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  x_ZBufferParams : vec4<f32>,
  unity_CameraToWorld : mat4x4<f32>,
  unity_WorldToShadow : Arr,
  x_LightShadowData : vec4<f32>,
  unity_ShadowFadeCenterAndType : vec4<f32>,
  x_LightPos : vec4<f32>,
  x_LightColor : vec4<f32>,
  unity_WorldToLight : mat4x4<f32>,
}

@group(1) @binding(0) var<uniform> x_17 : PGlobals;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(0) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_CameraDepthTexture : sampler;

@group(0) @binding(6) var x_ShadowMapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_ShadowMapTexture : sampler_comparison;

@group(0) @binding(1) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(9) var sampler_LightTexture0 : sampler;

@group(0) @binding(2) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(8) var sampler_LightTextureB0 : sampler;

@group(0) @binding(5) var x_CameraGBufferTexture2 : texture_2d<f32>;

@group(0) @binding(13) var sampler_CameraGBufferTexture2 : sampler;

@group(0) @binding(4) var x_CameraGBufferTexture1 : texture_2d<f32>;

@group(0) @binding(12) var sampler_CameraGBufferTexture1 : sampler;

@group(0) @binding(3) var x_CameraGBufferTexture0 : texture_2d<f32>;

@group(0) @binding(11) var sampler_CameraGBufferTexture0 : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec2<f32>;
  var u_xlat18 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat12 : f32;
  var u_xlatb18 : bool;
  var u_xlat13 : f32;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat19 : f32;
  var u_xlat8 : vec3<f32>;
  var u_xlat7 : f32;
  var u_xlat21 : f32;
  var u_xlatb1 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : f32 = x_17.x_ProjectionParams.z;
  let x_28 : f32 = vs_TEXCOORD1.z;
  u_xlat0.x = (x_23 / x_28);
  let x_33 : vec4<f32> = u_xlat0;
  let x_35 : vec3<f32> = vs_TEXCOORD1;
  let x_36 : vec3<f32> = (vec3<f32>(x_33.x, x_33.x, x_33.x) * x_35);
  let x_37 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_36.x, x_36.y, x_36.z, x_37.w);
  let x_44 : vec4<f32> = vs_TEXCOORD0;
  let x_46 : vec4<f32> = vs_TEXCOORD0;
  u_xlat1 = (vec2<f32>(x_44.x, x_44.y) / vec2<f32>(x_46.w, x_46.w));
  let x_60 : vec2<f32> = u_xlat1;
  let x_61 : vec4<f32> = textureSample(x_CameraDepthTexture, sampler_CameraDepthTexture, x_60);
  u_xlat18 = x_61.x;
  let x_65 : f32 = x_17.x_ZBufferParams.x;
  let x_66 : f32 = u_xlat18;
  let x_70 : f32 = x_17.x_ZBufferParams.y;
  u_xlat18 = ((x_65 * x_66) + x_70);
  let x_73 : f32 = u_xlat18;
  u_xlat18 = (1.0f / x_73);
  let x_76 : f32 = u_xlat18;
  let x_78 : vec4<f32> = u_xlat0;
  let x_80 : vec3<f32> = (vec3<f32>(x_76, x_76, x_76) * vec3<f32>(x_78.x, x_78.y, x_78.z));
  let x_81 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_80.x, x_80.y, x_80.z, x_81.w);
  let x_84 : vec4<f32> = u_xlat2;
  let x_89 : vec4<f32> = x_17.unity_CameraToWorld[1i];
  let x_91 : vec3<f32> = (vec3<f32>(x_84.y, x_84.y, x_84.y) * vec3<f32>(x_89.x, x_89.y, x_89.z));
  let x_92 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_91.x, x_91.y, x_91.z, x_92.w);
  let x_96 : vec4<f32> = x_17.unity_CameraToWorld[0i];
  let x_98 : vec4<f32> = u_xlat2;
  let x_101 : vec4<f32> = u_xlat3;
  let x_103 : vec3<f32> = ((vec3<f32>(x_96.x, x_96.y, x_96.z) * vec3<f32>(x_98.x, x_98.x, x_98.x)) + vec3<f32>(x_101.x, x_101.y, x_101.z));
  let x_104 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_103.x, x_103.y, x_104.z, x_103.z);
  let x_107 : vec4<f32> = x_17.unity_CameraToWorld[2i];
  let x_109 : vec4<f32> = u_xlat2;
  let x_112 : vec4<f32> = u_xlat2;
  let x_114 : vec3<f32> = ((vec3<f32>(x_107.x, x_107.y, x_107.z) * vec3<f32>(x_109.z, x_109.z, x_109.z)) + vec3<f32>(x_112.x, x_112.y, x_112.w));
  let x_115 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_114.x, x_114.y, x_115.z, x_114.z);
  let x_117 : vec4<f32> = u_xlat2;
  let x_120 : vec4<f32> = x_17.unity_CameraToWorld[3i];
  let x_122 : vec3<f32> = (vec3<f32>(x_117.x, x_117.y, x_117.w) + vec3<f32>(x_120.x, x_120.y, x_120.z));
  let x_123 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_122.x, x_122.y, x_123.z, x_122.z);
  let x_125 : vec4<f32> = u_xlat2;
  let x_129 : vec4<f32> = x_17.unity_ShadowFadeCenterAndType;
  let x_132 : vec3<f32> = (vec3<f32>(x_125.x, x_125.y, x_125.w) + -(vec3<f32>(x_129.x, x_129.y, x_129.z)));
  let x_133 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_132.x, x_132.y, x_132.z, x_133.w);
  let x_135 : vec4<f32> = u_xlat3;
  let x_137 : vec4<f32> = u_xlat3;
  u_xlat0.x = dot(vec3<f32>(x_135.x, x_135.y, x_135.z), vec3<f32>(x_137.x, x_137.y, x_137.z));
  let x_142 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_142);
  let x_146 : f32 = u_xlat0.z;
  let x_148 : f32 = u_xlat18;
  let x_151 : f32 = u_xlat0.x;
  u_xlat0.x = ((-(x_146) * x_148) + x_151);
  let x_156 : f32 = x_17.unity_ShadowFadeCenterAndType.w;
  let x_158 : f32 = u_xlat0.x;
  let x_161 : f32 = u_xlat2.z;
  u_xlat0.x = ((x_156 * x_158) + x_161);
  let x_165 : f32 = u_xlat0.x;
  let x_168 : f32 = x_17.x_LightShadowData.z;
  let x_171 : f32 = x_17.x_LightShadowData.w;
  u_xlat0.x = ((x_165 * x_168) + x_171);
  let x_175 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_175, 0.0f, 1.0f);
  let x_179 : vec4<f32> = u_xlat2;
  let x_183 : vec4<f32> = x_17.unity_WorldToShadow[0i][1i];
  u_xlat3 = (vec4<f32>(x_179.y, x_179.y, x_179.y, x_179.y) * x_183);
  let x_186 : vec4<f32> = x_17.unity_WorldToShadow[0i][0i];
  let x_187 : vec4<f32> = u_xlat2;
  let x_190 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_186 * vec4<f32>(x_187.x, x_187.x, x_187.x, x_187.x)) + x_190);
  let x_193 : vec4<f32> = x_17.unity_WorldToShadow[0i][2i];
  let x_194 : vec4<f32> = u_xlat2;
  let x_197 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_193 * vec4<f32>(x_194.w, x_194.w, x_194.w, x_194.w)) + x_197);
  let x_199 : vec4<f32> = u_xlat3;
  let x_201 : vec4<f32> = x_17.unity_WorldToShadow[0i][3i];
  u_xlat3 = (x_199 + x_201);
  let x_205 : vec4<f32> = u_xlat3;
  let x_207 : vec4<f32> = u_xlat3;
  u_xlat6 = (vec3<f32>(x_205.x, x_205.y, x_205.z) / vec3<f32>(x_207.w, x_207.w, x_207.w));
  let x_211 : vec3<f32> = u_xlat6;
  let x_212 : vec2<f32> = vec2<f32>(x_211.x, x_211.y);
  let x_214 : f32 = u_xlat6.z;
  txVec0 = vec3<f32>(x_212.x, x_212.y, x_214);
  let x_226 : vec3<f32> = txVec0;
  let x_228 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_226.xy, x_226.z);
  u_xlat6.x = x_228;
  let x_232 : f32 = x_17.x_LightShadowData.x;
  u_xlat12 = (-(x_232) + 1.0f);
  let x_236 : f32 = u_xlat6.x;
  let x_237 : f32 = u_xlat12;
  let x_240 : f32 = x_17.x_LightShadowData.x;
  u_xlat6.x = ((x_236 * x_237) + x_240);
  let x_244 : f32 = u_xlat6.x;
  u_xlat12 = (-(x_244) + 1.0f);
  let x_248 : f32 = u_xlat0.x;
  let x_249 : f32 = u_xlat12;
  let x_252 : f32 = u_xlat6.x;
  u_xlat0.x = ((x_248 * x_249) + x_252);
  let x_255 : vec4<f32> = u_xlat2;
  let x_259 : vec4<f32> = x_17.unity_WorldToLight[1i];
  u_xlat6 = (vec3<f32>(x_255.y, x_255.y, x_255.y) * vec3<f32>(x_259.x, x_259.y, x_259.w));
  let x_263 : vec4<f32> = x_17.unity_WorldToLight[0i];
  let x_265 : vec4<f32> = u_xlat2;
  let x_268 : vec3<f32> = u_xlat6;
  u_xlat6 = ((vec3<f32>(x_263.x, x_263.y, x_263.w) * vec3<f32>(x_265.x, x_265.x, x_265.x)) + x_268);
  let x_271 : vec4<f32> = x_17.unity_WorldToLight[2i];
  let x_273 : vec4<f32> = u_xlat2;
  let x_276 : vec3<f32> = u_xlat6;
  u_xlat6 = ((vec3<f32>(x_271.x, x_271.y, x_271.w) * vec3<f32>(x_273.w, x_273.w, x_273.w)) + x_276);
  let x_278 : vec3<f32> = u_xlat6;
  let x_280 : vec4<f32> = x_17.unity_WorldToLight[3i];
  u_xlat6 = (x_278 + vec3<f32>(x_280.x, x_280.y, x_280.w));
  let x_283 : vec3<f32> = u_xlat6;
  let x_285 : vec3<f32> = u_xlat6;
  let x_287 : vec2<f32> = (vec2<f32>(x_283.x, x_283.y) / vec2<f32>(x_285.z, x_285.z));
  let x_288 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_287.x, x_287.y, x_288.z);
  let x_294 : f32 = u_xlat6.z;
  u_xlatb18 = (x_294 < 0.0f);
  let x_296 : bool = u_xlatb18;
  u_xlat18 = select(0.0f, 1.0f, x_296);
  let x_303 : vec3<f32> = u_xlat6;
  let x_306 : vec4<f32> = textureSampleBias(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_303.x, x_303.y), -8.0f);
  u_xlat6.x = x_306.w;
  let x_309 : f32 = u_xlat18;
  let x_311 : f32 = u_xlat6.x;
  u_xlat6.x = (x_309 * x_311);
  let x_314 : vec4<f32> = u_xlat2;
  let x_319 : vec4<f32> = x_17.x_LightPos;
  let x_321 : vec3<f32> = (-(vec3<f32>(x_314.x, x_314.y, x_314.w)) + vec3<f32>(x_319.x, x_319.y, x_319.z));
  let x_322 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_321.x, x_321.y, x_321.z, x_322.w);
  let x_324 : vec4<f32> = u_xlat2;
  let x_328 : vec3<f32> = x_17.x_WorldSpaceCameraPos;
  let x_330 : vec3<f32> = (vec3<f32>(x_324.x, x_324.y, x_324.w) + -(x_328));
  let x_331 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_330.x, x_330.y, x_330.z, x_331.w);
  let x_333 : vec4<f32> = u_xlat3;
  let x_335 : vec4<f32> = u_xlat3;
  u_xlat12 = dot(vec3<f32>(x_333.x, x_333.y, x_333.z), vec3<f32>(x_335.x, x_335.y, x_335.z));
  let x_338 : f32 = u_xlat12;
  let x_340 : f32 = x_17.x_LightPos.w;
  u_xlat18 = (x_338 * x_340);
  let x_342 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_342);
  let x_349 : f32 = u_xlat18;
  let x_351 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_349, x_349));
  u_xlat18 = x_351.x;
  let x_353 : f32 = u_xlat18;
  let x_355 : f32 = u_xlat6.x;
  u_xlat6.x = (x_353 * x_355);
  let x_359 : f32 = u_xlat0.x;
  let x_361 : f32 = u_xlat6.x;
  u_xlat0.x = (x_359 * x_361);
  let x_364 : vec4<f32> = u_xlat0;
  let x_368 : vec4<f32> = x_17.x_LightColor;
  let x_370 : vec3<f32> = (vec3<f32>(x_364.x, x_364.x, x_364.x) * vec3<f32>(x_368.x, x_368.y, x_368.z));
  let x_371 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_370.x, x_370.y, x_371.z, x_370.z);
  let x_374 : vec4<f32> = u_xlat2;
  let x_376 : vec4<f32> = u_xlat2;
  u_xlat13 = dot(vec3<f32>(x_374.x, x_374.y, x_374.z), vec3<f32>(x_376.x, x_376.y, x_376.z));
  let x_379 : f32 = u_xlat13;
  u_xlat13 = inverseSqrt(x_379);
  let x_381 : f32 = u_xlat13;
  let x_383 : vec4<f32> = u_xlat2;
  let x_385 : vec3<f32> = (vec3<f32>(x_381, x_381, x_381) * vec3<f32>(x_383.x, x_383.y, x_383.z));
  let x_386 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_385.x, x_385.y, x_385.z, x_386.w);
  let x_389 : vec4<f32> = u_xlat3;
  let x_391 : f32 = u_xlat12;
  let x_394 : vec4<f32> = u_xlat2;
  let x_397 : vec3<f32> = ((vec3<f32>(x_389.x, x_389.y, x_389.z) * vec3<f32>(x_391, x_391, x_391)) + -(vec3<f32>(x_394.x, x_394.y, x_394.z)));
  let x_398 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_397.x, x_397.y, x_397.z, x_398.w);
  let x_400 : f32 = u_xlat12;
  let x_402 : vec4<f32> = u_xlat3;
  let x_404 : vec3<f32> = (vec3<f32>(x_400, x_400, x_400) * vec3<f32>(x_402.x, x_402.y, x_402.z));
  let x_405 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_404.x, x_404.y, x_404.z, x_405.w);
  let x_407 : vec4<f32> = u_xlat4;
  let x_409 : vec4<f32> = u_xlat4;
  u_xlat12 = dot(vec3<f32>(x_407.x, x_407.y, x_407.z), vec3<f32>(x_409.x, x_409.y, x_409.z));
  let x_412 : f32 = u_xlat12;
  u_xlat12 = max(x_412, 0.001f);
  let x_415 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_415);
  let x_417 : f32 = u_xlat12;
  let x_419 : vec4<f32> = u_xlat4;
  let x_421 : vec3<f32> = (vec3<f32>(x_417, x_417, x_417) * vec3<f32>(x_419.x, x_419.y, x_419.z));
  let x_422 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_421.x, x_421.y, x_421.z, x_422.w);
  let x_430 : vec2<f32> = u_xlat1;
  let x_431 : vec4<f32> = textureSample(x_CameraGBufferTexture2, sampler_CameraGBufferTexture2, x_430);
  u_xlat5 = vec3<f32>(x_431.x, x_431.y, x_431.z);
  let x_433 : vec3<f32> = u_xlat5;
  u_xlat5 = ((x_433 * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_440 : vec3<f32> = u_xlat5;
  let x_441 : vec3<f32> = u_xlat5;
  u_xlat12 = dot(x_440, x_441);
  let x_443 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_443);
  let x_445 : f32 = u_xlat12;
  let x_447 : vec3<f32> = u_xlat5;
  u_xlat5 = (vec3<f32>(x_445, x_445, x_445) * x_447);
  let x_449 : vec3<f32> = u_xlat5;
  let x_450 : vec4<f32> = u_xlat4;
  u_xlat12 = dot(x_449, vec3<f32>(x_450.x, x_450.y, x_450.z));
  let x_453 : f32 = u_xlat12;
  u_xlat12 = clamp(x_453, 0.0f, 1.0f);
  let x_455 : vec4<f32> = u_xlat3;
  let x_457 : vec4<f32> = u_xlat4;
  u_xlat13 = dot(vec3<f32>(x_455.x, x_455.y, x_455.z), vec3<f32>(x_457.x, x_457.y, x_457.z));
  let x_460 : f32 = u_xlat13;
  u_xlat13 = clamp(x_460, 0.0f, 1.0f);
  let x_463 : vec3<f32> = u_xlat5;
  let x_464 : vec4<f32> = u_xlat3;
  u_xlat19 = dot(x_463, vec3<f32>(x_464.x, x_464.y, x_464.z));
  let x_467 : f32 = u_xlat19;
  u_xlat19 = clamp(x_467, 0.0f, 1.0f);
  let x_469 : vec3<f32> = u_xlat5;
  let x_470 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(x_469, -(vec3<f32>(x_470.x, x_470.y, x_470.z)));
  let x_480 : vec2<f32> = u_xlat1;
  let x_481 : vec4<f32> = textureSample(x_CameraGBufferTexture1, sampler_CameraGBufferTexture1, x_480);
  u_xlat3 = x_481;
  let x_488 : vec2<f32> = u_xlat1;
  let x_489 : vec4<f32> = textureSample(x_CameraGBufferTexture0, sampler_CameraGBufferTexture0, x_488);
  u_xlat8 = vec3<f32>(x_489.x, x_489.y, x_489.z);
  let x_491 : vec4<f32> = u_xlat3;
  u_xlat4 = (-(vec4<f32>(x_491.w, x_491.x, x_491.y, x_491.z)) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_497 : f32 = u_xlat4.x;
  let x_499 : f32 = u_xlat4.x;
  u_xlat1.x = (x_497 * x_499);
  let x_503 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_503, 0.002f);
  let x_509 : f32 = u_xlat1.x;
  let x_511 : f32 = u_xlat1.x;
  u_xlat7 = (x_509 * x_511);
  let x_514 : f32 = u_xlat12;
  let x_515 : f32 = u_xlat7;
  let x_517 : f32 = u_xlat12;
  u_xlat21 = ((x_514 * x_515) + -(x_517));
  let x_520 : f32 = u_xlat21;
  let x_521 : f32 = u_xlat12;
  u_xlat12 = ((x_520 * x_521) + 1.0f);
  let x_524 : f32 = u_xlat12;
  let x_525 : f32 = u_xlat12;
  u_xlat12 = ((x_524 * x_525) + 0.0000001f);
  let x_529 : f32 = u_xlat7;
  u_xlat7 = (x_529 * 0.318309873f);
  let x_532 : f32 = u_xlat7;
  let x_533 : f32 = u_xlat12;
  u_xlat12 = (x_532 / x_533);
  let x_536 : f32 = u_xlat1.x;
  u_xlat7 = (-(x_536) + 1.0f);
  let x_540 : f32 = u_xlat2.x;
  let x_542 : f32 = u_xlat7;
  let x_545 : f32 = u_xlat1.x;
  u_xlat21 = ((abs(x_540) * x_542) + x_545);
  let x_547 : f32 = u_xlat19;
  let x_548 : f32 = u_xlat7;
  let x_551 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_547 * x_548) + x_551);
  let x_555 : f32 = u_xlat1.x;
  let x_557 : f32 = u_xlat2.x;
  u_xlat1.x = (x_555 * abs(x_557));
  let x_562 : f32 = u_xlat2.x;
  u_xlat7 = (-(abs(x_562)) + 1.0f);
  let x_566 : f32 = u_xlat19;
  let x_567 : f32 = u_xlat21;
  let x_570 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_566 * x_567) + x_570);
  let x_574 : f32 = u_xlat1.x;
  u_xlat1.x = (x_574 + 0.00001f);
  let x_580 : f32 = u_xlat1.x;
  u_xlat1.x = (0.5f / x_580);
  let x_583 : f32 = u_xlat12;
  let x_585 : f32 = u_xlat1.x;
  u_xlat12 = (x_583 * x_585);
  let x_587 : f32 = u_xlat19;
  let x_588 : f32 = u_xlat12;
  u_xlat12 = (x_587 * x_588);
  let x_590 : f32 = u_xlat12;
  u_xlat12 = (x_590 * 3.141592741f);
  let x_593 : f32 = u_xlat12;
  u_xlat12 = max(x_593, 0.0f);
  let x_595 : vec4<f32> = u_xlat3;
  let x_597 : vec4<f32> = u_xlat3;
  u_xlat1.x = dot(vec3<f32>(x_595.x, x_595.y, x_595.z), vec3<f32>(x_597.x, x_597.y, x_597.z));
  let x_603 : f32 = u_xlat1.x;
  u_xlatb1 = !((x_603 == 0.0f));
  let x_605 : bool = u_xlatb1;
  u_xlat1.x = select(0.0f, 1.0f, x_605);
  let x_608 : f32 = u_xlat12;
  let x_610 : f32 = u_xlat1.x;
  u_xlat12 = (x_608 * x_610);
  let x_612 : vec4<f32> = u_xlat0;
  let x_614 : f32 = u_xlat12;
  u_xlat5 = (vec3<f32>(x_612.x, x_612.y, x_612.w) * vec3<f32>(x_614, x_614, x_614));
  let x_617 : f32 = u_xlat13;
  u_xlat12 = (-(x_617) + 1.0f);
  let x_620 : f32 = u_xlat13;
  let x_621 : f32 = u_xlat13;
  u_xlat1.x = (x_620 * x_621);
  let x_624 : vec2<f32> = u_xlat1;
  let x_626 : vec4<f32> = u_xlat4;
  u_xlat1.x = dot(vec2<f32>(x_624.x, x_624.x), vec2<f32>(x_626.x, x_626.x));
  let x_631 : f32 = u_xlat1.x;
  u_xlat1.x = (x_631 + -0.5f);
  let x_635 : f32 = u_xlat12;
  let x_636 : f32 = u_xlat12;
  u_xlat13 = (x_635 * x_636);
  let x_638 : f32 = u_xlat13;
  let x_639 : f32 = u_xlat13;
  u_xlat13 = (x_638 * x_639);
  let x_641 : f32 = u_xlat12;
  let x_642 : f32 = u_xlat13;
  u_xlat12 = (x_641 * x_642);
  let x_644 : vec4<f32> = u_xlat4;
  let x_646 : f32 = u_xlat12;
  let x_649 : vec4<f32> = u_xlat3;
  let x_651 : vec3<f32> = ((vec3<f32>(x_644.y, x_644.z, x_644.w) * vec3<f32>(x_646, x_646, x_646)) + vec3<f32>(x_649.x, x_649.y, x_649.z));
  let x_652 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_651.x, x_651.y, x_651.z, x_652.w);
  let x_654 : vec4<f32> = u_xlat3;
  let x_656 : vec3<f32> = u_xlat5;
  let x_657 : vec3<f32> = (vec3<f32>(x_654.x, x_654.y, x_654.z) * x_656);
  let x_658 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_657.x, x_657.y, x_657.z, x_658.w);
  let x_660 : f32 = u_xlat7;
  let x_661 : f32 = u_xlat7;
  u_xlat12 = (x_660 * x_661);
  let x_663 : f32 = u_xlat12;
  let x_664 : f32 = u_xlat12;
  u_xlat12 = (x_663 * x_664);
  let x_666 : f32 = u_xlat7;
  let x_667 : f32 = u_xlat12;
  u_xlat12 = (x_666 * x_667);
  let x_670 : f32 = u_xlat1.x;
  let x_671 : f32 = u_xlat12;
  u_xlat12 = ((x_670 * x_671) + 1.0f);
  let x_674 : f32 = u_xlat19;
  u_xlat7 = (-(x_674) + 1.0f);
  let x_677 : f32 = u_xlat7;
  let x_678 : f32 = u_xlat7;
  u_xlat13 = (x_677 * x_678);
  let x_680 : f32 = u_xlat13;
  let x_681 : f32 = u_xlat13;
  u_xlat13 = (x_680 * x_681);
  let x_683 : f32 = u_xlat7;
  let x_684 : f32 = u_xlat13;
  u_xlat7 = (x_683 * x_684);
  let x_687 : f32 = u_xlat1.x;
  let x_688 : f32 = u_xlat7;
  u_xlat1.x = ((x_687 * x_688) + 1.0f);
  let x_692 : f32 = u_xlat12;
  let x_694 : f32 = u_xlat1.x;
  u_xlat12 = (x_692 * x_694);
  let x_696 : f32 = u_xlat19;
  let x_697 : f32 = u_xlat12;
  u_xlat12 = (x_696 * x_697);
  let x_699 : f32 = u_xlat12;
  let x_701 : vec4<f32> = u_xlat0;
  let x_703 : vec3<f32> = (vec3<f32>(x_699, x_699, x_699) * vec3<f32>(x_701.x, x_701.y, x_701.w));
  let x_704 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_703.x, x_703.y, x_703.z, x_704.w);
  let x_708 : vec3<f32> = u_xlat8;
  let x_709 : vec4<f32> = u_xlat0;
  let x_712 : vec4<f32> = u_xlat3;
  let x_714 : vec3<f32> = ((x_708 * vec3<f32>(x_709.x, x_709.y, x_709.z)) + vec3<f32>(x_712.x, x_712.y, x_712.z));
  let x_715 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_714.x, x_714.y, x_714.z, x_715.w);
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

