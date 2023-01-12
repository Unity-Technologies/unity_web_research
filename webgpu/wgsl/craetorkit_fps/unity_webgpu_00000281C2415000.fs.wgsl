struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
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

var<private> vs_TEXCOORD4 : vec3<f32>;

@group(0) @binding(1) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(4) var samplerunity_SpecCube0 : sampler;

@group(0) @binding(2) var unity_SpecCube1 : texture_cube<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat33 : f32;
  var u_xlat1 : vec4<f32>;
  var u_xlat34 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlatb34 : bool;
  var u_xlatb2 : bool;
  var u_xlat13 : vec3<f32>;
  var x_162 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat24 : f32;
  var u_xlat4 : vec4<f32>;
  var x_315 : vec3<f32>;
  var u_xlat36 : f32;
  var u_xlat15 : f32;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlatb8 : vec3<bool>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_506 : f32;
  var x_518 : f32;
  var x_530 : f32;
  var u_xlatb37 : bool;
  var u_xlat37 : f32;
  var u_xlat8 : vec3<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlatb10 : vec3<bool>;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_686 : f32;
  var x_698 : f32;
  var x_710 : f32;
  var u_xlat12 : f32;
  var u_xlat11 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlat23 : f32;
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
  u_xlat33 = dot(vec3<f32>(x_29.x, x_29.y, x_29.z), vec3<f32>(x_31.x, x_31.y, x_31.z));
  let x_34 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_34);
  let x_37 : f32 = u_xlat33;
  let x_39 : vec4<f32> = u_xlat0;
  let x_41 : vec3<f32> = (vec3<f32>(x_37, x_37, x_37) * vec3<f32>(x_39.x, x_39.y, x_39.z));
  let x_42 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_41.x, x_41.y, x_41.z, x_42.w);
  let x_47 : f32 = vs_TEXCOORD3;
  u_xlat34 = (x_47 + -1.0f);
  let x_50 : f32 = u_xlat34;
  u_xlat34 = (x_50 * -9.999998093f);
  let x_53 : f32 = u_xlat34;
  u_xlat34 = clamp(x_53, 0.0f, 1.0f);
  let x_58 : f32 = u_xlat34;
  let x_64 : vec2<f32> = vs_TEXCOORD0;
  let x_65 : vec2<f32> = (-(vec2<f32>(x_58, x_58)) + x_64);
  let x_66 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_65.x, x_65.y, x_66.z, x_66.w);
  let x_78 : vec4<f32> = u_xlat2;
  let x_80 : vec4<f32> = textureSample(x_Gradient, sampler_Gradient, vec2<f32>(x_78.x, x_78.y));
  u_xlat34 = x_80.x;
  let x_87 : vec2<f32> = vs_TEXCOORD0;
  let x_88 : vec4<f32> = textureSample(x_Gradient, sampler_Gradient, x_87);
  u_xlat2.x = x_88.z;
  let x_92 : f32 = u_xlat34;
  u_xlat34 = ((x_92 * -2.0f) + 1.0f);
  let x_97 : f32 = u_xlat2.x;
  let x_99 : f32 = u_xlat34;
  u_xlat34 = (-(x_97) + x_99);
  let x_104 : f32 = u_xlat34;
  u_xlatb34 = (x_104 < 0.0f);
  let x_106 : bool = u_xlatb34;
  if (((select(0i, 1i, x_106) * -1i) != 0i)) {
    discard;
  }
  let x_118 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb34 = (x_118 == 1.0f);
  let x_120 : bool = u_xlatb34;
  if (x_120) {
    let x_126 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb2 = (x_126 == 1.0f);
    let x_130 : vec3<f32> = vs_TEXCOORD2;
    let x_135 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    u_xlat13 = (vec3<f32>(x_130.y, x_130.y, x_130.y) * vec3<f32>(x_135.x, x_135.y, x_135.z));
    let x_139 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_141 : vec3<f32> = vs_TEXCOORD2;
    let x_144 : vec3<f32> = u_xlat13;
    u_xlat13 = ((vec3<f32>(x_139.x, x_139.y, x_139.z) * vec3<f32>(x_141.x, x_141.x, x_141.x)) + x_144);
    let x_148 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_150 : vec3<f32> = vs_TEXCOORD2;
    let x_153 : vec3<f32> = u_xlat13;
    u_xlat13 = ((vec3<f32>(x_148.x, x_148.y, x_148.z) * vec3<f32>(x_150.z, x_150.z, x_150.z)) + x_153);
    let x_155 : vec3<f32> = u_xlat13;
    let x_158 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    u_xlat13 = (x_155 + vec3<f32>(x_158.x, x_158.y, x_158.z));
    let x_161 : bool = u_xlatb2;
    if (x_161) {
      let x_165 : vec3<f32> = u_xlat13;
      x_162 = x_165;
    } else {
      let x_167 : vec3<f32> = vs_TEXCOORD2;
      x_162 = x_167;
    }
    let x_168 : vec3<f32> = x_162;
    let x_169 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_168.x, x_168.y, x_168.z, x_169.w);
    let x_171 : vec4<f32> = u_xlat2;
    let x_175 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_177 : vec3<f32> = (vec3<f32>(x_171.x, x_171.y, x_171.z) + -(x_175));
    let x_178 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_177.x, x_177.y, x_177.z, x_178.w);
    let x_180 : vec4<f32> = u_xlat2;
    let x_184 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_185 : vec3<f32> = (vec3<f32>(x_180.x, x_180.y, x_180.z) * x_184);
    let x_186 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_186.x, x_185.x, x_185.y, x_185.z);
    let x_189 : f32 = u_xlat2.y;
    u_xlat13.x = ((x_189 * 0.25f) + 0.75f);
    let x_197 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat3.x = ((x_197 * 0.5f) + 0.75f);
    let x_203 : f32 = u_xlat13.x;
    let x_205 : f32 = u_xlat3.x;
    u_xlat2.x = max(x_203, x_205);
    let x_216 : vec4<f32> = u_xlat2;
    let x_218 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_216.x, x_216.z, x_216.w));
    u_xlat2 = x_218;
  } else {
    u_xlat2.x = 1.0f;
    u_xlat2.y = 1.0f;
    u_xlat2.z = 1.0f;
    u_xlat2.w = 1.0f;
  }
  let x_225 : vec4<f32> = u_xlat2;
  let x_228 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat2.x = dot(x_225, x_228);
  let x_232 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_232, 0.0f, 1.0f);
  let x_237 : f32 = x_18.x_Glossiness;
  u_xlat13.x = (-(x_237) + 1.0f);
  let x_242 : vec4<f32> = u_xlat1;
  let x_246 : vec3<f32> = vs_TEXCOORD1;
  u_xlat24 = dot(-(vec3<f32>(x_242.x, x_242.y, x_242.z)), x_246);
  let x_248 : f32 = u_xlat24;
  let x_249 : f32 = u_xlat24;
  u_xlat24 = (x_248 + x_249);
  let x_251 : vec3<f32> = vs_TEXCOORD1;
  let x_252 : f32 = u_xlat24;
  let x_256 : vec4<f32> = u_xlat1;
  u_xlat3 = ((x_251 * -(vec3<f32>(x_252, x_252, x_252))) + -(vec3<f32>(x_256.x, x_256.y, x_256.z)));
  let x_260 : vec4<f32> = u_xlat2;
  let x_264 : vec4<f32> = x_18.x_LightColor0;
  let x_266 : vec3<f32> = (vec3<f32>(x_260.x, x_260.x, x_260.x) * vec3<f32>(x_264.x, x_264.y, x_264.z));
  let x_267 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_266.x, x_267.y, x_266.y, x_266.z);
  let x_269 : bool = u_xlatb34;
  if (x_269) {
    let x_273 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb34 = (x_273 == 1.0f);
    let x_276 : vec3<f32> = vs_TEXCOORD2;
    let x_279 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_281 : vec3<f32> = (vec3<f32>(x_276.y, x_276.y, x_276.y) * vec3<f32>(x_279.x, x_279.y, x_279.z));
    let x_282 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_281.x, x_281.y, x_281.z, x_282.w);
    let x_285 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_287 : vec3<f32> = vs_TEXCOORD2;
    let x_290 : vec4<f32> = u_xlat4;
    let x_292 : vec3<f32> = ((vec3<f32>(x_285.x, x_285.y, x_285.z) * vec3<f32>(x_287.x, x_287.x, x_287.x)) + vec3<f32>(x_290.x, x_290.y, x_290.z));
    let x_293 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_292.x, x_292.y, x_292.z, x_293.w);
    let x_296 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_298 : vec3<f32> = vs_TEXCOORD2;
    let x_301 : vec4<f32> = u_xlat4;
    let x_303 : vec3<f32> = ((vec3<f32>(x_296.x, x_296.y, x_296.z) * vec3<f32>(x_298.z, x_298.z, x_298.z)) + vec3<f32>(x_301.x, x_301.y, x_301.z));
    let x_304 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_303.x, x_303.y, x_303.z, x_304.w);
    let x_306 : vec4<f32> = u_xlat4;
    let x_309 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_311 : vec3<f32> = (vec3<f32>(x_306.x, x_306.y, x_306.z) + vec3<f32>(x_309.x, x_309.y, x_309.z));
    let x_312 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_311.x, x_311.y, x_311.z, x_312.w);
    let x_314 : bool = u_xlatb34;
    if (x_314) {
      let x_318 : vec4<f32> = u_xlat4;
      x_315 = vec3<f32>(x_318.x, x_318.y, x_318.z);
    } else {
      let x_321 : vec3<f32> = vs_TEXCOORD2;
      x_315 = x_321;
    }
    let x_322 : vec3<f32> = x_315;
    let x_323 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_322.x, x_322.y, x_322.z, x_323.w);
    let x_325 : vec4<f32> = u_xlat4;
    let x_328 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_330 : vec3<f32> = (vec3<f32>(x_325.x, x_325.y, x_325.z) + -(x_328));
    let x_331 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_330.x, x_330.y, x_330.z, x_331.w);
    let x_333 : vec4<f32> = u_xlat4;
    let x_336 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_337 : vec3<f32> = (vec3<f32>(x_333.x, x_333.y, x_333.z) * x_336);
    let x_338 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_338.x, x_337.x, x_337.y, x_337.z);
    let x_341 : f32 = u_xlat4.y;
    u_xlat34 = (x_341 * 0.25f);
    let x_345 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat36 = (x_345 * 0.5f);
    let x_349 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat15 = ((-(x_349) * 0.5f) + 0.25f);
    let x_353 : f32 = u_xlat34;
    let x_354 : f32 = u_xlat36;
    u_xlat34 = max(x_353, x_354);
    let x_356 : f32 = u_xlat15;
    let x_357 : f32 = u_xlat34;
    u_xlat4.x = min(x_356, x_357);
    let x_364 : vec4<f32> = u_xlat4;
    let x_366 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_364.x, x_364.z, x_364.w));
    u_xlat5 = x_366;
    let x_368 : vec4<f32> = u_xlat4;
    let x_371 : vec3<f32> = (vec3<f32>(x_368.x, x_368.z, x_368.w) + vec3<f32>(0.25f, 0.0f, 0.0f));
    let x_372 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_371.x, x_371.y, x_371.z, x_372.w);
    let x_377 : vec4<f32> = u_xlat6;
    let x_379 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_377.x, x_377.y, x_377.z));
    u_xlat6 = x_379;
    let x_380 : vec4<f32> = u_xlat4;
    let x_383 : vec3<f32> = (vec3<f32>(x_380.x, x_380.z, x_380.w) + vec3<f32>(0.5f, 0.0f, 0.0f));
    let x_384 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_383.x, x_383.y, x_383.z, x_384.w);
    let x_389 : vec4<f32> = u_xlat4;
    let x_391 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_389.x, x_389.y, x_389.z));
    u_xlat4 = x_391;
    let x_393 : vec3<f32> = vs_TEXCOORD1;
    let x_394 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_393.x, x_393.y, x_393.z, x_394.w);
    u_xlat7.w = 1.0f;
    let x_397 : vec4<f32> = u_xlat5;
    let x_398 : vec4<f32> = u_xlat7;
    u_xlat5.x = dot(x_397, x_398);
    let x_401 : vec4<f32> = u_xlat6;
    let x_402 : vec4<f32> = u_xlat7;
    u_xlat5.y = dot(x_401, x_402);
    let x_405 : vec4<f32> = u_xlat4;
    let x_406 : vec4<f32> = u_xlat7;
    u_xlat5.z = dot(x_405, x_406);
  } else {
    let x_410 : vec3<f32> = vs_TEXCOORD1;
    let x_411 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_410.x, x_410.y, x_410.z, x_411.w);
    u_xlat4.w = 1.0f;
    let x_415 : vec4<f32> = x_18.unity_SHAr;
    let x_416 : vec4<f32> = u_xlat4;
    u_xlat5.x = dot(x_415, x_416);
    let x_420 : vec4<f32> = x_18.unity_SHAg;
    let x_421 : vec4<f32> = u_xlat4;
    u_xlat5.y = dot(x_420, x_421);
    let x_426 : vec4<f32> = x_18.unity_SHAb;
    let x_427 : vec4<f32> = u_xlat4;
    u_xlat5.z = dot(x_426, x_427);
  }
  let x_430 : vec4<f32> = u_xlat5;
  let x_433 : vec3<f32> = vs_TEXCOORD4;
  let x_434 : vec3<f32> = (vec3<f32>(x_430.x, x_430.y, x_430.z) + x_433);
  let x_435 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_434.x, x_434.y, x_434.z, x_435.w);
  let x_437 : vec4<f32> = u_xlat4;
  let x_440 : vec3<f32> = max(vec3<f32>(x_437.x, x_437.y, x_437.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_441 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_440.x, x_440.y, x_440.z, x_441.w);
  let x_445 : f32 = x_18.unity_SpecCube0_ProbePosition.w;
  u_xlatb34 = (0.0f < x_445);
  let x_447 : bool = u_xlatb34;
  if (x_447) {
    let x_450 : vec3<f32> = u_xlat3;
    let x_451 : vec3<f32> = u_xlat3;
    u_xlat34 = dot(x_450, x_451);
    let x_453 : f32 = u_xlat34;
    u_xlat34 = inverseSqrt(x_453);
    let x_455 : f32 = u_xlat34;
    let x_457 : vec3<f32> = u_xlat3;
    let x_458 : vec3<f32> = (vec3<f32>(x_455, x_455, x_455) * x_457);
    let x_459 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_458.x, x_458.y, x_458.z, x_459.w);
    let x_461 : vec3<f32> = vs_TEXCOORD2;
    let x_465 : vec4<f32> = x_18.unity_SpecCube0_BoxMax;
    let x_467 : vec3<f32> = (-(x_461) + vec3<f32>(x_465.x, x_465.y, x_465.z));
    let x_468 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_467.x, x_467.y, x_467.z, x_468.w);
    let x_470 : vec4<f32> = u_xlat6;
    let x_472 : vec4<f32> = u_xlat5;
    let x_474 : vec3<f32> = (vec3<f32>(x_470.x, x_470.y, x_470.z) / vec3<f32>(x_472.x, x_472.y, x_472.z));
    let x_475 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_474.x, x_474.y, x_474.z, x_475.w);
    let x_477 : vec3<f32> = vs_TEXCOORD2;
    let x_481 : vec4<f32> = x_18.unity_SpecCube0_BoxMin;
    let x_483 : vec3<f32> = (-(x_477) + vec3<f32>(x_481.x, x_481.y, x_481.z));
    let x_484 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_483.x, x_483.y, x_483.z, x_484.w);
    let x_486 : vec4<f32> = u_xlat7;
    let x_488 : vec4<f32> = u_xlat5;
    let x_490 : vec3<f32> = (vec3<f32>(x_486.x, x_486.y, x_486.z) / vec3<f32>(x_488.x, x_488.y, x_488.z));
    let x_491 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_490.x, x_490.y, x_490.z, x_491.w);
    let x_497 : vec4<f32> = u_xlat5;
    let x_500 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_497.x, x_497.y, x_497.z, x_497.x));
    u_xlatb8 = vec3<bool>(x_500.x, x_500.y, x_500.z);
    let x_503 : vec4<f32> = u_xlat6;
    hlslcc_movcTemp = x_503;
    let x_505 : bool = u_xlatb8.x;
    if (x_505) {
      let x_510 : f32 = u_xlat6.x;
      x_506 = x_510;
    } else {
      let x_513 : f32 = u_xlat7.x;
      x_506 = x_513;
    }
    let x_514 : f32 = x_506;
    hlslcc_movcTemp.x = x_514;
    let x_517 : bool = u_xlatb8.y;
    if (x_517) {
      let x_522 : f32 = u_xlat6.y;
      x_518 = x_522;
    } else {
      let x_525 : f32 = u_xlat7.y;
      x_518 = x_525;
    }
    let x_526 : f32 = x_518;
    hlslcc_movcTemp.y = x_526;
    let x_529 : bool = u_xlatb8.z;
    if (x_529) {
      let x_534 : f32 = u_xlat6.z;
      x_530 = x_534;
    } else {
      let x_537 : f32 = u_xlat7.z;
      x_530 = x_537;
    }
    let x_538 : f32 = x_530;
    hlslcc_movcTemp.z = x_538;
    let x_540 : vec4<f32> = hlslcc_movcTemp;
    u_xlat6 = x_540;
    let x_542 : f32 = u_xlat6.y;
    let x_544 : f32 = u_xlat6.x;
    u_xlat34 = min(x_542, x_544);
    let x_547 : f32 = u_xlat6.z;
    let x_548 : f32 = u_xlat34;
    u_xlat34 = min(x_547, x_548);
    let x_550 : vec3<f32> = vs_TEXCOORD2;
    let x_552 : vec4<f32> = x_18.unity_SpecCube0_ProbePosition;
    let x_555 : vec3<f32> = (x_550 + -(vec3<f32>(x_552.x, x_552.y, x_552.z)));
    let x_556 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_555.x, x_555.y, x_555.z, x_556.w);
    let x_558 : vec4<f32> = u_xlat5;
    let x_560 : f32 = u_xlat34;
    let x_563 : vec4<f32> = u_xlat6;
    let x_565 : vec3<f32> = ((vec3<f32>(x_558.x, x_558.y, x_558.z) * vec3<f32>(x_560, x_560, x_560)) + vec3<f32>(x_563.x, x_563.y, x_563.z));
    let x_566 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_565.x, x_565.y, x_565.z, x_566.w);
  } else {
    let x_569 : vec3<f32> = u_xlat3;
    let x_570 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_569.x, x_569.y, x_569.z, x_570.w);
  }
  let x_573 : f32 = u_xlat13.x;
  u_xlat34 = ((-(x_573) * 0.699999988f) + 1.700000048f);
  let x_579 : f32 = u_xlat34;
  let x_581 : f32 = u_xlat13.x;
  u_xlat34 = (x_579 * x_581);
  let x_583 : f32 = u_xlat34;
  u_xlat34 = (x_583 * 6.0f);
  let x_594 : vec4<f32> = u_xlat5;
  let x_596 : f32 = u_xlat34;
  let x_597 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_594.x, x_594.y, x_594.z), x_596);
  u_xlat5 = x_597;
  let x_599 : f32 = u_xlat5.w;
  u_xlat36 = (x_599 + -1.0f);
  let x_603 : f32 = x_18.unity_SpecCube0_HDR.w;
  let x_604 : f32 = u_xlat36;
  u_xlat36 = ((x_603 * x_604) + 1.0f);
  let x_607 : f32 = u_xlat36;
  u_xlat36 = log2(x_607);
  let x_609 : f32 = u_xlat36;
  let x_611 : f32 = x_18.unity_SpecCube0_HDR.y;
  u_xlat36 = (x_609 * x_611);
  let x_613 : f32 = u_xlat36;
  u_xlat36 = exp2(x_613);
  let x_615 : f32 = u_xlat36;
  let x_617 : f32 = x_18.unity_SpecCube0_HDR.x;
  u_xlat36 = (x_615 * x_617);
  let x_619 : vec4<f32> = u_xlat5;
  let x_621 : f32 = u_xlat36;
  let x_623 : vec3<f32> = (vec3<f32>(x_619.x, x_619.y, x_619.z) * vec3<f32>(x_621, x_621, x_621));
  let x_624 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_623.x, x_623.y, x_623.z, x_624.w);
  let x_628 : f32 = x_18.unity_SpecCube0_BoxMin.w;
  u_xlatb37 = (x_628 < 0.999989986f);
  let x_631 : bool = u_xlatb37;
  if (x_631) {
    let x_636 : f32 = x_18.unity_SpecCube1_ProbePosition.w;
    u_xlatb37 = (0.0f < x_636);
    let x_638 : bool = u_xlatb37;
    if (x_638) {
      let x_642 : vec3<f32> = u_xlat3;
      let x_643 : vec3<f32> = u_xlat3;
      u_xlat37 = dot(x_642, x_643);
      let x_645 : f32 = u_xlat37;
      u_xlat37 = inverseSqrt(x_645);
      let x_647 : vec3<f32> = u_xlat3;
      let x_648 : f32 = u_xlat37;
      let x_650 : vec3<f32> = (x_647 * vec3<f32>(x_648, x_648, x_648));
      let x_651 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_650.x, x_650.y, x_650.z, x_651.w);
      let x_654 : vec3<f32> = vs_TEXCOORD2;
      let x_658 : vec4<f32> = x_18.unity_SpecCube1_BoxMax;
      u_xlat8 = (-(x_654) + vec3<f32>(x_658.x, x_658.y, x_658.z));
      let x_661 : vec3<f32> = u_xlat8;
      let x_662 : vec4<f32> = u_xlat7;
      u_xlat8 = (x_661 / vec3<f32>(x_662.x, x_662.y, x_662.z));
      let x_666 : vec3<f32> = vs_TEXCOORD2;
      let x_670 : vec4<f32> = x_18.unity_SpecCube1_BoxMin;
      u_xlat9 = (-(x_666) + vec3<f32>(x_670.x, x_670.y, x_670.z));
      let x_673 : vec3<f32> = u_xlat9;
      let x_674 : vec4<f32> = u_xlat7;
      u_xlat9 = (x_673 / vec3<f32>(x_674.x, x_674.y, x_674.z));
      let x_678 : vec4<f32> = u_xlat7;
      let x_680 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_678.x, x_678.y, x_678.z, x_678.x));
      u_xlatb10 = vec3<bool>(x_680.x, x_680.y, x_680.z);
      let x_683 : vec3<f32> = u_xlat8;
      hlslcc_movcTemp_1 = x_683;
      let x_685 : bool = u_xlatb10.x;
      if (x_685) {
        let x_690 : f32 = u_xlat8.x;
        x_686 = x_690;
      } else {
        let x_693 : f32 = u_xlat9.x;
        x_686 = x_693;
      }
      let x_694 : f32 = x_686;
      hlslcc_movcTemp_1.x = x_694;
      let x_697 : bool = u_xlatb10.y;
      if (x_697) {
        let x_702 : f32 = u_xlat8.y;
        x_698 = x_702;
      } else {
        let x_705 : f32 = u_xlat9.y;
        x_698 = x_705;
      }
      let x_706 : f32 = x_698;
      hlslcc_movcTemp_1.y = x_706;
      let x_709 : bool = u_xlatb10.z;
      if (x_709) {
        let x_714 : f32 = u_xlat8.z;
        x_710 = x_714;
      } else {
        let x_717 : f32 = u_xlat9.z;
        x_710 = x_717;
      }
      let x_718 : f32 = x_710;
      hlslcc_movcTemp_1.z = x_718;
      let x_720 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat8 = x_720;
      let x_722 : f32 = u_xlat8.y;
      let x_724 : f32 = u_xlat8.x;
      u_xlat37 = min(x_722, x_724);
      let x_727 : f32 = u_xlat8.z;
      let x_728 : f32 = u_xlat37;
      u_xlat37 = min(x_727, x_728);
      let x_730 : vec3<f32> = vs_TEXCOORD2;
      let x_732 : vec4<f32> = x_18.unity_SpecCube1_ProbePosition;
      u_xlat8 = (x_730 + -(vec3<f32>(x_732.x, x_732.y, x_732.z)));
      let x_736 : vec4<f32> = u_xlat7;
      let x_738 : f32 = u_xlat37;
      let x_741 : vec3<f32> = u_xlat8;
      u_xlat3 = ((vec3<f32>(x_736.x, x_736.y, x_736.z) * vec3<f32>(x_738, x_738, x_738)) + x_741);
    }
    let x_747 : vec3<f32> = u_xlat3;
    let x_748 : f32 = u_xlat34;
    let x_749 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, x_747, x_748);
    u_xlat7 = x_749;
    let x_751 : f32 = u_xlat7.w;
    u_xlat34 = (x_751 + -1.0f);
    let x_755 : f32 = x_18.unity_SpecCube1_HDR.w;
    let x_756 : f32 = u_xlat34;
    u_xlat34 = ((x_755 * x_756) + 1.0f);
    let x_759 : f32 = u_xlat34;
    u_xlat34 = log2(x_759);
    let x_761 : f32 = u_xlat34;
    let x_763 : f32 = x_18.unity_SpecCube1_HDR.y;
    u_xlat34 = (x_761 * x_763);
    let x_765 : f32 = u_xlat34;
    u_xlat34 = exp2(x_765);
    let x_767 : f32 = u_xlat34;
    let x_769 : f32 = x_18.unity_SpecCube1_HDR.x;
    u_xlat34 = (x_767 * x_769);
    let x_771 : vec4<f32> = u_xlat7;
    let x_773 : f32 = u_xlat34;
    u_xlat3 = (vec3<f32>(x_771.x, x_771.y, x_771.z) * vec3<f32>(x_773, x_773, x_773));
    let x_776 : f32 = u_xlat36;
    let x_778 : vec4<f32> = u_xlat5;
    let x_781 : vec3<f32> = u_xlat3;
    let x_783 : vec3<f32> = ((vec3<f32>(x_776, x_776, x_776) * vec3<f32>(x_778.x, x_778.y, x_778.z)) + -(x_781));
    let x_784 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_783.x, x_783.y, x_783.z, x_784.w);
    let x_787 : vec4<f32> = x_18.unity_SpecCube0_BoxMin;
    let x_789 : vec4<f32> = u_xlat5;
    let x_792 : vec3<f32> = u_xlat3;
    let x_793 : vec3<f32> = ((vec3<f32>(x_787.w, x_787.w, x_787.w) * vec3<f32>(x_789.x, x_789.y, x_789.z)) + x_792);
    let x_794 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_793.x, x_793.y, x_793.z, x_794.w);
  }
  let x_796 : vec3<f32> = vs_TEXCOORD1;
  let x_797 : vec3<f32> = vs_TEXCOORD1;
  u_xlat34 = dot(x_796, x_797);
  let x_799 : f32 = u_xlat34;
  u_xlat34 = inverseSqrt(x_799);
  let x_801 : f32 = u_xlat34;
  let x_803 : vec3<f32> = vs_TEXCOORD1;
  u_xlat3 = (vec3<f32>(x_801, x_801, x_801) * x_803);
  let x_807 : vec4<f32> = x_18.x_Color;
  let x_811 : vec3<f32> = (vec3<f32>(x_807.x, x_807.y, x_807.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_812 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_811.x, x_811.y, x_811.z, x_812.w);
  let x_816 : f32 = x_18.x_Metallic;
  let x_818 : f32 = x_18.x_Metallic;
  let x_820 : f32 = x_18.x_Metallic;
  let x_821 : vec3<f32> = vec3<f32>(x_816, x_818, x_820);
  let x_826 : vec4<f32> = u_xlat5;
  let x_831 : vec3<f32> = ((vec3<f32>(x_821.x, x_821.y, x_821.z) * vec3<f32>(x_826.x, x_826.y, x_826.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_832 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_831.x, x_831.y, x_831.z, x_832.w);
  let x_835 : f32 = x_18.x_Metallic;
  u_xlat34 = ((-(x_835) * 0.959999979f) + 0.959999979f);
  let x_840 : f32 = u_xlat34;
  let x_843 : vec4<f32> = x_18.x_Color;
  let x_845 : vec3<f32> = (vec3<f32>(x_840, x_840, x_840) * vec3<f32>(x_843.x, x_843.y, x_843.z));
  let x_846 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_845.x, x_845.y, x_845.z, x_846.w);
  let x_848 : vec4<f32> = u_xlat0;
  let x_850 : f32 = u_xlat33;
  let x_854 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_856 : vec3<f32> = ((vec3<f32>(x_848.x, x_848.y, x_848.z) * vec3<f32>(x_850, x_850, x_850)) + vec3<f32>(x_854.x, x_854.y, x_854.z));
  let x_857 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_856.x, x_856.y, x_856.z, x_857.w);
  let x_859 : vec4<f32> = u_xlat0;
  let x_861 : vec4<f32> = u_xlat0;
  u_xlat33 = dot(vec3<f32>(x_859.x, x_859.y, x_859.z), vec3<f32>(x_861.x, x_861.y, x_861.z));
  let x_864 : f32 = u_xlat33;
  u_xlat33 = max(x_864, 0.001f);
  let x_867 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_867);
  let x_869 : f32 = u_xlat33;
  let x_871 : vec4<f32> = u_xlat0;
  let x_873 : vec3<f32> = (vec3<f32>(x_869, x_869, x_869) * vec3<f32>(x_871.x, x_871.y, x_871.z));
  let x_874 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_873.x, x_873.y, x_873.z, x_874.w);
  let x_876 : vec3<f32> = u_xlat3;
  let x_877 : vec4<f32> = u_xlat1;
  u_xlat33 = dot(x_876, vec3<f32>(x_877.x, x_877.y, x_877.z));
  let x_880 : vec3<f32> = u_xlat3;
  let x_882 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat1.x = dot(x_880, vec3<f32>(x_882.x, x_882.y, x_882.z));
  let x_887 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_887, 0.0f, 1.0f);
  let x_891 : vec3<f32> = u_xlat3;
  let x_892 : vec4<f32> = u_xlat0;
  u_xlat12 = dot(x_891, vec3<f32>(x_892.x, x_892.y, x_892.z));
  let x_895 : f32 = u_xlat12;
  u_xlat12 = clamp(x_895, 0.0f, 1.0f);
  let x_898 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_900 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_898.x, x_898.y, x_898.z), vec3<f32>(x_900.x, x_900.y, x_900.z));
  let x_905 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_905, 0.0f, 1.0f);
  let x_910 : f32 = u_xlat0.x;
  let x_912 : f32 = u_xlat0.x;
  u_xlat11.x = (x_910 * x_912);
  let x_915 : vec3<f32> = u_xlat11;
  let x_917 : vec3<f32> = u_xlat13;
  u_xlat11.x = dot(vec2<f32>(x_915.x, x_915.x), vec2<f32>(x_917.x, x_917.x));
  let x_922 : f32 = u_xlat11.x;
  u_xlat11.x = (x_922 + -0.5f);
  let x_928 : f32 = u_xlat1.x;
  u_xlat22 = (-(x_928) + 1.0f);
  let x_932 : f32 = u_xlat22;
  let x_933 : f32 = u_xlat22;
  u_xlat23 = (x_932 * x_933);
  let x_935 : f32 = u_xlat23;
  let x_936 : f32 = u_xlat23;
  u_xlat23 = (x_935 * x_936);
  let x_938 : f32 = u_xlat22;
  let x_939 : f32 = u_xlat23;
  u_xlat22 = (x_938 * x_939);
  let x_942 : f32 = u_xlat11.x;
  let x_943 : f32 = u_xlat22;
  u_xlat22 = ((x_942 * x_943) + 1.0f);
  let x_946 : f32 = u_xlat33;
  u_xlat23 = (-(abs(x_946)) + 1.0f);
  let x_950 : f32 = u_xlat23;
  let x_951 : f32 = u_xlat23;
  u_xlat3.x = (x_950 * x_951);
  let x_955 : f32 = u_xlat3.x;
  let x_957 : f32 = u_xlat3.x;
  u_xlat3.x = (x_955 * x_957);
  let x_960 : f32 = u_xlat23;
  let x_962 : f32 = u_xlat3.x;
  u_xlat23 = (x_960 * x_962);
  let x_965 : f32 = u_xlat11.x;
  let x_966 : f32 = u_xlat23;
  u_xlat11.x = ((x_965 * x_966) + 1.0f);
  let x_971 : f32 = u_xlat11.x;
  let x_972 : f32 = u_xlat22;
  u_xlat11.x = (x_971 * x_972);
  let x_976 : f32 = u_xlat13.x;
  let x_978 : f32 = u_xlat13.x;
  u_xlat22 = (x_976 * x_978);
  let x_980 : f32 = u_xlat22;
  u_xlat22 = max(x_980, 0.002f);
  let x_983 : f32 = u_xlat22;
  u_xlat13.x = (-(x_983) + 1.0f);
  let x_987 : f32 = u_xlat33;
  let x_990 : f32 = u_xlat13.x;
  let x_992 : f32 = u_xlat22;
  u_xlat3.x = ((abs(x_987) * x_990) + x_992);
  let x_996 : f32 = u_xlat1.x;
  let x_998 : f32 = u_xlat13.x;
  let x_1000 : f32 = u_xlat22;
  u_xlat13.x = ((x_996 * x_998) + x_1000);
  let x_1003 : f32 = u_xlat33;
  let x_1006 : f32 = u_xlat13.x;
  u_xlat33 = (abs(x_1003) * x_1006);
  let x_1009 : f32 = u_xlat1.x;
  let x_1011 : f32 = u_xlat3.x;
  let x_1013 : f32 = u_xlat33;
  u_xlat33 = ((x_1009 * x_1011) + x_1013);
  let x_1015 : f32 = u_xlat33;
  u_xlat33 = (x_1015 + 0.00001f);
  let x_1018 : f32 = u_xlat33;
  u_xlat33 = (0.5f / x_1018);
  let x_1020 : f32 = u_xlat22;
  let x_1021 : f32 = u_xlat22;
  u_xlat13.x = (x_1020 * x_1021);
  let x_1024 : f32 = u_xlat12;
  let x_1026 : f32 = u_xlat13.x;
  let x_1028 : f32 = u_xlat12;
  u_xlat3.x = ((x_1024 * x_1026) + -(x_1028));
  let x_1033 : f32 = u_xlat3.x;
  let x_1034 : f32 = u_xlat12;
  u_xlat12 = ((x_1033 * x_1034) + 1.0f);
  let x_1038 : f32 = u_xlat13.x;
  u_xlat13.x = (x_1038 * 0.318309873f);
  let x_1042 : f32 = u_xlat12;
  let x_1043 : f32 = u_xlat12;
  u_xlat12 = ((x_1042 * x_1043) + 0.0000001f);
  let x_1048 : f32 = u_xlat13.x;
  let x_1049 : f32 = u_xlat12;
  u_xlat12 = (x_1048 / x_1049);
  let x_1051 : f32 = u_xlat33;
  let x_1052 : f32 = u_xlat12;
  u_xlat11.z = (x_1051 * x_1052);
  let x_1055 : vec4<f32> = u_xlat1;
  let x_1057 : vec3<f32> = u_xlat11;
  let x_1059 : vec2<f32> = (vec2<f32>(x_1055.x, x_1055.x) * vec2<f32>(x_1057.x, x_1057.z));
  let x_1060 : vec3<f32> = u_xlat11;
  u_xlat11 = vec3<f32>(x_1059.x, x_1060.y, x_1059.y);
  let x_1063 : f32 = u_xlat11.z;
  u_xlat33 = (x_1063 * 3.141592741f);
  let x_1066 : f32 = u_xlat33;
  u_xlat33 = max(x_1066, 0.0f);
  let x_1068 : f32 = u_xlat22;
  let x_1069 : f32 = u_xlat22;
  u_xlat22 = ((x_1068 * x_1069) + 1.0f);
  let x_1072 : f32 = u_xlat22;
  u_xlat22 = (1.0f / x_1072);
  let x_1074 : vec4<f32> = u_xlat5;
  let x_1076 : vec4<f32> = u_xlat5;
  u_xlat1.x = dot(vec3<f32>(x_1074.x, x_1074.y, x_1074.z), vec3<f32>(x_1076.x, x_1076.y, x_1076.z));
  let x_1082 : f32 = u_xlat1.x;
  u_xlatb1 = !((x_1082 == 0.0f));
  let x_1084 : bool = u_xlatb1;
  u_xlat1.x = select(0.0f, 1.0f, x_1084);
  let x_1087 : f32 = u_xlat33;
  let x_1089 : f32 = u_xlat1.x;
  u_xlat33 = (x_1087 * x_1089);
  let x_1091 : f32 = u_xlat34;
  let x_1094 : f32 = x_18.x_Glossiness;
  u_xlat1.x = (-(x_1091) + x_1094);
  let x_1098 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1098 + 1.0f);
  let x_1102 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1102, 0.0f, 1.0f);
  let x_1105 : vec4<f32> = u_xlat2;
  let x_1107 : vec3<f32> = u_xlat11;
  let x_1110 : vec4<f32> = u_xlat4;
  u_xlat3 = ((vec3<f32>(x_1105.x, x_1105.z, x_1105.w) * vec3<f32>(x_1107.x, x_1107.x, x_1107.x)) + vec3<f32>(x_1110.x, x_1110.y, x_1110.z));
  let x_1113 : vec4<f32> = u_xlat2;
  let x_1115 : f32 = u_xlat33;
  let x_1117 : vec3<f32> = (vec3<f32>(x_1113.x, x_1113.z, x_1113.w) * vec3<f32>(x_1115, x_1115, x_1115));
  let x_1118 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1117.x, x_1117.y, x_1117.z, x_1118.w);
  let x_1121 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_1121) + 1.0f);
  let x_1126 : f32 = u_xlat0.x;
  let x_1128 : f32 = u_xlat0.x;
  u_xlat11.x = (x_1126 * x_1128);
  let x_1132 : f32 = u_xlat11.x;
  let x_1134 : f32 = u_xlat11.x;
  u_xlat11.x = (x_1132 * x_1134);
  let x_1138 : f32 = u_xlat0.x;
  let x_1140 : f32 = u_xlat11.x;
  u_xlat0.x = (x_1138 * x_1140);
  let x_1143 : vec4<f32> = u_xlat5;
  let x_1147 : vec3<f32> = (-(vec3<f32>(x_1143.x, x_1143.y, x_1143.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1148 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1147.x, x_1147.y, x_1147.z, x_1148.w);
  let x_1150 : vec4<f32> = u_xlat4;
  let x_1152 : vec4<f32> = u_xlat0;
  let x_1155 : vec4<f32> = u_xlat5;
  let x_1157 : vec3<f32> = ((vec3<f32>(x_1150.x, x_1150.y, x_1150.z) * vec3<f32>(x_1152.x, x_1152.x, x_1152.x)) + vec3<f32>(x_1155.x, x_1155.y, x_1155.z));
  let x_1158 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1157.x, x_1157.y, x_1158.z, x_1157.z);
  let x_1160 : vec4<f32> = u_xlat0;
  let x_1162 : vec4<f32> = u_xlat2;
  let x_1164 : vec3<f32> = (vec3<f32>(x_1160.x, x_1160.y, x_1160.w) * vec3<f32>(x_1162.x, x_1162.y, x_1162.z));
  let x_1165 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1164.x, x_1164.y, x_1165.z, x_1164.z);
  let x_1167 : vec4<f32> = u_xlat7;
  let x_1169 : vec3<f32> = u_xlat3;
  let x_1171 : vec4<f32> = u_xlat0;
  let x_1173 : vec3<f32> = ((vec3<f32>(x_1167.x, x_1167.y, x_1167.z) * x_1169) + vec3<f32>(x_1171.x, x_1171.y, x_1171.w));
  let x_1174 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1173.x, x_1173.y, x_1174.z, x_1173.z);
  let x_1176 : vec4<f32> = u_xlat6;
  let x_1178 : f32 = u_xlat22;
  let x_1180 : vec3<f32> = (vec3<f32>(x_1176.x, x_1176.y, x_1176.z) * vec3<f32>(x_1178, x_1178, x_1178));
  let x_1181 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1180.x, x_1180.y, x_1180.z, x_1181.w);
  let x_1183 : vec4<f32> = u_xlat5;
  let x_1186 : vec4<f32> = u_xlat1;
  let x_1188 : vec3<f32> = (-(vec3<f32>(x_1183.x, x_1183.y, x_1183.z)) + vec3<f32>(x_1186.x, x_1186.x, x_1186.x));
  let x_1189 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1188.x, x_1188.y, x_1189.z, x_1188.z);
  let x_1191 : f32 = u_xlat23;
  let x_1193 : vec4<f32> = u_xlat1;
  let x_1196 : vec4<f32> = u_xlat5;
  let x_1198 : vec3<f32> = ((vec3<f32>(x_1191, x_1191, x_1191) * vec3<f32>(x_1193.x, x_1193.y, x_1193.w)) + vec3<f32>(x_1196.x, x_1196.y, x_1196.z));
  let x_1199 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1198.x, x_1198.y, x_1198.z, x_1199.w);
  let x_1201 : vec4<f32> = u_xlat2;
  let x_1203 : vec4<f32> = u_xlat1;
  let x_1206 : vec4<f32> = u_xlat0;
  let x_1208 : vec3<f32> = ((vec3<f32>(x_1201.x, x_1201.y, x_1201.z) * vec3<f32>(x_1203.x, x_1203.y, x_1203.z)) + vec3<f32>(x_1206.x, x_1206.y, x_1206.w));
  let x_1209 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1208.x, x_1208.y, x_1208.z, x_1209.w);
  let x_1213 : vec4<f32> = u_xlat0;
  let x_1217 : vec4<f32> = x_18.x_Color2;
  let x_1219 : vec3<f32> = (vec3<f32>(x_1213.x, x_1213.y, x_1213.z) + vec3<f32>(x_1217.x, x_1217.y, x_1217.z));
  let x_1220 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1219.x, x_1219.y, x_1219.z, x_1220.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(3) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD3_param : f32, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD1_param : vec3<f32>, @location(4) vs_TEXCOORD4_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

