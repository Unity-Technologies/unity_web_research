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

@group(1) @binding(3) var<uniform> x_265 : LightShadows;

var<private> u_xlatb76 : bool;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_LinearClampCompare : sampler_comparison;

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

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP0 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat78 : f32;

var<private> vs_INTERP3 : vec4<f32>;

var<private> u_xlatb31 : bool;

var<private> u_xlat31 : vec3<f32>;

var<private> u_xlat56 : f32;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat32 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu75 : u32;

var<private> u_xlatu79 : u32;

var<private> u_xlati82 : i32;

var<private> u_xlati79 : i32;

@group(1) @binding(1) var<uniform> x_3577 : AdditionalLights;

var<private> u_xlat82 : f32;

var<private> u_xlat83 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlati84 : i32;

var<private> u_xlatb10 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat35 : vec3<f32>;

var<private> u_xlatb84 : bool;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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
  var x_3720 : f32;
  var x_3732 : f32;
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
  var x_5197 : f32;
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
  let x_1908 : vec2<f32> = vs_INTERP0;
  let x_1910 : f32 = x_75.x_GlobalMipBias.x;
  let x_1911 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_1908, x_1910);
  u_xlat6 = x_1911;
  let x_1916 : vec2<f32> = vs_INTERP0;
  let x_1918 : f32 = x_75.x_GlobalMipBias.x;
  let x_1919 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_1916, x_1918);
  u_xlat30 = vec3<f32>(x_1919.x, x_1919.y, x_1919.z);
  let x_1921 : vec4<f32> = u_xlat6;
  let x_1924 : vec3<f32> = (vec3<f32>(x_1921.x, x_1921.y, x_1921.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_1925 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1924.x, x_1924.y, x_1924.z, x_1925.w);
  let x_1927 : vec4<f32> = u_xlat3;
  let x_1929 : vec4<f32> = u_xlat6;
  u_xlat51.x = dot(vec3<f32>(x_1927.x, x_1927.y, x_1927.z), vec3<f32>(x_1929.x, x_1929.y, x_1929.z));
  let x_1934 : f32 = u_xlat51.x;
  u_xlat51.x = (x_1934 + 0.5f);
  let x_1937 : vec2<f32> = u_xlat51;
  let x_1939 : vec3<f32> = u_xlat30;
  u_xlat30 = (vec3<f32>(x_1937.x, x_1937.x, x_1937.x) * x_1939);
  let x_1942 : f32 = u_xlat6.w;
  u_xlat51.x = max(x_1942, 0.00009999999747378752f);
  let x_1945 : vec3<f32> = u_xlat30;
  let x_1946 : vec2<f32> = u_xlat51;
  u_xlat30 = (x_1945 / vec3<f32>(x_1946.x, x_1946.x, x_1946.x));
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
  u_xlat51.x = (-(x_1968) + 1.0f);
  let x_1973 : f32 = u_xlat51.x;
  let x_1975 : f32 = u_xlat51.x;
  u_xlat76 = (x_1973 * x_1975);
  let x_1977 : f32 = u_xlat76;
  u_xlat76 = max(x_1977, 0.0078125f);
  let x_1981 : f32 = u_xlat76;
  let x_1982 : f32 = u_xlat76;
  u_xlat78 = (x_1981 * x_1982);
  let x_1985 : f32 = u_xlat5.x;
  u_xlat79 = (x_1985 + 0.04000002145767211914f);
  let x_1988 : f32 = u_xlat79;
  u_xlat79 = min(x_1988, 1.0f);
  let x_1990 : f32 = u_xlat76;
  u_xlat5.x = ((x_1990 * 4.0f) + 2.0f);
  let x_1996 : f32 = vs_INTERP6.w;
  u_xlat6.x = min(x_1996, 1.0f);
  let x_1999 : bool = u_xlatb75;
  if (x_1999) {
    let x_2003 : f32 = x_265.x_MainLightShadowParams.y;
    u_xlatb75 = (x_2003 == 1.0f);
    let x_2005 : bool = u_xlatb75;
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
      u_xlat75 = dot(x_2079, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_2084 : f32 = x_265.x_MainLightShadowParams.y;
      u_xlatb31 = (x_2084 == 2.0f);
      let x_2086 : bool = u_xlatb31;
      if (x_2086) {
        let x_2090 : vec4<f32> = vs_INTERP3;
        let x_2093 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2096 : vec2<f32> = ((vec2<f32>(x_2090.x, x_2090.y) * vec2<f32>(x_2093.z, x_2093.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2097 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_2096.x, x_2096.y, x_2097.z);
        let x_2099 : vec3<f32> = u_xlat31;
        let x_2101 : vec2<f32> = floor(vec2<f32>(x_2099.x, x_2099.y));
        let x_2102 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_2101.x, x_2101.y, x_2102.z);
        let x_2104 : vec4<f32> = vs_INTERP3;
        let x_2107 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2110 : vec3<f32> = u_xlat31;
        let x_2113 : vec2<f32> = ((vec2<f32>(x_2104.x, x_2104.y) * vec2<f32>(x_2107.z, x_2107.w)) + -(vec2<f32>(x_2110.x, x_2110.y)));
        let x_2114 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2113.x, x_2113.y, x_2114.z, x_2114.w);
        let x_2116 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_2116.x, x_2116.x, x_2116.y, x_2116.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2119 : vec4<f32> = u_xlat8;
        let x_2121 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_2119.x, x_2119.x, x_2119.z, x_2119.z) * vec4<f32>(x_2121.x, x_2121.x, x_2121.z, x_2121.z));
        let x_2124 : vec4<f32> = u_xlat9;
        u_xlat57 = (vec2<f32>(x_2124.y, x_2124.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_2127 : vec4<f32> = u_xlat9;
        let x_2130 : vec4<f32> = u_xlat7;
        let x_2133 : vec2<f32> = ((vec2<f32>(x_2127.x, x_2127.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2130.x, x_2130.y)));
        let x_2134 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2133.x, x_2134.y, x_2133.y, x_2134.w);
        let x_2136 : vec4<f32> = u_xlat7;
        let x_2139 : vec2<f32> = (-(vec2<f32>(x_2136.x, x_2136.y)) + vec2<f32>(1.0f, 1.0f));
        let x_2140 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2139.x, x_2139.y, x_2140.z, x_2140.w);
        let x_2142 : vec4<f32> = u_xlat7;
        u_xlat59 = min(vec2<f32>(x_2142.x, x_2142.y), vec2<f32>(0.0f, 0.0f));
        let x_2145 : vec2<f32> = u_xlat59;
        let x_2147 : vec2<f32> = u_xlat59;
        let x_2149 : vec4<f32> = u_xlat9;
        u_xlat59 = ((-(x_2145) * x_2147) + vec2<f32>(x_2149.x, x_2149.y));
        let x_2152 : vec4<f32> = u_xlat7;
        let x_2154 : vec2<f32> = max(vec2<f32>(x_2152.x, x_2152.y), vec2<f32>(0.0f, 0.0f));
        let x_2155 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2154.x, x_2154.y, x_2155.z, x_2155.w);
        let x_2157 : vec4<f32> = u_xlat7;
        let x_2160 : vec4<f32> = u_xlat7;
        let x_2163 : vec4<f32> = u_xlat8;
        let x_2165 : vec2<f32> = ((-(vec2<f32>(x_2157.x, x_2157.y)) * vec2<f32>(x_2160.x, x_2160.y)) + vec2<f32>(x_2163.y, x_2163.w));
        let x_2166 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2165.x, x_2165.y, x_2166.z, x_2166.w);
        let x_2168 : vec2<f32> = u_xlat59;
        u_xlat59 = (x_2168 + vec2<f32>(1.0f, 1.0f));
        let x_2170 : vec4<f32> = u_xlat7;
        let x_2172 : vec2<f32> = (vec2<f32>(x_2170.x, x_2170.y) + vec2<f32>(1.0f, 1.0f));
        let x_2173 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2172.x, x_2172.y, x_2173.z, x_2173.w);
        let x_2175 : vec4<f32> = u_xlat8;
        let x_2177 : vec2<f32> = (vec2<f32>(x_2175.x, x_2175.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2178 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2177.x, x_2177.y, x_2178.z, x_2178.w);
        let x_2180 : vec4<f32> = u_xlat9;
        let x_2182 : vec2<f32> = (vec2<f32>(x_2180.x, x_2180.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2183 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2182.x, x_2182.y, x_2183.z, x_2183.w);
        let x_2185 : vec2<f32> = u_xlat59;
        let x_2186 : vec2<f32> = (x_2185 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2187 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2186.x, x_2186.y, x_2187.z, x_2187.w);
        let x_2189 : vec4<f32> = u_xlat7;
        let x_2191 : vec2<f32> = (vec2<f32>(x_2189.x, x_2189.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2192 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2191.x, x_2191.y, x_2192.z, x_2192.w);
        let x_2194 : vec4<f32> = u_xlat8;
        let x_2196 : vec2<f32> = (vec2<f32>(x_2194.y, x_2194.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_2197 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2196.x, x_2196.y, x_2197.z, x_2197.w);
        let x_2200 : f32 = u_xlat9.x;
        u_xlat10.z = x_2200;
        let x_2203 : f32 = u_xlat7.x;
        u_xlat10.w = x_2203;
        let x_2206 : f32 = u_xlat12.x;
        u_xlat11.z = x_2206;
        let x_2209 : f32 = u_xlat57.x;
        u_xlat11.w = x_2209;
        let x_2211 : vec4<f32> = u_xlat10;
        let x_2213 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_2211.z, x_2211.w, x_2211.x, x_2211.z) + vec4<f32>(x_2213.z, x_2213.w, x_2213.x, x_2213.z));
        let x_2217 : f32 = u_xlat10.y;
        u_xlat9.z = x_2217;
        let x_2220 : f32 = u_xlat7.y;
        u_xlat9.w = x_2220;
        let x_2223 : f32 = u_xlat11.y;
        u_xlat12.z = x_2223;
        let x_2226 : f32 = u_xlat57.y;
        u_xlat12.w = x_2226;
        let x_2228 : vec4<f32> = u_xlat9;
        let x_2230 : vec4<f32> = u_xlat12;
        let x_2232 : vec3<f32> = (vec3<f32>(x_2228.z, x_2228.y, x_2228.w) + vec3<f32>(x_2230.z, x_2230.y, x_2230.w));
        let x_2233 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2232.x, x_2232.y, x_2232.z, x_2233.w);
        let x_2235 : vec4<f32> = u_xlat11;
        let x_2237 : vec4<f32> = u_xlat8;
        let x_2239 : vec3<f32> = (vec3<f32>(x_2235.x, x_2235.z, x_2235.w) / vec3<f32>(x_2237.z, x_2237.w, x_2237.y));
        let x_2240 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2239.x, x_2239.y, x_2239.z, x_2240.w);
        let x_2242 : vec4<f32> = u_xlat9;
        let x_2244 : vec3<f32> = (vec3<f32>(x_2242.x, x_2242.y, x_2242.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2245 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2244.x, x_2244.y, x_2244.z, x_2245.w);
        let x_2247 : vec4<f32> = u_xlat12;
        let x_2249 : vec4<f32> = u_xlat7;
        let x_2251 : vec3<f32> = (vec3<f32>(x_2247.z, x_2247.y, x_2247.w) / vec3<f32>(x_2249.x, x_2249.y, x_2249.z));
        let x_2252 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2251.x, x_2251.y, x_2251.z, x_2252.w);
        let x_2254 : vec4<f32> = u_xlat10;
        let x_2256 : vec3<f32> = (vec3<f32>(x_2254.x, x_2254.y, x_2254.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_2257 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2256.x, x_2256.y, x_2256.z, x_2257.w);
        let x_2259 : vec4<f32> = u_xlat9;
        let x_2262 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2264 : vec3<f32> = (vec3<f32>(x_2259.y, x_2259.x, x_2259.z) * vec3<f32>(x_2262.x, x_2262.x, x_2262.x));
        let x_2265 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2264.x, x_2264.y, x_2264.z, x_2265.w);
        let x_2267 : vec4<f32> = u_xlat10;
        let x_2270 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2272 : vec3<f32> = (vec3<f32>(x_2267.x, x_2267.y, x_2267.z) * vec3<f32>(x_2270.y, x_2270.y, x_2270.y));
        let x_2273 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2272.x, x_2272.y, x_2272.z, x_2273.w);
        let x_2276 : f32 = u_xlat10.x;
        u_xlat9.w = x_2276;
        let x_2278 : vec3<f32> = u_xlat31;
        let x_2281 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2284 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_2278.x, x_2278.y, x_2278.x, x_2278.y) * vec4<f32>(x_2281.x, x_2281.y, x_2281.x, x_2281.y)) + vec4<f32>(x_2284.y, x_2284.w, x_2284.x, x_2284.w));
        let x_2287 : vec3<f32> = u_xlat31;
        let x_2290 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2293 : vec4<f32> = u_xlat9;
        let x_2295 : vec2<f32> = ((vec2<f32>(x_2287.x, x_2287.y) * vec2<f32>(x_2290.x, x_2290.y)) + vec2<f32>(x_2293.z, x_2293.w));
        let x_2296 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_2295.x, x_2295.y, x_2296.z, x_2296.w);
        let x_2299 : f32 = u_xlat9.y;
        u_xlat10.w = x_2299;
        let x_2301 : vec4<f32> = u_xlat10;
        let x_2302 : vec2<f32> = vec2<f32>(x_2301.y, x_2301.z);
        let x_2303 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2303.x, x_2302.x, x_2303.z, x_2302.y);
        let x_2305 : vec3<f32> = u_xlat31;
        let x_2308 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2311 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_2305.x, x_2305.y, x_2305.x, x_2305.y) * vec4<f32>(x_2308.x, x_2308.y, x_2308.x, x_2308.y)) + vec4<f32>(x_2311.x, x_2311.y, x_2311.z, x_2311.y));
        let x_2314 : vec3<f32> = u_xlat31;
        let x_2317 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2320 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_2314.x, x_2314.y, x_2314.x, x_2314.y) * vec4<f32>(x_2317.x, x_2317.y, x_2317.x, x_2317.y)) + vec4<f32>(x_2320.w, x_2320.y, x_2320.w, x_2320.z));
        let x_2323 : vec3<f32> = u_xlat31;
        let x_2326 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2329 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_2323.x, x_2323.y, x_2323.x, x_2323.y) * vec4<f32>(x_2326.x, x_2326.y, x_2326.x, x_2326.y)) + vec4<f32>(x_2329.x, x_2329.w, x_2329.z, x_2329.w));
        let x_2332 : vec4<f32> = u_xlat7;
        let x_2334 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_2332.x, x_2332.x, x_2332.x, x_2332.y) * vec4<f32>(x_2334.z, x_2334.w, x_2334.y, x_2334.z));
        let x_2337 : vec4<f32> = u_xlat7;
        let x_2339 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_2337.y, x_2337.y, x_2337.z, x_2337.z) * x_2339);
        let x_2342 : f32 = u_xlat7.z;
        let x_2344 : f32 = u_xlat8.y;
        u_xlat31.x = (x_2342 * x_2344);
        let x_2348 : vec4<f32> = u_xlat11;
        let x_2349 : vec2<f32> = vec2<f32>(x_2348.x, x_2348.y);
        let x_2351 : f32 = vs_INTERP3.z;
        txVec34 = vec3<f32>(x_2349.x, x_2349.y, x_2351);
        let x_2359 : vec3<f32> = txVec34;
        let x_2361 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2359.xy, x_2359.z);
        u_xlat56 = x_2361;
        let x_2363 : vec4<f32> = u_xlat11;
        let x_2364 : vec2<f32> = vec2<f32>(x_2363.z, x_2363.w);
        let x_2366 : f32 = vs_INTERP3.z;
        txVec35 = vec3<f32>(x_2364.x, x_2364.y, x_2366);
        let x_2373 : vec3<f32> = txVec35;
        let x_2375 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2373.xy, x_2373.z);
        u_xlat81 = x_2375;
        let x_2376 : f32 = u_xlat81;
        let x_2378 : f32 = u_xlat14.y;
        u_xlat81 = (x_2376 * x_2378);
        let x_2381 : f32 = u_xlat14.x;
        let x_2382 : f32 = u_xlat56;
        let x_2384 : f32 = u_xlat81;
        u_xlat56 = ((x_2381 * x_2382) + x_2384);
        let x_2387 : vec4<f32> = u_xlat12;
        let x_2388 : vec2<f32> = vec2<f32>(x_2387.x, x_2387.y);
        let x_2390 : f32 = vs_INTERP3.z;
        txVec36 = vec3<f32>(x_2388.x, x_2388.y, x_2390);
        let x_2397 : vec3<f32> = txVec36;
        let x_2399 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2397.xy, x_2397.z);
        u_xlat81 = x_2399;
        let x_2401 : f32 = u_xlat14.z;
        let x_2402 : f32 = u_xlat81;
        let x_2404 : f32 = u_xlat56;
        u_xlat56 = ((x_2401 * x_2402) + x_2404);
        let x_2407 : vec4<f32> = u_xlat10;
        let x_2408 : vec2<f32> = vec2<f32>(x_2407.x, x_2407.y);
        let x_2410 : f32 = vs_INTERP3.z;
        txVec37 = vec3<f32>(x_2408.x, x_2408.y, x_2410);
        let x_2417 : vec3<f32> = txVec37;
        let x_2419 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2417.xy, x_2417.z);
        u_xlat81 = x_2419;
        let x_2421 : f32 = u_xlat14.w;
        let x_2422 : f32 = u_xlat81;
        let x_2424 : f32 = u_xlat56;
        u_xlat56 = ((x_2421 * x_2422) + x_2424);
        let x_2427 : vec4<f32> = u_xlat13;
        let x_2428 : vec2<f32> = vec2<f32>(x_2427.x, x_2427.y);
        let x_2430 : f32 = vs_INTERP3.z;
        txVec38 = vec3<f32>(x_2428.x, x_2428.y, x_2430);
        let x_2437 : vec3<f32> = txVec38;
        let x_2439 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2437.xy, x_2437.z);
        u_xlat81 = x_2439;
        let x_2441 : f32 = u_xlat15.x;
        let x_2442 : f32 = u_xlat81;
        let x_2444 : f32 = u_xlat56;
        u_xlat56 = ((x_2441 * x_2442) + x_2444);
        let x_2447 : vec4<f32> = u_xlat13;
        let x_2448 : vec2<f32> = vec2<f32>(x_2447.z, x_2447.w);
        let x_2450 : f32 = vs_INTERP3.z;
        txVec39 = vec3<f32>(x_2448.x, x_2448.y, x_2450);
        let x_2457 : vec3<f32> = txVec39;
        let x_2459 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2457.xy, x_2457.z);
        u_xlat81 = x_2459;
        let x_2461 : f32 = u_xlat15.y;
        let x_2462 : f32 = u_xlat81;
        let x_2464 : f32 = u_xlat56;
        u_xlat56 = ((x_2461 * x_2462) + x_2464);
        let x_2467 : vec4<f32> = u_xlat10;
        let x_2468 : vec2<f32> = vec2<f32>(x_2467.z, x_2467.w);
        let x_2470 : f32 = vs_INTERP3.z;
        txVec40 = vec3<f32>(x_2468.x, x_2468.y, x_2470);
        let x_2477 : vec3<f32> = txVec40;
        let x_2479 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2477.xy, x_2477.z);
        u_xlat81 = x_2479;
        let x_2481 : f32 = u_xlat15.z;
        let x_2482 : f32 = u_xlat81;
        let x_2484 : f32 = u_xlat56;
        u_xlat56 = ((x_2481 * x_2482) + x_2484);
        let x_2487 : vec4<f32> = u_xlat9;
        let x_2488 : vec2<f32> = vec2<f32>(x_2487.x, x_2487.y);
        let x_2490 : f32 = vs_INTERP3.z;
        txVec41 = vec3<f32>(x_2488.x, x_2488.y, x_2490);
        let x_2497 : vec3<f32> = txVec41;
        let x_2499 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2497.xy, x_2497.z);
        u_xlat81 = x_2499;
        let x_2501 : f32 = u_xlat15.w;
        let x_2502 : f32 = u_xlat81;
        let x_2504 : f32 = u_xlat56;
        u_xlat56 = ((x_2501 * x_2502) + x_2504);
        let x_2507 : vec4<f32> = u_xlat9;
        let x_2508 : vec2<f32> = vec2<f32>(x_2507.z, x_2507.w);
        let x_2510 : f32 = vs_INTERP3.z;
        txVec42 = vec3<f32>(x_2508.x, x_2508.y, x_2510);
        let x_2517 : vec3<f32> = txVec42;
        let x_2519 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2517.xy, x_2517.z);
        u_xlat81 = x_2519;
        let x_2521 : f32 = u_xlat31.x;
        let x_2522 : f32 = u_xlat81;
        let x_2524 : f32 = u_xlat56;
        u_xlat75 = ((x_2521 * x_2522) + x_2524);
      } else {
        let x_2527 : vec4<f32> = vs_INTERP3;
        let x_2530 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2533 : vec2<f32> = ((vec2<f32>(x_2527.x, x_2527.y) * vec2<f32>(x_2530.z, x_2530.w)) + vec2<f32>(0.5f, 0.5f));
        let x_2534 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_2533.x, x_2533.y, x_2534.z);
        let x_2536 : vec3<f32> = u_xlat31;
        let x_2538 : vec2<f32> = floor(vec2<f32>(x_2536.x, x_2536.y));
        let x_2539 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_2538.x, x_2538.y, x_2539.z);
        let x_2541 : vec4<f32> = vs_INTERP3;
        let x_2544 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2547 : vec3<f32> = u_xlat31;
        let x_2550 : vec2<f32> = ((vec2<f32>(x_2541.x, x_2541.y) * vec2<f32>(x_2544.z, x_2544.w)) + -(vec2<f32>(x_2547.x, x_2547.y)));
        let x_2551 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2550.x, x_2550.y, x_2551.z, x_2551.w);
        let x_2553 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_2553.x, x_2553.x, x_2553.y, x_2553.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_2556 : vec4<f32> = u_xlat8;
        let x_2558 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_2556.x, x_2556.x, x_2556.z, x_2556.z) * vec4<f32>(x_2558.x, x_2558.x, x_2558.z, x_2558.z));
        let x_2561 : vec4<f32> = u_xlat9;
        let x_2563 : vec2<f32> = (vec2<f32>(x_2561.y, x_2561.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_2564 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2564.x, x_2563.x, x_2564.z, x_2563.y);
        let x_2566 : vec4<f32> = u_xlat9;
        let x_2569 : vec4<f32> = u_xlat7;
        u_xlat57 = ((vec2<f32>(x_2566.x, x_2566.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2569.x, x_2569.y)));
        let x_2573 : vec4<f32> = u_xlat7;
        let x_2576 : vec2<f32> = (-(vec2<f32>(x_2573.x, x_2573.y)) + vec2<f32>(1.0f, 1.0f));
        let x_2577 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2576.x, x_2577.y, x_2576.y, x_2577.w);
        let x_2579 : vec4<f32> = u_xlat7;
        let x_2581 : vec2<f32> = min(vec2<f32>(x_2579.x, x_2579.y), vec2<f32>(0.0f, 0.0f));
        let x_2582 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2581.x, x_2581.y, x_2582.z, x_2582.w);
        let x_2584 : vec4<f32> = u_xlat9;
        let x_2587 : vec4<f32> = u_xlat9;
        let x_2590 : vec4<f32> = u_xlat8;
        let x_2592 : vec2<f32> = ((-(vec2<f32>(x_2584.x, x_2584.y)) * vec2<f32>(x_2587.x, x_2587.y)) + vec2<f32>(x_2590.x, x_2590.z));
        let x_2593 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2592.x, x_2593.y, x_2592.y, x_2593.w);
        let x_2595 : vec4<f32> = u_xlat7;
        let x_2597 : vec2<f32> = max(vec2<f32>(x_2595.x, x_2595.y), vec2<f32>(0.0f, 0.0f));
        let x_2598 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2597.x, x_2597.y, x_2598.z, x_2598.w);
        let x_2600 : vec4<f32> = u_xlat9;
        let x_2603 : vec4<f32> = u_xlat9;
        let x_2606 : vec4<f32> = u_xlat8;
        let x_2608 : vec2<f32> = ((-(vec2<f32>(x_2600.x, x_2600.y)) * vec2<f32>(x_2603.x, x_2603.y)) + vec2<f32>(x_2606.y, x_2606.w));
        let x_2609 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2609.x, x_2608.x, x_2609.z, x_2608.y);
        let x_2611 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_2611 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_2614 : f32 = u_xlat8.y;
        u_xlat9.z = (x_2614 * 0.08163200318813323975f);
        let x_2617 : vec2<f32> = u_xlat57;
        let x_2619 : vec2<f32> = (vec2<f32>(x_2617.y, x_2617.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2620 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2619.x, x_2619.y, x_2620.z, x_2620.w);
        let x_2622 : vec4<f32> = u_xlat8;
        u_xlat57 = (vec2<f32>(x_2622.x, x_2622.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_2626 : f32 = u_xlat8.w;
        u_xlat11.z = (x_2626 * 0.08163200318813323975f);
        let x_2630 : f32 = u_xlat11.y;
        u_xlat9.x = x_2630;
        let x_2632 : vec4<f32> = u_xlat7;
        let x_2635 : vec2<f32> = ((vec2<f32>(x_2632.x, x_2632.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2636 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2636.x, x_2635.x, x_2636.z, x_2635.y);
        let x_2638 : vec4<f32> = u_xlat7;
        let x_2641 : vec2<f32> = ((vec2<f32>(x_2638.x, x_2638.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2642 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2641.x, x_2642.y, x_2641.y, x_2642.w);
        let x_2645 : f32 = u_xlat57.x;
        u_xlat8.y = x_2645;
        let x_2648 : f32 = u_xlat10.y;
        u_xlat8.w = x_2648;
        let x_2650 : vec4<f32> = u_xlat8;
        let x_2651 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_2650 + x_2651);
        let x_2653 : vec4<f32> = u_xlat7;
        let x_2656 : vec2<f32> = ((vec2<f32>(x_2653.y, x_2653.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_2657 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2657.x, x_2656.x, x_2657.z, x_2656.y);
        let x_2659 : vec4<f32> = u_xlat7;
        let x_2662 : vec2<f32> = ((vec2<f32>(x_2659.y, x_2659.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_2663 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2662.x, x_2663.y, x_2662.y, x_2663.w);
        let x_2666 : f32 = u_xlat57.y;
        u_xlat10.y = x_2666;
        let x_2668 : vec4<f32> = u_xlat10;
        let x_2669 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_2668 + x_2669);
        let x_2671 : vec4<f32> = u_xlat8;
        let x_2672 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_2671 / x_2672);
        let x_2674 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_2674 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2676 : vec4<f32> = u_xlat10;
        let x_2677 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_2676 / x_2677);
        let x_2679 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_2679 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_2681 : vec4<f32> = u_xlat8;
        let x_2684 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_2681.w, x_2681.x, x_2681.y, x_2681.z) * vec4<f32>(x_2684.x, x_2684.x, x_2684.x, x_2684.x));
        let x_2687 : vec4<f32> = u_xlat10;
        let x_2690 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_2687.x, x_2687.w, x_2687.y, x_2687.z) * vec4<f32>(x_2690.y, x_2690.y, x_2690.y, x_2690.y));
        let x_2693 : vec4<f32> = u_xlat8;
        let x_2694 : vec3<f32> = vec3<f32>(x_2693.y, x_2693.z, x_2693.w);
        let x_2695 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2694.x, x_2695.y, x_2694.y, x_2694.z);
        let x_2698 : f32 = u_xlat10.x;
        u_xlat11.y = x_2698;
        let x_2700 : vec3<f32> = u_xlat31;
        let x_2703 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2706 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_2700.x, x_2700.y, x_2700.x, x_2700.y) * vec4<f32>(x_2703.x, x_2703.y, x_2703.x, x_2703.y)) + vec4<f32>(x_2706.x, x_2706.y, x_2706.z, x_2706.y));
        let x_2709 : vec3<f32> = u_xlat31;
        let x_2712 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2715 : vec4<f32> = u_xlat11;
        let x_2717 : vec2<f32> = ((vec2<f32>(x_2709.x, x_2709.y) * vec2<f32>(x_2712.x, x_2712.y)) + vec2<f32>(x_2715.w, x_2715.y));
        let x_2718 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_2717.x, x_2717.y, x_2718.z, x_2718.w);
        let x_2721 : f32 = u_xlat11.y;
        u_xlat8.y = x_2721;
        let x_2724 : f32 = u_xlat10.z;
        u_xlat11.y = x_2724;
        let x_2726 : vec3<f32> = u_xlat31;
        let x_2729 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2732 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_2726.x, x_2726.y, x_2726.x, x_2726.y) * vec4<f32>(x_2729.x, x_2729.y, x_2729.x, x_2729.y)) + vec4<f32>(x_2732.x, x_2732.y, x_2732.z, x_2732.y));
        let x_2736 : vec3<f32> = u_xlat31;
        let x_2739 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2742 : vec4<f32> = u_xlat11;
        u_xlat63 = ((vec2<f32>(x_2736.x, x_2736.y) * vec2<f32>(x_2739.x, x_2739.y)) + vec2<f32>(x_2742.w, x_2742.y));
        let x_2746 : f32 = u_xlat11.y;
        u_xlat8.z = x_2746;
        let x_2748 : vec3<f32> = u_xlat31;
        let x_2751 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2754 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_2748.x, x_2748.y, x_2748.x, x_2748.y) * vec4<f32>(x_2751.x, x_2751.y, x_2751.x, x_2751.y)) + vec4<f32>(x_2754.x, x_2754.y, x_2754.x, x_2754.z));
        let x_2758 : f32 = u_xlat10.w;
        u_xlat11.y = x_2758;
        let x_2760 : vec3<f32> = u_xlat31;
        let x_2763 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2766 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_2760.x, x_2760.y, x_2760.x, x_2760.y) * vec4<f32>(x_2763.x, x_2763.y, x_2763.x, x_2763.y)) + vec4<f32>(x_2766.x, x_2766.y, x_2766.z, x_2766.y));
        let x_2769 : vec3<f32> = u_xlat31;
        let x_2772 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2775 : vec4<f32> = u_xlat11;
        let x_2777 : vec2<f32> = ((vec2<f32>(x_2769.x, x_2769.y) * vec2<f32>(x_2772.x, x_2772.y)) + vec2<f32>(x_2775.w, x_2775.y));
        let x_2778 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_2777.x, x_2777.y, x_2778.z);
        let x_2781 : f32 = u_xlat11.y;
        u_xlat8.w = x_2781;
        let x_2783 : vec3<f32> = u_xlat31;
        let x_2786 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2789 : vec4<f32> = u_xlat8;
        let x_2791 : vec2<f32> = ((vec2<f32>(x_2783.x, x_2783.y) * vec2<f32>(x_2786.x, x_2786.y)) + vec2<f32>(x_2789.x, x_2789.w));
        let x_2792 : vec4<f32> = u_xlat17;
        u_xlat17 = vec4<f32>(x_2791.x, x_2791.y, x_2792.z, x_2792.w);
        let x_2794 : vec4<f32> = u_xlat11;
        let x_2795 : vec3<f32> = vec3<f32>(x_2794.x, x_2794.z, x_2794.w);
        let x_2796 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_2795.x, x_2796.y, x_2795.y, x_2795.z);
        let x_2798 : vec3<f32> = u_xlat31;
        let x_2801 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2804 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_2798.x, x_2798.y, x_2798.x, x_2798.y) * vec4<f32>(x_2801.x, x_2801.y, x_2801.x, x_2801.y)) + vec4<f32>(x_2804.x, x_2804.y, x_2804.z, x_2804.y));
        let x_2807 : vec3<f32> = u_xlat31;
        let x_2810 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2813 : vec4<f32> = u_xlat10;
        u_xlat60 = ((vec2<f32>(x_2807.x, x_2807.y) * vec2<f32>(x_2810.x, x_2810.y)) + vec2<f32>(x_2813.w, x_2813.y));
        let x_2817 : f32 = u_xlat8.x;
        u_xlat10.x = x_2817;
        let x_2819 : vec3<f32> = u_xlat31;
        let x_2822 : vec4<f32> = x_265.x_MainLightShadowmapSize;
        let x_2825 : vec4<f32> = u_xlat10;
        let x_2827 : vec2<f32> = ((vec2<f32>(x_2819.x, x_2819.y) * vec2<f32>(x_2822.x, x_2822.y)) + vec2<f32>(x_2825.x, x_2825.y));
        let x_2828 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_2827.x, x_2827.y, x_2828.z);
        let x_2830 : vec4<f32> = u_xlat7;
        let x_2832 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_2830.x, x_2830.x, x_2830.x, x_2830.x) * x_2832);
        let x_2834 : vec4<f32> = u_xlat7;
        let x_2836 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_2834.y, x_2834.y, x_2834.y, x_2834.y) * x_2836);
        let x_2838 : vec4<f32> = u_xlat7;
        let x_2840 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_2838.z, x_2838.z, x_2838.z, x_2838.z) * x_2840);
        let x_2842 : vec4<f32> = u_xlat7;
        let x_2844 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_2842.w, x_2842.w, x_2842.w, x_2842.w) * x_2844);
        let x_2847 : vec4<f32> = u_xlat12;
        let x_2848 : vec2<f32> = vec2<f32>(x_2847.x, x_2847.y);
        let x_2850 : f32 = vs_INTERP3.z;
        txVec43 = vec3<f32>(x_2848.x, x_2848.y, x_2850);
        let x_2857 : vec3<f32> = txVec43;
        let x_2859 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2857.xy, x_2857.z);
        u_xlat81 = x_2859;
        let x_2861 : vec4<f32> = u_xlat12;
        let x_2862 : vec2<f32> = vec2<f32>(x_2861.z, x_2861.w);
        let x_2864 : f32 = vs_INTERP3.z;
        txVec44 = vec3<f32>(x_2862.x, x_2862.y, x_2864);
        let x_2871 : vec3<f32> = txVec44;
        let x_2873 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2871.xy, x_2871.z);
        u_xlat8.x = x_2873;
        let x_2876 : f32 = u_xlat8.x;
        let x_2878 : f32 = u_xlat18.y;
        u_xlat8.x = (x_2876 * x_2878);
        let x_2882 : f32 = u_xlat18.x;
        let x_2883 : f32 = u_xlat81;
        let x_2886 : f32 = u_xlat8.x;
        u_xlat81 = ((x_2882 * x_2883) + x_2886);
        let x_2889 : vec4<f32> = u_xlat13;
        let x_2890 : vec2<f32> = vec2<f32>(x_2889.x, x_2889.y);
        let x_2892 : f32 = vs_INTERP3.z;
        txVec45 = vec3<f32>(x_2890.x, x_2890.y, x_2892);
        let x_2899 : vec3<f32> = txVec45;
        let x_2901 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2899.xy, x_2899.z);
        u_xlat8.x = x_2901;
        let x_2904 : f32 = u_xlat18.z;
        let x_2906 : f32 = u_xlat8.x;
        let x_2908 : f32 = u_xlat81;
        u_xlat81 = ((x_2904 * x_2906) + x_2908);
        let x_2911 : vec4<f32> = u_xlat15;
        let x_2912 : vec2<f32> = vec2<f32>(x_2911.x, x_2911.y);
        let x_2914 : f32 = vs_INTERP3.z;
        txVec46 = vec3<f32>(x_2912.x, x_2912.y, x_2914);
        let x_2921 : vec3<f32> = txVec46;
        let x_2923 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2921.xy, x_2921.z);
        u_xlat8.x = x_2923;
        let x_2926 : f32 = u_xlat18.w;
        let x_2928 : f32 = u_xlat8.x;
        let x_2930 : f32 = u_xlat81;
        u_xlat81 = ((x_2926 * x_2928) + x_2930);
        let x_2933 : vec4<f32> = u_xlat14;
        let x_2934 : vec2<f32> = vec2<f32>(x_2933.x, x_2933.y);
        let x_2936 : f32 = vs_INTERP3.z;
        txVec47 = vec3<f32>(x_2934.x, x_2934.y, x_2936);
        let x_2943 : vec3<f32> = txVec47;
        let x_2945 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2943.xy, x_2943.z);
        u_xlat8.x = x_2945;
        let x_2948 : f32 = u_xlat19.x;
        let x_2950 : f32 = u_xlat8.x;
        let x_2952 : f32 = u_xlat81;
        u_xlat81 = ((x_2948 * x_2950) + x_2952);
        let x_2955 : vec4<f32> = u_xlat14;
        let x_2956 : vec2<f32> = vec2<f32>(x_2955.z, x_2955.w);
        let x_2958 : f32 = vs_INTERP3.z;
        txVec48 = vec3<f32>(x_2956.x, x_2956.y, x_2958);
        let x_2965 : vec3<f32> = txVec48;
        let x_2967 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2965.xy, x_2965.z);
        u_xlat8.x = x_2967;
        let x_2970 : f32 = u_xlat19.y;
        let x_2972 : f32 = u_xlat8.x;
        let x_2974 : f32 = u_xlat81;
        u_xlat81 = ((x_2970 * x_2972) + x_2974);
        let x_2977 : vec2<f32> = u_xlat63;
        let x_2979 : f32 = vs_INTERP3.z;
        txVec49 = vec3<f32>(x_2977.x, x_2977.y, x_2979);
        let x_2986 : vec3<f32> = txVec49;
        let x_2988 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2986.xy, x_2986.z);
        u_xlat8.x = x_2988;
        let x_2991 : f32 = u_xlat19.z;
        let x_2993 : f32 = u_xlat8.x;
        let x_2995 : f32 = u_xlat81;
        u_xlat81 = ((x_2991 * x_2993) + x_2995);
        let x_2998 : vec4<f32> = u_xlat15;
        let x_2999 : vec2<f32> = vec2<f32>(x_2998.z, x_2998.w);
        let x_3001 : f32 = vs_INTERP3.z;
        txVec50 = vec3<f32>(x_2999.x, x_2999.y, x_3001);
        let x_3008 : vec3<f32> = txVec50;
        let x_3010 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3008.xy, x_3008.z);
        u_xlat8.x = x_3010;
        let x_3013 : f32 = u_xlat19.w;
        let x_3015 : f32 = u_xlat8.x;
        let x_3017 : f32 = u_xlat81;
        u_xlat81 = ((x_3013 * x_3015) + x_3017);
        let x_3020 : vec4<f32> = u_xlat16;
        let x_3021 : vec2<f32> = vec2<f32>(x_3020.x, x_3020.y);
        let x_3023 : f32 = vs_INTERP3.z;
        txVec51 = vec3<f32>(x_3021.x, x_3021.y, x_3023);
        let x_3030 : vec3<f32> = txVec51;
        let x_3032 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3030.xy, x_3030.z);
        u_xlat8.x = x_3032;
        let x_3035 : f32 = u_xlat20.x;
        let x_3037 : f32 = u_xlat8.x;
        let x_3039 : f32 = u_xlat81;
        u_xlat81 = ((x_3035 * x_3037) + x_3039);
        let x_3042 : vec4<f32> = u_xlat16;
        let x_3043 : vec2<f32> = vec2<f32>(x_3042.z, x_3042.w);
        let x_3045 : f32 = vs_INTERP3.z;
        txVec52 = vec3<f32>(x_3043.x, x_3043.y, x_3045);
        let x_3052 : vec3<f32> = txVec52;
        let x_3054 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3052.xy, x_3052.z);
        u_xlat8.x = x_3054;
        let x_3057 : f32 = u_xlat20.y;
        let x_3059 : f32 = u_xlat8.x;
        let x_3061 : f32 = u_xlat81;
        u_xlat81 = ((x_3057 * x_3059) + x_3061);
        let x_3064 : vec3<f32> = u_xlat33;
        let x_3065 : vec2<f32> = vec2<f32>(x_3064.x, x_3064.y);
        let x_3067 : f32 = vs_INTERP3.z;
        txVec53 = vec3<f32>(x_3065.x, x_3065.y, x_3067);
        let x_3074 : vec3<f32> = txVec53;
        let x_3076 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3074.xy, x_3074.z);
        u_xlat8.x = x_3076;
        let x_3079 : f32 = u_xlat20.z;
        let x_3081 : f32 = u_xlat8.x;
        let x_3083 : f32 = u_xlat81;
        u_xlat81 = ((x_3079 * x_3081) + x_3083);
        let x_3086 : vec4<f32> = u_xlat17;
        let x_3087 : vec2<f32> = vec2<f32>(x_3086.x, x_3086.y);
        let x_3089 : f32 = vs_INTERP3.z;
        txVec54 = vec3<f32>(x_3087.x, x_3087.y, x_3089);
        let x_3096 : vec3<f32> = txVec54;
        let x_3098 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3096.xy, x_3096.z);
        u_xlat8.x = x_3098;
        let x_3101 : f32 = u_xlat20.w;
        let x_3103 : f32 = u_xlat8.x;
        let x_3105 : f32 = u_xlat81;
        u_xlat81 = ((x_3101 * x_3103) + x_3105);
        let x_3108 : vec4<f32> = u_xlat11;
        let x_3109 : vec2<f32> = vec2<f32>(x_3108.x, x_3108.y);
        let x_3111 : f32 = vs_INTERP3.z;
        txVec55 = vec3<f32>(x_3109.x, x_3109.y, x_3111);
        let x_3118 : vec3<f32> = txVec55;
        let x_3120 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3118.xy, x_3118.z);
        u_xlat8.x = x_3120;
        let x_3123 : f32 = u_xlat7.x;
        let x_3125 : f32 = u_xlat8.x;
        let x_3127 : f32 = u_xlat81;
        u_xlat81 = ((x_3123 * x_3125) + x_3127);
        let x_3130 : vec4<f32> = u_xlat11;
        let x_3131 : vec2<f32> = vec2<f32>(x_3130.z, x_3130.w);
        let x_3133 : f32 = vs_INTERP3.z;
        txVec56 = vec3<f32>(x_3131.x, x_3131.y, x_3133);
        let x_3140 : vec3<f32> = txVec56;
        let x_3142 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3140.xy, x_3140.z);
        u_xlat7.x = x_3142;
        let x_3145 : f32 = u_xlat7.y;
        let x_3147 : f32 = u_xlat7.x;
        let x_3149 : f32 = u_xlat81;
        u_xlat81 = ((x_3145 * x_3147) + x_3149);
        let x_3152 : vec2<f32> = u_xlat60;
        let x_3154 : f32 = vs_INTERP3.z;
        txVec57 = vec3<f32>(x_3152.x, x_3152.y, x_3154);
        let x_3161 : vec3<f32> = txVec57;
        let x_3163 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3161.xy, x_3161.z);
        u_xlat7.x = x_3163;
        let x_3166 : f32 = u_xlat7.z;
        let x_3168 : f32 = u_xlat7.x;
        let x_3170 : f32 = u_xlat81;
        u_xlat81 = ((x_3166 * x_3168) + x_3170);
        let x_3173 : vec3<f32> = u_xlat31;
        let x_3174 : vec2<f32> = vec2<f32>(x_3173.x, x_3173.y);
        let x_3176 : f32 = vs_INTERP3.z;
        txVec58 = vec3<f32>(x_3174.x, x_3174.y, x_3176);
        let x_3183 : vec3<f32> = txVec58;
        let x_3185 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3183.xy, x_3183.z);
        u_xlat31.x = x_3185;
        let x_3188 : f32 = u_xlat7.w;
        let x_3190 : f32 = u_xlat31.x;
        let x_3192 : f32 = u_xlat81;
        u_xlat75 = ((x_3188 * x_3190) + x_3192);
      }
    }
  } else {
    let x_3196 : vec4<f32> = vs_INTERP3;
    let x_3197 : vec2<f32> = vec2<f32>(x_3196.x, x_3196.y);
    let x_3199 : f32 = vs_INTERP3.z;
    txVec59 = vec3<f32>(x_3197.x, x_3197.y, x_3199);
    let x_3206 : vec3<f32> = txVec59;
    let x_3208 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_3206.xy, x_3206.z);
    u_xlat75 = x_3208;
  }
  let x_3209 : f32 = u_xlat75;
  let x_3211 : f32 = x_265.x_MainLightShadowParams.x;
  let x_3213 : f32 = u_xlat77;
  u_xlat75 = ((x_3209 * x_3211) + x_3213);
  let x_3216 : f32 = vs_INTERP3.z;
  u_xlatb77 = (0.0f >= x_3216);
  let x_3219 : f32 = vs_INTERP3.z;
  u_xlatb31 = (x_3219 >= 1.0f);
  let x_3221 : bool = u_xlatb77;
  let x_3222 : bool = u_xlatb31;
  u_xlatb77 = (x_3221 | x_3222);
  let x_3224 : bool = u_xlatb77;
  let x_3225 : f32 = u_xlat75;
  u_xlat75 = select(x_3225, 1.0f, x_3224);
  let x_3227 : vec3<f32> = vs_INTERP8;
  let x_3229 : vec3<f32> = x_75.x_WorldSpaceCameraPos;
  u_xlat31 = (x_3227 + -(x_3229));
  let x_3232 : vec3<f32> = u_xlat31;
  let x_3233 : vec3<f32> = u_xlat31;
  u_xlat77 = dot(x_3232, x_3233);
  let x_3235 : f32 = u_xlat77;
  let x_3237 : f32 = x_265.x_MainLightShadowParams.z;
  let x_3240 : f32 = x_265.x_MainLightShadowParams.w;
  u_xlat31.x = ((x_3235 * x_3237) + x_3240);
  let x_3244 : f32 = u_xlat31.x;
  u_xlat31.x = clamp(x_3244, 0.0f, 1.0f);
  let x_3247 : f32 = u_xlat75;
  u_xlat56 = (-(x_3247) + 1.0f);
  let x_3251 : f32 = u_xlat31.x;
  let x_3252 : f32 = u_xlat56;
  let x_3254 : f32 = u_xlat75;
  u_xlat75 = ((x_3251 * x_3252) + x_3254);
  let x_3256 : vec3<f32> = u_xlat2;
  let x_3258 : vec4<f32> = u_xlat3;
  u_xlat31.x = dot(-(x_3256), vec3<f32>(x_3258.x, x_3258.y, x_3258.z));
  let x_3263 : f32 = u_xlat31.x;
  let x_3265 : f32 = u_xlat31.x;
  u_xlat31.x = (x_3263 + x_3265);
  let x_3268 : vec4<f32> = u_xlat3;
  let x_3270 : vec3<f32> = u_xlat31;
  let x_3274 : vec3<f32> = u_xlat2;
  u_xlat31 = ((vec3<f32>(x_3268.x, x_3268.y, x_3268.z) * -(vec3<f32>(x_3270.x, x_3270.x, x_3270.x))) + -(x_3274));
  let x_3277 : vec4<f32> = u_xlat3;
  let x_3279 : vec3<f32> = u_xlat2;
  u_xlat7.x = dot(vec3<f32>(x_3277.x, x_3277.y, x_3277.z), x_3279);
  let x_3283 : f32 = u_xlat7.x;
  u_xlat7.x = clamp(x_3283, 0.0f, 1.0f);
  let x_3287 : f32 = u_xlat7.x;
  u_xlat7.x = (-(x_3287) + 1.0f);
  let x_3292 : f32 = u_xlat7.x;
  let x_3294 : f32 = u_xlat7.x;
  u_xlat7.x = (x_3292 * x_3294);
  let x_3298 : f32 = u_xlat7.x;
  let x_3300 : f32 = u_xlat7.x;
  u_xlat7.x = (x_3298 * x_3300);
  let x_3305 : f32 = u_xlat51.x;
  u_xlat32 = ((-(x_3305) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_3312 : f32 = u_xlat51.x;
  let x_3313 : f32 = u_xlat32;
  u_xlat51.x = (x_3312 * x_3313);
  let x_3317 : f32 = u_xlat51.x;
  u_xlat51.x = (x_3317 * 6.0f);
  let x_3329 : vec3<f32> = u_xlat31;
  let x_3331 : f32 = u_xlat51.x;
  let x_3332 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_3329, x_3331);
  u_xlat8 = x_3332;
  let x_3334 : f32 = u_xlat8.w;
  u_xlat51.x = (x_3334 + -1.0f);
  let x_3338 : f32 = x_148.unity_SpecCube0_HDR.w;
  let x_3340 : f32 = u_xlat51.x;
  u_xlat51.x = ((x_3338 * x_3340) + 1.0f);
  let x_3345 : f32 = u_xlat51.x;
  u_xlat51.x = max(x_3345, 0.0f);
  let x_3349 : f32 = u_xlat51.x;
  u_xlat51.x = log2(x_3349);
  let x_3353 : f32 = u_xlat51.x;
  let x_3355 : f32 = x_148.unity_SpecCube0_HDR.y;
  u_xlat51.x = (x_3353 * x_3355);
  let x_3359 : f32 = u_xlat51.x;
  u_xlat51.x = exp2(x_3359);
  let x_3363 : f32 = u_xlat51.x;
  let x_3365 : f32 = x_148.unity_SpecCube0_HDR.x;
  u_xlat51.x = (x_3363 * x_3365);
  let x_3368 : vec4<f32> = u_xlat8;
  let x_3370 : vec2<f32> = u_xlat51;
  u_xlat31 = (vec3<f32>(x_3368.x, x_3368.y, x_3368.z) * vec3<f32>(x_3370.x, x_3370.x, x_3370.x));
  let x_3373 : f32 = u_xlat76;
  let x_3375 : f32 = u_xlat76;
  u_xlat51 = ((vec2<f32>(x_3373, x_3373) * vec2<f32>(x_3375, x_3375)) + vec2<f32>(-1.0f, 1.0f));
  let x_3381 : f32 = u_xlat51.y;
  u_xlat76 = (1.0f / x_3381);
  let x_3383 : f32 = u_xlat79;
  u_xlat79 = (x_3383 + -0.03999999910593032837f);
  let x_3387 : f32 = u_xlat7.x;
  let x_3388 : f32 = u_xlat79;
  u_xlat79 = ((x_3387 * x_3388) + 0.03999999910593032837f);
  let x_3392 : f32 = u_xlat76;
  let x_3393 : f32 = u_xlat79;
  u_xlat76 = (x_3392 * x_3393);
  let x_3395 : f32 = u_xlat76;
  let x_3397 : vec3<f32> = u_xlat31;
  u_xlat31 = (vec3<f32>(x_3395, x_3395, x_3395) * x_3397);
  let x_3399 : vec3<f32> = u_xlat30;
  let x_3400 : vec3<f32> = u_xlat4;
  let x_3402 : vec3<f32> = u_xlat31;
  u_xlat30 = ((x_3399 * x_3400) + x_3402);
  let x_3404 : f32 = u_xlat75;
  let x_3406 : f32 = x_148.unity_LightData.z;
  u_xlat75 = (x_3404 * x_3406);
  let x_3408 : vec4<f32> = u_xlat3;
  let x_3411 : vec4<f32> = x_75.x_MainLightPosition;
  u_xlat76 = dot(vec3<f32>(x_3408.x, x_3408.y, x_3408.z), vec3<f32>(x_3411.x, x_3411.y, x_3411.z));
  let x_3414 : f32 = u_xlat76;
  u_xlat76 = clamp(x_3414, 0.0f, 1.0f);
  let x_3416 : f32 = u_xlat75;
  let x_3417 : f32 = u_xlat76;
  u_xlat75 = (x_3416 * x_3417);
  let x_3419 : f32 = u_xlat75;
  let x_3422 : vec4<f32> = x_75.x_MainLightColor;
  u_xlat31 = (vec3<f32>(x_3419, x_3419, x_3419) * vec3<f32>(x_3422.x, x_3422.y, x_3422.z));
  let x_3425 : vec3<f32> = u_xlat2;
  let x_3427 : vec4<f32> = x_75.x_MainLightPosition;
  let x_3429 : vec3<f32> = (x_3425 + vec3<f32>(x_3427.x, x_3427.y, x_3427.z));
  let x_3430 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3429.x, x_3429.y, x_3429.z, x_3430.w);
  let x_3432 : vec4<f32> = u_xlat7;
  let x_3434 : vec4<f32> = u_xlat7;
  u_xlat75 = dot(vec3<f32>(x_3432.x, x_3432.y, x_3432.z), vec3<f32>(x_3434.x, x_3434.y, x_3434.z));
  let x_3437 : f32 = u_xlat75;
  u_xlat75 = max(x_3437, 1.17549435e-38f);
  let x_3440 : f32 = u_xlat75;
  u_xlat75 = inverseSqrt(x_3440);
  let x_3442 : f32 = u_xlat75;
  let x_3444 : vec4<f32> = u_xlat7;
  let x_3446 : vec3<f32> = (vec3<f32>(x_3442, x_3442, x_3442) * vec3<f32>(x_3444.x, x_3444.y, x_3444.z));
  let x_3447 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3446.x, x_3446.y, x_3446.z, x_3447.w);
  let x_3449 : vec4<f32> = u_xlat3;
  let x_3451 : vec4<f32> = u_xlat7;
  u_xlat75 = dot(vec3<f32>(x_3449.x, x_3449.y, x_3449.z), vec3<f32>(x_3451.x, x_3451.y, x_3451.z));
  let x_3454 : f32 = u_xlat75;
  u_xlat75 = clamp(x_3454, 0.0f, 1.0f);
  let x_3457 : vec4<f32> = x_75.x_MainLightPosition;
  let x_3459 : vec4<f32> = u_xlat7;
  u_xlat76 = dot(vec3<f32>(x_3457.x, x_3457.y, x_3457.z), vec3<f32>(x_3459.x, x_3459.y, x_3459.z));
  let x_3462 : f32 = u_xlat76;
  u_xlat76 = clamp(x_3462, 0.0f, 1.0f);
  let x_3464 : f32 = u_xlat75;
  let x_3465 : f32 = u_xlat75;
  u_xlat75 = (x_3464 * x_3465);
  let x_3467 : f32 = u_xlat75;
  let x_3469 : f32 = u_xlat51.x;
  u_xlat75 = ((x_3467 * x_3469) + 1.00001001358032226562f);
  let x_3473 : f32 = u_xlat76;
  let x_3474 : f32 = u_xlat76;
  u_xlat76 = (x_3473 * x_3474);
  let x_3476 : f32 = u_xlat75;
  let x_3477 : f32 = u_xlat75;
  u_xlat75 = (x_3476 * x_3477);
  let x_3479 : f32 = u_xlat76;
  u_xlat76 = max(x_3479, 0.10000000149011611938f);
  let x_3482 : f32 = u_xlat75;
  let x_3483 : f32 = u_xlat76;
  u_xlat75 = (x_3482 * x_3483);
  let x_3486 : f32 = u_xlat5.x;
  let x_3487 : f32 = u_xlat75;
  u_xlat75 = (x_3486 * x_3487);
  let x_3489 : f32 = u_xlat78;
  let x_3490 : f32 = u_xlat75;
  u_xlat75 = (x_3489 / x_3490);
  let x_3492 : f32 = u_xlat75;
  let x_3496 : vec3<f32> = u_xlat4;
  let x_3497 : vec3<f32> = ((vec3<f32>(x_3492, x_3492, x_3492) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_3496);
  let x_3498 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_3497.x, x_3497.y, x_3497.z, x_3498.w);
  let x_3500 : vec3<f32> = u_xlat31;
  let x_3501 : vec4<f32> = u_xlat7;
  u_xlat31 = (x_3500 * vec3<f32>(x_3501.x, x_3501.y, x_3501.z));
  let x_3506 : f32 = x_75.x_AdditionalLightsCount.x;
  let x_3508 : f32 = x_148.unity_LightData.y;
  u_xlat75 = min(x_3506, x_3508);
  let x_3511 : f32 = u_xlat75;
  u_xlatu75 = bitcast<u32>(i32(x_3511));
  let x_3514 : f32 = u_xlat77;
  let x_3517 : f32 = x_265.x_AdditionalShadowFadeParams.x;
  let x_3520 : f32 = x_265.x_AdditionalShadowFadeParams.y;
  u_xlat76 = ((x_3514 * x_3517) + x_3520);
  let x_3522 : f32 = u_xlat76;
  u_xlat76 = clamp(x_3522, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_3533 : u32 = u_xlatu_loop_1;
    let x_3534 : u32 = u_xlatu75;
    if ((x_3533 < x_3534)) {
    } else {
      break;
    }
    let x_3537 : u32 = u_xlatu_loop_1;
    u_xlatu79 = (x_3537 >> 2u);
    let x_3540 : u32 = u_xlatu_loop_1;
    u_xlati82 = bitcast<i32>((x_3540 & 3u));
    let x_3543 : u32 = u_xlatu79;
    let x_3546 : vec4<f32> = x_148.unity_LightIndices[bitcast<i32>(x_3543)];
    let x_3556 : i32 = u_xlati82;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_3561 : vec4<u32> = indexable[x_3556];
    u_xlat79 = dot(x_3546, bitcast<vec4<f32>>(x_3561));
    let x_3565 : f32 = u_xlat79;
    u_xlati79 = i32(x_3565);
    let x_3567 : vec3<f32> = vs_INTERP8;
    let x_3578 : i32 = u_xlati79;
    let x_3580 : vec4<f32> = x_3577.x_AdditionalLightsPosition[x_3578];
    let x_3583 : i32 = u_xlati79;
    let x_3585 : vec4<f32> = x_3577.x_AdditionalLightsPosition[x_3583];
    let x_3587 : vec3<f32> = ((-(x_3567) * vec3<f32>(x_3580.w, x_3580.w, x_3580.w)) + vec3<f32>(x_3585.x, x_3585.y, x_3585.z));
    let x_3588 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3587.x, x_3587.y, x_3587.z, x_3588.w);
    let x_3591 : vec4<f32> = u_xlat8;
    let x_3593 : vec4<f32> = u_xlat8;
    u_xlat82 = dot(vec3<f32>(x_3591.x, x_3591.y, x_3591.z), vec3<f32>(x_3593.x, x_3593.y, x_3593.z));
    let x_3596 : f32 = u_xlat82;
    u_xlat82 = max(x_3596, 0.00006103515625f);
    let x_3600 : f32 = u_xlat82;
    u_xlat83 = inverseSqrt(x_3600);
    let x_3602 : f32 = u_xlat83;
    let x_3604 : vec4<f32> = u_xlat8;
    let x_3606 : vec3<f32> = (vec3<f32>(x_3602, x_3602, x_3602) * vec3<f32>(x_3604.x, x_3604.y, x_3604.z));
    let x_3607 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3606.x, x_3606.y, x_3606.z, x_3607.w);
    let x_3610 : f32 = u_xlat82;
    u_xlat84 = (1.0f / x_3610);
    let x_3612 : f32 = u_xlat82;
    let x_3613 : i32 = u_xlati79;
    let x_3615 : f32 = x_3577.x_AdditionalLightsAttenuation[x_3613].x;
    u_xlat82 = (x_3612 * x_3615);
    let x_3617 : f32 = u_xlat82;
    let x_3619 : f32 = u_xlat82;
    u_xlat82 = ((-(x_3617) * x_3619) + 1.0f);
    let x_3622 : f32 = u_xlat82;
    u_xlat82 = max(x_3622, 0.0f);
    let x_3624 : f32 = u_xlat82;
    let x_3625 : f32 = u_xlat82;
    u_xlat82 = (x_3624 * x_3625);
    let x_3627 : f32 = u_xlat82;
    let x_3628 : f32 = u_xlat84;
    u_xlat82 = (x_3627 * x_3628);
    let x_3630 : i32 = u_xlati79;
    let x_3632 : vec4<f32> = x_3577.x_AdditionalLightsSpotDir[x_3630];
    let x_3634 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_3632.x, x_3632.y, x_3632.z), vec3<f32>(x_3634.x, x_3634.y, x_3634.z));
    let x_3637 : f32 = u_xlat84;
    let x_3638 : i32 = u_xlati79;
    let x_3640 : f32 = x_3577.x_AdditionalLightsAttenuation[x_3638].z;
    let x_3642 : i32 = u_xlati79;
    let x_3644 : f32 = x_3577.x_AdditionalLightsAttenuation[x_3642].w;
    u_xlat84 = ((x_3637 * x_3640) + x_3644);
    let x_3646 : f32 = u_xlat84;
    u_xlat84 = clamp(x_3646, 0.0f, 1.0f);
    let x_3648 : f32 = u_xlat84;
    let x_3649 : f32 = u_xlat84;
    u_xlat84 = (x_3648 * x_3649);
    let x_3651 : f32 = u_xlat82;
    let x_3652 : f32 = u_xlat84;
    u_xlat82 = (x_3651 * x_3652);
    let x_3656 : i32 = u_xlati79;
    let x_3658 : f32 = x_265.x_AdditionalShadowParams[x_3656].w;
    u_xlati84 = i32(x_3658);
    let x_3663 : i32 = u_xlati84;
    u_xlatb10.x = (x_3663 >= 0i);
    let x_3667 : bool = u_xlatb10.x;
    if (x_3667) {
      let x_3671 : i32 = u_xlati79;
      let x_3673 : f32 = x_265.x_AdditionalShadowParams[x_3671].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_3673, x_3673, x_3673, x_3673))));
      let x_3680 : bool = u_xlatb10.x;
      if (x_3680) {
        let x_3683 : vec4<f32> = u_xlat9;
        let x_3686 : vec4<f32> = u_xlat9;
        let x_3689 : vec4<bool> = (abs(vec4<f32>(x_3683.z, x_3683.z, x_3683.y, x_3683.z)) >= abs(vec4<f32>(x_3686.x, x_3686.y, x_3686.x, x_3686.x)));
        u_xlatb10 = vec3<bool>(x_3689.x, x_3689.y, x_3689.z);
        let x_3692 : bool = u_xlatb10.y;
        let x_3694 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_3692 & x_3694);
        let x_3698 : vec4<f32> = u_xlat9;
        let x_3701 : vec4<bool> = (-(vec4<f32>(x_3698.z, x_3698.y, x_3698.x, x_3698.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_3701.x, x_3701.y, x_3701.z);
        let x_3705 : bool = u_xlatb11.x;
        u_xlat35.x = select(4.0f, 5.0f, x_3705);
        let x_3710 : bool = u_xlatb11.y;
        u_xlat35.z = select(2.0f, 3.0f, x_3710);
        let x_3715 : bool = u_xlatb11.z;
        u_xlat11.x = select(0.0f, 1.0f, x_3715);
        let x_3719 : bool = u_xlatb10.z;
        if (x_3719) {
          let x_3724 : f32 = u_xlat35.z;
          x_3720 = x_3724;
        } else {
          let x_3727 : f32 = u_xlat11.x;
          x_3720 = x_3727;
        }
        let x_3728 : f32 = x_3720;
        u_xlat60.x = x_3728;
        let x_3731 : bool = u_xlatb10.x;
        if (x_3731) {
          let x_3736 : f32 = u_xlat35.x;
          x_3732 = x_3736;
        } else {
          let x_3739 : f32 = u_xlat60.x;
          x_3732 = x_3739;
        }
        let x_3740 : f32 = x_3732;
        u_xlat10.x = x_3740;
        let x_3742 : i32 = u_xlati79;
        let x_3744 : f32 = x_265.x_AdditionalShadowParams[x_3742].w;
        u_xlat35.x = trunc(x_3744);
        let x_3748 : f32 = u_xlat10.x;
        let x_3750 : f32 = u_xlat35.x;
        u_xlat10.x = (x_3748 + x_3750);
        let x_3754 : f32 = u_xlat10.x;
        u_xlati84 = i32(x_3754);
      }
      let x_3756 : i32 = u_xlati84;
      u_xlati84 = (x_3756 << bitcast<u32>(2i));
      let x_3758 : vec3<f32> = vs_INTERP8;
      let x_3761 : i32 = u_xlati84;
      let x_3764 : i32 = u_xlati84;
      let x_3768 : vec4<f32> = x_265.x_AdditionalLightsWorldToShadow[((x_3761 + 1i) / 4i)][((x_3764 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_3758.y, x_3758.y, x_3758.y, x_3758.y) * x_3768);
      let x_3770 : i32 = u_xlati84;
      let x_3772 : i32 = u_xlati84;
      let x_3775 : vec4<f32> = x_265.x_AdditionalLightsWorldToShadow[(x_3770 / 4i)][(x_3772 % 4i)];
      let x_3776 : vec3<f32> = vs_INTERP8;
      let x_3779 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_3775 * vec4<f32>(x_3776.x, x_3776.x, x_3776.x, x_3776.x)) + x_3779);
      let x_3781 : i32 = u_xlati84;
      let x_3784 : i32 = u_xlati84;
      let x_3788 : vec4<f32> = x_265.x_AdditionalLightsWorldToShadow[((x_3781 + 2i) / 4i)][((x_3784 + 2i) % 4i)];
      let x_3789 : vec3<f32> = vs_INTERP8;
      let x_3792 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_3788 * vec4<f32>(x_3789.z, x_3789.z, x_3789.z, x_3789.z)) + x_3792);
      let x_3794 : vec4<f32> = u_xlat10;
      let x_3795 : i32 = u_xlati84;
      let x_3798 : i32 = u_xlati84;
      let x_3802 : vec4<f32> = x_265.x_AdditionalLightsWorldToShadow[((x_3795 + 3i) / 4i)][((x_3798 + 3i) % 4i)];
      u_xlat10 = (x_3794 + x_3802);
      let x_3804 : vec4<f32> = u_xlat10;
      let x_3806 : vec4<f32> = u_xlat10;
      let x_3808 : vec3<f32> = (vec3<f32>(x_3804.x, x_3804.y, x_3804.z) / vec3<f32>(x_3806.w, x_3806.w, x_3806.w));
      let x_3809 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_3808.x, x_3808.y, x_3808.z, x_3809.w);
      let x_3812 : i32 = u_xlati79;
      let x_3814 : f32 = x_265.x_AdditionalShadowParams[x_3812].y;
      u_xlatb84 = (0.0f < x_3814);
      let x_3816 : bool = u_xlatb84;
      if (x_3816) {
        let x_3819 : i32 = u_xlati79;
        let x_3821 : f32 = x_265.x_AdditionalShadowParams[x_3819].y;
        u_xlatb84 = (1.0f == x_3821);
        let x_3823 : bool = u_xlatb84;
        if (x_3823) {
          let x_3826 : vec4<f32> = u_xlat10;
          let x_3830 : vec4<f32> = x_265.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_3826.x, x_3826.y, x_3826.x, x_3826.y) + x_3830);
          let x_3833 : vec4<f32> = u_xlat11;
          let x_3834 : vec2<f32> = vec2<f32>(x_3833.x, x_3833.y);
          let x_3836 : f32 = u_xlat10.z;
          txVec60 = vec3<f32>(x_3834.x, x_3834.y, x_3836);
          let x_3844 : vec3<f32> = txVec60;
          let x_3846 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3844.xy, x_3844.z);
          u_xlat12.x = x_3846;
          let x_3849 : vec4<f32> = u_xlat11;
          let x_3850 : vec2<f32> = vec2<f32>(x_3849.z, x_3849.w);
          let x_3852 : f32 = u_xlat10.z;
          txVec61 = vec3<f32>(x_3850.x, x_3850.y, x_3852);
          let x_3859 : vec3<f32> = txVec61;
          let x_3861 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3859.xy, x_3859.z);
          u_xlat12.y = x_3861;
          let x_3863 : vec4<f32> = u_xlat10;
          let x_3867 : vec4<f32> = x_265.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_3863.x, x_3863.y, x_3863.x, x_3863.y) + x_3867);
          let x_3870 : vec4<f32> = u_xlat11;
          let x_3871 : vec2<f32> = vec2<f32>(x_3870.x, x_3870.y);
          let x_3873 : f32 = u_xlat10.z;
          txVec62 = vec3<f32>(x_3871.x, x_3871.y, x_3873);
          let x_3880 : vec3<f32> = txVec62;
          let x_3882 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3880.xy, x_3880.z);
          u_xlat12.z = x_3882;
          let x_3885 : vec4<f32> = u_xlat11;
          let x_3886 : vec2<f32> = vec2<f32>(x_3885.z, x_3885.w);
          let x_3888 : f32 = u_xlat10.z;
          txVec63 = vec3<f32>(x_3886.x, x_3886.y, x_3888);
          let x_3895 : vec3<f32> = txVec63;
          let x_3897 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3895.xy, x_3895.z);
          u_xlat12.w = x_3897;
          let x_3899 : vec4<f32> = u_xlat12;
          u_xlat84 = dot(x_3899, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_3903 : i32 = u_xlati79;
          let x_3905 : f32 = x_265.x_AdditionalShadowParams[x_3903].y;
          u_xlatb85 = (2.0f == x_3905);
          let x_3907 : bool = u_xlatb85;
          if (x_3907) {
            let x_3910 : vec4<f32> = u_xlat10;
            let x_3914 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_3917 : vec2<f32> = ((vec2<f32>(x_3910.x, x_3910.y) * vec2<f32>(x_3914.z, x_3914.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3918 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3917.x, x_3917.y, x_3918.z, x_3918.w);
            let x_3920 : vec4<f32> = u_xlat11;
            let x_3922 : vec2<f32> = floor(vec2<f32>(x_3920.x, x_3920.y));
            let x_3923 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3922.x, x_3922.y, x_3923.z, x_3923.w);
            let x_3926 : vec4<f32> = u_xlat10;
            let x_3929 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_3932 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_3926.x, x_3926.y) * vec2<f32>(x_3929.z, x_3929.w)) + -(vec2<f32>(x_3932.x, x_3932.y)));
            let x_3936 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_3936.x, x_3936.x, x_3936.y, x_3936.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3939 : vec4<f32> = u_xlat12;
            let x_3941 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3939.x, x_3939.x, x_3939.z, x_3939.z) * vec4<f32>(x_3941.x, x_3941.x, x_3941.z, x_3941.z));
            let x_3944 : vec4<f32> = u_xlat13;
            let x_3946 : vec2<f32> = (vec2<f32>(x_3944.y, x_3944.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_3947 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3946.x, x_3947.y, x_3946.y, x_3947.w);
            let x_3949 : vec4<f32> = u_xlat13;
            let x_3952 : vec2<f32> = u_xlat61;
            let x_3954 : vec2<f32> = ((vec2<f32>(x_3949.x, x_3949.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3952));
            let x_3955 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3954.x, x_3954.y, x_3955.z, x_3955.w);
            let x_3957 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_3957) + vec2<f32>(1.0f, 1.0f));
            let x_3960 : vec2<f32> = u_xlat61;
            let x_3961 : vec2<f32> = min(x_3960, vec2<f32>(0.0f, 0.0f));
            let x_3962 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3961.x, x_3961.y, x_3962.z, x_3962.w);
            let x_3964 : vec4<f32> = u_xlat14;
            let x_3967 : vec4<f32> = u_xlat14;
            let x_3970 : vec2<f32> = u_xlat63;
            let x_3971 : vec2<f32> = ((-(vec2<f32>(x_3964.x, x_3964.y)) * vec2<f32>(x_3967.x, x_3967.y)) + x_3970);
            let x_3972 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3971.x, x_3971.y, x_3972.z, x_3972.w);
            let x_3974 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_3974, vec2<f32>(0.0f, 0.0f));
            let x_3976 : vec2<f32> = u_xlat61;
            let x_3978 : vec2<f32> = u_xlat61;
            let x_3980 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_3976) * x_3978) + vec2<f32>(x_3980.y, x_3980.w));
            let x_3983 : vec4<f32> = u_xlat14;
            let x_3985 : vec2<f32> = (vec2<f32>(x_3983.x, x_3983.y) + vec2<f32>(1.0f, 1.0f));
            let x_3986 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3985.x, x_3985.y, x_3986.z, x_3986.w);
            let x_3988 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_3988 + vec2<f32>(1.0f, 1.0f));
            let x_3990 : vec4<f32> = u_xlat13;
            let x_3992 : vec2<f32> = (vec2<f32>(x_3990.x, x_3990.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3993 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3992.x, x_3992.y, x_3993.z, x_3993.w);
            let x_3995 : vec2<f32> = u_xlat63;
            let x_3996 : vec2<f32> = (x_3995 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3997 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3996.x, x_3996.y, x_3997.z, x_3997.w);
            let x_3999 : vec4<f32> = u_xlat14;
            let x_4001 : vec2<f32> = (vec2<f32>(x_3999.x, x_3999.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4002 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4001.x, x_4001.y, x_4002.z, x_4002.w);
            let x_4004 : vec2<f32> = u_xlat61;
            let x_4005 : vec2<f32> = (x_4004 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4006 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4005.x, x_4005.y, x_4006.z, x_4006.w);
            let x_4008 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_4008.y, x_4008.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_4012 : f32 = u_xlat14.x;
            u_xlat15.z = x_4012;
            let x_4015 : f32 = u_xlat61.x;
            u_xlat15.w = x_4015;
            let x_4018 : f32 = u_xlat16.x;
            u_xlat13.z = x_4018;
            let x_4021 : f32 = u_xlat12.x;
            u_xlat13.w = x_4021;
            let x_4023 : vec4<f32> = u_xlat13;
            let x_4025 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_4023.z, x_4023.w, x_4023.x, x_4023.z) + vec4<f32>(x_4025.z, x_4025.w, x_4025.x, x_4025.z));
            let x_4029 : f32 = u_xlat15.y;
            u_xlat14.z = x_4029;
            let x_4032 : f32 = u_xlat61.y;
            u_xlat14.w = x_4032;
            let x_4035 : f32 = u_xlat13.y;
            u_xlat16.z = x_4035;
            let x_4038 : f32 = u_xlat12.z;
            u_xlat16.w = x_4038;
            let x_4040 : vec4<f32> = u_xlat14;
            let x_4042 : vec4<f32> = u_xlat16;
            let x_4044 : vec3<f32> = (vec3<f32>(x_4040.z, x_4040.y, x_4040.w) + vec3<f32>(x_4042.z, x_4042.y, x_4042.w));
            let x_4045 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4044.x, x_4044.y, x_4044.z, x_4045.w);
            let x_4047 : vec4<f32> = u_xlat13;
            let x_4049 : vec4<f32> = u_xlat17;
            let x_4051 : vec3<f32> = (vec3<f32>(x_4047.x, x_4047.z, x_4047.w) / vec3<f32>(x_4049.z, x_4049.w, x_4049.y));
            let x_4052 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4051.x, x_4051.y, x_4051.z, x_4052.w);
            let x_4054 : vec4<f32> = u_xlat13;
            let x_4056 : vec3<f32> = (vec3<f32>(x_4054.x, x_4054.y, x_4054.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4057 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4056.x, x_4056.y, x_4056.z, x_4057.w);
            let x_4059 : vec4<f32> = u_xlat16;
            let x_4061 : vec4<f32> = u_xlat12;
            let x_4063 : vec3<f32> = (vec3<f32>(x_4059.z, x_4059.y, x_4059.w) / vec3<f32>(x_4061.x, x_4061.y, x_4061.z));
            let x_4064 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4063.x, x_4063.y, x_4063.z, x_4064.w);
            let x_4066 : vec4<f32> = u_xlat14;
            let x_4068 : vec3<f32> = (vec3<f32>(x_4066.x, x_4066.y, x_4066.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_4069 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4068.x, x_4068.y, x_4068.z, x_4069.w);
            let x_4071 : vec4<f32> = u_xlat13;
            let x_4074 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4076 : vec3<f32> = (vec3<f32>(x_4071.y, x_4071.x, x_4071.z) * vec3<f32>(x_4074.x, x_4074.x, x_4074.x));
            let x_4077 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4076.x, x_4076.y, x_4076.z, x_4077.w);
            let x_4079 : vec4<f32> = u_xlat14;
            let x_4082 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4084 : vec3<f32> = (vec3<f32>(x_4079.x, x_4079.y, x_4079.z) * vec3<f32>(x_4082.y, x_4082.y, x_4082.y));
            let x_4085 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4084.x, x_4084.y, x_4084.z, x_4085.w);
            let x_4088 : f32 = u_xlat14.x;
            u_xlat13.w = x_4088;
            let x_4090 : vec4<f32> = u_xlat11;
            let x_4093 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4096 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_4090.x, x_4090.y, x_4090.x, x_4090.y) * vec4<f32>(x_4093.x, x_4093.y, x_4093.x, x_4093.y)) + vec4<f32>(x_4096.y, x_4096.w, x_4096.x, x_4096.w));
            let x_4099 : vec4<f32> = u_xlat11;
            let x_4102 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4105 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_4099.x, x_4099.y) * vec2<f32>(x_4102.x, x_4102.y)) + vec2<f32>(x_4105.z, x_4105.w));
            let x_4109 : f32 = u_xlat13.y;
            u_xlat14.w = x_4109;
            let x_4111 : vec4<f32> = u_xlat14;
            let x_4112 : vec2<f32> = vec2<f32>(x_4111.y, x_4111.z);
            let x_4113 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4113.x, x_4112.x, x_4113.z, x_4112.y);
            let x_4115 : vec4<f32> = u_xlat11;
            let x_4118 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4121 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_4115.x, x_4115.y, x_4115.x, x_4115.y) * vec4<f32>(x_4118.x, x_4118.y, x_4118.x, x_4118.y)) + vec4<f32>(x_4121.x, x_4121.y, x_4121.z, x_4121.y));
            let x_4124 : vec4<f32> = u_xlat11;
            let x_4127 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4130 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_4124.x, x_4124.y, x_4124.x, x_4124.y) * vec4<f32>(x_4127.x, x_4127.y, x_4127.x, x_4127.y)) + vec4<f32>(x_4130.w, x_4130.y, x_4130.w, x_4130.z));
            let x_4133 : vec4<f32> = u_xlat11;
            let x_4136 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4139 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_4133.x, x_4133.y, x_4133.x, x_4133.y) * vec4<f32>(x_4136.x, x_4136.y, x_4136.x, x_4136.y)) + vec4<f32>(x_4139.x, x_4139.w, x_4139.z, x_4139.w));
            let x_4142 : vec4<f32> = u_xlat12;
            let x_4144 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_4142.x, x_4142.x, x_4142.x, x_4142.y) * vec4<f32>(x_4144.z, x_4144.w, x_4144.y, x_4144.z));
            let x_4147 : vec4<f32> = u_xlat12;
            let x_4149 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_4147.y, x_4147.y, x_4147.z, x_4147.z) * x_4149);
            let x_4153 : f32 = u_xlat12.z;
            let x_4155 : f32 = u_xlat17.y;
            u_xlat85 = (x_4153 * x_4155);
            let x_4158 : vec4<f32> = u_xlat15;
            let x_4159 : vec2<f32> = vec2<f32>(x_4158.x, x_4158.y);
            let x_4161 : f32 = u_xlat10.z;
            txVec64 = vec3<f32>(x_4159.x, x_4159.y, x_4161);
            let x_4168 : vec3<f32> = txVec64;
            let x_4170 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4168.xy, x_4168.z);
            u_xlat11.x = x_4170;
            let x_4173 : vec4<f32> = u_xlat15;
            let x_4174 : vec2<f32> = vec2<f32>(x_4173.z, x_4173.w);
            let x_4176 : f32 = u_xlat10.z;
            txVec65 = vec3<f32>(x_4174.x, x_4174.y, x_4176);
            let x_4184 : vec3<f32> = txVec65;
            let x_4186 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4184.xy, x_4184.z);
            u_xlat36 = x_4186;
            let x_4187 : f32 = u_xlat36;
            let x_4189 : f32 = u_xlat18.y;
            u_xlat36 = (x_4187 * x_4189);
            let x_4192 : f32 = u_xlat18.x;
            let x_4194 : f32 = u_xlat11.x;
            let x_4196 : f32 = u_xlat36;
            u_xlat11.x = ((x_4192 * x_4194) + x_4196);
            let x_4200 : vec2<f32> = u_xlat61;
            let x_4202 : f32 = u_xlat10.z;
            txVec66 = vec3<f32>(x_4200.x, x_4200.y, x_4202);
            let x_4209 : vec3<f32> = txVec66;
            let x_4211 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4209.xy, x_4209.z);
            u_xlat36 = x_4211;
            let x_4213 : f32 = u_xlat18.z;
            let x_4214 : f32 = u_xlat36;
            let x_4217 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_4213 * x_4214) + x_4217);
            let x_4221 : vec4<f32> = u_xlat14;
            let x_4222 : vec2<f32> = vec2<f32>(x_4221.x, x_4221.y);
            let x_4224 : f32 = u_xlat10.z;
            txVec67 = vec3<f32>(x_4222.x, x_4222.y, x_4224);
            let x_4231 : vec3<f32> = txVec67;
            let x_4233 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4231.xy, x_4231.z);
            u_xlat36 = x_4233;
            let x_4235 : f32 = u_xlat18.w;
            let x_4236 : f32 = u_xlat36;
            let x_4239 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_4235 * x_4236) + x_4239);
            let x_4243 : vec4<f32> = u_xlat16;
            let x_4244 : vec2<f32> = vec2<f32>(x_4243.x, x_4243.y);
            let x_4246 : f32 = u_xlat10.z;
            txVec68 = vec3<f32>(x_4244.x, x_4244.y, x_4246);
            let x_4253 : vec3<f32> = txVec68;
            let x_4255 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4253.xy, x_4253.z);
            u_xlat36 = x_4255;
            let x_4257 : f32 = u_xlat19.x;
            let x_4258 : f32 = u_xlat36;
            let x_4261 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_4257 * x_4258) + x_4261);
            let x_4265 : vec4<f32> = u_xlat16;
            let x_4266 : vec2<f32> = vec2<f32>(x_4265.z, x_4265.w);
            let x_4268 : f32 = u_xlat10.z;
            txVec69 = vec3<f32>(x_4266.x, x_4266.y, x_4268);
            let x_4275 : vec3<f32> = txVec69;
            let x_4277 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4275.xy, x_4275.z);
            u_xlat36 = x_4277;
            let x_4279 : f32 = u_xlat19.y;
            let x_4280 : f32 = u_xlat36;
            let x_4283 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_4279 * x_4280) + x_4283);
            let x_4287 : vec4<f32> = u_xlat14;
            let x_4288 : vec2<f32> = vec2<f32>(x_4287.z, x_4287.w);
            let x_4290 : f32 = u_xlat10.z;
            txVec70 = vec3<f32>(x_4288.x, x_4288.y, x_4290);
            let x_4297 : vec3<f32> = txVec70;
            let x_4299 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4297.xy, x_4297.z);
            u_xlat36 = x_4299;
            let x_4301 : f32 = u_xlat19.z;
            let x_4302 : f32 = u_xlat36;
            let x_4305 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_4301 * x_4302) + x_4305);
            let x_4309 : vec4<f32> = u_xlat13;
            let x_4310 : vec2<f32> = vec2<f32>(x_4309.x, x_4309.y);
            let x_4312 : f32 = u_xlat10.z;
            txVec71 = vec3<f32>(x_4310.x, x_4310.y, x_4312);
            let x_4319 : vec3<f32> = txVec71;
            let x_4321 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4319.xy, x_4319.z);
            u_xlat36 = x_4321;
            let x_4323 : f32 = u_xlat19.w;
            let x_4324 : f32 = u_xlat36;
            let x_4327 : f32 = u_xlat11.x;
            u_xlat11.x = ((x_4323 * x_4324) + x_4327);
            let x_4331 : vec4<f32> = u_xlat13;
            let x_4332 : vec2<f32> = vec2<f32>(x_4331.z, x_4331.w);
            let x_4334 : f32 = u_xlat10.z;
            txVec72 = vec3<f32>(x_4332.x, x_4332.y, x_4334);
            let x_4341 : vec3<f32> = txVec72;
            let x_4343 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4341.xy, x_4341.z);
            u_xlat36 = x_4343;
            let x_4344 : f32 = u_xlat85;
            let x_4345 : f32 = u_xlat36;
            let x_4348 : f32 = u_xlat11.x;
            u_xlat84 = ((x_4344 * x_4345) + x_4348);
          } else {
            let x_4351 : vec4<f32> = u_xlat10;
            let x_4354 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4357 : vec2<f32> = ((vec2<f32>(x_4351.x, x_4351.y) * vec2<f32>(x_4354.z, x_4354.w)) + vec2<f32>(0.5f, 0.5f));
            let x_4358 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_4357.x, x_4357.y, x_4358.z, x_4358.w);
            let x_4360 : vec4<f32> = u_xlat11;
            let x_4362 : vec2<f32> = floor(vec2<f32>(x_4360.x, x_4360.y));
            let x_4363 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_4362.x, x_4362.y, x_4363.z, x_4363.w);
            let x_4365 : vec4<f32> = u_xlat10;
            let x_4368 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4371 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_4365.x, x_4365.y) * vec2<f32>(x_4368.z, x_4368.w)) + -(vec2<f32>(x_4371.x, x_4371.y)));
            let x_4375 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_4375.x, x_4375.x, x_4375.y, x_4375.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_4378 : vec4<f32> = u_xlat12;
            let x_4380 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_4378.x, x_4378.x, x_4378.z, x_4378.z) * vec4<f32>(x_4380.x, x_4380.x, x_4380.z, x_4380.z));
            let x_4383 : vec4<f32> = u_xlat13;
            let x_4385 : vec2<f32> = (vec2<f32>(x_4383.y, x_4383.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_4386 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4386.x, x_4385.x, x_4386.z, x_4385.y);
            let x_4388 : vec4<f32> = u_xlat13;
            let x_4391 : vec2<f32> = u_xlat61;
            let x_4393 : vec2<f32> = ((vec2<f32>(x_4388.x, x_4388.z) * vec2<f32>(0.5f, 0.5f)) + -(x_4391));
            let x_4394 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4393.x, x_4394.y, x_4393.y, x_4394.w);
            let x_4396 : vec2<f32> = u_xlat61;
            let x_4398 : vec2<f32> = (-(x_4396) + vec2<f32>(1.0f, 1.0f));
            let x_4399 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4398.x, x_4398.y, x_4399.z, x_4399.w);
            let x_4401 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_4401, vec2<f32>(0.0f, 0.0f));
            let x_4403 : vec2<f32> = u_xlat63;
            let x_4405 : vec2<f32> = u_xlat63;
            let x_4407 : vec4<f32> = u_xlat13;
            let x_4409 : vec2<f32> = ((-(x_4403) * x_4405) + vec2<f32>(x_4407.x, x_4407.y));
            let x_4410 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4409.x, x_4409.y, x_4410.z, x_4410.w);
            let x_4412 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_4412, vec2<f32>(0.0f, 0.0f));
            let x_4415 : vec2<f32> = u_xlat63;
            let x_4417 : vec2<f32> = u_xlat63;
            let x_4419 : vec4<f32> = u_xlat12;
            let x_4421 : vec2<f32> = ((-(x_4415) * x_4417) + vec2<f32>(x_4419.y, x_4419.w));
            let x_4422 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_4421.x, x_4422.y, x_4421.y);
            let x_4424 : vec4<f32> = u_xlat13;
            let x_4426 : vec2<f32> = (vec2<f32>(x_4424.x, x_4424.y) + vec2<f32>(2.0f, 2.0f));
            let x_4427 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4426.x, x_4426.y, x_4427.z, x_4427.w);
            let x_4429 : vec3<f32> = u_xlat37;
            let x_4431 : vec2<f32> = (vec2<f32>(x_4429.x, x_4429.z) + vec2<f32>(2.0f, 2.0f));
            let x_4432 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4432.x, x_4431.x, x_4432.z, x_4431.y);
            let x_4435 : f32 = u_xlat12.y;
            u_xlat15.z = (x_4435 * 0.08163200318813323975f);
            let x_4438 : vec4<f32> = u_xlat12;
            let x_4440 : vec3<f32> = (vec3<f32>(x_4438.z, x_4438.x, x_4438.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_4441 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4440.x, x_4440.y, x_4440.z, x_4441.w);
            let x_4443 : vec4<f32> = u_xlat13;
            let x_4445 : vec2<f32> = (vec2<f32>(x_4443.x, x_4443.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_4446 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_4445.x, x_4445.y, x_4446.z, x_4446.w);
            let x_4449 : f32 = u_xlat16.y;
            u_xlat15.x = x_4449;
            let x_4451 : vec2<f32> = u_xlat61;
            let x_4454 : vec2<f32> = ((vec2<f32>(x_4451.x, x_4451.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4455 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_4455.x, x_4454.x, x_4455.z, x_4454.y);
            let x_4457 : vec2<f32> = u_xlat61;
            let x_4460 : vec2<f32> = ((vec2<f32>(x_4457.x, x_4457.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4461 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_4460.x, x_4461.y, x_4460.y, x_4461.w);
            let x_4464 : f32 = u_xlat12.x;
            u_xlat13.y = x_4464;
            let x_4467 : f32 = u_xlat14.y;
            u_xlat13.w = x_4467;
            let x_4469 : vec4<f32> = u_xlat13;
            let x_4470 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_4469 + x_4470);
            let x_4472 : vec2<f32> = u_xlat61;
            let x_4475 : vec2<f32> = ((vec2<f32>(x_4472.y, x_4472.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_4476 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4476.x, x_4475.x, x_4476.z, x_4475.y);
            let x_4478 : vec2<f32> = u_xlat61;
            let x_4481 : vec2<f32> = ((vec2<f32>(x_4478.y, x_4478.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_4482 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4481.x, x_4482.y, x_4481.y, x_4482.w);
            let x_4485 : f32 = u_xlat12.y;
            u_xlat14.y = x_4485;
            let x_4487 : vec4<f32> = u_xlat14;
            let x_4488 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_4487 + x_4488);
            let x_4490 : vec4<f32> = u_xlat13;
            let x_4491 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_4490 / x_4491);
            let x_4493 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_4493 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4495 : vec4<f32> = u_xlat14;
            let x_4496 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_4495 / x_4496);
            let x_4498 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_4498 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_4500 : vec4<f32> = u_xlat13;
            let x_4503 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_4500.w, x_4500.x, x_4500.y, x_4500.z) * vec4<f32>(x_4503.x, x_4503.x, x_4503.x, x_4503.x));
            let x_4506 : vec4<f32> = u_xlat14;
            let x_4509 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_4506.x, x_4506.w, x_4506.y, x_4506.z) * vec4<f32>(x_4509.y, x_4509.y, x_4509.y, x_4509.y));
            let x_4512 : vec4<f32> = u_xlat13;
            let x_4513 : vec3<f32> = vec3<f32>(x_4512.y, x_4512.z, x_4512.w);
            let x_4514 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_4513.x, x_4514.y, x_4513.y, x_4513.z);
            let x_4517 : f32 = u_xlat14.x;
            u_xlat16.y = x_4517;
            let x_4519 : vec4<f32> = u_xlat11;
            let x_4522 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4525 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_4519.x, x_4519.y, x_4519.x, x_4519.y) * vec4<f32>(x_4522.x, x_4522.y, x_4522.x, x_4522.y)) + vec4<f32>(x_4525.x, x_4525.y, x_4525.z, x_4525.y));
            let x_4528 : vec4<f32> = u_xlat11;
            let x_4531 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4534 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_4528.x, x_4528.y) * vec2<f32>(x_4531.x, x_4531.y)) + vec2<f32>(x_4534.w, x_4534.y));
            let x_4538 : f32 = u_xlat16.y;
            u_xlat13.y = x_4538;
            let x_4541 : f32 = u_xlat14.z;
            u_xlat16.y = x_4541;
            let x_4543 : vec4<f32> = u_xlat11;
            let x_4546 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4549 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_4543.x, x_4543.y, x_4543.x, x_4543.y) * vec4<f32>(x_4546.x, x_4546.y, x_4546.x, x_4546.y)) + vec4<f32>(x_4549.x, x_4549.y, x_4549.z, x_4549.y));
            let x_4552 : vec4<f32> = u_xlat11;
            let x_4555 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4558 : vec4<f32> = u_xlat16;
            let x_4560 : vec2<f32> = ((vec2<f32>(x_4552.x, x_4552.y) * vec2<f32>(x_4555.x, x_4555.y)) + vec2<f32>(x_4558.w, x_4558.y));
            let x_4561 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_4560.x, x_4560.y, x_4561.z, x_4561.w);
            let x_4564 : f32 = u_xlat16.y;
            u_xlat13.z = x_4564;
            let x_4566 : vec4<f32> = u_xlat11;
            let x_4569 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4572 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_4566.x, x_4566.y, x_4566.x, x_4566.y) * vec4<f32>(x_4569.x, x_4569.y, x_4569.x, x_4569.y)) + vec4<f32>(x_4572.x, x_4572.y, x_4572.x, x_4572.z));
            let x_4576 : f32 = u_xlat14.w;
            u_xlat16.y = x_4576;
            let x_4579 : vec4<f32> = u_xlat11;
            let x_4582 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4585 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_4579.x, x_4579.y, x_4579.x, x_4579.y) * vec4<f32>(x_4582.x, x_4582.y, x_4582.x, x_4582.y)) + vec4<f32>(x_4585.x, x_4585.y, x_4585.z, x_4585.y));
            let x_4589 : vec4<f32> = u_xlat11;
            let x_4592 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4595 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_4589.x, x_4589.y) * vec2<f32>(x_4592.x, x_4592.y)) + vec2<f32>(x_4595.w, x_4595.y));
            let x_4599 : f32 = u_xlat16.y;
            u_xlat13.w = x_4599;
            let x_4602 : vec4<f32> = u_xlat11;
            let x_4605 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4608 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_4602.x, x_4602.y) * vec2<f32>(x_4605.x, x_4605.y)) + vec2<f32>(x_4608.x, x_4608.w));
            let x_4611 : vec4<f32> = u_xlat16;
            let x_4612 : vec3<f32> = vec3<f32>(x_4611.x, x_4611.z, x_4611.w);
            let x_4613 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_4612.x, x_4613.y, x_4612.y, x_4612.z);
            let x_4615 : vec4<f32> = u_xlat11;
            let x_4618 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4621 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_4615.x, x_4615.y, x_4615.x, x_4615.y) * vec4<f32>(x_4618.x, x_4618.y, x_4618.x, x_4618.y)) + vec4<f32>(x_4621.x, x_4621.y, x_4621.z, x_4621.y));
            let x_4625 : vec4<f32> = u_xlat11;
            let x_4628 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4631 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_4625.x, x_4625.y) * vec2<f32>(x_4628.x, x_4628.y)) + vec2<f32>(x_4631.w, x_4631.y));
            let x_4635 : f32 = u_xlat13.x;
            u_xlat14.x = x_4635;
            let x_4637 : vec4<f32> = u_xlat11;
            let x_4640 : vec4<f32> = x_265.x_AdditionalShadowmapSize;
            let x_4643 : vec4<f32> = u_xlat14;
            let x_4645 : vec2<f32> = ((vec2<f32>(x_4637.x, x_4637.y) * vec2<f32>(x_4640.x, x_4640.y)) + vec2<f32>(x_4643.x, x_4643.y));
            let x_4646 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_4645.x, x_4645.y, x_4646.z, x_4646.w);
            let x_4649 : vec4<f32> = u_xlat12;
            let x_4651 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_4649.x, x_4649.x, x_4649.x, x_4649.x) * x_4651);
            let x_4654 : vec4<f32> = u_xlat12;
            let x_4656 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_4654.y, x_4654.y, x_4654.y, x_4654.y) * x_4656);
            let x_4659 : vec4<f32> = u_xlat12;
            let x_4661 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_4659.z, x_4659.z, x_4659.z, x_4659.z) * x_4661);
            let x_4663 : vec4<f32> = u_xlat12;
            let x_4665 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_4663.w, x_4663.w, x_4663.w, x_4663.w) * x_4665);
            let x_4668 : vec4<f32> = u_xlat17;
            let x_4669 : vec2<f32> = vec2<f32>(x_4668.x, x_4668.y);
            let x_4671 : f32 = u_xlat10.z;
            txVec73 = vec3<f32>(x_4669.x, x_4669.y, x_4671);
            let x_4678 : vec3<f32> = txVec73;
            let x_4680 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4678.xy, x_4678.z);
            u_xlat85 = x_4680;
            let x_4682 : vec4<f32> = u_xlat17;
            let x_4683 : vec2<f32> = vec2<f32>(x_4682.z, x_4682.w);
            let x_4685 : f32 = u_xlat10.z;
            txVec74 = vec3<f32>(x_4683.x, x_4683.y, x_4685);
            let x_4692 : vec3<f32> = txVec74;
            let x_4694 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4692.xy, x_4692.z);
            u_xlat13.x = x_4694;
            let x_4697 : f32 = u_xlat13.x;
            let x_4699 : f32 = u_xlat22.y;
            u_xlat13.x = (x_4697 * x_4699);
            let x_4703 : f32 = u_xlat22.x;
            let x_4704 : f32 = u_xlat85;
            let x_4707 : f32 = u_xlat13.x;
            u_xlat85 = ((x_4703 * x_4704) + x_4707);
            let x_4710 : vec2<f32> = u_xlat61;
            let x_4712 : f32 = u_xlat10.z;
            txVec75 = vec3<f32>(x_4710.x, x_4710.y, x_4712);
            let x_4719 : vec3<f32> = txVec75;
            let x_4721 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4719.xy, x_4719.z);
            u_xlat61.x = x_4721;
            let x_4724 : f32 = u_xlat22.z;
            let x_4726 : f32 = u_xlat61.x;
            let x_4728 : f32 = u_xlat85;
            u_xlat85 = ((x_4724 * x_4726) + x_4728);
            let x_4731 : vec4<f32> = u_xlat20;
            let x_4732 : vec2<f32> = vec2<f32>(x_4731.x, x_4731.y);
            let x_4734 : f32 = u_xlat10.z;
            txVec76 = vec3<f32>(x_4732.x, x_4732.y, x_4734);
            let x_4741 : vec3<f32> = txVec76;
            let x_4743 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4741.xy, x_4741.z);
            u_xlat61.x = x_4743;
            let x_4746 : f32 = u_xlat22.w;
            let x_4748 : f32 = u_xlat61.x;
            let x_4750 : f32 = u_xlat85;
            u_xlat85 = ((x_4746 * x_4748) + x_4750);
            let x_4753 : vec4<f32> = u_xlat18;
            let x_4754 : vec2<f32> = vec2<f32>(x_4753.x, x_4753.y);
            let x_4756 : f32 = u_xlat10.z;
            txVec77 = vec3<f32>(x_4754.x, x_4754.y, x_4756);
            let x_4763 : vec3<f32> = txVec77;
            let x_4765 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4763.xy, x_4763.z);
            u_xlat61.x = x_4765;
            let x_4768 : f32 = u_xlat23.x;
            let x_4770 : f32 = u_xlat61.x;
            let x_4772 : f32 = u_xlat85;
            u_xlat85 = ((x_4768 * x_4770) + x_4772);
            let x_4775 : vec4<f32> = u_xlat18;
            let x_4776 : vec2<f32> = vec2<f32>(x_4775.z, x_4775.w);
            let x_4778 : f32 = u_xlat10.z;
            txVec78 = vec3<f32>(x_4776.x, x_4776.y, x_4778);
            let x_4785 : vec3<f32> = txVec78;
            let x_4787 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4785.xy, x_4785.z);
            u_xlat61.x = x_4787;
            let x_4790 : f32 = u_xlat23.y;
            let x_4792 : f32 = u_xlat61.x;
            let x_4794 : f32 = u_xlat85;
            u_xlat85 = ((x_4790 * x_4792) + x_4794);
            let x_4797 : vec4<f32> = u_xlat19;
            let x_4798 : vec2<f32> = vec2<f32>(x_4797.x, x_4797.y);
            let x_4800 : f32 = u_xlat10.z;
            txVec79 = vec3<f32>(x_4798.x, x_4798.y, x_4800);
            let x_4807 : vec3<f32> = txVec79;
            let x_4809 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4807.xy, x_4807.z);
            u_xlat61.x = x_4809;
            let x_4812 : f32 = u_xlat23.z;
            let x_4814 : f32 = u_xlat61.x;
            let x_4816 : f32 = u_xlat85;
            u_xlat85 = ((x_4812 * x_4814) + x_4816);
            let x_4819 : vec4<f32> = u_xlat20;
            let x_4820 : vec2<f32> = vec2<f32>(x_4819.z, x_4819.w);
            let x_4822 : f32 = u_xlat10.z;
            txVec80 = vec3<f32>(x_4820.x, x_4820.y, x_4822);
            let x_4829 : vec3<f32> = txVec80;
            let x_4831 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4829.xy, x_4829.z);
            u_xlat61.x = x_4831;
            let x_4834 : f32 = u_xlat23.w;
            let x_4836 : f32 = u_xlat61.x;
            let x_4838 : f32 = u_xlat85;
            u_xlat85 = ((x_4834 * x_4836) + x_4838);
            let x_4841 : vec4<f32> = u_xlat21;
            let x_4842 : vec2<f32> = vec2<f32>(x_4841.x, x_4841.y);
            let x_4844 : f32 = u_xlat10.z;
            txVec81 = vec3<f32>(x_4842.x, x_4842.y, x_4844);
            let x_4851 : vec3<f32> = txVec81;
            let x_4853 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4851.xy, x_4851.z);
            u_xlat61.x = x_4853;
            let x_4856 : f32 = u_xlat24.x;
            let x_4858 : f32 = u_xlat61.x;
            let x_4860 : f32 = u_xlat85;
            u_xlat85 = ((x_4856 * x_4858) + x_4860);
            let x_4863 : vec4<f32> = u_xlat21;
            let x_4864 : vec2<f32> = vec2<f32>(x_4863.z, x_4863.w);
            let x_4866 : f32 = u_xlat10.z;
            txVec82 = vec3<f32>(x_4864.x, x_4864.y, x_4866);
            let x_4873 : vec3<f32> = txVec82;
            let x_4875 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4873.xy, x_4873.z);
            u_xlat61.x = x_4875;
            let x_4878 : f32 = u_xlat24.y;
            let x_4880 : f32 = u_xlat61.x;
            let x_4882 : f32 = u_xlat85;
            u_xlat85 = ((x_4878 * x_4880) + x_4882);
            let x_4885 : vec2<f32> = u_xlat38;
            let x_4887 : f32 = u_xlat10.z;
            txVec83 = vec3<f32>(x_4885.x, x_4885.y, x_4887);
            let x_4894 : vec3<f32> = txVec83;
            let x_4896 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4894.xy, x_4894.z);
            u_xlat61.x = x_4896;
            let x_4899 : f32 = u_xlat24.z;
            let x_4901 : f32 = u_xlat61.x;
            let x_4903 : f32 = u_xlat85;
            u_xlat85 = ((x_4899 * x_4901) + x_4903);
            let x_4906 : vec2<f32> = u_xlat69;
            let x_4908 : f32 = u_xlat10.z;
            txVec84 = vec3<f32>(x_4906.x, x_4906.y, x_4908);
            let x_4915 : vec3<f32> = txVec84;
            let x_4917 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4915.xy, x_4915.z);
            u_xlat61.x = x_4917;
            let x_4920 : f32 = u_xlat24.w;
            let x_4922 : f32 = u_xlat61.x;
            let x_4924 : f32 = u_xlat85;
            u_xlat85 = ((x_4920 * x_4922) + x_4924);
            let x_4927 : vec4<f32> = u_xlat16;
            let x_4928 : vec2<f32> = vec2<f32>(x_4927.x, x_4927.y);
            let x_4930 : f32 = u_xlat10.z;
            txVec85 = vec3<f32>(x_4928.x, x_4928.y, x_4930);
            let x_4937 : vec3<f32> = txVec85;
            let x_4939 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4937.xy, x_4937.z);
            u_xlat61.x = x_4939;
            let x_4942 : f32 = u_xlat12.x;
            let x_4944 : f32 = u_xlat61.x;
            let x_4946 : f32 = u_xlat85;
            u_xlat85 = ((x_4942 * x_4944) + x_4946);
            let x_4949 : vec4<f32> = u_xlat16;
            let x_4950 : vec2<f32> = vec2<f32>(x_4949.z, x_4949.w);
            let x_4952 : f32 = u_xlat10.z;
            txVec86 = vec3<f32>(x_4950.x, x_4950.y, x_4952);
            let x_4959 : vec3<f32> = txVec86;
            let x_4961 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4959.xy, x_4959.z);
            u_xlat61.x = x_4961;
            let x_4964 : f32 = u_xlat12.y;
            let x_4966 : f32 = u_xlat61.x;
            let x_4968 : f32 = u_xlat85;
            u_xlat85 = ((x_4964 * x_4966) + x_4968);
            let x_4971 : vec2<f32> = u_xlat64;
            let x_4973 : f32 = u_xlat10.z;
            txVec87 = vec3<f32>(x_4971.x, x_4971.y, x_4973);
            let x_4980 : vec3<f32> = txVec87;
            let x_4982 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4980.xy, x_4980.z);
            u_xlat61.x = x_4982;
            let x_4985 : f32 = u_xlat12.z;
            let x_4987 : f32 = u_xlat61.x;
            let x_4989 : f32 = u_xlat85;
            u_xlat85 = ((x_4985 * x_4987) + x_4989);
            let x_4992 : vec4<f32> = u_xlat11;
            let x_4993 : vec2<f32> = vec2<f32>(x_4992.x, x_4992.y);
            let x_4995 : f32 = u_xlat10.z;
            txVec88 = vec3<f32>(x_4993.x, x_4993.y, x_4995);
            let x_5002 : vec3<f32> = txVec88;
            let x_5004 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5002.xy, x_5002.z);
            u_xlat11.x = x_5004;
            let x_5007 : f32 = u_xlat12.w;
            let x_5009 : f32 = u_xlat11.x;
            let x_5011 : f32 = u_xlat85;
            u_xlat84 = ((x_5007 * x_5009) + x_5011);
          }
        }
      } else {
        let x_5015 : vec4<f32> = u_xlat10;
        let x_5016 : vec2<f32> = vec2<f32>(x_5015.x, x_5015.y);
        let x_5018 : f32 = u_xlat10.z;
        txVec89 = vec3<f32>(x_5016.x, x_5016.y, x_5018);
        let x_5025 : vec3<f32> = txVec89;
        let x_5027 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_5025.xy, x_5025.z);
        u_xlat84 = x_5027;
      }
      let x_5028 : i32 = u_xlati79;
      let x_5030 : f32 = x_265.x_AdditionalShadowParams[x_5028].x;
      u_xlat10.x = (1.0f + -(x_5030));
      let x_5034 : f32 = u_xlat84;
      let x_5035 : i32 = u_xlati79;
      let x_5037 : f32 = x_265.x_AdditionalShadowParams[x_5035].x;
      let x_5040 : f32 = u_xlat10.x;
      u_xlat84 = ((x_5034 * x_5037) + x_5040);
      let x_5043 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_5043);
      let x_5048 : f32 = u_xlat10.z;
      u_xlatb35 = (x_5048 >= 1.0f);
      let x_5050 : bool = u_xlatb35;
      let x_5052 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_5050 | x_5052);
      let x_5056 : bool = u_xlatb10.x;
      let x_5057 : f32 = u_xlat84;
      u_xlat84 = select(x_5057, 1.0f, x_5056);
    } else {
      u_xlat84 = 1.0f;
    }
    let x_5060 : f32 = u_xlat84;
    u_xlat10.x = (-(x_5060) + 1.0f);
    let x_5064 : f32 = u_xlat76;
    let x_5066 : f32 = u_xlat10.x;
    let x_5068 : f32 = u_xlat84;
    u_xlat84 = ((x_5064 * x_5066) + x_5068);
    let x_5070 : f32 = u_xlat82;
    let x_5071 : f32 = u_xlat84;
    u_xlat82 = (x_5070 * x_5071);
    let x_5073 : vec4<f32> = u_xlat3;
    let x_5075 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_5073.x, x_5073.y, x_5073.z), vec3<f32>(x_5075.x, x_5075.y, x_5075.z));
    let x_5078 : f32 = u_xlat84;
    u_xlat84 = clamp(x_5078, 0.0f, 1.0f);
    let x_5080 : f32 = u_xlat82;
    let x_5081 : f32 = u_xlat84;
    u_xlat82 = (x_5080 * x_5081);
    let x_5083 : f32 = u_xlat82;
    let x_5085 : i32 = u_xlati79;
    let x_5087 : vec4<f32> = x_3577.x_AdditionalLightsColor[x_5085];
    let x_5089 : vec3<f32> = (vec3<f32>(x_5083, x_5083, x_5083) * vec3<f32>(x_5087.x, x_5087.y, x_5087.z));
    let x_5090 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_5089.x, x_5089.y, x_5089.z, x_5090.w);
    let x_5092 : vec4<f32> = u_xlat8;
    let x_5094 : f32 = u_xlat83;
    let x_5097 : vec3<f32> = u_xlat2;
    let x_5098 : vec3<f32> = ((vec3<f32>(x_5092.x, x_5092.y, x_5092.z) * vec3<f32>(x_5094, x_5094, x_5094)) + x_5097);
    let x_5099 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_5098.x, x_5098.y, x_5098.z, x_5099.w);
    let x_5101 : vec4<f32> = u_xlat8;
    let x_5103 : vec4<f32> = u_xlat8;
    u_xlat79 = dot(vec3<f32>(x_5101.x, x_5101.y, x_5101.z), vec3<f32>(x_5103.x, x_5103.y, x_5103.z));
    let x_5106 : f32 = u_xlat79;
    u_xlat79 = max(x_5106, 1.17549435e-38f);
    let x_5108 : f32 = u_xlat79;
    u_xlat79 = inverseSqrt(x_5108);
    let x_5110 : f32 = u_xlat79;
    let x_5112 : vec4<f32> = u_xlat8;
    let x_5114 : vec3<f32> = (vec3<f32>(x_5110, x_5110, x_5110) * vec3<f32>(x_5112.x, x_5112.y, x_5112.z));
    let x_5115 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_5114.x, x_5114.y, x_5114.z, x_5115.w);
    let x_5117 : vec4<f32> = u_xlat3;
    let x_5119 : vec4<f32> = u_xlat8;
    u_xlat79 = dot(vec3<f32>(x_5117.x, x_5117.y, x_5117.z), vec3<f32>(x_5119.x, x_5119.y, x_5119.z));
    let x_5122 : f32 = u_xlat79;
    u_xlat79 = clamp(x_5122, 0.0f, 1.0f);
    let x_5124 : vec4<f32> = u_xlat9;
    let x_5126 : vec4<f32> = u_xlat8;
    u_xlat82 = dot(vec3<f32>(x_5124.x, x_5124.y, x_5124.z), vec3<f32>(x_5126.x, x_5126.y, x_5126.z));
    let x_5129 : f32 = u_xlat82;
    u_xlat82 = clamp(x_5129, 0.0f, 1.0f);
    let x_5131 : f32 = u_xlat79;
    let x_5132 : f32 = u_xlat79;
    u_xlat79 = (x_5131 * x_5132);
    let x_5134 : f32 = u_xlat79;
    let x_5136 : f32 = u_xlat51.x;
    u_xlat79 = ((x_5134 * x_5136) + 1.00001001358032226562f);
    let x_5139 : f32 = u_xlat82;
    let x_5140 : f32 = u_xlat82;
    u_xlat82 = (x_5139 * x_5140);
    let x_5142 : f32 = u_xlat79;
    let x_5143 : f32 = u_xlat79;
    u_xlat79 = (x_5142 * x_5143);
    let x_5145 : f32 = u_xlat82;
    u_xlat82 = max(x_5145, 0.10000000149011611938f);
    let x_5147 : f32 = u_xlat79;
    let x_5148 : f32 = u_xlat82;
    u_xlat79 = (x_5147 * x_5148);
    let x_5151 : f32 = u_xlat5.x;
    let x_5152 : f32 = u_xlat79;
    u_xlat79 = (x_5151 * x_5152);
    let x_5154 : f32 = u_xlat78;
    let x_5155 : f32 = u_xlat79;
    u_xlat79 = (x_5154 / x_5155);
    let x_5157 : f32 = u_xlat79;
    let x_5160 : vec3<f32> = u_xlat4;
    let x_5161 : vec3<f32> = ((vec3<f32>(x_5157, x_5157, x_5157) * vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f)) + x_5160);
    let x_5162 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_5161.x, x_5161.y, x_5161.z, x_5162.w);
    let x_5164 : vec4<f32> = u_xlat8;
    let x_5166 : vec4<f32> = u_xlat10;
    let x_5169 : vec4<f32> = u_xlat7;
    let x_5171 : vec3<f32> = ((vec3<f32>(x_5164.x, x_5164.y, x_5164.z) * vec3<f32>(x_5166.x, x_5166.y, x_5166.z)) + vec3<f32>(x_5169.x, x_5169.y, x_5169.z));
    let x_5172 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_5171.x, x_5171.y, x_5171.z, x_5172.w);

    continuing {
      let x_5174 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_5174 + bitcast<u32>(1i));
    }
  }
  let x_5176 : vec3<f32> = u_xlat30;
  let x_5177 : vec4<f32> = u_xlat6;
  let x_5180 : vec3<f32> = u_xlat31;
  u_xlat2 = ((x_5176 * vec3<f32>(x_5177.x, x_5177.x, x_5177.x)) + x_5180);
  let x_5182 : vec4<f32> = u_xlat7;
  let x_5184 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_5182.x, x_5182.y, x_5182.z) + x_5184);
  let x_5188 : vec4<f32> = vs_INTERP6;
  let x_5190 : vec3<f32> = u_xlat0;
  let x_5192 : vec3<f32> = u_xlat2;
  let x_5193 : vec3<f32> = ((vec3<f32>(x_5188.w, x_5188.w, x_5188.w) * x_5190) + x_5192);
  let x_5194 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_5193.x, x_5193.y, x_5193.z, x_5194.w);
  let x_5196 : bool = u_xlatb26;
  if (x_5196) {
    let x_5201 : f32 = u_xlat1.x;
    x_5197 = x_5201;
  } else {
    x_5197 = 1.0f;
  }
  let x_5203 : f32 = x_5197;
  SV_Target0.w = x_5203;
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


