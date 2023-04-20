diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(8) */
  x_AlphaToMaskAvailable : f32,
  /* @offset(16) */
  x_MainLightPosition : vec4<f32>,
  /* @offset(32) */
  x_MainLightColor : vec4<f32>,
  /* @offset(48) */
  x_AdditionalLightsCount : vec4<f32>,
  /* @offset(64) */
  x_WorldSpaceCameraPos : vec3<f32>,
  /* @offset(76) */
  x_DitheringTextureInvSize : f32,
}

struct UnityPerMaterial {
  /* @offset(0) */
  x_BaseMap_ST : vec4<f32>,
  /* @offset(16) */
  x_BaseColor : vec4<f32>,
  /* @offset(32) */
  x_SpecColor : vec4<f32>,
  /* @offset(48) */
  x_EmissionColor : vec4<f32>,
  /* @offset(64) */
  x_Cutoff : f32,
  /* @offset(68) */
  x_Surface : f32,
}

alias Arr = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  /* @offset(0) */
  unity_ObjectToWorld : mat4x4<f32>,
  /* @offset(64) */
  unity_WorldToObject : mat4x4<f32>,
  /* @offset(128) */
  unity_LODFade : vec4<f32>,
  /* @offset(144) */
  unity_WorldTransformParams : vec4<f32>,
  /* @offset(160) */
  unity_RenderingLayer : vec4<f32>,
  /* @offset(176) */
  unity_LightData : vec4<f32>,
  /* @offset(192) */
  unity_LightIndices : Arr,
  /* @offset(224) */
  unity_ProbesOcclusion : vec4<f32>,
  /* @offset(240) */
  unity_SpecCube0_HDR : vec4<f32>,
  /* @offset(256) */
  unity_SpecCube1_HDR : vec4<f32>,
  /* @offset(272) */
  unity_SpecCube0_BoxMax : vec4<f32>,
  /* @offset(288) */
  unity_SpecCube0_BoxMin : vec4<f32>,
  /* @offset(304) */
  unity_SpecCube0_ProbePosition : vec4<f32>,
  /* @offset(320) */
  unity_SpecCube1_BoxMax : vec4<f32>,
  /* @offset(336) */
  unity_SpecCube1_BoxMin : vec4<f32>,
  /* @offset(352) */
  unity_SpecCube1_ProbePosition : vec4<f32>,
  /* @offset(368) */
  unity_LightmapST : vec4<f32>,
  /* @offset(384) */
  unity_DynamicLightmapST : vec4<f32>,
  /* @offset(400) */
  unity_SHAr : vec4<f32>,
  /* @offset(416) */
  unity_SHAg : vec4<f32>,
  /* @offset(432) */
  unity_SHAb : vec4<f32>,
  /* @offset(448) */
  unity_SHBr : vec4<f32>,
  /* @offset(464) */
  unity_SHBg : vec4<f32>,
  /* @offset(480) */
  unity_SHBb : vec4<f32>,
  /* @offset(496) */
  unity_SHC : vec4<f32>,
  /* @offset(512) */
  unity_RendererBounds_Min : vec4<f32>,
  /* @offset(528) */
  unity_RendererBounds_Max : vec4<f32>,
  /* @offset(544) */
  unity_MatrixPreviousM : mat4x4<f32>,
  /* @offset(608) */
  unity_MatrixPreviousMI : mat4x4<f32>,
  /* @offset(672) */
  unity_MotionVectorsParams : vec4<f32>,
  /* @offset(688) */
  unity_SpriteColor : vec4<f32>,
  /* @offset(704) */
  unity_SpriteProps : vec4<f32>,
}

alias Arr_1 = array<mat4x4<f32>, 5u>;

alias Arr_2 = array<vec4<f32>, 32u>;

alias Arr_3 = array<mat4x4<f32>, 32u>;

alias Arr_4 = array<vec4<f32>, 32u>;

