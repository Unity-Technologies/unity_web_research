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

@group(0) @binding(11) var sampler_VolumeNoise : sampler;

@group(0) @binding(1) var x_AlbedoRamp1 : texture_2d<f32>;

@group(0) @binding(9) var sampler_AlbedoRamp1 : sampler;

@group(0) @binding(2) var x_AlbedoRamp2 : texture_2d<f32>;

@group(0) @binding(10) var sampler_AlbedoRamp2 : sampler;

var<private> vs_COLOR0 : vec4<f32>;

@group(0) @binding(4) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(6) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(5) var x_ShadowMapTexture : texture_depth_cube;

@group(0) @binding(7) var sampler_ShadowMapTexture : sampler_comparison;

@group(0) @binding(3) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(8) var sampler_LightTexture0 : sampler;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat24 : f32;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat25 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlati4 : vec4<i32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat26 : f32;
  var indexable_1 : array<vec4<u32>, 4u>;
  var u_xlat27 : f32;
  var indexable_2 : array<vec4<u32>, 4u>;
  var u_xlat4 : vec4<f32>;
  var indexable_3 : array<vec4<u32>, 4u>;
  var u_xlatb2 : bool;
  var u_xlat10 : vec3<f32>;
  var x_390 : vec3<f32>;
  var u_xlatb10 : bool;
  var txVec0 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var txVec1 : vec4<f32>;
  var txVec2 : vec4<f32>;
  var txVec3 : vec4<f32>;
  var u_xlat18 : f32;
  var u_xlat8 : vec3<f32>;
  var u_xlat16 : f32;
  var u_xlat9 : f32;
  var u_xlatb24 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD1;
  let x_24 : vec4<f32> = x_20.x_WorldSpaceLightPos0;
  u_xlat0 = (-(x_12) + vec3<f32>(x_24.x, x_24.y, x_24.z));
  let x_29 : vec3<f32> = u_xlat0;
  let x_30 : vec3<f32> = u_xlat0;
  u_xlat24 = dot(x_29, x_30);
  let x_32 : f32 = u_xlat24;
  u_xlat24 = inverseSqrt(x_32);
  let x_35 : f32 = u_xlat24;
  let x_37 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_35, x_35, x_35) * x_37);
  let x_41 : vec3<f32> = vs_TEXCOORD1;
  let x_46 : vec3<f32> = x_20.x_WorldSpaceCameraPos;
  let x_47 : vec3<f32> = (-(x_41) + x_46);
  let x_48 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_47.x, x_47.y, x_47.z, x_48.w);
  let x_51 : vec4<f32> = u_xlat2;
  let x_53 : vec4<f32> = u_xlat2;
  u_xlat25 = dot(vec3<f32>(x_51.x, x_51.y, x_51.z), vec3<f32>(x_53.x, x_53.y, x_53.z));
  let x_56 : f32 = u_xlat25;
  u_xlat25 = inverseSqrt(x_56);
  let x_59 : f32 = u_xlat25;
  let x_61 : vec4<f32> = u_xlat2;
  u_xlat3 = (vec3<f32>(x_59, x_59, x_59) * vec3<f32>(x_61.x, x_61.y, x_61.z));
  let x_69 : vec4<i32> = x_20.x_OctaveIndex;
  u_xlati4 = min(x_69, vec4<i32>(3i, 3i, 3i, 3i));
  let x_74 : vec3<f32> = vs_TEXCOORD1;
  let x_78 : f32 = x_20.x_Scale;
  let x_80 : f32 = x_20.x_Scale;
  let x_82 : f32 = x_20.x_Scale;
  let x_83 : vec3<f32> = vec3<f32>(x_78, x_80, x_82);
  let x_88 : vec3<f32> = (x_74 * vec3<f32>(x_83.x, x_83.y, x_83.z));
  let x_89 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_88.x, x_88.y, x_88.z, x_89.w);
  let x_102 : vec4<f32> = u_xlat5;
  let x_104 : vec4<f32> = textureSample(x_VolumeNoise, sampler_VolumeNoise, vec3<f32>(x_102.x, x_102.y, x_102.z));
  u_xlat6 = x_104;
  let x_105 : vec4<f32> = u_xlat6;
  let x_119 : i32 = u_xlati4.x;
  indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
  let x_124 : vec4<u32> = indexable[x_119];
  u_xlat25 = dot(x_105, bitcast<vec4<f32>>(x_124));
  let x_127 : vec4<f32> = u_xlat5;
  let x_131 : vec3<f32> = (vec3<f32>(x_127.x, x_127.y, x_127.z) * vec3<f32>(4.0f, 4.0f, 4.0f));
  let x_132 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_131.x, x_131.y, x_131.z, x_132.w);
  let x_137 : vec4<f32> = u_xlat6;
  let x_139 : vec4<f32> = textureSample(x_VolumeNoise, sampler_VolumeNoise, vec3<f32>(x_137.x, x_137.y, x_137.z));
  u_xlat6 = x_139;
  let x_141 : vec4<f32> = u_xlat6;
  let x_144 : i32 = u_xlati4.y;
  indexable_1 = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
  let x_147 : vec4<u32> = indexable_1[x_144];
  u_xlat26 = dot(x_141, bitcast<vec4<f32>>(x_147));
  let x_150 : vec4<f32> = u_xlat5;
  let x_154 : vec3<f32> = (vec3<f32>(x_150.x, x_150.y, x_150.z) * vec3<f32>(16.0f, 16.0f, 16.0f));
  let x_155 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_154.x, x_154.y, x_154.z, x_155.w);
  let x_160 : vec4<f32> = u_xlat6;
  let x_162 : vec4<f32> = textureSample(x_VolumeNoise, sampler_VolumeNoise, vec3<f32>(x_160.x, x_160.y, x_160.z));
  u_xlat6 = x_162;
  let x_164 : vec4<f32> = u_xlat6;
  let x_167 : i32 = u_xlati4.z;
  indexable_2 = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
  let x_170 : vec4<u32> = indexable_2[x_167];
  u_xlat27 = dot(x_164, bitcast<vec4<f32>>(x_170));
  let x_174 : vec4<f32> = u_xlat5;
  let x_178 : vec3<f32> = (vec3<f32>(x_174.x, x_174.y, x_174.z) * vec3<f32>(256.0f, 256.0f, 256.0f));
  let x_179 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_178.x, x_178.y, x_178.z, x_179.w);
  let x_184 : vec4<f32> = u_xlat4;
  let x_186 : vec4<f32> = textureSample(x_VolumeNoise, sampler_VolumeNoise, vec3<f32>(x_184.x, x_184.y, x_184.z));
  u_xlat5 = x_186;
  let x_187 : vec4<f32> = u_xlat5;
  let x_190 : i32 = u_xlati4.w;
  indexable_3 = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
  let x_193 : vec4<u32> = indexable_3[x_190];
  u_xlat4.x = dot(x_187, bitcast<vec4<f32>>(x_193));
  let x_197 : f32 = u_xlat26;
  let x_200 : f32 = u_xlat25;
  u_xlat25 = ((x_197 * 0.5f) + x_200);
  let x_202 : f32 = u_xlat27;
  let x_205 : f32 = u_xlat25;
  u_xlat25 = ((x_202 * 0.25f) + x_205);
  let x_208 : f32 = u_xlat4.x;
  let x_211 : f32 = u_xlat25;
  u_xlat25 = ((x_208 * 0.125f) + x_211);
  let x_213 : f32 = u_xlat25;
  u_xlat25 = (x_213 * 0.533333361f);
  let x_224 : f32 = u_xlat25;
  let x_227 : vec4<f32> = textureSample(x_AlbedoRamp1, sampler_AlbedoRamp1, vec2<f32>(x_224, x_224));
  u_xlat4 = x_227;
  let x_233 : f32 = u_xlat25;
  let x_235 : vec4<f32> = textureSample(x_AlbedoRamp2, sampler_AlbedoRamp2, vec2<f32>(x_233, x_233));
  u_xlat5 = x_235;
  let x_236 : vec4<f32> = u_xlat4;
  let x_238 : vec4<f32> = u_xlat5;
  u_xlat5 = (-(x_236) + x_238);
  let x_242 : vec4<f32> = vs_COLOR0;
  let x_244 : vec4<f32> = u_xlat5;
  let x_246 : vec4<f32> = u_xlat4;
  u_xlat4 = ((vec4<f32>(x_242.w, x_242.w, x_242.w, x_242.w) * x_244) + x_246);
  let x_248 : vec3<f32> = vs_TEXCOORD1;
  let x_252 : vec4<f32> = x_20.unity_WorldToLight[1i];
  let x_254 : vec3<f32> = (vec3<f32>(x_248.y, x_248.y, x_248.y) * vec3<f32>(x_252.x, x_252.y, x_252.z));
  let x_255 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_254.x, x_254.y, x_254.z, x_255.w);
  let x_258 : vec4<f32> = x_20.unity_WorldToLight[0i];
  let x_260 : vec3<f32> = vs_TEXCOORD1;
  let x_263 : vec4<f32> = u_xlat5;
  let x_265 : vec3<f32> = ((vec3<f32>(x_258.x, x_258.y, x_258.z) * vec3<f32>(x_260.x, x_260.x, x_260.x)) + vec3<f32>(x_263.x, x_263.y, x_263.z));
  let x_266 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_265.x, x_265.y, x_265.z, x_266.w);
  let x_270 : vec4<f32> = x_20.unity_WorldToLight[2i];
  let x_272 : vec3<f32> = vs_TEXCOORD1;
  let x_275 : vec4<f32> = u_xlat5;
  let x_277 : vec3<f32> = ((vec3<f32>(x_270.x, x_270.y, x_270.z) * vec3<f32>(x_272.z, x_272.z, x_272.z)) + vec3<f32>(x_275.x, x_275.y, x_275.z));
  let x_278 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_277.x, x_277.y, x_277.z, x_278.w);
  let x_280 : vec4<f32> = u_xlat5;
  let x_283 : vec4<f32> = x_20.unity_WorldToLight[3i];
  let x_285 : vec3<f32> = (vec3<f32>(x_280.x, x_280.y, x_280.z) + vec3<f32>(x_283.x, x_283.y, x_283.z));
  let x_286 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_285.x, x_285.y, x_285.z, x_286.w);
  let x_290 : f32 = x_20.unity_MatrixV[0i].z;
  u_xlat6.x = x_290;
  let x_293 : f32 = x_20.unity_MatrixV[1i].z;
  u_xlat6.y = x_293;
  let x_296 : f32 = x_20.unity_MatrixV[2i].z;
  u_xlat6.z = x_296;
  let x_298 : vec4<f32> = u_xlat2;
  let x_300 : vec4<f32> = u_xlat6;
  u_xlat25 = dot(vec3<f32>(x_298.x, x_298.y, x_298.z), vec3<f32>(x_300.x, x_300.y, x_300.z));
  let x_303 : vec3<f32> = vs_TEXCOORD1;
  let x_306 : vec4<f32> = x_20.unity_ShadowFadeCenterAndType;
  let x_309 : vec3<f32> = (x_303 + -(vec3<f32>(x_306.x, x_306.y, x_306.z)));
  let x_310 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_309.x, x_309.y, x_309.z, x_310.w);
  let x_312 : vec4<f32> = u_xlat2;
  let x_314 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_312.x, x_312.y, x_312.z), vec3<f32>(x_314.x, x_314.y, x_314.z));
  let x_319 : f32 = u_xlat2.x;
  u_xlat2.x = sqrt(x_319);
  let x_322 : f32 = u_xlat25;
  let x_325 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_322) + x_325);
  let x_329 : f32 = x_20.unity_ShadowFadeCenterAndType.w;
  let x_331 : f32 = u_xlat2.x;
  let x_333 : f32 = u_xlat25;
  u_xlat25 = ((x_329 * x_331) + x_333);
  let x_335 : f32 = u_xlat25;
  let x_338 : f32 = x_20.x_LightShadowData.z;
  let x_341 : f32 = x_20.x_LightShadowData.w;
  u_xlat25 = ((x_335 * x_338) + x_341);
  let x_343 : f32 = u_xlat25;
  u_xlat25 = clamp(x_343, 0.0f, 1.0f);
  let x_352 : f32 = x_20.unity_ProbeVolumeParams.x;
  u_xlatb2 = (x_352 == 1.0f);
  let x_354 : bool = u_xlatb2;
  if (x_354) {
    let x_358 : f32 = x_20.unity_ProbeVolumeParams.y;
    u_xlatb2 = (x_358 == 1.0f);
    let x_361 : vec3<f32> = vs_TEXCOORD1;
    let x_365 : vec4<f32> = x_20.unity_ProbeVolumeWorldToObject[1i];
    u_xlat10 = (vec3<f32>(x_361.y, x_361.y, x_361.y) * vec3<f32>(x_365.x, x_365.y, x_365.z));
    let x_369 : vec4<f32> = x_20.unity_ProbeVolumeWorldToObject[0i];
    let x_371 : vec3<f32> = vs_TEXCOORD1;
    let x_374 : vec3<f32> = u_xlat10;
    u_xlat10 = ((vec3<f32>(x_369.x, x_369.y, x_369.z) * vec3<f32>(x_371.x, x_371.x, x_371.x)) + x_374);
    let x_377 : vec4<f32> = x_20.unity_ProbeVolumeWorldToObject[2i];
    let x_379 : vec3<f32> = vs_TEXCOORD1;
    let x_382 : vec3<f32> = u_xlat10;
    u_xlat10 = ((vec3<f32>(x_377.x, x_377.y, x_377.z) * vec3<f32>(x_379.z, x_379.z, x_379.z)) + x_382);
    let x_384 : vec3<f32> = u_xlat10;
    let x_386 : vec4<f32> = x_20.unity_ProbeVolumeWorldToObject[3i];
    u_xlat10 = (x_384 + vec3<f32>(x_386.x, x_386.y, x_386.z));
    let x_389 : bool = u_xlatb2;
    if (x_389) {
      let x_393 : vec3<f32> = u_xlat10;
      x_390 = x_393;
    } else {
      let x_395 : vec3<f32> = vs_TEXCOORD1;
      x_390 = x_395;
    }
    let x_396 : vec3<f32> = x_390;
    let x_397 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_396.x, x_396.y, x_396.z, x_397.w);
    let x_399 : vec4<f32> = u_xlat2;
    let x_403 : vec3<f32> = x_20.unity_ProbeVolumeMin;
    let x_405 : vec3<f32> = (vec3<f32>(x_399.x, x_399.y, x_399.z) + -(x_403));
    let x_406 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_405.x, x_405.y, x_405.z, x_406.w);
    let x_408 : vec4<f32> = u_xlat2;
    let x_412 : vec3<f32> = x_20.unity_ProbeVolumeSizeInv;
    let x_413 : vec3<f32> = (vec3<f32>(x_408.x, x_408.y, x_408.z) * x_412);
    let x_414 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_414.x, x_413.x, x_413.y, x_413.z);
    let x_417 : f32 = u_xlat2.y;
    u_xlat10.x = ((x_417 * 0.25f) + 0.75f);
    let x_423 : f32 = x_20.unity_ProbeVolumeParams.z;
    u_xlat27 = ((x_423 * 0.5f) + 0.75f);
    let x_427 : f32 = u_xlat10.x;
    let x_428 : f32 = u_xlat27;
    u_xlat2.x = max(x_427, x_428);
    let x_436 : vec4<f32> = u_xlat2;
    let x_438 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_436.x, x_436.z, x_436.w));
    u_xlat2 = x_438;
  } else {
    u_xlat2.x = 1.0f;
    u_xlat2.y = 1.0f;
    u_xlat2.z = 1.0f;
    u_xlat2.w = 1.0f;
  }
  let x_444 : vec4<f32> = u_xlat2;
  let x_447 : vec4<f32> = x_20.unity_OcclusionMaskSelector;
  u_xlat2.x = dot(x_444, x_447);
  let x_451 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_451, 0.0f, 1.0f);
  let x_455 : f32 = u_xlat25;
  u_xlatb10 = (x_455 < 0.99000001f);
  let x_458 : bool = u_xlatb10;
  if (x_458) {
    let x_461 : vec3<f32> = vs_TEXCOORD1;
    let x_463 : vec4<f32> = x_20.x_LightPositionRange;
    u_xlat10 = (x_461 + -(vec3<f32>(x_463.x, x_463.y, x_463.z)));
    let x_468 : f32 = u_xlat10.y;
    let x_471 : f32 = u_xlat10.x;
    u_xlat27 = max(abs(x_468), abs(x_471));
    let x_475 : f32 = u_xlat10.z;
    let x_477 : f32 = u_xlat27;
    u_xlat27 = max(abs(x_475), x_477);
    let x_479 : f32 = u_xlat27;
    let x_481 : f32 = x_20.x_LightProjectionParams.z;
    u_xlat27 = (x_479 + -(x_481));
    let x_484 : f32 = u_xlat27;
    u_xlat27 = max(x_484, 0.00001f);
    let x_487 : f32 = u_xlat27;
    let x_489 : f32 = x_20.x_LightProjectionParams.w;
    u_xlat27 = (x_487 * x_489);
    let x_492 : f32 = x_20.x_LightProjectionParams.y;
    let x_493 : f32 = u_xlat27;
    u_xlat27 = (x_492 / x_493);
    let x_495 : f32 = u_xlat27;
    let x_497 : f32 = x_20.x_LightProjectionParams.x;
    u_xlat27 = (x_495 + -(x_497));
    let x_500 : f32 = u_xlat27;
    u_xlat27 = (-(x_500) + 1.0f);
    let x_503 : vec3<f32> = u_xlat10;
    let x_506 : vec3<f32> = (x_503 + vec3<f32>(0.0078125f, 0.0078125f, 0.0078125f));
    let x_507 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_506.x, x_506.y, x_506.z, x_507.w);
    let x_510 : vec4<f32> = u_xlat6;
    let x_511 : vec3<f32> = vec3<f32>(x_510.x, x_510.y, x_510.z);
    let x_512 : f32 = u_xlat27;
    txVec0 = vec4<f32>(x_511.x, x_511.y, x_511.z, x_512);
    let x_525 : vec4<f32> = txVec0;
    let x_527 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_525.xyz, x_525.w);
    u_xlat6.x = x_527;
    let x_530 : vec3<f32> = u_xlat10;
    u_xlat7 = (x_530 + vec3<f32>(-0.0078125f, -0.0078125f, 0.0078125f));
    let x_535 : vec3<f32> = u_xlat7;
    let x_536 : f32 = u_xlat27;
    txVec1 = vec4<f32>(x_535.x, x_535.y, x_535.z, x_536);
    let x_544 : vec4<f32> = txVec1;
    let x_546 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_544.xyz, x_544.w);
    u_xlat6.y = x_546;
    let x_548 : vec3<f32> = u_xlat10;
    u_xlat7 = (x_548 + vec3<f32>(-0.0078125f, 0.0078125f, -0.0078125f));
    let x_552 : vec3<f32> = u_xlat7;
    let x_553 : f32 = u_xlat27;
    txVec2 = vec4<f32>(x_552.x, x_552.y, x_552.z, x_553);
    let x_561 : vec4<f32> = txVec2;
    let x_563 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_561.xyz, x_561.w);
    u_xlat6.z = x_563;
    let x_565 : vec3<f32> = u_xlat10;
    u_xlat10 = (x_565 + vec3<f32>(0.0078125f, -0.0078125f, -0.0078125f));
    let x_569 : vec3<f32> = u_xlat10;
    let x_570 : f32 = u_xlat27;
    txVec3 = vec4<f32>(x_569.x, x_569.y, x_569.z, x_570);
    let x_578 : vec4<f32> = txVec3;
    let x_580 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_578.xyz, x_578.w);
    u_xlat6.w = x_580;
    let x_582 : vec4<f32> = u_xlat6;
    u_xlat10.x = dot(x_582, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    let x_588 : f32 = x_20.x_LightShadowData.x;
    u_xlat18 = (-(x_588) + 1.0f);
    let x_592 : f32 = u_xlat10.x;
    let x_593 : f32 = u_xlat18;
    let x_596 : f32 = x_20.x_LightShadowData.x;
    u_xlat10.x = ((x_592 * x_593) + x_596);
  } else {
    u_xlat10.x = 1.0f;
  }
  let x_602 : f32 = u_xlat10.x;
  let x_605 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_602) + x_605);
  let x_608 : f32 = u_xlat25;
  let x_610 : f32 = u_xlat2.x;
  let x_613 : f32 = u_xlat10.x;
  u_xlat25 = ((x_608 * x_610) + x_613);
  let x_615 : vec4<f32> = u_xlat5;
  let x_617 : vec4<f32> = u_xlat5;
  u_xlat2.x = dot(vec3<f32>(x_615.x, x_615.y, x_615.z), vec3<f32>(x_617.x, x_617.y, x_617.z));
  let x_626 : vec4<f32> = u_xlat2;
  let x_628 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_626.x, x_626.x));
  u_xlat2.x = x_628.x;
  let x_631 : f32 = u_xlat25;
  let x_633 : f32 = u_xlat2.x;
  u_xlat25 = (x_631 * x_633);
  let x_635 : f32 = u_xlat25;
  let x_639 : vec4<f32> = x_20.x_LightColor0;
  let x_641 : vec3<f32> = (vec3<f32>(x_635, x_635, x_635) * vec3<f32>(x_639.x, x_639.y, x_639.z));
  let x_642 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_641.x, x_641.y, x_641.z, x_642.w);
  let x_645 : vec3<f32> = vs_TEXCOORD0;
  let x_646 : vec3<f32> = vs_TEXCOORD0;
  u_xlat25 = dot(x_645, x_646);
  let x_648 : f32 = u_xlat25;
  u_xlat25 = inverseSqrt(x_648);
  let x_650 : f32 = u_xlat25;
  let x_652 : vec3<f32> = vs_TEXCOORD0;
  let x_653 : vec3<f32> = (vec3<f32>(x_650, x_650, x_650) * x_652);
  let x_654 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_653.x, x_653.y, x_653.z, x_654.w);
  let x_656 : vec4<f32> = u_xlat4;
  let x_660 : vec3<f32> = (vec3<f32>(x_656.x, x_656.y, x_656.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_661 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_660.x, x_660.y, x_660.z, x_661.w);
  let x_665 : f32 = x_20.x_Metallic;
  let x_667 : f32 = x_20.x_Metallic;
  let x_669 : f32 = x_20.x_Metallic;
  let x_670 : vec3<f32> = vec3<f32>(x_665, x_667, x_669);
  let x_675 : vec4<f32> = u_xlat6;
  let x_680 : vec3<f32> = ((vec3<f32>(x_670.x, x_670.y, x_670.z) * vec3<f32>(x_675.x, x_675.y, x_675.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_681 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_680.x, x_680.y, x_680.z, x_681.w);
  let x_684 : f32 = x_20.x_Metallic;
  u_xlat25 = ((-(x_684) * 0.959999979f) + 0.959999979f);
  let x_689 : f32 = u_xlat25;
  let x_691 : vec4<f32> = u_xlat4;
  let x_693 : vec3<f32> = (vec3<f32>(x_689, x_689, x_689) * vec3<f32>(x_691.x, x_691.y, x_691.z));
  let x_694 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_693.x, x_693.y, x_693.z, x_694.w);
  let x_698 : f32 = x_20.x_Glossiness;
  let x_701 : f32 = u_xlat4.w;
  u_xlat25 = ((-(x_698) * x_701) + 1.0f);
  let x_704 : vec3<f32> = u_xlat0;
  let x_705 : f32 = u_xlat24;
  let x_708 : vec3<f32> = u_xlat3;
  u_xlat0 = ((x_704 * vec3<f32>(x_705, x_705, x_705)) + x_708);
  let x_710 : vec3<f32> = u_xlat0;
  let x_711 : vec3<f32> = u_xlat0;
  u_xlat24 = dot(x_710, x_711);
  let x_713 : f32 = u_xlat24;
  u_xlat24 = max(x_713, 0.001f);
  let x_716 : f32 = u_xlat24;
  u_xlat24 = inverseSqrt(x_716);
  let x_718 : f32 = u_xlat24;
  let x_720 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_718, x_718, x_718) * x_720);
  let x_722 : vec4<f32> = u_xlat5;
  let x_724 : vec3<f32> = u_xlat3;
  u_xlat24 = dot(vec3<f32>(x_722.x, x_722.y, x_722.z), x_724);
  let x_726 : vec4<f32> = u_xlat5;
  let x_728 : vec3<f32> = u_xlat1;
  u_xlat26 = dot(vec3<f32>(x_726.x, x_726.y, x_726.z), x_728);
  let x_730 : f32 = u_xlat26;
  u_xlat26 = clamp(x_730, 0.0f, 1.0f);
  let x_732 : vec4<f32> = u_xlat5;
  let x_734 : vec3<f32> = u_xlat0;
  u_xlat3.x = dot(vec3<f32>(x_732.x, x_732.y, x_732.z), x_734);
  let x_738 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_738, 0.0f, 1.0f);
  let x_741 : vec3<f32> = u_xlat1;
  let x_742 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_741, x_742);
  let x_746 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_746, 0.0f, 1.0f);
  let x_751 : f32 = u_xlat0.x;
  let x_753 : f32 = u_xlat0.x;
  u_xlat8.x = (x_751 * x_753);
  let x_756 : vec3<f32> = u_xlat8;
  let x_758 : f32 = u_xlat25;
  u_xlat8.x = dot(vec2<f32>(x_756.x, x_756.x), vec2<f32>(x_758, x_758));
  let x_763 : f32 = u_xlat8.x;
  u_xlat8.x = (x_763 + -0.5f);
  let x_768 : f32 = u_xlat26;
  u_xlat16 = (-(x_768) + 1.0f);
  let x_771 : f32 = u_xlat16;
  let x_772 : f32 = u_xlat16;
  u_xlat1.x = (x_771 * x_772);
  let x_776 : f32 = u_xlat1.x;
  let x_778 : f32 = u_xlat1.x;
  u_xlat1.x = (x_776 * x_778);
  let x_781 : f32 = u_xlat16;
  let x_783 : f32 = u_xlat1.x;
  u_xlat16 = (x_781 * x_783);
  let x_786 : f32 = u_xlat8.x;
  let x_787 : f32 = u_xlat16;
  u_xlat16 = ((x_786 * x_787) + 1.0f);
  let x_790 : f32 = u_xlat24;
  u_xlat1.x = (-(abs(x_790)) + 1.0f);
  let x_797 : f32 = u_xlat1.x;
  let x_799 : f32 = u_xlat1.x;
  u_xlat9 = (x_797 * x_799);
  let x_801 : f32 = u_xlat9;
  let x_802 : f32 = u_xlat9;
  u_xlat9 = (x_801 * x_802);
  let x_805 : f32 = u_xlat1.x;
  let x_806 : f32 = u_xlat9;
  u_xlat1.x = (x_805 * x_806);
  let x_810 : f32 = u_xlat8.x;
  let x_812 : f32 = u_xlat1.x;
  u_xlat8.x = ((x_810 * x_812) + 1.0f);
  let x_817 : f32 = u_xlat8.x;
  let x_818 : f32 = u_xlat16;
  u_xlat8.x = (x_817 * x_818);
  let x_821 : f32 = u_xlat25;
  let x_822 : f32 = u_xlat25;
  u_xlat16 = (x_821 * x_822);
  let x_824 : f32 = u_xlat16;
  u_xlat16 = max(x_824, 0.002f);
  let x_827 : f32 = u_xlat16;
  u_xlat1.x = (-(x_827) + 1.0f);
  let x_831 : f32 = u_xlat24;
  let x_834 : f32 = u_xlat1.x;
  let x_836 : f32 = u_xlat16;
  u_xlat9 = ((abs(x_831) * x_834) + x_836);
  let x_838 : f32 = u_xlat26;
  let x_840 : f32 = u_xlat1.x;
  let x_842 : f32 = u_xlat16;
  u_xlat1.x = ((x_838 * x_840) + x_842);
  let x_845 : f32 = u_xlat24;
  let x_848 : f32 = u_xlat1.x;
  u_xlat24 = (abs(x_845) * x_848);
  let x_850 : f32 = u_xlat26;
  let x_851 : f32 = u_xlat9;
  let x_853 : f32 = u_xlat24;
  u_xlat24 = ((x_850 * x_851) + x_853);
  let x_855 : f32 = u_xlat24;
  u_xlat24 = (x_855 + 0.00001f);
  let x_857 : f32 = u_xlat24;
  u_xlat24 = (0.5f / x_857);
  let x_859 : f32 = u_xlat16;
  let x_860 : f32 = u_xlat16;
  u_xlat16 = (x_859 * x_860);
  let x_863 : f32 = u_xlat3.x;
  let x_864 : f32 = u_xlat16;
  let x_867 : f32 = u_xlat3.x;
  u_xlat1.x = ((x_863 * x_864) + -(x_867));
  let x_872 : f32 = u_xlat1.x;
  let x_874 : f32 = u_xlat3.x;
  u_xlat1.x = ((x_872 * x_874) + 1.0f);
  let x_878 : f32 = u_xlat16;
  u_xlat16 = (x_878 * 0.318309873f);
  let x_882 : f32 = u_xlat1.x;
  let x_884 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_882 * x_884) + 0.0000001f);
  let x_889 : f32 = u_xlat16;
  let x_891 : f32 = u_xlat1.x;
  u_xlat16 = (x_889 / x_891);
  let x_893 : f32 = u_xlat16;
  let x_894 : f32 = u_xlat24;
  u_xlat8.y = (x_893 * x_894);
  let x_897 : f32 = u_xlat26;
  let x_899 : vec3<f32> = u_xlat8;
  let x_901 : vec2<f32> = (vec2<f32>(x_897, x_897) * vec2<f32>(x_899.x, x_899.y));
  let x_902 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_901.x, x_901.y, x_902.z);
  let x_905 : f32 = u_xlat8.y;
  u_xlat16 = (x_905 * 3.141592741f);
  let x_908 : f32 = u_xlat16;
  u_xlat16 = max(x_908, 0.0f);
  let x_910 : vec4<f32> = u_xlat6;
  let x_912 : vec4<f32> = u_xlat6;
  u_xlat24 = dot(vec3<f32>(x_910.x, x_910.y, x_910.z), vec3<f32>(x_912.x, x_912.y, x_912.z));
  let x_916 : f32 = u_xlat24;
  u_xlatb24 = !((x_916 == 0.0f));
  let x_918 : bool = u_xlatb24;
  u_xlat24 = select(0.0f, 1.0f, x_918);
  let x_920 : f32 = u_xlat24;
  let x_921 : f32 = u_xlat16;
  u_xlat16 = (x_920 * x_921);
  let x_923 : vec3<f32> = u_xlat8;
  let x_925 : vec4<f32> = u_xlat2;
  u_xlat1 = (vec3<f32>(x_923.x, x_923.x, x_923.x) * vec3<f32>(x_925.x, x_925.y, x_925.z));
  let x_928 : vec4<f32> = u_xlat2;
  let x_930 : f32 = u_xlat16;
  u_xlat8 = (vec3<f32>(x_928.x, x_928.y, x_928.z) * vec3<f32>(x_930, x_930, x_930));
  let x_934 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_934) + 1.0f);
  let x_939 : f32 = u_xlat0.x;
  let x_941 : f32 = u_xlat0.x;
  u_xlat25 = (x_939 * x_941);
  let x_943 : f32 = u_xlat25;
  let x_944 : f32 = u_xlat25;
  u_xlat25 = (x_943 * x_944);
  let x_947 : f32 = u_xlat0.x;
  let x_948 : f32 = u_xlat25;
  u_xlat0.x = (x_947 * x_948);
  let x_951 : vec4<f32> = u_xlat6;
  let x_955 : vec3<f32> = (-(vec3<f32>(x_951.x, x_951.y, x_951.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_956 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_955.x, x_955.y, x_955.z, x_956.w);
  let x_958 : vec4<f32> = u_xlat2;
  let x_960 : vec3<f32> = u_xlat0;
  let x_963 : vec4<f32> = u_xlat6;
  let x_965 : vec3<f32> = ((vec3<f32>(x_958.x, x_958.y, x_958.z) * vec3<f32>(x_960.x, x_960.x, x_960.x)) + vec3<f32>(x_963.x, x_963.y, x_963.z));
  let x_966 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_965.x, x_965.y, x_965.z, x_966.w);
  let x_968 : vec3<f32> = u_xlat8;
  let x_969 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_968 * vec3<f32>(x_969.x, x_969.y, x_969.z));
  let x_974 : vec4<f32> = u_xlat4;
  let x_976 : vec3<f32> = u_xlat1;
  let x_978 : vec3<f32> = u_xlat0;
  let x_979 : vec3<f32> = ((vec3<f32>(x_974.x, x_974.y, x_974.z) * x_976) + x_978);
  let x_980 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_979.x, x_979.y, x_979.z, x_980.w);
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

