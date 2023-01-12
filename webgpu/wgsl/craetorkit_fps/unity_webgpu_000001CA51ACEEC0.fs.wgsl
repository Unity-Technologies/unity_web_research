struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  x_LightShadowData : vec4<f32>,
  unity_ShadowFadeCenterAndType : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_FogColor : vec4<f32>,
  unity_FogParams : vec4<f32>,
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

var<private> vs_TEXCOORD3 : f32;

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
  var x_725 : f32;
  var x_737 : f32;
  var x_749 : f32;
  var u_xlat40 : f32;
  var u_xlatb41 : bool;
  var u_xlat41 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlatb11 : vec3<bool>;
  var hlslcc_movcTemp_1 : vec4<f32>;
  var x_915 : f32;
  var x_927 : f32;
  var x_939 : f32;
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
    let x_636 : vec4<f32> = x_20.unity_SHAg;
    let x_637 : vec4<f32> = u_xlat6;
    u_xlat7.y = dot(x_636, x_637);
    let x_642 : vec4<f32> = x_20.unity_SHAb;
    let x_643 : vec4<f32> = u_xlat6;
    u_xlat7.z = dot(x_642, x_643);
  }
  let x_646 : vec4<f32> = u_xlat7;
  let x_649 : vec3<f32> = vs_TEXCOORD2;
  let x_650 : vec3<f32> = (vec3<f32>(x_646.x, x_646.y, x_646.z) + x_649);
  let x_651 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_650.x, x_651.y, x_650.y, x_650.z);
  let x_653 : vec4<f32> = u_xlat3;
  let x_656 : vec3<f32> = max(vec3<f32>(x_653.x, x_653.z, x_653.w), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_657 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_656.x, x_657.y, x_656.y, x_656.z);
  let x_661 : f32 = x_20.unity_SpecCube0_ProbePosition.w;
  u_xlatb37 = (0.0f < x_661);
  let x_663 : bool = u_xlatb37;
  if (x_663) {
    let x_666 : vec4<f32> = u_xlat4;
    let x_668 : vec4<f32> = u_xlat4;
    u_xlat37 = dot(vec3<f32>(x_666.x, x_666.y, x_666.z), vec3<f32>(x_668.x, x_668.y, x_668.z));
    let x_671 : f32 = u_xlat37;
    u_xlat37 = inverseSqrt(x_671);
    let x_673 : f32 = u_xlat37;
    let x_675 : vec4<f32> = u_xlat4;
    let x_677 : vec3<f32> = (vec3<f32>(x_673, x_673, x_673) * vec3<f32>(x_675.x, x_675.y, x_675.z));
    let x_678 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_677.x, x_677.y, x_677.z, x_678.w);
    let x_680 : vec3<f32> = vs_TEXCOORD1;
    let x_684 : vec4<f32> = x_20.unity_SpecCube0_BoxMax;
    let x_686 : vec3<f32> = (-(x_680) + vec3<f32>(x_684.x, x_684.y, x_684.z));
    let x_687 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_686.x, x_686.y, x_686.z, x_687.w);
    let x_689 : vec4<f32> = u_xlat7;
    let x_691 : vec4<f32> = u_xlat6;
    let x_693 : vec3<f32> = (vec3<f32>(x_689.x, x_689.y, x_689.z) / vec3<f32>(x_691.x, x_691.y, x_691.z));
    let x_694 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_693.x, x_693.y, x_693.z, x_694.w);
    let x_696 : vec3<f32> = vs_TEXCOORD1;
    let x_700 : vec4<f32> = x_20.unity_SpecCube0_BoxMin;
    let x_702 : vec3<f32> = (-(x_696) + vec3<f32>(x_700.x, x_700.y, x_700.z));
    let x_703 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_702.x, x_702.y, x_702.z, x_703.w);
    let x_705 : vec4<f32> = u_xlat8;
    let x_707 : vec4<f32> = u_xlat6;
    let x_709 : vec3<f32> = (vec3<f32>(x_705.x, x_705.y, x_705.z) / vec3<f32>(x_707.x, x_707.y, x_707.z));
    let x_710 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_709.x, x_709.y, x_709.z, x_710.w);
    let x_716 : vec4<f32> = u_xlat6;
    let x_719 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_716.x, x_716.y, x_716.z, x_716.x));
    u_xlatb9 = vec3<bool>(x_719.x, x_719.y, x_719.z);
    let x_722 : vec4<f32> = u_xlat7;
    hlslcc_movcTemp = x_722;
    let x_724 : bool = u_xlatb9.x;
    if (x_724) {
      let x_729 : f32 = u_xlat7.x;
      x_725 = x_729;
    } else {
      let x_732 : f32 = u_xlat8.x;
      x_725 = x_732;
    }
    let x_733 : f32 = x_725;
    hlslcc_movcTemp.x = x_733;
    let x_736 : bool = u_xlatb9.y;
    if (x_736) {
      let x_741 : f32 = u_xlat7.y;
      x_737 = x_741;
    } else {
      let x_744 : f32 = u_xlat8.y;
      x_737 = x_744;
    }
    let x_745 : f32 = x_737;
    hlslcc_movcTemp.y = x_745;
    let x_748 : bool = u_xlatb9.z;
    if (x_748) {
      let x_753 : f32 = u_xlat7.z;
      x_749 = x_753;
    } else {
      let x_756 : f32 = u_xlat8.z;
      x_749 = x_756;
    }
    let x_757 : f32 = x_749;
    hlslcc_movcTemp.z = x_757;
    let x_759 : vec4<f32> = hlslcc_movcTemp;
    u_xlat7 = x_759;
    let x_761 : f32 = u_xlat7.y;
    let x_763 : f32 = u_xlat7.x;
    u_xlat37 = min(x_761, x_763);
    let x_766 : f32 = u_xlat7.z;
    let x_767 : f32 = u_xlat37;
    u_xlat37 = min(x_766, x_767);
    let x_769 : vec3<f32> = vs_TEXCOORD1;
    let x_771 : vec4<f32> = x_20.unity_SpecCube0_ProbePosition;
    let x_774 : vec3<f32> = (x_769 + -(vec3<f32>(x_771.x, x_771.y, x_771.z)));
    let x_775 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_774.x, x_774.y, x_774.z, x_775.w);
    let x_777 : vec4<f32> = u_xlat6;
    let x_779 : f32 = u_xlat37;
    let x_782 : vec4<f32> = u_xlat7;
    let x_784 : vec3<f32> = ((vec3<f32>(x_777.x, x_777.y, x_777.z) * vec3<f32>(x_779, x_779, x_779)) + vec3<f32>(x_782.x, x_782.y, x_782.z));
    let x_785 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_784.x, x_784.y, x_784.z, x_785.w);
  } else {
    let x_788 : vec4<f32> = u_xlat4;
    let x_789 : vec3<f32> = vec3<f32>(x_788.x, x_788.y, x_788.z);
    let x_790 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_789.x, x_789.y, x_789.z, x_790.w);
  }
  let x_793 : f32 = u_xlat15.x;
  u_xlat37 = ((-(x_793) * 0.699999988f) + 1.700000048f);
  let x_799 : f32 = u_xlat37;
  let x_801 : f32 = u_xlat15.x;
  u_xlat37 = (x_799 * x_801);
  let x_803 : f32 = u_xlat37;
  u_xlat37 = (x_803 * 6.0f);
  let x_814 : vec4<f32> = u_xlat6;
  let x_816 : f32 = u_xlat37;
  let x_817 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_814.x, x_814.y, x_814.z), x_816);
  u_xlat6 = x_817;
  let x_820 : f32 = u_xlat6.w;
  u_xlat40 = (x_820 + -1.0f);
  let x_825 : f32 = x_20.unity_SpecCube0_HDR.w;
  let x_826 : f32 = u_xlat40;
  u_xlat40 = ((x_825 * x_826) + 1.0f);
  let x_829 : f32 = u_xlat40;
  u_xlat40 = log2(x_829);
  let x_831 : f32 = u_xlat40;
  let x_833 : f32 = x_20.unity_SpecCube0_HDR.y;
  u_xlat40 = (x_831 * x_833);
  let x_835 : f32 = u_xlat40;
  u_xlat40 = exp2(x_835);
  let x_837 : f32 = u_xlat40;
  let x_839 : f32 = x_20.unity_SpecCube0_HDR.x;
  u_xlat40 = (x_837 * x_839);
  let x_841 : vec4<f32> = u_xlat6;
  let x_843 : f32 = u_xlat40;
  let x_845 : vec3<f32> = (vec3<f32>(x_841.x, x_841.y, x_841.z) * vec3<f32>(x_843, x_843, x_843));
  let x_846 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_845.x, x_845.y, x_845.z, x_846.w);
  let x_850 : f32 = x_20.unity_SpecCube0_BoxMin.w;
  u_xlatb41 = (x_850 < 0.999989986f);
  let x_853 : bool = u_xlatb41;
  if (x_853) {
    let x_858 : f32 = x_20.unity_SpecCube1_ProbePosition.w;
    u_xlatb41 = (0.0f < x_858);
    let x_860 : bool = u_xlatb41;
    if (x_860) {
      let x_864 : vec4<f32> = u_xlat4;
      let x_866 : vec4<f32> = u_xlat4;
      u_xlat41 = dot(vec3<f32>(x_864.x, x_864.y, x_864.z), vec3<f32>(x_866.x, x_866.y, x_866.z));
      let x_869 : f32 = u_xlat41;
      u_xlat41 = inverseSqrt(x_869);
      let x_871 : vec4<f32> = u_xlat4;
      let x_873 : f32 = u_xlat41;
      let x_875 : vec3<f32> = (vec3<f32>(x_871.x, x_871.y, x_871.z) * vec3<f32>(x_873, x_873, x_873));
      let x_876 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_875.x, x_875.y, x_875.z, x_876.w);
      let x_878 : vec3<f32> = vs_TEXCOORD1;
      let x_882 : vec4<f32> = x_20.unity_SpecCube1_BoxMax;
      let x_884 : vec3<f32> = (-(x_878) + vec3<f32>(x_882.x, x_882.y, x_882.z));
      let x_885 : vec4<f32> = u_xlat9;
      u_xlat9 = vec4<f32>(x_884.x, x_884.y, x_884.z, x_885.w);
      let x_887 : vec4<f32> = u_xlat9;
      let x_889 : vec4<f32> = u_xlat8;
      let x_891 : vec3<f32> = (vec3<f32>(x_887.x, x_887.y, x_887.z) / vec3<f32>(x_889.x, x_889.y, x_889.z));
      let x_892 : vec4<f32> = u_xlat9;
      u_xlat9 = vec4<f32>(x_891.x, x_891.y, x_891.z, x_892.w);
      let x_895 : vec3<f32> = vs_TEXCOORD1;
      let x_899 : vec4<f32> = x_20.unity_SpecCube1_BoxMin;
      u_xlat10 = (-(x_895) + vec3<f32>(x_899.x, x_899.y, x_899.z));
      let x_902 : vec3<f32> = u_xlat10;
      let x_903 : vec4<f32> = u_xlat8;
      u_xlat10 = (x_902 / vec3<f32>(x_903.x, x_903.y, x_903.z));
      let x_907 : vec4<f32> = u_xlat8;
      let x_909 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_907.x, x_907.y, x_907.z, x_907.x));
      u_xlatb11 = vec3<bool>(x_909.x, x_909.y, x_909.z);
      let x_912 : vec4<f32> = u_xlat9;
      hlslcc_movcTemp_1 = x_912;
      let x_914 : bool = u_xlatb11.x;
      if (x_914) {
        let x_919 : f32 = u_xlat9.x;
        x_915 = x_919;
      } else {
        let x_922 : f32 = u_xlat10.x;
        x_915 = x_922;
      }
      let x_923 : f32 = x_915;
      hlslcc_movcTemp_1.x = x_923;
      let x_926 : bool = u_xlatb11.y;
      if (x_926) {
        let x_931 : f32 = u_xlat9.y;
        x_927 = x_931;
      } else {
        let x_934 : f32 = u_xlat10.y;
        x_927 = x_934;
      }
      let x_935 : f32 = x_927;
      hlslcc_movcTemp_1.y = x_935;
      let x_938 : bool = u_xlatb11.z;
      if (x_938) {
        let x_943 : f32 = u_xlat9.z;
        x_939 = x_943;
      } else {
        let x_946 : f32 = u_xlat10.z;
        x_939 = x_946;
      }
      let x_947 : f32 = x_939;
      hlslcc_movcTemp_1.z = x_947;
      let x_949 : vec4<f32> = hlslcc_movcTemp_1;
      u_xlat9 = x_949;
      let x_951 : f32 = u_xlat9.y;
      let x_953 : f32 = u_xlat9.x;
      u_xlat41 = min(x_951, x_953);
      let x_956 : f32 = u_xlat9.z;
      let x_957 : f32 = u_xlat41;
      u_xlat41 = min(x_956, x_957);
      let x_959 : vec3<f32> = vs_TEXCOORD1;
      let x_961 : vec4<f32> = x_20.unity_SpecCube1_ProbePosition;
      let x_964 : vec3<f32> = (x_959 + -(vec3<f32>(x_961.x, x_961.y, x_961.z)));
      let x_965 : vec4<f32> = u_xlat9;
      u_xlat9 = vec4<f32>(x_964.x, x_964.y, x_964.z, x_965.w);
      let x_967 : vec4<f32> = u_xlat8;
      let x_969 : f32 = u_xlat41;
      let x_972 : vec4<f32> = u_xlat9;
      let x_974 : vec3<f32> = ((vec3<f32>(x_967.x, x_967.y, x_967.z) * vec3<f32>(x_969, x_969, x_969)) + vec3<f32>(x_972.x, x_972.y, x_972.z));
      let x_975 : vec4<f32> = u_xlat4;
      u_xlat4 = vec4<f32>(x_974.x, x_974.y, x_974.z, x_975.w);
    }
    let x_981 : vec4<f32> = u_xlat4;
    let x_983 : f32 = u_xlat37;
    let x_984 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_981.x, x_981.y, x_981.z), x_983);
    u_xlat8 = x_984;
    let x_986 : f32 = u_xlat8.w;
    u_xlat37 = (x_986 + -1.0f);
    let x_990 : f32 = x_20.unity_SpecCube1_HDR.w;
    let x_991 : f32 = u_xlat37;
    u_xlat37 = ((x_990 * x_991) + 1.0f);
    let x_994 : f32 = u_xlat37;
    u_xlat37 = log2(x_994);
    let x_996 : f32 = u_xlat37;
    let x_998 : f32 = x_20.unity_SpecCube1_HDR.y;
    u_xlat37 = (x_996 * x_998);
    let x_1000 : f32 = u_xlat37;
    u_xlat37 = exp2(x_1000);
    let x_1002 : f32 = u_xlat37;
    let x_1004 : f32 = x_20.unity_SpecCube1_HDR.x;
    u_xlat37 = (x_1002 * x_1004);
    let x_1006 : vec4<f32> = u_xlat8;
    let x_1008 : f32 = u_xlat37;
    let x_1010 : vec3<f32> = (vec3<f32>(x_1006.x, x_1006.y, x_1006.z) * vec3<f32>(x_1008, x_1008, x_1008));
    let x_1011 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1010.x, x_1010.y, x_1010.z, x_1011.w);
    let x_1013 : f32 = u_xlat40;
    let x_1015 : vec4<f32> = u_xlat6;
    let x_1018 : vec4<f32> = u_xlat4;
    let x_1021 : vec3<f32> = ((vec3<f32>(x_1013, x_1013, x_1013) * vec3<f32>(x_1015.x, x_1015.y, x_1015.z)) + -(vec3<f32>(x_1018.x, x_1018.y, x_1018.z)));
    let x_1022 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1021.x, x_1021.y, x_1021.z, x_1022.w);
    let x_1025 : vec4<f32> = x_20.unity_SpecCube0_BoxMin;
    let x_1027 : vec4<f32> = u_xlat6;
    let x_1030 : vec4<f32> = u_xlat4;
    let x_1032 : vec3<f32> = ((vec3<f32>(x_1025.w, x_1025.w, x_1025.w) * vec3<f32>(x_1027.x, x_1027.y, x_1027.z)) + vec3<f32>(x_1030.x, x_1030.y, x_1030.z));
    let x_1033 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1032.x, x_1032.y, x_1032.z, x_1033.w);
  }
  let x_1035 : vec3<f32> = vs_TEXCOORD0;
  let x_1036 : vec3<f32> = vs_TEXCOORD0;
  u_xlat37 = dot(x_1035, x_1036);
  let x_1038 : f32 = u_xlat37;
  u_xlat37 = inverseSqrt(x_1038);
  let x_1040 : f32 = u_xlat37;
  let x_1042 : vec3<f32> = vs_TEXCOORD0;
  let x_1043 : vec3<f32> = (vec3<f32>(x_1040, x_1040, x_1040) * x_1042);
  let x_1044 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1043.x, x_1043.y, x_1043.z, x_1044.w);
  let x_1046 : vec4<f32> = u_xlat2;
  let x_1050 : vec3<f32> = (vec3<f32>(x_1046.x, x_1046.y, x_1046.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_1051 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1050.x, x_1050.y, x_1050.z, x_1051.w);
  let x_1055 : f32 = x_20.x_Metallic;
  let x_1057 : f32 = x_20.x_Metallic;
  let x_1059 : f32 = x_20.x_Metallic;
  let x_1060 : vec3<f32> = vec3<f32>(x_1055, x_1057, x_1059);
  let x_1065 : vec4<f32> = u_xlat6;
  let x_1070 : vec3<f32> = ((vec3<f32>(x_1060.x, x_1060.y, x_1060.z) * vec3<f32>(x_1065.x, x_1065.y, x_1065.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_1071 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1070.x, x_1070.y, x_1070.z, x_1071.w);
  let x_1074 : f32 = x_20.x_Metallic;
  u_xlat37 = ((-(x_1074) * 0.959999979f) + 0.959999979f);
  let x_1079 : f32 = u_xlat37;
  let x_1081 : vec4<f32> = u_xlat2;
  let x_1083 : vec3<f32> = (vec3<f32>(x_1079, x_1079, x_1079) * vec3<f32>(x_1081.x, x_1081.y, x_1081.z));
  let x_1084 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1083.x, x_1083.y, x_1083.z, x_1084.w);
  let x_1086 : vec4<f32> = u_xlat0;
  let x_1088 : f32 = u_xlat36;
  let x_1092 : vec4<f32> = x_20.x_WorldSpaceLightPos0;
  let x_1094 : vec3<f32> = ((vec3<f32>(x_1086.x, x_1086.y, x_1086.z) * vec3<f32>(x_1088, x_1088, x_1088)) + vec3<f32>(x_1092.x, x_1092.y, x_1092.z));
  let x_1095 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1094.x, x_1094.y, x_1094.z, x_1095.w);
  let x_1097 : vec4<f32> = u_xlat0;
  let x_1099 : vec4<f32> = u_xlat0;
  u_xlat36 = dot(vec3<f32>(x_1097.x, x_1097.y, x_1097.z), vec3<f32>(x_1099.x, x_1099.y, x_1099.z));
  let x_1102 : f32 = u_xlat36;
  u_xlat36 = max(x_1102, 0.001f);
  let x_1105 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_1105);
  let x_1107 : f32 = u_xlat36;
  let x_1109 : vec4<f32> = u_xlat0;
  let x_1111 : vec3<f32> = (vec3<f32>(x_1107, x_1107, x_1107) * vec3<f32>(x_1109.x, x_1109.y, x_1109.z));
  let x_1112 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1111.x, x_1111.y, x_1111.z, x_1112.w);
  let x_1114 : vec4<f32> = u_xlat4;
  let x_1116 : vec4<f32> = u_xlat1;
  u_xlat36 = dot(vec3<f32>(x_1114.x, x_1114.y, x_1114.z), vec3<f32>(x_1116.x, x_1116.y, x_1116.z));
  let x_1119 : vec4<f32> = u_xlat4;
  let x_1122 : vec4<f32> = x_20.x_WorldSpaceLightPos0;
  u_xlat1.x = dot(vec3<f32>(x_1119.x, x_1119.y, x_1119.z), vec3<f32>(x_1122.x, x_1122.y, x_1122.z));
  let x_1127 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1127, 0.0f, 1.0f);
  let x_1131 : vec4<f32> = u_xlat4;
  let x_1133 : vec4<f32> = u_xlat0;
  u_xlat13 = dot(vec3<f32>(x_1131.x, x_1131.y, x_1131.z), vec3<f32>(x_1133.x, x_1133.y, x_1133.z));
  let x_1136 : f32 = u_xlat13;
  u_xlat13 = clamp(x_1136, 0.0f, 1.0f);
  let x_1139 : vec4<f32> = x_20.x_WorldSpaceLightPos0;
  let x_1141 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_1139.x, x_1139.y, x_1139.z), vec3<f32>(x_1141.x, x_1141.y, x_1141.z));
  let x_1146 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1146, 0.0f, 1.0f);
  let x_1151 : f32 = u_xlat0.x;
  let x_1153 : f32 = u_xlat0.x;
  u_xlat12.x = (x_1151 * x_1153);
  let x_1156 : vec3<f32> = u_xlat12;
  let x_1158 : vec3<f32> = u_xlat15;
  u_xlat12.x = dot(vec2<f32>(x_1156.x, x_1156.x), vec2<f32>(x_1158.x, x_1158.x));
  let x_1163 : f32 = u_xlat12.x;
  u_xlat12.x = (x_1163 + -0.5f);
  let x_1169 : f32 = u_xlat1.x;
  u_xlat24 = (-(x_1169) + 1.0f);
  let x_1173 : f32 = u_xlat24;
  let x_1174 : f32 = u_xlat24;
  u_xlat25 = (x_1173 * x_1174);
  let x_1176 : f32 = u_xlat25;
  let x_1177 : f32 = u_xlat25;
  u_xlat25 = (x_1176 * x_1177);
  let x_1179 : f32 = u_xlat24;
  let x_1180 : f32 = u_xlat25;
  u_xlat24 = (x_1179 * x_1180);
  let x_1183 : f32 = u_xlat12.x;
  let x_1184 : f32 = u_xlat24;
  u_xlat24 = ((x_1183 * x_1184) + 1.0f);
  let x_1187 : f32 = u_xlat36;
  u_xlat25 = (-(abs(x_1187)) + 1.0f);
  let x_1191 : f32 = u_xlat25;
  let x_1192 : f32 = u_xlat25;
  u_xlat4.x = (x_1191 * x_1192);
  let x_1196 : f32 = u_xlat4.x;
  let x_1198 : f32 = u_xlat4.x;
  u_xlat4.x = (x_1196 * x_1198);
  let x_1201 : f32 = u_xlat25;
  let x_1203 : f32 = u_xlat4.x;
  u_xlat25 = (x_1201 * x_1203);
  let x_1206 : f32 = u_xlat12.x;
  let x_1207 : f32 = u_xlat25;
  u_xlat12.x = ((x_1206 * x_1207) + 1.0f);
  let x_1212 : f32 = u_xlat12.x;
  let x_1213 : f32 = u_xlat24;
  u_xlat12.x = (x_1212 * x_1213);
  let x_1217 : f32 = u_xlat15.x;
  let x_1219 : f32 = u_xlat15.x;
  u_xlat24 = (x_1217 * x_1219);
  let x_1221 : f32 = u_xlat24;
  u_xlat24 = max(x_1221, 0.002f);
  let x_1224 : f32 = u_xlat24;
  u_xlat15.x = (-(x_1224) + 1.0f);
  let x_1228 : f32 = u_xlat36;
  let x_1231 : f32 = u_xlat15.x;
  let x_1233 : f32 = u_xlat24;
  u_xlat4.x = ((abs(x_1228) * x_1231) + x_1233);
  let x_1237 : f32 = u_xlat1.x;
  let x_1239 : f32 = u_xlat15.x;
  let x_1241 : f32 = u_xlat24;
  u_xlat15.x = ((x_1237 * x_1239) + x_1241);
  let x_1244 : f32 = u_xlat36;
  let x_1247 : f32 = u_xlat15.x;
  u_xlat36 = (abs(x_1244) * x_1247);
  let x_1250 : f32 = u_xlat1.x;
  let x_1252 : f32 = u_xlat4.x;
  let x_1254 : f32 = u_xlat36;
  u_xlat36 = ((x_1250 * x_1252) + x_1254);
  let x_1256 : f32 = u_xlat36;
  u_xlat36 = (x_1256 + 0.00001f);
  let x_1259 : f32 = u_xlat36;
  u_xlat36 = (0.5f / x_1259);
  let x_1261 : f32 = u_xlat24;
  let x_1262 : f32 = u_xlat24;
  u_xlat15.x = (x_1261 * x_1262);
  let x_1265 : f32 = u_xlat13;
  let x_1267 : f32 = u_xlat15.x;
  let x_1269 : f32 = u_xlat13;
  u_xlat4.x = ((x_1265 * x_1267) + -(x_1269));
  let x_1274 : f32 = u_xlat4.x;
  let x_1275 : f32 = u_xlat13;
  u_xlat13 = ((x_1274 * x_1275) + 1.0f);
  let x_1279 : f32 = u_xlat15.x;
  u_xlat15.x = (x_1279 * 0.318309873f);
  let x_1283 : f32 = u_xlat13;
  let x_1284 : f32 = u_xlat13;
  u_xlat13 = ((x_1283 * x_1284) + 0.0000001f);
  let x_1289 : f32 = u_xlat15.x;
  let x_1290 : f32 = u_xlat13;
  u_xlat13 = (x_1289 / x_1290);
  let x_1292 : f32 = u_xlat36;
  let x_1293 : f32 = u_xlat13;
  u_xlat12.z = (x_1292 * x_1293);
  let x_1296 : vec4<f32> = u_xlat1;
  let x_1298 : vec3<f32> = u_xlat12;
  let x_1300 : vec2<f32> = (vec2<f32>(x_1296.x, x_1296.x) * vec2<f32>(x_1298.x, x_1298.z));
  let x_1301 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_1300.x, x_1301.y, x_1300.y);
  let x_1304 : f32 = u_xlat12.z;
  u_xlat36 = (x_1304 * 3.141592741f);
  let x_1307 : f32 = u_xlat36;
  u_xlat36 = max(x_1307, 0.0f);
  let x_1309 : f32 = u_xlat24;
  let x_1310 : f32 = u_xlat24;
  u_xlat24 = ((x_1309 * x_1310) + 1.0f);
  let x_1313 : f32 = u_xlat24;
  u_xlat24 = (1.0f / x_1313);
  let x_1315 : vec4<f32> = u_xlat6;
  let x_1317 : vec4<f32> = u_xlat6;
  u_xlat1.x = dot(vec3<f32>(x_1315.x, x_1315.y, x_1315.z), vec3<f32>(x_1317.x, x_1317.y, x_1317.z));
  let x_1323 : f32 = u_xlat1.x;
  u_xlatb1 = !((x_1323 == 0.0f));
  let x_1325 : bool = u_xlatb1;
  u_xlat1.x = select(0.0f, 1.0f, x_1325);
  let x_1328 : f32 = u_xlat36;
  let x_1330 : f32 = u_xlat1.x;
  u_xlat36 = (x_1328 * x_1330);
  let x_1333 : f32 = x_20.x_Glossiness;
  let x_1335 : f32 = u_xlat2.w;
  let x_1337 : f32 = u_xlat37;
  u_xlat1.x = ((x_1333 * x_1335) + -(x_1337));
  let x_1342 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1342 + 1.0f);
  let x_1346 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1346, 0.0f, 1.0f);
  let x_1349 : vec3<f32> = u_xlat5;
  let x_1350 : vec3<f32> = u_xlat12;
  let x_1353 : vec4<f32> = u_xlat3;
  let x_1355 : vec3<f32> = ((x_1349 * vec3<f32>(x_1350.x, x_1350.x, x_1350.x)) + vec3<f32>(x_1353.x, x_1353.z, x_1353.w));
  let x_1356 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1355.x, x_1355.y, x_1355.z, x_1356.w);
  let x_1358 : vec3<f32> = u_xlat5;
  let x_1359 : f32 = u_xlat36;
  let x_1361 : vec3<f32> = (x_1358 * vec3<f32>(x_1359, x_1359, x_1359));
  let x_1362 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1361.x, x_1361.y, x_1361.z, x_1362.w);
  let x_1365 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_1365) + 1.0f);
  let x_1370 : f32 = u_xlat0.x;
  let x_1372 : f32 = u_xlat0.x;
  u_xlat12.x = (x_1370 * x_1372);
  let x_1376 : f32 = u_xlat12.x;
  let x_1378 : f32 = u_xlat12.x;
  u_xlat12.x = (x_1376 * x_1378);
  let x_1382 : f32 = u_xlat0.x;
  let x_1384 : f32 = u_xlat12.x;
  u_xlat0.x = (x_1382 * x_1384);
  let x_1387 : vec4<f32> = u_xlat6;
  u_xlat5 = (-(vec3<f32>(x_1387.x, x_1387.y, x_1387.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1392 : vec3<f32> = u_xlat5;
  let x_1393 : vec4<f32> = u_xlat0;
  let x_1396 : vec4<f32> = u_xlat6;
  let x_1398 : vec3<f32> = ((x_1392 * vec3<f32>(x_1393.x, x_1393.x, x_1393.x)) + vec3<f32>(x_1396.x, x_1396.y, x_1396.z));
  let x_1399 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1398.x, x_1398.y, x_1399.z, x_1398.z);
  let x_1401 : vec4<f32> = u_xlat0;
  let x_1403 : vec4<f32> = u_xlat4;
  let x_1405 : vec3<f32> = (vec3<f32>(x_1401.x, x_1401.y, x_1401.w) * vec3<f32>(x_1403.x, x_1403.y, x_1403.z));
  let x_1406 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1405.x, x_1405.y, x_1406.z, x_1405.z);
  let x_1408 : vec4<f32> = u_xlat2;
  let x_1410 : vec4<f32> = u_xlat3;
  let x_1413 : vec4<f32> = u_xlat0;
  let x_1415 : vec3<f32> = ((vec3<f32>(x_1408.x, x_1408.y, x_1408.z) * vec3<f32>(x_1410.x, x_1410.y, x_1410.z)) + vec3<f32>(x_1413.x, x_1413.y, x_1413.w));
  let x_1416 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1415.x, x_1415.y, x_1416.z, x_1415.z);
  let x_1418 : vec4<f32> = u_xlat7;
  let x_1420 : f32 = u_xlat24;
  let x_1422 : vec3<f32> = (vec3<f32>(x_1418.x, x_1418.y, x_1418.z) * vec3<f32>(x_1420, x_1420, x_1420));
  let x_1423 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1422.x, x_1422.y, x_1422.z, x_1423.w);
  let x_1425 : vec4<f32> = u_xlat6;
  let x_1428 : vec4<f32> = u_xlat1;
  let x_1430 : vec3<f32> = (-(vec3<f32>(x_1425.x, x_1425.y, x_1425.z)) + vec3<f32>(x_1428.x, x_1428.x, x_1428.x));
  let x_1431 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1430.x, x_1430.y, x_1431.z, x_1430.z);
  let x_1433 : f32 = u_xlat25;
  let x_1435 : vec4<f32> = u_xlat1;
  let x_1438 : vec4<f32> = u_xlat6;
  let x_1440 : vec3<f32> = ((vec3<f32>(x_1433, x_1433, x_1433) * vec3<f32>(x_1435.x, x_1435.y, x_1435.w)) + vec3<f32>(x_1438.x, x_1438.y, x_1438.z));
  let x_1441 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1440.x, x_1440.y, x_1440.z, x_1441.w);
  let x_1443 : vec4<f32> = u_xlat2;
  let x_1445 : vec4<f32> = u_xlat1;
  let x_1448 : vec4<f32> = u_xlat0;
  let x_1450 : vec3<f32> = ((vec3<f32>(x_1443.x, x_1443.y, x_1443.z) * vec3<f32>(x_1445.x, x_1445.y, x_1445.z)) + vec3<f32>(x_1448.x, x_1448.y, x_1448.w));
  let x_1451 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1450.x, x_1450.y, x_1450.z, x_1451.w);
  let x_1455 : f32 = vs_TEXCOORD3;
  let x_1457 : f32 = x_20.x_ProjectionParams.y;
  u_xlat36 = (x_1455 / x_1457);
  let x_1459 : f32 = u_xlat36;
  u_xlat36 = (-(x_1459) + 1.0f);
  let x_1462 : f32 = u_xlat36;
  let x_1464 : f32 = x_20.x_ProjectionParams.z;
  u_xlat36 = (x_1462 * x_1464);
  let x_1466 : f32 = u_xlat36;
  u_xlat36 = max(x_1466, 0.0f);
  let x_1468 : f32 = u_xlat36;
  let x_1471 : f32 = x_20.unity_FogParams.x;
  u_xlat36 = (x_1468 * x_1471);
  let x_1473 : f32 = u_xlat36;
  let x_1474 : f32 = u_xlat36;
  u_xlat36 = (x_1473 * -(x_1474));
  let x_1477 : f32 = u_xlat36;
  u_xlat36 = exp2(x_1477);
  let x_1479 : vec4<f32> = u_xlat0;
  let x_1483 : vec4<f32> = x_20.unity_FogColor;
  let x_1486 : vec3<f32> = (vec3<f32>(x_1479.x, x_1479.y, x_1479.z) + -(vec3<f32>(x_1483.x, x_1483.y, x_1483.z)));
  let x_1487 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1486.x, x_1486.y, x_1486.z, x_1487.w);
  let x_1491 : f32 = u_xlat36;
  let x_1493 : vec4<f32> = u_xlat0;
  let x_1497 : vec4<f32> = x_20.unity_FogColor;
  let x_1499 : vec3<f32> = ((vec3<f32>(x_1491, x_1491, x_1491) * vec3<f32>(x_1493.x, x_1493.y, x_1493.z)) + vec3<f32>(x_1497.x, x_1497.y, x_1497.z));
  let x_1500 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1499.x, x_1499.y, x_1499.z, x_1500.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(2) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_COLOR0_param : vec4<f32>, @location(5) vs_TEXCOORD4_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec3<f32>, @location(4) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD3_param : f32, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

