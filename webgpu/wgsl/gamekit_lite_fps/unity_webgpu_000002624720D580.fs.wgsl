struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  x_ZBufferParams : vec4<f32>,
  unity_CameraToWorld : mat4x4<f32>,
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

@group(0) @binding(6) var sampler_CameraDepthTexture : sampler;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec3<f32>;

@group(0) @binding(5) var x_CameraGBufferTexture2 : texture_2d<f32>;

@group(0) @binding(10) var sampler_CameraGBufferTexture2 : sampler;

var<private> u_xlat13 : f32;

@group(0) @binding(4) var x_CameraGBufferTexture1 : texture_2d<f32>;

@group(0) @binding(9) var sampler_CameraGBufferTexture1 : sampler;

@group(0) @binding(3) var x_CameraGBufferTexture0 : texture_2d<f32>;

@group(0) @binding(8) var sampler_CameraGBufferTexture0 : sampler;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat20 : f32;

var<private> u_xlat21 : f32;

var<private> u_xlat22 : f32;

var<private> u_xlat8 : f32;

var<private> u_xlat14 : vec2<f32>;

var<private> u_xlatb14 : bool;

@group(0) @binding(2) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(7) var sampler_LightTexture0 : sampler;

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
  let x_75 : f32 = u_xlat18;
  let x_77 : vec4<f32> = u_xlat0;
  let x_79 : vec3<f32> = (vec3<f32>(x_75, x_75, x_75) * vec3<f32>(x_77.x, x_77.y, x_77.z));
  let x_80 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_79.x, x_79.y, x_79.z, x_80.w);
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
  u_xlat18 = dot(x_129, x_130);
  let x_132 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_132);
  let x_135 : vec3<f32> = u_xlat2;
  let x_137 : f32 = u_xlat18;
  let x_142 : vec4<f32> = x_14.x_LightDir;
  let x_145 : vec3<f32> = ((-(x_135) * vec3<f32>(x_137, x_137, x_137)) + -(vec3<f32>(x_142.x, x_142.y, x_142.z)));
  let x_146 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_145.x, x_145.y, x_145.z, x_146.w);
  let x_148 : f32 = u_xlat18;
  let x_150 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_148, x_148, x_148) * x_150);
  let x_152 : vec4<f32> = u_xlat3;
  let x_154 : vec4<f32> = u_xlat3;
  u_xlat18 = dot(vec3<f32>(x_152.x, x_152.y, x_152.z), vec3<f32>(x_154.x, x_154.y, x_154.z));
  let x_157 : f32 = u_xlat18;
  u_xlat18 = max(x_157, 0.001f);
  let x_160 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_160);
  let x_162 : f32 = u_xlat18;
  let x_164 : vec4<f32> = u_xlat3;
  let x_166 : vec3<f32> = (vec3<f32>(x_162, x_162, x_162) * vec3<f32>(x_164.x, x_164.y, x_164.z));
  let x_167 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_166.x, x_166.y, x_166.z, x_167.w);
  let x_175 : vec4<f32> = u_xlat1;
  let x_177 : vec4<f32> = textureSample(x_CameraGBufferTexture2, sampler_CameraGBufferTexture2, vec2<f32>(x_175.x, x_175.y));
  u_xlat4 = vec3<f32>(x_177.x, x_177.y, x_177.z);
  let x_179 : vec3<f32> = u_xlat4;
  u_xlat4 = ((x_179 * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_186 : vec3<f32> = u_xlat4;
  let x_187 : vec3<f32> = u_xlat4;
  u_xlat18 = dot(x_186, x_187);
  let x_189 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_189);
  let x_191 : f32 = u_xlat18;
  let x_193 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_191, x_191, x_191) * x_193);
  let x_195 : vec3<f32> = u_xlat4;
  let x_196 : vec4<f32> = u_xlat3;
  u_xlat18 = dot(x_195, vec3<f32>(x_196.x, x_196.y, x_196.z));
  let x_199 : f32 = u_xlat18;
  u_xlat18 = clamp(x_199, 0.0f, 1.0f);
  let x_204 : vec4<f32> = x_14.x_LightDir;
  let x_207 : vec4<f32> = u_xlat3;
  u_xlat13 = dot(-(vec3<f32>(x_204.x, x_204.y, x_204.z)), vec3<f32>(x_207.x, x_207.y, x_207.z));
  let x_210 : f32 = u_xlat13;
  u_xlat13 = clamp(x_210, 0.0f, 1.0f);
  let x_217 : vec4<f32> = u_xlat1;
  let x_219 : vec4<f32> = textureSample(x_CameraGBufferTexture1, sampler_CameraGBufferTexture1, vec2<f32>(x_217.x, x_217.y));
  u_xlat3 = x_219;
  let x_225 : vec4<f32> = u_xlat1;
  let x_227 : vec4<f32> = textureSample(x_CameraGBufferTexture0, sampler_CameraGBufferTexture0, vec2<f32>(x_225.x, x_225.y));
  let x_228 : vec3<f32> = vec3<f32>(x_227.x, x_227.y, x_227.z);
  let x_229 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_228.x, x_228.y, x_229.z, x_228.z);
  let x_232 : vec4<f32> = u_xlat3;
  u_xlat5 = (-(vec4<f32>(x_232.w, x_232.x, x_232.y, x_232.z)) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_239 : f32 = u_xlat5.x;
  let x_241 : f32 = u_xlat5.x;
  u_xlat20 = (x_239 * x_241);
  let x_243 : f32 = u_xlat20;
  u_xlat20 = max(x_243, 0.002f);
  let x_247 : f32 = u_xlat20;
  let x_248 : f32 = u_xlat20;
  u_xlat21 = (x_247 * x_248);
  let x_251 : f32 = u_xlat18;
  let x_252 : f32 = u_xlat21;
  let x_254 : f32 = u_xlat18;
  u_xlat22 = ((x_251 * x_252) + -(x_254));
  let x_257 : f32 = u_xlat22;
  let x_258 : f32 = u_xlat18;
  u_xlat18 = ((x_257 * x_258) + 1.0f);
  let x_261 : f32 = u_xlat18;
  let x_262 : f32 = u_xlat18;
  u_xlat18 = ((x_261 * x_262) + 0.0000001f);
  let x_266 : f32 = u_xlat21;
  u_xlat21 = (x_266 * 0.318309873f);
  let x_269 : f32 = u_xlat21;
  let x_270 : f32 = u_xlat18;
  u_xlat18 = (x_269 / x_270);
  let x_272 : vec3<f32> = u_xlat4;
  let x_273 : vec3<f32> = u_xlat2;
  u_xlat2.x = dot(x_272, -(x_273));
  let x_278 : vec3<f32> = u_xlat4;
  let x_280 : vec4<f32> = x_14.x_LightDir;
  u_xlat8 = dot(x_278, -(vec3<f32>(x_280.x, x_280.y, x_280.z)));
  let x_284 : f32 = u_xlat8;
  u_xlat8 = clamp(x_284, 0.0f, 1.0f);
  let x_288 : f32 = u_xlat20;
  u_xlat14.x = (-(x_288) + 1.0f);
  let x_293 : f32 = u_xlat2.x;
  let x_296 : f32 = u_xlat14.x;
  let x_298 : f32 = u_xlat20;
  u_xlat21 = ((abs(x_293) * x_296) + x_298);
  let x_300 : f32 = u_xlat8;
  let x_302 : f32 = u_xlat14.x;
  let x_304 : f32 = u_xlat20;
  u_xlat14.x = ((x_300 * x_302) + x_304);
  let x_308 : f32 = u_xlat14.x;
  let x_310 : f32 = u_xlat2.x;
  u_xlat14.x = (x_308 * abs(x_310));
  let x_315 : f32 = u_xlat2.x;
  u_xlat2.x = (-(abs(x_315)) + 1.0f);
  let x_320 : f32 = u_xlat8;
  let x_321 : f32 = u_xlat21;
  let x_324 : f32 = u_xlat14.x;
  u_xlat14.x = ((x_320 * x_321) + x_324);
  let x_328 : f32 = u_xlat14.x;
  u_xlat14.x = (x_328 + 0.00001f);
  let x_334 : f32 = u_xlat14.x;
  u_xlat14.x = (0.5f / x_334);
  let x_337 : f32 = u_xlat18;
  let x_339 : f32 = u_xlat14.x;
  u_xlat18 = (x_337 * x_339);
  let x_341 : f32 = u_xlat8;
  let x_342 : f32 = u_xlat18;
  u_xlat18 = (x_341 * x_342);
  let x_344 : f32 = u_xlat18;
  u_xlat18 = (x_344 * 3.141592741f);
  let x_347 : f32 = u_xlat18;
  u_xlat18 = max(x_347, 0.0f);
  let x_349 : vec4<f32> = u_xlat3;
  let x_351 : vec4<f32> = u_xlat3;
  u_xlat14.x = dot(vec3<f32>(x_349.x, x_349.y, x_349.z), vec3<f32>(x_351.x, x_351.y, x_351.z));
  let x_359 : f32 = u_xlat14.x;
  u_xlatb14 = !((x_359 == 0.0f));
  let x_361 : bool = u_xlatb14;
  u_xlat14.x = select(0.0f, 1.0f, x_361);
  let x_364 : f32 = u_xlat18;
  let x_366 : f32 = u_xlat14.x;
  u_xlat18 = (x_364 * x_366);
  let x_368 : vec4<f32> = u_xlat0;
  let x_372 : vec4<f32> = x_14.unity_WorldToLight[1i];
  u_xlat14 = (vec2<f32>(x_368.y, x_368.y) * vec2<f32>(x_372.x, x_372.y));
  let x_376 : vec4<f32> = x_14.unity_WorldToLight[0i];
  let x_378 : vec4<f32> = u_xlat0;
  let x_381 : vec2<f32> = u_xlat14;
  let x_382 : vec2<f32> = ((vec2<f32>(x_376.x, x_376.y) * vec2<f32>(x_378.x, x_378.x)) + x_381);
  let x_383 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_382.x, x_382.y, x_383.z, x_383.w);
  let x_386 : vec4<f32> = x_14.unity_WorldToLight[2i];
  let x_388 : vec4<f32> = u_xlat0;
  let x_391 : vec4<f32> = u_xlat0;
  let x_393 : vec2<f32> = ((vec2<f32>(x_386.x, x_386.y) * vec2<f32>(x_388.z, x_388.z)) + vec2<f32>(x_391.x, x_391.y));
  let x_394 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_393.x, x_393.y, x_394.z, x_394.w);
  let x_396 : vec4<f32> = u_xlat0;
  let x_399 : vec4<f32> = x_14.unity_WorldToLight[3i];
  let x_401 : vec2<f32> = (vec2<f32>(x_396.x, x_396.y) + vec2<f32>(x_399.x, x_399.y));
  let x_402 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_401.x, x_401.y, x_402.z, x_402.w);
  let x_409 : vec4<f32> = u_xlat0;
  let x_412 : vec4<f32> = textureSampleBias(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_409.x, x_409.y), -8.0f);
  u_xlat0.x = x_412.w;
  let x_416 : vec4<f32> = u_xlat0;
  let x_420 : vec4<f32> = x_14.x_LightColor;
  let x_422 : vec3<f32> = (vec3<f32>(x_416.x, x_416.x, x_416.x) * vec3<f32>(x_420.x, x_420.y, x_420.z));
  let x_423 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_422.x, x_422.y, x_422.z, x_423.w);
  let x_425 : vec4<f32> = u_xlat0;
  let x_427 : f32 = u_xlat18;
  u_xlat4 = (vec3<f32>(x_425.x, x_425.y, x_425.z) * vec3<f32>(x_427, x_427, x_427));
  let x_430 : f32 = u_xlat13;
  u_xlat18 = (-(x_430) + 1.0f);
  let x_433 : f32 = u_xlat13;
  let x_434 : f32 = u_xlat13;
  u_xlat13 = (x_433 * x_434);
  let x_436 : f32 = u_xlat13;
  let x_438 : vec4<f32> = u_xlat5;
  u_xlat13 = dot(vec2<f32>(x_436, x_436), vec2<f32>(x_438.x, x_438.x));
  let x_441 : f32 = u_xlat13;
  u_xlat13 = (x_441 + -0.5f);
  let x_444 : f32 = u_xlat18;
  let x_445 : f32 = u_xlat18;
  u_xlat14.x = (x_444 * x_445);
  let x_449 : f32 = u_xlat14.x;
  let x_451 : f32 = u_xlat14.x;
  u_xlat14.x = (x_449 * x_451);
  let x_454 : f32 = u_xlat18;
  let x_456 : f32 = u_xlat14.x;
  u_xlat18 = (x_454 * x_456);
  let x_458 : vec4<f32> = u_xlat5;
  let x_460 : f32 = u_xlat18;
  let x_463 : vec4<f32> = u_xlat3;
  let x_465 : vec3<f32> = ((vec3<f32>(x_458.y, x_458.z, x_458.w) * vec3<f32>(x_460, x_460, x_460)) + vec3<f32>(x_463.x, x_463.y, x_463.z));
  let x_466 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_465.x, x_465.y, x_465.z, x_466.w);
  let x_468 : vec4<f32> = u_xlat3;
  let x_470 : vec3<f32> = u_xlat4;
  let x_471 : vec3<f32> = (vec3<f32>(x_468.x, x_468.y, x_468.z) * x_470);
  let x_472 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_471.x, x_471.y, x_471.z, x_472.w);
  let x_475 : f32 = u_xlat2.x;
  let x_477 : f32 = u_xlat2.x;
  u_xlat18 = (x_475 * x_477);
  let x_479 : f32 = u_xlat18;
  let x_480 : f32 = u_xlat18;
  u_xlat18 = (x_479 * x_480);
  let x_483 : f32 = u_xlat2.x;
  let x_484 : f32 = u_xlat18;
  u_xlat18 = (x_483 * x_484);
  let x_486 : f32 = u_xlat13;
  let x_487 : f32 = u_xlat18;
  u_xlat18 = ((x_486 * x_487) + 1.0f);
  let x_490 : f32 = u_xlat8;
  u_xlat2.x = (-(x_490) + 1.0f);
  let x_495 : f32 = u_xlat2.x;
  let x_497 : f32 = u_xlat2.x;
  u_xlat14.x = (x_495 * x_497);
  let x_501 : f32 = u_xlat14.x;
  let x_503 : f32 = u_xlat14.x;
  u_xlat14.x = (x_501 * x_503);
  let x_507 : f32 = u_xlat2.x;
  let x_509 : f32 = u_xlat14.x;
  u_xlat2.x = (x_507 * x_509);
  let x_512 : f32 = u_xlat13;
  let x_514 : f32 = u_xlat2.x;
  u_xlat13 = ((x_512 * x_514) + 1.0f);
  let x_517 : f32 = u_xlat18;
  let x_518 : f32 = u_xlat13;
  u_xlat18 = (x_517 * x_518);
  let x_520 : f32 = u_xlat8;
  let x_521 : f32 = u_xlat18;
  u_xlat18 = (x_520 * x_521);
  let x_523 : f32 = u_xlat18;
  let x_525 : vec4<f32> = u_xlat0;
  let x_527 : vec3<f32> = (vec3<f32>(x_523, x_523, x_523) * vec3<f32>(x_525.x, x_525.y, x_525.z));
  let x_528 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_527.x, x_527.y, x_527.z, x_528.w);
  let x_530 : vec4<f32> = u_xlat1;
  let x_532 : vec4<f32> = u_xlat0;
  let x_535 : vec4<f32> = u_xlat3;
  let x_537 : vec3<f32> = ((vec3<f32>(x_530.x, x_530.y, x_530.w) * vec3<f32>(x_532.x, x_532.y, x_532.z)) + vec3<f32>(x_535.x, x_535.y, x_535.z));
  let x_538 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_537.x, x_537.y, x_537.z, x_538.w);
  u_xlat0.w = 1.0f;
  let x_543 : vec4<f32> = u_xlat0;
  SV_Target0 = exp2(-(x_543));
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

