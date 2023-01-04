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

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_33 : PGlobals;

var<private> u_xlat45 : f32;

var<private> u_xlat46 : f32;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlatb48 : bool;

var<private> u_xlatb4 : bool;

var<private> u_xlat19 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> u_xlat20 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(5) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(7) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(2) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_OcclusionMap : sampler;

var<private> u_xlat34 : f32;

var<private> u_xlat49 : f32;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat23 : vec3<f32>;

var<private> u_xlat48 : f32;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> u_xlatb47 : bool;

var<private> u_xlat47 : f32;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat11 : vec3<f32>;

var<private> u_xlatb12 : vec3<bool>;

@group(0) @binding(3) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat12 : vec3<f32>;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlatb14 : vec3<bool>;

@group(0) @binding(4) var unity_SpecCube1 : texture_cube<f32>;

var<private> u_xlat17 : vec3<f32>;

var<private> u_xlat32 : f32;

var<private> u_xlat18 : f32;

var<private> u_xlat33 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_182 : vec3<f32>;
  var x_369 : vec3<f32>;
  var hlslcc_movcTemp : vec3<f32>;
  var x_563 : f32;
  var x_575 : f32;
  var x_587 : f32;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_753 : f32;
  var x_765 : f32;
  var x_777 : f32;
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
      let x_185 : vec3<f32> = u_xlat19;
      x_182 = x_185;
    } else {
      let x_187 : vec3<f32> = u_xlat20;
      x_182 = x_187;
    }
    let x_188 : vec3<f32> = x_182;
    let x_189 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_188.x, x_188.y, x_188.z, x_189.w);
    let x_191 : vec4<f32> = u_xlat4;
    let x_196 : vec3<f32> = x_33.unity_ProbeVolumeMin;
    let x_198 : vec3<f32> = (vec3<f32>(x_191.x, x_191.y, x_191.z) + -(x_196));
    let x_199 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_198.x, x_198.y, x_198.z, x_199.w);
    let x_201 : vec4<f32> = u_xlat4;
    let x_205 : vec3<f32> = x_33.unity_ProbeVolumeSizeInv;
    let x_206 : vec3<f32> = (vec3<f32>(x_201.x, x_201.y, x_201.z) * x_205);
    let x_207 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_207.x, x_206.x, x_206.y, x_206.z);
    let x_210 : f32 = u_xlat4.y;
    u_xlat19.x = ((x_210 * 0.25f) + 0.75f);
    let x_218 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat5.x = ((x_218 * 0.5f) + 0.75f);
    let x_224 : f32 = u_xlat19.x;
    let x_226 : f32 = u_xlat5.x;
    u_xlat4.x = max(x_224, x_226);
    let x_237 : vec4<f32> = u_xlat4;
    let x_239 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_237.x, x_237.z, x_237.w));
    u_xlat4 = x_239;
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
    u_xlat4.w = 1.0f;
  }
  let x_245 : vec4<f32> = u_xlat4;
  let x_248 : vec4<f32> = x_33.unity_OcclusionMaskSelector;
  u_xlat4.x = dot(x_245, x_248);
  let x_252 : f32 = u_xlat4.x;
  u_xlat4.x = clamp(x_252, 0.0f, 1.0f);
  let x_261 : vec4<f32> = vs_TEXCOORD0;
  let x_263 : vec4<f32> = textureSample(x_OcclusionMap, sampler_OcclusionMap, vec2<f32>(x_261.x, x_261.y));
  u_xlat19.x = x_263.y;
  let x_269 : f32 = x_33.x_OcclusionStrength;
  u_xlat34 = (-(x_269) + 1.0f);
  let x_273 : f32 = u_xlat19.x;
  let x_275 : f32 = x_33.x_OcclusionStrength;
  let x_277 : f32 = u_xlat34;
  u_xlat19.x = ((x_273 * x_275) + x_277);
  let x_282 : f32 = x_33.x_Glossiness;
  u_xlat34 = (-(x_282) + 1.0f);
  let x_286 : vec4<f32> = u_xlat3;
  let x_288 : vec4<f32> = u_xlat2;
  u_xlat49 = dot(vec3<f32>(x_286.x, x_286.y, x_286.z), vec3<f32>(x_288.x, x_288.y, x_288.z));
  let x_291 : f32 = u_xlat49;
  let x_292 : f32 = u_xlat49;
  u_xlat49 = (x_291 + x_292);
  let x_294 : vec4<f32> = u_xlat2;
  let x_296 : f32 = u_xlat49;
  let x_300 : vec4<f32> = u_xlat3;
  let x_302 : vec3<f32> = ((vec3<f32>(x_294.x, x_294.y, x_294.z) * -(vec3<f32>(x_296, x_296, x_296))) + vec3<f32>(x_300.x, x_300.y, x_300.z));
  let x_303 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_302.x, x_302.y, x_302.z, x_303.w);
  let x_306 : vec4<f32> = u_xlat4;
  let x_310 : vec4<f32> = x_33.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_306.x, x_306.x, x_306.x) * vec3<f32>(x_310.x, x_310.y, x_310.z));
  let x_313 : bool = u_xlatb48;
  if (x_313) {
    let x_317 : f32 = x_33.unity_ProbeVolumeParams.y;
    u_xlatb48 = (x_317 == 1.0f);
    let x_320 : vec4<f32> = vs_TEXCOORD3;
    let x_323 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[1i];
    let x_325 : vec3<f32> = (vec3<f32>(x_320.w, x_320.w, x_320.w) * vec3<f32>(x_323.x, x_323.y, x_323.z));
    let x_326 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_325.x, x_325.y, x_325.z, x_326.w);
    let x_329 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[0i];
    let x_331 : vec4<f32> = vs_TEXCOORD2;
    let x_334 : vec4<f32> = u_xlat7;
    let x_336 : vec3<f32> = ((vec3<f32>(x_329.x, x_329.y, x_329.z) * vec3<f32>(x_331.w, x_331.w, x_331.w)) + vec3<f32>(x_334.x, x_334.y, x_334.z));
    let x_337 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_336.x, x_336.y, x_336.z, x_337.w);
    let x_340 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[2i];
    let x_342 : vec4<f32> = vs_TEXCOORD4;
    let x_345 : vec4<f32> = u_xlat7;
    let x_347 : vec3<f32> = ((vec3<f32>(x_340.x, x_340.y, x_340.z) * vec3<f32>(x_342.w, x_342.w, x_342.w)) + vec3<f32>(x_345.x, x_345.y, x_345.z));
    let x_348 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_347.x, x_347.y, x_347.z, x_348.w);
    let x_350 : vec4<f32> = u_xlat7;
    let x_353 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[3i];
    let x_355 : vec3<f32> = (vec3<f32>(x_350.x, x_350.y, x_350.z) + vec3<f32>(x_353.x, x_353.y, x_353.z));
    let x_356 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_355.x, x_355.y, x_355.z, x_356.w);
    let x_360 : f32 = vs_TEXCOORD2.w;
    u_xlat23.x = x_360;
    let x_363 : f32 = vs_TEXCOORD3.w;
    u_xlat23.y = x_363;
    let x_366 : f32 = vs_TEXCOORD4.w;
    u_xlat23.z = x_366;
    let x_368 : bool = u_xlatb48;
    if (x_368) {
      let x_372 : vec4<f32> = u_xlat7;
      x_369 = vec3<f32>(x_372.x, x_372.y, x_372.z);
    } else {
      let x_375 : vec3<f32> = u_xlat23;
      x_369 = x_375;
    }
    let x_376 : vec3<f32> = x_369;
    let x_377 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_376.x, x_376.y, x_376.z, x_377.w);
    let x_379 : vec4<f32> = u_xlat7;
    let x_382 : vec3<f32> = x_33.unity_ProbeVolumeMin;
    let x_384 : vec3<f32> = (vec3<f32>(x_379.x, x_379.y, x_379.z) + -(x_382));
    let x_385 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_384.x, x_384.y, x_384.z, x_385.w);
    let x_387 : vec4<f32> = u_xlat7;
    let x_390 : vec3<f32> = x_33.unity_ProbeVolumeSizeInv;
    let x_391 : vec3<f32> = (vec3<f32>(x_387.x, x_387.y, x_387.z) * x_390);
    let x_392 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_392.x, x_391.x, x_391.y, x_391.z);
    let x_396 : f32 = u_xlat7.y;
    u_xlat48 = (x_396 * 0.25f);
    let x_399 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat4.x = (x_399 * 0.5f);
    let x_403 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat49 = ((-(x_403) * 0.5f) + 0.25f);
    let x_407 : f32 = u_xlat48;
    let x_409 : f32 = u_xlat4.x;
    u_xlat48 = max(x_407, x_409);
    let x_411 : f32 = u_xlat49;
    let x_412 : f32 = u_xlat48;
    u_xlat7.x = min(x_411, x_412);
    let x_419 : vec4<f32> = u_xlat7;
    let x_421 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_419.x, x_419.z, x_419.w));
    u_xlat8 = x_421;
    let x_423 : vec4<f32> = u_xlat7;
    let x_426 : vec3<f32> = (vec3<f32>(x_423.x, x_423.z, x_423.w) + vec3<f32>(0.25f, 0.0f, 0.0f));
    let x_427 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_426.x, x_426.y, x_426.z, x_427.w);
    let x_432 : vec4<f32> = u_xlat9;
    let x_434 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_432.x, x_432.y, x_432.z));
    u_xlat9 = x_434;
    let x_435 : vec4<f32> = u_xlat7;
    let x_438 : vec3<f32> = (vec3<f32>(x_435.x, x_435.z, x_435.w) + vec3<f32>(0.5f, 0.0f, 0.0f));
    let x_439 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_438.x, x_438.y, x_438.z, x_439.w);
    let x_444 : vec4<f32> = u_xlat7;
    let x_446 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_444.x, x_444.y, x_444.z));
    u_xlat7 = x_446;
    u_xlat2.w = 1.0f;
    let x_448 : vec4<f32> = u_xlat8;
    let x_449 : vec4<f32> = u_xlat2;
    u_xlat8.x = dot(x_448, x_449);
    let x_452 : vec4<f32> = u_xlat9;
    let x_453 : vec4<f32> = u_xlat2;
    u_xlat8.y = dot(x_452, x_453);
    let x_456 : vec4<f32> = u_xlat7;
    let x_457 : vec4<f32> = u_xlat2;
    u_xlat8.z = dot(x_456, x_457);
  } else {
    u_xlat2.w = 1.0f;
    let x_463 : vec4<f32> = x_33.unity_SHAr;
    let x_464 : vec4<f32> = u_xlat2;
    u_xlat8.x = dot(x_463, x_464);
    let x_468 : vec4<f32> = x_33.unity_SHAg;
    let x_469 : vec4<f32> = u_xlat2;
    u_xlat8.y = dot(x_468, x_469);
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
      let x_567 : f32 = u_xlat10.x;
      x_563 = x_567;
    } else {
      let x_570 : f32 = u_xlat11.x;
      x_563 = x_570;
    }
    let x_571 : f32 = x_563;
    hlslcc_movcTemp.x = x_571;
    let x_574 : bool = u_xlatb12.y;
    if (x_574) {
      let x_579 : f32 = u_xlat10.y;
      x_575 = x_579;
    } else {
      let x_582 : f32 = u_xlat11.y;
      x_575 = x_582;
    }
    let x_583 : f32 = x_575;
    hlslcc_movcTemp.y = x_583;
    let x_586 : bool = u_xlatb12.z;
    if (x_586) {
      let x_591 : f32 = u_xlat10.z;
      x_587 = x_591;
    } else {
      let x_594 : f32 = u_xlat11.z;
      x_587 = x_594;
    }
    let x_595 : f32 = x_587;
    hlslcc_movcTemp.z = x_595;
    let x_597 : vec3<f32> = hlslcc_movcTemp;
    u_xlat10 = x_597;
    let x_599 : f32 = u_xlat10.y;
    let x_601 : f32 = u_xlat10.x;
    u_xlat47 = min(x_599, x_601);
    let x_604 : f32 = u_xlat10.z;
    let x_605 : f32 = u_xlat47;
    u_xlat47 = min(x_604, x_605);
    let x_607 : vec4<f32> = u_xlat9;
    let x_610 : vec4<f32> = x_33.unity_SpecCube0_ProbePosition;
    let x_613 : vec3<f32> = (vec3<f32>(x_607.x, x_607.y, x_607.z) + -(vec3<f32>(x_610.x, x_610.y, x_610.z)));
    let x_614 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_613.x, x_613.y, x_613.z, x_614.w);
    let x_616 : vec4<f32> = u_xlat8;
    let x_618 : f32 = u_xlat47;
    let x_621 : vec4<f32> = u_xlat9;
    let x_623 : vec3<f32> = ((vec3<f32>(x_616.x, x_616.y, x_616.z) * vec3<f32>(x_618, x_618, x_618)) + vec3<f32>(x_621.x, x_621.y, x_621.z));
    let x_624 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_623.x, x_623.y, x_623.z, x_624.w);
  } else {
    let x_627 : vec4<f32> = u_xlat5;
    let x_628 : vec3<f32> = vec3<f32>(x_627.x, x_627.y, x_627.z);
    let x_629 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_628.x, x_628.y, x_628.z, x_629.w);
  }
  let x_631 : f32 = u_xlat34;
  u_xlat47 = ((-(x_631) * 0.699999988f) + 1.700000048f);
  let x_637 : f32 = u_xlat47;
  let x_638 : f32 = u_xlat34;
  u_xlat47 = (x_637 * x_638);
  let x_640 : f32 = u_xlat47;
  u_xlat47 = (x_640 * 6.0f);
  let x_651 : vec4<f32> = u_xlat8;
  let x_653 : f32 = u_xlat47;
  let x_654 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_651.x, x_651.y, x_651.z), x_653);
  u_xlat8 = x_654;
  let x_656 : f32 = u_xlat8.w;
  u_xlat48 = (x_656 + -1.0f);
  let x_661 : f32 = x_33.unity_SpecCube0_HDR.w;
  let x_662 : f32 = u_xlat48;
  u_xlat48 = ((x_661 * x_662) + 1.0f);
  let x_665 : f32 = u_xlat48;
  u_xlat48 = log2(x_665);
  let x_667 : f32 = u_xlat48;
  let x_669 : f32 = x_33.unity_SpecCube0_HDR.y;
  u_xlat48 = (x_667 * x_669);
  let x_671 : f32 = u_xlat48;
  u_xlat48 = exp2(x_671);
  let x_673 : f32 = u_xlat48;
  let x_675 : f32 = x_33.unity_SpecCube0_HDR.x;
  u_xlat48 = (x_673 * x_675);
  let x_677 : vec4<f32> = u_xlat8;
  let x_679 : f32 = u_xlat48;
  let x_681 : vec3<f32> = (vec3<f32>(x_677.x, x_677.y, x_677.z) * vec3<f32>(x_679, x_679, x_679));
  let x_682 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_681.x, x_681.y, x_681.z, x_682.w);
  let x_685 : f32 = x_33.unity_SpecCube0_BoxMin.w;
  u_xlatb4 = (x_685 < 0.999989986f);
  let x_688 : bool = u_xlatb4;
  if (x_688) {
    let x_693 : f32 = x_33.unity_SpecCube1_ProbePosition.w;
    u_xlatb4 = (0.0f < x_693);
    let x_695 : bool = u_xlatb4;
    if (x_695) {
      let x_698 : vec4<f32> = u_xlat5;
      let x_700 : vec4<f32> = u_xlat5;
      u_xlat4.x = dot(vec3<f32>(x_698.x, x_698.y, x_698.z), vec3<f32>(x_700.x, x_700.y, x_700.z));
      let x_705 : f32 = u_xlat4.x;
      u_xlat4.x = inverseSqrt(x_705);
      let x_708 : vec4<f32> = u_xlat4;
      let x_710 : vec4<f32> = u_xlat5;
      u_xlat10 = (vec3<f32>(x_708.x, x_708.x, x_708.x) * vec3<f32>(x_710.x, x_710.y, x_710.z));
      let x_714 : f32 = vs_TEXCOORD2.w;
      u_xlat11.x = x_714;
      let x_717 : f32 = vs_TEXCOORD3.w;
      u_xlat11.y = x_717;
      let x_720 : f32 = vs_TEXCOORD4.w;
      u_xlat11.z = x_720;
      let x_723 : vec3<f32> = u_xlat11;
      let x_727 : vec4<f32> = x_33.unity_SpecCube1_BoxMax;
      u_xlat12 = (-(x_723) + vec3<f32>(x_727.x, x_727.y, x_727.z));
      let x_730 : vec3<f32> = u_xlat12;
      let x_731 : vec3<f32> = u_xlat10;
      u_xlat12 = (x_730 / x_731);
      let x_734 : vec3<f32> = u_xlat11;
      let x_738 : vec4<f32> = x_33.unity_SpecCube1_BoxMin;
      u_xlat13 = (-(x_734) + vec3<f32>(x_738.x, x_738.y, x_738.z));
      let x_741 : vec3<f32> = u_xlat13;
      let x_742 : vec3<f32> = u_xlat10;
      u_xlat13 = (x_741 / x_742);
      let x_745 : vec3<f32> = u_xlat10;
      let x_747 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_745.x, x_745.y, x_745.z, x_745.x));
      u_xlatb14 = vec3<bool>(x_747.x, x_747.y, x_747.z);
      let x_750 : vec3<f32> = u_xlat12;
      hlslcc_movcTemp_1 = x_750;
      let x_752 : bool = u_xlatb14.x;
      if (x_752) {
        let x_757 : f32 = u_xlat12.x;
        x_753 = x_757;
      } else {
        let x_760 : f32 = u_xlat13.x;
        x_753 = x_760;
      }
      let x_761 : f32 = x_753;
      hlslcc_movcTemp_1.x = x_761;
      let x_764 : bool = u_xlatb14.y;
      if (x_764) {
        let x_769 : f32 = u_xlat12.y;
        x_765 = x_769;
      } else {
        let x_772 : f32 = u_xlat13.y;
        x_765 = x_772;
      }
      let x_773 : f32 = x_765;
      hlslcc_movcTemp_1.y = x_773;
      let x_776 : bool = u_xlatb14.z;
      if (x_776) {
        let x_781 : f32 = u_xlat12.z;
        x_777 = x_781;
      } else {
        let x_784 : f32 = u_xlat13.z;
        x_777 = x_784;
      }
      let x_785 : f32 = x_777;
      hlslcc_movcTemp_1.z = x_785;
      let x_787 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat12 = x_787;
      let x_789 : f32 = u_xlat12.y;
      let x_791 : f32 = u_xlat12.x;
      u_xlat4.x = min(x_789, x_791);
      let x_795 : f32 = u_xlat12.z;
      let x_797 : f32 = u_xlat4.x;
      u_xlat4.x = min(x_795, x_797);
      let x_800 : vec3<f32> = u_xlat11;
      let x_802 : vec4<f32> = x_33.unity_SpecCube1_ProbePosition;
      u_xlat11 = (x_800 + -(vec3<f32>(x_802.x, x_802.y, x_802.z)));
      let x_806 : vec3<f32> = u_xlat10;
      let x_807 : vec4<f32> = u_xlat4;
      let x_810 : vec3<f32> = u_xlat11;
      let x_811 : vec3<f32> = ((x_806 * vec3<f32>(x_807.x, x_807.x, x_807.x)) + x_810);
      let x_812 : vec4<f32> = u_xlat5;
      u_xlat5 = vec4<f32>(x_811.x, x_811.y, x_811.z, x_812.w);
    }
    let x_818 : vec4<f32> = u_xlat5;
    let x_820 : f32 = u_xlat47;
    let x_821 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_818.x, x_818.y, x_818.z), x_820);
    u_xlat5 = x_821;
    let x_823 : f32 = u_xlat5.w;
    u_xlat47 = (x_823 + -1.0f);
    let x_827 : f32 = x_33.unity_SpecCube1_HDR.w;
    let x_828 : f32 = u_xlat47;
    u_xlat47 = ((x_827 * x_828) + 1.0f);
    let x_831 : f32 = u_xlat47;
    u_xlat47 = log2(x_831);
    let x_833 : f32 = u_xlat47;
    let x_835 : f32 = x_33.unity_SpecCube1_HDR.y;
    u_xlat47 = (x_833 * x_835);
    let x_837 : f32 = u_xlat47;
    u_xlat47 = exp2(x_837);
    let x_839 : f32 = u_xlat47;
    let x_841 : f32 = x_33.unity_SpecCube1_HDR.x;
    u_xlat47 = (x_839 * x_841);
    let x_843 : vec4<f32> = u_xlat5;
    let x_845 : f32 = u_xlat47;
    let x_847 : vec3<f32> = (vec3<f32>(x_843.x, x_843.y, x_843.z) * vec3<f32>(x_845, x_845, x_845));
    let x_848 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_847.x, x_847.y, x_847.z, x_848.w);
    let x_850 : f32 = u_xlat48;
    let x_852 : vec4<f32> = u_xlat8;
    let x_855 : vec4<f32> = u_xlat5;
    let x_858 : vec3<f32> = ((vec3<f32>(x_850, x_850, x_850) * vec3<f32>(x_852.x, x_852.y, x_852.z)) + -(vec3<f32>(x_855.x, x_855.y, x_855.z)));
    let x_859 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_858.x, x_858.y, x_858.z, x_859.w);
    let x_862 : vec4<f32> = x_33.unity_SpecCube0_BoxMin;
    let x_864 : vec4<f32> = u_xlat8;
    let x_867 : vec4<f32> = u_xlat5;
    let x_869 : vec3<f32> = ((vec3<f32>(x_862.w, x_862.w, x_862.w) * vec3<f32>(x_864.x, x_864.y, x_864.z)) + vec3<f32>(x_867.x, x_867.y, x_867.z));
    let x_870 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_869.x, x_869.y, x_869.z, x_870.w);
  }
  let x_872 : vec3<f32> = u_xlat19;
  let x_874 : vec4<f32> = u_xlat9;
  let x_876 : vec3<f32> = (vec3<f32>(x_872.x, x_872.x, x_872.x) * vec3<f32>(x_874.x, x_874.y, x_874.z));
  let x_877 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_876.x, x_876.y, x_876.z, x_877.w);
  let x_879 : vec4<f32> = vs_TEXCOORD1;
  let x_882 : f32 = u_xlat46;
  let x_886 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  let x_888 : vec3<f32> = ((-(vec3<f32>(x_879.x, x_879.y, x_879.z)) * vec3<f32>(x_882, x_882, x_882)) + vec3<f32>(x_886.x, x_886.y, x_886.z));
  let x_889 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_888.x, x_888.y, x_888.z, x_889.w);
  let x_891 : vec4<f32> = u_xlat8;
  let x_893 : vec4<f32> = u_xlat8;
  u_xlat46 = dot(vec3<f32>(x_891.x, x_891.y, x_891.z), vec3<f32>(x_893.x, x_893.y, x_893.z));
  let x_896 : f32 = u_xlat46;
  u_xlat46 = max(x_896, 0.001f);
  let x_899 : f32 = u_xlat46;
  u_xlat46 = inverseSqrt(x_899);
  let x_901 : f32 = u_xlat46;
  let x_903 : vec4<f32> = u_xlat8;
  let x_905 : vec3<f32> = (vec3<f32>(x_901, x_901, x_901) * vec3<f32>(x_903.x, x_903.y, x_903.z));
  let x_906 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_905.x, x_905.y, x_905.z, x_906.w);
  let x_908 : vec4<f32> = u_xlat2;
  let x_910 : vec4<f32> = u_xlat3;
  u_xlat46 = dot(vec3<f32>(x_908.x, x_908.y, x_908.z), -(vec3<f32>(x_910.x, x_910.y, x_910.z)));
  let x_914 : vec4<f32> = u_xlat2;
  let x_917 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  u_xlat47 = dot(vec3<f32>(x_914.x, x_914.y, x_914.z), vec3<f32>(x_917.x, x_917.y, x_917.z));
  let x_920 : f32 = u_xlat47;
  u_xlat47 = clamp(x_920, 0.0f, 1.0f);
  let x_922 : vec4<f32> = u_xlat2;
  let x_924 : vec4<f32> = u_xlat8;
  u_xlat2.x = dot(vec3<f32>(x_922.x, x_922.y, x_922.z), vec3<f32>(x_924.x, x_924.y, x_924.z));
  let x_929 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_929, 0.0f, 1.0f);
  let x_934 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  let x_936 : vec4<f32> = u_xlat8;
  u_xlat17.x = dot(vec3<f32>(x_934.x, x_934.y, x_934.z), vec3<f32>(x_936.x, x_936.y, x_936.z));
  let x_941 : f32 = u_xlat17.x;
  u_xlat17.x = clamp(x_941, 0.0f, 1.0f);
  let x_946 : f32 = u_xlat17.x;
  let x_948 : f32 = u_xlat17.x;
  u_xlat32 = (x_946 * x_948);
  let x_950 : f32 = u_xlat32;
  let x_952 : f32 = u_xlat34;
  u_xlat32 = dot(vec2<f32>(x_950, x_950), vec2<f32>(x_952, x_952));
  let x_955 : f32 = u_xlat32;
  u_xlat32 = (x_955 + -0.5f);
  let x_958 : f32 = u_xlat47;
  u_xlat3.x = (-(x_958) + 1.0f);
  let x_964 : f32 = u_xlat3.x;
  let x_966 : f32 = u_xlat3.x;
  u_xlat18 = (x_964 * x_966);
  let x_968 : f32 = u_xlat18;
  let x_969 : f32 = u_xlat18;
  u_xlat18 = (x_968 * x_969);
  let x_972 : f32 = u_xlat3.x;
  let x_973 : f32 = u_xlat18;
  u_xlat3.x = (x_972 * x_973);
  let x_976 : f32 = u_xlat32;
  let x_978 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_976 * x_978) + 1.0f);
  let x_982 : f32 = u_xlat46;
  u_xlat18 = (-(abs(x_982)) + 1.0f);
  let x_987 : f32 = u_xlat18;
  let x_988 : f32 = u_xlat18;
  u_xlat33 = (x_987 * x_988);
  let x_990 : f32 = u_xlat33;
  let x_991 : f32 = u_xlat33;
  u_xlat33 = (x_990 * x_991);
  let x_993 : f32 = u_xlat18;
  let x_994 : f32 = u_xlat33;
  u_xlat18 = (x_993 * x_994);
  let x_996 : f32 = u_xlat32;
  let x_997 : f32 = u_xlat18;
  u_xlat32 = ((x_996 * x_997) + 1.0f);
  let x_1000 : f32 = u_xlat32;
  let x_1002 : f32 = u_xlat3.x;
  u_xlat32 = (x_1000 * x_1002);
  let x_1004 : f32 = u_xlat47;
  let x_1005 : f32 = u_xlat32;
  u_xlat32 = (x_1004 * x_1005);
  let x_1007 : f32 = u_xlat34;
  let x_1008 : f32 = u_xlat34;
  u_xlat3.x = (x_1007 * x_1008);
  let x_1012 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_1012, 0.002f);
  let x_1017 : f32 = u_xlat3.x;
  u_xlat33 = (-(x_1017) + 1.0f);
  let x_1020 : f32 = u_xlat46;
  let x_1022 : f32 = u_xlat33;
  let x_1025 : f32 = u_xlat3.x;
  u_xlat48 = ((abs(x_1020) * x_1022) + x_1025);
  let x_1027 : f32 = u_xlat47;
  let x_1028 : f32 = u_xlat33;
  let x_1031 : f32 = u_xlat3.x;
  u_xlat33 = ((x_1027 * x_1028) + x_1031);
  let x_1033 : f32 = u_xlat46;
  let x_1035 : f32 = u_xlat33;
  u_xlat46 = (abs(x_1033) * x_1035);
  let x_1037 : f32 = u_xlat47;
  let x_1038 : f32 = u_xlat48;
  let x_1040 : f32 = u_xlat46;
  u_xlat46 = ((x_1037 * x_1038) + x_1040);
  let x_1042 : f32 = u_xlat46;
  u_xlat46 = (x_1042 + 0.00001f);
  let x_1045 : f32 = u_xlat46;
  u_xlat46 = (0.5f / x_1045);
  let x_1048 : f32 = u_xlat3.x;
  let x_1050 : f32 = u_xlat3.x;
  u_xlat33 = (x_1048 * x_1050);
  let x_1053 : f32 = u_xlat2.x;
  let x_1054 : f32 = u_xlat33;
  let x_1057 : f32 = u_xlat2.x;
  u_xlat48 = ((x_1053 * x_1054) + -(x_1057));
  let x_1060 : f32 = u_xlat48;
  let x_1062 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1060 * x_1062) + 1.0f);
  let x_1066 : f32 = u_xlat33;
  u_xlat33 = (x_1066 * 0.318309873f);
  let x_1070 : f32 = u_xlat2.x;
  let x_1072 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1070 * x_1072) + 0.0000001f);
  let x_1077 : f32 = u_xlat33;
  let x_1079 : f32 = u_xlat2.x;
  u_xlat2.x = (x_1077 / x_1079);
  let x_1082 : f32 = u_xlat46;
  let x_1084 : f32 = u_xlat2.x;
  u_xlat46 = (x_1082 * x_1084);
  let x_1086 : f32 = u_xlat47;
  let x_1087 : f32 = u_xlat46;
  u_xlat46 = (x_1086 * x_1087);
  let x_1089 : f32 = u_xlat46;
  u_xlat46 = (x_1089 * 3.141592741f);
  let x_1092 : f32 = u_xlat46;
  u_xlat46 = max(x_1092, 0.0f);
  let x_1095 : f32 = u_xlat3.x;
  let x_1097 : f32 = u_xlat3.x;
  u_xlat2.x = ((x_1095 * x_1097) + 1.0f);
  let x_1102 : f32 = u_xlat2.x;
  u_xlat2.x = (1.0f / x_1102);
  let x_1105 : vec3<f32> = u_xlat0;
  let x_1106 : vec3<f32> = u_xlat0;
  u_xlat47 = dot(x_1105, x_1106);
  let x_1108 : f32 = u_xlat47;
  u_xlatb47 = !((x_1108 == 0.0f));
  let x_1110 : bool = u_xlatb47;
  u_xlat47 = select(0.0f, 1.0f, x_1110);
  let x_1112 : f32 = u_xlat46;
  let x_1113 : f32 = u_xlat47;
  u_xlat46 = (x_1112 * x_1113);
  let x_1115 : f32 = u_xlat45;
  let x_1118 : f32 = x_33.x_Glossiness;
  u_xlat45 = (-(x_1115) + x_1118);
  let x_1120 : f32 = u_xlat45;
  u_xlat45 = (x_1120 + 1.0f);
  let x_1122 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1122, 0.0f, 1.0f);
  let x_1124 : f32 = u_xlat32;
  let x_1126 : vec3<f32> = u_xlat6;
  let x_1127 : vec3<f32> = (vec3<f32>(x_1124, x_1124, x_1124) * x_1126);
  let x_1128 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1127.x, x_1128.y, x_1127.y, x_1127.z);
  let x_1130 : vec4<f32> = u_xlat7;
  let x_1132 : vec3<f32> = u_xlat19;
  let x_1135 : vec4<f32> = u_xlat3;
  let x_1137 : vec3<f32> = ((vec3<f32>(x_1130.x, x_1130.y, x_1130.z) * vec3<f32>(x_1132.x, x_1132.x, x_1132.x)) + vec3<f32>(x_1135.x, x_1135.z, x_1135.w));
  let x_1138 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1137.x, x_1138.y, x_1137.y, x_1137.z);
  let x_1140 : vec3<f32> = u_xlat6;
  let x_1141 : f32 = u_xlat46;
  let x_1143 : vec3<f32> = (x_1140 * vec3<f32>(x_1141, x_1141, x_1141));
  let x_1144 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1143.x, x_1143.y, x_1143.z, x_1144.w);
  let x_1147 : f32 = u_xlat17.x;
  u_xlat46 = (-(x_1147) + 1.0f);
  let x_1150 : f32 = u_xlat46;
  let x_1151 : f32 = u_xlat46;
  u_xlat17.x = (x_1150 * x_1151);
  let x_1155 : f32 = u_xlat17.x;
  let x_1157 : f32 = u_xlat17.x;
  u_xlat17.x = (x_1155 * x_1157);
  let x_1160 : f32 = u_xlat46;
  let x_1162 : f32 = u_xlat17.x;
  u_xlat46 = (x_1160 * x_1162);
  let x_1164 : vec3<f32> = u_xlat0;
  u_xlat17 = (-(x_1164) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1168 : vec3<f32> = u_xlat17;
  let x_1169 : f32 = u_xlat46;
  let x_1172 : vec3<f32> = u_xlat0;
  u_xlat17 = ((x_1168 * vec3<f32>(x_1169, x_1169, x_1169)) + x_1172);
  let x_1174 : vec3<f32> = u_xlat17;
  let x_1175 : vec4<f32> = u_xlat4;
  u_xlat17 = (x_1174 * vec3<f32>(x_1175.x, x_1175.y, x_1175.z));
  let x_1178 : vec3<f32> = u_xlat1;
  let x_1179 : vec4<f32> = u_xlat3;
  let x_1182 : vec3<f32> = u_xlat17;
  u_xlat1 = ((x_1178 * vec3<f32>(x_1179.x, x_1179.z, x_1179.w)) + x_1182);
  let x_1184 : vec4<f32> = u_xlat5;
  let x_1186 : vec4<f32> = u_xlat2;
  let x_1188 : vec3<f32> = (vec3<f32>(x_1184.x, x_1184.y, x_1184.z) * vec3<f32>(x_1186.x, x_1186.x, x_1186.x));
  let x_1189 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1188.x, x_1188.y, x_1188.z, x_1189.w);
  let x_1191 : vec3<f32> = u_xlat0;
  let x_1193 : f32 = u_xlat45;
  let x_1195 : vec3<f32> = (-(x_1191) + vec3<f32>(x_1193, x_1193, x_1193));
  let x_1196 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1195.x, x_1196.y, x_1195.y, x_1195.z);
  let x_1198 : f32 = u_xlat18;
  let x_1200 : vec4<f32> = u_xlat3;
  let x_1203 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1198, x_1198, x_1198) * vec3<f32>(x_1200.x, x_1200.z, x_1200.w)) + x_1203);
  let x_1207 : vec4<f32> = u_xlat2;
  let x_1209 : vec3<f32> = u_xlat0;
  let x_1211 : vec3<f32> = u_xlat1;
  let x_1212 : vec3<f32> = ((vec3<f32>(x_1207.x, x_1207.y, x_1207.z) * x_1209) + x_1211);
  let x_1213 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1212.x, x_1212.y, x_1212.z, x_1213.w);
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

