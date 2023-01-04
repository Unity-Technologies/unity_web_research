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

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var<uniform> x_14 : PGlobals;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat18 : f32;

@group(0) @binding(1) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_CameraDepthTexture : sampler;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat6 : vec2<f32>;

@group(0) @binding(2) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_ShadowMapTexture : sampler;

var<private> u_xlat12 : f32;

@group(0) @binding(3) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(8) var sampler_LightTexture0 : sampler;

var<private> u_xlat4 : vec3<f32>;

@group(0) @binding(6) var x_CameraGBufferTexture2 : texture_2d<f32>;

@group(0) @binding(12) var sampler_CameraGBufferTexture2 : sampler;

var<private> u_xlat13 : f32;

@group(0) @binding(5) var x_CameraGBufferTexture1 : texture_2d<f32>;

@group(0) @binding(11) var sampler_CameraGBufferTexture1 : sampler;

@group(0) @binding(4) var x_CameraGBufferTexture0 : texture_2d<f32>;

@group(0) @binding(10) var sampler_CameraGBufferTexture0 : sampler;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat20 : f32;

var<private> u_xlat21 : f32;

var<private> u_xlat22 : f32;

var<private> u_xlat8 : f32;

var<private> u_xlat14 : f32;

var<private> u_xlatb14 : bool;

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
  let x_41 : vec4<f32> = vs_TEXCOORD0;
  let x_43 : vec4<f32> = vs_TEXCOORD0;
  let x_45 : vec2<f32> = (vec2<f32>(x_41.x, x_41.y) / vec2<f32>(x_43.w, x_43.w));
  let x_46 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_45.x, x_45.y, x_46.z, x_46.w);
  let x_59 : vec4<f32> = u_xlat1;
  let x_61 : vec4<f32> = textureSample(x_CameraDepthTexture, sampler_CameraDepthTexture, vec2<f32>(x_59.x, x_59.y));
  u_xlat18 = x_61.x;
  let x_65 : f32 = x_14.x_ZBufferParams.x;
  let x_66 : f32 = u_xlat18;
  let x_70 : f32 = x_14.x_ZBufferParams.y;
  u_xlat18 = ((x_65 * x_66) + x_70);
  let x_73 : f32 = u_xlat18;
  u_xlat18 = (1.0f / x_73);
  let x_76 : f32 = u_xlat18;
  let x_78 : vec4<f32> = u_xlat0;
  let x_80 : vec3<f32> = (vec3<f32>(x_76, x_76, x_76) * vec3<f32>(x_78.x, x_78.y, x_78.z));
  let x_81 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_80.x, x_80.y, x_80.z, x_81.w);
  let x_84 : vec4<f32> = u_xlat2;
  let x_89 : vec4<f32> = x_14.unity_CameraToWorld[1i];
  let x_91 : vec3<f32> = (vec3<f32>(x_84.y, x_84.y, x_84.y) * vec3<f32>(x_89.x, x_89.y, x_89.z));
  let x_92 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_91.x, x_91.y, x_91.z, x_92.w);
  let x_96 : vec4<f32> = x_14.unity_CameraToWorld[0i];
  let x_98 : vec4<f32> = u_xlat2;
  let x_101 : vec4<f32> = u_xlat3;
  let x_103 : vec3<f32> = ((vec3<f32>(x_96.x, x_96.y, x_96.z) * vec3<f32>(x_98.x, x_98.x, x_98.x)) + vec3<f32>(x_101.x, x_101.y, x_101.z));
  let x_104 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_103.x, x_103.y, x_104.z, x_103.z);
  let x_107 : vec4<f32> = x_14.unity_CameraToWorld[2i];
  let x_109 : vec4<f32> = u_xlat2;
  let x_112 : vec4<f32> = u_xlat2;
  let x_114 : vec3<f32> = ((vec3<f32>(x_107.x, x_107.y, x_107.z) * vec3<f32>(x_109.z, x_109.z, x_109.z)) + vec3<f32>(x_112.x, x_112.y, x_112.w));
  let x_115 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_114.x, x_114.y, x_115.z, x_114.z);
  let x_117 : vec4<f32> = u_xlat2;
  let x_120 : vec4<f32> = x_14.unity_CameraToWorld[3i];
  let x_122 : vec3<f32> = (vec3<f32>(x_117.x, x_117.y, x_117.w) + vec3<f32>(x_120.x, x_120.y, x_120.z));
  let x_123 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_122.x, x_122.y, x_123.z, x_122.z);
  let x_125 : vec4<f32> = u_xlat2;
  let x_129 : vec4<f32> = x_14.unity_ShadowFadeCenterAndType;
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
  let x_156 : f32 = x_14.unity_ShadowFadeCenterAndType.w;
  let x_158 : f32 = u_xlat0.x;
  let x_161 : f32 = u_xlat2.z;
  u_xlat0.x = ((x_156 * x_158) + x_161);
  let x_165 : f32 = u_xlat0.x;
  let x_168 : f32 = x_14.x_LightShadowData.z;
  let x_171 : f32 = x_14.x_LightShadowData.w;
  u_xlat0.x = ((x_165 * x_168) + x_171);
  let x_175 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_175, 0.0f, 1.0f);
  let x_186 : vec4<f32> = u_xlat1;
  let x_188 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, vec2<f32>(x_186.x, x_186.y));
  u_xlat6.x = x_188.x;
  let x_193 : f32 = u_xlat6.x;
  u_xlat12 = (-(x_193) + 1.0f);
  let x_197 : f32 = u_xlat0.x;
  let x_198 : f32 = u_xlat12;
  let x_201 : f32 = u_xlat6.x;
  u_xlat0.x = ((x_197 * x_198) + x_201);
  let x_204 : vec4<f32> = u_xlat2;
  let x_208 : vec4<f32> = x_14.unity_WorldToLight[1i];
  u_xlat6 = (vec2<f32>(x_204.y, x_204.y) * vec2<f32>(x_208.x, x_208.y));
  let x_212 : vec4<f32> = x_14.unity_WorldToLight[0i];
  let x_214 : vec4<f32> = u_xlat2;
  let x_217 : vec2<f32> = u_xlat6;
  u_xlat6 = ((vec2<f32>(x_212.x, x_212.y) * vec2<f32>(x_214.x, x_214.x)) + x_217);
  let x_220 : vec4<f32> = x_14.unity_WorldToLight[2i];
  let x_222 : vec4<f32> = u_xlat2;
  let x_225 : vec2<f32> = u_xlat6;
  u_xlat6 = ((vec2<f32>(x_220.x, x_220.y) * vec2<f32>(x_222.w, x_222.w)) + x_225);
  let x_227 : vec4<f32> = u_xlat2;
  let x_231 : vec3<f32> = x_14.x_WorldSpaceCameraPos;
  let x_233 : vec3<f32> = (vec3<f32>(x_227.x, x_227.y, x_227.w) + -(x_231));
  let x_234 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_233.x, x_233.y, x_233.z, x_234.w);
  let x_236 : vec2<f32> = u_xlat6;
  let x_238 : vec4<f32> = x_14.unity_WorldToLight[3i];
  u_xlat6 = (x_236 + vec2<f32>(x_238.x, x_238.y));
  let x_246 : vec2<f32> = u_xlat6;
  let x_248 : vec4<f32> = textureSampleBias(x_LightTexture0, sampler_LightTexture0, x_246, -8.0f);
  u_xlat6.x = x_248.w;
  let x_252 : f32 = u_xlat6.x;
  let x_254 : f32 = u_xlat0.x;
  u_xlat0.x = (x_252 * x_254);
  let x_257 : vec4<f32> = u_xlat0;
  let x_261 : vec4<f32> = x_14.x_LightColor;
  let x_263 : vec3<f32> = (vec3<f32>(x_257.x, x_257.x, x_257.x) * vec3<f32>(x_261.x, x_261.y, x_261.z));
  let x_264 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_263.x, x_263.y, x_263.z, x_264.w);
  let x_266 : vec4<f32> = u_xlat2;
  let x_268 : vec4<f32> = u_xlat2;
  u_xlat18 = dot(vec3<f32>(x_266.x, x_266.y, x_266.z), vec3<f32>(x_268.x, x_268.y, x_268.z));
  let x_271 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_271);
  let x_273 : vec4<f32> = u_xlat2;
  let x_276 : f32 = u_xlat18;
  let x_281 : vec4<f32> = x_14.x_LightDir;
  let x_284 : vec3<f32> = ((-(vec3<f32>(x_273.x, x_273.y, x_273.z)) * vec3<f32>(x_276, x_276, x_276)) + -(vec3<f32>(x_281.x, x_281.y, x_281.z)));
  let x_285 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_284.x, x_284.y, x_284.z, x_285.w);
  let x_287 : f32 = u_xlat18;
  let x_289 : vec4<f32> = u_xlat2;
  let x_291 : vec3<f32> = (vec3<f32>(x_287, x_287, x_287) * vec3<f32>(x_289.x, x_289.y, x_289.z));
  let x_292 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_291.x, x_291.y, x_291.z, x_292.w);
  let x_294 : vec4<f32> = u_xlat3;
  let x_296 : vec4<f32> = u_xlat3;
  u_xlat18 = dot(vec3<f32>(x_294.x, x_294.y, x_294.z), vec3<f32>(x_296.x, x_296.y, x_296.z));
  let x_299 : f32 = u_xlat18;
  u_xlat18 = max(x_299, 0.001f);
  let x_302 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_302);
  let x_304 : f32 = u_xlat18;
  let x_306 : vec4<f32> = u_xlat3;
  let x_308 : vec3<f32> = (vec3<f32>(x_304, x_304, x_304) * vec3<f32>(x_306.x, x_306.y, x_306.z));
  let x_309 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_308.x, x_308.y, x_308.z, x_309.w);
  let x_318 : vec4<f32> = u_xlat1;
  let x_320 : vec4<f32> = textureSample(x_CameraGBufferTexture2, sampler_CameraGBufferTexture2, vec2<f32>(x_318.x, x_318.y));
  u_xlat4 = vec3<f32>(x_320.x, x_320.y, x_320.z);
  let x_322 : vec3<f32> = u_xlat4;
  u_xlat4 = ((x_322 * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_329 : vec3<f32> = u_xlat4;
  let x_330 : vec3<f32> = u_xlat4;
  u_xlat18 = dot(x_329, x_330);
  let x_332 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_332);
  let x_334 : f32 = u_xlat18;
  let x_336 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_334, x_334, x_334) * x_336);
  let x_338 : vec3<f32> = u_xlat4;
  let x_339 : vec4<f32> = u_xlat3;
  u_xlat18 = dot(x_338, vec3<f32>(x_339.x, x_339.y, x_339.z));
  let x_342 : f32 = u_xlat18;
  u_xlat18 = clamp(x_342, 0.0f, 1.0f);
  let x_346 : vec4<f32> = x_14.x_LightDir;
  let x_349 : vec4<f32> = u_xlat3;
  u_xlat13 = dot(-(vec3<f32>(x_346.x, x_346.y, x_346.z)), vec3<f32>(x_349.x, x_349.y, x_349.z));
  let x_352 : f32 = u_xlat13;
  u_xlat13 = clamp(x_352, 0.0f, 1.0f);
  let x_359 : vec4<f32> = u_xlat1;
  let x_361 : vec4<f32> = textureSample(x_CameraGBufferTexture1, sampler_CameraGBufferTexture1, vec2<f32>(x_359.x, x_359.y));
  u_xlat3 = x_361;
  let x_367 : vec4<f32> = u_xlat1;
  let x_369 : vec4<f32> = textureSample(x_CameraGBufferTexture0, sampler_CameraGBufferTexture0, vec2<f32>(x_367.x, x_367.y));
  let x_370 : vec3<f32> = vec3<f32>(x_369.x, x_369.y, x_369.z);
  let x_371 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_370.x, x_370.y, x_371.z, x_370.z);
  let x_374 : vec4<f32> = u_xlat3;
  u_xlat5 = (-(vec4<f32>(x_374.w, x_374.x, x_374.y, x_374.z)) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_381 : f32 = u_xlat5.x;
  let x_383 : f32 = u_xlat5.x;
  u_xlat20 = (x_381 * x_383);
  let x_385 : f32 = u_xlat20;
  u_xlat20 = max(x_385, 0.002f);
  let x_389 : f32 = u_xlat20;
  let x_390 : f32 = u_xlat20;
  u_xlat21 = (x_389 * x_390);
  let x_393 : f32 = u_xlat18;
  let x_394 : f32 = u_xlat21;
  let x_396 : f32 = u_xlat18;
  u_xlat22 = ((x_393 * x_394) + -(x_396));
  let x_399 : f32 = u_xlat22;
  let x_400 : f32 = u_xlat18;
  u_xlat18 = ((x_399 * x_400) + 1.0f);
  let x_403 : f32 = u_xlat18;
  let x_404 : f32 = u_xlat18;
  u_xlat18 = ((x_403 * x_404) + 0.0000001f);
  let x_408 : f32 = u_xlat21;
  u_xlat21 = (x_408 * 0.318309873f);
  let x_411 : f32 = u_xlat21;
  let x_412 : f32 = u_xlat18;
  u_xlat18 = (x_411 / x_412);
  let x_414 : vec3<f32> = u_xlat4;
  let x_415 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(x_414, -(vec3<f32>(x_415.x, x_415.y, x_415.z)));
  let x_421 : vec3<f32> = u_xlat4;
  let x_423 : vec4<f32> = x_14.x_LightDir;
  u_xlat8 = dot(x_421, -(vec3<f32>(x_423.x, x_423.y, x_423.z)));
  let x_427 : f32 = u_xlat8;
  u_xlat8 = clamp(x_427, 0.0f, 1.0f);
  let x_430 : f32 = u_xlat20;
  u_xlat14 = (-(x_430) + 1.0f);
  let x_434 : f32 = u_xlat2.x;
  let x_436 : f32 = u_xlat14;
  let x_438 : f32 = u_xlat20;
  u_xlat21 = ((abs(x_434) * x_436) + x_438);
  let x_440 : f32 = u_xlat8;
  let x_441 : f32 = u_xlat14;
  let x_443 : f32 = u_xlat20;
  u_xlat14 = ((x_440 * x_441) + x_443);
  let x_445 : f32 = u_xlat14;
  let x_447 : f32 = u_xlat2.x;
  u_xlat14 = (x_445 * abs(x_447));
  let x_451 : f32 = u_xlat2.x;
  u_xlat2.x = (-(abs(x_451)) + 1.0f);
  let x_456 : f32 = u_xlat8;
  let x_457 : f32 = u_xlat21;
  let x_459 : f32 = u_xlat14;
  u_xlat14 = ((x_456 * x_457) + x_459);
  let x_461 : f32 = u_xlat14;
  u_xlat14 = (x_461 + 0.00001f);
  let x_465 : f32 = u_xlat14;
  u_xlat14 = (0.5f / x_465);
  let x_467 : f32 = u_xlat18;
  let x_468 : f32 = u_xlat14;
  u_xlat18 = (x_467 * x_468);
  let x_470 : f32 = u_xlat8;
  let x_471 : f32 = u_xlat18;
  u_xlat18 = (x_470 * x_471);
  let x_473 : f32 = u_xlat18;
  u_xlat18 = (x_473 * 3.141592741f);
  let x_476 : f32 = u_xlat18;
  u_xlat18 = max(x_476, 0.0f);
  let x_478 : vec4<f32> = u_xlat3;
  let x_480 : vec4<f32> = u_xlat3;
  u_xlat14 = dot(vec3<f32>(x_478.x, x_478.y, x_478.z), vec3<f32>(x_480.x, x_480.y, x_480.z));
  let x_486 : f32 = u_xlat14;
  u_xlatb14 = !((x_486 == 0.0f));
  let x_488 : bool = u_xlatb14;
  u_xlat14 = select(0.0f, 1.0f, x_488);
  let x_490 : f32 = u_xlat18;
  let x_491 : f32 = u_xlat14;
  u_xlat18 = (x_490 * x_491);
  let x_493 : vec4<f32> = u_xlat0;
  let x_495 : f32 = u_xlat18;
  u_xlat4 = (vec3<f32>(x_493.x, x_493.y, x_493.z) * vec3<f32>(x_495, x_495, x_495));
  let x_498 : f32 = u_xlat13;
  u_xlat18 = (-(x_498) + 1.0f);
  let x_501 : f32 = u_xlat13;
  let x_502 : f32 = u_xlat13;
  u_xlat13 = (x_501 * x_502);
  let x_504 : f32 = u_xlat13;
  let x_506 : vec4<f32> = u_xlat5;
  u_xlat13 = dot(vec2<f32>(x_504, x_504), vec2<f32>(x_506.x, x_506.x));
  let x_509 : f32 = u_xlat13;
  u_xlat13 = (x_509 + -0.5f);
  let x_512 : f32 = u_xlat18;
  let x_513 : f32 = u_xlat18;
  u_xlat14 = (x_512 * x_513);
  let x_515 : f32 = u_xlat14;
  let x_516 : f32 = u_xlat14;
  u_xlat14 = (x_515 * x_516);
  let x_518 : f32 = u_xlat18;
  let x_519 : f32 = u_xlat14;
  u_xlat18 = (x_518 * x_519);
  let x_521 : vec4<f32> = u_xlat5;
  let x_523 : f32 = u_xlat18;
  let x_526 : vec4<f32> = u_xlat3;
  let x_528 : vec3<f32> = ((vec3<f32>(x_521.y, x_521.z, x_521.w) * vec3<f32>(x_523, x_523, x_523)) + vec3<f32>(x_526.x, x_526.y, x_526.z));
  let x_529 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_528.x, x_528.y, x_528.z, x_529.w);
  let x_531 : vec4<f32> = u_xlat3;
  let x_533 : vec3<f32> = u_xlat4;
  let x_534 : vec3<f32> = (vec3<f32>(x_531.x, x_531.y, x_531.z) * x_533);
  let x_535 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_534.x, x_534.y, x_534.z, x_535.w);
  let x_538 : f32 = u_xlat2.x;
  let x_540 : f32 = u_xlat2.x;
  u_xlat18 = (x_538 * x_540);
  let x_542 : f32 = u_xlat18;
  let x_543 : f32 = u_xlat18;
  u_xlat18 = (x_542 * x_543);
  let x_546 : f32 = u_xlat2.x;
  let x_547 : f32 = u_xlat18;
  u_xlat18 = (x_546 * x_547);
  let x_549 : f32 = u_xlat13;
  let x_550 : f32 = u_xlat18;
  u_xlat18 = ((x_549 * x_550) + 1.0f);
  let x_553 : f32 = u_xlat8;
  u_xlat2.x = (-(x_553) + 1.0f);
  let x_558 : f32 = u_xlat2.x;
  let x_560 : f32 = u_xlat2.x;
  u_xlat14 = (x_558 * x_560);
  let x_562 : f32 = u_xlat14;
  let x_563 : f32 = u_xlat14;
  u_xlat14 = (x_562 * x_563);
  let x_566 : f32 = u_xlat2.x;
  let x_567 : f32 = u_xlat14;
  u_xlat2.x = (x_566 * x_567);
  let x_570 : f32 = u_xlat13;
  let x_572 : f32 = u_xlat2.x;
  u_xlat13 = ((x_570 * x_572) + 1.0f);
  let x_575 : f32 = u_xlat18;
  let x_576 : f32 = u_xlat13;
  u_xlat18 = (x_575 * x_576);
  let x_578 : f32 = u_xlat8;
  let x_579 : f32 = u_xlat18;
  u_xlat18 = (x_578 * x_579);
  let x_581 : f32 = u_xlat18;
  let x_583 : vec4<f32> = u_xlat0;
  let x_585 : vec3<f32> = (vec3<f32>(x_581, x_581, x_581) * vec3<f32>(x_583.x, x_583.y, x_583.z));
  let x_586 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_585.x, x_585.y, x_585.z, x_586.w);
  let x_588 : vec4<f32> = u_xlat1;
  let x_590 : vec4<f32> = u_xlat0;
  let x_593 : vec4<f32> = u_xlat3;
  let x_595 : vec3<f32> = ((vec3<f32>(x_588.x, x_588.y, x_588.w) * vec3<f32>(x_590.x, x_590.y, x_590.z)) + vec3<f32>(x_593.x, x_593.y, x_593.z));
  let x_596 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_595.x, x_595.y, x_595.z, x_596.w);
  u_xlat0.w = 1.0f;
  let x_601 : vec4<f32> = u_xlat0;
  SV_Target0 = exp2(-(x_601));
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