struct LightShadows {
  /* @offset(0) */
  x_MainLightWorldToShadow : Arr_1,
  /* @offset(320) */
  x_CascadeShadowSplitSpheres0 : vec4<f32>,
  /* @offset(336) */
  x_CascadeShadowSplitSpheres1 : vec4<f32>,
  /* @offset(352) */
  x_CascadeShadowSplitSpheres2 : vec4<f32>,
  /* @offset(368) */
  x_CascadeShadowSplitSpheres3 : vec4<f32>,
  /* @offset(384) */
  x_CascadeShadowSplitSphereRadii : vec4<f32>,
  /* @offset(400) */
  x_MainLightShadowOffset0 : vec4<f32>,
  /* @offset(416) */
  x_MainLightShadowOffset1 : vec4<f32>,
  /* @offset(432) */
  x_MainLightShadowParams : vec4<f32>,
  /* @offset(448) */
  x_MainLightShadowmapSize : vec4<f32>,
  /* @offset(464) */
  x_AdditionalShadowOffset0 : vec4<f32>,
  /* @offset(480) */
  x_AdditionalShadowOffset1 : vec4<f32>,
  /* @offset(496) */
  x_AdditionalShadowFadeParams : vec4<f32>,
  /* @offset(512) */
  x_AdditionalShadowmapSize : vec4<f32>,
  /* @offset(528) */
  x_AdditionalShadowParams : Arr_4,
  /* @offset(1040) */
  x_AdditionalLightsWorldToShadow : Arr_3,
}

alias Arr_5 = array<vec4<f32>, 32u>;

alias Arr_6 = array<vec4<f32>, 32u>;

alias Arr_7 = array<vec4<f32>, 32u>;

alias Arr_8 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_9 = array<strided_arr, 32u>;

struct AdditionalLights {
  /* @offset(0) */
  x_AdditionalLightsPosition : Arr_4,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_4,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_4,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_4,
  /* @offset(2048) */
  x_AdditionalLightsOcclusionProbes : Arr_4,
  /* @offset(2560) */
  x_AdditionalLightsLayerMasks : Arr_9,
}

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(4) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

var<private> u_xlatb0 : bool;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlat16 : f32;

var<private> u_xlat24 : f32;

var<private> u_xlatb16 : bool;

var<private> u_xlatb8 : bool;

@group(0) @binding(3) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_PointRepeat : sampler;

var<private> u_xlatb24 : bool;

@group(1) @binding(2) var<uniform> x_186 : UnityPerDraw;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(4) var<uniform> x_348 : LightShadows;

var<private> u_xlatb1 : bool;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat26 : f32;

var<private> u_xlatu8 : u32;

var<private> u_xlatu26 : u32;

var<private> u_xlati27 : i32;

var<private> u_xlati26 : i32;

var<private> u_xlat6 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_546 : AdditionalLights;

var<private> u_xlat27 : f32;

var<private> u_xlat28 : f32;

var<private> u_xlati28 : i32;

var<private> u_xlatb29 : bool;

var<private> u_xlatb7 : vec4<bool>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat30 : f32;

var<private> u_xlat29 : f32;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb30 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatu1 : u32;

