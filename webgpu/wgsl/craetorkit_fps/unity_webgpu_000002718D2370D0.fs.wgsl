type Arr = array<mat4x4<f32>, 4u>;

struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  unity_WorldToShadow : Arr,
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
  x_ShadowMapTexture_TexelSize : vec4<f32>,
  unity_WorldToLight : mat4x4<f32>,
  x_Glossiness : f32,
  x_Metallic : f32,
  x_Scale : f32,
  @size(4)
  padding_3 : u32,
  x_OctaveIndex : vec4<i32>,
}

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_23 : PGlobals;

@group(0) @binding(0) var x_VolumeNoise : texture_3d<f32>;

@group(0) @binding(13) var sampler_VolumeNoise : sampler;

@group(0) @binding(1) var x_AlbedoRamp1 : texture_2d<f32>;

@group(0) @binding(11) var sampler_AlbedoRamp1 : sampler;

@group(0) @binding(2) var x_AlbedoRamp2 : texture_2d<f32>;

@group(0) @binding(12) var sampler_AlbedoRamp2 : sampler;

var<private> vs_COLOR0 : vec4<f32>;

@group(0) @binding(5) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(7) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(6) var x_ShadowMapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_ShadowMapTexture : sampler_comparison;

@group(0) @binding(3) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(9) var sampler_LightTexture0 : sampler;

