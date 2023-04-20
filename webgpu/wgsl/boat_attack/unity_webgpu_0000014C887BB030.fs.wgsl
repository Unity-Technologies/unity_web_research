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

@group(0) @binding(5) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(11) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP5 : vec4<f32>;

var<private> u_xlat4 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_204 : UnityPerMaterial;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(6) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(12) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat31 : vec3<f32>;

var<private> vs_INTERP6 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_265 : LightShadows;

var<private> u_xlatb79 : bool;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

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

var<private> u_xlat81 : f32;

var<private> vs_INTERP3 : vec4<f32>;

var<private> u_xlatb32 : vec2<bool>;

var<private> u_xlat32 : vec3<f32>;

var<private> u_xlat58 : f32;

var<private> u_xlat65 : vec2<f32>;

@group(1) @binding(4) var<uniform> x_3291 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlat85 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu78 : u32;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlatu82 : u32;

var<private> u_xlati59 : i32;

var<private> u_xlati82 : i32;

@group(1) @binding(1) var<uniform> x_3738 : AdditionalLights;

var<private> u_xlat86 : f32;

var<private> u_xlati86 : i32;

var<private> u_xlatb87 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat88 : f32;

var<private> u_xlat87 : f32;

var<private> u_xlatb86 : bool;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_LinearClamp : sampler;

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
  var x_3374 : f32;
  var x_3385 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_3895 : f32;
  var x_3905 : f32;
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
  var x_5488 : f32;
  var x_5501 : f32;
  var x_5559 : f32;
  var x_5570 : vec3<f32>;
  var x_5733 : f32;
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
  u_xlat3.w = 1.0f;
  let x_1904 : vec4<f32> = x_148.unity_SHAr;
  let x_1905 : vec4<f32> = u_xlat3;
  u_xlat6.x = dot(x_1904, x_1905);
  let x_1910 : vec4<f32> = x_148.unity_SHAg;
  let x_1911 : vec4<f32> = u_xlat3;
  u_xlat6.y = dot(x_1910, x_1911);
  let x_1916 : vec4<f32> = x_148.unity_SHAb;
  let x_1917 : vec4<f32> = u_xlat3;
  u_xlat6.z = dot(x_1916, x_1917);
  let x_1920 : vec4<f32> = u_xlat3;
  let x_1922 : vec4<f32> = u_xlat3;
  u_xlat7 = (vec4<f32>(x_1920.y, x_1920.z, x_1920.z, x_1920.x) * vec4<f32>(x_1922.x, x_1922.y, x_1922.z, x_1922.z));
  let x_1927 : vec4<f32> = x_148.unity_SHBr;
  let x_1928 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_1927, x_1928);
  let x_1933 : vec4<f32> = x_148.unity_SHBg;
  let x_1934 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_1933, x_1934);
  let x_1938 : vec4<f32> = x_148.unity_SHBb;
  let x_1939 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_1938, x_1939);
  let x_1943 : f32 = u_xlat3.y;
  let x_1945 : f32 = u_xlat3.y;
  u_xlat53.x = (x_1943 * x_1945);
  let x_1949 : f32 = u_xlat3.x;
  let x_1951 : f32 = u_xlat3.x;
  let x_1954 : f32 = u_xlat53.x;
  u_xlat53.x = ((x_1949 * x_1951) + -(x_1954));
  let x_1960 : vec4<f32> = x_148.unity_SHC;
  let x_1962 : vec2<f32> = u_xlat53;
  let x_1965 : vec4<f32> = u_xlat8;
  u_xlat31 = ((vec3<f32>(x_1960.x, x_1960.y, x_1960.z) * vec3<f32>(x_1962.x, x_1962.x, x_1962.x)) + vec3<f32>(x_1965.x, x_1965.y, x_1965.z));
  let x_1968 : vec3<f32> = u_xlat31;
  let x_1969 : vec4<f32> = u_xlat6;
  u_xlat31 = (x_1968 + vec3<f32>(x_1969.x, x_1969.y, x_1969.z));
  let x_1972 : vec3<f32> = u_xlat31;
  u_xlat31 = max(x_1972, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1976 : f32 = u_xlat5.x;
  u_xlat5.x = x_1976;
  let x_1979 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_1979, 0.0f, 1.0f);
  let x_1983 : f32 = u_xlat1.x;
  u_xlat1.x = x_1983;
  let x_1986 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1986, 0.0f, 1.0f);
  let x_1989 : vec3<f32> = u_xlat4;
  u_xlat4 = (x_1989 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_1994 : f32 = u_xlat5.x;
  u_xlat53.x = (-(x_1994) + 1.0f);
  let x_1999 : f32 = u_xlat53.x;
  let x_2001 : f32 = u_xlat53.x;
  u_xlat79 = (x_1999 * x_2001);
  let x_2003 : f32 = u_xlat79;
  u_xlat79 = max(x_2003, 0.0078125f);
  let x_2007 : f32 = u_xlat79;
  let x_2008 : f32 = u_xlat79;
  u_xlat81 = (x_2007 * x_2008);
  let x_2011 : f32 = u_xlat5.x;
  u_xlat82 = (x_2011 + 0.04000002145767211914f);
  let x_2014 : f32 = u_xlat82;
  u_xlat82 = min(x_2014, 1.0f);
  let x_2016 : f32 = u_xlat79;
  u_xlat5.x = ((x_2016 * 4.0f) + 2.0f);
  let x_2022 : f32 = vs_INTERP6.w;
  u_xlat6.x = min(x_2022, 1.0f);
  let x_2025 : bool = u_xlatb78;
  if (x_2025) {
    let x_2029 : f32 = x_265.x_MainLightShadowParams.y;
    u_xlatb78 = (x_2029 == 1.0f);
    let x_2031 : bool = u_xlatb78;
    if (x_2031) {
      let x_2035 : vec4<f32> = vs_INTERP3;
      let x_2038 : vec4<f32> = x_265.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_2035.x, x_2035.y, x_2035.x, x_2035.y) + x_2038);
      let x_2041 : vec4<f32> = u_xlat7;
      let x_2042 : vec2<f32> = vec2<f32>(x_2041.x, x_2041.y);
      let x_2044 : f32 = vs_INTERP3.z;
      txVec30 = vec3<f32>(x_2042.x, x_2042.y, x_2044);
      let x_2051 : vec3<f32> = txVec30;
      let x_2053 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2051.xy, x_2051.z);
      u_xlat8.x = x_2053;
      let x_2056 : vec4<f32> = u_xlat7;
      let x_2057 : vec2<f32> = vec2<f32>(x_2056.z, x_2056.w);
      let x_2059 : f32 = vs_INTERP3.z;
      txVec31 = vec3<f32>(x_2057.x, x_2057.y, x_2059);
      let x_2066 : vec3<f32> = txVec31;
      let x_2068 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2066.xy, x_2066.z);
      u_xlat8.y = x_2068;
      let x_2070 : vec4<f32> = vs_INTERP3;
      let x_2073 : vec4<f32> = x_265.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_2070.x, x_2070.y, x_2070.x, x_2070.y) + x_2073);
      let x_2076 : vec4<f32> = u_xlat7;
      let x_2077 : vec2<f32> = vec2<f32>(x_2076.x, x_2076.y);
      let x_2079 : f32 = vs_INTERP3.z;
      txVec32 = vec3<f32>(x_2077.x, x_2077.y, x_2079);
      let x_2086 : vec3<f32> = txVec32;
      let x_2088 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2086.xy, x_2086.z);
      u_xlat8.z = x_2088;
      let x_2091 : vec4<f32> = u_xlat7;
      let x_2092 : vec2<f32> = vec2<f32>(x_2091.z, x_2091.w);
      let x_2094 : f32 = vs_INTERP3.z;
      txVec33 = vec3<f32>(x_2092.x, x_2092.y, x_2094);
      let x_2101 : vec3<f32> = txVec33;
      let x_2103 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2101.xy, x_2101.z);
      u_xlat8.w = x_2103;
      let x_2105 : vec4<f32> = u_xlat8;
      u_xlat78 = dot(x_2105, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_2110 : f32 = x_265.x_MainLightShadowParams.y;
      u_xlatb32.x = (x_2110 == 2.0f);
      let x_2114 : bool = u_xlatb32.x;
      if (x_2114) {
        let x_2118 : vec4<f32> = vs_INTERP3;
        let x_2121 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2124 : vec2<f32> = ((vec2<f32>(x_2118.x, x_2118.y) * vec2<f32>(x_2121.z, x_2121.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2125 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_2124.x, x_2124.y, x_2125.z);
        let x_2127 : vec3<f32> = u_xlat32;
        let x_2129 : vec2<f32> = floor(vec2<f32>(x_2127.x, x_2127.y));
        let x_2130 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_2129.x, x_2129.y, x_2130.z);
        let x_2132 : vec4<f32> = vs_INTERP3;
        let x_2135 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2138 : vec3<f32> = u_xlat32;
        let x_2141 : vec2<f32> = ((vec2<f32>(x_2132.x, x_2132.y) * vec2<f32>(x_2135.z, x_2135.w)) + -(vec2<f32>(x_2138.x, x_2138.y)));
        let x_2142 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2141.x, x_2141.y, x_2142.z, x_2142.w);
        let x_2144 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_2144.x, x_2144.x, x_2144.y, x_2144.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2147 : vec4<f32> = u_xlat8;
        let x_2149 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_2147.x, x_2147.x, x_2147.z, x_2147.z) * vec4<f32>(x_2149.x, x_2149.x, x_2149.z, x_2149.z));
        let x_2152 : vec4<f32> = u_xlat9;
        u_xlat59 = (vec2<f32>(x_2152.y, x_2152.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_2155 : vec4<f32> = u_xlat9;
        let x_2158 : vec4<f32> = u_xlat7;
        let x_2161 : vec2<f32> = ((vec2<f32>(x_2155.x, x_2155.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2158.x, x_2158.y)));
        let x_2162 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2161.x, x_2162.y, x_2161.y, x_2162.w);
        let x_2164 : vec4<f32> = u_xlat7;
        let x_2167 : vec2<f32> = (-(vec2<f32>(x_2164.x, x_2164.y)) + vec2<f32>(1.0f, 1.0f));
        let x_2168 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2167.x, x_2167.y, x_2168.z, x_2168.w);
        let x_2170 : vec4<f32> = u_xlat7;
        u_xlat61 = min(vec2<f32>(x_2170.x, x_2170.y), vec2<f32>(0.0f, 0.0f));
        let x_2173 : vec2<f32> = u_xlat61;
        let x_2175 : vec2<f32> = u_xlat61;
        let x_2177 : vec4<f32> = u_xlat9;
        u_xlat61 = ((-(x_2173) * x_2175) + vec2<f32>(x_2177.x, x_2177.y));
        let x_2180 : vec4<f32> = u_xlat7;
        let x_2182 : vec2<f32> = max(vec2<f32>(x_2180.x, x_2180.y), vec2<f32>(0.0f, 0.0f));
        let x_2183 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2182.x, x_2182.y, x_2183.z, x_2183.w);
        let x_2185 : vec4<f32> = u_xlat7;
        let x_2188 : vec4<f32> = u_xlat7;
        let x_2191 : vec4<f32> = u_xlat8;
        let x_2193 : vec2<f32> = ((-(vec2<f32>(x_2185.x, x_2185.y)) * vec2<f32>(x_2188.x, x_2188.y)) + vec2<f32>(x_2191.y, x_2191.w));
        let x_2194 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2193.x, x_2193.y, x_2194.z, x_2194.w);
        let x_2196 : vec2<f32> = u_xlat61;
        u_xlat61 = (x_2196 + vec2<f32>(1.0f, 1.0f));
        let x_2198 : vec4<f32> = u_xlat7;
        let x_2200 : vec2<f32> = (vec2<f32>(x_2198.x, x_2198.y) + vec2<f32>(1.0f, 1.0f));
        let x_2201 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2200.x, x_2200.y, x_2201.z, x_2201.w);
        let x_2203 : vec4<f32> = u_xlat8;
        let x_2205 : vec2<f32> = (vec2<f32>(x_2203.x, x_2203.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2206 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2205.x, x_2205.y, x_2206.z, x_2206.w);
        let x_2208 : vec4<f32> = u_xlat9;
        let x_2210 : vec2<f32> = (vec2<f32>(x_2208.x, x_2208.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2211 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2210.x, x_2210.y, x_2211.z, x_2211.w);
        let x_2213 : vec2<f32> = u_xlat61;
        let x_2214 : vec2<f32> = (x_2213 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2215 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2214.x, x_2214.y, x_2215.z, x_2215.w);
        let x_2217 : vec4<f32> = u_xlat7;
        let x_2219 : vec2<f32> = (vec2<f32>(x_2217.x, x_2217.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2220 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2219.x, x_2219.y, x_2220.z, x_2220.w);
        let x_2222 : vec4<f32> = u_xlat8;
        let x_2224 : vec2<f32> = (vec2<f32>(x_2222.y, x_2222.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2225 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2224.x, x_2224.y, x_2225.z, x_2225.w);
        let x_2228 : f32 = u_xlat9.x;
        u_xlat10.z = x_2228;
        let x_2231 : f32 = u_xlat7.x;
        u_xlat10.w = x_2231;
        let x_2234 : f32 = u_xlat12.x;
        u_xlat11.z = x_2234;
        let x_2237 : f32 = u_xlat59.x;
        u_xlat11.w = x_2237;
        let x_2239 : vec4<f32> = u_xlat10;
        let x_2241 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_2239.z, x_2239.w, x_2239.x, x_2239.z) + vec4<f32>(x_2241.z, x_2241.w, x_2241.x, x_2241.z));
        let x_2245 : f32 = u_xlat10.y;
        u_xlat9.z = x_2245;
        let x_2248 : f32 = u_xlat7.y;
        u_xlat9.w = x_2248;
        let x_2251 : f32 = u_xlat11.y;
        u_xlat12.z = x_2251;
        let x_2254 : f32 = u_xlat59.y;
        u_xlat12.w = x_2254;
        let x_2256 : vec4<f32> = u_xlat9;
        let x_2258 : vec4<f32> = u_xlat12;
        let x_2260 : vec3<f32> = (vec3<f32>(x_2256.z, x_2256.y, x_2256.w) + vec3<f32>(x_2258.z, x_2258.y, x_2258.w));
        let x_2261 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2260.x, x_2260.y, x_2260.z, x_2261.w);
        let x_2263 : vec4<f32> = u_xlat11;
        let x_2265 : vec4<f32> = u_xlat8;
        let x_2267 : vec3<f32> = (vec3<f32>(x_2263.x, x_2263.z, x_2263.w) / vec3<f32>(x_2265.z, x_2265.w, x_2265.y));
        let x_2268 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2267.x, x_2267.y, x_2267.z, x_2268.w);
        let x_2270 : vec4<f32> = u_xlat9;
        let x_2272 : vec3<f32> = (vec3<f32>(x_2270.x, x_2270.y, x_2270.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2273 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2272.x, x_2272.y, x_2272.z, x_2273.w);
        let x_2275 : vec4<f32> = u_xlat12;
        let x_2277 : vec4<f32> = u_xlat7;
        let x_2279 : vec3<f32> = (vec3<f32>(x_2275.z, x_2275.y, x_2275.w) / vec3<f32>(x_2277.x, x_2277.y, x_2277.z));
        let x_2280 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2279.x, x_2279.y, x_2279.z, x_2280.w);
        let x_2282 : vec4<f32> = u_xlat10;
        let x_2284 : vec3<f32> = (vec3<f32>(x_2282.x, x_2282.y, x_2282.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2285 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2284.x, x_2284.y, x_2284.z, x_2285.w);
        let x_2287 : vec4<f32> = u_xlat9;
        let x_2290 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2292 : vec3<f32> = (vec3<f32>(x_2287.y, x_2287.x, x_2287.z) * vec3<f32>(x_2290.x, x_2290.x, x_2290.x));
        let x_2293 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2292.x, x_2292.y, x_2292.z, x_2293.w);
        let x_2295 : vec4<f32> = u_xlat10;
        let x_2298 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2300 : vec3<f32> = (vec3<f32>(x_2295.x, x_2295.y, x_2295.z) * vec3<f32>(x_2298.y, x_2298.y, x_2298.y));
        let x_2301 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2300.x, x_2300.y, x_2300.z, x_2301.w);
        let x_2304 : f32 = u_xlat10.x;
        u_xlat9.w = x_2304;
        let x_2306 : vec3<f32> = u_xlat32;
        let x_2309 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2312 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_2306.x, x_2306.y, x_2306.x, x_2306.y) * vec4<f32>(x_2309.x, x_2309.y, x_2309.x, x_2309.y)) + vec4<f32>(x_2312.y, x_2312.w, x_2312.x, x_2312.w));
        let x_2315 : vec3<f32> = u_xlat32;
        let x_2318 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2321 : vec4<f32> = u_xlat9;
        let x_2323 : vec2<f32> = ((vec2<f32>(x_2315.x, x_2315.y) * vec2<f32>(x_2318.x, x_2318.y)) + vec2<f32>(x_2321.z, x_2321.w));
        let x_2324 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2323.x, x_2323.y, x_2324.z, x_2324.w);
        let x_2327 : f32 = u_xlat9.y;
        u_xlat10.w = x_2327;
        let x_2329 : vec4<f32> = u_xlat10;
        let x_2330 : vec2<f32> = vec2<f32>(x_2329.y, x_2329.z);
        let x_2331 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2331.x, x_2330.x, x_2331.z, x_2330.y);
        let x_2333 : vec3<f32> = u_xlat32;
        let x_2336 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2339 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_2333.x, x_2333.y, x_2333.x, x_2333.y) * vec4<f32>(x_2336.x, x_2336.y, x_2336.x, x_2336.y)) + vec4<f32>(x_2339.x, x_2339.y, x_2339.z, x_2339.y));
        let x_2342 : vec3<f32> = u_xlat32;
        let x_2345 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2348 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_2342.x, x_2342.y, x_2342.x, x_2342.y) * vec4<f32>(x_2345.x, x_2345.y, x_2345.x, x_2345.y)) + vec4<f32>(x_2348.w, x_2348.y, x_2348.w, x_2348.z));
        let x_2351 : vec3<f32> = u_xlat32;
        let x_2354 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2357 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_2351.x, x_2351.y, x_2351.x, x_2351.y) * vec4<f32>(x_2354.x, x_2354.y, x_2354.x, x_2354.y)) + vec4<f32>(x_2357.x, x_2357.w, x_2357.z, x_2357.w));
        let x_2360 : vec4<f32> = u_xlat7;
        let x_2362 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_2360.x, x_2360.x, x_2360.x, x_2360.y) * vec4<f32>(x_2362.z, x_2362.w, x_2362.y, x_2362.z));
        let x_2365 : vec4<f32> = u_xlat7;
        let x_2367 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_2365.y, x_2365.y, x_2365.z, x_2365.z) * x_2367);
        let x_2370 : f32 = u_xlat7.z;
        let x_2372 : f32 = u_xlat8.y;
        u_xlat32.x = (x_2370 * x_2372);
        let x_2376 : vec4<f32> = u_xlat11;
        let x_2377 : vec2<f32> = vec2<f32>(x_2376.x, x_2376.y);
        let x_2379 : f32 = vs_INTERP3.z;
        txVec34 = vec3<f32>(x_2377.x, x_2377.y, x_2379);
        let x_2387 : vec3<f32> = txVec34;
        let x_2389 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2387.xy, x_2387.z);
        u_xlat58 = x_2389;
        let x_2391 : vec4<f32> = u_xlat11;
        let x_2392 : vec2<f32> = vec2<f32>(x_2391.z, x_2391.w);
        let x_2394 : f32 = vs_INTERP3.z;
        txVec35 = vec3<f32>(x_2392.x, x_2392.y, x_2394);
        let x_2401 : vec3<f32> = txVec35;
        let x_2403 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2401.xy, x_2401.z);
        u_xlat84 = x_2403;
        let x_2404 : f32 = u_xlat84;
        let x_2406 : f32 = u_xlat14.y;
        u_xlat84 = (x_2404 * x_2406);
        let x_2409 : f32 = u_xlat14.x;
        let x_2410 : f32 = u_xlat58;
        let x_2412 : f32 = u_xlat84;
        u_xlat58 = ((x_2409 * x_2410) + x_2412);
        let x_2415 : vec4<f32> = u_xlat12;
        let x_2416 : vec2<f32> = vec2<f32>(x_2415.x, x_2415.y);
        let x_2418 : f32 = vs_INTERP3.z;
        txVec36 = vec3<f32>(x_2416.x, x_2416.y, x_2418);
        let x_2425 : vec3<f32> = txVec36;
        let x_2427 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2425.xy, x_2425.z);
        u_xlat84 = x_2427;
        let x_2429 : f32 = u_xlat14.z;
        let x_2430 : f32 = u_xlat84;
        let x_2432 : f32 = u_xlat58;
        u_xlat58 = ((x_2429 * x_2430) + x_2432);
        let x_2435 : vec4<f32> = u_xlat10;
        let x_2436 : vec2<f32> = vec2<f32>(x_2435.x, x_2435.y);
        let x_2438 : f32 = vs_INTERP3.z;
        txVec37 = vec3<f32>(x_2436.x, x_2436.y, x_2438);
        let x_2445 : vec3<f32> = txVec37;
        let x_2447 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2445.xy, x_2445.z);
        u_xlat84 = x_2447;
        let x_2449 : f32 = u_xlat14.w;
        let x_2450 : f32 = u_xlat84;
        let x_2452 : f32 = u_xlat58;
        u_xlat58 = ((x_2449 * x_2450) + x_2452);
        let x_2455 : vec4<f32> = u_xlat13;
        let x_2456 : vec2<f32> = vec2<f32>(x_2455.x, x_2455.y);
        let x_2458 : f32 = vs_INTERP3.z;
        txVec38 = vec3<f32>(x_2456.x, x_2456.y, x_2458);
        let x_2465 : vec3<f32> = txVec38;
        let x_2467 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2465.xy, x_2465.z);
        u_xlat84 = x_2467;
        let x_2469 : f32 = u_xlat15.x;
        let x_2470 : f32 = u_xlat84;
        let x_2472 : f32 = u_xlat58;
        u_xlat58 = ((x_2469 * x_2470) + x_2472);
        let x_2475 : vec4<f32> = u_xlat13;
        let x_2476 : vec2<f32> = vec2<f32>(x_2475.z, x_2475.w);
        let x_2478 : f32 = vs_INTERP3.z;
        txVec39 = vec3<f32>(x_2476.x, x_2476.y, x_2478);
        let x_2485 : vec3<f32> = txVec39;
        let x_2487 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2485.xy, x_2485.z);
        u_xlat84 = x_2487;
        let x_2489 : f32 = u_xlat15.y;
        let x_2490 : f32 = u_xlat84;
        let x_2492 : f32 = u_xlat58;
        u_xlat58 = ((x_2489 * x_2490) + x_2492);
        let x_2495 : vec4<f32> = u_xlat10;
        let x_2496 : vec2<f32> = vec2<f32>(x_2495.z, x_2495.w);
        let x_2498 : f32 = vs_INTERP3.z;
        txVec40 = vec3<f32>(x_2496.x, x_2496.y, x_2498);
        let x_2505 : vec3<f32> = txVec40;
        let x_2507 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2505.xy, x_2505.z);
        u_xlat84 = x_2507;
        let x_2509 : f32 = u_xlat15.z;
        let x_2510 : f32 = u_xlat84;
        let x_2512 : f32 = u_xlat58;
        u_xlat58 = ((x_2509 * x_2510) + x_2512);
        let x_2515 : vec4<f32> = u_xlat9;
        let x_2516 : vec2<f32> = vec2<f32>(x_2515.x, x_2515.y);
        let x_2518 : f32 = vs_INTERP3.z;
        txVec41 = vec3<f32>(x_2516.x, x_2516.y, x_2518);
        let x_2525 : vec3<f32> = txVec41;
        let x_2527 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2525.xy, x_2525.z);
        u_xlat84 = x_2527;
        let x_2529 : f32 = u_xlat15.w;
        let x_2530 : f32 = u_xlat84;
        let x_2532 : f32 = u_xlat58;
        u_xlat58 = ((x_2529 * x_2530) + x_2532);
        let x_2535 : vec4<f32> = u_xlat9;
        let x_2536 : vec2<f32> = vec2<f32>(x_2535.z, x_2535.w);
        let x_2538 : f32 = vs_INTERP3.z;
        txVec42 = vec3<f32>(x_2536.x, x_2536.y, x_2538);
        let x_2545 : vec3<f32> = txVec42;
        let x_2547 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2545.xy, x_2545.z);
        u_xlat84 = x_2547;
        let x_2549 : f32 = u_xlat32.x;
        let x_2550 : f32 = u_xlat84;
        let x_2552 : f32 = u_xlat58;
        u_xlat78 = ((x_2549 * x_2550) + x_2552);
      } else {
        let x_2555 : vec4<f32> = vs_INTERP3;
        let x_2558 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2561 : vec2<f32> = ((vec2<f32>(x_2555.x, x_2555.y) * vec2<f32>(x_2558.z, x_2558.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2562 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_2561.x, x_2561.y, x_2562.z);
        let x_2564 : vec3<f32> = u_xlat32;
        let x_2566 : vec2<f32> = floor(vec2<f32>(x_2564.x, x_2564.y));
        let x_2567 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_2566.x, x_2566.y, x_2567.z);
        let x_2569 : vec4<f32> = vs_INTERP3;
        let x_2572 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2575 : vec3<f32> = u_xlat32;
        let x_2578 : vec2<f32> = ((vec2<f32>(x_2569.x, x_2569.y) * vec2<f32>(x_2572.z, x_2572.w)) + -(vec2<f32>(x_2575.x, x_2575.y)));
        let x_2579 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2578.x, x_2578.y, x_2579.z, x_2579.w);
        let x_2581 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_2581.x, x_2581.x, x_2581.y, x_2581.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2584 : vec4<f32> = u_xlat8;
        let x_2586 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_2584.x, x_2584.x, x_2584.z, x_2584.z) * vec4<f32>(x_2586.x, x_2586.x, x_2586.z, x_2586.z));
        let x_2589 : vec4<f32> = u_xlat9;
        let x_2591 : vec2<f32> = (vec2<f32>(x_2589.y, x_2589.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_2592 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2592.x, x_2591.x, x_2592.z, x_2591.y);
        let x_2594 : vec4<f32> = u_xlat9;
        let x_2597 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_2594.x, x_2594.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2597.x, x_2597.y)));
        let x_2601 : vec4<f32> = u_xlat7;
        let x_2604 : vec2<f32> = (-(vec2<f32>(x_2601.x, x_2601.y)) + vec2<f32>(1.0f, 1.0f));
        let x_2605 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2604.x, x_2605.y, x_2604.y, x_2605.w);
        let x_2607 : vec4<f32> = u_xlat7;
        let x_2609 : vec2<f32> = min(vec2<f32>(x_2607.x, x_2607.y), vec2<f32>(0.0f, 0.0f));
        let x_2610 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2609.x, x_2609.y, x_2610.z, x_2610.w);
        let x_2612 : vec4<f32> = u_xlat9;
        let x_2615 : vec4<f32> = u_xlat9;
        let x_2618 : vec4<f32> = u_xlat8;
        let x_2620 : vec2<f32> = ((-(vec2<f32>(x_2612.x, x_2612.y)) * vec2<f32>(x_2615.x, x_2615.y)) + vec2<f32>(x_2618.x, x_2618.z));
        let x_2621 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2620.x, x_2621.y, x_2620.y, x_2621.w);
        let x_2623 : vec4<f32> = u_xlat7;
        let x_2625 : vec2<f32> = max(vec2<f32>(x_2623.x, x_2623.y), vec2<f32>(0.0f, 0.0f));
        let x_2626 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2625.x, x_2625.y, x_2626.z, x_2626.w);
        let x_2628 : vec4<f32> = u_xlat9;
        let x_2631 : vec4<f32> = u_xlat9;
        let x_2634 : vec4<f32> = u_xlat8;
        let x_2636 : vec2<f32> = ((-(vec2<f32>(x_2628.x, x_2628.y)) * vec2<f32>(x_2631.x, x_2631.y)) + vec2<f32>(x_2634.y, x_2634.w));
        let x_2637 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2637.x, x_2636.x, x_2637.z, x_2636.y);
        let x_2639 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_2639 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_2642 : f32 = u_xlat8.y;
        u_xlat9.z = (x_2642 * 0.08163200318813323975f);
        let x_2645 : vec2<f32> = u_xlat59;
        let x_2647 : vec2<f32> = (vec2<f32>(x_2645.y, x_2645.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2648 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2647.x, x_2647.y, x_2648.z, x_2648.w);
        let x_2650 : vec4<f32> = u_xlat8;
        u_xlat59 = (vec2<f32>(x_2650.x, x_2650.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2654 : f32 = u_xlat8.w;
        u_xlat11.z = (x_2654 * 0.08163200318813323975f);
        let x_2658 : f32 = u_xlat11.y;
        u_xlat9.x = x_2658;
        let x_2660 : vec4<f32> = u_xlat7;
        let x_2663 : vec2<f32> = ((vec2<f32>(x_2660.x, x_2660.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2664 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2664.x, x_2663.x, x_2664.z, x_2663.y);
        let x_2666 : vec4<f32> = u_xlat7;
        let x_2669 : vec2<f32> = ((vec2<f32>(x_2666.x, x_2666.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2670 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2669.x, x_2670.y, x_2669.y, x_2670.w);
        let x_2673 : f32 = u_xlat59.x;
        u_xlat8.y = x_2673;
        let x_2676 : f32 = u_xlat10.y;
        u_xlat8.w = x_2676;
        let x_2678 : vec4<f32> = u_xlat8;
        let x_2679 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_2678 + x_2679);
        let x_2681 : vec4<f32> = u_xlat7;
        let x_2684 : vec2<f32> = ((vec2<f32>(x_2681.y, x_2681.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2685 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2685.x, x_2684.x, x_2685.z, x_2684.y);
        let x_2687 : vec4<f32> = u_xlat7;
        let x_2690 : vec2<f32> = ((vec2<f32>(x_2687.y, x_2687.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2691 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2690.x, x_2691.y, x_2690.y, x_2691.w);
        let x_2694 : f32 = u_xlat59.y;
        u_xlat10.y = x_2694;
        let x_2696 : vec4<f32> = u_xlat10;
        let x_2697 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_2696 + x_2697);
        let x_2699 : vec4<f32> = u_xlat8;
        let x_2700 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_2699 / x_2700);
        let x_2702 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_2702 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2704 : vec4<f32> = u_xlat10;
        let x_2705 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_2704 / x_2705);
        let x_2707 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_2707 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2709 : vec4<f32> = u_xlat8;
        let x_2712 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_2709.w, x_2709.x, x_2709.y, x_2709.z) * vec4<f32>(x_2712.x, x_2712.x, x_2712.x, x_2712.x));
        let x_2715 : vec4<f32> = u_xlat10;
        let x_2718 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_2715.x, x_2715.w, x_2715.y, x_2715.z) * vec4<f32>(x_2718.y, x_2718.y, x_2718.y, x_2718.y));
        let x_2721 : vec4<f32> = u_xlat8;
        let x_2722 : vec3<f32> = vec3<f32>(x_2721.y, x_2721.z, x_2721.w);
        let x_2723 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2722.x, x_2723.y, x_2722.y, x_2722.z);
        let x_2726 : f32 = u_xlat10.x;
        u_xlat11.y = x_2726;
        let x_2728 : vec3<f32> = u_xlat32;
        let x_2731 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2734 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_2728.x, x_2728.y, x_2728.x, x_2728.y) * vec4<f32>(x_2731.x, x_2731.y, x_2731.x, x_2731.y)) + vec4<f32>(x_2734.x, x_2734.y, x_2734.z, x_2734.y));
        let x_2737 : vec3<f32> = u_xlat32;
        let x_2740 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2743 : vec4<f32> = u_xlat11;
        let x_2745 : vec2<f32> = ((vec2<f32>(x_2737.x, x_2737.y) * vec2<f32>(x_2740.x, x_2740.y)) + vec2<f32>(x_2743.w, x_2743.y));
        let x_2746 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_2745.x, x_2745.y, x_2746.z, x_2746.w);
        let x_2749 : f32 = u_xlat11.y;
        u_xlat8.y = x_2749;
        let x_2752 : f32 = u_xlat10.z;
        u_xlat11.y = x_2752;
        let x_2754 : vec3<f32> = u_xlat32;
        let x_2757 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2760 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_2754.x, x_2754.y, x_2754.x, x_2754.y) * vec4<f32>(x_2757.x, x_2757.y, x_2757.x, x_2757.y)) + vec4<f32>(x_2760.x, x_2760.y, x_2760.z, x_2760.y));
        let x_2764 : vec3<f32> = u_xlat32;
        let x_2767 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2770 : vec4<f32> = u_xlat11;
        u_xlat65 = ((vec2<f32>(x_2764.x, x_2764.y) * vec2<f32>(x_2767.x, x_2767.y)) + vec2<f32>(x_2770.w, x_2770.y));
        let x_2774 : f32 = u_xlat11.y;
        u_xlat8.z = x_2774;
        let x_2776 : vec3<f32> = u_xlat32;
        let x_2779 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2782 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_2776.x, x_2776.y, x_2776.x, x_2776.y) * vec4<f32>(x_2779.x, x_2779.y, x_2779.x, x_2779.y)) + vec4<f32>(x_2782.x, x_2782.y, x_2782.x, x_2782.z));
        let x_2786 : f32 = u_xlat10.w;
        u_xlat11.y = x_2786;
        let x_2788 : vec3<f32> = u_xlat32;
        let x_2791 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2794 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_2788.x, x_2788.y, x_2788.x, x_2788.y) * vec4<f32>(x_2791.x, x_2791.y, x_2791.x, x_2791.y)) + vec4<f32>(x_2794.x, x_2794.y, x_2794.z, x_2794.y));
        let x_2797 : vec3<f32> = u_xlat32;
        let x_2800 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2803 : vec4<f32> = u_xlat11;
        let x_2805 : vec2<f32> = ((vec2<f32>(x_2797.x, x_2797.y) * vec2<f32>(x_2800.x, x_2800.y)) + vec2<f32>(x_2803.w, x_2803.y));
        let x_2806 : vec3<f32> = u_xlat34;
        u_xlat34 = vec3<f32>(x_2805.x, x_2805.y, x_2806.z);
        let x_2809 : f32 = u_xlat11.y;
        u_xlat8.w = x_2809;
        let x_2811 : vec3<f32> = u_xlat32;
        let x_2814 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2817 : vec4<f32> = u_xlat8;
        let x_2819 : vec2<f32> = ((vec2<f32>(x_2811.x, x_2811.y) * vec2<f32>(x_2814.x, x_2814.y)) + vec2<f32>(x_2817.x, x_2817.w));
        let x_2820 : vec4<f32> = u_xlat17;
        u_xlat17 = vec4<f32>(x_2819.x, x_2819.y, x_2820.z, x_2820.w);
        let x_2822 : vec4<f32> = u_xlat11;
        let x_2823 : vec3<f32> = vec3<f32>(x_2822.x, x_2822.z, x_2822.w);
        let x_2824 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2823.x, x_2824.y, x_2823.y, x_2823.z);
        let x_2826 : vec3<f32> = u_xlat32;
        let x_2829 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2832 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_2826.x, x_2826.y, x_2826.x, x_2826.y) * vec4<f32>(x_2829.x, x_2829.y, x_2829.x, x_2829.y)) + vec4<f32>(x_2832.x, x_2832.y, x_2832.z, x_2832.y));
        let x_2835 : vec3<f32> = u_xlat32;
        let x_2838 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2841 : vec4<f32> = u_xlat10;
        u_xlat62 = ((vec2<f32>(x_2835.x, x_2835.y) * vec2<f32>(x_2838.x, x_2838.y)) + vec2<f32>(x_2841.w, x_2841.y));
        let x_2845 : f32 = u_xlat8.x;
        u_xlat10.x = x_2845;
        let x_2847 : vec3<f32> = u_xlat32;
        let x_2850 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2853 : vec4<f32> = u_xlat10;
        let x_2855 : vec2<f32> = ((vec2<f32>(x_2847.x, x_2847.y) * vec2<f32>(x_2850.x, x_2850.y)) + vec2<f32>(x_2853.x, x_2853.y));
        let x_2856 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_2855.x, x_2855.y, x_2856.z);
        let x_2858 : vec4<f32> = u_xlat7;
        let x_2860 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_2858.x, x_2858.x, x_2858.x, x_2858.x) * x_2860);
        let x_2862 : vec4<f32> = u_xlat7;
        let x_2864 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_2862.y, x_2862.y, x_2862.y, x_2862.y) * x_2864);
        let x_2866 : vec4<f32> = u_xlat7;
        let x_2868 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_2866.z, x_2866.z, x_2866.z, x_2866.z) * x_2868);
        let x_2870 : vec4<f32> = u_xlat7;
        let x_2872 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_2870.w, x_2870.w, x_2870.w, x_2870.w) * x_2872);
        let x_2875 : vec4<f32> = u_xlat12;
        let x_2876 : vec2<f32> = vec2<f32>(x_2875.x, x_2875.y);
        let x_2878 : f32 = vs_INTERP3.z;
        txVec43 = vec3<f32>(x_2876.x, x_2876.y, x_2878);
        let x_2885 : vec3<f32> = txVec43;
        let x_2887 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2885.xy, x_2885.z);
        u_xlat84 = x_2887;
        let x_2889 : vec4<f32> = u_xlat12;
        let x_2890 : vec2<f32> = vec2<f32>(x_2889.z, x_2889.w);
        let x_2892 : f32 = vs_INTERP3.z;
        txVec44 = vec3<f32>(x_2890.x, x_2890.y, x_2892);
        let x_2899 : vec3<f32> = txVec44;
        let x_2901 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2899.xy, x_2899.z);
        u_xlat8.x = x_2901;
        let x_2904 : f32 = u_xlat8.x;
        let x_2906 : f32 = u_xlat18.y;
        u_xlat8.x = (x_2904 * x_2906);
        let x_2910 : f32 = u_xlat18.x;
        let x_2911 : f32 = u_xlat84;
        let x_2914 : f32 = u_xlat8.x;
        u_xlat84 = ((x_2910 * x_2911) + x_2914);
        let x_2917 : vec4<f32> = u_xlat13;
        let x_2918 : vec2<f32> = vec2<f32>(x_2917.x, x_2917.y);
        let x_2920 : f32 = vs_INTERP3.z;
        txVec45 = vec3<f32>(x_2918.x, x_2918.y, x_2920);
        let x_2927 : vec3<f32> = txVec45;
        let x_2929 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2927.xy, x_2927.z);
        u_xlat8.x = x_2929;
        let x_2932 : f32 = u_xlat18.z;
        let x_2934 : f32 = u_xlat8.x;
        let x_2936 : f32 = u_xlat84;
        u_xlat84 = ((x_2932 * x_2934) + x_2936);
        let x_2939 : vec4<f32> = u_xlat15;
        let x_2940 : vec2<f32> = vec2<f32>(x_2939.x, x_2939.y);
        let x_2942 : f32 = vs_INTERP3.z;
        txVec46 = vec3<f32>(x_2940.x, x_2940.y, x_2942);
        let x_2949 : vec3<f32> = txVec46;
        let x_2951 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2949.xy, x_2949.z);
        u_xlat8.x = x_2951;
        let x_2954 : f32 = u_xlat18.w;
        let x_2956 : f32 = u_xlat8.x;
        let x_2958 : f32 = u_xlat84;
        u_xlat84 = ((x_2954 * x_2956) + x_2958);
        let x_2961 : vec4<f32> = u_xlat14;
        let x_2962 : vec2<f32> = vec2<f32>(x_2961.x, x_2961.y);
        let x_2964 : f32 = vs_INTERP3.z;
        txVec47 = vec3<f32>(x_2962.x, x_2962.y, x_2964);
        let x_2971 : vec3<f32> = txVec47;
        let x_2973 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2971.xy, x_2971.z);
        u_xlat8.x = x_2973;
        let x_2976 : f32 = u_xlat19.x;
        let x_2978 : f32 = u_xlat8.x;
        let x_2980 : f32 = u_xlat84;
        u_xlat84 = ((x_2976 * x_2978) + x_2980);
        let x_2983 : vec4<f32> = u_xlat14;
        let x_2984 : vec2<f32> = vec2<f32>(x_2983.z, x_2983.w);
        let x_2986 : f32 = vs_INTERP3.z;
        txVec48 = vec3<f32>(x_2984.x, x_2984.y, x_2986);
        let x_2993 : vec3<f32> = txVec48;
        let x_2995 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2993.xy, x_2993.z);
        u_xlat8.x = x_2995;
        let x_2998 : f32 = u_xlat19.y;
        let x_3000 : f32 = u_xlat8.x;
        let x_3002 : f32 = u_xlat84;
        u_xlat84 = ((x_2998 * x_3000) + x_3002);
        let x_3005 : vec2<f32> = u_xlat65;
        let x_3007 : f32 = vs_INTERP3.z;
        txVec49 = vec3<f32>(x_3005.x, x_3005.y, x_3007);
        let x_3014 : vec3<f32> = txVec49;
        let x_3016 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3014.xy, x_3014.z);
        u_xlat8.x = x_3016;
        let x_3019 : f32 = u_xlat19.z;
        let x_3021 : f32 = u_xlat8.x;
        let x_3023 : f32 = u_xlat84;
        u_xlat84 = ((x_3019 * x_3021) + x_3023);
        let x_3026 : vec4<f32> = u_xlat15;
        let x_3027 : vec2<f32> = vec2<f32>(x_3026.z, x_3026.w);
        let x_3029 : f32 = vs_INTERP3.z;
        txVec50 = vec3<f32>(x_3027.x, x_3027.y, x_3029);
        let x_3036 : vec3<f32> = txVec50;
        let x_3038 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3036.xy, x_3036.z);
        u_xlat8.x = x_3038;
        let x_3041 : f32 = u_xlat19.w;
        let x_3043 : f32 = u_xlat8.x;
        let x_3045 : f32 = u_xlat84;
        u_xlat84 = ((x_3041 * x_3043) + x_3045);
        let x_3048 : vec4<f32> = u_xlat16;
        let x_3049 : vec2<f32> = vec2<f32>(x_3048.x, x_3048.y);
        let x_3051 : f32 = vs_INTERP3.z;
        txVec51 = vec3<f32>(x_3049.x, x_3049.y, x_3051);
        let x_3058 : vec3<f32> = txVec51;
        let x_3060 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3058.xy, x_3058.z);
        u_xlat8.x = x_3060;
        let x_3063 : f32 = u_xlat20.x;
        let x_3065 : f32 = u_xlat8.x;
        let x_3067 : f32 = u_xlat84;
        u_xlat84 = ((x_3063 * x_3065) + x_3067);
        let x_3070 : vec4<f32> = u_xlat16;
        let x_3071 : vec2<f32> = vec2<f32>(x_3070.z, x_3070.w);
        let x_3073 : f32 = vs_INTERP3.z;
        txVec52 = vec3<f32>(x_3071.x, x_3071.y, x_3073);
        let x_3080 : vec3<f32> = txVec52;
        let x_3082 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3080.xy, x_3080.z);
        u_xlat8.x = x_3082;
        let x_3085 : f32 = u_xlat20.y;
        let x_3087 : f32 = u_xlat8.x;
        let x_3089 : f32 = u_xlat84;
        u_xlat84 = ((x_3085 * x_3087) + x_3089);
        let x_3092 : vec3<f32> = u_xlat34;
        let x_3093 : vec2<f32> = vec2<f32>(x_3092.x, x_3092.y);
        let x_3095 : f32 = vs_INTERP3.z;
        txVec53 = vec3<f32>(x_3093.x, x_3093.y, x_3095);
        let x_3102 : vec3<f32> = txVec53;
        let x_3104 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3102.xy, x_3102.z);
        u_xlat8.x = x_3104;
        let x_3107 : f32 = u_xlat20.z;
        let x_3109 : f32 = u_xlat8.x;
        let x_3111 : f32 = u_xlat84;
        u_xlat84 = ((x_3107 * x_3109) + x_3111);
        let x_3114 : vec4<f32> = u_xlat17;
        let x_3115 : vec2<f32> = vec2<f32>(x_3114.x, x_3114.y);
        let x_3117 : f32 = vs_INTERP3.z;
        txVec54 = vec3<f32>(x_3115.x, x_3115.y, x_3117);
        let x_3124 : vec3<f32> = txVec54;
        let x_3126 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3124.xy, x_3124.z);
        u_xlat8.x = x_3126;
        let x_3129 : f32 = u_xlat20.w;
        let x_3131 : f32 = u_xlat8.x;
        let x_3133 : f32 = u_xlat84;
        u_xlat84 = ((x_3129 * x_3131) + x_3133);
        let x_3136 : vec4<f32> = u_xlat11;
        let x_3137 : vec2<f32> = vec2<f32>(x_3136.x, x_3136.y);
        let x_3139 : f32 = vs_INTERP3.z;
        txVec55 = vec3<f32>(x_3137.x, x_3137.y, x_3139);
        let x_3146 : vec3<f32> = txVec55;
        let x_3148 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3146.xy, x_3146.z);
        u_xlat8.x = x_3148;
        let x_3151 : f32 = u_xlat7.x;
        let x_3153 : f32 = u_xlat8.x;
        let x_3155 : f32 = u_xlat84;
        u_xlat84 = ((x_3151 * x_3153) + x_3155);
        let x_3158 : vec4<f32> = u_xlat11;
        let x_3159 : vec2<f32> = vec2<f32>(x_3158.z, x_3158.w);
        let x_3161 : f32 = vs_INTERP3.z;
        txVec56 = vec3<f32>(x_3159.x, x_3159.y, x_3161);
        let x_3168 : vec3<f32> = txVec56;
        let x_3170 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3168.xy, x_3168.z);
        u_xlat7.x = x_3170;
        let x_3173 : f32 = u_xlat7.y;
        let x_3175 : f32 = u_xlat7.x;
        let x_3177 : f32 = u_xlat84;
        u_xlat84 = ((x_3173 * x_3175) + x_3177);
        let x_3180 : vec2<f32> = u_xlat62;
        let x_3182 : f32 = vs_INTERP3.z;
        txVec57 = vec3<f32>(x_3180.x, x_3180.y, x_3182);
        let x_3189 : vec3<f32> = txVec57;
        let x_3191 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3189.xy, x_3189.z);
        u_xlat7.x = x_3191;
        let x_3194 : f32 = u_xlat7.z;
        let x_3196 : f32 = u_xlat7.x;
        let x_3198 : f32 = u_xlat84;
        u_xlat84 = ((x_3194 * x_3196) + x_3198);
        let x_3201 : vec3<f32> = u_xlat32;
        let x_3202 : vec2<f32> = vec2<f32>(x_3201.x, x_3201.y);
        let x_3204 : f32 = vs_INTERP3.z;
        txVec58 = vec3<f32>(x_3202.x, x_3202.y, x_3204);
        let x_3211 : vec3<f32> = txVec58;
        let x_3213 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3211.xy, x_3211.z);
        u_xlat32.x = x_3213;
        let x_3216 : f32 = u_xlat7.w;
        let x_3218 : f32 = u_xlat32.x;
        let x_3220 : f32 = u_xlat84;
        u_xlat78 = ((x_3216 * x_3218) + x_3220);
      }
    }
  } else {
    let x_3224 : vec4<f32> = vs_INTERP3;
    let x_3225 : vec2<f32> = vec2<f32>(x_3224.x, x_3224.y);
    let x_3227 : f32 = vs_INTERP3.z;
    txVec59 = vec3<f32>(x_3225.x, x_3225.y, x_3227);
    let x_3234 : vec3<f32> = txVec59;
    let x_3236 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3234.xy, x_3234.z);
    u_xlat78 = x_3236;
  }
  let x_3237 : f32 = u_xlat78;
  let x_3239 : f32 = x_265.x_MainLightShadowParams.x;
  let x_3241 : f32 = u_xlat80;
  u_xlat78 = ((x_3237 * x_3239) + x_3241);
  let x_3244 : f32 = vs_INTERP3.z;
  u_xlatb80 = (0.0f >= x_3244);
  let x_3247 : f32 = vs_INTERP3.z;
  u_xlatb32.x = (x_3247 >= 1.0f);
  let x_3250 : bool = u_xlatb80;
  let x_3252 : bool = u_xlatb32.x;
  u_xlatb80 = (x_3250 | x_3252);
  let x_3254 : bool = u_xlatb80;
  let x_3255 : f32 = u_xlat78;
  u_xlat78 = select(x_3255, 1.0f, x_3254);
  let x_3257 : vec3<f32> = vs_INTERP8;
  let x_3259 : vec3<f32> = x_75.x_WorldSpaceCameraPos;
  u_xlat32 = (x_3257 + -(x_3259));
  let x_3262 : vec3<f32> = u_xlat32;
  let x_3263 : vec3<f32> = u_xlat32;
  u_xlat80 = dot(x_3262, x_3263);
  let x_3265 : f32 = u_xlat80;
  let x_3267 : f32 = x_265.x_MainLightShadowParams.z;
  let x_3270 : f32 = x_265.x_MainLightShadowParams.w;
  u_xlat32.x = ((x_3265 * x_3267) + x_3270);
  let x_3274 : f32 = u_xlat32.x;
  u_xlat32.x = clamp(x_3274, 0.0f, 1.0f);
  let x_3277 : f32 = u_xlat78;
  u_xlat58 = (-(x_3277) + 1.0f);
  let x_3281 : f32 = u_xlat32.x;
  let x_3282 : f32 = u_xlat58;
  let x_3284 : f32 = u_xlat78;
  u_xlat78 = ((x_3281 * x_3282) + x_3284);
  let x_3293 : f32 = x_3291.x_MainLightCookieTextureFormat;
  u_xlatb32.x = !((x_3293 == -1.0f));
  let x_3297 : bool = u_xlatb32.x;
  if (x_3297) {
    let x_3300 : vec3<f32> = vs_INTERP8;
    let x_3303 : vec4<f32> = x_3291.x_MainLightWorldToLight[1i];
    let x_3305 : vec2<f32> = (vec2<f32>(x_3300.y, x_3300.y) * vec2<f32>(x_3303.x, x_3303.y));
    let x_3306 : vec3<f32> = u_xlat32;
    u_xlat32 = vec3<f32>(x_3305.x, x_3305.y, x_3306.z);
    let x_3309 : vec4<f32> = x_3291.x_MainLightWorldToLight[0i];
    let x_3311 : vec3<f32> = vs_INTERP8;
    let x_3314 : vec3<f32> = u_xlat32;
    let x_3316 : vec2<f32> = ((vec2<f32>(x_3309.x, x_3309.y) * vec2<f32>(x_3311.x, x_3311.x)) + vec2<f32>(x_3314.x, x_3314.y));
    let x_3317 : vec3<f32> = u_xlat32;
    u_xlat32 = vec3<f32>(x_3316.x, x_3316.y, x_3317.z);
    let x_3320 : vec4<f32> = x_3291.x_MainLightWorldToLight[2i];
    let x_3322 : vec3<f32> = vs_INTERP8;
    let x_3325 : vec3<f32> = u_xlat32;
    let x_3327 : vec2<f32> = ((vec2<f32>(x_3320.x, x_3320.y) * vec2<f32>(x_3322.z, x_3322.z)) + vec2<f32>(x_3325.x, x_3325.y));
    let x_3328 : vec3<f32> = u_xlat32;
    u_xlat32 = vec3<f32>(x_3327.x, x_3327.y, x_3328.z);
    let x_3330 : vec3<f32> = u_xlat32;
    let x_3333 : vec4<f32> = x_3291.x_MainLightWorldToLight[3i];
    let x_3335 : vec2<f32> = (vec2<f32>(x_3330.x, x_3330.y) + vec2<f32>(x_3333.x, x_3333.y));
    let x_3336 : vec3<f32> = u_xlat32;
    u_xlat32 = vec3<f32>(x_3335.x, x_3335.y, x_3336.z);
    let x_3338 : vec3<f32> = u_xlat32;
    let x_3341 : vec2<f32> = ((vec2<f32>(x_3338.x, x_3338.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_3342 : vec3<f32> = u_xlat32;
    u_xlat32 = vec3<f32>(x_3341.x, x_3341.y, x_3342.z);
    let x_3349 : vec3<f32> = u_xlat32;
    let x_3352 : f32 = x_75.x_GlobalMipBias.x;
    let x_3353 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_3349.x, x_3349.y), x_3352);
    u_xlat7 = x_3353;
    let x_3355 : f32 = x_3291.x_MainLightCookieTextureFormat;
    let x_3357 : f32 = x_3291.x_MainLightCookieTextureFormat;
    let x_3359 : f32 = x_3291.x_MainLightCookieTextureFormat;
    let x_3361 : f32 = x_3291.x_MainLightCookieTextureFormat;
    let x_3362 : vec4<f32> = vec4<f32>(x_3355, x_3357, x_3359, x_3361);
    let x_3370 : vec4<bool> = (vec4<f32>(x_3362.x, x_3362.y, x_3362.z, x_3362.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb32 = vec2<bool>(x_3370.x, x_3370.y);
    let x_3373 : bool = u_xlatb32.y;
    if (x_3373) {
      let x_3378 : f32 = u_xlat7.w;
      x_3374 = x_3378;
    } else {
      let x_3381 : f32 = u_xlat7.x;
      x_3374 = x_3381;
    }
    let x_3382 : f32 = x_3374;
    u_xlat58 = x_3382;
    let x_3384 : bool = u_xlatb32.x;
    if (x_3384) {
      let x_3388 : vec4<f32> = u_xlat7;
      x_3385 = vec3<f32>(x_3388.x, x_3388.y, x_3388.z);
    } else {
      let x_3391 : f32 = u_xlat58;
      x_3385 = vec3<f32>(x_3391, x_3391, x_3391);
    }
    let x_3393 : vec3<f32> = x_3385;
    u_xlat32 = x_3393;
  } else {
    u_xlat32.x = 1.0f;
    u_xlat32.y = 1.0f;
    u_xlat32.z = 1.0f;
  }
  let x_3398 : vec3<f32> = u_xlat32;
  let x_3400 : vec4<f32> = x_75.x_MainLightColor;
  u_xlat32 = (x_3398 * vec3<f32>(x_3400.x, x_3400.y, x_3400.z));
  let x_3403 : vec3<f32> = u_xlat2;
  let x_3405 : vec4<f32> = u_xlat3;
  u_xlat7.x = dot(-(x_3403), vec3<f32>(x_3405.x, x_3405.y, x_3405.z));
  let x_3410 : f32 = u_xlat7.x;
  let x_3412 : f32 = u_xlat7.x;
  u_xlat7.x = (x_3410 + x_3412);
  let x_3415 : vec4<f32> = u_xlat3;
  let x_3417 : vec4<f32> = u_xlat7;
  let x_3421 : vec3<f32> = u_xlat2;
  let x_3423 : vec3<f32> = ((vec3<f32>(x_3415.x, x_3415.y, x_3415.z) * -(vec3<f32>(x_3417.x, x_3417.x, x_3417.x))) + -(x_3421));
  let x_3424 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3423.x, x_3423.y, x_3423.z, x_3424.w);
  let x_3427 : vec4<f32> = u_xlat3;
  let x_3429 : vec3<f32> = u_xlat2;
  u_xlat85 = dot(vec3<f32>(x_3427.x, x_3427.y, x_3427.z), x_3429);
  let x_3431 : f32 = u_xlat85;
  u_xlat85 = clamp(x_3431, 0.0f, 1.0f);
  let x_3433 : f32 = u_xlat85;
  u_xlat85 = (-(x_3433) + 1.0f);
  let x_3436 : f32 = u_xlat85;
  let x_3437 : f32 = u_xlat85;
  u_xlat85 = (x_3436 * x_3437);
  let x_3439 : f32 = u_xlat85;
  let x_3440 : f32 = u_xlat85;
  u_xlat85 = (x_3439 * x_3440);
  let x_3443 : f32 = u_xlat53.x;
  u_xlat8.x = ((-(x_3443) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_3451 : f32 = u_xlat53.x;
  let x_3453 : f32 = u_xlat8.x;
  u_xlat53.x = (x_3451 * x_3453);
  let x_3457 : f32 = u_xlat53.x;
  u_xlat53.x = (x_3457 * 6.0f);
  let x_3469 : vec4<f32> = u_xlat7;
  let x_3472 : f32 = u_xlat53.x;
  let x_3473 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_3469.x, x_3469.y, x_3469.z), x_3472);
  u_xlat8 = x_3473;
  let x_3475 : f32 = u_xlat8.w;
  u_xlat53.x = (x_3475 + -1.0f);
  let x_3479 : f32 = x_148.unity_SpecCube0_HDR.w;
  let x_3481 : f32 = u_xlat53.x;
  u_xlat53.x = ((x_3479 * x_3481) + 1.0f);
  let x_3486 : f32 = u_xlat53.x;
  u_xlat53.x = max(x_3486, 0.0f);
  let x_3490 : f32 = u_xlat53.x;
  u_xlat53.x = log2(x_3490);
  let x_3494 : f32 = u_xlat53.x;
  let x_3496 : f32 = x_148.unity_SpecCube0_HDR.y;
  u_xlat53.x = (x_3494 * x_3496);
  let x_3500 : f32 = u_xlat53.x;
  u_xlat53.x = exp2(x_3500);
  let x_3504 : f32 = u_xlat53.x;
  let x_3506 : f32 = x_148.unity_SpecCube0_HDR.x;
  u_xlat53.x = (x_3504 * x_3506);
  let x_3509 : vec4<f32> = u_xlat8;
  let x_3511 : vec2<f32> = u_xlat53;
  let x_3513 : vec3<f32> = (vec3<f32>(x_3509.x, x_3509.y, x_3509.z) * vec3<f32>(x_3511.x, x_3511.x, x_3511.x));
  let x_3514 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3513.x, x_3513.y, x_3513.z, x_3514.w);
  let x_3516 : f32 = u_xlat79;
  let x_3518 : f32 = u_xlat79;
  u_xlat53 = ((vec2<f32>(x_3516, x_3516) * vec2<f32>(x_3518, x_3518)) + vec2<f32>(-1.0f, 1.0f));
  let x_3524 : f32 = u_xlat53.y;
  u_xlat79 = (1.0f / x_3524);
  let x_3526 : f32 = u_xlat82;
  u_xlat82 = (x_3526 + -0.03999999910593032837f);
  let x_3529 : f32 = u_xlat85;
  let x_3530 : f32 = u_xlat82;
  u_xlat82 = ((x_3529 * x_3530) + 0.03999999910593032837f);
  let x_3534 : f32 = u_xlat79;
  let x_3535 : f32 = u_xlat82;
  u_xlat79 = (x_3534 * x_3535);
  let x_3537 : f32 = u_xlat79;
  let x_3539 : vec4<f32> = u_xlat7;
  let x_3541 : vec3<f32> = (vec3<f32>(x_3537, x_3537, x_3537) * vec3<f32>(x_3539.x, x_3539.y, x_3539.z));
  let x_3542 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3541.x, x_3541.y, x_3541.z, x_3542.w);
  let x_3544 : vec3<f32> = u_xlat31;
  let x_3545 : vec3<f32> = u_xlat4;
  let x_3547 : vec4<f32> = u_xlat7;
  u_xlat31 = ((x_3544 * x_3545) + vec3<f32>(x_3547.x, x_3547.y, x_3547.z));
  let x_3550 : f32 = u_xlat78;
  let x_3552 : f32 = x_148.unity_LightData.z;
  u_xlat78 = (x_3550 * x_3552);
  let x_3554 : vec4<f32> = u_xlat3;
  let x_3557 : vec4<f32> = x_75.x_MainLightPosition;
  u_xlat79 = dot(vec3<f32>(x_3554.x, x_3554.y, x_3554.z), vec3<f32>(x_3557.x, x_3557.y, x_3557.z));
  let x_3560 : f32 = u_xlat79;
  u_xlat79 = clamp(x_3560, 0.0f, 1.0f);
  let x_3562 : f32 = u_xlat78;
  let x_3563 : f32 = u_xlat79;
  u_xlat78 = (x_3562 * x_3563);
  let x_3565 : f32 = u_xlat78;
  let x_3567 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_3565, x_3565, x_3565) * x_3567);
  let x_3569 : vec3<f32> = u_xlat2;
  let x_3571 : vec4<f32> = x_75.x_MainLightPosition;
  let x_3573 : vec3<f32> = (x_3569 + vec3<f32>(x_3571.x, x_3571.y, x_3571.z));
  let x_3574 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3573.x, x_3573.y, x_3573.z, x_3574.w);
  let x_3576 : vec4<f32> = u_xlat7;
  let x_3578 : vec4<f32> = u_xlat7;
  u_xlat78 = dot(vec3<f32>(x_3576.x, x_3576.y, x_3576.z), vec3<f32>(x_3578.x, x_3578.y, x_3578.z));
  let x_3581 : f32 = u_xlat78;
  u_xlat78 = max(x_3581, 1.17549435e-38f);
  let x_3584 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_3584);
  let x_3586 : f32 = u_xlat78;
  let x_3588 : vec4<f32> = u_xlat7;
  let x_3590 : vec3<f32> = (vec3<f32>(x_3586, x_3586, x_3586) * vec3<f32>(x_3588.x, x_3588.y, x_3588.z));
  let x_3591 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3590.x, x_3590.y, x_3590.z, x_3591.w);
  let x_3593 : vec4<f32> = u_xlat3;
  let x_3595 : vec4<f32> = u_xlat7;
  u_xlat78 = dot(vec3<f32>(x_3593.x, x_3593.y, x_3593.z), vec3<f32>(x_3595.x, x_3595.y, x_3595.z));
  let x_3598 : f32 = u_xlat78;
  u_xlat78 = clamp(x_3598, 0.0f, 1.0f);
  let x_3601 : vec4<f32> = x_75.x_MainLightPosition;
  let x_3603 : vec4<f32> = u_xlat7;
  u_xlat79 = dot(vec3<f32>(x_3601.x, x_3601.y, x_3601.z), vec3<f32>(x_3603.x, x_3603.y, x_3603.z));
  let x_3606 : f32 = u_xlat79;
  u_xlat79 = clamp(x_3606, 0.0f, 1.0f);
  let x_3608 : f32 = u_xlat78;
  let x_3609 : f32 = u_xlat78;
  u_xlat78 = (x_3608 * x_3609);
  let x_3611 : f32 = u_xlat78;
  let x_3613 : f32 = u_xlat53.x;
  u_xlat78 = ((x_3611 * x_3613) + 1.00001001358032226562f);
  let x_3617 : f32 = u_xlat79;
  let x_3618 : f32 = u_xlat79;
  u_xlat79 = (x_3617 * x_3618);
  let x_3620 : f32 = u_xlat78;
  let x_3621 : f32 = u_xlat78;
  u_xlat78 = (x_3620 * x_3621);
  let x_3623 : f32 = u_xlat79;
  u_xlat79 = max(x_3623, 0.10000000149011611938f);
  let x_3626 : f32 = u_xlat78;
  let x_3627 : f32 = u_xlat79;
  u_xlat78 = (x_3626 * x_3627);
  let x_3630 : f32 = u_xlat5.x;
  let x_3631 : f32 = u_xlat78;
  u_xlat78 = (x_3630 * x_3631);
  let x_3633 : f32 = u_xlat81;
  let x_3634 : f32 = u_xlat78;
  u_xlat78 = (x_3633 / x_3634);
  let x_3636 : f32 = u_xlat78;
  let x_3640 : vec3<f32> = u_xlat4;
  let x_3641 : vec3<f32> = ((vec3<f32>(x_3636, x_3636, x_3636) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_3640);
  let x_3642 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3641.x, x_3641.y, x_3641.z, x_3642.w);
  let x_3644 : vec3<f32> = u_xlat32;
  let x_3645 : vec4<f32> = u_xlat7;
  u_xlat32 = (x_3644 * vec3<f32>(x_3645.x, x_3645.y, x_3645.z));
  let x_3650 : f32 = x_75.x_AdditionalLightsCount.x;
  let x_3652 : f32 = x_148.unity_LightData.y;
  u_xlat78 = min(x_3650, x_3652);
  let x_3655 : f32 = u_xlat78;
  u_xlatu78 = bitcast<u32>(i32(x_3655));
  let x_3658 : f32 = u_xlat80;
  let x_3661 : f32 = x_265.x_AdditionalShadowFadeParams.x;
  let x_3664 : f32 = x_265.x_AdditionalShadowFadeParams.y;
  u_xlat79 = ((x_3658 * x_3661) + x_3664);
  let x_3666 : f32 = u_xlat79;
  u_xlat79 = clamp(x_3666, 0.0f, 1.0f);
  let x_3670 : f32 = x_3291.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3672 : f32 = x_3291.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3674 : f32 = x_3291.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3676 : f32 = x_3291.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_3677 : vec4<f32> = vec4<f32>(x_3670, x_3672, x_3674, x_3676);
  let x_3683 : vec4<bool> = (vec4<f32>(x_3677.x, x_3677.y, x_3677.z, x_3677.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_3683.x, x_3683.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_3694 : u32 = u_xlatu_loop_1;
    let x_3695 : u32 = u_xlatu78;
    if ((x_3694 < x_3695)) {
    } else {
      break;
    }
    let x_3698 : u32 = u_xlatu_loop_1;
    u_xlatu82 = (x_3698 >> 2u);
    let x_3701 : u32 = u_xlatu_loop_1;
    u_xlati59 = bitcast<i32>((x_3701 & 3u));
    let x_3704 : u32 = u_xlatu82;
    let x_3707 : vec4<f32> = x_148.unity_LightIndices[bitcast<i32>(x_3704)];
    let x_3717 : i32 = u_xlati59;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_3722 : vec4<u32> = indexable[x_3717];
    u_xlat82 = dot(x_3707, bitcast<vec4<f32>>(x_3722));
    let x_3726 : f32 = u_xlat82;
    u_xlati82 = i32(x_3726);
    let x_3728 : vec3<f32> = vs_INTERP8;
    let x_3739 : i32 = u_xlati82;
    let x_3741 : vec4<f32> = x_3738.x_AdditionalLightsPosition[x_3739];
    let x_3744 : i32 = u_xlati82;
    let x_3746 : vec4<f32> = x_3738.x_AdditionalLightsPosition[x_3744];
    let x_3748 : vec3<f32> = ((-(x_3728) * vec3<f32>(x_3741.w, x_3741.w, x_3741.w)) + vec3<f32>(x_3746.x, x_3746.y, x_3746.z));
    let x_3749 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3748.x, x_3748.y, x_3748.z, x_3749.w);
    let x_3751 : vec4<f32> = u_xlat9;
    let x_3753 : vec4<f32> = u_xlat9;
    u_xlat59.x = dot(vec3<f32>(x_3751.x, x_3751.y, x_3751.z), vec3<f32>(x_3753.x, x_3753.y, x_3753.z));
    let x_3758 : f32 = u_xlat59.x;
    u_xlat59.x = max(x_3758, 0.00006103515625f);
    let x_3763 : f32 = u_xlat59.x;
    u_xlat85 = inverseSqrt(x_3763);
    let x_3765 : f32 = u_xlat85;
    let x_3767 : vec4<f32> = u_xlat9;
    let x_3769 : vec3<f32> = (vec3<f32>(x_3765, x_3765, x_3765) * vec3<f32>(x_3767.x, x_3767.y, x_3767.z));
    let x_3770 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3769.x, x_3769.y, x_3769.z, x_3770.w);
    let x_3774 : f32 = u_xlat59.x;
    u_xlat86 = (1.0f / x_3774);
    let x_3777 : f32 = u_xlat59.x;
    let x_3778 : i32 = u_xlati82;
    let x_3780 : f32 = x_3738.x_AdditionalLightsAttenuation[x_3778].x;
    u_xlat59.x = (x_3777 * x_3780);
    let x_3784 : f32 = u_xlat59.x;
    let x_3787 : f32 = u_xlat59.x;
    u_xlat59.x = ((-(x_3784) * x_3787) + 1.0f);
    let x_3792 : f32 = u_xlat59.x;
    u_xlat59.x = max(x_3792, 0.0f);
    let x_3796 : f32 = u_xlat59.x;
    let x_3798 : f32 = u_xlat59.x;
    u_xlat59.x = (x_3796 * x_3798);
    let x_3802 : f32 = u_xlat59.x;
    let x_3803 : f32 = u_xlat86;
    u_xlat59.x = (x_3802 * x_3803);
    let x_3806 : i32 = u_xlati82;
    let x_3808 : vec4<f32> = x_3738.x_AdditionalLightsSpotDir[x_3806];
    let x_3810 : vec4<f32> = u_xlat10;
    u_xlat86 = dot(vec3<f32>(x_3808.x, x_3808.y, x_3808.z), vec3<f32>(x_3810.x, x_3810.y, x_3810.z));
    let x_3813 : f32 = u_xlat86;
    let x_3814 : i32 = u_xlati82;
    let x_3816 : f32 = x_3738.x_AdditionalLightsAttenuation[x_3814].z;
    let x_3818 : i32 = u_xlati82;
    let x_3820 : f32 = x_3738.x_AdditionalLightsAttenuation[x_3818].w;
    u_xlat86 = ((x_3813 * x_3816) + x_3820);
    let x_3822 : f32 = u_xlat86;
    u_xlat86 = clamp(x_3822, 0.0f, 1.0f);
    let x_3824 : f32 = u_xlat86;
    let x_3825 : f32 = u_xlat86;
    u_xlat86 = (x_3824 * x_3825);
    let x_3828 : f32 = u_xlat59.x;
    let x_3829 : f32 = u_xlat86;
    u_xlat59.x = (x_3828 * x_3829);
    let x_3834 : i32 = u_xlati82;
    let x_3836 : f32 = x_265.x_AdditionalShadowParams[x_3834].w;
    u_xlati86 = i32(x_3836);
    let x_3839 : i32 = u_xlati86;
    u_xlatb87 = (x_3839 >= 0i);
    let x_3841 : bool = u_xlatb87;
    if (x_3841) {
      let x_3845 : i32 = u_xlati82;
      let x_3847 : f32 = x_265.x_AdditionalShadowParams[x_3845].z;
      u_xlatb87 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_3847, x_3847, x_3847, x_3847))));
      let x_3851 : bool = u_xlatb87;
      if (x_3851) {
        let x_3856 : vec4<f32> = u_xlat10;
        let x_3859 : vec4<f32> = u_xlat10;
        let x_3862 : vec4<bool> = (abs(vec4<f32>(x_3856.z, x_3856.z, x_3856.y, x_3856.z)) >= abs(vec4<f32>(x_3859.x, x_3859.y, x_3859.x, x_3859.x)));
        let x_3864 : vec3<bool> = vec3<bool>(x_3862.x, x_3862.y, x_3862.z);
        let x_3865 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3864.x, x_3864.y, x_3864.z, x_3865.w);
        let x_3868 : bool = u_xlatb11.y;
        let x_3870 : bool = u_xlatb11.x;
        u_xlatb87 = (x_3868 & x_3870);
        let x_3872 : vec4<f32> = u_xlat10;
        let x_3875 : vec4<bool> = (-(vec4<f32>(x_3872.z, x_3872.y, x_3872.z, x_3872.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_3876 : vec3<bool> = vec3<bool>(x_3875.x, x_3875.y, x_3875.w);
        let x_3877 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_3876.x, x_3876.y, x_3877.z, x_3876.z);
        let x_3880 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_3880);
        let x_3885 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_3885);
        let x_3891 : bool = u_xlatb11.w;
        u_xlat88 = select(0.0f, 1.0f, x_3891);
        let x_3894 : bool = u_xlatb11.z;
        if (x_3894) {
          let x_3899 : f32 = u_xlat11.y;
          x_3895 = x_3899;
        } else {
          let x_3901 : f32 = u_xlat88;
          x_3895 = x_3901;
        }
        let x_3902 : f32 = x_3895;
        u_xlat88 = x_3902;
        let x_3904 : bool = u_xlatb87;
        if (x_3904) {
          let x_3909 : f32 = u_xlat11.x;
          x_3905 = x_3909;
        } else {
          let x_3911 : f32 = u_xlat88;
          x_3905 = x_3911;
        }
        let x_3912 : f32 = x_3905;
        u_xlat87 = x_3912;
        let x_3913 : i32 = u_xlati82;
        let x_3915 : f32 = x_265.x_AdditionalShadowParams[x_3913].w;
        u_xlat88 = trunc(x_3915);
        let x_3917 : f32 = u_xlat87;
        let x_3918 : f32 = u_xlat88;
        u_xlat87 = (x_3917 + x_3918);
        let x_3920 : f32 = u_xlat87;
        u_xlati86 = i32(x_3920);
      }
      let x_3922 : i32 = u_xlati86;
      u_xlati86 = (x_3922 << bitcast<u32>(2i));
      let x_3924 : vec3<f32> = vs_INTERP8;
      let x_3927 : i32 = u_xlati86;
      let x_3930 : i32 = u_xlati86;
      let x_3934 : vec4<f32> = x_265.x_AdditionalLightsWorldToShadow[((x_3927 + 1i) / 4i)][((x_3930 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_3924.y, x_3924.y, x_3924.y, x_3924.y) * x_3934);
      let x_3936 : i32 = u_xlati86;
      let x_3938 : i32 = u_xlati86;
      let x_3941 : vec4<f32> = x_265.x_AdditionalLightsWorldToShadow[(x_3936 / 4i)][(x_3938 % 4i)];
      let x_3942 : vec3<f32> = vs_INTERP8;
      let x_3945 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3941 * vec4<f32>(x_3942.x, x_3942.x, x_3942.x, x_3942.x)) + x_3945);
      let x_3947 : i32 = u_xlati86;
      let x_3950 : i32 = u_xlati86;
      let x_3954 : vec4<f32> = x_265.x_AdditionalLightsWorldToShadow[((x_3947 + 2i) / 4i)][((x_3950 + 2i) % 4i)];
      let x_3955 : vec3<f32> = vs_INTERP8;
      let x_3958 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_3954 * vec4<f32>(x_3955.z, x_3955.z, x_3955.z, x_3955.z)) + x_3958);
      let x_3960 : vec4<f32> = u_xlat11;
      let x_3961 : i32 = u_xlati86;
      let x_3964 : i32 = u_xlati86;
      let x_3968 : vec4<f32> = x_265.x_AdditionalLightsWorldToShadow[((x_3961 + 3i) / 4i)][((x_3964 + 3i) % 4i)];
      u_xlat11 = (x_3960 + x_3968);
      let x_3970 : vec4<f32> = u_xlat11;
      let x_3972 : vec4<f32> = u_xlat11;
      let x_3974 : vec3<f32> = (vec3<f32>(x_3970.x, x_3970.y, x_3970.z) / vec3<f32>(x_3972.w, x_3972.w, x_3972.w));
      let x_3975 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3974.x, x_3974.y, x_3974.z, x_3975.w);
      let x_3978 : i32 = u_xlati82;
      let x_3980 : f32 = x_265.x_AdditionalShadowParams[x_3978].y;
      u_xlatb86 = (0.0f < x_3980);
      let x_3982 : bool = u_xlatb86;
      if (x_3982) {
        let x_3985 : i32 = u_xlati82;
        let x_3987 : f32 = x_265.x_AdditionalShadowParams[x_3985].y;
        u_xlatb86 = (1.0f == x_3987);
        let x_3989 : bool = u_xlatb86;
        if (x_3989) {
          let x_3992 : vec4<f32> = u_xlat11;
          let x_3996 : vec4<f32> = x_265.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_3992.x, x_3992.y, x_3992.x, x_3992.y) + x_3996);
          let x_3999 : vec4<f32> = u_xlat12;
          let x_4000 : vec2<f32> = vec2<f32>(x_3999.x, x_3999.y);
          let x_4002 : f32 = u_xlat11.z;
          txVec60 = vec3<f32>(x_4000.x, x_4000.y, x_4002);
          let x_4010 : vec3<f32> = txVec60;
          let x_4012 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4010.xy, x_4010.z);
          u_xlat13.x = x_4012;
          let x_4015 : vec4<f32> = u_xlat12;
          let x_4016 : vec2<f32> = vec2<f32>(x_4015.z, x_4015.w);
          let x_4018 : f32 = u_xlat11.z;
          txVec61 = vec3<f32>(x_4016.x, x_4016.y, x_4018);
          let x_4025 : vec3<f32> = txVec61;
          let x_4027 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4025.xy, x_4025.z);
          u_xlat13.y = x_4027;
          let x_4029 : vec4<f32> = u_xlat11;
          let x_4033 : vec4<f32> = x_265.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_4029.x, x_4029.y, x_4029.x, x_4029.y) + x_4033);
          let x_4036 : vec4<f32> = u_xlat12;
          let x_4037 : vec2<f32> = vec2<f32>(x_4036.x, x_4036.y);
          let x_4039 : f32 = u_xlat11.z;
          txVec62 = vec3<f32>(x_4037.x, x_4037.y, x_4039);
          let x_4046 : vec3<f32> = txVec62;
          let x_4048 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4046.xy, x_4046.z);
          u_xlat13.z = x_4048;
          let x_4051 : vec4<f32> = u_xlat12;
          let x_4052 : vec2<f32> = vec2<f32>(x_4051.z, x_4051.w);
          let x_4054 : f32 = u_xlat11.z;
          txVec63 = vec3<f32>(x_4052.x, x_4052.y, x_4054);
          let x_4061 : vec3<f32> = txVec63;
          let x_4063 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4061.xy, x_4061.z);
          u_xlat13.w = x_4063;
          let x_4065 : vec4<f32> = u_xlat13;
          u_xlat86 = dot(x_4065, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_4068 : i32 = u_xlati82;
          let x_4070 : f32 = x_265.x_AdditionalShadowParams[x_4068].y;
          u_xlatb87 = (2.0f == x_4070);
          let x_4072 : bool = u_xlatb87;
          if (x_4072) {
            let x_4075 : vec4<f32> = u_xlat11;
            let x_4079 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4082 : vec2<f32> = ((vec2<f32>(x_4075.x, x_4075.y) * vec2<f32>(x_4079.z, x_4079.w)) + vec2<f32>(0.5f, 0.5f));
            let x_4083 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4082.x, x_4082.y, x_4083.z, x_4083.w);
            let x_4085 : vec4<f32> = u_xlat12;
            let x_4087 : vec2<f32> = floor(vec2<f32>(x_4085.x, x_4085.y));
            let x_4088 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4087.x, x_4087.y, x_4088.z, x_4088.w);
            let x_4091 : vec4<f32> = u_xlat11;
            let x_4094 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4097 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_4091.x, x_4091.y) * vec2<f32>(x_4094.z, x_4094.w)) + -(vec2<f32>(x_4097.x, x_4097.y)));
            let x_4101 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_4101.x, x_4101.x, x_4101.y, x_4101.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_4104 : vec4<f32> = u_xlat13;
            let x_4106 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_4104.x, x_4104.x, x_4104.z, x_4104.z) * vec4<f32>(x_4106.x, x_4106.x, x_4106.z, x_4106.z));
            let x_4109 : vec4<f32> = u_xlat14;
            let x_4111 : vec2<f32> = (vec2<f32>(x_4109.y, x_4109.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_4112 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4111.x, x_4112.y, x_4111.y, x_4112.w);
            let x_4114 : vec4<f32> = u_xlat14;
            let x_4117 : vec2<f32> = u_xlat64;
            let x_4119 : vec2<f32> = ((vec2<f32>(x_4114.x, x_4114.z) * vec2<f32>(0.5f, 0.5f)) + -(x_4117));
            let x_4120 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4119.x, x_4119.y, x_4120.z, x_4120.w);
            let x_4123 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_4123) + vec2<f32>(1.0f, 1.0f));
            let x_4126 : vec2<f32> = u_xlat64;
            let x_4127 : vec2<f32> = min(x_4126, vec2<f32>(0.0f, 0.0f));
            let x_4128 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4127.x, x_4127.y, x_4128.z, x_4128.w);
            let x_4130 : vec4<f32> = u_xlat15;
            let x_4133 : vec4<f32> = u_xlat15;
            let x_4136 : vec2<f32> = u_xlat66;
            let x_4137 : vec2<f32> = ((-(vec2<f32>(x_4130.x, x_4130.y)) * vec2<f32>(x_4133.x, x_4133.y)) + x_4136);
            let x_4138 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4137.x, x_4137.y, x_4138.z, x_4138.w);
            let x_4140 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_4140, vec2<f32>(0.0f, 0.0f));
            let x_4142 : vec2<f32> = u_xlat64;
            let x_4144 : vec2<f32> = u_xlat64;
            let x_4146 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_4142) * x_4144) + vec2<f32>(x_4146.y, x_4146.w));
            let x_4149 : vec4<f32> = u_xlat15;
            let x_4151 : vec2<f32> = (vec2<f32>(x_4149.x, x_4149.y) + vec2<f32>(1.0f, 1.0f));
            let x_4152 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4151.x, x_4151.y, x_4152.z, x_4152.w);
            let x_4154 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_4154 + vec2<f32>(1.0f, 1.0f));
            let x_4156 : vec4<f32> = u_xlat14;
            let x_4158 : vec2<f32> = (vec2<f32>(x_4156.x, x_4156.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4159 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4158.x, x_4158.y, x_4159.z, x_4159.w);
            let x_4161 : vec2<f32> = u_xlat66;
            let x_4162 : vec2<f32> = (x_4161 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4163 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4162.x, x_4162.y, x_4163.z, x_4163.w);
            let x_4165 : vec4<f32> = u_xlat15;
            let x_4167 : vec2<f32> = (vec2<f32>(x_4165.x, x_4165.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4168 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4167.x, x_4167.y, x_4168.z, x_4168.w);
            let x_4170 : vec2<f32> = u_xlat64;
            let x_4171 : vec2<f32> = (x_4170 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4172 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4171.x, x_4171.y, x_4172.z, x_4172.w);
            let x_4174 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_4174.y, x_4174.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4178 : f32 = u_xlat15.x;
            u_xlat16.z = x_4178;
            let x_4181 : f32 = u_xlat64.x;
            u_xlat16.w = x_4181;
            let x_4184 : f32 = u_xlat17.x;
            u_xlat14.z = x_4184;
            let x_4187 : f32 = u_xlat13.x;
            u_xlat14.w = x_4187;
            let x_4189 : vec4<f32> = u_xlat14;
            let x_4191 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_4189.z, x_4189.w, x_4189.x, x_4189.z) + vec4<f32>(x_4191.z, x_4191.w, x_4191.x, x_4191.z));
            let x_4195 : f32 = u_xlat16.y;
            u_xlat15.z = x_4195;
            let x_4198 : f32 = u_xlat64.y;
            u_xlat15.w = x_4198;
            let x_4201 : f32 = u_xlat14.y;
            u_xlat17.z = x_4201;
            let x_4204 : f32 = u_xlat13.z;
            u_xlat17.w = x_4204;
            let x_4206 : vec4<f32> = u_xlat15;
            let x_4208 : vec4<f32> = u_xlat17;
            let x_4210 : vec3<f32> = (vec3<f32>(x_4206.z, x_4206.y, x_4206.w) + vec3<f32>(x_4208.z, x_4208.y, x_4208.w));
            let x_4211 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4210.x, x_4210.y, x_4210.z, x_4211.w);
            let x_4213 : vec4<f32> = u_xlat14;
            let x_4215 : vec4<f32> = u_xlat18;
            let x_4217 : vec3<f32> = (vec3<f32>(x_4213.x, x_4213.z, x_4213.w) / vec3<f32>(x_4215.z, x_4215.w, x_4215.y));
            let x_4218 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4217.x, x_4217.y, x_4217.z, x_4218.w);
            let x_4220 : vec4<f32> = u_xlat14;
            let x_4222 : vec3<f32> = (vec3<f32>(x_4220.x, x_4220.y, x_4220.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4223 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4222.x, x_4222.y, x_4222.z, x_4223.w);
            let x_4225 : vec4<f32> = u_xlat17;
            let x_4227 : vec4<f32> = u_xlat13;
            let x_4229 : vec3<f32> = (vec3<f32>(x_4225.z, x_4225.y, x_4225.w) / vec3<f32>(x_4227.x, x_4227.y, x_4227.z));
            let x_4230 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4229.x, x_4229.y, x_4229.z, x_4230.w);
            let x_4232 : vec4<f32> = u_xlat15;
            let x_4234 : vec3<f32> = (vec3<f32>(x_4232.x, x_4232.y, x_4232.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4235 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4234.x, x_4234.y, x_4234.z, x_4235.w);
            let x_4237 : vec4<f32> = u_xlat14;
            let x_4240 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4242 : vec3<f32> = (vec3<f32>(x_4237.y, x_4237.x, x_4237.z) * vec3<f32>(x_4240.x, x_4240.x, x_4240.x));
            let x_4243 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4242.x, x_4242.y, x_4242.z, x_4243.w);
            let x_4245 : vec4<f32> = u_xlat15;
            let x_4248 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4250 : vec3<f32> = (vec3<f32>(x_4245.x, x_4245.y, x_4245.z) * vec3<f32>(x_4248.y, x_4248.y, x_4248.y));
            let x_4251 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4250.x, x_4250.y, x_4250.z, x_4251.w);
            let x_4254 : f32 = u_xlat15.x;
            u_xlat14.w = x_4254;
            let x_4256 : vec4<f32> = u_xlat12;
            let x_4259 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4262 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_4256.x, x_4256.y, x_4256.x, x_4256.y) * vec4<f32>(x_4259.x, x_4259.y, x_4259.x, x_4259.y)) + vec4<f32>(x_4262.y, x_4262.w, x_4262.x, x_4262.w));
            let x_4265 : vec4<f32> = u_xlat12;
            let x_4268 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4271 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_4265.x, x_4265.y) * vec2<f32>(x_4268.x, x_4268.y)) + vec2<f32>(x_4271.z, x_4271.w));
            let x_4275 : f32 = u_xlat14.y;
            u_xlat15.w = x_4275;
            let x_4277 : vec4<f32> = u_xlat15;
            let x_4278 : vec2<f32> = vec2<f32>(x_4277.y, x_4277.z);
            let x_4279 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4279.x, x_4278.x, x_4279.z, x_4278.y);
            let x_4281 : vec4<f32> = u_xlat12;
            let x_4284 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4287 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_4281.x, x_4281.y, x_4281.x, x_4281.y) * vec4<f32>(x_4284.x, x_4284.y, x_4284.x, x_4284.y)) + vec4<f32>(x_4287.x, x_4287.y, x_4287.z, x_4287.y));
            let x_4290 : vec4<f32> = u_xlat12;
            let x_4293 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4296 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_4290.x, x_4290.y, x_4290.x, x_4290.y) * vec4<f32>(x_4293.x, x_4293.y, x_4293.x, x_4293.y)) + vec4<f32>(x_4296.w, x_4296.y, x_4296.w, x_4296.z));
            let x_4299 : vec4<f32> = u_xlat12;
            let x_4302 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4305 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_4299.x, x_4299.y, x_4299.x, x_4299.y) * vec4<f32>(x_4302.x, x_4302.y, x_4302.x, x_4302.y)) + vec4<f32>(x_4305.x, x_4305.w, x_4305.z, x_4305.w));
            let x_4308 : vec4<f32> = u_xlat13;
            let x_4310 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_4308.x, x_4308.x, x_4308.x, x_4308.y) * vec4<f32>(x_4310.z, x_4310.w, x_4310.y, x_4310.z));
            let x_4313 : vec4<f32> = u_xlat13;
            let x_4315 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_4313.y, x_4313.y, x_4313.z, x_4313.z) * x_4315);
            let x_4318 : f32 = u_xlat13.z;
            let x_4320 : f32 = u_xlat18.y;
            u_xlat87 = (x_4318 * x_4320);
            let x_4323 : vec4<f32> = u_xlat16;
            let x_4324 : vec2<f32> = vec2<f32>(x_4323.x, x_4323.y);
            let x_4326 : f32 = u_xlat11.z;
            txVec64 = vec3<f32>(x_4324.x, x_4324.y, x_4326);
            let x_4333 : vec3<f32> = txVec64;
            let x_4335 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4333.xy, x_4333.z);
            u_xlat88 = x_4335;
            let x_4337 : vec4<f32> = u_xlat16;
            let x_4338 : vec2<f32> = vec2<f32>(x_4337.z, x_4337.w);
            let x_4340 : f32 = u_xlat11.z;
            txVec65 = vec3<f32>(x_4338.x, x_4338.y, x_4340);
            let x_4348 : vec3<f32> = txVec65;
            let x_4350 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4348.xy, x_4348.z);
            u_xlat89 = x_4350;
            let x_4351 : f32 = u_xlat89;
            let x_4353 : f32 = u_xlat19.y;
            u_xlat89 = (x_4351 * x_4353);
            let x_4356 : f32 = u_xlat19.x;
            let x_4357 : f32 = u_xlat88;
            let x_4359 : f32 = u_xlat89;
            u_xlat88 = ((x_4356 * x_4357) + x_4359);
            let x_4362 : vec2<f32> = u_xlat64;
            let x_4364 : f32 = u_xlat11.z;
            txVec66 = vec3<f32>(x_4362.x, x_4362.y, x_4364);
            let x_4371 : vec3<f32> = txVec66;
            let x_4373 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4371.xy, x_4371.z);
            u_xlat89 = x_4373;
            let x_4375 : f32 = u_xlat19.z;
            let x_4376 : f32 = u_xlat89;
            let x_4378 : f32 = u_xlat88;
            u_xlat88 = ((x_4375 * x_4376) + x_4378);
            let x_4381 : vec4<f32> = u_xlat15;
            let x_4382 : vec2<f32> = vec2<f32>(x_4381.x, x_4381.y);
            let x_4384 : f32 = u_xlat11.z;
            txVec67 = vec3<f32>(x_4382.x, x_4382.y, x_4384);
            let x_4391 : vec3<f32> = txVec67;
            let x_4393 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4391.xy, x_4391.z);
            u_xlat89 = x_4393;
            let x_4395 : f32 = u_xlat19.w;
            let x_4396 : f32 = u_xlat89;
            let x_4398 : f32 = u_xlat88;
            u_xlat88 = ((x_4395 * x_4396) + x_4398);
            let x_4401 : vec4<f32> = u_xlat17;
            let x_4402 : vec2<f32> = vec2<f32>(x_4401.x, x_4401.y);
            let x_4404 : f32 = u_xlat11.z;
            txVec68 = vec3<f32>(x_4402.x, x_4402.y, x_4404);
            let x_4411 : vec3<f32> = txVec68;
            let x_4413 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4411.xy, x_4411.z);
            u_xlat89 = x_4413;
            let x_4415 : f32 = u_xlat20.x;
            let x_4416 : f32 = u_xlat89;
            let x_4418 : f32 = u_xlat88;
            u_xlat88 = ((x_4415 * x_4416) + x_4418);
            let x_4421 : vec4<f32> = u_xlat17;
            let x_4422 : vec2<f32> = vec2<f32>(x_4421.z, x_4421.w);
            let x_4424 : f32 = u_xlat11.z;
            txVec69 = vec3<f32>(x_4422.x, x_4422.y, x_4424);
            let x_4431 : vec3<f32> = txVec69;
            let x_4433 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4431.xy, x_4431.z);
            u_xlat89 = x_4433;
            let x_4435 : f32 = u_xlat20.y;
            let x_4436 : f32 = u_xlat89;
            let x_4438 : f32 = u_xlat88;
            u_xlat88 = ((x_4435 * x_4436) + x_4438);
            let x_4441 : vec4<f32> = u_xlat15;
            let x_4442 : vec2<f32> = vec2<f32>(x_4441.z, x_4441.w);
            let x_4444 : f32 = u_xlat11.z;
            txVec70 = vec3<f32>(x_4442.x, x_4442.y, x_4444);
            let x_4451 : vec3<f32> = txVec70;
            let x_4453 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4451.xy, x_4451.z);
            u_xlat89 = x_4453;
            let x_4455 : f32 = u_xlat20.z;
            let x_4456 : f32 = u_xlat89;
            let x_4458 : f32 = u_xlat88;
            u_xlat88 = ((x_4455 * x_4456) + x_4458);
            let x_4461 : vec4<f32> = u_xlat14;
            let x_4462 : vec2<f32> = vec2<f32>(x_4461.x, x_4461.y);
            let x_4464 : f32 = u_xlat11.z;
            txVec71 = vec3<f32>(x_4462.x, x_4462.y, x_4464);
            let x_4471 : vec3<f32> = txVec71;
            let x_4473 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4471.xy, x_4471.z);
            u_xlat89 = x_4473;
            let x_4475 : f32 = u_xlat20.w;
            let x_4476 : f32 = u_xlat89;
            let x_4478 : f32 = u_xlat88;
            u_xlat88 = ((x_4475 * x_4476) + x_4478);
            let x_4481 : vec4<f32> = u_xlat14;
            let x_4482 : vec2<f32> = vec2<f32>(x_4481.z, x_4481.w);
            let x_4484 : f32 = u_xlat11.z;
            txVec72 = vec3<f32>(x_4482.x, x_4482.y, x_4484);
            let x_4491 : vec3<f32> = txVec72;
            let x_4493 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4491.xy, x_4491.z);
            u_xlat89 = x_4493;
            let x_4494 : f32 = u_xlat87;
            let x_4495 : f32 = u_xlat89;
            let x_4497 : f32 = u_xlat88;
            u_xlat86 = ((x_4494 * x_4495) + x_4497);
          } else {
            let x_4500 : vec4<f32> = u_xlat11;
            let x_4503 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4506 : vec2<f32> = ((vec2<f32>(x_4500.x, x_4500.y) * vec2<f32>(x_4503.z, x_4503.w)) + vec2<f32>(0.5f, 0.5f));
            let x_4507 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4506.x, x_4506.y, x_4507.z, x_4507.w);
            let x_4509 : vec4<f32> = u_xlat12;
            let x_4511 : vec2<f32> = floor(vec2<f32>(x_4509.x, x_4509.y));
            let x_4512 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4511.x, x_4511.y, x_4512.z, x_4512.w);
            let x_4514 : vec4<f32> = u_xlat11;
            let x_4517 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4520 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_4514.x, x_4514.y) * vec2<f32>(x_4517.z, x_4517.w)) + -(vec2<f32>(x_4520.x, x_4520.y)));
            let x_4524 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_4524.x, x_4524.x, x_4524.y, x_4524.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_4527 : vec4<f32> = u_xlat13;
            let x_4529 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_4527.x, x_4527.x, x_4527.z, x_4527.z) * vec4<f32>(x_4529.x, x_4529.x, x_4529.z, x_4529.z));
            let x_4532 : vec4<f32> = u_xlat14;
            let x_4534 : vec2<f32> = (vec2<f32>(x_4532.y, x_4532.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_4535 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4535.x, x_4534.x, x_4535.z, x_4534.y);
            let x_4537 : vec4<f32> = u_xlat14;
            let x_4540 : vec2<f32> = u_xlat64;
            let x_4542 : vec2<f32> = ((vec2<f32>(x_4537.x, x_4537.z) * vec2<f32>(0.5f, 0.5f)) + -(x_4540));
            let x_4543 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4542.x, x_4543.y, x_4542.y, x_4543.w);
            let x_4545 : vec2<f32> = u_xlat64;
            let x_4547 : vec2<f32> = (-(x_4545) + vec2<f32>(1.0f, 1.0f));
            let x_4548 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4547.x, x_4547.y, x_4548.z, x_4548.w);
            let x_4550 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_4550, vec2<f32>(0.0f, 0.0f));
            let x_4552 : vec2<f32> = u_xlat66;
            let x_4554 : vec2<f32> = u_xlat66;
            let x_4556 : vec4<f32> = u_xlat14;
            let x_4558 : vec2<f32> = ((-(x_4552) * x_4554) + vec2<f32>(x_4556.x, x_4556.y));
            let x_4559 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4558.x, x_4558.y, x_4559.z, x_4559.w);
            let x_4561 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_4561, vec2<f32>(0.0f, 0.0f));
            let x_4564 : vec2<f32> = u_xlat66;
            let x_4566 : vec2<f32> = u_xlat66;
            let x_4568 : vec4<f32> = u_xlat13;
            let x_4570 : vec2<f32> = ((-(x_4564) * x_4566) + vec2<f32>(x_4568.y, x_4568.w));
            let x_4571 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_4570.x, x_4571.y, x_4570.y);
            let x_4573 : vec4<f32> = u_xlat14;
            let x_4575 : vec2<f32> = (vec2<f32>(x_4573.x, x_4573.y) + vec2<f32>(2.0f, 2.0f));
            let x_4576 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4575.x, x_4575.y, x_4576.z, x_4576.w);
            let x_4578 : vec3<f32> = u_xlat39;
            let x_4580 : vec2<f32> = (vec2<f32>(x_4578.x, x_4578.z) + vec2<f32>(2.0f, 2.0f));
            let x_4581 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4581.x, x_4580.x, x_4581.z, x_4580.y);
            let x_4584 : f32 = u_xlat13.y;
            u_xlat16.z = (x_4584 * 0.08163200318813323975f);
            let x_4587 : vec4<f32> = u_xlat13;
            let x_4589 : vec3<f32> = (vec3<f32>(x_4587.z, x_4587.x, x_4587.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_4590 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4589.x, x_4589.y, x_4589.z, x_4590.w);
            let x_4592 : vec4<f32> = u_xlat14;
            let x_4594 : vec2<f32> = (vec2<f32>(x_4592.x, x_4592.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_4595 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4594.x, x_4594.y, x_4595.z, x_4595.w);
            let x_4598 : f32 = u_xlat17.y;
            u_xlat16.x = x_4598;
            let x_4600 : vec2<f32> = u_xlat64;
            let x_4603 : vec2<f32> = ((vec2<f32>(x_4600.x, x_4600.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4604 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4604.x, x_4603.x, x_4604.z, x_4603.y);
            let x_4606 : vec2<f32> = u_xlat64;
            let x_4609 : vec2<f32> = ((vec2<f32>(x_4606.x, x_4606.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4610 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4609.x, x_4610.y, x_4609.y, x_4610.w);
            let x_4613 : f32 = u_xlat13.x;
            u_xlat14.y = x_4613;
            let x_4616 : f32 = u_xlat15.y;
            u_xlat14.w = x_4616;
            let x_4618 : vec4<f32> = u_xlat14;
            let x_4619 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_4618 + x_4619);
            let x_4621 : vec2<f32> = u_xlat64;
            let x_4624 : vec2<f32> = ((vec2<f32>(x_4621.y, x_4621.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4625 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4625.x, x_4624.x, x_4625.z, x_4624.y);
            let x_4627 : vec2<f32> = u_xlat64;
            let x_4630 : vec2<f32> = ((vec2<f32>(x_4627.y, x_4627.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4631 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4630.x, x_4631.y, x_4630.y, x_4631.w);
            let x_4634 : f32 = u_xlat13.y;
            u_xlat15.y = x_4634;
            let x_4636 : vec4<f32> = u_xlat15;
            let x_4637 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_4636 + x_4637);
            let x_4639 : vec4<f32> = u_xlat14;
            let x_4640 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_4639 / x_4640);
            let x_4642 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_4642 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4644 : vec4<f32> = u_xlat15;
            let x_4645 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_4644 / x_4645);
            let x_4647 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_4647 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4649 : vec4<f32> = u_xlat14;
            let x_4652 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_4649.w, x_4649.x, x_4649.y, x_4649.z) * vec4<f32>(x_4652.x, x_4652.x, x_4652.x, x_4652.x));
            let x_4655 : vec4<f32> = u_xlat15;
            let x_4658 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_4655.x, x_4655.w, x_4655.y, x_4655.z) * vec4<f32>(x_4658.y, x_4658.y, x_4658.y, x_4658.y));
            let x_4661 : vec4<f32> = u_xlat14;
            let x_4662 : vec3<f32> = vec3<f32>(x_4661.y, x_4661.z, x_4661.w);
            let x_4663 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_4662.x, x_4663.y, x_4662.y, x_4662.z);
            let x_4666 : f32 = u_xlat15.x;
            u_xlat17.y = x_4666;
            let x_4668 : vec4<f32> = u_xlat12;
            let x_4671 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4674 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_4668.x, x_4668.y, x_4668.x, x_4668.y) * vec4<f32>(x_4671.x, x_4671.y, x_4671.x, x_4671.y)) + vec4<f32>(x_4674.x, x_4674.y, x_4674.z, x_4674.y));
            let x_4677 : vec4<f32> = u_xlat12;
            let x_4680 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4683 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_4677.x, x_4677.y) * vec2<f32>(x_4680.x, x_4680.y)) + vec2<f32>(x_4683.w, x_4683.y));
            let x_4687 : f32 = u_xlat17.y;
            u_xlat14.y = x_4687;
            let x_4690 : f32 = u_xlat15.z;
            u_xlat17.y = x_4690;
            let x_4692 : vec4<f32> = u_xlat12;
            let x_4695 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4698 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_4692.x, x_4692.y, x_4692.x, x_4692.y) * vec4<f32>(x_4695.x, x_4695.y, x_4695.x, x_4695.y)) + vec4<f32>(x_4698.x, x_4698.y, x_4698.z, x_4698.y));
            let x_4701 : vec4<f32> = u_xlat12;
            let x_4704 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4707 : vec4<f32> = u_xlat17;
            let x_4709 : vec2<f32> = ((vec2<f32>(x_4701.x, x_4701.y) * vec2<f32>(x_4704.x, x_4704.y)) + vec2<f32>(x_4707.w, x_4707.y));
            let x_4710 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_4709.x, x_4709.y, x_4710.z, x_4710.w);
            let x_4713 : f32 = u_xlat17.y;
            u_xlat14.z = x_4713;
            let x_4716 : vec4<f32> = u_xlat12;
            let x_4719 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4722 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_4716.x, x_4716.y, x_4716.x, x_4716.y) * vec4<f32>(x_4719.x, x_4719.y, x_4719.x, x_4719.y)) + vec4<f32>(x_4722.x, x_4722.y, x_4722.x, x_4722.z));
            let x_4726 : f32 = u_xlat15.w;
            u_xlat17.y = x_4726;
            let x_4729 : vec4<f32> = u_xlat12;
            let x_4732 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4735 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_4729.x, x_4729.y, x_4729.x, x_4729.y) * vec4<f32>(x_4732.x, x_4732.y, x_4732.x, x_4732.y)) + vec4<f32>(x_4735.x, x_4735.y, x_4735.z, x_4735.y));
            let x_4739 : vec4<f32> = u_xlat12;
            let x_4742 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4745 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_4739.x, x_4739.y) * vec2<f32>(x_4742.x, x_4742.y)) + vec2<f32>(x_4745.w, x_4745.y));
            let x_4749 : f32 = u_xlat17.y;
            u_xlat14.w = x_4749;
            let x_4752 : vec4<f32> = u_xlat12;
            let x_4755 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4758 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_4752.x, x_4752.y) * vec2<f32>(x_4755.x, x_4755.y)) + vec2<f32>(x_4758.x, x_4758.w));
            let x_4761 : vec4<f32> = u_xlat17;
            let x_4762 : vec3<f32> = vec3<f32>(x_4761.x, x_4761.z, x_4761.w);
            let x_4763 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4762.x, x_4763.y, x_4762.y, x_4762.z);
            let x_4765 : vec4<f32> = u_xlat12;
            let x_4768 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4771 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_4765.x, x_4765.y, x_4765.x, x_4765.y) * vec4<f32>(x_4768.x, x_4768.y, x_4768.x, x_4768.y)) + vec4<f32>(x_4771.x, x_4771.y, x_4771.z, x_4771.y));
            let x_4774 : vec4<f32> = u_xlat12;
            let x_4777 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4780 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_4774.x, x_4774.y) * vec2<f32>(x_4777.x, x_4777.y)) + vec2<f32>(x_4780.w, x_4780.y));
            let x_4784 : f32 = u_xlat14.x;
            u_xlat15.x = x_4784;
            let x_4786 : vec4<f32> = u_xlat12;
            let x_4789 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4792 : vec4<f32> = u_xlat15;
            let x_4794 : vec2<f32> = ((vec2<f32>(x_4786.x, x_4786.y) * vec2<f32>(x_4789.x, x_4789.y)) + vec2<f32>(x_4792.x, x_4792.y));
            let x_4795 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4794.x, x_4794.y, x_4795.z, x_4795.w);
            let x_4798 : vec4<f32> = u_xlat13;
            let x_4800 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_4798.x, x_4798.x, x_4798.x, x_4798.x) * x_4800);
            let x_4803 : vec4<f32> = u_xlat13;
            let x_4805 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_4803.y, x_4803.y, x_4803.y, x_4803.y) * x_4805);
            let x_4808 : vec4<f32> = u_xlat13;
            let x_4810 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_4808.z, x_4808.z, x_4808.z, x_4808.z) * x_4810);
            let x_4812 : vec4<f32> = u_xlat13;
            let x_4814 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_4812.w, x_4812.w, x_4812.w, x_4812.w) * x_4814);
            let x_4817 : vec4<f32> = u_xlat18;
            let x_4818 : vec2<f32> = vec2<f32>(x_4817.x, x_4817.y);
            let x_4820 : f32 = u_xlat11.z;
            txVec73 = vec3<f32>(x_4818.x, x_4818.y, x_4820);
            let x_4827 : vec3<f32> = txVec73;
            let x_4829 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4827.xy, x_4827.z);
            u_xlat87 = x_4829;
            let x_4831 : vec4<f32> = u_xlat18;
            let x_4832 : vec2<f32> = vec2<f32>(x_4831.z, x_4831.w);
            let x_4834 : f32 = u_xlat11.z;
            txVec74 = vec3<f32>(x_4832.x, x_4832.y, x_4834);
            let x_4841 : vec3<f32> = txVec74;
            let x_4843 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4841.xy, x_4841.z);
            u_xlat88 = x_4843;
            let x_4844 : f32 = u_xlat88;
            let x_4846 : f32 = u_xlat23.y;
            u_xlat88 = (x_4844 * x_4846);
            let x_4849 : f32 = u_xlat23.x;
            let x_4850 : f32 = u_xlat87;
            let x_4852 : f32 = u_xlat88;
            u_xlat87 = ((x_4849 * x_4850) + x_4852);
            let x_4855 : vec2<f32> = u_xlat64;
            let x_4857 : f32 = u_xlat11.z;
            txVec75 = vec3<f32>(x_4855.x, x_4855.y, x_4857);
            let x_4864 : vec3<f32> = txVec75;
            let x_4866 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4864.xy, x_4864.z);
            u_xlat88 = x_4866;
            let x_4868 : f32 = u_xlat23.z;
            let x_4869 : f32 = u_xlat88;
            let x_4871 : f32 = u_xlat87;
            u_xlat87 = ((x_4868 * x_4869) + x_4871);
            let x_4874 : vec4<f32> = u_xlat21;
            let x_4875 : vec2<f32> = vec2<f32>(x_4874.x, x_4874.y);
            let x_4877 : f32 = u_xlat11.z;
            txVec76 = vec3<f32>(x_4875.x, x_4875.y, x_4877);
            let x_4884 : vec3<f32> = txVec76;
            let x_4886 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4884.xy, x_4884.z);
            u_xlat88 = x_4886;
            let x_4888 : f32 = u_xlat23.w;
            let x_4889 : f32 = u_xlat88;
            let x_4891 : f32 = u_xlat87;
            u_xlat87 = ((x_4888 * x_4889) + x_4891);
            let x_4894 : vec4<f32> = u_xlat19;
            let x_4895 : vec2<f32> = vec2<f32>(x_4894.x, x_4894.y);
            let x_4897 : f32 = u_xlat11.z;
            txVec77 = vec3<f32>(x_4895.x, x_4895.y, x_4897);
            let x_4904 : vec3<f32> = txVec77;
            let x_4906 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4904.xy, x_4904.z);
            u_xlat88 = x_4906;
            let x_4908 : f32 = u_xlat24.x;
            let x_4909 : f32 = u_xlat88;
            let x_4911 : f32 = u_xlat87;
            u_xlat87 = ((x_4908 * x_4909) + x_4911);
            let x_4914 : vec4<f32> = u_xlat19;
            let x_4915 : vec2<f32> = vec2<f32>(x_4914.z, x_4914.w);
            let x_4917 : f32 = u_xlat11.z;
            txVec78 = vec3<f32>(x_4915.x, x_4915.y, x_4917);
            let x_4924 : vec3<f32> = txVec78;
            let x_4926 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4924.xy, x_4924.z);
            u_xlat88 = x_4926;
            let x_4928 : f32 = u_xlat24.y;
            let x_4929 : f32 = u_xlat88;
            let x_4931 : f32 = u_xlat87;
            u_xlat87 = ((x_4928 * x_4929) + x_4931);
            let x_4934 : vec4<f32> = u_xlat20;
            let x_4935 : vec2<f32> = vec2<f32>(x_4934.x, x_4934.y);
            let x_4937 : f32 = u_xlat11.z;
            txVec79 = vec3<f32>(x_4935.x, x_4935.y, x_4937);
            let x_4944 : vec3<f32> = txVec79;
            let x_4946 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4944.xy, x_4944.z);
            u_xlat88 = x_4946;
            let x_4948 : f32 = u_xlat24.z;
            let x_4949 : f32 = u_xlat88;
            let x_4951 : f32 = u_xlat87;
            u_xlat87 = ((x_4948 * x_4949) + x_4951);
            let x_4954 : vec4<f32> = u_xlat21;
            let x_4955 : vec2<f32> = vec2<f32>(x_4954.z, x_4954.w);
            let x_4957 : f32 = u_xlat11.z;
            txVec80 = vec3<f32>(x_4955.x, x_4955.y, x_4957);
            let x_4964 : vec3<f32> = txVec80;
            let x_4966 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4964.xy, x_4964.z);
            u_xlat88 = x_4966;
            let x_4968 : f32 = u_xlat24.w;
            let x_4969 : f32 = u_xlat88;
            let x_4971 : f32 = u_xlat87;
            u_xlat87 = ((x_4968 * x_4969) + x_4971);
            let x_4974 : vec4<f32> = u_xlat22;
            let x_4975 : vec2<f32> = vec2<f32>(x_4974.x, x_4974.y);
            let x_4977 : f32 = u_xlat11.z;
            txVec81 = vec3<f32>(x_4975.x, x_4975.y, x_4977);
            let x_4984 : vec3<f32> = txVec81;
            let x_4986 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4984.xy, x_4984.z);
            u_xlat88 = x_4986;
            let x_4988 : f32 = u_xlat25.x;
            let x_4989 : f32 = u_xlat88;
            let x_4991 : f32 = u_xlat87;
            u_xlat87 = ((x_4988 * x_4989) + x_4991);
            let x_4994 : vec4<f32> = u_xlat22;
            let x_4995 : vec2<f32> = vec2<f32>(x_4994.z, x_4994.w);
            let x_4997 : f32 = u_xlat11.z;
            txVec82 = vec3<f32>(x_4995.x, x_4995.y, x_4997);
            let x_5004 : vec3<f32> = txVec82;
            let x_5006 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5004.xy, x_5004.z);
            u_xlat88 = x_5006;
            let x_5008 : f32 = u_xlat25.y;
            let x_5009 : f32 = u_xlat88;
            let x_5011 : f32 = u_xlat87;
            u_xlat87 = ((x_5008 * x_5009) + x_5011);
            let x_5014 : vec2<f32> = u_xlat40;
            let x_5016 : f32 = u_xlat11.z;
            txVec83 = vec3<f32>(x_5014.x, x_5014.y, x_5016);
            let x_5023 : vec3<f32> = txVec83;
            let x_5025 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5023.xy, x_5023.z);
            u_xlat88 = x_5025;
            let x_5027 : f32 = u_xlat25.z;
            let x_5028 : f32 = u_xlat88;
            let x_5030 : f32 = u_xlat87;
            u_xlat87 = ((x_5027 * x_5028) + x_5030);
            let x_5033 : vec2<f32> = u_xlat72;
            let x_5035 : f32 = u_xlat11.z;
            txVec84 = vec3<f32>(x_5033.x, x_5033.y, x_5035);
            let x_5042 : vec3<f32> = txVec84;
            let x_5044 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5042.xy, x_5042.z);
            u_xlat88 = x_5044;
            let x_5046 : f32 = u_xlat25.w;
            let x_5047 : f32 = u_xlat88;
            let x_5049 : f32 = u_xlat87;
            u_xlat87 = ((x_5046 * x_5047) + x_5049);
            let x_5052 : vec4<f32> = u_xlat17;
            let x_5053 : vec2<f32> = vec2<f32>(x_5052.x, x_5052.y);
            let x_5055 : f32 = u_xlat11.z;
            txVec85 = vec3<f32>(x_5053.x, x_5053.y, x_5055);
            let x_5062 : vec3<f32> = txVec85;
            let x_5064 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5062.xy, x_5062.z);
            u_xlat88 = x_5064;
            let x_5066 : f32 = u_xlat13.x;
            let x_5067 : f32 = u_xlat88;
            let x_5069 : f32 = u_xlat87;
            u_xlat87 = ((x_5066 * x_5067) + x_5069);
            let x_5072 : vec4<f32> = u_xlat17;
            let x_5073 : vec2<f32> = vec2<f32>(x_5072.z, x_5072.w);
            let x_5075 : f32 = u_xlat11.z;
            txVec86 = vec3<f32>(x_5073.x, x_5073.y, x_5075);
            let x_5082 : vec3<f32> = txVec86;
            let x_5084 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5082.xy, x_5082.z);
            u_xlat88 = x_5084;
            let x_5086 : f32 = u_xlat13.y;
            let x_5087 : f32 = u_xlat88;
            let x_5089 : f32 = u_xlat87;
            u_xlat87 = ((x_5086 * x_5087) + x_5089);
            let x_5092 : vec2<f32> = u_xlat67;
            let x_5094 : f32 = u_xlat11.z;
            txVec87 = vec3<f32>(x_5092.x, x_5092.y, x_5094);
            let x_5101 : vec3<f32> = txVec87;
            let x_5103 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5101.xy, x_5101.z);
            u_xlat88 = x_5103;
            let x_5105 : f32 = u_xlat13.z;
            let x_5106 : f32 = u_xlat88;
            let x_5108 : f32 = u_xlat87;
            u_xlat87 = ((x_5105 * x_5106) + x_5108);
            let x_5111 : vec4<f32> = u_xlat12;
            let x_5112 : vec2<f32> = vec2<f32>(x_5111.x, x_5111.y);
            let x_5114 : f32 = u_xlat11.z;
            txVec88 = vec3<f32>(x_5112.x, x_5112.y, x_5114);
            let x_5121 : vec3<f32> = txVec88;
            let x_5123 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5121.xy, x_5121.z);
            u_xlat88 = x_5123;
            let x_5125 : f32 = u_xlat13.w;
            let x_5126 : f32 = u_xlat88;
            let x_5128 : f32 = u_xlat87;
            u_xlat86 = ((x_5125 * x_5126) + x_5128);
          }
        }
      } else {
        let x_5132 : vec4<f32> = u_xlat11;
        let x_5133 : vec2<f32> = vec2<f32>(x_5132.x, x_5132.y);
        let x_5135 : f32 = u_xlat11.z;
        txVec89 = vec3<f32>(x_5133.x, x_5133.y, x_5135);
        let x_5142 : vec3<f32> = txVec89;
        let x_5144 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5142.xy, x_5142.z);
        u_xlat86 = x_5144;
      }
      let x_5145 : i32 = u_xlati82;
      let x_5147 : f32 = x_265.x_AdditionalShadowParams[x_5145].x;
      u_xlat87 = (1.0f + -(x_5147));
      let x_5150 : f32 = u_xlat86;
      let x_5151 : i32 = u_xlati82;
      let x_5153 : f32 = x_265.x_AdditionalShadowParams[x_5151].x;
      let x_5155 : f32 = u_xlat87;
      u_xlat86 = ((x_5150 * x_5153) + x_5155);
      let x_5158 : f32 = u_xlat11.z;
      u_xlatb87 = (0.0f >= x_5158);
      let x_5162 : f32 = u_xlat11.z;
      u_xlatb88 = (x_5162 >= 1.0f);
      let x_5164 : bool = u_xlatb87;
      let x_5165 : bool = u_xlatb88;
      u_xlatb87 = (x_5164 | x_5165);
      let x_5167 : bool = u_xlatb87;
      let x_5168 : f32 = u_xlat86;
      u_xlat86 = select(x_5168, 1.0f, x_5167);
    } else {
      u_xlat86 = 1.0f;
    }
    let x_5171 : f32 = u_xlat86;
    u_xlat87 = (-(x_5171) + 1.0f);
    let x_5174 : f32 = u_xlat79;
    let x_5175 : f32 = u_xlat87;
    let x_5177 : f32 = u_xlat86;
    u_xlat86 = ((x_5174 * x_5175) + x_5177);
    let x_5180 : i32 = u_xlati82;
    u_xlati87 = (1i << bitcast<u32>((x_5180 & 31i)));
    let x_5184 : i32 = u_xlati87;
    let x_5187 : f32 = x_3291.x_AdditionalLightsCookieEnableBits;
    u_xlati87 = bitcast<i32>((bitcast<u32>(x_5184) & bitcast<u32>(x_5187)));
    let x_5191 : i32 = u_xlati87;
    if ((x_5191 != 0i)) {
      let x_5195 : i32 = u_xlati82;
      let x_5197 : f32 = x_3291.x_AdditionalLightsLightTypes[x_5195].el;
      u_xlati87 = i32(x_5197);
      let x_5200 : i32 = u_xlati87;
      u_xlati88 = select(1i, 0i, (x_5200 != 0i));
      let x_5204 : i32 = u_xlati82;
      u_xlati11 = (x_5204 << bitcast<u32>(2i));
      let x_5206 : i32 = u_xlati88;
      if ((x_5206 != 0i)) {
        let x_5211 : vec3<f32> = vs_INTERP8;
        let x_5213 : i32 = u_xlati11;
        let x_5216 : i32 = u_xlati11;
        let x_5220 : vec4<f32> = x_3291.x_AdditionalLightsWorldToLights[((x_5213 + 1i) / 4i)][((x_5216 + 1i) % 4i)];
        u_xlat37 = (vec3<f32>(x_5211.y, x_5211.y, x_5211.y) * vec3<f32>(x_5220.x, x_5220.y, x_5220.w));
        let x_5223 : i32 = u_xlati11;
        let x_5225 : i32 = u_xlati11;
        let x_5228 : vec4<f32> = x_3291.x_AdditionalLightsWorldToLights[(x_5223 / 4i)][(x_5225 % 4i)];
        let x_5230 : vec3<f32> = vs_INTERP8;
        let x_5233 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_5228.x, x_5228.y, x_5228.w) * vec3<f32>(x_5230.x, x_5230.x, x_5230.x)) + x_5233);
        let x_5235 : i32 = u_xlati11;
        let x_5238 : i32 = u_xlati11;
        let x_5242 : vec4<f32> = x_3291.x_AdditionalLightsWorldToLights[((x_5235 + 2i) / 4i)][((x_5238 + 2i) % 4i)];
        let x_5244 : vec3<f32> = vs_INTERP8;
        let x_5247 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_5242.x, x_5242.y, x_5242.w) * vec3<f32>(x_5244.z, x_5244.z, x_5244.z)) + x_5247);
        let x_5249 : vec3<f32> = u_xlat37;
        let x_5250 : i32 = u_xlati11;
        let x_5253 : i32 = u_xlati11;
        let x_5257 : vec4<f32> = x_3291.x_AdditionalLightsWorldToLights[((x_5250 + 3i) / 4i)][((x_5253 + 3i) % 4i)];
        u_xlat37 = (x_5249 + vec3<f32>(x_5257.x, x_5257.y, x_5257.w));
        let x_5260 : vec3<f32> = u_xlat37;
        let x_5262 : vec3<f32> = u_xlat37;
        let x_5264 : vec2<f32> = (vec2<f32>(x_5260.x, x_5260.y) / vec2<f32>(x_5262.z, x_5262.z));
        let x_5265 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_5264.x, x_5264.y, x_5265.z);
        let x_5267 : vec3<f32> = u_xlat37;
        let x_5270 : vec2<f32> = ((vec2<f32>(x_5267.x, x_5267.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_5271 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_5270.x, x_5270.y, x_5271.z);
        let x_5273 : vec3<f32> = u_xlat37;
        let x_5277 : vec2<f32> = clamp(vec2<f32>(x_5273.x, x_5273.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_5278 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_5277.x, x_5277.y, x_5278.z);
        let x_5280 : i32 = u_xlati82;
        let x_5282 : vec4<f32> = x_3291.x_AdditionalLightsCookieAtlasUVRects[x_5280];
        let x_5284 : vec3<f32> = u_xlat37;
        let x_5287 : i32 = u_xlati82;
        let x_5289 : vec4<f32> = x_3291.x_AdditionalLightsCookieAtlasUVRects[x_5287];
        let x_5291 : vec2<f32> = ((vec2<f32>(x_5282.x, x_5282.y) * vec2<f32>(x_5284.x, x_5284.y)) + vec2<f32>(x_5289.z, x_5289.w));
        let x_5292 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_5291.x, x_5291.y, x_5292.z);
      } else {
        let x_5295 : i32 = u_xlati87;
        u_xlatb87 = (x_5295 == 1i);
        let x_5297 : bool = u_xlatb87;
        u_xlati87 = select(0i, 1i, x_5297);
        let x_5299 : i32 = u_xlati87;
        if ((x_5299 != 0i)) {
          let x_5303 : vec3<f32> = vs_INTERP8;
          let x_5305 : i32 = u_xlati11;
          let x_5308 : i32 = u_xlati11;
          let x_5312 : vec4<f32> = x_3291.x_AdditionalLightsWorldToLights[((x_5305 + 1i) / 4i)][((x_5308 + 1i) % 4i)];
          let x_5314 : vec2<f32> = (vec2<f32>(x_5303.y, x_5303.y) * vec2<f32>(x_5312.x, x_5312.y));
          let x_5315 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5314.x, x_5314.y, x_5315.z, x_5315.w);
          let x_5317 : i32 = u_xlati11;
          let x_5319 : i32 = u_xlati11;
          let x_5322 : vec4<f32> = x_3291.x_AdditionalLightsWorldToLights[(x_5317 / 4i)][(x_5319 % 4i)];
          let x_5324 : vec3<f32> = vs_INTERP8;
          let x_5327 : vec4<f32> = u_xlat12;
          let x_5329 : vec2<f32> = ((vec2<f32>(x_5322.x, x_5322.y) * vec2<f32>(x_5324.x, x_5324.x)) + vec2<f32>(x_5327.x, x_5327.y));
          let x_5330 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5329.x, x_5329.y, x_5330.z, x_5330.w);
          let x_5332 : i32 = u_xlati11;
          let x_5335 : i32 = u_xlati11;
          let x_5339 : vec4<f32> = x_3291.x_AdditionalLightsWorldToLights[((x_5332 + 2i) / 4i)][((x_5335 + 2i) % 4i)];
          let x_5341 : vec3<f32> = vs_INTERP8;
          let x_5344 : vec4<f32> = u_xlat12;
          let x_5346 : vec2<f32> = ((vec2<f32>(x_5339.x, x_5339.y) * vec2<f32>(x_5341.z, x_5341.z)) + vec2<f32>(x_5344.x, x_5344.y));
          let x_5347 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5346.x, x_5346.y, x_5347.z, x_5347.w);
          let x_5349 : vec4<f32> = u_xlat12;
          let x_5351 : i32 = u_xlati11;
          let x_5354 : i32 = u_xlati11;
          let x_5358 : vec4<f32> = x_3291.x_AdditionalLightsWorldToLights[((x_5351 + 3i) / 4i)][((x_5354 + 3i) % 4i)];
          let x_5360 : vec2<f32> = (vec2<f32>(x_5349.x, x_5349.y) + vec2<f32>(x_5358.x, x_5358.y));
          let x_5361 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5360.x, x_5360.y, x_5361.z, x_5361.w);
          let x_5363 : vec4<f32> = u_xlat12;
          let x_5366 : vec2<f32> = ((vec2<f32>(x_5363.x, x_5363.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_5367 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5366.x, x_5366.y, x_5367.z, x_5367.w);
          let x_5369 : vec4<f32> = u_xlat12;
          let x_5371 : vec2<f32> = fract(vec2<f32>(x_5369.x, x_5369.y));
          let x_5372 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5371.x, x_5371.y, x_5372.z, x_5372.w);
          let x_5374 : i32 = u_xlati82;
          let x_5376 : vec4<f32> = x_3291.x_AdditionalLightsCookieAtlasUVRects[x_5374];
          let x_5378 : vec4<f32> = u_xlat12;
          let x_5381 : i32 = u_xlati82;
          let x_5383 : vec4<f32> = x_3291.x_AdditionalLightsCookieAtlasUVRects[x_5381];
          let x_5385 : vec2<f32> = ((vec2<f32>(x_5376.x, x_5376.y) * vec2<f32>(x_5378.x, x_5378.y)) + vec2<f32>(x_5383.z, x_5383.w));
          let x_5386 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_5385.x, x_5385.y, x_5386.z);
        } else {
          let x_5389 : vec3<f32> = vs_INTERP8;
          let x_5391 : i32 = u_xlati11;
          let x_5394 : i32 = u_xlati11;
          let x_5398 : vec4<f32> = x_3291.x_AdditionalLightsWorldToLights[((x_5391 + 1i) / 4i)][((x_5394 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_5389.y, x_5389.y, x_5389.y, x_5389.y) * x_5398);
          let x_5400 : i32 = u_xlati11;
          let x_5402 : i32 = u_xlati11;
          let x_5405 : vec4<f32> = x_3291.x_AdditionalLightsWorldToLights[(x_5400 / 4i)][(x_5402 % 4i)];
          let x_5406 : vec3<f32> = vs_INTERP8;
          let x_5409 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_5405 * vec4<f32>(x_5406.x, x_5406.x, x_5406.x, x_5406.x)) + x_5409);
          let x_5411 : i32 = u_xlati11;
          let x_5414 : i32 = u_xlati11;
          let x_5418 : vec4<f32> = x_3291.x_AdditionalLightsWorldToLights[((x_5411 + 2i) / 4i)][((x_5414 + 2i) % 4i)];
          let x_5419 : vec3<f32> = vs_INTERP8;
          let x_5422 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_5418 * vec4<f32>(x_5419.z, x_5419.z, x_5419.z, x_5419.z)) + x_5422);
          let x_5424 : vec4<f32> = u_xlat12;
          let x_5425 : i32 = u_xlati11;
          let x_5428 : i32 = u_xlati11;
          let x_5432 : vec4<f32> = x_3291.x_AdditionalLightsWorldToLights[((x_5425 + 3i) / 4i)][((x_5428 + 3i) % 4i)];
          u_xlat12 = (x_5424 + x_5432);
          let x_5434 : vec4<f32> = u_xlat12;
          let x_5436 : vec4<f32> = u_xlat12;
          let x_5438 : vec3<f32> = (vec3<f32>(x_5434.x, x_5434.y, x_5434.z) / vec3<f32>(x_5436.w, x_5436.w, x_5436.w));
          let x_5439 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5438.x, x_5438.y, x_5438.z, x_5439.w);
          let x_5441 : vec4<f32> = u_xlat12;
          let x_5443 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(vec3<f32>(x_5441.x, x_5441.y, x_5441.z), vec3<f32>(x_5443.x, x_5443.y, x_5443.z));
          let x_5446 : f32 = u_xlat87;
          u_xlat87 = inverseSqrt(x_5446);
          let x_5448 : f32 = u_xlat87;
          let x_5450 : vec4<f32> = u_xlat12;
          let x_5452 : vec3<f32> = (vec3<f32>(x_5448, x_5448, x_5448) * vec3<f32>(x_5450.x, x_5450.y, x_5450.z));
          let x_5453 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_5452.x, x_5452.y, x_5452.z, x_5453.w);
          let x_5455 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(abs(vec3<f32>(x_5455.x, x_5455.y, x_5455.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_5460 : f32 = u_xlat87;
          u_xlat87 = max(x_5460, 0.00000099999999747524f);
          let x_5463 : f32 = u_xlat87;
          u_xlat87 = (1.0f / x_5463);
          let x_5465 : f32 = u_xlat87;
          let x_5467 : vec4<f32> = u_xlat12;
          let x_5469 : vec3<f32> = (vec3<f32>(x_5465, x_5465, x_5465) * vec3<f32>(x_5467.z, x_5467.x, x_5467.y));
          let x_5470 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_5469.x, x_5469.y, x_5469.z, x_5470.w);
          let x_5473 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_5473);
          let x_5477 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_5477, 0.0f, 1.0f);
          let x_5480 : vec4<f32> = u_xlat13;
          let x_5482 : vec4<bool> = (vec4<f32>(x_5480.y, x_5480.y, x_5480.y, x_5480.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_5483 : vec2<bool> = vec2<bool>(x_5482.x, x_5482.w);
          let x_5484 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_5483.x, x_5484.y, x_5484.z, x_5483.y);
          let x_5487 : bool = u_xlatb11.x;
          if (x_5487) {
            let x_5492 : f32 = u_xlat13.x;
            x_5488 = x_5492;
          } else {
            let x_5495 : f32 = u_xlat13.x;
            x_5488 = -(x_5495);
          }
          let x_5497 : f32 = x_5488;
          u_xlat11.x = x_5497;
          let x_5500 : bool = u_xlatb11.w;
          if (x_5500) {
            let x_5505 : f32 = u_xlat13.x;
            x_5501 = x_5505;
          } else {
            let x_5508 : f32 = u_xlat13.x;
            x_5501 = -(x_5508);
          }
          let x_5510 : f32 = x_5501;
          u_xlat11.w = x_5510;
          let x_5512 : vec4<f32> = u_xlat12;
          let x_5514 : f32 = u_xlat87;
          let x_5517 : vec4<f32> = u_xlat11;
          let x_5519 : vec2<f32> = ((vec2<f32>(x_5512.x, x_5512.y) * vec2<f32>(x_5514, x_5514)) + vec2<f32>(x_5517.x, x_5517.w));
          let x_5520 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_5519.x, x_5520.y, x_5520.z, x_5519.y);
          let x_5522 : vec4<f32> = u_xlat11;
          let x_5525 : vec2<f32> = ((vec2<f32>(x_5522.x, x_5522.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_5526 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_5525.x, x_5526.y, x_5526.z, x_5525.y);
          let x_5528 : vec4<f32> = u_xlat11;
          let x_5532 : vec2<f32> = clamp(vec2<f32>(x_5528.x, x_5528.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_5533 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_5532.x, x_5533.y, x_5533.z, x_5532.y);
          let x_5535 : i32 = u_xlati82;
          let x_5537 : vec4<f32> = x_3291.x_AdditionalLightsCookieAtlasUVRects[x_5535];
          let x_5539 : vec4<f32> = u_xlat11;
          let x_5542 : i32 = u_xlati82;
          let x_5544 : vec4<f32> = x_3291.x_AdditionalLightsCookieAtlasUVRects[x_5542];
          let x_5546 : vec2<f32> = ((vec2<f32>(x_5537.x, x_5537.y) * vec2<f32>(x_5539.x, x_5539.w)) + vec2<f32>(x_5544.z, x_5544.w));
          let x_5547 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_5546.x, x_5546.y, x_5547.z);
        }
      }
      let x_5554 : vec3<f32> = u_xlat37;
      let x_5556 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_5554.x, x_5554.y), 0.0f);
      u_xlat11 = x_5556;
      let x_5558 : bool = u_xlatb7.y;
      if (x_5558) {
        let x_5563 : f32 = u_xlat11.w;
        x_5559 = x_5563;
      } else {
        let x_5566 : f32 = u_xlat11.x;
        x_5559 = x_5566;
      }
      let x_5567 : f32 = x_5559;
      u_xlat87 = x_5567;
      let x_5569 : bool = u_xlatb7.x;
      if (x_5569) {
        let x_5573 : vec4<f32> = u_xlat11;
        x_5570 = vec3<f32>(x_5573.x, x_5573.y, x_5573.z);
      } else {
        let x_5576 : f32 = u_xlat87;
        x_5570 = vec3<f32>(x_5576, x_5576, x_5576);
      }
      let x_5578 : vec3<f32> = x_5570;
      let x_5579 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_5578.x, x_5578.y, x_5578.z, x_5579.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_5585 : vec4<f32> = u_xlat11;
    let x_5587 : i32 = u_xlati82;
    let x_5589 : vec4<f32> = x_3738.x_AdditionalLightsColor[x_5587];
    let x_5591 : vec3<f32> = (vec3<f32>(x_5585.x, x_5585.y, x_5585.z) * vec3<f32>(x_5589.x, x_5589.y, x_5589.z));
    let x_5592 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_5591.x, x_5591.y, x_5591.z, x_5592.w);
    let x_5595 : f32 = u_xlat59.x;
    let x_5596 : f32 = u_xlat86;
    u_xlat82 = (x_5595 * x_5596);
    let x_5598 : vec4<f32> = u_xlat3;
    let x_5600 : vec4<f32> = u_xlat10;
    u_xlat59.x = dot(vec3<f32>(x_5598.x, x_5598.y, x_5598.z), vec3<f32>(x_5600.x, x_5600.y, x_5600.z));
    let x_5605 : f32 = u_xlat59.x;
    u_xlat59.x = clamp(x_5605, 0.0f, 1.0f);
    let x_5608 : f32 = u_xlat82;
    let x_5610 : f32 = u_xlat59.x;
    u_xlat82 = (x_5608 * x_5610);
    let x_5612 : f32 = u_xlat82;
    let x_5614 : vec4<f32> = u_xlat11;
    let x_5616 : vec3<f32> = (vec3<f32>(x_5612, x_5612, x_5612) * vec3<f32>(x_5614.x, x_5614.y, x_5614.z));
    let x_5617 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_5616.x, x_5616.y, x_5616.z, x_5617.w);
    let x_5619 : vec4<f32> = u_xlat9;
    let x_5621 : f32 = u_xlat85;
    let x_5624 : vec3<f32> = u_xlat2;
    let x_5625 : vec3<f32> = ((vec3<f32>(x_5619.x, x_5619.y, x_5619.z) * vec3<f32>(x_5621, x_5621, x_5621)) + x_5624);
    let x_5626 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_5625.x, x_5625.y, x_5625.z, x_5626.w);
    let x_5628 : vec4<f32> = u_xlat9;
    let x_5630 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(vec3<f32>(x_5628.x, x_5628.y, x_5628.z), vec3<f32>(x_5630.x, x_5630.y, x_5630.z));
    let x_5633 : f32 = u_xlat82;
    u_xlat82 = max(x_5633, 1.17549435e-38f);
    let x_5635 : f32 = u_xlat82;
    u_xlat82 = inverseSqrt(x_5635);
    let x_5637 : f32 = u_xlat82;
    let x_5639 : vec4<f32> = u_xlat9;
    let x_5641 : vec3<f32> = (vec3<f32>(x_5637, x_5637, x_5637) * vec3<f32>(x_5639.x, x_5639.y, x_5639.z));
    let x_5642 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_5641.x, x_5641.y, x_5641.z, x_5642.w);
    let x_5644 : vec4<f32> = u_xlat3;
    let x_5646 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(vec3<f32>(x_5644.x, x_5644.y, x_5644.z), vec3<f32>(x_5646.x, x_5646.y, x_5646.z));
    let x_5649 : f32 = u_xlat82;
    u_xlat82 = clamp(x_5649, 0.0f, 1.0f);
    let x_5651 : vec4<f32> = u_xlat10;
    let x_5653 : vec4<f32> = u_xlat9;
    u_xlat59.x = dot(vec3<f32>(x_5651.x, x_5651.y, x_5651.z), vec3<f32>(x_5653.x, x_5653.y, x_5653.z));
    let x_5658 : f32 = u_xlat59.x;
    u_xlat59.x = clamp(x_5658, 0.0f, 1.0f);
    let x_5661 : f32 = u_xlat82;
    let x_5662 : f32 = u_xlat82;
    u_xlat82 = (x_5661 * x_5662);
    let x_5664 : f32 = u_xlat82;
    let x_5666 : f32 = u_xlat53.x;
    u_xlat82 = ((x_5664 * x_5666) + 1.00001001358032226562f);
    let x_5670 : f32 = u_xlat59.x;
    let x_5672 : f32 = u_xlat59.x;
    u_xlat59.x = (x_5670 * x_5672);
    let x_5675 : f32 = u_xlat82;
    let x_5676 : f32 = u_xlat82;
    u_xlat82 = (x_5675 * x_5676);
    let x_5679 : f32 = u_xlat59.x;
    u_xlat59.x = max(x_5679, 0.10000000149011611938f);
    let x_5682 : f32 = u_xlat82;
    let x_5684 : f32 = u_xlat59.x;
    u_xlat82 = (x_5682 * x_5684);
    let x_5687 : f32 = u_xlat5.x;
    let x_5688 : f32 = u_xlat82;
    u_xlat82 = (x_5687 * x_5688);
    let x_5690 : f32 = u_xlat81;
    let x_5691 : f32 = u_xlat82;
    u_xlat82 = (x_5690 / x_5691);
    let x_5693 : f32 = u_xlat82;
    let x_5696 : vec3<f32> = u_xlat4;
    let x_5697 : vec3<f32> = ((vec3<f32>(x_5693, x_5693, x_5693) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_5696);
    let x_5698 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_5697.x, x_5697.y, x_5697.z, x_5698.w);
    let x_5700 : vec4<f32> = u_xlat9;
    let x_5702 : vec4<f32> = u_xlat11;
    let x_5705 : vec4<f32> = u_xlat8;
    let x_5707 : vec3<f32> = ((vec3<f32>(x_5700.x, x_5700.y, x_5700.z) * vec3<f32>(x_5702.x, x_5702.y, x_5702.z)) + vec3<f32>(x_5705.x, x_5705.y, x_5705.z));
    let x_5708 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_5707.x, x_5707.y, x_5707.z, x_5708.w);

    continuing {
      let x_5710 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_5710 + bitcast<u32>(1i));
    }
  }
  let x_5712 : vec3<f32> = u_xlat31;
  let x_5713 : vec4<f32> = u_xlat6;
  let x_5716 : vec3<f32> = u_xlat32;
  u_xlat2 = ((x_5712 * vec3<f32>(x_5713.x, x_5713.x, x_5713.x)) + x_5716);
  let x_5718 : vec4<f32> = u_xlat8;
  let x_5720 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_5718.x, x_5718.y, x_5718.z) + x_5720);
  let x_5724 : vec4<f32> = vs_INTERP6;
  let x_5726 : vec3<f32> = u_xlat0;
  let x_5728 : vec3<f32> = u_xlat2;
  let x_5729 : vec3<f32> = ((vec3<f32>(x_5724.w, x_5724.w, x_5724.w) * x_5726) + x_5728);
  let x_5730 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_5729.x, x_5729.y, x_5729.z, x_5730.w);
  let x_5732 : bool = u_xlatb27;
  if (x_5732) {
    let x_5737 : f32 = u_xlat1.x;
    x_5733 = x_5737;
  } else {
    x_5733 = 1.0f;
  }
  let x_5739 : f32 = x_5733;
  SV_Target0.w = x_5739;
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


