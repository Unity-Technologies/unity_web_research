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

@group(0) @binding(3) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(8) var sampler_LightTexture0 : sampler;

var<private> vs_TEXCOORD0 : vec3<f32>;

@group(0) @binding(4) var unity_NHxRoughness : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_NHxRoughness : sampler;

var<private> vs_TEXCOORD4 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat18 : f32;
  var u_xlat1 : vec3<f32>;
  var u_xlati2 : vec4<i32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat19 : f32;
  var indexable_1 : array<vec4<u32>, 4u>;
  var u_xlat2 : vec4<f32>;
  var indexable_2 : array<vec4<u32>, 4u>;
  var u_xlat8 : f32;
  var indexable_3 : array<vec4<u32>, 4u>;
  var u_xlatb18 : bool;
  var x_333 : vec3<f32>;
  var u_xlat5 : vec3<f32>;
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
  let x_39 : vec3<f32> = vs_TEXCOORD1;
  let x_44 : vec3<f32> = x_20.x_WorldSpaceCameraPos;
  u_xlat1 = (-(x_39) + x_44);
  let x_46 : vec3<f32> = u_xlat1;
  let x_47 : vec3<f32> = u_xlat1;
  u_xlat18 = dot(x_46, x_47);
  let x_49 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_49);
  let x_51 : f32 = u_xlat18;
  let x_53 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_51, x_51, x_51) * x_53);
  let x_60 : vec4<i32> = x_20.x_OctaveIndex;
  u_xlati2 = min(x_60, vec4<i32>(3i, 3i, 3i, 3i));
  let x_66 : vec3<f32> = vs_TEXCOORD1;
  let x_70 : f32 = x_20.x_Scale;
  let x_72 : f32 = x_20.x_Scale;
  let x_74 : f32 = x_20.x_Scale;
  let x_75 : vec3<f32> = vec3<f32>(x_70, x_72, x_74);
  let x_80 : vec3<f32> = (x_66 * vec3<f32>(x_75.x, x_75.y, x_75.z));
  let x_81 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_80.x, x_80.y, x_80.z, x_81.w);
  let x_94 : vec4<f32> = u_xlat3;
  let x_96 : vec4<f32> = textureSample(x_VolumeNoise, sampler_VolumeNoise, vec3<f32>(x_94.x, x_94.y, x_94.z));
  u_xlat4 = x_96;
  let x_97 : vec4<f32> = u_xlat4;
  let x_111 : i32 = u_xlati2.x;
  indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
  let x_116 : vec4<u32> = indexable[x_111];
  u_xlat18 = dot(x_97, bitcast<vec4<f32>>(x_116));
  let x_119 : vec4<f32> = u_xlat3;
  let x_123 : vec3<f32> = (vec3<f32>(x_119.x, x_119.y, x_119.z) * vec3<f32>(4.0f, 4.0f, 4.0f));
  let x_124 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_123.x, x_123.y, x_123.z, x_124.w);
  let x_129 : vec4<f32> = u_xlat4;
  let x_131 : vec4<f32> = textureSample(x_VolumeNoise, sampler_VolumeNoise, vec3<f32>(x_129.x, x_129.y, x_129.z));
  u_xlat4 = x_131;
  let x_133 : vec4<f32> = u_xlat4;
  let x_136 : i32 = u_xlati2.y;
  indexable_1 = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
  let x_139 : vec4<u32> = indexable_1[x_136];
  u_xlat19 = dot(x_133, bitcast<vec4<f32>>(x_139));
  let x_142 : vec4<f32> = u_xlat3;
  let x_146 : vec3<f32> = (vec3<f32>(x_142.x, x_142.y, x_142.z) * vec3<f32>(16.0f, 16.0f, 16.0f));
  let x_147 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_146.x, x_146.y, x_146.z, x_147.w);
  let x_152 : vec4<f32> = u_xlat4;
  let x_154 : vec4<f32> = textureSample(x_VolumeNoise, sampler_VolumeNoise, vec3<f32>(x_152.x, x_152.y, x_152.z));
  u_xlat4 = x_154;
  let x_156 : vec4<f32> = u_xlat4;
  let x_159 : i32 = u_xlati2.z;
  indexable_2 = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
  let x_162 : vec4<u32> = indexable_2[x_159];
  u_xlat2.x = dot(x_156, bitcast<vec4<f32>>(x_162));
  let x_166 : vec4<f32> = u_xlat3;
  let x_170 : vec3<f32> = (vec3<f32>(x_166.x, x_166.y, x_166.z) * vec3<f32>(256.0f, 256.0f, 256.0f));
  let x_171 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_170.x, x_170.y, x_170.z, x_171.w);
  let x_176 : vec4<f32> = u_xlat3;
  let x_178 : vec4<f32> = textureSample(x_VolumeNoise, sampler_VolumeNoise, vec3<f32>(x_176.x, x_176.y, x_176.z));
  u_xlat3 = x_178;
  let x_180 : vec4<f32> = u_xlat3;
  let x_183 : i32 = u_xlati2.w;
  indexable_3 = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
  let x_186 : vec4<u32> = indexable_3[x_183];
  u_xlat8 = dot(x_180, bitcast<vec4<f32>>(x_186));
  let x_189 : f32 = u_xlat19;
  let x_192 : f32 = u_xlat18;
  u_xlat18 = ((x_189 * 0.5f) + x_192);
  let x_195 : f32 = u_xlat2.x;
  let x_198 : f32 = u_xlat18;
  u_xlat18 = ((x_195 * 0.25f) + x_198);
  let x_200 : f32 = u_xlat8;
  let x_203 : f32 = u_xlat18;
  u_xlat18 = ((x_200 * 0.125f) + x_203);
  let x_205 : f32 = u_xlat18;
  u_xlat18 = (x_205 * 0.533333361f);
  let x_216 : f32 = u_xlat18;
  let x_219 : vec4<f32> = textureSample(x_AlbedoRamp1, sampler_AlbedoRamp1, vec2<f32>(x_216, x_216));
  u_xlat2 = x_219;
  let x_225 : f32 = u_xlat18;
  let x_227 : vec4<f32> = textureSample(x_AlbedoRamp2, sampler_AlbedoRamp2, vec2<f32>(x_225, x_225));
  u_xlat3 = x_227;
  let x_228 : vec4<f32> = u_xlat2;
  let x_230 : vec4<f32> = u_xlat3;
  u_xlat3 = (-(x_228) + x_230);
  let x_234 : vec4<f32> = vs_COLOR0;
  let x_236 : vec4<f32> = u_xlat3;
  let x_238 : vec4<f32> = u_xlat2;
  u_xlat2 = ((vec4<f32>(x_234.w, x_234.w, x_234.w, x_234.w) * x_236) + x_238);
  let x_240 : vec3<f32> = vs_TEXCOORD1;
  let x_244 : vec4<f32> = x_20.unity_WorldToLight[1i];
  let x_246 : vec3<f32> = (vec3<f32>(x_240.y, x_240.y, x_240.y) * vec3<f32>(x_244.x, x_244.y, x_244.z));
  let x_247 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_246.x, x_246.y, x_246.z, x_247.w);
  let x_250 : vec4<f32> = x_20.unity_WorldToLight[0i];
  let x_252 : vec3<f32> = vs_TEXCOORD1;
  let x_255 : vec4<f32> = u_xlat3;
  let x_257 : vec3<f32> = ((vec3<f32>(x_250.x, x_250.y, x_250.z) * vec3<f32>(x_252.x, x_252.x, x_252.x)) + vec3<f32>(x_255.x, x_255.y, x_255.z));
  let x_258 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_257.x, x_257.y, x_257.z, x_258.w);
  let x_262 : vec4<f32> = x_20.unity_WorldToLight[2i];
  let x_264 : vec3<f32> = vs_TEXCOORD1;
  let x_267 : vec4<f32> = u_xlat3;
  let x_269 : vec3<f32> = ((vec3<f32>(x_262.x, x_262.y, x_262.z) * vec3<f32>(x_264.z, x_264.z, x_264.z)) + vec3<f32>(x_267.x, x_267.y, x_267.z));
  let x_270 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_269.x, x_269.y, x_269.z, x_270.w);
  let x_272 : vec4<f32> = u_xlat3;
  let x_275 : vec4<f32> = x_20.unity_WorldToLight[3i];
  let x_277 : vec3<f32> = (vec3<f32>(x_272.x, x_272.y, x_272.z) + vec3<f32>(x_275.x, x_275.y, x_275.z));
  let x_278 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_277.x, x_277.y, x_277.z, x_278.w);
  let x_284 : f32 = x_20.unity_ProbeVolumeParams.x;
  u_xlatb18 = (x_284 == 1.0f);
  let x_287 : bool = u_xlatb18;
  if (x_287) {
    let x_291 : f32 = x_20.unity_ProbeVolumeParams.y;
    u_xlatb18 = (x_291 == 1.0f);
    let x_293 : vec3<f32> = vs_TEXCOORD1;
    let x_297 : vec4<f32> = x_20.unity_ProbeVolumeWorldToObject[1i];
    let x_299 : vec3<f32> = (vec3<f32>(x_293.y, x_293.y, x_293.y) * vec3<f32>(x_297.x, x_297.y, x_297.z));
    let x_300 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_299.x, x_299.y, x_299.z, x_300.w);
    let x_303 : vec4<f32> = x_20.unity_ProbeVolumeWorldToObject[0i];
    let x_305 : vec3<f32> = vs_TEXCOORD1;
    let x_308 : vec4<f32> = u_xlat4;
    let x_310 : vec3<f32> = ((vec3<f32>(x_303.x, x_303.y, x_303.z) * vec3<f32>(x_305.x, x_305.x, x_305.x)) + vec3<f32>(x_308.x, x_308.y, x_308.z));
    let x_311 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_310.x, x_310.y, x_310.z, x_311.w);
    let x_314 : vec4<f32> = x_20.unity_ProbeVolumeWorldToObject[2i];
    let x_316 : vec3<f32> = vs_TEXCOORD1;
    let x_319 : vec4<f32> = u_xlat4;
    let x_321 : vec3<f32> = ((vec3<f32>(x_314.x, x_314.y, x_314.z) * vec3<f32>(x_316.z, x_316.z, x_316.z)) + vec3<f32>(x_319.x, x_319.y, x_319.z));
    let x_322 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_321.x, x_321.y, x_321.z, x_322.w);
    let x_324 : vec4<f32> = u_xlat4;
    let x_327 : vec4<f32> = x_20.unity_ProbeVolumeWorldToObject[3i];
    let x_329 : vec3<f32> = (vec3<f32>(x_324.x, x_324.y, x_324.z) + vec3<f32>(x_327.x, x_327.y, x_327.z));
    let x_330 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_329.x, x_329.y, x_329.z, x_330.w);
    let x_332 : bool = u_xlatb18;
    if (x_332) {
      let x_336 : vec4<f32> = u_xlat4;
      x_333 = vec3<f32>(x_336.x, x_336.y, x_336.z);
    } else {
      let x_339 : vec3<f32> = vs_TEXCOORD1;
      x_333 = x_339;
    }
    let x_340 : vec3<f32> = x_333;
    let x_341 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_340.x, x_340.y, x_340.z, x_341.w);
    let x_343 : vec4<f32> = u_xlat4;
    let x_347 : vec3<f32> = x_20.unity_ProbeVolumeMin;
    let x_349 : vec3<f32> = (vec3<f32>(x_343.x, x_343.y, x_343.z) + -(x_347));
    let x_350 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_349.x, x_349.y, x_349.z, x_350.w);
    let x_352 : vec4<f32> = u_xlat4;
    let x_356 : vec3<f32> = x_20.unity_ProbeVolumeSizeInv;
    let x_357 : vec3<f32> = (vec3<f32>(x_352.x, x_352.y, x_352.z) * x_356);
    let x_358 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_358.x, x_357.x, x_357.y, x_357.z);
    let x_361 : f32 = u_xlat4.y;
    u_xlat18 = ((x_361 * 0.25f) + 0.75f);
    let x_366 : f32 = x_20.unity_ProbeVolumeParams.z;
    u_xlat19 = ((x_366 * 0.5f) + 0.75f);
    let x_369 : f32 = u_xlat18;
    let x_370 : f32 = u_xlat19;
    u_xlat4.x = max(x_369, x_370);
    let x_378 : vec4<f32> = u_xlat4;
    let x_380 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_378.x, x_378.z, x_378.w));
    u_xlat4 = x_380;
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
    u_xlat4.w = 1.0f;
  }
  let x_386 : vec4<f32> = u_xlat4;
  let x_388 : vec4<f32> = x_20.unity_OcclusionMaskSelector;
  u_xlat18 = dot(x_386, x_388);
  let x_390 : f32 = u_xlat18;
  u_xlat18 = clamp(x_390, 0.0f, 1.0f);
  let x_393 : vec4<f32> = u_xlat3;
  let x_395 : vec4<f32> = u_xlat3;
  u_xlat19 = dot(vec3<f32>(x_393.x, x_393.y, x_393.z), vec3<f32>(x_395.x, x_395.y, x_395.z));
  let x_403 : f32 = u_xlat19;
  let x_405 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_403, x_403));
  u_xlat19 = x_405.x;
  let x_407 : f32 = u_xlat18;
  let x_408 : f32 = u_xlat19;
  u_xlat18 = (x_407 * x_408);
  let x_410 : f32 = u_xlat18;
  let x_414 : vec4<f32> = x_20.x_LightColor0;
  let x_416 : vec3<f32> = (vec3<f32>(x_410, x_410, x_410) * vec3<f32>(x_414.x, x_414.y, x_414.z));
  let x_417 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_416.x, x_416.y, x_416.z, x_417.w);
  let x_420 : vec3<f32> = vs_TEXCOORD0;
  let x_421 : vec3<f32> = vs_TEXCOORD0;
  u_xlat18 = dot(x_420, x_421);
  let x_423 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_423);
  let x_425 : f32 = u_xlat18;
  let x_427 : vec3<f32> = vs_TEXCOORD0;
  let x_428 : vec3<f32> = (vec3<f32>(x_425, x_425, x_425) * x_427);
  let x_429 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_428.x, x_428.y, x_428.z, x_429.w);
  let x_432 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec3<f32>(x_432.x, x_432.y, x_432.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_439 : f32 = x_20.x_Metallic;
  let x_441 : f32 = x_20.x_Metallic;
  let x_443 : f32 = x_20.x_Metallic;
  let x_444 : vec3<f32> = vec3<f32>(x_439, x_441, x_443);
  let x_449 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_444.x, x_444.y, x_444.z) * x_449) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_455 : f32 = x_20.x_Metallic;
  u_xlat18 = ((-(x_455) * 0.959999979f) + 0.959999979f);
  let x_460 : vec3<f32> = u_xlat1;
  let x_461 : vec4<f32> = u_xlat4;
  u_xlat19 = dot(x_460, vec3<f32>(x_461.x, x_461.y, x_461.z));
  let x_464 : f32 = u_xlat19;
  let x_465 : f32 = u_xlat19;
  u_xlat19 = (x_464 + x_465);
  let x_467 : vec4<f32> = u_xlat4;
  let x_469 : f32 = u_xlat19;
  let x_473 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_467.x, x_467.y, x_467.z) * -(vec3<f32>(x_469, x_469, x_469))) + x_473);
  let x_475 : vec4<f32> = u_xlat4;
  let x_477 : vec3<f32> = u_xlat0;
  u_xlat19 = dot(vec3<f32>(x_475.x, x_475.y, x_475.z), x_477);
  let x_479 : f32 = u_xlat19;
  u_xlat19 = clamp(x_479, 0.0f, 1.0f);
  let x_481 : vec3<f32> = u_xlat1;
  let x_482 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_481, x_482);
  let x_486 : f32 = u_xlat0.x;
  let x_488 : f32 = u_xlat0.x;
  u_xlat0.x = (x_486 * x_488);
  let x_492 : f32 = u_xlat0.x;
  let x_494 : f32 = u_xlat0.x;
  u_xlat0.x = (x_492 * x_494);
  let x_499 : f32 = x_20.x_Glossiness;
  let x_502 : f32 = u_xlat2.w;
  u_xlat0.y = ((-(x_499) * x_502) + 1.0f);
  let x_511 : vec3<f32> = u_xlat0;
  let x_513 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_511.x, x_511.y));
  u_xlat0.x = x_513.x;
  let x_517 : f32 = u_xlat0.x;
  u_xlat0.x = (x_517 * 16.0f);
  let x_520 : vec3<f32> = u_xlat5;
  let x_521 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_520 * vec3<f32>(x_521.x, x_521.x, x_521.x));
  let x_524 : vec4<f32> = u_xlat2;
  let x_526 : f32 = u_xlat18;
  let x_529 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_524.x, x_524.y, x_524.z) * vec3<f32>(x_526, x_526, x_526)) + x_529);
  let x_531 : f32 = u_xlat19;
  let x_533 : vec4<f32> = u_xlat3;
  u_xlat1 = (vec3<f32>(x_531, x_531, x_531) * vec3<f32>(x_533.x, x_533.y, x_533.z));
  let x_536 : vec3<f32> = u_xlat0;
  let x_537 : vec3<f32> = u_xlat1;
  u_xlat0 = (x_536 * x_537);
  let x_541 : f32 = vs_TEXCOORD4;
  u_xlat18 = x_541;
  let x_542 : f32 = u_xlat18;
  u_xlat18 = clamp(x_542, 0.0f, 1.0f);
  let x_546 : vec3<f32> = u_xlat0;
  let x_547 : f32 = u_xlat18;
  let x_549 : vec3<f32> = (x_546 * vec3<f32>(x_547, x_547, x_547));
  let x_550 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_549.x, x_549.y, x_549.z, x_550.w);
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

