struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
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
  x_Color : vec4<f32>,
  x_Metallic : f32,
  x_Glossiness : f32,
  x_OcclusionStrength : f32,
}

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_33 : PGlobals;

var<private> u_xlat39 : f32;

var<private> u_xlat40 : f32;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat41 : f32;

var<private> u_xlat42 : f32;

var<private> u_xlatb42 : bool;

var<private> u_xlat43 : f32;

@group(0) @binding(6) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(8) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD7 : vec4<f32>;

@group(0) @binding(2) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_ShadowMapTexture : sampler;

@group(0) @binding(3) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_OcclusionMap : sampler;

var<private> u_xlatb41 : bool;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlatb10 : vec3<bool>;

@group(0) @binding(4) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat44 : f32;

var<private> u_xlatb45 : bool;

var<private> u_xlat45 : f32;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat11 : vec3<f32>;

var<private> u_xlatb12 : vec3<bool>;

@group(0) @binding(5) var unity_SpecCube1 : texture_cube<f32>;

var<private> u_xlat15 : vec3<f32>;

var<private> u_xlat28 : f32;

var<private> u_xlat16 : f32;

var<private> u_xlat29 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_250 : vec3<f32>;
  var hlslcc_movcTemp : vec3<f32>;
  var x_460 : f32;
  var x_472 : f32;
  var x_484 : f32;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_639 : f32;
  var x_651 : f32;
  var x_663 : f32;
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
    let x_243 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[3i];
    let x_245 : vec3<f32> = (vec3<f32>(x_240.x, x_240.y, x_240.z) + vec3<f32>(x_243.x, x_243.y, x_243.z));
    let x_246 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_245.x, x_245.y, x_245.z, x_246.w);
    let x_248 : bool = u_xlatb42;
    if (x_248) {
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
      let x_464 : f32 = u_xlat8.x;
      x_460 = x_464;
    } else {
      let x_467 : f32 = u_xlat9.x;
      x_460 = x_467;
    }
    let x_468 : f32 = x_460;
    hlslcc_movcTemp.x = x_468;
    let x_471 : bool = u_xlatb10.y;
    if (x_471) {
      let x_476 : f32 = u_xlat8.y;
      x_472 = x_476;
    } else {
      let x_479 : f32 = u_xlat9.y;
      x_472 = x_479;
    }
    let x_480 : f32 = x_472;
    hlslcc_movcTemp.y = x_480;
    let x_483 : bool = u_xlatb10.z;
    if (x_483) {
      let x_488 : f32 = u_xlat8.z;
      x_484 = x_488;
    } else {
      let x_491 : f32 = u_xlat9.z;
      x_484 = x_491;
    }
    let x_492 : f32 = x_484;
    hlslcc_movcTemp.z = x_492;
    let x_494 : vec3<f32> = hlslcc_movcTemp;
    u_xlat8 = x_494;
    let x_496 : f32 = u_xlat8.y;
    let x_498 : f32 = u_xlat8.x;
    u_xlat41 = min(x_496, x_498);
    let x_501 : f32 = u_xlat8.z;
    let x_502 : f32 = u_xlat41;
    u_xlat41 = min(x_501, x_502);
    let x_504 : vec3<f32> = u_xlat4;
    let x_506 : vec4<f32> = x_33.unity_SpecCube0_ProbePosition;
    u_xlat8 = (x_504 + -(vec3<f32>(x_506.x, x_506.y, x_506.z)));
    let x_510 : vec4<f32> = u_xlat7;
    let x_512 : f32 = u_xlat41;
    let x_515 : vec3<f32> = u_xlat8;
    let x_516 : vec3<f32> = ((vec3<f32>(x_510.x, x_510.y, x_510.z) * vec3<f32>(x_512, x_512, x_512)) + x_515);
    let x_517 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_516.x, x_516.y, x_516.z, x_517.w);
  } else {
    let x_520 : vec4<f32> = u_xlat5;
    let x_521 : vec3<f32> = vec3<f32>(x_520.x, x_520.y, x_520.z);
    let x_522 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_521.x, x_521.y, x_521.z, x_522.w);
  }
  let x_524 : f32 = u_xlat43;
  u_xlat41 = ((-(x_524) * 0.699999988f) + 1.700000048f);
  let x_530 : f32 = u_xlat41;
  let x_531 : f32 = u_xlat43;
  u_xlat41 = (x_530 * x_531);
  let x_533 : f32 = u_xlat41;
  u_xlat41 = (x_533 * 6.0f);
  let x_544 : vec4<f32> = u_xlat7;
  let x_546 : f32 = u_xlat41;
  let x_547 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_544.x, x_544.y, x_544.z), x_546);
  u_xlat7 = x_547;
  let x_550 : f32 = u_xlat7.w;
  u_xlat44 = (x_550 + -1.0f);
  let x_555 : f32 = x_33.unity_SpecCube0_HDR.w;
  let x_556 : f32 = u_xlat44;
  u_xlat44 = ((x_555 * x_556) + 1.0f);
  let x_559 : f32 = u_xlat44;
  u_xlat44 = log2(x_559);
  let x_561 : f32 = u_xlat44;
  let x_563 : f32 = x_33.unity_SpecCube0_HDR.y;
  u_xlat44 = (x_561 * x_563);
  let x_565 : f32 = u_xlat44;
  u_xlat44 = exp2(x_565);
  let x_567 : f32 = u_xlat44;
  let x_569 : f32 = x_33.unity_SpecCube0_HDR.x;
  u_xlat44 = (x_567 * x_569);
  let x_571 : vec4<f32> = u_xlat7;
  let x_573 : f32 = u_xlat44;
  u_xlat8 = (vec3<f32>(x_571.x, x_571.y, x_571.z) * vec3<f32>(x_573, x_573, x_573));
  let x_578 : f32 = x_33.unity_SpecCube0_BoxMin.w;
  u_xlatb45 = (x_578 < 0.999989986f);
  let x_581 : bool = u_xlatb45;
  if (x_581) {
    let x_586 : f32 = x_33.unity_SpecCube1_ProbePosition.w;
    u_xlatb45 = (0.0f < x_586);
    let x_588 : bool = u_xlatb45;
    if (x_588) {
      let x_592 : vec4<f32> = u_xlat5;
      let x_594 : vec4<f32> = u_xlat5;
      u_xlat45 = dot(vec3<f32>(x_592.x, x_592.y, x_592.z), vec3<f32>(x_594.x, x_594.y, x_594.z));
      let x_597 : f32 = u_xlat45;
      u_xlat45 = inverseSqrt(x_597);
      let x_599 : vec4<f32> = u_xlat5;
      let x_601 : f32 = u_xlat45;
      let x_603 : vec3<f32> = (vec3<f32>(x_599.x, x_599.y, x_599.z) * vec3<f32>(x_601, x_601, x_601));
      let x_604 : vec4<f32> = u_xlat9;
      u_xlat9 = vec4<f32>(x_603.x, x_603.y, x_603.z, x_604.w);
      let x_607 : vec3<f32> = u_xlat4;
      let x_611 : vec4<f32> = x_33.unity_SpecCube1_BoxMax;
      u_xlat10 = (-(x_607) + vec3<f32>(x_611.x, x_611.y, x_611.z));
      let x_614 : vec3<f32> = u_xlat10;
      let x_615 : vec4<f32> = u_xlat9;
      u_xlat10 = (x_614 / vec3<f32>(x_615.x, x_615.y, x_615.z));
      let x_619 : vec3<f32> = u_xlat4;
      let x_623 : vec4<f32> = x_33.unity_SpecCube1_BoxMin;
      u_xlat11 = (-(x_619) + vec3<f32>(x_623.x, x_623.y, x_623.z));
      let x_626 : vec3<f32> = u_xlat11;
      let x_627 : vec4<f32> = u_xlat9;
      u_xlat11 = (x_626 / vec3<f32>(x_627.x, x_627.y, x_627.z));
      let x_631 : vec4<f32> = u_xlat9;
      let x_633 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_631.x, x_631.y, x_631.z, x_631.x));
      u_xlatb12 = vec3<bool>(x_633.x, x_633.y, x_633.z);
      let x_636 : vec3<f32> = u_xlat10;
      hlslcc_movcTemp_1 = x_636;
      let x_638 : bool = u_xlatb12.x;
      if (x_638) {
        let x_643 : f32 = u_xlat10.x;
        x_639 = x_643;
      } else {
        let x_646 : f32 = u_xlat11.x;
        x_639 = x_646;
      }
      let x_647 : f32 = x_639;
      hlslcc_movcTemp_1.x = x_647;
      let x_650 : bool = u_xlatb12.y;
      if (x_650) {
        let x_655 : f32 = u_xlat10.y;
        x_651 = x_655;
      } else {
        let x_658 : f32 = u_xlat11.y;
        x_651 = x_658;
      }
      let x_659 : f32 = x_651;
      hlslcc_movcTemp_1.y = x_659;
      let x_662 : bool = u_xlatb12.z;
      if (x_662) {
        let x_667 : f32 = u_xlat10.z;
        x_663 = x_667;
      } else {
        let x_670 : f32 = u_xlat11.z;
        x_663 = x_670;
      }
      let x_671 : f32 = x_663;
      hlslcc_movcTemp_1.z = x_671;
      let x_673 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat10 = x_673;
      let x_675 : f32 = u_xlat10.y;
      let x_677 : f32 = u_xlat10.x;
      u_xlat45 = min(x_675, x_677);
      let x_680 : f32 = u_xlat10.z;
      let x_681 : f32 = u_xlat45;
      u_xlat45 = min(x_680, x_681);
      let x_683 : vec3<f32> = u_xlat4;
      let x_685 : vec4<f32> = x_33.unity_SpecCube1_ProbePosition;
      u_xlat4 = (x_683 + -(vec3<f32>(x_685.x, x_685.y, x_685.z)));
      let x_689 : vec4<f32> = u_xlat9;
      let x_691 : f32 = u_xlat45;
      let x_694 : vec3<f32> = u_xlat4;
      let x_695 : vec3<f32> = ((vec3<f32>(x_689.x, x_689.y, x_689.z) * vec3<f32>(x_691, x_691, x_691)) + x_694);
      let x_696 : vec4<f32> = u_xlat5;
      u_xlat5 = vec4<f32>(x_695.x, x_695.y, x_695.z, x_696.w);
    }
    let x_702 : vec4<f32> = u_xlat5;
    let x_704 : f32 = u_xlat41;
    let x_705 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_702.x, x_702.y, x_702.z), x_704);
    u_xlat9 = x_705;
    let x_707 : f32 = u_xlat9.w;
    u_xlat41 = (x_707 + -1.0f);
    let x_711 : f32 = x_33.unity_SpecCube1_HDR.w;
    let x_712 : f32 = u_xlat41;
    u_xlat41 = ((x_711 * x_712) + 1.0f);
    let x_715 : f32 = u_xlat41;
    u_xlat41 = log2(x_715);
    let x_717 : f32 = u_xlat41;
    let x_719 : f32 = x_33.unity_SpecCube1_HDR.y;
    u_xlat41 = (x_717 * x_719);
    let x_721 : f32 = u_xlat41;
    u_xlat41 = exp2(x_721);
    let x_723 : f32 = u_xlat41;
    let x_725 : f32 = x_33.unity_SpecCube1_HDR.x;
    u_xlat41 = (x_723 * x_725);
    let x_727 : vec4<f32> = u_xlat9;
    let x_729 : f32 = u_xlat41;
    u_xlat4 = (vec3<f32>(x_727.x, x_727.y, x_727.z) * vec3<f32>(x_729, x_729, x_729));
    let x_732 : f32 = u_xlat44;
    let x_734 : vec4<f32> = u_xlat7;
    let x_737 : vec3<f32> = u_xlat4;
    let x_739 : vec3<f32> = ((vec3<f32>(x_732, x_732, x_732) * vec3<f32>(x_734.x, x_734.y, x_734.z)) + -(x_737));
    let x_740 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_739.x, x_739.y, x_739.z, x_740.w);
    let x_743 : vec4<f32> = x_33.unity_SpecCube0_BoxMin;
    let x_745 : vec4<f32> = u_xlat5;
    let x_748 : vec3<f32> = u_xlat4;
    u_xlat8 = ((vec3<f32>(x_743.w, x_743.w, x_743.w) * vec3<f32>(x_745.x, x_745.y, x_745.z)) + x_748);
  }
  let x_750 : f32 = u_xlat42;
  let x_752 : vec3<f32> = u_xlat8;
  u_xlat4 = (vec3<f32>(x_750, x_750, x_750) * x_752);
  let x_754 : vec4<f32> = vs_TEXCOORD1;
  let x_757 : f32 = u_xlat40;
  let x_761 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  let x_763 : vec3<f32> = ((-(vec3<f32>(x_754.x, x_754.y, x_754.z)) * vec3<f32>(x_757, x_757, x_757)) + vec3<f32>(x_761.x, x_761.y, x_761.z));
  let x_764 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_763.x, x_763.y, x_763.z, x_764.w);
  let x_766 : vec4<f32> = u_xlat5;
  let x_768 : vec4<f32> = u_xlat5;
  u_xlat40 = dot(vec3<f32>(x_766.x, x_766.y, x_766.z), vec3<f32>(x_768.x, x_768.y, x_768.z));
  let x_771 : f32 = u_xlat40;
  u_xlat40 = max(x_771, 0.001f);
  let x_774 : f32 = u_xlat40;
  u_xlat40 = inverseSqrt(x_774);
  let x_776 : f32 = u_xlat40;
  let x_778 : vec4<f32> = u_xlat5;
  let x_780 : vec3<f32> = (vec3<f32>(x_776, x_776, x_776) * vec3<f32>(x_778.x, x_778.y, x_778.z));
  let x_781 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_780.x, x_780.y, x_780.z, x_781.w);
  let x_783 : vec3<f32> = u_xlat2;
  let x_784 : vec4<f32> = u_xlat3;
  u_xlat40 = dot(x_783, -(vec3<f32>(x_784.x, x_784.y, x_784.z)));
  let x_788 : vec3<f32> = u_xlat2;
  let x_790 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  u_xlat41 = dot(x_788, vec3<f32>(x_790.x, x_790.y, x_790.z));
  let x_793 : f32 = u_xlat41;
  u_xlat41 = clamp(x_793, 0.0f, 1.0f);
  let x_795 : vec3<f32> = u_xlat2;
  let x_796 : vec4<f32> = u_xlat5;
  u_xlat2.x = dot(x_795, vec3<f32>(x_796.x, x_796.y, x_796.z));
  let x_801 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_801, 0.0f, 1.0f);
  let x_806 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  let x_808 : vec4<f32> = u_xlat5;
  u_xlat15.x = dot(vec3<f32>(x_806.x, x_806.y, x_806.z), vec3<f32>(x_808.x, x_808.y, x_808.z));
  let x_813 : f32 = u_xlat15.x;
  u_xlat15.x = clamp(x_813, 0.0f, 1.0f);
  let x_818 : f32 = u_xlat15.x;
  let x_820 : f32 = u_xlat15.x;
  u_xlat28 = (x_818 * x_820);
  let x_822 : f32 = u_xlat28;
  let x_824 : f32 = u_xlat43;
  u_xlat28 = dot(vec2<f32>(x_822, x_822), vec2<f32>(x_824, x_824));
  let x_827 : f32 = u_xlat28;
  u_xlat28 = (x_827 + -0.5f);
  let x_830 : f32 = u_xlat41;
  u_xlat3.x = (-(x_830) + 1.0f);
  let x_836 : f32 = u_xlat3.x;
  let x_838 : f32 = u_xlat3.x;
  u_xlat16 = (x_836 * x_838);
  let x_840 : f32 = u_xlat16;
  let x_841 : f32 = u_xlat16;
  u_xlat16 = (x_840 * x_841);
  let x_844 : f32 = u_xlat3.x;
  let x_845 : f32 = u_xlat16;
  u_xlat3.x = (x_844 * x_845);
  let x_848 : f32 = u_xlat28;
  let x_850 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_848 * x_850) + 1.0f);
  let x_854 : f32 = u_xlat40;
  u_xlat16 = (-(abs(x_854)) + 1.0f);
  let x_859 : f32 = u_xlat16;
  let x_860 : f32 = u_xlat16;
  u_xlat29 = (x_859 * x_860);
  let x_862 : f32 = u_xlat29;
  let x_863 : f32 = u_xlat29;
  u_xlat29 = (x_862 * x_863);
  let x_865 : f32 = u_xlat16;
  let x_866 : f32 = u_xlat29;
  u_xlat16 = (x_865 * x_866);
  let x_868 : f32 = u_xlat28;
  let x_869 : f32 = u_xlat16;
  u_xlat28 = ((x_868 * x_869) + 1.0f);
  let x_872 : f32 = u_xlat28;
  let x_874 : f32 = u_xlat3.x;
  u_xlat28 = (x_872 * x_874);
  let x_876 : f32 = u_xlat41;
  let x_877 : f32 = u_xlat28;
  u_xlat28 = (x_876 * x_877);
  let x_879 : f32 = u_xlat43;
  let x_880 : f32 = u_xlat43;
  u_xlat3.x = (x_879 * x_880);
  let x_884 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_884, 0.002f);
  let x_889 : f32 = u_xlat3.x;
  u_xlat29 = (-(x_889) + 1.0f);
  let x_892 : f32 = u_xlat40;
  let x_894 : f32 = u_xlat29;
  let x_897 : f32 = u_xlat3.x;
  u_xlat42 = ((abs(x_892) * x_894) + x_897);
  let x_899 : f32 = u_xlat41;
  let x_900 : f32 = u_xlat29;
  let x_903 : f32 = u_xlat3.x;
  u_xlat29 = ((x_899 * x_900) + x_903);
  let x_905 : f32 = u_xlat40;
  let x_907 : f32 = u_xlat29;
  u_xlat40 = (abs(x_905) * x_907);
  let x_909 : f32 = u_xlat41;
  let x_910 : f32 = u_xlat42;
  let x_912 : f32 = u_xlat40;
  u_xlat40 = ((x_909 * x_910) + x_912);
  let x_914 : f32 = u_xlat40;
  u_xlat40 = (x_914 + 0.00001f);
  let x_917 : f32 = u_xlat40;
  u_xlat40 = (0.5f / x_917);
  let x_920 : f32 = u_xlat3.x;
  let x_922 : f32 = u_xlat3.x;
  u_xlat29 = (x_920 * x_922);
  let x_925 : f32 = u_xlat2.x;
  let x_926 : f32 = u_xlat29;
  let x_929 : f32 = u_xlat2.x;
  u_xlat42 = ((x_925 * x_926) + -(x_929));
  let x_932 : f32 = u_xlat42;
  let x_934 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_932 * x_934) + 1.0f);
  let x_938 : f32 = u_xlat29;
  u_xlat29 = (x_938 * 0.318309873f);
  let x_942 : f32 = u_xlat2.x;
  let x_944 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_942 * x_944) + 0.0000001f);
  let x_949 : f32 = u_xlat29;
  let x_951 : f32 = u_xlat2.x;
  u_xlat2.x = (x_949 / x_951);
  let x_954 : f32 = u_xlat40;
  let x_956 : f32 = u_xlat2.x;
  u_xlat40 = (x_954 * x_956);
  let x_958 : f32 = u_xlat41;
  let x_959 : f32 = u_xlat40;
  u_xlat40 = (x_958 * x_959);
  let x_961 : f32 = u_xlat40;
  u_xlat40 = (x_961 * 3.141592741f);
  let x_964 : f32 = u_xlat40;
  u_xlat40 = max(x_964, 0.0f);
  let x_967 : f32 = u_xlat3.x;
  let x_969 : f32 = u_xlat3.x;
  u_xlat2.x = ((x_967 * x_969) + 1.0f);
  let x_974 : f32 = u_xlat2.x;
  u_xlat2.x = (1.0f / x_974);
  let x_977 : vec3<f32> = u_xlat0;
  let x_978 : vec3<f32> = u_xlat0;
  u_xlat41 = dot(x_977, x_978);
  let x_980 : f32 = u_xlat41;
  u_xlatb41 = !((x_980 == 0.0f));
  let x_982 : bool = u_xlatb41;
  u_xlat41 = select(0.0f, 1.0f, x_982);
  let x_984 : f32 = u_xlat40;
  let x_985 : f32 = u_xlat41;
  u_xlat40 = (x_984 * x_985);
  let x_987 : f32 = u_xlat39;
  let x_990 : f32 = x_33.x_Glossiness;
  u_xlat39 = (-(x_987) + x_990);
  let x_992 : f32 = u_xlat39;
  u_xlat39 = (x_992 + 1.0f);
  let x_994 : f32 = u_xlat39;
  u_xlat39 = clamp(x_994, 0.0f, 1.0f);
  let x_996 : f32 = u_xlat28;
  let x_998 : vec3<f32> = u_xlat6;
  let x_999 : vec3<f32> = (vec3<f32>(x_996, x_996, x_996) * x_998);
  let x_1000 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_999.x, x_1000.y, x_999.y, x_999.z);
  let x_1002 : vec3<f32> = u_xlat6;
  let x_1003 : f32 = u_xlat40;
  let x_1005 : vec3<f32> = (x_1002 * vec3<f32>(x_1003, x_1003, x_1003));
  let x_1006 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1005.x, x_1005.y, x_1005.z, x_1006.w);
  let x_1009 : f32 = u_xlat15.x;
  u_xlat40 = (-(x_1009) + 1.0f);
  let x_1012 : f32 = u_xlat40;
  let x_1013 : f32 = u_xlat40;
  u_xlat15.x = (x_1012 * x_1013);
  let x_1017 : f32 = u_xlat15.x;
  let x_1019 : f32 = u_xlat15.x;
  u_xlat15.x = (x_1017 * x_1019);
  let x_1022 : f32 = u_xlat40;
  let x_1024 : f32 = u_xlat15.x;
  u_xlat40 = (x_1022 * x_1024);
  let x_1026 : vec3<f32> = u_xlat0;
  u_xlat15 = (-(x_1026) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1030 : vec3<f32> = u_xlat15;
  let x_1031 : f32 = u_xlat40;
  let x_1034 : vec3<f32> = u_xlat0;
  u_xlat15 = ((x_1030 * vec3<f32>(x_1031, x_1031, x_1031)) + x_1034);
  let x_1036 : vec3<f32> = u_xlat15;
  let x_1037 : vec4<f32> = u_xlat5;
  u_xlat15 = (x_1036 * vec3<f32>(x_1037.x, x_1037.y, x_1037.z));
  let x_1040 : vec3<f32> = u_xlat1;
  let x_1041 : vec4<f32> = u_xlat3;
  let x_1044 : vec3<f32> = u_xlat15;
  u_xlat1 = ((x_1040 * vec3<f32>(x_1041.x, x_1041.z, x_1041.w)) + x_1044);
  let x_1046 : vec3<f32> = u_xlat4;
  let x_1047 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1046 * vec3<f32>(x_1047.x, x_1047.x, x_1047.x));
  let x_1050 : vec3<f32> = u_xlat0;
  let x_1052 : f32 = u_xlat39;
  let x_1054 : vec3<f32> = (-(x_1050) + vec3<f32>(x_1052, x_1052, x_1052));
  let x_1055 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1054.x, x_1055.y, x_1054.y, x_1054.z);
  let x_1057 : f32 = u_xlat16;
  let x_1059 : vec4<f32> = u_xlat3;
  let x_1062 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1057, x_1057, x_1057) * vec3<f32>(x_1059.x, x_1059.z, x_1059.w)) + x_1062);
  let x_1066 : vec3<f32> = u_xlat2;
  let x_1067 : vec3<f32> = u_xlat0;
  let x_1069 : vec3<f32> = u_xlat1;
  let x_1070 : vec3<f32> = ((x_1066 * x_1067) + x_1069);
  let x_1071 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1070.x, x_1070.y, x_1070.z, x_1071.w);
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

