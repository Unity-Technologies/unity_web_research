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
  unity_WorldToLight : mat4x4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_14 : PGlobals;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat18 : f32;

@group(0) @binding(1) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_CameraDepthTexture : sampler;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat13 : f32;

@group(0) @binding(7) var x_ShadowMapTexture : texture_depth_cube;

@group(0) @binding(11) var sampler_ShadowMapTexture : sampler_comparison;

var<private> u_xlat19 : f32;

@group(0) @binding(2) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(9) var sampler_LightTextureB0 : sampler;

@group(0) @binding(3) var x_LightTexture0 : texture_cube<f32>;

@group(0) @binding(10) var sampler_LightTexture0 : sampler;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

@group(0) @binding(6) var x_CameraGBufferTexture2 : texture_2d<f32>;

@group(0) @binding(14) var sampler_CameraGBufferTexture2 : sampler;

@group(0) @binding(5) var x_CameraGBufferTexture1 : texture_2d<f32>;

@group(0) @binding(13) var sampler_CameraGBufferTexture1 : sampler;

@group(0) @binding(4) var x_CameraGBufferTexture0 : texture_2d<f32>;

@group(0) @binding(12) var sampler_CameraGBufferTexture0 : sampler;

var<private> u_xlat12 : f32;

var<private> u_xlat20 : f32;

var<private> u_xlat21 : f32;

