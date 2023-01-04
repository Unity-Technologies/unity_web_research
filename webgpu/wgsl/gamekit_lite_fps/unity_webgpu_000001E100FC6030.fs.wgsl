struct PGlobals {
  x_Time : vec4<f32>,
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
  @size(8)
  padding_3 : u32,
  x_Color : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_18 : PGlobals;

var<private> u_xlat39 : f32;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat40 : f32;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat41 : f32;

var<private> u_xlat42 : f32;

var<private> u_xlatb42 : bool;

var<private> u_xlatb4 : bool;

var<private> u_xlat17 : vec3<f32>;

var<private> u_xlat5 : vec3<f32>;

@group(0) @binding(4) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(6) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD4 : vec4<f32>;

@group(0) @binding(1) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_ShadowMapTexture : sampler;

var<private> u_xlatb41 : bool;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat44 : f32;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlatb10 : vec3<bool>;

@group(0) @binding(2) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatb44 : bool;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat11 : vec3<f32>;

var<private> u_xlatb12 : vec3<bool>;

@group(0) @binding(3) var unity_SpecCube1 : texture_cube<f32>;

var<private> u_xlat14 : f32;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlat26 : f32;

var<private> u_xlat27 : f32;

var<private> u_xlatb1 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_198 : vec3<f32>;
  var x_389 : vec3<f32>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_582 : f32;
  var x_594 : f32;
  var x_606 : f32;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_762 : f32;
  var x_774 : f32;
  var x_786 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec3<f32> = vs_TEXCOORD1;
  let x_23 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  let x_24 : vec3<f32> = (-(x_13) + x_23);
  let x_25 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_24.x, x_24.y, x_24.z, x_25.w);
  let x_29 : vec4<f32> = u_xlat0;
  let x_31 : vec4<f32> = u_xlat0;
  u_xlat39 = dot(vec3<f32>(x_29.x, x_29.y, x_29.z), vec3<f32>(x_31.x, x_31.y, x_31.z));
  let x_34 : f32 = u_xlat39;
  u_xlat39 = inverseSqrt(x_34);
  let x_37 : f32 = u_xlat39;
  let x_39 : vec4<f32> = u_xlat0;
  let x_41 : vec3<f32> = (vec3<f32>(x_37, x_37, x_37) * vec3<f32>(x_39.x, x_39.y, x_39.z));
  let x_42 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_41.x, x_41.y, x_41.z, x_42.w);
  let x_46 : vec3<f32> = vs_TEXCOORD0;
  let x_47 : vec4<f32> = u_xlat1;
  u_xlat40 = dot(x_46, vec3<f32>(x_47.x, x_47.y, x_47.z));
  let x_50 : f32 = u_xlat40;
  u_xlat40 = log2(x_50);
  let x_52 : f32 = u_xlat40;
  u_xlat40 = (x_52 * 0.100000001f);
  let x_55 : f32 = u_xlat40;
  u_xlat40 = exp2(x_55);
  let x_57 : f32 = u_xlat40;
  u_xlat40 = (-(x_57) + 1.0f);
  let x_61 : f32 = u_xlat40;
  u_xlat40 = max(x_61, 0.0f);
  let x_66 : f32 = u_xlat40;
  let x_71 : vec4<f32> = x_18.x_Color;
  u_xlat2 = (vec3<f32>(x_66, x_66, x_66) * vec3<f32>(x_71.x, x_71.y, x_71.z));
  let x_79 : f32 = x_18.x_Time.x;
  u_xlat40 = (x_79 * 200.0f);
  let x_82 : f32 = u_xlat40;
  u_xlat40 = sin(x_82);
  let x_84 : f32 = u_xlat40;
  u_xlat40 = (x_84 + 1.0f);
  let x_86 : f32 = u_xlat40;
  u_xlat40 = (x_86 * 0.5f);
  let x_90 : f32 = u_xlat40;
  let x_92 : vec3<f32> = u_xlat2;
  u_xlat3 = (vec3<f32>(x_90, x_90, x_90) * x_92);
  let x_98 : f32 = x_18.unity_MatrixV[0i].z;
  u_xlat4.x = x_98;
  let x_101 : f32 = x_18.unity_MatrixV[1i].z;
  u_xlat4.y = x_101;
  let x_106 : f32 = x_18.unity_MatrixV[2i].z;
  u_xlat4.z = x_106;
  let x_109 : vec4<f32> = u_xlat0;
  let x_111 : vec4<f32> = u_xlat4;
  u_xlat41 = dot(vec3<f32>(x_109.x, x_109.y, x_109.z), vec3<f32>(x_111.x, x_111.y, x_111.z));
  let x_114 : vec3<f32> = vs_TEXCOORD1;
  let x_117 : vec4<f32> = x_18.unity_ShadowFadeCenterAndType;
  let x_120 : vec3<f32> = (x_114 + -(vec3<f32>(x_117.x, x_117.y, x_117.z)));
  let x_121 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_120.x, x_120.y, x_120.z, x_121.w);
  let x_124 : vec4<f32> = u_xlat4;
  let x_126 : vec4<f32> = u_xlat4;
  u_xlat42 = dot(vec3<f32>(x_124.x, x_124.y, x_124.z), vec3<f32>(x_126.x, x_126.y, x_126.z));
  let x_129 : f32 = u_xlat42;
  u_xlat42 = sqrt(x_129);
  let x_131 : f32 = u_xlat41;
  let x_133 : f32 = u_xlat42;
  u_xlat42 = (-(x_131) + x_133);
  let x_137 : f32 = x_18.unity_ShadowFadeCenterAndType.w;
  let x_138 : f32 = u_xlat42;
  let x_140 : f32 = u_xlat41;
  u_xlat41 = ((x_137 * x_138) + x_140);
  let x_142 : f32 = u_xlat41;
  let x_145 : f32 = x_18.x_LightShadowData.z;
  let x_148 : f32 = x_18.x_LightShadowData.w;
  u_xlat41 = ((x_142 * x_145) + x_148);
  let x_150 : f32 = u_xlat41;
  u_xlat41 = clamp(x_150, 0.0f, 1.0f);
  let x_157 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb42 = (x_157 == 1.0f);
  let x_159 : bool = u_xlatb42;
  if (x_159) {
    let x_164 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb4 = (x_164 == 1.0f);
    let x_167 : vec3<f32> = vs_TEXCOORD1;
    let x_171 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    u_xlat17 = (vec3<f32>(x_167.y, x_167.y, x_167.y) * vec3<f32>(x_171.x, x_171.y, x_171.z));
    let x_175 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_177 : vec3<f32> = vs_TEXCOORD1;
    let x_180 : vec3<f32> = u_xlat17;
    u_xlat17 = ((vec3<f32>(x_175.x, x_175.y, x_175.z) * vec3<f32>(x_177.x, x_177.x, x_177.x)) + x_180);
    let x_183 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_185 : vec3<f32> = vs_TEXCOORD1;
    let x_188 : vec3<f32> = u_xlat17;
    u_xlat17 = ((vec3<f32>(x_183.x, x_183.y, x_183.z) * vec3<f32>(x_185.z, x_185.z, x_185.z)) + x_188);
    let x_190 : vec3<f32> = u_xlat17;
    let x_193 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    u_xlat17 = (x_190 + vec3<f32>(x_193.x, x_193.y, x_193.z));
    let x_196 : bool = u_xlatb4;
    if (x_196) {
      let x_201 : vec3<f32> = u_xlat17;
      x_198 = x_201;
    } else {
      let x_203 : vec3<f32> = vs_TEXCOORD1;
      x_198 = x_203;
    }
    let x_204 : vec3<f32> = x_198;
    let x_205 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_204.x, x_204.y, x_204.z, x_205.w);
    let x_207 : vec4<f32> = u_xlat4;
    let x_211 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_213 : vec3<f32> = (vec3<f32>(x_207.x, x_207.y, x_207.z) + -(x_211));
    let x_214 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_213.x, x_213.y, x_213.z, x_214.w);
    let x_216 : vec4<f32> = u_xlat4;
    let x_220 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_221 : vec3<f32> = (vec3<f32>(x_216.x, x_216.y, x_216.z) * x_220);
    let x_222 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_222.x, x_221.x, x_221.y, x_221.z);
    let x_225 : f32 = u_xlat4.y;
    u_xlat17.x = ((x_225 * 0.25f) + 0.75f);
    let x_233 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat5.x = ((x_233 * 0.5f) + 0.75f);
    let x_238 : f32 = u_xlat17.x;
    let x_240 : f32 = u_xlat5.x;
    u_xlat4.x = max(x_238, x_240);
    let x_253 : vec4<f32> = u_xlat4;
    let x_255 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_253.x, x_253.z, x_253.w));
    u_xlat4 = x_255;
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
    u_xlat4.w = 1.0f;
  }
  let x_261 : vec4<f32> = u_xlat4;
  let x_264 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat4.x = dot(x_261, x_264);
  let x_268 : f32 = u_xlat4.x;
  u_xlat4.x = clamp(x_268, 0.0f, 1.0f);
  let x_274 : vec4<f32> = vs_TEXCOORD4;
  let x_276 : vec4<f32> = vs_TEXCOORD4;
  let x_278 : vec2<f32> = (vec2<f32>(x_274.x, x_274.y) / vec2<f32>(x_276.w, x_276.w));
  let x_279 : vec3<f32> = u_xlat17;
  u_xlat17 = vec3<f32>(x_278.x, x_278.y, x_279.z);
  let x_289 : vec3<f32> = u_xlat17;
  let x_291 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, vec2<f32>(x_289.x, x_289.y));
  u_xlat17.x = x_291.x;
  let x_295 : f32 = u_xlat17.x;
  let x_298 : f32 = u_xlat4.x;
  u_xlat4.x = (-(x_295) + x_298);
  let x_301 : f32 = u_xlat41;
  let x_303 : f32 = u_xlat4.x;
  let x_306 : f32 = u_xlat17.x;
  u_xlat41 = ((x_301 * x_303) + x_306);
  let x_310 : f32 = x_18.x_Glossiness;
  u_xlat4.x = (-(x_310) + 1.0f);
  let x_314 : vec4<f32> = u_xlat1;
  let x_317 : vec3<f32> = vs_TEXCOORD0;
  u_xlat17.x = dot(-(vec3<f32>(x_314.x, x_314.y, x_314.z)), x_317);
  let x_321 : f32 = u_xlat17.x;
  let x_323 : f32 = u_xlat17.x;
  u_xlat17.x = (x_321 + x_323);
  let x_326 : vec3<f32> = vs_TEXCOORD0;
  let x_327 : vec3<f32> = u_xlat17;
  let x_331 : vec4<f32> = u_xlat1;
  u_xlat17 = ((x_326 * -(vec3<f32>(x_327.x, x_327.x, x_327.x))) + -(vec3<f32>(x_331.x, x_331.y, x_331.z)));
  let x_335 : f32 = u_xlat41;
  let x_339 : vec4<f32> = x_18.x_LightColor0;
  u_xlat5 = (vec3<f32>(x_335, x_335, x_335) * vec3<f32>(x_339.x, x_339.y, x_339.z));
  let x_342 : bool = u_xlatb42;
  if (x_342) {
    let x_347 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb41 = (x_347 == 1.0f);
    let x_350 : vec3<f32> = vs_TEXCOORD1;
    let x_353 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_355 : vec3<f32> = (vec3<f32>(x_350.y, x_350.y, x_350.y) * vec3<f32>(x_353.x, x_353.y, x_353.z));
    let x_356 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_355.x, x_355.y, x_355.z, x_356.w);
    let x_359 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_361 : vec3<f32> = vs_TEXCOORD1;
    let x_364 : vec4<f32> = u_xlat6;
    let x_366 : vec3<f32> = ((vec3<f32>(x_359.x, x_359.y, x_359.z) * vec3<f32>(x_361.x, x_361.x, x_361.x)) + vec3<f32>(x_364.x, x_364.y, x_364.z));
    let x_367 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_366.x, x_366.y, x_366.z, x_367.w);
    let x_370 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_372 : vec3<f32> = vs_TEXCOORD1;
    let x_375 : vec4<f32> = u_xlat6;
    let x_377 : vec3<f32> = ((vec3<f32>(x_370.x, x_370.y, x_370.z) * vec3<f32>(x_372.z, x_372.z, x_372.z)) + vec3<f32>(x_375.x, x_375.y, x_375.z));
    let x_378 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_377.x, x_377.y, x_377.z, x_378.w);
    let x_380 : vec4<f32> = u_xlat6;
    let x_383 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_385 : vec3<f32> = (vec3<f32>(x_380.x, x_380.y, x_380.z) + vec3<f32>(x_383.x, x_383.y, x_383.z));
    let x_386 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_385.x, x_385.y, x_385.z, x_386.w);
    let x_388 : bool = u_xlatb41;
    if (x_388) {
      let x_392 : vec4<f32> = u_xlat6;
      x_389 = vec3<f32>(x_392.x, x_392.y, x_392.z);
    } else {
      let x_395 : vec3<f32> = vs_TEXCOORD1;
      x_389 = x_395;
    }
    let x_396 : vec3<f32> = x_389;
    let x_397 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_396.x, x_396.y, x_396.z, x_397.w);
    let x_399 : vec4<f32> = u_xlat6;
    let x_402 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_404 : vec3<f32> = (vec3<f32>(x_399.x, x_399.y, x_399.z) + -(x_402));
    let x_405 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_404.x, x_404.y, x_404.z, x_405.w);
    let x_407 : vec4<f32> = u_xlat6;
    let x_410 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_411 : vec3<f32> = (vec3<f32>(x_407.x, x_407.y, x_407.z) * x_410);
    let x_412 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_412.x, x_411.x, x_411.y, x_411.z);
    let x_415 : f32 = u_xlat6.y;
    u_xlat41 = (x_415 * 0.25f);
    let x_418 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat42 = (x_418 * 0.5f);
    let x_422 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat44 = ((-(x_422) * 0.5f) + 0.25f);
    let x_426 : f32 = u_xlat41;
    let x_427 : f32 = u_xlat42;
    u_xlat41 = max(x_426, x_427);
    let x_429 : f32 = u_xlat44;
    let x_430 : f32 = u_xlat41;
    u_xlat6.x = min(x_429, x_430);
    let x_437 : vec4<f32> = u_xlat6;
    let x_439 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_437.x, x_437.z, x_437.w));
    u_xlat7 = x_439;
    let x_441 : vec4<f32> = u_xlat6;
    let x_444 : vec3<f32> = (vec3<f32>(x_441.x, x_441.z, x_441.w) + vec3<f32>(0.25f, 0.0f, 0.0f));
    let x_445 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_444.x, x_444.y, x_444.z, x_445.w);
    let x_450 : vec4<f32> = u_xlat8;
    let x_452 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_450.x, x_450.y, x_450.z));
    u_xlat8 = x_452;
    let x_453 : vec4<f32> = u_xlat6;
    let x_456 : vec3<f32> = (vec3<f32>(x_453.x, x_453.z, x_453.w) + vec3<f32>(0.5f, 0.0f, 0.0f));
    let x_457 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_456.x, x_456.y, x_456.z, x_457.w);
    let x_462 : vec4<f32> = u_xlat6;
    let x_464 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_462.x, x_462.y, x_462.z));
    u_xlat6 = x_464;
    let x_466 : vec3<f32> = vs_TEXCOORD0;
    let x_467 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_466.x, x_466.y, x_466.z, x_467.w);
    u_xlat9.w = 1.0f;
    let x_470 : vec4<f32> = u_xlat7;
    let x_471 : vec4<f32> = u_xlat9;
    u_xlat7.x = dot(x_470, x_471);
    let x_474 : vec4<f32> = u_xlat8;
    let x_475 : vec4<f32> = u_xlat9;
    u_xlat7.y = dot(x_474, x_475);
    let x_478 : vec4<f32> = u_xlat6;
    let x_479 : vec4<f32> = u_xlat9;
    u_xlat7.z = dot(x_478, x_479);
  } else {
    let x_483 : vec3<f32> = vs_TEXCOORD0;
    let x_484 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_483.x, x_483.y, x_483.z, x_484.w);
    u_xlat6.w = 1.0f;
    let x_488 : vec4<f32> = x_18.unity_SHAr;
    let x_489 : vec4<f32> = u_xlat6;
    u_xlat7.x = dot(x_488, x_489);
    let x_494 : vec4<f32> = x_18.unity_SHAg;
    let x_495 : vec4<f32> = u_xlat6;
    u_xlat7.y = dot(x_494, x_495);
    let x_500 : vec4<f32> = x_18.unity_SHAb;
    let x_501 : vec4<f32> = u_xlat6;
    u_xlat7.z = dot(x_500, x_501);
  }
  let x_504 : vec4<f32> = u_xlat7;
  let x_507 : vec3<f32> = vs_TEXCOORD2;
  let x_508 : vec3<f32> = (vec3<f32>(x_504.x, x_504.y, x_504.z) + x_507);
  let x_509 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_508.x, x_508.y, x_508.z, x_509.w);
  let x_511 : vec4<f32> = u_xlat6;
  let x_514 : vec3<f32> = max(vec3<f32>(x_511.x, x_511.y, x_511.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_515 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_514.x, x_514.y, x_514.z, x_515.w);
  let x_519 : f32 = x_18.unity_SpecCube0_ProbePosition.w;
  u_xlatb41 = (0.0f < x_519);
  let x_521 : bool = u_xlatb41;
  if (x_521) {
    let x_524 : vec3<f32> = u_xlat17;
    let x_525 : vec3<f32> = u_xlat17;
    u_xlat41 = dot(x_524, x_525);
    let x_527 : f32 = u_xlat41;
    u_xlat41 = inverseSqrt(x_527);
    let x_529 : f32 = u_xlat41;
    let x_531 : vec3<f32> = u_xlat17;
    let x_532 : vec3<f32> = (vec3<f32>(x_529, x_529, x_529) * x_531);
    let x_533 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_532.x, x_532.y, x_532.z, x_533.w);
    let x_535 : vec3<f32> = vs_TEXCOORD1;
    let x_539 : vec4<f32> = x_18.unity_SpecCube0_BoxMax;
    let x_541 : vec3<f32> = (-(x_535) + vec3<f32>(x_539.x, x_539.y, x_539.z));
    let x_542 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_541.x, x_541.y, x_541.z, x_542.w);
    let x_544 : vec4<f32> = u_xlat8;
    let x_546 : vec4<f32> = u_xlat7;
    let x_548 : vec3<f32> = (vec3<f32>(x_544.x, x_544.y, x_544.z) / vec3<f32>(x_546.x, x_546.y, x_546.z));
    let x_549 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_548.x, x_548.y, x_548.z, x_549.w);
    let x_551 : vec3<f32> = vs_TEXCOORD1;
    let x_555 : vec4<f32> = x_18.unity_SpecCube0_BoxMin;
    let x_557 : vec3<f32> = (-(x_551) + vec3<f32>(x_555.x, x_555.y, x_555.z));
    let x_558 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_557.x, x_557.y, x_557.z, x_558.w);
    let x_560 : vec4<f32> = u_xlat9;
    let x_562 : vec4<f32> = u_xlat7;
    let x_564 : vec3<f32> = (vec3<f32>(x_560.x, x_560.y, x_560.z) / vec3<f32>(x_562.x, x_562.y, x_562.z));
    let x_565 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_564.x, x_564.y, x_564.z, x_565.w);
    let x_571 : vec4<f32> = u_xlat7;
    let x_574 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_571.x, x_571.y, x_571.z, x_571.x));
    u_xlatb10 = vec3<bool>(x_574.x, x_574.y, x_574.z);
    let x_578 : vec4<f32> = u_xlat8;
    hlslcc_movcTemp = x_578;
    let x_580 : bool = u_xlatb10.x;
    if (x_580) {
      let x_586 : f32 = u_xlat8.x;
      x_582 = x_586;
    } else {
      let x_589 : f32 = u_xlat9.x;
      x_582 = x_589;
    }
    let x_590 : f32 = x_582;
    hlslcc_movcTemp.x = x_590;
    let x_593 : bool = u_xlatb10.y;
    if (x_593) {
      let x_598 : f32 = u_xlat8.y;
      x_594 = x_598;
    } else {
      let x_601 : f32 = u_xlat9.y;
      x_594 = x_601;
    }
    let x_602 : f32 = x_594;
    hlslcc_movcTemp.y = x_602;
    let x_605 : bool = u_xlatb10.z;
    if (x_605) {
      let x_610 : f32 = u_xlat8.z;
      x_606 = x_610;
    } else {
      let x_613 : f32 = u_xlat9.z;
      x_606 = x_613;
    }
    let x_614 : f32 = x_606;
    hlslcc_movcTemp.z = x_614;
    let x_616 : vec4<f32> = hlslcc_movcTemp;
    u_xlat8 = x_616;
    let x_618 : f32 = u_xlat8.y;
    let x_620 : f32 = u_xlat8.x;
    u_xlat41 = min(x_618, x_620);
    let x_623 : f32 = u_xlat8.z;
    let x_624 : f32 = u_xlat41;
    u_xlat41 = min(x_623, x_624);
    let x_626 : vec3<f32> = vs_TEXCOORD1;
    let x_628 : vec4<f32> = x_18.unity_SpecCube0_ProbePosition;
    let x_631 : vec3<f32> = (x_626 + -(vec3<f32>(x_628.x, x_628.y, x_628.z)));
    let x_632 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_631.x, x_631.y, x_631.z, x_632.w);
    let x_634 : vec4<f32> = u_xlat7;
    let x_636 : f32 = u_xlat41;
    let x_639 : vec4<f32> = u_xlat8;
    let x_641 : vec3<f32> = ((vec3<f32>(x_634.x, x_634.y, x_634.z) * vec3<f32>(x_636, x_636, x_636)) + vec3<f32>(x_639.x, x_639.y, x_639.z));
    let x_642 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_641.x, x_641.y, x_641.z, x_642.w);
  } else {
    let x_645 : vec3<f32> = u_xlat17;
    let x_646 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_645.x, x_645.y, x_645.z, x_646.w);
  }
  let x_649 : f32 = u_xlat4.x;
  u_xlat41 = ((-(x_649) * 0.699999988f) + 1.700000048f);
  let x_655 : f32 = u_xlat41;
  let x_657 : f32 = u_xlat4.x;
  u_xlat41 = (x_655 * x_657);
  let x_659 : f32 = u_xlat41;
  u_xlat41 = (x_659 * 6.0f);
  let x_670 : vec4<f32> = u_xlat7;
  let x_672 : f32 = u_xlat41;
  let x_673 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_670.x, x_670.y, x_670.z), x_672);
  u_xlat7 = x_673;
  let x_675 : f32 = u_xlat7.w;
  u_xlat42 = (x_675 + -1.0f);
  let x_680 : f32 = x_18.unity_SpecCube0_HDR.w;
  let x_681 : f32 = u_xlat42;
  u_xlat42 = ((x_680 * x_681) + 1.0f);
  let x_684 : f32 = u_xlat42;
  u_xlat42 = log2(x_684);
  let x_686 : f32 = u_xlat42;
  let x_688 : f32 = x_18.unity_SpecCube0_HDR.y;
  u_xlat42 = (x_686 * x_688);
  let x_690 : f32 = u_xlat42;
  u_xlat42 = exp2(x_690);
  let x_692 : f32 = u_xlat42;
  let x_694 : f32 = x_18.unity_SpecCube0_HDR.x;
  u_xlat42 = (x_692 * x_694);
  let x_696 : vec4<f32> = u_xlat7;
  let x_698 : f32 = u_xlat42;
  let x_700 : vec3<f32> = (vec3<f32>(x_696.x, x_696.y, x_696.z) * vec3<f32>(x_698, x_698, x_698));
  let x_701 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_700.x, x_700.y, x_700.z, x_701.w);
  let x_705 : f32 = x_18.unity_SpecCube0_BoxMin.w;
  u_xlatb44 = (x_705 < 0.999989986f);
  let x_708 : bool = u_xlatb44;
  if (x_708) {
    let x_713 : f32 = x_18.unity_SpecCube1_ProbePosition.w;
    u_xlatb44 = (0.0f < x_713);
    let x_715 : bool = u_xlatb44;
    if (x_715) {
      let x_718 : vec3<f32> = u_xlat17;
      let x_719 : vec3<f32> = u_xlat17;
      u_xlat44 = dot(x_718, x_719);
      let x_721 : f32 = u_xlat44;
      u_xlat44 = inverseSqrt(x_721);
      let x_723 : vec3<f32> = u_xlat17;
      let x_724 : f32 = u_xlat44;
      let x_726 : vec3<f32> = (x_723 * vec3<f32>(x_724, x_724, x_724));
      let x_727 : vec4<f32> = u_xlat9;
      u_xlat9 = vec4<f32>(x_726.x, x_726.y, x_726.z, x_727.w);
      let x_730 : vec3<f32> = vs_TEXCOORD1;
      let x_734 : vec4<f32> = x_18.unity_SpecCube1_BoxMax;
      u_xlat10 = (-(x_730) + vec3<f32>(x_734.x, x_734.y, x_734.z));
      let x_737 : vec3<f32> = u_xlat10;
      let x_738 : vec4<f32> = u_xlat9;
      u_xlat10 = (x_737 / vec3<f32>(x_738.x, x_738.y, x_738.z));
      let x_742 : vec3<f32> = vs_TEXCOORD1;
      let x_746 : vec4<f32> = x_18.unity_SpecCube1_BoxMin;
      u_xlat11 = (-(x_742) + vec3<f32>(x_746.x, x_746.y, x_746.z));
      let x_749 : vec3<f32> = u_xlat11;
      let x_750 : vec4<f32> = u_xlat9;
      u_xlat11 = (x_749 / vec3<f32>(x_750.x, x_750.y, x_750.z));
      let x_754 : vec4<f32> = u_xlat9;
      let x_756 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_754.x, x_754.y, x_754.z, x_754.x));
      u_xlatb12 = vec3<bool>(x_756.x, x_756.y, x_756.z);
      let x_759 : vec3<f32> = u_xlat10;
      hlslcc_movcTemp_1 = x_759;
      let x_761 : bool = u_xlatb12.x;
      if (x_761) {
        let x_766 : f32 = u_xlat10.x;
        x_762 = x_766;
      } else {
        let x_769 : f32 = u_xlat11.x;
        x_762 = x_769;
      }
      let x_770 : f32 = x_762;
      hlslcc_movcTemp_1.x = x_770;
      let x_773 : bool = u_xlatb12.y;
      if (x_773) {
        let x_778 : f32 = u_xlat10.y;
        x_774 = x_778;
      } else {
        let x_781 : f32 = u_xlat11.y;
        x_774 = x_781;
      }
      let x_782 : f32 = x_774;
      hlslcc_movcTemp_1.y = x_782;
      let x_785 : bool = u_xlatb12.z;
      if (x_785) {
        let x_790 : f32 = u_xlat10.z;
        x_786 = x_790;
      } else {
        let x_793 : f32 = u_xlat11.z;
        x_786 = x_793;
      }
      let x_794 : f32 = x_786;
      hlslcc_movcTemp_1.z = x_794;
      let x_796 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat10 = x_796;
      let x_798 : f32 = u_xlat10.y;
      let x_800 : f32 = u_xlat10.x;
      u_xlat44 = min(x_798, x_800);
      let x_803 : f32 = u_xlat10.z;
      let x_804 : f32 = u_xlat44;
      u_xlat44 = min(x_803, x_804);
      let x_806 : vec3<f32> = vs_TEXCOORD1;
      let x_808 : vec4<f32> = x_18.unity_SpecCube1_ProbePosition;
      u_xlat10 = (x_806 + -(vec3<f32>(x_808.x, x_808.y, x_808.z)));
      let x_812 : vec4<f32> = u_xlat9;
      let x_814 : f32 = u_xlat44;
      let x_817 : vec3<f32> = u_xlat10;
      u_xlat17 = ((vec3<f32>(x_812.x, x_812.y, x_812.z) * vec3<f32>(x_814, x_814, x_814)) + x_817);
    }
    let x_823 : vec3<f32> = u_xlat17;
    let x_824 : f32 = u_xlat41;
    let x_825 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, x_823, x_824);
    u_xlat9 = x_825;
    let x_827 : f32 = u_xlat9.w;
    u_xlat41 = (x_827 + -1.0f);
    let x_831 : f32 = x_18.unity_SpecCube1_HDR.w;
    let x_832 : f32 = u_xlat41;
    u_xlat41 = ((x_831 * x_832) + 1.0f);
    let x_835 : f32 = u_xlat41;
    u_xlat41 = log2(x_835);
    let x_837 : f32 = u_xlat41;
    let x_839 : f32 = x_18.unity_SpecCube1_HDR.y;
    u_xlat41 = (x_837 * x_839);
    let x_841 : f32 = u_xlat41;
    u_xlat41 = exp2(x_841);
    let x_843 : f32 = u_xlat41;
    let x_845 : f32 = x_18.unity_SpecCube1_HDR.x;
    u_xlat41 = (x_843 * x_845);
    let x_847 : vec4<f32> = u_xlat9;
    let x_849 : f32 = u_xlat41;
    u_xlat17 = (vec3<f32>(x_847.x, x_847.y, x_847.z) * vec3<f32>(x_849, x_849, x_849));
    let x_852 : f32 = u_xlat42;
    let x_854 : vec4<f32> = u_xlat7;
    let x_857 : vec3<f32> = u_xlat17;
    let x_859 : vec3<f32> = ((vec3<f32>(x_852, x_852, x_852) * vec3<f32>(x_854.x, x_854.y, x_854.z)) + -(x_857));
    let x_860 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_859.x, x_859.y, x_859.z, x_860.w);
    let x_863 : vec4<f32> = x_18.unity_SpecCube0_BoxMin;
    let x_865 : vec4<f32> = u_xlat7;
    let x_868 : vec3<f32> = u_xlat17;
    let x_869 : vec3<f32> = ((vec3<f32>(x_863.w, x_863.w, x_863.w) * vec3<f32>(x_865.x, x_865.y, x_865.z)) + x_868);
    let x_870 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_869.x, x_869.y, x_869.z, x_870.w);
  }
  let x_872 : vec3<f32> = vs_TEXCOORD0;
  let x_873 : vec3<f32> = vs_TEXCOORD0;
  u_xlat41 = dot(x_872, x_873);
  let x_875 : f32 = u_xlat41;
  u_xlat41 = inverseSqrt(x_875);
  let x_877 : f32 = u_xlat41;
  let x_879 : vec3<f32> = vs_TEXCOORD0;
  u_xlat17 = (vec3<f32>(x_877, x_877, x_877) * x_879);
  let x_881 : vec3<f32> = u_xlat2;
  let x_882 : f32 = u_xlat40;
  u_xlat2 = ((x_881 * vec3<f32>(x_882, x_882, x_882)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_890 : f32 = x_18.x_Metallic;
  let x_892 : f32 = x_18.x_Metallic;
  let x_894 : f32 = x_18.x_Metallic;
  let x_895 : vec3<f32> = vec3<f32>(x_890, x_892, x_894);
  let x_900 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_895.x, x_895.y, x_895.z) * x_900) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_906 : f32 = x_18.x_Metallic;
  u_xlat40 = ((-(x_906) * 0.959999979f) + 0.959999979f);
  let x_911 : f32 = u_xlat40;
  let x_913 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_911, x_911, x_911) * x_913);
  let x_915 : vec4<f32> = u_xlat0;
  let x_917 : f32 = u_xlat39;
  let x_921 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_923 : vec3<f32> = ((vec3<f32>(x_915.x, x_915.y, x_915.z) * vec3<f32>(x_917, x_917, x_917)) + vec3<f32>(x_921.x, x_921.y, x_921.z));
  let x_924 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_923.x, x_923.y, x_923.z, x_924.w);
  let x_926 : vec4<f32> = u_xlat0;
  let x_928 : vec4<f32> = u_xlat0;
  u_xlat39 = dot(vec3<f32>(x_926.x, x_926.y, x_926.z), vec3<f32>(x_928.x, x_928.y, x_928.z));
  let x_931 : f32 = u_xlat39;
  u_xlat39 = max(x_931, 0.001f);
  let x_934 : f32 = u_xlat39;
  u_xlat39 = inverseSqrt(x_934);
  let x_936 : f32 = u_xlat39;
  let x_938 : vec4<f32> = u_xlat0;
  let x_940 : vec3<f32> = (vec3<f32>(x_936, x_936, x_936) * vec3<f32>(x_938.x, x_938.y, x_938.z));
  let x_941 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_940.x, x_940.y, x_940.z, x_941.w);
  let x_943 : vec3<f32> = u_xlat17;
  let x_944 : vec4<f32> = u_xlat1;
  u_xlat39 = dot(x_943, vec3<f32>(x_944.x, x_944.y, x_944.z));
  let x_947 : vec3<f32> = u_xlat17;
  let x_949 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat1.x = dot(x_947, vec3<f32>(x_949.x, x_949.y, x_949.z));
  let x_954 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_954, 0.0f, 1.0f);
  let x_958 : vec3<f32> = u_xlat17;
  let x_959 : vec4<f32> = u_xlat0;
  u_xlat14 = dot(x_958, vec3<f32>(x_959.x, x_959.y, x_959.z));
  let x_962 : f32 = u_xlat14;
  u_xlat14 = clamp(x_962, 0.0f, 1.0f);
  let x_965 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_967 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_965.x, x_965.y, x_965.z), vec3<f32>(x_967.x, x_967.y, x_967.z));
  let x_972 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_972, 0.0f, 1.0f);
  let x_977 : f32 = u_xlat0.x;
  let x_979 : f32 = u_xlat0.x;
  u_xlat13.x = (x_977 * x_979);
  let x_982 : vec3<f32> = u_xlat13;
  let x_984 : vec4<f32> = u_xlat4;
  u_xlat13.x = dot(vec2<f32>(x_982.x, x_982.x), vec2<f32>(x_984.x, x_984.x));
  let x_989 : f32 = u_xlat13.x;
  u_xlat13.x = (x_989 + -0.5f);
  let x_995 : f32 = u_xlat1.x;
  u_xlat26 = (-(x_995) + 1.0f);
  let x_999 : f32 = u_xlat26;
  let x_1000 : f32 = u_xlat26;
  u_xlat27 = (x_999 * x_1000);
  let x_1002 : f32 = u_xlat27;
  let x_1003 : f32 = u_xlat27;
  u_xlat27 = (x_1002 * x_1003);
  let x_1005 : f32 = u_xlat26;
  let x_1006 : f32 = u_xlat27;
  u_xlat26 = (x_1005 * x_1006);
  let x_1009 : f32 = u_xlat13.x;
  let x_1010 : f32 = u_xlat26;
  u_xlat26 = ((x_1009 * x_1010) + 1.0f);
  let x_1013 : f32 = u_xlat39;
  u_xlat27 = (-(abs(x_1013)) + 1.0f);
  let x_1017 : f32 = u_xlat27;
  let x_1018 : f32 = u_xlat27;
  u_xlat41 = (x_1017 * x_1018);
  let x_1020 : f32 = u_xlat41;
  let x_1021 : f32 = u_xlat41;
  u_xlat41 = (x_1020 * x_1021);
  let x_1023 : f32 = u_xlat27;
  let x_1024 : f32 = u_xlat41;
  u_xlat27 = (x_1023 * x_1024);
  let x_1027 : f32 = u_xlat13.x;
  let x_1028 : f32 = u_xlat27;
  u_xlat13.x = ((x_1027 * x_1028) + 1.0f);
  let x_1033 : f32 = u_xlat13.x;
  let x_1034 : f32 = u_xlat26;
  u_xlat13.x = (x_1033 * x_1034);
  let x_1038 : f32 = u_xlat4.x;
  let x_1040 : f32 = u_xlat4.x;
  u_xlat26 = (x_1038 * x_1040);
  let x_1042 : f32 = u_xlat26;
  u_xlat26 = max(x_1042, 0.002f);
  let x_1045 : f32 = u_xlat26;
  u_xlat41 = (-(x_1045) + 1.0f);
  let x_1048 : f32 = u_xlat39;
  let x_1050 : f32 = u_xlat41;
  let x_1052 : f32 = u_xlat26;
  u_xlat42 = ((abs(x_1048) * x_1050) + x_1052);
  let x_1055 : f32 = u_xlat1.x;
  let x_1056 : f32 = u_xlat41;
  let x_1058 : f32 = u_xlat26;
  u_xlat41 = ((x_1055 * x_1056) + x_1058);
  let x_1060 : f32 = u_xlat39;
  let x_1062 : f32 = u_xlat41;
  u_xlat39 = (abs(x_1060) * x_1062);
  let x_1065 : f32 = u_xlat1.x;
  let x_1066 : f32 = u_xlat42;
  let x_1068 : f32 = u_xlat39;
  u_xlat39 = ((x_1065 * x_1066) + x_1068);
  let x_1070 : f32 = u_xlat39;
  u_xlat39 = (x_1070 + 0.00001f);
  let x_1073 : f32 = u_xlat39;
  u_xlat39 = (0.5f / x_1073);
  let x_1075 : f32 = u_xlat26;
  let x_1076 : f32 = u_xlat26;
  u_xlat41 = (x_1075 * x_1076);
  let x_1078 : f32 = u_xlat14;
  let x_1079 : f32 = u_xlat41;
  let x_1081 : f32 = u_xlat14;
  u_xlat42 = ((x_1078 * x_1079) + -(x_1081));
  let x_1084 : f32 = u_xlat42;
  let x_1085 : f32 = u_xlat14;
  u_xlat14 = ((x_1084 * x_1085) + 1.0f);
  let x_1088 : f32 = u_xlat41;
  u_xlat41 = (x_1088 * 0.318309873f);
  let x_1091 : f32 = u_xlat14;
  let x_1092 : f32 = u_xlat14;
  u_xlat14 = ((x_1091 * x_1092) + 0.0000001f);
  let x_1096 : f32 = u_xlat41;
  let x_1097 : f32 = u_xlat14;
  u_xlat14 = (x_1096 / x_1097);
  let x_1099 : f32 = u_xlat39;
  let x_1100 : f32 = u_xlat14;
  u_xlat13.z = (x_1099 * x_1100);
  let x_1103 : vec4<f32> = u_xlat1;
  let x_1105 : vec3<f32> = u_xlat13;
  let x_1107 : vec2<f32> = (vec2<f32>(x_1103.x, x_1103.x) * vec2<f32>(x_1105.x, x_1105.z));
  let x_1108 : vec3<f32> = u_xlat13;
  u_xlat13 = vec3<f32>(x_1107.x, x_1108.y, x_1107.y);
  let x_1111 : f32 = u_xlat13.z;
  u_xlat39 = (x_1111 * 3.141592741f);
  let x_1114 : f32 = u_xlat39;
  u_xlat39 = max(x_1114, 0.0f);
  let x_1116 : f32 = u_xlat26;
  let x_1117 : f32 = u_xlat26;
  u_xlat26 = ((x_1116 * x_1117) + 1.0f);
  let x_1120 : f32 = u_xlat26;
  u_xlat26 = (1.0f / x_1120);
  let x_1122 : vec3<f32> = u_xlat2;
  let x_1123 : vec3<f32> = u_xlat2;
  u_xlat1.x = dot(x_1122, x_1123);
  let x_1128 : f32 = u_xlat1.x;
  u_xlatb1 = !((x_1128 == 0.0f));
  let x_1130 : bool = u_xlatb1;
  u_xlat1.x = select(0.0f, 1.0f, x_1130);
  let x_1133 : f32 = u_xlat39;
  let x_1135 : f32 = u_xlat1.x;
  u_xlat39 = (x_1133 * x_1135);
  let x_1137 : f32 = u_xlat40;
  let x_1140 : f32 = x_18.x_Glossiness;
  u_xlat1.x = (-(x_1137) + x_1140);
  let x_1144 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1144 + 1.0f);
  let x_1148 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1148, 0.0f, 1.0f);
  let x_1151 : vec3<f32> = u_xlat5;
  let x_1152 : vec3<f32> = u_xlat13;
  let x_1155 : vec4<f32> = u_xlat6;
  let x_1157 : vec3<f32> = ((x_1151 * vec3<f32>(x_1152.x, x_1152.x, x_1152.x)) + vec3<f32>(x_1155.x, x_1155.y, x_1155.z));
  let x_1158 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1157.x, x_1157.y, x_1157.z, x_1158.w);
  let x_1160 : vec3<f32> = u_xlat5;
  let x_1161 : f32 = u_xlat39;
  u_xlat5 = (x_1160 * vec3<f32>(x_1161, x_1161, x_1161));
  let x_1165 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_1165) + 1.0f);
  let x_1170 : f32 = u_xlat0.x;
  let x_1172 : f32 = u_xlat0.x;
  u_xlat13.x = (x_1170 * x_1172);
  let x_1176 : f32 = u_xlat13.x;
  let x_1178 : f32 = u_xlat13.x;
  u_xlat13.x = (x_1176 * x_1178);
  let x_1182 : f32 = u_xlat0.x;
  let x_1184 : f32 = u_xlat13.x;
  u_xlat0.x = (x_1182 * x_1184);
  let x_1187 : vec3<f32> = u_xlat2;
  let x_1190 : vec3<f32> = (-(x_1187) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1191 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1190.x, x_1190.y, x_1190.z, x_1191.w);
  let x_1193 : vec4<f32> = u_xlat6;
  let x_1195 : vec4<f32> = u_xlat0;
  let x_1198 : vec3<f32> = u_xlat2;
  let x_1199 : vec3<f32> = ((vec3<f32>(x_1193.x, x_1193.y, x_1193.z) * vec3<f32>(x_1195.x, x_1195.x, x_1195.x)) + x_1198);
  let x_1200 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1199.x, x_1199.y, x_1200.z, x_1199.z);
  let x_1202 : vec4<f32> = u_xlat0;
  let x_1204 : vec3<f32> = u_xlat5;
  let x_1205 : vec3<f32> = (vec3<f32>(x_1202.x, x_1202.y, x_1202.w) * x_1204);
  let x_1206 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1205.x, x_1205.y, x_1206.z, x_1205.z);
  let x_1208 : vec3<f32> = u_xlat3;
  let x_1209 : vec4<f32> = u_xlat4;
  let x_1212 : vec4<f32> = u_xlat0;
  let x_1214 : vec3<f32> = ((x_1208 * vec3<f32>(x_1209.x, x_1209.y, x_1209.z)) + vec3<f32>(x_1212.x, x_1212.y, x_1212.w));
  let x_1215 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1214.x, x_1214.y, x_1215.z, x_1214.z);
  let x_1217 : vec4<f32> = u_xlat8;
  let x_1219 : f32 = u_xlat26;
  u_xlat3 = (vec3<f32>(x_1217.x, x_1217.y, x_1217.z) * vec3<f32>(x_1219, x_1219, x_1219));
  let x_1222 : vec3<f32> = u_xlat2;
  let x_1224 : vec4<f32> = u_xlat1;
  let x_1226 : vec3<f32> = (-(x_1222) + vec3<f32>(x_1224.x, x_1224.x, x_1224.x));
  let x_1227 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1226.x, x_1226.y, x_1227.z, x_1226.z);
  let x_1229 : f32 = u_xlat27;
  let x_1231 : vec4<f32> = u_xlat1;
  let x_1234 : vec3<f32> = u_xlat2;
  let x_1235 : vec3<f32> = ((vec3<f32>(x_1229, x_1229, x_1229) * vec3<f32>(x_1231.x, x_1231.y, x_1231.w)) + x_1234);
  let x_1236 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1235.x, x_1235.y, x_1235.z, x_1236.w);
  let x_1240 : vec3<f32> = u_xlat3;
  let x_1241 : vec4<f32> = u_xlat1;
  let x_1244 : vec4<f32> = u_xlat0;
  let x_1246 : vec3<f32> = ((x_1240 * vec3<f32>(x_1241.x, x_1241.y, x_1241.z)) + vec3<f32>(x_1244.x, x_1244.y, x_1244.w));
  let x_1247 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1246.x, x_1246.y, x_1246.z, x_1247.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec3<f32>, @location(3) vs_TEXCOORD4_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

