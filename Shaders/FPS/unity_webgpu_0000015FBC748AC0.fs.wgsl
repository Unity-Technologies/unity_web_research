struct PGlobals {
  unity_OcclusionMaskSelector : vec4<f32>,
  unity_ProbeVolumeParams : vec4<f32>,
  unity_ProbeVolumeWorldToObject : mat4x4<f32>,
  unity_ProbeVolumeSizeInv : vec3<f32>,
  @size(4)
  padding : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_LightColor0 : vec4<f32>,
  x_Color : vec4<f32>,
  x_Metallic : f32,
  x_Glossiness : f32,
  @size(8)
  padding_2 : u32,
  unity_WorldToLight : mat4x4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_33 : PGlobals;

var<private> u_xlat21 : f32;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> u_xlatb21 : bool;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat22 : f32;

@group(0) @binding(3) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(4) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(2) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(6) var sampler_LightTexture0 : sampler;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat23 : f32;

var<private> u_xlat9 : f32;

var<private> u_xlat16 : f32;

var<private> u_xlat10 : f32;

var<private> u_xlat17 : f32;

var<private> u_xlatb22 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_202 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_24 : vec4<f32> = vs_TEXCOORD0;
  let x_26 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_24.x, x_24.y));
  u_xlat0 = vec3<f32>(x_26.x, x_26.y, x_26.z);
  let x_29 : vec3<f32> = u_xlat0;
  let x_38 : vec4<f32> = x_33.x_Color;
  u_xlat1 = (x_29 * vec3<f32>(x_38.x, x_38.y, x_38.z));
  let x_42 : vec4<f32> = x_33.x_Color;
  let x_44 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_42.x, x_42.y, x_42.z) * x_44) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_52 : f32 = x_33.x_Metallic;
  let x_54 : f32 = x_33.x_Metallic;
  let x_56 : f32 = x_33.x_Metallic;
  let x_57 : vec3<f32> = vec3<f32>(x_52, x_54, x_56);
  let x_62 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_57.x, x_57.y, x_57.z) * x_62) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_70 : f32 = x_33.x_Metallic;
  u_xlat21 = ((-(x_70) * 0.959999979f) + 0.959999979f);
  let x_75 : f32 = u_xlat21;
  let x_77 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_75, x_75, x_75) * x_77);
  let x_80 : vec4<f32> = vs_TEXCOORD4;
  let x_82 : vec4<f32> = vs_TEXCOORD4;
  u_xlat21 = dot(vec3<f32>(x_80.x, x_80.y, x_80.z), vec3<f32>(x_82.x, x_82.y, x_82.z));
  let x_85 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_85);
  let x_89 : f32 = u_xlat21;
  let x_91 : vec4<f32> = vs_TEXCOORD4;
  let x_93 : vec3<f32> = (vec3<f32>(x_89, x_89, x_89) * vec3<f32>(x_91.x, x_91.y, x_91.z));
  let x_94 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_93.x, x_93.y, x_93.z, x_94.w);
  let x_97 : vec4<f32> = vs_TEXCOORD1;
  let x_99 : vec4<f32> = vs_TEXCOORD1;
  u_xlat21 = dot(vec3<f32>(x_97.x, x_97.y, x_97.z), vec3<f32>(x_99.x, x_99.y, x_99.z));
  let x_102 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_102);
  let x_105 : f32 = u_xlat21;
  let x_107 : vec4<f32> = vs_TEXCOORD1;
  u_xlat3 = (vec3<f32>(x_105, x_105, x_105) * vec3<f32>(x_107.x, x_107.y, x_107.z));
  let x_113 : vec3<f32> = vs_TEXCOORD5;
  let x_118 : vec4<f32> = x_33.unity_WorldToLight[1i];
  u_xlat4 = (vec3<f32>(x_113.y, x_113.y, x_113.y) * vec3<f32>(x_118.x, x_118.y, x_118.z));
  let x_123 : vec4<f32> = x_33.unity_WorldToLight[0i];
  let x_125 : vec3<f32> = vs_TEXCOORD5;
  let x_128 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_123.x, x_123.y, x_123.z) * vec3<f32>(x_125.x, x_125.x, x_125.x)) + x_128);
  let x_132 : vec4<f32> = x_33.unity_WorldToLight[2i];
  let x_134 : vec3<f32> = vs_TEXCOORD5;
  let x_137 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_132.x, x_132.y, x_132.z) * vec3<f32>(x_134.z, x_134.z, x_134.z)) + x_137);
  let x_139 : vec3<f32> = u_xlat4;
  let x_142 : vec4<f32> = x_33.unity_WorldToLight[3i];
  u_xlat4 = (x_139 + vec3<f32>(x_142.x, x_142.y, x_142.z));
  let x_151 : f32 = x_33.unity_ProbeVolumeParams.x;
  u_xlatb21 = (x_151 == 1.0f);
  let x_154 : bool = u_xlatb21;
  if (x_154) {
    let x_159 : f32 = x_33.unity_ProbeVolumeParams.y;
    u_xlatb21 = (x_159 == 1.0f);
    let x_162 : vec3<f32> = vs_TEXCOORD5;
    let x_165 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[1i];
    let x_167 : vec3<f32> = (vec3<f32>(x_162.y, x_162.y, x_162.y) * vec3<f32>(x_165.x, x_165.y, x_165.z));
    let x_168 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_167.x, x_167.y, x_167.z, x_168.w);
    let x_171 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[0i];
    let x_173 : vec3<f32> = vs_TEXCOORD5;
    let x_176 : vec4<f32> = u_xlat5;
    let x_178 : vec3<f32> = ((vec3<f32>(x_171.x, x_171.y, x_171.z) * vec3<f32>(x_173.x, x_173.x, x_173.x)) + vec3<f32>(x_176.x, x_176.y, x_176.z));
    let x_179 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_178.x, x_178.y, x_178.z, x_179.w);
    let x_182 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[2i];
    let x_184 : vec3<f32> = vs_TEXCOORD5;
    let x_187 : vec4<f32> = u_xlat5;
    let x_189 : vec3<f32> = ((vec3<f32>(x_182.x, x_182.y, x_182.z) * vec3<f32>(x_184.z, x_184.z, x_184.z)) + vec3<f32>(x_187.x, x_187.y, x_187.z));
    let x_190 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_189.x, x_189.y, x_189.z, x_190.w);
    let x_192 : vec4<f32> = u_xlat5;
    let x_195 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[3i];
    let x_197 : vec3<f32> = (vec3<f32>(x_192.x, x_192.y, x_192.z) + vec3<f32>(x_195.x, x_195.y, x_195.z));
    let x_198 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_197.x, x_197.y, x_197.z, x_198.w);
    let x_200 : bool = u_xlatb21;
    if (x_200) {
      let x_205 : vec4<f32> = u_xlat5;
      x_202 = vec3<f32>(x_205.x, x_205.y, x_205.z);
    } else {
      let x_208 : vec3<f32> = vs_TEXCOORD5;
      x_202 = x_208;
    }
    let x_209 : vec3<f32> = x_202;
    let x_210 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_209.x, x_209.y, x_209.z, x_210.w);
    let x_212 : vec4<f32> = u_xlat5;
    let x_217 : vec3<f32> = x_33.unity_ProbeVolumeMin;
    let x_219 : vec3<f32> = (vec3<f32>(x_212.x, x_212.y, x_212.z) + -(x_217));
    let x_220 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_219.x, x_219.y, x_219.z, x_220.w);
    let x_222 : vec4<f32> = u_xlat5;
    let x_225 : vec3<f32> = x_33.unity_ProbeVolumeSizeInv;
    let x_226 : vec3<f32> = (vec3<f32>(x_222.x, x_222.y, x_222.z) * x_225);
    let x_227 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_227.x, x_226.x, x_226.y, x_226.z);
    let x_230 : f32 = u_xlat5.y;
    u_xlat21 = ((x_230 * 0.25f) + 0.75f);
    let x_238 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat22 = ((x_238 * 0.5f) + 0.75f);
    let x_242 : f32 = u_xlat21;
    let x_243 : f32 = u_xlat22;
    u_xlat5.x = max(x_242, x_243);
    let x_254 : vec4<f32> = u_xlat5;
    let x_256 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_254.x, x_254.z, x_254.w));
    u_xlat5 = x_256;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_263 : vec4<f32> = u_xlat5;
  let x_265 : vec4<f32> = x_33.unity_OcclusionMaskSelector;
  u_xlat21 = dot(x_263, x_265);
  let x_267 : f32 = u_xlat21;
  u_xlat21 = clamp(x_267, 0.0f, 1.0f);
  let x_270 : vec3<f32> = u_xlat4;
  let x_271 : vec3<f32> = u_xlat4;
  u_xlat22 = dot(x_270, x_271);
  let x_278 : f32 = u_xlat22;
  let x_280 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_278, x_278));
  u_xlat22 = x_280.x;
  let x_282 : f32 = u_xlat21;
  let x_283 : f32 = u_xlat22;
  u_xlat21 = (x_282 * x_283);
  let x_288 : f32 = vs_TEXCOORD2.w;
  u_xlat4.x = x_288;
  let x_292 : f32 = vs_TEXCOORD3.w;
  u_xlat4.y = x_292;
  let x_295 : f32 = vs_TEXCOORD4.w;
  u_xlat4.z = x_295;
  let x_297 : vec3<f32> = u_xlat4;
  let x_298 : vec3<f32> = u_xlat4;
  u_xlat22 = dot(x_297, x_298);
  let x_300 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_300);
  let x_302 : f32 = u_xlat22;
  let x_304 : vec3<f32> = u_xlat4;
  let x_305 : vec3<f32> = (vec3<f32>(x_302, x_302, x_302) * x_304);
  let x_306 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_305.x, x_305.y, x_305.z, x_306.w);
  let x_309 : f32 = u_xlat21;
  let x_313 : vec4<f32> = x_33.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_309, x_309, x_309) * vec3<f32>(x_313.x, x_313.y, x_313.z));
  let x_318 : f32 = x_33.x_Glossiness;
  u_xlat21 = (-(x_318) + 1.0f);
  let x_321 : vec3<f32> = u_xlat4;
  let x_322 : f32 = u_xlat22;
  let x_325 : vec3<f32> = u_xlat3;
  u_xlat4 = ((x_321 * vec3<f32>(x_322, x_322, x_322)) + -(x_325));
  let x_328 : vec3<f32> = u_xlat4;
  let x_329 : vec3<f32> = u_xlat4;
  u_xlat22 = dot(x_328, x_329);
  let x_331 : f32 = u_xlat22;
  u_xlat22 = max(x_331, 0.001f);
  let x_334 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_334);
  let x_336 : f32 = u_xlat22;
  let x_338 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_336, x_336, x_336) * x_338);
  let x_340 : vec4<f32> = u_xlat2;
  let x_342 : vec3<f32> = u_xlat3;
  u_xlat22 = dot(vec3<f32>(x_340.x, x_340.y, x_340.z), -(x_342));
  let x_346 : vec4<f32> = u_xlat2;
  let x_348 : vec4<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_346.x, x_346.y, x_346.z), vec3<f32>(x_348.x, x_348.y, x_348.z));
  let x_351 : f32 = u_xlat23;
  u_xlat23 = clamp(x_351, 0.0f, 1.0f);
  let x_353 : vec4<f32> = u_xlat2;
  let x_355 : vec3<f32> = u_xlat4;
  u_xlat2.x = dot(vec3<f32>(x_353.x, x_353.y, x_353.z), x_355);
  let x_359 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_359, 0.0f, 1.0f);
  let x_363 : vec4<f32> = u_xlat5;
  let x_365 : vec3<f32> = u_xlat4;
  u_xlat9 = dot(vec3<f32>(x_363.x, x_363.y, x_363.z), x_365);
  let x_367 : f32 = u_xlat9;
  u_xlat9 = clamp(x_367, 0.0f, 1.0f);
  let x_370 : f32 = u_xlat9;
  let x_371 : f32 = u_xlat9;
  u_xlat16 = (x_370 * x_371);
  let x_373 : f32 = u_xlat16;
  let x_375 : f32 = u_xlat21;
  u_xlat16 = dot(vec2<f32>(x_373, x_373), vec2<f32>(x_375, x_375));
  let x_378 : f32 = u_xlat16;
  u_xlat16 = (x_378 + -0.5f);
  let x_381 : f32 = u_xlat23;
  u_xlat3.x = (-(x_381) + 1.0f);
  let x_387 : f32 = u_xlat3.x;
  let x_389 : f32 = u_xlat3.x;
  u_xlat10 = (x_387 * x_389);
  let x_391 : f32 = u_xlat10;
  let x_392 : f32 = u_xlat10;
  u_xlat10 = (x_391 * x_392);
  let x_395 : f32 = u_xlat3.x;
  let x_396 : f32 = u_xlat10;
  u_xlat3.x = (x_395 * x_396);
  let x_399 : f32 = u_xlat16;
  let x_401 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_399 * x_401) + 1.0f);
  let x_405 : f32 = u_xlat22;
  u_xlat10 = (-(abs(x_405)) + 1.0f);
  let x_410 : f32 = u_xlat10;
  let x_411 : f32 = u_xlat10;
  u_xlat17 = (x_410 * x_411);
  let x_413 : f32 = u_xlat17;
  let x_414 : f32 = u_xlat17;
  u_xlat17 = (x_413 * x_414);
  let x_416 : f32 = u_xlat10;
  let x_417 : f32 = u_xlat17;
  u_xlat10 = (x_416 * x_417);
  let x_419 : f32 = u_xlat16;
  let x_420 : f32 = u_xlat10;
  u_xlat16 = ((x_419 * x_420) + 1.0f);
  let x_423 : f32 = u_xlat16;
  let x_425 : f32 = u_xlat3.x;
  u_xlat16 = (x_423 * x_425);
  let x_427 : f32 = u_xlat23;
  let x_428 : f32 = u_xlat16;
  u_xlat16 = (x_427 * x_428);
  let x_430 : f32 = u_xlat21;
  let x_431 : f32 = u_xlat21;
  u_xlat21 = (x_430 * x_431);
  let x_433 : f32 = u_xlat21;
  u_xlat21 = max(x_433, 0.002f);
  let x_436 : f32 = u_xlat21;
  u_xlat3.x = (-(x_436) + 1.0f);
  let x_440 : f32 = u_xlat22;
  let x_443 : f32 = u_xlat3.x;
  let x_445 : f32 = u_xlat21;
  u_xlat10 = ((abs(x_440) * x_443) + x_445);
  let x_447 : f32 = u_xlat23;
  let x_449 : f32 = u_xlat3.x;
  let x_451 : f32 = u_xlat21;
  u_xlat3.x = ((x_447 * x_449) + x_451);
  let x_454 : f32 = u_xlat22;
  let x_457 : f32 = u_xlat3.x;
  u_xlat22 = (abs(x_454) * x_457);
  let x_459 : f32 = u_xlat23;
  let x_460 : f32 = u_xlat10;
  let x_462 : f32 = u_xlat22;
  u_xlat22 = ((x_459 * x_460) + x_462);
  let x_464 : f32 = u_xlat22;
  u_xlat22 = (x_464 + 0.00001f);
  let x_467 : f32 = u_xlat22;
  u_xlat22 = (0.5f / x_467);
  let x_469 : f32 = u_xlat21;
  let x_470 : f32 = u_xlat21;
  u_xlat21 = (x_469 * x_470);
  let x_473 : f32 = u_xlat2.x;
  let x_474 : f32 = u_xlat21;
  let x_477 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_473 * x_474) + -(x_477));
  let x_482 : f32 = u_xlat3.x;
  let x_484 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_482 * x_484) + 1.0f);
  let x_488 : f32 = u_xlat21;
  u_xlat21 = (x_488 * 0.318309873f);
  let x_492 : f32 = u_xlat2.x;
  let x_494 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_492 * x_494) + 0.0000001f);
  let x_499 : f32 = u_xlat21;
  let x_501 : f32 = u_xlat2.x;
  u_xlat21 = (x_499 / x_501);
  let x_503 : f32 = u_xlat21;
  let x_504 : f32 = u_xlat22;
  u_xlat21 = (x_503 * x_504);
  let x_506 : f32 = u_xlat23;
  let x_507 : f32 = u_xlat21;
  u_xlat21 = (x_506 * x_507);
  let x_509 : f32 = u_xlat21;
  u_xlat21 = (x_509 * 3.141592741f);
  let x_512 : f32 = u_xlat21;
  u_xlat21 = max(x_512, 0.0f);
  let x_514 : vec3<f32> = u_xlat0;
  let x_515 : vec3<f32> = u_xlat0;
  u_xlat22 = dot(x_514, x_515);
  let x_518 : f32 = u_xlat22;
  u_xlatb22 = !((x_518 == 0.0f));
  let x_520 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_520);
  let x_522 : f32 = u_xlat21;
  let x_523 : f32 = u_xlat22;
  u_xlat21 = (x_522 * x_523);
  let x_525 : f32 = u_xlat16;
  let x_527 : vec3<f32> = u_xlat6;
  let x_528 : vec3<f32> = (vec3<f32>(x_525, x_525, x_525) * x_527);
  let x_529 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_528.x, x_529.y, x_528.y, x_528.z);
  let x_531 : vec3<f32> = u_xlat6;
  let x_532 : f32 = u_xlat21;
  u_xlat3 = (x_531 * vec3<f32>(x_532, x_532, x_532));
  let x_535 : f32 = u_xlat9;
  u_xlat21 = (-(x_535) + 1.0f);
  let x_538 : f32 = u_xlat21;
  let x_539 : f32 = u_xlat21;
  u_xlat22 = (x_538 * x_539);
  let x_541 : f32 = u_xlat22;
  let x_542 : f32 = u_xlat22;
  u_xlat22 = (x_541 * x_542);
  let x_544 : f32 = u_xlat21;
  let x_545 : f32 = u_xlat22;
  u_xlat21 = (x_544 * x_545);
  let x_547 : vec3<f32> = u_xlat0;
  u_xlat4 = (-(x_547) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_551 : vec3<f32> = u_xlat4;
  let x_552 : f32 = u_xlat21;
  let x_555 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_551 * vec3<f32>(x_552, x_552, x_552)) + x_555);
  let x_557 : vec3<f32> = u_xlat0;
  let x_558 : vec3<f32> = u_xlat3;
  u_xlat0 = (x_557 * x_558);
  let x_562 : vec3<f32> = u_xlat1;
  let x_563 : vec4<f32> = u_xlat2;
  let x_566 : vec3<f32> = u_xlat0;
  let x_567 : vec3<f32> = ((x_562 * vec3<f32>(x_563.x, x_563.z, x_563.w)) + x_566);
  let x_568 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_567.x, x_567.y, x_567.z, x_568.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

