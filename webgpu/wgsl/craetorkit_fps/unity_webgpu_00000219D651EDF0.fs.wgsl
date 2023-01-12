struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  x_LightShadowData : vec4<f32>,
  unity_ShadowFadeCenterAndType : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_SpecCube0_BoxMax : vec4<f32>,
  unity_SpecCube0_BoxMin : vec4<f32>,
  unity_SpecCube0_ProbePosition : vec4<f32>,
  unity_SpecCube0_HDR : vec4<f32>,
  unity_SpecCube1_BoxMax : vec4<f32>,
  unity_SpecCube1_BoxMin : vec4<f32>,
  unity_SpecCube1_ProbePosition : vec4<f32>,
  unity_SpecCube1_HDR : vec4<f32>,
  unity_ProbeVolumeParams : vec4<f32>,
  unity_ProbeVolumeWorldToObject : mat4x4<f32>,
  unity_ProbeVolumeSizeInv : vec3<f32>,
  @size(4)
  padding_1 : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_LightColor0 : vec4<f32>,
  x_Glossiness : f32,
  x_Metallic : f32,
  @size(8)
  padding_3 : u32,
  x_Color : vec4<f32>,
  x_Color2 : vec4<f32>,
}

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_18 : PGlobals;

var<private> vs_TEXCOORD3 : f32;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var x_Gradient : texture_2d<f32>;

@group(0) @binding(8) var sampler_Gradient : sampler;

@group(0) @binding(4) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(6) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(1) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_ShadowMapTexture : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(0) @binding(2) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

