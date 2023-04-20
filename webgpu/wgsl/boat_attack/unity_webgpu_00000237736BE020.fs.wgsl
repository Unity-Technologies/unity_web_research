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

@group(1) @binding(1) var<uniform> x_480 : AdditionalLights;

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
  var x_616 : f32;
  var x_626 : f32;
  var txVec1 : vec3<f32>;
  var x_832 : f32;
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
  let x_401 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_403 : f32 = x_199.unity_LightData.y;
  u_xlat24 = min(x_401, x_403);
  let x_407 : f32 = u_xlat24;
  u_xlatu24 = bitcast<u32>(i32(x_407));
  let x_411 : f32 = u_xlat1.x;
  let x_414 : f32 = x_303.x_AdditionalShadowFadeParams.x;
  let x_417 : f32 = x_303.x_AdditionalShadowFadeParams.y;
  u_xlat1.x = ((x_411 * x_414) + x_417);
  let x_421 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_421, 0.0f, 1.0f);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_434 : u32 = u_xlatu_loop_1;
    let x_435 : u32 = u_xlatu24;
    if ((x_434 < x_435)) {
    } else {
      break;
    }
    let x_438 : u32 = u_xlatu_loop_1;
    u_xlatu27 = (x_438 >> 2u);
    let x_442 : u32 = u_xlatu_loop_1;
    u_xlati28 = bitcast<i32>((x_442 & 3u));
    let x_445 : u32 = u_xlatu27;
    let x_448 : vec4<f32> = x_199.unity_LightIndices[bitcast<i32>(x_445)];
    let x_458 : i32 = u_xlati28;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_463 : vec4<u32> = indexable[x_458];
    u_xlat27 = dot(x_448, bitcast<vec4<f32>>(x_463));
    let x_467 : f32 = u_xlat27;
    u_xlati27 = i32(x_467);
    let x_470 : vec3<f32> = vs_TEXCOORD1;
    let x_481 : i32 = u_xlati27;
    let x_483 : vec4<f32> = x_480.x_AdditionalLightsPosition[x_481];
    let x_486 : i32 = u_xlati27;
    let x_488 : vec4<f32> = x_480.x_AdditionalLightsPosition[x_486];
    u_xlat6 = ((-(x_470) * vec3<f32>(x_483.w, x_483.w, x_483.w)) + vec3<f32>(x_488.x, x_488.y, x_488.z));
    let x_492 : vec3<f32> = u_xlat6;
    let x_493 : vec3<f32> = u_xlat6;
    u_xlat28 = dot(x_492, x_493);
    let x_495 : f32 = u_xlat28;
    u_xlat28 = max(x_495, 0.00006103515625f);
    let x_499 : f32 = u_xlat28;
    u_xlat29 = inverseSqrt(x_499);
    let x_501 : f32 = u_xlat29;
    let x_503 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_501, x_501, x_501) * x_503);
    let x_505 : f32 = u_xlat28;
    u_xlat29 = (1.0f / x_505);
    let x_507 : f32 = u_xlat28;
    let x_508 : i32 = u_xlati27;
    let x_510 : f32 = x_480.x_AdditionalLightsAttenuation[x_508].x;
    u_xlat28 = (x_507 * x_510);
    let x_512 : f32 = u_xlat28;
    let x_514 : f32 = u_xlat28;
    u_xlat28 = ((-(x_512) * x_514) + 1.0f);
    let x_517 : f32 = u_xlat28;
    u_xlat28 = max(x_517, 0.0f);
    let x_519 : f32 = u_xlat28;
    let x_520 : f32 = u_xlat28;
    u_xlat28 = (x_519 * x_520);
    let x_522 : f32 = u_xlat28;
    let x_523 : f32 = u_xlat29;
    u_xlat28 = (x_522 * x_523);
    let x_525 : i32 = u_xlati27;
    let x_527 : vec4<f32> = x_480.x_AdditionalLightsSpotDir[x_525];
    let x_529 : vec3<f32> = u_xlat6;
    u_xlat29 = dot(vec3<f32>(x_527.x, x_527.y, x_527.z), x_529);
    let x_531 : f32 = u_xlat29;
    let x_532 : i32 = u_xlati27;
    let x_534 : f32 = x_480.x_AdditionalLightsAttenuation[x_532].z;
    let x_536 : i32 = u_xlati27;
    let x_538 : f32 = x_480.x_AdditionalLightsAttenuation[x_536].w;
    u_xlat29 = ((x_531 * x_534) + x_538);
    let x_540 : f32 = u_xlat29;
    u_xlat29 = clamp(x_540, 0.0f, 1.0f);
    let x_542 : f32 = u_xlat29;
    let x_543 : f32 = u_xlat29;
    u_xlat29 = (x_542 * x_543);
    let x_545 : f32 = u_xlat28;
    let x_546 : f32 = u_xlat29;
    u_xlat28 = (x_545 * x_546);
    let x_550 : i32 = u_xlati27;
    let x_552 : f32 = x_303.x_AdditionalShadowParams[x_550].w;
    u_xlati29 = i32(x_552);
    let x_555 : i32 = u_xlati29;
    u_xlatb30 = (x_555 >= 0i);
    let x_557 : bool = u_xlatb30;
    if (x_557) {
      let x_561 : i32 = u_xlati27;
      let x_563 : f32 = x_303.x_AdditionalShadowParams[x_561].z;
      u_xlatb30 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_563, x_563, x_563, x_563))));
      let x_568 : bool = u_xlatb30;
      if (x_568) {
        let x_573 : vec3<f32> = u_xlat6;
        let x_576 : vec3<f32> = u_xlat6;
        let x_579 : vec4<bool> = (abs(vec4<f32>(x_573.z, x_573.z, x_573.y, x_573.z)) >= abs(vec4<f32>(x_576.x, x_576.y, x_576.x, x_576.x)));
        let x_581 : vec3<bool> = vec3<bool>(x_579.x, x_579.y, x_579.z);
        let x_582 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_581.x, x_581.y, x_581.z, x_582.w);
        let x_585 : bool = u_xlatb7.y;
        let x_587 : bool = u_xlatb7.x;
        u_xlatb30 = (x_585 & x_587);
        let x_589 : vec3<f32> = u_xlat6;
        let x_592 : vec4<bool> = (-(vec4<f32>(x_589.z, x_589.y, x_589.z, x_589.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_593 : vec3<bool> = vec3<bool>(x_592.x, x_592.y, x_592.w);
        let x_594 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_593.x, x_593.y, x_594.z, x_593.z);
        let x_598 : bool = u_xlatb7.x;
        u_xlat7.x = select(4.0f, 5.0f, x_598);
        let x_604 : bool = u_xlatb7.y;
        u_xlat7.y = select(2.0f, 3.0f, x_604);
        let x_611 : bool = u_xlatb7.w;
        u_xlat31 = select(0.0f, 1.0f, x_611);
        let x_615 : bool = u_xlatb7.z;
        if (x_615) {
          let x_620 : f32 = u_xlat7.y;
          x_616 = x_620;
        } else {
          let x_622 : f32 = u_xlat31;
          x_616 = x_622;
        }
        let x_623 : f32 = x_616;
        u_xlat15 = x_623;
        let x_625 : bool = u_xlatb30;
        if (x_625) {
          let x_630 : f32 = u_xlat7.x;
          x_626 = x_630;
        } else {
          let x_632 : f32 = u_xlat15;
          x_626 = x_632;
        }
        let x_633 : f32 = x_626;
        u_xlat30 = x_633;
        let x_634 : i32 = u_xlati27;
        let x_636 : f32 = x_303.x_AdditionalShadowParams[x_634].w;
        u_xlat7.x = trunc(x_636);
        let x_639 : f32 = u_xlat30;
        let x_641 : f32 = u_xlat7.x;
        u_xlat30 = (x_639 + x_641);
        let x_643 : f32 = u_xlat30;
        u_xlati29 = i32(x_643);
      }
      let x_645 : i32 = u_xlati29;
      u_xlati29 = (x_645 << bitcast<u32>(2i));
      let x_647 : vec3<f32> = vs_TEXCOORD1;
      let x_650 : i32 = u_xlati29;
      let x_653 : i32 = u_xlati29;
      let x_657 : vec4<f32> = x_303.x_AdditionalLightsWorldToShadow[((x_650 + 1i) / 4i)][((x_653 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_647.y, x_647.y, x_647.y, x_647.y) * x_657);
      let x_659 : i32 = u_xlati29;
      let x_661 : i32 = u_xlati29;
      let x_664 : vec4<f32> = x_303.x_AdditionalLightsWorldToShadow[(x_659 / 4i)][(x_661 % 4i)];
      let x_665 : vec3<f32> = vs_TEXCOORD1;
      let x_668 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_664 * vec4<f32>(x_665.x, x_665.x, x_665.x, x_665.x)) + x_668);
      let x_670 : i32 = u_xlati29;
      let x_673 : i32 = u_xlati29;
      let x_677 : vec4<f32> = x_303.x_AdditionalLightsWorldToShadow[((x_670 + 2i) / 4i)][((x_673 + 2i) % 4i)];
      let x_678 : vec3<f32> = vs_TEXCOORD1;
      let x_681 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_677 * vec4<f32>(x_678.z, x_678.z, x_678.z, x_678.z)) + x_681);
      let x_683 : vec4<f32> = u_xlat7;
      let x_684 : i32 = u_xlati29;
      let x_687 : i32 = u_xlati29;
      let x_691 : vec4<f32> = x_303.x_AdditionalLightsWorldToShadow[((x_684 + 3i) / 4i)][((x_687 + 3i) % 4i)];
      u_xlat7 = (x_683 + x_691);
      let x_693 : vec4<f32> = u_xlat7;
      let x_695 : vec4<f32> = u_xlat7;
      let x_697 : vec3<f32> = (vec3<f32>(x_693.x, x_693.y, x_693.z) / vec3<f32>(x_695.w, x_695.w, x_695.w));
      let x_698 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_697.x, x_697.y, x_697.z, x_698.w);
      let x_701 : vec4<f32> = u_xlat7;
      let x_702 : vec2<f32> = vec2<f32>(x_701.x, x_701.y);
      let x_704 : f32 = u_xlat7.z;
      txVec1 = vec3<f32>(x_702.x, x_702.y, x_704);
      let x_712 : vec3<f32> = txVec1;
      let x_714 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_712.xy, x_712.z);
      u_xlat29 = x_714;
      let x_715 : i32 = u_xlati27;
      let x_717 : f32 = x_303.x_AdditionalShadowParams[x_715].x;
      u_xlat30 = (1.0f + -(x_717));
      let x_720 : f32 = u_xlat29;
      let x_721 : i32 = u_xlati27;
      let x_723 : f32 = x_303.x_AdditionalShadowParams[x_721].x;
      let x_725 : f32 = u_xlat30;
      u_xlat29 = ((x_720 * x_723) + x_725);
      let x_728 : f32 = u_xlat7.z;
      u_xlatb30 = (0.0f >= x_728);
      let x_731 : f32 = u_xlat7.z;
      u_xlatb7.x = (x_731 >= 1.0f);
      let x_734 : bool = u_xlatb30;
      let x_736 : bool = u_xlatb7.x;
      u_xlatb30 = (x_734 | x_736);
      let x_738 : bool = u_xlatb30;
      let x_739 : f32 = u_xlat29;
      u_xlat29 = select(x_739, 1.0f, x_738);
    } else {
      u_xlat29 = 1.0f;
    }
    let x_742 : f32 = u_xlat29;
    u_xlat30 = (-(x_742) + 1.0f);
    let x_746 : f32 = u_xlat1.x;
    let x_747 : f32 = u_xlat30;
    let x_749 : f32 = u_xlat29;
    u_xlat29 = ((x_746 * x_747) + x_749);
    let x_751 : f32 = u_xlat28;
    let x_752 : f32 = u_xlat29;
    u_xlat28 = (x_751 * x_752);
    let x_754 : f32 = u_xlat28;
    let x_756 : i32 = u_xlati27;
    let x_758 : vec4<f32> = x_480.x_AdditionalLightsColor[x_756];
    let x_760 : vec3<f32> = (vec3<f32>(x_754, x_754, x_754) * vec3<f32>(x_758.x, x_758.y, x_758.z));
    let x_761 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_760.x, x_760.y, x_760.z, x_761.w);
    let x_763 : vec4<f32> = u_xlat2;
    let x_765 : vec3<f32> = u_xlat6;
    u_xlat27 = dot(vec3<f32>(x_763.x, x_763.y, x_763.z), x_765);
    let x_767 : f32 = u_xlat27;
    u_xlat27 = clamp(x_767, 0.0f, 1.0f);
    let x_769 : f32 = u_xlat27;
    let x_771 : vec4<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_769, x_769, x_769) * vec3<f32>(x_771.x, x_771.y, x_771.z));
    let x_774 : vec3<f32> = u_xlat6;
    let x_775 : vec4<f32> = u_xlat1;
    let x_778 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_774 * vec3<f32>(x_775.y, x_775.z, x_775.w)) + x_778);

    continuing {
      let x_780 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_780 + bitcast<u32>(1i));
    }
  }
  let x_782 : vec3<f32> = u_xlat3;
  let x_783 : vec4<f32> = u_xlat1;
  let x_786 : vec4<f32> = u_xlat4;
  let x_788 : vec3<f32> = ((x_782 * vec3<f32>(x_783.y, x_783.z, x_783.w)) + vec3<f32>(x_786.x, x_786.y, x_786.z));
  let x_789 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_788.x, x_788.y, x_788.z, x_789.w);
  let x_791 : vec3<f32> = u_xlat5;
  let x_792 : vec4<f32> = u_xlat1;
  let x_794 : vec3<f32> = (x_791 + vec3<f32>(x_792.x, x_792.y, x_792.z));
  let x_795 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_794.x, x_794.y, x_794.z, x_795.w);
  let x_797 : f32 = u_xlat8;
  let x_798 : f32 = u_xlat8;
  u_xlat8 = (x_797 * -(x_798));
  let x_801 : f32 = u_xlat8;
  u_xlat8 = exp2(x_801);
  let x_803 : vec4<f32> = u_xlat1;
  let x_806 : vec4<f32> = x_28.unity_FogColor;
  let x_809 : vec3<f32> = (vec3<f32>(x_803.x, x_803.y, x_803.z) + -(vec3<f32>(x_806.x, x_806.y, x_806.z)));
  let x_810 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_809.x, x_809.y, x_809.z, x_810.w);
  let x_814 : f32 = u_xlat8;
  let x_816 : vec4<f32> = u_xlat1;
  let x_820 : vec4<f32> = x_28.unity_FogColor;
  let x_822 : vec3<f32> = ((vec3<f32>(x_814, x_814, x_814) * vec3<f32>(x_816.x, x_816.y, x_816.z)) + vec3<f32>(x_820.x, x_820.y, x_820.z));
  let x_823 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_822.x, x_822.y, x_822.z, x_823.w);
  let x_826 : f32 = x_42.x_Surface;
  u_xlatb8 = (x_826 == 1.0f);
  let x_828 : bool = u_xlatb8;
  let x_829 : bool = u_xlatb16;
  u_xlatb8 = (x_828 | x_829);
  let x_831 : bool = u_xlatb8;
  if (x_831) {
    let x_836 : f32 = u_xlat0.x;
    x_832 = x_836;
  } else {
    x_832 = 1.0f;
  }
  let x_838 : f32 = x_832;
  SV_Target0.w = x_838;
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


