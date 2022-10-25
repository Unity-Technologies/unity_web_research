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

@group(0) @binding(8) var sampler_CameraDepthTexture : sampler;

@group(0) @binding(7) var x_ShadowMapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_ShadowMapTexture : sampler_comparison;

@group(0) @binding(1) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(10) var sampler_LightTexture0 : sampler;

@group(0) @binding(2) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(9) var sampler_LightTextureB0 : sampler;

@group(0) @binding(5) var x_CameraGBufferTexture2 : texture_2d<f32>;

@group(0) @binding(15) var sampler_CameraGBufferTexture2 : sampler;

@group(0) @binding(4) var x_CameraGBufferTexture1 : texture_2d<f32>;

@group(0) @binding(14) var sampler_CameraGBufferTexture1 : sampler;

@group(0) @binding(3) var x_CameraGBufferTexture0 : texture_2d<f32>;

@group(0) @binding(13) var sampler_CameraGBufferTexture0 : sampler;

@group(0) @binding(6) var unity_NHxRoughness : texture_2d<f32>;

@group(0) @binding(12) var samplerunity_NHxRoughness : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat15 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat10 : f32;
  var u_xlatb15 : bool;
  var u_xlat4 : vec3<f32>;
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
  let x_48 : vec2<f32> = (vec2<f32>(x_44.x, x_44.y) / vec2<f32>(x_46.w, x_46.w));
  let x_49 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_48.x, x_48.y, x_49.z);
  let x_62 : vec3<f32> = u_xlat1;
  let x_64 : vec4<f32> = textureSample(x_CameraDepthTexture, sampler_CameraDepthTexture, vec2<f32>(x_62.x, x_62.y));
  u_xlat15 = x_64.x;
  let x_68 : f32 = x_17.x_ZBufferParams.x;
  let x_69 : f32 = u_xlat15;
  let x_73 : f32 = x_17.x_ZBufferParams.y;
  u_xlat15 = ((x_68 * x_69) + x_73);
  let x_76 : f32 = u_xlat15;
  u_xlat15 = (1.0f / x_76);
  let x_79 : f32 = u_xlat15;
  let x_81 : vec4<f32> = u_xlat0;
  let x_83 : vec3<f32> = (vec3<f32>(x_79, x_79, x_79) * vec3<f32>(x_81.x, x_81.y, x_81.z));
  let x_84 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_83.x, x_83.y, x_83.z, x_84.w);
  let x_87 : vec4<f32> = u_xlat2;
  let x_92 : vec4<f32> = x_17.unity_CameraToWorld[1i];
  let x_94 : vec3<f32> = (vec3<f32>(x_87.y, x_87.y, x_87.y) * vec3<f32>(x_92.x, x_92.y, x_92.z));
  let x_95 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_94.x, x_94.y, x_94.z, x_95.w);
  let x_99 : vec4<f32> = x_17.unity_CameraToWorld[0i];
  let x_101 : vec4<f32> = u_xlat2;
  let x_104 : vec4<f32> = u_xlat3;
  let x_106 : vec3<f32> = ((vec3<f32>(x_99.x, x_99.y, x_99.z) * vec3<f32>(x_101.x, x_101.x, x_101.x)) + vec3<f32>(x_104.x, x_104.y, x_104.z));
  let x_107 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_106.x, x_106.y, x_107.z, x_106.z);
  let x_110 : vec4<f32> = x_17.unity_CameraToWorld[2i];
  let x_112 : vec4<f32> = u_xlat2;
  let x_115 : vec4<f32> = u_xlat2;
  let x_117 : vec3<f32> = ((vec3<f32>(x_110.x, x_110.y, x_110.z) * vec3<f32>(x_112.z, x_112.z, x_112.z)) + vec3<f32>(x_115.x, x_115.y, x_115.w));
  let x_118 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_117.x, x_117.y, x_118.z, x_117.z);
  let x_120 : vec4<f32> = u_xlat2;
  let x_123 : vec4<f32> = x_17.unity_CameraToWorld[3i];
  let x_125 : vec3<f32> = (vec3<f32>(x_120.x, x_120.y, x_120.w) + vec3<f32>(x_123.x, x_123.y, x_123.z));
  let x_126 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_125.x, x_125.y, x_126.z, x_125.z);
  let x_128 : vec4<f32> = u_xlat2;
  let x_132 : vec4<f32> = x_17.unity_ShadowFadeCenterAndType;
  let x_135 : vec3<f32> = (vec3<f32>(x_128.x, x_128.y, x_128.w) + -(vec3<f32>(x_132.x, x_132.y, x_132.z)));
  let x_136 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_135.x, x_135.y, x_135.z, x_136.w);
  let x_138 : vec4<f32> = u_xlat3;
  let x_140 : vec4<f32> = u_xlat3;
  u_xlat0.x = dot(vec3<f32>(x_138.x, x_138.y, x_138.z), vec3<f32>(x_140.x, x_140.y, x_140.z));
  let x_145 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_145);
  let x_149 : f32 = u_xlat0.z;
  let x_151 : f32 = u_xlat15;
  let x_154 : f32 = u_xlat0.x;
  u_xlat0.x = ((-(x_149) * x_151) + x_154);
  let x_159 : f32 = x_17.unity_ShadowFadeCenterAndType.w;
  let x_161 : f32 = u_xlat0.x;
  let x_164 : f32 = u_xlat2.z;
  u_xlat0.x = ((x_159 * x_161) + x_164);
  let x_168 : f32 = u_xlat0.x;
  let x_171 : f32 = x_17.x_LightShadowData.z;
  let x_174 : f32 = x_17.x_LightShadowData.w;
  u_xlat0.x = ((x_168 * x_171) + x_174);
  let x_178 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_178, 0.0f, 1.0f);
  let x_182 : vec4<f32> = u_xlat2;
  let x_186 : vec4<f32> = x_17.unity_WorldToShadow[0i][1i];
  u_xlat3 = (vec4<f32>(x_182.y, x_182.y, x_182.y, x_182.y) * x_186);
  let x_189 : vec4<f32> = x_17.unity_WorldToShadow[0i][0i];
  let x_190 : vec4<f32> = u_xlat2;
  let x_193 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_189 * vec4<f32>(x_190.x, x_190.x, x_190.x, x_190.x)) + x_193);
  let x_196 : vec4<f32> = x_17.unity_WorldToShadow[0i][2i];
  let x_197 : vec4<f32> = u_xlat2;
  let x_200 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_196 * vec4<f32>(x_197.w, x_197.w, x_197.w, x_197.w)) + x_200);
  let x_202 : vec4<f32> = u_xlat3;
  let x_204 : vec4<f32> = x_17.unity_WorldToShadow[0i][3i];
  u_xlat3 = (x_202 + x_204);
  let x_207 : vec4<f32> = u_xlat3;
  let x_209 : vec4<f32> = u_xlat3;
  u_xlat5 = (vec3<f32>(x_207.x, x_207.y, x_207.z) / vec3<f32>(x_209.w, x_209.w, x_209.w));
  let x_213 : vec3<f32> = u_xlat5;
  let x_214 : vec2<f32> = vec2<f32>(x_213.x, x_213.y);
  let x_216 : f32 = u_xlat5.z;
  txVec0 = vec3<f32>(x_214.x, x_214.y, x_216);
  let x_228 : vec3<f32> = txVec0;
  let x_230 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_228.xy, x_228.z);
  u_xlat5.x = x_230;
  let x_234 : f32 = x_17.x_LightShadowData.x;
  u_xlat10 = (-(x_234) + 1.0f);
  let x_238 : f32 = u_xlat5.x;
  let x_239 : f32 = u_xlat10;
  let x_242 : f32 = x_17.x_LightShadowData.x;
  u_xlat5.x = ((x_238 * x_239) + x_242);
  let x_246 : f32 = u_xlat5.x;
  u_xlat10 = (-(x_246) + 1.0f);
  let x_250 : f32 = u_xlat0.x;
  let x_251 : f32 = u_xlat10;
  let x_254 : f32 = u_xlat5.x;
  u_xlat0.x = ((x_250 * x_251) + x_254);
  let x_257 : vec4<f32> = u_xlat2;
  let x_261 : vec4<f32> = x_17.unity_WorldToLight[1i];
  u_xlat5 = (vec3<f32>(x_257.y, x_257.y, x_257.y) * vec3<f32>(x_261.x, x_261.y, x_261.w));
  let x_265 : vec4<f32> = x_17.unity_WorldToLight[0i];
  let x_267 : vec4<f32> = u_xlat2;
  let x_270 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_265.x, x_265.y, x_265.w) * vec3<f32>(x_267.x, x_267.x, x_267.x)) + x_270);
  let x_273 : vec4<f32> = x_17.unity_WorldToLight[2i];
  let x_275 : vec4<f32> = u_xlat2;
  let x_278 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_273.x, x_273.y, x_273.w) * vec3<f32>(x_275.w, x_275.w, x_275.w)) + x_278);
  let x_280 : vec3<f32> = u_xlat5;
  let x_282 : vec4<f32> = x_17.unity_WorldToLight[3i];
  u_xlat5 = (x_280 + vec3<f32>(x_282.x, x_282.y, x_282.w));
  let x_285 : vec3<f32> = u_xlat5;
  let x_287 : vec3<f32> = u_xlat5;
  let x_289 : vec2<f32> = (vec2<f32>(x_285.x, x_285.y) / vec2<f32>(x_287.z, x_287.z));
  let x_290 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_289.x, x_289.y, x_290.z);
  let x_296 : f32 = u_xlat5.z;
  u_xlatb15 = (x_296 < 0.0f);
  let x_298 : bool = u_xlatb15;
  u_xlat15 = select(0.0f, 1.0f, x_298);
  let x_305 : vec3<f32> = u_xlat5;
  let x_308 : vec4<f32> = textureSampleBias(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_305.x, x_305.y), -8.0f);
  u_xlat5.x = x_308.w;
  let x_311 : f32 = u_xlat15;
  let x_313 : f32 = u_xlat5.x;
  u_xlat5.x = (x_311 * x_313);
  let x_316 : vec4<f32> = u_xlat2;
  let x_321 : vec4<f32> = x_17.x_LightPos;
  let x_323 : vec3<f32> = (-(vec3<f32>(x_316.x, x_316.y, x_316.w)) + vec3<f32>(x_321.x, x_321.y, x_321.z));
  let x_324 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_323.x, x_323.y, x_323.z, x_324.w);
  let x_326 : vec4<f32> = u_xlat2;
  let x_330 : vec3<f32> = x_17.x_WorldSpaceCameraPos;
  let x_332 : vec3<f32> = (vec3<f32>(x_326.x, x_326.y, x_326.w) + -(x_330));
  let x_333 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_332.x, x_332.y, x_332.z, x_333.w);
  let x_335 : vec4<f32> = u_xlat3;
  let x_337 : vec4<f32> = u_xlat3;
  u_xlat10 = dot(vec3<f32>(x_335.x, x_335.y, x_335.z), vec3<f32>(x_337.x, x_337.y, x_337.z));
  let x_340 : f32 = u_xlat10;
  let x_342 : f32 = x_17.x_LightPos.w;
  u_xlat15 = (x_340 * x_342);
  let x_344 : f32 = u_xlat10;
  u_xlat10 = inverseSqrt(x_344);
  let x_346 : f32 = u_xlat10;
  let x_348 : vec4<f32> = u_xlat3;
  let x_350 : vec3<f32> = (vec3<f32>(x_346, x_346, x_346) * vec3<f32>(x_348.x, x_348.y, x_348.z));
  let x_351 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_350.x, x_350.y, x_350.z, x_351.w);
  let x_358 : f32 = u_xlat15;
  let x_360 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_358, x_358));
  u_xlat10 = x_360.x;
  let x_362 : f32 = u_xlat10;
  let x_364 : f32 = u_xlat5.x;
  u_xlat5.x = (x_362 * x_364);
  let x_368 : f32 = u_xlat0.x;
  let x_370 : f32 = u_xlat5.x;
  u_xlat0.x = (x_368 * x_370);
  let x_373 : vec4<f32> = u_xlat0;
  let x_377 : vec4<f32> = x_17.x_LightColor;
  let x_379 : vec3<f32> = (vec3<f32>(x_373.x, x_373.x, x_373.x) * vec3<f32>(x_377.x, x_377.y, x_377.z));
  let x_380 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_379.x, x_379.y, x_379.z, x_380.w);
  let x_388 : vec3<f32> = u_xlat1;
  let x_390 : vec4<f32> = textureSample(x_CameraGBufferTexture2, sampler_CameraGBufferTexture2, vec2<f32>(x_388.x, x_388.y));
  u_xlat4 = vec3<f32>(x_390.x, x_390.y, x_390.z);
  let x_392 : vec3<f32> = u_xlat4;
  u_xlat4 = ((x_392 * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_399 : vec3<f32> = u_xlat4;
  let x_400 : vec3<f32> = u_xlat4;
  u_xlat15 = dot(x_399, x_400);
  let x_402 : f32 = u_xlat15;
  u_xlat15 = inverseSqrt(x_402);
  let x_404 : f32 = u_xlat15;
  let x_406 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_404, x_404, x_404) * x_406);
  let x_408 : vec3<f32> = u_xlat4;
  let x_409 : vec4<f32> = u_xlat3;
  u_xlat15 = dot(x_408, vec3<f32>(x_409.x, x_409.y, x_409.z));
  let x_412 : f32 = u_xlat15;
  u_xlat15 = clamp(x_412, 0.0f, 1.0f);
  let x_414 : f32 = u_xlat15;
  let x_416 : vec4<f32> = u_xlat0;
  let x_418 : vec3<f32> = (vec3<f32>(x_414, x_414, x_414) * vec3<f32>(x_416.x, x_416.y, x_416.z));
  let x_419 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_418.x, x_418.y, x_418.z, x_419.w);
  let x_421 : vec4<f32> = u_xlat2;
  let x_423 : vec4<f32> = u_xlat2;
  u_xlat15 = dot(vec3<f32>(x_421.x, x_421.y, x_421.z), vec3<f32>(x_423.x, x_423.y, x_423.z));
  let x_426 : f32 = u_xlat15;
  u_xlat15 = inverseSqrt(x_426);
  let x_428 : f32 = u_xlat15;
  let x_430 : vec4<f32> = u_xlat2;
  let x_432 : vec3<f32> = (vec3<f32>(x_428, x_428, x_428) * vec3<f32>(x_430.x, x_430.y, x_430.z));
  let x_433 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_432.x, x_432.y, x_432.z, x_433.w);
  let x_435 : vec4<f32> = u_xlat2;
  let x_438 : vec3<f32> = u_xlat4;
  u_xlat15 = dot(-(vec3<f32>(x_435.x, x_435.y, x_435.z)), x_438);
  let x_440 : f32 = u_xlat15;
  let x_441 : f32 = u_xlat15;
  u_xlat15 = (x_440 + x_441);
  let x_443 : vec3<f32> = u_xlat4;
  let x_444 : f32 = u_xlat15;
  let x_448 : vec4<f32> = u_xlat2;
  let x_451 : vec3<f32> = ((x_443 * -(vec3<f32>(x_444, x_444, x_444))) + -(vec3<f32>(x_448.x, x_448.y, x_448.z)));
  let x_452 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_451.x, x_451.y, x_451.z, x_452.w);
  let x_454 : vec4<f32> = u_xlat2;
  let x_456 : vec4<f32> = u_xlat3;
  u_xlat15 = dot(vec3<f32>(x_454.x, x_454.y, x_454.z), vec3<f32>(x_456.x, x_456.y, x_456.z));
  let x_459 : f32 = u_xlat15;
  let x_460 : f32 = u_xlat15;
  u_xlat15 = (x_459 * x_460);
  let x_462 : f32 = u_xlat15;
  let x_463 : f32 = u_xlat15;
  u_xlat2.x = (x_462 * x_463);
  let x_471 : vec3<f32> = u_xlat1;
  let x_473 : vec4<f32> = textureSample(x_CameraGBufferTexture1, sampler_CameraGBufferTexture1, vec2<f32>(x_471.x, x_471.y));
  u_xlat3 = x_473;
  let x_479 : vec3<f32> = u_xlat1;
  let x_481 : vec4<f32> = textureSample(x_CameraGBufferTexture0, sampler_CameraGBufferTexture0, vec2<f32>(x_479.x, x_479.y));
  u_xlat1 = vec3<f32>(x_481.x, x_481.y, x_481.z);
  let x_484 : f32 = u_xlat3.w;
  u_xlat2.y = (-(x_484) + 1.0f);
  let x_493 : vec4<f32> = u_xlat2;
  let x_495 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_493.x, x_493.y));
  u_xlat15 = x_495.x;
  let x_497 : f32 = u_xlat15;
  u_xlat15 = (x_497 * 16.0f);
  let x_500 : f32 = u_xlat15;
  let x_502 : vec4<f32> = u_xlat3;
  let x_505 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_500, x_500, x_500) * vec3<f32>(x_502.x, x_502.y, x_502.z)) + x_505);
  let x_507 : vec4<f32> = u_xlat0;
  let x_509 : vec3<f32> = u_xlat1;
  let x_510 : vec3<f32> = (vec3<f32>(x_507.x, x_507.y, x_507.z) * x_509);
  let x_511 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_510.x, x_510.y, x_510.z, x_511.w);
  u_xlat0.w = 1.0f;
  let x_516 : vec4<f32> = u_xlat0;
  SV_Target0 = exp2(-(x_516));
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

