diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
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
  unity_OrthoParams : vec4<f32>,
  /* @offset(112) */
  unity_FogParams : vec4<f32>,
  /* @offset(128) */
  unity_FogColor : vec4<f32>,
  /* @offset(144) */
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

@group(1) @binding(3) var<uniform> x_41 : UnityPerMaterial;

var<private> u_xlatb1 : bool;

var<private> u_xlat10 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat28 : f32;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat3 : f32;

var<private> u_xlat4 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_173 : UnityPerDraw;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat29 : f32;

var<private> u_xlat12 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(4) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(4) var<uniform> x_275 : LightShadows;

var<private> u_xlatb4 : bool;

var<private> u_xlatb13 : bool;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlat22 : f32;

var<private> u_xlat32 : f32;

var<private> u_xlatu5 : u32;

var<private> u_xlat14 : vec3<f32>;

var<private> u_xlatu15 : u32;

var<private> u_xlati24 : i32;

var<private> u_xlat15 : vec3<f32>;

var<private> u_xlati15 : i32;

var<private> u_xlat7 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_503 : AdditionalLights;

var<private> u_xlat24 : f32;

var<private> u_xlat33 : f32;

var<private> u_xlati33 : i32;

var<private> u_xlatb34 : bool;

var<private> u_xlatb8 : vec4<bool>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat35 : f32;

var<private> u_xlat17 : f32;

var<private> u_xlat34 : f32;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat9 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb9 : bool;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu6 : u32;

var<private> u_xlatb15 : bool;

