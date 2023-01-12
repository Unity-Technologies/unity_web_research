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

@group(0) @binding(3) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

@group(0) @binding(2) var unity_NHxRoughness : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_NHxRoughness : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat21 : f32;
  var u_xlat8 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlatb23 : bool;
  var u_xlat3 : vec4<f32>;
  var u_xlat11 : vec3<f32>;
  var x_182 : vec3<f32>;
  var u_xlat23 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat24 : f32;
  var u_xlat9 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_23.x, x_23.y));
  u_xlat0 = x_25;
  let x_27 : vec4<f32> = u_xlat0;
  let x_38 : vec4<f32> = x_33.x_Color;
  u_xlat1 = (vec4<f32>(x_27.w, x_27.x, x_27.y, x_27.z) * vec4<f32>(x_38.w, x_38.x, x_38.y, x_38.z));
  let x_41 : vec4<f32> = u_xlat0;
  let x_44 : vec4<f32> = x_33.x_Color;
  let x_49 : vec3<f32> = ((vec3<f32>(x_41.x, x_41.y, x_41.z) * vec3<f32>(x_44.x, x_44.y, x_44.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_50 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_49.x, x_49.y, x_49.z, x_50.w);
  let x_55 : f32 = x_33.x_Metallic;
  let x_57 : f32 = x_33.x_Metallic;
  let x_59 : f32 = x_33.x_Metallic;
  let x_60 : vec3<f32> = vec3<f32>(x_55, x_57, x_59);
  let x_65 : vec4<f32> = u_xlat0;
  let x_70 : vec3<f32> = ((vec3<f32>(x_60.x, x_60.y, x_60.z) * vec3<f32>(x_65.x, x_65.y, x_65.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_71 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_70.x, x_70.y, x_70.z, x_71.w);
  let x_76 : f32 = x_33.x_Metallic;
  u_xlat21 = ((-(x_76) * 0.959999979f) + 0.959999979f);
  let x_83 : f32 = u_xlat21;
  let x_85 : vec4<f32> = u_xlat1;
  u_xlat8 = (vec3<f32>(x_83, x_83, x_83) * vec3<f32>(x_85.y, x_85.z, x_85.w));
  let x_90 : vec4<f32> = vs_TEXCOORD4;
  let x_92 : vec4<f32> = vs_TEXCOORD4;
  u_xlat2.x = dot(vec3<f32>(x_90.x, x_90.y, x_90.z), vec3<f32>(x_92.x, x_92.y, x_92.z));
  let x_99 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_99);
  let x_102 : vec3<f32> = u_xlat2;
  let x_104 : vec4<f32> = vs_TEXCOORD4;
  u_xlat2 = (vec3<f32>(x_102.x, x_102.x, x_102.x) * vec3<f32>(x_104.x, x_104.y, x_104.z));
  let x_112 : f32 = x_33.unity_ProbeVolumeParams.x;
  u_xlatb23 = (x_112 == 1.0f);
  let x_115 : bool = u_xlatb23;
  if (x_115) {
    let x_120 : f32 = x_33.unity_ProbeVolumeParams.y;
    u_xlatb23 = (x_120 == 1.0f);
    let x_124 : vec4<f32> = vs_TEXCOORD3;
    let x_129 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[1i];
    let x_131 : vec3<f32> = (vec3<f32>(x_124.w, x_124.w, x_124.w) * vec3<f32>(x_129.x, x_129.y, x_129.z));
    let x_132 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_131.x, x_131.y, x_131.z, x_132.w);
    let x_136 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[0i];
    let x_139 : vec4<f32> = vs_TEXCOORD2;
    let x_142 : vec4<f32> = u_xlat3;
    let x_144 : vec3<f32> = ((vec3<f32>(x_136.x, x_136.y, x_136.z) * vec3<f32>(x_139.w, x_139.w, x_139.w)) + vec3<f32>(x_142.x, x_142.y, x_142.z));
    let x_145 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_144.x, x_144.y, x_144.z, x_145.w);
    let x_149 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[2i];
    let x_151 : vec4<f32> = vs_TEXCOORD4;
    let x_154 : vec4<f32> = u_xlat3;
    let x_156 : vec3<f32> = ((vec3<f32>(x_149.x, x_149.y, x_149.z) * vec3<f32>(x_151.w, x_151.w, x_151.w)) + vec3<f32>(x_154.x, x_154.y, x_154.z));
    let x_157 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_156.x, x_156.y, x_156.z, x_157.w);
    let x_159 : vec4<f32> = u_xlat3;
    let x_163 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[3i];
    let x_165 : vec3<f32> = (vec3<f32>(x_159.x, x_159.y, x_159.z) + vec3<f32>(x_163.x, x_163.y, x_163.z));
    let x_166 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_165.x, x_165.y, x_165.z, x_166.w);
    let x_172 : f32 = vs_TEXCOORD2.w;
    u_xlat11.x = x_172;
    let x_175 : f32 = vs_TEXCOORD3.w;
    u_xlat11.y = x_175;
    let x_178 : f32 = vs_TEXCOORD4.w;
    u_xlat11.z = x_178;
    let x_181 : bool = u_xlatb23;
    if (x_181) {
      let x_185 : vec4<f32> = u_xlat3;
      x_182 = vec3<f32>(x_185.x, x_185.y, x_185.z);
    } else {
      let x_188 : vec3<f32> = u_xlat11;
      x_182 = x_188;
    }
    let x_189 : vec3<f32> = x_182;
    let x_190 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_189.x, x_189.y, x_189.z, x_190.w);
    let x_192 : vec4<f32> = u_xlat3;
    let x_197 : vec3<f32> = x_33.unity_ProbeVolumeMin;
    let x_199 : vec3<f32> = (vec3<f32>(x_192.x, x_192.y, x_192.z) + -(x_197));
    let x_200 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_199.x, x_199.y, x_199.z, x_200.w);
    let x_202 : vec4<f32> = u_xlat3;
    let x_206 : vec3<f32> = x_33.unity_ProbeVolumeSizeInv;
    let x_207 : vec3<f32> = (vec3<f32>(x_202.x, x_202.y, x_202.z) * x_206);
    let x_208 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_208.x, x_207.x, x_207.y, x_207.z);
    let x_212 : f32 = u_xlat3.y;
    u_xlat23 = ((x_212 * 0.25f) + 0.75f);
    let x_219 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat10.x = ((x_219 * 0.5f) + 0.75f);
    let x_224 : f32 = u_xlat23;
    let x_226 : f32 = u_xlat10.x;
    u_xlat3.x = max(x_224, x_226);
    let x_237 : vec4<f32> = u_xlat3;
    let x_239 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_237.x, x_237.z, x_237.w));
    u_xlat3 = x_239;
  } else {
    u_xlat3.x = 1.0f;
    u_xlat3.y = 1.0f;
    u_xlat3.z = 1.0f;
    u_xlat3.w = 1.0f;
  }
  let x_245 : vec4<f32> = u_xlat3;
  let x_247 : vec4<f32> = x_33.unity_OcclusionMaskSelector;
  u_xlat23 = dot(x_245, x_247);
  let x_249 : f32 = u_xlat23;
  u_xlat23 = clamp(x_249, 0.0f, 1.0f);
  let x_257 : vec4<f32> = vs_TEXCOORD0;
  let x_259 : vec4<f32> = textureSample(x_OcclusionMap, sampler_OcclusionMap, vec2<f32>(x_257.x, x_257.y));
  u_xlat3.x = x_259.y;
  let x_265 : f32 = x_33.x_Glossiness;
  let x_267 : f32 = x_33.x_Glossiness;
  let x_268 : vec2<f32> = vec2<f32>(x_265, x_267);
  let x_274 : vec2<f32> = (-(vec2<f32>(x_268.x, x_268.y)) + vec2<f32>(1.0f, 1.0f));
  let x_275 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_274.x, x_275.y, x_275.z, x_274.y);
  let x_278 : vec4<f32> = vs_TEXCOORD1;
  let x_280 : vec3<f32> = u_xlat2;
  u_xlat10.x = dot(vec3<f32>(x_278.x, x_278.y, x_278.z), x_280);
  let x_284 : f32 = u_xlat10.x;
  let x_286 : f32 = u_xlat10.x;
  u_xlat10.x = (x_284 + x_286);
  let x_289 : vec3<f32> = u_xlat2;
  let x_290 : vec3<f32> = u_xlat10;
  let x_294 : vec4<f32> = vs_TEXCOORD1;
  u_xlat10 = ((x_289 * -(vec3<f32>(x_290.x, x_290.x, x_290.x))) + vec3<f32>(x_294.x, x_294.y, x_294.z));
  let x_298 : f32 = u_xlat23;
  let x_302 : vec4<f32> = x_33.x_LightColor0;
  u_xlat5 = (vec3<f32>(x_298, x_298, x_298) * vec3<f32>(x_302.x, x_302.y, x_302.z));
  let x_306 : f32 = u_xlat4.x;
  u_xlat23 = ((-(x_306) * 0.699999988f) + 1.700000048f);
  let x_312 : f32 = u_xlat23;
  let x_314 : f32 = u_xlat4.x;
  u_xlat23 = (x_312 * x_314);
  let x_316 : f32 = u_xlat23;
  u_xlat23 = (x_316 * 6.0f);
  let x_328 : vec3<f32> = u_xlat10;
  let x_329 : f32 = u_xlat23;
  let x_330 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_328, x_329);
  u_xlat6 = x_330;
  let x_332 : f32 = u_xlat6.w;
  u_xlat23 = (x_332 + -1.0f);
  let x_336 : f32 = x_33.unity_SpecCube0_HDR.w;
  let x_337 : f32 = u_xlat23;
  u_xlat23 = ((x_336 * x_337) + 1.0f);
  let x_340 : f32 = u_xlat23;
  u_xlat23 = log2(x_340);
  let x_342 : f32 = u_xlat23;
  let x_344 : f32 = x_33.unity_SpecCube0_HDR.y;
  u_xlat23 = (x_342 * x_344);
  let x_346 : f32 = u_xlat23;
  u_xlat23 = exp2(x_346);
  let x_348 : f32 = u_xlat23;
  let x_350 : f32 = x_33.unity_SpecCube0_HDR.x;
  u_xlat23 = (x_348 * x_350);
  let x_352 : vec4<f32> = u_xlat6;
  let x_354 : f32 = u_xlat23;
  u_xlat10 = (vec3<f32>(x_352.x, x_352.y, x_352.z) * vec3<f32>(x_354, x_354, x_354));
  let x_357 : vec4<f32> = u_xlat3;
  let x_359 : vec3<f32> = u_xlat10;
  let x_360 : vec3<f32> = (vec3<f32>(x_357.x, x_357.x, x_357.x) * x_359);
  let x_361 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_360.x, x_360.y, x_360.z, x_361.w);
  let x_363 : vec4<f32> = vs_TEXCOORD1;
  let x_366 : vec3<f32> = u_xlat2;
  u_xlat23 = dot(-(vec3<f32>(x_363.x, x_363.y, x_363.z)), x_366);
  let x_369 : f32 = u_xlat23;
  let x_370 : f32 = u_xlat23;
  u_xlat24 = (x_369 + x_370);
  let x_372 : vec3<f32> = u_xlat2;
  let x_373 : f32 = u_xlat24;
  let x_377 : vec4<f32> = vs_TEXCOORD1;
  let x_380 : vec3<f32> = ((x_372 * -(vec3<f32>(x_373, x_373, x_373))) + -(vec3<f32>(x_377.x, x_377.y, x_377.z)));
  let x_381 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_380.x, x_380.y, x_380.z, x_381.w);
  let x_383 : vec3<f32> = u_xlat2;
  let x_385 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  u_xlat2.x = dot(x_383, vec3<f32>(x_385.x, x_385.y, x_385.z));
  let x_390 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_390, 0.0f, 1.0f);
  let x_393 : f32 = u_xlat23;
  u_xlat23 = x_393;
  let x_394 : f32 = u_xlat23;
  u_xlat23 = clamp(x_394, 0.0f, 1.0f);
  let x_396 : vec4<f32> = u_xlat6;
  let x_399 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  u_xlat6.x = dot(vec3<f32>(x_396.x, x_396.y, x_396.z), vec3<f32>(x_399.x, x_399.y, x_399.z));
  let x_403 : f32 = u_xlat23;
  u_xlat6.y = (-(x_403) + 1.0f);
  let x_408 : vec4<f32> = u_xlat6;
  let x_410 : vec4<f32> = u_xlat6;
  let x_412 : vec2<f32> = (vec2<f32>(x_408.x, x_408.y) * vec2<f32>(x_410.x, x_410.y));
  let x_413 : vec3<f32> = u_xlat9;
  u_xlat9 = vec3<f32>(x_412.x, x_412.y, x_413.z);
  let x_415 : vec3<f32> = u_xlat9;
  let x_417 : vec3<f32> = u_xlat9;
  let x_419 : vec2<f32> = (vec2<f32>(x_415.x, x_415.y) * vec2<f32>(x_417.x, x_417.y));
  let x_420 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_420.x, x_419.x, x_419.y, x_420.w);
  let x_422 : f32 = u_xlat21;
  let x_425 : f32 = x_33.x_Glossiness;
  u_xlat21 = (-(x_422) + x_425);
  let x_427 : f32 = u_xlat21;
  u_xlat21 = (x_427 + 1.0f);
  let x_429 : f32 = u_xlat21;
  u_xlat21 = clamp(x_429, 0.0f, 1.0f);
  let x_436 : vec4<f32> = u_xlat4;
  let x_438 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_436.y, x_436.w));
  u_xlat9.x = x_438.x;
  let x_442 : f32 = u_xlat9.x;
  u_xlat9.x = (x_442 * 16.0f);
  let x_446 : vec4<f32> = u_xlat0;
  let x_448 : vec3<f32> = u_xlat9;
  u_xlat9 = (vec3<f32>(x_446.x, x_446.y, x_446.z) * vec3<f32>(x_448.x, x_448.x, x_448.x));
  let x_451 : vec3<f32> = u_xlat8;
  let x_452 : vec4<f32> = u_xlat1;
  let x_455 : vec3<f32> = u_xlat9;
  u_xlat8 = ((x_451 * vec3<f32>(x_452.x, x_452.x, x_452.x)) + x_455);
  let x_457 : vec3<f32> = u_xlat2;
  let x_459 : vec3<f32> = u_xlat5;
  u_xlat2 = (vec3<f32>(x_457.x, x_457.x, x_457.x) * x_459);
  let x_461 : vec4<f32> = u_xlat0;
  let x_464 : f32 = u_xlat21;
  let x_466 : vec3<f32> = (-(vec3<f32>(x_461.x, x_461.y, x_461.z)) + vec3<f32>(x_464, x_464, x_464));
  let x_467 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_466.x, x_466.y, x_467.z, x_466.z);
  let x_469 : vec4<f32> = u_xlat4;
  let x_471 : vec4<f32> = u_xlat4;
  let x_474 : vec4<f32> = u_xlat0;
  let x_476 : vec3<f32> = ((vec3<f32>(x_469.z, x_469.z, x_469.z) * vec3<f32>(x_471.x, x_471.y, x_471.w)) + vec3<f32>(x_474.x, x_474.y, x_474.z));
  let x_477 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_476.x, x_476.y, x_476.z, x_477.w);
  let x_479 : vec4<f32> = u_xlat0;
  let x_481 : vec4<f32> = u_xlat3;
  let x_483 : vec3<f32> = (vec3<f32>(x_479.x, x_479.y, x_479.z) * vec3<f32>(x_481.x, x_481.y, x_481.z));
  let x_484 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_483.x, x_483.y, x_483.z, x_484.w);
  let x_486 : vec3<f32> = u_xlat8;
  let x_487 : vec3<f32> = u_xlat2;
  let x_489 : vec4<f32> = u_xlat0;
  let x_491 : vec3<f32> = ((x_486 * x_487) + vec3<f32>(x_489.x, x_489.y, x_489.z));
  let x_492 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_491.x, x_491.y, x_491.z, x_492.w);
  let x_495 : f32 = vs_TEXCOORD1.w;
  u_xlat21 = x_495;
  let x_496 : f32 = u_xlat21;
  u_xlat21 = clamp(x_496, 0.0f, 1.0f);
  let x_498 : vec4<f32> = u_xlat0;
  let x_501 : vec4<f32> = x_33.unity_FogColor;
  let x_504 : vec3<f32> = (vec3<f32>(x_498.x, x_498.y, x_498.z) + -(vec3<f32>(x_501.x, x_501.y, x_501.z)));
  let x_505 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_504.x, x_504.y, x_504.z, x_505.w);
  let x_509 : f32 = u_xlat21;
  let x_511 : vec4<f32> = u_xlat0;
  let x_515 : vec4<f32> = x_33.unity_FogColor;
  let x_517 : vec3<f32> = ((vec3<f32>(x_509, x_509, x_509) * vec3<f32>(x_511.x, x_511.y, x_511.z)) + vec3<f32>(x_515.x, x_515.y, x_515.z));
  let x_518 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_517.x, x_517.y, x_517.z, x_518.w);
  let x_521 : f32 = u_xlat1.x;
  SV_Target0.w = x_521;
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

