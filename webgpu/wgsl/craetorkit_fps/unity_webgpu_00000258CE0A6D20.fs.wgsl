struct PGlobals {
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  unity_SpecCube0_HDR : vec4<f32>,
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
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_33 : PGlobals;

@group(0) @binding(1) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

@group(0) @binding(5) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(7) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(2) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_OcclusionMap : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(4) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

@group(0) @binding(3) var unity_NHxRoughness : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_NHxRoughness : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat21 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlat9 : vec3<f32>;
  var u_xlatb22 : bool;
  var u_xlat3 : vec4<f32>;
  var u_xlat11 : vec3<f32>;
  var x_212 : vec3<f32>;
  var u_xlat23 : f32;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
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
  let x_81 : vec4<f32> = vs_TEXCOORD0;
  let x_83 : vec4<f32> = textureSample(x_BumpMap, sampler_BumpMap, vec2<f32>(x_81.x, x_81.y));
  u_xlat2 = vec3<f32>(x_83.x, x_83.y, x_83.w);
  let x_88 : f32 = u_xlat2.z;
  let x_91 : f32 = u_xlat2.x;
  u_xlat2.x = (x_88 * x_91);
  let x_94 : vec3<f32> = u_xlat2;
  let x_101 : vec2<f32> = ((vec2<f32>(x_94.x, x_94.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_102 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_101.x, x_101.y, x_102.z);
  let x_105 : vec3<f32> = u_xlat2;
  let x_107 : vec3<f32> = u_xlat2;
  u_xlat22 = dot(vec2<f32>(x_105.x, x_105.y), vec2<f32>(x_107.x, x_107.y));
  let x_110 : f32 = u_xlat22;
  u_xlat22 = min(x_110, 1.0f);
  let x_113 : f32 = u_xlat22;
  u_xlat22 = (-(x_113) + 1.0f);
  let x_116 : f32 = u_xlat22;
  u_xlat22 = sqrt(x_116);
  let x_119 : vec3<f32> = u_xlat2;
  let x_122 : vec4<f32> = vs_TEXCOORD3;
  u_xlat9 = (vec3<f32>(x_119.y, x_119.y, x_119.y) * vec3<f32>(x_122.x, x_122.y, x_122.z));
  let x_126 : vec4<f32> = vs_TEXCOORD2;
  let x_128 : vec3<f32> = u_xlat2;
  let x_131 : vec3<f32> = u_xlat9;
  u_xlat2 = ((vec3<f32>(x_126.x, x_126.y, x_126.z) * vec3<f32>(x_128.x, x_128.x, x_128.x)) + x_131);
  let x_134 : vec4<f32> = vs_TEXCOORD4;
  let x_136 : f32 = u_xlat22;
  let x_139 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_134.x, x_134.y, x_134.z) * vec3<f32>(x_136, x_136, x_136)) + x_139);
  let x_146 : f32 = x_33.unity_ProbeVolumeParams.x;
  u_xlatb22 = (x_146 == 1.0f);
  let x_148 : bool = u_xlatb22;
  if (x_148) {
    let x_153 : f32 = x_33.unity_ProbeVolumeParams.y;
    u_xlatb22 = (x_153 == 1.0f);
    let x_157 : vec4<f32> = vs_TEXCOORD3;
    let x_162 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[1i];
    let x_164 : vec3<f32> = (vec3<f32>(x_157.w, x_157.w, x_157.w) * vec3<f32>(x_162.x, x_162.y, x_162.z));
    let x_165 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_164.x, x_164.y, x_164.z, x_165.w);
    let x_169 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[0i];
    let x_171 : vec4<f32> = vs_TEXCOORD2;
    let x_174 : vec4<f32> = u_xlat3;
    let x_176 : vec3<f32> = ((vec3<f32>(x_169.x, x_169.y, x_169.z) * vec3<f32>(x_171.w, x_171.w, x_171.w)) + vec3<f32>(x_174.x, x_174.y, x_174.z));
    let x_177 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_176.x, x_176.y, x_176.z, x_177.w);
    let x_181 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[2i];
    let x_183 : vec4<f32> = vs_TEXCOORD4;
    let x_186 : vec4<f32> = u_xlat3;
    let x_188 : vec3<f32> = ((vec3<f32>(x_181.x, x_181.y, x_181.z) * vec3<f32>(x_183.w, x_183.w, x_183.w)) + vec3<f32>(x_186.x, x_186.y, x_186.z));
    let x_189 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_188.x, x_188.y, x_188.z, x_189.w);
    let x_191 : vec4<f32> = u_xlat3;
    let x_194 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[3i];
    let x_196 : vec3<f32> = (vec3<f32>(x_191.x, x_191.y, x_191.z) + vec3<f32>(x_194.x, x_194.y, x_194.z));
    let x_197 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_196.x, x_196.y, x_196.z, x_197.w);
    let x_203 : f32 = vs_TEXCOORD2.w;
    u_xlat11.x = x_203;
    let x_206 : f32 = vs_TEXCOORD3.w;
    u_xlat11.y = x_206;
    let x_209 : f32 = vs_TEXCOORD4.w;
    u_xlat11.z = x_209;
    let x_211 : bool = u_xlatb22;
    if (x_211) {
      let x_215 : vec4<f32> = u_xlat3;
      x_212 = vec3<f32>(x_215.x, x_215.y, x_215.z);
    } else {
      let x_218 : vec3<f32> = u_xlat11;
      x_212 = x_218;
    }
    let x_219 : vec3<f32> = x_212;
    let x_220 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_219.x, x_219.y, x_219.z, x_220.w);
    let x_222 : vec4<f32> = u_xlat3;
    let x_227 : vec3<f32> = x_33.unity_ProbeVolumeMin;
    let x_229 : vec3<f32> = (vec3<f32>(x_222.x, x_222.y, x_222.z) + -(x_227));
    let x_230 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_229.x, x_229.y, x_229.z, x_230.w);
    let x_232 : vec4<f32> = u_xlat3;
    let x_236 : vec3<f32> = x_33.unity_ProbeVolumeSizeInv;
    let x_237 : vec3<f32> = (vec3<f32>(x_232.x, x_232.y, x_232.z) * x_236);
    let x_238 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_238.x, x_237.x, x_237.y, x_237.z);
    let x_241 : f32 = u_xlat3.y;
    u_xlat22 = ((x_241 * 0.25f) + 0.75f);
    let x_248 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat23 = ((x_248 * 0.5f) + 0.75f);
    let x_252 : f32 = u_xlat22;
    let x_253 : f32 = u_xlat23;
    u_xlat3.x = max(x_252, x_253);
    let x_264 : vec4<f32> = u_xlat3;
    let x_266 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_264.x, x_264.z, x_264.w));
    u_xlat3 = x_266;
  } else {
    u_xlat3.x = 1.0f;
    u_xlat3.y = 1.0f;
    u_xlat3.z = 1.0f;
    u_xlat3.w = 1.0f;
  }
  let x_272 : vec4<f32> = u_xlat3;
  let x_274 : vec4<f32> = x_33.unity_OcclusionMaskSelector;
  u_xlat22 = dot(x_272, x_274);
  let x_276 : f32 = u_xlat22;
  u_xlat22 = clamp(x_276, 0.0f, 1.0f);
  let x_284 : vec4<f32> = vs_TEXCOORD0;
  let x_286 : vec4<f32> = textureSample(x_OcclusionMap, sampler_OcclusionMap, vec2<f32>(x_284.x, x_284.y));
  u_xlat23 = x_286.y;
  let x_290 : f32 = x_33.x_Glossiness;
  let x_292 : f32 = x_33.x_Glossiness;
  let x_293 : vec2<f32> = vec2<f32>(x_290, x_292);
  let x_299 : vec2<f32> = (-(vec2<f32>(x_293.x, x_293.y)) + vec2<f32>(1.0f, 1.0f));
  let x_300 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_299.x, x_300.y, x_300.z, x_299.y);
  let x_304 : vec4<f32> = vs_TEXCOORD1;
  let x_306 : vec3<f32> = u_xlat2;
  u_xlat4.x = dot(vec3<f32>(x_304.x, x_304.y, x_304.z), x_306);
  let x_310 : f32 = u_xlat4.x;
  let x_312 : f32 = u_xlat4.x;
  u_xlat4.x = (x_310 + x_312);
  let x_315 : vec3<f32> = u_xlat2;
  let x_316 : vec4<f32> = u_xlat4;
  let x_320 : vec4<f32> = vs_TEXCOORD1;
  let x_322 : vec3<f32> = ((x_315 * -(vec3<f32>(x_316.x, x_316.x, x_316.x))) + vec3<f32>(x_320.x, x_320.y, x_320.z));
  let x_323 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_322.x, x_322.y, x_322.z, x_323.w);
  let x_326 : f32 = u_xlat22;
  let x_330 : vec4<f32> = x_33.x_LightColor0;
  u_xlat5 = (vec3<f32>(x_326, x_326, x_326) * vec3<f32>(x_330.x, x_330.y, x_330.z));
  let x_334 : f32 = u_xlat3.x;
  u_xlat22 = ((-(x_334) * 0.699999988f) + 1.700000048f);
  let x_340 : f32 = u_xlat22;
  let x_342 : f32 = u_xlat3.x;
  u_xlat22 = (x_340 * x_342);
  let x_344 : f32 = u_xlat22;
  u_xlat22 = (x_344 * 6.0f);
  let x_355 : vec4<f32> = u_xlat4;
  let x_357 : f32 = u_xlat22;
  let x_358 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_355.x, x_355.y, x_355.z), x_357);
  u_xlat4 = x_358;
  let x_360 : f32 = u_xlat4.w;
  u_xlat22 = (x_360 + -1.0f);
  let x_363 : f32 = x_33.unity_SpecCube0_HDR.w;
  let x_364 : f32 = u_xlat22;
  u_xlat22 = ((x_363 * x_364) + 1.0f);
  let x_367 : f32 = u_xlat22;
  u_xlat22 = log2(x_367);
  let x_369 : f32 = u_xlat22;
  let x_371 : f32 = x_33.unity_SpecCube0_HDR.y;
  u_xlat22 = (x_369 * x_371);
  let x_373 : f32 = u_xlat22;
  u_xlat22 = exp2(x_373);
  let x_375 : f32 = u_xlat22;
  let x_377 : f32 = x_33.unity_SpecCube0_HDR.x;
  u_xlat22 = (x_375 * x_377);
  let x_379 : vec4<f32> = u_xlat4;
  let x_381 : f32 = u_xlat22;
  let x_383 : vec3<f32> = (vec3<f32>(x_379.x, x_379.y, x_379.z) * vec3<f32>(x_381, x_381, x_381));
  let x_384 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_383.x, x_383.y, x_383.z, x_384.w);
  let x_386 : f32 = u_xlat23;
  let x_388 : vec4<f32> = u_xlat4;
  let x_390 : vec3<f32> = (vec3<f32>(x_386, x_386, x_386) * vec3<f32>(x_388.x, x_388.y, x_388.z));
  let x_391 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_390.x, x_390.y, x_390.z, x_391.w);
  let x_393 : vec4<f32> = vs_TEXCOORD1;
  let x_396 : vec3<f32> = u_xlat2;
  u_xlat22 = dot(-(vec3<f32>(x_393.x, x_393.y, x_393.z)), x_396);
  let x_398 : f32 = u_xlat22;
  let x_399 : f32 = u_xlat22;
  u_xlat23 = (x_398 + x_399);
  let x_402 : vec3<f32> = u_xlat2;
  let x_403 : f32 = u_xlat23;
  let x_407 : vec4<f32> = vs_TEXCOORD1;
  u_xlat6 = ((x_402 * -(vec3<f32>(x_403, x_403, x_403))) + -(vec3<f32>(x_407.x, x_407.y, x_407.z)));
  let x_411 : vec3<f32> = u_xlat2;
  let x_413 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  u_xlat2.x = dot(x_411, vec3<f32>(x_413.x, x_413.y, x_413.z));
  let x_418 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_418, 0.0f, 1.0f);
  let x_421 : f32 = u_xlat22;
  u_xlat22 = x_421;
  let x_422 : f32 = u_xlat22;
  u_xlat22 = clamp(x_422, 0.0f, 1.0f);
  let x_424 : vec3<f32> = u_xlat6;
  let x_426 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  u_xlat6.x = dot(x_424, vec3<f32>(x_426.x, x_426.y, x_426.z));
  let x_430 : f32 = u_xlat22;
  u_xlat6.y = (-(x_430) + 1.0f);
  let x_434 : vec3<f32> = u_xlat6;
  let x_436 : vec3<f32> = u_xlat6;
  let x_438 : vec2<f32> = (vec2<f32>(x_434.x, x_434.y) * vec2<f32>(x_436.x, x_436.y));
  let x_439 : vec3<f32> = u_xlat9;
  u_xlat9 = vec3<f32>(x_438.x, x_438.y, x_439.z);
  let x_441 : vec3<f32> = u_xlat9;
  let x_443 : vec3<f32> = u_xlat9;
  let x_445 : vec2<f32> = (vec2<f32>(x_441.x, x_441.y) * vec2<f32>(x_443.x, x_443.y));
  let x_446 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_446.x, x_445.x, x_445.y, x_446.w);
  let x_448 : f32 = u_xlat21;
  let x_451 : f32 = x_33.x_Glossiness;
  u_xlat22 = (-(x_448) + x_451);
  let x_453 : f32 = u_xlat22;
  u_xlat22 = (x_453 + 1.0f);
  let x_455 : f32 = u_xlat22;
  u_xlat22 = clamp(x_455, 0.0f, 1.0f);
  let x_462 : vec4<f32> = u_xlat3;
  let x_464 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_462.y, x_462.w));
  u_xlat9.x = x_464.x;
  let x_468 : f32 = u_xlat9.x;
  u_xlat9.x = (x_468 * 16.0f);
  let x_472 : vec3<f32> = u_xlat0;
  let x_473 : vec3<f32> = u_xlat9;
  u_xlat9 = (x_472 * vec3<f32>(x_473.x, x_473.x, x_473.x));
  let x_476 : vec3<f32> = u_xlat1;
  let x_477 : f32 = u_xlat21;
  let x_480 : vec3<f32> = u_xlat9;
  u_xlat1 = ((x_476 * vec3<f32>(x_477, x_477, x_477)) + x_480);
  let x_482 : vec3<f32> = u_xlat2;
  let x_484 : vec3<f32> = u_xlat5;
  u_xlat2 = (vec3<f32>(x_482.x, x_482.x, x_482.x) * x_484);
  let x_486 : vec3<f32> = u_xlat0;
  let x_488 : f32 = u_xlat22;
  let x_490 : vec3<f32> = (-(x_486) + vec3<f32>(x_488, x_488, x_488));
  let x_491 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_490.x, x_490.y, x_491.z, x_490.z);
  let x_493 : vec4<f32> = u_xlat3;
  let x_495 : vec4<f32> = u_xlat3;
  let x_498 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_493.z, x_493.z, x_493.z) * vec3<f32>(x_495.x, x_495.y, x_495.w)) + x_498);
  let x_500 : vec3<f32> = u_xlat0;
  let x_501 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_500 * vec3<f32>(x_501.x, x_501.y, x_501.z));
  let x_506 : vec3<f32> = u_xlat1;
  let x_507 : vec3<f32> = u_xlat2;
  let x_509 : vec3<f32> = u_xlat0;
  let x_510 : vec3<f32> = ((x_506 * x_507) + x_509);
  let x_511 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_510.x, x_510.y, x_510.z, x_511.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

