struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
  x_LightPositionRange : vec4<f32>,
  x_LightProjectionParams : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  x_LightShadowData : vec4<f32>,
  unity_ShadowFadeCenterAndType : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_ProbeVolumeParams : vec4<f32>,
  unity_ProbeVolumeWorldToObject : mat4x4<f32>,
  unity_ProbeVolumeSizeInv : vec3<f32>,
  @size(4)
  padding_1 : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_LightColor0 : vec4<f32>,
  unity_WorldToLight : mat4x4<f32>,
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

@group(0) @binding(13) var sampler_VolumeNoise : sampler;

@group(0) @binding(1) var x_AlbedoRamp1 : texture_2d<f32>;

@group(0) @binding(11) var sampler_AlbedoRamp1 : sampler;

@group(0) @binding(2) var x_AlbedoRamp2 : texture_2d<f32>;

@group(0) @binding(12) var sampler_AlbedoRamp2 : sampler;

var<private> vs_COLOR0 : vec4<f32>;

@group(0) @binding(5) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(7) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(6) var x_ShadowMapTexture : texture_depth_cube;

@group(0) @binding(9) var sampler_ShadowMapTexture : sampler_comparison;

@group(0) @binding(3) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(10) var sampler_LightTexture0 : sampler;

var<private> vs_TEXCOORD0 : vec3<f32>;

