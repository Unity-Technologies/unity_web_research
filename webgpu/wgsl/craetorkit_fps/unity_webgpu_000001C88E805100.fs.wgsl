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

@group(0) @binding(5) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(6) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(0) @binding(3) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_ShadowMapTexture : sampler;

@group(0) @binding(4) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(8) var sampler_LightTexture0 : sampler;

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
  var u_xlat15 : f32;
  var u_xlatb15 : bool;
  var x_371 : vec3<f32>;
  var u_xlat21 : f32;
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
  let x_224 : vec3<f32> = vs_TEXCOORD1;
  let x_230 : vec4<f32> = x_20.unity_WorldToLight[1i];
  let x_232 : vec2<f32> = (vec2<f32>(x_224.y, x_224.y) * vec2<f32>(x_230.x, x_230.y));
  let x_233 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_232.x, x_232.y, x_233.z, x_233.w);
  let x_236 : vec4<f32> = x_20.unity_WorldToLight[0i];
  let x_238 : vec3<f32> = vs_TEXCOORD1;
  let x_241 : vec4<f32> = u_xlat3;
  let x_243 : vec2<f32> = ((vec2<f32>(x_236.x, x_236.y) * vec2<f32>(x_238.x, x_238.x)) + vec2<f32>(x_241.x, x_241.y));
  let x_244 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_243.x, x_243.y, x_244.z, x_244.w);
  let x_248 : vec4<f32> = x_20.unity_WorldToLight[2i];
  let x_250 : vec3<f32> = vs_TEXCOORD1;
  let x_253 : vec4<f32> = u_xlat3;
  let x_255 : vec2<f32> = ((vec2<f32>(x_248.x, x_248.y) * vec2<f32>(x_250.z, x_250.z)) + vec2<f32>(x_253.x, x_253.y));
  let x_256 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_255.x, x_255.y, x_256.z, x_256.w);
  let x_258 : vec4<f32> = u_xlat3;
  let x_261 : vec4<f32> = x_20.unity_WorldToLight[3i];
  let x_263 : vec2<f32> = (vec2<f32>(x_258.x, x_258.y) + vec2<f32>(x_261.x, x_261.y));
  let x_264 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_263.x, x_263.y, x_264.z, x_264.w);
  let x_268 : f32 = x_20.unity_MatrixV[0i].z;
  u_xlat4.x = x_268;
  let x_271 : f32 = x_20.unity_MatrixV[1i].z;
  u_xlat4.y = x_271;
  let x_274 : f32 = x_20.unity_MatrixV[2i].z;
  u_xlat4.z = x_274;
  let x_276 : vec3<f32> = u_xlat0;
  let x_277 : vec4<f32> = u_xlat4;
  u_xlat19 = dot(x_276, vec3<f32>(x_277.x, x_277.y, x_277.z));
  let x_280 : vec3<f32> = vs_TEXCOORD1;
  let x_283 : vec4<f32> = x_20.unity_ShadowFadeCenterAndType;
  let x_286 : vec3<f32> = (x_280 + -(vec3<f32>(x_283.x, x_283.y, x_283.z)));
  let x_287 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_286.x, x_286.y, x_286.z, x_287.w);
  let x_290 : vec4<f32> = u_xlat4;
  let x_292 : vec4<f32> = u_xlat4;
  u_xlat15 = dot(vec3<f32>(x_290.x, x_290.y, x_290.z), vec3<f32>(x_292.x, x_292.y, x_292.z));
  let x_295 : f32 = u_xlat15;
  u_xlat15 = sqrt(x_295);
  let x_297 : f32 = u_xlat19;
  let x_299 : f32 = u_xlat15;
  u_xlat15 = (-(x_297) + x_299);
  let x_302 : f32 = x_20.unity_ShadowFadeCenterAndType.w;
  let x_303 : f32 = u_xlat15;
  let x_305 : f32 = u_xlat19;
  u_xlat19 = ((x_302 * x_303) + x_305);
  let x_307 : f32 = u_xlat19;
  let x_309 : f32 = x_20.x_LightShadowData.z;
  let x_312 : f32 = x_20.x_LightShadowData.w;
  u_xlat19 = ((x_307 * x_309) + x_312);
  let x_314 : f32 = u_xlat19;
  u_xlat19 = clamp(x_314, 0.0f, 1.0f);
  let x_323 : f32 = x_20.unity_ProbeVolumeParams.x;
  u_xlatb15 = (x_323 == 1.0f);
  let x_325 : bool = u_xlatb15;
  if (x_325) {
    let x_329 : f32 = x_20.unity_ProbeVolumeParams.y;
    u_xlatb15 = (x_329 == 1.0f);
    let x_331 : vec3<f32> = vs_TEXCOORD1;
    let x_335 : vec4<f32> = x_20.unity_ProbeVolumeWorldToObject[1i];
    let x_337 : vec3<f32> = (vec3<f32>(x_331.y, x_331.y, x_331.y) * vec3<f32>(x_335.x, x_335.y, x_335.z));
    let x_338 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_337.x, x_337.y, x_337.z, x_338.w);
    let x_341 : vec4<f32> = x_20.unity_ProbeVolumeWorldToObject[0i];
    let x_343 : vec3<f32> = vs_TEXCOORD1;
    let x_346 : vec4<f32> = u_xlat4;
    let x_348 : vec3<f32> = ((vec3<f32>(x_341.x, x_341.y, x_341.z) * vec3<f32>(x_343.x, x_343.x, x_343.x)) + vec3<f32>(x_346.x, x_346.y, x_346.z));
    let x_349 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_348.x, x_348.y, x_348.z, x_349.w);
    let x_352 : vec4<f32> = x_20.unity_ProbeVolumeWorldToObject[2i];
    let x_354 : vec3<f32> = vs_TEXCOORD1;
    let x_357 : vec4<f32> = u_xlat4;
    let x_359 : vec3<f32> = ((vec3<f32>(x_352.x, x_352.y, x_352.z) * vec3<f32>(x_354.z, x_354.z, x_354.z)) + vec3<f32>(x_357.x, x_357.y, x_357.z));
    let x_360 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_359.x, x_359.y, x_359.z, x_360.w);
    let x_362 : vec4<f32> = u_xlat4;
    let x_365 : vec4<f32> = x_20.unity_ProbeVolumeWorldToObject[3i];
    let x_367 : vec3<f32> = (vec3<f32>(x_362.x, x_362.y, x_362.z) + vec3<f32>(x_365.x, x_365.y, x_365.z));
    let x_368 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_367.x, x_367.y, x_367.z, x_368.w);
    let x_370 : bool = u_xlatb15;
    if (x_370) {
      let x_374 : vec4<f32> = u_xlat4;
      x_371 = vec3<f32>(x_374.x, x_374.y, x_374.z);
    } else {
      let x_377 : vec3<f32> = vs_TEXCOORD1;
      x_371 = x_377;
    }
    let x_378 : vec3<f32> = x_371;
    let x_379 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_378.x, x_378.y, x_378.z, x_379.w);
    let x_381 : vec4<f32> = u_xlat4;
    let x_385 : vec3<f32> = x_20.unity_ProbeVolumeMin;
    let x_387 : vec3<f32> = (vec3<f32>(x_381.x, x_381.y, x_381.z) + -(x_385));
    let x_388 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_387.x, x_387.y, x_387.z, x_388.w);
    let x_390 : vec4<f32> = u_xlat4;
    let x_394 : vec3<f32> = x_20.unity_ProbeVolumeSizeInv;
    let x_395 : vec3<f32> = (vec3<f32>(x_390.x, x_390.y, x_390.z) * x_394);
    let x_396 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_396.x, x_395.x, x_395.y, x_395.z);
    let x_399 : f32 = u_xlat4.y;
    u_xlat15 = ((x_399 * 0.25f) + 0.75f);
    let x_405 : f32 = x_20.unity_ProbeVolumeParams.z;
    u_xlat21 = ((x_405 * 0.5f) + 0.75f);
    let x_408 : f32 = u_xlat21;
    let x_409 : f32 = u_xlat15;
    u_xlat4.x = max(x_408, x_409);
    let x_417 : vec4<f32> = u_xlat4;
    let x_419 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_417.x, x_417.z, x_417.w));
    u_xlat4 = x_419;
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
    u_xlat4.w = 1.0f;
  }
  let x_425 : vec4<f32> = u_xlat4;
  let x_427 : vec4<f32> = x_20.unity_OcclusionMaskSelector;
  u_xlat15 = dot(x_425, x_427);
  let x_429 : f32 = u_xlat15;
  u_xlat15 = clamp(x_429, 0.0f, 1.0f);
  let x_432 : vec4<f32> = vs_TEXCOORD3;
  let x_434 : vec4<f32> = vs_TEXCOORD3;
  let x_436 : vec2<f32> = (vec2<f32>(x_432.x, x_432.y) / vec2<f32>(x_434.w, x_434.w));
  let x_437 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_436.x, x_436.y, x_437.z, x_437.w);
  let x_444 : vec4<f32> = u_xlat4;
  let x_446 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, vec2<f32>(x_444.x, x_444.y));
  u_xlat21 = x_446.x;
  let x_448 : f32 = u_xlat21;
  let x_450 : f32 = u_xlat15;
  u_xlat15 = (-(x_448) + x_450);
  let x_452 : f32 = u_xlat19;
  let x_453 : f32 = u_xlat15;
  let x_455 : f32 = u_xlat21;
  u_xlat19 = ((x_452 * x_453) + x_455);
  let x_462 : vec4<f32> = u_xlat3;
  let x_464 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_462.x, x_462.y));
  u_xlat3.x = x_464.w;
  let x_467 : f32 = u_xlat19;
  let x_469 : f32 = u_xlat3.x;
  u_xlat19 = (x_467 * x_469);
  let x_471 : f32 = u_xlat19;
  let x_475 : vec4<f32> = x_20.x_LightColor0;
  let x_477 : vec3<f32> = (vec3<f32>(x_471, x_471, x_471) * vec3<f32>(x_475.x, x_475.y, x_475.z));
  let x_478 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_477.x, x_477.y, x_477.z, x_478.w);
  let x_481 : vec3<f32> = vs_TEXCOORD0;
  let x_482 : vec3<f32> = vs_TEXCOORD0;
  u_xlat19 = dot(x_481, x_482);
  let x_484 : f32 = u_xlat19;
  u_xlat19 = inverseSqrt(x_484);
  let x_486 : f32 = u_xlat19;
  let x_488 : vec3<f32> = vs_TEXCOORD0;
  let x_489 : vec3<f32> = (vec3<f32>(x_486, x_486, x_486) * x_488);
  let x_490 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_489.x, x_489.y, x_489.z, x_490.w);
  let x_493 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec3<f32>(x_493.x, x_493.y, x_493.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_500 : f32 = x_20.x_Metallic;
  let x_502 : f32 = x_20.x_Metallic;
  let x_504 : f32 = x_20.x_Metallic;
  let x_505 : vec3<f32> = vec3<f32>(x_500, x_502, x_504);
  let x_510 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_505.x, x_505.y, x_505.z) * x_510) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_516 : f32 = x_20.x_Metallic;
  u_xlat19 = ((-(x_516) * 0.959999979f) + 0.959999979f);
  let x_521 : f32 = u_xlat19;
  let x_523 : vec4<f32> = u_xlat2;
  let x_525 : vec3<f32> = (vec3<f32>(x_521, x_521, x_521) * vec3<f32>(x_523.x, x_523.y, x_523.z));
  let x_526 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_525.x, x_525.y, x_525.z, x_526.w);
  let x_530 : f32 = x_20.x_Glossiness;
  let x_533 : f32 = u_xlat2.w;
  u_xlat19 = ((-(x_530) * x_533) + 1.0f);
  let x_536 : vec3<f32> = u_xlat0;
  let x_537 : f32 = u_xlat18;
  let x_541 : vec4<f32> = x_20.x_WorldSpaceLightPos0;
  u_xlat0 = ((x_536 * vec3<f32>(x_537, x_537, x_537)) + vec3<f32>(x_541.x, x_541.y, x_541.z));
  let x_544 : vec3<f32> = u_xlat0;
  let x_545 : vec3<f32> = u_xlat0;
  u_xlat18 = dot(x_544, x_545);
  let x_547 : f32 = u_xlat18;
  u_xlat18 = max(x_547, 0.001f);
  let x_550 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_550);
  let x_552 : f32 = u_xlat18;
  let x_554 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_552, x_552, x_552) * x_554);
  let x_556 : vec4<f32> = u_xlat4;
  let x_558 : vec3<f32> = u_xlat1;
  u_xlat18 = dot(vec3<f32>(x_556.x, x_556.y, x_556.z), x_558);
  let x_560 : vec4<f32> = u_xlat4;
  let x_563 : vec4<f32> = x_20.x_WorldSpaceLightPos0;
  u_xlat1.x = dot(vec3<f32>(x_560.x, x_560.y, x_560.z), vec3<f32>(x_563.x, x_563.y, x_563.z));
  let x_568 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_568, 0.0f, 1.0f);
  let x_572 : vec4<f32> = u_xlat4;
  let x_574 : vec3<f32> = u_xlat0;
  u_xlat7 = dot(vec3<f32>(x_572.x, x_572.y, x_572.z), x_574);
  let x_576 : f32 = u_xlat7;
  u_xlat7 = clamp(x_576, 0.0f, 1.0f);
  let x_579 : vec4<f32> = x_20.x_WorldSpaceLightPos0;
  let x_581 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_579.x, x_579.y, x_579.z), x_581);
  let x_585 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_585, 0.0f, 1.0f);
  let x_590 : f32 = u_xlat0.x;
  let x_592 : f32 = u_xlat0.x;
  u_xlat6.x = (x_590 * x_592);
  let x_595 : vec3<f32> = u_xlat6;
  let x_597 : f32 = u_xlat19;
  u_xlat6.x = dot(vec2<f32>(x_595.x, x_595.x), vec2<f32>(x_597, x_597));
  let x_602 : f32 = u_xlat6.x;
  u_xlat6.x = (x_602 + -0.5f);
  let x_608 : f32 = u_xlat1.x;
  u_xlat12 = (-(x_608) + 1.0f);
  let x_612 : f32 = u_xlat12;
  let x_613 : f32 = u_xlat12;
  u_xlat13 = (x_612 * x_613);
  let x_615 : f32 = u_xlat13;
  let x_616 : f32 = u_xlat13;
  u_xlat13 = (x_615 * x_616);
  let x_618 : f32 = u_xlat12;
  let x_619 : f32 = u_xlat13;
  u_xlat12 = (x_618 * x_619);
  let x_622 : f32 = u_xlat6.x;
  let x_623 : f32 = u_xlat12;
  u_xlat12 = ((x_622 * x_623) + 1.0f);
  let x_626 : f32 = u_xlat18;
  u_xlat13 = (-(abs(x_626)) + 1.0f);
  let x_631 : f32 = u_xlat13;
  let x_632 : f32 = u_xlat13;
  u_xlat20 = (x_631 * x_632);
  let x_634 : f32 = u_xlat20;
  let x_635 : f32 = u_xlat20;
  u_xlat20 = (x_634 * x_635);
  let x_637 : f32 = u_xlat13;
  let x_638 : f32 = u_xlat20;
  u_xlat13 = (x_637 * x_638);
  let x_641 : f32 = u_xlat6.x;
  let x_642 : f32 = u_xlat13;
  u_xlat6.x = ((x_641 * x_642) + 1.0f);
  let x_647 : f32 = u_xlat6.x;
  let x_648 : f32 = u_xlat12;
  u_xlat6.x = (x_647 * x_648);
  let x_651 : f32 = u_xlat19;
  let x_652 : f32 = u_xlat19;
  u_xlat12 = (x_651 * x_652);
  let x_654 : f32 = u_xlat12;
  u_xlat12 = max(x_654, 0.002f);
  let x_657 : f32 = u_xlat12;
  u_xlat13 = (-(x_657) + 1.0f);
  let x_660 : f32 = u_xlat18;
  let x_662 : f32 = u_xlat13;
  let x_664 : f32 = u_xlat12;
  u_xlat19 = ((abs(x_660) * x_662) + x_664);
  let x_667 : f32 = u_xlat1.x;
  let x_668 : f32 = u_xlat13;
  let x_670 : f32 = u_xlat12;
  u_xlat13 = ((x_667 * x_668) + x_670);
  let x_672 : f32 = u_xlat18;
  let x_674 : f32 = u_xlat13;
  u_xlat18 = (abs(x_672) * x_674);
  let x_677 : f32 = u_xlat1.x;
  let x_678 : f32 = u_xlat19;
  let x_680 : f32 = u_xlat18;
  u_xlat18 = ((x_677 * x_678) + x_680);
  let x_682 : f32 = u_xlat18;
  u_xlat18 = (x_682 + 0.00001f);
  let x_685 : f32 = u_xlat18;
  u_xlat18 = (0.5f / x_685);
  let x_687 : f32 = u_xlat12;
  let x_688 : f32 = u_xlat12;
  u_xlat12 = (x_687 * x_688);
  let x_690 : f32 = u_xlat7;
  let x_691 : f32 = u_xlat12;
  let x_693 : f32 = u_xlat7;
  u_xlat13 = ((x_690 * x_691) + -(x_693));
  let x_696 : f32 = u_xlat13;
  let x_697 : f32 = u_xlat7;
  u_xlat7 = ((x_696 * x_697) + 1.0f);
  let x_700 : f32 = u_xlat12;
  u_xlat12 = (x_700 * 0.318309873f);
  let x_703 : f32 = u_xlat7;
  let x_704 : f32 = u_xlat7;
  u_xlat7 = ((x_703 * x_704) + 0.0000001f);
  let x_708 : f32 = u_xlat12;
  let x_709 : f32 = u_xlat7;
  u_xlat12 = (x_708 / x_709);
  let x_711 : f32 = u_xlat12;
  let x_712 : f32 = u_xlat18;
  u_xlat6.y = (x_711 * x_712);
  let x_715 : vec3<f32> = u_xlat1;
  let x_717 : vec3<f32> = u_xlat6;
  let x_719 : vec2<f32> = (vec2<f32>(x_715.x, x_715.x) * vec2<f32>(x_717.x, x_717.y));
  let x_720 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_719.x, x_719.y, x_720.z);
  let x_723 : f32 = u_xlat6.y;
  u_xlat12 = (x_723 * 3.141592741f);
  let x_726 : f32 = u_xlat12;
  u_xlat12 = max(x_726, 0.0f);
  let x_728 : vec3<f32> = u_xlat5;
  let x_729 : vec3<f32> = u_xlat5;
  u_xlat18 = dot(x_728, x_729);
  let x_732 : f32 = u_xlat18;
  u_xlatb18 = !((x_732 == 0.0f));
  let x_734 : bool = u_xlatb18;
  u_xlat18 = select(0.0f, 1.0f, x_734);
  let x_736 : f32 = u_xlat18;
  let x_737 : f32 = u_xlat12;
  u_xlat12 = (x_736 * x_737);
  let x_739 : vec3<f32> = u_xlat6;
  let x_741 : vec4<f32> = u_xlat3;
  u_xlat1 = (vec3<f32>(x_739.x, x_739.x, x_739.x) * vec3<f32>(x_741.x, x_741.y, x_741.z));
  let x_744 : vec4<f32> = u_xlat3;
  let x_746 : f32 = u_xlat12;
  u_xlat6 = (vec3<f32>(x_744.x, x_744.y, x_744.z) * vec3<f32>(x_746, x_746, x_746));
  let x_750 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_750) + 1.0f);
  let x_755 : f32 = u_xlat0.x;
  let x_757 : f32 = u_xlat0.x;
  u_xlat19 = (x_755 * x_757);
  let x_759 : f32 = u_xlat19;
  let x_760 : f32 = u_xlat19;
  u_xlat19 = (x_759 * x_760);
  let x_763 : f32 = u_xlat0.x;
  let x_764 : f32 = u_xlat19;
  u_xlat0.x = (x_763 * x_764);
  let x_767 : vec3<f32> = u_xlat5;
  let x_770 : vec3<f32> = (-(x_767) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_771 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_770.x, x_770.y, x_770.z, x_771.w);
  let x_773 : vec4<f32> = u_xlat3;
  let x_775 : vec3<f32> = u_xlat0;
  let x_778 : vec3<f32> = u_xlat5;
  let x_779 : vec3<f32> = ((vec3<f32>(x_773.x, x_773.y, x_773.z) * vec3<f32>(x_775.x, x_775.x, x_775.x)) + x_778);
  let x_780 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_779.x, x_779.y, x_779.z, x_780.w);
  let x_782 : vec3<f32> = u_xlat6;
  let x_783 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_782 * vec3<f32>(x_783.x, x_783.y, x_783.z));
  let x_788 : vec4<f32> = u_xlat2;
  let x_790 : vec3<f32> = u_xlat1;
  let x_792 : vec3<f32> = u_xlat0;
  let x_793 : vec3<f32> = ((vec3<f32>(x_788.x, x_788.y, x_788.z) * x_790) + x_792);
  let x_794 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_793.x, x_793.y, x_793.z, x_794.w);
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

