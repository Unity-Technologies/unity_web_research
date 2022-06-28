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

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var<uniform> x_17 : PGlobals;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat1 : vec2<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat18 : f32;

@group(0) @binding(1) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_CameraDepthTexture : sampler;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

@group(0) @binding(7) var x_ShadowMapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_ShadowMapTexture : sampler_comparison;

var<private> u_xlat12 : f32;

var<private> u_xlatb18 : bool;

@group(0) @binding(2) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(10) var sampler_LightTexture0 : sampler;

@group(0) @binding(3) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(9) var sampler_LightTextureB0 : sampler;

var<private> u_xlat13 : f32;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

@group(0) @binding(6) var x_CameraGBufferTexture2 : texture_2d<f32>;

@group(0) @binding(14) var sampler_CameraGBufferTexture2 : sampler;

var<private> u_xlat19 : f32;

@group(0) @binding(5) var x_CameraGBufferTexture1 : texture_2d<f32>;

@group(0) @binding(13) var sampler_CameraGBufferTexture1 : sampler;

var<private> u_xlat8 : vec3<f32>;

@group(0) @binding(4) var x_CameraGBufferTexture0 : texture_2d<f32>;

@group(0) @binding(12) var sampler_CameraGBufferTexture0 : sampler;

var<private> u_xlat7 : f32;

var<private> u_xlat21 : f32;

