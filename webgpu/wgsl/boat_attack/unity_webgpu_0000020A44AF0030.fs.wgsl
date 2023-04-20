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
  /* @offset(80) */
  x_ProjectionParams : vec4<f32>,
  /* @offset(96) */
  unity_FogParams : vec4<f32>,
  /* @offset(112) */
  unity_FogColor : vec4<f32>,
  /* @offset(128) */
  unity_MatrixV : mat4x4<f32>,
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

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(3) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_42 : UnityPerMaterial;

var<private> u_xlatb0 : bool;

var<private> u_xlat8 : f32;

var<private> u_xlat16 : f32;

var<private> u_xlat24 : f32;

var<private> u_xlatb16 : bool;

var<private> u_xlatb8 : bool;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat3 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_199 : UnityPerDraw;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(4) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(4) var<uniform> x_303 : LightShadows;

var<private> u_xlatb1 : bool;

var<private> u_xlatb26 : bool;

var<private> u_xlat26 : f32;

var<private> u_xlat27 : f32;

var<private> u_xlatu24 : u32;

var<private> u_xlatu27 : u32;

var<private> u_xlati28 : i32;

var<private> u_xlati27 : i32;

var<private> u_xlat6 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_487 : AdditionalLights;

var<private> u_xlat28 : f32;

var<private> u_xlat29 : f32;

var<private> u_xlati29 : i32;

var<private> u_xlatb30 : bool;

var<private> u_xlatb7 : vec4<bool>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat31 : f32;

var<private> u_xlat15 : f32;

var<private> u_xlat30 : f32;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu26 : u32;

var<private> u_xlatb27 : bool;

