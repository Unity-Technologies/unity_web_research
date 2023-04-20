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

@group(1) @binding(3) var<uniform> x_264 : LightShadows;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlatb6 : vec4<bool>;

var<private> u_xlatu42 : u32;

var<private> u_xlati42 : i32;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb43 : bool;

var<private> u_xlatb44 : bool;

var<private> u_xlat44 : f32;

var<private> u_xlatu1 : vec3<u32>;

var<private> u_xlatu29 : u32;

var<private> u_xlatu3 : u32;

var<private> u_xlati29 : i32;

var<private> u_xlati15 : i32;

var<private> u_xlatu15 : u32;

var<private> u_xlati1 : i32;

var<private> u_xlat15 : f32;

var<private> u_xlatb29 : vec2<bool>;

var<private> u_xlat29 : vec2<f32>;

var<private> u_xlatb15 : bool;

var<private> vs_INTERP4 : vec4<f32>;

var<private> u_xlat45 : f32;

var<private> u_xlat46 : f32;

var<private> u_xlat20 : vec3<f32>;

var<private> u_xlat34 : f32;

var<private> u_xlatb20 : vec2<bool>;

@group(1) @binding(4) var<uniform> x_1016 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlat49 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlatu6 : u32;

var<private> u_xlati35 : i32;

var<private> u_xlati6 : i32;

