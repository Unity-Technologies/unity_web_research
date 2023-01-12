struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  x_LightShadowData : vec4<f32>,
  unity_ShadowFadeCenterAndType : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
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
  x_Scale : f32,
  @size(4)
  padding_3 : u32,
  x_OctaveIndex : vec4<i32>,
}

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_20 : PGlobals;

@group(0) @binding(0) var x_VolumeNoise : texture_3d<f32>;

@group(0) @binding(12) var sampler_VolumeNoise : sampler;

@group(0) @binding(1) var x_AlbedoRamp1 : texture_2d<f32>;

@group(0) @binding(10) var sampler_AlbedoRamp1 : sampler;

@group(0) @binding(2) var x_AlbedoRamp2 : texture_2d<f32>;

@group(0) @binding(11) var sampler_AlbedoRamp2 : sampler;

var<private> vs_COLOR0 : vec4<f32>;

@group(0) @binding(6) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(8) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD4 : vec4<f32>;

@group(0) @binding(3) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_ShadowMapTexture : sampler;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(4) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(0) @binding(5) var unity_SpecCube1 : texture_cube<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat36 : f32;
  var u_xlat1 : vec4<f32>;
  var u_xlati2 : vec4<i32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat37 : f32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat2 : vec4<f32>;
  var indexable_1 : array<vec4<u32>, 4u>;
  var u_xlat14 : f32;
  var indexable_2 : array<vec4<u32>, 4u>;
  var u_xlat26 : f32;
  var indexable_3 : array<vec4<u32>, 4u>;
  var u_xlatb3 : bool;
  var u_xlatb15 : bool;
  var u_xlat15 : vec3<f32>;
  var x_348 : vec3<f32>;
  var u_xlat27 : vec2<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlatb37 : bool;
  var x_527 : vec3<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlatb9 : vec3<bool>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_724 : f32;
  var x_736 : f32;
  var x_748 : f32;
  var u_xlat40 : f32;
  var u_xlatb41 : bool;
  var u_xlat41 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlatb11 : vec3<bool>;
  var hlslcc_movcTemp_1 : vec4<f32>;
  var x_914 : f32;
  var x_926 : f32;
  var x_938 : f32;
  var u_xlat13 : f32;
  var u_xlat12 : vec3<f32>;
  var u_xlat24 : f32;
  var u_xlat25 : f32;
  var u_xlatb1 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec3<f32> = vs_TEXCOORD1;
  let x_24 : vec3<f32> = x_20.x_WorldSpaceCameraPos;
  let x_25 : vec3<f32> = (-(x_13) + x_24);
  let x_26 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_25.x, x_25.y, x_25.z, x_26.w);
  let x_30 : vec4<f32> = u_xlat0;
  let x_32 : vec4<f32> = u_xlat0;
  u_xlat36 = dot(vec3<f32>(x_30.x, x_30.y, x_30.z), vec3<f32>(x_32.x, x_32.y, x_32.z));
  let x_35 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_35);
  let x_38 : f32 = u_xlat36;
  let x_40 : vec4<f32> = u_xlat0;
  let x_42 : vec3<f32> = (vec3<f32>(x_38, x_38, x_38) * vec3<f32>(x_40.x, x_40.y, x_40.z));
  let x_43 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_42.x, x_42.y, x_42.z, x_43.w);
  let x_50 : vec4<i32> = x_20.x_OctaveIndex;
  u_xlati2 = min(x_50, vec4<i32>(3i, 3i, 3i, 3i));
  let x_55 : vec3<f32> = vs_TEXCOORD1;
  let x_59 : f32 = x_20.x_Scale;
  let x_61 : f32 = x_20.x_Scale;
  let x_63 : f32 = x_20.x_Scale;
  let x_64 : vec3<f32> = vec3<f32>(x_59, x_61, x_63);
  let x_69 : vec3<f32> = (x_55 * vec3<f32>(x_64.x, x_64.y, x_64.z));
  let x_70 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_69.x, x_69.y, x_69.z, x_70.w);
  let x_83 : vec4<f32> = u_xlat3;
  let x_85 : vec4<f32> = textureSample(x_VolumeNoise, sampler_VolumeNoise, vec3<f32>(x_83.x, x_83.y, x_83.z));
  u_xlat4 = x_85;
  let x_87 : vec4<f32> = u_xlat4;
  let x_101 : i32 = u_xlati2.x;
  indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
  let x_106 : vec4<u32> = indexable[x_101];
  u_xlat37 = dot(x_87, bitcast<vec4<f32>>(x_106));
  let x_109 : vec4<f32> = u_xlat3;
  let x_113 : vec3<f32> = (vec3<f32>(x_109.x, x_109.y, x_109.z) * vec3<f32>(4.0f, 4.0f, 4.0f));
  let x_114 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_113.x, x_113.y, x_113.z, x_114.w);
  let x_119 : vec4<f32> = u_xlat4;
  let x_121 : vec4<f32> = textureSample(x_VolumeNoise, sampler_VolumeNoise, vec3<f32>(x_119.x, x_119.y, x_119.z));
  u_xlat4 = x_121;
  let x_123 : vec4<f32> = u_xlat4;
  let x_126 : i32 = u_xlati2.y;
  indexable_1 = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
  let x_129 : vec4<u32> = indexable_1[x_126];
  u_xlat2.x = dot(x_123, bitcast<vec4<f32>>(x_129));
  let x_133 : vec4<f32> = u_xlat3;
  let x_137 : vec3<f32> = (vec3<f32>(x_133.x, x_133.y, x_133.z) * vec3<f32>(16.0f, 16.0f, 16.0f));
  let x_138 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_137.x, x_137.y, x_137.z, x_138.w);
  let x_143 : vec4<f32> = u_xlat4;
  let x_145 : vec4<f32> = textureSample(x_VolumeNoise, sampler_VolumeNoise, vec3<f32>(x_143.x, x_143.y, x_143.z));
  u_xlat4 = x_145;
  let x_147 : vec4<f32> = u_xlat4;
  let x_150 : i32 = u_xlati2.z;
  indexable_2 = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
  let x_153 : vec4<u32> = indexable_2[x_150];
  u_xlat14 = dot(x_147, bitcast<vec4<f32>>(x_153));
  let x_156 : vec4<f32> = u_xlat3;
  let x_160 : vec3<f32> = (vec3<f32>(x_156.x, x_156.y, x_156.z) * vec3<f32>(256.0f, 256.0f, 256.0f));
  let x_161 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_160.x, x_160.y, x_160.z, x_161.w);
  let x_166 : vec4<f32> = u_xlat3;
  let x_168 : vec4<f32> = textureSample(x_VolumeNoise, sampler_VolumeNoise, vec3<f32>(x_166.x, x_166.y, x_166.z));
  u_xlat3 = x_168;
  let x_170 : vec4<f32> = u_xlat3;
  let x_173 : i32 = u_xlati2.w;
  indexable_3 = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
  let x_176 : vec4<u32> = indexable_3[x_173];
  u_xlat26 = dot(x_170, bitcast<vec4<f32>>(x_176));
  let x_180 : f32 = u_xlat2.x;
  let x_183 : f32 = u_xlat37;
  u_xlat37 = ((x_180 * 0.5f) + x_183);
  let x_185 : f32 = u_xlat14;
  let x_188 : f32 = u_xlat37;
  u_xlat37 = ((x_185 * 0.25f) + x_188);
  let x_190 : f32 = u_xlat26;
  let x_193 : f32 = u_xlat37;
  u_xlat37 = ((x_190 * 0.125f) + x_193);
  let x_195 : f32 = u_xlat37;
  u_xlat37 = (x_195 * 0.533333361f);
  let x_206 : f32 = u_xlat37;
  let x_209 : vec4<f32> = textureSample(x_AlbedoRamp1, sampler_AlbedoRamp1, vec2<f32>(x_206, x_206));
  u_xlat2 = x_209;
  let x_215 : f32 = u_xlat37;
  let x_217 : vec4<f32> = textureSample(x_AlbedoRamp2, sampler_AlbedoRamp2, vec2<f32>(x_215, x_215));
  u_xlat3 = x_217;
  let x_218 : vec4<f32> = u_xlat2;
  let x_220 : vec4<f32> = u_xlat3;
  u_xlat3 = (-(x_218) + x_220);
  let x_224 : vec4<f32> = vs_COLOR0;
  let x_226 : vec4<f32> = u_xlat3;
  let x_228 : vec4<f32> = u_xlat2;
  u_xlat2 = ((vec4<f32>(x_224.w, x_224.w, x_224.w, x_224.w) * x_226) + x_228);
  let x_232 : f32 = x_20.unity_MatrixV[0i].z;
  u_xlat3.x = x_232;
  let x_236 : f32 = x_20.unity_MatrixV[1i].z;
  u_xlat3.y = x_236;
  let x_240 : f32 = x_20.unity_MatrixV[2i].z;
  u_xlat3.z = x_240;
  let x_242 : vec4<f32> = u_xlat0;
  let x_244 : vec4<f32> = u_xlat3;
  u_xlat37 = dot(vec3<f32>(x_242.x, x_242.y, x_242.z), vec3<f32>(x_244.x, x_244.y, x_244.z));
  let x_247 : vec3<f32> = vs_TEXCOORD1;
  let x_251 : vec4<f32> = x_20.unity_ShadowFadeCenterAndType;
  let x_254 : vec3<f32> = (x_247 + -(vec3<f32>(x_251.x, x_251.y, x_251.z)));
  let x_255 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_254.x, x_254.y, x_254.z, x_255.w);
  let x_257 : vec4<f32> = u_xlat3;
  let x_259 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_257.x, x_257.y, x_257.z), vec3<f32>(x_259.x, x_259.y, x_259.z));
  let x_264 : f32 = u_xlat3.x;
  u_xlat3.x = sqrt(x_264);
  let x_267 : f32 = u_xlat37;
  let x_270 : f32 = u_xlat3.x;
  u_xlat3.x = (-(x_267) + x_270);
  let x_274 : f32 = x_20.unity_ShadowFadeCenterAndType.w;
  let x_276 : f32 = u_xlat3.x;
  let x_278 : f32 = u_xlat37;
  u_xlat37 = ((x_274 * x_276) + x_278);
  let x_280 : f32 = u_xlat37;
  let x_283 : f32 = x_20.x_LightShadowData.z;
  let x_286 : f32 = x_20.x_LightShadowData.w;
  u_xlat37 = ((x_280 * x_283) + x_286);
  let x_288 : f32 = u_xlat37;
  u_xlat37 = clamp(x_288, 0.0f, 1.0f);
  let x_297 : f32 = x_20.unity_ProbeVolumeParams.x;
  u_xlatb3 = (x_297 == 1.0f);
  let x_299 : bool = u_xlatb3;
  if (x_299) {
    let x_304 : f32 = x_20.unity_ProbeVolumeParams.y;
    u_xlatb15 = (x_304 == 1.0f);
    let x_306 : vec3<f32> = vs_TEXCOORD1;
    let x_310 : vec4<f32> = x_20.unity_ProbeVolumeWorldToObject[1i];
    let x_312 : vec3<f32> = (vec3<f32>(x_306.y, x_306.y, x_306.y) * vec3<f32>(x_310.x, x_310.y, x_310.z));
    let x_313 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_312.x, x_312.y, x_312.z, x_313.w);
    let x_316 : vec4<f32> = x_20.unity_ProbeVolumeWorldToObject[0i];
    let x_318 : vec3<f32> = vs_TEXCOORD1;
    let x_321 : vec4<f32> = u_xlat4;
    let x_323 : vec3<f32> = ((vec3<f32>(x_316.x, x_316.y, x_316.z) * vec3<f32>(x_318.x, x_318.x, x_318.x)) + vec3<f32>(x_321.x, x_321.y, x_321.z));
    let x_324 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_323.x, x_323.y, x_323.z, x_324.w);
    let x_327 : vec4<f32> = x_20.unity_ProbeVolumeWorldToObject[2i];
    let x_329 : vec3<f32> = vs_TEXCOORD1;
    let x_332 : vec4<f32> = u_xlat4;
    let x_334 : vec3<f32> = ((vec3<f32>(x_327.x, x_327.y, x_327.z) * vec3<f32>(x_329.z, x_329.z, x_329.z)) + vec3<f32>(x_332.x, x_332.y, x_332.z));
    let x_335 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
    let x_337 : vec4<f32> = u_xlat4;
    let x_340 : vec4<f32> = x_20.unity_ProbeVolumeWorldToObject[3i];
    let x_342 : vec3<f32> = (vec3<f32>(x_337.x, x_337.y, x_337.z) + vec3<f32>(x_340.x, x_340.y, x_340.z));
    let x_343 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_342.x, x_342.y, x_342.z, x_343.w);
    let x_347 : bool = u_xlatb15;
    if (x_347) {
      let x_351 : vec4<f32> = u_xlat4;
      x_348 = vec3<f32>(x_351.x, x_351.y, x_351.z);
    } else {
      let x_354 : vec3<f32> = vs_TEXCOORD1;
      x_348 = x_354;
    }
    let x_355 : vec3<f32> = x_348;
    u_xlat15 = x_355;
    let x_356 : vec3<f32> = u_xlat15;
    let x_359 : vec3<f32> = x_20.unity_ProbeVolumeMin;
    u_xlat15 = (x_356 + -(x_359));
    let x_362 : vec3<f32> = u_xlat15;
    let x_365 : vec3<f32> = x_20.unity_ProbeVolumeSizeInv;
    let x_366 : vec3<f32> = (x_362 * x_365);
    let x_367 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_367.x, x_366.x, x_366.y, x_366.z);
    let x_370 : f32 = u_xlat4.y;
    u_xlat15.x = ((x_370 * 0.25f) + 0.75f);
    let x_378 : f32 = x_20.unity_ProbeVolumeParams.z;
    u_xlat27.x = ((x_378 * 0.5f) + 0.75f);
    let x_383 : f32 = u_xlat27.x;
    let x_385 : f32 = u_xlat15.x;
    u_xlat4.x = max(x_383, x_385);
    let x_393 : vec4<f32> = u_xlat4;
    let x_395 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_393.x, x_393.z, x_393.w));
    u_xlat4 = x_395;
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
    u_xlat4.w = 1.0f;
  }
  let x_401 : vec4<f32> = u_xlat4;
  let x_404 : vec4<f32> = x_20.unity_OcclusionMaskSelector;
  u_xlat15.x = dot(x_401, x_404);
  let x_408 : f32 = u_xlat15.x;
  u_xlat15.x = clamp(x_408, 0.0f, 1.0f);
  let x_412 : vec4<f32> = vs_TEXCOORD4;
  let x_414 : vec4<f32> = vs_TEXCOORD4;
  u_xlat27 = (vec2<f32>(x_412.x, x_412.y) / vec2<f32>(x_414.w, x_414.w));
  let x_422 : vec2<f32> = u_xlat27;
  let x_423 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, x_422);
  u_xlat27.x = x_423.x;
  let x_427 : f32 = u_xlat27.x;
  let x_430 : f32 = u_xlat15.x;
  u_xlat15.x = (-(x_427) + x_430);
  let x_433 : f32 = u_xlat37;
  let x_435 : f32 = u_xlat15.x;
  let x_438 : f32 = u_xlat27.x;
  u_xlat37 = ((x_433 * x_435) + x_438);
  let x_442 : f32 = x_20.x_Glossiness;
  let x_445 : f32 = u_xlat2.w;
  u_xlat15.x = ((-(x_442) * x_445) + 1.0f);
  let x_449 : vec4<f32> = u_xlat1;
  let x_453 : vec3<f32> = vs_TEXCOORD0;
  u_xlat27.x = dot(-(vec3<f32>(x_449.x, x_449.y, x_449.z)), x_453);
  let x_457 : f32 = u_xlat27.x;
  let x_459 : f32 = u_xlat27.x;
  u_xlat27.x = (x_457 + x_459);
  let x_462 : vec3<f32> = vs_TEXCOORD0;
  let x_463 : vec2<f32> = u_xlat27;
  let x_467 : vec4<f32> = u_xlat1;
  let x_470 : vec3<f32> = ((x_462 * -(vec3<f32>(x_463.x, x_463.x, x_463.x))) + -(vec3<f32>(x_467.x, x_467.y, x_467.z)));
  let x_471 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_470.x, x_470.y, x_470.z, x_471.w);
  let x_474 : f32 = u_xlat37;
  let x_478 : vec4<f32> = x_20.x_LightColor0;
  u_xlat5 = (vec3<f32>(x_474, x_474, x_474) * vec3<f32>(x_478.x, x_478.y, x_478.z));
  let x_481 : bool = u_xlatb3;
  if (x_481) {
    let x_486 : f32 = x_20.unity_ProbeVolumeParams.y;
    u_xlatb37 = (x_486 == 1.0f);
    let x_488 : vec3<f32> = vs_TEXCOORD1;
    let x_491 : vec4<f32> = x_20.unity_ProbeVolumeWorldToObject[1i];
    let x_493 : vec3<f32> = (vec3<f32>(x_488.y, x_488.y, x_488.y) * vec3<f32>(x_491.x, x_491.y, x_491.z));
    let x_494 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_493.x, x_494.y, x_493.y, x_493.z);
    let x_497 : vec4<f32> = x_20.unity_ProbeVolumeWorldToObject[0i];
    let x_499 : vec3<f32> = vs_TEXCOORD1;
    let x_502 : vec4<f32> = u_xlat3;
    let x_504 : vec3<f32> = ((vec3<f32>(x_497.x, x_497.y, x_497.z) * vec3<f32>(x_499.x, x_499.x, x_499.x)) + vec3<f32>(x_502.x, x_502.z, x_502.w));
    let x_505 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_504.x, x_505.y, x_504.y, x_504.z);
    let x_508 : vec4<f32> = x_20.unity_ProbeVolumeWorldToObject[2i];
    let x_510 : vec3<f32> = vs_TEXCOORD1;
    let x_513 : vec4<f32> = u_xlat3;
    let x_515 : vec3<f32> = ((vec3<f32>(x_508.x, x_508.y, x_508.z) * vec3<f32>(x_510.z, x_510.z, x_510.z)) + vec3<f32>(x_513.x, x_513.z, x_513.w));
    let x_516 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_515.x, x_516.y, x_515.y, x_515.z);
    let x_518 : vec4<f32> = u_xlat3;
    let x_521 : vec4<f32> = x_20.unity_ProbeVolumeWorldToObject[3i];
    let x_523 : vec3<f32> = (vec3<f32>(x_518.x, x_518.z, x_518.w) + vec3<f32>(x_521.x, x_521.y, x_521.z));
    let x_524 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_523.x, x_524.y, x_523.y, x_523.z);
    let x_526 : bool = u_xlatb37;
    if (x_526) {
      let x_530 : vec4<f32> = u_xlat3;
      x_527 = vec3<f32>(x_530.x, x_530.z, x_530.w);
    } else {
      let x_533 : vec3<f32> = vs_TEXCOORD1;
      x_527 = x_533;
    }
    let x_534 : vec3<f32> = x_527;
    let x_535 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_534.x, x_535.y, x_534.y, x_534.z);
    let x_537 : vec4<f32> = u_xlat3;
    let x_540 : vec3<f32> = x_20.unity_ProbeVolumeMin;
    let x_542 : vec3<f32> = (vec3<f32>(x_537.x, x_537.z, x_537.w) + -(x_540));
    let x_543 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_542.x, x_543.y, x_542.y, x_542.z);
    let x_546 : vec4<f32> = u_xlat3;
    let x_549 : vec3<f32> = x_20.unity_ProbeVolumeSizeInv;
    let x_550 : vec3<f32> = (vec3<f32>(x_546.x, x_546.z, x_546.w) * x_549);
    let x_551 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_551.x, x_550.x, x_550.y, x_550.z);
    let x_554 : f32 = u_xlat6.y;
    u_xlat37 = (x_554 * 0.25f);
    let x_557 : f32 = x_20.unity_ProbeVolumeParams.z;
    u_xlat3.x = (x_557 * 0.5f);
    let x_561 : f32 = x_20.unity_ProbeVolumeParams.z;
    u_xlat27.x = ((-(x_561) * 0.5f) + 0.25f);
    let x_566 : f32 = u_xlat37;
    let x_568 : f32 = u_xlat3.x;
    u_xlat37 = max(x_566, x_568);
    let x_571 : f32 = u_xlat27.x;
    let x_572 : f32 = u_xlat37;
    u_xlat6.x = min(x_571, x_572);
    let x_579 : vec4<f32> = u_xlat6;
    let x_581 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_579.x, x_579.z, x_579.w));
    u_xlat7 = x_581;
    let x_582 : vec4<f32> = u_xlat6;
    let x_585 : vec3<f32> = (vec3<f32>(x_582.x, x_582.z, x_582.w) + vec3<f32>(0.25f, 0.0f, 0.0f));
    let x_586 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_585.x, x_586.y, x_585.y, x_585.z);
    let x_592 : vec4<f32> = u_xlat3;
    let x_594 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_592.x, x_592.z, x_592.w));
    u_xlat8 = x_594;
    let x_595 : vec4<f32> = u_xlat6;
    let x_598 : vec3<f32> = (vec3<f32>(x_595.x, x_595.z, x_595.w) + vec3<f32>(0.5f, 0.0f, 0.0f));
    let x_599 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_598.x, x_599.y, x_598.y, x_598.z);
    let x_604 : vec4<f32> = u_xlat3;
    let x_606 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_604.x, x_604.z, x_604.w));
    u_xlat6 = x_606;
    let x_608 : vec3<f32> = vs_TEXCOORD0;
    let x_609 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_608.x, x_608.y, x_608.z, x_609.w);
    u_xlat9.w = 1.0f;
    let x_612 : vec4<f32> = u_xlat7;
    let x_613 : vec4<f32> = u_xlat9;
    u_xlat7.x = dot(x_612, x_613);
    let x_616 : vec4<f32> = u_xlat8;
    let x_617 : vec4<f32> = u_xlat9;
    u_xlat7.y = dot(x_616, x_617);
    let x_620 : vec4<f32> = u_xlat6;
    let x_621 : vec4<f32> = u_xlat9;
    u_xlat7.z = dot(x_620, x_621);
  } else {
    let x_625 : vec3<f32> = vs_TEXCOORD0;
    let x_626 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_625.x, x_625.y, x_625.z, x_626.w);
    u_xlat6.w = 1.0f;
    let x_630 : vec4<f32> = x_20.unity_SHAr;
    let x_631 : vec4<f32> = u_xlat6;
    u_xlat7.x = dot(x_630, x_631);
    let x_635 : vec4<f32> = x_20.unity_SHAg;
    let x_636 : vec4<f32> = u_xlat6;
    u_xlat7.y = dot(x_635, x_636);
    let x_641 : vec4<f32> = x_20.unity_SHAb;
    let x_642 : vec4<f32> = u_xlat6;
    u_xlat7.z = dot(x_641, x_642);
  }
  let x_645 : vec4<f32> = u_xlat7;
  let x_648 : vec3<f32> = vs_TEXCOORD2;
  let x_649 : vec3<f32> = (vec3<f32>(x_645.x, x_645.y, x_645.z) + x_648);
  let x_650 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_649.x, x_650.y, x_649.y, x_649.z);
  let x_652 : vec4<f32> = u_xlat3;
  let x_655 : vec3<f32> = max(vec3<f32>(x_652.x, x_652.z, x_652.w), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_656 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_655.x, x_656.y, x_655.y, x_655.z);
  let x_660 : f32 = x_20.unity_SpecCube0_ProbePosition.w;
  u_xlatb37 = (0.0f < x_660);
  let x_662 : bool = u_xlatb37;
  if (x_662) {
    let x_665 : vec4<f32> = u_xlat4;
    let x_667 : vec4<f32> = u_xlat4;
    u_xlat37 = dot(vec3<f32>(x_665.x, x_665.y, x_665.z), vec3<f32>(x_667.x, x_667.y, x_667.z));
    let x_670 : f32 = u_xlat37;
    u_xlat37 = inverseSqrt(x_670);
    let x_672 : f32 = u_xlat37;
    let x_674 : vec4<f32> = u_xlat4;
    let x_676 : vec3<f32> = (vec3<f32>(x_672, x_672, x_672) * vec3<f32>(x_674.x, x_674.y, x_674.z));
    let x_677 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_676.x, x_676.y, x_676.z, x_677.w);
    let x_679 : vec3<f32> = vs_TEXCOORD1;
    let x_683 : vec4<f32> = x_20.unity_SpecCube0_BoxMax;
    let x_685 : vec3<f32> = (-(x_679) + vec3<f32>(x_683.x, x_683.y, x_683.z));
    let x_686 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_685.x, x_685.y, x_685.z, x_686.w);
    let x_688 : vec4<f32> = u_xlat7;
    let x_690 : vec4<f32> = u_xlat6;
    let x_692 : vec3<f32> = (vec3<f32>(x_688.x, x_688.y, x_688.z) / vec3<f32>(x_690.x, x_690.y, x_690.z));
    let x_693 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_692.x, x_692.y, x_692.z, x_693.w);
    let x_695 : vec3<f32> = vs_TEXCOORD1;
    let x_699 : vec4<f32> = x_20.unity_SpecCube0_BoxMin;
    let x_701 : vec3<f32> = (-(x_695) + vec3<f32>(x_699.x, x_699.y, x_699.z));
    let x_702 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_701.x, x_701.y, x_701.z, x_702.w);
    let x_704 : vec4<f32> = u_xlat8;
    let x_706 : vec4<f32> = u_xlat6;
    let x_708 : vec3<f32> = (vec3<f32>(x_704.x, x_704.y, x_704.z) / vec3<f32>(x_706.x, x_706.y, x_706.z));
    let x_709 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_708.x, x_708.y, x_708.z, x_709.w);
    let x_715 : vec4<f32> = u_xlat6;
    let x_718 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_715.x, x_715.y, x_715.z, x_715.x));
    u_xlatb9 = vec3<bool>(x_718.x, x_718.y, x_718.z);
    let x_721 : vec4<f32> = u_xlat7;
    hlslcc_movcTemp = x_721;
    let x_723 : bool = u_xlatb9.x;
    if (x_723) {
      let x_728 : f32 = u_xlat7.x;
      x_724 = x_728;
    } else {
      let x_731 : f32 = u_xlat8.x;
      x_724 = x_731;
    }
    let x_732 : f32 = x_724;
    hlslcc_movcTemp.x = x_732;
    let x_735 : bool = u_xlatb9.y;
    if (x_735) {
      let x_740 : f32 = u_xlat7.y;
      x_736 = x_740;
    } else {
      let x_743 : f32 = u_xlat8.y;
      x_736 = x_743;
    }
    let x_744 : f32 = x_736;
    hlslcc_movcTemp.y = x_744;
    let x_747 : bool = u_xlatb9.z;
    if (x_747) {
      let x_752 : f32 = u_xlat7.z;
      x_748 = x_752;
    } else {
      let x_755 : f32 = u_xlat8.z;
      x_748 = x_755;
    }
    let x_756 : f32 = x_748;
    hlslcc_movcTemp.z = x_756;
    let x_758 : vec4<f32> = hlslcc_movcTemp;
    u_xlat7 = x_758;
    let x_760 : f32 = u_xlat7.y;
    let x_762 : f32 = u_xlat7.x;
    u_xlat37 = min(x_760, x_762);
    let x_765 : f32 = u_xlat7.z;
    let x_766 : f32 = u_xlat37;
    u_xlat37 = min(x_765, x_766);
    let x_768 : vec3<f32> = vs_TEXCOORD1;
    let x_770 : vec4<f32> = x_20.unity_SpecCube0_ProbePosition;
    let x_773 : vec3<f32> = (x_768 + -(vec3<f32>(x_770.x, x_770.y, x_770.z)));
    let x_774 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_773.x, x_773.y, x_773.z, x_774.w);
    let x_776 : vec4<f32> = u_xlat6;
    let x_778 : f32 = u_xlat37;
    let x_781 : vec4<f32> = u_xlat7;
    let x_783 : vec3<f32> = ((vec3<f32>(x_776.x, x_776.y, x_776.z) * vec3<f32>(x_778, x_778, x_778)) + vec3<f32>(x_781.x, x_781.y, x_781.z));
    let x_784 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_783.x, x_783.y, x_783.z, x_784.w);
  } else {
    let x_787 : vec4<f32> = u_xlat4;
    let x_788 : vec3<f32> = vec3<f32>(x_787.x, x_787.y, x_787.z);
    let x_789 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_788.x, x_788.y, x_788.z, x_789.w);
  }
  let x_792 : f32 = u_xlat15.x;
  u_xlat37 = ((-(x_792) * 0.699999988f) + 1.700000048f);
  let x_798 : f32 = u_xlat37;
  let x_800 : f32 = u_xlat15.x;
  u_xlat37 = (x_798 * x_800);
  let x_802 : f32 = u_xlat37;
  u_xlat37 = (x_802 * 6.0f);
  let x_813 : vec4<f32> = u_xlat6;
  let x_815 : f32 = u_xlat37;
  let x_816 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_813.x, x_813.y, x_813.z), x_815);
  u_xlat6 = x_816;
  let x_819 : f32 = u_xlat6.w;
  u_xlat40 = (x_819 + -1.0f);
  let x_824 : f32 = x_20.unity_SpecCube0_HDR.w;
  let x_825 : f32 = u_xlat40;
  u_xlat40 = ((x_824 * x_825) + 1.0f);
  let x_828 : f32 = u_xlat40;
  u_xlat40 = log2(x_828);
  let x_830 : f32 = u_xlat40;
  let x_832 : f32 = x_20.unity_SpecCube0_HDR.y;
  u_xlat40 = (x_830 * x_832);
  let x_834 : f32 = u_xlat40;
  u_xlat40 = exp2(x_834);
  let x_836 : f32 = u_xlat40;
  let x_838 : f32 = x_20.unity_SpecCube0_HDR.x;
  u_xlat40 = (x_836 * x_838);
  let x_840 : vec4<f32> = u_xlat6;
  let x_842 : f32 = u_xlat40;
  let x_844 : vec3<f32> = (vec3<f32>(x_840.x, x_840.y, x_840.z) * vec3<f32>(x_842, x_842, x_842));
  let x_845 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_844.x, x_844.y, x_844.z, x_845.w);
  let x_849 : f32 = x_20.unity_SpecCube0_BoxMin.w;
  u_xlatb41 = (x_849 < 0.999989986f);
  let x_852 : bool = u_xlatb41;
  if (x_852) {
    let x_857 : f32 = x_20.unity_SpecCube1_ProbePosition.w;
    u_xlatb41 = (0.0f < x_857);
    let x_859 : bool = u_xlatb41;
    if (x_859) {
      let x_863 : vec4<f32> = u_xlat4;
      let x_865 : vec4<f32> = u_xlat4;
      u_xlat41 = dot(vec3<f32>(x_863.x, x_863.y, x_863.z), vec3<f32>(x_865.x, x_865.y, x_865.z));
      let x_868 : f32 = u_xlat41;
      u_xlat41 = inverseSqrt(x_868);
      let x_870 : vec4<f32> = u_xlat4;
      let x_872 : f32 = u_xlat41;
      let x_874 : vec3<f32> = (vec3<f32>(x_870.x, x_870.y, x_870.z) * vec3<f32>(x_872, x_872, x_872));
      let x_875 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_874.x, x_874.y, x_874.z, x_875.w);
      let x_877 : vec3<f32> = vs_TEXCOORD1;
      let x_881 : vec4<f32> = x_20.unity_SpecCube1_BoxMax;
      let x_883 : vec3<f32> = (-(x_877) + vec3<f32>(x_881.x, x_881.y, x_881.z));
      let x_884 : vec4<f32> = u_xlat9;
      u_xlat9 = vec4<f32>(x_883.x, x_883.y, x_883.z, x_884.w);
      let x_886 : vec4<f32> = u_xlat9;
      let x_888 : vec4<f32> = u_xlat8;
      let x_890 : vec3<f32> = (vec3<f32>(x_886.x, x_886.y, x_886.z) / vec3<f32>(x_888.x, x_888.y, x_888.z));
      let x_891 : vec4<f32> = u_xlat9;
      u_xlat9 = vec4<f32>(x_890.x, x_890.y, x_890.z, x_891.w);
      let x_894 : vec3<f32> = vs_TEXCOORD1;
      let x_898 : vec4<f32> = x_20.unity_SpecCube1_BoxMin;
      u_xlat10 = (-(x_894) + vec3<f32>(x_898.x, x_898.y, x_898.z));
      let x_901 : vec3<f32> = u_xlat10;
      let x_902 : vec4<f32> = u_xlat8;
      u_xlat10 = (x_901 / vec3<f32>(x_902.x, x_902.y, x_902.z));
      let x_906 : vec4<f32> = u_xlat8;
      let x_908 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_906.x, x_906.y, x_906.z, x_906.x));
      u_xlatb11 = vec3<bool>(x_908.x, x_908.y, x_908.z);
      let x_911 : vec4<f32> = u_xlat9;
      hlslcc_movcTemp_1 = x_911;
      let x_913 : bool = u_xlatb11.x;
      if (x_913) {
        let x_918 : f32 = u_xlat9.x;
        x_914 = x_918;
      } else {
        let x_921 : f32 = u_xlat10.x;
        x_914 = x_921;
      }
      let x_922 : f32 = x_914;
      hlslcc_movcTemp_1.x = x_922;
      let x_925 : bool = u_xlatb11.y;
      if (x_925) {
        let x_930 : f32 = u_xlat9.y;
        x_926 = x_930;
      } else {
        let x_933 : f32 = u_xlat10.y;
        x_926 = x_933;
      }
      let x_934 : f32 = x_926;
      hlslcc_movcTemp_1.y = x_934;
      let x_937 : bool = u_xlatb11.z;
      if (x_937) {
        let x_942 : f32 = u_xlat9.z;
        x_938 = x_942;
      } else {
        let x_945 : f32 = u_xlat10.z;
        x_938 = x_945;
      }
      let x_946 : f32 = x_938;
      hlslcc_movcTemp_1.z = x_946;
      let x_948 : vec4<f32> = hlslcc_movcTemp_1;
      u_xlat9 = x_948;
      let x_950 : f32 = u_xlat9.y;
      let x_952 : f32 = u_xlat9.x;
      u_xlat41 = min(x_950, x_952);
      let x_955 : f32 = u_xlat9.z;
      let x_956 : f32 = u_xlat41;
      u_xlat41 = min(x_955, x_956);
      let x_958 : vec3<f32> = vs_TEXCOORD1;
      let x_960 : vec4<f32> = x_20.unity_SpecCube1_ProbePosition;
      let x_963 : vec3<f32> = (x_958 + -(vec3<f32>(x_960.x, x_960.y, x_960.z)));
      let x_964 : vec4<f32> = u_xlat9;
      u_xlat9 = vec4<f32>(x_963.x, x_963.y, x_963.z, x_964.w);
      let x_966 : vec4<f32> = u_xlat8;
      let x_968 : f32 = u_xlat41;
      let x_971 : vec4<f32> = u_xlat9;
      let x_973 : vec3<f32> = ((vec3<f32>(x_966.x, x_966.y, x_966.z) * vec3<f32>(x_968, x_968, x_968)) + vec3<f32>(x_971.x, x_971.y, x_971.z));
      let x_974 : vec4<f32> = u_xlat4;
      u_xlat4 = vec4<f32>(x_973.x, x_973.y, x_973.z, x_974.w);
    }
    let x_980 : vec4<f32> = u_xlat4;
    let x_982 : f32 = u_xlat37;
    let x_983 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_980.x, x_980.y, x_980.z), x_982);
    u_xlat8 = x_983;
    let x_985 : f32 = u_xlat8.w;
    u_xlat37 = (x_985 + -1.0f);
    let x_989 : f32 = x_20.unity_SpecCube1_HDR.w;
    let x_990 : f32 = u_xlat37;
    u_xlat37 = ((x_989 * x_990) + 1.0f);
    let x_993 : f32 = u_xlat37;
    u_xlat37 = log2(x_993);
    let x_995 : f32 = u_xlat37;
    let x_997 : f32 = x_20.unity_SpecCube1_HDR.y;
    u_xlat37 = (x_995 * x_997);
    let x_999 : f32 = u_xlat37;
    u_xlat37 = exp2(x_999);
    let x_1001 : f32 = u_xlat37;
    let x_1003 : f32 = x_20.unity_SpecCube1_HDR.x;
    u_xlat37 = (x_1001 * x_1003);
    let x_1005 : vec4<f32> = u_xlat8;
    let x_1007 : f32 = u_xlat37;
    let x_1009 : vec3<f32> = (vec3<f32>(x_1005.x, x_1005.y, x_1005.z) * vec3<f32>(x_1007, x_1007, x_1007));
    let x_1010 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1009.x, x_1009.y, x_1009.z, x_1010.w);
    let x_1012 : f32 = u_xlat40;
    let x_1014 : vec4<f32> = u_xlat6;
    let x_1017 : vec4<f32> = u_xlat4;
    let x_1020 : vec3<f32> = ((vec3<f32>(x_1012, x_1012, x_1012) * vec3<f32>(x_1014.x, x_1014.y, x_1014.z)) + -(vec3<f32>(x_1017.x, x_1017.y, x_1017.z)));
    let x_1021 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1020.x, x_1020.y, x_1020.z, x_1021.w);
    let x_1024 : vec4<f32> = x_20.unity_SpecCube0_BoxMin;
    let x_1026 : vec4<f32> = u_xlat6;
    let x_1029 : vec4<f32> = u_xlat4;
    let x_1031 : vec3<f32> = ((vec3<f32>(x_1024.w, x_1024.w, x_1024.w) * vec3<f32>(x_1026.x, x_1026.y, x_1026.z)) + vec3<f32>(x_1029.x, x_1029.y, x_1029.z));
    let x_1032 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1031.x, x_1031.y, x_1031.z, x_1032.w);
  }
  let x_1034 : vec3<f32> = vs_TEXCOORD0;
  let x_1035 : vec3<f32> = vs_TEXCOORD0;
  u_xlat37 = dot(x_1034, x_1035);
  let x_1037 : f32 = u_xlat37;
  u_xlat37 = inverseSqrt(x_1037);
  let x_1039 : f32 = u_xlat37;
  let x_1041 : vec3<f32> = vs_TEXCOORD0;
  let x_1042 : vec3<f32> = (vec3<f32>(x_1039, x_1039, x_1039) * x_1041);
  let x_1043 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1042.x, x_1042.y, x_1042.z, x_1043.w);
  let x_1045 : vec4<f32> = u_xlat2;
  let x_1049 : vec3<f32> = (vec3<f32>(x_1045.x, x_1045.y, x_1045.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_1050 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1049.x, x_1049.y, x_1049.z, x_1050.w);
  let x_1054 : f32 = x_20.x_Metallic;
  let x_1056 : f32 = x_20.x_Metallic;
  let x_1058 : f32 = x_20.x_Metallic;
  let x_1059 : vec3<f32> = vec3<f32>(x_1054, x_1056, x_1058);
  let x_1064 : vec4<f32> = u_xlat6;
  let x_1069 : vec3<f32> = ((vec3<f32>(x_1059.x, x_1059.y, x_1059.z) * vec3<f32>(x_1064.x, x_1064.y, x_1064.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_1070 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1069.x, x_1069.y, x_1069.z, x_1070.w);
  let x_1073 : f32 = x_20.x_Metallic;
  u_xlat37 = ((-(x_1073) * 0.959999979f) + 0.959999979f);
  let x_1078 : f32 = u_xlat37;
  let x_1080 : vec4<f32> = u_xlat2;
  let x_1082 : vec3<f32> = (vec3<f32>(x_1078, x_1078, x_1078) * vec3<f32>(x_1080.x, x_1080.y, x_1080.z));
  let x_1083 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1082.x, x_1082.y, x_1082.z, x_1083.w);
  let x_1085 : vec4<f32> = u_xlat0;
  let x_1087 : f32 = u_xlat36;
  let x_1091 : vec4<f32> = x_20.x_WorldSpaceLightPos0;
  let x_1093 : vec3<f32> = ((vec3<f32>(x_1085.x, x_1085.y, x_1085.z) * vec3<f32>(x_1087, x_1087, x_1087)) + vec3<f32>(x_1091.x, x_1091.y, x_1091.z));
  let x_1094 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1093.x, x_1093.y, x_1093.z, x_1094.w);
  let x_1096 : vec4<f32> = u_xlat0;
  let x_1098 : vec4<f32> = u_xlat0;
  u_xlat36 = dot(vec3<f32>(x_1096.x, x_1096.y, x_1096.z), vec3<f32>(x_1098.x, x_1098.y, x_1098.z));
  let x_1101 : f32 = u_xlat36;
  u_xlat36 = max(x_1101, 0.001f);
  let x_1104 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_1104);
  let x_1106 : f32 = u_xlat36;
  let x_1108 : vec4<f32> = u_xlat0;
  let x_1110 : vec3<f32> = (vec3<f32>(x_1106, x_1106, x_1106) * vec3<f32>(x_1108.x, x_1108.y, x_1108.z));
  let x_1111 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1110.x, x_1110.y, x_1110.z, x_1111.w);
  let x_1113 : vec4<f32> = u_xlat4;
  let x_1115 : vec4<f32> = u_xlat1;
  u_xlat36 = dot(vec3<f32>(x_1113.x, x_1113.y, x_1113.z), vec3<f32>(x_1115.x, x_1115.y, x_1115.z));
  let x_1118 : vec4<f32> = u_xlat4;
  let x_1121 : vec4<f32> = x_20.x_WorldSpaceLightPos0;
  u_xlat1.x = dot(vec3<f32>(x_1118.x, x_1118.y, x_1118.z), vec3<f32>(x_1121.x, x_1121.y, x_1121.z));
  let x_1126 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1126, 0.0f, 1.0f);
  let x_1130 : vec4<f32> = u_xlat4;
  let x_1132 : vec4<f32> = u_xlat0;
  u_xlat13 = dot(vec3<f32>(x_1130.x, x_1130.y, x_1130.z), vec3<f32>(x_1132.x, x_1132.y, x_1132.z));
  let x_1135 : f32 = u_xlat13;
  u_xlat13 = clamp(x_1135, 0.0f, 1.0f);
  let x_1138 : vec4<f32> = x_20.x_WorldSpaceLightPos0;
  let x_1140 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_1138.x, x_1138.y, x_1138.z), vec3<f32>(x_1140.x, x_1140.y, x_1140.z));
  let x_1145 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1145, 0.0f, 1.0f);
  let x_1150 : f32 = u_xlat0.x;
  let x_1152 : f32 = u_xlat0.x;
  u_xlat12.x = (x_1150 * x_1152);
  let x_1155 : vec3<f32> = u_xlat12;
  let x_1157 : vec3<f32> = u_xlat15;
  u_xlat12.x = dot(vec2<f32>(x_1155.x, x_1155.x), vec2<f32>(x_1157.x, x_1157.x));
  let x_1162 : f32 = u_xlat12.x;
  u_xlat12.x = (x_1162 + -0.5f);
  let x_1168 : f32 = u_xlat1.x;
  u_xlat24 = (-(x_1168) + 1.0f);
  let x_1172 : f32 = u_xlat24;
  let x_1173 : f32 = u_xlat24;
  u_xlat25 = (x_1172 * x_1173);
  let x_1175 : f32 = u_xlat25;
  let x_1176 : f32 = u_xlat25;
  u_xlat25 = (x_1175 * x_1176);
  let x_1178 : f32 = u_xlat24;
  let x_1179 : f32 = u_xlat25;
  u_xlat24 = (x_1178 * x_1179);
  let x_1182 : f32 = u_xlat12.x;
  let x_1183 : f32 = u_xlat24;
  u_xlat24 = ((x_1182 * x_1183) + 1.0f);
  let x_1186 : f32 = u_xlat36;
  u_xlat25 = (-(abs(x_1186)) + 1.0f);
  let x_1190 : f32 = u_xlat25;
  let x_1191 : f32 = u_xlat25;
  u_xlat4.x = (x_1190 * x_1191);
  let x_1195 : f32 = u_xlat4.x;
  let x_1197 : f32 = u_xlat4.x;
  u_xlat4.x = (x_1195 * x_1197);
  let x_1200 : f32 = u_xlat25;
  let x_1202 : f32 = u_xlat4.x;
  u_xlat25 = (x_1200 * x_1202);
  let x_1205 : f32 = u_xlat12.x;
  let x_1206 : f32 = u_xlat25;
  u_xlat12.x = ((x_1205 * x_1206) + 1.0f);
  let x_1211 : f32 = u_xlat12.x;
  let x_1212 : f32 = u_xlat24;
  u_xlat12.x = (x_1211 * x_1212);
  let x_1216 : f32 = u_xlat15.x;
  let x_1218 : f32 = u_xlat15.x;
  u_xlat24 = (x_1216 * x_1218);
  let x_1220 : f32 = u_xlat24;
  u_xlat24 = max(x_1220, 0.002f);
  let x_1223 : f32 = u_xlat24;
  u_xlat15.x = (-(x_1223) + 1.0f);
  let x_1227 : f32 = u_xlat36;
  let x_1230 : f32 = u_xlat15.x;
  let x_1232 : f32 = u_xlat24;
  u_xlat4.x = ((abs(x_1227) * x_1230) + x_1232);
  let x_1236 : f32 = u_xlat1.x;
  let x_1238 : f32 = u_xlat15.x;
  let x_1240 : f32 = u_xlat24;
  u_xlat15.x = ((x_1236 * x_1238) + x_1240);
  let x_1243 : f32 = u_xlat36;
  let x_1246 : f32 = u_xlat15.x;
  u_xlat36 = (abs(x_1243) * x_1246);
  let x_1249 : f32 = u_xlat1.x;
  let x_1251 : f32 = u_xlat4.x;
  let x_1253 : f32 = u_xlat36;
  u_xlat36 = ((x_1249 * x_1251) + x_1253);
  let x_1255 : f32 = u_xlat36;
  u_xlat36 = (x_1255 + 0.00001f);
  let x_1258 : f32 = u_xlat36;
  u_xlat36 = (0.5f / x_1258);
  let x_1260 : f32 = u_xlat24;
  let x_1261 : f32 = u_xlat24;
  u_xlat15.x = (x_1260 * x_1261);
  let x_1264 : f32 = u_xlat13;
  let x_1266 : f32 = u_xlat15.x;
  let x_1268 : f32 = u_xlat13;
  u_xlat4.x = ((x_1264 * x_1266) + -(x_1268));
  let x_1273 : f32 = u_xlat4.x;
  let x_1274 : f32 = u_xlat13;
  u_xlat13 = ((x_1273 * x_1274) + 1.0f);
  let x_1278 : f32 = u_xlat15.x;
  u_xlat15.x = (x_1278 * 0.318309873f);
  let x_1282 : f32 = u_xlat13;
  let x_1283 : f32 = u_xlat13;
  u_xlat13 = ((x_1282 * x_1283) + 0.0000001f);
  let x_1288 : f32 = u_xlat15.x;
  let x_1289 : f32 = u_xlat13;
  u_xlat13 = (x_1288 / x_1289);
  let x_1291 : f32 = u_xlat36;
  let x_1292 : f32 = u_xlat13;
  u_xlat12.z = (x_1291 * x_1292);
  let x_1295 : vec4<f32> = u_xlat1;
  let x_1297 : vec3<f32> = u_xlat12;
  let x_1299 : vec2<f32> = (vec2<f32>(x_1295.x, x_1295.x) * vec2<f32>(x_1297.x, x_1297.z));
  let x_1300 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_1299.x, x_1300.y, x_1299.y);
  let x_1303 : f32 = u_xlat12.z;
  u_xlat36 = (x_1303 * 3.141592741f);
  let x_1306 : f32 = u_xlat36;
  u_xlat36 = max(x_1306, 0.0f);
  let x_1308 : f32 = u_xlat24;
  let x_1309 : f32 = u_xlat24;
  u_xlat24 = ((x_1308 * x_1309) + 1.0f);
  let x_1312 : f32 = u_xlat24;
  u_xlat24 = (1.0f / x_1312);
  let x_1314 : vec4<f32> = u_xlat6;
  let x_1316 : vec4<f32> = u_xlat6;
  u_xlat1.x = dot(vec3<f32>(x_1314.x, x_1314.y, x_1314.z), vec3<f32>(x_1316.x, x_1316.y, x_1316.z));
  let x_1322 : f32 = u_xlat1.x;
  u_xlatb1 = !((x_1322 == 0.0f));
  let x_1324 : bool = u_xlatb1;
  u_xlat1.x = select(0.0f, 1.0f, x_1324);
  let x_1327 : f32 = u_xlat36;
  let x_1329 : f32 = u_xlat1.x;
  u_xlat36 = (x_1327 * x_1329);
  let x_1332 : f32 = x_20.x_Glossiness;
  let x_1334 : f32 = u_xlat2.w;
  let x_1336 : f32 = u_xlat37;
  u_xlat1.x = ((x_1332 * x_1334) + -(x_1336));
  let x_1341 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1341 + 1.0f);
  let x_1345 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1345, 0.0f, 1.0f);
  let x_1348 : vec3<f32> = u_xlat5;
  let x_1349 : vec3<f32> = u_xlat12;
  let x_1352 : vec4<f32> = u_xlat3;
  let x_1354 : vec3<f32> = ((x_1348 * vec3<f32>(x_1349.x, x_1349.x, x_1349.x)) + vec3<f32>(x_1352.x, x_1352.z, x_1352.w));
  let x_1355 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1354.x, x_1354.y, x_1354.z, x_1355.w);
  let x_1357 : vec3<f32> = u_xlat5;
  let x_1358 : f32 = u_xlat36;
  let x_1360 : vec3<f32> = (x_1357 * vec3<f32>(x_1358, x_1358, x_1358));
  let x_1361 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1360.x, x_1360.y, x_1360.z, x_1361.w);
  let x_1364 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_1364) + 1.0f);
  let x_1369 : f32 = u_xlat0.x;
  let x_1371 : f32 = u_xlat0.x;
  u_xlat12.x = (x_1369 * x_1371);
  let x_1375 : f32 = u_xlat12.x;
  let x_1377 : f32 = u_xlat12.x;
  u_xlat12.x = (x_1375 * x_1377);
  let x_1381 : f32 = u_xlat0.x;
  let x_1383 : f32 = u_xlat12.x;
  u_xlat0.x = (x_1381 * x_1383);
  let x_1386 : vec4<f32> = u_xlat6;
  u_xlat5 = (-(vec3<f32>(x_1386.x, x_1386.y, x_1386.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1391 : vec3<f32> = u_xlat5;
  let x_1392 : vec4<f32> = u_xlat0;
  let x_1395 : vec4<f32> = u_xlat6;
  let x_1397 : vec3<f32> = ((x_1391 * vec3<f32>(x_1392.x, x_1392.x, x_1392.x)) + vec3<f32>(x_1395.x, x_1395.y, x_1395.z));
  let x_1398 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1397.x, x_1397.y, x_1398.z, x_1397.z);
  let x_1400 : vec4<f32> = u_xlat0;
  let x_1402 : vec4<f32> = u_xlat4;
  let x_1404 : vec3<f32> = (vec3<f32>(x_1400.x, x_1400.y, x_1400.w) * vec3<f32>(x_1402.x, x_1402.y, x_1402.z));
  let x_1405 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1404.x, x_1404.y, x_1405.z, x_1404.z);
  let x_1407 : vec4<f32> = u_xlat2;
  let x_1409 : vec4<f32> = u_xlat3;
  let x_1412 : vec4<f32> = u_xlat0;
  let x_1414 : vec3<f32> = ((vec3<f32>(x_1407.x, x_1407.y, x_1407.z) * vec3<f32>(x_1409.x, x_1409.y, x_1409.z)) + vec3<f32>(x_1412.x, x_1412.y, x_1412.w));
  let x_1415 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1414.x, x_1414.y, x_1415.z, x_1414.z);
  let x_1417 : vec4<f32> = u_xlat7;
  let x_1419 : f32 = u_xlat24;
  let x_1421 : vec3<f32> = (vec3<f32>(x_1417.x, x_1417.y, x_1417.z) * vec3<f32>(x_1419, x_1419, x_1419));
  let x_1422 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1421.x, x_1421.y, x_1421.z, x_1422.w);
  let x_1424 : vec4<f32> = u_xlat6;
  let x_1427 : vec4<f32> = u_xlat1;
  let x_1429 : vec3<f32> = (-(vec3<f32>(x_1424.x, x_1424.y, x_1424.z)) + vec3<f32>(x_1427.x, x_1427.x, x_1427.x));
  let x_1430 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1429.x, x_1429.y, x_1430.z, x_1429.z);
  let x_1432 : f32 = u_xlat25;
  let x_1434 : vec4<f32> = u_xlat1;
  let x_1437 : vec4<f32> = u_xlat6;
  let x_1439 : vec3<f32> = ((vec3<f32>(x_1432, x_1432, x_1432) * vec3<f32>(x_1434.x, x_1434.y, x_1434.w)) + vec3<f32>(x_1437.x, x_1437.y, x_1437.z));
  let x_1440 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1439.x, x_1439.y, x_1439.z, x_1440.w);
  let x_1444 : vec4<f32> = u_xlat2;
  let x_1446 : vec4<f32> = u_xlat1;
  let x_1449 : vec4<f32> = u_xlat0;
  let x_1451 : vec3<f32> = ((vec3<f32>(x_1444.x, x_1444.y, x_1444.z) * vec3<f32>(x_1446.x, x_1446.y, x_1446.z)) + vec3<f32>(x_1449.x, x_1449.y, x_1449.w));
  let x_1452 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1451.x, x_1451.y, x_1451.z, x_1452.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_COLOR0_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec3<f32>, @location(3) vs_TEXCOORD2_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