var<private> u_xlatb26 : bool;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_76 : f32;
  var x_132 : f32;
  var x_192 : f32;
  var txVec0 : vec3<f32>;
  var x_373 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_681 : f32;
  var x_691 : f32;
  var txVec1 : vec3<f32>;
  var x_871 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_41 : vec2<f32> = vs_TEXCOORD0;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_41, x_50);
  u_xlat0 = x_51;
  let x_53 : vec4<f32> = u_xlat0;
  let x_61 : vec4<f32> = x_57.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_53.w, x_53.x, x_53.y, x_53.z) * vec4<f32>(x_61.w, x_61.x, x_61.y, x_61.z));
  let x_69 : f32 = u_xlat1.x;
  let x_72 : f32 = x_57.x_Cutoff;
  u_xlatb0 = (x_69 >= x_72);
  let x_74 : bool = u_xlatb0;
  if (x_74) {
    let x_80 : f32 = u_xlat1.x;
    x_76 = x_80;
  } else {
    x_76 = 0.0f;
  }
  let x_83 : f32 = x_76;
  u_xlat0.x = x_83;
  let x_88 : f32 = u_xlat0.w;
  let x_90 : f32 = x_57.x_BaseColor.w;
  let x_93 : f32 = x_57.x_Cutoff;
  u_xlat8.x = ((x_88 * x_90) + -(x_93));
  let x_99 : f32 = u_xlat1.x;
  u_xlat16 = dpdxCoarse(x_99);
  let x_103 : f32 = u_xlat1.x;
  u_xlat24 = dpdyCoarse(x_103);
  let x_105 : f32 = u_xlat24;
  let x_107 : f32 = u_xlat16;
  u_xlat16 = (abs(x_105) + abs(x_107));
  let x_110 : f32 = u_xlat16;
  u_xlat16 = max(x_110, 0.00009999999747378752f);
  let x_114 : f32 = u_xlat8.x;
  let x_115 : f32 = u_xlat16;
  u_xlat8.x = (x_114 / x_115);
  let x_119 : f32 = u_xlat8.x;
  u_xlat8.x = (x_119 + 0.5f);
  let x_124 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_124, 0.0f, 1.0f);
  let x_129 : f32 = x_44.x_AlphaToMaskAvailable;
  u_xlatb16 = !((x_129 == 0.0f));
  let x_131 : bool = u_xlatb16;
  if (x_131) {
    let x_136 : f32 = u_xlat8.x;
    x_132 = x_136;
  } else {
    let x_139 : f32 = u_xlat0.x;
    x_132 = x_139;
  }
  let x_140 : f32 = x_132;
  u_xlat0.x = x_140;
  let x_143 : f32 = u_xlat0.x;
  u_xlat8.x = (x_143 + -0.00009999999747378752f);
  let x_149 : f32 = u_xlat8.x;
  u_xlatb8 = (x_149 < 0.0f);
  let x_151 : bool = u_xlatb8;
  if (((select(0i, 1i, x_151) * -1i) != 0i)) {
    discard;
  }
  let x_159 : vec4<f32> = hlslcc_FragCoord;
  let x_163 : f32 = x_44.x_DitheringTextureInvSize;
  let x_165 : vec2<f32> = (vec2<f32>(x_159.x, x_159.y) * vec2<f32>(x_163, x_163));
  let x_166 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_165.x, x_166.y, x_165.y);
  let x_173 : vec3<f32> = u_xlat8;
  let x_176 : f32 = x_44.x_GlobalMipBias.x;
  let x_177 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_PointRepeat, vec2<f32>(x_173.x, x_173.z), x_176);
  u_xlat8.x = x_177.w;
  let x_189 : f32 = x_186.unity_LODFade.x;
  u_xlatb24 = (x_189 >= 0.0f);
  let x_191 : bool = u_xlatb24;
  if (x_191) {
    let x_196 : f32 = u_xlat8.x;
    x_192 = abs(x_196);
  } else {
    let x_200 : f32 = u_xlat8.x;
    x_192 = -(abs(x_200));
  }
  let x_203 : f32 = x_192;
  u_xlat8.x = x_203;
  let x_206 : f32 = u_xlat8.x;
  let x_209 : f32 = x_186.unity_LODFade.x;
  u_xlat8.x = (-(x_206) + x_209);
  let x_213 : f32 = u_xlat8.x;
  u_xlatb8 = (x_213 < 0.0f);
  let x_215 : bool = u_xlatb8;
  if (((select(0i, 1i, x_215) * -1i) != 0i)) {
    discard;
  }
  let x_224 : vec3<f32> = vs_TEXCOORD2;
  let x_225 : vec3<f32> = vs_TEXCOORD2;
  u_xlat8.x = dot(x_224, x_225);
  let x_229 : f32 = u_xlat8.x;
  u_xlat8.x = inverseSqrt(x_229);
  let x_233 : vec3<f32> = u_xlat8;
  let x_235 : vec3<f32> = vs_TEXCOORD2;
  let x_236 : vec3<f32> = (vec3<f32>(x_233.x, x_233.x, x_233.x) * x_235);
  let x_237 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_236.x, x_236.y, x_236.z, x_237.w);
  u_xlat2.w = 1.0f;
  let x_243 : vec4<f32> = x_186.unity_SHAr;
  let x_244 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_243, x_244);
  let x_249 : vec4<f32> = x_186.unity_SHAg;
  let x_250 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_249, x_250);
  let x_256 : vec4<f32> = x_186.unity_SHAb;
  let x_257 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_256, x_257);
  let x_261 : vec4<f32> = u_xlat2;
  let x_263 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_261.y, x_261.z, x_261.z, x_261.x) * vec4<f32>(x_263.x, x_263.y, x_263.z, x_263.z));
  let x_269 : vec4<f32> = x_186.unity_SHBr;
  let x_270 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_269, x_270);
  let x_275 : vec4<f32> = x_186.unity_SHBg;
  let x_276 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_275, x_276);
  let x_281 : vec4<f32> = x_186.unity_SHBb;
  let x_282 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_281, x_282);
  let x_286 : f32 = u_xlat2.y;
  let x_288 : f32 = u_xlat2.y;
  u_xlat8.x = (x_286 * x_288);
  let x_292 : f32 = u_xlat2.x;
  let x_294 : f32 = u_xlat2.x;
  let x_297 : f32 = u_xlat8.x;
  u_xlat8.x = ((x_292 * x_294) + -(x_297));
  let x_303 : vec4<f32> = x_186.unity_SHC;
  let x_305 : vec3<f32> = u_xlat8;
  let x_308 : vec3<f32> = u_xlat5;
  let x_309 : vec3<f32> = ((vec3<f32>(x_303.x, x_303.y, x_303.z) * vec3<f32>(x_305.x, x_305.x, x_305.x)) + x_308);
  let x_310 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_309.x, x_309.y, x_309.z, x_310.w);
  let x_312 : vec3<f32> = u_xlat3;
  let x_313 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_312 + vec3<f32>(x_313.x, x_313.y, x_313.z));
  let x_316 : vec3<f32> = u_xlat3;
  u_xlat3 = max(x_316, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_322 : vec4<f32> = vs_TEXCOORD6;
  let x_323 : vec2<f32> = vec2<f32>(x_322.x, x_322.y);
  let x_325 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_323.x, x_323.y, x_325);
  let x_337 : vec3<f32> = txVec0;
  let x_339 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_337.xy, x_337.z);
  u_xlat8.x = x_339;
  let x_351 : f32 = x_348.x_MainLightShadowParams.x;
  u_xlat24 = (-(x_351) + 1.0f);
  let x_355 : f32 = u_xlat8.x;
  let x_357 : f32 = x_348.x_MainLightShadowParams.x;
  let x_359 : f32 = u_xlat24;
  u_xlat8.x = ((x_355 * x_357) + x_359);
  let x_363 : f32 = vs_TEXCOORD6.z;
  u_xlatb24 = (0.0f >= x_363);
  let x_367 : f32 = vs_TEXCOORD6.z;
  u_xlatb1 = (x_367 >= 1.0f);
  let x_369 : bool = u_xlatb24;
  let x_370 : bool = u_xlatb1;
  u_xlatb24 = (x_369 | x_370);
  let x_372 : bool = u_xlatb24;
  if (x_372) {
    x_373 = 1.0f;
  } else {
    let x_378 : f32 = u_xlat8.x;
    x_373 = x_378;
  }
  let x_379 : f32 = x_373;
  u_xlat8.x = x_379;
  let x_382 : vec3<f32> = vs_TEXCOORD1;
  let x_386 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_388 : vec3<f32> = (x_382 + -(x_386));
  let x_389 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_388.x, x_388.y, x_388.z, x_389.w);
  let x_391 : vec4<f32> = u_xlat4;
  let x_393 : vec4<f32> = u_xlat4;
  u_xlat24 = dot(vec3<f32>(x_391.x, x_391.y, x_391.z), vec3<f32>(x_393.x, x_393.y, x_393.z));
  let x_396 : f32 = u_xlat24;
  let x_398 : f32 = x_348.x_MainLightShadowParams.z;
  let x_401 : f32 = x_348.x_MainLightShadowParams.w;
  u_xlat1.x = ((x_396 * x_398) + x_401);
  let x_405 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_405, 0.0f, 1.0f);
  let x_410 : f32 = u_xlat8.x;
  u_xlat26 = (-(x_410) + 1.0f);
  let x_414 : f32 = u_xlat1.x;
  let x_415 : f32 = u_xlat26;
  let x_418 : f32 = u_xlat8.x;
  u_xlat8.x = ((x_414 * x_415) + x_418);
  let x_422 : f32 = u_xlat8.x;
  let x_424 : f32 = x_186.unity_LightData.z;
  u_xlat8.x = (x_422 * x_424);
  let x_427 : vec3<f32> = u_xlat8;
  let x_431 : vec4<f32> = x_44.x_MainLightColor;
  let x_433 : vec3<f32> = (vec3<f32>(x_427.x, x_427.x, x_427.x) * vec3<f32>(x_431.x, x_431.y, x_431.z));
  let x_434 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_433.x, x_433.y, x_433.z, x_434.w);
  let x_436 : vec4<f32> = u_xlat2;
  let x_439 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat8.x = dot(vec3<f32>(x_436.x, x_436.y, x_436.z), vec3<f32>(x_439.x, x_439.y, x_439.z));
  let x_444 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_444, 0.0f, 1.0f);
  let x_447 : vec3<f32> = u_xlat8;
  let x_449 : vec4<f32> = u_xlat4;
  let x_451 : vec3<f32> = (vec3<f32>(x_447.x, x_447.x, x_447.x) * vec3<f32>(x_449.x, x_449.y, x_449.z));
  let x_452 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_451.x, x_451.y, x_451.z, x_452.w);
  let x_454 : vec4<f32> = u_xlat1;
  let x_456 : vec4<f32> = u_xlat4;
  let x_458 : vec3<f32> = (vec3<f32>(x_454.y, x_454.z, x_454.w) * vec3<f32>(x_456.x, x_456.y, x_456.z));
  let x_459 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_458.x, x_458.y, x_458.z, x_459.w);
  let x_461 : vec4<f32> = u_xlat0;
  let x_463 : vec4<f32> = u_xlat4;
  let x_465 : vec3<f32> = (vec3<f32>(x_461.x, x_461.x, x_461.x) * vec3<f32>(x_463.x, x_463.y, x_463.z));
  let x_466 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_465.x, x_465.y, x_465.z, x_466.w);
  let x_469 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_471 : f32 = x_186.unity_LightData.y;
  u_xlat8.x = min(x_469, x_471);
  let x_477 : f32 = u_xlat8.x;
  u_xlatu8 = bitcast<u32>(i32(x_477));
  let x_480 : f32 = u_xlat24;
  let x_483 : f32 = x_348.x_AdditionalShadowFadeParams.x;
  let x_486 : f32 = x_348.x_AdditionalShadowFadeParams.y;
  u_xlat24 = ((x_480 * x_483) + x_486);
  let x_488 : f32 = u_xlat24;
  u_xlat24 = clamp(x_488, 0.0f, 1.0f);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_500 : u32 = u_xlatu_loop_1;
    let x_501 : u32 = u_xlatu8;
    if ((x_500 < x_501)) {
    } else {
      break;
    }
    let x_504 : u32 = u_xlatu_loop_1;
    u_xlatu26 = (x_504 >> 2u);
    let x_508 : u32 = u_xlatu_loop_1;
    u_xlati27 = bitcast<i32>((x_508 & 3u));
    let x_511 : u32 = u_xlatu26;
    let x_514 : vec4<f32> = x_186.unity_LightIndices[bitcast<i32>(x_511)];
    let x_524 : i32 = u_xlati27;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_529 : vec4<u32> = indexable[x_524];
    u_xlat26 = dot(x_514, bitcast<vec4<f32>>(x_529));
    let x_533 : f32 = u_xlat26;
    u_xlati26 = i32(x_533);
    let x_536 : vec3<f32> = vs_TEXCOORD1;
    let x_547 : i32 = u_xlati26;
    let x_549 : vec4<f32> = x_546.x_AdditionalLightsPosition[x_547];
    let x_552 : i32 = u_xlati26;
    let x_554 : vec4<f32> = x_546.x_AdditionalLightsPosition[x_552];
    u_xlat6 = ((-(x_536) * vec3<f32>(x_549.w, x_549.w, x_549.w)) + vec3<f32>(x_554.x, x_554.y, x_554.z));
    let x_558 : vec3<f32> = u_xlat6;
    let x_559 : vec3<f32> = u_xlat6;
    u_xlat27 = dot(x_558, x_559);
    let x_561 : f32 = u_xlat27;
    u_xlat27 = max(x_561, 0.00006103515625f);
    let x_565 : f32 = u_xlat27;
    u_xlat28 = inverseSqrt(x_565);
    let x_567 : f32 = u_xlat28;
    let x_569 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_567, x_567, x_567) * x_569);
    let x_571 : f32 = u_xlat27;
    u_xlat28 = (1.0f / x_571);
    let x_573 : f32 = u_xlat27;
    let x_574 : i32 = u_xlati26;
    let x_576 : f32 = x_546.x_AdditionalLightsAttenuation[x_574].x;
    u_xlat27 = (x_573 * x_576);
    let x_578 : f32 = u_xlat27;
    let x_580 : f32 = u_xlat27;
    u_xlat27 = ((-(x_578) * x_580) + 1.0f);
    let x_583 : f32 = u_xlat27;
    u_xlat27 = max(x_583, 0.0f);
    let x_585 : f32 = u_xlat27;
    let x_586 : f32 = u_xlat27;
    u_xlat27 = (x_585 * x_586);
    let x_588 : f32 = u_xlat27;
    let x_589 : f32 = u_xlat28;
    u_xlat27 = (x_588 * x_589);
    let x_591 : i32 = u_xlati26;
    let x_593 : vec4<f32> = x_546.x_AdditionalLightsSpotDir[x_591];
    let x_595 : vec3<f32> = u_xlat6;
    u_xlat28 = dot(vec3<f32>(x_593.x, x_593.y, x_593.z), x_595);
    let x_597 : f32 = u_xlat28;
    let x_598 : i32 = u_xlati26;
    let x_600 : f32 = x_546.x_AdditionalLightsAttenuation[x_598].z;
    let x_602 : i32 = u_xlati26;
    let x_604 : f32 = x_546.x_AdditionalLightsAttenuation[x_602].w;
    u_xlat28 = ((x_597 * x_600) + x_604);
    let x_606 : f32 = u_xlat28;
    u_xlat28 = clamp(x_606, 0.0f, 1.0f);
    let x_608 : f32 = u_xlat28;
    let x_609 : f32 = u_xlat28;
    u_xlat28 = (x_608 * x_609);
    let x_611 : f32 = u_xlat27;
    let x_612 : f32 = u_xlat28;
    u_xlat27 = (x_611 * x_612);
    let x_616 : i32 = u_xlati26;
    let x_618 : f32 = x_348.x_AdditionalShadowParams[x_616].w;
    u_xlati28 = i32(x_618);
    let x_621 : i32 = u_xlati28;
    u_xlatb29 = (x_621 >= 0i);
    let x_623 : bool = u_xlatb29;
    if (x_623) {
      let x_627 : i32 = u_xlati26;
      let x_629 : f32 = x_348.x_AdditionalShadowParams[x_627].z;
      u_xlatb29 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_629, x_629, x_629, x_629))));
      let x_634 : bool = u_xlatb29;
      if (x_634) {
        let x_639 : vec3<f32> = u_xlat6;
        let x_642 : vec3<f32> = u_xlat6;
        let x_645 : vec4<bool> = (abs(vec4<f32>(x_639.z, x_639.z, x_639.y, x_639.z)) >= abs(vec4<f32>(x_642.x, x_642.y, x_642.x, x_642.x)));
        let x_647 : vec3<bool> = vec3<bool>(x_645.x, x_645.y, x_645.z);
        let x_648 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_647.x, x_647.y, x_647.z, x_648.w);
        let x_651 : bool = u_xlatb7.y;
        let x_653 : bool = u_xlatb7.x;
        u_xlatb29 = (x_651 & x_653);
        let x_655 : vec3<f32> = u_xlat6;
        let x_658 : vec4<bool> = (-(vec4<f32>(x_655.z, x_655.y, x_655.z, x_655.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_659 : vec3<bool> = vec3<bool>(x_658.x, x_658.y, x_658.w);
        let x_660 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_659.x, x_659.y, x_660.z, x_659.z);
        let x_664 : bool = u_xlatb7.x;
        u_xlat7.x = select(4.0f, 5.0f, x_664);
        let x_670 : bool = u_xlatb7.y;
        u_xlat7.y = select(2.0f, 3.0f, x_670);
        let x_677 : bool = u_xlatb7.w;
        u_xlat30 = select(0.0f, 1.0f, x_677);
        let x_680 : bool = u_xlatb7.z;
        if (x_680) {
          let x_685 : f32 = u_xlat7.y;
          x_681 = x_685;
        } else {
          let x_687 : f32 = u_xlat30;
          x_681 = x_687;
        }
        let x_688 : f32 = x_681;
        u_xlat30 = x_688;
        let x_690 : bool = u_xlatb29;
        if (x_690) {
          let x_695 : f32 = u_xlat7.x;
          x_691 = x_695;
        } else {
          let x_697 : f32 = u_xlat30;
          x_691 = x_697;
        }
        let x_698 : f32 = x_691;
        u_xlat29 = x_698;
        let x_699 : i32 = u_xlati26;
        let x_701 : f32 = x_348.x_AdditionalShadowParams[x_699].w;
        u_xlat30 = trunc(x_701);
        let x_703 : f32 = u_xlat29;
        let x_704 : f32 = u_xlat30;
        u_xlat29 = (x_703 + x_704);
        let x_706 : f32 = u_xlat29;
        u_xlati28 = i32(x_706);
      }
      let x_708 : i32 = u_xlati28;
      u_xlati28 = (x_708 << bitcast<u32>(2i));
      let x_710 : vec3<f32> = vs_TEXCOORD1;
      let x_713 : i32 = u_xlati28;
      let x_716 : i32 = u_xlati28;
      let x_720 : vec4<f32> = x_348.x_AdditionalLightsWorldToShadow[((x_713 + 1i) / 4i)][((x_716 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_710.y, x_710.y, x_710.y, x_710.y) * x_720);
      let x_722 : i32 = u_xlati28;
      let x_724 : i32 = u_xlati28;
      let x_727 : vec4<f32> = x_348.x_AdditionalLightsWorldToShadow[(x_722 / 4i)][(x_724 % 4i)];
      let x_728 : vec3<f32> = vs_TEXCOORD1;
      let x_731 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_727 * vec4<f32>(x_728.x, x_728.x, x_728.x, x_728.x)) + x_731);
      let x_733 : i32 = u_xlati28;
      let x_736 : i32 = u_xlati28;
      let x_740 : vec4<f32> = x_348.x_AdditionalLightsWorldToShadow[((x_733 + 2i) / 4i)][((x_736 + 2i) % 4i)];
      let x_741 : vec3<f32> = vs_TEXCOORD1;
      let x_744 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_740 * vec4<f32>(x_741.z, x_741.z, x_741.z, x_741.z)) + x_744);
      let x_746 : vec4<f32> = u_xlat7;
      let x_747 : i32 = u_xlati28;
      let x_750 : i32 = u_xlati28;
      let x_754 : vec4<f32> = x_348.x_AdditionalLightsWorldToShadow[((x_747 + 3i) / 4i)][((x_750 + 3i) % 4i)];
      u_xlat7 = (x_746 + x_754);
      let x_756 : vec4<f32> = u_xlat7;
      let x_758 : vec4<f32> = u_xlat7;
      let x_760 : vec3<f32> = (vec3<f32>(x_756.x, x_756.y, x_756.z) / vec3<f32>(x_758.w, x_758.w, x_758.w));
      let x_761 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_760.x, x_760.y, x_760.z, x_761.w);
      let x_764 : vec4<f32> = u_xlat7;
      let x_765 : vec2<f32> = vec2<f32>(x_764.x, x_764.y);
      let x_767 : f32 = u_xlat7.z;
      txVec1 = vec3<f32>(x_765.x, x_765.y, x_767);
      let x_775 : vec3<f32> = txVec1;
      let x_777 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_775.xy, x_775.z);
      u_xlat28 = x_777;
      let x_778 : i32 = u_xlati26;
      let x_780 : f32 = x_348.x_AdditionalShadowParams[x_778].x;
      u_xlat29 = (1.0f + -(x_780));
      let x_783 : f32 = u_xlat28;
      let x_784 : i32 = u_xlati26;
      let x_786 : f32 = x_348.x_AdditionalShadowParams[x_784].x;
      let x_788 : f32 = u_xlat29;
      u_xlat28 = ((x_783 * x_786) + x_788);
      let x_791 : f32 = u_xlat7.z;
      u_xlatb29 = (0.0f >= x_791);
      let x_795 : f32 = u_xlat7.z;
      u_xlatb30 = (x_795 >= 1.0f);
      let x_797 : bool = u_xlatb29;
      let x_798 : bool = u_xlatb30;
      u_xlatb29 = (x_797 | x_798);
      let x_800 : bool = u_xlatb29;
      let x_801 : f32 = u_xlat28;
      u_xlat28 = select(x_801, 1.0f, x_800);
    } else {
      u_xlat28 = 1.0f;
    }
    let x_804 : f32 = u_xlat28;
    u_xlat29 = (-(x_804) + 1.0f);
    let x_807 : f32 = u_xlat24;
    let x_808 : f32 = u_xlat29;
    let x_810 : f32 = u_xlat28;
    u_xlat28 = ((x_807 * x_808) + x_810);
    let x_812 : f32 = u_xlat27;
    let x_813 : f32 = u_xlat28;
    u_xlat27 = (x_812 * x_813);
    let x_815 : f32 = u_xlat27;
    let x_817 : i32 = u_xlati26;
    let x_819 : vec4<f32> = x_546.x_AdditionalLightsColor[x_817];
    let x_821 : vec3<f32> = (vec3<f32>(x_815, x_815, x_815) * vec3<f32>(x_819.x, x_819.y, x_819.z));
    let x_822 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_821.x, x_821.y, x_821.z, x_822.w);
    let x_824 : vec4<f32> = u_xlat2;
    let x_826 : vec3<f32> = u_xlat6;
    u_xlat26 = dot(vec3<f32>(x_824.x, x_824.y, x_824.z), x_826);
    let x_828 : f32 = u_xlat26;
    u_xlat26 = clamp(x_828, 0.0f, 1.0f);
    let x_830 : f32 = u_xlat26;
    let x_832 : vec4<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_830, x_830, x_830) * vec3<f32>(x_832.x, x_832.y, x_832.z));
    let x_835 : vec4<f32> = u_xlat1;
    let x_837 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_835.y, x_835.z, x_835.w) * x_837);
    let x_839 : vec3<f32> = u_xlat6;
    let x_840 : vec4<f32> = u_xlat0;
    let x_843 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_839 * vec3<f32>(x_840.x, x_840.x, x_840.x)) + x_843);

    continuing {
      let x_845 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_845 + bitcast<u32>(1i));
    }
  }
  let x_847 : vec3<f32> = u_xlat3;
  let x_848 : vec4<f32> = u_xlat1;
  let x_851 : vec4<f32> = u_xlat4;
  let x_853 : vec3<f32> = ((x_847 * vec3<f32>(x_848.y, x_848.z, x_848.w)) + vec3<f32>(x_851.x, x_851.y, x_851.z));
  let x_854 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_853.x, x_853.y, x_853.z, x_854.w);
  let x_858 : vec3<f32> = u_xlat5;
  let x_859 : vec4<f32> = u_xlat1;
  let x_861 : vec3<f32> = (x_858 + vec3<f32>(x_859.x, x_859.y, x_859.z));
  let x_862 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_861.x, x_861.y, x_861.z, x_862.w);
  let x_865 : f32 = x_57.x_Surface;
  u_xlatb8 = (x_865 == 1.0f);
  let x_867 : bool = u_xlatb8;
  let x_868 : bool = u_xlatb16;
  u_xlatb8 = (x_867 | x_868);
  let x_870 : bool = u_xlatb8;
  if (x_870) {
    let x_875 : f32 = u_xlat0.x;
    x_871 = x_875;
  } else {
    x_871 = 1.0f;
  }
  let x_877 : f32 = x_871;
  SV_Target0.w = x_877;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  main_1();
  return main_out(SV_Target0);
}


