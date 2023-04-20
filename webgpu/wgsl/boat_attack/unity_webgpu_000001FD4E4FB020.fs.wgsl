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

@group(0) @binding(3) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(7) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP5 : vec4<f32>;

var<private> u_xlat4 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_204 : UnityPerMaterial;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(4) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(8) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat30 : vec3<f32>;

var<private> vs_INTERP6 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_265 : LightShadows;

var<private> u_xlatb76 : bool;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb77 : bool;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

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

var<private> u_xlatb6 : bool;

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

var<private> u_xlat78 : f32;

var<private> vs_INTERP3 : vec4<f32>;

var<private> u_xlatb31 : bool;

var<private> u_xlat31 : vec3<f32>;

var<private> u_xlat56 : f32;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat32 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu75 : u32;

var<private> u_xlatu79 : u32;

var<private> u_xlati82 : i32;

var<private> u_xlati79 : i32;

@group(1) @binding(1) var<uniform> x_3603 : AdditionalLights;

var<private> u_xlat82 : f32;

var<private> u_xlat83 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlati84 : i32;

var<private> u_xlatb10 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat35 : vec3<f32>;

var<private> u_xlatb84 : bool;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb85 : bool;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat85 : f32;

var<private> u_xlat36 : f32;

var<private> u_xlat37 : vec3<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat38 : vec2<f32>;

var<private> u_xlat69 : vec2<f32>;

