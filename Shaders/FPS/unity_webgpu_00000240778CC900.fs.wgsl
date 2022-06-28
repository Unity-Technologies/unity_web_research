struct PGlobals {
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
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
  @size(8)
  padding_2 : u32,
  x_EmissionColor : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(0) var<uniform> x_37 : PGlobals;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat24 : f32;

var<private> u_xlat25 : f32;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlatb25 : bool;

var<private> u_xlat3 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> u_xlat12 : vec3<f32>;

var<private> u_xlat26 : f32;

@group(0) @binding(6) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(8) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(2) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_OcclusionMap : sampler;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

@group(0) @binding(5) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlat10 : vec3<f32>;

@group(0) @binding(3) var unity_NHxRoughness : texture_2d<f32>;

@group(0) @binding(9) var samplerunity_NHxRoughness : sampler;

@group(0) @binding(4) var x_EmissionMap : texture_2d<f32>;

@group(0) @binding(12) var sampler_EmissionMap : sampler;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_187 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_23.x, x_23.y));
  u_xlat0 = x_25;
  let x_32 : f32 = u_xlat0.w;
  let x_42 : f32 = x_37.x_Color.w;
  SV_Target0.w = (x_32 * x_42);
  let x_48 : vec4<f32> = u_xlat0;
  let x_52 : vec4<f32> = x_37.x_Color;
  u_xlat1 = (vec3<f32>(x_48.x, x_48.y, x_48.z) * vec3<f32>(x_52.x, x_52.y, x_52.z));
  let x_56 : vec4<f32> = x_37.x_Color;
  let x_58 : vec4<f32> = u_xlat0;
  let x_63 : vec3<f32> = ((vec3<f32>(x_56.x, x_56.y, x_56.z) * vec3<f32>(x_58.x, x_58.y, x_58.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_64 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_63.x, x_63.y, x_63.z, x_64.w);
  let x_68 : f32 = x_37.x_Metallic;
  let x_70 : f32 = x_37.x_Metallic;
  let x_72 : f32 = x_37.x_Metallic;
  let x_73 : vec3<f32> = vec3<f32>(x_68, x_70, x_72);
  let x_78 : vec4<f32> = u_xlat0;
  let x_83 : vec3<f32> = ((vec3<f32>(x_73.x, x_73.y, x_73.z) * vec3<f32>(x_78.x, x_78.y, x_78.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_84 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_83.x, x_83.y, x_83.z, x_84.w);
  let x_88 : f32 = x_37.x_Metallic;
  u_xlat24 = ((-(x_88) * 0.959999979f) + 0.959999979f);
  let x_93 : f32 = u_xlat24;
  let x_95 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_93, x_93, x_93) * x_95);
  let x_99 : vec4<f32> = vs_TEXCOORD4;
  let x_101 : vec4<f32> = vs_TEXCOORD4;
  u_xlat25 = dot(vec3<f32>(x_99.x, x_99.y, x_99.z), vec3<f32>(x_101.x, x_101.y, x_101.z));
  let x_104 : f32 = u_xlat25;
  u_xlat25 = inverseSqrt(x_104);
  let x_107 : f32 = u_xlat25;
  let x_109 : vec4<f32> = vs_TEXCOORD4;
  u_xlat2 = (vec3<f32>(x_107, x_107, x_107) * vec3<f32>(x_109.x, x_109.y, x_109.z));
  let x_118 : f32 = x_37.unity_ProbeVolumeParams.x;
  u_xlatb25 = (x_118 == 1.0f);
  let x_121 : bool = u_xlatb25;
  if (x_121) {
    let x_126 : f32 = x_37.unity_ProbeVolumeParams.y;
    u_xlatb25 = (x_126 == 1.0f);
    let x_130 : vec4<f32> = vs_TEXCOORD3;
    let x_135 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[1i];
    let x_137 : vec3<f32> = (vec3<f32>(x_130.w, x_130.w, x_130.w) * vec3<f32>(x_135.x, x_135.y, x_135.z));
    let x_138 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_137.x, x_137.y, x_137.z, x_138.w);
    let x_142 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[0i];
    let x_145 : vec4<f32> = vs_TEXCOORD2;
    let x_148 : vec4<f32> = u_xlat3;
    let x_150 : vec3<f32> = ((vec3<f32>(x_142.x, x_142.y, x_142.z) * vec3<f32>(x_145.w, x_145.w, x_145.w)) + vec3<f32>(x_148.x, x_148.y, x_148.z));
    let x_151 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_150.x, x_150.y, x_150.z, x_151.w);
    let x_155 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[2i];
    let x_157 : vec4<f32> = vs_TEXCOORD4;
    let x_160 : vec4<f32> = u_xlat3;
    let x_162 : vec3<f32> = ((vec3<f32>(x_155.x, x_155.y, x_155.z) * vec3<f32>(x_157.w, x_157.w, x_157.w)) + vec3<f32>(x_160.x, x_160.y, x_160.z));
    let x_163 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_162.x, x_162.y, x_162.z, x_163.w);
    let x_165 : vec4<f32> = u_xlat3;
    let x_168 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[3i];
    let x_170 : vec3<f32> = (vec3<f32>(x_165.x, x_165.y, x_165.z) + vec3<f32>(x_168.x, x_168.y, x_168.z));
    let x_171 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_170.x, x_170.y, x_170.z, x_171.w);
    let x_176 : f32 = vs_TEXCOORD2.w;
    u_xlat12.x = x_176;
    let x_179 : f32 = vs_TEXCOORD3.w;
    u_xlat12.y = x_179;
    let x_182 : f32 = vs_TEXCOORD4.w;
    u_xlat12.z = x_182;
    let x_185 : bool = u_xlatb25;
    if (x_185) {
      let x_190 : vec4<f32> = u_xlat3;
      x_187 = vec3<f32>(x_190.x, x_190.y, x_190.z);
    } else {
      let x_193 : vec3<f32> = u_xlat12;
      x_187 = x_193;
    }
    let x_194 : vec3<f32> = x_187;
    let x_195 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_194.x, x_194.y, x_194.z, x_195.w);
    let x_197 : vec4<f32> = u_xlat3;
    let x_202 : vec3<f32> = x_37.unity_ProbeVolumeMin;
    let x_204 : vec3<f32> = (vec3<f32>(x_197.x, x_197.y, x_197.z) + -(x_202));
    let x_205 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_204.x, x_204.y, x_204.z, x_205.w);
    let x_207 : vec4<f32> = u_xlat3;
    let x_211 : vec3<f32> = x_37.unity_ProbeVolumeSizeInv;
    let x_212 : vec3<f32> = (vec3<f32>(x_207.x, x_207.y, x_207.z) * x_211);
    let x_213 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_213.x, x_212.x, x_212.y, x_212.z);
    let x_216 : f32 = u_xlat3.y;
    u_xlat25 = ((x_216 * 0.25f) + 0.75f);
    let x_223 : f32 = x_37.unity_ProbeVolumeParams.z;
    u_xlat26 = ((x_223 * 0.5f) + 0.75f);
    let x_227 : f32 = u_xlat25;
    let x_228 : f32 = u_xlat26;
    u_xlat3.x = max(x_227, x_228);
    let x_239 : vec4<f32> = u_xlat3;
    let x_241 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_239.x, x_239.z, x_239.w));
    u_xlat3 = x_241;
  } else {
    u_xlat3.x = 1.0f;
    u_xlat3.y = 1.0f;
    u_xlat3.z = 1.0f;
    u_xlat3.w = 1.0f;
  }
  let x_247 : vec4<f32> = u_xlat3;
  let x_249 : vec4<f32> = x_37.unity_OcclusionMaskSelector;
  u_xlat25 = dot(x_247, x_249);
  let x_251 : f32 = u_xlat25;
  u_xlat25 = clamp(x_251, 0.0f, 1.0f);
  let x_259 : vec4<f32> = vs_TEXCOORD0;
  let x_261 : vec4<f32> = textureSample(x_OcclusionMap, sampler_OcclusionMap, vec2<f32>(x_259.x, x_259.y));
  u_xlat26 = x_261.y;
  let x_265 : f32 = x_37.x_Glossiness;
  let x_267 : f32 = x_37.x_Glossiness;
  let x_268 : vec2<f32> = vec2<f32>(x_265, x_267);
  let x_274 : vec2<f32> = (-(vec2<f32>(x_268.x, x_268.y)) + vec2<f32>(1.0f, 1.0f));
  let x_275 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_274.x, x_275.y, x_275.z, x_274.y);
  let x_279 : vec4<f32> = vs_TEXCOORD1;
  let x_281 : vec3<f32> = u_xlat2;
  u_xlat4.x = dot(vec3<f32>(x_279.x, x_279.y, x_279.z), x_281);
  let x_285 : f32 = u_xlat4.x;
  let x_287 : f32 = u_xlat4.x;
  u_xlat4.x = (x_285 + x_287);
  let x_290 : vec3<f32> = u_xlat2;
  let x_291 : vec4<f32> = u_xlat4;
  let x_295 : vec4<f32> = vs_TEXCOORD1;
  let x_297 : vec3<f32> = ((x_290 * -(vec3<f32>(x_291.x, x_291.x, x_291.x))) + vec3<f32>(x_295.x, x_295.y, x_295.z));
  let x_298 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_297.x, x_297.y, x_297.z, x_298.w);
  let x_301 : f32 = u_xlat25;
  let x_305 : vec4<f32> = x_37.x_LightColor0;
  u_xlat5 = (vec3<f32>(x_301, x_301, x_301) * vec3<f32>(x_305.x, x_305.y, x_305.z));
  let x_309 : f32 = u_xlat26;
  let x_312 : vec4<f32> = vs_TEXCOORD5;
  u_xlat6 = (vec3<f32>(x_309, x_309, x_309) * vec3<f32>(x_312.x, x_312.y, x_312.z));
  let x_316 : f32 = u_xlat3.x;
  u_xlat25 = ((-(x_316) * 0.699999988f) + 1.700000048f);
  let x_322 : f32 = u_xlat25;
  let x_324 : f32 = u_xlat3.x;
  u_xlat25 = (x_322 * x_324);
  let x_326 : f32 = u_xlat25;
  u_xlat25 = (x_326 * 6.0f);
  let x_337 : vec4<f32> = u_xlat4;
  let x_339 : f32 = u_xlat25;
  let x_340 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_337.x, x_337.y, x_337.z), x_339);
  u_xlat4 = x_340;
  let x_342 : f32 = u_xlat4.w;
  u_xlat25 = (x_342 + -1.0f);
  let x_346 : f32 = x_37.unity_SpecCube0_HDR.w;
  let x_347 : f32 = u_xlat25;
  u_xlat25 = ((x_346 * x_347) + 1.0f);
  let x_350 : f32 = u_xlat25;
  u_xlat25 = log2(x_350);
  let x_352 : f32 = u_xlat25;
  let x_354 : f32 = x_37.unity_SpecCube0_HDR.y;
  u_xlat25 = (x_352 * x_354);
  let x_356 : f32 = u_xlat25;
  u_xlat25 = exp2(x_356);
  let x_358 : f32 = u_xlat25;
  let x_360 : f32 = x_37.unity_SpecCube0_HDR.x;
  u_xlat25 = (x_358 * x_360);
  let x_362 : vec4<f32> = u_xlat4;
  let x_364 : f32 = u_xlat25;
  let x_366 : vec3<f32> = (vec3<f32>(x_362.x, x_362.y, x_362.z) * vec3<f32>(x_364, x_364, x_364));
  let x_367 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_366.x, x_366.y, x_366.z, x_367.w);
  let x_369 : f32 = u_xlat26;
  let x_371 : vec4<f32> = u_xlat4;
  let x_373 : vec3<f32> = (vec3<f32>(x_369, x_369, x_369) * vec3<f32>(x_371.x, x_371.y, x_371.z));
  let x_374 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_373.x, x_373.y, x_373.z, x_374.w);
  let x_376 : vec4<f32> = vs_TEXCOORD1;
  let x_379 : vec3<f32> = u_xlat2;
  u_xlat25 = dot(-(vec3<f32>(x_376.x, x_376.y, x_376.z)), x_379);
  let x_381 : f32 = u_xlat25;
  let x_382 : f32 = u_xlat25;
  u_xlat26 = (x_381 + x_382);
  let x_385 : vec3<f32> = u_xlat2;
  let x_386 : f32 = u_xlat26;
  let x_390 : vec4<f32> = vs_TEXCOORD1;
  u_xlat7 = ((x_385 * -(vec3<f32>(x_386, x_386, x_386))) + -(vec3<f32>(x_390.x, x_390.y, x_390.z)));
  let x_394 : vec3<f32> = u_xlat2;
  let x_396 : vec4<f32> = x_37.x_WorldSpaceLightPos0;
  u_xlat2.x = dot(x_394, vec3<f32>(x_396.x, x_396.y, x_396.z));
  let x_401 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_401, 0.0f, 1.0f);
  let x_404 : f32 = u_xlat25;
  u_xlat25 = x_404;
  let x_405 : f32 = u_xlat25;
  u_xlat25 = clamp(x_405, 0.0f, 1.0f);
  let x_407 : vec3<f32> = u_xlat7;
  let x_409 : vec4<f32> = x_37.x_WorldSpaceLightPos0;
  u_xlat7.x = dot(x_407, vec3<f32>(x_409.x, x_409.y, x_409.z));
  let x_413 : f32 = u_xlat25;
  u_xlat7.y = (-(x_413) + 1.0f);
  let x_418 : vec3<f32> = u_xlat7;
  let x_420 : vec3<f32> = u_xlat7;
  let x_422 : vec2<f32> = (vec2<f32>(x_418.x, x_418.y) * vec2<f32>(x_420.x, x_420.y));
  let x_423 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_422.x, x_422.y, x_423.z);
  let x_425 : vec3<f32> = u_xlat10;
  let x_427 : vec3<f32> = u_xlat10;
  let x_429 : vec2<f32> = (vec2<f32>(x_425.x, x_425.y) * vec2<f32>(x_427.x, x_427.y));
  let x_430 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_430.x, x_429.x, x_429.y, x_430.w);
  let x_432 : f32 = u_xlat24;
  let x_435 : f32 = x_37.x_Glossiness;
  u_xlat24 = (-(x_432) + x_435);
  let x_437 : f32 = u_xlat24;
  u_xlat24 = (x_437 + 1.0f);
  let x_439 : f32 = u_xlat24;
  u_xlat24 = clamp(x_439, 0.0f, 1.0f);
  let x_446 : vec4<f32> = u_xlat3;
  let x_448 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_446.y, x_446.w));
  u_xlat25 = x_448.x;
  let x_450 : f32 = u_xlat25;
  u_xlat25 = (x_450 * 16.0f);
  let x_453 : f32 = u_xlat25;
  let x_455 : vec4<f32> = u_xlat0;
  let x_458 : vec3<f32> = u_xlat1;
  u_xlat10 = ((vec3<f32>(x_453, x_453, x_453) * vec3<f32>(x_455.x, x_455.y, x_455.z)) + x_458);
  let x_460 : vec3<f32> = u_xlat2;
  let x_462 : vec3<f32> = u_xlat5;
  let x_463 : vec3<f32> = (vec3<f32>(x_460.x, x_460.x, x_460.x) * x_462);
  let x_464 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_463.x, x_463.y, x_464.z, x_463.z);
  let x_466 : vec4<f32> = u_xlat0;
  let x_469 : f32 = u_xlat24;
  u_xlat5 = (-(vec3<f32>(x_466.x, x_466.y, x_466.z)) + vec3<f32>(x_469, x_469, x_469));
  let x_472 : vec4<f32> = u_xlat3;
  let x_474 : vec3<f32> = u_xlat5;
  let x_476 : vec4<f32> = u_xlat0;
  let x_478 : vec3<f32> = ((vec3<f32>(x_472.z, x_472.z, x_472.z) * x_474) + vec3<f32>(x_476.x, x_476.y, x_476.z));
  let x_479 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_478.x, x_478.y, x_478.z, x_479.w);
  let x_481 : vec4<f32> = u_xlat0;
  let x_483 : vec4<f32> = u_xlat4;
  let x_485 : vec3<f32> = (vec3<f32>(x_481.x, x_481.y, x_481.z) * vec3<f32>(x_483.x, x_483.y, x_483.z));
  let x_486 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_485.x, x_485.y, x_485.z, x_486.w);
  let x_488 : vec3<f32> = u_xlat6;
  let x_489 : vec3<f32> = u_xlat1;
  let x_491 : vec4<f32> = u_xlat0;
  let x_493 : vec3<f32> = ((x_488 * x_489) + vec3<f32>(x_491.x, x_491.y, x_491.z));
  let x_494 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_493.x, x_493.y, x_493.z, x_494.w);
  let x_496 : vec3<f32> = u_xlat10;
  let x_497 : vec4<f32> = u_xlat3;
  let x_500 : vec4<f32> = u_xlat0;
  let x_502 : vec3<f32> = ((x_496 * vec3<f32>(x_497.x, x_497.y, x_497.w)) + vec3<f32>(x_500.x, x_500.y, x_500.z));
  let x_503 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_502.x, x_502.y, x_502.z, x_503.w);
  let x_510 : vec4<f32> = vs_TEXCOORD0;
  let x_512 : vec4<f32> = textureSample(x_EmissionMap, sampler_EmissionMap, vec2<f32>(x_510.x, x_510.y));
  u_xlat1 = vec3<f32>(x_512.x, x_512.y, x_512.z);
  let x_514 : vec3<f32> = u_xlat1;
  let x_517 : vec4<f32> = x_37.x_EmissionColor;
  let x_520 : vec4<f32> = u_xlat0;
  let x_522 : vec3<f32> = ((x_514 * vec3<f32>(x_517.x, x_517.y, x_517.z)) + vec3<f32>(x_520.x, x_520.y, x_520.z));
  let x_523 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_522.x, x_522.y, x_522.z, x_523.w);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

