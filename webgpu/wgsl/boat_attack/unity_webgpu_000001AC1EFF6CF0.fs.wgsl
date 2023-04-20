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

alias Arr = array<mat4x4<f32>, 5u>;

alias Arr_1 = array<vec4<f32>, 32u>;

alias Arr_2 = array<mat4x4<f32>, 32u>;

alias Arr_3 = array<vec4<f32>, 32u>;

struct LightShadows {
  /* @offset(0) */
  x_MainLightWorldToShadow : Arr,
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
  x_AdditionalShadowParams : Arr_3,
  /* @offset(1040) */
  x_AdditionalLightsWorldToShadow : Arr_2,
}

alias Arr_4 = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr_4,
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
  x_AdditionalLightsPosition : Arr_3,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_3,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_3,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_3,
  /* @offset(2048) */
  x_AdditionalLightsOcclusionProbes : Arr_3,
  /* @offset(2560) */
  x_AdditionalLightsLayerMasks : Arr_9,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

@group(1) @binding(3) var<uniform> x_41 : UnityPerMaterial;

var<private> u_xlatb1 : bool;

var<private> u_xlat10 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat28 : f32;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat29 : f32;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(5) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

var<private> u_xlat4 : vec3<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat30 : f32;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(4) var<uniform> x_248 : LightShadows;

var<private> u_xlatb4 : bool;

var<private> u_xlatb13 : bool;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlat22 : f32;

@group(1) @binding(2) var<uniform> x_314 : UnityPerDraw;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat32 : f32;

var<private> u_xlatu5 : u32;

var<private> u_xlat14 : vec3<f32>;

var<private> u_xlatu15 : u32;

var<private> u_xlati24 : i32;

var<private> u_xlat15 : vec3<f32>;

var<private> u_xlati15 : i32;

var<private> u_xlat7 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_478 : AdditionalLights;

var<private> u_xlat24 : f32;

var<private> u_xlat33 : f32;

var<private> u_xlati33 : i32;

var<private> u_xlatb34 : bool;

var<private> u_xlatb8 : vec4<bool>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat35 : f32;

var<private> u_xlat17 : f32;

