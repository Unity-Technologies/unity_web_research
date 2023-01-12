struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  unity_SpecCube0_HDR : vec4<f32>,
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
  x_Scale : f32,
  @size(4)
  padding_3 : u32,
  x_OctaveIndex : vec4<i32>,
}

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_20 : PGlobals;

@group(0) @binding(0) var x_VolumeNoise : texture_3d<f32>;

@group(0) @binding(11) var sampler_VolumeNoise : sampler;

@group(0) @binding(1) var x_AlbedoRamp1 : texture_2d<f32>;

@group(0) @binding(9) var sampler_AlbedoRamp1 : sampler;

@group(0) @binding(2) var x_AlbedoRamp2 : texture_2d<f32>;

@group(0) @binding(10) var sampler_AlbedoRamp2 : sampler;

var<private> vs_COLOR0 : vec4<f32>;

@group(0) @binding(5) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(7) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD0 : vec3<f32>;

@group(0) @binding(4) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

@group(0) @binding(3) var unity_NHxRoughness : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_NHxRoughness : sampler;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat21 : f32;
  var u_xlati1 : vec4<i32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat1 : vec4<f32>;
  var indexable_1 : array<vec4<u32>, 4u>;
  var u_xlat8 : f32;
  var indexable_2 : array<vec4<u32>, 4u>;
  var u_xlat15 : f32;
  var indexable_3 : array<vec4<u32>, 4u>;
  var u_xlatb21 : bool;
  var x_279 : vec3<f32>;
  var u_xlat9 : f32;
  var u_xlat23 : f32;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat24 : f32;
  var u_xlat7 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD1;
  let x_24 : vec3<f32> = x_20.x_WorldSpaceCameraPos;
  u_xlat0 = (-(x_12) + x_24);
  let x_28 : vec3<f32> = u_xlat0;
  let x_29 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_28, x_29);
  let x_31 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_31);
  let x_33 : f32 = u_xlat21;
  let x_35 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_33, x_33, x_33) * x_35);
  let x_42 : vec4<i32> = x_20.x_OctaveIndex;
  u_xlati1 = min(x_42, vec4<i32>(3i, 3i, 3i, 3i));
  let x_48 : vec3<f32> = vs_TEXCOORD1;
  let x_52 : f32 = x_20.x_Scale;
  let x_54 : f32 = x_20.x_Scale;
  let x_56 : f32 = x_20.x_Scale;
  let x_57 : vec3<f32> = vec3<f32>(x_52, x_54, x_56);
  let x_62 : vec3<f32> = (x_48 * vec3<f32>(x_57.x, x_57.y, x_57.z));
  let x_63 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_62.x, x_62.y, x_62.z, x_63.w);
  let x_76 : vec4<f32> = u_xlat2;
  let x_78 : vec4<f32> = textureSample(x_VolumeNoise, sampler_VolumeNoise, vec3<f32>(x_76.x, x_76.y, x_76.z));
  u_xlat3 = x_78;
  let x_79 : vec4<f32> = u_xlat3;
  let x_93 : i32 = u_xlati1.x;
  indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
  let x_98 : vec4<u32> = indexable[x_93];
  u_xlat21 = dot(x_79, bitcast<vec4<f32>>(x_98));
  let x_101 : vec4<f32> = u_xlat2;
  let x_105 : vec3<f32> = (vec3<f32>(x_101.x, x_101.y, x_101.z) * vec3<f32>(4.0f, 4.0f, 4.0f));
  let x_106 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_105.x, x_105.y, x_105.z, x_106.w);
  let x_111 : vec4<f32> = u_xlat3;
  let x_113 : vec4<f32> = textureSample(x_VolumeNoise, sampler_VolumeNoise, vec3<f32>(x_111.x, x_111.y, x_111.z));
  u_xlat3 = x_113;
  let x_115 : vec4<f32> = u_xlat3;
  let x_118 : i32 = u_xlati1.y;
  indexable_1 = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
  let x_121 : vec4<u32> = indexable_1[x_118];
  u_xlat1.x = dot(x_115, bitcast<vec4<f32>>(x_121));
  let x_125 : vec4<f32> = u_xlat2;
  let x_129 : vec3<f32> = (vec3<f32>(x_125.x, x_125.y, x_125.z) * vec3<f32>(16.0f, 16.0f, 16.0f));
  let x_130 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_129.x, x_129.y, x_129.z, x_130.w);
  let x_135 : vec4<f32> = u_xlat3;
  let x_137 : vec4<f32> = textureSample(x_VolumeNoise, sampler_VolumeNoise, vec3<f32>(x_135.x, x_135.y, x_135.z));
  u_xlat3 = x_137;
  let x_139 : vec4<f32> = u_xlat3;
  let x_142 : i32 = u_xlati1.z;
  indexable_2 = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
  let x_145 : vec4<u32> = indexable_2[x_142];
  u_xlat8 = dot(x_139, bitcast<vec4<f32>>(x_145));
  let x_148 : vec4<f32> = u_xlat2;
  let x_152 : vec3<f32> = (vec3<f32>(x_148.x, x_148.y, x_148.z) * vec3<f32>(256.0f, 256.0f, 256.0f));
  let x_153 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_152.x, x_152.y, x_152.z, x_153.w);
  let x_158 : vec4<f32> = u_xlat2;
  let x_160 : vec4<f32> = textureSample(x_VolumeNoise, sampler_VolumeNoise, vec3<f32>(x_158.x, x_158.y, x_158.z));
  u_xlat2 = x_160;
  let x_162 : vec4<f32> = u_xlat2;
  let x_165 : i32 = u_xlati1.w;
  indexable_3 = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
  let x_168 : vec4<u32> = indexable_3[x_165];
  u_xlat15 = dot(x_162, bitcast<vec4<f32>>(x_168));
  let x_172 : f32 = u_xlat1.x;
  let x_175 : f32 = u_xlat21;
  u_xlat21 = ((x_172 * 0.5f) + x_175);
  let x_177 : f32 = u_xlat8;
  let x_180 : f32 = u_xlat21;
  u_xlat21 = ((x_177 * 0.25f) + x_180);
  let x_182 : f32 = u_xlat15;
  let x_185 : f32 = u_xlat21;
  u_xlat21 = ((x_182 * 0.125f) + x_185);
  let x_187 : f32 = u_xlat21;
  u_xlat21 = (x_187 * 0.533333361f);
  let x_198 : f32 = u_xlat21;
  let x_201 : vec4<f32> = textureSample(x_AlbedoRamp1, sampler_AlbedoRamp1, vec2<f32>(x_198, x_198));
  u_xlat1 = x_201;
  let x_207 : f32 = u_xlat21;
  let x_209 : vec4<f32> = textureSample(x_AlbedoRamp2, sampler_AlbedoRamp2, vec2<f32>(x_207, x_207));
  u_xlat2 = x_209;
  let x_210 : vec4<f32> = u_xlat1;
  let x_212 : vec4<f32> = u_xlat2;
  u_xlat2 = (-(x_210) + x_212);
  let x_216 : vec4<f32> = vs_COLOR0;
  let x_218 : vec4<f32> = u_xlat2;
  let x_220 : vec4<f32> = u_xlat1;
  u_xlat1 = ((vec4<f32>(x_216.w, x_216.w, x_216.w, x_216.w) * x_218) + x_220);
  let x_227 : f32 = x_20.unity_ProbeVolumeParams.x;
  u_xlatb21 = (x_227 == 1.0f);
  let x_230 : bool = u_xlatb21;
  if (x_230) {
    let x_234 : f32 = x_20.unity_ProbeVolumeParams.y;
    u_xlatb21 = (x_234 == 1.0f);
    let x_236 : vec3<f32> = vs_TEXCOORD1;
    let x_242 : vec4<f32> = x_20.unity_ProbeVolumeWorldToObject[1i];
    let x_244 : vec3<f32> = (vec3<f32>(x_236.y, x_236.y, x_236.y) * vec3<f32>(x_242.x, x_242.y, x_242.z));
    let x_245 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_244.x, x_244.y, x_244.z, x_245.w);
    let x_248 : vec4<f32> = x_20.unity_ProbeVolumeWorldToObject[0i];
    let x_250 : vec3<f32> = vs_TEXCOORD1;
    let x_253 : vec4<f32> = u_xlat2;
    let x_255 : vec3<f32> = ((vec3<f32>(x_248.x, x_248.y, x_248.z) * vec3<f32>(x_250.x, x_250.x, x_250.x)) + vec3<f32>(x_253.x, x_253.y, x_253.z));
    let x_256 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_255.x, x_255.y, x_255.z, x_256.w);
    let x_260 : vec4<f32> = x_20.unity_ProbeVolumeWorldToObject[2i];
    let x_262 : vec3<f32> = vs_TEXCOORD1;
    let x_265 : vec4<f32> = u_xlat2;
    let x_267 : vec3<f32> = ((vec3<f32>(x_260.x, x_260.y, x_260.z) * vec3<f32>(x_262.z, x_262.z, x_262.z)) + vec3<f32>(x_265.x, x_265.y, x_265.z));
    let x_268 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_267.x, x_267.y, x_267.z, x_268.w);
    let x_270 : vec4<f32> = u_xlat2;
    let x_273 : vec4<f32> = x_20.unity_ProbeVolumeWorldToObject[3i];
    let x_275 : vec3<f32> = (vec3<f32>(x_270.x, x_270.y, x_270.z) + vec3<f32>(x_273.x, x_273.y, x_273.z));
    let x_276 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_275.x, x_275.y, x_275.z, x_276.w);
    let x_278 : bool = u_xlatb21;
    if (x_278) {
      let x_282 : vec4<f32> = u_xlat2;
      x_279 = vec3<f32>(x_282.x, x_282.y, x_282.z);
    } else {
      let x_285 : vec3<f32> = vs_TEXCOORD1;
      x_279 = x_285;
    }
    let x_286 : vec3<f32> = x_279;
    let x_287 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_286.x, x_286.y, x_286.z, x_287.w);
    let x_289 : vec4<f32> = u_xlat2;
    let x_293 : vec3<f32> = x_20.unity_ProbeVolumeMin;
    let x_295 : vec3<f32> = (vec3<f32>(x_289.x, x_289.y, x_289.z) + -(x_293));
    let x_296 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_295.x, x_295.y, x_295.z, x_296.w);
    let x_298 : vec4<f32> = u_xlat2;
    let x_302 : vec3<f32> = x_20.unity_ProbeVolumeSizeInv;
    let x_303 : vec3<f32> = (vec3<f32>(x_298.x, x_298.y, x_298.z) * x_302);
    let x_304 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_304.x, x_303.x, x_303.y, x_303.z);
    let x_307 : f32 = u_xlat2.y;
    u_xlat21 = ((x_307 * 0.25f) + 0.75f);
    let x_313 : f32 = x_20.unity_ProbeVolumeParams.z;
    u_xlat9 = ((x_313 * 0.5f) + 0.75f);
    let x_316 : f32 = u_xlat21;
    let x_317 : f32 = u_xlat9;
    u_xlat2.x = max(x_316, x_317);
    let x_325 : vec4<f32> = u_xlat2;
    let x_327 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_325.x, x_325.z, x_325.w));
    u_xlat2 = x_327;
  } else {
    u_xlat2.x = 1.0f;
    u_xlat2.y = 1.0f;
    u_xlat2.z = 1.0f;
    u_xlat2.w = 1.0f;
  }
  let x_333 : vec4<f32> = u_xlat2;
  let x_335 : vec4<f32> = x_20.unity_OcclusionMaskSelector;
  u_xlat21 = dot(x_333, x_335);
  let x_337 : f32 = u_xlat21;
  u_xlat21 = clamp(x_337, 0.0f, 1.0f);
  let x_342 : f32 = x_20.x_Glossiness;
  let x_345 : f32 = u_xlat1.w;
  u_xlat2.z = ((-(x_342) * x_345) + 1.0f);
  let x_350 : vec3<f32> = u_xlat0;
  let x_353 : vec3<f32> = vs_TEXCOORD0;
  u_xlat23 = dot(-(x_350), x_353);
  let x_355 : f32 = u_xlat23;
  let x_356 : f32 = u_xlat23;
  u_xlat23 = (x_355 + x_356);
  let x_358 : vec3<f32> = vs_TEXCOORD0;
  let x_359 : f32 = u_xlat23;
  let x_363 : vec3<f32> = u_xlat0;
  let x_365 : vec3<f32> = ((x_358 * -(vec3<f32>(x_359, x_359, x_359))) + -(x_363));
  let x_366 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_365.x, x_365.y, x_365.z, x_366.w);
  let x_369 : f32 = u_xlat21;
  let x_373 : vec4<f32> = x_20.x_LightColor0;
  u_xlat4 = (vec3<f32>(x_369, x_369, x_369) * vec3<f32>(x_373.x, x_373.y, x_373.z));
  let x_377 : f32 = u_xlat2.z;
  u_xlat21 = ((-(x_377) * 0.699999988f) + 1.700000048f);
  let x_383 : f32 = u_xlat21;
  let x_385 : f32 = u_xlat2.z;
  u_xlat21 = (x_383 * x_385);
  let x_387 : f32 = u_xlat21;
  u_xlat21 = (x_387 * 6.0f);
  let x_398 : vec4<f32> = u_xlat3;
  let x_400 : f32 = u_xlat21;
  let x_401 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_398.x, x_398.y, x_398.z), x_400);
  u_xlat3 = x_401;
  let x_403 : f32 = u_xlat3.w;
  u_xlat21 = (x_403 + -1.0f);
  let x_407 : f32 = x_20.unity_SpecCube0_HDR.w;
  let x_408 : f32 = u_xlat21;
  u_xlat21 = ((x_407 * x_408) + 1.0f);
  let x_411 : f32 = u_xlat21;
  u_xlat21 = log2(x_411);
  let x_413 : f32 = u_xlat21;
  let x_415 : f32 = x_20.unity_SpecCube0_HDR.y;
  u_xlat21 = (x_413 * x_415);
  let x_417 : f32 = u_xlat21;
  u_xlat21 = exp2(x_417);
  let x_419 : f32 = u_xlat21;
  let x_421 : f32 = x_20.unity_SpecCube0_HDR.x;
  u_xlat21 = (x_419 * x_421);
  let x_423 : vec4<f32> = u_xlat3;
  let x_425 : f32 = u_xlat21;
  let x_427 : vec3<f32> = (vec3<f32>(x_423.x, x_423.y, x_423.z) * vec3<f32>(x_425, x_425, x_425));
  let x_428 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_427.x, x_427.y, x_427.z, x_428.w);
  let x_430 : vec3<f32> = vs_TEXCOORD0;
  let x_431 : vec3<f32> = vs_TEXCOORD0;
  u_xlat21 = dot(x_430, x_431);
  let x_433 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_433);
  let x_436 : f32 = u_xlat21;
  let x_438 : vec3<f32> = vs_TEXCOORD0;
  u_xlat5 = (vec3<f32>(x_436, x_436, x_436) * x_438);
  let x_441 : vec4<f32> = u_xlat1;
  u_xlat6 = (vec3<f32>(x_441.x, x_441.y, x_441.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_448 : f32 = x_20.x_Metallic;
  let x_450 : f32 = x_20.x_Metallic;
  let x_452 : f32 = x_20.x_Metallic;
  let x_453 : vec3<f32> = vec3<f32>(x_448, x_450, x_452);
  let x_458 : vec3<f32> = u_xlat6;
  u_xlat6 = ((vec3<f32>(x_453.x, x_453.y, x_453.z) * x_458) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_464 : f32 = x_20.x_Metallic;
  u_xlat21 = ((-(x_464) * 0.959999979f) + 0.959999979f);
  let x_469 : f32 = u_xlat21;
  let x_471 : vec4<f32> = u_xlat1;
  let x_473 : vec3<f32> = (vec3<f32>(x_469, x_469, x_469) * vec3<f32>(x_471.x, x_471.y, x_471.z));
  let x_474 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_473.x, x_473.y, x_473.z, x_474.w);
  let x_476 : vec3<f32> = u_xlat0;
  let x_477 : vec3<f32> = u_xlat5;
  u_xlat23 = dot(x_476, x_477);
  let x_480 : f32 = u_xlat23;
  let x_481 : f32 = u_xlat23;
  u_xlat24 = (x_480 + x_481);
  let x_483 : vec3<f32> = u_xlat5;
  let x_484 : f32 = u_xlat24;
  let x_488 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_483 * -(vec3<f32>(x_484, x_484, x_484))) + x_488);
  let x_490 : vec3<f32> = u_xlat5;
  let x_492 : vec4<f32> = x_20.x_WorldSpaceLightPos0;
  u_xlat24 = dot(x_490, vec3<f32>(x_492.x, x_492.y, x_492.z));
  let x_495 : f32 = u_xlat24;
  u_xlat24 = clamp(x_495, 0.0f, 1.0f);
  let x_497 : f32 = u_xlat23;
  u_xlat23 = x_497;
  let x_498 : f32 = u_xlat23;
  u_xlat23 = clamp(x_498, 0.0f, 1.0f);
  let x_500 : vec3<f32> = u_xlat0;
  let x_502 : vec4<f32> = x_20.x_WorldSpaceLightPos0;
  u_xlat0.x = dot(x_500, vec3<f32>(x_502.x, x_502.y, x_502.z));
  let x_506 : f32 = u_xlat23;
  u_xlat0.y = (-(x_506) + 1.0f);
  let x_510 : vec3<f32> = u_xlat0;
  let x_512 : vec3<f32> = u_xlat0;
  let x_514 : vec2<f32> = (vec2<f32>(x_510.x, x_510.y) * vec2<f32>(x_512.x, x_512.y));
  let x_515 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_514.x, x_514.y, x_515.z);
  let x_517 : vec3<f32> = u_xlat0;
  let x_519 : vec3<f32> = u_xlat0;
  let x_521 : vec2<f32> = (vec2<f32>(x_517.x, x_517.y) * vec2<f32>(x_519.x, x_519.y));
  let x_522 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_521.x, x_521.y, x_522.z, x_522.w);
  let x_525 : f32 = x_20.x_Glossiness;
  let x_527 : f32 = u_xlat1.w;
  let x_529 : f32 = u_xlat21;
  u_xlat0.x = ((x_525 * x_527) + -(x_529));
  let x_534 : f32 = u_xlat0.x;
  u_xlat0.x = (x_534 + 1.0f);
  let x_538 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_538, 0.0f, 1.0f);
  let x_547 : vec4<f32> = u_xlat2;
  let x_549 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_547.x, x_547.z));
  u_xlat7.x = x_549.x;
  let x_553 : f32 = u_xlat7.x;
  u_xlat7.x = (x_553 * 16.0f);
  let x_556 : vec3<f32> = u_xlat7;
  let x_558 : vec3<f32> = u_xlat6;
  let x_560 : vec4<f32> = u_xlat1;
  u_xlat7 = ((vec3<f32>(x_556.x, x_556.x, x_556.x) * x_558) + vec3<f32>(x_560.x, x_560.y, x_560.z));
  let x_563 : f32 = u_xlat24;
  let x_565 : vec3<f32> = u_xlat4;
  let x_566 : vec3<f32> = (vec3<f32>(x_563, x_563, x_563) * x_565);
  let x_567 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_566.x, x_567.y, x_566.y, x_566.z);
  let x_569 : vec3<f32> = u_xlat6;
  let x_571 : vec3<f32> = u_xlat0;
  u_xlat4 = (-(x_569) + vec3<f32>(x_571.x, x_571.x, x_571.x));
  let x_574 : vec4<f32> = u_xlat2;
  let x_576 : vec3<f32> = u_xlat4;
  let x_578 : vec3<f32> = u_xlat6;
  u_xlat4 = ((vec3<f32>(x_574.y, x_574.y, x_574.y) * x_576) + x_578);
  let x_580 : vec4<f32> = u_xlat3;
  let x_582 : vec3<f32> = u_xlat4;
  let x_583 : vec3<f32> = (vec3<f32>(x_580.x, x_580.y, x_580.z) * x_582);
  let x_584 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_583.x, x_583.y, x_583.z, x_584.w);
  let x_587 : vec3<f32> = vs_TEXCOORD2;
  let x_588 : vec4<f32> = u_xlat1;
  let x_591 : vec4<f32> = u_xlat3;
  let x_593 : vec3<f32> = ((x_587 * vec3<f32>(x_588.x, x_588.y, x_588.z)) + vec3<f32>(x_591.x, x_591.y, x_591.z));
  let x_594 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_593.x, x_593.y, x_593.z, x_594.w);
  let x_598 : vec3<f32> = u_xlat7;
  let x_599 : vec4<f32> = u_xlat2;
  let x_602 : vec4<f32> = u_xlat1;
  let x_604 : vec3<f32> = ((x_598 * vec3<f32>(x_599.x, x_599.z, x_599.w)) + vec3<f32>(x_602.x, x_602.y, x_602.z));
  let x_605 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_604.x, x_604.y, x_604.z, x_605.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_COLOR0_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec3<f32>, @location(3) vs_TEXCOORD2_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

