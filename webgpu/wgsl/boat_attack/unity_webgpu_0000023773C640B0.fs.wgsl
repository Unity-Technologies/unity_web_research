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
  x_ScreenParams : vec4<f32>,
  /* @offset(96) */
  unity_OrthoParams : vec4<f32>,
  /* @offset(112) */
  unity_MatrixV : mat4x4<f32>,
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

struct UnityPerMaterial {
  /* @offset(0) */
  Texture2D_B222E8F_TexelSize : vec4<f32>,
  /* @offset(16) */
  Color_C30C7CA3 : vec4<f32>,
  /* @offset(32) */
  Texture2D_D9BFD5F1_TexelSize : vec4<f32>,
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

var<private> u_xlat0 : vec3<f32>;

var<private> vs_INTERP9 : vec3<f32>;

var<private> u_xlatb36 : bool;

@group(1) @binding(0) var<uniform> x_75 : PGlobals;

var<private> u_xlat1 : vec3<f32>;

var<private> vs_INTERP8 : vec3<f32>;

var<private> u_xlat37 : f32;

var<private> u_xlat2 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_148 : UnityPerDraw;

var<private> u_xlat36 : f32;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(5) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(10) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP5 : vec4<f32>;

var<private> u_xlat4 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_204 : UnityPerMaterial;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(6) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(11) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat17 : vec3<f32>;

var<private> vs_INTERP6 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_265 : LightShadows;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb38 : bool;

var<private> u_xlatb40 : bool;

var<private> u_xlat12 : vec3<f32>;

var<private> u_xlat38 : f32;

var<private> u_xlatu1 : vec3<u32>;

var<private> u_xlatu25 : u32;

var<private> u_xlatu3 : u32;

var<private> u_xlati25 : i32;

var<private> u_xlati13 : i32;

var<private> u_xlatu13 : u32;

var<private> u_xlati1 : i32;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlatb13 : vec2<bool>;

var<private> u_xlat25 : vec2<f32>;

var<private> u_xlatb1 : bool;

var<private> vs_INTERP4 : vec4<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP0 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat39 : f32;

var<private> u_xlat40 : f32;

var<private> vs_INTERP3 : vec4<f32>;

var<private> u_xlatb6 : bool;

var<private> u_xlatb18 : bool;

var<private> u_xlat18 : vec3<f32>;

var<private> u_xlat30 : f32;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlat19 : f32;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu6 : u32;

var<private> u_xlati43 : i32;

var<private> u_xlati6 : i32;

@group(1) @binding(1) var<uniform> x_1230 : AdditionalLights;

var<private> u_xlat43 : f32;

var<private> u_xlat44 : f32;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlat45 : f32;

var<private> u_xlati45 : i32;

var<private> u_xlatb10 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat22 : vec3<f32>;

var<private> u_xlat11 : f32;

var<private> u_xlat34 : f32;

var<private> u_xlat10 : vec4<f32>;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb22 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu39 : u32;

fn int_bitfieldInsert_i1_i1_i1_i1_(base : ptr<function, i32>, insert : ptr<function, i32>, offset_1 : ptr<function, i32>, bits : ptr<function, i32>) -> i32 {
  var mask : u32;
  let x_19 : i32 = *(bits);
  let x_23 : i32 = *(offset_1);
  mask = (~((4294967295u << bitcast<u32>(x_19))) << bitcast<u32>(x_23));
  let x_26 : i32 = *(base);
  let x_28 : u32 = mask;
  let x_31 : i32 = *(insert);
  let x_33 : i32 = *(offset_1);
  let x_36 : u32 = mask;
  return bitcast<i32>(((bitcast<u32>(x_26) & ~(x_28)) | ((bitcast<u32>(x_31) << bitcast<u32>(x_33)) & x_36)));
}

fn main_1() {
  var x_105 : f32;
  var x_119 : f32;
  var x_132 : f32;
  var txVec0 : vec3<f32>;
  var x_381 : f32;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var x_516 : f32;
  var x_547 : f32;
  var x_597 : f32;
  var txVec1 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1372 : f32;
  var x_1383 : f32;
  var txVec2 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_48 : vec3<f32> = vs_INTERP9;
  let x_49 : vec3<f32> = vs_INTERP9;
  u_xlat0.x = dot(x_48, x_49);
  let x_55 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_55);
  let x_60 : f32 = u_xlat0.x;
  u_xlat0.x = (1.0f / x_60);
  let x_63 : vec3<f32> = u_xlat0;
  let x_65 : vec3<f32> = vs_INTERP9;
  u_xlat0 = (vec3<f32>(x_63.x, x_63.x, x_63.x) * x_65);
  let x_80 : f32 = x_75.unity_OrthoParams.w;
  u_xlatb36 = (x_80 == 0.0f);
  let x_85 : vec3<f32> = vs_INTERP8;
  let x_90 : vec3<f32> = x_75.x_WorldSpaceCameraPos;
  u_xlat1 = (-(x_85) + x_90);
  let x_93 : vec3<f32> = u_xlat1;
  let x_94 : vec3<f32> = u_xlat1;
  u_xlat37 = dot(x_93, x_94);
  let x_96 : f32 = u_xlat37;
  u_xlat37 = inverseSqrt(x_96);
  let x_98 : f32 = u_xlat37;
  let x_100 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_98, x_98, x_98) * x_100);
  let x_103 : bool = u_xlatb36;
  if (x_103) {
    let x_109 : f32 = u_xlat1.x;
    x_105 = x_109;
  } else {
    let x_115 : f32 = x_75.unity_MatrixV[0i].z;
    x_105 = x_115;
  }
  let x_116 : f32 = x_105;
  u_xlat2.x = x_116;
  let x_118 : bool = u_xlatb36;
  if (x_118) {
    let x_124 : f32 = u_xlat1.y;
    x_119 = x_124;
  } else {
    let x_128 : f32 = x_75.unity_MatrixV[1i].z;
    x_119 = x_128;
  }
  let x_129 : f32 = x_119;
  u_xlat2.y = x_129;
  let x_131 : bool = u_xlatb36;
  if (x_131) {
    let x_136 : f32 = u_xlat1.z;
    x_132 = x_136;
  } else {
    let x_140 : f32 = x_75.unity_MatrixV[2i].z;
    x_132 = x_140;
  }
  let x_141 : f32 = x_132;
  u_xlat2.z = x_141;
  let x_143 : vec3<f32> = u_xlat2;
  let x_151 : vec4<f32> = x_148.unity_WorldToObject[1i];
  u_xlat1 = (vec3<f32>(x_143.y, x_143.y, x_143.y) * vec3<f32>(x_151.x, x_151.y, x_151.z));
  let x_155 : vec4<f32> = x_148.unity_WorldToObject[0i];
  let x_157 : vec3<f32> = u_xlat2;
  let x_160 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_155.x, x_155.y, x_155.z) * vec3<f32>(x_157.x, x_157.x, x_157.x)) + x_160);
  let x_163 : vec4<f32> = x_148.unity_WorldToObject[2i];
  let x_165 : vec3<f32> = u_xlat2;
  let x_168 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_163.x, x_163.y, x_163.z) * vec3<f32>(x_165.z, x_165.z, x_165.z)) + x_168);
  let x_171 : vec3<f32> = u_xlat1;
  let x_172 : vec3<f32> = u_xlat1;
  u_xlat36 = dot(x_171, x_172);
  let x_174 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_174);
  let x_176 : f32 = u_xlat36;
  let x_178 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_176, x_176, x_176) * x_178);
  let x_194 : vec4<f32> = vs_INTERP5;
  let x_197 : f32 = x_75.x_GlobalMipBias.x;
  let x_198 : vec4<f32> = textureSampleBias(Texture2D_B222E8F, samplerTexture2D_B222E8F, vec2<f32>(x_194.x, x_194.y), x_197);
  u_xlat3 = x_198;
  let x_200 : vec4<f32> = u_xlat3;
  let x_206 : vec4<f32> = x_204.Color_C30C7CA3;
  u_xlat4 = (vec3<f32>(x_200.x, x_200.y, x_200.z) * vec3<f32>(x_206.x, x_206.y, x_206.z));
  let x_215 : vec4<f32> = vs_INTERP5;
  let x_218 : f32 = x_75.x_GlobalMipBias.x;
  let x_219 : vec4<f32> = textureSampleBias(Texture2D_D9BFD5F1, samplerTexture2D_D9BFD5F1, vec2<f32>(x_215.x, x_215.y), x_218);
  u_xlat5 = vec4<f32>(x_219.w, x_219.x, x_219.y, x_219.z);
  let x_222 : vec4<f32> = u_xlat5;
  u_xlat6 = ((vec4<f32>(x_222.y, x_222.z, x_222.w, x_222.x) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_230 : vec4<f32> = u_xlat6;
  let x_231 : vec4<f32> = u_xlat6;
  u_xlat36 = dot(x_230, x_231);
  let x_233 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_233);
  let x_236 : f32 = u_xlat36;
  let x_238 : vec4<f32> = u_xlat6;
  u_xlat17 = (vec3<f32>(x_236, x_236, x_236) * vec3<f32>(x_238.x, x_238.y, x_238.z));
  let x_244 : f32 = vs_INTERP6.y;
  u_xlat36 = (x_244 * 200.0f);
  let x_247 : f32 = u_xlat36;
  u_xlat36 = min(x_247, 1.0f);
  let x_249 : f32 = u_xlat36;
  let x_251 : vec4<f32> = u_xlat3;
  let x_253 : vec3<f32> = (vec3<f32>(x_249, x_249, x_249) * vec3<f32>(x_251.x, x_251.y, x_251.z));
  let x_254 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_253.x, x_253.y, x_253.z, x_254.w);
  let x_256 : vec3<f32> = vs_INTERP8;
  let x_267 : vec4<f32> = x_265.x_MainLightWorldToShadow[0i][1i];
  let x_269 : vec3<f32> = (vec3<f32>(x_256.y, x_256.y, x_256.y) * vec3<f32>(x_267.x, x_267.y, x_267.z));
  let x_270 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_269.x, x_269.y, x_269.z, x_270.w);
  let x_273 : vec4<f32> = x_265.x_MainLightWorldToShadow[0i][0i];
  let x_275 : vec3<f32> = vs_INTERP8;
  let x_278 : vec4<f32> = u_xlat6;
  let x_280 : vec3<f32> = ((vec3<f32>(x_273.x, x_273.y, x_273.z) * vec3<f32>(x_275.x, x_275.x, x_275.x)) + vec3<f32>(x_278.x, x_278.y, x_278.z));
  let x_281 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_280.x, x_280.y, x_280.z, x_281.w);
  let x_284 : vec4<f32> = x_265.x_MainLightWorldToShadow[0i][2i];
  let x_286 : vec3<f32> = vs_INTERP8;
  let x_289 : vec4<f32> = u_xlat6;
  let x_291 : vec3<f32> = ((vec3<f32>(x_284.x, x_284.y, x_284.z) * vec3<f32>(x_286.z, x_286.z, x_286.z)) + vec3<f32>(x_289.x, x_289.y, x_289.z));
  let x_292 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_291.x, x_291.y, x_291.z, x_292.w);
  let x_294 : vec4<f32> = u_xlat6;
  let x_298 : vec4<f32> = x_265.x_MainLightWorldToShadow[0i][3i];
  let x_300 : vec3<f32> = (vec3<f32>(x_294.x, x_294.y, x_294.z) + vec3<f32>(x_298.x, x_298.y, x_298.z));
  let x_301 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_300.x, x_300.y, x_300.z, x_301.w);
  let x_305 : vec4<f32> = u_xlat6;
  let x_306 : vec2<f32> = vec2<f32>(x_305.x, x_305.y);
  let x_308 : f32 = u_xlat6.z;
  txVec0 = vec3<f32>(x_306.x, x_306.y, x_308);
  let x_320 : vec3<f32> = txVec0;
  let x_322 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_320.xy, x_320.z);
  u_xlat36 = x_322;
  let x_324 : f32 = x_265.x_MainLightShadowParams.x;
  u_xlat37 = (-(x_324) + 1.0f);
  let x_327 : f32 = u_xlat36;
  let x_329 : f32 = x_265.x_MainLightShadowParams.x;
  let x_331 : f32 = u_xlat37;
  u_xlat36 = ((x_327 * x_329) + x_331);
  let x_335 : f32 = u_xlat6.z;
  u_xlatb38 = (0.0f >= x_335);
  let x_339 : f32 = u_xlat6.z;
  u_xlatb40 = (x_339 >= 1.0f);
  let x_341 : bool = u_xlatb38;
  let x_342 : bool = u_xlatb40;
  u_xlatb38 = (x_341 | x_342);
  let x_344 : bool = u_xlatb38;
  let x_345 : f32 = u_xlat36;
  u_xlat36 = select(x_345, 1.0f, x_344);
  let x_347 : vec3<f32> = u_xlat0;
  let x_349 : vec4<f32> = x_75.x_MainLightPosition;
  u_xlat0.x = dot(x_347, -(vec3<f32>(x_349.x, x_349.y, x_349.z)));
  let x_355 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_355, 0.0f, 1.0f);
  let x_359 : f32 = u_xlat36;
  let x_362 : vec4<f32> = x_75.x_MainLightColor;
  u_xlat12 = (vec3<f32>(x_359, x_359, x_359) * vec3<f32>(x_362.x, x_362.y, x_362.z));
  let x_365 : vec3<f32> = u_xlat12;
  let x_366 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_365 * vec3<f32>(x_366.x, x_366.x, x_366.x));
  let x_369 : vec3<f32> = u_xlat0;
  let x_370 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_369 * vec3<f32>(x_370.x, x_370.y, x_370.z));
  let x_374 : f32 = x_148.unity_LODFade.x;
  u_xlatb36 = (x_374 < 0.0f);
  let x_378 : f32 = x_148.unity_LODFade.x;
  u_xlat38 = (x_378 + 1.0f);
  let x_380 : bool = u_xlatb36;
  if (x_380) {
    let x_384 : f32 = u_xlat38;
    x_381 = x_384;
  } else {
    let x_387 : f32 = x_148.unity_LODFade.x;
    x_381 = x_387;
  }
  let x_388 : f32 = x_381;
  u_xlat36 = x_388;
  let x_390 : f32 = u_xlat36;
  u_xlatb38 = (0.5f >= x_390);
  let x_392 : vec3<f32> = u_xlat1;
  let x_396 : vec4<f32> = x_75.x_ScreenParams;
  u_xlat1 = (abs(x_392) * vec3<f32>(x_396.x, x_396.y, x_396.x));
  let x_402 : vec3<f32> = u_xlat1;
  u_xlatu1 = vec3<u32>(x_402);
  let x_407 : u32 = u_xlatu1.z;
  u_xlatu25 = (x_407 * 1025u);
  let x_411 : u32 = u_xlatu25;
  u_xlatu3 = (x_411 >> 6u);
  let x_416 : u32 = u_xlatu25;
  let x_417 : u32 = u_xlatu3;
  u_xlati25 = bitcast<i32>((x_416 ^ x_417));
  let x_420 : i32 = u_xlati25;
  u_xlatu25 = (bitcast<u32>(x_420) * 9u);
  let x_424 : u32 = u_xlatu25;
  u_xlatu3 = (x_424 >> 11u);
  let x_427 : u32 = u_xlatu25;
  let x_428 : u32 = u_xlatu3;
  u_xlati25 = bitcast<i32>((x_427 ^ x_428));
  let x_431 : i32 = u_xlati25;
  u_xlati25 = (x_431 * 32769i);
  let x_435 : i32 = u_xlati25;
  let x_438 : u32 = u_xlatu1.y;
  u_xlati13 = bitcast<i32>((bitcast<u32>(x_435) ^ x_438));
  let x_442 : i32 = u_xlati13;
  u_xlatu13 = (bitcast<u32>(x_442) * 1025u);
  let x_445 : u32 = u_xlatu13;
  u_xlatu25 = (x_445 >> 6u);
  let x_447 : u32 = u_xlatu25;
  let x_448 : u32 = u_xlatu13;
  u_xlati13 = bitcast<i32>((x_447 ^ x_448));
  let x_451 : i32 = u_xlati13;
  u_xlatu13 = (bitcast<u32>(x_451) * 9u);
  let x_454 : u32 = u_xlatu13;
  u_xlatu25 = (x_454 >> 11u);
  let x_456 : u32 = u_xlatu25;
  let x_457 : u32 = u_xlatu13;
  u_xlati13 = bitcast<i32>((x_456 ^ x_457));
  let x_460 : i32 = u_xlati13;
  u_xlati13 = (x_460 * 32769i);
  let x_463 : i32 = u_xlati13;
  let x_466 : u32 = u_xlatu1.x;
  u_xlati1 = bitcast<i32>((bitcast<u32>(x_463) ^ x_466));
  let x_469 : i32 = u_xlati1;
  u_xlatu1.x = (bitcast<u32>(x_469) * 1025u);
  let x_474 : u32 = u_xlatu1.x;
  u_xlatu13 = (x_474 >> 6u);
  let x_476 : u32 = u_xlatu13;
  let x_478 : u32 = u_xlatu1.x;
  u_xlati1 = bitcast<i32>((x_476 ^ x_478));
  let x_481 : i32 = u_xlati1;
  u_xlatu1.x = (bitcast<u32>(x_481) * 9u);
  let x_486 : u32 = u_xlatu1.x;
  u_xlatu13 = (x_486 >> 11u);
  let x_488 : u32 = u_xlatu13;
  let x_490 : u32 = u_xlatu1.x;
  u_xlati1 = bitcast<i32>((x_488 ^ x_490));
  let x_493 : i32 = u_xlati1;
  u_xlati1 = (x_493 * 32769i);
  param = 1065353216i;
  let x_499 : i32 = u_xlati1;
  param_1 = x_499;
  param_2 = 0i;
  param_3 = 23i;
  let x_502 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlat1.x = bitcast<f32>(x_502);
  let x_506 : f32 = u_xlat1.x;
  u_xlat1.x = (x_506 + -1.0f);
  let x_511 : f32 = u_xlat1.x;
  u_xlat13.x = (-(x_511) + 1.0f);
  let x_515 : bool = u_xlatb38;
  if (x_515) {
    let x_520 : f32 = u_xlat1.x;
    x_516 = x_520;
  } else {
    let x_523 : f32 = u_xlat13.x;
    x_516 = x_523;
  }
  let x_524 : f32 = x_516;
  u_xlat1.x = x_524;
  let x_526 : f32 = u_xlat36;
  let x_529 : f32 = u_xlat1.x;
  u_xlat36 = ((x_526 * 2.0f) + -(x_529));
  let x_532 : f32 = u_xlat36;
  let x_534 : f32 = u_xlat3.w;
  u_xlat1.x = (x_532 * x_534);
  let x_541 : f32 = u_xlat1.x;
  u_xlatb13.x = (x_541 >= 0.40000000596046447754f);
  let x_546 : bool = u_xlatb13.x;
  if (x_546) {
    let x_551 : f32 = u_xlat1.x;
    x_547 = x_551;
  } else {
    x_547 = 0.0f;
  }
  let x_553 : f32 = x_547;
  u_xlat13.x = x_553;
  let x_556 : f32 = u_xlat3.w;
  let x_557 : f32 = u_xlat36;
  u_xlat36 = ((x_556 * x_557) + -0.40000000596046447754f);
  let x_564 : f32 = u_xlat1.x;
  u_xlat25.x = dpdxCoarse(x_564);
  let x_568 : f32 = u_xlat1.x;
  u_xlat1.x = dpdyCoarse(x_568);
  let x_572 : f32 = u_xlat1.x;
  let x_575 : f32 = u_xlat25.x;
  u_xlat1.x = (abs(x_572) + abs(x_575));
  let x_580 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_580, 0.00009999999747378752f);
  let x_584 : f32 = u_xlat36;
  let x_586 : f32 = u_xlat1.x;
  u_xlat36 = (x_584 / x_586);
  let x_588 : f32 = u_xlat36;
  u_xlat36 = (x_588 + 0.5f);
  let x_590 : f32 = u_xlat36;
  u_xlat36 = clamp(x_590, 0.0f, 1.0f);
  let x_594 : f32 = x_75.x_AlphaToMaskAvailable;
  u_xlatb1 = !((x_594 == 0.0f));
  let x_596 : bool = u_xlatb1;
  if (x_596) {
    let x_600 : f32 = u_xlat36;
    x_597 = x_600;
  } else {
    let x_603 : f32 = u_xlat13.x;
    x_597 = x_603;
  }
  let x_604 : f32 = x_597;
  u_xlat36 = x_604;
  let x_605 : f32 = u_xlat36;
  u_xlat13.x = (x_605 + -0.00009999999747378752f);
  let x_610 : f32 = u_xlat13.x;
  u_xlatb13.x = (x_610 < 0.0f);
  let x_614 : bool = u_xlatb13.x;
  if (((select(0i, 1i, x_614) * -1i) != 0i)) {
    discard;
  }
  let x_624 : f32 = vs_INTERP4.w;
  u_xlatb13.x = (0.0f < x_624);
  let x_628 : f32 = x_148.unity_WorldTransformParams.w;
  u_xlatb13.y = (x_628 >= 0.0f);
  let x_632 : bool = u_xlatb13.x;
  u_xlat13.x = select(-1.0f, 1.0f, x_632);
  let x_636 : bool = u_xlatb13.y;
  u_xlat13.y = select(-1.0f, 1.0f, x_636);
  let x_640 : f32 = u_xlat13.y;
  let x_642 : f32 = u_xlat13.x;
  u_xlat13.x = (x_640 * x_642);
  let x_645 : vec4<f32> = vs_INTERP4;
  let x_647 : vec3<f32> = vs_INTERP9;
  let x_649 : vec3<f32> = (vec3<f32>(x_645.y, x_645.z, x_645.x) * vec3<f32>(x_647.z, x_647.x, x_647.y));
  let x_650 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_649.x, x_649.y, x_649.z, x_650.w);
  let x_652 : vec3<f32> = vs_INTERP9;
  let x_654 : vec4<f32> = vs_INTERP4;
  let x_657 : vec4<f32> = u_xlat3;
  let x_660 : vec3<f32> = ((vec3<f32>(x_652.y, x_652.z, x_652.x) * vec3<f32>(x_654.z, x_654.x, x_654.y)) + -(vec3<f32>(x_657.x, x_657.y, x_657.z)));
  let x_661 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_660.x, x_660.y, x_660.z, x_661.w);
  let x_663 : vec3<f32> = u_xlat13;
  let x_665 : vec4<f32> = u_xlat3;
  let x_667 : vec3<f32> = (vec3<f32>(x_663.x, x_663.x, x_663.x) * vec3<f32>(x_665.x, x_665.y, x_665.z));
  let x_668 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_667.x, x_667.y, x_667.z, x_668.w);
  let x_670 : vec4<f32> = u_xlat3;
  let x_672 : vec3<f32> = u_xlat17;
  let x_674 : vec3<f32> = (vec3<f32>(x_670.x, x_670.y, x_670.z) * vec3<f32>(x_672.y, x_672.y, x_672.y));
  let x_675 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_674.x, x_674.y, x_674.z, x_675.w);
  let x_677 : vec3<f32> = u_xlat17;
  let x_679 : vec4<f32> = vs_INTERP4;
  let x_682 : vec4<f32> = u_xlat3;
  let x_684 : vec3<f32> = ((vec3<f32>(x_677.x, x_677.x, x_677.x) * vec3<f32>(x_679.x, x_679.y, x_679.z)) + vec3<f32>(x_682.x, x_682.y, x_682.z));
  let x_685 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_684.x, x_684.y, x_684.z, x_685.w);
  let x_687 : vec3<f32> = u_xlat17;
  let x_689 : vec3<f32> = vs_INTERP9;
  let x_691 : vec4<f32> = u_xlat3;
  let x_693 : vec3<f32> = ((vec3<f32>(x_687.z, x_687.z, x_687.z) * x_689) + vec3<f32>(x_691.x, x_691.y, x_691.z));
  let x_694 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_693.x, x_693.y, x_693.z, x_694.w);
  let x_696 : vec4<f32> = u_xlat3;
  let x_698 : vec4<f32> = u_xlat3;
  u_xlat13.x = dot(vec3<f32>(x_696.x, x_696.y, x_696.z), vec3<f32>(x_698.x, x_698.y, x_698.z));
  let x_703 : f32 = u_xlat13.x;
  u_xlat13.x = inverseSqrt(x_703);
  let x_706 : vec3<f32> = u_xlat13;
  let x_708 : vec4<f32> = u_xlat3;
  let x_710 : vec3<f32> = (vec3<f32>(x_706.x, x_706.x, x_706.x) * vec3<f32>(x_708.x, x_708.y, x_708.z));
  let x_711 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_710.x, x_710.y, x_710.z, x_711.w);
  let x_720 : vec2<f32> = vs_INTERP0;
  let x_722 : f32 = x_75.x_GlobalMipBias.x;
  let x_723 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_720, x_722);
  u_xlat6 = x_723;
  let x_728 : vec2<f32> = vs_INTERP0;
  let x_730 : f32 = x_75.x_GlobalMipBias.x;
  let x_731 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_728, x_730);
  u_xlat17 = vec3<f32>(x_731.x, x_731.y, x_731.z);
  let x_733 : vec4<f32> = u_xlat6;
  let x_737 : vec3<f32> = (vec3<f32>(x_733.x, x_733.y, x_733.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_738 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_737.x, x_737.y, x_737.z, x_738.w);
  let x_740 : vec4<f32> = u_xlat3;
  let x_742 : vec4<f32> = u_xlat6;
  u_xlat13.x = dot(vec3<f32>(x_740.x, x_740.y, x_740.z), vec3<f32>(x_742.x, x_742.y, x_742.z));
  let x_747 : f32 = u_xlat13.x;
  u_xlat13.x = (x_747 + 0.5f);
  let x_750 : vec3<f32> = u_xlat13;
  let x_752 : vec3<f32> = u_xlat17;
  u_xlat17 = (vec3<f32>(x_750.x, x_750.x, x_750.x) * x_752);
  let x_755 : f32 = u_xlat6.w;
  u_xlat13.x = max(x_755, 0.00009999999747378752f);
  let x_758 : vec3<f32> = u_xlat17;
  let x_759 : vec3<f32> = u_xlat13;
  u_xlat17 = (x_758 / vec3<f32>(x_759.x, x_759.x, x_759.x));
  let x_763 : f32 = u_xlat5.x;
  u_xlat5.x = x_763;
  let x_766 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_766, 0.0f, 1.0f);
  let x_769 : f32 = u_xlat36;
  u_xlat36 = x_769;
  let x_770 : f32 = u_xlat36;
  u_xlat36 = clamp(x_770, 0.0f, 1.0f);
  let x_772 : vec3<f32> = u_xlat4;
  u_xlat4 = (x_772 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_777 : f32 = u_xlat5.x;
  u_xlat13.x = (-(x_777) + 1.0f);
  let x_782 : f32 = u_xlat13.x;
  let x_784 : f32 = u_xlat13.x;
  u_xlat25.x = (x_782 * x_784);
  let x_788 : f32 = u_xlat25.x;
  u_xlat25.x = max(x_788, 0.0078125f);
  let x_793 : f32 = u_xlat25.x;
  let x_795 : f32 = u_xlat25.x;
  u_xlat38 = (x_793 * x_795);
  let x_799 : f32 = u_xlat5.x;
  u_xlat39 = (x_799 + 0.04000002145767211914f);
  let x_802 : f32 = u_xlat39;
  u_xlat39 = min(x_802, 1.0f);
  let x_806 : f32 = u_xlat25.x;
  u_xlat40 = ((x_806 * 4.0f) + 2.0f);
  let x_811 : f32 = vs_INTERP6.w;
  u_xlat5.x = min(x_811, 1.0f);
  let x_816 : vec4<f32> = vs_INTERP3;
  let x_817 : vec2<f32> = vec2<f32>(x_816.x, x_816.y);
  let x_819 : f32 = vs_INTERP3.z;
  txVec1 = vec3<f32>(x_817.x, x_817.y, x_819);
  let x_826 : vec3<f32> = txVec1;
  let x_828 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_826.xy, x_826.z);
  u_xlat6.x = x_828;
  let x_831 : f32 = u_xlat6.x;
  let x_833 : f32 = x_265.x_MainLightShadowParams.x;
  let x_835 : f32 = u_xlat37;
  u_xlat37 = ((x_831 * x_833) + x_835);
  let x_839 : f32 = vs_INTERP3.z;
  u_xlatb6 = (0.0f >= x_839);
  let x_843 : f32 = vs_INTERP3.z;
  u_xlatb18 = (x_843 >= 1.0f);
  let x_845 : bool = u_xlatb18;
  let x_846 : bool = u_xlatb6;
  u_xlatb6 = (x_845 | x_846);
  let x_848 : bool = u_xlatb6;
  let x_849 : f32 = u_xlat37;
  u_xlat37 = select(x_849, 1.0f, x_848);
  let x_851 : vec3<f32> = vs_INTERP8;
  let x_853 : vec3<f32> = x_75.x_WorldSpaceCameraPos;
  let x_855 : vec3<f32> = (x_851 + -(x_853));
  let x_856 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_855.x, x_855.y, x_855.z, x_856.w);
  let x_858 : vec4<f32> = u_xlat6;
  let x_860 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_858.x, x_858.y, x_858.z), vec3<f32>(x_860.x, x_860.y, x_860.z));
  let x_866 : f32 = u_xlat6.x;
  let x_868 : f32 = x_265.x_MainLightShadowParams.z;
  let x_871 : f32 = x_265.x_MainLightShadowParams.w;
  u_xlat18.x = ((x_866 * x_868) + x_871);
  let x_875 : f32 = u_xlat18.x;
  u_xlat18.x = clamp(x_875, 0.0f, 1.0f);
  let x_879 : f32 = u_xlat37;
  u_xlat30 = (-(x_879) + 1.0f);
  let x_883 : f32 = u_xlat18.x;
  let x_884 : f32 = u_xlat30;
  let x_886 : f32 = u_xlat37;
  u_xlat37 = ((x_883 * x_884) + x_886);
  let x_888 : vec3<f32> = u_xlat2;
  let x_890 : vec4<f32> = u_xlat3;
  u_xlat18.x = dot(-(x_888), vec3<f32>(x_890.x, x_890.y, x_890.z));
  let x_895 : f32 = u_xlat18.x;
  let x_897 : f32 = u_xlat18.x;
  u_xlat18.x = (x_895 + x_897);
  let x_900 : vec4<f32> = u_xlat3;
  let x_902 : vec3<f32> = u_xlat18;
  let x_906 : vec3<f32> = u_xlat2;
  u_xlat18 = ((vec3<f32>(x_900.x, x_900.y, x_900.z) * -(vec3<f32>(x_902.x, x_902.x, x_902.x))) + -(x_906));
  let x_910 : vec4<f32> = u_xlat3;
  let x_912 : vec3<f32> = u_xlat2;
  u_xlat7.x = dot(vec3<f32>(x_910.x, x_910.y, x_910.z), x_912);
  let x_916 : f32 = u_xlat7.x;
  u_xlat7.x = clamp(x_916, 0.0f, 1.0f);
  let x_920 : f32 = u_xlat7.x;
  u_xlat7.x = (-(x_920) + 1.0f);
  let x_925 : f32 = u_xlat7.x;
  let x_927 : f32 = u_xlat7.x;
  u_xlat7.x = (x_925 * x_927);
  let x_931 : f32 = u_xlat7.x;
  let x_933 : f32 = u_xlat7.x;
  u_xlat7.x = (x_931 * x_933);
  let x_938 : f32 = u_xlat13.x;
  u_xlat19 = ((-(x_938) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_945 : f32 = u_xlat13.x;
  let x_946 : f32 = u_xlat19;
  u_xlat13.x = (x_945 * x_946);
  let x_950 : f32 = u_xlat13.x;
  u_xlat13.x = (x_950 * 6.0f);
  let x_963 : vec3<f32> = u_xlat18;
  let x_965 : f32 = u_xlat13.x;
  let x_966 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_963, x_965);
  u_xlat8 = x_966;
  let x_968 : f32 = u_xlat8.w;
  u_xlat13.x = (x_968 + -1.0f);
  let x_972 : f32 = x_148.unity_SpecCube0_HDR.w;
  let x_974 : f32 = u_xlat13.x;
  u_xlat13.x = ((x_972 * x_974) + 1.0f);
  let x_979 : f32 = u_xlat13.x;
  u_xlat13.x = max(x_979, 0.0f);
  let x_983 : f32 = u_xlat13.x;
  u_xlat13.x = log2(x_983);
  let x_987 : f32 = u_xlat13.x;
  let x_989 : f32 = x_148.unity_SpecCube0_HDR.y;
  u_xlat13.x = (x_987 * x_989);
  let x_993 : f32 = u_xlat13.x;
  u_xlat13.x = exp2(x_993);
  let x_997 : f32 = u_xlat13.x;
  let x_999 : f32 = x_148.unity_SpecCube0_HDR.x;
  u_xlat13.x = (x_997 * x_999);
  let x_1002 : vec4<f32> = u_xlat8;
  let x_1004 : vec3<f32> = u_xlat13;
  u_xlat18 = (vec3<f32>(x_1002.x, x_1002.y, x_1002.z) * vec3<f32>(x_1004.x, x_1004.x, x_1004.x));
  let x_1007 : vec2<f32> = u_xlat25;
  let x_1009 : vec2<f32> = u_xlat25;
  let x_1013 : vec2<f32> = ((vec2<f32>(x_1007.x, x_1007.x) * vec2<f32>(x_1009.x, x_1009.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_1014 : vec3<f32> = u_xlat13;
  u_xlat13 = vec3<f32>(x_1013.x, x_1013.y, x_1014.z);
  let x_1017 : f32 = u_xlat13.y;
  u_xlat25.x = (1.0f / x_1017);
  let x_1020 : f32 = u_xlat39;
  u_xlat39 = (x_1020 + -0.03999999910593032837f);
  let x_1024 : f32 = u_xlat7.x;
  let x_1025 : f32 = u_xlat39;
  u_xlat39 = ((x_1024 * x_1025) + 0.03999999910593032837f);
  let x_1030 : f32 = u_xlat25.x;
  let x_1031 : f32 = u_xlat39;
  u_xlat25.x = (x_1030 * x_1031);
  let x_1034 : vec2<f32> = u_xlat25;
  let x_1036 : vec3<f32> = u_xlat18;
  u_xlat18 = (vec3<f32>(x_1034.x, x_1034.x, x_1034.x) * x_1036);
  let x_1038 : vec3<f32> = u_xlat17;
  let x_1039 : vec3<f32> = u_xlat4;
  let x_1041 : vec3<f32> = u_xlat18;
  u_xlat17 = ((x_1038 * x_1039) + x_1041);
  let x_1043 : f32 = u_xlat37;
  let x_1045 : f32 = x_148.unity_LightData.z;
  u_xlat25.x = (x_1043 * x_1045);
  let x_1048 : vec4<f32> = u_xlat3;
  let x_1051 : vec4<f32> = x_75.x_MainLightPosition;
  u_xlat37 = dot(vec3<f32>(x_1048.x, x_1048.y, x_1048.z), vec3<f32>(x_1051.x, x_1051.y, x_1051.z));
  let x_1054 : f32 = u_xlat37;
  u_xlat37 = clamp(x_1054, 0.0f, 1.0f);
  let x_1056 : f32 = u_xlat37;
  let x_1058 : f32 = u_xlat25.x;
  u_xlat25.x = (x_1056 * x_1058);
  let x_1061 : vec2<f32> = u_xlat25;
  let x_1064 : vec4<f32> = x_75.x_MainLightColor;
  u_xlat18 = (vec3<f32>(x_1061.x, x_1061.x, x_1061.x) * vec3<f32>(x_1064.x, x_1064.y, x_1064.z));
  let x_1067 : vec3<f32> = u_xlat2;
  let x_1069 : vec4<f32> = x_75.x_MainLightPosition;
  u_xlat7 = (x_1067 + vec3<f32>(x_1069.x, x_1069.y, x_1069.z));
  let x_1072 : vec3<f32> = u_xlat7;
  let x_1073 : vec3<f32> = u_xlat7;
  u_xlat25.x = dot(x_1072, x_1073);
  let x_1077 : f32 = u_xlat25.x;
  u_xlat25.x = max(x_1077, 1.17549435e-38f);
  let x_1082 : f32 = u_xlat25.x;
  u_xlat25.x = inverseSqrt(x_1082);
  let x_1085 : vec2<f32> = u_xlat25;
  let x_1087 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_1085.x, x_1085.x, x_1085.x) * x_1087);
  let x_1089 : vec4<f32> = u_xlat3;
  let x_1091 : vec3<f32> = u_xlat7;
  u_xlat25.x = dot(vec3<f32>(x_1089.x, x_1089.y, x_1089.z), x_1091);
  let x_1095 : f32 = u_xlat25.x;
  u_xlat25.x = clamp(x_1095, 0.0f, 1.0f);
  let x_1099 : vec4<f32> = x_75.x_MainLightPosition;
  let x_1101 : vec3<f32> = u_xlat7;
  u_xlat25.y = dot(vec3<f32>(x_1099.x, x_1099.y, x_1099.z), x_1101);
  let x_1105 : f32 = u_xlat25.y;
  u_xlat25.y = clamp(x_1105, 0.0f, 1.0f);
  let x_1108 : vec2<f32> = u_xlat25;
  let x_1109 : vec2<f32> = u_xlat25;
  u_xlat25 = (x_1108 * x_1109);
  let x_1112 : f32 = u_xlat25.x;
  let x_1114 : f32 = u_xlat13.x;
  u_xlat25.x = ((x_1112 * x_1114) + 1.00001001358032226562f);
  let x_1120 : f32 = u_xlat25.x;
  let x_1122 : f32 = u_xlat25.x;
  u_xlat25.x = (x_1120 * x_1122);
  let x_1126 : f32 = u_xlat25.y;
  u_xlat37 = max(x_1126, 0.10000000149011611938f);
  let x_1129 : f32 = u_xlat37;
  let x_1131 : f32 = u_xlat25.x;
  u_xlat25.x = (x_1129 * x_1131);
  let x_1134 : f32 = u_xlat40;
  let x_1136 : f32 = u_xlat25.x;
  u_xlat25.x = (x_1134 * x_1136);
  let x_1139 : f32 = u_xlat38;
  let x_1141 : f32 = u_xlat25.x;
  u_xlat25.x = (x_1139 / x_1141);
  let x_1144 : vec2<f32> = u_xlat25;
  let x_1148 : vec3<f32> = u_xlat4;
  u_xlat7 = ((vec3<f32>(x_1144.x, x_1144.x, x_1144.x) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_1148);
  let x_1150 : vec3<f32> = u_xlat18;
  let x_1151 : vec3<f32> = u_xlat7;
  u_xlat18 = (x_1150 * x_1151);
  let x_1155 : f32 = x_75.x_AdditionalLightsCount.x;
  let x_1157 : f32 = x_148.unity_LightData.y;
  u_xlat25.x = min(x_1155, x_1157);
  let x_1161 : f32 = u_xlat25.x;
  u_xlatu25 = bitcast<u32>(i32(x_1161));
  let x_1165 : f32 = u_xlat6.x;
  let x_1168 : f32 = x_265.x_AdditionalShadowFadeParams.x;
  let x_1171 : f32 = x_265.x_AdditionalShadowFadeParams.y;
  u_xlat37 = ((x_1165 * x_1168) + x_1171);
  let x_1173 : f32 = u_xlat37;
  u_xlat37 = clamp(x_1173, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1184 : u32 = u_xlatu_loop_1;
    let x_1185 : u32 = u_xlatu25;
    if ((x_1184 < x_1185)) {
    } else {
      break;
    }
    let x_1188 : u32 = u_xlatu_loop_1;
    u_xlatu6 = (x_1188 >> 2u);
    let x_1191 : u32 = u_xlatu_loop_1;
    u_xlati43 = bitcast<i32>((x_1191 & 3u));
    let x_1194 : u32 = u_xlatu6;
    let x_1197 : vec4<f32> = x_148.unity_LightIndices[bitcast<i32>(x_1194)];
    let x_1207 : i32 = u_xlati43;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1212 : vec4<u32> = indexable[x_1207];
    u_xlat6.x = dot(x_1197, bitcast<vec4<f32>>(x_1212));
    let x_1218 : f32 = u_xlat6.x;
    u_xlati6 = i32(x_1218);
    let x_1220 : vec3<f32> = vs_INTERP8;
    let x_1231 : i32 = u_xlati6;
    let x_1233 : vec4<f32> = x_1230.x_AdditionalLightsPosition[x_1231];
    let x_1236 : i32 = u_xlati6;
    let x_1238 : vec4<f32> = x_1230.x_AdditionalLightsPosition[x_1236];
    let x_1240 : vec3<f32> = ((-(x_1220) * vec3<f32>(x_1233.w, x_1233.w, x_1233.w)) + vec3<f32>(x_1238.x, x_1238.y, x_1238.z));
    let x_1241 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1240.x, x_1240.y, x_1240.z, x_1241.w);
    let x_1244 : vec4<f32> = u_xlat8;
    let x_1246 : vec4<f32> = u_xlat8;
    u_xlat43 = dot(vec3<f32>(x_1244.x, x_1244.y, x_1244.z), vec3<f32>(x_1246.x, x_1246.y, x_1246.z));
    let x_1249 : f32 = u_xlat43;
    u_xlat43 = max(x_1249, 0.00006103515625f);
    let x_1253 : f32 = u_xlat43;
    u_xlat44 = inverseSqrt(x_1253);
    let x_1256 : f32 = u_xlat44;
    let x_1258 : vec4<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_1256, x_1256, x_1256) * vec3<f32>(x_1258.x, x_1258.y, x_1258.z));
    let x_1262 : f32 = u_xlat43;
    u_xlat45 = (1.0f / x_1262);
    let x_1264 : f32 = u_xlat43;
    let x_1265 : i32 = u_xlati6;
    let x_1267 : f32 = x_1230.x_AdditionalLightsAttenuation[x_1265].x;
    u_xlat43 = (x_1264 * x_1267);
    let x_1269 : f32 = u_xlat43;
    let x_1271 : f32 = u_xlat43;
    u_xlat43 = ((-(x_1269) * x_1271) + 1.0f);
    let x_1274 : f32 = u_xlat43;
    u_xlat43 = max(x_1274, 0.0f);
    let x_1276 : f32 = u_xlat43;
    let x_1277 : f32 = u_xlat43;
    u_xlat43 = (x_1276 * x_1277);
    let x_1279 : f32 = u_xlat43;
    let x_1280 : f32 = u_xlat45;
    u_xlat43 = (x_1279 * x_1280);
    let x_1282 : i32 = u_xlati6;
    let x_1284 : vec4<f32> = x_1230.x_AdditionalLightsSpotDir[x_1282];
    let x_1286 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(vec3<f32>(x_1284.x, x_1284.y, x_1284.z), x_1286);
    let x_1288 : f32 = u_xlat45;
    let x_1289 : i32 = u_xlati6;
    let x_1291 : f32 = x_1230.x_AdditionalLightsAttenuation[x_1289].z;
    let x_1293 : i32 = u_xlati6;
    let x_1295 : f32 = x_1230.x_AdditionalLightsAttenuation[x_1293].w;
    u_xlat45 = ((x_1288 * x_1291) + x_1295);
    let x_1297 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1297, 0.0f, 1.0f);
    let x_1299 : f32 = u_xlat45;
    let x_1300 : f32 = u_xlat45;
    u_xlat45 = (x_1299 * x_1300);
    let x_1302 : f32 = u_xlat43;
    let x_1303 : f32 = u_xlat45;
    u_xlat43 = (x_1302 * x_1303);
    let x_1307 : i32 = u_xlati6;
    let x_1309 : f32 = x_265.x_AdditionalShadowParams[x_1307].w;
    u_xlati45 = i32(x_1309);
    let x_1314 : i32 = u_xlati45;
    u_xlatb10.x = (x_1314 >= 0i);
    let x_1318 : bool = u_xlatb10.x;
    if (x_1318) {
      let x_1322 : i32 = u_xlati6;
      let x_1324 : f32 = x_265.x_AdditionalShadowParams[x_1322].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1324, x_1324, x_1324, x_1324))));
      let x_1331 : bool = u_xlatb10.x;
      if (x_1331) {
        let x_1334 : vec3<f32> = u_xlat9;
        let x_1337 : vec3<f32> = u_xlat9;
        let x_1340 : vec4<bool> = (abs(vec4<f32>(x_1334.z, x_1334.z, x_1334.y, x_1334.z)) >= abs(vec4<f32>(x_1337.x, x_1337.y, x_1337.x, x_1337.x)));
        u_xlatb10 = vec3<bool>(x_1340.x, x_1340.y, x_1340.z);
        let x_1343 : bool = u_xlatb10.y;
        let x_1345 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_1343 & x_1345);
        let x_1349 : vec3<f32> = u_xlat9;
        let x_1352 : vec4<bool> = (-(vec4<f32>(x_1349.z, x_1349.y, x_1349.x, x_1349.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_1352.x, x_1352.y, x_1352.z);
        let x_1356 : bool = u_xlatb11.x;
        u_xlat22.x = select(4.0f, 5.0f, x_1356);
        let x_1361 : bool = u_xlatb11.y;
        u_xlat22.z = select(2.0f, 3.0f, x_1361);
        let x_1367 : bool = u_xlatb11.z;
        u_xlat11 = select(0.0f, 1.0f, x_1367);
        let x_1371 : bool = u_xlatb10.z;
        if (x_1371) {
          let x_1376 : f32 = u_xlat22.z;
          x_1372 = x_1376;
        } else {
          let x_1378 : f32 = u_xlat11;
          x_1372 = x_1378;
        }
        let x_1379 : f32 = x_1372;
        u_xlat34 = x_1379;
        let x_1382 : bool = u_xlatb10.x;
        if (x_1382) {
          let x_1387 : f32 = u_xlat22.x;
          x_1383 = x_1387;
        } else {
          let x_1389 : f32 = u_xlat34;
          x_1383 = x_1389;
        }
        let x_1390 : f32 = x_1383;
        u_xlat10.x = x_1390;
        let x_1392 : i32 = u_xlati6;
        let x_1394 : f32 = x_265.x_AdditionalShadowParams[x_1392].w;
        u_xlat22.x = trunc(x_1394);
        let x_1398 : f32 = u_xlat10.x;
        let x_1400 : f32 = u_xlat22.x;
        u_xlat10.x = (x_1398 + x_1400);
        let x_1404 : f32 = u_xlat10.x;
        u_xlati45 = i32(x_1404);
      }
      let x_1406 : i32 = u_xlati45;
      u_xlati45 = (x_1406 << bitcast<u32>(2i));
      let x_1408 : vec3<f32> = vs_INTERP8;
      let x_1411 : i32 = u_xlati45;
      let x_1414 : i32 = u_xlati45;
      let x_1418 : vec4<f32> = x_265.x_AdditionalLightsWorldToShadow[((x_1411 + 1i) / 4i)][((x_1414 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_1408.y, x_1408.y, x_1408.y, x_1408.y) * x_1418);
      let x_1420 : i32 = u_xlati45;
      let x_1422 : i32 = u_xlati45;
      let x_1425 : vec4<f32> = x_265.x_AdditionalLightsWorldToShadow[(x_1420 / 4i)][(x_1422 % 4i)];
      let x_1426 : vec3<f32> = vs_INTERP8;
      let x_1429 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1425 * vec4<f32>(x_1426.x, x_1426.x, x_1426.x, x_1426.x)) + x_1429);
      let x_1431 : i32 = u_xlati45;
      let x_1434 : i32 = u_xlati45;
      let x_1438 : vec4<f32> = x_265.x_AdditionalLightsWorldToShadow[((x_1431 + 2i) / 4i)][((x_1434 + 2i) % 4i)];
      let x_1439 : vec3<f32> = vs_INTERP8;
      let x_1442 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1438 * vec4<f32>(x_1439.z, x_1439.z, x_1439.z, x_1439.z)) + x_1442);
      let x_1444 : vec4<f32> = u_xlat10;
      let x_1445 : i32 = u_xlati45;
      let x_1448 : i32 = u_xlati45;
      let x_1452 : vec4<f32> = x_265.x_AdditionalLightsWorldToShadow[((x_1445 + 3i) / 4i)][((x_1448 + 3i) % 4i)];
      u_xlat10 = (x_1444 + x_1452);
      let x_1454 : vec4<f32> = u_xlat10;
      let x_1456 : vec4<f32> = u_xlat10;
      let x_1458 : vec3<f32> = (vec3<f32>(x_1454.x, x_1454.y, x_1454.z) / vec3<f32>(x_1456.w, x_1456.w, x_1456.w));
      let x_1459 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1458.x, x_1458.y, x_1458.z, x_1459.w);
      let x_1462 : vec4<f32> = u_xlat10;
      let x_1463 : vec2<f32> = vec2<f32>(x_1462.x, x_1462.y);
      let x_1465 : f32 = u_xlat10.z;
      txVec2 = vec3<f32>(x_1463.x, x_1463.y, x_1465);
      let x_1473 : vec3<f32> = txVec2;
      let x_1475 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1473.xy, x_1473.z);
      u_xlat45 = x_1475;
      let x_1476 : i32 = u_xlati6;
      let x_1478 : f32 = x_265.x_AdditionalShadowParams[x_1476].x;
      u_xlat10.x = (1.0f + -(x_1478));
      let x_1482 : f32 = u_xlat45;
      let x_1483 : i32 = u_xlati6;
      let x_1485 : f32 = x_265.x_AdditionalShadowParams[x_1483].x;
      let x_1488 : f32 = u_xlat10.x;
      u_xlat45 = ((x_1482 * x_1485) + x_1488);
      let x_1491 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_1491);
      let x_1496 : f32 = u_xlat10.z;
      u_xlatb22 = (x_1496 >= 1.0f);
      let x_1498 : bool = u_xlatb22;
      let x_1500 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_1498 | x_1500);
      let x_1504 : bool = u_xlatb10.x;
      let x_1505 : f32 = u_xlat45;
      u_xlat45 = select(x_1505, 1.0f, x_1504);
    } else {
      u_xlat45 = 1.0f;
    }
    let x_1508 : f32 = u_xlat45;
    u_xlat10.x = (-(x_1508) + 1.0f);
    let x_1512 : f32 = u_xlat37;
    let x_1514 : f32 = u_xlat10.x;
    let x_1516 : f32 = u_xlat45;
    u_xlat45 = ((x_1512 * x_1514) + x_1516);
    let x_1518 : f32 = u_xlat43;
    let x_1519 : f32 = u_xlat45;
    u_xlat43 = (x_1518 * x_1519);
    let x_1521 : vec4<f32> = u_xlat3;
    let x_1523 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(vec3<f32>(x_1521.x, x_1521.y, x_1521.z), x_1523);
    let x_1525 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1525, 0.0f, 1.0f);
    let x_1527 : f32 = u_xlat43;
    let x_1528 : f32 = u_xlat45;
    u_xlat43 = (x_1527 * x_1528);
    let x_1530 : f32 = u_xlat43;
    let x_1532 : i32 = u_xlati6;
    let x_1534 : vec4<f32> = x_1230.x_AdditionalLightsColor[x_1532];
    let x_1536 : vec3<f32> = (vec3<f32>(x_1530, x_1530, x_1530) * vec3<f32>(x_1534.x, x_1534.y, x_1534.z));
    let x_1537 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1536.x, x_1536.y, x_1536.z, x_1537.w);
    let x_1539 : vec4<f32> = u_xlat8;
    let x_1541 : f32 = u_xlat44;
    let x_1544 : vec3<f32> = u_xlat2;
    let x_1545 : vec3<f32> = ((vec3<f32>(x_1539.x, x_1539.y, x_1539.z) * vec3<f32>(x_1541, x_1541, x_1541)) + x_1544);
    let x_1546 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1545.x, x_1545.y, x_1545.z, x_1546.w);
    let x_1548 : vec4<f32> = u_xlat8;
    let x_1550 : vec4<f32> = u_xlat8;
    u_xlat6.x = dot(vec3<f32>(x_1548.x, x_1548.y, x_1548.z), vec3<f32>(x_1550.x, x_1550.y, x_1550.z));
    let x_1555 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_1555, 1.17549435e-38f);
    let x_1559 : f32 = u_xlat6.x;
    u_xlat6.x = inverseSqrt(x_1559);
    let x_1562 : vec4<f32> = u_xlat6;
    let x_1564 : vec4<f32> = u_xlat8;
    let x_1566 : vec3<f32> = (vec3<f32>(x_1562.x, x_1562.x, x_1562.x) * vec3<f32>(x_1564.x, x_1564.y, x_1564.z));
    let x_1567 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1566.x, x_1566.y, x_1566.z, x_1567.w);
    let x_1569 : vec4<f32> = u_xlat3;
    let x_1571 : vec4<f32> = u_xlat8;
    u_xlat6.x = dot(vec3<f32>(x_1569.x, x_1569.y, x_1569.z), vec3<f32>(x_1571.x, x_1571.y, x_1571.z));
    let x_1576 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_1576, 0.0f, 1.0f);
    let x_1579 : vec3<f32> = u_xlat9;
    let x_1580 : vec4<f32> = u_xlat8;
    u_xlat43 = dot(x_1579, vec3<f32>(x_1580.x, x_1580.y, x_1580.z));
    let x_1583 : f32 = u_xlat43;
    u_xlat43 = clamp(x_1583, 0.0f, 1.0f);
    let x_1586 : f32 = u_xlat6.x;
    let x_1588 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1586 * x_1588);
    let x_1592 : f32 = u_xlat6.x;
    let x_1594 : f32 = u_xlat13.x;
    u_xlat6.x = ((x_1592 * x_1594) + 1.00001001358032226562f);
    let x_1598 : f32 = u_xlat43;
    let x_1599 : f32 = u_xlat43;
    u_xlat43 = (x_1598 * x_1599);
    let x_1602 : f32 = u_xlat6.x;
    let x_1604 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1602 * x_1604);
    let x_1607 : f32 = u_xlat43;
    u_xlat43 = max(x_1607, 0.10000000149011611938f);
    let x_1610 : f32 = u_xlat6.x;
    let x_1611 : f32 = u_xlat43;
    u_xlat6.x = (x_1610 * x_1611);
    let x_1614 : f32 = u_xlat40;
    let x_1616 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1614 * x_1616);
    let x_1619 : f32 = u_xlat38;
    let x_1621 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1619 / x_1621);
    let x_1624 : vec4<f32> = u_xlat6;
    let x_1627 : vec3<f32> = u_xlat4;
    let x_1628 : vec3<f32> = ((vec3<f32>(x_1624.x, x_1624.x, x_1624.x) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_1627);
    let x_1629 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1628.x, x_1628.y, x_1628.z, x_1629.w);
    let x_1631 : vec4<f32> = u_xlat8;
    let x_1633 : vec4<f32> = u_xlat10;
    let x_1636 : vec3<f32> = u_xlat7;
    u_xlat7 = ((vec3<f32>(x_1631.x, x_1631.y, x_1631.z) * vec3<f32>(x_1633.x, x_1633.y, x_1633.z)) + x_1636);

    continuing {
      let x_1638 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1638 + bitcast<u32>(1i));
    }
  }
  let x_1640 : vec3<f32> = u_xlat17;
  let x_1641 : vec4<f32> = u_xlat5;
  let x_1644 : vec3<f32> = u_xlat18;
  u_xlat13 = ((x_1640 * vec3<f32>(x_1641.x, x_1641.x, x_1641.x)) + x_1644);
  let x_1646 : vec3<f32> = u_xlat7;
  let x_1647 : vec3<f32> = u_xlat13;
  u_xlat13 = (x_1646 + x_1647);
  let x_1651 : vec4<f32> = vs_INTERP6;
  let x_1653 : vec3<f32> = u_xlat0;
  let x_1655 : vec3<f32> = u_xlat13;
  let x_1656 : vec3<f32> = ((vec3<f32>(x_1651.w, x_1651.w, x_1651.w) * x_1653) + x_1655);
  let x_1657 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1656.x, x_1656.y, x_1656.z, x_1657.w);
  let x_1659 : bool = u_xlatb1;
  let x_1660 : f32 = u_xlat36;
  SV_Target0.w = select(1.0f, x_1660, x_1659);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(6) vs_INTERP9_param : vec3<f32>, @location(5) vs_INTERP8_param : vec3<f32>, @location(3) vs_INTERP5_param : vec4<f32>, @location(4) vs_INTERP6_param : vec4<f32>, @location(2) vs_INTERP4_param : vec4<f32>, @location(0) vs_INTERP0_param : vec2<f32>, @location(1) vs_INTERP3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP9 = vs_INTERP9_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP6 = vs_INTERP6_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP3 = vs_INTERP3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