@group(0) @binding(3) var unity_SpecCube1 : texture_cube<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat30 : f32;
  var u_xlat1 : vec4<f32>;
  var u_xlat31 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlatb31 : bool;
  var u_xlatb2 : bool;
  var u_xlat12 : vec3<f32>;
  var x_219 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlatb7 : vec3<bool>;
  var hlslcc_movcTemp : vec3<f32>;
  var x_419 : f32;
  var x_431 : f32;
  var x_443 : f32;
  var u_xlat33 : f32;
  var u_xlatb34 : bool;
  var u_xlat34 : f32;
  var u_xlat7 : vec3<f32>;
  var u_xlat8 : vec3<f32>;
  var u_xlatb9 : vec3<bool>;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_595 : f32;
  var x_607 : f32;
  var x_619 : f32;
  var u_xlat11 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlat20 : f32;
  var u_xlat21 : f32;
  var u_xlatb1 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec3<f32> = vs_TEXCOORD2;
  let x_23 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  let x_24 : vec3<f32> = (-(x_13) + x_23);
  let x_25 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_24.x, x_24.y, x_24.z, x_25.w);
  let x_29 : vec4<f32> = u_xlat0;
  let x_31 : vec4<f32> = u_xlat0;
  u_xlat30 = dot(vec3<f32>(x_29.x, x_29.y, x_29.z), vec3<f32>(x_31.x, x_31.y, x_31.z));
  let x_34 : f32 = u_xlat30;
  u_xlat30 = inverseSqrt(x_34);
  let x_37 : f32 = u_xlat30;
  let x_39 : vec4<f32> = u_xlat0;
  let x_41 : vec3<f32> = (vec3<f32>(x_37, x_37, x_37) * vec3<f32>(x_39.x, x_39.y, x_39.z));
  let x_42 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_41.x, x_41.y, x_41.z, x_42.w);
  let x_47 : f32 = vs_TEXCOORD3;
  u_xlat31 = (x_47 + -1.0f);
  let x_50 : f32 = u_xlat31;
  u_xlat31 = (x_50 * -9.999998093f);
  let x_53 : f32 = u_xlat31;
  u_xlat31 = clamp(x_53, 0.0f, 1.0f);
  let x_58 : f32 = u_xlat31;
  let x_64 : vec2<f32> = vs_TEXCOORD0;
  let x_65 : vec2<f32> = (-(vec2<f32>(x_58, x_58)) + x_64);
  let x_66 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_65.x, x_65.y, x_66.z, x_66.w);
  let x_78 : vec4<f32> = u_xlat2;
  let x_80 : vec4<f32> = textureSample(x_Gradient, sampler_Gradient, vec2<f32>(x_78.x, x_78.y));
  u_xlat31 = x_80.x;
  let x_87 : vec2<f32> = vs_TEXCOORD0;
  let x_88 : vec4<f32> = textureSample(x_Gradient, sampler_Gradient, x_87);
  u_xlat2.x = x_88.z;
  let x_92 : f32 = u_xlat31;
  u_xlat31 = ((x_92 * -2.0f) + 1.0f);
  let x_97 : f32 = u_xlat2.x;
  let x_99 : f32 = u_xlat31;
  u_xlat31 = (-(x_97) + x_99);
  let x_104 : f32 = u_xlat31;
  u_xlatb31 = (x_104 < 0.0f);
  let x_106 : bool = u_xlatb31;
  if (((select(0i, 1i, x_106) * -1i) != 0i)) {
    discard;
  }
  let x_118 : f32 = x_18.unity_MatrixV[0i].z;
  u_xlat2.x = x_118;
  let x_121 : f32 = x_18.unity_MatrixV[1i].z;
  u_xlat2.y = x_121;
  let x_126 : f32 = x_18.unity_MatrixV[2i].z;
  u_xlat2.z = x_126;
  let x_128 : vec4<f32> = u_xlat0;
  let x_130 : vec4<f32> = u_xlat2;
  u_xlat31 = dot(vec3<f32>(x_128.x, x_128.y, x_128.z), vec3<f32>(x_130.x, x_130.y, x_130.z));
  let x_133 : vec3<f32> = vs_TEXCOORD2;
  let x_137 : vec4<f32> = x_18.unity_ShadowFadeCenterAndType;
  let x_140 : vec3<f32> = (x_133 + -(vec3<f32>(x_137.x, x_137.y, x_137.z)));
  let x_141 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_140.x, x_140.y, x_140.z, x_141.w);
  let x_143 : vec4<f32> = u_xlat2;
  let x_145 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_143.x, x_143.y, x_143.z), vec3<f32>(x_145.x, x_145.y, x_145.z));
  let x_150 : f32 = u_xlat2.x;
  u_xlat2.x = sqrt(x_150);
  let x_153 : f32 = u_xlat31;
  let x_156 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_153) + x_156);
  let x_161 : f32 = x_18.unity_ShadowFadeCenterAndType.w;
  let x_163 : f32 = u_xlat2.x;
  let x_165 : f32 = u_xlat31;
  u_xlat31 = ((x_161 * x_163) + x_165);
  let x_167 : f32 = u_xlat31;
  let x_170 : f32 = x_18.x_LightShadowData.z;
  let x_173 : f32 = x_18.x_LightShadowData.w;
  u_xlat31 = ((x_167 * x_170) + x_173);
  let x_175 : f32 = u_xlat31;
  u_xlat31 = clamp(x_175, 0.0f, 1.0f);
  let x_180 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb2 = (x_180 == 1.0f);
  let x_182 : bool = u_xlatb2;
  if (x_182) {
    let x_186 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb2 = (x_186 == 1.0f);
    let x_190 : vec3<f32> = vs_TEXCOORD2;
    let x_194 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    u_xlat12 = (vec3<f32>(x_190.y, x_190.y, x_190.y) * vec3<f32>(x_194.x, x_194.y, x_194.z));
    let x_198 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_200 : vec3<f32> = vs_TEXCOORD2;
    let x_203 : vec3<f32> = u_xlat12;
    u_xlat12 = ((vec3<f32>(x_198.x, x_198.y, x_198.z) * vec3<f32>(x_200.x, x_200.x, x_200.x)) + x_203);
    let x_206 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_208 : vec3<f32> = vs_TEXCOORD2;
    let x_211 : vec3<f32> = u_xlat12;
    u_xlat12 = ((vec3<f32>(x_206.x, x_206.y, x_206.z) * vec3<f32>(x_208.z, x_208.z, x_208.z)) + x_211);
    let x_213 : vec3<f32> = u_xlat12;
    let x_215 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    u_xlat12 = (x_213 + vec3<f32>(x_215.x, x_215.y, x_215.z));
    let x_218 : bool = u_xlatb2;
    if (x_218) {
      let x_222 : vec3<f32> = u_xlat12;
      x_219 = x_222;
    } else {
      let x_224 : vec3<f32> = vs_TEXCOORD2;
      x_219 = x_224;
    }
    let x_225 : vec3<f32> = x_219;
    let x_226 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_225.x, x_225.y, x_225.z, x_226.w);
    let x_228 : vec4<f32> = u_xlat2;
    let x_232 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_234 : vec3<f32> = (vec3<f32>(x_228.x, x_228.y, x_228.z) + -(x_232));
    let x_235 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_234.x, x_234.y, x_234.z, x_235.w);
    let x_237 : vec4<f32> = u_xlat2;
    let x_241 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_242 : vec3<f32> = (vec3<f32>(x_237.x, x_237.y, x_237.z) * x_241);
    let x_243 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_243.x, x_242.x, x_242.y, x_242.z);
    let x_246 : f32 = u_xlat2.y;
    u_xlat12.x = ((x_246 * 0.25f) + 0.75f);
    let x_254 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat3.x = ((x_254 * 0.5f) + 0.75f);
    let x_260 : f32 = u_xlat12.x;
    let x_262 : f32 = u_xlat3.x;
    u_xlat2.x = max(x_260, x_262);
    let x_273 : vec4<f32> = u_xlat2;
    let x_275 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_273.x, x_273.z, x_273.w));
    u_xlat2 = x_275;
  } else {
    u_xlat2.x = 1.0f;
    u_xlat2.y = 1.0f;
    u_xlat2.z = 1.0f;
    u_xlat2.w = 1.0f;
  }
  let x_281 : vec4<f32> = u_xlat2;
  let x_283 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat2.x = dot(x_281, x_283);
  let x_287 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_287, 0.0f, 1.0f);
  let x_292 : vec4<f32> = vs_TEXCOORD6;
  let x_294 : vec4<f32> = vs_TEXCOORD6;
  let x_296 : vec2<f32> = (vec2<f32>(x_292.x, x_292.y) / vec2<f32>(x_294.w, x_294.w));
  let x_297 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_296.x, x_296.y, x_297.z);
  let x_304 : vec3<f32> = u_xlat12;
  let x_306 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, vec2<f32>(x_304.x, x_304.y));
  u_xlat12.x = x_306.x;
  let x_310 : f32 = u_xlat12.x;
  let x_313 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_310) + x_313);
  let x_316 : f32 = u_xlat31;
  let x_318 : f32 = u_xlat2.x;
  let x_321 : f32 = u_xlat12.x;
  u_xlat31 = ((x_316 * x_318) + x_321);
  let x_325 : f32 = x_18.x_Glossiness;
  u_xlat2.x = (-(x_325) + 1.0f);
  let x_329 : vec4<f32> = u_xlat1;
  let x_333 : vec3<f32> = vs_TEXCOORD1;
  u_xlat12.x = dot(-(vec3<f32>(x_329.x, x_329.y, x_329.z)), x_333);
  let x_337 : f32 = u_xlat12.x;
  let x_339 : f32 = u_xlat12.x;
  u_xlat12.x = (x_337 + x_339);
  let x_342 : vec3<f32> = vs_TEXCOORD1;
  let x_343 : vec3<f32> = u_xlat12;
  let x_347 : vec4<f32> = u_xlat1;
  u_xlat12 = ((x_342 * -(vec3<f32>(x_343.x, x_343.x, x_343.x))) + -(vec3<f32>(x_347.x, x_347.y, x_347.z)));
  let x_351 : f32 = u_xlat31;
  let x_355 : vec4<f32> = x_18.x_LightColor0;
  u_xlat3 = (vec3<f32>(x_351, x_351, x_351) * vec3<f32>(x_355.x, x_355.y, x_355.z));
  let x_360 : f32 = x_18.unity_SpecCube0_ProbePosition.w;
  u_xlatb31 = (0.0f < x_360);
  let x_362 : bool = u_xlatb31;
  if (x_362) {
    let x_365 : vec3<f32> = u_xlat12;
    let x_366 : vec3<f32> = u_xlat12;
    u_xlat31 = dot(x_365, x_366);
    let x_368 : f32 = u_xlat31;
    u_xlat31 = inverseSqrt(x_368);
    let x_371 : f32 = u_xlat31;
    let x_373 : vec3<f32> = u_xlat12;
    let x_374 : vec3<f32> = (vec3<f32>(x_371, x_371, x_371) * x_373);
    let x_375 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_374.x, x_374.y, x_374.z, x_375.w);
    let x_378 : vec3<f32> = vs_TEXCOORD2;
    let x_382 : vec4<f32> = x_18.unity_SpecCube0_BoxMax;
    u_xlat5 = (-(x_378) + vec3<f32>(x_382.x, x_382.y, x_382.z));
    let x_385 : vec3<f32> = u_xlat5;
    let x_386 : vec4<f32> = u_xlat4;
    u_xlat5 = (x_385 / vec3<f32>(x_386.x, x_386.y, x_386.z));
    let x_390 : vec3<f32> = vs_TEXCOORD2;
    let x_394 : vec4<f32> = x_18.unity_SpecCube0_BoxMin;
    let x_396 : vec3<f32> = (-(x_390) + vec3<f32>(x_394.x, x_394.y, x_394.z));
    let x_397 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_396.x, x_396.y, x_396.z, x_397.w);
    let x_399 : vec4<f32> = u_xlat6;
    let x_401 : vec4<f32> = u_xlat4;
    let x_403 : vec3<f32> = (vec3<f32>(x_399.x, x_399.y, x_399.z) / vec3<f32>(x_401.x, x_401.y, x_401.z));
    let x_404 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_403.x, x_403.y, x_403.z, x_404.w);
    let x_410 : vec4<f32> = u_xlat4;
    let x_413 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_410.x, x_410.y, x_410.z, x_410.x));
    u_xlatb7 = vec3<bool>(x_413.x, x_413.y, x_413.z);
    let x_416 : vec3<f32> = u_xlat5;
    hlslcc_movcTemp = x_416;
    let x_418 : bool = u_xlatb7.x;
    if (x_418) {
      let x_423 : f32 = u_xlat5.x;
      x_419 = x_423;
    } else {
      let x_426 : f32 = u_xlat6.x;
      x_419 = x_426;
    }
    let x_427 : f32 = x_419;
    hlslcc_movcTemp.x = x_427;
    let x_430 : bool = u_xlatb7.y;
    if (x_430) {
      let x_435 : f32 = u_xlat5.y;
      x_431 = x_435;
    } else {
      let x_438 : f32 = u_xlat6.y;
      x_431 = x_438;
    }
    let x_439 : f32 = x_431;
    hlslcc_movcTemp.y = x_439;
    let x_442 : bool = u_xlatb7.z;
    if (x_442) {
      let x_447 : f32 = u_xlat5.z;
      x_443 = x_447;
    } else {
      let x_450 : f32 = u_xlat6.z;
      x_443 = x_450;
    }
    let x_451 : f32 = x_443;
    hlslcc_movcTemp.z = x_451;
    let x_453 : vec3<f32> = hlslcc_movcTemp;
    u_xlat5 = x_453;
    let x_455 : f32 = u_xlat5.y;
    let x_457 : f32 = u_xlat5.x;
    u_xlat31 = min(x_455, x_457);
    let x_460 : f32 = u_xlat5.z;
    let x_461 : f32 = u_xlat31;
    u_xlat31 = min(x_460, x_461);
    let x_463 : vec3<f32> = vs_TEXCOORD2;
    let x_465 : vec4<f32> = x_18.unity_SpecCube0_ProbePosition;
    u_xlat5 = (x_463 + -(vec3<f32>(x_465.x, x_465.y, x_465.z)));
    let x_469 : vec4<f32> = u_xlat4;
    let x_471 : f32 = u_xlat31;
    let x_474 : vec3<f32> = u_xlat5;
    let x_475 : vec3<f32> = ((vec3<f32>(x_469.x, x_469.y, x_469.z) * vec3<f32>(x_471, x_471, x_471)) + x_474);
    let x_476 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_475.x, x_475.y, x_475.z, x_476.w);
  } else {
    let x_479 : vec3<f32> = u_xlat12;
    let x_480 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_479.x, x_479.y, x_479.z, x_480.w);
  }
  let x_483 : f32 = u_xlat2.x;
  u_xlat31 = ((-(x_483) * 0.699999988f) + 1.700000048f);
  let x_489 : f32 = u_xlat31;
  let x_491 : f32 = u_xlat2.x;
  u_xlat31 = (x_489 * x_491);
  let x_493 : f32 = u_xlat31;
  u_xlat31 = (x_493 * 6.0f);
  let x_504 : vec4<f32> = u_xlat4;
  let x_506 : f32 = u_xlat31;
  let x_507 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_504.x, x_504.y, x_504.z), x_506);
  u_xlat4 = x_507;
  let x_510 : f32 = u_xlat4.w;
  u_xlat33 = (x_510 + -1.0f);
  let x_514 : f32 = x_18.unity_SpecCube0_HDR.w;
  let x_515 : f32 = u_xlat33;
  u_xlat33 = ((x_514 * x_515) + 1.0f);
  let x_518 : f32 = u_xlat33;
  u_xlat33 = log2(x_518);
  let x_520 : f32 = u_xlat33;
  let x_522 : f32 = x_18.unity_SpecCube0_HDR.y;
  u_xlat33 = (x_520 * x_522);
  let x_524 : f32 = u_xlat33;
  u_xlat33 = exp2(x_524);
  let x_526 : f32 = u_xlat33;
  let x_528 : f32 = x_18.unity_SpecCube0_HDR.x;
  u_xlat33 = (x_526 * x_528);
  let x_530 : vec4<f32> = u_xlat4;
  let x_532 : f32 = u_xlat33;
  u_xlat5 = (vec3<f32>(x_530.x, x_530.y, x_530.z) * vec3<f32>(x_532, x_532, x_532));
  let x_537 : f32 = x_18.unity_SpecCube0_BoxMin.w;
  u_xlatb34 = (x_537 < 0.999989986f);
  let x_540 : bool = u_xlatb34;
  if (x_540) {
    let x_545 : f32 = x_18.unity_SpecCube1_ProbePosition.w;
    u_xlatb34 = (0.0f < x_545);
    let x_547 : bool = u_xlatb34;
    if (x_547) {
      let x_551 : vec3<f32> = u_xlat12;
      let x_552 : vec3<f32> = u_xlat12;
      u_xlat34 = dot(x_551, x_552);
      let x_554 : f32 = u_xlat34;
      u_xlat34 = inverseSqrt(x_554);
      let x_556 : vec3<f32> = u_xlat12;
      let x_557 : f32 = u_xlat34;
      let x_559 : vec3<f32> = (x_556 * vec3<f32>(x_557, x_557, x_557));
      let x_560 : vec4<f32> = u_xlat6;
      u_xlat6 = vec4<f32>(x_559.x, x_559.y, x_559.z, x_560.w);
      let x_563 : vec3<f32> = vs_TEXCOORD2;
      let x_567 : vec4<f32> = x_18.unity_SpecCube1_BoxMax;
      u_xlat7 = (-(x_563) + vec3<f32>(x_567.x, x_567.y, x_567.z));
      let x_570 : vec3<f32> = u_xlat7;
      let x_571 : vec4<f32> = u_xlat6;
      u_xlat7 = (x_570 / vec3<f32>(x_571.x, x_571.y, x_571.z));
      let x_575 : vec3<f32> = vs_TEXCOORD2;
      let x_579 : vec4<f32> = x_18.unity_SpecCube1_BoxMin;
      u_xlat8 = (-(x_575) + vec3<f32>(x_579.x, x_579.y, x_579.z));
      let x_582 : vec3<f32> = u_xlat8;
      let x_583 : vec4<f32> = u_xlat6;
      u_xlat8 = (x_582 / vec3<f32>(x_583.x, x_583.y, x_583.z));
      let x_587 : vec4<f32> = u_xlat6;
      let x_589 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_587.x, x_587.y, x_587.z, x_587.x));
      u_xlatb9 = vec3<bool>(x_589.x, x_589.y, x_589.z);
      let x_592 : vec3<f32> = u_xlat7;
      hlslcc_movcTemp_1 = x_592;
      let x_594 : bool = u_xlatb9.x;
      if (x_594) {
        let x_599 : f32 = u_xlat7.x;
        x_595 = x_599;
      } else {
        let x_602 : f32 = u_xlat8.x;
        x_595 = x_602;
      }
      let x_603 : f32 = x_595;
      hlslcc_movcTemp_1.x = x_603;
      let x_606 : bool = u_xlatb9.y;
      if (x_606) {
        let x_611 : f32 = u_xlat7.y;
        x_607 = x_611;
      } else {
        let x_614 : f32 = u_xlat8.y;
        x_607 = x_614;
      }
      let x_615 : f32 = x_607;
      hlslcc_movcTemp_1.y = x_615;
      let x_618 : bool = u_xlatb9.z;
      if (x_618) {
        let x_623 : f32 = u_xlat7.z;
        x_619 = x_623;
      } else {
        let x_626 : f32 = u_xlat8.z;
        x_619 = x_626;
      }
      let x_627 : f32 = x_619;
      hlslcc_movcTemp_1.z = x_627;
      let x_629 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat7 = x_629;
      let x_631 : f32 = u_xlat7.y;
      let x_633 : f32 = u_xlat7.x;
      u_xlat34 = min(x_631, x_633);
      let x_636 : f32 = u_xlat7.z;
      let x_637 : f32 = u_xlat34;
      u_xlat34 = min(x_636, x_637);
      let x_639 : vec3<f32> = vs_TEXCOORD2;
      let x_641 : vec4<f32> = x_18.unity_SpecCube1_ProbePosition;
      u_xlat7 = (x_639 + -(vec3<f32>(x_641.x, x_641.y, x_641.z)));
      let x_645 : vec4<f32> = u_xlat6;
      let x_647 : f32 = u_xlat34;
      let x_650 : vec3<f32> = u_xlat7;
      u_xlat12 = ((vec3<f32>(x_645.x, x_645.y, x_645.z) * vec3<f32>(x_647, x_647, x_647)) + x_650);
    }
    let x_656 : vec3<f32> = u_xlat12;
    let x_657 : f32 = u_xlat31;
    let x_658 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, x_656, x_657);
    u_xlat6 = x_658;
    let x_660 : f32 = u_xlat6.w;
    u_xlat31 = (x_660 + -1.0f);
    let x_664 : f32 = x_18.unity_SpecCube1_HDR.w;
    let x_665 : f32 = u_xlat31;
    u_xlat31 = ((x_664 * x_665) + 1.0f);
    let x_668 : f32 = u_xlat31;
    u_xlat31 = log2(x_668);
    let x_670 : f32 = u_xlat31;
    let x_672 : f32 = x_18.unity_SpecCube1_HDR.y;
    u_xlat31 = (x_670 * x_672);
    let x_674 : f32 = u_xlat31;
    u_xlat31 = exp2(x_674);
    let x_676 : f32 = u_xlat31;
    let x_678 : f32 = x_18.unity_SpecCube1_HDR.x;
    u_xlat31 = (x_676 * x_678);
    let x_680 : vec4<f32> = u_xlat6;
    let x_682 : f32 = u_xlat31;
    u_xlat12 = (vec3<f32>(x_680.x, x_680.y, x_680.z) * vec3<f32>(x_682, x_682, x_682));
    let x_685 : f32 = u_xlat33;
    let x_687 : vec4<f32> = u_xlat4;
    let x_690 : vec3<f32> = u_xlat12;
    let x_692 : vec3<f32> = ((vec3<f32>(x_685, x_685, x_685) * vec3<f32>(x_687.x, x_687.y, x_687.z)) + -(x_690));
    let x_693 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_692.x, x_692.y, x_692.z, x_693.w);
    let x_696 : vec4<f32> = x_18.unity_SpecCube0_BoxMin;
    let x_698 : vec4<f32> = u_xlat4;
    let x_701 : vec3<f32> = u_xlat12;
    u_xlat5 = ((vec3<f32>(x_696.w, x_696.w, x_696.w) * vec3<f32>(x_698.x, x_698.y, x_698.z)) + x_701);
  }
  let x_703 : vec3<f32> = vs_TEXCOORD1;
  let x_704 : vec3<f32> = vs_TEXCOORD1;
  u_xlat31 = dot(x_703, x_704);
  let x_706 : f32 = u_xlat31;
  u_xlat31 = inverseSqrt(x_706);
  let x_708 : f32 = u_xlat31;
  let x_710 : vec3<f32> = vs_TEXCOORD1;
  u_xlat12 = (vec3<f32>(x_708, x_708, x_708) * x_710);
  let x_714 : vec4<f32> = x_18.x_Color;
  let x_718 : vec3<f32> = (vec3<f32>(x_714.x, x_714.y, x_714.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_719 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_718.x, x_718.y, x_718.z, x_719.w);
  let x_723 : f32 = x_18.x_Metallic;
  let x_725 : f32 = x_18.x_Metallic;
  let x_727 : f32 = x_18.x_Metallic;
  let x_728 : vec3<f32> = vec3<f32>(x_723, x_725, x_727);
  let x_733 : vec4<f32> = u_xlat4;
  let x_738 : vec3<f32> = ((vec3<f32>(x_728.x, x_728.y, x_728.z) * vec3<f32>(x_733.x, x_733.y, x_733.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_739 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_738.x, x_738.y, x_738.z, x_739.w);
  let x_742 : f32 = x_18.x_Metallic;
  u_xlat31 = ((-(x_742) * 0.959999979f) + 0.959999979f);
  let x_747 : f32 = u_xlat31;
  let x_750 : vec4<f32> = x_18.x_Color;
  let x_752 : vec3<f32> = (vec3<f32>(x_747, x_747, x_747) * vec3<f32>(x_750.x, x_750.y, x_750.z));
  let x_753 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_752.x, x_752.y, x_752.z, x_753.w);
  let x_755 : vec4<f32> = u_xlat0;
  let x_757 : f32 = u_xlat30;
  let x_761 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_763 : vec3<f32> = ((vec3<f32>(x_755.x, x_755.y, x_755.z) * vec3<f32>(x_757, x_757, x_757)) + vec3<f32>(x_761.x, x_761.y, x_761.z));
  let x_764 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_763.x, x_763.y, x_763.z, x_764.w);
  let x_766 : vec4<f32> = u_xlat0;
  let x_768 : vec4<f32> = u_xlat0;
  u_xlat30 = dot(vec3<f32>(x_766.x, x_766.y, x_766.z), vec3<f32>(x_768.x, x_768.y, x_768.z));
  let x_771 : f32 = u_xlat30;
  u_xlat30 = max(x_771, 0.001f);
  let x_774 : f32 = u_xlat30;
  u_xlat30 = inverseSqrt(x_774);
  let x_776 : f32 = u_xlat30;
  let x_778 : vec4<f32> = u_xlat0;
  let x_780 : vec3<f32> = (vec3<f32>(x_776, x_776, x_776) * vec3<f32>(x_778.x, x_778.y, x_778.z));
  let x_781 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_780.x, x_780.y, x_780.z, x_781.w);
  let x_783 : vec3<f32> = u_xlat12;
  let x_784 : vec4<f32> = u_xlat1;
  u_xlat30 = dot(x_783, vec3<f32>(x_784.x, x_784.y, x_784.z));
  let x_787 : vec3<f32> = u_xlat12;
  let x_789 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat1.x = dot(x_787, vec3<f32>(x_789.x, x_789.y, x_789.z));
  let x_794 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_794, 0.0f, 1.0f);
  let x_798 : vec3<f32> = u_xlat12;
  let x_799 : vec4<f32> = u_xlat0;
  u_xlat11 = dot(x_798, vec3<f32>(x_799.x, x_799.y, x_799.z));
  let x_802 : f32 = u_xlat11;
  u_xlat11 = clamp(x_802, 0.0f, 1.0f);
  let x_805 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_807 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_805.x, x_805.y, x_805.z), vec3<f32>(x_807.x, x_807.y, x_807.z));
  let x_812 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_812, 0.0f, 1.0f);
  let x_817 : f32 = u_xlat0.x;
  let x_819 : f32 = u_xlat0.x;
  u_xlat10.x = (x_817 * x_819);
  let x_822 : vec3<f32> = u_xlat10;
  let x_824 : vec4<f32> = u_xlat2;
  u_xlat10.x = dot(vec2<f32>(x_822.x, x_822.x), vec2<f32>(x_824.x, x_824.x));
  let x_829 : f32 = u_xlat10.x;
  u_xlat10.x = (x_829 + -0.5f);
  let x_835 : f32 = u_xlat1.x;
  u_xlat20 = (-(x_835) + 1.0f);
  let x_839 : f32 = u_xlat20;
  let x_840 : f32 = u_xlat20;
  u_xlat21 = (x_839 * x_840);
  let x_842 : f32 = u_xlat21;
  let x_843 : f32 = u_xlat21;
  u_xlat21 = (x_842 * x_843);
  let x_845 : f32 = u_xlat20;
  let x_846 : f32 = u_xlat21;
  u_xlat20 = (x_845 * x_846);
  let x_849 : f32 = u_xlat10.x;
  let x_850 : f32 = u_xlat20;
  u_xlat20 = ((x_849 * x_850) + 1.0f);
  let x_853 : f32 = u_xlat30;
  u_xlat21 = (-(abs(x_853)) + 1.0f);
  let x_857 : f32 = u_xlat21;
  let x_858 : f32 = u_xlat21;
  u_xlat12.x = (x_857 * x_858);
  let x_862 : f32 = u_xlat12.x;
  let x_864 : f32 = u_xlat12.x;
  u_xlat12.x = (x_862 * x_864);
  let x_867 : f32 = u_xlat21;
  let x_869 : f32 = u_xlat12.x;
  u_xlat21 = (x_867 * x_869);
  let x_872 : f32 = u_xlat10.x;
  let x_873 : f32 = u_xlat21;
  u_xlat10.x = ((x_872 * x_873) + 1.0f);
  let x_878 : f32 = u_xlat10.x;
  let x_879 : f32 = u_xlat20;
  u_xlat10.x = (x_878 * x_879);
  let x_883 : f32 = u_xlat2.x;
  let x_885 : f32 = u_xlat2.x;
  u_xlat20 = (x_883 * x_885);
  let x_887 : f32 = u_xlat20;
  u_xlat20 = max(x_887, 0.002f);
  let x_890 : f32 = u_xlat20;
  u_xlat2.x = (-(x_890) + 1.0f);
  let x_894 : f32 = u_xlat30;
  let x_897 : f32 = u_xlat2.x;
  let x_899 : f32 = u_xlat20;
  u_xlat12.x = ((abs(x_894) * x_897) + x_899);
  let x_903 : f32 = u_xlat1.x;
  let x_905 : f32 = u_xlat2.x;
  let x_907 : f32 = u_xlat20;
  u_xlat2.x = ((x_903 * x_905) + x_907);
  let x_910 : f32 = u_xlat30;
  let x_913 : f32 = u_xlat2.x;
  u_xlat30 = (abs(x_910) * x_913);
  let x_916 : f32 = u_xlat1.x;
  let x_918 : f32 = u_xlat12.x;
  let x_920 : f32 = u_xlat30;
  u_xlat30 = ((x_916 * x_918) + x_920);
  let x_922 : f32 = u_xlat30;
  u_xlat30 = (x_922 + 0.00001f);
  let x_925 : f32 = u_xlat30;
  u_xlat30 = (0.5f / x_925);
  let x_927 : f32 = u_xlat20;
  let x_928 : f32 = u_xlat20;
  u_xlat2.x = (x_927 * x_928);
  let x_931 : f32 = u_xlat11;
  let x_933 : f32 = u_xlat2.x;
  let x_935 : f32 = u_xlat11;
  u_xlat12.x = ((x_931 * x_933) + -(x_935));
  let x_940 : f32 = u_xlat12.x;
  let x_941 : f32 = u_xlat11;
  u_xlat11 = ((x_940 * x_941) + 1.0f);
  let x_945 : f32 = u_xlat2.x;
  u_xlat2.x = (x_945 * 0.318309873f);
  let x_949 : f32 = u_xlat11;
  let x_950 : f32 = u_xlat11;
  u_xlat11 = ((x_949 * x_950) + 0.0000001f);
  let x_955 : f32 = u_xlat2.x;
  let x_956 : f32 = u_xlat11;
  u_xlat11 = (x_955 / x_956);
  let x_958 : f32 = u_xlat30;
  let x_959 : f32 = u_xlat11;
  u_xlat10.z = (x_958 * x_959);
  let x_962 : vec4<f32> = u_xlat1;
  let x_964 : vec3<f32> = u_xlat10;
  let x_966 : vec2<f32> = (vec2<f32>(x_962.x, x_962.x) * vec2<f32>(x_964.x, x_964.z));
  let x_967 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_966.x, x_967.y, x_966.y);
  let x_970 : f32 = u_xlat10.z;
  u_xlat30 = (x_970 * 3.141592741f);
  let x_973 : f32 = u_xlat30;
  u_xlat30 = max(x_973, 0.0f);
  let x_975 : f32 = u_xlat20;
  let x_976 : f32 = u_xlat20;
  u_xlat20 = ((x_975 * x_976) + 1.0f);
  let x_979 : f32 = u_xlat20;
  u_xlat20 = (1.0f / x_979);
  let x_981 : vec4<f32> = u_xlat4;
  let x_983 : vec4<f32> = u_xlat4;
  u_xlat1.x = dot(vec3<f32>(x_981.x, x_981.y, x_981.z), vec3<f32>(x_983.x, x_983.y, x_983.z));
  let x_989 : f32 = u_xlat1.x;
  u_xlatb1 = !((x_989 == 0.0f));
  let x_991 : bool = u_xlatb1;
  u_xlat1.x = select(0.0f, 1.0f, x_991);
  let x_994 : f32 = u_xlat30;
  let x_996 : f32 = u_xlat1.x;
  u_xlat30 = (x_994 * x_996);
  let x_998 : f32 = u_xlat31;
  let x_1001 : f32 = x_18.x_Glossiness;
  u_xlat1.x = (-(x_998) + x_1001);
  let x_1005 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1005 + 1.0f);
  let x_1009 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1009, 0.0f, 1.0f);
  let x_1012 : vec3<f32> = u_xlat10;
  let x_1014 : vec3<f32> = u_xlat3;
  let x_1015 : vec3<f32> = (vec3<f32>(x_1012.x, x_1012.x, x_1012.x) * x_1014);
  let x_1016 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1015.x, x_1015.y, x_1015.z, x_1016.w);
  let x_1018 : vec3<f32> = u_xlat3;
  let x_1019 : f32 = u_xlat30;
  u_xlat3 = (x_1018 * vec3<f32>(x_1019, x_1019, x_1019));
  let x_1023 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_1023) + 1.0f);
  let x_1028 : f32 = u_xlat0.x;
  let x_1030 : f32 = u_xlat0.x;
  u_xlat10.x = (x_1028 * x_1030);
  let x_1034 : f32 = u_xlat10.x;
  let x_1036 : f32 = u_xlat10.x;
  u_xlat10.x = (x_1034 * x_1036);
  let x_1040 : f32 = u_xlat0.x;
  let x_1042 : f32 = u_xlat10.x;
  u_xlat0.x = (x_1040 * x_1042);
  let x_1045 : vec4<f32> = u_xlat4;
  u_xlat7 = (-(vec3<f32>(x_1045.x, x_1045.y, x_1045.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1050 : vec3<f32> = u_xlat7;
  let x_1051 : vec4<f32> = u_xlat0;
  let x_1054 : vec4<f32> = u_xlat4;
  let x_1056 : vec3<f32> = ((x_1050 * vec3<f32>(x_1051.x, x_1051.x, x_1051.x)) + vec3<f32>(x_1054.x, x_1054.y, x_1054.z));
  let x_1057 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1056.x, x_1056.y, x_1057.z, x_1056.z);
  let x_1059 : vec4<f32> = u_xlat0;
  let x_1061 : vec3<f32> = u_xlat3;
  let x_1062 : vec3<f32> = (vec3<f32>(x_1059.x, x_1059.y, x_1059.w) * x_1061);
  let x_1063 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1062.x, x_1062.y, x_1063.z, x_1062.z);
  let x_1065 : vec4<f32> = u_xlat6;
  let x_1067 : vec4<f32> = u_xlat2;
  let x_1070 : vec4<f32> = u_xlat0;
  let x_1072 : vec3<f32> = ((vec3<f32>(x_1065.x, x_1065.y, x_1065.z) * vec3<f32>(x_1067.x, x_1067.y, x_1067.z)) + vec3<f32>(x_1070.x, x_1070.y, x_1070.w));
  let x_1073 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1072.x, x_1072.y, x_1073.z, x_1072.z);
  let x_1075 : vec3<f32> = u_xlat5;
  let x_1076 : f32 = u_xlat20;
  let x_1078 : vec3<f32> = (x_1075 * vec3<f32>(x_1076, x_1076, x_1076));
  let x_1079 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1078.x, x_1078.y, x_1078.z, x_1079.w);
  let x_1081 : vec4<f32> = u_xlat4;
  let x_1084 : vec4<f32> = u_xlat1;
  let x_1086 : vec3<f32> = (-(vec3<f32>(x_1081.x, x_1081.y, x_1081.z)) + vec3<f32>(x_1084.x, x_1084.x, x_1084.x));
  let x_1087 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1086.x, x_1086.y, x_1087.z, x_1086.z);
  let x_1089 : f32 = u_xlat21;
  let x_1091 : vec4<f32> = u_xlat1;
  let x_1094 : vec4<f32> = u_xlat4;
  let x_1096 : vec3<f32> = ((vec3<f32>(x_1089, x_1089, x_1089) * vec3<f32>(x_1091.x, x_1091.y, x_1091.w)) + vec3<f32>(x_1094.x, x_1094.y, x_1094.z));
  let x_1097 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1096.x, x_1096.y, x_1096.z, x_1097.w);
  let x_1099 : vec4<f32> = u_xlat2;
  let x_1101 : vec4<f32> = u_xlat1;
  let x_1104 : vec4<f32> = u_xlat0;
  let x_1106 : vec3<f32> = ((vec3<f32>(x_1099.x, x_1099.y, x_1099.z) * vec3<f32>(x_1101.x, x_1101.y, x_1101.z)) + vec3<f32>(x_1104.x, x_1104.y, x_1104.w));
  let x_1107 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1106.x, x_1106.y, x_1106.z, x_1107.w);
  let x_1111 : vec4<f32> = u_xlat0;
  let x_1115 : vec4<f32> = x_18.x_Color2;
  let x_1117 : vec3<f32> = (vec3<f32>(x_1111.x, x_1111.y, x_1111.z) + vec3<f32>(x_1115.x, x_1115.y, x_1115.z));
  let x_1118 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1117.x, x_1117.y, x_1117.z, x_1118.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(3) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD3_param : f32, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(4) vs_TEXCOORD6_param : vec4<f32>, @location(2) vs_TEXCOORD1_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

