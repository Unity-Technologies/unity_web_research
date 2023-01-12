struct PGlobals {
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

@group(0) @binding(2) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

@group(0) @binding(3) var unity_SpecCube1 : texture_cube<f32>;

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
  var x_383 : f32;
  var x_395 : f32;
  var x_407 : f32;
  var u_xlat44 : f32;
  var u_xlatb45 : bool;
  var u_xlat45 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlat11 : vec3<f32>;
  var u_xlatb12 : vec3<bool>;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_569 : f32;
  var x_581 : f32;
  var x_593 : f32;
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
    let x_346 : vec4<f32> = x_33.unity_SpecCube0_BoxMax;
    let x_348 : vec3<f32> = (-(x_342) + vec3<f32>(x_346.x, x_346.y, x_346.z));
    let x_349 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_348.x, x_348.y, x_348.z, x_349.w);
    let x_351 : vec4<f32> = u_xlat8;
    let x_353 : vec4<f32> = u_xlat6;
    let x_355 : vec3<f32> = (vec3<f32>(x_351.x, x_351.y, x_351.z) / vec3<f32>(x_353.x, x_353.y, x_353.z));
    let x_356 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_355.x, x_355.y, x_355.z, x_356.w);
    let x_359 : vec3<f32> = u_xlat7;
    let x_363 : vec4<f32> = x_33.unity_SpecCube0_BoxMin;
    u_xlat9 = (-(x_359) + vec3<f32>(x_363.x, x_363.y, x_363.z));
    let x_366 : vec3<f32> = u_xlat9;
    let x_367 : vec4<f32> = u_xlat6;
    u_xlat9 = (x_366 / vec3<f32>(x_367.x, x_367.y, x_367.z));
    let x_374 : vec4<f32> = u_xlat6;
    let x_377 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_374.x, x_374.y, x_374.z, x_374.x));
    u_xlatb10 = vec3<bool>(x_377.x, x_377.y, x_377.z);
    let x_380 : vec4<f32> = u_xlat8;
    hlslcc_movcTemp = x_380;
    let x_382 : bool = u_xlatb10.x;
    if (x_382) {
      let x_387 : f32 = u_xlat8.x;
      x_383 = x_387;
    } else {
      let x_390 : f32 = u_xlat9.x;
      x_383 = x_390;
    }
    let x_391 : f32 = x_383;
    hlslcc_movcTemp.x = x_391;
    let x_394 : bool = u_xlatb10.y;
    if (x_394) {
      let x_399 : f32 = u_xlat8.y;
      x_395 = x_399;
    } else {
      let x_402 : f32 = u_xlat9.y;
      x_395 = x_402;
    }
    let x_403 : f32 = x_395;
    hlslcc_movcTemp.y = x_403;
    let x_406 : bool = u_xlatb10.z;
    if (x_406) {
      let x_411 : f32 = u_xlat8.z;
      x_407 = x_411;
    } else {
      let x_414 : f32 = u_xlat9.z;
      x_407 = x_414;
    }
    let x_415 : f32 = x_407;
    hlslcc_movcTemp.z = x_415;
    let x_417 : vec4<f32> = hlslcc_movcTemp;
    u_xlat8 = x_417;
    let x_419 : f32 = u_xlat8.y;
    let x_421 : f32 = u_xlat8.x;
    u_xlat41 = min(x_419, x_421);
    let x_424 : f32 = u_xlat8.z;
    let x_425 : f32 = u_xlat41;
    u_xlat41 = min(x_424, x_425);
    let x_427 : vec3<f32> = u_xlat7;
    let x_429 : vec4<f32> = x_33.unity_SpecCube0_ProbePosition;
    u_xlat7 = (x_427 + -(vec3<f32>(x_429.x, x_429.y, x_429.z)));
    let x_433 : vec4<f32> = u_xlat6;
    let x_435 : f32 = u_xlat41;
    let x_438 : vec3<f32> = u_xlat7;
    let x_439 : vec3<f32> = ((vec3<f32>(x_433.x, x_433.y, x_433.z) * vec3<f32>(x_435, x_435, x_435)) + x_438);
    let x_440 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_439.x, x_439.y, x_439.z, x_440.w);
  } else {
    let x_443 : vec3<f32> = u_xlat17;
    let x_444 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_443.x, x_443.y, x_443.z, x_444.w);
  }
  let x_447 : f32 = u_xlat4.x;
  u_xlat41 = ((-(x_447) * 0.699999988f) + 1.700000048f);
  let x_453 : f32 = u_xlat41;
  let x_455 : f32 = u_xlat4.x;
  u_xlat41 = (x_453 * x_455);
  let x_457 : f32 = u_xlat41;
  u_xlat41 = (x_457 * 6.0f);
  let x_468 : vec4<f32> = u_xlat6;
  let x_470 : f32 = u_xlat41;
  let x_471 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_468.x, x_468.y, x_468.z), x_470);
  u_xlat6 = x_471;
  let x_474 : f32 = u_xlat6.w;
  u_xlat44 = (x_474 + -1.0f);
  let x_479 : f32 = x_33.unity_SpecCube0_HDR.w;
  let x_480 : f32 = u_xlat44;
  u_xlat44 = ((x_479 * x_480) + 1.0f);
  let x_483 : f32 = u_xlat44;
  u_xlat44 = log2(x_483);
  let x_485 : f32 = u_xlat44;
  let x_487 : f32 = x_33.unity_SpecCube0_HDR.y;
  u_xlat44 = (x_485 * x_487);
  let x_489 : f32 = u_xlat44;
  u_xlat44 = exp2(x_489);
  let x_491 : f32 = u_xlat44;
  let x_493 : f32 = x_33.unity_SpecCube0_HDR.x;
  u_xlat44 = (x_491 * x_493);
  let x_495 : vec4<f32> = u_xlat6;
  let x_497 : f32 = u_xlat44;
  u_xlat7 = (vec3<f32>(x_495.x, x_495.y, x_495.z) * vec3<f32>(x_497, x_497, x_497));
  let x_502 : f32 = x_33.unity_SpecCube0_BoxMin.w;
  u_xlatb45 = (x_502 < 0.999989986f);
  let x_505 : bool = u_xlatb45;
  if (x_505) {
    let x_510 : f32 = x_33.unity_SpecCube1_ProbePosition.w;
    u_xlatb45 = (0.0f < x_510);
    let x_512 : bool = u_xlatb45;
    if (x_512) {
      let x_516 : vec3<f32> = u_xlat17;
      let x_517 : vec3<f32> = u_xlat17;
      u_xlat45 = dot(x_516, x_517);
      let x_519 : f32 = u_xlat45;
      u_xlat45 = inverseSqrt(x_519);
      let x_521 : vec3<f32> = u_xlat17;
      let x_522 : f32 = u_xlat45;
      let x_524 : vec3<f32> = (x_521 * vec3<f32>(x_522, x_522, x_522));
      let x_525 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_524.x, x_524.y, x_524.z, x_525.w);
      let x_528 : f32 = vs_TEXCOORD2.w;
      u_xlat9.x = x_528;
      let x_531 : f32 = vs_TEXCOORD3.w;
      u_xlat9.y = x_531;
      let x_534 : f32 = vs_TEXCOORD4.w;
      u_xlat9.z = x_534;
      let x_537 : vec3<f32> = u_xlat9;
      let x_541 : vec4<f32> = x_33.unity_SpecCube1_BoxMax;
      u_xlat10 = (-(x_537) + vec3<f32>(x_541.x, x_541.y, x_541.z));
      let x_544 : vec3<f32> = u_xlat10;
      let x_545 : vec4<f32> = u_xlat8;
      u_xlat10 = (x_544 / vec3<f32>(x_545.x, x_545.y, x_545.z));
      let x_549 : vec3<f32> = u_xlat9;
      let x_553 : vec4<f32> = x_33.unity_SpecCube1_BoxMin;
      u_xlat11 = (-(x_549) + vec3<f32>(x_553.x, x_553.y, x_553.z));
      let x_556 : vec3<f32> = u_xlat11;
      let x_557 : vec4<f32> = u_xlat8;
      u_xlat11 = (x_556 / vec3<f32>(x_557.x, x_557.y, x_557.z));
      let x_561 : vec4<f32> = u_xlat8;
      let x_563 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_561.x, x_561.y, x_561.z, x_561.x));
      u_xlatb12 = vec3<bool>(x_563.x, x_563.y, x_563.z);
      let x_566 : vec3<f32> = u_xlat10;
      hlslcc_movcTemp_1 = x_566;
      let x_568 : bool = u_xlatb12.x;
      if (x_568) {
        let x_573 : f32 = u_xlat10.x;
        x_569 = x_573;
      } else {
        let x_576 : f32 = u_xlat11.x;
        x_569 = x_576;
      }
      let x_577 : f32 = x_569;
      hlslcc_movcTemp_1.x = x_577;
      let x_580 : bool = u_xlatb12.y;
      if (x_580) {
        let x_585 : f32 = u_xlat10.y;
        x_581 = x_585;
      } else {
        let x_588 : f32 = u_xlat11.y;
        x_581 = x_588;
      }
      let x_589 : f32 = x_581;
      hlslcc_movcTemp_1.y = x_589;
      let x_592 : bool = u_xlatb12.z;
      if (x_592) {
        let x_597 : f32 = u_xlat10.z;
        x_593 = x_597;
      } else {
        let x_600 : f32 = u_xlat11.z;
        x_593 = x_600;
      }
      let x_601 : f32 = x_593;
      hlslcc_movcTemp_1.z = x_601;
      let x_603 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat10 = x_603;
      let x_605 : f32 = u_xlat10.y;
      let x_607 : f32 = u_xlat10.x;
      u_xlat45 = min(x_605, x_607);
      let x_610 : f32 = u_xlat10.z;
      let x_611 : f32 = u_xlat45;
      u_xlat45 = min(x_610, x_611);
      let x_613 : vec3<f32> = u_xlat9;
      let x_615 : vec4<f32> = x_33.unity_SpecCube1_ProbePosition;
      u_xlat9 = (x_613 + -(vec3<f32>(x_615.x, x_615.y, x_615.z)));
      let x_619 : vec4<f32> = u_xlat8;
      let x_621 : f32 = u_xlat45;
      let x_624 : vec3<f32> = u_xlat9;
      u_xlat17 = ((vec3<f32>(x_619.x, x_619.y, x_619.z) * vec3<f32>(x_621, x_621, x_621)) + x_624);
    }
    let x_630 : vec3<f32> = u_xlat17;
    let x_631 : f32 = u_xlat41;
    let x_632 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, x_630, x_631);
    u_xlat8 = x_632;
    let x_634 : f32 = u_xlat8.w;
    u_xlat41 = (x_634 + -1.0f);
    let x_638 : f32 = x_33.unity_SpecCube1_HDR.w;
    let x_639 : f32 = u_xlat41;
    u_xlat41 = ((x_638 * x_639) + 1.0f);
    let x_642 : f32 = u_xlat41;
    u_xlat41 = log2(x_642);
    let x_644 : f32 = u_xlat41;
    let x_646 : f32 = x_33.unity_SpecCube1_HDR.y;
    u_xlat41 = (x_644 * x_646);
    let x_648 : f32 = u_xlat41;
    u_xlat41 = exp2(x_648);
    let x_650 : f32 = u_xlat41;
    let x_652 : f32 = x_33.unity_SpecCube1_HDR.x;
    u_xlat41 = (x_650 * x_652);
    let x_654 : vec4<f32> = u_xlat8;
    let x_656 : f32 = u_xlat41;
    u_xlat17 = (vec3<f32>(x_654.x, x_654.y, x_654.z) * vec3<f32>(x_656, x_656, x_656));
    let x_659 : f32 = u_xlat44;
    let x_661 : vec4<f32> = u_xlat6;
    let x_664 : vec3<f32> = u_xlat17;
    let x_666 : vec3<f32> = ((vec3<f32>(x_659, x_659, x_659) * vec3<f32>(x_661.x, x_661.y, x_661.z)) + -(x_664));
    let x_667 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_666.x, x_666.y, x_666.z, x_667.w);
    let x_670 : vec4<f32> = x_33.unity_SpecCube0_BoxMin;
    let x_672 : vec4<f32> = u_xlat6;
    let x_675 : vec3<f32> = u_xlat17;
    u_xlat7 = ((vec3<f32>(x_670.w, x_670.w, x_670.w) * vec3<f32>(x_672.x, x_672.y, x_672.z)) + x_675);
  }
  let x_677 : f32 = u_xlat42;
  let x_679 : vec3<f32> = u_xlat7;
  u_xlat17 = (vec3<f32>(x_677, x_677, x_677) * x_679);
  let x_681 : vec4<f32> = vs_TEXCOORD1;
  let x_684 : f32 = u_xlat40;
  let x_688 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  let x_690 : vec3<f32> = ((-(vec3<f32>(x_681.x, x_681.y, x_681.z)) * vec3<f32>(x_684, x_684, x_684)) + vec3<f32>(x_688.x, x_688.y, x_688.z));
  let x_691 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_690.x, x_690.y, x_690.z, x_691.w);
  let x_693 : vec4<f32> = u_xlat6;
  let x_695 : vec4<f32> = u_xlat6;
  u_xlat40 = dot(vec3<f32>(x_693.x, x_693.y, x_693.z), vec3<f32>(x_695.x, x_695.y, x_695.z));
  let x_698 : f32 = u_xlat40;
  u_xlat40 = max(x_698, 0.001f);
  let x_701 : f32 = u_xlat40;
  u_xlat40 = inverseSqrt(x_701);
  let x_703 : f32 = u_xlat40;
  let x_705 : vec4<f32> = u_xlat6;
  let x_707 : vec3<f32> = (vec3<f32>(x_703, x_703, x_703) * vec3<f32>(x_705.x, x_705.y, x_705.z));
  let x_708 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_707.x, x_707.y, x_707.z, x_708.w);
  let x_710 : vec3<f32> = u_xlat2;
  let x_711 : vec4<f32> = u_xlat3;
  u_xlat40 = dot(x_710, -(vec3<f32>(x_711.x, x_711.y, x_711.z)));
  let x_715 : vec3<f32> = u_xlat2;
  let x_717 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  u_xlat41 = dot(x_715, vec3<f32>(x_717.x, x_717.y, x_717.z));
  let x_720 : f32 = u_xlat41;
  u_xlat41 = clamp(x_720, 0.0f, 1.0f);
  let x_722 : vec3<f32> = u_xlat2;
  let x_723 : vec4<f32> = u_xlat6;
  u_xlat2.x = dot(x_722, vec3<f32>(x_723.x, x_723.y, x_723.z));
  let x_728 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_728, 0.0f, 1.0f);
  let x_733 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  let x_735 : vec4<f32> = u_xlat6;
  u_xlat15.x = dot(vec3<f32>(x_733.x, x_733.y, x_733.z), vec3<f32>(x_735.x, x_735.y, x_735.z));
  let x_740 : f32 = u_xlat15.x;
  u_xlat15.x = clamp(x_740, 0.0f, 1.0f);
  let x_745 : f32 = u_xlat15.x;
  let x_747 : f32 = u_xlat15.x;
  u_xlat28 = (x_745 * x_747);
  let x_749 : f32 = u_xlat28;
  let x_751 : vec4<f32> = u_xlat4;
  u_xlat28 = dot(vec2<f32>(x_749, x_749), vec2<f32>(x_751.x, x_751.x));
  let x_754 : f32 = u_xlat28;
  u_xlat28 = (x_754 + -0.5f);
  let x_757 : f32 = u_xlat41;
  u_xlat3.x = (-(x_757) + 1.0f);
  let x_763 : f32 = u_xlat3.x;
  let x_765 : f32 = u_xlat3.x;
  u_xlat16 = (x_763 * x_765);
  let x_767 : f32 = u_xlat16;
  let x_768 : f32 = u_xlat16;
  u_xlat16 = (x_767 * x_768);
  let x_771 : f32 = u_xlat3.x;
  let x_772 : f32 = u_xlat16;
  u_xlat3.x = (x_771 * x_772);
  let x_775 : f32 = u_xlat28;
  let x_777 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_775 * x_777) + 1.0f);
  let x_781 : f32 = u_xlat40;
  u_xlat16 = (-(abs(x_781)) + 1.0f);
  let x_786 : f32 = u_xlat16;
  let x_787 : f32 = u_xlat16;
  u_xlat29 = (x_786 * x_787);
  let x_789 : f32 = u_xlat29;
  let x_790 : f32 = u_xlat29;
  u_xlat29 = (x_789 * x_790);
  let x_792 : f32 = u_xlat16;
  let x_793 : f32 = u_xlat29;
  u_xlat16 = (x_792 * x_793);
  let x_795 : f32 = u_xlat28;
  let x_796 : f32 = u_xlat16;
  u_xlat28 = ((x_795 * x_796) + 1.0f);
  let x_799 : f32 = u_xlat28;
  let x_801 : f32 = u_xlat3.x;
  u_xlat28 = (x_799 * x_801);
  let x_803 : f32 = u_xlat41;
  let x_804 : f32 = u_xlat28;
  u_xlat28 = (x_803 * x_804);
  let x_807 : f32 = u_xlat4.x;
  let x_809 : f32 = u_xlat4.x;
  u_xlat3.x = (x_807 * x_809);
  let x_813 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_813, 0.002f);
  let x_818 : f32 = u_xlat3.x;
  u_xlat29 = (-(x_818) + 1.0f);
  let x_821 : f32 = u_xlat40;
  let x_823 : f32 = u_xlat29;
  let x_826 : f32 = u_xlat3.x;
  u_xlat42 = ((abs(x_821) * x_823) + x_826);
  let x_828 : f32 = u_xlat41;
  let x_829 : f32 = u_xlat29;
  let x_832 : f32 = u_xlat3.x;
  u_xlat29 = ((x_828 * x_829) + x_832);
  let x_834 : f32 = u_xlat40;
  let x_836 : f32 = u_xlat29;
  u_xlat40 = (abs(x_834) * x_836);
  let x_838 : f32 = u_xlat41;
  let x_839 : f32 = u_xlat42;
  let x_841 : f32 = u_xlat40;
  u_xlat40 = ((x_838 * x_839) + x_841);
  let x_843 : f32 = u_xlat40;
  u_xlat40 = (x_843 + 0.00001f);
  let x_846 : f32 = u_xlat40;
  u_xlat40 = (0.5f / x_846);
  let x_849 : f32 = u_xlat3.x;
  let x_851 : f32 = u_xlat3.x;
  u_xlat29 = (x_849 * x_851);
  let x_854 : f32 = u_xlat2.x;
  let x_855 : f32 = u_xlat29;
  let x_858 : f32 = u_xlat2.x;
  u_xlat42 = ((x_854 * x_855) + -(x_858));
  let x_861 : f32 = u_xlat42;
  let x_863 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_861 * x_863) + 1.0f);
  let x_867 : f32 = u_xlat29;
  u_xlat29 = (x_867 * 0.318309873f);
  let x_871 : f32 = u_xlat2.x;
  let x_873 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_871 * x_873) + 0.0000001f);
  let x_878 : f32 = u_xlat29;
  let x_880 : f32 = u_xlat2.x;
  u_xlat2.x = (x_878 / x_880);
  let x_883 : f32 = u_xlat40;
  let x_885 : f32 = u_xlat2.x;
  u_xlat40 = (x_883 * x_885);
  let x_887 : f32 = u_xlat41;
  let x_888 : f32 = u_xlat40;
  u_xlat40 = (x_887 * x_888);
  let x_890 : f32 = u_xlat40;
  u_xlat40 = (x_890 * 3.141592741f);
  let x_893 : f32 = u_xlat40;
  u_xlat40 = max(x_893, 0.0f);
  let x_896 : f32 = u_xlat3.x;
  let x_898 : f32 = u_xlat3.x;
  u_xlat2.x = ((x_896 * x_898) + 1.0f);
  let x_903 : f32 = u_xlat2.x;
  u_xlat2.x = (1.0f / x_903);
  let x_906 : vec3<f32> = u_xlat0;
  let x_907 : vec3<f32> = u_xlat0;
  u_xlat41 = dot(x_906, x_907);
  let x_909 : f32 = u_xlat41;
  u_xlatb41 = !((x_909 == 0.0f));
  let x_911 : bool = u_xlatb41;
  u_xlat41 = select(0.0f, 1.0f, x_911);
  let x_913 : f32 = u_xlat40;
  let x_914 : f32 = u_xlat41;
  u_xlat40 = (x_913 * x_914);
  let x_916 : f32 = u_xlat39;
  let x_919 : f32 = x_33.x_Glossiness;
  u_xlat39 = (-(x_916) + x_919);
  let x_921 : f32 = u_xlat39;
  u_xlat39 = (x_921 + 1.0f);
  let x_923 : f32 = u_xlat39;
  u_xlat39 = clamp(x_923, 0.0f, 1.0f);
  let x_925 : f32 = u_xlat28;
  let x_927 : vec3<f32> = u_xlat5;
  let x_928 : vec3<f32> = (vec3<f32>(x_925, x_925, x_925) * x_927);
  let x_929 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_928.x, x_929.y, x_928.y, x_928.z);
  let x_931 : vec3<f32> = u_xlat5;
  let x_932 : f32 = u_xlat40;
  u_xlat5 = (x_931 * vec3<f32>(x_932, x_932, x_932));
  let x_936 : f32 = u_xlat15.x;
  u_xlat40 = (-(x_936) + 1.0f);
  let x_939 : f32 = u_xlat40;
  let x_940 : f32 = u_xlat40;
  u_xlat15.x = (x_939 * x_940);
  let x_944 : f32 = u_xlat15.x;
  let x_946 : f32 = u_xlat15.x;
  u_xlat15.x = (x_944 * x_946);
  let x_949 : f32 = u_xlat40;
  let x_951 : f32 = u_xlat15.x;
  u_xlat40 = (x_949 * x_951);
  let x_953 : vec3<f32> = u_xlat0;
  u_xlat15 = (-(x_953) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_957 : vec3<f32> = u_xlat15;
  let x_958 : f32 = u_xlat40;
  let x_961 : vec3<f32> = u_xlat0;
  u_xlat15 = ((x_957 * vec3<f32>(x_958, x_958, x_958)) + x_961);
  let x_963 : vec3<f32> = u_xlat15;
  let x_964 : vec3<f32> = u_xlat5;
  u_xlat15 = (x_963 * x_964);
  let x_966 : vec3<f32> = u_xlat1;
  let x_967 : vec4<f32> = u_xlat3;
  let x_970 : vec3<f32> = u_xlat15;
  u_xlat1 = ((x_966 * vec3<f32>(x_967.x, x_967.z, x_967.w)) + x_970);
  let x_972 : vec3<f32> = u_xlat17;
  let x_973 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_972 * vec3<f32>(x_973.x, x_973.x, x_973.x));
  let x_976 : vec3<f32> = u_xlat0;
  let x_978 : f32 = u_xlat39;
  let x_980 : vec3<f32> = (-(x_976) + vec3<f32>(x_978, x_978, x_978));
  let x_981 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_980.x, x_981.y, x_980.y, x_980.z);
  let x_983 : f32 = u_xlat16;
  let x_985 : vec4<f32> = u_xlat3;
  let x_988 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_983, x_983, x_983) * vec3<f32>(x_985.x, x_985.z, x_985.w)) + x_988);
  let x_990 : vec3<f32> = u_xlat2;
  let x_991 : vec3<f32> = u_xlat0;
  let x_993 : vec3<f32> = u_xlat1;
  u_xlat0 = ((x_990 * x_991) + x_993);
  let x_996 : f32 = vs_TEXCOORD1.w;
  let x_998 : f32 = x_33.x_ProjectionParams.y;
  u_xlat39 = (x_996 / x_998);
  let x_1000 : f32 = u_xlat39;
  u_xlat39 = (-(x_1000) + 1.0f);
  let x_1003 : f32 = u_xlat39;
  let x_1005 : f32 = x_33.x_ProjectionParams.z;
  u_xlat39 = (x_1003 * x_1005);
  let x_1007 : f32 = u_xlat39;
  u_xlat39 = max(x_1007, 0.0f);
  let x_1009 : f32 = u_xlat39;
  let x_1012 : f32 = x_33.unity_FogParams.x;
  u_xlat39 = (x_1009 * x_1012);
  let x_1014 : f32 = u_xlat39;
  let x_1015 : f32 = u_xlat39;
  u_xlat39 = (x_1014 * -(x_1015));
  let x_1018 : f32 = u_xlat39;
  u_xlat39 = exp2(x_1018);
  let x_1020 : vec3<f32> = u_xlat0;
  let x_1022 : vec4<f32> = x_33.unity_FogColor;
  u_xlat0 = (x_1020 + -(vec3<f32>(x_1022.x, x_1022.y, x_1022.z)));
  let x_1028 : f32 = u_xlat39;
  let x_1030 : vec3<f32> = u_xlat0;
  let x_1033 : vec4<f32> = x_33.unity_FogColor;
  let x_1035 : vec3<f32> = ((vec3<f32>(x_1028, x_1028, x_1028) * x_1030) + vec3<f32>(x_1033.x, x_1033.y, x_1033.z));
  let x_1036 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1035.x, x_1035.y, x_1035.z, x_1036.w);
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

