struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  x_WorldSpaceLightPos0 : vec4<f32>,
  x_LightPositionRange : vec4<f32>,
  x_LightProjectionParams : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  x_LightShadowData : vec4<f32>,
  unity_ShadowFadeCenterAndType : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_FogParams : vec4<f32>,
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

var<private> vs_TEXCOORD4 : f32;

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
  let x_253 : vec4<f32> = x_20.unity_WorldToLight[1i];
  let x_255 : vec3<f32> = (vec3<f32>(x_248.y, x_248.y, x_248.y) * vec3<f32>(x_253.x, x_253.y, x_253.z));
  let x_256 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_255.x, x_255.y, x_255.z, x_256.w);
  let x_259 : vec4<f32> = x_20.unity_WorldToLight[0i];
  let x_261 : vec3<f32> = vs_TEXCOORD1;
  let x_264 : vec4<f32> = u_xlat5;
  let x_266 : vec3<f32> = ((vec3<f32>(x_259.x, x_259.y, x_259.z) * vec3<f32>(x_261.x, x_261.x, x_261.x)) + vec3<f32>(x_264.x, x_264.y, x_264.z));
  let x_267 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_266.x, x_266.y, x_266.z, x_267.w);
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
    let x_482 : f32 = x_20.x_LightProjectionParams.z;
    u_xlat27 = (x_479 + -(x_482));
    let x_485 : f32 = u_xlat27;
    u_xlat27 = max(x_485, 0.00001f);
    let x_488 : f32 = u_xlat27;
    let x_490 : f32 = x_20.x_LightProjectionParams.w;
    u_xlat27 = (x_488 * x_490);
    let x_493 : f32 = x_20.x_LightProjectionParams.y;
    let x_494 : f32 = u_xlat27;
    u_xlat27 = (x_493 / x_494);
    let x_496 : f32 = u_xlat27;
    let x_498 : f32 = x_20.x_LightProjectionParams.x;
    u_xlat27 = (x_496 + -(x_498));
    let x_501 : f32 = u_xlat27;
    u_xlat27 = (-(x_501) + 1.0f);
    let x_504 : vec3<f32> = u_xlat10;
    let x_507 : vec3<f32> = (x_504 + vec3<f32>(0.0078125f, 0.0078125f, 0.0078125f));
    let x_508 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_507.x, x_507.y, x_507.z, x_508.w);
    let x_511 : vec4<f32> = u_xlat6;
    let x_512 : vec3<f32> = vec3<f32>(x_511.x, x_511.y, x_511.z);
    let x_513 : f32 = u_xlat27;
    txVec0 = vec4<f32>(x_512.x, x_512.y, x_512.z, x_513);
    let x_526 : vec4<f32> = txVec0;
    let x_528 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_526.xyz, x_526.w);
    u_xlat6.x = x_528;
    let x_531 : vec3<f32> = u_xlat10;
    u_xlat7 = (x_531 + vec3<f32>(-0.0078125f, -0.0078125f, 0.0078125f));
    let x_536 : vec3<f32> = u_xlat7;
    let x_537 : f32 = u_xlat27;
    txVec1 = vec4<f32>(x_536.x, x_536.y, x_536.z, x_537);
    let x_545 : vec4<f32> = txVec1;
    let x_547 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_545.xyz, x_545.w);
    u_xlat6.y = x_547;
    let x_549 : vec3<f32> = u_xlat10;
    u_xlat7 = (x_549 + vec3<f32>(-0.0078125f, 0.0078125f, -0.0078125f));
    let x_553 : vec3<f32> = u_xlat7;
    let x_554 : f32 = u_xlat27;
    txVec2 = vec4<f32>(x_553.x, x_553.y, x_553.z, x_554);
    let x_562 : vec4<f32> = txVec2;
    let x_564 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_562.xyz, x_562.w);
    u_xlat6.z = x_564;
    let x_566 : vec3<f32> = u_xlat10;
    u_xlat10 = (x_566 + vec3<f32>(0.0078125f, -0.0078125f, -0.0078125f));
    let x_570 : vec3<f32> = u_xlat10;
    let x_571 : f32 = u_xlat27;
    txVec3 = vec4<f32>(x_570.x, x_570.y, x_570.z, x_571);
    let x_579 : vec4<f32> = txVec3;
    let x_581 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_579.xyz, x_579.w);
    u_xlat6.w = x_581;
    let x_583 : vec4<f32> = u_xlat6;
    u_xlat10.x = dot(x_583, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    let x_589 : f32 = x_20.x_LightShadowData.x;
    u_xlat18 = (-(x_589) + 1.0f);
    let x_593 : f32 = u_xlat10.x;
    let x_594 : f32 = u_xlat18;
    let x_597 : f32 = x_20.x_LightShadowData.x;
    u_xlat10.x = ((x_593 * x_594) + x_597);
  } else {
    u_xlat10.x = 1.0f;
  }
  let x_603 : f32 = u_xlat10.x;
  let x_606 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_603) + x_606);
  let x_609 : f32 = u_xlat25;
  let x_611 : f32 = u_xlat2.x;
  let x_614 : f32 = u_xlat10.x;
  u_xlat25 = ((x_609 * x_611) + x_614);
  let x_616 : vec4<f32> = u_xlat5;
  let x_618 : vec4<f32> = u_xlat5;
  u_xlat2.x = dot(vec3<f32>(x_616.x, x_616.y, x_616.z), vec3<f32>(x_618.x, x_618.y, x_618.z));
  let x_627 : vec4<f32> = u_xlat2;
  let x_629 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_627.x, x_627.x));
  u_xlat2.x = x_629.x;
  let x_632 : f32 = u_xlat25;
  let x_634 : f32 = u_xlat2.x;
  u_xlat25 = (x_632 * x_634);
  let x_636 : f32 = u_xlat25;
  let x_640 : vec4<f32> = x_20.x_LightColor0;
  let x_642 : vec3<f32> = (vec3<f32>(x_636, x_636, x_636) * vec3<f32>(x_640.x, x_640.y, x_640.z));
  let x_643 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_642.x, x_642.y, x_642.z, x_643.w);
  let x_646 : vec3<f32> = vs_TEXCOORD0;
  let x_647 : vec3<f32> = vs_TEXCOORD0;
  u_xlat25 = dot(x_646, x_647);
  let x_649 : f32 = u_xlat25;
  u_xlat25 = inverseSqrt(x_649);
  let x_651 : f32 = u_xlat25;
  let x_653 : vec3<f32> = vs_TEXCOORD0;
  let x_654 : vec3<f32> = (vec3<f32>(x_651, x_651, x_651) * x_653);
  let x_655 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_654.x, x_654.y, x_654.z, x_655.w);
  let x_657 : vec4<f32> = u_xlat4;
  let x_661 : vec3<f32> = (vec3<f32>(x_657.x, x_657.y, x_657.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_662 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_661.x, x_661.y, x_661.z, x_662.w);
  let x_666 : f32 = x_20.x_Metallic;
  let x_668 : f32 = x_20.x_Metallic;
  let x_670 : f32 = x_20.x_Metallic;
  let x_671 : vec3<f32> = vec3<f32>(x_666, x_668, x_670);
  let x_676 : vec4<f32> = u_xlat6;
  let x_681 : vec3<f32> = ((vec3<f32>(x_671.x, x_671.y, x_671.z) * vec3<f32>(x_676.x, x_676.y, x_676.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_682 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_681.x, x_681.y, x_681.z, x_682.w);
  let x_685 : f32 = x_20.x_Metallic;
  u_xlat25 = ((-(x_685) * 0.959999979f) + 0.959999979f);
  let x_690 : f32 = u_xlat25;
  let x_692 : vec4<f32> = u_xlat4;
  let x_694 : vec3<f32> = (vec3<f32>(x_690, x_690, x_690) * vec3<f32>(x_692.x, x_692.y, x_692.z));
  let x_695 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_694.x, x_694.y, x_694.z, x_695.w);
  let x_699 : f32 = x_20.x_Glossiness;
  let x_702 : f32 = u_xlat4.w;
  u_xlat25 = ((-(x_699) * x_702) + 1.0f);
  let x_705 : vec3<f32> = u_xlat0;
  let x_706 : f32 = u_xlat24;
  let x_709 : vec3<f32> = u_xlat3;
  u_xlat0 = ((x_705 * vec3<f32>(x_706, x_706, x_706)) + x_709);
  let x_711 : vec3<f32> = u_xlat0;
  let x_712 : vec3<f32> = u_xlat0;
  u_xlat24 = dot(x_711, x_712);
  let x_714 : f32 = u_xlat24;
  u_xlat24 = max(x_714, 0.001f);
  let x_717 : f32 = u_xlat24;
  u_xlat24 = inverseSqrt(x_717);
  let x_719 : f32 = u_xlat24;
  let x_721 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_719, x_719, x_719) * x_721);
  let x_723 : vec4<f32> = u_xlat5;
  let x_725 : vec3<f32> = u_xlat3;
  u_xlat24 = dot(vec3<f32>(x_723.x, x_723.y, x_723.z), x_725);
  let x_727 : vec4<f32> = u_xlat5;
  let x_729 : vec3<f32> = u_xlat1;
  u_xlat26 = dot(vec3<f32>(x_727.x, x_727.y, x_727.z), x_729);
  let x_731 : f32 = u_xlat26;
  u_xlat26 = clamp(x_731, 0.0f, 1.0f);
  let x_733 : vec4<f32> = u_xlat5;
  let x_735 : vec3<f32> = u_xlat0;
  u_xlat3.x = dot(vec3<f32>(x_733.x, x_733.y, x_733.z), x_735);
  let x_739 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_739, 0.0f, 1.0f);
  let x_742 : vec3<f32> = u_xlat1;
  let x_743 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_742, x_743);
  let x_747 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_747, 0.0f, 1.0f);
  let x_752 : f32 = u_xlat0.x;
  let x_754 : f32 = u_xlat0.x;
  u_xlat8.x = (x_752 * x_754);
  let x_757 : vec3<f32> = u_xlat8;
  let x_759 : f32 = u_xlat25;
  u_xlat8.x = dot(vec2<f32>(x_757.x, x_757.x), vec2<f32>(x_759, x_759));
  let x_764 : f32 = u_xlat8.x;
  u_xlat8.x = (x_764 + -0.5f);
  let x_769 : f32 = u_xlat26;
  u_xlat16 = (-(x_769) + 1.0f);
  let x_772 : f32 = u_xlat16;
  let x_773 : f32 = u_xlat16;
  u_xlat1.x = (x_772 * x_773);
  let x_777 : f32 = u_xlat1.x;
  let x_779 : f32 = u_xlat1.x;
  u_xlat1.x = (x_777 * x_779);
  let x_782 : f32 = u_xlat16;
  let x_784 : f32 = u_xlat1.x;
  u_xlat16 = (x_782 * x_784);
  let x_787 : f32 = u_xlat8.x;
  let x_788 : f32 = u_xlat16;
  u_xlat16 = ((x_787 * x_788) + 1.0f);
  let x_791 : f32 = u_xlat24;
  u_xlat1.x = (-(abs(x_791)) + 1.0f);
  let x_798 : f32 = u_xlat1.x;
  let x_800 : f32 = u_xlat1.x;
  u_xlat9 = (x_798 * x_800);
  let x_802 : f32 = u_xlat9;
  let x_803 : f32 = u_xlat9;
  u_xlat9 = (x_802 * x_803);
  let x_806 : f32 = u_xlat1.x;
  let x_807 : f32 = u_xlat9;
  u_xlat1.x = (x_806 * x_807);
  let x_811 : f32 = u_xlat8.x;
  let x_813 : f32 = u_xlat1.x;
  u_xlat8.x = ((x_811 * x_813) + 1.0f);
  let x_818 : f32 = u_xlat8.x;
  let x_819 : f32 = u_xlat16;
  u_xlat8.x = (x_818 * x_819);
  let x_822 : f32 = u_xlat25;
  let x_823 : f32 = u_xlat25;
  u_xlat16 = (x_822 * x_823);
  let x_825 : f32 = u_xlat16;
  u_xlat16 = max(x_825, 0.002f);
  let x_828 : f32 = u_xlat16;
  u_xlat1.x = (-(x_828) + 1.0f);
  let x_832 : f32 = u_xlat24;
  let x_835 : f32 = u_xlat1.x;
  let x_837 : f32 = u_xlat16;
  u_xlat9 = ((abs(x_832) * x_835) + x_837);
  let x_839 : f32 = u_xlat26;
  let x_841 : f32 = u_xlat1.x;
  let x_843 : f32 = u_xlat16;
  u_xlat1.x = ((x_839 * x_841) + x_843);
  let x_846 : f32 = u_xlat24;
  let x_849 : f32 = u_xlat1.x;
  u_xlat24 = (abs(x_846) * x_849);
  let x_851 : f32 = u_xlat26;
  let x_852 : f32 = u_xlat9;
  let x_854 : f32 = u_xlat24;
  u_xlat24 = ((x_851 * x_852) + x_854);
  let x_856 : f32 = u_xlat24;
  u_xlat24 = (x_856 + 0.00001f);
  let x_858 : f32 = u_xlat24;
  u_xlat24 = (0.5f / x_858);
  let x_860 : f32 = u_xlat16;
  let x_861 : f32 = u_xlat16;
  u_xlat16 = (x_860 * x_861);
  let x_864 : f32 = u_xlat3.x;
  let x_865 : f32 = u_xlat16;
  let x_868 : f32 = u_xlat3.x;
  u_xlat1.x = ((x_864 * x_865) + -(x_868));
  let x_873 : f32 = u_xlat1.x;
  let x_875 : f32 = u_xlat3.x;
  u_xlat1.x = ((x_873 * x_875) + 1.0f);
  let x_879 : f32 = u_xlat16;
  u_xlat16 = (x_879 * 0.318309873f);
  let x_883 : f32 = u_xlat1.x;
  let x_885 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_883 * x_885) + 0.0000001f);
  let x_890 : f32 = u_xlat16;
  let x_892 : f32 = u_xlat1.x;
  u_xlat16 = (x_890 / x_892);
  let x_894 : f32 = u_xlat16;
  let x_895 : f32 = u_xlat24;
  u_xlat8.y = (x_894 * x_895);
  let x_898 : f32 = u_xlat26;
  let x_900 : vec3<f32> = u_xlat8;
  let x_902 : vec2<f32> = (vec2<f32>(x_898, x_898) * vec2<f32>(x_900.x, x_900.y));
  let x_903 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_902.x, x_902.y, x_903.z);
  let x_906 : f32 = u_xlat8.y;
  u_xlat16 = (x_906 * 3.141592741f);
  let x_909 : f32 = u_xlat16;
  u_xlat16 = max(x_909, 0.0f);
  let x_911 : vec4<f32> = u_xlat6;
  let x_913 : vec4<f32> = u_xlat6;
  u_xlat24 = dot(vec3<f32>(x_911.x, x_911.y, x_911.z), vec3<f32>(x_913.x, x_913.y, x_913.z));
  let x_917 : f32 = u_xlat24;
  u_xlatb24 = !((x_917 == 0.0f));
  let x_919 : bool = u_xlatb24;
  u_xlat24 = select(0.0f, 1.0f, x_919);
  let x_921 : f32 = u_xlat24;
  let x_922 : f32 = u_xlat16;
  u_xlat16 = (x_921 * x_922);
  let x_924 : vec3<f32> = u_xlat8;
  let x_926 : vec4<f32> = u_xlat2;
  u_xlat1 = (vec3<f32>(x_924.x, x_924.x, x_924.x) * vec3<f32>(x_926.x, x_926.y, x_926.z));
  let x_929 : vec4<f32> = u_xlat2;
  let x_931 : f32 = u_xlat16;
  u_xlat8 = (vec3<f32>(x_929.x, x_929.y, x_929.z) * vec3<f32>(x_931, x_931, x_931));
  let x_935 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_935) + 1.0f);
  let x_940 : f32 = u_xlat0.x;
  let x_942 : f32 = u_xlat0.x;
  u_xlat25 = (x_940 * x_942);
  let x_944 : f32 = u_xlat25;
  let x_945 : f32 = u_xlat25;
  u_xlat25 = (x_944 * x_945);
  let x_948 : f32 = u_xlat0.x;
  let x_949 : f32 = u_xlat25;
  u_xlat0.x = (x_948 * x_949);
  let x_952 : vec4<f32> = u_xlat6;
  let x_956 : vec3<f32> = (-(vec3<f32>(x_952.x, x_952.y, x_952.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_957 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_956.x, x_956.y, x_956.z, x_957.w);
  let x_959 : vec4<f32> = u_xlat2;
  let x_961 : vec3<f32> = u_xlat0;
  let x_964 : vec4<f32> = u_xlat6;
  let x_966 : vec3<f32> = ((vec3<f32>(x_959.x, x_959.y, x_959.z) * vec3<f32>(x_961.x, x_961.x, x_961.x)) + vec3<f32>(x_964.x, x_964.y, x_964.z));
  let x_967 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_966.x, x_966.y, x_966.z, x_967.w);
  let x_969 : vec3<f32> = u_xlat8;
  let x_970 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_969 * vec3<f32>(x_970.x, x_970.y, x_970.z));
  let x_973 : vec4<f32> = u_xlat4;
  let x_975 : vec3<f32> = u_xlat1;
  let x_977 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_973.x, x_973.y, x_973.z) * x_975) + x_977);
  let x_981 : f32 = vs_TEXCOORD4;
  let x_983 : f32 = x_20.x_ProjectionParams.y;
  u_xlat24 = (x_981 / x_983);
  let x_985 : f32 = u_xlat24;
  u_xlat24 = (-(x_985) + 1.0f);
  let x_988 : f32 = u_xlat24;
  let x_990 : f32 = x_20.x_ProjectionParams.z;
  u_xlat24 = (x_988 * x_990);
  let x_992 : f32 = u_xlat24;
  u_xlat24 = max(x_992, 0.0f);
  let x_994 : f32 = u_xlat24;
  let x_997 : f32 = x_20.unity_FogParams.x;
  u_xlat24 = (x_994 * x_997);
  let x_999 : f32 = u_xlat24;
  let x_1000 : f32 = u_xlat24;
  u_xlat24 = (x_999 * -(x_1000));
  let x_1003 : f32 = u_xlat24;
  u_xlat24 = exp2(x_1003);
  let x_1007 : vec3<f32> = u_xlat0;
  let x_1008 : f32 = u_xlat24;
  let x_1010 : vec3<f32> = (x_1007 * vec3<f32>(x_1008, x_1008, x_1008));
  let x_1011 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1010.x, x_1010.y, x_1010.z, x_1011.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(2) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_COLOR0_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec3<f32>, @location(1) vs_TEXCOORD4_param : f32, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

