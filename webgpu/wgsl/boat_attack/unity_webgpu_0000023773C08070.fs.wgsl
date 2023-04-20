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

alias Arr_5 = array<mat4x4<f32>, 32u>;

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
  x_AdditionalLightsWorldToShadow : Arr_5,
}

alias Arr_6 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_7 = array<strided_arr, 32u>;

alias Arr_8 = array<strided_arr, 32u>;

struct LightCookies {
  /* @offset(0) */
  x_MainLightWorldToLight : mat4x4<f32>,
  /* @offset(64) */
  x_AdditionalLightsCookieEnableBits : f32,
  /* @offset(68) */
  x_MainLightCookieTextureFormat : f32,
  /* @offset(72) */
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
  /* @offset(80) */
  x_AdditionalLightsWorldToLights : Arr_5,
  /* @offset(2128) */
  x_AdditionalLightsCookieAtlasUVRects : Arr_4,
  /* @offset(2640) */
  x_AdditionalLightsLightTypes : Arr_8,
}

alias Arr_9 = array<vec4<f32>, 32u>;

alias Arr_10 = array<vec4<f32>, 32u>;

alias Arr_11 = array<vec4<f32>, 32u>;

alias Arr_12 = array<vec4<f32>, 32u>;

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
  x_AdditionalLightsLayerMasks : Arr_8,
}

var<private> u_xlat0 : vec3<f32>;

var<private> vs_INTERP9 : vec3<f32>;

var<private> u_xlatb42 : bool;

@group(1) @binding(0) var<uniform> x_75 : PGlobals;

var<private> u_xlat1 : vec3<f32>;

var<private> vs_INTERP8 : vec3<f32>;

var<private> u_xlat43 : f32;

var<private> u_xlat2 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_148 : UnityPerDraw;

var<private> u_xlat42 : f32;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(7) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(14) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP5 : vec4<f32>;

var<private> u_xlat4 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_204 : UnityPerMaterial;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(8) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(15) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat19 : vec3<f32>;

var<private> vs_INTERP6 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_265 : LightShadows;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb44 : bool;

var<private> u_xlatb46 : bool;

var<private> u_xlat14 : vec3<f32>;

var<private> u_xlat44 : f32;

var<private> u_xlatu1 : vec3<u32>;

var<private> u_xlatu29 : u32;

var<private> u_xlatu3 : u32;

var<private> u_xlati29 : i32;

var<private> u_xlati15 : i32;

var<private> u_xlatu15 : u32;

var<private> u_xlati1 : i32;

var<private> u_xlat15 : vec3<f32>;

var<private> u_xlatb15 : vec2<bool>;

var<private> u_xlat29 : vec2<f32>;

var<private> u_xlatb1 : bool;

var<private> vs_INTERP4 : vec4<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP0 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat45 : f32;

var<private> u_xlat46 : f32;

var<private> vs_INTERP3 : vec4<f32>;

var<private> u_xlatb6 : bool;

var<private> u_xlatb20 : vec2<bool>;

var<private> u_xlat20 : vec3<f32>;

var<private> u_xlat34 : f32;

@group(1) @binding(4) var<uniform> x_895 : LightCookies;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlat49 : f32;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlatu6 : u32;

var<private> u_xlati35 : i32;

var<private> u_xlati6 : i32;

var<private> u_xlat9 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_1377 : AdditionalLights;

var<private> u_xlat35 : f32;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat50 : f32;

var<private> u_xlati50 : i32;

var<private> u_xlatb51 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat52 : f32;

var<private> u_xlat51 : f32;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb52 : bool;

var<private> u_xlati51 : i32;

