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
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat24 : f32;
  var u_xlat9 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlatb26 : bool;
  var u_xlat3 : vec4<f32>;
  var u_xlat12 : vec3<f32>;
  var x_186 : vec3<f32>;
  var u_xlat26 : f32;
  var u_xlat11 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat27 : f32;
  var u_xlat10 : vec3<f32>;
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
  u_xlat24 = ((-(x_76) * 0.959999979f) + 0.959999979f);
  let x_83 : f32 = u_xlat24;
  let x_85 : vec4<f32> = u_xlat1;
  u_xlat9 = (vec3<f32>(x_83, x_83, x_83) * vec3<f32>(x_85.y, x_85.z, x_85.w));
  let x_90 : vec4<f32> = vs_TEXCOORD4;
  let x_92 : vec4<f32> = vs_TEXCOORD4;
  u_xlat2.x = dot(vec3<f32>(x_90.x, x_90.y, x_90.z), vec3<f32>(x_92.x, x_92.y, x_92.z));
  let x_99 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_99);
  let x_102 : vec3<f32> = u_xlat2;
  let x_104 : vec4<f32> = vs_TEXCOORD4;
  u_xlat2 = (vec3<f32>(x_102.x, x_102.x, x_102.x) * vec3<f32>(x_104.x, x_104.y, x_104.z));
  let x_107 : vec4<f32> = u_xlat1;
  let x_109 : vec3<f32> = u_xlat9;
  u_xlat9 = (vec3<f32>(x_107.x, x_107.x, x_107.x) * x_109);
  let x_116 : f32 = x_33.unity_ProbeVolumeParams.x;
  u_xlatb26 = (x_116 == 1.0f);
  let x_119 : bool = u_xlatb26;
  if (x_119) {
    let x_124 : f32 = x_33.unity_ProbeVolumeParams.y;
    u_xlatb26 = (x_124 == 1.0f);
    let x_128 : vec4<f32> = vs_TEXCOORD3;
    let x_133 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[1i];
    let x_135 : vec3<f32> = (vec3<f32>(x_128.w, x_128.w, x_128.w) * vec3<f32>(x_133.x, x_133.y, x_133.z));
    let x_136 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_135.x, x_135.y, x_135.z, x_136.w);
    let x_140 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[0i];
    let x_143 : vec4<f32> = vs_TEXCOORD2;
    let x_146 : vec4<f32> = u_xlat3;
    let x_148 : vec3<f32> = ((vec3<f32>(x_140.x, x_140.y, x_140.z) * vec3<f32>(x_143.w, x_143.w, x_143.w)) + vec3<f32>(x_146.x, x_146.y, x_146.z));
    let x_149 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_148.x, x_148.y, x_148.z, x_149.w);
    let x_153 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[2i];
    let x_155 : vec4<f32> = vs_TEXCOORD4;
    let x_158 : vec4<f32> = u_xlat3;
    let x_160 : vec3<f32> = ((vec3<f32>(x_153.x, x_153.y, x_153.z) * vec3<f32>(x_155.w, x_155.w, x_155.w)) + vec3<f32>(x_158.x, x_158.y, x_158.z));
    let x_161 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_160.x, x_160.y, x_160.z, x_161.w);
    let x_163 : vec4<f32> = u_xlat3;
    let x_167 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[3i];
    let x_169 : vec3<f32> = (vec3<f32>(x_163.x, x_163.y, x_163.z) + vec3<f32>(x_167.x, x_167.y, x_167.z));
    let x_170 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_169.x, x_169.y, x_169.z, x_170.w);
    let x_176 : f32 = vs_TEXCOORD2.w;
    u_xlat12.x = x_176;
    let x_179 : f32 = vs_TEXCOORD3.w;
    u_xlat12.y = x_179;
    let x_182 : f32 = vs_TEXCOORD4.w;
    u_xlat12.z = x_182;
    let x_185 : bool = u_xlatb26;
    if (x_185) {
      let x_189 : vec4<f32> = u_xlat3;
      x_186 = vec3<f32>(x_189.x, x_189.y, x_189.z);
    } else {
      let x_192 : vec3<f32> = u_xlat12;
      x_186 = x_192;
    }
    let x_193 : vec3<f32> = x_186;
    let x_194 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_193.x, x_193.y, x_193.z, x_194.w);
    let x_196 : vec4<f32> = u_xlat3;
    let x_201 : vec3<f32> = x_33.unity_ProbeVolumeMin;
    let x_203 : vec3<f32> = (vec3<f32>(x_196.x, x_196.y, x_196.z) + -(x_201));
    let x_204 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_203.x, x_203.y, x_203.z, x_204.w);
    let x_206 : vec4<f32> = u_xlat3;
    let x_210 : vec3<f32> = x_33.unity_ProbeVolumeSizeInv;
    let x_211 : vec3<f32> = (vec3<f32>(x_206.x, x_206.y, x_206.z) * x_210);
    let x_212 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_212.x, x_211.x, x_211.y, x_211.z);
    let x_216 : f32 = u_xlat3.y;
    u_xlat26 = ((x_216 * 0.25f) + 0.75f);
    let x_223 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat11.x = ((x_223 * 0.5f) + 0.75f);
    let x_228 : f32 = u_xlat26;
    let x_230 : f32 = u_xlat11.x;
    u_xlat3.x = max(x_228, x_230);
    let x_241 : vec4<f32> = u_xlat3;
    let x_243 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_241.x, x_241.z, x_241.w));
    u_xlat3 = x_243;
  } else {
    u_xlat3.x = 1.0f;
    u_xlat3.y = 1.0f;
    u_xlat3.z = 1.0f;
    u_xlat3.w = 1.0f;
  }
  let x_249 : vec4<f32> = u_xlat3;
  let x_251 : vec4<f32> = x_33.unity_OcclusionMaskSelector;
  u_xlat26 = dot(x_249, x_251);
  let x_253 : f32 = u_xlat26;
  u_xlat26 = clamp(x_253, 0.0f, 1.0f);
  let x_261 : vec4<f32> = vs_TEXCOORD0;
  let x_263 : vec4<f32> = textureSample(x_OcclusionMap, sampler_OcclusionMap, vec2<f32>(x_261.x, x_261.y));
  u_xlat3.x = x_263.y;
  let x_269 : f32 = x_33.x_Glossiness;
  let x_271 : f32 = x_33.x_Glossiness;
  let x_272 : vec2<f32> = vec2<f32>(x_269, x_271);
  let x_278 : vec2<f32> = (-(vec2<f32>(x_272.x, x_272.y)) + vec2<f32>(1.0f, 1.0f));
  let x_279 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_278.x, x_279.y, x_279.z, x_278.y);
  let x_282 : vec4<f32> = vs_TEXCOORD1;
  let x_284 : vec3<f32> = u_xlat2;
  u_xlat11.x = dot(vec3<f32>(x_282.x, x_282.y, x_282.z), x_284);
  let x_288 : f32 = u_xlat11.x;
  let x_290 : f32 = u_xlat11.x;
  u_xlat11.x = (x_288 + x_290);
  let x_293 : vec3<f32> = u_xlat2;
  let x_294 : vec3<f32> = u_xlat11;
  let x_298 : vec4<f32> = vs_TEXCOORD1;
  u_xlat11 = ((x_293 * -(vec3<f32>(x_294.x, x_294.x, x_294.x))) + vec3<f32>(x_298.x, x_298.y, x_298.z));
  let x_302 : f32 = u_xlat26;
  let x_306 : vec4<f32> = x_33.x_LightColor0;
  u_xlat5 = (vec3<f32>(x_302, x_302, x_302) * vec3<f32>(x_306.x, x_306.y, x_306.z));
  let x_310 : vec4<f32> = u_xlat3;
  let x_313 : vec4<f32> = vs_TEXCOORD5;
  u_xlat6 = (vec3<f32>(x_310.x, x_310.x, x_310.x) * vec3<f32>(x_313.x, x_313.y, x_313.z));
  let x_317 : f32 = u_xlat4.x;
  u_xlat26 = ((-(x_317) * 0.699999988f) + 1.700000048f);
  let x_323 : f32 = u_xlat26;
  let x_325 : f32 = u_xlat4.x;
  u_xlat26 = (x_323 * x_325);
  let x_327 : f32 = u_xlat26;
  u_xlat26 = (x_327 * 6.0f);
  let x_339 : vec3<f32> = u_xlat11;
  let x_340 : f32 = u_xlat26;
  let x_341 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_339, x_340);
  u_xlat7 = x_341;
  let x_343 : f32 = u_xlat7.w;
  u_xlat26 = (x_343 + -1.0f);
  let x_347 : f32 = x_33.unity_SpecCube0_HDR.w;
  let x_348 : f32 = u_xlat26;
  u_xlat26 = ((x_347 * x_348) + 1.0f);
  let x_351 : f32 = u_xlat26;
  u_xlat26 = log2(x_351);
  let x_353 : f32 = u_xlat26;
  let x_355 : f32 = x_33.unity_SpecCube0_HDR.y;
  u_xlat26 = (x_353 * x_355);
  let x_357 : f32 = u_xlat26;
  u_xlat26 = exp2(x_357);
  let x_359 : f32 = u_xlat26;
  let x_361 : f32 = x_33.unity_SpecCube0_HDR.x;
  u_xlat26 = (x_359 * x_361);
  let x_363 : vec4<f32> = u_xlat7;
  let x_365 : f32 = u_xlat26;
  u_xlat11 = (vec3<f32>(x_363.x, x_363.y, x_363.z) * vec3<f32>(x_365, x_365, x_365));
  let x_368 : vec4<f32> = u_xlat3;
  let x_370 : vec3<f32> = u_xlat11;
  let x_371 : vec3<f32> = (vec3<f32>(x_368.x, x_368.x, x_368.x) * x_370);
  let x_372 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_371.x, x_371.y, x_371.z, x_372.w);
  let x_374 : vec4<f32> = vs_TEXCOORD1;
  let x_377 : vec3<f32> = u_xlat2;
  u_xlat26 = dot(-(vec3<f32>(x_374.x, x_374.y, x_374.z)), x_377);
  let x_380 : f32 = u_xlat26;
  let x_381 : f32 = u_xlat26;
  u_xlat27 = (x_380 + x_381);
  let x_383 : vec3<f32> = u_xlat2;
  let x_384 : f32 = u_xlat27;
  let x_388 : vec4<f32> = vs_TEXCOORD1;
  let x_391 : vec3<f32> = ((x_383 * -(vec3<f32>(x_384, x_384, x_384))) + -(vec3<f32>(x_388.x, x_388.y, x_388.z)));
  let x_392 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_391.x, x_391.y, x_391.z, x_392.w);
  let x_394 : vec3<f32> = u_xlat2;
  let x_396 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  u_xlat2.x = dot(x_394, vec3<f32>(x_396.x, x_396.y, x_396.z));
  let x_401 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_401, 0.0f, 1.0f);
  let x_404 : f32 = u_xlat26;
  u_xlat26 = x_404;
  let x_405 : f32 = u_xlat26;
  u_xlat26 = clamp(x_405, 0.0f, 1.0f);
  let x_407 : vec4<f32> = u_xlat7;
  let x_410 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  u_xlat7.x = dot(vec3<f32>(x_407.x, x_407.y, x_407.z), vec3<f32>(x_410.x, x_410.y, x_410.z));
  let x_414 : f32 = u_xlat26;
  u_xlat7.y = (-(x_414) + 1.0f);
  let x_419 : vec4<f32> = u_xlat7;
  let x_421 : vec4<f32> = u_xlat7;
  let x_423 : vec2<f32> = (vec2<f32>(x_419.x, x_419.y) * vec2<f32>(x_421.x, x_421.y));
  let x_424 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_423.x, x_423.y, x_424.z);
  let x_426 : vec3<f32> = u_xlat10;
  let x_428 : vec3<f32> = u_xlat10;
  let x_430 : vec2<f32> = (vec2<f32>(x_426.x, x_426.y) * vec2<f32>(x_428.x, x_428.y));
  let x_431 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_431.x, x_430.x, x_430.y, x_431.w);
  let x_433 : f32 = u_xlat24;
  let x_436 : f32 = x_33.x_Glossiness;
  u_xlat24 = (-(x_433) + x_436);
  let x_438 : f32 = u_xlat24;
  u_xlat24 = (x_438 + 1.0f);
  let x_440 : f32 = u_xlat24;
  u_xlat24 = clamp(x_440, 0.0f, 1.0f);
  let x_447 : vec4<f32> = u_xlat4;
  let x_449 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_447.y, x_447.w));
  u_xlat10.x = x_449.x;
  let x_453 : f32 = u_xlat10.x;
  u_xlat10.x = (x_453 * 16.0f);
  let x_457 : vec3<f32> = u_xlat10;
  let x_459 : vec4<f32> = u_xlat0;
  let x_462 : vec3<f32> = u_xlat9;
  u_xlat10 = ((vec3<f32>(x_457.x, x_457.x, x_457.x) * vec3<f32>(x_459.x, x_459.y, x_459.z)) + x_462);
  let x_464 : vec3<f32> = u_xlat2;
  let x_466 : vec3<f32> = u_xlat5;
  let x_467 : vec3<f32> = (vec3<f32>(x_464.x, x_464.x, x_464.x) * x_466);
  let x_468 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_467.x, x_467.y, x_468.z, x_467.z);
  let x_470 : vec4<f32> = u_xlat0;
  let x_473 : f32 = u_xlat24;
  u_xlat5 = (-(vec3<f32>(x_470.x, x_470.y, x_470.z)) + vec3<f32>(x_473, x_473, x_473));
  let x_476 : vec4<f32> = u_xlat4;
  let x_478 : vec3<f32> = u_xlat5;
  let x_480 : vec4<f32> = u_xlat0;
  let x_482 : vec3<f32> = ((vec3<f32>(x_476.z, x_476.z, x_476.z) * x_478) + vec3<f32>(x_480.x, x_480.y, x_480.z));
  let x_483 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_482.x, x_482.y, x_482.z, x_483.w);
  let x_485 : vec4<f32> = u_xlat0;
  let x_487 : vec4<f32> = u_xlat3;
  let x_489 : vec3<f32> = (vec3<f32>(x_485.x, x_485.y, x_485.z) * vec3<f32>(x_487.x, x_487.y, x_487.z));
  let x_490 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_489.x, x_489.y, x_489.z, x_490.w);
  let x_492 : vec3<f32> = u_xlat6;
  let x_493 : vec3<f32> = u_xlat9;
  let x_495 : vec4<f32> = u_xlat0;
  let x_497 : vec3<f32> = ((x_492 * x_493) + vec3<f32>(x_495.x, x_495.y, x_495.z));
  let x_498 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_497.x, x_497.y, x_497.z, x_498.w);
  let x_500 : vec3<f32> = u_xlat10;
  let x_501 : vec4<f32> = u_xlat4;
  let x_504 : vec4<f32> = u_xlat0;
  let x_506 : vec3<f32> = ((x_500 * vec3<f32>(x_501.x, x_501.y, x_501.w)) + vec3<f32>(x_504.x, x_504.y, x_504.z));
  let x_507 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_506.x, x_506.y, x_506.z, x_507.w);
  let x_510 : f32 = vs_TEXCOORD1.w;
  u_xlat24 = x_510;
  let x_511 : f32 = u_xlat24;
  u_xlat24 = clamp(x_511, 0.0f, 1.0f);
  let x_513 : vec4<f32> = u_xlat0;
  let x_516 : vec4<f32> = x_33.unity_FogColor;
  let x_519 : vec3<f32> = (vec3<f32>(x_513.x, x_513.y, x_513.z) + -(vec3<f32>(x_516.x, x_516.y, x_516.z)));
  let x_520 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_519.x, x_519.y, x_519.z, x_520.w);
  let x_524 : f32 = u_xlat24;
  let x_526 : vec4<f32> = u_xlat0;
  let x_530 : vec4<f32> = x_33.unity_FogColor;
  let x_532 : vec3<f32> = ((vec3<f32>(x_524, x_524, x_524) * vec3<f32>(x_526.x, x_526.y, x_526.z)) + vec3<f32>(x_530.x, x_530.y, x_530.z));
  let x_533 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_532.x, x_532.y, x_532.z, x_533.w);
  let x_536 : f32 = u_xlat1.x;
  SV_Target0.w = x_536;
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