@group(1) @binding(1) var<uniform> x_1463 : AdditionalLights;

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
  var x_527 : f32;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var x_659 : f32;
  var x_732 : f32;
  var x_1099 : f32;
  var x_1110 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1594 : f32;
  var x_1604 : f32;
  var txVec1 : vec3<f32>;
  var x_2034 : f32;
  var x_2047 : f32;
  var x_2105 : f32;
  var x_2116 : vec3<f32>;
  var x_2274 : f32;
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
  let x_266 : vec4<f32> = x_264.x_CascadeShadowSplitSpheres0;
  let x_269 : vec3<f32> = (x_256 + -(vec3<f32>(x_266.x, x_266.y, x_266.z)));
  let x_270 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_269.x, x_269.y, x_269.z, x_270.w);
  let x_273 : vec3<f32> = vs_INTERP8;
  let x_275 : vec4<f32> = x_264.x_CascadeShadowSplitSpheres1;
  let x_278 : vec3<f32> = (x_273 + -(vec3<f32>(x_275.x, x_275.y, x_275.z)));
  let x_279 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_278.x, x_278.y, x_278.z, x_279.w);
  let x_282 : vec3<f32> = vs_INTERP8;
  let x_285 : vec4<f32> = x_264.x_CascadeShadowSplitSpheres2;
  let x_288 : vec3<f32> = (x_282 + -(vec3<f32>(x_285.x, x_285.y, x_285.z)));
  let x_289 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_288.x, x_288.y, x_288.z, x_289.w);
  let x_292 : vec3<f32> = vs_INTERP8;
  let x_295 : vec4<f32> = x_264.x_CascadeShadowSplitSpheres3;
  u_xlat9 = (x_292 + -(vec3<f32>(x_295.x, x_295.y, x_295.z)));
  let x_299 : vec4<f32> = u_xlat6;
  let x_301 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_299.x, x_299.y, x_299.z), vec3<f32>(x_301.x, x_301.y, x_301.z));
  let x_305 : vec4<f32> = u_xlat7;
  let x_307 : vec4<f32> = u_xlat7;
  u_xlat6.y = dot(vec3<f32>(x_305.x, x_305.y, x_305.z), vec3<f32>(x_307.x, x_307.y, x_307.z));
  let x_311 : vec4<f32> = u_xlat8;
  let x_313 : vec4<f32> = u_xlat8;
  u_xlat6.z = dot(vec3<f32>(x_311.x, x_311.y, x_311.z), vec3<f32>(x_313.x, x_313.y, x_313.z));
  let x_317 : vec3<f32> = u_xlat9;
  let x_318 : vec3<f32> = u_xlat9;
  u_xlat6.w = dot(x_317, x_318);
  let x_324 : vec4<f32> = u_xlat6;
  let x_326 : vec4<f32> = x_264.x_CascadeShadowSplitSphereRadii;
  u_xlatb6 = (x_324 < x_326);
  let x_329 : bool = u_xlatb6.x;
  u_xlat7.x = select(0.0f, 1.0f, x_329);
  let x_333 : bool = u_xlatb6.y;
  u_xlat7.y = select(0.0f, 1.0f, x_333);
  let x_337 : bool = u_xlatb6.z;
  u_xlat7.z = select(0.0f, 1.0f, x_337);
  let x_341 : bool = u_xlatb6.w;
  u_xlat7.w = select(0.0f, 1.0f, x_341);
  let x_345 : bool = u_xlatb6.x;
  u_xlat6.x = select(-0.0f, -1.0f, x_345);
  let x_350 : bool = u_xlatb6.y;
  u_xlat6.y = select(-0.0f, -1.0f, x_350);
  let x_354 : bool = u_xlatb6.z;
  u_xlat6.z = select(-0.0f, -1.0f, x_354);
  let x_357 : vec4<f32> = u_xlat6;
  let x_359 : vec4<f32> = u_xlat7;
  let x_361 : vec3<f32> = (vec3<f32>(x_357.x, x_357.y, x_357.z) + vec3<f32>(x_359.y, x_359.z, x_359.w));
  let x_362 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_361.x, x_361.y, x_361.z, x_362.w);
  let x_364 : vec4<f32> = u_xlat6;
  let x_367 : vec3<f32> = max(vec3<f32>(x_364.x, x_364.y, x_364.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_368 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_368.x, x_367.x, x_367.y, x_367.z);
  let x_370 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(x_370, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_375 : f32 = u_xlat42;
  u_xlat42 = (-(x_375) + 4.0f);
  let x_380 : f32 = u_xlat42;
  u_xlatu42 = u32(x_380);
  let x_384 : u32 = u_xlatu42;
  u_xlati42 = (bitcast<i32>(x_384) << bitcast<u32>(2i));
  let x_387 : vec3<f32> = vs_INTERP8;
  let x_389 : i32 = u_xlati42;
  let x_392 : i32 = u_xlati42;
  let x_396 : vec4<f32> = x_264.x_MainLightWorldToShadow[((x_389 + 1i) / 4i)][((x_392 + 1i) % 4i)];
  let x_398 : vec3<f32> = (vec3<f32>(x_387.y, x_387.y, x_387.y) * vec3<f32>(x_396.x, x_396.y, x_396.z));
  let x_399 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_398.x, x_398.y, x_398.z, x_399.w);
  let x_401 : i32 = u_xlati42;
  let x_403 : i32 = u_xlati42;
  let x_406 : vec4<f32> = x_264.x_MainLightWorldToShadow[(x_401 / 4i)][(x_403 % 4i)];
  let x_408 : vec3<f32> = vs_INTERP8;
  let x_411 : vec4<f32> = u_xlat6;
  let x_413 : vec3<f32> = ((vec3<f32>(x_406.x, x_406.y, x_406.z) * vec3<f32>(x_408.x, x_408.x, x_408.x)) + vec3<f32>(x_411.x, x_411.y, x_411.z));
  let x_414 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_413.x, x_413.y, x_413.z, x_414.w);
  let x_416 : i32 = u_xlati42;
  let x_419 : i32 = u_xlati42;
  let x_423 : vec4<f32> = x_264.x_MainLightWorldToShadow[((x_416 + 2i) / 4i)][((x_419 + 2i) % 4i)];
  let x_425 : vec3<f32> = vs_INTERP8;
  let x_428 : vec4<f32> = u_xlat6;
  let x_430 : vec3<f32> = ((vec3<f32>(x_423.x, x_423.y, x_423.z) * vec3<f32>(x_425.z, x_425.z, x_425.z)) + vec3<f32>(x_428.x, x_428.y, x_428.z));
  let x_431 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_430.x, x_430.y, x_430.z, x_431.w);
  let x_433 : vec4<f32> = u_xlat6;
  let x_435 : i32 = u_xlati42;
  let x_438 : i32 = u_xlati42;
  let x_442 : vec4<f32> = x_264.x_MainLightWorldToShadow[((x_435 + 3i) / 4i)][((x_438 + 3i) % 4i)];
  let x_444 : vec3<f32> = (vec3<f32>(x_433.x, x_433.y, x_433.z) + vec3<f32>(x_442.x, x_442.y, x_442.z));
  let x_445 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_444.x, x_444.y, x_444.z, x_445.w);
  let x_449 : vec4<f32> = u_xlat6;
  let x_450 : vec2<f32> = vec2<f32>(x_449.x, x_449.y);
  let x_452 : f32 = u_xlat6.z;
  txVec0 = vec3<f32>(x_450.x, x_450.y, x_452);
  let x_464 : vec3<f32> = txVec0;
  let x_466 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_464.xy, x_464.z);
  u_xlat42 = x_466;
  let x_468 : f32 = x_264.x_MainLightShadowParams.x;
  u_xlat43 = (-(x_468) + 1.0f);
  let x_471 : f32 = u_xlat42;
  let x_473 : f32 = x_264.x_MainLightShadowParams.x;
  let x_475 : f32 = u_xlat43;
  u_xlat42 = ((x_471 * x_473) + x_475);
  let x_479 : f32 = u_xlat6.z;
  u_xlatb43 = (0.0f >= x_479);
  let x_483 : f32 = u_xlat6.z;
  u_xlatb44 = (x_483 >= 1.0f);
  let x_485 : bool = u_xlatb43;
  let x_486 : bool = u_xlatb44;
  u_xlatb43 = (x_485 | x_486);
  let x_488 : bool = u_xlatb43;
  let x_489 : f32 = u_xlat42;
  u_xlat42 = select(x_489, 1.0f, x_488);
  let x_491 : vec3<f32> = u_xlat0;
  let x_493 : vec4<f32> = x_75.x_MainLightPosition;
  u_xlat0.x = dot(x_491, -(vec3<f32>(x_493.x, x_493.y, x_493.z)));
  let x_499 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_499, 0.0f, 1.0f);
  let x_502 : f32 = u_xlat42;
  let x_505 : vec4<f32> = x_75.x_MainLightColor;
  let x_507 : vec3<f32> = (vec3<f32>(x_502, x_502, x_502) * vec3<f32>(x_505.x, x_505.y, x_505.z));
  let x_508 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_507.x, x_507.y, x_507.z, x_508.w);
  let x_510 : vec3<f32> = u_xlat0;
  let x_512 : vec4<f32> = u_xlat6;
  u_xlat0 = (vec3<f32>(x_510.x, x_510.x, x_510.x) * vec3<f32>(x_512.x, x_512.y, x_512.z));
  let x_515 : vec3<f32> = u_xlat0;
  let x_516 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_515 * vec3<f32>(x_516.x, x_516.y, x_516.z));
  let x_520 : f32 = x_148.unity_LODFade.x;
  u_xlatb43 = (x_520 < 0.0f);
  let x_524 : f32 = x_148.unity_LODFade.x;
  u_xlat44 = (x_524 + 1.0f);
  let x_526 : bool = u_xlatb43;
  if (x_526) {
    let x_530 : f32 = u_xlat44;
    x_527 = x_530;
  } else {
    let x_533 : f32 = x_148.unity_LODFade.x;
    x_527 = x_533;
  }
  let x_534 : f32 = x_527;
  u_xlat43 = x_534;
  let x_536 : f32 = u_xlat43;
  u_xlatb44 = (0.5f >= x_536);
  let x_538 : vec3<f32> = u_xlat1;
  let x_542 : vec4<f32> = x_75.x_ScreenParams;
  u_xlat1 = (abs(x_538) * vec3<f32>(x_542.x, x_542.y, x_542.x));
  let x_548 : vec3<f32> = u_xlat1;
  u_xlatu1 = vec3<u32>(x_548);
  let x_552 : u32 = u_xlatu1.z;
  u_xlatu29 = (x_552 * 1025u);
  let x_556 : u32 = u_xlatu29;
  u_xlatu3 = (x_556 >> 6u);
  let x_560 : u32 = u_xlatu29;
  let x_561 : u32 = u_xlatu3;
  u_xlati29 = bitcast<i32>((x_560 ^ x_561));
  let x_564 : i32 = u_xlati29;
  u_xlatu29 = (bitcast<u32>(x_564) * 9u);
  let x_568 : u32 = u_xlatu29;
  u_xlatu3 = (x_568 >> 11u);
  let x_571 : u32 = u_xlatu29;
  let x_572 : u32 = u_xlatu3;
  u_xlati29 = bitcast<i32>((x_571 ^ x_572));
  let x_575 : i32 = u_xlati29;
  u_xlati29 = (x_575 * 32769i);
  let x_579 : i32 = u_xlati29;
  let x_582 : u32 = u_xlatu1.y;
  u_xlati15 = bitcast<i32>((bitcast<u32>(x_579) ^ x_582));
  let x_586 : i32 = u_xlati15;
  u_xlatu15 = (bitcast<u32>(x_586) * 1025u);
  let x_589 : u32 = u_xlatu15;
  u_xlatu29 = (x_589 >> 6u);
  let x_591 : u32 = u_xlatu29;
  let x_592 : u32 = u_xlatu15;
  u_xlati15 = bitcast<i32>((x_591 ^ x_592));
  let x_595 : i32 = u_xlati15;
  u_xlatu15 = (bitcast<u32>(x_595) * 9u);
  let x_598 : u32 = u_xlatu15;
  u_xlatu29 = (x_598 >> 11u);
  let x_600 : u32 = u_xlatu29;
  let x_601 : u32 = u_xlatu15;
  u_xlati15 = bitcast<i32>((x_600 ^ x_601));
  let x_604 : i32 = u_xlati15;
  u_xlati15 = (x_604 * 32769i);
  let x_607 : i32 = u_xlati15;
  let x_610 : u32 = u_xlatu1.x;
  u_xlati1 = bitcast<i32>((bitcast<u32>(x_607) ^ x_610));
  let x_613 : i32 = u_xlati1;
  u_xlatu1.x = (bitcast<u32>(x_613) * 1025u);
  let x_618 : u32 = u_xlatu1.x;
  u_xlatu15 = (x_618 >> 6u);
  let x_620 : u32 = u_xlatu15;
  let x_622 : u32 = u_xlatu1.x;
  u_xlati1 = bitcast<i32>((x_620 ^ x_622));
  let x_625 : i32 = u_xlati1;
  u_xlatu1.x = (bitcast<u32>(x_625) * 9u);
  let x_630 : u32 = u_xlatu1.x;
  u_xlatu15 = (x_630 >> 11u);
  let x_632 : u32 = u_xlatu15;
  let x_634 : u32 = u_xlatu1.x;
  u_xlati1 = bitcast<i32>((x_632 ^ x_634));
  let x_637 : i32 = u_xlati1;
  u_xlati1 = (x_637 * 32769i);
  param = 1065353216i;
  let x_643 : i32 = u_xlati1;
  param_1 = x_643;
  param_2 = 0i;
  param_3 = 23i;
  let x_646 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlat1.x = bitcast<f32>(x_646);
  let x_650 : f32 = u_xlat1.x;
  u_xlat1.x = (x_650 + -1.0f);
  let x_655 : f32 = u_xlat1.x;
  u_xlat15 = (-(x_655) + 1.0f);
  let x_658 : bool = u_xlatb44;
  if (x_658) {
    let x_663 : f32 = u_xlat1.x;
    x_659 = x_663;
  } else {
    let x_665 : f32 = u_xlat15;
    x_659 = x_665;
  }
  let x_666 : f32 = x_659;
  u_xlat1.x = x_666;
  let x_668 : f32 = u_xlat43;
  let x_671 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_668 * 2.0f) + -(x_671));
  let x_676 : f32 = u_xlat1.x;
  let x_678 : f32 = u_xlat3.w;
  u_xlat15 = (x_676 * x_678);
  let x_683 : f32 = u_xlat15;
  u_xlatb29.x = (x_683 >= 0.40000000596046447754f);
  let x_690 : bool = u_xlatb29.x;
  let x_691 : f32 = u_xlat15;
  u_xlat29.x = select(0.0f, x_691, x_690);
  let x_695 : f32 = u_xlat3.w;
  let x_697 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_695 * x_697) + -0.40000000596046447754f);
  let x_702 : f32 = u_xlat15;
  u_xlat43 = dpdxCoarse(x_702);
  let x_704 : f32 = u_xlat15;
  u_xlat15 = dpdyCoarse(x_704);
  let x_706 : f32 = u_xlat15;
  let x_708 : f32 = u_xlat43;
  u_xlat15 = (abs(x_706) + abs(x_708));
  let x_711 : f32 = u_xlat15;
  u_xlat15 = max(x_711, 0.00009999999747378752f);
  let x_715 : f32 = u_xlat1.x;
  let x_716 : f32 = u_xlat15;
  u_xlat1.x = (x_715 / x_716);
  let x_720 : f32 = u_xlat1.x;
  u_xlat1.x = (x_720 + 0.5f);
  let x_724 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_724, 0.0f, 1.0f);
  let x_729 : f32 = x_75.x_AlphaToMaskAvailable;
  u_xlatb15 = !((x_729 == 0.0f));
  let x_731 : bool = u_xlatb15;
  if (x_731) {
    let x_736 : f32 = u_xlat1.x;
    x_732 = x_736;
  } else {
    let x_739 : f32 = u_xlat29.x;
    x_732 = x_739;
  }
  let x_740 : f32 = x_732;
  u_xlat1.x = x_740;
  let x_743 : f32 = u_xlat1.x;
  u_xlat29.x = (x_743 + -0.00009999999747378752f);
  let x_748 : f32 = u_xlat29.x;
  u_xlatb29.x = (x_748 < 0.0f);
  let x_752 : bool = u_xlatb29.x;
  if (((select(0i, 1i, x_752) * -1i) != 0i)) {
    discard;
  }
  let x_762 : f32 = vs_INTERP4.w;
  u_xlatb29.x = (0.0f < x_762);
  let x_766 : f32 = x_148.unity_WorldTransformParams.w;
  u_xlatb29.y = (x_766 >= 0.0f);
  let x_770 : bool = u_xlatb29.x;
  u_xlat29.x = select(-1.0f, 1.0f, x_770);
  let x_774 : bool = u_xlatb29.y;
  u_xlat29.y = select(-1.0f, 1.0f, x_774);
  let x_778 : f32 = u_xlat29.y;
  let x_780 : f32 = u_xlat29.x;
  u_xlat29.x = (x_778 * x_780);
  let x_783 : vec4<f32> = vs_INTERP4;
  let x_785 : vec3<f32> = vs_INTERP9;
  let x_787 : vec3<f32> = (vec3<f32>(x_783.y, x_783.z, x_783.x) * vec3<f32>(x_785.z, x_785.x, x_785.y));
  let x_788 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_787.x, x_787.y, x_787.z, x_788.w);
  let x_790 : vec3<f32> = vs_INTERP9;
  let x_792 : vec4<f32> = vs_INTERP4;
  let x_795 : vec4<f32> = u_xlat3;
  let x_798 : vec3<f32> = ((vec3<f32>(x_790.y, x_790.z, x_790.x) * vec3<f32>(x_792.z, x_792.x, x_792.y)) + -(vec3<f32>(x_795.x, x_795.y, x_795.z)));
  let x_799 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_798.x, x_798.y, x_798.z, x_799.w);
  let x_801 : vec2<f32> = u_xlat29;
  let x_803 : vec4<f32> = u_xlat3;
  let x_805 : vec3<f32> = (vec3<f32>(x_801.x, x_801.x, x_801.x) * vec3<f32>(x_803.x, x_803.y, x_803.z));
  let x_806 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_805.x, x_805.y, x_805.z, x_806.w);
  let x_808 : vec4<f32> = u_xlat3;
  let x_810 : vec3<f32> = u_xlat19;
  let x_812 : vec3<f32> = (vec3<f32>(x_808.x, x_808.y, x_808.z) * vec3<f32>(x_810.y, x_810.y, x_810.y));
  let x_813 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_812.x, x_812.y, x_812.z, x_813.w);
  let x_815 : vec3<f32> = u_xlat19;
  let x_817 : vec4<f32> = vs_INTERP4;
  let x_820 : vec4<f32> = u_xlat3;
  let x_822 : vec3<f32> = ((vec3<f32>(x_815.x, x_815.x, x_815.x) * vec3<f32>(x_817.x, x_817.y, x_817.z)) + vec3<f32>(x_820.x, x_820.y, x_820.z));
  let x_823 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_822.x, x_822.y, x_822.z, x_823.w);
  let x_825 : vec3<f32> = u_xlat19;
  let x_827 : vec3<f32> = vs_INTERP9;
  let x_829 : vec4<f32> = u_xlat3;
  let x_831 : vec3<f32> = ((vec3<f32>(x_825.z, x_825.z, x_825.z) * x_827) + vec3<f32>(x_829.x, x_829.y, x_829.z));
  let x_832 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_831.x, x_831.y, x_831.z, x_832.w);
  let x_834 : vec4<f32> = u_xlat3;
  let x_836 : vec4<f32> = u_xlat3;
  u_xlat29.x = dot(vec3<f32>(x_834.x, x_834.y, x_834.z), vec3<f32>(x_836.x, x_836.y, x_836.z));
  let x_841 : f32 = u_xlat29.x;
  u_xlat29.x = inverseSqrt(x_841);
  let x_844 : vec2<f32> = u_xlat29;
  let x_846 : vec4<f32> = u_xlat3;
  let x_848 : vec3<f32> = (vec3<f32>(x_844.x, x_844.x, x_844.x) * vec3<f32>(x_846.x, x_846.y, x_846.z));
  let x_849 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_848.x, x_848.y, x_848.z, x_849.w);
  u_xlat3.w = 1.0f;
  let x_854 : vec4<f32> = x_148.unity_SHAr;
  let x_855 : vec4<f32> = u_xlat3;
  u_xlat6.x = dot(x_854, x_855);
  let x_860 : vec4<f32> = x_148.unity_SHAg;
  let x_861 : vec4<f32> = u_xlat3;
  u_xlat6.y = dot(x_860, x_861);
  let x_866 : vec4<f32> = x_148.unity_SHAb;
  let x_867 : vec4<f32> = u_xlat3;
  u_xlat6.z = dot(x_866, x_867);
  let x_870 : vec4<f32> = u_xlat3;
  let x_872 : vec4<f32> = u_xlat3;
  u_xlat7 = (vec4<f32>(x_870.y, x_870.z, x_870.z, x_870.x) * vec4<f32>(x_872.x, x_872.y, x_872.z, x_872.z));
  let x_877 : vec4<f32> = x_148.unity_SHBr;
  let x_878 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_877, x_878);
  let x_883 : vec4<f32> = x_148.unity_SHBg;
  let x_884 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_883, x_884);
  let x_888 : vec4<f32> = x_148.unity_SHBb;
  let x_889 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_888, x_889);
  let x_893 : f32 = u_xlat3.y;
  let x_895 : f32 = u_xlat3.y;
  u_xlat29.x = (x_893 * x_895);
  let x_899 : f32 = u_xlat3.x;
  let x_901 : f32 = u_xlat3.x;
  let x_904 : f32 = u_xlat29.x;
  u_xlat29.x = ((x_899 * x_901) + -(x_904));
  let x_910 : vec4<f32> = x_148.unity_SHC;
  let x_912 : vec2<f32> = u_xlat29;
  let x_915 : vec4<f32> = u_xlat8;
  u_xlat19 = ((vec3<f32>(x_910.x, x_910.y, x_910.z) * vec3<f32>(x_912.x, x_912.x, x_912.x)) + vec3<f32>(x_915.x, x_915.y, x_915.z));
  let x_918 : vec3<f32> = u_xlat19;
  let x_919 : vec4<f32> = u_xlat6;
  u_xlat19 = (x_918 + vec3<f32>(x_919.x, x_919.y, x_919.z));
  let x_922 : vec3<f32> = u_xlat19;
  u_xlat19 = max(x_922, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_925 : f32 = u_xlat5.x;
  u_xlat5.x = x_925;
  let x_928 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_928, 0.0f, 1.0f);
  let x_932 : f32 = u_xlat1.x;
  u_xlat1.x = x_932;
  let x_935 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_935, 0.0f, 1.0f);
  let x_938 : vec3<f32> = u_xlat4;
  u_xlat4 = (x_938 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_943 : f32 = u_xlat5.x;
  u_xlat29.x = (-(x_943) + 1.0f);
  let x_948 : f32 = u_xlat29.x;
  let x_950 : f32 = u_xlat29.x;
  u_xlat43 = (x_948 * x_950);
  let x_952 : f32 = u_xlat43;
  u_xlat43 = max(x_952, 0.0078125f);
  let x_955 : f32 = u_xlat43;
  let x_956 : f32 = u_xlat43;
  u_xlat44 = (x_955 * x_956);
  let x_960 : f32 = u_xlat5.x;
  u_xlat45 = (x_960 + 0.04000002145767211914f);
  let x_963 : f32 = u_xlat45;
  u_xlat45 = min(x_963, 1.0f);
  let x_966 : f32 = u_xlat43;
  u_xlat46 = ((x_966 * 4.0f) + 2.0f);
  let x_970 : f32 = vs_INTERP6.w;
  u_xlat5.x = min(x_970, 1.0f);
  let x_973 : vec3<f32> = vs_INTERP8;
  let x_975 : vec3<f32> = x_75.x_WorldSpaceCameraPos;
  let x_977 : vec3<f32> = (x_973 + -(x_975));
  let x_978 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_977.x, x_977.y, x_977.z, x_978.w);
  let x_980 : vec4<f32> = u_xlat6;
  let x_982 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_980.x, x_980.y, x_980.z), vec3<f32>(x_982.x, x_982.y, x_982.z));
  let x_988 : f32 = u_xlat6.x;
  let x_990 : f32 = x_264.x_MainLightShadowParams.z;
  let x_993 : f32 = x_264.x_MainLightShadowParams.w;
  u_xlat20.x = ((x_988 * x_990) + x_993);
  let x_997 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_997, 0.0f, 1.0f);
  let x_1001 : f32 = u_xlat42;
  u_xlat34 = (-(x_1001) + 1.0f);
  let x_1005 : f32 = u_xlat20.x;
  let x_1006 : f32 = u_xlat34;
  let x_1008 : f32 = u_xlat42;
  u_xlat42 = ((x_1005 * x_1006) + x_1008);
  let x_1018 : f32 = x_1016.x_MainLightCookieTextureFormat;
  u_xlatb20.x = !((x_1018 == -1.0f));
  let x_1022 : bool = u_xlatb20.x;
  if (x_1022) {
    let x_1025 : vec3<f32> = vs_INTERP8;
    let x_1028 : vec4<f32> = x_1016.x_MainLightWorldToLight[1i];
    let x_1030 : vec2<f32> = (vec2<f32>(x_1025.y, x_1025.y) * vec2<f32>(x_1028.x, x_1028.y));
    let x_1031 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_1030.x, x_1030.y, x_1031.z);
    let x_1034 : vec4<f32> = x_1016.x_MainLightWorldToLight[0i];
    let x_1036 : vec3<f32> = vs_INTERP8;
    let x_1039 : vec3<f32> = u_xlat20;
    let x_1041 : vec2<f32> = ((vec2<f32>(x_1034.x, x_1034.y) * vec2<f32>(x_1036.x, x_1036.x)) + vec2<f32>(x_1039.x, x_1039.y));
    let x_1042 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_1041.x, x_1041.y, x_1042.z);
    let x_1045 : vec4<f32> = x_1016.x_MainLightWorldToLight[2i];
    let x_1047 : vec3<f32> = vs_INTERP8;
    let x_1050 : vec3<f32> = u_xlat20;
    let x_1052 : vec2<f32> = ((vec2<f32>(x_1045.x, x_1045.y) * vec2<f32>(x_1047.z, x_1047.z)) + vec2<f32>(x_1050.x, x_1050.y));
    let x_1053 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_1052.x, x_1052.y, x_1053.z);
    let x_1055 : vec3<f32> = u_xlat20;
    let x_1058 : vec4<f32> = x_1016.x_MainLightWorldToLight[3i];
    let x_1060 : vec2<f32> = (vec2<f32>(x_1055.x, x_1055.y) + vec2<f32>(x_1058.x, x_1058.y));
    let x_1061 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_1060.x, x_1060.y, x_1061.z);
    let x_1063 : vec3<f32> = u_xlat20;
    let x_1067 : vec2<f32> = ((vec2<f32>(x_1063.x, x_1063.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1068 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_1067.x, x_1067.y, x_1068.z);
    let x_1075 : vec3<f32> = u_xlat20;
    let x_1078 : f32 = x_75.x_GlobalMipBias.x;
    let x_1079 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1075.x, x_1075.y), x_1078);
    u_xlat7 = x_1079;
    let x_1081 : f32 = x_1016.x_MainLightCookieTextureFormat;
    let x_1083 : f32 = x_1016.x_MainLightCookieTextureFormat;
    let x_1085 : f32 = x_1016.x_MainLightCookieTextureFormat;
    let x_1087 : f32 = x_1016.x_MainLightCookieTextureFormat;
    let x_1088 : vec4<f32> = vec4<f32>(x_1081, x_1083, x_1085, x_1087);
    let x_1095 : vec4<bool> = (vec4<f32>(x_1088.x, x_1088.y, x_1088.z, x_1088.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb20 = vec2<bool>(x_1095.x, x_1095.y);
    let x_1098 : bool = u_xlatb20.y;
    if (x_1098) {
      let x_1103 : f32 = u_xlat7.w;
      x_1099 = x_1103;
    } else {
      let x_1106 : f32 = u_xlat7.x;
      x_1099 = x_1106;
    }
    let x_1107 : f32 = x_1099;
    u_xlat34 = x_1107;
    let x_1109 : bool = u_xlatb20.x;
    if (x_1109) {
      let x_1113 : vec4<f32> = u_xlat7;
      x_1110 = vec3<f32>(x_1113.x, x_1113.y, x_1113.z);
    } else {
      let x_1116 : f32 = u_xlat34;
      x_1110 = vec3<f32>(x_1116, x_1116, x_1116);
    }
    let x_1118 : vec3<f32> = x_1110;
    u_xlat20 = x_1118;
  } else {
    u_xlat20.x = 1.0f;
    u_xlat20.y = 1.0f;
    u_xlat20.z = 1.0f;
  }
  let x_1123 : vec3<f32> = u_xlat20;
  let x_1125 : vec4<f32> = x_75.x_MainLightColor;
  u_xlat20 = (x_1123 * vec3<f32>(x_1125.x, x_1125.y, x_1125.z));
  let x_1128 : vec3<f32> = u_xlat2;
  let x_1130 : vec4<f32> = u_xlat3;
  u_xlat7.x = dot(-(x_1128), vec3<f32>(x_1130.x, x_1130.y, x_1130.z));
  let x_1135 : f32 = u_xlat7.x;
  let x_1137 : f32 = u_xlat7.x;
  u_xlat7.x = (x_1135 + x_1137);
  let x_1140 : vec4<f32> = u_xlat3;
  let x_1142 : vec4<f32> = u_xlat7;
  let x_1146 : vec3<f32> = u_xlat2;
  let x_1148 : vec3<f32> = ((vec3<f32>(x_1140.x, x_1140.y, x_1140.z) * -(vec3<f32>(x_1142.x, x_1142.x, x_1142.x))) + -(x_1146));
  let x_1149 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1148.x, x_1148.y, x_1148.z, x_1149.w);
  let x_1152 : vec4<f32> = u_xlat3;
  let x_1154 : vec3<f32> = u_xlat2;
  u_xlat49 = dot(vec3<f32>(x_1152.x, x_1152.y, x_1152.z), x_1154);
  let x_1156 : f32 = u_xlat49;
  u_xlat49 = clamp(x_1156, 0.0f, 1.0f);
  let x_1158 : f32 = u_xlat49;
  u_xlat49 = (-(x_1158) + 1.0f);
  let x_1161 : f32 = u_xlat49;
  let x_1162 : f32 = u_xlat49;
  u_xlat49 = (x_1161 * x_1162);
  let x_1164 : f32 = u_xlat49;
  let x_1165 : f32 = u_xlat49;
  u_xlat49 = (x_1164 * x_1165);
  let x_1168 : f32 = u_xlat29.x;
  u_xlat8.x = ((-(x_1168) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1176 : f32 = u_xlat29.x;
  let x_1178 : f32 = u_xlat8.x;
  u_xlat29.x = (x_1176 * x_1178);
  let x_1182 : f32 = u_xlat29.x;
  u_xlat29.x = (x_1182 * 6.0f);
  let x_1194 : vec4<f32> = u_xlat7;
  let x_1197 : f32 = u_xlat29.x;
  let x_1198 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1194.x, x_1194.y, x_1194.z), x_1197);
  u_xlat8 = x_1198;
  let x_1200 : f32 = u_xlat8.w;
  u_xlat29.x = (x_1200 + -1.0f);
  let x_1204 : f32 = x_148.unity_SpecCube0_HDR.w;
  let x_1206 : f32 = u_xlat29.x;
  u_xlat29.x = ((x_1204 * x_1206) + 1.0f);
  let x_1211 : f32 = u_xlat29.x;
  u_xlat29.x = max(x_1211, 0.0f);
  let x_1215 : f32 = u_xlat29.x;
  u_xlat29.x = log2(x_1215);
  let x_1219 : f32 = u_xlat29.x;
  let x_1221 : f32 = x_148.unity_SpecCube0_HDR.y;
  u_xlat29.x = (x_1219 * x_1221);
  let x_1225 : f32 = u_xlat29.x;
  u_xlat29.x = exp2(x_1225);
  let x_1229 : f32 = u_xlat29.x;
  let x_1231 : f32 = x_148.unity_SpecCube0_HDR.x;
  u_xlat29.x = (x_1229 * x_1231);
  let x_1234 : vec4<f32> = u_xlat8;
  let x_1236 : vec2<f32> = u_xlat29;
  let x_1238 : vec3<f32> = (vec3<f32>(x_1234.x, x_1234.y, x_1234.z) * vec3<f32>(x_1236.x, x_1236.x, x_1236.x));
  let x_1239 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1238.x, x_1238.y, x_1238.z, x_1239.w);
  let x_1241 : f32 = u_xlat43;
  let x_1243 : f32 = u_xlat43;
  u_xlat29 = ((vec2<f32>(x_1241, x_1241) * vec2<f32>(x_1243, x_1243)) + vec2<f32>(-1.0f, 1.0f));
  let x_1249 : f32 = u_xlat29.y;
  u_xlat43 = (1.0f / x_1249);
  let x_1251 : f32 = u_xlat45;
  u_xlat45 = (x_1251 + -0.03999999910593032837f);
  let x_1254 : f32 = u_xlat49;
  let x_1255 : f32 = u_xlat45;
  u_xlat45 = ((x_1254 * x_1255) + 0.03999999910593032837f);
  let x_1259 : f32 = u_xlat43;
  let x_1260 : f32 = u_xlat45;
  u_xlat43 = (x_1259 * x_1260);
  let x_1262 : f32 = u_xlat43;
  let x_1264 : vec4<f32> = u_xlat7;
  let x_1266 : vec3<f32> = (vec3<f32>(x_1262, x_1262, x_1262) * vec3<f32>(x_1264.x, x_1264.y, x_1264.z));
  let x_1267 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1266.x, x_1266.y, x_1266.z, x_1267.w);
  let x_1269 : vec3<f32> = u_xlat19;
  let x_1270 : vec3<f32> = u_xlat4;
  let x_1272 : vec4<f32> = u_xlat7;
  u_xlat19 = ((x_1269 * x_1270) + vec3<f32>(x_1272.x, x_1272.y, x_1272.z));
  let x_1275 : f32 = u_xlat42;
  let x_1277 : f32 = x_148.unity_LightData.z;
  u_xlat42 = (x_1275 * x_1277);
  let x_1279 : vec4<f32> = u_xlat3;
  let x_1282 : vec4<f32> = x_75.x_MainLightPosition;
  u_xlat43 = dot(vec3<f32>(x_1279.x, x_1279.y, x_1279.z), vec3<f32>(x_1282.x, x_1282.y, x_1282.z));
  let x_1285 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1285, 0.0f, 1.0f);
  let x_1287 : f32 = u_xlat42;
  let x_1288 : f32 = u_xlat43;
  u_xlat42 = (x_1287 * x_1288);
  let x_1290 : f32 = u_xlat42;
  let x_1292 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_1290, x_1290, x_1290) * x_1292);
  let x_1294 : vec3<f32> = u_xlat2;
  let x_1296 : vec4<f32> = x_75.x_MainLightPosition;
  let x_1298 : vec3<f32> = (x_1294 + vec3<f32>(x_1296.x, x_1296.y, x_1296.z));
  let x_1299 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1298.x, x_1298.y, x_1298.z, x_1299.w);
  let x_1301 : vec4<f32> = u_xlat7;
  let x_1303 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_1301.x, x_1301.y, x_1301.z), vec3<f32>(x_1303.x, x_1303.y, x_1303.z));
  let x_1306 : f32 = u_xlat42;
  u_xlat42 = max(x_1306, 1.17549435e-38f);
  let x_1309 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_1309);
  let x_1311 : f32 = u_xlat42;
  let x_1313 : vec4<f32> = u_xlat7;
  let x_1315 : vec3<f32> = (vec3<f32>(x_1311, x_1311, x_1311) * vec3<f32>(x_1313.x, x_1313.y, x_1313.z));
  let x_1316 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1315.x, x_1315.y, x_1315.z, x_1316.w);
  let x_1318 : vec4<f32> = u_xlat3;
  let x_1320 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_1318.x, x_1318.y, x_1318.z), vec3<f32>(x_1320.x, x_1320.y, x_1320.z));
  let x_1323 : f32 = u_xlat42;
  u_xlat42 = clamp(x_1323, 0.0f, 1.0f);
  let x_1326 : vec4<f32> = x_75.x_MainLightPosition;
  let x_1328 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec3<f32>(x_1326.x, x_1326.y, x_1326.z), vec3<f32>(x_1328.x, x_1328.y, x_1328.z));
  let x_1331 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1331, 0.0f, 1.0f);
  let x_1333 : f32 = u_xlat42;
  let x_1334 : f32 = u_xlat42;
  u_xlat42 = (x_1333 * x_1334);
  let x_1336 : f32 = u_xlat42;
  let x_1338 : f32 = u_xlat29.x;
  u_xlat42 = ((x_1336 * x_1338) + 1.00001001358032226562f);
  let x_1342 : f32 = u_xlat43;
  let x_1343 : f32 = u_xlat43;
  u_xlat43 = (x_1342 * x_1343);
  let x_1345 : f32 = u_xlat42;
  let x_1346 : f32 = u_xlat42;
  u_xlat42 = (x_1345 * x_1346);
  let x_1348 : f32 = u_xlat43;
  u_xlat43 = max(x_1348, 0.10000000149011611938f);
  let x_1351 : f32 = u_xlat42;
  let x_1352 : f32 = u_xlat43;
  u_xlat42 = (x_1351 * x_1352);
  let x_1354 : f32 = u_xlat46;
  let x_1355 : f32 = u_xlat42;
  u_xlat42 = (x_1354 * x_1355);
  let x_1357 : f32 = u_xlat44;
  let x_1358 : f32 = u_xlat42;
  u_xlat42 = (x_1357 / x_1358);
  let x_1360 : f32 = u_xlat42;
  let x_1364 : vec3<f32> = u_xlat4;
  let x_1365 : vec3<f32> = ((vec3<f32>(x_1360, x_1360, x_1360) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_1364);
  let x_1366 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1365.x, x_1365.y, x_1365.z, x_1366.w);
  let x_1368 : vec3<f32> = u_xlat20;
  let x_1369 : vec4<f32> = u_xlat7;
  u_xlat20 = (x_1368 * vec3<f32>(x_1369.x, x_1369.y, x_1369.z));
  let x_1373 : f32 = x_75.x_AdditionalLightsCount.x;
  let x_1375 : f32 = x_148.unity_LightData.y;
  u_xlat42 = min(x_1373, x_1375);
  let x_1377 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_1377));
  let x_1381 : f32 = u_xlat6.x;
  let x_1384 : f32 = x_264.x_AdditionalShadowFadeParams.x;
  let x_1387 : f32 = x_264.x_AdditionalShadowFadeParams.y;
  u_xlat43 = ((x_1381 * x_1384) + x_1387);
  let x_1389 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1389, 0.0f, 1.0f);
  let x_1393 : f32 = x_1016.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1395 : f32 = x_1016.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1397 : f32 = x_1016.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1399 : f32 = x_1016.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1400 : vec4<f32> = vec4<f32>(x_1393, x_1395, x_1397, x_1399);
  let x_1406 : vec4<bool> = (vec4<f32>(x_1400.x, x_1400.y, x_1400.z, x_1400.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1406.x, x_1406.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1417 : u32 = u_xlatu_loop_1;
    let x_1418 : u32 = u_xlatu42;
    if ((x_1417 < x_1418)) {
    } else {
      break;
    }
    let x_1421 : u32 = u_xlatu_loop_1;
    u_xlatu6 = (x_1421 >> 2u);
    let x_1424 : u32 = u_xlatu_loop_1;
    u_xlati35 = bitcast<i32>((x_1424 & 3u));
    let x_1427 : u32 = u_xlatu6;
    let x_1430 : vec4<f32> = x_148.unity_LightIndices[bitcast<i32>(x_1427)];
    let x_1440 : i32 = u_xlati35;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1445 : vec4<u32> = indexable[x_1440];
    u_xlat6.x = dot(x_1430, bitcast<vec4<f32>>(x_1445));
    let x_1451 : f32 = u_xlat6.x;
    u_xlati6 = i32(x_1451);
    let x_1453 : vec3<f32> = vs_INTERP8;
    let x_1464 : i32 = u_xlati6;
    let x_1466 : vec4<f32> = x_1463.x_AdditionalLightsPosition[x_1464];
    let x_1469 : i32 = u_xlati6;
    let x_1471 : vec4<f32> = x_1463.x_AdditionalLightsPosition[x_1469];
    u_xlat9 = ((-(x_1453) * vec3<f32>(x_1466.w, x_1466.w, x_1466.w)) + vec3<f32>(x_1471.x, x_1471.y, x_1471.z));
    let x_1475 : vec3<f32> = u_xlat9;
    let x_1476 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_1475, x_1476);
    let x_1478 : f32 = u_xlat35;
    u_xlat35 = max(x_1478, 0.00006103515625f);
    let x_1481 : f32 = u_xlat35;
    u_xlat49 = inverseSqrt(x_1481);
    let x_1484 : f32 = u_xlat49;
    let x_1486 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1484, x_1484, x_1484) * x_1486);
    let x_1489 : f32 = u_xlat35;
    u_xlat50 = (1.0f / x_1489);
    let x_1491 : f32 = u_xlat35;
    let x_1492 : i32 = u_xlati6;
    let x_1494 : f32 = x_1463.x_AdditionalLightsAttenuation[x_1492].x;
    u_xlat35 = (x_1491 * x_1494);
    let x_1496 : f32 = u_xlat35;
    let x_1498 : f32 = u_xlat35;
    u_xlat35 = ((-(x_1496) * x_1498) + 1.0f);
    let x_1501 : f32 = u_xlat35;
    u_xlat35 = max(x_1501, 0.0f);
    let x_1503 : f32 = u_xlat35;
    let x_1504 : f32 = u_xlat35;
    u_xlat35 = (x_1503 * x_1504);
    let x_1506 : f32 = u_xlat35;
    let x_1507 : f32 = u_xlat50;
    u_xlat35 = (x_1506 * x_1507);
    let x_1509 : i32 = u_xlati6;
    let x_1511 : vec4<f32> = x_1463.x_AdditionalLightsSpotDir[x_1509];
    let x_1513 : vec3<f32> = u_xlat10;
    u_xlat50 = dot(vec3<f32>(x_1511.x, x_1511.y, x_1511.z), x_1513);
    let x_1515 : f32 = u_xlat50;
    let x_1516 : i32 = u_xlati6;
    let x_1518 : f32 = x_1463.x_AdditionalLightsAttenuation[x_1516].z;
    let x_1520 : i32 = u_xlati6;
    let x_1522 : f32 = x_1463.x_AdditionalLightsAttenuation[x_1520].w;
    u_xlat50 = ((x_1515 * x_1518) + x_1522);
    let x_1524 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1524, 0.0f, 1.0f);
    let x_1526 : f32 = u_xlat50;
    let x_1527 : f32 = u_xlat50;
    u_xlat50 = (x_1526 * x_1527);
    let x_1529 : f32 = u_xlat35;
    let x_1530 : f32 = u_xlat50;
    u_xlat35 = (x_1529 * x_1530);
    let x_1534 : i32 = u_xlati6;
    let x_1536 : f32 = x_264.x_AdditionalShadowParams[x_1534].w;
    u_xlati50 = i32(x_1536);
    let x_1539 : i32 = u_xlati50;
    u_xlatb51 = (x_1539 >= 0i);
    let x_1541 : bool = u_xlatb51;
    if (x_1541) {
      let x_1545 : i32 = u_xlati6;
      let x_1547 : f32 = x_264.x_AdditionalShadowParams[x_1545].z;
      u_xlatb51 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1547, x_1547, x_1547, x_1547))));
      let x_1551 : bool = u_xlatb51;
      if (x_1551) {
        let x_1555 : vec3<f32> = u_xlat10;
        let x_1558 : vec3<f32> = u_xlat10;
        let x_1561 : vec4<bool> = (abs(vec4<f32>(x_1555.z, x_1555.z, x_1555.y, x_1555.z)) >= abs(vec4<f32>(x_1558.x, x_1558.y, x_1558.x, x_1558.x)));
        let x_1563 : vec3<bool> = vec3<bool>(x_1561.x, x_1561.y, x_1561.z);
        let x_1564 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1563.x, x_1563.y, x_1563.z, x_1564.w);
        let x_1567 : bool = u_xlatb11.y;
        let x_1569 : bool = u_xlatb11.x;
        u_xlatb51 = (x_1567 & x_1569);
        let x_1571 : vec3<f32> = u_xlat10;
        let x_1574 : vec4<bool> = (-(vec4<f32>(x_1571.z, x_1571.y, x_1571.z, x_1571.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1575 : vec3<bool> = vec3<bool>(x_1574.x, x_1574.y, x_1574.w);
        let x_1576 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1575.x, x_1575.y, x_1576.z, x_1575.z);
        let x_1580 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1580);
        let x_1585 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1585);
        let x_1590 : bool = u_xlatb11.w;
        u_xlat52 = select(0.0f, 1.0f, x_1590);
        let x_1593 : bool = u_xlatb11.z;
        if (x_1593) {
          let x_1598 : f32 = u_xlat11.y;
          x_1594 = x_1598;
        } else {
          let x_1600 : f32 = u_xlat52;
          x_1594 = x_1600;
        }
        let x_1601 : f32 = x_1594;
        u_xlat52 = x_1601;
        let x_1603 : bool = u_xlatb51;
        if (x_1603) {
          let x_1608 : f32 = u_xlat11.x;
          x_1604 = x_1608;
        } else {
          let x_1610 : f32 = u_xlat52;
          x_1604 = x_1610;
        }
        let x_1611 : f32 = x_1604;
        u_xlat51 = x_1611;
        let x_1612 : i32 = u_xlati6;
        let x_1614 : f32 = x_264.x_AdditionalShadowParams[x_1612].w;
        u_xlat52 = trunc(x_1614);
        let x_1616 : f32 = u_xlat51;
        let x_1617 : f32 = u_xlat52;
        u_xlat51 = (x_1616 + x_1617);
        let x_1619 : f32 = u_xlat51;
        u_xlati50 = i32(x_1619);
      }
      let x_1621 : i32 = u_xlati50;
      u_xlati50 = (x_1621 << bitcast<u32>(2i));
      let x_1623 : vec3<f32> = vs_INTERP8;
      let x_1626 : i32 = u_xlati50;
      let x_1629 : i32 = u_xlati50;
      let x_1633 : vec4<f32> = x_264.x_AdditionalLightsWorldToShadow[((x_1626 + 1i) / 4i)][((x_1629 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1623.y, x_1623.y, x_1623.y, x_1623.y) * x_1633);
      let x_1635 : i32 = u_xlati50;
      let x_1637 : i32 = u_xlati50;
      let x_1640 : vec4<f32> = x_264.x_AdditionalLightsWorldToShadow[(x_1635 / 4i)][(x_1637 % 4i)];
      let x_1641 : vec3<f32> = vs_INTERP8;
      let x_1644 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1640 * vec4<f32>(x_1641.x, x_1641.x, x_1641.x, x_1641.x)) + x_1644);
      let x_1646 : i32 = u_xlati50;
      let x_1649 : i32 = u_xlati50;
      let x_1653 : vec4<f32> = x_264.x_AdditionalLightsWorldToShadow[((x_1646 + 2i) / 4i)][((x_1649 + 2i) % 4i)];
      let x_1654 : vec3<f32> = vs_INTERP8;
      let x_1657 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1653 * vec4<f32>(x_1654.z, x_1654.z, x_1654.z, x_1654.z)) + x_1657);
      let x_1659 : vec4<f32> = u_xlat11;
      let x_1660 : i32 = u_xlati50;
      let x_1663 : i32 = u_xlati50;
      let x_1667 : vec4<f32> = x_264.x_AdditionalLightsWorldToShadow[((x_1660 + 3i) / 4i)][((x_1663 + 3i) % 4i)];
      u_xlat11 = (x_1659 + x_1667);
      let x_1669 : vec4<f32> = u_xlat11;
      let x_1671 : vec4<f32> = u_xlat11;
      let x_1673 : vec3<f32> = (vec3<f32>(x_1669.x, x_1669.y, x_1669.z) / vec3<f32>(x_1671.w, x_1671.w, x_1671.w));
      let x_1674 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1673.x, x_1673.y, x_1673.z, x_1674.w);
      let x_1677 : vec4<f32> = u_xlat11;
      let x_1678 : vec2<f32> = vec2<f32>(x_1677.x, x_1677.y);
      let x_1680 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1678.x, x_1678.y, x_1680);
      let x_1688 : vec3<f32> = txVec1;
      let x_1690 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1688.xy, x_1688.z);
      u_xlat50 = x_1690;
      let x_1691 : i32 = u_xlati6;
      let x_1693 : f32 = x_264.x_AdditionalShadowParams[x_1691].x;
      u_xlat51 = (1.0f + -(x_1693));
      let x_1696 : f32 = u_xlat50;
      let x_1697 : i32 = u_xlati6;
      let x_1699 : f32 = x_264.x_AdditionalShadowParams[x_1697].x;
      let x_1701 : f32 = u_xlat51;
      u_xlat50 = ((x_1696 * x_1699) + x_1701);
      let x_1704 : f32 = u_xlat11.z;
      u_xlatb51 = (0.0f >= x_1704);
      let x_1708 : f32 = u_xlat11.z;
      u_xlatb52 = (x_1708 >= 1.0f);
      let x_1710 : bool = u_xlatb51;
      let x_1711 : bool = u_xlatb52;
      u_xlatb51 = (x_1710 | x_1711);
      let x_1713 : bool = u_xlatb51;
      let x_1714 : f32 = u_xlat50;
      u_xlat50 = select(x_1714, 1.0f, x_1713);
    } else {
      u_xlat50 = 1.0f;
    }
    let x_1717 : f32 = u_xlat50;
    u_xlat51 = (-(x_1717) + 1.0f);
    let x_1720 : f32 = u_xlat43;
    let x_1721 : f32 = u_xlat51;
    let x_1723 : f32 = u_xlat50;
    u_xlat50 = ((x_1720 * x_1721) + x_1723);
    let x_1726 : i32 = u_xlati6;
    u_xlati51 = (1i << bitcast<u32>((x_1726 & 31i)));
    let x_1730 : i32 = u_xlati51;
    let x_1733 : f32 = x_1016.x_AdditionalLightsCookieEnableBits;
    u_xlati51 = bitcast<i32>((bitcast<u32>(x_1730) & bitcast<u32>(x_1733)));
    let x_1737 : i32 = u_xlati51;
    if ((x_1737 != 0i)) {
      let x_1741 : i32 = u_xlati6;
      let x_1743 : f32 = x_1016.x_AdditionalLightsLightTypes[x_1741].el;
      u_xlati51 = i32(x_1743);
      let x_1746 : i32 = u_xlati51;
      u_xlati52 = select(1i, 0i, (x_1746 != 0i));
      let x_1750 : i32 = u_xlati6;
      u_xlati11 = (x_1750 << bitcast<u32>(2i));
      let x_1752 : i32 = u_xlati52;
      if ((x_1752 != 0i)) {
        let x_1757 : vec3<f32> = vs_INTERP8;
        let x_1759 : i32 = u_xlati11;
        let x_1762 : i32 = u_xlati11;
        let x_1766 : vec4<f32> = x_1016.x_AdditionalLightsWorldToLights[((x_1759 + 1i) / 4i)][((x_1762 + 1i) % 4i)];
        u_xlat25 = (vec3<f32>(x_1757.y, x_1757.y, x_1757.y) * vec3<f32>(x_1766.x, x_1766.y, x_1766.w));
        let x_1769 : i32 = u_xlati11;
        let x_1771 : i32 = u_xlati11;
        let x_1774 : vec4<f32> = x_1016.x_AdditionalLightsWorldToLights[(x_1769 / 4i)][(x_1771 % 4i)];
        let x_1776 : vec3<f32> = vs_INTERP8;
        let x_1779 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1774.x, x_1774.y, x_1774.w) * vec3<f32>(x_1776.x, x_1776.x, x_1776.x)) + x_1779);
        let x_1781 : i32 = u_xlati11;
        let x_1784 : i32 = u_xlati11;
        let x_1788 : vec4<f32> = x_1016.x_AdditionalLightsWorldToLights[((x_1781 + 2i) / 4i)][((x_1784 + 2i) % 4i)];
        let x_1790 : vec3<f32> = vs_INTERP8;
        let x_1793 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1788.x, x_1788.y, x_1788.w) * vec3<f32>(x_1790.z, x_1790.z, x_1790.z)) + x_1793);
        let x_1795 : vec3<f32> = u_xlat25;
        let x_1796 : i32 = u_xlati11;
        let x_1799 : i32 = u_xlati11;
        let x_1803 : vec4<f32> = x_1016.x_AdditionalLightsWorldToLights[((x_1796 + 3i) / 4i)][((x_1799 + 3i) % 4i)];
        u_xlat25 = (x_1795 + vec3<f32>(x_1803.x, x_1803.y, x_1803.w));
        let x_1806 : vec3<f32> = u_xlat25;
        let x_1808 : vec3<f32> = u_xlat25;
        let x_1810 : vec2<f32> = (vec2<f32>(x_1806.x, x_1806.y) / vec2<f32>(x_1808.z, x_1808.z));
        let x_1811 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1810.x, x_1810.y, x_1811.z);
        let x_1813 : vec3<f32> = u_xlat25;
        let x_1816 : vec2<f32> = ((vec2<f32>(x_1813.x, x_1813.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1817 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1816.x, x_1816.y, x_1817.z);
        let x_1819 : vec3<f32> = u_xlat25;
        let x_1823 : vec2<f32> = clamp(vec2<f32>(x_1819.x, x_1819.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1824 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1823.x, x_1823.y, x_1824.z);
        let x_1826 : i32 = u_xlati6;
        let x_1828 : vec4<f32> = x_1016.x_AdditionalLightsCookieAtlasUVRects[x_1826];
        let x_1830 : vec3<f32> = u_xlat25;
        let x_1833 : i32 = u_xlati6;
        let x_1835 : vec4<f32> = x_1016.x_AdditionalLightsCookieAtlasUVRects[x_1833];
        let x_1837 : vec2<f32> = ((vec2<f32>(x_1828.x, x_1828.y) * vec2<f32>(x_1830.x, x_1830.y)) + vec2<f32>(x_1835.z, x_1835.w));
        let x_1838 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1837.x, x_1837.y, x_1838.z);
      } else {
        let x_1841 : i32 = u_xlati51;
        u_xlatb51 = (x_1841 == 1i);
        let x_1843 : bool = u_xlatb51;
        u_xlati51 = select(0i, 1i, x_1843);
        let x_1845 : i32 = u_xlati51;
        if ((x_1845 != 0i)) {
          let x_1850 : vec3<f32> = vs_INTERP8;
          let x_1852 : i32 = u_xlati11;
          let x_1855 : i32 = u_xlati11;
          let x_1859 : vec4<f32> = x_1016.x_AdditionalLightsWorldToLights[((x_1852 + 1i) / 4i)][((x_1855 + 1i) % 4i)];
          let x_1861 : vec2<f32> = (vec2<f32>(x_1850.y, x_1850.y) * vec2<f32>(x_1859.x, x_1859.y));
          let x_1862 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1861.x, x_1861.y, x_1862.z, x_1862.w);
          let x_1864 : i32 = u_xlati11;
          let x_1866 : i32 = u_xlati11;
          let x_1869 : vec4<f32> = x_1016.x_AdditionalLightsWorldToLights[(x_1864 / 4i)][(x_1866 % 4i)];
          let x_1871 : vec3<f32> = vs_INTERP8;
          let x_1874 : vec4<f32> = u_xlat12;
          let x_1876 : vec2<f32> = ((vec2<f32>(x_1869.x, x_1869.y) * vec2<f32>(x_1871.x, x_1871.x)) + vec2<f32>(x_1874.x, x_1874.y));
          let x_1877 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1876.x, x_1876.y, x_1877.z, x_1877.w);
          let x_1879 : i32 = u_xlati11;
          let x_1882 : i32 = u_xlati11;
          let x_1886 : vec4<f32> = x_1016.x_AdditionalLightsWorldToLights[((x_1879 + 2i) / 4i)][((x_1882 + 2i) % 4i)];
          let x_1888 : vec3<f32> = vs_INTERP8;
          let x_1891 : vec4<f32> = u_xlat12;
          let x_1893 : vec2<f32> = ((vec2<f32>(x_1886.x, x_1886.y) * vec2<f32>(x_1888.z, x_1888.z)) + vec2<f32>(x_1891.x, x_1891.y));
          let x_1894 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1893.x, x_1893.y, x_1894.z, x_1894.w);
          let x_1896 : vec4<f32> = u_xlat12;
          let x_1898 : i32 = u_xlati11;
          let x_1901 : i32 = u_xlati11;
          let x_1905 : vec4<f32> = x_1016.x_AdditionalLightsWorldToLights[((x_1898 + 3i) / 4i)][((x_1901 + 3i) % 4i)];
          let x_1907 : vec2<f32> = (vec2<f32>(x_1896.x, x_1896.y) + vec2<f32>(x_1905.x, x_1905.y));
          let x_1908 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1907.x, x_1907.y, x_1908.z, x_1908.w);
          let x_1910 : vec4<f32> = u_xlat12;
          let x_1913 : vec2<f32> = ((vec2<f32>(x_1910.x, x_1910.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1914 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1913.x, x_1913.y, x_1914.z, x_1914.w);
          let x_1916 : vec4<f32> = u_xlat12;
          let x_1918 : vec2<f32> = fract(vec2<f32>(x_1916.x, x_1916.y));
          let x_1919 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1918.x, x_1918.y, x_1919.z, x_1919.w);
          let x_1921 : i32 = u_xlati6;
          let x_1923 : vec4<f32> = x_1016.x_AdditionalLightsCookieAtlasUVRects[x_1921];
          let x_1925 : vec4<f32> = u_xlat12;
          let x_1928 : i32 = u_xlati6;
          let x_1930 : vec4<f32> = x_1016.x_AdditionalLightsCookieAtlasUVRects[x_1928];
          let x_1932 : vec2<f32> = ((vec2<f32>(x_1923.x, x_1923.y) * vec2<f32>(x_1925.x, x_1925.y)) + vec2<f32>(x_1930.z, x_1930.w));
          let x_1933 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1932.x, x_1932.y, x_1933.z);
        } else {
          let x_1936 : vec3<f32> = vs_INTERP8;
          let x_1938 : i32 = u_xlati11;
          let x_1941 : i32 = u_xlati11;
          let x_1945 : vec4<f32> = x_1016.x_AdditionalLightsWorldToLights[((x_1938 + 1i) / 4i)][((x_1941 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1936.y, x_1936.y, x_1936.y, x_1936.y) * x_1945);
          let x_1947 : i32 = u_xlati11;
          let x_1949 : i32 = u_xlati11;
          let x_1952 : vec4<f32> = x_1016.x_AdditionalLightsWorldToLights[(x_1947 / 4i)][(x_1949 % 4i)];
          let x_1953 : vec3<f32> = vs_INTERP8;
          let x_1956 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1952 * vec4<f32>(x_1953.x, x_1953.x, x_1953.x, x_1953.x)) + x_1956);
          let x_1958 : i32 = u_xlati11;
          let x_1961 : i32 = u_xlati11;
          let x_1965 : vec4<f32> = x_1016.x_AdditionalLightsWorldToLights[((x_1958 + 2i) / 4i)][((x_1961 + 2i) % 4i)];
          let x_1966 : vec3<f32> = vs_INTERP8;
          let x_1969 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1965 * vec4<f32>(x_1966.z, x_1966.z, x_1966.z, x_1966.z)) + x_1969);
          let x_1971 : vec4<f32> = u_xlat12;
          let x_1972 : i32 = u_xlati11;
          let x_1975 : i32 = u_xlati11;
          let x_1979 : vec4<f32> = x_1016.x_AdditionalLightsWorldToLights[((x_1972 + 3i) / 4i)][((x_1975 + 3i) % 4i)];
          u_xlat12 = (x_1971 + x_1979);
          let x_1981 : vec4<f32> = u_xlat12;
          let x_1983 : vec4<f32> = u_xlat12;
          let x_1985 : vec3<f32> = (vec3<f32>(x_1981.x, x_1981.y, x_1981.z) / vec3<f32>(x_1983.w, x_1983.w, x_1983.w));
          let x_1986 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1985.x, x_1985.y, x_1985.z, x_1986.w);
          let x_1988 : vec4<f32> = u_xlat12;
          let x_1990 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(vec3<f32>(x_1988.x, x_1988.y, x_1988.z), vec3<f32>(x_1990.x, x_1990.y, x_1990.z));
          let x_1993 : f32 = u_xlat51;
          u_xlat51 = inverseSqrt(x_1993);
          let x_1995 : f32 = u_xlat51;
          let x_1997 : vec4<f32> = u_xlat12;
          let x_1999 : vec3<f32> = (vec3<f32>(x_1995, x_1995, x_1995) * vec3<f32>(x_1997.x, x_1997.y, x_1997.z));
          let x_2000 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1999.x, x_1999.y, x_1999.z, x_2000.w);
          let x_2002 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(abs(vec3<f32>(x_2002.x, x_2002.y, x_2002.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2007 : f32 = u_xlat51;
          u_xlat51 = max(x_2007, 0.00000099999999747524f);
          let x_2010 : f32 = u_xlat51;
          u_xlat51 = (1.0f / x_2010);
          let x_2013 : f32 = u_xlat51;
          let x_2015 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_2013, x_2013, x_2013) * vec3<f32>(x_2015.z, x_2015.x, x_2015.y));
          let x_2019 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2019);
          let x_2023 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2023, 0.0f, 1.0f);
          let x_2026 : vec3<f32> = u_xlat13;
          let x_2028 : vec4<bool> = (vec4<f32>(x_2026.y, x_2026.y, x_2026.y, x_2026.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_2029 : vec2<bool> = vec2<bool>(x_2028.x, x_2028.w);
          let x_2030 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_2029.x, x_2030.y, x_2030.z, x_2029.y);
          let x_2033 : bool = u_xlatb11.x;
          if (x_2033) {
            let x_2038 : f32 = u_xlat13.x;
            x_2034 = x_2038;
          } else {
            let x_2041 : f32 = u_xlat13.x;
            x_2034 = -(x_2041);
          }
          let x_2043 : f32 = x_2034;
          u_xlat11.x = x_2043;
          let x_2046 : bool = u_xlatb11.w;
          if (x_2046) {
            let x_2051 : f32 = u_xlat13.x;
            x_2047 = x_2051;
          } else {
            let x_2054 : f32 = u_xlat13.x;
            x_2047 = -(x_2054);
          }
          let x_2056 : f32 = x_2047;
          u_xlat11.w = x_2056;
          let x_2058 : vec4<f32> = u_xlat12;
          let x_2060 : f32 = u_xlat51;
          let x_2063 : vec4<f32> = u_xlat11;
          let x_2065 : vec2<f32> = ((vec2<f32>(x_2058.x, x_2058.y) * vec2<f32>(x_2060, x_2060)) + vec2<f32>(x_2063.x, x_2063.w));
          let x_2066 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2065.x, x_2066.y, x_2066.z, x_2065.y);
          let x_2068 : vec4<f32> = u_xlat11;
          let x_2071 : vec2<f32> = ((vec2<f32>(x_2068.x, x_2068.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2072 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2071.x, x_2072.y, x_2072.z, x_2071.y);
          let x_2074 : vec4<f32> = u_xlat11;
          let x_2078 : vec2<f32> = clamp(vec2<f32>(x_2074.x, x_2074.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2079 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2078.x, x_2079.y, x_2079.z, x_2078.y);
          let x_2081 : i32 = u_xlati6;
          let x_2083 : vec4<f32> = x_1016.x_AdditionalLightsCookieAtlasUVRects[x_2081];
          let x_2085 : vec4<f32> = u_xlat11;
          let x_2088 : i32 = u_xlati6;
          let x_2090 : vec4<f32> = x_1016.x_AdditionalLightsCookieAtlasUVRects[x_2088];
          let x_2092 : vec2<f32> = ((vec2<f32>(x_2083.x, x_2083.y) * vec2<f32>(x_2085.x, x_2085.w)) + vec2<f32>(x_2090.z, x_2090.w));
          let x_2093 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_2092.x, x_2092.y, x_2093.z);
        }
      }
      let x_2100 : vec3<f32> = u_xlat25;
      let x_2102 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_2100.x, x_2100.y), 0.0f);
      u_xlat11 = x_2102;
      let x_2104 : bool = u_xlatb7.y;
      if (x_2104) {
        let x_2109 : f32 = u_xlat11.w;
        x_2105 = x_2109;
      } else {
        let x_2112 : f32 = u_xlat11.x;
        x_2105 = x_2112;
      }
      let x_2113 : f32 = x_2105;
      u_xlat51 = x_2113;
      let x_2115 : bool = u_xlatb7.x;
      if (x_2115) {
        let x_2119 : vec4<f32> = u_xlat11;
        x_2116 = vec3<f32>(x_2119.x, x_2119.y, x_2119.z);
      } else {
        let x_2122 : f32 = u_xlat51;
        x_2116 = vec3<f32>(x_2122, x_2122, x_2122);
      }
      let x_2124 : vec3<f32> = x_2116;
      let x_2125 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2124.x, x_2124.y, x_2124.z, x_2125.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2131 : vec4<f32> = u_xlat11;
    let x_2133 : i32 = u_xlati6;
    let x_2135 : vec4<f32> = x_1463.x_AdditionalLightsColor[x_2133];
    let x_2137 : vec3<f32> = (vec3<f32>(x_2131.x, x_2131.y, x_2131.z) * vec3<f32>(x_2135.x, x_2135.y, x_2135.z));
    let x_2138 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2137.x, x_2137.y, x_2137.z, x_2138.w);
    let x_2140 : f32 = u_xlat35;
    let x_2141 : f32 = u_xlat50;
    u_xlat6.x = (x_2140 * x_2141);
    let x_2144 : vec4<f32> = u_xlat3;
    let x_2146 : vec3<f32> = u_xlat10;
    u_xlat35 = dot(vec3<f32>(x_2144.x, x_2144.y, x_2144.z), x_2146);
    let x_2148 : f32 = u_xlat35;
    u_xlat35 = clamp(x_2148, 0.0f, 1.0f);
    let x_2151 : f32 = u_xlat6.x;
    let x_2152 : f32 = u_xlat35;
    u_xlat6.x = (x_2151 * x_2152);
    let x_2155 : vec4<f32> = u_xlat6;
    let x_2157 : vec4<f32> = u_xlat11;
    let x_2159 : vec3<f32> = (vec3<f32>(x_2155.x, x_2155.x, x_2155.x) * vec3<f32>(x_2157.x, x_2157.y, x_2157.z));
    let x_2160 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2159.x, x_2159.y, x_2159.z, x_2160.w);
    let x_2162 : vec3<f32> = u_xlat9;
    let x_2163 : f32 = u_xlat49;
    let x_2166 : vec3<f32> = u_xlat2;
    u_xlat9 = ((x_2162 * vec3<f32>(x_2163, x_2163, x_2163)) + x_2166);
    let x_2168 : vec3<f32> = u_xlat9;
    let x_2169 : vec3<f32> = u_xlat9;
    u_xlat6.x = dot(x_2168, x_2169);
    let x_2173 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_2173, 1.17549435e-38f);
    let x_2177 : f32 = u_xlat6.x;
    u_xlat6.x = inverseSqrt(x_2177);
    let x_2180 : vec4<f32> = u_xlat6;
    let x_2182 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_2180.x, x_2180.x, x_2180.x) * x_2182);
    let x_2184 : vec4<f32> = u_xlat3;
    let x_2186 : vec3<f32> = u_xlat9;
    u_xlat6.x = dot(vec3<f32>(x_2184.x, x_2184.y, x_2184.z), x_2186);
    let x_2190 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_2190, 0.0f, 1.0f);
    let x_2193 : vec3<f32> = u_xlat10;
    let x_2194 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_2193, x_2194);
    let x_2196 : f32 = u_xlat35;
    u_xlat35 = clamp(x_2196, 0.0f, 1.0f);
    let x_2199 : f32 = u_xlat6.x;
    let x_2201 : f32 = u_xlat6.x;
    u_xlat6.x = (x_2199 * x_2201);
    let x_2205 : f32 = u_xlat6.x;
    let x_2207 : f32 = u_xlat29.x;
    u_xlat6.x = ((x_2205 * x_2207) + 1.00001001358032226562f);
    let x_2211 : f32 = u_xlat35;
    let x_2212 : f32 = u_xlat35;
    u_xlat35 = (x_2211 * x_2212);
    let x_2215 : f32 = u_xlat6.x;
    let x_2217 : f32 = u_xlat6.x;
    u_xlat6.x = (x_2215 * x_2217);
    let x_2220 : f32 = u_xlat35;
    u_xlat35 = max(x_2220, 0.10000000149011611938f);
    let x_2223 : f32 = u_xlat6.x;
    let x_2224 : f32 = u_xlat35;
    u_xlat6.x = (x_2223 * x_2224);
    let x_2227 : f32 = u_xlat46;
    let x_2229 : f32 = u_xlat6.x;
    u_xlat6.x = (x_2227 * x_2229);
    let x_2232 : f32 = u_xlat44;
    let x_2234 : f32 = u_xlat6.x;
    u_xlat6.x = (x_2232 / x_2234);
    let x_2237 : vec4<f32> = u_xlat6;
    let x_2240 : vec3<f32> = u_xlat4;
    u_xlat9 = ((vec3<f32>(x_2237.x, x_2237.x, x_2237.x) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_2240);
    let x_2242 : vec3<f32> = u_xlat9;
    let x_2243 : vec4<f32> = u_xlat11;
    let x_2246 : vec4<f32> = u_xlat8;
    let x_2248 : vec3<f32> = ((x_2242 * vec3<f32>(x_2243.x, x_2243.y, x_2243.z)) + vec3<f32>(x_2246.x, x_2246.y, x_2246.z));
    let x_2249 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2248.x, x_2248.y, x_2248.z, x_2249.w);

    continuing {
      let x_2251 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2251 + bitcast<u32>(1i));
    }
  }
  let x_2253 : vec3<f32> = u_xlat19;
  let x_2254 : vec4<f32> = u_xlat5;
  let x_2257 : vec3<f32> = u_xlat20;
  u_xlat2 = ((x_2253 * vec3<f32>(x_2254.x, x_2254.x, x_2254.x)) + x_2257);
  let x_2259 : vec4<f32> = u_xlat8;
  let x_2261 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_2259.x, x_2259.y, x_2259.z) + x_2261);
  let x_2265 : vec4<f32> = vs_INTERP6;
  let x_2267 : vec3<f32> = u_xlat0;
  let x_2269 : vec3<f32> = u_xlat2;
  let x_2270 : vec3<f32> = ((vec3<f32>(x_2265.w, x_2265.w, x_2265.w) * x_2267) + x_2269);
  let x_2271 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2270.x, x_2270.y, x_2270.z, x_2271.w);
  let x_2273 : bool = u_xlatb15;
  if (x_2273) {
    let x_2278 : f32 = u_xlat1.x;
    x_2274 = x_2278;
  } else {
    x_2274 = 1.0f;
  }
  let x_2280 : f32 = x_2274;
  SV_Target0.w = x_2280;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(4) vs_INTERP9_param : vec3<f32>, @location(3) vs_INTERP8_param : vec3<f32>, @location(1) vs_INTERP5_param : vec4<f32>, @location(2) vs_INTERP6_param : vec4<f32>, @location(0) vs_INTERP4_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP9 = vs_INTERP9_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP6 = vs_INTERP6_param;
  vs_INTERP4 = vs_INTERP4_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


