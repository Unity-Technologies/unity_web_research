struct PGlobals {
  x_ProjectionParams : vec4<f32>,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
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
  var x_562 : f32;
  var x_574 : f32;
  var x_586 : f32;
  var u_xlat12 : vec3<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb14 : vec3<bool>;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_752 : f32;
  var x_764 : f32;
  var x_776 : f32;
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
    let x_473 : vec4<f32> = x_33.unity_SHAb;
    let x_474 : vec4<f32> = u_xlat2;
    u_xlat8.z = dot(x_473, x_474);
  }
  let x_477 : vec4<f32> = u_xlat8;
  let x_480 : vec4<f32> = vs_TEXCOORD5;
  let x_482 : vec3<f32> = (vec3<f32>(x_477.x, x_477.y, x_477.z) + vec3<f32>(x_480.x, x_480.y, x_480.z));
  let x_483 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_482.x, x_482.y, x_482.z, x_483.w);
  let x_485 : vec4<f32> = u_xlat7;
  let x_488 : vec3<f32> = max(vec3<f32>(x_485.x, x_485.y, x_485.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_489 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_488.x, x_488.y, x_488.z, x_489.w);
  let x_494 : f32 = x_33.unity_SpecCube0_ProbePosition.w;
  u_xlatb47 = (0.0f < x_494);
  let x_496 : bool = u_xlatb47;
  if (x_496) {
    let x_500 : vec4<f32> = u_xlat5;
    let x_502 : vec4<f32> = u_xlat5;
    u_xlat47 = dot(vec3<f32>(x_500.x, x_500.y, x_500.z), vec3<f32>(x_502.x, x_502.y, x_502.z));
    let x_505 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_505);
    let x_507 : f32 = u_xlat47;
    let x_509 : vec4<f32> = u_xlat5;
    let x_511 : vec3<f32> = (vec3<f32>(x_507, x_507, x_507) * vec3<f32>(x_509.x, x_509.y, x_509.z));
    let x_512 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_511.x, x_511.y, x_511.z, x_512.w);
    let x_515 : f32 = vs_TEXCOORD2.w;
    u_xlat9.x = x_515;
    let x_518 : f32 = vs_TEXCOORD3.w;
    u_xlat9.y = x_518;
    let x_521 : f32 = vs_TEXCOORD4.w;
    u_xlat9.z = x_521;
    let x_524 : vec4<f32> = u_xlat9;
    let x_529 : vec4<f32> = x_33.unity_SpecCube0_BoxMax;
    u_xlat10 = (-(vec3<f32>(x_524.x, x_524.y, x_524.z)) + vec3<f32>(x_529.x, x_529.y, x_529.z));
    let x_532 : vec3<f32> = u_xlat10;
    let x_533 : vec4<f32> = u_xlat8;
    u_xlat10 = (x_532 / vec3<f32>(x_533.x, x_533.y, x_533.z));
    let x_537 : vec4<f32> = u_xlat9;
    let x_542 : vec4<f32> = x_33.unity_SpecCube0_BoxMin;
    u_xlat11 = (-(vec3<f32>(x_537.x, x_537.y, x_537.z)) + vec3<f32>(x_542.x, x_542.y, x_542.z));
    let x_545 : vec3<f32> = u_xlat11;
    let x_546 : vec4<f32> = u_xlat8;
    u_xlat11 = (x_545 / vec3<f32>(x_546.x, x_546.y, x_546.z));
    let x_553 : vec4<f32> = u_xlat8;
    let x_556 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_553.x, x_553.y, x_553.z, x_553.x));
    u_xlatb12 = vec3<bool>(x_556.x, x_556.y, x_556.z);
    let x_559 : vec3<f32> = u_xlat10;
    hlslcc_movcTemp = x_559;
    let x_561 : bool = u_xlatb12.x;
    if (x_561) {
      let x_566 : f32 = u_xlat10.x;
      x_562 = x_566;
    } else {
      let x_569 : f32 = u_xlat11.x;
      x_562 = x_569;
    }
    let x_570 : f32 = x_562;
    hlslcc_movcTemp.x = x_570;
    let x_573 : bool = u_xlatb12.y;
    if (x_573) {
      let x_578 : f32 = u_xlat10.y;
      x_574 = x_578;
    } else {
      let x_581 : f32 = u_xlat11.y;
      x_574 = x_581;
    }
    let x_582 : f32 = x_574;
    hlslcc_movcTemp.y = x_582;
    let x_585 : bool = u_xlatb12.z;
    if (x_585) {
      let x_590 : f32 = u_xlat10.z;
      x_586 = x_590;
    } else {
      let x_593 : f32 = u_xlat11.z;
      x_586 = x_593;
    }
    let x_594 : f32 = x_586;
    hlslcc_movcTemp.z = x_594;
    let x_596 : vec3<f32> = hlslcc_movcTemp;
    u_xlat10 = x_596;
    let x_598 : f32 = u_xlat10.y;
    let x_600 : f32 = u_xlat10.x;
    u_xlat47 = min(x_598, x_600);
    let x_603 : f32 = u_xlat10.z;
    let x_604 : f32 = u_xlat47;
    u_xlat47 = min(x_603, x_604);
    let x_606 : vec4<f32> = u_xlat9;
    let x_609 : vec4<f32> = x_33.unity_SpecCube0_ProbePosition;
    let x_612 : vec3<f32> = (vec3<f32>(x_606.x, x_606.y, x_606.z) + -(vec3<f32>(x_609.x, x_609.y, x_609.z)));
    let x_613 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_612.x, x_612.y, x_612.z, x_613.w);
    let x_615 : vec4<f32> = u_xlat8;
    let x_617 : f32 = u_xlat47;
    let x_620 : vec4<f32> = u_xlat9;
    let x_622 : vec3<f32> = ((vec3<f32>(x_615.x, x_615.y, x_615.z) * vec3<f32>(x_617, x_617, x_617)) + vec3<f32>(x_620.x, x_620.y, x_620.z));
    let x_623 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_622.x, x_622.y, x_622.z, x_623.w);
  } else {
    let x_626 : vec4<f32> = u_xlat5;
    let x_627 : vec3<f32> = vec3<f32>(x_626.x, x_626.y, x_626.z);
    let x_628 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_627.x, x_627.y, x_627.z, x_628.w);
  }
  let x_630 : f32 = u_xlat34;
  u_xlat47 = ((-(x_630) * 0.699999988f) + 1.700000048f);
  let x_636 : f32 = u_xlat47;
  let x_637 : f32 = u_xlat34;
  u_xlat47 = (x_636 * x_637);
  let x_639 : f32 = u_xlat47;
  u_xlat47 = (x_639 * 6.0f);
  let x_650 : vec4<f32> = u_xlat8;
  let x_652 : f32 = u_xlat47;
  let x_653 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_650.x, x_650.y, x_650.z), x_652);
  u_xlat8 = x_653;
  let x_655 : f32 = u_xlat8.w;
  u_xlat48 = (x_655 + -1.0f);
  let x_660 : f32 = x_33.unity_SpecCube0_HDR.w;
  let x_661 : f32 = u_xlat48;
  u_xlat48 = ((x_660 * x_661) + 1.0f);
  let x_664 : f32 = u_xlat48;
  u_xlat48 = log2(x_664);
  let x_666 : f32 = u_xlat48;
  let x_668 : f32 = x_33.unity_SpecCube0_HDR.y;
  u_xlat48 = (x_666 * x_668);
  let x_670 : f32 = u_xlat48;
  u_xlat48 = exp2(x_670);
  let x_672 : f32 = u_xlat48;
  let x_674 : f32 = x_33.unity_SpecCube0_HDR.x;
  u_xlat48 = (x_672 * x_674);
  let x_676 : vec4<f32> = u_xlat8;
  let x_678 : f32 = u_xlat48;
  let x_680 : vec3<f32> = (vec3<f32>(x_676.x, x_676.y, x_676.z) * vec3<f32>(x_678, x_678, x_678));
  let x_681 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_680.x, x_680.y, x_680.z, x_681.w);
  let x_684 : f32 = x_33.unity_SpecCube0_BoxMin.w;
  u_xlatb4 = (x_684 < 0.999989986f);
  let x_687 : bool = u_xlatb4;
  if (x_687) {
    let x_692 : f32 = x_33.unity_SpecCube1_ProbePosition.w;
    u_xlatb4 = (0.0f < x_692);
    let x_694 : bool = u_xlatb4;
    if (x_694) {
      let x_697 : vec4<f32> = u_xlat5;
      let x_699 : vec4<f32> = u_xlat5;
      u_xlat4.x = dot(vec3<f32>(x_697.x, x_697.y, x_697.z), vec3<f32>(x_699.x, x_699.y, x_699.z));
      let x_704 : f32 = u_xlat4.x;
      u_xlat4.x = inverseSqrt(x_704);
      let x_707 : vec4<f32> = u_xlat4;
      let x_709 : vec4<f32> = u_xlat5;
      u_xlat10 = (vec3<f32>(x_707.x, x_707.x, x_707.x) * vec3<f32>(x_709.x, x_709.y, x_709.z));
      let x_713 : f32 = vs_TEXCOORD2.w;
      u_xlat11.x = x_713;
      let x_716 : f32 = vs_TEXCOORD3.w;
      u_xlat11.y = x_716;
      let x_719 : f32 = vs_TEXCOORD4.w;
      u_xlat11.z = x_719;
      let x_722 : vec3<f32> = u_xlat11;
      let x_726 : vec4<f32> = x_33.unity_SpecCube1_BoxMax;
      u_xlat12 = (-(x_722) + vec3<f32>(x_726.x, x_726.y, x_726.z));
      let x_729 : vec3<f32> = u_xlat12;
      let x_730 : vec3<f32> = u_xlat10;
      u_xlat12 = (x_729 / x_730);
      let x_733 : vec3<f32> = u_xlat11;
      let x_737 : vec4<f32> = x_33.unity_SpecCube1_BoxMin;
      u_xlat13 = (-(x_733) + vec3<f32>(x_737.x, x_737.y, x_737.z));
      let x_740 : vec3<f32> = u_xlat13;
      let x_741 : vec3<f32> = u_xlat10;
      u_xlat13 = (x_740 / x_741);
      let x_744 : vec3<f32> = u_xlat10;
      let x_746 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_744.x, x_744.y, x_744.z, x_744.x));
      u_xlatb14 = vec3<bool>(x_746.x, x_746.y, x_746.z);
      let x_749 : vec3<f32> = u_xlat12;
      hlslcc_movcTemp_1 = x_749;
      let x_751 : bool = u_xlatb14.x;
      if (x_751) {
        let x_756 : f32 = u_xlat12.x;
        x_752 = x_756;
      } else {
        let x_759 : f32 = u_xlat13.x;
        x_752 = x_759;
      }
      let x_760 : f32 = x_752;
      hlslcc_movcTemp_1.x = x_760;
      let x_763 : bool = u_xlatb14.y;
      if (x_763) {
        let x_768 : f32 = u_xlat12.y;
        x_764 = x_768;
      } else {
        let x_771 : f32 = u_xlat13.y;
        x_764 = x_771;
      }
      let x_772 : f32 = x_764;
      hlslcc_movcTemp_1.y = x_772;
      let x_775 : bool = u_xlatb14.z;
      if (x_775) {
        let x_780 : f32 = u_xlat12.z;
        x_776 = x_780;
      } else {
        let x_783 : f32 = u_xlat13.z;
        x_776 = x_783;
      }
      let x_784 : f32 = x_776;
      hlslcc_movcTemp_1.z = x_784;
      let x_786 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat12 = x_786;
      let x_788 : f32 = u_xlat12.y;
      let x_790 : f32 = u_xlat12.x;
      u_xlat4.x = min(x_788, x_790);
      let x_794 : f32 = u_xlat12.z;
      let x_796 : f32 = u_xlat4.x;
      u_xlat4.x = min(x_794, x_796);
      let x_799 : vec3<f32> = u_xlat11;
      let x_801 : vec4<f32> = x_33.unity_SpecCube1_ProbePosition;
      u_xlat11 = (x_799 + -(vec3<f32>(x_801.x, x_801.y, x_801.z)));
      let x_805 : vec3<f32> = u_xlat10;
      let x_806 : vec4<f32> = u_xlat4;
      let x_809 : vec3<f32> = u_xlat11;
      let x_810 : vec3<f32> = ((x_805 * vec3<f32>(x_806.x, x_806.x, x_806.x)) + x_809);
      let x_811 : vec4<f32> = u_xlat5;
      u_xlat5 = vec4<f32>(x_810.x, x_810.y, x_810.z, x_811.w);
    }
    let x_817 : vec4<f32> = u_xlat5;
    let x_819 : f32 = u_xlat47;
    let x_820 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_817.x, x_817.y, x_817.z), x_819);
    u_xlat5 = x_820;
    let x_822 : f32 = u_xlat5.w;
    u_xlat47 = (x_822 + -1.0f);
    let x_826 : f32 = x_33.unity_SpecCube1_HDR.w;
    let x_827 : f32 = u_xlat47;
    u_xlat47 = ((x_826 * x_827) + 1.0f);
    let x_830 : f32 = u_xlat47;
    u_xlat47 = log2(x_830);
    let x_832 : f32 = u_xlat47;
    let x_834 : f32 = x_33.unity_SpecCube1_HDR.y;
    u_xlat47 = (x_832 * x_834);
    let x_836 : f32 = u_xlat47;
    u_xlat47 = exp2(x_836);
    let x_838 : f32 = u_xlat47;
    let x_840 : f32 = x_33.unity_SpecCube1_HDR.x;
    u_xlat47 = (x_838 * x_840);
    let x_842 : vec4<f32> = u_xlat5;
    let x_844 : f32 = u_xlat47;
    let x_846 : vec3<f32> = (vec3<f32>(x_842.x, x_842.y, x_842.z) * vec3<f32>(x_844, x_844, x_844));
    let x_847 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_846.x, x_846.y, x_846.z, x_847.w);
    let x_849 : f32 = u_xlat48;
    let x_851 : vec4<f32> = u_xlat8;
    let x_854 : vec4<f32> = u_xlat5;
    let x_857 : vec3<f32> = ((vec3<f32>(x_849, x_849, x_849) * vec3<f32>(x_851.x, x_851.y, x_851.z)) + -(vec3<f32>(x_854.x, x_854.y, x_854.z)));
    let x_858 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_857.x, x_857.y, x_857.z, x_858.w);
    let x_861 : vec4<f32> = x_33.unity_SpecCube0_BoxMin;
    let x_863 : vec4<f32> = u_xlat8;
    let x_866 : vec4<f32> = u_xlat5;
    let x_868 : vec3<f32> = ((vec3<f32>(x_861.w, x_861.w, x_861.w) * vec3<f32>(x_863.x, x_863.y, x_863.z)) + vec3<f32>(x_866.x, x_866.y, x_866.z));
    let x_869 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_868.x, x_868.y, x_868.z, x_869.w);
  }
  let x_871 : vec3<f32> = u_xlat19;
  let x_873 : vec4<f32> = u_xlat9;
  let x_875 : vec3<f32> = (vec3<f32>(x_871.x, x_871.x, x_871.x) * vec3<f32>(x_873.x, x_873.y, x_873.z));
  let x_876 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_875.x, x_875.y, x_875.z, x_876.w);
  let x_878 : vec4<f32> = vs_TEXCOORD1;
  let x_881 : f32 = u_xlat46;
  let x_885 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  let x_887 : vec3<f32> = ((-(vec3<f32>(x_878.x, x_878.y, x_878.z)) * vec3<f32>(x_881, x_881, x_881)) + vec3<f32>(x_885.x, x_885.y, x_885.z));
  let x_888 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_887.x, x_887.y, x_887.z, x_888.w);
  let x_890 : vec4<f32> = u_xlat8;
  let x_892 : vec4<f32> = u_xlat8;
  u_xlat46 = dot(vec3<f32>(x_890.x, x_890.y, x_890.z), vec3<f32>(x_892.x, x_892.y, x_892.z));
  let x_895 : f32 = u_xlat46;
  u_xlat46 = max(x_895, 0.001f);
  let x_898 : f32 = u_xlat46;
  u_xlat46 = inverseSqrt(x_898);
  let x_900 : f32 = u_xlat46;
  let x_902 : vec4<f32> = u_xlat8;
  let x_904 : vec3<f32> = (vec3<f32>(x_900, x_900, x_900) * vec3<f32>(x_902.x, x_902.y, x_902.z));
  let x_905 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_904.x, x_904.y, x_904.z, x_905.w);
  let x_907 : vec4<f32> = u_xlat2;
  let x_909 : vec4<f32> = u_xlat3;
  u_xlat46 = dot(vec3<f32>(x_907.x, x_907.y, x_907.z), -(vec3<f32>(x_909.x, x_909.y, x_909.z)));
  let x_913 : vec4<f32> = u_xlat2;
  let x_916 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  u_xlat47 = dot(vec3<f32>(x_913.x, x_913.y, x_913.z), vec3<f32>(x_916.x, x_916.y, x_916.z));
  let x_919 : f32 = u_xlat47;
  u_xlat47 = clamp(x_919, 0.0f, 1.0f);
  let x_921 : vec4<f32> = u_xlat2;
  let x_923 : vec4<f32> = u_xlat8;
  u_xlat2.x = dot(vec3<f32>(x_921.x, x_921.y, x_921.z), vec3<f32>(x_923.x, x_923.y, x_923.z));
  let x_928 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_928, 0.0f, 1.0f);
  let x_933 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  let x_935 : vec4<f32> = u_xlat8;
  u_xlat17.x = dot(vec3<f32>(x_933.x, x_933.y, x_933.z), vec3<f32>(x_935.x, x_935.y, x_935.z));
  let x_940 : f32 = u_xlat17.x;
  u_xlat17.x = clamp(x_940, 0.0f, 1.0f);
  let x_945 : f32 = u_xlat17.x;
  let x_947 : f32 = u_xlat17.x;
  u_xlat32 = (x_945 * x_947);
  let x_949 : f32 = u_xlat32;
  let x_951 : f32 = u_xlat34;
  u_xlat32 = dot(vec2<f32>(x_949, x_949), vec2<f32>(x_951, x_951));
  let x_954 : f32 = u_xlat32;
  u_xlat32 = (x_954 + -0.5f);
  let x_957 : f32 = u_xlat47;
  u_xlat3.x = (-(x_957) + 1.0f);
  let x_963 : f32 = u_xlat3.x;
  let x_965 : f32 = u_xlat3.x;
  u_xlat18 = (x_963 * x_965);
  let x_967 : f32 = u_xlat18;
  let x_968 : f32 = u_xlat18;
  u_xlat18 = (x_967 * x_968);
  let x_971 : f32 = u_xlat3.x;
  let x_972 : f32 = u_xlat18;
  u_xlat3.x = (x_971 * x_972);
  let x_975 : f32 = u_xlat32;
  let x_977 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_975 * x_977) + 1.0f);
  let x_981 : f32 = u_xlat46;
  u_xlat18 = (-(abs(x_981)) + 1.0f);
  let x_986 : f32 = u_xlat18;
  let x_987 : f32 = u_xlat18;
  u_xlat33 = (x_986 * x_987);
  let x_989 : f32 = u_xlat33;
  let x_990 : f32 = u_xlat33;
  u_xlat33 = (x_989 * x_990);
  let x_992 : f32 = u_xlat18;
  let x_993 : f32 = u_xlat33;
  u_xlat18 = (x_992 * x_993);
  let x_995 : f32 = u_xlat32;
  let x_996 : f32 = u_xlat18;
  u_xlat32 = ((x_995 * x_996) + 1.0f);
  let x_999 : f32 = u_xlat32;
  let x_1001 : f32 = u_xlat3.x;
  u_xlat32 = (x_999 * x_1001);
  let x_1003 : f32 = u_xlat47;
  let x_1004 : f32 = u_xlat32;
  u_xlat32 = (x_1003 * x_1004);
  let x_1006 : f32 = u_xlat34;
  let x_1007 : f32 = u_xlat34;
  u_xlat3.x = (x_1006 * x_1007);
  let x_1011 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_1011, 0.002f);
  let x_1016 : f32 = u_xlat3.x;
  u_xlat33 = (-(x_1016) + 1.0f);
  let x_1019 : f32 = u_xlat46;
  let x_1021 : f32 = u_xlat33;
  let x_1024 : f32 = u_xlat3.x;
  u_xlat48 = ((abs(x_1019) * x_1021) + x_1024);
  let x_1026 : f32 = u_xlat47;
  let x_1027 : f32 = u_xlat33;
  let x_1030 : f32 = u_xlat3.x;
  u_xlat33 = ((x_1026 * x_1027) + x_1030);
  let x_1032 : f32 = u_xlat46;
  let x_1034 : f32 = u_xlat33;
  u_xlat46 = (abs(x_1032) * x_1034);
  let x_1036 : f32 = u_xlat47;
  let x_1037 : f32 = u_xlat48;
  let x_1039 : f32 = u_xlat46;
  u_xlat46 = ((x_1036 * x_1037) + x_1039);
  let x_1041 : f32 = u_xlat46;
  u_xlat46 = (x_1041 + 0.00001f);
  let x_1044 : f32 = u_xlat46;
  u_xlat46 = (0.5f / x_1044);
  let x_1047 : f32 = u_xlat3.x;
  let x_1049 : f32 = u_xlat3.x;
  u_xlat33 = (x_1047 * x_1049);
  let x_1052 : f32 = u_xlat2.x;
  let x_1053 : f32 = u_xlat33;
  let x_1056 : f32 = u_xlat2.x;
  u_xlat48 = ((x_1052 * x_1053) + -(x_1056));
  let x_1059 : f32 = u_xlat48;
  let x_1061 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1059 * x_1061) + 1.0f);
  let x_1065 : f32 = u_xlat33;
  u_xlat33 = (x_1065 * 0.318309873f);
  let x_1069 : f32 = u_xlat2.x;
  let x_1071 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1069 * x_1071) + 0.0000001f);
  let x_1076 : f32 = u_xlat33;
  let x_1078 : f32 = u_xlat2.x;
  u_xlat2.x = (x_1076 / x_1078);
  let x_1081 : f32 = u_xlat46;
  let x_1083 : f32 = u_xlat2.x;
  u_xlat46 = (x_1081 * x_1083);
  let x_1085 : f32 = u_xlat47;
  let x_1086 : f32 = u_xlat46;
  u_xlat46 = (x_1085 * x_1086);
  let x_1088 : f32 = u_xlat46;
  u_xlat46 = (x_1088 * 3.141592741f);
  let x_1091 : f32 = u_xlat46;
  u_xlat46 = max(x_1091, 0.0f);
  let x_1094 : f32 = u_xlat3.x;
  let x_1096 : f32 = u_xlat3.x;
  u_xlat2.x = ((x_1094 * x_1096) + 1.0f);
  let x_1101 : f32 = u_xlat2.x;
  u_xlat2.x = (1.0f / x_1101);
  let x_1104 : vec3<f32> = u_xlat0;
  let x_1105 : vec3<f32> = u_xlat0;
  u_xlat47 = dot(x_1104, x_1105);
  let x_1107 : f32 = u_xlat47;
  u_xlatb47 = !((x_1107 == 0.0f));
  let x_1109 : bool = u_xlatb47;
  u_xlat47 = select(0.0f, 1.0f, x_1109);
  let x_1111 : f32 = u_xlat46;
  let x_1112 : f32 = u_xlat47;
  u_xlat46 = (x_1111 * x_1112);
  let x_1114 : f32 = u_xlat45;
  let x_1117 : f32 = x_33.x_Glossiness;
  u_xlat45 = (-(x_1114) + x_1117);
  let x_1119 : f32 = u_xlat45;
  u_xlat45 = (x_1119 + 1.0f);
  let x_1121 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1121, 0.0f, 1.0f);
  let x_1123 : f32 = u_xlat32;
  let x_1125 : vec3<f32> = u_xlat6;
  let x_1126 : vec3<f32> = (vec3<f32>(x_1123, x_1123, x_1123) * x_1125);
  let x_1127 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1126.x, x_1127.y, x_1126.y, x_1126.z);
  let x_1129 : vec4<f32> = u_xlat7;
  let x_1131 : vec3<f32> = u_xlat19;
  let x_1134 : vec4<f32> = u_xlat3;
  let x_1136 : vec3<f32> = ((vec3<f32>(x_1129.x, x_1129.y, x_1129.z) * vec3<f32>(x_1131.x, x_1131.x, x_1131.x)) + vec3<f32>(x_1134.x, x_1134.z, x_1134.w));
  let x_1137 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1136.x, x_1137.y, x_1136.y, x_1136.z);
  let x_1139 : vec3<f32> = u_xlat6;
  let x_1140 : f32 = u_xlat46;
  let x_1142 : vec3<f32> = (x_1139 * vec3<f32>(x_1140, x_1140, x_1140));
  let x_1143 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1142.x, x_1142.y, x_1142.z, x_1143.w);
  let x_1146 : f32 = u_xlat17.x;
  u_xlat46 = (-(x_1146) + 1.0f);
  let x_1149 : f32 = u_xlat46;
  let x_1150 : f32 = u_xlat46;
  u_xlat17.x = (x_1149 * x_1150);
  let x_1154 : f32 = u_xlat17.x;
  let x_1156 : f32 = u_xlat17.x;
  u_xlat17.x = (x_1154 * x_1156);
  let x_1159 : f32 = u_xlat46;
  let x_1161 : f32 = u_xlat17.x;
  u_xlat46 = (x_1159 * x_1161);
  let x_1163 : vec3<f32> = u_xlat0;
  u_xlat17 = (-(x_1163) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1167 : vec3<f32> = u_xlat17;
  let x_1168 : f32 = u_xlat46;
  let x_1171 : vec3<f32> = u_xlat0;
  u_xlat17 = ((x_1167 * vec3<f32>(x_1168, x_1168, x_1168)) + x_1171);
  let x_1173 : vec3<f32> = u_xlat17;
  let x_1174 : vec4<f32> = u_xlat4;
  u_xlat17 = (x_1173 * vec3<f32>(x_1174.x, x_1174.y, x_1174.z));
  let x_1177 : vec3<f32> = u_xlat1;
  let x_1178 : vec4<f32> = u_xlat3;
  let x_1181 : vec3<f32> = u_xlat17;
  u_xlat1 = ((x_1177 * vec3<f32>(x_1178.x, x_1178.z, x_1178.w)) + x_1181);
  let x_1183 : vec4<f32> = u_xlat5;
  let x_1185 : vec4<f32> = u_xlat2;
  let x_1187 : vec3<f32> = (vec3<f32>(x_1183.x, x_1183.y, x_1183.z) * vec3<f32>(x_1185.x, x_1185.x, x_1185.x));
  let x_1188 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1187.x, x_1187.y, x_1187.z, x_1188.w);
  let x_1190 : vec3<f32> = u_xlat0;
  let x_1192 : f32 = u_xlat45;
  let x_1194 : vec3<f32> = (-(x_1190) + vec3<f32>(x_1192, x_1192, x_1192));
  let x_1195 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1194.x, x_1195.y, x_1194.y, x_1194.z);
  let x_1197 : f32 = u_xlat18;
  let x_1199 : vec4<f32> = u_xlat3;
  let x_1202 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1197, x_1197, x_1197) * vec3<f32>(x_1199.x, x_1199.z, x_1199.w)) + x_1202);
  let x_1204 : vec4<f32> = u_xlat2;
  let x_1206 : vec3<f32> = u_xlat0;
  let x_1208 : vec3<f32> = u_xlat1;
  u_xlat0 = ((vec3<f32>(x_1204.x, x_1204.y, x_1204.z) * x_1206) + x_1208);
  let x_1211 : f32 = vs_TEXCOORD1.w;
  let x_1213 : f32 = x_33.x_ProjectionParams.y;
  u_xlat45 = (x_1211 / x_1213);
  let x_1215 : f32 = u_xlat45;
  u_xlat45 = (-(x_1215) + 1.0f);
  let x_1218 : f32 = u_xlat45;
  let x_1220 : f32 = x_33.x_ProjectionParams.z;
  u_xlat45 = (x_1218 * x_1220);
  let x_1222 : f32 = u_xlat45;
  u_xlat45 = max(x_1222, 0.0f);
  let x_1224 : f32 = u_xlat45;
  let x_1227 : f32 = x_33.unity_FogParams.x;
  u_xlat45 = (x_1224 * x_1227);
  let x_1229 : f32 = u_xlat45;
  let x_1230 : f32 = u_xlat45;
  u_xlat45 = (x_1229 * -(x_1230));
  let x_1233 : f32 = u_xlat45;
  u_xlat45 = exp2(x_1233);
  let x_1235 : vec3<f32> = u_xlat0;
  let x_1238 : vec4<f32> = x_33.unity_FogColor;
  u_xlat0 = (x_1235 + -(vec3<f32>(x_1238.x, x_1238.y, x_1238.z)));
  let x_1244 : f32 = u_xlat45;
  let x_1246 : vec3<f32> = u_xlat0;
  let x_1249 : vec4<f32> = x_33.unity_FogColor;
  let x_1251 : vec3<f32> = ((vec3<f32>(x_1244, x_1244, x_1244) * x_1246) + vec3<f32>(x_1249.x, x_1249.y, x_1249.z));
  let x_1252 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1251.x, x_1251.y, x_1251.z, x_1252.w);
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

