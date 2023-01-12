struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  x_LightShadowData : vec4<f32>,
  unity_ShadowFadeCenterAndType : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_FogColor : vec4<f32>,
  unity_FogParams : vec4<f32>,
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

var<private> vs_TEXCOORD5 : f32;

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
  var x_220 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlatb7 : vec3<bool>;
  var hlslcc_movcTemp : vec3<f32>;
  var x_420 : f32;
  var x_432 : f32;
  var x_444 : f32;
  var u_xlat33 : f32;
  var u_xlatb34 : bool;
  var u_xlat34 : f32;
  var u_xlat7 : vec3<f32>;
  var u_xlat8 : vec3<f32>;
  var u_xlatb9 : vec3<bool>;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_596 : f32;
  var x_608 : f32;
  var x_620 : f32;
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
    let x_216 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    u_xlat12 = (x_213 + vec3<f32>(x_216.x, x_216.y, x_216.z));
    let x_219 : bool = u_xlatb2;
    if (x_219) {
      let x_223 : vec3<f32> = u_xlat12;
      x_220 = x_223;
    } else {
      let x_225 : vec3<f32> = vs_TEXCOORD2;
      x_220 = x_225;
    }
    let x_226 : vec3<f32> = x_220;
    let x_227 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_226.x, x_226.y, x_226.z, x_227.w);
    let x_229 : vec4<f32> = u_xlat2;
    let x_233 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_235 : vec3<f32> = (vec3<f32>(x_229.x, x_229.y, x_229.z) + -(x_233));
    let x_236 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_235.x, x_235.y, x_235.z, x_236.w);
    let x_238 : vec4<f32> = u_xlat2;
    let x_242 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_243 : vec3<f32> = (vec3<f32>(x_238.x, x_238.y, x_238.z) * x_242);
    let x_244 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_244.x, x_243.x, x_243.y, x_243.z);
    let x_247 : f32 = u_xlat2.y;
    u_xlat12.x = ((x_247 * 0.25f) + 0.75f);
    let x_255 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat3.x = ((x_255 * 0.5f) + 0.75f);
    let x_261 : f32 = u_xlat12.x;
    let x_263 : f32 = u_xlat3.x;
    u_xlat2.x = max(x_261, x_263);
    let x_274 : vec4<f32> = u_xlat2;
    let x_276 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_274.x, x_274.z, x_274.w));
    u_xlat2 = x_276;
  } else {
    u_xlat2.x = 1.0f;
    u_xlat2.y = 1.0f;
    u_xlat2.z = 1.0f;
    u_xlat2.w = 1.0f;
  }
  let x_282 : vec4<f32> = u_xlat2;
  let x_284 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat2.x = dot(x_282, x_284);
  let x_288 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_288, 0.0f, 1.0f);
  let x_293 : vec4<f32> = vs_TEXCOORD6;
  let x_295 : vec4<f32> = vs_TEXCOORD6;
  let x_297 : vec2<f32> = (vec2<f32>(x_293.x, x_293.y) / vec2<f32>(x_295.w, x_295.w));
  let x_298 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_297.x, x_297.y, x_298.z);
  let x_305 : vec3<f32> = u_xlat12;
  let x_307 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, vec2<f32>(x_305.x, x_305.y));
  u_xlat12.x = x_307.x;
  let x_311 : f32 = u_xlat12.x;
  let x_314 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_311) + x_314);
  let x_317 : f32 = u_xlat31;
  let x_319 : f32 = u_xlat2.x;
  let x_322 : f32 = u_xlat12.x;
  u_xlat31 = ((x_317 * x_319) + x_322);
  let x_326 : f32 = x_18.x_Glossiness;
  u_xlat2.x = (-(x_326) + 1.0f);
  let x_330 : vec4<f32> = u_xlat1;
  let x_334 : vec3<f32> = vs_TEXCOORD1;
  u_xlat12.x = dot(-(vec3<f32>(x_330.x, x_330.y, x_330.z)), x_334);
  let x_338 : f32 = u_xlat12.x;
  let x_340 : f32 = u_xlat12.x;
  u_xlat12.x = (x_338 + x_340);
  let x_343 : vec3<f32> = vs_TEXCOORD1;
  let x_344 : vec3<f32> = u_xlat12;
  let x_348 : vec4<f32> = u_xlat1;
  u_xlat12 = ((x_343 * -(vec3<f32>(x_344.x, x_344.x, x_344.x))) + -(vec3<f32>(x_348.x, x_348.y, x_348.z)));
  let x_352 : f32 = u_xlat31;
  let x_356 : vec4<f32> = x_18.x_LightColor0;
  u_xlat3 = (vec3<f32>(x_352, x_352, x_352) * vec3<f32>(x_356.x, x_356.y, x_356.z));
  let x_361 : f32 = x_18.unity_SpecCube0_ProbePosition.w;
  u_xlatb31 = (0.0f < x_361);
  let x_363 : bool = u_xlatb31;
  if (x_363) {
    let x_366 : vec3<f32> = u_xlat12;
    let x_367 : vec3<f32> = u_xlat12;
    u_xlat31 = dot(x_366, x_367);
    let x_369 : f32 = u_xlat31;
    u_xlat31 = inverseSqrt(x_369);
    let x_372 : f32 = u_xlat31;
    let x_374 : vec3<f32> = u_xlat12;
    let x_375 : vec3<f32> = (vec3<f32>(x_372, x_372, x_372) * x_374);
    let x_376 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_375.x, x_375.y, x_375.z, x_376.w);
    let x_379 : vec3<f32> = vs_TEXCOORD2;
    let x_383 : vec4<f32> = x_18.unity_SpecCube0_BoxMax;
    u_xlat5 = (-(x_379) + vec3<f32>(x_383.x, x_383.y, x_383.z));
    let x_386 : vec3<f32> = u_xlat5;
    let x_387 : vec4<f32> = u_xlat4;
    u_xlat5 = (x_386 / vec3<f32>(x_387.x, x_387.y, x_387.z));
    let x_391 : vec3<f32> = vs_TEXCOORD2;
    let x_395 : vec4<f32> = x_18.unity_SpecCube0_BoxMin;
    let x_397 : vec3<f32> = (-(x_391) + vec3<f32>(x_395.x, x_395.y, x_395.z));
    let x_398 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_397.x, x_397.y, x_397.z, x_398.w);
    let x_400 : vec4<f32> = u_xlat6;
    let x_402 : vec4<f32> = u_xlat4;
    let x_404 : vec3<f32> = (vec3<f32>(x_400.x, x_400.y, x_400.z) / vec3<f32>(x_402.x, x_402.y, x_402.z));
    let x_405 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_404.x, x_404.y, x_404.z, x_405.w);
    let x_411 : vec4<f32> = u_xlat4;
    let x_414 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_411.x, x_411.y, x_411.z, x_411.x));
    u_xlatb7 = vec3<bool>(x_414.x, x_414.y, x_414.z);
    let x_417 : vec3<f32> = u_xlat5;
    hlslcc_movcTemp = x_417;
    let x_419 : bool = u_xlatb7.x;
    if (x_419) {
      let x_424 : f32 = u_xlat5.x;
      x_420 = x_424;
    } else {
      let x_427 : f32 = u_xlat6.x;
      x_420 = x_427;
    }
    let x_428 : f32 = x_420;
    hlslcc_movcTemp.x = x_428;
    let x_431 : bool = u_xlatb7.y;
    if (x_431) {
      let x_436 : f32 = u_xlat5.y;
      x_432 = x_436;
    } else {
      let x_439 : f32 = u_xlat6.y;
      x_432 = x_439;
    }
    let x_440 : f32 = x_432;
    hlslcc_movcTemp.y = x_440;
    let x_443 : bool = u_xlatb7.z;
    if (x_443) {
      let x_448 : f32 = u_xlat5.z;
      x_444 = x_448;
    } else {
      let x_451 : f32 = u_xlat6.z;
      x_444 = x_451;
    }
    let x_452 : f32 = x_444;
    hlslcc_movcTemp.z = x_452;
    let x_454 : vec3<f32> = hlslcc_movcTemp;
    u_xlat5 = x_454;
    let x_456 : f32 = u_xlat5.y;
    let x_458 : f32 = u_xlat5.x;
    u_xlat31 = min(x_456, x_458);
    let x_461 : f32 = u_xlat5.z;
    let x_462 : f32 = u_xlat31;
    u_xlat31 = min(x_461, x_462);
    let x_464 : vec3<f32> = vs_TEXCOORD2;
    let x_466 : vec4<f32> = x_18.unity_SpecCube0_ProbePosition;
    u_xlat5 = (x_464 + -(vec3<f32>(x_466.x, x_466.y, x_466.z)));
    let x_470 : vec4<f32> = u_xlat4;
    let x_472 : f32 = u_xlat31;
    let x_475 : vec3<f32> = u_xlat5;
    let x_476 : vec3<f32> = ((vec3<f32>(x_470.x, x_470.y, x_470.z) * vec3<f32>(x_472, x_472, x_472)) + x_475);
    let x_477 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_476.x, x_476.y, x_476.z, x_477.w);
  } else {
    let x_480 : vec3<f32> = u_xlat12;
    let x_481 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_480.x, x_480.y, x_480.z, x_481.w);
  }
  let x_484 : f32 = u_xlat2.x;
  u_xlat31 = ((-(x_484) * 0.699999988f) + 1.700000048f);
  let x_490 : f32 = u_xlat31;
  let x_492 : f32 = u_xlat2.x;
  u_xlat31 = (x_490 * x_492);
  let x_494 : f32 = u_xlat31;
  u_xlat31 = (x_494 * 6.0f);
  let x_505 : vec4<f32> = u_xlat4;
  let x_507 : f32 = u_xlat31;
  let x_508 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_505.x, x_505.y, x_505.z), x_507);
  u_xlat4 = x_508;
  let x_511 : f32 = u_xlat4.w;
  u_xlat33 = (x_511 + -1.0f);
  let x_515 : f32 = x_18.unity_SpecCube0_HDR.w;
  let x_516 : f32 = u_xlat33;
  u_xlat33 = ((x_515 * x_516) + 1.0f);
  let x_519 : f32 = u_xlat33;
  u_xlat33 = log2(x_519);
  let x_521 : f32 = u_xlat33;
  let x_523 : f32 = x_18.unity_SpecCube0_HDR.y;
  u_xlat33 = (x_521 * x_523);
  let x_525 : f32 = u_xlat33;
  u_xlat33 = exp2(x_525);
  let x_527 : f32 = u_xlat33;
  let x_529 : f32 = x_18.unity_SpecCube0_HDR.x;
  u_xlat33 = (x_527 * x_529);
  let x_531 : vec4<f32> = u_xlat4;
  let x_533 : f32 = u_xlat33;
  u_xlat5 = (vec3<f32>(x_531.x, x_531.y, x_531.z) * vec3<f32>(x_533, x_533, x_533));
  let x_538 : f32 = x_18.unity_SpecCube0_BoxMin.w;
  u_xlatb34 = (x_538 < 0.999989986f);
  let x_541 : bool = u_xlatb34;
  if (x_541) {
    let x_546 : f32 = x_18.unity_SpecCube1_ProbePosition.w;
    u_xlatb34 = (0.0f < x_546);
    let x_548 : bool = u_xlatb34;
    if (x_548) {
      let x_552 : vec3<f32> = u_xlat12;
      let x_553 : vec3<f32> = u_xlat12;
      u_xlat34 = dot(x_552, x_553);
      let x_555 : f32 = u_xlat34;
      u_xlat34 = inverseSqrt(x_555);
      let x_557 : vec3<f32> = u_xlat12;
      let x_558 : f32 = u_xlat34;
      let x_560 : vec3<f32> = (x_557 * vec3<f32>(x_558, x_558, x_558));
      let x_561 : vec4<f32> = u_xlat6;
      u_xlat6 = vec4<f32>(x_560.x, x_560.y, x_560.z, x_561.w);
      let x_564 : vec3<f32> = vs_TEXCOORD2;
      let x_568 : vec4<f32> = x_18.unity_SpecCube1_BoxMax;
      u_xlat7 = (-(x_564) + vec3<f32>(x_568.x, x_568.y, x_568.z));
      let x_571 : vec3<f32> = u_xlat7;
      let x_572 : vec4<f32> = u_xlat6;
      u_xlat7 = (x_571 / vec3<f32>(x_572.x, x_572.y, x_572.z));
      let x_576 : vec3<f32> = vs_TEXCOORD2;
      let x_580 : vec4<f32> = x_18.unity_SpecCube1_BoxMin;
      u_xlat8 = (-(x_576) + vec3<f32>(x_580.x, x_580.y, x_580.z));
      let x_583 : vec3<f32> = u_xlat8;
      let x_584 : vec4<f32> = u_xlat6;
      u_xlat8 = (x_583 / vec3<f32>(x_584.x, x_584.y, x_584.z));
      let x_588 : vec4<f32> = u_xlat6;
      let x_590 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_588.x, x_588.y, x_588.z, x_588.x));
      u_xlatb9 = vec3<bool>(x_590.x, x_590.y, x_590.z);
      let x_593 : vec3<f32> = u_xlat7;
      hlslcc_movcTemp_1 = x_593;
      let x_595 : bool = u_xlatb9.x;
      if (x_595) {
        let x_600 : f32 = u_xlat7.x;
        x_596 = x_600;
      } else {
        let x_603 : f32 = u_xlat8.x;
        x_596 = x_603;
      }
      let x_604 : f32 = x_596;
      hlslcc_movcTemp_1.x = x_604;
      let x_607 : bool = u_xlatb9.y;
      if (x_607) {
        let x_612 : f32 = u_xlat7.y;
        x_608 = x_612;
      } else {
        let x_615 : f32 = u_xlat8.y;
        x_608 = x_615;
      }
      let x_616 : f32 = x_608;
      hlslcc_movcTemp_1.y = x_616;
      let x_619 : bool = u_xlatb9.z;
      if (x_619) {
        let x_624 : f32 = u_xlat7.z;
        x_620 = x_624;
      } else {
        let x_627 : f32 = u_xlat8.z;
        x_620 = x_627;
      }
      let x_628 : f32 = x_620;
      hlslcc_movcTemp_1.z = x_628;
      let x_630 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat7 = x_630;
      let x_632 : f32 = u_xlat7.y;
      let x_634 : f32 = u_xlat7.x;
      u_xlat34 = min(x_632, x_634);
      let x_637 : f32 = u_xlat7.z;
      let x_638 : f32 = u_xlat34;
      u_xlat34 = min(x_637, x_638);
      let x_640 : vec3<f32> = vs_TEXCOORD2;
      let x_642 : vec4<f32> = x_18.unity_SpecCube1_ProbePosition;
      u_xlat7 = (x_640 + -(vec3<f32>(x_642.x, x_642.y, x_642.z)));
      let x_646 : vec4<f32> = u_xlat6;
      let x_648 : f32 = u_xlat34;
      let x_651 : vec3<f32> = u_xlat7;
      u_xlat12 = ((vec3<f32>(x_646.x, x_646.y, x_646.z) * vec3<f32>(x_648, x_648, x_648)) + x_651);
    }
    let x_657 : vec3<f32> = u_xlat12;
    let x_658 : f32 = u_xlat31;
    let x_659 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, x_657, x_658);
    u_xlat6 = x_659;
    let x_661 : f32 = u_xlat6.w;
    u_xlat31 = (x_661 + -1.0f);
    let x_665 : f32 = x_18.unity_SpecCube1_HDR.w;
    let x_666 : f32 = u_xlat31;
    u_xlat31 = ((x_665 * x_666) + 1.0f);
    let x_669 : f32 = u_xlat31;
    u_xlat31 = log2(x_669);
    let x_671 : f32 = u_xlat31;
    let x_673 : f32 = x_18.unity_SpecCube1_HDR.y;
    u_xlat31 = (x_671 * x_673);
    let x_675 : f32 = u_xlat31;
    u_xlat31 = exp2(x_675);
    let x_677 : f32 = u_xlat31;
    let x_679 : f32 = x_18.unity_SpecCube1_HDR.x;
    u_xlat31 = (x_677 * x_679);
    let x_681 : vec4<f32> = u_xlat6;
    let x_683 : f32 = u_xlat31;
    u_xlat12 = (vec3<f32>(x_681.x, x_681.y, x_681.z) * vec3<f32>(x_683, x_683, x_683));
    let x_686 : f32 = u_xlat33;
    let x_688 : vec4<f32> = u_xlat4;
    let x_691 : vec3<f32> = u_xlat12;
    let x_693 : vec3<f32> = ((vec3<f32>(x_686, x_686, x_686) * vec3<f32>(x_688.x, x_688.y, x_688.z)) + -(x_691));
    let x_694 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_693.x, x_693.y, x_693.z, x_694.w);
    let x_697 : vec4<f32> = x_18.unity_SpecCube0_BoxMin;
    let x_699 : vec4<f32> = u_xlat4;
    let x_702 : vec3<f32> = u_xlat12;
    u_xlat5 = ((vec3<f32>(x_697.w, x_697.w, x_697.w) * vec3<f32>(x_699.x, x_699.y, x_699.z)) + x_702);
  }
  let x_704 : vec3<f32> = vs_TEXCOORD1;
  let x_705 : vec3<f32> = vs_TEXCOORD1;
  u_xlat31 = dot(x_704, x_705);
  let x_707 : f32 = u_xlat31;
  u_xlat31 = inverseSqrt(x_707);
  let x_709 : f32 = u_xlat31;
  let x_711 : vec3<f32> = vs_TEXCOORD1;
  u_xlat12 = (vec3<f32>(x_709, x_709, x_709) * x_711);
  let x_715 : vec4<f32> = x_18.x_Color;
  let x_719 : vec3<f32> = (vec3<f32>(x_715.x, x_715.y, x_715.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_720 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_719.x, x_719.y, x_719.z, x_720.w);
  let x_724 : f32 = x_18.x_Metallic;
  let x_726 : f32 = x_18.x_Metallic;
  let x_728 : f32 = x_18.x_Metallic;
  let x_729 : vec3<f32> = vec3<f32>(x_724, x_726, x_728);
  let x_734 : vec4<f32> = u_xlat4;
  let x_739 : vec3<f32> = ((vec3<f32>(x_729.x, x_729.y, x_729.z) * vec3<f32>(x_734.x, x_734.y, x_734.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_740 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_739.x, x_739.y, x_739.z, x_740.w);
  let x_743 : f32 = x_18.x_Metallic;
  u_xlat31 = ((-(x_743) * 0.959999979f) + 0.959999979f);
  let x_748 : f32 = u_xlat31;
  let x_751 : vec4<f32> = x_18.x_Color;
  let x_753 : vec3<f32> = (vec3<f32>(x_748, x_748, x_748) * vec3<f32>(x_751.x, x_751.y, x_751.z));
  let x_754 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_753.x, x_753.y, x_753.z, x_754.w);
  let x_756 : vec4<f32> = u_xlat0;
  let x_758 : f32 = u_xlat30;
  let x_762 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_764 : vec3<f32> = ((vec3<f32>(x_756.x, x_756.y, x_756.z) * vec3<f32>(x_758, x_758, x_758)) + vec3<f32>(x_762.x, x_762.y, x_762.z));
  let x_765 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_764.x, x_764.y, x_764.z, x_765.w);
  let x_767 : vec4<f32> = u_xlat0;
  let x_769 : vec4<f32> = u_xlat0;
  u_xlat30 = dot(vec3<f32>(x_767.x, x_767.y, x_767.z), vec3<f32>(x_769.x, x_769.y, x_769.z));
  let x_772 : f32 = u_xlat30;
  u_xlat30 = max(x_772, 0.001f);
  let x_775 : f32 = u_xlat30;
  u_xlat30 = inverseSqrt(x_775);
  let x_777 : f32 = u_xlat30;
  let x_779 : vec4<f32> = u_xlat0;
  let x_781 : vec3<f32> = (vec3<f32>(x_777, x_777, x_777) * vec3<f32>(x_779.x, x_779.y, x_779.z));
  let x_782 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_781.x, x_781.y, x_781.z, x_782.w);
  let x_784 : vec3<f32> = u_xlat12;
  let x_785 : vec4<f32> = u_xlat1;
  u_xlat30 = dot(x_784, vec3<f32>(x_785.x, x_785.y, x_785.z));
  let x_788 : vec3<f32> = u_xlat12;
  let x_790 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat1.x = dot(x_788, vec3<f32>(x_790.x, x_790.y, x_790.z));
  let x_795 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_795, 0.0f, 1.0f);
  let x_799 : vec3<f32> = u_xlat12;
  let x_800 : vec4<f32> = u_xlat0;
  u_xlat11 = dot(x_799, vec3<f32>(x_800.x, x_800.y, x_800.z));
  let x_803 : f32 = u_xlat11;
  u_xlat11 = clamp(x_803, 0.0f, 1.0f);
  let x_806 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_808 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_806.x, x_806.y, x_806.z), vec3<f32>(x_808.x, x_808.y, x_808.z));
  let x_813 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_813, 0.0f, 1.0f);
  let x_818 : f32 = u_xlat0.x;
  let x_820 : f32 = u_xlat0.x;
  u_xlat10.x = (x_818 * x_820);
  let x_823 : vec3<f32> = u_xlat10;
  let x_825 : vec4<f32> = u_xlat2;
  u_xlat10.x = dot(vec2<f32>(x_823.x, x_823.x), vec2<f32>(x_825.x, x_825.x));
  let x_830 : f32 = u_xlat10.x;
  u_xlat10.x = (x_830 + -0.5f);
  let x_836 : f32 = u_xlat1.x;
  u_xlat20 = (-(x_836) + 1.0f);
  let x_840 : f32 = u_xlat20;
  let x_841 : f32 = u_xlat20;
  u_xlat21 = (x_840 * x_841);
  let x_843 : f32 = u_xlat21;
  let x_844 : f32 = u_xlat21;
  u_xlat21 = (x_843 * x_844);
  let x_846 : f32 = u_xlat20;
  let x_847 : f32 = u_xlat21;
  u_xlat20 = (x_846 * x_847);
  let x_850 : f32 = u_xlat10.x;
  let x_851 : f32 = u_xlat20;
  u_xlat20 = ((x_850 * x_851) + 1.0f);
  let x_854 : f32 = u_xlat30;
  u_xlat21 = (-(abs(x_854)) + 1.0f);
  let x_858 : f32 = u_xlat21;
  let x_859 : f32 = u_xlat21;
  u_xlat12.x = (x_858 * x_859);
  let x_863 : f32 = u_xlat12.x;
  let x_865 : f32 = u_xlat12.x;
  u_xlat12.x = (x_863 * x_865);
  let x_868 : f32 = u_xlat21;
  let x_870 : f32 = u_xlat12.x;
  u_xlat21 = (x_868 * x_870);
  let x_873 : f32 = u_xlat10.x;
  let x_874 : f32 = u_xlat21;
  u_xlat10.x = ((x_873 * x_874) + 1.0f);
  let x_879 : f32 = u_xlat10.x;
  let x_880 : f32 = u_xlat20;
  u_xlat10.x = (x_879 * x_880);
  let x_884 : f32 = u_xlat2.x;
  let x_886 : f32 = u_xlat2.x;
  u_xlat20 = (x_884 * x_886);
  let x_888 : f32 = u_xlat20;
  u_xlat20 = max(x_888, 0.002f);
  let x_891 : f32 = u_xlat20;
  u_xlat2.x = (-(x_891) + 1.0f);
  let x_895 : f32 = u_xlat30;
  let x_898 : f32 = u_xlat2.x;
  let x_900 : f32 = u_xlat20;
  u_xlat12.x = ((abs(x_895) * x_898) + x_900);
  let x_904 : f32 = u_xlat1.x;
  let x_906 : f32 = u_xlat2.x;
  let x_908 : f32 = u_xlat20;
  u_xlat2.x = ((x_904 * x_906) + x_908);
  let x_911 : f32 = u_xlat30;
  let x_914 : f32 = u_xlat2.x;
  u_xlat30 = (abs(x_911) * x_914);
  let x_917 : f32 = u_xlat1.x;
  let x_919 : f32 = u_xlat12.x;
  let x_921 : f32 = u_xlat30;
  u_xlat30 = ((x_917 * x_919) + x_921);
  let x_923 : f32 = u_xlat30;
  u_xlat30 = (x_923 + 0.00001f);
  let x_926 : f32 = u_xlat30;
  u_xlat30 = (0.5f / x_926);
  let x_928 : f32 = u_xlat20;
  let x_929 : f32 = u_xlat20;
  u_xlat2.x = (x_928 * x_929);
  let x_932 : f32 = u_xlat11;
  let x_934 : f32 = u_xlat2.x;
  let x_936 : f32 = u_xlat11;
  u_xlat12.x = ((x_932 * x_934) + -(x_936));
  let x_941 : f32 = u_xlat12.x;
  let x_942 : f32 = u_xlat11;
  u_xlat11 = ((x_941 * x_942) + 1.0f);
  let x_946 : f32 = u_xlat2.x;
  u_xlat2.x = (x_946 * 0.318309873f);
  let x_950 : f32 = u_xlat11;
  let x_951 : f32 = u_xlat11;
  u_xlat11 = ((x_950 * x_951) + 0.0000001f);
  let x_956 : f32 = u_xlat2.x;
  let x_957 : f32 = u_xlat11;
  u_xlat11 = (x_956 / x_957);
  let x_959 : f32 = u_xlat30;
  let x_960 : f32 = u_xlat11;
  u_xlat10.z = (x_959 * x_960);
  let x_963 : vec4<f32> = u_xlat1;
  let x_965 : vec3<f32> = u_xlat10;
  let x_967 : vec2<f32> = (vec2<f32>(x_963.x, x_963.x) * vec2<f32>(x_965.x, x_965.z));
  let x_968 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_967.x, x_968.y, x_967.y);
  let x_971 : f32 = u_xlat10.z;
  u_xlat30 = (x_971 * 3.141592741f);
  let x_974 : f32 = u_xlat30;
  u_xlat30 = max(x_974, 0.0f);
  let x_976 : f32 = u_xlat20;
  let x_977 : f32 = u_xlat20;
  u_xlat20 = ((x_976 * x_977) + 1.0f);
  let x_980 : f32 = u_xlat20;
  u_xlat20 = (1.0f / x_980);
  let x_982 : vec4<f32> = u_xlat4;
  let x_984 : vec4<f32> = u_xlat4;
  u_xlat1.x = dot(vec3<f32>(x_982.x, x_982.y, x_982.z), vec3<f32>(x_984.x, x_984.y, x_984.z));
  let x_990 : f32 = u_xlat1.x;
  u_xlatb1 = !((x_990 == 0.0f));
  let x_992 : bool = u_xlatb1;
  u_xlat1.x = select(0.0f, 1.0f, x_992);
  let x_995 : f32 = u_xlat30;
  let x_997 : f32 = u_xlat1.x;
  u_xlat30 = (x_995 * x_997);
  let x_999 : f32 = u_xlat31;
  let x_1002 : f32 = x_18.x_Glossiness;
  u_xlat1.x = (-(x_999) + x_1002);
  let x_1006 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1006 + 1.0f);
  let x_1010 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1010, 0.0f, 1.0f);
  let x_1013 : vec3<f32> = u_xlat10;
  let x_1015 : vec3<f32> = u_xlat3;
  let x_1016 : vec3<f32> = (vec3<f32>(x_1013.x, x_1013.x, x_1013.x) * x_1015);
  let x_1017 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1016.x, x_1016.y, x_1016.z, x_1017.w);
  let x_1019 : vec3<f32> = u_xlat3;
  let x_1020 : f32 = u_xlat30;
  u_xlat3 = (x_1019 * vec3<f32>(x_1020, x_1020, x_1020));
  let x_1024 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_1024) + 1.0f);
  let x_1029 : f32 = u_xlat0.x;
  let x_1031 : f32 = u_xlat0.x;
  u_xlat10.x = (x_1029 * x_1031);
  let x_1035 : f32 = u_xlat10.x;
  let x_1037 : f32 = u_xlat10.x;
  u_xlat10.x = (x_1035 * x_1037);
  let x_1041 : f32 = u_xlat0.x;
  let x_1043 : f32 = u_xlat10.x;
  u_xlat0.x = (x_1041 * x_1043);
  let x_1046 : vec4<f32> = u_xlat4;
  u_xlat7 = (-(vec3<f32>(x_1046.x, x_1046.y, x_1046.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1051 : vec3<f32> = u_xlat7;
  let x_1052 : vec4<f32> = u_xlat0;
  let x_1055 : vec4<f32> = u_xlat4;
  let x_1057 : vec3<f32> = ((x_1051 * vec3<f32>(x_1052.x, x_1052.x, x_1052.x)) + vec3<f32>(x_1055.x, x_1055.y, x_1055.z));
  let x_1058 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1057.x, x_1057.y, x_1058.z, x_1057.z);
  let x_1060 : vec4<f32> = u_xlat0;
  let x_1062 : vec3<f32> = u_xlat3;
  let x_1063 : vec3<f32> = (vec3<f32>(x_1060.x, x_1060.y, x_1060.w) * x_1062);
  let x_1064 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1063.x, x_1063.y, x_1064.z, x_1063.z);
  let x_1066 : vec4<f32> = u_xlat6;
  let x_1068 : vec4<f32> = u_xlat2;
  let x_1071 : vec4<f32> = u_xlat0;
  let x_1073 : vec3<f32> = ((vec3<f32>(x_1066.x, x_1066.y, x_1066.z) * vec3<f32>(x_1068.x, x_1068.y, x_1068.z)) + vec3<f32>(x_1071.x, x_1071.y, x_1071.w));
  let x_1074 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1073.x, x_1073.y, x_1074.z, x_1073.z);
  let x_1076 : vec3<f32> = u_xlat5;
  let x_1077 : f32 = u_xlat20;
  let x_1079 : vec3<f32> = (x_1076 * vec3<f32>(x_1077, x_1077, x_1077));
  let x_1080 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1079.x, x_1079.y, x_1079.z, x_1080.w);
  let x_1082 : vec4<f32> = u_xlat4;
  let x_1085 : vec4<f32> = u_xlat1;
  let x_1087 : vec3<f32> = (-(vec3<f32>(x_1082.x, x_1082.y, x_1082.z)) + vec3<f32>(x_1085.x, x_1085.x, x_1085.x));
  let x_1088 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1087.x, x_1087.y, x_1088.z, x_1087.z);
  let x_1090 : f32 = u_xlat21;
  let x_1092 : vec4<f32> = u_xlat1;
  let x_1095 : vec4<f32> = u_xlat4;
  let x_1097 : vec3<f32> = ((vec3<f32>(x_1090, x_1090, x_1090) * vec3<f32>(x_1092.x, x_1092.y, x_1092.w)) + vec3<f32>(x_1095.x, x_1095.y, x_1095.z));
  let x_1098 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1097.x, x_1097.y, x_1097.z, x_1098.w);
  let x_1100 : vec4<f32> = u_xlat2;
  let x_1102 : vec4<f32> = u_xlat1;
  let x_1105 : vec4<f32> = u_xlat0;
  let x_1107 : vec3<f32> = ((vec3<f32>(x_1100.x, x_1100.y, x_1100.z) * vec3<f32>(x_1102.x, x_1102.y, x_1102.z)) + vec3<f32>(x_1105.x, x_1105.y, x_1105.w));
  let x_1108 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1107.x, x_1107.y, x_1107.z, x_1108.w);
  let x_1110 : vec4<f32> = u_xlat0;
  let x_1114 : vec4<f32> = x_18.x_Color2;
  let x_1116 : vec3<f32> = (vec3<f32>(x_1110.x, x_1110.y, x_1110.z) + vec3<f32>(x_1114.x, x_1114.y, x_1114.z));
  let x_1117 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1116.x, x_1116.y, x_1116.z, x_1117.w);
  let x_1120 : f32 = vs_TEXCOORD5;
  let x_1122 : f32 = x_18.x_ProjectionParams.y;
  u_xlat30 = (x_1120 / x_1122);
  let x_1124 : f32 = u_xlat30;
  u_xlat30 = (-(x_1124) + 1.0f);
  let x_1127 : f32 = u_xlat30;
  let x_1129 : f32 = x_18.x_ProjectionParams.z;
  u_xlat30 = (x_1127 * x_1129);
  let x_1131 : f32 = u_xlat30;
  u_xlat30 = max(x_1131, 0.0f);
  let x_1133 : f32 = u_xlat30;
  let x_1136 : f32 = x_18.unity_FogParams.x;
  u_xlat30 = (x_1133 * x_1136);
  let x_1138 : f32 = u_xlat30;
  let x_1139 : f32 = u_xlat30;
  u_xlat30 = (x_1138 * -(x_1139));
  let x_1142 : f32 = u_xlat30;
  u_xlat30 = exp2(x_1142);
  let x_1144 : vec4<f32> = u_xlat0;
  let x_1148 : vec4<f32> = x_18.unity_FogColor;
  let x_1151 : vec3<f32> = (vec3<f32>(x_1144.x, x_1144.y, x_1144.z) + -(vec3<f32>(x_1148.x, x_1148.y, x_1148.z)));
  let x_1152 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1151.x, x_1151.y, x_1151.z, x_1152.w);
  let x_1156 : f32 = u_xlat30;
  let x_1158 : vec4<f32> = u_xlat0;
  let x_1162 : vec4<f32> = x_18.unity_FogColor;
  let x_1164 : vec3<f32> = ((vec3<f32>(x_1156, x_1156, x_1156) * vec3<f32>(x_1158.x, x_1158.y, x_1158.z)) + vec3<f32>(x_1162.x, x_1162.y, x_1162.z));
  let x_1165 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1164.x, x_1164.y, x_1164.z, x_1165.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(4) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD3_param : f32, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(5) vs_TEXCOORD6_param : vec4<f32>, @location(3) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD5_param : f32, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