@group(0) @binding(4) var unity_NHxRoughness : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_NHxRoughness : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat18 : f32;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlati3 : vec4<i32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat19 : f32;
  var indexable_1 : array<vec4<u32>, 4u>;
  var u_xlat20 : f32;
  var indexable_2 : array<vec4<u32>, 4u>;
  var u_xlat3 : vec4<f32>;
  var indexable_3 : array<vec4<u32>, 4u>;
  var u_xlatb1 : bool;
  var u_xlat7 : vec3<f32>;
  var x_388 : vec3<f32>;
  var txVec0 : vec4<f32>;
  var u_xlat13 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD1;
  let x_24 : vec4<f32> = x_20.x_WorldSpaceLightPos0;
  u_xlat0 = (-(x_12) + vec3<f32>(x_24.x, x_24.y, x_24.z));
  let x_29 : vec3<f32> = u_xlat0;
  let x_30 : vec3<f32> = u_xlat0;
  u_xlat18 = dot(x_29, x_30);
  let x_32 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_32);
  let x_34 : f32 = u_xlat18;
  let x_36 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_34, x_34, x_34) * x_36);
  let x_40 : vec3<f32> = vs_TEXCOORD1;
  let x_45 : vec3<f32> = x_20.x_WorldSpaceCameraPos;
  let x_46 : vec3<f32> = (-(x_40) + x_45);
  let x_47 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_46.x, x_46.y, x_46.z, x_47.w);
  let x_49 : vec4<f32> = u_xlat1;
  let x_51 : vec4<f32> = u_xlat1;
  u_xlat18 = dot(vec3<f32>(x_49.x, x_49.y, x_49.z), vec3<f32>(x_51.x, x_51.y, x_51.z));
  let x_54 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_54);
  let x_57 : f32 = u_xlat18;
  let x_59 : vec4<f32> = u_xlat1;
  u_xlat2 = (vec3<f32>(x_57, x_57, x_57) * vec3<f32>(x_59.x, x_59.y, x_59.z));
  let x_67 : vec4<i32> = x_20.x_OctaveIndex;
  u_xlati3 = min(x_67, vec4<i32>(3i, 3i, 3i, 3i));
  let x_72 : vec3<f32> = vs_TEXCOORD1;
  let x_76 : f32 = x_20.x_Scale;
  let x_78 : f32 = x_20.x_Scale;
  let x_80 : f32 = x_20.x_Scale;
  let x_81 : vec3<f32> = vec3<f32>(x_76, x_78, x_80);
  let x_86 : vec3<f32> = (x_72 * vec3<f32>(x_81.x, x_81.y, x_81.z));
  let x_87 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_86.x, x_86.y, x_86.z, x_87.w);
  let x_100 : vec4<f32> = u_xlat4;
  let x_102 : vec4<f32> = textureSample(x_VolumeNoise, sampler_VolumeNoise, vec3<f32>(x_100.x, x_100.y, x_100.z));
  u_xlat5 = x_102;
  let x_103 : vec4<f32> = u_xlat5;
  let x_117 : i32 = u_xlati3.x;
  indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
  let x_122 : vec4<u32> = indexable[x_117];
  u_xlat18 = dot(x_103, bitcast<vec4<f32>>(x_122));
  let x_125 : vec4<f32> = u_xlat4;
  let x_129 : vec3<f32> = (vec3<f32>(x_125.x, x_125.y, x_125.z) * vec3<f32>(4.0f, 4.0f, 4.0f));
  let x_130 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_129.x, x_129.y, x_129.z, x_130.w);
  let x_135 : vec4<f32> = u_xlat5;
  let x_137 : vec4<f32> = textureSample(x_VolumeNoise, sampler_VolumeNoise, vec3<f32>(x_135.x, x_135.y, x_135.z));
  u_xlat5 = x_137;
  let x_139 : vec4<f32> = u_xlat5;
  let x_142 : i32 = u_xlati3.y;
  indexable_1 = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
  let x_145 : vec4<u32> = indexable_1[x_142];
  u_xlat19 = dot(x_139, bitcast<vec4<f32>>(x_145));
  let x_148 : vec4<f32> = u_xlat4;
  let x_152 : vec3<f32> = (vec3<f32>(x_148.x, x_148.y, x_148.z) * vec3<f32>(16.0f, 16.0f, 16.0f));
  let x_153 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_152.x, x_152.y, x_152.z, x_153.w);
  let x_158 : vec4<f32> = u_xlat5;
  let x_160 : vec4<f32> = textureSample(x_VolumeNoise, sampler_VolumeNoise, vec3<f32>(x_158.x, x_158.y, x_158.z));
  u_xlat5 = x_160;
  let x_162 : vec4<f32> = u_xlat5;
  let x_165 : i32 = u_xlati3.z;
  indexable_2 = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
  let x_168 : vec4<u32> = indexable_2[x_165];
  u_xlat20 = dot(x_162, bitcast<vec4<f32>>(x_168));
  let x_172 : vec4<f32> = u_xlat4;
  let x_176 : vec3<f32> = (vec3<f32>(x_172.x, x_172.y, x_172.z) * vec3<f32>(256.0f, 256.0f, 256.0f));
  let x_177 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_176.x, x_176.y, x_176.z, x_177.w);
  let x_182 : vec4<f32> = u_xlat3;
  let x_184 : vec4<f32> = textureSample(x_VolumeNoise, sampler_VolumeNoise, vec3<f32>(x_182.x, x_182.y, x_182.z));
  u_xlat4 = x_184;
  let x_185 : vec4<f32> = u_xlat4;
  let x_188 : i32 = u_xlati3.w;
  indexable_3 = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
  let x_191 : vec4<u32> = indexable_3[x_188];
  u_xlat3.x = dot(x_185, bitcast<vec4<f32>>(x_191));
  let x_195 : f32 = u_xlat19;
  let x_198 : f32 = u_xlat18;
  u_xlat18 = ((x_195 * 0.5f) + x_198);
  let x_200 : f32 = u_xlat20;
  let x_203 : f32 = u_xlat18;
  u_xlat18 = ((x_200 * 0.25f) + x_203);
  let x_206 : f32 = u_xlat3.x;
  let x_209 : f32 = u_xlat18;
  u_xlat18 = ((x_206 * 0.125f) + x_209);
  let x_211 : f32 = u_xlat18;
  u_xlat18 = (x_211 * 0.533333361f);
  let x_222 : f32 = u_xlat18;
  let x_225 : vec4<f32> = textureSample(x_AlbedoRamp1, sampler_AlbedoRamp1, vec2<f32>(x_222, x_222));
  u_xlat3 = x_225;
  let x_231 : f32 = u_xlat18;
  let x_233 : vec4<f32> = textureSample(x_AlbedoRamp2, sampler_AlbedoRamp2, vec2<f32>(x_231, x_231));
  u_xlat4 = x_233;
  let x_234 : vec4<f32> = u_xlat3;
  let x_236 : vec4<f32> = u_xlat4;
  u_xlat4 = (-(x_234) + x_236);
  let x_240 : vec4<f32> = vs_COLOR0;
  let x_242 : vec4<f32> = u_xlat4;
  let x_244 : vec4<f32> = u_xlat3;
  u_xlat3 = ((vec4<f32>(x_240.w, x_240.w, x_240.w, x_240.w) * x_242) + x_244);
  let x_246 : vec3<f32> = vs_TEXCOORD1;
  let x_250 : vec4<f32> = x_20.unity_WorldToLight[1i];
  let x_252 : vec3<f32> = (vec3<f32>(x_246.y, x_246.y, x_246.y) * vec3<f32>(x_250.x, x_250.y, x_250.z));
  let x_253 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_252.x, x_252.y, x_252.z, x_253.w);
  let x_256 : vec4<f32> = x_20.unity_WorldToLight[0i];
  let x_258 : vec3<f32> = vs_TEXCOORD1;
  let x_261 : vec4<f32> = u_xlat4;
  let x_263 : vec3<f32> = ((vec3<f32>(x_256.x, x_256.y, x_256.z) * vec3<f32>(x_258.x, x_258.x, x_258.x)) + vec3<f32>(x_261.x, x_261.y, x_261.z));
  let x_264 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_263.x, x_263.y, x_263.z, x_264.w);
  let x_268 : vec4<f32> = x_20.unity_WorldToLight[2i];
  let x_270 : vec3<f32> = vs_TEXCOORD1;
  let x_273 : vec4<f32> = u_xlat4;
  let x_275 : vec3<f32> = ((vec3<f32>(x_268.x, x_268.y, x_268.z) * vec3<f32>(x_270.z, x_270.z, x_270.z)) + vec3<f32>(x_273.x, x_273.y, x_273.z));
  let x_276 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_275.x, x_275.y, x_275.z, x_276.w);
  let x_278 : vec4<f32> = u_xlat4;
  let x_281 : vec4<f32> = x_20.unity_WorldToLight[3i];
  let x_283 : vec3<f32> = (vec3<f32>(x_278.x, x_278.y, x_278.z) + vec3<f32>(x_281.x, x_281.y, x_281.z));
  let x_284 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_283.x, x_283.y, x_283.z, x_284.w);
  let x_288 : f32 = x_20.unity_MatrixV[0i].z;
  u_xlat5.x = x_288;
  let x_291 : f32 = x_20.unity_MatrixV[1i].z;
  u_xlat5.y = x_291;
  let x_294 : f32 = x_20.unity_MatrixV[2i].z;
  u_xlat5.z = x_294;
  let x_296 : vec4<f32> = u_xlat1;
  let x_298 : vec4<f32> = u_xlat5;
  u_xlat18 = dot(vec3<f32>(x_296.x, x_296.y, x_296.z), vec3<f32>(x_298.x, x_298.y, x_298.z));
  let x_301 : vec3<f32> = vs_TEXCOORD1;
  let x_304 : vec4<f32> = x_20.unity_ShadowFadeCenterAndType;
  let x_307 : vec3<f32> = (x_301 + -(vec3<f32>(x_304.x, x_304.y, x_304.z)));
  let x_308 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_307.x, x_307.y, x_307.z, x_308.w);
  let x_310 : vec4<f32> = u_xlat1;
  let x_312 : vec4<f32> = u_xlat1;
  u_xlat1.x = dot(vec3<f32>(x_310.x, x_310.y, x_310.z), vec3<f32>(x_312.x, x_312.y, x_312.z));
  let x_317 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_317);
  let x_320 : f32 = u_xlat18;
  let x_323 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_320) + x_323);
  let x_327 : f32 = x_20.unity_ShadowFadeCenterAndType.w;
  let x_329 : f32 = u_xlat1.x;
  let x_331 : f32 = u_xlat18;
  u_xlat18 = ((x_327 * x_329) + x_331);
  let x_333 : f32 = u_xlat18;
  let x_336 : f32 = x_20.x_LightShadowData.z;
  let x_339 : f32 = x_20.x_LightShadowData.w;
  u_xlat18 = ((x_333 * x_336) + x_339);
  let x_341 : f32 = u_xlat18;
  u_xlat18 = clamp(x_341, 0.0f, 1.0f);
  let x_350 : f32 = x_20.unity_ProbeVolumeParams.x;
  u_xlatb1 = (x_350 == 1.0f);
  let x_352 : bool = u_xlatb1;
  if (x_352) {
    let x_356 : f32 = x_20.unity_ProbeVolumeParams.y;
    u_xlatb1 = (x_356 == 1.0f);
    let x_359 : vec3<f32> = vs_TEXCOORD1;
    let x_363 : vec4<f32> = x_20.unity_ProbeVolumeWorldToObject[1i];
    u_xlat7 = (vec3<f32>(x_359.y, x_359.y, x_359.y) * vec3<f32>(x_363.x, x_363.y, x_363.z));
    let x_367 : vec4<f32> = x_20.unity_ProbeVolumeWorldToObject[0i];
    let x_369 : vec3<f32> = vs_TEXCOORD1;
    let x_372 : vec3<f32> = u_xlat7;
    u_xlat7 = ((vec3<f32>(x_367.x, x_367.y, x_367.z) * vec3<f32>(x_369.x, x_369.x, x_369.x)) + x_372);
    let x_375 : vec4<f32> = x_20.unity_ProbeVolumeWorldToObject[2i];
    let x_377 : vec3<f32> = vs_TEXCOORD1;
    let x_380 : vec3<f32> = u_xlat7;
    u_xlat7 = ((vec3<f32>(x_375.x, x_375.y, x_375.z) * vec3<f32>(x_377.z, x_377.z, x_377.z)) + x_380);
    let x_382 : vec3<f32> = u_xlat7;
    let x_384 : vec4<f32> = x_20.unity_ProbeVolumeWorldToObject[3i];
    u_xlat7 = (x_382 + vec3<f32>(x_384.x, x_384.y, x_384.z));
    let x_387 : bool = u_xlatb1;
    if (x_387) {
      let x_391 : vec3<f32> = u_xlat7;
      x_388 = x_391;
    } else {
      let x_393 : vec3<f32> = vs_TEXCOORD1;
      x_388 = x_393;
    }
    let x_394 : vec3<f32> = x_388;
    let x_395 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_394.x, x_394.y, x_394.z, x_395.w);
    let x_397 : vec4<f32> = u_xlat1;
    let x_401 : vec3<f32> = x_20.unity_ProbeVolumeMin;
    let x_403 : vec3<f32> = (vec3<f32>(x_397.x, x_397.y, x_397.z) + -(x_401));
    let x_404 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_403.x, x_403.y, x_403.z, x_404.w);
    let x_406 : vec4<f32> = u_xlat1;
    let x_410 : vec3<f32> = x_20.unity_ProbeVolumeSizeInv;
    let x_411 : vec3<f32> = (vec3<f32>(x_406.x, x_406.y, x_406.z) * x_410);
    let x_412 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_412.x, x_411.x, x_411.y, x_411.z);
    let x_415 : f32 = u_xlat1.y;
    u_xlat7.x = ((x_415 * 0.25f) + 0.75f);
    let x_421 : f32 = x_20.unity_ProbeVolumeParams.z;
    u_xlat20 = ((x_421 * 0.5f) + 0.75f);
    let x_425 : f32 = u_xlat7.x;
    let x_426 : f32 = u_xlat20;
    u_xlat1.x = max(x_425, x_426);
    let x_434 : vec4<f32> = u_xlat1;
    let x_436 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_434.x, x_434.z, x_434.w));
    u_xlat1 = x_436;
  } else {
    u_xlat1.x = 1.0f;
    u_xlat1.y = 1.0f;
    u_xlat1.z = 1.0f;
    u_xlat1.w = 1.0f;
  }
  let x_442 : vec4<f32> = u_xlat1;
  let x_445 : vec4<f32> = x_20.unity_OcclusionMaskSelector;
  u_xlat1.x = dot(x_442, x_445);
  let x_449 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_449, 0.0f, 1.0f);
  let x_452 : vec3<f32> = vs_TEXCOORD1;
  let x_454 : vec4<f32> = x_20.x_LightPositionRange;
  u_xlat7 = (x_452 + -(vec3<f32>(x_454.x, x_454.y, x_454.z)));
  let x_459 : f32 = u_xlat7.y;
  let x_462 : f32 = u_xlat7.x;
  u_xlat20 = max(abs(x_459), abs(x_462));
  let x_466 : f32 = u_xlat7.z;
  let x_468 : f32 = u_xlat20;
  u_xlat20 = max(abs(x_466), x_468);
  let x_470 : f32 = u_xlat20;
  let x_472 : f32 = x_20.x_LightProjectionParams.z;
  u_xlat20 = (x_470 + -(x_472));
  let x_475 : f32 = u_xlat20;
  u_xlat20 = max(x_475, 0.00001f);
  let x_478 : f32 = u_xlat20;
  let x_480 : f32 = x_20.x_LightProjectionParams.w;
  u_xlat20 = (x_478 * x_480);
  let x_483 : f32 = x_20.x_LightProjectionParams.y;
  let x_484 : f32 = u_xlat20;
  u_xlat20 = (x_483 / x_484);
  let x_486 : f32 = u_xlat20;
  let x_488 : f32 = x_20.x_LightProjectionParams.x;
  u_xlat20 = (x_486 + -(x_488));
  let x_491 : f32 = u_xlat20;
  u_xlat20 = (-(x_491) + 1.0f);
  let x_495 : vec3<f32> = u_xlat7;
  let x_496 : f32 = u_xlat20;
  txVec0 = vec4<f32>(x_495.x, x_495.y, x_495.z, x_496);
  let x_509 : vec4<f32> = txVec0;
  let x_511 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_509.xyz, x_509.w);
  u_xlat7.x = x_511;
  let x_515 : f32 = x_20.x_LightShadowData.x;
  u_xlat13 = (-(x_515) + 1.0f);
  let x_519 : f32 = u_xlat7.x;
  let x_520 : f32 = u_xlat13;
  let x_523 : f32 = x_20.x_LightShadowData.x;
  u_xlat7.x = ((x_519 * x_520) + x_523);
  let x_527 : f32 = u_xlat7.x;
  let x_530 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_527) + x_530);
  let x_533 : f32 = u_xlat18;
  let x_535 : f32 = u_xlat1.x;
  let x_538 : f32 = u_xlat7.x;
  u_xlat18 = ((x_533 * x_535) + x_538);
  let x_540 : vec4<f32> = u_xlat4;
  let x_542 : vec4<f32> = u_xlat4;
  u_xlat1.x = dot(vec3<f32>(x_540.x, x_540.y, x_540.z), vec3<f32>(x_542.x, x_542.y, x_542.z));
  let x_551 : vec4<f32> = u_xlat1;
  let x_553 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_551.x, x_551.x));
  u_xlat1.x = x_553.x;
  let x_556 : f32 = u_xlat18;
  let x_558 : f32 = u_xlat1.x;
  u_xlat18 = (x_556 * x_558);
  let x_560 : f32 = u_xlat18;
  let x_564 : vec4<f32> = x_20.x_LightColor0;
  let x_566 : vec3<f32> = (vec3<f32>(x_560, x_560, x_560) * vec3<f32>(x_564.x, x_564.y, x_564.z));
  let x_567 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_566.x, x_566.y, x_566.z, x_567.w);
  let x_570 : vec3<f32> = vs_TEXCOORD0;
  let x_571 : vec3<f32> = vs_TEXCOORD0;
  u_xlat18 = dot(x_570, x_571);
  let x_573 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_573);
  let x_575 : f32 = u_xlat18;
  let x_577 : vec3<f32> = vs_TEXCOORD0;
  let x_578 : vec3<f32> = (vec3<f32>(x_575, x_575, x_575) * x_577);
  let x_579 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_578.x, x_578.y, x_578.z, x_579.w);
  let x_581 : vec4<f32> = u_xlat3;
  let x_585 : vec3<f32> = (vec3<f32>(x_581.x, x_581.y, x_581.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_586 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_585.x, x_585.y, x_585.z, x_586.w);
  let x_590 : f32 = x_20.x_Metallic;
  let x_592 : f32 = x_20.x_Metallic;
  let x_594 : f32 = x_20.x_Metallic;
  let x_595 : vec3<f32> = vec3<f32>(x_590, x_592, x_594);
  let x_600 : vec4<f32> = u_xlat5;
  let x_605 : vec3<f32> = ((vec3<f32>(x_595.x, x_595.y, x_595.z) * vec3<f32>(x_600.x, x_600.y, x_600.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_606 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_605.x, x_605.y, x_605.z, x_606.w);
  let x_609 : f32 = x_20.x_Metallic;
  u_xlat18 = ((-(x_609) * 0.959999979f) + 0.959999979f);
  let x_614 : vec3<f32> = u_xlat2;
  let x_615 : vec4<f32> = u_xlat4;
  u_xlat19 = dot(x_614, vec3<f32>(x_615.x, x_615.y, x_615.z));
  let x_618 : f32 = u_xlat19;
  let x_619 : f32 = u_xlat19;
  u_xlat19 = (x_618 + x_619);
  let x_621 : vec4<f32> = u_xlat4;
  let x_623 : f32 = u_xlat19;
  let x_627 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_621.x, x_621.y, x_621.z) * -(vec3<f32>(x_623, x_623, x_623))) + x_627);
  let x_629 : vec4<f32> = u_xlat4;
  let x_631 : vec3<f32> = u_xlat0;
  u_xlat19 = dot(vec3<f32>(x_629.x, x_629.y, x_629.z), x_631);
  let x_633 : f32 = u_xlat19;
  u_xlat19 = clamp(x_633, 0.0f, 1.0f);
  let x_635 : vec3<f32> = u_xlat2;
  let x_636 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_635, x_636);
  let x_640 : f32 = u_xlat0.x;
  let x_642 : f32 = u_xlat0.x;
  u_xlat0.x = (x_640 * x_642);
  let x_646 : f32 = u_xlat0.x;
  let x_648 : f32 = u_xlat0.x;
  u_xlat0.x = (x_646 * x_648);
  let x_653 : f32 = x_20.x_Glossiness;
  let x_656 : f32 = u_xlat3.w;
  u_xlat0.y = ((-(x_653) * x_656) + 1.0f);
  let x_665 : vec3<f32> = u_xlat0;
  let x_667 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_665.x, x_665.y));
  u_xlat0.x = x_667.x;
  let x_671 : f32 = u_xlat0.x;
  u_xlat0.x = (x_671 * 16.0f);
  let x_674 : vec4<f32> = u_xlat5;
  let x_676 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_674.x, x_674.y, x_674.z) * vec3<f32>(x_676.x, x_676.x, x_676.x));
  let x_679 : vec4<f32> = u_xlat3;
  let x_681 : f32 = u_xlat18;
  let x_684 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_679.x, x_679.y, x_679.z) * vec3<f32>(x_681, x_681, x_681)) + x_684);
  let x_686 : f32 = u_xlat19;
  let x_688 : vec4<f32> = u_xlat1;
  let x_690 : vec3<f32> = (vec3<f32>(x_686, x_686, x_686) * vec3<f32>(x_688.x, x_688.y, x_688.z));
  let x_691 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_690.x, x_690.y, x_690.z, x_691.w);
  let x_695 : vec3<f32> = u_xlat0;
  let x_696 : vec4<f32> = u_xlat1;
  let x_698 : vec3<f32> = (x_695 * vec3<f32>(x_696.x, x_696.y, x_696.z));
  let x_699 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_698.x, x_698.y, x_698.z, x_699.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_COLOR0_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

