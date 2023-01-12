struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
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

@group(0) @binding(9) var sampler_VolumeNoise : sampler;

@group(0) @binding(1) var x_AlbedoRamp1 : texture_2d<f32>;

@group(0) @binding(7) var sampler_AlbedoRamp1 : sampler;

@group(0) @binding(2) var x_AlbedoRamp2 : texture_2d<f32>;

@group(0) @binding(8) var sampler_AlbedoRamp2 : sampler;

var<private> vs_COLOR0 : vec4<f32>;

@group(0) @binding(4) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(5) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD0 : vec3<f32>;

@group(0) @binding(3) var unity_NHxRoughness : texture_2d<f32>;

@group(0) @binding(6) var samplerunity_NHxRoughness : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat15 : f32;
  var u_xlati1 : vec4<i32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat1 : vec4<f32>;
  var indexable_1 : array<vec4<u32>, 4u>;
  var u_xlat6 : f32;
  var indexable_2 : array<vec4<u32>, 4u>;
  var u_xlat11 : f32;
  var indexable_3 : array<vec4<u32>, 4u>;
  var u_xlatb15 : bool;
  var x_278 : vec3<f32>;
  var u_xlat7 : f32;
  var u_xlat4 : vec3<f32>;
  var u_xlat17 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD1;
  let x_24 : vec3<f32> = x_20.x_WorldSpaceCameraPos;
  u_xlat0 = (-(x_12) + x_24);
  let x_28 : vec3<f32> = u_xlat0;
  let x_29 : vec3<f32> = u_xlat0;
  u_xlat15 = dot(x_28, x_29);
  let x_31 : f32 = u_xlat15;
  u_xlat15 = inverseSqrt(x_31);
  let x_33 : f32 = u_xlat15;
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
  u_xlat15 = dot(x_79, bitcast<vec4<f32>>(x_98));
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
  u_xlat6 = dot(x_139, bitcast<vec4<f32>>(x_145));
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
  u_xlat11 = dot(x_162, bitcast<vec4<f32>>(x_168));
  let x_172 : f32 = u_xlat1.x;
  let x_175 : f32 = u_xlat15;
  u_xlat15 = ((x_172 * 0.5f) + x_175);
  let x_177 : f32 = u_xlat6;
  let x_180 : f32 = u_xlat15;
  u_xlat15 = ((x_177 * 0.25f) + x_180);
  let x_182 : f32 = u_xlat11;
  let x_185 : f32 = u_xlat15;
  u_xlat15 = ((x_182 * 0.125f) + x_185);
  let x_187 : f32 = u_xlat15;
  u_xlat15 = (x_187 * 0.533333361f);
  let x_198 : f32 = u_xlat15;
  let x_201 : vec4<f32> = textureSample(x_AlbedoRamp1, sampler_AlbedoRamp1, vec2<f32>(x_198, x_198));
  u_xlat1 = x_201;
  let x_207 : f32 = u_xlat15;
  let x_209 : vec4<f32> = textureSample(x_AlbedoRamp2, sampler_AlbedoRamp2, vec2<f32>(x_207, x_207));
  u_xlat2 = x_209;
  let x_210 : vec4<f32> = u_xlat1;
  let x_212 : vec4<f32> = u_xlat2;
  u_xlat2 = (-(x_210) + x_212);
  let x_216 : vec4<f32> = vs_COLOR0;
  let x_218 : vec4<f32> = u_xlat2;
  let x_220 : vec4<f32> = u_xlat1;
  u_xlat1 = ((vec4<f32>(x_216.w, x_216.w, x_216.w, x_216.w) * x_218) + x_220);
  let x_226 : f32 = x_20.unity_ProbeVolumeParams.x;
  u_xlatb15 = (x_226 == 1.0f);
  let x_229 : bool = u_xlatb15;
  if (x_229) {
    let x_233 : f32 = x_20.unity_ProbeVolumeParams.y;
    u_xlatb15 = (x_233 == 1.0f);
    let x_235 : vec3<f32> = vs_TEXCOORD1;
    let x_241 : vec4<f32> = x_20.unity_ProbeVolumeWorldToObject[1i];
    let x_243 : vec3<f32> = (vec3<f32>(x_235.y, x_235.y, x_235.y) * vec3<f32>(x_241.x, x_241.y, x_241.z));
    let x_244 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_243.x, x_243.y, x_243.z, x_244.w);
    let x_247 : vec4<f32> = x_20.unity_ProbeVolumeWorldToObject[0i];
    let x_249 : vec3<f32> = vs_TEXCOORD1;
    let x_252 : vec4<f32> = u_xlat2;
    let x_254 : vec3<f32> = ((vec3<f32>(x_247.x, x_247.y, x_247.z) * vec3<f32>(x_249.x, x_249.x, x_249.x)) + vec3<f32>(x_252.x, x_252.y, x_252.z));
    let x_255 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_254.x, x_254.y, x_254.z, x_255.w);
    let x_259 : vec4<f32> = x_20.unity_ProbeVolumeWorldToObject[2i];
    let x_261 : vec3<f32> = vs_TEXCOORD1;
    let x_264 : vec4<f32> = u_xlat2;
    let x_266 : vec3<f32> = ((vec3<f32>(x_259.x, x_259.y, x_259.z) * vec3<f32>(x_261.z, x_261.z, x_261.z)) + vec3<f32>(x_264.x, x_264.y, x_264.z));
    let x_267 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_266.x, x_266.y, x_266.z, x_267.w);
    let x_269 : vec4<f32> = u_xlat2;
    let x_272 : vec4<f32> = x_20.unity_ProbeVolumeWorldToObject[3i];
    let x_274 : vec3<f32> = (vec3<f32>(x_269.x, x_269.y, x_269.z) + vec3<f32>(x_272.x, x_272.y, x_272.z));
    let x_275 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_274.x, x_274.y, x_274.z, x_275.w);
    let x_277 : bool = u_xlatb15;
    if (x_277) {
      let x_281 : vec4<f32> = u_xlat2;
      x_278 = vec3<f32>(x_281.x, x_281.y, x_281.z);
    } else {
      let x_284 : vec3<f32> = vs_TEXCOORD1;
      x_278 = x_284;
    }
    let x_285 : vec3<f32> = x_278;
    let x_286 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_285.x, x_285.y, x_285.z, x_286.w);
    let x_288 : vec4<f32> = u_xlat2;
    let x_292 : vec3<f32> = x_20.unity_ProbeVolumeMin;
    let x_294 : vec3<f32> = (vec3<f32>(x_288.x, x_288.y, x_288.z) + -(x_292));
    let x_295 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_294.x, x_294.y, x_294.z, x_295.w);
    let x_297 : vec4<f32> = u_xlat2;
    let x_301 : vec3<f32> = x_20.unity_ProbeVolumeSizeInv;
    let x_302 : vec3<f32> = (vec3<f32>(x_297.x, x_297.y, x_297.z) * x_301);
    let x_303 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_303.x, x_302.x, x_302.y, x_302.z);
    let x_306 : f32 = u_xlat2.y;
    u_xlat15 = ((x_306 * 0.25f) + 0.75f);
    let x_312 : f32 = x_20.unity_ProbeVolumeParams.z;
    u_xlat7 = ((x_312 * 0.5f) + 0.75f);
    let x_315 : f32 = u_xlat15;
    let x_316 : f32 = u_xlat7;
    u_xlat2.x = max(x_315, x_316);
    let x_324 : vec4<f32> = u_xlat2;
    let x_326 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_324.x, x_324.z, x_324.w));
    u_xlat2 = x_326;
  } else {
    u_xlat2.x = 1.0f;
    u_xlat2.y = 1.0f;
    u_xlat2.z = 1.0f;
    u_xlat2.w = 1.0f;
  }
  let x_332 : vec4<f32> = u_xlat2;
  let x_334 : vec4<f32> = x_20.unity_OcclusionMaskSelector;
  u_xlat15 = dot(x_332, x_334);
  let x_336 : f32 = u_xlat15;
  u_xlat15 = clamp(x_336, 0.0f, 1.0f);
  let x_339 : f32 = u_xlat15;
  let x_343 : vec4<f32> = x_20.x_LightColor0;
  let x_345 : vec3<f32> = (vec3<f32>(x_339, x_339, x_339) * vec3<f32>(x_343.x, x_343.y, x_343.z));
  let x_346 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_345.x, x_345.y, x_345.z, x_346.w);
  let x_349 : vec3<f32> = vs_TEXCOORD0;
  let x_350 : vec3<f32> = vs_TEXCOORD0;
  u_xlat15 = dot(x_349, x_350);
  let x_352 : f32 = u_xlat15;
  u_xlat15 = inverseSqrt(x_352);
  let x_354 : f32 = u_xlat15;
  let x_356 : vec3<f32> = vs_TEXCOORD0;
  let x_357 : vec3<f32> = (vec3<f32>(x_354, x_354, x_354) * x_356);
  let x_358 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_357.x, x_357.y, x_357.z, x_358.w);
  let x_361 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec3<f32>(x_361.x, x_361.y, x_361.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_368 : f32 = x_20.x_Metallic;
  let x_370 : f32 = x_20.x_Metallic;
  let x_372 : f32 = x_20.x_Metallic;
  let x_373 : vec3<f32> = vec3<f32>(x_368, x_370, x_372);
  let x_378 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_373.x, x_373.y, x_373.z) * x_378) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_384 : f32 = x_20.x_Metallic;
  u_xlat15 = ((-(x_384) * 0.959999979f) + 0.959999979f);
  let x_390 : vec3<f32> = u_xlat0;
  let x_391 : vec4<f32> = u_xlat3;
  u_xlat17 = dot(x_390, vec3<f32>(x_391.x, x_391.y, x_391.z));
  let x_394 : f32 = u_xlat17;
  let x_395 : f32 = u_xlat17;
  u_xlat17 = (x_394 + x_395);
  let x_397 : vec4<f32> = u_xlat3;
  let x_399 : f32 = u_xlat17;
  let x_403 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_397.x, x_397.y, x_397.z) * -(vec3<f32>(x_399, x_399, x_399))) + x_403);
  let x_405 : vec4<f32> = u_xlat3;
  let x_408 : vec4<f32> = x_20.x_WorldSpaceLightPos0;
  u_xlat17 = dot(vec3<f32>(x_405.x, x_405.y, x_405.z), vec3<f32>(x_408.x, x_408.y, x_408.z));
  let x_411 : f32 = u_xlat17;
  u_xlat17 = clamp(x_411, 0.0f, 1.0f);
  let x_413 : vec3<f32> = u_xlat0;
  let x_415 : vec4<f32> = x_20.x_WorldSpaceLightPos0;
  u_xlat0.x = dot(x_413, vec3<f32>(x_415.x, x_415.y, x_415.z));
  let x_420 : f32 = u_xlat0.x;
  let x_422 : f32 = u_xlat0.x;
  u_xlat0.x = (x_420 * x_422);
  let x_426 : f32 = u_xlat0.x;
  let x_428 : f32 = u_xlat0.x;
  u_xlat0.x = (x_426 * x_428);
  let x_433 : f32 = x_20.x_Glossiness;
  let x_436 : f32 = u_xlat1.w;
  u_xlat0.y = ((-(x_433) * x_436) + 1.0f);
  let x_445 : vec3<f32> = u_xlat0;
  let x_447 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_445.x, x_445.y));
  u_xlat0.x = x_447.x;
  let x_451 : f32 = u_xlat0.x;
  u_xlat0.x = (x_451 * 16.0f);
  let x_454 : vec3<f32> = u_xlat4;
  let x_455 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_454 * vec3<f32>(x_455.x, x_455.x, x_455.x));
  let x_458 : vec4<f32> = u_xlat1;
  let x_460 : f32 = u_xlat15;
  let x_463 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_458.x, x_458.y, x_458.z) * vec3<f32>(x_460, x_460, x_460)) + x_463);
  let x_465 : f32 = u_xlat17;
  let x_467 : vec4<f32> = u_xlat2;
  let x_469 : vec3<f32> = (vec3<f32>(x_465, x_465, x_465) * vec3<f32>(x_467.x, x_467.y, x_467.z));
  let x_470 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_469.x, x_469.y, x_469.z, x_470.w);
  let x_474 : vec3<f32> = u_xlat0;
  let x_475 : vec4<f32> = u_xlat1;
  let x_477 : vec3<f32> = (x_474 * vec3<f32>(x_475.x, x_475.y, x_475.z));
  let x_478 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_477.x, x_477.y, x_477.z, x_478.w);
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

