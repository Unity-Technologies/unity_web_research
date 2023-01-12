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
  @size(8)
  padding_2 : u32,
  x_EmissionColor : vec4<f32>,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_33 : PGlobals;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(0) @binding(5) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(7) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(1) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_OcclusionMap : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(4) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

@group(0) @binding(2) var unity_NHxRoughness : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_NHxRoughness : sampler;

@group(0) @binding(3) var x_EmissionMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_EmissionMap : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat21 : f32;
  var u_xlat22 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlatb22 : bool;
  var u_xlat3 : vec4<f32>;
  var u_xlat11 : vec3<f32>;
  var x_168 : vec3<f32>;
  var u_xlat23 : f32;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat9 : vec3<f32>;
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
  u_xlat21 = ((-(x_70) * 0.959999979f) + 0.959999979f);
  let x_77 : vec4<f32> = vs_TEXCOORD4;
  let x_79 : vec4<f32> = vs_TEXCOORD4;
  u_xlat22 = dot(vec3<f32>(x_77.x, x_77.y, x_77.z), vec3<f32>(x_79.x, x_79.y, x_79.z));
  let x_82 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_82);
  let x_85 : f32 = u_xlat22;
  let x_87 : vec4<f32> = vs_TEXCOORD4;
  u_xlat2 = (vec3<f32>(x_85, x_85, x_85) * vec3<f32>(x_87.x, x_87.y, x_87.z));
  let x_97 : f32 = x_33.unity_ProbeVolumeParams.x;
  u_xlatb22 = (x_97 == 1.0f);
  let x_100 : bool = u_xlatb22;
  if (x_100) {
    let x_105 : f32 = x_33.unity_ProbeVolumeParams.y;
    u_xlatb22 = (x_105 == 1.0f);
    let x_110 : vec4<f32> = vs_TEXCOORD3;
    let x_115 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[1i];
    let x_117 : vec3<f32> = (vec3<f32>(x_110.w, x_110.w, x_110.w) * vec3<f32>(x_115.x, x_115.y, x_115.z));
    let x_118 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_117.x, x_117.y, x_117.z, x_118.w);
    let x_122 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[0i];
    let x_125 : vec4<f32> = vs_TEXCOORD2;
    let x_128 : vec4<f32> = u_xlat3;
    let x_130 : vec3<f32> = ((vec3<f32>(x_122.x, x_122.y, x_122.z) * vec3<f32>(x_125.w, x_125.w, x_125.w)) + vec3<f32>(x_128.x, x_128.y, x_128.z));
    let x_131 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_130.x, x_130.y, x_130.z, x_131.w);
    let x_135 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[2i];
    let x_137 : vec4<f32> = vs_TEXCOORD4;
    let x_140 : vec4<f32> = u_xlat3;
    let x_142 : vec3<f32> = ((vec3<f32>(x_135.x, x_135.y, x_135.z) * vec3<f32>(x_137.w, x_137.w, x_137.w)) + vec3<f32>(x_140.x, x_140.y, x_140.z));
    let x_143 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_142.x, x_142.y, x_142.z, x_143.w);
    let x_145 : vec4<f32> = u_xlat3;
    let x_149 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[3i];
    let x_151 : vec3<f32> = (vec3<f32>(x_145.x, x_145.y, x_145.z) + vec3<f32>(x_149.x, x_149.y, x_149.z));
    let x_152 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_151.x, x_151.y, x_151.z, x_152.w);
    let x_158 : f32 = vs_TEXCOORD2.w;
    u_xlat11.x = x_158;
    let x_161 : f32 = vs_TEXCOORD3.w;
    u_xlat11.y = x_161;
    let x_164 : f32 = vs_TEXCOORD4.w;
    u_xlat11.z = x_164;
    let x_167 : bool = u_xlatb22;
    if (x_167) {
      let x_171 : vec4<f32> = u_xlat3;
      x_168 = vec3<f32>(x_171.x, x_171.y, x_171.z);
    } else {
      let x_174 : vec3<f32> = u_xlat11;
      x_168 = x_174;
    }
    let x_175 : vec3<f32> = x_168;
    let x_176 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_175.x, x_175.y, x_175.z, x_176.w);
    let x_178 : vec4<f32> = u_xlat3;
    let x_183 : vec3<f32> = x_33.unity_ProbeVolumeMin;
    let x_185 : vec3<f32> = (vec3<f32>(x_178.x, x_178.y, x_178.z) + -(x_183));
    let x_186 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_185.x, x_185.y, x_185.z, x_186.w);
    let x_188 : vec4<f32> = u_xlat3;
    let x_192 : vec3<f32> = x_33.unity_ProbeVolumeSizeInv;
    let x_193 : vec3<f32> = (vec3<f32>(x_188.x, x_188.y, x_188.z) * x_192);
    let x_194 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_194.x, x_193.x, x_193.y, x_193.z);
    let x_197 : f32 = u_xlat3.y;
    u_xlat22 = ((x_197 * 0.25f) + 0.75f);
    let x_204 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat23 = ((x_204 * 0.5f) + 0.75f);
    let x_208 : f32 = u_xlat22;
    let x_209 : f32 = u_xlat23;
    u_xlat3.x = max(x_208, x_209);
    let x_220 : vec4<f32> = u_xlat3;
    let x_222 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_220.x, x_220.z, x_220.w));
    u_xlat3 = x_222;
  } else {
    u_xlat3.x = 1.0f;
    u_xlat3.y = 1.0f;
    u_xlat3.z = 1.0f;
    u_xlat3.w = 1.0f;
  }
  let x_228 : vec4<f32> = u_xlat3;
  let x_230 : vec4<f32> = x_33.unity_OcclusionMaskSelector;
  u_xlat22 = dot(x_228, x_230);
  let x_232 : f32 = u_xlat22;
  u_xlat22 = clamp(x_232, 0.0f, 1.0f);
  let x_240 : vec4<f32> = vs_TEXCOORD0;
  let x_242 : vec4<f32> = textureSample(x_OcclusionMap, sampler_OcclusionMap, vec2<f32>(x_240.x, x_240.y));
  u_xlat23 = x_242.y;
  let x_246 : f32 = x_33.x_Glossiness;
  let x_248 : f32 = x_33.x_Glossiness;
  let x_249 : vec2<f32> = vec2<f32>(x_246, x_248);
  let x_255 : vec2<f32> = (-(vec2<f32>(x_249.x, x_249.y)) + vec2<f32>(1.0f, 1.0f));
  let x_256 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_255.x, x_256.y, x_256.z, x_255.y);
  let x_260 : vec4<f32> = vs_TEXCOORD1;
  let x_262 : vec3<f32> = u_xlat2;
  u_xlat4.x = dot(vec3<f32>(x_260.x, x_260.y, x_260.z), x_262);
  let x_266 : f32 = u_xlat4.x;
  let x_268 : f32 = u_xlat4.x;
  u_xlat4.x = (x_266 + x_268);
  let x_271 : vec3<f32> = u_xlat2;
  let x_272 : vec4<f32> = u_xlat4;
  let x_276 : vec4<f32> = vs_TEXCOORD1;
  let x_278 : vec3<f32> = ((x_271 * -(vec3<f32>(x_272.x, x_272.x, x_272.x))) + vec3<f32>(x_276.x, x_276.y, x_276.z));
  let x_279 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_278.x, x_278.y, x_278.z, x_279.w);
  let x_282 : f32 = u_xlat22;
  let x_286 : vec4<f32> = x_33.x_LightColor0;
  u_xlat5 = (vec3<f32>(x_282, x_282, x_282) * vec3<f32>(x_286.x, x_286.y, x_286.z));
  let x_290 : f32 = u_xlat3.x;
  u_xlat22 = ((-(x_290) * 0.699999988f) + 1.700000048f);
  let x_296 : f32 = u_xlat22;
  let x_298 : f32 = u_xlat3.x;
  u_xlat22 = (x_296 * x_298);
  let x_300 : f32 = u_xlat22;
  u_xlat22 = (x_300 * 6.0f);
  let x_311 : vec4<f32> = u_xlat4;
  let x_313 : f32 = u_xlat22;
  let x_314 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_311.x, x_311.y, x_311.z), x_313);
  u_xlat4 = x_314;
  let x_316 : f32 = u_xlat4.w;
  u_xlat22 = (x_316 + -1.0f);
  let x_320 : f32 = x_33.unity_SpecCube0_HDR.w;
  let x_321 : f32 = u_xlat22;
  u_xlat22 = ((x_320 * x_321) + 1.0f);
  let x_324 : f32 = u_xlat22;
  u_xlat22 = log2(x_324);
  let x_326 : f32 = u_xlat22;
  let x_328 : f32 = x_33.unity_SpecCube0_HDR.y;
  u_xlat22 = (x_326 * x_328);
  let x_330 : f32 = u_xlat22;
  u_xlat22 = exp2(x_330);
  let x_332 : f32 = u_xlat22;
  let x_334 : f32 = x_33.unity_SpecCube0_HDR.x;
  u_xlat22 = (x_332 * x_334);
  let x_336 : vec4<f32> = u_xlat4;
  let x_338 : f32 = u_xlat22;
  let x_340 : vec3<f32> = (vec3<f32>(x_336.x, x_336.y, x_336.z) * vec3<f32>(x_338, x_338, x_338));
  let x_341 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_340.x, x_340.y, x_340.z, x_341.w);
  let x_343 : f32 = u_xlat23;
  let x_345 : vec4<f32> = u_xlat4;
  let x_347 : vec3<f32> = (vec3<f32>(x_343, x_343, x_343) * vec3<f32>(x_345.x, x_345.y, x_345.z));
  let x_348 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_347.x, x_347.y, x_347.z, x_348.w);
  let x_350 : vec4<f32> = vs_TEXCOORD1;
  let x_353 : vec3<f32> = u_xlat2;
  u_xlat22 = dot(-(vec3<f32>(x_350.x, x_350.y, x_350.z)), x_353);
  let x_355 : f32 = u_xlat22;
  let x_356 : f32 = u_xlat22;
  u_xlat23 = (x_355 + x_356);
  let x_359 : vec3<f32> = u_xlat2;
  let x_360 : f32 = u_xlat23;
  let x_364 : vec4<f32> = vs_TEXCOORD1;
  u_xlat6 = ((x_359 * -(vec3<f32>(x_360, x_360, x_360))) + -(vec3<f32>(x_364.x, x_364.y, x_364.z)));
  let x_368 : vec3<f32> = u_xlat2;
  let x_370 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  u_xlat2.x = dot(x_368, vec3<f32>(x_370.x, x_370.y, x_370.z));
  let x_375 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_375, 0.0f, 1.0f);
  let x_378 : f32 = u_xlat22;
  u_xlat22 = x_378;
  let x_379 : f32 = u_xlat22;
  u_xlat22 = clamp(x_379, 0.0f, 1.0f);
  let x_381 : vec3<f32> = u_xlat6;
  let x_383 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  u_xlat6.x = dot(x_381, vec3<f32>(x_383.x, x_383.y, x_383.z));
  let x_387 : f32 = u_xlat22;
  u_xlat6.y = (-(x_387) + 1.0f);
  let x_392 : vec3<f32> = u_xlat6;
  let x_394 : vec3<f32> = u_xlat6;
  let x_396 : vec2<f32> = (vec2<f32>(x_392.x, x_392.y) * vec2<f32>(x_394.x, x_394.y));
  let x_397 : vec3<f32> = u_xlat9;
  u_xlat9 = vec3<f32>(x_396.x, x_396.y, x_397.z);
  let x_399 : vec3<f32> = u_xlat9;
  let x_401 : vec3<f32> = u_xlat9;
  let x_403 : vec2<f32> = (vec2<f32>(x_399.x, x_399.y) * vec2<f32>(x_401.x, x_401.y));
  let x_404 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_404.x, x_403.x, x_403.y, x_404.w);
  let x_406 : f32 = u_xlat21;
  let x_409 : f32 = x_33.x_Glossiness;
  u_xlat22 = (-(x_406) + x_409);
  let x_411 : f32 = u_xlat22;
  u_xlat22 = (x_411 + 1.0f);
  let x_413 : f32 = u_xlat22;
  u_xlat22 = clamp(x_413, 0.0f, 1.0f);
  let x_420 : vec4<f32> = u_xlat3;
  let x_422 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_420.y, x_420.w));
  u_xlat9.x = x_422.x;
  let x_426 : f32 = u_xlat9.x;
  u_xlat9.x = (x_426 * 16.0f);
  let x_430 : vec3<f32> = u_xlat0;
  let x_431 : vec3<f32> = u_xlat9;
  u_xlat9 = (x_430 * vec3<f32>(x_431.x, x_431.x, x_431.x));
  let x_434 : vec3<f32> = u_xlat1;
  let x_435 : f32 = u_xlat21;
  let x_438 : vec3<f32> = u_xlat9;
  u_xlat1 = ((x_434 * vec3<f32>(x_435, x_435, x_435)) + x_438);
  let x_440 : vec3<f32> = u_xlat2;
  let x_442 : vec3<f32> = u_xlat5;
  u_xlat2 = (vec3<f32>(x_440.x, x_440.x, x_440.x) * x_442);
  let x_444 : vec3<f32> = u_xlat0;
  let x_446 : f32 = u_xlat22;
  let x_448 : vec3<f32> = (-(x_444) + vec3<f32>(x_446, x_446, x_446));
  let x_449 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_448.x, x_448.y, x_449.z, x_448.z);
  let x_451 : vec4<f32> = u_xlat3;
  let x_453 : vec4<f32> = u_xlat3;
  let x_456 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_451.z, x_451.z, x_451.z) * vec3<f32>(x_453.x, x_453.y, x_453.w)) + x_456);
  let x_458 : vec3<f32> = u_xlat0;
  let x_459 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_458 * vec3<f32>(x_459.x, x_459.y, x_459.z));
  let x_462 : vec3<f32> = u_xlat1;
  let x_463 : vec3<f32> = u_xlat2;
  let x_465 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_462 * x_463) + x_465);
  let x_472 : vec4<f32> = vs_TEXCOORD0;
  let x_474 : vec4<f32> = textureSample(x_EmissionMap, sampler_EmissionMap, vec2<f32>(x_472.x, x_472.y));
  u_xlat1 = vec3<f32>(x_474.x, x_474.y, x_474.z);
  let x_476 : vec3<f32> = u_xlat1;
  let x_479 : vec4<f32> = x_33.x_EmissionColor;
  let x_482 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_476 * vec3<f32>(x_479.x, x_479.y, x_479.z)) + x_482);
  let x_485 : f32 = vs_TEXCOORD1.w;
  u_xlat21 = x_485;
  let x_486 : f32 = u_xlat21;
  u_xlat21 = clamp(x_486, 0.0f, 1.0f);
  let x_488 : vec3<f32> = u_xlat0;
  let x_490 : vec4<f32> = x_33.unity_FogColor;
  u_xlat0 = (x_488 + -(vec3<f32>(x_490.x, x_490.y, x_490.z)));
  let x_496 : f32 = u_xlat21;
  let x_498 : vec3<f32> = u_xlat0;
  let x_501 : vec4<f32> = x_33.unity_FogColor;
  let x_503 : vec3<f32> = ((vec3<f32>(x_496, x_496, x_496) * x_498) + vec3<f32>(x_501.x, x_501.y, x_501.z));
  let x_504 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_503.x, x_503.y, x_503.z, x_504.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

