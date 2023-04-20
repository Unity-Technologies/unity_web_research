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

var<private> u_xlatb75 : bool;

@group(1) @binding(0) var<uniform> x_75 : PGlobals;

var<private> u_xlat1 : vec3<f32>;

var<private> vs_INTERP8 : vec3<f32>;

var<private> u_xlat76 : f32;

var<private> u_xlat2 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_148 : UnityPerDraw;

var<private> u_xlat75 : f32;

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

var<private> u_xlat30 : vec3<f32>;

var<private> vs_INTERP6 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_264 : LightShadows;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlatb6 : vec4<bool>;

var<private> u_xlatu75 : u32;

var<private> u_xlati75 : i32;

var<private> u_xlatb76 : bool;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb77 : bool;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat77 : f32;

var<private> u_xlat79 : f32;

var<private> u_xlat81 : f32;

var<private> u_xlat33 : vec3<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat34 : vec2<f32>;

var<private> u_xlat65 : vec2<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlatb79 : bool;

var<private> u_xlatb81 : bool;

var<private> u_xlatb3 : bool;

var<private> u_xlatu1 : vec3<u32>;

var<private> u_xlatu51 : u32;

var<private> u_xlatu28 : u32;

var<private> u_xlati51 : i32;

var<private> u_xlati26 : i32;

var<private> u_xlatu26 : u32;

var<private> u_xlati1 : i32;

var<private> u_xlat26 : f32;

var<private> u_xlatb51 : vec2<bool>;

var<private> u_xlat51 : vec2<f32>;

var<private> u_xlatb26 : bool;

var<private> vs_INTERP4 : vec4<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP0 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat78 : f32;

var<private> u_xlatb32 : bool;

var<private> u_xlat32 : vec3<f32>;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat82 : f32;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat21 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu79 : u32;

var<private> u_xlati80 : i32;

var<private> u_xlati79 : i32;

@group(1) @binding(1) var<uniform> x_3718 : AdditionalLights;

var<private> u_xlat80 : f32;

var<private> u_xlat83 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlati84 : i32;

var<private> u_xlatb10 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat35 : vec3<f32>;

var<private> u_xlatb84 : bool;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb85 : bool;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat85 : f32;

var<private> u_xlat36 : f32;

var<private> u_xlat37 : vec3<f32>;

var<private> u_xlat38 : vec2<f32>;

