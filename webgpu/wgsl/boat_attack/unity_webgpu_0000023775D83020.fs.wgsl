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

var<private> u_xlatb78 : bool;

@group(1) @binding(0) var<uniform> x_75 : PGlobals;

var<private> u_xlat1 : vec3<f32>;

var<private> vs_INTERP8 : vec3<f32>;

var<private> u_xlat79 : f32;

var<private> u_xlat2 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_148 : UnityPerDraw;

var<private> u_xlat78 : f32;

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

var<private> u_xlat31 : vec3<f32>;

var<private> vs_INTERP6 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_265 : LightShadows;

var<private> u_xlatb79 : bool;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(12) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb80 : bool;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat82 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlat34 : vec3<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat35 : vec2<f32>;

var<private> u_xlat67 : vec2<f32>;

var<private> u_xlat62 : vec2<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlatb82 : bool;

var<private> u_xlatb6 : bool;

var<private> u_xlatb3 : bool;

var<private> u_xlatu1 : vec3<u32>;

var<private> u_xlatu53 : u32;

var<private> u_xlatu29 : u32;

var<private> u_xlati53 : i32;

var<private> u_xlati27 : i32;

var<private> u_xlatu27 : u32;

var<private> u_xlati1 : i32;

var<private> u_xlat27 : f32;

var<private> u_xlatb53 : vec2<bool>;

var<private> u_xlat53 : vec2<f32>;

var<private> u_xlatb27 : bool;

var<private> vs_INTERP4 : vec4<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP0 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat81 : f32;

var<private> vs_INTERP3 : vec4<f32>;

var<private> u_xlatb32 : vec2<bool>;

var<private> u_xlat32 : vec3<f32>;

var<private> u_xlat58 : f32;

var<private> u_xlat65 : vec2<f32>;

@group(1) @binding(4) var<uniform> x_3265 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlat85 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu78 : u32;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlatu82 : u32;

var<private> u_xlati59 : i32;

var<private> u_xlati82 : i32;

@group(1) @binding(1) var<uniform> x_3712 : AdditionalLights;

var<private> u_xlat86 : f32;

var<private> u_xlati86 : i32;

var<private> u_xlatb87 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat88 : f32;

var<private> u_xlat87 : f32;

var<private> u_xlatb86 : bool;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat66 : vec2<f32>;

var<private> u_xlat89 : f32;

var<private> u_xlat39 : vec3<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat40 : vec2<f32>;

var<private> u_xlat72 : vec2<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlat25 : vec4<f32>;

var<private> u_xlatb88 : bool;

var<private> u_xlati87 : i32;

