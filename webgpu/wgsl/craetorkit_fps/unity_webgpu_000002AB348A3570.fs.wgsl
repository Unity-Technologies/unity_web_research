struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
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

@group(0) @binding(6) var sampler_Gradient : sampler;

@group(0) @binding(3) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(5) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(0) @binding(1) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(4) var samplerunity_SpecCube0 : sampler;

@group(0) @binding(2) var unity_SpecCube1 : texture_cube<f32>;

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
  var x_171 : vec3<f32>;
  var u_xlat12 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlatb7 : vec3<bool>;
  var hlslcc_movcTemp : vec3<f32>;
  var x_336 : f32;
  var x_348 : f32;
  var x_360 : f32;
  var u_xlat33 : f32;
  var u_xlatb34 : bool;
  var u_xlat34 : f32;
  var u_xlat7 : vec3<f32>;
  var u_xlat8 : vec3<f32>;
  var u_xlatb9 : vec3<bool>;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_512 : f32;
  var x_524 : f32;
  var x_536 : f32;
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
  let x_118 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb31 = (x_118 == 1.0f);
  let x_120 : bool = u_xlatb31;
  if (x_120) {
    let x_125 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb31 = (x_125 == 1.0f);
    let x_127 : vec3<f32> = vs_TEXCOORD2;
    let x_132 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_134 : vec3<f32> = (vec3<f32>(x_127.y, x_127.y, x_127.y) * vec3<f32>(x_132.x, x_132.y, x_132.z));
    let x_135 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_134.x, x_134.y, x_134.z, x_135.w);
    let x_138 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_140 : vec3<f32> = vs_TEXCOORD2;
    let x_143 : vec4<f32> = u_xlat2;
    let x_145 : vec3<f32> = ((vec3<f32>(x_138.x, x_138.y, x_138.z) * vec3<f32>(x_140.x, x_140.x, x_140.x)) + vec3<f32>(x_143.x, x_143.y, x_143.z));
    let x_146 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_145.x, x_145.y, x_145.z, x_146.w);
    let x_150 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_152 : vec3<f32> = vs_TEXCOORD2;
    let x_155 : vec4<f32> = u_xlat2;
    let x_157 : vec3<f32> = ((vec3<f32>(x_150.x, x_150.y, x_150.z) * vec3<f32>(x_152.z, x_152.z, x_152.z)) + vec3<f32>(x_155.x, x_155.y, x_155.z));
    let x_158 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_157.x, x_157.y, x_157.z, x_158.w);
    let x_160 : vec4<f32> = u_xlat2;
    let x_164 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_166 : vec3<f32> = (vec3<f32>(x_160.x, x_160.y, x_160.z) + vec3<f32>(x_164.x, x_164.y, x_164.z));
    let x_167 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_166.x, x_166.y, x_166.z, x_167.w);
    let x_169 : bool = u_xlatb31;
    if (x_169) {
      let x_174 : vec4<f32> = u_xlat2;
      x_171 = vec3<f32>(x_174.x, x_174.y, x_174.z);
    } else {
      let x_177 : vec3<f32> = vs_TEXCOORD2;
      x_171 = x_177;
    }
    let x_178 : vec3<f32> = x_171;
    let x_179 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_178.x, x_178.y, x_178.z, x_179.w);
    let x_181 : vec4<f32> = u_xlat2;
    let x_185 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_187 : vec3<f32> = (vec3<f32>(x_181.x, x_181.y, x_181.z) + -(x_185));
    let x_188 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_187.x, x_187.y, x_187.z, x_188.w);
    let x_190 : vec4<f32> = u_xlat2;
    let x_194 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_195 : vec3<f32> = (vec3<f32>(x_190.x, x_190.y, x_190.z) * x_194);
    let x_196 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_196.x, x_195.x, x_195.y, x_195.z);
    let x_199 : f32 = u_xlat2.y;
    u_xlat31 = ((x_199 * 0.25f) + 0.75f);
    let x_206 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat12.x = ((x_206 * 0.5f) + 0.75f);
    let x_211 : f32 = u_xlat31;
    let x_213 : f32 = u_xlat12.x;
    u_xlat2.x = max(x_211, x_213);
    let x_224 : vec4<f32> = u_xlat2;
    let x_226 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_224.x, x_224.z, x_224.w));
    u_xlat2 = x_226;
  } else {
    u_xlat2.x = 1.0f;
    u_xlat2.y = 1.0f;
    u_xlat2.z = 1.0f;
    u_xlat2.w = 1.0f;
  }
  let x_233 : vec4<f32> = u_xlat2;
  let x_235 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat31 = dot(x_233, x_235);
  let x_237 : f32 = u_xlat31;
  u_xlat31 = clamp(x_237, 0.0f, 1.0f);
  let x_241 : f32 = x_18.x_Glossiness;
  u_xlat2.x = (-(x_241) + 1.0f);
  let x_245 : vec4<f32> = u_xlat1;
  let x_249 : vec3<f32> = vs_TEXCOORD1;
  u_xlat12.x = dot(-(vec3<f32>(x_245.x, x_245.y, x_245.z)), x_249);
  let x_253 : f32 = u_xlat12.x;
  let x_255 : f32 = u_xlat12.x;
  u_xlat12.x = (x_253 + x_255);
  let x_258 : vec3<f32> = vs_TEXCOORD1;
  let x_259 : vec3<f32> = u_xlat12;
  let x_263 : vec4<f32> = u_xlat1;
  u_xlat12 = ((x_258 * -(vec3<f32>(x_259.x, x_259.x, x_259.x))) + -(vec3<f32>(x_263.x, x_263.y, x_263.z)));
  let x_268 : f32 = u_xlat31;
  let x_272 : vec4<f32> = x_18.x_LightColor0;
  u_xlat3 = (vec3<f32>(x_268, x_268, x_268) * vec3<f32>(x_272.x, x_272.y, x_272.z));
  let x_277 : f32 = x_18.unity_SpecCube0_ProbePosition.w;
  u_xlatb31 = (0.0f < x_277);
  let x_279 : bool = u_xlatb31;
  if (x_279) {
    let x_282 : vec3<f32> = u_xlat12;
    let x_283 : vec3<f32> = u_xlat12;
    u_xlat31 = dot(x_282, x_283);
    let x_285 : f32 = u_xlat31;
    u_xlat31 = inverseSqrt(x_285);
    let x_288 : f32 = u_xlat31;
    let x_290 : vec3<f32> = u_xlat12;
    let x_291 : vec3<f32> = (vec3<f32>(x_288, x_288, x_288) * x_290);
    let x_292 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_291.x, x_291.y, x_291.z, x_292.w);
    let x_295 : vec3<f32> = vs_TEXCOORD2;
    let x_299 : vec4<f32> = x_18.unity_SpecCube0_BoxMax;
    u_xlat5 = (-(x_295) + vec3<f32>(x_299.x, x_299.y, x_299.z));
    let x_302 : vec3<f32> = u_xlat5;
    let x_303 : vec4<f32> = u_xlat4;
    u_xlat5 = (x_302 / vec3<f32>(x_303.x, x_303.y, x_303.z));
    let x_307 : vec3<f32> = vs_TEXCOORD2;
    let x_311 : vec4<f32> = x_18.unity_SpecCube0_BoxMin;
    let x_313 : vec3<f32> = (-(x_307) + vec3<f32>(x_311.x, x_311.y, x_311.z));
    let x_314 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_313.x, x_313.y, x_313.z, x_314.w);
    let x_316 : vec4<f32> = u_xlat6;
    let x_318 : vec4<f32> = u_xlat4;
    let x_320 : vec3<f32> = (vec3<f32>(x_316.x, x_316.y, x_316.z) / vec3<f32>(x_318.x, x_318.y, x_318.z));
    let x_321 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_320.x, x_320.y, x_320.z, x_321.w);
    let x_327 : vec4<f32> = u_xlat4;
    let x_330 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_327.x, x_327.y, x_327.z, x_327.x));
    u_xlatb7 = vec3<bool>(x_330.x, x_330.y, x_330.z);
    let x_333 : vec3<f32> = u_xlat5;
    hlslcc_movcTemp = x_333;
    let x_335 : bool = u_xlatb7.x;
    if (x_335) {
      let x_340 : f32 = u_xlat5.x;
      x_336 = x_340;
    } else {
      let x_343 : f32 = u_xlat6.x;
      x_336 = x_343;
    }
    let x_344 : f32 = x_336;
    hlslcc_movcTemp.x = x_344;
    let x_347 : bool = u_xlatb7.y;
    if (x_347) {
      let x_352 : f32 = u_xlat5.y;
      x_348 = x_352;
    } else {
      let x_355 : f32 = u_xlat6.y;
      x_348 = x_355;
    }
    let x_356 : f32 = x_348;
    hlslcc_movcTemp.y = x_356;
    let x_359 : bool = u_xlatb7.z;
    if (x_359) {
      let x_364 : f32 = u_xlat5.z;
      x_360 = x_364;
    } else {
      let x_367 : f32 = u_xlat6.z;
      x_360 = x_367;
    }
    let x_368 : f32 = x_360;
    hlslcc_movcTemp.z = x_368;
    let x_370 : vec3<f32> = hlslcc_movcTemp;
    u_xlat5 = x_370;
    let x_372 : f32 = u_xlat5.y;
    let x_374 : f32 = u_xlat5.x;
    u_xlat31 = min(x_372, x_374);
    let x_377 : f32 = u_xlat5.z;
    let x_378 : f32 = u_xlat31;
    u_xlat31 = min(x_377, x_378);
    let x_380 : vec3<f32> = vs_TEXCOORD2;
    let x_382 : vec4<f32> = x_18.unity_SpecCube0_ProbePosition;
    u_xlat5 = (x_380 + -(vec3<f32>(x_382.x, x_382.y, x_382.z)));
    let x_386 : vec4<f32> = u_xlat4;
    let x_388 : f32 = u_xlat31;
    let x_391 : vec3<f32> = u_xlat5;
    let x_392 : vec3<f32> = ((vec3<f32>(x_386.x, x_386.y, x_386.z) * vec3<f32>(x_388, x_388, x_388)) + x_391);
    let x_393 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_392.x, x_392.y, x_392.z, x_393.w);
  } else {
    let x_396 : vec3<f32> = u_xlat12;
    let x_397 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_396.x, x_396.y, x_396.z, x_397.w);
  }
  let x_400 : f32 = u_xlat2.x;
  u_xlat31 = ((-(x_400) * 0.699999988f) + 1.700000048f);
  let x_406 : f32 = u_xlat31;
  let x_408 : f32 = u_xlat2.x;
  u_xlat31 = (x_406 * x_408);
  let x_410 : f32 = u_xlat31;
  u_xlat31 = (x_410 * 6.0f);
  let x_421 : vec4<f32> = u_xlat4;
  let x_423 : f32 = u_xlat31;
  let x_424 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_421.x, x_421.y, x_421.z), x_423);
  u_xlat4 = x_424;
  let x_427 : f32 = u_xlat4.w;
  u_xlat33 = (x_427 + -1.0f);
  let x_431 : f32 = x_18.unity_SpecCube0_HDR.w;
  let x_432 : f32 = u_xlat33;
  u_xlat33 = ((x_431 * x_432) + 1.0f);
  let x_435 : f32 = u_xlat33;
  u_xlat33 = log2(x_435);
  let x_437 : f32 = u_xlat33;
  let x_439 : f32 = x_18.unity_SpecCube0_HDR.y;
  u_xlat33 = (x_437 * x_439);
  let x_441 : f32 = u_xlat33;
  u_xlat33 = exp2(x_441);
  let x_443 : f32 = u_xlat33;
  let x_445 : f32 = x_18.unity_SpecCube0_HDR.x;
  u_xlat33 = (x_443 * x_445);
  let x_447 : vec4<f32> = u_xlat4;
  let x_449 : f32 = u_xlat33;
  u_xlat5 = (vec3<f32>(x_447.x, x_447.y, x_447.z) * vec3<f32>(x_449, x_449, x_449));
  let x_454 : f32 = x_18.unity_SpecCube0_BoxMin.w;
  u_xlatb34 = (x_454 < 0.999989986f);
  let x_457 : bool = u_xlatb34;
  if (x_457) {
    let x_462 : f32 = x_18.unity_SpecCube1_ProbePosition.w;
    u_xlatb34 = (0.0f < x_462);
    let x_464 : bool = u_xlatb34;
    if (x_464) {
      let x_468 : vec3<f32> = u_xlat12;
      let x_469 : vec3<f32> = u_xlat12;
      u_xlat34 = dot(x_468, x_469);
      let x_471 : f32 = u_xlat34;
      u_xlat34 = inverseSqrt(x_471);
      let x_473 : vec3<f32> = u_xlat12;
      let x_474 : f32 = u_xlat34;
      let x_476 : vec3<f32> = (x_473 * vec3<f32>(x_474, x_474, x_474));
      let x_477 : vec4<f32> = u_xlat6;
      u_xlat6 = vec4<f32>(x_476.x, x_476.y, x_476.z, x_477.w);
      let x_480 : vec3<f32> = vs_TEXCOORD2;
      let x_484 : vec4<f32> = x_18.unity_SpecCube1_BoxMax;
      u_xlat7 = (-(x_480) + vec3<f32>(x_484.x, x_484.y, x_484.z));
      let x_487 : vec3<f32> = u_xlat7;
      let x_488 : vec4<f32> = u_xlat6;
      u_xlat7 = (x_487 / vec3<f32>(x_488.x, x_488.y, x_488.z));
      let x_492 : vec3<f32> = vs_TEXCOORD2;
      let x_496 : vec4<f32> = x_18.unity_SpecCube1_BoxMin;
      u_xlat8 = (-(x_492) + vec3<f32>(x_496.x, x_496.y, x_496.z));
      let x_499 : vec3<f32> = u_xlat8;
      let x_500 : vec4<f32> = u_xlat6;
      u_xlat8 = (x_499 / vec3<f32>(x_500.x, x_500.y, x_500.z));
      let x_504 : vec4<f32> = u_xlat6;
      let x_506 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_504.x, x_504.y, x_504.z, x_504.x));
      u_xlatb9 = vec3<bool>(x_506.x, x_506.y, x_506.z);
      let x_509 : vec3<f32> = u_xlat7;
      hlslcc_movcTemp_1 = x_509;
      let x_511 : bool = u_xlatb9.x;
      if (x_511) {
        let x_516 : f32 = u_xlat7.x;
        x_512 = x_516;
      } else {
        let x_519 : f32 = u_xlat8.x;
        x_512 = x_519;
      }
      let x_520 : f32 = x_512;
      hlslcc_movcTemp_1.x = x_520;
      let x_523 : bool = u_xlatb9.y;
      if (x_523) {
        let x_528 : f32 = u_xlat7.y;
        x_524 = x_528;
      } else {
        let x_531 : f32 = u_xlat8.y;
        x_524 = x_531;
      }
      let x_532 : f32 = x_524;
      hlslcc_movcTemp_1.y = x_532;
      let x_535 : bool = u_xlatb9.z;
      if (x_535) {
        let x_540 : f32 = u_xlat7.z;
        x_536 = x_540;
      } else {
        let x_543 : f32 = u_xlat8.z;
        x_536 = x_543;
      }
      let x_544 : f32 = x_536;
      hlslcc_movcTemp_1.z = x_544;
      let x_546 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat7 = x_546;
      let x_548 : f32 = u_xlat7.y;
      let x_550 : f32 = u_xlat7.x;
      u_xlat34 = min(x_548, x_550);
      let x_553 : f32 = u_xlat7.z;
      let x_554 : f32 = u_xlat34;
      u_xlat34 = min(x_553, x_554);
      let x_556 : vec3<f32> = vs_TEXCOORD2;
      let x_558 : vec4<f32> = x_18.unity_SpecCube1_ProbePosition;
      u_xlat7 = (x_556 + -(vec3<f32>(x_558.x, x_558.y, x_558.z)));
      let x_562 : vec4<f32> = u_xlat6;
      let x_564 : f32 = u_xlat34;
      let x_567 : vec3<f32> = u_xlat7;
      u_xlat12 = ((vec3<f32>(x_562.x, x_562.y, x_562.z) * vec3<f32>(x_564, x_564, x_564)) + x_567);
    }
    let x_573 : vec3<f32> = u_xlat12;
    let x_574 : f32 = u_xlat31;
    let x_575 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, x_573, x_574);
    u_xlat6 = x_575;
    let x_577 : f32 = u_xlat6.w;
    u_xlat31 = (x_577 + -1.0f);
    let x_581 : f32 = x_18.unity_SpecCube1_HDR.w;
    let x_582 : f32 = u_xlat31;
    u_xlat31 = ((x_581 * x_582) + 1.0f);
    let x_585 : f32 = u_xlat31;
    u_xlat31 = log2(x_585);
    let x_587 : f32 = u_xlat31;
    let x_589 : f32 = x_18.unity_SpecCube1_HDR.y;
    u_xlat31 = (x_587 * x_589);
    let x_591 : f32 = u_xlat31;
    u_xlat31 = exp2(x_591);
    let x_593 : f32 = u_xlat31;
    let x_595 : f32 = x_18.unity_SpecCube1_HDR.x;
    u_xlat31 = (x_593 * x_595);
    let x_597 : vec4<f32> = u_xlat6;
    let x_599 : f32 = u_xlat31;
    u_xlat12 = (vec3<f32>(x_597.x, x_597.y, x_597.z) * vec3<f32>(x_599, x_599, x_599));
    let x_602 : f32 = u_xlat33;
    let x_604 : vec4<f32> = u_xlat4;
    let x_607 : vec3<f32> = u_xlat12;
    let x_609 : vec3<f32> = ((vec3<f32>(x_602, x_602, x_602) * vec3<f32>(x_604.x, x_604.y, x_604.z)) + -(x_607));
    let x_610 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_609.x, x_609.y, x_609.z, x_610.w);
    let x_613 : vec4<f32> = x_18.unity_SpecCube0_BoxMin;
    let x_615 : vec4<f32> = u_xlat4;
    let x_618 : vec3<f32> = u_xlat12;
    u_xlat5 = ((vec3<f32>(x_613.w, x_613.w, x_613.w) * vec3<f32>(x_615.x, x_615.y, x_615.z)) + x_618);
  }
  let x_620 : vec3<f32> = vs_TEXCOORD1;
  let x_621 : vec3<f32> = vs_TEXCOORD1;
  u_xlat31 = dot(x_620, x_621);
  let x_623 : f32 = u_xlat31;
  u_xlat31 = inverseSqrt(x_623);
  let x_625 : f32 = u_xlat31;
  let x_627 : vec3<f32> = vs_TEXCOORD1;
  u_xlat12 = (vec3<f32>(x_625, x_625, x_625) * x_627);
  let x_631 : vec4<f32> = x_18.x_Color;
  let x_635 : vec3<f32> = (vec3<f32>(x_631.x, x_631.y, x_631.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_636 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_635.x, x_635.y, x_635.z, x_636.w);
  let x_640 : f32 = x_18.x_Metallic;
  let x_642 : f32 = x_18.x_Metallic;
  let x_644 : f32 = x_18.x_Metallic;
  let x_645 : vec3<f32> = vec3<f32>(x_640, x_642, x_644);
  let x_650 : vec4<f32> = u_xlat4;
  let x_655 : vec3<f32> = ((vec3<f32>(x_645.x, x_645.y, x_645.z) * vec3<f32>(x_650.x, x_650.y, x_650.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_656 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_655.x, x_655.y, x_655.z, x_656.w);
  let x_659 : f32 = x_18.x_Metallic;
  u_xlat31 = ((-(x_659) * 0.959999979f) + 0.959999979f);
  let x_664 : f32 = u_xlat31;
  let x_667 : vec4<f32> = x_18.x_Color;
  let x_669 : vec3<f32> = (vec3<f32>(x_664, x_664, x_664) * vec3<f32>(x_667.x, x_667.y, x_667.z));
  let x_670 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_669.x, x_669.y, x_669.z, x_670.w);
  let x_672 : vec4<f32> = u_xlat0;
  let x_674 : f32 = u_xlat30;
  let x_678 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_680 : vec3<f32> = ((vec3<f32>(x_672.x, x_672.y, x_672.z) * vec3<f32>(x_674, x_674, x_674)) + vec3<f32>(x_678.x, x_678.y, x_678.z));
  let x_681 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_680.x, x_680.y, x_680.z, x_681.w);
  let x_683 : vec4<f32> = u_xlat0;
  let x_685 : vec4<f32> = u_xlat0;
  u_xlat30 = dot(vec3<f32>(x_683.x, x_683.y, x_683.z), vec3<f32>(x_685.x, x_685.y, x_685.z));
  let x_688 : f32 = u_xlat30;
  u_xlat30 = max(x_688, 0.001f);
  let x_691 : f32 = u_xlat30;
  u_xlat30 = inverseSqrt(x_691);
  let x_693 : f32 = u_xlat30;
  let x_695 : vec4<f32> = u_xlat0;
  let x_697 : vec3<f32> = (vec3<f32>(x_693, x_693, x_693) * vec3<f32>(x_695.x, x_695.y, x_695.z));
  let x_698 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_697.x, x_697.y, x_697.z, x_698.w);
  let x_700 : vec3<f32> = u_xlat12;
  let x_701 : vec4<f32> = u_xlat1;
  u_xlat30 = dot(x_700, vec3<f32>(x_701.x, x_701.y, x_701.z));
  let x_704 : vec3<f32> = u_xlat12;
  let x_706 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat1.x = dot(x_704, vec3<f32>(x_706.x, x_706.y, x_706.z));
  let x_711 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_711, 0.0f, 1.0f);
  let x_715 : vec3<f32> = u_xlat12;
  let x_716 : vec4<f32> = u_xlat0;
  u_xlat11 = dot(x_715, vec3<f32>(x_716.x, x_716.y, x_716.z));
  let x_719 : f32 = u_xlat11;
  u_xlat11 = clamp(x_719, 0.0f, 1.0f);
  let x_722 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_724 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_722.x, x_722.y, x_722.z), vec3<f32>(x_724.x, x_724.y, x_724.z));
  let x_729 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_729, 0.0f, 1.0f);
  let x_734 : f32 = u_xlat0.x;
  let x_736 : f32 = u_xlat0.x;
  u_xlat10.x = (x_734 * x_736);
  let x_739 : vec3<f32> = u_xlat10;
  let x_741 : vec4<f32> = u_xlat2;
  u_xlat10.x = dot(vec2<f32>(x_739.x, x_739.x), vec2<f32>(x_741.x, x_741.x));
  let x_746 : f32 = u_xlat10.x;
  u_xlat10.x = (x_746 + -0.5f);
  let x_752 : f32 = u_xlat1.x;
  u_xlat20 = (-(x_752) + 1.0f);
  let x_756 : f32 = u_xlat20;
  let x_757 : f32 = u_xlat20;
  u_xlat21 = (x_756 * x_757);
  let x_759 : f32 = u_xlat21;
  let x_760 : f32 = u_xlat21;
  u_xlat21 = (x_759 * x_760);
  let x_762 : f32 = u_xlat20;
  let x_763 : f32 = u_xlat21;
  u_xlat20 = (x_762 * x_763);
  let x_766 : f32 = u_xlat10.x;
  let x_767 : f32 = u_xlat20;
  u_xlat20 = ((x_766 * x_767) + 1.0f);
  let x_770 : f32 = u_xlat30;
  u_xlat21 = (-(abs(x_770)) + 1.0f);
  let x_774 : f32 = u_xlat21;
  let x_775 : f32 = u_xlat21;
  u_xlat12.x = (x_774 * x_775);
  let x_779 : f32 = u_xlat12.x;
  let x_781 : f32 = u_xlat12.x;
  u_xlat12.x = (x_779 * x_781);
  let x_784 : f32 = u_xlat21;
  let x_786 : f32 = u_xlat12.x;
  u_xlat21 = (x_784 * x_786);
  let x_789 : f32 = u_xlat10.x;
  let x_790 : f32 = u_xlat21;
  u_xlat10.x = ((x_789 * x_790) + 1.0f);
  let x_795 : f32 = u_xlat10.x;
  let x_796 : f32 = u_xlat20;
  u_xlat10.x = (x_795 * x_796);
  let x_800 : f32 = u_xlat2.x;
  let x_802 : f32 = u_xlat2.x;
  u_xlat20 = (x_800 * x_802);
  let x_804 : f32 = u_xlat20;
  u_xlat20 = max(x_804, 0.002f);
  let x_807 : f32 = u_xlat20;
  u_xlat2.x = (-(x_807) + 1.0f);
  let x_811 : f32 = u_xlat30;
  let x_814 : f32 = u_xlat2.x;
  let x_816 : f32 = u_xlat20;
  u_xlat12.x = ((abs(x_811) * x_814) + x_816);
  let x_820 : f32 = u_xlat1.x;
  let x_822 : f32 = u_xlat2.x;
  let x_824 : f32 = u_xlat20;
  u_xlat2.x = ((x_820 * x_822) + x_824);
  let x_827 : f32 = u_xlat30;
  let x_830 : f32 = u_xlat2.x;
  u_xlat30 = (abs(x_827) * x_830);
  let x_833 : f32 = u_xlat1.x;
  let x_835 : f32 = u_xlat12.x;
  let x_837 : f32 = u_xlat30;
  u_xlat30 = ((x_833 * x_835) + x_837);
  let x_839 : f32 = u_xlat30;
  u_xlat30 = (x_839 + 0.00001f);
  let x_842 : f32 = u_xlat30;
  u_xlat30 = (0.5f / x_842);
  let x_844 : f32 = u_xlat20;
  let x_845 : f32 = u_xlat20;
  u_xlat2.x = (x_844 * x_845);
  let x_848 : f32 = u_xlat11;
  let x_850 : f32 = u_xlat2.x;
  let x_852 : f32 = u_xlat11;
  u_xlat12.x = ((x_848 * x_850) + -(x_852));
  let x_857 : f32 = u_xlat12.x;
  let x_858 : f32 = u_xlat11;
  u_xlat11 = ((x_857 * x_858) + 1.0f);
  let x_862 : f32 = u_xlat2.x;
  u_xlat2.x = (x_862 * 0.318309873f);
  let x_866 : f32 = u_xlat11;
  let x_867 : f32 = u_xlat11;
  u_xlat11 = ((x_866 * x_867) + 0.0000001f);
  let x_872 : f32 = u_xlat2.x;
  let x_873 : f32 = u_xlat11;
  u_xlat11 = (x_872 / x_873);
  let x_875 : f32 = u_xlat30;
  let x_876 : f32 = u_xlat11;
  u_xlat10.z = (x_875 * x_876);
  let x_879 : vec4<f32> = u_xlat1;
  let x_881 : vec3<f32> = u_xlat10;
  let x_883 : vec2<f32> = (vec2<f32>(x_879.x, x_879.x) * vec2<f32>(x_881.x, x_881.z));
  let x_884 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_883.x, x_884.y, x_883.y);
  let x_887 : f32 = u_xlat10.z;
  u_xlat30 = (x_887 * 3.141592741f);
  let x_890 : f32 = u_xlat30;
  u_xlat30 = max(x_890, 0.0f);
  let x_892 : f32 = u_xlat20;
  let x_893 : f32 = u_xlat20;
  u_xlat20 = ((x_892 * x_893) + 1.0f);
  let x_896 : f32 = u_xlat20;
  u_xlat20 = (1.0f / x_896);
  let x_898 : vec4<f32> = u_xlat4;
  let x_900 : vec4<f32> = u_xlat4;
  u_xlat1.x = dot(vec3<f32>(x_898.x, x_898.y, x_898.z), vec3<f32>(x_900.x, x_900.y, x_900.z));
  let x_906 : f32 = u_xlat1.x;
  u_xlatb1 = !((x_906 == 0.0f));
  let x_908 : bool = u_xlatb1;
  u_xlat1.x = select(0.0f, 1.0f, x_908);
  let x_911 : f32 = u_xlat30;
  let x_913 : f32 = u_xlat1.x;
  u_xlat30 = (x_911 * x_913);
  let x_915 : f32 = u_xlat31;
  let x_918 : f32 = x_18.x_Glossiness;
  u_xlat1.x = (-(x_915) + x_918);
  let x_922 : f32 = u_xlat1.x;
  u_xlat1.x = (x_922 + 1.0f);
  let x_926 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_926, 0.0f, 1.0f);
  let x_929 : vec3<f32> = u_xlat10;
  let x_931 : vec3<f32> = u_xlat3;
  let x_932 : vec3<f32> = (vec3<f32>(x_929.x, x_929.x, x_929.x) * x_931);
  let x_933 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_932.x, x_932.y, x_932.z, x_933.w);
  let x_935 : vec3<f32> = u_xlat3;
  let x_936 : f32 = u_xlat30;
  u_xlat3 = (x_935 * vec3<f32>(x_936, x_936, x_936));
  let x_940 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_940) + 1.0f);
  let x_945 : f32 = u_xlat0.x;
  let x_947 : f32 = u_xlat0.x;
  u_xlat10.x = (x_945 * x_947);
  let x_951 : f32 = u_xlat10.x;
  let x_953 : f32 = u_xlat10.x;
  u_xlat10.x = (x_951 * x_953);
  let x_957 : f32 = u_xlat0.x;
  let x_959 : f32 = u_xlat10.x;
  u_xlat0.x = (x_957 * x_959);
  let x_962 : vec4<f32> = u_xlat4;
  u_xlat7 = (-(vec3<f32>(x_962.x, x_962.y, x_962.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_967 : vec3<f32> = u_xlat7;
  let x_968 : vec4<f32> = u_xlat0;
  let x_971 : vec4<f32> = u_xlat4;
  let x_973 : vec3<f32> = ((x_967 * vec3<f32>(x_968.x, x_968.x, x_968.x)) + vec3<f32>(x_971.x, x_971.y, x_971.z));
  let x_974 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_973.x, x_973.y, x_974.z, x_973.z);
  let x_976 : vec4<f32> = u_xlat0;
  let x_978 : vec3<f32> = u_xlat3;
  let x_979 : vec3<f32> = (vec3<f32>(x_976.x, x_976.y, x_976.w) * x_978);
  let x_980 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_979.x, x_979.y, x_980.z, x_979.z);
  let x_982 : vec4<f32> = u_xlat6;
  let x_984 : vec4<f32> = u_xlat2;
  let x_987 : vec4<f32> = u_xlat0;
  let x_989 : vec3<f32> = ((vec3<f32>(x_982.x, x_982.y, x_982.z) * vec3<f32>(x_984.x, x_984.y, x_984.z)) + vec3<f32>(x_987.x, x_987.y, x_987.w));
  let x_990 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_989.x, x_989.y, x_990.z, x_989.z);
  let x_992 : vec3<f32> = u_xlat5;
  let x_993 : f32 = u_xlat20;
  let x_995 : vec3<f32> = (x_992 * vec3<f32>(x_993, x_993, x_993));
  let x_996 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_995.x, x_995.y, x_995.z, x_996.w);
  let x_998 : vec4<f32> = u_xlat4;
  let x_1001 : vec4<f32> = u_xlat1;
  let x_1003 : vec3<f32> = (-(vec3<f32>(x_998.x, x_998.y, x_998.z)) + vec3<f32>(x_1001.x, x_1001.x, x_1001.x));
  let x_1004 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1003.x, x_1003.y, x_1004.z, x_1003.z);
  let x_1006 : f32 = u_xlat21;
  let x_1008 : vec4<f32> = u_xlat1;
  let x_1011 : vec4<f32> = u_xlat4;
  let x_1013 : vec3<f32> = ((vec3<f32>(x_1006, x_1006, x_1006) * vec3<f32>(x_1008.x, x_1008.y, x_1008.w)) + vec3<f32>(x_1011.x, x_1011.y, x_1011.z));
  let x_1014 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1013.x, x_1013.y, x_1013.z, x_1014.w);
  let x_1016 : vec4<f32> = u_xlat2;
  let x_1018 : vec4<f32> = u_xlat1;
  let x_1021 : vec4<f32> = u_xlat0;
  let x_1023 : vec3<f32> = ((vec3<f32>(x_1016.x, x_1016.y, x_1016.z) * vec3<f32>(x_1018.x, x_1018.y, x_1018.z)) + vec3<f32>(x_1021.x, x_1021.y, x_1021.w));
  let x_1024 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1023.x, x_1023.y, x_1023.z, x_1024.w);
  let x_1026 : vec4<f32> = u_xlat0;
  let x_1030 : vec4<f32> = x_18.x_Color2;
  let x_1032 : vec3<f32> = (vec3<f32>(x_1026.x, x_1026.y, x_1026.z) + vec3<f32>(x_1030.x, x_1030.y, x_1030.z));
  let x_1033 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1032.x, x_1032.y, x_1032.z, x_1033.w);
  let x_1036 : f32 = vs_TEXCOORD5;
  let x_1038 : f32 = x_18.x_ProjectionParams.y;
  u_xlat30 = (x_1036 / x_1038);
  let x_1040 : f32 = u_xlat30;
  u_xlat30 = (-(x_1040) + 1.0f);
  let x_1043 : f32 = u_xlat30;
  let x_1045 : f32 = x_18.x_ProjectionParams.z;
  u_xlat30 = (x_1043 * x_1045);
  let x_1047 : f32 = u_xlat30;
  u_xlat30 = max(x_1047, 0.0f);
  let x_1049 : f32 = u_xlat30;
  let x_1052 : f32 = x_18.unity_FogParams.x;
  u_xlat30 = (x_1049 * x_1052);
  let x_1054 : f32 = u_xlat30;
  let x_1055 : f32 = u_xlat30;
  u_xlat30 = (x_1054 * -(x_1055));
  let x_1058 : f32 = u_xlat30;
  u_xlat30 = exp2(x_1058);
  let x_1060 : vec4<f32> = u_xlat0;
  let x_1064 : vec4<f32> = x_18.unity_FogColor;
  let x_1067 : vec3<f32> = (vec3<f32>(x_1060.x, x_1060.y, x_1060.z) + -(vec3<f32>(x_1064.x, x_1064.y, x_1064.z)));
  let x_1068 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1067.x, x_1067.y, x_1067.z, x_1068.w);
  let x_1072 : f32 = u_xlat30;
  let x_1074 : vec4<f32> = u_xlat0;
  let x_1078 : vec4<f32> = x_18.unity_FogColor;
  let x_1080 : vec3<f32> = ((vec3<f32>(x_1072, x_1072, x_1072) * vec3<f32>(x_1074.x, x_1074.y, x_1074.z)) + vec3<f32>(x_1078.x, x_1078.y, x_1078.z));
  let x_1081 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1080.x, x_1080.y, x_1080.z, x_1081.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(4) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD3_param : f32, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(3) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD5_param : f32, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