var<private> u_xlat34 : f32;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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
  var x_614 : f32;
  var x_624 : f32;
  var txVec1 : vec3<f32>;
  var x_872 : f32;
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
  let x_79 : vec3<f32> = u_xlat2;
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
    let x_103 : vec3<f32> = u_xlat2;
    x_98 = x_103;
  }
  let x_104 : vec3<f32> = x_98;
  u_xlat1 = x_104;
  let x_107 : vec3<f32> = vs_TEXCOORD2;
  let x_108 : vec3<f32> = vs_TEXCOORD2;
  u_xlat28 = dot(x_107, x_108);
  let x_110 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_110);
  let x_112 : f32 = u_xlat28;
  let x_114 : vec3<f32> = vs_TEXCOORD2;
  u_xlat2 = (vec3<f32>(x_112, x_112, x_112) * x_114);
  let x_116 : vec3<f32> = u_xlat1;
  let x_117 : vec3<f32> = u_xlat1;
  u_xlat28 = dot(x_116, x_117);
  let x_119 : f32 = u_xlat28;
  u_xlat28 = max(x_119, 0.00006103515625f);
  let x_122 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_122);
  let x_127 : f32 = vs_TEXCOORD1.y;
  let x_129 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat29 = (x_127 * x_129);
  let x_132 : f32 = x_28.unity_MatrixV[0i].z;
  let x_134 : f32 = vs_TEXCOORD1.x;
  let x_136 : f32 = u_xlat29;
  u_xlat29 = ((x_132 * x_134) + x_136);
  let x_139 : f32 = x_28.unity_MatrixV[2i].z;
  let x_141 : f32 = vs_TEXCOORD1.z;
  let x_143 : f32 = u_xlat29;
  u_xlat29 = ((x_139 * x_141) + x_143);
  let x_145 : f32 = u_xlat29;
  let x_148 : f32 = x_28.unity_MatrixV[3i].z;
  u_xlat29 = (x_145 + x_148);
  let x_150 : f32 = u_xlat29;
  let x_154 : f32 = x_28.x_ProjectionParams.y;
  u_xlat29 = (-(x_150) + -(x_154));
  let x_157 : f32 = u_xlat29;
  u_xlat29 = max(x_157, 0.0f);
  let x_159 : f32 = u_xlat29;
  let x_162 : f32 = x_28.unity_FogParams.x;
  u_xlat29 = (x_159 * x_162);
  let x_171 : vec2<f32> = vs_TEXCOORD7;
  let x_173 : f32 = x_28.x_GlobalMipBias.x;
  let x_174 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_171, x_173);
  u_xlat3 = x_174;
  let x_180 : vec2<f32> = vs_TEXCOORD7;
  let x_182 : f32 = x_28.x_GlobalMipBias.x;
  let x_183 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_180, x_182);
  u_xlat4 = vec3<f32>(x_183.x, x_183.y, x_183.z);
  let x_185 : vec4<f32> = u_xlat3;
  let x_189 : vec3<f32> = (vec3<f32>(x_185.x, x_185.y, x_185.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_190 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_189.x, x_189.y, x_189.z, x_190.w);
  let x_192 : vec3<f32> = u_xlat2;
  let x_193 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(x_192, vec3<f32>(x_193.x, x_193.y, x_193.z));
  let x_198 : f32 = u_xlat3.x;
  u_xlat3.x = (x_198 + 0.5f);
  let x_202 : vec4<f32> = u_xlat3;
  let x_204 : vec3<f32> = u_xlat4;
  let x_205 : vec3<f32> = (vec3<f32>(x_202.x, x_202.x, x_202.x) * x_204);
  let x_206 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_205.x, x_205.y, x_205.z, x_206.w);
  let x_210 : f32 = u_xlat3.w;
  u_xlat30 = max(x_210, 0.00009999999747378752f);
  let x_213 : vec4<f32> = u_xlat3;
  let x_215 : f32 = u_xlat30;
  let x_217 : vec3<f32> = (vec3<f32>(x_213.x, x_213.y, x_213.z) / vec3<f32>(x_215, x_215, x_215));
  let x_218 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_217.x, x_217.y, x_217.z, x_218.w);
  let x_223 : vec4<f32> = vs_TEXCOORD6;
  let x_224 : vec2<f32> = vec2<f32>(x_223.x, x_223.y);
  let x_226 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_224.x, x_224.y, x_226);
  let x_238 : vec3<f32> = txVec0;
  let x_240 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_238.xy, x_238.z);
  u_xlat30 = x_240;
  let x_251 : f32 = x_248.x_MainLightShadowParams.x;
  u_xlat4.x = (-(x_251) + 1.0f);
  let x_256 : f32 = u_xlat30;
  let x_258 : f32 = x_248.x_MainLightShadowParams.x;
  let x_261 : f32 = u_xlat4.x;
  u_xlat30 = ((x_256 * x_258) + x_261);
  let x_265 : f32 = vs_TEXCOORD6.z;
  u_xlatb4 = (0.0f >= x_265);
  let x_269 : f32 = vs_TEXCOORD6.z;
  u_xlatb13 = (x_269 >= 1.0f);
  let x_271 : bool = u_xlatb13;
  let x_272 : bool = u_xlatb4;
  u_xlatb4 = (x_271 | x_272);
  let x_274 : bool = u_xlatb4;
  let x_275 : f32 = u_xlat30;
  u_xlat30 = select(x_275, 1.0f, x_274);
  let x_277 : vec3<f32> = vs_TEXCOORD1;
  let x_279 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  u_xlat4 = (x_277 + -(x_279));
  let x_282 : vec3<f32> = u_xlat4;
  let x_283 : vec3<f32> = u_xlat4;
  u_xlat4.x = dot(x_282, x_283);
  let x_288 : f32 = u_xlat4.x;
  let x_290 : f32 = x_248.x_MainLightShadowParams.z;
  let x_293 : f32 = x_248.x_MainLightShadowParams.w;
  u_xlat13.x = ((x_288 * x_290) + x_293);
  let x_297 : f32 = u_xlat13.x;
  u_xlat13.x = clamp(x_297, 0.0f, 1.0f);
  let x_301 : f32 = u_xlat30;
  u_xlat22 = (-(x_301) + 1.0f);
  let x_305 : f32 = u_xlat13.x;
  let x_306 : f32 = u_xlat22;
  let x_308 : f32 = u_xlat30;
  u_xlat30 = ((x_305 * x_306) + x_308);
  let x_310 : f32 = u_xlat30;
  let x_316 : f32 = x_314.unity_LightData.z;
  u_xlat30 = (x_310 * x_316);
  let x_318 : f32 = u_xlat30;
  let x_321 : vec4<f32> = x_28.x_MainLightColor;
  u_xlat13 = (vec3<f32>(x_318, x_318, x_318) * vec3<f32>(x_321.x, x_321.y, x_321.z));
  let x_324 : vec3<f32> = u_xlat2;
  let x_326 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat30 = dot(x_324, vec3<f32>(x_326.x, x_326.y, x_326.z));
  let x_329 : f32 = u_xlat30;
  u_xlat30 = clamp(x_329, 0.0f, 1.0f);
  let x_332 : f32 = u_xlat30;
  let x_334 : vec3<f32> = u_xlat13;
  u_xlat5 = (vec3<f32>(x_332, x_332, x_332) * x_334);
  let x_337 : f32 = u_xlat0.x;
  u_xlat30 = ((x_337 * 10.0f) + 1.0f);
  let x_341 : f32 = u_xlat30;
  u_xlat30 = exp2(x_341);
  let x_344 : vec3<f32> = u_xlat1;
  let x_345 : f32 = u_xlat28;
  let x_349 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat6 = ((x_344 * vec3<f32>(x_345, x_345, x_345)) + vec3<f32>(x_349.x, x_349.y, x_349.z));
  let x_353 : vec3<f32> = u_xlat6;
  let x_354 : vec3<f32> = u_xlat6;
  u_xlat32 = dot(x_353, x_354);
  let x_356 : f32 = u_xlat32;
  u_xlat32 = max(x_356, 1.17549435e-38f);
  let x_359 : f32 = u_xlat32;
  u_xlat32 = inverseSqrt(x_359);
  let x_361 : f32 = u_xlat32;
  let x_363 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_361, x_361, x_361) * x_363);
  let x_365 : vec3<f32> = u_xlat2;
  let x_366 : vec3<f32> = u_xlat6;
  u_xlat32 = dot(x_365, x_366);
  let x_368 : f32 = u_xlat32;
  u_xlat32 = clamp(x_368, 0.0f, 1.0f);
  let x_370 : f32 = u_xlat32;
  u_xlat32 = log2(x_370);
  let x_372 : f32 = u_xlat30;
  let x_373 : f32 = u_xlat32;
  u_xlat32 = (x_372 * x_373);
  let x_375 : f32 = u_xlat32;
  u_xlat32 = exp2(x_375);
  let x_377 : f32 = u_xlat32;
  let x_380 : vec4<f32> = x_41.x_SpecColor;
  u_xlat6 = (vec3<f32>(x_377, x_377, x_377) * vec3<f32>(x_380.x, x_380.y, x_380.z));
  let x_383 : vec3<f32> = u_xlat13;
  let x_384 : vec3<f32> = u_xlat6;
  u_xlat13 = (x_383 * x_384);
  let x_386 : vec3<f32> = u_xlat5;
  let x_387 : vec4<f32> = u_xlat0;
  let x_390 : vec3<f32> = u_xlat13;
  u_xlat13 = ((x_386 * vec3<f32>(x_387.y, x_387.z, x_387.w)) + x_390);
  let x_393 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_395 : f32 = x_314.unity_LightData.y;
  u_xlat5.x = min(x_393, x_395);
  let x_401 : f32 = u_xlat5.x;
  u_xlatu5 = bitcast<u32>(i32(x_401));
  let x_405 : f32 = u_xlat4.x;
  let x_408 : f32 = x_248.x_AdditionalShadowFadeParams.x;
  let x_411 : f32 = x_248.x_AdditionalShadowFadeParams.y;
  u_xlat4.x = ((x_405 * x_408) + x_411);
  let x_415 : f32 = u_xlat4.x;
  u_xlat4.x = clamp(x_415, 0.0f, 1.0f);
  u_xlat14.x = 0.0f;
  u_xlat14.y = 0.0f;
  u_xlat14.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_429 : u32 = u_xlatu_loop_1;
    let x_430 : u32 = u_xlatu5;
    if ((x_429 < x_430)) {
    } else {
      break;
    }
    let x_433 : u32 = u_xlatu_loop_1;
    u_xlatu15 = (x_433 >> 2u);
    let x_437 : u32 = u_xlatu_loop_1;
    u_xlati24 = bitcast<i32>((x_437 & 3u));
    let x_441 : u32 = u_xlatu15;
    let x_444 : vec4<f32> = x_314.unity_LightIndices[bitcast<i32>(x_441)];
    let x_454 : i32 = u_xlati24;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_459 : vec4<u32> = indexable[x_454];
    u_xlat15.x = dot(x_444, bitcast<vec4<f32>>(x_459));
    let x_465 : f32 = u_xlat15.x;
    u_xlati15 = i32(x_465);
    let x_468 : vec3<f32> = vs_TEXCOORD1;
    let x_479 : i32 = u_xlati15;
    let x_481 : vec4<f32> = x_478.x_AdditionalLightsPosition[x_479];
    let x_484 : i32 = u_xlati15;
    let x_486 : vec4<f32> = x_478.x_AdditionalLightsPosition[x_484];
    u_xlat7 = ((-(x_468) * vec3<f32>(x_481.w, x_481.w, x_481.w)) + vec3<f32>(x_486.x, x_486.y, x_486.z));
    let x_490 : vec3<f32> = u_xlat7;
    let x_491 : vec3<f32> = u_xlat7;
    u_xlat24 = dot(x_490, x_491);
    let x_493 : f32 = u_xlat24;
    u_xlat24 = max(x_493, 0.00006103515625f);
    let x_496 : f32 = u_xlat24;
    u_xlat33 = inverseSqrt(x_496);
    let x_498 : f32 = u_xlat33;
    let x_500 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_498, x_498, x_498) * x_500);
    let x_502 : f32 = u_xlat24;
    u_xlat33 = (1.0f / x_502);
    let x_504 : f32 = u_xlat24;
    let x_505 : i32 = u_xlati15;
    let x_507 : f32 = x_478.x_AdditionalLightsAttenuation[x_505].x;
    u_xlat24 = (x_504 * x_507);
    let x_509 : f32 = u_xlat24;
    let x_511 : f32 = u_xlat24;
    u_xlat24 = ((-(x_509) * x_511) + 1.0f);
    let x_514 : f32 = u_xlat24;
    u_xlat24 = max(x_514, 0.0f);
    let x_516 : f32 = u_xlat24;
    let x_517 : f32 = u_xlat24;
    u_xlat24 = (x_516 * x_517);
    let x_519 : f32 = u_xlat24;
    let x_520 : f32 = u_xlat33;
    u_xlat24 = (x_519 * x_520);
    let x_522 : i32 = u_xlati15;
    let x_524 : vec4<f32> = x_478.x_AdditionalLightsSpotDir[x_522];
    let x_526 : vec3<f32> = u_xlat7;
    u_xlat33 = dot(vec3<f32>(x_524.x, x_524.y, x_524.z), x_526);
    let x_528 : f32 = u_xlat33;
    let x_529 : i32 = u_xlati15;
    let x_531 : f32 = x_478.x_AdditionalLightsAttenuation[x_529].z;
    let x_533 : i32 = u_xlati15;
    let x_535 : f32 = x_478.x_AdditionalLightsAttenuation[x_533].w;
    u_xlat33 = ((x_528 * x_531) + x_535);
    let x_537 : f32 = u_xlat33;
    u_xlat33 = clamp(x_537, 0.0f, 1.0f);
    let x_539 : f32 = u_xlat33;
    let x_540 : f32 = u_xlat33;
    u_xlat33 = (x_539 * x_540);
    let x_542 : f32 = u_xlat33;
    let x_543 : f32 = u_xlat24;
    u_xlat24 = (x_542 * x_543);
    let x_547 : i32 = u_xlati15;
    let x_549 : f32 = x_248.x_AdditionalShadowParams[x_547].w;
    u_xlati33 = i32(x_549);
    let x_552 : i32 = u_xlati33;
    u_xlatb34 = (x_552 >= 0i);
    let x_554 : bool = u_xlatb34;
    if (x_554) {
      let x_558 : i32 = u_xlati15;
      let x_560 : f32 = x_248.x_AdditionalShadowParams[x_558].z;
      u_xlatb34 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_560, x_560, x_560, x_560))));
      let x_565 : bool = u_xlatb34;
      if (x_565) {
        let x_570 : vec3<f32> = u_xlat7;
        let x_573 : vec3<f32> = u_xlat7;
        let x_576 : vec4<bool> = (abs(vec4<f32>(x_570.z, x_570.z, x_570.y, x_570.z)) >= abs(vec4<f32>(x_573.x, x_573.y, x_573.x, x_573.x)));
        let x_578 : vec3<bool> = vec3<bool>(x_576.x, x_576.y, x_576.z);
        let x_579 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_578.x, x_578.y, x_578.z, x_579.w);
        let x_582 : bool = u_xlatb8.y;
        let x_584 : bool = u_xlatb8.x;
        u_xlatb34 = (x_582 & x_584);
        let x_586 : vec3<f32> = u_xlat7;
        let x_589 : vec4<bool> = (-(vec4<f32>(x_586.z, x_586.y, x_586.z, x_586.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_590 : vec3<bool> = vec3<bool>(x_589.x, x_589.y, x_589.w);
        let x_591 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_590.x, x_590.y, x_591.z, x_590.z);
        let x_595 : bool = u_xlatb8.x;
        u_xlat8.x = select(4.0f, 5.0f, x_595);
        let x_601 : bool = u_xlatb8.y;
        u_xlat8.y = select(2.0f, 3.0f, x_601);
        let x_608 : bool = u_xlatb8.w;
        u_xlat35 = select(0.0f, 1.0f, x_608);
        let x_612 : bool = u_xlatb8.z;
        if (x_612) {
          let x_618 : f32 = u_xlat8.y;
          x_614 = x_618;
        } else {
          let x_620 : f32 = u_xlat35;
          x_614 = x_620;
        }
        let x_621 : f32 = x_614;
        u_xlat17 = x_621;
        let x_623 : bool = u_xlatb34;
        if (x_623) {
          let x_628 : f32 = u_xlat8.x;
          x_624 = x_628;
        } else {
          let x_630 : f32 = u_xlat17;
          x_624 = x_630;
        }
        let x_631 : f32 = x_624;
        u_xlat34 = x_631;
        let x_632 : i32 = u_xlati15;
        let x_634 : f32 = x_248.x_AdditionalShadowParams[x_632].w;
        u_xlat8.x = trunc(x_634);
        let x_637 : f32 = u_xlat34;
        let x_639 : f32 = u_xlat8.x;
        u_xlat34 = (x_637 + x_639);
        let x_641 : f32 = u_xlat34;
        u_xlati33 = i32(x_641);
      }
      let x_643 : i32 = u_xlati33;
      u_xlati33 = (x_643 << bitcast<u32>(2i));
      let x_645 : vec3<f32> = vs_TEXCOORD1;
      let x_648 : i32 = u_xlati33;
      let x_651 : i32 = u_xlati33;
      let x_655 : vec4<f32> = x_248.x_AdditionalLightsWorldToShadow[((x_648 + 1i) / 4i)][((x_651 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_645.y, x_645.y, x_645.y, x_645.y) * x_655);
      let x_657 : i32 = u_xlati33;
      let x_659 : i32 = u_xlati33;
      let x_662 : vec4<f32> = x_248.x_AdditionalLightsWorldToShadow[(x_657 / 4i)][(x_659 % 4i)];
      let x_663 : vec3<f32> = vs_TEXCOORD1;
      let x_666 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_662 * vec4<f32>(x_663.x, x_663.x, x_663.x, x_663.x)) + x_666);
      let x_668 : i32 = u_xlati33;
      let x_671 : i32 = u_xlati33;
      let x_675 : vec4<f32> = x_248.x_AdditionalLightsWorldToShadow[((x_668 + 2i) / 4i)][((x_671 + 2i) % 4i)];
      let x_676 : vec3<f32> = vs_TEXCOORD1;
      let x_679 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_675 * vec4<f32>(x_676.z, x_676.z, x_676.z, x_676.z)) + x_679);
      let x_681 : vec4<f32> = u_xlat8;
      let x_682 : i32 = u_xlati33;
      let x_685 : i32 = u_xlati33;
      let x_689 : vec4<f32> = x_248.x_AdditionalLightsWorldToShadow[((x_682 + 3i) / 4i)][((x_685 + 3i) % 4i)];
      u_xlat8 = (x_681 + x_689);
      let x_691 : vec4<f32> = u_xlat8;
      let x_693 : vec4<f32> = u_xlat8;
      let x_695 : vec3<f32> = (vec3<f32>(x_691.x, x_691.y, x_691.z) / vec3<f32>(x_693.w, x_693.w, x_693.w));
      let x_696 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_695.x, x_695.y, x_695.z, x_696.w);
      let x_699 : vec4<f32> = u_xlat8;
      let x_700 : vec2<f32> = vec2<f32>(x_699.x, x_699.y);
      let x_702 : f32 = u_xlat8.z;
      txVec1 = vec3<f32>(x_700.x, x_700.y, x_702);
      let x_710 : vec3<f32> = txVec1;
      let x_712 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_710.xy, x_710.z);
      u_xlat33 = x_712;
      let x_713 : i32 = u_xlati15;
      let x_715 : f32 = x_248.x_AdditionalShadowParams[x_713].x;
      u_xlat34 = (1.0f + -(x_715));
      let x_718 : f32 = u_xlat33;
      let x_719 : i32 = u_xlati15;
      let x_721 : f32 = x_248.x_AdditionalShadowParams[x_719].x;
      let x_723 : f32 = u_xlat34;
      u_xlat33 = ((x_718 * x_721) + x_723);
      let x_726 : f32 = u_xlat8.z;
      u_xlatb34 = (0.0f >= x_726);
      let x_729 : f32 = u_xlat8.z;
      u_xlatb8.x = (x_729 >= 1.0f);
      let x_732 : bool = u_xlatb34;
      let x_734 : bool = u_xlatb8.x;
      u_xlatb34 = (x_732 | x_734);
      let x_736 : bool = u_xlatb34;
      let x_737 : f32 = u_xlat33;
      u_xlat33 = select(x_737, 1.0f, x_736);
    } else {
      u_xlat33 = 1.0f;
    }
    let x_740 : f32 = u_xlat33;
    u_xlat34 = (-(x_740) + 1.0f);
    let x_744 : f32 = u_xlat4.x;
    let x_745 : f32 = u_xlat34;
    let x_747 : f32 = u_xlat33;
    u_xlat33 = ((x_744 * x_745) + x_747);
    let x_749 : f32 = u_xlat33;
    let x_750 : f32 = u_xlat24;
    u_xlat24 = (x_749 * x_750);
    let x_752 : f32 = u_xlat24;
    let x_754 : i32 = u_xlati15;
    let x_756 : vec4<f32> = x_478.x_AdditionalLightsColor[x_754];
    u_xlat15 = (vec3<f32>(x_752, x_752, x_752) * vec3<f32>(x_756.x, x_756.y, x_756.z));
    let x_759 : vec3<f32> = u_xlat2;
    let x_760 : vec3<f32> = u_xlat7;
    u_xlat34 = dot(x_759, x_760);
    let x_762 : f32 = u_xlat34;
    u_xlat34 = clamp(x_762, 0.0f, 1.0f);
    let x_764 : vec3<f32> = u_xlat15;
    let x_765 : f32 = u_xlat34;
    let x_767 : vec3<f32> = (x_764 * vec3<f32>(x_765, x_765, x_765));
    let x_768 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_767.x, x_767.y, x_767.z, x_768.w);
    let x_770 : vec3<f32> = u_xlat1;
    let x_771 : f32 = u_xlat28;
    let x_774 : vec3<f32> = u_xlat7;
    u_xlat7 = ((x_770 * vec3<f32>(x_771, x_771, x_771)) + x_774);
    let x_776 : vec3<f32> = u_xlat7;
    let x_777 : vec3<f32> = u_xlat7;
    u_xlat34 = dot(x_776, x_777);
    let x_779 : f32 = u_xlat34;
    u_xlat34 = max(x_779, 1.17549435e-38f);
    let x_781 : f32 = u_xlat34;
    u_xlat34 = inverseSqrt(x_781);
    let x_783 : f32 = u_xlat34;
    let x_785 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_783, x_783, x_783) * x_785);
    let x_787 : vec3<f32> = u_xlat2;
    let x_788 : vec3<f32> = u_xlat7;
    u_xlat7.x = dot(x_787, x_788);
    let x_792 : f32 = u_xlat7.x;
    u_xlat7.x = clamp(x_792, 0.0f, 1.0f);
    let x_796 : f32 = u_xlat7.x;
    u_xlat7.x = log2(x_796);
    let x_799 : f32 = u_xlat30;
    let x_801 : f32 = u_xlat7.x;
    u_xlat7.x = (x_799 * x_801);
    let x_805 : f32 = u_xlat7.x;
    u_xlat7.x = exp2(x_805);
    let x_808 : vec3<f32> = u_xlat7;
    let x_811 : vec4<f32> = x_41.x_SpecColor;
    u_xlat7 = (vec3<f32>(x_808.x, x_808.x, x_808.x) * vec3<f32>(x_811.x, x_811.y, x_811.z));
    let x_814 : vec3<f32> = u_xlat15;
    let x_815 : vec3<f32> = u_xlat7;
    u_xlat15 = (x_814 * x_815);
    let x_817 : vec4<f32> = u_xlat8;
    let x_819 : vec4<f32> = u_xlat0;
    let x_822 : vec3<f32> = u_xlat15;
    u_xlat15 = ((vec3<f32>(x_817.x, x_817.y, x_817.z) * vec3<f32>(x_819.y, x_819.z, x_819.w)) + x_822);
    let x_824 : vec3<f32> = u_xlat14;
    let x_825 : vec3<f32> = u_xlat15;
    u_xlat14 = (x_824 + x_825);

    continuing {
      let x_827 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_827 + bitcast<u32>(1i));
    }
  }
  let x_830 : vec4<f32> = u_xlat3;
  let x_832 : vec4<f32> = u_xlat0;
  let x_835 : vec3<f32> = u_xlat13;
  u_xlat9 = ((vec3<f32>(x_830.x, x_830.y, x_830.z) * vec3<f32>(x_832.y, x_832.z, x_832.w)) + x_835);
  let x_837 : vec3<f32> = u_xlat14;
  let x_838 : vec3<f32> = u_xlat9;
  u_xlat9 = (x_837 + x_838);
  let x_840 : f32 = u_xlat29;
  let x_841 : f32 = u_xlat29;
  u_xlat1.x = (x_840 * -(x_841));
  let x_846 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_846);
  let x_849 : vec3<f32> = u_xlat9;
  let x_851 : vec4<f32> = x_28.unity_FogColor;
  u_xlat9 = (x_849 + -(vec3<f32>(x_851.x, x_851.y, x_851.z)));
  let x_857 : vec3<f32> = u_xlat1;
  let x_859 : vec3<f32> = u_xlat9;
  let x_862 : vec4<f32> = x_28.unity_FogColor;
  let x_864 : vec3<f32> = ((vec3<f32>(x_857.x, x_857.x, x_857.x) * x_859) + vec3<f32>(x_862.x, x_862.y, x_862.z));
  let x_865 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_864.x, x_864.y, x_864.z, x_865.w);
  let x_869 : f32 = x_41.x_Surface;
  u_xlatb9 = (x_869 == 1.0f);
  let x_871 : bool = u_xlatb9;
  if (x_871) {
    let x_876 : f32 = u_xlat0.x;
    x_872 = x_876;
  } else {
    x_872 = 1.0f;
  }
  let x_878 : f32 = x_872;
  SV_Target0.w = x_878;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD7_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