fn main_1() {
  var x_61 : f32;
  var x_111 : f32;
  var txVec0 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_623 : f32;
  var x_633 : f32;
  var txVec1 : vec3<f32>;
  var x_843 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_35 : f32 = x_28.x_GlobalMipBias.x;
  let x_36 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_35);
  u_xlat0 = x_36;
  let x_38 : vec4<f32> = u_xlat0;
  let x_46 : vec4<f32> = x_42.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_38.w, x_38.x, x_38.y, x_38.z) * vec4<f32>(x_46.w, x_46.x, x_46.y, x_46.z));
  let x_54 : f32 = u_xlat1.x;
  let x_57 : f32 = x_42.x_Cutoff;
  u_xlatb0 = (x_54 >= x_57);
  let x_59 : bool = u_xlatb0;
  if (x_59) {
    let x_65 : f32 = u_xlat1.x;
    x_61 = x_65;
  } else {
    x_61 = 0.0f;
  }
  let x_68 : f32 = x_61;
  u_xlat0.x = x_68;
  let x_73 : f32 = u_xlat0.w;
  let x_75 : f32 = x_42.x_BaseColor.w;
  let x_78 : f32 = x_42.x_Cutoff;
  u_xlat8 = ((x_73 * x_75) + -(x_78));
  let x_83 : f32 = u_xlat1.x;
  u_xlat16 = dpdxCoarse(x_83);
  let x_87 : f32 = u_xlat1.x;
  u_xlat24 = dpdyCoarse(x_87);
  let x_89 : f32 = u_xlat24;
  let x_91 : f32 = u_xlat16;
  u_xlat16 = (abs(x_89) + abs(x_91));
  let x_94 : f32 = u_xlat16;
  u_xlat16 = max(x_94, 0.00009999999747378752f);
  let x_97 : f32 = u_xlat8;
  let x_98 : f32 = u_xlat16;
  u_xlat8 = (x_97 / x_98);
  let x_100 : f32 = u_xlat8;
  u_xlat8 = (x_100 + 0.5f);
  let x_103 : f32 = u_xlat8;
  u_xlat8 = clamp(x_103, 0.0f, 1.0f);
  let x_108 : f32 = x_28.x_AlphaToMaskAvailable;
  u_xlatb16 = !((x_108 == 0.0f));
  let x_110 : bool = u_xlatb16;
  if (x_110) {
    let x_114 : f32 = u_xlat8;
    x_111 = x_114;
  } else {
    let x_117 : f32 = u_xlat0.x;
    x_111 = x_117;
  }
  let x_118 : f32 = x_111;
  u_xlat0.x = x_118;
  let x_121 : f32 = u_xlat0.x;
  u_xlat8 = (x_121 + -0.00009999999747378752f);
  let x_125 : f32 = u_xlat8;
  u_xlatb8 = (x_125 < 0.0f);
  let x_127 : bool = u_xlatb8;
  if (((select(0i, 1i, x_127) * -1i) != 0i)) {
    discard;
  }
  let x_137 : vec3<f32> = vs_TEXCOORD2;
  let x_138 : vec3<f32> = vs_TEXCOORD2;
  u_xlat8 = dot(x_137, x_138);
  let x_140 : f32 = u_xlat8;
  u_xlat8 = inverseSqrt(x_140);
  let x_143 : f32 = u_xlat8;
  let x_145 : vec3<f32> = vs_TEXCOORD2;
  let x_146 : vec3<f32> = (vec3<f32>(x_143, x_143, x_143) * x_145);
  let x_147 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_146.x, x_146.y, x_146.z, x_147.w);
  let x_153 : f32 = vs_TEXCOORD1.y;
  let x_157 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat8 = (x_153 * x_157);
  let x_160 : f32 = x_28.unity_MatrixV[0i].z;
  let x_162 : f32 = vs_TEXCOORD1.x;
  let x_164 : f32 = u_xlat8;
  u_xlat8 = ((x_160 * x_162) + x_164);
  let x_168 : f32 = x_28.unity_MatrixV[2i].z;
  let x_170 : f32 = vs_TEXCOORD1.z;
  let x_172 : f32 = u_xlat8;
  u_xlat8 = ((x_168 * x_170) + x_172);
  let x_174 : f32 = u_xlat8;
  let x_177 : f32 = x_28.unity_MatrixV[3i].z;
  u_xlat8 = (x_174 + x_177);
  let x_179 : f32 = u_xlat8;
  let x_183 : f32 = x_28.x_ProjectionParams.y;
  u_xlat8 = (-(x_179) + -(x_183));
  let x_186 : f32 = u_xlat8;
  u_xlat8 = max(x_186, 0.0f);
  let x_188 : f32 = u_xlat8;
  let x_191 : f32 = x_28.unity_FogParams.x;
  u_xlat8 = (x_188 * x_191);
  u_xlat2.w = 1.0f;
  let x_202 : vec4<f32> = x_199.unity_SHAr;
  let x_203 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_202, x_203);
  let x_208 : vec4<f32> = x_199.unity_SHAg;
  let x_209 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_208, x_209);
  let x_214 : vec4<f32> = x_199.unity_SHAb;
  let x_215 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_214, x_215);
  let x_219 : vec4<f32> = u_xlat2;
  let x_221 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_219.y, x_219.z, x_219.z, x_219.x) * vec4<f32>(x_221.x, x_221.y, x_221.z, x_221.z));
  let x_227 : vec4<f32> = x_199.unity_SHBr;
  let x_228 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_227, x_228);
  let x_233 : vec4<f32> = x_199.unity_SHBg;
  let x_234 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_233, x_234);
  let x_239 : vec4<f32> = x_199.unity_SHBb;
  let x_240 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_239, x_240);
  let x_244 : f32 = u_xlat2.y;
  let x_246 : f32 = u_xlat2.y;
  u_xlat24 = (x_244 * x_246);
  let x_249 : f32 = u_xlat2.x;
  let x_251 : f32 = u_xlat2.x;
  let x_253 : f32 = u_xlat24;
  u_xlat24 = ((x_249 * x_251) + -(x_253));
  let x_258 : vec4<f32> = x_199.unity_SHC;
  let x_260 : f32 = u_xlat24;
  let x_263 : vec3<f32> = u_xlat5;
  let x_264 : vec3<f32> = ((vec3<f32>(x_258.x, x_258.y, x_258.z) * vec3<f32>(x_260, x_260, x_260)) + x_263);
  let x_265 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_264.x, x_264.y, x_264.z, x_265.w);
  let x_267 : vec3<f32> = u_xlat3;
  let x_268 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_267 + vec3<f32>(x_268.x, x_268.y, x_268.z));
  let x_271 : vec3<f32> = u_xlat3;
  u_xlat3 = max(x_271, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_278 : vec4<f32> = vs_TEXCOORD6;
  let x_279 : vec2<f32> = vec2<f32>(x_278.x, x_278.y);
  let x_281 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_279.x, x_279.y, x_281);
  let x_293 : vec3<f32> = txVec0;
  let x_295 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_293.xy, x_293.z);
  u_xlat24 = x_295;
  let x_306 : f32 = x_303.x_MainLightShadowParams.x;
  u_xlat1.x = (-(x_306) + 1.0f);
  let x_310 : f32 = u_xlat24;
  let x_312 : f32 = x_303.x_MainLightShadowParams.x;
  let x_315 : f32 = u_xlat1.x;
  u_xlat24 = ((x_310 * x_312) + x_315);
  let x_319 : f32 = vs_TEXCOORD6.z;
  u_xlatb1 = (0.0f >= x_319);
  let x_323 : f32 = vs_TEXCOORD6.z;
  u_xlatb26 = (x_323 >= 1.0f);
  let x_325 : bool = u_xlatb1;
  let x_326 : bool = u_xlatb26;
  u_xlatb1 = (x_325 | x_326);
  let x_328 : bool = u_xlatb1;
  let x_329 : f32 = u_xlat24;
  u_xlat24 = select(x_329, 1.0f, x_328);
  let x_331 : vec3<f32> = vs_TEXCOORD1;
  let x_335 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_337 : vec3<f32> = (x_331 + -(x_335));
  let x_338 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_337.x, x_337.y, x_337.z, x_338.w);
  let x_340 : vec4<f32> = u_xlat4;
  let x_342 : vec4<f32> = u_xlat4;
  u_xlat1.x = dot(vec3<f32>(x_340.x, x_340.y, x_340.z), vec3<f32>(x_342.x, x_342.y, x_342.z));
  let x_348 : f32 = u_xlat1.x;
  let x_350 : f32 = x_303.x_MainLightShadowParams.z;
  let x_353 : f32 = x_303.x_MainLightShadowParams.w;
  u_xlat26 = ((x_348 * x_350) + x_353);
  let x_355 : f32 = u_xlat26;
  u_xlat26 = clamp(x_355, 0.0f, 1.0f);
  let x_358 : f32 = u_xlat24;
  u_xlat27 = (-(x_358) + 1.0f);
  let x_361 : f32 = u_xlat26;
  let x_362 : f32 = u_xlat27;
  let x_364 : f32 = u_xlat24;
  u_xlat24 = ((x_361 * x_362) + x_364);
  let x_366 : f32 = u_xlat24;
  let x_368 : f32 = x_199.unity_LightData.z;
  u_xlat24 = (x_366 * x_368);
  let x_370 : f32 = u_xlat24;
  let x_373 : vec4<f32> = x_28.x_MainLightColor;
  let x_375 : vec3<f32> = (vec3<f32>(x_370, x_370, x_370) * vec3<f32>(x_373.x, x_373.y, x_373.z));
  let x_376 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_375.x, x_375.y, x_375.z, x_376.w);
  let x_378 : vec4<f32> = u_xlat2;
  let x_381 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat24 = dot(vec3<f32>(x_378.x, x_378.y, x_378.z), vec3<f32>(x_381.x, x_381.y, x_381.z));
  let x_384 : f32 = u_xlat24;
  u_xlat24 = clamp(x_384, 0.0f, 1.0f);
  let x_386 : f32 = u_xlat24;
  let x_388 : vec4<f32> = u_xlat4;
  let x_390 : vec3<f32> = (vec3<f32>(x_386, x_386, x_386) * vec3<f32>(x_388.x, x_388.y, x_388.z));
  let x_391 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_390.x, x_390.y, x_390.z, x_391.w);
  let x_393 : vec4<f32> = u_xlat1;
  let x_395 : vec4<f32> = u_xlat4;
  let x_397 : vec3<f32> = (vec3<f32>(x_393.y, x_393.z, x_393.w) * vec3<f32>(x_395.x, x_395.y, x_395.z));
  let x_398 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_397.x, x_397.y, x_397.z, x_398.w);
  let x_400 : vec4<f32> = u_xlat0;
  let x_402 : vec4<f32> = u_xlat4;
  let x_404 : vec3<f32> = (vec3<f32>(x_400.x, x_400.x, x_400.x) * vec3<f32>(x_402.x, x_402.y, x_402.z));
  let x_405 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_404.x, x_404.y, x_404.z, x_405.w);
  let x_408 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_410 : f32 = x_199.unity_LightData.y;
  u_xlat24 = min(x_408, x_410);
  let x_414 : f32 = u_xlat24;
  u_xlatu24 = bitcast<u32>(i32(x_414));
  let x_418 : f32 = u_xlat1.x;
  let x_421 : f32 = x_303.x_AdditionalShadowFadeParams.x;
  let x_424 : f32 = x_303.x_AdditionalShadowFadeParams.y;
  u_xlat1.x = ((x_418 * x_421) + x_424);
  let x_428 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_428, 0.0f, 1.0f);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_441 : u32 = u_xlatu_loop_1;
    let x_442 : u32 = u_xlatu24;
    if ((x_441 < x_442)) {
    } else {
      break;
    }
    let x_445 : u32 = u_xlatu_loop_1;
    u_xlatu27 = (x_445 >> 2u);
    let x_449 : u32 = u_xlatu_loop_1;
    u_xlati28 = bitcast<i32>((x_449 & 3u));
    let x_452 : u32 = u_xlatu27;
    let x_455 : vec4<f32> = x_199.unity_LightIndices[bitcast<i32>(x_452)];
    let x_465 : i32 = u_xlati28;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_470 : vec4<u32> = indexable[x_465];
    u_xlat27 = dot(x_455, bitcast<vec4<f32>>(x_470));
    let x_474 : f32 = u_xlat27;
    u_xlati27 = i32(x_474);
    let x_477 : vec3<f32> = vs_TEXCOORD1;
    let x_488 : i32 = u_xlati27;
    let x_490 : vec4<f32> = x_487.x_AdditionalLightsPosition[x_488];
    let x_493 : i32 = u_xlati27;
    let x_495 : vec4<f32> = x_487.x_AdditionalLightsPosition[x_493];
    u_xlat6 = ((-(x_477) * vec3<f32>(x_490.w, x_490.w, x_490.w)) + vec3<f32>(x_495.x, x_495.y, x_495.z));
    let x_499 : vec3<f32> = u_xlat6;
    let x_500 : vec3<f32> = u_xlat6;
    u_xlat28 = dot(x_499, x_500);
    let x_502 : f32 = u_xlat28;
    u_xlat28 = max(x_502, 0.00006103515625f);
    let x_506 : f32 = u_xlat28;
    u_xlat29 = inverseSqrt(x_506);
    let x_508 : f32 = u_xlat29;
    let x_510 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_508, x_508, x_508) * x_510);
    let x_512 : f32 = u_xlat28;
    u_xlat29 = (1.0f / x_512);
    let x_514 : f32 = u_xlat28;
    let x_515 : i32 = u_xlati27;
    let x_517 : f32 = x_487.x_AdditionalLightsAttenuation[x_515].x;
    u_xlat28 = (x_514 * x_517);
    let x_519 : f32 = u_xlat28;
    let x_521 : f32 = u_xlat28;
    u_xlat28 = ((-(x_519) * x_521) + 1.0f);
    let x_524 : f32 = u_xlat28;
    u_xlat28 = max(x_524, 0.0f);
    let x_526 : f32 = u_xlat28;
    let x_527 : f32 = u_xlat28;
    u_xlat28 = (x_526 * x_527);
    let x_529 : f32 = u_xlat28;
    let x_530 : f32 = u_xlat29;
    u_xlat28 = (x_529 * x_530);
    let x_532 : i32 = u_xlati27;
    let x_534 : vec4<f32> = x_487.x_AdditionalLightsSpotDir[x_532];
    let x_536 : vec3<f32> = u_xlat6;
    u_xlat29 = dot(vec3<f32>(x_534.x, x_534.y, x_534.z), x_536);
    let x_538 : f32 = u_xlat29;
    let x_539 : i32 = u_xlati27;
    let x_541 : f32 = x_487.x_AdditionalLightsAttenuation[x_539].z;
    let x_543 : i32 = u_xlati27;
    let x_545 : f32 = x_487.x_AdditionalLightsAttenuation[x_543].w;
    u_xlat29 = ((x_538 * x_541) + x_545);
    let x_547 : f32 = u_xlat29;
    u_xlat29 = clamp(x_547, 0.0f, 1.0f);
    let x_549 : f32 = u_xlat29;
    let x_550 : f32 = u_xlat29;
    u_xlat29 = (x_549 * x_550);
    let x_552 : f32 = u_xlat28;
    let x_553 : f32 = u_xlat29;
    u_xlat28 = (x_552 * x_553);
    let x_557 : i32 = u_xlati27;
    let x_559 : f32 = x_303.x_AdditionalShadowParams[x_557].w;
    u_xlati29 = i32(x_559);
    let x_562 : i32 = u_xlati29;
    u_xlatb30 = (x_562 >= 0i);
    let x_564 : bool = u_xlatb30;
    if (x_564) {
      let x_568 : i32 = u_xlati27;
      let x_570 : f32 = x_303.x_AdditionalShadowParams[x_568].z;
      u_xlatb30 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_570, x_570, x_570, x_570))));
      let x_575 : bool = u_xlatb30;
      if (x_575) {
        let x_580 : vec3<f32> = u_xlat6;
        let x_583 : vec3<f32> = u_xlat6;
        let x_586 : vec4<bool> = (abs(vec4<f32>(x_580.z, x_580.z, x_580.y, x_580.z)) >= abs(vec4<f32>(x_583.x, x_583.y, x_583.x, x_583.x)));
        let x_588 : vec3<bool> = vec3<bool>(x_586.x, x_586.y, x_586.z);
        let x_589 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_588.x, x_588.y, x_588.z, x_589.w);
        let x_592 : bool = u_xlatb7.y;
        let x_594 : bool = u_xlatb7.x;
        u_xlatb30 = (x_592 & x_594);
        let x_596 : vec3<f32> = u_xlat6;
        let x_599 : vec4<bool> = (-(vec4<f32>(x_596.z, x_596.y, x_596.z, x_596.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_600 : vec3<bool> = vec3<bool>(x_599.x, x_599.y, x_599.w);
        let x_601 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_600.x, x_600.y, x_601.z, x_600.z);
        let x_605 : bool = u_xlatb7.x;
        u_xlat7.x = select(4.0f, 5.0f, x_605);
        let x_611 : bool = u_xlatb7.y;
        u_xlat7.y = select(2.0f, 3.0f, x_611);
        let x_618 : bool = u_xlatb7.w;
        u_xlat31 = select(0.0f, 1.0f, x_618);
        let x_622 : bool = u_xlatb7.z;
        if (x_622) {
          let x_627 : f32 = u_xlat7.y;
          x_623 = x_627;
        } else {
          let x_629 : f32 = u_xlat31;
          x_623 = x_629;
        }
        let x_630 : f32 = x_623;
        u_xlat15 = x_630;
        let x_632 : bool = u_xlatb30;
        if (x_632) {
          let x_637 : f32 = u_xlat7.x;
          x_633 = x_637;
        } else {
          let x_639 : f32 = u_xlat15;
          x_633 = x_639;
        }
        let x_640 : f32 = x_633;
        u_xlat30 = x_640;
        let x_641 : i32 = u_xlati27;
        let x_643 : f32 = x_303.x_AdditionalShadowParams[x_641].w;
        u_xlat7.x = trunc(x_643);
        let x_646 : f32 = u_xlat30;
        let x_648 : f32 = u_xlat7.x;
        u_xlat30 = (x_646 + x_648);
        let x_650 : f32 = u_xlat30;
        u_xlati29 = i32(x_650);
      }
      let x_652 : i32 = u_xlati29;
      u_xlati29 = (x_652 << bitcast<u32>(2i));
      let x_654 : vec3<f32> = vs_TEXCOORD1;
      let x_657 : i32 = u_xlati29;
      let x_660 : i32 = u_xlati29;
      let x_664 : vec4<f32> = x_303.x_AdditionalLightsWorldToShadow[((x_657 + 1i) / 4i)][((x_660 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_654.y, x_654.y, x_654.y, x_654.y) * x_664);
      let x_666 : i32 = u_xlati29;
      let x_668 : i32 = u_xlati29;
      let x_671 : vec4<f32> = x_303.x_AdditionalLightsWorldToShadow[(x_666 / 4i)][(x_668 % 4i)];
      let x_672 : vec3<f32> = vs_TEXCOORD1;
      let x_675 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_671 * vec4<f32>(x_672.x, x_672.x, x_672.x, x_672.x)) + x_675);
      let x_677 : i32 = u_xlati29;
      let x_680 : i32 = u_xlati29;
      let x_684 : vec4<f32> = x_303.x_AdditionalLightsWorldToShadow[((x_677 + 2i) / 4i)][((x_680 + 2i) % 4i)];
      let x_685 : vec3<f32> = vs_TEXCOORD1;
      let x_688 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_684 * vec4<f32>(x_685.z, x_685.z, x_685.z, x_685.z)) + x_688);
      let x_690 : vec4<f32> = u_xlat7;
      let x_691 : i32 = u_xlati29;
      let x_694 : i32 = u_xlati29;
      let x_698 : vec4<f32> = x_303.x_AdditionalLightsWorldToShadow[((x_691 + 3i) / 4i)][((x_694 + 3i) % 4i)];
      u_xlat7 = (x_690 + x_698);
      let x_700 : vec4<f32> = u_xlat7;
      let x_702 : vec4<f32> = u_xlat7;
      let x_704 : vec3<f32> = (vec3<f32>(x_700.x, x_700.y, x_700.z) / vec3<f32>(x_702.w, x_702.w, x_702.w));
      let x_705 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_704.x, x_704.y, x_704.z, x_705.w);
      let x_708 : vec4<f32> = u_xlat7;
      let x_709 : vec2<f32> = vec2<f32>(x_708.x, x_708.y);
      let x_711 : f32 = u_xlat7.z;
      txVec1 = vec3<f32>(x_709.x, x_709.y, x_711);
      let x_719 : vec3<f32> = txVec1;
      let x_721 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_719.xy, x_719.z);
      u_xlat29 = x_721;
      let x_722 : i32 = u_xlati27;
      let x_724 : f32 = x_303.x_AdditionalShadowParams[x_722].x;
      u_xlat30 = (1.0f + -(x_724));
      let x_727 : f32 = u_xlat29;
      let x_728 : i32 = u_xlati27;
      let x_730 : f32 = x_303.x_AdditionalShadowParams[x_728].x;
      let x_732 : f32 = u_xlat30;
      u_xlat29 = ((x_727 * x_730) + x_732);
      let x_735 : f32 = u_xlat7.z;
      u_xlatb30 = (0.0f >= x_735);
      let x_738 : f32 = u_xlat7.z;
      u_xlatb7.x = (x_738 >= 1.0f);
      let x_741 : bool = u_xlatb30;
      let x_743 : bool = u_xlatb7.x;
      u_xlatb30 = (x_741 | x_743);
      let x_745 : bool = u_xlatb30;
      let x_746 : f32 = u_xlat29;
      u_xlat29 = select(x_746, 1.0f, x_745);
    } else {
      u_xlat29 = 1.0f;
    }
    let x_749 : f32 = u_xlat29;
    u_xlat30 = (-(x_749) + 1.0f);
    let x_753 : f32 = u_xlat1.x;
    let x_754 : f32 = u_xlat30;
    let x_756 : f32 = u_xlat29;
    u_xlat29 = ((x_753 * x_754) + x_756);
    let x_758 : f32 = u_xlat28;
    let x_759 : f32 = u_xlat29;
    u_xlat28 = (x_758 * x_759);
    let x_761 : f32 = u_xlat28;
    let x_763 : i32 = u_xlati27;
    let x_765 : vec4<f32> = x_487.x_AdditionalLightsColor[x_763];
    let x_767 : vec3<f32> = (vec3<f32>(x_761, x_761, x_761) * vec3<f32>(x_765.x, x_765.y, x_765.z));
    let x_768 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_767.x, x_767.y, x_767.z, x_768.w);
    let x_770 : vec4<f32> = u_xlat2;
    let x_772 : vec3<f32> = u_xlat6;
    u_xlat27 = dot(vec3<f32>(x_770.x, x_770.y, x_770.z), x_772);
    let x_774 : f32 = u_xlat27;
    u_xlat27 = clamp(x_774, 0.0f, 1.0f);
    let x_776 : f32 = u_xlat27;
    let x_778 : vec4<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_776, x_776, x_776) * vec3<f32>(x_778.x, x_778.y, x_778.z));
    let x_781 : vec4<f32> = u_xlat1;
    let x_783 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_781.y, x_781.z, x_781.w) * x_783);
    let x_785 : vec3<f32> = u_xlat6;
    let x_786 : vec4<f32> = u_xlat0;
    let x_789 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_785 * vec3<f32>(x_786.x, x_786.x, x_786.x)) + x_789);

    continuing {
      let x_791 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_791 + bitcast<u32>(1i));
    }
  }
  let x_793 : vec3<f32> = u_xlat3;
  let x_794 : vec4<f32> = u_xlat1;
  let x_797 : vec4<f32> = u_xlat4;
  let x_799 : vec3<f32> = ((x_793 * vec3<f32>(x_794.y, x_794.z, x_794.w)) + vec3<f32>(x_797.x, x_797.y, x_797.z));
  let x_800 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_799.x, x_799.y, x_799.z, x_800.w);
  let x_802 : vec3<f32> = u_xlat5;
  let x_803 : vec4<f32> = u_xlat1;
  let x_805 : vec3<f32> = (x_802 + vec3<f32>(x_803.x, x_803.y, x_803.z));
  let x_806 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_805.x, x_805.y, x_805.z, x_806.w);
  let x_808 : f32 = u_xlat8;
  let x_809 : f32 = u_xlat8;
  u_xlat8 = (x_808 * -(x_809));
  let x_812 : f32 = u_xlat8;
  u_xlat8 = exp2(x_812);
  let x_814 : vec4<f32> = u_xlat1;
  let x_817 : vec4<f32> = x_28.unity_FogColor;
  let x_820 : vec3<f32> = (vec3<f32>(x_814.x, x_814.y, x_814.z) + -(vec3<f32>(x_817.x, x_817.y, x_817.z)));
  let x_821 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_820.x, x_820.y, x_820.z, x_821.w);
  let x_825 : f32 = u_xlat8;
  let x_827 : vec4<f32> = u_xlat1;
  let x_831 : vec4<f32> = x_28.unity_FogColor;
  let x_833 : vec3<f32> = ((vec3<f32>(x_825, x_825, x_825) * vec3<f32>(x_827.x, x_827.y, x_827.z)) + vec3<f32>(x_831.x, x_831.y, x_831.z));
  let x_834 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_833.x, x_833.y, x_833.z, x_834.w);
  let x_837 : f32 = x_42.x_Surface;
  u_xlatb8 = (x_837 == 1.0f);
  let x_839 : bool = u_xlatb8;
  let x_840 : bool = u_xlatb16;
  u_xlatb8 = (x_839 | x_840);
  let x_842 : bool = u_xlatb8;
  if (x_842) {
    let x_847 : f32 = u_xlat0.x;
    x_843 = x_847;
  } else {
    x_843 = 1.0f;
  }
  let x_849 : f32 = x_843;
  SV_Target0.w = x_849;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


