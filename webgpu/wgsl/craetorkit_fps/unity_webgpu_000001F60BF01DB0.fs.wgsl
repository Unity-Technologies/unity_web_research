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

@group(0) @binding(6) var sampler_CameraDepthTexture : sampler;

@group(0) @binding(5) var x_ShadowMapTexture : texture_depth_cube;

@group(0) @binding(8) var sampler_ShadowMapTexture : sampler_comparison;

@group(0) @binding(1) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(7) var sampler_LightTextureB0 : sampler;

@group(0) @binding(4) var x_CameraGBufferTexture2 : texture_2d<f32>;

@group(0) @binding(11) var sampler_CameraGBufferTexture2 : sampler;

@group(0) @binding(3) var x_CameraGBufferTexture1 : texture_2d<f32>;

@group(0) @binding(10) var sampler_CameraGBufferTexture1 : sampler;

@group(0) @binding(2) var x_CameraGBufferTexture0 : texture_2d<f32>;

@group(0) @binding(9) var sampler_CameraGBufferTexture0 : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat18 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat13 : f32;
  var txVec0 : vec4<f32>;
  var u_xlat19 : f32;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat12 : f32;
  var u_xlat20 : f32;
  var u_xlat21 : f32;
  var u_xlatb18 : bool;
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
  let x_40 : vec4<f32> = vs_TEXCOORD0;
  let x_42 : vec4<f32> = vs_TEXCOORD0;
  let x_44 : vec2<f32> = (vec2<f32>(x_40.x, x_40.y) / vec2<f32>(x_42.w, x_42.w));
  let x_45 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_44.x, x_44.y, x_45.z, x_45.w);
  let x_58 : vec4<f32> = u_xlat1;
  let x_60 : vec4<f32> = textureSample(x_CameraDepthTexture, sampler_CameraDepthTexture, vec2<f32>(x_58.x, x_58.y));
  u_xlat18 = x_60.x;
  let x_64 : f32 = x_14.x_ZBufferParams.x;
  let x_65 : f32 = u_xlat18;
  let x_69 : f32 = x_14.x_ZBufferParams.y;
  u_xlat18 = ((x_64 * x_65) + x_69);
  let x_72 : f32 = u_xlat18;
  u_xlat18 = (1.0f / x_72);
  let x_75 : f32 = u_xlat18;
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
  let x_139 : f32 = u_xlat18;
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
  u_xlat6 = (vec3<f32>(x_171.x, x_171.y, x_171.w) + -(vec3<f32>(x_175.x, x_175.y, x_175.z)));
  let x_179 : vec4<f32> = u_xlat2;
  let x_183 : vec3<f32> = x_14.x_WorldSpaceCameraPos;
  let x_185 : vec3<f32> = (vec3<f32>(x_179.x, x_179.y, x_179.w) + -(x_183));
  let x_186 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_185.x, x_185.y, x_185.z, x_186.w);
  let x_190 : f32 = u_xlat6.y;
  let x_193 : f32 = u_xlat6.x;
  u_xlat13 = max(abs(x_190), abs(x_193));
  let x_197 : f32 = u_xlat6.z;
  let x_199 : f32 = u_xlat13;
  u_xlat13 = max(abs(x_197), x_199);
  let x_201 : f32 = u_xlat13;
  let x_204 : f32 = x_14.x_LightProjectionParams.z;
  u_xlat13 = (x_201 + -(x_204));
  let x_207 : f32 = u_xlat13;
  u_xlat13 = max(x_207, 0.00001f);
  let x_210 : f32 = u_xlat13;
  let x_212 : f32 = x_14.x_LightProjectionParams.w;
  u_xlat13 = (x_210 * x_212);
  let x_215 : f32 = x_14.x_LightProjectionParams.y;
  let x_216 : f32 = u_xlat13;
  u_xlat13 = (x_215 / x_216);
  let x_218 : f32 = u_xlat13;
  let x_220 : f32 = x_14.x_LightProjectionParams.x;
  u_xlat13 = (x_218 + -(x_220));
  let x_223 : f32 = u_xlat13;
  u_xlat13 = (-(x_223) + 1.0f);
  let x_227 : vec3<f32> = u_xlat6;
  let x_228 : f32 = u_xlat13;
  txVec0 = vec4<f32>(x_227.x, x_227.y, x_227.z, x_228);
  let x_241 : vec4<f32> = txVec0;
  let x_243 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_241.xyz, x_241.w);
  u_xlat13 = x_243;
  let x_246 : f32 = x_14.x_LightShadowData.x;
  u_xlat19 = (-(x_246) + 1.0f);
  let x_249 : f32 = u_xlat13;
  let x_250 : f32 = u_xlat19;
  let x_253 : f32 = x_14.x_LightShadowData.x;
  u_xlat13 = ((x_249 * x_250) + x_253);
  let x_255 : f32 = u_xlat13;
  u_xlat19 = (-(x_255) + 1.0f);
  let x_259 : f32 = u_xlat0.x;
  let x_260 : f32 = u_xlat19;
  let x_262 : f32 = u_xlat13;
  u_xlat0.x = ((x_259 * x_260) + x_262);
  let x_265 : vec3<f32> = u_xlat6;
  let x_266 : vec3<f32> = u_xlat6;
  u_xlat13 = dot(x_265, x_266);
  let x_268 : f32 = u_xlat13;
  let x_270 : f32 = x_14.x_LightPos.w;
  u_xlat19 = (x_268 * x_270);
  let x_272 : f32 = u_xlat13;
  u_xlat13 = inverseSqrt(x_272);
  let x_279 : f32 = u_xlat19;
  let x_281 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_279, x_279));
  u_xlat19 = x_281.x;
  let x_284 : f32 = u_xlat0.x;
  let x_285 : f32 = u_xlat19;
  u_xlat0.x = (x_284 * x_285);
  let x_288 : vec3<f32> = u_xlat0;
  let x_292 : vec4<f32> = x_14.x_LightColor;
  u_xlat3 = (vec3<f32>(x_288.x, x_288.x, x_288.x) * vec3<f32>(x_292.x, x_292.y, x_292.z));
  let x_295 : vec4<f32> = u_xlat2;
  let x_297 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(x_295.x, x_295.y, x_295.z), vec3<f32>(x_297.x, x_297.y, x_297.z));
  let x_302 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_302);
  let x_305 : vec3<f32> = u_xlat0;
  let x_307 : vec4<f32> = u_xlat2;
  let x_309 : vec3<f32> = (vec3<f32>(x_305.x, x_305.x, x_305.x) * vec3<f32>(x_307.x, x_307.y, x_307.z));
  let x_310 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_309.x, x_309.y, x_309.z, x_310.w);
  let x_313 : vec3<f32> = u_xlat6;
  let x_315 : f32 = u_xlat13;
  let x_318 : vec4<f32> = u_xlat2;
  let x_321 : vec3<f32> = ((-(x_313) * vec3<f32>(x_315, x_315, x_315)) + -(vec3<f32>(x_318.x, x_318.y, x_318.z)));
  let x_322 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_321.x, x_321.y, x_321.z, x_322.w);
  let x_324 : vec3<f32> = u_xlat6;
  let x_325 : f32 = u_xlat13;
  u_xlat0 = (x_324 * vec3<f32>(x_325, x_325, x_325));
  let x_328 : vec4<f32> = u_xlat4;
  let x_330 : vec4<f32> = u_xlat4;
  u_xlat18 = dot(vec3<f32>(x_328.x, x_328.y, x_328.z), vec3<f32>(x_330.x, x_330.y, x_330.z));
  let x_333 : f32 = u_xlat18;
  u_xlat18 = max(x_333, 0.001f);
  let x_336 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_336);
  let x_338 : f32 = u_xlat18;
  let x_340 : vec4<f32> = u_xlat4;
  let x_342 : vec3<f32> = (vec3<f32>(x_338, x_338, x_338) * vec3<f32>(x_340.x, x_340.y, x_340.z));
  let x_343 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_342.x, x_342.y, x_342.z, x_343.w);
  let x_351 : vec4<f32> = u_xlat1;
  let x_353 : vec4<f32> = textureSample(x_CameraGBufferTexture2, sampler_CameraGBufferTexture2, vec2<f32>(x_351.x, x_351.y));
  u_xlat5 = vec3<f32>(x_353.x, x_353.y, x_353.z);
  let x_355 : vec3<f32> = u_xlat5;
  u_xlat5 = ((x_355 * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_362 : vec3<f32> = u_xlat5;
  let x_363 : vec3<f32> = u_xlat5;
  u_xlat18 = dot(x_362, x_363);
  let x_365 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_365);
  let x_367 : f32 = u_xlat18;
  let x_369 : vec3<f32> = u_xlat5;
  u_xlat5 = (vec3<f32>(x_367, x_367, x_367) * x_369);
  let x_371 : vec3<f32> = u_xlat5;
  let x_372 : vec4<f32> = u_xlat4;
  u_xlat18 = dot(x_371, vec3<f32>(x_372.x, x_372.y, x_372.z));
  let x_375 : f32 = u_xlat18;
  u_xlat18 = clamp(x_375, 0.0f, 1.0f);
  let x_377 : vec3<f32> = u_xlat0;
  let x_379 : vec4<f32> = u_xlat4;
  u_xlat13 = dot(-(x_377), vec3<f32>(x_379.x, x_379.y, x_379.z));
  let x_382 : f32 = u_xlat13;
  u_xlat13 = clamp(x_382, 0.0f, 1.0f);
  let x_384 : vec3<f32> = u_xlat5;
  let x_385 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_384, -(x_385));
  let x_390 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_390, 0.0f, 1.0f);
  let x_393 : vec3<f32> = u_xlat5;
  let x_394 : vec4<f32> = u_xlat2;
  u_xlat6.x = dot(x_393, -(vec3<f32>(x_394.x, x_394.y, x_394.z)));
  let x_404 : vec4<f32> = u_xlat1;
  let x_406 : vec4<f32> = textureSample(x_CameraGBufferTexture1, sampler_CameraGBufferTexture1, vec2<f32>(x_404.x, x_404.y));
  u_xlat2 = x_406;
  let x_412 : vec4<f32> = u_xlat1;
  let x_414 : vec4<f32> = textureSample(x_CameraGBufferTexture0, sampler_CameraGBufferTexture0, vec2<f32>(x_412.x, x_412.y));
  let x_415 : vec3<f32> = vec3<f32>(x_414.x, x_414.y, x_414.z);
  let x_416 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_415.x, x_415.y, x_416.z, x_415.z);
  let x_418 : vec4<f32> = u_xlat2;
  u_xlat4 = (-(vec4<f32>(x_418.w, x_418.x, x_418.y, x_418.z)) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_425 : f32 = u_xlat4.x;
  let x_427 : f32 = u_xlat4.x;
  u_xlat12 = (x_425 * x_427);
  let x_429 : f32 = u_xlat12;
  u_xlat12 = max(x_429, 0.002f);
  let x_433 : f32 = u_xlat12;
  let x_434 : f32 = u_xlat12;
  u_xlat20 = (x_433 * x_434);
  let x_437 : f32 = u_xlat18;
  let x_438 : f32 = u_xlat20;
  let x_440 : f32 = u_xlat18;
  u_xlat21 = ((x_437 * x_438) + -(x_440));
  let x_443 : f32 = u_xlat21;
  let x_444 : f32 = u_xlat18;
  u_xlat18 = ((x_443 * x_444) + 1.0f);
  let x_447 : f32 = u_xlat18;
  let x_448 : f32 = u_xlat18;
  u_xlat18 = ((x_447 * x_448) + 0.0000001f);
  let x_452 : f32 = u_xlat20;
  u_xlat20 = (x_452 * 0.318309873f);
  let x_455 : f32 = u_xlat20;
  let x_456 : f32 = u_xlat18;
  u_xlat18 = (x_455 / x_456);
  let x_458 : f32 = u_xlat12;
  u_xlat20 = (-(x_458) + 1.0f);
  let x_462 : f32 = u_xlat6.x;
  let x_464 : f32 = u_xlat20;
  let x_466 : f32 = u_xlat12;
  u_xlat21 = ((abs(x_462) * x_464) + x_466);
  let x_469 : f32 = u_xlat0.x;
  let x_470 : f32 = u_xlat20;
  let x_472 : f32 = u_xlat12;
  u_xlat12 = ((x_469 * x_470) + x_472);
  let x_474 : f32 = u_xlat12;
  let x_476 : f32 = u_xlat6.x;
  u_xlat12 = (x_474 * abs(x_476));
  let x_480 : f32 = u_xlat6.x;
  u_xlat6.x = (-(abs(x_480)) + 1.0f);
  let x_486 : f32 = u_xlat0.x;
  let x_487 : f32 = u_xlat21;
  let x_489 : f32 = u_xlat12;
  u_xlat12 = ((x_486 * x_487) + x_489);
  let x_491 : f32 = u_xlat12;
  u_xlat12 = (x_491 + 0.00001f);
  let x_494 : f32 = u_xlat12;
  u_xlat12 = (0.5f / x_494);
  let x_496 : f32 = u_xlat18;
  let x_497 : f32 = u_xlat12;
  u_xlat12 = (x_496 * x_497);
  let x_500 : f32 = u_xlat0.x;
  let x_501 : f32 = u_xlat12;
  u_xlat12 = (x_500 * x_501);
  let x_503 : f32 = u_xlat12;
  u_xlat12 = (x_503 * 3.141592741f);
  let x_506 : f32 = u_xlat12;
  u_xlat12 = max(x_506, 0.0f);
  let x_508 : vec4<f32> = u_xlat2;
  let x_510 : vec4<f32> = u_xlat2;
  u_xlat18 = dot(vec3<f32>(x_508.x, x_508.y, x_508.z), vec3<f32>(x_510.x, x_510.y, x_510.z));
  let x_516 : f32 = u_xlat18;
  u_xlatb18 = !((x_516 == 0.0f));
  let x_518 : bool = u_xlatb18;
  u_xlat18 = select(0.0f, 1.0f, x_518);
  let x_520 : f32 = u_xlat18;
  let x_521 : f32 = u_xlat12;
  u_xlat12 = (x_520 * x_521);
  let x_523 : vec3<f32> = u_xlat3;
  let x_524 : f32 = u_xlat12;
  u_xlat5 = (x_523 * vec3<f32>(x_524, x_524, x_524));
  let x_527 : f32 = u_xlat13;
  u_xlat12 = (-(x_527) + 1.0f);
  let x_530 : f32 = u_xlat13;
  let x_531 : f32 = u_xlat13;
  u_xlat18 = (x_530 * x_531);
  let x_533 : f32 = u_xlat18;
  let x_535 : vec4<f32> = u_xlat4;
  u_xlat18 = dot(vec2<f32>(x_533, x_533), vec2<f32>(x_535.x, x_535.x));
  let x_538 : f32 = u_xlat18;
  u_xlat18 = (x_538 + -0.5f);
  let x_541 : f32 = u_xlat12;
  let x_542 : f32 = u_xlat12;
  u_xlat13 = (x_541 * x_542);
  let x_544 : f32 = u_xlat13;
  let x_545 : f32 = u_xlat13;
  u_xlat13 = (x_544 * x_545);
  let x_547 : f32 = u_xlat12;
  let x_548 : f32 = u_xlat13;
  u_xlat12 = (x_547 * x_548);
  let x_550 : vec4<f32> = u_xlat4;
  let x_552 : f32 = u_xlat12;
  let x_555 : vec4<f32> = u_xlat2;
  let x_557 : vec3<f32> = ((vec3<f32>(x_550.y, x_550.z, x_550.w) * vec3<f32>(x_552, x_552, x_552)) + vec3<f32>(x_555.x, x_555.y, x_555.z));
  let x_558 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_557.x, x_557.y, x_557.z, x_558.w);
  let x_560 : vec4<f32> = u_xlat2;
  let x_562 : vec3<f32> = u_xlat5;
  let x_563 : vec3<f32> = (vec3<f32>(x_560.x, x_560.y, x_560.z) * x_562);
  let x_564 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_563.x, x_563.y, x_563.z, x_564.w);
  let x_567 : f32 = u_xlat6.x;
  let x_569 : f32 = u_xlat6.x;
  u_xlat12 = (x_567 * x_569);
  let x_571 : f32 = u_xlat12;
  let x_572 : f32 = u_xlat12;
  u_xlat12 = (x_571 * x_572);
  let x_575 : f32 = u_xlat6.x;
  let x_576 : f32 = u_xlat12;
  u_xlat6.x = (x_575 * x_576);
  let x_579 : f32 = u_xlat18;
  let x_581 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_579 * x_581) + 1.0f);
  let x_586 : f32 = u_xlat0.x;
  u_xlat12 = (-(x_586) + 1.0f);
  let x_589 : f32 = u_xlat12;
  let x_590 : f32 = u_xlat12;
  u_xlat13 = (x_589 * x_590);
  let x_592 : f32 = u_xlat13;
  let x_593 : f32 = u_xlat13;
  u_xlat13 = (x_592 * x_593);
  let x_595 : f32 = u_xlat12;
  let x_596 : f32 = u_xlat13;
  u_xlat12 = (x_595 * x_596);
  let x_598 : f32 = u_xlat18;
  let x_599 : f32 = u_xlat12;
  u_xlat12 = ((x_598 * x_599) + 1.0f);
  let x_603 : f32 = u_xlat6.x;
  let x_604 : f32 = u_xlat12;
  u_xlat6.x = (x_603 * x_604);
  let x_608 : f32 = u_xlat0.x;
  let x_610 : f32 = u_xlat6.x;
  u_xlat0.x = (x_608 * x_610);
  let x_613 : vec3<f32> = u_xlat0;
  let x_615 : vec3<f32> = u_xlat3;
  u_xlat0 = (vec3<f32>(x_613.x, x_613.x, x_613.x) * x_615);
  let x_619 : vec4<f32> = u_xlat1;
  let x_621 : vec3<f32> = u_xlat0;
  let x_623 : vec4<f32> = u_xlat2;
  let x_625 : vec3<f32> = ((vec3<f32>(x_619.x, x_619.y, x_619.w) * x_621) + vec3<f32>(x_623.x, x_623.y, x_623.z));
  let x_626 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_625.x, x_625.y, x_625.z, x_626.w);
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