var<private> u_xlati52 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlat25 : vec3<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec3<f32>;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu45 : u32;

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
  var x_980 : f32;
  var x_991 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1510 : f32;
  var x_1520 : f32;
  var txVec2 : vec3<f32>;
  var x_1950 : f32;
  var x_1963 : f32;
  var x_2021 : f32;
  var x_2032 : vec3<f32>;
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
  u_xlatb42 = (x_80 == 0.0f);
  let x_85 : vec3<f32> = vs_INTERP8;
  let x_90 : vec3<f32> = x_75.x_WorldSpaceCameraPos;
  u_xlat1 = (-(x_85) + x_90);
  let x_93 : vec3<f32> = u_xlat1;
  let x_94 : vec3<f32> = u_xlat1;
  u_xlat43 = dot(x_93, x_94);
  let x_96 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_96);
  let x_98 : f32 = u_xlat43;
  let x_100 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_98, x_98, x_98) * x_100);
  let x_103 : bool = u_xlatb42;
  if (x_103) {
    let x_109 : f32 = u_xlat1.x;
    x_105 = x_109;
  } else {
    let x_115 : f32 = x_75.unity_MatrixV[0i].z;
    x_105 = x_115;
  }
  let x_116 : f32 = x_105;
  u_xlat2.x = x_116;
  let x_118 : bool = u_xlatb42;
  if (x_118) {
    let x_124 : f32 = u_xlat1.y;
    x_119 = x_124;
  } else {
    let x_128 : f32 = x_75.unity_MatrixV[1i].z;
    x_119 = x_128;
  }
  let x_129 : f32 = x_119;
  u_xlat2.y = x_129;
  let x_131 : bool = u_xlatb42;
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
  u_xlat42 = dot(x_171, x_172);
  let x_174 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_174);
  let x_176 : f32 = u_xlat42;
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
  u_xlat42 = dot(x_230, x_231);
  let x_233 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_233);
  let x_236 : f32 = u_xlat42;
  let x_238 : vec4<f32> = u_xlat6;
  u_xlat19 = (vec3<f32>(x_236, x_236, x_236) * vec3<f32>(x_238.x, x_238.y, x_238.z));
  let x_244 : f32 = vs_INTERP6.y;
  u_xlat42 = (x_244 * 200.0f);
  let x_247 : f32 = u_xlat42;
  u_xlat42 = min(x_247, 1.0f);
  let x_249 : f32 = u_xlat42;
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
  u_xlat42 = x_322;
  let x_324 : f32 = x_265.x_MainLightShadowParams.x;
  u_xlat43 = (-(x_324) + 1.0f);
  let x_327 : f32 = u_xlat42;
  let x_329 : f32 = x_265.x_MainLightShadowParams.x;
  let x_331 : f32 = u_xlat43;
  u_xlat42 = ((x_327 * x_329) + x_331);
  let x_335 : f32 = u_xlat6.z;
  u_xlatb44 = (0.0f >= x_335);
  let x_339 : f32 = u_xlat6.z;
  u_xlatb46 = (x_339 >= 1.0f);
  let x_341 : bool = u_xlatb44;
  let x_342 : bool = u_xlatb46;
  u_xlatb44 = (x_341 | x_342);
  let x_344 : bool = u_xlatb44;
  let x_345 : f32 = u_xlat42;
  u_xlat42 = select(x_345, 1.0f, x_344);
  let x_347 : vec3<f32> = u_xlat0;
  let x_349 : vec4<f32> = x_75.x_MainLightPosition;
  u_xlat0.x = dot(x_347, -(vec3<f32>(x_349.x, x_349.y, x_349.z)));
  let x_355 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_355, 0.0f, 1.0f);
  let x_359 : f32 = u_xlat42;
  let x_362 : vec4<f32> = x_75.x_MainLightColor;
  u_xlat14 = (vec3<f32>(x_359, x_359, x_359) * vec3<f32>(x_362.x, x_362.y, x_362.z));
  let x_365 : vec3<f32> = u_xlat14;
  let x_366 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_365 * vec3<f32>(x_366.x, x_366.x, x_366.x));
  let x_369 : vec3<f32> = u_xlat0;
  let x_370 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_369 * vec3<f32>(x_370.x, x_370.y, x_370.z));
  let x_374 : f32 = x_148.unity_LODFade.x;
  u_xlatb42 = (x_374 < 0.0f);
  let x_378 : f32 = x_148.unity_LODFade.x;
  u_xlat44 = (x_378 + 1.0f);
  let x_380 : bool = u_xlatb42;
  if (x_380) {
    let x_384 : f32 = u_xlat44;
    x_381 = x_384;
  } else {
    let x_387 : f32 = x_148.unity_LODFade.x;
    x_381 = x_387;
  }
  let x_388 : f32 = x_381;
  u_xlat42 = x_388;
  let x_390 : f32 = u_xlat42;
  u_xlatb44 = (0.5f >= x_390);
  let x_392 : vec3<f32> = u_xlat1;
  let x_396 : vec4<f32> = x_75.x_ScreenParams;
  u_xlat1 = (abs(x_392) * vec3<f32>(x_396.x, x_396.y, x_396.x));
  let x_402 : vec3<f32> = u_xlat1;
  u_xlatu1 = vec3<u32>(x_402);
  let x_407 : u32 = u_xlatu1.z;
  u_xlatu29 = (x_407 * 1025u);
  let x_411 : u32 = u_xlatu29;
  u_xlatu3 = (x_411 >> 6u);
  let x_416 : u32 = u_xlatu29;
  let x_417 : u32 = u_xlatu3;
  u_xlati29 = bitcast<i32>((x_416 ^ x_417));
  let x_420 : i32 = u_xlati29;
  u_xlatu29 = (bitcast<u32>(x_420) * 9u);
  let x_424 : u32 = u_xlatu29;
  u_xlatu3 = (x_424 >> 11u);
  let x_427 : u32 = u_xlatu29;
  let x_428 : u32 = u_xlatu3;
  u_xlati29 = bitcast<i32>((x_427 ^ x_428));
  let x_431 : i32 = u_xlati29;
  u_xlati29 = (x_431 * 32769i);
  let x_435 : i32 = u_xlati29;
  let x_438 : u32 = u_xlatu1.y;
  u_xlati15 = bitcast<i32>((bitcast<u32>(x_435) ^ x_438));
  let x_442 : i32 = u_xlati15;
  u_xlatu15 = (bitcast<u32>(x_442) * 1025u);
  let x_445 : u32 = u_xlatu15;
  u_xlatu29 = (x_445 >> 6u);
  let x_447 : u32 = u_xlatu29;
  let x_448 : u32 = u_xlatu15;
  u_xlati15 = bitcast<i32>((x_447 ^ x_448));
  let x_451 : i32 = u_xlati15;
  u_xlatu15 = (bitcast<u32>(x_451) * 9u);
  let x_454 : u32 = u_xlatu15;
  u_xlatu29 = (x_454 >> 11u);
  let x_456 : u32 = u_xlatu29;
  let x_457 : u32 = u_xlatu15;
  u_xlati15 = bitcast<i32>((x_456 ^ x_457));
  let x_460 : i32 = u_xlati15;
  u_xlati15 = (x_460 * 32769i);
  let x_463 : i32 = u_xlati15;
  let x_466 : u32 = u_xlatu1.x;
  u_xlati1 = bitcast<i32>((bitcast<u32>(x_463) ^ x_466));
  let x_469 : i32 = u_xlati1;
  u_xlatu1.x = (bitcast<u32>(x_469) * 1025u);
  let x_474 : u32 = u_xlatu1.x;
  u_xlatu15 = (x_474 >> 6u);
  let x_476 : u32 = u_xlatu15;
  let x_478 : u32 = u_xlatu1.x;
  u_xlati1 = bitcast<i32>((x_476 ^ x_478));
  let x_481 : i32 = u_xlati1;
  u_xlatu1.x = (bitcast<u32>(x_481) * 9u);
  let x_486 : u32 = u_xlatu1.x;
  u_xlatu15 = (x_486 >> 11u);
  let x_488 : u32 = u_xlatu15;
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
  u_xlat15.x = (-(x_511) + 1.0f);
  let x_515 : bool = u_xlatb44;
  if (x_515) {
    let x_520 : f32 = u_xlat1.x;
    x_516 = x_520;
  } else {
    let x_523 : f32 = u_xlat15.x;
    x_516 = x_523;
  }
  let x_524 : f32 = x_516;
  u_xlat1.x = x_524;
  let x_526 : f32 = u_xlat42;
  let x_529 : f32 = u_xlat1.x;
  u_xlat42 = ((x_526 * 2.0f) + -(x_529));
  let x_532 : f32 = u_xlat42;
  let x_534 : f32 = u_xlat3.w;
  u_xlat1.x = (x_532 * x_534);
  let x_541 : f32 = u_xlat1.x;
  u_xlatb15.x = (x_541 >= 0.40000000596046447754f);
  let x_546 : bool = u_xlatb15.x;
  if (x_546) {
    let x_551 : f32 = u_xlat1.x;
    x_547 = x_551;
  } else {
    x_547 = 0.0f;
  }
  let x_553 : f32 = x_547;
  u_xlat15.x = x_553;
  let x_556 : f32 = u_xlat3.w;
  let x_557 : f32 = u_xlat42;
  u_xlat42 = ((x_556 * x_557) + -0.40000000596046447754f);
  let x_564 : f32 = u_xlat1.x;
  u_xlat29.x = dpdxCoarse(x_564);
  let x_568 : f32 = u_xlat1.x;
  u_xlat1.x = dpdyCoarse(x_568);
  let x_572 : f32 = u_xlat1.x;
  let x_575 : f32 = u_xlat29.x;
  u_xlat1.x = (abs(x_572) + abs(x_575));
  let x_580 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_580, 0.00009999999747378752f);
  let x_584 : f32 = u_xlat42;
  let x_586 : f32 = u_xlat1.x;
  u_xlat42 = (x_584 / x_586);
  let x_588 : f32 = u_xlat42;
  u_xlat42 = (x_588 + 0.5f);
  let x_590 : f32 = u_xlat42;
  u_xlat42 = clamp(x_590, 0.0f, 1.0f);
  let x_594 : f32 = x_75.x_AlphaToMaskAvailable;
  u_xlatb1 = !((x_594 == 0.0f));
  let x_596 : bool = u_xlatb1;
  if (x_596) {
    let x_600 : f32 = u_xlat42;
    x_597 = x_600;
  } else {
    let x_603 : f32 = u_xlat15.x;
    x_597 = x_603;
  }
  let x_604 : f32 = x_597;
  u_xlat42 = x_604;
  let x_605 : f32 = u_xlat42;
  u_xlat15.x = (x_605 + -0.00009999999747378752f);
  let x_610 : f32 = u_xlat15.x;
  u_xlatb15.x = (x_610 < 0.0f);
  let x_614 : bool = u_xlatb15.x;
  if (((select(0i, 1i, x_614) * -1i) != 0i)) {
    discard;
  }
  let x_624 : f32 = vs_INTERP4.w;
  u_xlatb15.x = (0.0f < x_624);
  let x_628 : f32 = x_148.unity_WorldTransformParams.w;
  u_xlatb15.y = (x_628 >= 0.0f);
  let x_632 : bool = u_xlatb15.x;
  u_xlat15.x = select(-1.0f, 1.0f, x_632);
  let x_636 : bool = u_xlatb15.y;
  u_xlat15.y = select(-1.0f, 1.0f, x_636);
  let x_640 : f32 = u_xlat15.y;
  let x_642 : f32 = u_xlat15.x;
  u_xlat15.x = (x_640 * x_642);
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
  let x_663 : vec3<f32> = u_xlat15;
  let x_665 : vec4<f32> = u_xlat3;
  let x_667 : vec3<f32> = (vec3<f32>(x_663.x, x_663.x, x_663.x) * vec3<f32>(x_665.x, x_665.y, x_665.z));
  let x_668 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_667.x, x_667.y, x_667.z, x_668.w);
  let x_670 : vec4<f32> = u_xlat3;
  let x_672 : vec3<f32> = u_xlat19;
  let x_674 : vec3<f32> = (vec3<f32>(x_670.x, x_670.y, x_670.z) * vec3<f32>(x_672.y, x_672.y, x_672.y));
  let x_675 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_674.x, x_674.y, x_674.z, x_675.w);
  let x_677 : vec3<f32> = u_xlat19;
  let x_679 : vec4<f32> = vs_INTERP4;
  let x_682 : vec4<f32> = u_xlat3;
  let x_684 : vec3<f32> = ((vec3<f32>(x_677.x, x_677.x, x_677.x) * vec3<f32>(x_679.x, x_679.y, x_679.z)) + vec3<f32>(x_682.x, x_682.y, x_682.z));
  let x_685 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_684.x, x_684.y, x_684.z, x_685.w);
  let x_687 : vec3<f32> = u_xlat19;
  let x_689 : vec3<f32> = vs_INTERP9;
  let x_691 : vec4<f32> = u_xlat3;
  let x_693 : vec3<f32> = ((vec3<f32>(x_687.z, x_687.z, x_687.z) * x_689) + vec3<f32>(x_691.x, x_691.y, x_691.z));
  let x_694 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_693.x, x_693.y, x_693.z, x_694.w);
  let x_696 : vec4<f32> = u_xlat3;
  let x_698 : vec4<f32> = u_xlat3;
  u_xlat15.x = dot(vec3<f32>(x_696.x, x_696.y, x_696.z), vec3<f32>(x_698.x, x_698.y, x_698.z));
  let x_703 : f32 = u_xlat15.x;
  u_xlat15.x = inverseSqrt(x_703);
  let x_706 : vec3<f32> = u_xlat15;
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
  u_xlat19 = vec3<f32>(x_731.x, x_731.y, x_731.z);
  let x_733 : vec4<f32> = u_xlat6;
  let x_737 : vec3<f32> = (vec3<f32>(x_733.x, x_733.y, x_733.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_738 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_737.x, x_737.y, x_737.z, x_738.w);
  let x_740 : vec4<f32> = u_xlat3;
  let x_742 : vec4<f32> = u_xlat6;
  u_xlat15.x = dot(vec3<f32>(x_740.x, x_740.y, x_740.z), vec3<f32>(x_742.x, x_742.y, x_742.z));
  let x_747 : f32 = u_xlat15.x;
  u_xlat15.x = (x_747 + 0.5f);
  let x_750 : vec3<f32> = u_xlat15;
  let x_752 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_750.x, x_750.x, x_750.x) * x_752);
  let x_755 : f32 = u_xlat6.w;
  u_xlat15.x = max(x_755, 0.00009999999747378752f);
  let x_758 : vec3<f32> = u_xlat19;
  let x_759 : vec3<f32> = u_xlat15;
  u_xlat19 = (x_758 / vec3<f32>(x_759.x, x_759.x, x_759.x));
  let x_763 : f32 = u_xlat5.x;
  u_xlat5.x = x_763;
  let x_766 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_766, 0.0f, 1.0f);
  let x_769 : f32 = u_xlat42;
  u_xlat42 = x_769;
  let x_770 : f32 = u_xlat42;
  u_xlat42 = clamp(x_770, 0.0f, 1.0f);
  let x_772 : vec3<f32> = u_xlat4;
  u_xlat4 = (x_772 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_777 : f32 = u_xlat5.x;
  u_xlat15.x = (-(x_777) + 1.0f);
  let x_782 : f32 = u_xlat15.x;
  let x_784 : f32 = u_xlat15.x;
  u_xlat29.x = (x_782 * x_784);
  let x_788 : f32 = u_xlat29.x;
  u_xlat29.x = max(x_788, 0.0078125f);
  let x_793 : f32 = u_xlat29.x;
  let x_795 : f32 = u_xlat29.x;
  u_xlat44 = (x_793 * x_795);
  let x_799 : f32 = u_xlat5.x;
  u_xlat45 = (x_799 + 0.04000002145767211914f);
  let x_802 : f32 = u_xlat45;
  u_xlat45 = min(x_802, 1.0f);
  let x_806 : f32 = u_xlat29.x;
  u_xlat46 = ((x_806 * 4.0f) + 2.0f);
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
  let x_835 : f32 = u_xlat43;
  u_xlat43 = ((x_831 * x_833) + x_835);
  let x_839 : f32 = vs_INTERP3.z;
  u_xlatb6 = (0.0f >= x_839);
  let x_843 : f32 = vs_INTERP3.z;
  u_xlatb20.x = (x_843 >= 1.0f);
  let x_847 : bool = u_xlatb20.x;
  let x_848 : bool = u_xlatb6;
  u_xlatb6 = (x_847 | x_848);
  let x_850 : bool = u_xlatb6;
  let x_851 : f32 = u_xlat43;
  u_xlat43 = select(x_851, 1.0f, x_850);
  let x_853 : vec3<f32> = vs_INTERP8;
  let x_855 : vec3<f32> = x_75.x_WorldSpaceCameraPos;
  let x_857 : vec3<f32> = (x_853 + -(x_855));
  let x_858 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_857.x, x_857.y, x_857.z, x_858.w);
  let x_860 : vec4<f32> = u_xlat6;
  let x_862 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_860.x, x_860.y, x_860.z), vec3<f32>(x_862.x, x_862.y, x_862.z));
  let x_868 : f32 = u_xlat6.x;
  let x_870 : f32 = x_265.x_MainLightShadowParams.z;
  let x_873 : f32 = x_265.x_MainLightShadowParams.w;
  u_xlat20.x = ((x_868 * x_870) + x_873);
  let x_877 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_877, 0.0f, 1.0f);
  let x_881 : f32 = u_xlat43;
  u_xlat34 = (-(x_881) + 1.0f);
  let x_885 : f32 = u_xlat20.x;
  let x_886 : f32 = u_xlat34;
  let x_888 : f32 = u_xlat43;
  u_xlat43 = ((x_885 * x_886) + x_888);
  let x_897 : f32 = x_895.x_MainLightCookieTextureFormat;
  u_xlatb20.x = !((x_897 == -1.0f));
  let x_901 : bool = u_xlatb20.x;
  if (x_901) {
    let x_904 : vec3<f32> = vs_INTERP8;
    let x_907 : vec4<f32> = x_895.x_MainLightWorldToLight[1i];
    let x_909 : vec2<f32> = (vec2<f32>(x_904.y, x_904.y) * vec2<f32>(x_907.x, x_907.y));
    let x_910 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_909.x, x_909.y, x_910.z);
    let x_913 : vec4<f32> = x_895.x_MainLightWorldToLight[0i];
    let x_915 : vec3<f32> = vs_INTERP8;
    let x_918 : vec3<f32> = u_xlat20;
    let x_920 : vec2<f32> = ((vec2<f32>(x_913.x, x_913.y) * vec2<f32>(x_915.x, x_915.x)) + vec2<f32>(x_918.x, x_918.y));
    let x_921 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_920.x, x_920.y, x_921.z);
    let x_924 : vec4<f32> = x_895.x_MainLightWorldToLight[2i];
    let x_926 : vec3<f32> = vs_INTERP8;
    let x_929 : vec3<f32> = u_xlat20;
    let x_931 : vec2<f32> = ((vec2<f32>(x_924.x, x_924.y) * vec2<f32>(x_926.z, x_926.z)) + vec2<f32>(x_929.x, x_929.y));
    let x_932 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_931.x, x_931.y, x_932.z);
    let x_934 : vec3<f32> = u_xlat20;
    let x_937 : vec4<f32> = x_895.x_MainLightWorldToLight[3i];
    let x_939 : vec2<f32> = (vec2<f32>(x_934.x, x_934.y) + vec2<f32>(x_937.x, x_937.y));
    let x_940 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_939.x, x_939.y, x_940.z);
    let x_942 : vec3<f32> = u_xlat20;
    let x_946 : vec2<f32> = ((vec2<f32>(x_942.x, x_942.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_947 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_946.x, x_946.y, x_947.z);
    let x_955 : vec3<f32> = u_xlat20;
    let x_958 : f32 = x_75.x_GlobalMipBias.x;
    let x_959 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_955.x, x_955.y), x_958);
    u_xlat7 = x_959;
    let x_961 : f32 = x_895.x_MainLightCookieTextureFormat;
    let x_963 : f32 = x_895.x_MainLightCookieTextureFormat;
    let x_965 : f32 = x_895.x_MainLightCookieTextureFormat;
    let x_967 : f32 = x_895.x_MainLightCookieTextureFormat;
    let x_968 : vec4<f32> = vec4<f32>(x_961, x_963, x_965, x_967);
    let x_976 : vec4<bool> = (vec4<f32>(x_968.x, x_968.y, x_968.z, x_968.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb20 = vec2<bool>(x_976.x, x_976.y);
    let x_979 : bool = u_xlatb20.y;
    if (x_979) {
      let x_984 : f32 = u_xlat7.w;
      x_980 = x_984;
    } else {
      let x_987 : f32 = u_xlat7.x;
      x_980 = x_987;
    }
    let x_988 : f32 = x_980;
    u_xlat34 = x_988;
    let x_990 : bool = u_xlatb20.x;
    if (x_990) {
      let x_994 : vec4<f32> = u_xlat7;
      x_991 = vec3<f32>(x_994.x, x_994.y, x_994.z);
    } else {
      let x_997 : f32 = u_xlat34;
      x_991 = vec3<f32>(x_997, x_997, x_997);
    }
    let x_999 : vec3<f32> = x_991;
    u_xlat20 = x_999;
  } else {
    u_xlat20.x = 1.0f;
    u_xlat20.y = 1.0f;
    u_xlat20.z = 1.0f;
  }
  let x_1004 : vec3<f32> = u_xlat20;
  let x_1006 : vec4<f32> = x_75.x_MainLightColor;
  u_xlat20 = (x_1004 * vec3<f32>(x_1006.x, x_1006.y, x_1006.z));
  let x_1009 : vec3<f32> = u_xlat2;
  let x_1011 : vec4<f32> = u_xlat3;
  u_xlat7.x = dot(-(x_1009), vec3<f32>(x_1011.x, x_1011.y, x_1011.z));
  let x_1016 : f32 = u_xlat7.x;
  let x_1018 : f32 = u_xlat7.x;
  u_xlat7.x = (x_1016 + x_1018);
  let x_1021 : vec4<f32> = u_xlat3;
  let x_1023 : vec4<f32> = u_xlat7;
  let x_1027 : vec3<f32> = u_xlat2;
  let x_1029 : vec3<f32> = ((vec3<f32>(x_1021.x, x_1021.y, x_1021.z) * -(vec3<f32>(x_1023.x, x_1023.x, x_1023.x))) + -(x_1027));
  let x_1030 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1029.x, x_1029.y, x_1029.z, x_1030.w);
  let x_1033 : vec4<f32> = u_xlat3;
  let x_1035 : vec3<f32> = u_xlat2;
  u_xlat49 = dot(vec3<f32>(x_1033.x, x_1033.y, x_1033.z), x_1035);
  let x_1037 : f32 = u_xlat49;
  u_xlat49 = clamp(x_1037, 0.0f, 1.0f);
  let x_1039 : f32 = u_xlat49;
  u_xlat49 = (-(x_1039) + 1.0f);
  let x_1042 : f32 = u_xlat49;
  let x_1043 : f32 = u_xlat49;
  u_xlat49 = (x_1042 * x_1043);
  let x_1045 : f32 = u_xlat49;
  let x_1046 : f32 = u_xlat49;
  u_xlat49 = (x_1045 * x_1046);
  let x_1050 : f32 = u_xlat15.x;
  u_xlat8.x = ((-(x_1050) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1058 : f32 = u_xlat15.x;
  let x_1060 : f32 = u_xlat8.x;
  u_xlat15.x = (x_1058 * x_1060);
  let x_1064 : f32 = u_xlat15.x;
  u_xlat15.x = (x_1064 * 6.0f);
  let x_1076 : vec4<f32> = u_xlat7;
  let x_1079 : f32 = u_xlat15.x;
  let x_1080 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1076.x, x_1076.y, x_1076.z), x_1079);
  u_xlat8 = x_1080;
  let x_1082 : f32 = u_xlat8.w;
  u_xlat15.x = (x_1082 + -1.0f);
  let x_1086 : f32 = x_148.unity_SpecCube0_HDR.w;
  let x_1088 : f32 = u_xlat15.x;
  u_xlat15.x = ((x_1086 * x_1088) + 1.0f);
  let x_1093 : f32 = u_xlat15.x;
  u_xlat15.x = max(x_1093, 0.0f);
  let x_1097 : f32 = u_xlat15.x;
  u_xlat15.x = log2(x_1097);
  let x_1101 : f32 = u_xlat15.x;
  let x_1103 : f32 = x_148.unity_SpecCube0_HDR.y;
  u_xlat15.x = (x_1101 * x_1103);
  let x_1107 : f32 = u_xlat15.x;
  u_xlat15.x = exp2(x_1107);
  let x_1111 : f32 = u_xlat15.x;
  let x_1113 : f32 = x_148.unity_SpecCube0_HDR.x;
  u_xlat15.x = (x_1111 * x_1113);
  let x_1116 : vec4<f32> = u_xlat8;
  let x_1118 : vec3<f32> = u_xlat15;
  let x_1120 : vec3<f32> = (vec3<f32>(x_1116.x, x_1116.y, x_1116.z) * vec3<f32>(x_1118.x, x_1118.x, x_1118.x));
  let x_1121 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1120.x, x_1120.y, x_1120.z, x_1121.w);
  let x_1123 : vec2<f32> = u_xlat29;
  let x_1125 : vec2<f32> = u_xlat29;
  let x_1129 : vec2<f32> = ((vec2<f32>(x_1123.x, x_1123.x) * vec2<f32>(x_1125.x, x_1125.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_1130 : vec3<f32> = u_xlat15;
  u_xlat15 = vec3<f32>(x_1129.x, x_1129.y, x_1130.z);
  let x_1133 : f32 = u_xlat15.y;
  u_xlat29.x = (1.0f / x_1133);
  let x_1136 : f32 = u_xlat45;
  u_xlat45 = (x_1136 + -0.03999999910593032837f);
  let x_1139 : f32 = u_xlat49;
  let x_1140 : f32 = u_xlat45;
  u_xlat45 = ((x_1139 * x_1140) + 0.03999999910593032837f);
  let x_1145 : f32 = u_xlat29.x;
  let x_1146 : f32 = u_xlat45;
  u_xlat29.x = (x_1145 * x_1146);
  let x_1149 : vec2<f32> = u_xlat29;
  let x_1151 : vec4<f32> = u_xlat7;
  let x_1153 : vec3<f32> = (vec3<f32>(x_1149.x, x_1149.x, x_1149.x) * vec3<f32>(x_1151.x, x_1151.y, x_1151.z));
  let x_1154 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1153.x, x_1153.y, x_1153.z, x_1154.w);
  let x_1156 : vec3<f32> = u_xlat19;
  let x_1157 : vec3<f32> = u_xlat4;
  let x_1159 : vec4<f32> = u_xlat7;
  u_xlat19 = ((x_1156 * x_1157) + vec3<f32>(x_1159.x, x_1159.y, x_1159.z));
  let x_1162 : f32 = u_xlat43;
  let x_1164 : f32 = x_148.unity_LightData.z;
  u_xlat29.x = (x_1162 * x_1164);
  let x_1167 : vec4<f32> = u_xlat3;
  let x_1170 : vec4<f32> = x_75.x_MainLightPosition;
  u_xlat43 = dot(vec3<f32>(x_1167.x, x_1167.y, x_1167.z), vec3<f32>(x_1170.x, x_1170.y, x_1170.z));
  let x_1173 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1173, 0.0f, 1.0f);
  let x_1175 : f32 = u_xlat43;
  let x_1177 : f32 = u_xlat29.x;
  u_xlat29.x = (x_1175 * x_1177);
  let x_1180 : vec2<f32> = u_xlat29;
  let x_1182 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_1180.x, x_1180.x, x_1180.x) * x_1182);
  let x_1184 : vec3<f32> = u_xlat2;
  let x_1186 : vec4<f32> = x_75.x_MainLightPosition;
  let x_1188 : vec3<f32> = (x_1184 + vec3<f32>(x_1186.x, x_1186.y, x_1186.z));
  let x_1189 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1188.x, x_1188.y, x_1188.z, x_1189.w);
  let x_1191 : vec4<f32> = u_xlat7;
  let x_1193 : vec4<f32> = u_xlat7;
  u_xlat29.x = dot(vec3<f32>(x_1191.x, x_1191.y, x_1191.z), vec3<f32>(x_1193.x, x_1193.y, x_1193.z));
  let x_1198 : f32 = u_xlat29.x;
  u_xlat29.x = max(x_1198, 1.17549435e-38f);
  let x_1203 : f32 = u_xlat29.x;
  u_xlat29.x = inverseSqrt(x_1203);
  let x_1206 : vec2<f32> = u_xlat29;
  let x_1208 : vec4<f32> = u_xlat7;
  let x_1210 : vec3<f32> = (vec3<f32>(x_1206.x, x_1206.x, x_1206.x) * vec3<f32>(x_1208.x, x_1208.y, x_1208.z));
  let x_1211 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1210.x, x_1210.y, x_1210.z, x_1211.w);
  let x_1213 : vec4<f32> = u_xlat3;
  let x_1215 : vec4<f32> = u_xlat7;
  u_xlat29.x = dot(vec3<f32>(x_1213.x, x_1213.y, x_1213.z), vec3<f32>(x_1215.x, x_1215.y, x_1215.z));
  let x_1220 : f32 = u_xlat29.x;
  u_xlat29.x = clamp(x_1220, 0.0f, 1.0f);
  let x_1224 : vec4<f32> = x_75.x_MainLightPosition;
  let x_1226 : vec4<f32> = u_xlat7;
  u_xlat29.y = dot(vec3<f32>(x_1224.x, x_1224.y, x_1224.z), vec3<f32>(x_1226.x, x_1226.y, x_1226.z));
  let x_1231 : f32 = u_xlat29.y;
  u_xlat29.y = clamp(x_1231, 0.0f, 1.0f);
  let x_1234 : vec2<f32> = u_xlat29;
  let x_1235 : vec2<f32> = u_xlat29;
  u_xlat29 = (x_1234 * x_1235);
  let x_1238 : f32 = u_xlat29.x;
  let x_1240 : f32 = u_xlat15.x;
  u_xlat29.x = ((x_1238 * x_1240) + 1.00001001358032226562f);
  let x_1246 : f32 = u_xlat29.x;
  let x_1248 : f32 = u_xlat29.x;
  u_xlat29.x = (x_1246 * x_1248);
  let x_1252 : f32 = u_xlat29.y;
  u_xlat43 = max(x_1252, 0.10000000149011611938f);
  let x_1255 : f32 = u_xlat43;
  let x_1257 : f32 = u_xlat29.x;
  u_xlat29.x = (x_1255 * x_1257);
  let x_1260 : f32 = u_xlat46;
  let x_1262 : f32 = u_xlat29.x;
  u_xlat29.x = (x_1260 * x_1262);
  let x_1265 : f32 = u_xlat44;
  let x_1267 : f32 = u_xlat29.x;
  u_xlat29.x = (x_1265 / x_1267);
  let x_1270 : vec2<f32> = u_xlat29;
  let x_1274 : vec3<f32> = u_xlat4;
  let x_1275 : vec3<f32> = ((vec3<f32>(x_1270.x, x_1270.x, x_1270.x) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_1274);
  let x_1276 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1275.x, x_1275.y, x_1275.z, x_1276.w);
  let x_1278 : vec3<f32> = u_xlat20;
  let x_1279 : vec4<f32> = u_xlat7;
  u_xlat20 = (x_1278 * vec3<f32>(x_1279.x, x_1279.y, x_1279.z));
  let x_1284 : f32 = x_75.x_AdditionalLightsCount.x;
  let x_1286 : f32 = x_148.unity_LightData.y;
  u_xlat29.x = min(x_1284, x_1286);
  let x_1290 : f32 = u_xlat29.x;
  u_xlatu29 = bitcast<u32>(i32(x_1290));
  let x_1294 : f32 = u_xlat6.x;
  let x_1297 : f32 = x_265.x_AdditionalShadowFadeParams.x;
  let x_1300 : f32 = x_265.x_AdditionalShadowFadeParams.y;
  u_xlat43 = ((x_1294 * x_1297) + x_1300);
  let x_1302 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1302, 0.0f, 1.0f);
  let x_1306 : f32 = x_895.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1308 : f32 = x_895.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1310 : f32 = x_895.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1312 : f32 = x_895.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1313 : vec4<f32> = vec4<f32>(x_1306, x_1308, x_1310, x_1312);
  let x_1319 : vec4<bool> = (vec4<f32>(x_1313.x, x_1313.y, x_1313.z, x_1313.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1319.x, x_1319.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1330 : u32 = u_xlatu_loop_1;
    let x_1331 : u32 = u_xlatu29;
    if ((x_1330 < x_1331)) {
    } else {
      break;
    }
    let x_1334 : u32 = u_xlatu_loop_1;
    u_xlatu6 = (x_1334 >> 2u);
    let x_1337 : u32 = u_xlatu_loop_1;
    u_xlati35 = bitcast<i32>((x_1337 & 3u));
    let x_1340 : u32 = u_xlatu6;
    let x_1343 : vec4<f32> = x_148.unity_LightIndices[bitcast<i32>(x_1340)];
    let x_1353 : i32 = u_xlati35;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1358 : vec4<u32> = indexable[x_1353];
    u_xlat6.x = dot(x_1343, bitcast<vec4<f32>>(x_1358));
    let x_1364 : f32 = u_xlat6.x;
    u_xlati6 = i32(x_1364);
    let x_1367 : vec3<f32> = vs_INTERP8;
    let x_1378 : i32 = u_xlati6;
    let x_1380 : vec4<f32> = x_1377.x_AdditionalLightsPosition[x_1378];
    let x_1383 : i32 = u_xlati6;
    let x_1385 : vec4<f32> = x_1377.x_AdditionalLightsPosition[x_1383];
    u_xlat9 = ((-(x_1367) * vec3<f32>(x_1380.w, x_1380.w, x_1380.w)) + vec3<f32>(x_1385.x, x_1385.y, x_1385.z));
    let x_1389 : vec3<f32> = u_xlat9;
    let x_1390 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_1389, x_1390);
    let x_1392 : f32 = u_xlat35;
    u_xlat35 = max(x_1392, 0.00006103515625f);
    let x_1395 : f32 = u_xlat35;
    u_xlat49 = inverseSqrt(x_1395);
    let x_1398 : f32 = u_xlat49;
    let x_1400 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1398, x_1398, x_1398) * x_1400);
    let x_1403 : f32 = u_xlat35;
    u_xlat50 = (1.0f / x_1403);
    let x_1405 : f32 = u_xlat35;
    let x_1406 : i32 = u_xlati6;
    let x_1408 : f32 = x_1377.x_AdditionalLightsAttenuation[x_1406].x;
    u_xlat35 = (x_1405 * x_1408);
    let x_1410 : f32 = u_xlat35;
    let x_1412 : f32 = u_xlat35;
    u_xlat35 = ((-(x_1410) * x_1412) + 1.0f);
    let x_1415 : f32 = u_xlat35;
    u_xlat35 = max(x_1415, 0.0f);
    let x_1417 : f32 = u_xlat35;
    let x_1418 : f32 = u_xlat35;
    u_xlat35 = (x_1417 * x_1418);
    let x_1420 : f32 = u_xlat35;
    let x_1421 : f32 = u_xlat50;
    u_xlat35 = (x_1420 * x_1421);
    let x_1423 : i32 = u_xlati6;
    let x_1425 : vec4<f32> = x_1377.x_AdditionalLightsSpotDir[x_1423];
    let x_1427 : vec3<f32> = u_xlat10;
    u_xlat50 = dot(vec3<f32>(x_1425.x, x_1425.y, x_1425.z), x_1427);
    let x_1429 : f32 = u_xlat50;
    let x_1430 : i32 = u_xlati6;
    let x_1432 : f32 = x_1377.x_AdditionalLightsAttenuation[x_1430].z;
    let x_1434 : i32 = u_xlati6;
    let x_1436 : f32 = x_1377.x_AdditionalLightsAttenuation[x_1434].w;
    u_xlat50 = ((x_1429 * x_1432) + x_1436);
    let x_1438 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1438, 0.0f, 1.0f);
    let x_1440 : f32 = u_xlat50;
    let x_1441 : f32 = u_xlat50;
    u_xlat50 = (x_1440 * x_1441);
    let x_1443 : f32 = u_xlat35;
    let x_1444 : f32 = u_xlat50;
    u_xlat35 = (x_1443 * x_1444);
    let x_1448 : i32 = u_xlati6;
    let x_1450 : f32 = x_265.x_AdditionalShadowParams[x_1448].w;
    u_xlati50 = i32(x_1450);
    let x_1453 : i32 = u_xlati50;
    u_xlatb51 = (x_1453 >= 0i);
    let x_1455 : bool = u_xlatb51;
    if (x_1455) {
      let x_1459 : i32 = u_xlati6;
      let x_1461 : f32 = x_265.x_AdditionalShadowParams[x_1459].z;
      u_xlatb51 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1461, x_1461, x_1461, x_1461))));
      let x_1465 : bool = u_xlatb51;
      if (x_1465) {
        let x_1470 : vec3<f32> = u_xlat10;
        let x_1473 : vec3<f32> = u_xlat10;
        let x_1476 : vec4<bool> = (abs(vec4<f32>(x_1470.z, x_1470.z, x_1470.y, x_1470.z)) >= abs(vec4<f32>(x_1473.x, x_1473.y, x_1473.x, x_1473.x)));
        let x_1478 : vec3<bool> = vec3<bool>(x_1476.x, x_1476.y, x_1476.z);
        let x_1479 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1478.x, x_1478.y, x_1478.z, x_1479.w);
        let x_1482 : bool = u_xlatb11.y;
        let x_1484 : bool = u_xlatb11.x;
        u_xlatb51 = (x_1482 & x_1484);
        let x_1486 : vec3<f32> = u_xlat10;
        let x_1489 : vec4<bool> = (-(vec4<f32>(x_1486.z, x_1486.y, x_1486.z, x_1486.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1490 : vec3<bool> = vec3<bool>(x_1489.x, x_1489.y, x_1489.w);
        let x_1491 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1490.x, x_1490.y, x_1491.z, x_1490.z);
        let x_1495 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1495);
        let x_1500 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1500);
        let x_1506 : bool = u_xlatb11.w;
        u_xlat52 = select(0.0f, 1.0f, x_1506);
        let x_1509 : bool = u_xlatb11.z;
        if (x_1509) {
          let x_1514 : f32 = u_xlat11.y;
          x_1510 = x_1514;
        } else {
          let x_1516 : f32 = u_xlat52;
          x_1510 = x_1516;
        }
        let x_1517 : f32 = x_1510;
        u_xlat52 = x_1517;
        let x_1519 : bool = u_xlatb51;
        if (x_1519) {
          let x_1524 : f32 = u_xlat11.x;
          x_1520 = x_1524;
        } else {
          let x_1526 : f32 = u_xlat52;
          x_1520 = x_1526;
        }
        let x_1527 : f32 = x_1520;
        u_xlat51 = x_1527;
        let x_1528 : i32 = u_xlati6;
        let x_1530 : f32 = x_265.x_AdditionalShadowParams[x_1528].w;
        u_xlat52 = trunc(x_1530);
        let x_1532 : f32 = u_xlat51;
        let x_1533 : f32 = u_xlat52;
        u_xlat51 = (x_1532 + x_1533);
        let x_1535 : f32 = u_xlat51;
        u_xlati50 = i32(x_1535);
      }
      let x_1537 : i32 = u_xlati50;
      u_xlati50 = (x_1537 << bitcast<u32>(2i));
      let x_1539 : vec3<f32> = vs_INTERP8;
      let x_1542 : i32 = u_xlati50;
      let x_1545 : i32 = u_xlati50;
      let x_1549 : vec4<f32> = x_265.x_AdditionalLightsWorldToShadow[((x_1542 + 1i) / 4i)][((x_1545 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1539.y, x_1539.y, x_1539.y, x_1539.y) * x_1549);
      let x_1551 : i32 = u_xlati50;
      let x_1553 : i32 = u_xlati50;
      let x_1556 : vec4<f32> = x_265.x_AdditionalLightsWorldToShadow[(x_1551 / 4i)][(x_1553 % 4i)];
      let x_1557 : vec3<f32> = vs_INTERP8;
      let x_1560 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1556 * vec4<f32>(x_1557.x, x_1557.x, x_1557.x, x_1557.x)) + x_1560);
      let x_1562 : i32 = u_xlati50;
      let x_1565 : i32 = u_xlati50;
      let x_1569 : vec4<f32> = x_265.x_AdditionalLightsWorldToShadow[((x_1562 + 2i) / 4i)][((x_1565 + 2i) % 4i)];
      let x_1570 : vec3<f32> = vs_INTERP8;
      let x_1573 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1569 * vec4<f32>(x_1570.z, x_1570.z, x_1570.z, x_1570.z)) + x_1573);
      let x_1575 : vec4<f32> = u_xlat11;
      let x_1576 : i32 = u_xlati50;
      let x_1579 : i32 = u_xlati50;
      let x_1583 : vec4<f32> = x_265.x_AdditionalLightsWorldToShadow[((x_1576 + 3i) / 4i)][((x_1579 + 3i) % 4i)];
      u_xlat11 = (x_1575 + x_1583);
      let x_1585 : vec4<f32> = u_xlat11;
      let x_1587 : vec4<f32> = u_xlat11;
      let x_1589 : vec3<f32> = (vec3<f32>(x_1585.x, x_1585.y, x_1585.z) / vec3<f32>(x_1587.w, x_1587.w, x_1587.w));
      let x_1590 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1589.x, x_1589.y, x_1589.z, x_1590.w);
      let x_1593 : vec4<f32> = u_xlat11;
      let x_1594 : vec2<f32> = vec2<f32>(x_1593.x, x_1593.y);
      let x_1596 : f32 = u_xlat11.z;
      txVec2 = vec3<f32>(x_1594.x, x_1594.y, x_1596);
      let x_1604 : vec3<f32> = txVec2;
      let x_1606 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1604.xy, x_1604.z);
      u_xlat50 = x_1606;
      let x_1607 : i32 = u_xlati6;
      let x_1609 : f32 = x_265.x_AdditionalShadowParams[x_1607].x;
      u_xlat51 = (1.0f + -(x_1609));
      let x_1612 : f32 = u_xlat50;
      let x_1613 : i32 = u_xlati6;
      let x_1615 : f32 = x_265.x_AdditionalShadowParams[x_1613].x;
      let x_1617 : f32 = u_xlat51;
      u_xlat50 = ((x_1612 * x_1615) + x_1617);
      let x_1620 : f32 = u_xlat11.z;
      u_xlatb51 = (0.0f >= x_1620);
      let x_1624 : f32 = u_xlat11.z;
      u_xlatb52 = (x_1624 >= 1.0f);
      let x_1626 : bool = u_xlatb51;
      let x_1627 : bool = u_xlatb52;
      u_xlatb51 = (x_1626 | x_1627);
      let x_1629 : bool = u_xlatb51;
      let x_1630 : f32 = u_xlat50;
      u_xlat50 = select(x_1630, 1.0f, x_1629);
    } else {
      u_xlat50 = 1.0f;
    }
    let x_1633 : f32 = u_xlat50;
    u_xlat51 = (-(x_1633) + 1.0f);
    let x_1636 : f32 = u_xlat43;
    let x_1637 : f32 = u_xlat51;
    let x_1639 : f32 = u_xlat50;
    u_xlat50 = ((x_1636 * x_1637) + x_1639);
    let x_1642 : i32 = u_xlati6;
    u_xlati51 = (1i << bitcast<u32>((x_1642 & 31i)));
    let x_1646 : i32 = u_xlati51;
    let x_1649 : f32 = x_895.x_AdditionalLightsCookieEnableBits;
    u_xlati51 = bitcast<i32>((bitcast<u32>(x_1646) & bitcast<u32>(x_1649)));
    let x_1653 : i32 = u_xlati51;
    if ((x_1653 != 0i)) {
      let x_1657 : i32 = u_xlati6;
      let x_1659 : f32 = x_895.x_AdditionalLightsLightTypes[x_1657].el;
      u_xlati51 = i32(x_1659);
      let x_1662 : i32 = u_xlati51;
      u_xlati52 = select(1i, 0i, (x_1662 != 0i));
      let x_1666 : i32 = u_xlati6;
      u_xlati11 = (x_1666 << bitcast<u32>(2i));
      let x_1668 : i32 = u_xlati52;
      if ((x_1668 != 0i)) {
        let x_1673 : vec3<f32> = vs_INTERP8;
        let x_1675 : i32 = u_xlati11;
        let x_1678 : i32 = u_xlati11;
        let x_1682 : vec4<f32> = x_895.x_AdditionalLightsWorldToLights[((x_1675 + 1i) / 4i)][((x_1678 + 1i) % 4i)];
        u_xlat25 = (vec3<f32>(x_1673.y, x_1673.y, x_1673.y) * vec3<f32>(x_1682.x, x_1682.y, x_1682.w));
        let x_1685 : i32 = u_xlati11;
        let x_1687 : i32 = u_xlati11;
        let x_1690 : vec4<f32> = x_895.x_AdditionalLightsWorldToLights[(x_1685 / 4i)][(x_1687 % 4i)];
        let x_1692 : vec3<f32> = vs_INTERP8;
        let x_1695 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1690.x, x_1690.y, x_1690.w) * vec3<f32>(x_1692.x, x_1692.x, x_1692.x)) + x_1695);
        let x_1697 : i32 = u_xlati11;
        let x_1700 : i32 = u_xlati11;
        let x_1704 : vec4<f32> = x_895.x_AdditionalLightsWorldToLights[((x_1697 + 2i) / 4i)][((x_1700 + 2i) % 4i)];
        let x_1706 : vec3<f32> = vs_INTERP8;
        let x_1709 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1704.x, x_1704.y, x_1704.w) * vec3<f32>(x_1706.z, x_1706.z, x_1706.z)) + x_1709);
        let x_1711 : vec3<f32> = u_xlat25;
        let x_1712 : i32 = u_xlati11;
        let x_1715 : i32 = u_xlati11;
        let x_1719 : vec4<f32> = x_895.x_AdditionalLightsWorldToLights[((x_1712 + 3i) / 4i)][((x_1715 + 3i) % 4i)];
        u_xlat25 = (x_1711 + vec3<f32>(x_1719.x, x_1719.y, x_1719.w));
        let x_1722 : vec3<f32> = u_xlat25;
        let x_1724 : vec3<f32> = u_xlat25;
        let x_1726 : vec2<f32> = (vec2<f32>(x_1722.x, x_1722.y) / vec2<f32>(x_1724.z, x_1724.z));
        let x_1727 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1726.x, x_1726.y, x_1727.z);
        let x_1729 : vec3<f32> = u_xlat25;
        let x_1732 : vec2<f32> = ((vec2<f32>(x_1729.x, x_1729.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1733 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1732.x, x_1732.y, x_1733.z);
        let x_1735 : vec3<f32> = u_xlat25;
        let x_1739 : vec2<f32> = clamp(vec2<f32>(x_1735.x, x_1735.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1740 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1739.x, x_1739.y, x_1740.z);
        let x_1742 : i32 = u_xlati6;
        let x_1744 : vec4<f32> = x_895.x_AdditionalLightsCookieAtlasUVRects[x_1742];
        let x_1746 : vec3<f32> = u_xlat25;
        let x_1749 : i32 = u_xlati6;
        let x_1751 : vec4<f32> = x_895.x_AdditionalLightsCookieAtlasUVRects[x_1749];
        let x_1753 : vec2<f32> = ((vec2<f32>(x_1744.x, x_1744.y) * vec2<f32>(x_1746.x, x_1746.y)) + vec2<f32>(x_1751.z, x_1751.w));
        let x_1754 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1753.x, x_1753.y, x_1754.z);
      } else {
        let x_1757 : i32 = u_xlati51;
        u_xlatb51 = (x_1757 == 1i);
        let x_1759 : bool = u_xlatb51;
        u_xlati51 = select(0i, 1i, x_1759);
        let x_1761 : i32 = u_xlati51;
        if ((x_1761 != 0i)) {
          let x_1766 : vec3<f32> = vs_INTERP8;
          let x_1768 : i32 = u_xlati11;
          let x_1771 : i32 = u_xlati11;
          let x_1775 : vec4<f32> = x_895.x_AdditionalLightsWorldToLights[((x_1768 + 1i) / 4i)][((x_1771 + 1i) % 4i)];
          let x_1777 : vec2<f32> = (vec2<f32>(x_1766.y, x_1766.y) * vec2<f32>(x_1775.x, x_1775.y));
          let x_1778 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1777.x, x_1777.y, x_1778.z, x_1778.w);
          let x_1780 : i32 = u_xlati11;
          let x_1782 : i32 = u_xlati11;
          let x_1785 : vec4<f32> = x_895.x_AdditionalLightsWorldToLights[(x_1780 / 4i)][(x_1782 % 4i)];
          let x_1787 : vec3<f32> = vs_INTERP8;
          let x_1790 : vec4<f32> = u_xlat12;
          let x_1792 : vec2<f32> = ((vec2<f32>(x_1785.x, x_1785.y) * vec2<f32>(x_1787.x, x_1787.x)) + vec2<f32>(x_1790.x, x_1790.y));
          let x_1793 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1792.x, x_1792.y, x_1793.z, x_1793.w);
          let x_1795 : i32 = u_xlati11;
          let x_1798 : i32 = u_xlati11;
          let x_1802 : vec4<f32> = x_895.x_AdditionalLightsWorldToLights[((x_1795 + 2i) / 4i)][((x_1798 + 2i) % 4i)];
          let x_1804 : vec3<f32> = vs_INTERP8;
          let x_1807 : vec4<f32> = u_xlat12;
          let x_1809 : vec2<f32> = ((vec2<f32>(x_1802.x, x_1802.y) * vec2<f32>(x_1804.z, x_1804.z)) + vec2<f32>(x_1807.x, x_1807.y));
          let x_1810 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1809.x, x_1809.y, x_1810.z, x_1810.w);
          let x_1812 : vec4<f32> = u_xlat12;
          let x_1814 : i32 = u_xlati11;
          let x_1817 : i32 = u_xlati11;
          let x_1821 : vec4<f32> = x_895.x_AdditionalLightsWorldToLights[((x_1814 + 3i) / 4i)][((x_1817 + 3i) % 4i)];
          let x_1823 : vec2<f32> = (vec2<f32>(x_1812.x, x_1812.y) + vec2<f32>(x_1821.x, x_1821.y));
          let x_1824 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1823.x, x_1823.y, x_1824.z, x_1824.w);
          let x_1826 : vec4<f32> = u_xlat12;
          let x_1829 : vec2<f32> = ((vec2<f32>(x_1826.x, x_1826.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1830 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1829.x, x_1829.y, x_1830.z, x_1830.w);
          let x_1832 : vec4<f32> = u_xlat12;
          let x_1834 : vec2<f32> = fract(vec2<f32>(x_1832.x, x_1832.y));
          let x_1835 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1834.x, x_1834.y, x_1835.z, x_1835.w);
          let x_1837 : i32 = u_xlati6;
          let x_1839 : vec4<f32> = x_895.x_AdditionalLightsCookieAtlasUVRects[x_1837];
          let x_1841 : vec4<f32> = u_xlat12;
          let x_1844 : i32 = u_xlati6;
          let x_1846 : vec4<f32> = x_895.x_AdditionalLightsCookieAtlasUVRects[x_1844];
          let x_1848 : vec2<f32> = ((vec2<f32>(x_1839.x, x_1839.y) * vec2<f32>(x_1841.x, x_1841.y)) + vec2<f32>(x_1846.z, x_1846.w));
          let x_1849 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1848.x, x_1848.y, x_1849.z);
        } else {
          let x_1852 : vec3<f32> = vs_INTERP8;
          let x_1854 : i32 = u_xlati11;
          let x_1857 : i32 = u_xlati11;
          let x_1861 : vec4<f32> = x_895.x_AdditionalLightsWorldToLights[((x_1854 + 1i) / 4i)][((x_1857 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1852.y, x_1852.y, x_1852.y, x_1852.y) * x_1861);
          let x_1863 : i32 = u_xlati11;
          let x_1865 : i32 = u_xlati11;
          let x_1868 : vec4<f32> = x_895.x_AdditionalLightsWorldToLights[(x_1863 / 4i)][(x_1865 % 4i)];
          let x_1869 : vec3<f32> = vs_INTERP8;
          let x_1872 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1868 * vec4<f32>(x_1869.x, x_1869.x, x_1869.x, x_1869.x)) + x_1872);
          let x_1874 : i32 = u_xlati11;
          let x_1877 : i32 = u_xlati11;
          let x_1881 : vec4<f32> = x_895.x_AdditionalLightsWorldToLights[((x_1874 + 2i) / 4i)][((x_1877 + 2i) % 4i)];
          let x_1882 : vec3<f32> = vs_INTERP8;
          let x_1885 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1881 * vec4<f32>(x_1882.z, x_1882.z, x_1882.z, x_1882.z)) + x_1885);
          let x_1887 : vec4<f32> = u_xlat12;
          let x_1888 : i32 = u_xlati11;
          let x_1891 : i32 = u_xlati11;
          let x_1895 : vec4<f32> = x_895.x_AdditionalLightsWorldToLights[((x_1888 + 3i) / 4i)][((x_1891 + 3i) % 4i)];
          u_xlat12 = (x_1887 + x_1895);
          let x_1897 : vec4<f32> = u_xlat12;
          let x_1899 : vec4<f32> = u_xlat12;
          let x_1901 : vec3<f32> = (vec3<f32>(x_1897.x, x_1897.y, x_1897.z) / vec3<f32>(x_1899.w, x_1899.w, x_1899.w));
          let x_1902 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1901.x, x_1901.y, x_1901.z, x_1902.w);
          let x_1904 : vec4<f32> = u_xlat12;
          let x_1906 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(vec3<f32>(x_1904.x, x_1904.y, x_1904.z), vec3<f32>(x_1906.x, x_1906.y, x_1906.z));
          let x_1909 : f32 = u_xlat51;
          u_xlat51 = inverseSqrt(x_1909);
          let x_1911 : f32 = u_xlat51;
          let x_1913 : vec4<f32> = u_xlat12;
          let x_1915 : vec3<f32> = (vec3<f32>(x_1911, x_1911, x_1911) * vec3<f32>(x_1913.x, x_1913.y, x_1913.z));
          let x_1916 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1915.x, x_1915.y, x_1915.z, x_1916.w);
          let x_1918 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(abs(vec3<f32>(x_1918.x, x_1918.y, x_1918.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1923 : f32 = u_xlat51;
          u_xlat51 = max(x_1923, 0.00000099999999747524f);
          let x_1926 : f32 = u_xlat51;
          u_xlat51 = (1.0f / x_1926);
          let x_1929 : f32 = u_xlat51;
          let x_1931 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1929, x_1929, x_1929) * vec3<f32>(x_1931.z, x_1931.x, x_1931.y));
          let x_1935 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1935);
          let x_1939 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1939, 0.0f, 1.0f);
          let x_1942 : vec3<f32> = u_xlat13;
          let x_1944 : vec4<bool> = (vec4<f32>(x_1942.y, x_1942.y, x_1942.y, x_1942.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1945 : vec2<bool> = vec2<bool>(x_1944.x, x_1944.w);
          let x_1946 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_1945.x, x_1946.y, x_1946.z, x_1945.y);
          let x_1949 : bool = u_xlatb11.x;
          if (x_1949) {
            let x_1954 : f32 = u_xlat13.x;
            x_1950 = x_1954;
          } else {
            let x_1957 : f32 = u_xlat13.x;
            x_1950 = -(x_1957);
          }
          let x_1959 : f32 = x_1950;
          u_xlat11.x = x_1959;
          let x_1962 : bool = u_xlatb11.w;
          if (x_1962) {
            let x_1967 : f32 = u_xlat13.x;
            x_1963 = x_1967;
          } else {
            let x_1970 : f32 = u_xlat13.x;
            x_1963 = -(x_1970);
          }
          let x_1972 : f32 = x_1963;
          u_xlat11.w = x_1972;
          let x_1974 : vec4<f32> = u_xlat12;
          let x_1976 : f32 = u_xlat51;
          let x_1979 : vec4<f32> = u_xlat11;
          let x_1981 : vec2<f32> = ((vec2<f32>(x_1974.x, x_1974.y) * vec2<f32>(x_1976, x_1976)) + vec2<f32>(x_1979.x, x_1979.w));
          let x_1982 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1981.x, x_1982.y, x_1982.z, x_1981.y);
          let x_1984 : vec4<f32> = u_xlat11;
          let x_1987 : vec2<f32> = ((vec2<f32>(x_1984.x, x_1984.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1988 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1987.x, x_1988.y, x_1988.z, x_1987.y);
          let x_1990 : vec4<f32> = u_xlat11;
          let x_1994 : vec2<f32> = clamp(vec2<f32>(x_1990.x, x_1990.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1995 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1994.x, x_1995.y, x_1995.z, x_1994.y);
          let x_1997 : i32 = u_xlati6;
          let x_1999 : vec4<f32> = x_895.x_AdditionalLightsCookieAtlasUVRects[x_1997];
          let x_2001 : vec4<f32> = u_xlat11;
          let x_2004 : i32 = u_xlati6;
          let x_2006 : vec4<f32> = x_895.x_AdditionalLightsCookieAtlasUVRects[x_2004];
          let x_2008 : vec2<f32> = ((vec2<f32>(x_1999.x, x_1999.y) * vec2<f32>(x_2001.x, x_2001.w)) + vec2<f32>(x_2006.z, x_2006.w));
          let x_2009 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_2008.x, x_2008.y, x_2009.z);
        }
      }
      let x_2016 : vec3<f32> = u_xlat25;
      let x_2018 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_2016.x, x_2016.y), 0.0f);
      u_xlat11 = x_2018;
      let x_2020 : bool = u_xlatb7.y;
      if (x_2020) {
        let x_2025 : f32 = u_xlat11.w;
        x_2021 = x_2025;
      } else {
        let x_2028 : f32 = u_xlat11.x;
        x_2021 = x_2028;
      }
      let x_2029 : f32 = x_2021;
      u_xlat51 = x_2029;
      let x_2031 : bool = u_xlatb7.x;
      if (x_2031) {
        let x_2035 : vec4<f32> = u_xlat11;
        x_2032 = vec3<f32>(x_2035.x, x_2035.y, x_2035.z);
      } else {
        let x_2038 : f32 = u_xlat51;
        x_2032 = vec3<f32>(x_2038, x_2038, x_2038);
      }
      let x_2040 : vec3<f32> = x_2032;
      let x_2041 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2040.x, x_2040.y, x_2040.z, x_2041.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2047 : vec4<f32> = u_xlat11;
    let x_2049 : i32 = u_xlati6;
    let x_2051 : vec4<f32> = x_1377.x_AdditionalLightsColor[x_2049];
    let x_2053 : vec3<f32> = (vec3<f32>(x_2047.x, x_2047.y, x_2047.z) * vec3<f32>(x_2051.x, x_2051.y, x_2051.z));
    let x_2054 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2053.x, x_2053.y, x_2053.z, x_2054.w);
    let x_2056 : f32 = u_xlat35;
    let x_2057 : f32 = u_xlat50;
    u_xlat6.x = (x_2056 * x_2057);
    let x_2060 : vec4<f32> = u_xlat3;
    let x_2062 : vec3<f32> = u_xlat10;
    u_xlat35 = dot(vec3<f32>(x_2060.x, x_2060.y, x_2060.z), x_2062);
    let x_2064 : f32 = u_xlat35;
    u_xlat35 = clamp(x_2064, 0.0f, 1.0f);
    let x_2067 : f32 = u_xlat6.x;
    let x_2068 : f32 = u_xlat35;
    u_xlat6.x = (x_2067 * x_2068);
    let x_2071 : vec4<f32> = u_xlat6;
    let x_2073 : vec4<f32> = u_xlat11;
    let x_2075 : vec3<f32> = (vec3<f32>(x_2071.x, x_2071.x, x_2071.x) * vec3<f32>(x_2073.x, x_2073.y, x_2073.z));
    let x_2076 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2075.x, x_2075.y, x_2075.z, x_2076.w);
    let x_2078 : vec3<f32> = u_xlat9;
    let x_2079 : f32 = u_xlat49;
    let x_2082 : vec3<f32> = u_xlat2;
    u_xlat9 = ((x_2078 * vec3<f32>(x_2079, x_2079, x_2079)) + x_2082);
    let x_2084 : vec3<f32> = u_xlat9;
    let x_2085 : vec3<f32> = u_xlat9;
    u_xlat6.x = dot(x_2084, x_2085);
    let x_2089 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_2089, 1.17549435e-38f);
    let x_2093 : f32 = u_xlat6.x;
    u_xlat6.x = inverseSqrt(x_2093);
    let x_2096 : vec4<f32> = u_xlat6;
    let x_2098 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_2096.x, x_2096.x, x_2096.x) * x_2098);
    let x_2100 : vec4<f32> = u_xlat3;
    let x_2102 : vec3<f32> = u_xlat9;
    u_xlat6.x = dot(vec3<f32>(x_2100.x, x_2100.y, x_2100.z), x_2102);
    let x_2106 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_2106, 0.0f, 1.0f);
    let x_2109 : vec3<f32> = u_xlat10;
    let x_2110 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_2109, x_2110);
    let x_2112 : f32 = u_xlat35;
    u_xlat35 = clamp(x_2112, 0.0f, 1.0f);
    let x_2115 : f32 = u_xlat6.x;
    let x_2117 : f32 = u_xlat6.x;
    u_xlat6.x = (x_2115 * x_2117);
    let x_2121 : f32 = u_xlat6.x;
    let x_2123 : f32 = u_xlat15.x;
    u_xlat6.x = ((x_2121 * x_2123) + 1.00001001358032226562f);
    let x_2127 : f32 = u_xlat35;
    let x_2128 : f32 = u_xlat35;
    u_xlat35 = (x_2127 * x_2128);
    let x_2131 : f32 = u_xlat6.x;
    let x_2133 : f32 = u_xlat6.x;
    u_xlat6.x = (x_2131 * x_2133);
    let x_2136 : f32 = u_xlat35;
    u_xlat35 = max(x_2136, 0.10000000149011611938f);
    let x_2139 : f32 = u_xlat6.x;
    let x_2140 : f32 = u_xlat35;
    u_xlat6.x = (x_2139 * x_2140);
    let x_2143 : f32 = u_xlat46;
    let x_2145 : f32 = u_xlat6.x;
    u_xlat6.x = (x_2143 * x_2145);
    let x_2148 : f32 = u_xlat44;
    let x_2150 : f32 = u_xlat6.x;
    u_xlat6.x = (x_2148 / x_2150);
    let x_2153 : vec4<f32> = u_xlat6;
    let x_2156 : vec3<f32> = u_xlat4;
    u_xlat9 = ((vec3<f32>(x_2153.x, x_2153.x, x_2153.x) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_2156);
    let x_2158 : vec3<f32> = u_xlat9;
    let x_2159 : vec4<f32> = u_xlat11;
    let x_2162 : vec4<f32> = u_xlat8;
    let x_2164 : vec3<f32> = ((x_2158 * vec3<f32>(x_2159.x, x_2159.y, x_2159.z)) + vec3<f32>(x_2162.x, x_2162.y, x_2162.z));
    let x_2165 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2164.x, x_2164.y, x_2164.z, x_2165.w);

    continuing {
      let x_2167 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2167 + bitcast<u32>(1i));
    }
  }
  let x_2169 : vec3<f32> = u_xlat19;
  let x_2170 : vec4<f32> = u_xlat5;
  let x_2173 : vec3<f32> = u_xlat20;
  u_xlat15 = ((x_2169 * vec3<f32>(x_2170.x, x_2170.x, x_2170.x)) + x_2173);
  let x_2175 : vec4<f32> = u_xlat8;
  let x_2177 : vec3<f32> = u_xlat15;
  u_xlat15 = (vec3<f32>(x_2175.x, x_2175.y, x_2175.z) + x_2177);
  let x_2181 : vec4<f32> = vs_INTERP6;
  let x_2183 : vec3<f32> = u_xlat0;
  let x_2185 : vec3<f32> = u_xlat15;
  let x_2186 : vec3<f32> = ((vec3<f32>(x_2181.w, x_2181.w, x_2181.w) * x_2183) + x_2185);
  let x_2187 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2186.x, x_2186.y, x_2186.z, x_2187.w);
  let x_2189 : bool = u_xlatb1;
  let x_2190 : f32 = u_xlat42;
  SV_Target0.w = select(1.0f, x_2190, x_2189);
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