var<private> u_xlatb1 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var txVec0 : vec3<f32>;
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
  let x_212 : vec3<f32> = u_xlat6;
  let x_213 : vec2<f32> = vec2<f32>(x_212.x, x_212.y);
  let x_215 : f32 = u_xlat6.z;
  txVec0 = vec3<f32>(x_213.x, x_213.y, x_215);
  let x_227 : vec3<f32> = txVec0;
  let x_229 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_227.xy, x_227.z);
  u_xlat6.x = x_229;
  let x_233 : f32 = x_17.x_LightShadowData.x;
  u_xlat12 = (-(x_233) + 1.0f);
  let x_237 : f32 = u_xlat6.x;
  let x_238 : f32 = u_xlat12;
  let x_241 : f32 = x_17.x_LightShadowData.x;
  u_xlat6.x = ((x_237 * x_238) + x_241);
  let x_245 : f32 = u_xlat6.x;
  u_xlat12 = (-(x_245) + 1.0f);
  let x_249 : f32 = u_xlat0.x;
  let x_250 : f32 = u_xlat12;
  let x_253 : f32 = u_xlat6.x;
  u_xlat0.x = ((x_249 * x_250) + x_253);
  let x_256 : vec4<f32> = u_xlat2;
  let x_260 : vec4<f32> = x_17.unity_WorldToLight[1i];
  u_xlat6 = (vec3<f32>(x_256.y, x_256.y, x_256.y) * vec3<f32>(x_260.x, x_260.y, x_260.w));
  let x_264 : vec4<f32> = x_17.unity_WorldToLight[0i];
  let x_266 : vec4<f32> = u_xlat2;
  let x_269 : vec3<f32> = u_xlat6;
  u_xlat6 = ((vec3<f32>(x_264.x, x_264.y, x_264.w) * vec3<f32>(x_266.x, x_266.x, x_266.x)) + x_269);
  let x_272 : vec4<f32> = x_17.unity_WorldToLight[2i];
  let x_274 : vec4<f32> = u_xlat2;
  let x_277 : vec3<f32> = u_xlat6;
  u_xlat6 = ((vec3<f32>(x_272.x, x_272.y, x_272.w) * vec3<f32>(x_274.w, x_274.w, x_274.w)) + x_277);
  let x_279 : vec3<f32> = u_xlat6;
  let x_281 : vec4<f32> = x_17.unity_WorldToLight[3i];
  u_xlat6 = (x_279 + vec3<f32>(x_281.x, x_281.y, x_281.w));
  let x_284 : vec3<f32> = u_xlat6;
  let x_286 : vec3<f32> = u_xlat6;
  let x_288 : vec2<f32> = (vec2<f32>(x_284.x, x_284.y) / vec2<f32>(x_286.z, x_286.z));
  let x_289 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_288.x, x_288.y, x_289.z);
  let x_295 : f32 = u_xlat6.z;
  u_xlatb18 = (x_295 < 0.0f);
  let x_297 : bool = u_xlatb18;
  u_xlat18 = select(0.0f, 1.0f, x_297);
  let x_304 : vec3<f32> = u_xlat6;
  let x_307 : vec4<f32> = textureSampleBias(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_304.x, x_304.y), -8.0f);
  u_xlat6.x = x_307.w;
  let x_310 : f32 = u_xlat18;
  let x_312 : f32 = u_xlat6.x;
  u_xlat6.x = (x_310 * x_312);
  let x_315 : vec4<f32> = u_xlat2;
  let x_320 : vec4<f32> = x_17.x_LightPos;
  let x_322 : vec3<f32> = (-(vec3<f32>(x_315.x, x_315.y, x_315.w)) + vec3<f32>(x_320.x, x_320.y, x_320.z));
  let x_323 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_322.x, x_322.y, x_322.z, x_323.w);
  let x_325 : vec4<f32> = u_xlat2;
  let x_329 : vec3<f32> = x_17.x_WorldSpaceCameraPos;
  let x_331 : vec3<f32> = (vec3<f32>(x_325.x, x_325.y, x_325.w) + -(x_329));
  let x_332 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_331.x, x_331.y, x_331.z, x_332.w);
  let x_334 : vec4<f32> = u_xlat3;
  let x_336 : vec4<f32> = u_xlat3;
  u_xlat12 = dot(vec3<f32>(x_334.x, x_334.y, x_334.z), vec3<f32>(x_336.x, x_336.y, x_336.z));
  let x_339 : f32 = u_xlat12;
  let x_341 : f32 = x_17.x_LightPos.w;
  u_xlat18 = (x_339 * x_341);
  let x_343 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_343);
  let x_350 : f32 = u_xlat18;
  let x_352 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_350, x_350));
  u_xlat18 = x_352.x;
  let x_354 : f32 = u_xlat18;
  let x_356 : f32 = u_xlat6.x;
  u_xlat6.x = (x_354 * x_356);
  let x_360 : f32 = u_xlat0.x;
  let x_362 : f32 = u_xlat6.x;
  u_xlat0.x = (x_360 * x_362);
  let x_365 : vec4<f32> = u_xlat0;
  let x_369 : vec4<f32> = x_17.x_LightColor;
  let x_371 : vec3<f32> = (vec3<f32>(x_365.x, x_365.x, x_365.x) * vec3<f32>(x_369.x, x_369.y, x_369.z));
  let x_372 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_371.x, x_371.y, x_372.z, x_371.z);
  let x_375 : vec4<f32> = u_xlat2;
  let x_377 : vec4<f32> = u_xlat2;
  u_xlat13 = dot(vec3<f32>(x_375.x, x_375.y, x_375.z), vec3<f32>(x_377.x, x_377.y, x_377.z));
  let x_380 : f32 = u_xlat13;
  u_xlat13 = inverseSqrt(x_380);
  let x_382 : f32 = u_xlat13;
  let x_384 : vec4<f32> = u_xlat2;
  let x_386 : vec3<f32> = (vec3<f32>(x_382, x_382, x_382) * vec3<f32>(x_384.x, x_384.y, x_384.z));
  let x_387 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_386.x, x_386.y, x_386.z, x_387.w);
  let x_390 : vec4<f32> = u_xlat3;
  let x_392 : f32 = u_xlat12;
  let x_395 : vec4<f32> = u_xlat2;
  let x_398 : vec3<f32> = ((vec3<f32>(x_390.x, x_390.y, x_390.z) * vec3<f32>(x_392, x_392, x_392)) + -(vec3<f32>(x_395.x, x_395.y, x_395.z)));
  let x_399 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_398.x, x_398.y, x_398.z, x_399.w);
  let x_401 : f32 = u_xlat12;
  let x_403 : vec4<f32> = u_xlat3;
  let x_405 : vec3<f32> = (vec3<f32>(x_401, x_401, x_401) * vec3<f32>(x_403.x, x_403.y, x_403.z));
  let x_406 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_405.x, x_405.y, x_405.z, x_406.w);
  let x_408 : vec4<f32> = u_xlat4;
  let x_410 : vec4<f32> = u_xlat4;
  u_xlat12 = dot(vec3<f32>(x_408.x, x_408.y, x_408.z), vec3<f32>(x_410.x, x_410.y, x_410.z));
  let x_413 : f32 = u_xlat12;
  u_xlat12 = max(x_413, 0.001f);
  let x_416 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_416);
  let x_418 : f32 = u_xlat12;
  let x_420 : vec4<f32> = u_xlat4;
  let x_422 : vec3<f32> = (vec3<f32>(x_418, x_418, x_418) * vec3<f32>(x_420.x, x_420.y, x_420.z));
  let x_423 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_422.x, x_422.y, x_422.z, x_423.w);
  let x_431 : vec2<f32> = u_xlat1;
  let x_432 : vec4<f32> = textureSample(x_CameraGBufferTexture2, sampler_CameraGBufferTexture2, x_431);
  u_xlat5 = vec3<f32>(x_432.x, x_432.y, x_432.z);
  let x_434 : vec3<f32> = u_xlat5;
  u_xlat5 = ((x_434 * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_441 : vec3<f32> = u_xlat5;
  let x_442 : vec3<f32> = u_xlat5;
  u_xlat12 = dot(x_441, x_442);
  let x_444 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_444);
  let x_446 : f32 = u_xlat12;
  let x_448 : vec3<f32> = u_xlat5;
  u_xlat5 = (vec3<f32>(x_446, x_446, x_446) * x_448);
  let x_450 : vec3<f32> = u_xlat5;
  let x_451 : vec4<f32> = u_xlat4;
  u_xlat12 = dot(x_450, vec3<f32>(x_451.x, x_451.y, x_451.z));
  let x_454 : f32 = u_xlat12;
  u_xlat12 = clamp(x_454, 0.0f, 1.0f);
  let x_456 : vec4<f32> = u_xlat3;
  let x_458 : vec4<f32> = u_xlat4;
  u_xlat13 = dot(vec3<f32>(x_456.x, x_456.y, x_456.z), vec3<f32>(x_458.x, x_458.y, x_458.z));
  let x_461 : f32 = u_xlat13;
  u_xlat13 = clamp(x_461, 0.0f, 1.0f);
  let x_464 : vec3<f32> = u_xlat5;
  let x_465 : vec4<f32> = u_xlat3;
  u_xlat19 = dot(x_464, vec3<f32>(x_465.x, x_465.y, x_465.z));
  let x_468 : f32 = u_xlat19;
  u_xlat19 = clamp(x_468, 0.0f, 1.0f);
  let x_470 : vec3<f32> = u_xlat5;
  let x_471 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(x_470, -(vec3<f32>(x_471.x, x_471.y, x_471.z)));
  let x_481 : vec2<f32> = u_xlat1;
  let x_482 : vec4<f32> = textureSample(x_CameraGBufferTexture1, sampler_CameraGBufferTexture1, x_481);
  u_xlat3 = x_482;
  let x_489 : vec2<f32> = u_xlat1;
  let x_490 : vec4<f32> = textureSample(x_CameraGBufferTexture0, sampler_CameraGBufferTexture0, x_489);
  u_xlat8 = vec3<f32>(x_490.x, x_490.y, x_490.z);
  let x_492 : vec4<f32> = u_xlat3;
  u_xlat4 = (-(vec4<f32>(x_492.w, x_492.x, x_492.y, x_492.z)) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_498 : f32 = u_xlat4.x;
  let x_500 : f32 = u_xlat4.x;
  u_xlat1.x = (x_498 * x_500);
  let x_504 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_504, 0.002f);
  let x_510 : f32 = u_xlat1.x;
  let x_512 : f32 = u_xlat1.x;
  u_xlat7 = (x_510 * x_512);
  let x_515 : f32 = u_xlat12;
  let x_516 : f32 = u_xlat7;
  let x_518 : f32 = u_xlat12;
  u_xlat21 = ((x_515 * x_516) + -(x_518));
  let x_521 : f32 = u_xlat21;
  let x_522 : f32 = u_xlat12;
  u_xlat12 = ((x_521 * x_522) + 1.0f);
  let x_525 : f32 = u_xlat12;
  let x_526 : f32 = u_xlat12;
  u_xlat12 = ((x_525 * x_526) + 0.0000001f);
  let x_530 : f32 = u_xlat7;
  u_xlat7 = (x_530 * 0.318309873f);
  let x_533 : f32 = u_xlat7;
  let x_534 : f32 = u_xlat12;
  u_xlat12 = (x_533 / x_534);
  let x_537 : f32 = u_xlat1.x;
  u_xlat7 = (-(x_537) + 1.0f);
  let x_541 : f32 = u_xlat2.x;
  let x_543 : f32 = u_xlat7;
  let x_546 : f32 = u_xlat1.x;
  u_xlat21 = ((abs(x_541) * x_543) + x_546);
  let x_548 : f32 = u_xlat19;
  let x_549 : f32 = u_xlat7;
  let x_552 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_548 * x_549) + x_552);
  let x_556 : f32 = u_xlat1.x;
  let x_558 : f32 = u_xlat2.x;
  u_xlat1.x = (x_556 * abs(x_558));
  let x_563 : f32 = u_xlat2.x;
  u_xlat7 = (-(abs(x_563)) + 1.0f);
  let x_567 : f32 = u_xlat19;
  let x_568 : f32 = u_xlat21;
  let x_571 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_567 * x_568) + x_571);
  let x_575 : f32 = u_xlat1.x;
  u_xlat1.x = (x_575 + 0.00001f);
  let x_581 : f32 = u_xlat1.x;
  u_xlat1.x = (0.5f / x_581);
  let x_584 : f32 = u_xlat12;
  let x_586 : f32 = u_xlat1.x;
  u_xlat12 = (x_584 * x_586);
  let x_588 : f32 = u_xlat19;
  let x_589 : f32 = u_xlat12;
  u_xlat12 = (x_588 * x_589);
  let x_591 : f32 = u_xlat12;
  u_xlat12 = (x_591 * 3.141592741f);
  let x_594 : f32 = u_xlat12;
  u_xlat12 = max(x_594, 0.0f);
  let x_596 : vec4<f32> = u_xlat3;
  let x_598 : vec4<f32> = u_xlat3;
  u_xlat1.x = dot(vec3<f32>(x_596.x, x_596.y, x_596.z), vec3<f32>(x_598.x, x_598.y, x_598.z));
  let x_604 : f32 = u_xlat1.x;
  u_xlatb1 = !((x_604 == 0.0f));
  let x_606 : bool = u_xlatb1;
  u_xlat1.x = select(0.0f, 1.0f, x_606);
  let x_609 : f32 = u_xlat12;
  let x_611 : f32 = u_xlat1.x;
  u_xlat12 = (x_609 * x_611);
  let x_613 : vec4<f32> = u_xlat0;
  let x_615 : f32 = u_xlat12;
  u_xlat5 = (vec3<f32>(x_613.x, x_613.y, x_613.w) * vec3<f32>(x_615, x_615, x_615));
  let x_618 : f32 = u_xlat13;
  u_xlat12 = (-(x_618) + 1.0f);
  let x_621 : f32 = u_xlat13;
  let x_622 : f32 = u_xlat13;
  u_xlat1.x = (x_621 * x_622);
  let x_625 : vec2<f32> = u_xlat1;
  let x_627 : vec4<f32> = u_xlat4;
  u_xlat1.x = dot(vec2<f32>(x_625.x, x_625.x), vec2<f32>(x_627.x, x_627.x));
  let x_632 : f32 = u_xlat1.x;
  u_xlat1.x = (x_632 + -0.5f);
  let x_636 : f32 = u_xlat12;
  let x_637 : f32 = u_xlat12;
  u_xlat13 = (x_636 * x_637);
  let x_639 : f32 = u_xlat13;
  let x_640 : f32 = u_xlat13;
  u_xlat13 = (x_639 * x_640);
  let x_642 : f32 = u_xlat12;
  let x_643 : f32 = u_xlat13;
  u_xlat12 = (x_642 * x_643);
  let x_645 : vec4<f32> = u_xlat4;
  let x_647 : f32 = u_xlat12;
  let x_650 : vec4<f32> = u_xlat3;
  let x_652 : vec3<f32> = ((vec3<f32>(x_645.y, x_645.z, x_645.w) * vec3<f32>(x_647, x_647, x_647)) + vec3<f32>(x_650.x, x_650.y, x_650.z));
  let x_653 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_652.x, x_652.y, x_652.z, x_653.w);
  let x_655 : vec4<f32> = u_xlat3;
  let x_657 : vec3<f32> = u_xlat5;
  let x_658 : vec3<f32> = (vec3<f32>(x_655.x, x_655.y, x_655.z) * x_657);
  let x_659 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_658.x, x_658.y, x_658.z, x_659.w);
  let x_661 : f32 = u_xlat7;
  let x_662 : f32 = u_xlat7;
  u_xlat12 = (x_661 * x_662);
  let x_664 : f32 = u_xlat12;
  let x_665 : f32 = u_xlat12;
  u_xlat12 = (x_664 * x_665);
  let x_667 : f32 = u_xlat7;
  let x_668 : f32 = u_xlat12;
  u_xlat12 = (x_667 * x_668);
  let x_671 : f32 = u_xlat1.x;
  let x_672 : f32 = u_xlat12;
  u_xlat12 = ((x_671 * x_672) + 1.0f);
  let x_675 : f32 = u_xlat19;
  u_xlat7 = (-(x_675) + 1.0f);
  let x_678 : f32 = u_xlat7;
  let x_679 : f32 = u_xlat7;
  u_xlat13 = (x_678 * x_679);
  let x_681 : f32 = u_xlat13;
  let x_682 : f32 = u_xlat13;
  u_xlat13 = (x_681 * x_682);
  let x_684 : f32 = u_xlat7;
  let x_685 : f32 = u_xlat13;
  u_xlat7 = (x_684 * x_685);
  let x_688 : f32 = u_xlat1.x;
  let x_689 : f32 = u_xlat7;
  u_xlat1.x = ((x_688 * x_689) + 1.0f);
  let x_693 : f32 = u_xlat12;
  let x_695 : f32 = u_xlat1.x;
  u_xlat12 = (x_693 * x_695);
  let x_697 : f32 = u_xlat19;
  let x_698 : f32 = u_xlat12;
  u_xlat12 = (x_697 * x_698);
  let x_700 : f32 = u_xlat12;
  let x_702 : vec4<f32> = u_xlat0;
  let x_704 : vec3<f32> = (vec3<f32>(x_700, x_700, x_700) * vec3<f32>(x_702.x, x_702.y, x_702.w));
  let x_705 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_704.x, x_704.y, x_704.z, x_705.w);
  let x_709 : vec3<f32> = u_xlat8;
  let x_710 : vec4<f32> = u_xlat0;
  let x_713 : vec4<f32> = u_xlat3;
  let x_715 : vec3<f32> = ((x_709 * vec3<f32>(x_710.x, x_710.y, x_710.z)) + vec3<f32>(x_713.x, x_713.y, x_713.z));
  let x_716 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_715.x, x_715.y, x_715.z, x_716.w);
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