fn main_1() {
  var x_98 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_639 : f32;
  var x_649 : f32;
  var txVec1 : vec3<f32>;
  var x_898 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_35 : f32 = x_28.x_GlobalMipBias.x;
  let x_36 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_35);
  u_xlat0 = x_36;
  let x_37 : vec4<f32> = u_xlat0;
  let x_45 : vec4<f32> = x_41.x_BaseColor;
  u_xlat0 = (vec4<f32>(x_37.w, x_37.x, x_37.y, x_37.z) * vec4<f32>(x_45.w, x_45.x, x_45.y, x_45.z));
  let x_54 : f32 = x_28.unity_OrthoParams.w;
  u_xlatb1 = (x_54 == 0.0f);
  let x_61 : vec3<f32> = vs_TEXCOORD1;
  let x_66 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  u_xlat10 = (-(x_61) + x_66);
  let x_69 : vec3<f32> = u_xlat10;
  let x_70 : vec3<f32> = u_xlat10;
  u_xlat2.x = dot(x_69, x_70);
  let x_75 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_75);
  let x_78 : vec3<f32> = u_xlat10;
  let x_79 : vec4<f32> = u_xlat2;
  u_xlat10 = (x_78 * vec3<f32>(x_79.x, x_79.x, x_79.x));
  let x_85 : f32 = x_28.unity_MatrixV[0i].z;
  u_xlat2.x = x_85;
  let x_88 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat2.y = x_88;
  let x_93 : f32 = x_28.unity_MatrixV[2i].z;
  u_xlat2.z = x_93;
  let x_96 : bool = u_xlatb1;
  if (x_96) {
    let x_101 : vec3<f32> = u_xlat10;
    x_98 = x_101;
  } else {
    let x_103 : vec4<f32> = u_xlat2;
    x_98 = vec3<f32>(x_103.x, x_103.y, x_103.z);
  }
  let x_105 : vec3<f32> = x_98;
  u_xlat1 = x_105;
  let x_108 : vec3<f32> = vs_TEXCOORD2;
  let x_109 : vec3<f32> = vs_TEXCOORD2;
  u_xlat28 = dot(x_108, x_109);
  let x_111 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_111);
  let x_113 : f32 = u_xlat28;
  let x_115 : vec3<f32> = vs_TEXCOORD2;
  let x_116 : vec3<f32> = (vec3<f32>(x_113, x_113, x_113) * x_115);
  let x_117 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_116.x, x_116.y, x_116.z, x_117.w);
  let x_119 : vec3<f32> = u_xlat1;
  let x_120 : vec3<f32> = u_xlat1;
  u_xlat28 = dot(x_119, x_120);
  let x_122 : f32 = u_xlat28;
  u_xlat28 = max(x_122, 0.00006103515625f);
  let x_125 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_125);
  let x_130 : f32 = vs_TEXCOORD1.y;
  let x_132 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat3 = (x_130 * x_132);
  let x_135 : f32 = x_28.unity_MatrixV[0i].z;
  let x_137 : f32 = vs_TEXCOORD1.x;
  let x_139 : f32 = u_xlat3;
  u_xlat3 = ((x_135 * x_137) + x_139);
  let x_142 : f32 = x_28.unity_MatrixV[2i].z;
  let x_144 : f32 = vs_TEXCOORD1.z;
  let x_146 : f32 = u_xlat3;
  u_xlat3 = ((x_142 * x_144) + x_146);
  let x_148 : f32 = u_xlat3;
  let x_151 : f32 = x_28.unity_MatrixV[3i].z;
  u_xlat3 = (x_148 + x_151);
  let x_153 : f32 = u_xlat3;
  let x_157 : f32 = x_28.x_ProjectionParams.y;
  u_xlat3 = (-(x_153) + -(x_157));
  let x_160 : f32 = u_xlat3;
  u_xlat3 = max(x_160, 0.0f);
  let x_162 : f32 = u_xlat3;
  let x_165 : f32 = x_28.unity_FogParams.x;
  u_xlat3 = (x_162 * x_165);
  u_xlat2.w = 1.0f;
  let x_176 : vec4<f32> = x_173.unity_SHAr;
  let x_177 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_176, x_177);
  let x_182 : vec4<f32> = x_173.unity_SHAg;
  let x_183 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_182, x_183);
  let x_188 : vec4<f32> = x_173.unity_SHAb;
  let x_189 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_188, x_189);
  let x_193 : vec4<f32> = u_xlat2;
  let x_195 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_193.y, x_193.z, x_193.z, x_193.x) * vec4<f32>(x_195.x, x_195.y, x_195.z, x_195.z));
  let x_201 : vec4<f32> = x_173.unity_SHBr;
  let x_202 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_201, x_202);
  let x_207 : vec4<f32> = x_173.unity_SHBg;
  let x_208 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_207, x_208);
  let x_213 : vec4<f32> = x_173.unity_SHBb;
  let x_214 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_213, x_214);
  let x_219 : f32 = u_xlat2.y;
  let x_221 : f32 = u_xlat2.y;
  u_xlat29 = (x_219 * x_221);
  let x_224 : f32 = u_xlat2.x;
  let x_226 : f32 = u_xlat2.x;
  let x_228 : f32 = u_xlat29;
  u_xlat29 = ((x_224 * x_226) + -(x_228));
  let x_234 : vec4<f32> = x_173.unity_SHC;
  let x_236 : f32 = u_xlat29;
  let x_239 : vec3<f32> = u_xlat6;
  u_xlat12 = ((vec3<f32>(x_234.x, x_234.y, x_234.z) * vec3<f32>(x_236, x_236, x_236)) + x_239);
  let x_241 : vec3<f32> = u_xlat12;
  let x_242 : vec3<f32> = u_xlat4;
  u_xlat12 = (x_241 + x_242);
  let x_244 : vec3<f32> = u_xlat12;
  u_xlat12 = max(x_244, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_250 : vec4<f32> = vs_TEXCOORD6;
  let x_251 : vec2<f32> = vec2<f32>(x_250.x, x_250.y);
  let x_253 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_251.x, x_251.y, x_253);
  let x_265 : vec3<f32> = txVec0;
  let x_267 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_265.xy, x_265.z);
  u_xlat29 = x_267;
  let x_278 : f32 = x_275.x_MainLightShadowParams.x;
  u_xlat4.x = (-(x_278) + 1.0f);
  let x_282 : f32 = u_xlat29;
  let x_284 : f32 = x_275.x_MainLightShadowParams.x;
  let x_287 : f32 = u_xlat4.x;
  u_xlat29 = ((x_282 * x_284) + x_287);
  let x_291 : f32 = vs_TEXCOORD6.z;
  u_xlatb4 = (0.0f >= x_291);
  let x_295 : f32 = vs_TEXCOORD6.z;
  u_xlatb13 = (x_295 >= 1.0f);
  let x_297 : bool = u_xlatb13;
  let x_298 : bool = u_xlatb4;
  u_xlatb4 = (x_297 | x_298);
  let x_300 : bool = u_xlatb4;
  let x_301 : f32 = u_xlat29;
  u_xlat29 = select(x_301, 1.0f, x_300);
  let x_303 : vec3<f32> = vs_TEXCOORD1;
  let x_305 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  u_xlat4 = (x_303 + -(x_305));
  let x_308 : vec3<f32> = u_xlat4;
  let x_309 : vec3<f32> = u_xlat4;
  u_xlat4.x = dot(x_308, x_309);
  let x_314 : f32 = u_xlat4.x;
  let x_316 : f32 = x_275.x_MainLightShadowParams.z;
  let x_319 : f32 = x_275.x_MainLightShadowParams.w;
  u_xlat13.x = ((x_314 * x_316) + x_319);
  let x_323 : f32 = u_xlat13.x;
  u_xlat13.x = clamp(x_323, 0.0f, 1.0f);
  let x_327 : f32 = u_xlat29;
  u_xlat22 = (-(x_327) + 1.0f);
  let x_331 : f32 = u_xlat13.x;
  let x_332 : f32 = u_xlat22;
  let x_334 : f32 = u_xlat29;
  u_xlat29 = ((x_331 * x_332) + x_334);
  let x_336 : f32 = u_xlat29;
  let x_338 : f32 = x_173.unity_LightData.z;
  u_xlat29 = (x_336 * x_338);
  let x_340 : f32 = u_xlat29;
  let x_343 : vec4<f32> = x_28.x_MainLightColor;
  u_xlat13 = (vec3<f32>(x_340, x_340, x_340) * vec3<f32>(x_343.x, x_343.y, x_343.z));
  let x_346 : vec4<f32> = u_xlat2;
  let x_349 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat29 = dot(vec3<f32>(x_346.x, x_346.y, x_346.z), vec3<f32>(x_349.x, x_349.y, x_349.z));
  let x_352 : f32 = u_xlat29;
  u_xlat29 = clamp(x_352, 0.0f, 1.0f);
  let x_354 : f32 = u_xlat29;
  let x_356 : vec3<f32> = u_xlat13;
  let x_357 : vec3<f32> = (vec3<f32>(x_354, x_354, x_354) * x_356);
  let x_358 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_357.x, x_357.y, x_357.z, x_358.w);
  let x_361 : f32 = u_xlat0.x;
  u_xlat29 = ((x_361 * 10.0f) + 1.0f);
  let x_365 : f32 = u_xlat29;
  u_xlat29 = exp2(x_365);
  let x_367 : vec3<f32> = u_xlat1;
  let x_368 : f32 = u_xlat28;
  let x_372 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat6 = ((x_367 * vec3<f32>(x_368, x_368, x_368)) + vec3<f32>(x_372.x, x_372.y, x_372.z));
  let x_376 : vec3<f32> = u_xlat6;
  let x_377 : vec3<f32> = u_xlat6;
  u_xlat32 = dot(x_376, x_377);
  let x_379 : f32 = u_xlat32;
  u_xlat32 = max(x_379, 1.17549435e-38f);
  let x_382 : f32 = u_xlat32;
  u_xlat32 = inverseSqrt(x_382);
  let x_384 : f32 = u_xlat32;
  let x_386 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_384, x_384, x_384) * x_386);
  let x_388 : vec4<f32> = u_xlat2;
  let x_390 : vec3<f32> = u_xlat6;
  u_xlat32 = dot(vec3<f32>(x_388.x, x_388.y, x_388.z), x_390);
  let x_392 : f32 = u_xlat32;
  u_xlat32 = clamp(x_392, 0.0f, 1.0f);
  let x_394 : f32 = u_xlat32;
  u_xlat32 = log2(x_394);
  let x_396 : f32 = u_xlat29;
  let x_397 : f32 = u_xlat32;
  u_xlat32 = (x_396 * x_397);
  let x_399 : f32 = u_xlat32;
  u_xlat32 = exp2(x_399);
  let x_401 : f32 = u_xlat32;
  let x_404 : vec4<f32> = x_41.x_SpecColor;
  u_xlat6 = (vec3<f32>(x_401, x_401, x_401) * vec3<f32>(x_404.x, x_404.y, x_404.z));
  let x_407 : vec3<f32> = u_xlat13;
  let x_408 : vec3<f32> = u_xlat6;
  u_xlat13 = (x_407 * x_408);
  let x_410 : vec4<f32> = u_xlat5;
  let x_412 : vec4<f32> = u_xlat0;
  let x_415 : vec3<f32> = u_xlat13;
  u_xlat13 = ((vec3<f32>(x_410.x, x_410.y, x_410.z) * vec3<f32>(x_412.y, x_412.z, x_412.w)) + x_415);
  let x_418 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_420 : f32 = x_173.unity_LightData.y;
  u_xlat5.x = min(x_418, x_420);
  let x_426 : f32 = u_xlat5.x;
  u_xlatu5 = bitcast<u32>(i32(x_426));
  let x_430 : f32 = u_xlat4.x;
  let x_433 : f32 = x_275.x_AdditionalShadowFadeParams.x;
  let x_436 : f32 = x_275.x_AdditionalShadowFadeParams.y;
  u_xlat4.x = ((x_430 * x_433) + x_436);
  let x_440 : f32 = u_xlat4.x;
  u_xlat4.x = clamp(x_440, 0.0f, 1.0f);
  u_xlat14.x = 0.0f;
  u_xlat14.y = 0.0f;
  u_xlat14.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_454 : u32 = u_xlatu_loop_1;
    let x_455 : u32 = u_xlatu5;
    if ((x_454 < x_455)) {
    } else {
      break;
    }
    let x_458 : u32 = u_xlatu_loop_1;
    u_xlatu15 = (x_458 >> 2u);
    let x_462 : u32 = u_xlatu_loop_1;
    u_xlati24 = bitcast<i32>((x_462 & 3u));
    let x_466 : u32 = u_xlatu15;
    let x_469 : vec4<f32> = x_173.unity_LightIndices[bitcast<i32>(x_466)];
    let x_479 : i32 = u_xlati24;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_484 : vec4<u32> = indexable[x_479];
    u_xlat15.x = dot(x_469, bitcast<vec4<f32>>(x_484));
    let x_490 : f32 = u_xlat15.x;
    u_xlati15 = i32(x_490);
    let x_493 : vec3<f32> = vs_TEXCOORD1;
    let x_504 : i32 = u_xlati15;
    let x_506 : vec4<f32> = x_503.x_AdditionalLightsPosition[x_504];
    let x_509 : i32 = u_xlati15;
    let x_511 : vec4<f32> = x_503.x_AdditionalLightsPosition[x_509];
    u_xlat7 = ((-(x_493) * vec3<f32>(x_506.w, x_506.w, x_506.w)) + vec3<f32>(x_511.x, x_511.y, x_511.z));
    let x_515 : vec3<f32> = u_xlat7;
    let x_516 : vec3<f32> = u_xlat7;
    u_xlat24 = dot(x_515, x_516);
    let x_518 : f32 = u_xlat24;
    u_xlat24 = max(x_518, 0.00006103515625f);
    let x_521 : f32 = u_xlat24;
    u_xlat33 = inverseSqrt(x_521);
    let x_523 : f32 = u_xlat33;
    let x_525 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_523, x_523, x_523) * x_525);
    let x_527 : f32 = u_xlat24;
    u_xlat33 = (1.0f / x_527);
    let x_529 : f32 = u_xlat24;
    let x_530 : i32 = u_xlati15;
    let x_532 : f32 = x_503.x_AdditionalLightsAttenuation[x_530].x;
    u_xlat24 = (x_529 * x_532);
    let x_534 : f32 = u_xlat24;
    let x_536 : f32 = u_xlat24;
    u_xlat24 = ((-(x_534) * x_536) + 1.0f);
    let x_539 : f32 = u_xlat24;
    u_xlat24 = max(x_539, 0.0f);
    let x_541 : f32 = u_xlat24;
    let x_542 : f32 = u_xlat24;
    u_xlat24 = (x_541 * x_542);
    let x_544 : f32 = u_xlat24;
    let x_545 : f32 = u_xlat33;
    u_xlat24 = (x_544 * x_545);
    let x_547 : i32 = u_xlati15;
    let x_549 : vec4<f32> = x_503.x_AdditionalLightsSpotDir[x_547];
    let x_551 : vec3<f32> = u_xlat7;
    u_xlat33 = dot(vec3<f32>(x_549.x, x_549.y, x_549.z), x_551);
    let x_553 : f32 = u_xlat33;
    let x_554 : i32 = u_xlati15;
    let x_556 : f32 = x_503.x_AdditionalLightsAttenuation[x_554].z;
    let x_558 : i32 = u_xlati15;
    let x_560 : f32 = x_503.x_AdditionalLightsAttenuation[x_558].w;
    u_xlat33 = ((x_553 * x_556) + x_560);
    let x_562 : f32 = u_xlat33;
    u_xlat33 = clamp(x_562, 0.0f, 1.0f);
    let x_564 : f32 = u_xlat33;
    let x_565 : f32 = u_xlat33;
    u_xlat33 = (x_564 * x_565);
    let x_567 : f32 = u_xlat33;
    let x_568 : f32 = u_xlat24;
    u_xlat24 = (x_567 * x_568);
    let x_572 : i32 = u_xlati15;
    let x_574 : f32 = x_275.x_AdditionalShadowParams[x_572].w;
    u_xlati33 = i32(x_574);
    let x_577 : i32 = u_xlati33;
    u_xlatb34 = (x_577 >= 0i);
    let x_579 : bool = u_xlatb34;
    if (x_579) {
      let x_583 : i32 = u_xlati15;
      let x_585 : f32 = x_275.x_AdditionalShadowParams[x_583].z;
      u_xlatb34 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_585, x_585, x_585, x_585))));
      let x_590 : bool = u_xlatb34;
      if (x_590) {
        let x_595 : vec3<f32> = u_xlat7;
        let x_598 : vec3<f32> = u_xlat7;
        let x_601 : vec4<bool> = (abs(vec4<f32>(x_595.z, x_595.z, x_595.y, x_595.z)) >= abs(vec4<f32>(x_598.x, x_598.y, x_598.x, x_598.x)));
        let x_603 : vec3<bool> = vec3<bool>(x_601.x, x_601.y, x_601.z);
        let x_604 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_603.x, x_603.y, x_603.z, x_604.w);
        let x_607 : bool = u_xlatb8.y;
        let x_609 : bool = u_xlatb8.x;
        u_xlatb34 = (x_607 & x_609);
        let x_611 : vec3<f32> = u_xlat7;
        let x_614 : vec4<bool> = (-(vec4<f32>(x_611.z, x_611.y, x_611.z, x_611.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_615 : vec3<bool> = vec3<bool>(x_614.x, x_614.y, x_614.w);
        let x_616 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_615.x, x_615.y, x_616.z, x_615.z);
        let x_620 : bool = u_xlatb8.x;
        u_xlat8.x = select(4.0f, 5.0f, x_620);
        let x_626 : bool = u_xlatb8.y;
        u_xlat8.y = select(2.0f, 3.0f, x_626);
        let x_633 : bool = u_xlatb8.w;
        u_xlat35 = select(0.0f, 1.0f, x_633);
        let x_637 : bool = u_xlatb8.z;
        if (x_637) {
          let x_643 : f32 = u_xlat8.y;
          x_639 = x_643;
        } else {
          let x_645 : f32 = u_xlat35;
          x_639 = x_645;
        }
        let x_646 : f32 = x_639;
        u_xlat17 = x_646;
        let x_648 : bool = u_xlatb34;
        if (x_648) {
          let x_653 : f32 = u_xlat8.x;
          x_649 = x_653;
        } else {
          let x_655 : f32 = u_xlat17;
          x_649 = x_655;
        }
        let x_656 : f32 = x_649;
        u_xlat34 = x_656;
        let x_657 : i32 = u_xlati15;
        let x_659 : f32 = x_275.x_AdditionalShadowParams[x_657].w;
        u_xlat8.x = trunc(x_659);
        let x_662 : f32 = u_xlat34;
        let x_664 : f32 = u_xlat8.x;
        u_xlat34 = (x_662 + x_664);
        let x_666 : f32 = u_xlat34;
        u_xlati33 = i32(x_666);
      }
      let x_668 : i32 = u_xlati33;
      u_xlati33 = (x_668 << bitcast<u32>(2i));
      let x_670 : vec3<f32> = vs_TEXCOORD1;
      let x_673 : i32 = u_xlati33;
      let x_676 : i32 = u_xlati33;
      let x_680 : vec4<f32> = x_275.x_AdditionalLightsWorldToShadow[((x_673 + 1i) / 4i)][((x_676 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_670.y, x_670.y, x_670.y, x_670.y) * x_680);
      let x_682 : i32 = u_xlati33;
      let x_684 : i32 = u_xlati33;
      let x_687 : vec4<f32> = x_275.x_AdditionalLightsWorldToShadow[(x_682 / 4i)][(x_684 % 4i)];
      let x_688 : vec3<f32> = vs_TEXCOORD1;
      let x_691 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_687 * vec4<f32>(x_688.x, x_688.x, x_688.x, x_688.x)) + x_691);
      let x_693 : i32 = u_xlati33;
      let x_696 : i32 = u_xlati33;
      let x_700 : vec4<f32> = x_275.x_AdditionalLightsWorldToShadow[((x_693 + 2i) / 4i)][((x_696 + 2i) % 4i)];
      let x_701 : vec3<f32> = vs_TEXCOORD1;
      let x_704 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_700 * vec4<f32>(x_701.z, x_701.z, x_701.z, x_701.z)) + x_704);
      let x_706 : vec4<f32> = u_xlat8;
      let x_707 : i32 = u_xlati33;
      let x_710 : i32 = u_xlati33;
      let x_714 : vec4<f32> = x_275.x_AdditionalLightsWorldToShadow[((x_707 + 3i) / 4i)][((x_710 + 3i) % 4i)];
      u_xlat8 = (x_706 + x_714);
      let x_716 : vec4<f32> = u_xlat8;
      let x_718 : vec4<f32> = u_xlat8;
      let x_720 : vec3<f32> = (vec3<f32>(x_716.x, x_716.y, x_716.z) / vec3<f32>(x_718.w, x_718.w, x_718.w));
      let x_721 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_720.x, x_720.y, x_720.z, x_721.w);
      let x_724 : vec4<f32> = u_xlat8;
      let x_725 : vec2<f32> = vec2<f32>(x_724.x, x_724.y);
      let x_727 : f32 = u_xlat8.z;
      txVec1 = vec3<f32>(x_725.x, x_725.y, x_727);
      let x_735 : vec3<f32> = txVec1;
      let x_737 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_735.xy, x_735.z);
      u_xlat33 = x_737;
      let x_738 : i32 = u_xlati15;
      let x_740 : f32 = x_275.x_AdditionalShadowParams[x_738].x;
      u_xlat34 = (1.0f + -(x_740));
      let x_743 : f32 = u_xlat33;
      let x_744 : i32 = u_xlati15;
      let x_746 : f32 = x_275.x_AdditionalShadowParams[x_744].x;
      let x_748 : f32 = u_xlat34;
      u_xlat33 = ((x_743 * x_746) + x_748);
      let x_751 : f32 = u_xlat8.z;
      u_xlatb34 = (0.0f >= x_751);
      let x_754 : f32 = u_xlat8.z;
      u_xlatb8.x = (x_754 >= 1.0f);
      let x_757 : bool = u_xlatb34;
      let x_759 : bool = u_xlatb8.x;
      u_xlatb34 = (x_757 | x_759);
      let x_761 : bool = u_xlatb34;
      let x_762 : f32 = u_xlat33;
      u_xlat33 = select(x_762, 1.0f, x_761);
    } else {
      u_xlat33 = 1.0f;
    }
    let x_765 : f32 = u_xlat33;
    u_xlat34 = (-(x_765) + 1.0f);
    let x_769 : f32 = u_xlat4.x;
    let x_770 : f32 = u_xlat34;
    let x_772 : f32 = u_xlat33;
    u_xlat33 = ((x_769 * x_770) + x_772);
    let x_774 : f32 = u_xlat33;
    let x_775 : f32 = u_xlat24;
    u_xlat24 = (x_774 * x_775);
    let x_777 : f32 = u_xlat24;
    let x_779 : i32 = u_xlati15;
    let x_781 : vec4<f32> = x_503.x_AdditionalLightsColor[x_779];
    u_xlat15 = (vec3<f32>(x_777, x_777, x_777) * vec3<f32>(x_781.x, x_781.y, x_781.z));
    let x_784 : vec4<f32> = u_xlat2;
    let x_786 : vec3<f32> = u_xlat7;
    u_xlat34 = dot(vec3<f32>(x_784.x, x_784.y, x_784.z), x_786);
    let x_788 : f32 = u_xlat34;
    u_xlat34 = clamp(x_788, 0.0f, 1.0f);
    let x_790 : vec3<f32> = u_xlat15;
    let x_791 : f32 = u_xlat34;
    let x_793 : vec3<f32> = (x_790 * vec3<f32>(x_791, x_791, x_791));
    let x_794 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_793.x, x_793.y, x_793.z, x_794.w);
    let x_796 : vec3<f32> = u_xlat1;
    let x_797 : f32 = u_xlat28;
    let x_800 : vec3<f32> = u_xlat7;
    u_xlat7 = ((x_796 * vec3<f32>(x_797, x_797, x_797)) + x_800);
    let x_802 : vec3<f32> = u_xlat7;
    let x_803 : vec3<f32> = u_xlat7;
    u_xlat34 = dot(x_802, x_803);
    let x_805 : f32 = u_xlat34;
    u_xlat34 = max(x_805, 1.17549435e-38f);
    let x_807 : f32 = u_xlat34;
    u_xlat34 = inverseSqrt(x_807);
    let x_809 : f32 = u_xlat34;
    let x_811 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_809, x_809, x_809) * x_811);
    let x_813 : vec4<f32> = u_xlat2;
    let x_815 : vec3<f32> = u_xlat7;
    u_xlat7.x = dot(vec3<f32>(x_813.x, x_813.y, x_813.z), x_815);
    let x_819 : f32 = u_xlat7.x;
    u_xlat7.x = clamp(x_819, 0.0f, 1.0f);
    let x_823 : f32 = u_xlat7.x;
    u_xlat7.x = log2(x_823);
    let x_826 : f32 = u_xlat29;
    let x_828 : f32 = u_xlat7.x;
    u_xlat7.x = (x_826 * x_828);
    let x_832 : f32 = u_xlat7.x;
    u_xlat7.x = exp2(x_832);
    let x_835 : vec3<f32> = u_xlat7;
    let x_838 : vec4<f32> = x_41.x_SpecColor;
    u_xlat7 = (vec3<f32>(x_835.x, x_835.x, x_835.x) * vec3<f32>(x_838.x, x_838.y, x_838.z));
    let x_841 : vec3<f32> = u_xlat15;
    let x_842 : vec3<f32> = u_xlat7;
    u_xlat15 = (x_841 * x_842);
    let x_844 : vec4<f32> = u_xlat8;
    let x_846 : vec4<f32> = u_xlat0;
    let x_849 : vec3<f32> = u_xlat15;
    u_xlat15 = ((vec3<f32>(x_844.x, x_844.y, x_844.z) * vec3<f32>(x_846.y, x_846.z, x_846.w)) + x_849);
    let x_851 : vec3<f32> = u_xlat14;
    let x_852 : vec3<f32> = u_xlat15;
    u_xlat14 = (x_851 + x_852);

    continuing {
      let x_854 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_854 + bitcast<u32>(1i));
    }
  }
  let x_857 : vec3<f32> = u_xlat12;
  let x_858 : vec4<f32> = u_xlat0;
  let x_861 : vec3<f32> = u_xlat13;
  u_xlat9 = ((x_857 * vec3<f32>(x_858.y, x_858.z, x_858.w)) + x_861);
  let x_863 : vec3<f32> = u_xlat14;
  let x_864 : vec3<f32> = u_xlat9;
  u_xlat9 = (x_863 + x_864);
  let x_866 : f32 = u_xlat3;
  let x_867 : f32 = u_xlat3;
  u_xlat1.x = (x_866 * -(x_867));
  let x_872 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_872);
  let x_875 : vec3<f32> = u_xlat9;
  let x_877 : vec4<f32> = x_28.unity_FogColor;
  u_xlat9 = (x_875 + -(vec3<f32>(x_877.x, x_877.y, x_877.z)));
  let x_883 : vec3<f32> = u_xlat1;
  let x_885 : vec3<f32> = u_xlat9;
  let x_888 : vec4<f32> = x_28.unity_FogColor;
  let x_890 : vec3<f32> = ((vec3<f32>(x_883.x, x_883.x, x_883.x) * x_885) + vec3<f32>(x_888.x, x_888.y, x_888.z));
  let x_891 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_890.x, x_890.y, x_890.z, x_891.w);
  let x_895 : f32 = x_41.x_Surface;
  u_xlatb9 = (x_895 == 1.0f);
  let x_897 : bool = u_xlatb9;
  if (x_897) {
    let x_902 : f32 = u_xlat0.x;
    x_898 = x_902;
  } else {
    x_898 = 1.0f;
  }
  let x_904 : f32 = x_898;
  SV_Target0.w = x_904;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


