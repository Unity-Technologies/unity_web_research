struct PGlobals {
  x_WorldSpaceLightPos0 : vec4<f32>,
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
  @size(4)
  padding_2 : u32,
  x_EmissionColor : vec4<f32>,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_33 : PGlobals;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(0) @binding(5) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(7) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(1) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_OcclusionMap : sampler;

@group(0) @binding(3) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

@group(0) @binding(4) var unity_SpecCube1 : texture_cube<f32>;

@group(0) @binding(2) var x_EmissionMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_EmissionMap : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat39 : f32;
  var u_xlat40 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlatb41 : bool;
  var u_xlat4 : vec4<f32>;
  var u_xlat18 : vec3<f32>;
  var x_188 : vec3<f32>;
  var u_xlat41 : f32;
  var u_xlat42 : f32;
  var u_xlat17 : vec3<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlatb10 : vec3<bool>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_381 : f32;
  var x_393 : f32;
  var x_405 : f32;
  var u_xlat44 : f32;
  var u_xlatb45 : bool;
  var u_xlat45 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlat11 : vec3<f32>;
  var u_xlatb12 : vec3<bool>;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_567 : f32;
  var x_579 : f32;
  var x_591 : f32;
  var u_xlat15 : vec3<f32>;
  var u_xlat28 : f32;
  var u_xlat16 : f32;
  var u_xlat29 : f32;
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
  u_xlat39 = ((-(x_70) * 0.959999979f) + 0.959999979f);
  let x_75 : f32 = u_xlat39;
  let x_77 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_75, x_75, x_75) * x_77);
  let x_81 : vec4<f32> = vs_TEXCOORD4;
  let x_83 : vec4<f32> = vs_TEXCOORD4;
  u_xlat40 = dot(vec3<f32>(x_81.x, x_81.y, x_81.z), vec3<f32>(x_83.x, x_83.y, x_83.z));
  let x_86 : f32 = u_xlat40;
  u_xlat40 = inverseSqrt(x_86);
  let x_89 : f32 = u_xlat40;
  let x_91 : vec4<f32> = vs_TEXCOORD4;
  u_xlat2 = (vec3<f32>(x_89, x_89, x_89) * vec3<f32>(x_91.x, x_91.y, x_91.z));
  let x_95 : vec4<f32> = vs_TEXCOORD1;
  let x_97 : vec4<f32> = vs_TEXCOORD1;
  u_xlat40 = dot(vec3<f32>(x_95.x, x_95.y, x_95.z), vec3<f32>(x_97.x, x_97.y, x_97.z));
  let x_100 : f32 = u_xlat40;
  u_xlat40 = inverseSqrt(x_100);
  let x_104 : f32 = u_xlat40;
  let x_106 : vec4<f32> = vs_TEXCOORD1;
  let x_108 : vec3<f32> = (vec3<f32>(x_104, x_104, x_104) * vec3<f32>(x_106.x, x_106.y, x_106.z));
  let x_109 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_108.x, x_108.y, x_108.z, x_109.w);
  let x_118 : f32 = x_33.unity_ProbeVolumeParams.x;
  u_xlatb41 = (x_118 == 1.0f);
  let x_121 : bool = u_xlatb41;
  if (x_121) {
    let x_126 : f32 = x_33.unity_ProbeVolumeParams.y;
    u_xlatb41 = (x_126 == 1.0f);
    let x_130 : vec4<f32> = vs_TEXCOORD3;
    let x_135 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[1i];
    let x_137 : vec3<f32> = (vec3<f32>(x_130.w, x_130.w, x_130.w) * vec3<f32>(x_135.x, x_135.y, x_135.z));
    let x_138 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_137.x, x_137.y, x_137.z, x_138.w);
    let x_142 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[0i];
    let x_145 : vec4<f32> = vs_TEXCOORD2;
    let x_148 : vec4<f32> = u_xlat4;
    let x_150 : vec3<f32> = ((vec3<f32>(x_142.x, x_142.y, x_142.z) * vec3<f32>(x_145.w, x_145.w, x_145.w)) + vec3<f32>(x_148.x, x_148.y, x_148.z));
    let x_151 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_150.x, x_150.y, x_150.z, x_151.w);
    let x_155 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[2i];
    let x_157 : vec4<f32> = vs_TEXCOORD4;
    let x_160 : vec4<f32> = u_xlat4;
    let x_162 : vec3<f32> = ((vec3<f32>(x_155.x, x_155.y, x_155.z) * vec3<f32>(x_157.w, x_157.w, x_157.w)) + vec3<f32>(x_160.x, x_160.y, x_160.z));
    let x_163 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_162.x, x_162.y, x_162.z, x_163.w);
    let x_165 : vec4<f32> = u_xlat4;
    let x_169 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[3i];
    let x_171 : vec3<f32> = (vec3<f32>(x_165.x, x_165.y, x_165.z) + vec3<f32>(x_169.x, x_169.y, x_169.z));
    let x_172 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_171.x, x_171.y, x_171.z, x_172.w);
    let x_178 : f32 = vs_TEXCOORD2.w;
    u_xlat18.x = x_178;
    let x_181 : f32 = vs_TEXCOORD3.w;
    u_xlat18.y = x_181;
    let x_184 : f32 = vs_TEXCOORD4.w;
    u_xlat18.z = x_184;
    let x_187 : bool = u_xlatb41;
    if (x_187) {
      let x_191 : vec4<f32> = u_xlat4;
      x_188 = vec3<f32>(x_191.x, x_191.y, x_191.z);
    } else {
      let x_194 : vec3<f32> = u_xlat18;
      x_188 = x_194;
    }
    let x_195 : vec3<f32> = x_188;
    let x_196 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_195.x, x_195.y, x_195.z, x_196.w);
    let x_198 : vec4<f32> = u_xlat4;
    let x_203 : vec3<f32> = x_33.unity_ProbeVolumeMin;
    let x_205 : vec3<f32> = (vec3<f32>(x_198.x, x_198.y, x_198.z) + -(x_203));
    let x_206 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_205.x, x_205.y, x_205.z, x_206.w);
    let x_208 : vec4<f32> = u_xlat4;
    let x_212 : vec3<f32> = x_33.unity_ProbeVolumeSizeInv;
    let x_213 : vec3<f32> = (vec3<f32>(x_208.x, x_208.y, x_208.z) * x_212);
    let x_214 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_214.x, x_213.x, x_213.y, x_213.z);
    let x_218 : f32 = u_xlat4.y;
    u_xlat41 = ((x_218 * 0.25f) + 0.75f);
    let x_225 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat42 = ((x_225 * 0.5f) + 0.75f);
    let x_229 : f32 = u_xlat41;
    let x_230 : f32 = u_xlat42;
    u_xlat4.x = max(x_229, x_230);
    let x_241 : vec4<f32> = u_xlat4;
    let x_243 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_241.x, x_241.z, x_241.w));
    u_xlat4 = x_243;
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
    u_xlat4.w = 1.0f;
  }
  let x_249 : vec4<f32> = u_xlat4;
  let x_251 : vec4<f32> = x_33.unity_OcclusionMaskSelector;
  u_xlat41 = dot(x_249, x_251);
  let x_253 : f32 = u_xlat41;
  u_xlat41 = clamp(x_253, 0.0f, 1.0f);
  let x_261 : vec4<f32> = vs_TEXCOORD0;
  let x_263 : vec4<f32> = textureSample(x_OcclusionMap, sampler_OcclusionMap, vec2<f32>(x_261.x, x_261.y));
  u_xlat42 = x_263.y;
  let x_267 : f32 = x_33.x_OcclusionStrength;
  u_xlat4.x = (-(x_267) + 1.0f);
  let x_271 : f32 = u_xlat42;
  let x_273 : f32 = x_33.x_OcclusionStrength;
  let x_276 : f32 = u_xlat4.x;
  u_xlat42 = ((x_271 * x_273) + x_276);
  let x_280 : f32 = x_33.x_Glossiness;
  u_xlat4.x = (-(x_280) + 1.0f);
  let x_285 : vec4<f32> = u_xlat3;
  let x_287 : vec3<f32> = u_xlat2;
  u_xlat17.x = dot(vec3<f32>(x_285.x, x_285.y, x_285.z), x_287);
  let x_291 : f32 = u_xlat17.x;
  let x_293 : f32 = u_xlat17.x;
  u_xlat17.x = (x_291 + x_293);
  let x_296 : vec3<f32> = u_xlat2;
  let x_297 : vec3<f32> = u_xlat17;
  let x_301 : vec4<f32> = u_xlat3;
  u_xlat17 = ((x_296 * -(vec3<f32>(x_297.x, x_297.x, x_297.x))) + vec3<f32>(x_301.x, x_301.y, x_301.z));
  let x_305 : f32 = u_xlat41;
  let x_309 : vec4<f32> = x_33.x_LightColor0;
  u_xlat5 = (vec3<f32>(x_305, x_305, x_305) * vec3<f32>(x_309.x, x_309.y, x_309.z));
  let x_314 : f32 = x_33.unity_SpecCube0_ProbePosition.w;
  u_xlatb41 = (0.0f < x_314);
  let x_316 : bool = u_xlatb41;
  if (x_316) {
    let x_319 : vec3<f32> = u_xlat17;
    let x_320 : vec3<f32> = u_xlat17;
    u_xlat41 = dot(x_319, x_320);
    let x_322 : f32 = u_xlat41;
    u_xlat41 = inverseSqrt(x_322);
    let x_325 : f32 = u_xlat41;
    let x_327 : vec3<f32> = u_xlat17;
    let x_328 : vec3<f32> = (vec3<f32>(x_325, x_325, x_325) * x_327);
    let x_329 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_328.x, x_328.y, x_328.z, x_329.w);
    let x_333 : f32 = vs_TEXCOORD2.w;
    u_xlat7.x = x_333;
    let x_336 : f32 = vs_TEXCOORD3.w;
    u_xlat7.y = x_336;
    let x_339 : f32 = vs_TEXCOORD4.w;
    u_xlat7.z = x_339;
    let x_342 : vec3<f32> = u_xlat7;
    let x_345 : vec4<f32> = x_33.unity_SpecCube0_BoxMax;
    let x_347 : vec3<f32> = (-(x_342) + vec3<f32>(x_345.x, x_345.y, x_345.z));
    let x_348 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_347.x, x_347.y, x_347.z, x_348.w);
    let x_350 : vec4<f32> = u_xlat8;
    let x_352 : vec4<f32> = u_xlat6;
    let x_354 : vec3<f32> = (vec3<f32>(x_350.x, x_350.y, x_350.z) / vec3<f32>(x_352.x, x_352.y, x_352.z));
    let x_355 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_354.x, x_354.y, x_354.z, x_355.w);
    let x_358 : vec3<f32> = u_xlat7;
    let x_361 : vec4<f32> = x_33.unity_SpecCube0_BoxMin;
    u_xlat9 = (-(x_358) + vec3<f32>(x_361.x, x_361.y, x_361.z));
    let x_364 : vec3<f32> = u_xlat9;
    let x_365 : vec4<f32> = u_xlat6;
    u_xlat9 = (x_364 / vec3<f32>(x_365.x, x_365.y, x_365.z));
    let x_372 : vec4<f32> = u_xlat6;
    let x_375 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_372.x, x_372.y, x_372.z, x_372.x));
    u_xlatb10 = vec3<bool>(x_375.x, x_375.y, x_375.z);
    let x_378 : vec4<f32> = u_xlat8;
    hlslcc_movcTemp = x_378;
    let x_380 : bool = u_xlatb10.x;
    if (x_380) {
      let x_385 : f32 = u_xlat8.x;
      x_381 = x_385;
    } else {
      let x_388 : f32 = u_xlat9.x;
      x_381 = x_388;
    }
    let x_389 : f32 = x_381;
    hlslcc_movcTemp.x = x_389;
    let x_392 : bool = u_xlatb10.y;
    if (x_392) {
      let x_397 : f32 = u_xlat8.y;
      x_393 = x_397;
    } else {
      let x_400 : f32 = u_xlat9.y;
      x_393 = x_400;
    }
    let x_401 : f32 = x_393;
    hlslcc_movcTemp.y = x_401;
    let x_404 : bool = u_xlatb10.z;
    if (x_404) {
      let x_409 : f32 = u_xlat8.z;
      x_405 = x_409;
    } else {
      let x_412 : f32 = u_xlat9.z;
      x_405 = x_412;
    }
    let x_413 : f32 = x_405;
    hlslcc_movcTemp.z = x_413;
    let x_415 : vec4<f32> = hlslcc_movcTemp;
    u_xlat8 = x_415;
    let x_417 : f32 = u_xlat8.y;
    let x_419 : f32 = u_xlat8.x;
    u_xlat41 = min(x_417, x_419);
    let x_422 : f32 = u_xlat8.z;
    let x_423 : f32 = u_xlat41;
    u_xlat41 = min(x_422, x_423);
    let x_425 : vec3<f32> = u_xlat7;
    let x_427 : vec4<f32> = x_33.unity_SpecCube0_ProbePosition;
    u_xlat7 = (x_425 + -(vec3<f32>(x_427.x, x_427.y, x_427.z)));
    let x_431 : vec4<f32> = u_xlat6;
    let x_433 : f32 = u_xlat41;
    let x_436 : vec3<f32> = u_xlat7;
    let x_437 : vec3<f32> = ((vec3<f32>(x_431.x, x_431.y, x_431.z) * vec3<f32>(x_433, x_433, x_433)) + x_436);
    let x_438 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_437.x, x_437.y, x_437.z, x_438.w);
  } else {
    let x_441 : vec3<f32> = u_xlat17;
    let x_442 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_441.x, x_441.y, x_441.z, x_442.w);
  }
  let x_445 : f32 = u_xlat4.x;
  u_xlat41 = ((-(x_445) * 0.699999988f) + 1.700000048f);
  let x_451 : f32 = u_xlat41;
  let x_453 : f32 = u_xlat4.x;
  u_xlat41 = (x_451 * x_453);
  let x_455 : f32 = u_xlat41;
  u_xlat41 = (x_455 * 6.0f);
  let x_466 : vec4<f32> = u_xlat6;
  let x_468 : f32 = u_xlat41;
  let x_469 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_466.x, x_466.y, x_466.z), x_468);
  u_xlat6 = x_469;
  let x_472 : f32 = u_xlat6.w;
  u_xlat44 = (x_472 + -1.0f);
  let x_477 : f32 = x_33.unity_SpecCube0_HDR.w;
  let x_478 : f32 = u_xlat44;
  u_xlat44 = ((x_477 * x_478) + 1.0f);
  let x_481 : f32 = u_xlat44;
  u_xlat44 = log2(x_481);
  let x_483 : f32 = u_xlat44;
  let x_485 : f32 = x_33.unity_SpecCube0_HDR.y;
  u_xlat44 = (x_483 * x_485);
  let x_487 : f32 = u_xlat44;
  u_xlat44 = exp2(x_487);
  let x_489 : f32 = u_xlat44;
  let x_491 : f32 = x_33.unity_SpecCube0_HDR.x;
  u_xlat44 = (x_489 * x_491);
  let x_493 : vec4<f32> = u_xlat6;
  let x_495 : f32 = u_xlat44;
  u_xlat7 = (vec3<f32>(x_493.x, x_493.y, x_493.z) * vec3<f32>(x_495, x_495, x_495));
  let x_500 : f32 = x_33.unity_SpecCube0_BoxMin.w;
  u_xlatb45 = (x_500 < 0.999989986f);
  let x_503 : bool = u_xlatb45;
  if (x_503) {
    let x_508 : f32 = x_33.unity_SpecCube1_ProbePosition.w;
    u_xlatb45 = (0.0f < x_508);
    let x_510 : bool = u_xlatb45;
    if (x_510) {
      let x_514 : vec3<f32> = u_xlat17;
      let x_515 : vec3<f32> = u_xlat17;
      u_xlat45 = dot(x_514, x_515);
      let x_517 : f32 = u_xlat45;
      u_xlat45 = inverseSqrt(x_517);
      let x_519 : vec3<f32> = u_xlat17;
      let x_520 : f32 = u_xlat45;
      let x_522 : vec3<f32> = (x_519 * vec3<f32>(x_520, x_520, x_520));
      let x_523 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_522.x, x_522.y, x_522.z, x_523.w);
      let x_526 : f32 = vs_TEXCOORD2.w;
      u_xlat9.x = x_526;
      let x_529 : f32 = vs_TEXCOORD3.w;
      u_xlat9.y = x_529;
      let x_532 : f32 = vs_TEXCOORD4.w;
      u_xlat9.z = x_532;
      let x_535 : vec3<f32> = u_xlat9;
      let x_539 : vec4<f32> = x_33.unity_SpecCube1_BoxMax;
      u_xlat10 = (-(x_535) + vec3<f32>(x_539.x, x_539.y, x_539.z));
      let x_542 : vec3<f32> = u_xlat10;
      let x_543 : vec4<f32> = u_xlat8;
      u_xlat10 = (x_542 / vec3<f32>(x_543.x, x_543.y, x_543.z));
      let x_547 : vec3<f32> = u_xlat9;
      let x_551 : vec4<f32> = x_33.unity_SpecCube1_BoxMin;
      u_xlat11 = (-(x_547) + vec3<f32>(x_551.x, x_551.y, x_551.z));
      let x_554 : vec3<f32> = u_xlat11;
      let x_555 : vec4<f32> = u_xlat8;
      u_xlat11 = (x_554 / vec3<f32>(x_555.x, x_555.y, x_555.z));
      let x_559 : vec4<f32> = u_xlat8;
      let x_561 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_559.x, x_559.y, x_559.z, x_559.x));
      u_xlatb12 = vec3<bool>(x_561.x, x_561.y, x_561.z);
      let x_564 : vec3<f32> = u_xlat10;
      hlslcc_movcTemp_1 = x_564;
      let x_566 : bool = u_xlatb12.x;
      if (x_566) {
        let x_571 : f32 = u_xlat10.x;
        x_567 = x_571;
      } else {
        let x_574 : f32 = u_xlat11.x;
        x_567 = x_574;
      }
      let x_575 : f32 = x_567;
      hlslcc_movcTemp_1.x = x_575;
      let x_578 : bool = u_xlatb12.y;
      if (x_578) {
        let x_583 : f32 = u_xlat10.y;
        x_579 = x_583;
      } else {
        let x_586 : f32 = u_xlat11.y;
        x_579 = x_586;
      }
      let x_587 : f32 = x_579;
      hlslcc_movcTemp_1.y = x_587;
      let x_590 : bool = u_xlatb12.z;
      if (x_590) {
        let x_595 : f32 = u_xlat10.z;
        x_591 = x_595;
      } else {
        let x_598 : f32 = u_xlat11.z;
        x_591 = x_598;
      }
      let x_599 : f32 = x_591;
      hlslcc_movcTemp_1.z = x_599;
      let x_601 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat10 = x_601;
      let x_603 : f32 = u_xlat10.y;
      let x_605 : f32 = u_xlat10.x;
      u_xlat45 = min(x_603, x_605);
      let x_608 : f32 = u_xlat10.z;
      let x_609 : f32 = u_xlat45;
      u_xlat45 = min(x_608, x_609);
      let x_611 : vec3<f32> = u_xlat9;
      let x_613 : vec4<f32> = x_33.unity_SpecCube1_ProbePosition;
      u_xlat9 = (x_611 + -(vec3<f32>(x_613.x, x_613.y, x_613.z)));
      let x_617 : vec4<f32> = u_xlat8;
      let x_619 : f32 = u_xlat45;
      let x_622 : vec3<f32> = u_xlat9;
      u_xlat17 = ((vec3<f32>(x_617.x, x_617.y, x_617.z) * vec3<f32>(x_619, x_619, x_619)) + x_622);
    }
    let x_628 : vec3<f32> = u_xlat17;
    let x_629 : f32 = u_xlat41;
    let x_630 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, x_628, x_629);
    u_xlat8 = x_630;
    let x_632 : f32 = u_xlat8.w;
    u_xlat41 = (x_632 + -1.0f);
    let x_636 : f32 = x_33.unity_SpecCube1_HDR.w;
    let x_637 : f32 = u_xlat41;
    u_xlat41 = ((x_636 * x_637) + 1.0f);
    let x_640 : f32 = u_xlat41;
    u_xlat41 = log2(x_640);
    let x_642 : f32 = u_xlat41;
    let x_644 : f32 = x_33.unity_SpecCube1_HDR.y;
    u_xlat41 = (x_642 * x_644);
    let x_646 : f32 = u_xlat41;
    u_xlat41 = exp2(x_646);
    let x_648 : f32 = u_xlat41;
    let x_650 : f32 = x_33.unity_SpecCube1_HDR.x;
    u_xlat41 = (x_648 * x_650);
    let x_652 : vec4<f32> = u_xlat8;
    let x_654 : f32 = u_xlat41;
    u_xlat17 = (vec3<f32>(x_652.x, x_652.y, x_652.z) * vec3<f32>(x_654, x_654, x_654));
    let x_657 : f32 = u_xlat44;
    let x_659 : vec4<f32> = u_xlat6;
    let x_662 : vec3<f32> = u_xlat17;
    let x_664 : vec3<f32> = ((vec3<f32>(x_657, x_657, x_657) * vec3<f32>(x_659.x, x_659.y, x_659.z)) + -(x_662));
    let x_665 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_664.x, x_664.y, x_664.z, x_665.w);
    let x_668 : vec4<f32> = x_33.unity_SpecCube0_BoxMin;
    let x_670 : vec4<f32> = u_xlat6;
    let x_673 : vec3<f32> = u_xlat17;
    u_xlat7 = ((vec3<f32>(x_668.w, x_668.w, x_668.w) * vec3<f32>(x_670.x, x_670.y, x_670.z)) + x_673);
  }
  let x_675 : f32 = u_xlat42;
  let x_677 : vec3<f32> = u_xlat7;
  u_xlat17 = (vec3<f32>(x_675, x_675, x_675) * x_677);
  let x_679 : vec4<f32> = vs_TEXCOORD1;
  let x_682 : f32 = u_xlat40;
  let x_686 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  let x_688 : vec3<f32> = ((-(vec3<f32>(x_679.x, x_679.y, x_679.z)) * vec3<f32>(x_682, x_682, x_682)) + vec3<f32>(x_686.x, x_686.y, x_686.z));
  let x_689 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_688.x, x_688.y, x_688.z, x_689.w);
  let x_691 : vec4<f32> = u_xlat6;
  let x_693 : vec4<f32> = u_xlat6;
  u_xlat40 = dot(vec3<f32>(x_691.x, x_691.y, x_691.z), vec3<f32>(x_693.x, x_693.y, x_693.z));
  let x_696 : f32 = u_xlat40;
  u_xlat40 = max(x_696, 0.001f);
  let x_699 : f32 = u_xlat40;
  u_xlat40 = inverseSqrt(x_699);
  let x_701 : f32 = u_xlat40;
  let x_703 : vec4<f32> = u_xlat6;
  let x_705 : vec3<f32> = (vec3<f32>(x_701, x_701, x_701) * vec3<f32>(x_703.x, x_703.y, x_703.z));
  let x_706 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_705.x, x_705.y, x_705.z, x_706.w);
  let x_708 : vec3<f32> = u_xlat2;
  let x_709 : vec4<f32> = u_xlat3;
  u_xlat40 = dot(x_708, -(vec3<f32>(x_709.x, x_709.y, x_709.z)));
  let x_713 : vec3<f32> = u_xlat2;
  let x_715 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  u_xlat41 = dot(x_713, vec3<f32>(x_715.x, x_715.y, x_715.z));
  let x_718 : f32 = u_xlat41;
  u_xlat41 = clamp(x_718, 0.0f, 1.0f);
  let x_720 : vec3<f32> = u_xlat2;
  let x_721 : vec4<f32> = u_xlat6;
  u_xlat2.x = dot(x_720, vec3<f32>(x_721.x, x_721.y, x_721.z));
  let x_726 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_726, 0.0f, 1.0f);
  let x_731 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  let x_733 : vec4<f32> = u_xlat6;
  u_xlat15.x = dot(vec3<f32>(x_731.x, x_731.y, x_731.z), vec3<f32>(x_733.x, x_733.y, x_733.z));
  let x_738 : f32 = u_xlat15.x;
  u_xlat15.x = clamp(x_738, 0.0f, 1.0f);
  let x_743 : f32 = u_xlat15.x;
  let x_745 : f32 = u_xlat15.x;
  u_xlat28 = (x_743 * x_745);
  let x_747 : f32 = u_xlat28;
  let x_749 : vec4<f32> = u_xlat4;
  u_xlat28 = dot(vec2<f32>(x_747, x_747), vec2<f32>(x_749.x, x_749.x));
  let x_752 : f32 = u_xlat28;
  u_xlat28 = (x_752 + -0.5f);
  let x_755 : f32 = u_xlat41;
  u_xlat3.x = (-(x_755) + 1.0f);
  let x_761 : f32 = u_xlat3.x;
  let x_763 : f32 = u_xlat3.x;
  u_xlat16 = (x_761 * x_763);
  let x_765 : f32 = u_xlat16;
  let x_766 : f32 = u_xlat16;
  u_xlat16 = (x_765 * x_766);
  let x_769 : f32 = u_xlat3.x;
  let x_770 : f32 = u_xlat16;
  u_xlat3.x = (x_769 * x_770);
  let x_773 : f32 = u_xlat28;
  let x_775 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_773 * x_775) + 1.0f);
  let x_779 : f32 = u_xlat40;
  u_xlat16 = (-(abs(x_779)) + 1.0f);
  let x_784 : f32 = u_xlat16;
  let x_785 : f32 = u_xlat16;
  u_xlat29 = (x_784 * x_785);
  let x_787 : f32 = u_xlat29;
  let x_788 : f32 = u_xlat29;
  u_xlat29 = (x_787 * x_788);
  let x_790 : f32 = u_xlat16;
  let x_791 : f32 = u_xlat29;
  u_xlat16 = (x_790 * x_791);
  let x_793 : f32 = u_xlat28;
  let x_794 : f32 = u_xlat16;
  u_xlat28 = ((x_793 * x_794) + 1.0f);
  let x_797 : f32 = u_xlat28;
  let x_799 : f32 = u_xlat3.x;
  u_xlat28 = (x_797 * x_799);
  let x_801 : f32 = u_xlat41;
  let x_802 : f32 = u_xlat28;
  u_xlat28 = (x_801 * x_802);
  let x_805 : f32 = u_xlat4.x;
  let x_807 : f32 = u_xlat4.x;
  u_xlat3.x = (x_805 * x_807);
  let x_811 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_811, 0.002f);
  let x_816 : f32 = u_xlat3.x;
  u_xlat29 = (-(x_816) + 1.0f);
  let x_819 : f32 = u_xlat40;
  let x_821 : f32 = u_xlat29;
  let x_824 : f32 = u_xlat3.x;
  u_xlat42 = ((abs(x_819) * x_821) + x_824);
  let x_826 : f32 = u_xlat41;
  let x_827 : f32 = u_xlat29;
  let x_830 : f32 = u_xlat3.x;
  u_xlat29 = ((x_826 * x_827) + x_830);
  let x_832 : f32 = u_xlat40;
  let x_834 : f32 = u_xlat29;
  u_xlat40 = (abs(x_832) * x_834);
  let x_836 : f32 = u_xlat41;
  let x_837 : f32 = u_xlat42;
  let x_839 : f32 = u_xlat40;
  u_xlat40 = ((x_836 * x_837) + x_839);
  let x_841 : f32 = u_xlat40;
  u_xlat40 = (x_841 + 0.00001f);
  let x_844 : f32 = u_xlat40;
  u_xlat40 = (0.5f / x_844);
  let x_847 : f32 = u_xlat3.x;
  let x_849 : f32 = u_xlat3.x;
  u_xlat29 = (x_847 * x_849);
  let x_852 : f32 = u_xlat2.x;
  let x_853 : f32 = u_xlat29;
  let x_856 : f32 = u_xlat2.x;
  u_xlat42 = ((x_852 * x_853) + -(x_856));
  let x_859 : f32 = u_xlat42;
  let x_861 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_859 * x_861) + 1.0f);
  let x_865 : f32 = u_xlat29;
  u_xlat29 = (x_865 * 0.318309873f);
  let x_869 : f32 = u_xlat2.x;
  let x_871 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_869 * x_871) + 0.0000001f);
  let x_876 : f32 = u_xlat29;
  let x_878 : f32 = u_xlat2.x;
  u_xlat2.x = (x_876 / x_878);
  let x_881 : f32 = u_xlat40;
  let x_883 : f32 = u_xlat2.x;
  u_xlat40 = (x_881 * x_883);
  let x_885 : f32 = u_xlat41;
  let x_886 : f32 = u_xlat40;
  u_xlat40 = (x_885 * x_886);
  let x_888 : f32 = u_xlat40;
  u_xlat40 = (x_888 * 3.141592741f);
  let x_891 : f32 = u_xlat40;
  u_xlat40 = max(x_891, 0.0f);
  let x_894 : f32 = u_xlat3.x;
  let x_896 : f32 = u_xlat3.x;
  u_xlat2.x = ((x_894 * x_896) + 1.0f);
  let x_901 : f32 = u_xlat2.x;
  u_xlat2.x = (1.0f / x_901);
  let x_904 : vec3<f32> = u_xlat0;
  let x_905 : vec3<f32> = u_xlat0;
  u_xlat41 = dot(x_904, x_905);
  let x_907 : f32 = u_xlat41;
  u_xlatb41 = !((x_907 == 0.0f));
  let x_909 : bool = u_xlatb41;
  u_xlat41 = select(0.0f, 1.0f, x_909);
  let x_911 : f32 = u_xlat40;
  let x_912 : f32 = u_xlat41;
  u_xlat40 = (x_911 * x_912);
  let x_914 : f32 = u_xlat39;
  let x_917 : f32 = x_33.x_Glossiness;
  u_xlat39 = (-(x_914) + x_917);
  let x_919 : f32 = u_xlat39;
  u_xlat39 = (x_919 + 1.0f);
  let x_921 : f32 = u_xlat39;
  u_xlat39 = clamp(x_921, 0.0f, 1.0f);
  let x_923 : f32 = u_xlat28;
  let x_925 : vec3<f32> = u_xlat5;
  let x_926 : vec3<f32> = (vec3<f32>(x_923, x_923, x_923) * x_925);
  let x_927 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_926.x, x_927.y, x_926.y, x_926.z);
  let x_929 : vec3<f32> = u_xlat5;
  let x_930 : f32 = u_xlat40;
  u_xlat5 = (x_929 * vec3<f32>(x_930, x_930, x_930));
  let x_934 : f32 = u_xlat15.x;
  u_xlat40 = (-(x_934) + 1.0f);
  let x_937 : f32 = u_xlat40;
  let x_938 : f32 = u_xlat40;
  u_xlat15.x = (x_937 * x_938);
  let x_942 : f32 = u_xlat15.x;
  let x_944 : f32 = u_xlat15.x;
  u_xlat15.x = (x_942 * x_944);
  let x_947 : f32 = u_xlat40;
  let x_949 : f32 = u_xlat15.x;
  u_xlat40 = (x_947 * x_949);
  let x_951 : vec3<f32> = u_xlat0;
  u_xlat15 = (-(x_951) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_955 : vec3<f32> = u_xlat15;
  let x_956 : f32 = u_xlat40;
  let x_959 : vec3<f32> = u_xlat0;
  u_xlat15 = ((x_955 * vec3<f32>(x_956, x_956, x_956)) + x_959);
  let x_961 : vec3<f32> = u_xlat15;
  let x_962 : vec3<f32> = u_xlat5;
  u_xlat15 = (x_961 * x_962);
  let x_964 : vec3<f32> = u_xlat1;
  let x_965 : vec4<f32> = u_xlat3;
  let x_968 : vec3<f32> = u_xlat15;
  u_xlat1 = ((x_964 * vec3<f32>(x_965.x, x_965.z, x_965.w)) + x_968);
  let x_970 : vec3<f32> = u_xlat17;
  let x_971 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_970 * vec3<f32>(x_971.x, x_971.x, x_971.x));
  let x_974 : vec3<f32> = u_xlat0;
  let x_976 : f32 = u_xlat39;
  let x_978 : vec3<f32> = (-(x_974) + vec3<f32>(x_976, x_976, x_976));
  let x_979 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_978.x, x_979.y, x_978.y, x_978.z);
  let x_981 : f32 = u_xlat16;
  let x_983 : vec4<f32> = u_xlat3;
  let x_986 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_981, x_981, x_981) * vec3<f32>(x_983.x, x_983.z, x_983.w)) + x_986);
  let x_988 : vec3<f32> = u_xlat2;
  let x_989 : vec3<f32> = u_xlat0;
  let x_991 : vec3<f32> = u_xlat1;
  u_xlat0 = ((x_988 * x_989) + x_991);
  let x_998 : vec4<f32> = vs_TEXCOORD0;
  let x_1000 : vec4<f32> = textureSample(x_EmissionMap, sampler_EmissionMap, vec2<f32>(x_998.x, x_998.y));
  u_xlat1 = vec3<f32>(x_1000.x, x_1000.y, x_1000.z);
  let x_1004 : vec3<f32> = u_xlat1;
  let x_1007 : vec4<f32> = x_33.x_EmissionColor;
  let x_1010 : vec3<f32> = u_xlat0;
  let x_1011 : vec3<f32> = ((x_1004 * vec3<f32>(x_1007.x, x_1007.y, x_1007.z)) + x_1010);
  let x_1012 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1011.x, x_1011.y, x_1011.z, x_1012.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