var<private> u_xlat69 : vec2<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlatb35 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu77 : u32;

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
  var x_1721 : f32;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var x_1853 : f32;
  var x_1925 : f32;
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
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_3859 : f32;
  var x_3871 : f32;
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
  var x_5331 : f32;
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
  u_xlatb75 = (x_80 == 0.0f);
  let x_85 : vec3<f32> = vs_INTERP8;
  let x_90 : vec3<f32> = x_75.x_WorldSpaceCameraPos;
  u_xlat1 = (-(x_85) + x_90);
  let x_93 : vec3<f32> = u_xlat1;
  let x_94 : vec3<f32> = u_xlat1;
  u_xlat76 = dot(x_93, x_94);
  let x_96 : f32 = u_xlat76;
  u_xlat76 = inverseSqrt(x_96);
  let x_98 : f32 = u_xlat76;
  let x_100 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_98, x_98, x_98) * x_100);
  let x_103 : bool = u_xlatb75;
  if (x_103) {
    let x_109 : f32 = u_xlat1.x;
    x_105 = x_109;
  } else {
    let x_115 : f32 = x_75.unity_MatrixV[0i].z;
    x_105 = x_115;
  }
  let x_116 : f32 = x_105;
  u_xlat2.x = x_116;
  let x_118 : bool = u_xlatb75;
  if (x_118) {
    let x_124 : f32 = u_xlat1.y;
    x_119 = x_124;
  } else {
    let x_128 : f32 = x_75.unity_MatrixV[1i].z;
    x_119 = x_128;
  }
  let x_129 : f32 = x_119;
  u_xlat2.y = x_129;
  let x_131 : bool = u_xlatb75;
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
  u_xlat75 = dot(x_171, x_172);
  let x_174 : f32 = u_xlat75;
  u_xlat75 = inverseSqrt(x_174);
  let x_176 : f32 = u_xlat75;
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
  u_xlat75 = dot(x_230, x_231);
  let x_233 : f32 = u_xlat75;
  u_xlat75 = inverseSqrt(x_233);
  let x_236 : f32 = u_xlat75;
  let x_238 : vec4<f32> = u_xlat6;
  u_xlat30 = (vec3<f32>(x_236, x_236, x_236) * vec3<f32>(x_238.x, x_238.y, x_238.z));
  let x_244 : f32 = vs_INTERP6.y;
  u_xlat75 = (x_244 * 200.0f);
  let x_247 : f32 = u_xlat75;
  u_xlat75 = min(x_247, 1.0f);
  let x_249 : f32 = u_xlat75;
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
  let x_298 : vec3<f32> = (x_292 + -(vec3<f32>(x_295.x, x_295.y, x_295.z)));
  let x_299 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_298.x, x_298.y, x_298.z, x_299.w);
  let x_301 : vec4<f32> = u_xlat6;
  let x_303 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_301.x, x_301.y, x_301.z), vec3<f32>(x_303.x, x_303.y, x_303.z));
  let x_307 : vec4<f32> = u_xlat7;
  let x_309 : vec4<f32> = u_xlat7;
  u_xlat6.y = dot(vec3<f32>(x_307.x, x_307.y, x_307.z), vec3<f32>(x_309.x, x_309.y, x_309.z));
  let x_313 : vec4<f32> = u_xlat8;
  let x_315 : vec4<f32> = u_xlat8;
  u_xlat6.z = dot(vec3<f32>(x_313.x, x_313.y, x_313.z), vec3<f32>(x_315.x, x_315.y, x_315.z));
  let x_319 : vec4<f32> = u_xlat9;
  let x_321 : vec4<f32> = u_xlat9;
  u_xlat6.w = dot(vec3<f32>(x_319.x, x_319.y, x_319.z), vec3<f32>(x_321.x, x_321.y, x_321.z));
  let x_328 : vec4<f32> = u_xlat6;
  let x_330 : vec4<f32> = x_264.x_CascadeShadowSplitSphereRadii;
  u_xlatb6 = (x_328 < x_330);
  let x_333 : bool = u_xlatb6.x;
  u_xlat7.x = select(0.0f, 1.0f, x_333);
  let x_337 : bool = u_xlatb6.y;
  u_xlat7.y = select(0.0f, 1.0f, x_337);
  let x_341 : bool = u_xlatb6.z;
  u_xlat7.z = select(0.0f, 1.0f, x_341);
  let x_345 : bool = u_xlatb6.w;
  u_xlat7.w = select(0.0f, 1.0f, x_345);
  let x_349 : bool = u_xlatb6.x;
  u_xlat6.x = select(-0.0f, -1.0f, x_349);
  let x_354 : bool = u_xlatb6.y;
  u_xlat6.y = select(-0.0f, -1.0f, x_354);
  let x_358 : bool = u_xlatb6.z;
  u_xlat6.z = select(-0.0f, -1.0f, x_358);
  let x_361 : vec4<f32> = u_xlat6;
  let x_363 : vec4<f32> = u_xlat7;
  let x_365 : vec3<f32> = (vec3<f32>(x_361.x, x_361.y, x_361.z) + vec3<f32>(x_363.y, x_363.z, x_363.w));
  let x_366 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_365.x, x_365.y, x_365.z, x_366.w);
  let x_368 : vec4<f32> = u_xlat6;
  let x_371 : vec3<f32> = max(vec3<f32>(x_368.x, x_368.y, x_368.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_372 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_372.x, x_371.x, x_371.y, x_371.z);
  let x_374 : vec4<f32> = u_xlat7;
  u_xlat75 = dot(x_374, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_379 : f32 = u_xlat75;
  u_xlat75 = (-(x_379) + 4.0f);
  let x_384 : f32 = u_xlat75;
  u_xlatu75 = u32(x_384);
  let x_388 : u32 = u_xlatu75;
  u_xlati75 = (bitcast<i32>(x_388) << bitcast<u32>(2i));
  let x_391 : vec3<f32> = vs_INTERP8;
  let x_393 : i32 = u_xlati75;
  let x_396 : i32 = u_xlati75;
  let x_400 : vec4<f32> = x_264.x_MainLightWorldToShadow[((x_393 + 1i) / 4i)][((x_396 + 1i) % 4i)];
  let x_402 : vec3<f32> = (vec3<f32>(x_391.y, x_391.y, x_391.y) * vec3<f32>(x_400.x, x_400.y, x_400.z));
  let x_403 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_402.x, x_402.y, x_402.z, x_403.w);
  let x_405 : i32 = u_xlati75;
  let x_407 : i32 = u_xlati75;
  let x_410 : vec4<f32> = x_264.x_MainLightWorldToShadow[(x_405 / 4i)][(x_407 % 4i)];
  let x_412 : vec3<f32> = vs_INTERP8;
  let x_415 : vec4<f32> = u_xlat6;
  let x_417 : vec3<f32> = ((vec3<f32>(x_410.x, x_410.y, x_410.z) * vec3<f32>(x_412.x, x_412.x, x_412.x)) + vec3<f32>(x_415.x, x_415.y, x_415.z));
  let x_418 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_417.x, x_417.y, x_417.z, x_418.w);
  let x_420 : i32 = u_xlati75;
  let x_423 : i32 = u_xlati75;
  let x_427 : vec4<f32> = x_264.x_MainLightWorldToShadow[((x_420 + 2i) / 4i)][((x_423 + 2i) % 4i)];
  let x_429 : vec3<f32> = vs_INTERP8;
  let x_432 : vec4<f32> = u_xlat6;
  let x_434 : vec3<f32> = ((vec3<f32>(x_427.x, x_427.y, x_427.z) * vec3<f32>(x_429.z, x_429.z, x_429.z)) + vec3<f32>(x_432.x, x_432.y, x_432.z));
  let x_435 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_434.x, x_434.y, x_434.z, x_435.w);
  let x_437 : vec4<f32> = u_xlat6;
  let x_439 : i32 = u_xlati75;
  let x_442 : i32 = u_xlati75;
  let x_446 : vec4<f32> = x_264.x_MainLightWorldToShadow[((x_439 + 3i) / 4i)][((x_442 + 3i) % 4i)];
  let x_448 : vec3<f32> = (vec3<f32>(x_437.x, x_437.y, x_437.z) + vec3<f32>(x_446.x, x_446.y, x_446.z));
  let x_449 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_448.x, x_448.y, x_448.z, x_449.w);
  let x_452 : f32 = x_264.x_MainLightShadowParams.y;
  u_xlatb75 = (0.0f < x_452);
  let x_454 : bool = u_xlatb75;
  if (x_454) {
    let x_459 : f32 = x_264.x_MainLightShadowParams.y;
    u_xlatb76 = (x_459 == 1.0f);
    let x_461 : bool = u_xlatb76;
    if (x_461) {
      let x_464 : vec4<f32> = u_xlat6;
      let x_468 : vec4<f32> = x_264.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_464.x, x_464.y, x_464.x, x_464.y) + x_468);
      let x_472 : vec4<f32> = u_xlat7;
      let x_473 : vec2<f32> = vec2<f32>(x_472.x, x_472.y);
      let x_475 : f32 = u_xlat6.z;
      txVec0 = vec3<f32>(x_473.x, x_473.y, x_475);
      let x_487 : vec3<f32> = txVec0;
      let x_489 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_487.xy, x_487.z);
      u_xlat8.x = x_489;
      let x_492 : vec4<f32> = u_xlat7;
      let x_493 : vec2<f32> = vec2<f32>(x_492.z, x_492.w);
      let x_495 : f32 = u_xlat6.z;
      txVec1 = vec3<f32>(x_493.x, x_493.y, x_495);
      let x_502 : vec3<f32> = txVec1;
      let x_504 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_502.xy, x_502.z);
      u_xlat8.y = x_504;
      let x_506 : vec4<f32> = u_xlat6;
      let x_509 : vec4<f32> = x_264.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_506.x, x_506.y, x_506.x, x_506.y) + x_509);
      let x_512 : vec4<f32> = u_xlat7;
      let x_513 : vec2<f32> = vec2<f32>(x_512.x, x_512.y);
      let x_515 : f32 = u_xlat6.z;
      txVec2 = vec3<f32>(x_513.x, x_513.y, x_515);
      let x_522 : vec3<f32> = txVec2;
      let x_524 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_522.xy, x_522.z);
      u_xlat8.z = x_524;
      let x_527 : vec4<f32> = u_xlat7;
      let x_528 : vec2<f32> = vec2<f32>(x_527.z, x_527.w);
      let x_530 : f32 = u_xlat6.z;
      txVec3 = vec3<f32>(x_528.x, x_528.y, x_530);
      let x_537 : vec3<f32> = txVec3;
      let x_539 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_537.xy, x_537.z);
      u_xlat8.w = x_539;
      let x_541 : vec4<f32> = u_xlat8;
      u_xlat76 = dot(x_541, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_548 : f32 = x_264.x_MainLightShadowParams.y;
      u_xlatb77 = (x_548 == 2.0f);
      let x_550 : bool = u_xlatb77;
      if (x_550) {
        let x_553 : vec4<f32> = u_xlat6;
        let x_557 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_562 : vec2<f32> = ((vec2<f32>(x_553.x, x_553.y) * vec2<f32>(x_557.z, x_557.w)) + vec2<f32>(0.5f, 0.5f));
        let x_563 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_562.x, x_562.y, x_563.z, x_563.w);
        let x_565 : vec4<f32> = u_xlat7;
        let x_567 : vec2<f32> = floor(vec2<f32>(x_565.x, x_565.y));
        let x_568 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_567.x, x_567.y, x_568.z, x_568.w);
        let x_572 : vec4<f32> = u_xlat6;
        let x_575 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_578 : vec4<f32> = u_xlat7;
        u_xlat57 = ((vec2<f32>(x_572.x, x_572.y) * vec2<f32>(x_575.z, x_575.w)) + -(vec2<f32>(x_578.x, x_578.y)));
        let x_582 : vec2<f32> = u_xlat57;
        u_xlat8 = (vec4<f32>(x_582.x, x_582.x, x_582.y, x_582.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_586 : vec4<f32> = u_xlat8;
        let x_588 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_586.x, x_586.x, x_586.z, x_586.z) * vec4<f32>(x_588.x, x_588.x, x_588.z, x_588.z));
        let x_591 : vec4<f32> = u_xlat9;
        let x_595 : vec2<f32> = (vec2<f32>(x_591.y, x_591.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_596 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_595.x, x_596.y, x_595.y, x_596.w);
        let x_598 : vec4<f32> = u_xlat9;
        let x_601 : vec2<f32> = u_xlat57;
        let x_603 : vec2<f32> = ((vec2<f32>(x_598.x, x_598.z) * vec2<f32>(0.5f, 0.5f)) + -(x_601));
        let x_604 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_603.x, x_603.y, x_604.z, x_604.w);
        let x_607 : vec2<f32> = u_xlat57;
        u_xlat59 = (-(x_607) + vec2<f32>(1.0f, 1.0f));
        let x_612 : vec2<f32> = u_xlat57;
        let x_614 : vec2<f32> = min(x_612, vec2<f32>(0.0f, 0.0f));
        let x_615 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_614.x, x_614.y, x_615.z, x_615.w);
        let x_617 : vec4<f32> = u_xlat10;
        let x_620 : vec4<f32> = u_xlat10;
        let x_623 : vec2<f32> = u_xlat59;
        let x_624 : vec2<f32> = ((-(vec2<f32>(x_617.x, x_617.y)) * vec2<f32>(x_620.x, x_620.y)) + x_623);
        let x_625 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_624.x, x_624.y, x_625.z, x_625.w);
        let x_627 : vec2<f32> = u_xlat57;
        u_xlat57 = max(x_627, vec2<f32>(0.0f, 0.0f));
        let x_629 : vec2<f32> = u_xlat57;
        let x_631 : vec2<f32> = u_xlat57;
        let x_633 : vec4<f32> = u_xlat8;
        u_xlat57 = ((-(x_629) * x_631) + vec2<f32>(x_633.y, x_633.w));
        let x_636 : vec4<f32> = u_xlat10;
        let x_638 : vec2<f32> = (vec2<f32>(x_636.x, x_636.y) + vec2<f32>(1.0f, 1.0f));
        let x_639 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_638.x, x_638.y, x_639.z, x_639.w);
        let x_641 : vec2<f32> = u_xlat57;
        u_xlat57 = (x_641 + vec2<f32>(1.0f, 1.0f));
        let x_644 : vec4<f32> = u_xlat9;
        let x_648 : vec2<f32> = (vec2<f32>(x_644.x, x_644.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_649 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_648.x, x_648.y, x_649.z, x_649.w);
        let x_651 : vec2<f32> = u_xlat59;
        let x_652 : vec2<f32> = (x_651 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_653 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_652.x, x_652.y, x_653.z, x_653.w);
        let x_655 : vec4<f32> = u_xlat10;
        let x_657 : vec2<f32> = (vec2<f32>(x_655.x, x_655.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_658 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_657.x, x_657.y, x_658.z, x_658.w);
        let x_661 : vec2<f32> = u_xlat57;
        let x_662 : vec2<f32> = (x_661 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_663 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_662.x, x_662.y, x_663.z, x_663.w);
        let x_665 : vec4<f32> = u_xlat8;
        u_xlat57 = (vec2<f32>(x_665.y, x_665.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_669 : f32 = u_xlat10.x;
        u_xlat11.z = x_669;
        let x_672 : f32 = u_xlat57.x;
        u_xlat11.w = x_672;
        let x_675 : f32 = u_xlat12.x;
        u_xlat9.z = x_675;
        let x_678 : f32 = u_xlat8.x;
        u_xlat9.w = x_678;
        let x_681 : vec4<f32> = u_xlat9;
        let x_683 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_681.z, x_681.w, x_681.x, x_681.z) + vec4<f32>(x_683.z, x_683.w, x_683.x, x_683.z));
        let x_687 : f32 = u_xlat11.y;
        u_xlat10.z = x_687;
        let x_690 : f32 = u_xlat57.y;
        u_xlat10.w = x_690;
        let x_693 : f32 = u_xlat9.y;
        u_xlat12.z = x_693;
        let x_696 : f32 = u_xlat8.z;
        u_xlat12.w = x_696;
        let x_698 : vec4<f32> = u_xlat10;
        let x_700 : vec4<f32> = u_xlat12;
        let x_702 : vec3<f32> = (vec3<f32>(x_698.z, x_698.y, x_698.w) + vec3<f32>(x_700.z, x_700.y, x_700.w));
        let x_703 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_702.x, x_702.y, x_702.z, x_703.w);
        let x_705 : vec4<f32> = u_xlat9;
        let x_707 : vec4<f32> = u_xlat13;
        let x_709 : vec3<f32> = (vec3<f32>(x_705.x, x_705.z, x_705.w) / vec3<f32>(x_707.z, x_707.w, x_707.y));
        let x_710 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_709.x, x_709.y, x_709.z, x_710.w);
        let x_712 : vec4<f32> = u_xlat9;
        let x_718 : vec3<f32> = (vec3<f32>(x_712.x, x_712.y, x_712.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_719 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_718.x, x_718.y, x_718.z, x_719.w);
        let x_721 : vec4<f32> = u_xlat12;
        let x_723 : vec4<f32> = u_xlat8;
        let x_725 : vec3<f32> = (vec3<f32>(x_721.z, x_721.y, x_721.w) / vec3<f32>(x_723.x, x_723.y, x_723.z));
        let x_726 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_725.x, x_725.y, x_725.z, x_726.w);
        let x_728 : vec4<f32> = u_xlat10;
        let x_730 : vec3<f32> = (vec3<f32>(x_728.x, x_728.y, x_728.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_731 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_730.x, x_730.y, x_730.z, x_731.w);
        let x_733 : vec4<f32> = u_xlat9;
        let x_736 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_738 : vec3<f32> = (vec3<f32>(x_733.y, x_733.x, x_733.z) * vec3<f32>(x_736.x, x_736.x, x_736.x));
        let x_739 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_738.x, x_738.y, x_738.z, x_739.w);
        let x_741 : vec4<f32> = u_xlat10;
        let x_744 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_746 : vec3<f32> = (vec3<f32>(x_741.x, x_741.y, x_741.z) * vec3<f32>(x_744.y, x_744.y, x_744.y));
        let x_747 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_746.x, x_746.y, x_746.z, x_747.w);
        let x_750 : f32 = u_xlat10.x;
        u_xlat9.w = x_750;
        let x_752 : vec4<f32> = u_xlat7;
        let x_755 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_758 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_752.x, x_752.y, x_752.x, x_752.y) * vec4<f32>(x_755.x, x_755.y, x_755.x, x_755.y)) + vec4<f32>(x_758.y, x_758.w, x_758.x, x_758.w));
        let x_761 : vec4<f32> = u_xlat7;
        let x_764 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_767 : vec4<f32> = u_xlat9;
        u_xlat57 = ((vec2<f32>(x_761.x, x_761.y) * vec2<f32>(x_764.x, x_764.y)) + vec2<f32>(x_767.z, x_767.w));
        let x_771 : f32 = u_xlat9.y;
        u_xlat10.w = x_771;
        let x_773 : vec4<f32> = u_xlat10;
        let x_774 : vec2<f32> = vec2<f32>(x_773.y, x_773.z);
        let x_775 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_775.x, x_774.x, x_775.z, x_774.y);
        let x_777 : vec4<f32> = u_xlat7;
        let x_780 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_783 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_777.x, x_777.y, x_777.x, x_777.y) * vec4<f32>(x_780.x, x_780.y, x_780.x, x_780.y)) + vec4<f32>(x_783.x, x_783.y, x_783.z, x_783.y));
        let x_786 : vec4<f32> = u_xlat7;
        let x_789 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_792 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_786.x, x_786.y, x_786.x, x_786.y) * vec4<f32>(x_789.x, x_789.y, x_789.x, x_789.y)) + vec4<f32>(x_792.w, x_792.y, x_792.w, x_792.z));
        let x_795 : vec4<f32> = u_xlat7;
        let x_798 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_801 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_795.x, x_795.y, x_795.x, x_795.y) * vec4<f32>(x_798.x, x_798.y, x_798.x, x_798.y)) + vec4<f32>(x_801.x, x_801.w, x_801.z, x_801.w));
        let x_805 : vec4<f32> = u_xlat8;
        let x_807 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_805.x, x_805.x, x_805.x, x_805.y) * vec4<f32>(x_807.z, x_807.w, x_807.y, x_807.z));
        let x_811 : vec4<f32> = u_xlat8;
        let x_813 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_811.y, x_811.y, x_811.z, x_811.z) * x_813);
        let x_817 : f32 = u_xlat8.z;
        let x_819 : f32 = u_xlat13.y;
        u_xlat77 = (x_817 * x_819);
        let x_822 : vec4<f32> = u_xlat11;
        let x_823 : vec2<f32> = vec2<f32>(x_822.x, x_822.y);
        let x_825 : f32 = u_xlat6.z;
        txVec4 = vec3<f32>(x_823.x, x_823.y, x_825);
        let x_833 : vec3<f32> = txVec4;
        let x_835 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_833.xy, x_833.z);
        u_xlat79 = x_835;
        let x_837 : vec4<f32> = u_xlat11;
        let x_838 : vec2<f32> = vec2<f32>(x_837.z, x_837.w);
        let x_840 : f32 = u_xlat6.z;
        txVec5 = vec3<f32>(x_838.x, x_838.y, x_840);
        let x_848 : vec3<f32> = txVec5;
        let x_850 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_848.xy, x_848.z);
        u_xlat81 = x_850;
        let x_851 : f32 = u_xlat81;
        let x_853 : f32 = u_xlat14.y;
        u_xlat81 = (x_851 * x_853);
        let x_856 : f32 = u_xlat14.x;
        let x_857 : f32 = u_xlat79;
        let x_859 : f32 = u_xlat81;
        u_xlat79 = ((x_856 * x_857) + x_859);
        let x_862 : vec2<f32> = u_xlat57;
        let x_864 : f32 = u_xlat6.z;
        txVec6 = vec3<f32>(x_862.x, x_862.y, x_864);
        let x_871 : vec3<f32> = txVec6;
        let x_873 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_871.xy, x_871.z);
        u_xlat81 = x_873;
        let x_875 : f32 = u_xlat14.z;
        let x_876 : f32 = u_xlat81;
        let x_878 : f32 = u_xlat79;
        u_xlat79 = ((x_875 * x_876) + x_878);
        let x_881 : vec4<f32> = u_xlat10;
        let x_882 : vec2<f32> = vec2<f32>(x_881.x, x_881.y);
        let x_884 : f32 = u_xlat6.z;
        txVec7 = vec3<f32>(x_882.x, x_882.y, x_884);
        let x_891 : vec3<f32> = txVec7;
        let x_893 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_891.xy, x_891.z);
        u_xlat81 = x_893;
        let x_895 : f32 = u_xlat14.w;
        let x_896 : f32 = u_xlat81;
        let x_898 : f32 = u_xlat79;
        u_xlat79 = ((x_895 * x_896) + x_898);
        let x_901 : vec4<f32> = u_xlat12;
        let x_902 : vec2<f32> = vec2<f32>(x_901.x, x_901.y);
        let x_904 : f32 = u_xlat6.z;
        txVec8 = vec3<f32>(x_902.x, x_902.y, x_904);
        let x_911 : vec3<f32> = txVec8;
        let x_913 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_911.xy, x_911.z);
        u_xlat81 = x_913;
        let x_915 : f32 = u_xlat15.x;
        let x_916 : f32 = u_xlat81;
        let x_918 : f32 = u_xlat79;
        u_xlat79 = ((x_915 * x_916) + x_918);
        let x_921 : vec4<f32> = u_xlat12;
        let x_922 : vec2<f32> = vec2<f32>(x_921.z, x_921.w);
        let x_924 : f32 = u_xlat6.z;
        txVec9 = vec3<f32>(x_922.x, x_922.y, x_924);
        let x_931 : vec3<f32> = txVec9;
        let x_933 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_931.xy, x_931.z);
        u_xlat81 = x_933;
        let x_935 : f32 = u_xlat15.y;
        let x_936 : f32 = u_xlat81;
        let x_938 : f32 = u_xlat79;
        u_xlat79 = ((x_935 * x_936) + x_938);
        let x_941 : vec4<f32> = u_xlat10;
        let x_942 : vec2<f32> = vec2<f32>(x_941.z, x_941.w);
        let x_944 : f32 = u_xlat6.z;
        txVec10 = vec3<f32>(x_942.x, x_942.y, x_944);
        let x_951 : vec3<f32> = txVec10;
        let x_953 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_951.xy, x_951.z);
        u_xlat81 = x_953;
        let x_955 : f32 = u_xlat15.z;
        let x_956 : f32 = u_xlat81;
        let x_958 : f32 = u_xlat79;
        u_xlat79 = ((x_955 * x_956) + x_958);
        let x_961 : vec4<f32> = u_xlat9;
        let x_962 : vec2<f32> = vec2<f32>(x_961.x, x_961.y);
        let x_964 : f32 = u_xlat6.z;
        txVec11 = vec3<f32>(x_962.x, x_962.y, x_964);
        let x_971 : vec3<f32> = txVec11;
        let x_973 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_971.xy, x_971.z);
        u_xlat81 = x_973;
        let x_975 : f32 = u_xlat15.w;
        let x_976 : f32 = u_xlat81;
        let x_978 : f32 = u_xlat79;
        u_xlat79 = ((x_975 * x_976) + x_978);
        let x_981 : vec4<f32> = u_xlat9;
        let x_982 : vec2<f32> = vec2<f32>(x_981.z, x_981.w);
        let x_984 : f32 = u_xlat6.z;
        txVec12 = vec3<f32>(x_982.x, x_982.y, x_984);
        let x_991 : vec3<f32> = txVec12;
        let x_993 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_991.xy, x_991.z);
        u_xlat81 = x_993;
        let x_994 : f32 = u_xlat77;
        let x_995 : f32 = u_xlat81;
        let x_997 : f32 = u_xlat79;
        u_xlat76 = ((x_994 * x_995) + x_997);
      } else {
        let x_1000 : vec4<f32> = u_xlat6;
        let x_1003 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_1006 : vec2<f32> = ((vec2<f32>(x_1000.x, x_1000.y) * vec2<f32>(x_1003.z, x_1003.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1007 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1006.x, x_1006.y, x_1007.z, x_1007.w);
        let x_1009 : vec4<f32> = u_xlat7;
        let x_1011 : vec2<f32> = floor(vec2<f32>(x_1009.x, x_1009.y));
        let x_1012 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1011.x, x_1011.y, x_1012.z, x_1012.w);
        let x_1014 : vec4<f32> = u_xlat6;
        let x_1017 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_1020 : vec4<f32> = u_xlat7;
        u_xlat57 = ((vec2<f32>(x_1014.x, x_1014.y) * vec2<f32>(x_1017.z, x_1017.w)) + -(vec2<f32>(x_1020.x, x_1020.y)));
        let x_1024 : vec2<f32> = u_xlat57;
        u_xlat8 = (vec4<f32>(x_1024.x, x_1024.x, x_1024.y, x_1024.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1027 : vec4<f32> = u_xlat8;
        let x_1029 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1027.x, x_1027.x, x_1027.z, x_1027.z) * vec4<f32>(x_1029.x, x_1029.x, x_1029.z, x_1029.z));
        let x_1032 : vec4<f32> = u_xlat9;
        let x_1036 : vec2<f32> = (vec2<f32>(x_1032.y, x_1032.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1037 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1037.x, x_1036.x, x_1037.z, x_1036.y);
        let x_1039 : vec4<f32> = u_xlat9;
        let x_1042 : vec2<f32> = u_xlat57;
        let x_1044 : vec2<f32> = ((vec2<f32>(x_1039.x, x_1039.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1042));
        let x_1045 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1044.x, x_1045.y, x_1044.y, x_1045.w);
        let x_1047 : vec2<f32> = u_xlat57;
        let x_1049 : vec2<f32> = (-(x_1047) + vec2<f32>(1.0f, 1.0f));
        let x_1050 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1049.x, x_1049.y, x_1050.z, x_1050.w);
        let x_1052 : vec2<f32> = u_xlat57;
        u_xlat59 = min(x_1052, vec2<f32>(0.0f, 0.0f));
        let x_1054 : vec2<f32> = u_xlat59;
        let x_1056 : vec2<f32> = u_xlat59;
        let x_1058 : vec4<f32> = u_xlat9;
        let x_1060 : vec2<f32> = ((-(x_1054) * x_1056) + vec2<f32>(x_1058.x, x_1058.y));
        let x_1061 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1060.x, x_1060.y, x_1061.z, x_1061.w);
        let x_1063 : vec2<f32> = u_xlat57;
        u_xlat59 = max(x_1063, vec2<f32>(0.0f, 0.0f));
        let x_1066 : vec2<f32> = u_xlat59;
        let x_1068 : vec2<f32> = u_xlat59;
        let x_1070 : vec4<f32> = u_xlat8;
        let x_1072 : vec2<f32> = ((-(x_1066) * x_1068) + vec2<f32>(x_1070.y, x_1070.w));
        let x_1073 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_1072.x, x_1073.y, x_1072.y);
        let x_1075 : vec4<f32> = u_xlat9;
        let x_1078 : vec2<f32> = (vec2<f32>(x_1075.x, x_1075.y) + vec2<f32>(2.0f, 2.0f));
        let x_1079 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1078.x, x_1078.y, x_1079.z, x_1079.w);
        let x_1081 : vec3<f32> = u_xlat33;
        let x_1083 : vec2<f32> = (vec2<f32>(x_1081.x, x_1081.z) + vec2<f32>(2.0f, 2.0f));
        let x_1084 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1084.x, x_1083.x, x_1084.z, x_1083.y);
        let x_1087 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1087 * 0.08163200318813323975f);
        let x_1091 : vec4<f32> = u_xlat8;
        let x_1094 : vec3<f32> = (vec3<f32>(x_1091.z, x_1091.x, x_1091.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1095 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1094.x, x_1094.y, x_1094.z, x_1095.w);
        let x_1097 : vec4<f32> = u_xlat9;
        let x_1100 : vec2<f32> = (vec2<f32>(x_1097.x, x_1097.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1101 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1100.x, x_1100.y, x_1101.z, x_1101.w);
        let x_1104 : f32 = u_xlat12.y;
        u_xlat11.x = x_1104;
        let x_1106 : vec2<f32> = u_xlat57;
        let x_1113 : vec2<f32> = ((vec2<f32>(x_1106.x, x_1106.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1114 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1114.x, x_1113.x, x_1114.z, x_1113.y);
        let x_1116 : vec2<f32> = u_xlat57;
        let x_1120 : vec2<f32> = ((vec2<f32>(x_1116.x, x_1116.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1121 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1120.x, x_1121.y, x_1120.y, x_1121.w);
        let x_1124 : f32 = u_xlat8.x;
        u_xlat9.y = x_1124;
        let x_1127 : f32 = u_xlat10.y;
        u_xlat9.w = x_1127;
        let x_1129 : vec4<f32> = u_xlat9;
        let x_1130 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1129 + x_1130);
        let x_1132 : vec2<f32> = u_xlat57;
        let x_1135 : vec2<f32> = ((vec2<f32>(x_1132.y, x_1132.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1136 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1136.x, x_1135.x, x_1136.z, x_1135.y);
        let x_1138 : vec2<f32> = u_xlat57;
        let x_1141 : vec2<f32> = ((vec2<f32>(x_1138.y, x_1138.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1142 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1141.x, x_1142.y, x_1141.y, x_1142.w);
        let x_1145 : f32 = u_xlat8.y;
        u_xlat10.y = x_1145;
        let x_1147 : vec4<f32> = u_xlat10;
        let x_1148 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1147 + x_1148);
        let x_1150 : vec4<f32> = u_xlat9;
        let x_1151 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1150 / x_1151);
        let x_1153 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1153 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1159 : vec4<f32> = u_xlat10;
        let x_1160 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1159 / x_1160);
        let x_1162 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1162 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1164 : vec4<f32> = u_xlat9;
        let x_1167 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1164.w, x_1164.x, x_1164.y, x_1164.z) * vec4<f32>(x_1167.x, x_1167.x, x_1167.x, x_1167.x));
        let x_1170 : vec4<f32> = u_xlat10;
        let x_1173 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1170.x, x_1170.w, x_1170.y, x_1170.z) * vec4<f32>(x_1173.y, x_1173.y, x_1173.y, x_1173.y));
        let x_1176 : vec4<f32> = u_xlat9;
        let x_1177 : vec3<f32> = vec3<f32>(x_1176.y, x_1176.z, x_1176.w);
        let x_1178 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1177.x, x_1178.y, x_1177.y, x_1177.z);
        let x_1181 : f32 = u_xlat10.x;
        u_xlat12.y = x_1181;
        let x_1183 : vec4<f32> = u_xlat7;
        let x_1186 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_1189 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1183.x, x_1183.y, x_1183.x, x_1183.y) * vec4<f32>(x_1186.x, x_1186.y, x_1186.x, x_1186.y)) + vec4<f32>(x_1189.x, x_1189.y, x_1189.z, x_1189.y));
        let x_1192 : vec4<f32> = u_xlat7;
        let x_1195 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_1198 : vec4<f32> = u_xlat12;
        u_xlat57 = ((vec2<f32>(x_1192.x, x_1192.y) * vec2<f32>(x_1195.x, x_1195.y)) + vec2<f32>(x_1198.w, x_1198.y));
        let x_1202 : f32 = u_xlat12.y;
        u_xlat9.y = x_1202;
        let x_1205 : f32 = u_xlat10.z;
        u_xlat12.y = x_1205;
        let x_1207 : vec4<f32> = u_xlat7;
        let x_1210 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_1213 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1207.x, x_1207.y, x_1207.x, x_1207.y) * vec4<f32>(x_1210.x, x_1210.y, x_1210.x, x_1210.y)) + vec4<f32>(x_1213.x, x_1213.y, x_1213.z, x_1213.y));
        let x_1216 : vec4<f32> = u_xlat7;
        let x_1219 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_1222 : vec4<f32> = u_xlat12;
        let x_1224 : vec2<f32> = ((vec2<f32>(x_1216.x, x_1216.y) * vec2<f32>(x_1219.x, x_1219.y)) + vec2<f32>(x_1222.w, x_1222.y));
        let x_1225 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1224.x, x_1224.y, x_1225.z, x_1225.w);
        let x_1228 : f32 = u_xlat12.y;
        u_xlat9.z = x_1228;
        let x_1231 : vec4<f32> = u_xlat7;
        let x_1234 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_1237 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1231.x, x_1231.y, x_1231.x, x_1231.y) * vec4<f32>(x_1234.x, x_1234.y, x_1234.x, x_1234.y)) + vec4<f32>(x_1237.x, x_1237.y, x_1237.x, x_1237.z));
        let x_1241 : f32 = u_xlat10.w;
        u_xlat12.y = x_1241;
        let x_1244 : vec4<f32> = u_xlat7;
        let x_1247 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_1250 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1244.x, x_1244.y, x_1244.x, x_1244.y) * vec4<f32>(x_1247.x, x_1247.y, x_1247.x, x_1247.y)) + vec4<f32>(x_1250.x, x_1250.y, x_1250.z, x_1250.y));
        let x_1254 : vec4<f32> = u_xlat7;
        let x_1257 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_1260 : vec4<f32> = u_xlat12;
        u_xlat34 = ((vec2<f32>(x_1254.x, x_1254.y) * vec2<f32>(x_1257.x, x_1257.y)) + vec2<f32>(x_1260.w, x_1260.y));
        let x_1264 : f32 = u_xlat12.y;
        u_xlat9.w = x_1264;
        let x_1267 : vec4<f32> = u_xlat7;
        let x_1270 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_1273 : vec4<f32> = u_xlat9;
        u_xlat65 = ((vec2<f32>(x_1267.x, x_1267.y) * vec2<f32>(x_1270.x, x_1270.y)) + vec2<f32>(x_1273.x, x_1273.w));
        let x_1276 : vec4<f32> = u_xlat12;
        let x_1277 : vec3<f32> = vec3<f32>(x_1276.x, x_1276.z, x_1276.w);
        let x_1278 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1277.x, x_1278.y, x_1277.y, x_1277.z);
        let x_1280 : vec4<f32> = u_xlat7;
        let x_1283 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_1286 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1280.x, x_1280.y, x_1280.x, x_1280.y) * vec4<f32>(x_1283.x, x_1283.y, x_1283.x, x_1283.y)) + vec4<f32>(x_1286.x, x_1286.y, x_1286.z, x_1286.y));
        let x_1290 : vec4<f32> = u_xlat7;
        let x_1293 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_1296 : vec4<f32> = u_xlat10;
        u_xlat60 = ((vec2<f32>(x_1290.x, x_1290.y) * vec2<f32>(x_1293.x, x_1293.y)) + vec2<f32>(x_1296.w, x_1296.y));
        let x_1300 : f32 = u_xlat9.x;
        u_xlat10.x = x_1300;
        let x_1302 : vec4<f32> = u_xlat7;
        let x_1305 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_1308 : vec4<f32> = u_xlat10;
        let x_1310 : vec2<f32> = ((vec2<f32>(x_1302.x, x_1302.y) * vec2<f32>(x_1305.x, x_1305.y)) + vec2<f32>(x_1308.x, x_1308.y));
        let x_1311 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1310.x, x_1310.y, x_1311.z, x_1311.w);
        let x_1314 : vec4<f32> = u_xlat8;
        let x_1316 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1314.x, x_1314.x, x_1314.x, x_1314.x) * x_1316);
        let x_1319 : vec4<f32> = u_xlat8;
        let x_1321 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1319.y, x_1319.y, x_1319.y, x_1319.y) * x_1321);
        let x_1324 : vec4<f32> = u_xlat8;
        let x_1326 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1324.z, x_1324.z, x_1324.z, x_1324.z) * x_1326);
        let x_1328 : vec4<f32> = u_xlat8;
        let x_1330 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1328.w, x_1328.w, x_1328.w, x_1328.w) * x_1330);
        let x_1333 : vec4<f32> = u_xlat13;
        let x_1334 : vec2<f32> = vec2<f32>(x_1333.x, x_1333.y);
        let x_1336 : f32 = u_xlat6.z;
        txVec13 = vec3<f32>(x_1334.x, x_1334.y, x_1336);
        let x_1343 : vec3<f32> = txVec13;
        let x_1345 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1343.xy, x_1343.z);
        u_xlat77 = x_1345;
        let x_1347 : vec4<f32> = u_xlat13;
        let x_1348 : vec2<f32> = vec2<f32>(x_1347.z, x_1347.w);
        let x_1350 : f32 = u_xlat6.z;
        txVec14 = vec3<f32>(x_1348.x, x_1348.y, x_1350);
        let x_1357 : vec3<f32> = txVec14;
        let x_1359 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1357.xy, x_1357.z);
        u_xlat79 = x_1359;
        let x_1360 : f32 = u_xlat79;
        let x_1362 : f32 = u_xlat18.y;
        u_xlat79 = (x_1360 * x_1362);
        let x_1365 : f32 = u_xlat18.x;
        let x_1366 : f32 = u_xlat77;
        let x_1368 : f32 = u_xlat79;
        u_xlat77 = ((x_1365 * x_1366) + x_1368);
        let x_1371 : vec2<f32> = u_xlat57;
        let x_1373 : f32 = u_xlat6.z;
        txVec15 = vec3<f32>(x_1371.x, x_1371.y, x_1373);
        let x_1380 : vec3<f32> = txVec15;
        let x_1382 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1380.xy, x_1380.z);
        u_xlat79 = x_1382;
        let x_1384 : f32 = u_xlat18.z;
        let x_1385 : f32 = u_xlat79;
        let x_1387 : f32 = u_xlat77;
        u_xlat77 = ((x_1384 * x_1385) + x_1387);
        let x_1390 : vec4<f32> = u_xlat16;
        let x_1391 : vec2<f32> = vec2<f32>(x_1390.x, x_1390.y);
        let x_1393 : f32 = u_xlat6.z;
        txVec16 = vec3<f32>(x_1391.x, x_1391.y, x_1393);
        let x_1400 : vec3<f32> = txVec16;
        let x_1402 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1400.xy, x_1400.z);
        u_xlat79 = x_1402;
        let x_1404 : f32 = u_xlat18.w;
        let x_1405 : f32 = u_xlat79;
        let x_1407 : f32 = u_xlat77;
        u_xlat77 = ((x_1404 * x_1405) + x_1407);
        let x_1410 : vec4<f32> = u_xlat14;
        let x_1411 : vec2<f32> = vec2<f32>(x_1410.x, x_1410.y);
        let x_1413 : f32 = u_xlat6.z;
        txVec17 = vec3<f32>(x_1411.x, x_1411.y, x_1413);
        let x_1420 : vec3<f32> = txVec17;
        let x_1422 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1420.xy, x_1420.z);
        u_xlat79 = x_1422;
        let x_1424 : f32 = u_xlat19.x;
        let x_1425 : f32 = u_xlat79;
        let x_1427 : f32 = u_xlat77;
        u_xlat77 = ((x_1424 * x_1425) + x_1427);
        let x_1430 : vec4<f32> = u_xlat14;
        let x_1431 : vec2<f32> = vec2<f32>(x_1430.z, x_1430.w);
        let x_1433 : f32 = u_xlat6.z;
        txVec18 = vec3<f32>(x_1431.x, x_1431.y, x_1433);
        let x_1440 : vec3<f32> = txVec18;
        let x_1442 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1440.xy, x_1440.z);
        u_xlat79 = x_1442;
        let x_1444 : f32 = u_xlat19.y;
        let x_1445 : f32 = u_xlat79;
        let x_1447 : f32 = u_xlat77;
        u_xlat77 = ((x_1444 * x_1445) + x_1447);
        let x_1450 : vec4<f32> = u_xlat15;
        let x_1451 : vec2<f32> = vec2<f32>(x_1450.x, x_1450.y);
        let x_1453 : f32 = u_xlat6.z;
        txVec19 = vec3<f32>(x_1451.x, x_1451.y, x_1453);
        let x_1460 : vec3<f32> = txVec19;
        let x_1462 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1460.xy, x_1460.z);
        u_xlat79 = x_1462;
        let x_1464 : f32 = u_xlat19.z;
        let x_1465 : f32 = u_xlat79;
        let x_1467 : f32 = u_xlat77;
        u_xlat77 = ((x_1464 * x_1465) + x_1467);
        let x_1470 : vec4<f32> = u_xlat16;
        let x_1471 : vec2<f32> = vec2<f32>(x_1470.z, x_1470.w);
        let x_1473 : f32 = u_xlat6.z;
        txVec20 = vec3<f32>(x_1471.x, x_1471.y, x_1473);
        let x_1480 : vec3<f32> = txVec20;
        let x_1482 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1480.xy, x_1480.z);
        u_xlat79 = x_1482;
        let x_1484 : f32 = u_xlat19.w;
        let x_1485 : f32 = u_xlat79;
        let x_1487 : f32 = u_xlat77;
        u_xlat77 = ((x_1484 * x_1485) + x_1487);
        let x_1490 : vec4<f32> = u_xlat17;
        let x_1491 : vec2<f32> = vec2<f32>(x_1490.x, x_1490.y);
        let x_1493 : f32 = u_xlat6.z;
        txVec21 = vec3<f32>(x_1491.x, x_1491.y, x_1493);
        let x_1500 : vec3<f32> = txVec21;
        let x_1502 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1500.xy, x_1500.z);
        u_xlat79 = x_1502;
        let x_1504 : f32 = u_xlat20.x;
        let x_1505 : f32 = u_xlat79;
        let x_1507 : f32 = u_xlat77;
        u_xlat77 = ((x_1504 * x_1505) + x_1507);
        let x_1510 : vec4<f32> = u_xlat17;
        let x_1511 : vec2<f32> = vec2<f32>(x_1510.z, x_1510.w);
        let x_1513 : f32 = u_xlat6.z;
        txVec22 = vec3<f32>(x_1511.x, x_1511.y, x_1513);
        let x_1520 : vec3<f32> = txVec22;
        let x_1522 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1520.xy, x_1520.z);
        u_xlat79 = x_1522;
        let x_1524 : f32 = u_xlat20.y;
        let x_1525 : f32 = u_xlat79;
        let x_1527 : f32 = u_xlat77;
        u_xlat77 = ((x_1524 * x_1525) + x_1527);
        let x_1530 : vec2<f32> = u_xlat34;
        let x_1532 : f32 = u_xlat6.z;
        txVec23 = vec3<f32>(x_1530.x, x_1530.y, x_1532);
        let x_1539 : vec3<f32> = txVec23;
        let x_1541 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1539.xy, x_1539.z);
        u_xlat79 = x_1541;
        let x_1543 : f32 = u_xlat20.z;
        let x_1544 : f32 = u_xlat79;
        let x_1546 : f32 = u_xlat77;
        u_xlat77 = ((x_1543 * x_1544) + x_1546);
        let x_1549 : vec2<f32> = u_xlat65;
        let x_1551 : f32 = u_xlat6.z;
        txVec24 = vec3<f32>(x_1549.x, x_1549.y, x_1551);
        let x_1558 : vec3<f32> = txVec24;
        let x_1560 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1558.xy, x_1558.z);
        u_xlat79 = x_1560;
        let x_1562 : f32 = u_xlat20.w;
        let x_1563 : f32 = u_xlat79;
        let x_1565 : f32 = u_xlat77;
        u_xlat77 = ((x_1562 * x_1563) + x_1565);
        let x_1568 : vec4<f32> = u_xlat12;
        let x_1569 : vec2<f32> = vec2<f32>(x_1568.x, x_1568.y);
        let x_1571 : f32 = u_xlat6.z;
        txVec25 = vec3<f32>(x_1569.x, x_1569.y, x_1571);
        let x_1578 : vec3<f32> = txVec25;
        let x_1580 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1578.xy, x_1578.z);
        u_xlat79 = x_1580;
        let x_1582 : f32 = u_xlat8.x;
        let x_1583 : f32 = u_xlat79;
        let x_1585 : f32 = u_xlat77;
        u_xlat77 = ((x_1582 * x_1583) + x_1585);
        let x_1588 : vec4<f32> = u_xlat12;
        let x_1589 : vec2<f32> = vec2<f32>(x_1588.z, x_1588.w);
        let x_1591 : f32 = u_xlat6.z;
        txVec26 = vec3<f32>(x_1589.x, x_1589.y, x_1591);
        let x_1598 : vec3<f32> = txVec26;
        let x_1600 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1598.xy, x_1598.z);
        u_xlat79 = x_1600;
        let x_1602 : f32 = u_xlat8.y;
        let x_1603 : f32 = u_xlat79;
        let x_1605 : f32 = u_xlat77;
        u_xlat77 = ((x_1602 * x_1603) + x_1605);
        let x_1608 : vec2<f32> = u_xlat60;
        let x_1610 : f32 = u_xlat6.z;
        txVec27 = vec3<f32>(x_1608.x, x_1608.y, x_1610);
        let x_1617 : vec3<f32> = txVec27;
        let x_1619 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1617.xy, x_1617.z);
        u_xlat79 = x_1619;
        let x_1621 : f32 = u_xlat8.z;
        let x_1622 : f32 = u_xlat79;
        let x_1624 : f32 = u_xlat77;
        u_xlat77 = ((x_1621 * x_1622) + x_1624);
        let x_1627 : vec4<f32> = u_xlat7;
        let x_1628 : vec2<f32> = vec2<f32>(x_1627.x, x_1627.y);
        let x_1630 : f32 = u_xlat6.z;
        txVec28 = vec3<f32>(x_1628.x, x_1628.y, x_1630);
        let x_1637 : vec3<f32> = txVec28;
        let x_1639 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1637.xy, x_1637.z);
        u_xlat79 = x_1639;
        let x_1641 : f32 = u_xlat8.w;
        let x_1642 : f32 = u_xlat79;
        let x_1644 : f32 = u_xlat77;
        u_xlat76 = ((x_1641 * x_1642) + x_1644);
      }
    }
  } else {
    let x_1648 : vec4<f32> = u_xlat6;
    let x_1649 : vec2<f32> = vec2<f32>(x_1648.x, x_1648.y);
    let x_1651 : f32 = u_xlat6.z;
    txVec29 = vec3<f32>(x_1649.x, x_1649.y, x_1651);
    let x_1658 : vec3<f32> = txVec29;
    let x_1660 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1658.xy, x_1658.z);
    u_xlat76 = x_1660;
  }
  let x_1662 : f32 = x_264.x_MainLightShadowParams.x;
  u_xlat77 = (-(x_1662) + 1.0f);
  let x_1665 : f32 = u_xlat76;
  let x_1667 : f32 = x_264.x_MainLightShadowParams.x;
  let x_1669 : f32 = u_xlat77;
  u_xlat76 = ((x_1665 * x_1667) + x_1669);
  let x_1673 : f32 = u_xlat6.z;
  u_xlatb79 = (0.0f >= x_1673);
  let x_1677 : f32 = u_xlat6.z;
  u_xlatb81 = (x_1677 >= 1.0f);
  let x_1679 : bool = u_xlatb79;
  let x_1680 : bool = u_xlatb81;
  u_xlatb79 = (x_1679 | x_1680);
  let x_1682 : bool = u_xlatb79;
  let x_1683 : f32 = u_xlat76;
  u_xlat76 = select(x_1683, 1.0f, x_1682);
  let x_1685 : vec3<f32> = u_xlat0;
  let x_1687 : vec4<f32> = x_75.x_MainLightPosition;
  u_xlat0.x = dot(x_1685, -(vec3<f32>(x_1687.x, x_1687.y, x_1687.z)));
  let x_1693 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1693, 0.0f, 1.0f);
  let x_1696 : f32 = u_xlat76;
  let x_1699 : vec4<f32> = x_75.x_MainLightColor;
  let x_1701 : vec3<f32> = (vec3<f32>(x_1696, x_1696, x_1696) * vec3<f32>(x_1699.x, x_1699.y, x_1699.z));
  let x_1702 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1701.x, x_1701.y, x_1701.z, x_1702.w);
  let x_1704 : vec3<f32> = u_xlat0;
  let x_1706 : vec4<f32> = u_xlat7;
  u_xlat0 = (vec3<f32>(x_1704.x, x_1704.x, x_1704.x) * vec3<f32>(x_1706.x, x_1706.y, x_1706.z));
  let x_1709 : vec3<f32> = u_xlat0;
  let x_1710 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_1709 * vec3<f32>(x_1710.x, x_1710.y, x_1710.z));
  let x_1714 : f32 = x_148.unity_LODFade.x;
  u_xlatb76 = (x_1714 < 0.0f);
  let x_1717 : f32 = x_148.unity_LODFade.x;
  u_xlat3.x = (x_1717 + 1.0f);
  let x_1720 : bool = u_xlatb76;
  if (x_1720) {
    let x_1725 : f32 = u_xlat3.x;
    x_1721 = x_1725;
  } else {
    let x_1728 : f32 = x_148.unity_LODFade.x;
    x_1721 = x_1728;
  }
  let x_1729 : f32 = x_1721;
  u_xlat76 = x_1729;
  let x_1731 : f32 = u_xlat76;
  u_xlatb3 = (0.5f >= x_1731);
  let x_1733 : vec3<f32> = u_xlat1;
  let x_1736 : vec4<f32> = x_75.x_ScreenParams;
  u_xlat1 = (abs(x_1733) * vec3<f32>(x_1736.x, x_1736.y, x_1736.x));
  let x_1742 : vec3<f32> = u_xlat1;
  u_xlatu1 = vec3<u32>(x_1742);
  let x_1746 : u32 = u_xlatu1.z;
  u_xlatu51 = (x_1746 * 1025u);
  let x_1750 : u32 = u_xlatu51;
  u_xlatu28 = (x_1750 >> 6u);
  let x_1754 : u32 = u_xlatu51;
  let x_1755 : u32 = u_xlatu28;
  u_xlati51 = bitcast<i32>((x_1754 ^ x_1755));
  let x_1758 : i32 = u_xlati51;
  u_xlatu51 = (bitcast<u32>(x_1758) * 9u);
  let x_1762 : u32 = u_xlatu51;
  u_xlatu28 = (x_1762 >> 11u);
  let x_1765 : u32 = u_xlatu51;
  let x_1766 : u32 = u_xlatu28;
  u_xlati51 = bitcast<i32>((x_1765 ^ x_1766));
  let x_1769 : i32 = u_xlati51;
  u_xlati51 = (x_1769 * 32769i);
  let x_1773 : i32 = u_xlati51;
  let x_1776 : u32 = u_xlatu1.y;
  u_xlati26 = bitcast<i32>((bitcast<u32>(x_1773) ^ x_1776));
  let x_1780 : i32 = u_xlati26;
  u_xlatu26 = (bitcast<u32>(x_1780) * 1025u);
  let x_1783 : u32 = u_xlatu26;
  u_xlatu51 = (x_1783 >> 6u);
  let x_1785 : u32 = u_xlatu51;
  let x_1786 : u32 = u_xlatu26;
  u_xlati26 = bitcast<i32>((x_1785 ^ x_1786));
  let x_1789 : i32 = u_xlati26;
  u_xlatu26 = (bitcast<u32>(x_1789) * 9u);
  let x_1792 : u32 = u_xlatu26;
  u_xlatu51 = (x_1792 >> 11u);
  let x_1794 : u32 = u_xlatu51;
  let x_1795 : u32 = u_xlatu26;
  u_xlati26 = bitcast<i32>((x_1794 ^ x_1795));
  let x_1798 : i32 = u_xlati26;
  u_xlati26 = (x_1798 * 32769i);
  let x_1801 : i32 = u_xlati26;
  let x_1804 : u32 = u_xlatu1.x;
  u_xlati1 = bitcast<i32>((bitcast<u32>(x_1801) ^ x_1804));
  let x_1807 : i32 = u_xlati1;
  u_xlatu1.x = (bitcast<u32>(x_1807) * 1025u);
  let x_1812 : u32 = u_xlatu1.x;
  u_xlatu26 = (x_1812 >> 6u);
  let x_1814 : u32 = u_xlatu26;
  let x_1816 : u32 = u_xlatu1.x;
  u_xlati1 = bitcast<i32>((x_1814 ^ x_1816));
  let x_1819 : i32 = u_xlati1;
  u_xlatu1.x = (bitcast<u32>(x_1819) * 9u);
  let x_1824 : u32 = u_xlatu1.x;
  u_xlatu26 = (x_1824 >> 11u);
  let x_1826 : u32 = u_xlatu26;
  let x_1828 : u32 = u_xlatu1.x;
  u_xlati1 = bitcast<i32>((x_1826 ^ x_1828));
  let x_1831 : i32 = u_xlati1;
  u_xlati1 = (x_1831 * 32769i);
  param = 1065353216i;
  let x_1837 : i32 = u_xlati1;
  param_1 = x_1837;
  param_2 = 0i;
  param_3 = 23i;
  let x_1840 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlat1.x = bitcast<f32>(x_1840);
  let x_1844 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1844 + -1.0f);
  let x_1849 : f32 = u_xlat1.x;
  u_xlat26 = (-(x_1849) + 1.0f);
  let x_1852 : bool = u_xlatb3;
  if (x_1852) {
    let x_1857 : f32 = u_xlat1.x;
    x_1853 = x_1857;
  } else {
    let x_1859 : f32 = u_xlat26;
    x_1853 = x_1859;
  }
  let x_1860 : f32 = x_1853;
  u_xlat1.x = x_1860;
  let x_1862 : f32 = u_xlat76;
  let x_1865 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1862 * 2.0f) + -(x_1865));
  let x_1870 : f32 = u_xlat1.x;
  let x_1872 : f32 = u_xlat3.w;
  u_xlat26 = (x_1870 * x_1872);
  let x_1877 : f32 = u_xlat26;
  u_xlatb51.x = (x_1877 >= 0.40000000596046447754f);
  let x_1883 : bool = u_xlatb51.x;
  let x_1884 : f32 = u_xlat26;
  u_xlat51.x = select(0.0f, x_1884, x_1883);
  let x_1888 : f32 = u_xlat3.w;
  let x_1890 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1888 * x_1890) + -0.40000000596046447754f);
  let x_1895 : f32 = u_xlat26;
  u_xlat76 = dpdxCoarse(x_1895);
  let x_1897 : f32 = u_xlat26;
  u_xlat26 = dpdyCoarse(x_1897);
  let x_1899 : f32 = u_xlat26;
  let x_1901 : f32 = u_xlat76;
  u_xlat26 = (abs(x_1899) + abs(x_1901));
  let x_1904 : f32 = u_xlat26;
  u_xlat26 = max(x_1904, 0.00009999999747378752f);
  let x_1908 : f32 = u_xlat1.x;
  let x_1909 : f32 = u_xlat26;
  u_xlat1.x = (x_1908 / x_1909);
  let x_1913 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1913 + 0.5f);
  let x_1917 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1917, 0.0f, 1.0f);
  let x_1922 : f32 = x_75.x_AlphaToMaskAvailable;
  u_xlatb26 = !((x_1922 == 0.0f));
  let x_1924 : bool = u_xlatb26;
  if (x_1924) {
    let x_1929 : f32 = u_xlat1.x;
    x_1925 = x_1929;
  } else {
    let x_1932 : f32 = u_xlat51.x;
    x_1925 = x_1932;
  }
  let x_1933 : f32 = x_1925;
  u_xlat1.x = x_1933;
  let x_1936 : f32 = u_xlat1.x;
  u_xlat51.x = (x_1936 + -0.00009999999747378752f);
  let x_1941 : f32 = u_xlat51.x;
  u_xlatb51.x = (x_1941 < 0.0f);
  let x_1945 : bool = u_xlatb51.x;
  if (((select(0i, 1i, x_1945) * -1i) != 0i)) {
    discard;
  }
  let x_1955 : f32 = vs_INTERP4.w;
  u_xlatb51.x = (0.0f < x_1955);
  let x_1959 : f32 = x_148.unity_WorldTransformParams.w;
  u_xlatb51.y = (x_1959 >= 0.0f);
  let x_1963 : bool = u_xlatb51.x;
  u_xlat51.x = select(-1.0f, 1.0f, x_1963);
  let x_1967 : bool = u_xlatb51.y;
  u_xlat51.y = select(-1.0f, 1.0f, x_1967);
  let x_1971 : f32 = u_xlat51.y;
  let x_1973 : f32 = u_xlat51.x;
  u_xlat51.x = (x_1971 * x_1973);
  let x_1976 : vec4<f32> = vs_INTERP4;
  let x_1978 : vec3<f32> = vs_INTERP9;
  let x_1980 : vec3<f32> = (vec3<f32>(x_1976.y, x_1976.z, x_1976.x) * vec3<f32>(x_1978.z, x_1978.x, x_1978.y));
  let x_1981 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1980.x, x_1980.y, x_1980.z, x_1981.w);
  let x_1983 : vec3<f32> = vs_INTERP9;
  let x_1985 : vec4<f32> = vs_INTERP4;
  let x_1988 : vec4<f32> = u_xlat3;
  let x_1991 : vec3<f32> = ((vec3<f32>(x_1983.y, x_1983.z, x_1983.x) * vec3<f32>(x_1985.z, x_1985.x, x_1985.y)) + -(vec3<f32>(x_1988.x, x_1988.y, x_1988.z)));
  let x_1992 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1991.x, x_1991.y, x_1991.z, x_1992.w);
  let x_1994 : vec2<f32> = u_xlat51;
  let x_1996 : vec4<f32> = u_xlat3;
  let x_1998 : vec3<f32> = (vec3<f32>(x_1994.x, x_1994.x, x_1994.x) * vec3<f32>(x_1996.x, x_1996.y, x_1996.z));
  let x_1999 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1998.x, x_1998.y, x_1998.z, x_1999.w);
  let x_2001 : vec4<f32> = u_xlat3;
  let x_2003 : vec3<f32> = u_xlat30;
  let x_2005 : vec3<f32> = (vec3<f32>(x_2001.x, x_2001.y, x_2001.z) * vec3<f32>(x_2003.y, x_2003.y, x_2003.y));
  let x_2006 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2005.x, x_2005.y, x_2005.z, x_2006.w);
  let x_2008 : vec3<f32> = u_xlat30;
  let x_2010 : vec4<f32> = vs_INTERP4;
  let x_2013 : vec4<f32> = u_xlat3;
  let x_2015 : vec3<f32> = ((vec3<f32>(x_2008.x, x_2008.x, x_2008.x) * vec3<f32>(x_2010.x, x_2010.y, x_2010.z)) + vec3<f32>(x_2013.x, x_2013.y, x_2013.z));
  let x_2016 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2015.x, x_2015.y, x_2015.z, x_2016.w);
  let x_2018 : vec3<f32> = u_xlat30;
  let x_2020 : vec3<f32> = vs_INTERP9;
  let x_2022 : vec4<f32> = u_xlat3;
  let x_2024 : vec3<f32> = ((vec3<f32>(x_2018.z, x_2018.z, x_2018.z) * x_2020) + vec3<f32>(x_2022.x, x_2022.y, x_2022.z));
  let x_2025 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2024.x, x_2024.y, x_2024.z, x_2025.w);
  let x_2027 : vec4<f32> = u_xlat3;
  let x_2029 : vec4<f32> = u_xlat3;
  u_xlat51.x = dot(vec3<f32>(x_2027.x, x_2027.y, x_2027.z), vec3<f32>(x_2029.x, x_2029.y, x_2029.z));
  let x_2034 : f32 = u_xlat51.x;
  u_xlat51.x = inverseSqrt(x_2034);
  let x_2037 : vec2<f32> = u_xlat51;
  let x_2039 : vec4<f32> = u_xlat3;
  let x_2041 : vec3<f32> = (vec3<f32>(x_2037.x, x_2037.x, x_2037.x) * vec3<f32>(x_2039.x, x_2039.y, x_2039.z));
  let x_2042 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2041.x, x_2041.y, x_2041.z, x_2042.w);
  let x_2051 : vec2<f32> = vs_INTERP0;
  let x_2053 : f32 = x_75.x_GlobalMipBias.x;
  let x_2054 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_2051, x_2053);
  u_xlat7 = x_2054;
  let x_2059 : vec2<f32> = vs_INTERP0;
  let x_2061 : f32 = x_75.x_GlobalMipBias.x;
  let x_2062 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_2059, x_2061);
  u_xlat30 = vec3<f32>(x_2062.x, x_2062.y, x_2062.z);
  let x_2064 : vec4<f32> = u_xlat7;
  let x_2067 : vec3<f32> = (vec3<f32>(x_2064.x, x_2064.y, x_2064.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_2068 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2067.x, x_2067.y, x_2067.z, x_2068.w);
  let x_2070 : vec4<f32> = u_xlat3;
  let x_2072 : vec4<f32> = u_xlat7;
  u_xlat51.x = dot(vec3<f32>(x_2070.x, x_2070.y, x_2070.z), vec3<f32>(x_2072.x, x_2072.y, x_2072.z));
  let x_2077 : f32 = u_xlat51.x;
  u_xlat51.x = (x_2077 + 0.5f);
  let x_2080 : vec2<f32> = u_xlat51;
  let x_2082 : vec3<f32> = u_xlat30;
  u_xlat30 = (vec3<f32>(x_2080.x, x_2080.x, x_2080.x) * x_2082);
  let x_2085 : f32 = u_xlat7.w;
  u_xlat51.x = max(x_2085, 0.00009999999747378752f);
  let x_2088 : vec3<f32> = u_xlat30;
  let x_2089 : vec2<f32> = u_xlat51;
  u_xlat30 = (x_2088 / vec3<f32>(x_2089.x, x_2089.x, x_2089.x));
  let x_2093 : f32 = u_xlat5.x;
  u_xlat5.x = x_2093;
  let x_2096 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_2096, 0.0f, 1.0f);
  let x_2100 : f32 = u_xlat1.x;
  u_xlat1.x = x_2100;
  let x_2103 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_2103, 0.0f, 1.0f);
  let x_2106 : vec3<f32> = u_xlat4;
  u_xlat4 = (x_2106 * vec3<f32>(0.95999997854232788086f, 0.95999997854232788086f, 0.95999997854232788086f));
  let x_2111 : f32 = u_xlat5.x;
  u_xlat51.x = (-(x_2111) + 1.0f);
  let x_2116 : f32 = u_xlat51.x;
  let x_2118 : f32 = u_xlat51.x;
  u_xlat76 = (x_2116 * x_2118);
  let x_2120 : f32 = u_xlat76;
  u_xlat76 = max(x_2120, 0.0078125f);
  let x_2124 : f32 = u_xlat76;
  let x_2125 : f32 = u_xlat76;
  u_xlat78 = (x_2124 * x_2125);
  let x_2128 : f32 = u_xlat5.x;
  u_xlat5.x = (x_2128 + 0.04000002145767211914f);
  let x_2133 : f32 = u_xlat5.x;
  u_xlat5.x = min(x_2133, 1.0f);
  let x_2136 : f32 = u_xlat76;
  u_xlat81 = ((x_2136 * 4.0f) + 2.0f);
  let x_2140 : f32 = vs_INTERP6.w;
  u_xlat7.x = min(x_2140, 1.0f);
  let x_2143 : bool = u_xlatb75;
  if (x_2143) {
    let x_2147 : f32 = x_264.x_MainLightShadowParams.y;
    u_xlatb75 = (x_2147 == 1.0f);
    let x_2149 : bool = u_xlatb75;
    if (x_2149) {
      let x_2152 : vec4<f32> = u_xlat6;
      let x_2155 : vec4<f32> = x_264.x_MainLightShadowOffset0;
      u_xlat8 = (vec4<f32>(x_2152.x, x_2152.y, x_2152.x, x_2152.y) + x_2155);
      let x_2158 : vec4<f32> = u_xlat8;
      let x_2159 : vec2<f32> = vec2<f32>(x_2158.x, x_2158.y);
      let x_2161 : f32 = u_xlat6.z;
      txVec30 = vec3<f32>(x_2159.x, x_2159.y, x_2161);
      let x_2168 : vec3<f32> = txVec30;
      let x_2170 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2168.xy, x_2168.z);
      u_xlat9.x = x_2170;
      let x_2173 : vec4<f32> = u_xlat8;
      let x_2174 : vec2<f32> = vec2<f32>(x_2173.z, x_2173.w);
      let x_2176 : f32 = u_xlat6.z;
      txVec31 = vec3<f32>(x_2174.x, x_2174.y, x_2176);
      let x_2183 : vec3<f32> = txVec31;
      let x_2185 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2183.xy, x_2183.z);
      u_xlat9.y = x_2185;
      let x_2187 : vec4<f32> = u_xlat6;
      let x_2190 : vec4<f32> = x_264.x_MainLightShadowOffset1;
      u_xlat8 = (vec4<f32>(x_2187.x, x_2187.y, x_2187.x, x_2187.y) + x_2190);
      let x_2193 : vec4<f32> = u_xlat8;
      let x_2194 : vec2<f32> = vec2<f32>(x_2193.x, x_2193.y);
      let x_2196 : f32 = u_xlat6.z;
      txVec32 = vec3<f32>(x_2194.x, x_2194.y, x_2196);
      let x_2203 : vec3<f32> = txVec32;
      let x_2205 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2203.xy, x_2203.z);
      u_xlat9.z = x_2205;
      let x_2208 : vec4<f32> = u_xlat8;
      let x_2209 : vec2<f32> = vec2<f32>(x_2208.z, x_2208.w);
      let x_2211 : f32 = u_xlat6.z;
      txVec33 = vec3<f32>(x_2209.x, x_2209.y, x_2211);
      let x_2218 : vec3<f32> = txVec33;
      let x_2220 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2218.xy, x_2218.z);
      u_xlat9.w = x_2220;
      let x_2222 : vec4<f32> = u_xlat9;
      u_xlat75 = dot(x_2222, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_2227 : f32 = x_264.x_MainLightShadowParams.y;
      u_xlatb32 = (x_2227 == 2.0f);
      let x_2229 : bool = u_xlatb32;
      if (x_2229) {
        let x_2233 : vec4<f32> = u_xlat6;
        let x_2236 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_2239 : vec2<f32> = ((vec2<f32>(x_2233.x, x_2233.y) * vec2<f32>(x_2236.z, x_2236.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2240 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_2239.x, x_2239.y, x_2240.z);
        let x_2242 : vec3<f32> = u_xlat32;
        let x_2244 : vec2<f32> = floor(vec2<f32>(x_2242.x, x_2242.y));
        let x_2245 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_2244.x, x_2244.y, x_2245.z);
        let x_2247 : vec4<f32> = u_xlat6;
        let x_2250 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_2253 : vec3<f32> = u_xlat32;
        let x_2256 : vec2<f32> = ((vec2<f32>(x_2247.x, x_2247.y) * vec2<f32>(x_2250.z, x_2250.w)) + -(vec2<f32>(x_2253.x, x_2253.y)));
        let x_2257 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2256.x, x_2256.y, x_2257.z, x_2257.w);
        let x_2259 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_2259.x, x_2259.x, x_2259.y, x_2259.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2262 : vec4<f32> = u_xlat9;
        let x_2264 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_2262.x, x_2262.x, x_2262.z, x_2262.z) * vec4<f32>(x_2264.x, x_2264.x, x_2264.z, x_2264.z));
        let x_2268 : vec4<f32> = u_xlat10;
        u_xlat58 = (vec2<f32>(x_2268.y, x_2268.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_2271 : vec4<f32> = u_xlat10;
        let x_2274 : vec4<f32> = u_xlat8;
        let x_2277 : vec2<f32> = ((vec2<f32>(x_2271.x, x_2271.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2274.x, x_2274.y)));
        let x_2278 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2277.x, x_2278.y, x_2277.y, x_2278.w);
        let x_2280 : vec4<f32> = u_xlat8;
        let x_2283 : vec2<f32> = (-(vec2<f32>(x_2280.x, x_2280.y)) + vec2<f32>(1.0f, 1.0f));
        let x_2284 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2283.x, x_2283.y, x_2284.z, x_2284.w);
        let x_2286 : vec4<f32> = u_xlat8;
        u_xlat60 = min(vec2<f32>(x_2286.x, x_2286.y), vec2<f32>(0.0f, 0.0f));
        let x_2289 : vec2<f32> = u_xlat60;
        let x_2291 : vec2<f32> = u_xlat60;
        let x_2293 : vec4<f32> = u_xlat10;
        u_xlat60 = ((-(x_2289) * x_2291) + vec2<f32>(x_2293.x, x_2293.y));
        let x_2296 : vec4<f32> = u_xlat8;
        let x_2298 : vec2<f32> = max(vec2<f32>(x_2296.x, x_2296.y), vec2<f32>(0.0f, 0.0f));
        let x_2299 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2298.x, x_2298.y, x_2299.z, x_2299.w);
        let x_2301 : vec4<f32> = u_xlat8;
        let x_2304 : vec4<f32> = u_xlat8;
        let x_2307 : vec4<f32> = u_xlat9;
        let x_2309 : vec2<f32> = ((-(vec2<f32>(x_2301.x, x_2301.y)) * vec2<f32>(x_2304.x, x_2304.y)) + vec2<f32>(x_2307.y, x_2307.w));
        let x_2310 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2309.x, x_2309.y, x_2310.z, x_2310.w);
        let x_2312 : vec2<f32> = u_xlat60;
        u_xlat60 = (x_2312 + vec2<f32>(1.0f, 1.0f));
        let x_2314 : vec4<f32> = u_xlat8;
        let x_2316 : vec2<f32> = (vec2<f32>(x_2314.x, x_2314.y) + vec2<f32>(1.0f, 1.0f));
        let x_2317 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2316.x, x_2316.y, x_2317.z, x_2317.w);
        let x_2319 : vec4<f32> = u_xlat9;
        let x_2321 : vec2<f32> = (vec2<f32>(x_2319.x, x_2319.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2322 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2321.x, x_2321.y, x_2322.z, x_2322.w);
        let x_2324 : vec4<f32> = u_xlat10;
        let x_2326 : vec2<f32> = (vec2<f32>(x_2324.x, x_2324.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2327 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2326.x, x_2326.y, x_2327.z, x_2327.w);
        let x_2329 : vec2<f32> = u_xlat60;
        let x_2330 : vec2<f32> = (x_2329 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2331 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2330.x, x_2330.y, x_2331.z, x_2331.w);
        let x_2333 : vec4<f32> = u_xlat8;
        let x_2335 : vec2<f32> = (vec2<f32>(x_2333.x, x_2333.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2336 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_2335.x, x_2335.y, x_2336.z, x_2336.w);
        let x_2338 : vec4<f32> = u_xlat9;
        let x_2340 : vec2<f32> = (vec2<f32>(x_2338.y, x_2338.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2341 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2340.x, x_2340.y, x_2341.z, x_2341.w);
        let x_2344 : f32 = u_xlat10.x;
        u_xlat11.z = x_2344;
        let x_2347 : f32 = u_xlat8.x;
        u_xlat11.w = x_2347;
        let x_2350 : f32 = u_xlat13.x;
        u_xlat12.z = x_2350;
        let x_2353 : f32 = u_xlat58.x;
        u_xlat12.w = x_2353;
        let x_2355 : vec4<f32> = u_xlat11;
        let x_2357 : vec4<f32> = u_xlat12;
        u_xlat9 = (vec4<f32>(x_2355.z, x_2355.w, x_2355.x, x_2355.z) + vec4<f32>(x_2357.z, x_2357.w, x_2357.x, x_2357.z));
        let x_2361 : f32 = u_xlat11.y;
        u_xlat10.z = x_2361;
        let x_2364 : f32 = u_xlat8.y;
        u_xlat10.w = x_2364;
        let x_2367 : f32 = u_xlat12.y;
        u_xlat13.z = x_2367;
        let x_2370 : f32 = u_xlat58.y;
        u_xlat13.w = x_2370;
        let x_2372 : vec4<f32> = u_xlat10;
        let x_2374 : vec4<f32> = u_xlat13;
        let x_2376 : vec3<f32> = (vec3<f32>(x_2372.z, x_2372.y, x_2372.w) + vec3<f32>(x_2374.z, x_2374.y, x_2374.w));
        let x_2377 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2376.x, x_2376.y, x_2376.z, x_2377.w);
        let x_2379 : vec4<f32> = u_xlat12;
        let x_2381 : vec4<f32> = u_xlat9;
        let x_2383 : vec3<f32> = (vec3<f32>(x_2379.x, x_2379.z, x_2379.w) / vec3<f32>(x_2381.z, x_2381.w, x_2381.y));
        let x_2384 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2383.x, x_2383.y, x_2383.z, x_2384.w);
        let x_2386 : vec4<f32> = u_xlat10;
        let x_2388 : vec3<f32> = (vec3<f32>(x_2386.x, x_2386.y, x_2386.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2389 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2388.x, x_2388.y, x_2388.z, x_2389.w);
        let x_2391 : vec4<f32> = u_xlat13;
        let x_2393 : vec4<f32> = u_xlat8;
        let x_2395 : vec3<f32> = (vec3<f32>(x_2391.z, x_2391.y, x_2391.w) / vec3<f32>(x_2393.x, x_2393.y, x_2393.z));
        let x_2396 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2395.x, x_2395.y, x_2395.z, x_2396.w);
        let x_2398 : vec4<f32> = u_xlat11;
        let x_2400 : vec3<f32> = (vec3<f32>(x_2398.x, x_2398.y, x_2398.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2401 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2400.x, x_2400.y, x_2400.z, x_2401.w);
        let x_2403 : vec4<f32> = u_xlat10;
        let x_2406 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_2408 : vec3<f32> = (vec3<f32>(x_2403.y, x_2403.x, x_2403.z) * vec3<f32>(x_2406.x, x_2406.x, x_2406.x));
        let x_2409 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2408.x, x_2408.y, x_2408.z, x_2409.w);
        let x_2411 : vec4<f32> = u_xlat11;
        let x_2414 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_2416 : vec3<f32> = (vec3<f32>(x_2411.x, x_2411.y, x_2411.z) * vec3<f32>(x_2414.y, x_2414.y, x_2414.y));
        let x_2417 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2416.x, x_2416.y, x_2416.z, x_2417.w);
        let x_2420 : f32 = u_xlat11.x;
        u_xlat10.w = x_2420;
        let x_2422 : vec3<f32> = u_xlat32;
        let x_2425 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_2428 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_2422.x, x_2422.y, x_2422.x, x_2422.y) * vec4<f32>(x_2425.x, x_2425.y, x_2425.x, x_2425.y)) + vec4<f32>(x_2428.y, x_2428.w, x_2428.x, x_2428.w));
        let x_2431 : vec3<f32> = u_xlat32;
        let x_2434 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_2437 : vec4<f32> = u_xlat10;
        let x_2439 : vec2<f32> = ((vec2<f32>(x_2431.x, x_2431.y) * vec2<f32>(x_2434.x, x_2434.y)) + vec2<f32>(x_2437.z, x_2437.w));
        let x_2440 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_2439.x, x_2439.y, x_2440.z, x_2440.w);
        let x_2443 : f32 = u_xlat10.y;
        u_xlat11.w = x_2443;
        let x_2445 : vec4<f32> = u_xlat11;
        let x_2446 : vec2<f32> = vec2<f32>(x_2445.y, x_2445.z);
        let x_2447 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2447.x, x_2446.x, x_2447.z, x_2446.y);
        let x_2449 : vec3<f32> = u_xlat32;
        let x_2452 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_2455 : vec4<f32> = u_xlat10;
        u_xlat14 = ((vec4<f32>(x_2449.x, x_2449.y, x_2449.x, x_2449.y) * vec4<f32>(x_2452.x, x_2452.y, x_2452.x, x_2452.y)) + vec4<f32>(x_2455.x, x_2455.y, x_2455.z, x_2455.y));
        let x_2458 : vec3<f32> = u_xlat32;
        let x_2461 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_2464 : vec4<f32> = u_xlat11;
        u_xlat11 = ((vec4<f32>(x_2458.x, x_2458.y, x_2458.x, x_2458.y) * vec4<f32>(x_2461.x, x_2461.y, x_2461.x, x_2461.y)) + vec4<f32>(x_2464.w, x_2464.y, x_2464.w, x_2464.z));
        let x_2467 : vec3<f32> = u_xlat32;
        let x_2470 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_2473 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_2467.x, x_2467.y, x_2467.x, x_2467.y) * vec4<f32>(x_2470.x, x_2470.y, x_2470.x, x_2470.y)) + vec4<f32>(x_2473.x, x_2473.w, x_2473.z, x_2473.w));
        let x_2476 : vec4<f32> = u_xlat8;
        let x_2478 : vec4<f32> = u_xlat9;
        u_xlat15 = (vec4<f32>(x_2476.x, x_2476.x, x_2476.x, x_2476.y) * vec4<f32>(x_2478.z, x_2478.w, x_2478.y, x_2478.z));
        let x_2481 : vec4<f32> = u_xlat8;
        let x_2483 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_2481.y, x_2481.y, x_2481.z, x_2481.z) * x_2483);
        let x_2486 : f32 = u_xlat8.z;
        let x_2488 : f32 = u_xlat9.y;
        u_xlat32.x = (x_2486 * x_2488);
        let x_2492 : vec4<f32> = u_xlat12;
        let x_2493 : vec2<f32> = vec2<f32>(x_2492.x, x_2492.y);
        let x_2495 : f32 = u_xlat6.z;
        txVec34 = vec3<f32>(x_2493.x, x_2493.y, x_2495);
        let x_2502 : vec3<f32> = txVec34;
        let x_2504 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2502.xy, x_2502.z);
        u_xlat57.x = x_2504;
        let x_2507 : vec4<f32> = u_xlat12;
        let x_2508 : vec2<f32> = vec2<f32>(x_2507.z, x_2507.w);
        let x_2510 : f32 = u_xlat6.z;
        txVec35 = vec3<f32>(x_2508.x, x_2508.y, x_2510);
        let x_2518 : vec3<f32> = txVec35;
        let x_2520 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2518.xy, x_2518.z);
        u_xlat82 = x_2520;
        let x_2521 : f32 = u_xlat82;
        let x_2523 : f32 = u_xlat15.y;
        u_xlat82 = (x_2521 * x_2523);
        let x_2526 : f32 = u_xlat15.x;
        let x_2528 : f32 = u_xlat57.x;
        let x_2530 : f32 = u_xlat82;
        u_xlat57.x = ((x_2526 * x_2528) + x_2530);
        let x_2534 : vec4<f32> = u_xlat13;
        let x_2535 : vec2<f32> = vec2<f32>(x_2534.x, x_2534.y);
        let x_2537 : f32 = u_xlat6.z;
        txVec36 = vec3<f32>(x_2535.x, x_2535.y, x_2537);
        let x_2544 : vec3<f32> = txVec36;
        let x_2546 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2544.xy, x_2544.z);
        u_xlat82 = x_2546;
        let x_2548 : f32 = u_xlat15.z;
        let x_2549 : f32 = u_xlat82;
        let x_2552 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_2548 * x_2549) + x_2552);
        let x_2556 : vec4<f32> = u_xlat11;
        let x_2557 : vec2<f32> = vec2<f32>(x_2556.x, x_2556.y);
        let x_2559 : f32 = u_xlat6.z;
        txVec37 = vec3<f32>(x_2557.x, x_2557.y, x_2559);
        let x_2566 : vec3<f32> = txVec37;
        let x_2568 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2566.xy, x_2566.z);
        u_xlat82 = x_2568;
        let x_2570 : f32 = u_xlat15.w;
        let x_2571 : f32 = u_xlat82;
        let x_2574 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_2570 * x_2571) + x_2574);
        let x_2578 : vec4<f32> = u_xlat14;
        let x_2579 : vec2<f32> = vec2<f32>(x_2578.x, x_2578.y);
        let x_2581 : f32 = u_xlat6.z;
        txVec38 = vec3<f32>(x_2579.x, x_2579.y, x_2581);
        let x_2588 : vec3<f32> = txVec38;
        let x_2590 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2588.xy, x_2588.z);
        u_xlat82 = x_2590;
        let x_2592 : f32 = u_xlat16.x;
        let x_2593 : f32 = u_xlat82;
        let x_2596 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_2592 * x_2593) + x_2596);
        let x_2600 : vec4<f32> = u_xlat14;
        let x_2601 : vec2<f32> = vec2<f32>(x_2600.z, x_2600.w);
        let x_2603 : f32 = u_xlat6.z;
        txVec39 = vec3<f32>(x_2601.x, x_2601.y, x_2603);
        let x_2610 : vec3<f32> = txVec39;
        let x_2612 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2610.xy, x_2610.z);
        u_xlat82 = x_2612;
        let x_2614 : f32 = u_xlat16.y;
        let x_2615 : f32 = u_xlat82;
        let x_2618 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_2614 * x_2615) + x_2618);
        let x_2622 : vec4<f32> = u_xlat11;
        let x_2623 : vec2<f32> = vec2<f32>(x_2622.z, x_2622.w);
        let x_2625 : f32 = u_xlat6.z;
        txVec40 = vec3<f32>(x_2623.x, x_2623.y, x_2625);
        let x_2632 : vec3<f32> = txVec40;
        let x_2634 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2632.xy, x_2632.z);
        u_xlat82 = x_2634;
        let x_2636 : f32 = u_xlat16.z;
        let x_2637 : f32 = u_xlat82;
        let x_2640 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_2636 * x_2637) + x_2640);
        let x_2644 : vec4<f32> = u_xlat10;
        let x_2645 : vec2<f32> = vec2<f32>(x_2644.x, x_2644.y);
        let x_2647 : f32 = u_xlat6.z;
        txVec41 = vec3<f32>(x_2645.x, x_2645.y, x_2647);
        let x_2654 : vec3<f32> = txVec41;
        let x_2656 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2654.xy, x_2654.z);
        u_xlat82 = x_2656;
        let x_2658 : f32 = u_xlat16.w;
        let x_2659 : f32 = u_xlat82;
        let x_2662 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_2658 * x_2659) + x_2662);
        let x_2666 : vec4<f32> = u_xlat10;
        let x_2667 : vec2<f32> = vec2<f32>(x_2666.z, x_2666.w);
        let x_2669 : f32 = u_xlat6.z;
        txVec42 = vec3<f32>(x_2667.x, x_2667.y, x_2669);
        let x_2676 : vec3<f32> = txVec42;
        let x_2678 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2676.xy, x_2676.z);
        u_xlat82 = x_2678;
        let x_2680 : f32 = u_xlat32.x;
        let x_2681 : f32 = u_xlat82;
        let x_2684 : f32 = u_xlat57.x;
        u_xlat75 = ((x_2680 * x_2681) + x_2684);
      } else {
        let x_2687 : vec4<f32> = u_xlat6;
        let x_2690 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_2693 : vec2<f32> = ((vec2<f32>(x_2687.x, x_2687.y) * vec2<f32>(x_2690.z, x_2690.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2694 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_2693.x, x_2693.y, x_2694.z);
        let x_2696 : vec3<f32> = u_xlat32;
        let x_2698 : vec2<f32> = floor(vec2<f32>(x_2696.x, x_2696.y));
        let x_2699 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_2698.x, x_2698.y, x_2699.z);
        let x_2701 : vec4<f32> = u_xlat6;
        let x_2704 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_2707 : vec3<f32> = u_xlat32;
        let x_2710 : vec2<f32> = ((vec2<f32>(x_2701.x, x_2701.y) * vec2<f32>(x_2704.z, x_2704.w)) + -(vec2<f32>(x_2707.x, x_2707.y)));
        let x_2711 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2710.x, x_2710.y, x_2711.z, x_2711.w);
        let x_2713 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_2713.x, x_2713.x, x_2713.y, x_2713.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2716 : vec4<f32> = u_xlat9;
        let x_2718 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_2716.x, x_2716.x, x_2716.z, x_2716.z) * vec4<f32>(x_2718.x, x_2718.x, x_2718.z, x_2718.z));
        let x_2721 : vec4<f32> = u_xlat10;
        let x_2723 : vec2<f32> = (vec2<f32>(x_2721.y, x_2721.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_2724 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2724.x, x_2723.x, x_2724.z, x_2723.y);
        let x_2726 : vec4<f32> = u_xlat10;
        let x_2729 : vec4<f32> = u_xlat8;
        u_xlat58 = ((vec2<f32>(x_2726.x, x_2726.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2729.x, x_2729.y)));
        let x_2733 : vec4<f32> = u_xlat8;
        let x_2736 : vec2<f32> = (-(vec2<f32>(x_2733.x, x_2733.y)) + vec2<f32>(1.0f, 1.0f));
        let x_2737 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2736.x, x_2737.y, x_2736.y, x_2737.w);
        let x_2739 : vec4<f32> = u_xlat8;
        let x_2741 : vec2<f32> = min(vec2<f32>(x_2739.x, x_2739.y), vec2<f32>(0.0f, 0.0f));
        let x_2742 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2741.x, x_2741.y, x_2742.z, x_2742.w);
        let x_2744 : vec4<f32> = u_xlat10;
        let x_2747 : vec4<f32> = u_xlat10;
        let x_2750 : vec4<f32> = u_xlat9;
        let x_2752 : vec2<f32> = ((-(vec2<f32>(x_2744.x, x_2744.y)) * vec2<f32>(x_2747.x, x_2747.y)) + vec2<f32>(x_2750.x, x_2750.z));
        let x_2753 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2752.x, x_2753.y, x_2752.y, x_2753.w);
        let x_2755 : vec4<f32> = u_xlat8;
        let x_2757 : vec2<f32> = max(vec2<f32>(x_2755.x, x_2755.y), vec2<f32>(0.0f, 0.0f));
        let x_2758 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2757.x, x_2757.y, x_2758.z, x_2758.w);
        let x_2760 : vec4<f32> = u_xlat10;
        let x_2763 : vec4<f32> = u_xlat10;
        let x_2766 : vec4<f32> = u_xlat9;
        let x_2768 : vec2<f32> = ((-(vec2<f32>(x_2760.x, x_2760.y)) * vec2<f32>(x_2763.x, x_2763.y)) + vec2<f32>(x_2766.y, x_2766.w));
        let x_2769 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2769.x, x_2768.x, x_2769.z, x_2768.y);
        let x_2771 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_2771 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_2774 : f32 = u_xlat9.y;
        u_xlat10.z = (x_2774 * 0.08163200318813323975f);
        let x_2777 : vec2<f32> = u_xlat58;
        let x_2779 : vec2<f32> = (vec2<f32>(x_2777.y, x_2777.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2780 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2779.x, x_2779.y, x_2780.z, x_2780.w);
        let x_2782 : vec4<f32> = u_xlat9;
        u_xlat58 = (vec2<f32>(x_2782.x, x_2782.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2786 : f32 = u_xlat9.w;
        u_xlat12.z = (x_2786 * 0.08163200318813323975f);
        let x_2790 : f32 = u_xlat12.y;
        u_xlat10.x = x_2790;
        let x_2792 : vec4<f32> = u_xlat8;
        let x_2795 : vec2<f32> = ((vec2<f32>(x_2792.x, x_2792.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2796 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2796.x, x_2795.x, x_2796.z, x_2795.y);
        let x_2798 : vec4<f32> = u_xlat8;
        let x_2801 : vec2<f32> = ((vec2<f32>(x_2798.x, x_2798.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2802 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2801.x, x_2802.y, x_2801.y, x_2802.w);
        let x_2805 : f32 = u_xlat58.x;
        u_xlat9.y = x_2805;
        let x_2808 : f32 = u_xlat11.y;
        u_xlat9.w = x_2808;
        let x_2810 : vec4<f32> = u_xlat9;
        let x_2811 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_2810 + x_2811);
        let x_2813 : vec4<f32> = u_xlat8;
        let x_2816 : vec2<f32> = ((vec2<f32>(x_2813.y, x_2813.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2817 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2817.x, x_2816.x, x_2817.z, x_2816.y);
        let x_2819 : vec4<f32> = u_xlat8;
        let x_2822 : vec2<f32> = ((vec2<f32>(x_2819.y, x_2819.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2823 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2822.x, x_2823.y, x_2822.y, x_2823.w);
        let x_2826 : f32 = u_xlat58.y;
        u_xlat11.y = x_2826;
        let x_2828 : vec4<f32> = u_xlat11;
        let x_2829 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_2828 + x_2829);
        let x_2831 : vec4<f32> = u_xlat9;
        let x_2832 : vec4<f32> = u_xlat10;
        u_xlat9 = (x_2831 / x_2832);
        let x_2834 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_2834 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2836 : vec4<f32> = u_xlat11;
        let x_2837 : vec4<f32> = u_xlat8;
        u_xlat11 = (x_2836 / x_2837);
        let x_2839 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_2839 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2841 : vec4<f32> = u_xlat9;
        let x_2844 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_2841.w, x_2841.x, x_2841.y, x_2841.z) * vec4<f32>(x_2844.x, x_2844.x, x_2844.x, x_2844.x));
        let x_2847 : vec4<f32> = u_xlat11;
        let x_2850 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        u_xlat11 = (vec4<f32>(x_2847.x, x_2847.w, x_2847.y, x_2847.z) * vec4<f32>(x_2850.y, x_2850.y, x_2850.y, x_2850.y));
        let x_2853 : vec4<f32> = u_xlat9;
        let x_2854 : vec3<f32> = vec3<f32>(x_2853.y, x_2853.z, x_2853.w);
        let x_2855 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2854.x, x_2855.y, x_2854.y, x_2854.z);
        let x_2858 : f32 = u_xlat11.x;
        u_xlat12.y = x_2858;
        let x_2860 : vec3<f32> = u_xlat32;
        let x_2863 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_2866 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_2860.x, x_2860.y, x_2860.x, x_2860.y) * vec4<f32>(x_2863.x, x_2863.y, x_2863.x, x_2863.y)) + vec4<f32>(x_2866.x, x_2866.y, x_2866.z, x_2866.y));
        let x_2869 : vec3<f32> = u_xlat32;
        let x_2872 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_2875 : vec4<f32> = u_xlat12;
        let x_2877 : vec2<f32> = ((vec2<f32>(x_2869.x, x_2869.y) * vec2<f32>(x_2872.x, x_2872.y)) + vec2<f32>(x_2875.w, x_2875.y));
        let x_2878 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_2877.x, x_2877.y, x_2878.z, x_2878.w);
        let x_2881 : f32 = u_xlat12.y;
        u_xlat9.y = x_2881;
        let x_2884 : f32 = u_xlat11.z;
        u_xlat12.y = x_2884;
        let x_2886 : vec3<f32> = u_xlat32;
        let x_2889 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_2892 : vec4<f32> = u_xlat12;
        u_xlat15 = ((vec4<f32>(x_2886.x, x_2886.y, x_2886.x, x_2886.y) * vec4<f32>(x_2889.x, x_2889.y, x_2889.x, x_2889.y)) + vec4<f32>(x_2892.x, x_2892.y, x_2892.z, x_2892.y));
        let x_2896 : vec3<f32> = u_xlat32;
        let x_2899 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_2902 : vec4<f32> = u_xlat12;
        u_xlat64 = ((vec2<f32>(x_2896.x, x_2896.y) * vec2<f32>(x_2899.x, x_2899.y)) + vec2<f32>(x_2902.w, x_2902.y));
        let x_2906 : f32 = u_xlat12.y;
        u_xlat9.z = x_2906;
        let x_2908 : vec3<f32> = u_xlat32;
        let x_2911 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_2914 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_2908.x, x_2908.y, x_2908.x, x_2908.y) * vec4<f32>(x_2911.x, x_2911.y, x_2911.x, x_2911.y)) + vec4<f32>(x_2914.x, x_2914.y, x_2914.x, x_2914.z));
        let x_2918 : f32 = u_xlat11.w;
        u_xlat12.y = x_2918;
        let x_2920 : vec3<f32> = u_xlat32;
        let x_2923 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_2926 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_2920.x, x_2920.y, x_2920.x, x_2920.y) * vec4<f32>(x_2923.x, x_2923.y, x_2923.x, x_2923.y)) + vec4<f32>(x_2926.x, x_2926.y, x_2926.z, x_2926.y));
        let x_2929 : vec3<f32> = u_xlat32;
        let x_2932 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_2935 : vec4<f32> = u_xlat12;
        u_xlat34 = ((vec2<f32>(x_2929.x, x_2929.y) * vec2<f32>(x_2932.x, x_2932.y)) + vec2<f32>(x_2935.w, x_2935.y));
        let x_2939 : f32 = u_xlat12.y;
        u_xlat9.w = x_2939;
        let x_2941 : vec3<f32> = u_xlat32;
        let x_2944 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_2947 : vec4<f32> = u_xlat9;
        let x_2949 : vec2<f32> = ((vec2<f32>(x_2941.x, x_2941.y) * vec2<f32>(x_2944.x, x_2944.y)) + vec2<f32>(x_2947.x, x_2947.w));
        let x_2950 : vec4<f32> = u_xlat18;
        u_xlat18 = vec4<f32>(x_2949.x, x_2949.y, x_2950.z, x_2950.w);
        let x_2952 : vec4<f32> = u_xlat12;
        let x_2953 : vec3<f32> = vec3<f32>(x_2952.x, x_2952.z, x_2952.w);
        let x_2954 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2953.x, x_2954.y, x_2953.y, x_2953.z);
        let x_2956 : vec3<f32> = u_xlat32;
        let x_2959 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_2962 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_2956.x, x_2956.y, x_2956.x, x_2956.y) * vec4<f32>(x_2959.x, x_2959.y, x_2959.x, x_2959.y)) + vec4<f32>(x_2962.x, x_2962.y, x_2962.z, x_2962.y));
        let x_2966 : vec3<f32> = u_xlat32;
        let x_2969 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_2972 : vec4<f32> = u_xlat11;
        u_xlat61 = ((vec2<f32>(x_2966.x, x_2966.y) * vec2<f32>(x_2969.x, x_2969.y)) + vec2<f32>(x_2972.w, x_2972.y));
        let x_2976 : f32 = u_xlat9.x;
        u_xlat11.x = x_2976;
        let x_2978 : vec3<f32> = u_xlat32;
        let x_2981 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_2984 : vec4<f32> = u_xlat11;
        let x_2986 : vec2<f32> = ((vec2<f32>(x_2978.x, x_2978.y) * vec2<f32>(x_2981.x, x_2981.y)) + vec2<f32>(x_2984.x, x_2984.y));
        let x_2987 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_2986.x, x_2986.y, x_2987.z);
        let x_2989 : vec4<f32> = u_xlat8;
        let x_2991 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_2989.x, x_2989.x, x_2989.x, x_2989.x) * x_2991);
        let x_2993 : vec4<f32> = u_xlat8;
        let x_2995 : vec4<f32> = u_xlat10;
        u_xlat20 = (vec4<f32>(x_2993.y, x_2993.y, x_2993.y, x_2993.y) * x_2995);
        let x_2998 : vec4<f32> = u_xlat8;
        let x_3000 : vec4<f32> = u_xlat10;
        u_xlat21 = (vec4<f32>(x_2998.z, x_2998.z, x_2998.z, x_2998.z) * x_3000);
        let x_3002 : vec4<f32> = u_xlat8;
        let x_3004 : vec4<f32> = u_xlat10;
        u_xlat8 = (vec4<f32>(x_3002.w, x_3002.w, x_3002.w, x_3002.w) * x_3004);
        let x_3007 : vec4<f32> = u_xlat13;
        let x_3008 : vec2<f32> = vec2<f32>(x_3007.x, x_3007.y);
        let x_3010 : f32 = u_xlat6.z;
        txVec43 = vec3<f32>(x_3008.x, x_3008.y, x_3010);
        let x_3017 : vec3<f32> = txVec43;
        let x_3019 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3017.xy, x_3017.z);
        u_xlat82 = x_3019;
        let x_3021 : vec4<f32> = u_xlat13;
        let x_3022 : vec2<f32> = vec2<f32>(x_3021.z, x_3021.w);
        let x_3024 : f32 = u_xlat6.z;
        txVec44 = vec3<f32>(x_3022.x, x_3022.y, x_3024);
        let x_3031 : vec3<f32> = txVec44;
        let x_3033 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3031.xy, x_3031.z);
        u_xlat9.x = x_3033;
        let x_3036 : f32 = u_xlat9.x;
        let x_3038 : f32 = u_xlat19.y;
        u_xlat9.x = (x_3036 * x_3038);
        let x_3042 : f32 = u_xlat19.x;
        let x_3043 : f32 = u_xlat82;
        let x_3046 : f32 = u_xlat9.x;
        u_xlat82 = ((x_3042 * x_3043) + x_3046);
        let x_3049 : vec4<f32> = u_xlat14;
        let x_3050 : vec2<f32> = vec2<f32>(x_3049.x, x_3049.y);
        let x_3052 : f32 = u_xlat6.z;
        txVec45 = vec3<f32>(x_3050.x, x_3050.y, x_3052);
        let x_3059 : vec3<f32> = txVec45;
        let x_3061 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3059.xy, x_3059.z);
        u_xlat9.x = x_3061;
        let x_3064 : f32 = u_xlat19.z;
        let x_3066 : f32 = u_xlat9.x;
        let x_3068 : f32 = u_xlat82;
        u_xlat82 = ((x_3064 * x_3066) + x_3068);
        let x_3071 : vec4<f32> = u_xlat16;
        let x_3072 : vec2<f32> = vec2<f32>(x_3071.x, x_3071.y);
        let x_3074 : f32 = u_xlat6.z;
        txVec46 = vec3<f32>(x_3072.x, x_3072.y, x_3074);
        let x_3081 : vec3<f32> = txVec46;
        let x_3083 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3081.xy, x_3081.z);
        u_xlat9.x = x_3083;
        let x_3086 : f32 = u_xlat19.w;
        let x_3088 : f32 = u_xlat9.x;
        let x_3090 : f32 = u_xlat82;
        u_xlat82 = ((x_3086 * x_3088) + x_3090);
        let x_3093 : vec4<f32> = u_xlat15;
        let x_3094 : vec2<f32> = vec2<f32>(x_3093.x, x_3093.y);
        let x_3096 : f32 = u_xlat6.z;
        txVec47 = vec3<f32>(x_3094.x, x_3094.y, x_3096);
        let x_3103 : vec3<f32> = txVec47;
        let x_3105 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3103.xy, x_3103.z);
        u_xlat9.x = x_3105;
        let x_3108 : f32 = u_xlat20.x;
        let x_3110 : f32 = u_xlat9.x;
        let x_3112 : f32 = u_xlat82;
        u_xlat82 = ((x_3108 * x_3110) + x_3112);
        let x_3115 : vec4<f32> = u_xlat15;
        let x_3116 : vec2<f32> = vec2<f32>(x_3115.z, x_3115.w);
        let x_3118 : f32 = u_xlat6.z;
        txVec48 = vec3<f32>(x_3116.x, x_3116.y, x_3118);
        let x_3125 : vec3<f32> = txVec48;
        let x_3127 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3125.xy, x_3125.z);
        u_xlat9.x = x_3127;
        let x_3130 : f32 = u_xlat20.y;
        let x_3132 : f32 = u_xlat9.x;
        let x_3134 : f32 = u_xlat82;
        u_xlat82 = ((x_3130 * x_3132) + x_3134);
        let x_3137 : vec2<f32> = u_xlat64;
        let x_3139 : f32 = u_xlat6.z;
        txVec49 = vec3<f32>(x_3137.x, x_3137.y, x_3139);
        let x_3146 : vec3<f32> = txVec49;
        let x_3148 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3146.xy, x_3146.z);
        u_xlat9.x = x_3148;
        let x_3151 : f32 = u_xlat20.z;
        let x_3153 : f32 = u_xlat9.x;
        let x_3155 : f32 = u_xlat82;
        u_xlat82 = ((x_3151 * x_3153) + x_3155);
        let x_3158 : vec4<f32> = u_xlat16;
        let x_3159 : vec2<f32> = vec2<f32>(x_3158.z, x_3158.w);
        let x_3161 : f32 = u_xlat6.z;
        txVec50 = vec3<f32>(x_3159.x, x_3159.y, x_3161);
        let x_3168 : vec3<f32> = txVec50;
        let x_3170 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3168.xy, x_3168.z);
        u_xlat9.x = x_3170;
        let x_3173 : f32 = u_xlat20.w;
        let x_3175 : f32 = u_xlat9.x;
        let x_3177 : f32 = u_xlat82;
        u_xlat82 = ((x_3173 * x_3175) + x_3177);
        let x_3180 : vec4<f32> = u_xlat17;
        let x_3181 : vec2<f32> = vec2<f32>(x_3180.x, x_3180.y);
        let x_3183 : f32 = u_xlat6.z;
        txVec51 = vec3<f32>(x_3181.x, x_3181.y, x_3183);
        let x_3190 : vec3<f32> = txVec51;
        let x_3192 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3190.xy, x_3190.z);
        u_xlat9.x = x_3192;
        let x_3195 : f32 = u_xlat21.x;
        let x_3197 : f32 = u_xlat9.x;
        let x_3199 : f32 = u_xlat82;
        u_xlat82 = ((x_3195 * x_3197) + x_3199);
        let x_3202 : vec4<f32> = u_xlat17;
        let x_3203 : vec2<f32> = vec2<f32>(x_3202.z, x_3202.w);
        let x_3205 : f32 = u_xlat6.z;
        txVec52 = vec3<f32>(x_3203.x, x_3203.y, x_3205);
        let x_3212 : vec3<f32> = txVec52;
        let x_3214 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3212.xy, x_3212.z);
        u_xlat9.x = x_3214;
        let x_3217 : f32 = u_xlat21.y;
        let x_3219 : f32 = u_xlat9.x;
        let x_3221 : f32 = u_xlat82;
        u_xlat82 = ((x_3217 * x_3219) + x_3221);
        let x_3224 : vec2<f32> = u_xlat34;
        let x_3226 : f32 = u_xlat6.z;
        txVec53 = vec3<f32>(x_3224.x, x_3224.y, x_3226);
        let x_3233 : vec3<f32> = txVec53;
        let x_3235 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3233.xy, x_3233.z);
        u_xlat9.x = x_3235;
        let x_3238 : f32 = u_xlat21.z;
        let x_3240 : f32 = u_xlat9.x;
        let x_3242 : f32 = u_xlat82;
        u_xlat82 = ((x_3238 * x_3240) + x_3242);
        let x_3245 : vec4<f32> = u_xlat18;
        let x_3246 : vec2<f32> = vec2<f32>(x_3245.x, x_3245.y);
        let x_3248 : f32 = u_xlat6.z;
        txVec54 = vec3<f32>(x_3246.x, x_3246.y, x_3248);
        let x_3255 : vec3<f32> = txVec54;
        let x_3257 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3255.xy, x_3255.z);
        u_xlat9.x = x_3257;
        let x_3260 : f32 = u_xlat21.w;
        let x_3262 : f32 = u_xlat9.x;
        let x_3264 : f32 = u_xlat82;
        u_xlat82 = ((x_3260 * x_3262) + x_3264);
        let x_3267 : vec4<f32> = u_xlat12;
        let x_3268 : vec2<f32> = vec2<f32>(x_3267.x, x_3267.y);
        let x_3270 : f32 = u_xlat6.z;
        txVec55 = vec3<f32>(x_3268.x, x_3268.y, x_3270);
        let x_3277 : vec3<f32> = txVec55;
        let x_3279 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3277.xy, x_3277.z);
        u_xlat9.x = x_3279;
        let x_3282 : f32 = u_xlat8.x;
        let x_3284 : f32 = u_xlat9.x;
        let x_3286 : f32 = u_xlat82;
        u_xlat82 = ((x_3282 * x_3284) + x_3286);
        let x_3289 : vec4<f32> = u_xlat12;
        let x_3290 : vec2<f32> = vec2<f32>(x_3289.z, x_3289.w);
        let x_3292 : f32 = u_xlat6.z;
        txVec56 = vec3<f32>(x_3290.x, x_3290.y, x_3292);
        let x_3299 : vec3<f32> = txVec56;
        let x_3301 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3299.xy, x_3299.z);
        u_xlat8.x = x_3301;
        let x_3304 : f32 = u_xlat8.y;
        let x_3306 : f32 = u_xlat8.x;
        let x_3308 : f32 = u_xlat82;
        u_xlat82 = ((x_3304 * x_3306) + x_3308);
        let x_3311 : vec2<f32> = u_xlat61;
        let x_3313 : f32 = u_xlat6.z;
        txVec57 = vec3<f32>(x_3311.x, x_3311.y, x_3313);
        let x_3320 : vec3<f32> = txVec57;
        let x_3322 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3320.xy, x_3320.z);
        u_xlat8.x = x_3322;
        let x_3325 : f32 = u_xlat8.z;
        let x_3327 : f32 = u_xlat8.x;
        let x_3329 : f32 = u_xlat82;
        u_xlat82 = ((x_3325 * x_3327) + x_3329);
        let x_3332 : vec3<f32> = u_xlat32;
        let x_3333 : vec2<f32> = vec2<f32>(x_3332.x, x_3332.y);
        let x_3335 : f32 = u_xlat6.z;
        txVec58 = vec3<f32>(x_3333.x, x_3333.y, x_3335);
        let x_3342 : vec3<f32> = txVec58;
        let x_3344 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3342.xy, x_3342.z);
        u_xlat32.x = x_3344;
        let x_3347 : f32 = u_xlat8.w;
        let x_3349 : f32 = u_xlat32.x;
        let x_3351 : f32 = u_xlat82;
        u_xlat75 = ((x_3347 * x_3349) + x_3351);
      }
    }
  } else {
    let x_3355 : vec4<f32> = u_xlat6;
    let x_3356 : vec2<f32> = vec2<f32>(x_3355.x, x_3355.y);
    let x_3358 : f32 = u_xlat6.z;
    txVec59 = vec3<f32>(x_3356.x, x_3356.y, x_3358);
    let x_3365 : vec3<f32> = txVec59;
    let x_3367 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3365.xy, x_3365.z);
    u_xlat75 = x_3367;
  }
  let x_3368 : f32 = u_xlat75;
  let x_3370 : f32 = x_264.x_MainLightShadowParams.x;
  let x_3372 : f32 = u_xlat77;
  u_xlat75 = ((x_3368 * x_3370) + x_3372);
  let x_3374 : bool = u_xlatb79;
  let x_3375 : f32 = u_xlat75;
  u_xlat75 = select(x_3375, 1.0f, x_3374);
  let x_3377 : vec3<f32> = vs_INTERP8;
  let x_3379 : vec3<f32> = x_75.x_WorldSpaceCameraPos;
  let x_3381 : vec3<f32> = (x_3377 + -(x_3379));
  let x_3382 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_3381.x, x_3381.y, x_3381.z, x_3382.w);
  let x_3384 : vec4<f32> = u_xlat6;
  let x_3386 : vec4<f32> = u_xlat6;
  u_xlat77 = dot(vec3<f32>(x_3384.x, x_3384.y, x_3384.z), vec3<f32>(x_3386.x, x_3386.y, x_3386.z));
  let x_3389 : f32 = u_xlat77;
  let x_3391 : f32 = x_264.x_MainLightShadowParams.z;
  let x_3394 : f32 = x_264.x_MainLightShadowParams.w;
  u_xlat79 = ((x_3389 * x_3391) + x_3394);
  let x_3396 : f32 = u_xlat79;
  u_xlat79 = clamp(x_3396, 0.0f, 1.0f);
  let x_3398 : f32 = u_xlat75;
  u_xlat6.x = (-(x_3398) + 1.0f);
  let x_3402 : f32 = u_xlat79;
  let x_3404 : f32 = u_xlat6.x;
  let x_3406 : f32 = u_xlat75;
  u_xlat75 = ((x_3402 * x_3404) + x_3406);
  let x_3408 : vec3<f32> = u_xlat2;
  let x_3410 : vec4<f32> = u_xlat3;
  u_xlat79 = dot(-(x_3408), vec3<f32>(x_3410.x, x_3410.y, x_3410.z));
  let x_3413 : f32 = u_xlat79;
  let x_3414 : f32 = u_xlat79;
  u_xlat79 = (x_3413 + x_3414);
  let x_3416 : vec4<f32> = u_xlat3;
  let x_3418 : f32 = u_xlat79;
  let x_3422 : vec3<f32> = u_xlat2;
  let x_3424 : vec3<f32> = ((vec3<f32>(x_3416.x, x_3416.y, x_3416.z) * -(vec3<f32>(x_3418, x_3418, x_3418))) + -(x_3422));
  let x_3425 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_3424.x, x_3424.y, x_3424.z, x_3425.w);
  let x_3427 : vec4<f32> = u_xlat3;
  let x_3429 : vec3<f32> = u_xlat2;
  u_xlat79 = dot(vec3<f32>(x_3427.x, x_3427.y, x_3427.z), x_3429);
  let x_3431 : f32 = u_xlat79;
  u_xlat79 = clamp(x_3431, 0.0f, 1.0f);
  let x_3433 : f32 = u_xlat79;
  u_xlat79 = (-(x_3433) + 1.0f);
  let x_3436 : f32 = u_xlat79;
  let x_3437 : f32 = u_xlat79;
  u_xlat79 = (x_3436 * x_3437);
  let x_3439 : f32 = u_xlat79;
  let x_3440 : f32 = u_xlat79;
  u_xlat79 = (x_3439 * x_3440);
  let x_3443 : f32 = u_xlat51.x;
  u_xlat32.x = ((-(x_3443) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_3451 : f32 = u_xlat51.x;
  let x_3453 : f32 = u_xlat32.x;
  u_xlat51.x = (x_3451 * x_3453);
  let x_3457 : f32 = u_xlat51.x;
  u_xlat51.x = (x_3457 * 6.0f);
  let x_3469 : vec4<f32> = u_xlat6;
  let x_3472 : f32 = u_xlat51.x;
  let x_3473 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_3469.x, x_3469.y, x_3469.z), x_3472);
  u_xlat8 = x_3473;
  let x_3475 : f32 = u_xlat8.w;
  u_xlat51.x = (x_3475 + -1.0f);
  let x_3479 : f32 = x_148.unity_SpecCube0_HDR.w;
  let x_3481 : f32 = u_xlat51.x;
  u_xlat51.x = ((x_3479 * x_3481) + 1.0f);
  let x_3486 : f32 = u_xlat51.x;
  u_xlat51.x = max(x_3486, 0.0f);
  let x_3490 : f32 = u_xlat51.x;
  u_xlat51.x = log2(x_3490);
  let x_3494 : f32 = u_xlat51.x;
  let x_3496 : f32 = x_148.unity_SpecCube0_HDR.y;
  u_xlat51.x = (x_3494 * x_3496);
  let x_3500 : f32 = u_xlat51.x;
  u_xlat51.x = exp2(x_3500);
  let x_3504 : f32 = u_xlat51.x;
  let x_3506 : f32 = x_148.unity_SpecCube0_HDR.x;
  u_xlat51.x = (x_3504 * x_3506);
  let x_3509 : vec4<f32> = u_xlat8;
  let x_3511 : vec2<f32> = u_xlat51;
  let x_3513 : vec3<f32> = (vec3<f32>(x_3509.x, x_3509.y, x_3509.z) * vec3<f32>(x_3511.x, x_3511.x, x_3511.x));
  let x_3514 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_3513.x, x_3513.y, x_3513.z, x_3514.w);
  let x_3516 : f32 = u_xlat76;
  let x_3518 : f32 = u_xlat76;
  u_xlat51 = ((vec2<f32>(x_3516, x_3516) * vec2<f32>(x_3518, x_3518)) + vec2<f32>(-1.0f, 1.0f));
  let x_3524 : f32 = u_xlat51.y;
  u_xlat76 = (1.0f / x_3524);
  let x_3527 : f32 = u_xlat5.x;
  u_xlat5.x = (x_3527 + -0.03999999910593032837f);
  let x_3531 : f32 = u_xlat79;
  let x_3533 : f32 = u_xlat5.x;
  u_xlat79 = ((x_3531 * x_3533) + 0.03999999910593032837f);
  let x_3537 : f32 = u_xlat76;
  let x_3538 : f32 = u_xlat79;
  u_xlat76 = (x_3537 * x_3538);
  let x_3540 : f32 = u_xlat76;
  let x_3542 : vec4<f32> = u_xlat6;
  let x_3544 : vec3<f32> = (vec3<f32>(x_3540, x_3540, x_3540) * vec3<f32>(x_3542.x, x_3542.y, x_3542.z));
  let x_3545 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_3544.x, x_3544.y, x_3544.z, x_3545.w);
  let x_3547 : vec3<f32> = u_xlat30;
  let x_3548 : vec3<f32> = u_xlat4;
  let x_3550 : vec4<f32> = u_xlat6;
  let x_3552 : vec3<f32> = ((x_3547 * x_3548) + vec3<f32>(x_3550.x, x_3550.y, x_3550.z));
  let x_3553 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_3552.x, x_3552.y, x_3552.z, x_3553.w);
  let x_3555 : f32 = u_xlat75;
  let x_3557 : f32 = x_148.unity_LightData.z;
  u_xlat75 = (x_3555 * x_3557);
  let x_3559 : vec4<f32> = u_xlat3;
  let x_3562 : vec4<f32> = x_75.x_MainLightPosition;
  u_xlat76 = dot(vec3<f32>(x_3559.x, x_3559.y, x_3559.z), vec3<f32>(x_3562.x, x_3562.y, x_3562.z));
  let x_3565 : f32 = u_xlat76;
  u_xlat76 = clamp(x_3565, 0.0f, 1.0f);
  let x_3567 : f32 = u_xlat75;
  let x_3568 : f32 = u_xlat76;
  u_xlat75 = (x_3567 * x_3568);
  let x_3570 : f32 = u_xlat75;
  let x_3573 : vec4<f32> = x_75.x_MainLightColor;
  let x_3575 : vec3<f32> = (vec3<f32>(x_3570, x_3570, x_3570) * vec3<f32>(x_3573.x, x_3573.y, x_3573.z));
  let x_3576 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_3575.x, x_3575.y, x_3575.z, x_3576.w);
  let x_3578 : vec3<f32> = u_xlat2;
  let x_3580 : vec4<f32> = x_75.x_MainLightPosition;
  u_xlat32 = (x_3578 + vec3<f32>(x_3580.x, x_3580.y, x_3580.z));
  let x_3583 : vec3<f32> = u_xlat32;
  let x_3584 : vec3<f32> = u_xlat32;
  u_xlat75 = dot(x_3583, x_3584);
  let x_3586 : f32 = u_xlat75;
  u_xlat75 = max(x_3586, 1.17549435e-38f);
  let x_3589 : f32 = u_xlat75;
  u_xlat75 = inverseSqrt(x_3589);
  let x_3591 : f32 = u_xlat75;
  let x_3593 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_3591, x_3591, x_3591) * x_3593);
  let x_3595 : vec4<f32> = u_xlat3;
  let x_3597 : vec3<f32> = u_xlat32;
  u_xlat75 = dot(vec3<f32>(x_3595.x, x_3595.y, x_3595.z), x_3597);
  let x_3599 : f32 = u_xlat75;
  u_xlat75 = clamp(x_3599, 0.0f, 1.0f);
  let x_3602 : vec4<f32> = x_75.x_MainLightPosition;
  let x_3604 : vec3<f32> = u_xlat32;
  u_xlat76 = dot(vec3<f32>(x_3602.x, x_3602.y, x_3602.z), x_3604);
  let x_3606 : f32 = u_xlat76;
  u_xlat76 = clamp(x_3606, 0.0f, 1.0f);
  let x_3608 : f32 = u_xlat75;
  let x_3609 : f32 = u_xlat75;
  u_xlat75 = (x_3608 * x_3609);
  let x_3611 : f32 = u_xlat75;
  let x_3613 : f32 = u_xlat51.x;
  u_xlat75 = ((x_3611 * x_3613) + 1.00001001358032226562f);
  let x_3617 : f32 = u_xlat76;
  let x_3618 : f32 = u_xlat76;
  u_xlat76 = (x_3617 * x_3618);
  let x_3620 : f32 = u_xlat75;
  let x_3621 : f32 = u_xlat75;
  u_xlat75 = (x_3620 * x_3621);
  let x_3623 : f32 = u_xlat76;
  u_xlat76 = max(x_3623, 0.10000000149011611938f);
  let x_3626 : f32 = u_xlat75;
  let x_3627 : f32 = u_xlat76;
  u_xlat75 = (x_3626 * x_3627);
  let x_3629 : f32 = u_xlat81;
  let x_3630 : f32 = u_xlat75;
  u_xlat75 = (x_3629 * x_3630);
  let x_3632 : f32 = u_xlat78;
  let x_3633 : f32 = u_xlat75;
  u_xlat75 = (x_3632 / x_3633);
  let x_3635 : f32 = u_xlat75;
  let x_3639 : vec3<f32> = u_xlat4;
  u_xlat32 = ((vec3<f32>(x_3635, x_3635, x_3635) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_3639);
  let x_3641 : vec4<f32> = u_xlat6;
  let x_3643 : vec3<f32> = u_xlat32;
  let x_3644 : vec3<f32> = (vec3<f32>(x_3641.x, x_3641.y, x_3641.z) * x_3643);
  let x_3645 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_3644.x, x_3644.y, x_3644.z, x_3645.w);
  let x_3648 : f32 = x_75.x_AdditionalLightsCount.x;
  let x_3650 : f32 = x_148.unity_LightData.y;
  u_xlat75 = min(x_3648, x_3650);
  let x_3652 : f32 = u_xlat75;
  u_xlatu75 = bitcast<u32>(i32(x_3652));
  let x_3655 : f32 = u_xlat77;
  let x_3658 : f32 = x_264.x_AdditionalShadowFadeParams.x;
  let x_3661 : f32 = x_264.x_AdditionalShadowFadeParams.y;
  u_xlat76 = ((x_3655 * x_3658) + x_3661);
  let x_3663 : f32 = u_xlat76;
  u_xlat76 = clamp(x_3663, 0.0f, 1.0f);
  u_xlat32.x = 0.0f;
  u_xlat32.y = 0.0f;
  u_xlat32.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_3674 : u32 = u_xlatu_loop_1;
    let x_3675 : u32 = u_xlatu75;
    if ((x_3674 < x_3675)) {
    } else {
      break;
    }
    let x_3678 : u32 = u_xlatu_loop_1;
    u_xlatu79 = (x_3678 >> 2u);
    let x_3681 : u32 = u_xlatu_loop_1;
    u_xlati80 = bitcast<i32>((x_3681 & 3u));
    let x_3684 : u32 = u_xlatu79;
    let x_3687 : vec4<f32> = x_148.unity_LightIndices[bitcast<i32>(x_3684)];
    let x_3697 : i32 = u_xlati80;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_3702 : vec4<u32> = indexable[x_3697];
    u_xlat79 = dot(x_3687, bitcast<vec4<f32>>(x_3702));
    let x_3706 : f32 = u_xlat79;
    u_xlati79 = i32(x_3706);
    let x_3708 : vec3<f32> = vs_INTERP8;
    let x_3719 : i32 = u_xlati79;
    let x_3721 : vec4<f32> = x_3718.x_AdditionalLightsPosition[x_3719];
    let x_3724 : i32 = u_xlati79;
    let x_3726 : vec4<f32> = x_3718.x_AdditionalLightsPosition[x_3724];
    let x_3728 : vec3<f32> = ((-(x_3708) * vec3<f32>(x_3721.w, x_3721.w, x_3721.w)) + vec3<f32>(x_3726.x, x_3726.y, x_3726.z));
    let x_3729 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3728.x, x_3728.y, x_3728.z, x_3729.w);
    let x_3732 : vec4<f32> = u_xlat8;
    let x_3734 : vec4<f32> = u_xlat8;
    u_xlat80 = dot(vec3<f32>(x_3732.x, x_3732.y, x_3732.z), vec3<f32>(x_3734.x, x_3734.y, x_3734.z));
    let x_3737 : f32 = u_xlat80;
    u_xlat80 = max(x_3737, 0.00006103515625f);
    let x_3741 : f32 = u_xlat80;
    u_xlat83 = inverseSqrt(x_3741);
    let x_3743 : f32 = u_xlat83;
    let x_3745 : vec4<f32> = u_xlat8;
    let x_3747 : vec3<f32> = (vec3<f32>(x_3743, x_3743, x_3743) * vec3<f32>(x_3745.x, x_3745.y, x_3745.z));
    let x_3748 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3747.x, x_3747.y, x_3747.z, x_3748.w);
    let x_3751 : f32 = u_xlat80;
    u_xlat84 = (1.0f / x_3751);
    let x_3753 : f32 = u_xlat80;
    let x_3754 : i32 = u_xlati79;
    let x_3756 : f32 = x_3718.x_AdditionalLightsAttenuation[x_3754].x;
    u_xlat80 = (x_3753 * x_3756);
    let x_3758 : f32 = u_xlat80;
    let x_3760 : f32 = u_xlat80;
    u_xlat80 = ((-(x_3758) * x_3760) + 1.0f);
    let x_3763 : f32 = u_xlat80;
    u_xlat80 = max(x_3763, 0.0f);
    let x_3765 : f32 = u_xlat80;
    let x_3766 : f32 = u_xlat80;
    u_xlat80 = (x_3765 * x_3766);
    let x_3768 : f32 = u_xlat80;
    let x_3769 : f32 = u_xlat84;
    u_xlat80 = (x_3768 * x_3769);
    let x_3771 : i32 = u_xlati79;
    let x_3773 : vec4<f32> = x_3718.x_AdditionalLightsSpotDir[x_3771];
    let x_3775 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_3773.x, x_3773.y, x_3773.z), vec3<f32>(x_3775.x, x_3775.y, x_3775.z));
    let x_3778 : f32 = u_xlat84;
    let x_3779 : i32 = u_xlati79;
    let x_3781 : f32 = x_3718.x_AdditionalLightsAttenuation[x_3779].z;
    let x_3783 : i32 = u_xlati79;
    let x_3785 : f32 = x_3718.x_AdditionalLightsAttenuation[x_3783].w;
    u_xlat84 = ((x_3778 * x_3781) + x_3785);
    let x_3787 : f32 = u_xlat84;
    u_xlat84 = clamp(x_3787, 0.0f, 1.0f);
    let x_3789 : f32 = u_xlat84;
    let x_3790 : f32 = u_xlat84;
    u_xlat84 = (x_3789 * x_3790);
    let x_3792 : f32 = u_xlat80;
    let x_3793 : f32 = u_xlat84;
    u_xlat80 = (x_3792 * x_3793);
    let x_3797 : i32 = u_xlati79;
    let x_3799 : f32 = x_264.x_AdditionalShadowParams[x_3797].w;
    u_xlati84 = i32(x_3799);
    let x_3804 : i32 = u_xlati84;
    u_xlatb10.x = (x_3804 >= 0i);
    let x_3808 : bool = u_xlatb10.x;
    if (x_3808) {
      let x_3812 : i32 = u_xlati79;
      let x_3814 : f32 = x_264.x_AdditionalShadowParams[x_3812].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_3814, x_3814, x_3814, x_3814))));
      let x_3820 : bool = u_xlatb10.x;
      if (x_3820) {
        let x_3823 : vec4<f32> = u_xlat9;
        let x_3826 : vec4<f32> = u_xlat9;
        let x_3829 : vec4<bool> = (abs(vec4<f32>(x_3823.z, x_3823.z, x_3823.y, x_3823.z)) >= abs(vec4<f32>(x_3826.x, x_3826.y, x_3826.x, x_3826.x)));
        u_xlatb10 = vec3<bool>(x_3829.x, x_3829.y, x_3829.z);
        let x_3832 : bool = u_xlatb10.y;
        let x_3834 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_3832 & x_3834);
        let x_3838 : vec4<f32> = u_xlat9;
        let x_3841 : vec4<bool> = (-(vec4<f32>(x_3838.z, x_3838.y, x_3838.x, x_3838.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_3841.x, x_3841.y, x_3841.z);
        let x_3845 : bool = u_xlatb11.x;
        u_xlat35.x = select(4.0f, 5.0f, x_3845);
        let x_3850 : bool = u_xlatb11.y;
        u_xlat35.z = select(2.0f, 3.0f, x_3850);
        let x_3854 : bool = u_xlatb11.z;
        u_xlat11.x = select(0.0f, 1.0f, x_3854);
        let x_3858 : bool = u_xlatb10.z;
        if (x_3858) {
          let x_3863 : f32 = u_xlat35.z;
          x_3859 = x_3863;
        } else {
          let x_3866 : f32 = u_xlat11.x;
          x_3859 = x_3866;
        }
        let x_3867 : f32 = x_3859;
        u_xlat60.x = x_3867;
        let x_3870 : bool = u_xlatb10.x;
        if (x_3870) {
          let x_3875 : f32 = u_xlat35.x;
          x_3871 = x_3875;
        } else {
          let x_3878 : f32 = u_xlat60.x;
          x_3871 = x_3878;
        }
        let x_3879 : f32 = x_3871;
        u_xlat10.x = x_3879;
        let x_3881 : i32 = u_xlati79;
        let x_3883 : f32 = x_264.x_AdditionalShadowParams[x_3881].w;
        u_xlat35.x = trunc(x_3883);
        let x_3887 : f32 = u_xlat10.x;
        let x_3889 : f32 = u_xlat35.x;
        u_xlat10.x = (x_3887 + x_3889);
        let x_3893 : f32 = u_xlat10.x;
        u_xlati84 = i32(x_3893);
      }
      let x_3895 : i32 = u_xlati84;
      u_xlati84 = (x_3895 << bitcast<u32>(2i));
      let x_3897 : vec3<f32> = vs_INTERP8;
      let x_3900 : i32 = u_xlati84;
      let x_3903 : i32 = u_xlati84;
      let x_3907 : vec4<f32> = x_264.x_AdditionalLightsWorldToShadow[((x_3900 + 1i) / 4i)][((x_3903 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_3897.y, x_3897.y, x_3897.y, x_3897.y) * x_3907);
      let x_3909 : i32 = u_xlati84;
      let x_3911 : i32 = u_xlati84;
      let x_3914 : vec4<f32> = x_264.x_AdditionalLightsWorldToShadow[(x_3909 / 4i)][(x_3911 % 4i)];
      let x_3915 : vec3<f32> = vs_INTERP8;
      let x_3918 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_3914 * vec4<f32>(x_3915.x, x_3915.x, x_3915.x, x_3915.x)) + x_3918);
      let x_3920 : i32 = u_xlati84;
      let x_3923 : i32 = u_xlati84;
      let x_3927 : vec4<f32> = x_264.x_AdditionalLightsWorldToShadow[((x_3920 + 2i) / 4i)][((x_3923 + 2i) % 4i)];
      let x_3928 : vec3<f32> = vs_INTERP8;
      let x_3931 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_3927 * vec4<f32>(x_3928.z, x_3928.z, x_3928.z, x_3928.z)) + x_3931);
      let x_3933 : vec4<f32> = u_xlat10;
      let x_3934 : i32 = u_xlati84;
      let x_3937 : i32 = u_xlati84;
      let x_3941 : vec4<f32> = x_264.x_AdditionalLightsWorldToShadow[((x_3934 + 3i) / 4i)][((x_3937 + 3i) % 4i)];
      u_xlat10 = (x_3933 + x_3941);
      let x_3943 : vec4<f32> = u_xlat10;
      let x_3945 : vec4<f32> = u_xlat10;
      let x_3947 : vec3<f32> = (vec3<f32>(x_3943.x, x_3943.y, x_3943.z) / vec3<f32>(x_3945.w, x_3945.w, x_3945.w));
      let x_3948 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_3947.x, x_3947.y, x_3947.z, x_3948.w);
      let x_3951 : i32 = u_xlati79;
      let x_3953 : f32 = x_264.x_AdditionalShadowParams[x_3951].y;
      u_xlatb84 = (0.0f < x_3953);
      let x_3955 : bool = u_xlatb84;
      if (x_3955) {
        let x_3958 : i32 = u_xlati79;
        let x_3960 : f32 = x_264.x_AdditionalShadowParams[x_3958].y;
        u_xlatb84 = (1.0f == x_3960);
        let x_3962 : bool = u_xlatb84;
        if (x_3962) {
          let x_3965 : vec4<f32> = u_xlat10;
          let x_3969 : vec4<f32> = x_264.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_3965.x, x_3965.y, x_3965.x, x_3965.y) + x_3969);
          let x_3972 : vec4<f32> = u_xlat11;
          let x_3973 : vec2<f32> = vec2<f32>(x_3972.x, x_3972.y);
          let x_3975 : f32 = u_xlat10.z;
          txVec60 = vec3<f32>(x_3973.x, x_3973.y, x_3975);
          let x_3983 : vec3<f32> = txVec60;
          let x_3985 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3983.xy, x_3983.z);
          u_xlat12.x = x_3985;
          let x_3988 : vec4<f32> = u_xlat11;
          let x_3989 : vec2<f32> = vec2<f32>(x_3988.z, x_3988.w);
          let x_3991 : f32 = u_xlat10.z;
          txVec61 = vec3<f32>(x_3989.x, x_3989.y, x_3991);
          let x_3998 : vec3<f32> = txVec61;
          let x_4000 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3998.xy, x_3998.z);
          u_xlat12.y = x_4000;
          let x_4002 : vec4<f32> = u_xlat10;
          let x_4006 : vec4<f32> = x_264.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_4002.x, x_4002.y, x_4002.x, x_4002.y) + x_4006);
          let x_4009 : vec4<f32> = u_xlat11;
          let x_4010 : vec2<f32> = vec2<f32>(x_4009.x, x_4009.y);
          let x_4012 : f32 = u_xlat10.z;
          txVec62 = vec3<f32>(x_4010.x, x_4010.y, x_4012);
          let x_4019 : vec3<f32> = txVec62;
          let x_4021 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4019.xy, x_4019.z);
          u_xlat12.z = x_4021;
          let x_4024 : vec4<f32> = u_xlat11;
          let x_4025 : vec2<f32> = vec2<f32>(x_4024.z, x_4024.w);
          let x_4027 : f32 = u_xlat10.z;
          txVec63 = vec3<f32>(x_4025.x, x_4025.y, x_4027);
          let x_4034 : vec3<f32> = txVec63;
          let x_4036 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4034.xy, x_4034.z);
          u_xlat12.w = x_4036;
          let x_4038 : vec4<f32> = u_xlat12;
          u_xlat84 = dot(x_4038, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_4042 : i32 = u_xlati79;
          let x_4044 : f32 = x_264.x_AdditionalShadowParams[x_4042].y;
          u_xlatb85 = (2.0f == x_4044);
          let x_4046 : bool = u_xlatb85;
          if (x_4046) {
            let x_4049 : vec4<f32> = u_xlat10;
            let x_4053 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_4056 : vec2<f32> = ((vec2<f32>(x_4049.x, x_4049.y) * vec2<f32>(x_4053.z, x_4053.w)) + vec2<f32>(0.5f, 0.5f));
            let x_4057 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_4056.x, x_4056.y, x_4057.z, x_4057.w);
            let x_4059 : vec4<f32> = u_xlat11;
            let x_4061 : vec2<f32> = floor(vec2<f32>(x_4059.x, x_4059.y));
            let x_4062 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_4061.x, x_4061.y, x_4062.z, x_4062.w);
            let x_4064 : vec4<f32> = u_xlat10;
            let x_4067 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_4070 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_4064.x, x_4064.y) * vec2<f32>(x_4067.z, x_4067.w)) + -(vec2<f32>(x_4070.x, x_4070.y)));
            let x_4074 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_4074.x, x_4074.x, x_4074.y, x_4074.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_4077 : vec4<f32> = u_xlat12;
            let x_4079 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_4077.x, x_4077.x, x_4077.z, x_4077.z) * vec4<f32>(x_4079.x, x_4079.x, x_4079.z, x_4079.z));
            let x_4082 : vec4<f32> = u_xlat13;
            let x_4084 : vec2<f32> = (vec2<f32>(x_4082.y, x_4082.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_4085 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4084.x, x_4085.y, x_4084.y, x_4085.w);
            let x_4087 : vec4<f32> = u_xlat13;
            let x_4090 : vec2<f32> = u_xlat61;
            let x_4092 : vec2<f32> = ((vec2<f32>(x_4087.x, x_4087.z) * vec2<f32>(0.5f, 0.5f)) + -(x_4090));
            let x_4093 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4092.x, x_4092.y, x_4093.z, x_4093.w);
            let x_4096 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_4096) + vec2<f32>(1.0f, 1.0f));
            let x_4099 : vec2<f32> = u_xlat61;
            let x_4100 : vec2<f32> = min(x_4099, vec2<f32>(0.0f, 0.0f));
            let x_4101 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4100.x, x_4100.y, x_4101.z, x_4101.w);
            let x_4103 : vec4<f32> = u_xlat14;
            let x_4106 : vec4<f32> = u_xlat14;
            let x_4109 : vec2<f32> = u_xlat63;
            let x_4110 : vec2<f32> = ((-(vec2<f32>(x_4103.x, x_4103.y)) * vec2<f32>(x_4106.x, x_4106.y)) + x_4109);
            let x_4111 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4110.x, x_4110.y, x_4111.z, x_4111.w);
            let x_4113 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_4113, vec2<f32>(0.0f, 0.0f));
            let x_4115 : vec2<f32> = u_xlat61;
            let x_4117 : vec2<f32> = u_xlat61;
            let x_4119 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_4115) * x_4117) + vec2<f32>(x_4119.y, x_4119.w));
            let x_4122 : vec4<f32> = u_xlat14;
            let x_4124 : vec2<f32> = (vec2<f32>(x_4122.x, x_4122.y) + vec2<f32>(1.0f, 1.0f));
            let x_4125 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4124.x, x_4124.y, x_4125.z, x_4125.w);
            let x_4127 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_4127 + vec2<f32>(1.0f, 1.0f));
            let x_4129 : vec4<f32> = u_xlat13;
            let x_4131 : vec2<f32> = (vec2<f32>(x_4129.x, x_4129.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4132 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4131.x, x_4131.y, x_4132.z, x_4132.w);
            let x_4134 : vec2<f32> = u_xlat63;
            let x_4135 : vec2<f32> = (x_4134 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4136 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4135.x, x_4135.y, x_4136.z, x_4136.w);
            let x_4138 : vec4<f32> = u_xlat14;
            let x_4140 : vec2<f32> = (vec2<f32>(x_4138.x, x_4138.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4141 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4140.x, x_4140.y, x_4141.z, x_4141.w);
            let x_4143 : vec2<f32> = u_xlat61;
            let x_4144 : vec2<f32> = (x_4143 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4145 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4144.x, x_4144.y, x_4145.z, x_4145.w);
            let x_4147 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_4147.y, x_4147.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4151 : f32 = u_xlat14.x;
            u_xlat15.z = x_4151;
            let x_4154 : f32 = u_xlat61.x;
            u_xlat15.w = x_4154;
            let x_4157 : f32 = u_xlat16.x;
            u_xlat13.z = x_4157;
            let x_4160 : f32 = u_xlat12.x;
            u_xlat13.w = x_4160;
            let x_4162 : vec4<f32> = u_xlat13;
            let x_4164 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_4162.z, x_4162.w, x_4162.x, x_4162.z) + vec4<f32>(x_4164.z, x_4164.w, x_4164.x, x_4164.z));
            let x_4168 : f32 = u_xlat15.y;
            u_xlat14.z = x_4168;
            let x_4171 : f32 = u_xlat61.y;
            u_xlat14.w = x_4171;
            let x_4174 : f32 = u_xlat13.y;
            u_xlat16.z = x_4174;
            let x_4177 : f32 = u_xlat12.z;
            u_xlat16.w = x_4177;
            let x_4179 : vec4<f32> = u_xlat14;
            let x_4181 : vec4<f32> = u_xlat16;
            let x_4183 : vec3<f32> = (vec3<f32>(x_4179.z, x_4179.y, x_4179.w) + vec3<f32>(x_4181.z, x_4181.y, x_4181.w));
            let x_4184 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4183.x, x_4183.y, x_4183.z, x_4184.w);
            let x_4186 : vec4<f32> = u_xlat13;
            let x_4188 : vec4<f32> = u_xlat17;
            let x_4190 : vec3<f32> = (vec3<f32>(x_4186.x, x_4186.z, x_4186.w) / vec3<f32>(x_4188.z, x_4188.w, x_4188.y));
            let x_4191 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4190.x, x_4190.y, x_4190.z, x_4191.w);
            let x_4193 : vec4<f32> = u_xlat13;
            let x_4195 : vec3<f32> = (vec3<f32>(x_4193.x, x_4193.y, x_4193.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4196 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4195.x, x_4195.y, x_4195.z, x_4196.w);
            let x_4198 : vec4<f32> = u_xlat16;
            let x_4200 : vec4<f32> = u_xlat12;
            let x_4202 : vec3<f32> = (vec3<f32>(x_4198.z, x_4198.y, x_4198.w) / vec3<f32>(x_4200.x, x_4200.y, x_4200.z));
            let x_4203 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4202.x, x_4202.y, x_4202.z, x_4203.w);
            let x_4205 : vec4<f32> = u_xlat14;
            let x_4207 : vec3<f32> = (vec3<f32>(x_4205.x, x_4205.y, x_4205.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4208 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4207.x, x_4207.y, x_4207.z, x_4208.w);
            let x_4210 : vec4<f32> = u_xlat13;
            let x_4213 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_4215 : vec3<f32> = (vec3<f32>(x_4210.y, x_4210.x, x_4210.z) * vec3<f32>(x_4213.x, x_4213.x, x_4213.x));
            let x_4216 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4215.x, x_4215.y, x_4215.z, x_4216.w);
            let x_4218 : vec4<f32> = u_xlat14;
            let x_4221 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_4223 : vec3<f32> = (vec3<f32>(x_4218.x, x_4218.y, x_4218.z) * vec3<f32>(x_4221.y, x_4221.y, x_4221.y));
            let x_4224 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4223.x, x_4223.y, x_4223.z, x_4224.w);
            let x_4227 : f32 = u_xlat14.x;
            u_xlat13.w = x_4227;
            let x_4229 : vec4<f32> = u_xlat11;
            let x_4232 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_4235 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_4229.x, x_4229.y, x_4229.x, x_4229.y) * vec4<f32>(x_4232.x, x_4232.y, x_4232.x, x_4232.y)) + vec4<f32>(x_4235.y, x_4235.w, x_4235.x, x_4235.w));
            let x_4238 : vec4<f32> = u_xlat11;
            let x_4241 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_4244 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_4238.x, x_4238.y) * vec2<f32>(x_4241.x, x_4241.y)) + vec2<f32>(x_4244.z, x_4244.w));
            let x_4248 : f32 = u_xlat13.y;
            u_xlat14.w = x_4248;
            let x_4250 : vec4<f32> = u_xlat14;
            let x_4251 : vec2<f32> = vec2<f32>(x_4250.y, x_4250.z);
            let x_4252 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4252.x, x_4251.x, x_4252.z, x_4251.y);
            let x_4254 : vec4<f32> = u_xlat11;
            let x_4257 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_4260 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_4254.x, x_4254.y, x_4254.x, x_4254.y) * vec4<f32>(x_4257.x, x_4257.y, x_4257.x, x_4257.y)) + vec4<f32>(x_4260.x, x_4260.y, x_4260.z, x_4260.y));
            let x_4263 : vec4<f32> = u_xlat11;
            let x_4266 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_4269 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_4263.x, x_4263.y, x_4263.x, x_4263.y) * vec4<f32>(x_4266.x, x_4266.y, x_4266.x, x_4266.y)) + vec4<f32>(x_4269.w, x_4269.y, x_4269.w, x_4269.z));
            let x_4272 : vec4<f32> = u_xlat11;
            let x_4275 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_4278 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_4272.x, x_4272.y, x_4272.x, x_4272.y) * vec4<f32>(x_4275.x, x_4275.y, x_4275.x, x_4275.y)) + vec4<f32>(x_4278.x, x_4278.w, x_4278.z, x_4278.w));
            let x_4281 : vec4<f32> = u_xlat12;
            let x_4283 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_4281.x, x_4281.x, x_4281.x, x_4281.y) * vec4<f32>(x_4283.z, x_4283.w, x_4283.y, x_4283.z));
            let x_4286 : vec4<f32> = u_xlat12;
            let x_4288 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_4286.y, x_4286.y, x_4286.z, x_4286.z) * x_4288);
            let x_4292 : f32 = u_xlat12.z;
            let x_4294 : f32 = u_xlat17.y;
            u_xlat85 = (x_4292 * x_4294);
            let x_4297 : vec4<f32> = u_xlat15;
            let x_4298 : vec2<f32> = vec2<f32>(x_4297.x, x_4297.y);
            let x_4300 : f32 = u_xlat10.z;
            txVec64 = vec3<f32>(x_4298.x, x_4298.y, x_4300);
            let x_4307 : vec3<f32> = txVec64;
            let x_4309 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4307.xy, x_4307.z);
            u_xlat11.x = x_4309;
            let x_4312 : vec4<f32> = u_xlat15;
            let x_4313 : vec2<f32> = vec2<f32>(x_4312.z, x_4312.w);
            let x_4315 : f32 = u_xlat10.z;
            txVec65 = vec3<f32>(x_4313.x, x_4313.y, x_4315);
            let x_4323 : vec3<f32> = txVec65;
            let x_4325 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4323.xy, x_4323.z);
            u_xlat36 = x_4325;
            let x_4326 : f32 = u_xlat36;
            let x_4328 : f32 = u_xlat18.y;
            u_xlat36 = (x_4326 * x_4328);
            let x_4331 : f32 = u_xlat18.x;
            let x_4333 : f32 = u_xlat11.x;
            let x_4335 : f32 = u_xlat36;
            u_xlat11.x = ((x_4331 * x_4333) + x_4335);
            let x_4339 : vec2<f32> = u_xlat61;
            let x_4341 : f32 = u_xlat10.z;
            txVec66 = vec3<f32>(x_4339.x, x_4339.y, x_4341);
            let x_4348 : vec3<f32> = txVec66;
            let x_4350 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4348.xy, x_4348.z);
            u_xlat36 = x_4350;
            let x_4352 : f32 = u_xlat18.z;
            let x_4353 : f32 = u_xlat36;
            let x_4356 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_4352 * x_4353) + x_4356);
            let x_4360 : vec4<f32> = u_xlat14;
            let x_4361 : vec2<f32> = vec2<f32>(x_4360.x, x_4360.y);
            let x_4363 : f32 = u_xlat10.z;
            txVec67 = vec3<f32>(x_4361.x, x_4361.y, x_4363);
            let x_4370 : vec3<f32> = txVec67;
            let x_4372 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4370.xy, x_4370.z);
            u_xlat36 = x_4372;
            let x_4374 : f32 = u_xlat18.w;
            let x_4375 : f32 = u_xlat36;
            let x_4378 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_4374 * x_4375) + x_4378);
            let x_4382 : vec4<f32> = u_xlat16;
            let x_4383 : vec2<f32> = vec2<f32>(x_4382.x, x_4382.y);
            let x_4385 : f32 = u_xlat10.z;
            txVec68 = vec3<f32>(x_4383.x, x_4383.y, x_4385);
            let x_4392 : vec3<f32> = txVec68;
            let x_4394 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4392.xy, x_4392.z);
            u_xlat36 = x_4394;
            let x_4396 : f32 = u_xlat19.x;
            let x_4397 : f32 = u_xlat36;
            let x_4400 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_4396 * x_4397) + x_4400);
            let x_4404 : vec4<f32> = u_xlat16;
            let x_4405 : vec2<f32> = vec2<f32>(x_4404.z, x_4404.w);
            let x_4407 : f32 = u_xlat10.z;
            txVec69 = vec3<f32>(x_4405.x, x_4405.y, x_4407);
            let x_4414 : vec3<f32> = txVec69;
            let x_4416 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4414.xy, x_4414.z);
            u_xlat36 = x_4416;
            let x_4418 : f32 = u_xlat19.y;
            let x_4419 : f32 = u_xlat36;
            let x_4422 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_4418 * x_4419) + x_4422);
            let x_4426 : vec4<f32> = u_xlat14;
            let x_4427 : vec2<f32> = vec2<f32>(x_4426.z, x_4426.w);
            let x_4429 : f32 = u_xlat10.z;
            txVec70 = vec3<f32>(x_4427.x, x_4427.y, x_4429);
            let x_4436 : vec3<f32> = txVec70;
            let x_4438 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4436.xy, x_4436.z);
            u_xlat36 = x_4438;
            let x_4440 : f32 = u_xlat19.z;
            let x_4441 : f32 = u_xlat36;
            let x_4444 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_4440 * x_4441) + x_4444);
            let x_4448 : vec4<f32> = u_xlat13;
            let x_4449 : vec2<f32> = vec2<f32>(x_4448.x, x_4448.y);
            let x_4451 : f32 = u_xlat10.z;
            txVec71 = vec3<f32>(x_4449.x, x_4449.y, x_4451);
            let x_4458 : vec3<f32> = txVec71;
            let x_4460 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4458.xy, x_4458.z);
            u_xlat36 = x_4460;
            let x_4462 : f32 = u_xlat19.w;
            let x_4463 : f32 = u_xlat36;
            let x_4466 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_4462 * x_4463) + x_4466);
            let x_4470 : vec4<f32> = u_xlat13;
            let x_4471 : vec2<f32> = vec2<f32>(x_4470.z, x_4470.w);
            let x_4473 : f32 = u_xlat10.z;
            txVec72 = vec3<f32>(x_4471.x, x_4471.y, x_4473);
            let x_4480 : vec3<f32> = txVec72;
            let x_4482 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4480.xy, x_4480.z);
            u_xlat36 = x_4482;
            let x_4483 : f32 = u_xlat85;
            let x_4484 : f32 = u_xlat36;
            let x_4487 : f32 = u_xlat11.x;
            u_xlat84 = ((x_4483 * x_4484) + x_4487);
          } else {
            let x_4490 : vec4<f32> = u_xlat10;
            let x_4493 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_4496 : vec2<f32> = ((vec2<f32>(x_4490.x, x_4490.y) * vec2<f32>(x_4493.z, x_4493.w)) + vec2<f32>(0.5f, 0.5f));
            let x_4497 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_4496.x, x_4496.y, x_4497.z, x_4497.w);
            let x_4499 : vec4<f32> = u_xlat11;
            let x_4501 : vec2<f32> = floor(vec2<f32>(x_4499.x, x_4499.y));
            let x_4502 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_4501.x, x_4501.y, x_4502.z, x_4502.w);
            let x_4504 : vec4<f32> = u_xlat10;
            let x_4507 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_4510 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_4504.x, x_4504.y) * vec2<f32>(x_4507.z, x_4507.w)) + -(vec2<f32>(x_4510.x, x_4510.y)));
            let x_4514 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_4514.x, x_4514.x, x_4514.y, x_4514.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_4517 : vec4<f32> = u_xlat12;
            let x_4519 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_4517.x, x_4517.x, x_4517.z, x_4517.z) * vec4<f32>(x_4519.x, x_4519.x, x_4519.z, x_4519.z));
            let x_4522 : vec4<f32> = u_xlat13;
            let x_4524 : vec2<f32> = (vec2<f32>(x_4522.y, x_4522.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_4525 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4525.x, x_4524.x, x_4525.z, x_4524.y);
            let x_4527 : vec4<f32> = u_xlat13;
            let x_4530 : vec2<f32> = u_xlat61;
            let x_4532 : vec2<f32> = ((vec2<f32>(x_4527.x, x_4527.z) * vec2<f32>(0.5f, 0.5f)) + -(x_4530));
            let x_4533 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4532.x, x_4533.y, x_4532.y, x_4533.w);
            let x_4535 : vec2<f32> = u_xlat61;
            let x_4537 : vec2<f32> = (-(x_4535) + vec2<f32>(1.0f, 1.0f));
            let x_4538 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4537.x, x_4537.y, x_4538.z, x_4538.w);
            let x_4540 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_4540, vec2<f32>(0.0f, 0.0f));
            let x_4542 : vec2<f32> = u_xlat63;
            let x_4544 : vec2<f32> = u_xlat63;
            let x_4546 : vec4<f32> = u_xlat13;
            let x_4548 : vec2<f32> = ((-(x_4542) * x_4544) + vec2<f32>(x_4546.x, x_4546.y));
            let x_4549 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4548.x, x_4548.y, x_4549.z, x_4549.w);
            let x_4551 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_4551, vec2<f32>(0.0f, 0.0f));
            let x_4554 : vec2<f32> = u_xlat63;
            let x_4556 : vec2<f32> = u_xlat63;
            let x_4558 : vec4<f32> = u_xlat12;
            let x_4560 : vec2<f32> = ((-(x_4554) * x_4556) + vec2<f32>(x_4558.y, x_4558.w));
            let x_4561 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_4560.x, x_4561.y, x_4560.y);
            let x_4563 : vec4<f32> = u_xlat13;
            let x_4565 : vec2<f32> = (vec2<f32>(x_4563.x, x_4563.y) + vec2<f32>(2.0f, 2.0f));
            let x_4566 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4565.x, x_4565.y, x_4566.z, x_4566.w);
            let x_4568 : vec3<f32> = u_xlat37;
            let x_4570 : vec2<f32> = (vec2<f32>(x_4568.x, x_4568.z) + vec2<f32>(2.0f, 2.0f));
            let x_4571 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4571.x, x_4570.x, x_4571.z, x_4570.y);
            let x_4574 : f32 = u_xlat12.y;
            u_xlat15.z = (x_4574 * 0.08163200318813323975f);
            let x_4577 : vec4<f32> = u_xlat12;
            let x_4579 : vec3<f32> = (vec3<f32>(x_4577.z, x_4577.x, x_4577.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_4580 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4579.x, x_4579.y, x_4579.z, x_4580.w);
            let x_4582 : vec4<f32> = u_xlat13;
            let x_4584 : vec2<f32> = (vec2<f32>(x_4582.x, x_4582.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_4585 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4584.x, x_4584.y, x_4585.z, x_4585.w);
            let x_4588 : f32 = u_xlat16.y;
            u_xlat15.x = x_4588;
            let x_4590 : vec2<f32> = u_xlat61;
            let x_4593 : vec2<f32> = ((vec2<f32>(x_4590.x, x_4590.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4594 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4594.x, x_4593.x, x_4594.z, x_4593.y);
            let x_4596 : vec2<f32> = u_xlat61;
            let x_4599 : vec2<f32> = ((vec2<f32>(x_4596.x, x_4596.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4600 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4599.x, x_4600.y, x_4599.y, x_4600.w);
            let x_4603 : f32 = u_xlat12.x;
            u_xlat13.y = x_4603;
            let x_4606 : f32 = u_xlat14.y;
            u_xlat13.w = x_4606;
            let x_4608 : vec4<f32> = u_xlat13;
            let x_4609 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_4608 + x_4609);
            let x_4611 : vec2<f32> = u_xlat61;
            let x_4614 : vec2<f32> = ((vec2<f32>(x_4611.y, x_4611.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4615 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4615.x, x_4614.x, x_4615.z, x_4614.y);
            let x_4617 : vec2<f32> = u_xlat61;
            let x_4620 : vec2<f32> = ((vec2<f32>(x_4617.y, x_4617.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4621 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4620.x, x_4621.y, x_4620.y, x_4621.w);
            let x_4624 : f32 = u_xlat12.y;
            u_xlat14.y = x_4624;
            let x_4626 : vec4<f32> = u_xlat14;
            let x_4627 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_4626 + x_4627);
            let x_4629 : vec4<f32> = u_xlat13;
            let x_4630 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_4629 / x_4630);
            let x_4632 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_4632 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4634 : vec4<f32> = u_xlat14;
            let x_4635 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_4634 / x_4635);
            let x_4637 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_4637 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4639 : vec4<f32> = u_xlat13;
            let x_4642 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_4639.w, x_4639.x, x_4639.y, x_4639.z) * vec4<f32>(x_4642.x, x_4642.x, x_4642.x, x_4642.x));
            let x_4645 : vec4<f32> = u_xlat14;
            let x_4648 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_4645.x, x_4645.w, x_4645.y, x_4645.z) * vec4<f32>(x_4648.y, x_4648.y, x_4648.y, x_4648.y));
            let x_4651 : vec4<f32> = u_xlat13;
            let x_4652 : vec3<f32> = vec3<f32>(x_4651.y, x_4651.z, x_4651.w);
            let x_4653 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4652.x, x_4653.y, x_4652.y, x_4652.z);
            let x_4656 : f32 = u_xlat14.x;
            u_xlat16.y = x_4656;
            let x_4658 : vec4<f32> = u_xlat11;
            let x_4661 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_4664 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_4658.x, x_4658.y, x_4658.x, x_4658.y) * vec4<f32>(x_4661.x, x_4661.y, x_4661.x, x_4661.y)) + vec4<f32>(x_4664.x, x_4664.y, x_4664.z, x_4664.y));
            let x_4667 : vec4<f32> = u_xlat11;
            let x_4670 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_4673 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_4667.x, x_4667.y) * vec2<f32>(x_4670.x, x_4670.y)) + vec2<f32>(x_4673.w, x_4673.y));
            let x_4677 : f32 = u_xlat16.y;
            u_xlat13.y = x_4677;
            let x_4680 : f32 = u_xlat14.z;
            u_xlat16.y = x_4680;
            let x_4682 : vec4<f32> = u_xlat11;
            let x_4685 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_4688 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_4682.x, x_4682.y, x_4682.x, x_4682.y) * vec4<f32>(x_4685.x, x_4685.y, x_4685.x, x_4685.y)) + vec4<f32>(x_4688.x, x_4688.y, x_4688.z, x_4688.y));
            let x_4691 : vec4<f32> = u_xlat11;
            let x_4694 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_4697 : vec4<f32> = u_xlat16;
            let x_4699 : vec2<f32> = ((vec2<f32>(x_4691.x, x_4691.y) * vec2<f32>(x_4694.x, x_4694.y)) + vec2<f32>(x_4697.w, x_4697.y));
            let x_4700 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_4699.x, x_4699.y, x_4700.z, x_4700.w);
            let x_4703 : f32 = u_xlat16.y;
            u_xlat13.z = x_4703;
            let x_4705 : vec4<f32> = u_xlat11;
            let x_4708 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_4711 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_4705.x, x_4705.y, x_4705.x, x_4705.y) * vec4<f32>(x_4708.x, x_4708.y, x_4708.x, x_4708.y)) + vec4<f32>(x_4711.x, x_4711.y, x_4711.x, x_4711.z));
            let x_4715 : f32 = u_xlat14.w;
            u_xlat16.y = x_4715;
            let x_4717 : vec4<f32> = u_xlat11;
            let x_4720 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_4723 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_4717.x, x_4717.y, x_4717.x, x_4717.y) * vec4<f32>(x_4720.x, x_4720.y, x_4720.x, x_4720.y)) + vec4<f32>(x_4723.x, x_4723.y, x_4723.z, x_4723.y));
            let x_4727 : vec4<f32> = u_xlat11;
            let x_4730 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_4733 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_4727.x, x_4727.y) * vec2<f32>(x_4730.x, x_4730.y)) + vec2<f32>(x_4733.w, x_4733.y));
            let x_4737 : f32 = u_xlat16.y;
            u_xlat13.w = x_4737;
            let x_4740 : vec4<f32> = u_xlat11;
            let x_4743 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_4746 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_4740.x, x_4740.y) * vec2<f32>(x_4743.x, x_4743.y)) + vec2<f32>(x_4746.x, x_4746.w));
            let x_4749 : vec4<f32> = u_xlat16;
            let x_4750 : vec3<f32> = vec3<f32>(x_4749.x, x_4749.z, x_4749.w);
            let x_4751 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4750.x, x_4751.y, x_4750.y, x_4750.z);
            let x_4753 : vec4<f32> = u_xlat11;
            let x_4756 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_4759 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_4753.x, x_4753.y, x_4753.x, x_4753.y) * vec4<f32>(x_4756.x, x_4756.y, x_4756.x, x_4756.y)) + vec4<f32>(x_4759.x, x_4759.y, x_4759.z, x_4759.y));
            let x_4762 : vec4<f32> = u_xlat11;
            let x_4765 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_4768 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_4762.x, x_4762.y) * vec2<f32>(x_4765.x, x_4765.y)) + vec2<f32>(x_4768.w, x_4768.y));
            let x_4772 : f32 = u_xlat13.x;
            u_xlat14.x = x_4772;
            let x_4774 : vec4<f32> = u_xlat11;
            let x_4777 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_4780 : vec4<f32> = u_xlat14;
            let x_4782 : vec2<f32> = ((vec2<f32>(x_4774.x, x_4774.y) * vec2<f32>(x_4777.x, x_4777.y)) + vec2<f32>(x_4780.x, x_4780.y));
            let x_4783 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_4782.x, x_4782.y, x_4783.z, x_4783.w);
            let x_4786 : vec4<f32> = u_xlat12;
            let x_4788 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_4786.x, x_4786.x, x_4786.x, x_4786.x) * x_4788);
            let x_4791 : vec4<f32> = u_xlat12;
            let x_4793 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_4791.y, x_4791.y, x_4791.y, x_4791.y) * x_4793);
            let x_4796 : vec4<f32> = u_xlat12;
            let x_4798 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_4796.z, x_4796.z, x_4796.z, x_4796.z) * x_4798);
            let x_4800 : vec4<f32> = u_xlat12;
            let x_4802 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_4800.w, x_4800.w, x_4800.w, x_4800.w) * x_4802);
            let x_4805 : vec4<f32> = u_xlat17;
            let x_4806 : vec2<f32> = vec2<f32>(x_4805.x, x_4805.y);
            let x_4808 : f32 = u_xlat10.z;
            txVec73 = vec3<f32>(x_4806.x, x_4806.y, x_4808);
            let x_4815 : vec3<f32> = txVec73;
            let x_4817 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4815.xy, x_4815.z);
            u_xlat85 = x_4817;
            let x_4819 : vec4<f32> = u_xlat17;
            let x_4820 : vec2<f32> = vec2<f32>(x_4819.z, x_4819.w);
            let x_4822 : f32 = u_xlat10.z;
            txVec74 = vec3<f32>(x_4820.x, x_4820.y, x_4822);
            let x_4829 : vec3<f32> = txVec74;
            let x_4831 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4829.xy, x_4829.z);
            u_xlat13.x = x_4831;
            let x_4834 : f32 = u_xlat13.x;
            let x_4836 : f32 = u_xlat22.y;
            u_xlat13.x = (x_4834 * x_4836);
            let x_4840 : f32 = u_xlat22.x;
            let x_4841 : f32 = u_xlat85;
            let x_4844 : f32 = u_xlat13.x;
            u_xlat85 = ((x_4840 * x_4841) + x_4844);
            let x_4847 : vec2<f32> = u_xlat61;
            let x_4849 : f32 = u_xlat10.z;
            txVec75 = vec3<f32>(x_4847.x, x_4847.y, x_4849);
            let x_4856 : vec3<f32> = txVec75;
            let x_4858 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4856.xy, x_4856.z);
            u_xlat61.x = x_4858;
            let x_4861 : f32 = u_xlat22.z;
            let x_4863 : f32 = u_xlat61.x;
            let x_4865 : f32 = u_xlat85;
            u_xlat85 = ((x_4861 * x_4863) + x_4865);
            let x_4868 : vec4<f32> = u_xlat20;
            let x_4869 : vec2<f32> = vec2<f32>(x_4868.x, x_4868.y);
            let x_4871 : f32 = u_xlat10.z;
            txVec76 = vec3<f32>(x_4869.x, x_4869.y, x_4871);
            let x_4878 : vec3<f32> = txVec76;
            let x_4880 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4878.xy, x_4878.z);
            u_xlat61.x = x_4880;
            let x_4883 : f32 = u_xlat22.w;
            let x_4885 : f32 = u_xlat61.x;
            let x_4887 : f32 = u_xlat85;
            u_xlat85 = ((x_4883 * x_4885) + x_4887);
            let x_4890 : vec4<f32> = u_xlat18;
            let x_4891 : vec2<f32> = vec2<f32>(x_4890.x, x_4890.y);
            let x_4893 : f32 = u_xlat10.z;
            txVec77 = vec3<f32>(x_4891.x, x_4891.y, x_4893);
            let x_4900 : vec3<f32> = txVec77;
            let x_4902 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4900.xy, x_4900.z);
            u_xlat61.x = x_4902;
            let x_4905 : f32 = u_xlat23.x;
            let x_4907 : f32 = u_xlat61.x;
            let x_4909 : f32 = u_xlat85;
            u_xlat85 = ((x_4905 * x_4907) + x_4909);
            let x_4912 : vec4<f32> = u_xlat18;
            let x_4913 : vec2<f32> = vec2<f32>(x_4912.z, x_4912.w);
            let x_4915 : f32 = u_xlat10.z;
            txVec78 = vec3<f32>(x_4913.x, x_4913.y, x_4915);
            let x_4922 : vec3<f32> = txVec78;
            let x_4924 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4922.xy, x_4922.z);
            u_xlat61.x = x_4924;
            let x_4927 : f32 = u_xlat23.y;
            let x_4929 : f32 = u_xlat61.x;
            let x_4931 : f32 = u_xlat85;
            u_xlat85 = ((x_4927 * x_4929) + x_4931);
            let x_4934 : vec4<f32> = u_xlat19;
            let x_4935 : vec2<f32> = vec2<f32>(x_4934.x, x_4934.y);
            let x_4937 : f32 = u_xlat10.z;
            txVec79 = vec3<f32>(x_4935.x, x_4935.y, x_4937);
            let x_4944 : vec3<f32> = txVec79;
            let x_4946 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4944.xy, x_4944.z);
            u_xlat61.x = x_4946;
            let x_4949 : f32 = u_xlat23.z;
            let x_4951 : f32 = u_xlat61.x;
            let x_4953 : f32 = u_xlat85;
            u_xlat85 = ((x_4949 * x_4951) + x_4953);
            let x_4956 : vec4<f32> = u_xlat20;
            let x_4957 : vec2<f32> = vec2<f32>(x_4956.z, x_4956.w);
            let x_4959 : f32 = u_xlat10.z;
            txVec80 = vec3<f32>(x_4957.x, x_4957.y, x_4959);
            let x_4966 : vec3<f32> = txVec80;
            let x_4968 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4966.xy, x_4966.z);
            u_xlat61.x = x_4968;
            let x_4971 : f32 = u_xlat23.w;
            let x_4973 : f32 = u_xlat61.x;
            let x_4975 : f32 = u_xlat85;
            u_xlat85 = ((x_4971 * x_4973) + x_4975);
            let x_4978 : vec4<f32> = u_xlat21;
            let x_4979 : vec2<f32> = vec2<f32>(x_4978.x, x_4978.y);
            let x_4981 : f32 = u_xlat10.z;
            txVec81 = vec3<f32>(x_4979.x, x_4979.y, x_4981);
            let x_4988 : vec3<f32> = txVec81;
            let x_4990 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4988.xy, x_4988.z);
            u_xlat61.x = x_4990;
            let x_4993 : f32 = u_xlat24.x;
            let x_4995 : f32 = u_xlat61.x;
            let x_4997 : f32 = u_xlat85;
            u_xlat85 = ((x_4993 * x_4995) + x_4997);
            let x_5000 : vec4<f32> = u_xlat21;
            let x_5001 : vec2<f32> = vec2<f32>(x_5000.z, x_5000.w);
            let x_5003 : f32 = u_xlat10.z;
            txVec82 = vec3<f32>(x_5001.x, x_5001.y, x_5003);
            let x_5010 : vec3<f32> = txVec82;
            let x_5012 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5010.xy, x_5010.z);
            u_xlat61.x = x_5012;
            let x_5015 : f32 = u_xlat24.y;
            let x_5017 : f32 = u_xlat61.x;
            let x_5019 : f32 = u_xlat85;
            u_xlat85 = ((x_5015 * x_5017) + x_5019);
            let x_5022 : vec2<f32> = u_xlat38;
            let x_5024 : f32 = u_xlat10.z;
            txVec83 = vec3<f32>(x_5022.x, x_5022.y, x_5024);
            let x_5031 : vec3<f32> = txVec83;
            let x_5033 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5031.xy, x_5031.z);
            u_xlat61.x = x_5033;
            let x_5036 : f32 = u_xlat24.z;
            let x_5038 : f32 = u_xlat61.x;
            let x_5040 : f32 = u_xlat85;
            u_xlat85 = ((x_5036 * x_5038) + x_5040);
            let x_5043 : vec2<f32> = u_xlat69;
            let x_5045 : f32 = u_xlat10.z;
            txVec84 = vec3<f32>(x_5043.x, x_5043.y, x_5045);
            let x_5052 : vec3<f32> = txVec84;
            let x_5054 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5052.xy, x_5052.z);
            u_xlat61.x = x_5054;
            let x_5057 : f32 = u_xlat24.w;
            let x_5059 : f32 = u_xlat61.x;
            let x_5061 : f32 = u_xlat85;
            u_xlat85 = ((x_5057 * x_5059) + x_5061);
            let x_5064 : vec4<f32> = u_xlat16;
            let x_5065 : vec2<f32> = vec2<f32>(x_5064.x, x_5064.y);
            let x_5067 : f32 = u_xlat10.z;
            txVec85 = vec3<f32>(x_5065.x, x_5065.y, x_5067);
            let x_5074 : vec3<f32> = txVec85;
            let x_5076 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5074.xy, x_5074.z);
            u_xlat61.x = x_5076;
            let x_5079 : f32 = u_xlat12.x;
            let x_5081 : f32 = u_xlat61.x;
            let x_5083 : f32 = u_xlat85;
            u_xlat85 = ((x_5079 * x_5081) + x_5083);
            let x_5086 : vec4<f32> = u_xlat16;
            let x_5087 : vec2<f32> = vec2<f32>(x_5086.z, x_5086.w);
            let x_5089 : f32 = u_xlat10.z;
            txVec86 = vec3<f32>(x_5087.x, x_5087.y, x_5089);
            let x_5096 : vec3<f32> = txVec86;
            let x_5098 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5096.xy, x_5096.z);
            u_xlat61.x = x_5098;
            let x_5101 : f32 = u_xlat12.y;
            let x_5103 : f32 = u_xlat61.x;
            let x_5105 : f32 = u_xlat85;
            u_xlat85 = ((x_5101 * x_5103) + x_5105);
            let x_5108 : vec2<f32> = u_xlat64;
            let x_5110 : f32 = u_xlat10.z;
            txVec87 = vec3<f32>(x_5108.x, x_5108.y, x_5110);
            let x_5117 : vec3<f32> = txVec87;
            let x_5119 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5117.xy, x_5117.z);
            u_xlat61.x = x_5119;
            let x_5122 : f32 = u_xlat12.z;
            let x_5124 : f32 = u_xlat61.x;
            let x_5126 : f32 = u_xlat85;
            u_xlat85 = ((x_5122 * x_5124) + x_5126);
            let x_5129 : vec4<f32> = u_xlat11;
            let x_5130 : vec2<f32> = vec2<f32>(x_5129.x, x_5129.y);
            let x_5132 : f32 = u_xlat10.z;
            txVec88 = vec3<f32>(x_5130.x, x_5130.y, x_5132);
            let x_5139 : vec3<f32> = txVec88;
            let x_5141 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5139.xy, x_5139.z);
            u_xlat11.x = x_5141;
            let x_5144 : f32 = u_xlat12.w;
            let x_5146 : f32 = u_xlat11.x;
            let x_5148 : f32 = u_xlat85;
            u_xlat84 = ((x_5144 * x_5146) + x_5148);
          }
        }
      } else {
        let x_5152 : vec4<f32> = u_xlat10;
        let x_5153 : vec2<f32> = vec2<f32>(x_5152.x, x_5152.y);
        let x_5155 : f32 = u_xlat10.z;
        txVec89 = vec3<f32>(x_5153.x, x_5153.y, x_5155);
        let x_5162 : vec3<f32> = txVec89;
        let x_5164 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5162.xy, x_5162.z);
        u_xlat84 = x_5164;
      }
      let x_5165 : i32 = u_xlati79;
      let x_5167 : f32 = x_264.x_AdditionalShadowParams[x_5165].x;
      u_xlat10.x = (1.0f + -(x_5167));
      let x_5171 : f32 = u_xlat84;
      let x_5172 : i32 = u_xlati79;
      let x_5174 : f32 = x_264.x_AdditionalShadowParams[x_5172].x;
      let x_5177 : f32 = u_xlat10.x;
      u_xlat84 = ((x_5171 * x_5174) + x_5177);
      let x_5180 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_5180);
      let x_5185 : f32 = u_xlat10.z;
      u_xlatb35 = (x_5185 >= 1.0f);
      let x_5187 : bool = u_xlatb35;
      let x_5189 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_5187 | x_5189);
      let x_5193 : bool = u_xlatb10.x;
      let x_5194 : f32 = u_xlat84;
      u_xlat84 = select(x_5194, 1.0f, x_5193);
    } else {
      u_xlat84 = 1.0f;
    }
    let x_5197 : f32 = u_xlat84;
    u_xlat10.x = (-(x_5197) + 1.0f);
    let x_5201 : f32 = u_xlat76;
    let x_5203 : f32 = u_xlat10.x;
    let x_5205 : f32 = u_xlat84;
    u_xlat84 = ((x_5201 * x_5203) + x_5205);
    let x_5207 : f32 = u_xlat80;
    let x_5208 : f32 = u_xlat84;
    u_xlat80 = (x_5207 * x_5208);
    let x_5210 : vec4<f32> = u_xlat3;
    let x_5212 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_5210.x, x_5210.y, x_5210.z), vec3<f32>(x_5212.x, x_5212.y, x_5212.z));
    let x_5215 : f32 = u_xlat84;
    u_xlat84 = clamp(x_5215, 0.0f, 1.0f);
    let x_5217 : f32 = u_xlat80;
    let x_5218 : f32 = u_xlat84;
    u_xlat80 = (x_5217 * x_5218);
    let x_5220 : f32 = u_xlat80;
    let x_5222 : i32 = u_xlati79;
    let x_5224 : vec4<f32> = x_3718.x_AdditionalLightsColor[x_5222];
    let x_5226 : vec3<f32> = (vec3<f32>(x_5220, x_5220, x_5220) * vec3<f32>(x_5224.x, x_5224.y, x_5224.z));
    let x_5227 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_5226.x, x_5226.y, x_5226.z, x_5227.w);
    let x_5229 : vec4<f32> = u_xlat8;
    let x_5231 : f32 = u_xlat83;
    let x_5234 : vec3<f32> = u_xlat2;
    let x_5235 : vec3<f32> = ((vec3<f32>(x_5229.x, x_5229.y, x_5229.z) * vec3<f32>(x_5231, x_5231, x_5231)) + x_5234);
    let x_5236 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_5235.x, x_5235.y, x_5235.z, x_5236.w);
    let x_5238 : vec4<f32> = u_xlat8;
    let x_5240 : vec4<f32> = u_xlat8;
    u_xlat79 = dot(vec3<f32>(x_5238.x, x_5238.y, x_5238.z), vec3<f32>(x_5240.x, x_5240.y, x_5240.z));
    let x_5243 : f32 = u_xlat79;
    u_xlat79 = max(x_5243, 1.17549435e-38f);
    let x_5245 : f32 = u_xlat79;
    u_xlat79 = inverseSqrt(x_5245);
    let x_5247 : f32 = u_xlat79;
    let x_5249 : vec4<f32> = u_xlat8;
    let x_5251 : vec3<f32> = (vec3<f32>(x_5247, x_5247, x_5247) * vec3<f32>(x_5249.x, x_5249.y, x_5249.z));
    let x_5252 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_5251.x, x_5251.y, x_5251.z, x_5252.w);
    let x_5254 : vec4<f32> = u_xlat3;
    let x_5256 : vec4<f32> = u_xlat8;
    u_xlat79 = dot(vec3<f32>(x_5254.x, x_5254.y, x_5254.z), vec3<f32>(x_5256.x, x_5256.y, x_5256.z));
    let x_5259 : f32 = u_xlat79;
    u_xlat79 = clamp(x_5259, 0.0f, 1.0f);
    let x_5261 : vec4<f32> = u_xlat9;
    let x_5263 : vec4<f32> = u_xlat8;
    u_xlat80 = dot(vec3<f32>(x_5261.x, x_5261.y, x_5261.z), vec3<f32>(x_5263.x, x_5263.y, x_5263.z));
    let x_5266 : f32 = u_xlat80;
    u_xlat80 = clamp(x_5266, 0.0f, 1.0f);
    let x_5268 : f32 = u_xlat79;
    let x_5269 : f32 = u_xlat79;
    u_xlat79 = (x_5268 * x_5269);
    let x_5271 : f32 = u_xlat79;
    let x_5273 : f32 = u_xlat51.x;
    u_xlat79 = ((x_5271 * x_5273) + 1.00001001358032226562f);
    let x_5276 : f32 = u_xlat80;
    let x_5277 : f32 = u_xlat80;
    u_xlat80 = (x_5276 * x_5277);
    let x_5279 : f32 = u_xlat79;
    let x_5280 : f32 = u_xlat79;
    u_xlat79 = (x_5279 * x_5280);
    let x_5282 : f32 = u_xlat80;
    u_xlat80 = max(x_5282, 0.10000000149011611938f);
    let x_5284 : f32 = u_xlat79;
    let x_5285 : f32 = u_xlat80;
    u_xlat79 = (x_5284 * x_5285);
    let x_5287 : f32 = u_xlat81;
    let x_5288 : f32 = u_xlat79;
    u_xlat79 = (x_5287 * x_5288);
    let x_5290 : f32 = u_xlat78;
    let x_5291 : f32 = u_xlat79;
    u_xlat79 = (x_5290 / x_5291);
    let x_5293 : f32 = u_xlat79;
    let x_5296 : vec3<f32> = u_xlat4;
    let x_5297 : vec3<f32> = ((vec3<f32>(x_5293, x_5293, x_5293) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_5296);
    let x_5298 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_5297.x, x_5297.y, x_5297.z, x_5298.w);
    let x_5300 : vec4<f32> = u_xlat8;
    let x_5302 : vec4<f32> = u_xlat10;
    let x_5305 : vec3<f32> = u_xlat32;
    u_xlat32 = ((vec3<f32>(x_5300.x, x_5300.y, x_5300.z) * vec3<f32>(x_5302.x, x_5302.y, x_5302.z)) + x_5305);

    continuing {
      let x_5307 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_5307 + bitcast<u32>(1i));
    }
  }
  let x_5309 : vec4<f32> = u_xlat5;
  let x_5311 : vec4<f32> = u_xlat7;
  let x_5314 : vec4<f32> = u_xlat6;
  u_xlat2 = ((vec3<f32>(x_5309.x, x_5309.y, x_5309.z) * vec3<f32>(x_5311.x, x_5311.x, x_5311.x)) + vec3<f32>(x_5314.x, x_5314.y, x_5314.z));
  let x_5317 : vec3<f32> = u_xlat32;
  let x_5318 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_5317 + x_5318);
  let x_5322 : vec4<f32> = vs_INTERP6;
  let x_5324 : vec3<f32> = u_xlat0;
  let x_5326 : vec3<f32> = u_xlat2;
  let x_5327 : vec3<f32> = ((vec3<f32>(x_5322.w, x_5322.w, x_5322.w) * x_5324) + x_5326);
  let x_5328 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_5327.x, x_5327.y, x_5327.z, x_5328.w);
  let x_5330 : bool = u_xlatb26;
  if (x_5330) {
    let x_5335 : f32 = u_xlat1.x;
    x_5331 = x_5335;
  } else {
    x_5331 = 1.0f;
  }
  let x_5337 : f32 = x_5331;
  SV_Target0.w = x_5337;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(5) vs_INTERP9_param : vec3<f32>, @location(4) vs_INTERP8_param : vec3<f32>, @location(2) vs_INTERP5_param : vec4<f32>, @location(3) vs_INTERP6_param : vec4<f32>, @location(1) vs_INTERP4_param : vec4<f32>, @location(0) vs_INTERP0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP9 = vs_INTERP9_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP6 = vs_INTERP6_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP0 = vs_INTERP0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


