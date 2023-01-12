struct PGlobals {
  x_ProjectionParams : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  unity_FogParams : vec4<f32>,
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

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_33 : PGlobals;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(0) @binding(2) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(3) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(1) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(5) var sampler_LightTexture0 : sampler;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat21 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlatb22 : bool;
  var u_xlat5 : vec4<f32>;
  var x_213 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlat23 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat9 : f32;
  var u_xlat16 : f32;
  var u_xlat10 : f32;
  var u_xlat17 : f32;
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
  let x_120 : vec2<f32> = (vec2<f32>(x_113.y, x_113.y) * vec2<f32>(x_118.x, x_118.y));
  let x_121 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_120.x, x_120.y, x_121.z);
  let x_125 : vec4<f32> = x_33.unity_WorldToLight[0i];
  let x_127 : vec3<f32> = vs_TEXCOORD5;
  let x_130 : vec3<f32> = u_xlat4;
  let x_132 : vec2<f32> = ((vec2<f32>(x_125.x, x_125.y) * vec2<f32>(x_127.x, x_127.x)) + vec2<f32>(x_130.x, x_130.y));
  let x_133 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_132.x, x_132.y, x_133.z);
  let x_137 : vec4<f32> = x_33.unity_WorldToLight[2i];
  let x_139 : vec3<f32> = vs_TEXCOORD5;
  let x_142 : vec3<f32> = u_xlat4;
  let x_144 : vec2<f32> = ((vec2<f32>(x_137.x, x_137.y) * vec2<f32>(x_139.z, x_139.z)) + vec2<f32>(x_142.x, x_142.y));
  let x_145 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_144.x, x_144.y, x_145.z);
  let x_147 : vec3<f32> = u_xlat4;
  let x_151 : vec4<f32> = x_33.unity_WorldToLight[3i];
  let x_153 : vec2<f32> = (vec2<f32>(x_147.x, x_147.y) + vec2<f32>(x_151.x, x_151.y));
  let x_154 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_153.x, x_153.y, x_154.z);
  let x_162 : f32 = x_33.unity_ProbeVolumeParams.x;
  u_xlatb22 = (x_162 == 1.0f);
  let x_165 : bool = u_xlatb22;
  if (x_165) {
    let x_170 : f32 = x_33.unity_ProbeVolumeParams.y;
    u_xlatb22 = (x_170 == 1.0f);
    let x_173 : vec3<f32> = vs_TEXCOORD5;
    let x_177 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[1i];
    let x_179 : vec3<f32> = (vec3<f32>(x_173.y, x_173.y, x_173.y) * vec3<f32>(x_177.x, x_177.y, x_177.z));
    let x_180 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_179.x, x_179.y, x_179.z, x_180.w);
    let x_183 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[0i];
    let x_185 : vec3<f32> = vs_TEXCOORD5;
    let x_188 : vec4<f32> = u_xlat5;
    let x_190 : vec3<f32> = ((vec3<f32>(x_183.x, x_183.y, x_183.z) * vec3<f32>(x_185.x, x_185.x, x_185.x)) + vec3<f32>(x_188.x, x_188.y, x_188.z));
    let x_191 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_190.x, x_190.y, x_190.z, x_191.w);
    let x_194 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[2i];
    let x_196 : vec3<f32> = vs_TEXCOORD5;
    let x_199 : vec4<f32> = u_xlat5;
    let x_201 : vec3<f32> = ((vec3<f32>(x_194.x, x_194.y, x_194.z) * vec3<f32>(x_196.z, x_196.z, x_196.z)) + vec3<f32>(x_199.x, x_199.y, x_199.z));
    let x_202 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_201.x, x_201.y, x_201.z, x_202.w);
    let x_204 : vec4<f32> = u_xlat5;
    let x_207 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[3i];
    let x_209 : vec3<f32> = (vec3<f32>(x_204.x, x_204.y, x_204.z) + vec3<f32>(x_207.x, x_207.y, x_207.z));
    let x_210 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_209.x, x_209.y, x_209.z, x_210.w);
    let x_212 : bool = u_xlatb22;
    if (x_212) {
      let x_216 : vec4<f32> = u_xlat5;
      x_213 = vec3<f32>(x_216.x, x_216.y, x_216.z);
    } else {
      let x_219 : vec3<f32> = vs_TEXCOORD5;
      x_213 = x_219;
    }
    let x_220 : vec3<f32> = x_213;
    let x_221 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_220.x, x_220.y, x_220.z, x_221.w);
    let x_223 : vec4<f32> = u_xlat5;
    let x_228 : vec3<f32> = x_33.unity_ProbeVolumeMin;
    let x_230 : vec3<f32> = (vec3<f32>(x_223.x, x_223.y, x_223.z) + -(x_228));
    let x_231 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_230.x, x_230.y, x_230.z, x_231.w);
    let x_233 : vec4<f32> = u_xlat5;
    let x_237 : vec3<f32> = x_33.unity_ProbeVolumeSizeInv;
    let x_238 : vec3<f32> = (vec3<f32>(x_233.x, x_233.y, x_233.z) * x_237);
    let x_239 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_239.x, x_238.x, x_238.y, x_238.z);
    let x_243 : f32 = u_xlat5.y;
    u_xlat22 = ((x_243 * 0.25f) + 0.75f);
    let x_251 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat23 = ((x_251 * 0.5f) + 0.75f);
    let x_255 : f32 = u_xlat22;
    let x_256 : f32 = u_xlat23;
    u_xlat5.x = max(x_255, x_256);
    let x_267 : vec4<f32> = u_xlat5;
    let x_269 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_267.x, x_267.z, x_267.w));
    u_xlat5 = x_269;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_276 : vec4<f32> = u_xlat5;
  let x_278 : vec4<f32> = x_33.unity_OcclusionMaskSelector;
  u_xlat22 = dot(x_276, x_278);
  let x_280 : f32 = u_xlat22;
  u_xlat22 = clamp(x_280, 0.0f, 1.0f);
  let x_288 : vec3<f32> = u_xlat4;
  let x_290 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_288.x, x_288.y));
  u_xlat23 = x_290.w;
  let x_292 : f32 = u_xlat22;
  let x_293 : f32 = u_xlat23;
  u_xlat22 = (x_292 * x_293);
  let x_295 : f32 = u_xlat22;
  let x_299 : vec4<f32> = x_33.x_LightColor0;
  u_xlat4 = (vec3<f32>(x_295, x_295, x_295) * vec3<f32>(x_299.x, x_299.y, x_299.z));
  let x_304 : f32 = x_33.x_Glossiness;
  u_xlat22 = (-(x_304) + 1.0f);
  let x_310 : f32 = vs_TEXCOORD2.w;
  u_xlat5.x = x_310;
  let x_314 : f32 = vs_TEXCOORD3.w;
  u_xlat5.y = x_314;
  let x_317 : f32 = vs_TEXCOORD4.w;
  u_xlat5.z = x_317;
  let x_320 : vec4<f32> = vs_TEXCOORD1;
  let x_323 : f32 = u_xlat21;
  let x_326 : vec4<f32> = u_xlat5;
  u_xlat6 = ((-(vec3<f32>(x_320.x, x_320.y, x_320.z)) * vec3<f32>(x_323, x_323, x_323)) + vec3<f32>(x_326.x, x_326.y, x_326.z));
  let x_329 : vec3<f32> = u_xlat6;
  let x_330 : vec3<f32> = u_xlat6;
  u_xlat21 = dot(x_329, x_330);
  let x_332 : f32 = u_xlat21;
  u_xlat21 = max(x_332, 0.001f);
  let x_335 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_335);
  let x_337 : f32 = u_xlat21;
  let x_339 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_337, x_337, x_337) * x_339);
  let x_341 : vec4<f32> = u_xlat2;
  let x_343 : vec3<f32> = u_xlat3;
  u_xlat21 = dot(vec3<f32>(x_341.x, x_341.y, x_341.z), -(x_343));
  let x_346 : vec4<f32> = u_xlat2;
  let x_348 : vec4<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_346.x, x_346.y, x_346.z), vec3<f32>(x_348.x, x_348.y, x_348.z));
  let x_351 : f32 = u_xlat23;
  u_xlat23 = clamp(x_351, 0.0f, 1.0f);
  let x_353 : vec4<f32> = u_xlat2;
  let x_355 : vec3<f32> = u_xlat6;
  u_xlat2.x = dot(vec3<f32>(x_353.x, x_353.y, x_353.z), x_355);
  let x_359 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_359, 0.0f, 1.0f);
  let x_363 : vec4<f32> = u_xlat5;
  let x_365 : vec3<f32> = u_xlat6;
  u_xlat9 = dot(vec3<f32>(x_363.x, x_363.y, x_363.z), x_365);
  let x_367 : f32 = u_xlat9;
  u_xlat9 = clamp(x_367, 0.0f, 1.0f);
  let x_370 : f32 = u_xlat9;
  let x_371 : f32 = u_xlat9;
  u_xlat16 = (x_370 * x_371);
  let x_373 : f32 = u_xlat16;
  let x_375 : f32 = u_xlat22;
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
  let x_405 : f32 = u_xlat21;
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
  let x_430 : f32 = u_xlat22;
  let x_431 : f32 = u_xlat22;
  u_xlat22 = (x_430 * x_431);
  let x_433 : f32 = u_xlat22;
  u_xlat22 = max(x_433, 0.002f);
  let x_436 : f32 = u_xlat22;
  u_xlat3.x = (-(x_436) + 1.0f);
  let x_440 : f32 = u_xlat21;
  let x_443 : f32 = u_xlat3.x;
  let x_445 : f32 = u_xlat22;
  u_xlat10 = ((abs(x_440) * x_443) + x_445);
  let x_447 : f32 = u_xlat23;
  let x_449 : f32 = u_xlat3.x;
  let x_451 : f32 = u_xlat22;
  u_xlat3.x = ((x_447 * x_449) + x_451);
  let x_454 : f32 = u_xlat21;
  let x_457 : f32 = u_xlat3.x;
  u_xlat21 = (abs(x_454) * x_457);
  let x_459 : f32 = u_xlat23;
  let x_460 : f32 = u_xlat10;
  let x_462 : f32 = u_xlat21;
  u_xlat21 = ((x_459 * x_460) + x_462);
  let x_464 : f32 = u_xlat21;
  u_xlat21 = (x_464 + 0.00001f);
  let x_467 : f32 = u_xlat21;
  u_xlat21 = (0.5f / x_467);
  let x_469 : f32 = u_xlat22;
  let x_470 : f32 = u_xlat22;
  u_xlat22 = (x_469 * x_470);
  let x_473 : f32 = u_xlat2.x;
  let x_474 : f32 = u_xlat22;
  let x_477 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_473 * x_474) + -(x_477));
  let x_482 : f32 = u_xlat3.x;
  let x_484 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_482 * x_484) + 1.0f);
  let x_488 : f32 = u_xlat22;
  u_xlat22 = (x_488 * 0.318309873f);
  let x_492 : f32 = u_xlat2.x;
  let x_494 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_492 * x_494) + 0.0000001f);
  let x_499 : f32 = u_xlat22;
  let x_501 : f32 = u_xlat2.x;
  u_xlat22 = (x_499 / x_501);
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
  let x_517 : f32 = u_xlat22;
  u_xlatb22 = !((x_517 == 0.0f));
  let x_519 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_519);
  let x_521 : f32 = u_xlat21;
  let x_522 : f32 = u_xlat22;
  u_xlat21 = (x_521 * x_522);
  let x_524 : f32 = u_xlat16;
  let x_526 : vec3<f32> = u_xlat4;
  let x_527 : vec3<f32> = (vec3<f32>(x_524, x_524, x_524) * x_526);
  let x_528 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_527.x, x_528.y, x_527.y, x_527.z);
  let x_530 : vec3<f32> = u_xlat4;
  let x_531 : f32 = u_xlat21;
  u_xlat3 = (x_530 * vec3<f32>(x_531, x_531, x_531));
  let x_534 : f32 = u_xlat9;
  u_xlat21 = (-(x_534) + 1.0f);
  let x_537 : f32 = u_xlat21;
  let x_538 : f32 = u_xlat21;
  u_xlat22 = (x_537 * x_538);
  let x_540 : f32 = u_xlat22;
  let x_541 : f32 = u_xlat22;
  u_xlat22 = (x_540 * x_541);
  let x_543 : f32 = u_xlat21;
  let x_544 : f32 = u_xlat22;
  u_xlat21 = (x_543 * x_544);
  let x_546 : vec3<f32> = u_xlat0;
  u_xlat4 = (-(x_546) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_550 : vec3<f32> = u_xlat4;
  let x_551 : f32 = u_xlat21;
  let x_554 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_550 * vec3<f32>(x_551, x_551, x_551)) + x_554);
  let x_556 : vec3<f32> = u_xlat0;
  let x_557 : vec3<f32> = u_xlat3;
  u_xlat0 = (x_556 * x_557);
  let x_559 : vec3<f32> = u_xlat1;
  let x_560 : vec4<f32> = u_xlat2;
  let x_563 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_559 * vec3<f32>(x_560.x, x_560.z, x_560.w)) + x_563);
  let x_566 : f32 = vs_TEXCOORD1.w;
  let x_568 : f32 = x_33.x_ProjectionParams.y;
  u_xlat21 = (x_566 / x_568);
  let x_570 : f32 = u_xlat21;
  u_xlat21 = (-(x_570) + 1.0f);
  let x_573 : f32 = u_xlat21;
  let x_575 : f32 = x_33.x_ProjectionParams.z;
  u_xlat21 = (x_573 * x_575);
  let x_577 : f32 = u_xlat21;
  u_xlat21 = max(x_577, 0.0f);
  let x_579 : f32 = u_xlat21;
  let x_581 : f32 = x_33.unity_FogParams.x;
  u_xlat21 = (x_579 * x_581);
  let x_583 : f32 = u_xlat21;
  let x_584 : f32 = u_xlat21;
  u_xlat21 = (x_583 * -(x_584));
  let x_587 : f32 = u_xlat21;
  u_xlat21 = exp2(x_587);
  let x_591 : vec3<f32> = u_xlat0;
  let x_592 : f32 = u_xlat21;
  let x_594 : vec3<f32> = (x_591 * vec3<f32>(x_592, x_592, x_592));
  let x_595 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_594.x, x_594.y, x_594.z, x_595.w);
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

