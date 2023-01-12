struct PGlobals {
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_SpecCube0_HDR : vec4<f32>,
  unity_ProbeVolumeParams : vec4<f32>,
  unity_ProbeVolumeWorldToObject : mat4x4<f32>,
  unity_ProbeVolumeSizeInv : vec3<f32>,
  @size(4)
  padding : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_LightColor0 : vec4<f32>,
  x_Color : vec4<f32>,
  x_Metallic : f32,
  x_Glossiness : f32,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_33 : PGlobals;

@group(0) @binding(1) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

@group(0) @binding(5) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(7) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(2) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_OcclusionMap : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

@group(0) @binding(4) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

@group(0) @binding(3) var unity_NHxRoughness : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_NHxRoughness : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat24 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlat25 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlatb25 : bool;
  var u_xlat3 : vec4<f32>;
  var u_xlat12 : vec3<f32>;
  var x_217 : vec3<f32>;
  var u_xlat26 : f32;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_24 : vec4<f32> = vs_TEXCOORD0;
  let x_26 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_24.x, x_24.y));
  u_xlat0 = vec3<f32>(x_26.x, x_26.y, x_26.z);
  let x_29 : vec3<f32> = u_xlat0;
  let x_38 : vec4<f32> = x_33.x_Color;
  u_xlat1 = (x_29 * vec3<f32>(x_38.x, x_38.y, x_38.z));
  let x_42 : vec4<f32> = x_33.x_Color;
  let x_44 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_42.x, x_42.y, x_42.z) * x_44) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_52 : f32 = x_33.x_Metallic;
  let x_54 : f32 = x_33.x_Metallic;
  let x_56 : f32 = x_33.x_Metallic;
  let x_57 : vec3<f32> = vec3<f32>(x_52, x_54, x_56);
  let x_62 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_57.x, x_57.y, x_57.z) * x_62) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_70 : f32 = x_33.x_Metallic;
  u_xlat24 = ((-(x_70) * 0.959999979f) + 0.959999979f);
  let x_75 : f32 = u_xlat24;
  let x_77 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_75, x_75, x_75) * x_77);
  let x_85 : vec4<f32> = vs_TEXCOORD0;
  let x_87 : vec4<f32> = textureSample(x_BumpMap, sampler_BumpMap, vec2<f32>(x_85.x, x_85.y));
  u_xlat2 = vec3<f32>(x_87.x, x_87.y, x_87.w);
  let x_92 : f32 = u_xlat2.z;
  let x_95 : f32 = u_xlat2.x;
  u_xlat2.x = (x_92 * x_95);
  let x_98 : vec3<f32> = u_xlat2;
  let x_105 : vec2<f32> = ((vec2<f32>(x_98.x, x_98.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_106 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_105.x, x_105.y, x_106.z);
  let x_109 : vec3<f32> = u_xlat2;
  let x_111 : vec3<f32> = u_xlat2;
  u_xlat25 = dot(vec2<f32>(x_109.x, x_109.y), vec2<f32>(x_111.x, x_111.y));
  let x_114 : f32 = u_xlat25;
  u_xlat25 = min(x_114, 1.0f);
  let x_117 : f32 = u_xlat25;
  u_xlat25 = (-(x_117) + 1.0f);
  let x_120 : f32 = u_xlat25;
  u_xlat25 = sqrt(x_120);
  let x_123 : vec3<f32> = u_xlat2;
  let x_126 : vec4<f32> = vs_TEXCOORD3;
  u_xlat10 = (vec3<f32>(x_123.y, x_123.y, x_123.y) * vec3<f32>(x_126.x, x_126.y, x_126.z));
  let x_130 : vec4<f32> = vs_TEXCOORD2;
  let x_132 : vec3<f32> = u_xlat2;
  let x_135 : vec3<f32> = u_xlat10;
  u_xlat2 = ((vec3<f32>(x_130.x, x_130.y, x_130.z) * vec3<f32>(x_132.x, x_132.x, x_132.x)) + x_135);
  let x_138 : vec4<f32> = vs_TEXCOORD4;
  let x_140 : f32 = u_xlat25;
  let x_143 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_138.x, x_138.y, x_138.z) * vec3<f32>(x_140, x_140, x_140)) + x_143);
  let x_150 : f32 = x_33.unity_ProbeVolumeParams.x;
  u_xlatb25 = (x_150 == 1.0f);
  let x_152 : bool = u_xlatb25;
  if (x_152) {
    let x_157 : f32 = x_33.unity_ProbeVolumeParams.y;
    u_xlatb25 = (x_157 == 1.0f);
    let x_161 : vec4<f32> = vs_TEXCOORD3;
    let x_166 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[1i];
    let x_168 : vec3<f32> = (vec3<f32>(x_161.w, x_161.w, x_161.w) * vec3<f32>(x_166.x, x_166.y, x_166.z));
    let x_169 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_168.x, x_168.y, x_168.z, x_169.w);
    let x_173 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[0i];
    let x_175 : vec4<f32> = vs_TEXCOORD2;
    let x_178 : vec4<f32> = u_xlat3;
    let x_180 : vec3<f32> = ((vec3<f32>(x_173.x, x_173.y, x_173.z) * vec3<f32>(x_175.w, x_175.w, x_175.w)) + vec3<f32>(x_178.x, x_178.y, x_178.z));
    let x_181 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_180.x, x_180.y, x_180.z, x_181.w);
    let x_185 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[2i];
    let x_187 : vec4<f32> = vs_TEXCOORD4;
    let x_190 : vec4<f32> = u_xlat3;
    let x_192 : vec3<f32> = ((vec3<f32>(x_185.x, x_185.y, x_185.z) * vec3<f32>(x_187.w, x_187.w, x_187.w)) + vec3<f32>(x_190.x, x_190.y, x_190.z));
    let x_193 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_192.x, x_192.y, x_192.z, x_193.w);
    let x_195 : vec4<f32> = u_xlat3;
    let x_199 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[3i];
    let x_201 : vec3<f32> = (vec3<f32>(x_195.x, x_195.y, x_195.z) + vec3<f32>(x_199.x, x_199.y, x_199.z));
    let x_202 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_201.x, x_201.y, x_201.z, x_202.w);
    let x_208 : f32 = vs_TEXCOORD2.w;
    u_xlat12.x = x_208;
    let x_211 : f32 = vs_TEXCOORD3.w;
    u_xlat12.y = x_211;
    let x_214 : f32 = vs_TEXCOORD4.w;
    u_xlat12.z = x_214;
    let x_216 : bool = u_xlatb25;
    if (x_216) {
      let x_220 : vec4<f32> = u_xlat3;
      x_217 = vec3<f32>(x_220.x, x_220.y, x_220.z);
    } else {
      let x_223 : vec3<f32> = u_xlat12;
      x_217 = x_223;
    }
    let x_224 : vec3<f32> = x_217;
    let x_225 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_224.x, x_224.y, x_224.z, x_225.w);
    let x_227 : vec4<f32> = u_xlat3;
    let x_232 : vec3<f32> = x_33.unity_ProbeVolumeMin;
    let x_234 : vec3<f32> = (vec3<f32>(x_227.x, x_227.y, x_227.z) + -(x_232));
    let x_235 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_234.x, x_234.y, x_234.z, x_235.w);
    let x_237 : vec4<f32> = u_xlat3;
    let x_241 : vec3<f32> = x_33.unity_ProbeVolumeSizeInv;
    let x_242 : vec3<f32> = (vec3<f32>(x_237.x, x_237.y, x_237.z) * x_241);
    let x_243 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_243.x, x_242.x, x_242.y, x_242.z);
    let x_246 : f32 = u_xlat3.y;
    u_xlat25 = ((x_246 * 0.25f) + 0.75f);
    let x_253 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat26 = ((x_253 * 0.5f) + 0.75f);
    let x_257 : f32 = u_xlat25;
    let x_258 : f32 = u_xlat26;
    u_xlat3.x = max(x_257, x_258);
    let x_269 : vec4<f32> = u_xlat3;
    let x_271 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_269.x, x_269.z, x_269.w));
    u_xlat3 = x_271;
  } else {
    u_xlat3.x = 1.0f;
    u_xlat3.y = 1.0f;
    u_xlat3.z = 1.0f;
    u_xlat3.w = 1.0f;
  }
  let x_277 : vec4<f32> = u_xlat3;
  let x_279 : vec4<f32> = x_33.unity_OcclusionMaskSelector;
  u_xlat25 = dot(x_277, x_279);
  let x_281 : f32 = u_xlat25;
  u_xlat25 = clamp(x_281, 0.0f, 1.0f);
  let x_289 : vec4<f32> = vs_TEXCOORD0;
  let x_291 : vec4<f32> = textureSample(x_OcclusionMap, sampler_OcclusionMap, vec2<f32>(x_289.x, x_289.y));
  u_xlat26 = x_291.y;
  let x_295 : f32 = x_33.x_Glossiness;
  let x_297 : f32 = x_33.x_Glossiness;
  let x_298 : vec2<f32> = vec2<f32>(x_295, x_297);
  let x_304 : vec2<f32> = (-(vec2<f32>(x_298.x, x_298.y)) + vec2<f32>(1.0f, 1.0f));
  let x_305 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_304.x, x_305.y, x_305.z, x_304.y);
  let x_309 : vec4<f32> = vs_TEXCOORD1;
  let x_311 : vec3<f32> = u_xlat2;
  u_xlat4.x = dot(vec3<f32>(x_309.x, x_309.y, x_309.z), x_311);
  let x_315 : f32 = u_xlat4.x;
  let x_317 : f32 = u_xlat4.x;
  u_xlat4.x = (x_315 + x_317);
  let x_320 : vec3<f32> = u_xlat2;
  let x_321 : vec4<f32> = u_xlat4;
  let x_325 : vec4<f32> = vs_TEXCOORD1;
  let x_327 : vec3<f32> = ((x_320 * -(vec3<f32>(x_321.x, x_321.x, x_321.x))) + vec3<f32>(x_325.x, x_325.y, x_325.z));
  let x_328 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_327.x, x_327.y, x_327.z, x_328.w);
  let x_331 : f32 = u_xlat25;
  let x_335 : vec4<f32> = x_33.x_LightColor0;
  u_xlat5 = (vec3<f32>(x_331, x_331, x_331) * vec3<f32>(x_335.x, x_335.y, x_335.z));
  let x_339 : f32 = u_xlat26;
  let x_342 : vec4<f32> = vs_TEXCOORD5;
  u_xlat6 = (vec3<f32>(x_339, x_339, x_339) * vec3<f32>(x_342.x, x_342.y, x_342.z));
  let x_346 : f32 = u_xlat3.x;
  u_xlat25 = ((-(x_346) * 0.699999988f) + 1.700000048f);
  let x_352 : f32 = u_xlat25;
  let x_354 : f32 = u_xlat3.x;
  u_xlat25 = (x_352 * x_354);
  let x_356 : f32 = u_xlat25;
  u_xlat25 = (x_356 * 6.0f);
  let x_367 : vec4<f32> = u_xlat4;
  let x_369 : f32 = u_xlat25;
  let x_370 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_367.x, x_367.y, x_367.z), x_369);
  u_xlat4 = x_370;
  let x_372 : f32 = u_xlat4.w;
  u_xlat25 = (x_372 + -1.0f);
  let x_375 : f32 = x_33.unity_SpecCube0_HDR.w;
  let x_376 : f32 = u_xlat25;
  u_xlat25 = ((x_375 * x_376) + 1.0f);
  let x_379 : f32 = u_xlat25;
  u_xlat25 = log2(x_379);
  let x_381 : f32 = u_xlat25;
  let x_383 : f32 = x_33.unity_SpecCube0_HDR.y;
  u_xlat25 = (x_381 * x_383);
  let x_385 : f32 = u_xlat25;
  u_xlat25 = exp2(x_385);
  let x_387 : f32 = u_xlat25;
  let x_389 : f32 = x_33.unity_SpecCube0_HDR.x;
  u_xlat25 = (x_387 * x_389);
  let x_391 : vec4<f32> = u_xlat4;
  let x_393 : f32 = u_xlat25;
  let x_395 : vec3<f32> = (vec3<f32>(x_391.x, x_391.y, x_391.z) * vec3<f32>(x_393, x_393, x_393));
  let x_396 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_395.x, x_395.y, x_395.z, x_396.w);
  let x_398 : f32 = u_xlat26;
  let x_400 : vec4<f32> = u_xlat4;
  let x_402 : vec3<f32> = (vec3<f32>(x_398, x_398, x_398) * vec3<f32>(x_400.x, x_400.y, x_400.z));
  let x_403 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_402.x, x_402.y, x_402.z, x_403.w);
  let x_405 : vec4<f32> = vs_TEXCOORD1;
  let x_408 : vec3<f32> = u_xlat2;
  u_xlat25 = dot(-(vec3<f32>(x_405.x, x_405.y, x_405.z)), x_408);
  let x_410 : f32 = u_xlat25;
  let x_411 : f32 = u_xlat25;
  u_xlat26 = (x_410 + x_411);
  let x_414 : vec3<f32> = u_xlat2;
  let x_415 : f32 = u_xlat26;
  let x_419 : vec4<f32> = vs_TEXCOORD1;
  u_xlat7 = ((x_414 * -(vec3<f32>(x_415, x_415, x_415))) + -(vec3<f32>(x_419.x, x_419.y, x_419.z)));
  let x_423 : vec3<f32> = u_xlat2;
  let x_425 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  u_xlat2.x = dot(x_423, vec3<f32>(x_425.x, x_425.y, x_425.z));
  let x_430 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_430, 0.0f, 1.0f);
  let x_433 : f32 = u_xlat25;
  u_xlat25 = x_433;
  let x_434 : f32 = u_xlat25;
  u_xlat25 = clamp(x_434, 0.0f, 1.0f);
  let x_436 : vec3<f32> = u_xlat7;
  let x_438 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  u_xlat7.x = dot(x_436, vec3<f32>(x_438.x, x_438.y, x_438.z));
  let x_442 : f32 = u_xlat25;
  u_xlat7.y = (-(x_442) + 1.0f);
  let x_446 : vec3<f32> = u_xlat7;
  let x_448 : vec3<f32> = u_xlat7;
  let x_450 : vec2<f32> = (vec2<f32>(x_446.x, x_446.y) * vec2<f32>(x_448.x, x_448.y));
  let x_451 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_450.x, x_450.y, x_451.z);
  let x_453 : vec3<f32> = u_xlat10;
  let x_455 : vec3<f32> = u_xlat10;
  let x_457 : vec2<f32> = (vec2<f32>(x_453.x, x_453.y) * vec2<f32>(x_455.x, x_455.y));
  let x_458 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_458.x, x_457.x, x_457.y, x_458.w);
  let x_460 : f32 = u_xlat24;
  let x_463 : f32 = x_33.x_Glossiness;
  u_xlat24 = (-(x_460) + x_463);
  let x_465 : f32 = u_xlat24;
  u_xlat24 = (x_465 + 1.0f);
  let x_467 : f32 = u_xlat24;
  u_xlat24 = clamp(x_467, 0.0f, 1.0f);
  let x_474 : vec4<f32> = u_xlat3;
  let x_476 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_474.y, x_474.w));
  u_xlat25 = x_476.x;
  let x_478 : f32 = u_xlat25;
  u_xlat25 = (x_478 * 16.0f);
  let x_481 : f32 = u_xlat25;
  let x_483 : vec3<f32> = u_xlat0;
  let x_485 : vec3<f32> = u_xlat1;
  u_xlat10 = ((vec3<f32>(x_481, x_481, x_481) * x_483) + x_485);
  let x_487 : vec3<f32> = u_xlat2;
  let x_489 : vec3<f32> = u_xlat5;
  let x_490 : vec3<f32> = (vec3<f32>(x_487.x, x_487.x, x_487.x) * x_489);
  let x_491 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_490.x, x_490.y, x_491.z, x_490.z);
  let x_493 : vec3<f32> = u_xlat0;
  let x_495 : f32 = u_xlat24;
  u_xlat5 = (-(x_493) + vec3<f32>(x_495, x_495, x_495));
  let x_498 : vec4<f32> = u_xlat3;
  let x_500 : vec3<f32> = u_xlat5;
  let x_502 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_498.z, x_498.z, x_498.z) * x_500) + x_502);
  let x_504 : vec3<f32> = u_xlat0;
  let x_505 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_504 * vec3<f32>(x_505.x, x_505.y, x_505.z));
  let x_508 : vec3<f32> = u_xlat6;
  let x_509 : vec3<f32> = u_xlat1;
  let x_511 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_508 * x_509) + x_511);
  let x_513 : vec3<f32> = u_xlat10;
  let x_514 : vec4<f32> = u_xlat3;
  let x_517 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_513 * vec3<f32>(x_514.x, x_514.y, x_514.w)) + x_517);
  let x_520 : f32 = vs_TEXCOORD1.w;
  u_xlat24 = x_520;
  let x_521 : f32 = u_xlat24;
  u_xlat24 = clamp(x_521, 0.0f, 1.0f);
  let x_523 : vec3<f32> = u_xlat0;
  let x_525 : vec4<f32> = x_33.unity_FogColor;
  u_xlat0 = (x_523 + -(vec3<f32>(x_525.x, x_525.y, x_525.z)));
  let x_531 : f32 = u_xlat24;
  let x_533 : vec3<f32> = u_xlat0;
  let x_536 : vec4<f32> = x_33.unity_FogColor;
  let x_538 : vec3<f32> = ((vec3<f32>(x_531, x_531, x_531) * x_533) + vec3<f32>(x_536.x, x_536.y, x_536.z));
  let x_539 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_538.x, x_538.y, x_538.z, x_539.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