var<private> u_xlatb18 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var txVec0 : vec4<f32>;
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
  let x_181 : f32 = u_xlat6.y;
  let x_184 : f32 = u_xlat6.x;
  u_xlat13 = max(abs(x_181), abs(x_184));
  let x_188 : f32 = u_xlat6.z;
  let x_190 : f32 = u_xlat13;
  u_xlat13 = max(abs(x_188), x_190);
  let x_192 : f32 = u_xlat13;
  let x_195 : f32 = x_14.x_LightProjectionParams.z;
  u_xlat13 = (x_192 + -(x_195));
  let x_198 : f32 = u_xlat13;
  u_xlat13 = max(x_198, 0.00001f);
  let x_201 : f32 = u_xlat13;
  let x_203 : f32 = x_14.x_LightProjectionParams.w;
  u_xlat13 = (x_201 * x_203);
  let x_206 : f32 = x_14.x_LightProjectionParams.y;
  let x_207 : f32 = u_xlat13;
  u_xlat13 = (x_206 / x_207);
  let x_209 : f32 = u_xlat13;
  let x_211 : f32 = x_14.x_LightProjectionParams.x;
  u_xlat13 = (x_209 + -(x_211));
  let x_214 : f32 = u_xlat13;
  u_xlat13 = (-(x_214) + 1.0f);
  let x_219 : vec3<f32> = u_xlat6;
  let x_220 : f32 = u_xlat13;
  txVec0 = vec4<f32>(x_219.x, x_219.y, x_219.z, x_220);
  let x_233 : vec4<f32> = txVec0;
  let x_235 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_233.xyz, x_233.w);
  u_xlat13 = x_235;
  let x_238 : f32 = x_14.x_LightShadowData.x;
  u_xlat19 = (-(x_238) + 1.0f);
  let x_241 : f32 = u_xlat13;
  let x_242 : f32 = u_xlat19;
  let x_245 : f32 = x_14.x_LightShadowData.x;
  u_xlat13 = ((x_241 * x_242) + x_245);
  let x_247 : f32 = u_xlat13;
  u_xlat19 = (-(x_247) + 1.0f);
  let x_251 : f32 = u_xlat0.x;
  let x_252 : f32 = u_xlat19;
  let x_254 : f32 = u_xlat13;
  u_xlat0.x = ((x_251 * x_252) + x_254);
  let x_257 : vec3<f32> = u_xlat6;
  let x_258 : vec3<f32> = u_xlat6;
  u_xlat13 = dot(x_257, x_258);
  let x_260 : f32 = u_xlat13;
  let x_262 : f32 = x_14.x_LightPos.w;
  u_xlat19 = (x_260 * x_262);
  let x_264 : f32 = u_xlat13;
  u_xlat13 = inverseSqrt(x_264);
  let x_271 : f32 = u_xlat19;
  let x_273 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_271, x_271));
  u_xlat19 = x_273.x;
  let x_276 : f32 = u_xlat0.x;
  let x_277 : f32 = u_xlat19;
  u_xlat0.x = (x_276 * x_277);
  let x_280 : vec4<f32> = u_xlat2;
  let x_284 : vec4<f32> = x_14.unity_WorldToLight[1i];
  u_xlat3 = (vec3<f32>(x_280.y, x_280.y, x_280.y) * vec3<f32>(x_284.x, x_284.y, x_284.z));
  let x_288 : vec4<f32> = x_14.unity_WorldToLight[0i];
  let x_290 : vec4<f32> = u_xlat2;
  let x_293 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_288.x, x_288.y, x_288.z) * vec3<f32>(x_290.x, x_290.x, x_290.x)) + x_293);
  let x_296 : vec4<f32> = x_14.unity_WorldToLight[2i];
  let x_298 : vec4<f32> = u_xlat2;
  let x_301 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_296.x, x_296.y, x_296.z) * vec3<f32>(x_298.w, x_298.w, x_298.w)) + x_301);
  let x_303 : vec4<f32> = u_xlat2;
  let x_307 : vec3<f32> = x_14.x_WorldSpaceCameraPos;
  let x_309 : vec3<f32> = (vec3<f32>(x_303.x, x_303.y, x_303.w) + -(x_307));
  let x_310 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_309.x, x_309.y, x_309.z, x_310.w);
  let x_312 : vec3<f32> = u_xlat3;
  let x_314 : vec4<f32> = x_14.unity_WorldToLight[3i];
  u_xlat3 = (x_312 + vec3<f32>(x_314.x, x_314.y, x_314.z));
  let x_325 : vec3<f32> = u_xlat3;
  let x_327 : vec4<f32> = textureSampleBias(x_LightTexture0, sampler_LightTexture0, x_325, -8.0f);
  u_xlat19 = x_327.w;
  let x_330 : f32 = u_xlat0.x;
  let x_331 : f32 = u_xlat19;
  u_xlat0.x = (x_330 * x_331);
  let x_334 : vec3<f32> = u_xlat0;
  let x_338 : vec4<f32> = x_14.x_LightColor;
  u_xlat3 = (vec3<f32>(x_334.x, x_334.x, x_334.x) * vec3<f32>(x_338.x, x_338.y, x_338.z));
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
  let x_359 : vec3<f32> = u_xlat6;
  let x_361 : f32 = u_xlat13;
  let x_364 : vec4<f32> = u_xlat2;
  let x_367 : vec3<f32> = ((-(x_359) * vec3<f32>(x_361, x_361, x_361)) + -(vec3<f32>(x_364.x, x_364.y, x_364.z)));
  let x_368 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_367.x, x_367.y, x_367.z, x_368.w);
  let x_370 : vec3<f32> = u_xlat6;
  let x_371 : f32 = u_xlat13;
  u_xlat0 = (x_370 * vec3<f32>(x_371, x_371, x_371));
  let x_374 : vec4<f32> = u_xlat4;
  let x_376 : vec4<f32> = u_xlat4;
  u_xlat18 = dot(vec3<f32>(x_374.x, x_374.y, x_374.z), vec3<f32>(x_376.x, x_376.y, x_376.z));
  let x_379 : f32 = u_xlat18;
  u_xlat18 = max(x_379, 0.001f);
  let x_382 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_382);
  let x_384 : f32 = u_xlat18;
  let x_386 : vec4<f32> = u_xlat4;
  let x_388 : vec3<f32> = (vec3<f32>(x_384, x_384, x_384) * vec3<f32>(x_386.x, x_386.y, x_386.z));
  let x_389 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_388.x, x_388.y, x_388.z, x_389.w);
  let x_397 : vec4<f32> = u_xlat1;
  let x_399 : vec4<f32> = textureSample(x_CameraGBufferTexture2, sampler_CameraGBufferTexture2, vec2<f32>(x_397.x, x_397.y));
  u_xlat5 = vec3<f32>(x_399.x, x_399.y, x_399.z);
  let x_401 : vec3<f32> = u_xlat5;
  u_xlat5 = ((x_401 * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_408 : vec3<f32> = u_xlat5;
  let x_409 : vec3<f32> = u_xlat5;
  u_xlat18 = dot(x_408, x_409);
  let x_411 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_411);
  let x_413 : f32 = u_xlat18;
  let x_415 : vec3<f32> = u_xlat5;
  u_xlat5 = (vec3<f32>(x_413, x_413, x_413) * x_415);
  let x_417 : vec3<f32> = u_xlat5;
  let x_418 : vec4<f32> = u_xlat4;
  u_xlat18 = dot(x_417, vec3<f32>(x_418.x, x_418.y, x_418.z));
  let x_421 : f32 = u_xlat18;
  u_xlat18 = clamp(x_421, 0.0f, 1.0f);
  let x_423 : vec3<f32> = u_xlat0;
  let x_425 : vec4<f32> = u_xlat4;
  u_xlat13 = dot(-(x_423), vec3<f32>(x_425.x, x_425.y, x_425.z));
  let x_428 : f32 = u_xlat13;
  u_xlat13 = clamp(x_428, 0.0f, 1.0f);
  let x_430 : vec3<f32> = u_xlat5;
  let x_431 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_430, -(x_431));
  let x_436 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_436, 0.0f, 1.0f);
  let x_439 : vec3<f32> = u_xlat5;
  let x_440 : vec4<f32> = u_xlat2;
  u_xlat6.x = dot(x_439, -(vec3<f32>(x_440.x, x_440.y, x_440.z)));
  let x_450 : vec4<f32> = u_xlat1;
  let x_452 : vec4<f32> = textureSample(x_CameraGBufferTexture1, sampler_CameraGBufferTexture1, vec2<f32>(x_450.x, x_450.y));
  u_xlat2 = x_452;
  let x_458 : vec4<f32> = u_xlat1;
  let x_460 : vec4<f32> = textureSample(x_CameraGBufferTexture0, sampler_CameraGBufferTexture0, vec2<f32>(x_458.x, x_458.y));
  let x_461 : vec3<f32> = vec3<f32>(x_460.x, x_460.y, x_460.z);
  let x_462 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_461.x, x_461.y, x_462.z, x_461.z);
  let x_464 : vec4<f32> = u_xlat2;
  u_xlat4 = (-(vec4<f32>(x_464.w, x_464.x, x_464.y, x_464.z)) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_471 : f32 = u_xlat4.x;
  let x_473 : f32 = u_xlat4.x;
  u_xlat12 = (x_471 * x_473);
  let x_475 : f32 = u_xlat12;
  u_xlat12 = max(x_475, 0.002f);
  let x_479 : f32 = u_xlat12;
  let x_480 : f32 = u_xlat12;
  u_xlat20 = (x_479 * x_480);
  let x_483 : f32 = u_xlat18;
  let x_484 : f32 = u_xlat20;
  let x_486 : f32 = u_xlat18;
  u_xlat21 = ((x_483 * x_484) + -(x_486));
  let x_489 : f32 = u_xlat21;
  let x_490 : f32 = u_xlat18;
  u_xlat18 = ((x_489 * x_490) + 1.0f);
  let x_493 : f32 = u_xlat18;
  let x_494 : f32 = u_xlat18;
  u_xlat18 = ((x_493 * x_494) + 0.0000001f);
  let x_498 : f32 = u_xlat20;
  u_xlat20 = (x_498 * 0.318309873f);
  let x_501 : f32 = u_xlat20;
  let x_502 : f32 = u_xlat18;
  u_xlat18 = (x_501 / x_502);
  let x_504 : f32 = u_xlat12;
  u_xlat20 = (-(x_504) + 1.0f);
  let x_508 : f32 = u_xlat6.x;
  let x_510 : f32 = u_xlat20;
  let x_512 : f32 = u_xlat12;
  u_xlat21 = ((abs(x_508) * x_510) + x_512);
  let x_515 : f32 = u_xlat0.x;
  let x_516 : f32 = u_xlat20;
  let x_518 : f32 = u_xlat12;
  u_xlat12 = ((x_515 * x_516) + x_518);
  let x_520 : f32 = u_xlat12;
  let x_522 : f32 = u_xlat6.x;
  u_xlat12 = (x_520 * abs(x_522));
  let x_526 : f32 = u_xlat6.x;
  u_xlat6.x = (-(abs(x_526)) + 1.0f);
  let x_532 : f32 = u_xlat0.x;
  let x_533 : f32 = u_xlat21;
  let x_535 : f32 = u_xlat12;
  u_xlat12 = ((x_532 * x_533) + x_535);
  let x_537 : f32 = u_xlat12;
  u_xlat12 = (x_537 + 0.00001f);
  let x_540 : f32 = u_xlat12;
  u_xlat12 = (0.5f / x_540);
  let x_542 : f32 = u_xlat18;
  let x_543 : f32 = u_xlat12;
  u_xlat12 = (x_542 * x_543);
  let x_546 : f32 = u_xlat0.x;
  let x_547 : f32 = u_xlat12;
  u_xlat12 = (x_546 * x_547);
  let x_549 : f32 = u_xlat12;
  u_xlat12 = (x_549 * 3.141592741f);
  let x_552 : f32 = u_xlat12;
  u_xlat12 = max(x_552, 0.0f);
  let x_554 : vec4<f32> = u_xlat2;
  let x_556 : vec4<f32> = u_xlat2;
  u_xlat18 = dot(vec3<f32>(x_554.x, x_554.y, x_554.z), vec3<f32>(x_556.x, x_556.y, x_556.z));
  let x_562 : f32 = u_xlat18;
  u_xlatb18 = !((x_562 == 0.0f));
  let x_564 : bool = u_xlatb18;
  u_xlat18 = select(0.0f, 1.0f, x_564);
  let x_566 : f32 = u_xlat18;
  let x_567 : f32 = u_xlat12;
  u_xlat12 = (x_566 * x_567);
  let x_569 : vec3<f32> = u_xlat3;
  let x_570 : f32 = u_xlat12;
  u_xlat5 = (x_569 * vec3<f32>(x_570, x_570, x_570));
  let x_573 : f32 = u_xlat13;
  u_xlat12 = (-(x_573) + 1.0f);
  let x_576 : f32 = u_xlat13;
  let x_577 : f32 = u_xlat13;
  u_xlat18 = (x_576 * x_577);
  let x_579 : f32 = u_xlat18;
  let x_581 : vec4<f32> = u_xlat4;
  u_xlat18 = dot(vec2<f32>(x_579, x_579), vec2<f32>(x_581.x, x_581.x));
  let x_584 : f32 = u_xlat18;
  u_xlat18 = (x_584 + -0.5f);
  let x_587 : f32 = u_xlat12;
  let x_588 : f32 = u_xlat12;
  u_xlat13 = (x_587 * x_588);
  let x_590 : f32 = u_xlat13;
  let x_591 : f32 = u_xlat13;
  u_xlat13 = (x_590 * x_591);
  let x_593 : f32 = u_xlat12;
  let x_594 : f32 = u_xlat13;
  u_xlat12 = (x_593 * x_594);
  let x_596 : vec4<f32> = u_xlat4;
  let x_598 : f32 = u_xlat12;
  let x_601 : vec4<f32> = u_xlat2;
  let x_603 : vec3<f32> = ((vec3<f32>(x_596.y, x_596.z, x_596.w) * vec3<f32>(x_598, x_598, x_598)) + vec3<f32>(x_601.x, x_601.y, x_601.z));
  let x_604 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_603.x, x_603.y, x_603.z, x_604.w);
  let x_606 : vec4<f32> = u_xlat2;
  let x_608 : vec3<f32> = u_xlat5;
  let x_609 : vec3<f32> = (vec3<f32>(x_606.x, x_606.y, x_606.z) * x_608);
  let x_610 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_609.x, x_609.y, x_609.z, x_610.w);
  let x_613 : f32 = u_xlat6.x;
  let x_615 : f32 = u_xlat6.x;
  u_xlat12 = (x_613 * x_615);
  let x_617 : f32 = u_xlat12;
  let x_618 : f32 = u_xlat12;
  u_xlat12 = (x_617 * x_618);
  let x_621 : f32 = u_xlat6.x;
  let x_622 : f32 = u_xlat12;
  u_xlat6.x = (x_621 * x_622);
  let x_625 : f32 = u_xlat18;
  let x_627 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_625 * x_627) + 1.0f);
  let x_632 : f32 = u_xlat0.x;
  u_xlat12 = (-(x_632) + 1.0f);
  let x_635 : f32 = u_xlat12;
  let x_636 : f32 = u_xlat12;
  u_xlat13 = (x_635 * x_636);
  let x_638 : f32 = u_xlat13;
  let x_639 : f32 = u_xlat13;
  u_xlat13 = (x_638 * x_639);
  let x_641 : f32 = u_xlat12;
  let x_642 : f32 = u_xlat13;
  u_xlat12 = (x_641 * x_642);
  let x_644 : f32 = u_xlat18;
  let x_645 : f32 = u_xlat12;
  u_xlat12 = ((x_644 * x_645) + 1.0f);
  let x_649 : f32 = u_xlat6.x;
  let x_650 : f32 = u_xlat12;
  u_xlat6.x = (x_649 * x_650);
  let x_654 : f32 = u_xlat0.x;
  let x_656 : f32 = u_xlat6.x;
  u_xlat0.x = (x_654 * x_656);
  let x_659 : vec3<f32> = u_xlat0;
  let x_661 : vec3<f32> = u_xlat3;
  u_xlat0 = (vec3<f32>(x_659.x, x_659.x, x_659.x) * x_661);
  let x_665 : vec4<f32> = u_xlat1;
  let x_667 : vec3<f32> = u_xlat0;
  let x_669 : vec4<f32> = u_xlat2;
  let x_671 : vec3<f32> = ((vec3<f32>(x_665.x, x_665.y, x_665.w) * x_667) + vec3<f32>(x_669.x, x_669.y, x_669.z));
  let x_672 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_671.x, x_671.y, x_671.z, x_672.w);
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