var<private> u_xlati88 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlat37 : vec3<f32>;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu80 : u32;

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
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var txVec4 : vec3<f32>;
  var txVec5 : vec3<f32>;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var txVec15 : vec3<f32>;
  var txVec16 : vec3<f32>;
  var txVec17 : vec3<f32>;
  var txVec18 : vec3<f32>;
  var txVec19 : vec3<f32>;
  var txVec20 : vec3<f32>;
  var txVec21 : vec3<f32>;
  var txVec22 : vec3<f32>;
  var txVec23 : vec3<f32>;
  var txVec24 : vec3<f32>;
  var txVec25 : vec3<f32>;
  var txVec26 : vec3<f32>;
  var txVec27 : vec3<f32>;
  var txVec28 : vec3<f32>;
  var txVec29 : vec3<f32>;
  var x_1576 : f32;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var x_1710 : f32;
  var x_1782 : f32;
  var txVec30 : vec3<f32>;
  var txVec31 : vec3<f32>;
  var txVec32 : vec3<f32>;
  var txVec33 : vec3<f32>;
  var txVec34 : vec3<f32>;
  var txVec35 : vec3<f32>;
  var txVec36 : vec3<f32>;
  var txVec37 : vec3<f32>;
  var txVec38 : vec3<f32>;
  var txVec39 : vec3<f32>;
  var txVec40 : vec3<f32>;
  var txVec41 : vec3<f32>;
  var txVec42 : vec3<f32>;
  var txVec43 : vec3<f32>;
  var txVec44 : vec3<f32>;
  var txVec45 : vec3<f32>;
  var txVec46 : vec3<f32>;
  var txVec47 : vec3<f32>;
  var txVec48 : vec3<f32>;
  var txVec49 : vec3<f32>;
  var txVec50 : vec3<f32>;
  var txVec51 : vec3<f32>;
  var txVec52 : vec3<f32>;
  var txVec53 : vec3<f32>;
  var txVec54 : vec3<f32>;
  var txVec55 : vec3<f32>;
  var txVec56 : vec3<f32>;
  var txVec57 : vec3<f32>;
  var txVec58 : vec3<f32>;
  var txVec59 : vec3<f32>;
  var x_3348 : f32;
  var x_3359 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_3869 : f32;
  var x_3879 : f32;
  var txVec60 : vec3<f32>;
  var txVec61 : vec3<f32>;
  var txVec62 : vec3<f32>;
  var txVec63 : vec3<f32>;
  var txVec64 : vec3<f32>;
  var txVec65 : vec3<f32>;
  var txVec66 : vec3<f32>;
  var txVec67 : vec3<f32>;
  var txVec68 : vec3<f32>;
  var txVec69 : vec3<f32>;
  var txVec70 : vec3<f32>;
  var txVec71 : vec3<f32>;
  var txVec72 : vec3<f32>;
  var txVec73 : vec3<f32>;
  var txVec74 : vec3<f32>;
  var txVec75 : vec3<f32>;
  var txVec76 : vec3<f32>;
  var txVec77 : vec3<f32>;
  var txVec78 : vec3<f32>;
  var txVec79 : vec3<f32>;
  var txVec80 : vec3<f32>;
  var txVec81 : vec3<f32>;
  var txVec82 : vec3<f32>;
  var txVec83 : vec3<f32>;
  var txVec84 : vec3<f32>;
  var txVec85 : vec3<f32>;
  var txVec86 : vec3<f32>;
  var txVec87 : vec3<f32>;
  var txVec88 : vec3<f32>;
  var txVec89 : vec3<f32>;
  var x_5462 : f32;
  var x_5475 : f32;
  var x_5533 : f32;
  var x_5544 : vec3<f32>;
  var x_5707 : f32;
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
  u_xlatb78 = (x_80 == 0.0f);
  let x_85 : vec3<f32> = vs_INTERP8;
  let x_90 : vec3<f32> = x_75.x_WorldSpaceCameraPos;
  u_xlat1 = (-(x_85) + x_90);
  let x_93 : vec3<f32> = u_xlat1;
  let x_94 : vec3<f32> = u_xlat1;
  u_xlat79 = dot(x_93, x_94);
  let x_96 : f32 = u_xlat79;
  u_xlat79 = inverseSqrt(x_96);
  let x_98 : f32 = u_xlat79;
  let x_100 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_98, x_98, x_98) * x_100);
  let x_103 : bool = u_xlatb78;
  if (x_103) {
    let x_109 : f32 = u_xlat1.x;
    x_105 = x_109;
  } else {
    let x_115 : f32 = x_75.unity_MatrixV[0i].z;
    x_105 = x_115;
  }
  let x_116 : f32 = x_105;
  u_xlat2.x = x_116;
  let x_118 : bool = u_xlatb78;
  if (x_118) {
    let x_124 : f32 = u_xlat1.y;
    x_119 = x_124;
  } else {
    let x_128 : f32 = x_75.unity_MatrixV[1i].z;
    x_119 = x_128;
  }
  let x_129 : f32 = x_119;
  u_xlat2.y = x_129;
  let x_131 : bool = u_xlatb78;
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
  u_xlat78 = dot(x_171, x_172);
  let x_174 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_174);
  let x_176 : f32 = u_xlat78;
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
  u_xlat78 = dot(x_230, x_231);
  let x_233 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_233);
  let x_236 : f32 = u_xlat78;
  let x_238 : vec4<f32> = u_xlat6;
  u_xlat31 = (vec3<f32>(x_236, x_236, x_236) * vec3<f32>(x_238.x, x_238.y, x_238.z));
  let x_244 : f32 = vs_INTERP6.y;
  u_xlat78 = (x_244 * 200.0f);
  let x_247 : f32 = u_xlat78;
  u_xlat78 = min(x_247, 1.0f);
  let x_249 : f32 = u_xlat78;
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
  let x_304 : f32 = x_265.x_MainLightShadowParams.y;
  u_xlatb78 = (0.0f < x_304);
  let x_306 : bool = u_xlatb78;
  if (x_306) {
    let x_311 : f32 = x_265.x_MainLightShadowParams.y;
    u_xlatb79 = (x_311 == 1.0f);
    let x_313 : bool = u_xlatb79;
    if (x_313) {
      let x_317 : vec4<f32> = u_xlat6;
      let x_321 : vec4<f32> = x_265.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_317.x, x_317.y, x_317.x, x_317.y) + x_321);
      let x_325 : vec4<f32> = u_xlat7;
      let x_326 : vec2<f32> = vec2<f32>(x_325.x, x_325.y);
      let x_328 : f32 = u_xlat6.z;
      txVec0 = vec3<f32>(x_326.x, x_326.y, x_328);
      let x_341 : vec3<f32> = txVec0;
      let x_343 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_341.xy, x_341.z);
      u_xlat8.x = x_343;
      let x_346 : vec4<f32> = u_xlat7;
      let x_347 : vec2<f32> = vec2<f32>(x_346.z, x_346.w);
      let x_349 : f32 = u_xlat6.z;
      txVec1 = vec3<f32>(x_347.x, x_347.y, x_349);
      let x_356 : vec3<f32> = txVec1;
      let x_358 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_356.xy, x_356.z);
      u_xlat8.y = x_358;
      let x_360 : vec4<f32> = u_xlat6;
      let x_363 : vec4<f32> = x_265.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_360.x, x_360.y, x_360.x, x_360.y) + x_363);
      let x_366 : vec4<f32> = u_xlat7;
      let x_367 : vec2<f32> = vec2<f32>(x_366.x, x_366.y);
      let x_369 : f32 = u_xlat6.z;
      txVec2 = vec3<f32>(x_367.x, x_367.y, x_369);
      let x_376 : vec3<f32> = txVec2;
      let x_378 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_376.xy, x_376.z);
      u_xlat8.z = x_378;
      let x_381 : vec4<f32> = u_xlat7;
      let x_382 : vec2<f32> = vec2<f32>(x_381.z, x_381.w);
      let x_384 : f32 = u_xlat6.z;
      txVec3 = vec3<f32>(x_382.x, x_382.y, x_384);
      let x_391 : vec3<f32> = txVec3;
      let x_393 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_391.xy, x_391.z);
      u_xlat8.w = x_393;
      let x_395 : vec4<f32> = u_xlat8;
      u_xlat79 = dot(x_395, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_402 : f32 = x_265.x_MainLightShadowParams.y;
      u_xlatb80 = (x_402 == 2.0f);
      let x_404 : bool = u_xlatb80;
      if (x_404) {
        let x_407 : vec4<f32> = u_xlat6;
        let x_411 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_416 : vec2<f32> = ((vec2<f32>(x_407.x, x_407.y) * vec2<f32>(x_411.z, x_411.w)) + vec2<f32>(0.5f, 0.5f));
        let x_417 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_416.x, x_416.y, x_417.z, x_417.w);
        let x_419 : vec4<f32> = u_xlat7;
        let x_421 : vec2<f32> = floor(vec2<f32>(x_419.x, x_419.y));
        let x_422 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_421.x, x_421.y, x_422.z, x_422.w);
        let x_426 : vec4<f32> = u_xlat6;
        let x_429 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_432 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_426.x, x_426.y) * vec2<f32>(x_429.z, x_429.w)) + -(vec2<f32>(x_432.x, x_432.y)));
        let x_436 : vec2<f32> = u_xlat59;
        u_xlat8 = (vec4<f32>(x_436.x, x_436.x, x_436.y, x_436.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_441 : vec4<f32> = u_xlat8;
        let x_443 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_441.x, x_441.x, x_441.z, x_441.z) * vec4<f32>(x_443.x, x_443.x, x_443.z, x_443.z));
        let x_446 : vec4<f32> = u_xlat9;
        let x_450 : vec2<f32> = (vec2<f32>(x_446.y, x_446.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_451 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_450.x, x_451.y, x_450.y, x_451.w);
        let x_453 : vec4<f32> = u_xlat9;
        let x_456 : vec2<f32> = u_xlat59;
        let x_458 : vec2<f32> = ((vec2<f32>(x_453.x, x_453.z) * vec2<f32>(0.5f, 0.5f)) + -(x_456));
        let x_459 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_458.x, x_458.y, x_459.z, x_459.w);
        let x_462 : vec2<f32> = u_xlat59;
        u_xlat61 = (-(x_462) + vec2<f32>(1.0f, 1.0f));
        let x_467 : vec2<f32> = u_xlat59;
        let x_469 : vec2<f32> = min(x_467, vec2<f32>(0.0f, 0.0f));
        let x_470 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_469.x, x_469.y, x_470.z, x_470.w);
        let x_472 : vec4<f32> = u_xlat10;
        let x_475 : vec4<f32> = u_xlat10;
        let x_478 : vec2<f32> = u_xlat61;
        let x_479 : vec2<f32> = ((-(vec2<f32>(x_472.x, x_472.y)) * vec2<f32>(x_475.x, x_475.y)) + x_478);
        let x_480 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_479.x, x_479.y, x_480.z, x_480.w);
        let x_482 : vec2<f32> = u_xlat59;
        u_xlat59 = max(x_482, vec2<f32>(0.0f, 0.0f));
        let x_484 : vec2<f32> = u_xlat59;
        let x_486 : vec2<f32> = u_xlat59;
        let x_488 : vec4<f32> = u_xlat8;
        u_xlat59 = ((-(x_484) * x_486) + vec2<f32>(x_488.y, x_488.w));
        let x_491 : vec4<f32> = u_xlat10;
        let x_493 : vec2<f32> = (vec2<f32>(x_491.x, x_491.y) + vec2<f32>(1.0f, 1.0f));
        let x_494 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_493.x, x_493.y, x_494.z, x_494.w);
        let x_496 : vec2<f32> = u_xlat59;
        u_xlat59 = (x_496 + vec2<f32>(1.0f, 1.0f));
        let x_499 : vec4<f32> = u_xlat9;
        let x_503 : vec2<f32> = (vec2<f32>(x_499.x, x_499.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_504 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_503.x, x_503.y, x_504.z, x_504.w);
        let x_506 : vec2<f32> = u_xlat61;
        let x_507 : vec2<f32> = (x_506 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_508 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_507.x, x_507.y, x_508.z, x_508.w);
        let x_510 : vec4<f32> = u_xlat10;
        let x_512 : vec2<f32> = (vec2<f32>(x_510.x, x_510.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_513 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_512.x, x_512.y, x_513.z, x_513.w);
        let x_516 : vec2<f32> = u_xlat59;
        let x_517 : vec2<f32> = (x_516 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_518 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_517.x, x_517.y, x_518.z, x_518.w);
        let x_520 : vec4<f32> = u_xlat8;
        u_xlat59 = (vec2<f32>(x_520.y, x_520.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_524 : f32 = u_xlat10.x;
        u_xlat11.z = x_524;
        let x_527 : f32 = u_xlat59.x;
        u_xlat11.w = x_527;
        let x_530 : f32 = u_xlat12.x;
        u_xlat9.z = x_530;
        let x_533 : f32 = u_xlat8.x;
        u_xlat9.w = x_533;
        let x_536 : vec4<f32> = u_xlat9;
        let x_538 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_536.z, x_536.w, x_536.x, x_536.z) + vec4<f32>(x_538.z, x_538.w, x_538.x, x_538.z));
        let x_542 : f32 = u_xlat11.y;
        u_xlat10.z = x_542;
        let x_545 : f32 = u_xlat59.y;
        u_xlat10.w = x_545;
        let x_548 : f32 = u_xlat9.y;
        u_xlat12.z = x_548;
        let x_551 : f32 = u_xlat8.z;
        u_xlat12.w = x_551;
        let x_553 : vec4<f32> = u_xlat10;
        let x_555 : vec4<f32> = u_xlat12;
        let x_557 : vec3<f32> = (vec3<f32>(x_553.z, x_553.y, x_553.w) + vec3<f32>(x_555.z, x_555.y, x_555.w));
        let x_558 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_557.x, x_557.y, x_557.z, x_558.w);
        let x_560 : vec4<f32> = u_xlat9;
        let x_562 : vec4<f32> = u_xlat13;
        let x_564 : vec3<f32> = (vec3<f32>(x_560.x, x_560.z, x_560.w) / vec3<f32>(x_562.z, x_562.w, x_562.y));
        let x_565 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_564.x, x_564.y, x_564.z, x_565.w);
        let x_567 : vec4<f32> = u_xlat9;
        let x_573 : vec3<f32> = (vec3<f32>(x_567.x, x_567.y, x_567.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_574 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_573.x, x_573.y, x_573.z, x_574.w);
        let x_576 : vec4<f32> = u_xlat12;
        let x_578 : vec4<f32> = u_xlat8;
        let x_580 : vec3<f32> = (vec3<f32>(x_576.z, x_576.y, x_576.w) / vec3<f32>(x_578.x, x_578.y, x_578.z));
        let x_581 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_580.x, x_580.y, x_580.z, x_581.w);
        let x_583 : vec4<f32> = u_xlat10;
        let x_585 : vec3<f32> = (vec3<f32>(x_583.x, x_583.y, x_583.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_586 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_585.x, x_585.y, x_585.z, x_586.w);
        let x_588 : vec4<f32> = u_xlat9;
        let x_591 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_593 : vec3<f32> = (vec3<f32>(x_588.y, x_588.x, x_588.z) * vec3<f32>(x_591.x, x_591.x, x_591.x));
        let x_594 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_593.x, x_593.y, x_593.z, x_594.w);
        let x_596 : vec4<f32> = u_xlat10;
        let x_599 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_601 : vec3<f32> = (vec3<f32>(x_596.x, x_596.y, x_596.z) * vec3<f32>(x_599.y, x_599.y, x_599.y));
        let x_602 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_601.x, x_601.y, x_601.z, x_602.w);
        let x_605 : f32 = u_xlat10.x;
        u_xlat9.w = x_605;
        let x_607 : vec4<f32> = u_xlat7;
        let x_610 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_613 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_607.x, x_607.y, x_607.x, x_607.y) * vec4<f32>(x_610.x, x_610.y, x_610.x, x_610.y)) + vec4<f32>(x_613.y, x_613.w, x_613.x, x_613.w));
        let x_616 : vec4<f32> = u_xlat7;
        let x_619 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_622 : vec4<f32> = u_xlat9;
        u_xlat59 = ((vec2<f32>(x_616.x, x_616.y) * vec2<f32>(x_619.x, x_619.y)) + vec2<f32>(x_622.z, x_622.w));
        let x_626 : f32 = u_xlat9.y;
        u_xlat10.w = x_626;
        let x_628 : vec4<f32> = u_xlat10;
        let x_629 : vec2<f32> = vec2<f32>(x_628.y, x_628.z);
        let x_630 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_630.x, x_629.x, x_630.z, x_629.y);
        let x_632 : vec4<f32> = u_xlat7;
        let x_635 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_638 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_632.x, x_632.y, x_632.x, x_632.y) * vec4<f32>(x_635.x, x_635.y, x_635.x, x_635.y)) + vec4<f32>(x_638.x, x_638.y, x_638.z, x_638.y));
        let x_641 : vec4<f32> = u_xlat7;
        let x_644 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_647 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_641.x, x_641.y, x_641.x, x_641.y) * vec4<f32>(x_644.x, x_644.y, x_644.x, x_644.y)) + vec4<f32>(x_647.w, x_647.y, x_647.w, x_647.z));
        let x_650 : vec4<f32> = u_xlat7;
        let x_653 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_656 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_650.x, x_650.y, x_650.x, x_650.y) * vec4<f32>(x_653.x, x_653.y, x_653.x, x_653.y)) + vec4<f32>(x_656.x, x_656.w, x_656.z, x_656.w));
        let x_660 : vec4<f32> = u_xlat8;
        let x_662 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_660.x, x_660.x, x_660.x, x_660.y) * vec4<f32>(x_662.z, x_662.w, x_662.y, x_662.z));
        let x_666 : vec4<f32> = u_xlat8;
        let x_668 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_666.y, x_666.y, x_666.z, x_666.z) * x_668);
        let x_672 : f32 = u_xlat8.z;
        let x_674 : f32 = u_xlat13.y;
        u_xlat80 = (x_672 * x_674);
        let x_677 : vec4<f32> = u_xlat11;
        let x_678 : vec2<f32> = vec2<f32>(x_677.x, x_677.y);
        let x_680 : f32 = u_xlat6.z;
        txVec4 = vec3<f32>(x_678.x, x_678.y, x_680);
        let x_688 : vec3<f32> = txVec4;
        let x_690 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_688.xy, x_688.z);
        u_xlat82 = x_690;
        let x_692 : vec4<f32> = u_xlat11;
        let x_693 : vec2<f32> = vec2<f32>(x_692.z, x_692.w);
        let x_695 : f32 = u_xlat6.z;
        txVec5 = vec3<f32>(x_693.x, x_693.y, x_695);
        let x_703 : vec3<f32> = txVec5;
        let x_705 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_703.xy, x_703.z);
        u_xlat84 = x_705;
        let x_706 : f32 = u_xlat84;
        let x_708 : f32 = u_xlat14.y;
        u_xlat84 = (x_706 * x_708);
        let x_711 : f32 = u_xlat14.x;
        let x_712 : f32 = u_xlat82;
        let x_714 : f32 = u_xlat84;
        u_xlat82 = ((x_711 * x_712) + x_714);
        let x_717 : vec2<f32> = u_xlat59;
        let x_719 : f32 = u_xlat6.z;
        txVec6 = vec3<f32>(x_717.x, x_717.y, x_719);
        let x_726 : vec3<f32> = txVec6;
        let x_728 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_726.xy, x_726.z);
        u_xlat84 = x_728;
        let x_730 : f32 = u_xlat14.z;
        let x_731 : f32 = u_xlat84;
        let x_733 : f32 = u_xlat82;
        u_xlat82 = ((x_730 * x_731) + x_733);
        let x_736 : vec4<f32> = u_xlat10;
        let x_737 : vec2<f32> = vec2<f32>(x_736.x, x_736.y);
        let x_739 : f32 = u_xlat6.z;
        txVec7 = vec3<f32>(x_737.x, x_737.y, x_739);
        let x_746 : vec3<f32> = txVec7;
        let x_748 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_746.xy, x_746.z);
        u_xlat84 = x_748;
        let x_750 : f32 = u_xlat14.w;
        let x_751 : f32 = u_xlat84;
        let x_753 : f32 = u_xlat82;
        u_xlat82 = ((x_750 * x_751) + x_753);
        let x_756 : vec4<f32> = u_xlat12;
        let x_757 : vec2<f32> = vec2<f32>(x_756.x, x_756.y);
        let x_759 : f32 = u_xlat6.z;
        txVec8 = vec3<f32>(x_757.x, x_757.y, x_759);
        let x_766 : vec3<f32> = txVec8;
        let x_768 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_766.xy, x_766.z);
        u_xlat84 = x_768;
        let x_770 : f32 = u_xlat15.x;
        let x_771 : f32 = u_xlat84;
        let x_773 : f32 = u_xlat82;
        u_xlat82 = ((x_770 * x_771) + x_773);
        let x_776 : vec4<f32> = u_xlat12;
        let x_777 : vec2<f32> = vec2<f32>(x_776.z, x_776.w);
        let x_779 : f32 = u_xlat6.z;
        txVec9 = vec3<f32>(x_777.x, x_777.y, x_779);
        let x_786 : vec3<f32> = txVec9;
        let x_788 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_786.xy, x_786.z);
        u_xlat84 = x_788;
        let x_790 : f32 = u_xlat15.y;
        let x_791 : f32 = u_xlat84;
        let x_793 : f32 = u_xlat82;
        u_xlat82 = ((x_790 * x_791) + x_793);
        let x_796 : vec4<f32> = u_xlat10;
        let x_797 : vec2<f32> = vec2<f32>(x_796.z, x_796.w);
        let x_799 : f32 = u_xlat6.z;
        txVec10 = vec3<f32>(x_797.x, x_797.y, x_799);
        let x_806 : vec3<f32> = txVec10;
        let x_808 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_806.xy, x_806.z);
        u_xlat84 = x_808;
        let x_810 : f32 = u_xlat15.z;
        let x_811 : f32 = u_xlat84;
        let x_813 : f32 = u_xlat82;
        u_xlat82 = ((x_810 * x_811) + x_813);
        let x_816 : vec4<f32> = u_xlat9;
        let x_817 : vec2<f32> = vec2<f32>(x_816.x, x_816.y);
        let x_819 : f32 = u_xlat6.z;
        txVec11 = vec3<f32>(x_817.x, x_817.y, x_819);
        let x_826 : vec3<f32> = txVec11;
        let x_828 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_826.xy, x_826.z);
        u_xlat84 = x_828;
        let x_830 : f32 = u_xlat15.w;
        let x_831 : f32 = u_xlat84;
        let x_833 : f32 = u_xlat82;
        u_xlat82 = ((x_830 * x_831) + x_833);
        let x_836 : vec4<f32> = u_xlat9;
        let x_837 : vec2<f32> = vec2<f32>(x_836.z, x_836.w);
        let x_839 : f32 = u_xlat6.z;
        txVec12 = vec3<f32>(x_837.x, x_837.y, x_839);
        let x_846 : vec3<f32> = txVec12;
        let x_848 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_846.xy, x_846.z);
        u_xlat84 = x_848;
        let x_849 : f32 = u_xlat80;
        let x_850 : f32 = u_xlat84;
        let x_852 : f32 = u_xlat82;
        u_xlat79 = ((x_849 * x_850) + x_852);
      } else {
        let x_855 : vec4<f32> = u_xlat6;
        let x_858 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_861 : vec2<f32> = ((vec2<f32>(x_855.x, x_855.y) * vec2<f32>(x_858.z, x_858.w)) + vec2<f32>(0.5f, 0.5f));
        let x_862 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_861.x, x_861.y, x_862.z, x_862.w);
        let x_864 : vec4<f32> = u_xlat7;
        let x_866 : vec2<f32> = floor(vec2<f32>(x_864.x, x_864.y));
        let x_867 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_866.x, x_866.y, x_867.z, x_867.w);
        let x_869 : vec4<f32> = u_xlat6;
        let x_872 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_875 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_869.x, x_869.y) * vec2<f32>(x_872.z, x_872.w)) + -(vec2<f32>(x_875.x, x_875.y)));
        let x_879 : vec2<f32> = u_xlat59;
        u_xlat8 = (vec4<f32>(x_879.x, x_879.x, x_879.y, x_879.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_882 : vec4<f32> = u_xlat8;
        let x_884 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_882.x, x_882.x, x_882.z, x_882.z) * vec4<f32>(x_884.x, x_884.x, x_884.z, x_884.z));
        let x_887 : vec4<f32> = u_xlat9;
        let x_891 : vec2<f32> = (vec2<f32>(x_887.y, x_887.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_892 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_892.x, x_891.x, x_892.z, x_891.y);
        let x_894 : vec4<f32> = u_xlat9;
        let x_897 : vec2<f32> = u_xlat59;
        let x_899 : vec2<f32> = ((vec2<f32>(x_894.x, x_894.z) * vec2<f32>(0.5f, 0.5f)) + -(x_897));
        let x_900 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_899.x, x_900.y, x_899.y, x_900.w);
        let x_902 : vec2<f32> = u_xlat59;
        let x_904 : vec2<f32> = (-(x_902) + vec2<f32>(1.0f, 1.0f));
        let x_905 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_904.x, x_904.y, x_905.z, x_905.w);
        let x_907 : vec2<f32> = u_xlat59;
        u_xlat61 = min(x_907, vec2<f32>(0.0f, 0.0f));
        let x_909 : vec2<f32> = u_xlat61;
        let x_911 : vec2<f32> = u_xlat61;
        let x_913 : vec4<f32> = u_xlat9;
        let x_915 : vec2<f32> = ((-(x_909) * x_911) + vec2<f32>(x_913.x, x_913.y));
        let x_916 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_915.x, x_915.y, x_916.z, x_916.w);
        let x_918 : vec2<f32> = u_xlat59;
        u_xlat61 = max(x_918, vec2<f32>(0.0f, 0.0f));
        let x_921 : vec2<f32> = u_xlat61;
        let x_923 : vec2<f32> = u_xlat61;
        let x_925 : vec4<f32> = u_xlat8;
        let x_927 : vec2<f32> = ((-(x_921) * x_923) + vec2<f32>(x_925.y, x_925.w));
        let x_928 : vec3<f32> = u_xlat34;
        u_xlat34 = vec3<f32>(x_927.x, x_928.y, x_927.y);
        let x_930 : vec4<f32> = u_xlat9;
        let x_933 : vec2<f32> = (vec2<f32>(x_930.x, x_930.y) + vec2<f32>(2.0f, 2.0f));
        let x_934 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_933.x, x_933.y, x_934.z, x_934.w);
        let x_936 : vec3<f32> = u_xlat34;
        let x_938 : vec2<f32> = (vec2<f32>(x_936.x, x_936.z) + vec2<f32>(2.0f, 2.0f));
        let x_939 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_939.x, x_938.x, x_939.z, x_938.y);
        let x_942 : f32 = u_xlat8.y;
        u_xlat11.z = (x_942 * 0.08163200318813323975f);
        let x_946 : vec4<f32> = u_xlat8;
        let x_949 : vec3<f32> = (vec3<f32>(x_946.z, x_946.x, x_946.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_950 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_949.x, x_949.y, x_949.z, x_950.w);
        let x_952 : vec4<f32> = u_xlat9;
        let x_955 : vec2<f32> = (vec2<f32>(x_952.x, x_952.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_956 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_955.x, x_955.y, x_956.z, x_956.w);
        let x_959 : f32 = u_xlat12.y;
        u_xlat11.x = x_959;
        let x_961 : vec2<f32> = u_xlat59;
        let x_968 : vec2<f32> = ((vec2<f32>(x_961.x, x_961.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_969 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_969.x, x_968.x, x_969.z, x_968.y);
        let x_971 : vec2<f32> = u_xlat59;
        let x_975 : vec2<f32> = ((vec2<f32>(x_971.x, x_971.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_976 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_975.x, x_976.y, x_975.y, x_976.w);
        let x_979 : f32 = u_xlat8.x;
        u_xlat9.y = x_979;
        let x_982 : f32 = u_xlat10.y;
        u_xlat9.w = x_982;
        let x_984 : vec4<f32> = u_xlat9;
        let x_985 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_984 + x_985);
        let x_987 : vec2<f32> = u_xlat59;
        let x_990 : vec2<f32> = ((vec2<f32>(x_987.y, x_987.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_991 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_991.x, x_990.x, x_991.z, x_990.y);
        let x_993 : vec2<f32> = u_xlat59;
        let x_996 : vec2<f32> = ((vec2<f32>(x_993.y, x_993.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_997 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_996.x, x_997.y, x_996.y, x_997.w);
        let x_1000 : f32 = u_xlat8.y;
        u_xlat10.y = x_1000;
        let x_1002 : vec4<f32> = u_xlat10;
        let x_1003 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1002 + x_1003);
        let x_1005 : vec4<f32> = u_xlat9;
        let x_1006 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1005 / x_1006);
        let x_1008 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1008 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1014 : vec4<f32> = u_xlat10;
        let x_1015 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1014 / x_1015);
        let x_1017 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1017 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1019 : vec4<f32> = u_xlat9;
        let x_1022 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1019.w, x_1019.x, x_1019.y, x_1019.z) * vec4<f32>(x_1022.x, x_1022.x, x_1022.x, x_1022.x));
        let x_1025 : vec4<f32> = u_xlat10;
        let x_1028 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1025.x, x_1025.w, x_1025.y, x_1025.z) * vec4<f32>(x_1028.y, x_1028.y, x_1028.y, x_1028.y));
        let x_1031 : vec4<f32> = u_xlat9;
        let x_1032 : vec3<f32> = vec3<f32>(x_1031.y, x_1031.z, x_1031.w);
        let x_1033 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1032.x, x_1033.y, x_1032.y, x_1032.z);
        let x_1036 : f32 = u_xlat10.x;
        u_xlat12.y = x_1036;
        let x_1038 : vec4<f32> = u_xlat7;
        let x_1041 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_1044 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1038.x, x_1038.y, x_1038.x, x_1038.y) * vec4<f32>(x_1041.x, x_1041.y, x_1041.x, x_1041.y)) + vec4<f32>(x_1044.x, x_1044.y, x_1044.z, x_1044.y));
        let x_1047 : vec4<f32> = u_xlat7;
        let x_1050 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_1053 : vec4<f32> = u_xlat12;
        u_xlat59 = ((vec2<f32>(x_1047.x, x_1047.y) * vec2<f32>(x_1050.x, x_1050.y)) + vec2<f32>(x_1053.w, x_1053.y));
        let x_1057 : f32 = u_xlat12.y;
        u_xlat9.y = x_1057;
        let x_1060 : f32 = u_xlat10.z;
        u_xlat12.y = x_1060;
        let x_1062 : vec4<f32> = u_xlat7;
        let x_1065 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_1068 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1062.x, x_1062.y, x_1062.x, x_1062.y) * vec4<f32>(x_1065.x, x_1065.y, x_1065.x, x_1065.y)) + vec4<f32>(x_1068.x, x_1068.y, x_1068.z, x_1068.y));
        let x_1071 : vec4<f32> = u_xlat7;
        let x_1074 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_1077 : vec4<f32> = u_xlat12;
        let x_1079 : vec2<f32> = ((vec2<f32>(x_1071.x, x_1071.y) * vec2<f32>(x_1074.x, x_1074.y)) + vec2<f32>(x_1077.w, x_1077.y));
        let x_1080 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1079.x, x_1079.y, x_1080.z, x_1080.w);
        let x_1083 : f32 = u_xlat12.y;
        u_xlat9.z = x_1083;
        let x_1086 : vec4<f32> = u_xlat7;
        let x_1089 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_1092 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1086.x, x_1086.y, x_1086.x, x_1086.y) * vec4<f32>(x_1089.x, x_1089.y, x_1089.x, x_1089.y)) + vec4<f32>(x_1092.x, x_1092.y, x_1092.x, x_1092.z));
        let x_1096 : f32 = u_xlat10.w;
        u_xlat12.y = x_1096;
        let x_1099 : vec4<f32> = u_xlat7;
        let x_1102 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_1105 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1099.x, x_1099.y, x_1099.x, x_1099.y) * vec4<f32>(x_1102.x, x_1102.y, x_1102.x, x_1102.y)) + vec4<f32>(x_1105.x, x_1105.y, x_1105.z, x_1105.y));
        let x_1109 : vec4<f32> = u_xlat7;
        let x_1112 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_1115 : vec4<f32> = u_xlat12;
        u_xlat35 = ((vec2<f32>(x_1109.x, x_1109.y) * vec2<f32>(x_1112.x, x_1112.y)) + vec2<f32>(x_1115.w, x_1115.y));
        let x_1119 : f32 = u_xlat12.y;
        u_xlat9.w = x_1119;
        let x_1122 : vec4<f32> = u_xlat7;
        let x_1125 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_1128 : vec4<f32> = u_xlat9;
        u_xlat67 = ((vec2<f32>(x_1122.x, x_1122.y) * vec2<f32>(x_1125.x, x_1125.y)) + vec2<f32>(x_1128.x, x_1128.w));
        let x_1131 : vec4<f32> = u_xlat12;
        let x_1132 : vec3<f32> = vec3<f32>(x_1131.x, x_1131.z, x_1131.w);
        let x_1133 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1132.x, x_1133.y, x_1132.y, x_1132.z);
        let x_1135 : vec4<f32> = u_xlat7;
        let x_1138 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_1141 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1135.x, x_1135.y, x_1135.x, x_1135.y) * vec4<f32>(x_1138.x, x_1138.y, x_1138.x, x_1138.y)) + vec4<f32>(x_1141.x, x_1141.y, x_1141.z, x_1141.y));
        let x_1145 : vec4<f32> = u_xlat7;
        let x_1148 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_1151 : vec4<f32> = u_xlat10;
        u_xlat62 = ((vec2<f32>(x_1145.x, x_1145.y) * vec2<f32>(x_1148.x, x_1148.y)) + vec2<f32>(x_1151.w, x_1151.y));
        let x_1155 : f32 = u_xlat9.x;
        u_xlat10.x = x_1155;
        let x_1157 : vec4<f32> = u_xlat7;
        let x_1160 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_1163 : vec4<f32> = u_xlat10;
        let x_1165 : vec2<f32> = ((vec2<f32>(x_1157.x, x_1157.y) * vec2<f32>(x_1160.x, x_1160.y)) + vec2<f32>(x_1163.x, x_1163.y));
        let x_1166 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1165.x, x_1165.y, x_1166.z, x_1166.w);
        let x_1169 : vec4<f32> = u_xlat8;
        let x_1171 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1169.x, x_1169.x, x_1169.x, x_1169.x) * x_1171);
        let x_1174 : vec4<f32> = u_xlat8;
        let x_1176 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1174.y, x_1174.y, x_1174.y, x_1174.y) * x_1176);
        let x_1179 : vec4<f32> = u_xlat8;
        let x_1181 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1179.z, x_1179.z, x_1179.z, x_1179.z) * x_1181);
        let x_1183 : vec4<f32> = u_xlat8;
        let x_1185 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1183.w, x_1183.w, x_1183.w, x_1183.w) * x_1185);
        let x_1188 : vec4<f32> = u_xlat13;
        let x_1189 : vec2<f32> = vec2<f32>(x_1188.x, x_1188.y);
        let x_1191 : f32 = u_xlat6.z;
        txVec13 = vec3<f32>(x_1189.x, x_1189.y, x_1191);
        let x_1198 : vec3<f32> = txVec13;
        let x_1200 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1198.xy, x_1198.z);
        u_xlat80 = x_1200;
        let x_1202 : vec4<f32> = u_xlat13;
        let x_1203 : vec2<f32> = vec2<f32>(x_1202.z, x_1202.w);
        let x_1205 : f32 = u_xlat6.z;
        txVec14 = vec3<f32>(x_1203.x, x_1203.y, x_1205);
        let x_1212 : vec3<f32> = txVec14;
        let x_1214 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1212.xy, x_1212.z);
        u_xlat82 = x_1214;
        let x_1215 : f32 = u_xlat82;
        let x_1217 : f32 = u_xlat18.y;
        u_xlat82 = (x_1215 * x_1217);
        let x_1220 : f32 = u_xlat18.x;
        let x_1221 : f32 = u_xlat80;
        let x_1223 : f32 = u_xlat82;
        u_xlat80 = ((x_1220 * x_1221) + x_1223);
        let x_1226 : vec2<f32> = u_xlat59;
        let x_1228 : f32 = u_xlat6.z;
        txVec15 = vec3<f32>(x_1226.x, x_1226.y, x_1228);
        let x_1235 : vec3<f32> = txVec15;
        let x_1237 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1235.xy, x_1235.z);
        u_xlat82 = x_1237;
        let x_1239 : f32 = u_xlat18.z;
        let x_1240 : f32 = u_xlat82;
        let x_1242 : f32 = u_xlat80;
        u_xlat80 = ((x_1239 * x_1240) + x_1242);
        let x_1245 : vec4<f32> = u_xlat16;
        let x_1246 : vec2<f32> = vec2<f32>(x_1245.x, x_1245.y);
        let x_1248 : f32 = u_xlat6.z;
        txVec16 = vec3<f32>(x_1246.x, x_1246.y, x_1248);
        let x_1255 : vec3<f32> = txVec16;
        let x_1257 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1255.xy, x_1255.z);
        u_xlat82 = x_1257;
        let x_1259 : f32 = u_xlat18.w;
        let x_1260 : f32 = u_xlat82;
        let x_1262 : f32 = u_xlat80;
        u_xlat80 = ((x_1259 * x_1260) + x_1262);
        let x_1265 : vec4<f32> = u_xlat14;
        let x_1266 : vec2<f32> = vec2<f32>(x_1265.x, x_1265.y);
        let x_1268 : f32 = u_xlat6.z;
        txVec17 = vec3<f32>(x_1266.x, x_1266.y, x_1268);
        let x_1275 : vec3<f32> = txVec17;
        let x_1277 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1275.xy, x_1275.z);
        u_xlat82 = x_1277;
        let x_1279 : f32 = u_xlat19.x;
        let x_1280 : f32 = u_xlat82;
        let x_1282 : f32 = u_xlat80;
        u_xlat80 = ((x_1279 * x_1280) + x_1282);
        let x_1285 : vec4<f32> = u_xlat14;
        let x_1286 : vec2<f32> = vec2<f32>(x_1285.z, x_1285.w);
        let x_1288 : f32 = u_xlat6.z;
        txVec18 = vec3<f32>(x_1286.x, x_1286.y, x_1288);
        let x_1295 : vec3<f32> = txVec18;
        let x_1297 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1295.xy, x_1295.z);
        u_xlat82 = x_1297;
        let x_1299 : f32 = u_xlat19.y;
        let x_1300 : f32 = u_xlat82;
        let x_1302 : f32 = u_xlat80;
        u_xlat80 = ((x_1299 * x_1300) + x_1302);
        let x_1305 : vec4<f32> = u_xlat15;
        let x_1306 : vec2<f32> = vec2<f32>(x_1305.x, x_1305.y);
        let x_1308 : f32 = u_xlat6.z;
        txVec19 = vec3<f32>(x_1306.x, x_1306.y, x_1308);
        let x_1315 : vec3<f32> = txVec19;
        let x_1317 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1315.xy, x_1315.z);
        u_xlat82 = x_1317;
        let x_1319 : f32 = u_xlat19.z;
        let x_1320 : f32 = u_xlat82;
        let x_1322 : f32 = u_xlat80;
        u_xlat80 = ((x_1319 * x_1320) + x_1322);
        let x_1325 : vec4<f32> = u_xlat16;
        let x_1326 : vec2<f32> = vec2<f32>(x_1325.z, x_1325.w);
        let x_1328 : f32 = u_xlat6.z;
        txVec20 = vec3<f32>(x_1326.x, x_1326.y, x_1328);
        let x_1335 : vec3<f32> = txVec20;
        let x_1337 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1335.xy, x_1335.z);
        u_xlat82 = x_1337;
        let x_1339 : f32 = u_xlat19.w;
        let x_1340 : f32 = u_xlat82;
        let x_1342 : f32 = u_xlat80;
        u_xlat80 = ((x_1339 * x_1340) + x_1342);
        let x_1345 : vec4<f32> = u_xlat17;
        let x_1346 : vec2<f32> = vec2<f32>(x_1345.x, x_1345.y);
        let x_1348 : f32 = u_xlat6.z;
        txVec21 = vec3<f32>(x_1346.x, x_1346.y, x_1348);
        let x_1355 : vec3<f32> = txVec21;
        let x_1357 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1355.xy, x_1355.z);
        u_xlat82 = x_1357;
        let x_1359 : f32 = u_xlat20.x;
        let x_1360 : f32 = u_xlat82;
        let x_1362 : f32 = u_xlat80;
        u_xlat80 = ((x_1359 * x_1360) + x_1362);
        let x_1365 : vec4<f32> = u_xlat17;
        let x_1366 : vec2<f32> = vec2<f32>(x_1365.z, x_1365.w);
        let x_1368 : f32 = u_xlat6.z;
        txVec22 = vec3<f32>(x_1366.x, x_1366.y, x_1368);
        let x_1375 : vec3<f32> = txVec22;
        let x_1377 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1375.xy, x_1375.z);
        u_xlat82 = x_1377;
        let x_1379 : f32 = u_xlat20.y;
        let x_1380 : f32 = u_xlat82;
        let x_1382 : f32 = u_xlat80;
        u_xlat80 = ((x_1379 * x_1380) + x_1382);
        let x_1385 : vec2<f32> = u_xlat35;
        let x_1387 : f32 = u_xlat6.z;
        txVec23 = vec3<f32>(x_1385.x, x_1385.y, x_1387);
        let x_1394 : vec3<f32> = txVec23;
        let x_1396 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1394.xy, x_1394.z);
        u_xlat82 = x_1396;
        let x_1398 : f32 = u_xlat20.z;
        let x_1399 : f32 = u_xlat82;
        let x_1401 : f32 = u_xlat80;
        u_xlat80 = ((x_1398 * x_1399) + x_1401);
        let x_1404 : vec2<f32> = u_xlat67;
        let x_1406 : f32 = u_xlat6.z;
        txVec24 = vec3<f32>(x_1404.x, x_1404.y, x_1406);
        let x_1413 : vec3<f32> = txVec24;
        let x_1415 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1413.xy, x_1413.z);
        u_xlat82 = x_1415;
        let x_1417 : f32 = u_xlat20.w;
        let x_1418 : f32 = u_xlat82;
        let x_1420 : f32 = u_xlat80;
        u_xlat80 = ((x_1417 * x_1418) + x_1420);
        let x_1423 : vec4<f32> = u_xlat12;
        let x_1424 : vec2<f32> = vec2<f32>(x_1423.x, x_1423.y);
        let x_1426 : f32 = u_xlat6.z;
        txVec25 = vec3<f32>(x_1424.x, x_1424.y, x_1426);
        let x_1433 : vec3<f32> = txVec25;
        let x_1435 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1433.xy, x_1433.z);
        u_xlat82 = x_1435;
        let x_1437 : f32 = u_xlat8.x;
        let x_1438 : f32 = u_xlat82;
        let x_1440 : f32 = u_xlat80;
        u_xlat80 = ((x_1437 * x_1438) + x_1440);
        let x_1443 : vec4<f32> = u_xlat12;
        let x_1444 : vec2<f32> = vec2<f32>(x_1443.z, x_1443.w);
        let x_1446 : f32 = u_xlat6.z;
        txVec26 = vec3<f32>(x_1444.x, x_1444.y, x_1446);
        let x_1453 : vec3<f32> = txVec26;
        let x_1455 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1453.xy, x_1453.z);
        u_xlat82 = x_1455;
        let x_1457 : f32 = u_xlat8.y;
        let x_1458 : f32 = u_xlat82;
        let x_1460 : f32 = u_xlat80;
        u_xlat80 = ((x_1457 * x_1458) + x_1460);
        let x_1463 : vec2<f32> = u_xlat62;
        let x_1465 : f32 = u_xlat6.z;
        txVec27 = vec3<f32>(x_1463.x, x_1463.y, x_1465);
        let x_1472 : vec3<f32> = txVec27;
        let x_1474 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1472.xy, x_1472.z);
        u_xlat82 = x_1474;
        let x_1476 : f32 = u_xlat8.z;
        let x_1477 : f32 = u_xlat82;
        let x_1479 : f32 = u_xlat80;
        u_xlat80 = ((x_1476 * x_1477) + x_1479);
        let x_1482 : vec4<f32> = u_xlat7;
        let x_1483 : vec2<f32> = vec2<f32>(x_1482.x, x_1482.y);
        let x_1485 : f32 = u_xlat6.z;
        txVec28 = vec3<f32>(x_1483.x, x_1483.y, x_1485);
        let x_1492 : vec3<f32> = txVec28;
        let x_1494 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1492.xy, x_1492.z);
        u_xlat82 = x_1494;
        let x_1496 : f32 = u_xlat8.w;
        let x_1497 : f32 = u_xlat82;
        let x_1499 : f32 = u_xlat80;
        u_xlat79 = ((x_1496 * x_1497) + x_1499);
      }
    }
  } else {
    let x_1503 : vec4<f32> = u_xlat6;
    let x_1504 : vec2<f32> = vec2<f32>(x_1503.x, x_1503.y);
    let x_1506 : f32 = u_xlat6.z;
    txVec29 = vec3<f32>(x_1504.x, x_1504.y, x_1506);
    let x_1513 : vec3<f32> = txVec29;
    let x_1515 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1513.xy, x_1513.z);
    u_xlat79 = x_1515;
  }
  let x_1517 : f32 = x_265.x_MainLightShadowParams.x;
  u_xlat80 = (-(x_1517) + 1.0f);
  let x_1520 : f32 = u_xlat79;
  let x_1522 : f32 = x_265.x_MainLightShadowParams.x;
  let x_1524 : f32 = u_xlat80;
  u_xlat79 = ((x_1520 * x_1522) + x_1524);
  let x_1528 : f32 = u_xlat6.z;
  u_xlatb82 = (0.0f >= x_1528);
  let x_1532 : f32 = u_xlat6.z;
  u_xlatb6 = (x_1532 >= 1.0f);
  let x_1534 : bool = u_xlatb82;
  let x_1535 : bool = u_xlatb6;
  u_xlatb82 = (x_1534 | x_1535);
  let x_1537 : bool = u_xlatb82;
  let x_1538 : f32 = u_xlat79;
  u_xlat79 = select(x_1538, 1.0f, x_1537);
  let x_1540 : vec3<f32> = u_xlat0;
  let x_1542 : vec4<f32> = x_75.x_MainLightPosition;
  u_xlat0.x = dot(x_1540, -(vec3<f32>(x_1542.x, x_1542.y, x_1542.z)));
  let x_1548 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1548, 0.0f, 1.0f);
  let x_1551 : f32 = u_xlat79;
  let x_1554 : vec4<f32> = x_75.x_MainLightColor;
  let x_1556 : vec3<f32> = (vec3<f32>(x_1551, x_1551, x_1551) * vec3<f32>(x_1554.x, x_1554.y, x_1554.z));
  let x_1557 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1556.x, x_1556.y, x_1556.z, x_1557.w);
  let x_1559 : vec3<f32> = u_xlat0;
  let x_1561 : vec4<f32> = u_xlat6;
  u_xlat0 = (vec3<f32>(x_1559.x, x_1559.x, x_1559.x) * vec3<f32>(x_1561.x, x_1561.y, x_1561.z));
  let x_1564 : vec3<f32> = u_xlat0;
  let x_1565 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_1564 * vec3<f32>(x_1565.x, x_1565.y, x_1565.z));
  let x_1569 : f32 = x_148.unity_LODFade.x;
  u_xlatb79 = (x_1569 < 0.0f);
  let x_1572 : f32 = x_148.unity_LODFade.x;
  u_xlat3.x = (x_1572 + 1.0f);
  let x_1575 : bool = u_xlatb79;
  if (x_1575) {
    let x_1580 : f32 = u_xlat3.x;
    x_1576 = x_1580;
  } else {
    let x_1583 : f32 = x_148.unity_LODFade.x;
    x_1576 = x_1583;
  }
  let x_1584 : f32 = x_1576;
  u_xlat79 = x_1584;
  let x_1586 : f32 = u_xlat79;
  u_xlatb3 = (0.5f >= x_1586);
  let x_1588 : vec3<f32> = u_xlat1;
  let x_1591 : vec4<f32> = x_75.x_ScreenParams;
  u_xlat1 = (abs(x_1588) * vec3<f32>(x_1591.x, x_1591.y, x_1591.x));
  let x_1597 : vec3<f32> = u_xlat1;
  u_xlatu1 = vec3<u32>(x_1597);
  let x_1602 : u32 = u_xlatu1.z;
  u_xlatu53 = (x_1602 * 1025u);
  let x_1606 : u32 = u_xlatu53;
  u_xlatu29 = (x_1606 >> 6u);
  let x_1611 : u32 = u_xlatu53;
  let x_1612 : u32 = u_xlatu29;
  u_xlati53 = bitcast<i32>((x_1611 ^ x_1612));
  let x_1615 : i32 = u_xlati53;
  u_xlatu53 = (bitcast<u32>(x_1615) * 9u);
  let x_1619 : u32 = u_xlatu53;
  u_xlatu29 = (x_1619 >> 11u);
  let x_1622 : u32 = u_xlatu53;
  let x_1623 : u32 = u_xlatu29;
  u_xlati53 = bitcast<i32>((x_1622 ^ x_1623));
  let x_1626 : i32 = u_xlati53;
  u_xlati53 = (x_1626 * 32769i);
  let x_1630 : i32 = u_xlati53;
  let x_1633 : u32 = u_xlatu1.y;
  u_xlati27 = bitcast<i32>((bitcast<u32>(x_1630) ^ x_1633));
  let x_1637 : i32 = u_xlati27;
  u_xlatu27 = (bitcast<u32>(x_1637) * 1025u);
  let x_1640 : u32 = u_xlatu27;
  u_xlatu53 = (x_1640 >> 6u);
  let x_1642 : u32 = u_xlatu53;
  let x_1643 : u32 = u_xlatu27;
  u_xlati27 = bitcast<i32>((x_1642 ^ x_1643));
  let x_1646 : i32 = u_xlati27;
  u_xlatu27 = (bitcast<u32>(x_1646) * 9u);
  let x_1649 : u32 = u_xlatu27;
  u_xlatu53 = (x_1649 >> 11u);
  let x_1651 : u32 = u_xlatu53;
  let x_1652 : u32 = u_xlatu27;
  u_xlati27 = bitcast<i32>((x_1651 ^ x_1652));
  let x_1655 : i32 = u_xlati27;
  u_xlati27 = (x_1655 * 32769i);
  let x_1658 : i32 = u_xlati27;
  let x_1661 : u32 = u_xlatu1.x;
  u_xlati1 = bitcast<i32>((bitcast<u32>(x_1658) ^ x_1661));
  let x_1664 : i32 = u_xlati1;
  u_xlatu1.x = (bitcast<u32>(x_1664) * 1025u);
  let x_1669 : u32 = u_xlatu1.x;
  u_xlatu27 = (x_1669 >> 6u);
  let x_1671 : u32 = u_xlatu27;
  let x_1673 : u32 = u_xlatu1.x;
  u_xlati1 = bitcast<i32>((x_1671 ^ x_1673));
  let x_1676 : i32 = u_xlati1;
  u_xlatu1.x = (bitcast<u32>(x_1676) * 9u);
  let x_1681 : u32 = u_xlatu1.x;
  u_xlatu27 = (x_1681 >> 11u);
  let x_1683 : u32 = u_xlatu27;
  let x_1685 : u32 = u_xlatu1.x;
  u_xlati1 = bitcast<i32>((x_1683 ^ x_1685));
  let x_1688 : i32 = u_xlati1;
  u_xlati1 = (x_1688 * 32769i);
  param = 1065353216i;
  let x_1694 : i32 = u_xlati1;
  param_1 = x_1694;
  param_2 = 0i;
  param_3 = 23i;
  let x_1697 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlat1.x = bitcast<f32>(x_1697);
  let x_1701 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1701 + -1.0f);
  let x_1706 : f32 = u_xlat1.x;
  u_xlat27 = (-(x_1706) + 1.0f);
  let x_1709 : bool = u_xlatb3;
  if (x_1709) {
    let x_1714 : f32 = u_xlat1.x;
    x_1710 = x_1714;
  } else {
    let x_1716 : f32 = u_xlat27;
    x_1710 = x_1716;
  }
  let x_1717 : f32 = x_1710;
  u_xlat1.x = x_1717;
  let x_1719 : f32 = u_xlat79;
  let x_1722 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1719 * 2.0f) + -(x_1722));
  let x_1727 : f32 = u_xlat1.x;
  let x_1729 : f32 = u_xlat3.w;
  u_xlat27 = (x_1727 * x_1729);
  let x_1734 : f32 = u_xlat27;
  u_xlatb53.x = (x_1734 >= 0.40000000596046447754f);
  let x_1740 : bool = u_xlatb53.x;
  let x_1741 : f32 = u_xlat27;
  u_xlat53.x = select(0.0f, x_1741, x_1740);
  let x_1745 : f32 = u_xlat3.w;
  let x_1747 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1745 * x_1747) + -0.40000000596046447754f);
  let x_1752 : f32 = u_xlat27;
  u_xlat79 = dpdxCoarse(x_1752);
  let x_1754 : f32 = u_xlat27;
  u_xlat27 = dpdyCoarse(x_1754);
  let x_1756 : f32 = u_xlat27;
  let x_1758 : f32 = u_xlat79;
  u_xlat27 = (abs(x_1756) + abs(x_1758));
  let x_1761 : f32 = u_xlat27;
  u_xlat27 = max(x_1761, 0.00009999999747378752f);
  let x_1765 : f32 = u_xlat1.x;
  let x_1766 : f32 = u_xlat27;
  u_xlat1.x = (x_1765 / x_1766);
  let x_1770 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1770 + 0.5f);
  let x_1774 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1774, 0.0f, 1.0f);
  let x_1779 : f32 = x_75.x_AlphaToMaskAvailable;
  u_xlatb27 = !((x_1779 == 0.0f));
  let x_1781 : bool = u_xlatb27;
  if (x_1781) {
    let x_1786 : f32 = u_xlat1.x;
    x_1782 = x_1786;
  } else {
    let x_1789 : f32 = u_xlat53.x;
    x_1782 = x_1789;
  }
  let x_1790 : f32 = x_1782;
  u_xlat1.x = x_1790;
  let x_1793 : f32 = u_xlat1.x;
  u_xlat53.x = (x_1793 + -0.00009999999747378752f);
  let x_1798 : f32 = u_xlat53.x;
  u_xlatb53.x = (x_1798 < 0.0f);
  let x_1802 : bool = u_xlatb53.x;
  if (((select(0i, 1i, x_1802) * -1i) != 0i)) {
    discard;
  }
  let x_1812 : f32 = vs_INTERP4.w;
  u_xlatb53.x = (0.0f < x_1812);
  let x_1816 : f32 = x_148.unity_WorldTransformParams.w;
  u_xlatb53.y = (x_1816 >= 0.0f);
  let x_1820 : bool = u_xlatb53.x;
  u_xlat53.x = select(-1.0f, 1.0f, x_1820);
  let x_1824 : bool = u_xlatb53.y;
  u_xlat53.y = select(-1.0f, 1.0f, x_1824);
  let x_1828 : f32 = u_xlat53.y;
  let x_1830 : f32 = u_xlat53.x;
  u_xlat53.x = (x_1828 * x_1830);
  let x_1833 : vec4<f32> = vs_INTERP4;
  let x_1835 : vec3<f32> = vs_INTERP9;
  let x_1837 : vec3<f32> = (vec3<f32>(x_1833.y, x_1833.z, x_1833.x) * vec3<f32>(x_1835.z, x_1835.x, x_1835.y));
  let x_1838 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1837.x, x_1837.y, x_1837.z, x_1838.w);
  let x_1840 : vec3<f32> = vs_INTERP9;
  let x_1842 : vec4<f32> = vs_INTERP4;
  let x_1845 : vec4<f32> = u_xlat3;
  let x_1848 : vec3<f32> = ((vec3<f32>(x_1840.y, x_1840.z, x_1840.x) * vec3<f32>(x_1842.z, x_1842.x, x_1842.y)) + -(vec3<f32>(x_1845.x, x_1845.y, x_1845.z)));
  let x_1849 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1848.x, x_1848.y, x_1848.z, x_1849.w);
  let x_1851 : vec2<f32> = u_xlat53;
  let x_1853 : vec4<f32> = u_xlat3;
  let x_1855 : vec3<f32> = (vec3<f32>(x_1851.x, x_1851.x, x_1851.x) * vec3<f32>(x_1853.x, x_1853.y, x_1853.z));
  let x_1856 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1855.x, x_1855.y, x_1855.z, x_1856.w);
  let x_1858 : vec4<f32> = u_xlat3;
  let x_1860 : vec3<f32> = u_xlat31;
  let x_1862 : vec3<f32> = (vec3<f32>(x_1858.x, x_1858.y, x_1858.z) * vec3<f32>(x_1860.y, x_1860.y, x_1860.y));
  let x_1863 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1862.x, x_1862.y, x_1862.z, x_1863.w);
  let x_1865 : vec3<f32> = u_xlat31;
  let x_1867 : vec4<f32> = vs_INTERP4;
  let x_1870 : vec4<f32> = u_xlat3;
  let x_1872 : vec3<f32> = ((vec3<f32>(x_1865.x, x_1865.x, x_1865.x) * vec3<f32>(x_1867.x, x_1867.y, x_1867.z)) + vec3<f32>(x_1870.x, x_1870.y, x_1870.z));
  let x_1873 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1872.x, x_1872.y, x_1872.z, x_1873.w);
  let x_1875 : vec3<f32> = u_xlat31;
  let x_1877 : vec3<f32> = vs_INTERP9;
  let x_1879 : vec4<f32> = u_xlat3;
  let x_1881 : vec3<f32> = ((vec3<f32>(x_1875.z, x_1875.z, x_1875.z) * x_1877) + vec3<f32>(x_1879.x, x_1879.y, x_1879.z));
  let x_1882 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1881.x, x_1881.y, x_1881.z, x_1882.w);
  let x_1884 : vec4<f32> = u_xlat3;
  let x_1886 : vec4<f32> = u_xlat3;
  u_xlat53.x = dot(vec3<f32>(x_1884.x, x_1884.y, x_1884.z), vec3<f32>(x_1886.x, x_1886.y, x_1886.z));
  let x_1891 : f32 = u_xlat53.x;
  u_xlat53.x = inverseSqrt(x_1891);
  let x_1894 : vec2<f32> = u_xlat53;
  let x_1896 : vec4<f32> = u_xlat3;
  let x_1898 : vec3<f32> = (vec3<f32>(x_1894.x, x_1894.x, x_1894.x) * vec3<f32>(x_1896.x, x_1896.y, x_1896.z));
  let x_1899 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1898.x, x_1898.y, x_1898.z, x_1899.w);
  let x_1908 : vec2<f32> = vs_INTERP0;
  let x_1910 : f32 = x_75.x_GlobalMipBias.x;
  let x_1911 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_1908, x_1910);
  u_xlat6 = x_1911;
  let x_1916 : vec2<f32> = vs_INTERP0;
  let x_1918 : f32 = x_75.x_GlobalMipBias.x;
  let x_1919 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_1916, x_1918);
  u_xlat31 = vec3<f32>(x_1919.x, x_1919.y, x_1919.z);
  let x_1921 : vec4<f32> = u_xlat6;
  let x_1924 : vec3<f32> = (vec3<f32>(x_1921.x, x_1921.y, x_1921.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_1925 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1924.x, x_1924.y, x_1924.z, x_1925.w);
  let x_1927 : vec4<f32> = u_xlat3;
  let x_1929 : vec4<f32> = u_xlat6;
  u_xlat53.x = dot(vec3<f32>(x_1927.x, x_1927.y, x_1927.z), vec3<f32>(x_1929.x, x_1929.y, x_1929.z));
  let x_1934 : f32 = u_xlat53.x;
  u_xlat53.x = (x_1934 + 0.5f);
  let x_1937 : vec2<f32> = u_xlat53;
  let x_1939 : vec3<f32> = u_xlat31;
  u_xlat31 = (vec3<f32>(x_1937.x, x_1937.x, x_1937.x) * x_1939);
  let x_1942 : f32 = u_xlat6.w;
  u_xlat53.x = max(x_1942, 0.00009999999747378752f);
  let x_1945 : vec3<f32> = u_xlat31;
  let x_1946 : vec2<f32> = u_xlat53;
  u_xlat31 = (x_1945 / vec3<f32>(x_1946.x, x_1946.x, x_1946.x));
  let x_1950 : f32 = u_xlat5.x;
  u_xlat5.x = x_1950;
  let x_1953 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_1953, 0.0f, 1.0f);
  let x_1957 : f32 = u_xlat1.x;
  u_xlat1.x = x_1957;
  let x_1960 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1960, 0.0f, 1.0f);
  let x_1963 : vec3<f32> = u_xlat4;
  u_xlat4 = (x_1963 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_1968 : f32 = u_xlat5.x;
  u_xlat53.x = (-(x_1968) + 1.0f);
  let x_1973 : f32 = u_xlat53.x;
  let x_1975 : f32 = u_xlat53.x;
  u_xlat79 = (x_1973 * x_1975);
  let x_1977 : f32 = u_xlat79;
  u_xlat79 = max(x_1977, 0.0078125f);
  let x_1981 : f32 = u_xlat79;
  let x_1982 : f32 = u_xlat79;
  u_xlat81 = (x_1981 * x_1982);
  let x_1985 : f32 = u_xlat5.x;
  u_xlat82 = (x_1985 + 0.04000002145767211914f);
  let x_1988 : f32 = u_xlat82;
  u_xlat82 = min(x_1988, 1.0f);
  let x_1990 : f32 = u_xlat79;
  u_xlat5.x = ((x_1990 * 4.0f) + 2.0f);
  let x_1996 : f32 = vs_INTERP6.w;
  u_xlat6.x = min(x_1996, 1.0f);
  let x_1999 : bool = u_xlatb78;
  if (x_1999) {
    let x_2003 : f32 = x_265.x_MainLightShadowParams.y;
    u_xlatb78 = (x_2003 == 1.0f);
    let x_2005 : bool = u_xlatb78;
    if (x_2005) {
      let x_2009 : vec4<f32> = vs_INTERP3;
      let x_2012 : vec4<f32> = x_265.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_2009.x, x_2009.y, x_2009.x, x_2009.y) + x_2012);
      let x_2015 : vec4<f32> = u_xlat7;
      let x_2016 : vec2<f32> = vec2<f32>(x_2015.x, x_2015.y);
      let x_2018 : f32 = vs_INTERP3.z;
      txVec30 = vec3<f32>(x_2016.x, x_2016.y, x_2018);
      let x_2025 : vec3<f32> = txVec30;
      let x_2027 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2025.xy, x_2025.z);
      u_xlat8.x = x_2027;
      let x_2030 : vec4<f32> = u_xlat7;
      let x_2031 : vec2<f32> = vec2<f32>(x_2030.z, x_2030.w);
      let x_2033 : f32 = vs_INTERP3.z;
      txVec31 = vec3<f32>(x_2031.x, x_2031.y, x_2033);
      let x_2040 : vec3<f32> = txVec31;
      let x_2042 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2040.xy, x_2040.z);
      u_xlat8.y = x_2042;
      let x_2044 : vec4<f32> = vs_INTERP3;
      let x_2047 : vec4<f32> = x_265.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_2044.x, x_2044.y, x_2044.x, x_2044.y) + x_2047);
      let x_2050 : vec4<f32> = u_xlat7;
      let x_2051 : vec2<f32> = vec2<f32>(x_2050.x, x_2050.y);
      let x_2053 : f32 = vs_INTERP3.z;
      txVec32 = vec3<f32>(x_2051.x, x_2051.y, x_2053);
      let x_2060 : vec3<f32> = txVec32;
      let x_2062 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2060.xy, x_2060.z);
      u_xlat8.z = x_2062;
      let x_2065 : vec4<f32> = u_xlat7;
      let x_2066 : vec2<f32> = vec2<f32>(x_2065.z, x_2065.w);
      let x_2068 : f32 = vs_INTERP3.z;
      txVec33 = vec3<f32>(x_2066.x, x_2066.y, x_2068);
      let x_2075 : vec3<f32> = txVec33;
      let x_2077 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2075.xy, x_2075.z);
      u_xlat8.w = x_2077;
      let x_2079 : vec4<f32> = u_xlat8;
      u_xlat78 = dot(x_2079, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_2084 : f32 = x_265.x_MainLightShadowParams.y;
      u_xlatb32.x = (x_2084 == 2.0f);
      let x_2088 : bool = u_xlatb32.x;
      if (x_2088) {
        let x_2092 : vec4<f32> = vs_INTERP3;
        let x_2095 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2098 : vec2<f32> = ((vec2<f32>(x_2092.x, x_2092.y) * vec2<f32>(x_2095.z, x_2095.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2099 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_2098.x, x_2098.y, x_2099.z);
        let x_2101 : vec3<f32> = u_xlat32;
        let x_2103 : vec2<f32> = floor(vec2<f32>(x_2101.x, x_2101.y));
        let x_2104 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_2103.x, x_2103.y, x_2104.z);
        let x_2106 : vec4<f32> = vs_INTERP3;
        let x_2109 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2112 : vec3<f32> = u_xlat32;
        let x_2115 : vec2<f32> = ((vec2<f32>(x_2106.x, x_2106.y) * vec2<f32>(x_2109.z, x_2109.w)) + -(vec2<f32>(x_2112.x, x_2112.y)));
        let x_2116 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2115.x, x_2115.y, x_2116.z, x_2116.w);
        let x_2118 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_2118.x, x_2118.x, x_2118.y, x_2118.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2121 : vec4<f32> = u_xlat8;
        let x_2123 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_2121.x, x_2121.x, x_2121.z, x_2121.z) * vec4<f32>(x_2123.x, x_2123.x, x_2123.z, x_2123.z));
        let x_2126 : vec4<f32> = u_xlat9;
        u_xlat59 = (vec2<f32>(x_2126.y, x_2126.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_2129 : vec4<f32> = u_xlat9;
        let x_2132 : vec4<f32> = u_xlat7;
        let x_2135 : vec2<f32> = ((vec2<f32>(x_2129.x, x_2129.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2132.x, x_2132.y)));
        let x_2136 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2135.x, x_2136.y, x_2135.y, x_2136.w);
        let x_2138 : vec4<f32> = u_xlat7;
        let x_2141 : vec2<f32> = (-(vec2<f32>(x_2138.x, x_2138.y)) + vec2<f32>(1.0f, 1.0f));
        let x_2142 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2141.x, x_2141.y, x_2142.z, x_2142.w);
        let x_2144 : vec4<f32> = u_xlat7;
        u_xlat61 = min(vec2<f32>(x_2144.x, x_2144.y), vec2<f32>(0.0f, 0.0f));
        let x_2147 : vec2<f32> = u_xlat61;
        let x_2149 : vec2<f32> = u_xlat61;
        let x_2151 : vec4<f32> = u_xlat9;
        u_xlat61 = ((-(x_2147) * x_2149) + vec2<f32>(x_2151.x, x_2151.y));
        let x_2154 : vec4<f32> = u_xlat7;
        let x_2156 : vec2<f32> = max(vec2<f32>(x_2154.x, x_2154.y), vec2<f32>(0.0f, 0.0f));
        let x_2157 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2156.x, x_2156.y, x_2157.z, x_2157.w);
        let x_2159 : vec4<f32> = u_xlat7;
        let x_2162 : vec4<f32> = u_xlat7;
        let x_2165 : vec4<f32> = u_xlat8;
        let x_2167 : vec2<f32> = ((-(vec2<f32>(x_2159.x, x_2159.y)) * vec2<f32>(x_2162.x, x_2162.y)) + vec2<f32>(x_2165.y, x_2165.w));
        let x_2168 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2167.x, x_2167.y, x_2168.z, x_2168.w);
        let x_2170 : vec2<f32> = u_xlat61;
        u_xlat61 = (x_2170 + vec2<f32>(1.0f, 1.0f));
        let x_2172 : vec4<f32> = u_xlat7;
        let x_2174 : vec2<f32> = (vec2<f32>(x_2172.x, x_2172.y) + vec2<f32>(1.0f, 1.0f));
        let x_2175 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2174.x, x_2174.y, x_2175.z, x_2175.w);
        let x_2177 : vec4<f32> = u_xlat8;
        let x_2179 : vec2<f32> = (vec2<f32>(x_2177.x, x_2177.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2180 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2179.x, x_2179.y, x_2180.z, x_2180.w);
        let x_2182 : vec4<f32> = u_xlat9;
        let x_2184 : vec2<f32> = (vec2<f32>(x_2182.x, x_2182.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2185 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2184.x, x_2184.y, x_2185.z, x_2185.w);
        let x_2187 : vec2<f32> = u_xlat61;
        let x_2188 : vec2<f32> = (x_2187 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2189 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2188.x, x_2188.y, x_2189.z, x_2189.w);
        let x_2191 : vec4<f32> = u_xlat7;
        let x_2193 : vec2<f32> = (vec2<f32>(x_2191.x, x_2191.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2194 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2193.x, x_2193.y, x_2194.z, x_2194.w);
        let x_2196 : vec4<f32> = u_xlat8;
        let x_2198 : vec2<f32> = (vec2<f32>(x_2196.y, x_2196.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2199 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2198.x, x_2198.y, x_2199.z, x_2199.w);
        let x_2202 : f32 = u_xlat9.x;
        u_xlat10.z = x_2202;
        let x_2205 : f32 = u_xlat7.x;
        u_xlat10.w = x_2205;
        let x_2208 : f32 = u_xlat12.x;
        u_xlat11.z = x_2208;
        let x_2211 : f32 = u_xlat59.x;
        u_xlat11.w = x_2211;
        let x_2213 : vec4<f32> = u_xlat10;
        let x_2215 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_2213.z, x_2213.w, x_2213.x, x_2213.z) + vec4<f32>(x_2215.z, x_2215.w, x_2215.x, x_2215.z));
        let x_2219 : f32 = u_xlat10.y;
        u_xlat9.z = x_2219;
        let x_2222 : f32 = u_xlat7.y;
        u_xlat9.w = x_2222;
        let x_2225 : f32 = u_xlat11.y;
        u_xlat12.z = x_2225;
        let x_2228 : f32 = u_xlat59.y;
        u_xlat12.w = x_2228;
        let x_2230 : vec4<f32> = u_xlat9;
        let x_2232 : vec4<f32> = u_xlat12;
        let x_2234 : vec3<f32> = (vec3<f32>(x_2230.z, x_2230.y, x_2230.w) + vec3<f32>(x_2232.z, x_2232.y, x_2232.w));
        let x_2235 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2234.x, x_2234.y, x_2234.z, x_2235.w);
        let x_2237 : vec4<f32> = u_xlat11;
        let x_2239 : vec4<f32> = u_xlat8;
        let x_2241 : vec3<f32> = (vec3<f32>(x_2237.x, x_2237.z, x_2237.w) / vec3<f32>(x_2239.z, x_2239.w, x_2239.y));
        let x_2242 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2241.x, x_2241.y, x_2241.z, x_2242.w);
        let x_2244 : vec4<f32> = u_xlat9;
        let x_2246 : vec3<f32> = (vec3<f32>(x_2244.x, x_2244.y, x_2244.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2247 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2246.x, x_2246.y, x_2246.z, x_2247.w);
        let x_2249 : vec4<f32> = u_xlat12;
        let x_2251 : vec4<f32> = u_xlat7;
        let x_2253 : vec3<f32> = (vec3<f32>(x_2249.z, x_2249.y, x_2249.w) / vec3<f32>(x_2251.x, x_2251.y, x_2251.z));
        let x_2254 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2253.x, x_2253.y, x_2253.z, x_2254.w);
        let x_2256 : vec4<f32> = u_xlat10;
        let x_2258 : vec3<f32> = (vec3<f32>(x_2256.x, x_2256.y, x_2256.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2259 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2258.x, x_2258.y, x_2258.z, x_2259.w);
        let x_2261 : vec4<f32> = u_xlat9;
        let x_2264 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2266 : vec3<f32> = (vec3<f32>(x_2261.y, x_2261.x, x_2261.z) * vec3<f32>(x_2264.x, x_2264.x, x_2264.x));
        let x_2267 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2266.x, x_2266.y, x_2266.z, x_2267.w);
        let x_2269 : vec4<f32> = u_xlat10;
        let x_2272 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2274 : vec3<f32> = (vec3<f32>(x_2269.x, x_2269.y, x_2269.z) * vec3<f32>(x_2272.y, x_2272.y, x_2272.y));
        let x_2275 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2274.x, x_2274.y, x_2274.z, x_2275.w);
        let x_2278 : f32 = u_xlat10.x;
        u_xlat9.w = x_2278;
        let x_2280 : vec3<f32> = u_xlat32;
        let x_2283 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2286 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_2280.x, x_2280.y, x_2280.x, x_2280.y) * vec4<f32>(x_2283.x, x_2283.y, x_2283.x, x_2283.y)) + vec4<f32>(x_2286.y, x_2286.w, x_2286.x, x_2286.w));
        let x_2289 : vec3<f32> = u_xlat32;
        let x_2292 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2295 : vec4<f32> = u_xlat9;
        let x_2297 : vec2<f32> = ((vec2<f32>(x_2289.x, x_2289.y) * vec2<f32>(x_2292.x, x_2292.y)) + vec2<f32>(x_2295.z, x_2295.w));
        let x_2298 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2297.x, x_2297.y, x_2298.z, x_2298.w);
        let x_2301 : f32 = u_xlat9.y;
        u_xlat10.w = x_2301;
        let x_2303 : vec4<f32> = u_xlat10;
        let x_2304 : vec2<f32> = vec2<f32>(x_2303.y, x_2303.z);
        let x_2305 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2305.x, x_2304.x, x_2305.z, x_2304.y);
        let x_2307 : vec3<f32> = u_xlat32;
        let x_2310 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2313 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_2307.x, x_2307.y, x_2307.x, x_2307.y) * vec4<f32>(x_2310.x, x_2310.y, x_2310.x, x_2310.y)) + vec4<f32>(x_2313.x, x_2313.y, x_2313.z, x_2313.y));
        let x_2316 : vec3<f32> = u_xlat32;
        let x_2319 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2322 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_2316.x, x_2316.y, x_2316.x, x_2316.y) * vec4<f32>(x_2319.x, x_2319.y, x_2319.x, x_2319.y)) + vec4<f32>(x_2322.w, x_2322.y, x_2322.w, x_2322.z));
        let x_2325 : vec3<f32> = u_xlat32;
        let x_2328 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2331 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_2325.x, x_2325.y, x_2325.x, x_2325.y) * vec4<f32>(x_2328.x, x_2328.y, x_2328.x, x_2328.y)) + vec4<f32>(x_2331.x, x_2331.w, x_2331.z, x_2331.w));
        let x_2334 : vec4<f32> = u_xlat7;
        let x_2336 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_2334.x, x_2334.x, x_2334.x, x_2334.y) * vec4<f32>(x_2336.z, x_2336.w, x_2336.y, x_2336.z));
        let x_2339 : vec4<f32> = u_xlat7;
        let x_2341 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_2339.y, x_2339.y, x_2339.z, x_2339.z) * x_2341);
        let x_2344 : f32 = u_xlat7.z;
        let x_2346 : f32 = u_xlat8.y;
        u_xlat32.x = (x_2344 * x_2346);
        let x_2350 : vec4<f32> = u_xlat11;
        let x_2351 : vec2<f32> = vec2<f32>(x_2350.x, x_2350.y);
        let x_2353 : f32 = vs_INTERP3.z;
        txVec34 = vec3<f32>(x_2351.x, x_2351.y, x_2353);
        let x_2361 : vec3<f32> = txVec34;
        let x_2363 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2361.xy, x_2361.z);
        u_xlat58 = x_2363;
        let x_2365 : vec4<f32> = u_xlat11;
        let x_2366 : vec2<f32> = vec2<f32>(x_2365.z, x_2365.w);
        let x_2368 : f32 = vs_INTERP3.z;
        txVec35 = vec3<f32>(x_2366.x, x_2366.y, x_2368);
        let x_2375 : vec3<f32> = txVec35;
        let x_2377 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2375.xy, x_2375.z);
        u_xlat84 = x_2377;
        let x_2378 : f32 = u_xlat84;
        let x_2380 : f32 = u_xlat14.y;
        u_xlat84 = (x_2378 * x_2380);
        let x_2383 : f32 = u_xlat14.x;
        let x_2384 : f32 = u_xlat58;
        let x_2386 : f32 = u_xlat84;
        u_xlat58 = ((x_2383 * x_2384) + x_2386);
        let x_2389 : vec4<f32> = u_xlat12;
        let x_2390 : vec2<f32> = vec2<f32>(x_2389.x, x_2389.y);
        let x_2392 : f32 = vs_INTERP3.z;
        txVec36 = vec3<f32>(x_2390.x, x_2390.y, x_2392);
        let x_2399 : vec3<f32> = txVec36;
        let x_2401 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2399.xy, x_2399.z);
        u_xlat84 = x_2401;
        let x_2403 : f32 = u_xlat14.z;
        let x_2404 : f32 = u_xlat84;
        let x_2406 : f32 = u_xlat58;
        u_xlat58 = ((x_2403 * x_2404) + x_2406);
        let x_2409 : vec4<f32> = u_xlat10;
        let x_2410 : vec2<f32> = vec2<f32>(x_2409.x, x_2409.y);
        let x_2412 : f32 = vs_INTERP3.z;
        txVec37 = vec3<f32>(x_2410.x, x_2410.y, x_2412);
        let x_2419 : vec3<f32> = txVec37;
        let x_2421 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2419.xy, x_2419.z);
        u_xlat84 = x_2421;
        let x_2423 : f32 = u_xlat14.w;
        let x_2424 : f32 = u_xlat84;
        let x_2426 : f32 = u_xlat58;
        u_xlat58 = ((x_2423 * x_2424) + x_2426);
        let x_2429 : vec4<f32> = u_xlat13;
        let x_2430 : vec2<f32> = vec2<f32>(x_2429.x, x_2429.y);
        let x_2432 : f32 = vs_INTERP3.z;
        txVec38 = vec3<f32>(x_2430.x, x_2430.y, x_2432);
        let x_2439 : vec3<f32> = txVec38;
        let x_2441 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2439.xy, x_2439.z);
        u_xlat84 = x_2441;
        let x_2443 : f32 = u_xlat15.x;
        let x_2444 : f32 = u_xlat84;
        let x_2446 : f32 = u_xlat58;
        u_xlat58 = ((x_2443 * x_2444) + x_2446);
        let x_2449 : vec4<f32> = u_xlat13;
        let x_2450 : vec2<f32> = vec2<f32>(x_2449.z, x_2449.w);
        let x_2452 : f32 = vs_INTERP3.z;
        txVec39 = vec3<f32>(x_2450.x, x_2450.y, x_2452);
        let x_2459 : vec3<f32> = txVec39;
        let x_2461 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2459.xy, x_2459.z);
        u_xlat84 = x_2461;
        let x_2463 : f32 = u_xlat15.y;
        let x_2464 : f32 = u_xlat84;
        let x_2466 : f32 = u_xlat58;
        u_xlat58 = ((x_2463 * x_2464) + x_2466);
        let x_2469 : vec4<f32> = u_xlat10;
        let x_2470 : vec2<f32> = vec2<f32>(x_2469.z, x_2469.w);
        let x_2472 : f32 = vs_INTERP3.z;
        txVec40 = vec3<f32>(x_2470.x, x_2470.y, x_2472);
        let x_2479 : vec3<f32> = txVec40;
        let x_2481 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2479.xy, x_2479.z);
        u_xlat84 = x_2481;
        let x_2483 : f32 = u_xlat15.z;
        let x_2484 : f32 = u_xlat84;
        let x_2486 : f32 = u_xlat58;
        u_xlat58 = ((x_2483 * x_2484) + x_2486);
        let x_2489 : vec4<f32> = u_xlat9;
        let x_2490 : vec2<f32> = vec2<f32>(x_2489.x, x_2489.y);
        let x_2492 : f32 = vs_INTERP3.z;
        txVec41 = vec3<f32>(x_2490.x, x_2490.y, x_2492);
        let x_2499 : vec3<f32> = txVec41;
        let x_2501 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2499.xy, x_2499.z);
        u_xlat84 = x_2501;
        let x_2503 : f32 = u_xlat15.w;
        let x_2504 : f32 = u_xlat84;
        let x_2506 : f32 = u_xlat58;
        u_xlat58 = ((x_2503 * x_2504) + x_2506);
        let x_2509 : vec4<f32> = u_xlat9;
        let x_2510 : vec2<f32> = vec2<f32>(x_2509.z, x_2509.w);
        let x_2512 : f32 = vs_INTERP3.z;
        txVec42 = vec3<f32>(x_2510.x, x_2510.y, x_2512);
        let x_2519 : vec3<f32> = txVec42;
        let x_2521 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2519.xy, x_2519.z);
        u_xlat84 = x_2521;
        let x_2523 : f32 = u_xlat32.x;
        let x_2524 : f32 = u_xlat84;
        let x_2526 : f32 = u_xlat58;
        u_xlat78 = ((x_2523 * x_2524) + x_2526);
      } else {
        let x_2529 : vec4<f32> = vs_INTERP3;
        let x_2532 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2535 : vec2<f32> = ((vec2<f32>(x_2529.x, x_2529.y) * vec2<f32>(x_2532.z, x_2532.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2536 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_2535.x, x_2535.y, x_2536.z);
        let x_2538 : vec3<f32> = u_xlat32;
        let x_2540 : vec2<f32> = floor(vec2<f32>(x_2538.x, x_2538.y));
        let x_2541 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_2540.x, x_2540.y, x_2541.z);
        let x_2543 : vec4<f32> = vs_INTERP3;
        let x_2546 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2549 : vec3<f32> = u_xlat32;
        let x_2552 : vec2<f32> = ((vec2<f32>(x_2543.x, x_2543.y) * vec2<f32>(x_2546.z, x_2546.w)) + -(vec2<f32>(x_2549.x, x_2549.y)));
        let x_2553 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2552.x, x_2552.y, x_2553.z, x_2553.w);
        let x_2555 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_2555.x, x_2555.x, x_2555.y, x_2555.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2558 : vec4<f32> = u_xlat8;
        let x_2560 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_2558.x, x_2558.x, x_2558.z, x_2558.z) * vec4<f32>(x_2560.x, x_2560.x, x_2560.z, x_2560.z));
        let x_2563 : vec4<f32> = u_xlat9;
        let x_2565 : vec2<f32> = (vec2<f32>(x_2563.y, x_2563.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_2566 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2566.x, x_2565.x, x_2566.z, x_2565.y);
        let x_2568 : vec4<f32> = u_xlat9;
        let x_2571 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_2568.x, x_2568.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2571.x, x_2571.y)));
        let x_2575 : vec4<f32> = u_xlat7;
        let x_2578 : vec2<f32> = (-(vec2<f32>(x_2575.x, x_2575.y)) + vec2<f32>(1.0f, 1.0f));
        let x_2579 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2578.x, x_2579.y, x_2578.y, x_2579.w);
        let x_2581 : vec4<f32> = u_xlat7;
        let x_2583 : vec2<f32> = min(vec2<f32>(x_2581.x, x_2581.y), vec2<f32>(0.0f, 0.0f));
        let x_2584 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2583.x, x_2583.y, x_2584.z, x_2584.w);
        let x_2586 : vec4<f32> = u_xlat9;
        let x_2589 : vec4<f32> = u_xlat9;
        let x_2592 : vec4<f32> = u_xlat8;
        let x_2594 : vec2<f32> = ((-(vec2<f32>(x_2586.x, x_2586.y)) * vec2<f32>(x_2589.x, x_2589.y)) + vec2<f32>(x_2592.x, x_2592.z));
        let x_2595 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2594.x, x_2595.y, x_2594.y, x_2595.w);
        let x_2597 : vec4<f32> = u_xlat7;
        let x_2599 : vec2<f32> = max(vec2<f32>(x_2597.x, x_2597.y), vec2<f32>(0.0f, 0.0f));
        let x_2600 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2599.x, x_2599.y, x_2600.z, x_2600.w);
        let x_2602 : vec4<f32> = u_xlat9;
        let x_2605 : vec4<f32> = u_xlat9;
        let x_2608 : vec4<f32> = u_xlat8;
        let x_2610 : vec2<f32> = ((-(vec2<f32>(x_2602.x, x_2602.y)) * vec2<f32>(x_2605.x, x_2605.y)) + vec2<f32>(x_2608.y, x_2608.w));
        let x_2611 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2611.x, x_2610.x, x_2611.z, x_2610.y);
        let x_2613 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_2613 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_2616 : f32 = u_xlat8.y;
        u_xlat9.z = (x_2616 * 0.08163200318813323975f);
        let x_2619 : vec2<f32> = u_xlat59;
        let x_2621 : vec2<f32> = (vec2<f32>(x_2619.y, x_2619.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2622 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2621.x, x_2621.y, x_2622.z, x_2622.w);
        let x_2624 : vec4<f32> = u_xlat8;
        u_xlat59 = (vec2<f32>(x_2624.x, x_2624.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2628 : f32 = u_xlat8.w;
        u_xlat11.z = (x_2628 * 0.08163200318813323975f);
        let x_2632 : f32 = u_xlat11.y;
        u_xlat9.x = x_2632;
        let x_2634 : vec4<f32> = u_xlat7;
        let x_2637 : vec2<f32> = ((vec2<f32>(x_2634.x, x_2634.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2638 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2638.x, x_2637.x, x_2638.z, x_2637.y);
        let x_2640 : vec4<f32> = u_xlat7;
        let x_2643 : vec2<f32> = ((vec2<f32>(x_2640.x, x_2640.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2644 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2643.x, x_2644.y, x_2643.y, x_2644.w);
        let x_2647 : f32 = u_xlat59.x;
        u_xlat8.y = x_2647;
        let x_2650 : f32 = u_xlat10.y;
        u_xlat8.w = x_2650;
        let x_2652 : vec4<f32> = u_xlat8;
        let x_2653 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_2652 + x_2653);
        let x_2655 : vec4<f32> = u_xlat7;
        let x_2658 : vec2<f32> = ((vec2<f32>(x_2655.y, x_2655.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2659 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2659.x, x_2658.x, x_2659.z, x_2658.y);
        let x_2661 : vec4<f32> = u_xlat7;
        let x_2664 : vec2<f32> = ((vec2<f32>(x_2661.y, x_2661.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2665 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2664.x, x_2665.y, x_2664.y, x_2665.w);
        let x_2668 : f32 = u_xlat59.y;
        u_xlat10.y = x_2668;
        let x_2670 : vec4<f32> = u_xlat10;
        let x_2671 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_2670 + x_2671);
        let x_2673 : vec4<f32> = u_xlat8;
        let x_2674 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_2673 / x_2674);
        let x_2676 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_2676 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2678 : vec4<f32> = u_xlat10;
        let x_2679 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_2678 / x_2679);
        let x_2681 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_2681 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2683 : vec4<f32> = u_xlat8;
        let x_2686 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_2683.w, x_2683.x, x_2683.y, x_2683.z) * vec4<f32>(x_2686.x, x_2686.x, x_2686.x, x_2686.x));
        let x_2689 : vec4<f32> = u_xlat10;
        let x_2692 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_2689.x, x_2689.w, x_2689.y, x_2689.z) * vec4<f32>(x_2692.y, x_2692.y, x_2692.y, x_2692.y));
        let x_2695 : vec4<f32> = u_xlat8;
        let x_2696 : vec3<f32> = vec3<f32>(x_2695.y, x_2695.z, x_2695.w);
        let x_2697 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2696.x, x_2697.y, x_2696.y, x_2696.z);
        let x_2700 : f32 = u_xlat10.x;
        u_xlat11.y = x_2700;
        let x_2702 : vec3<f32> = u_xlat32;
        let x_2705 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2708 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_2702.x, x_2702.y, x_2702.x, x_2702.y) * vec4<f32>(x_2705.x, x_2705.y, x_2705.x, x_2705.y)) + vec4<f32>(x_2708.x, x_2708.y, x_2708.z, x_2708.y));
        let x_2711 : vec3<f32> = u_xlat32;
        let x_2714 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2717 : vec4<f32> = u_xlat11;
        let x_2719 : vec2<f32> = ((vec2<f32>(x_2711.x, x_2711.y) * vec2<f32>(x_2714.x, x_2714.y)) + vec2<f32>(x_2717.w, x_2717.y));
        let x_2720 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_2719.x, x_2719.y, x_2720.z, x_2720.w);
        let x_2723 : f32 = u_xlat11.y;
        u_xlat8.y = x_2723;
        let x_2726 : f32 = u_xlat10.z;
        u_xlat11.y = x_2726;
        let x_2728 : vec3<f32> = u_xlat32;
        let x_2731 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2734 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_2728.x, x_2728.y, x_2728.x, x_2728.y) * vec4<f32>(x_2731.x, x_2731.y, x_2731.x, x_2731.y)) + vec4<f32>(x_2734.x, x_2734.y, x_2734.z, x_2734.y));
        let x_2738 : vec3<f32> = u_xlat32;
        let x_2741 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2744 : vec4<f32> = u_xlat11;
        u_xlat65 = ((vec2<f32>(x_2738.x, x_2738.y) * vec2<f32>(x_2741.x, x_2741.y)) + vec2<f32>(x_2744.w, x_2744.y));
        let x_2748 : f32 = u_xlat11.y;
        u_xlat8.z = x_2748;
        let x_2750 : vec3<f32> = u_xlat32;
        let x_2753 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2756 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_2750.x, x_2750.y, x_2750.x, x_2750.y) * vec4<f32>(x_2753.x, x_2753.y, x_2753.x, x_2753.y)) + vec4<f32>(x_2756.x, x_2756.y, x_2756.x, x_2756.z));
        let x_2760 : f32 = u_xlat10.w;
        u_xlat11.y = x_2760;
        let x_2762 : vec3<f32> = u_xlat32;
        let x_2765 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2768 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_2762.x, x_2762.y, x_2762.x, x_2762.y) * vec4<f32>(x_2765.x, x_2765.y, x_2765.x, x_2765.y)) + vec4<f32>(x_2768.x, x_2768.y, x_2768.z, x_2768.y));
        let x_2771 : vec3<f32> = u_xlat32;
        let x_2774 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2777 : vec4<f32> = u_xlat11;
        let x_2779 : vec2<f32> = ((vec2<f32>(x_2771.x, x_2771.y) * vec2<f32>(x_2774.x, x_2774.y)) + vec2<f32>(x_2777.w, x_2777.y));
        let x_2780 : vec3<f32> = u_xlat34;
        u_xlat34 = vec3<f32>(x_2779.x, x_2779.y, x_2780.z);
        let x_2783 : f32 = u_xlat11.y;
        u_xlat8.w = x_2783;
        let x_2785 : vec3<f32> = u_xlat32;
        let x_2788 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2791 : vec4<f32> = u_xlat8;
        let x_2793 : vec2<f32> = ((vec2<f32>(x_2785.x, x_2785.y) * vec2<f32>(x_2788.x, x_2788.y)) + vec2<f32>(x_2791.x, x_2791.w));
        let x_2794 : vec4<f32> = u_xlat17;
        u_xlat17 = vec4<f32>(x_2793.x, x_2793.y, x_2794.z, x_2794.w);
        let x_2796 : vec4<f32> = u_xlat11;
        let x_2797 : vec3<f32> = vec3<f32>(x_2796.x, x_2796.z, x_2796.w);
        let x_2798 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2797.x, x_2798.y, x_2797.y, x_2797.z);
        let x_2800 : vec3<f32> = u_xlat32;
        let x_2803 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2806 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_2800.x, x_2800.y, x_2800.x, x_2800.y) * vec4<f32>(x_2803.x, x_2803.y, x_2803.x, x_2803.y)) + vec4<f32>(x_2806.x, x_2806.y, x_2806.z, x_2806.y));
        let x_2809 : vec3<f32> = u_xlat32;
        let x_2812 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2815 : vec4<f32> = u_xlat10;
        u_xlat62 = ((vec2<f32>(x_2809.x, x_2809.y) * vec2<f32>(x_2812.x, x_2812.y)) + vec2<f32>(x_2815.w, x_2815.y));
        let x_2819 : f32 = u_xlat8.x;
        u_xlat10.x = x_2819;
        let x_2821 : vec3<f32> = u_xlat32;
        let x_2824 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2827 : vec4<f32> = u_xlat10;
        let x_2829 : vec2<f32> = ((vec2<f32>(x_2821.x, x_2821.y) * vec2<f32>(x_2824.x, x_2824.y)) + vec2<f32>(x_2827.x, x_2827.y));
        let x_2830 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_2829.x, x_2829.y, x_2830.z);
        let x_2832 : vec4<f32> = u_xlat7;
        let x_2834 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_2832.x, x_2832.x, x_2832.x, x_2832.x) * x_2834);
        let x_2836 : vec4<f32> = u_xlat7;
        let x_2838 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_2836.y, x_2836.y, x_2836.y, x_2836.y) * x_2838);
        let x_2840 : vec4<f32> = u_xlat7;
        let x_2842 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_2840.z, x_2840.z, x_2840.z, x_2840.z) * x_2842);
        let x_2844 : vec4<f32> = u_xlat7;
        let x_2846 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_2844.w, x_2844.w, x_2844.w, x_2844.w) * x_2846);
        let x_2849 : vec4<f32> = u_xlat12;
        let x_2850 : vec2<f32> = vec2<f32>(x_2849.x, x_2849.y);
        let x_2852 : f32 = vs_INTERP3.z;
        txVec43 = vec3<f32>(x_2850.x, x_2850.y, x_2852);
        let x_2859 : vec3<f32> = txVec43;
        let x_2861 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2859.xy, x_2859.z);
        u_xlat84 = x_2861;
        let x_2863 : vec4<f32> = u_xlat12;
        let x_2864 : vec2<f32> = vec2<f32>(x_2863.z, x_2863.w);
        let x_2866 : f32 = vs_INTERP3.z;
        txVec44 = vec3<f32>(x_2864.x, x_2864.y, x_2866);
        let x_2873 : vec3<f32> = txVec44;
        let x_2875 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2873.xy, x_2873.z);
        u_xlat8.x = x_2875;
        let x_2878 : f32 = u_xlat8.x;
        let x_2880 : f32 = u_xlat18.y;
        u_xlat8.x = (x_2878 * x_2880);
        let x_2884 : f32 = u_xlat18.x;
        let x_2885 : f32 = u_xlat84;
        let x_2888 : f32 = u_xlat8.x;
        u_xlat84 = ((x_2884 * x_2885) + x_2888);
        let x_2891 : vec4<f32> = u_xlat13;
        let x_2892 : vec2<f32> = vec2<f32>(x_2891.x, x_2891.y);
        let x_2894 : f32 = vs_INTERP3.z;
        txVec45 = vec3<f32>(x_2892.x, x_2892.y, x_2894);
        let x_2901 : vec3<f32> = txVec45;
        let x_2903 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2901.xy, x_2901.z);
        u_xlat8.x = x_2903;
        let x_2906 : f32 = u_xlat18.z;
        let x_2908 : f32 = u_xlat8.x;
        let x_2910 : f32 = u_xlat84;
        u_xlat84 = ((x_2906 * x_2908) + x_2910);
        let x_2913 : vec4<f32> = u_xlat15;
        let x_2914 : vec2<f32> = vec2<f32>(x_2913.x, x_2913.y);
        let x_2916 : f32 = vs_INTERP3.z;
        txVec46 = vec3<f32>(x_2914.x, x_2914.y, x_2916);
        let x_2923 : vec3<f32> = txVec46;
        let x_2925 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2923.xy, x_2923.z);
        u_xlat8.x = x_2925;
        let x_2928 : f32 = u_xlat18.w;
        let x_2930 : f32 = u_xlat8.x;
        let x_2932 : f32 = u_xlat84;
        u_xlat84 = ((x_2928 * x_2930) + x_2932);
        let x_2935 : vec4<f32> = u_xlat14;
        let x_2936 : vec2<f32> = vec2<f32>(x_2935.x, x_2935.y);
        let x_2938 : f32 = vs_INTERP3.z;
        txVec47 = vec3<f32>(x_2936.x, x_2936.y, x_2938);
        let x_2945 : vec3<f32> = txVec47;
        let x_2947 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2945.xy, x_2945.z);
        u_xlat8.x = x_2947;
        let x_2950 : f32 = u_xlat19.x;
        let x_2952 : f32 = u_xlat8.x;
        let x_2954 : f32 = u_xlat84;
        u_xlat84 = ((x_2950 * x_2952) + x_2954);
        let x_2957 : vec4<f32> = u_xlat14;
        let x_2958 : vec2<f32> = vec2<f32>(x_2957.z, x_2957.w);
        let x_2960 : f32 = vs_INTERP3.z;
        txVec48 = vec3<f32>(x_2958.x, x_2958.y, x_2960);
        let x_2967 : vec3<f32> = txVec48;
        let x_2969 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2967.xy, x_2967.z);
        u_xlat8.x = x_2969;
        let x_2972 : f32 = u_xlat19.y;
        let x_2974 : f32 = u_xlat8.x;
        let x_2976 : f32 = u_xlat84;
        u_xlat84 = ((x_2972 * x_2974) + x_2976);
        let x_2979 : vec2<f32> = u_xlat65;
        let x_2981 : f32 = vs_INTERP3.z;
        txVec49 = vec3<f32>(x_2979.x, x_2979.y, x_2981);
        let x_2988 : vec3<f32> = txVec49;
        let x_2990 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2988.xy, x_2988.z);
        u_xlat8.x = x_2990;
        let x_2993 : f32 = u_xlat19.z;
        let x_2995 : f32 = u_xlat8.x;
        let x_2997 : f32 = u_xlat84;
        u_xlat84 = ((x_2993 * x_2995) + x_2997);
        let x_3000 : vec4<f32> = u_xlat15;
        let x_3001 : vec2<f32> = vec2<f32>(x_3000.z, x_3000.w);
        let x_3003 : f32 = vs_INTERP3.z;
        txVec50 = vec3<f32>(x_3001.x, x_3001.y, x_3003);
        let x_3010 : vec3<f32> = txVec50;
        let x_3012 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3010.xy, x_3010.z);
        u_xlat8.x = x_3012;
        let x_3015 : f32 = u_xlat19.w;
        let x_3017 : f32 = u_xlat8.x;
        let x_3019 : f32 = u_xlat84;
        u_xlat84 = ((x_3015 * x_3017) + x_3019);
        let x_3022 : vec4<f32> = u_xlat16;
        let x_3023 : vec2<f32> = vec2<f32>(x_3022.x, x_3022.y);
        let x_3025 : f32 = vs_INTERP3.z;
        txVec51 = vec3<f32>(x_3023.x, x_3023.y, x_3025);
        let x_3032 : vec3<f32> = txVec51;
        let x_3034 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3032.xy, x_3032.z);
        u_xlat8.x = x_3034;
        let x_3037 : f32 = u_xlat20.x;
        let x_3039 : f32 = u_xlat8.x;
        let x_3041 : f32 = u_xlat84;
        u_xlat84 = ((x_3037 * x_3039) + x_3041);
        let x_3044 : vec4<f32> = u_xlat16;
        let x_3045 : vec2<f32> = vec2<f32>(x_3044.z, x_3044.w);
        let x_3047 : f32 = vs_INTERP3.z;
        txVec52 = vec3<f32>(x_3045.x, x_3045.y, x_3047);
        let x_3054 : vec3<f32> = txVec52;
        let x_3056 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3054.xy, x_3054.z);
        u_xlat8.x = x_3056;
        let x_3059 : f32 = u_xlat20.y;
        let x_3061 : f32 = u_xlat8.x;
        let x_3063 : f32 = u_xlat84;
        u_xlat84 = ((x_3059 * x_3061) + x_3063);
        let x_3066 : vec3<f32> = u_xlat34;
        let x_3067 : vec2<f32> = vec2<f32>(x_3066.x, x_3066.y);
        let x_3069 : f32 = vs_INTERP3.z;
        txVec53 = vec3<f32>(x_3067.x, x_3067.y, x_3069);
        let x_3076 : vec3<f32> = txVec53;
        let x_3078 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3076.xy, x_3076.z);
        u_xlat8.x = x_3078;
        let x_3081 : f32 = u_xlat20.z;
        let x_3083 : f32 = u_xlat8.x;
        let x_3085 : f32 = u_xlat84;
        u_xlat84 = ((x_3081 * x_3083) + x_3085);
        let x_3088 : vec4<f32> = u_xlat17;
        let x_3089 : vec2<f32> = vec2<f32>(x_3088.x, x_3088.y);
        let x_3091 : f32 = vs_INTERP3.z;
        txVec54 = vec3<f32>(x_3089.x, x_3089.y, x_3091);
        let x_3098 : vec3<f32> = txVec54;
        let x_3100 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3098.xy, x_3098.z);
        u_xlat8.x = x_3100;
        let x_3103 : f32 = u_xlat20.w;
        let x_3105 : f32 = u_xlat8.x;
        let x_3107 : f32 = u_xlat84;
        u_xlat84 = ((x_3103 * x_3105) + x_3107);
        let x_3110 : vec4<f32> = u_xlat11;
        let x_3111 : vec2<f32> = vec2<f32>(x_3110.x, x_3110.y);
        let x_3113 : f32 = vs_INTERP3.z;
        txVec55 = vec3<f32>(x_3111.x, x_3111.y, x_3113);
        let x_3120 : vec3<f32> = txVec55;
        let x_3122 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3120.xy, x_3120.z);
        u_xlat8.x = x_3122;
        let x_3125 : f32 = u_xlat7.x;
        let x_3127 : f32 = u_xlat8.x;
        let x_3129 : f32 = u_xlat84;
        u_xlat84 = ((x_3125 * x_3127) + x_3129);
        let x_3132 : vec4<f32> = u_xlat11;
        let x_3133 : vec2<f32> = vec2<f32>(x_3132.z, x_3132.w);
        let x_3135 : f32 = vs_INTERP3.z;
        txVec56 = vec3<f32>(x_3133.x, x_3133.y, x_3135);
        let x_3142 : vec3<f32> = txVec56;
        let x_3144 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3142.xy, x_3142.z);
        u_xlat7.x = x_3144;
        let x_3147 : f32 = u_xlat7.y;
        let x_3149 : f32 = u_xlat7.x;
        let x_3151 : f32 = u_xlat84;
        u_xlat84 = ((x_3147 * x_3149) + x_3151);
        let x_3154 : vec2<f32> = u_xlat62;
        let x_3156 : f32 = vs_INTERP3.z;
        txVec57 = vec3<f32>(x_3154.x, x_3154.y, x_3156);
        let x_3163 : vec3<f32> = txVec57;
        let x_3165 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3163.xy, x_3163.z);
        u_xlat7.x = x_3165;
        let x_3168 : f32 = u_xlat7.z;
        let x_3170 : f32 = u_xlat7.x;
        let x_3172 : f32 = u_xlat84;
        u_xlat84 = ((x_3168 * x_3170) + x_3172);
        let x_3175 : vec3<f32> = u_xlat32;
        let x_3176 : vec2<f32> = vec2<f32>(x_3175.x, x_3175.y);
        let x_3178 : f32 = vs_INTERP3.z;
        txVec58 = vec3<f32>(x_3176.x, x_3176.y, x_3178);
        let x_3185 : vec3<f32> = txVec58;
        let x_3187 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3185.xy, x_3185.z);
        u_xlat32.x = x_3187;
        let x_3190 : f32 = u_xlat7.w;
        let x_3192 : f32 = u_xlat32.x;
        let x_3194 : f32 = u_xlat84;
        u_xlat78 = ((x_3190 * x_3192) + x_3194);
      }
    }
  } else {
    let x_3198 : vec4<f32> = vs_INTERP3;
    let x_3199 : vec2<f32> = vec2<f32>(x_3198.x, x_3198.y);
    let x_3201 : f32 = vs_INTERP3.z;
    txVec59 = vec3<f32>(x_3199.x, x_3199.y, x_3201);
    let x_3208 : vec3<f32> = txVec59;
    let x_3210 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3208.xy, x_3208.z);
    u_xlat78 = x_3210;
  }
  let x_3211 : f32 = u_xlat78;
  let x_3213 : f32 = x_265.x_MainLightShadowParams.x;
  let x_3215 : f32 = u_xlat80;
  u_xlat78 = ((x_3211 * x_3213) + x_3215);
  let x_3218 : f32 = vs_INTERP3.z;
  u_xlatb80 = (0.0f >= x_3218);
  let x_3221 : f32 = vs_INTERP3.z;
  u_xlatb32.x = (x_3221 >= 1.0f);
  let x_3224 : bool = u_xlatb80;
  let x_3226 : bool = u_xlatb32.x;
  u_xlatb80 = (x_3224 | x_3226);
  let x_3228 : bool = u_xlatb80;
  let x_3229 : f32 = u_xlat78;
  u_xlat78 = select(x_3229, 1.0f, x_3228);
  let x_3231 : vec3<f32> = vs_INTERP8;
  let x_3233 : vec3<f32> = x_75.x_WorldSpaceCameraPos;
  u_xlat32 = (x_3231 + -(x_3233));
  let x_3236 : vec3<f32> = u_xlat32;
  let x_3237 : vec3<f32> = u_xlat32;
  u_xlat80 = dot(x_3236, x_3237);
  let x_3239 : f32 = u_xlat80;
  let x_3241 : f32 = x_265.x_MainLightShadowParams.z;
  let x_3244 : f32 = x_265.x_MainLightShadowParams.w;
  u_xlat32.x = ((x_3239 * x_3241) + x_3244);
  let x_3248 : f32 = u_xlat32.x;
  u_xlat32.x = clamp(x_3248, 0.0f, 1.0f);
  let x_3251 : f32 = u_xlat78;
  u_xlat58 = (-(x_3251) + 1.0f);
  let x_3255 : f32 = u_xlat32.x;
  let x_3256 : f32 = u_xlat58;
  let x_3258 : f32 = u_xlat78;
  u_xlat78 = ((x_3255 * x_3256) + x_3258);
  let x_3267 : f32 = x_3265.x_MainLightCookieTextureFormat;
  u_xlatb32.x = !((x_3267 == -1.0f));
  let x_3271 : bool = u_xlatb32.x;
  if (x_3271) {
    let x_3274 : vec3<f32> = vs_INTERP8;
    let x_3277 : vec4<f32> = x_3265.x_MainLightWorldToLight[1i];
    let x_3279 : vec2<f32> = (vec2<f32>(x_3274.y, x_3274.y) * vec2<f32>(x_3277.x, x_3277.y));
    let x_3280 : vec3<f32> = u_xlat32;
    u_xlat32 = vec3<f32>(x_3279.x, x_3279.y, x_3280.z);
    let x_3283 : vec4<f32> = x_3265.x_MainLightWorldToLight[0i];
    let x_3285 : vec3<f32> = vs_INTERP8;
    let x_3288 : vec3<f32> = u_xlat32;
    let x_3290 : vec2<f32> = ((vec2<f32>(x_3283.x, x_3283.y) * vec2<f32>(x_3285.x, x_3285.x)) + vec2<f32>(x_3288.x, x_3288.y));
    let x_3291 : vec3<f32> = u_xlat32;
    u_xlat32 = vec3<f32>(x_3290.x, x_3290.y, x_3291.z);
    let x_3294 : vec4<f32> = x_3265.x_MainLightWorldToLight[2i];
    let x_3296 : vec3<f32> = vs_INTERP8;
    let x_3299 : vec3<f32> = u_xlat32;
    let x_3301 : vec2<f32> = ((vec2<f32>(x_3294.x, x_3294.y) * vec2<f32>(x_3296.z, x_3296.z)) + vec2<f32>(x_3299.x, x_3299.y));
    let x_3302 : vec3<f32> = u_xlat32;
    u_xlat32 = vec3<f32>(x_3301.x, x_3301.y, x_3302.z);
    let x_3304 : vec3<f32> = u_xlat32;
    let x_3307 : vec4<f32> = x_3265.x_MainLightWorldToLight[3i];
    let x_3309 : vec2<f32> = (vec2<f32>(x_3304.x, x_3304.y) + vec2<f32>(x_3307.x, x_3307.y));
    let x_3310 : vec3<f32> = u_xlat32;
    u_xlat32 = vec3<f32>(x_3309.x, x_3309.y, x_3310.z);
    let x_3312 : vec3<f32> = u_xlat32;
    let x_3315 : vec2<f32> = ((vec2<f32>(x_3312.x, x_3312.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_3316 : vec3<f32> = u_xlat32;
    u_xlat32 = vec3<f32>(x_3315.x, x_3315.y, x_3316.z);
    let x_3323 : vec3<f32> = u_xlat32;
    let x_3326 : f32 = x_75.x_GlobalMipBias.x;
    let x_3327 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_3323.x, x_3323.y), x_3326);
    u_xlat7 = x_3327;
    let x_3329 : f32 = x_3265.x_MainLightCookieTextureFormat;
    let x_3331 : f32 = x_3265.x_MainLightCookieTextureFormat;
    let x_3333 : f32 = x_3265.x_MainLightCookieTextureFormat;
    let x_3335 : f32 = x_3265.x_MainLightCookieTextureFormat;
    let x_3336 : vec4<f32> = vec4<f32>(x_3329, x_3331, x_3333, x_3335);
    let x_3344 : vec4<bool> = (vec4<f32>(x_3336.x, x_3336.y, x_3336.z, x_3336.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb32 = vec2<bool>(x_3344.x, x_3344.y);
    let x_3347 : bool = u_xlatb32.y;
    if (x_3347) {
      let x_3352 : f32 = u_xlat7.w;
      x_3348 = x_3352;
    } else {
      let x_3355 : f32 = u_xlat7.x;
      x_3348 = x_3355;
    }
    let x_3356 : f32 = x_3348;
    u_xlat58 = x_3356;
    let x_3358 : bool = u_xlatb32.x;
    if (x_3358) {
      let x_3362 : vec4<f32> = u_xlat7;
      x_3359 = vec3<f32>(x_3362.x, x_3362.y, x_3362.z);
    } else {
      let x_3365 : f32 = u_xlat58;
      x_3359 = vec3<f32>(x_3365, x_3365, x_3365);
    }
    let x_3367 : vec3<f32> = x_3359;
    u_xlat32 = x_3367;
  } else {
    u_xlat32.x = 1.0f;
    u_xlat32.y = 1.0f;
    u_xlat32.z = 1.0f;
  }
  let x_3372 : vec3<f32> = u_xlat32;
  let x_3374 : vec4<f32> = x_75.x_MainLightColor;
  u_xlat32 = (x_3372 * vec3<f32>(x_3374.x, x_3374.y, x_3374.z));
  let x_3377 : vec3<f32> = u_xlat2;
  let x_3379 : vec4<f32> = u_xlat3;
  u_xlat7.x = dot(-(x_3377), vec3<f32>(x_3379.x, x_3379.y, x_3379.z));
  let x_3384 : f32 = u_xlat7.x;
  let x_3386 : f32 = u_xlat7.x;
  u_xlat7.x = (x_3384 + x_3386);
  let x_3389 : vec4<f32> = u_xlat3;
  let x_3391 : vec4<f32> = u_xlat7;
  let x_3395 : vec3<f32> = u_xlat2;
  let x_3397 : vec3<f32> = ((vec3<f32>(x_3389.x, x_3389.y, x_3389.z) * -(vec3<f32>(x_3391.x, x_3391.x, x_3391.x))) + -(x_3395));
  let x_3398 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3397.x, x_3397.y, x_3397.z, x_3398.w);
  let x_3401 : vec4<f32> = u_xlat3;
  let x_3403 : vec3<f32> = u_xlat2;
  u_xlat85 = dot(vec3<f32>(x_3401.x, x_3401.y, x_3401.z), x_3403);
  let x_3405 : f32 = u_xlat85;
  u_xlat85 = clamp(x_3405, 0.0f, 1.0f);
  let x_3407 : f32 = u_xlat85;
  u_xlat85 = (-(x_3407) + 1.0f);
  let x_3410 : f32 = u_xlat85;
  let x_3411 : f32 = u_xlat85;
  u_xlat85 = (x_3410 * x_3411);
  let x_3413 : f32 = u_xlat85;
  let x_3414 : f32 = u_xlat85;
  u_xlat85 = (x_3413 * x_3414);
  let x_3417 : f32 = u_xlat53.x;
  u_xlat8.x = ((-(x_3417) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_3425 : f32 = u_xlat53.x;
  let x_3427 : f32 = u_xlat8.x;
  u_xlat53.x = (x_3425 * x_3427);
  let x_3431 : f32 = u_xlat53.x;
  u_xlat53.x = (x_3431 * 6.0f);
  let x_3443 : vec4<f32> = u_xlat7;
  let x_3446 : f32 = u_xlat53.x;
  let x_3447 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_3443.x, x_3443.y, x_3443.z), x_3446);
  u_xlat8 = x_3447;
  let x_3449 : f32 = u_xlat8.w;
  u_xlat53.x = (x_3449 + -1.0f);
  let x_3453 : f32 = x_148.unity_SpecCube0_HDR.w;
  let x_3455 : f32 = u_xlat53.x;
  u_xlat53.x = ((x_3453 * x_3455) + 1.0f);
  let x_3460 : f32 = u_xlat53.x;
  u_xlat53.x = max(x_3460, 0.0f);
  let x_3464 : f32 = u_xlat53.x;
  u_xlat53.x = log2(x_3464);
  let x_3468 : f32 = u_xlat53.x;
  let x_3470 : f32 = x_148.unity_SpecCube0_HDR.y;
  u_xlat53.x = (x_3468 * x_3470);
  let x_3474 : f32 = u_xlat53.x;
  u_xlat53.x = exp2(x_3474);
  let x_3478 : f32 = u_xlat53.x;
  let x_3480 : f32 = x_148.unity_SpecCube0_HDR.x;
  u_xlat53.x = (x_3478 * x_3480);
  let x_3483 : vec4<f32> = u_xlat8;
  let x_3485 : vec2<f32> = u_xlat53;
  let x_3487 : vec3<f32> = (vec3<f32>(x_3483.x, x_3483.y, x_3483.z) * vec3<f32>(x_3485.x, x_3485.x, x_3485.x));
  let x_3488 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3487.x, x_3487.y, x_3487.z, x_3488.w);
  let x_3490 : f32 = u_xlat79;
  let x_3492 : f32 = u_xlat79;
  u_xlat53 = ((vec2<f32>(x_3490, x_3490) * vec2<f32>(x_3492, x_3492)) + vec2<f32>(-1.0f, 1.0f));
  let x_3498 : f32 = u_xlat53.y;
  u_xlat79 = (1.0f / x_3498);
  let x_3500 : f32 = u_xlat82;
  u_xlat82 = (x_3500 + -0.03999999910593032837f);
  let x_3503 : f32 = u_xlat85;
  let x_3504 : f32 = u_xlat82;
  u_xlat82 = ((x_3503 * x_3504) + 0.03999999910593032837f);
  let x_3508 : f32 = u_xlat79;
  let x_3509 : f32 = u_xlat82;
  u_xlat79 = (x_3508 * x_3509);
  let x_3511 : f32 = u_xlat79;
  let x_3513 : vec4<f32> = u_xlat7;
  let x_3515 : vec3<f32> = (vec3<f32>(x_3511, x_3511, x_3511) * vec3<f32>(x_3513.x, x_3513.y, x_3513.z));
  let x_3516 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3515.x, x_3515.y, x_3515.z, x_3516.w);
  let x_3518 : vec3<f32> = u_xlat31;
  let x_3519 : vec3<f32> = u_xlat4;
  let x_3521 : vec4<f32> = u_xlat7;
  u_xlat31 = ((x_3518 * x_3519) + vec3<f32>(x_3521.x, x_3521.y, x_3521.z));
  let x_3524 : f32 = u_xlat78;
  let x_3526 : f32 = x_148.unity_LightData.z;
  u_xlat78 = (x_3524 * x_3526);
  let x_3528 : vec4<f32> = u_xlat3;
  let x_3531 : vec4<f32> = x_75.x_MainLightPosition;
  u_xlat79 = dot(vec3<f32>(x_3528.x, x_3528.y, x_3528.z), vec3<f32>(x_3531.x, x_3531.y, x_3531.z));
  let x_3534 : f32 = u_xlat79;
  u_xlat79 = clamp(x_3534, 0.0f, 1.0f);
  let x_3536 : f32 = u_xlat78;
  let x_3537 : f32 = u_xlat79;
  u_xlat78 = (x_3536 * x_3537);
  let x_3539 : f32 = u_xlat78;
  let x_3541 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_3539, x_3539, x_3539) * x_3541);
  let x_3543 : vec3<f32> = u_xlat2;
  let x_3545 : vec4<f32> = x_75.x_MainLightPosition;
  let x_3547 : vec3<f32> = (x_3543 + vec3<f32>(x_3545.x, x_3545.y, x_3545.z));
  let x_3548 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3547.x, x_3547.y, x_3547.z, x_3548.w);
  let x_3550 : vec4<f32> = u_xlat7;
  let x_3552 : vec4<f32> = u_xlat7;
  u_xlat78 = dot(vec3<f32>(x_3550.x, x_3550.y, x_3550.z), vec3<f32>(x_3552.x, x_3552.y, x_3552.z));
  let x_3555 : f32 = u_xlat78;
  u_xlat78 = max(x_3555, 1.17549435e-38f);
  let x_3558 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_3558);
  let x_3560 : f32 = u_xlat78;
  let x_3562 : vec4<f32> = u_xlat7;
  let x_3564 : vec3<f32> = (vec3<f32>(x_3560, x_3560, x_3560) * vec3<f32>(x_3562.x, x_3562.y, x_3562.z));
  let x_3565 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3564.x, x_3564.y, x_3564.z, x_3565.w);
  let x_3567 : vec4<f32> = u_xlat3;
  let x_3569 : vec4<f32> = u_xlat7;
  u_xlat78 = dot(vec3<f32>(x_3567.x, x_3567.y, x_3567.z), vec3<f32>(x_3569.x, x_3569.y, x_3569.z));
  let x_3572 : f32 = u_xlat78;
  u_xlat78 = clamp(x_3572, 0.0f, 1.0f);
  let x_3575 : vec4<f32> = x_75.x_MainLightPosition;
  let x_3577 : vec4<f32> = u_xlat7;
  u_xlat79 = dot(vec3<f32>(x_3575.x, x_3575.y, x_3575.z), vec3<f32>(x_3577.x, x_3577.y, x_3577.z));
  let x_3580 : f32 = u_xlat79;
  u_xlat79 = clamp(x_3580, 0.0f, 1.0f);
  let x_3582 : f32 = u_xlat78;
  let x_3583 : f32 = u_xlat78;
  u_xlat78 = (x_3582 * x_3583);
  let x_3585 : f32 = u_xlat78;
  let x_3587 : f32 = u_xlat53.x;
  u_xlat78 = ((x_3585 * x_3587) + 1.00001001358032226562f);
  let x_3591 : f32 = u_xlat79;
  let x_3592 : f32 = u_xlat79;
  u_xlat79 = (x_3591 * x_3592);
  let x_3594 : f32 = u_xlat78;
  let x_3595 : f32 = u_xlat78;
  u_xlat78 = (x_3594 * x_3595);
  let x_3597 : f32 = u_xlat79;
  u_xlat79 = max(x_3597, 0.10000000149011611938f);
  let x_3600 : f32 = u_xlat78;
  let x_3601 : f32 = u_xlat79;
  u_xlat78 = (x_3600 * x_3601);
  let x_3604 : f32 = u_xlat5.x;
  let x_3605 : f32 = u_xlat78;
  u_xlat78 = (x_3604 * x_3605);
  let x_3607 : f32 = u_xlat81;
  let x_3608 : f32 = u_xlat78;
  u_xlat78 = (x_3607 / x_3608);
  let x_3610 : f32 = u_xlat78;
  let x_3614 : vec3<f32> = u_xlat4;
  let x_3615 : vec3<f32> = ((vec3<f32>(x_3610, x_3610, x_3610) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_3614);
  let x_3616 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3615.x, x_3615.y, x_3615.z, x_3616.w);
  let x_3618 : vec3<f32> = u_xlat32;
  let x_3619 : vec4<f32> = u_xlat7;
  u_xlat32 = (x_3618 * vec3<f32>(x_3619.x, x_3619.y, x_3619.z));
  let x_3624 : f32 = x_75.x_AdditionalLightsCount.x;
  let x_3626 : f32 = x_148.unity_LightData.y;
  u_xlat78 = min(x_3624, x_3626);
  let x_3629 : f32 = u_xlat78;
  u_xlatu78 = bitcast<u32>(i32(x_3629));
  let x_3632 : f32 = u_xlat80;
  let x_3635 : f32 = x_265.x_AdditionalShadowFadeParams.x;
  let x_3638 : f32 = x_265.x_AdditionalShadowFadeParams.y;
  u_xlat79 = ((x_3632 * x_3635) + x_3638);
  let x_3640 : f32 = u_xlat79;
  u_xlat79 = clamp(x_3640, 0.0f, 1.0f);
  let x_3644 : f32 = x_3265.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3646 : f32 = x_3265.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3648 : f32 = x_3265.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3650 : f32 = x_3265.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3651 : vec4<f32> = vec4<f32>(x_3644, x_3646, x_3648, x_3650);
  let x_3657 : vec4<bool> = (vec4<f32>(x_3651.x, x_3651.y, x_3651.z, x_3651.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_3657.x, x_3657.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_3668 : u32 = u_xlatu_loop_1;
    let x_3669 : u32 = u_xlatu78;
    if ((x_3668 < x_3669)) {
    } else {
      break;
    }
    let x_3672 : u32 = u_xlatu_loop_1;
    u_xlatu82 = (x_3672 >> 2u);
    let x_3675 : u32 = u_xlatu_loop_1;
    u_xlati59 = bitcast<i32>((x_3675 & 3u));
    let x_3678 : u32 = u_xlatu82;
    let x_3681 : vec4<f32> = x_148.unity_LightIndices[bitcast<i32>(x_3678)];
    let x_3691 : i32 = u_xlati59;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_3696 : vec4<u32> = indexable[x_3691];
    u_xlat82 = dot(x_3681, bitcast<vec4<f32>>(x_3696));
    let x_3700 : f32 = u_xlat82;
    u_xlati82 = i32(x_3700);
    let x_3702 : vec3<f32> = vs_INTERP8;
    let x_3713 : i32 = u_xlati82;
    let x_3715 : vec4<f32> = x_3712.x_AdditionalLightsPosition[x_3713];
    let x_3718 : i32 = u_xlati82;
    let x_3720 : vec4<f32> = x_3712.x_AdditionalLightsPosition[x_3718];
    let x_3722 : vec3<f32> = ((-(x_3702) * vec3<f32>(x_3715.w, x_3715.w, x_3715.w)) + vec3<f32>(x_3720.x, x_3720.y, x_3720.z));
    let x_3723 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3722.x, x_3722.y, x_3722.z, x_3723.w);
    let x_3725 : vec4<f32> = u_xlat9;
    let x_3727 : vec4<f32> = u_xlat9;
    u_xlat59.x = dot(vec3<f32>(x_3725.x, x_3725.y, x_3725.z), vec3<f32>(x_3727.x, x_3727.y, x_3727.z));
    let x_3732 : f32 = u_xlat59.x;
    u_xlat59.x = max(x_3732, 0.00006103515625f);
    let x_3737 : f32 = u_xlat59.x;
    u_xlat85 = inverseSqrt(x_3737);
    let x_3739 : f32 = u_xlat85;
    let x_3741 : vec4<f32> = u_xlat9;
    let x_3743 : vec3<f32> = (vec3<f32>(x_3739, x_3739, x_3739) * vec3<f32>(x_3741.x, x_3741.y, x_3741.z));
    let x_3744 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3743.x, x_3743.y, x_3743.z, x_3744.w);
    let x_3748 : f32 = u_xlat59.x;
    u_xlat86 = (1.0f / x_3748);
    let x_3751 : f32 = u_xlat59.x;
    let x_3752 : i32 = u_xlati82;
    let x_3754 : f32 = x_3712.x_AdditionalLightsAttenuation[x_3752].x;
    u_xlat59.x = (x_3751 * x_3754);
    let x_3758 : f32 = u_xlat59.x;
    let x_3761 : f32 = u_xlat59.x;
    u_xlat59.x = ((-(x_3758) * x_3761) + 1.0f);
    let x_3766 : f32 = u_xlat59.x;
    u_xlat59.x = max(x_3766, 0.0f);
    let x_3770 : f32 = u_xlat59.x;
    let x_3772 : f32 = u_xlat59.x;
    u_xlat59.x = (x_3770 * x_3772);
    let x_3776 : f32 = u_xlat59.x;
    let x_3777 : f32 = u_xlat86;
    u_xlat59.x = (x_3776 * x_3777);
    let x_3780 : i32 = u_xlati82;
    let x_3782 : vec4<f32> = x_3712.x_AdditionalLightsSpotDir[x_3780];
    let x_3784 : vec4<f32> = u_xlat10;
    u_xlat86 = dot(vec3<f32>(x_3782.x, x_3782.y, x_3782.z), vec3<f32>(x_3784.x, x_3784.y, x_3784.z));
    let x_3787 : f32 = u_xlat86;
    let x_3788 : i32 = u_xlati82;
    let x_3790 : f32 = x_3712.x_AdditionalLightsAttenuation[x_3788].z;
    let x_3792 : i32 = u_xlati82;
    let x_3794 : f32 = x_3712.x_AdditionalLightsAttenuation[x_3792].w;
    u_xlat86 = ((x_3787 * x_3790) + x_3794);
    let x_3796 : f32 = u_xlat86;
    u_xlat86 = clamp(x_3796, 0.0f, 1.0f);
    let x_3798 : f32 = u_xlat86;
    let x_3799 : f32 = u_xlat86;
    u_xlat86 = (x_3798 * x_3799);
    let x_3802 : f32 = u_xlat59.x;
    let x_3803 : f32 = u_xlat86;
    u_xlat59.x = (x_3802 * x_3803);
    let x_3808 : i32 = u_xlati82;
    let x_3810 : f32 = x_265.x_AdditionalShadowParams[x_3808].w;
    u_xlati86 = i32(x_3810);
    let x_3813 : i32 = u_xlati86;
    u_xlatb87 = (x_3813 >= 0i);
    let x_3815 : bool = u_xlatb87;
    if (x_3815) {
      let x_3819 : i32 = u_xlati82;
      let x_3821 : f32 = x_265.x_AdditionalShadowParams[x_3819].z;
      u_xlatb87 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_3821, x_3821, x_3821, x_3821))));
      let x_3825 : bool = u_xlatb87;
      if (x_3825) {
        let x_3830 : vec4<f32> = u_xlat10;
        let x_3833 : vec4<f32> = u_xlat10;
        let x_3836 : vec4<bool> = (abs(vec4<f32>(x_3830.z, x_3830.z, x_3830.y, x_3830.z)) >= abs(vec4<f32>(x_3833.x, x_3833.y, x_3833.x, x_3833.x)));
        let x_3838 : vec3<bool> = vec3<bool>(x_3836.x, x_3836.y, x_3836.z);
        let x_3839 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3838.x, x_3838.y, x_3838.z, x_3839.w);
        let x_3842 : bool = u_xlatb11.y;
        let x_3844 : bool = u_xlatb11.x;
        u_xlatb87 = (x_3842 & x_3844);
        let x_3846 : vec4<f32> = u_xlat10;
        let x_3849 : vec4<bool> = (-(vec4<f32>(x_3846.z, x_3846.y, x_3846.z, x_3846.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_3850 : vec3<bool> = vec3<bool>(x_3849.x, x_3849.y, x_3849.w);
        let x_3851 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3850.x, x_3850.y, x_3851.z, x_3850.z);
        let x_3854 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_3854);
        let x_3859 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_3859);
        let x_3865 : bool = u_xlatb11.w;
        u_xlat88 = select(0.0f, 1.0f, x_3865);
        let x_3868 : bool = u_xlatb11.z;
        if (x_3868) {
          let x_3873 : f32 = u_xlat11.y;
          x_3869 = x_3873;
        } else {
          let x_3875 : f32 = u_xlat88;
          x_3869 = x_3875;
        }
        let x_3876 : f32 = x_3869;
        u_xlat88 = x_3876;
        let x_3878 : bool = u_xlatb87;
        if (x_3878) {
          let x_3883 : f32 = u_xlat11.x;
          x_3879 = x_3883;
        } else {
          let x_3885 : f32 = u_xlat88;
          x_3879 = x_3885;
        }
        let x_3886 : f32 = x_3879;
        u_xlat87 = x_3886;
        let x_3887 : i32 = u_xlati82;
        let x_3889 : f32 = x_265.x_AdditionalShadowParams[x_3887].w;
        u_xlat88 = trunc(x_3889);
        let x_3891 : f32 = u_xlat87;
        let x_3892 : f32 = u_xlat88;
        u_xlat87 = (x_3891 + x_3892);
        let x_3894 : f32 = u_xlat87;
        u_xlati86 = i32(x_3894);
      }
      let x_3896 : i32 = u_xlati86;
      u_xlati86 = (x_3896 << bitcast<u32>(2i));
      let x_3898 : vec3<f32> = vs_INTERP8;
      let x_3901 : i32 = u_xlati86;
      let x_3904 : i32 = u_xlati86;
      let x_3908 : vec4<f32> = x_265.x_AdditionalLightsWorldToShadow[((x_3901 + 1i) / 4i)][((x_3904 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_3898.y, x_3898.y, x_3898.y, x_3898.y) * x_3908);
      let x_3910 : i32 = u_xlati86;
      let x_3912 : i32 = u_xlati86;
      let x_3915 : vec4<f32> = x_265.x_AdditionalLightsWorldToShadow[(x_3910 / 4i)][(x_3912 % 4i)];
      let x_3916 : vec3<f32> = vs_INTERP8;
      let x_3919 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3915 * vec4<f32>(x_3916.x, x_3916.x, x_3916.x, x_3916.x)) + x_3919);
      let x_3921 : i32 = u_xlati86;
      let x_3924 : i32 = u_xlati86;
      let x_3928 : vec4<f32> = x_265.x_AdditionalLightsWorldToShadow[((x_3921 + 2i) / 4i)][((x_3924 + 2i) % 4i)];
      let x_3929 : vec3<f32> = vs_INTERP8;
      let x_3932 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3928 * vec4<f32>(x_3929.z, x_3929.z, x_3929.z, x_3929.z)) + x_3932);
      let x_3934 : vec4<f32> = u_xlat11;
      let x_3935 : i32 = u_xlati86;
      let x_3938 : i32 = u_xlati86;
      let x_3942 : vec4<f32> = x_265.x_AdditionalLightsWorldToShadow[((x_3935 + 3i) / 4i)][((x_3938 + 3i) % 4i)];
      u_xlat11 = (x_3934 + x_3942);
      let x_3944 : vec4<f32> = u_xlat11;
      let x_3946 : vec4<f32> = u_xlat11;
      let x_3948 : vec3<f32> = (vec3<f32>(x_3944.x, x_3944.y, x_3944.z) / vec3<f32>(x_3946.w, x_3946.w, x_3946.w));
      let x_3949 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3948.x, x_3948.y, x_3948.z, x_3949.w);
      let x_3952 : i32 = u_xlati82;
      let x_3954 : f32 = x_265.x_AdditionalShadowParams[x_3952].y;
      u_xlatb86 = (0.0f < x_3954);
      let x_3956 : bool = u_xlatb86;
      if (x_3956) {
        let x_3959 : i32 = u_xlati82;
        let x_3961 : f32 = x_265.x_AdditionalShadowParams[x_3959].y;
        u_xlatb86 = (1.0f == x_3961);
        let x_3963 : bool = u_xlatb86;
        if (x_3963) {
          let x_3966 : vec4<f32> = u_xlat11;
          let x_3970 : vec4<f32> = x_265.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_3966.x, x_3966.y, x_3966.x, x_3966.y) + x_3970);
          let x_3973 : vec4<f32> = u_xlat12;
          let x_3974 : vec2<f32> = vec2<f32>(x_3973.x, x_3973.y);
          let x_3976 : f32 = u_xlat11.z;
          txVec60 = vec3<f32>(x_3974.x, x_3974.y, x_3976);
          let x_3984 : vec3<f32> = txVec60;
          let x_3986 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3984.xy, x_3984.z);
          u_xlat13.x = x_3986;
          let x_3989 : vec4<f32> = u_xlat12;
          let x_3990 : vec2<f32> = vec2<f32>(x_3989.z, x_3989.w);
          let x_3992 : f32 = u_xlat11.z;
          txVec61 = vec3<f32>(x_3990.x, x_3990.y, x_3992);
          let x_3999 : vec3<f32> = txVec61;
          let x_4001 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3999.xy, x_3999.z);
          u_xlat13.y = x_4001;
          let x_4003 : vec4<f32> = u_xlat11;
          let x_4007 : vec4<f32> = x_265.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_4003.x, x_4003.y, x_4003.x, x_4003.y) + x_4007);
          let x_4010 : vec4<f32> = u_xlat12;
          let x_4011 : vec2<f32> = vec2<f32>(x_4010.x, x_4010.y);
          let x_4013 : f32 = u_xlat11.z;
          txVec62 = vec3<f32>(x_4011.x, x_4011.y, x_4013);
          let x_4020 : vec3<f32> = txVec62;
          let x_4022 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4020.xy, x_4020.z);
          u_xlat13.z = x_4022;
          let x_4025 : vec4<f32> = u_xlat12;
          let x_4026 : vec2<f32> = vec2<f32>(x_4025.z, x_4025.w);
          let x_4028 : f32 = u_xlat11.z;
          txVec63 = vec3<f32>(x_4026.x, x_4026.y, x_4028);
          let x_4035 : vec3<f32> = txVec63;
          let x_4037 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4035.xy, x_4035.z);
          u_xlat13.w = x_4037;
          let x_4039 : vec4<f32> = u_xlat13;
          u_xlat86 = dot(x_4039, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_4042 : i32 = u_xlati82;
          let x_4044 : f32 = x_265.x_AdditionalShadowParams[x_4042].y;
          u_xlatb87 = (2.0f == x_4044);
          let x_4046 : bool = u_xlatb87;
          if (x_4046) {
            let x_4049 : vec4<f32> = u_xlat11;
            let x_4053 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4056 : vec2<f32> = ((vec2<f32>(x_4049.x, x_4049.y) * vec2<f32>(x_4053.z, x_4053.w)) + vec2<f32>(0.5f, 0.5f));
            let x_4057 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4056.x, x_4056.y, x_4057.z, x_4057.w);
            let x_4059 : vec4<f32> = u_xlat12;
            let x_4061 : vec2<f32> = floor(vec2<f32>(x_4059.x, x_4059.y));
            let x_4062 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4061.x, x_4061.y, x_4062.z, x_4062.w);
            let x_4065 : vec4<f32> = u_xlat11;
            let x_4068 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4071 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_4065.x, x_4065.y) * vec2<f32>(x_4068.z, x_4068.w)) + -(vec2<f32>(x_4071.x, x_4071.y)));
            let x_4075 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_4075.x, x_4075.x, x_4075.y, x_4075.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_4078 : vec4<f32> = u_xlat13;
            let x_4080 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_4078.x, x_4078.x, x_4078.z, x_4078.z) * vec4<f32>(x_4080.x, x_4080.x, x_4080.z, x_4080.z));
            let x_4083 : vec4<f32> = u_xlat14;
            let x_4085 : vec2<f32> = (vec2<f32>(x_4083.y, x_4083.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_4086 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4085.x, x_4086.y, x_4085.y, x_4086.w);
            let x_4088 : vec4<f32> = u_xlat14;
            let x_4091 : vec2<f32> = u_xlat64;
            let x_4093 : vec2<f32> = ((vec2<f32>(x_4088.x, x_4088.z) * vec2<f32>(0.5f, 0.5f)) + -(x_4091));
            let x_4094 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4093.x, x_4093.y, x_4094.z, x_4094.w);
            let x_4097 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_4097) + vec2<f32>(1.0f, 1.0f));
            let x_4100 : vec2<f32> = u_xlat64;
            let x_4101 : vec2<f32> = min(x_4100, vec2<f32>(0.0f, 0.0f));
            let x_4102 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4101.x, x_4101.y, x_4102.z, x_4102.w);
            let x_4104 : vec4<f32> = u_xlat15;
            let x_4107 : vec4<f32> = u_xlat15;
            let x_4110 : vec2<f32> = u_xlat66;
            let x_4111 : vec2<f32> = ((-(vec2<f32>(x_4104.x, x_4104.y)) * vec2<f32>(x_4107.x, x_4107.y)) + x_4110);
            let x_4112 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4111.x, x_4111.y, x_4112.z, x_4112.w);
            let x_4114 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_4114, vec2<f32>(0.0f, 0.0f));
            let x_4116 : vec2<f32> = u_xlat64;
            let x_4118 : vec2<f32> = u_xlat64;
            let x_4120 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_4116) * x_4118) + vec2<f32>(x_4120.y, x_4120.w));
            let x_4123 : vec4<f32> = u_xlat15;
            let x_4125 : vec2<f32> = (vec2<f32>(x_4123.x, x_4123.y) + vec2<f32>(1.0f, 1.0f));
            let x_4126 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4125.x, x_4125.y, x_4126.z, x_4126.w);
            let x_4128 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_4128 + vec2<f32>(1.0f, 1.0f));
            let x_4130 : vec4<f32> = u_xlat14;
            let x_4132 : vec2<f32> = (vec2<f32>(x_4130.x, x_4130.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4133 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4132.x, x_4132.y, x_4133.z, x_4133.w);
            let x_4135 : vec2<f32> = u_xlat66;
            let x_4136 : vec2<f32> = (x_4135 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4137 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4136.x, x_4136.y, x_4137.z, x_4137.w);
            let x_4139 : vec4<f32> = u_xlat15;
            let x_4141 : vec2<f32> = (vec2<f32>(x_4139.x, x_4139.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4142 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4141.x, x_4141.y, x_4142.z, x_4142.w);
            let x_4144 : vec2<f32> = u_xlat64;
            let x_4145 : vec2<f32> = (x_4144 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4146 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4145.x, x_4145.y, x_4146.z, x_4146.w);
            let x_4148 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_4148.y, x_4148.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4152 : f32 = u_xlat15.x;
            u_xlat16.z = x_4152;
            let x_4155 : f32 = u_xlat64.x;
            u_xlat16.w = x_4155;
            let x_4158 : f32 = u_xlat17.x;
            u_xlat14.z = x_4158;
            let x_4161 : f32 = u_xlat13.x;
            u_xlat14.w = x_4161;
            let x_4163 : vec4<f32> = u_xlat14;
            let x_4165 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_4163.z, x_4163.w, x_4163.x, x_4163.z) + vec4<f32>(x_4165.z, x_4165.w, x_4165.x, x_4165.z));
            let x_4169 : f32 = u_xlat16.y;
            u_xlat15.z = x_4169;
            let x_4172 : f32 = u_xlat64.y;
            u_xlat15.w = x_4172;
            let x_4175 : f32 = u_xlat14.y;
            u_xlat17.z = x_4175;
            let x_4178 : f32 = u_xlat13.z;
            u_xlat17.w = x_4178;
            let x_4180 : vec4<f32> = u_xlat15;
            let x_4182 : vec4<f32> = u_xlat17;
            let x_4184 : vec3<f32> = (vec3<f32>(x_4180.z, x_4180.y, x_4180.w) + vec3<f32>(x_4182.z, x_4182.y, x_4182.w));
            let x_4185 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4184.x, x_4184.y, x_4184.z, x_4185.w);
            let x_4187 : vec4<f32> = u_xlat14;
            let x_4189 : vec4<f32> = u_xlat18;
            let x_4191 : vec3<f32> = (vec3<f32>(x_4187.x, x_4187.z, x_4187.w) / vec3<f32>(x_4189.z, x_4189.w, x_4189.y));
            let x_4192 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4191.x, x_4191.y, x_4191.z, x_4192.w);
            let x_4194 : vec4<f32> = u_xlat14;
            let x_4196 : vec3<f32> = (vec3<f32>(x_4194.x, x_4194.y, x_4194.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4197 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4196.x, x_4196.y, x_4196.z, x_4197.w);
            let x_4199 : vec4<f32> = u_xlat17;
            let x_4201 : vec4<f32> = u_xlat13;
            let x_4203 : vec3<f32> = (vec3<f32>(x_4199.z, x_4199.y, x_4199.w) / vec3<f32>(x_4201.x, x_4201.y, x_4201.z));
            let x_4204 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4203.x, x_4203.y, x_4203.z, x_4204.w);
            let x_4206 : vec4<f32> = u_xlat15;
            let x_4208 : vec3<f32> = (vec3<f32>(x_4206.x, x_4206.y, x_4206.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4209 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4208.x, x_4208.y, x_4208.z, x_4209.w);
            let x_4211 : vec4<f32> = u_xlat14;
            let x_4214 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4216 : vec3<f32> = (vec3<f32>(x_4211.y, x_4211.x, x_4211.z) * vec3<f32>(x_4214.x, x_4214.x, x_4214.x));
            let x_4217 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4216.x, x_4216.y, x_4216.z, x_4217.w);
            let x_4219 : vec4<f32> = u_xlat15;
            let x_4222 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4224 : vec3<f32> = (vec3<f32>(x_4219.x, x_4219.y, x_4219.z) * vec3<f32>(x_4222.y, x_4222.y, x_4222.y));
            let x_4225 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4224.x, x_4224.y, x_4224.z, x_4225.w);
            let x_4228 : f32 = u_xlat15.x;
            u_xlat14.w = x_4228;
            let x_4230 : vec4<f32> = u_xlat12;
            let x_4233 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4236 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_4230.x, x_4230.y, x_4230.x, x_4230.y) * vec4<f32>(x_4233.x, x_4233.y, x_4233.x, x_4233.y)) + vec4<f32>(x_4236.y, x_4236.w, x_4236.x, x_4236.w));
            let x_4239 : vec4<f32> = u_xlat12;
            let x_4242 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4245 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_4239.x, x_4239.y) * vec2<f32>(x_4242.x, x_4242.y)) + vec2<f32>(x_4245.z, x_4245.w));
            let x_4249 : f32 = u_xlat14.y;
            u_xlat15.w = x_4249;
            let x_4251 : vec4<f32> = u_xlat15;
            let x_4252 : vec2<f32> = vec2<f32>(x_4251.y, x_4251.z);
            let x_4253 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4253.x, x_4252.x, x_4253.z, x_4252.y);
            let x_4255 : vec4<f32> = u_xlat12;
            let x_4258 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4261 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_4255.x, x_4255.y, x_4255.x, x_4255.y) * vec4<f32>(x_4258.x, x_4258.y, x_4258.x, x_4258.y)) + vec4<f32>(x_4261.x, x_4261.y, x_4261.z, x_4261.y));
            let x_4264 : vec4<f32> = u_xlat12;
            let x_4267 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4270 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_4264.x, x_4264.y, x_4264.x, x_4264.y) * vec4<f32>(x_4267.x, x_4267.y, x_4267.x, x_4267.y)) + vec4<f32>(x_4270.w, x_4270.y, x_4270.w, x_4270.z));
            let x_4273 : vec4<f32> = u_xlat12;
            let x_4276 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4279 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_4273.x, x_4273.y, x_4273.x, x_4273.y) * vec4<f32>(x_4276.x, x_4276.y, x_4276.x, x_4276.y)) + vec4<f32>(x_4279.x, x_4279.w, x_4279.z, x_4279.w));
            let x_4282 : vec4<f32> = u_xlat13;
            let x_4284 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_4282.x, x_4282.x, x_4282.x, x_4282.y) * vec4<f32>(x_4284.z, x_4284.w, x_4284.y, x_4284.z));
            let x_4287 : vec4<f32> = u_xlat13;
            let x_4289 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_4287.y, x_4287.y, x_4287.z, x_4287.z) * x_4289);
            let x_4292 : f32 = u_xlat13.z;
            let x_4294 : f32 = u_xlat18.y;
            u_xlat87 = (x_4292 * x_4294);
            let x_4297 : vec4<f32> = u_xlat16;
            let x_4298 : vec2<f32> = vec2<f32>(x_4297.x, x_4297.y);
            let x_4300 : f32 = u_xlat11.z;
            txVec64 = vec3<f32>(x_4298.x, x_4298.y, x_4300);
            let x_4307 : vec3<f32> = txVec64;
            let x_4309 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4307.xy, x_4307.z);
            u_xlat88 = x_4309;
            let x_4311 : vec4<f32> = u_xlat16;
            let x_4312 : vec2<f32> = vec2<f32>(x_4311.z, x_4311.w);
            let x_4314 : f32 = u_xlat11.z;
            txVec65 = vec3<f32>(x_4312.x, x_4312.y, x_4314);
            let x_4322 : vec3<f32> = txVec65;
            let x_4324 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4322.xy, x_4322.z);
            u_xlat89 = x_4324;
            let x_4325 : f32 = u_xlat89;
            let x_4327 : f32 = u_xlat19.y;
            u_xlat89 = (x_4325 * x_4327);
            let x_4330 : f32 = u_xlat19.x;
            let x_4331 : f32 = u_xlat88;
            let x_4333 : f32 = u_xlat89;
            u_xlat88 = ((x_4330 * x_4331) + x_4333);
            let x_4336 : vec2<f32> = u_xlat64;
            let x_4338 : f32 = u_xlat11.z;
            txVec66 = vec3<f32>(x_4336.x, x_4336.y, x_4338);
            let x_4345 : vec3<f32> = txVec66;
            let x_4347 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4345.xy, x_4345.z);
            u_xlat89 = x_4347;
            let x_4349 : f32 = u_xlat19.z;
            let x_4350 : f32 = u_xlat89;
            let x_4352 : f32 = u_xlat88;
            u_xlat88 = ((x_4349 * x_4350) + x_4352);
            let x_4355 : vec4<f32> = u_xlat15;
            let x_4356 : vec2<f32> = vec2<f32>(x_4355.x, x_4355.y);
            let x_4358 : f32 = u_xlat11.z;
            txVec67 = vec3<f32>(x_4356.x, x_4356.y, x_4358);
            let x_4365 : vec3<f32> = txVec67;
            let x_4367 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4365.xy, x_4365.z);
            u_xlat89 = x_4367;
            let x_4369 : f32 = u_xlat19.w;
            let x_4370 : f32 = u_xlat89;
            let x_4372 : f32 = u_xlat88;
            u_xlat88 = ((x_4369 * x_4370) + x_4372);
            let x_4375 : vec4<f32> = u_xlat17;
            let x_4376 : vec2<f32> = vec2<f32>(x_4375.x, x_4375.y);
            let x_4378 : f32 = u_xlat11.z;
            txVec68 = vec3<f32>(x_4376.x, x_4376.y, x_4378);
            let x_4385 : vec3<f32> = txVec68;
            let x_4387 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4385.xy, x_4385.z);
            u_xlat89 = x_4387;
            let x_4389 : f32 = u_xlat20.x;
            let x_4390 : f32 = u_xlat89;
            let x_4392 : f32 = u_xlat88;
            u_xlat88 = ((x_4389 * x_4390) + x_4392);
            let x_4395 : vec4<f32> = u_xlat17;
            let x_4396 : vec2<f32> = vec2<f32>(x_4395.z, x_4395.w);
            let x_4398 : f32 = u_xlat11.z;
            txVec69 = vec3<f32>(x_4396.x, x_4396.y, x_4398);
            let x_4405 : vec3<f32> = txVec69;
            let x_4407 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4405.xy, x_4405.z);
            u_xlat89 = x_4407;
            let x_4409 : f32 = u_xlat20.y;
            let x_4410 : f32 = u_xlat89;
            let x_4412 : f32 = u_xlat88;
            u_xlat88 = ((x_4409 * x_4410) + x_4412);
            let x_4415 : vec4<f32> = u_xlat15;
            let x_4416 : vec2<f32> = vec2<f32>(x_4415.z, x_4415.w);
            let x_4418 : f32 = u_xlat11.z;
            txVec70 = vec3<f32>(x_4416.x, x_4416.y, x_4418);
            let x_4425 : vec3<f32> = txVec70;
            let x_4427 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4425.xy, x_4425.z);
            u_xlat89 = x_4427;
            let x_4429 : f32 = u_xlat20.z;
            let x_4430 : f32 = u_xlat89;
            let x_4432 : f32 = u_xlat88;
            u_xlat88 = ((x_4429 * x_4430) + x_4432);
            let x_4435 : vec4<f32> = u_xlat14;
            let x_4436 : vec2<f32> = vec2<f32>(x_4435.x, x_4435.y);
            let x_4438 : f32 = u_xlat11.z;
            txVec71 = vec3<f32>(x_4436.x, x_4436.y, x_4438);
            let x_4445 : vec3<f32> = txVec71;
            let x_4447 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4445.xy, x_4445.z);
            u_xlat89 = x_4447;
            let x_4449 : f32 = u_xlat20.w;
            let x_4450 : f32 = u_xlat89;
            let x_4452 : f32 = u_xlat88;
            u_xlat88 = ((x_4449 * x_4450) + x_4452);
            let x_4455 : vec4<f32> = u_xlat14;
            let x_4456 : vec2<f32> = vec2<f32>(x_4455.z, x_4455.w);
            let x_4458 : f32 = u_xlat11.z;
            txVec72 = vec3<f32>(x_4456.x, x_4456.y, x_4458);
            let x_4465 : vec3<f32> = txVec72;
            let x_4467 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4465.xy, x_4465.z);
            u_xlat89 = x_4467;
            let x_4468 : f32 = u_xlat87;
            let x_4469 : f32 = u_xlat89;
            let x_4471 : f32 = u_xlat88;
            u_xlat86 = ((x_4468 * x_4469) + x_4471);
          } else {
            let x_4474 : vec4<f32> = u_xlat11;
            let x_4477 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4480 : vec2<f32> = ((vec2<f32>(x_4474.x, x_4474.y) * vec2<f32>(x_4477.z, x_4477.w)) + vec2<f32>(0.5f, 0.5f));
            let x_4481 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4480.x, x_4480.y, x_4481.z, x_4481.w);
            let x_4483 : vec4<f32> = u_xlat12;
            let x_4485 : vec2<f32> = floor(vec2<f32>(x_4483.x, x_4483.y));
            let x_4486 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4485.x, x_4485.y, x_4486.z, x_4486.w);
            let x_4488 : vec4<f32> = u_xlat11;
            let x_4491 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4494 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_4488.x, x_4488.y) * vec2<f32>(x_4491.z, x_4491.w)) + -(vec2<f32>(x_4494.x, x_4494.y)));
            let x_4498 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_4498.x, x_4498.x, x_4498.y, x_4498.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_4501 : vec4<f32> = u_xlat13;
            let x_4503 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_4501.x, x_4501.x, x_4501.z, x_4501.z) * vec4<f32>(x_4503.x, x_4503.x, x_4503.z, x_4503.z));
            let x_4506 : vec4<f32> = u_xlat14;
            let x_4508 : vec2<f32> = (vec2<f32>(x_4506.y, x_4506.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_4509 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4509.x, x_4508.x, x_4509.z, x_4508.y);
            let x_4511 : vec4<f32> = u_xlat14;
            let x_4514 : vec2<f32> = u_xlat64;
            let x_4516 : vec2<f32> = ((vec2<f32>(x_4511.x, x_4511.z) * vec2<f32>(0.5f, 0.5f)) + -(x_4514));
            let x_4517 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4516.x, x_4517.y, x_4516.y, x_4517.w);
            let x_4519 : vec2<f32> = u_xlat64;
            let x_4521 : vec2<f32> = (-(x_4519) + vec2<f32>(1.0f, 1.0f));
            let x_4522 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4521.x, x_4521.y, x_4522.z, x_4522.w);
            let x_4524 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_4524, vec2<f32>(0.0f, 0.0f));
            let x_4526 : vec2<f32> = u_xlat66;
            let x_4528 : vec2<f32> = u_xlat66;
            let x_4530 : vec4<f32> = u_xlat14;
            let x_4532 : vec2<f32> = ((-(x_4526) * x_4528) + vec2<f32>(x_4530.x, x_4530.y));
            let x_4533 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4532.x, x_4532.y, x_4533.z, x_4533.w);
            let x_4535 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_4535, vec2<f32>(0.0f, 0.0f));
            let x_4538 : vec2<f32> = u_xlat66;
            let x_4540 : vec2<f32> = u_xlat66;
            let x_4542 : vec4<f32> = u_xlat13;
            let x_4544 : vec2<f32> = ((-(x_4538) * x_4540) + vec2<f32>(x_4542.y, x_4542.w));
            let x_4545 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_4544.x, x_4545.y, x_4544.y);
            let x_4547 : vec4<f32> = u_xlat14;
            let x_4549 : vec2<f32> = (vec2<f32>(x_4547.x, x_4547.y) + vec2<f32>(2.0f, 2.0f));
            let x_4550 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4549.x, x_4549.y, x_4550.z, x_4550.w);
            let x_4552 : vec3<f32> = u_xlat39;
            let x_4554 : vec2<f32> = (vec2<f32>(x_4552.x, x_4552.z) + vec2<f32>(2.0f, 2.0f));
            let x_4555 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4555.x, x_4554.x, x_4555.z, x_4554.y);
            let x_4558 : f32 = u_xlat13.y;
            u_xlat16.z = (x_4558 * 0.08163200318813323975f);
            let x_4561 : vec4<f32> = u_xlat13;
            let x_4563 : vec3<f32> = (vec3<f32>(x_4561.z, x_4561.x, x_4561.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_4564 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4563.x, x_4563.y, x_4563.z, x_4564.w);
            let x_4566 : vec4<f32> = u_xlat14;
            let x_4568 : vec2<f32> = (vec2<f32>(x_4566.x, x_4566.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_4569 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4568.x, x_4568.y, x_4569.z, x_4569.w);
            let x_4572 : f32 = u_xlat17.y;
            u_xlat16.x = x_4572;
            let x_4574 : vec2<f32> = u_xlat64;
            let x_4577 : vec2<f32> = ((vec2<f32>(x_4574.x, x_4574.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4578 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4578.x, x_4577.x, x_4578.z, x_4577.y);
            let x_4580 : vec2<f32> = u_xlat64;
            let x_4583 : vec2<f32> = ((vec2<f32>(x_4580.x, x_4580.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4584 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4583.x, x_4584.y, x_4583.y, x_4584.w);
            let x_4587 : f32 = u_xlat13.x;
            u_xlat14.y = x_4587;
            let x_4590 : f32 = u_xlat15.y;
            u_xlat14.w = x_4590;
            let x_4592 : vec4<f32> = u_xlat14;
            let x_4593 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_4592 + x_4593);
            let x_4595 : vec2<f32> = u_xlat64;
            let x_4598 : vec2<f32> = ((vec2<f32>(x_4595.y, x_4595.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4599 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4599.x, x_4598.x, x_4599.z, x_4598.y);
            let x_4601 : vec2<f32> = u_xlat64;
            let x_4604 : vec2<f32> = ((vec2<f32>(x_4601.y, x_4601.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4605 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4604.x, x_4605.y, x_4604.y, x_4605.w);
            let x_4608 : f32 = u_xlat13.y;
            u_xlat15.y = x_4608;
            let x_4610 : vec4<f32> = u_xlat15;
            let x_4611 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_4610 + x_4611);
            let x_4613 : vec4<f32> = u_xlat14;
            let x_4614 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_4613 / x_4614);
            let x_4616 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_4616 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4618 : vec4<f32> = u_xlat15;
            let x_4619 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_4618 / x_4619);
            let x_4621 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_4621 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4623 : vec4<f32> = u_xlat14;
            let x_4626 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_4623.w, x_4623.x, x_4623.y, x_4623.z) * vec4<f32>(x_4626.x, x_4626.x, x_4626.x, x_4626.x));
            let x_4629 : vec4<f32> = u_xlat15;
            let x_4632 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_4629.x, x_4629.w, x_4629.y, x_4629.z) * vec4<f32>(x_4632.y, x_4632.y, x_4632.y, x_4632.y));
            let x_4635 : vec4<f32> = u_xlat14;
            let x_4636 : vec3<f32> = vec3<f32>(x_4635.y, x_4635.z, x_4635.w);
            let x_4637 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4636.x, x_4637.y, x_4636.y, x_4636.z);
            let x_4640 : f32 = u_xlat15.x;
            u_xlat17.y = x_4640;
            let x_4642 : vec4<f32> = u_xlat12;
            let x_4645 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4648 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_4642.x, x_4642.y, x_4642.x, x_4642.y) * vec4<f32>(x_4645.x, x_4645.y, x_4645.x, x_4645.y)) + vec4<f32>(x_4648.x, x_4648.y, x_4648.z, x_4648.y));
            let x_4651 : vec4<f32> = u_xlat12;
            let x_4654 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4657 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_4651.x, x_4651.y) * vec2<f32>(x_4654.x, x_4654.y)) + vec2<f32>(x_4657.w, x_4657.y));
            let x_4661 : f32 = u_xlat17.y;
            u_xlat14.y = x_4661;
            let x_4664 : f32 = u_xlat15.z;
            u_xlat17.y = x_4664;
            let x_4666 : vec4<f32> = u_xlat12;
            let x_4669 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4672 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_4666.x, x_4666.y, x_4666.x, x_4666.y) * vec4<f32>(x_4669.x, x_4669.y, x_4669.x, x_4669.y)) + vec4<f32>(x_4672.x, x_4672.y, x_4672.z, x_4672.y));
            let x_4675 : vec4<f32> = u_xlat12;
            let x_4678 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4681 : vec4<f32> = u_xlat17;
            let x_4683 : vec2<f32> = ((vec2<f32>(x_4675.x, x_4675.y) * vec2<f32>(x_4678.x, x_4678.y)) + vec2<f32>(x_4681.w, x_4681.y));
            let x_4684 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_4683.x, x_4683.y, x_4684.z, x_4684.w);
            let x_4687 : f32 = u_xlat17.y;
            u_xlat14.z = x_4687;
            let x_4690 : vec4<f32> = u_xlat12;
            let x_4693 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4696 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_4690.x, x_4690.y, x_4690.x, x_4690.y) * vec4<f32>(x_4693.x, x_4693.y, x_4693.x, x_4693.y)) + vec4<f32>(x_4696.x, x_4696.y, x_4696.x, x_4696.z));
            let x_4700 : f32 = u_xlat15.w;
            u_xlat17.y = x_4700;
            let x_4703 : vec4<f32> = u_xlat12;
            let x_4706 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4709 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_4703.x, x_4703.y, x_4703.x, x_4703.y) * vec4<f32>(x_4706.x, x_4706.y, x_4706.x, x_4706.y)) + vec4<f32>(x_4709.x, x_4709.y, x_4709.z, x_4709.y));
            let x_4713 : vec4<f32> = u_xlat12;
            let x_4716 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4719 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_4713.x, x_4713.y) * vec2<f32>(x_4716.x, x_4716.y)) + vec2<f32>(x_4719.w, x_4719.y));
            let x_4723 : f32 = u_xlat17.y;
            u_xlat14.w = x_4723;
            let x_4726 : vec4<f32> = u_xlat12;
            let x_4729 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4732 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_4726.x, x_4726.y) * vec2<f32>(x_4729.x, x_4729.y)) + vec2<f32>(x_4732.x, x_4732.w));
            let x_4735 : vec4<f32> = u_xlat17;
            let x_4736 : vec3<f32> = vec3<f32>(x_4735.x, x_4735.z, x_4735.w);
            let x_4737 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4736.x, x_4737.y, x_4736.y, x_4736.z);
            let x_4739 : vec4<f32> = u_xlat12;
            let x_4742 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4745 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_4739.x, x_4739.y, x_4739.x, x_4739.y) * vec4<f32>(x_4742.x, x_4742.y, x_4742.x, x_4742.y)) + vec4<f32>(x_4745.x, x_4745.y, x_4745.z, x_4745.y));
            let x_4748 : vec4<f32> = u_xlat12;
            let x_4751 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4754 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_4748.x, x_4748.y) * vec2<f32>(x_4751.x, x_4751.y)) + vec2<f32>(x_4754.w, x_4754.y));
            let x_4758 : f32 = u_xlat14.x;
            u_xlat15.x = x_4758;
            let x_4760 : vec4<f32> = u_xlat12;
            let x_4763 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4766 : vec4<f32> = u_xlat15;
            let x_4768 : vec2<f32> = ((vec2<f32>(x_4760.x, x_4760.y) * vec2<f32>(x_4763.x, x_4763.y)) + vec2<f32>(x_4766.x, x_4766.y));
            let x_4769 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4768.x, x_4768.y, x_4769.z, x_4769.w);
            let x_4772 : vec4<f32> = u_xlat13;
            let x_4774 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_4772.x, x_4772.x, x_4772.x, x_4772.x) * x_4774);
            let x_4777 : vec4<f32> = u_xlat13;
            let x_4779 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_4777.y, x_4777.y, x_4777.y, x_4777.y) * x_4779);
            let x_4782 : vec4<f32> = u_xlat13;
            let x_4784 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_4782.z, x_4782.z, x_4782.z, x_4782.z) * x_4784);
            let x_4786 : vec4<f32> = u_xlat13;
            let x_4788 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_4786.w, x_4786.w, x_4786.w, x_4786.w) * x_4788);
            let x_4791 : vec4<f32> = u_xlat18;
            let x_4792 : vec2<f32> = vec2<f32>(x_4791.x, x_4791.y);
            let x_4794 : f32 = u_xlat11.z;
            txVec73 = vec3<f32>(x_4792.x, x_4792.y, x_4794);
            let x_4801 : vec3<f32> = txVec73;
            let x_4803 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4801.xy, x_4801.z);
            u_xlat87 = x_4803;
            let x_4805 : vec4<f32> = u_xlat18;
            let x_4806 : vec2<f32> = vec2<f32>(x_4805.z, x_4805.w);
            let x_4808 : f32 = u_xlat11.z;
            txVec74 = vec3<f32>(x_4806.x, x_4806.y, x_4808);
            let x_4815 : vec3<f32> = txVec74;
            let x_4817 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4815.xy, x_4815.z);
            u_xlat88 = x_4817;
            let x_4818 : f32 = u_xlat88;
            let x_4820 : f32 = u_xlat23.y;
            u_xlat88 = (x_4818 * x_4820);
            let x_4823 : f32 = u_xlat23.x;
            let x_4824 : f32 = u_xlat87;
            let x_4826 : f32 = u_xlat88;
            u_xlat87 = ((x_4823 * x_4824) + x_4826);
            let x_4829 : vec2<f32> = u_xlat64;
            let x_4831 : f32 = u_xlat11.z;
            txVec75 = vec3<f32>(x_4829.x, x_4829.y, x_4831);
            let x_4838 : vec3<f32> = txVec75;
            let x_4840 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4838.xy, x_4838.z);
            u_xlat88 = x_4840;
            let x_4842 : f32 = u_xlat23.z;
            let x_4843 : f32 = u_xlat88;
            let x_4845 : f32 = u_xlat87;
            u_xlat87 = ((x_4842 * x_4843) + x_4845);
            let x_4848 : vec4<f32> = u_xlat21;
            let x_4849 : vec2<f32> = vec2<f32>(x_4848.x, x_4848.y);
            let x_4851 : f32 = u_xlat11.z;
            txVec76 = vec3<f32>(x_4849.x, x_4849.y, x_4851);
            let x_4858 : vec3<f32> = txVec76;
            let x_4860 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4858.xy, x_4858.z);
            u_xlat88 = x_4860;
            let x_4862 : f32 = u_xlat23.w;
            let x_4863 : f32 = u_xlat88;
            let x_4865 : f32 = u_xlat87;
            u_xlat87 = ((x_4862 * x_4863) + x_4865);
            let x_4868 : vec4<f32> = u_xlat19;
            let x_4869 : vec2<f32> = vec2<f32>(x_4868.x, x_4868.y);
            let x_4871 : f32 = u_xlat11.z;
            txVec77 = vec3<f32>(x_4869.x, x_4869.y, x_4871);
            let x_4878 : vec3<f32> = txVec77;
            let x_4880 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4878.xy, x_4878.z);
            u_xlat88 = x_4880;
            let x_4882 : f32 = u_xlat24.x;
            let x_4883 : f32 = u_xlat88;
            let x_4885 : f32 = u_xlat87;
            u_xlat87 = ((x_4882 * x_4883) + x_4885);
            let x_4888 : vec4<f32> = u_xlat19;
            let x_4889 : vec2<f32> = vec2<f32>(x_4888.z, x_4888.w);
            let x_4891 : f32 = u_xlat11.z;
            txVec78 = vec3<f32>(x_4889.x, x_4889.y, x_4891);
            let x_4898 : vec3<f32> = txVec78;
            let x_4900 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4898.xy, x_4898.z);
            u_xlat88 = x_4900;
            let x_4902 : f32 = u_xlat24.y;
            let x_4903 : f32 = u_xlat88;
            let x_4905 : f32 = u_xlat87;
            u_xlat87 = ((x_4902 * x_4903) + x_4905);
            let x_4908 : vec4<f32> = u_xlat20;
            let x_4909 : vec2<f32> = vec2<f32>(x_4908.x, x_4908.y);
            let x_4911 : f32 = u_xlat11.z;
            txVec79 = vec3<f32>(x_4909.x, x_4909.y, x_4911);
            let x_4918 : vec3<f32> = txVec79;
            let x_4920 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4918.xy, x_4918.z);
            u_xlat88 = x_4920;
            let x_4922 : f32 = u_xlat24.z;
            let x_4923 : f32 = u_xlat88;
            let x_4925 : f32 = u_xlat87;
            u_xlat87 = ((x_4922 * x_4923) + x_4925);
            let x_4928 : vec4<f32> = u_xlat21;
            let x_4929 : vec2<f32> = vec2<f32>(x_4928.z, x_4928.w);
            let x_4931 : f32 = u_xlat11.z;
            txVec80 = vec3<f32>(x_4929.x, x_4929.y, x_4931);
            let x_4938 : vec3<f32> = txVec80;
            let x_4940 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4938.xy, x_4938.z);
            u_xlat88 = x_4940;
            let x_4942 : f32 = u_xlat24.w;
            let x_4943 : f32 = u_xlat88;
            let x_4945 : f32 = u_xlat87;
            u_xlat87 = ((x_4942 * x_4943) + x_4945);
            let x_4948 : vec4<f32> = u_xlat22;
            let x_4949 : vec2<f32> = vec2<f32>(x_4948.x, x_4948.y);
            let x_4951 : f32 = u_xlat11.z;
            txVec81 = vec3<f32>(x_4949.x, x_4949.y, x_4951);
            let x_4958 : vec3<f32> = txVec81;
            let x_4960 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4958.xy, x_4958.z);
            u_xlat88 = x_4960;
            let x_4962 : f32 = u_xlat25.x;
            let x_4963 : f32 = u_xlat88;
            let x_4965 : f32 = u_xlat87;
            u_xlat87 = ((x_4962 * x_4963) + x_4965);
            let x_4968 : vec4<f32> = u_xlat22;
            let x_4969 : vec2<f32> = vec2<f32>(x_4968.z, x_4968.w);
            let x_4971 : f32 = u_xlat11.z;
            txVec82 = vec3<f32>(x_4969.x, x_4969.y, x_4971);
            let x_4978 : vec3<f32> = txVec82;
            let x_4980 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4978.xy, x_4978.z);
            u_xlat88 = x_4980;
            let x_4982 : f32 = u_xlat25.y;
            let x_4983 : f32 = u_xlat88;
            let x_4985 : f32 = u_xlat87;
            u_xlat87 = ((x_4982 * x_4983) + x_4985);
            let x_4988 : vec2<f32> = u_xlat40;
            let x_4990 : f32 = u_xlat11.z;
            txVec83 = vec3<f32>(x_4988.x, x_4988.y, x_4990);
            let x_4997 : vec3<f32> = txVec83;
            let x_4999 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4997.xy, x_4997.z);
            u_xlat88 = x_4999;
            let x_5001 : f32 = u_xlat25.z;
            let x_5002 : f32 = u_xlat88;
            let x_5004 : f32 = u_xlat87;
            u_xlat87 = ((x_5001 * x_5002) + x_5004);
            let x_5007 : vec2<f32> = u_xlat72;
            let x_5009 : f32 = u_xlat11.z;
            txVec84 = vec3<f32>(x_5007.x, x_5007.y, x_5009);
            let x_5016 : vec3<f32> = txVec84;
            let x_5018 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5016.xy, x_5016.z);
            u_xlat88 = x_5018;
            let x_5020 : f32 = u_xlat25.w;
            let x_5021 : f32 = u_xlat88;
            let x_5023 : f32 = u_xlat87;
            u_xlat87 = ((x_5020 * x_5021) + x_5023);
            let x_5026 : vec4<f32> = u_xlat17;
            let x_5027 : vec2<f32> = vec2<f32>(x_5026.x, x_5026.y);
            let x_5029 : f32 = u_xlat11.z;
            txVec85 = vec3<f32>(x_5027.x, x_5027.y, x_5029);
            let x_5036 : vec3<f32> = txVec85;
            let x_5038 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5036.xy, x_5036.z);
            u_xlat88 = x_5038;
            let x_5040 : f32 = u_xlat13.x;
            let x_5041 : f32 = u_xlat88;
            let x_5043 : f32 = u_xlat87;
            u_xlat87 = ((x_5040 * x_5041) + x_5043);
            let x_5046 : vec4<f32> = u_xlat17;
            let x_5047 : vec2<f32> = vec2<f32>(x_5046.z, x_5046.w);
            let x_5049 : f32 = u_xlat11.z;
            txVec86 = vec3<f32>(x_5047.x, x_5047.y, x_5049);
            let x_5056 : vec3<f32> = txVec86;
            let x_5058 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5056.xy, x_5056.z);
            u_xlat88 = x_5058;
            let x_5060 : f32 = u_xlat13.y;
            let x_5061 : f32 = u_xlat88;
            let x_5063 : f32 = u_xlat87;
            u_xlat87 = ((x_5060 * x_5061) + x_5063);
            let x_5066 : vec2<f32> = u_xlat67;
            let x_5068 : f32 = u_xlat11.z;
            txVec87 = vec3<f32>(x_5066.x, x_5066.y, x_5068);
            let x_5075 : vec3<f32> = txVec87;
            let x_5077 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5075.xy, x_5075.z);
            u_xlat88 = x_5077;
            let x_5079 : f32 = u_xlat13.z;
            let x_5080 : f32 = u_xlat88;
            let x_5082 : f32 = u_xlat87;
            u_xlat87 = ((x_5079 * x_5080) + x_5082);
            let x_5085 : vec4<f32> = u_xlat12;
            let x_5086 : vec2<f32> = vec2<f32>(x_5085.x, x_5085.y);
            let x_5088 : f32 = u_xlat11.z;
            txVec88 = vec3<f32>(x_5086.x, x_5086.y, x_5088);
            let x_5095 : vec3<f32> = txVec88;
            let x_5097 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5095.xy, x_5095.z);
            u_xlat88 = x_5097;
            let x_5099 : f32 = u_xlat13.w;
            let x_5100 : f32 = u_xlat88;
            let x_5102 : f32 = u_xlat87;
            u_xlat86 = ((x_5099 * x_5100) + x_5102);
          }
        }
      } else {
        let x_5106 : vec4<f32> = u_xlat11;
        let x_5107 : vec2<f32> = vec2<f32>(x_5106.x, x_5106.y);
        let x_5109 : f32 = u_xlat11.z;
        txVec89 = vec3<f32>(x_5107.x, x_5107.y, x_5109);
        let x_5116 : vec3<f32> = txVec89;
        let x_5118 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5116.xy, x_5116.z);
        u_xlat86 = x_5118;
      }
      let x_5119 : i32 = u_xlati82;
      let x_5121 : f32 = x_265.x_AdditionalShadowParams[x_5119].x;
      u_xlat87 = (1.0f + -(x_5121));
      let x_5124 : f32 = u_xlat86;
      let x_5125 : i32 = u_xlati82;
      let x_5127 : f32 = x_265.x_AdditionalShadowParams[x_5125].x;
      let x_5129 : f32 = u_xlat87;
      u_xlat86 = ((x_5124 * x_5127) + x_5129);
      let x_5132 : f32 = u_xlat11.z;
      u_xlatb87 = (0.0f >= x_5132);
      let x_5136 : f32 = u_xlat11.z;
      u_xlatb88 = (x_5136 >= 1.0f);
      let x_5138 : bool = u_xlatb87;
      let x_5139 : bool = u_xlatb88;
      u_xlatb87 = (x_5138 | x_5139);
      let x_5141 : bool = u_xlatb87;
      let x_5142 : f32 = u_xlat86;
      u_xlat86 = select(x_5142, 1.0f, x_5141);
    } else {
      u_xlat86 = 1.0f;
    }
    let x_5145 : f32 = u_xlat86;
    u_xlat87 = (-(x_5145) + 1.0f);
    let x_5148 : f32 = u_xlat79;
    let x_5149 : f32 = u_xlat87;
    let x_5151 : f32 = u_xlat86;
    u_xlat86 = ((x_5148 * x_5149) + x_5151);
    let x_5154 : i32 = u_xlati82;
    u_xlati87 = (1i << bitcast<u32>((x_5154 & 31i)));
    let x_5158 : i32 = u_xlati87;
    let x_5161 : f32 = x_3265.x_AdditionalLightsCookieEnableBits;
    u_xlati87 = bitcast<i32>((bitcast<u32>(x_5158) & bitcast<u32>(x_5161)));
    let x_5165 : i32 = u_xlati87;
    if ((x_5165 != 0i)) {
      let x_5169 : i32 = u_xlati82;
      let x_5171 : f32 = x_3265.x_AdditionalLightsLightTypes[x_5169].el;
      u_xlati87 = i32(x_5171);
      let x_5174 : i32 = u_xlati87;
      u_xlati88 = select(1i, 0i, (x_5174 != 0i));
      let x_5178 : i32 = u_xlati82;
      u_xlati11 = (x_5178 << bitcast<u32>(2i));
      let x_5180 : i32 = u_xlati88;
      if ((x_5180 != 0i)) {
        let x_5185 : vec3<f32> = vs_INTERP8;
        let x_5187 : i32 = u_xlati11;
        let x_5190 : i32 = u_xlati11;
        let x_5194 : vec4<f32> = x_3265.x_AdditionalLightsWorldToLights[((x_5187 + 1i) / 4i)][((x_5190 + 1i) % 4i)];
        u_xlat37 = (vec3<f32>(x_5185.y, x_5185.y, x_5185.y) * vec3<f32>(x_5194.x, x_5194.y, x_5194.w));
        let x_5197 : i32 = u_xlati11;
        let x_5199 : i32 = u_xlati11;
        let x_5202 : vec4<f32> = x_3265.x_AdditionalLightsWorldToLights[(x_5197 / 4i)][(x_5199 % 4i)];
        let x_5204 : vec3<f32> = vs_INTERP8;
        let x_5207 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_5202.x, x_5202.y, x_5202.w) * vec3<f32>(x_5204.x, x_5204.x, x_5204.x)) + x_5207);
        let x_5209 : i32 = u_xlati11;
        let x_5212 : i32 = u_xlati11;
        let x_5216 : vec4<f32> = x_3265.x_AdditionalLightsWorldToLights[((x_5209 + 2i) / 4i)][((x_5212 + 2i) % 4i)];
        let x_5218 : vec3<f32> = vs_INTERP8;
        let x_5221 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_5216.x, x_5216.y, x_5216.w) * vec3<f32>(x_5218.z, x_5218.z, x_5218.z)) + x_5221);
        let x_5223 : vec3<f32> = u_xlat37;
        let x_5224 : i32 = u_xlati11;
        let x_5227 : i32 = u_xlati11;
        let x_5231 : vec4<f32> = x_3265.x_AdditionalLightsWorldToLights[((x_5224 + 3i) / 4i)][((x_5227 + 3i) % 4i)];
        u_xlat37 = (x_5223 + vec3<f32>(x_5231.x, x_5231.y, x_5231.w));
        let x_5234 : vec3<f32> = u_xlat37;
        let x_5236 : vec3<f32> = u_xlat37;
        let x_5238 : vec2<f32> = (vec2<f32>(x_5234.x, x_5234.y) / vec2<f32>(x_5236.z, x_5236.z));
        let x_5239 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_5238.x, x_5238.y, x_5239.z);
        let x_5241 : vec3<f32> = u_xlat37;
        let x_5244 : vec2<f32> = ((vec2<f32>(x_5241.x, x_5241.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_5245 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_5244.x, x_5244.y, x_5245.z);
        let x_5247 : vec3<f32> = u_xlat37;
        let x_5251 : vec2<f32> = clamp(vec2<f32>(x_5247.x, x_5247.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_5252 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_5251.x, x_5251.y, x_5252.z);
        let x_5254 : i32 = u_xlati82;
        let x_5256 : vec4<f32> = x_3265.x_AdditionalLightsCookieAtlasUVRects[x_5254];
        let x_5258 : vec3<f32> = u_xlat37;
        let x_5261 : i32 = u_xlati82;
        let x_5263 : vec4<f32> = x_3265.x_AdditionalLightsCookieAtlasUVRects[x_5261];
        let x_5265 : vec2<f32> = ((vec2<f32>(x_5256.x, x_5256.y) * vec2<f32>(x_5258.x, x_5258.y)) + vec2<f32>(x_5263.z, x_5263.w));
        let x_5266 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_5265.x, x_5265.y, x_5266.z);
      } else {
        let x_5269 : i32 = u_xlati87;
        u_xlatb87 = (x_5269 == 1i);
        let x_5271 : bool = u_xlatb87;
        u_xlati87 = select(0i, 1i, x_5271);
        let x_5273 : i32 = u_xlati87;
        if ((x_5273 != 0i)) {
          let x_5277 : vec3<f32> = vs_INTERP8;
          let x_5279 : i32 = u_xlati11;
          let x_5282 : i32 = u_xlati11;
          let x_5286 : vec4<f32> = x_3265.x_AdditionalLightsWorldToLights[((x_5279 + 1i) / 4i)][((x_5282 + 1i) % 4i)];
          let x_5288 : vec2<f32> = (vec2<f32>(x_5277.y, x_5277.y) * vec2<f32>(x_5286.x, x_5286.y));
          let x_5289 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5288.x, x_5288.y, x_5289.z, x_5289.w);
          let x_5291 : i32 = u_xlati11;
          let x_5293 : i32 = u_xlati11;
          let x_5296 : vec4<f32> = x_3265.x_AdditionalLightsWorldToLights[(x_5291 / 4i)][(x_5293 % 4i)];
          let x_5298 : vec3<f32> = vs_INTERP8;
          let x_5301 : vec4<f32> = u_xlat12;
          let x_5303 : vec2<f32> = ((vec2<f32>(x_5296.x, x_5296.y) * vec2<f32>(x_5298.x, x_5298.x)) + vec2<f32>(x_5301.x, x_5301.y));
          let x_5304 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5303.x, x_5303.y, x_5304.z, x_5304.w);
          let x_5306 : i32 = u_xlati11;
          let x_5309 : i32 = u_xlati11;
          let x_5313 : vec4<f32> = x_3265.x_AdditionalLightsWorldToLights[((x_5306 + 2i) / 4i)][((x_5309 + 2i) % 4i)];
          let x_5315 : vec3<f32> = vs_INTERP8;
          let x_5318 : vec4<f32> = u_xlat12;
          let x_5320 : vec2<f32> = ((vec2<f32>(x_5313.x, x_5313.y) * vec2<f32>(x_5315.z, x_5315.z)) + vec2<f32>(x_5318.x, x_5318.y));
          let x_5321 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5320.x, x_5320.y, x_5321.z, x_5321.w);
          let x_5323 : vec4<f32> = u_xlat12;
          let x_5325 : i32 = u_xlati11;
          let x_5328 : i32 = u_xlati11;
          let x_5332 : vec4<f32> = x_3265.x_AdditionalLightsWorldToLights[((x_5325 + 3i) / 4i)][((x_5328 + 3i) % 4i)];
          let x_5334 : vec2<f32> = (vec2<f32>(x_5323.x, x_5323.y) + vec2<f32>(x_5332.x, x_5332.y));
          let x_5335 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5334.x, x_5334.y, x_5335.z, x_5335.w);
          let x_5337 : vec4<f32> = u_xlat12;
          let x_5340 : vec2<f32> = ((vec2<f32>(x_5337.x, x_5337.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_5341 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5340.x, x_5340.y, x_5341.z, x_5341.w);
          let x_5343 : vec4<f32> = u_xlat12;
          let x_5345 : vec2<f32> = fract(vec2<f32>(x_5343.x, x_5343.y));
          let x_5346 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5345.x, x_5345.y, x_5346.z, x_5346.w);
          let x_5348 : i32 = u_xlati82;
          let x_5350 : vec4<f32> = x_3265.x_AdditionalLightsCookieAtlasUVRects[x_5348];
          let x_5352 : vec4<f32> = u_xlat12;
          let x_5355 : i32 = u_xlati82;
          let x_5357 : vec4<f32> = x_3265.x_AdditionalLightsCookieAtlasUVRects[x_5355];
          let x_5359 : vec2<f32> = ((vec2<f32>(x_5350.x, x_5350.y) * vec2<f32>(x_5352.x, x_5352.y)) + vec2<f32>(x_5357.z, x_5357.w));
          let x_5360 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_5359.x, x_5359.y, x_5360.z);
        } else {
          let x_5363 : vec3<f32> = vs_INTERP8;
          let x_5365 : i32 = u_xlati11;
          let x_5368 : i32 = u_xlati11;
          let x_5372 : vec4<f32> = x_3265.x_AdditionalLightsWorldToLights[((x_5365 + 1i) / 4i)][((x_5368 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_5363.y, x_5363.y, x_5363.y, x_5363.y) * x_5372);
          let x_5374 : i32 = u_xlati11;
          let x_5376 : i32 = u_xlati11;
          let x_5379 : vec4<f32> = x_3265.x_AdditionalLightsWorldToLights[(x_5374 / 4i)][(x_5376 % 4i)];
          let x_5380 : vec3<f32> = vs_INTERP8;
          let x_5383 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_5379 * vec4<f32>(x_5380.x, x_5380.x, x_5380.x, x_5380.x)) + x_5383);
          let x_5385 : i32 = u_xlati11;
          let x_5388 : i32 = u_xlati11;
          let x_5392 : vec4<f32> = x_3265.x_AdditionalLightsWorldToLights[((x_5385 + 2i) / 4i)][((x_5388 + 2i) % 4i)];
          let x_5393 : vec3<f32> = vs_INTERP8;
          let x_5396 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_5392 * vec4<f32>(x_5393.z, x_5393.z, x_5393.z, x_5393.z)) + x_5396);
          let x_5398 : vec4<f32> = u_xlat12;
          let x_5399 : i32 = u_xlati11;
          let x_5402 : i32 = u_xlati11;
          let x_5406 : vec4<f32> = x_3265.x_AdditionalLightsWorldToLights[((x_5399 + 3i) / 4i)][((x_5402 + 3i) % 4i)];
          u_xlat12 = (x_5398 + x_5406);
          let x_5408 : vec4<f32> = u_xlat12;
          let x_5410 : vec4<f32> = u_xlat12;
          let x_5412 : vec3<f32> = (vec3<f32>(x_5408.x, x_5408.y, x_5408.z) / vec3<f32>(x_5410.w, x_5410.w, x_5410.w));
          let x_5413 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5412.x, x_5412.y, x_5412.z, x_5413.w);
          let x_5415 : vec4<f32> = u_xlat12;
          let x_5417 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(vec3<f32>(x_5415.x, x_5415.y, x_5415.z), vec3<f32>(x_5417.x, x_5417.y, x_5417.z));
          let x_5420 : f32 = u_xlat87;
          u_xlat87 = inverseSqrt(x_5420);
          let x_5422 : f32 = u_xlat87;
          let x_5424 : vec4<f32> = u_xlat12;
          let x_5426 : vec3<f32> = (vec3<f32>(x_5422, x_5422, x_5422) * vec3<f32>(x_5424.x, x_5424.y, x_5424.z));
          let x_5427 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5426.x, x_5426.y, x_5426.z, x_5427.w);
          let x_5429 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(abs(vec3<f32>(x_5429.x, x_5429.y, x_5429.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_5434 : f32 = u_xlat87;
          u_xlat87 = max(x_5434, 0.00000099999999747524f);
          let x_5437 : f32 = u_xlat87;
          u_xlat87 = (1.0f / x_5437);
          let x_5439 : f32 = u_xlat87;
          let x_5441 : vec4<f32> = u_xlat12;
          let x_5443 : vec3<f32> = (vec3<f32>(x_5439, x_5439, x_5439) * vec3<f32>(x_5441.z, x_5441.x, x_5441.y));
          let x_5444 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_5443.x, x_5443.y, x_5443.z, x_5444.w);
          let x_5447 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_5447);
          let x_5451 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_5451, 0.0f, 1.0f);
          let x_5454 : vec4<f32> = u_xlat13;
          let x_5456 : vec4<bool> = (vec4<f32>(x_5454.y, x_5454.y, x_5454.y, x_5454.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_5457 : vec2<bool> = vec2<bool>(x_5456.x, x_5456.w);
          let x_5458 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_5457.x, x_5458.y, x_5458.z, x_5457.y);
          let x_5461 : bool = u_xlatb11.x;
          if (x_5461) {
            let x_5466 : f32 = u_xlat13.x;
            x_5462 = x_5466;
          } else {
            let x_5469 : f32 = u_xlat13.x;
            x_5462 = -(x_5469);
          }
          let x_5471 : f32 = x_5462;
          u_xlat11.x = x_5471;
          let x_5474 : bool = u_xlatb11.w;
          if (x_5474) {
            let x_5479 : f32 = u_xlat13.x;
            x_5475 = x_5479;
          } else {
            let x_5482 : f32 = u_xlat13.x;
            x_5475 = -(x_5482);
          }
          let x_5484 : f32 = x_5475;
          u_xlat11.w = x_5484;
          let x_5486 : vec4<f32> = u_xlat12;
          let x_5488 : f32 = u_xlat87;
          let x_5491 : vec4<f32> = u_xlat11;
          let x_5493 : vec2<f32> = ((vec2<f32>(x_5486.x, x_5486.y) * vec2<f32>(x_5488, x_5488)) + vec2<f32>(x_5491.x, x_5491.w));
          let x_5494 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_5493.x, x_5494.y, x_5494.z, x_5493.y);
          let x_5496 : vec4<f32> = u_xlat11;
          let x_5499 : vec2<f32> = ((vec2<f32>(x_5496.x, x_5496.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_5500 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_5499.x, x_5500.y, x_5500.z, x_5499.y);
          let x_5502 : vec4<f32> = u_xlat11;
          let x_5506 : vec2<f32> = clamp(vec2<f32>(x_5502.x, x_5502.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_5507 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_5506.x, x_5507.y, x_5507.z, x_5506.y);
          let x_5509 : i32 = u_xlati82;
          let x_5511 : vec4<f32> = x_3265.x_AdditionalLightsCookieAtlasUVRects[x_5509];
          let x_5513 : vec4<f32> = u_xlat11;
          let x_5516 : i32 = u_xlati82;
          let x_5518 : vec4<f32> = x_3265.x_AdditionalLightsCookieAtlasUVRects[x_5516];
          let x_5520 : vec2<f32> = ((vec2<f32>(x_5511.x, x_5511.y) * vec2<f32>(x_5513.x, x_5513.w)) + vec2<f32>(x_5518.z, x_5518.w));
          let x_5521 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_5520.x, x_5520.y, x_5521.z);
        }
      }
      let x_5528 : vec3<f32> = u_xlat37;
      let x_5530 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_5528.x, x_5528.y), 0.0f);
      u_xlat11 = x_5530;
      let x_5532 : bool = u_xlatb7.y;
      if (x_5532) {
        let x_5537 : f32 = u_xlat11.w;
        x_5533 = x_5537;
      } else {
        let x_5540 : f32 = u_xlat11.x;
        x_5533 = x_5540;
      }
      let x_5541 : f32 = x_5533;
      u_xlat87 = x_5541;
      let x_5543 : bool = u_xlatb7.x;
      if (x_5543) {
        let x_5547 : vec4<f32> = u_xlat11;
        x_5544 = vec3<f32>(x_5547.x, x_5547.y, x_5547.z);
      } else {
        let x_5550 : f32 = u_xlat87;
        x_5544 = vec3<f32>(x_5550, x_5550, x_5550);
      }
      let x_5552 : vec3<f32> = x_5544;
      let x_5553 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_5552.x, x_5552.y, x_5552.z, x_5553.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_5559 : vec4<f32> = u_xlat11;
    let x_5561 : i32 = u_xlati82;
    let x_5563 : vec4<f32> = x_3712.x_AdditionalLightsColor[x_5561];
    let x_5565 : vec3<f32> = (vec3<f32>(x_5559.x, x_5559.y, x_5559.z) * vec3<f32>(x_5563.x, x_5563.y, x_5563.z));
    let x_5566 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_5565.x, x_5565.y, x_5565.z, x_5566.w);
    let x_5569 : f32 = u_xlat59.x;
    let x_5570 : f32 = u_xlat86;
    u_xlat82 = (x_5569 * x_5570);
    let x_5572 : vec4<f32> = u_xlat3;
    let x_5574 : vec4<f32> = u_xlat10;
    u_xlat59.x = dot(vec3<f32>(x_5572.x, x_5572.y, x_5572.z), vec3<f32>(x_5574.x, x_5574.y, x_5574.z));
    let x_5579 : f32 = u_xlat59.x;
    u_xlat59.x = clamp(x_5579, 0.0f, 1.0f);
    let x_5582 : f32 = u_xlat82;
    let x_5584 : f32 = u_xlat59.x;
    u_xlat82 = (x_5582 * x_5584);
    let x_5586 : f32 = u_xlat82;
    let x_5588 : vec4<f32> = u_xlat11;
    let x_5590 : vec3<f32> = (vec3<f32>(x_5586, x_5586, x_5586) * vec3<f32>(x_5588.x, x_5588.y, x_5588.z));
    let x_5591 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_5590.x, x_5590.y, x_5590.z, x_5591.w);
    let x_5593 : vec4<f32> = u_xlat9;
    let x_5595 : f32 = u_xlat85;
    let x_5598 : vec3<f32> = u_xlat2;
    let x_5599 : vec3<f32> = ((vec3<f32>(x_5593.x, x_5593.y, x_5593.z) * vec3<f32>(x_5595, x_5595, x_5595)) + x_5598);
    let x_5600 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_5599.x, x_5599.y, x_5599.z, x_5600.w);
    let x_5602 : vec4<f32> = u_xlat9;
    let x_5604 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(vec3<f32>(x_5602.x, x_5602.y, x_5602.z), vec3<f32>(x_5604.x, x_5604.y, x_5604.z));
    let x_5607 : f32 = u_xlat82;
    u_xlat82 = max(x_5607, 1.17549435e-38f);
    let x_5609 : f32 = u_xlat82;
    u_xlat82 = inverseSqrt(x_5609);
    let x_5611 : f32 = u_xlat82;
    let x_5613 : vec4<f32> = u_xlat9;
    let x_5615 : vec3<f32> = (vec3<f32>(x_5611, x_5611, x_5611) * vec3<f32>(x_5613.x, x_5613.y, x_5613.z));
    let x_5616 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_5615.x, x_5615.y, x_5615.z, x_5616.w);
    let x_5618 : vec4<f32> = u_xlat3;
    let x_5620 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(vec3<f32>(x_5618.x, x_5618.y, x_5618.z), vec3<f32>(x_5620.x, x_5620.y, x_5620.z));
    let x_5623 : f32 = u_xlat82;
    u_xlat82 = clamp(x_5623, 0.0f, 1.0f);
    let x_5625 : vec4<f32> = u_xlat10;
    let x_5627 : vec4<f32> = u_xlat9;
    u_xlat59.x = dot(vec3<f32>(x_5625.x, x_5625.y, x_5625.z), vec3<f32>(x_5627.x, x_5627.y, x_5627.z));
    let x_5632 : f32 = u_xlat59.x;
    u_xlat59.x = clamp(x_5632, 0.0f, 1.0f);
    let x_5635 : f32 = u_xlat82;
    let x_5636 : f32 = u_xlat82;
    u_xlat82 = (x_5635 * x_5636);
    let x_5638 : f32 = u_xlat82;
    let x_5640 : f32 = u_xlat53.x;
    u_xlat82 = ((x_5638 * x_5640) + 1.00001001358032226562f);
    let x_5644 : f32 = u_xlat59.x;
    let x_5646 : f32 = u_xlat59.x;
    u_xlat59.x = (x_5644 * x_5646);
    let x_5649 : f32 = u_xlat82;
    let x_5650 : f32 = u_xlat82;
    u_xlat82 = (x_5649 * x_5650);
    let x_5653 : f32 = u_xlat59.x;
    u_xlat59.x = max(x_5653, 0.10000000149011611938f);
    let x_5656 : f32 = u_xlat82;
    let x_5658 : f32 = u_xlat59.x;
    u_xlat82 = (x_5656 * x_5658);
    let x_5661 : f32 = u_xlat5.x;
    let x_5662 : f32 = u_xlat82;
    u_xlat82 = (x_5661 * x_5662);
    let x_5664 : f32 = u_xlat81;
    let x_5665 : f32 = u_xlat82;
    u_xlat82 = (x_5664 / x_5665);
    let x_5667 : f32 = u_xlat82;
    let x_5670 : vec3<f32> = u_xlat4;
    let x_5671 : vec3<f32> = ((vec3<f32>(x_5667, x_5667, x_5667) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_5670);
    let x_5672 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_5671.x, x_5671.y, x_5671.z, x_5672.w);
    let x_5674 : vec4<f32> = u_xlat9;
    let x_5676 : vec4<f32> = u_xlat11;
    let x_5679 : vec4<f32> = u_xlat8;
    let x_5681 : vec3<f32> = ((vec3<f32>(x_5674.x, x_5674.y, x_5674.z) * vec3<f32>(x_5676.x, x_5676.y, x_5676.z)) + vec3<f32>(x_5679.x, x_5679.y, x_5679.z));
    let x_5682 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_5681.x, x_5681.y, x_5681.z, x_5682.w);

    continuing {
      let x_5684 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_5684 + bitcast<u32>(1i));
    }
  }
  let x_5686 : vec3<f32> = u_xlat31;
  let x_5687 : vec4<f32> = u_xlat6;
  let x_5690 : vec3<f32> = u_xlat32;
  u_xlat2 = ((x_5686 * vec3<f32>(x_5687.x, x_5687.x, x_5687.x)) + x_5690);
  let x_5692 : vec4<f32> = u_xlat8;
  let x_5694 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_5692.x, x_5692.y, x_5692.z) + x_5694);
  let x_5698 : vec4<f32> = vs_INTERP6;
  let x_5700 : vec3<f32> = u_xlat0;
  let x_5702 : vec3<f32> = u_xlat2;
  let x_5703 : vec3<f32> = ((vec3<f32>(x_5698.w, x_5698.w, x_5698.w) * x_5700) + x_5702);
  let x_5704 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_5703.x, x_5703.y, x_5703.z, x_5704.w);
  let x_5706 : bool = u_xlatb27;
  if (x_5706) {
    let x_5711 : f32 = u_xlat1.x;
    x_5707 = x_5711;
  } else {
    x_5707 = 1.0f;
  }
  let x_5713 : f32 = x_5707;
  SV_Target0.w = x_5713;
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


