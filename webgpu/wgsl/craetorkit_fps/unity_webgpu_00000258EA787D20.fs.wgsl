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

@group(0) @binding(13) var sampler_VolumeNoise : sampler;

@group(0) @binding(1) var x_AlbedoRamp1 : texture_2d<f32>;

@group(0) @binding(11) var sampler_AlbedoRamp1 : sampler;

@group(0) @binding(2) var x_AlbedoRamp2 : texture_2d<f32>;

@group(0) @binding(12) var sampler_AlbedoRamp2 : sampler;

var<private> vs_COLOR0 : vec4<f32>;

@group(0) @binding(6) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(7) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(3) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(9) var sampler_LightTexture0 : sampler;

@group(0) @binding(4) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(10) var sampler_LightTextureB0 : sampler;

var<private> vs_TEXCOORD0 : vec3<f32>;

@group(0) @binding(5) var unity_NHxRoughness : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_NHxRoughness : sampler;

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
  var x_318 : vec3<f32>;
  var u_xlatb19 : bool;
  var u_xlat21 : f32;
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
  u_xlat3 = (vec4<f32>(x_240.y, x_240.y, x_240.y, x_240.y) * x_244);
  let x_247 : vec4<f32> = x_20.unity_WorldToLight[0i];
  let x_248 : vec3<f32> = vs_TEXCOORD1;
  let x_251 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_247 * vec4<f32>(x_248.x, x_248.x, x_248.x, x_248.x)) + x_251);
  let x_255 : vec4<f32> = x_20.unity_WorldToLight[2i];
  let x_256 : vec3<f32> = vs_TEXCOORD1;
  let x_259 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_255 * vec4<f32>(x_256.z, x_256.z, x_256.z, x_256.z)) + x_259);
  let x_261 : vec4<f32> = u_xlat3;
  let x_263 : vec4<f32> = x_20.unity_WorldToLight[3i];
  u_xlat3 = (x_261 + x_263);
  let x_269 : f32 = x_20.unity_ProbeVolumeParams.x;
  u_xlatb18 = (x_269 == 1.0f);
  let x_272 : bool = u_xlatb18;
  if (x_272) {
    let x_276 : f32 = x_20.unity_ProbeVolumeParams.y;
    u_xlatb18 = (x_276 == 1.0f);
    let x_278 : vec3<f32> = vs_TEXCOORD1;
    let x_282 : vec4<f32> = x_20.unity_ProbeVolumeWorldToObject[1i];
    let x_284 : vec3<f32> = (vec3<f32>(x_278.y, x_278.y, x_278.y) * vec3<f32>(x_282.x, x_282.y, x_282.z));
    let x_285 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_284.x, x_284.y, x_284.z, x_285.w);
    let x_288 : vec4<f32> = x_20.unity_ProbeVolumeWorldToObject[0i];
    let x_290 : vec3<f32> = vs_TEXCOORD1;
    let x_293 : vec4<f32> = u_xlat4;
    let x_295 : vec3<f32> = ((vec3<f32>(x_288.x, x_288.y, x_288.z) * vec3<f32>(x_290.x, x_290.x, x_290.x)) + vec3<f32>(x_293.x, x_293.y, x_293.z));
    let x_296 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_295.x, x_295.y, x_295.z, x_296.w);
    let x_299 : vec4<f32> = x_20.unity_ProbeVolumeWorldToObject[2i];
    let x_301 : vec3<f32> = vs_TEXCOORD1;
    let x_304 : vec4<f32> = u_xlat4;
    let x_306 : vec3<f32> = ((vec3<f32>(x_299.x, x_299.y, x_299.z) * vec3<f32>(x_301.z, x_301.z, x_301.z)) + vec3<f32>(x_304.x, x_304.y, x_304.z));
    let x_307 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_306.x, x_306.y, x_306.z, x_307.w);
    let x_309 : vec4<f32> = u_xlat4;
    let x_312 : vec4<f32> = x_20.unity_ProbeVolumeWorldToObject[3i];
    let x_314 : vec3<f32> = (vec3<f32>(x_309.x, x_309.y, x_309.z) + vec3<f32>(x_312.x, x_312.y, x_312.z));
    let x_315 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_314.x, x_314.y, x_314.z, x_315.w);
    let x_317 : bool = u_xlatb18;
    if (x_317) {
      let x_321 : vec4<f32> = u_xlat4;
      x_318 = vec3<f32>(x_321.x, x_321.y, x_321.z);
    } else {
      let x_324 : vec3<f32> = vs_TEXCOORD1;
      x_318 = x_324;
    }
    let x_325 : vec3<f32> = x_318;
    let x_326 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_325.x, x_325.y, x_325.z, x_326.w);
    let x_328 : vec4<f32> = u_xlat4;
    let x_332 : vec3<f32> = x_20.unity_ProbeVolumeMin;
    let x_334 : vec3<f32> = (vec3<f32>(x_328.x, x_328.y, x_328.z) + -(x_332));
    let x_335 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
    let x_337 : vec4<f32> = u_xlat4;
    let x_341 : vec3<f32> = x_20.unity_ProbeVolumeSizeInv;
    let x_342 : vec3<f32> = (vec3<f32>(x_337.x, x_337.y, x_337.z) * x_341);
    let x_343 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_343.x, x_342.x, x_342.y, x_342.z);
    let x_346 : f32 = u_xlat4.y;
    u_xlat18 = ((x_346 * 0.25f) + 0.75f);
    let x_351 : f32 = x_20.unity_ProbeVolumeParams.z;
    u_xlat19 = ((x_351 * 0.5f) + 0.75f);
    let x_354 : f32 = u_xlat18;
    let x_355 : f32 = u_xlat19;
    u_xlat4.x = max(x_354, x_355);
    let x_363 : vec4<f32> = u_xlat4;
    let x_365 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_363.x, x_363.z, x_363.w));
    u_xlat4 = x_365;
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
    u_xlat4.w = 1.0f;
  }
  let x_371 : vec4<f32> = u_xlat4;
  let x_373 : vec4<f32> = x_20.unity_OcclusionMaskSelector;
  u_xlat18 = dot(x_371, x_373);
  let x_375 : f32 = u_xlat18;
  u_xlat18 = clamp(x_375, 0.0f, 1.0f);
  let x_380 : f32 = u_xlat3.z;
  u_xlatb19 = (0.0f < x_380);
  let x_382 : bool = u_xlatb19;
  u_xlat19 = select(0.0f, 1.0f, x_382);
  let x_384 : vec4<f32> = u_xlat3;
  let x_386 : vec4<f32> = u_xlat3;
  let x_388 : vec2<f32> = (vec2<f32>(x_384.x, x_384.y) / vec2<f32>(x_386.w, x_386.w));
  let x_389 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_388.x, x_388.y, x_389.z, x_389.w);
  let x_391 : vec4<f32> = u_xlat4;
  let x_394 : vec2<f32> = (vec2<f32>(x_391.x, x_391.y) + vec2<f32>(0.5f, 0.5f));
  let x_395 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_394.x, x_394.y, x_395.z, x_395.w);
  let x_403 : vec4<f32> = u_xlat4;
  let x_405 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_403.x, x_403.y));
  u_xlat21 = x_405.w;
  let x_407 : f32 = u_xlat19;
  let x_408 : f32 = u_xlat21;
  u_xlat19 = (x_407 * x_408);
  let x_410 : vec4<f32> = u_xlat3;
  let x_412 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_410.x, x_410.y, x_410.z), vec3<f32>(x_412.x, x_412.y, x_412.z));
  let x_421 : vec4<f32> = u_xlat3;
  let x_423 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_421.x, x_421.x));
  u_xlat3.x = x_423.x;
  let x_426 : f32 = u_xlat19;
  let x_428 : f32 = u_xlat3.x;
  u_xlat19 = (x_426 * x_428);
  let x_430 : f32 = u_xlat18;
  let x_431 : f32 = u_xlat19;
  u_xlat18 = (x_430 * x_431);
  let x_433 : f32 = u_xlat18;
  let x_437 : vec4<f32> = x_20.x_LightColor0;
  let x_439 : vec3<f32> = (vec3<f32>(x_433, x_433, x_433) * vec3<f32>(x_437.x, x_437.y, x_437.z));
  let x_440 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_439.x, x_439.y, x_439.z, x_440.w);
  let x_443 : vec3<f32> = vs_TEXCOORD0;
  let x_444 : vec3<f32> = vs_TEXCOORD0;
  u_xlat18 = dot(x_443, x_444);
  let x_446 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_446);
  let x_448 : f32 = u_xlat18;
  let x_450 : vec3<f32> = vs_TEXCOORD0;
  let x_451 : vec3<f32> = (vec3<f32>(x_448, x_448, x_448) * x_450);
  let x_452 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_451.x, x_451.y, x_451.z, x_452.w);
  let x_455 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec3<f32>(x_455.x, x_455.y, x_455.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_462 : f32 = x_20.x_Metallic;
  let x_464 : f32 = x_20.x_Metallic;
  let x_466 : f32 = x_20.x_Metallic;
  let x_467 : vec3<f32> = vec3<f32>(x_462, x_464, x_466);
  let x_472 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_467.x, x_467.y, x_467.z) * x_472) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_478 : f32 = x_20.x_Metallic;
  u_xlat18 = ((-(x_478) * 0.959999979f) + 0.959999979f);
  let x_483 : vec3<f32> = u_xlat1;
  let x_484 : vec4<f32> = u_xlat4;
  u_xlat19 = dot(x_483, vec3<f32>(x_484.x, x_484.y, x_484.z));
  let x_487 : f32 = u_xlat19;
  let x_488 : f32 = u_xlat19;
  u_xlat19 = (x_487 + x_488);
  let x_490 : vec4<f32> = u_xlat4;
  let x_492 : f32 = u_xlat19;
  let x_496 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_490.x, x_490.y, x_490.z) * -(vec3<f32>(x_492, x_492, x_492))) + x_496);
  let x_498 : vec4<f32> = u_xlat4;
  let x_500 : vec3<f32> = u_xlat0;
  u_xlat19 = dot(vec3<f32>(x_498.x, x_498.y, x_498.z), x_500);
  let x_502 : f32 = u_xlat19;
  u_xlat19 = clamp(x_502, 0.0f, 1.0f);
  let x_504 : vec3<f32> = u_xlat1;
  let x_505 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_504, x_505);
  let x_509 : f32 = u_xlat0.x;
  let x_511 : f32 = u_xlat0.x;
  u_xlat0.x = (x_509 * x_511);
  let x_515 : f32 = u_xlat0.x;
  let x_517 : f32 = u_xlat0.x;
  u_xlat0.x = (x_515 * x_517);
  let x_522 : f32 = x_20.x_Glossiness;
  let x_525 : f32 = u_xlat2.w;
  u_xlat0.y = ((-(x_522) * x_525) + 1.0f);
  let x_534 : vec3<f32> = u_xlat0;
  let x_536 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_534.x, x_534.y));
  u_xlat0.x = x_536.x;
  let x_540 : f32 = u_xlat0.x;
  u_xlat0.x = (x_540 * 16.0f);
  let x_543 : vec3<f32> = u_xlat5;
  let x_544 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_543 * vec3<f32>(x_544.x, x_544.x, x_544.x));
  let x_547 : vec4<f32> = u_xlat2;
  let x_549 : f32 = u_xlat18;
  let x_552 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_547.x, x_547.y, x_547.z) * vec3<f32>(x_549, x_549, x_549)) + x_552);
  let x_554 : f32 = u_xlat19;
  let x_556 : vec4<f32> = u_xlat3;
  u_xlat1 = (vec3<f32>(x_554, x_554, x_554) * vec3<f32>(x_556.x, x_556.y, x_556.z));
  let x_559 : vec3<f32> = u_xlat0;
  let x_560 : vec3<f32> = u_xlat1;
  u_xlat0 = (x_559 * x_560);
  let x_564 : f32 = vs_TEXCOORD4;
  u_xlat18 = x_564;
  let x_565 : f32 = u_xlat18;
  u_xlat18 = clamp(x_565, 0.0f, 1.0f);
  let x_569 : vec3<f32> = u_xlat0;
  let x_570 : f32 = u_xlat18;
  let x_572 : vec3<f32> = (x_569 * vec3<f32>(x_570, x_570, x_570));
  let x_573 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_572.x, x_572.y, x_572.z, x_573.w);
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