@group(0) @binding(4) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(10) var sampler_LightTextureB0 : sampler;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat33 : f32;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat34 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlati4 : vec4<i32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat35 : f32;
  var indexable_1 : array<vec4<u32>, 4u>;
  var u_xlat36 : f32;
  var indexable_2 : array<vec4<u32>, 4u>;
  var u_xlat4 : vec4<f32>;
  var indexable_3 : array<vec4<u32>, 4u>;
  var u_xlatb2 : bool;
  var u_xlat13 : vec3<f32>;
  var x_376 : vec3<f32>;
  var u_xlatb13 : bool;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat28 : vec2<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var u_xlat24 : f32;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlat11 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlat12 : f32;
  var u_xlatb33 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD1;
  let x_27 : vec4<f32> = x_23.x_WorldSpaceLightPos0;
  u_xlat0 = (-(x_12) + vec3<f32>(x_27.x, x_27.y, x_27.z));
  let x_32 : vec3<f32> = u_xlat0;
  let x_33 : vec3<f32> = u_xlat0;
  u_xlat33 = dot(x_32, x_33);
  let x_35 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_35);
  let x_38 : f32 = u_xlat33;
  let x_40 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_38, x_38, x_38) * x_40);
  let x_44 : vec3<f32> = vs_TEXCOORD1;
  let x_49 : vec3<f32> = x_23.x_WorldSpaceCameraPos;
  let x_50 : vec3<f32> = (-(x_44) + x_49);
  let x_51 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_50.x, x_50.y, x_50.z, x_51.w);
  let x_54 : vec4<f32> = u_xlat2;
  let x_56 : vec4<f32> = u_xlat2;
  u_xlat34 = dot(vec3<f32>(x_54.x, x_54.y, x_54.z), vec3<f32>(x_56.x, x_56.y, x_56.z));
  let x_59 : f32 = u_xlat34;
  u_xlat34 = inverseSqrt(x_59);
  let x_62 : f32 = u_xlat34;
  let x_64 : vec4<f32> = u_xlat2;
  u_xlat3 = (vec3<f32>(x_62, x_62, x_62) * vec3<f32>(x_64.x, x_64.y, x_64.z));
  let x_72 : vec4<i32> = x_23.x_OctaveIndex;
  u_xlati4 = min(x_72, vec4<i32>(3i, 3i, 3i, 3i));
  let x_77 : vec3<f32> = vs_TEXCOORD1;
  let x_81 : f32 = x_23.x_Scale;
  let x_83 : f32 = x_23.x_Scale;
  let x_85 : f32 = x_23.x_Scale;
  let x_86 : vec3<f32> = vec3<f32>(x_81, x_83, x_85);
  let x_91 : vec3<f32> = (x_77 * vec3<f32>(x_86.x, x_86.y, x_86.z));
  let x_92 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_91.x, x_91.y, x_91.z, x_92.w);
  let x_105 : vec4<f32> = u_xlat5;
  let x_107 : vec4<f32> = textureSample(x_VolumeNoise, sampler_VolumeNoise, vec3<f32>(x_105.x, x_105.y, x_105.z));
  u_xlat6 = x_107;
  let x_108 : vec4<f32> = u_xlat6;
  let x_120 : i32 = u_xlati4.x;
  indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
  let x_125 : vec4<u32> = indexable[x_120];
  u_xlat34 = dot(x_108, bitcast<vec4<f32>>(x_125));
  let x_128 : vec4<f32> = u_xlat5;
  let x_132 : vec3<f32> = (vec3<f32>(x_128.x, x_128.y, x_128.z) * vec3<f32>(4.0f, 4.0f, 4.0f));
  let x_133 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_132.x, x_132.y, x_132.z, x_133.w);
  let x_138 : vec4<f32> = u_xlat6;
  let x_140 : vec4<f32> = textureSample(x_VolumeNoise, sampler_VolumeNoise, vec3<f32>(x_138.x, x_138.y, x_138.z));
  u_xlat6 = x_140;
  let x_142 : vec4<f32> = u_xlat6;
  let x_145 : i32 = u_xlati4.y;
  indexable_1 = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
  let x_148 : vec4<u32> = indexable_1[x_145];
  u_xlat35 = dot(x_142, bitcast<vec4<f32>>(x_148));
  let x_151 : vec4<f32> = u_xlat5;
  let x_155 : vec3<f32> = (vec3<f32>(x_151.x, x_151.y, x_151.z) * vec3<f32>(16.0f, 16.0f, 16.0f));
  let x_156 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_155.x, x_155.y, x_155.z, x_156.w);
  let x_161 : vec4<f32> = u_xlat6;
  let x_163 : vec4<f32> = textureSample(x_VolumeNoise, sampler_VolumeNoise, vec3<f32>(x_161.x, x_161.y, x_161.z));
  u_xlat6 = x_163;
  let x_165 : vec4<f32> = u_xlat6;
  let x_168 : i32 = u_xlati4.z;
  indexable_2 = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
  let x_171 : vec4<u32> = indexable_2[x_168];
  u_xlat36 = dot(x_165, bitcast<vec4<f32>>(x_171));
  let x_175 : vec4<f32> = u_xlat5;
  let x_179 : vec3<f32> = (vec3<f32>(x_175.x, x_175.y, x_175.z) * vec3<f32>(256.0f, 256.0f, 256.0f));
  let x_180 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_179.x, x_179.y, x_179.z, x_180.w);
  let x_185 : vec4<f32> = u_xlat4;
  let x_187 : vec4<f32> = textureSample(x_VolumeNoise, sampler_VolumeNoise, vec3<f32>(x_185.x, x_185.y, x_185.z));
  u_xlat5 = x_187;
  let x_188 : vec4<f32> = u_xlat5;
  let x_191 : i32 = u_xlati4.w;
  indexable_3 = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
  let x_194 : vec4<u32> = indexable_3[x_191];
  u_xlat4.x = dot(x_188, bitcast<vec4<f32>>(x_194));
  let x_198 : f32 = u_xlat35;
  let x_201 : f32 = u_xlat34;
  u_xlat34 = ((x_198 * 0.5f) + x_201);
  let x_203 : f32 = u_xlat36;
  let x_206 : f32 = u_xlat34;
  u_xlat34 = ((x_203 * 0.25f) + x_206);
  let x_209 : f32 = u_xlat4.x;
  let x_212 : f32 = u_xlat34;
  u_xlat34 = ((x_209 * 0.125f) + x_212);
  let x_214 : f32 = u_xlat34;
  u_xlat34 = (x_214 * 0.533333361f);
  let x_225 : f32 = u_xlat34;
  let x_228 : vec4<f32> = textureSample(x_AlbedoRamp1, sampler_AlbedoRamp1, vec2<f32>(x_225, x_225));
  u_xlat4 = x_228;
  let x_234 : f32 = u_xlat34;
  let x_236 : vec4<f32> = textureSample(x_AlbedoRamp2, sampler_AlbedoRamp2, vec2<f32>(x_234, x_234));
  u_xlat5 = x_236;
  let x_237 : vec4<f32> = u_xlat4;
  let x_239 : vec4<f32> = u_xlat5;
  u_xlat5 = (-(x_237) + x_239);
  let x_243 : vec4<f32> = vs_COLOR0;
  let x_245 : vec4<f32> = u_xlat5;
  let x_247 : vec4<f32> = u_xlat4;
  u_xlat4 = ((vec4<f32>(x_243.w, x_243.w, x_243.w, x_243.w) * x_245) + x_247);
  let x_249 : vec3<f32> = vs_TEXCOORD1;
  let x_253 : vec4<f32> = x_23.unity_WorldToLight[1i];
  u_xlat5 = (vec4<f32>(x_249.y, x_249.y, x_249.y, x_249.y) * x_253);
  let x_256 : vec4<f32> = x_23.unity_WorldToLight[0i];
  let x_257 : vec3<f32> = vs_TEXCOORD1;
  let x_260 : vec4<f32> = u_xlat5;
  u_xlat5 = ((x_256 * vec4<f32>(x_257.x, x_257.x, x_257.x, x_257.x)) + x_260);
  let x_264 : vec4<f32> = x_23.unity_WorldToLight[2i];
  let x_265 : vec3<f32> = vs_TEXCOORD1;
  let x_268 : vec4<f32> = u_xlat5;
  u_xlat5 = ((x_264 * vec4<f32>(x_265.z, x_265.z, x_265.z, x_265.z)) + x_268);
  let x_270 : vec4<f32> = u_xlat5;
  let x_272 : vec4<f32> = x_23.unity_WorldToLight[3i];
  u_xlat5 = (x_270 + x_272);
  let x_276 : f32 = x_23.unity_MatrixV[0i].z;
  u_xlat6.x = x_276;
  let x_279 : f32 = x_23.unity_MatrixV[1i].z;
  u_xlat6.y = x_279;
  let x_282 : f32 = x_23.unity_MatrixV[2i].z;
  u_xlat6.z = x_282;
  let x_284 : vec4<f32> = u_xlat2;
  let x_286 : vec4<f32> = u_xlat6;
  u_xlat34 = dot(vec3<f32>(x_284.x, x_284.y, x_284.z), vec3<f32>(x_286.x, x_286.y, x_286.z));
  let x_289 : vec3<f32> = vs_TEXCOORD1;
  let x_292 : vec4<f32> = x_23.unity_ShadowFadeCenterAndType;
  let x_295 : vec3<f32> = (x_289 + -(vec3<f32>(x_292.x, x_292.y, x_292.z)));
  let x_296 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_295.x, x_295.y, x_295.z, x_296.w);
  let x_298 : vec4<f32> = u_xlat2;
  let x_300 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_298.x, x_298.y, x_298.z), vec3<f32>(x_300.x, x_300.y, x_300.z));
  let x_305 : f32 = u_xlat2.x;
  u_xlat2.x = sqrt(x_305);
  let x_308 : f32 = u_xlat34;
  let x_311 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_308) + x_311);
  let x_315 : f32 = x_23.unity_ShadowFadeCenterAndType.w;
  let x_317 : f32 = u_xlat2.x;
  let x_319 : f32 = u_xlat34;
  u_xlat34 = ((x_315 * x_317) + x_319);
  let x_321 : f32 = u_xlat34;
  let x_324 : f32 = x_23.x_LightShadowData.z;
  let x_327 : f32 = x_23.x_LightShadowData.w;
  u_xlat34 = ((x_321 * x_324) + x_327);
  let x_329 : f32 = u_xlat34;
  u_xlat34 = clamp(x_329, 0.0f, 1.0f);
  let x_338 : f32 = x_23.unity_ProbeVolumeParams.x;
  u_xlatb2 = (x_338 == 1.0f);
  let x_340 : bool = u_xlatb2;
  if (x_340) {
    let x_344 : f32 = x_23.unity_ProbeVolumeParams.y;
    u_xlatb2 = (x_344 == 1.0f);
    let x_347 : vec3<f32> = vs_TEXCOORD1;
    let x_351 : vec4<f32> = x_23.unity_ProbeVolumeWorldToObject[1i];
    u_xlat13 = (vec3<f32>(x_347.y, x_347.y, x_347.y) * vec3<f32>(x_351.x, x_351.y, x_351.z));
    let x_355 : vec4<f32> = x_23.unity_ProbeVolumeWorldToObject[0i];
    let x_357 : vec3<f32> = vs_TEXCOORD1;
    let x_360 : vec3<f32> = u_xlat13;
    u_xlat13 = ((vec3<f32>(x_355.x, x_355.y, x_355.z) * vec3<f32>(x_357.x, x_357.x, x_357.x)) + x_360);
    let x_363 : vec4<f32> = x_23.unity_ProbeVolumeWorldToObject[2i];
    let x_365 : vec3<f32> = vs_TEXCOORD1;
    let x_368 : vec3<f32> = u_xlat13;
    u_xlat13 = ((vec3<f32>(x_363.x, x_363.y, x_363.z) * vec3<f32>(x_365.z, x_365.z, x_365.z)) + x_368);
    let x_370 : vec3<f32> = u_xlat13;
    let x_372 : vec4<f32> = x_23.unity_ProbeVolumeWorldToObject[3i];
    u_xlat13 = (x_370 + vec3<f32>(x_372.x, x_372.y, x_372.z));
    let x_375 : bool = u_xlatb2;
    if (x_375) {
      let x_379 : vec3<f32> = u_xlat13;
      x_376 = x_379;
    } else {
      let x_381 : vec3<f32> = vs_TEXCOORD1;
      x_376 = x_381;
    }
    let x_382 : vec3<f32> = x_376;
    let x_383 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_382.x, x_382.y, x_382.z, x_383.w);
    let x_385 : vec4<f32> = u_xlat2;
    let x_389 : vec3<f32> = x_23.unity_ProbeVolumeMin;
    let x_391 : vec3<f32> = (vec3<f32>(x_385.x, x_385.y, x_385.z) + -(x_389));
    let x_392 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_391.x, x_391.y, x_391.z, x_392.w);
    let x_394 : vec4<f32> = u_xlat2;
    let x_398 : vec3<f32> = x_23.unity_ProbeVolumeSizeInv;
    let x_399 : vec3<f32> = (vec3<f32>(x_394.x, x_394.y, x_394.z) * x_398);
    let x_400 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_400.x, x_399.x, x_399.y, x_399.z);
    let x_403 : f32 = u_xlat2.y;
    u_xlat13.x = ((x_403 * 0.25f) + 0.75f);
    let x_409 : f32 = x_23.unity_ProbeVolumeParams.z;
    u_xlat36 = ((x_409 * 0.5f) + 0.75f);
    let x_413 : f32 = u_xlat13.x;
    let x_414 : f32 = u_xlat36;
    u_xlat2.x = max(x_413, x_414);
    let x_422 : vec4<f32> = u_xlat2;
    let x_424 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_422.x, x_422.z, x_422.w));
    u_xlat2 = x_424;
  } else {
    u_xlat2.x = 1.0f;
    u_xlat2.y = 1.0f;
    u_xlat2.z = 1.0f;
    u_xlat2.w = 1.0f;
  }
  let x_430 : vec4<f32> = u_xlat2;
  let x_432 : vec4<f32> = x_23.unity_OcclusionMaskSelector;
  u_xlat2.x = dot(x_430, x_432);
  let x_436 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_436, 0.0f, 1.0f);
  let x_440 : f32 = u_xlat34;
  u_xlatb13 = (x_440 < 0.99000001f);
  let x_443 : bool = u_xlatb13;
  if (x_443) {
    let x_446 : vec3<f32> = vs_TEXCOORD1;
    let x_449 : vec4<f32> = x_23.unity_WorldToShadow[0i][1i];
    u_xlat6 = (vec4<f32>(x_446.y, x_446.y, x_446.y, x_446.y) * x_449);
    let x_452 : vec4<f32> = x_23.unity_WorldToShadow[0i][0i];
    let x_453 : vec3<f32> = vs_TEXCOORD1;
    let x_456 : vec4<f32> = u_xlat6;
    u_xlat6 = ((x_452 * vec4<f32>(x_453.x, x_453.x, x_453.x, x_453.x)) + x_456);
    let x_459 : vec4<f32> = x_23.unity_WorldToShadow[0i][2i];
    let x_460 : vec3<f32> = vs_TEXCOORD1;
    let x_463 : vec4<f32> = u_xlat6;
    u_xlat6 = ((x_459 * vec4<f32>(x_460.z, x_460.z, x_460.z, x_460.z)) + x_463);
    let x_465 : vec4<f32> = u_xlat6;
    let x_467 : vec4<f32> = x_23.unity_WorldToShadow[0i][3i];
    u_xlat6 = (x_465 + x_467);
    let x_469 : vec4<f32> = u_xlat6;
    let x_471 : vec4<f32> = u_xlat6;
    u_xlat13 = (vec3<f32>(x_469.x, x_469.y, x_469.z) / vec3<f32>(x_471.w, x_471.w, x_471.w));
    let x_474 : vec3<f32> = u_xlat13;
    let x_478 : vec4<f32> = x_23.x_ShadowMapTexture_TexelSize;
    let x_482 : vec2<f32> = ((vec2<f32>(x_474.x, x_474.y) * vec2<f32>(x_478.z, x_478.w)) + vec2<f32>(0.5f, 0.5f));
    let x_483 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_482.x, x_482.y, x_483.z, x_483.w);
    let x_485 : vec4<f32> = u_xlat6;
    let x_487 : vec2<f32> = floor(vec2<f32>(x_485.x, x_485.y));
    let x_488 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_487.x, x_487.y, x_488.z, x_488.w);
    let x_490 : vec3<f32> = u_xlat13;
    let x_493 : vec4<f32> = x_23.x_ShadowMapTexture_TexelSize;
    let x_496 : vec4<f32> = u_xlat6;
    let x_499 : vec2<f32> = ((vec2<f32>(x_490.x, x_490.y) * vec2<f32>(x_493.z, x_493.w)) + -(vec2<f32>(x_496.x, x_496.y)));
    let x_500 : vec3<f32> = u_xlat13;
    u_xlat13 = vec3<f32>(x_499.x, x_499.y, x_500.z);
    let x_503 : vec3<f32> = u_xlat13;
    u_xlat7 = (vec4<f32>(x_503.x, x_503.x, x_503.y, x_503.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
    let x_508 : vec4<f32> = u_xlat7;
    let x_510 : vec4<f32> = u_xlat7;
    let x_512 : vec2<f32> = (vec2<f32>(x_508.x, x_508.z) * vec2<f32>(x_510.x, x_510.z));
    let x_513 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_512.x, x_513.y, x_513.z, x_512.y);
    let x_517 : vec4<f32> = u_xlat8;
    let x_520 : vec3<f32> = u_xlat13;
    u_xlat28 = ((vec2<f32>(x_517.x, x_517.w) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_520.x, x_520.y)));
    let x_524 : vec3<f32> = u_xlat13;
    let x_528 : vec2<f32> = (-(vec2<f32>(x_524.x, x_524.y)) + vec2<f32>(1.0f, 1.0f));
    let x_529 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_528.x, x_529.y, x_528.y, x_529.w);
    let x_532 : vec3<f32> = u_xlat13;
    let x_535 : vec2<f32> = min(vec2<f32>(x_532.x, x_532.y), vec2<f32>(0.0f, 0.0f));
    let x_536 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_535.x, x_535.y, x_536.z, x_536.w);
    let x_538 : vec4<f32> = u_xlat9;
    let x_541 : vec4<f32> = u_xlat9;
    let x_544 : vec4<f32> = u_xlat7;
    let x_546 : vec2<f32> = ((-(vec2<f32>(x_538.x, x_538.y)) * vec2<f32>(x_541.x, x_541.y)) + vec2<f32>(x_544.x, x_544.z));
    let x_547 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_546.x, x_547.y, x_546.y, x_547.w);
    let x_549 : vec3<f32> = u_xlat13;
    let x_551 : vec2<f32> = max(vec2<f32>(x_549.x, x_549.y), vec2<f32>(0.0f, 0.0f));
    let x_552 : vec3<f32> = u_xlat13;
    u_xlat13 = vec3<f32>(x_551.x, x_551.y, x_552.z);
    let x_554 : vec3<f32> = u_xlat13;
    let x_557 : vec3<f32> = u_xlat13;
    let x_560 : vec4<f32> = u_xlat7;
    let x_562 : vec2<f32> = ((-(vec2<f32>(x_554.x, x_554.y)) * vec2<f32>(x_557.x, x_557.y)) + vec2<f32>(x_560.y, x_560.w));
    let x_563 : vec3<f32> = u_xlat13;
    u_xlat13 = vec3<f32>(x_562.x, x_562.y, x_563.z);
    let x_566 : f32 = u_xlat28.x;
    u_xlat9.x = x_566;
    let x_569 : f32 = u_xlat7.x;
    u_xlat9.y = x_569;
    let x_572 : f32 = u_xlat13.x;
    u_xlat9.z = x_572;
    let x_575 : f32 = u_xlat8.x;
    u_xlat9.w = x_575;
    let x_577 : vec4<f32> = u_xlat9;
    u_xlat9 = (x_577 * vec4<f32>(0.444440007f, 0.444440007f, 0.444440007f, 0.222220004f));
    let x_583 : f32 = u_xlat28.y;
    u_xlat8.x = x_583;
    let x_586 : f32 = u_xlat7.z;
    u_xlat8.y = x_586;
    let x_589 : f32 = u_xlat13.y;
    u_xlat8.z = x_589;
    let x_591 : vec4<f32> = u_xlat8;
    u_xlat7 = (x_591 * vec4<f32>(0.444440007f, 0.444440007f, 0.444440007f, 0.222220004f));
    let x_593 : vec4<f32> = u_xlat9;
    let x_595 : vec4<f32> = u_xlat9;
    u_xlat8 = (vec4<f32>(x_593.y, x_593.w, x_593.y, x_593.w) + vec4<f32>(x_595.x, x_595.z, x_595.x, x_595.z));
    let x_599 : vec4<f32> = u_xlat7;
    let x_601 : vec4<f32> = u_xlat7;
    u_xlat10 = (vec4<f32>(x_599.y, x_599.y, x_599.w, x_599.w) + vec4<f32>(x_601.x, x_601.x, x_601.z, x_601.z));
    let x_604 : vec4<f32> = u_xlat9;
    let x_606 : vec4<f32> = u_xlat8;
    let x_608 : vec2<f32> = (vec2<f32>(x_604.y, x_604.w) / vec2<f32>(x_606.z, x_606.w));
    let x_609 : vec3<f32> = u_xlat13;
    u_xlat13 = vec3<f32>(x_608.x, x_608.y, x_609.z);
    let x_611 : vec3<f32> = u_xlat13;
    let x_615 : vec2<f32> = (vec2<f32>(x_611.x, x_611.y) + vec2<f32>(-1.5f, 0.5f));
    let x_616 : vec3<f32> = u_xlat13;
    u_xlat13 = vec3<f32>(x_615.x, x_615.y, x_616.z);
    let x_618 : vec4<f32> = u_xlat7;
    let x_620 : vec4<f32> = u_xlat10;
    u_xlat28 = (vec2<f32>(x_618.y, x_618.w) / vec2<f32>(x_620.y, x_620.w));
    let x_623 : vec2<f32> = u_xlat28;
    u_xlat28 = (x_623 + vec2<f32>(-1.5f, 0.5f));
    let x_625 : vec3<f32> = u_xlat13;
    let x_628 : vec4<f32> = x_23.x_ShadowMapTexture_TexelSize;
    let x_630 : vec2<f32> = (vec2<f32>(x_625.x, x_625.y) * vec2<f32>(x_628.x, x_628.x));
    let x_631 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_630.x, x_630.y, x_631.z, x_631.w);
    let x_633 : vec2<f32> = u_xlat28;
    let x_635 : vec4<f32> = x_23.x_ShadowMapTexture_TexelSize;
    let x_637 : vec2<f32> = (x_633 * vec2<f32>(x_635.y, x_635.y));
    let x_638 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_638.x, x_638.y, x_637.x, x_637.y);
    let x_640 : vec4<f32> = u_xlat8;
    let x_641 : vec4<f32> = u_xlat10;
    u_xlat8 = (x_640 * x_641);
    let x_643 : vec4<f32> = u_xlat6;
    let x_646 : vec4<f32> = x_23.x_ShadowMapTexture_TexelSize;
    let x_649 : vec4<f32> = u_xlat7;
    u_xlat9 = ((vec4<f32>(x_643.x, x_643.y, x_643.x, x_643.y) * vec4<f32>(x_646.x, x_646.y, x_646.x, x_646.y)) + vec4<f32>(x_649.x, x_649.z, x_649.y, x_649.z));
    let x_653 : vec4<f32> = u_xlat9;
    let x_654 : vec2<f32> = vec2<f32>(x_653.x, x_653.y);
    let x_656 : f32 = u_xlat13.z;
    txVec0 = vec3<f32>(x_654.x, x_654.y, x_656);
    let x_668 : vec3<f32> = txVec0;
    let x_670 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_668.xy, x_668.z);
    u_xlat13.x = x_670;
    let x_673 : vec4<f32> = u_xlat9;
    let x_674 : vec2<f32> = vec2<f32>(x_673.z, x_673.w);
    let x_676 : f32 = u_xlat13.z;
    txVec1 = vec3<f32>(x_674.x, x_674.y, x_676);
    let x_684 : vec3<f32> = txVec1;
    let x_686 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_684.xy, x_684.z);
    u_xlat24 = x_686;
    let x_687 : f32 = u_xlat24;
    let x_689 : f32 = u_xlat8.y;
    u_xlat24 = (x_687 * x_689);
    let x_692 : f32 = u_xlat8.x;
    let x_694 : f32 = u_xlat13.x;
    let x_696 : f32 = u_xlat24;
    u_xlat13.x = ((x_692 * x_694) + x_696);
    let x_699 : vec4<f32> = u_xlat6;
    let x_702 : vec4<f32> = x_23.x_ShadowMapTexture_TexelSize;
    let x_705 : vec4<f32> = u_xlat7;
    u_xlat6 = ((vec4<f32>(x_699.x, x_699.y, x_699.x, x_699.y) * vec4<f32>(x_702.x, x_702.y, x_702.x, x_702.y)) + vec4<f32>(x_705.x, x_705.w, x_705.y, x_705.w));
    let x_709 : vec4<f32> = u_xlat6;
    let x_710 : vec2<f32> = vec2<f32>(x_709.x, x_709.y);
    let x_712 : f32 = u_xlat13.z;
    txVec2 = vec3<f32>(x_710.x, x_710.y, x_712);
    let x_719 : vec3<f32> = txVec2;
    let x_721 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_719.xy, x_719.z);
    u_xlat24 = x_721;
    let x_723 : f32 = u_xlat8.z;
    let x_724 : f32 = u_xlat24;
    let x_727 : f32 = u_xlat13.x;
    u_xlat13.x = ((x_723 * x_724) + x_727);
    let x_731 : vec4<f32> = u_xlat6;
    let x_732 : vec2<f32> = vec2<f32>(x_731.z, x_731.w);
    let x_734 : f32 = u_xlat13.z;
    txVec3 = vec3<f32>(x_732.x, x_732.y, x_734);
    let x_741 : vec3<f32> = txVec3;
    let x_743 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_741.xy, x_741.z);
    u_xlat24 = x_743;
    let x_745 : f32 = u_xlat8.w;
    let x_746 : f32 = u_xlat24;
    let x_749 : f32 = u_xlat13.x;
    u_xlat13.x = ((x_745 * x_746) + x_749);
    let x_753 : f32 = x_23.x_LightShadowData.x;
    u_xlat24 = (-(x_753) + 1.0f);
    let x_757 : f32 = u_xlat13.x;
    let x_758 : f32 = u_xlat24;
    let x_761 : f32 = x_23.x_LightShadowData.x;
    u_xlat13.x = ((x_757 * x_758) + x_761);
  } else {
    u_xlat13.x = 1.0f;
  }
  let x_767 : f32 = u_xlat13.x;
  let x_770 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_767) + x_770);
  let x_773 : f32 = u_xlat34;
  let x_775 : f32 = u_xlat2.x;
  let x_778 : f32 = u_xlat13.x;
  u_xlat34 = ((x_773 * x_775) + x_778);
  let x_781 : f32 = u_xlat5.z;
  u_xlatb2 = (0.0f < x_781);
  let x_783 : bool = u_xlatb2;
  u_xlat2.x = select(0.0f, 1.0f, x_783);
  let x_786 : vec4<f32> = u_xlat5;
  let x_788 : vec4<f32> = u_xlat5;
  let x_790 : vec2<f32> = (vec2<f32>(x_786.x, x_786.y) / vec2<f32>(x_788.w, x_788.w));
  let x_791 : vec3<f32> = u_xlat13;
  u_xlat13 = vec3<f32>(x_790.x, x_790.y, x_791.z);
  let x_793 : vec3<f32> = u_xlat13;
  let x_795 : vec2<f32> = (vec2<f32>(x_793.x, x_793.y) + vec2<f32>(0.5f, 0.5f));
  let x_796 : vec3<f32> = u_xlat13;
  u_xlat13 = vec3<f32>(x_795.x, x_795.y, x_796.z);
  let x_803 : vec3<f32> = u_xlat13;
  let x_805 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_803.x, x_803.y));
  u_xlat13.x = x_805.w;
  let x_809 : f32 = u_xlat13.x;
  let x_811 : f32 = u_xlat2.x;
  u_xlat2.x = (x_809 * x_811);
  let x_814 : vec4<f32> = u_xlat5;
  let x_816 : vec4<f32> = u_xlat5;
  u_xlat13.x = dot(vec3<f32>(x_814.x, x_814.y, x_814.z), vec3<f32>(x_816.x, x_816.y, x_816.z));
  let x_825 : vec3<f32> = u_xlat13;
  let x_827 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_825.x, x_825.x));
  u_xlat13.x = x_827.x;
  let x_831 : f32 = u_xlat13.x;
  let x_833 : f32 = u_xlat2.x;
  u_xlat2.x = (x_831 * x_833);
  let x_836 : f32 = u_xlat34;
  let x_838 : f32 = u_xlat2.x;
  u_xlat34 = (x_836 * x_838);
  let x_840 : f32 = u_xlat34;
  let x_844 : vec4<f32> = x_23.x_LightColor0;
  let x_846 : vec3<f32> = (vec3<f32>(x_840, x_840, x_840) * vec3<f32>(x_844.x, x_844.y, x_844.z));
  let x_847 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_846.x, x_846.y, x_846.z, x_847.w);
  let x_850 : vec3<f32> = vs_TEXCOORD0;
  let x_851 : vec3<f32> = vs_TEXCOORD0;
  u_xlat34 = dot(x_850, x_851);
  let x_853 : f32 = u_xlat34;
  u_xlat34 = inverseSqrt(x_853);
  let x_855 : f32 = u_xlat34;
  let x_857 : vec3<f32> = vs_TEXCOORD0;
  let x_858 : vec3<f32> = (vec3<f32>(x_855, x_855, x_855) * x_857);
  let x_859 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_858.x, x_858.y, x_858.z, x_859.w);
  let x_861 : vec4<f32> = u_xlat4;
  let x_865 : vec3<f32> = (vec3<f32>(x_861.x, x_861.y, x_861.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_866 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_865.x, x_865.y, x_865.z, x_866.w);
  let x_870 : f32 = x_23.x_Metallic;
  let x_872 : f32 = x_23.x_Metallic;
  let x_874 : f32 = x_23.x_Metallic;
  let x_875 : vec3<f32> = vec3<f32>(x_870, x_872, x_874);
  let x_880 : vec4<f32> = u_xlat6;
  let x_885 : vec3<f32> = ((vec3<f32>(x_875.x, x_875.y, x_875.z) * vec3<f32>(x_880.x, x_880.y, x_880.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_886 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_885.x, x_885.y, x_885.z, x_886.w);
  let x_889 : f32 = x_23.x_Metallic;
  u_xlat34 = ((-(x_889) * 0.959999979f) + 0.959999979f);
  let x_894 : f32 = u_xlat34;
  let x_896 : vec4<f32> = u_xlat4;
  let x_898 : vec3<f32> = (vec3<f32>(x_894, x_894, x_894) * vec3<f32>(x_896.x, x_896.y, x_896.z));
  let x_899 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_898.x, x_898.y, x_898.z, x_899.w);
  let x_903 : f32 = x_23.x_Glossiness;
  let x_906 : f32 = u_xlat4.w;
  u_xlat34 = ((-(x_903) * x_906) + 1.0f);
  let x_909 : vec3<f32> = u_xlat0;
  let x_910 : f32 = u_xlat33;
  let x_913 : vec3<f32> = u_xlat3;
  u_xlat0 = ((x_909 * vec3<f32>(x_910, x_910, x_910)) + x_913);
  let x_915 : vec3<f32> = u_xlat0;
  let x_916 : vec3<f32> = u_xlat0;
  u_xlat33 = dot(x_915, x_916);
  let x_918 : f32 = u_xlat33;
  u_xlat33 = max(x_918, 0.001f);
  let x_921 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_921);
  let x_923 : f32 = u_xlat33;
  let x_925 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_923, x_923, x_923) * x_925);
  let x_927 : vec4<f32> = u_xlat5;
  let x_929 : vec3<f32> = u_xlat3;
  u_xlat33 = dot(vec3<f32>(x_927.x, x_927.y, x_927.z), x_929);
  let x_931 : vec4<f32> = u_xlat5;
  let x_933 : vec3<f32> = u_xlat1;
  u_xlat35 = dot(vec3<f32>(x_931.x, x_931.y, x_931.z), x_933);
  let x_935 : f32 = u_xlat35;
  u_xlat35 = clamp(x_935, 0.0f, 1.0f);
  let x_937 : vec4<f32> = u_xlat5;
  let x_939 : vec3<f32> = u_xlat0;
  u_xlat3.x = dot(vec3<f32>(x_937.x, x_937.y, x_937.z), x_939);
  let x_943 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_943, 0.0f, 1.0f);
  let x_946 : vec3<f32> = u_xlat1;
  let x_947 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_946, x_947);
  let x_951 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_951, 0.0f, 1.0f);
  let x_956 : f32 = u_xlat0.x;
  let x_958 : f32 = u_xlat0.x;
  u_xlat11.x = (x_956 * x_958);
  let x_961 : vec3<f32> = u_xlat11;
  let x_963 : f32 = u_xlat34;
  u_xlat11.x = dot(vec2<f32>(x_961.x, x_961.x), vec2<f32>(x_963, x_963));
  let x_968 : f32 = u_xlat11.x;
  u_xlat11.x = (x_968 + -0.5f);
  let x_973 : f32 = u_xlat35;
  u_xlat22 = (-(x_973) + 1.0f);
  let x_976 : f32 = u_xlat22;
  let x_977 : f32 = u_xlat22;
  u_xlat1.x = (x_976 * x_977);
  let x_981 : f32 = u_xlat1.x;
  let x_983 : f32 = u_xlat1.x;
  u_xlat1.x = (x_981 * x_983);
  let x_986 : f32 = u_xlat22;
  let x_988 : f32 = u_xlat1.x;
  u_xlat22 = (x_986 * x_988);
  let x_991 : f32 = u_xlat11.x;
  let x_992 : f32 = u_xlat22;
  u_xlat22 = ((x_991 * x_992) + 1.0f);
  let x_995 : f32 = u_xlat33;
  u_xlat1.x = (-(abs(x_995)) + 1.0f);
  let x_1002 : f32 = u_xlat1.x;
  let x_1004 : f32 = u_xlat1.x;
  u_xlat12 = (x_1002 * x_1004);
  let x_1006 : f32 = u_xlat12;
  let x_1007 : f32 = u_xlat12;
  u_xlat12 = (x_1006 * x_1007);
  let x_1010 : f32 = u_xlat1.x;
  let x_1011 : f32 = u_xlat12;
  u_xlat1.x = (x_1010 * x_1011);
  let x_1015 : f32 = u_xlat11.x;
  let x_1017 : f32 = u_xlat1.x;
  u_xlat11.x = ((x_1015 * x_1017) + 1.0f);
  let x_1022 : f32 = u_xlat11.x;
  let x_1023 : f32 = u_xlat22;
  u_xlat11.x = (x_1022 * x_1023);
  let x_1026 : f32 = u_xlat34;
  let x_1027 : f32 = u_xlat34;
  u_xlat22 = (x_1026 * x_1027);
  let x_1029 : f32 = u_xlat22;
  u_xlat22 = max(x_1029, 0.002f);
  let x_1032 : f32 = u_xlat22;
  u_xlat1.x = (-(x_1032) + 1.0f);
  let x_1036 : f32 = u_xlat33;
  let x_1039 : f32 = u_xlat1.x;
  let x_1041 : f32 = u_xlat22;
  u_xlat12 = ((abs(x_1036) * x_1039) + x_1041);
  let x_1043 : f32 = u_xlat35;
  let x_1045 : f32 = u_xlat1.x;
  let x_1047 : f32 = u_xlat22;
  u_xlat1.x = ((x_1043 * x_1045) + x_1047);
  let x_1050 : f32 = u_xlat33;
  let x_1053 : f32 = u_xlat1.x;
  u_xlat33 = (abs(x_1050) * x_1053);
  let x_1055 : f32 = u_xlat35;
  let x_1056 : f32 = u_xlat12;
  let x_1058 : f32 = u_xlat33;
  u_xlat33 = ((x_1055 * x_1056) + x_1058);
  let x_1060 : f32 = u_xlat33;
  u_xlat33 = (x_1060 + 0.00001f);
  let x_1063 : f32 = u_xlat33;
  u_xlat33 = (0.5f / x_1063);
  let x_1065 : f32 = u_xlat22;
  let x_1066 : f32 = u_xlat22;
  u_xlat22 = (x_1065 * x_1066);
  let x_1069 : f32 = u_xlat3.x;
  let x_1070 : f32 = u_xlat22;
  let x_1073 : f32 = u_xlat3.x;
  u_xlat1.x = ((x_1069 * x_1070) + -(x_1073));
  let x_1078 : f32 = u_xlat1.x;
  let x_1080 : f32 = u_xlat3.x;
  u_xlat1.x = ((x_1078 * x_1080) + 1.0f);
  let x_1084 : f32 = u_xlat22;
  u_xlat22 = (x_1084 * 0.318309873f);
  let x_1088 : f32 = u_xlat1.x;
  let x_1090 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1088 * x_1090) + 0.0000001f);
  let x_1095 : f32 = u_xlat22;
  let x_1097 : f32 = u_xlat1.x;
  u_xlat22 = (x_1095 / x_1097);
  let x_1099 : f32 = u_xlat22;
  let x_1100 : f32 = u_xlat33;
  u_xlat11.y = (x_1099 * x_1100);
  let x_1103 : f32 = u_xlat35;
  let x_1105 : vec3<f32> = u_xlat11;
  let x_1107 : vec2<f32> = (vec2<f32>(x_1103, x_1103) * vec2<f32>(x_1105.x, x_1105.y));
  let x_1108 : vec3<f32> = u_xlat11;
  u_xlat11 = vec3<f32>(x_1107.x, x_1107.y, x_1108.z);
  let x_1111 : f32 = u_xlat11.y;
  u_xlat22 = (x_1111 * 3.141592741f);
  let x_1114 : f32 = u_xlat22;
  u_xlat22 = max(x_1114, 0.0f);
  let x_1116 : vec4<f32> = u_xlat6;
  let x_1118 : vec4<f32> = u_xlat6;
  u_xlat33 = dot(vec3<f32>(x_1116.x, x_1116.y, x_1116.z), vec3<f32>(x_1118.x, x_1118.y, x_1118.z));
  let x_1122 : f32 = u_xlat33;
  u_xlatb33 = !((x_1122 == 0.0f));
  let x_1124 : bool = u_xlatb33;
  u_xlat33 = select(0.0f, 1.0f, x_1124);
  let x_1126 : f32 = u_xlat33;
  let x_1127 : f32 = u_xlat22;
  u_xlat22 = (x_1126 * x_1127);
  let x_1129 : vec3<f32> = u_xlat11;
  let x_1131 : vec4<f32> = u_xlat2;
  u_xlat1 = (vec3<f32>(x_1129.x, x_1129.x, x_1129.x) * vec3<f32>(x_1131.x, x_1131.y, x_1131.z));
  let x_1134 : vec4<f32> = u_xlat2;
  let x_1136 : f32 = u_xlat22;
  u_xlat11 = (vec3<f32>(x_1134.x, x_1134.y, x_1134.z) * vec3<f32>(x_1136, x_1136, x_1136));
  let x_1140 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_1140) + 1.0f);
  let x_1145 : f32 = u_xlat0.x;
  let x_1147 : f32 = u_xlat0.x;
  u_xlat34 = (x_1145 * x_1147);
  let x_1149 : f32 = u_xlat34;
  let x_1150 : f32 = u_xlat34;
  u_xlat34 = (x_1149 * x_1150);
  let x_1153 : f32 = u_xlat0.x;
  let x_1154 : f32 = u_xlat34;
  u_xlat0.x = (x_1153 * x_1154);
  let x_1157 : vec4<f32> = u_xlat6;
  let x_1161 : vec3<f32> = (-(vec3<f32>(x_1157.x, x_1157.y, x_1157.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1162 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1161.x, x_1161.y, x_1161.z, x_1162.w);
  let x_1164 : vec4<f32> = u_xlat2;
  let x_1166 : vec3<f32> = u_xlat0;
  let x_1169 : vec4<f32> = u_xlat6;
  let x_1171 : vec3<f32> = ((vec3<f32>(x_1164.x, x_1164.y, x_1164.z) * vec3<f32>(x_1166.x, x_1166.x, x_1166.x)) + vec3<f32>(x_1169.x, x_1169.y, x_1169.z));
  let x_1172 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1171.x, x_1171.y, x_1171.z, x_1172.w);
  let x_1174 : vec3<f32> = u_xlat11;
  let x_1175 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_1174 * vec3<f32>(x_1175.x, x_1175.y, x_1175.z));
  let x_1180 : vec4<f32> = u_xlat4;
  let x_1182 : vec3<f32> = u_xlat1;
  let x_1184 : vec3<f32> = u_xlat0;
  let x_1185 : vec3<f32> = ((vec3<f32>(x_1180.x, x_1180.y, x_1180.z) * x_1182) + x_1184);
  let x_1186 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1185.x, x_1185.y, x_1185.z, x_1186.w);
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
