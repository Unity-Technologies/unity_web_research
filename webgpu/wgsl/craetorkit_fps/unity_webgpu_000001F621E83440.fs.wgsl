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

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_33 : PGlobals;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(0) @binding(4) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(6) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(1) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_OcclusionMap : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

@group(0) @binding(3) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

@group(0) @binding(2) var unity_NHxRoughness : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_NHxRoughness : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat24 : f32;
  var u_xlat25 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlatb25 : bool;
  var u_xlat3 : vec4<f32>;
  var u_xlat12 : vec3<f32>;
  var x_172 : vec3<f32>;
  var u_xlat26 : f32;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat10 : vec3<f32>;
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
  let x_81 : vec4<f32> = vs_TEXCOORD4;
  let x_83 : vec4<f32> = vs_TEXCOORD4;
  u_xlat25 = dot(vec3<f32>(x_81.x, x_81.y, x_81.z), vec3<f32>(x_83.x, x_83.y, x_83.z));
  let x_86 : f32 = u_xlat25;
  u_xlat25 = inverseSqrt(x_86);
  let x_89 : f32 = u_xlat25;
  let x_91 : vec4<f32> = vs_TEXCOORD4;
  u_xlat2 = (vec3<f32>(x_89, x_89, x_89) * vec3<f32>(x_91.x, x_91.y, x_91.z));
  let x_101 : f32 = x_33.unity_ProbeVolumeParams.x;
  u_xlatb25 = (x_101 == 1.0f);
  let x_104 : bool = u_xlatb25;
  if (x_104) {
    let x_109 : f32 = x_33.unity_ProbeVolumeParams.y;
    u_xlatb25 = (x_109 == 1.0f);
    let x_114 : vec4<f32> = vs_TEXCOORD3;
    let x_119 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[1i];
    let x_121 : vec3<f32> = (vec3<f32>(x_114.w, x_114.w, x_114.w) * vec3<f32>(x_119.x, x_119.y, x_119.z));
    let x_122 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_121.x, x_121.y, x_121.z, x_122.w);
    let x_126 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[0i];
    let x_129 : vec4<f32> = vs_TEXCOORD2;
    let x_132 : vec4<f32> = u_xlat3;
    let x_134 : vec3<f32> = ((vec3<f32>(x_126.x, x_126.y, x_126.z) * vec3<f32>(x_129.w, x_129.w, x_129.w)) + vec3<f32>(x_132.x, x_132.y, x_132.z));
    let x_135 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_134.x, x_134.y, x_134.z, x_135.w);
    let x_139 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[2i];
    let x_141 : vec4<f32> = vs_TEXCOORD4;
    let x_144 : vec4<f32> = u_xlat3;
    let x_146 : vec3<f32> = ((vec3<f32>(x_139.x, x_139.y, x_139.z) * vec3<f32>(x_141.w, x_141.w, x_141.w)) + vec3<f32>(x_144.x, x_144.y, x_144.z));
    let x_147 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_146.x, x_146.y, x_146.z, x_147.w);
    let x_149 : vec4<f32> = u_xlat3;
    let x_153 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[3i];
    let x_155 : vec3<f32> = (vec3<f32>(x_149.x, x_149.y, x_149.z) + vec3<f32>(x_153.x, x_153.y, x_153.z));
    let x_156 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_155.x, x_155.y, x_155.z, x_156.w);
    let x_162 : f32 = vs_TEXCOORD2.w;
    u_xlat12.x = x_162;
    let x_165 : f32 = vs_TEXCOORD3.w;
    u_xlat12.y = x_165;
    let x_168 : f32 = vs_TEXCOORD4.w;
    u_xlat12.z = x_168;
    let x_171 : bool = u_xlatb25;
    if (x_171) {
      let x_175 : vec4<f32> = u_xlat3;
      x_172 = vec3<f32>(x_175.x, x_175.y, x_175.z);
    } else {
      let x_178 : vec3<f32> = u_xlat12;
      x_172 = x_178;
    }
    let x_179 : vec3<f32> = x_172;
    let x_180 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_179.x, x_179.y, x_179.z, x_180.w);
    let x_182 : vec4<f32> = u_xlat3;
    let x_187 : vec3<f32> = x_33.unity_ProbeVolumeMin;
    let x_189 : vec3<f32> = (vec3<f32>(x_182.x, x_182.y, x_182.z) + -(x_187));
    let x_190 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_189.x, x_189.y, x_189.z, x_190.w);
    let x_192 : vec4<f32> = u_xlat3;
    let x_196 : vec3<f32> = x_33.unity_ProbeVolumeSizeInv;
    let x_197 : vec3<f32> = (vec3<f32>(x_192.x, x_192.y, x_192.z) * x_196);
    let x_198 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_198.x, x_197.x, x_197.y, x_197.z);
    let x_201 : f32 = u_xlat3.y;
    u_xlat25 = ((x_201 * 0.25f) + 0.75f);
    let x_208 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat26 = ((x_208 * 0.5f) + 0.75f);
    let x_212 : f32 = u_xlat25;
    let x_213 : f32 = u_xlat26;
    u_xlat3.x = max(x_212, x_213);
    let x_224 : vec4<f32> = u_xlat3;
    let x_226 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_224.x, x_224.z, x_224.w));
    u_xlat3 = x_226;
  } else {
    u_xlat3.x = 1.0f;
    u_xlat3.y = 1.0f;
    u_xlat3.z = 1.0f;
    u_xlat3.w = 1.0f;
  }
  let x_232 : vec4<f32> = u_xlat3;
  let x_234 : vec4<f32> = x_33.unity_OcclusionMaskSelector;
  u_xlat25 = dot(x_232, x_234);
  let x_236 : f32 = u_xlat25;
  u_xlat25 = clamp(x_236, 0.0f, 1.0f);
  let x_244 : vec4<f32> = vs_TEXCOORD0;
  let x_246 : vec4<f32> = textureSample(x_OcclusionMap, sampler_OcclusionMap, vec2<f32>(x_244.x, x_244.y));
  u_xlat26 = x_246.y;
  let x_250 : f32 = x_33.x_Glossiness;
  let x_252 : f32 = x_33.x_Glossiness;
  let x_253 : vec2<f32> = vec2<f32>(x_250, x_252);
  let x_259 : vec2<f32> = (-(vec2<f32>(x_253.x, x_253.y)) + vec2<f32>(1.0f, 1.0f));
  let x_260 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_259.x, x_260.y, x_260.z, x_259.y);
  let x_264 : vec4<f32> = vs_TEXCOORD1;
  let x_266 : vec3<f32> = u_xlat2;
  u_xlat4.x = dot(vec3<f32>(x_264.x, x_264.y, x_264.z), x_266);
  let x_270 : f32 = u_xlat4.x;
  let x_272 : f32 = u_xlat4.x;
  u_xlat4.x = (x_270 + x_272);
  let x_275 : vec3<f32> = u_xlat2;
  let x_276 : vec4<f32> = u_xlat4;
  let x_280 : vec4<f32> = vs_TEXCOORD1;
  let x_282 : vec3<f32> = ((x_275 * -(vec3<f32>(x_276.x, x_276.x, x_276.x))) + vec3<f32>(x_280.x, x_280.y, x_280.z));
  let x_283 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_282.x, x_282.y, x_282.z, x_283.w);
  let x_286 : f32 = u_xlat25;
  let x_290 : vec4<f32> = x_33.x_LightColor0;
  u_xlat5 = (vec3<f32>(x_286, x_286, x_286) * vec3<f32>(x_290.x, x_290.y, x_290.z));
  let x_294 : f32 = u_xlat26;
  let x_297 : vec4<f32> = vs_TEXCOORD5;
  u_xlat6 = (vec3<f32>(x_294, x_294, x_294) * vec3<f32>(x_297.x, x_297.y, x_297.z));
  let x_301 : f32 = u_xlat3.x;
  u_xlat25 = ((-(x_301) * 0.699999988f) + 1.700000048f);
  let x_307 : f32 = u_xlat25;
  let x_309 : f32 = u_xlat3.x;
  u_xlat25 = (x_307 * x_309);
  let x_311 : f32 = u_xlat25;
  u_xlat25 = (x_311 * 6.0f);
  let x_322 : vec4<f32> = u_xlat4;
  let x_324 : f32 = u_xlat25;
  let x_325 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_322.x, x_322.y, x_322.z), x_324);
  u_xlat4 = x_325;
  let x_327 : f32 = u_xlat4.w;
  u_xlat25 = (x_327 + -1.0f);
  let x_331 : f32 = x_33.unity_SpecCube0_HDR.w;
  let x_332 : f32 = u_xlat25;
  u_xlat25 = ((x_331 * x_332) + 1.0f);
  let x_335 : f32 = u_xlat25;
  u_xlat25 = log2(x_335);
  let x_337 : f32 = u_xlat25;
  let x_339 : f32 = x_33.unity_SpecCube0_HDR.y;
  u_xlat25 = (x_337 * x_339);
  let x_341 : f32 = u_xlat25;
  u_xlat25 = exp2(x_341);
  let x_343 : f32 = u_xlat25;
  let x_345 : f32 = x_33.unity_SpecCube0_HDR.x;
  u_xlat25 = (x_343 * x_345);
  let x_347 : vec4<f32> = u_xlat4;
  let x_349 : f32 = u_xlat25;
  let x_351 : vec3<f32> = (vec3<f32>(x_347.x, x_347.y, x_347.z) * vec3<f32>(x_349, x_349, x_349));
  let x_352 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_351.x, x_351.y, x_351.z, x_352.w);
  let x_354 : f32 = u_xlat26;
  let x_356 : vec4<f32> = u_xlat4;
  let x_358 : vec3<f32> = (vec3<f32>(x_354, x_354, x_354) * vec3<f32>(x_356.x, x_356.y, x_356.z));
  let x_359 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_358.x, x_358.y, x_358.z, x_359.w);
  let x_361 : vec4<f32> = vs_TEXCOORD1;
  let x_364 : vec3<f32> = u_xlat2;
  u_xlat25 = dot(-(vec3<f32>(x_361.x, x_361.y, x_361.z)), x_364);
  let x_366 : f32 = u_xlat25;
  let x_367 : f32 = u_xlat25;
  u_xlat26 = (x_366 + x_367);
  let x_370 : vec3<f32> = u_xlat2;
  let x_371 : f32 = u_xlat26;
  let x_375 : vec4<f32> = vs_TEXCOORD1;
  u_xlat7 = ((x_370 * -(vec3<f32>(x_371, x_371, x_371))) + -(vec3<f32>(x_375.x, x_375.y, x_375.z)));
  let x_379 : vec3<f32> = u_xlat2;
  let x_381 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  u_xlat2.x = dot(x_379, vec3<f32>(x_381.x, x_381.y, x_381.z));
  let x_386 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_386, 0.0f, 1.0f);
  let x_389 : f32 = u_xlat25;
  u_xlat25 = x_389;
  let x_390 : f32 = u_xlat25;
  u_xlat25 = clamp(x_390, 0.0f, 1.0f);
  let x_392 : vec3<f32> = u_xlat7;
  let x_394 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  u_xlat7.x = dot(x_392, vec3<f32>(x_394.x, x_394.y, x_394.z));
  let x_398 : f32 = u_xlat25;
  u_xlat7.y = (-(x_398) + 1.0f);
  let x_403 : vec3<f32> = u_xlat7;
  let x_405 : vec3<f32> = u_xlat7;
  let x_407 : vec2<f32> = (vec2<f32>(x_403.x, x_403.y) * vec2<f32>(x_405.x, x_405.y));
  let x_408 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_407.x, x_407.y, x_408.z);
  let x_410 : vec3<f32> = u_xlat10;
  let x_412 : vec3<f32> = u_xlat10;
  let x_414 : vec2<f32> = (vec2<f32>(x_410.x, x_410.y) * vec2<f32>(x_412.x, x_412.y));
  let x_415 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_415.x, x_414.x, x_414.y, x_415.w);
  let x_417 : f32 = u_xlat24;
  let x_420 : f32 = x_33.x_Glossiness;
  u_xlat24 = (-(x_417) + x_420);
  let x_422 : f32 = u_xlat24;
  u_xlat24 = (x_422 + 1.0f);
  let x_424 : f32 = u_xlat24;
  u_xlat24 = clamp(x_424, 0.0f, 1.0f);
  let x_431 : vec4<f32> = u_xlat3;
  let x_433 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_431.y, x_431.w));
  u_xlat25 = x_433.x;
  let x_435 : f32 = u_xlat25;
  u_xlat25 = (x_435 * 16.0f);
  let x_438 : f32 = u_xlat25;
  let x_440 : vec3<f32> = u_xlat0;
  let x_442 : vec3<f32> = u_xlat1;
  u_xlat10 = ((vec3<f32>(x_438, x_438, x_438) * x_440) + x_442);
  let x_444 : vec3<f32> = u_xlat2;
  let x_446 : vec3<f32> = u_xlat5;
  let x_447 : vec3<f32> = (vec3<f32>(x_444.x, x_444.x, x_444.x) * x_446);
  let x_448 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_447.x, x_447.y, x_448.z, x_447.z);
  let x_450 : vec3<f32> = u_xlat0;
  let x_452 : f32 = u_xlat24;
  u_xlat5 = (-(x_450) + vec3<f32>(x_452, x_452, x_452));
  let x_455 : vec4<f32> = u_xlat3;
  let x_457 : vec3<f32> = u_xlat5;
  let x_459 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_455.z, x_455.z, x_455.z) * x_457) + x_459);
  let x_461 : vec3<f32> = u_xlat0;
  let x_462 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_461 * vec3<f32>(x_462.x, x_462.y, x_462.z));
  let x_465 : vec3<f32> = u_xlat6;
  let x_466 : vec3<f32> = u_xlat1;
  let x_468 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_465 * x_466) + x_468);
  let x_470 : vec3<f32> = u_xlat10;
  let x_471 : vec4<f32> = u_xlat3;
  let x_474 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_470 * vec3<f32>(x_471.x, x_471.y, x_471.w)) + x_474);
  let x_477 : f32 = vs_TEXCOORD1.w;
  u_xlat24 = x_477;
  let x_478 : f32 = u_xlat24;
  u_xlat24 = clamp(x_478, 0.0f, 1.0f);
  let x_480 : vec3<f32> = u_xlat0;
  let x_482 : vec4<f32> = x_33.unity_FogColor;
  u_xlat0 = (x_480 + -(vec3<f32>(x_482.x, x_482.y, x_482.z)));
  let x_488 : f32 = u_xlat24;
  let x_490 : vec3<f32> = u_xlat0;
  let x_493 : vec4<f32> = x_33.unity_FogColor;
  let x_495 : vec3<f32> = ((vec3<f32>(x_488, x_488, x_488) * x_490) + vec3<f32>(x_493.x, x_493.y, x_493.z));
  let x_496 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_495.x, x_495.y, x_495.z, x_496.w);
  SV_Target0.w = 1.0f;
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

