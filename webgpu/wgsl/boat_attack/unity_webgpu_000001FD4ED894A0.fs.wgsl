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

@group(0) @binding(5) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(11) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP5 : vec4<f32>;

var<private> u_xlat4 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_204 : UnityPerMaterial;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(6) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(12) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat19 : vec3<f32>;

var<private> vs_INTERP6 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_265 : LightShadows;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

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

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat45 : f32;

var<private> u_xlat46 : f32;

var<private> vs_INTERP3 : vec4<f32>;

var<private> u_xlatb6 : bool;

var<private> u_xlatb20 : vec2<bool>;

var<private> u_xlat20 : vec3<f32>;

var<private> u_xlat34 : f32;

@group(1) @binding(4) var<uniform> x_922 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlat49 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlatu6 : u32;

var<private> u_xlati35 : i32;

var<private> u_xlati6 : i32;

var<private> u_xlat9 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_1402 : AdditionalLights;

var<private> u_xlat35 : f32;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat50 : f32;

var<private> u_xlati50 : i32;

var<private> u_xlatb51 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat52 : f32;

var<private> u_xlat51 : f32;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb52 : bool;

var<private> u_xlati51 : i32;

var<private> u_xlati52 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlat25 : vec3<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec3<f32>;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_LinearClamp : sampler;

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
  var x_1006 : f32;
  var x_1017 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1535 : f32;
  var x_1545 : f32;
  var txVec2 : vec3<f32>;
  var x_1975 : f32;
  var x_1988 : f32;
  var x_2046 : f32;
  var x_2057 : vec3<f32>;
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
  u_xlat3.w = 1.0f;
  let x_716 : vec4<f32> = x_148.unity_SHAr;
  let x_717 : vec4<f32> = u_xlat3;
  u_xlat6.x = dot(x_716, x_717);
  let x_722 : vec4<f32> = x_148.unity_SHAg;
  let x_723 : vec4<f32> = u_xlat3;
  u_xlat6.y = dot(x_722, x_723);
  let x_728 : vec4<f32> = x_148.unity_SHAb;
  let x_729 : vec4<f32> = u_xlat3;
  u_xlat6.z = dot(x_728, x_729);
  let x_733 : vec4<f32> = u_xlat3;
  let x_735 : vec4<f32> = u_xlat3;
  u_xlat7 = (vec4<f32>(x_733.y, x_733.z, x_733.z, x_733.x) * vec4<f32>(x_735.x, x_735.y, x_735.z, x_735.z));
  let x_741 : vec4<f32> = x_148.unity_SHBr;
  let x_742 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_741, x_742);
  let x_747 : vec4<f32> = x_148.unity_SHBg;
  let x_748 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_747, x_748);
  let x_752 : vec4<f32> = x_148.unity_SHBb;
  let x_753 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_752, x_753);
  let x_757 : f32 = u_xlat3.y;
  let x_759 : f32 = u_xlat3.y;
  u_xlat15.x = (x_757 * x_759);
  let x_763 : f32 = u_xlat3.x;
  let x_765 : f32 = u_xlat3.x;
  let x_768 : f32 = u_xlat15.x;
  u_xlat15.x = ((x_763 * x_765) + -(x_768));
  let x_774 : vec4<f32> = x_148.unity_SHC;
  let x_776 : vec3<f32> = u_xlat15;
  let x_779 : vec4<f32> = u_xlat8;
  u_xlat19 = ((vec3<f32>(x_774.x, x_774.y, x_774.z) * vec3<f32>(x_776.x, x_776.x, x_776.x)) + vec3<f32>(x_779.x, x_779.y, x_779.z));
  let x_782 : vec3<f32> = u_xlat19;
  let x_783 : vec4<f32> = u_xlat6;
  u_xlat19 = (x_782 + vec3<f32>(x_783.x, x_783.y, x_783.z));
  let x_786 : vec3<f32> = u_xlat19;
  u_xlat19 = max(x_786, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_790 : f32 = u_xlat5.x;
  u_xlat5.x = x_790;
  let x_793 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_793, 0.0f, 1.0f);
  let x_796 : f32 = u_xlat42;
  u_xlat42 = x_796;
  let x_797 : f32 = u_xlat42;
  u_xlat42 = clamp(x_797, 0.0f, 1.0f);
  let x_799 : vec3<f32> = u_xlat4;
  u_xlat4 = (x_799 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_804 : f32 = u_xlat5.x;
  u_xlat15.x = (-(x_804) + 1.0f);
  let x_809 : f32 = u_xlat15.x;
  let x_811 : f32 = u_xlat15.x;
  u_xlat29.x = (x_809 * x_811);
  let x_815 : f32 = u_xlat29.x;
  u_xlat29.x = max(x_815, 0.0078125f);
  let x_820 : f32 = u_xlat29.x;
  let x_822 : f32 = u_xlat29.x;
  u_xlat44 = (x_820 * x_822);
  let x_826 : f32 = u_xlat5.x;
  u_xlat45 = (x_826 + 0.04000002145767211914f);
  let x_829 : f32 = u_xlat45;
  u_xlat45 = min(x_829, 1.0f);
  let x_833 : f32 = u_xlat29.x;
  u_xlat46 = ((x_833 * 4.0f) + 2.0f);
  let x_838 : f32 = vs_INTERP6.w;
  u_xlat5.x = min(x_838, 1.0f);
  let x_843 : vec4<f32> = vs_INTERP3;
  let x_844 : vec2<f32> = vec2<f32>(x_843.x, x_843.y);
  let x_846 : f32 = vs_INTERP3.z;
  txVec1 = vec3<f32>(x_844.x, x_844.y, x_846);
  let x_853 : vec3<f32> = txVec1;
  let x_855 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_853.xy, x_853.z);
  u_xlat6.x = x_855;
  let x_858 : f32 = u_xlat6.x;
  let x_860 : f32 = x_265.x_MainLightShadowParams.x;
  let x_862 : f32 = u_xlat43;
  u_xlat43 = ((x_858 * x_860) + x_862);
  let x_866 : f32 = vs_INTERP3.z;
  u_xlatb6 = (0.0f >= x_866);
  let x_870 : f32 = vs_INTERP3.z;
  u_xlatb20.x = (x_870 >= 1.0f);
  let x_874 : bool = u_xlatb20.x;
  let x_875 : bool = u_xlatb6;
  u_xlatb6 = (x_874 | x_875);
  let x_877 : bool = u_xlatb6;
  let x_878 : f32 = u_xlat43;
  u_xlat43 = select(x_878, 1.0f, x_877);
  let x_880 : vec3<f32> = vs_INTERP8;
  let x_882 : vec3<f32> = x_75.x_WorldSpaceCameraPos;
  let x_884 : vec3<f32> = (x_880 + -(x_882));
  let x_885 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_884.x, x_884.y, x_884.z, x_885.w);
  let x_887 : vec4<f32> = u_xlat6;
  let x_889 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_887.x, x_887.y, x_887.z), vec3<f32>(x_889.x, x_889.y, x_889.z));
  let x_895 : f32 = u_xlat6.x;
  let x_897 : f32 = x_265.x_MainLightShadowParams.z;
  let x_900 : f32 = x_265.x_MainLightShadowParams.w;
  u_xlat20.x = ((x_895 * x_897) + x_900);
  let x_904 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_904, 0.0f, 1.0f);
  let x_908 : f32 = u_xlat43;
  u_xlat34 = (-(x_908) + 1.0f);
  let x_912 : f32 = u_xlat20.x;
  let x_913 : f32 = u_xlat34;
  let x_915 : f32 = u_xlat43;
  u_xlat43 = ((x_912 * x_913) + x_915);
  let x_924 : f32 = x_922.x_MainLightCookieTextureFormat;
  u_xlatb20.x = !((x_924 == -1.0f));
  let x_928 : bool = u_xlatb20.x;
  if (x_928) {
    let x_931 : vec3<f32> = vs_INTERP8;
    let x_934 : vec4<f32> = x_922.x_MainLightWorldToLight[1i];
    let x_936 : vec2<f32> = (vec2<f32>(x_931.y, x_931.y) * vec2<f32>(x_934.x, x_934.y));
    let x_937 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_936.x, x_936.y, x_937.z);
    let x_940 : vec4<f32> = x_922.x_MainLightWorldToLight[0i];
    let x_942 : vec3<f32> = vs_INTERP8;
    let x_945 : vec3<f32> = u_xlat20;
    let x_947 : vec2<f32> = ((vec2<f32>(x_940.x, x_940.y) * vec2<f32>(x_942.x, x_942.x)) + vec2<f32>(x_945.x, x_945.y));
    let x_948 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_947.x, x_947.y, x_948.z);
    let x_951 : vec4<f32> = x_922.x_MainLightWorldToLight[2i];
    let x_953 : vec3<f32> = vs_INTERP8;
    let x_956 : vec3<f32> = u_xlat20;
    let x_958 : vec2<f32> = ((vec2<f32>(x_951.x, x_951.y) * vec2<f32>(x_953.z, x_953.z)) + vec2<f32>(x_956.x, x_956.y));
    let x_959 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_958.x, x_958.y, x_959.z);
    let x_961 : vec3<f32> = u_xlat20;
    let x_964 : vec4<f32> = x_922.x_MainLightWorldToLight[3i];
    let x_966 : vec2<f32> = (vec2<f32>(x_961.x, x_961.y) + vec2<f32>(x_964.x, x_964.y));
    let x_967 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_966.x, x_966.y, x_967.z);
    let x_969 : vec3<f32> = u_xlat20;
    let x_973 : vec2<f32> = ((vec2<f32>(x_969.x, x_969.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_974 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_973.x, x_973.y, x_974.z);
    let x_981 : vec3<f32> = u_xlat20;
    let x_984 : f32 = x_75.x_GlobalMipBias.x;
    let x_985 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_981.x, x_981.y), x_984);
    u_xlat7 = x_985;
    let x_987 : f32 = x_922.x_MainLightCookieTextureFormat;
    let x_989 : f32 = x_922.x_MainLightCookieTextureFormat;
    let x_991 : f32 = x_922.x_MainLightCookieTextureFormat;
    let x_993 : f32 = x_922.x_MainLightCookieTextureFormat;
    let x_994 : vec4<f32> = vec4<f32>(x_987, x_989, x_991, x_993);
    let x_1002 : vec4<bool> = (vec4<f32>(x_994.x, x_994.y, x_994.z, x_994.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb20 = vec2<bool>(x_1002.x, x_1002.y);
    let x_1005 : bool = u_xlatb20.y;
    if (x_1005) {
      let x_1010 : f32 = u_xlat7.w;
      x_1006 = x_1010;
    } else {
      let x_1013 : f32 = u_xlat7.x;
      x_1006 = x_1013;
    }
    let x_1014 : f32 = x_1006;
    u_xlat34 = x_1014;
    let x_1016 : bool = u_xlatb20.x;
    if (x_1016) {
      let x_1020 : vec4<f32> = u_xlat7;
      x_1017 = vec3<f32>(x_1020.x, x_1020.y, x_1020.z);
    } else {
      let x_1023 : f32 = u_xlat34;
      x_1017 = vec3<f32>(x_1023, x_1023, x_1023);
    }
    let x_1025 : vec3<f32> = x_1017;
    u_xlat20 = x_1025;
  } else {
    u_xlat20.x = 1.0f;
    u_xlat20.y = 1.0f;
    u_xlat20.z = 1.0f;
  }
  let x_1030 : vec3<f32> = u_xlat20;
  let x_1032 : vec4<f32> = x_75.x_MainLightColor;
  u_xlat20 = (x_1030 * vec3<f32>(x_1032.x, x_1032.y, x_1032.z));
  let x_1035 : vec3<f32> = u_xlat2;
  let x_1037 : vec4<f32> = u_xlat3;
  u_xlat7.x = dot(-(x_1035), vec3<f32>(x_1037.x, x_1037.y, x_1037.z));
  let x_1042 : f32 = u_xlat7.x;
  let x_1044 : f32 = u_xlat7.x;
  u_xlat7.x = (x_1042 + x_1044);
  let x_1047 : vec4<f32> = u_xlat3;
  let x_1049 : vec4<f32> = u_xlat7;
  let x_1053 : vec3<f32> = u_xlat2;
  let x_1055 : vec3<f32> = ((vec3<f32>(x_1047.x, x_1047.y, x_1047.z) * -(vec3<f32>(x_1049.x, x_1049.x, x_1049.x))) + -(x_1053));
  let x_1056 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1055.x, x_1055.y, x_1055.z, x_1056.w);
  let x_1059 : vec4<f32> = u_xlat3;
  let x_1061 : vec3<f32> = u_xlat2;
  u_xlat49 = dot(vec3<f32>(x_1059.x, x_1059.y, x_1059.z), x_1061);
  let x_1063 : f32 = u_xlat49;
  u_xlat49 = clamp(x_1063, 0.0f, 1.0f);
  let x_1065 : f32 = u_xlat49;
  u_xlat49 = (-(x_1065) + 1.0f);
  let x_1068 : f32 = u_xlat49;
  let x_1069 : f32 = u_xlat49;
  u_xlat49 = (x_1068 * x_1069);
  let x_1071 : f32 = u_xlat49;
  let x_1072 : f32 = u_xlat49;
  u_xlat49 = (x_1071 * x_1072);
  let x_1075 : f32 = u_xlat15.x;
  u_xlat8.x = ((-(x_1075) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1083 : f32 = u_xlat15.x;
  let x_1085 : f32 = u_xlat8.x;
  u_xlat15.x = (x_1083 * x_1085);
  let x_1089 : f32 = u_xlat15.x;
  u_xlat15.x = (x_1089 * 6.0f);
  let x_1101 : vec4<f32> = u_xlat7;
  let x_1104 : f32 = u_xlat15.x;
  let x_1105 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1101.x, x_1101.y, x_1101.z), x_1104);
  u_xlat8 = x_1105;
  let x_1107 : f32 = u_xlat8.w;
  u_xlat15.x = (x_1107 + -1.0f);
  let x_1111 : f32 = x_148.unity_SpecCube0_HDR.w;
  let x_1113 : f32 = u_xlat15.x;
  u_xlat15.x = ((x_1111 * x_1113) + 1.0f);
  let x_1118 : f32 = u_xlat15.x;
  u_xlat15.x = max(x_1118, 0.0f);
  let x_1122 : f32 = u_xlat15.x;
  u_xlat15.x = log2(x_1122);
  let x_1126 : f32 = u_xlat15.x;
  let x_1128 : f32 = x_148.unity_SpecCube0_HDR.y;
  u_xlat15.x = (x_1126 * x_1128);
  let x_1132 : f32 = u_xlat15.x;
  u_xlat15.x = exp2(x_1132);
  let x_1136 : f32 = u_xlat15.x;
  let x_1138 : f32 = x_148.unity_SpecCube0_HDR.x;
  u_xlat15.x = (x_1136 * x_1138);
  let x_1141 : vec4<f32> = u_xlat8;
  let x_1143 : vec3<f32> = u_xlat15;
  let x_1145 : vec3<f32> = (vec3<f32>(x_1141.x, x_1141.y, x_1141.z) * vec3<f32>(x_1143.x, x_1143.x, x_1143.x));
  let x_1146 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1145.x, x_1145.y, x_1145.z, x_1146.w);
  let x_1148 : vec2<f32> = u_xlat29;
  let x_1150 : vec2<f32> = u_xlat29;
  let x_1154 : vec2<f32> = ((vec2<f32>(x_1148.x, x_1148.x) * vec2<f32>(x_1150.x, x_1150.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_1155 : vec3<f32> = u_xlat15;
  u_xlat15 = vec3<f32>(x_1154.x, x_1154.y, x_1155.z);
  let x_1158 : f32 = u_xlat15.y;
  u_xlat29.x = (1.0f / x_1158);
  let x_1161 : f32 = u_xlat45;
  u_xlat45 = (x_1161 + -0.03999999910593032837f);
  let x_1164 : f32 = u_xlat49;
  let x_1165 : f32 = u_xlat45;
  u_xlat45 = ((x_1164 * x_1165) + 0.03999999910593032837f);
  let x_1170 : f32 = u_xlat29.x;
  let x_1171 : f32 = u_xlat45;
  u_xlat29.x = (x_1170 * x_1171);
  let x_1174 : vec2<f32> = u_xlat29;
  let x_1176 : vec4<f32> = u_xlat7;
  let x_1178 : vec3<f32> = (vec3<f32>(x_1174.x, x_1174.x, x_1174.x) * vec3<f32>(x_1176.x, x_1176.y, x_1176.z));
  let x_1179 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1178.x, x_1178.y, x_1178.z, x_1179.w);
  let x_1181 : vec3<f32> = u_xlat19;
  let x_1182 : vec3<f32> = u_xlat4;
  let x_1184 : vec4<f32> = u_xlat7;
  u_xlat19 = ((x_1181 * x_1182) + vec3<f32>(x_1184.x, x_1184.y, x_1184.z));
  let x_1187 : f32 = u_xlat43;
  let x_1189 : f32 = x_148.unity_LightData.z;
  u_xlat29.x = (x_1187 * x_1189);
  let x_1192 : vec4<f32> = u_xlat3;
  let x_1195 : vec4<f32> = x_75.x_MainLightPosition;
  u_xlat43 = dot(vec3<f32>(x_1192.x, x_1192.y, x_1192.z), vec3<f32>(x_1195.x, x_1195.y, x_1195.z));
  let x_1198 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1198, 0.0f, 1.0f);
  let x_1200 : f32 = u_xlat43;
  let x_1202 : f32 = u_xlat29.x;
  u_xlat29.x = (x_1200 * x_1202);
  let x_1205 : vec2<f32> = u_xlat29;
  let x_1207 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_1205.x, x_1205.x, x_1205.x) * x_1207);
  let x_1209 : vec3<f32> = u_xlat2;
  let x_1211 : vec4<f32> = x_75.x_MainLightPosition;
  let x_1213 : vec3<f32> = (x_1209 + vec3<f32>(x_1211.x, x_1211.y, x_1211.z));
  let x_1214 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1213.x, x_1213.y, x_1213.z, x_1214.w);
  let x_1216 : vec4<f32> = u_xlat7;
  let x_1218 : vec4<f32> = u_xlat7;
  u_xlat29.x = dot(vec3<f32>(x_1216.x, x_1216.y, x_1216.z), vec3<f32>(x_1218.x, x_1218.y, x_1218.z));
  let x_1223 : f32 = u_xlat29.x;
  u_xlat29.x = max(x_1223, 1.17549435e-38f);
  let x_1228 : f32 = u_xlat29.x;
  u_xlat29.x = inverseSqrt(x_1228);
  let x_1231 : vec2<f32> = u_xlat29;
  let x_1233 : vec4<f32> = u_xlat7;
  let x_1235 : vec3<f32> = (vec3<f32>(x_1231.x, x_1231.x, x_1231.x) * vec3<f32>(x_1233.x, x_1233.y, x_1233.z));
  let x_1236 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1235.x, x_1235.y, x_1235.z, x_1236.w);
  let x_1238 : vec4<f32> = u_xlat3;
  let x_1240 : vec4<f32> = u_xlat7;
  u_xlat29.x = dot(vec3<f32>(x_1238.x, x_1238.y, x_1238.z), vec3<f32>(x_1240.x, x_1240.y, x_1240.z));
  let x_1245 : f32 = u_xlat29.x;
  u_xlat29.x = clamp(x_1245, 0.0f, 1.0f);
  let x_1249 : vec4<f32> = x_75.x_MainLightPosition;
  let x_1251 : vec4<f32> = u_xlat7;
  u_xlat29.y = dot(vec3<f32>(x_1249.x, x_1249.y, x_1249.z), vec3<f32>(x_1251.x, x_1251.y, x_1251.z));
  let x_1256 : f32 = u_xlat29.y;
  u_xlat29.y = clamp(x_1256, 0.0f, 1.0f);
  let x_1259 : vec2<f32> = u_xlat29;
  let x_1260 : vec2<f32> = u_xlat29;
  u_xlat29 = (x_1259 * x_1260);
  let x_1263 : f32 = u_xlat29.x;
  let x_1265 : f32 = u_xlat15.x;
  u_xlat29.x = ((x_1263 * x_1265) + 1.00001001358032226562f);
  let x_1271 : f32 = u_xlat29.x;
  let x_1273 : f32 = u_xlat29.x;
  u_xlat29.x = (x_1271 * x_1273);
  let x_1277 : f32 = u_xlat29.y;
  u_xlat43 = max(x_1277, 0.10000000149011611938f);
  let x_1280 : f32 = u_xlat43;
  let x_1282 : f32 = u_xlat29.x;
  u_xlat29.x = (x_1280 * x_1282);
  let x_1285 : f32 = u_xlat46;
  let x_1287 : f32 = u_xlat29.x;
  u_xlat29.x = (x_1285 * x_1287);
  let x_1290 : f32 = u_xlat44;
  let x_1292 : f32 = u_xlat29.x;
  u_xlat29.x = (x_1290 / x_1292);
  let x_1295 : vec2<f32> = u_xlat29;
  let x_1299 : vec3<f32> = u_xlat4;
  let x_1300 : vec3<f32> = ((vec3<f32>(x_1295.x, x_1295.x, x_1295.x) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_1299);
  let x_1301 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1300.x, x_1300.y, x_1300.z, x_1301.w);
  let x_1303 : vec3<f32> = u_xlat20;
  let x_1304 : vec4<f32> = u_xlat7;
  u_xlat20 = (x_1303 * vec3<f32>(x_1304.x, x_1304.y, x_1304.z));
  let x_1309 : f32 = x_75.x_AdditionalLightsCount.x;
  let x_1311 : f32 = x_148.unity_LightData.y;
  u_xlat29.x = min(x_1309, x_1311);
  let x_1315 : f32 = u_xlat29.x;
  u_xlatu29 = bitcast<u32>(i32(x_1315));
  let x_1319 : f32 = u_xlat6.x;
  let x_1322 : f32 = x_265.x_AdditionalShadowFadeParams.x;
  let x_1325 : f32 = x_265.x_AdditionalShadowFadeParams.y;
  u_xlat43 = ((x_1319 * x_1322) + x_1325);
  let x_1327 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1327, 0.0f, 1.0f);
  let x_1331 : f32 = x_922.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1333 : f32 = x_922.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1335 : f32 = x_922.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1337 : f32 = x_922.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1338 : vec4<f32> = vec4<f32>(x_1331, x_1333, x_1335, x_1337);
  let x_1344 : vec4<bool> = (vec4<f32>(x_1338.x, x_1338.y, x_1338.z, x_1338.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1344.x, x_1344.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1355 : u32 = u_xlatu_loop_1;
    let x_1356 : u32 = u_xlatu29;
    if ((x_1355 < x_1356)) {
    } else {
      break;
    }
    let x_1359 : u32 = u_xlatu_loop_1;
    u_xlatu6 = (x_1359 >> 2u);
    let x_1362 : u32 = u_xlatu_loop_1;
    u_xlati35 = bitcast<i32>((x_1362 & 3u));
    let x_1365 : u32 = u_xlatu6;
    let x_1368 : vec4<f32> = x_148.unity_LightIndices[bitcast<i32>(x_1365)];
    let x_1378 : i32 = u_xlati35;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1383 : vec4<u32> = indexable[x_1378];
    u_xlat6.x = dot(x_1368, bitcast<vec4<f32>>(x_1383));
    let x_1389 : f32 = u_xlat6.x;
    u_xlati6 = i32(x_1389);
    let x_1392 : vec3<f32> = vs_INTERP8;
    let x_1403 : i32 = u_xlati6;
    let x_1405 : vec4<f32> = x_1402.x_AdditionalLightsPosition[x_1403];
    let x_1408 : i32 = u_xlati6;
    let x_1410 : vec4<f32> = x_1402.x_AdditionalLightsPosition[x_1408];
    u_xlat9 = ((-(x_1392) * vec3<f32>(x_1405.w, x_1405.w, x_1405.w)) + vec3<f32>(x_1410.x, x_1410.y, x_1410.z));
    let x_1414 : vec3<f32> = u_xlat9;
    let x_1415 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_1414, x_1415);
    let x_1417 : f32 = u_xlat35;
    u_xlat35 = max(x_1417, 0.00006103515625f);
    let x_1420 : f32 = u_xlat35;
    u_xlat49 = inverseSqrt(x_1420);
    let x_1423 : f32 = u_xlat49;
    let x_1425 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1423, x_1423, x_1423) * x_1425);
    let x_1428 : f32 = u_xlat35;
    u_xlat50 = (1.0f / x_1428);
    let x_1430 : f32 = u_xlat35;
    let x_1431 : i32 = u_xlati6;
    let x_1433 : f32 = x_1402.x_AdditionalLightsAttenuation[x_1431].x;
    u_xlat35 = (x_1430 * x_1433);
    let x_1435 : f32 = u_xlat35;
    let x_1437 : f32 = u_xlat35;
    u_xlat35 = ((-(x_1435) * x_1437) + 1.0f);
    let x_1440 : f32 = u_xlat35;
    u_xlat35 = max(x_1440, 0.0f);
    let x_1442 : f32 = u_xlat35;
    let x_1443 : f32 = u_xlat35;
    u_xlat35 = (x_1442 * x_1443);
    let x_1445 : f32 = u_xlat35;
    let x_1446 : f32 = u_xlat50;
    u_xlat35 = (x_1445 * x_1446);
    let x_1448 : i32 = u_xlati6;
    let x_1450 : vec4<f32> = x_1402.x_AdditionalLightsSpotDir[x_1448];
    let x_1452 : vec3<f32> = u_xlat10;
    u_xlat50 = dot(vec3<f32>(x_1450.x, x_1450.y, x_1450.z), x_1452);
    let x_1454 : f32 = u_xlat50;
    let x_1455 : i32 = u_xlati6;
    let x_1457 : f32 = x_1402.x_AdditionalLightsAttenuation[x_1455].z;
    let x_1459 : i32 = u_xlati6;
    let x_1461 : f32 = x_1402.x_AdditionalLightsAttenuation[x_1459].w;
    u_xlat50 = ((x_1454 * x_1457) + x_1461);
    let x_1463 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1463, 0.0f, 1.0f);
    let x_1465 : f32 = u_xlat50;
    let x_1466 : f32 = u_xlat50;
    u_xlat50 = (x_1465 * x_1466);
    let x_1468 : f32 = u_xlat35;
    let x_1469 : f32 = u_xlat50;
    u_xlat35 = (x_1468 * x_1469);
    let x_1473 : i32 = u_xlati6;
    let x_1475 : f32 = x_265.x_AdditionalShadowParams[x_1473].w;
    u_xlati50 = i32(x_1475);
    let x_1478 : i32 = u_xlati50;
    u_xlatb51 = (x_1478 >= 0i);
    let x_1480 : bool = u_xlatb51;
    if (x_1480) {
      let x_1484 : i32 = u_xlati6;
      let x_1486 : f32 = x_265.x_AdditionalShadowParams[x_1484].z;
      u_xlatb51 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1486, x_1486, x_1486, x_1486))));
      let x_1490 : bool = u_xlatb51;
      if (x_1490) {
        let x_1495 : vec3<f32> = u_xlat10;
        let x_1498 : vec3<f32> = u_xlat10;
        let x_1501 : vec4<bool> = (abs(vec4<f32>(x_1495.z, x_1495.z, x_1495.y, x_1495.z)) >= abs(vec4<f32>(x_1498.x, x_1498.y, x_1498.x, x_1498.x)));
        let x_1503 : vec3<bool> = vec3<bool>(x_1501.x, x_1501.y, x_1501.z);
        let x_1504 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1503.x, x_1503.y, x_1503.z, x_1504.w);
        let x_1507 : bool = u_xlatb11.y;
        let x_1509 : bool = u_xlatb11.x;
        u_xlatb51 = (x_1507 & x_1509);
        let x_1511 : vec3<f32> = u_xlat10;
        let x_1514 : vec4<bool> = (-(vec4<f32>(x_1511.z, x_1511.y, x_1511.z, x_1511.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1515 : vec3<bool> = vec3<bool>(x_1514.x, x_1514.y, x_1514.w);
        let x_1516 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1515.x, x_1515.y, x_1516.z, x_1515.z);
        let x_1520 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1520);
        let x_1525 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1525);
        let x_1531 : bool = u_xlatb11.w;
        u_xlat52 = select(0.0f, 1.0f, x_1531);
        let x_1534 : bool = u_xlatb11.z;
        if (x_1534) {
          let x_1539 : f32 = u_xlat11.y;
          x_1535 = x_1539;
        } else {
          let x_1541 : f32 = u_xlat52;
          x_1535 = x_1541;
        }
        let x_1542 : f32 = x_1535;
        u_xlat52 = x_1542;
        let x_1544 : bool = u_xlatb51;
        if (x_1544) {
          let x_1549 : f32 = u_xlat11.x;
          x_1545 = x_1549;
        } else {
          let x_1551 : f32 = u_xlat52;
          x_1545 = x_1551;
        }
        let x_1552 : f32 = x_1545;
        u_xlat51 = x_1552;
        let x_1553 : i32 = u_xlati6;
        let x_1555 : f32 = x_265.x_AdditionalShadowParams[x_1553].w;
        u_xlat52 = trunc(x_1555);
        let x_1557 : f32 = u_xlat51;
        let x_1558 : f32 = u_xlat52;
        u_xlat51 = (x_1557 + x_1558);
        let x_1560 : f32 = u_xlat51;
        u_xlati50 = i32(x_1560);
      }
      let x_1562 : i32 = u_xlati50;
      u_xlati50 = (x_1562 << bitcast<u32>(2i));
      let x_1564 : vec3<f32> = vs_INTERP8;
      let x_1567 : i32 = u_xlati50;
      let x_1570 : i32 = u_xlati50;
      let x_1574 : vec4<f32> = x_265.x_AdditionalLightsWorldToShadow[((x_1567 + 1i) / 4i)][((x_1570 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1564.y, x_1564.y, x_1564.y, x_1564.y) * x_1574);
      let x_1576 : i32 = u_xlati50;
      let x_1578 : i32 = u_xlati50;
      let x_1581 : vec4<f32> = x_265.x_AdditionalLightsWorldToShadow[(x_1576 / 4i)][(x_1578 % 4i)];
      let x_1582 : vec3<f32> = vs_INTERP8;
      let x_1585 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1581 * vec4<f32>(x_1582.x, x_1582.x, x_1582.x, x_1582.x)) + x_1585);
      let x_1587 : i32 = u_xlati50;
      let x_1590 : i32 = u_xlati50;
      let x_1594 : vec4<f32> = x_265.x_AdditionalLightsWorldToShadow[((x_1587 + 2i) / 4i)][((x_1590 + 2i) % 4i)];
      let x_1595 : vec3<f32> = vs_INTERP8;
      let x_1598 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1594 * vec4<f32>(x_1595.z, x_1595.z, x_1595.z, x_1595.z)) + x_1598);
      let x_1600 : vec4<f32> = u_xlat11;
      let x_1601 : i32 = u_xlati50;
      let x_1604 : i32 = u_xlati50;
      let x_1608 : vec4<f32> = x_265.x_AdditionalLightsWorldToShadow[((x_1601 + 3i) / 4i)][((x_1604 + 3i) % 4i)];
      u_xlat11 = (x_1600 + x_1608);
      let x_1610 : vec4<f32> = u_xlat11;
      let x_1612 : vec4<f32> = u_xlat11;
      let x_1614 : vec3<f32> = (vec3<f32>(x_1610.x, x_1610.y, x_1610.z) / vec3<f32>(x_1612.w, x_1612.w, x_1612.w));
      let x_1615 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1614.x, x_1614.y, x_1614.z, x_1615.w);
      let x_1618 : vec4<f32> = u_xlat11;
      let x_1619 : vec2<f32> = vec2<f32>(x_1618.x, x_1618.y);
      let x_1621 : f32 = u_xlat11.z;
      txVec2 = vec3<f32>(x_1619.x, x_1619.y, x_1621);
      let x_1629 : vec3<f32> = txVec2;
      let x_1631 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1629.xy, x_1629.z);
      u_xlat50 = x_1631;
      let x_1632 : i32 = u_xlati6;
      let x_1634 : f32 = x_265.x_AdditionalShadowParams[x_1632].x;
      u_xlat51 = (1.0f + -(x_1634));
      let x_1637 : f32 = u_xlat50;
      let x_1638 : i32 = u_xlati6;
      let x_1640 : f32 = x_265.x_AdditionalShadowParams[x_1638].x;
      let x_1642 : f32 = u_xlat51;
      u_xlat50 = ((x_1637 * x_1640) + x_1642);
      let x_1645 : f32 = u_xlat11.z;
      u_xlatb51 = (0.0f >= x_1645);
      let x_1649 : f32 = u_xlat11.z;
      u_xlatb52 = (x_1649 >= 1.0f);
      let x_1651 : bool = u_xlatb51;
      let x_1652 : bool = u_xlatb52;
      u_xlatb51 = (x_1651 | x_1652);
      let x_1654 : bool = u_xlatb51;
      let x_1655 : f32 = u_xlat50;
      u_xlat50 = select(x_1655, 1.0f, x_1654);
    } else {
      u_xlat50 = 1.0f;
    }
    let x_1658 : f32 = u_xlat50;
    u_xlat51 = (-(x_1658) + 1.0f);
    let x_1661 : f32 = u_xlat43;
    let x_1662 : f32 = u_xlat51;
    let x_1664 : f32 = u_xlat50;
    u_xlat50 = ((x_1661 * x_1662) + x_1664);
    let x_1667 : i32 = u_xlati6;
    u_xlati51 = (1i << bitcast<u32>((x_1667 & 31i)));
    let x_1671 : i32 = u_xlati51;
    let x_1674 : f32 = x_922.x_AdditionalLightsCookieEnableBits;
    u_xlati51 = bitcast<i32>((bitcast<u32>(x_1671) & bitcast<u32>(x_1674)));
    let x_1678 : i32 = u_xlati51;
    if ((x_1678 != 0i)) {
      let x_1682 : i32 = u_xlati6;
      let x_1684 : f32 = x_922.x_AdditionalLightsLightTypes[x_1682].el;
      u_xlati51 = i32(x_1684);
      let x_1687 : i32 = u_xlati51;
      u_xlati52 = select(1i, 0i, (x_1687 != 0i));
      let x_1691 : i32 = u_xlati6;
      u_xlati11 = (x_1691 << bitcast<u32>(2i));
      let x_1693 : i32 = u_xlati52;
      if ((x_1693 != 0i)) {
        let x_1698 : vec3<f32> = vs_INTERP8;
        let x_1700 : i32 = u_xlati11;
        let x_1703 : i32 = u_xlati11;
        let x_1707 : vec4<f32> = x_922.x_AdditionalLightsWorldToLights[((x_1700 + 1i) / 4i)][((x_1703 + 1i) % 4i)];
        u_xlat25 = (vec3<f32>(x_1698.y, x_1698.y, x_1698.y) * vec3<f32>(x_1707.x, x_1707.y, x_1707.w));
        let x_1710 : i32 = u_xlati11;
        let x_1712 : i32 = u_xlati11;
        let x_1715 : vec4<f32> = x_922.x_AdditionalLightsWorldToLights[(x_1710 / 4i)][(x_1712 % 4i)];
        let x_1717 : vec3<f32> = vs_INTERP8;
        let x_1720 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1715.x, x_1715.y, x_1715.w) * vec3<f32>(x_1717.x, x_1717.x, x_1717.x)) + x_1720);
        let x_1722 : i32 = u_xlati11;
        let x_1725 : i32 = u_xlati11;
        let x_1729 : vec4<f32> = x_922.x_AdditionalLightsWorldToLights[((x_1722 + 2i) / 4i)][((x_1725 + 2i) % 4i)];
        let x_1731 : vec3<f32> = vs_INTERP8;
        let x_1734 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1729.x, x_1729.y, x_1729.w) * vec3<f32>(x_1731.z, x_1731.z, x_1731.z)) + x_1734);
        let x_1736 : vec3<f32> = u_xlat25;
        let x_1737 : i32 = u_xlati11;
        let x_1740 : i32 = u_xlati11;
        let x_1744 : vec4<f32> = x_922.x_AdditionalLightsWorldToLights[((x_1737 + 3i) / 4i)][((x_1740 + 3i) % 4i)];
        u_xlat25 = (x_1736 + vec3<f32>(x_1744.x, x_1744.y, x_1744.w));
        let x_1747 : vec3<f32> = u_xlat25;
        let x_1749 : vec3<f32> = u_xlat25;
        let x_1751 : vec2<f32> = (vec2<f32>(x_1747.x, x_1747.y) / vec2<f32>(x_1749.z, x_1749.z));
        let x_1752 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1751.x, x_1751.y, x_1752.z);
        let x_1754 : vec3<f32> = u_xlat25;
        let x_1757 : vec2<f32> = ((vec2<f32>(x_1754.x, x_1754.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1758 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1757.x, x_1757.y, x_1758.z);
        let x_1760 : vec3<f32> = u_xlat25;
        let x_1764 : vec2<f32> = clamp(vec2<f32>(x_1760.x, x_1760.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1765 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1764.x, x_1764.y, x_1765.z);
        let x_1767 : i32 = u_xlati6;
        let x_1769 : vec4<f32> = x_922.x_AdditionalLightsCookieAtlasUVRects[x_1767];
        let x_1771 : vec3<f32> = u_xlat25;
        let x_1774 : i32 = u_xlati6;
        let x_1776 : vec4<f32> = x_922.x_AdditionalLightsCookieAtlasUVRects[x_1774];
        let x_1778 : vec2<f32> = ((vec2<f32>(x_1769.x, x_1769.y) * vec2<f32>(x_1771.x, x_1771.y)) + vec2<f32>(x_1776.z, x_1776.w));
        let x_1779 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1778.x, x_1778.y, x_1779.z);
      } else {
        let x_1782 : i32 = u_xlati51;
        u_xlatb51 = (x_1782 == 1i);
        let x_1784 : bool = u_xlatb51;
        u_xlati51 = select(0i, 1i, x_1784);
        let x_1786 : i32 = u_xlati51;
        if ((x_1786 != 0i)) {
          let x_1791 : vec3<f32> = vs_INTERP8;
          let x_1793 : i32 = u_xlati11;
          let x_1796 : i32 = u_xlati11;
          let x_1800 : vec4<f32> = x_922.x_AdditionalLightsWorldToLights[((x_1793 + 1i) / 4i)][((x_1796 + 1i) % 4i)];
          let x_1802 : vec2<f32> = (vec2<f32>(x_1791.y, x_1791.y) * vec2<f32>(x_1800.x, x_1800.y));
          let x_1803 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1802.x, x_1802.y, x_1803.z, x_1803.w);
          let x_1805 : i32 = u_xlati11;
          let x_1807 : i32 = u_xlati11;
          let x_1810 : vec4<f32> = x_922.x_AdditionalLightsWorldToLights[(x_1805 / 4i)][(x_1807 % 4i)];
          let x_1812 : vec3<f32> = vs_INTERP8;
          let x_1815 : vec4<f32> = u_xlat12;
          let x_1817 : vec2<f32> = ((vec2<f32>(x_1810.x, x_1810.y) * vec2<f32>(x_1812.x, x_1812.x)) + vec2<f32>(x_1815.x, x_1815.y));
          let x_1818 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1817.x, x_1817.y, x_1818.z, x_1818.w);
          let x_1820 : i32 = u_xlati11;
          let x_1823 : i32 = u_xlati11;
          let x_1827 : vec4<f32> = x_922.x_AdditionalLightsWorldToLights[((x_1820 + 2i) / 4i)][((x_1823 + 2i) % 4i)];
          let x_1829 : vec3<f32> = vs_INTERP8;
          let x_1832 : vec4<f32> = u_xlat12;
          let x_1834 : vec2<f32> = ((vec2<f32>(x_1827.x, x_1827.y) * vec2<f32>(x_1829.z, x_1829.z)) + vec2<f32>(x_1832.x, x_1832.y));
          let x_1835 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1834.x, x_1834.y, x_1835.z, x_1835.w);
          let x_1837 : vec4<f32> = u_xlat12;
          let x_1839 : i32 = u_xlati11;
          let x_1842 : i32 = u_xlati11;
          let x_1846 : vec4<f32> = x_922.x_AdditionalLightsWorldToLights[((x_1839 + 3i) / 4i)][((x_1842 + 3i) % 4i)];
          let x_1848 : vec2<f32> = (vec2<f32>(x_1837.x, x_1837.y) + vec2<f32>(x_1846.x, x_1846.y));
          let x_1849 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1848.x, x_1848.y, x_1849.z, x_1849.w);
          let x_1851 : vec4<f32> = u_xlat12;
          let x_1854 : vec2<f32> = ((vec2<f32>(x_1851.x, x_1851.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1855 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1854.x, x_1854.y, x_1855.z, x_1855.w);
          let x_1857 : vec4<f32> = u_xlat12;
          let x_1859 : vec2<f32> = fract(vec2<f32>(x_1857.x, x_1857.y));
          let x_1860 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1859.x, x_1859.y, x_1860.z, x_1860.w);
          let x_1862 : i32 = u_xlati6;
          let x_1864 : vec4<f32> = x_922.x_AdditionalLightsCookieAtlasUVRects[x_1862];
          let x_1866 : vec4<f32> = u_xlat12;
          let x_1869 : i32 = u_xlati6;
          let x_1871 : vec4<f32> = x_922.x_AdditionalLightsCookieAtlasUVRects[x_1869];
          let x_1873 : vec2<f32> = ((vec2<f32>(x_1864.x, x_1864.y) * vec2<f32>(x_1866.x, x_1866.y)) + vec2<f32>(x_1871.z, x_1871.w));
          let x_1874 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1873.x, x_1873.y, x_1874.z);
        } else {
          let x_1877 : vec3<f32> = vs_INTERP8;
          let x_1879 : i32 = u_xlati11;
          let x_1882 : i32 = u_xlati11;
          let x_1886 : vec4<f32> = x_922.x_AdditionalLightsWorldToLights[((x_1879 + 1i) / 4i)][((x_1882 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1877.y, x_1877.y, x_1877.y, x_1877.y) * x_1886);
          let x_1888 : i32 = u_xlati11;
          let x_1890 : i32 = u_xlati11;
          let x_1893 : vec4<f32> = x_922.x_AdditionalLightsWorldToLights[(x_1888 / 4i)][(x_1890 % 4i)];
          let x_1894 : vec3<f32> = vs_INTERP8;
          let x_1897 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1893 * vec4<f32>(x_1894.x, x_1894.x, x_1894.x, x_1894.x)) + x_1897);
          let x_1899 : i32 = u_xlati11;
          let x_1902 : i32 = u_xlati11;
          let x_1906 : vec4<f32> = x_922.x_AdditionalLightsWorldToLights[((x_1899 + 2i) / 4i)][((x_1902 + 2i) % 4i)];
          let x_1907 : vec3<f32> = vs_INTERP8;
          let x_1910 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1906 * vec4<f32>(x_1907.z, x_1907.z, x_1907.z, x_1907.z)) + x_1910);
          let x_1912 : vec4<f32> = u_xlat12;
          let x_1913 : i32 = u_xlati11;
          let x_1916 : i32 = u_xlati11;
          let x_1920 : vec4<f32> = x_922.x_AdditionalLightsWorldToLights[((x_1913 + 3i) / 4i)][((x_1916 + 3i) % 4i)];
          u_xlat12 = (x_1912 + x_1920);
          let x_1922 : vec4<f32> = u_xlat12;
          let x_1924 : vec4<f32> = u_xlat12;
          let x_1926 : vec3<f32> = (vec3<f32>(x_1922.x, x_1922.y, x_1922.z) / vec3<f32>(x_1924.w, x_1924.w, x_1924.w));
          let x_1927 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1926.x, x_1926.y, x_1926.z, x_1927.w);
          let x_1929 : vec4<f32> = u_xlat12;
          let x_1931 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(vec3<f32>(x_1929.x, x_1929.y, x_1929.z), vec3<f32>(x_1931.x, x_1931.y, x_1931.z));
          let x_1934 : f32 = u_xlat51;
          u_xlat51 = inverseSqrt(x_1934);
          let x_1936 : f32 = u_xlat51;
          let x_1938 : vec4<f32> = u_xlat12;
          let x_1940 : vec3<f32> = (vec3<f32>(x_1936, x_1936, x_1936) * vec3<f32>(x_1938.x, x_1938.y, x_1938.z));
          let x_1941 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1940.x, x_1940.y, x_1940.z, x_1941.w);
          let x_1943 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(abs(vec3<f32>(x_1943.x, x_1943.y, x_1943.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1948 : f32 = u_xlat51;
          u_xlat51 = max(x_1948, 0.00000099999999747524f);
          let x_1951 : f32 = u_xlat51;
          u_xlat51 = (1.0f / x_1951);
          let x_1954 : f32 = u_xlat51;
          let x_1956 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1954, x_1954, x_1954) * vec3<f32>(x_1956.z, x_1956.x, x_1956.y));
          let x_1960 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1960);
          let x_1964 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1964, 0.0f, 1.0f);
          let x_1967 : vec3<f32> = u_xlat13;
          let x_1969 : vec4<bool> = (vec4<f32>(x_1967.y, x_1967.y, x_1967.y, x_1967.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1970 : vec2<bool> = vec2<bool>(x_1969.x, x_1969.w);
          let x_1971 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_1970.x, x_1971.y, x_1971.z, x_1970.y);
          let x_1974 : bool = u_xlatb11.x;
          if (x_1974) {
            let x_1979 : f32 = u_xlat13.x;
            x_1975 = x_1979;
          } else {
            let x_1982 : f32 = u_xlat13.x;
            x_1975 = -(x_1982);
          }
          let x_1984 : f32 = x_1975;
          u_xlat11.x = x_1984;
          let x_1987 : bool = u_xlatb11.w;
          if (x_1987) {
            let x_1992 : f32 = u_xlat13.x;
            x_1988 = x_1992;
          } else {
            let x_1995 : f32 = u_xlat13.x;
            x_1988 = -(x_1995);
          }
          let x_1997 : f32 = x_1988;
          u_xlat11.w = x_1997;
          let x_1999 : vec4<f32> = u_xlat12;
          let x_2001 : f32 = u_xlat51;
          let x_2004 : vec4<f32> = u_xlat11;
          let x_2006 : vec2<f32> = ((vec2<f32>(x_1999.x, x_1999.y) * vec2<f32>(x_2001, x_2001)) + vec2<f32>(x_2004.x, x_2004.w));
          let x_2007 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2006.x, x_2007.y, x_2007.z, x_2006.y);
          let x_2009 : vec4<f32> = u_xlat11;
          let x_2012 : vec2<f32> = ((vec2<f32>(x_2009.x, x_2009.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2013 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2012.x, x_2013.y, x_2013.z, x_2012.y);
          let x_2015 : vec4<f32> = u_xlat11;
          let x_2019 : vec2<f32> = clamp(vec2<f32>(x_2015.x, x_2015.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2020 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2019.x, x_2020.y, x_2020.z, x_2019.y);
          let x_2022 : i32 = u_xlati6;
          let x_2024 : vec4<f32> = x_922.x_AdditionalLightsCookieAtlasUVRects[x_2022];
          let x_2026 : vec4<f32> = u_xlat11;
          let x_2029 : i32 = u_xlati6;
          let x_2031 : vec4<f32> = x_922.x_AdditionalLightsCookieAtlasUVRects[x_2029];
          let x_2033 : vec2<f32> = ((vec2<f32>(x_2024.x, x_2024.y) * vec2<f32>(x_2026.x, x_2026.w)) + vec2<f32>(x_2031.z, x_2031.w));
          let x_2034 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_2033.x, x_2033.y, x_2034.z);
        }
      }
      let x_2041 : vec3<f32> = u_xlat25;
      let x_2043 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_2041.x, x_2041.y), 0.0f);
      u_xlat11 = x_2043;
      let x_2045 : bool = u_xlatb7.y;
      if (x_2045) {
        let x_2050 : f32 = u_xlat11.w;
        x_2046 = x_2050;
      } else {
        let x_2053 : f32 = u_xlat11.x;
        x_2046 = x_2053;
      }
      let x_2054 : f32 = x_2046;
      u_xlat51 = x_2054;
      let x_2056 : bool = u_xlatb7.x;
      if (x_2056) {
        let x_2060 : vec4<f32> = u_xlat11;
        x_2057 = vec3<f32>(x_2060.x, x_2060.y, x_2060.z);
      } else {
        let x_2063 : f32 = u_xlat51;
        x_2057 = vec3<f32>(x_2063, x_2063, x_2063);
      }
      let x_2065 : vec3<f32> = x_2057;
      let x_2066 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2065.x, x_2065.y, x_2065.z, x_2066.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2072 : vec4<f32> = u_xlat11;
    let x_2074 : i32 = u_xlati6;
    let x_2076 : vec4<f32> = x_1402.x_AdditionalLightsColor[x_2074];
    let x_2078 : vec3<f32> = (vec3<f32>(x_2072.x, x_2072.y, x_2072.z) * vec3<f32>(x_2076.x, x_2076.y, x_2076.z));
    let x_2079 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2078.x, x_2078.y, x_2078.z, x_2079.w);
    let x_2081 : f32 = u_xlat35;
    let x_2082 : f32 = u_xlat50;
    u_xlat6.x = (x_2081 * x_2082);
    let x_2085 : vec4<f32> = u_xlat3;
    let x_2087 : vec3<f32> = u_xlat10;
    u_xlat35 = dot(vec3<f32>(x_2085.x, x_2085.y, x_2085.z), x_2087);
    let x_2089 : f32 = u_xlat35;
    u_xlat35 = clamp(x_2089, 0.0f, 1.0f);
    let x_2092 : f32 = u_xlat6.x;
    let x_2093 : f32 = u_xlat35;
    u_xlat6.x = (x_2092 * x_2093);
    let x_2096 : vec4<f32> = u_xlat6;
    let x_2098 : vec4<f32> = u_xlat11;
    let x_2100 : vec3<f32> = (vec3<f32>(x_2096.x, x_2096.x, x_2096.x) * vec3<f32>(x_2098.x, x_2098.y, x_2098.z));
    let x_2101 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2100.x, x_2100.y, x_2100.z, x_2101.w);
    let x_2103 : vec3<f32> = u_xlat9;
    let x_2104 : f32 = u_xlat49;
    let x_2107 : vec3<f32> = u_xlat2;
    u_xlat9 = ((x_2103 * vec3<f32>(x_2104, x_2104, x_2104)) + x_2107);
    let x_2109 : vec3<f32> = u_xlat9;
    let x_2110 : vec3<f32> = u_xlat9;
    u_xlat6.x = dot(x_2109, x_2110);
    let x_2114 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_2114, 1.17549435e-38f);
    let x_2118 : f32 = u_xlat6.x;
    u_xlat6.x = inverseSqrt(x_2118);
    let x_2121 : vec4<f32> = u_xlat6;
    let x_2123 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_2121.x, x_2121.x, x_2121.x) * x_2123);
    let x_2125 : vec4<f32> = u_xlat3;
    let x_2127 : vec3<f32> = u_xlat9;
    u_xlat6.x = dot(vec3<f32>(x_2125.x, x_2125.y, x_2125.z), x_2127);
    let x_2131 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_2131, 0.0f, 1.0f);
    let x_2134 : vec3<f32> = u_xlat10;
    let x_2135 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_2134, x_2135);
    let x_2137 : f32 = u_xlat35;
    u_xlat35 = clamp(x_2137, 0.0f, 1.0f);
    let x_2140 : f32 = u_xlat6.x;
    let x_2142 : f32 = u_xlat6.x;
    u_xlat6.x = (x_2140 * x_2142);
    let x_2146 : f32 = u_xlat6.x;
    let x_2148 : f32 = u_xlat15.x;
    u_xlat6.x = ((x_2146 * x_2148) + 1.00001001358032226562f);
    let x_2152 : f32 = u_xlat35;
    let x_2153 : f32 = u_xlat35;
    u_xlat35 = (x_2152 * x_2153);
    let x_2156 : f32 = u_xlat6.x;
    let x_2158 : f32 = u_xlat6.x;
    u_xlat6.x = (x_2156 * x_2158);
    let x_2161 : f32 = u_xlat35;
    u_xlat35 = max(x_2161, 0.10000000149011611938f);
    let x_2164 : f32 = u_xlat6.x;
    let x_2165 : f32 = u_xlat35;
    u_xlat6.x = (x_2164 * x_2165);
    let x_2168 : f32 = u_xlat46;
    let x_2170 : f32 = u_xlat6.x;
    u_xlat6.x = (x_2168 * x_2170);
    let x_2173 : f32 = u_xlat44;
    let x_2175 : f32 = u_xlat6.x;
    u_xlat6.x = (x_2173 / x_2175);
    let x_2178 : vec4<f32> = u_xlat6;
    let x_2181 : vec3<f32> = u_xlat4;
    u_xlat9 = ((vec3<f32>(x_2178.x, x_2178.x, x_2178.x) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_2181);
    let x_2183 : vec3<f32> = u_xlat9;
    let x_2184 : vec4<f32> = u_xlat11;
    let x_2187 : vec4<f32> = u_xlat8;
    let x_2189 : vec3<f32> = ((x_2183 * vec3<f32>(x_2184.x, x_2184.y, x_2184.z)) + vec3<f32>(x_2187.x, x_2187.y, x_2187.z));
    let x_2190 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2189.x, x_2189.y, x_2189.z, x_2190.w);

    continuing {
      let x_2192 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2192 + bitcast<u32>(1i));
    }
  }
  let x_2194 : vec3<f32> = u_xlat19;
  let x_2195 : vec4<f32> = u_xlat5;
  let x_2198 : vec3<f32> = u_xlat20;
  u_xlat15 = ((x_2194 * vec3<f32>(x_2195.x, x_2195.x, x_2195.x)) + x_2198);
  let x_2200 : vec4<f32> = u_xlat8;
  let x_2202 : vec3<f32> = u_xlat15;
  u_xlat15 = (vec3<f32>(x_2200.x, x_2200.y, x_2200.z) + x_2202);
  let x_2206 : vec4<f32> = vs_INTERP6;
  let x_2208 : vec3<f32> = u_xlat0;
  let x_2210 : vec3<f32> = u_xlat15;
  let x_2211 : vec3<f32> = ((vec3<f32>(x_2206.w, x_2206.w, x_2206.w) * x_2208) + x_2210);
  let x_2212 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2211.x, x_2211.y, x_2211.z, x_2212.w);
  let x_2214 : bool = u_xlatb1;
  let x_2215 : f32 = u_xlat42;
  SV_Target0.w = select(1.0f, x_2215, x_2214);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(5) vs_INTERP9_param : vec3<f32>, @location(4) vs_INTERP8_param : vec3<f32>, @location(2) vs_INTERP5_param : vec4<f32>, @location(3) vs_INTERP6_param : vec4<f32>, @location(1) vs_INTERP4_param : vec4<f32>, @location(0) vs_INTERP3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP9 = vs_INTERP9_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP6 = vs_INTERP6_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP3 = vs_INTERP3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