var<private> u_xlat64 : vec2<f32>;

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
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_3746 : f32;
  var x_3758 : f32;
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
  var x_5223 : f32;
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
  u_xlatb75 = (0.0f < x_304);
  let x_306 : bool = u_xlatb75;
  if (x_306) {
    let x_311 : f32 = x_265.x_MainLightShadowParams.y;
    u_xlatb76 = (x_311 == 1.0f);
    let x_313 : bool = u_xlatb76;
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
      u_xlat76 = dot(x_395, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_402 : f32 = x_265.x_MainLightShadowParams.y;
      u_xlatb77 = (x_402 == 2.0f);
      let x_404 : bool = u_xlatb77;
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
        u_xlat57 = ((vec2<f32>(x_426.x, x_426.y) * vec2<f32>(x_429.z, x_429.w)) + -(vec2<f32>(x_432.x, x_432.y)));
        let x_436 : vec2<f32> = u_xlat57;
        u_xlat8 = (vec4<f32>(x_436.x, x_436.x, x_436.y, x_436.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_441 : vec4<f32> = u_xlat8;
        let x_443 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_441.x, x_441.x, x_441.z, x_441.z) * vec4<f32>(x_443.x, x_443.x, x_443.z, x_443.z));
        let x_446 : vec4<f32> = u_xlat9;
        let x_450 : vec2<f32> = (vec2<f32>(x_446.y, x_446.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_451 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_450.x, x_451.y, x_450.y, x_451.w);
        let x_453 : vec4<f32> = u_xlat9;
        let x_456 : vec2<f32> = u_xlat57;
        let x_458 : vec2<f32> = ((vec2<f32>(x_453.x, x_453.z) * vec2<f32>(0.5f, 0.5f)) + -(x_456));
        let x_459 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_458.x, x_458.y, x_459.z, x_459.w);
        let x_462 : vec2<f32> = u_xlat57;
        u_xlat59 = (-(x_462) + vec2<f32>(1.0f, 1.0f));
        let x_467 : vec2<f32> = u_xlat57;
        let x_469 : vec2<f32> = min(x_467, vec2<f32>(0.0f, 0.0f));
        let x_470 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_469.x, x_469.y, x_470.z, x_470.w);
        let x_472 : vec4<f32> = u_xlat10;
        let x_475 : vec4<f32> = u_xlat10;
        let x_478 : vec2<f32> = u_xlat59;
        let x_479 : vec2<f32> = ((-(vec2<f32>(x_472.x, x_472.y)) * vec2<f32>(x_475.x, x_475.y)) + x_478);
        let x_480 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_479.x, x_479.y, x_480.z, x_480.w);
        let x_482 : vec2<f32> = u_xlat57;
        u_xlat57 = max(x_482, vec2<f32>(0.0f, 0.0f));
        let x_484 : vec2<f32> = u_xlat57;
        let x_486 : vec2<f32> = u_xlat57;
        let x_488 : vec4<f32> = u_xlat8;
        u_xlat57 = ((-(x_484) * x_486) + vec2<f32>(x_488.y, x_488.w));
        let x_491 : vec4<f32> = u_xlat10;
        let x_493 : vec2<f32> = (vec2<f32>(x_491.x, x_491.y) + vec2<f32>(1.0f, 1.0f));
        let x_494 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_493.x, x_493.y, x_494.z, x_494.w);
        let x_496 : vec2<f32> = u_xlat57;
        u_xlat57 = (x_496 + vec2<f32>(1.0f, 1.0f));
        let x_499 : vec4<f32> = u_xlat9;
        let x_503 : vec2<f32> = (vec2<f32>(x_499.x, x_499.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_504 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_503.x, x_503.y, x_504.z, x_504.w);
        let x_506 : vec2<f32> = u_xlat59;
        let x_507 : vec2<f32> = (x_506 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_508 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_507.x, x_507.y, x_508.z, x_508.w);
        let x_510 : vec4<f32> = u_xlat10;
        let x_512 : vec2<f32> = (vec2<f32>(x_510.x, x_510.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_513 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_512.x, x_512.y, x_513.z, x_513.w);
        let x_516 : vec2<f32> = u_xlat57;
        let x_517 : vec2<f32> = (x_516 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_518 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_517.x, x_517.y, x_518.z, x_518.w);
        let x_520 : vec4<f32> = u_xlat8;
        u_xlat57 = (vec2<f32>(x_520.y, x_520.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_524 : f32 = u_xlat10.x;
        u_xlat11.z = x_524;
        let x_527 : f32 = u_xlat57.x;
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
        let x_545 : f32 = u_xlat57.y;
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
        u_xlat57 = ((vec2<f32>(x_616.x, x_616.y) * vec2<f32>(x_619.x, x_619.y)) + vec2<f32>(x_622.z, x_622.w));
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
        u_xlat77 = (x_672 * x_674);
        let x_677 : vec4<f32> = u_xlat11;
        let x_678 : vec2<f32> = vec2<f32>(x_677.x, x_677.y);
        let x_680 : f32 = u_xlat6.z;
        txVec4 = vec3<f32>(x_678.x, x_678.y, x_680);
        let x_688 : vec3<f32> = txVec4;
        let x_690 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_688.xy, x_688.z);
        u_xlat79 = x_690;
        let x_692 : vec4<f32> = u_xlat11;
        let x_693 : vec2<f32> = vec2<f32>(x_692.z, x_692.w);
        let x_695 : f32 = u_xlat6.z;
        txVec5 = vec3<f32>(x_693.x, x_693.y, x_695);
        let x_703 : vec3<f32> = txVec5;
        let x_705 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_703.xy, x_703.z);
        u_xlat81 = x_705;
        let x_706 : f32 = u_xlat81;
        let x_708 : f32 = u_xlat14.y;
        u_xlat81 = (x_706 * x_708);
        let x_711 : f32 = u_xlat14.x;
        let x_712 : f32 = u_xlat79;
        let x_714 : f32 = u_xlat81;
        u_xlat79 = ((x_711 * x_712) + x_714);
        let x_717 : vec2<f32> = u_xlat57;
        let x_719 : f32 = u_xlat6.z;
        txVec6 = vec3<f32>(x_717.x, x_717.y, x_719);
        let x_726 : vec3<f32> = txVec6;
        let x_728 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_726.xy, x_726.z);
        u_xlat81 = x_728;
        let x_730 : f32 = u_xlat14.z;
        let x_731 : f32 = u_xlat81;
        let x_733 : f32 = u_xlat79;
        u_xlat79 = ((x_730 * x_731) + x_733);
        let x_736 : vec4<f32> = u_xlat10;
        let x_737 : vec2<f32> = vec2<f32>(x_736.x, x_736.y);
        let x_739 : f32 = u_xlat6.z;
        txVec7 = vec3<f32>(x_737.x, x_737.y, x_739);
        let x_746 : vec3<f32> = txVec7;
        let x_748 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_746.xy, x_746.z);
        u_xlat81 = x_748;
        let x_750 : f32 = u_xlat14.w;
        let x_751 : f32 = u_xlat81;
        let x_753 : f32 = u_xlat79;
        u_xlat79 = ((x_750 * x_751) + x_753);
        let x_756 : vec4<f32> = u_xlat12;
        let x_757 : vec2<f32> = vec2<f32>(x_756.x, x_756.y);
        let x_759 : f32 = u_xlat6.z;
        txVec8 = vec3<f32>(x_757.x, x_757.y, x_759);
        let x_766 : vec3<f32> = txVec8;
        let x_768 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_766.xy, x_766.z);
        u_xlat81 = x_768;
        let x_770 : f32 = u_xlat15.x;
        let x_771 : f32 = u_xlat81;
        let x_773 : f32 = u_xlat79;
        u_xlat79 = ((x_770 * x_771) + x_773);
        let x_776 : vec4<f32> = u_xlat12;
        let x_777 : vec2<f32> = vec2<f32>(x_776.z, x_776.w);
        let x_779 : f32 = u_xlat6.z;
        txVec9 = vec3<f32>(x_777.x, x_777.y, x_779);
        let x_786 : vec3<f32> = txVec9;
        let x_788 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_786.xy, x_786.z);
        u_xlat81 = x_788;
        let x_790 : f32 = u_xlat15.y;
        let x_791 : f32 = u_xlat81;
        let x_793 : f32 = u_xlat79;
        u_xlat79 = ((x_790 * x_791) + x_793);
        let x_796 : vec4<f32> = u_xlat10;
        let x_797 : vec2<f32> = vec2<f32>(x_796.z, x_796.w);
        let x_799 : f32 = u_xlat6.z;
        txVec10 = vec3<f32>(x_797.x, x_797.y, x_799);
        let x_806 : vec3<f32> = txVec10;
        let x_808 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_806.xy, x_806.z);
        u_xlat81 = x_808;
        let x_810 : f32 = u_xlat15.z;
        let x_811 : f32 = u_xlat81;
        let x_813 : f32 = u_xlat79;
        u_xlat79 = ((x_810 * x_811) + x_813);
        let x_816 : vec4<f32> = u_xlat9;
        let x_817 : vec2<f32> = vec2<f32>(x_816.x, x_816.y);
        let x_819 : f32 = u_xlat6.z;
        txVec11 = vec3<f32>(x_817.x, x_817.y, x_819);
        let x_826 : vec3<f32> = txVec11;
        let x_828 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_826.xy, x_826.z);
        u_xlat81 = x_828;
        let x_830 : f32 = u_xlat15.w;
        let x_831 : f32 = u_xlat81;
        let x_833 : f32 = u_xlat79;
        u_xlat79 = ((x_830 * x_831) + x_833);
        let x_836 : vec4<f32> = u_xlat9;
        let x_837 : vec2<f32> = vec2<f32>(x_836.z, x_836.w);
        let x_839 : f32 = u_xlat6.z;
        txVec12 = vec3<f32>(x_837.x, x_837.y, x_839);
        let x_846 : vec3<f32> = txVec12;
        let x_848 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_846.xy, x_846.z);
        u_xlat81 = x_848;
        let x_849 : f32 = u_xlat77;
        let x_850 : f32 = u_xlat81;
        let x_852 : f32 = u_xlat79;
        u_xlat76 = ((x_849 * x_850) + x_852);
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
        u_xlat57 = ((vec2<f32>(x_869.x, x_869.y) * vec2<f32>(x_872.z, x_872.w)) + -(vec2<f32>(x_875.x, x_875.y)));
        let x_879 : vec2<f32> = u_xlat57;
        u_xlat8 = (vec4<f32>(x_879.x, x_879.x, x_879.y, x_879.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_882 : vec4<f32> = u_xlat8;
        let x_884 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_882.x, x_882.x, x_882.z, x_882.z) * vec4<f32>(x_884.x, x_884.x, x_884.z, x_884.z));
        let x_887 : vec4<f32> = u_xlat9;
        let x_891 : vec2<f32> = (vec2<f32>(x_887.y, x_887.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_892 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_892.x, x_891.x, x_892.z, x_891.y);
        let x_894 : vec4<f32> = u_xlat9;
        let x_897 : vec2<f32> = u_xlat57;
        let x_899 : vec2<f32> = ((vec2<f32>(x_894.x, x_894.z) * vec2<f32>(0.5f, 0.5f)) + -(x_897));
        let x_900 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_899.x, x_900.y, x_899.y, x_900.w);
        let x_902 : vec2<f32> = u_xlat57;
        let x_904 : vec2<f32> = (-(x_902) + vec2<f32>(1.0f, 1.0f));
        let x_905 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_904.x, x_904.y, x_905.z, x_905.w);
        let x_907 : vec2<f32> = u_xlat57;
        u_xlat59 = min(x_907, vec2<f32>(0.0f, 0.0f));
        let x_909 : vec2<f32> = u_xlat59;
        let x_911 : vec2<f32> = u_xlat59;
        let x_913 : vec4<f32> = u_xlat9;
        let x_915 : vec2<f32> = ((-(x_909) * x_911) + vec2<f32>(x_913.x, x_913.y));
        let x_916 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_915.x, x_915.y, x_916.z, x_916.w);
        let x_918 : vec2<f32> = u_xlat57;
        u_xlat59 = max(x_918, vec2<f32>(0.0f, 0.0f));
        let x_921 : vec2<f32> = u_xlat59;
        let x_923 : vec2<f32> = u_xlat59;
        let x_925 : vec4<f32> = u_xlat8;
        let x_927 : vec2<f32> = ((-(x_921) * x_923) + vec2<f32>(x_925.y, x_925.w));
        let x_928 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_927.x, x_928.y, x_927.y);
        let x_930 : vec4<f32> = u_xlat9;
        let x_933 : vec2<f32> = (vec2<f32>(x_930.x, x_930.y) + vec2<f32>(2.0f, 2.0f));
        let x_934 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_933.x, x_933.y, x_934.z, x_934.w);
        let x_936 : vec3<f32> = u_xlat33;
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
        let x_961 : vec2<f32> = u_xlat57;
        let x_968 : vec2<f32> = ((vec2<f32>(x_961.x, x_961.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_969 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_969.x, x_968.x, x_969.z, x_968.y);
        let x_971 : vec2<f32> = u_xlat57;
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
        let x_987 : vec2<f32> = u_xlat57;
        let x_990 : vec2<f32> = ((vec2<f32>(x_987.y, x_987.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_991 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_991.x, x_990.x, x_991.z, x_990.y);
        let x_993 : vec2<f32> = u_xlat57;
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
        u_xlat57 = ((vec2<f32>(x_1047.x, x_1047.y) * vec2<f32>(x_1050.x, x_1050.y)) + vec2<f32>(x_1053.w, x_1053.y));
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
        u_xlat34 = ((vec2<f32>(x_1109.x, x_1109.y) * vec2<f32>(x_1112.x, x_1112.y)) + vec2<f32>(x_1115.w, x_1115.y));
        let x_1119 : f32 = u_xlat12.y;
        u_xlat9.w = x_1119;
        let x_1122 : vec4<f32> = u_xlat7;
        let x_1125 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_1128 : vec4<f32> = u_xlat9;
        u_xlat65 = ((vec2<f32>(x_1122.x, x_1122.y) * vec2<f32>(x_1125.x, x_1125.y)) + vec2<f32>(x_1128.x, x_1128.w));
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
        u_xlat60 = ((vec2<f32>(x_1145.x, x_1145.y) * vec2<f32>(x_1148.x, x_1148.y)) + vec2<f32>(x_1151.w, x_1151.y));
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
        u_xlat77 = x_1200;
        let x_1202 : vec4<f32> = u_xlat13;
        let x_1203 : vec2<f32> = vec2<f32>(x_1202.z, x_1202.w);
        let x_1205 : f32 = u_xlat6.z;
        txVec14 = vec3<f32>(x_1203.x, x_1203.y, x_1205);
        let x_1212 : vec3<f32> = txVec14;
        let x_1214 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1212.xy, x_1212.z);
        u_xlat79 = x_1214;
        let x_1215 : f32 = u_xlat79;
        let x_1217 : f32 = u_xlat18.y;
        u_xlat79 = (x_1215 * x_1217);
        let x_1220 : f32 = u_xlat18.x;
        let x_1221 : f32 = u_xlat77;
        let x_1223 : f32 = u_xlat79;
        u_xlat77 = ((x_1220 * x_1221) + x_1223);
        let x_1226 : vec2<f32> = u_xlat57;
        let x_1228 : f32 = u_xlat6.z;
        txVec15 = vec3<f32>(x_1226.x, x_1226.y, x_1228);
        let x_1235 : vec3<f32> = txVec15;
        let x_1237 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1235.xy, x_1235.z);
        u_xlat79 = x_1237;
        let x_1239 : f32 = u_xlat18.z;
        let x_1240 : f32 = u_xlat79;
        let x_1242 : f32 = u_xlat77;
        u_xlat77 = ((x_1239 * x_1240) + x_1242);
        let x_1245 : vec4<f32> = u_xlat16;
        let x_1246 : vec2<f32> = vec2<f32>(x_1245.x, x_1245.y);
        let x_1248 : f32 = u_xlat6.z;
        txVec16 = vec3<f32>(x_1246.x, x_1246.y, x_1248);
        let x_1255 : vec3<f32> = txVec16;
        let x_1257 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1255.xy, x_1255.z);
        u_xlat79 = x_1257;
        let x_1259 : f32 = u_xlat18.w;
        let x_1260 : f32 = u_xlat79;
        let x_1262 : f32 = u_xlat77;
        u_xlat77 = ((x_1259 * x_1260) + x_1262);
        let x_1265 : vec4<f32> = u_xlat14;
        let x_1266 : vec2<f32> = vec2<f32>(x_1265.x, x_1265.y);
        let x_1268 : f32 = u_xlat6.z;
        txVec17 = vec3<f32>(x_1266.x, x_1266.y, x_1268);
        let x_1275 : vec3<f32> = txVec17;
        let x_1277 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1275.xy, x_1275.z);
        u_xlat79 = x_1277;
        let x_1279 : f32 = u_xlat19.x;
        let x_1280 : f32 = u_xlat79;
        let x_1282 : f32 = u_xlat77;
        u_xlat77 = ((x_1279 * x_1280) + x_1282);
        let x_1285 : vec4<f32> = u_xlat14;
        let x_1286 : vec2<f32> = vec2<f32>(x_1285.z, x_1285.w);
        let x_1288 : f32 = u_xlat6.z;
        txVec18 = vec3<f32>(x_1286.x, x_1286.y, x_1288);
        let x_1295 : vec3<f32> = txVec18;
        let x_1297 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1295.xy, x_1295.z);
        u_xlat79 = x_1297;
        let x_1299 : f32 = u_xlat19.y;
        let x_1300 : f32 = u_xlat79;
        let x_1302 : f32 = u_xlat77;
        u_xlat77 = ((x_1299 * x_1300) + x_1302);
        let x_1305 : vec4<f32> = u_xlat15;
        let x_1306 : vec2<f32> = vec2<f32>(x_1305.x, x_1305.y);
        let x_1308 : f32 = u_xlat6.z;
        txVec19 = vec3<f32>(x_1306.x, x_1306.y, x_1308);
        let x_1315 : vec3<f32> = txVec19;
        let x_1317 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1315.xy, x_1315.z);
        u_xlat79 = x_1317;
        let x_1319 : f32 = u_xlat19.z;
        let x_1320 : f32 = u_xlat79;
        let x_1322 : f32 = u_xlat77;
        u_xlat77 = ((x_1319 * x_1320) + x_1322);
        let x_1325 : vec4<f32> = u_xlat16;
        let x_1326 : vec2<f32> = vec2<f32>(x_1325.z, x_1325.w);
        let x_1328 : f32 = u_xlat6.z;
        txVec20 = vec3<f32>(x_1326.x, x_1326.y, x_1328);
        let x_1335 : vec3<f32> = txVec20;
        let x_1337 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1335.xy, x_1335.z);
        u_xlat79 = x_1337;
        let x_1339 : f32 = u_xlat19.w;
        let x_1340 : f32 = u_xlat79;
        let x_1342 : f32 = u_xlat77;
        u_xlat77 = ((x_1339 * x_1340) + x_1342);
        let x_1345 : vec4<f32> = u_xlat17;
        let x_1346 : vec2<f32> = vec2<f32>(x_1345.x, x_1345.y);
        let x_1348 : f32 = u_xlat6.z;
        txVec21 = vec3<f32>(x_1346.x, x_1346.y, x_1348);
        let x_1355 : vec3<f32> = txVec21;
        let x_1357 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1355.xy, x_1355.z);
        u_xlat79 = x_1357;
        let x_1359 : f32 = u_xlat20.x;
        let x_1360 : f32 = u_xlat79;
        let x_1362 : f32 = u_xlat77;
        u_xlat77 = ((x_1359 * x_1360) + x_1362);
        let x_1365 : vec4<f32> = u_xlat17;
        let x_1366 : vec2<f32> = vec2<f32>(x_1365.z, x_1365.w);
        let x_1368 : f32 = u_xlat6.z;
        txVec22 = vec3<f32>(x_1366.x, x_1366.y, x_1368);
        let x_1375 : vec3<f32> = txVec22;
        let x_1377 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1375.xy, x_1375.z);
        u_xlat79 = x_1377;
        let x_1379 : f32 = u_xlat20.y;
        let x_1380 : f32 = u_xlat79;
        let x_1382 : f32 = u_xlat77;
        u_xlat77 = ((x_1379 * x_1380) + x_1382);
        let x_1385 : vec2<f32> = u_xlat34;
        let x_1387 : f32 = u_xlat6.z;
        txVec23 = vec3<f32>(x_1385.x, x_1385.y, x_1387);
        let x_1394 : vec3<f32> = txVec23;
        let x_1396 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1394.xy, x_1394.z);
        u_xlat79 = x_1396;
        let x_1398 : f32 = u_xlat20.z;
        let x_1399 : f32 = u_xlat79;
        let x_1401 : f32 = u_xlat77;
        u_xlat77 = ((x_1398 * x_1399) + x_1401);
        let x_1404 : vec2<f32> = u_xlat65;
        let x_1406 : f32 = u_xlat6.z;
        txVec24 = vec3<f32>(x_1404.x, x_1404.y, x_1406);
        let x_1413 : vec3<f32> = txVec24;
        let x_1415 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1413.xy, x_1413.z);
        u_xlat79 = x_1415;
        let x_1417 : f32 = u_xlat20.w;
        let x_1418 : f32 = u_xlat79;
        let x_1420 : f32 = u_xlat77;
        u_xlat77 = ((x_1417 * x_1418) + x_1420);
        let x_1423 : vec4<f32> = u_xlat12;
        let x_1424 : vec2<f32> = vec2<f32>(x_1423.x, x_1423.y);
        let x_1426 : f32 = u_xlat6.z;
        txVec25 = vec3<f32>(x_1424.x, x_1424.y, x_1426);
        let x_1433 : vec3<f32> = txVec25;
        let x_1435 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1433.xy, x_1433.z);
        u_xlat79 = x_1435;
        let x_1437 : f32 = u_xlat8.x;
        let x_1438 : f32 = u_xlat79;
        let x_1440 : f32 = u_xlat77;
        u_xlat77 = ((x_1437 * x_1438) + x_1440);
        let x_1443 : vec4<f32> = u_xlat12;
        let x_1444 : vec2<f32> = vec2<f32>(x_1443.z, x_1443.w);
        let x_1446 : f32 = u_xlat6.z;
        txVec26 = vec3<f32>(x_1444.x, x_1444.y, x_1446);
        let x_1453 : vec3<f32> = txVec26;
        let x_1455 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1453.xy, x_1453.z);
        u_xlat79 = x_1455;
        let x_1457 : f32 = u_xlat8.y;
        let x_1458 : f32 = u_xlat79;
        let x_1460 : f32 = u_xlat77;
        u_xlat77 = ((x_1457 * x_1458) + x_1460);
        let x_1463 : vec2<f32> = u_xlat60;
        let x_1465 : f32 = u_xlat6.z;
        txVec27 = vec3<f32>(x_1463.x, x_1463.y, x_1465);
        let x_1472 : vec3<f32> = txVec27;
        let x_1474 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1472.xy, x_1472.z);
        u_xlat79 = x_1474;
        let x_1476 : f32 = u_xlat8.z;
        let x_1477 : f32 = u_xlat79;
        let x_1479 : f32 = u_xlat77;
        u_xlat77 = ((x_1476 * x_1477) + x_1479);
        let x_1482 : vec4<f32> = u_xlat7;
        let x_1483 : vec2<f32> = vec2<f32>(x_1482.x, x_1482.y);
        let x_1485 : f32 = u_xlat6.z;
        txVec28 = vec3<f32>(x_1483.x, x_1483.y, x_1485);
        let x_1492 : vec3<f32> = txVec28;
        let x_1494 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1492.xy, x_1492.z);
        u_xlat79 = x_1494;
        let x_1496 : f32 = u_xlat8.w;
        let x_1497 : f32 = u_xlat79;
        let x_1499 : f32 = u_xlat77;
        u_xlat76 = ((x_1496 * x_1497) + x_1499);
      }
    }
  } else {
    let x_1503 : vec4<f32> = u_xlat6;
    let x_1504 : vec2<f32> = vec2<f32>(x_1503.x, x_1503.y);
    let x_1506 : f32 = u_xlat6.z;
    txVec29 = vec3<f32>(x_1504.x, x_1504.y, x_1506);
    let x_1513 : vec3<f32> = txVec29;
    let x_1515 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1513.xy, x_1513.z);
    u_xlat76 = x_1515;
  }
  let x_1517 : f32 = x_265.x_MainLightShadowParams.x;
  u_xlat77 = (-(x_1517) + 1.0f);
  let x_1520 : f32 = u_xlat76;
  let x_1522 : f32 = x_265.x_MainLightShadowParams.x;
  let x_1524 : f32 = u_xlat77;
  u_xlat76 = ((x_1520 * x_1522) + x_1524);
  let x_1528 : f32 = u_xlat6.z;
  u_xlatb79 = (0.0f >= x_1528);
  let x_1532 : f32 = u_xlat6.z;
  u_xlatb6 = (x_1532 >= 1.0f);
  let x_1534 : bool = u_xlatb79;
  let x_1535 : bool = u_xlatb6;
  u_xlatb79 = (x_1534 | x_1535);
  let x_1537 : bool = u_xlatb79;
  let x_1538 : f32 = u_xlat76;
  u_xlat76 = select(x_1538, 1.0f, x_1537);
  let x_1540 : vec3<f32> = u_xlat0;
  let x_1542 : vec4<f32> = x_75.x_MainLightPosition;
  u_xlat0.x = dot(x_1540, -(vec3<f32>(x_1542.x, x_1542.y, x_1542.z)));
  let x_1548 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1548, 0.0f, 1.0f);
  let x_1551 : f32 = u_xlat76;
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
  u_xlatb76 = (x_1569 < 0.0f);
  let x_1572 : f32 = x_148.unity_LODFade.x;
  u_xlat3.x = (x_1572 + 1.0f);
  let x_1575 : bool = u_xlatb76;
  if (x_1575) {
    let x_1580 : f32 = u_xlat3.x;
    x_1576 = x_1580;
  } else {
    let x_1583 : f32 = x_148.unity_LODFade.x;
    x_1576 = x_1583;
  }
  let x_1584 : f32 = x_1576;
  u_xlat76 = x_1584;
  let x_1586 : f32 = u_xlat76;
  u_xlatb3 = (0.5f >= x_1586);
  let x_1588 : vec3<f32> = u_xlat1;
  let x_1591 : vec4<f32> = x_75.x_ScreenParams;
  u_xlat1 = (abs(x_1588) * vec3<f32>(x_1591.x, x_1591.y, x_1591.x));
  let x_1597 : vec3<f32> = u_xlat1;
  u_xlatu1 = vec3<u32>(x_1597);
  let x_1602 : u32 = u_xlatu1.z;
  u_xlatu51 = (x_1602 * 1025u);
  let x_1606 : u32 = u_xlatu51;
  u_xlatu28 = (x_1606 >> 6u);
  let x_1611 : u32 = u_xlatu51;
  let x_1612 : u32 = u_xlatu28;
  u_xlati51 = bitcast<i32>((x_1611 ^ x_1612));
  let x_1615 : i32 = u_xlati51;
  u_xlatu51 = (bitcast<u32>(x_1615) * 9u);
  let x_1619 : u32 = u_xlatu51;
  u_xlatu28 = (x_1619 >> 11u);
  let x_1622 : u32 = u_xlatu51;
  let x_1623 : u32 = u_xlatu28;
  u_xlati51 = bitcast<i32>((x_1622 ^ x_1623));
  let x_1626 : i32 = u_xlati51;
  u_xlati51 = (x_1626 * 32769i);
  let x_1630 : i32 = u_xlati51;
  let x_1633 : u32 = u_xlatu1.y;
  u_xlati26 = bitcast<i32>((bitcast<u32>(x_1630) ^ x_1633));
  let x_1637 : i32 = u_xlati26;
  u_xlatu26 = (bitcast<u32>(x_1637) * 1025u);
  let x_1640 : u32 = u_xlatu26;
  u_xlatu51 = (x_1640 >> 6u);
  let x_1642 : u32 = u_xlatu51;
  let x_1643 : u32 = u_xlatu26;
  u_xlati26 = bitcast<i32>((x_1642 ^ x_1643));
  let x_1646 : i32 = u_xlati26;
  u_xlatu26 = (bitcast<u32>(x_1646) * 9u);
  let x_1649 : u32 = u_xlatu26;
  u_xlatu51 = (x_1649 >> 11u);
  let x_1651 : u32 = u_xlatu51;
  let x_1652 : u32 = u_xlatu26;
  u_xlati26 = bitcast<i32>((x_1651 ^ x_1652));
  let x_1655 : i32 = u_xlati26;
  u_xlati26 = (x_1655 * 32769i);
  let x_1658 : i32 = u_xlati26;
  let x_1661 : u32 = u_xlatu1.x;
  u_xlati1 = bitcast<i32>((bitcast<u32>(x_1658) ^ x_1661));
  let x_1664 : i32 = u_xlati1;
  u_xlatu1.x = (bitcast<u32>(x_1664) * 1025u);
  let x_1669 : u32 = u_xlatu1.x;
  u_xlatu26 = (x_1669 >> 6u);
  let x_1671 : u32 = u_xlatu26;
  let x_1673 : u32 = u_xlatu1.x;
  u_xlati1 = bitcast<i32>((x_1671 ^ x_1673));
  let x_1676 : i32 = u_xlati1;
  u_xlatu1.x = (bitcast<u32>(x_1676) * 9u);
  let x_1681 : u32 = u_xlatu1.x;
  u_xlatu26 = (x_1681 >> 11u);
  let x_1683 : u32 = u_xlatu26;
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
  u_xlat26 = (-(x_1706) + 1.0f);
  let x_1709 : bool = u_xlatb3;
  if (x_1709) {
    let x_1714 : f32 = u_xlat1.x;
    x_1710 = x_1714;
  } else {
    let x_1716 : f32 = u_xlat26;
    x_1710 = x_1716;
  }
  let x_1717 : f32 = x_1710;
  u_xlat1.x = x_1717;
  let x_1719 : f32 = u_xlat76;
  let x_1722 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1719 * 2.0f) + -(x_1722));
  let x_1727 : f32 = u_xlat1.x;
  let x_1729 : f32 = u_xlat3.w;
  u_xlat26 = (x_1727 * x_1729);
  let x_1734 : f32 = u_xlat26;
  u_xlatb51.x = (x_1734 >= 0.40000000596046447754f);
  let x_1740 : bool = u_xlatb51.x;
  let x_1741 : f32 = u_xlat26;
  u_xlat51.x = select(0.0f, x_1741, x_1740);
  let x_1745 : f32 = u_xlat3.w;
  let x_1747 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1745 * x_1747) + -0.40000000596046447754f);
  let x_1752 : f32 = u_xlat26;
  u_xlat76 = dpdxCoarse(x_1752);
  let x_1754 : f32 = u_xlat26;
  u_xlat26 = dpdyCoarse(x_1754);
  let x_1756 : f32 = u_xlat26;
  let x_1758 : f32 = u_xlat76;
  u_xlat26 = (abs(x_1756) + abs(x_1758));
  let x_1761 : f32 = u_xlat26;
  u_xlat26 = max(x_1761, 0.00009999999747378752f);
  let x_1765 : f32 = u_xlat1.x;
  let x_1766 : f32 = u_xlat26;
  u_xlat1.x = (x_1765 / x_1766);
  let x_1770 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1770 + 0.5f);
  let x_1774 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1774, 0.0f, 1.0f);
  let x_1779 : f32 = x_75.x_AlphaToMaskAvailable;
  u_xlatb26 = !((x_1779 == 0.0f));
  let x_1781 : bool = u_xlatb26;
  if (x_1781) {
    let x_1786 : f32 = u_xlat1.x;
    x_1782 = x_1786;
  } else {
    let x_1789 : f32 = u_xlat51.x;
    x_1782 = x_1789;
  }
  let x_1790 : f32 = x_1782;
  u_xlat1.x = x_1790;
  let x_1793 : f32 = u_xlat1.x;
  u_xlat51.x = (x_1793 + -0.00009999999747378752f);
  let x_1798 : f32 = u_xlat51.x;
  u_xlatb51.x = (x_1798 < 0.0f);
  let x_1802 : bool = u_xlatb51.x;
  if (((select(0i, 1i, x_1802) * -1i) != 0i)) {
    discard;
  }
  let x_1812 : f32 = vs_INTERP4.w;
  u_xlatb51.x = (0.0f < x_1812);
  let x_1816 : f32 = x_148.unity_WorldTransformParams.w;
  u_xlatb51.y = (x_1816 >= 0.0f);
  let x_1820 : bool = u_xlatb51.x;
  u_xlat51.x = select(-1.0f, 1.0f, x_1820);
  let x_1824 : bool = u_xlatb51.y;
  u_xlat51.y = select(-1.0f, 1.0f, x_1824);
  let x_1828 : f32 = u_xlat51.y;
  let x_1830 : f32 = u_xlat51.x;
  u_xlat51.x = (x_1828 * x_1830);
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
  let x_1851 : vec2<f32> = u_xlat51;
  let x_1853 : vec4<f32> = u_xlat3;
  let x_1855 : vec3<f32> = (vec3<f32>(x_1851.x, x_1851.x, x_1851.x) * vec3<f32>(x_1853.x, x_1853.y, x_1853.z));
  let x_1856 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1855.x, x_1855.y, x_1855.z, x_1856.w);
  let x_1858 : vec4<f32> = u_xlat3;
  let x_1860 : vec3<f32> = u_xlat30;
  let x_1862 : vec3<f32> = (vec3<f32>(x_1858.x, x_1858.y, x_1858.z) * vec3<f32>(x_1860.y, x_1860.y, x_1860.y));
  let x_1863 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1862.x, x_1862.y, x_1862.z, x_1863.w);
  let x_1865 : vec3<f32> = u_xlat30;
  let x_1867 : vec4<f32> = vs_INTERP4;
  let x_1870 : vec4<f32> = u_xlat3;
  let x_1872 : vec3<f32> = ((vec3<f32>(x_1865.x, x_1865.x, x_1865.x) * vec3<f32>(x_1867.x, x_1867.y, x_1867.z)) + vec3<f32>(x_1870.x, x_1870.y, x_1870.z));
  let x_1873 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1872.x, x_1872.y, x_1872.z, x_1873.w);
  let x_1875 : vec3<f32> = u_xlat30;
  let x_1877 : vec3<f32> = vs_INTERP9;
  let x_1879 : vec4<f32> = u_xlat3;
  let x_1881 : vec3<f32> = ((vec3<f32>(x_1875.z, x_1875.z, x_1875.z) * x_1877) + vec3<f32>(x_1879.x, x_1879.y, x_1879.z));
  let x_1882 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1881.x, x_1881.y, x_1881.z, x_1882.w);
  let x_1884 : vec4<f32> = u_xlat3;
  let x_1886 : vec4<f32> = u_xlat3;
  u_xlat51.x = dot(vec3<f32>(x_1884.x, x_1884.y, x_1884.z), vec3<f32>(x_1886.x, x_1886.y, x_1886.z));
  let x_1891 : f32 = u_xlat51.x;
  u_xlat51.x = inverseSqrt(x_1891);
  let x_1894 : vec2<f32> = u_xlat51;
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
  u_xlat51.x = (x_1943 * x_1945);
  let x_1949 : f32 = u_xlat3.x;
  let x_1951 : f32 = u_xlat3.x;
  let x_1954 : f32 = u_xlat51.x;
  u_xlat51.x = ((x_1949 * x_1951) + -(x_1954));
  let x_1960 : vec4<f32> = x_148.unity_SHC;
  let x_1962 : vec2<f32> = u_xlat51;
  let x_1965 : vec4<f32> = u_xlat8;
  u_xlat30 = ((vec3<f32>(x_1960.x, x_1960.y, x_1960.z) * vec3<f32>(x_1962.x, x_1962.x, x_1962.x)) + vec3<f32>(x_1965.x, x_1965.y, x_1965.z));
  let x_1968 : vec3<f32> = u_xlat30;
  let x_1969 : vec4<f32> = u_xlat6;
  u_xlat30 = (x_1968 + vec3<f32>(x_1969.x, x_1969.y, x_1969.z));
  let x_1972 : vec3<f32> = u_xlat30;
  u_xlat30 = max(x_1972, vec3<f32>(0.0f, 0.0f, 0.0f));
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
  u_xlat51.x = (-(x_1994) + 1.0f);
  let x_1999 : f32 = u_xlat51.x;
  let x_2001 : f32 = u_xlat51.x;
  u_xlat76 = (x_1999 * x_2001);
  let x_2003 : f32 = u_xlat76;
  u_xlat76 = max(x_2003, 0.0078125f);
  let x_2007 : f32 = u_xlat76;
  let x_2008 : f32 = u_xlat76;
  u_xlat78 = (x_2007 * x_2008);
  let x_2011 : f32 = u_xlat5.x;
  u_xlat79 = (x_2011 + 0.04000002145767211914f);
  let x_2014 : f32 = u_xlat79;
  u_xlat79 = min(x_2014, 1.0f);
  let x_2016 : f32 = u_xlat76;
  u_xlat5.x = ((x_2016 * 4.0f) + 2.0f);
  let x_2022 : f32 = vs_INTERP6.w;
  u_xlat6.x = min(x_2022, 1.0f);
  let x_2025 : bool = u_xlatb75;
  if (x_2025) {
    let x_2029 : f32 = x_265.x_MainLightShadowParams.y;
    u_xlatb75 = (x_2029 == 1.0f);
    let x_2031 : bool = u_xlatb75;
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
      u_xlat75 = dot(x_2105, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_2110 : f32 = x_265.x_MainLightShadowParams.y;
      u_xlatb31 = (x_2110 == 2.0f);
      let x_2112 : bool = u_xlatb31;
      if (x_2112) {
        let x_2116 : vec4<f32> = vs_INTERP3;
        let x_2119 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2122 : vec2<f32> = ((vec2<f32>(x_2116.x, x_2116.y) * vec2<f32>(x_2119.z, x_2119.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2123 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_2122.x, x_2122.y, x_2123.z);
        let x_2125 : vec3<f32> = u_xlat31;
        let x_2127 : vec2<f32> = floor(vec2<f32>(x_2125.x, x_2125.y));
        let x_2128 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_2127.x, x_2127.y, x_2128.z);
        let x_2130 : vec4<f32> = vs_INTERP3;
        let x_2133 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2136 : vec3<f32> = u_xlat31;
        let x_2139 : vec2<f32> = ((vec2<f32>(x_2130.x, x_2130.y) * vec2<f32>(x_2133.z, x_2133.w)) + -(vec2<f32>(x_2136.x, x_2136.y)));
        let x_2140 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2139.x, x_2139.y, x_2140.z, x_2140.w);
        let x_2142 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_2142.x, x_2142.x, x_2142.y, x_2142.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2145 : vec4<f32> = u_xlat8;
        let x_2147 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_2145.x, x_2145.x, x_2145.z, x_2145.z) * vec4<f32>(x_2147.x, x_2147.x, x_2147.z, x_2147.z));
        let x_2150 : vec4<f32> = u_xlat9;
        u_xlat57 = (vec2<f32>(x_2150.y, x_2150.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_2153 : vec4<f32> = u_xlat9;
        let x_2156 : vec4<f32> = u_xlat7;
        let x_2159 : vec2<f32> = ((vec2<f32>(x_2153.x, x_2153.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2156.x, x_2156.y)));
        let x_2160 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2159.x, x_2160.y, x_2159.y, x_2160.w);
        let x_2162 : vec4<f32> = u_xlat7;
        let x_2165 : vec2<f32> = (-(vec2<f32>(x_2162.x, x_2162.y)) + vec2<f32>(1.0f, 1.0f));
        let x_2166 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2165.x, x_2165.y, x_2166.z, x_2166.w);
        let x_2168 : vec4<f32> = u_xlat7;
        u_xlat59 = min(vec2<f32>(x_2168.x, x_2168.y), vec2<f32>(0.0f, 0.0f));
        let x_2171 : vec2<f32> = u_xlat59;
        let x_2173 : vec2<f32> = u_xlat59;
        let x_2175 : vec4<f32> = u_xlat9;
        u_xlat59 = ((-(x_2171) * x_2173) + vec2<f32>(x_2175.x, x_2175.y));
        let x_2178 : vec4<f32> = u_xlat7;
        let x_2180 : vec2<f32> = max(vec2<f32>(x_2178.x, x_2178.y), vec2<f32>(0.0f, 0.0f));
        let x_2181 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2180.x, x_2180.y, x_2181.z, x_2181.w);
        let x_2183 : vec4<f32> = u_xlat7;
        let x_2186 : vec4<f32> = u_xlat7;
        let x_2189 : vec4<f32> = u_xlat8;
        let x_2191 : vec2<f32> = ((-(vec2<f32>(x_2183.x, x_2183.y)) * vec2<f32>(x_2186.x, x_2186.y)) + vec2<f32>(x_2189.y, x_2189.w));
        let x_2192 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2191.x, x_2191.y, x_2192.z, x_2192.w);
        let x_2194 : vec2<f32> = u_xlat59;
        u_xlat59 = (x_2194 + vec2<f32>(1.0f, 1.0f));
        let x_2196 : vec4<f32> = u_xlat7;
        let x_2198 : vec2<f32> = (vec2<f32>(x_2196.x, x_2196.y) + vec2<f32>(1.0f, 1.0f));
        let x_2199 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2198.x, x_2198.y, x_2199.z, x_2199.w);
        let x_2201 : vec4<f32> = u_xlat8;
        let x_2203 : vec2<f32> = (vec2<f32>(x_2201.x, x_2201.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2204 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2203.x, x_2203.y, x_2204.z, x_2204.w);
        let x_2206 : vec4<f32> = u_xlat9;
        let x_2208 : vec2<f32> = (vec2<f32>(x_2206.x, x_2206.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2209 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2208.x, x_2208.y, x_2209.z, x_2209.w);
        let x_2211 : vec2<f32> = u_xlat59;
        let x_2212 : vec2<f32> = (x_2211 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2213 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2212.x, x_2212.y, x_2213.z, x_2213.w);
        let x_2215 : vec4<f32> = u_xlat7;
        let x_2217 : vec2<f32> = (vec2<f32>(x_2215.x, x_2215.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2218 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2217.x, x_2217.y, x_2218.z, x_2218.w);
        let x_2220 : vec4<f32> = u_xlat8;
        let x_2222 : vec2<f32> = (vec2<f32>(x_2220.y, x_2220.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2223 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2222.x, x_2222.y, x_2223.z, x_2223.w);
        let x_2226 : f32 = u_xlat9.x;
        u_xlat10.z = x_2226;
        let x_2229 : f32 = u_xlat7.x;
        u_xlat10.w = x_2229;
        let x_2232 : f32 = u_xlat12.x;
        u_xlat11.z = x_2232;
        let x_2235 : f32 = u_xlat57.x;
        u_xlat11.w = x_2235;
        let x_2237 : vec4<f32> = u_xlat10;
        let x_2239 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_2237.z, x_2237.w, x_2237.x, x_2237.z) + vec4<f32>(x_2239.z, x_2239.w, x_2239.x, x_2239.z));
        let x_2243 : f32 = u_xlat10.y;
        u_xlat9.z = x_2243;
        let x_2246 : f32 = u_xlat7.y;
        u_xlat9.w = x_2246;
        let x_2249 : f32 = u_xlat11.y;
        u_xlat12.z = x_2249;
        let x_2252 : f32 = u_xlat57.y;
        u_xlat12.w = x_2252;
        let x_2254 : vec4<f32> = u_xlat9;
        let x_2256 : vec4<f32> = u_xlat12;
        let x_2258 : vec3<f32> = (vec3<f32>(x_2254.z, x_2254.y, x_2254.w) + vec3<f32>(x_2256.z, x_2256.y, x_2256.w));
        let x_2259 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2258.x, x_2258.y, x_2258.z, x_2259.w);
        let x_2261 : vec4<f32> = u_xlat11;
        let x_2263 : vec4<f32> = u_xlat8;
        let x_2265 : vec3<f32> = (vec3<f32>(x_2261.x, x_2261.z, x_2261.w) / vec3<f32>(x_2263.z, x_2263.w, x_2263.y));
        let x_2266 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2265.x, x_2265.y, x_2265.z, x_2266.w);
        let x_2268 : vec4<f32> = u_xlat9;
        let x_2270 : vec3<f32> = (vec3<f32>(x_2268.x, x_2268.y, x_2268.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2271 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2270.x, x_2270.y, x_2270.z, x_2271.w);
        let x_2273 : vec4<f32> = u_xlat12;
        let x_2275 : vec4<f32> = u_xlat7;
        let x_2277 : vec3<f32> = (vec3<f32>(x_2273.z, x_2273.y, x_2273.w) / vec3<f32>(x_2275.x, x_2275.y, x_2275.z));
        let x_2278 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2277.x, x_2277.y, x_2277.z, x_2278.w);
        let x_2280 : vec4<f32> = u_xlat10;
        let x_2282 : vec3<f32> = (vec3<f32>(x_2280.x, x_2280.y, x_2280.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2283 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2282.x, x_2282.y, x_2282.z, x_2283.w);
        let x_2285 : vec4<f32> = u_xlat9;
        let x_2288 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2290 : vec3<f32> = (vec3<f32>(x_2285.y, x_2285.x, x_2285.z) * vec3<f32>(x_2288.x, x_2288.x, x_2288.x));
        let x_2291 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2290.x, x_2290.y, x_2290.z, x_2291.w);
        let x_2293 : vec4<f32> = u_xlat10;
        let x_2296 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2298 : vec3<f32> = (vec3<f32>(x_2293.x, x_2293.y, x_2293.z) * vec3<f32>(x_2296.y, x_2296.y, x_2296.y));
        let x_2299 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2298.x, x_2298.y, x_2298.z, x_2299.w);
        let x_2302 : f32 = u_xlat10.x;
        u_xlat9.w = x_2302;
        let x_2304 : vec3<f32> = u_xlat31;
        let x_2307 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2310 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_2304.x, x_2304.y, x_2304.x, x_2304.y) * vec4<f32>(x_2307.x, x_2307.y, x_2307.x, x_2307.y)) + vec4<f32>(x_2310.y, x_2310.w, x_2310.x, x_2310.w));
        let x_2313 : vec3<f32> = u_xlat31;
        let x_2316 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2319 : vec4<f32> = u_xlat9;
        let x_2321 : vec2<f32> = ((vec2<f32>(x_2313.x, x_2313.y) * vec2<f32>(x_2316.x, x_2316.y)) + vec2<f32>(x_2319.z, x_2319.w));
        let x_2322 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2321.x, x_2321.y, x_2322.z, x_2322.w);
        let x_2325 : f32 = u_xlat9.y;
        u_xlat10.w = x_2325;
        let x_2327 : vec4<f32> = u_xlat10;
        let x_2328 : vec2<f32> = vec2<f32>(x_2327.y, x_2327.z);
        let x_2329 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2329.x, x_2328.x, x_2329.z, x_2328.y);
        let x_2331 : vec3<f32> = u_xlat31;
        let x_2334 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2337 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_2331.x, x_2331.y, x_2331.x, x_2331.y) * vec4<f32>(x_2334.x, x_2334.y, x_2334.x, x_2334.y)) + vec4<f32>(x_2337.x, x_2337.y, x_2337.z, x_2337.y));
        let x_2340 : vec3<f32> = u_xlat31;
        let x_2343 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2346 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_2340.x, x_2340.y, x_2340.x, x_2340.y) * vec4<f32>(x_2343.x, x_2343.y, x_2343.x, x_2343.y)) + vec4<f32>(x_2346.w, x_2346.y, x_2346.w, x_2346.z));
        let x_2349 : vec3<f32> = u_xlat31;
        let x_2352 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2355 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_2349.x, x_2349.y, x_2349.x, x_2349.y) * vec4<f32>(x_2352.x, x_2352.y, x_2352.x, x_2352.y)) + vec4<f32>(x_2355.x, x_2355.w, x_2355.z, x_2355.w));
        let x_2358 : vec4<f32> = u_xlat7;
        let x_2360 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_2358.x, x_2358.x, x_2358.x, x_2358.y) * vec4<f32>(x_2360.z, x_2360.w, x_2360.y, x_2360.z));
        let x_2363 : vec4<f32> = u_xlat7;
        let x_2365 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_2363.y, x_2363.y, x_2363.z, x_2363.z) * x_2365);
        let x_2368 : f32 = u_xlat7.z;
        let x_2370 : f32 = u_xlat8.y;
        u_xlat31.x = (x_2368 * x_2370);
        let x_2374 : vec4<f32> = u_xlat11;
        let x_2375 : vec2<f32> = vec2<f32>(x_2374.x, x_2374.y);
        let x_2377 : f32 = vs_INTERP3.z;
        txVec34 = vec3<f32>(x_2375.x, x_2375.y, x_2377);
        let x_2385 : vec3<f32> = txVec34;
        let x_2387 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2385.xy, x_2385.z);
        u_xlat56 = x_2387;
        let x_2389 : vec4<f32> = u_xlat11;
        let x_2390 : vec2<f32> = vec2<f32>(x_2389.z, x_2389.w);
        let x_2392 : f32 = vs_INTERP3.z;
        txVec35 = vec3<f32>(x_2390.x, x_2390.y, x_2392);
        let x_2399 : vec3<f32> = txVec35;
        let x_2401 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2399.xy, x_2399.z);
        u_xlat81 = x_2401;
        let x_2402 : f32 = u_xlat81;
        let x_2404 : f32 = u_xlat14.y;
        u_xlat81 = (x_2402 * x_2404);
        let x_2407 : f32 = u_xlat14.x;
        let x_2408 : f32 = u_xlat56;
        let x_2410 : f32 = u_xlat81;
        u_xlat56 = ((x_2407 * x_2408) + x_2410);
        let x_2413 : vec4<f32> = u_xlat12;
        let x_2414 : vec2<f32> = vec2<f32>(x_2413.x, x_2413.y);
        let x_2416 : f32 = vs_INTERP3.z;
        txVec36 = vec3<f32>(x_2414.x, x_2414.y, x_2416);
        let x_2423 : vec3<f32> = txVec36;
        let x_2425 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2423.xy, x_2423.z);
        u_xlat81 = x_2425;
        let x_2427 : f32 = u_xlat14.z;
        let x_2428 : f32 = u_xlat81;
        let x_2430 : f32 = u_xlat56;
        u_xlat56 = ((x_2427 * x_2428) + x_2430);
        let x_2433 : vec4<f32> = u_xlat10;
        let x_2434 : vec2<f32> = vec2<f32>(x_2433.x, x_2433.y);
        let x_2436 : f32 = vs_INTERP3.z;
        txVec37 = vec3<f32>(x_2434.x, x_2434.y, x_2436);
        let x_2443 : vec3<f32> = txVec37;
        let x_2445 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2443.xy, x_2443.z);
        u_xlat81 = x_2445;
        let x_2447 : f32 = u_xlat14.w;
        let x_2448 : f32 = u_xlat81;
        let x_2450 : f32 = u_xlat56;
        u_xlat56 = ((x_2447 * x_2448) + x_2450);
        let x_2453 : vec4<f32> = u_xlat13;
        let x_2454 : vec2<f32> = vec2<f32>(x_2453.x, x_2453.y);
        let x_2456 : f32 = vs_INTERP3.z;
        txVec38 = vec3<f32>(x_2454.x, x_2454.y, x_2456);
        let x_2463 : vec3<f32> = txVec38;
        let x_2465 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2463.xy, x_2463.z);
        u_xlat81 = x_2465;
        let x_2467 : f32 = u_xlat15.x;
        let x_2468 : f32 = u_xlat81;
        let x_2470 : f32 = u_xlat56;
        u_xlat56 = ((x_2467 * x_2468) + x_2470);
        let x_2473 : vec4<f32> = u_xlat13;
        let x_2474 : vec2<f32> = vec2<f32>(x_2473.z, x_2473.w);
        let x_2476 : f32 = vs_INTERP3.z;
        txVec39 = vec3<f32>(x_2474.x, x_2474.y, x_2476);
        let x_2483 : vec3<f32> = txVec39;
        let x_2485 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2483.xy, x_2483.z);
        u_xlat81 = x_2485;
        let x_2487 : f32 = u_xlat15.y;
        let x_2488 : f32 = u_xlat81;
        let x_2490 : f32 = u_xlat56;
        u_xlat56 = ((x_2487 * x_2488) + x_2490);
        let x_2493 : vec4<f32> = u_xlat10;
        let x_2494 : vec2<f32> = vec2<f32>(x_2493.z, x_2493.w);
        let x_2496 : f32 = vs_INTERP3.z;
        txVec40 = vec3<f32>(x_2494.x, x_2494.y, x_2496);
        let x_2503 : vec3<f32> = txVec40;
        let x_2505 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2503.xy, x_2503.z);
        u_xlat81 = x_2505;
        let x_2507 : f32 = u_xlat15.z;
        let x_2508 : f32 = u_xlat81;
        let x_2510 : f32 = u_xlat56;
        u_xlat56 = ((x_2507 * x_2508) + x_2510);
        let x_2513 : vec4<f32> = u_xlat9;
        let x_2514 : vec2<f32> = vec2<f32>(x_2513.x, x_2513.y);
        let x_2516 : f32 = vs_INTERP3.z;
        txVec41 = vec3<f32>(x_2514.x, x_2514.y, x_2516);
        let x_2523 : vec3<f32> = txVec41;
        let x_2525 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2523.xy, x_2523.z);
        u_xlat81 = x_2525;
        let x_2527 : f32 = u_xlat15.w;
        let x_2528 : f32 = u_xlat81;
        let x_2530 : f32 = u_xlat56;
        u_xlat56 = ((x_2527 * x_2528) + x_2530);
        let x_2533 : vec4<f32> = u_xlat9;
        let x_2534 : vec2<f32> = vec2<f32>(x_2533.z, x_2533.w);
        let x_2536 : f32 = vs_INTERP3.z;
        txVec42 = vec3<f32>(x_2534.x, x_2534.y, x_2536);
        let x_2543 : vec3<f32> = txVec42;
        let x_2545 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2543.xy, x_2543.z);
        u_xlat81 = x_2545;
        let x_2547 : f32 = u_xlat31.x;
        let x_2548 : f32 = u_xlat81;
        let x_2550 : f32 = u_xlat56;
        u_xlat75 = ((x_2547 * x_2548) + x_2550);
      } else {
        let x_2553 : vec4<f32> = vs_INTERP3;
        let x_2556 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2559 : vec2<f32> = ((vec2<f32>(x_2553.x, x_2553.y) * vec2<f32>(x_2556.z, x_2556.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2560 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_2559.x, x_2559.y, x_2560.z);
        let x_2562 : vec3<f32> = u_xlat31;
        let x_2564 : vec2<f32> = floor(vec2<f32>(x_2562.x, x_2562.y));
        let x_2565 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_2564.x, x_2564.y, x_2565.z);
        let x_2567 : vec4<f32> = vs_INTERP3;
        let x_2570 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2573 : vec3<f32> = u_xlat31;
        let x_2576 : vec2<f32> = ((vec2<f32>(x_2567.x, x_2567.y) * vec2<f32>(x_2570.z, x_2570.w)) + -(vec2<f32>(x_2573.x, x_2573.y)));
        let x_2577 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2576.x, x_2576.y, x_2577.z, x_2577.w);
        let x_2579 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_2579.x, x_2579.x, x_2579.y, x_2579.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2582 : vec4<f32> = u_xlat8;
        let x_2584 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_2582.x, x_2582.x, x_2582.z, x_2582.z) * vec4<f32>(x_2584.x, x_2584.x, x_2584.z, x_2584.z));
        let x_2587 : vec4<f32> = u_xlat9;
        let x_2589 : vec2<f32> = (vec2<f32>(x_2587.y, x_2587.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_2590 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2590.x, x_2589.x, x_2590.z, x_2589.y);
        let x_2592 : vec4<f32> = u_xlat9;
        let x_2595 : vec4<f32> = u_xlat7;
        u_xlat57 = ((vec2<f32>(x_2592.x, x_2592.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2595.x, x_2595.y)));
        let x_2599 : vec4<f32> = u_xlat7;
        let x_2602 : vec2<f32> = (-(vec2<f32>(x_2599.x, x_2599.y)) + vec2<f32>(1.0f, 1.0f));
        let x_2603 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2602.x, x_2603.y, x_2602.y, x_2603.w);
        let x_2605 : vec4<f32> = u_xlat7;
        let x_2607 : vec2<f32> = min(vec2<f32>(x_2605.x, x_2605.y), vec2<f32>(0.0f, 0.0f));
        let x_2608 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2607.x, x_2607.y, x_2608.z, x_2608.w);
        let x_2610 : vec4<f32> = u_xlat9;
        let x_2613 : vec4<f32> = u_xlat9;
        let x_2616 : vec4<f32> = u_xlat8;
        let x_2618 : vec2<f32> = ((-(vec2<f32>(x_2610.x, x_2610.y)) * vec2<f32>(x_2613.x, x_2613.y)) + vec2<f32>(x_2616.x, x_2616.z));
        let x_2619 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2618.x, x_2619.y, x_2618.y, x_2619.w);
        let x_2621 : vec4<f32> = u_xlat7;
        let x_2623 : vec2<f32> = max(vec2<f32>(x_2621.x, x_2621.y), vec2<f32>(0.0f, 0.0f));
        let x_2624 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2623.x, x_2623.y, x_2624.z, x_2624.w);
        let x_2626 : vec4<f32> = u_xlat9;
        let x_2629 : vec4<f32> = u_xlat9;
        let x_2632 : vec4<f32> = u_xlat8;
        let x_2634 : vec2<f32> = ((-(vec2<f32>(x_2626.x, x_2626.y)) * vec2<f32>(x_2629.x, x_2629.y)) + vec2<f32>(x_2632.y, x_2632.w));
        let x_2635 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2635.x, x_2634.x, x_2635.z, x_2634.y);
        let x_2637 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_2637 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_2640 : f32 = u_xlat8.y;
        u_xlat9.z = (x_2640 * 0.08163200318813323975f);
        let x_2643 : vec2<f32> = u_xlat57;
        let x_2645 : vec2<f32> = (vec2<f32>(x_2643.y, x_2643.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2646 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2645.x, x_2645.y, x_2646.z, x_2646.w);
        let x_2648 : vec4<f32> = u_xlat8;
        u_xlat57 = (vec2<f32>(x_2648.x, x_2648.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2652 : f32 = u_xlat8.w;
        u_xlat11.z = (x_2652 * 0.08163200318813323975f);
        let x_2656 : f32 = u_xlat11.y;
        u_xlat9.x = x_2656;
        let x_2658 : vec4<f32> = u_xlat7;
        let x_2661 : vec2<f32> = ((vec2<f32>(x_2658.x, x_2658.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2662 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2662.x, x_2661.x, x_2662.z, x_2661.y);
        let x_2664 : vec4<f32> = u_xlat7;
        let x_2667 : vec2<f32> = ((vec2<f32>(x_2664.x, x_2664.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2668 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2667.x, x_2668.y, x_2667.y, x_2668.w);
        let x_2671 : f32 = u_xlat57.x;
        u_xlat8.y = x_2671;
        let x_2674 : f32 = u_xlat10.y;
        u_xlat8.w = x_2674;
        let x_2676 : vec4<f32> = u_xlat8;
        let x_2677 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_2676 + x_2677);
        let x_2679 : vec4<f32> = u_xlat7;
        let x_2682 : vec2<f32> = ((vec2<f32>(x_2679.y, x_2679.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2683 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2683.x, x_2682.x, x_2683.z, x_2682.y);
        let x_2685 : vec4<f32> = u_xlat7;
        let x_2688 : vec2<f32> = ((vec2<f32>(x_2685.y, x_2685.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2689 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2688.x, x_2689.y, x_2688.y, x_2689.w);
        let x_2692 : f32 = u_xlat57.y;
        u_xlat10.y = x_2692;
        let x_2694 : vec4<f32> = u_xlat10;
        let x_2695 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_2694 + x_2695);
        let x_2697 : vec4<f32> = u_xlat8;
        let x_2698 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_2697 / x_2698);
        let x_2700 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_2700 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2702 : vec4<f32> = u_xlat10;
        let x_2703 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_2702 / x_2703);
        let x_2705 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_2705 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2707 : vec4<f32> = u_xlat8;
        let x_2710 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_2707.w, x_2707.x, x_2707.y, x_2707.z) * vec4<f32>(x_2710.x, x_2710.x, x_2710.x, x_2710.x));
        let x_2713 : vec4<f32> = u_xlat10;
        let x_2716 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_2713.x, x_2713.w, x_2713.y, x_2713.z) * vec4<f32>(x_2716.y, x_2716.y, x_2716.y, x_2716.y));
        let x_2719 : vec4<f32> = u_xlat8;
        let x_2720 : vec3<f32> = vec3<f32>(x_2719.y, x_2719.z, x_2719.w);
        let x_2721 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2720.x, x_2721.y, x_2720.y, x_2720.z);
        let x_2724 : f32 = u_xlat10.x;
        u_xlat11.y = x_2724;
        let x_2726 : vec3<f32> = u_xlat31;
        let x_2729 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2732 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_2726.x, x_2726.y, x_2726.x, x_2726.y) * vec4<f32>(x_2729.x, x_2729.y, x_2729.x, x_2729.y)) + vec4<f32>(x_2732.x, x_2732.y, x_2732.z, x_2732.y));
        let x_2735 : vec3<f32> = u_xlat31;
        let x_2738 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2741 : vec4<f32> = u_xlat11;
        let x_2743 : vec2<f32> = ((vec2<f32>(x_2735.x, x_2735.y) * vec2<f32>(x_2738.x, x_2738.y)) + vec2<f32>(x_2741.w, x_2741.y));
        let x_2744 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_2743.x, x_2743.y, x_2744.z, x_2744.w);
        let x_2747 : f32 = u_xlat11.y;
        u_xlat8.y = x_2747;
        let x_2750 : f32 = u_xlat10.z;
        u_xlat11.y = x_2750;
        let x_2752 : vec3<f32> = u_xlat31;
        let x_2755 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2758 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_2752.x, x_2752.y, x_2752.x, x_2752.y) * vec4<f32>(x_2755.x, x_2755.y, x_2755.x, x_2755.y)) + vec4<f32>(x_2758.x, x_2758.y, x_2758.z, x_2758.y));
        let x_2762 : vec3<f32> = u_xlat31;
        let x_2765 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2768 : vec4<f32> = u_xlat11;
        u_xlat63 = ((vec2<f32>(x_2762.x, x_2762.y) * vec2<f32>(x_2765.x, x_2765.y)) + vec2<f32>(x_2768.w, x_2768.y));
        let x_2772 : f32 = u_xlat11.y;
        u_xlat8.z = x_2772;
        let x_2774 : vec3<f32> = u_xlat31;
        let x_2777 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2780 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_2774.x, x_2774.y, x_2774.x, x_2774.y) * vec4<f32>(x_2777.x, x_2777.y, x_2777.x, x_2777.y)) + vec4<f32>(x_2780.x, x_2780.y, x_2780.x, x_2780.z));
        let x_2784 : f32 = u_xlat10.w;
        u_xlat11.y = x_2784;
        let x_2786 : vec3<f32> = u_xlat31;
        let x_2789 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2792 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_2786.x, x_2786.y, x_2786.x, x_2786.y) * vec4<f32>(x_2789.x, x_2789.y, x_2789.x, x_2789.y)) + vec4<f32>(x_2792.x, x_2792.y, x_2792.z, x_2792.y));
        let x_2795 : vec3<f32> = u_xlat31;
        let x_2798 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2801 : vec4<f32> = u_xlat11;
        let x_2803 : vec2<f32> = ((vec2<f32>(x_2795.x, x_2795.y) * vec2<f32>(x_2798.x, x_2798.y)) + vec2<f32>(x_2801.w, x_2801.y));
        let x_2804 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_2803.x, x_2803.y, x_2804.z);
        let x_2807 : f32 = u_xlat11.y;
        u_xlat8.w = x_2807;
        let x_2809 : vec3<f32> = u_xlat31;
        let x_2812 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2815 : vec4<f32> = u_xlat8;
        let x_2817 : vec2<f32> = ((vec2<f32>(x_2809.x, x_2809.y) * vec2<f32>(x_2812.x, x_2812.y)) + vec2<f32>(x_2815.x, x_2815.w));
        let x_2818 : vec4<f32> = u_xlat17;
        u_xlat17 = vec4<f32>(x_2817.x, x_2817.y, x_2818.z, x_2818.w);
        let x_2820 : vec4<f32> = u_xlat11;
        let x_2821 : vec3<f32> = vec3<f32>(x_2820.x, x_2820.z, x_2820.w);
        let x_2822 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2821.x, x_2822.y, x_2821.y, x_2821.z);
        let x_2824 : vec3<f32> = u_xlat31;
        let x_2827 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2830 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_2824.x, x_2824.y, x_2824.x, x_2824.y) * vec4<f32>(x_2827.x, x_2827.y, x_2827.x, x_2827.y)) + vec4<f32>(x_2830.x, x_2830.y, x_2830.z, x_2830.y));
        let x_2833 : vec3<f32> = u_xlat31;
        let x_2836 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2839 : vec4<f32> = u_xlat10;
        u_xlat60 = ((vec2<f32>(x_2833.x, x_2833.y) * vec2<f32>(x_2836.x, x_2836.y)) + vec2<f32>(x_2839.w, x_2839.y));
        let x_2843 : f32 = u_xlat8.x;
        u_xlat10.x = x_2843;
        let x_2845 : vec3<f32> = u_xlat31;
        let x_2848 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2851 : vec4<f32> = u_xlat10;
        let x_2853 : vec2<f32> = ((vec2<f32>(x_2845.x, x_2845.y) * vec2<f32>(x_2848.x, x_2848.y)) + vec2<f32>(x_2851.x, x_2851.y));
        let x_2854 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_2853.x, x_2853.y, x_2854.z);
        let x_2856 : vec4<f32> = u_xlat7;
        let x_2858 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_2856.x, x_2856.x, x_2856.x, x_2856.x) * x_2858);
        let x_2860 : vec4<f32> = u_xlat7;
        let x_2862 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_2860.y, x_2860.y, x_2860.y, x_2860.y) * x_2862);
        let x_2864 : vec4<f32> = u_xlat7;
        let x_2866 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_2864.z, x_2864.z, x_2864.z, x_2864.z) * x_2866);
        let x_2868 : vec4<f32> = u_xlat7;
        let x_2870 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_2868.w, x_2868.w, x_2868.w, x_2868.w) * x_2870);
        let x_2873 : vec4<f32> = u_xlat12;
        let x_2874 : vec2<f32> = vec2<f32>(x_2873.x, x_2873.y);
        let x_2876 : f32 = vs_INTERP3.z;
        txVec43 = vec3<f32>(x_2874.x, x_2874.y, x_2876);
        let x_2883 : vec3<f32> = txVec43;
        let x_2885 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2883.xy, x_2883.z);
        u_xlat81 = x_2885;
        let x_2887 : vec4<f32> = u_xlat12;
        let x_2888 : vec2<f32> = vec2<f32>(x_2887.z, x_2887.w);
        let x_2890 : f32 = vs_INTERP3.z;
        txVec44 = vec3<f32>(x_2888.x, x_2888.y, x_2890);
        let x_2897 : vec3<f32> = txVec44;
        let x_2899 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2897.xy, x_2897.z);
        u_xlat8.x = x_2899;
        let x_2902 : f32 = u_xlat8.x;
        let x_2904 : f32 = u_xlat18.y;
        u_xlat8.x = (x_2902 * x_2904);
        let x_2908 : f32 = u_xlat18.x;
        let x_2909 : f32 = u_xlat81;
        let x_2912 : f32 = u_xlat8.x;
        u_xlat81 = ((x_2908 * x_2909) + x_2912);
        let x_2915 : vec4<f32> = u_xlat13;
        let x_2916 : vec2<f32> = vec2<f32>(x_2915.x, x_2915.y);
        let x_2918 : f32 = vs_INTERP3.z;
        txVec45 = vec3<f32>(x_2916.x, x_2916.y, x_2918);
        let x_2925 : vec3<f32> = txVec45;
        let x_2927 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2925.xy, x_2925.z);
        u_xlat8.x = x_2927;
        let x_2930 : f32 = u_xlat18.z;
        let x_2932 : f32 = u_xlat8.x;
        let x_2934 : f32 = u_xlat81;
        u_xlat81 = ((x_2930 * x_2932) + x_2934);
        let x_2937 : vec4<f32> = u_xlat15;
        let x_2938 : vec2<f32> = vec2<f32>(x_2937.x, x_2937.y);
        let x_2940 : f32 = vs_INTERP3.z;
        txVec46 = vec3<f32>(x_2938.x, x_2938.y, x_2940);
        let x_2947 : vec3<f32> = txVec46;
        let x_2949 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2947.xy, x_2947.z);
        u_xlat8.x = x_2949;
        let x_2952 : f32 = u_xlat18.w;
        let x_2954 : f32 = u_xlat8.x;
        let x_2956 : f32 = u_xlat81;
        u_xlat81 = ((x_2952 * x_2954) + x_2956);
        let x_2959 : vec4<f32> = u_xlat14;
        let x_2960 : vec2<f32> = vec2<f32>(x_2959.x, x_2959.y);
        let x_2962 : f32 = vs_INTERP3.z;
        txVec47 = vec3<f32>(x_2960.x, x_2960.y, x_2962);
        let x_2969 : vec3<f32> = txVec47;
        let x_2971 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2969.xy, x_2969.z);
        u_xlat8.x = x_2971;
        let x_2974 : f32 = u_xlat19.x;
        let x_2976 : f32 = u_xlat8.x;
        let x_2978 : f32 = u_xlat81;
        u_xlat81 = ((x_2974 * x_2976) + x_2978);
        let x_2981 : vec4<f32> = u_xlat14;
        let x_2982 : vec2<f32> = vec2<f32>(x_2981.z, x_2981.w);
        let x_2984 : f32 = vs_INTERP3.z;
        txVec48 = vec3<f32>(x_2982.x, x_2982.y, x_2984);
        let x_2991 : vec3<f32> = txVec48;
        let x_2993 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2991.xy, x_2991.z);
        u_xlat8.x = x_2993;
        let x_2996 : f32 = u_xlat19.y;
        let x_2998 : f32 = u_xlat8.x;
        let x_3000 : f32 = u_xlat81;
        u_xlat81 = ((x_2996 * x_2998) + x_3000);
        let x_3003 : vec2<f32> = u_xlat63;
        let x_3005 : f32 = vs_INTERP3.z;
        txVec49 = vec3<f32>(x_3003.x, x_3003.y, x_3005);
        let x_3012 : vec3<f32> = txVec49;
        let x_3014 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3012.xy, x_3012.z);
        u_xlat8.x = x_3014;
        let x_3017 : f32 = u_xlat19.z;
        let x_3019 : f32 = u_xlat8.x;
        let x_3021 : f32 = u_xlat81;
        u_xlat81 = ((x_3017 * x_3019) + x_3021);
        let x_3024 : vec4<f32> = u_xlat15;
        let x_3025 : vec2<f32> = vec2<f32>(x_3024.z, x_3024.w);
        let x_3027 : f32 = vs_INTERP3.z;
        txVec50 = vec3<f32>(x_3025.x, x_3025.y, x_3027);
        let x_3034 : vec3<f32> = txVec50;
        let x_3036 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3034.xy, x_3034.z);
        u_xlat8.x = x_3036;
        let x_3039 : f32 = u_xlat19.w;
        let x_3041 : f32 = u_xlat8.x;
        let x_3043 : f32 = u_xlat81;
        u_xlat81 = ((x_3039 * x_3041) + x_3043);
        let x_3046 : vec4<f32> = u_xlat16;
        let x_3047 : vec2<f32> = vec2<f32>(x_3046.x, x_3046.y);
        let x_3049 : f32 = vs_INTERP3.z;
        txVec51 = vec3<f32>(x_3047.x, x_3047.y, x_3049);
        let x_3056 : vec3<f32> = txVec51;
        let x_3058 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3056.xy, x_3056.z);
        u_xlat8.x = x_3058;
        let x_3061 : f32 = u_xlat20.x;
        let x_3063 : f32 = u_xlat8.x;
        let x_3065 : f32 = u_xlat81;
        u_xlat81 = ((x_3061 * x_3063) + x_3065);
        let x_3068 : vec4<f32> = u_xlat16;
        let x_3069 : vec2<f32> = vec2<f32>(x_3068.z, x_3068.w);
        let x_3071 : f32 = vs_INTERP3.z;
        txVec52 = vec3<f32>(x_3069.x, x_3069.y, x_3071);
        let x_3078 : vec3<f32> = txVec52;
        let x_3080 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3078.xy, x_3078.z);
        u_xlat8.x = x_3080;
        let x_3083 : f32 = u_xlat20.y;
        let x_3085 : f32 = u_xlat8.x;
        let x_3087 : f32 = u_xlat81;
        u_xlat81 = ((x_3083 * x_3085) + x_3087);
        let x_3090 : vec3<f32> = u_xlat33;
        let x_3091 : vec2<f32> = vec2<f32>(x_3090.x, x_3090.y);
        let x_3093 : f32 = vs_INTERP3.z;
        txVec53 = vec3<f32>(x_3091.x, x_3091.y, x_3093);
        let x_3100 : vec3<f32> = txVec53;
        let x_3102 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3100.xy, x_3100.z);
        u_xlat8.x = x_3102;
        let x_3105 : f32 = u_xlat20.z;
        let x_3107 : f32 = u_xlat8.x;
        let x_3109 : f32 = u_xlat81;
        u_xlat81 = ((x_3105 * x_3107) + x_3109);
        let x_3112 : vec4<f32> = u_xlat17;
        let x_3113 : vec2<f32> = vec2<f32>(x_3112.x, x_3112.y);
        let x_3115 : f32 = vs_INTERP3.z;
        txVec54 = vec3<f32>(x_3113.x, x_3113.y, x_3115);
        let x_3122 : vec3<f32> = txVec54;
        let x_3124 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3122.xy, x_3122.z);
        u_xlat8.x = x_3124;
        let x_3127 : f32 = u_xlat20.w;
        let x_3129 : f32 = u_xlat8.x;
        let x_3131 : f32 = u_xlat81;
        u_xlat81 = ((x_3127 * x_3129) + x_3131);
        let x_3134 : vec4<f32> = u_xlat11;
        let x_3135 : vec2<f32> = vec2<f32>(x_3134.x, x_3134.y);
        let x_3137 : f32 = vs_INTERP3.z;
        txVec55 = vec3<f32>(x_3135.x, x_3135.y, x_3137);
        let x_3144 : vec3<f32> = txVec55;
        let x_3146 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3144.xy, x_3144.z);
        u_xlat8.x = x_3146;
        let x_3149 : f32 = u_xlat7.x;
        let x_3151 : f32 = u_xlat8.x;
        let x_3153 : f32 = u_xlat81;
        u_xlat81 = ((x_3149 * x_3151) + x_3153);
        let x_3156 : vec4<f32> = u_xlat11;
        let x_3157 : vec2<f32> = vec2<f32>(x_3156.z, x_3156.w);
        let x_3159 : f32 = vs_INTERP3.z;
        txVec56 = vec3<f32>(x_3157.x, x_3157.y, x_3159);
        let x_3166 : vec3<f32> = txVec56;
        let x_3168 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3166.xy, x_3166.z);
        u_xlat7.x = x_3168;
        let x_3171 : f32 = u_xlat7.y;
        let x_3173 : f32 = u_xlat7.x;
        let x_3175 : f32 = u_xlat81;
        u_xlat81 = ((x_3171 * x_3173) + x_3175);
        let x_3178 : vec2<f32> = u_xlat60;
        let x_3180 : f32 = vs_INTERP3.z;
        txVec57 = vec3<f32>(x_3178.x, x_3178.y, x_3180);
        let x_3187 : vec3<f32> = txVec57;
        let x_3189 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3187.xy, x_3187.z);
        u_xlat7.x = x_3189;
        let x_3192 : f32 = u_xlat7.z;
        let x_3194 : f32 = u_xlat7.x;
        let x_3196 : f32 = u_xlat81;
        u_xlat81 = ((x_3192 * x_3194) + x_3196);
        let x_3199 : vec3<f32> = u_xlat31;
        let x_3200 : vec2<f32> = vec2<f32>(x_3199.x, x_3199.y);
        let x_3202 : f32 = vs_INTERP3.z;
        txVec58 = vec3<f32>(x_3200.x, x_3200.y, x_3202);
        let x_3209 : vec3<f32> = txVec58;
        let x_3211 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3209.xy, x_3209.z);
        u_xlat31.x = x_3211;
        let x_3214 : f32 = u_xlat7.w;
        let x_3216 : f32 = u_xlat31.x;
        let x_3218 : f32 = u_xlat81;
        u_xlat75 = ((x_3214 * x_3216) + x_3218);
      }
    }
  } else {
    let x_3222 : vec4<f32> = vs_INTERP3;
    let x_3223 : vec2<f32> = vec2<f32>(x_3222.x, x_3222.y);
    let x_3225 : f32 = vs_INTERP3.z;
    txVec59 = vec3<f32>(x_3223.x, x_3223.y, x_3225);
    let x_3232 : vec3<f32> = txVec59;
    let x_3234 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3232.xy, x_3232.z);
    u_xlat75 = x_3234;
  }
  let x_3235 : f32 = u_xlat75;
  let x_3237 : f32 = x_265.x_MainLightShadowParams.x;
  let x_3239 : f32 = u_xlat77;
  u_xlat75 = ((x_3235 * x_3237) + x_3239);
  let x_3242 : f32 = vs_INTERP3.z;
  u_xlatb77 = (0.0f >= x_3242);
  let x_3245 : f32 = vs_INTERP3.z;
  u_xlatb31 = (x_3245 >= 1.0f);
  let x_3247 : bool = u_xlatb77;
  let x_3248 : bool = u_xlatb31;
  u_xlatb77 = (x_3247 | x_3248);
  let x_3250 : bool = u_xlatb77;
  let x_3251 : f32 = u_xlat75;
  u_xlat75 = select(x_3251, 1.0f, x_3250);
  let x_3253 : vec3<f32> = vs_INTERP8;
  let x_3255 : vec3<f32> = x_75.x_WorldSpaceCameraPos;
  u_xlat31 = (x_3253 + -(x_3255));
  let x_3258 : vec3<f32> = u_xlat31;
  let x_3259 : vec3<f32> = u_xlat31;
  u_xlat77 = dot(x_3258, x_3259);
  let x_3261 : f32 = u_xlat77;
  let x_3263 : f32 = x_265.x_MainLightShadowParams.z;
  let x_3266 : f32 = x_265.x_MainLightShadowParams.w;
  u_xlat31.x = ((x_3261 * x_3263) + x_3266);
  let x_3270 : f32 = u_xlat31.x;
  u_xlat31.x = clamp(x_3270, 0.0f, 1.0f);
  let x_3273 : f32 = u_xlat75;
  u_xlat56 = (-(x_3273) + 1.0f);
  let x_3277 : f32 = u_xlat31.x;
  let x_3278 : f32 = u_xlat56;
  let x_3280 : f32 = u_xlat75;
  u_xlat75 = ((x_3277 * x_3278) + x_3280);
  let x_3282 : vec3<f32> = u_xlat2;
  let x_3284 : vec4<f32> = u_xlat3;
  u_xlat31.x = dot(-(x_3282), vec3<f32>(x_3284.x, x_3284.y, x_3284.z));
  let x_3289 : f32 = u_xlat31.x;
  let x_3291 : f32 = u_xlat31.x;
  u_xlat31.x = (x_3289 + x_3291);
  let x_3294 : vec4<f32> = u_xlat3;
  let x_3296 : vec3<f32> = u_xlat31;
  let x_3300 : vec3<f32> = u_xlat2;
  u_xlat31 = ((vec3<f32>(x_3294.x, x_3294.y, x_3294.z) * -(vec3<f32>(x_3296.x, x_3296.x, x_3296.x))) + -(x_3300));
  let x_3303 : vec4<f32> = u_xlat3;
  let x_3305 : vec3<f32> = u_xlat2;
  u_xlat7.x = dot(vec3<f32>(x_3303.x, x_3303.y, x_3303.z), x_3305);
  let x_3309 : f32 = u_xlat7.x;
  u_xlat7.x = clamp(x_3309, 0.0f, 1.0f);
  let x_3313 : f32 = u_xlat7.x;
  u_xlat7.x = (-(x_3313) + 1.0f);
  let x_3318 : f32 = u_xlat7.x;
  let x_3320 : f32 = u_xlat7.x;
  u_xlat7.x = (x_3318 * x_3320);
  let x_3324 : f32 = u_xlat7.x;
  let x_3326 : f32 = u_xlat7.x;
  u_xlat7.x = (x_3324 * x_3326);
  let x_3331 : f32 = u_xlat51.x;
  u_xlat32 = ((-(x_3331) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_3338 : f32 = u_xlat51.x;
  let x_3339 : f32 = u_xlat32;
  u_xlat51.x = (x_3338 * x_3339);
  let x_3343 : f32 = u_xlat51.x;
  u_xlat51.x = (x_3343 * 6.0f);
  let x_3355 : vec3<f32> = u_xlat31;
  let x_3357 : f32 = u_xlat51.x;
  let x_3358 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_3355, x_3357);
  u_xlat8 = x_3358;
  let x_3360 : f32 = u_xlat8.w;
  u_xlat51.x = (x_3360 + -1.0f);
  let x_3364 : f32 = x_148.unity_SpecCube0_HDR.w;
  let x_3366 : f32 = u_xlat51.x;
  u_xlat51.x = ((x_3364 * x_3366) + 1.0f);
  let x_3371 : f32 = u_xlat51.x;
  u_xlat51.x = max(x_3371, 0.0f);
  let x_3375 : f32 = u_xlat51.x;
  u_xlat51.x = log2(x_3375);
  let x_3379 : f32 = u_xlat51.x;
  let x_3381 : f32 = x_148.unity_SpecCube0_HDR.y;
  u_xlat51.x = (x_3379 * x_3381);
  let x_3385 : f32 = u_xlat51.x;
  u_xlat51.x = exp2(x_3385);
  let x_3389 : f32 = u_xlat51.x;
  let x_3391 : f32 = x_148.unity_SpecCube0_HDR.x;
  u_xlat51.x = (x_3389 * x_3391);
  let x_3394 : vec4<f32> = u_xlat8;
  let x_3396 : vec2<f32> = u_xlat51;
  u_xlat31 = (vec3<f32>(x_3394.x, x_3394.y, x_3394.z) * vec3<f32>(x_3396.x, x_3396.x, x_3396.x));
  let x_3399 : f32 = u_xlat76;
  let x_3401 : f32 = u_xlat76;
  u_xlat51 = ((vec2<f32>(x_3399, x_3399) * vec2<f32>(x_3401, x_3401)) + vec2<f32>(-1.0f, 1.0f));
  let x_3407 : f32 = u_xlat51.y;
  u_xlat76 = (1.0f / x_3407);
  let x_3409 : f32 = u_xlat79;
  u_xlat79 = (x_3409 + -0.03999999910593032837f);
  let x_3413 : f32 = u_xlat7.x;
  let x_3414 : f32 = u_xlat79;
  u_xlat79 = ((x_3413 * x_3414) + 0.03999999910593032837f);
  let x_3418 : f32 = u_xlat76;
  let x_3419 : f32 = u_xlat79;
  u_xlat76 = (x_3418 * x_3419);
  let x_3421 : f32 = u_xlat76;
  let x_3423 : vec3<f32> = u_xlat31;
  u_xlat31 = (vec3<f32>(x_3421, x_3421, x_3421) * x_3423);
  let x_3425 : vec3<f32> = u_xlat30;
  let x_3426 : vec3<f32> = u_xlat4;
  let x_3428 : vec3<f32> = u_xlat31;
  u_xlat30 = ((x_3425 * x_3426) + x_3428);
  let x_3430 : f32 = u_xlat75;
  let x_3432 : f32 = x_148.unity_LightData.z;
  u_xlat75 = (x_3430 * x_3432);
  let x_3434 : vec4<f32> = u_xlat3;
  let x_3437 : vec4<f32> = x_75.x_MainLightPosition;
  u_xlat76 = dot(vec3<f32>(x_3434.x, x_3434.y, x_3434.z), vec3<f32>(x_3437.x, x_3437.y, x_3437.z));
  let x_3440 : f32 = u_xlat76;
  u_xlat76 = clamp(x_3440, 0.0f, 1.0f);
  let x_3442 : f32 = u_xlat75;
  let x_3443 : f32 = u_xlat76;
  u_xlat75 = (x_3442 * x_3443);
  let x_3445 : f32 = u_xlat75;
  let x_3448 : vec4<f32> = x_75.x_MainLightColor;
  u_xlat31 = (vec3<f32>(x_3445, x_3445, x_3445) * vec3<f32>(x_3448.x, x_3448.y, x_3448.z));
  let x_3451 : vec3<f32> = u_xlat2;
  let x_3453 : vec4<f32> = x_75.x_MainLightPosition;
  let x_3455 : vec3<f32> = (x_3451 + vec3<f32>(x_3453.x, x_3453.y, x_3453.z));
  let x_3456 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3455.x, x_3455.y, x_3455.z, x_3456.w);
  let x_3458 : vec4<f32> = u_xlat7;
  let x_3460 : vec4<f32> = u_xlat7;
  u_xlat75 = dot(vec3<f32>(x_3458.x, x_3458.y, x_3458.z), vec3<f32>(x_3460.x, x_3460.y, x_3460.z));
  let x_3463 : f32 = u_xlat75;
  u_xlat75 = max(x_3463, 1.17549435e-38f);
  let x_3466 : f32 = u_xlat75;
  u_xlat75 = inverseSqrt(x_3466);
  let x_3468 : f32 = u_xlat75;
  let x_3470 : vec4<f32> = u_xlat7;
  let x_3472 : vec3<f32> = (vec3<f32>(x_3468, x_3468, x_3468) * vec3<f32>(x_3470.x, x_3470.y, x_3470.z));
  let x_3473 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3472.x, x_3472.y, x_3472.z, x_3473.w);
  let x_3475 : vec4<f32> = u_xlat3;
  let x_3477 : vec4<f32> = u_xlat7;
  u_xlat75 = dot(vec3<f32>(x_3475.x, x_3475.y, x_3475.z), vec3<f32>(x_3477.x, x_3477.y, x_3477.z));
  let x_3480 : f32 = u_xlat75;
  u_xlat75 = clamp(x_3480, 0.0f, 1.0f);
  let x_3483 : vec4<f32> = x_75.x_MainLightPosition;
  let x_3485 : vec4<f32> = u_xlat7;
  u_xlat76 = dot(vec3<f32>(x_3483.x, x_3483.y, x_3483.z), vec3<f32>(x_3485.x, x_3485.y, x_3485.z));
  let x_3488 : f32 = u_xlat76;
  u_xlat76 = clamp(x_3488, 0.0f, 1.0f);
  let x_3490 : f32 = u_xlat75;
  let x_3491 : f32 = u_xlat75;
  u_xlat75 = (x_3490 * x_3491);
  let x_3493 : f32 = u_xlat75;
  let x_3495 : f32 = u_xlat51.x;
  u_xlat75 = ((x_3493 * x_3495) + 1.00001001358032226562f);
  let x_3499 : f32 = u_xlat76;
  let x_3500 : f32 = u_xlat76;
  u_xlat76 = (x_3499 * x_3500);
  let x_3502 : f32 = u_xlat75;
  let x_3503 : f32 = u_xlat75;
  u_xlat75 = (x_3502 * x_3503);
  let x_3505 : f32 = u_xlat76;
  u_xlat76 = max(x_3505, 0.10000000149011611938f);
  let x_3508 : f32 = u_xlat75;
  let x_3509 : f32 = u_xlat76;
  u_xlat75 = (x_3508 * x_3509);
  let x_3512 : f32 = u_xlat5.x;
  let x_3513 : f32 = u_xlat75;
  u_xlat75 = (x_3512 * x_3513);
  let x_3515 : f32 = u_xlat78;
  let x_3516 : f32 = u_xlat75;
  u_xlat75 = (x_3515 / x_3516);
  let x_3518 : f32 = u_xlat75;
  let x_3522 : vec3<f32> = u_xlat4;
  let x_3523 : vec3<f32> = ((vec3<f32>(x_3518, x_3518, x_3518) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_3522);
  let x_3524 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3523.x, x_3523.y, x_3523.z, x_3524.w);
  let x_3526 : vec3<f32> = u_xlat31;
  let x_3527 : vec4<f32> = u_xlat7;
  u_xlat31 = (x_3526 * vec3<f32>(x_3527.x, x_3527.y, x_3527.z));
  let x_3532 : f32 = x_75.x_AdditionalLightsCount.x;
  let x_3534 : f32 = x_148.unity_LightData.y;
  u_xlat75 = min(x_3532, x_3534);
  let x_3537 : f32 = u_xlat75;
  u_xlatu75 = bitcast<u32>(i32(x_3537));
  let x_3540 : f32 = u_xlat77;
  let x_3543 : f32 = x_265.x_AdditionalShadowFadeParams.x;
  let x_3546 : f32 = x_265.x_AdditionalShadowFadeParams.y;
  u_xlat76 = ((x_3540 * x_3543) + x_3546);
  let x_3548 : f32 = u_xlat76;
  u_xlat76 = clamp(x_3548, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_3559 : u32 = u_xlatu_loop_1;
    let x_3560 : u32 = u_xlatu75;
    if ((x_3559 < x_3560)) {
    } else {
      break;
    }
    let x_3563 : u32 = u_xlatu_loop_1;
    u_xlatu79 = (x_3563 >> 2u);
    let x_3566 : u32 = u_xlatu_loop_1;
    u_xlati82 = bitcast<i32>((x_3566 & 3u));
    let x_3569 : u32 = u_xlatu79;
    let x_3572 : vec4<f32> = x_148.unity_LightIndices[bitcast<i32>(x_3569)];
    let x_3582 : i32 = u_xlati82;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_3587 : vec4<u32> = indexable[x_3582];
    u_xlat79 = dot(x_3572, bitcast<vec4<f32>>(x_3587));
    let x_3591 : f32 = u_xlat79;
    u_xlati79 = i32(x_3591);
    let x_3593 : vec3<f32> = vs_INTERP8;
    let x_3604 : i32 = u_xlati79;
    let x_3606 : vec4<f32> = x_3603.x_AdditionalLightsPosition[x_3604];
    let x_3609 : i32 = u_xlati79;
    let x_3611 : vec4<f32> = x_3603.x_AdditionalLightsPosition[x_3609];
    let x_3613 : vec3<f32> = ((-(x_3593) * vec3<f32>(x_3606.w, x_3606.w, x_3606.w)) + vec3<f32>(x_3611.x, x_3611.y, x_3611.z));
    let x_3614 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3613.x, x_3613.y, x_3613.z, x_3614.w);
    let x_3617 : vec4<f32> = u_xlat8;
    let x_3619 : vec4<f32> = u_xlat8;
    u_xlat82 = dot(vec3<f32>(x_3617.x, x_3617.y, x_3617.z), vec3<f32>(x_3619.x, x_3619.y, x_3619.z));
    let x_3622 : f32 = u_xlat82;
    u_xlat82 = max(x_3622, 0.00006103515625f);
    let x_3626 : f32 = u_xlat82;
    u_xlat83 = inverseSqrt(x_3626);
    let x_3628 : f32 = u_xlat83;
    let x_3630 : vec4<f32> = u_xlat8;
    let x_3632 : vec3<f32> = (vec3<f32>(x_3628, x_3628, x_3628) * vec3<f32>(x_3630.x, x_3630.y, x_3630.z));
    let x_3633 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3632.x, x_3632.y, x_3632.z, x_3633.w);
    let x_3636 : f32 = u_xlat82;
    u_xlat84 = (1.0f / x_3636);
    let x_3638 : f32 = u_xlat82;
    let x_3639 : i32 = u_xlati79;
    let x_3641 : f32 = x_3603.x_AdditionalLightsAttenuation[x_3639].x;
    u_xlat82 = (x_3638 * x_3641);
    let x_3643 : f32 = u_xlat82;
    let x_3645 : f32 = u_xlat82;
    u_xlat82 = ((-(x_3643) * x_3645) + 1.0f);
    let x_3648 : f32 = u_xlat82;
    u_xlat82 = max(x_3648, 0.0f);
    let x_3650 : f32 = u_xlat82;
    let x_3651 : f32 = u_xlat82;
    u_xlat82 = (x_3650 * x_3651);
    let x_3653 : f32 = u_xlat82;
    let x_3654 : f32 = u_xlat84;
    u_xlat82 = (x_3653 * x_3654);
    let x_3656 : i32 = u_xlati79;
    let x_3658 : vec4<f32> = x_3603.x_AdditionalLightsSpotDir[x_3656];
    let x_3660 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_3658.x, x_3658.y, x_3658.z), vec3<f32>(x_3660.x, x_3660.y, x_3660.z));
    let x_3663 : f32 = u_xlat84;
    let x_3664 : i32 = u_xlati79;
    let x_3666 : f32 = x_3603.x_AdditionalLightsAttenuation[x_3664].z;
    let x_3668 : i32 = u_xlati79;
    let x_3670 : f32 = x_3603.x_AdditionalLightsAttenuation[x_3668].w;
    u_xlat84 = ((x_3663 * x_3666) + x_3670);
    let x_3672 : f32 = u_xlat84;
    u_xlat84 = clamp(x_3672, 0.0f, 1.0f);
    let x_3674 : f32 = u_xlat84;
    let x_3675 : f32 = u_xlat84;
    u_xlat84 = (x_3674 * x_3675);
    let x_3677 : f32 = u_xlat82;
    let x_3678 : f32 = u_xlat84;
    u_xlat82 = (x_3677 * x_3678);
    let x_3682 : i32 = u_xlati79;
    let x_3684 : f32 = x_265.x_AdditionalShadowParams[x_3682].w;
    u_xlati84 = i32(x_3684);
    let x_3689 : i32 = u_xlati84;
    u_xlatb10.x = (x_3689 >= 0i);
    let x_3693 : bool = u_xlatb10.x;
    if (x_3693) {
      let x_3697 : i32 = u_xlati79;
      let x_3699 : f32 = x_265.x_AdditionalShadowParams[x_3697].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_3699, x_3699, x_3699, x_3699))));
      let x_3706 : bool = u_xlatb10.x;
      if (x_3706) {
        let x_3709 : vec4<f32> = u_xlat9;
        let x_3712 : vec4<f32> = u_xlat9;
        let x_3715 : vec4<bool> = (abs(vec4<f32>(x_3709.z, x_3709.z, x_3709.y, x_3709.z)) >= abs(vec4<f32>(x_3712.x, x_3712.y, x_3712.x, x_3712.x)));
        u_xlatb10 = vec3<bool>(x_3715.x, x_3715.y, x_3715.z);
        let x_3718 : bool = u_xlatb10.y;
        let x_3720 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_3718 & x_3720);
        let x_3724 : vec4<f32> = u_xlat9;
        let x_3727 : vec4<bool> = (-(vec4<f32>(x_3724.z, x_3724.y, x_3724.x, x_3724.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_3727.x, x_3727.y, x_3727.z);
        let x_3731 : bool = u_xlatb11.x;
        u_xlat35.x = select(4.0f, 5.0f, x_3731);
        let x_3736 : bool = u_xlatb11.y;
        u_xlat35.z = select(2.0f, 3.0f, x_3736);
        let x_3741 : bool = u_xlatb11.z;
        u_xlat11.x = select(0.0f, 1.0f, x_3741);
        let x_3745 : bool = u_xlatb10.z;
        if (x_3745) {
          let x_3750 : f32 = u_xlat35.z;
          x_3746 = x_3750;
        } else {
          let x_3753 : f32 = u_xlat11.x;
          x_3746 = x_3753;
        }
        let x_3754 : f32 = x_3746;
        u_xlat60.x = x_3754;
        let x_3757 : bool = u_xlatb10.x;
        if (x_3757) {
          let x_3762 : f32 = u_xlat35.x;
          x_3758 = x_3762;
        } else {
          let x_3765 : f32 = u_xlat60.x;
          x_3758 = x_3765;
        }
        let x_3766 : f32 = x_3758;
        u_xlat10.x = x_3766;
        let x_3768 : i32 = u_xlati79;
        let x_3770 : f32 = x_265.x_AdditionalShadowParams[x_3768].w;
        u_xlat35.x = trunc(x_3770);
        let x_3774 : f32 = u_xlat10.x;
        let x_3776 : f32 = u_xlat35.x;
        u_xlat10.x = (x_3774 + x_3776);
        let x_3780 : f32 = u_xlat10.x;
        u_xlati84 = i32(x_3780);
      }
      let x_3782 : i32 = u_xlati84;
      u_xlati84 = (x_3782 << bitcast<u32>(2i));
      let x_3784 : vec3<f32> = vs_INTERP8;
      let x_3787 : i32 = u_xlati84;
      let x_3790 : i32 = u_xlati84;
      let x_3794 : vec4<f32> = x_265.x_AdditionalLightsWorldToShadow[((x_3787 + 1i) / 4i)][((x_3790 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_3784.y, x_3784.y, x_3784.y, x_3784.y) * x_3794);
      let x_3796 : i32 = u_xlati84;
      let x_3798 : i32 = u_xlati84;
      let x_3801 : vec4<f32> = x_265.x_AdditionalLightsWorldToShadow[(x_3796 / 4i)][(x_3798 % 4i)];
      let x_3802 : vec3<f32> = vs_INTERP8;
      let x_3805 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_3801 * vec4<f32>(x_3802.x, x_3802.x, x_3802.x, x_3802.x)) + x_3805);
      let x_3807 : i32 = u_xlati84;
      let x_3810 : i32 = u_xlati84;
      let x_3814 : vec4<f32> = x_265.x_AdditionalLightsWorldToShadow[((x_3807 + 2i) / 4i)][((x_3810 + 2i) % 4i)];
      let x_3815 : vec3<f32> = vs_INTERP8;
      let x_3818 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_3814 * vec4<f32>(x_3815.z, x_3815.z, x_3815.z, x_3815.z)) + x_3818);
      let x_3820 : vec4<f32> = u_xlat10;
      let x_3821 : i32 = u_xlati84;
      let x_3824 : i32 = u_xlati84;
      let x_3828 : vec4<f32> = x_265.x_AdditionalLightsWorldToShadow[((x_3821 + 3i) / 4i)][((x_3824 + 3i) % 4i)];
      u_xlat10 = (x_3820 + x_3828);
      let x_3830 : vec4<f32> = u_xlat10;
      let x_3832 : vec4<f32> = u_xlat10;
      let x_3834 : vec3<f32> = (vec3<f32>(x_3830.x, x_3830.y, x_3830.z) / vec3<f32>(x_3832.w, x_3832.w, x_3832.w));
      let x_3835 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_3834.x, x_3834.y, x_3834.z, x_3835.w);
      let x_3838 : i32 = u_xlati79;
      let x_3840 : f32 = x_265.x_AdditionalShadowParams[x_3838].y;
      u_xlatb84 = (0.0f < x_3840);
      let x_3842 : bool = u_xlatb84;
      if (x_3842) {
        let x_3845 : i32 = u_xlati79;
        let x_3847 : f32 = x_265.x_AdditionalShadowParams[x_3845].y;
        u_xlatb84 = (1.0f == x_3847);
        let x_3849 : bool = u_xlatb84;
        if (x_3849) {
          let x_3852 : vec4<f32> = u_xlat10;
          let x_3856 : vec4<f32> = x_265.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_3852.x, x_3852.y, x_3852.x, x_3852.y) + x_3856);
          let x_3859 : vec4<f32> = u_xlat11;
          let x_3860 : vec2<f32> = vec2<f32>(x_3859.x, x_3859.y);
          let x_3862 : f32 = u_xlat10.z;
          txVec60 = vec3<f32>(x_3860.x, x_3860.y, x_3862);
          let x_3870 : vec3<f32> = txVec60;
          let x_3872 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3870.xy, x_3870.z);
          u_xlat12.x = x_3872;
          let x_3875 : vec4<f32> = u_xlat11;
          let x_3876 : vec2<f32> = vec2<f32>(x_3875.z, x_3875.w);
          let x_3878 : f32 = u_xlat10.z;
          txVec61 = vec3<f32>(x_3876.x, x_3876.y, x_3878);
          let x_3885 : vec3<f32> = txVec61;
          let x_3887 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3885.xy, x_3885.z);
          u_xlat12.y = x_3887;
          let x_3889 : vec4<f32> = u_xlat10;
          let x_3893 : vec4<f32> = x_265.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_3889.x, x_3889.y, x_3889.x, x_3889.y) + x_3893);
          let x_3896 : vec4<f32> = u_xlat11;
          let x_3897 : vec2<f32> = vec2<f32>(x_3896.x, x_3896.y);
          let x_3899 : f32 = u_xlat10.z;
          txVec62 = vec3<f32>(x_3897.x, x_3897.y, x_3899);
          let x_3906 : vec3<f32> = txVec62;
          let x_3908 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3906.xy, x_3906.z);
          u_xlat12.z = x_3908;
          let x_3911 : vec4<f32> = u_xlat11;
          let x_3912 : vec2<f32> = vec2<f32>(x_3911.z, x_3911.w);
          let x_3914 : f32 = u_xlat10.z;
          txVec63 = vec3<f32>(x_3912.x, x_3912.y, x_3914);
          let x_3921 : vec3<f32> = txVec63;
          let x_3923 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3921.xy, x_3921.z);
          u_xlat12.w = x_3923;
          let x_3925 : vec4<f32> = u_xlat12;
          u_xlat84 = dot(x_3925, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_3929 : i32 = u_xlati79;
          let x_3931 : f32 = x_265.x_AdditionalShadowParams[x_3929].y;
          u_xlatb85 = (2.0f == x_3931);
          let x_3933 : bool = u_xlatb85;
          if (x_3933) {
            let x_3936 : vec4<f32> = u_xlat10;
            let x_3940 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_3943 : vec2<f32> = ((vec2<f32>(x_3936.x, x_3936.y) * vec2<f32>(x_3940.z, x_3940.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3944 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3943.x, x_3943.y, x_3944.z, x_3944.w);
            let x_3946 : vec4<f32> = u_xlat11;
            let x_3948 : vec2<f32> = floor(vec2<f32>(x_3946.x, x_3946.y));
            let x_3949 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3948.x, x_3948.y, x_3949.z, x_3949.w);
            let x_3952 : vec4<f32> = u_xlat10;
            let x_3955 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_3958 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_3952.x, x_3952.y) * vec2<f32>(x_3955.z, x_3955.w)) + -(vec2<f32>(x_3958.x, x_3958.y)));
            let x_3962 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_3962.x, x_3962.x, x_3962.y, x_3962.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3965 : vec4<f32> = u_xlat12;
            let x_3967 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3965.x, x_3965.x, x_3965.z, x_3965.z) * vec4<f32>(x_3967.x, x_3967.x, x_3967.z, x_3967.z));
            let x_3970 : vec4<f32> = u_xlat13;
            let x_3972 : vec2<f32> = (vec2<f32>(x_3970.y, x_3970.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_3973 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3972.x, x_3973.y, x_3972.y, x_3973.w);
            let x_3975 : vec4<f32> = u_xlat13;
            let x_3978 : vec2<f32> = u_xlat61;
            let x_3980 : vec2<f32> = ((vec2<f32>(x_3975.x, x_3975.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3978));
            let x_3981 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3980.x, x_3980.y, x_3981.z, x_3981.w);
            let x_3983 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_3983) + vec2<f32>(1.0f, 1.0f));
            let x_3986 : vec2<f32> = u_xlat61;
            let x_3987 : vec2<f32> = min(x_3986, vec2<f32>(0.0f, 0.0f));
            let x_3988 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3987.x, x_3987.y, x_3988.z, x_3988.w);
            let x_3990 : vec4<f32> = u_xlat14;
            let x_3993 : vec4<f32> = u_xlat14;
            let x_3996 : vec2<f32> = u_xlat63;
            let x_3997 : vec2<f32> = ((-(vec2<f32>(x_3990.x, x_3990.y)) * vec2<f32>(x_3993.x, x_3993.y)) + x_3996);
            let x_3998 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3997.x, x_3997.y, x_3998.z, x_3998.w);
            let x_4000 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_4000, vec2<f32>(0.0f, 0.0f));
            let x_4002 : vec2<f32> = u_xlat61;
            let x_4004 : vec2<f32> = u_xlat61;
            let x_4006 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_4002) * x_4004) + vec2<f32>(x_4006.y, x_4006.w));
            let x_4009 : vec4<f32> = u_xlat14;
            let x_4011 : vec2<f32> = (vec2<f32>(x_4009.x, x_4009.y) + vec2<f32>(1.0f, 1.0f));
            let x_4012 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4011.x, x_4011.y, x_4012.z, x_4012.w);
            let x_4014 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_4014 + vec2<f32>(1.0f, 1.0f));
            let x_4016 : vec4<f32> = u_xlat13;
            let x_4018 : vec2<f32> = (vec2<f32>(x_4016.x, x_4016.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4019 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4018.x, x_4018.y, x_4019.z, x_4019.w);
            let x_4021 : vec2<f32> = u_xlat63;
            let x_4022 : vec2<f32> = (x_4021 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4023 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4022.x, x_4022.y, x_4023.z, x_4023.w);
            let x_4025 : vec4<f32> = u_xlat14;
            let x_4027 : vec2<f32> = (vec2<f32>(x_4025.x, x_4025.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4028 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4027.x, x_4027.y, x_4028.z, x_4028.w);
            let x_4030 : vec2<f32> = u_xlat61;
            let x_4031 : vec2<f32> = (x_4030 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4032 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4031.x, x_4031.y, x_4032.z, x_4032.w);
            let x_4034 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_4034.y, x_4034.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4038 : f32 = u_xlat14.x;
            u_xlat15.z = x_4038;
            let x_4041 : f32 = u_xlat61.x;
            u_xlat15.w = x_4041;
            let x_4044 : f32 = u_xlat16.x;
            u_xlat13.z = x_4044;
            let x_4047 : f32 = u_xlat12.x;
            u_xlat13.w = x_4047;
            let x_4049 : vec4<f32> = u_xlat13;
            let x_4051 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_4049.z, x_4049.w, x_4049.x, x_4049.z) + vec4<f32>(x_4051.z, x_4051.w, x_4051.x, x_4051.z));
            let x_4055 : f32 = u_xlat15.y;
            u_xlat14.z = x_4055;
            let x_4058 : f32 = u_xlat61.y;
            u_xlat14.w = x_4058;
            let x_4061 : f32 = u_xlat13.y;
            u_xlat16.z = x_4061;
            let x_4064 : f32 = u_xlat12.z;
            u_xlat16.w = x_4064;
            let x_4066 : vec4<f32> = u_xlat14;
            let x_4068 : vec4<f32> = u_xlat16;
            let x_4070 : vec3<f32> = (vec3<f32>(x_4066.z, x_4066.y, x_4066.w) + vec3<f32>(x_4068.z, x_4068.y, x_4068.w));
            let x_4071 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4070.x, x_4070.y, x_4070.z, x_4071.w);
            let x_4073 : vec4<f32> = u_xlat13;
            let x_4075 : vec4<f32> = u_xlat17;
            let x_4077 : vec3<f32> = (vec3<f32>(x_4073.x, x_4073.z, x_4073.w) / vec3<f32>(x_4075.z, x_4075.w, x_4075.y));
            let x_4078 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4077.x, x_4077.y, x_4077.z, x_4078.w);
            let x_4080 : vec4<f32> = u_xlat13;
            let x_4082 : vec3<f32> = (vec3<f32>(x_4080.x, x_4080.y, x_4080.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4083 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4082.x, x_4082.y, x_4082.z, x_4083.w);
            let x_4085 : vec4<f32> = u_xlat16;
            let x_4087 : vec4<f32> = u_xlat12;
            let x_4089 : vec3<f32> = (vec3<f32>(x_4085.z, x_4085.y, x_4085.w) / vec3<f32>(x_4087.x, x_4087.y, x_4087.z));
            let x_4090 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4089.x, x_4089.y, x_4089.z, x_4090.w);
            let x_4092 : vec4<f32> = u_xlat14;
            let x_4094 : vec3<f32> = (vec3<f32>(x_4092.x, x_4092.y, x_4092.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4095 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4094.x, x_4094.y, x_4094.z, x_4095.w);
            let x_4097 : vec4<f32> = u_xlat13;
            let x_4100 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4102 : vec3<f32> = (vec3<f32>(x_4097.y, x_4097.x, x_4097.z) * vec3<f32>(x_4100.x, x_4100.x, x_4100.x));
            let x_4103 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4102.x, x_4102.y, x_4102.z, x_4103.w);
            let x_4105 : vec4<f32> = u_xlat14;
            let x_4108 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4110 : vec3<f32> = (vec3<f32>(x_4105.x, x_4105.y, x_4105.z) * vec3<f32>(x_4108.y, x_4108.y, x_4108.y));
            let x_4111 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4110.x, x_4110.y, x_4110.z, x_4111.w);
            let x_4114 : f32 = u_xlat14.x;
            u_xlat13.w = x_4114;
            let x_4116 : vec4<f32> = u_xlat11;
            let x_4119 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4122 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_4116.x, x_4116.y, x_4116.x, x_4116.y) * vec4<f32>(x_4119.x, x_4119.y, x_4119.x, x_4119.y)) + vec4<f32>(x_4122.y, x_4122.w, x_4122.x, x_4122.w));
            let x_4125 : vec4<f32> = u_xlat11;
            let x_4128 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4131 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_4125.x, x_4125.y) * vec2<f32>(x_4128.x, x_4128.y)) + vec2<f32>(x_4131.z, x_4131.w));
            let x_4135 : f32 = u_xlat13.y;
            u_xlat14.w = x_4135;
            let x_4137 : vec4<f32> = u_xlat14;
            let x_4138 : vec2<f32> = vec2<f32>(x_4137.y, x_4137.z);
            let x_4139 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4139.x, x_4138.x, x_4139.z, x_4138.y);
            let x_4141 : vec4<f32> = u_xlat11;
            let x_4144 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4147 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_4141.x, x_4141.y, x_4141.x, x_4141.y) * vec4<f32>(x_4144.x, x_4144.y, x_4144.x, x_4144.y)) + vec4<f32>(x_4147.x, x_4147.y, x_4147.z, x_4147.y));
            let x_4150 : vec4<f32> = u_xlat11;
            let x_4153 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4156 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_4150.x, x_4150.y, x_4150.x, x_4150.y) * vec4<f32>(x_4153.x, x_4153.y, x_4153.x, x_4153.y)) + vec4<f32>(x_4156.w, x_4156.y, x_4156.w, x_4156.z));
            let x_4159 : vec4<f32> = u_xlat11;
            let x_4162 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4165 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_4159.x, x_4159.y, x_4159.x, x_4159.y) * vec4<f32>(x_4162.x, x_4162.y, x_4162.x, x_4162.y)) + vec4<f32>(x_4165.x, x_4165.w, x_4165.z, x_4165.w));
            let x_4168 : vec4<f32> = u_xlat12;
            let x_4170 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_4168.x, x_4168.x, x_4168.x, x_4168.y) * vec4<f32>(x_4170.z, x_4170.w, x_4170.y, x_4170.z));
            let x_4173 : vec4<f32> = u_xlat12;
            let x_4175 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_4173.y, x_4173.y, x_4173.z, x_4173.z) * x_4175);
            let x_4179 : f32 = u_xlat12.z;
            let x_4181 : f32 = u_xlat17.y;
            u_xlat85 = (x_4179 * x_4181);
            let x_4184 : vec4<f32> = u_xlat15;
            let x_4185 : vec2<f32> = vec2<f32>(x_4184.x, x_4184.y);
            let x_4187 : f32 = u_xlat10.z;
            txVec64 = vec3<f32>(x_4185.x, x_4185.y, x_4187);
            let x_4194 : vec3<f32> = txVec64;
            let x_4196 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4194.xy, x_4194.z);
            u_xlat11.x = x_4196;
            let x_4199 : vec4<f32> = u_xlat15;
            let x_4200 : vec2<f32> = vec2<f32>(x_4199.z, x_4199.w);
            let x_4202 : f32 = u_xlat10.z;
            txVec65 = vec3<f32>(x_4200.x, x_4200.y, x_4202);
            let x_4210 : vec3<f32> = txVec65;
            let x_4212 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4210.xy, x_4210.z);
            u_xlat36 = x_4212;
            let x_4213 : f32 = u_xlat36;
            let x_4215 : f32 = u_xlat18.y;
            u_xlat36 = (x_4213 * x_4215);
            let x_4218 : f32 = u_xlat18.x;
            let x_4220 : f32 = u_xlat11.x;
            let x_4222 : f32 = u_xlat36;
            u_xlat11.x = ((x_4218 * x_4220) + x_4222);
            let x_4226 : vec2<f32> = u_xlat61;
            let x_4228 : f32 = u_xlat10.z;
            txVec66 = vec3<f32>(x_4226.x, x_4226.y, x_4228);
            let x_4235 : vec3<f32> = txVec66;
            let x_4237 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4235.xy, x_4235.z);
            u_xlat36 = x_4237;
            let x_4239 : f32 = u_xlat18.z;
            let x_4240 : f32 = u_xlat36;
            let x_4243 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_4239 * x_4240) + x_4243);
            let x_4247 : vec4<f32> = u_xlat14;
            let x_4248 : vec2<f32> = vec2<f32>(x_4247.x, x_4247.y);
            let x_4250 : f32 = u_xlat10.z;
            txVec67 = vec3<f32>(x_4248.x, x_4248.y, x_4250);
            let x_4257 : vec3<f32> = txVec67;
            let x_4259 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4257.xy, x_4257.z);
            u_xlat36 = x_4259;
            let x_4261 : f32 = u_xlat18.w;
            let x_4262 : f32 = u_xlat36;
            let x_4265 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_4261 * x_4262) + x_4265);
            let x_4269 : vec4<f32> = u_xlat16;
            let x_4270 : vec2<f32> = vec2<f32>(x_4269.x, x_4269.y);
            let x_4272 : f32 = u_xlat10.z;
            txVec68 = vec3<f32>(x_4270.x, x_4270.y, x_4272);
            let x_4279 : vec3<f32> = txVec68;
            let x_4281 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4279.xy, x_4279.z);
            u_xlat36 = x_4281;
            let x_4283 : f32 = u_xlat19.x;
            let x_4284 : f32 = u_xlat36;
            let x_4287 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_4283 * x_4284) + x_4287);
            let x_4291 : vec4<f32> = u_xlat16;
            let x_4292 : vec2<f32> = vec2<f32>(x_4291.z, x_4291.w);
            let x_4294 : f32 = u_xlat10.z;
            txVec69 = vec3<f32>(x_4292.x, x_4292.y, x_4294);
            let x_4301 : vec3<f32> = txVec69;
            let x_4303 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4301.xy, x_4301.z);
            u_xlat36 = x_4303;
            let x_4305 : f32 = u_xlat19.y;
            let x_4306 : f32 = u_xlat36;
            let x_4309 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_4305 * x_4306) + x_4309);
            let x_4313 : vec4<f32> = u_xlat14;
            let x_4314 : vec2<f32> = vec2<f32>(x_4313.z, x_4313.w);
            let x_4316 : f32 = u_xlat10.z;
            txVec70 = vec3<f32>(x_4314.x, x_4314.y, x_4316);
            let x_4323 : vec3<f32> = txVec70;
            let x_4325 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4323.xy, x_4323.z);
            u_xlat36 = x_4325;
            let x_4327 : f32 = u_xlat19.z;
            let x_4328 : f32 = u_xlat36;
            let x_4331 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_4327 * x_4328) + x_4331);
            let x_4335 : vec4<f32> = u_xlat13;
            let x_4336 : vec2<f32> = vec2<f32>(x_4335.x, x_4335.y);
            let x_4338 : f32 = u_xlat10.z;
            txVec71 = vec3<f32>(x_4336.x, x_4336.y, x_4338);
            let x_4345 : vec3<f32> = txVec71;
            let x_4347 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4345.xy, x_4345.z);
            u_xlat36 = x_4347;
            let x_4349 : f32 = u_xlat19.w;
            let x_4350 : f32 = u_xlat36;
            let x_4353 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_4349 * x_4350) + x_4353);
            let x_4357 : vec4<f32> = u_xlat13;
            let x_4358 : vec2<f32> = vec2<f32>(x_4357.z, x_4357.w);
            let x_4360 : f32 = u_xlat10.z;
            txVec72 = vec3<f32>(x_4358.x, x_4358.y, x_4360);
            let x_4367 : vec3<f32> = txVec72;
            let x_4369 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4367.xy, x_4367.z);
            u_xlat36 = x_4369;
            let x_4370 : f32 = u_xlat85;
            let x_4371 : f32 = u_xlat36;
            let x_4374 : f32 = u_xlat11.x;
            u_xlat84 = ((x_4370 * x_4371) + x_4374);
          } else {
            let x_4377 : vec4<f32> = u_xlat10;
            let x_4380 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4383 : vec2<f32> = ((vec2<f32>(x_4377.x, x_4377.y) * vec2<f32>(x_4380.z, x_4380.w)) + vec2<f32>(0.5f, 0.5f));
            let x_4384 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_4383.x, x_4383.y, x_4384.z, x_4384.w);
            let x_4386 : vec4<f32> = u_xlat11;
            let x_4388 : vec2<f32> = floor(vec2<f32>(x_4386.x, x_4386.y));
            let x_4389 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_4388.x, x_4388.y, x_4389.z, x_4389.w);
            let x_4391 : vec4<f32> = u_xlat10;
            let x_4394 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4397 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_4391.x, x_4391.y) * vec2<f32>(x_4394.z, x_4394.w)) + -(vec2<f32>(x_4397.x, x_4397.y)));
            let x_4401 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_4401.x, x_4401.x, x_4401.y, x_4401.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_4404 : vec4<f32> = u_xlat12;
            let x_4406 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_4404.x, x_4404.x, x_4404.z, x_4404.z) * vec4<f32>(x_4406.x, x_4406.x, x_4406.z, x_4406.z));
            let x_4409 : vec4<f32> = u_xlat13;
            let x_4411 : vec2<f32> = (vec2<f32>(x_4409.y, x_4409.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_4412 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4412.x, x_4411.x, x_4412.z, x_4411.y);
            let x_4414 : vec4<f32> = u_xlat13;
            let x_4417 : vec2<f32> = u_xlat61;
            let x_4419 : vec2<f32> = ((vec2<f32>(x_4414.x, x_4414.z) * vec2<f32>(0.5f, 0.5f)) + -(x_4417));
            let x_4420 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4419.x, x_4420.y, x_4419.y, x_4420.w);
            let x_4422 : vec2<f32> = u_xlat61;
            let x_4424 : vec2<f32> = (-(x_4422) + vec2<f32>(1.0f, 1.0f));
            let x_4425 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4424.x, x_4424.y, x_4425.z, x_4425.w);
            let x_4427 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_4427, vec2<f32>(0.0f, 0.0f));
            let x_4429 : vec2<f32> = u_xlat63;
            let x_4431 : vec2<f32> = u_xlat63;
            let x_4433 : vec4<f32> = u_xlat13;
            let x_4435 : vec2<f32> = ((-(x_4429) * x_4431) + vec2<f32>(x_4433.x, x_4433.y));
            let x_4436 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4435.x, x_4435.y, x_4436.z, x_4436.w);
            let x_4438 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_4438, vec2<f32>(0.0f, 0.0f));
            let x_4441 : vec2<f32> = u_xlat63;
            let x_4443 : vec2<f32> = u_xlat63;
            let x_4445 : vec4<f32> = u_xlat12;
            let x_4447 : vec2<f32> = ((-(x_4441) * x_4443) + vec2<f32>(x_4445.y, x_4445.w));
            let x_4448 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_4447.x, x_4448.y, x_4447.y);
            let x_4450 : vec4<f32> = u_xlat13;
            let x_4452 : vec2<f32> = (vec2<f32>(x_4450.x, x_4450.y) + vec2<f32>(2.0f, 2.0f));
            let x_4453 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4452.x, x_4452.y, x_4453.z, x_4453.w);
            let x_4455 : vec3<f32> = u_xlat37;
            let x_4457 : vec2<f32> = (vec2<f32>(x_4455.x, x_4455.z) + vec2<f32>(2.0f, 2.0f));
            let x_4458 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4458.x, x_4457.x, x_4458.z, x_4457.y);
            let x_4461 : f32 = u_xlat12.y;
            u_xlat15.z = (x_4461 * 0.08163200318813323975f);
            let x_4464 : vec4<f32> = u_xlat12;
            let x_4466 : vec3<f32> = (vec3<f32>(x_4464.z, x_4464.x, x_4464.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_4467 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4466.x, x_4466.y, x_4466.z, x_4467.w);
            let x_4469 : vec4<f32> = u_xlat13;
            let x_4471 : vec2<f32> = (vec2<f32>(x_4469.x, x_4469.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_4472 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4471.x, x_4471.y, x_4472.z, x_4472.w);
            let x_4475 : f32 = u_xlat16.y;
            u_xlat15.x = x_4475;
            let x_4477 : vec2<f32> = u_xlat61;
            let x_4480 : vec2<f32> = ((vec2<f32>(x_4477.x, x_4477.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4481 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4481.x, x_4480.x, x_4481.z, x_4480.y);
            let x_4483 : vec2<f32> = u_xlat61;
            let x_4486 : vec2<f32> = ((vec2<f32>(x_4483.x, x_4483.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4487 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4486.x, x_4487.y, x_4486.y, x_4487.w);
            let x_4490 : f32 = u_xlat12.x;
            u_xlat13.y = x_4490;
            let x_4493 : f32 = u_xlat14.y;
            u_xlat13.w = x_4493;
            let x_4495 : vec4<f32> = u_xlat13;
            let x_4496 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_4495 + x_4496);
            let x_4498 : vec2<f32> = u_xlat61;
            let x_4501 : vec2<f32> = ((vec2<f32>(x_4498.y, x_4498.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4502 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4502.x, x_4501.x, x_4502.z, x_4501.y);
            let x_4504 : vec2<f32> = u_xlat61;
            let x_4507 : vec2<f32> = ((vec2<f32>(x_4504.y, x_4504.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4508 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4507.x, x_4508.y, x_4507.y, x_4508.w);
            let x_4511 : f32 = u_xlat12.y;
            u_xlat14.y = x_4511;
            let x_4513 : vec4<f32> = u_xlat14;
            let x_4514 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_4513 + x_4514);
            let x_4516 : vec4<f32> = u_xlat13;
            let x_4517 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_4516 / x_4517);
            let x_4519 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_4519 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4521 : vec4<f32> = u_xlat14;
            let x_4522 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_4521 / x_4522);
            let x_4524 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_4524 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4526 : vec4<f32> = u_xlat13;
            let x_4529 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_4526.w, x_4526.x, x_4526.y, x_4526.z) * vec4<f32>(x_4529.x, x_4529.x, x_4529.x, x_4529.x));
            let x_4532 : vec4<f32> = u_xlat14;
            let x_4535 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_4532.x, x_4532.w, x_4532.y, x_4532.z) * vec4<f32>(x_4535.y, x_4535.y, x_4535.y, x_4535.y));
            let x_4538 : vec4<f32> = u_xlat13;
            let x_4539 : vec3<f32> = vec3<f32>(x_4538.y, x_4538.z, x_4538.w);
            let x_4540 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4539.x, x_4540.y, x_4539.y, x_4539.z);
            let x_4543 : f32 = u_xlat14.x;
            u_xlat16.y = x_4543;
            let x_4545 : vec4<f32> = u_xlat11;
            let x_4548 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4551 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_4545.x, x_4545.y, x_4545.x, x_4545.y) * vec4<f32>(x_4548.x, x_4548.y, x_4548.x, x_4548.y)) + vec4<f32>(x_4551.x, x_4551.y, x_4551.z, x_4551.y));
            let x_4554 : vec4<f32> = u_xlat11;
            let x_4557 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4560 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_4554.x, x_4554.y) * vec2<f32>(x_4557.x, x_4557.y)) + vec2<f32>(x_4560.w, x_4560.y));
            let x_4564 : f32 = u_xlat16.y;
            u_xlat13.y = x_4564;
            let x_4567 : f32 = u_xlat14.z;
            u_xlat16.y = x_4567;
            let x_4569 : vec4<f32> = u_xlat11;
            let x_4572 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4575 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_4569.x, x_4569.y, x_4569.x, x_4569.y) * vec4<f32>(x_4572.x, x_4572.y, x_4572.x, x_4572.y)) + vec4<f32>(x_4575.x, x_4575.y, x_4575.z, x_4575.y));
            let x_4578 : vec4<f32> = u_xlat11;
            let x_4581 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4584 : vec4<f32> = u_xlat16;
            let x_4586 : vec2<f32> = ((vec2<f32>(x_4578.x, x_4578.y) * vec2<f32>(x_4581.x, x_4581.y)) + vec2<f32>(x_4584.w, x_4584.y));
            let x_4587 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_4586.x, x_4586.y, x_4587.z, x_4587.w);
            let x_4590 : f32 = u_xlat16.y;
            u_xlat13.z = x_4590;
            let x_4592 : vec4<f32> = u_xlat11;
            let x_4595 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4598 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_4592.x, x_4592.y, x_4592.x, x_4592.y) * vec4<f32>(x_4595.x, x_4595.y, x_4595.x, x_4595.y)) + vec4<f32>(x_4598.x, x_4598.y, x_4598.x, x_4598.z));
            let x_4602 : f32 = u_xlat14.w;
            u_xlat16.y = x_4602;
            let x_4605 : vec4<f32> = u_xlat11;
            let x_4608 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4611 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_4605.x, x_4605.y, x_4605.x, x_4605.y) * vec4<f32>(x_4608.x, x_4608.y, x_4608.x, x_4608.y)) + vec4<f32>(x_4611.x, x_4611.y, x_4611.z, x_4611.y));
            let x_4615 : vec4<f32> = u_xlat11;
            let x_4618 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4621 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_4615.x, x_4615.y) * vec2<f32>(x_4618.x, x_4618.y)) + vec2<f32>(x_4621.w, x_4621.y));
            let x_4625 : f32 = u_xlat16.y;
            u_xlat13.w = x_4625;
            let x_4628 : vec4<f32> = u_xlat11;
            let x_4631 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4634 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_4628.x, x_4628.y) * vec2<f32>(x_4631.x, x_4631.y)) + vec2<f32>(x_4634.x, x_4634.w));
            let x_4637 : vec4<f32> = u_xlat16;
            let x_4638 : vec3<f32> = vec3<f32>(x_4637.x, x_4637.z, x_4637.w);
            let x_4639 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4638.x, x_4639.y, x_4638.y, x_4638.z);
            let x_4641 : vec4<f32> = u_xlat11;
            let x_4644 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4647 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_4641.x, x_4641.y, x_4641.x, x_4641.y) * vec4<f32>(x_4644.x, x_4644.y, x_4644.x, x_4644.y)) + vec4<f32>(x_4647.x, x_4647.y, x_4647.z, x_4647.y));
            let x_4651 : vec4<f32> = u_xlat11;
            let x_4654 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4657 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_4651.x, x_4651.y) * vec2<f32>(x_4654.x, x_4654.y)) + vec2<f32>(x_4657.w, x_4657.y));
            let x_4661 : f32 = u_xlat13.x;
            u_xlat14.x = x_4661;
            let x_4663 : vec4<f32> = u_xlat11;
            let x_4666 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4669 : vec4<f32> = u_xlat14;
            let x_4671 : vec2<f32> = ((vec2<f32>(x_4663.x, x_4663.y) * vec2<f32>(x_4666.x, x_4666.y)) + vec2<f32>(x_4669.x, x_4669.y));
            let x_4672 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_4671.x, x_4671.y, x_4672.z, x_4672.w);
            let x_4675 : vec4<f32> = u_xlat12;
            let x_4677 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_4675.x, x_4675.x, x_4675.x, x_4675.x) * x_4677);
            let x_4680 : vec4<f32> = u_xlat12;
            let x_4682 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_4680.y, x_4680.y, x_4680.y, x_4680.y) * x_4682);
            let x_4685 : vec4<f32> = u_xlat12;
            let x_4687 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_4685.z, x_4685.z, x_4685.z, x_4685.z) * x_4687);
            let x_4689 : vec4<f32> = u_xlat12;
            let x_4691 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_4689.w, x_4689.w, x_4689.w, x_4689.w) * x_4691);
            let x_4694 : vec4<f32> = u_xlat17;
            let x_4695 : vec2<f32> = vec2<f32>(x_4694.x, x_4694.y);
            let x_4697 : f32 = u_xlat10.z;
            txVec73 = vec3<f32>(x_4695.x, x_4695.y, x_4697);
            let x_4704 : vec3<f32> = txVec73;
            let x_4706 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4704.xy, x_4704.z);
            u_xlat85 = x_4706;
            let x_4708 : vec4<f32> = u_xlat17;
            let x_4709 : vec2<f32> = vec2<f32>(x_4708.z, x_4708.w);
            let x_4711 : f32 = u_xlat10.z;
            txVec74 = vec3<f32>(x_4709.x, x_4709.y, x_4711);
            let x_4718 : vec3<f32> = txVec74;
            let x_4720 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4718.xy, x_4718.z);
            u_xlat13.x = x_4720;
            let x_4723 : f32 = u_xlat13.x;
            let x_4725 : f32 = u_xlat22.y;
            u_xlat13.x = (x_4723 * x_4725);
            let x_4729 : f32 = u_xlat22.x;
            let x_4730 : f32 = u_xlat85;
            let x_4733 : f32 = u_xlat13.x;
            u_xlat85 = ((x_4729 * x_4730) + x_4733);
            let x_4736 : vec2<f32> = u_xlat61;
            let x_4738 : f32 = u_xlat10.z;
            txVec75 = vec3<f32>(x_4736.x, x_4736.y, x_4738);
            let x_4745 : vec3<f32> = txVec75;
            let x_4747 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4745.xy, x_4745.z);
            u_xlat61.x = x_4747;
            let x_4750 : f32 = u_xlat22.z;
            let x_4752 : f32 = u_xlat61.x;
            let x_4754 : f32 = u_xlat85;
            u_xlat85 = ((x_4750 * x_4752) + x_4754);
            let x_4757 : vec4<f32> = u_xlat20;
            let x_4758 : vec2<f32> = vec2<f32>(x_4757.x, x_4757.y);
            let x_4760 : f32 = u_xlat10.z;
            txVec76 = vec3<f32>(x_4758.x, x_4758.y, x_4760);
            let x_4767 : vec3<f32> = txVec76;
            let x_4769 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4767.xy, x_4767.z);
            u_xlat61.x = x_4769;
            let x_4772 : f32 = u_xlat22.w;
            let x_4774 : f32 = u_xlat61.x;
            let x_4776 : f32 = u_xlat85;
            u_xlat85 = ((x_4772 * x_4774) + x_4776);
            let x_4779 : vec4<f32> = u_xlat18;
            let x_4780 : vec2<f32> = vec2<f32>(x_4779.x, x_4779.y);
            let x_4782 : f32 = u_xlat10.z;
            txVec77 = vec3<f32>(x_4780.x, x_4780.y, x_4782);
            let x_4789 : vec3<f32> = txVec77;
            let x_4791 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4789.xy, x_4789.z);
            u_xlat61.x = x_4791;
            let x_4794 : f32 = u_xlat23.x;
            let x_4796 : f32 = u_xlat61.x;
            let x_4798 : f32 = u_xlat85;
            u_xlat85 = ((x_4794 * x_4796) + x_4798);
            let x_4801 : vec4<f32> = u_xlat18;
            let x_4802 : vec2<f32> = vec2<f32>(x_4801.z, x_4801.w);
            let x_4804 : f32 = u_xlat10.z;
            txVec78 = vec3<f32>(x_4802.x, x_4802.y, x_4804);
            let x_4811 : vec3<f32> = txVec78;
            let x_4813 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4811.xy, x_4811.z);
            u_xlat61.x = x_4813;
            let x_4816 : f32 = u_xlat23.y;
            let x_4818 : f32 = u_xlat61.x;
            let x_4820 : f32 = u_xlat85;
            u_xlat85 = ((x_4816 * x_4818) + x_4820);
            let x_4823 : vec4<f32> = u_xlat19;
            let x_4824 : vec2<f32> = vec2<f32>(x_4823.x, x_4823.y);
            let x_4826 : f32 = u_xlat10.z;
            txVec79 = vec3<f32>(x_4824.x, x_4824.y, x_4826);
            let x_4833 : vec3<f32> = txVec79;
            let x_4835 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4833.xy, x_4833.z);
            u_xlat61.x = x_4835;
            let x_4838 : f32 = u_xlat23.z;
            let x_4840 : f32 = u_xlat61.x;
            let x_4842 : f32 = u_xlat85;
            u_xlat85 = ((x_4838 * x_4840) + x_4842);
            let x_4845 : vec4<f32> = u_xlat20;
            let x_4846 : vec2<f32> = vec2<f32>(x_4845.z, x_4845.w);
            let x_4848 : f32 = u_xlat10.z;
            txVec80 = vec3<f32>(x_4846.x, x_4846.y, x_4848);
            let x_4855 : vec3<f32> = txVec80;
            let x_4857 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4855.xy, x_4855.z);
            u_xlat61.x = x_4857;
            let x_4860 : f32 = u_xlat23.w;
            let x_4862 : f32 = u_xlat61.x;
            let x_4864 : f32 = u_xlat85;
            u_xlat85 = ((x_4860 * x_4862) + x_4864);
            let x_4867 : vec4<f32> = u_xlat21;
            let x_4868 : vec2<f32> = vec2<f32>(x_4867.x, x_4867.y);
            let x_4870 : f32 = u_xlat10.z;
            txVec81 = vec3<f32>(x_4868.x, x_4868.y, x_4870);
            let x_4877 : vec3<f32> = txVec81;
            let x_4879 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4877.xy, x_4877.z);
            u_xlat61.x = x_4879;
            let x_4882 : f32 = u_xlat24.x;
            let x_4884 : f32 = u_xlat61.x;
            let x_4886 : f32 = u_xlat85;
            u_xlat85 = ((x_4882 * x_4884) + x_4886);
            let x_4889 : vec4<f32> = u_xlat21;
            let x_4890 : vec2<f32> = vec2<f32>(x_4889.z, x_4889.w);
            let x_4892 : f32 = u_xlat10.z;
            txVec82 = vec3<f32>(x_4890.x, x_4890.y, x_4892);
            let x_4899 : vec3<f32> = txVec82;
            let x_4901 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4899.xy, x_4899.z);
            u_xlat61.x = x_4901;
            let x_4904 : f32 = u_xlat24.y;
            let x_4906 : f32 = u_xlat61.x;
            let x_4908 : f32 = u_xlat85;
            u_xlat85 = ((x_4904 * x_4906) + x_4908);
            let x_4911 : vec2<f32> = u_xlat38;
            let x_4913 : f32 = u_xlat10.z;
            txVec83 = vec3<f32>(x_4911.x, x_4911.y, x_4913);
            let x_4920 : vec3<f32> = txVec83;
            let x_4922 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4920.xy, x_4920.z);
            u_xlat61.x = x_4922;
            let x_4925 : f32 = u_xlat24.z;
            let x_4927 : f32 = u_xlat61.x;
            let x_4929 : f32 = u_xlat85;
            u_xlat85 = ((x_4925 * x_4927) + x_4929);
            let x_4932 : vec2<f32> = u_xlat69;
            let x_4934 : f32 = u_xlat10.z;
            txVec84 = vec3<f32>(x_4932.x, x_4932.y, x_4934);
            let x_4941 : vec3<f32> = txVec84;
            let x_4943 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4941.xy, x_4941.z);
            u_xlat61.x = x_4943;
            let x_4946 : f32 = u_xlat24.w;
            let x_4948 : f32 = u_xlat61.x;
            let x_4950 : f32 = u_xlat85;
            u_xlat85 = ((x_4946 * x_4948) + x_4950);
            let x_4953 : vec4<f32> = u_xlat16;
            let x_4954 : vec2<f32> = vec2<f32>(x_4953.x, x_4953.y);
            let x_4956 : f32 = u_xlat10.z;
            txVec85 = vec3<f32>(x_4954.x, x_4954.y, x_4956);
            let x_4963 : vec3<f32> = txVec85;
            let x_4965 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4963.xy, x_4963.z);
            u_xlat61.x = x_4965;
            let x_4968 : f32 = u_xlat12.x;
            let x_4970 : f32 = u_xlat61.x;
            let x_4972 : f32 = u_xlat85;
            u_xlat85 = ((x_4968 * x_4970) + x_4972);
            let x_4975 : vec4<f32> = u_xlat16;
            let x_4976 : vec2<f32> = vec2<f32>(x_4975.z, x_4975.w);
            let x_4978 : f32 = u_xlat10.z;
            txVec86 = vec3<f32>(x_4976.x, x_4976.y, x_4978);
            let x_4985 : vec3<f32> = txVec86;
            let x_4987 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4985.xy, x_4985.z);
            u_xlat61.x = x_4987;
            let x_4990 : f32 = u_xlat12.y;
            let x_4992 : f32 = u_xlat61.x;
            let x_4994 : f32 = u_xlat85;
            u_xlat85 = ((x_4990 * x_4992) + x_4994);
            let x_4997 : vec2<f32> = u_xlat64;
            let x_4999 : f32 = u_xlat10.z;
            txVec87 = vec3<f32>(x_4997.x, x_4997.y, x_4999);
            let x_5006 : vec3<f32> = txVec87;
            let x_5008 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5006.xy, x_5006.z);
            u_xlat61.x = x_5008;
            let x_5011 : f32 = u_xlat12.z;
            let x_5013 : f32 = u_xlat61.x;
            let x_5015 : f32 = u_xlat85;
            u_xlat85 = ((x_5011 * x_5013) + x_5015);
            let x_5018 : vec4<f32> = u_xlat11;
            let x_5019 : vec2<f32> = vec2<f32>(x_5018.x, x_5018.y);
            let x_5021 : f32 = u_xlat10.z;
            txVec88 = vec3<f32>(x_5019.x, x_5019.y, x_5021);
            let x_5028 : vec3<f32> = txVec88;
            let x_5030 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5028.xy, x_5028.z);
            u_xlat11.x = x_5030;
            let x_5033 : f32 = u_xlat12.w;
            let x_5035 : f32 = u_xlat11.x;
            let x_5037 : f32 = u_xlat85;
            u_xlat84 = ((x_5033 * x_5035) + x_5037);
          }
        }
      } else {
        let x_5041 : vec4<f32> = u_xlat10;
        let x_5042 : vec2<f32> = vec2<f32>(x_5041.x, x_5041.y);
        let x_5044 : f32 = u_xlat10.z;
        txVec89 = vec3<f32>(x_5042.x, x_5042.y, x_5044);
        let x_5051 : vec3<f32> = txVec89;
        let x_5053 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5051.xy, x_5051.z);
        u_xlat84 = x_5053;
      }
      let x_5054 : i32 = u_xlati79;
      let x_5056 : f32 = x_265.x_AdditionalShadowParams[x_5054].x;
      u_xlat10.x = (1.0f + -(x_5056));
      let x_5060 : f32 = u_xlat84;
      let x_5061 : i32 = u_xlati79;
      let x_5063 : f32 = x_265.x_AdditionalShadowParams[x_5061].x;
      let x_5066 : f32 = u_xlat10.x;
      u_xlat84 = ((x_5060 * x_5063) + x_5066);
      let x_5069 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_5069);
      let x_5074 : f32 = u_xlat10.z;
      u_xlatb35 = (x_5074 >= 1.0f);
      let x_5076 : bool = u_xlatb35;
      let x_5078 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_5076 | x_5078);
      let x_5082 : bool = u_xlatb10.x;
      let x_5083 : f32 = u_xlat84;
      u_xlat84 = select(x_5083, 1.0f, x_5082);
    } else {
      u_xlat84 = 1.0f;
    }
    let x_5086 : f32 = u_xlat84;
    u_xlat10.x = (-(x_5086) + 1.0f);
    let x_5090 : f32 = u_xlat76;
    let x_5092 : f32 = u_xlat10.x;
    let x_5094 : f32 = u_xlat84;
    u_xlat84 = ((x_5090 * x_5092) + x_5094);
    let x_5096 : f32 = u_xlat82;
    let x_5097 : f32 = u_xlat84;
    u_xlat82 = (x_5096 * x_5097);
    let x_5099 : vec4<f32> = u_xlat3;
    let x_5101 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_5099.x, x_5099.y, x_5099.z), vec3<f32>(x_5101.x, x_5101.y, x_5101.z));
    let x_5104 : f32 = u_xlat84;
    u_xlat84 = clamp(x_5104, 0.0f, 1.0f);
    let x_5106 : f32 = u_xlat82;
    let x_5107 : f32 = u_xlat84;
    u_xlat82 = (x_5106 * x_5107);
    let x_5109 : f32 = u_xlat82;
    let x_5111 : i32 = u_xlati79;
    let x_5113 : vec4<f32> = x_3603.x_AdditionalLightsColor[x_5111];
    let x_5115 : vec3<f32> = (vec3<f32>(x_5109, x_5109, x_5109) * vec3<f32>(x_5113.x, x_5113.y, x_5113.z));
    let x_5116 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_5115.x, x_5115.y, x_5115.z, x_5116.w);
    let x_5118 : vec4<f32> = u_xlat8;
    let x_5120 : f32 = u_xlat83;
    let x_5123 : vec3<f32> = u_xlat2;
    let x_5124 : vec3<f32> = ((vec3<f32>(x_5118.x, x_5118.y, x_5118.z) * vec3<f32>(x_5120, x_5120, x_5120)) + x_5123);
    let x_5125 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_5124.x, x_5124.y, x_5124.z, x_5125.w);
    let x_5127 : vec4<f32> = u_xlat8;
    let x_5129 : vec4<f32> = u_xlat8;
    u_xlat79 = dot(vec3<f32>(x_5127.x, x_5127.y, x_5127.z), vec3<f32>(x_5129.x, x_5129.y, x_5129.z));
    let x_5132 : f32 = u_xlat79;
    u_xlat79 = max(x_5132, 1.17549435e-38f);
    let x_5134 : f32 = u_xlat79;
    u_xlat79 = inverseSqrt(x_5134);
    let x_5136 : f32 = u_xlat79;
    let x_5138 : vec4<f32> = u_xlat8;
    let x_5140 : vec3<f32> = (vec3<f32>(x_5136, x_5136, x_5136) * vec3<f32>(x_5138.x, x_5138.y, x_5138.z));
    let x_5141 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_5140.x, x_5140.y, x_5140.z, x_5141.w);
    let x_5143 : vec4<f32> = u_xlat3;
    let x_5145 : vec4<f32> = u_xlat8;
    u_xlat79 = dot(vec3<f32>(x_5143.x, x_5143.y, x_5143.z), vec3<f32>(x_5145.x, x_5145.y, x_5145.z));
    let x_5148 : f32 = u_xlat79;
    u_xlat79 = clamp(x_5148, 0.0f, 1.0f);
    let x_5150 : vec4<f32> = u_xlat9;
    let x_5152 : vec4<f32> = u_xlat8;
    u_xlat82 = dot(vec3<f32>(x_5150.x, x_5150.y, x_5150.z), vec3<f32>(x_5152.x, x_5152.y, x_5152.z));
    let x_5155 : f32 = u_xlat82;
    u_xlat82 = clamp(x_5155, 0.0f, 1.0f);
    let x_5157 : f32 = u_xlat79;
    let x_5158 : f32 = u_xlat79;
    u_xlat79 = (x_5157 * x_5158);
    let x_5160 : f32 = u_xlat79;
    let x_5162 : f32 = u_xlat51.x;
    u_xlat79 = ((x_5160 * x_5162) + 1.00001001358032226562f);
    let x_5165 : f32 = u_xlat82;
    let x_5166 : f32 = u_xlat82;
    u_xlat82 = (x_5165 * x_5166);
    let x_5168 : f32 = u_xlat79;
    let x_5169 : f32 = u_xlat79;
    u_xlat79 = (x_5168 * x_5169);
    let x_5171 : f32 = u_xlat82;
    u_xlat82 = max(x_5171, 0.10000000149011611938f);
    let x_5173 : f32 = u_xlat79;
    let x_5174 : f32 = u_xlat82;
    u_xlat79 = (x_5173 * x_5174);
    let x_5177 : f32 = u_xlat5.x;
    let x_5178 : f32 = u_xlat79;
    u_xlat79 = (x_5177 * x_5178);
    let x_5180 : f32 = u_xlat78;
    let x_5181 : f32 = u_xlat79;
    u_xlat79 = (x_5180 / x_5181);
    let x_5183 : f32 = u_xlat79;
    let x_5186 : vec3<f32> = u_xlat4;
    let x_5187 : vec3<f32> = ((vec3<f32>(x_5183, x_5183, x_5183) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_5186);
    let x_5188 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_5187.x, x_5187.y, x_5187.z, x_5188.w);
    let x_5190 : vec4<f32> = u_xlat8;
    let x_5192 : vec4<f32> = u_xlat10;
    let x_5195 : vec4<f32> = u_xlat7;
    let x_5197 : vec3<f32> = ((vec3<f32>(x_5190.x, x_5190.y, x_5190.z) * vec3<f32>(x_5192.x, x_5192.y, x_5192.z)) + vec3<f32>(x_5195.x, x_5195.y, x_5195.z));
    let x_5198 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_5197.x, x_5197.y, x_5197.z, x_5198.w);

    continuing {
      let x_5200 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_5200 + bitcast<u32>(1i));
    }
  }
  let x_5202 : vec3<f32> = u_xlat30;
  let x_5203 : vec4<f32> = u_xlat6;
  let x_5206 : vec3<f32> = u_xlat31;
  u_xlat2 = ((x_5202 * vec3<f32>(x_5203.x, x_5203.x, x_5203.x)) + x_5206);
  let x_5208 : vec4<f32> = u_xlat7;
  let x_5210 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_5208.x, x_5208.y, x_5208.z) + x_5210);
  let x_5214 : vec4<f32> = vs_INTERP6;
  let x_5216 : vec3<f32> = u_xlat0;
  let x_5218 : vec3<f32> = u_xlat2;
  let x_5219 : vec3<f32> = ((vec3<f32>(x_5214.w, x_5214.w, x_5214.w) * x_5216) + x_5218);
  let x_5220 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_5219.x, x_5219.y, x_5219.z, x_5220.w);
  let x_5222 : bool = u_xlatb26;
  if (x_5222) {
    let x_5227 : f32 = u_xlat1.x;
    x_5223 = x_5227;
  } else {
    x_5223 = 1.0f;
  }
  let x_5229 : f32 = x_5223;
  SV_Target0.w = x_5229;
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


