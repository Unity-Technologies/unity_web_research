struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  x_WorldSpaceLightPos0 : vec4<f32>,
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
  x_Color : vec4<f32>,
  x_Metallic : f32,
  x_Glossiness : f32,
  x_OcclusionStrength : f32,
  @size(4)
  padding_3 : u32,
  x_EmissionColor : vec4<f32>,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_33 : PGlobals;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(0) @binding(6) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(8) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD7 : vec4<f32>;

@group(0) @binding(1) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_ShadowMapTexture : sampler;

@group(0) @binding(2) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_OcclusionMap : sampler;

@group(0) @binding(4) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(0) @binding(5) var unity_SpecCube1 : texture_cube<f32>;

@group(0) @binding(3) var x_EmissionMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_EmissionMap : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat39 : f32;
  var u_xlat40 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat41 : f32;
  var u_xlat42 : f32;
  var u_xlatb42 : bool;
  var x_250 : vec3<f32>;
  var u_xlat43 : f32;
  var u_xlatb41 : bool;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec3<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlatb10 : vec3<bool>;
  var hlslcc_movcTemp : vec3<f32>;
  var x_459 : f32;
  var x_471 : f32;
  var x_483 : f32;
  var u_xlat44 : f32;
  var u_xlatb45 : bool;
  var u_xlat45 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlat11 : vec3<f32>;
  var u_xlatb12 : vec3<bool>;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_638 : f32;
  var x_650 : f32;
  var x_662 : f32;
  var u_xlat15 : vec3<f32>;
  var u_xlat28 : f32;
  var u_xlat16 : f32;
  var u_xlat29 : f32;
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
  u_xlat39 = ((-(x_70) * 0.959999979f) + 0.959999979f);
  let x_75 : f32 = u_xlat39;
  let x_77 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_75, x_75, x_75) * x_77);
  let x_81 : vec4<f32> = vs_TEXCOORD4;
  let x_83 : vec4<f32> = vs_TEXCOORD4;
  u_xlat40 = dot(vec3<f32>(x_81.x, x_81.y, x_81.z), vec3<f32>(x_83.x, x_83.y, x_83.z));
  let x_86 : f32 = u_xlat40;
  u_xlat40 = inverseSqrt(x_86);
  let x_89 : f32 = u_xlat40;
  let x_91 : vec4<f32> = vs_TEXCOORD4;
  u_xlat2 = (vec3<f32>(x_89, x_89, x_89) * vec3<f32>(x_91.x, x_91.y, x_91.z));
  let x_95 : vec4<f32> = vs_TEXCOORD1;
  let x_97 : vec4<f32> = vs_TEXCOORD1;
  u_xlat40 = dot(vec3<f32>(x_95.x, x_95.y, x_95.z), vec3<f32>(x_97.x, x_97.y, x_97.z));
  let x_100 : f32 = u_xlat40;
  u_xlat40 = inverseSqrt(x_100);
  let x_104 : f32 = u_xlat40;
  let x_106 : vec4<f32> = vs_TEXCOORD1;
  let x_108 : vec3<f32> = (vec3<f32>(x_104, x_104, x_104) * vec3<f32>(x_106.x, x_106.y, x_106.z));
  let x_109 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_108.x, x_108.y, x_108.z, x_109.w);
  let x_117 : f32 = vs_TEXCOORD2.w;
  u_xlat4.x = x_117;
  let x_122 : f32 = vs_TEXCOORD3.w;
  u_xlat4.y = x_122;
  let x_126 : f32 = vs_TEXCOORD4.w;
  u_xlat4.z = x_126;
  let x_130 : vec3<f32> = u_xlat4;
  let x_135 : vec3<f32> = x_33.x_WorldSpaceCameraPos;
  let x_136 : vec3<f32> = (-(x_130) + x_135);
  let x_137 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_136.x, x_136.y, x_136.z, x_137.w);
  let x_142 : f32 = x_33.unity_MatrixV[0i].z;
  u_xlat6.x = x_142;
  let x_146 : f32 = x_33.unity_MatrixV[1i].z;
  u_xlat6.y = x_146;
  let x_150 : f32 = x_33.unity_MatrixV[2i].z;
  u_xlat6.z = x_150;
  let x_153 : vec4<f32> = u_xlat5;
  let x_155 : vec3<f32> = u_xlat6;
  u_xlat41 = dot(vec3<f32>(x_153.x, x_153.y, x_153.z), x_155);
  let x_157 : vec3<f32> = u_xlat4;
  let x_160 : vec4<f32> = x_33.unity_ShadowFadeCenterAndType;
  let x_163 : vec3<f32> = (x_157 + -(vec3<f32>(x_160.x, x_160.y, x_160.z)));
  let x_164 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_163.x, x_163.y, x_163.z, x_164.w);
  let x_167 : vec4<f32> = u_xlat5;
  let x_169 : vec4<f32> = u_xlat5;
  u_xlat42 = dot(vec3<f32>(x_167.x, x_167.y, x_167.z), vec3<f32>(x_169.x, x_169.y, x_169.z));
  let x_172 : f32 = u_xlat42;
  u_xlat42 = sqrt(x_172);
  let x_174 : f32 = u_xlat41;
  let x_176 : f32 = u_xlat42;
  u_xlat42 = (-(x_174) + x_176);
  let x_179 : f32 = x_33.unity_ShadowFadeCenterAndType.w;
  let x_180 : f32 = u_xlat42;
  let x_182 : f32 = u_xlat41;
  u_xlat41 = ((x_179 * x_180) + x_182);
  let x_184 : f32 = u_xlat41;
  let x_187 : f32 = x_33.x_LightShadowData.z;
  let x_190 : f32 = x_33.x_LightShadowData.w;
  u_xlat41 = ((x_184 * x_187) + x_190);
  let x_192 : f32 = u_xlat41;
  u_xlat41 = clamp(x_192, 0.0f, 1.0f);
  let x_201 : f32 = x_33.unity_ProbeVolumeParams.x;
  u_xlatb42 = (x_201 == 1.0f);
  let x_203 : bool = u_xlatb42;
  if (x_203) {
    let x_207 : f32 = x_33.unity_ProbeVolumeParams.y;
    u_xlatb42 = (x_207 == 1.0f);
    let x_209 : vec4<f32> = vs_TEXCOORD3;
    let x_213 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[1i];
    let x_215 : vec3<f32> = (vec3<f32>(x_209.w, x_209.w, x_209.w) * vec3<f32>(x_213.x, x_213.y, x_213.z));
    let x_216 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_215.x, x_215.y, x_215.z, x_216.w);
    let x_219 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[0i];
    let x_221 : vec4<f32> = vs_TEXCOORD2;
    let x_224 : vec4<f32> = u_xlat5;
    let x_226 : vec3<f32> = ((vec3<f32>(x_219.x, x_219.y, x_219.z) * vec3<f32>(x_221.w, x_221.w, x_221.w)) + vec3<f32>(x_224.x, x_224.y, x_224.z));
    let x_227 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_226.x, x_226.y, x_226.z, x_227.w);
    let x_230 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[2i];
    let x_232 : vec4<f32> = vs_TEXCOORD4;
    let x_235 : vec4<f32> = u_xlat5;
    let x_237 : vec3<f32> = ((vec3<f32>(x_230.x, x_230.y, x_230.z) * vec3<f32>(x_232.w, x_232.w, x_232.w)) + vec3<f32>(x_235.x, x_235.y, x_235.z));
    let x_238 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_237.x, x_237.y, x_237.z, x_238.w);
    let x_240 : vec4<f32> = u_xlat5;
    let x_244 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[3i];
    let x_246 : vec3<f32> = (vec3<f32>(x_240.x, x_240.y, x_240.z) + vec3<f32>(x_244.x, x_244.y, x_244.z));
    let x_247 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_246.x, x_246.y, x_246.z, x_247.w);
    let x_249 : bool = u_xlatb42;
    if (x_249) {
      let x_253 : vec4<f32> = u_xlat5;
      x_250 = vec3<f32>(x_253.x, x_253.y, x_253.z);
    } else {
      let x_256 : vec3<f32> = u_xlat4;
      x_250 = x_256;
    }
    let x_257 : vec3<f32> = x_250;
    let x_258 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_257.x, x_257.y, x_257.z, x_258.w);
    let x_260 : vec4<f32> = u_xlat5;
    let x_264 : vec3<f32> = x_33.unity_ProbeVolumeMin;
    let x_266 : vec3<f32> = (vec3<f32>(x_260.x, x_260.y, x_260.z) + -(x_264));
    let x_267 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_266.x, x_266.y, x_266.z, x_267.w);
    let x_269 : vec4<f32> = u_xlat5;
    let x_273 : vec3<f32> = x_33.unity_ProbeVolumeSizeInv;
    let x_274 : vec3<f32> = (vec3<f32>(x_269.x, x_269.y, x_269.z) * x_273);
    let x_275 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_275.x, x_274.x, x_274.y, x_274.z);
    let x_278 : f32 = u_xlat5.y;
    u_xlat42 = ((x_278 * 0.25f) + 0.75f);
    let x_285 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat43 = ((x_285 * 0.5f) + 0.75f);
    let x_289 : f32 = u_xlat42;
    let x_290 : f32 = u_xlat43;
    u_xlat5.x = max(x_289, x_290);
    let x_301 : vec4<f32> = u_xlat5;
    let x_303 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_301.x, x_301.z, x_301.w));
    u_xlat5 = x_303;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_309 : vec4<f32> = u_xlat5;
  let x_311 : vec4<f32> = x_33.unity_OcclusionMaskSelector;
  u_xlat42 = dot(x_309, x_311);
  let x_313 : f32 = u_xlat42;
  u_xlat42 = clamp(x_313, 0.0f, 1.0f);
  let x_316 : vec4<f32> = vs_TEXCOORD7;
  let x_318 : vec4<f32> = vs_TEXCOORD7;
  let x_320 : vec2<f32> = (vec2<f32>(x_316.x, x_316.y) / vec2<f32>(x_318.w, x_318.w));
  let x_321 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_320.x, x_320.y, x_321.z, x_321.w);
  let x_328 : vec4<f32> = u_xlat5;
  let x_330 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, vec2<f32>(x_328.x, x_328.y));
  u_xlat43 = x_330.x;
  let x_332 : f32 = u_xlat42;
  let x_333 : f32 = u_xlat43;
  u_xlat42 = (x_332 + -(x_333));
  let x_336 : f32 = u_xlat41;
  let x_337 : f32 = u_xlat42;
  let x_339 : f32 = u_xlat43;
  u_xlat41 = ((x_336 * x_337) + x_339);
  let x_346 : vec4<f32> = vs_TEXCOORD0;
  let x_348 : vec4<f32> = textureSample(x_OcclusionMap, sampler_OcclusionMap, vec2<f32>(x_346.x, x_346.y));
  u_xlat42 = x_348.y;
  let x_352 : f32 = x_33.x_OcclusionStrength;
  u_xlat43 = (-(x_352) + 1.0f);
  let x_355 : f32 = u_xlat42;
  let x_357 : f32 = x_33.x_OcclusionStrength;
  let x_359 : f32 = u_xlat43;
  u_xlat42 = ((x_355 * x_357) + x_359);
  let x_363 : f32 = x_33.x_Glossiness;
  u_xlat43 = (-(x_363) + 1.0f);
  let x_366 : vec4<f32> = u_xlat3;
  let x_368 : vec3<f32> = u_xlat2;
  u_xlat5.x = dot(vec3<f32>(x_366.x, x_366.y, x_366.z), x_368);
  let x_372 : f32 = u_xlat5.x;
  let x_374 : f32 = u_xlat5.x;
  u_xlat5.x = (x_372 + x_374);
  let x_377 : vec3<f32> = u_xlat2;
  let x_378 : vec4<f32> = u_xlat5;
  let x_382 : vec4<f32> = u_xlat3;
  let x_384 : vec3<f32> = ((x_377 * -(vec3<f32>(x_378.x, x_378.x, x_378.x))) + vec3<f32>(x_382.x, x_382.y, x_382.z));
  let x_385 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_384.x, x_384.y, x_384.z, x_385.w);
  let x_387 : f32 = u_xlat41;
  let x_391 : vec4<f32> = x_33.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_387, x_387, x_387) * vec3<f32>(x_391.x, x_391.y, x_391.z));
  let x_397 : f32 = x_33.unity_SpecCube0_ProbePosition.w;
  u_xlatb41 = (0.0f < x_397);
  let x_399 : bool = u_xlatb41;
  if (x_399) {
    let x_402 : vec4<f32> = u_xlat5;
    let x_404 : vec4<f32> = u_xlat5;
    u_xlat41 = dot(vec3<f32>(x_402.x, x_402.y, x_402.z), vec3<f32>(x_404.x, x_404.y, x_404.z));
    let x_407 : f32 = u_xlat41;
    u_xlat41 = inverseSqrt(x_407);
    let x_410 : f32 = u_xlat41;
    let x_412 : vec4<f32> = u_xlat5;
    let x_414 : vec3<f32> = (vec3<f32>(x_410, x_410, x_410) * vec3<f32>(x_412.x, x_412.y, x_412.z));
    let x_415 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_414.x, x_414.y, x_414.z, x_415.w);
    let x_418 : vec3<f32> = u_xlat4;
    let x_422 : vec4<f32> = x_33.unity_SpecCube0_BoxMax;
    u_xlat8 = (-(x_418) + vec3<f32>(x_422.x, x_422.y, x_422.z));
    let x_425 : vec3<f32> = u_xlat8;
    let x_426 : vec4<f32> = u_xlat7;
    u_xlat8 = (x_425 / vec3<f32>(x_426.x, x_426.y, x_426.z));
    let x_430 : vec3<f32> = u_xlat4;
    let x_434 : vec4<f32> = x_33.unity_SpecCube0_BoxMin;
    let x_436 : vec3<f32> = (-(x_430) + vec3<f32>(x_434.x, x_434.y, x_434.z));
    let x_437 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_436.x, x_436.y, x_436.z, x_437.w);
    let x_439 : vec4<f32> = u_xlat9;
    let x_441 : vec4<f32> = u_xlat7;
    let x_443 : vec3<f32> = (vec3<f32>(x_439.x, x_439.y, x_439.z) / vec3<f32>(x_441.x, x_441.y, x_441.z));
    let x_444 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_443.x, x_443.y, x_443.z, x_444.w);
    let x_450 : vec4<f32> = u_xlat7;
    let x_453 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_450.x, x_450.y, x_450.z, x_450.x));
    u_xlatb10 = vec3<bool>(x_453.x, x_453.y, x_453.z);
    let x_456 : vec3<f32> = u_xlat8;
    hlslcc_movcTemp = x_456;
    let x_458 : bool = u_xlatb10.x;
    if (x_458) {
      let x_463 : f32 = u_xlat8.x;
      x_459 = x_463;
    } else {
      let x_466 : f32 = u_xlat9.x;
      x_459 = x_466;
    }
    let x_467 : f32 = x_459;
    hlslcc_movcTemp.x = x_467;
    let x_470 : bool = u_xlatb10.y;
    if (x_470) {
      let x_475 : f32 = u_xlat8.y;
      x_471 = x_475;
    } else {
      let x_478 : f32 = u_xlat9.y;
      x_471 = x_478;
    }
    let x_479 : f32 = x_471;
    hlslcc_movcTemp.y = x_479;
    let x_482 : bool = u_xlatb10.z;
    if (x_482) {
      let x_487 : f32 = u_xlat8.z;
      x_483 = x_487;
    } else {
      let x_490 : f32 = u_xlat9.z;
      x_483 = x_490;
    }
    let x_491 : f32 = x_483;
    hlslcc_movcTemp.z = x_491;
    let x_493 : vec3<f32> = hlslcc_movcTemp;
    u_xlat8 = x_493;
    let x_495 : f32 = u_xlat8.y;
    let x_497 : f32 = u_xlat8.x;
    u_xlat41 = min(x_495, x_497);
    let x_500 : f32 = u_xlat8.z;
    let x_501 : f32 = u_xlat41;
    u_xlat41 = min(x_500, x_501);
    let x_503 : vec3<f32> = u_xlat4;
    let x_505 : vec4<f32> = x_33.unity_SpecCube0_ProbePosition;
    u_xlat8 = (x_503 + -(vec3<f32>(x_505.x, x_505.y, x_505.z)));
    let x_509 : vec4<f32> = u_xlat7;
    let x_511 : f32 = u_xlat41;
    let x_514 : vec3<f32> = u_xlat8;
    let x_515 : vec3<f32> = ((vec3<f32>(x_509.x, x_509.y, x_509.z) * vec3<f32>(x_511, x_511, x_511)) + x_514);
    let x_516 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_515.x, x_515.y, x_515.z, x_516.w);
  } else {
    let x_519 : vec4<f32> = u_xlat5;
    let x_520 : vec3<f32> = vec3<f32>(x_519.x, x_519.y, x_519.z);
    let x_521 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_520.x, x_520.y, x_520.z, x_521.w);
  }
  let x_523 : f32 = u_xlat43;
  u_xlat41 = ((-(x_523) * 0.699999988f) + 1.700000048f);
  let x_529 : f32 = u_xlat41;
  let x_530 : f32 = u_xlat43;
  u_xlat41 = (x_529 * x_530);
  let x_532 : f32 = u_xlat41;
  u_xlat41 = (x_532 * 6.0f);
  let x_543 : vec4<f32> = u_xlat7;
  let x_545 : f32 = u_xlat41;
  let x_546 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_543.x, x_543.y, x_543.z), x_545);
  u_xlat7 = x_546;
  let x_549 : f32 = u_xlat7.w;
  u_xlat44 = (x_549 + -1.0f);
  let x_554 : f32 = x_33.unity_SpecCube0_HDR.w;
  let x_555 : f32 = u_xlat44;
  u_xlat44 = ((x_554 * x_555) + 1.0f);
  let x_558 : f32 = u_xlat44;
  u_xlat44 = log2(x_558);
  let x_560 : f32 = u_xlat44;
  let x_562 : f32 = x_33.unity_SpecCube0_HDR.y;
  u_xlat44 = (x_560 * x_562);
  let x_564 : f32 = u_xlat44;
  u_xlat44 = exp2(x_564);
  let x_566 : f32 = u_xlat44;
  let x_568 : f32 = x_33.unity_SpecCube0_HDR.x;
  u_xlat44 = (x_566 * x_568);
  let x_570 : vec4<f32> = u_xlat7;
  let x_572 : f32 = u_xlat44;
  u_xlat8 = (vec3<f32>(x_570.x, x_570.y, x_570.z) * vec3<f32>(x_572, x_572, x_572));
  let x_577 : f32 = x_33.unity_SpecCube0_BoxMin.w;
  u_xlatb45 = (x_577 < 0.999989986f);
  let x_580 : bool = u_xlatb45;
  if (x_580) {
    let x_585 : f32 = x_33.unity_SpecCube1_ProbePosition.w;
    u_xlatb45 = (0.0f < x_585);
    let x_587 : bool = u_xlatb45;
    if (x_587) {
      let x_591 : vec4<f32> = u_xlat5;
      let x_593 : vec4<f32> = u_xlat5;
      u_xlat45 = dot(vec3<f32>(x_591.x, x_591.y, x_591.z), vec3<f32>(x_593.x, x_593.y, x_593.z));
      let x_596 : f32 = u_xlat45;
      u_xlat45 = inverseSqrt(x_596);
      let x_598 : vec4<f32> = u_xlat5;
      let x_600 : f32 = u_xlat45;
      let x_602 : vec3<f32> = (vec3<f32>(x_598.x, x_598.y, x_598.z) * vec3<f32>(x_600, x_600, x_600));
      let x_603 : vec4<f32> = u_xlat9;
      u_xlat9 = vec4<f32>(x_602.x, x_602.y, x_602.z, x_603.w);
      let x_606 : vec3<f32> = u_xlat4;
      let x_610 : vec4<f32> = x_33.unity_SpecCube1_BoxMax;
      u_xlat10 = (-(x_606) + vec3<f32>(x_610.x, x_610.y, x_610.z));
      let x_613 : vec3<f32> = u_xlat10;
      let x_614 : vec4<f32> = u_xlat9;
      u_xlat10 = (x_613 / vec3<f32>(x_614.x, x_614.y, x_614.z));
      let x_618 : vec3<f32> = u_xlat4;
      let x_622 : vec4<f32> = x_33.unity_SpecCube1_BoxMin;
      u_xlat11 = (-(x_618) + vec3<f32>(x_622.x, x_622.y, x_622.z));
      let x_625 : vec3<f32> = u_xlat11;
      let x_626 : vec4<f32> = u_xlat9;
      u_xlat11 = (x_625 / vec3<f32>(x_626.x, x_626.y, x_626.z));
      let x_630 : vec4<f32> = u_xlat9;
      let x_632 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_630.x, x_630.y, x_630.z, x_630.x));
      u_xlatb12 = vec3<bool>(x_632.x, x_632.y, x_632.z);
      let x_635 : vec3<f32> = u_xlat10;
      hlslcc_movcTemp_1 = x_635;
      let x_637 : bool = u_xlatb12.x;
      if (x_637) {
        let x_642 : f32 = u_xlat10.x;
        x_638 = x_642;
      } else {
        let x_645 : f32 = u_xlat11.x;
        x_638 = x_645;
      }
      let x_646 : f32 = x_638;
      hlslcc_movcTemp_1.x = x_646;
      let x_649 : bool = u_xlatb12.y;
      if (x_649) {
        let x_654 : f32 = u_xlat10.y;
        x_650 = x_654;
      } else {
        let x_657 : f32 = u_xlat11.y;
        x_650 = x_657;
      }
      let x_658 : f32 = x_650;
      hlslcc_movcTemp_1.y = x_658;
      let x_661 : bool = u_xlatb12.z;
      if (x_661) {
        let x_666 : f32 = u_xlat10.z;
        x_662 = x_666;
      } else {
        let x_669 : f32 = u_xlat11.z;
        x_662 = x_669;
      }
      let x_670 : f32 = x_662;
      hlslcc_movcTemp_1.z = x_670;
      let x_672 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat10 = x_672;
      let x_674 : f32 = u_xlat10.y;
      let x_676 : f32 = u_xlat10.x;
      u_xlat45 = min(x_674, x_676);
      let x_679 : f32 = u_xlat10.z;
      let x_680 : f32 = u_xlat45;
      u_xlat45 = min(x_679, x_680);
      let x_682 : vec3<f32> = u_xlat4;
      let x_684 : vec4<f32> = x_33.unity_SpecCube1_ProbePosition;
      u_xlat4 = (x_682 + -(vec3<f32>(x_684.x, x_684.y, x_684.z)));
      let x_688 : vec4<f32> = u_xlat9;
      let x_690 : f32 = u_xlat45;
      let x_693 : vec3<f32> = u_xlat4;
      let x_694 : vec3<f32> = ((vec3<f32>(x_688.x, x_688.y, x_688.z) * vec3<f32>(x_690, x_690, x_690)) + x_693);
      let x_695 : vec4<f32> = u_xlat5;
      u_xlat5 = vec4<f32>(x_694.x, x_694.y, x_694.z, x_695.w);
    }
    let x_701 : vec4<f32> = u_xlat5;
    let x_703 : f32 = u_xlat41;
    let x_704 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_701.x, x_701.y, x_701.z), x_703);
    u_xlat9 = x_704;
    let x_706 : f32 = u_xlat9.w;
    u_xlat41 = (x_706 + -1.0f);
    let x_710 : f32 = x_33.unity_SpecCube1_HDR.w;
    let x_711 : f32 = u_xlat41;
    u_xlat41 = ((x_710 * x_711) + 1.0f);
    let x_714 : f32 = u_xlat41;
    u_xlat41 = log2(x_714);
    let x_716 : f32 = u_xlat41;
    let x_718 : f32 = x_33.unity_SpecCube1_HDR.y;
    u_xlat41 = (x_716 * x_718);
    let x_720 : f32 = u_xlat41;
    u_xlat41 = exp2(x_720);
    let x_722 : f32 = u_xlat41;
    let x_724 : f32 = x_33.unity_SpecCube1_HDR.x;
    u_xlat41 = (x_722 * x_724);
    let x_726 : vec4<f32> = u_xlat9;
    let x_728 : f32 = u_xlat41;
    u_xlat4 = (vec3<f32>(x_726.x, x_726.y, x_726.z) * vec3<f32>(x_728, x_728, x_728));
    let x_731 : f32 = u_xlat44;
    let x_733 : vec4<f32> = u_xlat7;
    let x_736 : vec3<f32> = u_xlat4;
    let x_738 : vec3<f32> = ((vec3<f32>(x_731, x_731, x_731) * vec3<f32>(x_733.x, x_733.y, x_733.z)) + -(x_736));
    let x_739 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_738.x, x_738.y, x_738.z, x_739.w);
    let x_742 : vec4<f32> = x_33.unity_SpecCube0_BoxMin;
    let x_744 : vec4<f32> = u_xlat5;
    let x_747 : vec3<f32> = u_xlat4;
    u_xlat8 = ((vec3<f32>(x_742.w, x_742.w, x_742.w) * vec3<f32>(x_744.x, x_744.y, x_744.z)) + x_747);
  }
  let x_749 : f32 = u_xlat42;
  let x_751 : vec3<f32> = u_xlat8;
  u_xlat4 = (vec3<f32>(x_749, x_749, x_749) * x_751);
  let x_753 : vec4<f32> = vs_TEXCOORD1;
  let x_756 : f32 = u_xlat40;
  let x_760 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  let x_762 : vec3<f32> = ((-(vec3<f32>(x_753.x, x_753.y, x_753.z)) * vec3<f32>(x_756, x_756, x_756)) + vec3<f32>(x_760.x, x_760.y, x_760.z));
  let x_763 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_762.x, x_762.y, x_762.z, x_763.w);
  let x_765 : vec4<f32> = u_xlat5;
  let x_767 : vec4<f32> = u_xlat5;
  u_xlat40 = dot(vec3<f32>(x_765.x, x_765.y, x_765.z), vec3<f32>(x_767.x, x_767.y, x_767.z));
  let x_770 : f32 = u_xlat40;
  u_xlat40 = max(x_770, 0.001f);
  let x_773 : f32 = u_xlat40;
  u_xlat40 = inverseSqrt(x_773);
  let x_775 : f32 = u_xlat40;
  let x_777 : vec4<f32> = u_xlat5;
  let x_779 : vec3<f32> = (vec3<f32>(x_775, x_775, x_775) * vec3<f32>(x_777.x, x_777.y, x_777.z));
  let x_780 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_779.x, x_779.y, x_779.z, x_780.w);
  let x_782 : vec3<f32> = u_xlat2;
  let x_783 : vec4<f32> = u_xlat3;
  u_xlat40 = dot(x_782, -(vec3<f32>(x_783.x, x_783.y, x_783.z)));
  let x_787 : vec3<f32> = u_xlat2;
  let x_789 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  u_xlat41 = dot(x_787, vec3<f32>(x_789.x, x_789.y, x_789.z));
  let x_792 : f32 = u_xlat41;
  u_xlat41 = clamp(x_792, 0.0f, 1.0f);
  let x_794 : vec3<f32> = u_xlat2;
  let x_795 : vec4<f32> = u_xlat5;
  u_xlat2.x = dot(x_794, vec3<f32>(x_795.x, x_795.y, x_795.z));
  let x_800 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_800, 0.0f, 1.0f);
  let x_805 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  let x_807 : vec4<f32> = u_xlat5;
  u_xlat15.x = dot(vec3<f32>(x_805.x, x_805.y, x_805.z), vec3<f32>(x_807.x, x_807.y, x_807.z));
  let x_812 : f32 = u_xlat15.x;
  u_xlat15.x = clamp(x_812, 0.0f, 1.0f);
  let x_817 : f32 = u_xlat15.x;
  let x_819 : f32 = u_xlat15.x;
  u_xlat28 = (x_817 * x_819);
  let x_821 : f32 = u_xlat28;
  let x_823 : f32 = u_xlat43;
  u_xlat28 = dot(vec2<f32>(x_821, x_821), vec2<f32>(x_823, x_823));
  let x_826 : f32 = u_xlat28;
  u_xlat28 = (x_826 + -0.5f);
  let x_829 : f32 = u_xlat41;
  u_xlat3.x = (-(x_829) + 1.0f);
  let x_835 : f32 = u_xlat3.x;
  let x_837 : f32 = u_xlat3.x;
  u_xlat16 = (x_835 * x_837);
  let x_839 : f32 = u_xlat16;
  let x_840 : f32 = u_xlat16;
  u_xlat16 = (x_839 * x_840);
  let x_843 : f32 = u_xlat3.x;
  let x_844 : f32 = u_xlat16;
  u_xlat3.x = (x_843 * x_844);
  let x_847 : f32 = u_xlat28;
  let x_849 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_847 * x_849) + 1.0f);
  let x_853 : f32 = u_xlat40;
  u_xlat16 = (-(abs(x_853)) + 1.0f);
  let x_858 : f32 = u_xlat16;
  let x_859 : f32 = u_xlat16;
  u_xlat29 = (x_858 * x_859);
  let x_861 : f32 = u_xlat29;
  let x_862 : f32 = u_xlat29;
  u_xlat29 = (x_861 * x_862);
  let x_864 : f32 = u_xlat16;
  let x_865 : f32 = u_xlat29;
  u_xlat16 = (x_864 * x_865);
  let x_867 : f32 = u_xlat28;
  let x_868 : f32 = u_xlat16;
  u_xlat28 = ((x_867 * x_868) + 1.0f);
  let x_871 : f32 = u_xlat28;
  let x_873 : f32 = u_xlat3.x;
  u_xlat28 = (x_871 * x_873);
  let x_875 : f32 = u_xlat41;
  let x_876 : f32 = u_xlat28;
  u_xlat28 = (x_875 * x_876);
  let x_878 : f32 = u_xlat43;
  let x_879 : f32 = u_xlat43;
  u_xlat3.x = (x_878 * x_879);
  let x_883 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_883, 0.002f);
  let x_888 : f32 = u_xlat3.x;
  u_xlat29 = (-(x_888) + 1.0f);
  let x_891 : f32 = u_xlat40;
  let x_893 : f32 = u_xlat29;
  let x_896 : f32 = u_xlat3.x;
  u_xlat42 = ((abs(x_891) * x_893) + x_896);
  let x_898 : f32 = u_xlat41;
  let x_899 : f32 = u_xlat29;
  let x_902 : f32 = u_xlat3.x;
  u_xlat29 = ((x_898 * x_899) + x_902);
  let x_904 : f32 = u_xlat40;
  let x_906 : f32 = u_xlat29;
  u_xlat40 = (abs(x_904) * x_906);
  let x_908 : f32 = u_xlat41;
  let x_909 : f32 = u_xlat42;
  let x_911 : f32 = u_xlat40;
  u_xlat40 = ((x_908 * x_909) + x_911);
  let x_913 : f32 = u_xlat40;
  u_xlat40 = (x_913 + 0.00001f);
  let x_916 : f32 = u_xlat40;
  u_xlat40 = (0.5f / x_916);
  let x_919 : f32 = u_xlat3.x;
  let x_921 : f32 = u_xlat3.x;
  u_xlat29 = (x_919 * x_921);
  let x_924 : f32 = u_xlat2.x;
  let x_925 : f32 = u_xlat29;
  let x_928 : f32 = u_xlat2.x;
  u_xlat42 = ((x_924 * x_925) + -(x_928));
  let x_931 : f32 = u_xlat42;
  let x_933 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_931 * x_933) + 1.0f);
  let x_937 : f32 = u_xlat29;
  u_xlat29 = (x_937 * 0.318309873f);
  let x_941 : f32 = u_xlat2.x;
  let x_943 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_941 * x_943) + 0.0000001f);
  let x_948 : f32 = u_xlat29;
  let x_950 : f32 = u_xlat2.x;
  u_xlat2.x = (x_948 / x_950);
  let x_953 : f32 = u_xlat40;
  let x_955 : f32 = u_xlat2.x;
  u_xlat40 = (x_953 * x_955);
  let x_957 : f32 = u_xlat41;
  let x_958 : f32 = u_xlat40;
  u_xlat40 = (x_957 * x_958);
  let x_960 : f32 = u_xlat40;
  u_xlat40 = (x_960 * 3.141592741f);
  let x_963 : f32 = u_xlat40;
  u_xlat40 = max(x_963, 0.0f);
  let x_966 : f32 = u_xlat3.x;
  let x_968 : f32 = u_xlat3.x;
  u_xlat2.x = ((x_966 * x_968) + 1.0f);
  let x_973 : f32 = u_xlat2.x;
  u_xlat2.x = (1.0f / x_973);
  let x_976 : vec3<f32> = u_xlat0;
  let x_977 : vec3<f32> = u_xlat0;
  u_xlat41 = dot(x_976, x_977);
  let x_979 : f32 = u_xlat41;
  u_xlatb41 = !((x_979 == 0.0f));
  let x_981 : bool = u_xlatb41;
  u_xlat41 = select(0.0f, 1.0f, x_981);
  let x_983 : f32 = u_xlat40;
  let x_984 : f32 = u_xlat41;
  u_xlat40 = (x_983 * x_984);
  let x_986 : f32 = u_xlat39;
  let x_989 : f32 = x_33.x_Glossiness;
  u_xlat39 = (-(x_986) + x_989);
  let x_991 : f32 = u_xlat39;
  u_xlat39 = (x_991 + 1.0f);
  let x_993 : f32 = u_xlat39;
  u_xlat39 = clamp(x_993, 0.0f, 1.0f);
  let x_995 : f32 = u_xlat28;
  let x_997 : vec3<f32> = u_xlat6;
  let x_998 : vec3<f32> = (vec3<f32>(x_995, x_995, x_995) * x_997);
  let x_999 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_998.x, x_999.y, x_998.y, x_998.z);
  let x_1001 : vec3<f32> = u_xlat6;
  let x_1002 : f32 = u_xlat40;
  let x_1004 : vec3<f32> = (x_1001 * vec3<f32>(x_1002, x_1002, x_1002));
  let x_1005 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1004.x, x_1004.y, x_1004.z, x_1005.w);
  let x_1008 : f32 = u_xlat15.x;
  u_xlat40 = (-(x_1008) + 1.0f);
  let x_1011 : f32 = u_xlat40;
  let x_1012 : f32 = u_xlat40;
  u_xlat15.x = (x_1011 * x_1012);
  let x_1016 : f32 = u_xlat15.x;
  let x_1018 : f32 = u_xlat15.x;
  u_xlat15.x = (x_1016 * x_1018);
  let x_1021 : f32 = u_xlat40;
  let x_1023 : f32 = u_xlat15.x;
  u_xlat40 = (x_1021 * x_1023);
  let x_1025 : vec3<f32> = u_xlat0;
  u_xlat15 = (-(x_1025) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1029 : vec3<f32> = u_xlat15;
  let x_1030 : f32 = u_xlat40;
  let x_1033 : vec3<f32> = u_xlat0;
  u_xlat15 = ((x_1029 * vec3<f32>(x_1030, x_1030, x_1030)) + x_1033);
  let x_1035 : vec3<f32> = u_xlat15;
  let x_1036 : vec4<f32> = u_xlat5;
  u_xlat15 = (x_1035 * vec3<f32>(x_1036.x, x_1036.y, x_1036.z));
  let x_1039 : vec3<f32> = u_xlat1;
  let x_1040 : vec4<f32> = u_xlat3;
  let x_1043 : vec3<f32> = u_xlat15;
  u_xlat1 = ((x_1039 * vec3<f32>(x_1040.x, x_1040.z, x_1040.w)) + x_1043);
  let x_1045 : vec3<f32> = u_xlat4;
  let x_1046 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1045 * vec3<f32>(x_1046.x, x_1046.x, x_1046.x));
  let x_1049 : vec3<f32> = u_xlat0;
  let x_1051 : f32 = u_xlat39;
  let x_1053 : vec3<f32> = (-(x_1049) + vec3<f32>(x_1051, x_1051, x_1051));
  let x_1054 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1053.x, x_1054.y, x_1053.y, x_1053.z);
  let x_1056 : f32 = u_xlat16;
  let x_1058 : vec4<f32> = u_xlat3;
  let x_1061 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1056, x_1056, x_1056) * vec3<f32>(x_1058.x, x_1058.z, x_1058.w)) + x_1061);
  let x_1063 : vec3<f32> = u_xlat2;
  let x_1064 : vec3<f32> = u_xlat0;
  let x_1066 : vec3<f32> = u_xlat1;
  u_xlat0 = ((x_1063 * x_1064) + x_1066);
  let x_1073 : vec4<f32> = vs_TEXCOORD0;
  let x_1075 : vec4<f32> = textureSample(x_EmissionMap, sampler_EmissionMap, vec2<f32>(x_1073.x, x_1073.y));
  u_xlat1 = vec3<f32>(x_1075.x, x_1075.y, x_1075.z);
  let x_1077 : vec3<f32> = u_xlat1;
  let x_1080 : vec4<f32> = x_33.x_EmissionColor;
  let x_1083 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_1077 * vec3<f32>(x_1080.x, x_1080.y, x_1080.z)) + x_1083);
  let x_1086 : f32 = vs_TEXCOORD1.w;
  let x_1088 : f32 = x_33.x_ProjectionParams.y;
  u_xlat39 = (x_1086 / x_1088);
  let x_1090 : f32 = u_xlat39;
  u_xlat39 = (-(x_1090) + 1.0f);
  let x_1093 : f32 = u_xlat39;
  let x_1095 : f32 = x_33.x_ProjectionParams.z;
  u_xlat39 = (x_1093 * x_1095);
  let x_1097 : f32 = u_xlat39;
  u_xlat39 = max(x_1097, 0.0f);
  let x_1099 : f32 = u_xlat39;
  let x_1102 : f32 = x_33.unity_FogParams.x;
  u_xlat39 = (x_1099 * x_1102);
  let x_1104 : f32 = u_xlat39;
  let x_1105 : f32 = u_xlat39;
  u_xlat39 = (x_1104 * -(x_1105));
  let x_1108 : f32 = u_xlat39;
  u_xlat39 = exp2(x_1108);
  let x_1110 : vec3<f32> = u_xlat0;
  let x_1113 : vec4<f32> = x_33.unity_FogColor;
  u_xlat0 = (x_1110 + -(vec3<f32>(x_1113.x, x_1113.y, x_1113.z)));
  let x_1119 : f32 = u_xlat39;
  let x_1121 : vec3<f32> = u_xlat0;
  let x_1124 : vec4<f32> = x_33.unity_FogColor;
  let x_1126 : vec3<f32> = ((vec3<f32>(x_1119, x_1119, x_1119) * x_1121) + vec3<f32>(x_1124.x, x_1124.y, x_1124.z));
  let x_1127 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1126.x, x_1126.y, x_1126.z, x_1127.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(5) vs_TEXCOORD7_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

