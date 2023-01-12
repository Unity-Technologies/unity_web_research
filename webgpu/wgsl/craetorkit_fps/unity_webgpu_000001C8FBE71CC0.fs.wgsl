struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
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

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(0) @binding(3) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_ShadowMapTexture : sampler;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat18 : f32;
  var u_xlat1 : vec3<f32>;
  var u_xlati2 : vec4<i32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat19 : f32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat2 : vec4<f32>;
  var indexable_1 : array<vec4<u32>, 4u>;
  var u_xlat8 : f32;
  var indexable_2 : array<vec4<u32>, 4u>;
  var u_xlat14 : f32;
  var indexable_3 : array<vec4<u32>, 4u>;
  var u_xlatb3 : bool;
  var u_xlat9 : vec3<f32>;
  var x_327 : vec3<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat7 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat12 : f32;
  var u_xlat13 : f32;
  var u_xlat20 : f32;
  var u_xlatb18 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD1;
  let x_24 : vec3<f32> = x_20.x_WorldSpaceCameraPos;
  u_xlat0 = (-(x_12) + x_24);
  let x_28 : vec3<f32> = u_xlat0;
  let x_29 : vec3<f32> = u_xlat0;
  u_xlat18 = dot(x_28, x_29);
  let x_31 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_31);
  let x_34 : f32 = u_xlat18;
  let x_36 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_34, x_34, x_34) * x_36);
  let x_43 : vec4<i32> = x_20.x_OctaveIndex;
  u_xlati2 = min(x_43, vec4<i32>(3i, 3i, 3i, 3i));
  let x_49 : vec3<f32> = vs_TEXCOORD1;
  let x_53 : f32 = x_20.x_Scale;
  let x_55 : f32 = x_20.x_Scale;
  let x_57 : f32 = x_20.x_Scale;
  let x_58 : vec3<f32> = vec3<f32>(x_53, x_55, x_57);
  let x_63 : vec3<f32> = (x_49 * vec3<f32>(x_58.x, x_58.y, x_58.z));
  let x_64 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_63.x, x_63.y, x_63.z, x_64.w);
  let x_77 : vec4<f32> = u_xlat3;
  let x_79 : vec4<f32> = textureSample(x_VolumeNoise, sampler_VolumeNoise, vec3<f32>(x_77.x, x_77.y, x_77.z));
  u_xlat4 = x_79;
  let x_81 : vec4<f32> = u_xlat4;
  let x_95 : i32 = u_xlati2.x;
  indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
  let x_100 : vec4<u32> = indexable[x_95];
  u_xlat19 = dot(x_81, bitcast<vec4<f32>>(x_100));
  let x_103 : vec4<f32> = u_xlat3;
  let x_107 : vec3<f32> = (vec3<f32>(x_103.x, x_103.y, x_103.z) * vec3<f32>(4.0f, 4.0f, 4.0f));
  let x_108 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_107.x, x_107.y, x_107.z, x_108.w);
  let x_113 : vec4<f32> = u_xlat4;
  let x_115 : vec4<f32> = textureSample(x_VolumeNoise, sampler_VolumeNoise, vec3<f32>(x_113.x, x_113.y, x_113.z));
  u_xlat4 = x_115;
  let x_117 : vec4<f32> = u_xlat4;
  let x_120 : i32 = u_xlati2.y;
  indexable_1 = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
  let x_123 : vec4<u32> = indexable_1[x_120];
  u_xlat2.x = dot(x_117, bitcast<vec4<f32>>(x_123));
  let x_127 : vec4<f32> = u_xlat3;
  let x_131 : vec3<f32> = (vec3<f32>(x_127.x, x_127.y, x_127.z) * vec3<f32>(16.0f, 16.0f, 16.0f));
  let x_132 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_131.x, x_131.y, x_131.z, x_132.w);
  let x_137 : vec4<f32> = u_xlat4;
  let x_139 : vec4<f32> = textureSample(x_VolumeNoise, sampler_VolumeNoise, vec3<f32>(x_137.x, x_137.y, x_137.z));
  u_xlat4 = x_139;
  let x_141 : vec4<f32> = u_xlat4;
  let x_144 : i32 = u_xlati2.z;
  indexable_2 = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
  let x_147 : vec4<u32> = indexable_2[x_144];
  u_xlat8 = dot(x_141, bitcast<vec4<f32>>(x_147));
  let x_150 : vec4<f32> = u_xlat3;
  let x_154 : vec3<f32> = (vec3<f32>(x_150.x, x_150.y, x_150.z) * vec3<f32>(256.0f, 256.0f, 256.0f));
  let x_155 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_154.x, x_154.y, x_154.z, x_155.w);
  let x_160 : vec4<f32> = u_xlat3;
  let x_162 : vec4<f32> = textureSample(x_VolumeNoise, sampler_VolumeNoise, vec3<f32>(x_160.x, x_160.y, x_160.z));
  u_xlat3 = x_162;
  let x_164 : vec4<f32> = u_xlat3;
  let x_167 : i32 = u_xlati2.w;
  indexable_3 = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
  let x_170 : vec4<u32> = indexable_3[x_167];
  u_xlat14 = dot(x_164, bitcast<vec4<f32>>(x_170));
  let x_174 : f32 = u_xlat2.x;
  let x_177 : f32 = u_xlat19;
  u_xlat19 = ((x_174 * 0.5f) + x_177);
  let x_179 : f32 = u_xlat8;
  let x_182 : f32 = u_xlat19;
  u_xlat19 = ((x_179 * 0.25f) + x_182);
  let x_184 : f32 = u_xlat14;
  let x_187 : f32 = u_xlat19;
  u_xlat19 = ((x_184 * 0.125f) + x_187);
  let x_189 : f32 = u_xlat19;
  u_xlat19 = (x_189 * 0.533333361f);
  let x_200 : f32 = u_xlat19;
  let x_203 : vec4<f32> = textureSample(x_AlbedoRamp1, sampler_AlbedoRamp1, vec2<f32>(x_200, x_200));
  u_xlat2 = x_203;
  let x_209 : f32 = u_xlat19;
  let x_211 : vec4<f32> = textureSample(x_AlbedoRamp2, sampler_AlbedoRamp2, vec2<f32>(x_209, x_209));
  u_xlat3 = x_211;
  let x_212 : vec4<f32> = u_xlat2;
  let x_214 : vec4<f32> = u_xlat3;
  u_xlat3 = (-(x_212) + x_214);
  let x_218 : vec4<f32> = vs_COLOR0;
  let x_220 : vec4<f32> = u_xlat3;
  let x_222 : vec4<f32> = u_xlat2;
  u_xlat2 = ((vec4<f32>(x_218.w, x_218.w, x_218.w, x_218.w) * x_220) + x_222);
  let x_226 : f32 = x_20.unity_MatrixV[0i].z;
  u_xlat3.x = x_226;
  let x_230 : f32 = x_20.unity_MatrixV[1i].z;
  u_xlat3.y = x_230;
  let x_234 : f32 = x_20.unity_MatrixV[2i].z;
  u_xlat3.z = x_234;
  let x_236 : vec3<f32> = u_xlat0;
  let x_237 : vec4<f32> = u_xlat3;
  u_xlat19 = dot(x_236, vec3<f32>(x_237.x, x_237.y, x_237.z));
  let x_240 : vec3<f32> = vs_TEXCOORD1;
  let x_244 : vec4<f32> = x_20.unity_ShadowFadeCenterAndType;
  let x_247 : vec3<f32> = (x_240 + -(vec3<f32>(x_244.x, x_244.y, x_244.z)));
  let x_248 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_247.x, x_247.y, x_247.z, x_248.w);
  let x_250 : vec4<f32> = u_xlat3;
  let x_252 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_250.x, x_250.y, x_250.z), vec3<f32>(x_252.x, x_252.y, x_252.z));
  let x_257 : f32 = u_xlat3.x;
  u_xlat3.x = sqrt(x_257);
  let x_260 : f32 = u_xlat19;
  let x_263 : f32 = u_xlat3.x;
  u_xlat3.x = (-(x_260) + x_263);
  let x_267 : f32 = x_20.unity_ShadowFadeCenterAndType.w;
  let x_269 : f32 = u_xlat3.x;
  let x_271 : f32 = u_xlat19;
  u_xlat19 = ((x_267 * x_269) + x_271);
  let x_273 : f32 = u_xlat19;
  let x_275 : f32 = x_20.x_LightShadowData.z;
  let x_278 : f32 = x_20.x_LightShadowData.w;
  u_xlat19 = ((x_273 * x_275) + x_278);
  let x_280 : f32 = u_xlat19;
  u_xlat19 = clamp(x_280, 0.0f, 1.0f);
  let x_289 : f32 = x_20.unity_ProbeVolumeParams.x;
  u_xlatb3 = (x_289 == 1.0f);
  let x_291 : bool = u_xlatb3;
  if (x_291) {
    let x_295 : f32 = x_20.unity_ProbeVolumeParams.y;
    u_xlatb3 = (x_295 == 1.0f);
    let x_298 : vec3<f32> = vs_TEXCOORD1;
    let x_302 : vec4<f32> = x_20.unity_ProbeVolumeWorldToObject[1i];
    u_xlat9 = (vec3<f32>(x_298.y, x_298.y, x_298.y) * vec3<f32>(x_302.x, x_302.y, x_302.z));
    let x_306 : vec4<f32> = x_20.unity_ProbeVolumeWorldToObject[0i];
    let x_308 : vec3<f32> = vs_TEXCOORD1;
    let x_311 : vec3<f32> = u_xlat9;
    u_xlat9 = ((vec3<f32>(x_306.x, x_306.y, x_306.z) * vec3<f32>(x_308.x, x_308.x, x_308.x)) + x_311);
    let x_314 : vec4<f32> = x_20.unity_ProbeVolumeWorldToObject[2i];
    let x_316 : vec3<f32> = vs_TEXCOORD1;
    let x_319 : vec3<f32> = u_xlat9;
    u_xlat9 = ((vec3<f32>(x_314.x, x_314.y, x_314.z) * vec3<f32>(x_316.z, x_316.z, x_316.z)) + x_319);
    let x_321 : vec3<f32> = u_xlat9;
    let x_323 : vec4<f32> = x_20.unity_ProbeVolumeWorldToObject[3i];
    u_xlat9 = (x_321 + vec3<f32>(x_323.x, x_323.y, x_323.z));
    let x_326 : bool = u_xlatb3;
    if (x_326) {
      let x_330 : vec3<f32> = u_xlat9;
      x_327 = x_330;
    } else {
      let x_332 : vec3<f32> = vs_TEXCOORD1;
      x_327 = x_332;
    }
    let x_333 : vec3<f32> = x_327;
    let x_334 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
    let x_336 : vec4<f32> = u_xlat3;
    let x_340 : vec3<f32> = x_20.unity_ProbeVolumeMin;
    let x_342 : vec3<f32> = (vec3<f32>(x_336.x, x_336.y, x_336.z) + -(x_340));
    let x_343 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_342.x, x_342.y, x_342.z, x_343.w);
    let x_345 : vec4<f32> = u_xlat3;
    let x_349 : vec3<f32> = x_20.unity_ProbeVolumeSizeInv;
    let x_350 : vec3<f32> = (vec3<f32>(x_345.x, x_345.y, x_345.z) * x_349);
    let x_351 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_351.x, x_350.x, x_350.y, x_350.z);
    let x_354 : f32 = u_xlat3.y;
    u_xlat9.x = ((x_354 * 0.25f) + 0.75f);
    let x_360 : f32 = x_20.unity_ProbeVolumeParams.z;
    u_xlat4.x = ((x_360 * 0.5f) + 0.75f);
    let x_365 : f32 = u_xlat9.x;
    let x_367 : f32 = u_xlat4.x;
    u_xlat3.x = max(x_365, x_367);
    let x_375 : vec4<f32> = u_xlat3;
    let x_377 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_375.x, x_375.z, x_375.w));
    u_xlat3 = x_377;
  } else {
    u_xlat3.x = 1.0f;
    u_xlat3.y = 1.0f;
    u_xlat3.z = 1.0f;
    u_xlat3.w = 1.0f;
  }
  let x_383 : vec4<f32> = u_xlat3;
  let x_385 : vec4<f32> = x_20.unity_OcclusionMaskSelector;
  u_xlat3.x = dot(x_383, x_385);
  let x_389 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_389, 0.0f, 1.0f);
  let x_393 : vec4<f32> = vs_TEXCOORD3;
  let x_395 : vec4<f32> = vs_TEXCOORD3;
  let x_397 : vec2<f32> = (vec2<f32>(x_393.x, x_393.y) / vec2<f32>(x_395.w, x_395.w));
  let x_398 : vec3<f32> = u_xlat9;
  u_xlat9 = vec3<f32>(x_397.x, x_397.y, x_398.z);
  let x_405 : vec3<f32> = u_xlat9;
  let x_407 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, vec2<f32>(x_405.x, x_405.y));
  u_xlat9.x = x_407.x;
  let x_411 : f32 = u_xlat9.x;
  let x_414 : f32 = u_xlat3.x;
  u_xlat3.x = (-(x_411) + x_414);
  let x_417 : f32 = u_xlat19;
  let x_419 : f32 = u_xlat3.x;
  let x_422 : f32 = u_xlat9.x;
  u_xlat19 = ((x_417 * x_419) + x_422);
  let x_424 : f32 = u_xlat19;
  let x_428 : vec4<f32> = x_20.x_LightColor0;
  let x_430 : vec3<f32> = (vec3<f32>(x_424, x_424, x_424) * vec3<f32>(x_428.x, x_428.y, x_428.z));
  let x_431 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_430.x, x_430.y, x_430.z, x_431.w);
  let x_434 : vec3<f32> = vs_TEXCOORD0;
  let x_435 : vec3<f32> = vs_TEXCOORD0;
  u_xlat19 = dot(x_434, x_435);
  let x_437 : f32 = u_xlat19;
  u_xlat19 = inverseSqrt(x_437);
  let x_439 : f32 = u_xlat19;
  let x_441 : vec3<f32> = vs_TEXCOORD0;
  let x_442 : vec3<f32> = (vec3<f32>(x_439, x_439, x_439) * x_441);
  let x_443 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_442.x, x_442.y, x_442.z, x_443.w);
  let x_446 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec3<f32>(x_446.x, x_446.y, x_446.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_453 : f32 = x_20.x_Metallic;
  let x_455 : f32 = x_20.x_Metallic;
  let x_457 : f32 = x_20.x_Metallic;
  let x_458 : vec3<f32> = vec3<f32>(x_453, x_455, x_457);
  let x_463 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_458.x, x_458.y, x_458.z) * x_463) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_469 : f32 = x_20.x_Metallic;
  u_xlat19 = ((-(x_469) * 0.959999979f) + 0.959999979f);
  let x_474 : f32 = u_xlat19;
  let x_476 : vec4<f32> = u_xlat2;
  let x_478 : vec3<f32> = (vec3<f32>(x_474, x_474, x_474) * vec3<f32>(x_476.x, x_476.y, x_476.z));
  let x_479 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_478.x, x_478.y, x_478.z, x_479.w);
  let x_483 : f32 = x_20.x_Glossiness;
  let x_486 : f32 = u_xlat2.w;
  u_xlat19 = ((-(x_483) * x_486) + 1.0f);
  let x_489 : vec3<f32> = u_xlat0;
  let x_490 : f32 = u_xlat18;
  let x_494 : vec4<f32> = x_20.x_WorldSpaceLightPos0;
  u_xlat0 = ((x_489 * vec3<f32>(x_490, x_490, x_490)) + vec3<f32>(x_494.x, x_494.y, x_494.z));
  let x_497 : vec3<f32> = u_xlat0;
  let x_498 : vec3<f32> = u_xlat0;
  u_xlat18 = dot(x_497, x_498);
  let x_500 : f32 = u_xlat18;
  u_xlat18 = max(x_500, 0.001f);
  let x_503 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_503);
  let x_505 : f32 = u_xlat18;
  let x_507 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_505, x_505, x_505) * x_507);
  let x_509 : vec4<f32> = u_xlat4;
  let x_511 : vec3<f32> = u_xlat1;
  u_xlat18 = dot(vec3<f32>(x_509.x, x_509.y, x_509.z), x_511);
  let x_513 : vec4<f32> = u_xlat4;
  let x_516 : vec4<f32> = x_20.x_WorldSpaceLightPos0;
  u_xlat1.x = dot(vec3<f32>(x_513.x, x_513.y, x_513.z), vec3<f32>(x_516.x, x_516.y, x_516.z));
  let x_521 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_521, 0.0f, 1.0f);
  let x_525 : vec4<f32> = u_xlat4;
  let x_527 : vec3<f32> = u_xlat0;
  u_xlat7 = dot(vec3<f32>(x_525.x, x_525.y, x_525.z), x_527);
  let x_529 : f32 = u_xlat7;
  u_xlat7 = clamp(x_529, 0.0f, 1.0f);
  let x_532 : vec4<f32> = x_20.x_WorldSpaceLightPos0;
  let x_534 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_532.x, x_532.y, x_532.z), x_534);
  let x_538 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_538, 0.0f, 1.0f);
  let x_543 : f32 = u_xlat0.x;
  let x_545 : f32 = u_xlat0.x;
  u_xlat6.x = (x_543 * x_545);
  let x_548 : vec3<f32> = u_xlat6;
  let x_550 : f32 = u_xlat19;
  u_xlat6.x = dot(vec2<f32>(x_548.x, x_548.x), vec2<f32>(x_550, x_550));
  let x_555 : f32 = u_xlat6.x;
  u_xlat6.x = (x_555 + -0.5f);
  let x_561 : f32 = u_xlat1.x;
  u_xlat12 = (-(x_561) + 1.0f);
  let x_565 : f32 = u_xlat12;
  let x_566 : f32 = u_xlat12;
  u_xlat13 = (x_565 * x_566);
  let x_568 : f32 = u_xlat13;
  let x_569 : f32 = u_xlat13;
  u_xlat13 = (x_568 * x_569);
  let x_571 : f32 = u_xlat12;
  let x_572 : f32 = u_xlat13;
  u_xlat12 = (x_571 * x_572);
  let x_575 : f32 = u_xlat6.x;
  let x_576 : f32 = u_xlat12;
  u_xlat12 = ((x_575 * x_576) + 1.0f);
  let x_579 : f32 = u_xlat18;
  u_xlat13 = (-(abs(x_579)) + 1.0f);
  let x_584 : f32 = u_xlat13;
  let x_585 : f32 = u_xlat13;
  u_xlat20 = (x_584 * x_585);
  let x_587 : f32 = u_xlat20;
  let x_588 : f32 = u_xlat20;
  u_xlat20 = (x_587 * x_588);
  let x_590 : f32 = u_xlat13;
  let x_591 : f32 = u_xlat20;
  u_xlat13 = (x_590 * x_591);
  let x_594 : f32 = u_xlat6.x;
  let x_595 : f32 = u_xlat13;
  u_xlat6.x = ((x_594 * x_595) + 1.0f);
  let x_600 : f32 = u_xlat6.x;
  let x_601 : f32 = u_xlat12;
  u_xlat6.x = (x_600 * x_601);
  let x_604 : f32 = u_xlat19;
  let x_605 : f32 = u_xlat19;
  u_xlat12 = (x_604 * x_605);
  let x_607 : f32 = u_xlat12;
  u_xlat12 = max(x_607, 0.002f);
  let x_610 : f32 = u_xlat12;
  u_xlat13 = (-(x_610) + 1.0f);
  let x_613 : f32 = u_xlat18;
  let x_615 : f32 = u_xlat13;
  let x_617 : f32 = u_xlat12;
  u_xlat19 = ((abs(x_613) * x_615) + x_617);
  let x_620 : f32 = u_xlat1.x;
  let x_621 : f32 = u_xlat13;
  let x_623 : f32 = u_xlat12;
  u_xlat13 = ((x_620 * x_621) + x_623);
  let x_625 : f32 = u_xlat18;
  let x_627 : f32 = u_xlat13;
  u_xlat18 = (abs(x_625) * x_627);
  let x_630 : f32 = u_xlat1.x;
  let x_631 : f32 = u_xlat19;
  let x_633 : f32 = u_xlat18;
  u_xlat18 = ((x_630 * x_631) + x_633);
  let x_635 : f32 = u_xlat18;
  u_xlat18 = (x_635 + 0.00001f);
  let x_638 : f32 = u_xlat18;
  u_xlat18 = (0.5f / x_638);
  let x_640 : f32 = u_xlat12;
  let x_641 : f32 = u_xlat12;
  u_xlat12 = (x_640 * x_641);
  let x_643 : f32 = u_xlat7;
  let x_644 : f32 = u_xlat12;
  let x_646 : f32 = u_xlat7;
  u_xlat13 = ((x_643 * x_644) + -(x_646));
  let x_649 : f32 = u_xlat13;
  let x_650 : f32 = u_xlat7;
  u_xlat7 = ((x_649 * x_650) + 1.0f);
  let x_653 : f32 = u_xlat12;
  u_xlat12 = (x_653 * 0.318309873f);
  let x_656 : f32 = u_xlat7;
  let x_657 : f32 = u_xlat7;
  u_xlat7 = ((x_656 * x_657) + 0.0000001f);
  let x_661 : f32 = u_xlat12;
  let x_662 : f32 = u_xlat7;
  u_xlat12 = (x_661 / x_662);
  let x_664 : f32 = u_xlat12;
  let x_665 : f32 = u_xlat18;
  u_xlat6.y = (x_664 * x_665);
  let x_668 : vec3<f32> = u_xlat1;
  let x_670 : vec3<f32> = u_xlat6;
  let x_672 : vec2<f32> = (vec2<f32>(x_668.x, x_668.x) * vec2<f32>(x_670.x, x_670.y));
  let x_673 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_672.x, x_672.y, x_673.z);
  let x_676 : f32 = u_xlat6.y;
  u_xlat12 = (x_676 * 3.141592741f);
  let x_679 : f32 = u_xlat12;
  u_xlat12 = max(x_679, 0.0f);
  let x_681 : vec3<f32> = u_xlat5;
  let x_682 : vec3<f32> = u_xlat5;
  u_xlat18 = dot(x_681, x_682);
  let x_685 : f32 = u_xlat18;
  u_xlatb18 = !((x_685 == 0.0f));
  let x_687 : bool = u_xlatb18;
  u_xlat18 = select(0.0f, 1.0f, x_687);
  let x_689 : f32 = u_xlat18;
  let x_690 : f32 = u_xlat12;
  u_xlat12 = (x_689 * x_690);
  let x_692 : vec3<f32> = u_xlat6;
  let x_694 : vec4<f32> = u_xlat3;
  u_xlat1 = (vec3<f32>(x_692.x, x_692.x, x_692.x) * vec3<f32>(x_694.x, x_694.y, x_694.z));
  let x_697 : vec4<f32> = u_xlat3;
  let x_699 : f32 = u_xlat12;
  u_xlat6 = (vec3<f32>(x_697.x, x_697.y, x_697.z) * vec3<f32>(x_699, x_699, x_699));
  let x_703 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_703) + 1.0f);
  let x_708 : f32 = u_xlat0.x;
  let x_710 : f32 = u_xlat0.x;
  u_xlat19 = (x_708 * x_710);
  let x_712 : f32 = u_xlat19;
  let x_713 : f32 = u_xlat19;
  u_xlat19 = (x_712 * x_713);
  let x_716 : f32 = u_xlat0.x;
  let x_717 : f32 = u_xlat19;
  u_xlat0.x = (x_716 * x_717);
  let x_720 : vec3<f32> = u_xlat5;
  let x_723 : vec3<f32> = (-(x_720) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_724 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_723.x, x_723.y, x_723.z, x_724.w);
  let x_726 : vec4<f32> = u_xlat3;
  let x_728 : vec3<f32> = u_xlat0;
  let x_731 : vec3<f32> = u_xlat5;
  let x_732 : vec3<f32> = ((vec3<f32>(x_726.x, x_726.y, x_726.z) * vec3<f32>(x_728.x, x_728.x, x_728.x)) + x_731);
  let x_733 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_732.x, x_732.y, x_732.z, x_733.w);
  let x_735 : vec3<f32> = u_xlat6;
  let x_736 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_735 * vec3<f32>(x_736.x, x_736.y, x_736.z));
  let x_741 : vec4<f32> = u_xlat2;
  let x_743 : vec3<f32> = u_xlat1;
  let x_745 : vec3<f32> = u_xlat0;
  let x_746 : vec3<f32> = ((vec3<f32>(x_741.x, x_741.y, x_741.z) * x_743) + x_745);
  let x_747 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_746.x, x_746.y, x_746.z, x_747.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_COLOR0_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

