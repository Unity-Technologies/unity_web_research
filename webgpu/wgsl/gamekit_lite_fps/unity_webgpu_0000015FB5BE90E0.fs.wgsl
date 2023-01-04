struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  x_ZBufferParams : vec4<f32>,
  unity_CameraToWorld : mat4x4<f32>,
  x_LightDir : vec4<f32>,
  x_LightColor : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var<uniform> x_14 : PGlobals;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat18 : f32;

@group(0) @binding(1) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_CameraDepthTexture : sampler;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(4) var x_CameraGBufferTexture2 : texture_2d<f32>;

@group(0) @binding(8) var sampler_CameraGBufferTexture2 : sampler;

var<private> u_xlat13 : f32;

@group(0) @binding(3) var x_CameraGBufferTexture1 : texture_2d<f32>;

@group(0) @binding(7) var sampler_CameraGBufferTexture1 : sampler;

@group(0) @binding(2) var x_CameraGBufferTexture0 : texture_2d<f32>;

@group(0) @binding(6) var sampler_CameraGBufferTexture0 : sampler;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat20 : f32;

var<private> u_xlat21 : f32;

var<private> u_xlat5 : f32;

var<private> u_xlat6 : f32;

var<private> u_xlat12 : f32;

var<private> u_xlatb18 : bool;

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
  let x_83 : vec4<f32> = u_xlat0;
  let x_88 : vec4<f32> = x_14.unity_CameraToWorld[1i];
  let x_90 : vec3<f32> = (vec3<f32>(x_83.y, x_83.y, x_83.y) * vec3<f32>(x_88.x, x_88.y, x_88.z));
  let x_91 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_90.x, x_90.y, x_90.z, x_91.w);
  let x_95 : vec4<f32> = x_14.unity_CameraToWorld[0i];
  let x_97 : vec4<f32> = u_xlat0;
  let x_100 : vec4<f32> = u_xlat2;
  let x_102 : vec3<f32> = ((vec3<f32>(x_95.x, x_95.y, x_95.z) * vec3<f32>(x_97.x, x_97.x, x_97.x)) + vec3<f32>(x_100.x, x_100.y, x_100.z));
  let x_103 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_102.x, x_102.y, x_103.z, x_102.z);
  let x_106 : vec4<f32> = x_14.unity_CameraToWorld[2i];
  let x_108 : vec4<f32> = u_xlat0;
  let x_111 : vec4<f32> = u_xlat0;
  let x_113 : vec3<f32> = ((vec3<f32>(x_106.x, x_106.y, x_106.z) * vec3<f32>(x_108.z, x_108.z, x_108.z)) + vec3<f32>(x_111.x, x_111.y, x_111.w));
  let x_114 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_113.x, x_113.y, x_113.z, x_114.w);
  let x_116 : vec4<f32> = u_xlat0;
  let x_119 : vec4<f32> = x_14.unity_CameraToWorld[3i];
  let x_121 : vec3<f32> = (vec3<f32>(x_116.x, x_116.y, x_116.z) + vec3<f32>(x_119.x, x_119.y, x_119.z));
  let x_122 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_121.x, x_121.y, x_121.z, x_122.w);
  let x_124 : vec4<f32> = u_xlat0;
  let x_128 : vec3<f32> = x_14.x_WorldSpaceCameraPos;
  let x_130 : vec3<f32> = (vec3<f32>(x_124.x, x_124.y, x_124.z) + -(x_128));
  let x_131 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_130.x, x_130.y, x_130.z, x_131.w);
  let x_133 : vec4<f32> = u_xlat0;
  let x_135 : vec4<f32> = u_xlat0;
  u_xlat18 = dot(vec3<f32>(x_133.x, x_133.y, x_133.z), vec3<f32>(x_135.x, x_135.y, x_135.z));
  let x_138 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_138);
  let x_140 : vec4<f32> = u_xlat0;
  let x_143 : f32 = u_xlat18;
  let x_148 : vec4<f32> = x_14.x_LightDir;
  let x_151 : vec3<f32> = ((-(vec3<f32>(x_140.x, x_140.y, x_140.z)) * vec3<f32>(x_143, x_143, x_143)) + -(vec3<f32>(x_148.x, x_148.y, x_148.z)));
  let x_152 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_151.x, x_151.y, x_151.z, x_152.w);
  let x_154 : f32 = u_xlat18;
  let x_156 : vec4<f32> = u_xlat0;
  let x_158 : vec3<f32> = (vec3<f32>(x_154, x_154, x_154) * vec3<f32>(x_156.x, x_156.y, x_156.z));
  let x_159 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_158.x, x_158.y, x_158.z, x_159.w);
  let x_161 : vec4<f32> = u_xlat2;
  let x_163 : vec4<f32> = u_xlat2;
  u_xlat18 = dot(vec3<f32>(x_161.x, x_161.y, x_161.z), vec3<f32>(x_163.x, x_163.y, x_163.z));
  let x_166 : f32 = u_xlat18;
  u_xlat18 = max(x_166, 0.001f);
  let x_169 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_169);
  let x_171 : f32 = u_xlat18;
  let x_173 : vec4<f32> = u_xlat2;
  let x_175 : vec3<f32> = (vec3<f32>(x_171, x_171, x_171) * vec3<f32>(x_173.x, x_173.y, x_173.z));
  let x_176 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_175.x, x_175.y, x_175.z, x_176.w);
  let x_185 : vec4<f32> = u_xlat1;
  let x_187 : vec4<f32> = textureSample(x_CameraGBufferTexture2, sampler_CameraGBufferTexture2, vec2<f32>(x_185.x, x_185.y));
  u_xlat3 = vec3<f32>(x_187.x, x_187.y, x_187.z);
  let x_189 : vec3<f32> = u_xlat3;
  u_xlat3 = ((x_189 * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_196 : vec3<f32> = u_xlat3;
  let x_197 : vec3<f32> = u_xlat3;
  u_xlat18 = dot(x_196, x_197);
  let x_199 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_199);
  let x_201 : f32 = u_xlat18;
  let x_203 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_201, x_201, x_201) * x_203);
  let x_205 : vec3<f32> = u_xlat3;
  let x_206 : vec4<f32> = u_xlat2;
  u_xlat18 = dot(x_205, vec3<f32>(x_206.x, x_206.y, x_206.z));
  let x_209 : f32 = u_xlat18;
  u_xlat18 = clamp(x_209, 0.0f, 1.0f);
  let x_214 : vec4<f32> = x_14.x_LightDir;
  let x_217 : vec4<f32> = u_xlat2;
  u_xlat13 = dot(-(vec3<f32>(x_214.x, x_214.y, x_214.z)), vec3<f32>(x_217.x, x_217.y, x_217.z));
  let x_220 : f32 = u_xlat13;
  u_xlat13 = clamp(x_220, 0.0f, 1.0f);
  let x_227 : vec4<f32> = u_xlat1;
  let x_229 : vec4<f32> = textureSample(x_CameraGBufferTexture1, sampler_CameraGBufferTexture1, vec2<f32>(x_227.x, x_227.y));
  u_xlat2 = x_229;
  let x_235 : vec4<f32> = u_xlat1;
  let x_237 : vec4<f32> = textureSample(x_CameraGBufferTexture0, sampler_CameraGBufferTexture0, vec2<f32>(x_235.x, x_235.y));
  let x_238 : vec3<f32> = vec3<f32>(x_237.x, x_237.y, x_237.z);
  let x_239 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_238.x, x_238.y, x_239.z, x_238.z);
  let x_242 : vec4<f32> = u_xlat2;
  u_xlat4 = (-(vec4<f32>(x_242.w, x_242.x, x_242.y, x_242.z)) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_249 : f32 = u_xlat4.x;
  let x_251 : f32 = u_xlat4.x;
  u_xlat20 = (x_249 * x_251);
  let x_253 : f32 = u_xlat20;
  u_xlat20 = max(x_253, 0.002f);
  let x_257 : f32 = u_xlat20;
  let x_258 : f32 = u_xlat20;
  u_xlat21 = (x_257 * x_258);
  let x_261 : f32 = u_xlat18;
  let x_262 : f32 = u_xlat21;
  let x_264 : f32 = u_xlat18;
  u_xlat5 = ((x_261 * x_262) + -(x_264));
  let x_267 : f32 = u_xlat5;
  let x_268 : f32 = u_xlat18;
  u_xlat18 = ((x_267 * x_268) + 1.0f);
  let x_271 : f32 = u_xlat18;
  let x_272 : f32 = u_xlat18;
  u_xlat18 = ((x_271 * x_272) + 0.0000001f);
  let x_276 : f32 = u_xlat21;
  u_xlat21 = (x_276 * 0.318309873f);
  let x_279 : f32 = u_xlat21;
  let x_280 : f32 = u_xlat18;
  u_xlat18 = (x_279 / x_280);
  let x_282 : vec3<f32> = u_xlat3;
  let x_283 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(x_282, -(vec3<f32>(x_283.x, x_283.y, x_283.z)));
  let x_289 : vec3<f32> = u_xlat3;
  let x_291 : vec4<f32> = x_14.x_LightDir;
  u_xlat6 = dot(x_289, -(vec3<f32>(x_291.x, x_291.y, x_291.z)));
  let x_295 : f32 = u_xlat6;
  u_xlat6 = clamp(x_295, 0.0f, 1.0f);
  let x_298 : f32 = u_xlat20;
  u_xlat12 = (-(x_298) + 1.0f);
  let x_302 : f32 = u_xlat0.x;
  let x_304 : f32 = u_xlat12;
  let x_306 : f32 = u_xlat20;
  u_xlat3.x = ((abs(x_302) * x_304) + x_306);
  let x_309 : f32 = u_xlat6;
  let x_310 : f32 = u_xlat12;
  let x_312 : f32 = u_xlat20;
  u_xlat12 = ((x_309 * x_310) + x_312);
  let x_314 : f32 = u_xlat12;
  let x_316 : f32 = u_xlat0.x;
  u_xlat12 = (x_314 * abs(x_316));
  let x_320 : f32 = u_xlat0.x;
  u_xlat0.x = (-(abs(x_320)) + 1.0f);
  let x_325 : f32 = u_xlat6;
  let x_327 : f32 = u_xlat3.x;
  let x_329 : f32 = u_xlat12;
  u_xlat12 = ((x_325 * x_327) + x_329);
  let x_331 : f32 = u_xlat12;
  u_xlat12 = (x_331 + 0.00001f);
  let x_335 : f32 = u_xlat12;
  u_xlat12 = (0.5f / x_335);
  let x_337 : f32 = u_xlat18;
  let x_338 : f32 = u_xlat12;
  u_xlat12 = (x_337 * x_338);
  let x_340 : f32 = u_xlat6;
  let x_341 : f32 = u_xlat12;
  u_xlat12 = (x_340 * x_341);
  let x_343 : f32 = u_xlat12;
  u_xlat12 = (x_343 * 3.141592741f);
  let x_346 : f32 = u_xlat12;
  u_xlat12 = max(x_346, 0.0f);
  let x_348 : vec4<f32> = u_xlat2;
  let x_350 : vec4<f32> = u_xlat2;
  u_xlat18 = dot(vec3<f32>(x_348.x, x_348.y, x_348.z), vec3<f32>(x_350.x, x_350.y, x_350.z));
  let x_356 : f32 = u_xlat18;
  u_xlatb18 = !((x_356 == 0.0f));
  let x_358 : bool = u_xlatb18;
  u_xlat18 = select(0.0f, 1.0f, x_358);
  let x_360 : f32 = u_xlat18;
  let x_361 : f32 = u_xlat12;
  u_xlat12 = (x_360 * x_361);
  let x_363 : f32 = u_xlat12;
  let x_367 : vec4<f32> = x_14.x_LightColor;
  u_xlat3 = (vec3<f32>(x_363, x_363, x_363) * vec3<f32>(x_367.x, x_367.y, x_367.z));
  let x_370 : f32 = u_xlat13;
  u_xlat12 = (-(x_370) + 1.0f);
  let x_373 : f32 = u_xlat13;
  let x_374 : f32 = u_xlat13;
  u_xlat18 = (x_373 * x_374);
  let x_376 : f32 = u_xlat18;
  let x_378 : vec4<f32> = u_xlat4;
  u_xlat18 = dot(vec2<f32>(x_376, x_376), vec2<f32>(x_378.x, x_378.x));
  let x_381 : f32 = u_xlat18;
  u_xlat18 = (x_381 + -0.5f);
  let x_384 : f32 = u_xlat12;
  let x_385 : f32 = u_xlat12;
  u_xlat13 = (x_384 * x_385);
  let x_387 : f32 = u_xlat13;
  let x_388 : f32 = u_xlat13;
  u_xlat13 = (x_387 * x_388);
  let x_390 : f32 = u_xlat12;
  let x_391 : f32 = u_xlat13;
  u_xlat12 = (x_390 * x_391);
  let x_393 : vec4<f32> = u_xlat4;
  let x_395 : f32 = u_xlat12;
  let x_398 : vec4<f32> = u_xlat2;
  let x_400 : vec3<f32> = ((vec3<f32>(x_393.y, x_393.z, x_393.w) * vec3<f32>(x_395, x_395, x_395)) + vec3<f32>(x_398.x, x_398.y, x_398.z));
  let x_401 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_400.x, x_400.y, x_400.z, x_401.w);
  let x_403 : vec4<f32> = u_xlat2;
  let x_405 : vec3<f32> = u_xlat3;
  let x_406 : vec3<f32> = (vec3<f32>(x_403.x, x_403.y, x_403.z) * x_405);
  let x_407 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_406.x, x_406.y, x_406.z, x_407.w);
  let x_410 : f32 = u_xlat0.x;
  let x_412 : f32 = u_xlat0.x;
  u_xlat12 = (x_410 * x_412);
  let x_414 : f32 = u_xlat12;
  let x_415 : f32 = u_xlat12;
  u_xlat12 = (x_414 * x_415);
  let x_418 : f32 = u_xlat0.x;
  let x_419 : f32 = u_xlat12;
  u_xlat0.x = (x_418 * x_419);
  let x_422 : f32 = u_xlat18;
  let x_424 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_422 * x_424) + 1.0f);
  let x_428 : f32 = u_xlat6;
  u_xlat12 = (-(x_428) + 1.0f);
  let x_431 : f32 = u_xlat12;
  let x_432 : f32 = u_xlat12;
  u_xlat13 = (x_431 * x_432);
  let x_434 : f32 = u_xlat13;
  let x_435 : f32 = u_xlat13;
  u_xlat13 = (x_434 * x_435);
  let x_437 : f32 = u_xlat12;
  let x_438 : f32 = u_xlat13;
  u_xlat12 = (x_437 * x_438);
  let x_440 : f32 = u_xlat18;
  let x_441 : f32 = u_xlat12;
  u_xlat12 = ((x_440 * x_441) + 1.0f);
  let x_445 : f32 = u_xlat0.x;
  let x_446 : f32 = u_xlat12;
  u_xlat0.x = (x_445 * x_446);
  let x_449 : f32 = u_xlat6;
  let x_451 : f32 = u_xlat0.x;
  u_xlat0.x = (x_449 * x_451);
  let x_454 : vec4<f32> = u_xlat0;
  let x_457 : vec4<f32> = x_14.x_LightColor;
  let x_459 : vec3<f32> = (vec3<f32>(x_454.x, x_454.x, x_454.x) * vec3<f32>(x_457.x, x_457.y, x_457.z));
  let x_460 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_459.x, x_459.y, x_459.z, x_460.w);
  let x_462 : vec4<f32> = u_xlat1;
  let x_464 : vec4<f32> = u_xlat0;
  let x_467 : vec4<f32> = u_xlat2;
  let x_469 : vec3<f32> = ((vec3<f32>(x_462.x, x_462.y, x_462.w) * vec3<f32>(x_464.x, x_464.y, x_464.z)) + vec3<f32>(x_467.x, x_467.y, x_467.z));
  let x_470 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_469.x, x_469.y, x_469.z, x_470.w);
  u_xlat0.w = 1.0f;
  let x_476 : vec4<f32> = u_xlat0;
  SV_Target0 = exp2(-(x_476));
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

