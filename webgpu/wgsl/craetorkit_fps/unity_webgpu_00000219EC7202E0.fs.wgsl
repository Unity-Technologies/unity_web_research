struct PGlobals {
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
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
  padding : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_LightColor0 : vec4<f32>,
  x_Color : vec4<f32>,
  x_Metallic : f32,
  x_Glossiness : f32,
  x_OcclusionStrength : f32,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_33 : PGlobals;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(0) @binding(4) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(6) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(1) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_OcclusionMap : sampler;

var<private> vs_TEXCOORD5 : vec4<f32>;

@group(0) @binding(2) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

@group(0) @binding(3) var unity_SpecCube1 : texture_cube<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat45 : f32;
  var u_xlat46 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlatb48 : bool;
  var u_xlatb4 : bool;
  var u_xlat19 : vec3<f32>;
  var u_xlat20 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var x_181 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat34 : f32;
  var u_xlat49 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat23 : vec3<f32>;
  var x_368 : vec3<f32>;
  var u_xlat48 : f32;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlatb47 : bool;
  var u_xlat47 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlat11 : vec3<f32>;
  var u_xlatb12 : vec3<bool>;
  var hlslcc_movcTemp : vec3<f32>;
  var x_561 : f32;
  var x_573 : f32;
  var x_585 : f32;
  var u_xlat12 : vec3<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb14 : vec3<bool>;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_751 : f32;
  var x_763 : f32;
  var x_775 : f32;
  var u_xlat17 : vec3<f32>;
  var u_xlat32 : f32;
  var u_xlat18 : f32;
  var u_xlat33 : f32;
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
  u_xlat45 = ((-(x_70) * 0.959999979f) + 0.959999979f);
  let x_75 : f32 = u_xlat45;
  let x_77 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_75, x_75, x_75) * x_77);
  let x_81 : vec4<f32> = vs_TEXCOORD4;
  let x_83 : vec4<f32> = vs_TEXCOORD4;
  u_xlat46 = dot(vec3<f32>(x_81.x, x_81.y, x_81.z), vec3<f32>(x_83.x, x_83.y, x_83.z));
  let x_86 : f32 = u_xlat46;
  u_xlat46 = inverseSqrt(x_86);
  let x_90 : f32 = u_xlat46;
  let x_92 : vec4<f32> = vs_TEXCOORD4;
  let x_94 : vec3<f32> = (vec3<f32>(x_90, x_90, x_90) * vec3<f32>(x_92.x, x_92.y, x_92.z));
  let x_95 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_94.x, x_94.y, x_94.z, x_95.w);
  let x_98 : vec4<f32> = vs_TEXCOORD1;
  let x_100 : vec4<f32> = vs_TEXCOORD1;
  u_xlat46 = dot(vec3<f32>(x_98.x, x_98.y, x_98.z), vec3<f32>(x_100.x, x_100.y, x_100.z));
  let x_103 : f32 = u_xlat46;
  u_xlat46 = inverseSqrt(x_103);
  let x_106 : f32 = u_xlat46;
  let x_108 : vec4<f32> = vs_TEXCOORD1;
  let x_110 : vec3<f32> = (vec3<f32>(x_106, x_106, x_106) * vec3<f32>(x_108.x, x_108.y, x_108.z));
  let x_111 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_110.x, x_110.y, x_110.z, x_111.w);
  let x_120 : f32 = x_33.unity_ProbeVolumeParams.x;
  u_xlatb48 = (x_120 == 1.0f);
  let x_123 : bool = u_xlatb48;
  if (x_123) {
    let x_129 : f32 = x_33.unity_ProbeVolumeParams.y;
    u_xlatb4 = (x_129 == 1.0f);
    let x_133 : vec4<f32> = vs_TEXCOORD3;
    let x_138 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[1i];
    u_xlat19 = (vec3<f32>(x_133.w, x_133.w, x_133.w) * vec3<f32>(x_138.x, x_138.y, x_138.z));
    let x_143 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[0i];
    let x_146 : vec4<f32> = vs_TEXCOORD2;
    let x_149 : vec3<f32> = u_xlat19;
    u_xlat19 = ((vec3<f32>(x_143.x, x_143.y, x_143.z) * vec3<f32>(x_146.w, x_146.w, x_146.w)) + x_149);
    let x_153 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[2i];
    let x_155 : vec4<f32> = vs_TEXCOORD4;
    let x_158 : vec3<f32> = u_xlat19;
    u_xlat19 = ((vec3<f32>(x_153.x, x_153.y, x_153.z) * vec3<f32>(x_155.w, x_155.w, x_155.w)) + x_158);
    let x_160 : vec3<f32> = u_xlat19;
    let x_163 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[3i];
    u_xlat19 = (x_160 + vec3<f32>(x_163.x, x_163.y, x_163.z));
    let x_170 : f32 = vs_TEXCOORD2.w;
    u_xlat20.x = x_170;
    let x_173 : f32 = vs_TEXCOORD3.w;
    u_xlat20.y = x_173;
    let x_176 : f32 = vs_TEXCOORD4.w;
    u_xlat20.z = x_176;
    let x_180 : bool = u_xlatb4;
    if (x_180) {
      let x_184 : vec3<f32> = u_xlat19;
      x_181 = x_184;
    } else {
      let x_186 : vec3<f32> = u_xlat20;
      x_181 = x_186;
    }
    let x_187 : vec3<f32> = x_181;
    let x_188 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_187.x, x_187.y, x_187.z, x_188.w);
    let x_190 : vec4<f32> = u_xlat4;
    let x_195 : vec3<f32> = x_33.unity_ProbeVolumeMin;
    let x_197 : vec3<f32> = (vec3<f32>(x_190.x, x_190.y, x_190.z) + -(x_195));
    let x_198 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_197.x, x_197.y, x_197.z, x_198.w);
    let x_200 : vec4<f32> = u_xlat4;
    let x_204 : vec3<f32> = x_33.unity_ProbeVolumeSizeInv;
    let x_205 : vec3<f32> = (vec3<f32>(x_200.x, x_200.y, x_200.z) * x_204);
    let x_206 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_206.x, x_205.x, x_205.y, x_205.z);
    let x_209 : f32 = u_xlat4.y;
    u_xlat19.x = ((x_209 * 0.25f) + 0.75f);
    let x_217 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat5.x = ((x_217 * 0.5f) + 0.75f);
    let x_223 : f32 = u_xlat19.x;
    let x_225 : f32 = u_xlat5.x;
    u_xlat4.x = max(x_223, x_225);
    let x_236 : vec4<f32> = u_xlat4;
    let x_238 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_236.x, x_236.z, x_236.w));
    u_xlat4 = x_238;
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
    u_xlat4.w = 1.0f;
  }
  let x_244 : vec4<f32> = u_xlat4;
  let x_247 : vec4<f32> = x_33.unity_OcclusionMaskSelector;
  u_xlat4.x = dot(x_244, x_247);
  let x_251 : f32 = u_xlat4.x;
  u_xlat4.x = clamp(x_251, 0.0f, 1.0f);
  let x_260 : vec4<f32> = vs_TEXCOORD0;
  let x_262 : vec4<f32> = textureSample(x_OcclusionMap, sampler_OcclusionMap, vec2<f32>(x_260.x, x_260.y));
  u_xlat19.x = x_262.y;
  let x_268 : f32 = x_33.x_OcclusionStrength;
  u_xlat34 = (-(x_268) + 1.0f);
  let x_272 : f32 = u_xlat19.x;
  let x_274 : f32 = x_33.x_OcclusionStrength;
  let x_276 : f32 = u_xlat34;
  u_xlat19.x = ((x_272 * x_274) + x_276);
  let x_281 : f32 = x_33.x_Glossiness;
  u_xlat34 = (-(x_281) + 1.0f);
  let x_285 : vec4<f32> = u_xlat3;
  let x_287 : vec4<f32> = u_xlat2;
  u_xlat49 = dot(vec3<f32>(x_285.x, x_285.y, x_285.z), vec3<f32>(x_287.x, x_287.y, x_287.z));
  let x_290 : f32 = u_xlat49;
  let x_291 : f32 = u_xlat49;
  u_xlat49 = (x_290 + x_291);
  let x_293 : vec4<f32> = u_xlat2;
  let x_295 : f32 = u_xlat49;
  let x_299 : vec4<f32> = u_xlat3;
  let x_301 : vec3<f32> = ((vec3<f32>(x_293.x, x_293.y, x_293.z) * -(vec3<f32>(x_295, x_295, x_295))) + vec3<f32>(x_299.x, x_299.y, x_299.z));
  let x_302 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_301.x, x_301.y, x_301.z, x_302.w);
  let x_305 : vec4<f32> = u_xlat4;
  let x_309 : vec4<f32> = x_33.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_305.x, x_305.x, x_305.x) * vec3<f32>(x_309.x, x_309.y, x_309.z));
  let x_312 : bool = u_xlatb48;
  if (x_312) {
    let x_316 : f32 = x_33.unity_ProbeVolumeParams.y;
    u_xlatb48 = (x_316 == 1.0f);
    let x_319 : vec4<f32> = vs_TEXCOORD3;
    let x_322 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[1i];
    let x_324 : vec3<f32> = (vec3<f32>(x_319.w, x_319.w, x_319.w) * vec3<f32>(x_322.x, x_322.y, x_322.z));
    let x_325 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_324.x, x_324.y, x_324.z, x_325.w);
    let x_328 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[0i];
    let x_330 : vec4<f32> = vs_TEXCOORD2;
    let x_333 : vec4<f32> = u_xlat7;
    let x_335 : vec3<f32> = ((vec3<f32>(x_328.x, x_328.y, x_328.z) * vec3<f32>(x_330.w, x_330.w, x_330.w)) + vec3<f32>(x_333.x, x_333.y, x_333.z));
    let x_336 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_335.x, x_335.y, x_335.z, x_336.w);
    let x_339 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[2i];
    let x_341 : vec4<f32> = vs_TEXCOORD4;
    let x_344 : vec4<f32> = u_xlat7;
    let x_346 : vec3<f32> = ((vec3<f32>(x_339.x, x_339.y, x_339.z) * vec3<f32>(x_341.w, x_341.w, x_341.w)) + vec3<f32>(x_344.x, x_344.y, x_344.z));
    let x_347 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_346.x, x_346.y, x_346.z, x_347.w);
    let x_349 : vec4<f32> = u_xlat7;
    let x_352 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[3i];
    let x_354 : vec3<f32> = (vec3<f32>(x_349.x, x_349.y, x_349.z) + vec3<f32>(x_352.x, x_352.y, x_352.z));
    let x_355 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_354.x, x_354.y, x_354.z, x_355.w);
    let x_359 : f32 = vs_TEXCOORD2.w;
    u_xlat23.x = x_359;
    let x_362 : f32 = vs_TEXCOORD3.w;
    u_xlat23.y = x_362;
    let x_365 : f32 = vs_TEXCOORD4.w;
    u_xlat23.z = x_365;
    let x_367 : bool = u_xlatb48;
    if (x_367) {
      let x_371 : vec4<f32> = u_xlat7;
      x_368 = vec3<f32>(x_371.x, x_371.y, x_371.z);
    } else {
      let x_374 : vec3<f32> = u_xlat23;
      x_368 = x_374;
    }
    let x_375 : vec3<f32> = x_368;
    let x_376 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_375.x, x_375.y, x_375.z, x_376.w);
    let x_378 : vec4<f32> = u_xlat7;
    let x_381 : vec3<f32> = x_33.unity_ProbeVolumeMin;
    let x_383 : vec3<f32> = (vec3<f32>(x_378.x, x_378.y, x_378.z) + -(x_381));
    let x_384 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_383.x, x_383.y, x_383.z, x_384.w);
    let x_386 : vec4<f32> = u_xlat7;
    let x_389 : vec3<f32> = x_33.unity_ProbeVolumeSizeInv;
    let x_390 : vec3<f32> = (vec3<f32>(x_386.x, x_386.y, x_386.z) * x_389);
    let x_391 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_391.x, x_390.x, x_390.y, x_390.z);
    let x_395 : f32 = u_xlat7.y;
    u_xlat48 = (x_395 * 0.25f);
    let x_398 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat4.x = (x_398 * 0.5f);
    let x_402 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat49 = ((-(x_402) * 0.5f) + 0.25f);
    let x_406 : f32 = u_xlat48;
    let x_408 : f32 = u_xlat4.x;
    u_xlat48 = max(x_406, x_408);
    let x_410 : f32 = u_xlat49;
    let x_411 : f32 = u_xlat48;
    u_xlat7.x = min(x_410, x_411);
    let x_418 : vec4<f32> = u_xlat7;
    let x_420 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_418.x, x_418.z, x_418.w));
    u_xlat8 = x_420;
    let x_422 : vec4<f32> = u_xlat7;
    let x_425 : vec3<f32> = (vec3<f32>(x_422.x, x_422.z, x_422.w) + vec3<f32>(0.25f, 0.0f, 0.0f));
    let x_426 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_425.x, x_425.y, x_425.z, x_426.w);
    let x_431 : vec4<f32> = u_xlat9;
    let x_433 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_431.x, x_431.y, x_431.z));
    u_xlat9 = x_433;
    let x_434 : vec4<f32> = u_xlat7;
    let x_437 : vec3<f32> = (vec3<f32>(x_434.x, x_434.z, x_434.w) + vec3<f32>(0.5f, 0.0f, 0.0f));
    let x_438 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_437.x, x_437.y, x_437.z, x_438.w);
    let x_443 : vec4<f32> = u_xlat7;
    let x_445 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_443.x, x_443.y, x_443.z));
    u_xlat7 = x_445;
    u_xlat2.w = 1.0f;
    let x_447 : vec4<f32> = u_xlat8;
    let x_448 : vec4<f32> = u_xlat2;
    u_xlat8.x = dot(x_447, x_448);
    let x_451 : vec4<f32> = u_xlat9;
    let x_452 : vec4<f32> = u_xlat2;
    u_xlat8.y = dot(x_451, x_452);
    let x_455 : vec4<f32> = u_xlat7;
    let x_456 : vec4<f32> = u_xlat2;
    u_xlat8.z = dot(x_455, x_456);
  } else {
    u_xlat2.w = 1.0f;
    let x_462 : vec4<f32> = x_33.unity_SHAr;
    let x_463 : vec4<f32> = u_xlat2;
    u_xlat8.x = dot(x_462, x_463);
    let x_467 : vec4<f32> = x_33.unity_SHAg;
    let x_468 : vec4<f32> = u_xlat2;
    u_xlat8.y = dot(x_467, x_468);
    let x_472 : vec4<f32> = x_33.unity_SHAb;
    let x_473 : vec4<f32> = u_xlat2;
    u_xlat8.z = dot(x_472, x_473);
  }
  let x_476 : vec4<f32> = u_xlat8;
  let x_479 : vec4<f32> = vs_TEXCOORD5;
  let x_481 : vec3<f32> = (vec3<f32>(x_476.x, x_476.y, x_476.z) + vec3<f32>(x_479.x, x_479.y, x_479.z));
  let x_482 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_481.x, x_481.y, x_481.z, x_482.w);
  let x_484 : vec4<f32> = u_xlat7;
  let x_487 : vec3<f32> = max(vec3<f32>(x_484.x, x_484.y, x_484.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_488 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_487.x, x_487.y, x_487.z, x_488.w);
  let x_493 : f32 = x_33.unity_SpecCube0_ProbePosition.w;
  u_xlatb47 = (0.0f < x_493);
  let x_495 : bool = u_xlatb47;
  if (x_495) {
    let x_499 : vec4<f32> = u_xlat5;
    let x_501 : vec4<f32> = u_xlat5;
    u_xlat47 = dot(vec3<f32>(x_499.x, x_499.y, x_499.z), vec3<f32>(x_501.x, x_501.y, x_501.z));
    let x_504 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_504);
    let x_506 : f32 = u_xlat47;
    let x_508 : vec4<f32> = u_xlat5;
    let x_510 : vec3<f32> = (vec3<f32>(x_506, x_506, x_506) * vec3<f32>(x_508.x, x_508.y, x_508.z));
    let x_511 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_510.x, x_510.y, x_510.z, x_511.w);
    let x_514 : f32 = vs_TEXCOORD2.w;
    u_xlat9.x = x_514;
    let x_517 : f32 = vs_TEXCOORD3.w;
    u_xlat9.y = x_517;
    let x_520 : f32 = vs_TEXCOORD4.w;
    u_xlat9.z = x_520;
    let x_523 : vec4<f32> = u_xlat9;
    let x_528 : vec4<f32> = x_33.unity_SpecCube0_BoxMax;
    u_xlat10 = (-(vec3<f32>(x_523.x, x_523.y, x_523.z)) + vec3<f32>(x_528.x, x_528.y, x_528.z));
    let x_531 : vec3<f32> = u_xlat10;
    let x_532 : vec4<f32> = u_xlat8;
    u_xlat10 = (x_531 / vec3<f32>(x_532.x, x_532.y, x_532.z));
    let x_536 : vec4<f32> = u_xlat9;
    let x_541 : vec4<f32> = x_33.unity_SpecCube0_BoxMin;
    u_xlat11 = (-(vec3<f32>(x_536.x, x_536.y, x_536.z)) + vec3<f32>(x_541.x, x_541.y, x_541.z));
    let x_544 : vec3<f32> = u_xlat11;
    let x_545 : vec4<f32> = u_xlat8;
    u_xlat11 = (x_544 / vec3<f32>(x_545.x, x_545.y, x_545.z));
    let x_552 : vec4<f32> = u_xlat8;
    let x_555 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_552.x, x_552.y, x_552.z, x_552.x));
    u_xlatb12 = vec3<bool>(x_555.x, x_555.y, x_555.z);
    let x_558 : vec3<f32> = u_xlat10;
    hlslcc_movcTemp = x_558;
    let x_560 : bool = u_xlatb12.x;
    if (x_560) {
      let x_565 : f32 = u_xlat10.x;
      x_561 = x_565;
    } else {
      let x_568 : f32 = u_xlat11.x;
      x_561 = x_568;
    }
    let x_569 : f32 = x_561;
    hlslcc_movcTemp.x = x_569;
    let x_572 : bool = u_xlatb12.y;
    if (x_572) {
      let x_577 : f32 = u_xlat10.y;
      x_573 = x_577;
    } else {
      let x_580 : f32 = u_xlat11.y;
      x_573 = x_580;
    }
    let x_581 : f32 = x_573;
    hlslcc_movcTemp.y = x_581;
    let x_584 : bool = u_xlatb12.z;
    if (x_584) {
      let x_589 : f32 = u_xlat10.z;
      x_585 = x_589;
    } else {
      let x_592 : f32 = u_xlat11.z;
      x_585 = x_592;
    }
    let x_593 : f32 = x_585;
    hlslcc_movcTemp.z = x_593;
    let x_595 : vec3<f32> = hlslcc_movcTemp;
    u_xlat10 = x_595;
    let x_597 : f32 = u_xlat10.y;
    let x_599 : f32 = u_xlat10.x;
    u_xlat47 = min(x_597, x_599);
    let x_602 : f32 = u_xlat10.z;
    let x_603 : f32 = u_xlat47;
    u_xlat47 = min(x_602, x_603);
    let x_605 : vec4<f32> = u_xlat9;
    let x_608 : vec4<f32> = x_33.unity_SpecCube0_ProbePosition;
    let x_611 : vec3<f32> = (vec3<f32>(x_605.x, x_605.y, x_605.z) + -(vec3<f32>(x_608.x, x_608.y, x_608.z)));
    let x_612 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_611.x, x_611.y, x_611.z, x_612.w);
    let x_614 : vec4<f32> = u_xlat8;
    let x_616 : f32 = u_xlat47;
    let x_619 : vec4<f32> = u_xlat9;
    let x_621 : vec3<f32> = ((vec3<f32>(x_614.x, x_614.y, x_614.z) * vec3<f32>(x_616, x_616, x_616)) + vec3<f32>(x_619.x, x_619.y, x_619.z));
    let x_622 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_621.x, x_621.y, x_621.z, x_622.w);
  } else {
    let x_625 : vec4<f32> = u_xlat5;
    let x_626 : vec3<f32> = vec3<f32>(x_625.x, x_625.y, x_625.z);
    let x_627 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_626.x, x_626.y, x_626.z, x_627.w);
  }
  let x_629 : f32 = u_xlat34;
  u_xlat47 = ((-(x_629) * 0.699999988f) + 1.700000048f);
  let x_635 : f32 = u_xlat47;
  let x_636 : f32 = u_xlat34;
  u_xlat47 = (x_635 * x_636);
  let x_638 : f32 = u_xlat47;
  u_xlat47 = (x_638 * 6.0f);
  let x_649 : vec4<f32> = u_xlat8;
  let x_651 : f32 = u_xlat47;
  let x_652 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_649.x, x_649.y, x_649.z), x_651);
  u_xlat8 = x_652;
  let x_654 : f32 = u_xlat8.w;
  u_xlat48 = (x_654 + -1.0f);
  let x_659 : f32 = x_33.unity_SpecCube0_HDR.w;
  let x_660 : f32 = u_xlat48;
  u_xlat48 = ((x_659 * x_660) + 1.0f);
  let x_663 : f32 = u_xlat48;
  u_xlat48 = log2(x_663);
  let x_665 : f32 = u_xlat48;
  let x_667 : f32 = x_33.unity_SpecCube0_HDR.y;
  u_xlat48 = (x_665 * x_667);
  let x_669 : f32 = u_xlat48;
  u_xlat48 = exp2(x_669);
  let x_671 : f32 = u_xlat48;
  let x_673 : f32 = x_33.unity_SpecCube0_HDR.x;
  u_xlat48 = (x_671 * x_673);
  let x_675 : vec4<f32> = u_xlat8;
  let x_677 : f32 = u_xlat48;
  let x_679 : vec3<f32> = (vec3<f32>(x_675.x, x_675.y, x_675.z) * vec3<f32>(x_677, x_677, x_677));
  let x_680 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_679.x, x_679.y, x_679.z, x_680.w);
  let x_683 : f32 = x_33.unity_SpecCube0_BoxMin.w;
  u_xlatb4 = (x_683 < 0.999989986f);
  let x_686 : bool = u_xlatb4;
  if (x_686) {
    let x_691 : f32 = x_33.unity_SpecCube1_ProbePosition.w;
    u_xlatb4 = (0.0f < x_691);
    let x_693 : bool = u_xlatb4;
    if (x_693) {
      let x_696 : vec4<f32> = u_xlat5;
      let x_698 : vec4<f32> = u_xlat5;
      u_xlat4.x = dot(vec3<f32>(x_696.x, x_696.y, x_696.z), vec3<f32>(x_698.x, x_698.y, x_698.z));
      let x_703 : f32 = u_xlat4.x;
      u_xlat4.x = inverseSqrt(x_703);
      let x_706 : vec4<f32> = u_xlat4;
      let x_708 : vec4<f32> = u_xlat5;
      u_xlat10 = (vec3<f32>(x_706.x, x_706.x, x_706.x) * vec3<f32>(x_708.x, x_708.y, x_708.z));
      let x_712 : f32 = vs_TEXCOORD2.w;
      u_xlat11.x = x_712;
      let x_715 : f32 = vs_TEXCOORD3.w;
      u_xlat11.y = x_715;
      let x_718 : f32 = vs_TEXCOORD4.w;
      u_xlat11.z = x_718;
      let x_721 : vec3<f32> = u_xlat11;
      let x_725 : vec4<f32> = x_33.unity_SpecCube1_BoxMax;
      u_xlat12 = (-(x_721) + vec3<f32>(x_725.x, x_725.y, x_725.z));
      let x_728 : vec3<f32> = u_xlat12;
      let x_729 : vec3<f32> = u_xlat10;
      u_xlat12 = (x_728 / x_729);
      let x_732 : vec3<f32> = u_xlat11;
      let x_736 : vec4<f32> = x_33.unity_SpecCube1_BoxMin;
      u_xlat13 = (-(x_732) + vec3<f32>(x_736.x, x_736.y, x_736.z));
      let x_739 : vec3<f32> = u_xlat13;
      let x_740 : vec3<f32> = u_xlat10;
      u_xlat13 = (x_739 / x_740);
      let x_743 : vec3<f32> = u_xlat10;
      let x_745 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_743.x, x_743.y, x_743.z, x_743.x));
      u_xlatb14 = vec3<bool>(x_745.x, x_745.y, x_745.z);
      let x_748 : vec3<f32> = u_xlat12;
      hlslcc_movcTemp_1 = x_748;
      let x_750 : bool = u_xlatb14.x;
      if (x_750) {
        let x_755 : f32 = u_xlat12.x;
        x_751 = x_755;
      } else {
        let x_758 : f32 = u_xlat13.x;
        x_751 = x_758;
      }
      let x_759 : f32 = x_751;
      hlslcc_movcTemp_1.x = x_759;
      let x_762 : bool = u_xlatb14.y;
      if (x_762) {
        let x_767 : f32 = u_xlat12.y;
        x_763 = x_767;
      } else {
        let x_770 : f32 = u_xlat13.y;
        x_763 = x_770;
      }
      let x_771 : f32 = x_763;
      hlslcc_movcTemp_1.y = x_771;
      let x_774 : bool = u_xlatb14.z;
      if (x_774) {
        let x_779 : f32 = u_xlat12.z;
        x_775 = x_779;
      } else {
        let x_782 : f32 = u_xlat13.z;
        x_775 = x_782;
      }
      let x_783 : f32 = x_775;
      hlslcc_movcTemp_1.z = x_783;
      let x_785 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat12 = x_785;
      let x_787 : f32 = u_xlat12.y;
      let x_789 : f32 = u_xlat12.x;
      u_xlat4.x = min(x_787, x_789);
      let x_793 : f32 = u_xlat12.z;
      let x_795 : f32 = u_xlat4.x;
      u_xlat4.x = min(x_793, x_795);
      let x_798 : vec3<f32> = u_xlat11;
      let x_800 : vec4<f32> = x_33.unity_SpecCube1_ProbePosition;
      u_xlat11 = (x_798 + -(vec3<f32>(x_800.x, x_800.y, x_800.z)));
      let x_804 : vec3<f32> = u_xlat10;
      let x_805 : vec4<f32> = u_xlat4;
      let x_808 : vec3<f32> = u_xlat11;
      let x_809 : vec3<f32> = ((x_804 * vec3<f32>(x_805.x, x_805.x, x_805.x)) + x_808);
      let x_810 : vec4<f32> = u_xlat5;
      u_xlat5 = vec4<f32>(x_809.x, x_809.y, x_809.z, x_810.w);
    }
    let x_816 : vec4<f32> = u_xlat5;
    let x_818 : f32 = u_xlat47;
    let x_819 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_816.x, x_816.y, x_816.z), x_818);
    u_xlat5 = x_819;
    let x_821 : f32 = u_xlat5.w;
    u_xlat47 = (x_821 + -1.0f);
    let x_825 : f32 = x_33.unity_SpecCube1_HDR.w;
    let x_826 : f32 = u_xlat47;
    u_xlat47 = ((x_825 * x_826) + 1.0f);
    let x_829 : f32 = u_xlat47;
    u_xlat47 = log2(x_829);
    let x_831 : f32 = u_xlat47;
    let x_833 : f32 = x_33.unity_SpecCube1_HDR.y;
    u_xlat47 = (x_831 * x_833);
    let x_835 : f32 = u_xlat47;
    u_xlat47 = exp2(x_835);
    let x_837 : f32 = u_xlat47;
    let x_839 : f32 = x_33.unity_SpecCube1_HDR.x;
    u_xlat47 = (x_837 * x_839);
    let x_841 : vec4<f32> = u_xlat5;
    let x_843 : f32 = u_xlat47;
    let x_845 : vec3<f32> = (vec3<f32>(x_841.x, x_841.y, x_841.z) * vec3<f32>(x_843, x_843, x_843));
    let x_846 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_845.x, x_845.y, x_845.z, x_846.w);
    let x_848 : f32 = u_xlat48;
    let x_850 : vec4<f32> = u_xlat8;
    let x_853 : vec4<f32> = u_xlat5;
    let x_856 : vec3<f32> = ((vec3<f32>(x_848, x_848, x_848) * vec3<f32>(x_850.x, x_850.y, x_850.z)) + -(vec3<f32>(x_853.x, x_853.y, x_853.z)));
    let x_857 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_856.x, x_856.y, x_856.z, x_857.w);
    let x_860 : vec4<f32> = x_33.unity_SpecCube0_BoxMin;
    let x_862 : vec4<f32> = u_xlat8;
    let x_865 : vec4<f32> = u_xlat5;
    let x_867 : vec3<f32> = ((vec3<f32>(x_860.w, x_860.w, x_860.w) * vec3<f32>(x_862.x, x_862.y, x_862.z)) + vec3<f32>(x_865.x, x_865.y, x_865.z));
    let x_868 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_867.x, x_867.y, x_867.z, x_868.w);
  }
  let x_870 : vec3<f32> = u_xlat19;
  let x_872 : vec4<f32> = u_xlat9;
  let x_874 : vec3<f32> = (vec3<f32>(x_870.x, x_870.x, x_870.x) * vec3<f32>(x_872.x, x_872.y, x_872.z));
  let x_875 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_874.x, x_874.y, x_874.z, x_875.w);
  let x_877 : vec4<f32> = vs_TEXCOORD1;
  let x_880 : f32 = u_xlat46;
  let x_884 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  let x_886 : vec3<f32> = ((-(vec3<f32>(x_877.x, x_877.y, x_877.z)) * vec3<f32>(x_880, x_880, x_880)) + vec3<f32>(x_884.x, x_884.y, x_884.z));
  let x_887 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_886.x, x_886.y, x_886.z, x_887.w);
  let x_889 : vec4<f32> = u_xlat8;
  let x_891 : vec4<f32> = u_xlat8;
  u_xlat46 = dot(vec3<f32>(x_889.x, x_889.y, x_889.z), vec3<f32>(x_891.x, x_891.y, x_891.z));
  let x_894 : f32 = u_xlat46;
  u_xlat46 = max(x_894, 0.001f);
  let x_897 : f32 = u_xlat46;
  u_xlat46 = inverseSqrt(x_897);
  let x_899 : f32 = u_xlat46;
  let x_901 : vec4<f32> = u_xlat8;
  let x_903 : vec3<f32> = (vec3<f32>(x_899, x_899, x_899) * vec3<f32>(x_901.x, x_901.y, x_901.z));
  let x_904 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_903.x, x_903.y, x_903.z, x_904.w);
  let x_906 : vec4<f32> = u_xlat2;
  let x_908 : vec4<f32> = u_xlat3;
  u_xlat46 = dot(vec3<f32>(x_906.x, x_906.y, x_906.z), -(vec3<f32>(x_908.x, x_908.y, x_908.z)));
  let x_912 : vec4<f32> = u_xlat2;
  let x_915 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  u_xlat47 = dot(vec3<f32>(x_912.x, x_912.y, x_912.z), vec3<f32>(x_915.x, x_915.y, x_915.z));
  let x_918 : f32 = u_xlat47;
  u_xlat47 = clamp(x_918, 0.0f, 1.0f);
  let x_920 : vec4<f32> = u_xlat2;
  let x_922 : vec4<f32> = u_xlat8;
  u_xlat2.x = dot(vec3<f32>(x_920.x, x_920.y, x_920.z), vec3<f32>(x_922.x, x_922.y, x_922.z));
  let x_927 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_927, 0.0f, 1.0f);
  let x_932 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  let x_934 : vec4<f32> = u_xlat8;
  u_xlat17.x = dot(vec3<f32>(x_932.x, x_932.y, x_932.z), vec3<f32>(x_934.x, x_934.y, x_934.z));
  let x_939 : f32 = u_xlat17.x;
  u_xlat17.x = clamp(x_939, 0.0f, 1.0f);
  let x_944 : f32 = u_xlat17.x;
  let x_946 : f32 = u_xlat17.x;
  u_xlat32 = (x_944 * x_946);
  let x_948 : f32 = u_xlat32;
  let x_950 : f32 = u_xlat34;
  u_xlat32 = dot(vec2<f32>(x_948, x_948), vec2<f32>(x_950, x_950));
  let x_953 : f32 = u_xlat32;
  u_xlat32 = (x_953 + -0.5f);
  let x_956 : f32 = u_xlat47;
  u_xlat3.x = (-(x_956) + 1.0f);
  let x_962 : f32 = u_xlat3.x;
  let x_964 : f32 = u_xlat3.x;
  u_xlat18 = (x_962 * x_964);
  let x_966 : f32 = u_xlat18;
  let x_967 : f32 = u_xlat18;
  u_xlat18 = (x_966 * x_967);
  let x_970 : f32 = u_xlat3.x;
  let x_971 : f32 = u_xlat18;
  u_xlat3.x = (x_970 * x_971);
  let x_974 : f32 = u_xlat32;
  let x_976 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_974 * x_976) + 1.0f);
  let x_980 : f32 = u_xlat46;
  u_xlat18 = (-(abs(x_980)) + 1.0f);
  let x_985 : f32 = u_xlat18;
  let x_986 : f32 = u_xlat18;
  u_xlat33 = (x_985 * x_986);
  let x_988 : f32 = u_xlat33;
  let x_989 : f32 = u_xlat33;
  u_xlat33 = (x_988 * x_989);
  let x_991 : f32 = u_xlat18;
  let x_992 : f32 = u_xlat33;
  u_xlat18 = (x_991 * x_992);
  let x_994 : f32 = u_xlat32;
  let x_995 : f32 = u_xlat18;
  u_xlat32 = ((x_994 * x_995) + 1.0f);
  let x_998 : f32 = u_xlat32;
  let x_1000 : f32 = u_xlat3.x;
  u_xlat32 = (x_998 * x_1000);
  let x_1002 : f32 = u_xlat47;
  let x_1003 : f32 = u_xlat32;
  u_xlat32 = (x_1002 * x_1003);
  let x_1005 : f32 = u_xlat34;
  let x_1006 : f32 = u_xlat34;
  u_xlat3.x = (x_1005 * x_1006);
  let x_1010 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_1010, 0.002f);
  let x_1015 : f32 = u_xlat3.x;
  u_xlat33 = (-(x_1015) + 1.0f);
  let x_1018 : f32 = u_xlat46;
  let x_1020 : f32 = u_xlat33;
  let x_1023 : f32 = u_xlat3.x;
  u_xlat48 = ((abs(x_1018) * x_1020) + x_1023);
  let x_1025 : f32 = u_xlat47;
  let x_1026 : f32 = u_xlat33;
  let x_1029 : f32 = u_xlat3.x;
  u_xlat33 = ((x_1025 * x_1026) + x_1029);
  let x_1031 : f32 = u_xlat46;
  let x_1033 : f32 = u_xlat33;
  u_xlat46 = (abs(x_1031) * x_1033);
  let x_1035 : f32 = u_xlat47;
  let x_1036 : f32 = u_xlat48;
  let x_1038 : f32 = u_xlat46;
  u_xlat46 = ((x_1035 * x_1036) + x_1038);
  let x_1040 : f32 = u_xlat46;
  u_xlat46 = (x_1040 + 0.00001f);
  let x_1043 : f32 = u_xlat46;
  u_xlat46 = (0.5f / x_1043);
  let x_1046 : f32 = u_xlat3.x;
  let x_1048 : f32 = u_xlat3.x;
  u_xlat33 = (x_1046 * x_1048);
  let x_1051 : f32 = u_xlat2.x;
  let x_1052 : f32 = u_xlat33;
  let x_1055 : f32 = u_xlat2.x;
  u_xlat48 = ((x_1051 * x_1052) + -(x_1055));
  let x_1058 : f32 = u_xlat48;
  let x_1060 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1058 * x_1060) + 1.0f);
  let x_1064 : f32 = u_xlat33;
  u_xlat33 = (x_1064 * 0.318309873f);
  let x_1068 : f32 = u_xlat2.x;
  let x_1070 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1068 * x_1070) + 0.0000001f);
  let x_1075 : f32 = u_xlat33;
  let x_1077 : f32 = u_xlat2.x;
  u_xlat2.x = (x_1075 / x_1077);
  let x_1080 : f32 = u_xlat46;
  let x_1082 : f32 = u_xlat2.x;
  u_xlat46 = (x_1080 * x_1082);
  let x_1084 : f32 = u_xlat47;
  let x_1085 : f32 = u_xlat46;
  u_xlat46 = (x_1084 * x_1085);
  let x_1087 : f32 = u_xlat46;
  u_xlat46 = (x_1087 * 3.141592741f);
  let x_1090 : f32 = u_xlat46;
  u_xlat46 = max(x_1090, 0.0f);
  let x_1093 : f32 = u_xlat3.x;
  let x_1095 : f32 = u_xlat3.x;
  u_xlat2.x = ((x_1093 * x_1095) + 1.0f);
  let x_1100 : f32 = u_xlat2.x;
  u_xlat2.x = (1.0f / x_1100);
  let x_1103 : vec3<f32> = u_xlat0;
  let x_1104 : vec3<f32> = u_xlat0;
  u_xlat47 = dot(x_1103, x_1104);
  let x_1106 : f32 = u_xlat47;
  u_xlatb47 = !((x_1106 == 0.0f));
  let x_1108 : bool = u_xlatb47;
  u_xlat47 = select(0.0f, 1.0f, x_1108);
  let x_1110 : f32 = u_xlat46;
  let x_1111 : f32 = u_xlat47;
  u_xlat46 = (x_1110 * x_1111);
  let x_1113 : f32 = u_xlat45;
  let x_1116 : f32 = x_33.x_Glossiness;
  u_xlat45 = (-(x_1113) + x_1116);
  let x_1118 : f32 = u_xlat45;
  u_xlat45 = (x_1118 + 1.0f);
  let x_1120 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1120, 0.0f, 1.0f);
  let x_1122 : f32 = u_xlat32;
  let x_1124 : vec3<f32> = u_xlat6;
  let x_1125 : vec3<f32> = (vec3<f32>(x_1122, x_1122, x_1122) * x_1124);
  let x_1126 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1125.x, x_1126.y, x_1125.y, x_1125.z);
  let x_1128 : vec4<f32> = u_xlat7;
  let x_1130 : vec3<f32> = u_xlat19;
  let x_1133 : vec4<f32> = u_xlat3;
  let x_1135 : vec3<f32> = ((vec3<f32>(x_1128.x, x_1128.y, x_1128.z) * vec3<f32>(x_1130.x, x_1130.x, x_1130.x)) + vec3<f32>(x_1133.x, x_1133.z, x_1133.w));
  let x_1136 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1135.x, x_1136.y, x_1135.y, x_1135.z);
  let x_1138 : vec3<f32> = u_xlat6;
  let x_1139 : f32 = u_xlat46;
  let x_1141 : vec3<f32> = (x_1138 * vec3<f32>(x_1139, x_1139, x_1139));
  let x_1142 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1141.x, x_1141.y, x_1141.z, x_1142.w);
  let x_1145 : f32 = u_xlat17.x;
  u_xlat46 = (-(x_1145) + 1.0f);
  let x_1148 : f32 = u_xlat46;
  let x_1149 : f32 = u_xlat46;
  u_xlat17.x = (x_1148 * x_1149);
  let x_1153 : f32 = u_xlat17.x;
  let x_1155 : f32 = u_xlat17.x;
  u_xlat17.x = (x_1153 * x_1155);
  let x_1158 : f32 = u_xlat46;
  let x_1160 : f32 = u_xlat17.x;
  u_xlat46 = (x_1158 * x_1160);
  let x_1162 : vec3<f32> = u_xlat0;
  u_xlat17 = (-(x_1162) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1166 : vec3<f32> = u_xlat17;
  let x_1167 : f32 = u_xlat46;
  let x_1170 : vec3<f32> = u_xlat0;
  u_xlat17 = ((x_1166 * vec3<f32>(x_1167, x_1167, x_1167)) + x_1170);
  let x_1172 : vec3<f32> = u_xlat17;
  let x_1173 : vec4<f32> = u_xlat4;
  u_xlat17 = (x_1172 * vec3<f32>(x_1173.x, x_1173.y, x_1173.z));
  let x_1176 : vec3<f32> = u_xlat1;
  let x_1177 : vec4<f32> = u_xlat3;
  let x_1180 : vec3<f32> = u_xlat17;
  u_xlat1 = ((x_1176 * vec3<f32>(x_1177.x, x_1177.z, x_1177.w)) + x_1180);
  let x_1182 : vec4<f32> = u_xlat5;
  let x_1184 : vec4<f32> = u_xlat2;
  let x_1186 : vec3<f32> = (vec3<f32>(x_1182.x, x_1182.y, x_1182.z) * vec3<f32>(x_1184.x, x_1184.x, x_1184.x));
  let x_1187 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1186.x, x_1186.y, x_1186.z, x_1187.w);
  let x_1189 : vec3<f32> = u_xlat0;
  let x_1191 : f32 = u_xlat45;
  let x_1193 : vec3<f32> = (-(x_1189) + vec3<f32>(x_1191, x_1191, x_1191));
  let x_1194 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1193.x, x_1194.y, x_1193.y, x_1193.z);
  let x_1196 : f32 = u_xlat18;
  let x_1198 : vec4<f32> = u_xlat3;
  let x_1201 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1196, x_1196, x_1196) * vec3<f32>(x_1198.x, x_1198.z, x_1198.w)) + x_1201);
  let x_1205 : vec4<f32> = u_xlat2;
  let x_1207 : vec3<f32> = u_xlat0;
  let x_1209 : vec3<f32> = u_xlat1;
  let x_1210 : vec3<f32> = ((vec3<f32>(x_1205.x, x_1205.y, x_1205.z) * x_1207) + x_1209);
  let x_1211 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1210.x, x_1210.y, x_1210.z, x_1211.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

